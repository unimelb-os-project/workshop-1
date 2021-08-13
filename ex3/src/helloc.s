.equ uart, 0x10000000

.section data

.global _uart
_uart: .8byte 0x10000000

# .equ _stack_size 0x1000
# _stack:
#     .zero _stack_size

.section .text.init

.global _start
_start:
    la a0, uart
    la ra, _end
    la sp, _STACK_END
    j main
_end:
    la t1, uart
    # li  t0, '!'
    sb a0, 0x0(t1)


