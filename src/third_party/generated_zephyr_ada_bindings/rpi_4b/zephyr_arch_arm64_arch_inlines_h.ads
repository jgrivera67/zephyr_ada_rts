pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with zephyr_kernel_structs_h;
with sys_ustdint_h;

package zephyr_arch_arm64_arch_inlines_h is

  -- * Copyright 2020 NXP
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  -- Note: keep in sync with `get_cpu` in arch/arm64/core/macro_priv.inc  
   function arch_curr_cpu return access zephyr_kernel_structs_h.u_cpu  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/arch_inlines.h:18
   with Import => True, 
        Convention => C, 
        External_Name => "arch_curr_cpu";

   function arch_exception_depth return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/arch_inlines.h:23
   with Import => True, 
        Convention => C, 
        External_Name => "arch_exception_depth";

   function arch_proc_id return sys_ustdint_h.uint32_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/arch_inlines.h:28
   with Import => True, 
        Convention => C, 
        External_Name => "arch_proc_id";

   function arch_num_cpus return unsigned  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/arch_inlines.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "arch_num_cpus";

end zephyr_arch_arm64_arch_inlines_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
