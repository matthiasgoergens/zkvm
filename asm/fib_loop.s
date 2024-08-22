	.file	"fib_loop.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	fib_loop
	.type	fib_loop, @function
fib_loop:
	addi	sp,sp,-48
	sw	s0,44(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	bne	a5,zero,.L2
	li	a5,0
	j	.L3
.L2:
	lw	a4,-36(s0)
	li	a5,1
	bne	a4,a5,.L4
	li	a5,1
	j	.L3
.L4:
	sw	zero,-20(s0)
	li	a5,1
	sw	a5,-24(s0)
	li	a5,2
	sw	a5,-28(s0)
	j	.L5
.L6:
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-24(s0)
	sw	a5,-20(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L5:
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	bleu	a4,a5,.L6
	lw	a5,-24(s0)
.L3:
	mv	a0,a5
	lw	s0,44(sp)
	addi	sp,sp,48
	jr	ra
	.size	fib_loop, .-fib_loop
	.ident	"GCC: () 13.2.0"
