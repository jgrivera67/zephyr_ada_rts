pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with sys_utimespec_h;
with stddef_h;

package time_h is

   --  unsupported macro: CLOCKS_PER_SEC _CLOCKS_PER_SEC_
   TIME_UTC : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/time.h:62

   CLOCK_REALTIME : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/time.h:127

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

   subtype clock_t is unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/time.h:66

   type tm is record
      tm_sec : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/time.h:72
      tm_min : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/time.h:73
      tm_hour : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/time.h:74
      tm_mday : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/time.h:75
      tm_mon : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/time.h:76
      tm_year : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/time.h:77
      tm_wday : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/time.h:78
      tm_yday : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/time.h:79
      tm_isdst : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/time.h:80
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/time.h:70

  -- Flag indicating time is "absolute" with respect to the clock
  --   associated with a time.  Value 4 is historic.  

  -- * Structure defined by POSIX.1b to be like a itimerval, but with
  -- * timespecs. Used in the timer_*() system calls.
  --  

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
   function asctime (u_tblock : access constant tm) return Interfaces.C.Strings.chars_ptr  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/time.h:185
   with Import => True, 
        Convention => C, 
        External_Name => "asctime";

   function clock return clock_t  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/time.h:194
   with Import => True, 
        Convention => C, 
        External_Name => "clock";

   function ctime (u_time : access sys_utimespec_h.time_t) return Interfaces.C.Strings.chars_ptr  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/time.h:212
   with Import => True, 
        Convention => C, 
        External_Name => "ctime";

   function difftime (u_time2 : sys_utimespec_h.time_t; u_time1 : sys_utimespec_h.time_t) return double  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/time.h:219
   with Import => True, 
        Convention => C, 
        External_Name => "difftime";

   function gmtime (u_timer : access sys_utimespec_h.time_t) return access tm  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/time.h:231
   with Import => True, 
        Convention => C, 
        External_Name => "gmtime";

   function gmtime_r (arg1 : access sys_utimespec_h.time_t; arg2 : access tm) return access tm  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/time.h:234
   with Import => True, 
        Convention => C, 
        External_Name => "gmtime_r";

   function localtime (u_timer : access sys_utimespec_h.time_t) return access tm  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/time.h:238
   with Import => True, 
        Convention => C, 
        External_Name => "localtime";

   function mktime (u_timeptr : access tm) return sys_utimespec_h.time_t  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/time.h:245
   with Import => True, 
        Convention => C, 
        External_Name => "mktime";

   function nanosleep (rqtp : access constant sys_utimespec_h.timespec; rmtp : access sys_utimespec_h.timespec) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/time.h:247
   with Import => True, 
        Convention => C, 
        External_Name => "nanosleep";

   function strftime
     (u_s : Interfaces.C.Strings.chars_ptr;
      u_maxsize : stddef_h.size_t;
      u_fmt : Interfaces.C.Strings.chars_ptr;
      u_t : access constant tm) return stddef_h.size_t  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/time.h:249
   with Import => True, 
        Convention => C, 
        External_Name => "strftime";

   function timespec_get (u_ts : access sys_utimespec_h.timespec; u_base : int) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/time.h:253
   with Import => True, 
        Convention => C, 
        External_Name => "timespec_get";

   function time (u_timer : access sys_utimespec_h.time_t) return sys_utimespec_h.time_t  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/time.h:271
   with Import => True, 
        Convention => C, 
        External_Name => "time";

   procedure tzset  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/time.h:294
   with Import => True, 
        Convention => C, 
        External_Name => "tzset";

end time_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
