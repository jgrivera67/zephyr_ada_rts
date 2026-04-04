--
--  Copyright (c) 2016-2026, German Rivera
--
--  SPDX-License-Identifier: Apache-2.0
--
--  Ada main entry point for Zephyr port of FRDM-KL25Z autonomous car.
--
--  NOTE: The KL25Z has only 16 KB SRAM and 128 KB flash.  Zephyr kernel +
--  GNARL RTS consume a significant fraction of those resources, so the set
--  of features enabled here is deliberately lean:
--    - Car_Controller (Ada task + protected objects + hardware drivers)
--    - Pin_Mux_Driver, Color_Led, Runtime_Logs
--    - Serial_Console and Command_Parser are excluded to save RAM
--      (Serial_Console alone has a ring-buffer + output task + VT100 state)
--
with System;

package Ada_Main is

   procedure Main
     with Export, Convention => C, External_Name => "ada_main";

private

   --  Last-chance exception handler required by GNAT on bare-metal/Zephyr.
   --  On Zephyr, Halt() is the appropriate action: log via printk then spin.
   procedure Last_Chance_Handler (Msg : System.Address; Line : Integer)
     with No_Return, Export, Convention => C,
          External_Name => "__gnat_last_chance_handler";

end Ada_Main;
