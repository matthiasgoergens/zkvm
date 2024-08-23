
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
   102bc:	0006                	c.slli	zero,0x1
   102be:	0000                	unimp
   102c0:	00000003          	lb	zero,0(zero) # 0 <__abi_tag-0x10294>
   102c4:	0001                	nop
   102c6:	0000                	unimp
   102c8:	0004                	.insn	2, 0x0004
   102ca:	0000                	unimp
   102cc:	0000                	unimp
   102ce:	0000                	unimp
   102d0:	0005                	c.nop	1
   102d2:	0000                	unimp
   102d4:	0000                	unimp
   102d6:	0000                	unimp
   102d8:	0002                	c.slli64	zero
	...

Disassembly of section .gnu.hash:

00000000000102e8 <.gnu.hash>:
   102e8:	00000003          	lb	zero,0(zero) # 0 <__abi_tag-0x10294>
   102ec:	0001                	nop
   102ee:	0000                	unimp
   102f0:	0001                	nop
   102f2:	0000                	unimp
   102f4:	0006                	c.slli	zero,0x1
   102f6:	0000                	unimp
   102f8:	0000                	unimp
   102fa:	2100                	fld	fs0,0(a0)
   102fc:	4000                	lw	s0,0(s0)
   102fe:	1500                	addi	s0,sp,672
   10300:	0001                	nop
   10302:	0000                	unimp
   10304:	0002                	c.slli64	zero
   10306:	0000                	unimp
   10308:	0005                	c.nop	1
   1030a:	0000                	unimp
   1030c:	bb9d                	j	10082 <__abi_tag-0x212>
   1030e:	eebc1c93          	.insn	4, 0xeebc1c93
   10312:	ca90                	sw	a2,16(a3)
   10314:	7e18                	ld	a4,56(a2)
   10316:	870a                	mv	a4,sp
   10318:	2bb9                	addiw	s7,s7,14
   1031a:	4e2f156b          	.insn	4, 0x4e2f156b
   1031e:	f63d                	bnez	a2,1028c <__abi_tag-0x8>

Disassembly of section .dynsym:

0000000000010320 <.dynsym>:
	...
   10338:	0009                	c.nop	2
   1033a:	0000                	unimp
   1033c:	0012                	c.slli	zero,0x4
   1033e:	0000                	unimp
   10340:	04f0                	addi	a2,sp,588
   10342:	0001                	nop
	...
   10350:	0001                	nop
   10352:	0000                	unimp
   10354:	0012                	c.slli	zero,0x4
   10356:	0000                	unimp
   10358:	04e0                	addi	s0,sp,588
   1035a:	0001                	nop
	...
   10368:	0049                	c.nop	18
   1036a:	0000                	unimp
   1036c:	0010                	.insn	2, 0x0010
   1036e:	fff1                	bnez	a5,1034a <__abi_tag+0xb6>
   10370:	2820                	fld	fs0,80(s0)
   10372:	0001                	nop
	...
   10380:	0022                	c.slli	zero,0x8
   10382:	0000                	unimp
   10384:	0012                	c.slli	zero,0x4
   10386:	0000                	unimp
   10388:	0500                	addi	s0,sp,640
   1038a:	0001                	nop
	...
   10398:	0010                	.insn	2, 0x0010
   1039a:	0000                	unimp
   1039c:	0012                	c.slli	zero,0x4
   1039e:	0000                	unimp
   103a0:	04d0                	addi	a2,sp,580
   103a2:	0001                	nop
	...

Disassembly of section .dynstr:

00000000000103b0 <.dynstr>:
   103b0:	7000                	ld	s0,32(s0)
   103b2:	7475                	lui	s0,0xffffd
   103b4:	72616863          	bltu	sp,t1,10ae4 <__FRAME_END__+0x264>
   103b8:	7300                	ld	s0,32(a4)
   103ba:	7274                	ld	a3,224(a2)
   103bc:	656c                	ld	a1,200(a0)
   103be:	006e                	c.slli	zero,0x1b
   103c0:	5f5f 696c 6362      	.insn	6, 0x6362696c5f5f
   103c6:	735f 6174 7472      	.insn	6, 0x74726174735f
   103cc:	6d5f 6961 006e      	.insn	6, 0x006e69616d5f
   103d2:	7270                	ld	a2,224(a2)
   103d4:	6e69                	lui	t3,0x1a
   103d6:	6674                	ld	a3,200(a2)
   103d8:	6c00                	ld	s0,24(s0)
   103da:	6269                	lui	tp,0x1a
   103dc:	6f732e63          	.insn	4, 0x6f732e63
   103e0:	362e                	fld	fa2,232(sp)
   103e2:	4700                	lw	s0,8(a4)
   103e4:	494c                	lw	a1,20(a0)
   103e6:	4342                	lw	t1,16(sp)
   103e8:	325f 322e 0037      	.insn	6, 0x0037322e325f
   103ee:	42494c47          	fmsub.d	fs8,fs2,ft4,fs0,rmm
   103f2:	2e325f43          	.insn	4, 0x2e325f43
   103f6:	5f003433          	.insn	4, 0x5f003433
   103fa:	675f 6f6c 6162      	.insn	6, 0x61626f6c675f
   10400:	5f6c                	lw	a1,124(a4)
   10402:	6f70                	ld	a2,216(a4)
   10404:	6e69                	lui	t3,0x1a
   10406:	6574                	ld	a3,200(a0)
   10408:	2472                	fld	fs0,280(sp)
	...

Disassembly of section .gnu.version:

000000000001040c <.gnu.version>:
   1040c:	0000                	unimp
   1040e:	00030003          	lb	zero,0(t1)
   10412:	0001                	nop
   10414:	00020003          	lb	zero,0(tp) # 1a000 <__global_pointer$+0x77e0>

Disassembly of section .gnu.version_r:

0000000000010418 <.gnu.version_r>:
   10418:	0001                	nop
   1041a:	0002                	c.slli64	zero
   1041c:	0029                	c.nop	10
   1041e:	0000                	unimp
   10420:	0010                	.insn	2, 0x0010
   10422:	0000                	unimp
   10424:	0000                	unimp
   10426:	0000                	unimp
   10428:	06969187          	.insn	4, 0x06969187
   1042c:	0000                	unimp
   1042e:	00330003          	lb	zero,3(t1)
   10432:	0000                	unimp
   10434:	0010                	.insn	2, 0x0010
   10436:	0000                	unimp
   10438:	91b4                	.insn	2, 0x91b4
   1043a:	0696                	slli	a3,a3,0x5
   1043c:	0000                	unimp
   1043e:	0002                	c.slli64	zero
   10440:	003e                	c.slli	zero,0xf
   10442:	0000                	unimp
   10444:	0000                	unimp
	...

Disassembly of section .rela.plt:

0000000000010448 <.rela.plt>:
   10448:	2000                	fld	fs0,0(s0)
   1044a:	0001                	nop
   1044c:	0000                	unimp
   1044e:	0000                	unimp
   10450:	0005                	c.nop	1
   10452:	0000                	unimp
   10454:	0005                	c.nop	1
	...
   1045e:	0000                	unimp
   10460:	2008                	fld	fa0,0(s0)
   10462:	0001                	nop
   10464:	0000                	unimp
   10466:	0000                	unimp
   10468:	0005                	c.nop	1
   1046a:	0000                	unimp
   1046c:	0002                	c.slli64	zero
	...
   10476:	0000                	unimp
   10478:	2010                	fld	fa2,0(s0)
   1047a:	0001                	nop
   1047c:	0000                	unimp
   1047e:	0000                	unimp
   10480:	0005                	c.nop	1
   10482:	0000                	unimp
   10484:	0001                	nop
	...
   1048e:	0000                	unimp
   10490:	2018                	fld	fa4,0(s0)
   10492:	0001                	nop
   10494:	0000                	unimp
   10496:	0000                	unimp
   10498:	0005                	c.nop	1
   1049a:	0000                	unimp
   1049c:	0004                	.insn	2, 0x0004
	...

Disassembly of section .plt:

