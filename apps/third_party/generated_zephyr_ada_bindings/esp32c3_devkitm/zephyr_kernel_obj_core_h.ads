pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with zephyr_sys_slist_h;
with stddef_h;
with System;
with sys_ustdint_h;

package zephyr_kernel_obj_core_h is

   --  arg-macro: function K_OBJ_CORE (kobj)
   --    return and((kobj).obj_core);
   --  arg-macro: function K_OBJ_TYPE_ID_GEN (s)
   --    return (s(0) << 24) or (s(1) << 16) or (s(2) << 8) or (s(3));
   --  unsupported macro: K_OBJ_TYPE_CONDVAR_ID K_OBJ_TYPE_ID_GEN("COND")
   --  unsupported macro: K_OBJ_TYPE_CPU_ID K_OBJ_TYPE_ID_GEN("CPU_")
   --  unsupported macro: K_OBJ_TYPE_EVENT_ID K_OBJ_TYPE_ID_GEN("EVNT")
   --  unsupported macro: K_OBJ_TYPE_FIFO_ID K_OBJ_TYPE_ID_GEN("FIFO")
   --  unsupported macro: K_OBJ_TYPE_KERNEL_ID K_OBJ_TYPE_ID_GEN("KRNL")
   --  unsupported macro: K_OBJ_TYPE_LIFO_ID K_OBJ_TYPE_ID_GEN("LIFO")
   --  unsupported macro: K_OBJ_TYPE_MEM_BLOCK_ID K_OBJ_TYPE_ID_GEN("MBLK")
   --  unsupported macro: K_OBJ_TYPE_MBOX_ID K_OBJ_TYPE_ID_GEN("MBOX")
   --  unsupported macro: K_OBJ_TYPE_MEM_SLAB_ID K_OBJ_TYPE_ID_GEN("SLAB")
   --  unsupported macro: K_OBJ_TYPE_MSGQ_ID K_OBJ_TYPE_ID_GEN("MSGQ")
   --  unsupported macro: K_OBJ_TYPE_MUTEX_ID K_OBJ_TYPE_ID_GEN("MUTX")
   --  unsupported macro: K_OBJ_TYPE_PIPE_ID K_OBJ_TYPE_ID_GEN("PIPE")
   --  unsupported macro: K_OBJ_TYPE_SEM_ID K_OBJ_TYPE_ID_GEN("SEM4")
   --  unsupported macro: K_OBJ_TYPE_STACK_ID K_OBJ_TYPE_ID_GEN("STCK")
   --  unsupported macro: K_OBJ_TYPE_THREAD_ID K_OBJ_TYPE_ID_GEN("THRD")
   --  unsupported macro: K_OBJ_TYPE_TIMER_ID K_OBJ_TYPE_ID_GEN("TIMR")
   --  arg-macro: procedure K_OBJ_CORE_INIT (objp, type)
   --    do { } while (0)
   --  arg-macro: procedure K_OBJ_CORE_LINK (objp)
   --    do { } while (0)
  -- * Copyright (c) 2023, Intel Corporation
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  --*
  -- * @defgroup obj_core_apis Object Core APIs
  -- * @ingroup kernel_apis
  -- * @{
  --  

  --*
  -- * @brief Convert kernel object pointer into its object core pointer
  --  

  --*
  -- * @brief Generate new object type IDs based on a 4 letter string
  --  

  -- Known kernel object types  
  --* Condition variable object type  
  --* CPU object type  
  --* Event object type  
  --* FIFO object type  
  --* Kernel object type  
  --* LIFO object type  
  --* Memory block object type  
  --* Mailbox object type  
  --* Memory slab object type  
  --* Message queue object type  
  --* Mutex object type  
  --* Pipe object type  
  --* Semaphore object type  
  --* Stack object type  
  --* Thread object type  
  --* Timer object type  
  --*
  -- * @cond INTERNAL_HIDDEN
  --  

  --*
  -- * INTERNAL_HIDDEN @endcond
  --  

  --*
  -- * Tools may use this list as an entry point to identify all registered
  -- * object types and the object cores linked to them.
  --  

   z_obj_type_list : aliased zephyr_sys_slist_h.sys_slist_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/obj_core.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "z_obj_type_list";

  --* Object core statistics descriptor  
  --*< Internal representation stats buffer size  
   type k_obj_core;
   type k_obj_core_stats_desc is record
      raw_size : aliased stddef_h.size_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/obj_core.h:93
      query_size : aliased stddef_h.size_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/obj_core.h:94
      raw : access function (arg1 : access k_obj_core; arg2 : System.Address) return int;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/obj_core.h:97
      query : access function (arg1 : access k_obj_core; arg2 : System.Address) return int;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/obj_core.h:99
      reset : access function (arg1 : access k_obj_core) return int;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/obj_core.h:101
      disable : access function (arg1 : access k_obj_core) return int;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/obj_core.h:103
      enable : access function (arg1 : access k_obj_core) return int;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/obj_core.h:105
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/obj_core.h:92

  --*< Stats buffer size used for reporting  
  --* Function pointer to retrieve internal representation of stats  
  --* Function pointer to retrieve reported statistics  
  --* Function pointer to reset object's statistics  
  --* Function pointer to disable object's statistics gathering  
  --* Function pointer to enable object's statistics gathering  
  --* Object type structure  
  --*< Node within list of object types  
   type k_obj_type is record
      node : aliased zephyr_sys_slist_h.sys_snode_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/obj_core.h:110
      list : aliased zephyr_sys_slist_h.sys_slist_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/obj_core.h:111
      id : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/obj_core.h:112
      obj_core_offset : aliased stddef_h.size_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/obj_core.h:113
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/obj_core.h:109

  --*< List of objects of this object type  
  --*< Unique type ID  
  --*< Offset to obj_core field  
  --* Pointer to object core statistics descriptor  
  --* Object core structure  
  --*< Object node within object type's list  
   type k_obj_core is record
      node : aliased zephyr_sys_slist_h.sys_snode_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/obj_core.h:122
      c_type : access k_obj_type;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/obj_core.h:123
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/obj_core.h:121

  --*< Object type to which object belongs  
  --*< Pointer to kernel object's stats  
  --*
  -- * @brief Initialize a specific object type
  -- *
  -- * Initializes a specific object type and links it into the object core
  -- * framework.
  -- *
  -- * @param type Pointer to the object type to initialize
  -- * @param id A means to identify the object type
  -- * @param off Offset of object core within the structure
  -- *
  -- * @retval Pointer to initialized object type
  --  

   function z_obj_type_init
     (c_type : access k_obj_type;
      id : sys_ustdint_h.uint32_t;
      off : stddef_h.size_t) return access k_obj_type  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/obj_core.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "z_obj_type_init";

  --*
  -- * @brief Find a specific object type by ID
  -- *
  -- * Given an object type ID, this function searches for the object type that
  -- * is associated with the specified type ID @a type_id.
  -- *
  -- * @param type_id  Type ID associated with object type
  -- *
  -- * @retval NULL if object type not found
  -- * @retval Pointer to object type if found
  --  

   function k_obj_type_find (type_id : sys_ustdint_h.uint32_t) return access k_obj_type  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/obj_core.h:155
   with Import => True, 
        Convention => C, 
        External_Name => "k_obj_type_find";

  --*
  -- * @brief Walk the object type's list of object cores
  -- *
  -- * This function takes a global spinlock and walks the object type's list
  -- * of object cores and invokes the callback function on each element while
  -- * holding that lock. Although this will ensure that the list is not modified,
  -- * one can expect a significant penalty in terms of performance and latency.
  -- *
  -- * The callback function shall either return non-zero to stop further walking,
  -- * or it shall return 0 to continue walking.
  -- *
  -- * @param type  Pointer to the object type
  -- * @param func  Callback to invoke on each object core of the object type
  -- * @param data  Custom data passed to the callback
  -- *
  -- * @retval non-zero if walk is terminated by the callback; otherwise 0
  --  

   function k_obj_type_walk_locked
     (c_type : access k_obj_type;
      func : access function (arg1 : access k_obj_core; arg2 : System.Address) return int;
      data : System.Address) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/obj_core.h:174
   with Import => True, 
        Convention => C, 
        External_Name => "k_obj_type_walk_locked";

  --*
  -- * @brief Walk the object type's list of object cores
  -- *
  -- * This function is similar to k_obj_type_walk_locked() except that it walks
  -- * the list without obtaining the global spinlock. No synchronization is
  -- * provided here. Mutation of the list of objects while this function is in
  -- * progress must be prevented at the application layer, otherwise
  -- * undefined/unreliable behavior, corruption and/or crashes may result.
  -- *
  -- * The callback function shall either return non-zero to stop further walking,
  -- * or it shall return 0 to continue walking.
  -- *
  -- * @param type  Pointer to the object type
  -- * @param func  Callback to invoke on each object core of the object type
  -- * @param data  Custom data passed to the callback
  -- *
  -- * @retval non-zero if walk is terminated by the callback; otherwise 0
  --  

   function k_obj_type_walk_unlocked
     (c_type : access k_obj_type;
      func : access function (arg1 : access k_obj_core; arg2 : System.Address) return int;
      data : System.Address) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/obj_core.h:196
   with Import => True, 
        Convention => C, 
        External_Name => "k_obj_type_walk_unlocked";

  --*
  -- * @brief Initialize the core of the kernel object
  -- *
  -- * Initializing the kernel object core associates it with the specified
  -- * kernel object type.
  -- *
  -- * @param obj_core Pointer to the kernel object to initialize
  -- * @param type Pointer to the kernel object type
  --  

   procedure k_obj_core_init (obj_core : access k_obj_core; c_type : access k_obj_type)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/obj_core.h:209
   with Import => True, 
        Convention => C, 
        External_Name => "k_obj_core_init";

  --*
  -- * @brief Link the kernel object to the kernel object type list
  -- *
  -- * A kernel object can be optionally linked into the kernel object type's
  -- * list of objects. A kernel object must have been initialized before it
  -- * can be linked. Linked kernel objects can be traversed and have information
  -- * extracted from them by system tools.
  -- *
  -- * @param obj_core Pointer to the kernel object
  --  

   procedure k_obj_core_link (obj_core : access k_obj_core)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/obj_core.h:221
   with Import => True, 
        Convention => C, 
        External_Name => "k_obj_core_link";

  --*
  -- * @brief Automatically link the kernel object after initializing it
  -- *
  -- * A useful wrapper to both initialize the core of the kernel object and
  -- * automatically link it into the kernel object type's list of objects.
  -- *
  -- * @param obj_core Pointer to the kernel object to initialize
  -- * @param type Pointer to the kernel object type
  --  

   procedure k_obj_core_init_and_link (obj_core : access k_obj_core; c_type : access k_obj_type)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/obj_core.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "k_obj_core_init_and_link";

  --*
  -- * @brief Unlink the kernel object from the kernel object type list
  -- *
  -- * Kernel objects can be unlinked from their respective kernel object type
  -- * lists. If on a list, it must be done at the end of the kernel object's life
  -- * cycle.
  -- *
  -- * @param obj_core Pointer to the kernel object
  --  

   procedure k_obj_core_unlink (obj_core : access k_obj_core)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/obj_core.h:244
   with Import => True, 
        Convention => C, 
        External_Name => "k_obj_core_unlink";

  --* @}  
  --*
  -- * @defgroup obj_core_stats_apis Object Core Statistics APIs
  -- * @ingroup kernel_apis
  -- * @{
  --  

  --*
  -- * @brief Initialize the object type's stats descriptor
  -- *
  -- * This routine initializes the object type's stats descriptor.
  -- *
  -- * @param type Pointer to the object type
  -- * @param stats_desc Pointer to the object core statistics descriptor
  --  

  --*
  -- * @brief Initialize the object core for statistics
  -- *
  -- * This routine initializes the object core to operate within the object core
  -- * statistics framework.
  -- *
  -- * @param obj_core Pointer to the object core
  -- * @param stats Pointer to the object's raw statistics
  --  

  --*
  -- * @brief Register kernel object for gathering statistics
  -- *
  -- * Before a kernel object can gather statistics, it must be registered to do
  -- * so. Registering will also automatically enable the kernel object to gather
  -- * its statistics.
  -- *
  -- * @param obj_core Pointer to kernel object core
  -- * @param stats Pointer to raw kernel statistics
  -- * @param stats_len Size of raw kernel statistics buffer
  -- *
  -- * @retval 0 on success
  -- * @retval -errno on failure
  --  

   function k_obj_core_stats_register
     (obj_core : access k_obj_core;
      stats : System.Address;
      stats_len : stddef_h.size_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/obj_core.h:299
   with Import => True, 
        Convention => C, 
        External_Name => "k_obj_core_stats_register";

  --*
  -- * @brief Deregister kernel object from gathering statistics
  -- *
  -- * Deregistering a kernel object core from gathering statistics prevents it
  -- * from gathering any more statistics. It is expected to be invoked at the end
  -- * of a kernel object's life cycle.
  -- *
  -- * @param obj_core Pointer to kernel object core
  -- *
  -- * @retval 0 on success
  -- * @retval -errno on failure
  --  

   function k_obj_core_stats_deregister (obj_core : access k_obj_core) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/obj_core.h:314
   with Import => True, 
        Convention => C, 
        External_Name => "k_obj_core_stats_deregister";

  --*
  -- * @brief Retrieve the raw statistics associated with the kernel object
  -- *
  -- * This function copies the raw statistics associated with the kernel object
  -- * core specified by @a obj_core into the buffer @a stats. Note that the size
  -- * of the buffer (@a stats_len) must match the size specified by the kernel
  -- * object type's statistics descriptor.
  -- *
  -- * @param obj_core Pointer to kernel object core
  -- * @param stats Pointer to memory buffer into which to copy raw stats
  -- * @param stats_len Length of the memory buffer
  -- *
  -- * @retval 0 on success
  -- * @retval -errno on failure
  --  

   function k_obj_core_stats_raw
     (obj_core : access k_obj_core;
      stats : System.Address;
      stats_len : stddef_h.size_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/obj_core.h:331
   with Import => True, 
        Convention => C, 
        External_Name => "k_obj_core_stats_raw";

  --*
  -- * @brief Retrieve the statistics associated with the kernel object
  -- *
  -- * This function copies the statistics associated with the kernel object core
  -- * specified by @a obj_core into the buffer @a stats. Unlike the raw statistics
  -- * this may report calculated values such as averages.  Note that the size of
  -- * the buffer (@a stats_len) must match the size specified by the kernel object
  -- * type's statistics descriptor.
  -- *
  -- * @param obj_core Pointer to kernel object core
  -- * @param stats Pointer to memory buffer into which to copy the queried stats
  -- * @param stats_len Length of the memory buffer
  -- *
  -- * @retval 0 on success
  -- * @retval -errno on failure
  --  

   function k_obj_core_stats_query
     (obj_core : access k_obj_core;
      stats : System.Address;
      stats_len : stddef_h.size_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/obj_core.h:350
   with Import => True, 
        Convention => C, 
        External_Name => "k_obj_core_stats_query";

  --*
  -- * @brief Reset the stats associated with the kernel object
  -- *
  -- * This function resets the statistics associated with the kernel object core
  -- * specified by @a obj_core.
  -- *
  -- * @param obj_core Pointer to kernel object core
  -- *
  -- * @retval 0 on success
  -- * @retval -errno on failure
  --  

   function k_obj_core_stats_reset (obj_core : access k_obj_core) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/obj_core.h:364
   with Import => True, 
        Convention => C, 
        External_Name => "k_obj_core_stats_reset";

  --*
  -- * @brief Stop gathering the stats associated with the kernel object
  -- *
  -- * This function temporarily stops the gathering of statistics associated with
  -- * the kernel object core specified by @a obj_core. The gathering of statistics
  -- * can be resumed by invoking :c:func :`k_obj_core_stats_enable`.
  -- *
  -- * @param obj_core Pointer to kernel object core
  -- *
  -- * @retval 0 on success
  -- * @retval -errno on failure
  --  

   function k_obj_core_stats_disable (obj_core : access k_obj_core) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/obj_core.h:378
   with Import => True, 
        Convention => C, 
        External_Name => "k_obj_core_stats_disable";

  --*
  -- * @brief Reset the stats associated with the kernel object
  -- *
  -- * This function resumes the gathering of statistics associated with the kernel
  -- * object core specified by @a obj_core.
  -- *
  -- * @param obj_core Pointer to kernel object core
  -- *
  -- * @retval 0 on success
  -- * @retval -errno on failure
  --  

   function k_obj_core_stats_enable (obj_core : access k_obj_core) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/obj_core.h:391
   with Import => True, 
        Convention => C, 
        External_Name => "k_obj_core_stats_enable";

  --* @}  
end zephyr_kernel_obj_core_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
