------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUN-TIME COMPONENTS                         --
--                                                                          --
--                   S Y S T E M . Z E P H Y R . T H R E A D S              --
--                                                                          --
--                                  B o d y                                 --
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

--  This is the Zephyr-specific implementation using native kernel APIs

with Interfaces.C; use Interfaces.C;
with Ada.Unchecked_Conversion;

package body System.Zephyr.Threads is

   --  Platform-independent Zephyr API declarations
   --  These match Zephyr's C API but are defined here to avoid depending
   --  on platform-specific generated bindings

   --  Zephyr timeout type (platform-independent structure)
   type K_Timeout_T is record
      Ticks : Interfaces.C.long;
   end record
   with Convention => C;

   --  Zephyr thread creation function (platform-independent signature)
   function K_Thread_Create
     (New_Thread : System.Address;
      Stack      : System.Address;
      Stack_Size : Interfaces.C.size_t;
      Entry_Func : System.Address;
      P1         : System.Address;
      P2         : System.Address;
      P3         : System.Address;
      Prio       : Interfaces.C.int;
      Options    : Interfaces.C.unsigned;
      C_Delay    : K_Timeout_T) return System.Address
   with Import, Convention => C, External_Name => "k_thread_create";

   function K_Sched_Current_Thread_Query return System.Address
   with Import, Convention => C, External_Name => "k_sched_current_thread_query";

   procedure K_Thread_Priority_Set
     (Thread : System.Address;
      Prio   : Interfaces.C.int)
   with Import, Convention => C, External_Name => "k_thread_priority_set";

   function K_Thread_Priority_Get
     (Thread : System.Address) return Interfaces.C.int
   with Import, Convention => C, External_Name => "k_thread_priority_get";

   procedure K_Thread_Suspend
     (Thread : System.Address)
   with Import, Convention => C, External_Name => "k_thread_suspend";

   procedure K_Thread_Resume
     (Thread : System.Address)
   with Import, Convention => C, External_Name => "k_thread_resume";

   procedure K_Yield
   with Import, Convention => C, External_Name => "k_yield";

   procedure K_Thread_Custom_Data_Set
     (Value : System.Address)
   with Import, Convention => C, External_Name => "k_thread_custom_data_set";

   function K_Thread_Custom_Data_Get return System.Address
   with Import, Convention => C, External_Name => "k_thread_custom_data_get";

   function To_Address is new Ada.Unchecked_Conversion
     (Source => Thread_Entry_Point,
      Target => System.Address);
   --  Convert Thread_Entry_Point to System.Address for C interop

   -------------------
   -- Thread_Create --
   -------------------

   procedure Thread_Create
     (New_Thread    : Thread_Id;
      Stack_Addr    : System.Address;
      Stack_Size    : System.Storage_Elements.Storage_Offset;
      Entry_Point   : Thread_Entry_Point;
      Arg           : System.Address;
      Priority      : Integer;
      Options       : Interfaces.C.unsigned := 0;
      Delay_Ms      : Interfaces.C.int := 0)
   is
      Result : System.Address;
      pragma Unreferenced (Result);
   begin
      --  Call Zephyr k_thread_create with native kernel API (platform-independent)
      --  k_thread_create(k_thread *new_thread, k_thread_stack_t *stack,
      --                  size_t stack_size, k_thread_entry_t entry,
      --                  void *p1, void *p2, void *p3,
      --                  int prio, uint32_t options, k_timeout_t delay)

      Result := K_Thread_Create
        (New_Thread => System.Address (New_Thread),
         Stack      => Stack_Addr,
         Stack_Size => Interfaces.C.size_t (Stack_Size),
         Entry_Func => To_Address (Entry_Point),
         P1         => Arg,
         P2         => System.Null_Address,
         P3         => System.Null_Address,
         Prio       => Interfaces.C.int (Priority),
         Options    => Options,
         C_Delay    => (Ticks => Interfaces.C.long (Delay_Ms)));

      --  Note: In Ravenscar, tasks should never terminate, so we don't
      --  need to handle thread completion
   end Thread_Create;

   -----------------
   -- Thread_Self --
   -----------------

   function Thread_Self return Thread_Id is
   begin
      --  k_sched_current_thread_query() returns the current thread's k_tid_t (address)
      return Thread_Id (K_Sched_Current_Thread_Query);
   end Thread_Self;

   ------------------
   -- Set_Priority --
   ------------------

   procedure Set_Priority (Thread : Thread_Id; Priority : Integer) is
   begin
      --  k_thread_priority_set(k_tid_t thread, int prio)
      K_Thread_Priority_Set
        (Thread => System.Address (Thread),
         Prio   => Interfaces.C.int (Priority));
   end Set_Priority;

   ------------------
   -- Get_Priority --
   ------------------

   function Get_Priority (Thread : Thread_Id) return Integer is
   begin
      --  k_thread_priority_get(k_tid_t thread)
      return Integer (K_Thread_Priority_Get (System.Address (Thread)));
   end Get_Priority;

   -----------
   -- Sleep --
   -----------

   procedure Sleep (Thread : Thread_Id) is
   begin
      --  k_thread_suspend(k_tid_t thread)
      K_Thread_Suspend (System.Address (Thread));
   end Sleep;

   ------------
   -- Wakeup --
   ------------

   procedure Wakeup (Thread : Thread_Id) is
   begin
      --  k_thread_resume(k_tid_t thread)
      K_Thread_Resume (System.Address (Thread));
   end Wakeup;

   -----------
   -- Yield --
   -----------

   procedure Yield is
   begin
      --  k_yield() - yield the CPU to other threads
      K_Yield;
   end Yield;

   --------------
   -- Set_ATCB --
   --------------

   procedure Set_ATCB (ATCB_Addr : System.Address) is
   begin
      --  Store ATCB pointer in current thread's custom data
      --  k_thread_custom_data_set(void *value)
      K_Thread_Custom_Data_Set (Value => ATCB_Addr);
   end Set_ATCB;

   --------------
   -- Get_ATCB --
   --------------

   function Get_ATCB return System.Address is
   begin
      --  Retrieve ATCB pointer from current thread's custom data
      --  void *k_thread_custom_data_get(void)
      return K_Thread_Custom_Data_Get;
   end Get_ATCB;

end System.Zephyr.Threads;
