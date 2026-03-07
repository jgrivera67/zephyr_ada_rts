.. _ada_tasking:

Ada Tasking on Zephyr
######################

Ada provides built-in language constructs for concurrency: **tasks**, **protected objects**,
and **entries**. On Zephyr, the Ada RTS maps these to Zephyr threads and synchronization
primitives transparently. Application code uses only Ada language features.

Tasks (Concurrent Activities)
******************************

An Ada task is a concurrent unit of execution. Task types allow multiple instances:

.. code-block:: ada

   task type Worker_Task (ID : Natural) is
      entry Start;
   end Worker_Task;

   task body Worker_Task is
   begin
      accept Start;   -- Rendezvous: wait for caller
      loop
         --  Do work here
         delay 0.1;   -- Sleep 100 ms (maps to k_sleep)
      end loop;
   end Worker_Task;

   --  Declare task instances (created at elaboration)
   Workers : array (1 .. 4) of Worker_Task (ID => <>);

Each ``Worker_Task`` instance maps to a Zephyr ``k_thread``. The Ada RTS creates the thread
with the stack size configured by :kconfig:option:`CONFIG_ADA_TASK_STACK_SIZE`.

Task Priorities
***************

Ada task priorities use ``System.Priority``. They map to Zephyr thread priorities relative to
:kconfig:option:`CONFIG_ADA_TASK_PRIORITY_BASE`:

.. code-block:: ada

   with System;

   task My_High_Priority_Task is
      pragma Priority (System.Priority'Last);
   end My_High_Priority_Task;

Protected Objects (Shared Data)
*********************************

Protected objects provide mutually exclusive access to shared data. They replace ``k_mutex``
and ``k_sem`` entirely:

.. code-block:: ada

   protected Shared_Counter is
      procedure Increment;
      function Value return Natural;
   private
      Count : Natural := 0;
   end Shared_Counter;

   protected body Shared_Counter is
      procedure Increment is
      begin
         Count := Count + 1;
      end Increment;

      function Value return Natural is (Count);
   end Shared_Counter;

   --  Usage from any task:
   Shared_Counter.Increment;
   X := Shared_Counter.Value;

The Ada RTS maps a protected object to a Zephyr ``k_mutex``. The compiler guarantees that
protected procedures execute with mutual exclusion — no explicit lock/unlock calls needed.

Protected Entries (Conditional Synchronization)
************************************************

Protected entries implement conditional synchronization. A barrier guards the entry:

.. code-block:: ada

   protected Buffer is
      entry Put (Item : Integer);
      entry Get (Item : out Integer);
   private
      Data  : Integer;
      Full  : Boolean := False;
   end Buffer;

   protected body Buffer is
      entry Put (Item : Integer) when not Full is
      begin
         Data := Item;
         Full := True;
      end Put;

      entry Get (Item : out Integer) when Full is
      begin
         Item := Data;
         Full := False;
      end Get;
   end Buffer;

A task calling ``Buffer.Put`` when ``Full = True`` is suspended until the barrier becomes
``False`` (after a ``Get``). The RTS maps this to Zephyr ``k_condvar`` or semaphore
signalling.

Rendezvous
**********

Task entries enable direct synchronous communication between tasks:

.. code-block:: ada

   task Server is
      entry Request (Input : Integer; Result : out Integer);
   end Server;

   task body Server is
      Val : Integer;
   begin
      loop
         accept Request (Input : Integer; Result : out Integer) do
            Result := Input * 2;
         end Request;
      end loop;
   end Server;

   --  Client task:
   Ans : Integer;
   Server.Request (Input => 42, Result => Ans);
   --  Ans = 84 after rendezvous

Delay Statements
*****************

Ada delay maps to Zephyr sleep:

.. code-block:: ada

   delay 0.5;      -- Relative: sleep 500 ms (k_msleep)
   delay until T;  -- Absolute: sleep until time T (k_sleep with deadline)

``delay 0.0`` yields the current thread (``k_yield``).

Task Termination
*****************

Tasks terminate naturally when their body completes. The environment task waits for all
library-level tasks to complete before returning. An application exit can be triggered with:

.. code-block:: ada

   with Ada.Task_Termination;
   --  or simply let the task body return
