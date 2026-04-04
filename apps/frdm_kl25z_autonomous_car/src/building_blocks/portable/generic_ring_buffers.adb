--
--  Copyright (c) 2016, German Rivera
--  All rights reserved.
--
--  Redistribution and use in source and binary forms, with or without
--  modification, are permitted provided that the following conditions are met:
--
--  * Redistributions of source code must retain the above copyright notice,
--    this list of conditions and the following disclaimer.
--
--  * Redistributions in binary form must reproduce the above copyright notice,
--    this list of conditions and the following disclaimer in the documentation
--    and/or other materials provided with the distribution.
--
--  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
--  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
--  IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
--  ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
--  LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
--  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
--  SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
--  INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
--  CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
--  ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
--  POSSIBILITY OF SUCH DAMAGE.
--

package body Generic_Ring_Buffers is

   function Initialized (Ring_Buffer : Ring_Buffer_Type) return Boolean is
     (Ring_Buffer.Initialized);

   -- ** --

   procedure Initialize (Ring_Buffer : out Ring_Buffer_Type;
                         Name : not null access constant String) is
   begin
      pragma Assert (not Ring_Buffer.Initialized);
      Ring_Buffer.Name := Name;
      Ring_Buffer.Initialized := True;
   end Initialize;

   -- ** --

   procedure Read (Ring_Buffer : in out Ring_Buffer_Type;
                   Element : out Element_Type) is
   begin
      Ring_Buffer.Buffer.Read (Element);
   end Read;

   -- ** --

   procedure Write_Non_Blocking (Ring_Buffer : in out Ring_Buffer_Type;
                                 Element : Element_Type;
                                 Write_Ok : out Boolean) is
   begin
      Ring_Buffer.Buffer.Write (Element, Write_Ok);
   end Write_Non_Blocking;

   -- ** --

   procedure Write (Ring_Buffer : in out Ring_Buffer_Type;
                    Element     :        Element_Type) is
   begin
      Ring_Buffer.Buffer.Write_Blocking (Element);
   end Write;

   -- ** --

   protected body Buffer_Type is

      --
      --  The barrier (Num_Elements_Filled > 0) replaces the old
      --  Not_Empty suspension object.  When Write increments
      --  Num_Elements_Filled and the protected object is released, the
      --  runtime re-evaluates this barrier and posts PendSV to wake the
      --  reader task.  No Set_True call is needed.
      --
      entry Write_Blocking (Element : Element_Type)
        when Num_Elements_Free > 0 is
      begin
         Buffer_Data (Write_Cursor) := Element;
         if Write_Cursor < Buffer_Index_Type'Last then
            Write_Cursor := Write_Cursor + 1;
         else
            Write_Cursor := Buffer_Index_Type'First;
         end if;
         Num_Elements_Filled := Num_Elements_Filled + 1;
         Num_Elements_Free   := Num_Elements_Free   - 1;
      end Write_Blocking;

      -- ** --

      entry Read (Element : out Element_Type)
        when Num_Elements_Filled > 0 is
      begin
         Element := Buffer_Data (Read_Cursor);
         if Read_Cursor < Buffer_Index_Type'Last then
            Read_Cursor := Read_Cursor + 1;
         else
            Read_Cursor := Buffer_Index_Type'First;
         end if;
         Num_Elements_Filled := Num_Elements_Filled - 1;
         Num_Elements_Free   := Num_Elements_Free   + 1;
      end Read;

      -- ** --

      procedure Write (Element  :     Element_Type;
                       Write_Ok : out Boolean) is
      begin
         if Num_Elements_Free = 0 then
            Write_Ok := False;
         else
            Buffer_Data (Write_Cursor) := Element;
            if Write_Cursor < Buffer_Index_Type'Last then
               Write_Cursor := Write_Cursor + 1;
            else
               Write_Cursor := Buffer_Index_Type'First;
            end if;
            Num_Elements_Filled := Num_Elements_Filled + 1;
            Num_Elements_Free   := Num_Elements_Free   - 1;
            Write_Ok := True;
         end if;
      end Write;

   end Buffer_Type;

end Generic_Ring_Buffers;
