pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with zephyr_sys_sys_io_h;

package zephyr_arch_common_sys_bitops_h is

  -- * Copyright (c) 2020, Wind River Systems, Inc.
  -- * Copyright (c) 2017, Oticon A/S
  -- * Copyright (c) 2020, Synopsys
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  -- Memory bits manipulation functions in non-arch-specific C code  
   procedure sys_set_bit (addr : zephyr_sys_sys_io_h.mem_addr_t; bit : unsigned)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/common/sys_bitops.h:24
   with Import => True, 
        Convention => C, 
        External_Name => "sys_set_bit";

   procedure sys_clear_bit (addr : zephyr_sys_sys_io_h.mem_addr_t; bit : unsigned)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/common/sys_bitops.h:31
   with Import => True, 
        Convention => C, 
        External_Name => "sys_clear_bit";

   function sys_test_bit (addr : zephyr_sys_sys_io_h.mem_addr_t; bit : unsigned) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/common/sys_bitops.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "sys_test_bit";

   procedure sys_set_bits (addr : zephyr_sys_sys_io_h.mem_addr_t; mask : unsigned)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/common/sys_bitops.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "sys_set_bits";

   procedure sys_clear_bits (addr : zephyr_sys_sys_io_h.mem_addr_t; mask : unsigned)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/common/sys_bitops.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "sys_clear_bits";

   procedure sys_bitfield_set_bit (addr : zephyr_sys_sys_io_h.mem_addr_t; bit : unsigned)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/common/sys_bitops.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "sys_bitfield_set_bit";

  -- Doing memory offsets in terms of 32-bit values to prevent
  --	 * alignment issues
  --	  

   procedure sys_bitfield_clear_bit (addr : zephyr_sys_sys_io_h.mem_addr_t; bit : unsigned)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/common/sys_bitops.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "sys_bitfield_clear_bit";

   function sys_bitfield_test_bit (addr : zephyr_sys_sys_io_h.mem_addr_t; bit : unsigned) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/common/sys_bitops.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "sys_bitfield_test_bit";

   function sys_test_and_set_bit (addr : zephyr_sys_sys_io_h.mem_addr_t; bit : unsigned) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/common/sys_bitops.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "sys_test_and_set_bit";

   function sys_test_and_clear_bit (addr : zephyr_sys_sys_io_h.mem_addr_t; bit : unsigned) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/common/sys_bitops.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "sys_test_and_clear_bit";

   function sys_bitfield_test_and_set_bit (addr : zephyr_sys_sys_io_h.mem_addr_t; bit : unsigned) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/common/sys_bitops.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "sys_bitfield_test_and_set_bit";

   function sys_bitfield_test_and_clear_bit (addr : zephyr_sys_sys_io_h.mem_addr_t; bit : unsigned) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/common/sys_bitops.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "sys_bitfield_test_and_clear_bit";

end zephyr_arch_common_sys_bitops_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
