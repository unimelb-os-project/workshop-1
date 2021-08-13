# .section rodata
# .equ _stack_size 0x1000
# _stack:
#     .zero _stack_size

.section .text.init

.equ uart_a, 0x10000000

.global _start
_start:

    la a0, uart_a
    la ra, _end
    la sp, _STACK_END
    j main


_end:
    la t1, 0x10000000
    # li  t0, '!'
    sb a0, 0x0(t1)

park:
    wfi
    j park
