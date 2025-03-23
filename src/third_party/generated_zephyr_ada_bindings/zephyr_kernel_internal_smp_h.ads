pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package zephyr_kernel_internal_smp_h is

  -- * Copyright (c) 2023 Intel Corporation
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

   procedure z_sched_ipi  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/internal/smp.h:9
   with Import => True, 
        Convention => C, 
        External_Name => "z_sched_ipi";

end zephyr_kernel_internal_smp_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
