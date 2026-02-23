# Ada Tasking Test Suite for Zephyr

This directory contains test programs to verify the Ada tasking implementation on Zephyr RTOS.

## Test Programs

### 1. test_single_task.adb
**Purpose:** Verify basic task creation and execution

Tests:
- Single Ada task can be created
- Task activation completes successfully
- Task body executes correctly
- Ada.Real_Time.Delay_Until works
- Environment task continues execution

**Expected Behavior:** The worker task runs for 5 iterations with 1-second delays, then the program completes successfully.

### 2. test_priorities.adb
**Purpose:** Verify priority-based scheduling

Tests:
- Multiple tasks with different priorities can be created
- High priority task (Priority'Last) executes first
- Medium priority task (Default_Priority) runs when high is blocked
- Low priority task (Priority'First) gets remaining CPU time
- All tasks execute concurrently

**Expected Behavior:** All three tasks run for ~3 seconds with different delay patterns. Higher priority tasks should preempt lower priority tasks when ready to run.

### 3. test_protected_object.adb
**Purpose:** Verify protected object mutual exclusion

Tests:
- Protected objects can be created
- Protected procedures provide mutual exclusion
- Protected functions work correctly
- Multiple tasks can safely access shared data
- No lost updates occur with concurrent access

**Expected Behavior:** Two tasks each increment a shared counter 10 times. The final value should be 20, demonstrating that mutual exclusion prevented lost updates.

## Building and Running Tests

**Note:** These tests require Ada.Real_Time which is part of Milestone 5. They will not compile until that milestone is complete.

Once Ada.Real_Time is implemented:

```bash
cd /path/to/test
gnatmake test_single_task.adb -largs -lzephyr_ada_rts
```

Or integrate with Zephyr build system:
```bash
west build -b <board> -p -- -DCONFIG_ADA_APPLICATION=test_single_task
```

## Test Status

- [ ] test_single_task.adb - Waiting for Ada.Real_Time (Milestone 5)
- [ ] test_priorities.adb - Waiting for Ada.Real_Time (Milestone 5)
- [ ] test_protected_object.adb - Waiting for protected objects (Milestone 4) and Ada.Real_Time (Milestone 5)

## Success Criteria

Each test should:
1. Compile without errors
2. Link successfully with zephyr_ada_rts
3. Run to completion without hanging
4. Produce expected output (if any)
5. Not trigger any runtime errors

## Future Tests

Additional tests to add:
- test_rendezvous.adb - Entry calls and accept statements
- test_select.adb - Selective accept
- test_delay_alternative.adb - Delay alternative in select
- test_interrupts.adb - Interrupt handlers
- test_periodic.adb - Periodic tasks with precise timing
- test_multicore.adb - Multiprocessor support (rpi_4b/rpi_5 only)
