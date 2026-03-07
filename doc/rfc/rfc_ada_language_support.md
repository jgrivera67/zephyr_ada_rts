# RFC: Ada Language Support for Zephyr RTOS

**Issue label:** `RFC`
**Author(s):** Jose G. Rivera
**Status:** Draft
**Target:** Zephyr Architecture Working Group

---

## Overview

This RFC proposes adding Ada as an officially supported programming language in Zephyr RTOS,
following the same optional-module pattern used for Rust (`modules/lang/rust`). The Ada module
provides a complete runtime system (RTS) that maps Ada's built-in concurrency model (tasks,
protected objects, entries) to Zephyr kernel primitives, along with tooling for type-safe access
to Kconfig and device tree data from Ada code.

The implementation has been demonstrated on 5+ real boards across ARM Cortex-M, ARM Cortex-R,
RISC-V, and Xtensa ESP32, and builds on work presented at the Ada Developers Workshop 2025 and
published in the Ada User Journal (2026).

---

## Motivation and Use Case

### Why Ada for Zephyr?

Ada is the language of choice for safety-critical and high-integrity embedded systems in
aerospace (DO-178C), automotive (ISO 26262), rail (EN 50128), medical (IEC 62304), and
defense (MIL-STD-498) domains. These industries increasingly use RTOS platforms like Zephyr
as their foundation. Supporting Ada natively in Zephyr:

1. **Removes the biggest barrier** for safety-critical developers adopting Zephyr — today they
   must maintain custom, non-upstreamed RTS integrations.

2. **Complements Rust support** — both languages target the same safety-critical niche; offering
   both makes Zephyr the platform of choice for high-integrity embedded systems.

3. **Zero runtime cost** — Ada's tasking model compiles to the same Zephyr threads and mutexes
   that C applications use. No overhead beyond what C would require.

4. **Precedent exists** — Rust was accepted as an optional module in Zephyr 3.x. Ada follows
   the same pattern and integration approach.

### Ada-First Architecture

The key design principle is **Ada-First**: application developers write pure Ada using
language-native constructs — they do not call Zephyr C APIs directly.

| Instead of (C API call) | Use (Ada language feature) |
|-------------------------|----------------------------|
| `k_thread_create()` | `task T is ...` (Ada task type) |
| `k_mutex_lock/unlock()` | `protected` object |
| `k_sem_take/give()` | `entry` call with barrier |
| `IRQ_CONNECT()` | `Attach_Handler` aspect (Ada 2012) |
| `DT_REG_ADDR(node)` | `Zephyr.Device_Tree.Uart0.Base_Address` |
| `CONFIG_FOO` (`#ifdef`) | `Zephyr.Config.Foo` (Ada constant) |
| `reg \|= (1 << 3)` | `Reg.Field := True` (representation clause) |

The GNAT Ada Runtime System for Zephyr (`zephyr_ada_rts`, ~2,800 lines) provides the
mapping between Ada tasking semantics and Zephyr kernel primitives. Application code
never sees `k_thread`, `k_mutex`, or `k_sem`.

---

## Design Details

### Module Structure

The Ada module follows the Rust module pattern exactly:

```
modules/lang/ada/
├── zephyr/
│   ├── module.yml          # Zephyr module descriptor
│   ├── Kconfig.ada         # Ada-specific Kconfig options (CONFIG_ADA etc.)
│   └── CMakeLists.txt      # Provides ada_alire_application() CMake function
├── scripts/
│   ├── kconfig_to_ada.py   # Generates Zephyr.Config Ada package from autoconf.h
│   └── dt_to_ada.py        # Generates Zephyr.Device_Tree Ada package from DTS
├── cmake/
│   └── ada_sections.ld     # Linker script for GNAT-specific ELF sections
├── samples/
│   ├── hello_world/        # Minimal Ada app: 3 tasks, Ada delay
│   └── tasking/            # Producer-consumer, rendezvous, protected objects
└── tests/
    └── ada_tasking/        # Twister test suite (9 test cases)
```

The Ada RTS itself (`zephyr_ada_rts`) is a separate Alire crate dependency — it does not
live inside the module, mirroring how Rust's `zephyr` crate is separate from the module.

### Integration Points

**1. Zephyr main modules Kconfig** — `modules/Kconfig.ada` (one line, mirrors Kconfig.rust):
```kconfig
config ADA
    bool
```

**2. Optional module manifest** — `submanifests/optional.yaml`:
```yaml
- name: zephyr-lang-ada
  path: modules/lang/ada
  remote: upstream
  groups:
    - optional
```

**3. Application CMakeLists.txt** — one function call:
```cmake
find_package(Zephyr REQUIRED HINTS $ENV{ZEPHYR_BASE})
project(my_ada_app)
ada_alire_application()
target_link_libraries(app PRIVATE ${ADA_LIBRARY_NAME})
```

**4. prj.conf** — one config:
```kconfig
CONFIG_ADA=y
```

### Kconfig-to-Ada Code Generation

