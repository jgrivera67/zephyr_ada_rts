# Zephyr Ada RTS — Implementation Plan

> This document captures the original 7-milestone plan conceived at the start of
> this project, plus all subsequent planning recorded in session plan files
> (`PLAN_ada_tasking.md`, `PLAN_ada_interrupts.md`).  The original milestone plan
> was never written as a standalone file; it was embedded in the commit messages and
> reconstructed here from git history.

---

## Project Goal

Add Ada language support to Zephyr RTOS as an optional module, following the pattern
established by `modules/lang/rust`.  Philosophy: **Ada-First** — application code is
pure Ada using native Ada tasking constructs; no Zephyr C API calls appear in Ada
application code.

---

## Original Milestone Plan

Defined at project start; status reflects where we are today.

### Milestone 1 — Basic Infrastructure ✅ COMPLETE

- [x] Create directory structure (`src/zephyr/`, `src/gnarl/`, `src/ada/`)
- [x] `System.Zephyr.Priorities` — Ada ↔ Zephyr priority mapping
- [x] Core GNARL specs (`s-taskin`, `s-taspri`, `s-tasinf`)
- [x] `zephyr_ada_rts.gpr` updated with new source dirs

Key design decisions made here:
- Native Zephyr kernel APIs (`k_thread_*`) rather than POSIX
- ATCB stored in thread custom data (`k_thread_custom_data`) — "Option A"
- Static stack allocation
- Board-specific Zephyr bindings via GPR `Source_Dirs`

### Milestone 2 — Core GNARL Tasking ✅ COMPLETE

- [x] `System.Zephyr.Threads` wrapper (`s-zepthr`) — `k_thread_*` APIs:
  thread creation, priority management, sleep/wakeup, yield, ATCB storage
- [x] `System.OS_Interface` bridge layer (`s-osinte`) — thread, time, interrupt,
  ATCB operations; all priority conversions between Ada (0–31) and Zephyr (30–0) scales
- [x] `System.Task_Primitives.Operations` (`s-taprop`) — Initialize, Create_Task,
  Enter_Task, Self, Sleep/Wakeup, Set_Priority/Get_Priority, Delay_Until,
  Monotonic_Clock, Get_Affinity/Get_CPU, Is_Task_Context
- [x] `System.Tasking` body (`s-taskin`) — Get_Sec_Stack, Initialize_ATCB,
  Initialize, Self, Storage_Size
- [x] C shim layer (`zephyr_ada_shim.c/.h`) — non-inline wrappers for Zephyr's
  static inline syscall functions

### Milestone 3 — Task Creation and Activation ✅ COMPLETE

- [x] `System.Tasking.Restricted.Stages` (`s-tarest`) — the compiler-facing GNARL
  interface for task creation and activation:
  - `Task_Wrapper` — entry point for all Zephyr threads created for Ada tasks
  - `Create_Restricted_Task` / `Create_Restricted_Task_Sequential`
  - `Activate_Restricted_Tasks` / `Activate_All_Tasks_Sequential`
  - `Complete_Restricted_Activation` / `Complete_Restricted_Task`
  - `Restricted_Terminated` (`'Terminated` attribute)
  - `Finalize_Global_Tasks`

Compiler-generated code flow (established here):
1. Compiler calls `Create_Restricted_Task` for each task instance
2. Compiler calls `Activate_Restricted_Tasks` to activate the chain
3. Zephyr thread starts in `Task_Wrapper` → `Enter_Task` → task body

### Milestone 4 — Protected Objects ✅ COMPLETE

- [x] `System.Tasking.Protected_Objects` (`s-taprob`) — `Initialize_Protection`,
  `Lock`, `Unlock` using ceiling priority protocol
- [x] `System.Tasking.Protected_Objects.Entries` (`s-tpoben`) — `Protection_Entries`
  record, `Initialize_Protection_Entries`, `Lock_Entries`, `Unlock_Entries`
