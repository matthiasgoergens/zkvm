
../asm/fib_print:     file format elf64-littleriscv


Disassembly of section .interp:

0000000000010270 <.interp>:
   10270:	62696c2f          	.insn	4, 0x62696c2f
   10274:	2d646c2f          	.insn	4, 0x2d646c2f
   10278:	696c                	ld	a1,208(a0)
   1027a:	756e                	ld	a0,248(sp)
   1027c:	2d78                	fld	fa4,216(a0)
   1027e:	6972                	ld	s2,280(sp)
   10280:	36766373          	csrrsi	t1,0x367,12
   10284:	2d34                	fld	fa3,88(a0)
   10286:	706c                	ld	a1,224(s0)
   10288:	3436                	fld	fs0,360(sp)
   1028a:	2e64                	fld	fs1,216(a2)
   1028c:	312e6f73          	csrrsi	t5,0x312,28
	...

Disassembly of section .note.ABI-tag:

0000000000010294 <__abi_tag>:
   10294:	0004                	.insn	2, 0x0004
   10296:	0000                	unimp
   10298:	0010                	.insn	2, 0x0010
   1029a:	0000                	unimp
   1029c:	0001                	nop
   1029e:	0000                	unimp
   102a0:	00554e47          	fmsub.s	ft8,fa0,ft5,ft0,rmm
   102a4:	0000                	unimp
   102a6:	0000                	unimp
   102a8:	0004                	.insn	2, 0x0004
   102aa:	0000                	unimp
   102ac:	0000000f          	fence	unknown,unknown
   102b0:	0000                	unimp
	...

Disassembly of section .hash:

00000000000102b8 <.hash>:
   102b8:	00000003          	lb	zero,0(zero) # 0 <__abi_tag-0x10294>
   102bc:	0004                	.insn	2, 0x0004
   102be:	0000                	unimp
   102c0:	0001                	nop
   102c2:	0000                	unimp
   102c4:	00000003          	lb	zero,0(zero) # 0 <__abi_tag-0x10294>
   102c8:	0002                	c.slli64	zero
	...

Disassembly of section .gnu.hash:

00000000000102e0 <.gnu.hash>:
   102e0:	00000003          	lb	zero,0(zero) # 0 <__abi_tag-0x10294>
   102e4:	0001                	nop
   102e6:	0000                	unimp
   102e8:	0001                	nop
   102ea:	0000                	unimp
   102ec:	0006                	c.slli	zero,0x1
   102ee:	0000                	unimp
   102f0:	0000                	unimp
   102f2:	0100                	addi	s0,sp,128
   102f4:	4000                	lw	s0,0(s0)
   102f6:	0100                	addi	s0,sp,128
   102f8:	0000                	unimp
   102fa:	0000                	unimp
   102fc:	0001                	nop
   102fe:	0000                	unimp
   10300:	00000003          	lb	zero,0(zero) # 0 <__abi_tag-0x10294>
   10304:	7e18                	ld	a4,56(a2)
   10306:	870a                	mv	a4,sp
   10308:	2bb9                	addiw	s7,s7,14
   1030a:	4e2f156b          	.insn	4, 0x4e2f156b
   1030e:	f63d                	bnez	a2,1027c <__abi_tag-0x18>

Disassembly of section .dynsym:

0000000000010310 <.dynsym>:
	...
   10328:	003a                	c.slli	zero,0xe
   1032a:	0000                	unimp
   1032c:	0010                	.insn	2, 0x0010
   1032e:	fff1                	bnez	a5,1030a <__abi_tag+0x76>
   10330:	2810                	fld	fa2,16(s0)
   10332:	0001                	nop
	...
   10340:	00000013          	nop
   10344:	0012                	c.slli	zero,0x4
   10346:	0000                	unimp
   10348:	0460                	addi	s0,sp,524
   1034a:	0001                	nop
	...
   10358:	0001                	nop
   1035a:	0000                	unimp
   1035c:	0012                	c.slli	zero,0x4
   1035e:	0000                	unimp
   10360:	0450                	addi	a2,sp,516
   10362:	0001                	nop
	...

Disassembly of section .dynstr:

0000000000010370 <.dynstr>:
   10370:	5f00                	lw	s0,56(a4)
   10372:	6c5f 6269 5f63      	.insn	6, 0x5f6362696c5f
   10378:	72617473          	csrrci	s0,mhpmevent6h,2
   1037c:	5f74                	lw	a3,124(a4)
   1037e:	616d                	addi	sp,sp,240
   10380:	6e69                	lui	t3,0x1a
   10382:	7000                	ld	s0,32(s0)
   10384:	6972                	ld	s2,280(sp)
   10386:	746e                	ld	s0,248(sp)
   10388:	0066                	c.slli	zero,0x19
   1038a:	696c                	ld	a1,208(a0)
   1038c:	6362                	ld	t1,24(sp)
   1038e:	732e                	ld	t1,232(sp)
   10390:	00362e6f          	jal	t3,72b92 <__global_pointer$+0x60382>
   10394:	42494c47          	fmsub.d	fs8,fs2,ft4,fs0,rmm
   10398:	2e325f43          	.insn	4, 0x2e325f43
   1039c:	3732                	fld	fa4,296(sp)
   1039e:	4700                	lw	s0,8(a4)
   103a0:	494c                	lw	a1,20(a0)
   103a2:	4342                	lw	t1,16(sp)
   103a4:	325f 332e 0034      	.insn	6, 0x0034332e325f
   103aa:	5f5f 6c67 626f      	.insn	6, 0x626f6c675f5f
   103b0:	6c61                	lui	s8,0x18
   103b2:	705f 696f 746e      	.insn	6, 0x746e696f705f
   103b8:	7265                	lui	tp,0xffff9
   103ba:	0024                	addi	s1,sp,8

Disassembly of section .gnu.version:

00000000000103bc <.gnu.version>:
   103bc:	0000                	unimp
   103be:	0001                	nop
   103c0:	00020003          	lb	zero,0(tp) # ffffffffffff9000 <__global_pointer$+0xfffffffffffe67f0>

Disassembly of section .gnu.version_r:

00000000000103c8 <.gnu.version_r>:
   103c8:	0001                	nop
   103ca:	0002                	c.slli64	zero
   103cc:	001a                	c.slli	zero,0x6
   103ce:	0000                	unimp
   103d0:	0010                	.insn	2, 0x0010
   103d2:	0000                	unimp
   103d4:	0000                	unimp
   103d6:	0000                	unimp
   103d8:	06969187          	.insn	4, 0x06969187
   103dc:	0000                	unimp
   103de:	00240003          	lb	zero,2(s0)
   103e2:	0000                	unimp
   103e4:	0010                	.insn	2, 0x0010
   103e6:	0000                	unimp
   103e8:	91b4                	.insn	2, 0x91b4
   103ea:	0696                	slli	a3,a3,0x5
   103ec:	0000                	unimp
   103ee:	0002                	c.slli64	zero
   103f0:	0000002f          	.insn	4, 0x002f
   103f4:	0000                	unimp
	...

Disassembly of section .rela.plt:

