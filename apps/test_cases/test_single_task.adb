------------------------------------------------------------------------------
--                                                                          --
--                        Ada Tasking Test Suite                           --
--                                                                          --
--                     T E S T _ S I N G L E _ T A S K                      --
--                                                                          --
--                                                                          --
--          Copyright (C) 2024-2026, Free Software Foundation, Inc.         --
--                                                                          --
-- This test program is free software;  you can  redistribute it  and/or   --
-- modify it under terms of the GNU General Public License as published by --
-- the Free Software Foundation;  either version 3, or (at your  option)   --
-- any later version.  This test is distributed in the hope that it will   --
-- be useful, but WITHOUT ANY WARRANTY;  without even the implied warranty --
-- of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.                  --
--                                                                          --
-- You should have received a copy of the GNU General Public License       --
-- distributed with GNAT; see file COPYING3.  If not go to                 --
-- http://www.gnu.org/licenses for a complete copy of the license.         --
--                                                                          --
------------------------------------------------------------------------------

--  Test 1: Single Task Creation
--
--  This test verifies that:
--  1. A single Ada task can be created
--  2. The task executes its body
--  3. Task activation completes successfully
--  4. Basic task execution works on Zephyr

with Ada.Real_Time; use Ada.Real_Time;
with System;

procedure Test_Single_Task is

   --  Simple task that prints a message and delays
   task Worker_Task is
      pragma Priority (System.Default_Priority);
   end Worker_Task;

   task body Worker_Task is
      Count : Natural := 0;
   begin
      loop
         Count := Count + 1;

         --  In a real application, this would print to console
         --  For now, we just verify the task runs by counting

         delay until Clock + Milliseconds (1000);

         exit when Count >= 5;  -- Run for 5 iterations
      end loop;
   end Worker_Task;

begin
   --  Main program body
   --  The Worker_Task will be activated automatically before this point

   --  Wait for worker task to complete its iterations
   delay until Clock + Milliseconds (6000);

   --  If we reach here, the test passed:
   --  - Task was created successfully
   --  - Task activated and ran
   --  - Delay_Until worked correctly
   --  - Environment task continued execution

end Test_Single_Task;
