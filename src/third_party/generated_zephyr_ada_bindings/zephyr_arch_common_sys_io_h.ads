pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with zephyr_sys_sys_io_h;
with sys_ustdint_h;

package zephyr_arch_common_sys_io_h is

  -- * Copyright (c) 2015, Wind River Systems, Inc.
  -- * Copyright (c) 2017, Oticon A/S
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  -- Memory mapped registers I/O functions in non-arch-specific C code  
   function sys_read8 (addr : zephyr_sys_sys_io_h.mem_addr_t) return sys_ustdint_h.uint8_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/common/sys_io.h:23
   with Import => True, 
        Convention => C, 
        External_Name => "sys_read8";

   procedure sys_write8 (data : sys_ustdint_h.uint8_t; addr : zephyr_sys_sys_io_h.mem_addr_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/common/sys_io.h:28
   with Import => True, 
        Convention => C, 
        External_Name => "sys_write8";

   function sys_read16 (addr : zephyr_sys_sys_io_h.mem_addr_t) return sys_ustdint_h.uint16_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/common/sys_io.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "sys_read16";

   procedure sys_write16 (data : sys_ustdint_h.uint16_t; addr : zephyr_sys_sys_io_h.mem_addr_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/common/sys_io.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "sys_write16";

   function sys_read32 (addr : zephyr_sys_sys_io_h.mem_addr_t) return sys_ustdint_h.uint32_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/common/sys_io.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "sys_read32";

   procedure sys_write32 (data : sys_ustdint_h.uint32_t; addr : zephyr_sys_sys_io_h.mem_addr_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/common/sys_io.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "sys_write32";

   function sys_read64 (addr : zephyr_sys_sys_io_h.mem_addr_t) return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/common/sys_io.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "sys_read64";

   procedure sys_write64 (data : sys_ustdint_h.uint64_t; addr : zephyr_sys_sys_io_h.mem_addr_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/common/sys_io.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "sys_write64";

end zephyr_arch_common_sys_io_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
