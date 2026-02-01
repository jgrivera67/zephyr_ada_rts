pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with zephyr_kernel_thread_h;

package zephyr_arch_arm64_mm_h is

   --  unsupported macro: MEM_DOMAIN_ALIGN_AND_SIZE CONFIG_MMU_PAGE_SIZE
  -- * Copyright (c) 2021 Arm Limited (or its affiliates). All rights reserved.
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  -- * When mmu enabled, some section addresses need to be aligned with
  -- * page size which is CONFIG_MMU_PAGE_SIZE
  --  

  -- * When mpu enabled, some section addresses need to be aligned with
  -- * mpu region min align size which is
  -- * CONFIG_ARM_MPU_REGION_MIN_ALIGN_AND_SIZE
  --  

   procedure z_arm64_thread_mem_domains_init (thread : access zephyr_kernel_thread_h.k_thread)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/mm.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "z_arm64_thread_mem_domains_init";

   procedure z_arm64_swap_mem_domains (thread : access zephyr_kernel_thread_h.k_thread)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/mm.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "z_arm64_swap_mem_domains";

end zephyr_arch_arm64_mm_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
