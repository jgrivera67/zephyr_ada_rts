pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;
with Interfaces.C.Extensions;

package zephyr_arch_arm64_timer_h is

   --  unsupported macro: ARM_ARCH_TIMER_IRQ ARM_TIMER_VIRTUAL_IRQ
   --  unsupported macro: ARM_ARCH_TIMER_PRIO ARM_TIMER_VIRTUAL_PRIO
   --  unsupported macro: ARM_ARCH_TIMER_FLAGS ARM_TIMER_VIRTUAL_FLAGS
  -- * Copyright (c) 2019 Carlo Caione <ccaione@baylibre.com>
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

   procedure arm_arch_timer_init  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/timer.h:26
   with Import => True, 
        Convention => C, 
        External_Name => "arm_arch_timer_init";

   z_clock_hw_cycles_per_sec : aliased unsigned  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/timer.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "z_clock_hw_cycles_per_sec";

   procedure arm_arch_timer_set_compare (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/timer.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "arm_arch_timer_set_compare";

   procedure arm_arch_timer_enable (enable : unsigned_char)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/timer.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "arm_arch_timer_enable";

   procedure arm_arch_timer_set_irq_mask (mask : Extensions.bool)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/timer.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "arm_arch_timer_set_irq_mask";

   function arm_arch_timer_count return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/timer.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "arm_arch_timer_count";

end zephyr_arch_arm64_timer_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
