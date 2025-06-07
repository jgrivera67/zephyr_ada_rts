pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;

package zephyr_arch_arm64_irq_h is

   --  arg-macro: procedure ARCH_IRQ_CONNECT (irq_p, priority_p, isr_p, isr_param_p, flags_p)
   --    { Z_ISR_DECLARE(irq_p, 0, isr_p, isr_param_p); z_arm64_irq_priority_set(irq_p, priority_p, flags_p); }
  -- * Copyright (c) 2019 Carlo Caione <ccaione@baylibre.com>
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  --*
  -- * @file
  -- * @brief Cortex-A public interrupt handling
  -- *
  -- * ARM64-specific kernel interrupt handling interface.
  -- * Included by arm64/arch.h.
  --  

   procedure arch_irq_enable (irq : unsigned)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/irq.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "arch_irq_enable";

   procedure arch_irq_disable (irq : unsigned)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/irq.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "arch_irq_disable";

   function arch_irq_is_enabled (irq : unsigned) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/irq.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "arch_irq_is_enabled";

  -- internal routine documented in C file, needed by IRQ_CONNECT() macro  
   procedure z_arm64_irq_priority_set
     (irq : unsigned;
      prio : unsigned;
      flags : sys_ustdint_h.uint32_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/irq.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "z_arm64_irq_priority_set";

  -- * When a custom interrupt controller is specified, map the architecture
  -- * interrupt control functions to the SoC layer interrupt control functions.
  --  

   procedure z_arm64_interrupt_init  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/irq.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "z_arm64_interrupt_init";

  -- All arguments must be computable by the compiler at build time.
  -- *
  -- * Z_ISR_DECLARE will populate the .intList section with the interrupt's
  -- * parameters, which will then be used by gen_irq_tables.py to create
  -- * the vector table and the software ISR table. This is all done at
  -- * build-time.
  -- *
  -- * We additionally set the priority in the interrupt controller at
  -- * runtime.
  --  

end zephyr_arch_arm64_irq_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
