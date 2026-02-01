pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with zephyr_sys_atomic_types_h;
with Interfaces.C.Extensions;
with System;

package zephyr_sys_atomic_builtin_h is

  -- atomic operations  
  -- * Copyright (c) 1997-2015, Wind River Systems, Inc.
  -- * Copyright (c) 2023 Nordic Semiconductor ASA
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  -- Included from <atomic.h>  
   function atomic_cas
     (target : access zephyr_sys_atomic_types_h.atomic_t;
      old_value : zephyr_sys_atomic_types_h.atomic_val_t;
      new_value : zephyr_sys_atomic_types_h.atomic_val_t) return Extensions.bool  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/atomic_builtin.h:23
   with Import => True, 
        Convention => C, 
        External_Name => "atomic_cas";

   function atomic_ptr_cas
     (target : System.Address;
      old_value : zephyr_sys_atomic_types_h.atomic_ptr_val_t;
      new_value : zephyr_sys_atomic_types_h.atomic_ptr_val_t) return Extensions.bool  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/atomic_builtin.h:31
   with Import => True, 
        Convention => C, 
        External_Name => "atomic_ptr_cas";

   function atomic_add (target : access zephyr_sys_atomic_types_h.atomic_t; value : zephyr_sys_atomic_types_h.atomic_val_t) return zephyr_sys_atomic_types_h.atomic_val_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/atomic_builtin.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "atomic_add";

   function atomic_sub (target : access zephyr_sys_atomic_types_h.atomic_t; value : zephyr_sys_atomic_types_h.atomic_val_t) return zephyr_sys_atomic_types_h.atomic_val_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/atomic_builtin.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "atomic_sub";

   function atomic_inc (target : access zephyr_sys_atomic_types_h.atomic_t) return zephyr_sys_atomic_types_h.atomic_val_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/atomic_builtin.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "atomic_inc";

   function atomic_dec (target : access zephyr_sys_atomic_types_h.atomic_t) return zephyr_sys_atomic_types_h.atomic_val_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/atomic_builtin.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "atomic_dec";

   function atomic_get (target : access zephyr_sys_atomic_types_h.atomic_t) return zephyr_sys_atomic_types_h.atomic_val_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/atomic_builtin.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "atomic_get";

   function atomic_ptr_get (target : System.Address) return zephyr_sys_atomic_types_h.atomic_ptr_val_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/atomic_builtin.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "atomic_ptr_get";

   function atomic_set (target : access zephyr_sys_atomic_types_h.atomic_t; value : zephyr_sys_atomic_types_h.atomic_val_t) return zephyr_sys_atomic_types_h.atomic_val_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/atomic_builtin.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "atomic_set";

  -- This builtin, as described by Intel, is not a traditional
  --	 * test-and-set operation, but rather an atomic exchange operation. It
  --	 * writes value into *ptr, and returns the previous contents of *ptr.
  --	  

   function atomic_ptr_set (target : System.Address; value : zephyr_sys_atomic_types_h.atomic_ptr_val_t) return zephyr_sys_atomic_types_h.atomic_ptr_val_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/atomic_builtin.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "atomic_ptr_set";

   function atomic_clear (target : access zephyr_sys_atomic_types_h.atomic_t) return zephyr_sys_atomic_types_h.atomic_val_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/atomic_builtin.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "atomic_clear";

   function atomic_ptr_clear (target : System.Address) return zephyr_sys_atomic_types_h.atomic_ptr_val_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/atomic_builtin.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "atomic_ptr_clear";

   function atomic_or (target : access zephyr_sys_atomic_types_h.atomic_t; value : zephyr_sys_atomic_types_h.atomic_val_t) return zephyr_sys_atomic_types_h.atomic_val_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/atomic_builtin.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "atomic_or";

   function atomic_xor (target : access zephyr_sys_atomic_types_h.atomic_t; value : zephyr_sys_atomic_types_h.atomic_val_t) return zephyr_sys_atomic_types_h.atomic_val_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/atomic_builtin.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "atomic_xor";

   function atomic_and (target : access zephyr_sys_atomic_types_h.atomic_t; value : zephyr_sys_atomic_types_h.atomic_val_t) return zephyr_sys_atomic_types_h.atomic_val_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/atomic_builtin.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "atomic_and";

   function atomic_nand (target : access zephyr_sys_atomic_types_h.atomic_t; value : zephyr_sys_atomic_types_h.atomic_val_t) return zephyr_sys_atomic_types_h.atomic_val_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/atomic_builtin.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "atomic_nand";

end zephyr_sys_atomic_builtin_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
