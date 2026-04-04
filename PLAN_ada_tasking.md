# Zephyr Ada — ada_tasking Branch

## Goal

Upstream Ada language support to Zephyr RTOS as an optional module.
Branch: `ada_tasking` on `zephyr_ada` repo.

## Status: IN PROGRESS — consolidating samples into module repo

Regression: **10/10 passed** (last verified run).

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

## Next Steps (uncommitted changes in working tree)

1. **Commit A** → `~/my-projects/zephyr-lang-ada`:
   - Fix hello_world: Library_Name "ada_hello"→"ada_app", LIBNAME libada_hello→libada_app, add [[pins]]
   - Add `samples/ada_tasking/` (copy from apps/samples/ada_tasking, remove hardcoded ADA_RTS_DIR)
   - Add `samples/ada_protected_objects/` (same pattern)

2. **west update zephyr-lang-ada** in monorepo

3. **Commit B1** → monorepo:
   - All D entries: `apps/zephyr_ada_rts/`, `apps/third_party/`, `apps/scripts/{kconfig,dt}_to_ada.py`
   - Modified `apps/west.yml`

4. **Commit B2** → monorepo:
   - Delete `apps/samples/hello_world/`, `apps/samples/ada_tasking/`, `apps/samples/ada_protected_objects/`
   - `git mv apps/samples/frdm_kl25z_autonomous_car/ apps/frdm_kl25z_autonomous_car/`
   - Remove `apps/samples/` directory
   - Update `apps/scripts/regression_build.sh`: module samples from `modules/lang/ada/samples/`,
     car from `apps/frdm_kl25z_autonomous_car/`, pass `-- -DADA_RTS_DIR=...` for module samples

5. **Run full regression** to verify 10/10 still pass

## Key Files

### Local clones
- `~/my-projects/zephyr-lang-ada/` — module (3 commits ahead of initial: Kconfig fix, cmake fix, ...)
- `~/my-projects/zephyr_ada_rts/` — RTS crate

### Module
- `modules/lang/ada/zephyr/CMakeLists.txt` — `ada_alire_application()` (arch detection inside function)
- `modules/lang/ada/zephyr/Kconfig.ada` — selects THREAD_CUSTOM_DATA, THREAD_STACK_INFO, DYNAMIC_THREAD
- `modules/lang/ada/src/zephyr_ada_shim.c` — C shim (self-contained in module)

### Samples (apps, still uncommitted deletions)
- `apps/samples/` — to be deleted (samples moving to module or being relocated)
- `apps/samples/frdm_kl25z_autonomous_car/` — moving to `apps/frdm_kl25z_autonomous_car/`

### Regression
- `apps/scripts/regression_build.sh` — needs update for new sample locations

## GPR / CMake Conventions

- All sample GPR files: `for Library_Name use "ada_app"` → gnatbind generates `ada_appinit`
- All sample CMakeLists: `LIBNAME libada_app` in `ada_alire_application()`
- Each sample's `alire.toml` pins: `zephyr_ada_rts = { path = "/home/josegrivera/my-projects/zephyr_ada_rts" }`
- Module samples: NO hardcoded `ADA_RTS_DIR` in CMakeLists; regression script passes it

## Resume Instructions

Worktree: `/home/josegrivera/my-projects/zephyr_ada`
Branch: `ada_tasking`
Pending: Execute commits A, B1, B2 as described in Next Steps above.
See detailed commit plan: `~/.claude/plans/dynamic-splashing-sedgewick.md`
