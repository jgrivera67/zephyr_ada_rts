--
--  Copyright (c) 2026, German Rivera
--
--  SPDX-License-Identifier: Apache-2.0
--
--  Hand-crafted UART register interface for NXP KL25Z.
--
--  Covers UART0 (LP-UART, offset layout differs from standard UARTs):
--    BDH at offset 0, BDL at 1, C1 at 2, C2 at 3, S1 at 4, S2 at 5,
--    C3 at 6, D at 7, MA1 at 8, MA2 at 9, C4 at 10, C5 at 11.
--
--  UART1/UART2 (standard UARTs) share the same offsets for BDH..D (0..7).
--  C4/C5 at offsets 10-11 are only accessed via Uart0_Registers'Access,
--  never through the generic Registers_Ptr for UART1/UART2.
--
--  Hardware base addresses:
--    UART0 = 0x4006A000, UART1 = 0x4006B000, UART2 = 0x4006C000
--
with System;
with Bit_Types;

package KL25Z_UART is
   pragma Preelaborate;
   pragma SPARK_Mode (Off);

   use Bit_Types;

   ---------------------------------------------------------------------------
   --  S1 — UART Status Register 1 (read: status; write 1 to clear errors)
   ---------------------------------------------------------------------------

   type S1_Type is record
      PF    : Bit := 0;  --  bit 0: Parity Error Flag
      FE    : Bit := 0;  --  bit 1: Framing Error Flag
      NF    : Bit := 0;  --  bit 2: Noise Flag
      S1_OR : Bit := 0;  --  bit 3: Overrun Flag (renamed; OR is reserved)
      IDLE  : Bit := 0;  --  bit 4: Idle Line Flag
      RDRF  : Bit := 0;  --  bit 5: Receive Data Register Full
      TC    : Bit := 1;  --  bit 6: Transmission Complete
      TDRE  : Bit := 1;  --  bit 7: Transmit Data Register Empty
   end record
     with Volatile_Full_Access, Size => 8,
          Bit_Order => System.Low_Order_First;

   for S1_Type use record
      PF    at 0 range 0 .. 0;
      FE    at 0 range 1 .. 1;
      NF    at 0 range 2 .. 2;
      S1_OR at 0 range 3 .. 3;
      IDLE  at 0 range 4 .. 4;
      RDRF  at 0 range 5 .. 5;
      TC    at 0 range 6 .. 6;
      TDRE  at 0 range 7 .. 7;
   end record;

   ---------------------------------------------------------------------------
   --  C1 — UART Control Register 1
   ---------------------------------------------------------------------------

   type C1_Type is record
      PT     : Bit := 0;  --  bit 0: Parity Type
      PE     : Bit := 0;  --  bit 1: Parity Enable
      ILT    : Bit := 0;  --  bit 2: Idle Line Type Select
      WAKE   : Bit := 0;  --  bit 3: Receiver Wakeup Method Select
      M      : Bit := 0;  --  bit 4: 9-bit / 8-bit Mode Select
      RSRC   : Bit := 0;  --  bit 5: Receiver Source Select
      DOZEEN : Bit := 0;  --  bit 6: Doze Enable
      LOOPS  : Bit := 0;  --  bit 7: Loop Mode Select
   end record
     with Volatile_Full_Access, Size => 8,
          Bit_Order => System.Low_Order_First;

   for C1_Type use record
      PT     at 0 range 0 .. 0;
      PE     at 0 range 1 .. 1;
      ILT    at 0 range 2 .. 2;
      WAKE   at 0 range 3 .. 3;
      M      at 0 range 4 .. 4;
      RSRC   at 0 range 5 .. 5;
      DOZEEN at 0 range 6 .. 6;
      LOOPS  at 0 range 7 .. 7;
   end record;

   ---------------------------------------------------------------------------
   --  C2 — UART Control Register 2
   ---------------------------------------------------------------------------

   type C2_Type is record
      SBK  : Bit := 0;  --  bit 0: Send Break
      RWU  : Bit := 0;  --  bit 1: Receiver Wakeup Control
      RE   : Bit := 0;  --  bit 2: Receiver Enable
      TE   : Bit := 0;  --  bit 3: Transmitter Enable
      ILIE : Bit := 0;  --  bit 4: Idle Line Interrupt Enable
      RIE  : Bit := 0;  --  bit 5: Receiver Interrupt Enable
      TCIE : Bit := 0;  --  bit 6: Transmission Complete Interrupt Enable
      TIE  : Bit := 0;  --  bit 7: Transmit Interrupt Enable
   end record
     with Volatile_Full_Access, Size => 8,
          Bit_Order => System.Low_Order_First;

   for C2_Type use record
      SBK  at 0 range 0 .. 0;
      RWU  at 0 range 1 .. 1;
      RE   at 0 range 2 .. 2;
      TE   at 0 range 3 .. 3;
      ILIE at 0 range 4 .. 4;
      RIE  at 0 range 5 .. 5;
      TCIE at 0 range 6 .. 6;
      TIE  at 0 range 7 .. 7;
   end record;

   ---------------------------------------------------------------------------
   --  BDH — UART Baud Rate Register High
   ---------------------------------------------------------------------------

   type BDH_Type is record
      SBR     : UInt5 := 0;  --  bits 0-4: Baud Rate Modulo Divisor (high bits)
      SBNS    : Bit   := 0;  --  bit  5  : Stop Bit Number Select
      RXEDGIE : Bit   := 0;  --  bit  6  : RX Input Active Edge Interrupt Enable
      LBKDIE  : Bit   := 0;  --  bit  7  : LIN Break Detect Interrupt Enable
   end record
     with Volatile_Full_Access, Size => 8,
          Bit_Order => System.Low_Order_First;

   for BDH_Type use record
      SBR     at 0 range 0 .. 4;
      SBNS    at 0 range 5 .. 5;
      RXEDGIE at 0 range 6 .. 6;
      LBKDIE  at 0 range 7 .. 7;
   end record;

   ---------------------------------------------------------------------------
   --  C4 — UART Control Register 4 (UART0 LP-UART only, offset 10)
   ---------------------------------------------------------------------------

   type C4_Type is record
      OSR   : UInt5 := 16#F#;  --  bits 0-4: Over Sampling Ratio
      M10   : Bit   := 0;       --  bit  5  : 10-bit mode select
      MAEN2 : Bit   := 0;       --  bit  6  : Match Address Mode Enable 2
      MAEN1 : Bit   := 0;       --  bit  7  : Match Address Mode Enable 1
   end record
     with Volatile_Full_Access, Size => 8,
          Bit_Order => System.Low_Order_First;

   for C4_Type use record
      OSR   at 0 range 0 .. 4;
      M10   at 0 range 5 .. 5;
      MAEN2 at 0 range 6 .. 6;
      MAEN1 at 0 range 7 .. 7;
   end record;

   ---------------------------------------------------------------------------
   --  C5 — UART Control Register 5 (UART0 LP-UART only, offset 11)
   ---------------------------------------------------------------------------

   type C5_Type is record
      RESYNCDIS    : Bit   := 0;  --  bit 0: Resynchronization Disable
      BOTHEDGE     : Bit   := 0;  --  bit 1: Both Edge Sampling
      Reserved_2_4 : UInt3 := 0;  --  bits 2-4: reserved
      RDMAE        : Bit   := 0;  --  bit 5: Receiver Full DMA Enable
      Reserved_6   : Bit   := 0;  --  bit 6: reserved
      TDMAE        : Bit   := 0;  --  bit 7: Transmitter DMA Enable
   end record
     with Volatile_Full_Access, Size => 8,
          Bit_Order => System.Low_Order_First;

   for C5_Type use record
      RESYNCDIS    at 0 range 0 .. 0;
      BOTHEDGE     at 0 range 1 .. 1;
      Reserved_2_4 at 0 range 2 .. 4;
      RDMAE        at 0 range 5 .. 5;
      Reserved_6   at 0 range 6 .. 6;
      TDMAE        at 0 range 7 .. 7;
   end record;

   ---------------------------------------------------------------------------
   --  Encoded_Baud_Rate_Type — overlay for splitting a 13-bit SBR value
   --    Low_Part  = bits  7..0 of SBR (written to BDL)
   --    High_Part = bits 12..8 of SBR (written to BDH.SBR)
   ---------------------------------------------------------------------------

   type Encoded_Baud_Rate_Type is record
      Low_Part  : Byte  := 0;  --  byte 0 (bits 7..0 of SBR)
      High_Part : UInt5 := 0;  --  byte 1 bits 4..0 (bits 12..8 of SBR)
      Pad       : UInt3 := 0;  --  byte 1 bits 7..5 (unused)
   end record
     with Size => 16, Bit_Order => System.Low_Order_First;

   for Encoded_Baud_Rate_Type use record
      Low_Part  at 0 range 0 ..  7;
      High_Part at 1 range 0 ..  4;
      Pad       at 1 range 5 ..  7;
   end record;

   ---------------------------------------------------------------------------
   --  Registers_Type — UART register block (layout based on UART0 LP-UART)
   ---------------------------------------------------------------------------

   type Registers_Type is record
      BDH : BDH_Type;  --  offset 0
      BDL : Byte;       --  offset 1: Baud Rate Low byte
      C1  : C1_Type;   --  offset 2
      C2  : C2_Type;   --  offset 3
      S1  : S1_Type;   --  offset 4
      S2  : Byte;       --  offset 5: Status Register 2 (not used by driver)
      C3  : Byte;       --  offset 6: Control Register 3 (not used by driver)
      D   : Byte;       --  offset 7: Data Register
      MA1 : Byte;       --  offset 8: Match Address 1 (not used by driver)
      MA2 : Byte;       --  offset 9: Match Address 2 (not used by driver)
      C4  : C4_Type;   --  offset 10: LP-UART Over-Sampling (UART0 only)
      C5  : C5_Type;   --  offset 11: LP-UART DMA/Edge ctrl (UART0 only)
   end record
     with Volatile;

   for Registers_Type use record
      BDH at  0 range 0 .. 7;
      BDL at  1 range 0 .. 7;
      C1  at  2 range 0 .. 7;
      C2  at  3 range 0 .. 7;
      S1  at  4 range 0 .. 7;
      S2  at  5 range 0 .. 7;
      C3  at  6 range 0 .. 7;
      D   at  7 range 0 .. 7;
      MA1 at  8 range 0 .. 7;
      MA2 at  9 range 0 .. 7;
      C4  at 10 range 0 .. 7;
      C5  at 11 range 0 .. 7;
   end record;

   ---------------------------------------------------------------------------
   --  Hardware instances
   ---------------------------------------------------------------------------

   Uart0_Registers : aliased Registers_Type
     with Import, Address => System'To_Address (16#4006A000#);

   Uart1_Registers : aliased Registers_Type
     with Import, Address => System'To_Address (16#4006B000#);

   Uart2_Registers : aliased Registers_Type
     with Import, Address => System'To_Address (16#4006C000#);

end KL25Z_UART;
