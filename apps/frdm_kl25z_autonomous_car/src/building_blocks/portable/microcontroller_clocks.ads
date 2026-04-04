--
--  Copyright (c) 2016, German Rivera
--  All rights reserved.
--
--  SPDX-License-Identifier: BSD-3-Clause
--
--  Adapted for Zephyr Ada RTS port.
--  On KL25Z, the bus clock is CPU clock / 2 = 24 MHz.
--  These values are statically known from the Zephyr board configuration.
--

--
--  @summary Microcontroller clock frequencies (Zephyr/KL25Z port)
--
package Microcontroller_Clocks is
   pragma Pure;

   --  Frequency type (Hz)
   type Hertz_Type is range 0 .. 2 ** 32 - 1;

   --  KL25Z CPU clock: 48 MHz (set by Zephyr board support)
   Cpu_Clock_Frequency : constant Hertz_Type := 48_000_000;

   --  KL25Z bus clock: CPU / 2 = 24 MHz (SIM_CLKDIV1 OUTDIV4 default = 2)
   Bus_Clock_Frequency : constant Hertz_Type := 24_000_000;

   --  KL25Z flash clock: bus clock = 24 MHz
   Flash_Clock_Frequency : constant Hertz_Type := Bus_Clock_Frequency;

   --  Nominal "PLL" frequency used for UART0 baud-rate divisor calculation.
   --  UART0SRC = 1 selects MCGFLLCLK = 48 MHz = Get_Pll_Frequency_Hz / 2.
   function Get_Pll_Frequency_Hz return Positive is (96_000_000);

end Microcontroller_Clocks;
