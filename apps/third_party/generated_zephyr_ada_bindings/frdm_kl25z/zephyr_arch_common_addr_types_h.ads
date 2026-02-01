pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;
with System;

package zephyr_arch_common_addr_types_h is

  -- x86 address types (virtual, physical, etc) definitions  
  -- * Copyright (c) 2015 Wind River Systems, Inc.
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

   subtype paddr_t is sys_ustdint_h.uintptr_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/common/addr_types.h:13

   type vaddr_t is new System.Address;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/common/addr_types.h:14

end zephyr_arch_common_addr_types_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