00000000000104b0 <_PROCEDURE_LINKAGE_TABLE_>:
   104b0:	00002397          	auipc	t2,0x2
   104b4:	41c30333          	sub	t1,t1,t3
   104b8:	b403be03          	ld	t3,-1216(t2) # 11ff0 <.got.plt>
   104bc:	fd430313          	addi	t1,t1,-44
   104c0:	b4038293          	addi	t0,t2,-1216
   104c4:	00135313          	srli	t1,t1,0x1
   104c8:	0082b283          	ld	t0,8(t0)
   104cc:	000e0067          	jr	t3 # 1a000 <__global_pointer$+0x77e0>

00000000000104d0 <__libc_start_main@plt>:
   104d0:	00002e17          	auipc	t3,0x2
   104d4:	b30e3e03          	ld	t3,-1232(t3) # 12000 <__libc_start_main@GLIBC_2.34>
   104d8:	000e0367          	jalr	t1,t3
   104dc:	00000013          	nop

00000000000104e0 <putchar@plt>:
   104e0:	00002e17          	auipc	t3,0x2
   104e4:	b28e3e03          	ld	t3,-1240(t3) # 12008 <putchar@GLIBC_2.27>
   104e8:	000e0367          	jalr	t1,t3
   104ec:	00000013          	nop

00000000000104f0 <strlen@plt>:
   104f0:	00002e17          	auipc	t3,0x2
   104f4:	b20e3e03          	ld	t3,-1248(t3) # 12010 <strlen@GLIBC_2.27>
   104f8:	000e0367          	jalr	t1,t3
   104fc:	00000013          	nop

0000000000010500 <printf@plt>:
   10500:	00002e17          	auipc	t3,0x2
   10504:	b18e3e03          	ld	t3,-1256(t3) # 12018 <printf@GLIBC_2.27>
   10508:	000e0367          	jalr	t1,t3
   1050c:	00000013          	nop

Disassembly of section .text:

0000000000010510 <_start>:
   10510:	024000ef          	jal	10534 <load_gp>
   10514:	87aa                	mv	a5,a0
   10516:	00000517          	auipc	a0,0x0
   1051a:	01c50513          	addi	a0,a0,28 # 10532 <__wrap_main>
   1051e:	6582                	ld	a1,0(sp)
   10520:	0030                	addi	a2,sp,8
   10522:	ff017113          	andi	sp,sp,-16
   10526:	4681                	li	a3,0
   10528:	4701                	li	a4,0
   1052a:	880a                	mv	a6,sp
   1052c:	fa5ff0ef          	jal	104d0 <__libc_start_main@plt>
   10530:	9002                	ebreak

0000000000010532 <__wrap_main>:
   10532:	aa09                	j	10644 <main>

0000000000010534 <load_gp>:
   10534:	00002197          	auipc	gp,0x2
   10538:	2ec18193          	addi	gp,gp,748 # 12820 <__global_pointer$>
   1053c:	8082                	ret
	...

0000000000010540 <deregister_tm_clones>:
   10540:	6549                	lui	a0,0x12
   10542:	6749                	lui	a4,0x12
   10544:	02050793          	addi	a5,a0,32 # 12020 <__TMC_END__>
   10548:	02070713          	addi	a4,a4,32 # 12020 <__TMC_END__>
   1054c:	00f70863          	beq	a4,a5,1055c <deregister_tm_clones+0x1c>
   10550:	00000793          	li	a5,0
   10554:	c781                	beqz	a5,1055c <deregister_tm_clones+0x1c>
   10556:	02050513          	addi	a0,a0,32
   1055a:	8782                	jr	a5
   1055c:	8082                	ret

000000000001055e <register_tm_clones>:
   1055e:	6549                	lui	a0,0x12
   10560:	02050793          	addi	a5,a0,32 # 12020 <__TMC_END__>
   10564:	6749                	lui	a4,0x12
   10566:	02070593          	addi	a1,a4,32 # 12020 <__TMC_END__>
   1056a:	8d9d                	sub	a1,a1,a5
   1056c:	4035d793          	srai	a5,a1,0x3
   10570:	91fd                	srli	a1,a1,0x3f
   10572:	95be                	add	a1,a1,a5
   10574:	8585                	srai	a1,a1,0x1
   10576:	c599                	beqz	a1,10584 <register_tm_clones+0x26>
   10578:	00000793          	li	a5,0
   1057c:	c781                	beqz	a5,10584 <register_tm_clones+0x26>
   1057e:	02050513          	addi	a0,a0,32
   10582:	8782                	jr	a5
   10584:	8082                	ret

0000000000010586 <__do_global_dtors_aux>:
   10586:	1141                	addi	sp,sp,-16
   10588:	e022                	sd	s0,0(sp)
   1058a:	6449                	lui	s0,0x12
   1058c:	02844783          	lbu	a5,40(s0) # 12028 <completed.0>
   10590:	e406                	sd	ra,8(sp)
   10592:	e791                	bnez	a5,1059e <__do_global_dtors_aux+0x18>
   10594:	fadff0ef          	jal	10540 <deregister_tm_clones>
   10598:	4785                	li	a5,1
   1059a:	02f40423          	sb	a5,40(s0)
   1059e:	60a2                	ld	ra,8(sp)
   105a0:	6402                	ld	s0,0(sp)
   105a2:	0141                	addi	sp,sp,16
   105a4:	8082                	ret

00000000000105a6 <frame_dummy>:
   105a6:	bf65                	j	1055e <register_tm_clones>

00000000000105a8 <fib>:
   105a8:	7179                	addi	sp,sp,-48
   105aa:	f406                	sd	ra,40(sp)
   105ac:	f022                	sd	s0,32(sp)
   105ae:	ec26                	sd	s1,24(sp)
   105b0:	1800                	addi	s0,sp,48
   105b2:	87aa                	mv	a5,a0
   105b4:	fcf42e23          	sw	a5,-36(s0)
   105b8:	fdc42783          	lw	a5,-36(s0)
   105bc:	0007871b          	sext.w	a4,a5
   105c0:	4785                	li	a5,1
   105c2:	00e7e563          	bltu	a5,a4,105cc <fib+0x24>
   105c6:	fdc42783          	lw	a5,-36(s0)
   105ca:	a035                	j	105f6 <fib+0x4e>
   105cc:	fdc42783          	lw	a5,-36(s0)
   105d0:	37fd                	addiw	a5,a5,-1
   105d2:	2781                	sext.w	a5,a5
   105d4:	853e                	mv	a0,a5
   105d6:	fd3ff0ef          	jal	105a8 <fib>
   105da:	87aa                	mv	a5,a0
   105dc:	0007849b          	sext.w	s1,a5
   105e0:	fdc42783          	lw	a5,-36(s0)
   105e4:	37f9                	addiw	a5,a5,-2
   105e6:	2781                	sext.w	a5,a5
   105e8:	853e                	mv	a0,a5
   105ea:	fbfff0ef          	jal	105a8 <fib>
   105ee:	87aa                	mv	a5,a0
   105f0:	2781                	sext.w	a5,a5
   105f2:	9fa5                	addw	a5,a5,s1
   105f4:	2781                	sext.w	a5,a5
   105f6:	853e                	mv	a0,a5
   105f8:	70a2                	ld	ra,40(sp)
   105fa:	7402                	ld	s0,32(sp)
   105fc:	64e2                	ld	s1,24(sp)
   105fe:	6145                	addi	sp,sp,48
   10600:	8082                	ret

0000000000010602 <hash>:
   10602:	7139                	addi	sp,sp,-64
   10604:	fc22                	sd	s0,56(sp)
   10606:	0080                	addi	s0,sp,64
   10608:	fca43c23          	sd	a0,-40(s0)
   1060c:	87ae                	mv	a5,a1
   1060e:	fcc43423          	sd	a2,-56(s0)
   10612:	fcf42a23          	sw	a5,-44(s0)
   10616:	47dd                	li	a5,23
   10618:	fef42623          	sw	a5,-20(s0)
   1061c:	fec42783          	lw	a5,-20(s0)
   10620:	86be                	mv	a3,a5
   10622:	fd843783          	ld	a5,-40(s0)
   10626:	fd442703          	lw	a4,-44(s0)
   1062a:	863a                	mv	a2,a4
   1062c:	fc843703          	ld	a4,-56(s0)
   10630:	8536                	mv	a0,a3
   10632:	85be                	mv	a1,a5
   10634:	8632                	mv	a2,a2
   10636:	86ba                	mv	a3,a4
   10638:	9002                	ebreak
   1063a:	0001                	nop
   1063c:	853e                	mv	a0,a5
   1063e:	7462                	ld	s0,56(sp)
   10640:	6121                	addi	sp,sp,64
   10642:	8082                	ret

