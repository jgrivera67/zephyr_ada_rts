pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;
with Interfaces.C.Extensions;

package zephyr_sys_clock_h is

   --  unsupported macro: K_TICKS_FOREVER ((k_ticks_t) -1)
   --  arg-macro: function K_TIMEOUT_EQ (a, b)
   --    return (a).ticks = (b).ticks;
   NSEC_PER_USEC : constant := 1000;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys_clock.h:83

   NSEC_PER_MSEC : constant := 1000000;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys_clock.h:86

   USEC_PER_MSEC : constant := 1000;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys_clock.h:89

   MSEC_PER_SEC : constant := 1000;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys_clock.h:92

   SEC_PER_MIN : constant := 60;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys_clock.h:95

   SEC_PER_HOUR : constant := 3600;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys_clock.h:98

   SEC_PER_DAY : constant := 86400;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys_clock.h:101

   MIN_PER_HOUR : constant := 60;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys_clock.h:104

   HOUR_PER_DAY : constant := 24;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys_clock.h:107
   --  unsupported macro: USEC_PER_SEC ((USEC_PER_MSEC) * (MSEC_PER_SEC))
   --  unsupported macro: NSEC_PER_SEC ((NSEC_PER_USEC) * (USEC_PER_MSEC) * (MSEC_PER_SEC))
   --  unsupported macro: Z_TIMEOUT_NO_WAIT_INIT {0}
   --  unsupported macro: Z_TIMEOUT_NO_WAIT ((k_timeout_t) Z_TIMEOUT_NO_WAIT_INIT)
   --  arg-macro: procedure Z_TIMEOUT_TICKS_INIT (t)
   --    { .ticks := (t) }
   --  arg-macro: function Z_TIMEOUT_TICKS (t)
   --    return (k_timeout_t) Z_TIMEOUT_TICKS_INIT(t);
   --  unsupported macro: Z_FOREVER Z_TIMEOUT_TICKS(K_TICKS_FOREVER)
   --  arg-macro: procedure Z_TIMEOUT_MS (t)
   --    Z_TIMEOUT_TICKS((k_ticks_t)k_ms_to_ticks_ceil64(MAX(t, 0)))
   --  arg-macro: procedure Z_TIMEOUT_US (t)
   --    Z_TIMEOUT_TICKS((k_ticks_t)k_us_to_ticks_ceil64(MAX(t, 0)))
   --  arg-macro: procedure Z_TIMEOUT_NS (t)
   --    Z_TIMEOUT_TICKS((k_ticks_t)k_ns_to_ticks_ceil64(MAX(t, 0)))
   --  arg-macro: procedure Z_TIMEOUT_CYC (t)
   --    Z_TIMEOUT_TICKS((k_ticks_t)k_cyc_to_ticks_ceil64(MAX(t, 0)))
   --  arg-macro: function Z_TIMEOUT_MS_TICKS (t)
   --    return (k_ticks_t)k_ms_to_ticks_ceil64(MAX(t, 0));
   --  arg-macro: function Z_TICK_ABS (t)
   --    return K_TICKS_FOREVER - 1 - (t);
   --  arg-macro: function SYS_CLOCK_HW_CYCLES_TO_NS_AVG (X, NCYCLES)
   --    return uint32_t)(k_cyc_to_ns_floor64(X) / NCYCLES;

  -- * Copyright (c) 2014-2015 Wind River Systems, Inc.
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  --*
  -- * @file
  -- * @brief Variables needed for system clock
  -- *
  -- *
  -- * Declare variables used by both system timer device driver and kernel
  -- * components that use timer functionality.
  --  

  --*
  -- * @addtogroup clock_apis
  -- * @{
  --  

  --*
  -- * @brief Tick precision used in timeout APIs
  -- *
  -- * This type defines the word size of the timeout values used in
  -- * k_timeout_t objects, and thus defines an upper bound on maximum
  -- * timeout length (or equivalently minimum tick duration).  Note that
  -- * this does not affect the size of the system uptime counter, which
  -- * is always a 64 bit count of ticks.
  --  

   subtype k_ticks_t is sys_ustdint_h.int64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys_clock.h:46

  --*
  -- * @brief Kernel timeout type
  -- *
  -- * Timeout arguments presented to kernel APIs are stored in this
  -- * opaque type, which is capable of representing times in various
  -- * formats and units.  It should be constructed from application data
  -- * using one of the macros defined for this purpose (e.g. `K_MSEC()`,
  -- * `K_TIMEOUT_ABS_TICKS()`, etc...), or be one of the two constants
  -- * K_NO_WAIT or K_FOREVER.  Applications should not inspect the
  -- * internal data once constructed.  Timeout values may be compared for
  -- * equality with the `K_TIMEOUT_EQ()` macro.
  --  

   type k_timeout_t is record
      ticks : aliased k_ticks_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys_clock.h:66
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys_clock.h:67

  --*
  -- * @brief Compare timeouts for equality
  -- *
  -- * The k_timeout_t object is an opaque struct that should not be
  -- * inspected by application code.  This macro exists so that users can
  -- * test timeout objects for equality with known constants
  -- * (e.g. K_NO_WAIT and K_FOREVER) when implementing their own APIs in
  -- * terms of Zephyr timeout constants.
  -- *
  -- * @return True if the timeout objects are identical
  --  

  --* number of nanoseconds per micorsecond  
  --* number of nanoseconds per millisecond  
  --* number of microseconds per millisecond  
  --* number of milliseconds per second  
  --* number of seconds per minute  
  --* number of seconds per hour  
  --* number of seconds per day  
  --* number of minutes per hour  
  --* number of hours per day  
  --* number of microseconds per second  
  --* number of nanoseconds per second  
  --* @}  
  --* @cond INTERNAL_HIDDEN  
  -- Converts between absolute timeout expiration values (packed into
  -- * the negative space below K_TICKS_FOREVER) and (non-negative) delta
  -- * timeout values.  If the result of Z_TICK_ABS(t) is >= 0, then the
  -- * value was an absolute timeout with the returned expiration time.
  -- * Note that this macro is bidirectional: Z_TICK_ABS(Z_TICK_ABS(t)) ==
  -- * t for all inputs, and that the representation of K_TICKS_FOREVER is
  -- * the same value in both spaces!  Clever, huh?
  --  

  -- added tick needed to account for tick in progress  
  --* @endcond  
  -- kernel clocks  
  -- * We default to using 64-bit intermediates in timescale conversions,
  -- * but if the HW timer cycles/sec, ticks/sec and ms/sec are all known
  -- * to be nicely related, then we can cheat with 32 bits instead.
  --  

  --*
  -- * @addtogroup clock_apis
  -- * @{
  --  

  --*
  -- * SYS_CLOCK_HW_CYCLES_TO_NS_AVG converts CPU clock cycles to nanoseconds
  -- * and calculates the average cycle time
  --  

  --*
  -- *
  -- * @brief Return the lower part of the current system tick count
  -- *
  -- * @return the current system tick count
  -- *
  --  

   function sys_clock_tick_get_32 return sys_ustdint_h.uint32_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys_clock.h:199
   with Import => True, 
        Convention => C, 
        External_Name => "sys_clock_tick_get_32";

  --*
  -- *
  -- * @brief Return the current system tick count
  -- *
  -- * @return the current system tick count
  -- *
  --  

   function sys_clock_tick_get return sys_ustdint_h.int64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys_clock.h:208
   with Import => True, 
        Convention => C, 
        External_Name => "sys_clock_tick_get";

  --*
  -- * @brief Kernel timepoint type
  -- *
  -- * Absolute timepoints are stored in this opaque type.
  -- * It is best not to inspect its content directly.
  -- *
  -- * @see sys_timepoint_calc()
  -- * @see sys_timepoint_timeout()
  -- * @see sys_timepoint_expired()
  --  

   type k_timepoint_t is record
      tick : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys_clock.h:227
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys_clock.h:227

  --*
  -- * @brief Calculate a timepoint value
  -- *
  -- * Returns a timepoint corresponding to the expiration (relative to an
  -- * unlocked "now"!) of a timeout object.  When used correctly, this should
  -- * be called once, synchronously with the user passing a new timeout value.
  -- * It should not be used iteratively to adjust a timeout (see
  -- * `sys_timepoint_timeout()` for that purpose).
  -- *
  -- * @param timeout Timeout value relative to current time (may also be
  -- *                `K_FOREVER` or `K_NO_WAIT`).
  -- * @retval Timepoint value corresponding to given timeout
  -- *
  -- * @see sys_timepoint_timeout()
  -- * @see sys_timepoint_expired()
  --  

   function sys_timepoint_calc (timeout : k_timeout_t) return k_timepoint_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys_clock.h:245
   with Import => True, 
        Convention => C, 
        External_Name => "sys_timepoint_calc";

  --*
  -- * @brief Remaining time to given timepoint
  -- *
  -- * Returns the timeout interval between current time and provided timepoint.
  -- * If the timepoint is now in the past or if it was created with `K_NO_WAIT`
  -- * then `K_NO_WAIT` is returned. If it was created with `K_FOREVER` then
  -- * `K_FOREVER` is returned.
  -- *
  -- * @param timepoint Timepoint for which a timeout value is wanted.
  -- * @retval Corresponding timeout value.
  -- *
  -- * @see sys_timepoint_calc()
  --  

   function sys_timepoint_timeout (timepoint : k_timepoint_t) return k_timeout_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys_clock.h:260
   with Import => True, 
        Convention => C, 
        External_Name => "sys_timepoint_timeout";

  --*
  -- * @brief Compare two timepoint values.
  -- *
  -- * This function is used to compare two timepoint values.
  -- *
  -- * @param a Timepoint to compare
  -- * @param b Timepoint to compare against.
  -- * @return zero if both timepoints are the same. Negative value if timepoint @a a is before
  -- * timepoint @a b, positive otherwise.
  --  

   function sys_timepoint_cmp (a : k_timepoint_t; b : k_timepoint_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys_clock.h:272
   with Import => True, 
        Convention => C, 
        External_Name => "sys_timepoint_cmp";

  -- * When timers are configured out, timepoints can't relate to anything.
  -- * The best we can do is to preserve whether or not they are derived from
  -- * K_NO_WAIT. Anything else will translate back to K_FOREVER.
  --  

  --*
  -- * @brief Indicates if timepoint is expired
  -- *
  -- * @param timepoint Timepoint to evaluate
  -- * @retval true if the timepoint is in the past, false otherwise
  -- *
  -- * @see sys_timepoint_calc()
  --  

   function sys_timepoint_expired (timepoint : k_timepoint_t) return Extensions.bool  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys_clock.h:320
   with Import => True, 
        Convention => C, 
        External_Name => "sys_timepoint_expired";

  --* @}  
end zephyr_sys_clock_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
