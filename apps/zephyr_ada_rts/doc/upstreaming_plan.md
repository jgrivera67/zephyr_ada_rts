# Upstreaming Plan: Ada Language Support for Zephyr RTOS

## Context

Ada support for Zephyr is split into two independent deliverables:

1. **Alire crate** (`zephyr_ada_rts`) — the GNARL/GNAT runtime that runs on Zephyr.
   Destination: `alire-project/alire-index`. License: GPL-3.0-or-later WITH GCC-runtime-exception-3.1.
   Keeps GPL out of Zephyr's Apache-2.0 codebase entirely.

2. **Zephyr module** (`zephyr-lang-ada`) — the CMake/Kconfig glue, Python generators,
   linker fragment, samples, and tests. Follows the existing `zephyr-lang-rust` pattern exactly.
   Destination: new `zephyrproject-rtos/zephyr-lang-ada` GitHub repo + 5 small PRs to main Zephyr repo.
   License: Apache-2.0 throughout.

Samples live in the module repo (same as Rust — `modules/lang/ada/samples/`), NOT in the main Zephyr repo.

---

## Track 1: Alire Crate (`zephyr_ada_rts`)

### Goal
Publish `apps/zephyr_ada_rts/` as a standalone Alire crate so applications can declare it
as a dependency in their `alire.toml`.

### Step 1.1 — Create standalone GitHub repo
- New repo: `github.com/jgrivera67/zephyr_ada_rts` (or similar)
- Move `apps/zephyr_ada_rts/` contents into it (not the whole `apps/` tree)
- Keep git history via `git subtree` or fresh init with attribution

### Step 1.2 — Fix `alire.toml`
File: `apps/zephyr_ada_rts/alire.toml`

Changes needed:
- `version` → `"0.1.0"` (remove `-dev`)
- `licenses` → `"GPL-3.0-or-later WITH GCC-runtime-exception-3.1"` (currently wrong: Apache-2.0)
- Add `[[depends-on]]` entry for GNAT toolchain crate(s):
  ```toml
  [[depends-on]]
  gnat_arm_elf = ">=14.0.0"
  ```
  (This will need arch-conditional handling or separate crates per arch — see Step 1.3)
- Fix `[[actions]]` test to point to the actual sample app that will exist

### Step 1.3 — Fix `zephyr_ada_rts.gpr`
File: `apps/zephyr_ada_rts/zephyr_ada_rts.gpr`

Currently, Zephyr include paths (for board-specific generated bindings) are hardcoded.
Change to use an external GPR variable `Zephyr_Include_Dir` so the consuming application
can pass it via `alr build -- -XZephyr_Include_Dir=...`:
```
Zephyr_Include := External ("Zephyr_Include_Dir", "");
for Source_Dirs use ("src/gnat", "src/gnarl", Zephyr_Include, "config");
```
The `ada_alire_application()` CMake function already passes `-XBoard=...`; extend it to
also pass `-XZephyr_Include_Dir=${CMAKE_CURRENT_BINARY_DIR}/ada_bindings`.

### Step 1.4 — Submit to `alire-index`
- Fork `alire-project/alire-index`
- Add crate index entry under `index/z/zephyr_ada_rts/zephyr_ada_rts-0.1.0.toml`
- Open PR following the Alire index contribution guide
- Community index CI will verify the crate builds

**Key files:**
- `apps/zephyr_ada_rts/alire.toml`
- `apps/zephyr_ada_rts/zephyr_ada_rts.gpr`
- `apps/zephyr_ada_rts/src/gnarl/zephyr_ada_shim.c` (Apache-2.0, stays clean)
- `apps/zephyr_ada_rts/src/gnat/` + `src/gnarl/` (GPL-3.0 + runtime exception)

---

## Track 2: Zephyr Module (`zephyr-lang-ada`)

### Goal
Create the `zephyrproject-rtos/zephyr-lang-ada` GitHub repo and land the minimal set of
changes in the main Zephyr repo to register it as an optional module (identical process as Rust).

### Step 2.1 — Create `zephyrproject-rtos/zephyr-lang-ada` repo
Contents: the entire `modules/lang/ada/` tree from this repo.

