pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_utypes_h;

package sys_utimespec_h is

  ---
  -- * SPDX-License-Identifier: BSD-3-Clause
  -- *
  -- * Copyright (c) 1982, 1986, 1993
  -- *	The Regents of the University of California.  All rights reserved.
  -- *
  -- * Redistribution and use in source and binary forms, with or without
  -- * modification, are permitted provided that the following conditions
  -- * are met:
  -- * 1. Redistributions of source code must retain the above copyright
  -- *    notice, this list of conditions and the following disclaimer.
  -- * 2. Redistributions in binary form must reproduce the above copyright
  -- *    notice, this list of conditions and the following disclaimer in the
  -- *    documentation and/or other materials provided with the distribution.
  -- * 3. Neither the name of the University nor the names of its contributors
  -- *    may be used to endorse or promote products derived from this software
  -- *    without specific prior written permission.
  -- *
  -- * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
  -- * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  -- * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
  -- * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
  -- * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  -- * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  -- * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  -- * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
  -- * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
  -- * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
  -- * SUCH DAMAGE.
  -- *
  -- *	@(#)time.h	8.5 (Berkeley) 5/4/95
  -- * from: FreeBSD: src/sys/sys/time.h,v 1.43 2000/03/20 14:09:05 phk Exp
  -- *	$FreeBSD: head/sys/sys/_timespec.h 326023 2017-11-20 19:43:44Z pfg $
  --  

   subtype time_t is sys_utypes_h.uu_time_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/_timespec.h:40

  -- seconds  
   type timespec is record
      tv_sec : aliased time_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/_timespec.h:45
      tv_nsec : aliased long;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/_timespec.h:46
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/_timespec.h:44

  -- and nanoseconds  
end sys_utimespec_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