0000000000010644 <main>:
   10644:	711d                	addi	sp,sp,-96
   10646:	ec86                	sd	ra,88(sp)
   10648:	e8a2                	sd	s0,80(sp)
   1064a:	1080                	addi	s0,sp,96
   1064c:	87aa                	mv	a5,a0
   1064e:	fab43023          	sd	a1,-96(s0)
   10652:	faf42623          	sw	a5,-84(s0)
   10656:	4529                	li	a0,10
   10658:	f51ff0ef          	jal	105a8 <fib>
   1065c:	87aa                	mv	a5,a0
   1065e:	fef42423          	sw	a5,-24(s0)
   10662:	fe842783          	lw	a5,-24(s0)
   10666:	85be                	mv	a1,a5
   10668:	67c1                	lui	a5,0x10
   1066a:	70078513          	addi	a0,a5,1792 # 10700 <_IO_stdin_used+0x8>
   1066e:	e93ff0ef          	jal	10500 <printf@plt>
   10672:	67c1                	lui	a5,0x10
   10674:	71078793          	addi	a5,a5,1808 # 10710 <_IO_stdin_used+0x18>
   10678:	fef43023          	sd	a5,-32(s0)
   1067c:	fe043503          	ld	a0,-32(s0)
   10680:	e71ff0ef          	jal	104f0 <strlen@plt>
   10684:	87aa                	mv	a5,a0
   10686:	fcf42e23          	sw	a5,-36(s0)
   1068a:	fb840713          	addi	a4,s0,-72
   1068e:	fdc42783          	lw	a5,-36(s0)
   10692:	863a                	mv	a2,a4
   10694:	85be                	mv	a1,a5
   10696:	fe043503          	ld	a0,-32(s0)
   1069a:	f69ff0ef          	jal	10602 <hash>
   1069e:	67c1                	lui	a5,0x10
   106a0:	72078513          	addi	a0,a5,1824 # 10720 <_IO_stdin_used+0x28>
   106a4:	e5dff0ef          	jal	10500 <printf@plt>
   106a8:	fe042623          	sw	zero,-20(s0)
   106ac:	a01d                	j	106d2 <main+0x8e>
   106ae:	fec42783          	lw	a5,-20(s0)
   106b2:	17c1                	addi	a5,a5,-16
   106b4:	97a2                	add	a5,a5,s0
   106b6:	fc87c783          	lbu	a5,-56(a5)
   106ba:	2781                	sext.w	a5,a5
   106bc:	85be                	mv	a1,a5
   106be:	67c1                	lui	a5,0x10
   106c0:	73078513          	addi	a0,a5,1840 # 10730 <_IO_stdin_used+0x38>
   106c4:	e3dff0ef          	jal	10500 <printf@plt>
   106c8:	fec42783          	lw	a5,-20(s0)
   106cc:	2785                	addiw	a5,a5,1
   106ce:	fef42623          	sw	a5,-20(s0)
   106d2:	fec42783          	lw	a5,-20(s0)
   106d6:	0007871b          	sext.w	a4,a5
   106da:	47fd                	li	a5,31
   106dc:	fce7d9e3          	bge	a5,a4,106ae <main+0x6a>
   106e0:	4529                	li	a0,10
   106e2:	dffff0ef          	jal	104e0 <putchar@plt>
   106e6:	4781                	li	a5,0
   106e8:	853e                	mv	a0,a5
   106ea:	60e6                	ld	ra,88(sp)
   106ec:	6446                	ld	s0,80(sp)
   106ee:	6125                	addi	sp,sp,96
   106f0:	8082                	ret

Disassembly of section .rodata:

00000000000106f8 <_IO_stdin_used>:
   106f8:	0001                	nop
   106fa:	0002                	c.slli64	zero
   106fc:	0000                	unimp
   106fe:	0000                	unimp
   10700:	6966                	ld	s2,88(sp)
   10702:	3a62                	fld	fs4,56(sp)
   10704:	2520                	fld	fs0,72(a0)
   10706:	0a64                	addi	s1,sp,284
	...
   10710:	6548                	ld	a0,136(a0)
   10712:	6c6c                	ld	a1,216(s0)
   10714:	57202c6f          	jal	s8,12c86 <__global_pointer$+0x466>
   10718:	646c726f          	jal	tp,d7d5e <__global_pointer$+0xc553e>
   1071c:	0a21                	addi	s4,s4,8
   1071e:	0000                	unimp
   10720:	7074756f          	jal	a0,58626 <__global_pointer$+0x45e06>
   10724:	7475                	lui	s0,0xffffd
   10726:	203a                	fld	ft0,392(sp)
	...
   10730:	7825                	lui	a6,0xfffe9
   10732:	0020                	addi	s0,sp,8

Disassembly of section .eh_frame_hdr:

0000000000010734 <__GNU_EH_FRAME_HDR>:
   10734:	1b01                	addi	s6,s6,-32
   10736:	00483b03          	ld	s6,4(a6) # fffffffffffe9004 <__global_pointer$+0xfffffffffffd67e4>
   1073a:	0000                	unimp
   1073c:	0008                	.insn	2, 0x0008
   1073e:	0000                	unimp
   10740:	fddc                	sd	a5,184(a1)
   10742:	ffff                	.insn	2, 0xffff
   10744:	0060                	addi	s0,sp,12
   10746:	0000                	unimp
   10748:	fe0c                	sd	a1,56(a2)
   1074a:	ffff                	.insn	2, 0xffff
   1074c:	0074                	addi	a3,sp,12
   1074e:	0000                	unimp
   10750:	fe2a                	sd	a0,312(sp)
   10752:	ffff                	.insn	2, 0xffff
   10754:	0088                	addi	a0,sp,64
   10756:	0000                	unimp
   10758:	fe52                	sd	s4,312(sp)
   1075a:	ffff                	.insn	2, 0xffff
   1075c:	009c                	addi	a5,sp,64
   1075e:	0000                	unimp
   10760:	fe72                	sd	t3,312(sp)
   10762:	ffff                	.insn	2, 0xffff
   10764:	00c0                	addi	s0,sp,68
   10766:	0000                	unimp
   10768:	fe74                	sd	a3,248(a2)
   1076a:	ffff                	.insn	2, 0xffff
   1076c:	00d4                	addi	a3,sp,68
   1076e:	0000                	unimp
   10770:	fece                	sd	s3,376(sp)
   10772:	ffff                	.insn	2, 0xffff
   10774:	0100                	addi	s0,sp,128
   10776:	0000                	unimp
   10778:	ff10                	sd	a2,56(a4)
   1077a:	ffff                	.insn	2, 0xffff
   1077c:	0124                	addi	s1,sp,136
	...

Disassembly of section .eh_frame:

