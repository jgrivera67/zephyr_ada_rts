pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with stdarg_h;

package zephyr_sys_printk_h is

   --  unsupported macro: snprintk(...) snprintf(__VA_ARGS__)
   --  arg-macro: procedure vsnprintk (str, size, fmt, ap)
   --    vsnprintf(str, size, fmt, ap)
  -- printk.h - low-level debug output  
  -- * Copyright (c) 2010-2012, 2014 Wind River Systems, Inc.
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  --*
  -- *
  -- * @brief Print kernel debugging message.
  -- *
  -- * This routine prints a kernel debugging message to the system console.
  -- * Output is send immediately, without any mutual exclusion or buffering.
  -- *
  -- * A basic set of conversion specifier characters are supported:
  -- *   - signed decimal: \%d, \%i
  -- *   - unsigned decimal: \%u
  -- *   - unsigned hexadecimal: \%x (\%X is treated as \%x)
  -- *   - pointer: \%p
  -- *   - string: \%s
  -- *   - character: \%c
  -- *   - percent: \%\%
  -- *
  -- * Field width (with or without leading zeroes) is supported.
  -- * Length attributes h, hh, l, ll and z are supported. However, integral
  -- * values with %lld and %lli are only printed if they fit in a long
  -- * otherwise 'ERR' is printed. Full 64-bit values may be printed with %llx.
  -- * Flags and precision attributes are not supported.
  -- *
  -- * @param fmt Format string.
  -- * @param ... Optional list of format arguments.
  --  

   procedure printk (fmt : Interfaces.C.Strings.chars_ptr  -- , ...
      )  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/printk.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "printk";

   procedure vprintk (fmt : Interfaces.C.Strings.chars_ptr; ap : stdarg_h.va_list)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/printk.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "vprintk";

end zephyr_sys_printk_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
