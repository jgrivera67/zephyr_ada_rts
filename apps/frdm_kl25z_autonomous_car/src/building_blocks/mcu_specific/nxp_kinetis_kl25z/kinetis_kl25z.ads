--
--  Copyright (c) 2026, German Rivera
--
--  SPDX-License-Identifier: Apache-2.0
--
--  Parent package for NXP Kinetis KL25Z peripheral register definitions.
--  Child packages provide register-level interfaces for individual peripherals.
--
package Kinetis_KL25Z is
   pragma Preelaborate;

   --  Base addresses of KL25Z peripherals
   RCM_Base : constant := 16#4007_F000#;

end Kinetis_KL25Z;
