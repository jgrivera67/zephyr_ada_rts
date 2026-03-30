------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUN-TIME COMPONENTS                         --
--                                                                          --
--                 S Y S T E M . Z E P H Y R . P R I O R I T I E S          --
--                                                                          --
--                                  S p e c                                 --
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

--  This package provides priority mapping between Ada and Zephyr priorities.
--  Ada uses priorities 0-31 (0-30 for tasks, 31 for interrupts) while Zephyr
--  uses cooperative and preemptive priority schemes that vary by platform.

pragma Restrictions (No_Elaboration_Code);

with Interfaces.C;

package System.Zephyr.Priorities is
   pragma Preelaborate;

   subtype Zephyr_Priority is Interfaces.C.int;
   --  Zephyr priority type (platform-specific range)

   function To_Zephyr_Priority
     (Ada_Prio : Integer) return Zephyr_Priority;
   --  Convert Ada priority (0-31) to Zephyr priority.
   --  Ada priority 0 (lowest) maps to Zephyr lowest priority
   --  Ada priority 30 (highest task) maps to Zephyr highest task priority
   --  Ada priority 31 (interrupt) maps to Zephyr interrupt priority level

   function To_Ada_Priority
     (Zephyr_Prio : Zephyr_Priority) return Integer;
   --  Convert Zephyr priority back to Ada priority (0-31)

   pragma Inline (To_Zephyr_Priority);
   pragma Inline (To_Ada_Priority);

end System.Zephyr.Priorities;
