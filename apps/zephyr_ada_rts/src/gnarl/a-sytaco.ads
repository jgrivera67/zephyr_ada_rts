------------------------------------------------------------------------------
--                                                                          --
--                 GNAT RUN-TIME LIBRARY (GNARL) COMPONENTS                 --
--                                                                          --
--     A D A . S Y N C H R O N O U S _ T A S K _ C O N T R O L            --
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

--  Ada.Synchronous_Task_Control — RM D.10
--
--  Suspension_Object is implemented as a protected type whose barrier-based
--  entry gives correct blocking semantics via the Zephyr-backed GNARL mutex
--  and condvar machinery already used by ordinary Ada protected objects.

package Ada.Synchronous_Task_Control is
   pragma Preelaborate;

   type Suspension_Object is limited private;
   --  A binary flag object on which a task may wait.  Initial state is False.

   procedure Set_True (S : in out Suspension_Object);
   --  Set S to True.  If a task is suspended on S it is released.

   procedure Set_False (S : in out Suspension_Object);
   --  Set S to False.

   function Current_State (S : Suspension_Object) return Boolean;
   --  Return the current boolean state of S.

   procedure Suspend_Until_True (S : in out Suspension_Object);
   --  Block the calling task until S is True, then atomically set S to False.

private

   protected type Suspension_Object is
      entry Suspend_Until_True;
      procedure Set_True;
      procedure Set_False;
      function Current_State return Boolean;
   private
      Open : Boolean := False;
   end Suspension_Object;

end Ada.Synchronous_Task_Control;