0000000000010780 <__FRAME_END__-0x100>:
   10780:	0010                	.insn	2, 0x0010
   10782:	0000                	unimp
   10784:	0000                	unimp
   10786:	0000                	unimp
   10788:	00527a03          	.insn	4, 0x00527a03
   1078c:	7c01                	lui	s8,0xfffe0
   1078e:	0101                	addi	sp,sp,0
   10790:	00020c1b          	sext.w	s8,tp
   10794:	0010                	.insn	2, 0x0010
   10796:	0000                	unimp
   10798:	0018                	.insn	2, 0x0018
   1079a:	0000                	unimp
   1079c:	fd74                	sd	a3,248(a0)
   1079e:	ffff                	.insn	2, 0xffff
   107a0:	0022                	c.slli	zero,0x8
   107a2:	0000                	unimp
   107a4:	0700                	addi	s0,sp,896
   107a6:	0001                	nop
   107a8:	0010                	.insn	2, 0x0010
   107aa:	0000                	unimp
   107ac:	002c                	addi	a1,sp,8
   107ae:	0000                	unimp
   107b0:	fd90                	sd	a2,56(a1)
   107b2:	ffff                	.insn	2, 0xffff
   107b4:	001e                	c.slli	zero,0x7
   107b6:	0000                	unimp
   107b8:	0000                	unimp
   107ba:	0000                	unimp
   107bc:	0010                	.insn	2, 0x0010
   107be:	0000                	unimp
   107c0:	0040                	addi	s0,sp,4
   107c2:	0000                	unimp
   107c4:	fd9a                	sd	t1,248(sp)
   107c6:	ffff                	.insn	2, 0xffff
   107c8:	0028                	addi	a0,sp,8
   107ca:	0000                	unimp
   107cc:	0000                	unimp
   107ce:	0000                	unimp
   107d0:	0020                	addi	s0,sp,8
   107d2:	0000                	unimp
   107d4:	0054                	addi	a3,sp,4
   107d6:	0000                	unimp
   107d8:	fdae                	sd	a1,248(sp)
   107da:	ffff                	.insn	2, 0xffff
   107dc:	0020                	addi	s0,sp,8
   107de:	0000                	unimp
   107e0:	4200                	lw	s0,0(a2)
   107e2:	100e                	c.slli	zero,0x23
   107e4:	8842                	mv	a6,a6
   107e6:	4804                	lw	s1,16(s0)
   107e8:	0281                	addi	t0,t0,0
   107ea:	c14e                	sw	s3,128(sp)
   107ec:	c842                	sw	a6,16(sp)
   107ee:	0e42                	slli	t3,t3,0x10
   107f0:	0000                	unimp
   107f2:	0000                	unimp
   107f4:	0010                	.insn	2, 0x0010
   107f6:	0000                	unimp
   107f8:	0078                	addi	a4,sp,12
   107fa:	0000                	unimp
   107fc:	fdaa                	sd	a0,248(sp)
   107fe:	ffff                	.insn	2, 0xffff
   10800:	0002                	c.slli64	zero
   10802:	0000                	unimp
   10804:	0000                	unimp
   10806:	0000                	unimp
   10808:	0028                	addi	a0,sp,8
   1080a:	0000                	unimp
   1080c:	008c                	addi	a1,sp,64
   1080e:	0000                	unimp
   10810:	fd98                	sd	a4,56(a1)
   10812:	ffff                	.insn	2, 0xffff
   10814:	005a                	c.slli	zero,0x16
   10816:	0000                	unimp
   10818:	4200                	lw	s0,0(a2)
   1081a:	300e                	fld	ft0,224(sp)
   1081c:	8146                	mv	sp,a7
   1081e:	8802                	jr	a6
   10820:	8904                	.insn	2, 0x8904
   10822:	4206                	lw	tp,64(sp)
   10824:	080c                	addi	a1,sp,16
   10826:	0200                	addi	s0,sp,256
   10828:	c148                	sw	a0,4(a0)
   1082a:	c842                	sw	a6,16(sp)
   1082c:	020c                	addi	a1,sp,256
   1082e:	4230                	lw	a2,64(a2)
   10830:	42c9                	li	t0,18
   10832:	000e                	c.slli	zero,0x3
   10834:	0020                	addi	s0,sp,8
   10836:	0000                	unimp
   10838:	00b8                	addi	a4,sp,72
   1083a:	0000                	unimp
   1083c:	fdc6                	sd	a7,248(sp)
   1083e:	ffff                	.insn	2, 0xffff
   10840:	0042                	c.slli	zero,0x10
   10842:	0000                	unimp
   10844:	4200                	lw	s0,0(a2)
   10846:	400e                	.insn	2, 0x400e
   10848:	8842                	mv	a6,a6
   1084a:	4202                	lw	tp,0(sp)
   1084c:	080c                	addi	a1,sp,16
   1084e:	7800                	ld	s0,48(s0)
   10850:	0cc8                	addi	a0,sp,596
   10852:	4002                	.insn	2, 0x4002
   10854:	0e42                	slli	t3,t3,0x10
   10856:	0000                	unimp
   10858:	0024                	addi	s1,sp,8
   1085a:	0000                	unimp
   1085c:	00dc                	addi	a5,sp,68
   1085e:	0000                	unimp
   10860:	fde4                	sd	s1,248(a1)
   10862:	ffff                	.insn	2, 0xffff
   10864:	00ae                	slli	ra,ra,0xb
   10866:	0000                	unimp
   10868:	4200                	lw	s0,0(a2)
   1086a:	600e                	.insn	2, 0x600e
   1086c:	8144                	.insn	2, 0x8144
   1086e:	8802                	jr	a6
   10870:	4204                	lw	s1,0(a2)
   10872:	080c                	addi	a1,sp,16
   10874:	0200                	addi	s0,sp,256
   10876:	c1a0                	sw	s0,64(a1)
   10878:	c842                	sw	a6,16(sp)
   1087a:	020c                	addi	a1,sp,256
   1087c:	4260                	lw	s0,68(a2)
   1087e:	000e                	c.slli	zero,0x3

0000000000010880 <__FRAME_END__>:
   10880:	0000                	unimp
	...

Disassembly of section .preinit_array:

0000000000011df0 <.preinit_array>:
   11df0:	0534                	addi	a3,sp,648
   11df2:	0001                	nop
   11df4:	0000                	unimp
	...

Disassembly of section .init_array:

0000000000011df8 <__frame_dummy_init_array_entry>:
   11df8:	05a6                	slli	a1,a1,0x9
   11dfa:	0001                	nop
   11dfc:	0000                	unimp
	...

Disassembly of section .fini_array:

0000000000011e00 <__do_global_dtors_aux_fini_array_entry>:
   11e00:	0586                	slli	a1,a1,0x1
   11e02:	0001                	nop
   11e04:	0000                	unimp
	...

Disassembly of section .dynamic:

0000000000011e08 <_DYNAMIC>:
   11e08:	0001                	nop
   11e0a:	0000                	unimp
   11e0c:	0000                	unimp
   11e0e:	0000                	unimp
   11e10:	0029                	c.nop	10
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
   11e8a:	6fff 0000 0000 02e8 	.insn	22, 0x000500000000000102e8000000006fff
   11e92:	0001 0000 0000 0005 
   11e9a:	0000 0000 0000 
   11ea0:	03b0                	addi	a2,sp,456
   11ea2:	0001                	nop
   11ea4:	0000                	unimp
   11ea6:	0000                	unimp
   11ea8:	0006                	c.slli	zero,0x1
   11eaa:	0000                	unimp
   11eac:	0000                	unimp
   11eae:	0000                	unimp
   11eb0:	0320                	addi	s0,sp,392
   11eb2:	0001                	nop
   11eb4:	0000                	unimp
   11eb6:	0000                	unimp
   11eb8:	000a                	c.slli	zero,0x2
   11eba:	0000                	unimp
   11ebc:	0000                	unimp
   11ebe:	0000                	unimp
   11ec0:	0000005b          	.insn	4, 0x005b
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
   11f00:	0060                	addi	s0,sp,12
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
   11f20:	0448                	addi	a0,sp,516
   11f22:	0001                	nop
   11f24:	0000                	unimp
   11f26:	0000                	unimp
   11f28:	00000007          	.insn	4, 0x0007
   11f2c:	0000                	unimp
   11f2e:	0000                	unimp
   11f30:	0448                	addi	a0,sp,516
   11f32:	0001                	nop
   11f34:	0000                	unimp
   11f36:	0000                	unimp
   11f38:	0008                	.insn	2, 0x0008
   11f3a:	0000                	unimp
   11f3c:	0000                	unimp
   11f3e:	0000                	unimp
   11f40:	0060                	addi	s0,sp,12
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
   11f5a:	6fff 0000 0000 0418 	.insn	22, 0x6fffffff0000000000010418000000006fff
   11f62:	0001 0000 0000 ffff 
   11f6a:	6fff 0000 0000 
   11f70:	0001                	nop
   11f72:	0000                	unimp
   11f74:	0000                	unimp
   11f76:	0000                	unimp
   11f78:	fff0                	sd	a2,248(a5)
   11f7a:	6fff 0000 0000 040c 	.insn	22, 0x0001040c000000006fff
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
   12000:	04b0                	addi	a2,sp,584
   12002:	0001                	nop
   12004:	0000                	unimp
   12006:	0000                	unimp
   12008:	04b0                	addi	a2,sp,584
   1200a:	0001                	nop
   1200c:	0000                	unimp
   1200e:	0000                	unimp
   12010:	04b0                	addi	a2,sp,584
   12012:	0001                	nop
   12014:	0000                	unimp
   12016:	0000                	unimp
   12018:	04b0                	addi	a2,sp,584
   1201a:	0001                	nop
   1201c:	0000                	unimp
	...

