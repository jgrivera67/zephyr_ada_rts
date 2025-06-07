pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package zephyr_arch_arm64_barrier_h is

  --*
  -- * Copyright (c) 2023 Carlo Caione <ccaione@baylibre.com>
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

   procedure z_barrier_dmem_fence_full  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/barrier.h:19
   with Import => True, 
        Convention => C, 
        External_Name => "z_barrier_dmem_fence_full";

   procedure z_barrier_dsync_fence_full  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/barrier.h:24
   with Import => True, 
        Convention => C, 
        External_Name => "z_barrier_dsync_fence_full";

   procedure z_barrier_isync_fence_full  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/barrier.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "z_barrier_isync_fence_full";

end zephyr_arch_arm64_barrier_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
