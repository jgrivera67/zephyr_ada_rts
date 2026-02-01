pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;
with Interfaces.C.Extensions;
limited with sys_utimespec_h;

package zephyr_sys_clock_h is

   --  unsupported macro: K_TICKS_FOREVER ((k_ticks_t)(-1))
   --  arg-macro: function K_TIMEOUT_EQ (a, b)
   --    return (a).ticks = (b).ticks;
   NSEC_PER_USEC : constant := 1000;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/clock.h:83

   NSEC_PER_MSEC : constant := 1000000;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/clock.h:86

   USEC_PER_MSEC : constant := 1000;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/clock.h:89

   MSEC_PER_SEC : constant := 1000;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/clock.h:92

   SEC_PER_MIN : constant := 60;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/clock.h:95

   SEC_PER_HOUR : constant := 3600;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/clock.h:98

   SEC_PER_DAY : constant := 86400;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/clock.h:101

   MIN_PER_HOUR : constant := 60;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/clock.h:104

   HOUR_PER_DAY : constant := 24;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/clock.h:107
   --  unsupported macro: USEC_PER_SEC ((USEC_PER_MSEC) * (MSEC_PER_SEC))
   --  unsupported macro: NSEC_PER_SEC ((NSEC_PER_USEC) * (USEC_PER_MSEC) * (MSEC_PER_SEC))
   --  unsupported macro: Z_TIMEOUT_NO_WAIT_INIT {0}
   --  unsupported macro: Z_TIMEOUT_NO_WAIT ((k_timeout_t)Z_TIMEOUT_NO_WAIT_INIT)
   --  arg-macro: procedure Z_TIMEOUT_TICKS_INIT (t)
   --    {.ticks := (t)}
   --  arg-macro: function Z_TIMEOUT_TICKS (t)
   --    return (k_timeout_t)Z_TIMEOUT_TICKS_INIT(t);
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
   --  arg-macro: function Z_IS_TIMEOUT_RELATIVE (timeout)
   --    return ((timeout).ticks) >= 0;
   --  unsupported macro: K_TICK_MIN ((k_ticks_t)1)
   --  unsupported macro: K_TICK_MAX ((k_ticks_t)(IS_ENABLED(CONFIG_TIMEOUT_64BIT) ? INT64_MAX : UINT32_MAX - 1))
   --  arg-macro: function SYS_CLOCK_HW_CYCLES_TO_NS_AVG (X, NCYCLES)
   --    return uint32_t)(k_cyc_to_ns_floor64(X) / NCYCLES;

   SYS_CLOCK_REALTIME : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/clock.h:409

   SYS_CLOCK_MONOTONIC : constant := 4;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/clock.h:417

   SYS_TIMER_ABSTIME : constant := 4;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/clock.h:425

  -- * Copyright (c) 2014-2015 Wind River Systems, Inc.
  -- * Copyright (c) 2025 Tenstorrent AI ULC
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  --*
  -- * @file
  -- * @brief System clock APIs
  -- *
  -- * Declare variables used by both system timer device driver and kernel
  -- * components that use timer functionality.
  -- *
  -- * APIs for getting, setting, and sleeping with respect to system clocks.
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

   subtype k_ticks_t is sys_ustdint_h.int64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/clock.h:46

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
      ticks : aliased k_ticks_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/clock.h:66
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/clock.h:67

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

  --* number of nanoseconds per microsecond  
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

  -- Test for relative timeout  
  -- Positive values are relative/delta timeouts and negative values are absolute
  -- * timeouts, except -1 which is reserved for K_TIMEOUT_FOREVER. 0 is K_NO_WAIT,
  -- * which is historically considered a relative timeout.
  -- * K_TIMEOUT_FOREVER is not considered a relative timeout and neither is it
  -- * considerd an absolute timeouts (so !Z_IS_TIMEOUT_RELATIVE() does not
  -- * necessarily mean it is an absolute timeout if ticks == -1);
  --  

  -- added tick needed to account for tick in progress  
  -- The minimum duration in ticks strictly greater than that of K_NO_WAIT  
  -- The maximum duration in ticks strictly and semantically "less than" K_FOREVER  
  --*
  -- * @brief Sum the ticks from two timeout values
  -- *
  -- * This routine determines the resulting tick value when adding two k_timeout_t
  -- * values together. If only one k_timeout_t value is an absolute timeout, the
  -- * result will be an absolute timeout. If both are relative timeouts, the
  -- * result will be a relative timeout. If the calculated tick value overflows,
  -- * underflows or if both values are absolute timeouts, it returns K_TICKS_FOREVER.
  -- *
  -- * @param t1 First k_timeout_t value
  -- * @param t2 Second k_timeout_t value
  -- *
  -- * @return Sum of the two timeout values in ticks, or val K_TICKS_FOREVER if incalculable
  --  

   function z_timeout_sum (t1 : k_timeout_t; t2 : k_timeout_t) return k_ticks_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/clock.h:189
   with Import => True, 
        Convention => C, 
        External_Name => "z_timeout_sum";

  -- Both absolute timeouts  
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

   function sys_clock_tick_get_32 return sys_ustdint_h.uint32_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/clock.h:263
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

   function sys_clock_tick_get return sys_ustdint_h.int64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/clock.h:272
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
      tick : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/clock.h:292
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/clock.h:293

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
  -- * @return Timepoint value corresponding to given timeout
  -- *
  -- * @see sys_timepoint_timeout()
  -- * @see sys_timepoint_expired()
  --  

   function sys_timepoint_calc (timeout : k_timeout_t) return k_timepoint_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/clock.h:311
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
  -- * @return Corresponding timeout value.
  -- *
  -- * @see sys_timepoint_calc()
  --  

   function sys_timepoint_timeout (timepoint : k_timepoint_t) return k_timeout_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/clock.h:326
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

   function sys_timepoint_cmp (a : k_timepoint_t; b : k_timepoint_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/clock.h:338
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

   function sys_timepoint_expired (timepoint : k_timepoint_t) return Extensions.bool  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/clock.h:388
   with Import => True, 
        Convention => C, 
        External_Name => "sys_timepoint_expired";

  --* @}  
  --*
  -- * @addtogroup clock_apis
  -- * @{
  --  

  --*
  -- * @brief The real-time clock (i.e. "wall clock")
  -- *
  -- * This clock is used to measure time since the epoch (1970-01-01 00:00:00 UTC).
  -- *
  -- * It is not a steady clock; i.e. it may be adjusted for a number of reasons from initialization
  -- * of a hardware real-time-clock, to network-time synchronization, to manual adjustment from the
  -- * application.
  --  

  --*
  -- * @brief The monotonic clock
  -- *
  -- * This steady clock is used to measure time since the system booted. Time from this clock is
  -- * always monotonically increasing.
  --  

  --*
  -- * @brief The flag used for specifying absolute timeouts
  -- *
  -- * This flag may be passed to @ref sys_clock_nanosleep to indicate the requested timeout is an
  -- * absolute time with respect to the specified clock.
  --  

  --* @cond INTERNAL_HIDDEN  
  -- forward declaration as workaround for time.h  
  -- Convert a POSIX clock (cast to int) to a sys_clock identifier  
   function sys_clock_from_clockid (clock_id : int) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/clock.h:432
   with Import => True, 
        Convention => C, 
        External_Name => "sys_clock_from_clockid";

  --* INTERNAL_HIDDEN @endcond  
  --*
  -- * @brief Get the offset @ref SYS_CLOCK_REALTIME with respect to @ref SYS_CLOCK_MONOTONIC
  -- *
  -- * The "wall clock" (i.e. @ref SYS_CLOCK_REALTIME) depends on a base time that is set by the
  -- * system. The base time may be updated for a number of reasons, such as initialization of a
  -- * hardware real-time-clock (RTC), network time protocol (NTP) synchronization, or manual
  -- * adjustment by the application.
  -- *
  -- * This function retrieves the current time offset, as a `timespec` object, for
  -- * @ref SYS_CLOCK_REALTIME, with respect to @ref SYS_CLOCK_MONOTONIC, and writes it to the
  -- * provided memory location pointed-to by @a tp.
  -- *
  -- * @note This function may assert if @a tp is NULL.
  -- *
  -- * @param tp Pointer to memory where time will be written.
  --  

  --*
  -- * @brief Get the current time from the specified clock
  -- *
  -- * @param clock_id The clock from which to query time.
  -- * @param tp Pointer to memory where time will be written.
  -- * @retval 0 on success.
  -- * @retval -EINVAL when an invalid @a clock_id is specified.
  --  

   function sys_clock_gettime (clock_id : int; tp : access sys_utimespec_h.timespec) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/clock.h:461
   with Import => True, 
        Convention => C, 
        External_Name => "sys_clock_gettime";

  --*
  -- * @brief Set the current time for the specified clock
  -- *
  -- * @param clock_id The clock for which the time should be set.
  -- * @param tp Pointer to memory specifying the desired time.
  -- * @retval 0 on success.
  -- * @retval -EINVAL when an invalid @a clock_id is specified or when @a tp contains nanoseconds
  -- * outside of the range `[0, 999999999]`.
  --  

  --*
  -- * @brief Sleep for the specified amount of time with respect to the specified clock.
  -- *
  -- * This function will cause the calling thread to sleep either
  -- * - until the absolute time specified by @a rqtp (if @a flags includes @ref SYS_TIMER_ABSTIME), or
  -- * - until the relative time specified by @a rqtp (if @a flags does not include
  -- *   @ref SYS_TIMER_ABSTIME).
  -- *
  -- * The accepted values for @a clock_id include
  -- * - @ref SYS_CLOCK_REALTIME
  -- * - @ref SYS_CLOCK_MONOTONIC
  -- *
  -- * If @a rmtp is not NULL, and the thread is awoken prior to the time specified by @a rqtp, then
  -- * any remaining time will be written to @a rmtp. If the thread has slept for at least the time
  -- * specified by @a rqtp, then @a rmtp will be set to zero.
  -- *
  -- * @param clock_id The clock to by which to sleep.
  -- * @param flags Flags to modify the behavior of the sleep operation.
  -- * @param rqtp Pointer to the requested time to sleep.
  -- * @param rmtp Pointer to memory into which to copy the remaining time, if any.
  -- *
  -- * @retval 0 on success.
  -- * @retval -EINVAL when an invalid @a clock_id, when @a rqtp contains nanoseconds outside of the
  -- *         range `[0, 999999999]`, or when @a rqtp contains a negative value.
  --  

  --*
  -- * @}
  --  

end zephyr_sys_clock_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
