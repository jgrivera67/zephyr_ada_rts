pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

package zephyr_sys_u_assert_h is

  -- * Copyright (c) 2011-2014 Wind River Systems, Inc.
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  -- Wrapper around printk to avoid including printk.h in assert.h  
   procedure assert_print (fmt : Interfaces.C.Strings.chars_ptr  -- , ...
      )  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/__assert.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "assert_print";

   procedure assert_post_action (file : Interfaces.C.Strings.chars_ptr; line : unsigned)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/__assert.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "assert_post_action";

  -- * When the assert test mode is enabled, the default kernel fatal error handler
  -- * and the custom assert hook function may return in order to allow the test to
  -- * proceed.
  --  

  -- This include must always be at the end of __assert.h  
end zephyr_sys_u_assert_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
