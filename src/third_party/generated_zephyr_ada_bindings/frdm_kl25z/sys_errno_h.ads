pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package sys_errno_h is

   --  unsupported macro: errno errno
   EPERM : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:61
   ENOENT : constant := 2;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:62
   ESRCH : constant := 3;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:63
   EINTR : constant := 4;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:64
   EIO : constant := 5;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:65
   ENXIO : constant := 6;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:66
   E2BIG : constant := 7;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:67
   ENOEXEC : constant := 8;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:68
   EBADF : constant := 9;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:69
   ECHILD : constant := 10;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:70
   EAGAIN : constant := 11;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:71
   ENOMEM : constant := 12;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:72
   EACCES : constant := 13;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:73
   EFAULT : constant := 14;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:74
   ENOTBLK : constant := 15;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:75
   EBUSY : constant := 16;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:76
   EEXIST : constant := 17;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:77
   EXDEV : constant := 18;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:78
   ENODEV : constant := 19;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:79
   ENOTDIR : constant := 20;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:80
   EISDIR : constant := 21;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:81
   EINVAL : constant := 22;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:82
   ENFILE : constant := 23;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:83
   EMFILE : constant := 24;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:84
   ENOTTY : constant := 25;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:85
   ETXTBSY : constant := 26;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:86
   EFBIG : constant := 27;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:87
   ENOSPC : constant := 28;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:88
   ESPIPE : constant := 29;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:89
   EROFS : constant := 30;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:90
   EMLINK : constant := 31;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:91
   EPIPE : constant := 32;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:92
   EDOM : constant := 33;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:93
   ERANGE : constant := 34;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:94
   ENOMSG : constant := 35;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:95
   EIDRM : constant := 36;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:96
   ECHRNG : constant := 37;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:97
   EL2NSYNC : constant := 38;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:98
   EL3HLT : constant := 39;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:99
   EL3RST : constant := 40;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:100
   ELNRNG : constant := 41;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:101
   EUNATCH : constant := 42;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:102
   ENOCSI : constant := 43;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:103
   EL2HLT : constant := 44;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:104
   EDEADLK : constant := 45;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:105
   ENOLCK : constant := 46;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:106
   EBADE : constant := 50;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:107
   EBADR : constant := 51;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:108
   EXFULL : constant := 52;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:109
   ENOANO : constant := 53;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:110
   EBADRQC : constant := 54;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:111
   EBADSLT : constant := 55;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:112
   EDEADLOCK : constant := 56;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:113
   EBFONT : constant := 57;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:114
   ENOSTR : constant := 60;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:115
   ENODATA : constant := 61;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:116
   ETIME : constant := 62;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:117
   ENOSR : constant := 63;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:118
   ENONET : constant := 64;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:119
   ENOPKG : constant := 65;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:120
   EREMOTE : constant := 66;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:121
   ENOLINK : constant := 67;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:122
   EADV : constant := 68;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:123
   ESRMNT : constant := 69;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:124
   ECOMM : constant := 70;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:125
   EPROTO : constant := 71;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:126
   EMULTIHOP : constant := 74;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:127
   ELBIN : constant := 75;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:128
   EDOTDOT : constant := 76;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:129
   EBADMSG : constant := 77;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:130
   EFTYPE : constant := 79;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:131
   ENOTUNIQ : constant := 80;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:132
   EBADFD : constant := 81;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:133
   EREMCHG : constant := 82;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:134
   ELIBACC : constant := 83;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:135
   ELIBBAD : constant := 84;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:136
   ELIBSCN : constant := 85;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:137
   ELIBMAX : constant := 86;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:138
   ELIBEXEC : constant := 87;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:139
   ENOSYS : constant := 88;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:140
   ENOTEMPTY : constant := 90;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:141
   ENAMETOOLONG : constant := 91;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:142
   ELOOP : constant := 92;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:143
   EOPNOTSUPP : constant := 95;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:144
   EPFNOSUPPORT : constant := 96;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:145
   ECONNRESET : constant := 104;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:146
   ENOBUFS : constant := 105;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:147
   EAFNOSUPPORT : constant := 106;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:148
   EPROTOTYPE : constant := 107;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:149
   ENOTSOCK : constant := 108;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:150
   ENOPROTOOPT : constant := 109;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:151
   ESHUTDOWN : constant := 110;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:152
   ECONNREFUSED : constant := 111;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:153
   EADDRINUSE : constant := 112;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:154
   ECONNABORTED : constant := 113;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:155
   ENETUNREACH : constant := 114;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:156
   ENETDOWN : constant := 115;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:157
   ETIMEDOUT : constant := 116;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:158
   EHOSTDOWN : constant := 117;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:159
   EHOSTUNREACH : constant := 118;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:160
   EINPROGRESS : constant := 119;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:161
   EALREADY : constant := 120;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:162
   EDESTADDRREQ : constant := 121;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:163
   EMSGSIZE : constant := 122;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:164
   EPROTONOSUPPORT : constant := 123;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:165
   ESOCKTNOSUPPORT : constant := 124;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:166
   EADDRNOTAVAIL : constant := 125;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:167
   ENETRESET : constant := 126;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:168
   EISCONN : constant := 127;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:169
   ENOTCONN : constant := 128;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:170
   ETOOMANYREFS : constant := 129;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:171
   EPROCLIM : constant := 130;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:172
   EUSERS : constant := 131;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:173
   EDQUOT : constant := 132;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:174
   ESTALE : constant := 133;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:175
   ENOTSUP : constant := 134;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:176
   ENOMEDIUM : constant := 135;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:177
   EILSEQ : constant := 138;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:178
   EOVERFLOW : constant := 139;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:179
   ECANCELED : constant := 140;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:180
   ENOTRECOVERABLE : constant := 141;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:181
   EOWNERDEAD : constant := 142;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:182
   ESTRPIPE : constant := 143;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:183
   EHWPOISON : constant := 144;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:184
   EISNAM : constant := 145;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:185
   EKEYEXPIRED : constant := 146;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:186
   EKEYREJECTED : constant := 147;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:187
   EKEYREVOKED : constant := 148;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:188
   --  unsupported macro: EWOULDBLOCK EAGAIN

  --Copyright (c) 1982, 1986, 1993
  --The Regents of the University of California.  All rights reserved.
  --Redistribution and use in source and binary forms, with or without
  --modification, are permitted provided that the following conditions
  --are met:
  --1. Redistributions of source code must retain the above copyright
  --notice, this list of conditions and the following disclaimer.
  --2. Redistributions in binary form must reproduce the above copyright
  --notice, this list of conditions and the following disclaimer in the
  --documentation and/or other materials provided with the distribution.
  --3. Neither the name of the University nor the names of its contributors
  --may be used to endorse or promote products derived from this software
  --without specific prior written permission.
  --THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
  --ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  --IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
  --ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
  --FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  --DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  --OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  --HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
  --LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
  --OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
  --SUCH DAMAGE.
  --  

  -- errno is not a global variable, because that would make using it
  --   non-reentrant.  Instead, its address is returned by the function
  --   __errno.   

   errno : aliased int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/errno.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "errno";

end sys_errno_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
