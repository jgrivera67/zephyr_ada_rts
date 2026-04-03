------------------------------------------------------------------------------
--                                                                          --
--                GNAT RUN-TIME LIBRARY (GNARL) COMPONENTS                  --
--                                                                          --
--                SYSTEM.TASKING.PROTECTED_OBJECTS.ENTRIES                  --
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

--  Jorvik/light-tasking version: protected objects with multiple entries.

with Ada.Unchecked_Conversion;

package System.Tasking.Protected_Objects.Entries is
   pragma Elaborate_Body;

   subtype Positive_Protected_Entry_Index is
     Protected_Entry_Index range  1 .. Protected_Entry_Index'Last;

   type Find_Body_Index_Access is access
     function
       (O : System.Address;
        E : Protected_Entry_Index)
        return Protected_Entry_Index;

   type Protected_Entry_Body_Array is
     array (Positive_Protected_Entry_Index range <>) of Entry_Body;

   type Protected_Entry_Body_Access is
     access constant Protected_Entry_Body_Array;

   type Protected_Entry_Queue_Array is
     array (Protected_Entry_Index range <>) of Entry_Queue;

   type Protected_Entry_Queue_Max_Array is
     array (Positive_Protected_Entry_Index range <>) of Natural;

   type Protected_Entry_Queue_Max_Access is
     access constant Protected_Entry_Queue_Max_Array;

   type Protection_Entries (Num_Entries : Protected_Entry_Index) is record
      Common : aliased Protection;
      --  State common to all protected objects (ceiling, owner, priority)

      Compiler_Info : System.Address;
      --  Pointer to compiler-generated record representing protected object

      Call_In_Progress : Entry_Call_Link;
      --  Pointer to the entry call being executed (if any)

      Entry_Bodies : Protected_Entry_Body_Access;
      --  Pointer to executable code for all entry bodies

      Find_Body_Index : Find_Body_Index_Access;
      --  Maps queue index to entry body index

      Entry_Queue_Maxes : Protected_Entry_Queue_Max_Access;
      --  Max queue lengths per entry (0 = no maximum)

      Entry_Queues : Protected_Entry_Queue_Array (1 .. Num_Entries);
      --  Per-entry wait queues
   end record;

   type Protection_Entries_Access is access all Protection_Entries;

   function To_Address is
     new Ada.Unchecked_Conversion (Protection_Entries_Access, System.Address);
   function To_Protection is
     new Ada.Unchecked_Conversion (System.Address, Protection_Entries_Access);

   procedure Initialize_Protection_Entries
     (Object            : Protection_Entries_Access;
      Ceiling_Priority  : Integer;
      Compiler_Info     : System.Address;
      Entry_Queue_Maxes : Protected_Entry_Queue_Max_Access;
      Entry_Bodies      : Protected_Entry_Body_Access;
      Find_Body_Index   : Find_Body_Index_Access);

   procedure Lock_Entries (Object : Protection_Entries_Access);
   pragma Inline (Lock_Entries);

   procedure Unlock_Entries (Object : Protection_Entries_Access);
   pragma Inline (Unlock_Entries);

end System.Tasking.Protected_Objects.Entries;
