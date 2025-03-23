pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_types_h;
with Interfaces.C.Strings;
with stddef_h;
with sys_ulocale_h;

package time_h is

   --  unsupported macro: CLOCKS_PER_SEC _CLOCKS_PER_SEC_
   --  unsupported macro: CLK_TCK CLOCKS_PER_SEC
   --  unsupported macro: tzname _tzname
   CLOCK_ENABLED : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/time.h:265
   CLOCK_DISABLED : constant := 0;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/time.h:266

   CLOCK_ALLOWED : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/time.h:270

   CLOCK_DISALLOWED : constant := 0;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/time.h:273

   TIMER_ABSTIME : constant := 4;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/time.h:280
   --  unsupported macro: CLOCK_REALTIME ((clockid_t) 1)

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

  -- Get _CLOCKS_PER_SEC_  
   type tm is record
      tm_sec : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/time.h:83
      tm_min : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/time.h:84
      tm_hour : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/time.h:85
      tm_mday : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/time.h:86
      tm_mon : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/time.h:87
      tm_year : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/time.h:88
      tm_wday : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/time.h:89
      tm_yday : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/time.h:90
      tm_isdst : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/time.h:91
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/time.h:81

   function clock return sys_types_h.clock_t  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/time.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "clock";

   function difftime (u_time2 : sys_types_h.time_t; u_time1 : sys_types_h.time_t) return double  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/time.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "difftime";

   function mktime (u_timeptr : access tm) return sys_types_h.time_t  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/time.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "mktime";

   function time (u_timer : access sys_types_h.time_t) return sys_types_h.time_t  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/time.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "time";

   function asctime (u_tblock : access constant tm) return Interfaces.C.Strings.chars_ptr  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/time.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "asctime";

   function ctime (u_time : access sys_types_h.time_t) return Interfaces.C.Strings.chars_ptr  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/time.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "ctime";

   function gmtime (u_timer : access sys_types_h.time_t) return access tm  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/time.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "gmtime";

   function localtime (u_timer : access sys_types_h.time_t) return access tm  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/time.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "localtime";

   function strftime
     (u_s : Interfaces.C.Strings.chars_ptr;
      u_maxsize : stddef_h.size_t;
      u_fmt : Interfaces.C.Strings.chars_ptr;
      u_t : access constant tm) return stddef_h.size_t  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/time.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "strftime";

   function strftime_l
     (u_s : Interfaces.C.Strings.chars_ptr;
      u_maxsize : stddef_h.size_t;
      u_fmt : Interfaces.C.Strings.chars_ptr;
      u_t : access constant tm;
      u_l : sys_ulocale_h.locale_t) return stddef_h.size_t  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/time.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "strftime_l";

   function asctime_r (arg1 : access constant tm; arg2 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/time.h:123
   with Import => True, 
        Convention => C, 
        External_Name => "asctime_r";

   function ctime_r (arg1 : access sys_types_h.time_t; arg2 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/time.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "ctime_r";

   function gmtime_r (arg1 : access sys_types_h.time_t; arg2 : access tm) return access tm  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/time.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "gmtime_r";

   function localtime_r (arg1 : access sys_types_h.time_t; arg2 : access tm) return access tm  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/time.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "localtime_r";

   procedure tzset  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/time.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "tzset";

  -- getdate functions  
  -- getdate_err is set to one of the following values to indicate the error.
  --     1  the DATEMSK environment variable is null or undefined,
  --     2  the template file cannot be opened for reading,
  --     3  failed to get file status information,
  --     4  the template file is not a regular file,
  --     5  an error is encountered while reading the template file,
  --     6  memory allication failed (not enough memory available),
  --     7  there is no line in the template that matches the input,
  --     8  invalid input specification   

  -- getdate_r returns the error code as above  
  -- defines for the opengroup specifications Derived from Issue 1 of the SVID.   
  -- POSIX defines the external tzname being defined in time.h  
  -- Clocks, P1003.1b-1993, p. 263  
  -- Create a Per-Process Timer, P1003.1b-1993, p. 264  
  -- Delete a Per_process Timer, P1003.1b-1993, p. 266  
  -- Per-Process Timers, P1003.1b-1993, p. 267  
  -- High Resolution Sleep, P1003.1b-1993, p. 269  
  -- CPU-time Clock Attributes, P1003.4b/D8, p. 54  
  -- values for the clock enable attribute  
  -- values for the pthread cputime_clock_allowed attribute  
  --   CPU-time clock attached to that thread  
  --   shall be accessible.  
  --   thread shall not have a CPU-time clock  
  --   accessible.  
  -- Flag indicating time is "absolute" with respect to the clock
  --   associated with a time.  Value 4 is historic.  

  -- Manifest Constants, P1003.1b-1993, p. 262  
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

  -- Accessing a Process CPU-time CLock, P1003.4b/D8, p. 55  
  -- CPU-time Clock Attribute Access, P1003.4b/D8, p. 56  
end time_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
