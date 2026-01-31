pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with zephyr_posix_posix_types_h;
limited with sys_utimespec_h;
with time_h;
with stddef_h;
limited with zephyr_posix_sched_h;
with System;
with Interfaces.C.Strings;

package zephyr_posix_pthread_h is

   PTHREAD_CREATE_DETACHED : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:27

   PTHREAD_CREATE_JOINABLE : constant := 0;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:29

   PTHREAD_PROCESS_SHARED : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:33
   --  unsupported macro: PTHREAD_CANCELED ((void *)-1)

   PTHREAD_CANCEL_ENABLE : constant := 0;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:37
   PTHREAD_CANCEL_DISABLE : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:38
   PTHREAD_CANCEL_DEFERRED : constant := 0;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:39
   PTHREAD_CANCEL_ASYNCHRONOUS : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:40

   PTHREAD_SCOPE_PROCESS : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:44

   PTHREAD_SCOPE_SYSTEM : constant := 0;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:46

   PTHREAD_INHERIT_SCHED : constant := 0;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:50

   PTHREAD_EXPLICIT_SCHED : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:52
   --  unsupported macro: PTHREAD_ONCE_INIT {0}
   --  unsupported macro: PTHREAD_STACK_MIN K_KERNEL_STACK_LEN(0)

   PTHREAD_COND_INITIALIZER : constant := (-1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:65

   PTHREAD_MUTEX_INITIALIZER : constant := (-1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:149

   PTHREAD_RWLOCK_INITIALIZER : constant := (-1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:156

   PTHREAD_MUTEX_NORMAL : constant := 0;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:168
   PTHREAD_MUTEX_RECURSIVE : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:169
   PTHREAD_MUTEX_ERRORCHECK : constant := 2;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:170
   --  unsupported macro: PTHREAD_MUTEX_DEFAULT PTHREAD_MUTEX_NORMAL

   PTHREAD_PRIO_NONE : constant := 0;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:185
   PTHREAD_PRIO_INHERIT : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:186
   PTHREAD_PRIO_PROTECT : constant := 2;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:187

   PTHREAD_BARRIER_SERIAL_THREAD : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:281

   PTHREAD_PROCESS_PRIVATE : constant := 0;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:286
   PTHREAD_PROCESS_PUBLIC : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:287
   --  arg-macro: procedure pthread_cleanup_push (_rtn, _arg)
   --    do { void *_z_pthread_cleanup(3); __z_pthread_cleanup_push(_z_pthread_cleanup, _rtn, _arg)
   --  arg-macro: procedure pthread_cleanup_pop (_ex)
   --    __z_pthread_cleanup_pop(_ex); } while (0)

  -- * Copyright (c) 2017 Intel Corporation
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  -- * Pthread detach/joinable
  -- * Undefine possibly predefined values by external toolchain headers
  --  

  -- Pthread resource visibility  
  -- Pthread cancellation  
  -- Pthread scope  
  -- Pthread inherit scheduler  
  -- Passed to pthread_once  
  -- The minimum allowable stack size  
  --*
  -- * @brief Declare a condition variable as initialized
  -- *
  -- * Initialize a condition variable with the default condition variable attributes.
  --  

  --*
  -- * @brief POSIX threading compatibility API
  -- *
  -- * See IEEE 1003.1
  --  

   function pthread_cond_init (cv : access zephyr_posix_posix_types_h.pthread_cond_t; att : access constant zephyr_posix_posix_types_h.pthread_condattr) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_cond_init";

  --*
  -- * @brief POSIX threading compatibility API
  -- *
  -- * See IEEE 1003.1
  --  

   function pthread_cond_destroy (cv : access zephyr_posix_posix_types_h.pthread_cond_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_cond_destroy";

  --*
  -- * @brief POSIX threading compatibility API
  -- *
  -- * See IEEE 1003.1
  --  

   function pthread_cond_signal (cv : access zephyr_posix_posix_types_h.pthread_cond_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_cond_signal";

  --*
  -- * @brief POSIX threading compatibility API
  -- *
  -- * See IEEE 1003.1
  --  

   function pthread_cond_broadcast (cv : access zephyr_posix_posix_types_h.pthread_cond_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_cond_broadcast";

  --*
  -- * @brief POSIX threading compatibility API
  -- *
  -- * See IEEE 1003.1
  --  

   function pthread_cond_wait (cv : access zephyr_posix_posix_types_h.pthread_cond_t; mut : access zephyr_posix_posix_types_h.pthread_mutex_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_cond_wait";

  --*
  -- * @brief POSIX threading compatibility API
  -- *
  -- * See IEEE 1003.1
  --  

   function pthread_cond_timedwait
     (cv : access zephyr_posix_posix_types_h.pthread_cond_t;
      mut : access zephyr_posix_posix_types_h.pthread_mutex_t;
      abstime : access constant sys_utimespec_h.timespec) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_cond_timedwait";

  --*
  -- * @brief POSIX threading compatibility API
  -- *
  -- * See IEEE 1003.1.
  -- *
  --  

   function pthread_condattr_init (att : access zephyr_posix_posix_types_h.pthread_condattr) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_condattr_init";

  --*
  -- * @brief POSIX threading compatibility API
  -- *
  -- * See IEEE 1003.1
  -- *
  --  

   function pthread_condattr_destroy (att : access zephyr_posix_posix_types_h.pthread_condattr) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:124
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_condattr_destroy";

  --*
  -- * @brief POSIX threading compatibility API
  -- *
  -- * See IEEE 1003.1
  -- *
  --  

   function pthread_condattr_getclock (att : access constant zephyr_posix_posix_types_h.pthread_condattr; clock_id : access time_h.clockid_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_condattr_getclock";

  --*
  -- * @brief POSIX threading compatibility API
  -- *
  -- * See IEEE 1003.1
  -- *
  --  

   function pthread_condattr_setclock (att : access zephyr_posix_posix_types_h.pthread_condattr; clock_id : time_h.clockid_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_condattr_setclock";

  --*
  -- * @brief Declare a mutex as initialized
  -- *
  -- * Initialize a mutex with the default mutex attributes.
  --  

  --*
  -- * @brief Declare a rwlock as initialized
  -- *
  -- * Initialize a rwlock with the default rwlock attributes.
  --  

  -- *  Mutex attributes - type
  -- *
  -- *  PTHREAD_MUTEX_NORMAL: Owner of mutex cannot relock it. Attempting
  -- *      to relock will cause deadlock.
  -- *  PTHREAD_MUTEX_RECURSIVE: Owner can relock the mutex.
  -- *  PTHREAD_MUTEX_ERRORCHECK: If owner attempts to relock the mutex, an
  -- *      error is returned.
  -- *
  --  

  -- *  Mutex attributes - protocol
  -- *
  -- *  PTHREAD_PRIO_NONE: Ownership of mutex does not affect priority.
  -- *  PTHREAD_PRIO_INHERIT: Owner's priority is boosted to the priority of
  -- *      highest priority thread blocked on the mutex.
  -- *  PTHREAD_PRIO_PROTECT:  Mutex has a priority ceiling.  The owner's
  -- *      priority is boosted to the highest priority ceiling of all mutexes
  -- *      owned (regardless of whether or not other threads are blocked on
  -- *      any of these mutexes).
  -- *  FIXME: Only PRIO_NONE is supported. Implement other protocols.
  --  

  --*
  -- * @brief POSIX threading compatibility API
  -- *
  -- * See IEEE 1003.1
  --  

   function pthread_mutex_destroy (m : access zephyr_posix_posix_types_h.pthread_mutex_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:194
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_mutex_destroy";

  --*
  -- * @brief POSIX threading compatibility API
  -- *
  -- * See IEEE 1003.1
  --  

   function pthread_mutex_lock (m : access zephyr_posix_posix_types_h.pthread_mutex_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:201
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_mutex_lock";

  --*
  -- * @brief POSIX threading compatibility API
  -- *
  -- * See IEEE 1003.1
  --  

   function pthread_mutex_unlock (m : access zephyr_posix_posix_types_h.pthread_mutex_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:208
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_mutex_unlock";

  --*
  -- * @brief POSIX threading compatibility API
  -- *
  -- * See IEEE 1003.1
  --  

   function pthread_mutex_timedlock (m : access zephyr_posix_posix_types_h.pthread_mutex_t; abstime : access constant sys_utimespec_h.timespec) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:216
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_mutex_timedlock";

  --*
  -- * @brief POSIX threading compatibility API
  -- *
  -- * See IEEE 1003.1
  --  

   function pthread_mutex_trylock (m : access zephyr_posix_posix_types_h.pthread_mutex_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:224
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_mutex_trylock";

  --*
  -- * @brief POSIX threading compatibility API
  -- *
  -- * See IEEE 1003.1
  --  

   function pthread_mutex_init (m : access zephyr_posix_posix_types_h.pthread_mutex_t; att : access constant zephyr_posix_posix_types_h.pthread_mutexattr) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:231
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_mutex_init";

  --*
  -- * @brief POSIX threading compatibility API
  -- *
  -- * See IEEE 1003.1
  --  

   function pthread_mutexattr_setprotocol (attr : access zephyr_posix_posix_types_h.pthread_mutexattr; protocol : int) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:239
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_mutexattr_setprotocol";

  --*
  -- * @brief POSIX threading compatibility API
  -- *
  -- * See IEEE 1003.1
  --  

   function pthread_mutexattr_settype (attr : access zephyr_posix_posix_types_h.pthread_mutexattr; c_type : int) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:246
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_mutexattr_settype";

  --*
  -- * @brief POSIX threading compatibility API
  -- *
  -- * See IEEE 1003.1
  --  

   function pthread_mutexattr_getprotocol (attr : access constant zephyr_posix_posix_types_h.pthread_mutexattr; protocol : access int) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:253
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_mutexattr_getprotocol";

  --*
  -- * @brief POSIX threading compatibility API
  -- *
  -- * See IEEE 1003.1
  --  

   function pthread_mutexattr_gettype (attr : access constant zephyr_posix_posix_types_h.pthread_mutexattr; c_type : access int) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:261
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_mutexattr_gettype";

  --*
  -- * @brief POSIX threading compatibility API
  -- *
  -- * See IEEE 1003.1
  -- *
  -- * Note that pthread attribute structs are currently noops in Zephyr.
  --  

   function pthread_mutexattr_init (attr : access zephyr_posix_posix_types_h.pthread_mutexattr) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:270
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_mutexattr_init";

  --*
  -- * @brief POSIX threading compatibility API
  -- *
  -- * See IEEE 1003.1
  -- *
  -- * Note that pthread attribute structs are currently noops in Zephyr.
  --  

   function pthread_mutexattr_destroy (attr : access zephyr_posix_posix_types_h.pthread_mutexattr) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:279
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_mutexattr_destroy";

  -- *  Barrier attributes - type
  --  

  --*
  -- * @brief POSIX threading compatibility API
  -- *
  -- * See IEEE 1003.1
  --  

   function pthread_barrier_wait (b : access zephyr_posix_posix_types_h.pthread_barrier_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:294
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_barrier_wait";

  --*
  -- * @brief POSIX threading compatibility API
  -- *
  -- * See IEEE 1003.1
  --  

   function pthread_barrier_init
     (b : access zephyr_posix_posix_types_h.pthread_barrier_t;
      attr : access constant zephyr_posix_posix_types_h.pthread_barrierattr;
      count : unsigned) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:301
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_barrier_init";

  --*
  -- * @brief POSIX threading compatibility API
  -- *
  -- * See IEEE 1003.1
  --  

   function pthread_barrier_destroy (b : access zephyr_posix_posix_types_h.pthread_barrier_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:309
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_barrier_destroy";

  --*
  -- * @brief POSIX threading compatibility API
  -- *
  -- * See IEEE 1003.1
  --  

   function pthread_barrierattr_init (b : access zephyr_posix_posix_types_h.pthread_barrierattr) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:316
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_barrierattr_init";

  --*
  -- * @brief POSIX threading compatibility API
  -- *
  -- * See IEEE 1003.1
  --  

   function pthread_barrierattr_destroy (b : access zephyr_posix_posix_types_h.pthread_barrierattr) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:323
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_barrierattr_destroy";

  --*
  -- * @brief POSIX threading compatibility API
  -- *
  -- * See IEEE 1003.1
  --  

   function pthread_barrierattr_setpshared (attr : access zephyr_posix_posix_types_h.pthread_barrierattr; pshared : int) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:330
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_barrierattr_setpshared";

  --*
  -- * @brief POSIX threading compatibility API
  -- *
  -- * See IEEE 1003.1
  --  

   function pthread_barrierattr_getpshared (attr : access constant zephyr_posix_posix_types_h.pthread_barrierattr; pshared : access int) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:337
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_barrierattr_getpshared";

  -- Predicates and setters for various pthread attribute values that we
  -- * don't support (or always support: the "process shared" attribute
  -- * can only be true given the way Zephyr implements these
  -- * objects). Leave these undefined for simplicity instead of defining
  -- * stubs to return an error that would have to be logged and
  -- * interpreted just to figure out that we didn't support it in the
  -- * first place. These APIs are very rarely used even in production
  -- * Unix code.  Leave the declarations here so they can be easily
  -- * uncommented and implemented as needed.
  --int pthread_condattr_getpshared(const pthread_condattr_t * int *);
  --int pthread_condattr_setpshared(pthread_condattr_t *, int);
  --int pthread_mutex_consistent(pthread_mutex_t *);
  --int pthread_mutexattr_getpshared(const pthread_mutexattr_t * int *);
  --int pthread_mutexattr_getrobust(const pthread_mutexattr_t * int *);
  --int pthread_mutexattr_setpshared(pthread_mutexattr_t *, int);
  --int pthread_mutexattr_setrobust(pthread_mutexattr_t *, int);
  -- 

   function pthread_mutex_getprioceiling (mutex : access zephyr_posix_posix_types_h.pthread_mutex_t; prioceiling : access int) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:360
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_mutex_getprioceiling";

   function pthread_mutex_setprioceiling
     (mutex : access zephyr_posix_posix_types_h.pthread_mutex_t;
      prioceiling : int;
      old_ceiling : access int) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:362
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_mutex_setprioceiling";

   function pthread_mutexattr_getprioceiling (attr : access constant zephyr_posix_posix_types_h.pthread_mutexattr; prioceiling : access int) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:364
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_mutexattr_getprioceiling";

   function pthread_mutexattr_setprioceiling (attr : access zephyr_posix_posix_types_h.pthread_mutexattr; prioceiling : int) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:366
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_mutexattr_setprioceiling";

  -- Base Pthread related APIs  
  --*
  -- * @brief Obtain ID of the calling thread.
  -- *
  -- * The results of calling this API from threads not created with
  -- * pthread_create() are undefined.
  -- *
  -- * See IEEE 1003.1
  --  

   function pthread_self return zephyr_posix_posix_types_h.pthread_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:379
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_self";

  --*
  -- * @brief Compare thread IDs.
  -- *
  -- * See IEEE 1003.1
  --  

   function pthread_equal (pt1 : zephyr_posix_posix_types_h.pthread_t; pt2 : zephyr_posix_posix_types_h.pthread_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:386
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_equal";

  --*
  -- * @brief Destroy the read-write lock attributes object.
  -- *
  -- * See IEEE 1003.1
  --  

   function pthread_rwlockattr_destroy (attr : access zephyr_posix_posix_types_h.pthread_rwlockattr_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:393
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_rwlockattr_destroy";

  --*
  -- * @brief initialize the read-write lock attributes object.
  -- *
  -- * See IEEE 1003.1
  --  

   function pthread_rwlockattr_init (attr : access zephyr_posix_posix_types_h.pthread_rwlockattr_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:400
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_rwlockattr_init";

   function pthread_rwlockattr_getpshared (attr : access zephyr_posix_posix_types_h.pthread_rwlockattr_t; pshared : access int) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:402
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_rwlockattr_getpshared";

   function pthread_rwlockattr_setpshared (attr : access zephyr_posix_posix_types_h.pthread_rwlockattr_t; pshared : int) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:404
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_rwlockattr_setpshared";

   function pthread_attr_getguardsize (attr : access constant zephyr_posix_posix_types_h.pthread_attr; guardsize : access stddef_h.size_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:406
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_attr_getguardsize";

   function pthread_attr_getstacksize (attr : access constant zephyr_posix_posix_types_h.pthread_attr; stacksize : access stddef_h.size_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:407
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_attr_getstacksize";

   function pthread_attr_setguardsize (attr : access zephyr_posix_posix_types_h.pthread_attr; guardsize : stddef_h.size_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:408
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_attr_setguardsize";

   function pthread_attr_setstacksize (attr : access zephyr_posix_posix_types_h.pthread_attr; stacksize : stddef_h.size_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:409
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_attr_setstacksize";

   function pthread_attr_setschedpolicy (attr : access zephyr_posix_posix_types_h.pthread_attr; policy : int) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:410
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_attr_setschedpolicy";

   function pthread_attr_getschedpolicy (attr : access constant zephyr_posix_posix_types_h.pthread_attr; policy : access int) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:411
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_attr_getschedpolicy";

   function pthread_attr_setdetachstate (attr : access zephyr_posix_posix_types_h.pthread_attr; detachstate : int) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:412
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_attr_setdetachstate";

   function pthread_attr_getdetachstate (attr : access constant zephyr_posix_posix_types_h.pthread_attr; detachstate : access int) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:413
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_attr_getdetachstate";

   function pthread_attr_init (attr : access zephyr_posix_posix_types_h.pthread_attr) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:414
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_attr_init";

   function pthread_attr_destroy (attr : access zephyr_posix_posix_types_h.pthread_attr) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:415
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_attr_destroy";

   function pthread_attr_getschedparam (attr : access constant zephyr_posix_posix_types_h.pthread_attr; schedparam : access zephyr_posix_sched_h.sched_param) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:416
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_attr_getschedparam";

   function pthread_getschedparam
     (pthread : zephyr_posix_posix_types_h.pthread_t;
      policy : access int;
      param : access zephyr_posix_sched_h.sched_param) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:418
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_getschedparam";

   function pthread_attr_getstack
     (attr : access constant zephyr_posix_posix_types_h.pthread_attr;
      stackaddr : System.Address;
      stacksize : access stddef_h.size_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:420
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_attr_getstack";

   function pthread_attr_setstack
     (attr : access zephyr_posix_posix_types_h.pthread_attr;
      stackaddr : System.Address;
      stacksize : stddef_h.size_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:422
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_attr_setstack";

   function pthread_attr_getscope (attr : access constant zephyr_posix_posix_types_h.pthread_attr; contentionscope : access int) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:424
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_attr_getscope";

   function pthread_attr_setscope (attr : access zephyr_posix_posix_types_h.pthread_attr; contentionscope : int) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:425
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_attr_setscope";

   function pthread_attr_getinheritsched (attr : access constant zephyr_posix_posix_types_h.pthread_attr; inheritsched : access int) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:426
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_attr_getinheritsched";

   function pthread_attr_setinheritsched (attr : access zephyr_posix_posix_types_h.pthread_attr; inheritsched : int) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:427
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_attr_setinheritsched";

   function pthread_once (once : access zephyr_posix_posix_types_h.pthread_once; initFunc : access procedure) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:429
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_once";

   procedure pthread_exit (retval : System.Address)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:431
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_exit";

   function pthread_timedjoin_np
     (thread : zephyr_posix_posix_types_h.pthread_t;
      status : System.Address;
      abstime : access constant sys_utimespec_h.timespec) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:432
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_timedjoin_np";

   function pthread_tryjoin_np (thread : zephyr_posix_posix_types_h.pthread_t; status : System.Address) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:433
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_tryjoin_np";

   function pthread_join (thread : zephyr_posix_posix_types_h.pthread_t; status : System.Address) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:434
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_join";

   function pthread_cancel (pthread : zephyr_posix_posix_types_h.pthread_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:435
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_cancel";

   function pthread_detach (thread : zephyr_posix_posix_types_h.pthread_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:436
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_detach";

   function pthread_create
     (newthread : access zephyr_posix_posix_types_h.pthread_t;
      attr : access constant zephyr_posix_posix_types_h.pthread_attr;
      threadroutine : access function (arg1 : System.Address) return System.Address;
      arg : System.Address) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:437
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_create";

   function pthread_setcancelstate (state : int; oldstate : access int) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:439
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_setcancelstate";

   function pthread_setcanceltype (c_type : int; oldtype : access int) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:440
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_setcanceltype";

   procedure pthread_testcancel  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:441
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_testcancel";

   function pthread_attr_setschedparam (attr : access zephyr_posix_posix_types_h.pthread_attr; schedparam : access constant zephyr_posix_sched_h.sched_param) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:442
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_attr_setschedparam";

   function pthread_setschedparam
     (pthread : zephyr_posix_posix_types_h.pthread_t;
      policy : int;
      param : access constant zephyr_posix_sched_h.sched_param) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:444
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_setschedparam";

   function pthread_setschedprio (thread : zephyr_posix_posix_types_h.pthread_t; prio : int) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:446
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_setschedprio";

   function pthread_rwlock_destroy (rwlock : access zephyr_posix_posix_types_h.pthread_rwlock_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:447
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_rwlock_destroy";

   function pthread_rwlock_init (rwlock : access zephyr_posix_posix_types_h.pthread_rwlock_t; attr : access zephyr_posix_posix_types_h.pthread_rwlockattr_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:448
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_rwlock_init";

   function pthread_rwlock_rdlock (rwlock : access zephyr_posix_posix_types_h.pthread_rwlock_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:450
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_rwlock_rdlock";

   function pthread_rwlock_timedrdlock (rwlock : access zephyr_posix_posix_types_h.pthread_rwlock_t; abstime : access constant sys_utimespec_h.timespec) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:451
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_rwlock_timedrdlock";

   function pthread_rwlock_timedwrlock (rwlock : access zephyr_posix_posix_types_h.pthread_rwlock_t; abstime : access constant sys_utimespec_h.timespec) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:453
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_rwlock_timedwrlock";

   function pthread_rwlock_tryrdlock (rwlock : access zephyr_posix_posix_types_h.pthread_rwlock_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:455
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_rwlock_tryrdlock";

   function pthread_rwlock_trywrlock (rwlock : access zephyr_posix_posix_types_h.pthread_rwlock_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:456
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_rwlock_trywrlock";

   function pthread_rwlock_unlock (rwlock : access zephyr_posix_posix_types_h.pthread_rwlock_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:457
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_rwlock_unlock";

   function pthread_rwlock_wrlock (rwlock : access zephyr_posix_posix_types_h.pthread_rwlock_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:458
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_rwlock_wrlock";

   function pthread_key_create (key : access zephyr_posix_posix_types_h.pthread_key_t; destructor : access procedure (arg1 : System.Address)) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:459
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_key_create";

   function pthread_key_delete (key : zephyr_posix_posix_types_h.pthread_key_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:461
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_key_delete";

   function pthread_setspecific (key : zephyr_posix_posix_types_h.pthread_key_t; value : System.Address) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:462
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_setspecific";

   function pthread_getspecific (key : zephyr_posix_posix_types_h.pthread_key_t) return System.Address  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:463
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_getspecific";

   function pthread_atfork
     (prepare : access procedure;
      parent : access procedure;
      child : access procedure) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:464
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_atfork";

   function pthread_getconcurrency return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:465
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_getconcurrency";

   function pthread_setconcurrency (new_level : int) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:466
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_setconcurrency";

   --  skipped func __z_pthread_cleanup_push

   --  skipped func __z_pthread_cleanup_pop

  -- Glibc / Oracle Extension Functions  
  --*
  -- * @brief Set name of POSIX thread.
  -- *
  -- * Non-portable, extension function that conforms with most
  -- * other definitions of this function.
  -- *
  -- * @param thread POSIX thread to set name
  -- * @param name Name string
  -- * @retval 0 Success
  -- * @retval ESRCH Thread does not exist
  -- * @retval EINVAL Name buffer is NULL
  -- * @retval <0 Negative value if kernel function error
  -- *
  --  

   function pthread_setname_np (thread : zephyr_posix_posix_types_h.pthread_t; name : Interfaces.C.Strings.chars_ptr) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:496
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_setname_np";

  --*
  -- * @brief Get name of POSIX thread and store in name buffer
  -- *  	  that is of size len.
  -- *
  -- * Non-portable, extension function that conforms with most
  -- * other definitions of this function.
  -- *
  -- * @param thread POSIX thread to obtain name information
  -- * @param name Destination buffer
  -- * @param len Destination buffer size
  -- * @retval 0 Success
  -- * @retval ESRCH Thread does not exist
  -- * @retval EINVAL Name buffer is NULL
  -- * @retval <0 negative value if kernel function error
  --  

   function pthread_getname_np
     (thread : zephyr_posix_posix_types_h.pthread_t;
      name : Interfaces.C.Strings.chars_ptr;
      len : stddef_h.size_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:513
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_getname_np";

  --*
  -- * @brief Destroy a pthread_spinlock_t.
  -- *
  -- * See IEEE 1003.1
  --  

   function pthread_spin_destroy (lock : access zephyr_posix_posix_types_h.pthread_spinlock_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:522
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_spin_destroy";

  --*
  -- * @brief Initialize a thread_spinlock_t.
  -- *
  -- * See IEEE 1003.1
  --  

   function pthread_spin_init (lock : access zephyr_posix_posix_types_h.pthread_spinlock_t; pshared : int) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:529
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_spin_init";

  --*
  -- * @brief Lock a previously initialized thread_spinlock_t.
  -- *
  -- * See IEEE 1003.1
  --  

   function pthread_spin_lock (lock : access zephyr_posix_posix_types_h.pthread_spinlock_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:536
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_spin_lock";

  --*
  -- * @brief Attempt to lock a previously initialized thread_spinlock_t.
  -- *
  -- * See IEEE 1003.1
  --  

   function pthread_spin_trylock (lock : access zephyr_posix_posix_types_h.pthread_spinlock_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:543
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_spin_trylock";

  --*
  -- * @brief Unlock a previously locked thread_spinlock_t.
  -- *
  -- * See IEEE 1003.1
  --  

   function pthread_spin_unlock (lock : access zephyr_posix_posix_types_h.pthread_spinlock_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/pthread.h:550
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_spin_unlock";

end zephyr_posix_pthread_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
