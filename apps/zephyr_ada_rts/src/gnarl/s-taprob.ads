------------------------------------------------------------------------------
--                                                                          --
--                 GNAT RUN-TIME LIBRARY (GNARL) COMPONENTS                 --
--                                                                          --
--      S Y S T E M . T A S K I N G . P R O T E C T E D _ O B J E C T S     --
--                                                                          --
--                                  S p e c                                 --
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

--  Zephyr version: single-CPU, no Fair_Locks dependency.
--  Uses ceiling priority protocol for task-priority protected objects and
--  interrupt masking (irq_lock/irq_unlock) for interrupt-priority ones.

with Interfaces.C;

package System.Tasking.Protected_Objects is
   pragma Elaborate_Body;

   ---------------------------------
   -- Compiler Interface (GNARLI) --
   ---------------------------------

   Null_Protected_Entry : constant := Null_Entry;

   Max_Protected_Entry : constant := Max_Entry;

   type Protected_Entry_Index is new Entry_Index
     range Null_Protected_Entry .. Max_Protected_Entry;

   type Barrier_Function_Pointer is access
     function
       (O : System.Address;
        E : Protected_Entry_Index)
        return Boolean;

   type Entry_Action_Pointer is access
     procedure
       (O : System.Address;
        P : System.Address;
        E : Protected_Entry_Index);

   type Entry_Body is record
      Barrier : Barrier_Function_Pointer;
      Action  : Entry_Action_Pointer;
   end record;

   type Protection is limited private;

   type Protection_Access is access all Protection;

   Null_PO : constant Protection_Access := null;

   procedure Initialize_Protection
     (Object           : Protection_Access;
      Ceiling_Priority : Integer);

   procedure Lock (Object : Protection_Access);

   procedure Lock_Read_Only (Object : Protection_Access) renames Lock;

   procedure Unlock (Object : Protection_Access);

private

   type Protection is record
      Ceiling : System.Any_Priority;
      --  Ceiling priority associated to the protected object

      Caller_Priority : System.Any_Priority;
      --  Task's active priority when the protected operation was called
      --  (task-priority POs only)

      Owner : Task_Id;
      --  The protected object's owner. Null_Task if currently unused.
      --  (task-priority POs only)

      Saved_Int_Key : Interfaces.C.unsigned;
      --  Interrupt state saved by irq_lock on entry to an interrupt-priority
      --  protected object; restored by irq_unlock on exit.
   end record;
   pragma Suppress_Initialization (Protection);

end System.Tasking.Protected_Objects;
