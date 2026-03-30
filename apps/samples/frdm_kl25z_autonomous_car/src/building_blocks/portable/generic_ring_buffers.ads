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

--
--  Generic ring buffer abstract data type
--

with System;
with Microcontroller.Arm_Cortex_M;

generic
   type Element_Type is private;
   Max_Num_Elements : Positive;
package Generic_Ring_Buffers is
   pragma Preelaborate;
   use Microcontroller.Arm_Cortex_M;

   type Ring_Buffer_Type is limited private;

   function Initialized (Ring_Buffer : Ring_Buffer_Type) return Boolean
     with Inline;
   --  @private (Used only in contracts)

   procedure Initialize (Ring_Buffer : out Ring_Buffer_Type;
                         Name : not null access constant String);

   procedure Write_Non_Blocking (Ring_Buffer : in out Ring_Buffer_Type;
                                 Element : Element_Type;
                                 Write_Ok : out Boolean)
     with Pre => Initialized (Ring_Buffer);
   --  Non-blocking write. Safe to call from an ISR (PRIMASK=1).

   procedure Write (Ring_Buffer : in out Ring_Buffer_Type;
                    Element     :        Element_Type)
     with Pre => Initialized (Ring_Buffer) and then
                 not Are_Cpu_Interrupts_Disabled;
   --  Blocking write. Must be called from task context only (not from an ISR).
   --  Suspends the caller until space is available.

   procedure Read (Ring_Buffer : in out Ring_Buffer_Type;
                   Element : out Element_Type)
     with Pre => Initialized (Ring_Buffer) and then
                 not Are_Cpu_Interrupts_Disabled;
   --  Blocking read. Must be called from task context only (not from an ISR).
   --  Suspends the caller until at least one element is available.

private

   subtype Buffer_Index_Type is Positive range 1 .. Max_Num_Elements;

   type Buffer_Data_Type is array (Buffer_Index_Type) of Element_Type;

   --
   --  Buffer protected type.
   --
   protected type Buffer_Type is
      pragma Interrupt_Priority (System.Interrupt_Priority'Last);

      procedure Write (Element  :     Element_Type;
                       Write_Ok : out Boolean);
      --  Non-blocking. Safe to call from an ISR (PRIMASK=1).

      entry Write_Blocking (Element : Element_Type);
      --  Blocking. The barrier (Num_Elements_Filled < Max_Num_Elements)
      --  suspends the caller until space is available.
      --  Must NOT be called from an ISR.

      entry Read (Element : out Element_Type);
      --  Blocking. The barrier (Num_Elements_Filled > 0) suspends the
      --  caller until at least one element is available.

   private
      Buffer_Data         : Buffer_Data_Type;
      Write_Cursor        : Buffer_Index_Type := Buffer_Index_Type'First;
      Read_Cursor         : Buffer_Index_Type := Buffer_Index_Type'First;
      Num_Elements_Filled : Natural range 0 .. Max_Num_Elements := 0;
      Num_Elements_Free   : Natural range 0 .. Max_Num_Elements := Max_Num_Elements;
      --  Num_Elements_Free is kept in sync with Num_Elements_Filled so that
      --  Write_Blocking can use "when Num_Elements_Free > 0" as a pure barrier
      --  (Ravenscar pure barriers may only reference protected-object components,
      --  not generic parameters such as Max_Num_Elements).
   end Buffer_Type;

   --
   --  Ring buffer type
   --
   type Ring_Buffer_Type is limited record
      Initialized : Boolean := False;
      Name        : access constant String;
      Buffer      : Buffer_Type;
   end record;

end Generic_Ring_Buffers;
