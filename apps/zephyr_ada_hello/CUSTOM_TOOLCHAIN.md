# Using Custom Ada Toolchains with Zephyr

This guide explains how to use your own GNAT cross-compiler toolchain instead of Alire-managed toolchains.

## When to Use Custom Toolchains

Use a custom toolchain when:
- Building for **ARM64/AArch64** (Raspberry Pi 4/5, Cortex-A53/A72) - not available in Alire
- Building for **x86/x86_64** - not available in Alire
- You need a specific GCC/GNAT version not in Alire
- You're using a custom-built or vendor-provided toolchain

## Supported Alire Toolchains

The following toolchains are automatically managed by Alire:
- `gnat_arm_elf` - 32-bit ARM (Cortex-M, Cortex-R)
- `gnat_riscv64_elf` - RISC-V 32/64-bit
- `gnat_xtensa_esp32_elf` - ESP32 (Xtensa)

For these, **no custom toolchain is needed** - they're downloaded automatically.

## Building a Custom GNAT Toolchain

### Example: ARM64/AArch64 for Raspberry Pi 4/5

1. **Clone GCC source**:
   ```bash
   git clone https://github.com/gcc-mirror/gcc.git
   cd gcc
   git checkout releases/gcc-15.2.0  # Or your preferred version
   ```

2. **Configure for aarch64-elf**:
   ```bash
   mkdir build-aarch64-elf
   cd build-aarch64-elf
   ../configure \
     --target=aarch64-elf \
     --prefix=/opt/gnat-aarch64-elf \
     --enable-languages=c,ada \
     --disable-libssp \
     --disable-libgomp \
     --disable-libmudflap \
     --disable-libquadmath \
     --with-newlib \
     --without-headers
   ```

3. **Build and install**:
   ```bash
   make -j$(nproc)
   sudo make install
   ```

4. **Verify installation**:
   ```bash
   /opt/gnat-aarch64-elf/bin/aarch64-elf-gcc --version
   /opt/gnat-aarch64-elf/bin/aarch64-elf-gnat --version
   ```

## Using Your Custom Toolchain

### Method 1: Environment Variable (Recommended)

Set `ADA_TOOLCHAIN_PATH` before building:

```bash
export ADA_TOOLCHAIN_PATH=/opt/gnat-aarch64-elf
west build -b rpi_4b apps/zephyr_ada_hello
```

### Method 2: CMake Variable

Pass the toolchain path directly to CMake:

```bash
west build -b rpi_4b apps/zephyr_ada_hello -- -DADA_TOOLCHAIN_PATH=/opt/gnat-aarch64-elf
```

### Method 3: Set Globally

Add to your shell profile (`~/.bashrc`, `~/.zshrc`, etc.):

```bash
export ADA_TOOLCHAIN_PATH=/opt/gnat-aarch64-elf
```

## How It Works

1. **CMake Detection**: CMakeLists.txt checks if `ADA_TOOLCHAIN_PATH` is set
2. **PATH Override**: If set, adds `${ADA_TOOLCHAIN_PATH}/bin` to PATH before building
3. **Alire Bypass**: Skips `alr with` toolchain dependency management
4. **GPRbuild Discovery**: GPRbuild finds the custom toolchain via PATH

## Verifying Custom Toolchain Usage

Look for this message during build:

```
-- Using custom Ada toolchain from: /opt/gnat-aarch64-elf
-- Using custom Ada toolchain - will add /opt/gnat-aarch64-elf/bin to PATH
```

If you see:
```
-- Ada toolchain for RISC-V: gnat_riscv64_elf
-- Using Alire-managed Ada toolchain: gnat_riscv64_elf
```

Then the **Alire-managed toolchain** is being used (which is fine for supported architectures).

## Troubleshooting

### Error: "Custom Ada toolchain path /path/to/toolchain/bin does not exist"

Ensure your toolchain path contains a `bin/` subdirectory:
```bash
ls ${ADA_TOOLCHAIN_PATH}/bin/
# Should list: aarch64-elf-gcc, aarch64-elf-gnat, etc.
```

### GPRbuild can't find compiler

Verify the compiler is executable and in the expected location:
```bash
${ADA_TOOLCHAIN_PATH}/bin/aarch64-elf-gnat --version
```

### Wrong architecture selected

CMake reads Zephyr's `.config` to determine architecture. Ensure you're building for the correct board:
```bash
grep "CONFIG_ARM64\|CONFIG_ARM\|CONFIG_RISCV" build/zephyr/.config
```

## Example: Complete Build for Raspberry Pi 4 (ARM64)

```bash
# 1. Build custom aarch64-elf toolchain (one-time setup)
# ... follow steps above ...

# 2. Set toolchain path
export ADA_TOOLCHAIN_PATH=/opt/gnat-aarch64-elf

# 3. Clean previous build
west build -p always -b rpi_4b apps/zephyr_ada_hello

# 4. Build completes successfully using custom toolchain
```

## Notes

- Custom toolchains are **only needed for architectures not in Alire** (ARM64, x86)
- For standard boards (ARM Cortex-M, RISC-V, ESP32), use Alire toolchains - they're easier
- Your custom toolchain should match the GCC version used by Zephyr for best compatibility
- The toolchain's runtime library (`libgnat.a`) should be built for bare-metal (`-elf` target)
