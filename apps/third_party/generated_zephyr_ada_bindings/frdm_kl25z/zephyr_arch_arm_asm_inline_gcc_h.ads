pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;

package zephyr_arch_arm_asm_inline_gcc_h is

  -- ARM AArch32 GCC specific public inline assembler functions and macros  
  -- * Copyright (c) 2015, Wind River Systems, Inc.
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  -- Either public functions or macros or invoked by public functions  
  -- * The file must not be included directly
  -- * Include arch/cpu.h instead
  --  

  -- On ARMv7-M and ARMv8-M Mainline CPUs, this function prevents regular
  -- * exceptions (i.e. with interrupt priority lower than or equal to
  -- * _EXC_IRQ_DEFAULT_PRIO) from interrupting the CPU. NMI, Faults, SVC,
  -- * and Zero Latency IRQs (if supported) may still interrupt the CPU.
  -- *
  -- * On ARMv6-M and ARMv8-M Baseline CPUs, this function reads the value of
  -- * PRIMASK which shows if interrupts are enabled, then disables all interrupts
  -- * except NMI.
  --  

   function arch_irq_lock return unsigned  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/asm_inline_gcc.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "arch_irq_lock";

  -- On Cortex-M0/M0+, this enables all interrupts if they were not
  -- * previously disabled.
  --  

   procedure arch_irq_unlock (key : unsigned)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/asm_inline_gcc.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "arch_irq_unlock";

   function arch_irq_unlocked (key : unsigned) return Extensions.bool  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/asm_inline_gcc.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "arch_irq_unlocked";

  -- This convention works for both PRIMASK and BASEPRI  
  --	 * The cpsid instruction is self synchronizing within the instruction stream, no need for
  --	 * an explicit __ISB().
  --	  

end zephyr_arch_arm_asm_inline_gcc_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
