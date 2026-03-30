--
--  Copyright (c) 2026, German Rivera
--
--  SPDX-License-Identifier: Apache-2.0
--
--  Task stack information stub for the Zephyr Ada port.
--  Provides the interface used by Stack_Trace_Capture to query the current
--  task's stack boundaries.  The stub returns a zero-sized stack, which
--  causes the stack unwinder to skip unwinding (safe, non-fatal).
--
with System;
with Interfaces;

package Task_Stack_Info is
   pragma Preelaborate;

   procedure Get_Current_Task_Stack
     (Stack_Start : out System.Address;
      Stack_Size  : out Interfaces.Unsigned_32);
   --  Return the start address and byte size of the current task's stack.

end Task_Stack_Info;
