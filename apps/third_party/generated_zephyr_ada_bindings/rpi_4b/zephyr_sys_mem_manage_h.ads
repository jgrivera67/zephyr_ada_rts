pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;
with Interfaces.C.Extensions;
with System;

package zephyr_sys_mem_manage_h is

  -- * Copyright (c) 2020 Intel Corporation
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  --*
  -- * @brief Memory Management
  -- * @defgroup memory_management Memory Management
  -- * @ingroup os_services
  -- * @{
  --  

  --*
  -- * @brief Check if a physical address is within range of physical memory.
  -- *
  -- * This checks if the physical address (@p virt) is within
  -- * permissible range, e.g. between
  -- * :kconfig:option:`CONFIG_SRAM_BASE_ADDRESS` and
  -- * (:kconfig:option:`CONFIG_SRAM_BASE_ADDRESS` +
  -- *  :kconfig:option:`CONFIG_SRAM_SIZE`).
  -- *
  -- * @note Only used if
  -- * :kconfig:option:`CONFIG_KERNEL_VM_USE_CUSTOM_MEM_RANGE_CHECK`
  -- * is enabled.
  -- *
  -- * @param phys Physical address to be checked.
  -- *
  -- * @return True if physical address is within range, false if not.
  --  

   function sys_mm_is_phys_addr_in_range (phys : sys_ustdint_h.uintptr_t) return Extensions.bool  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/mem_manage.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "sys_mm_is_phys_addr_in_range";

  --*
  -- * @brief Check if a virtual address is within range of virtual memory.
  -- *
  -- * This checks if the virtual address (@p virt) is within
  -- * permissible range, e.g. between
  -- * :kconfig:option:`CONFIG_KERNEL_VM_BASE` and
  -- * (:kconfig:option:`CONFIG_KERNEL_VM_BASE` +
  -- *  :kconfig:option:`CONFIG_KERNEL_VM_SIZE`).
  -- *
  -- * @note Only used if
  -- * :kconfig:option:`CONFIG_KERNEL_VM_USE_CUSTOM_MEM_RANGE_CHECK`
  -- * is enabled.
  -- *
  -- * @param virt Virtual address to be checked.
  -- *
  -- * @return True if virtual address is within range, false if not.
  --  

   function sys_mm_is_virt_addr_in_range (virt : System.Address) return Extensions.bool  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/mem_manage.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "sys_mm_is_virt_addr_in_range";

  --* @}  
end zephyr_sys_mem_manage_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
