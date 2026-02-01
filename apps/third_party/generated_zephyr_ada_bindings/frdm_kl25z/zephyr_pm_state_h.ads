pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;
with Interfaces.C.Extensions;
with stddef_h;
with System;

package zephyr_pm_state_h is

   --  arg-macro: procedure Z_DT_PHANDLE_01 (node_id, prop, idx)
   --    COND_CODE_1(DT_NODE_HAS_STATUS_OKAY(DT_PHANDLE_BY_IDX(node_id, prop, idx)), (1), (0))
   --  arg-macro: procedure Z_PM_STATE_INFO_FROM_DT_CPU (i, node_id)
   --    COND_CODE_1(DT_NODE_HAS_STATUS_OKAY(DT_PHANDLE_BY_IDX(node_id, cpu_power_states, i)), (PM_STATE_INFO_DT_INIT(DT_PHANDLE_BY_IDX(node_id, cpu_power_states, i)),), ())
   --  arg-macro: procedure Z_PM_STATE_FROM_DT_CPU (i, node_id)
   --    COND_CODE_1(DT_NODE_HAS_STATUS_OKAY(DT_PHANDLE_BY_IDX(node_id, cpu_power_states, i)), (PM_STATE_DT_INIT(DT_PHANDLE_BY_IDX(node_id, cpu_power_states, i)),), ())
   --  arg-macro: procedure PM_STATE_INFO_DT_INIT (node_id)
   --    { .state := PM_STATE_DT_INIT(node_id), .substate_id := DT_PROP_OR(node_id, substate_id, 0), .min_residency_us := DT_PROP_OR(node_id, min_residency_us, 0), .exit_latency_us := DT_PROP_OR(node_id, exit_latency_us, 0), .pm_device_disabled := DT_PROP(node_id, zephyr_pm_device_disabled), }
   --  arg-macro: procedure PM_STATE_DT_INIT (node_id)
   --    DT_ENUM_IDX(node_id, power_state_name)
   --  arg-macro: procedure DT_NUM_CPU_POWER_STATES (node_id)
   --    COND_CODE_1(DT_NODE_HAS_PROP(node_id, cpu_power_states), (DT_FOREACH_PROP_ELEM_SEP(node_id, cpu_power_states, Z_DT_PHANDLE_01, (+))), (0))
   --  arg-macro: procedure PM_STATE_INFO_LIST_FROM_DT_CPU (node_id)
   --    { LISTIFY(DT_PROP_LEN_OR(node_id, cpu_power_states, 0), Z_PM_STATE_INFO_FROM_DT_CPU, (), node_id) }
   --  arg-macro: procedure PM_STATE_LIST_FROM_DT_CPU (node_id)
   --    { LISTIFY(DT_PROP_LEN_OR(node_id, cpu_power_states, 0), Z_PM_STATE_FROM_DT_CPU, (), node_id) }
   --  arg-macro: procedure PM_STATE_CONSTRAINT_INIT (node_id)
   --    { .state := PM_STATE_DT_INIT(node_id), .substate_id := DT_PROP_OR(node_id, substate_id, 0), }
   --  arg-macro: procedure Z_PM_STATE_CONSTRAINT_REF (node_id, phandle, idx)
   --    PM_STATE_CONSTRAINT_INIT(DT_PHANDLE_BY_IDX(node_id, phandle, idx))
   --  arg-macro: procedure Z_PM_STATE_CONSTRAINTS_LIST_NAME (node_id, phandles)
   --    CONCAT(node_id, _, phandles, _constraints)
   --  arg-macro: procedure PM_STATE_CONSTRAINTS_LIST_DEFINE (node_id, prop)
   --    struct pm_state_constraint Z_PM_STATE_CONSTRAINTS_LIST_NAME(node_id, prop)() := { DT_FOREACH_PROP_ELEM_SEP(node_id, prop, Z_PM_STATE_CONSTRAINT_REF, (,)) }
   --  arg-macro: procedure PM_STATE_CONSTRAINTS_GET (node_id, prop)
   --    { .list := Z_PM_STATE_CONSTRAINTS_LIST_NAME(node_id, prop), .count := DT_PROP_LEN(node_id, prop), }
  -- * Copyright (c) 2020 Intel corporation
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  --*
  -- * @brief System Power Management States
  -- * @defgroup subsys_pm_states States
  -- * @ingroup subsys_pm
  -- * @{
  --  

  --*
  -- * @enum pm_state Power management state
  --  

   type pm_state is 
     (PM_STATE_ACTIVE,
      PM_STATE_RUNTIME_IDLE,
      PM_STATE_SUSPEND_TO_IDLE,
      PM_STATE_STANDBY,
      PM_STATE_SUSPEND_TO_RAM,
      PM_STATE_SUSPEND_TO_DISK,
      PM_STATE_SOFT_OFF,
      PM_STATE_COUNT)
   with Convention => C;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/pm/state.h:28

  --*
  --	 * @brief Runtime active state
  --	 *
  --	 * The system is fully powered and active.
  --	 *
  --	 * @note This state is correlated with ACPI G0/S0 state
  --	  

  --*
  --	 * @brief Runtime idle state
  --	 *
  --	 * Runtime idle is a system sleep state in which all of the cores
  --	 * enter deepest possible idle state and wait for interrupts, no
  --	 * requirements for the devices, leaving them at the states where
  --	 * they are.
  --	 *
  --	 * @note This state is correlated with ACPI S0ix state
  --	  

  --*
  --	 * @brief Suspend to idle state
  --	 *
  --	 * The system goes through a normal platform suspend where it puts
  --	 * all of the cores in deepest possible idle state and *may* puts
  --	 * peripherals into low-power states. No operating state is lost (ie.
  --	 * the cpu core does not lose execution context), so the system can go
  --	 * back to where it left off easily enough.
  --	 *
  --	 * @note This state is correlated with ACPI S1 state
  --	  

  --*
  --	 * @brief Standby state
  --	 *
  --	 * In addition to putting peripherals into low-power states all
  --	 * non-boot CPUs are powered off. It should allow more energy to be
  --	 * saved relative to suspend to idle, but the resume latency will
  --	 * generally be greater than for that state. But it should be the same
  --	 * state with suspend to idle state on uniprocessor system.
  --	 *
  --	 * @note This state is correlated with ACPI S2 state
  --	  

  --*
  --	 * @brief Suspend to ram state
  --	 *
  --	 * This state offers significant energy savings by powering off as much
  --	 * of the system as possible, where memory should be placed into the
  --	 * self-refresh mode to retain its contents. The state of devices and
  --	 * CPUs is saved and held in memory, and it may require some boot-
  --	 * strapping code in ROM to resume the system from it.
  --	 *
  --	 * @note This state is correlated with ACPI S3 state
  --	  

  --*
  --	 * @brief Suspend to disk state
  --	 *
  --	 * This state offers significant energy savings by powering off as much
  --	 * of the system as possible, including the memory. The contents of
  --	 * memory are written to disk or other non-volatile storage, and on
  --	 * resume it's read back into memory with the help of boot-strapping
  --	 * code, restores the system to the same point of execution where it
  --	 * went to suspend to disk.
  --	 *
  --	 * @note This state is correlated with ACPI S4 state
  --	  

  --*
  --	 * @brief Soft off state
  --	 *
  --	 * This state consumes a minimal amount of power and requires a large
  --	 * latency in order to return to runtime active state. The contents of
  --	 * system(CPU and memory) will not be preserved, so the system will be
  --	 * restarted as if from initial power-up and kernel boot.
  --	 *
  --	 * @note This state is correlated with ACPI G2/S5 state
  --	  

  --* Number of power management states (internal use)  
  --*
  -- * Information about a power management state
  --  

   type pm_state_info is record
      state : aliased pm_state;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/pm/state.h:116
      substate_id : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/pm/state.h:143
      pm_device_disabled : aliased Extensions.bool;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/pm/state.h:152
      min_residency_us : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/pm/state.h:160
      exit_latency_us : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/pm/state.h:167
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/pm/state.h:115

  --*
  --	 * Some platforms have multiple states that map to
  --	 * one Zephyr power state. This property allows the platform
  --	 * distinguish them. e.g:
  --	 *
  --	 * @code{.dts}
  --	 *	power-states {
  --	 *		state0: state0 {
  --	 *			compatible = "zephyr,power-state";
  --	 *			power-state-name = "suspend-to-idle";
  --	 *			substate-id = <1>;
  --	 *			min-residency-us = <10000>;
  --	 *			exit-latency-us = <100>;
  --	 *		};
  --	 *		state1: state1 {
  --	 *			compatible = "zephyr,power-state";
  --	 *			power-state-name = "suspend-to-idle";
  --	 *			substate-id = <2>;
  --	 *			min-residency-us = <20000>;
  --	 *			exit-latency-us = <200>;
  --	 *			zephyr,pm-device-disabled;
  --	 *		};
  --	 *	};
  --	 * @endcode
  --	  

  --*
  --	 * Whether or not this state triggers device power management.
  --	 *
  --	 * When this property is false the power management subsystem
  --	 * will suspend devices before entering this state and will
  --	 * properly resume them when leaving it.
  --	  

  --*
  --	 * Minimum residency duration in microseconds. It is the minimum
  --	 * time for a given idle state to be worthwhile energywise.
  --	 *
  --	 * @note 0 means that this property is not available for this state.
  --	  

  --*
  --	 * Worst case latency in microseconds required to exit the idle state.
  --	 *
  --	 * @note 0 means that this property is not available for this state.
  --	  

  --*
  -- * Information needed to be able to reference a power state as a constraint
  -- * on some device or system functions.
  --  

  --*
  --	  * Power management state
  --	  *
  --	  * @see pm_state
  --	  * 

   type pm_state_constraint is record
      state : aliased pm_state;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/pm/state.h:180
      substate_id : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/pm/state.h:186
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/pm/state.h:174

  --*
  --	  * Power management sub-state
  --	  *
  --	  * @see pm_state
  --	  * 

  --*
  -- * Collection of multiple power state constraints.
  --  

  --* Array of power state constraints  
   type pm_state_constraints is record
      list : access pm_state_constraint;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/pm/state.h:194
      count : aliased stddef_h.size_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/pm/state.h:196
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/pm/state.h:192

  --* Number of constraints in the list  
  --* @cond INTERNAL_HIDDEN  
  --*
  -- * @brief Helper macro that expands to 1 if a phandle node is enabled, 0 otherwise.
  -- *
  -- * @param node_id Node identifier.
  -- * @param prop Property holding phandle-array.
  -- * @param idx Index within the array.
  --  

  --*
  -- * @brief Helper macro to initialize an entry of a struct pm_state_info array
  -- * when using UTIL_LISTIFY in PM_STATE_INFO_LIST_FROM_DT_CPU.
  -- *
  -- * @note Only enabled states are initialized.
  -- *
  -- * @param i UTIL_LISTIFY entry index.
  -- * @param node_id A node identifier with compatible zephyr,power-state
  --  

  --*
  -- * @brief Helper macro to initialize an entry of a struct pm_state array when
  -- * using UTIL_LISTIFY in PM_STATE_LIST_FROM_DT_CPU.
  -- *
  -- * @note Only enabled states are initialized.
  -- *
  -- * @param i UTIL_LISTIFY entry index.
  -- * @param node_id A node identifier with compatible zephyr,power-state
  --  

  --* @endcond  
  --*
  -- * @brief Initializer for struct pm_state_info given a DT node identifier with
  -- * zephyr,power-state compatible.
  -- *
  -- * @param node_id A node identifier with compatible zephyr,power-state
  --  

  --*
  -- * @brief Initializer for enum pm_state given a DT node identifier with
  -- * zephyr,power-state compatible.
  -- *
  -- * @param node_id A node identifier with compatible zephyr,power-state
  --  

  --*
  -- * @brief Obtain number of CPU power states supported and enabled by the given
  -- * CPU node identifier.
  -- *
  -- * @param node_id A CPU node identifier.
  -- * @return Number of supported and enabled CPU power states.
  --  

  --*
  -- * @brief Initialize an array of struct pm_state_info with information from all
  -- * the states present and enabled in the given CPU node identifier.
  -- *
  -- * Example devicetree fragment:
  -- *
  -- * @code{.dts}
  -- *	cpus {
  -- *		...
  -- *		cpu0: cpu@0 {
  -- *			device_type = "cpu";
  -- *			...
  -- *			cpu-power-states = <&state0 &state1>;
  -- *		};
  -- *
  -- *		power-states {
  -- *			state0: state0 {
  -- *				compatible = "zephyr,power-state";
  -- *				power-state-name = "suspend-to-idle";
  -- *				min-residency-us = <10000>;
  -- *				exit-latency-us = <100>;
  -- *			};
  -- *
  -- *			state1: state1 {
  -- *				compatible = "zephyr,power-state";
  -- *				power-state-name = "suspend-to-ram";
  -- *				min-residency-us = <50000>;
  -- *				exit-latency-us = <500>;
  -- *				zephyr,pm-device-disabled;
  -- *			};
  -- *		};
  -- *	};
  -- * @endcode
  -- *
  -- * Example usage:
  -- *
  -- * @code{.c}
  -- * const struct pm_state_info states[] =
  -- *	PM_STATE_INFO_LIST_FROM_DT_CPU(DT_NODELABEL(cpu0));
  -- * @endcode
  -- *
  -- * @param node_id A CPU node identifier.
  --  

  --*
  -- * @brief Initialize an array of struct pm_state with information from all the
  -- * states present and enabled in the given CPU node identifier.
  -- *
  -- * Example devicetree fragment:
  -- *
  -- * @code{.dts}
  -- *	cpus {
  -- *		...
  -- *		cpu0: cpu@0 {
  -- *			device_type = "cpu";
  -- *			...
  -- *			cpu-power-states = <&state0 &state1>;
  -- *		};
  -- *
  -- *		power-states {
  -- *			state0: state0 {
  -- *				compatible = "zephyr,power-state";
  -- *				power-state-name = "suspend-to-idle";
  -- *				min-residency-us = <10000>;
  -- *				exit-latency-us = <100>;
  -- *			};
  -- *
  -- *			state1: state1 {
  -- *				compatible = "zephyr,power-state";
  -- *				power-state-name = "suspend-to-ram";
  -- *				min-residency-us = <50000>;
  -- *				exit-latency-us = <500>;
  -- *			};
  -- *		};
  -- *	};
  -- * @endcode
  -- *
  -- * Example usage:
  -- *
  -- * @code{.c}
  -- * const enum pm_state states[] = PM_STATE_LIST_FROM_DT_CPU(DT_NODELABEL(cpu0));
  -- * @endcode
  -- *
  -- * @param node_id A CPU node identifier.
  --  

  --*
  -- * @brief initialize a device pm constraint with information from devicetree.
  -- *
  -- * @param node_id Node identifier.
  --  

  --*
  -- * @brief Define a list of power state constraints from devicetree.
  -- *
  -- * This macro creates an array of pm_state_constraint structures initialized
  -- * with power state information from the specified devicetree property.
  -- *
  -- * @param node_id Devicetree node identifier.
  -- * @param prop Property name containing the list of power state phandles.
  --  

  --*
  -- * @brief Get power state constraints structure from devicetree.
  -- *
  -- * This macro creates a structure containing a pointer to the constraints list
  -- * and the count of constraints, suitable for initializing a pm_state_constraints
  -- * structure. Must be used after the PM_STATE_CONSTRAINTS_LIST_DEFINE call for the same
  -- * @param prop to refer to the array of constraints.
  -- *
  -- * @param node_id Devicetree node identifier.
  -- * @param prop Property name containing the list of power state phandles.
  --  

  --*
  -- * Obtain information about all supported states by a CPU.
  -- *
  -- * @param cpu CPU index.
  -- * @param states Where to store the list of supported states.
  -- *
  -- * @return Number of supported states.
  --  

  --*
  -- * Get power state structure.
  -- *
  -- * Function searches in all states assigned to the CPU and in disabled states.
  -- *
  -- * @param cpu CPU index.
  -- * @param state Power state.
  -- * @param substate_id Substate.
  -- *
  -- * @return Pointer to the power state structure or NULL if state is not found.
  --  

  --*
  -- * @brief Convert a pm_state enum value to its string representation.
  -- *
  -- * @param state Power state.
  -- *
  -- * @return A constant string representing the state.
  --  

  --*
  -- * @brief Parse a string and convert it to a pm_state enum value.
  -- *
  -- * @param name Input string (e.g., "suspend-to-ram").
  -- * @param out Pointer to store the parsed pm_state value.
  -- *
  -- * @return 0 on success, -EINVAL if the string is invalid or NULL.
  --  

  --*
  -- * @brief Check if a power management constraint matches any in a set of constraints.
  -- *
  -- * @param constraints Pointer to the power state constraints structure.
  -- * @param match The constraint to match against.
  -- *
  -- * @return true if the constraint matches, false otherwise.
  --  

  --*
  -- * @}
  --  

   function pm_state_cpu_get_all (cpu : sys_ustdint_h.uint8_t; states : System.Address) return sys_ustdint_h.uint8_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/pm/state.h:483
   with Import => True, 
        Convention => C, 
        External_Name => "pm_state_cpu_get_all";

   function pm_state_get
     (cpu : sys_ustdint_h.uint8_t;
      state : pm_state;
      substate_id : sys_ustdint_h.uint8_t) return access constant pm_state_info  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/pm/state.h:491
   with Import => True, 
        Convention => C, 
        External_Name => "pm_state_get";

   function pm_state_in_constraints (constraints : access constant pm_state_constraints; match : pm_state_constraint) return Extensions.bool  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/pm/state.h:502
   with Import => True, 
        Convention => C, 
        External_Name => "pm_state_in_constraints";

end zephyr_pm_state_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
