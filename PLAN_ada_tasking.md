# Zephyr Ada — ada_tasking Branch

## Goal

Upstream Ada language support to Zephyr RTOS as an optional module.
Branch: `ada_tasking` on `zephyr_ada` repo.

## Status: COMPLETE — regression 10/10 passed

Regression: **10/10 passed** (verified after full consolidation).

## Completed Steps

- [x] Add Ada tasking and protected objects sample applications
- [x] Add Kconfig/DT-to-Ada code generators
- [x] Add RST documentation and RFC draft (`doc/zephyr_ada/`)
- [x] Add `modules/lang/ada` Zephyr module and CI pipeline
- [x] Reorganize samples to flat layout under `apps/samples/`
- [x] Port `frdm_kl25z_autonomous_car` sample to Zephyr Ada runtime
- [x] Add regression build script (`apps/scripts/regression_build.sh`)
- [x] Restructure to use local upstream clones:
  - `~/my-projects/zephyr-lang-ada` (west-managed module)
  - `~/my-projects/zephyr_ada_rts` (Alire-pinned RTS crate)
  - Deleted in-tree `apps/zephyr_ada_rts/`, `apps/third_party/`, duplicate scripts
  - Converted all 4 samples to `ada_alire_application()` pattern
  - Fixed Kconfig THREAD_STACK_INFO dependency
  - Fixed CMake toolchain variable scope (re-detect inside function)
  - Fixed Library_Name convention: all samples use "ada_app" → generates `ada_appinit`
- [x] Regression verified 10/10 green with all fixes
- [x] Move generic samples (hello_world, ada_tasking, ada_protected_objects) to module repo
- [x] Remove in-tree duplicates (`apps/samples/hello_world/`, `apps/samples/ada_tasking/`,
      `apps/samples/ada_protected_objects/`)
- [x] Move `frdm_kl25z_autonomous_car` from `apps/samples/` to `apps/`
- [x] Update regression script: module samples from `modules/lang/ada/samples/`,
      car from `apps/frdm_kl25z_autonomous_car/`
- [x] Fix hello_world in module: Library_Name/LIBNAME, alire.toml pins,
      Library_Interface, redundant `with System;`, non-exact delay literals
- [x] Regression verified 10/10 after full consolidation

## Repository State

### Local clones
- `~/my-projects/zephyr-lang-ada/` — module (8 commits ahead of initial)
- `~/my-projects/zephyr_ada_rts/` — RTS crate

### Module samples (in module repo, also synced to monorepo modules/lang/ada/)
- `modules/lang/ada/samples/hello_world/` — 3 Ada tasks, Ada delay
- `modules/lang/ada/samples/ada_tasking/` — tasks + protected mailbox
- `modules/lang/ada/samples/ada_protected_objects/` — protected variables + bounded buffer

### App (board-specific)
- `apps/frdm_kl25z_autonomous_car/` — NXP KL25Z car (frdm_kl25z only)

### Regression
- `apps/scripts/regression_build.sh` — 10 builds, 2 skipped

## GPR / CMake Conventions

- All sample GPR files: `for Library_Name use "ada_app"` → gnatbind generates `ada_appinit`
- All sample CMakeLists: `LIBNAME libada_app` in `ada_alire_application()`
- Each sample's `alire.toml` pins: `zephyr_ada_rts = { path = "/home/josegrivera/my-projects/zephyr_ada_rts" }`
- Module samples: NO hardcoded `ADA_RTS_DIR` in CMakeLists; regression script passes `-DADA_RTS_DIR=...`
- hello_world delay values: only power-of-2 multiples (0.5, 1.0, 2.0, 10.0) to avoid `-gnatwb` with `-gnatwe`
