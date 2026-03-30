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

--  This is the Zephyr-specific implementation using C shim layer
--
--  Zephyr defines many kernel functions as static inline in generated
--  syscall headers. These cannot be directly imported by Ada as external
--  symbols. The zephyr_ada_shim.c/h files provide non-inline wrapper
--  functions (ada_k_*) that Ada can call.

with Interfaces.C; use Interfaces.C;
with Ada.Unchecked_Conversion;

package body System.Zephyr.Threads is

   --  Zephyr timeout type
   type K_Timeout_T is record
      Ticks : Interfaces.C.long;
   end record
   with Convention => C;

   --  Import non-inline wrapper functions from zephyr_ada_shim.c
   --  These wrap Zephyr's inline syscall functions

   function Ada_K_Thread_Create
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
   with Import, Convention => C, External_Name => "ada_k_thread_create";

   function Ada_K_Sched_Current_Thread_Query return System.Address
   with Import, Convention => C, External_Name => "ada_k_sched_current_thread_query";

   procedure Ada_K_Thread_Priority_Set
     (Thread : System.Address;
      Prio   : Interfaces.C.int)
   with Import, Convention => C, External_Name => "ada_k_thread_priority_set";

   function Ada_K_Thread_Priority_Get
     (Thread : System.Address) return Interfaces.C.int
   with Import, Convention => C, External_Name => "ada_k_thread_priority_get";

   procedure Ada_K_Thread_Suspend
     (Thread : System.Address)
   with Import, Convention => C, External_Name => "ada_k_thread_suspend";

   procedure Ada_K_Thread_Resume
     (Thread : System.Address)
   with Import, Convention => C, External_Name => "ada_k_thread_resume";

   procedure Ada_K_Yield
   with Import, Convention => C, External_Name => "ada_k_yield";

   procedure Ada_K_Thread_Custom_Data_Set
     (Value : System.Address)
   with Import, Convention => C, External_Name => "ada_k_thread_custom_data_set";

   function Ada_K_Thread_Custom_Data_Get return System.Address
   with Import, Convention => C, External_Name => "ada_k_thread_custom_data_get";

   --  Type conversion for Thread_Entry_Point
   function To_Address is new Ada.Unchecked_Conversion
     (Source => Thread_Entry_Point,
      Target => System.Address);

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

      C_Delay : constant K_Timeout_T := (Ticks => Interfaces.C.long (Delay_Ms));
   begin
      --  Call Zephyr k_thread_create via C shim wrapper
      --  k_thread_create(k_thread *new_thread, k_thread_stack_t *stack,
      --                  size_t stack_size, k_thread_entry_t entry,
      --                  void *p1, void *p2, void *p3,
      --                  int prio, uint32_t options, k_timeout_t delay)

      Result := Ada_K_Thread_Create
        (New_Thread => System.Address (New_Thread),
         Stack      => Stack_Addr,
         Stack_Size => Interfaces.C.size_t (Stack_Size),
         Entry_Func => To_Address (Entry_Point),
         P1         => Arg,
         P2         => System.Null_Address,
         P3         => System.Null_Address,
         Prio       => Interfaces.C.int (Priority),
         Options    => Options,
         C_Delay    => C_Delay);

      --  Note: In Ravenscar, tasks should never terminate, so we don't
      --  need to handle thread completion
   end Thread_Create;

   -----------------
   -- Thread_Self --
   -----------------

   function Thread_Self return Thread_Id is
   begin
      --  ada_k_sched_current_thread_query() returns the current thread's k_tid_t
      return Thread_Id (Ada_K_Sched_Current_Thread_Query);
   end Thread_Self;

   ------------------
   -- Set_Priority --
   ------------------

   procedure Set_Priority (Thread : Thread_Id; Priority : Integer) is
   begin
      --  ada_k_thread_priority_set(k_tid_t thread, int prio)
      Ada_K_Thread_Priority_Set
        (Thread => System.Address (Thread),
         Prio   => Interfaces.C.int (Priority));
   end Set_Priority;

   ------------------
   -- Get_Priority --
   ------------------

   function Get_Priority (Thread : Thread_Id) return Integer is
   begin
      --  ada_k_thread_priority_get(k_tid_t thread)
      return Integer (Ada_K_Thread_Priority_Get (System.Address (Thread)));
   end Get_Priority;

   -----------
   -- Sleep --
   -----------

   procedure Sleep (Thread : Thread_Id) is
   begin
      --  ada_k_thread_suspend(k_tid_t thread)
      Ada_K_Thread_Suspend (System.Address (Thread));
   end Sleep;

   ------------
   -- Wakeup --
   ------------

   procedure Wakeup (Thread : Thread_Id) is
   begin
      --  ada_k_thread_resume(k_tid_t thread)
      Ada_K_Thread_Resume (System.Address (Thread));
   end Wakeup;

   -----------
   -- Yield --
   -----------

   procedure Yield is
   begin
      --  ada_k_yield() - yield the CPU to other threads
      Ada_K_Yield;
   end Yield;

   --------------
   -- Set_ATCB --
   --------------

   procedure Set_ATCB (ATCB_Addr : System.Address) is
   begin
      --  Store ATCB pointer in current thread's custom data
      --  ada_k_thread_custom_data_set(void *value)
      Ada_K_Thread_Custom_Data_Set (Value => ATCB_Addr);
   end Set_ATCB;

   --------------
   -- Get_ATCB --
   --------------

   function Get_ATCB return System.Address is
   begin
      --  Retrieve ATCB pointer from current thread's custom data
      --  void *ada_k_thread_custom_data_get(void)
      return Ada_K_Thread_Custom_Data_Get;
   end Get_ATCB;

end System.Zephyr.Threads;
