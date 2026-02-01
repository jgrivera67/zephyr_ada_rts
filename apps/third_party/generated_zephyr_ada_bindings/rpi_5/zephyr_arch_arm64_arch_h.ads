pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with zephyr_arch_arm64_arm_mmu_h;
with zephyr_sys_slist_h;

package zephyr_arch_arm64_arch_h is

  -- * Copyright (c) 2019 Carlo Caione <ccaione@baylibre.com>
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  --*
  -- * @file
  -- * @brief ARM64 specific kernel interface header
  -- *
  -- * This header contains the ARM64 specific kernel interface.  It is
  -- * included by the kernel interface architecture-abstraction header
  -- * (include/zephyr/arch/cpu.h).
  --  

  -- Add include for DTS generated information  
   type arch_mem_domain is record
      ptables : aliased zephyr_arch_arm64_arm_mmu_h.arm_mmu_ptables;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/arch.h:48
      node : aliased zephyr_sys_slist_h.sys_snode_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/arch.h:50
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/arch.h:46

end zephyr_arch_arm64_arch_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
