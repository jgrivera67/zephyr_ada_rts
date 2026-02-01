pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;

package zephyr_arch_arm_misc_h is

  -- * Copyright (c) 2013-2014 Wind River Systems, Inc.
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  --*
  -- * @file
  -- * @brief ARM AArch32 public kernel miscellaneous
  -- *
  -- * ARM AArch32-specific kernel miscellaneous interface. Included by arm/arch.h.
  --  

   function sys_clock_cycle_get_32 return sys_ustdint_h.uint32_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/misc.h:22
   with Import => True, 
        Convention => C, 
        External_Name => "sys_clock_cycle_get_32";

   function arch_k_cycle_get_32 return sys_ustdint_h.uint32_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/misc.h:24
   with Import => True, 
        Convention => C, 
        External_Name => "arch_k_cycle_get_32";

   function sys_clock_cycle_get_64 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/misc.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "sys_clock_cycle_get_64";

   function arch_k_cycle_get_64 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/misc.h:31
   with Import => True, 
        Convention => C, 
        External_Name => "arch_k_cycle_get_64";

   procedure arch_nop  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/misc.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "arch_nop";

  -- Prototype of a hook that can be enabled to be called every time the CPU is
  -- * made idle (the calls will be done from k_cpu_idle() and k_cpu_atomic_idle()).
  -- * If this hook returns false, the CPU is prevented from entering the actual
  -- * sleep (the WFE/WFI instruction is skipped).
  --  

  -- Prototype of a hook that can be enabled to be called every time the CPU is
  -- * made idle (the calls will be done from k_cpu_idle() and k_cpu_atomic_idle()).
  -- * The function is called before interrupts are disabled and can prepare to
  -- * upcoming call to z_arm_on_enter_cpu_idle.
  --  

end zephyr_arch_arm_misc_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
