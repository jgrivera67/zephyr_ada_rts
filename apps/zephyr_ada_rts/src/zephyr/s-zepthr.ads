------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUN-TIME COMPONENTS                         --
--                                                                          --
--                   S Y S T E M . Z E P H Y R . T H R E A D S              --
--                                                                          --
--                                  S p e c                                 --
--                                                                          --
--          Copyright (C) 2024-2026, Free Software Foundation, Inc.         --
--                                                                          --
-- GNAT is free software;  you can  redistribute it  and/or modify it under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 3,  or (at your option) any later ver- --
-- sion.  GNAT is distributed in the hope that it will be useful, but WITH- --
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

--  This package provides Ada-friendly wrappers for Zephyr thread management
--  APIs. It wraps k_thread_* functions and provides ATCB storage using
--  Zephyr's thread custom data feature (Option A from design decisions).

pragma Restrictions (No_Elaboration_Code);

with Interfaces.C;
with System.Storage_Elements;

package System.Zephyr.Threads is
   pragma Preelaborate;

   type Thread_Id is private;
   --  Opaque Zephyr thread identifier (k_tid_t wrapper)

   Null_Thread_Id : constant Thread_Id;
   --  Represents no thread

   type Thread_Entry_Point is access procedure
        (Arg1 : System.Address;
         Arg2 : System.Address;
         Arg3 : System.Address)
     with Convention => C;
   --  Thread entry point function type
   --  Matches Zephyr's k_thread_entry_t signature (3 void* parameters)
   --  The RTS only uses Arg1 (for ATCB pointer), Arg2 and Arg3 are unused

   procedure Thread_Create
     (New_Thread    : Thread_Id;
      Stack_Addr    : System.Address;
      Stack_Size    : System.Storage_Elements.Storage_Offset;
      Entry_Point   : Thread_Entry_Point;
      Arg           : System.Address;
      Priority      : Integer;
      Options       : Interfaces.C.unsigned := 0;
      Delay_Ms      : Interfaces.C.int := 0);
   --  Create a new Zephyr thread (wrapper for k_thread_create).
   --
   --  Note: Following Option A design - using static stack allocation.
   --  Stack_Addr must point to a statically allocated k_thread_stack
   --  (allocated with K_THREAD_STACK_DEFINE in C or equivalent).
   --
   --  Priority is already converted to Zephyr priority scale by caller.
   --  Options can include K_ESSENTIAL, K_FP_REGS, etc.
   --  Delay_Ms: delay before starting thread (0 = start immediately)

   function Thread_Self return Thread_Id;
   --  Get the current thread's ID (wrapper for k_current_get)

   procedure Set_Priority (Thread : Thread_Id; Priority : Integer);
   --  Set thread priority (wrapper for k_thread_priority_set)
   --  Priority should already be in Zephyr scale

   function Get_Priority (Thread : Thread_Id) return Integer;
   --  Get thread priority (wrapper for k_thread_priority_get)
   --  Returns priority in Zephyr scale

   procedure Sleep (Thread : Thread_Id);
   --  Suspend thread execution (wrapper for k_thread_suspend)

   procedure Wakeup (Thread : Thread_Id);
   --  Resume thread execution (wrapper for k_thread_resume)

   procedure Yield;
   --  Yield processor to other threads (wrapper for k_yield)

   ----------------
   --  ATCB Storage (Option A: Thread Custom Data)
   ----------------

   procedure Set_ATCB (ATCB_Addr : System.Address);
   --  Store Ada Task Control Block address in current thread's custom data
   --  (wrapper for k_thread_custom_data_set)

   function Get_ATCB return System.Address;
   --  Retrieve Ada Task Control Block address from current thread's custom data
   --  (wrapper for k_thread_custom_data_get)

private

   type Thread_Id is new System.Address;
   --  Zephyr k_tid_t is a pointer to k_thread structure

   Null_Thread_Id : constant Thread_Id := Thread_Id (System.Null_Address);

end System.Zephyr.Threads;
