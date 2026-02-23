------------------------------------------------------------------------------
--                                                                          --
--                  GNAT RUN-TIME LIBRARY (GNARL) COMPONENTS                --
--                                                                          --
--                    S Y S T E M . O S _ I N T E R F A C E                 --
--                                                                          --
--                                   S p e c                                --
--                                                                          --
--          Copyright (C) 1991-2023, Free Software Foundation, Inc.         --
--                                                                          --
-- GNARL is free software; you can  redistribute it  and/or modify it under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 3,  or (at your option) any later ver- --
-- sion. GNARL is distributed in the hope that it will be useful, but WITH- --
-- OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY --
-- or FITNESS FOR A PARTICULAR PURPOSE.                                     --
--                                                                          --
-- As a special exception under Section 7 of GPL version 3, you are granted --
-- additional permissions described in the GCC Runtime Library Exception,   --
-- version 3.1, as published by the Free Software Foundation.               --
--                                                                          --
-- You should have received a copy of the GNU General Public License and    --
-- a copy of the GCC Runtime Library Exception along with this program;     --
-- see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see    --
-- <http://www.gnu.org/licenses/>.                                          --
--                                                                          --
-- GNARL was developed by the GNARL team at Florida State University.       --
-- Extensive contributions were provided by Ada Core Technologies, Inc.     --
-- This Zephyr-specific implementation by German Rivera.                    --
--                                                                          --
------------------------------------------------------------------------------

--  This is the Zephyr version of this package for Ravenscar profile
--
--  This package encapsulates all direct interfaces to OS services that are
--  needed by the tasking run-time (libgnarl).
--
--  This is implemented as a thin layer over System.Zephyr packages, providing
--  the interface that GNARL expects.

pragma Restrictions (No_Elaboration_Code);

with System.Multiprocessors;
with System.Storage_Elements;
with System.Zephyr.Threads;
with System.Zephyr.Priorities;

