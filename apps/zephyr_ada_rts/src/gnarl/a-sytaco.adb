------------------------------------------------------------------------------
--                                                                          --
--                 GNAT RUN-TIME LIBRARY (GNARL) COMPONENTS                 --
--                                                                          --
--     A D A . S Y N C H R O N O U S _ T A S K _ C O N T R O L            --
--                                                                          --
--                                 B o d y                                  --
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

package body Ada.Synchronous_Task_Control is

   -----------------------
   -- Suspension_Object --
   -----------------------

   protected body Suspension_Object is

      ------------------------
      -- Suspend_Until_True --
      ------------------------

      entry Suspend_Until_True when Open is
      begin
         Open := False;
      end Suspend_Until_True;

      --------------
      -- Set_True --
      --------------

      procedure Set_True is
      begin
         Open := True;
      end Set_True;

      ---------------
      -- Set_False --
      ---------------

      procedure Set_False is
      begin
         Open := False;
      end Set_False;

      -------------------
      -- Current_State --
      -------------------

      function Current_State return Boolean is
      begin
         return Open;
      end Current_State;

   end Suspension_Object;

   -------------------
   -- Current_State --
   -------------------

   function Current_State (S : Suspension_Object) return Boolean is
   begin
      return S.Current_State;
   end Current_State;

   ---------------
   -- Set_False --
   ---------------

   procedure Set_False (S : in out Suspension_Object) is
   begin
      S.Set_False;
   end Set_False;

   --------------
   -- Set_True --
   --------------

   procedure Set_True (S : in out Suspension_Object) is
   begin
      S.Set_True;
   end Set_True;

   ------------------------
   -- Suspend_Until_True --
   ------------------------

   procedure Suspend_Until_True (S : in out Suspension_Object) is
   begin
      S.Suspend_Until_True;
   end Suspend_Until_True;

end Ada.Synchronous_Task_Control;
