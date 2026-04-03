# Zephyr Ada — ada_tasking Branch

## Goal

Upstream Ada language support to Zephyr RTOS as an optional module.
Branch: `ada_tasking` on `zephyr_ada` repo.

## Status: COMPLETE ✅

All work for this session is done and committed. Regression build: **10/10 passed**.

## Completed Steps

- [x] Add Ada tasking and protected objects sample applications
- [x] Add Kconfig/DT-to-Ada code generators
- [x] Add RST documentation and RFC draft (`doc/zephyr_ada/`)
- [x] Add `modules/lang/ada` Zephyr module and CI pipeline
- [x] Reorganize samples to flat layout under `apps/samples/`
- [x] Port `frdm_kl25z_autonomous_car` sample to Zephyr Ada Jorvik/ZFP runtime:
  - Created `KL25Z_UART`, `KL25Z_SIM`, `KL25Z_PORT`, `KL25Z_GPIO` hand-crafted register packages
  - Added `Bit_Types`, `Microcontroller_Clocks`, `Are_Cpu_Interrupts_Disabled`
  - Removed `Ada.Interrupts` / `pragma Attach_Handler` (not in configurable runtime)
  - Removed `'Image` attribute (requires `System.Img_Uns`, absent from ZFP)
  - Added ISR stack linker symbols to `ada_sections.ld`
- [x] Fix RTS GPR: exclude `s-sssita.adb/ads` to avoid `__gnat_get_secondary_stack` conflict
- [x] Add regression build script (`apps/scripts/regression_build.sh`)

## Commits Made This Session

```
37a89232 ada: add regression build script
acd3b0d6 ada: fix RTS to exclude single-task secondary stack when tasking is enabled
d7fa0f6f ada: reorganize samples layout and add frdm_kl25z_autonomous_car sample
ec225c02 ada: add RST documentation and RFC draft          ← last pre-session commit
```

## Key Files

- `apps/zephyr_ada_rts/zephyr_ada_rts.gpr` — RTS GPR (Excluded_Source_Files fix)
- `apps/zephyr_ada_rts/src/gnarl/s-taprop.adb` — task properties (Zephyr thread mapping)
- `apps/samples/frdm_kl25z_autonomous_car/` — autonomous car sample
- `apps/samples/frdm_kl25z_autonomous_car/ada_sections.ld` — ISR stack symbols
- `apps/samples/frdm_kl25z_autonomous_car/src/drivers/mcu_specific/nxp_kinetis_kl25z/kl25z_uart.ads` — hand-crafted UART regs
- `apps/samples/frdm_kl25z_autonomous_car/src/drivers/mcu_specific/nxp_kinetis_kl25z/kl25z_sim.ads` — hand-crafted SIM regs
- `apps/scripts/regression_build.sh` — regression script (10/10 pass)
- `doc/zephyr_ada/` — RST documentation (6 files, ~1000 lines)
- `doc/rfc/rfc_ada_language_support.md` — Zephyr AWG RFC draft

## Possible Next Steps

- Write a `doc/zephyr_ada/rts_internals.rst` covering GNARL design, configurable runtime constraints
- Add sample-specific README for `frdm_kl25z_autonomous_car`
- Push branch and open PR / post RFC to Zephyr AWG mailing list
- Add QEMU test targets to regression script (hello_world + ada_tasking can run under QEMU)

## Resume Instructions

Worktree: `/home/josegrivera/my-projects/zephyr_ada`
Branch: `ada_tasking`
All changes committed — no pending work.
To resume: read this file and `doc/zephyr_ada/` for context, then check `git log --oneline -6`.
