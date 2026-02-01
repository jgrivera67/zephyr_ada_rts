pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_utypes_h;
with sys_utimespec_h;
with Interfaces.C.Strings;
--with zephyr_posix_posix_types_h; -- JGR_CHANGE
with stddef_h;
with sys_ulocale_h;

package time_h is

   --  unsupported macro: CLOCKS_PER_SEC _CLOCKS_PER_SEC_
   TIME_UTC : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:62
   --  unsupported macro: CLK_TCK CLOCKS_PER_SEC

   TIMER_ABSTIME : constant := 4;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:98

   CLOCK_REALTIME : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:127

   CLOCK_PROCESS_CPUTIME_ID : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:137

   CLOCK_MONOTONIC : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:157

  --Copyright (c) 1991, 1993
  --The Regents of the University of California.  All rights reserved.
  --c) UNIX System Laboratories, Inc.
  --All or some portions of this file are derived from material licensed
  --to the University of California by American Telephone and Telegraph
  --Co. or Unix System Laboratories, Inc. and are reproduced herein with
  --the permission of UNIX System Laboratories, Inc.
  --Redistribution and use in source and binary forms, with or without
  --modification, are permitted provided that the following conditions
  --are met:
  --1. Redistributions of source code must retain the above copyright
  --notice, this list of conditions and the following disclaimer.
  --2. Redistributions in binary form must reproduce the above copyright
  --notice, this list of conditions and the following disclaimer in the
  --documentation and/or other materials provided with the distribution.
  --3. Neither the name of the University nor the names of its contributors
  --may be used to endorse or promote products derived from this software
  --without specific prior written permission.
  --THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
  --ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  --IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
  --ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
  --FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  --DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  --OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  --HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
  --LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
  --OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
  --SUCH DAMAGE.
  --

  -- * time.h
  -- *
  -- * Struct and function declarations for dealing with time.
  --

   subtype clock_t is unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:66

   type tm is record
      tm_sec : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:72
      tm_min : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:73
      tm_hour : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:74
      tm_mday : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:75
      tm_mon : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:76
      tm_year : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:77
      tm_wday : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:78
      tm_yday : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:79
      tm_isdst : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:80
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:70

  -- Flag indicating time is "absolute" with respect to the clock
  --   associated with a time.  Value 4 is historic.

   subtype clockid_t is sys_utypes_h.uu_clockid_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:103

   subtype timer_t is sys_utypes_h.uu_timer_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:108

  -- * Structure defined by POSIX.1b to be like a itimerval, but with
  -- * timespecs. Used in the timer_*() system calls.
  --

   type itimerspec is record
      it_interval : aliased sys_utimespec_h.timespec;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:117
      it_value : aliased sys_utimespec_h.timespec;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:118
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:116

  -- Manifest Constants, P1003.4b/D8, p. 55
  -- When used in a clock or timer function call, this is interpreted as
  --   the identifier of the CPU_time clock associated with the PROCESS
  --   making the function call.

  --  When used in a clock or timer function call, this is interpreted as
  --    the identifier of the CPU_time clock associated with the THREAD
  --    making the function call.

  --  The identifier for the system-wide monotonic clock, which is defined
  -- *  as a clock whose value cannot be set via clock_settime() and which
  -- *  cannot have backward clock jumps.

  -- defines for the opengroup specifications Derived from Issue 1 of the SVID.
   tzname : array (0 .. 1) of Interfaces.C.Strings.chars_ptr  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:182
   with Import => True,
        Convention => C,
        External_Name => "tzname";

   function asctime (u_tblock : access constant tm) return Interfaces.C.Strings.chars_ptr  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:185
   with Import => True,
        Convention => C,
        External_Name => "asctime";

   function asctime_r (arg1 : access constant tm; arg2 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:190
   with Import => True,
        Convention => C,
        External_Name => "asctime_r";

   function clock return clock_t  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:194
   with Import => True,
        Convention => C,
        External_Name => "clock";

   function clock_getcpuclockid (pid : int; clock_id : access clockid_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:197
   with Import => True,
        Convention => C,
        External_Name => "clock_getcpuclockid";

   function clock_getres (clock_id : clockid_t; res : access sys_utimespec_h.timespec) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:201
   with Import => True,
        Convention => C,
        External_Name => "clock_getres";

   function clock_gettime (clock_id : clockid_t; tp : access sys_utimespec_h.timespec) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:203
   with Import => True,
        Convention => C,
        External_Name => "clock_gettime";

   function clock_nanosleep
     (clock_id : clockid_t;
      flags : int;
      rqtp : access constant sys_utimespec_h.timespec;
      rmtp : access sys_utimespec_h.timespec) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:205
   with Import => True,
        Convention => C,
        External_Name => "clock_nanosleep";

   function clock_settime (clock_id : clockid_t; tp : access constant sys_utimespec_h.timespec) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:209
   with Import => True,
        Convention => C,
        External_Name => "clock_settime";

   function ctime (u_time : access sys_utimespec_h.time_t) return Interfaces.C.Strings.chars_ptr  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:212
   with Import => True,
        Convention => C,
        External_Name => "ctime";

   function ctime_r (arg1 : access sys_utimespec_h.time_t; arg2 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:215
   with Import => True,
        Convention => C,
        External_Name => "ctime_r";

   function difftime (u_time2 : sys_utimespec_h.time_t; u_time1 : sys_utimespec_h.time_t) return double  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:219
   with Import => True,
        Convention => C,
        External_Name => "difftime";

   function gmtime (u_timer : access sys_utimespec_h.time_t) return access tm  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:231
   with Import => True,
        Convention => C,
        External_Name => "gmtime";

   function gmtime_r (arg1 : access sys_utimespec_h.time_t; arg2 : access tm) return access tm  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:234
   with Import => True,
        Convention => C,
        External_Name => "gmtime_r";

   function localtime (u_timer : access sys_utimespec_h.time_t) return access tm  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:238
   with Import => True,
        Convention => C,
        External_Name => "localtime";

   function localtime_r (arg1 : access sys_utimespec_h.time_t; arg2 : access tm) return access tm  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:241
   with Import => True,
        Convention => C,
        External_Name => "localtime_r";

   function mktime (u_timeptr : access tm) return sys_utimespec_h.time_t  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:245
   with Import => True,
        Convention => C,
        External_Name => "mktime";

   function nanosleep (rqtp : access constant sys_utimespec_h.timespec; rmtp : access sys_utimespec_h.timespec) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:247
   with Import => True,
        Convention => C,
        External_Name => "nanosleep";

   function strftime
     (u_s : Interfaces.C.Strings.chars_ptr;
      u_maxsize : stddef_h.size_t;
      u_fmt : Interfaces.C.Strings.chars_ptr;
      u_t : access constant tm) return stddef_h.size_t  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:249
   with Import => True,
        Convention => C,
        External_Name => "strftime";

   function timespec_get (u_ts : access sys_utimespec_h.timespec; u_base : int) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:253
   with Import => True,
        Convention => C,
        External_Name => "timespec_get";

   function strftime_l
     (u_s : Interfaces.C.Strings.chars_ptr;
      u_maxsize : stddef_h.size_t;
      u_fmt : Interfaces.C.Strings.chars_ptr;
      u_t : access constant tm;
      u_l : sys_ulocale_h.locale_t) return stddef_h.size_t  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:256
   with Import => True,
        Convention => C,
        External_Name => "strftime_l";

   function time (u_timer : access sys_utimespec_h.time_t) return sys_utimespec_h.time_t  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:271
   with Import => True,
        Convention => C,
        External_Name => "time";

   type sigevent is null record;   -- incomplete struct

   function timer_create
     (clock_id : clockid_t;
      evp : access sigevent;
      timerid : access timer_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:279
   with Import => True,
        Convention => C,
        External_Name => "timer_create";

   function timer_delete (timerid : timer_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:283
   with Import => True,
        Convention => C,
        External_Name => "timer_delete";

   function timer_getoverrun (timerid : timer_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:285
   with Import => True,
        Convention => C,
        External_Name => "timer_getoverrun";

   function timer_gettime (timerid : timer_t; value : access itimerspec) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:287
   with Import => True,
        Convention => C,
        External_Name => "timer_gettime";

   function timer_settime
     (timerid : timer_t;
      flags : int;
      value : access constant itimerspec;
      ovalue : access itimerspec) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:289
   with Import => True,
        Convention => C,
        External_Name => "timer_settime";

   procedure tzset  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/time.h:294
   with Import => True,
        Convention => C,
        External_Name => "tzset";

end time_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
