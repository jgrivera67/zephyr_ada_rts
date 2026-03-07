.. _ada_interrupts:

Interrupt Handlers in Ada
##########################

Ada 2012 provides the ``Attach_Handler`` aspect for registering protected procedures as
interrupt service routines (ISRs). On Zephyr, the Ada RTS translates these to
``irq_connect_dynamic()`` and ``irq_enable()`` calls at elaboration time, before ``main()``
executes.

Ada Interrupt Handler Syntax
*****************************

An interrupt handler is a protected procedure with the ``Attach_Handler`` aspect:

.. code-block:: ada

   with Ada.Interrupts.Names;
   with System;

   protected UART_Handler is
      pragma Interrupt_Priority (System.Interrupt_Priority'Last);

      procedure Handle_UART
        with Attach_Handler => Ada.Interrupts.Names.UART0_IRQ;
   private
      --  shared state accessible from handler and other protected operations
      Rx_Buffer : String (1 .. 64);
      Rx_Count  : Natural := 0;
   end UART_Handler;

   protected body UART_Handler is
      procedure Handle_UART is
         --  Read from UART data register (representation clause type)
         C : constant Character :=
               Character'Val (Zephyr.Drivers.UART.UART0_Registers.D);
      begin
         if Rx_Count < Rx_Buffer'Last then
            Rx_Count := Rx_Count + 1;
            Rx_Buffer (Rx_Count) := C;
         end if;
      end Handle_UART;
   end UART_Handler;

Key rules for Ada interrupt handlers:

- The protected object must have ``Interrupt_Priority`` (not a regular ``Priority``)
- The handler procedure must have no parameters and no return value
- Only protected procedures can be attached to interrupts (not functions or entries)
- The GNARL RTS calls ``irq_connect_dynamic()`` and ``irq_enable()`` automatically

Interrupt Names
***************

Interrupt names are defined in ``Ada.Interrupts.Names``. For Zephyr Ada, these are
generated from the device tree. The naming convention maps DTS interrupt numbers to
Ada identifiers:

.. code-block:: ada

   package Ada.Interrupts.Names is
      --  ARM Cortex-M NVIC interrupt lines
      --  Values match the IRQ numbers in Zephyr.Device_Tree

      UART0_IRQ : constant Interrupt_ID := 12;  -- from frdm_kl25z DTS
      I2C0_IRQ  : constant Interrupt_ID := 8;
      GPIOA_IRQ : constant Interrupt_ID := 30;
      ADC0_IRQ  : constant Interrupt_ID := 15;
   end Ada.Interrupts.Names;

Interrupt Priority Mapping
***************************

Zephyr and Ada use opposite priority conventions:

.. list-table::
   :header-rows: 1
   :widths: 40 30 30

   * - Ada
     - Meaning
     - Zephyr equivalent
   * - ``System.Interrupt_Priority'Last``
     - Highest ISR priority
     - IRQ priority 0
   * - ``System.Interrupt_Priority'First``
     - Lowest ISR priority
     - IRQ priority (NUM_IRQ_PRIO_BITS - 1)

The Ada RTS performs the inversion automatically.

Shared Data Between ISR and Tasks
***********************************

Protected objects with ``Interrupt_Priority`` can safely share data between ISRs and tasks.
The compiler enforces the ceiling locking protocol (no task can call the protected object
with a priority above its ceiling):

.. code-block:: ada

   protected Shared_IRQ_Data is
      pragma Interrupt_Priority;

      procedure Set (Val : Integer)
        with Attach_Handler => Ada.Interrupts.Names.TIMER_IRQ;

      entry Wait_For_Update (Val : out Integer);
   private
      Value   : Integer := 0;
      Updated : Boolean := False;
   end Shared_IRQ_Data;

   protected body Shared_IRQ_Data is
      procedure Set (Val : Integer) is
      begin
         Value   := Val;
         Updated := True;
      end Set;

      entry Wait_For_Update (Val : out Integer) when Updated is
      begin
         Val     := Value;
         Updated := False;
      end Wait_For_Update;
   end Shared_IRQ_Data;

Dynamic Interrupt Attachment
*****************************

Interrupts can also be attached at runtime using ``Ada.Interrupts``:

.. code-block:: ada

   with Ada.Interrupts;
   with Ada.Interrupts.Names;

   protected Handler is
      pragma Interrupt_Priority;
      procedure Service;
   end Handler;

   --  Attach at runtime
   Ada.Interrupts.Attach_Handler
     (New_Handler => Handler.Service'Access,
      Interrupt   => Ada.Interrupts.Names.EXTI0_IRQ);

   --  Detach when no longer needed
   Ada.Interrupts.Detach_Handler (Ada.Interrupts.Names.EXTI0_IRQ);

RTS Implementation
*******************

The Ada RTS interrupt support is implemented in
:file:`zephyr_ada_rts/src/gnarl/s-interr.adb`. At elaboration time, for each protected
object with ``Attach_Handler``, the RTS calls:

.. code-block:: c

   irq_connect_dynamic(irq_num, priority, handler_wrapper, NULL, 0);
   irq_enable(irq_num);

The ``handler_wrapper`` marshals the Zephyr ISR call into the Ada protected procedure,
acquiring the protected object's ceiling lock.
