	.file	"fib_print.c"
	.option nopic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	fib
	.type	fib, @function
fib:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s1,24(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,1
	bgtu	a4,a5,.L2
	lw	a5,-36(s0)
	j	.L3
.L2:
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
.L3:
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	ld	s1,24(sp)
	.cfi_restore 9
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	fib, .-fib
	.align	1
	.globl	hash
	.type	hash, @function
hash:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	mv	a5,a1
	sd	a2,-56(s0)
	sw	a5,-44(s0)
	li	a5,23
	sw	a5,-20(s0)
	ld	a5,-56(s0)
	lw	a4,-20(s0)
	mv	a2,a4
	ld	a4,-40(s0)
	lw	a3,-44(s0)
	mv	a1,a3
	ld	a3,-56(s0)
#APP
# 17 "fib_print.c" 1
	mv a0, 0(a5)
mv a1, a2
mv a2, a4
mv a3, a1
ebreak

# 0 "" 2
#NO_APP
	nop
	mv	a0,a5
	ld	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	hash, .-hash
	.section	.rodata
	.align	3
.LC0:
	.string	"exit_code1: %d\n"
	.align	3
.LC1:
	.string	"Hello, World!\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)
	sd	s0,80(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sd	a1,-96(s0)
	sw	a5,-84(s0)
	li	a0,5
	call	fib
	mv	a5,a0
	sw	a5,-20(s0)
	li	a0,10
	call	fib
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	mv	a1,a5
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
	lui	a5,%hi(.LC1)
	addi	a5,a5,%lo(.LC1)
	sd	a5,-32(s0)
	ld	a0,-32(s0)
	call	strlen
	mv	a5,a0
	sw	a5,-36(s0)
	addi	a4,s0,-72
	lw	a5,-36(s0)
	mv	a2,a4
	mv	a1,a5
	ld	a0,-32(s0)
	call	hash
	li	a5,0
	mv	a0,a5
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: () 13.2.0"
	.section	.note.GNU-stack,"",@progbits