The build system generates a `Zephyr.Config` Ada package from `autoconf.h` before invoking
the Ada build. This eliminates C preprocessor directives from Ada code entirely:

```ada
-- Generated from Kconfig — DO NOT EDIT
package Zephyr.Config is
   Main_Stack_Size             : constant := 4096;
   Sys_Clock_Hw_Cycles_Per_Sec : constant := 48_000_000;
   Ada_Max_Tasks               : constant := 8;
   Num_Irqs                    : constant := 32;
   Sram_Base_Address           : constant := 16#20000000#;
end Zephyr.Config;
```

Ada code uses these as ordinary constants — no `#ifdef`, no environment variables.

### Device Tree Integration

Similarly, a `Zephyr.Device_Tree` Ada package is generated from the compiled `zephyr.dts`:

```ada
-- Generated from board DTS — DO NOT EDIT
package Zephyr.Device_Tree is
   package UART0 is
      Base_Address : constant := 16#4006A000#;
      Interrupt    : constant := 12;
      IRQ_Priority : constant := 0;
   end UART0;
   package I2C0 is
      Base_Address : constant := 16#40066000#;
      Interrupt    : constant := 8;
      Clock_Freq   : constant := 100_000;
   end I2C0;
end Zephyr.Device_Tree;
```

Driver code uses `Zephyr.Device_Tree.UART0.Base_Address` instead of `DT_REG_ADDR(...)`.

### Register Abstraction

Ada representation clauses replace C bit-manipulation in drivers:

```ada
-- Ada: type-safe, self-documenting
type UART_Status is record
   RX_Full  : Boolean;   -- bit 5
   TX_Empty : Boolean;   -- bit 7
end record with Size => 8;

for UART_Status use record
   RX_Full  at 0 range 5 .. 5;
   TX_Empty at 0 range 7 .. 7;
end record;

-- Usage: no shifts, no masks, compiler-verified
loop exit when UART0_Regs.S1.TX_Empty; end loop;
```

### Interrupt Handlers

Ada 2012 `Attach_Handler` aspect registers protected procedures as ISRs. The RTS calls
`irq_connect_dynamic()` at elaboration time:

```ada
protected UART_IRQ_Handler is
   pragma Interrupt_Priority (System.Interrupt_Priority'Last);
   procedure Handle with Attach_Handler => Ada.Interrupts.Names.UART0_IRQ;
end UART_IRQ_Handler;
```

### Build Flow

```
west build
    │
    ├─ CMake configures Zephyr kernel
    │      └─ generates autoconf.h, zephyr.dts
    │
    ├─ ada_kconfig_gen: kconfig_to_ada.py → zephyr_config.ads
    ├─ ada_dt_gen:      dt_to_ada.py      → zephyr-device_tree.ads
    │
    ├─ ExternalProject: alr build (GPRbuild + GNAT cross-compiler)
    │      └─ builds Ada app + RTS → libada_app.a + libgnat.a
    │
    └─ Zephyr linker: links kernel + Ada libraries → zephyr.elf
```

### Architecture Support

| Architecture | Alire Toolchain | Status |
|---|---|---|
| ARM Cortex-M (32-bit) | `gnat_arm_elf` | Fully supported |
| ARM Cortex-R (32-bit) | `gnat_arm_elf` | Fully supported |
| RISC-V 64-bit | `gnat_riscv64_elf` | Fully supported |
| Xtensa ESP32 | `gnat_xtensa_esp32_elf` | Supported |
| ARM Cortex-A (64-bit) | custom (`ADA_TOOLCHAIN_PATH`) | Partial |

---

## Kconfig Options

| Option | Default | Description |
|---|---|---|
| `CONFIG_ADA` | `n` | Enable Ada language support |
| `CONFIG_ADA_MAX_TASKS` | `8` | Max concurrent Ada tasks |
| `CONFIG_ADA_MAIN_STACK_SIZE` | `4096` | Environment task stack (bytes) |
| `CONFIG_ADA_TASK_STACK_SIZE` | `2048` | Default task stack (bytes) |
| `CONFIG_ADA_SECONDARY_STACK_SIZE` | `256` | Secondary stack per task (bytes) |
| `CONFIG_ADA_INTERRUPT_HANDLING` | `y` | Attach_Handler ISR support |
| `CONFIG_ADA_KCONFIG_PACKAGE` | `y` | Generate Zephyr.Config package |
| `CONFIG_ADA_DEVICE_TREE_PACKAGE` | `y` | Generate Zephyr.Device_Tree package |

`CONFIG_ADA` auto-selects `CONFIG_THREAD_CUSTOM_DATA` and `CONFIG_DYNAMIC_THREAD`.

---

## Alternatives Considered

### 1. Ada bindings to Zephyr C APIs (rejected)
Generate Ada `--  pragma Import` wrappers for every Zephyr API. Rejected because:
- Developers must learn both Ada and Zephyr C APIs
- Loses Ada's type safety at every boundary
- Does not leverage Ada's built-in concurrency model
- Already exists as an ad-hoc approach; upstreaming it has no value-add

