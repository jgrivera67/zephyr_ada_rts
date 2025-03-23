pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;

package zephyr_arch_common_ffs_h is

  -- * Copyright (c) 2015, Wind River Systems, Inc.
  -- * Copyright (c) 2017, Oticon A/S
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  --*
  -- *
  -- * @brief find most significant bit set in a 32-bit word
  -- *
  -- * This routine finds the first bit set starting from the most significant bit
  -- * in the argument passed in and returns the index of that bit.  Bits are
  -- * numbered starting at 1 from the least significant bit.  A return value of
  -- * zero indicates that the value passed is zero.
  -- *
  -- * @return most significant bit set, 0 if @a op is 0
  --  

   function find_msb_set (op : sys_ustdint_h.uint32_t) return unsigned  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/common/ffs.h:31
   with Import => True, 
        Convention => C, 
        External_Name => "find_msb_set";

  --*
  -- *
  -- * @brief find least significant bit set in a 32-bit word
  -- *
  -- * This routine finds the first bit set starting from the least significant bit
  -- * in the argument passed in and returns the index of that bit.  Bits are
  -- * numbered starting at 1 from the least significant bit.  A return value of
  -- * zero indicates that the value passed is zero.
  -- *
  -- * @return least significant bit set, 0 if @a op is 0
  --  

   function find_lsb_set (op : sys_ustdint_h.uint32_t) return unsigned  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/common/ffs.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "find_lsb_set";

  --	 * Toolchain does not have __builtin_ffs(). Leverage find_lsb_set()
  --	 * by first clearing all but the lowest set bit.
  --	  

end zephyr_arch_common_ffs_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
