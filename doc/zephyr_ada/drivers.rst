.. _ada_drivers:

Writing Device Drivers in Ada
##############################

Ada provides powerful abstractions for hardware register access through **representation
clauses** and **address specifications**. These give type-safe, portable, vendor-agnostic
access to memory-mapped I/O without C-style bit shifts and masks.

Combined with the auto-generated ``Zephyr.Device_Tree`` package, Ada driver code is both
readable and guaranteed correct by the compiler.

Register Abstraction with Representation Clauses
*************************************************

Define record types matching the hardware register layout, then use ``for ... use record``
to specify exact bit positions:

.. code-block:: ada

   --  UART Status Register (8-bit)
   type UART_Status is record
      Parity_Error : Boolean;  -- bit 0
      Frame_Error  : Boolean;  -- bit 1
      Noise_Flag   : Boolean;  -- bit 2
      Overrun      : Boolean;  -- bit 3
      Idle         : Boolean;  -- bit 4
      RX_Full      : Boolean;  -- bit 5: RX data register full
      TX_Complete  : Boolean;  -- bit 6: transmission complete
      TX_Empty     : Boolean;  -- bit 7: TX data register empty
   end record
     with Size => 8;

   for UART_Status use record
      Parity_Error at 0 range 0 .. 0;
      Frame_Error  at 0 range 1 .. 1;
      Noise_Flag   at 0 range 2 .. 2;
      Overrun      at 0 range 3 .. 3;
      Idle         at 0 range 4 .. 4;
      RX_Full      at 0 range 5 .. 5;
      TX_Complete  at 0 range 6 .. 6;
      TX_Empty     at 0 range 7 .. 7;
   end record;

Compare this to the equivalent C code which uses error-prone bit manipulation:

.. code-block:: c

   /* C equivalent - fragile, no type safety */
   #define LPSCI_S1_TDRE_MASK  0x80u
   #define LPSCI_S1_RDRF_MASK  0x20u

   while (!(UART0->S1 & LPSCI_S1_TDRE_MASK)) {}  /* wait TX empty */
   UART0->D = c;

Device Tree Integration
***********************

Hardware base addresses come from the generated ``Zephyr.Device_Tree`` package, making
drivers board-agnostic:

.. code-block:: ada

   with System;
   with Zephyr.Device_Tree;

   --  Full peripheral register map
   type UART_Registers is record
      BDH : Baud_Rate_High_Register;
      BDL : Baud_Rate_Low_Register;
      C1  : Control1_Register;
      C2  : Control2_Register;
      S1  : UART_Status;
      D   : Natural range 0 .. 255;  -- Data: read=RX, write=TX
   end record
     with Volatile, Size => 6 * 8;

   for UART_Registers use record
      BDH at 0 range 0 .. 7;
      BDL at 1 range 0 .. 7;
      C1  at 2 range 0 .. 7;
      C2  at 3 range 0 .. 7;
      S1  at 4 range 0 .. 7;
      D   at 5 range 0 .. 7;
   end record;

   --  Hardware instance at DT-specified address
   UART0 : UART_Registers
     with Address  => System'To_Address (Zephyr.Device_Tree.UART0.Base_Address),
          Volatile, Import;

The base address ``Zephyr.Device_Tree.UART0.Base_Address`` is a constant generated from the
board's device tree. Changing target boards regenerates the package with the correct address —
no source code changes required.

Type-Safe Register Access
**************************

With the abstraction in place, driver code reads naturally:

.. code-block:: ada

   procedure Put_Char (C : Character) is
   begin
      --  Wait for TX data register empty
      loop
         exit when UART0.S1.TX_Empty;
      end loop;
      UART0.D := Character'Pos (C);
   end Put_Char;

   procedure Initialize (Baud_Rate : Positive) is
      use Zephyr.Config;
      SBR : constant Natural :=
         Sys_Clock_Hw_Cycles_Per_Sec / (16 * Baud_Rate);
   begin
      UART0.C2 := (others => False);           -- Disable TX/RX
      UART0.BDH := (SBR => SBR / 256, others => False);
      UART0.BDL := (SBR => SBR mod 256);
      UART0.C1  := (others => False);           -- 8-bit, no parity
      UART0.C2  := (RE => True, TE => True, others => False);
   end Initialize;

Multi-Word Registers
********************

For 32-bit registers, specify the record size accordingly:

.. code-block:: ada

   --  GPIO Port Data Direction Register (32-bit)
   type GPIO_Port_Data_Direction is record
      Pin : array (0 .. 31) of Boolean;
   end record
     with Size => 32, Volatile;

   for GPIO_Port_Data_Direction use record
      Pin at 0 range 0 .. 31;
   end record;

   type GPIO_Registers is record
      PDOR : Natural range 0 .. 2**32 - 1;  -- Port Data Output
      PSOR : Natural range 0 .. 2**32 - 1;  -- Port Set Output
      PCOR : Natural range 0 .. 2**32 - 1;  -- Port Clear Output
      PTOR : Natural range 0 .. 2**32 - 1;  -- Port Toggle Output
      PDIR : Natural range 0 .. 2**32 - 1;  -- Port Data Input
      PDDR : GPIO_Port_Data_Direction;       -- Port Data Direction
   end record
     with Volatile, Size => 6 * 32;

   for GPIO_Registers use record
      PDOR at  0 range 0 .. 31;
      PSOR at  4 range 0 .. 31;
      PCOR at  8 range 0 .. 31;
      PTOR at 12 range 0 .. 31;
      PDIR at 16 range 0 .. 31;
      PDDR at 20 range 0 .. 31;
   end record;

   GPIOA : GPIO_Registers
     with Address  => System'To_Address (Zephyr.Device_Tree.GPIOA.Base_Address),
          Volatile, Import;

   --  Set pin 13 as output
   GPIOA.PDDR.Pin (13) := True;
   --  Toggle pin 13
   GPIOA.PTOR := 2**13;

Volatile and Atomic Access
***************************

Always mark hardware register variables as ``Volatile`` to prevent the compiler from
optimizing away reads/writes. For registers requiring atomic 32-bit access, add
``Atomic`` as well:

.. code-block:: ada

   Control : Control_Register
     with Address => ..., Volatile, Atomic, Import;

Driver Organization
********************

A complete Ada device driver package follows this structure:

.. code-block:: none

   src/
   ├── zephyr-drivers-uart.ads    -- public API (no hardware details)
   ├── zephyr-drivers-uart.adb    -- implementation using register types
   └── zephyr-drivers-uart-regs.ads  -- register types (private)

The public ``.ads`` exposes only high-level operations (``Initialize``, ``Put_Char``,
``Get_Char``). Register types are in a private child or separate package. This mirrors
the Zephyr driver model where the API is separate from the hardware implementation.

Comparison with C Driver
*************************

.. list-table::
   :header-rows: 1
   :widths: 50 50

   * - C approach
     - Ada approach
   * - ``reg->CR1 |= (1 << 3)``
     - ``Reg.C1.Enable := True``
   * - ``(reg->SR & SR_TXE_BIT) != 0``
     - ``Reg.S1.TX_Empty``
   * - ``DT_REG_ADDR(DT_NODELABEL(uart0))``
     - ``Zephyr.Device_Tree.UART0.Base_Address``
   * - ``CONFIG_SYS_CLOCK_HW_CYCLES_PER_SEC``
     - ``Zephyr.Config.Sys_Clock_Hw_Cycles_Per_Sec``
   * - ``IRQ_CONNECT(irq, pri, handler, NULL, 0)``
     - ``Attach_Handler => Ada.Interrupts.Names.UART0_IRQ``