package System.OS_Interface is
   pragma Preelaborate;

   ----------------
   -- Interrupts --
   ----------------

   --  Note: Interrupt support will be implemented in Milestone 7
   --  For now, providing minimal definitions to allow compilation

   Max_Interrupt : constant := 1023;
   --  Maximum interrupt number (platform-specific)

   type Interrupt_ID is range 0 .. Max_Interrupt;
   --  Interrupt identifiers

   type Any_Interrupt_ID is new Integer range -1 .. Max_Interrupt;
   --  Interrupt identifiers plus No_Interrupt

   No_Interrupt : constant Any_Interrupt_ID := -1;
   --  Special value indicating no interrupt

   subtype Interrupt_Range is Interrupt_ID;
   --  Range of interrupt identifiers

   type Interrupt_Handler is access procedure (Id : Interrupt_ID);
   --  Interrupt handler procedure type

   function Current_Interrupt return Any_Interrupt_ID;
   --  Function that returns the hardware interrupt currently being handled
   --  (if any). Returns No_Interrupt if no hardware interrupt is being handled.
   --  TODO: Implement in Milestone 7

   procedure Attach_Handler
     (Handler : Interrupt_Handler;
      Id      : Interrupt_ID;
      PO_Prio : Interrupt_Priority);
   --  Attach a handler to a hardware interrupt
   --  TODO: Implement in Milestone 7

   procedure Power_Down;
   --  Put current CPU in power-down mode (idle)
   --  TODO: Implement using Zephyr k_cpu_idle

   ----------
   -- Time --
   ----------

   type Time is new Long_Long_Integer;
   --  Time in Zephyr ticks (64-bit to match Zephyr k_ticks_t)

   type Time_Span is new Long_Long_Integer;
   --  Time span in Zephyr ticks

   Ticks_Per_Second : constant := 1000;
   --  Zephyr default tick rate (CONFIG_SYS_CLOCK_TICKS_PER_SEC)
   --  Note: This should match Zephyr configuration

   function Clock return Time;
   --  Get the current time in ticks since boot
   --  TODO: Implement using k_uptime_ticks in Milestone 5

   procedure Delay_Until (T : Time);
   --  Suspend the calling task until the absolute time specified by T
   --  TODO: Implement using k_sleep in Milestone 5

   -------------
   -- Threads --
   -------------

   --  Thread_Descriptor is an opaque type that represents a Zephyr thread
   --  We don't need to expose the internal structure to GNARL

   type Thread_Descriptor is limited private;
   --  Contains Zephyr thread state (k_thread structure)

   subtype Thread_Id is System.Zephyr.Threads.Thread_Id;
   --  Thread identifier (k_tid_t wrapper)

   Null_Thread_Id : constant Thread_Id :=
                      System.Zephyr.Threads.Null_Thread_Id;
   --  Identifier for a non-valid thread

   Lwp_Self : constant System.Address := Null_Address;
   --  LWP is not used by gdb on Ravenscar/Zephyr

   procedure Initialize
     (Environment_Thread : Thread_Id;
      Main_Priority      : System.Any_Priority);
   --  Procedure for initializing the underlying tasking system.
   --  Sets up the environment (main) thread.
   --  TODO: Implement in Milestone 2

   procedure Thread_Create
     (Id            : Thread_Id;
      Code          : System.Address;
      Arg           : System.Address;
      Priority      : Integer;
      Base_CPU      : System.Multiprocessors.CPU_Range;
      Stack_Address : System.Address;
      Stack_Size    : System.Storage_Elements.Storage_Offset);
   --  Create a new thread
   --  Priority should be in Zephyr scale (already converted)
   --  TODO: Implement in Milestone 2

   function Thread_Self return Thread_Id
     renames System.Zephyr.Threads.Thread_Self;
   --  Return the thread identifier for the calling task

   ----------
   -- ATCB --
   ----------

   procedure Set_ATCB (Id : Thread_Id; ATCB : System.Address);
   --  Associate the specified ATCB to the thread ID
   --  Note: Zephyr uses thread-local custom data for this
   --  This must be called from the thread itself (Id is for GNARL compatibility)

   function Get_ATCB return System.Address
     renames System.Zephyr.Threads.Get_ATCB;
   --  Get the ATCB associated with the currently running thread

   ----------------
   -- Scheduling --
   ----------------

   procedure Set_Priority (Priority : Integer);
   --  Set the active priority of the executing thread to the given value
   --  Priority should be in Zephyr scale
   --  TODO: Implement in Milestone 2

   function Get_Priority (Id : Thread_Id) return Integer;
   --  Get the current base priority of a thread
   --  Returns priority in Ada scale (0-31)

   procedure Sleep;
   --  The calling thread is unconditionally suspended

   procedure Wakeup (Id : Thread_Id) renames System.Zephyr.Threads.Wakeup;
   --  The referred thread becomes ready (the thread must be suspended)

   ---------------------
   -- Multiprocessors --
   ---------------------

   function Get_Affinity (Id : Thread_Id) return Multiprocessors.CPU_Range;
   --  Return CPU affinity of the given thread (maybe Not_A_Specific_CPU)
   --  TODO: Implement in Milestone 2 or later

   function Get_CPU (Id : Thread_Id) return Multiprocessors.CPU;
   --  Return the CPU in charge of the given thread (always a valid CPU)
   --  TODO: Implement in Milestone 2 or later

   function Current_CPU return Multiprocessors.CPU;
   --  Return the id of the current CPU
   --  TODO: Implement using Zephyr arch_curr_cpu()->id

private

   type Thread_Descriptor is limited record
      null;
      --  We don't need to store anything here since Zephyr manages
      --  the k_thread structure internally. The Thread_Id (k_tid_t)
      --  is sufficient to identify and operate on threads.
   end record;

end System.OS_Interface;
