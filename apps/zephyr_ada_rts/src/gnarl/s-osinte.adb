------------------------------------------------------------------------------
--                                                                          --
--                  GNAT RUN-TIME LIBRARY (GNARL) COMPONENTS                --
--                                                                          --
--                    S Y S T E M . O S _ I N T E R F A C E                 --
--                                                                          --
--                                   B o d y                                --
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

package body System.OS_Interface is

   -----------------------
   -- Current_Interrupt --
   -----------------------

   function Current_Interrupt return Any_Interrupt_ID is
   begin
      --  TODO: Implement in Milestone 7 using Zephyr interrupt APIs
      return No_Interrupt;
   end Current_Interrupt;

   --------------------
   -- Attach_Handler --
   --------------------

   procedure Attach_Handler
     (Handler : Interrupt_Handler;
      Id      : Interrupt_ID;
      PO_Prio : Interrupt_Priority)
   is
      pragma Unreferenced (Handler, Id, PO_Prio);
   begin
      --  TODO: Implement in Milestone 7 using Zephyr IRQ APIs
      raise Program_Error with "Interrupt handlers not yet implemented";
   end Attach_Handler;

   ----------------
   -- Power_Down --
   ----------------

   procedure Power_Down is
   begin
      --  TODO: Implement using k_cpu_idle() or k_cpu_atomic_idle()
      null;
   end Power_Down;

   -----------
   -- Clock --
   -----------

   function Clock return Time is
   begin
      --  TODO: Implement in Milestone 5 using k_uptime_ticks()
      return 0;
   end Clock;

   -----------------
   -- Delay_Until --
   -----------------

   procedure Delay_Until (T : Time) is
      pragma Unreferenced (T);
   begin
      --  TODO: Implement in Milestone 5 using k_sleep()
      raise Program_Error with "Delay_Until not yet implemented";
   end Delay_Until;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize
     (Environment_Thread : Thread_Id;
      Main_Priority      : System.Any_Priority)
   is
      pragma Unreferenced (Environment_Thread, Main_Priority);
   begin
      --  TODO: Implement in Milestone 2
      --  This should:
      --  1. Initialize the Zephyr tasking subsystem (if needed)
      --  2. Set up the environment thread (main thread)
      --  3. Set priority of main thread
      null;
   end Initialize;

   -------------------
   -- Thread_Create --
   -------------------

   procedure Thread_Create
     (Id            : Thread_Id;
      Code          : System.Address;
      Arg           : System.Address;
      Priority      : Integer;
      Base_CPU      : System.Multiprocessors.CPU_Range;
      Stack_Address : System.Address;
      Stack_Size    : System.Storage_Elements.Storage_Offset)
   is
      pragma Unreferenced (Base_CPU);

      use type System.Zephyr.Threads.Thread_Entry_Point;

      Entry_Point : constant System.Zephyr.Threads.Thread_Entry_Point :=
        System.Zephyr.Threads.Thread_Entry_Point (Code);
   begin
      --  Call Zephyr thread creation wrapper
      System.Zephyr.Threads.Thread_Create
        (New_Thread  => Id,
         Stack_Addr  => Stack_Address,
         Stack_Size  => Stack_Size,
         Entry_Point => Entry_Point,
         Arg         => Arg,
         Priority    => Priority,
         Options     => 0,  -- Default options
         Delay_Ms    => 0); -- Start immediately
   end Thread_Create;

   ------------------
   -- Set_Priority --
   ------------------

   procedure Set_Priority (Priority : Integer) is
      Current : constant Thread_Id := Thread_Self;
   begin
      System.Zephyr.Threads.Set_Priority (Current, Priority);
   end Set_Priority;

   --------------
   -- Set_ATCB --
   --------------

   procedure Set_ATCB (Id : Thread_Id; ATCB : System.Address) is
      pragma Unreferenced (Id);
      --  Id parameter is for GNARL compatibility
      --  Zephyr's k_thread_custom_data operates on the current thread only
   begin
      System.Zephyr.Threads.Set_ATCB (ATCB);
   end Set_ATCB;

   -----------
   -- Sleep --
   -----------

   procedure Sleep is
      Current : constant Thread_Id := Thread_Self;
   begin
      System.Zephyr.Threads.Sleep (Current);
   end Sleep;

   ------------------
   -- Get_Affinity --
   ------------------

   function Get_Affinity (Id : Thread_Id) return Multiprocessors.CPU_Range is
      pragma Unreferenced (Id);
   begin
      --  TODO: Implement multiprocessor support
      --  For now, return CPU 1 (single CPU system)
      return 1;
   end Get_Affinity;

   -------------
   -- Get_CPU --
   -------------

   function Get_CPU (Id : Thread_Id) return Multiprocessors.CPU is
      pragma Unreferenced (Id);
   begin
      --  TODO: Implement using Zephyr's per-thread CPU tracking
      --  For now, return CPU 1 (single CPU system)
      return 1;
   end Get_CPU;

   -----------------
   -- Current_CPU --
   -----------------

   function Current_CPU return Multiprocessors.CPU is
   begin
      --  TODO: Implement using Zephyr arch_curr_cpu()->id
      --  For now, return CPU 1 (single CPU system)
      return 1;
   end Current_CPU;

end System.OS_Interface;
