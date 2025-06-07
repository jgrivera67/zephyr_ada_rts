pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;
with System;
with stddef_h;

package zephyr_sys_dlist_h is

   --  arg-macro: procedure SYS_DLIST_FOR_EACH_NODE (__dl, __dn)
   --    for (__dn := sys_dlist_peek_head(__dl); __dn /= NULL; __dn := sys_dlist_peek_next(__dl, __dn))
   --  arg-macro: procedure SYS_DLIST_ITERATE_FROM_NODE (__dl, __dn)
   --    for (__dn := __dn ? sys_dlist_peek_next_no_check(__dl, __dn) : sys_dlist_peek_head(__dl); __dn /= NULL; __dn := sys_dlist_peek_next(__dl, __dn))
   --  arg-macro: procedure SYS_DLIST_FOR_EACH_NODE_SAFE (__dl, __dn, __dns)
   --    for ((__dn) := sys_dlist_peek_head(__dl), (__dns) := sys_dlist_peek_next((__dl), (__dn)); (__dn) /= NULL; (__dn) := (__dns), (__dns) := sys_dlist_peek_next(__dl, __dn))
   --  arg-macro: function SYS_DLIST_CONTAINER (__dn, __cn, __n)
   --    return ((__dn) /= NULL) ? CONTAINER_OF(__dn, __typeof__(*(__cn)), __n) : NULL;
   --  arg-macro: procedure SYS_DLIST_PEEK_HEAD_CONTAINER (__dl, __cn, __n)
   --    SYS_DLIST_CONTAINER(sys_dlist_peek_head(__dl), __cn, __n)
   --  arg-macro: function SYS_DLIST_PEEK_NEXT_CONTAINER (__dl, __cn, __n)
   --    return ((__cn) /= NULL) ? SYS_DLIST_CONTAINER(sys_dlist_peek_next((__dl), and((__cn).__n)), __cn, __n) : NULL;
   --  arg-macro: procedure SYS_DLIST_FOR_EACH_CONTAINER (__dl, __cn, __n)
   --    for ((__cn) := SYS_DLIST_PEEK_HEAD_CONTAINER(__dl, __cn, __n); (__cn) /= NULL; (__cn) := SYS_DLIST_PEEK_NEXT_CONTAINER(__dl, __cn, __n))
   --  arg-macro: procedure SYS_DLIST_FOR_EACH_CONTAINER_SAFE (__dl, __cn, __cns, __n)
   --    for ((__cn) := SYS_DLIST_PEEK_HEAD_CONTAINER(__dl, __cn, __n), (__cns) := SYS_DLIST_PEEK_NEXT_CONTAINER(__dl, __cn, __n); (__cn) /= NULL; (__cn) := (__cns), (__cns) := SYS_DLIST_PEEK_NEXT_CONTAINER(__dl, __cn, __n))
   --  arg-macro: procedure SYS_DLIST_STATIC_INIT (ptr_to_list)
   --    { {(ptr_to_list)}, {(ptr_to_list)} }
  -- * Copyright (c) 2013-2015 Wind River Systems, Inc.
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  --*
  -- * @file
  -- * @defgroup doubly-linked-list_apis Doubly-linked list
  -- * @ingroup datastructure_apis
  -- *
  -- * @brief Doubly-linked list implementation
  -- *
  -- * Doubly-linked list implementation using inline macros/functions.
  -- * This API is not thread safe, and thus if a list is used across threads,
  -- * calls to functions must be protected with synchronization primitives.
  -- *
  -- * The lists are expected to be initialized such that both the head and tail
  -- * pointers point to the list itself.  Initializing the lists in such a fashion
  -- * simplifies the adding and removing of nodes to/from the list.
  -- *
  -- * @{
  --  

  -- ptr to head of list (sys_dlist_t)  
  -- ptr to next node    (sys_dnode_t)  
  -- ptr to tail of list (sys_dlist_t)  
   type u_dnode;
   type anon_union1736 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            head : access u_dnode;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/dlist.h:38
         when others =>
            next : access u_dnode;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/dlist.h:39
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type anon_union1738 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            tail : access u_dnode;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/dlist.h:42
         when others =>
            prev : access u_dnode;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/dlist.h:43
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type u_dnode is record
      anon4003 : aliased anon_union1736;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/dlist.h:40
      anon4007 : aliased anon_union1738;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/dlist.h:44
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/dlist.h:36

  -- ptr to previous node (sys_dnode_t)  
  --*
  -- * @brief Doubly-linked list structure.
  --  

   subtype sys_dlist_t is u_dnode;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/dlist.h:50

  --*
  -- * @brief Doubly-linked list node structure.
  --  

   subtype sys_dnode_t is u_dnode;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/dlist.h:54

  --*
  -- * @brief Provide the primitive to iterate on a list
  -- * Note: the loop is unsafe and thus __dn should not be removed
  -- *
  -- * User _MUST_ add the loop statement curly braces enclosing its own code:
  -- *
  -- *     SYS_DLIST_FOR_EACH_NODE(l, n) {
  -- *         <user code>
  -- *     }
  -- *
  -- * This and other SYS_DLIST_*() macros are not thread safe.
  -- *
  -- * @param __dl A pointer on a sys_dlist_t to iterate on
  -- * @param __dn A sys_dnode_t pointer to peek each node of the list
  --  

  --*
  -- * @brief Provide the primitive to iterate on a list, from a node in the list
  -- * Note: the loop is unsafe and thus __dn should not be removed
  -- *
  -- * User _MUST_ add the loop statement curly braces enclosing its own code:
  -- *
  -- *     SYS_DLIST_ITERATE_FROM_NODE(l, n) {
  -- *         <user code>
  -- *     }
  -- *
  -- * Like SYS_DLIST_FOR_EACH_NODE(), but __dn already contains a node in the list
  -- * where to start searching for the next entry from. If NULL, it starts from
  -- * the head.
  -- *
  -- * This and other SYS_DLIST_*() macros are not thread safe.
  -- *
  -- * @param __dl A pointer on a sys_dlist_t to iterate on
  -- * @param __dn A sys_dnode_t pointer to peek each node of the list;
  -- *             it contains the starting node, or NULL to start from the head
  --  

  --*
  -- * @brief Provide the primitive to safely iterate on a list
  -- * Note: __dn can be removed, it will not break the loop.
  -- *
  -- * User _MUST_ add the loop statement curly braces enclosing its own code:
  -- *
  -- *     SYS_DLIST_FOR_EACH_NODE_SAFE(l, n, s) {
  -- *         <user code>
  -- *     }
  -- *
  -- * This and other SYS_DLIST_*() macros are not thread safe.
  -- *
  -- * @param __dl A pointer on a sys_dlist_t to iterate on
  -- * @param __dn A sys_dnode_t pointer to peek each node of the list
  -- * @param __dns A sys_dnode_t pointer for the loop to run safely
  --  

  --*
  -- * @brief Provide the primitive to resolve the container of a list node
  -- * Note: it is safe to use with NULL pointer nodes
  -- *
  -- * @param __dn A pointer on a sys_dnode_t to get its container
  -- * @param __cn Container struct type pointer
  -- * @param __n The field name of sys_dnode_t within the container struct
  --  

  --*
  -- * @brief Provide the primitive to peek container of the list head
  -- *
  -- * @param __dl A pointer on a sys_dlist_t to peek
  -- * @param __cn Container struct type pointer
  -- * @param __n The field name of sys_dnode_t within the container struct
  --  

  --*
  -- * @brief Provide the primitive to peek the next container
  -- *
  -- * @param __dl A pointer on a sys_dlist_t to peek
  -- * @param __cn Container struct type pointer
  -- * @param __n The field name of sys_dnode_t within the container struct
  --  

  --*
  -- * @brief Provide the primitive to iterate on a list under a container
  -- * Note: the loop is unsafe and thus __cn should not be detached
  -- *
  -- * User _MUST_ add the loop statement curly braces enclosing its own code:
  -- *
  -- *     SYS_DLIST_FOR_EACH_CONTAINER(l, c, n) {
  -- *         <user code>
  -- *     }
  -- *
  -- * @param __dl A pointer on a sys_dlist_t to iterate on
  -- * @param __cn A container struct type pointer to peek each entry of the list
  -- * @param __n The field name of sys_dnode_t within the container struct
  --  

  --*
  -- * @brief Provide the primitive to safely iterate on a list under a container
  -- * Note: __cn can be detached, it will not break the loop.
  -- *
  -- * User _MUST_ add the loop statement curly braces enclosing its own code:
  -- *
  -- *     SYS_DLIST_FOR_EACH_CONTAINER_SAFE(l, c, cn, n) {
  -- *         <user code>
  -- *     }
  -- *
  -- * @param __dl A pointer on a sys_dlist_t to iterate on
  -- * @param __cn A container struct type pointer to peek each entry of the list
  -- * @param __cns A container struct type pointer for the loop to run safely
  -- * @param __n The field name of sys_dnode_t within the container struct
  --  

  --*
  -- * @brief initialize list to its empty state
  -- *
  -- * @param list the doubly-linked list
  --  

   procedure sys_dlist_init (list : access sys_dlist_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/dlist.h:202
   with Import => True, 
        Convention => C, 
        External_Name => "sys_dlist_init";

  --*
  -- * @brief Static initializer for a doubly-linked list
  --  

  --*
  -- * @brief initialize node to its state when not in a list
  -- *
  -- * @param node the node
  --  

   procedure sys_dnode_init (node : access sys_dnode_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/dlist.h:219
   with Import => True, 
        Convention => C, 
        External_Name => "sys_dnode_init";

  --*
  -- * @brief check if a node is a member of any list
  -- *
  -- * @param node the node
  -- *
  -- * @return true if node is linked into a list, false if it is not
  --  

   function sys_dnode_is_linked (node : access constant sys_dnode_t) return Extensions.bool  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/dlist.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "sys_dnode_is_linked";

  --*
  -- * @brief check if a node is the list's head
  -- *
  -- * @param list the doubly-linked list to operate on
  -- * @param node the node to check
  -- *
  -- * @return true if node is the head, false otherwise
  --  

   function sys_dlist_is_head (list : access constant sys_dlist_t; node : access constant sys_dnode_t) return Extensions.bool  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/dlist.h:247
   with Import => True, 
        Convention => C, 
        External_Name => "sys_dlist_is_head";

  --*
  -- * @brief check if a node is the list's tail
  -- *
  -- * @param list the doubly-linked list to operate on
  -- * @param node the node to check
  -- *
  -- * @return true if node is the tail, false otherwise
  --  

   function sys_dlist_is_tail (list : access constant sys_dlist_t; node : access constant sys_dnode_t) return Extensions.bool  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/dlist.h:261
   with Import => True, 
        Convention => C, 
        External_Name => "sys_dlist_is_tail";

  --*
  -- * @brief check if the list is empty
  -- *
  -- * @param list the doubly-linked list to operate on
  -- *
  -- * @return true if empty, false otherwise
  --  

   function sys_dlist_is_empty (list : access constant sys_dlist_t) return Extensions.bool  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/dlist.h:274
   with Import => True, 
        Convention => C, 
        External_Name => "sys_dlist_is_empty";

  --*
  -- * @brief check if more than one node present
  -- *
  -- * This and other sys_dlist_*() functions are not thread safe.
  -- *
  -- * @param list the doubly-linked list to operate on
  -- *
  -- * @return true if multiple nodes, false otherwise
  --  

   function sys_dlist_has_multiple_nodes (list : access constant sys_dlist_t) return Extensions.bool  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/dlist.h:289
   with Import => True, 
        Convention => C, 
        External_Name => "sys_dlist_has_multiple_nodes";

  --*
  -- * @brief get a reference to the head item in the list
  -- *
  -- * @param list the doubly-linked list to operate on
  -- *
  -- * @return a pointer to the head element, NULL if list is empty
  --  

   function sys_dlist_peek_head (list : access constant sys_dlist_t) return access sys_dnode_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/dlist.h:302
   with Import => True, 
        Convention => C, 
        External_Name => "sys_dlist_peek_head";

  --*
  -- * @brief get a reference to the head item in the list
  -- *
  -- * The list must be known to be non-empty.
  -- *
  -- * @param list the doubly-linked list to operate on
  -- *
  -- * @return a pointer to the head element
  --  

   function sys_dlist_peek_head_not_empty (list : access constant sys_dlist_t) return access sys_dnode_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/dlist.h:317
   with Import => True, 
        Convention => C, 
        External_Name => "sys_dlist_peek_head_not_empty";

  --*
  -- * @brief get a reference to the next item in the list, node is not NULL
  -- *
  -- * Faster than sys_dlist_peek_next() if node is known not to be NULL.
  -- *
  -- * @param list the doubly-linked list to operate on
  -- * @param node the node from which to get the next element in the list
  -- *
  -- * @return a pointer to the next element from a node, NULL if node is the tail
  --  

   function sys_dlist_peek_next_no_check (list : access constant sys_dlist_t; node : access constant sys_dnode_t) return access sys_dnode_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/dlist.h:333
   with Import => True, 
        Convention => C, 
        External_Name => "sys_dlist_peek_next_no_check";

  --*
  -- * @brief get a reference to the next item in the list
  -- *
  -- * @param list the doubly-linked list to operate on
  -- * @param node the node from which to get the next element in the list
  -- *
  -- * @return a pointer to the next element from a node, NULL if node is the tail
  -- * or NULL (when node comes from reading the head of an empty list).
  --  

   function sys_dlist_peek_next (list : access constant sys_dlist_t; node : access constant sys_dnode_t) return access sys_dnode_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/dlist.h:349
   with Import => True, 
        Convention => C, 
        External_Name => "sys_dlist_peek_next";

  --*
  -- * @brief get a reference to the previous item in the list, node is not NULL
  -- *
  -- * Faster than sys_dlist_peek_prev() if node is known not to be NULL.
  -- *
  -- * @param list the doubly-linked list to operate on
  -- * @param node the node from which to get the previous element in the list
  -- *
  -- * @return a pointer to the previous element from a node, NULL if node is the
  -- *	   tail
  --  

   function sys_dlist_peek_prev_no_check (list : access constant sys_dlist_t; node : access constant sys_dnode_t) return access sys_dnode_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/dlist.h:367
   with Import => True, 
        Convention => C, 
        External_Name => "sys_dlist_peek_prev_no_check";

  --*
  -- * @brief get a reference to the previous item in the list
  -- *
  -- * @param list the doubly-linked list to operate on
  -- * @param node the node from which to get the previous element in the list
  -- *
  -- * @return a pointer to the previous element from a node, NULL if node is the
  -- * 	   tail or NULL (when node comes from reading the head of an empty
  -- * 	   list).
  --  

   function sys_dlist_peek_prev (list : access constant sys_dlist_t; node : access constant sys_dnode_t) return access sys_dnode_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/dlist.h:384
   with Import => True, 
        Convention => C, 
        External_Name => "sys_dlist_peek_prev";

  --*
  -- * @brief get a reference to the tail item in the list
  -- *
  -- * @param list the doubly-linked list to operate on
  -- *
  -- * @return a pointer to the tail element, NULL if list is empty
  --  

   function sys_dlist_peek_tail (list : access constant sys_dlist_t) return access sys_dnode_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/dlist.h:398
   with Import => True, 
        Convention => C, 
        External_Name => "sys_dlist_peek_tail";

  --*
  -- * @brief add node to tail of list
  -- *
  -- * This and other sys_dlist_*() functions are not thread safe.
  -- *
  -- * @param list the doubly-linked list to operate on
  -- * @param node the element to append
  --  

   procedure sys_dlist_append (list : access sys_dlist_t; node : access sys_dnode_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/dlist.h:412
   with Import => True, 
        Convention => C, 
        External_Name => "sys_dlist_append";

  --*
  -- * @brief add node to head of list
  -- *
  -- * This and other sys_dlist_*() functions are not thread safe.
  -- *
  -- * @param list the doubly-linked list to operate on
  -- * @param node the element to append
  --  

   procedure sys_dlist_prepend (list : access sys_dlist_t; node : access sys_dnode_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/dlist.h:432
   with Import => True, 
        Convention => C, 
        External_Name => "sys_dlist_prepend";

  --*
  -- * @brief Insert a node into a list
  -- *
  -- * Insert a node before a specified node in a dlist.
  -- *
  -- * @param successor the position before which "node" will be inserted
  -- * @param node the element to insert
  --  

   procedure sys_dlist_insert (successor : access sys_dnode_t; node : access sys_dnode_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/dlist.h:451
   with Import => True, 
        Convention => C, 
        External_Name => "sys_dlist_insert";

  --*
  -- * @brief insert node at position
  -- *
  -- * Insert a node in a location depending on a external condition. The cond()
  -- * function checks if the node is to be inserted _before_ the current node
  -- * against which it is checked.
  -- * This and other sys_dlist_*() functions are not thread safe.
  -- *
  -- * @param list the doubly-linked list to operate on
  -- * @param node the element to insert
  -- * @param cond a function that determines if the current node is the correct
  -- *             insert point
  -- * @param data parameter to cond()
  --  

   procedure sys_dlist_insert_at
     (list : access sys_dlist_t;
      node : access sys_dnode_t;
      cond : access function (arg1 : access sys_dnode_t; arg2 : System.Address) return int;
      data : System.Address)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/dlist.h:476
   with Import => True, 
        Convention => C, 
        External_Name => "sys_dlist_insert_at";

  --*
  -- * @brief remove a specific node from a list
  -- *
  -- * Like :c:func:`sys_dlist_remove()`, this routine removes a specific node
  -- * from a list. However, unlike :c:func:`sys_dlist_remove()`, this routine
  -- * does not re-initialize the removed node. One significant implication of
  -- * this difference is that the function :c:func`sys_dnode_is_linked()` will
  -- * not work on a dequeued node.
  -- *
  -- * The list is implicit from the node. The node must be part of a list.
  -- * This and other sys_dlist_*() functions are not thread safe.
  -- *
  -- * @param node the node to dequeue
  --  

   procedure sys_dlist_dequeue (node : access sys_dnode_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/dlist.h:509
   with Import => True, 
        Convention => C, 
        External_Name => "sys_dlist_dequeue";

  --*
  -- * @brief remove a specific node from a list
  -- *
  -- * The list is implicit from the node. The node must be part of a list.
  -- * This and other sys_dlist_*() functions are not thread safe.
  -- *
  -- * @param node the node to remove
  --  

   procedure sys_dlist_remove (node : access sys_dnode_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/dlist.h:527
   with Import => True, 
        Convention => C, 
        External_Name => "sys_dlist_remove";

  --*
  -- * @brief get the first node in a list
  -- *
  -- * This and other sys_dlist_*() functions are not thread safe.
  -- *
  -- * @param list the doubly-linked list to operate on
  -- *
  -- * @return the first node in the list, NULL if list is empty
  --  

   function sys_dlist_get (list : access sys_dlist_t) return access sys_dnode_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/dlist.h:547
   with Import => True, 
        Convention => C, 
        External_Name => "sys_dlist_get";

  --*
  -- * @brief Compute the size of the given list in O(n) time
  -- *
  -- * @param list A pointer on the list
  -- *
  -- * @return an integer equal to the size of the list, or 0 if empty
  --  

   function sys_dlist_len (list : access constant sys_dlist_t) return stddef_h.size_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/dlist.h:566
   with Import => True, 
        Convention => C, 
        External_Name => "sys_dlist_len";

  --* @}  
end zephyr_sys_dlist_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
