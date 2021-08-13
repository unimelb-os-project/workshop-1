## Config
OUT_NAME = kernal.elf

SRC = src
LDS = lds
EX1_LINK_SCRIPT = $(LDS)/ex1.ld
EX1_SRC = $(SRC)/hello.s
EX2_LINK_SCRIPT = $(LDS)/ex2.ld
EX2_SRC = $(SRC)/helloworld.s
EX3_LINK_SCRIPT = $(LDS)/ex3.ld
EX3_SRC = $(SRC)/helloc.s $(SRC)/hellorisc.c

## Build flags
# FLAGS = -march=rv32imac -mabi=ilp32 -ffreestanding -mcmodel=medany -nostdlib -fno-builtin -Wall
FLAGS = -march=rv64gc -mabi=lp64 -ffreestanding -mcmodel=medany -nostdlib -fno-builtin -Wall -ggdb

## Tools
CC = riscv64-unknown-elf-gcc

.PHONY: default
default: ex1

.PHONY: ex1
ex1:
	$(CC) $(FLAGS) $(H_SRC) -T $(EX1_LINK_SCRIPT) -o $(OUT_NAME) $(EX1_SRC)

.PHONY: ex1
ex2:
	$(CC) $(FLAGS) $(H_SRC) -T $(EX2_LINK_SCRIPT) -o $(OUT_NAME) $(EX2_SRC)

.PHONY: ex1
ex3:
	$(CC) $(FLAGS) $(H_SRC) -T $(EX3_LINK_SCRIPT) -o $(OUT_NAME) $(EX3_SRC)

.PHONY: clean
clean:
	rm $(OUT_NAME)
