pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;

package zephyr_arch_arm_irq_h is

   --  arg-macro: procedure arch_irq_enable (irq)
   --    arm_irq_enable(irq)
   --  arg-macro: procedure arch_irq_disable (irq)
   --    arm_irq_disable(irq)
   --  arg-macro: procedure arch_irq_is_enabled (irq)
   --    arm_irq_is_enabled(irq)
   --  arg-macro: procedure z_arm_irq_priority_set (irq, prio, flags)
   --    arm_irq_priority_set(irq, prio, flags)
   --  unsupported macro: IRQ_ZERO_LATENCY BIT(0)
   ZERO_LATENCY_LEVELS : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/irq.h:96
   --  arg-macro: procedure ARCH_IRQ_CONNECT (irq_p, priority_p, isr_p, isr_param_p, flags_p)
   --    { BUILD_ASSERT(not(flags_p and IRQ_ZERO_LATENCY), "ZLI interrupts must be registered using IRQ_DIRECT_CONNECT()"); _CHECK_PRIO(priority_p, flags_p) Z_ISR_DECLARE(irq_p, 0, isr_p, isr_param_p); z_arm_irq_priority_set(irq_p, priority_p, flags_p); }
   --  arg-macro: procedure ARCH_IRQ_DIRECT_CONNECT (irq_p, priority_p, isr_p, flags_p)
   --    { BUILD_ASSERT(IS_ENABLED(CONFIG_ZERO_LATENCY_IRQS)  or else  not(flags_p and IRQ_ZERO_LATENCY), "ZLI interrupt registered but feature is disabled"); _CHECK_PRIO(priority_p, flags_p) Z_ISR_DECLARE_DIRECT(irq_p, ISR_FLAG_DIRECT, isr_p); z_arm_irq_priority_set(irq_p, priority_p, flags_p); }
   --  arg-macro: procedure ARCH_ISR_DIRECT_PM ()
   --    do { } while (false)
   --  arg-macro: procedure ARCH_ISR_DIRECT_HEADER ()
   --    arch_isr_direct_header()
   --  arg-macro: procedure ARCH_ISR_DIRECT_FOOTER (swap)
   --    arch_isr_direct_footer(swap)
   --  unsupported macro: ARCH_ISR_DIAG_OFF TOOLCHAIN_DISABLE_CLANG_WARNING(TOOLCHAIN_WARNING_EXTRA) TOOLCHAIN_DISABLE_GCC_WARNING(TOOLCHAIN_WARNING_ATTRIBUTES) TOOLCHAIN_DISABLE_IAR_WARNING(TOOLCHAIN_WARNING_ATTRIBUTES)
   --  unsupported macro: ARCH_ISR_DIAG_ON TOOLCHAIN_ENABLE_CLANG_WARNING(TOOLCHAIN_WARNING_EXTRA) TOOLCHAIN_ENABLE_GCC_WARNING(TOOLCHAIN_WARNING_ATTRIBUTES) TOOLCHAIN_ENABLE_IAR_WARNING(TOOLCHAIN_WARNING_ATTRIBUTES)
   --  unsupported macro: ARCH_ISR_DIRECT_DECLARE(name) static inline int name ##_body(void); ARCH_ISR_DIAG_OFF __attribute__ ((interrupt ("IRQ"))) void name(void) { int check_reschedule; ISR_DIRECT_HEADER(); check_reschedule = name ##_body(); ISR_DIRECT_FOOTER(check_reschedule); } ARCH_ISR_DIAG_ON static inline int name ##_body(void)

  -- * Copyright (c) 2013-2014 Wind River Systems, Inc.
  -- * Copyright (c) 2019 Nordic Semiconductor ASA.
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  --*
  -- * @file
  -- * @brief ARM AArch32 public interrupt handling
  -- *
  -- * ARM AArch32-specific kernel interrupt handling interface. Included by
  -- * arm/arch.h.
  --  

   procedure arm_irq_enable (irq : unsigned)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/irq.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "arm_irq_enable";

   procedure arm_irq_disable (irq : unsigned)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/irq.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "arm_irq_disable";

   function arm_irq_is_enabled (irq : unsigned) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/irq.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "arm_irq_is_enabled";

   procedure arm_irq_priority_set
     (irq : unsigned;
      prio : unsigned;
      flags : sys_ustdint_h.uint32_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/irq.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "arm_irq_priority_set";

  -- * When a custom interrupt controller or multi-level interrupts is specified,
  -- * map the architecture interrupt control functions to the SoC layer interrupt
  -- * control functions.
  --  

   procedure z_arm_interrupt_init  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/irq.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "z_arm_interrupt_init";

  -- Flags for use with IRQ_CONNECT()  
  --*
  -- * Set this interrupt up as a zero-latency IRQ. If CONFIG_ZERO_LATENCY_LEVELS
  -- * is 1 it has a fixed hardware priority level (discarding what was supplied
  -- * in the interrupt's priority argument). If CONFIG_ZERO_LATENCY_LEVELS is
  -- * greater 1 it has the priority level assigned by the argument.
  -- * The interrupt will run even if irq_lock() is active. Be careful!
  --  

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

  -- arch/arm/core/exc_exit.S  
   procedure z_arm_int_exit  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/irq.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "z_arm_int_exit";

   procedure arch_isr_direct_header  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/irq.h:155
   with Import => True, 
        Convention => C, 
        External_Name => "arch_isr_direct_header";

   procedure arch_isr_direct_footer (maybe_swap : int)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/irq.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "arch_isr_direct_footer";

  --*
  -- * @brief Macro to register an ISR Dispatcher (with or without re-scheduling
  -- * request) for dynamic direct interrupts.
  -- *
  -- * This macro registers the ISR dispatcher function for dynamic direct
  -- * interrupts for a particular IRQ line, allowing the use of dynamic
  -- * direct ISRs in the kernel for that interrupt source.
  -- * The dispatcher function is invoked when the hardware
  -- * interrupt occurs and then triggers the (software) Interrupt Service Routine
  -- * (ISR) that is registered dynamically (i.e. at run-time) into the software
  -- * ISR table stored in SRAM. The ISR must be connected with
  -- * irq_connect_dynamic() and enabled via irq_enable() before the dynamic direct
  -- * interrupt can be serviced. This ISR dispatcher must be configured by the
  -- * user to trigger thread re-secheduling upon return, using the @param resch
  -- * parameter.
  -- *
  -- * These ISRs are designed for performance-critical interrupt handling and do
  -- * not go through all of the common interrupt handling code.
  -- *
  -- * With respect to their declaration, dynamic 'direct' interrupts are regular
  -- * Zephyr interrupts; their signature must match void isr(void* parameter), as,
  -- * unlike regular direct interrupts, they are not placed directly into the
  -- * ROM hardware vector table but instead they are installed in the software
  -- * ISR table.
  -- *
  -- * The major differences with regular Zephyr interrupts are the following:
  -- * - Similar to direct interrupts, the call into the OS to exit power
  -- *   management idle state is optional. Normal interrupts always do this
  -- *   before the ISR is run, but with dynamic direct ones when and if it runs
  -- *   is controlled by the placement of
  -- *   a ISR_DIRECT_PM() macro, or omitted entirely.
  -- * - Similar to direct interrupts, scheduling decisions are optional. Unlike
  -- *   direct interrupts, the decisions must be made at build time.
  -- *   They are controlled by @param resch to this macro.
  -- *
  -- * @warning
  -- * Just like with regular direct ISRs, any ISRs that serve IRQs configured with
  -- * the IRQ_ZERO_LATENCY flag must not use the ISR_DIRECT_PM() macro and must
  -- * return 0 (i.e. resch must be no_reschedule).
  -- *
  -- * @param irq_p IRQ line number.
  -- * @param priority_p Interrupt priority.
  -- * @param flags_p Architecture-specific IRQ configuration flags.
  -- * @param resch Set flag to 'reschedule' to request thread
  -- *              re-scheduling upon ISR function. Set flag
  -- *              'no_reschedule' to skip thread re-scheduling
  -- *              Must be 'no_reschedule' for zero-latency interrupts
  -- *
  -- * Note: the function is an ARM Cortex-M only API.
  -- *
  -- * @return Interrupt vector assigned to this interrupt.
  --  

  -- Architecture-specific definition for the target security
  -- * state of an NVIC IRQ line.
  --  

end zephyr_arch_arm_irq_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
