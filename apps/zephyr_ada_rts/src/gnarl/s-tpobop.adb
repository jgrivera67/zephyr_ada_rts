------------------------------------------------------------------------------
--                                                                          --
--                 GNAT RUN-TIME LIBRARY (GNARL) COMPONENTS                 --
--                                                                          --
--               SYSTEM.TASKING.PROTECTED_OBJECTS.OPERATIONS                --
--                                                                          --
--                                  B o d y                                 --
--                                                                          --
--         Copyright (C) 1998-2025, Free Software Foundation, Inc.          --
--                                                                          --
-- GNARL is free software; you can  redistribute it  and/or modify it under --
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
--                                                                          --
------------------------------------------------------------------------------

--  Jorvik/Zephyr single-CPU implementation of protected object operations.
--  No System.Restrictions, no SMP (System.Multiprocessors.Fair_Locks).
--  Ceiling priority protocol via System.Tasking.Protected_Objects.Lock/Unlock.

with System.Task_Primitives.Operations;
with System.Tasking.Queuing;

package body System.Tasking.Protected_Objects.Operations is

   package STPO renames System.Task_Primitives.Operations;

   use Entries;

   procedure PO_Do_Or_Queue
     (Self_ID    :     Task_Id;
      Object     :     Entries.Protection_Entries_Access;
      Entry_Call :     Entry_Call_Link;
      Queued     : out Boolean);
   --  If the entry barrier is open, execute the entry body immediately;
   --  otherwise enqueue the call. Object must be locked on entry.
   --  On enqueue, may raise Program_Error if per-entry max queue length
   --  would be exceeded (when Object.Entry_Queue_Maxes is set).

   procedure PO_Service_Entries
     (Self_ID : Task_Id;
      Object  : Entries.Protection_Entries_Access);
   --  Service entry queues: keep executing bodies for open barriers until
   --  no more open barriers remain. Releases the object lock on exit.

   -------------------------
   -- Complete_Entry_Body --
   -------------------------

   procedure Complete_Entry_Body (Object : Protection_Entries_Access) is null;
   --  No-op: preserved for ABI compatibility with full runtimes.

   --------------------
   -- PO_Do_Or_Queue --
   --------------------

   procedure PO_Do_Or_Queue
     (Self_ID    :     Task_Id;
      Object     :     Protection_Entries_Access;
      Entry_Call :     Entry_Call_Link;
      Queued     : out Boolean)
   is
      pragma Unreferenced (Self_ID);

      E     : constant Protected_Entry_Index :=
                Protected_Entry_Index (Entry_Call.E);
      Index : constant Protected_Entry_Index :=
                Object.Find_Body_Index (Object.Compiler_Info, E);

      Barrier_Value : Boolean;
      Queue_Length  : Natural;

   begin
      Queued := False;

      Barrier_Value :=
        Object.Entry_Bodies (Index).Barrier (Object.Compiler_Info, E);

      if Barrier_Value then
         --  Execute entry body immediately

         Object.Call_In_Progress := Entry_Call;
         Object.Entry_Bodies (Index).Action
           (Object.Compiler_Info, Entry_Call.Uninterpreted_Data, E);
         Object.Call_In_Progress := null;

      else
         --  Check per-entry queue length limit (if specified)

         if Object.Entry_Queue_Maxes /= null then
            Queue_Length := Queuing.Count_Waiting (Object.Entry_Queues (E));

            if Object.Entry_Queue_Maxes (Index) /= 0
              and then Queue_Length >= Object.Entry_Queue_Maxes (Index)
            then
               --  Max queue length exceeded: release lock and raise error
               Unlock_Entries (Object);
               raise Program_Error;
            end if;
         end if;

         Queuing.Enqueue (Object.Entry_Queues (E), Entry_Call);
         Queued := True;
      end if;
   end PO_Do_Or_Queue;

   ------------------------
   -- PO_Service_Entries --
   ------------------------

   procedure PO_Service_Entries
     (Self_ID : Task_Id;
      Object  : Entries.Protection_Entries_Access)
   is
      E          : Protected_Entry_Index;
      Caller     : Task_Id;
      Entry_Call : Entry_Call_Link;

   begin
      loop
         Queuing.Select_Protected_Entry_Call (Self_ID, Object, Entry_Call);

         exit when Entry_Call = null;

         E := Protected_Entry_Index (Entry_Call.E);

         Object.Call_In_Progress := Entry_Call;
         Object.Entry_Bodies
           (Object.Find_Body_Index (Object.Compiler_Info, E)).Action
             (Object.Compiler_Info, Entry_Call.Uninterpreted_Data, E);
         Object.Call_In_Progress := null;

         --  Wake up the entry caller (single-CPU: always same CPU)
         Caller := Entry_Call.Self;
         STPO.Wakeup (Caller, Entry_Caller_Sleep);
      end loop;

      Unlock_Entries (Object);
   end PO_Service_Entries;

   ---------------------
   -- Protected_Count --
   ---------------------

   function Protected_Count
     (Object : Protection_Entries;
      E      : Protected_Entry_Index) return Natural
   is
   begin
      return Queuing.Count_Waiting (Object.Entry_Queues (E));
   end Protected_Count;

   --------------------------
   -- Protected_Entry_Call --
   --------------------------

   procedure Protected_Entry_Call
     (Object             : Protection_Entries_Access;
      E                  : Protected_Entry_Index;
      Uninterpreted_Data : System.Address;
      Mode               : Call_Modes;
      Block              : out Communication_Block)
   is
      pragma Unreferenced (Mode);

      Self_ID    : constant Task_Id := STPO.Self;
      Entry_Call : Entry_Call_Link;
      Queued     : Boolean;

   begin
      --  Detect_Blocking: raise Program_Error if called from a protected action
      if Self_ID.Common.Protected_Action_Nesting > 0 then
         raise Program_Error with "potentially blocking operation";
      end if;

      Lock_Entries (Object);

      Block.Self := Self_ID;

      --  Initialize the caller's entry call record
      Entry_Call                    := Self_ID.Entry_Call'Access;
      Entry_Call.Next               := null;
      Entry_Call.E                  := Entry_Index (E);
      Entry_Call.Uninterpreted_Data := Uninterpreted_Data;

      --  Execute immediately if barrier open, else enqueue
      PO_Do_Or_Queue (Self_ID, Object, Entry_Call, Queued);

      --  Service any other open entries; releases the lock
      PO_Service_Entries (Self_ID, Object);

      if Queued then
         --  Block until the entry call is serviced.
         --  Wakeup_Signaled handles the race where wakeup precedes sleep.
         Self_ID.Common.State := Entry_Caller_Sleep;
         STPO.Sleep (Self_ID, Entry_Caller_Sleep);
         Self_ID.Common.State := Runnable;
      end if;
   end Protected_Entry_Call;

   ----------------------------
   -- Protected_Entry_Caller --
   ----------------------------

   function Protected_Entry_Caller
     (Object : Protection_Entries) return Task_Id is
   begin
      return Object.Call_In_Progress.Self;
   end Protected_Entry_Caller;

   ---------------------
   -- Service_Entries --
   ---------------------

   procedure Service_Entries (Object : Protection_Entries_Access) is
      Self_ID : constant Task_Id := STPO.Self;
   begin
      PO_Service_Entries (Self_ID, Object);
   end Service_Entries;

end System.Tasking.Protected_Objects.Operations;