- [x] `System.Tasking.Protected_Objects.Operations` (`s-tpobop`) — `Protected_Entry_Call`,
  `PO_Do_Or_Queue`, `PO_Service_Entries`, `Service_Entries`, `Protected_Count`
- [x] `System.Tasking.Queuing` (`s-tasque`) — entry queue management,
  `Enqueue`, `Dequeue`, `Select_Protected_Entry_Call`, `Count_Waiting`

### Milestone 5 — Time and Delays ✅ COMPLETE

- [x] `Ada.Real_Time` (`a-reatim`) — `Clock`, `Time`, `Time_Span`, `"+"`, `"-"`,
  `"<"`, `To_Duration`, `To_Time_Span`, arithmetic operators
- [x] `Ada.Real_Time.Timing_Events` (`a-retide`) — timing event callbacks
- [x] `System.Relative_Delays` (`s-reldel`) — `Delay_For` (relative `delay`)
- [x] `Delay_Until` in `s-taprop.adb` using `k_sleep` via C shim

### Milestone 6 — Protected Entries (Synchronization) ✅ COMPLETE

Completed as part of Milestone 4 (`s-tpobop`):
- [x] Barrier evaluation on entry call
- [x] Entry queuing when barrier is closed
- [x] `PO_Service_Entries` — dequeue and wake waiting callers
- [x] `Ada.Synchronous_Task_Control` (`a-sytaco`) — `Suspension_Object`,
  `Set_True`, `Set_False`, `Suspend_Until_True`, `Current_State`

### Milestone 7 — Interrupts ✅ PARTIAL

- [x] **Phase 7a** — `Interrupt_Priority` mutual exclusion via `irq_lock`/`irq_unlock`:
  - `ada_irq_lock` / `ada_irq_unlock` C shims added
  - `Protection.Saved_Int_Key` field added
  - `Lock`/`Unlock` branch on `Object.Ceiling >= Interrupt_Priority'First`:
    interrupt-priority path uses `irq_lock`; task-priority path uses ceiling protocol
- [ ] **Phase 7b** — `Current_Interrupt` / `Is_Task_Context` — implement via
  `k_is_in_isr()` C shim (currently returns `No_Interrupt` stub)
- [ ] **Phase 7c** — `Attach_Handler`:
  - C shims: `ada_irq_connect_dynamic`, `ada_irq_enable`
  - `System.OS_Interface.Attach_Handler` via `irq_connect_dynamic` + `irq_enable`
  - `System.Interrupts` (`s-interr`) — handler table, `Attach_Handler`,
    `Detach_Handler`
  - `Ada.Interrupts` (`a-interr`) — standard spec
  - `Ada.Interrupts.Names` (`a-intnam`) — one constant per IRQ
- [ ] **Phase 7d** — `Ada.Interrupts.Names` generation
  - Extend `dt_to_ada.py` to emit the package from DTS interrupt nodes
  - CMake target: `ada_irq_names_gen`

---

## Additional Work Beyond Original Milestones

### Kconfig and Device Tree Integration ✅ COMPLETE

- [x] `CONFIG_ADA` Kconfig option (auto-selects `THREAD_CUSTOM_DATA`,
  `DYNAMIC_THREAD`)
- [x] `kconfig_to_ada.py` — `autoconf.h` → `Zephyr.Config` Ada package
- [x] `dt_to_ada.py` — `zephyr.dts` → `Zephyr.Device_Tree` Ada package
- [x] `ada_alire_application()` CMake function in `modules/lang/ada/`

### Multi-Architecture Support ✅ COMPLETE

| Architecture | Alire crate | Status |
|---|---|---|
| ARM Cortex-M/R | `gnat_arm_elf` | Working |
| RISC-V 64-bit | `gnat_riscv64_elf` | Working |
| Xtensa ESP32 | `gnat_xtensa_esp32_elf` | Working |
| ARM Cortex-A | custom `ADA_TOOLCHAIN_PATH` | Supported |

