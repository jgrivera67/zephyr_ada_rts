pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with zephyr_sys_rb_h;
with zephyr_sys_dlist_h;
limited with zephyr_kernel_thread_h;
with sys_ustdint_h;
with Interfaces.C.Strings;
with zephyr_kernel_stats_h;
with zephyr_arch_arm_structs_h;
with System;

package zephyr_kernel_structs_h is
   pragma Preelaborate;

   --  unsupported macro: K_NUM_THREAD_PRIO (CONFIG_NUM_PREEMPT_PRIORITIES + CONFIG_NUM_COOP_PRIORITIES + 1)
   --  unsupported macro: PRIQ_BITMAP_SIZE (DIV_ROUND_UP(K_NUM_THREAD_PRIO, BITS_PER_LONG))
   --  unsupported macro: CPU_ID ((CONFIG_MP_MAX_NUM_CPUS == 1) ? 0 : _current_cpu->id)
   --  arg-macro: function z_current_thread_set (thread)
   --    return { _current_cpu.current := (thread); };
   --  arg-macro: procedure Z_WAIT_Q_INIT (wait_q)
   --    { SYS_DLIST_STATIC_INIT(and(wait_q).waitq) }
  -- * Copyright (c) 2016 Wind River Systems, Inc.
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  -- * The purpose of this file is to provide essential/minimal kernel structure
  -- * definitions, so that they can be used without including kernel.h.
  -- *
  -- * The following rules must be observed:
  -- *  1. kernel_structs.h shall not depend on kernel.h both directly and
  -- *    indirectly (i.e. it shall not include any header files that include
  -- *    kernel.h in their dependency chain).
  -- *  2. kernel.h shall imply kernel_structs.h, such that it shall not be
  -- *    necessary to include kernel_structs.h explicitly when kernel.h is
  -- *    included.
  --  

  -- * Bitmask definitions for the struct k_thread.thread_state field.
  -- *
  -- * Must be before kernel_arch_data.h because it might need them to be already
  -- * defined.
  --  

  -- states: common uses low bits, arch-specific use high bits  
  -- Not a real thread  
  -- Thread is waiting on an object  
  -- Thread is sleeping  
  -- Thread has terminated  
  -- Thread is suspended  
  -- Thread is in the process of aborting  
  -- Thread is in the process of suspending  
  -- Thread is present in the ready queue  
  -- end - states  
  -- Magic value in lowest bytes of the stack  
  -- lowest value of _thread_base.preempt at which a thread is non-preemptible  
  -- highest value of _thread_base.preempt at which a thread is preemptible  
  -- Two abstractions are defined here for "thread priority queues".
  -- *
  -- * One is a "dumb" list implementation appropriate for systems with
  -- * small numbers of threads and sensitive to code size.  It is stored
  -- * in sorted order, taking an O(N) cost every time a thread is added
  -- * to the list.  This corresponds to the way the original _wait_q_t
  -- * abstraction worked and is very fast as long as the number of
  -- * threads is small.
  -- *
  -- * The other is a balanced tree "fast" implementation with rather
  -- * larger code size (due to the data structure itself, the code here
  -- * is just stubs) and higher constant-factor performance overhead, but
  -- * much better O(logN) scaling in the presence of large number of
  -- * threads.
  -- *
  -- * Each can be used for either the wait_q or system ready queue,
  -- * configurable at build time.
  --  

   type u_priq_rb is record
      tree : aliased zephyr_sys_rb_h.rbtree;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel_structs.h:110
      next_order_key : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel_structs.h:111
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel_structs.h:109

  -- Traditional/textbook "multi-queue" structure.  Separate lists for a
  -- * small number (max 32 here) of fixed priorities.  This corresponds
  -- * to the original Zephyr scheduler.  RAM requirements are
  -- * comparatively high, but performance is very fast.  Won't work with
  -- * features like deadline scheduling which need large priority spaces
  -- * to represent their requirements.
  --  

   type anon_array1404 is array (0 .. 48) of aliased zephyr_sys_dlist_h.sys_dlist_t;
   type anon_array1406 is array (0 .. 1) of aliased unsigned_long;
   type u_priq_mq is record
      queues : aliased anon_array1404;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel_structs.h:123
      bitmask : aliased anon_array1406;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel_structs.h:124
      cached_queue_index : aliased unsigned;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel_structs.h:126
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel_structs.h:122

  -- always contains next thread to run: cannot be NULL  
   type u_ready_q is record
      cache : access zephyr_kernel_thread_h.k_thread;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel_structs.h:133
      runq : aliased zephyr_sys_dlist_h.sys_dlist_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel_structs.h:137
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel_structs.h:130

   subtype u_ready_q_t is u_ready_q;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel_structs.h:145

  -- nested interrupt count  
   type u_cpu is record
      nested : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel_structs.h:149
      irq_stack : Interfaces.C.Strings.chars_ptr;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel_structs.h:152
      current : access zephyr_kernel_thread_h.k_thread;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel_structs.h:155
      idle_thread : access zephyr_kernel_thread_h.k_thread;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel_structs.h:158
      id : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel_structs.h:169
      usage0 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel_structs.h:187
      usage : access zephyr_kernel_stats_h.k_cycle_stats;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel_structs.h:190
      arch : aliased zephyr_arch_arm_structs_h.u_cpu_arch;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel_structs.h:203
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel_structs.h:147

  -- interrupt stack pointer base  
  -- currently scheduled thread  
  -- one assigned idle thread per CPU  
  -- Coop thread preempted by current metairq, or NULL  
  -- True when _current is allowed to context switch  
  --	 * [usage0] is used as a timestamp to mark the beginning of an
  --	 * execution window. [0] is a special value indicating that it
  --	 * has been stopped (but not disabled).
  --	  

  -- Per CPU architecture specifics  
   subtype u_cpu_t is u_cpu;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel_structs.h:206

   type anon_array1415 is array (0 .. 0) of aliased u_cpu;
   type anon_array1416 is array (0 .. 0) of aliased zephyr_kernel_stats_h.k_cycle_stats;
   type z_kernel is record
      cpus : aliased anon_array1415;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel_structs.h:209
      ready_q : aliased u_ready_q;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel_structs.h:220
      threads : access zephyr_kernel_thread_h.k_thread;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel_structs.h:224
      usage : aliased anon_array1416;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel_structs.h:227
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel_structs.h:208

  -- Number of ticks for kernel idling  
  --	 * ready queue: can be big, keep after small fields, since some
  --	 * assembly (e.g. ARC) are limited in the encoding of the offset
  --	  

  -- singly linked list of ALL threads  
  -- Identify CPUs to send IPIs to at the next scheduling point  
   subtype u_kernel_t is z_kernel;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel_structs.h:240

  -- True if the current context can be preempted and migrated to
  -- * another SMP CPU.
  --  

  -- This is always invoked from a context where preemption is disabled  
  -- kernel wait queue record  
  -- defined in kernel/priority_queues.c  
   type u_wait_q_t is record
      waitq : aliased zephyr_sys_dlist_h.sys_dlist_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel_structs.h:291
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel_structs.h:292

  -- kernel timeout record  
   type u_timeout;
   type u_timeout_func_t is access procedure (arg1 : access u_timeout)
   with Convention => C;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel_structs.h:300

   type u_timeout is record
      node : aliased zephyr_sys_dlist_h.sys_dnode_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel_structs.h:303
      fn : u_timeout_func_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel_structs.h:304
      dticks : aliased sys_ustdint_h.int64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel_structs.h:307
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel_structs.h:302

  -- Can't use k_ticks_t for header dependency reasons  
   type k_thread_timeslice_fn_t is access procedure (arg1 : access zephyr_kernel_thread_h.k_thread; arg2 : System.Address)
   with Convention => C;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel_structs.h:313

end zephyr_kernel_structs_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
