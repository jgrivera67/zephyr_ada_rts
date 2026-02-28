pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with zephyr_arch_arm_thread_h;
with sys_ustdint_h;

package zephyr_arch_arm_cortex_m_exception_h is

   --  arg-macro: function Z_EXC_PRIO (pri)
   --    return ((pri) << (8 - NUM_IRQ_PRIO_BITS)) and 16#ff#;
   --  unsupported macro: IRQ_PRIO_LOWEST (BIT(NUM_IRQ_PRIO_BITS) - (_IRQ_PRIO_OFFSET) - 1)
   --  arg-macro: procedure sys_define_gpr_with_alias (name1, name2)
   --    union { uint32_t name1, name2; }
  -- * Copyright (c) 2013-2014 Wind River Systems, Inc.
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  --*
  -- * @file
  -- * @brief ARM AArch32 Cortex-M public exception handling
  --  

  -- for assembler, only works with constants  
  -- * In architecture variants with non-programmable fault exceptions
  -- * (e.g. Cortex-M Baseline variants), hardware ensures processor faults
  -- * are given the highest interrupt priority level. SVCalls are assigned
  -- * the highest configurable priority level (level 0); note, however, that
  -- * this interrupt level may be shared with HW interrupts.
  -- *
  -- * In Cortex variants with programmable fault exception priorities we
  -- * assign the highest interrupt priority level (level 0) to processor faults
  -- * with configurable priority.
  -- * The highest priority level may be shared with either Zero-Latency IRQs (if
  -- * support for the feature is enabled) or with SVCall priority level.
  -- * Regular HW IRQs are always assigned priority levels lower than the priority
  -- * levels for SVCalls, Zero-Latency IRQs and processor faults.
  -- *
  -- * PendSV IRQ (which is used in Cortex-M variants to implement thread
  -- * context-switching) is assigned the lowest IRQ priority level.
  --  

  -- Use lowest possible priority level for PendSV  
  -- Registers s16-s31 (d8-d15, q4-q7) must be preserved across subroutine calls.
  -- *
  -- * Registers s0-s15 (d0-d7, q0-q3) do not have to be preserved (and can be used
  -- * for passing arguments or returning results in standard procedure-call variants).
  -- *
  -- * Registers d16-d31 (q8-q15), do not have to be preserved.
  --  

  -- s0~s15 (d0-d7)  
  -- d16~d31  
  -- Additional register state that is not stacked by hardware on exception
  -- * entry.
  -- *
  -- * These fields are ONLY valid in the ESF copy passed into z_arm_fatal_error().
  -- * When information for a member is unavailable, the field is set to zero.
  --  

   type uu_extra_esf_info is record
      callee : access zephyr_arch_arm_thread_h.u_callee_saved;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/cortex_m/exception.h:95
      msp : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/cortex_m/exception.h:96
      exc_return : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/cortex_m/exception.h:97
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/cortex_m/exception.h:94

  -- ARM GPRs are often designated by two different names  
   type anon_union1646 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            a1 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/cortex_m/exception.h:109
         when others =>
            r0 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/cortex_m/exception.h:109
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type anon_union1647 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            a2 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/cortex_m/exception.h:110
         when others =>
            r1 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/cortex_m/exception.h:110
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type anon_union1648 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            a3 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/cortex_m/exception.h:111
         when others =>
            r2 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/cortex_m/exception.h:111
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type anon_union1649 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            a4 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/cortex_m/exception.h:112
         when others =>
            r3 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/cortex_m/exception.h:112
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type anon_union1650 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            ip : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/cortex_m/exception.h:113
         when others =>
            r12 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/cortex_m/exception.h:113
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type anon_union1651 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            lr : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/cortex_m/exception.h:114
         when others =>
            r14 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/cortex_m/exception.h:114
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type anon_union1652 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            pc : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/cortex_m/exception.h:115
         when others =>
            r15 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/cortex_m/exception.h:115
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type uu_basic_sf is record
      anon6067 : aliased anon_union1646;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/cortex_m/exception.h:109
      anon6071 : aliased anon_union1647;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/cortex_m/exception.h:110
      anon6075 : aliased anon_union1648;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/cortex_m/exception.h:111
      anon6079 : aliased anon_union1649;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/cortex_m/exception.h:112
      anon6083 : aliased anon_union1650;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/cortex_m/exception.h:113
      anon6087 : aliased anon_union1651;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/cortex_m/exception.h:114
      anon6091 : aliased anon_union1652;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/cortex_m/exception.h:115
      xpsr : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/cortex_m/exception.h:116
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/cortex_m/exception.h:108

   type arch_esf is record
      basic : aliased uu_basic_sf;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/cortex_m/exception.h:117
      extra_info : aliased uu_extra_esf_info;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/cortex_m/exception.h:122
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/cortex_m/exception.h:107

   z_arm_coredump_fault_sp : aliased sys_ustdint_h.uint32_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/cortex_m/exception.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "z_arm_coredump_fault_sp";

   procedure z_arm_exc_exit  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/cortex_m/exception.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "z_arm_exc_exit";

end zephyr_arch_arm_cortex_m_exception_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