Disassembly of section .sdata:

0000000000012020 <__TMC_END__>:
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
  1c:	326d                	addiw	tp,tp,-5 # fffffffffffe0ffb <__global_pointer$+0xfffffffffffce7db>
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
  10:	05a8                	addi	a0,sp,712
  12:	0001                	nop
  14:	0000                	unimp
  16:	0000                	unimp
  18:	014a                	slli	sp,sp,0x12
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
   0:	000001e7          	jalr	gp,zero # 0 <__abi_tag-0x10294>
   4:	0005                	c.nop	1
   6:	0801                	addi	a6,a6,0
   8:	0000                	unimp
   a:	0000                	unimp
   c:	1209                	addi	tp,tp,-30 # ffffffffffffffe2 <__global_pointer$+0xfffffffffffed7c2>
   e:	0000                	unimp
  10:	1d00                	addi	s0,sp,688
  12:	0000                	unimp
  14:	0000                	unimp
  16:	000c                	.insn	2, 0x000c
  18:	0000                	unimp
  1a:	05a8                	addi	a0,sp,712
  1c:	0001                	nop
  1e:	0000                	unimp
  20:	0000                	unimp
  22:	014a                	slli	sp,sp,0x12
	...
  2c:	0000                	unimp
  2e:	0101                	addi	sp,sp,0
  30:	9108                	.insn	2, 0x9108
  32:	0000                	unimp
  34:	0100                	addi	s0,sp,128
  36:	0702                	c.slli64	a4
  38:	00b4                	addi	a3,sp,72
  3a:	0000                	unimp
  3c:	0401                	addi	s0,s0,0 # ffffffffffffd000 <__global_pointer$+0xfffffffffffea7e0>
  3e:	00007d07          	.insn	4, 0x7d07
  42:	0100                	addi	s0,sp,128
  44:	0708                	addi	a0,sp,896
  46:	0078                	addi	a4,sp,12
  48:	0000                	unimp
  4a:	0101                	addi	sp,sp,0
  4c:	9306                	add	t1,t1,ra
  4e:	0000                	unimp
  50:	0100                	addi	s0,sp,128
  52:	0502                	c.slli64	a0
  54:	000000d3          	fadd.s	ft1,ft0,ft0,rne
  58:	040a                	slli	s0,s0,0x2
  5a:	6905                	lui	s2,0x1
  5c:	746e                	ld	s0,248(sp)
  5e:	0100                	addi	s0,sp,128
  60:	0508                	addi	a0,sp,640
  62:	009f 0000 6b02      	.insn	6, 0x6b020000009f
  68:	0000                	unimp
  6a:	0100                	addi	s0,sp,128
  6c:	0801                	addi	a6,a6,0
  6e:	009a                	slli	ra,ra,0x6
  70:	0000                	unimp
  72:	00006b0b          	.insn	4, 0x6b0b
  76:	0c00                	addi	s0,sp,528
  78:	0000                	unimp
  7a:	0000                	unimp
  7c:	d604                	sw	s1,40(a2)
  7e:	00004317          	auipc	t1,0x4
  82:	0200                	addi	s0,sp,256
  84:	0072                	c.slli	zero,0x1c
  86:	0000                	unimp
  88:	0000ad07          	flw	fs10,0(ra)
  8c:	0200                	addi	s0,sp,256
  8e:	770f0197          	auipc	gp,0x770f0
  92:	0000                	unimp
  94:	9f00                	.insn	2, 0x9f00
  96:	0000                	unimp
  98:	0800                	addi	s0,sp,16
  9a:	00000083          	lb	ra,0(zero) # 0 <__abi_tag-0x10294>
  9e:	0700                	addi	s0,sp,896
  a0:	000000c7          	fmsub.s	ft1,ft0,ft0,ft0,rne
  a4:	0c016b03          	lwu	s6,192(sp)
  a8:	0058                	addi	a4,sp,4
  aa:	0000                	unimp
  ac:	000000b7          	lui	ra,0x0
  b0:	8308                	.insn	2, 0x8308
  b2:	0000                	unimp
  b4:	0d00                	addi	s0,sp,656
  b6:	0e00                	addi	s0,sp,784
  b8:	000d                	c.nop	3
  ba:	0000                	unimp
  bc:	2201                	sext.w	tp,tp
  be:	5805                	li	a6,-31
  c0:	0000                	unimp
  c2:	4400                	lw	s0,8(s0)
  c4:	0106                	slli	sp,sp,0x1
  c6:	0000                	unimp
  c8:	0000                	unimp
  ca:	ae00                	fsd	fs0,24(a2)
  cc:	0000                	unimp
  ce:	0000                	unimp
  d0:	0000                	unimp
  d2:	0100                	addi	s0,sp,128
  d4:	4f9c                	lw	a5,24(a5)
  d6:	0001                	nop
  d8:	0300                	addi	s0,sp,384
  da:	00a8                	addi	a0,sp,72
  dc:	0000                	unimp
  de:	0e22                	slli	t3,t3,0x8
  e0:	0058                	addi	a4,sp,4
  e2:	0000                	unimp
  e4:	7fac9103          	lh	sp,2042(s9)
  e8:	0000ce03          	lbu	t3,0(ra) # 0 <__abi_tag-0x10294>
  ec:	2200                	fld	fs0,0(a2)
  ee:	00014f1b          	.insn	4, 0x00014f1b
  f2:	0300                	addi	s0,sp,384
  f4:	a091                	j	138 <__abi_tag-0x1015c>
  f6:	047f 0007 0000 1023 	.insn	10, 0x003c102300000007047f
  fe:	003c 
 100:	0000                	unimp
 102:	9102                	jalr	sp
 104:	0568                	addi	a0,sp,652
 106:	00727473          	csrrci	s0,0x7,4
 10a:	0925                	addi	s2,s2,9 # 1009 <__abi_tag-0xf28b>
 10c:	0066                	c.slli	zero,0x19
 10e:	0000                	unimp
 110:	9102                	jalr	sp
 112:	0560                	addi	s0,sp,652
 114:	656c                	ld	a1,200(a0)
 116:	006e                	c.slli	zero,0x1b
 118:	1026                	c.slli	zero,0x29
 11a:	003c                	addi	a5,sp,8
 11c:	0000                	unimp
 11e:	9102                	jalr	sp
 120:	045c                	addi	a5,sp,516
 122:	008a                	slli	ra,ra,0x2
 124:	0000                	unimp
 126:	01540827          	.insn	4, 0x01540827
 12a:	0000                	unimp
 12c:	7fb89103          	lh	sp,2043(a7)
 130:	0106a80f          	.insn	4, 0x0106a80f
 134:	0000                	unimp
 136:	0000                	unimp
 138:	3800                	fld	fs0,48(s0)
 13a:	0000                	unimp
 13c:	0000                	unimp
 13e:	0000                	unimp
 140:	0500                	addi	s0,sp,640
 142:	0069                	c.nop	26
 144:	0b2a                	slli	s6,s6,0xa
 146:	0058                	addi	a4,sp,4
 148:	0000                	unimp
 14a:	9102                	jalr	sp
 14c:	006c                	addi	a1,sp,12
 14e:	0200                	addi	s0,sp,256
 150:	0066                	c.slli	zero,0x19
 152:	0000                	unimp
 154:	6b10                	ld	a2,16(a4)
 156:	0000                	unimp
 158:	6400                	ld	s0,8(s0)
 15a:	0001                	nop
 15c:	1100                	addi	s0,sp,160
 15e:	00000043          	fmadd.s	ft0,ft0,ft0,ft0,rne
 162:	001f 7312 0000      	.insn	6, 0x7312001f
 168:	0100                	addi	s0,sp,128
 16a:	050c                	addi	a1,sp,640
 16c:	0058                	addi	a4,sp,4
 16e:	0000                	unimp
 170:	0602                	c.slli64	a2
 172:	0001                	nop
 174:	0000                	unimp
 176:	0000                	unimp
 178:	0042                	c.slli	zero,0x10
 17a:	0000                	unimp
 17c:	0000                	unimp
 17e:	0000                	unimp
 180:	9c01                	subw	s0,s0,s0
 182:	000001bf 72747306 	.insn	8, 0x72747306000001bf
 18a:	0c00                	addi	s0,sp,528
 18c:	6610                	ld	a2,8(a2)
 18e:	0000                	unimp
 190:	0200                	addi	s0,sp,256
 192:	5891                	li	a7,-28
 194:	6c06                	ld	s8,64(sp)
 196:	6e65                	lui	t3,0x19
 198:	0c00                	addi	s0,sp,528
 19a:	3c22                	fld	fs8,40(sp)
 19c:	0000                	unimp
 19e:	0200                	addi	s0,sp,256
 1a0:	5491                	li	s1,-28
 1a2:	00008a03          	lb	s4,0(ra)
 1a6:	0c00                	addi	s0,sp,528
 1a8:	662d                	lui	a2,0xb
 1aa:	0000                	unimp
 1ac:	0200                	addi	s0,sp,256
 1ae:	4891                	li	a7,4
 1b0:	dd04                	sw	s1,56(a0)
 1b2:	0000                	unimp
 1b4:	0d00                	addi	s0,sp,656
 1b6:	00005807          	.insn	4, 0x5807
 1ba:	0200                	addi	s0,sp,256
 1bc:	6c91                	lui	s9,0x4
 1be:	1300                	addi	s0,sp,416
 1c0:	6966                	ld	s2,88(sp)
 1c2:	0062                	c.slli	zero,0x18
 1c4:	0501                	addi	a0,a0,0 # ffffffffffffb000 <__global_pointer$+0xfffffffffffe87e0>
 1c6:	3c0e                	fld	fs8,224(sp)
 1c8:	0000                	unimp
 1ca:	a800                	fsd	fs0,16(s0)
 1cc:	0105                	addi	sp,sp,1
 1ce:	0000                	unimp
 1d0:	0000                	unimp
 1d2:	5a00                	lw	s0,48(a2)
 1d4:	0000                	unimp
 1d6:	0000                	unimp
 1d8:	0000                	unimp
 1da:	0100                	addi	s0,sp,128
 1dc:	069c                	addi	a5,sp,832
 1de:	006e                	c.slli	zero,0x1b
 1e0:	1f05                	addi	t5,t5,-31
 1e2:	003c                	addi	a5,sp,8
 1e4:	0000                	unimp
 1e6:	9102                	jalr	sp
 1e8:	005c                	addi	a5,sp,4
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
  1e:	490b390b          	.insn	4, 0x490b390b
  22:	00180213          	addi	tp,a6,1
  26:	0400                	addi	s0,sp,512
  28:	0034                	addi	a3,sp,8
  2a:	213a0e03          	lb	t3,531(s4)
  2e:	3b01                	addiw	s6,s6,-32
  30:	490b390b          	.insn	4, 0x490b390b
  34:	00180213          	addi	tp,a6,1
  38:	0500                	addi	s0,sp,640
  3a:	0034                	addi	a3,sp,8
  3c:	213a0803          	lb	a6,531(s4)
  40:	3b01                	addiw	s6,s6,-32
  42:	490b390b          	.insn	4, 0x490b390b
  46:	00180213          	addi	tp,a6,1
  4a:	0600                	addi	s0,sp,768
  4c:	0005                	c.nop	1
  4e:	213a0803          	lb	a6,531(s4)
  52:	3b01                	addiw	s6,s6,-32
  54:	490b390b          	.insn	4, 0x490b390b
  58:	00180213          	addi	tp,a6,1
  5c:	0700                	addi	s0,sp,896
  5e:	012e                	slli	sp,sp,0xb
  60:	0e03193f 053b0b3a 	.insn	8, 0x053b0b3a0e03193f
  68:	0b39                	addi	s6,s6,14
  6a:	13491927          	.insn	4, 0x13491927
  6e:	193c                	addi	a5,sp,184
  70:	1301                	addi	t1,t1,-32 # 405e <__abi_tag-0xc236>
  72:	0000                	unimp
  74:	0508                	addi	a0,sp,640
  76:	4900                	lw	s0,16(a0)
  78:	09000013          	li	zero,144
  7c:	0111                	addi	sp,sp,4
  7e:	0e25                	addi	t3,t3,9 # 19009 <__global_pointer$+0x67e9>
  80:	1f030b13          	addi	s6,t1,496
  84:	01111f1b          	slliw	t5,sp,0x11
  88:	0712                	slli	a4,a4,0x4
  8a:	1710                	addi	a2,sp,928
  8c:	0000                	unimp
  8e:	240a                	fld	fs0,128(sp)
  90:	0b00                	addi	s0,sp,400
  92:	030b3e0b          	.insn	4, 0x030b3e0b
  96:	0008                	.insn	2, 0x0008
  98:	0b00                	addi	s0,sp,400
  9a:	0026                	c.slli	zero,0x9
  9c:	1349                	addi	t1,t1,-14
  9e:	0000                	unimp
  a0:	160c                	addi	a1,sp,800
  a2:	0300                	addi	s0,sp,384
  a4:	3a0e                	fld	fs4,224(sp)
  a6:	390b3b0b          	.insn	4, 0x390b3b0b
  aa:	0013490b          	.insn	4, 0x0013490b
  ae:	0d00                	addi	s0,sp,656
  b0:	0018                	.insn	2, 0x0018
  b2:	0000                	unimp
  b4:	2e0e                	fld	ft8,192(sp)
  b6:	3f01                	addiw	t5,t5,-32
  b8:	0319                	addi	t1,t1,6
  ba:	3a0e                	fld	fs4,224(sp)
  bc:	390b3b0b          	.insn	4, 0x390b3b0b
  c0:	4919270b          	.insn	4, 0x4919270b
  c4:	12011113          	.insn	4, 0x12011113
  c8:	7c184007          	.insn	4, 0x7c184007
  cc:	0119                	addi	sp,sp,6
  ce:	0f000013          	li	zero,240
  d2:	0111010b          	.insn	4, 0x0111010b
  d6:	0712                	slli	a4,a4,0x4
  d8:	0000                	unimp
  da:	0110                	addi	a2,sp,128
  dc:	4901                	li	s2,0
  de:	00130113          	addi	sp,t1,1
  e2:	1100                	addi	s0,sp,160
  e4:	0021                	c.nop	8
  e6:	1349                	addi	t1,t1,-14
  e8:	00000b2f          	.insn	4, 0x0b2f
  ec:	2e12                	fld	ft8,256(sp)
  ee:	3f01                	addiw	t5,t5,-32
  f0:	0319                	addi	t1,t1,6
  f2:	3a0e                	fld	fs4,224(sp)
  f4:	390b3b0b          	.insn	4, 0x390b3b0b
  f8:	4919270b          	.insn	4, 0x4919270b
  fc:	12011113          	.insn	4, 0x12011113
 100:	7a184007          	.insn	4, 0x7a184007
 104:	0119                	addi	sp,sp,6
 106:	13000013          	li	zero,304
 10a:	012e                	slli	sp,sp,0xb
 10c:	0803193f 0b3b0b3a 	.insn	8, 0x0b3b0b3a0803193f
 114:	0b39                	addi	s6,s6,14
 116:	13491927          	.insn	4, 0x13491927
 11a:	0111                	addi	sp,sp,4
 11c:	0712                	slli	a4,a4,0x4
 11e:	1840                	addi	s0,sp,52
 120:	197c                	addi	a5,sp,188
 122:	0000                	unimp
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
   0:	013d                	addi	sp,sp,15
   2:	0000                	unimp
   4:	0005                	c.nop	1
   6:	0008                	.insn	2, 0x0008
   8:	0041                	c.nop	16
   a:	0000                	unimp
   c:	0101                	addi	sp,sp,0
   e:	fb01                	bnez	a4,ffffffffffffff1e <__global_pointer$+0xfffffffffffed6fe>
  10:	0d0e                	slli	s10,s10,0x3
  12:	0100                	addi	s0,sp,128
  14:	0101                	addi	sp,sp,0
  16:	0001                	nop
  18:	0000                	unimp
  1a:	0001                	nop
  1c:	0100                	addi	s0,sp,128
  1e:	0101                	addi	sp,sp,0
  20:	031f 000c 0000      	.insn	6, 0x000c031f
  26:	002a                	c.slli	zero,0xa
  28:	0000                	unimp
  2a:	00000063          	beqz	zero,2a <__abi_tag-0x1026a>
  2e:	0102                	c.slli64	sp
  30:	021f 050f 0000      	.insn	6, 0x050f021f
	...
  3e:	00b9                	addi	ra,ra,14
  40:	0000                	unimp
  42:	c201                	beqz	a2,42 <__abi_tag-0x10252>
  44:	0000                	unimp
  46:	0100                	addi	s0,sp,128
  48:	00ca                	slli	ra,ra,0x12
  4a:	0000                	unimp
  4c:	0502                	c.slli64	a0
  4e:	0022                	c.slli	zero,0x8
  50:	0209                	addi	tp,tp,2 # 2 <__abi_tag-0x10292>
  52:	05a8                	addi	a0,sp,712
  54:	0001                	nop
  56:	0000                	unimp
  58:	0000                	unimp
  5a:	0516                	slli	a0,a0,0x5
  5c:	0306                	slli	t1,t1,0x1
  5e:	0901                	addi	s2,s2,0
  60:	0010                	.insn	2, 0x0010
  62:	0501                	addi	a0,a0,0
  64:	030c                	addi	a1,sp,384
  66:	0901                	addi	s2,s2,0
  68:	000e                	c.slli	zero,0x3
  6a:	0301                	addi	t1,t1,0
  6c:	0902                	c.slli64	s2
  6e:	0006                	c.slli	zero,0x1
  70:	0501                	addi	a0,a0,0
  72:	0019                	c.nop	6
  74:	0402                	c.slli64	s0
  76:	0301                	addi	t1,t1,0
  78:	0900                	addi	s0,sp,144
  7a:	0014                	.insn	2, 0x0014
  7c:	0501                	addi	a0,a0,0
  7e:	04020017          	auipc	zero,0x4020
  82:	0302                	c.slli64	t1
  84:	0900                	addi	s0,sp,144
  86:	0012                	c.slli	zero,0x4
  88:	0501                	addi	a0,a0,0
  8a:	0301                	addi	t1,t1,0
  8c:	0901                	addi	s2,s2,0
  8e:	0004                	.insn	2, 0x0004
  90:	0501                	addi	a0,a0,0
  92:	0335                	addi	t1,t1,13
  94:	0902                	c.slli64	s2
  96:	000c                	.insn	2, 0x000c
  98:	0501                	addi	a0,a0,0
  9a:	09010307          	.insn	4, 0x09010307
  9e:	0014                	.insn	2, 0x0014
  a0:	0501                	addi	a0,a0,0
  a2:	09020303          	lb	t1,144(tp) # 90 <__abi_tag-0x10204>
  a6:	0006                	c.slli	zero,0x1
  a8:	0501                	addi	a0,a0,0
  aa:	0301                	addi	t1,t1,0
  ac:	0911                	addi	s2,s2,4
  ae:	001e                	c.slli	zero,0x7
  b0:	0501                	addi	a0,a0,0
  b2:	0321                	addi	t1,t1,8
  b4:	0902                	c.slli64	s2
  b6:	000a                	c.slli	zero,0x2
  b8:	0501                	addi	a0,a0,0
  ba:	0318                	addi	a4,sp,384
  bc:	0901                	addi	s2,s2,0
  be:	0012                	c.slli	zero,0x4
  c0:	0501                	addi	a0,a0,0
  c2:	09010303          	lb	t1,144(sp)
  c6:	000c                	.insn	2, 0x000c
  c8:	0501                	addi	a0,a0,0
  ca:	0309                	addi	t1,t1,2
  cc:	0901                	addi	s2,s2,0
  ce:	0010                	.insn	2, 0x0010
  d0:	0501                	addi	a0,a0,0
  d2:	0316                	slli	t1,t1,0x5
  d4:	0901                	addi	s2,s2,0
  d6:	000a                	c.slli	zero,0x2
  d8:	0501                	addi	a0,a0,0
  da:	0010                	.insn	2, 0x0010
  dc:	0402                	c.slli64	s0
  de:	0301                	addi	t1,t1,0
  e0:	0900                	addi	s0,sp,144
  e2:	000a                	c.slli	zero,0x2
  e4:	0501                	addi	a0,a0,0
  e6:	09020303          	lb	t1,144(tp) # 90 <__abi_tag-0x10204>
  ea:	0004                	.insn	2, 0x0004
  ec:	0301                	addi	t1,t1,0
  ee:	0901                	addi	s2,s2,0
  f0:	0014                	.insn	2, 0x0014
  f2:	0501                	addi	a0,a0,0
  f4:	0901030b          	.insn	4, 0x0901030b
  f8:	000a                	c.slli	zero,0x2
  fa:	0501                	addi	a0,a0,0
  fc:	09000303          	lb	t1,144(zero) # 90 <__abi_tag-0x10204>
 100:	0004                	.insn	2, 0x0004
 102:	0501                	addi	a0,a0,0
 104:	0319                	addi	t1,t1,6
 106:	0901                	addi	s2,s2,0
 108:	0002                	c.slli64	zero
 10a:	0501                	addi	a0,a0,0
 10c:	0305                	addi	t1,t1,1
 10e:	0900                	addi	s0,sp,144
 110:	000c                	.insn	2, 0x000c
 112:	0501                	addi	a0,a0,0
 114:	0402001b          	addiw	zero,tp,64 # 40 <__abi_tag-0x10254>
 118:	097f0303          	lb	t1,151(t5)
 11c:	000e                	c.slli	zero,0x3
 11e:	0501                	addi	a0,a0,0
 120:	0014                	.insn	2, 0x0014
 122:	0402                	c.slli64	s0
 124:	0301                	addi	t1,t1,0
 126:	0900                	addi	s0,sp,144
 128:	000a                	c.slli	zero,0x2
 12a:	0501                	addi	a0,a0,0
 12c:	09030303          	lb	t1,144(t1)
 130:	000e                	c.slli	zero,0x3
 132:	0501                	addi	a0,a0,0
 134:	0301                	addi	t1,t1,0
 136:	0901                	addi	s2,s2,0
 138:	0008                	.insn	2, 0x0008
 13a:	0901                	addi	s2,s2,0
 13c:	000a                	c.slli	zero,0x2
 13e:	0100                	addi	s0,sp,128
 140:	Address 0x140 is out of bounds.


Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	657a6973          	csrrsi	s2,hviprio2h,20
   4:	745f 6600 6269      	.insn	6, 0x62696600745f
   a:	3031                	.insn	2, 0x3031
   c:	6d00                	ld	s0,24(a0)
   e:	6961                	lui	s2,0x18
  10:	006e                	c.slli	zero,0x1b
  12:	20554e47          	fmsub.s	ft8,fa0,ft5,ft4,rmm
  16:	20373143          	fmadd.s	ft2,fa4,ft3,ft4,rup
  1a:	3331                	addiw	t1,t1,-20
  1c:	322e                	fld	ft4,232(sp)
  1e:	302e                	fld	ft0,232(sp)
  20:	2d20                	fld	fs0,88(a0)
  22:	746d                	lui	s0,0xffffb
  24:	6e75                	lui	t3,0x1d
  26:	3d65                	addiw	s10,s10,-7
  28:	6f72                	ld	t5,280(sp)
  2a:	74656b63          	bltu	a0,t1,780 <__abi_tag-0xfb14>
  2e:	2d20                	fld	fs0,88(a0)
  30:	616d                	addi	sp,sp,240
  32:	6962                	ld	s2,24(sp)
  34:	6c3d                	lui	s8,0xf
  36:	3670                	fld	fa2,232(a2)
  38:	6434                	ld	a3,72(s0)
  3a:	2d20                	fld	fs0,88(a0)
  3c:	696d                	lui	s2,0x1b
  3e:	732d6173          	csrrsi	sp,mhpmevent18h,26
  42:	6570                	ld	a2,200(a0)
  44:	30323d63          	.insn	4, 0x30323d63
  48:	3931                	addiw	s2,s2,-20 # 1afec <__global_pointer$+0x87cc>
  4a:	3231                	addiw	tp,tp,-20 # ffffffffffffffec <__global_pointer$+0xfffffffffffed7cc>
  4c:	3331                	addiw	t1,t1,-20
  4e:	2d20                	fld	fs0,88(a0)
  50:	616d                	addi	sp,sp,240
  52:	6372                	ld	t1,280(sp)
  54:	3d68                	fld	fa0,248(a0)
  56:	7672                	ld	a2,312(sp)
  58:	3436                	fld	fs0,360(sp)
  5a:	6d69                	lui	s10,0x1a
  5c:	6661                	lui	a2,0x18
  5e:	6364                	ld	s1,192(a4)
  60:	7a5f 6369 7273      	.insn	6, 0x727363697a5f
  66:	7a5f 6669 6e65      	.insn	6, 0x6e6566697a5f
  6c:	20696563          	bltu	s2,t1,276 <__abi_tag-0x1001e>
  70:	672d                	lui	a4,0xb
  72:	6800                	ld	s0,16(s0)
  74:	7361                	lui	t1,0xffff8
  76:	0068                	addi	a0,sp,12
  78:	6f6c                	ld	a1,216(a4)
  7a:	676e                	ld	a4,216(sp)
  7c:	7520                	ld	s0,104(a0)
  7e:	736e                	ld	t1,248(sp)
  80:	6769                	lui	a4,0x1a
  82:	656e                	ld	a0,216(sp)
  84:	2064                	fld	fs1,192(s0)
  86:	6e69                	lui	t3,0x1a
  88:	0074                	addi	a3,sp,12
  8a:	7074756f          	jal	a0,47f90 <__global_pointer$+0x35770>
  8e:	7475                	lui	s0,0xffffd
  90:	7500                	ld	s0,40(a0)
  92:	736e                	ld	t1,248(sp)
  94:	6769                	lui	a4,0x1a
  96:	656e                	ld	a0,216(sp)
  98:	2064                	fld	fs1,192(s0)
  9a:	72616863          	bltu	sp,t1,7ca <__abi_tag-0xfaca>
  9e:	6c00                	ld	s0,24(s0)
  a0:	20676e6f          	jal	t3,762a6 <__global_pointer$+0x63a86>
  a4:	6e69                	lui	t3,0x1a
  a6:	0074                	addi	a3,sp,12
  a8:	7261                	lui	tp,0xffff8
  aa:	73006367          	.insn	4, 0x73006367
  ae:	7274                	ld	a3,224(a2)
  b0:	656c                	ld	a1,200(a0)
  b2:	006e                	c.slli	zero,0x1b
  b4:	726f6873          	csrrsi	a6,mhpmevent6h,30
  b8:	2074                	fld	fa3,192(s0)
  ba:	6e75                	lui	t3,0x1d
  bc:	6e676973          	csrrsi	s2,0x6e6,14
  c0:	6465                	lui	s0,0x19
  c2:	6920                	ld	s0,80(a0)
  c4:	746e                	ld	s0,248(sp)
  c6:	7000                	ld	s0,32(s0)
  c8:	6972                	ld	s2,280(sp)
  ca:	746e                	ld	s0,248(sp)
  cc:	0066                	c.slli	zero,0x19
  ce:	7261                	lui	tp,0xffff8
  d0:	73007667          	.insn	4, 0x73007667
  d4:	6f68                	ld	a0,216(a4)
  d6:	7472                	ld	s0,312(sp)
  d8:	6920                	ld	s0,80(a0)
  da:	746e                	ld	s0,248(sp)
  dc:	7300                	ld	s0,32(a4)
  de:	7379                	lui	t1,0xffffe
  e0:	6c6c6163          	bltu	s8,t1,7a2 <__abi_tag-0xfaf2>
  e4:	6e5f 6d75 6562      	.insn	6, 0x65626d756e5f
  ea:	0072                	c.slli	zero,0x1c

