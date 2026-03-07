--
--  Copyright (c) 2025 Zephyr Ada Contributors
--
--  SPDX-License-Identifier: Apache-2.0
--
--  Ada Tasking Demo
--
--  This sample demonstrates Ada-first concurrency on Zephyr:
--
--  1. Three worker tasks with different priorities using Ada 'delay' for sleep
--     (maps to k_msleep internally via the Ada RTS — no k_sleep calls in Ada code)
--
--  2. A producer task and consumer task communicating via a rendezvous entry.
--
--  3. A protected counter accessed from multiple tasks without explicit mutex
--     calls (the Ada compiler enforces mutual exclusion automatically).
--

with Interfaces.C;
with System;

package body Ada_Tasking_Demo is

   use Interfaces;

   --  ---------------------------------------------------------------------------
   --  Printk wrapper for console output
   --  ---------------------------------------------------------------------------

   procedure Printk (Fmt : String; Arg : C.unsigned := 0);
   pragma Import (C_Variadic_1, Printk, "printk");

   --  ---------------------------------------------------------------------------
   --  Protected object: shared iteration counter (no explicit mutex needed)
   --  ---------------------------------------------------------------------------

   protected Task_Counter is
      procedure Increment (Task_ID : Natural);
      function Total return Natural;
   private
      Count : Natural := 0;
   end Task_Counter;

   protected body Task_Counter is
      procedure Increment (Task_ID : Natural) is
         pragma Unreferenced (Task_ID);
      begin
         Count := Count + 1;
      end Increment;

      function Total return Natural is (Count);
   end Task_Counter;

   --  ---------------------------------------------------------------------------
   --  Worker task type: runs at a configurable priority and delay period
   --  ---------------------------------------------------------------------------

   task type Worker (
      ID         : Natural;
      Prio       : System.Priority;
      Period_Ms  : Positive)
   is
      pragma Priority (Prio);
   end Worker;

   task body Worker is
      Iterations : Natural := 0;
   begin
      loop
         Iterations := Iterations + 1;
         Task_Counter.Increment (ID);
         Printk ("Worker %u: iteration %u" & ASCII.LF,
                 C.unsigned (ID));
         delay Duration (Period_Ms) / 1000.0;  -- Ada delay → k_msleep
      end loop;
   end Worker;

   --  ---------------------------------------------------------------------------
   --  Producer / Consumer via rendezvous
   --  ---------------------------------------------------------------------------

   task Producer is
      pragma Priority (System.Priority'Last - 4);
      entry Value_Ready (V : out Natural);
   end Producer;

   task Consumer is
      pragma Priority (System.Priority'Last - 5);
   end Consumer;

   task body Producer is
      Generated : Natural := 0;
   begin
      loop
         delay 0.5;
         Generated := Generated + 1;

         --  Rendezvous: transfer value directly to Consumer
         accept Value_Ready (V : out Natural) do
            V := Generated;
         end Value_Ready;
      end loop;
   end Producer;

   task body Consumer is
      Received : Natural;
   begin
      loop
         --  Wait for Producer rendezvous
         Producer.Value_Ready (Received);
         Printk ("Consumer received: %u" & ASCII.LF, C.unsigned (Received));
      end loop;
   end Consumer;

   --  ---------------------------------------------------------------------------
   --  Declare worker instances (created at elaboration of Main)
   --  ---------------------------------------------------------------------------

   W1 : Worker (ID => 1, Prio => System.Priority'Last - 1, Period_Ms => 100);
   W2 : Worker (ID => 2, Prio => System.Priority'Last - 2, Period_Ms => 250);
   W3 : Worker (ID => 3, Prio => System.Priority'Last - 3, Period_Ms => 500);

   --  ---------------------------------------------------------------------------
   --  Main entry point (environment task)
   --  ---------------------------------------------------------------------------

   procedure Main is
   begin
      Printk ("Ada Tasking Demo started" & ASCII.LF);
      Printk ("3 workers + producer/consumer running" & ASCII.LF);

      --  Environment task keeps running; workers continue independently.
      --  In a real application the main task would monitor or coordinate tasks.
      loop
         delay 5.0;
         Printk ("Total task iterations: %u" & ASCII.LF,
                 C.unsigned (Task_Counter.Total));
      end loop;
   end Main;

   --  ---------------------------------------------------------------------------
   --  Last chance handler (required by GNAT RTS)
   --  ---------------------------------------------------------------------------

   procedure Last_Chance_Handler (Msg : System.Address; Line : Integer) is
      procedure C_Printk (Fmt, S : System.Address; L : C.unsigned)
        with Import, Convention => C_Variadic_1, External_Name => "printk";
      Fmt : constant String := ASCII.LF & "EXCEPTION: %s line %u" & ASCII.LF;
   begin
      C_Printk (Fmt'Address, Msg, C.unsigned (Line));
      loop null; end loop;
   end Last_Chance_Handler;

end Ada_Tasking_Demo;
