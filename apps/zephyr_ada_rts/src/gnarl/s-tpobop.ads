------------------------------------------------------------------------------
--                                                                          --
--                 GNAT RUN-TIME LIBRARY (GNARL) COMPONENTS                 --
--                                                                          --
--               SYSTEM.TASKING.PROTECTED_OBJECTS.OPERATIONS                --
--                                                                          --
--                                  S p e c                                 --
--                                                                          --
--          Copyright (C) 1992-2025, Free Software Foundation, Inc.         --
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
--  Entry calls, barrier evaluation, queuing, and wakeup of entry callers.

with System.Tasking.Protected_Objects.Entries;

package System.Tasking.Protected_Objects.Operations is
   pragma Elaborate_Body;

   type Communication_Block is private;
   --  Passed between GNARL calls to preserve RTS information

   procedure Protected_Entry_Call
     (Object             : Entries.Protection_Entries_Access;
      E                  : Protected_Entry_Index;
      Uninterpreted_Data : System.Address;
      Mode               : Call_Modes;
      Block              : out Communication_Block);
   --  Make a protected entry call. If the barrier is open, execute immediately;
   --  otherwise enqueue the call and block the caller until serviced.

   procedure Service_Entries (Object : Entries.Protection_Entries_Access);
   pragma Inline (Service_Entries);
   --  Service all entry queues of Object: execute bodies for any queued calls
   --  whose barriers are now open. Releases the object lock on exit.

   procedure Complete_Entry_Body (Object : Entries.Protection_Entries_Access);
   --  Marks completion of the entry body currently in service (no-op here).

   function Protected_Count
     (Object : Entries.Protection_Entries;
      E      : Protected_Entry_Index) return Natural;
   --  Return the number of queued entry calls on entry E of Object

   function Protected_Entry_Caller
     (Object : Entries.Protection_Entries) return Task_Id;
   --  Return E'Caller for the protected entry currently being handled

private
   type Communication_Block is record
      Self : Task_Id;
   end record;
   pragma Volatile (Communication_Block);
end System.Tasking.Protected_Objects.Operations;