```
zephyr-lang-ada/
├── zephyr/
│   ├── module.yml          # Already correct
│   ├── Kconfig.ada         # Already correct (97 lines)
│   └── CMakeLists.txt      # Already correct (246 lines)
├── cmake/
│   └── ada_sections.ld     # Already correct (21 lines)
├── scripts/
│   ├── kconfig_to_ada.py   # Already correct (237 lines)
│   └── dt_to_ada.py        # Already correct (428 lines)
├── samples/
│   ├── hello_world/        # Already correct
│   ├── tasking/            # Already correct
│   └── protected_objects/  # Already correct
└── tests/
    └── ada_tasking/        # Already correct
```

Samples live here, NOT in main Zephyr repo. Mirrors the Rust pattern.

### Step 2.2 — Update sample `alire.toml` files to depend on crate
Each sample's `ada_app/alire.toml` must declare the RTS crate as a dependency:
```toml
[[depends-on]]
zephyr_ada_rts = ">=0.1.0"
```
(Currently they likely reference a relative path or have no RTS dependency declared.)

### Step 2.3 — PR to main Zephyr repo (5 changes)

**a) New file: `modules/Kconfig.ada`** (mirrors `modules/Kconfig.rust`)
```kconfig
# Copyright (c) 2025 Zephyr Ada Contributors
# SPDX-License-Identifier: Apache-2.0

config ADA
    bool
```

**b) Edit: `modules/Kconfig`** — add one line after the Rust entry (line 37):
```
source "modules/Kconfig.ada"
```

**c) Edit: `submanifests/optional.yaml`** — add entry (keep sorted):
```yaml
- name: zephyr-lang-ada
  revision: <initial-commit-hash>
  path: modules/lang/ada
  remote: upstream
  groups:
    - optional
```

**d) New directory: `doc/develop/languages/ada/`** — 5 RST files
Copy from local `doc/zephyr_ada/` and adapt to Zephyr doc style:
- `index.rst` — overview + Ada-First table
- `getting_started.rst` — Alire install, first build
- `tasking.rst` — Ada tasks → k_thread, protected objects → k_mutex
- `kconfig.rst` — `Zephyr.Config` package generation
- `interrupts.rst` — `Attach_Handler` → `irq_connect_dynamic`

**e) Edit: `doc/develop/languages/index.rst`** — add to toctree:
```rst
ada/index
```

**Key files to modify in main Zephyr repo:**
- `zephyr/modules/Kconfig` (add 1 line)
- `zephyr/modules/Kconfig.ada` (new, 4 lines)
- `zephyr/submanifests/optional.yaml` (add 6 lines)
- `zephyr/doc/develop/languages/index.rst` (add 1 line)
- `zephyr/doc/develop/languages/ada/` (new directory, ~5 RST files)

---

## Sequencing

```
0. Save this plan to apps/zephyr_ada_rts/doc/upstreaming_plan.md
   (alongside the existing claude_code_plan.md)
1. Fix alire.toml license + version
2. Fix zephyr_ada_rts.gpr (external Zephyr_Include_Dir variable)
3. Update CMakeLists.txt to pass -XZephyr_Include_Dir to alr build
4. Update sample alire.toml files to depend on zephyr_ada_rts crate
5. Create zephyr-lang-ada GitHub repo (from modules/lang/ada/)
6. Submit zephyr_ada_rts to alire-index
7. Open Zephyr RFC (TSC mailing list / GitHub Discussion)
8. Land 5-change PR to main Zephyr repo (after RFC acceptance)
```

Steps 1–4 are local prep. Steps 5–6 are parallel (independent repos). Step 7 precedes step 8.

---

## Verification

### Track 1 (Alire crate)
- `alr build` succeeds in `apps/zephyr_ada_rts/` standalone (without parent monorepo)
- Sample app `alire.toml` with `zephyr_ada_rts = ">=0.1.0"` resolves and builds
- `alr index --check` passes on the submitted index entry

### Track 2 (Zephyr module)
- `west config manifest.project-filter +zephyr-lang-ada && west update` checks out module
- `west build -b qemu_cortex_m3 modules/lang/ada/samples/hello_world` succeeds
- `west twister -T modules/lang/ada/tests/` runs all test cases and passes on QEMU
- Zephyr doc build (`make htmldocs`) renders `doc/develop/languages/ada/` without errors
