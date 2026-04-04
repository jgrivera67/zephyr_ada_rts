--
--  Copyright (c) 2026, German Rivera
--
--  SPDX-License-Identifier: Apache-2.0
--
package body Task_Stack_Info is

   procedure Get_Current_Task_Stack
     (Stack_Start : out System.Address;
      Stack_Size  : out Interfaces.Unsigned_32) is
   begin
      Stack_Start := System.Null_Address;
      Stack_Size  := 0;
   end Get_Current_Task_Stack;

end Task_Stack_Info;
