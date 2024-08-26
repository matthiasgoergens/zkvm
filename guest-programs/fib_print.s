	.file	"fib_print.c"
	.option pic
	.text
	.align	1
	.globl	sha256
	.type	sha256, @function
sha256:
	addi	sp,sp,-64
	sd	s0,56(sp)
	addi	s0,sp,64
	sd	a0,-40(s0)
	mv	a5,a1
	sd	a2,-56(s0)
	sw	a5,-44(s0)
	li	a5,23
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	mv	a3,a5
	ld	a5,-40(s0)
	lw	a4,-44(s0)
	mv	a2,a4
	ld	a4,-56(s0)
#APP
# 9 "fib_print.c" 1
	mv a0, a3
mv a1, a5
mv a2, a2
mv a3, a4
ebreak

# 0 "" 2
#NO_APP
	nop
	mv	a0,a5
	ld	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	sha256, .-sha256
	.align	1
	.globl	fib
	.type	fib, @function
fib:
	addi	sp,sp,-48
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s1,24(sp)
	addi	s0,sp,48
	mv	a5,a0
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,1
	bgtu	a4,a5,.L3
	lw	a5,-36(s0)
	j	.L4
.L3:
	lw	a5,-36(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	mv	a0,a5
	call	fib
	mv	a5,a0
	sext.w	s1,a5
	lw	a5,-36(s0)
	addiw	a5,a5,-2
	sext.w	a5,a5
	mv	a0,a5
	call	fib
	mv	a5,a0
	sext.w	a5,a5
	addw	a5,s1,a5
	sext.w	a5,a5
.L4:
	mv	a0,a5
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	addi	sp,sp,48
	jr	ra
	.size	fib, .-fib
	.section	.rodata
	.align	3
.LC0:
	.string	"fib: %d\n"
	.align	3
.LC1:
	.string	"Hello, World!\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-96
	sd	ra,88(sp)
	sd	s0,80(sp)
	addi	s0,sp,96
	mv	a5,a0
	sd	a1,-96(s0)
	sw	a5,-84(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	li	a0,10
	call	fib
	mv	a5,a0
	sw	a5,-72(s0)
	lw	a5,-72(s0)
	mv	a1,a5
	lla	a0,.LC0
	call	printf@plt
	lla	a5,.LC1
	sd	a5,-64(s0)
	ld	a0,-64(s0)
	call	strlen@plt
	mv	a5,a0
	sw	a5,-68(s0)
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L7
	call	__stack_chk_fail@plt
.L7:
	mv	a0,a4
	ld	ra,88(sp)
	ld	s0,80(sp)
	addi	sp,sp,96
	jr	ra
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
