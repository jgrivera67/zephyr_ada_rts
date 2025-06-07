pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_types_h;
limited with sys_utimespec_h;

package zephyr_posix_sched_h is

   SCHED_OTHER : constant := 0;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sched.h:23

   SCHED_FIFO : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sched.h:26

   SCHED_RR : constant := 2;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sched.h:29

  -- * Copyright (c) 2018-2023 Intel Corporation
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  -- * Other mandatory scheduling policy. Must be numerically distinct. May
  -- * execute identically to SCHED_RR or SCHED_FIFO. For Zephyr this is a
  -- * pseudonym for SCHED_RR.
  --  

  -- Cooperative scheduling policy  
  -- Priority based preemptive scheduling policy  
   type sched_param is record
      sched_priority : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sched.h:34
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sched.h:33

  --*
  -- * @brief Yield the processor
  -- *
  -- * See IEEE 1003.1
  --  

   function sched_yield return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sched.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "sched_yield";

   function sched_get_priority_min (policy : int) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sched.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "sched_get_priority_min";

   function sched_get_priority_max (policy : int) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sched.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "sched_get_priority_max";

   function sched_getparam (pid : sys_types_h.pid_t; param : access sched_param) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sched.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "sched_getparam";

   function sched_getscheduler (pid : sys_types_h.pid_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sched.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "sched_getscheduler";

   function sched_setparam (pid : sys_types_h.pid_t; param : access constant sched_param) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sched.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "sched_setparam";

   function sched_setscheduler
     (pid : sys_types_h.pid_t;
      policy : int;
      param : access constant sched_param) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sched.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "sched_setscheduler";

   function sched_rr_get_interval (pid : sys_types_h.pid_t; interval : access sys_utimespec_h.timespec) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sched.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "sched_rr_get_interval";

end zephyr_posix_sched_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
