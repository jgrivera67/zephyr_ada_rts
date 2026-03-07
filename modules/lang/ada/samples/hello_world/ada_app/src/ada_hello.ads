--  SPDX-License-Identifier: Apache-2.0
--  Copyright (c) 2025 Zephyr Ada Contributors

with System;

package Ada_Hello is

   procedure Main
     with Export, Convention => C, External_Name => "ada_main";

private

   procedure Last_Chance_Handler (Msg : System.Address; Line : Integer)
     with No_Return, Export, Convention => C,
          External_Name => "__gnat_last_chance_handler";

end Ada_Hello;
