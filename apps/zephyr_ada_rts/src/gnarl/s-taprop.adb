------------------------------------------------------------------------------
--                                                                          --
--                  GNAT RUN-TIME LIBRARY (GNARL) COMPONENTS                --
--                                                                          --
--     S Y S T E M . T A S K _ P R I M I T I V E S . O P E R A T I O N S    --
--                                                                          --
--                                  B o d y                                 --
--                                                                          --
--          Copyright (C) 2001-2023, Free Software Foundation, Inc.         --
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

--  This is the Zephyr version for Ravenscar profile

--  This package contains all the GNULL primitives that interface directly with
--  the underlying Zephyr RTOS kernel.

pragma Restrictions (No_Elaboration_Code);

with Ada.Unchecked_Conversion;

with System.Storage_Elements;
with System.Tasking.Debug;

package body System.Task_Primitives.Operations is

   use System.OS_Interface;
   use System.Parameters;
   use System.Storage_Elements;
   use System.Multiprocessors;

   use type System.Tasking.Task_Id;

   ---------------------
   -- Local Functions --
   ---------------------

   function To_Address is new
     Ada.Unchecked_Conversion (ST.Task_Id, System.Address);

   function To_Task_Id is new
     Ada.Unchecked_Conversion (System.Address, ST.Task_Id);

   ----------
   -- Self --
   ----------

   function Self return ST.Task_Id is
   begin
      --  Retrieve the ATCB pointer stored in current Zephyr thread's custom data
      return To_Task_Id (System.OS_Interface.Get_ATCB);
   end Self;

   -----------
   -- Sleep --
   -----------

   procedure Sleep
     (Self_ID : ST.Task_Id;
      Reason  : System.Tasking.Task_States)
   is
      pragma Unreferenced (Reason);
   begin
      --  A task can only suspend itself

      pragma Assert (Self_ID = Self);

      --  Check if Wakeup was already called (race mitigation for protected
      --  entry calls: Wakeup may arrive before Sleep on priority preemption).

      if Self_ID.Common.Wakeup_Signaled then
         Self_ID.Common.Wakeup_Signaled := False;
         return;
      end if;

      System.OS_Interface.Sleep;
   end Sleep;

   -----------------
   -- Delay_Until --
   -----------------

   overriding procedure Delay_Until (Abs_Time : Time) is
      Self_ID : constant ST.Task_Id := Self;
   begin
      Self_ID.Common.State := ST.Delay_Sleep;
      System.OS_Interface.Delay_Until (System.OS_Interface.Time (Abs_Time));
      Self_ID.Common.State := ST.Runnable;
   end Delay_Until;

   ---------------------
   -- Monotonic_Clock --
   ---------------------

   function Monotonic_Clock return Time is
   begin
      return Time (System.OS_Interface.Clock);
   end Monotonic_Clock;

   ------------
   -- Wakeup --
   ------------

   procedure Wakeup (T : ST.Task_Id; Reason : System.Tasking.Task_States) is
      pragma Unreferenced (Reason);
   begin
      T.Common.Wakeup_Signaled := True;
      System.OS_Interface.Wakeup (T.Common.LL.Thread);
   end Wakeup;

   ------------------
   -- Set_Priority --
   ------------------

   procedure Set_Priority (T : ST.Task_Id; Prio : ST.Extended_Priority) is
   begin
      --  A task can only change its own priority

      pragma Assert (T = Self);

      --  Change the priority in the underlying Zephyr kernel

      System.OS_Interface.Set_Priority (Prio);
   end Set_Priority;

   ------------------
   -- Get_Priority --
   ------------------

   function Get_Priority (T : ST.Task_Id) return ST.Extended_Priority is
   begin
      --  Get current active priority from Zephyr

      return System.OS_Interface.Get_Priority (T.Common.LL.Thread);
   end Get_Priority;

   ------------------
   -- Get_Affinity --
   ------------------

   function Get_Affinity
     (T : ST.Task_Id) return System.Multiprocessors.CPU_Range
   is
   begin
      return System.OS_Interface.Get_Affinity (T.Common.LL.Thread);
   end Get_Affinity;

   -------------
   -- Get_CPU --
   -------------

   function Get_CPU (T : ST.Task_Id) return System.Multiprocessors.CPU is
   begin
      return System.OS_Interface.Get_CPU (T.Common.LL.Thread);
   end Get_CPU;

   -------------------
   -- Get_Thread_Id --
   -------------------

   function Get_Thread_Id (T : ST.Task_Id) return OSI.Thread_Id is
   begin
      return T.Common.LL.Thread;
   end Get_Thread_Id;

   ----------------
   -- Enter_Task --
   ----------------

   procedure Enter_Task (Self_ID : ST.Task_Id) is
   begin
      --  Set lwp (for gdb compatibility)

      Self_ID.Common.LL.Lwp := Lwp_Self;

      --  Register the task to System.Tasking.Debug for debugger visibility

      System.Tasking.Debug.Add_Task_Id (Self_ID);

      --  Ensure that the task has the right priority at the end
      --  of its initialization (before calling the task's code). This will
      --  cause Zephyr to reschedule if needed.

      System.OS_Interface.Set_Priority (Self_ID.Common.Base_Priority);
   end Enter_Task;

   --------------------
   -- Initialize_TCB --
   --------------------

   procedure Initialize_TCB (Self_ID : ST.Task_Id; Succeeded : out Boolean) is
      pragma Unreferenced (Self_ID);
   begin
      --  Nothing to be done as part of the initialization of TCBs
      --  Zephyr manages the thread control blocks internally

      Succeeded := True;
   end Initialize_TCB;

   -----------------
   -- Create_Task --
   -----------------

   procedure Create_Task
     (T          : ST.Task_Id;
      Wrapper    : System.Address;
      Stack_Size : System.Parameters.Size_Type;
      Priority   : ST.Extended_Priority;
      Base_CPU   : System.Multiprocessors.CPU_Range;
      Succeeded  : out Boolean)
   is
   begin
      --  The stack has been preallocated for these targets

      pragma Assert
        (T.Common.Compiler_Data.Pri_Stack_Info.Start_Address /= Null_Address
         and then Storage_Offset (Stack_Size) =
           T.Common.Compiler_Data.Pri_Stack_Info.Size);

      T.Common.LL.Thread := Get_Thread_Id (T.Common.LL.Thread_Desc);

      --  Create the underlying Zephyr thread
      --  The Wrapper is the task entry point that will call Enter_Task
      --  and then execute the actual task body

      System.OS_Interface.Thread_Create
        (T.Common.LL.Thread,
         Wrapper,
         To_Address (T),  -- Pass ATCB as argument to wrapper
         Priority,
         Base_CPU,
         T.Common.Compiler_Data.Pri_Stack_Info.Start_Address,
         T.Common.Compiler_Data.Pri_Stack_Info.Size);

      --  Link the ATCB to the Zephyr thread's custom data
      --  This allows Self to retrieve the ATCB from any task context

      System.OS_Interface.Set_ATCB (T.Common.LL.Thread, To_Address (T));

      Succeeded := True;
   end Create_Task;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize (Environment_Task : ST.Task_Id) is
      T : Thread_Id renames Environment_Task.Common.LL.Thread;
   begin
      --  Set the thread descriptor

      T := Get_Thread_Id (Environment_Task.Common.LL.Thread_Desc);

      --  Clear Activation_Link, as required by Add_Task_Id

      Environment_Task.Common.Activation_Link := null;

      --  Initialize the underlying Zephyr tasking subsystem
      --  This associates the current Zephyr main thread with the environment task

      System.OS_Interface.Initialize
        (T, Environment_Task.Common.Base_Priority);

      --  Link the ATCB to the Zephyr main thread's custom data

      System.OS_Interface.Set_ATCB (T, To_Address (Environment_Task));

      --  The environment task must also execute its initialization

      Enter_Task (Environment_Task);

      --  Store the identifier for the environment task

      Operations.Environment_Task := Environment_Task;
   end Initialize;

   ---------------------
   -- Is_Task_Context --
   ---------------------

   function Is_Task_Context return Boolean is
   begin
      --  Check if we're in an interrupt context
      --  Returns True if in task context, False if in interrupt context

      return System.OS_Interface.Current_Interrupt = No_Interrupt;
   end Is_Task_Context;

end System.Task_Primitives.Operations;
