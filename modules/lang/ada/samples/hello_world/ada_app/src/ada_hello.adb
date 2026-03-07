--  SPDX-License-Identifier: Apache-2.0
--  Copyright (c) 2025 Zephyr Ada Contributors
--
--  Ada Hello World
--
--  Demonstrates the minimal Ada application structure on Zephyr:
--  - Three concurrent tasks with different priorities
--  - Ada delay statements (map to k_msleep via the RTS)
--  - No Zephyr C API calls in Ada code

with Interfaces.C;
with System;
with Zephyr.Config;   --  generated from Kconfig by kconfig_to_ada.py

package body Ada_Hello is

   use Interfaces;

   --  Thin wrapper around Zephyr printk
   procedure Printk (Fmt : String)
     with Import, Convention => C_Variadic_1, External_Name => "printk";

   --  Three tasks at different priorities — Ada delay replaces busy-wait
   task Hi_Task  is pragma Priority (System.Priority'Last - 1); end Hi_Task;
   task Mid_Task is pragma Priority (System.Priority'Last - 2); end Mid_Task;
   task Lo_Task  is pragma Priority (System.Priority'Last - 3); end Lo_Task;

   task body Hi_Task is
   begin
      loop
         Printk ("Ada Hi task running" & ASCII.LF);
         delay 0.1;   --  100 ms  (k_msleep via Ada RTS)
      end loop;
   end Hi_Task;

   task body Mid_Task is
   begin
      loop
         Printk ("Ada Mid task running" & ASCII.LF);
         delay 0.25;  --  250 ms
      end loop;
   end Mid_Task;

   task body Lo_Task is
   begin
      loop
         Printk ("Ada Lo task running" & ASCII.LF);
         delay 0.5;   --  500 ms
      end loop;
   end Lo_Task;

   procedure Main is
      pragma Unreferenced (Zephyr.Config.Main_Stack_Size);  --  available if needed
   begin
      Printk ("Zephyr Ada Hello World" & ASCII.LF);
      Printk ("Three Ada tasks started" & ASCII.LF);
      loop
         delay 10.0;
      end loop;
   end Main;

   procedure Last_Chance_Handler (Msg : System.Address; Line : Integer) is
      procedure Raw_Printk (Fmt, S : System.Address; L : C.unsigned)
        with Import, Convention => C_Variadic_1, External_Name => "printk";
      Fmt : constant String := "EXCEPTION: %s line %u" & ASCII.LF;
   begin
      Raw_Printk (Fmt'Address, Msg, C.unsigned (Line));
      loop null; end loop;
   end Last_Chance_Handler;

end Ada_Hello;
