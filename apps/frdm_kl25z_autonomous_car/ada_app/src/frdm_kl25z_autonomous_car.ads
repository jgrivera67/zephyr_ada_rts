--
--  Copyright (c) 2024, German Rivera
--
--  SPDX-License-Identifier: Apache-2.0
--

with System;

package Frdm_Kl25z_Autonomous_Car is

   procedure Ada_Main with
      Export,
      Convention => C,
      External_Name => "ada_main";

private

   procedure Last_Chance_Handler (Msg : System.Address; Line : Integer)
     with No_Return,
          Export,
          Convention => C,
          External_Name => "__gnat_last_chance_handler";
end Frdm_Kl25z_Autonomous_Car;
