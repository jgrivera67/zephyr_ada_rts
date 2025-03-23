pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;

package zephyr_arch_riscv_thread_h is

   --  unsupported macro: RV_FP_TYPE uint32_t
   PMP_M_MODE_SLOTS : constant := 8;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:66

  -- * Copyright (c) 2017 Intel Corporation
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  --*
  -- * @file
  -- * @brief Per-arch thread definition
  -- *
  -- * This file contains definitions for
  -- *
  -- *  struct _thread_arch
  -- *  struct _callee_saved
  -- *
  -- * necessary to instantiate instances of struct k_thread.
  --  

  -- * The following structure defines the list of registers that need to be
  -- * saved/restored when a context switch occurs.
  --  

  -- Stack pointer, (x2 register)  
   type u_callee_saved is record
      sp : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:30
      ra : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:31
      s0 : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:33
      s1 : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:34
      s2 : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:36
      s3 : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:37
      s4 : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:38
      s5 : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:39
      s6 : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:40
      s7 : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:41
      s8 : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:42
      s9 : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:43
      s10 : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:44
      s11 : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:45
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:29

   type u_callee_saved_t is record
      sp : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:30
      ra : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:31
      s0 : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:33
      s1 : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:34
      s2 : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:36
      s3 : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:37
      s4 : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:38
      s5 : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:39
      s6 : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:40
      s7 : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:41
      s8 : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:42
      s9 : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:43
      s10 : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:44
      s11 : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:45
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/exception.h:51

  -- return address  
  -- saved register/frame pointer  
  -- saved register  
  -- saved register  
  -- saved register  
  -- saved register  
  -- saved register  
  -- saved register  
  -- saved register  
  -- saved register  
  -- saved register  
  -- saved register  
  -- saved register  
   type z_riscv_fp_context is record
      fa0 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:59
      fa1 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:59
      fa2 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:59
      fa3 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:59
      fa4 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:59
      fa5 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:59
      fa6 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:59
      fa7 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:59
      ft0 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:60
      ft1 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:60
      ft2 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:60
      ft3 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:60
      ft4 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:60
      ft5 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:60
      ft6 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:60
      ft7 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:60
      ft8 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:60
      ft9 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:60
      ft10 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:60
      ft11 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:60
      fs0 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:61
      fs1 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:61
      fs2 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:61
      fs3 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:61
      fs4 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:61
      fs5 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:61
      fs6 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:61
      fs7 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:61
      fs8 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:61
      fs9 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:61
      fs10 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:61
      fs11 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:61
      fcsr : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:62
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:58

   subtype z_riscv_fp_context_t is z_riscv_fp_context;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:64

   type u_thread_arch is record
      null;
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:68

   subtype u_thread_arch_t is u_thread_arch;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/thread.h:89

end zephyr_arch_riscv_thread_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
