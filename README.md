# The ASM Rosetta Stone
This respository contains the ASM Rosetta Stone, a snippet of C
that you can use to learn a new assembly variant in a short amount of time.

I also received a little help from the LLM services in this repository, and it was successful for me. I sincerely hope that my modest gesture would be of the greatest help to you.

## Getting Started
To get started with studying assembly languages using Rosetta Stone, follow these steps:

1. **Clone the repository**: Open a terminal and run the following command to clone the repository to your local machine:

```
git clone https://github.com/kietttrinh/asm-rosetta-stone.git
```
2. **Install necessary packages**: Install the necessary packages on your system by running the following command:
```
./setup.sh
```
3. **Makefile usage**: You can use the Makefile to compile the `rosetta.c` file into executables for different architectures. Run the following command to compile the code for all supported architectures *(powerpc, arm, aarch64, x86_64, x86, mips)*:
```
make all
```
Alternatively, you can compile the code for individual architectures using the respective target names:
* **PowerPC:**
```
make powerpc
```
* **ARM**
```
make arm
```
* **AArch64**
```
make aarch64
```
* **x86_64**
```
make x86_64
```
* **x86**
```
make x86_64
```
* **MIPS**
```
make mips
```
The compiled executables will be named ppc (for powerpc), arm (for arm), aarch64 (for aarch64), intel64 (for x86_64), intel32 (for x86) and mips (for mips).

You can **clean all** the workspace (executable file, `*-dump` file) by using command 
```
make clean
```

## Checklist 
> You can look over this checklist once you're finished, and it is used as a learning tool for everything we can learn from the project.

- registers
  - names []
  - width []
  - floating-point/vector registers (XMM, YMM, NEON/VFP) []

- stack & heap memory
  - how is it used []
  - prologue, epilogue []
  - alignment & padding []

- memory segments (Layout)
  - .data (initialized globals) []
  - .bss (uninitialized globals) []
  - .rodata (read-only, strings, jump tables) []

- calling conventions
  - arguments (integer vs floating point) []
  - variadic arguments (e.g., printf style) []
  - return value []
  - return address []
  
- control flow
  - branching (if/else) []
  - loops (for, while, do-while) []
  - switch-case (Jump Tables) [] 
  - calls (direct vs indirect calls) []

- data structures & operations
  - pointers (dereferencing, pointer arithmetic) []
  - multidimensional arrays (row-major order calculation) []
  - structs (member access offsets) []
  - struct bitfields (masking and shifting) []
  - bitwise operations (XOR, SHL, SHR) []
  
- compiler specific
  - volatile keyword (forcing memory read/write) []
  - external library calls (PLT / GOT resolving) []
  - syscall interface []




