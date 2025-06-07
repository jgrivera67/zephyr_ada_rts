pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package zephyr_tracing_tracing_h is

  -- * Copyright (c) 2018 Intel Corporation
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  --*
  -- * @brief Tracing
  -- *
  -- * The tracing subsystem provides hooks that permits you to collect data from
  -- * your application and allows tools running on a host to visualize the
  -- * inner-working of the kernel and various other subsystems.
  -- *
  -- * @defgroup subsys_tracing Tracing
  -- * @ingroup os_services
  -- * @{
  --  

  --*
  -- * @brief Tracing APIs
  -- * @defgroup subsys_tracing_apis Tracing APIs
  -- * @{
  --  

  --*
  -- * @brief Thread Tracing APIs
  -- * @defgroup subsys_tracing_apis_thread Thread Tracing APIs
  -- * @{
  --  

  --*
  -- * @brief Called when entering a k_thread_foreach call
  --  

  --*
  -- * @brief Called when exiting a k_thread_foreach call
  --  

  --*
  -- * @brief Called when entering a k_thread_foreach_unlocked
  --  

  --*
  -- * @brief Called when exiting a k_thread_foreach_unlocked
  --  

  --*
  -- * @brief Trace creating a Thread
  -- * @param new_thread Thread object
  --  

  --*
  -- * @brief Trace Thread entering user mode
  --  

  --*
  -- * @brief Called when entering a k_thread_join
  -- * @param thread Thread object
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Called when k_thread_join blocks
  -- * @param thread Thread object
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Called when exiting k_thread_join
  -- * @param thread Thread object
  -- * @param timeout Timeout period
  -- * @param ret Return value
  --  

  --*
  -- * @brief Called when entering k_thread_sleep
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Called when exiting k_thread_sleep
  -- * @param timeout Timeout period
  -- * @param ret Return value
  --  

  --*
  -- * @brief Called when entering k_thread_msleep
  -- * @param ms Duration in milliseconds
  --  

  --*
  -- * @brief Called when exiting k_thread_msleep
  -- * @param ms Duration in milliseconds
  -- * @param ret Return value
  --  

  --*
  -- * @brief Called when entering k_thread_usleep
  -- * @param us Duration in microseconds
  --  

  --*
  -- * @brief Called when exiting k_thread_usleep
  -- * @param us Duration in microseconds
  -- * @param ret Return value
  --  

  --*
  -- * @brief Called when entering k_thread_busy_wait
  -- * @param usec_to_wait Duration in microseconds
  --  

  --*
  -- * @brief Called when exiting k_thread_busy_wait
  -- * @param usec_to_wait Duration in microseconds
  --  

  --*
  -- * @brief Called when a thread yields
  --  

  --*
  -- * @brief Called when a thread wakes up
  -- * @param thread Thread object
  --  

  --*
  -- * @brief Called when a thread is started
  -- * @param thread Thread object
  --  

  --*
  -- * @brief Called when a thread is being aborted
  -- * @param thread Thread object
  --  

  --*
  -- * @brief Called when a thread enters the k_thread_abort routine
  -- * @param thread Thread object
  --  

  --*
  -- * @brief Called when a thread exits the k_thread_abort routine
  -- * @param thread Thread object
  --  

  --*
  -- * @brief Called when setting priority of a thread
  -- * @param thread Thread object
  --  

  --*
  -- * @brief Called when a thread enters the k_thread_suspend
  -- * function.
  -- * @param thread Thread object
  --  

  --*
  -- * @brief Called when a thread exits the k_thread_suspend
  -- * function.
  -- * @param thread Thread object
  --  

  --*
  -- * @brief Called when a thread enters the resume from suspension
  -- * function.
  -- * @param thread Thread object
  --  

  --*
  -- * @brief Called when a thread exits the resumed from suspension
  -- * function.
  -- * @param thread Thread object
  --  

  --*
  -- * @brief Called when the thread scheduler is locked
  --  

  --*
  -- * @brief Called when the thread scheduler is unlocked
  --  

  --*
  -- * @brief Called when a thread name is set
  -- * @param thread Thread object
  -- * @param ret Return value
  --  

  --*
  -- * @brief Called before a thread has been selected to run
  --  

  --*
  -- * @brief Called after a thread has been selected to run
  --  

  --*
  -- * @brief Called when a thread is ready to run
  -- * @param thread Thread object
  --  

  --*
  -- * @brief Called when a thread is pending
  -- * @param thread Thread object
  --  

  --*
  -- * @brief Provide information about specific thread
  -- * @param thread Thread object
  --  

  --*
  -- * @brief Trace implicit thread wakeup invocation by the scheduler
  -- * @param thread Thread object
  --  

  --*
  -- * @brief Trace implicit thread abort invocation by the scheduler
  -- * @param thread Thread object
  --  

  --*
  -- * @brief Trace implicit thread set priority invocation by the scheduler
  -- * @param thread Thread object
  -- * @param prio Thread priority
  --  

  --*
  -- * @brief Trace implicit thread ready invocation by the scheduler
  -- * @param thread Thread object
  --  

  --*
  -- * @brief Trace implicit thread pend invocation by the scheduler
  -- * @param thread Thread object
  --  

  --*
  -- * @brief Trace implicit thread resume invocation by the scheduler
  -- * @param thread Thread object
  --  

  --*
  -- * @brief Trace implicit thread suspend invocation by the scheduler
  -- * @param thread Thread object
  --  

  --* @}c 
  -- end of subsys_tracing_apis_thread  
  --*
  -- * @brief Work Tracing APIs
  -- * @defgroup subsys_tracing_apis_work Work Tracing APIs
  -- * @{
  --  

  --*
  -- * @brief Trace initialisation of a Work structure
  -- * @param work Work structure
  --  

  --*
  -- * @brief Trace submit work to work queue call entry
  -- * @param queue Work queue structure
  -- * @param work Work structure
  --  

  --*
  -- * @brief Trace submit work to work queue call exit
  -- * @param queue Work queue structure
  -- * @param work Work structure
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace submit work to system work queue call entry
  -- * @param work Work structure
  --  

  --*
  -- * @brief Trace submit work to system work queue call exit
  -- * @param work Work structure
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace flush work call entry
  -- * @param work Work structure
  --  

  --*
  -- * @brief Trace flush work call blocking
  -- * @param work Work structure
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace flush work call exit
  -- * @param work Work structure
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace cancel work call entry
  -- * @param work Work structure
  --  

  --*
  -- * @brief Trace cancel work call exit
  -- * @param work Work structure
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace cancel sync work call entry
  -- * @param work Work structure
  -- * @param sync Sync object
  --  

  --*
  -- * @brief Trace cancel sync work call blocking
  -- * @param work Work structure
  -- * @param sync Sync object
  --  

  --*
  -- * @brief Trace cancel sync work call exit
  -- * @param work Work structure
  -- * @param sync Sync object
  -- * @param ret Return value
  --  

  --* @}  
  -- end of subsys_tracing_apis_work  
  --*
  -- * @brief Work Queue Tracing APIs
  -- * @defgroup subsys_tracing_apis_work_q Work Queue Tracing APIs
  -- * @{
  --  

  --*
  -- * @brief Trace initialisation of a Work Queue structure
  -- * @param queue Work Queue structure
  --  

  --*
  -- * @brief Trace start of a Work Queue call entry
  -- * @param queue Work Queue structure
  --  

  --*
  -- * @brief Trace start of a Work Queue call exit
  -- * @param queue Work Queue structure
  --  

  --*
  -- * @brief Trace stop of a Work Queue call entry
  -- * @param queue Work Queue structure
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace stop of a Work Queue call blocking
  -- * @param queue Work Queue structure
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace stop of a Work Queue call exit
  -- * @param queue Work Queue structure
  -- * @param timeout Timeout period
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace Work Queue drain call entry
  -- * @param queue Work Queue structure
  --  

  --*
  -- * @brief Trace Work Queue drain call exit
  -- * @param queue Work Queue structure
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace Work Queue unplug call entry
  -- * @param queue Work Queue structure
  --  

  --*
  -- * @brief Trace Work Queue unplug call exit
  -- * @param queue Work Queue structure
  -- * @param ret Return value
  --  

  --* @}  
  -- end of subsys_tracing_apis_work_q  
  --*
  -- * @brief Work Delayable Tracing APIs
  -- * @defgroup subsys_tracing_apis_work_delayable Work Delayable Tracing APIs
  -- * @{
  --  

  --*
  -- * @brief Trace initialisation of a Delayable Work structure
  -- * @param dwork Delayable Work structure
  --  

  --*
  -- * @brief Trace schedule delayable work for queue enter
  -- * @param queue Work Queue structure
  -- * @param dwork Delayable Work structure
  -- * @param delay Delay period
  --  

  --*
  -- * @brief Trace schedule delayable work for queue exit
  -- * @param queue Work Queue structure
  -- * @param dwork Delayable Work structure
  -- * @param delay Delay period
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace schedule delayable work for system work queue enter
  -- * @param dwork Delayable Work structure
  -- * @param delay Delay period
  --  

  --*
  -- * @brief Trace schedule delayable work for system work queue exit
  -- * @param dwork Delayable Work structure
  -- * @param delay Delay period
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace reschedule delayable work for queue enter
  -- * @param queue Work Queue structure
  -- * @param dwork Delayable Work structure
  -- * @param delay Delay period
  --  

  --*
  -- * @brief Trace reschedule delayable work for queue exit
  -- * @param queue Work Queue structure
  -- * @param dwork Delayable Work structure
  -- * @param delay Delay period
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace reschedule delayable work for system queue enter
  -- * @param dwork Delayable Work structure
  -- * @param delay Delay period
  --  

  --*
  -- * @brief Trace reschedule delayable work for system queue exit
  -- * @param dwork Delayable Work structure
  -- * @param delay Delay period
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace delayable work flush enter
  -- * @param dwork Delayable Work structure
  -- * @param sync Sync object
  --  

  --*
  -- * @brief Trace delayable work flush exit
  -- * @param dwork Delayable Work structure
  -- * @param sync Sync object
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace delayable work cancel enter
  -- * @param dwork Delayable Work structure
  --  

  --*
  -- * @brief Trace delayable work cancel enter
  -- * @param dwork Delayable Work structure
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace delayable work cancel sync enter
  -- * @param dwork Delayable Work structure
  -- * @param sync Sync object
  --  

  --*
  -- * @brief Trace delayable work cancel sync enter
  -- * @param dwork Delayable Work structure
  -- * @param sync Sync object
  -- * @param ret Return value
  --  

  --* @}  
  -- end of subsys_tracing_apis_work_delayable  
  --*
  -- * @brief Work Poll Tracing APIs
  -- * @defgroup subsys_tracing_apis_work_poll Work Poll Tracing APIs
  -- * @{
  --  

  --*
  -- * @brief Trace initialisation of a Work Poll structure enter
  -- * @param work Work structure
  --  

  --*
  -- * @brief Trace initialisation of a Work Poll structure exit
  -- * @param work Work structure
  --  

  --*
  -- * @brief Trace work poll submit to queue enter
  -- * @param work_q Work queue
  -- * @param work Work structure
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace work poll submit to queue blocking
  -- * @param work_q Work queue
  -- * @param work Work structure
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace work poll submit to queue exit
  -- * @param work_q Work queue
  -- * @param work Work structure
  -- * @param timeout Timeout period
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace work poll submit to system queue enter
  -- * @param work Work structure
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace work poll submit to system queue exit
  -- * @param work Work structure
  -- * @param timeout Timeout period
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace work poll cancel enter
  -- * @param work Work structure
  --  

  --*
  -- * @brief Trace work poll cancel exit
  -- * @param work Work structure
  -- * @param ret Return value
  --  

  --* @}  
  -- end of subsys_tracing_apis_work_poll  
  --*
  -- * @brief Poll Tracing APIs
  -- * @defgroup subsys_tracing_apis_poll Poll Tracing APIs
  -- * @{
  --  

  --*
  -- * @brief Trace initialisation of a Poll Event
  -- * @param event Poll Event
  --  

  --*
  -- * @brief Trace Polling call start
  -- * @param events Poll Events
  --  

  --*
  -- * @brief Trace Polling call outcome
  -- * @param events Poll Events
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace initialisation of a Poll Signal
  -- * @param signal Poll Signal
  --  

  --*
  -- * @brief Trace resetting of Poll Signal
  -- * @param signal Poll Signal
  --  

  --*
  -- * @brief Trace checking of Poll Signal
  -- * @param signal Poll Signal
  --  

  --*
  -- * @brief Trace raising of Poll Signal
  -- * @param signal Poll Signal
  -- * @param ret Return value
  --  

  --* @}  
  -- end of subsys_tracing_apis_poll  
  --*
  -- * @brief Semaphore Tracing APIs
  -- * @defgroup subsys_tracing_apis_sem Semaphore Tracing APIs
  -- * @{
  --  

  --*
  -- * @brief Trace initialisation of a Semaphore
  -- * @param sem Semaphore object
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace giving a Semaphore entry
  -- * @param sem Semaphore object
  --  

  --*
  -- * @brief Trace giving a Semaphore exit
  -- * @param sem Semaphore object
  --  

  --*
  -- * @brief Trace taking a Semaphore attempt start
  -- * @param sem Semaphore object
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace taking a Semaphore attempt blocking
  -- * @param sem Semaphore object
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace taking a Semaphore attempt outcome
  -- * @param sem Semaphore object
  -- * @param timeout Timeout period
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace resetting a Semaphore
  -- * @param sem Semaphore object
  --  

  --* @}  
  -- end of subsys_tracing_apis_sem  
  --*
  -- * @brief Mutex Tracing APIs
  -- * @defgroup subsys_tracing_apis_mutex Mutex Tracing APIs
  -- * @{
  --  

  --*
  -- * @brief Trace initialization of Mutex
  -- * @param mutex Mutex object
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace Mutex lock attempt start
  -- * @param mutex Mutex object
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace Mutex lock attempt blocking
  -- * @param mutex Mutex object
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace Mutex lock attempt outcome
  -- * @param mutex Mutex object
  -- * @param timeout Timeout period
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace Mutex unlock entry
  -- * @param mutex Mutex object
  --  

  --*
  -- * @brief Trace Mutex unlock exit
  --  

  --* @}  
  -- end of subsys_tracing_apis_mutex  
  --*
  -- * @brief Conditional Variable Tracing APIs
  -- * @defgroup subsys_tracing_apis_condvar Conditional Variable Tracing APIs
  -- * @{
  --  

  --*
  -- * @brief Trace initialization of Conditional Variable
  -- * @param condvar Conditional Variable object
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace Conditional Variable signaling start
  -- * @param condvar Conditional Variable object
  --  

  --*
  -- * @brief Trace Conditional Variable signaling blocking
  -- * @param condvar Conditional Variable object
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace Conditional Variable signaling outcome
  -- * @param condvar Conditional Variable object
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace Conditional Variable broadcast enter
  -- * @param condvar Conditional Variable object
  --  

  --*
  -- * @brief Trace Conditional Variable broadcast exit
  -- * @param condvar Conditional Variable object
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace Conditional Variable wait enter
  -- * @param condvar Conditional Variable object
  --  

  --*
  -- * @brief Trace Conditional Variable wait exit
  -- * @param condvar Conditional Variable object
  -- * @param ret Return value
  --  

  --* @}  
  -- end of subsys_tracing_apis_condvar  
  --*
  -- * @brief Queue Tracing APIs
  -- * @defgroup subsys_tracing_apis_queue Queue Tracing APIs
  -- * @{
  --  

  --*
  -- * @brief Trace initialization of Queue
  -- * @param queue Queue object
  --  

  --*
  -- * @brief Trace Queue cancel wait
  -- * @param queue Queue object
  --  

  --*
  -- * @brief Trace Queue insert attempt entry
  -- * @param queue Queue object
  -- * @param alloc Allocation flag
  --  

  --*
  -- * @brief Trace Queue insert attempt blocking
  -- * @param queue Queue object
  -- * @param alloc Allocation flag
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace Queue insert attempt outcome
  -- * @param queue Queue object
  -- * @param alloc Allocation flag
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace Queue append enter
  -- * @param queue Queue object
  --  

  --*
  -- * @brief Trace Queue append exit
  -- * @param queue Queue object
  --  

  --*
  -- * @brief Trace Queue alloc append enter
  -- * @param queue Queue object
  --  

  --*
  -- * @brief Trace Queue alloc append exit
  -- * @param queue Queue object
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace Queue prepend enter
  -- * @param queue Queue object
  --  

  --*
  -- * @brief Trace Queue prepend exit
  -- * @param queue Queue object
  --  

  --*
  -- * @brief Trace Queue alloc prepend enter
  -- * @param queue Queue object
  --  

  --*
  -- * @brief Trace Queue alloc prepend exit
  -- * @param queue Queue object
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace Queue insert attempt entry
  -- * @param queue Queue object
  --  

  --*
  -- * @brief Trace Queue insert attempt blocking
  -- * @param queue Queue object
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace Queue insert attempt exit
  -- * @param queue Queue object
  --  

  --*
  -- * @brief Trace Queue append list enter
  -- * @param queue Queue object
  --  

  --*
  -- * @brief Trace Queue append list exit
  -- * @param queue Queue object
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace Queue merge slist enter
  -- * @param queue Queue object
  --  

  --*
  -- * @brief Trace Queue merge slist exit
  -- * @param queue Queue object
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace Queue get attempt enter
  -- * @param queue Queue object
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace Queue get attempt blockings
  -- * @param queue Queue object
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace Queue get attempt outcome
  -- * @param queue Queue object
  -- * @param timeout Timeout period
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace Queue remove enter
  -- * @param queue Queue object
  --  

  --*
  -- * @brief Trace Queue remove exit
  -- * @param queue Queue object
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace Queue unique append enter
  -- * @param queue Queue object
  --  

  --*
  -- * @brief Trace Queue unique append exit
  -- * @param queue Queue object
  -- *
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace Queue peek head
  -- * @param queue Queue object
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace Queue peek tail
  -- * @param queue Queue object
  -- * @param ret Return value
  --  

  --* @}  
  -- end of subsys_tracing_apis_queue  
  --*
  -- * @brief FIFO Tracing APIs
  -- * @defgroup subsys_tracing_apis_fifo FIFO Tracing APIs
  -- * @{
  --  

  --*
  -- * @brief Trace initialization of FIFO Queue entry
  -- * @param fifo FIFO object
  --  

  --*
  -- * @brief Trace initialization of FIFO Queue exit
  -- * @param fifo FIFO object
  --  

  --*
  -- * @brief Trace FIFO Queue cancel wait entry
  -- * @param fifo FIFO object
  --  

  --*
  -- * @brief Trace FIFO Queue cancel wait exit
  -- * @param fifo FIFO object
  --  

  --*
  -- * @brief Trace FIFO Queue put entry
  -- * @param fifo FIFO object
  -- * @param data Data item
  --  

  --*
  -- * @brief Trace FIFO Queue put exit
  -- * @param fifo FIFO object
  -- * @param data Data item
  --  

  --*
  -- * @brief Trace FIFO Queue alloc put entry
  -- * @param fifo FIFO object
  -- * @param data Data item
  --  

  --*
  -- * @brief Trace FIFO Queue alloc put exit
  -- * @param fifo FIFO object
  -- * @param data Data item
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace FIFO Queue put list entry
  -- * @param fifo FIFO object
  -- * @param head First ll-node
  -- * @param tail Last ll-node
  --  

  --*
  -- * @brief Trace FIFO Queue put list exit
  -- * @param fifo FIFO object
  -- * @param head First ll-node
  -- * @param tail Last ll-node
  --  

  --*
  -- * @brief Trace FIFO Queue put slist entry
  -- * @param fifo FIFO object
  -- * @param list Syslist object
  --  

  --*
  -- * @brief Trace FIFO Queue put slist exit
  -- * @param fifo FIFO object
  -- * @param list Syslist object
  --  

  --*
  -- * @brief Trace FIFO Queue get entry
  -- * @param fifo FIFO object
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace FIFO Queue get exit
  -- * @param fifo FIFO object
  -- * @param timeout Timeout period
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace FIFO Queue peek head entry
  -- * @param fifo FIFO object
  --  

  --*
  -- * @brief Trace FIFO Queue peek head exit
  -- * @param fifo FIFO object
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace FIFO Queue peek tail entry
  -- * @param fifo FIFO object
  --  

  --*
  -- * @brief Trace FIFO Queue peek tail exit
  -- * @param fifo FIFO object
  -- * @param ret Return value
  --  

  --* @}  
  -- end of subsys_tracing_apis_fifo  
  --*
  -- * @brief LIFO Tracing APIs
  -- * @defgroup subsys_tracing_apis_lifo LIFO Tracing APIs
  -- * @{
  --  

  --*
  -- * @brief Trace initialization of LIFO Queue entry
  -- * @param lifo LIFO object
  --  

  --*
  -- * @brief Trace initialization of LIFO Queue exit
  -- * @param lifo LIFO object
  --  

  --*
  -- * @brief Trace LIFO Queue put entry
  -- * @param lifo LIFO object
  -- * @param data Data item
  --  

  --*
  -- * @brief Trace LIFO Queue put exit
  -- * @param lifo LIFO object
  -- * @param data Data item
  --  

  --*
  -- * @brief Trace LIFO Queue alloc put entry
  -- * @param lifo LIFO object
  -- * @param data Data item
  --  

  --*
  -- * @brief Trace LIFO Queue alloc put exit
  -- * @param lifo LIFO object
  -- * @param data Data item
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace LIFO Queue get entry
  -- * @param lifo LIFO object
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace LIFO Queue get exit
  -- * @param lifo LIFO object
  -- * @param timeout Timeout period
  -- * @param ret Return value
  --  

  --* @}  
  -- end of subsys_tracing_apis_lifo  
  --*
  -- * @brief Stack Tracing APIs
  -- * @defgroup subsys_tracing_apis_stack Stack Tracing APIs
  -- * @{
  --  

  --*
  -- * @brief Trace initialization of Stack
  -- * @param stack Stack object
  --  

  --*
  -- * @brief Trace Stack alloc init attempt entry
  -- * @param stack Stack object
  --  

  --*
  -- * @brief Trace Stack alloc init outcome
  -- * @param stack Stack object
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace Stack cleanup attempt entry
  -- * @param stack Stack object
  --  

  --*
  -- * @brief Trace Stack cleanup outcome
  -- * @param stack Stack object
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace Stack push attempt entry
  -- * @param stack Stack object
  --  

  --*
  -- * @brief Trace Stack push attempt outcome
  -- * @param stack Stack object
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace Stack pop attempt entry
  -- * @param stack Stack object
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace Stack pop attempt blocking
  -- * @param stack Stack object
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace Stack pop attempt outcome
  -- * @param stack Stack object
  -- * @param timeout Timeout period
  -- * @param ret Return value
  --  

  --* @}  
  -- end of subsys_tracing_apis_stack  
  --*
  -- * @brief Message Queue Tracing APIs
  -- * @defgroup subsys_tracing_apis_msgq Message Queue Tracing APIs
  -- * @{
  --  

  --*
  -- * @brief Trace initialization of Message Queue
  -- * @param msgq Message Queue object
  --  

  --*
  -- * @brief Trace Message Queue alloc init attempt entry
  -- * @param msgq Message Queue object
  --  

  --*
  -- * @brief Trace Message Queue alloc init attempt outcome
  -- * @param msgq Message Queue object
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace Message Queue cleanup attempt entry
  -- * @param msgq Message Queue object
  --  

  --*
  -- * @brief Trace Message Queue cleanup attempt outcome
  -- * @param msgq Message Queue object
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace Message Queue put attempt entry
  -- * @param msgq Message Queue object
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace Message Queue put attempt blocking
  -- * @param msgq Message Queue object
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace Message Queue put attempt outcome
  -- * @param msgq Message Queue object
  -- * @param timeout Timeout period
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace Message Queue get attempt entry
  -- * @param msgq Message Queue object
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace Message Queue get attempt blockings
  -- * @param msgq Message Queue object
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace Message Queue get attempt outcome
  -- * @param msgq Message Queue object
  -- * @param timeout Timeout period
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace Message Queue peek
  -- * @param msgq Message Queue object
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace Message Queue purge
  -- * @param msgq Message Queue object
  --  

  --* @}  
  -- end of subsys_tracing_apis_msgq  
  --*
  -- * @brief Mailbox Tracing APIs
  -- * @defgroup subsys_tracing_apis_mbox Mailbox Tracing APIs
  -- * @{
  --  

  --*
  -- * @brief Trace initialization of Mailbox
  -- * @param mbox Mailbox object
  --  

  --*
  -- * @brief Trace Mailbox message put attempt entry
  -- * @param mbox Mailbox object
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace Mailbox message put attempt blocking
  -- * @param mbox Mailbox object
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace Mailbox message put attempt outcome
  -- * @param mbox Mailbox object
  -- * @param timeout Timeout period
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace Mailbox put attempt entry
  -- * @param mbox Mailbox object
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace Mailbox put attempt blocking
  -- * @param mbox Mailbox object
  -- * @param timeout Timeout period
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace Mailbox async put entry
  -- * @param mbox Mailbox object
  -- * @param sem Semaphore object
  --  

  --*
  -- * @brief Trace Mailbox async put exit
  -- * @param mbox Mailbox object
  -- * @param sem Semaphore object
  --  

  --*
  -- * @brief Trace Mailbox get attempt entry
  -- * @param mbox Mailbox entry
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace Mailbox get attempt blocking
  -- * @param mbox Mailbox entry
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace Mailbox get attempt outcome
  -- * @param mbox Mailbox entry
  -- * @param timeout Timeout period
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace Mailbox data get
  -- * @brief rx_msg Receive Message object
  --  

  --* @}  
  -- end of subsys_tracing_apis_mbox  
  --*
  -- * @brief Pipe Tracing APIs
  -- * @defgroup subsys_tracing_apis_pipe Pipe Tracing APIs
  -- * @{
  --  

  --*
  -- * @brief Trace initialization of Pipe
  -- * @param pipe Pipe object
  -- * @param buffer data buffer
  -- * @param size data buffer size
  --  

  --*
  -- * @brief Trace Pipe reset entry
  -- * @param pipe Pipe object
  --  

  --*
  -- * @brief Trace Pipe reset exit
  -- * @param pipe Pipe object
  --  

  --*
  -- * @brief Trace Pipe close entry
  -- * @param pipe Pipe object
  --  

  --*
  -- * @brief Trace Pipe close exit
  -- * @param pipe Pipe object
  --  

  --*
  -- * @brief Trace Pipe write attempt entry
  -- * @param pipe Pipe object
  -- * @param data pointer to data
  -- * @param len length of data
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace Pipe write attempt blocking
  -- * @param pipe Pipe object
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace Pipe write attempt outcome
  -- * @param pipe Pipe object
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace Pipe read attempt entry
  -- * @param pipe Pipe object
  -- * @param data Pointer to data
  -- * @param len Length of data
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace Pipe read attempt blocking
  -- * @param pipe Pipe object
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace Pipe read attempt outcome
  -- * @param pipe Pipe object
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace Pipe cleanup entry
  -- * @param pipe Pipe object
  --  

  --*
  -- * @brief Trace Pipe cleanup exit
  -- * @param pipe Pipe object
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace Pipe alloc init entry
  -- * @param pipe Pipe object
  --  

  --*
  -- * @brief Trace Pipe alloc init exit
  -- * @param pipe Pipe object
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace Pipe flush entry
  -- * @param pipe Pipe object
  --  

  --*
  -- * @brief Trace Pipe flush exit
  -- * @param pipe Pipe object
  --  

  --*
  -- * @brief Trace Pipe buffer flush entry
  -- * @param pipe Pipe object
  --  

  --*
  -- * @brief Trace Pipe buffer flush exit
  -- * @param pipe Pipe object
  --  

  --*
  -- * @brief Trace Pipe put attempt entry
  -- * @param pipe Pipe object
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace Pipe put attempt blocking
  -- * @param pipe Pipe object
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace Pipe put attempt outcome
  -- * @param pipe Pipe object
  -- * @param timeout Timeout period
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace Pipe get attempt entry
  -- * @param pipe Pipe object
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace Pipe get attempt blocking
  -- * @param pipe Pipe object
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace Pipe get attempt outcome
  -- * @param pipe Pipe object
  -- * @param timeout Timeout period
  -- * @param ret Return value
  --  

  --* @}  
  -- end of subsys_tracing_apis_pipe  
  --*
  -- * @brief Heap Tracing APIs
  -- * @defgroup subsys_tracing_apis_heap Heap Tracing APIs
  -- * @{
  --  

  --*
  -- * @brief Trace initialization of Heap
  -- * @param h Heap object
  --  

  --*
  -- * @brief Trace Heap aligned alloc attempt entry
  -- * @param h Heap object
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace Heap align alloc attempt blocking
  -- * @param h Heap object
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace Heap align alloc attempt outcome
  -- * @param h Heap object
  -- * @param timeout Timeout period
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace Heap alloc enter
  -- * @param h Heap object
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace Heap alloc exit
  -- * @param h Heap object
  -- * @param timeout Timeout period
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace Heap calloc enter
  -- * @param h Heap object
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace Heap calloc exit
  -- * @param h Heap object
  -- * @param timeout Timeout period
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace Heap free
  -- * @param h Heap object
  --  

  --*
  -- * @brief Trace Heap realloc enter
  -- * @param h Heap object
  -- * @param ptr Pointer to reallocate
  -- * @param bytes Bytes to reallocate
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace Heap realloc exit
  -- * @param h Heap object
  -- * @param ptr Pointer to reallocate
  -- * @param bytes Bytes to reallocate
  -- * @param timeout Timeout period
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace System Heap aligned alloc enter
  -- * @param heap Heap object
  --  

  --*
  -- * @brief Trace System Heap aligned alloc exit
  -- * @param heap Heap object
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace System Heap aligned alloc enter
  -- * @param heap Heap object
  --  

  --*
  -- * @brief Trace System Heap aligned alloc exit
  -- * @param heap Heap object
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace System Heap free entry
  -- * @param heap Heap object
  -- * @param heap_ref Heap reference
  --  

  --*
  -- * @brief Trace System Heap free exit
  -- * @param heap Heap object
  -- * @param heap_ref Heap reference
  --  

  --*
  -- * @brief Trace System heap calloc enter
  -- * @param heap
  --  

  --*
  -- * @brief Trace System heap calloc exit
  -- * @param heap Heap object
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace System heap realloc enter
  -- * @param heap
  -- * @param ptr
  --  

  --*
  -- * @brief Trace System heap realloc exit
  -- * @param heap Heap object
  -- * @param ptr Memory pointer
  -- * @param ret Return value
  --  

  --* @}  
  -- end of subsys_tracing_apis_heap  
  --*
  -- * @brief Memory Slab Tracing APIs
  -- * @defgroup subsys_tracing_apis_mslab Memory Slab Tracing APIs
  -- * @{
  --  

  --*
  -- * @brief Trace initialization of Memory Slab
  -- * @param slab Memory Slab object
  -- * @param rc Return value
  --  

  --*
  -- * @brief Trace Memory Slab alloc attempt entry
  -- * @param slab Memory Slab object
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace Memory Slab alloc attempt blocking
  -- * @param slab Memory Slab object
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace Memory Slab alloc attempt outcome
  -- * @param slab Memory Slab object
  -- * @param timeout Timeout period
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace Memory Slab free entry
  -- * @param slab Memory Slab object
  --  

  --*
  -- * @brief Trace Memory Slab free exit
  -- * @param slab Memory Slab object
  --  

  --* @}  
  -- end of subsys_tracing_apis_mslab  
  --*
  -- * @brief Timer Tracing APIs
  -- * @defgroup subsys_tracing_apis_timer Timer Tracing APIs
  -- * @{
  --  

  --*
  -- * @brief Trace initialization of Timer
  -- * @param timer Timer object
  --  

  --*
  -- * @brief Trace Timer start
  -- * @param timer Timer object
  -- * @param duration Timer duration
  -- * @param period Timer period
  --  

  --*
  -- * @brief Trace Timer stop
  -- * @param timer Timer object
  --  

  --*
  -- * @brief Trace Timer status sync entry
  -- * @param timer Timer object
  --  

  --*
  -- * @brief Trace Timer Status sync blocking
  -- * @param timer Timer object
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace Time Status sync outcome
  -- * @param timer Timer object
  -- * @param result Return value
  --  

  --* @}  
  -- end of subsys_tracing_apis_timer  
  --*
  -- * @brief Event Tracing APIs
  -- * @defgroup subsys_tracing_apis_event Event Tracing APIs
  -- * @{
  --  

  --*
  -- * @brief Trace initialisation of an Event
  -- * @param event Event object
  --  

  --*
  -- * @brief Trace posting of an Event call entry
  -- * @param event Event object
  -- * @param events Set of posted events
  -- * @param events_mask Mask to apply against posted events
  --  

  --*
  -- * @brief Trace posting of an Event call exit
  -- * @param event Event object
  -- * @param events Set of posted events
  -- * @param events_mask Mask to apply against posted events
  --  

  --*
  -- * @brief Trace waiting of an Event call entry
  -- * @param event Event object
  -- * @param events Set of events for which to wait
  -- * @param options Event wait options
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace waiting of an Event call exit
  -- * @param event Event object
  -- * @param events Set of events for which to wait
  -- * @param options Event wait options
  -- * @param timeout Timeout period
  --  

  --*
  -- * @brief Trace waiting of an Event call exit
  -- * @param event Event object
  -- * @param events Set of events for which to wait
  -- * @param ret Set of received events
  --  

  --* @}  
  -- end of subsys_tracing_apis_event  
  --*
  -- * @brief System PM Tracing APIs
  -- * @defgroup subsys_tracing_apis_pm_system System PM Tracing APIs
  -- * @{
  --  

  --*
  -- * @brief Trace system suspend call entry.
  -- * @param ticks Ticks.
  --  

  --*
  -- * @brief Trace system suspend call exit.
  -- * @param ticks Ticks.
  -- * @param state PM state.
  --  

  --* @}  
  -- end of subsys_tracing_apis_pm_system  
  --*
  -- * @brief PM Device Runtime Tracing APIs
  -- * @defgroup subsys_tracing_apis_pm_device_runtime PM Device Runtime Tracing APIs
  -- * @{
  --  

  --*
  -- * @brief Trace getting a device call entry.
  -- * @param dev Device instance.
  --  

  --*
  -- * @brief Trace getting a device call exit.
  -- * @param dev Device instance.
  -- * @param ret Return value.
  --  

  --*
  -- * @brief Trace putting a device call entry.
  -- * @param dev Device instance.
  --  

  --*
  -- * @brief Trace putting a device call exit.
  -- * @param dev Device instance.
  -- * @param ret Return value.
  --  

  --*
  -- * @brief Trace putting a device (asynchronously) call entry.
  -- * @param dev Device instance.
  -- * @param delay Time to delay the operation
  --  

  --*
  -- * @brief Trace putting a device (asynchronously) call exit.
  -- * @param dev Device instance.
  -- * @param delay Time to delay the operation.
  -- * @param ret Return value.
  --  

  --*
  -- * @brief Trace enabling device runtime PM call entry.
  -- * @param dev Device instance.
  --  

  --*
  -- * @brief Trace enabling device runtime PM call exit.
  -- * @param dev Device instance.
  -- * @param ret Return value.
  --  

  --*
  -- * @brief Trace disabling device runtime PM call entry.
  -- * @param dev Device instance.
  --  

  --*
  -- * @brief Trace disabling device runtime PM call exit.
  -- * @param dev Device instance.
  -- * @param ret Return value.
  --  

  --* @}  
  -- end of subsys_tracing_apis_pm_device_runtime  
  --*
  -- * @brief Network Core Tracing APIs
  -- * @defgroup subsys_tracing_apis_net Network Core Tracing APIs
  -- * @{
  --  

  --*
  -- * @brief Trace network data receive
  -- * @param iface Network interface
  -- * @param pkt Received network packet
  --  

  --*
  -- * @brief Trace network data receive attempt
  -- * @param iface Network interface
  -- * @param pkt Received network packet
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace network data send
  -- * @param pkt Network packet to send
  --  

  --*
  -- * @brief Trace network data send attempt
  -- * @param pkt Received network packet
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace network data receive time
  -- * @param pkt Received network packet
  -- * @param end_time When the RX processing stopped for this pkt (in ticks)
  --  

  --*
  -- * @brief Trace network data sent time
  -- * @param pkt Sent network packet
  -- * @param end_time When the TX processing stopped for this pkt (in ticks)
  --  

  --* @}  
  -- end of subsys_tracing_apis_net  
  --*
  -- * @brief Network Socket Tracing APIs
  -- * @defgroup subsys_tracing_apis_socket Network Socket Tracing APIs
  -- * @{
  --  

  --*
  -- * @brief Trace init of network sockets
  -- * @param socket Network socket is returned
  -- * @param family Socket address family
  -- * @param type Socket type
  -- * @param proto Socket protocol
  --  

  --*
  -- * @brief Trace close of network sockets
  -- * @param socket Socket object
  --  

  --*
  -- * @brief Trace network socket close attempt
  -- * @param socket Socket object
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace shutdown of network sockets
  -- * @param socket Socket object
  -- * @param how Socket shutdown type
  --  

  --*
  -- * @brief Trace network socket shutdown attempt
  -- * @param socket Socket object
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace bind of network sockets
  -- * @param socket Socket object
  -- * @param addr Network address to bind
  -- * @param addrlen Address length
  --  

  --*
  -- * @brief Trace network socket bind attempt
  -- * @param socket Socket object
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace connect of network sockets
  -- * @param socket Socket object
  -- * @param addr Network address to bind
  -- * @param addrlen Address length
  --  

  --*
  -- * @brief Trace network socket connect attempt
  -- * @param socket Socket object
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace listen of network sockets
  -- * @param socket Socket object
  -- * @param backlog Socket backlog length
  --  

  --*
  -- * @brief Trace network socket listen attempt
  -- * @param socket Socket object
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace accept of network sockets
  -- * @param socket Socket object
  --  

  --*
  -- * @brief Trace network socket accept attempt
  -- * @param socket Socket object
  -- * @param addr Peer network address
  -- * @param addrlen Network address length
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace sendto of network sockets
  -- * @param socket Socket object
  -- * @param len Length of the data to send
  -- * @param flags Flags for this send operation
  -- * @param dest_addr Destination network address
  -- * @param addrlen Network address length
  --  

  --*
  -- * @brief Trace network socket sendto attempt
  -- * @param socket Socket object
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace sendmsg of network sockets
  -- * @param socket Socket object
  -- * @param msg Data to send
  -- * @param flags Flags for this send operation
  --  

  --*
  -- * @brief Trace network socket sendmsg attempt
  -- * @param socket Socket object
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace recvfrom of network sockets
  -- * @param socket Socket object
  -- * @param max_len Maximum length of the data we can receive
  -- * @param flags Flags for this receive operation
  -- * @param addr Remote network address
  -- * @param addrlen Network address length
  --  

  --*
  -- * @brief Trace network socket recvfrom attempt
  -- * @param socket Socket object
  -- * @param src_addr Peer network address that send the data
  -- * @param addrlen Length of the network address
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace recvmsg of network sockets
  -- * @param socket Socket object
  -- * @param msg Message buffer to receive
  -- * @param flags Flags for this receive operation
  --  

  --*
  -- * @brief Trace network socket recvmsg attempt
  -- * @param socket Socket object
  -- * @param msg Message buffer received
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace fcntl of network sockets
  -- * @param socket Socket object
  -- * @param cmd Command to set for this socket
  -- * @param flags Flags for this receive operation
  --  

  --*
  -- * @brief Trace network socket fcntl attempt
  -- * @param socket Socket object
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace ioctl of network sockets
  -- * @param socket Socket object
  -- * @param req Request to set for this socket
  --  

  --*
  -- * @brief Trace network socket ioctl attempt
  -- * @param socket Socket object
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace polling of network sockets
  -- * @param fds Set of socket object
  -- * @param nfds Number of socket objects in the set
  -- * @param timeout Timeout for the poll operation
  --  

  --*
  -- * @brief Trace network socket poll attempt
  -- * @param fds Set of socket object
  -- * @param nfds Number of socket objects in the set
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace getsockopt of network sockets
  -- * @param socket Socket object
  -- * @param level Option level
  -- * @param optname Option name
  --  

  --*
  -- * @brief Trace network socket getsockopt attempt
  -- * @param socket Socket object
  -- * @param level Option level
  -- * @param optname Option name
  -- * @param optval Option value
  -- * @param optlen Option value length
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace setsockopt of network sockets
  -- * @param socket Socket object
  -- * @param level Option level
  -- * @param optname Option name
  -- * @param optval Option value
  -- * @param optlen Option value length
  --  

  --*
  -- * @brief Trace network socket setsockopt attempt
  -- * @param socket Socket object
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace getpeername of network sockets
  -- * @param socket Socket object
  --  

  --*
  -- * @brief Trace network socket getpeername attempt
  -- * @param socket Socket object
  -- * @param addr Peer socket network address
  -- * @param addrlen Length of the network address
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace getsockname of network sockets
  -- * @param socket Socket object
  --  

  --*
  -- * @brief Trace network socket getsockname attempt
  -- * @param socket Socket object
  -- * @param addr Local socket network address
  -- * @param addrlen Length of the network address
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace socketpair enter call
  -- * @param family Network address family
  -- * @param type Socket type
  -- * @param proto Socket protocol
  -- * @param sv Socketpair buffer
  --  

  --*
  -- * @brief Trace network socketpair open attempt
  -- * @param socket_A Socketpair first socket object
  -- * @param socket_B Socketpair second socket object
  -- * @param ret Return value
  --  

  --* @}  
  -- end of subsys_tracing_apis_socket  
  --*
  -- * @brief Named Tracing APIs
  -- * @defgroup subsys_tracing_apis_named Named tracing APIs
  -- * @{
  --  

  -- * @brief Called by user to generate named events
  -- *
  -- * @param name name of event. Tracing subsystems may place a limit on
  -- * the length of this string
  -- * @param arg0 arbitrary user-provided data for this event
  -- * @param arg1 arbitrary user-provided data for this event
  --  

  --* @}  
  -- end of subsys_tracing_apis_named  
  --*
  -- * @brief GPIO Tracing APIs
  -- * @defgroup subsys_tracing_apis_gpio GPIO Tracing APIs
  -- * @{
  --  

  --*
  -- * @brief Trace GPIO pin interrupt configure enter call
  -- * @param port Pointer to device structure for the driver instance
  -- * @param pin GPIO pin number
  -- * @param flags Interrupt configuration flags as defined by GPIO_INT_*
  --  

  --*
  -- * @brief Trace GPIO pin interrupt configure exit call
  -- * @param port Pointer to device structure for the driver instance
  -- * @param pin GPIO pin number
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace GPIO single pin configure enter call
  -- * @param port Pointer to device structure for the driver instance
  -- * @param pin GPIO pin number to configure
  -- * @param flags GPIO pin configuration flags
  --  

  --*
  -- * @brief Trace GPIO single pin configure exit call
  -- * @param port Pointer to device structure for the driver instance
  -- * @param pin GPIO pin number to configure
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace GPIO port get direction enter call
  -- * @param port Pointer to device structure for the driver instance
  -- * @param map Bitmap of pin directions to query
  -- * @param inputs Pointer to a variable where input directions will be stored
  -- * @param outputs Pointer to a variable where output directions will be stored
  --  

  --*
  -- * @brief Trace GPIO port get direction exit call
  -- * @param port Pointer to device structure for the driver instance
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace GPIO pin gent config enter call
  -- * @param port Pointer to device structure for the driver instance
  -- * @param pin GPIO pin number to configure
  -- * @param flags GPIO pin configuration flags
  --  

  --*
  -- * @brief Trace GPIO pin get config exit call
  -- * @param port Pointer to device structure for the driver instance
  -- * @param pin GPIO pin number to configure
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace GPIO port get raw enter call
  -- * @param port Pointer to device structure for the driver instance
  -- * @param value Pointer to a variable where the raw value will be stored
  --  

  --*
  -- * @brief Trace GPIO port get raw exit call
  -- * @param port Pointer to device structure for the driver instance
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace GPIO port set masked raw enter call
  -- * @param port Pointer to device structure for the driver instance
  -- * @param mask Mask indicating which pins will be modified
  -- * @param value Value to be written to the output pins
  --  

  --*
  -- * @brief Trace GPIO port set masked raw exit call
  -- * @param port Pointer to device structure for the driver instance
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace GPIO port set bits raw enter call
  -- * @param port Pointer to device structure for the driver instance
  -- * @param pins Value indicating which pins will be modified
  --  

  --*
  -- * @brief Trace GPIO port set bits raw exit call
  -- * @param port Pointer to device structure for the driver instance
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace GPIO port clear bits raw enter call
  -- * @param port Pointer to device structure for the driver instance
  -- * @param pins Value indicating which pins will be modified
  --  

  --*
  -- * @brief Trace GPIO port clear bits raw exit call
  -- * @param port Pointer to device structure for the driver instance
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace GPIO port toggle bits enter call
  -- * @param port Pointer to device structure for the driver instance
  -- * @param pins Value indicating which pins will be modified
  --  

  --*
  -- * @brief Trace GPIO port toggle bits exit call
  -- * @param port Pointer to device structure for the driver instance
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace GPIO init callback enter call
  -- * @param callback A valid application's callback structure pointer
  -- * @param handler A valid handler function pointer
  -- * @param pin_mask A bit mask of relevant pins for the handler
  --  

  --*
  -- * @brief Trace GPIO init callback exit call
  -- * @param callback A valid application's callback structure pointer
  --  

  --*
  -- * @brief Trace GPIO add callback enter call
  -- * @param port Pointer to device structure for the driver instance
  -- * @param callback A valid application's callback structure pointer
  --  

  --*
  -- * @brief Trace GPIO add callback exit call
  -- * @param port Pointer to device structure for the driver instance
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace GPIO remove callback enter call
  -- * @param port Pointer to device structure for the driver instance
  -- * @param callback A valid application's callback structure pointer
  --  

  --*
  -- * @brief Trace GPIO remove callback exit call
  -- * @param port Pointer to device structure for the driver instance
  -- * @param ret Return value
  --  

  --*
  -- * @brief Trace GPIO get pending interrupt enter call
  -- * @param dev Pointer to the device structure for the device instance
  --  

  --*
  -- * @brief Trace GPIO get pending interrupt exit call
  -- * @param dev Pointer to the device structure for the device instance
  -- * @param ret Return value
  --  

  --*
  -- * @brief
  -- * @param list @ref sys_slist_t representing gpio_callback pointers
  -- * @param port @ref device representing the GPIO port
  -- * @param pins @ref gpio_pin_t representing the pins
  --  

  --*
  -- * @brief
  -- * @param port @ref device representing the GPIO port
  -- * @param callback @ref gpio_callback a valid Application's callback structure pointer
  --  

  --* @}  
  -- end of subsys_tracing_apis_gpio  
  --*
  -- * @brief Called when the cpu exits the idle state
  --  

  --*
  -- * @brief Called when entering an ISR
  --  

   procedure sys_trace_isr_enter  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/tracing/tracing.h:2731
   with Import => True, 
        Convention => C, 
        External_Name => "sys_trace_isr_enter";

  --*
  -- * @brief Called when exiting an ISR
  --  

   procedure sys_trace_isr_exit  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/tracing/tracing.h:2736
   with Import => True, 
        Convention => C, 
        External_Name => "sys_trace_isr_exit";

  --*
  -- * @brief Called when exiting an ISR and switching to scheduler
  --  

   procedure sys_trace_isr_exit_to_scheduler  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/tracing/tracing.h:2741
   with Import => True, 
        Convention => C, 
        External_Name => "sys_trace_isr_exit_to_scheduler";

  --*
  -- * @brief Called when the cpu enters the idle state
  --  

   procedure sys_trace_idle  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/tracing/tracing.h:2746
   with Import => True, 
        Convention => C, 
        External_Name => "sys_trace_idle";

  --*
  -- * @brief Called when the cpu exits the idle state
  --  

   procedure sys_trace_idle_exit  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/tracing/tracing.h:2751
   with Import => True, 
        Convention => C, 
        External_Name => "sys_trace_idle_exit";

  --*
  -- * @brief Called when entering an init function
  --  

  --*
  -- * @brief Called when exiting an init function
  --  

  --* @}  
  -- end of subsys_tracing_apis  
  --* @}  
  -- end of subsys_tracing  
end zephyr_tracing_tracing_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
