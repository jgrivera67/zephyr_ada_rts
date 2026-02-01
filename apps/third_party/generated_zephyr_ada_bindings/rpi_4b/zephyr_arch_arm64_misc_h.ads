pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;

package zephyr_arch_arm64_misc_h is

  -- * Copyright (c) 2019 Carlo Caione <ccaione@baylibre.com>
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  --*
  -- * @file
  -- * @brief Cortex-A public kernel miscellaneous
  -- *
  -- * ARM64-specific kernel miscellaneous interface. Included by
  -- * arm64/arch.h.
  --  

   function sys_clock_cycle_get_32 return sys_ustdint_h.uint32_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/misc.h:23
   with Import => True, 
        Convention => C, 
        External_Name => "sys_clock_cycle_get_32";

   function arch_k_cycle_get_32 return sys_ustdint_h.uint32_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/misc.h:25
   with Import => True, 
        Convention => C, 
        External_Name => "arch_k_cycle_get_32";

   function sys_clock_cycle_get_64 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/misc.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "sys_clock_cycle_get_64";

   function arch_k_cycle_get_64 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/misc.h:32
   with Import => True, 
        Convention => C, 
        External_Name => "arch_k_cycle_get_64";

   procedure arch_nop  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/misc.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "arch_nop";

end zephyr_arch_arm64_misc_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
