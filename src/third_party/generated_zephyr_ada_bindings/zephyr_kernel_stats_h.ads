pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;
with Interfaces.C.Extensions;

package zephyr_kernel_stats_h is

  -- * Copyright (c) 2021,2023, Intel Corporation
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  --*
  -- * Structure used to track internal statistics about both thread
  -- * and CPU usage.
  --  

  --*< total usage in cycles  
   type k_cycle_stats is record
      total : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/stats.h:19
      track_usage : aliased Extensions.bool;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/stats.h:30
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/stats.h:18

  --*
  --	 * @name Fields available when CONFIG_SCHED_THREAD_USAGE_ANALYSIS is selected.
  --	 * @{
  --	  

  --*< \# of cycles in current usage window  
  --*< \# of cycles in longest usage window  
  --*< \# of usage windows  
  --* @}  
  --*< true if gathering usage stats  
end zephyr_kernel_stats_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
