--
--  Copyright (c) 2026 Zephyr Ada Contributors
--
--  SPDX-License-Identifier: Apache-2.0
--
--  Hand-crafted GPIO register interface for NXP KL25Z.
--  Each GPIO data register is 32 bits, one bit per pin.
--  Pin_Array_Type is imported from KL25Z_PORT so that GPIO and PORT
--  register fields share the same type — required for direct assignment
--  between gpio_driver locals and Gpio_Registers fields.
--
--  Hardware reference: NXP KL25 Sub-Family Reference Manual, chapter 40.
--
with System;
with KL25Z_PORT;

package KL25Z_GPIO is
   pragma Preelaborate;
   pragma SPARK_Mode (Off);

   --  Re-export shared pin types so callers need only "use KL25Z_GPIO"
   subtype Pin_Index_Type is KL25Z_PORT.Pin_Index_Type;
   subtype Pin_Array_Type  is KL25Z_PORT.Pin_Array_Type;

   --  GPIO peripheral register block (6 × 32-bit registers, no gaps)
   type Registers_Type is record
      PDOR : Pin_Array_Type;  --  Port Data Output Register    (byte 0)
      PSOR : Pin_Array_Type;  --  Port Set Output Register     (byte 4)
      PCOR : Pin_Array_Type;  --  Port Clear Output Register   (byte 8)
      PTOR : Pin_Array_Type;  --  Port Toggle Output Register  (byte 12)
      PDIR : Pin_Array_Type;  --  Port Data Input Register     (byte 16)
      PDDR : Pin_Array_Type;  --  Port Data Direction Register (byte 20)
   end record
     with Volatile;

   for Registers_Type use record
      PDOR at 0  range 0 .. 31;
      PSOR at 4  range 0 .. 31;
      PCOR at 8  range 0 .. 31;
      PTOR at 12 range 0 .. 31;
      PDIR at 16 range 0 .. 31;
      PDDR at 20 range 0 .. 31;
   end record;

   --  Aliased GPIO instances at NXP KL25Z hardware base addresses
   PortA_Registers : aliased Registers_Type
     with Import, Address => System'To_Address (16#400FF000#);
   PortB_Registers : aliased Registers_Type
     with Import, Address => System'To_Address (16#400FF040#);
   PortC_Registers : aliased Registers_Type
     with Import, Address => System'To_Address (16#400FF080#);
   PortD_Registers : aliased Registers_Type
     with Import, Address => System'To_Address (16#400FF0C0#);
   PortE_Registers : aliased Registers_Type
     with Import, Address => System'To_Address (16#400FF100#);

end KL25Z_GPIO;
