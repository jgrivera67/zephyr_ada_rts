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
with System.Address_To_Access_Conversions;
with generated_zephyr_syscalls_kernel_h;
with zephyr_kernel_thread_h;
with zephyr_kernel_thread_stack_h;
with zephyr_arch_arch_interface_h;
with zephyr_sys_clock_h;
with stddef_h;

package body System.Zephyr.Threads is

   package Zephyr_Kernel renames generated_zephyr_syscalls_kernel_h;
   package Zephyr_Thread renames zephyr_kernel_thread_h;

   package K_Thread_Conversions is new System.Address_To_Access_Conversions
     (Object => Zephyr_Thread.k_thread);
   --  For converting Thread_Id (Address) to access k_thread

   package Stack_Conversions is new System.Address_To_Access_Conversions
     (Object => zephyr_kernel_thread_stack_h.z_thread_stack_element);
   --  For converting Stack_Addr to access z_thread_stack_element

   function To_K_Thread_Entry is new Ada.Unchecked_Conversion
     (Source => Thread_Entry_Point,
      Target => zephyr_arch_arch_interface_h.k_thread_entry_t);
   --  Convert our Thread_Entry_Point to Zephyr's k_thread_entry_t

   function To_Thread_Id is new Ada.Unchecked_Conversion
     (Source => Zephyr_Thread.k_tid_t,
      Target => Thread_Id);
   --  Convert k_tid_t to Thread_Id (Address)

   function To_K_Tid_T is new Ada.Unchecked_Conversion
     (Source => Thread_Id,
      Target => Zephyr_Thread.k_tid_t);
   --  Convert Thread_Id (Address) to k_tid_t

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
      K_Thread : constant access Zephyr_Thread.k_thread :=
        K_Thread_Conversions.To_Pointer (System.Address (New_Thread));

      Stack : constant access zephyr_kernel_thread_stack_h.z_thread_stack_element :=
        Stack_Conversions.To_Pointer (Stack_Addr);

      Result : Zephyr_Thread.k_tid_t;
      pragma Unreferenced (Result);
   begin
      --  Call Zephyr k_thread_create with native kernel API
      --  k_thread_create(k_thread *new_thread, k_thread_stack_t *stack,
      --                  size_t stack_size, k_thread_entry_t entry,
      --                  void *p1, void *p2, void *p3,
      --                  int prio, uint32_t options, k_timeout_t delay)

      Result := Zephyr_Kernel.k_thread_create
        (new_thread => K_Thread,
         stack      => Stack,
         stack_size => stddef_h.size_t (Stack_Size),
         c_entry    => To_K_Thread_Entry (Entry_Point),
         p1         => Arg,                       -- First parameter (ATCB)
         p2         => System.Null_Address,       -- Unused
         p3         => System.Null_Address,       -- Unused
         prio       => int (Priority),
         options    => Options,
         c_delay    => (ticks => zephyr_sys_clock_h.k_ticks_t (Delay_Ms)));

      --  Note: In Ravenscar, tasks should never terminate, so we don't
      --  need to handle thread completion
   end Thread_Create;

   -----------------
   -- Thread_Self --
   -----------------

   function Thread_Self return Thread_Id is
   begin
      --  k_sched_current_thread_query() returns the current thread's k_tid_t
      return To_Thread_Id (Zephyr_Kernel.k_sched_current_thread_query);
   end Thread_Self;

   ------------------
   -- Set_Priority --
   ------------------

   procedure Set_Priority (Thread : Thread_Id; Priority : Integer) is
   begin
      --  k_thread_priority_set(k_tid_t thread, int prio)
      Zephyr_Kernel.k_thread_priority_set
        (thread => To_K_Tid_T (Thread),
         prio   => int (Priority));
   end Set_Priority;

   ------------------
   -- Get_Priority --
   ------------------

   function Get_Priority (Thread : Thread_Id) return Integer is
   begin
      --  k_thread_priority_get(k_tid_t thread)
      return Integer (Zephyr_Kernel.k_thread_priority_get (To_K_Tid_T (Thread)));
   end Get_Priority;

   -----------
   -- Sleep --
   -----------

   procedure Sleep (Thread : Thread_Id) is
   begin
      --  k_thread_suspend(k_tid_t thread)
      Zephyr_Kernel.k_thread_suspend (To_K_Tid_T (Thread));
   end Sleep;

   ------------
   -- Wakeup --
   ------------

   procedure Wakeup (Thread : Thread_Id) is
   begin
      --  k_thread_resume(k_tid_t thread)
      Zephyr_Kernel.k_thread_resume (To_K_Tid_T (Thread));
   end Wakeup;

   -----------
   -- Yield --
   -----------

   procedure Yield is
   begin
      --  k_yield() - yield the CPU to other threads
      Zephyr_Kernel.k_yield;
   end Yield;

   --------------
   -- Set_ATCB --
   --------------

   procedure Set_ATCB (ATCB_Addr : System.Address) is
   begin
      --  Store ATCB pointer in current thread's custom data
      --  k_thread_custom_data_set(void *value)
      Zephyr_Kernel.k_thread_custom_data_set (value => ATCB_Addr);
   end Set_ATCB;

   --------------
   -- Get_ATCB --
   --------------

   function Get_ATCB return System.Address is
   begin
      --  Retrieve ATCB pointer from current thread's custom data
      --  void *k_thread_custom_data_get(void)
      return Zephyr_Kernel.k_thread_custom_data_get;
   end Get_ATCB;

end System.Zephyr.Threads;
