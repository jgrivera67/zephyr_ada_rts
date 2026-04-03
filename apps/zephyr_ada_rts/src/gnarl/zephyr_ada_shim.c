/*
 * Copyright (c) 2024, German Rivera
 *
 * SPDX-License-Identifier: Apache-2.0
 */

/*
 * Zephyr Ada Shim - Non-inline wrappers for Zephyr inline syscall functions
 *
 * This file provides non-inline wrapper functions for Zephyr's inline syscall
 * functions, making them callable from Ada code.
 */

#include "zephyr_ada_shim.h"

/*
 * Thread management functions
 */

k_tid_t ada_k_thread_create(struct k_thread *new_thread,
                             k_thread_stack_t *stack,
                             size_t stack_size,
                             k_thread_entry_t entry,
                             void *p1, void *p2, void *p3,
                             int prio,
                             uint32_t options,
                             k_timeout_t delay)
{
    return k_thread_create(new_thread, stack, stack_size, entry,
                          p1, p2, p3, prio, options, delay);
}

k_tid_t ada_k_sched_current_thread_query(void)
{
    return k_sched_current_thread_query();
}

void ada_k_thread_priority_set(k_tid_t thread, int prio)
{
    k_thread_priority_set(thread, prio);
}

int ada_k_thread_priority_get(k_tid_t thread)
{
    return k_thread_priority_get(thread);
}

void ada_k_thread_suspend(k_tid_t thread)
{
    k_thread_suspend(thread);
}

void ada_k_thread_resume(k_tid_t thread)
{
    k_thread_resume(thread);
}

void ada_k_yield(void)
{
    k_yield();
}

/*
 * Thread custom data functions (for ATCB storage)
 */

void ada_k_thread_custom_data_set(void *value)
{
    k_thread_custom_data_set(value);
}

void *ada_k_thread_custom_data_get(void)
{
    return k_thread_custom_data_get();
}

/*
 * Time and sleep functions
 */

int64_t ada_k_uptime_ticks(void)
{
    return k_uptime_ticks();
}

int32_t ada_k_sleep(k_timeout_t timeout)
{
    return k_sleep(timeout);
}

/*
 * Interrupt lock/unlock for interrupt-priority protected objects.
 * irq_lock() saves the current interrupt state and disables interrupts;
 * irq_unlock() restores the saved state.  On single-CPU Zephyr targets
 * this provides the mutual exclusion required by Ada's ceiling-priority
 * protocol for objects with pragma Interrupt_Priority.
 */

unsigned int ada_irq_lock(void)
{
    return irq_lock();
}

void ada_irq_unlock(unsigned int key)
{
    irq_unlock(key);
}
