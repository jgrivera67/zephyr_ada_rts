pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with zephyr_kernel_structs_h;
with sys_ustdint_h;

package zephyr_arch_arm_arch_inlines_h is

  -- * Copyright 2022 IoT.bzh
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

   function arch_curr_cpu return access zephyr_kernel_structs_h.u_cpu  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/arch_inlines.h:22
   with Import => True, 
        Convention => C, 
        External_Name => "arch_curr_cpu";

  -- Dummy implementation always return the first cpu  
   function arch_proc_id return sys_ustdint_h.uint32_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/arch_inlines.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "arch_proc_id";

  --	 * Placeholder implementation to be replaced with an architecture
  --	 * specific call to get processor ID
  --	  

   function arch_num_cpus return unsigned  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/arch_inlines.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "arch_num_cpus";

end zephyr_arch_arm_arch_inlines_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
