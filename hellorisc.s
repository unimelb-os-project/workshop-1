	.file	"hellorisc.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	print
	.type	print, @function
print:
	addi	sp,sp,-48
	sd	s0,40(sp)
	addi	s0,sp,48
	sd	a0,-40(s0)
	j	.L2
.L3:
	li	a5,268435456
	lbu	a4,-17(s0)
	sb	a4,0(a5)
	ld	a5,-40(s0)
	addi	a5,a5,1
	sd	a5,-40(s0)
.L2:
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	sb	a5,-17(s0)
	lbu	a5,-17(s0)
	andi	a5,a5,0xff
	bne	a5,zero,.L3
	nop
	nop
	ld	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	print, .-print
	.section	.rodata
	.align	3
.LC0:
	.string	"Hello, World!\n"
	.align	3
.LC1:
	.string	"Hi!\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	addi	s0,sp,16
	lla	a0,.LC0
	call	print
	lla	a0,.LC1
	call	print
	li	a5,36
	mv	a0,a5
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.ident	"GCC: (GNU) 11.1.0"
