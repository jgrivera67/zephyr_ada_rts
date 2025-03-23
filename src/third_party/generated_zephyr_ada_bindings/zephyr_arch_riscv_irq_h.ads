pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package zephyr_arch_riscv_irq_h is

   RISCV_EXC_ECALLU : constant := 8;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/irq.h:32

   RISCV_EXC_ECALLM : constant := 11;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/irq.h:34

   RISCV_IRQ_MSOFT : constant := 3;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/irq.h:39

   RISCV_IRQ_MEXT : constant := 11;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/irq.h:41

   RISCV_MCAUSE_IRQ_POS : constant := 31;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/irq.h:47
   --  unsupported macro: RISCV_MCAUSE_IRQ_BIT BIT(RISCV_MCAUSE_IRQ_POS)
   --  arg-macro: procedure ARCH_IRQ_CONNECT (irq_p, priority_p, isr_p, isr_param_p, flags_p)
   --    { Z_ISR_DECLARE(irq_p + CONFIG_RISCV_RESERVED_IRQ_ISR_TABLES_OFFSET, 0, isr_p, isr_param_p); z_riscv_irq_priority_set(irq_p, priority_p, flags_p); }
   --  arg-macro: procedure ARCH_IRQ_DIRECT_CONNECT (irq_p, priority_p, isr_p, flags_p)
   --    { Z_ISR_DECLARE_DIRECT(irq_p + CONFIG_RISCV_RESERVED_IRQ_ISR_TABLES_OFFSET, ISR_FLAG_DIRECT, isr_p); z_riscv_irq_priority_set(irq_p, priority_p, flags_p); z_riscv_irq_vector_set(irq_p); }
   --  arg-macro: procedure ARCH_ISR_DIRECT_HEADER ()
   --    arch_isr_direct_header()
   --  arg-macro: procedure ARCH_ISR_DIRECT_FOOTER (swap)
   --    arch_isr_direct_footer(swap)
   --  unsupported macro: ARCH_ISR_DIRECT_DECLARE(name) static inline int name ##_body(void); __attribute__ ((interrupt)) void name(void) { ISR_DIRECT_HEADER(); name ##_body(); ISR_DIRECT_FOOTER(0); } static inline int name ##_body(void)

  -- * Copyright (c) 2022 Carlo Caione <ccaione@baylibre.com>
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  --*
  -- * @file
  -- * @brief RISC-V public interrupt handling
  -- *
  -- * RISC-V-specific kernel interrupt handling interface.
  --  

  -- Exceptions 0-15 (MCAUSE interrupt=0)  
  -- Environment Call from U-mode  
  --* Environment Call from M-mode  
  -- IRQs 0-15 (MCAUSE interrupt=1)  
  --* Machine Software Interrupt  
  --* Machine External Interrupt  
   procedure arch_irq_enable (irq : unsigned)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/irq.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "arch_irq_enable";

   procedure arch_irq_disable (irq : unsigned)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/irq.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "arch_irq_disable";

   function arch_irq_is_enabled (irq : unsigned) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/irq.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "arch_irq_is_enabled";

   procedure arch_isr_direct_header  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/irq.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "arch_isr_direct_header";

  -- We need to increment this so that arch_is_in_isr() keeps working  
   --  skipped func __soc_handle_irq

   procedure arch_isr_direct_footer (swap : int)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/irq.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "arch_isr_direct_footer";

  -- Get the IRQ number  
  -- Clear the pending IRQ  
  -- We are not in the ISR anymore  
  -- * TODO: Add support for rescheduling
  --  

end zephyr_arch_riscv_irq_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
