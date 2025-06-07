#!/bin/bash

#
# To get the right gcc and preprocessor flags used for a given zephyr build,
# run west build in verbose mode. For example:
# west -v build -p always -b rpi_4b sample_apps/zephyr_ada_hello 2>&1 | tee ~/tmp/tmp.log
#
ZEPHYR_BASE_DIR=~/my-projects/third-party/zephyrproject/zephyr
ZEPHYR_GCC=~/my-projects/third-party/zephyr-sdk-0.17.1/aarch64-zephyr-elf/bin/aarch64-zephyr-elf-gcc

ZEPHYR_CFLAGS='-DKERNEL -DK_HEAP_MEM_POOL_SIZE=512 -DPICOLIBC_DOUBLE_PRINTF_SCANF -D__LINUX_ERRNO_EXTENSIONS__ -D__ZEPHYR__=1 -I/Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/kernel/include -I/Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/arch/arm64/include -I/Users/jgrivera/my-projects/zephyr_ada/sample_apps/zephyr_ada_hello/build/zephyr/include/generated/zephyr -I/Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include -I/Users/jgrivera/my-projects/zephyr_ada/sample_apps/zephyr_ada_hello/build/zephyr/include/generated -I/Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/soc/brcm/bcm2711 -I/Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix -I/Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/ti/mspm0/source/ti/devices/msp/. -I/Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/ti/mspm0/source/ti/devices/msp/m0p -I/Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/ti/mspm0/source/ti/devices/msp/peripherals -I/Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/ti/mspm0/source/ti/devices/msp/peripherals/m0p -I/Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/ti/mspm0/source/ti/devices/msp/peripherals/m0p/sysctl -isystem /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/lib/libc/common/include -fno-strict-aliasing -Os -imacros /Users/jgrivera/my-projects/zephyr_ada/sample_apps/zephyr_ada_hello/build/zephyr/include/generated/zephyr/autoconf.h -fno-common -g -gdwarf-4 -fdiagnostics-color=always -mcpu=cortex-a72 -mabi=lp64 --sysroot=/Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/aarch64-zephyr-elf/aarch64-zephyr-elf -imacros /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/toolchain/zephyr_stdint.h -Wall -Wformat -Wformat-security -Wno-format-zero-length -Wdouble-promotion -Wno-pointer-sign -Wpointer-arith -Wexpansion-to-defined -Wno-unused-but-set-variable -Werror=implicit-int -fno-pic -fno-pie -fno-asynchronous-unwind-tables -ftls-model=local-exec -fno-reorder-functions --param=min-pagesize=0 -fno-defer-pop -fmacro-prefix-map=/Users/jgrivera/my-projects/zephyr_ada/sample_apps/zephyr_ada_hello=CMAKE_SOURCE_DIR -fmacro-prefix-map=/Users/jgrivera/my-projects/third-party/zephyrproject/zephyr=ZEPHYR_BASE -fmacro-prefix-map=/Users/jgrivera/my-projects/third-party/zephyrproject=WEST_TOPDIR -ffunction-sections -fdata-sections -moverride=tune=no_ldp_stp_qregs -specs=picolibc.specs -D_POSIX_THREADS -std=c99'

output_dir=src/third_party/generated_zephyr_ada_bindings/rpi_4b
mkdir -p $output_dir
rm -f  $output_dir/*
cd $output_dir
$ZEPHYR_GCC $ZEPHYR_CFLAGS -c -fdump-ada-spec -C ${ZEPHYR_BASE_DIR}/include/zephyr/kernel.h
$ZEPHYR_GCC $ZEPHYR_CFLAGS -c -fdump-ada-spec -C ${ZEPHYR_BASE_DIR}/include/zephyr/posix/pthread.h
#$ZEPHYR_GCC $ZEPHYR_CFLAGS -c -fdump-ada-spec -C ${ZEPHYR_BASE_DIR}/include/zephyr/portability/cmsis_os2.h
cd -
ls -l $output_dir
