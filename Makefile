default: all

all: powerpc arm aarch64 x86_64 x86 mips

# Base compiler flags for Reverse Engineering:
# -O0: Disable optimizations so ASM matches C logic 1:1
# -fno-stack-protector: Remove stack canaries for cleaner output
# -fno-asynchronous-unwind-tables: Remove CFI directives (.cfi_*) to declutter ASM
CFLAGS = -O0 -fno-stack-protector -fno-asynchronous-unwind-tables

powerpc:
	powerpc-linux-gnu-gcc $(CFLAGS) -o ppc rosetta.c
	powerpc-linux-gnu-objdump -d ./ppc > ppc-dump

arm:
	arm-linux-gnueabi-gcc $(CFLAGS) -o arm rosetta.c
	arm-linux-gnueabi-objdump -d ./arm > arm-dump

aarch64:
	aarch64-linux-gnu-gcc $(CFLAGS) -o aarch64 rosetta.c
	aarch64-linux-gnu-objdump -d ./aarch64 > aarch64-dump

# Only x86/x86_64 need flag -Mintel (Intel syntax)
x86_64:
	gcc $(CFLAGS) -o intel64 rosetta.c
	objdump -d -M intel ./intel64 > intel64-dump

# Flag -m32 to force gcc x86_64 compile to file 32-bit
x86:
	gcc -m32 $(CFLAGS) -o intel32 rosetta.c
	objdump -d -M intel ./intel32 > intel32-dump

mips:
	mips-linux-gnu-gcc $(CFLAGS) -o mips rosetta.c
	mips-linux-gnu-objdump -d ./mips > mips-dump

# Clean workspace
clean:
	rm -f ppc arm aarch64 intel64 intel32 mips *-dump

.PHONY: default all powerpc arm aarch64 x86_64 x86 mips clean