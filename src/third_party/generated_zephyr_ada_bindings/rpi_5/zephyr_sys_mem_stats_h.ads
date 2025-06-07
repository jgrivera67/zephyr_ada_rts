pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with stddef_h;

package zephyr_sys_mem_stats_h is

  -- * Copyright (c) 2022 Intel Corporation
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  --*
  -- * @file
  -- *
  -- * @brief Memory Statistics
  --  

  -- A common structure used to report runtime memory usage statistics  
   type sys_memory_stats is record
      free_bytes : aliased stddef_h.size_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/mem_stats.h:25
      allocated_bytes : aliased stddef_h.size_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/mem_stats.h:26
      max_allocated_bytes : aliased stddef_h.size_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/mem_stats.h:27
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/mem_stats.h:24

end zephyr_sys_mem_stats_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