### 2. GNAT-ZFP (Zero Footprint Profile) without tasking (rejected)
Use only the minimal GNAT runtime without Ada tasking. Rejected because:
- Eliminates Ada's primary advantage over C for embedded: safe concurrency
- Protected objects and task entries are the core value proposition

### 3. Full POSIX Ada RTS on top of Zephyr POSIX layer (rejected)
Use Zephyr's POSIX subsystem as the substrate. Rejected because:
- Heavy overhead (full POSIX layer plus Ada RTS)
- POSIX layer is not available on all Zephyr targets
- Direct Zephyr kernel mapping is lighter and more portable

### 4. Integration as a Zephyr subsystem (not a module) (deferred)
Make Ada part of Zephyr core instead of an optional module. Deferred because:
- Optional module is the right incremental approach (mirrors Rust)
- Reduces risk of disrupting existing Zephyr users
- Can be promoted to core later if adoption justifies it

---

## Test Strategy

**Unit tests** (Python, no hardware):
- `kconfig_to_ada.py`: validates all value type conversions
- `dt_to_ada.py`: validates DTS parsing and Ada package generation

**Integration tests** (Twister):
- `ada.tasking.basic` — task creation and `delay` on QEMU
- `ada.tasking.protected_objects` — mutual exclusion correctness
- `ada.tasking.rendezvous` — entry call / accept synchronization
- `ada.kconfig.package` — generated constants non-zero
- `ada.device_tree.package` — base addresses generated from DTS

**Build tests** (Twister `--build-only`):
- `frdm_kl25z`, `hifive1_revb`, `esp32c3_devkitm` — cross-compilation verified

**CI**: GitHub Actions runs all tests on every push to `modules/lang/ada/**`.

---

## Implementation Status

The following are implemented and tested:

- [x] GNARL Ada RTS: ~2,800 lines implementing Ada tasking on Zephyr (tasks, protected
  objects, entries, delay, interrupt handlers)
- [x] `kconfig_to_ada.py`: generates `Zephyr.Config` from `autoconf.h`
- [x] `dt_to_ada.py`: generates `Zephyr.Device_Tree` from compiled DTS
- [x] CMake integration: `ada_alire_application()` function with auto-generated packages
- [x] `Kconfig.ada`: Ada-specific options with `CONFIG_ADA` master switch
- [x] Module structure: `module.yml`, `Kconfig.ada`, `CMakeLists.txt`
- [x] Samples: `hello_world`, `tasking`, `protected_objects`
- [x] Tests: Twister testcase.yaml with 9 test cases
- [x] Documentation: 5 RST pages (index, getting_started, tasking, kconfig, interrupts, drivers)
- [x] CI: GitHub Actions (lint, QEMU build+test, board build-only, script tests)
- [x] Multi-arch: ARM Cortex-M/R, RISC-V, Xtensa ESP32

---

## Zephyr Changes Required (Minimal)

To upstream this module, the following changes are needed to the Zephyr main tree:

1. **`modules/Kconfig.ada`** (new file, 2 lines) — `config ADA / bool`
2. **`modules/Kconfig`** (1 line added) — `source "modules/Kconfig.ada"`
3. **`submanifests/optional.yaml`** (4 lines added) — module manifest entry
4. **`doc/develop/languages/index.rst`** (1 line added) — `ada/index.rst`
5. **`doc/develop/languages/ada/`** (new directory) — 5 RST files

The Ada RTS (`zephyr_ada_rts`) and the Ada module (`modules/lang/ada`) live in separate
repositories, exactly as `zephyr-lang-rust` is separate from the Zephyr main tree.

No changes to Zephyr's kernel, scheduler, IRQ subsystem, or device driver model are required.

---

## Prior Art and References

- **Rust in Zephyr**: `modules/lang/rust` — direct pattern reference
- **Ada Developers Workshop 2025**: "Ada on Zephyr RTOS" — earlier work on the RTS
- **Ada User Journal 2026**: Publication of Ada/Zephyr integration approach
- **AdaCore GNAT**: GNAT Ada compiler; `gnat_arm_elf` etc. available via Alire
- **Alire**: Ada package manager — analogous to Cargo for Rust
- **SPARK/Ada in aerospace**: Existing DO-178C certified Ada workflows that could target Zephyr

---

## Seeking Feedback On

1. **Module repository location** — should `zephyr_ada_rts` be part of the module repo or
   separate (as proposed)?

2. **Alire as a hard dependency** — is requiring Alire acceptable, similar to how Rust requires
   Cargo? Or should we also support standalone GNAT toolchains without Alire?

3. **Ada RTS as a Zephyr module vs. Alire crate** — the RTS is currently an Alire crate pulled
   by the application. Should it instead be a CMake library within the module itself?

4. **`qemu_cortex_m3` as integration platform** — is this the right QEMU target for CI, or
   should we use a board with a more realistic peripheral set?

5. **Documentation location** — `doc/develop/languages/ada/` following C/C++/Rust pattern?
