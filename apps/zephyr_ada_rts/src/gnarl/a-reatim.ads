------------------------------------------------------------------------------
--                                                                          --
--                 GNAT RUN-TIME LIBRARY (GNARL) COMPONENTS                 --
--                                                                          --
--                         A D A . R E A L _ T I M E                        --
--                                                                          --
--                                  S p e c                                 --
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
--  Zephyr-specific version of Ada.Real_Time.                               --
--  Works with both 32-bit and 64-bit Duration.                             --
--  Time and Time_Span are always 64-bit (Zephyr k_ticks_t).               --
------------------------------------------------------------------------------

with System.OS_Interface;

package Ada.Real_Time is
   pragma Preelaborate;

   type Time is private;
   Time_First : constant Time;
   Time_Last  : constant Time;

   Time_Unit : constant := 1.0 / System.OS_Interface.Ticks_Per_Second;

   type Time_Span is private;
   Time_Span_First : constant Time_Span;
   Time_Span_Last  : constant Time_Span;
   Time_Span_Zero  : constant Time_Span;
   Time_Span_Unit  : constant Time_Span;

   Tick : constant Time_Span;

   function Clock return Time;

   function "+"  (Left : Time;      Right : Time_Span) return Time;
   function "-"  (Left : Time;      Right : Time_Span) return Time;
   function "-"  (Left : Time;      Right : Time)      return Time_Span;
   function "+"  (Left : Time_Span; Right : Time)      return Time;

   function "+"  (Left, Right : Time_Span) return Time_Span;
   function "-"  (Left, Right : Time_Span) return Time_Span;
   function "-"  (Right : Time_Span)       return Time_Span;
   function "*"  (Left : Time_Span; Right : Integer) return Time_Span;
   function "*"  (Left : Integer;   Right : Time_Span) return Time_Span;
   function "/"  (Left, Right : Time_Span) return Integer;
   function "/"  (Left : Time_Span; Right : Integer) return Time_Span;
   function "abs" (Right : Time_Span) return Time_Span;

   function "<"  (Left, Right : Time)      return Boolean;
   function "<=" (Left, Right : Time)      return Boolean;
   function ">"  (Left, Right : Time)      return Boolean;
   function ">=" (Left, Right : Time)      return Boolean;

   function "<"  (Left, Right : Time_Span) return Boolean;
   function "<=" (Left, Right : Time_Span) return Boolean;
   function ">"  (Left, Right : Time_Span) return Boolean;
   function ">=" (Left, Right : Time_Span) return Boolean;

   function To_Duration  (TS : Time_Span) return Duration;
   function To_Time_Span (D  : Duration)  return Time_Span;

   function Nanoseconds  (NS : Integer) return Time_Span;
   function Microseconds (US : Integer) return Time_Span;
   function Milliseconds (MS : Integer) return Time_Span;
   function Seconds      (S  : Integer) return Time_Span;
   function Minutes      (M  : Integer) return Time_Span;

   type Seconds_Count is range 0 .. 2 ** 63 - 1;

   procedure Split (T : Time; SC : out Seconds_Count; TS : out Time_Span);
   function Time_Of (SC : Seconds_Count; TS : Time_Span) return Time;

private

   type Time      is new System.OS_Interface.Time;
   type Time_Span is new System.OS_Interface.Time_Span;

   Time_First : constant Time := Time'First;
   Time_Last  : constant Time := Time'Last;

   Time_Span_First : constant Time_Span := Time_Span'First;
   Time_Span_Last  : constant Time_Span := Time_Span'Last;
   Time_Span_Zero  : constant Time_Span := 0;
   Time_Span_Unit  : constant Time_Span := 1;

   Tick : constant Time_Span := 1;

   pragma Import (Intrinsic, "<");
   pragma Import (Intrinsic, "<=");
   pragma Import (Intrinsic, ">");
   pragma Import (Intrinsic, ">=");
   pragma Import (Intrinsic, "abs");

   pragma Inline (Microseconds);
   pragma Inline (Milliseconds);
   pragma Inline (Nanoseconds);
   pragma Inline (Seconds);
   pragma Inline (Minutes);

end Ada.Real_Time;
