pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_types_h;
limited with sys_utimespec_h;
limited with zephyr_posix_signal_h;

package zephyr_posix_time_h is

   CLOCK_PROCESS_CPUTIME_ID : constant := 2;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/time.h:73

   CLOCK_THREAD_CPUTIME_ID : constant := 3;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/time.h:77

   CLOCK_MONOTONIC : constant := 4;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/time.h:81

   TIMER_ABSTIME : constant := 4;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/time.h:85

  -- * Copyright (c) 2018 Intel Corporation
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  -- * Copyright (c) 2018 Intel Corporation
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  -- Kludge to support outdated newlib version as used in SDK 0.10 for Xtensa  
  -- Newever Newlib 3.x+  
  -- Workaround for older Newlib 2.x, as used by Xtensa. It lacks sys/_timeval.h,
  -- * so mimic it here.
  --  

  -- Timer interval  
  -- Timer expiration  
  -- Not Newlib  
   function clock_gettime (clock_id : sys_types_h.clockid_t; ts : access sys_utimespec_h.timespec) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/time.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "clock_gettime";

   function clock_getres (clock_id : sys_types_h.clockid_t; ts : access sys_utimespec_h.timespec) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/time.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "clock_getres";

   function clock_settime (clock_id : sys_types_h.clockid_t; ts : access constant sys_utimespec_h.timespec) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/time.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "clock_settime";

   function clock_getcpuclockid (pid : sys_types_h.pid_t; clock_id : access sys_types_h.clockid_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/time.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "clock_getcpuclockid";

  -- Timer APIs  
  -- * Copyright (c) 2018 Intel Corporation
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

   function timer_create
     (clockId : sys_types_h.clockid_t;
      evp : access zephyr_posix_signal_h.sigevent;
      timerid : access sys_types_h.timer_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/time.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "timer_create";

   function timer_delete (timerid : sys_types_h.timer_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/time.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "timer_delete";

   type itimerspec is null record;   -- incomplete struct

   function timer_gettime (timerid : sys_types_h.timer_t; its : access itimerspec) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/time.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "timer_gettime";

   function timer_settime
     (timerid : sys_types_h.timer_t;
      flags : int;
      value : access constant itimerspec;
      ovalue : access itimerspec) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/time.h:97
   with Import => True, 
        Convention => C, 
        External_Name => "timer_settime";

   function timer_getoverrun (timerid : sys_types_h.timer_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/time.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "timer_getoverrun";

   function clock_nanosleep
     (clock_id : sys_types_h.clockid_t;
      flags : int;
      rqtp : access constant sys_utimespec_h.timespec;
      rmtp : access sys_utimespec_h.timespec) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/time.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "clock_nanosleep";

end zephyr_posix_time_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
