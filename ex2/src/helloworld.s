.section .rodata

_str: 
    .string "hello, world!\n" 
    .byte 0
      
.section .text

.equ uart, 0x10000000

.global _start
_start:
    la t0, uart             # t0 = 0x10000000
    
    la  t1, _str            # t1 = &_str;
_loop:                      # while (1) {
    lb t2, 0x0(t1)          #      t2 = *t1;
    beq t2, zero, _end      #      if (t2 == 0) break;
    sb t2, 0x0(t0)          #      *t0 = t2;
    addi t1, t1, 1          #      t1 = t1 + 1;
    j _loop                 #  }
_end:

park:
    wfi
    j park