--
--  Copyright (c) 2024, German Rivera
--
--  SPDX-License-Identifier: Apache-2.0
--

with Interfaces.C;
with GNAT.Source_Info;
with zephyr_posix_pthread_h;
with zephyr_posix_sched_h;
with zephyr_posix_posix_types_h;
with sys_utimespec_h;
with time_h;

package body Zephyr_Ada_Hello is
   use Interfaces;
   use type C.int;
   use type C.long;
   use type System.Address;
   package pthread_h renames zephyr_posix_pthread_h;
   package sched_h renames zephyr_posix_sched_h;
   package posix_types_h renames zephyr_posix_posix_types_h;
   package timespec_h renames sys_utimespec_h;

   Nsec_Per_Sec : constant := 1000000000;
   Nsec_Per_Msec : constant := 1000000;
   Service1_Period_Ms : constant := 20;
   Service2_Period_Ms : constant := 100;
   Service3_Period_Ms : constant := 200;

   procedure Printk (Fmt : String);

   procedure Printk (Fmt : String;
                     Arg1 : C.unsigned;
                     Arg2 : C.unsigned_long_long;
                     Arg3 : C.unsigned_long;
                     Arg4 : C.unsigned_long);

   procedure Printk (Fmt : String; C_Str_Addr : System.Address);

   procedure Printk (Fmt : String;
                     C_Str_Addr : System.Address;
                     Arg : C.unsigned);

   function Service1_Thread_Func (arg : System.Address) return System.Address
      with Convention => C;

   function Service2_Thread_Func (arg : System.Address) return System.Address
      with Convention => C;

   function Service3_Thread_Func (arg : System.Address) return System.Address
      with Convention => C;

   function Calc_Next_Wakeup_Time (Time_Stamp : timespec_h.timespec;
                                   Sleep_Time_Ms : C.long)
      return timespec_h.timespec
      with Pre => Time_Stamp.tv_nsec < Nsec_Per_Sec and then
                  Sleep_Time_Ms > 0,
           Post => Calc_Next_Wakeup_Time'Result.tv_nsec < Nsec_Per_Sec;

   procedure Hello_Ada is
      C_Ret : C.int;
      Max_Posix_Priority : constant C.int := 31;
      Sched_Param : aliased sched_h.sched_param;
      Thread_Handle : aliased posix_types_h.pthread_t;
   begin
      Printk ("Hello Ada (built on " &
              GNAT.Source_Info.Compilation_Date & " at " &
              GNAT.Source_Info.Compilation_Time & ")" & ASCII.LF);

      C_Ret := pthread_h.pthread_create (newthread => Thread_Handle'Access,
                                         attr => null,
                                         threadroutine => Service1_Thread_Func'Access,
                                         arg => System.Null_Address);
      pragma Assert (C_Ret = 0);
      Sched_Param.sched_priority := Max_Posix_Priority - 1;
      C_Ret := pthread_h.pthread_setschedparam (Thread_Handle, sched_h.SCHED_RR, Sched_Param'Access);
      pragma Assert (C_Ret = 0);

      C_Ret := pthread_h.pthread_create (newthread => Thread_Handle'Access,
                                         attr => null,
                                         threadroutine => Service2_Thread_Func'Access,
                                         arg => System.Null_Address);
      pragma Assert (C_Ret = 0);
      Sched_Param.sched_priority := Max_Posix_Priority - 2;
      C_Ret := pthread_h.pthread_setschedparam (Thread_Handle, sched_h.SCHED_RR, Sched_Param'Access);
      pragma Assert (C_Ret = 0);

      C_Ret := pthread_h.pthread_create (newthread => Thread_Handle'Access,
                                         attr => null,
                                         threadroutine => Service3_Thread_Func'Access,
                                         arg => System.Null_Address);
      pragma Assert (C_Ret = 0);
      Sched_Param.sched_priority := Max_Posix_Priority - 3;
      C_Ret := pthread_h.pthread_setschedparam (Thread_Handle, sched_h.SCHED_RR, Sched_Param'Access);
      pragma Assert (C_Ret = 0);

      --
      --  None of the child threads are supposed to terminate, so just wait
      --  on the last child thread created, to prevent the process to terminate
      --
      C_Ret := pthread_h.pthread_join (Thread_Handle, System.Null_Address);
      pragma Assert (C_Ret = 0);
   end Hello_Ada;

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

   procedure Printk (Fmt : String;
                  Arg1 : C.unsigned;
                  Arg2 : C.unsigned_long_long;
                  Arg3 : C.unsigned_long;
                  Arg4 : C.unsigned_long) is
      procedure C_Printk (Fmt_Addr : System.Address;
                          Arg1 : C.unsigned;
                          Arg2 : C.unsigned_long_long;
                          Arg3 : C.unsigned_long;
                          Arg4 : C.unsigned_long)
         with Import,
              Convention => C_Variadic_1,
              External_Name => "printk";

      C_Fmt : C.char_array (0 .. Fmt'Length);
      Count : C.size_t;
   begin
      C.To_C (Fmt, C_Fmt, Count, Append_Nul => True);
      C_Printk (C_Fmt'Address, Arg1, Arg2, Arg3, Arg4);
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
   --  Child thread entry-point function for Service 1
   --
   function Service1_Thread_Func (arg : System.Address) return System.Address
   is
      Cnt : C.int := 0;
      Current_Time : aliased timespec_h.timespec;
      Next_Wakeup_Time : aliased timespec_h.timespec;
      Remaining_Sleep_Time : aliased timespec_h.timespec;
      C_Ret : C.int;
   begin
      pragma Assert (arg = System.Null_Address);
      C_Ret := time_h.clock_gettime (clock_id => time_h.CLOCK_MONOTONIC,
                                     tp => Current_Time'Access);
      pragma Assert (C_Ret = 0);

      Next_Wakeup_Time := Current_Time;
      loop
         Cnt := Cnt + 1;
         Printk ("Ada thread1: 50 Hz, counter %u @ %llus, %lums, %luns" & ASCII.LF,
                  C.unsigned (Cnt),
                  C.unsigned_long_long (Current_Time.tv_sec),
                  C.unsigned_long (Current_Time.tv_nsec / Nsec_Per_Msec),
                  C.unsigned_long (Current_Time.tv_nsec mod Nsec_Per_Msec));

         Next_Wakeup_Time := Calc_Next_Wakeup_Time (Next_Wakeup_Time,
                                                      Service1_Period_Ms);

         --
         --  Check that we are not going to miss the next period:
         --  (or that we have not missed the current deadline)
         --
         C_Ret := time_h.clock_gettime (clock_id => time_h.CLOCK_MONOTONIC,
                                        tp => Current_Time'Access);
         pragma Assert (C_Ret = 0);
         pragma Assert (Next_Wakeup_Time.tv_sec > Current_Time.tv_sec or else
                        (Next_Wakeup_Time.tv_sec = Current_Time.tv_sec and then
                           Next_Wakeup_Time.tv_nsec > Current_Time.tv_nsec));

         --
         --  Wait for next period:
         --
         C_Ret := time_h.clock_nanosleep (clock_id => time_h.CLOCK_MONOTONIC,
                                          flags => time_h.TIMER_ABSTIME,
                                          rqtp => Next_Wakeup_Time'Access,
                                          rmtp => Remaining_Sleep_Time'Access);
         pragma Assert (C_Ret = 0);

         --
         --  Check that we did not wake up too early:
         --
         C_Ret := time_h.clock_gettime (clock_id => time_h.CLOCK_MONOTONIC,
                                        tp => Current_Time'Access);
         pragma Assert (C_Ret = 0);
         pragma Assert (Current_Time.tv_sec > Next_Wakeup_Time.tv_sec  or else
                        (Current_Time.tv_sec = Next_Wakeup_Time.tv_sec and then
                           Current_Time.tv_nsec >= Next_Wakeup_Time.tv_nsec));
      end loop;

      pragma Warnings (off, "unreachable code");
      return System.Null_Address;
      pragma Warnings (on, "unreachable code");
   end Service1_Thread_Func;

   --
   --  Child thread entry-point function for Service 2
   --
   function Service2_Thread_Func (arg : System.Address) return System.Address
   is
      Cnt : C.int := 0;
      Current_Time : aliased timespec_h.timespec;
      Next_Wakeup_Time : aliased timespec_h.timespec;
      Remaining_Sleep_Time : aliased timespec_h.timespec;
      C_Ret : C.int;
   begin
      pragma Assert (arg = System.Null_Address);
      C_Ret := time_h.clock_gettime (clock_id => time_h.CLOCK_MONOTONIC,
                                     tp => Current_Time'Access);
      pragma Assert (C_Ret = 0);

      Next_Wakeup_Time := Current_Time;
      loop
         Cnt := Cnt + 1;
         Printk ("Ada thread2: 10 Hz, counter %u @ %llus, %lums, %luns" & ASCII.LF,
                  C.unsigned (Cnt),
                  C.unsigned_long_long (Current_Time.tv_sec),
                  C.unsigned_long (Current_Time.tv_nsec / Nsec_Per_Msec),
                  C.unsigned_long (Current_Time.tv_nsec mod Nsec_Per_Msec));

         Next_Wakeup_Time := Calc_Next_Wakeup_Time (Next_Wakeup_Time,
                                                      Service2_Period_Ms);

         --
         --  Check that we are not going to miss the next period:
         --  (or that we have not missed the current deadline)
         --
         C_Ret := time_h.clock_gettime (clock_id => time_h.CLOCK_MONOTONIC,
                                        tp => Current_Time'Access);
         pragma Assert (C_Ret = 0);
         pragma Assert (Next_Wakeup_Time.tv_sec > Current_Time.tv_sec or else
                        (Next_Wakeup_Time.tv_sec = Current_Time.tv_sec and then
                           Next_Wakeup_Time.tv_nsec > Current_Time.tv_nsec));

         --
         --  Wait for next period:
         --
         C_Ret := time_h.clock_nanosleep (clock_id => time_h.CLOCK_MONOTONIC,
                                          flags => time_h.TIMER_ABSTIME,
                                          rqtp => Next_Wakeup_Time'Access,
                                          rmtp => Remaining_Sleep_Time'Access);
         pragma Assert (C_Ret = 0);

         --
         --  Check that we did not wake up too early:
         --
         C_Ret := time_h.clock_gettime (clock_id => time_h.CLOCK_MONOTONIC,
                                        tp => Current_Time'Access);
         pragma Assert (C_Ret = 0);
         pragma Assert (Current_Time.tv_sec > Next_Wakeup_Time.tv_sec  or else
                        (Current_Time.tv_sec = Next_Wakeup_Time.tv_sec and then
                           Current_Time.tv_nsec >= Next_Wakeup_Time.tv_nsec));
      end loop;

      pragma Warnings (off, "unreachable code");
      return System.Null_Address;
      pragma Warnings (on, "unreachable code");
   end Service2_Thread_Func;

   --
   --  Child thread entry-point function for Service 3
   --
   function Service3_Thread_Func (arg : System.Address) return System.Address
   is
      Cnt : C.int := 0;
      Current_Time : aliased timespec_h.timespec;
      Next_Wakeup_Time : aliased timespec_h.timespec;
      Remaining_Sleep_Time : aliased timespec_h.timespec;
      C_Ret : C.int;
   begin
      pragma Assert (arg = System.Null_Address);
      C_Ret := time_h.clock_gettime (clock_id => time_h.CLOCK_MONOTONIC,
                                     tp => Current_Time'Access);
      pragma Assert (C_Ret = 0);

      Next_Wakeup_Time := Current_Time;
      loop
         Cnt := Cnt + 1;
         Printk ("Ada thread3: 5 Hz, counter %u @ %llus, %lums, %luns" & ASCII.LF,
                  C.unsigned (Cnt),
                  C.unsigned_long_long (Current_Time.tv_sec),
                  C.unsigned_long (Current_Time.tv_nsec / Nsec_Per_Msec),
                  C.unsigned_long (Current_Time.tv_nsec mod Nsec_Per_Msec));

         Next_Wakeup_Time := Calc_Next_Wakeup_Time (Next_Wakeup_Time,
                                                    Service3_Period_Ms);

         --
         --  Check that we are not going to miss the next period:
         --  (or that we have not missed the current deadline)
         --
         C_Ret := time_h.clock_gettime (clock_id => time_h.CLOCK_MONOTONIC,
                                        tp => Current_Time'Access);
         pragma Assert (C_Ret = 0);
         pragma Assert (Next_Wakeup_Time.tv_sec > Current_Time.tv_sec or else
                        (Next_Wakeup_Time.tv_sec = Current_Time.tv_sec and then
                           Next_Wakeup_Time.tv_nsec > Current_Time.tv_nsec));

         --
         --  Wait for next period:
         --
         C_Ret := time_h.clock_nanosleep (clock_id => time_h.CLOCK_MONOTONIC,
                                          flags => time_h.TIMER_ABSTIME,
                                          rqtp => Next_Wakeup_Time'Access,
                                          rmtp => Remaining_Sleep_Time'Access);
         pragma Assert (C_Ret = 0);

         --
         --  Check that we did not wake up too early:
         --
         C_Ret := time_h.clock_gettime (clock_id => time_h.CLOCK_MONOTONIC,
                                        tp => Current_Time'Access);
         pragma Assert (C_Ret = 0);
         pragma Assert (Current_Time.tv_sec > Next_Wakeup_Time.tv_sec  or else
                        (Current_Time.tv_sec = Next_Wakeup_Time.tv_sec and then
                           Current_Time.tv_nsec >= Next_Wakeup_Time.tv_nsec));
      end loop;

      pragma Warnings (off, "unreachable code");
      return System.Null_Address;
      pragma Warnings (on, "unreachable code");
   end Service3_Thread_Func;

   --
   --  Compute the next wakeup time given the last wakeup time and the wanted
   --  sleep time
   --
   function Calc_Next_Wakeup_Time (Time_Stamp : timespec_h.timespec;
                                   Sleep_Time_Ms : C.long)
      return timespec_h.timespec
   is
      Secs_Increase : constant C.long :=
         (Time_Stamp.tv_nsec + (Sleep_Time_Ms * Nsec_Per_Msec)) / Nsec_Per_Sec;
      Next_Time_Stamp : timespec_h.timespec;
   begin
      if Secs_Increase /= 0 then
         Next_Time_Stamp.tv_sec := Time_Stamp.tv_sec + sys_utimespec_h.time_t (Secs_Increase);
         Next_Time_Stamp.tv_nsec :=
            (Time_Stamp.tv_nsec + (Sleep_Time_Ms * Nsec_Per_Msec)) mod Nsec_Per_Sec;
      else
         Next_Time_Stamp.tv_sec := Time_Stamp.tv_sec;
         Next_Time_Stamp.tv_nsec := Time_Stamp.tv_nsec + (Sleep_Time_Ms * Nsec_Per_Msec);
      end if;

      return Next_Time_Stamp;
   end Calc_Next_Wakeup_Time;

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
