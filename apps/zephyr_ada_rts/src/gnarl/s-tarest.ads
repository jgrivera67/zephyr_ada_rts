------------------------------------------------------------------------------
--                                                                          --
--                 GNAT RUN-TIME LIBRARY (GNARL) COMPONENTS                 --
--                                                                          --
--     S Y S T E M . T A S K I N G . R E S T R I C T E D . S T A G E S      --
--                                                                          --
--                                  S p e c                                 --
--                                                                          --
--          Copyright (C) 1992-2023, Free Software Foundation, Inc.         --
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
-- This Zephyr-specific implementation by German Rivera.                    --
--                                                                          --
------------------------------------------------------------------------------

--  This is a simplified version of the System.Tasking.Stages package,
--  intended to be used with the Ravenscar/Jorvik profile on Zephyr RTOS.

--  This package represents the high level tasking interface used by the
--  compiler to expand Ada 95 tasking constructs into simpler run-time calls.

--  The compiler generates direct calls to this interface, via Rtsfind. Any
--  changes to this interface may require corresponding compiler changes in
--  exp_ch9.adb and possibly exp_ch7.adb.

with System.Parameters;
with System.Secondary_Stack;
with System.Task_Info;

package System.Tasking.Restricted.Stages is
   pragma Elaborate_Body;

   Partition_Elaboration_Policy : Character := 'C';
   pragma Export (C, Partition_Elaboration_Policy,
                  "__gnat_partition_elaboration_policy");
   --  Partition elaboration policy. Value can be either 'C' for concurrent,
   --  which is the default or 'S' for sequential. This value can be modified
   --  by the binder generated code, before calling elaboration code.

   procedure Create_Restricted_Task
     (Priority          : Integer;
      Stack_Address     : System.Address;
      Stack_Size        : System.Parameters.Size_Type;
      Sec_Stack_Address : System.Secondary_Stack.SS_Stack_Ptr;
      Sec_Stack_Size    : System.Parameters.Size_Type;
      Task_Info         : System.Task_Info.Task_Info_Type;
      CPU               : Integer;
      State             : Task_Procedure_Access;
      Discriminants     : System.Address;
      Elaborated        : Access_Boolean;
      Chain             : in out Activation_Chain;
      Task_Image        : String;
      Created_Task      : Task_Id);
   --  Compiler interface only. Do not call from within the RTS.
   --  This must be called to create a new task, when the partition
   --  elaboration policy is not specified (or is concurrent).

   procedure Create_Restricted_Task_Sequential
     (Priority          : Integer;
      Stack_Address     : System.Address;
      Stack_Size        : System.Parameters.Size_Type;
      Sec_Stack_Address : System.Secondary_Stack.SS_Stack_Ptr;
      Sec_Stack_Size    : System.Parameters.Size_Type;
      Task_Info         : System.Task_Info.Task_Info_Type;
      CPU               : Integer;
      State             : Task_Procedure_Access;
      Discriminants     : System.Address;
      Elaborated        : Access_Boolean;
      Task_Image        : String;
      Created_Task      : Task_Id);
   --  Compiler interface only. Do not call from within the RTS.
   --  This must be called to create a new task, when the sequential partition
   --  elaboration policy is used.

   procedure Activate_Restricted_Tasks
     (Chain_Access : Activation_Chain_Access);
   --  Compiler interface only. Do not call from within the RTS.
   --  This must be called by the creator of a chain of one or more new tasks,
   --  to activate them.

   procedure Activate_All_Tasks_Sequential;
   pragma Export (C, Activate_All_Tasks_Sequential,
                  "__gnat_activate_all_tasks");
   --  Binder interface only. Do not call from within the RTS. This must be
   --  called at the end of the elaboration to activate all tasks, in order
   --  to implement the sequential elaboration policy.

   procedure Complete_Restricted_Activation;
   --  Compiler interface only. Do not call from within the RTS. This should be
   --  called from the task body at the end of the elaboration code for its
   --  declarative part.

   procedure Complete_Restricted_Task;
   --  Compiler interface only. Do not call from within the RTS. This should be
   --  called from an implicit at-end handler associated with the task body,
   --  when it completes.

   function Restricted_Terminated (T : Task_Id) return Boolean;
   --  Compiler interface only. Do not call from within the RTS. This is called
   --  by the compiler to implement the 'Terminated attribute.

   procedure Finalize_Global_Tasks;
   --  This is needed to support the compiler interface. It will only be called
   --  by the Environment task in the binder generated file (by adafinal).

end System.Tasking.Restricted.Stages;