00000000000103f8 <.rela.plt>:
   103f8:	2000                	fld	fs0,0(s0)
   103fa:	0001                	nop
   103fc:	0000                	unimp
   103fe:	0000                	unimp
   10400:	0005                	c.nop	1
   10402:	0000                	unimp
   10404:	00000003          	lb	zero,0(zero) # 0 <__abi_tag-0x10294>
	...
   10410:	2008                	fld	fa0,0(s0)
   10412:	0001                	nop
   10414:	0000                	unimp
   10416:	0000                	unimp
   10418:	0005                	c.nop	1
   1041a:	0000                	unimp
   1041c:	0002                	c.slli64	zero
	...

Disassembly of section .plt:

0000000000010430 <_PROCEDURE_LINKAGE_TABLE_>:
   10430:	00002397          	auipc	t2,0x2
   10434:	41c30333          	sub	t1,t1,t3
   10438:	bc03be03          	ld	t3,-1088(t2) # 11ff0 <.got.plt>
   1043c:	fd430313          	addi	t1,t1,-44
   10440:	bc038293          	addi	t0,t2,-1088
   10444:	00135313          	srli	t1,t1,0x1
   10448:	0082b283          	ld	t0,8(t0)
   1044c:	000e0067          	jr	t3 # 1a000 <__global_pointer$+0x77f0>

0000000000010450 <__libc_start_main@plt>:
   10450:	00002e17          	auipc	t3,0x2
   10454:	bb0e3e03          	ld	t3,-1104(t3) # 12000 <__libc_start_main@GLIBC_2.34>
   10458:	000e0367          	jalr	t1,t3
   1045c:	00000013          	nop

0000000000010460 <printf@plt>:
   10460:	00002e17          	auipc	t3,0x2
   10464:	ba8e3e03          	ld	t3,-1112(t3) # 12008 <printf@GLIBC_2.27>
   10468:	000e0367          	jalr	t1,t3
   1046c:	00000013          	nop

Disassembly of section .text:

0000000000010470 <_start>:
   10470:	024000ef          	jal	10494 <load_gp>
   10474:	87aa                	mv	a5,a0
   10476:	00000517          	auipc	a0,0x0
   1047a:	01c50513          	addi	a0,a0,28 # 10492 <__wrap_main>
   1047e:	6582                	ld	a1,0(sp)
   10480:	0030                	addi	a2,sp,8
   10482:	ff017113          	andi	sp,sp,-16
   10486:	4681                	li	a3,0
   10488:	4701                	li	a4,0
   1048a:	880a                	mv	a6,sp
   1048c:	fc5ff0ef          	jal	10450 <__libc_start_main@plt>
   10490:	9002                	ebreak

0000000000010492 <__wrap_main>:
   10492:	a8c1                	j	10562 <main>

0000000000010494 <load_gp>:
   10494:	00002197          	auipc	gp,0x2
   10498:	37c18193          	addi	gp,gp,892 # 12810 <__global_pointer$>
   1049c:	8082                	ret
	...

00000000000104a0 <deregister_tm_clones>:
   104a0:	6549                	lui	a0,0x12
   104a2:	6749                	lui	a4,0x12
   104a4:	01050793          	addi	a5,a0,16 # 12010 <__TMC_END__>
   104a8:	01070713          	addi	a4,a4,16 # 12010 <__TMC_END__>
   104ac:	00f70863          	beq	a4,a5,104bc <deregister_tm_clones+0x1c>
   104b0:	00000793          	li	a5,0
   104b4:	c781                	beqz	a5,104bc <deregister_tm_clones+0x1c>
   104b6:	01050513          	addi	a0,a0,16
   104ba:	8782                	jr	a5
   104bc:	8082                	ret

00000000000104be <register_tm_clones>:
   104be:	6549                	lui	a0,0x12
   104c0:	01050793          	addi	a5,a0,16 # 12010 <__TMC_END__>
   104c4:	6749                	lui	a4,0x12
   104c6:	01070593          	addi	a1,a4,16 # 12010 <__TMC_END__>
   104ca:	8d9d                	sub	a1,a1,a5
   104cc:	4035d793          	srai	a5,a1,0x3
   104d0:	91fd                	srli	a1,a1,0x3f
   104d2:	95be                	add	a1,a1,a5
   104d4:	8585                	srai	a1,a1,0x1
   104d6:	c599                	beqz	a1,104e4 <register_tm_clones+0x26>
   104d8:	00000793          	li	a5,0
   104dc:	c781                	beqz	a5,104e4 <register_tm_clones+0x26>
   104de:	01050513          	addi	a0,a0,16
   104e2:	8782                	jr	a5
   104e4:	8082                	ret

00000000000104e6 <__do_global_dtors_aux>:
   104e6:	1141                	addi	sp,sp,-16
   104e8:	e022                	sd	s0,0(sp)
   104ea:	6449                	lui	s0,0x12
   104ec:	01844783          	lbu	a5,24(s0) # 12018 <completed.0>
   104f0:	e406                	sd	ra,8(sp)
   104f2:	e791                	bnez	a5,104fe <__do_global_dtors_aux+0x18>
   104f4:	fadff0ef          	jal	104a0 <deregister_tm_clones>
   104f8:	4785                	li	a5,1
   104fa:	00f40c23          	sb	a5,24(s0)
   104fe:	60a2                	ld	ra,8(sp)
   10500:	6402                	ld	s0,0(sp)
   10502:	0141                	addi	sp,sp,16
   10504:	8082                	ret

0000000000010506 <frame_dummy>:
   10506:	bf65                	j	104be <register_tm_clones>

0000000000010508 <fib>:
   10508:	7179                	addi	sp,sp,-48
   1050a:	f406                	sd	ra,40(sp)
   1050c:	f022                	sd	s0,32(sp)
   1050e:	ec26                	sd	s1,24(sp)
   10510:	1800                	addi	s0,sp,48
   10512:	87aa                	mv	a5,a0
   10514:	fcf42e23          	sw	a5,-36(s0)
   10518:	fdc42783          	lw	a5,-36(s0)
   1051c:	0007871b          	sext.w	a4,a5
   10520:	4785                	li	a5,1
   10522:	00e7e563          	bltu	a5,a4,1052c <fib+0x24>
   10526:	fdc42783          	lw	a5,-36(s0)
   1052a:	a035                	j	10556 <fib+0x4e>
   1052c:	fdc42783          	lw	a5,-36(s0)
   10530:	37fd                	addiw	a5,a5,-1
   10532:	2781                	sext.w	a5,a5
   10534:	853e                	mv	a0,a5
   10536:	fd3ff0ef          	jal	10508 <fib>
   1053a:	87aa                	mv	a5,a0
   1053c:	0007849b          	sext.w	s1,a5
   10540:	fdc42783          	lw	a5,-36(s0)
   10544:	37f9                	addiw	a5,a5,-2
   10546:	2781                	sext.w	a5,a5
   10548:	853e                	mv	a0,a5
   1054a:	fbfff0ef          	jal	10508 <fib>
   1054e:	87aa                	mv	a5,a0
   10550:	2781                	sext.w	a5,a5
   10552:	9fa5                	addw	a5,a5,s1
   10554:	2781                	sext.w	a5,a5
   10556:	853e                	mv	a0,a5
   10558:	70a2                	ld	ra,40(sp)
   1055a:	7402                	ld	s0,32(sp)
   1055c:	64e2                	ld	s1,24(sp)
   1055e:	6145                	addi	sp,sp,48
   10560:	8082                	ret

