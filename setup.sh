#!/bin/bash
# Run with: sudo ./setup.sh

echo "[*] Updating package lists..."
apt-get update

echo "[*] Installing native compiler and core static analysis utilities..."
# file and xxd are lightweight tools for static inspection
# gcc-multilib is REQUIRED to compile 32-bit x86 (-m32) on a 64-bit host
apt-get install -y build-essential gcc-multilib file xxd

echo "[*] Installing cross-compilers and binutils (for objdump) for static analysis..."

# ARM64 (aarch64)
apt-get install -y gcc-aarch64-linux-gnu binutils-aarch64-linux-gnu

# ARM 32-bit (gnueabi to match the Makefile exactly)
apt-get install -y gcc-arm-linux-gnueabi binutils-arm-linux-gnueabi

# PowerPC
apt-get install -y gcc-powerpc-linux-gnu binutils-powerpc-linux-gnu

# MIPS
apt-get install -y gcc-mips-linux-gnu binutils-mips-linux-gnu

echo "[+] Static analysis setup complete! You can now make all architectures."