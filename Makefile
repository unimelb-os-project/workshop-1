## Config
OUT_NAME = kernal.elf

## Dirs
ifeq ($(EX),)
	EX=1
endif

SRC = $(wildcard ex$(EX)/src/*.c) $(wildcard ex$(EX)/src/*.s)
LDS = ex$(EX)/ex$(EX).ld
# LDS = link.ld

## Build flags
# FLAGS = -march=rv32imac -mabi=ilp32 -ffreestanding -mcmodel=medany -nostdlib -fno-builtin -Wall
# riscv64-unknown-elf-gcc -march=rv64gc -mabi=lp64 -ffreestanding -mcmodel=medany -nostdlib -fno-builtin -Wall -T link.ld hello.s
# riscv64-unknown-elf-objdump -S kernal.elf

FLAGS = -march=rv64gc -mabi=lp64 -ffreestanding -mcmodel=medany -nostdlib -fno-builtin -Wall
ifneq ($(DEBUG),)
FLAGS += -ggdb
endif

## Tools
CC = riscv64-unknown-elf-gcc

.PHONY: default
default: build

.PHONY: build
build:
	$(CC) $(FLAGS) $(H_SRC) -T $(LDS) -o $(OUT_NAME) $(SRC)


.PHONY: clean
clean:
	rm $(OUT_NAME)
