--
--  Copyright (c) 2026 Zephyr Ada Contributors
--
--  SPDX-License-Identifier: Apache-2.0
--
--  Hand-crafted PORT register interface for NXP KL25Z.
--  Provides integer-typed bitfields compatible with pin_mux_driver and
--  gpio_driver.  The SVD-generated MKL25Z4.PORT uses enumeration bitfields
--  which are incompatible with the driver's integer-literal assignments.
--
--  Hardware reference: NXP KL25 Sub-Family Reference Manual, chapter 11.
--
with System;

package KL25Z_PORT is
   pragma Preelaborate;
   pragma SPARK_Mode (Off);

   --  Index of a single pin within a PORT (0 = LSB, 31 = MSB)
   type Pin_Index_Type is range 0 .. 31;

   --  Single-bit modular type for per-pin flags
   type Bit_Value is mod 2 with Size => 1;

   --  32-bit packed bit-per-pin array (used for ISFR and GPIO data registers)
   type Pin_Array_Type is array (Pin_Index_Type) of Bit_Value
     with Pack, Size => 32;

   --  Sub-byte modular types for PCR bitfields
   type UInt3 is mod 2 ** 3 with Size => 3;
   type UInt4 is mod 2 ** 4 with Size => 4;
   type UInt5 is mod 2 ** 5 with Size => 5;
   type UInt7 is mod 2 ** 7 with Size => 7;

   --  Pin Control Register with integer-typed bitfields
   type PCR_Type is record
      PS             : Bit_Value := 0;  --  Pull Select         (bit 0)
      PE             : Bit_Value := 0;  --  Pull Enable         (bit 1)
      SRE            : Bit_Value := 0;  --  Slew Rate Enable    (bit 2)
      Reserved_3     : Bit_Value := 0;
      PFE            : Bit_Value := 0;  --  Passive Filter      (bit 4)
      Reserved_5     : Bit_Value := 0;
      DSE            : Bit_Value := 0;  --  Drive Strength      (bit 6)
      Reserved_7     : Bit_Value := 0;
      MUX            : UInt3 := 0;      --  Pin Mux Control     (bits 8-10)
      Reserved_11_15 : UInt5 := 0;
      IRQC           : UInt4 := 0;      --  IRQ configuration   (bits 16-19)
      Reserved_20_23 : UInt4 := 0;
      ISF            : Bit_Value := 0;  --  Interrupt Status    (bit 24)
      Reserved_25_31 : UInt7 := 0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCR_Type use record
      PS             at 0 range 0 .. 0;
      PE             at 0 range 1 .. 1;
      SRE            at 0 range 2 .. 2;
      Reserved_3     at 0 range 3 .. 3;
      PFE            at 0 range 4 .. 4;
      Reserved_5     at 0 range 5 .. 5;
      DSE            at 0 range 6 .. 6;
      Reserved_7     at 0 range 7 .. 7;
      MUX            at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      IRQC           at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      ISF            at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Array of 32 PCR registers for one PORT
   type PCR_Array_Type is array (Pin_Index_Type) of PCR_Type
     with Volatile;

   --  32-bit padding word (for GPCLR/GPCHR and reserved gap)
   type Pad32 is mod 2 ** 32 with Size => 32;

   --  8 × 32-bit padding to fill the gap at bytes 128-159
   --  (GPCLR at 128, GPCHR at 132, reserved at 136-159)
   type Pad_Array_8 is array (1 .. 8) of Pad32;

   --  PORT peripheral register block.
   --  Layout: PCR[0..31] at bytes 0-127, pad at bytes 128-159, ISFR at 160.
   type Registers_Type is record
      PCR  : PCR_Array_Type;  --  Pin Control Registers     (bytes 0-127)
      Pad  : Pad_Array_8;     --  GPCLR/GPCHR/reserved      (bytes 128-159)
      ISFR : Pin_Array_Type;  --  Interrupt Status Flag Reg (bytes 160-163)
   end record
     with Volatile;

   for Registers_Type use record
      PCR  at 0   range 0 .. 1023;
      Pad  at 128 range 0 .. 255;
      ISFR at 160 range 0 .. 31;
   end record;

   --  Aliased PORT instances at NXP KL25Z hardware base addresses
   PortA_Registers : aliased Registers_Type
     with Import, Address => System'To_Address (16#40049000#);
   PortB_Registers : aliased Registers_Type
     with Import, Address => System'To_Address (16#4004A000#);
   PortC_Registers : aliased Registers_Type
     with Import, Address => System'To_Address (16#4004B000#);
   PortD_Registers : aliased Registers_Type
     with Import, Address => System'To_Address (16#4004C000#);
   PortE_Registers : aliased Registers_Type
     with Import, Address => System'To_Address (16#4004D000#);

end KL25Z_PORT;
