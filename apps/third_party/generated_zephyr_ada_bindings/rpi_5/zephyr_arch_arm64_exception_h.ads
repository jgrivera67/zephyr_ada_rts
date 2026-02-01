pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;

package zephyr_arch_arm64_exception_h is

  -- * Copyright (c) 2019 Carlo Caione <ccaione@baylibre.com>
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  --*
  -- * @file
  -- * @brief Cortex-A public exception handling
  -- *
  -- * ARM-specific kernel exception handling interface. Included by arm64/arch.h.
  --  

  -- for assembler, only works with constants  
   type arch_esf is record
      x0 : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/exception.h:28
      x1 : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/exception.h:29
      x2 : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/exception.h:30
      x3 : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/exception.h:31
      x4 : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/exception.h:32
      x5 : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/exception.h:33
      x6 : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/exception.h:34
      x7 : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/exception.h:35
      x8 : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/exception.h:36
      x9 : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/exception.h:37
      x10 : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/exception.h:38
      x11 : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/exception.h:39
      x12 : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/exception.h:40
      x13 : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/exception.h:41
      x14 : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/exception.h:42
      x15 : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/exception.h:43
      x16 : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/exception.h:44
      x17 : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/exception.h:45
      x18 : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/exception.h:46
      lr : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/exception.h:47
      spsr : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/exception.h:48
      elr : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/exception.h:49
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/exception.h:27

end zephyr_arch_arm64_exception_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
