pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package zephyr_fatal_types_h is

  -- * Copyright (c) 2023 CSIRO.
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  --* @file
  -- *  @brief Fatal base type definitions
  --  

  --*
  -- * @defgroup fatal_types Fatal error base types
  -- * @ingroup fatal_apis
  -- * @{
  --  

   subtype k_fatal_error_reason is unsigned;
   k_fatal_error_reason_K_ERR_CPU_EXCEPTION : constant k_fatal_error_reason := 0;
   k_fatal_error_reason_K_ERR_SPURIOUS_IRQ : constant k_fatal_error_reason := 1;
   k_fatal_error_reason_K_ERR_STACK_CHK_FAIL : constant k_fatal_error_reason := 2;
   k_fatal_error_reason_K_ERR_KERNEL_OOPS : constant k_fatal_error_reason := 3;
   k_fatal_error_reason_K_ERR_KERNEL_PANIC : constant k_fatal_error_reason := 4;
   k_fatal_error_reason_K_ERR_ARCH_START : constant k_fatal_error_reason := 16;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fatal_types.h:24

  --* Generic CPU exception, not covered by other codes  
  --* Unhandled hardware interrupt  
  --* Faulting context overflowed its stack buffer  
  --* Moderate severity software error  
  --* High severity software error  
  --* Arch specific fatal errors  
  --* @}  
end zephyr_fatal_types_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
