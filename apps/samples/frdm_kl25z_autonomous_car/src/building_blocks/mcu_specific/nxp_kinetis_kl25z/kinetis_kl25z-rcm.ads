--
--  Copyright (c) 2026, German Rivera
--
--  SPDX-License-Identifier: Apache-2.0
--
--  Hand-crafted Reset Control Module (RCM) register interface for the
--  NXP KL25Z.  Provides integer-typed bit fields compatible with the
--  driver code that reads SRS0/SRS1 and compares individual bits with 0/1.
--
--  Hardware reference: NXP KL25 Sub-Family Reference Manual, chapter 4.7.
--
with System;

package Kinetis_KL25Z.RCM is
   pragma Preelaborate;
   pragma SPARK_Mode (Off);

   type Bit_Value is mod 2 with Size => 1;

   --  System Reset Status Register 0 (SRS0) — read-only, 8-bit
   type SRS0_Type is record
      WAKEUP     : Bit_Value;  --  bit 0: LLWU wakeup reset
      LVD        : Bit_Value;  --  bit 1: low-voltage detect reset
      LOC        : Bit_Value;  --  bit 2: loss-of-clock reset
      LOL        : Bit_Value;  --  bit 3: loss-of-lock reset
      Reserved_4 : Bit_Value;  --  bit 4: reserved
      WDOG       : Bit_Value;  --  bit 5: watchdog reset
      PIN        : Bit_Value;  --  bit 6: external pin reset
      POR        : Bit_Value;  --  bit 7: power-on reset
   end record
     with Volatile_Full_Access, Size => 8,
          Bit_Order => System.Low_Order_First;

   for SRS0_Type use record
      WAKEUP     at 0 range 0 .. 0;
      LVD        at 0 range 1 .. 1;
      LOC        at 0 range 2 .. 2;
      LOL        at 0 range 3 .. 3;
      Reserved_4 at 0 range 4 .. 4;
      WDOG       at 0 range 5 .. 5;
      PIN        at 0 range 6 .. 6;
      POR        at 0 range 7 .. 7;
   end record;

   --  System Reset Status Register 1 (SRS1) — read-only, 8-bit
   type SRS1_Type is record
      Reserved_0 : Bit_Value;  --  bit 0: reserved
      LOCKUP     : Bit_Value;  --  bit 1: core lockup reset
      SW         : Bit_Value;  --  bit 2: software reset (SYSRESETREQ)
      MDM_AP     : Bit_Value;  --  bit 3: MDM-AP system reset request
      Reserved_4 : Bit_Value;  --  bit 4: reserved
      SACKERR    : Bit_Value;  --  bit 5: stop-mode ack error reset
      Reserved_6 : Bit_Value;  --  bit 6: reserved
      Reserved_7 : Bit_Value;  --  bit 7: reserved
   end record
     with Volatile_Full_Access, Size => 8,
          Bit_Order => System.Low_Order_First;

   for SRS1_Type use record
      Reserved_0 at 0 range 0 .. 0;
      LOCKUP     at 0 range 1 .. 1;
      SW         at 0 range 2 .. 2;
      MDM_AP     at 0 range 3 .. 3;
      Reserved_4 at 0 range 4 .. 4;
      SACKERR    at 0 range 5 .. 5;
      Reserved_6 at 0 range 6 .. 6;
      Reserved_7 at 0 range 7 .. 7;
   end record;

   --  RCM register block (SRS0 at byte 0, SRS1 at byte 1)
   type RCM_Registers_Type is record
      SRS0 : SRS0_Type;
      SRS1 : SRS1_Type;
   end record
     with Volatile;

   for RCM_Registers_Type use record
      SRS0 at 0 range 0 .. 7;
      SRS1 at 1 range 0 .. 7;
   end record;

   --  Aliased RCM instance at the KL25Z hardware base address
   Registers : aliased RCM_Registers_Type
     with Import, Address => System'To_Address (RCM_Base);

end Kinetis_KL25Z.RCM;
