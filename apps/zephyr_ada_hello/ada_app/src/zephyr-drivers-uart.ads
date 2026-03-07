--
--  Copyright (c) 2025 Zephyr Ada Contributors
--
--  SPDX-License-Identifier: Apache-2.0
--
--  NXP Kinetis LPSCI (UART0) register abstraction using Ada representation
--  clauses. Provides type-safe access to UART hardware registers without
--  C-style bit shifts and masks.
--
--  Hardware base address is obtained from the generated Zephyr.Device_Tree
--  package (auto-generated from the board device tree by dt_to_ada.py).
--
--  Usage example:
--
--     with Zephyr.Drivers.UART;
--     ...
--     Zephyr.Drivers.UART.Initialize (Baud_Rate => 115_200);
--     Zephyr.Drivers.UART.Put_Char ('A');
--

with System;
with Zephyr.Device_Tree;

package Zephyr.Drivers.UART is

   pragma Preelaborate;

   -- -----------------------------------------------------------------------
   --  LPSCI BDH/BDL: Baud Rate High/Low registers
   -- -----------------------------------------------------------------------

   type Baud_Rate_High_Register is record
      SBR        : Natural range 0 .. 31;   -- Baud rate modulo divisor [12:8]
      SBNS       : Boolean;                 -- Stop bit number select
      Reserved_1 : Natural range 0 .. 3;
      RXEDGIE    : Boolean;                 -- RX input active edge interrupt
      LBKDIE     : Boolean;                 -- LIN break detect interrupt
   end record
     with Size => 8, Object_Size => 8;

   for Baud_Rate_High_Register use record
      SBR        at 0 range 0 .. 4;
      SBNS       at 0 range 5 .. 5;
      Reserved_1 at 0 range 6 .. 5;  --  unused
      RXEDGIE    at 0 range 6 .. 6;
      LBKDIE     at 0 range 7 .. 7;
   end record;

   type Baud_Rate_Low_Register is record
      SBR : Natural range 0 .. 255;   -- Baud rate modulo divisor [7:0]
   end record
     with Size => 8, Object_Size => 8;

   for Baud_Rate_Low_Register use record
      SBR at 0 range 0 .. 7;
   end record;

   -- -----------------------------------------------------------------------
   --  LPSCI C1: Control Register 1
   -- -----------------------------------------------------------------------

   type Parity_Type is (None, Odd, Even) with Size => 2;
   for Parity_Type use (None => 0, Odd => 1, Even => 3);

   type Control1_Register is record
      PT       : Boolean;  -- Parity type (0=even, 1=odd)
      PE       : Boolean;  -- Parity enable
      ILT      : Boolean;  -- Idle line type select
      WAKE     : Boolean;  -- Receiver wakeup method select
      M        : Boolean;  -- 9-bit or 8-bit mode (0=8-bit)
      RSRC     : Boolean;  -- Receiver source select
      DOZEEN   : Boolean;  -- Doze enable
      LOOPS    : Boolean;  -- Loop mode select
   end record
     with Size => 8, Object_Size => 8;

   for Control1_Register use record
      PT     at 0 range 0 .. 0;
      PE     at 0 range 1 .. 1;
      ILT    at 0 range 2 .. 2;
      WAKE   at 0 range 3 .. 3;
      M      at 0 range 4 .. 4;
      RSRC   at 0 range 5 .. 5;
      DOZEEN at 0 range 6 .. 6;
      LOOPS  at 0 range 7 .. 7;
   end record;

   -- -----------------------------------------------------------------------
   --  LPSCI C2: Control Register 2
   -- -----------------------------------------------------------------------

   type Control2_Register is record
      SBK   : Boolean;  -- Send break
      RWU   : Boolean;  -- Receiver wakeup control
      RE    : Boolean;  -- Receiver enable
      TE    : Boolean;  -- Transmitter enable
      ILIE  : Boolean;  -- Idle line interrupt enable
      RIE   : Boolean;  -- Receiver interrupt enable
      TCIE  : Boolean;  -- Transmission complete interrupt enable
      TIE   : Boolean;  -- Transmit interrupt enable
   end record
     with Size => 8, Object_Size => 8;

   for Control2_Register use record
      SBK  at 0 range 0 .. 0;
      RWU  at 0 range 1 .. 1;
      RE   at 0 range 2 .. 2;
      TE   at 0 range 3 .. 3;
      ILIE at 0 range 4 .. 4;
      RIE  at 0 range 5 .. 5;
      TCIE at 0 range 6 .. 6;
      TIE  at 0 range 7 .. 7;
   end record;

   -- -----------------------------------------------------------------------
   --  LPSCI S1: Status Register 1
   -- -----------------------------------------------------------------------

   type Status1_Register is record
      PF   : Boolean;  -- Parity error flag
      FE   : Boolean;  -- Framing error flag
      NF   : Boolean;  -- Noise flag
      OR_F : Boolean;  -- Receiver overrun flag
      IDLE : Boolean;  -- Idle line flag
      RDRF : Boolean;  -- Receive data register full flag
      TC   : Boolean;  -- Transmission complete flag
      TDRE : Boolean;  -- Transmit data register empty flag
   end record
     with Size => 8, Object_Size => 8;

   for Status1_Register use record
      PF   at 0 range 0 .. 0;
      FE   at 0 range 1 .. 1;
      NF   at 0 range 2 .. 2;
      OR_F at 0 range 3 .. 3;
      IDLE at 0 range 4 .. 4;
      RDRF at 0 range 5 .. 5;
      TC   at 0 range 6 .. 6;
      TDRE at 0 range 7 .. 7;
   end record;

   -- -----------------------------------------------------------------------
   --  LPSCI register map: full peripheral layout
   -- -----------------------------------------------------------------------

   type UART_Registers is record
      BDH : Baud_Rate_High_Register;
      BDL : Baud_Rate_Low_Register;
      C1  : Control1_Register;
      C2  : Control2_Register;
      S1  : Status1_Register;
      D   : Natural range 0 .. 255;   -- Data register (read=RX, write=TX)
   end record
     with Volatile, Size => 6 * 8;

   for UART_Registers use record
      BDH at 0 range 0 ..  7;
      BDL at 1 range 0 ..  7;
      C1  at 2 range 0 ..  7;
      C2  at 3 range 0 ..  7;
      S1  at 4 range 0 ..  7;
      D   at 5 range 0 ..  7;
   end record;

   -- -----------------------------------------------------------------------
   --  Hardware instance - address from device tree
   -- -----------------------------------------------------------------------

   UART0_Registers : UART_Registers
     with Address => System'To_Address (Zephyr.Device_Tree.UART0.Base_Address),
          Volatile, Import;

   -- -----------------------------------------------------------------------
   --  Driver API
   -- -----------------------------------------------------------------------

   procedure Initialize (Baud_Rate : Positive);
   --  Configure UART0 for the given baud rate (assumes 48 MHz system clock).
   --  Enables transmitter and receiver.

   procedure Put_Char (C : Character);
   --  Transmit a single character. Blocks until TX register is empty.

   function Get_Char return Character;
   --  Receive a single character. Blocks until RX register is full.

end Zephyr.Drivers.UART;
