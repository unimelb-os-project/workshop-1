OUTPUT_ARCH( "riscv" )
ENTRY(_start)

SECTIONS
{
    . = 0x80000000;
    .text : {
        *(.text.init) *(.text)
    }
    .rodata : {
        *(.rodata)
    }
    .data : {
        *(.data)
    }
    _STACK_START = .;
    . += 0x1000;
    _STACK_END = .;
}