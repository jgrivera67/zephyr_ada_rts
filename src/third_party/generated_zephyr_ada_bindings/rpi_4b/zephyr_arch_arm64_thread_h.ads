pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;
with Interfaces.C.Extensions;

package zephyr_arch_arm64_thread_h is

  -- * Copyright (c) 2019 Carlo Caione <ccaione@baylibre.com>
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

   type u_callee_saved is record
      x19 : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:27
      x20 : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:28
      x21 : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:29
      x22 : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:30
      x23 : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:31
      x24 : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:32
      x25 : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:33
      x26 : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:34
      x27 : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:35
      x28 : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:36
      x29 : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:37
      sp_el0 : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:38
      sp_elx : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:39
      lr : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:40
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:26

   subtype u_callee_saved_t is u_callee_saved;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:43

   type z_arm64_fp_context is record
      q0 : aliased Extensions.Signed_128;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:46
      q1 : aliased Extensions.Signed_128;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:46
      q2 : aliased Extensions.Signed_128;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:46
      q3 : aliased Extensions.Signed_128;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:46
      q4 : aliased Extensions.Signed_128;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:46
      q5 : aliased Extensions.Signed_128;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:46
      q6 : aliased Extensions.Signed_128;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:46
      q7 : aliased Extensions.Signed_128;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:46
      q8 : aliased Extensions.Signed_128;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:47
      q9 : aliased Extensions.Signed_128;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:47
      q10 : aliased Extensions.Signed_128;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:47
      q11 : aliased Extensions.Signed_128;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:47
      q12 : aliased Extensions.Signed_128;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:47
      q13 : aliased Extensions.Signed_128;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:47
      q14 : aliased Extensions.Signed_128;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:47
      q15 : aliased Extensions.Signed_128;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:47
      q16 : aliased Extensions.Signed_128;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:48
      q17 : aliased Extensions.Signed_128;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:48
      q18 : aliased Extensions.Signed_128;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:48
      q19 : aliased Extensions.Signed_128;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:48
      q20 : aliased Extensions.Signed_128;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:48
      q21 : aliased Extensions.Signed_128;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:48
      q22 : aliased Extensions.Signed_128;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:48
      q23 : aliased Extensions.Signed_128;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:48
      q24 : aliased Extensions.Signed_128;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:49
      q25 : aliased Extensions.Signed_128;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:49
      q26 : aliased Extensions.Signed_128;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:49
      q27 : aliased Extensions.Signed_128;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:49
      q28 : aliased Extensions.Signed_128;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:49
      q29 : aliased Extensions.Signed_128;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:49
      q30 : aliased Extensions.Signed_128;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:49
      q31 : aliased Extensions.Signed_128;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:49
      fpsr : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:50
      fpcr : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:50
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 16;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:45

   type u_thread_arch is record
      saved_fp_context : aliased z_arm64_fp_context;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:68
      exception_depth : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:70
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:53

   subtype u_thread_arch_t is u_thread_arch;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread.h:73

end zephyr_arch_arm64_thread_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
