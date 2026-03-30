--
--  Copyright (c) 2026, German Rivera
--
--  SPDX-License-Identifier: Apache-2.0
--
--  Reset counter stub for Zephyr Ada port.
--  On bare-metal the counter is kept in non-initialized RAM across soft resets.
--  Under Zephyr every boot is treated as a fresh start, so the counter always
--  returns 0, which causes Runtime_Logs to re-initialise all log buffers.
--
with Interfaces;

package Reset_Counter is
   pragma Preelaborate;

   function Get return Interfaces.Unsigned_32;
   --  Return the number of soft resets since power-on (always 0 on Zephyr).

end Reset_Counter;
