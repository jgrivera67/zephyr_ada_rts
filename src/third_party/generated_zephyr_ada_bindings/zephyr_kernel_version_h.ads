pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;

package zephyr_kernel_version_h is

   --  arg-macro: function SYS_KERNEL_VER_MAJOR (ver)
   --    return ((ver) >> 24) and 16#FF#;
   --  arg-macro: function SYS_KERNEL_VER_MINOR (ver)
   --    return ((ver) >> 16) and 16#FF#;
   --  arg-macro: function SYS_KERNEL_VER_PATCHLEVEL (ver)
   --    return ((ver) >> 8) and 16#FF#;
  -- kernel version support  
  -- * Copyright (c) 2015 Wind River Systems, Inc.
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  --*
  -- * @defgroup version_apis Version APIs
  -- * @ingroup kernel_apis
  -- * @{
  -- *
  -- * The kernel version has been converted from a string to a four-byte
  -- * quantity that is divided into two parts.
  -- *
  -- * Part 1: The three most significant bytes represent the kernel's
  -- * numeric version, x.y.z. These fields denote:
  -- *       x -- major release
  -- *       y -- minor release
  -- *       z -- patchlevel release
  -- * Each of these elements must therefore be in the range 0 to 255, inclusive.
  -- *
  -- * Part 2: The least significant byte is reserved for future use.
  --  

  -- kernel version routines  
  --*
  -- * @brief Return the kernel version of the present build
  -- *
  -- * The kernel version is a four-byte value, whose format is described in the
  -- * file "kernel_version.h".
  -- *
  -- * @return kernel version
  --  

   function sys_kernel_version_get return sys_ustdint_h.uint32_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel_version.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "sys_kernel_version_get";

  --*
  -- * @}
  --  

end zephyr_kernel_version_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
