------------------------------------------------------------------------------
--                                                                          --
--                 GNAT RUN-TIME LIBRARY (GNARL) COMPONENTS                 --
--                                                                          --
--                         A D A . R E A L _ T I M E                        --
--                                                                          --
--                                  B o d y                                 --
--                                                                          --
--          Copyright (C) 2001-2025, Free Software Foundation, Inc.         --
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
--  Zephyr-specific implementation of Ada.Real_Time.                        --
--  Works with 32-bit Duration in system.ads (Duration_32_Bits = True).    --
--  Uses Zephyr kernel tick counter as the time base.                       --
------------------------------------------------------------------------------

with Ada.Unchecked_Conversion;
with System.Task_Primitives.Operations;

package body Ada.Real_Time is

   package OSI renames System.OS_Interface;

   subtype LLI is Long_Long_Integer;

   Ticks : constant LLI := LLI (OSI.Ticks_Per_Second);

   --  Duration has a 32-bit internal fixed-point representation.
   --  We use Unchecked_Conversion to access its internal bits.
   type Duration_Int is new Integer;
   for Duration_Int'Size use 32;

   function Duration_To_Int is
     new Ada.Unchecked_Conversion (Duration, Duration_Int);
   function Int_To_Duration is
     new Ada.Unchecked_Conversion (Duration_Int, Duration);

   --  Duration_Units_Per_Second = 1.0 / Duration'Small.
   --  For Duration_32_Bits = True, Duration'Small = 1.0E-6, so this = 1_000_000.
   Duration_Units_Per_Second : constant LLI :=
     LLI (1.0 / Duration'Small + 0.5);

   -----------
   -- Clock --
   -----------

   overriding function Clock return Time is
   begin
      return Time (System.Task_Primitives.Operations.Monotonic_Clock);
   end Clock;

   ---------
   -- "+" --
   ---------

   function "+" (Left : Time; Right : Time_Span) return Time is
   begin
      return Time (LLI (Left) + LLI (Right));
   end "+";

   function "+" (Left : Time_Span; Right : Time) return Time is
   begin
      return Right + Left;
   end "+";

   function "+" (Left, Right : Time_Span) return Time_Span is
   begin
      return Time_Span (LLI (Left) + LLI (Right));
   end "+";

   ---------
   -- "-" --
   ---------

   function "-" (Left : Time; Right : Time_Span) return Time is
   begin
      return Time (LLI (Left) - LLI (Right));
   end "-";

   function "-" (Left : Time; Right : Time) return Time_Span is
   begin
      return Time_Span (LLI (Left) - LLI (Right));
   end "-";

   function "-" (Left, Right : Time_Span) return Time_Span is
   begin
      return Time_Span (LLI (Left) - LLI (Right));
   end "-";

   function "-" (Right : Time_Span) return Time_Span is
   begin
      return Time_Span (-LLI (Right));
   end "-";

   ---------
   -- "*" --
   ---------

   function "*" (Left : Time_Span; Right : Integer) return Time_Span is
   begin
      return Time_Span (LLI (Left) * LLI (Right));
   end "*";

   function "*" (Left : Integer; Right : Time_Span) return Time_Span is
   begin
      return Right * Left;
   end "*";

   ---------
   -- "/" --
   ---------

   function "/" (Left, Right : Time_Span) return Integer is
   begin
      return Integer (LLI (Left) / LLI (Right));
   end "/";

   function "/" (Left : Time_Span; Right : Integer) return Time_Span is
   begin
      return Time_Span (LLI (Left) / LLI (Right));
   end "/";

   --  "abs", "<", "<=", ">", ">=" are imported as Intrinsic in the spec.

   ------------------
   -- Microseconds --
   ------------------

   function Microseconds (US : Integer) return Time_Span is
   begin
      return Time_Span ((LLI (US) * Ticks + 500_000) / 1_000_000);
   end Microseconds;

   ------------------
   -- Milliseconds --
   ------------------

   function Milliseconds (MS : Integer) return Time_Span is
   begin
      return Time_Span ((LLI (MS) * Ticks + 500) / 1_000);
   end Milliseconds;

   -----------------
   -- Nanoseconds --
   -----------------

   function Nanoseconds (NS : Integer) return Time_Span is
   begin
      return Time_Span ((LLI (NS) * Ticks + 500_000_000) / 1_000_000_000);
   end Nanoseconds;

   -------------
   -- Seconds --
   -------------

   function Seconds (S : Integer) return Time_Span is
   begin
      return Time_Span (LLI (S) * Ticks);
   end Seconds;

   -------------
   -- Minutes --
   -------------

   function Minutes (M : Integer) return Time_Span is
   begin
      return Time_Span (LLI (M) * 60 * Ticks);
   end Minutes;

   -----------
   -- Split --
   -----------

   procedure Split (T : Time; SC : out Seconds_Count; TS : out Time_Span) is
   begin
      SC := Seconds_Count (LLI (T) / Ticks);
      TS := Time_Span (LLI (T) - LLI (SC) * Ticks);
   end Split;

   -------------
   -- Time_Of --
   -------------

   function Time_Of (SC : Seconds_Count; TS : Time_Span) return Time is
   begin
      return Time (LLI (SC) * Ticks + LLI (TS));
   end Time_Of;

   -----------------
   -- To_Duration --
   -----------------

   --  Convert Time_Span (Zephyr ticks) to Duration.
   --  Duration'Small = 1.0E-6 (1 microsecond), Duration_Units_Per_Second = 1_000_000.
   --  Formula: D_units = TS_ticks * Duration_Units_Per_Second / Ticks_Per_Second

   function To_Duration (TS : Time_Span) return Duration is
      Ticks_Val : constant LLI := LLI (TS);
      Sec       : constant LLI := Ticks_Val / Ticks;
      Frac      : constant LLI := Ticks_Val rem Ticks;
      Dur_Units : constant LLI :=
        Sec * Duration_Units_Per_Second
        + (Frac * Duration_Units_Per_Second) / Ticks;
   begin
      return Int_To_Duration (Duration_Int (Dur_Units));
   end To_Duration;

   ------------------
   -- To_Time_Span --
   ------------------

   --  Convert Duration to Time_Span (Zephyr ticks).
   --  Formula: TS_ticks = D_units * Ticks_Per_Second / Duration_Units_Per_Second

   function To_Time_Span (D : Duration) return Time_Span is
      D_Units : constant LLI := LLI (Duration_To_Int (D));
      Sec     : constant LLI := D_Units / Duration_Units_Per_Second;
      Frac    : constant LLI := D_Units rem Duration_Units_Per_Second;
   begin
      return Time_Span
        (Sec * Ticks + (Frac * Ticks) / Duration_Units_Per_Second);
   end To_Time_Span;

end Ada.Real_Time;
