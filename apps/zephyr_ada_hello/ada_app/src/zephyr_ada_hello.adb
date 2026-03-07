--
--  Copyright (c) 2024, German Rivera
--
--  SPDX-License-Identifier: Apache-2.0
--

with Interfaces.C;
with GNAT.Source_Info;

package body Zephyr_Ada_Hello is
   use Interfaces;

   procedure Printk (Fmt : String);

   procedure Printk (Fmt : String;
                     Arg : C.unsigned);

   procedure Printk (Fmt : String; C_Str_Addr : System.Address);

   procedure Printk (Fmt : String;
                     C_Str_Addr : System.Address;
                     Arg : C.unsigned);

   --  Simple busy-wait delay
   procedure Busy_Delay (Iterations : C.unsigned) is
   begin
      for I in 1 .. Iterations loop
         null;  -- Busy wait
      end loop;
   end Busy_Delay;

   --  Service task 1: High priority
   task Service1_Task is
      pragma Priority (System.Priority'Last - 1);
   end Service1_Task;

   --  Service task 2: Medium priority
   task Service2_Task is
      pragma Priority (System.Priority'Last - 2);
   end Service2_Task;

   --  Service task 3: Low priority
   task Service3_Task is
      pragma Priority (System.Priority'Last - 3);
   end Service3_Task;

   procedure Ada_Main is
   begin
      Printk ("Hello Ada (built on " &
              GNAT.Source_Info.Compilation_Date & " at " &
              GNAT.Source_Info.Compilation_Time & ")" & ASCII.LF);

      Printk ("Starting 3 Ada concurrent tasks..." & ASCII.LF);

      --  Tasks are automatically activated when Ada_Main is called
      --  Just loop here to keep the environment task alive
      loop
         Busy_Delay (50000000);  -- Busy wait
      end loop;
   end Ada_Main;

   procedure Printk (Fmt : String) is
      procedure C_Printk (Fmt_Addr : System.Address)
         with Import,
              Convention => C_Variadic_1,
              External_Name => "printk";

      C_Fmt : C.char_array (0 .. Fmt'Length);
      Count : C.size_t;
   begin
      C.To_C (Fmt, C_Fmt, Count, Append_Nul => True);
      C_Printk (C_Fmt'Address);
   end Printk;

   procedure Printk (Fmt : String; Arg : C.unsigned) is
      procedure C_Printk (Fmt_Addr : System.Address; Arg : C.unsigned)
         with Import,
              Convention => C_Variadic_1,
              External_Name => "printk";

      C_Fmt : C.char_array (0 .. Fmt'Length);
      Count : C.size_t;
   begin
      C.To_C (Fmt, C_Fmt, Count, Append_Nul => True);
      C_Printk (C_Fmt'Address, Arg);
   end Printk;

   procedure Printk (Fmt : String; C_Str_Addr : System.Address) is
      procedure C_Printk (Fmt_Addr : System.Address;
                          Str_Addr : System.Address)
         with Import,
              Convention => C_Variadic_1,
              External_Name => "printk";

      C_Fmt : C.char_array (0 .. Fmt'Length);
      Count : C.size_t;
   begin
      C.To_C (Fmt, C_Fmt, Count, Append_Nul => True);
      C_Printk (C_Fmt'Address, C_Str_Addr);
   end Printk;

   procedure Printk (Fmt : String; C_Str_Addr : System.Address; Arg : C.unsigned) is
      procedure C_Printk (Fmt_Addr : System.Address;
                          Str_Addr : System.Address;
                          Arg : C.unsigned)
         with Import,
              Convention => C_Variadic_1,
              External_Name => "printk";

      C_Fmt : C.char_array (0 .. Fmt'Length);
      Count : C.size_t;
   begin
      C.To_C (Fmt, C_Fmt, Count, Append_Nul => True);
      C_Printk (C_Fmt'Address, C_Str_Addr, Arg);
   end Printk;

   --
   --  Service task 1 implementation
   --
   task body Service1_Task is
      Cnt : Natural := 0;
   begin
      loop
         Cnt := Cnt + 1;
         Printk ("Ada task1 (high prio): iteration %u" & ASCII.LF, C.unsigned (Cnt));
         Busy_Delay (10000000);
      end loop;
   end Service1_Task;

   --
   --  Service task 2 implementation
   --
   task body Service2_Task is
      Cnt : Natural := 0;
   begin
      loop
         Cnt := Cnt + 1;
         Printk ("Ada task2 (medium prio): iteration %u" & ASCII.LF, C.unsigned (Cnt));
         Busy_Delay (25000000);
      end loop;
   end Service2_Task;

   --
   --  Service task 3 implementation
   --
   task body Service3_Task is
      Cnt : Natural := 0;
   begin
      loop
         Cnt := Cnt + 1;
         Printk ("Ada task3 (low prio): iteration %u" & ASCII.LF, C.unsigned (Cnt));
         Busy_Delay (50000000);
      end loop;
   end Service3_Task;

   procedure Last_Chance_Handler (Msg : System.Address; Line : Integer) is
      procedure Privileged_Last_Chance_Handler (Msg : System.Address;
                                                Line : Integer)
         with No_Return
      is
      begin
         --  Print exception message to UART:
         --  NOTE: Msg is the address of a null-terminated string
         if Line /= 0 then
            Printk (ASCII.LF & "*** Exception: '%s' at line %u ***" & ASCII.LF, Msg,
                    C.unsigned (Line));
         else
            Printk (ASCII.LF & "*** Exception: '%s' ***" & ASCII.LF, Msg);
         end if;

         loop
            null;
         end loop;
      end Privileged_Last_Chance_Handler;

   begin
      Privileged_Last_Chance_Handler (Msg, Line);
   end Last_Chance_Handler;

end Zephyr_Ada_Hello;