Disassembly of section .debug_line_str:

0000000000000000 <.debug_line_str>:
   0:	6966                	ld	s2,88(sp)
   2:	5f62                	lw	t5,56(sp)
   4:	7270                	ld	a2,224(a2)
   6:	6e69                	lui	t3,0x1a
   8:	2e74                	fld	fa3,216(a2)
   a:	682f0063          	beq	t5,sp,68a <__abi_tag-0xfc0a>
   e:	2f656d6f          	jal	s10,56304 <__global_pointer$+0x43ae4>
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
  3c:	636c6f6f          	jal	t5,c6672 <__global_pointer$+0xb3e52>
  40:	6168                	ld	a0,192(a0)
  42:	6e69                	lui	t3,0x1a
  44:	672d                	lui	a4,0xb
  46:	696c                	ld	a1,208(a0)
  48:	6362                	ld	t1,24(sp)
  4a:	622d                	lui	tp,0xb
  4c:	6e69                	lui	t3,0x1a
  4e:	7379732f          	.insn	4, 0x7379732f
  52:	6f72                	ld	t5,280(sp)
  54:	752f746f          	jal	s0,f77a6 <__global_pointer$+0xe4f86>
  58:	692f7273          	csrrci	tp,0x692,30
  5c:	636e                	ld	t1,216(sp)
  5e:	756c                	ld	a1,232(a0)
  60:	6564                	ld	s1,200(a0)
  62:	2f00                	fld	fs0,24(a4)
  64:	2f74706f          	j	47b5a <__global_pointer$+0x3533a>
  68:	6972                	ld	s2,280(sp)
  6a:	36766373          	csrrsi	t1,0x367,12
  6e:	2d34                	fld	fa3,88(a0)
  70:	2d756e67          	.insn	4, 0x2d756e67
  74:	6f74                	ld	a3,216(a4)
  76:	68636c6f          	jal	s8,366fc <__global_pointer$+0x23edc>
  7a:	6961                	lui	s2,0x18
  7c:	2d6e                	fld	fs10,216(sp)
  7e:	62696c67          	.insn	4, 0x62696c67
  82:	69622d63          	.insn	4, 0x69622d63
  86:	2f6e                	fld	ft10,216(sp)
  88:	696c                	ld	a1,208(a0)
  8a:	2f62                	fld	ft10,24(sp)
  8c:	2f636367          	.insn	4, 0x2f636367
  90:	6972                	ld	s2,280(sp)
  92:	36766373          	csrrsi	t1,0x367,12
  96:	2d34                	fld	fa3,88(a0)
  98:	6e75                	lui	t3,0x1d
  9a:	776f6e6b          	.insn	4, 0x776f6e6b
  9e:	2d6e                	fld	fs10,216(sp)
  a0:	696c                	ld	a1,208(a0)
  a2:	756e                	ld	a0,248(sp)
  a4:	2d78                	fld	fa4,216(a0)
  a6:	2f756e67          	.insn	4, 0x2f756e67
  aa:	3331                	addiw	t1,t1,-20 # ffffffffffff7fec <__global_pointer$+0xfffffffffffe57cc>
  ac:	322e                	fld	ft4,232(sp)
  ae:	302e                	fld	ft0,232(sp)
  b0:	636e692f          	.insn	4, 0x636e692f
  b4:	756c                	ld	a1,232(a0)
  b6:	6564                	ld	s1,200(a0)
  b8:	7300                	ld	s0,32(a4)
  ba:	7274                	ld	a3,224(a2)
  bc:	6e69                	lui	t3,0x1a
  be:	00682e67          	.insn	4, 0x00682e67
  c2:	69647473          	csrrci	s0,0x696,8
  c6:	00682e6f          	jal	t3,820cc <__global_pointer$+0x6f8ac>
  ca:	64647473          	csrrci	s0,hviprio1,8
  ce:	6665                	lui	a2,0x19
  d0:	682e                	ld	a6,200(sp)
	...
