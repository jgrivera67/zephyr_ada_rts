# Plan: Establish Real Repos and Wire Monorepo via West

## Goal
Make the monorepo look exactly like the final upstreamed state before doing official
upstream submissions. The monorepo (`zephyr_ada`) becomes a west workspace that pulls
the Ada infrastructure from real GitHub repos.

## Target Architecture

```
zephyr_ada/                        ← west workspace (this repo)
├── apps/                          ← west manifest repo (apps/west.yml)
│   ├── west.yml                   ← updated to reference new repos
│   ├── samples/                   ← development sample apps
│   ├── zephyr_ada_rts/            ← RTS (local dev; stays until crate published)
│   └── compiler_flags.gpr
├── modules/lang/ada/              ← west-managed: pulled from zephyr-lang-ada repo
└── zephyr/                        ← west-managed: pulled from zephyrproject-rtos/zephyr
```

## Step 1 — Commit pending changes in this repo

Stage and commit:
- `apps/samples/frdm_kl25z_autonomous_car/CMakeLists.txt` (simplified to use ada_alire_application())
- `apps/samples/frdm_kl25z_autonomous_car/alire.toml` (version, no pin, clean deps)
- `apps/samples/frdm_kl25z_autonomous_car/frdm_kl25z_autonomous_car.gpr` (Alire-resolved withs)

Commit message:
```
ada: convert autonomous car sample to use ada_alire_application() and published crates

Simplify CMakeLists.txt from 140 lines of manual build logic to 5 lines
using ada_alire_application(). Update alire.toml to remove the local RTS
pin and -dev version suffix. Update .gpr to reference compiler_flags.gpr
and zephyr_ada_rts.gpr via Alire GPR_PROJECT_PATH rather than relative
monorepo paths.
```

## Step 2 — Create `github.com/jgrivera67/zephyr_ada_rts` repo

```bash
cd /tmp
mkdir zephyr_ada_rts_standalone
cd zephyr_ada_rts_standalone
git init
# Copy RTS tree preserving structure
cp -r /home/josegrivera/my-projects/zephyr_ada/apps/zephyr_ada_rts/* .
git add -A
git commit -m "Initial commit: Zephyr Ada RTS (GNARL/GNAT) v0.1.0"

gh repo create jgrivera67/zephyr_ada_rts \
   --public \
   --description "Zephyr RTOS Ada Runtime Library (GNARL/GNAT) — Ravenscar/Jorvik profile" \
   --source=. \
   --remote=origin \
   --push
```

Note: `compiler_flags.gpr` must also be included in this repo (copy from `apps/compiler_flags.gpr`)
so that the RTS GPR project can find it when used as a standalone Alire crate.

## Step 3 — Create `github.com/jgrivera67/zephyr-lang-ada` repo

```bash
cd /tmp
mkdir zephyr_lang_ada_standalone
cd zephyr_lang_ada_standalone
git init
# Copy module tree preserving structure (becomes repo root)
cp -r /home/josegrivera/my-projects/zephyr_ada/modules/lang/ada/* .
git add -A
git commit -m "Initial commit: Zephyr Ada language module v0.1.0"

gh repo create jgrivera67/zephyr-lang-ada \
   --public \
   --description "Zephyr Ada language support module (CMake/Kconfig glue, samples, tests)" \
   --source=. \
   --remote=origin \
   --push
```

## Step 4 — Update `apps/west.yml` to reference zephyr-lang-ada

Replace contents of `apps/west.yml`:

```yaml
manifest:
  remotes:
    - name: zephyrproject-rtos
      url-base: https://github.com/zephyrproject-rtos
    - name: jgrivera67
      url-base: https://github.com/jgrivera67

  projects:
    - name: zephyr
      remote: zephyrproject-rtos
      repo-path: zephyr
      revision: main
      import: true

    - name: zephyr-lang-ada
      remote: jgrivera67
      revision: main
      path: modules/lang/ada

  self:
    path: apps
```

Commit message:
```
ada: west.yml — add zephyr-lang-ada as west-managed module

Pull the Ada language glue (CMake, Kconfig, scripts, samples, tests)
from github.com/jgrivera67/zephyr-lang-ada into modules/lang/ada/
via west, mirroring how zephyr-lang-rust is managed.
```

## Step 5 — Run `west update` and verify

```bash
cd /home/josegrivera/my-projects/zephyr_ada
west update
```

Expected: `modules/lang/ada/` is populated from the GitHub repo.

## Step 6 — Remove files from monorepo that are now west-managed

Remove from `apps/` (now owned by `zephyr-lang-ada`):
```bash
git rm apps/scripts/kconfig_to_ada.py
git rm apps/scripts/dt_to_ada.py
git rm -r apps/scripts/generate_zephyr_ada_bindings_*.sh
git rm -r apps/third_party/generated_zephyr_ada_bindings/
git rm apps/zephyr_ada_rts/Kconfig.ada
```

Do NOT remove:
- `apps/zephyr_ada_rts/` — still local until Alire crate is published
- `apps/compiler_flags.gpr` — still referenced by monorepo GPR files
- `apps/samples/` — local development samples

Commit message:
```
ada: remove files now owned by west-managed repos

Remove kconfig_to_ada.py, dt_to_ada.py (now in zephyr-lang-ada),
pre-generated Zephyr Ada bindings (superseded by CMake build-time
generation), and zephyr_ada_rts/Kconfig.ada (now in zephyr-lang-ada).
```

## Step 7 — Verify full build still works

```bash
west build -b qemu_cortex_m3 apps/samples/hello_world
west build -b frdm_kl25z apps/samples/frdm_kl25z_autonomous_car
```

## Step 8 (future) — Publish zephyr_ada_rts to alire-index

Once the crate builds standalone:
- Fork `alire-project/alire-index`
- Add `index/z/zephyr_ada_rts/zephyr_ada_rts-0.1.0.toml`
- Open PR

After publication, remove `[[pins]]` entries from all sample `alire.toml` files
and remove `apps/zephyr_ada_rts/` from the monorepo.

## Step 9 (future) — Official Zephyr upstream

After Zephyr RFC acceptance:
- Transfer `jgrivera67/zephyr-lang-ada` → `zephyrproject-rtos/zephyr-lang-ada`
- Land 5-change PR to main Zephyr repo (Kconfig stub, submanifest, docs)
- Update `apps/west.yml` remote from `jgrivera67` to `zephyrproject-rtos`
