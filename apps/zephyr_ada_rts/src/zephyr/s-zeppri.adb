------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUN-TIME COMPONENTS                         --
--                                                                          --
--                 S Y S T E M . Z E P H Y R . P R I O R I T I E S          --
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

package body System.Zephyr.Priorities is

   --  Priority mapping strategy:
   --
   --  Ada defines priorities 0-31:
   --    0-30: Task priorities (0 = lowest, 30 = highest)
   --    31:   Interrupt priority
   --
   --  Zephyr uses preemptive priorities where typically:
   --    Lower priority numbers = Higher priority (more urgent)
   --    Priority 0 is usually highest (most urgent)
   --
   --  To map Ada priority to Zephyr priority, we invert the priority scale:
   --    Ada priority 0 (lowest)  → Zephyr priority 30 (least urgent)
   --    Ada priority 30 (highest) → Zephyr priority 0 (most urgent)
   --    Ada priority 31 (interrupt) → Zephyr interrupt level (-1 or special)
   --
   --  Note: This assumes CONFIG_NUM_PREEMPT_PRIORITIES >= 31 in Zephyr config

   Max_Ada_Task_Priority : constant := 30;
   --  Maximum Ada task priority (System.Max_Priority)

   Interrupt_Ada_Priority : constant := 31;
   --  Ada interrupt priority level (System.Interrupt_Priority'First)

   Zephyr_Interrupt_Priority : constant Zephyr_Priority := -1;
   --  Special Zephyr priority for interrupt handlers

   -------------------------
   -- To_Zephyr_Priority --
   -------------------------

   function To_Zephyr_Priority
     (Ada_Prio : Integer) return Zephyr_Priority
   is
   begin
      if Ada_Prio = Interrupt_Ada_Priority then
         --  Interrupt priority maps to special Zephyr interrupt level
         return Zephyr_Interrupt_Priority;
      else
         --  Invert the priority mapping:
         --  Ada 0 (low) → Zephyr 30 (low urgency)
         --  Ada 30 (high) → Zephyr 0 (high urgency)
         return Zephyr_Priority (Max_Ada_Task_Priority - Ada_Prio);
      end if;
   end To_Zephyr_Priority;

   -----------------------
   -- To_Ada_Priority --
   -----------------------

   function To_Ada_Priority
     (Zephyr_Prio : Zephyr_Priority) return Integer
   is
   begin
      if Zephyr_Prio = Zephyr_Interrupt_Priority then
         --  Special interrupt priority
         return Interrupt_Ada_Priority;
      else
         --  Reverse the mapping:
         --  Zephyr 0 (high urgency) → Ada 30 (high)
         --  Zephyr 30 (low urgency) → Ada 0 (low)
         return Max_Ada_Task_Priority - Integer (Zephyr_Prio);
      end if;
   end To_Ada_Priority;

end System.Zephyr.Priorities;