0000000000010562 <main>:
   10562:	7179                	addi	sp,sp,-48
   10564:	f406                	sd	ra,40(sp)
   10566:	f022                	sd	s0,32(sp)
   10568:	1800                	addi	s0,sp,48
   1056a:	87aa                	mv	a5,a0
   1056c:	fcb43823          	sd	a1,-48(s0)
   10570:	fcf42e23          	sw	a5,-36(s0)
   10574:	4515                	li	a0,5
   10576:	f93ff0ef          	jal	10508 <fib>
   1057a:	87aa                	mv	a5,a0
   1057c:	fef42623          	sw	a5,-20(s0)
   10580:	9002                	ebreak
   10582:	4529                	li	a0,10
   10584:	f85ff0ef          	jal	10508 <fib>
   10588:	87aa                	mv	a5,a0
   1058a:	fef42423          	sw	a5,-24(s0)
   1058e:	fe842783          	lw	a5,-24(s0)
   10592:	85be                	mv	a1,a5
   10594:	67c1                	lui	a5,0x10
   10596:	5b878513          	addi	a0,a5,1464 # 105b8 <_IO_stdin_used+0x8>
   1059a:	ec7ff0ef          	jal	10460 <printf@plt>
   1059e:	9002                	ebreak
   105a0:	4781                	li	a5,0
   105a2:	853e                	mv	a0,a5
   105a4:	70a2                	ld	ra,40(sp)
   105a6:	7402                	ld	s0,32(sp)
   105a8:	6145                	addi	sp,sp,48
   105aa:	8082                	ret

Disassembly of section .rodata:

00000000000105b0 <_IO_stdin_used>:
   105b0:	0001                	nop
   105b2:	0002                	c.slli64	zero
   105b4:	0000                	unimp
   105b6:	0000                	unimp
   105b8:	7865                	lui	a6,0xffff9
   105ba:	7469                	lui	s0,0xffffa
   105bc:	635f 646f 3165      	.insn	6, 0x3165646f635f
   105c2:	203a                	fld	ft0,392(sp)
   105c4:	6425                	lui	s0,0x9
   105c6:	000a                	c.slli	zero,0x2

Disassembly of section .eh_frame_hdr:

00000000000105c8 <__GNU_EH_FRAME_HDR>:
   105c8:	1b01                	addi	s6,s6,-32
   105ca:	00443b03          	ld	s6,4(s0) # 9004 <__abi_tag-0x7290>
   105ce:	0000                	unimp
   105d0:	00000007          	.insn	4, 0x0007
   105d4:	fea8                	sd	a0,120(a3)
   105d6:	ffff                	.insn	2, 0xffff
   105d8:	005c                	addi	a5,sp,4
   105da:	0000                	unimp
   105dc:	fed8                	sd	a4,184(a3)
   105de:	ffff                	.insn	2, 0xffff
   105e0:	0070                	addi	a2,sp,12
   105e2:	0000                	unimp
   105e4:	fef6                	sd	t4,376(sp)
   105e6:	ffff                	.insn	2, 0xffff
   105e8:	0084                	addi	s1,sp,64
   105ea:	0000                	unimp
   105ec:	ff1e                	sd	t2,440(sp)
   105ee:	ffff                	.insn	2, 0xffff
   105f0:	0098                	addi	a4,sp,64
   105f2:	0000                	unimp
   105f4:	ff3e                	sd	a5,440(sp)
   105f6:	ffff                	.insn	2, 0xffff
   105f8:	00bc                	addi	a5,sp,72
   105fa:	0000                	unimp
   105fc:	ff40                	sd	s0,184(a4)
   105fe:	ffff                	.insn	2, 0xffff
   10600:	00d0                	addi	a2,sp,68
   10602:	0000                	unimp
   10604:	ff9a                	sd	t1,504(sp)
   10606:	ffff                	.insn	2, 0xffff
   10608:	00fc                	addi	a5,sp,76
	...

Disassembly of section .eh_frame:

0000000000010610 <__FRAME_END__-0xdc>:
   10610:	0010                	.insn	2, 0x0010
   10612:	0000                	unimp
   10614:	0000                	unimp
   10616:	0000                	unimp
   10618:	00527a03          	.insn	4, 0x00527a03
   1061c:	7c01                	lui	s8,0xfffe0
   1061e:	0101                	addi	sp,sp,0
   10620:	00020c1b          	sext.w	s8,tp
   10624:	0010                	.insn	2, 0x0010
   10626:	0000                	unimp
   10628:	0018                	.insn	2, 0x0018
   1062a:	0000                	unimp
   1062c:	fe44                	sd	s1,184(a2)
   1062e:	ffff                	.insn	2, 0xffff
   10630:	0022                	c.slli	zero,0x8
   10632:	0000                	unimp
   10634:	0700                	addi	s0,sp,896
   10636:	0001                	nop
   10638:	0010                	.insn	2, 0x0010
   1063a:	0000                	unimp
   1063c:	002c                	addi	a1,sp,8
   1063e:	0000                	unimp
   10640:	fe60                	sd	s0,248(a2)
   10642:	ffff                	.insn	2, 0xffff
   10644:	001e                	c.slli	zero,0x7
   10646:	0000                	unimp
   10648:	0000                	unimp
   1064a:	0000                	unimp
   1064c:	0010                	.insn	2, 0x0010
   1064e:	0000                	unimp
   10650:	0040                	addi	s0,sp,4
   10652:	0000                	unimp
   10654:	fe6a                	sd	s10,312(sp)
   10656:	ffff                	.insn	2, 0xffff
   10658:	0028                	addi	a0,sp,8
   1065a:	0000                	unimp
   1065c:	0000                	unimp
   1065e:	0000                	unimp
   10660:	0020                	addi	s0,sp,8
   10662:	0000                	unimp
   10664:	0054                	addi	a3,sp,4
   10666:	0000                	unimp
   10668:	fe7e                	sd	t6,312(sp)
   1066a:	ffff                	.insn	2, 0xffff
   1066c:	0020                	addi	s0,sp,8
   1066e:	0000                	unimp
   10670:	4200                	lw	s0,0(a2)
   10672:	100e                	c.slli	zero,0x23
   10674:	8842                	mv	a6,a6
   10676:	4804                	lw	s1,16(s0)
   10678:	0281                	addi	t0,t0,0
   1067a:	c14e                	sw	s3,128(sp)
   1067c:	c842                	sw	a6,16(sp)
   1067e:	0e42                	slli	t3,t3,0x10
   10680:	0000                	unimp
   10682:	0000                	unimp
   10684:	0010                	.insn	2, 0x0010
   10686:	0000                	unimp
   10688:	0078                	addi	a4,sp,12
   1068a:	0000                	unimp
   1068c:	fe7a                	sd	t5,312(sp)
   1068e:	ffff                	.insn	2, 0xffff
   10690:	0002                	c.slli64	zero
   10692:	0000                	unimp
   10694:	0000                	unimp
   10696:	0000                	unimp
   10698:	0028                	addi	a0,sp,8
   1069a:	0000                	unimp
   1069c:	008c                	addi	a1,sp,64
   1069e:	0000                	unimp
   106a0:	fe68                	sd	a0,248(a2)
   106a2:	ffff                	.insn	2, 0xffff
   106a4:	005a                	c.slli	zero,0x16
   106a6:	0000                	unimp
   106a8:	4200                	lw	s0,0(a2)
   106aa:	300e                	fld	ft0,224(sp)
   106ac:	8146                	mv	sp,a7
   106ae:	8802                	jr	a6
   106b0:	8904                	.insn	2, 0x8904
   106b2:	4206                	lw	tp,64(sp)
   106b4:	080c                	addi	a1,sp,16
   106b6:	0200                	addi	s0,sp,256
   106b8:	c148                	sw	a0,4(a0)
   106ba:	c842                	sw	a6,16(sp)
   106bc:	020c                	addi	a1,sp,256
   106be:	4230                	lw	a2,64(a2)
   106c0:	42c9                	li	t0,18
   106c2:	000e                	c.slli	zero,0x3
   106c4:	0024                	addi	s1,sp,8
   106c6:	0000                	unimp
   106c8:	00b8                	addi	a4,sp,72
   106ca:	0000                	unimp
   106cc:	fe96                	sd	t0,376(sp)
   106ce:	ffff                	.insn	2, 0xffff
   106d0:	004a                	c.slli	zero,0x12
   106d2:	0000                	unimp
   106d4:	4200                	lw	s0,0(a2)
   106d6:	300e                	fld	ft0,224(sp)
   106d8:	8144                	.insn	2, 0x8144
   106da:	8802                	jr	a6
   106dc:	4204                	lw	s1,0(a2)
   106de:	080c                	addi	a1,sp,16
   106e0:	0200                	addi	s0,sp,256
   106e2:	c13c                	sw	a5,64(a0)
   106e4:	c842                	sw	a6,16(sp)
   106e6:	020c                	addi	a1,sp,256
   106e8:	4230                	lw	a2,64(a2)
   106ea:	000e                	c.slli	zero,0x3

