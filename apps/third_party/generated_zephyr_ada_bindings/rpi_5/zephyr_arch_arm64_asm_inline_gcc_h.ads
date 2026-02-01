pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;

package zephyr_arch_arm64_asm_inline_gcc_h is

  -- * Copyright (c) 2019 Carlo Caione <ccaione@baylibre.com>
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  -- Either public functions or macros or invoked by public functions  
  -- * The file must not be included directly
  -- * Include arch/cpu.h instead
  --  

   function arch_irq_lock return unsigned  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/asm_inline_gcc.h:26
   with Import => True, 
        Convention => C, 
        External_Name => "arch_irq_lock";

  --	 * Return the whole DAIF register as key but use DAIFSET to disable
  --	 * IRQs.
  --	  

   procedure arch_irq_unlock (key : unsigned)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/asm_inline_gcc.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "arch_irq_unlock";

   function arch_irq_unlocked (key : unsigned) return Extensions.bool  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/asm_inline_gcc.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "arch_irq_unlocked";

  -- We only check the (I)RQ bit on the DAIF register  
end zephyr_arch_arm64_asm_inline_gcc_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
