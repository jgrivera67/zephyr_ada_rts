------------------------------------------------------------------------------
--                                                                          --
--                 GNAT RUN-TIME LIBRARY (GNARL) COMPONENTS                 --
--                                                                          --
--                S Y S T E M . R E L A T I V E _ D E L A Y S               --
--                                                                          --
--                                  B o d y                                 --
--                                                                          --
--             Copyright (C) 2016-2025, Free Software Foundation, Inc.      --
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

--  Zephyr implementation: converts a relative Duration delay into an
--  absolute "delay until" using Ada.Real_Time.

--  Implemented by converting D to a Real_Time.Time_Span and calling
--  Ada.Real_Time.Delays.Delay_Until. This avoids using the "delay until"
--  construct (which would circularly require this package itself to be ready).

with Ada.Real_Time; use Ada.Real_Time;
with Ada.Real_Time.Delays;

package body System.Relative_Delays is

   procedure Delay_For (D : Duration) is
      Wakeup : constant Ada.Real_Time.Time :=
        Ada.Real_Time.Clock + Ada.Real_Time.To_Time_Span (D);
   begin
      Ada.Real_Time.Delays.Delay_Until (Wakeup);
   end Delay_For;

end System.Relative_Delays;
