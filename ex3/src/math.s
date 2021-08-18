.section .rodata

_four: 
    .byte 4
      
.section .text

.equ uart, 0x10000000

.global _start
_start:
    la t0, _four      # t0 = &_four
    lb t0, 0x0(t0)    # t0 = 4
    mv t1, t0         # t1 = t0 = 4
    addi t1, t1, 2    # t1 = t1 + 2 = 6
    mul t0, t0, t1    # t0 = t1 * t2 = 24

    # t0 = 24, t1 = 6;

    li t2, 10         # t2 = 10
    div a0, t0, t2    # a0 = t0 / t2 = 24 / 10 = 2
    rem a1, t0, t2    # a1 = t0 % t2 = 24 % 10 = 4

    # a0 = 2, a1 = 4

    addi a0, a0, '0'  # a0 = a0 + '0' (48) = 2 + '0' = '2' (50)
    addi a1, a1, '0'  # a1 = a0 + '0' (48) = 4 + '0' = '4' (52)

    # a0 = '2' (50), a1 = '4' (52)

    la t1, uart
    sb a0, 0x0(t1)
    sb a1, 0x0(t1)
    li t0, '\n'
    sb t0, 0x0(t1)

park:
    wfi                     # wait for interupt (sleep)
    j park                  # goto park
