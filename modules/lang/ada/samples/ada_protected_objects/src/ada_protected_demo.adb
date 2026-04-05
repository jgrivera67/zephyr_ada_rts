--
--  Copyright (c) 2025 Zephyr Ada Contributors
--
--  SPDX-License-Identifier: Apache-2.0
--
--  Ada Protected Objects Demo
--
--  Demonstrates Ada protected objects as the *only* synchronization mechanism.
--  No k_mutex, k_sem, or k_condvar calls appear in this Ada code — the Ada
--  compiler and RTS handle all synchronization automatically.
--
--  Patterns demonstrated:
--
--  1. Protected variable: mutual exclusion for shared data (replaces k_mutex)
--
--  2. Bounded buffer with entry barriers: blocks producers when full,
--     blocks consumers when empty (replaces k_sem pair pattern)
--
--  3. Event flag: one-shot notification from ISR to task (replaces k_event)
--

with Interfaces.C;

package body Ada_Protected_Demo is

   use Interfaces;

   procedure Printk (Fmt : String; Arg : C.unsigned := 0);
   pragma Import (C_Variadic_1, Printk, "printk");

   --  -----------------------------------------------------------------------
   --  Pattern 1: Protected variable (mutex replacement)
   --  -----------------------------------------------------------------------

   protected Shared_Config is
      procedure Set_Rate (Hz : Positive);
      function Rate return Positive;
   private
      Current_Rate : Positive := 1;
   end Shared_Config;

   protected body Shared_Config is
      procedure Set_Rate (Hz : Positive) is
      begin
         Current_Rate := Hz;
      end Set_Rate;

      function Rate return Positive is (Current_Rate);
   end Shared_Config;

   --  -----------------------------------------------------------------------
   --  Pattern 2: Bounded FIFO buffer (producer-consumer)
   --  -----------------------------------------------------------------------

   Buffer_Capacity : constant := 4;

   type Buffer_Data_Array is array (0 .. Buffer_Capacity - 1) of Integer;

   protected Bounded_Buffer is
      --  Barriers ensure: Put blocks when full, Get blocks when empty
      entry Put (Item : Integer);
      entry Get (Item : out Integer);
      function Count return Natural;
   private
      Data  : Buffer_Data_Array;
      Head  : Natural := 0;   -- next read position
      Tail  : Natural := 0;   -- next write position
      Len   : Natural := 0;   -- current occupancy
   end Bounded_Buffer;

   protected body Bounded_Buffer is

      entry Put (Item : Integer) when Len < Buffer_Capacity is
      begin
         Data (Tail) := Item;
         Tail := (Tail + 1) mod Buffer_Capacity;
         Len  := Len + 1;
      end Put;

      entry Get (Item : out Integer) when Len > 0 is
      begin
         Item := Data (Head);
         Head := (Head + 1) mod Buffer_Capacity;
         Len  := Len - 1;
      end Get;

      function Count return Natural is (Len);
   end Bounded_Buffer;

   --  -----------------------------------------------------------------------
   --  Pattern 3: Event flag (ISR → task notification)
   --  -----------------------------------------------------------------------

   protected Event_Flag is
      pragma Interrupt_Priority;   -- can be called from ISR context

      procedure Signal;            -- called from ISR (or any task)
      entry Wait;                  -- task blocks until signalled
   private
      Pending : Boolean := False;
   end Event_Flag;

   protected body Event_Flag is
      procedure Signal is
      begin
         Pending := True;
      end Signal;

      entry Wait when Pending is
      begin
         Pending := False;
      end Wait;
   end Event_Flag;

   --  -----------------------------------------------------------------------
   --  Tasks
   --  -----------------------------------------------------------------------

   task Producer_Task is
      pragma Priority (System.Priority'Last - 1);
   end Producer_Task;

   task Consumer_Task is
      pragma Priority (System.Priority'Last - 2);
   end Consumer_Task;

   task Monitor_Task is
      pragma Priority (System.Priority'Last - 3);
   end Monitor_Task;

   task body Producer_Task is
      Item : Integer := 0;
   begin
      loop
         Item := Item + 1;
         Bounded_Buffer.Put (Item);
         Printk ("Produced: %u" & ASCII.LF, C.unsigned (Item));
         delay 0.2;
      end loop;
   end Producer_Task;

   task body Consumer_Task is
      Item : Integer;
   begin
      loop
         Bounded_Buffer.Get (Item);
         Printk ("Consumed: %u (buffer len=%u)" & ASCII.LF,
                 C.unsigned (Item));
         delay 0.5;
      end loop;
   end Consumer_Task;

   task body Monitor_Task is
   begin
      loop
         --  Simulate a configuration change every 3 seconds
         delay 3.0;
         Shared_Config.Set_Rate (100);
         Printk ("Config: rate set to %u Hz" & ASCII.LF,
                 C.unsigned (Shared_Config.Rate));

         --  Signal the event flag (simulating what an ISR would do)
         Event_Flag.Signal;

         --  Then wait for the next event (blocks until Signal called again)
         Event_Flag.Wait;
         Printk ("Event received" & ASCII.LF);
      end loop;
   end Monitor_Task;

   --  -----------------------------------------------------------------------
   --  Main
   --  -----------------------------------------------------------------------

   procedure Main is
   begin
      Printk ("Ada Protected Objects Demo" & ASCII.LF);
      Printk ("Producer/consumer bounded buffer running..." & ASCII.LF);
      loop
         delay 10.0;
      end loop;
   end Main;

   procedure Last_Chance_Handler (Msg : System.Address; Line : Integer) is
      procedure C_Printk (Fmt, S : System.Address; L : C.unsigned)
        with Import, Convention => C_Variadic_1, External_Name => "printk";
      Fmt : constant String := ASCII.LF & "EXCEPTION: %s line %u" & ASCII.LF;
   begin
      C_Printk (Fmt'Address, Msg, C.unsigned (Line));
      loop null; end loop;
   end Last_Chance_Handler;

end Ada_Protected_Demo;
