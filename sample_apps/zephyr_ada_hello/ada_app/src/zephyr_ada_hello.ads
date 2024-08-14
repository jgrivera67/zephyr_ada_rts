--
--  Copyright (c) 2024, German Rivera
--
--  SPDX-License-Identifier: Apache-2.0
--

with System;

package Zephyr_Ada_Hello is

   procedure Hello_Ada with
      Export,
      Convention => C,
      External_Name => "hello_ada";

   procedure Last_Chance_Handler (Msg : System.Address; Line : Integer)
     with No_Return,
          Export,
          Convention => C,
          External_Name => "__gnat_last_chance_handler";
end Zephyr_Ada_Hello;
