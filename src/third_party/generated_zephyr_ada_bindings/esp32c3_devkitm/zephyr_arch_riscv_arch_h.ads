pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;
with System;
with Interfaces.C.Extensions;

package zephyr_arch_riscv_arch_h is

   ARCH_STACK_PTR_ALIGN : constant := 16;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/arch.h:36
   --  unsupported macro: Z_RISCV_STACK_PMP_ALIGN MAX(CONFIG_PMP_GRANULARITY, ARCH_STACK_PTR_ALIGN)

   Z_RISCV_STACK_GUARD_SIZE : constant := 0;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/arch.h:78
   --  unsupported macro: ARCH_THREAD_STACK_RESERVED ROUND_UP(Z_RISCV_STACK_GUARD_SIZE + CONFIG_PRIVILEGED_STACK_SIZE, Z_RISCV_STACK_PMP_ALIGN)
   --  arg-macro: procedure ARCH_THREAD_STACK_SIZE_ADJUST (size)
   --    ROUND_UP(size, Z_RISCV_STACK_PMP_ALIGN)
   --  arg-macro: procedure ARCH_THREAD_STACK_OBJ_ALIGN (size)
   --    Z_RISCV_STACK_PMP_ALIGN

   RV_REGSIZE : constant := 4;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/arch.h:154
   RV_REGSHIFT : constant := 2;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/arch.h:155

   MSTATUS_IEN : constant := (2 ** 3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/arch.h:162
   --  unsupported macro: MSTATUS_MPP_M (3UL << 11)

   MSTATUS_MPIE_EN : constant := (2 ** 7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/arch.h:164
   --  unsupported macro: MSTATUS_FS_OFF (0UL << 13)

   MSTATUS_FS_INIT : constant := (2 ** 13);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/arch.h:167
   --  unsupported macro: MSTATUS_FS_CLEAN (2UL << 13)
   --  unsupported macro: MSTATUS_FS_DIRTY (3UL << 13)
   --  unsupported macro: MSTATUS_DEF_RESTORE (MSTATUS_MPP_M | MSTATUS_MPIE_EN)
   --  unsupported macro: K_MEM_PARTITION_P_RW_U_RW ((k_mem_partition_attr_t) {PMP_R | PMP_W})
   --  unsupported macro: K_MEM_PARTITION_P_RW_U_RO ((k_mem_partition_attr_t) {PMP_R})
   --  unsupported macro: K_MEM_PARTITION_P_RW_U_NA ((k_mem_partition_attr_t) {0})
   --  unsupported macro: K_MEM_PARTITION_P_RO_U_RO ((k_mem_partition_attr_t) {PMP_R})
   --  unsupported macro: K_MEM_PARTITION_P_RO_U_NA ((k_mem_partition_attr_t) {0})
   --  unsupported macro: K_MEM_PARTITION_P_NA_U_NA ((k_mem_partition_attr_t) {0})
   --  unsupported macro: K_MEM_PARTITION_P_RWX_U_RWX ((k_mem_partition_attr_t) {PMP_R | PMP_W | PMP_X})
   --  unsupported macro: K_MEM_PARTITION_P_RX_U_RX ((k_mem_partition_attr_t) {PMP_R | PMP_X})

  -- * Copyright (c) 2016 Jean-Paul Etienne <fractalclone@gmail.com>
  -- * Contributors: 2018 Antmicro <www.antmicro.com>
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  --*
  -- * @file
  -- * @brief RISCV specific kernel interface header
  -- *
  -- * This header contains the RISCV specific kernel interface.  It is
  -- * included by the kernel interface architecture-abstraction header
  -- * (include/zephyr/arch/cpu.h).
  --  

  -- stacks, for RISCV architecture stack should be 16byte-aligned  
  -- * The StackGuard is an area at the bottom of the kernel-mode stack made to
  -- * fault when accessed. It is _not_ faulting when in exception mode as we rely
  -- * on that area to save the exception stack frame and to process said fault.
  -- * Therefore the guard area must be large enough to hold the esf, plus some
  -- * configurable stack wiggle room to execute the fault handling code off of,
  -- * as well as some guard size to cover possible sudden stack pointer
  -- * displacement before the fault.
  --  

  -- Kernel-only stacks have the following layout if a stack guard is enabled:
  -- *
  -- * +------------+ <- thread.stack_obj
  -- * | Guard      | } Z_RISCV_STACK_GUARD_SIZE
  -- * +------------+ <- thread.stack_info.start
  -- * | Kernel     |
  -- * | stack      |
  -- * |            |
  -- * +............|
  -- * | TLS        | } thread.stack_info.delta
  -- * +------------+ <- thread.stack_info.start + thread.stack_info.size
  --  

  -- The privilege elevation stack is located in another area of memory
  -- * generated at build time by gen_kobject_list.py
  -- *
  -- * +------------+ <- thread.arch.priv_stack_start
  -- * | Guard      | } Z_RISCV_STACK_GUARD_SIZE
  -- * +------------+
  -- * | Priv Stack | } CONFIG_PRIVILEGED_STACK_SIZE
  -- * +------------+ <- thread.arch.priv_stack_start +
  -- *                   CONFIG_PRIVILEGED_STACK_SIZE +
  -- *                   Z_RISCV_STACK_GUARD_SIZE
  -- *
  -- * The main stack will be initially (or potentially only) used by kernel
  -- * mode so we need to make room for a possible stack guard area when enabled:
  -- *
  -- * +------------+ <- thread.stack_obj
  -- * | Guard      | } Z_RISCV_STACK_GUARD_SIZE
  -- * +............| <- thread.stack_info.start
  -- * | Thread     |
  -- * | stack      |
  -- * |            |
  -- * +............|
  -- * | TLS        | } thread.stack_info.delta
  -- * +------------+ <- thread.stack_info.start + thread.stack_info.size
  -- *
  -- * When transitioning to user space, the guard area will be removed from
  -- * the main stack. Any thread running in user mode will have full access
  -- * to the region denoted by thread.stack_info. Make it PMP-NAPOT compatible.
  -- *
  -- * +------------+ <- thread.stack_obj = thread.stack_info.start
  -- * | Thread     |
  -- * | stack      |
  -- * |            |
  -- * +............|
  -- * | TLS        | } thread.stack_info.delta
  -- * +------------+ <- thread.stack_info.start + thread.stack_info.size
  --  

  -- The stack object will contain the PMP guard, the privilege stack, and then
  -- * the usermode stack buffer in that order:
  -- *
  -- * +------------+ <- thread.stack_obj
  -- * | Guard      | } Z_RISCV_STACK_GUARD_SIZE
  -- * +------------+
  -- * | Priv Stack | } CONFIG_PRIVILEGED_STACK_SIZE
  -- * +------------+ <- thread.stack_info.start
  -- * | Thread     |
  -- * | stack      |
  -- * |            |
  -- * +............|
  -- * | TLS        | } thread.stack_info.delta
  -- * +------------+ <- thread.stack_info.start + thread.stack_info.size
  --  

  -- Common mstatus bits. All supported cores today have the same
  -- * layouts.
  --  

  -- This comes from openisa_rv32m1, but doesn't seem to hurt on other
  -- * platforms:
  -- * - Preserve machine privileges in MPP. If you see any documentation
  -- *   telling you that MPP is read-only on this SoC, don't believe its
  -- *   lies.
  -- * - Enable interrupts when exiting from exception into a new thread
  -- *   by setting MPIE now, so it will be copied into IE on mret.
  --  

  -- Kernel macros for memory attribution
  -- * (access permissions and cache-ability).
  -- *
  -- * The macros are to be stored in k_mem_partition_attr_t
  -- * objects. The format of a k_mem_partition_attr_t object
  -- * is an uint8_t composed by configuration register flags
  -- * located in arch/riscv/include/core_pmp.h
  --  

  -- Read-Write access permission attributes  
  -- Execution-allowed attributes  
  -- Typedef for the k_mem_partition attribute  
   type k_mem_partition_attr_t is record
      pmp_attr : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/arch.h:223
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/arch.h:224

   type arch_mem_domain is record
      pmp_update_nr : aliased unsigned;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/arch.h:227
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/arch.h:226

   procedure z_irq_spurious (unused : System.Address)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/arch.h:230
   with Import => True, 
        Convention => C, 
        External_Name => "z_irq_spurious";

  -- * use atomic instruction csrrc to lock global irq
  -- * csrrc: atomic read and clear bits in CSR register
  --  

   function arch_irq_lock return unsigned  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/arch.h:236
   with Import => True, 
        Convention => C, 
        External_Name => "arch_irq_lock";

  -- * use atomic instruction csrs to unlock global irq
  -- * csrs: atomic set bits in CSR register
  --  

   procedure arch_irq_unlock (key : unsigned)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/arch.h:256
   with Import => True, 
        Convention => C, 
        External_Name => "arch_irq_unlock";

   function arch_irq_unlocked (key : unsigned) return Extensions.bool  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/arch.h:268
   with Import => True, 
        Convention => C, 
        External_Name => "arch_irq_unlocked";

   procedure arch_nop  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/arch.h:277
   with Import => True, 
        Convention => C, 
        External_Name => "arch_nop";

   function sys_clock_cycle_get_32 return sys_ustdint_h.uint32_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/arch.h:282
   with Import => True, 
        Convention => C, 
        External_Name => "sys_clock_cycle_get_32";

   function arch_k_cycle_get_32 return sys_ustdint_h.uint32_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/arch.h:284
   with Import => True, 
        Convention => C, 
        External_Name => "arch_k_cycle_get_32";

   function sys_clock_cycle_get_64 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/arch.h:289
   with Import => True, 
        Convention => C, 
        External_Name => "sys_clock_cycle_get_64";

   function arch_k_cycle_get_64 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/arch.h:291
   with Import => True, 
        Convention => C, 
        External_Name => "arch_k_cycle_get_64";

end zephyr_arch_riscv_arch_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
