pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;
with Interfaces.C.Extensions;

package zephyr_spinlock_h is

   --  unsupported macro: K_SPINLOCK_ONEXIT __attribute__((__cleanup__(z_spin_onexit)))
   --  unsupported macro: K_SPINLOCK_BREAK continue
   --  arg-macro: procedure K_SPINLOCK (lck)
   --    for (k_spinlock_key_t __i K_SPINLOCK_ONEXIT := {}, __key := k_spin_lock(lck); not__i.key; k_spin_unlock((lck), __key), __i.key := 1)
  -- * Copyright (c) 2018 Intel Corporation.
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  --*
  -- * @file
  -- * @brief Public interface for spinlocks
  --  

  --*
  -- * @brief Spinlock APIs
  -- * @defgroup spinlock_apis Spinlock APIs
  -- * @ingroup kernel_apis
  -- * @{
  --  

   type z_spinlock_key is record
      key : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/spinlock.h:35
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/spinlock.h:34

  --*
  -- * @brief Kernel Spin Lock
  -- *
  -- * This struct defines a spin lock record on which CPUs can wait with
  -- * k_spin_lock().  Any number of spinlocks may be defined in
  -- * application code.
  --  

  --*
  -- * @cond INTERNAL_HIDDEN
  --  

  --	 * Ticket spinlocks are conceptually two atomic variables,
  --	 * one indicating the current FIFO head (spinlock owner),
  --	 * and the other indicating the current FIFO tail.
  --	 * Spinlock is acquired in the following manner:
  --	 * - current FIFO tail value is atomically incremented while it's
  --	 *   original value is saved as a "ticket"
  --	 * - we spin until the FIFO head becomes equal to the ticket value
  --	 *
  --	 * Spinlock is released by atomic increment of the FIFO head
  --	  

  -- Stores the thread that holds the lock with the locking CPU
  --	 * ID in the bottom two bits.
  --	  

   type k_spinlock is record
      thread_cpu : aliased sys_ustdint_h.uintptr_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/spinlock.h:73
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/spinlock.h:45

  -- Stores the time (in cycles) when a lock was taken
  --	  

  -- If CONFIG_SMP and CONFIG_SPIN_VALIDATE are both not defined
  --	 * the k_spinlock struct will have no members. The result
  --	 * is that in C sizeof(k_spinlock) is 0 and in C++ it is 1.
  --	 *
  --	 * This size difference causes problems when the k_spinlock
  --	 * is embedded into another struct like k_msgq, because C and
  --	 * C++ will have different ideas on the offsets of the members
  --	 * that come after the k_spinlock member.
  --	 *
  --	 * To prevent this we add a 1 byte dummy member to k_spinlock
  --	 * when the user selects C++ support and k_spinlock would
  --	 * otherwise be empty.
  --	  

  --*
  -- * INTERNAL_HIDDEN @endcond
  --  

  -- There's a spinlock validation framework available when asserts are
  -- * enabled.  It adds a relatively hefty overhead (about 3k or so) to
  -- * kernel code size, don't use on platforms known to be small.
  --  

   function z_spin_lock_valid (l : access k_spinlock) return Extensions.bool  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/spinlock.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "z_spin_lock_valid";

   function z_spin_unlock_valid (l : access k_spinlock) return Extensions.bool  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/spinlock.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "z_spin_unlock_valid";

   procedure z_spin_lock_set_owner (l : access k_spinlock)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/spinlock.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "z_spin_lock_set_owner";

  --*
  -- * @brief Spinlock key type
  -- *
  -- * This type defines a "key" value used by a spinlock implementation
  -- * to store the system interrupt state at the time of a call to
  -- * k_spin_lock().  It is expected to be passed to a matching
  -- * k_spin_unlock().
  -- *
  -- * This type is opaque and should not be inspected by application
  -- * code.
  --  

   subtype k_spinlock_key_t is z_spinlock_key;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/spinlock.h:130

   procedure z_spinlock_validate_pre (l : access k_spinlock)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/spinlock.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "z_spinlock_validate_pre";

   procedure z_spinlock_validate_post (l : access k_spinlock)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/spinlock.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "z_spinlock_validate_post";

  --*
  -- * @brief Lock a spinlock
  -- *
  -- * This routine locks the specified spinlock, returning a key handle
  -- * representing interrupt state needed at unlock time.  Upon
  -- * returning, the calling thread is guaranteed not to be suspended or
  -- * interrupted on its current CPU until it calls k_spin_unlock().  The
  -- * implementation guarantees mutual exclusion: exactly one thread on
  -- * one CPU will return from k_spin_lock() at a time.  Other CPUs
  -- * trying to acquire a lock already held by another CPU will enter an
  -- * implementation-defined busy loop ("spinning") until the lock is
  -- * released.
  -- *
  -- * Separate spin locks may be nested. It is legal to lock an
  -- * (unlocked) spin lock while holding a different lock.  Spin locks
  -- * are not recursive, however: an attempt to acquire a spin lock that
  -- * the CPU already holds will deadlock.
  -- *
  -- * In circumstances where only one CPU exists, the behavior of
  -- * k_spin_lock() remains as specified above, though obviously no
  -- * spinning will take place.  Implementations may be free to optimize
  -- * in uniprocessor contexts such that the locking reduces to an
  -- * interrupt mask operation.
  -- *
  -- * @param l A pointer to the spinlock to lock
  -- * @return A key value that must be passed to k_spin_unlock() when the
  -- *         lock is released.
  --  

   function k_spin_lock (l : access k_spinlock) return k_spinlock_key_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/spinlock.h:182
   with Import => True, 
        Convention => C, 
        External_Name => "k_spin_lock";

  -- Note that we need to use the underlying arch-specific lock
  --	 * implementation.  The "irq_lock()" API in SMP context is
  --	 * actually a wrapper for a global spinlock!
  --	  

  --	 * Enqueue ourselves to the end of a spinlock waiters queue
  --	 * receiving a ticket
  --	  

  -- Spin until our ticket is served  
  --*
  -- * @brief Attempt to lock a spinlock
  -- *
  -- * This routine makes one attempt to lock @p l. If it is successful, then
  -- * it will store the key into @p k.
  -- *
  -- * @param[in] l A pointer to the spinlock to lock
  -- * @param[out] k A pointer to the spinlock key
  -- * @retval 0 on success
  -- * @retval -EBUSY if another thread holds the lock
  -- *
  -- * @see k_spin_lock
  -- * @see k_spin_unlock
  --  

   function k_spin_trylock (l : access k_spinlock; k : access k_spinlock_key_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/spinlock.h:230
   with Import => True, 
        Convention => C, 
        External_Name => "k_spin_trylock";

  --	 * atomic_get and atomic_cas operations below are not executed
  --	 * simultaneously.
  --	 * So in theory k_spin_trylock can lock an already locked spinlock.
  --	 * To reproduce this the following conditions should be met after we
  --	 * executed atomic_get and before we executed atomic_cas:
  --	 *
  --	 * - spinlock needs to be taken 0xffff_..._ffff + 1 times
  --	 * (which requires 0xffff_..._ffff number of CPUs, as k_spin_lock call
  --	 * is blocking) or
  --	 * - spinlock needs to be taken and released 0xffff_..._ffff times and
  --	 * then taken again
  --	 *
  --	 * In real-life systems this is considered non-reproducible given that
  --	 * required actions need to be done during this tiny window of several
  --	 * CPU instructions (which execute with interrupt locked,
  --	 * so no preemption can happen here)
  --	  

  --*
  -- * @brief Unlock a spin lock
  -- *
  -- * This releases a lock acquired by k_spin_lock().  After this
  -- * function is called, any CPU will be able to acquire the lock.  If
  -- * other CPUs are currently spinning inside k_spin_lock() waiting for
  -- * this lock, exactly one of them will return synchronously with the
  -- * lock held.
  -- *
  -- * Spin locks must be properly nested.  A call to k_spin_unlock() must
  -- * be made on the lock object most recently locked using
  -- * k_spin_lock(), using the key value that it returned.  Attempts to
  -- * unlock mis-nested locks, or to unlock locks that are not held, or
  -- * to passing a key parameter other than the one returned from
  -- * k_spin_lock(), are illegal.  When CONFIG_SPIN_VALIDATE is set, some
  -- * of these errors can be detected by the framework.
  -- *
  -- * @param l A pointer to the spinlock to release
  -- * @param key The value returned from k_spin_lock() when this lock was
  -- *        acquired
  --  

   procedure k_spin_unlock (l : access k_spinlock; key : k_spinlock_key_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/spinlock.h:300
   with Import => True, 
        Convention => C, 
        External_Name => "k_spin_unlock";

  -- Give the spinlock to the next CPU in a FIFO  
  -- Strictly we don't need atomic_clear() here (which is an
  --	 * exchange operation that returns the old value).  We are always
  --	 * setting a zero and (because we hold the lock) know the existing
  --	 * state won't change due to a race.  But some architectures need
  --	 * a memory barrier when used like this, and we don't have a
  --	 * Zephyr framework for that.
  --	  

  --*
  -- * @cond INTERNAL_HIDDEN
  --  

  -- * @brief Checks if spinlock is held by some CPU, including the local CPU.
  -- *		This API shouldn't be used outside the tests for spinlock
  -- *
  -- * @param l A pointer to the spinlock
  -- * @retval true - if spinlock is held by some CPU; false - otherwise
  --  

  -- Internal function: releases the lock, but leaves local interrupts disabled  
   procedure k_spin_release (l : access k_spinlock)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/spinlock.h:359
   with Import => True, 
        Convention => C, 
        External_Name => "k_spin_release";

   procedure z_spin_onexit (k : access k_spinlock_key_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/spinlock.h:375
   with Import => True, 
        Convention => C, 
        External_Name => "z_spin_onexit";

  --*
  -- * INTERNAL_HIDDEN @endcond
  --  

  --*
  -- * @brief Leaves a code block guarded with @ref K_SPINLOCK after releasing the
  -- * lock.
  -- *
  -- * See @ref K_SPINLOCK for details.
  --  

  --*
  -- * @brief Guards a code block with the given spinlock, automatically acquiring
  -- * the lock before executing the code block. The lock will be released either
  -- * when reaching the end of the code block or when leaving the block with
  -- * @ref K_SPINLOCK_BREAK.
  -- *
  -- * @details Example usage:
  -- *
  -- * @code{.c}
  -- * K_SPINLOCK(&mylock) {
  -- *
  -- *   ...execute statements with the lock held...
  -- *
  -- *   if (some_condition) {
  -- *     ...release the lock and leave the guarded section prematurely:
  -- *     K_SPINLOCK_BREAK;
  -- *   }
  -- *
  -- *   ...execute statements with the lock held...
  -- *
  -- * }
  -- * @endcode
  -- *
  -- * Behind the scenes this pattern expands to a for-loop whose body is executed
  -- * exactly once:
  -- *
  -- * @code{.c}
  -- * for (k_spinlock_key_t key = k_spin_lock(&mylock); ...; k_spin_unlock(&mylock, key)) {
  -- *     ...
  -- * }
  -- * @endcode
  -- *
  -- * @warning The code block must execute to its end or be left by calling
  -- * @ref K_SPINLOCK_BREAK. Otherwise, e.g. if exiting the block with a break,
  -- * goto or return statement, the spinlock will not be released on exit.
  -- *
  -- * @note In user mode the spinlock must be placed in memory accessible to the
  -- * application, see @ref K_APP_DMEM and @ref K_APP_BMEM macros for details.
  -- *
  -- * @param lck Spinlock used to guard the enclosed code block.
  --  

  --* @}  
end zephyr_spinlock_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
