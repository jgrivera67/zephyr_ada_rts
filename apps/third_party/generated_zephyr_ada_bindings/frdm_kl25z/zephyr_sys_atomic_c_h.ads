pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with zephyr_sys_atomic_types_h;
with System;

package zephyr_sys_atomic_c_h is

  -- * Copyright (c) 1997-2015, Wind River Systems, Inc.
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  -- Included from <atomic.h>  
  -- Simple and correct (but very slow) implementation of atomic
  -- * primitives that require nothing more than kernel interrupt locking.
  --  

   function atomic_inc (target : access zephyr_sys_atomic_types_h.atomic_t) return zephyr_sys_atomic_types_h.atomic_val_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/atomic_c.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "atomic_inc";

   function atomic_dec (target : access zephyr_sys_atomic_types_h.atomic_t) return zephyr_sys_atomic_types_h.atomic_val_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/atomic_c.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "atomic_dec";

   function atomic_clear (target : access zephyr_sys_atomic_types_h.atomic_t) return zephyr_sys_atomic_types_h.atomic_val_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/atomic_c.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "atomic_clear";

   function atomic_ptr_clear (target : System.Address) return zephyr_sys_atomic_types_h.atomic_ptr_val_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/atomic_c.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "atomic_ptr_clear";

  -- Skip defining macros of atomic_*() for syscall tracing.
  -- * Compiler does not like "({ ... tracing code ... })" and complains
  -- *
  -- *   error: expected identifier or '(' before '{' token
  -- *
  -- * ... even though there is a '(' before '{'.
  --  

end zephyr_sys_atomic_c_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
