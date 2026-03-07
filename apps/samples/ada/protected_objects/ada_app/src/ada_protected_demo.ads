--
--  Copyright (c) 2025 Zephyr Ada Contributors
--
--  SPDX-License-Identifier: Apache-2.0
--
--  Ada Protected Objects Sample
--
--  Demonstrates Ada protected objects as the sole synchronization mechanism:
--  - Protected variables (mutex-like, no k_mutex calls)
--  - Protected entries with barriers (semaphore-like, no k_sem calls)
--  - Bounded buffer (classic producer-consumer with capacity)
--

with System;

package Ada_Protected_Demo is

   procedure Main
     with Export, Convention => C, External_Name => "ada_main";

private

   procedure Last_Chance_Handler (Msg : System.Address; Line : Integer)
     with No_Return, Export, Convention => C,
          External_Name => "__gnat_last_chance_handler";

end Ada_Protected_Demo;
