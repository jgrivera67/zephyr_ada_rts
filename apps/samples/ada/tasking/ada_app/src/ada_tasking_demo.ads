--
--  Copyright (c) 2025 Zephyr Ada Contributors
--
--  SPDX-License-Identifier: Apache-2.0
--
--  Ada Tasking Sample
--
--  Demonstrates Ada-native concurrency on Zephyr:
--  - Named task types with different priorities
--  - Delay statements (map to k_sleep, not busy-wait)
--  - Rendezvous between tasks
--  - Protected object for shared state
--

with System;

package Ada_Tasking_Demo is

   procedure Main
     with Export, Convention => C, External_Name => "ada_main";

private

   procedure Last_Chance_Handler (Msg : System.Address; Line : Integer)
     with No_Return, Export, Convention => C,
          External_Name => "__gnat_last_chance_handler";

end Ada_Tasking_Demo;