00000000000106ec <__FRAME_END__>:
   106ec:	0000                	unimp
	...

Disassembly of section .preinit_array:

0000000000011df0 <.preinit_array>:
   11df0:	0494                	addi	a3,sp,576
   11df2:	0001                	nop
   11df4:	0000                	unimp
	...

Disassembly of section .init_array:

0000000000011df8 <__frame_dummy_init_array_entry>:
   11df8:	0506                	slli	a0,a0,0x1
   11dfa:	0001                	nop
   11dfc:	0000                	unimp
	...

Disassembly of section .fini_array:

0000000000011e00 <__do_global_dtors_aux_fini_array_entry>:
   11e00:	04e6                	slli	s1,s1,0x19
   11e02:	0001                	nop
   11e04:	0000                	unimp
	...

Disassembly of section .dynamic:

0000000000011e08 <_DYNAMIC>:
   11e08:	0001                	nop
   11e0a:	0000                	unimp
   11e0c:	0000                	unimp
   11e0e:	0000                	unimp
   11e10:	001a                	c.slli	zero,0x6
   11e12:	0000                	unimp
   11e14:	0000                	unimp
   11e16:	0000                	unimp
   11e18:	0020                	addi	s0,sp,8
   11e1a:	0000                	unimp
   11e1c:	0000                	unimp
   11e1e:	0000                	unimp
   11e20:	1df0                	addi	a2,sp,764
   11e22:	0001                	nop
   11e24:	0000                	unimp
   11e26:	0000                	unimp
   11e28:	0021                	c.nop	8
   11e2a:	0000                	unimp
   11e2c:	0000                	unimp
   11e2e:	0000                	unimp
   11e30:	0008                	.insn	2, 0x0008
   11e32:	0000                	unimp
   11e34:	0000                	unimp
   11e36:	0000                	unimp
   11e38:	0019                	c.nop	6
   11e3a:	0000                	unimp
   11e3c:	0000                	unimp
   11e3e:	0000                	unimp
   11e40:	1df8                	addi	a4,sp,764
   11e42:	0001                	nop
   11e44:	0000                	unimp
   11e46:	0000                	unimp
   11e48:	0000001b          	sext.w	zero,zero
   11e4c:	0000                	unimp
   11e4e:	0000                	unimp
   11e50:	0008                	.insn	2, 0x0008
   11e52:	0000                	unimp
   11e54:	0000                	unimp
   11e56:	0000                	unimp
   11e58:	001a                	c.slli	zero,0x6
   11e5a:	0000                	unimp
   11e5c:	0000                	unimp
   11e5e:	0000                	unimp
   11e60:	1e00                	addi	s0,sp,816
   11e62:	0001                	nop
   11e64:	0000                	unimp
   11e66:	0000                	unimp
   11e68:	001c                	.insn	2, 0x001c
   11e6a:	0000                	unimp
   11e6c:	0000                	unimp
   11e6e:	0000                	unimp
   11e70:	0008                	.insn	2, 0x0008
   11e72:	0000                	unimp
   11e74:	0000                	unimp
   11e76:	0000                	unimp
   11e78:	0004                	.insn	2, 0x0004
   11e7a:	0000                	unimp
   11e7c:	0000                	unimp
   11e7e:	0000                	unimp
   11e80:	02b8                	addi	a4,sp,328
   11e82:	0001                	nop
   11e84:	0000                	unimp
   11e86:	0000                	unimp
   11e88:	fef5                	bnez	a3,11e84 <_DYNAMIC+0x7c>
   11e8a:	6fff 0000 0000 02e0 	.insn	22, 0x000500000000000102e0000000006fff
   11e92:	0001 0000 0000 0005 
   11e9a:	0000 0000 0000 
   11ea0:	0370                	addi	a2,sp,396
   11ea2:	0001                	nop
   11ea4:	0000                	unimp
   11ea6:	0000                	unimp
   11ea8:	0006                	c.slli	zero,0x1
   11eaa:	0000                	unimp
   11eac:	0000                	unimp
   11eae:	0000                	unimp
   11eb0:	0310                	addi	a2,sp,384
   11eb2:	0001                	nop
   11eb4:	0000                	unimp
   11eb6:	0000                	unimp
   11eb8:	000a                	c.slli	zero,0x2
   11eba:	0000                	unimp
   11ebc:	0000                	unimp
   11ebe:	0000                	unimp
   11ec0:	004c                	addi	a1,sp,4
   11ec2:	0000                	unimp
   11ec4:	0000                	unimp
   11ec6:	0000                	unimp
   11ec8:	0000000b          	.insn	4, 0x000b
   11ecc:	0000                	unimp
   11ece:	0000                	unimp
   11ed0:	0018                	.insn	2, 0x0018
   11ed2:	0000                	unimp
   11ed4:	0000                	unimp
   11ed6:	0000                	unimp
   11ed8:	0015                	c.nop	5
	...
   11ee6:	0000                	unimp
   11ee8:	00000003          	lb	zero,0(zero) # 0 <__abi_tag-0x10294>
   11eec:	0000                	unimp
   11eee:	0000                	unimp
   11ef0:	1ff0                	addi	a2,sp,1020
   11ef2:	0001                	nop
   11ef4:	0000                	unimp
   11ef6:	0000                	unimp
   11ef8:	0002                	c.slli64	zero
   11efa:	0000                	unimp
   11efc:	0000                	unimp
   11efe:	0000                	unimp
   11f00:	0030                	addi	a2,sp,8
   11f02:	0000                	unimp
   11f04:	0000                	unimp
   11f06:	0000                	unimp
   11f08:	0014                	.insn	2, 0x0014
   11f0a:	0000                	unimp
   11f0c:	0000                	unimp
   11f0e:	0000                	unimp
   11f10:	00000007          	.insn	4, 0x0007
   11f14:	0000                	unimp
   11f16:	0000                	unimp
   11f18:	00000017          	auipc	zero,0x0
   11f1c:	0000                	unimp
   11f1e:	0000                	unimp
   11f20:	03f8                	addi	a4,sp,460
   11f22:	0001                	nop
   11f24:	0000                	unimp
   11f26:	0000                	unimp
   11f28:	00000007          	.insn	4, 0x0007
   11f2c:	0000                	unimp
   11f2e:	0000                	unimp
   11f30:	03f8                	addi	a4,sp,460
   11f32:	0001                	nop
   11f34:	0000                	unimp
   11f36:	0000                	unimp
   11f38:	0008                	.insn	2, 0x0008
   11f3a:	0000                	unimp
   11f3c:	0000                	unimp
   11f3e:	0000                	unimp
   11f40:	0030                	addi	a2,sp,8
   11f42:	0000                	unimp
   11f44:	0000                	unimp
   11f46:	0000                	unimp
   11f48:	0009                	c.nop	2
   11f4a:	0000                	unimp
   11f4c:	0000                	unimp
   11f4e:	0000                	unimp
   11f50:	0018                	.insn	2, 0x0018
   11f52:	0000                	unimp
   11f54:	0000                	unimp
   11f56:	0000                	unimp
   11f58:	fffe                	sd	t6,504(sp)
   11f5a:	6fff 0000 0000 03c8 	.insn	22, 0x6fffffff00000000000103c8000000006fff
   11f62:	0001 0000 0000 ffff 
   11f6a:	6fff 0000 0000 
   11f70:	0001                	nop
   11f72:	0000                	unimp
   11f74:	0000                	unimp
   11f76:	0000                	unimp
   11f78:	fff0                	sd	a2,248(a5)
   11f7a:	6fff 0000 0000 03bc 	.insn	22, 0x000103bc000000006fff
   11f82:	0001 0000 0000 0000 
   11f8a:	0000 0000 0000 
	...

