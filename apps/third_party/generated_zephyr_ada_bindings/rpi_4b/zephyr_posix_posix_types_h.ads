pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;
with System;
with zephyr_kernel_h;
with Interfaces.C.Extensions;
with sys_types_h;

package zephyr_posix_posix_types_h is

  -- * Copyright (c) 2018 Intel Corporation
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  -- time related attributes  
  -- Thread attributes  
   type anon_array3164 is array (0 .. 1) of aliased sys_ustdint_h.uint32_t;
   type pthread_attr is record
      stack : System.Address;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/posix_types.h:93
      details : aliased anon_array3164;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/posix_types.h:94
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/posix_types.h:92

   subtype pthread_attr_t is pthread_attr;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/posix_types.h:98

   subtype pthread_t is sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/posix_types.h:102

   subtype pthread_spinlock_t is sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/posix_types.h:103

  -- Semaphore  
   subtype sem_t is zephyr_kernel_h.k_sem;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/posix_types.h:106

  -- Mutex  
   subtype pthread_mutex_t is sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/posix_types.h:109

   type pthread_mutexattr is record
      c_type : Extensions.Unsigned_2;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/posix_types.h:112
      initialized : aliased Extensions.bool;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/posix_types.h:113
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 1;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/posix_types.h:111

   subtype pthread_mutexattr_t is pthread_mutexattr;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/posix_types.h:116

  -- Condition variables  
   subtype pthread_cond_t is sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/posix_types.h:121

   type pthread_condattr is record
      clock : aliased sys_types_h.clockid_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/posix_types.h:124
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/posix_types.h:123

   subtype pthread_condattr_t is pthread_condattr;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/posix_types.h:128

  -- Barrier  
   subtype pthread_barrier_t is sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/posix_types.h:133

   type pthread_barrierattr is record
      pshared : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/posix_types.h:136
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/posix_types.h:135

   subtype pthread_barrierattr_t is pthread_barrierattr;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/posix_types.h:137

   subtype pthread_rwlockattr_t is sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/posix_types.h:139

   subtype pthread_rwlock_t is sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/posix_types.h:141

   type pthread_once is record
      flag : aliased Extensions.bool;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/posix_types.h:144
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/posix_types.h:143

   subtype pthread_key_t is sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/posix_types.h:148

   subtype pthread_once_t is pthread_once;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/posix_types.h:149

  -- Newlib typedefs pthread_once_t as a struct with two ints  
end zephyr_posix_posix_types_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
