pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;

package zephyr_arch_arm_thread_h is
   pragma Preelaborate;

  -- * Copyright (c) 2017 Intel Corporation
  -- * Copyright 2025 Arm Limited and/or its affiliates <open-source-office@arm.com>
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
  --  *
  -- * necessary to instantiate instances of struct k_thread.
  --  

  -- r4  
   type u_callee_saved is record
      v1 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/thread.h:27
      v2 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/thread.h:28
      v3 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/thread.h:29
      v4 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/thread.h:30
      v5 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/thread.h:31
      v6 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/thread.h:32
      v7 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/thread.h:33
      v8 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/thread.h:34
      psp : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/thread.h:35
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/thread.h:26

  -- r5  
  -- r6  
  -- r7  
  -- r8  
  -- r9  
  -- r10  
  -- r11  
  -- r13  
  -- lr  
   subtype u_callee_saved_t is u_callee_saved;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/thread.h:41

  -- interrupt locking key  
   type u_thread_arch is record
      basepri : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/thread.h:76
      swap_return_value : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/thread.h:79
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/thread.h:73

  -- r0 in stack frame cannot be written to reliably  
  --	 * No cooperative floating point register set structure exists for
  --	 * the Cortex-M as it automatically saves the necessary registers
  --	 * in its exception stack frame.
  --	  

  --	 * Status variable holding several thread status flags
  --	 * as follows:
  --	 *
  --	 * byte 0
  --	 * +-bits 4-7-----bit-3----------bit-2--------bit-1---+----bit-0------+
  --	 * :          |             |              |          |               |
  --	 * : reserved |<Guard FLOAT>|   reserved   | reserved |  <priv mode>  |
  --	 * :   bits   |             |              |          | CONTROL.nPRIV |
  --	 * +------------------------------------------------------------------+
  --	 *
  --	 * byte 1
  --	 * +----------------------------bits 8-15-----------------------------+
  --	 * :              Least significant byte of EXC_RETURN                |
  --	 * : bit 15| bit 14| bit 13 | bit 12| bit 11 | bit 10 | bit 9 | bit 8 |
  --	 * :  Res  |   S   |  DCRS  | FType |  Mode  | SPSel  |  Res  |  ES   |
  --	 * +------------------------------------------------------------------+
  --	 *
  --	 * Bit 0: thread's current privileged mode (Supervisor or User mode)
  --	 *        Mirrors CONTROL.nPRIV flag.
  --	 * Bit 2: Deprecated in favor of FType. Note: FType = !CONTROL.FPCA.
  --	 *        indicating whether the thread has an active FP context.
  --	 *        Mirrors CONTROL.FPCA flag.
  --	 * Bit 3: indicating whether the thread is applying the long (FLOAT)
  --	 *        or the default MPU stack guard size.
  --	 *
  --	 * Bits 8-15: Least significant octet of the EXC_RETURN value when a
  --	 *            thread is switched-out. The value is copied from LR when
  --	 *            entering the PendSV handler. When the thread is
  --	 *            switched in again, the value is restored to LR before
  --	 *            exiting the PendSV handler.
  --	  

   subtype u_thread_arch_t is u_thread_arch;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/thread.h:156

end zephyr_arch_arm_thread_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
