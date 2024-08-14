--
--  Copyright (c) 2024, German Rivera
--
--  SPDX-License-Identifier: Apache-2.0
--

with Interfaces.C;
with GNAT.Source_Info;

package body Zephyr_Ada_Hello is
   procedure Print_String (Str : String; Arg : Integer := 0)
   is
      procedure Printk (Str : System.Address; Arg : Interfaces.C.int)
        with Import,
             Convention => C_Variadic_1,
             External_Name => "printk";

      C_Str : String (1 .. Str'Length + 1) := Str & ASCII.NUL;
   begin
      Printk (C_Str'Address, Interfaces.C.int (Arg));
   end Print_String;

   procedure Hello_Ada is
   begin
      Print_String (
        "Hello Ada (built on " &
        GNAT.Source_Info.Compilation_Date & " at " &
        GNAT.Source_Info.Compilation_Time & ")" & ASCII.LF);
   end Hello_Ada;

   procedure Last_Chance_Handler (Msg : System.Address; Line : Integer) is
      procedure Privileged_Last_Chance_Handler (Msg : System.Address;
                                                Line : Integer)
         with No_Return
      is
         Msg_Text : String (1 .. 128) with Address => Msg;
         Msg_Length : Natural := 0;
      begin
         --
         --  Calculate length of the null-terminated 'Msg' string:
         --
         for Msg_Char of Msg_Text loop
            Msg_Length := Msg_Length + 1;
            exit when Msg_Char = ASCII.NUL;
         end loop;

         --  Print exception message to UART:
         --
         if Line /= 0 then
            Print_String (
               ASCII.LF & "*** Exception: '" & Msg_Text (1 .. Msg_Length) &
               "' at line %u" & ASCII.LF, Line);
         else
            Print_String (
               ASCII.LF &
               "*** Exception: '" & Msg_Text (1 .. Msg_Length) & "'" &
               ASCII.LF);
         end if;

         loop
            null; --???HiRTOS_Cpu_Arch_Interface.Wait_For_Interrupt;
         end loop;
      end Privileged_Last_Chance_Handler;

   begin
      Privileged_Last_Chance_Handler (Msg, Line);
   end Last_Chance_Handler;

  --   task My_Ada_Task;

  --   task body My_Ada_Task is
  --   begin
  --      loop
  --         null;
  --      end loop;
  --   end My_Ada_Task;
end Zephyr_Ada_Hello;
