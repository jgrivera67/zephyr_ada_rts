pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package machine_utypes_h is

  --   Copyright (c) 2012 ARM Ltd
  --   All rights reserved.
  --   Redistribution and use in source and binary forms, with or without
  --   modification, are permitted provided that the following conditions
  --   are met:
  --   1. Redistributions of source code must retain the above copyright
  --      notice, this list of conditions and the following disclaimer.
  --   2. Redistributions in binary form must reproduce the above copyright
  --      notice, this list of conditions and the following disclaimer in the
  --      documentation and/or other materials provided with the distribution.
  --   3. The name of the company may not be used to endorse or promote
  --      products derived from this software without specific prior written
  --      permission.
  --   THIS SOFTWARE IS PROVIDED BY ARM LTD ``AS IS'' AND ANY EXPRESS OR IMPLIED
  --   WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  --   MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
  --   IN NO EVENT SHALL ARM LTD BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
  --   SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
  --   TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
  --   PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
  --   LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
  --   NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
  --   SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  --  

   subtype u_ssize_t is long;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/aarch64-zephyr-elf/picolibc/include/machine/_types.h:35

end machine_utypes_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
