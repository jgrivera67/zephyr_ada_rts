pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with zephyr_arch_arch_interface_h;
with System;
with zephyr_sys_dlist_h;
with stddef_h;
with zephyr_sys_rb_h;
with sys_ustdint_h;
with zephyr_kernel_structs_h;
with zephyr_kernel_stats_h;
with Interfaces.C.Extensions;
with zephyr_arch_riscv_thread_h;
limited with zephyr_kernel_h;

package zephyr_kernel_thread_h is

  -- * Copyright (c) 2016, Wind River Systems, Inc.
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --

  --*
  -- * @typedef k_thread_entry_t
  -- * @brief Thread entry point function type.
  -- *
  -- * A thread's entry point function is invoked when the thread starts executing.
  -- * Up to 3 argument values can be passed to the function.
  -- *
  -- * The thread terminates execution permanently if the entry point function
  -- * returns. The thread is responsible for releasing any shared resources
  -- * it may own (such as mutexes and dynamically allocated memory), prior to
  -- * returning.
  -- *
  -- * @param p1 First argument.
  -- * @param p2 Second argument.
  -- * @param p3 Third argument.
  --

   type uu_thread_entry is record
      pEntry : zephyr_arch_arch_interface_h.k_thread_entry_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:36
      parameter1 : System.Address;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:37
      parameter2 : System.Address;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:38
      parameter3 : System.Address;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:39
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:35

  -- * This _pipe_desc structure is used by the pipes kernel module when
  -- * CONFIG_PIPES has been selected.
  --

   type k_thread;
   type u_pipe_desc is record
      node : aliased zephyr_sys_dlist_h.sys_dnode_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:51
      buffer : access unsigned_char;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:52
      bytes_to_xfer : aliased stddef_h.size_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:53
      thread : access k_thread;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:54
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:50

  -- Position in src/dest buffer
  -- # bytes left to transfer
  -- Back pointer to pended thread
  -- can be used for creating 'dummy' threads, e.g. for pending on objects
  -- this thread's entry in a ready/wait queue
  -- wait queue on which the thread is pended (needed only for
  --	 * trees, not dumb lists)
  --

  -- user facing 'thread options'; values defined in include/kernel.h
  -- thread state
  --	 * scheduler lock count and thread priority
  --	 *
  --	 * These two fields control the preemptibility of a thread.
  --	 *
  --	 * When the scheduler is locked, sched_locked is decremented, which
  --	 * means that the scheduler is locked for values from 0xff to 0x01. A
  --	 * thread is coop if its prio is negative, thus 0x80 to 0xff when
  --	 * looked at the value as unsigned.
  --	 *
  --	 * By putting them end-to-end, this means that a thread is
  --	 * non-preemptible if the bundled value is greater than or equal to
  --	 * 0x0080.
  --

   type anon_union1729 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            qnode_dlist : aliased zephyr_sys_dlist_h.sys_dnode_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:62
         when others =>
            qnode_rb : aliased zephyr_sys_rb_h.rbnode;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:63
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type anon_struct1733 is record
      prio : aliased sys_ustdint_h.int8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:97
      sched_locked : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:98
   end record
   with Convention => C_Pass_By_Copy;
   type anon_union1732 (discr : unsigned := 0) is record
      case discr is
            --??? anon3943 : aliased anon_struct1733;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:100
         when others =>
            preempt : aliased sys_ustdint_h.uint16_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:101
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type u_thread_base is record
      anon3935 : aliased anon_union1729;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:64
      pended_on : access zephyr_kernel_structs_h.u_wait_q_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:69
      user_options : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:72
      thread_state : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:75
      anon3945 : aliased anon_union1732;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:102
      order_key : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:108
      cpu_mask : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:125
      swap_data : System.Address;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:132
      timeout : aliased zephyr_kernel_structs_h.u_timeout;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:136
      usage : aliased zephyr_kernel_stats_h.k_cycle_stats;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:146
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:58

  -- True for the per-CPU idle threads
  -- CPU index on which thread was last run
  -- Recursive count of irq_lock() calls
  -- "May run on" bits for each CPU
  -- data returned by APIs
  -- this thread's entry in a timeout queue
  -- Track thread usage statistics
   subtype u_thread_base_t is u_thread_base;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:150

  -- Contains the stack information of a thread
  -- Stack start - Represents the start address of the thread-writable
  --	 * stack area.
  --

   type u_thread_stack_info is record
      start : aliased sys_ustdint_h.uintptr_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:158
      size : aliased stddef_h.size_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:167
      c_delta : aliased stddef_h.size_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:173
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:154

  -- Thread writable stack buffer size. Represents the size of the actual
  --	 * buffer, starting from the 'start' member, that should be writable by
  --	 * the thread. This comprises of the thread stack area, any area reserved
  --	 * for local thread data storage, as well as any area left-out due to
  --	 * random adjustments applied to the initial thread stack pointer during
  --	 * thread initialization.
  --

  -- Adjustment value to the size member, removing any storage
  --	 * used for TLS or random stack base offsets. (start + size - delta)
  --	 * is the initial stack pointer for a thread. May be 0.
  --

  --* Base address of the memory mapped thread stack
  --* Size of whole mapped stack object
   subtype u_thread_stack_info_t is u_thread_stack_info;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:186

  --* memory domain queue node
  --* memory domain of the thread
  --	 * For CPU stats, execution_cycles is the sum of non-idle + idle cycles.
  --	 * For thread stats, execution_cycles = total_cycles.
  --

  -- total # of cycles (cpu: non-idle + idle)
   type k_thread_runtime_stats is record
      execution_cycles : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:213
      total_cycles : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:214
      idle_cycles : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:237
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:207

  -- total # of non-idle cycles
  --	 * For threads, the following fields refer to the time spent executing
  --	 * as bounded by when the thread was scheduled in and scheduled out.
  --	 * For CPUs, the same fields refer to the time spent executing
  --	 * non-idle threads as bounded by the idle thread(s).
  --

  -- current # of non-idle cycles
  -- peak # of non-idle cycles
  -- average # of non-idle cycles
  --	 * This field is always zero for individual threads. It only comes
  --	 * into play when gathering statistics for the CPU. In that case it
  --	 * represents the total number of cycles spent idling.
  --

  -- If none of the above Kconfig values are defined, this struct will have a size 0 in C
  --	 * which is not allowed in C++ (it'll have a size 1). To prevent this, we add a 1 byte dummy
  --	 * variable when the struct would otherwise be empty.
  --

   subtype k_thread_runtime_stats_t is k_thread_runtime_stats;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:248

   type z_poller is record
      is_polling : aliased Extensions.bool;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:251
      mode : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:252
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:250

  --*
  -- * @ingroup thread_apis
  -- * Thread Structure
  --

   subtype anon_array1740 is Interfaces.C.char_array (0 .. 31);
   type k_thread is record
      base : aliased u_thread_base;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:261
      callee_saved : aliased zephyr_arch_riscv_thread_h.u_callee_saved;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:264
      init_data : System.Address;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:267
      join_queue : aliased zephyr_kernel_structs_h.u_wait_q_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:270
      poller : aliased z_poller;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:273
      c_entry : aliased uu_thread_entry;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:288
      next_thread : access k_thread;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:291
      name : aliased anon_array1740;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:296
      stack_info : aliased u_thread_stack_info;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:317
      swap_retval : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:343
      switch_handle : System.Address;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:346
      resource_pool : access zephyr_kernel_h.k_heap;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:349
      tls : aliased sys_ustdint_h.uintptr_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:353
      arch : aliased zephyr_arch_riscv_thread_h.u_thread_arch;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:376
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:259

  --* defined by the architecture, but all archs need these
  --* static thread init data
  --* threads waiting in k_thread_join()
  --* true if timeout should not wake the thread
  --* thread entry and parameters description
  --* next item in list of all threads
  --* Thread name
  --* crude thread-local storage
  --* per-thread errno variable
  --* Stack Info
  --* memory domain info of the thread
  --*
  --	 * Base address of thread stack.
  --	 *
  --	 * If memory mapped stack (CONFIG_THREAD_STACK_MEM_MAPPED)
  --	 * is enabled, this is the physical address of the stack.
  --

  --* current syscall frame pointer
  -- When using __switch() a few previously arch-specific items
  --	 * become part of the core OS
  --

  --* z_swap() return value
  --* Context handle returned via arch_switch()
  --* resource pool
  -- Pointer to arch-specific TLS area
  --* Paging statistics
  --* Pipe descriptor used with blocking k_pipe operations
  --* threads waiting in k_thread_suspend()
  --* arch-specifics: must always be at the end
   subtype u_thread_t is k_thread;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:379

   type k_tid_t is access all k_thread;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/thread.h:380

end zephyr_kernel_thread_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