Disassembly of section .got:

0000000000011fe8 <_GLOBAL_OFFSET_TABLE_>:
   11fe8:	1e08                	addi	a0,sp,816
   11fea:	0001                	nop
   11fec:	0000                	unimp
	...

Disassembly of section .got.plt:

0000000000011ff0 <.got.plt>:
   11ff0:	ffff                	.insn	2, 0xffff
   11ff2:	ffff                	.insn	2, 0xffff
   11ff4:	ffff                	.insn	2, 0xffff
   11ff6:	ffff                	.insn	2, 0xffff
	...
   12000:	0430                	addi	a2,sp,520
   12002:	0001                	nop
   12004:	0000                	unimp
   12006:	0000                	unimp
   12008:	0430                	addi	a2,sp,520
   1200a:	0001                	nop
   1200c:	0000                	unimp
	...

Disassembly of section .sdata:

0000000000012010 <__TMC_END__>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	3a434347          	fmsub.d	ft6,ft6,ft4,ft7,rmm
   4:	2820                	fld	fs0,80(s0)
   6:	29554e47          	fmsub.s	ft8,fa0,fs5,ft5,rmm
   a:	3120                	fld	fs0,96(a0)
   c:	2e322e33          	.insn	4, 0x2e322e33
  10:	0030                	addi	a2,sp,8
  12:	3a434347          	fmsub.d	ft6,ft6,ft4,ft7,rmm
  16:	2820                	fld	fs0,80(s0)
  18:	2029                	.insn	2, 0x2029
  1a:	3331                	addiw	t1,t1,-20
  1c:	322e                	fld	ft4,232(sp)
  1e:	302e                	fld	ft0,232(sp)
	...

Disassembly of section .riscv.attributes:

0000000000000000 <.riscv.attributes>:
   0:	6541                	lui	a0,0x10
   2:	0000                	unimp
   4:	7200                	ld	s0,32(a2)
   6:	7369                	lui	t1,0xffffa
   8:	01007663          	bgeu	zero,a6,14 <__abi_tag-0x10280>
   c:	0000005b          	.insn	4, 0x005b
  10:	1004                	addi	s1,sp,32
  12:	7205                	lui	tp,0xfffe1
  14:	3676                	fld	fa2,376(sp)
  16:	6934                	ld	a3,80(a0)
  18:	7032                	.insn	2, 0x7032
  1a:	5f31                	li	t5,-20
  1c:	326d                	addiw	tp,tp,-5 # fffffffffffe0ffb <__global_pointer$+0xfffffffffffce7eb>
  1e:	3070                	fld	fa2,224(s0)
  20:	615f 7032 5f31      	.insn	6, 0x5f317032615f
  26:	3266                	fld	ft4,120(sp)
  28:	3270                	fld	fa2,224(a2)
  2a:	645f 7032 5f32      	.insn	6, 0x5f327032645f
  30:	30703263          	.insn	4, 0x30703263
  34:	7a5f 6369 7273      	.insn	6, 0x727363697a5f
  3a:	7032                	.insn	2, 0x7032
  3c:	5f30                	lw	a2,120(a4)
  3e:	697a                	ld	s2,408(sp)
  40:	6566                	ld	a0,88(sp)
  42:	636e                	ld	t1,216(sp)
  44:	6965                	lui	s2,0x19
  46:	7032                	.insn	2, 0x7032
  48:	5f30                	lw	a2,120(a4)
  4a:	6d7a                	ld	s10,408(sp)
  4c:	756d                	lui	a0,0xffffb
  4e:	316c                	fld	fa1,224(a0)
  50:	3070                	fld	fa2,224(s0)
  52:	7a5f 6161 6f6d      	.insn	6, 0x6f6d61617a5f
  58:	7031                	c.lui	zero,0xfffec
  5a:	5f30                	lw	a2,120(a4)
  5c:	617a                	ld	sp,408(sp)
  5e:	726c                	ld	a1,224(a2)
  60:	70316373          	csrrsi	t1,0x703,2
  64:	0030                	addi	a2,sp,8

Disassembly of section .debug_aranges:

