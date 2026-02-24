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

with Ada.Unchecked_Conversion;
with System.Zephyr.Priorities;

pragma Warnings (Off, "cannot depend on");
pragma Warnings (Off, "preelaborated unit cannot depend on non-preelaborated unit");
with generated_zephyr_syscalls_kernel_h;
with zephyr_sys_clock_h;
pragma Warnings (On, "preelaborated unit cannot depend on non-preelaborated unit");
pragma Warnings (On, "cannot depend on");

package body System.OS_Interface is

   package Zephyr_Kernel renames generated_zephyr_syscalls_kernel_h;
   package Zephyr_Clock renames zephyr_sys_clock_h;

   function To_Thread_Entry_Point is new Ada.Unchecked_Conversion
     (Source => System.Address, Target => System.Zephyr.Threads.Thread_Entry_Point);

   function To_Thread_Id is new Ada.Unchecked_Conversion
     (Source => System.Address, Target => Thread_Id);

   -----------------------
   -- Current_Interrupt --
   -----------------------

   function Current_Interrupt return Any_Interrupt_ID is
   begin
      --  TODO: Implement in Milestone 7 using Zephyr interrupt APIs
      return No_Interrupt;
   end Current_Interrupt;

   -------------------
   -- Get_Thread_Id --
   -------------------

   function Get_Thread_Id (Thread_Desc : Thread_Descriptor) return Thread_Id is
   begin
      --  Return the address of the k_thread structure as Thread_Id
      return To_Thread_Id (Thread_Desc.K_Thread'Address);
   end Get_Thread_Id;

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
      --  Get current time in ticks since boot using Zephyr kernel API
      return Time (Zephyr_Kernel.k_uptime_ticks);
   end Clock;

   -----------------
   -- Delay_Until --
   -----------------

   procedure Delay_Until (T : Time) is
      Now : constant Time := Clock;
      Delay_Ticks : Time;
      Timeout : Zephyr_Clock.k_timeout_t;
      Result : Interfaces.C.int;
      pragma Unreferenced (Result);
   begin
      --  Only delay if the target time is in the future
      if T > Now then
         Delay_Ticks := T - Now;
         --  Construct k_timeout_t with relative tick count
         Timeout.ticks := Zephyr_Clock.k_ticks_t (Delay_Ticks);
         Result := Zephyr_Kernel.k_sleep (Timeout);
      end if;
      --  If T <= Now, return immediately (delay already expired)
   end Delay_Until;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize
     (Environment_Thread : Thread_Id;
      Main_Priority      : System.Any_Priority)
   is
      Zephyr_Prio : constant System.Zephyr.Priorities.Zephyr_Priority :=
        System.Zephyr.Priorities.To_Zephyr_Priority (Main_Priority);
   begin
      --  The environment thread is already the Zephyr main thread
      --  (created by Zephyr at startup). We just need to set its priority
      --  to match the Ada environment task's priority.

      System.Zephyr.Threads.Set_Priority (Environment_Thread, Integer (Zephyr_Prio));

      --  Note: Zephyr kernel is already initialized by the time main() is called,
      --  so we don't need to explicitly initialize the tasking subsystem.
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
        To_Thread_Entry_Point (Code);

      Zephyr_Prio : constant System.Zephyr.Priorities.Zephyr_Priority :=
        System.Zephyr.Priorities.To_Zephyr_Priority (Priority);
   begin
      --  Call Zephyr thread creation wrapper with converted priority
      System.Zephyr.Threads.Thread_Create
        (New_Thread  => Id,
         Stack_Addr  => Stack_Address,
         Stack_Size  => Stack_Size,
         Entry_Point => Entry_Point,
         Arg         => Arg,
         Priority    => Integer (Zephyr_Prio),
         Options     => 0,  -- Default options
         Delay_Ms    => 0); -- Start immediately
   end Thread_Create;

   ------------------
   -- Set_Priority --
   ------------------

   procedure Set_Priority (Priority : Integer) is
      Current : constant Thread_Id := Thread_Self;
      Zephyr_Prio : constant System.Zephyr.Priorities.Zephyr_Priority :=
        System.Zephyr.Priorities.To_Zephyr_Priority (Priority);
   begin
      System.Zephyr.Threads.Set_Priority (Current, Integer (Zephyr_Prio));
   end Set_Priority;

   ------------------
   -- Get_Priority --
   ------------------

   function Get_Priority (Id : Thread_Id) return Integer is
      Zephyr_Prio : constant Integer := System.Zephyr.Threads.Get_Priority (Id);
   begin
      --  Convert from Zephyr priority back to Ada priority
      return System.Zephyr.Priorities.To_Ada_Priority (
        System.Zephyr.Priorities.Zephyr_Priority (Zephyr_Prio));
   end Get_Priority;

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
