## Config
OUT_NAME = kernal.elf

## Dirs
ifeq ($(EX),)
	EX=1
endif

SRC = $(wildcard ex$(EX)/src/*.c) $(wildcard ex$(EX)/src/*.s)
LDS = ex$(EX)/ex$(EX).ld

## Build flags
# FLAGS = -march=rv32imac -mabi=ilp32 -ffreestanding -mcmodel=medany -nostdlib -fno-builtin -Wall
FLAGS = -march=rv64gc -mabi=lp64 -ffreestanding -mcmodel=medany -nostdlib -fno-builtin -Wall -ggdb

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
