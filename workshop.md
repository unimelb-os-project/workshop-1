break?

# Motivation
Not many people acctually need to write assembly. But in this workshop we are going to cover the basics.

2 main reasons:
 -  The workshop series: you need to write some assembly to make an operating system
 -  General: good to understand one level bellow what you are writing

# Instruction Set Architecture (ISA)

## Whats an ISA?
 * A CPU is controlled by "machine code" encoded into binary
 * The ISA describes how this machine code is encoded and what resources the CPU has to offer
 * The programming interface for a CPU 

## Some popular ISAs:
    - x86_64/amd64 (Laptop/Desktop Computers)
    - ARMv8 (Phones + tables)

## RISC-V (Reduced instruction set computer)
 - New, lots of research behind it
 - Relativley simple
 - Build with expandability and modularity in mind
 - 32-bit width instructions
 - 32bit or 64bit registers (also has some support for other options)


We will be using RISCV 64bit

# Memory
```
Address    | 00 | 01 | 02 | 03 | ... | 19 | ...
-----------+----+----+----+----+-...-+----+-...
Data       |  9 |  0 |  1 |  0 | ... | 23 |
-----------+----+----+----+----+-...-+----+-...
Variable   | int my_var=65,545 | (65,545 = 0x00010009)
```

# General purpose registers in RISC-V
![alt text](/images/registers.png)

Flow chart for memory -> reg -> cpu -> reg -> mem

# Obj dump

riscv64-unknown-elf-objdump -S kernal.elf

# Godball

[https://godbolt.org/]()

# Refrences

## Overview of some riscv specific quirks
 1. [https://www.sifive.com/blog/all-aboard-part-0-introduction]()

## RISCV Assembly:
 1. [https://github.com/riscv/riscv-asm-manual/blob/master/riscv-asm.md]()
 2. [https://riscv.org/wp-content/uploads/2017/05/riscv-spec-v2.2.pdf]()

## Linker + ELF files
 1. [https://sourceware.org/binutils/docs/ld/Scripts.html]()
 2. [https://www.muppetlabs.com/~breadbox/software/tiny/teensy.html]()