0000000000000000 <.debug_aranges>:
   0:	002c                	addi	a1,sp,8
   2:	0000                	unimp
   4:	0002                	c.slli64	zero
   6:	0000                	unimp
   8:	0000                	unimp
   a:	0008                	.insn	2, 0x0008
   c:	0000                	unimp
   e:	0000                	unimp
  10:	0508                	addi	a0,sp,640
  12:	0001                	nop
  14:	0000                	unimp
  16:	0000                	unimp
  18:	00a4                	addi	s1,sp,72
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
   0:	0119                	addi	sp,sp,6
   2:	0000                	unimp
   4:	0005                	c.nop	1
   6:	0801                	addi	a6,a6,0 # ffffffffffff9000 <__global_pointer$+0xfffffffffffe67f0>
   8:	0000                	unimp
   a:	0000                	unimp
   c:	6c05                	lui	s8,0x1
   e:	0000                	unimp
  10:	1d00                	addi	s0,sp,688
  12:	0000                	unimp
  14:	0000                	unimp
  16:	000c                	.insn	2, 0x000c
  18:	0000                	unimp
  1a:	0508                	addi	a0,sp,640
  1c:	0001                	nop
  1e:	0000                	unimp
  20:	0000                	unimp
  22:	00a4                	addi	s1,sp,72
	...
  2c:	0000                	unimp
  2e:	0801                	addi	a6,a6,0
  30:	00000a07          	.insn	4, 0x0a07
  34:	0100                	addi	s0,sp,128
  36:	0801                	addi	a6,a6,0
  38:	001c                	.insn	2, 0x001c
  3a:	0000                	unimp
  3c:	0201                	addi	tp,tp,0 # 0 <__abi_tag-0x10294>
  3e:	00003d07          	fld	fs10,0(zero) # 0 <__abi_tag-0x10294>
  42:	0100                	addi	s0,sp,128
  44:	0704                	addi	s1,sp,896
  46:	0000000f          	fence	unknown,unknown
  4a:	0101                	addi	sp,sp,0
  4c:	1e06                	slli	t3,t3,0x21
  4e:	0000                	unimp
  50:	0100                	addi	s0,sp,128
  52:	0502                	c.slli64	a0
  54:	0062                	c.slli	zero,0x18
  56:	0000                	unimp
  58:	0406                	slli	s0,s0,0x1
  5a:	6905                	lui	s2,0x1
  5c:	746e                	ld	s0,248(sp)
  5e:	0100                	addi	s0,sp,128
  60:	0508                	addi	a0,sp,640
  62:	0000002f          	.insn	4, 0x002f
  66:	6b02                	ld	s6,0(sp)
  68:	0000                	unimp
  6a:	0100                	addi	s0,sp,128
  6c:	0801                	addi	a6,a6,0
  6e:	0025                	c.nop	9
  70:	0000                	unimp
  72:	00006b07          	.insn	4, 0x6b07
  76:	0200                	addi	s0,sp,256
  78:	0072                	c.slli	zero,0x1c
  7a:	0000                	unimp
  7c:	5008                	lw	a0,32(s0)
  7e:	0000                	unimp
  80:	0200                	addi	s0,sp,256
  82:	580c016b          	.insn	4, 0x580c016b
  86:	0000                	unimp
  88:	9400                	.insn	2, 0x9400
  8a:	0000                	unimp
  8c:	0900                	addi	s0,sp,144
  8e:	00000077          	.insn	4, 0x0077
  92:	000a                	c.slli	zero,0x2
  94:	00002a0b          	.insn	4, 0x2a0b
  98:	0100                	addi	s0,sp,128
  9a:	050a                	slli	a0,a0,0x2
  9c:	0058                	addi	a4,sp,4
  9e:	0000                	unimp
  a0:	0562                	slli	a0,a0,0x18
  a2:	0001                	nop
  a4:	0000                	unimp
  a6:	0000                	unimp
  a8:	004a                	c.slli	zero,0x12
  aa:	0000                	unimp
  ac:	0000                	unimp
  ae:	0000                	unimp
  b0:	9c01                	subw	s0,s0,s0
  b2:	000000eb          	.insn	4, 0x00eb
  b6:	00003803          	ld	a6,0(zero) # 0 <__abi_tag-0x10294>
  ba:	0e00                	addi	s0,sp,784
  bc:	0058                	addi	a4,sp,4
  be:	0000                	unimp
  c0:	9102                	jalr	sp
  c2:	035c                	addi	a5,sp,388
  c4:	00cd                	addi	ra,ra,19
  c6:	0000                	unimp
  c8:	0000eb1b          	.insn	4, 0xeb1b
  cc:	0200                	addi	s0,sp,256
  ce:	5091                	li	ra,-28
  d0:	5704                	lw	s1,40(a4)
  d2:	0000                	unimp
  d4:	0b00                	addi	s0,sp,400
  d6:	00000043          	fmadd.s	ft0,ft0,ft0,ft0,rne
  da:	9102                	jalr	sp
  dc:	046c                	addi	a1,sp,524
  de:	0000                	unimp
  e0:	0000                	unimp
  e2:	430d                	li	t1,3
  e4:	0000                	unimp
  e6:	0200                	addi	s0,sp,256
  e8:	6891                	lui	a7,0x4
  ea:	0200                	addi	s0,sp,256
  ec:	0066                	c.slli	zero,0x19
  ee:	0000                	unimp
  f0:	660c                	ld	a1,8(a2)
  f2:	6269                	lui	tp,0x1a
  f4:	0100                	addi	s0,sp,128
  f6:	00430e03          	lb	t3,4(t1) # ffffffffffffa004 <__global_pointer$+0xfffffffffffe77f4>
  fa:	0000                	unimp
  fc:	0508                	addi	a0,sp,640
  fe:	0001                	nop
 100:	0000                	unimp
 102:	0000                	unimp
 104:	005a                	c.slli	zero,0x16
 106:	0000                	unimp
 108:	0000                	unimp
 10a:	0000                	unimp
 10c:	9c01                	subw	s0,s0,s0
 10e:	6e0d                	lui	t3,0x3
 110:	0100                	addi	s0,sp,128
 112:	00431f03          	lh	t5,4(t1)
 116:	0000                	unimp
 118:	9102                	jalr	sp
 11a:	005c                	addi	a5,sp,4
	...

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
   0:	2401                	sext.w	s0,s0
   2:	0b00                	addi	s0,sp,400
   4:	030b3e0b          	.insn	4, 0x030b3e0b
   8:	000e                	c.slli	zero,0x3
   a:	0200                	addi	s0,sp,256
   c:	210b000f          	.insn	4, 0x210b000f
  10:	4908                	lw	a0,16(a0)
  12:	03000013          	li	zero,48
  16:	0005                	c.nop	1
  18:	213a0e03          	lb	t3,531(s4)
  1c:	3b01                	addiw	s6,s6,-32
  1e:	0a21                	addi	s4,s4,8
  20:	0b39                	addi	s6,s6,14
  22:	1349                	addi	t1,t1,-14
  24:	1802                	slli	a6,a6,0x20
  26:	0000                	unimp
  28:	3404                	fld	fs1,40(s0)
  2a:	0300                	addi	s0,sp,384
  2c:	3a0e                	fld	fs4,224(sp)
  2e:	0121                	addi	sp,sp,8
  30:	21390b3b          	.insn	4, 0x21390b3b
  34:	4910                	lw	a2,16(a0)
  36:	00180213          	addi	tp,a6,1
  3a:	0500                	addi	s0,sp,640
  3c:	0111                	addi	sp,sp,4
  3e:	0e25                	addi	t3,t3,9 # 3009 <__abi_tag-0xd28b>
  40:	1f030b13          	addi	s6,t1,496
  44:	01111f1b          	slliw	t5,sp,0x11
  48:	0712                	slli	a4,a4,0x4
  4a:	1710                	addi	a2,sp,928
  4c:	0000                	unimp
  4e:	2406                	fld	fs0,64(sp)
  50:	0b00                	addi	s0,sp,400
  52:	030b3e0b          	.insn	4, 0x030b3e0b
  56:	0008                	.insn	2, 0x0008
  58:	0700                	addi	s0,sp,896
  5a:	0026                	c.slli	zero,0x9
  5c:	1349                	addi	t1,t1,-14
  5e:	0000                	unimp
  60:	2e08                	fld	fa0,24(a2)
  62:	3f01                	addiw	t5,t5,-32
  64:	0319                	addi	t1,t1,6
  66:	3a0e                	fld	fs4,224(sp)
  68:	39053b0b          	.insn	4, 0x39053b0b
  6c:	4919270b          	.insn	4, 0x4919270b
  70:	01193c13          	sltiu	s8,s2,17
  74:	09000013          	li	zero,144
  78:	0005                	c.nop	1
  7a:	1349                	addi	t1,t1,-14
  7c:	0000                	unimp
  7e:	180a                	slli	a6,a6,0x22
  80:	0000                	unimp
  82:	0b00                	addi	s0,sp,400
  84:	012e                	slli	sp,sp,0xb
  86:	0e03193f 0b3b0b3a 	.insn	8, 0x0b3b0b3a0e03193f
  8e:	0b39                	addi	s6,s6,14
  90:	13491927          	.insn	4, 0x13491927
  94:	0111                	addi	sp,sp,4
  96:	0712                	slli	a4,a4,0x4
  98:	1840                	addi	s0,sp,52
  9a:	197c                	addi	a5,sp,188
  9c:	1301                	addi	t1,t1,-32
  9e:	0000                	unimp
  a0:	2e0c                	fld	fa1,24(a2)
  a2:	3f01                	addiw	t5,t5,-32
  a4:	0319                	addi	t1,t1,6
  a6:	3a08                	fld	fa0,48(a2)
  a8:	390b3b0b          	.insn	4, 0x390b3b0b
  ac:	4919270b          	.insn	4, 0x4919270b
  b0:	12011113          	.insn	4, 0x12011113
  b4:	7c184007          	.insn	4, 0x7c184007
  b8:	0019                	c.nop	6
  ba:	0d00                	addi	s0,sp,656
  bc:	0005                	c.nop	1
  be:	0b3a0803          	lb	a6,179(s4)
  c2:	0b390b3b          	.insn	4, 0x0b390b3b
  c6:	1349                	addi	t1,t1,-14
  c8:	1802                	slli	a6,a6,0x20
  ca:	0000                	unimp
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
   0:	000000bb          	addw	ra,zero,zero
   4:	0005                	c.nop	1
   6:	0008                	.insn	2, 0x0008
   8:	00000033          	add	zero,zero,zero
   c:	0101                	addi	sp,sp,0
   e:	fb01                	bnez	a4,ffffffffffffff1e <__global_pointer$+0xfffffffffffed70e>
  10:	0d0e                	slli	s10,s10,0x3
  12:	0100                	addi	s0,sp,128
  14:	0101                	addi	sp,sp,0
  16:	0001                	nop
  18:	0000                	unimp
  1a:	0001                	nop
  1c:	0100                	addi	s0,sp,128
  1e:	0101                	addi	sp,sp,0
  20:	021f 000c 0000      	.insn	6, 0x000c021f
  26:	002a                	c.slli	zero,0xa
  28:	0000                	unimp
  2a:	0102                	c.slli64	sp
  2c:	021f 030f 0000      	.insn	6, 0x030f021f
	...
  3a:	00000063          	beqz	zero,3a <__abi_tag-0x1025a>
  3e:	0501                	addi	a0,a0,0 # ffffffffffffb000 <__global_pointer$+0xfffffffffffe87f0>
  40:	0022                	c.slli	zero,0x8
  42:	0209                	addi	tp,tp,2 # 1a002 <__global_pointer$+0x77f2>
  44:	0508                	addi	a0,sp,640
  46:	0001                	nop
  48:	0000                	unimp
  4a:	0000                	unimp
  4c:	0514                	addi	a3,sp,640
  4e:	0306                	slli	t1,t1,0x1
  50:	0901                	addi	s2,s2,0 # 1000 <__abi_tag-0xf294>
  52:	0010                	.insn	2, 0x0010
  54:	0501                	addi	a0,a0,0
  56:	030c                	addi	a1,sp,384
  58:	0901                	addi	s2,s2,0
  5a:	000e                	c.slli	zero,0x3
  5c:	0301                	addi	t1,t1,0
  5e:	0902                	c.slli64	s2
  60:	0006                	c.slli	zero,0x1
  62:	0501                	addi	a0,a0,0
  64:	0019                	c.nop	6
  66:	0402                	c.slli64	s0
  68:	0301                	addi	t1,t1,0
  6a:	0900                	addi	s0,sp,144
  6c:	0014                	.insn	2, 0x0014
  6e:	0501                	addi	a0,a0,0
  70:	04020017          	auipc	zero,0x4020
  74:	0302                	c.slli64	t1
  76:	0900                	addi	s0,sp,144
  78:	0012                	c.slli	zero,0x4
  7a:	0501                	addi	a0,a0,0
  7c:	0301                	addi	t1,t1,0
  7e:	0901                	addi	s2,s2,0
  80:	0004                	.insn	2, 0x0004
  82:	0501                	addi	a0,a0,0
  84:	0321                	addi	t1,t1,8
  86:	0902                	c.slli64	s2
  88:	000c                	.insn	2, 0x000c
  8a:	0501                	addi	a0,a0,0
  8c:	031d                	addi	t1,t1,7
  8e:	0901                	addi	s2,s2,0
  90:	0012                	c.slli	zero,0x4
  92:	0501                	addi	a0,a0,0
  94:	09010303          	lb	t1,144(sp)
  98:	000c                	.insn	2, 0x000c
  9a:	0501                	addi	a0,a0,0
  9c:	031c                	addi	a5,sp,384
  9e:	0901                	addi	s2,s2,0
  a0:	0002                	c.slli64	zero
  a2:	0501                	addi	a0,a0,0
  a4:	09010303          	lb	t1,144(sp)
  a8:	000c                	.insn	2, 0x000c
  aa:	0301                	addi	t1,t1,0
  ac:	0901                	addi	s2,s2,0
  ae:	0010                	.insn	2, 0x0010
  b0:	0501                	addi	a0,a0,0
  b2:	0301                	addi	t1,t1,0
  b4:	090a                	slli	s2,s2,0x2
  b6:	0004                	.insn	2, 0x0004
  b8:	0901                	addi	s2,s2,0
  ba:	000a                	c.slli	zero,0x2
  bc:	0100                	addi	s0,sp,128
  be:	Address 0xbe is out of bounds.


Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	7865                	lui	a6,0xffff9
   2:	7469                	lui	s0,0xffffa
   4:	635f 646f 0065      	.insn	6, 0x0065646f635f
   a:	6f6c                	ld	a1,216(a4)
   c:	676e                	ld	a4,216(sp)
   e:	7520                	ld	s0,104(a0)
  10:	736e                	ld	t1,248(sp)
  12:	6769                	lui	a4,0x1a
  14:	656e                	ld	a0,216(sp)
  16:	2064                	fld	fs1,192(s0)
  18:	6e69                	lui	t3,0x1a
  1a:	0074                	addi	a3,sp,12
  1c:	6e75                	lui	t3,0x1d
  1e:	6e676973          	csrrsi	s2,0x6e6,14
  22:	6465                	lui	s0,0x19
  24:	6320                	ld	s0,64(a4)
  26:	6168                	ld	a0,192(a0)
  28:	0072                	c.slli	zero,0x1c
  2a:	616d                	addi	sp,sp,240
  2c:	6e69                	lui	t3,0x1a
  2e:	6c00                	ld	s0,24(s0)
  30:	20676e6f          	jal	t3,76236 <__global_pointer$+0x63a26>
  34:	6e69                	lui	t3,0x1a
  36:	0074                	addi	a3,sp,12
  38:	7261                	lui	tp,0xffff8
  3a:	73006367          	.insn	4, 0x73006367
  3e:	6f68                	ld	a0,216(a4)
  40:	7472                	ld	s0,312(sp)
  42:	7520                	ld	s0,104(a0)
  44:	736e                	ld	t1,248(sp)
  46:	6769                	lui	a4,0x1a
  48:	656e                	ld	a0,216(sp)
  4a:	2064                	fld	fs1,192(s0)
  4c:	6e69                	lui	t3,0x1a
  4e:	0074                	addi	a3,sp,12
  50:	7270                	ld	a2,224(a2)
  52:	6e69                	lui	t3,0x1a
  54:	6674                	ld	a3,200(a2)
  56:	6500                	ld	s0,8(a0)
  58:	6978                	ld	a4,208(a0)
  5a:	5f74                	lw	a3,124(a4)
  5c:	65646f63          	bltu	s0,s6,6ba <__abi_tag-0xfbda>
  60:	0031                	c.nop	12
  62:	726f6873          	csrrsi	a6,mhpmevent6h,30
  66:	2074                	fld	fa3,192(s0)
  68:	6e69                	lui	t3,0x1a
  6a:	0074                	addi	a3,sp,12
  6c:	20554e47          	fmsub.s	ft8,fa0,ft5,ft4,rmm
  70:	20373143          	fmadd.s	ft2,fa4,ft3,ft4,rup
  74:	3331                	addiw	t1,t1,-20
  76:	322e                	fld	ft4,232(sp)
  78:	302e                	fld	ft0,232(sp)
  7a:	2d20                	fld	fs0,88(a0)
  7c:	746d                	lui	s0,0xffffb
  7e:	6e75                	lui	t3,0x1d
  80:	3d65                	addiw	s10,s10,-7
  82:	6f72                	ld	t5,280(sp)
  84:	74656b63          	bltu	a0,t1,7da <__abi_tag-0xfaba>
  88:	2d20                	fld	fs0,88(a0)
  8a:	616d                	addi	sp,sp,240
  8c:	6962                	ld	s2,24(sp)
  8e:	6c3d                	lui	s8,0xf
  90:	3670                	fld	fa2,232(a2)
  92:	6434                	ld	a3,72(s0)
  94:	2d20                	fld	fs0,88(a0)
  96:	696d                	lui	s2,0x1b
  98:	732d6173          	csrrsi	sp,mhpmevent18h,26
  9c:	6570                	ld	a2,200(a0)
  9e:	30323d63          	.insn	4, 0x30323d63
  a2:	3931                	addiw	s2,s2,-20 # 1afec <__global_pointer$+0x87dc>
  a4:	3231                	addiw	tp,tp,-20 # ffffffffffff7fec <__global_pointer$+0xfffffffffffe57dc>
  a6:	3331                	addiw	t1,t1,-20
  a8:	2d20                	fld	fs0,88(a0)
  aa:	616d                	addi	sp,sp,240
  ac:	6372                	ld	t1,280(sp)
  ae:	3d68                	fld	fa0,248(a0)
  b0:	7672                	ld	a2,312(sp)
  b2:	3436                	fld	fs0,360(sp)
  b4:	6d69                	lui	s10,0x1a
  b6:	6661                	lui	a2,0x18
  b8:	6364                	ld	s1,192(a4)
  ba:	7a5f 6369 7273      	.insn	6, 0x727363697a5f
  c0:	7a5f 6669 6e65      	.insn	6, 0x6e6566697a5f
  c6:	20696563          	bltu	s2,t1,2d0 <__abi_tag-0xffc4>
  ca:	672d                	lui	a4,0xb
  cc:	6100                	ld	s0,0(a0)
  ce:	6772                	ld	a4,280(sp)
  d0:	0076                	c.slli	zero,0x1d

