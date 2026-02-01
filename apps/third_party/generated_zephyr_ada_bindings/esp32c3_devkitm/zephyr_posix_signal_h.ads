pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with System;
limited with zephyr_posix_posix_types_h;
with sys_types_h;
with Interfaces.C.Strings;

package zephyr_posix_signal_h is

   SIGHUP : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:17
   SIGINT : constant := 2;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:18
   SIGQUIT : constant := 3;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:19
   SIGILL : constant := 4;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:20
   SIGTRAP : constant := 5;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:21
   SIGABRT : constant := 6;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:22
   SIGBUS : constant := 7;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:23
   SIGFPE : constant := 8;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:24
   SIGKILL : constant := 9;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:25
   SIGUSR1 : constant := 10;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:26
   SIGSEGV : constant := 11;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:27
   SIGUSR2 : constant := 12;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:28
   SIGPIPE : constant := 13;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:29
   SIGALRM : constant := 14;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:30
   SIGTERM : constant := 15;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:31

   SIGCHLD : constant := 17;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:33
   SIGCONT : constant := 18;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:34
   SIGSTOP : constant := 19;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:35
   SIGTSTP : constant := 20;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:36
   SIGTTIN : constant := 21;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:37
   SIGTTOU : constant := 22;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:38
   SIGURG : constant := 23;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:39
   SIGXCPU : constant := 24;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:40
   SIGXFSZ : constant := 25;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:41
   SIGVTALRM : constant := 26;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:42
   SIGPROF : constant := 27;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:43

   SIGPOLL : constant := 29;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:45

   SIGSYS : constant := 31;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:47

   SIGRTMIN : constant := 32;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:49
   --  unsupported macro: SIGRTMAX (SIGRTMIN + RTSIG_MAX)

   SIGEV_NONE : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:60

   SIGEV_SIGNAL : constant := 2;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:64

   SIGEV_THREAD : constant := 3;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:68

   SIG_BLOCK : constant := 0;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:72

   SIG_SETMASK : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:75

   SIG_UNBLOCK : constant := 2;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:78
   --  unsupported macro: SIG_DFL ((void *)0)
   --  unsupported macro: SIG_IGN ((void *)1)
   --  unsupported macro: SIG_ERR ((void *)-1)

   SI_USER : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:85
   SI_QUEUE : constant := 2;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:86
   SI_TIMER : constant := 3;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:87
   SI_ASYNCIO : constant := 4;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:88
   SI_MESGQ : constant := 5;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:89

  -- * Copyright (c) 2018 Intel Corporation
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  -- include posix_types.h before posix_features.h (here) to avoid build errors against newlib  
  -- 16 not used  
  -- 28 not used  
  -- 30 not used  
   type anon_array1257 is array (0 .. 1) of aliased unsigned_long;
   type sigset_t is record
      sig : aliased anon_array1257;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:56
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:57

  -- Atomic entity type (ANSI)  
   subtype sig_atomic_t is int;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:91

   type sigval (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            sival_ptr : System.Address;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:94
         when others =>
            sival_int : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:95
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:93

   type sigevent is record
      sigev_notify_function : access procedure (arg1 : sigval);  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:99
      sigev_notify_attributes : access zephyr_posix_posix_types_h.pthread_attr;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:100
      sigev_value : aliased sigval;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:101
      sigev_notify : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:102
      sigev_signo : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:103
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:98

   type siginfo_t is record
      si_signo : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:107
      si_code : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:108
      si_value : aliased sigval;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:109
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:110

   type sigaction is record
      sa_handler : access procedure (arg1 : int);  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:113
      sa_mask : aliased sigset_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:114
      sa_flags : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:115
      sa_sigaction : access procedure
           (arg1 : int;
            arg2 : access siginfo_t;
            arg3 : System.Address);  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:116
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:112

   type sighandler_t is access procedure (arg1 : int)
   with Convention => C;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:119

   function alarm (seconds : unsigned) return unsigned  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "alarm";

   function kill (pid : sys_types_h.pid_t; sig : int) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "kill";

   function pause return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:123
   with Import => True, 
        Convention => C, 
        External_Name => "pause";

   function c_raise (signo : int) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:124
   with Import => True, 
        Convention => C, 
        External_Name => "raise";

   function sigaction2
     (sig : int;
      act : access constant sigaction;
      oact : access sigaction) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "sigaction";

   function sigpending (set : access sigset_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "sigpending";

   function sigsuspend (sigmask : access constant sigset_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "sigsuspend";

   function sigwait (set : access constant sigset_t; signo : access int) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "sigwait";

   function strsignal (signum : int) return Interfaces.C.Strings.chars_ptr  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "strsignal";

   function sigemptyset (set : access sigset_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "sigemptyset";

   function sigfillset (set : access sigset_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "sigfillset";

   function sigaddset (set : access sigset_t; signo : int) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "sigaddset";

   function sigdelset (set : access sigset_t; signo : int) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:135
   with Import => True, 
        Convention => C, 
        External_Name => "sigdelset";

   function sigismember (set : access constant sigset_t; signo : int) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "sigismember";

   function signal (signo : int; handler : sighandler_t) return sighandler_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:137
   with Import => True, 
        Convention => C, 
        External_Name => "signal";

   function sigprocmask
     (how : int;
      set : access constant sigset_t;
      oset : access sigset_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "sigprocmask";

   function pthread_sigmask
     (how : int;
      set : access constant sigset_t;
      oset : access sigset_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/signal.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "pthread_sigmask";

end zephyr_posix_signal_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