### Zephyr Module for Upstreaming ✅ COMPLETE (skeleton)

- [x] `modules/lang/ada/zephyr/module.yml`
- [x] `modules/lang/ada/zephyr/Kconfig.ada`
- [x] `modules/lang/ada/zephyr/CMakeLists.txt`
- [x] `modules/lang/ada/cmake/ada_sections.ld`
- [x] `modules/lang/ada/samples/hello_world/`
- [x] `modules/lang/ada/tests/ada_tasking/` (Twister, 9 tests)

### Sample Applications ✅ COMPLETE

- [x] `apps/samples/ada_tasking/` — multiple concurrent tasks
- [x] `apps/samples/ada_protected_objects/` — protected objects and entries
- [x] `apps/samples/frdm_kl25z_autonomous_car/` — full embedded application

### Documentation and CI ✅ COMPLETE

- [x] `doc/zephyr_ada/` — 6 RST files (~1000 lines): index, getting_started,
  tasking, kconfig, interrupts, drivers
- [x] `doc/rfc/rfc_ada_language_support.md` — RFC draft for Zephyr AWG
- [x] `.github/workflows/ada_ci.yml` — lint, QEMU build+test, board build,
  script tests
- [x] `apps/scripts/regression_build.sh` — 10/10 pass

---

## Remaining Work

### Milestone 7 Completion (Interrupt Handling)

See Phase 7b–7d above.

### License Cleanup (Required for Zephyr Upstreaming)

Files fall into three categories; action required before upstreaming:

| Category | Example files | Required action |
|---|---|---|
| Verbatim FSF GNAT copies | all `gnat/` files; `s-tasque`, `s-tpoben`, `s-tpobop`, `a-reatim`, `s-reldel` | Keep GPL-3.0 + RLE; distribute via Alire, **not** in Zephyr tree |
| New files written from scratch (copyright wrongly says FSF) | `s-zephyr`, `s-zeppri`, `s-zepthr` | Fix to author copyright + Apache-2.0 |
| Zephyr-specific ports of GNARL interfaces | `s-taprop`, `s-taprob`, `s-osinte`, `s-tarest`, `s-taskin.adb`, `s-tasdeb`, `a-sytaco` | Confirm derivation; Apache-2.0 if scratch, GPL-3.0 + RLE if derived |

### Zephyr Upstream (Minimal Tree Changes)

1. `modules/Kconfig.ada` — 2 lines
2. `modules/Kconfig` — `source "modules/Kconfig.ada"`
3. `submanifests/optional.yaml` — 4 lines
4. `doc/develop/languages/index.rst` — 1 line
5. `doc/develop/languages/ada/` — 5 RST files

---

## Architecture Reference

### Ada ↔ Zephyr Primitive Mapping

| Ada construct | Zephyr primitive |
|---|---|
| Ada task | `k_thread` |
| Protected object (task priority ≤ 30) | ceiling via `k_thread_priority_set` |
| Protected object (interrupt priority = 31) | `irq_lock` / `irq_unlock` |
| Protected entry / barrier | `k_thread_suspend` / `k_thread_resume` |
| `Attach_Handler` aspect | `irq_connect_dynamic()` at elaboration |
| `delay` | `k_sleep` |
| `delay until` | `k_uptime_ticks` + `k_sleep` |

### Priority Mapping

```
Ada Priority range:      0 .. 31  (Any_Priority)
  Task priority:         0 .. 30  → Zephyr 30 .. 0  (inverted)
  Interrupt priority:       31    → irq_lock/irq_unlock (not a Zephyr thread priority)
```

### Build Flow

```
Zephyr CMake
  → autoconf.h + zephyr.dts
  → kconfig_to_ada.py → config/zephyr_config.ads
  → dt_to_ada.py     → config/zephyr-device_tree.ads
  → ExternalProject  → alr build → libada_app.a + libgnat.a
  → Zephyr linker    → final ELF
```