Disassembly of section .debug_line_str:

0000000000000000 <.debug_line_str>:
   0:	6966                	ld	s2,88(sp)
   2:	5f62                	lw	t5,56(sp)
   4:	7270                	ld	a2,224(a2)
   6:	6e69                	lui	t3,0x1a
   8:	2e74                	fld	fa3,216(a2)
   a:	682f0063          	beq	t5,sp,68a <__abi_tag-0xfc0a>
   e:	2f656d6f          	jal	s10,56304 <__global_pointer$+0x43af4>
  12:	616d                	addi	sp,sp,240
  14:	7474                	ld	a3,232(s0)
  16:	6968                	ld	a0,208(a0)
  18:	7361                	lui	t1,0xffff8
  1a:	6574652f          	.insn	4, 0x6574652f
  1e:	6e72                	ld	t3,280(sp)
  20:	7369                	lui	t1,0xffffa
  22:	2f6d762f          	.insn	4, 0x2f6d762f
  26:	7361                	lui	t1,0xffff8
  28:	006d                	c.nop	27
  2a:	74706f2f          	.insn	4, 0x74706f2f
  2e:	7369722f          	.insn	4, 0x7369722f
  32:	34367663          	bgeu	a2,gp,37e <__abi_tag-0xff16>
  36:	672d                	lui	a4,0xb
  38:	756e                	ld	a0,248(sp)
  3a:	742d                	lui	s0,0xfffeb
  3c:	636c6f6f          	jal	t5,c6672 <__global_pointer$+0xb3e62>
  40:	6168                	ld	a0,192(a0)
  42:	6e69                	lui	t3,0x1a
  44:	672d                	lui	a4,0xb
  46:	696c                	ld	a1,208(a0)
  48:	6362                	ld	t1,24(sp)
  4a:	622d                	lui	tp,0xb
  4c:	6e69                	lui	t3,0x1a
  4e:	7379732f          	.insn	4, 0x7379732f
  52:	6f72                	ld	t5,280(sp)
  54:	752f746f          	jal	s0,f77a6 <__global_pointer$+0xe4f96>
  58:	692f7273          	csrrci	tp,0x692,30
  5c:	636e                	ld	t1,216(sp)
  5e:	756c                	ld	a1,232(a0)
  60:	6564                	ld	s1,200(a0)
  62:	7300                	ld	s0,32(a4)
  64:	6474                	ld	a3,200(s0)
  66:	6f69                	lui	t5,0x1a
  68:	682e                	ld	a6,200(sp)
	...
