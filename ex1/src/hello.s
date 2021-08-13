.section .text

.global _start
_start:
    la t1, 0x10000000
    
    li  t0, 'h'
    sb t0, 0x0(t1)
    li  t0, 'e'
    sb t0, 0x0(t1)
    li  t0, 'l'
    sb t0, 0x0(t1)
    li  t0, 'l'
    sb t0, 0x0(t1)
    li  t0, 'o'
    sb t0, 0x0(t1)
    li  t0, '\n'
    sb t0, 0x0(t1)

park:
    wfi
    j park
