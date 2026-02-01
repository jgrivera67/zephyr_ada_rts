pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package zephyr_arch_arm_arch_h is

   ARCH_STACK_PTR_ALIGN : constant := 8;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/arch.h:133
   --  unsupported macro: Z_THREAD_MIN_STACK_ALIGN ARCH_STACK_PTR_ALIGN

   MPU_GUARD_ALIGN_AND_SIZE : constant := 0;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/arch.h:210

   MPU_GUARD_ALIGN_AND_SIZE_FLOAT : constant := 0;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/arch.h:231
   --  unsupported macro: Z_MPU_GUARD_ALIGN MPU_GUARD_ALIGN_AND_SIZE
   --  arg-macro: procedure ARCH_THREAD_STACK_OBJ_ALIGN (size)
   --    MAX(Z_THREAD_MIN_STACK_ALIGN, Z_MPU_GUARD_ALIGN)

   ARCH_THREAD_STACK_RESERVED : constant := 0;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/arch.h:275

  -- * Copyright (c) 2013-2014 Wind River Systems, Inc.
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  --*
  -- * @file
  -- * @brief ARM AArch32 specific kernel interface header
  -- *
  -- * This header contains the ARM AArch32 specific kernel interface.  It is
  -- * included by the kernel interface architecture-abstraction header
  -- * (include/zephyr/arch/cpu.h).
  --  

  -- Add include for DTS generated information  
   subtype k_fatal_error_reason_arch is unsigned;
   k_fatal_error_reason_arch_K_ERR_ARM_MEM_GENERIC : constant k_fatal_error_reason_arch := 16;
   k_fatal_error_reason_arch_K_ERR_ARM_MEM_STACKING : constant k_fatal_error_reason_arch := 17;
   k_fatal_error_reason_arch_K_ERR_ARM_MEM_UNSTACKING : constant k_fatal_error_reason_arch := 18;
   k_fatal_error_reason_arch_K_ERR_ARM_MEM_DATA_ACCESS : constant k_fatal_error_reason_arch := 19;
   k_fatal_error_reason_arch_K_ERR_ARM_MEM_INSTRUCTION_ACCESS : constant k_fatal_error_reason_arch := 20;
   k_fatal_error_reason_arch_K_ERR_ARM_MEM_FP_LAZY_STATE_PRESERVATION : constant k_fatal_error_reason_arch := 21;
   k_fatal_error_reason_arch_K_ERR_ARM_BUS_GENERIC : constant k_fatal_error_reason_arch := 22;
   k_fatal_error_reason_arch_K_ERR_ARM_BUS_STACKING : constant k_fatal_error_reason_arch := 23;
   k_fatal_error_reason_arch_K_ERR_ARM_BUS_UNSTACKING : constant k_fatal_error_reason_arch := 24;
   k_fatal_error_reason_arch_K_ERR_ARM_BUS_PRECISE_DATA_BUS : constant k_fatal_error_reason_arch := 25;
   k_fatal_error_reason_arch_K_ERR_ARM_BUS_IMPRECISE_DATA_BUS : constant k_fatal_error_reason_arch := 26;
   k_fatal_error_reason_arch_K_ERR_ARM_BUS_INSTRUCTION_BUS : constant k_fatal_error_reason_arch := 27;
   k_fatal_error_reason_arch_K_ERR_ARM_BUS_FP_LAZY_STATE_PRESERVATION : constant k_fatal_error_reason_arch := 28;
   k_fatal_error_reason_arch_K_ERR_ARM_USAGE_GENERIC : constant k_fatal_error_reason_arch := 29;
   k_fatal_error_reason_arch_K_ERR_ARM_USAGE_DIV_0 : constant k_fatal_error_reason_arch := 30;
   k_fatal_error_reason_arch_K_ERR_ARM_USAGE_UNALIGNED_ACCESS : constant k_fatal_error_reason_arch := 31;
   k_fatal_error_reason_arch_K_ERR_ARM_USAGE_STACK_OVERFLOW : constant k_fatal_error_reason_arch := 32;
   k_fatal_error_reason_arch_K_ERR_ARM_USAGE_NO_COPROCESSOR : constant k_fatal_error_reason_arch := 33;
   k_fatal_error_reason_arch_K_ERR_ARM_USAGE_ILLEGAL_EXC_RETURN : constant k_fatal_error_reason_arch := 34;
   k_fatal_error_reason_arch_K_ERR_ARM_USAGE_ILLEGAL_EPSR : constant k_fatal_error_reason_arch := 35;
   k_fatal_error_reason_arch_K_ERR_ARM_USAGE_UNDEFINED_INSTRUCTION : constant k_fatal_error_reason_arch := 36;
   k_fatal_error_reason_arch_K_ERR_ARM_SECURE_GENERIC : constant k_fatal_error_reason_arch := 37;
   k_fatal_error_reason_arch_K_ERR_ARM_SECURE_ENTRY_POINT : constant k_fatal_error_reason_arch := 38;
   k_fatal_error_reason_arch_K_ERR_ARM_SECURE_INTEGRITY_SIGNATURE : constant k_fatal_error_reason_arch := 39;
   k_fatal_error_reason_arch_K_ERR_ARM_SECURE_EXCEPTION_RETURN : constant k_fatal_error_reason_arch := 40;
   k_fatal_error_reason_arch_K_ERR_ARM_SECURE_ATTRIBUTION_UNIT : constant k_fatal_error_reason_arch := 41;
   k_fatal_error_reason_arch_K_ERR_ARM_SECURE_TRANSITION : constant k_fatal_error_reason_arch := 42;
   k_fatal_error_reason_arch_K_ERR_ARM_SECURE_LAZY_STATE_PRESERVATION : constant k_fatal_error_reason_arch := 43;
   k_fatal_error_reason_arch_K_ERR_ARM_SECURE_LAZY_STATE_ERROR : constant k_fatal_error_reason_arch := 44;
   k_fatal_error_reason_arch_K_ERR_ARM_UNDEFINED_INSTRUCTION : constant k_fatal_error_reason_arch := 45;
   k_fatal_error_reason_arch_K_ERR_ARM_ALIGNMENT_FAULT : constant k_fatal_error_reason_arch := 46;
   k_fatal_error_reason_arch_K_ERR_ARM_BACKGROUND_FAULT : constant k_fatal_error_reason_arch := 47;
   k_fatal_error_reason_arch_K_ERR_ARM_PERMISSION_FAULT : constant k_fatal_error_reason_arch := 48;
   k_fatal_error_reason_arch_K_ERR_ARM_PERMISSION_FAULT_2ND_LEVEL : constant k_fatal_error_reason_arch := 49;
   k_fatal_error_reason_arch_K_ERR_ARM_SYNC_EXTERNAL_ABORT : constant k_fatal_error_reason_arch := 50;
   k_fatal_error_reason_arch_K_ERR_ARM_ASYNC_EXTERNAL_ABORT : constant k_fatal_error_reason_arch := 51;
   k_fatal_error_reason_arch_K_ERR_ARM_SYNC_PARITY_ERROR : constant k_fatal_error_reason_arch := 52;
   k_fatal_error_reason_arch_K_ERR_ARM_ASYNC_PARITY_ERROR : constant k_fatal_error_reason_arch := 53;
   k_fatal_error_reason_arch_K_ERR_ARM_DEBUG_EVENT : constant k_fatal_error_reason_arch := 54;
   k_fatal_error_reason_arch_K_ERR_ARM_TRANSLATION_FAULT : constant k_fatal_error_reason_arch := 55;
   k_fatal_error_reason_arch_K_ERR_ARM_TRANSLATION_FAULT_2ND_LEVEL : constant k_fatal_error_reason_arch := 56;
   k_fatal_error_reason_arch_K_ERR_ARM_UNSUPPORTED_EXCLUSIVE_ACCESS_FAULT : constant k_fatal_error_reason_arch := 57;
   k_fatal_error_reason_arch_K_ERR_ARM_ACCESS_FLAG_FAULT_1ST_LEVEL : constant k_fatal_error_reason_arch := 58;
   k_fatal_error_reason_arch_K_ERR_ARM_ACCESS_FLAG_FAULT_2ND_LEVEL : constant k_fatal_error_reason_arch := 59;
   k_fatal_error_reason_arch_K_ERR_ARM_CACHE_MAINTENANCE_INSTRUCTION_FAULT : constant k_fatal_error_reason_arch := 60;
   k_fatal_error_reason_arch_K_ERR_ARM_DOMAIN_FAULT_1ST_LEVEL : constant k_fatal_error_reason_arch := 61;
   k_fatal_error_reason_arch_K_ERR_ARM_DOMAIN_FAULT_2ND_LEVEL : constant k_fatal_error_reason_arch := 62;
   k_fatal_error_reason_arch_K_ERR_ARM_SYNC_EXTERNAL_ABORT_TRANSLATION_TABLE_1ST_LEVEL : constant k_fatal_error_reason_arch := 63;
   k_fatal_error_reason_arch_K_ERR_ARM_SYNC_EXTERNAL_ABORT_TRANSLATION_TABLE_2ND_LEVEL : constant k_fatal_error_reason_arch := 64;
   k_fatal_error_reason_arch_K_ERR_ARM_TLB_CONFLICT_ABORT : constant k_fatal_error_reason_arch := 65;
   k_fatal_error_reason_arch_K_ERR_ARM_SYNC_PARITY_ERROR_TRANSLATION_TABLE_1ST_LEVEL : constant k_fatal_error_reason_arch := 66;
   k_fatal_error_reason_arch_K_ERR_ARM_SYNC_PARITY_ERROR_TRANSLATION_TABLE_2ND_LEVEL : constant k_fatal_error_reason_arch := 67;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/arch.h:59

  -- Cortex-M MEMFAULT exceptions  
  -- Cortex-M BUSFAULT exceptions  
  -- Cortex-M USAGEFAULT exceptions  
  -- Cortex-M SECURE exceptions  
  -- Cortex-A/R exceptions 
  --*
  -- * @brief Declare the ARCH_STACK_PTR_ALIGN
  -- *
  -- * Denotes the required alignment of the stack pointer on public API
  -- * boundaries
  -- *
  --  

  --*
  -- * @brief Declare the minimum alignment for a thread stack
  -- *
  -- * Denotes the minimum required alignment of a thread stack.
  -- *
  -- * Note:
  -- * User thread stacks must respect the minimum MPU region
  -- * alignment requirement.
  --  

  --*
  -- * @brief Declare a minimum MPU guard alignment and size
  -- *
  -- * This specifies the minimum MPU guard alignment/size for the MPU. This
  -- * will be used to denote the guard section of the stack, if it exists.
  -- *
  -- * One key note is that this guard results in extra bytes being added to
  -- * the stack. APIs which give the stack ptr and stack size will take this
  -- * guard size into account.
  -- *
  -- * Stack is allocated, but initial stack pointer is at the end
  -- * (highest address).  Stack grows down to the actual allocation
  -- * address (lowest address).  Stack guard, if present, will comprise
  -- * the lowest MPU_GUARD_ALIGN_AND_SIZE bytes of the stack.
  -- *
  -- * The guard region must include enough space for an exception frame
  -- * below the trapping region as a stack fault will end up storing
  -- * the exception data (0x20 bytes) onto the stack below wherever
  -- * the stack pointer refers, even if that is within the guard region,
  -- * so we make sure the region is strictly larger than this size by
  -- * setting it to 0x40 (to respect any power-of-two requirements).
  -- *
  -- * As the stack grows down, it will reach the end of the stack when it
  -- * encounters either the stack guard region, or the stack allocation
  -- * address.
  -- *
  -- * ----------------------- <---- Stack allocation address + stack size +
  -- * |                     |            MPU_GUARD_ALIGN_AND_SIZE
  -- * |  Some thread data   | <---- Defined when thread is created
  -- * |        ...          |
  -- * |---------------------| <---- Actual initial stack ptr
  -- * |  Initial Stack Ptr  |       aligned to ARCH_STACK_PTR_ALIGN
  -- * |        ...          |
  -- * |        ...          |
  -- * |        ...          |
  -- * |        ...          |
  -- * |        ...          |
  -- * |        ...          |
  -- * |        ...          |
  -- * |        ...          |
  -- * |  Stack Ends         |
  -- * |---------------------- <---- Stack Buffer Ptr from API
  -- * |  MPU Guard,         |
  -- * |     if present      |
  -- * ----------------------- <---- Stack Allocation address
  -- *
  --  

  -- make sure there's more than enough space for an exception frame  
  --*
  -- * @brief Declare the MPU guard alignment and size for a thread stack
  -- *        that is using the Floating Point services.
  -- *
  -- * For threads that are using the Floating Point services under Shared
  -- * Registers (CONFIG_FPU_SHARING=y) mode, the exception stack frame may
  -- * contain both the basic stack frame and the FP caller-saved context,
  -- * upon exception entry. Therefore, a wide guard region is required to
  -- * guarantee that stack-overflow detection will always be successful.
  --  

  --*
  -- * @brief Define alignment of an MPU guard
  -- *
  -- * Minimum alignment of the start address of an MPU guard, depending on
  -- * whether the MPU architecture enforces a size (and power-of-two) alignment
  -- * requirement.
  --  

  -- This MPU requires regions to be sized to a power of two, and aligned to
  -- * their own size. Since an MPU region must be able to cover the entire
  -- * user-accessible stack buffer, we size/align to match. The privilege
  -- * mode stack is generated elsewhere in memory.
  --  

  -- Kernel-only stacks need an MPU guard region programmed at the beginning of
  -- * the stack object, so align the object appropriately.
  --  

  -- On arm, all MPU guards are carve-outs.  
  -- Legacy case: retain containing extern "C" with C++  
end zephyr_arch_arm_arch_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
