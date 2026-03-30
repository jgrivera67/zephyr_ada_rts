--
--  Copyright (c) 2026 Zephyr Ada Contributors
--
--  SPDX-License-Identifier: Apache-2.0
--
--  SIM register interface for NXP KL25Z.
--  Covers SOPT2, SCGC4, and SCGC5 — the only SIM registers used by the UART
--  and pin-mux drivers.
--
--  Hardware reference: NXP KL25 Sub-Family Reference Manual, chapter 12.
--  SIM base = 0x40047000.
--    SOPT2 offset = 0x1004 → absolute 0x40048004
--    SCGC4 offset = 0x1034 → absolute 0x40048034
--    SCGC5 offset = 0x1038 → absolute 0x40048038
--
--  SIM_Registers_Type is mapped from SOPT2 (base 0x40048004) using explicit
--  representation clauses to bridge the 48-byte gap between SOPT2 and SCGC4.
--
with System;
with Bit_Types;

package KL25Z_SIM is
   pragma Preelaborate;
   pragma SPARK_Mode (Off);

   use Bit_Types;

   ---------------------------------------------------------------------------
   --  SOPT2 — System Options Register 2
   --  Only UART0SRC (bits 26-27) is named; all others are grouped as padding.
   ---------------------------------------------------------------------------

   type SOPT2_Type is record
      Reserved_0_25  : UInt26 := 0;  --  bits  0-25
      UART0SRC       : UInt2  := 0;  --  bits 26-27: UART0 clock source select
      Reserved_28_31 : UInt4  := 0;  --  bits 28-31
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SOPT2_Type use record
      Reserved_0_25  at 0 range  0 .. 25;
      UART0SRC       at 0 range 26 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   ---------------------------------------------------------------------------
   --  SCGC4 — System Clock Gating Control Register 4
   --  Only UART0/1/2 clock-gate bits are named; all others are grouped.
   ---------------------------------------------------------------------------

   type SCGC4_Type is record
      Reserved_0_9   : UInt10 := 0;  --  bits  0-9
      UART0          : Bit    := 0;  --  bit  10: UART0 clock enable
      UART1          : Bit    := 0;  --  bit  11: UART1 clock enable
      UART2          : Bit    := 0;  --  bit  12: UART2 clock enable
      Reserved_13_31 : UInt19 := 0;  --  bits 13-31
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCGC4_Type use record
      Reserved_0_9   at 0 range  0 ..  9;
      UART0          at 0 range 10 .. 10;
      UART1          at 0 range 11 .. 11;
      UART2          at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   ---------------------------------------------------------------------------
   --  SCGC5 — System Clock Gating Control Register 5
   --  Only PORT clock-enable bits are named; all others are grouped.
   ---------------------------------------------------------------------------

   type SCGC5_Type is record
      Reserved_0_8   : UInt9  := 0;  --  bits 0-8 (LPTMR, TSI, etc.)
      PORTA          : Bit    := 0;  --  bit 9  — PORTA clock enable
      PORTB          : Bit    := 0;  --  bit 10 — PORTB clock enable
      PORTC          : Bit    := 0;  --  bit 11 — PORTC clock enable
      PORTD          : Bit    := 0;  --  bit 12 — PORTD clock enable
      PORTE          : Bit    := 0;  --  bit 13 — PORTE clock enable
      Reserved_14_31 : UInt18 := 0;  --  bits 14-31
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCGC5_Type use record
      Reserved_0_8   at 0 range  0 ..  8;
      PORTA          at 0 range  9 ..  9;
      PORTB          at 0 range 10 .. 10;
      PORTC          at 0 range 11 .. 11;
      PORTD          at 0 range 12 .. 12;
      PORTE          at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   ---------------------------------------------------------------------------
   --  SIM_Registers_Type — register block mapped from SOPT2 through SCGC5.
   --  Explicit offsets bridge the 48-byte gap between SOPT2 and SCGC4.
   --    SOPT2 at offset  0 (absolute 0x40048004)
   --    SCGC4 at offset 48 (absolute 0x40048034)
   --    SCGC5 at offset 52 (absolute 0x40048038)
   ---------------------------------------------------------------------------

   type SIM_Registers_Type is record
      SOPT2 : SOPT2_Type;
      SCGC4 : SCGC4_Type;
      SCGC5 : SCGC5_Type;
   end record
     with Volatile;

   for SIM_Registers_Type use record
      SOPT2 at  0 range 0 .. 31;
      SCGC4 at 48 range 0 .. 31;
      SCGC5 at 52 range 0 .. 31;
   end record;

   --  Hardware instance mapped from SOPT2's address
   Registers : aliased SIM_Registers_Type
     with Import, Address => System'To_Address (16#40048004#);

end KL25Z_SIM;
