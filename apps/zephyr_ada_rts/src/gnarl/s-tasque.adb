------------------------------------------------------------------------------
--                                                                          --
--                 GNAT RUN-TIME LIBRARY (GNARL) COMPONENTS                 --
--                                                                          --
--                 S Y S T E M . T A S K I N G . Q U E U I N G              --
--                                                                          --
--                                  B o d y                                 --
--                                                                          --
--         Copyright (C) 1992-2025, Free Software Foundation, Inc.          --
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

--  FIFO queuing policy for Jorvik/Zephyr single-CPU runtime.

package body System.Tasking.Queuing is

   use Protected_Objects;
   use Protected_Objects.Entries;

   procedure Dequeue_Head
     (E    : in out Entry_Queue;
      Call : out Entry_Call_Link);
   --  Remove and return the head of entry queue E

   function Head (E : Entry_Queue) return Entry_Call_Link;
   --  Return the head of entry queue E without removing it

   ------------------
   -- Dequeue_Head --
   ------------------

   procedure Dequeue_Head
     (E    : in out Entry_Queue;
      Call : out Entry_Call_Link)
   is
      Temp : Entry_Call_Link;
   begin
      if E.Head = null then
         Call := null;
         return;
      end if;

      Temp := E.Head;

      --  Single element
      if E.Head = E.Tail then
         E.Head := null;
         E.Tail := null;
      else
         E.Head         := Temp.Next;
         Temp.Prev.Next := Temp.Next;
         Temp.Next.Prev := Temp.Prev;
      end if;

      Temp.Prev := null;
      Temp.Next := null;
      Call := Temp;
   end Dequeue_Head;

   -------------
   -- Enqueue --
   -------------

   procedure Enqueue (E : in out Entry_Queue; Call : Entry_Call_Link) is
   begin
      pragma Assert (Call /= null);

      if E.Head = null then
         E.Head := Call;
      else
         E.Tail.Next := Call;
         Call.Prev   := E.Tail;
      end if;

      E.Head.Prev := Call;
      E.Tail      := Call;
      Call.Next   := E.Head;
   end Enqueue;

   ----------
   -- Head --
   ----------

   function Head (E : Entry_Queue) return Entry_Call_Link is
   begin
      return E.Head;
   end Head;

   -------------------
   -- Count_Waiting --
   -------------------

   function Count_Waiting (E : Entry_Queue) return Natural is
      Count : Natural := 0;
      Temp  : Entry_Call_Link;
   begin
      if E.Head /= null then
         Temp := E.Head;
         loop
            Count := Count + 1;
            exit when E.Tail = Temp;
            Temp := Temp.Next;
         end loop;
      end if;
      return Count;
   end Count_Waiting;

   ---------------------------------
   -- Select_Protected_Entry_Call --
   ---------------------------------

   procedure Select_Protected_Entry_Call
     (Self_ID : Task_Id;
      Object  : Protection_Entries_Access;
      Call    : out Entry_Call_Link)
   is
      pragma Unreferenced (Self_ID);

      Entry_Call  : Entry_Call_Link;
      Temp_Call   : Entry_Call_Link;
      Entry_Index : Protected_Entry_Index := Null_Entry;

   begin
      Entry_Call := null;

      --  FIFO: scan entry queues, take first with open barrier

      for J in Object.Entry_Queues'Range loop
         Temp_Call := Head (Object.Entry_Queues (J));

         if Temp_Call /= null
           and then Object.Entry_Bodies
                      (Object.Find_Body_Index
                         (Object.Compiler_Info, J)).Barrier
                        (Object.Compiler_Info, J)
         then
            Entry_Call  := Temp_Call;
            Entry_Index := J;
            exit;
         end if;
      end loop;

      if Entry_Call /= null then
         Dequeue_Head (Object.Entry_Queues (Entry_Index), Entry_Call);
      end if;

      Call := Entry_Call;
   end Select_Protected_Entry_Call;

end System.Tasking.Queuing;
