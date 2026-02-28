/*
 * Copyright (c) 2024, German Rivera
 *
 * SPDX-License-Identifier: Apache-2.0
 */

/*
 * Zephyr Ada Shim - Non-inline wrappers for Zephyr inline syscall functions
 *
 * Zephyr defines many kernel functions as static inline in syscall headers.
 * These functions cannot be directly imported by Ada as external C symbols.
 * This shim provides non-inline wrapper functions that Ada can call.
 */

#ifndef ZEPHYR_ADA_SHIM_H
#define ZEPHYR_ADA_SHIM_H

#include <zephyr/kernel.h>

#ifdef __cplusplus
extern "C" {
#endif

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
                             k_timeout_t delay);

k_tid_t ada_k_sched_current_thread_query(void);

void ada_k_thread_priority_set(k_tid_t thread, int prio);

int ada_k_thread_priority_get(k_tid_t thread);

void ada_k_thread_suspend(k_tid_t thread);

void ada_k_thread_resume(k_tid_t thread);

void ada_k_yield(void);

/*
 * Thread custom data functions (for ATCB storage)
 */

void ada_k_thread_custom_data_set(void *value);

void *ada_k_thread_custom_data_get(void);

/*
 * Time and sleep functions
 */

int64_t ada_k_uptime_ticks(void);

int32_t ada_k_sleep(k_timeout_t timeout);

#ifdef __cplusplus
}
#endif

#endif /* ZEPHYR_ADA_SHIM_H */
