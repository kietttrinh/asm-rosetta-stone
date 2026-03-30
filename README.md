# 🏛️ The ASM Rosetta Stone

> This repository contains the **ASM Rosetta Stone**, a snippet of C that you can use to learn a new assembly variant in a short amount of time.

I also received a little help from the LLM services in this repository, and it was successful for me. I sincerely hope that my modest gesture would be of the greatest help to you.

---

## 🚀 Getting Started

Follow these steps to start studying assembly languages using Rosetta Stone:

### 1. Clone the repository
Open a terminal and run the following command to clone the repository to your local machine:

```bash
git clone https://github.com/kietttrinh/asm-rosetta-stone.git
cd asm-rosetta-stone
```

### 2. Install necessary packages
Install the necessary packages on your system by running:

```bash
chmod +x setup.sh
./setup.sh
```

### 3. Makefile usage
Use the Makefile to compile `rosetta.c` into executables for different architectures.

| Architecture | Command | Output File |
| :--- | :--- | :--- |
| **All Supported** | `make all` | (All below) |
| **PowerPC** | `make powerpc` | `ppc` |
| **ARM** | `make arm` | `arm` |
| **AArch64** | `make aarch64` | `aarch64` |
| **x86_64** | `make x86_64` | `intel64` |
| **x86** | `make x86` | `intel32` |
| **MIPS** | `make mips` | `mips` |

> [!TIP]
> You can **clean all** the workspace (executable files and `*-dump` files) by using:
> ```bash
> make clean
> ```

---

## 📝 Checklist 
*You can look over this checklist once you're finished, and it is used as a learning tool for everything we can learn from the project.*

📂 registers
- [ ] names

- [ ] width

- [ ] floating-point/vector registers (xmm, ymm, neon/vfp)

📂 stack & heap memory
- [ ] how is it used

- [ ] prologue, epilogue

- [ ] alignment & padding

📂 memory segments (layout)
- [ ] .data (initialized globals)

- [ ] .bss (uninitialized globals)

- [ ] .rodata (read-only, strings, jump tables)

📂 calling conventions
- [ ] arguments (integer vs floating point)

- [ ] variadic arguments (e.g., printf style)

- [ ] return value

- [ ] return address

📂 control flow
- [ ] branching (if/else)

- [ ] loops (for, while, do-while)

- [ ] switch-case (jump tables)

- [ ] calls (direct vs indirect calls)

📂 data structures & operations
- [ ] pointers (dereferencing, pointer arithmetic)

- [ ] multidimensional arrays (row-major order calculation)

- [ ] structs (member access offsets)

- [ ] struct bitfields (masking and shifting)

- [ ] bitwise operations (`XOR`, `SHL`, `SHR`)

📂 compiler specific
- [ ] volatile keyword (forcing memory read/write)

- [ ] external library calls (PLT / GOT resolving)

- [ ] syscall interface

---