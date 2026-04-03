------------------------------------------------------------------------------
--                                                                          --
--                 GNAT RUN-TIME LIBRARY (GNARL) COMPONENTS                 --
--                                                                          --
--      S Y S T E M . T A S K I N G . P R O T E C T E D _ O B J E C T S     --
--                                                                          --
--                                  B o d y                                 --
--                                                                          --
--          Copyright (C) 1992-2025, Free Software Foundation, Inc.         --
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

--  Zephyr single-CPU implementation using ceiling priority protocol for
--  task-priority protected objects and interrupt masking (irq_lock/irq_unlock)
--  for interrupt-priority ones.  No Fair_Locks needed (single-core target).

pragma Style_Checks (All_Checks);

with Interfaces.C;
with System.Task_Primitives.Operations;

package body System.Tasking.Protected_Objects is

   package STPO renames System.Task_Primitives.Operations;

   --  -----------------------------------------------------------------------
   --  Zephyr interrupt lock/unlock shims
   --
   --  Irq_Lock  — disables all maskable interrupts and returns the previous
   --              interrupt state (the "key").  Nestable on Zephyr: an inner
   --              call increments the lock count; interrupts stay masked until
   --              the outermost Irq_Unlock.
   --  Irq_Unlock — restores the interrupt state saved by the matching Irq_Lock.
   --  -----------------------------------------------------------------------

   function Irq_Lock return Interfaces.C.unsigned
     with Import, Convention => C, External_Name => "ada_irq_lock";

   procedure Irq_Unlock (Key : Interfaces.C.unsigned)
     with Import, Convention => C, External_Name => "ada_irq_unlock";

   ---------------------------
   -- Initialize_Protection --
   ---------------------------

   procedure Initialize_Protection
     (Object           : Protection_Access;
      Ceiling_Priority : Integer)
   is
      Init_Priority : Integer := Ceiling_Priority;

   begin
      if Init_Priority = Unspecified_Priority then
         Init_Priority := System.Priority'Last;
      end if;

      Object.Ceiling         := System.Any_Priority (Init_Priority);
      Object.Caller_Priority := System.Any_Priority'First;
      Object.Owner           := Null_Task;
      Object.Saved_Int_Key   := 0;
   end Initialize_Protection;

   ----------
   -- Lock --
   ----------

   procedure Lock (Object : Protection_Access) is
   begin
      if Object.Ceiling >= System.Interrupt_Priority'First then
         --  Interrupt-priority protected object: mutual exclusion is achieved
         --  by disabling interrupts.  This is safe from both task context and
         --  ISR context, and avoids touching the ATCB (which is invalid in an
         --  ISR).  Zephyr's irq_lock is nestable so re-entrant ISR calls are
         --  handled correctly.

         Object.Saved_Int_Key := Irq_Lock;

      else
         --  Task-priority protected object: ceiling locking protocol.
         --  Must only be called from task context.

         declare
            Self_Id         : constant Task_Id := STPO.Self;
            Caller_Priority : constant Any_Priority :=
              Any_Priority (STPO.Get_Priority (Self_Id));
         begin
            --  Detect ceiling locking violation (Detect_Blocking always active)

            if Object.Owner = Self_Id then
               raise Program_Error;
            end if;

            if Caller_Priority > Object.Ceiling then
               raise Program_Error;
            end if;

            --  Raise priority to ceiling

            STPO.Set_Priority (Self_Id, Extended_Priority (Object.Ceiling));

            --  Mark ownership and save caller's priority for restore on unlock

            Object.Owner           := Self_Id;
            Object.Caller_Priority := Caller_Priority;

            --  Track nesting level (for Detect_Blocking in entry calls)

            Self_Id.Common.Protected_Action_Nesting :=
              Self_Id.Common.Protected_Action_Nesting + 1;
         end;
      end if;
   end Lock;

   ------------
   -- Unlock --
   ------------

   procedure Unlock (Object : Protection_Access) is
   begin
      if Object.Ceiling >= System.Interrupt_Priority'First then
         --  Interrupt-priority protected object: restore interrupt state.

         Irq_Unlock (Object.Saved_Int_Key);

      else
         --  Task-priority protected object: restore ceiling protocol state.

         declare
            Self_Id         : constant Task_Id := STPO.Self;
            Caller_Priority : constant Any_Priority := Object.Caller_Priority;
         begin
            pragma Assert (Self_Id.Common.Protected_Action_Nesting > 0
                           and then Object.Owner = Self_Id);

            Object.Owner := Null_Task;

            Self_Id.Common.Protected_Action_Nesting :=
              Self_Id.Common.Protected_Action_Nesting - 1;

            --  Restore caller priority

            STPO.Set_Priority (Self_Id, Extended_Priority (Caller_Priority));
         end;
      end if;
   end Unlock;

begin
   Tasking.Initialize;
end System.Tasking.Protected_Objects;
