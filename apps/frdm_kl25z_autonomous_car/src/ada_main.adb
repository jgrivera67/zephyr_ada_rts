--
--  Copyright (c) 2016-2026, German Rivera
--
--  SPDX-License-Identifier: Apache-2.0
--
--  Zephyr Ada main for FRDM-KL25Z autonomous car.
--  Adapted from original main.adb: Reset_Counter, Serial_Console and
--  Command_Parser removed to fit within 16 KB SRAM + 128 KB flash.
--
with Microcontroller.MCU_Specific;
with Pin_Mux_Driver;
with Color_Led;
with Runtime_Logs;
with Car_Controller;
with Ada.Real_Time;
with GNAT.Source_Info;

package body Ada_Main is

   --  C binding: void printk(const char *fmt, ...)  (Zephyr kernel)
   procedure Printk (Fmt : String)
     with Import, Convention => C, External_Name => "printk";

   -- ** --

   procedure Last_Chance_Handler (Msg : System.Address; Line : Integer) is
      pragma Unreferenced (Msg, Line);
   begin
      --  Log via Zephyr printk then spin (k_panic not available from Ada)
      Printk ("Ada exception: last chance handler reached" & ASCII.LF);
      loop
         null;
      end loop;
   end Last_Chance_Handler;

   -- ** --

   procedure Main is
      Reset_Cause : constant Microcontroller.System_Reset_Causes_Type :=
        Microcontroller.MCU_Specific.Find_System_Reset_Cause;

      Heartbeat_Period : constant Ada.Real_Time.Time_Span :=
        Ada.Real_Time.Milliseconds (500);

      Old_Color : Color_Led.Led_Color_Type with Unreferenced;
   begin
      Runtime_Logs.Initialize;

      Runtime_Logs.Info_Print (
         "Autonomous Car started (built " &
         GNAT.Source_Info.Compilation_Date & " " &
         GNAT.Source_Info.Compilation_Time & ", reset cause: " &
         Microcontroller.Reset_Cause_Strings (Reset_Cause).all & ")");

      --  Initialize hardware
      Pin_Mux_Driver.Initialize;
      Color_Led.Initialize;

      Old_Color := Color_Led.Set_Color (Color_Led.Blue);
      Color_Led.Turn_On_Blinker (Heartbeat_Period);

      --  Start the car controller (activates Ada tasks internally)
      Car_Controller.Initialize;

      --  Main task idles; car controller task drives the control loop
      loop
         delay 1.0;
      end loop;
   end Main;

end Ada_Main;
