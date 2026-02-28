pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with zephyr_arch_arm_cortex_m_exception_h;

package zephyr_fatal_h is

  -- * Copyright (c) 2019 Intel Corporation.
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  --* @file
  -- *  @brief Fatal error functions
  --  

  --*
  -- * @defgroup fatal_apis Fatal error APIs
  -- * @ingroup kernel_apis
  -- * @{
  --  

  --*
  -- * @brief Halt the system on a fatal error
  -- *
  -- * Invokes architecture-specific code to power off or halt the system in
  -- * a low power state. Lacking that, lock interrupts and sit in an idle loop.
  -- *
  -- * @param reason Fatal exception reason code
  --  

   procedure k_fatal_halt (reason : unsigned)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fatal.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "k_fatal_halt";

  --*
  -- * @brief Fatal error policy handler
  -- *
  -- * This function is not invoked by application code, but is declared as a
  -- * weak symbol so that applications may introduce their own policy.
  -- *
  -- * The default implementation of this function halts the system
  -- * unconditionally. Depending on architecture support, this may be
  -- * a simple infinite loop, power off the hardware, or exit an emulator.
  -- *
  -- * If this function returns, then the currently executing thread will be
  -- * aborted.
  -- *
  -- * A few notes for custom implementations:
  -- *
  -- * - If the error is determined to be unrecoverable, LOG_PANIC() should be
  -- *   invoked to flush any pending logging buffers.
  -- * - K_ERR_KERNEL_PANIC indicates a severe unrecoverable error in the kernel
  -- *   itself, and should not be considered recoverable. There is an assertion
  -- *   in z_fatal_error() to enforce this.
  -- * - Even outside of a kernel panic, unless the fault occurred in user mode,
  -- *   the kernel itself may be in an inconsistent state, with API calls to
  -- *   kernel objects possibly exhibiting undefined behavior or triggering
  -- *   another exception.
  -- *
  -- * @param reason The reason for the fatal error
  -- * @param esf Exception context, with details and partial or full register
  -- *            state when the error occurred. May in some cases be NULL.
  --  

   procedure k_sys_fatal_error_handler (reason : unsigned; esf : access constant zephyr_arch_arm_cortex_m_exception_h.arch_esf)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fatal.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "k_sys_fatal_error_handler";

  --*
  -- * @brief Called by architecture code upon a fatal error.
  -- *
  -- * This function dumps out architecture-agnostic information about the error
  -- * and then makes a policy decision on what to do by invoking
  -- * k_sys_fatal_error_handler().
  -- *
  -- * On architectures where k_thread_abort() never returns, this function
  -- * never returns either.
  -- *
  -- * @param reason The reason for the fatal error
  -- * @param esf Exception context, with details and partial or full register
  -- *            state when the error occurred. May in some cases be NULL.
  --  

   procedure z_fatal_error (reason : unsigned; esf : access constant zephyr_arch_arm_cortex_m_exception_h.arch_esf)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fatal.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "z_fatal_error";

  --* @}  
end zephyr_fatal_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
