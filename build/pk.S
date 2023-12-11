
pk:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_ftext>:
    80000000:	2000006f          	j	80000200 <do_reset>

0000000080000004 <trap_vector>:
    80000004:	34011173          	csrrw	sp,mscratch,sp
    80000008:	1a010c63          	beqz	sp,800001c0 <restore_regs+0x80>
    8000000c:	04a13823          	sd	a0,80(sp)
    80000010:	04b13c23          	sd	a1,88(sp)
    80000014:	342025f3          	csrr	a1,mcause
    80000018:	0805d263          	bgez	a1,8000009c <trap_vector+0x98>
    8000001c:	00159593          	sll	a1,a1,0x1
    80000020:	00e00513          	li	a0,14
    80000024:	02b51263          	bne	a0,a1,80000048 <trap_vector+0x44>
    80000028:	08000513          	li	a0,128
    8000002c:	30453073          	csrc	mie,a0
    80000030:	02000513          	li	a0,32
    80000034:	34452073          	csrs	mip,a0
    80000038:	05013503          	ld	a0,80(sp)
    8000003c:	05813583          	ld	a1,88(sp)
    80000040:	34011173          	csrrw	sp,mscratch,sp
    80000044:	30200073          	mret
    80000048:	00600513          	li	a0,6
    8000004c:	18b51663          	bne	a0,a1,800001d8 <restore_regs+0x98>
    80000050:	20013503          	ld	a0,512(sp)
    80000054:	00052023          	sw	zero,0(a0)
    80000058:	0ff0000f          	fence
    8000005c:	20812503          	lw	a0,520(sp)
    80000060:	20012423          	sw	zero,520(sp)
    80000064:	00157593          	and	a1,a0,1
    80000068:	00058463          	beqz	a1,80000070 <trap_vector+0x6c>
    8000006c:	34416073          	csrs	mip,2
    80000070:	00257593          	and	a1,a0,2
    80000074:	00058463          	beqz	a1,8000007c <trap_vector+0x78>
    80000078:	0000100f          	fence.i
    8000007c:	00457593          	and	a1,a0,4
    80000080:	00058463          	beqz	a1,80000088 <trap_vector+0x84>
    80000084:	12000073          	sfence.vma
    80000088:	00857593          	and	a1,a0,8
    8000008c:	00058663          	beqz	a1,80000098 <trap_vector+0x94>
    80000090:	10500073          	wfi
    80000094:	ff5ff06f          	j	80000088 <trap_vector+0x84>
    80000098:	fa1ff06f          	j	80000038 <trap_vector+0x34>
    8000009c:	00113423          	sd	ra,8(sp)
    800000a0:	00313c23          	sd	gp,24(sp)
    800000a4:	02413023          	sd	tp,32(sp)
    800000a8:	02513423          	sd	t0,40(sp)
    800000ac:	0000f297          	auipc	t0,0xf
    800000b0:	02613823          	sd	t1,48(sp)
    800000b4:	00359313          	sll	t1,a1,0x3
    800000b8:	02713c23          	sd	t2,56(sp)
    800000bc:	00628333          	add	t1,t0,t1
    800000c0:	04813023          	sd	s0,64(sp)
    800000c4:	35433303          	ld	t1,852(t1)
    800000c8:	04913423          	sd	s1,72(sp)
    800000cc:	00010513          	mv	a0,sp
    800000d0:	06c13023          	sd	a2,96(sp)
    800000d4:	34102673          	csrr	a2,mepc
    800000d8:	06d13423          	sd	a3,104(sp)
    800000dc:	340012f3          	csrrw	t0,mscratch,zero
    800000e0:	06e13823          	sd	a4,112(sp)
    800000e4:	06f13c23          	sd	a5,120(sp)
    800000e8:	09013023          	sd	a6,128(sp)
    800000ec:	09113423          	sd	a7,136(sp)
    800000f0:	09213823          	sd	s2,144(sp)
    800000f4:	09313c23          	sd	s3,152(sp)
    800000f8:	0b413023          	sd	s4,160(sp)
    800000fc:	0b513423          	sd	s5,168(sp)
    80000100:	0b613823          	sd	s6,176(sp)
    80000104:	0b713c23          	sd	s7,184(sp)
    80000108:	0d813023          	sd	s8,192(sp)
    8000010c:	0d913423          	sd	s9,200(sp)
    80000110:	0da13823          	sd	s10,208(sp)
    80000114:	0db13c23          	sd	s11,216(sp)
    80000118:	0fc13023          	sd	t3,224(sp)
    8000011c:	0fd13423          	sd	t4,232(sp)
    80000120:	0fe13823          	sd	t5,240(sp)
    80000124:	0ff13c23          	sd	t6,248(sp)
    80000128:	00513823          	sd	t0,16(sp)
    8000012c:	00012203          	lw	tp,0(sp)
    80000130:	00013023          	sd	zero,0(sp)
    80000134:	000300e7          	jalr	t1
    80000138:	00412023          	sw	tp,0(sp)

000000008000013c <restore_mscratch>:
    8000013c:	34011073          	csrw	mscratch,sp

0000000080000140 <restore_regs>:
    80000140:	00813083          	ld	ra,8(sp)
    80000144:	01813183          	ld	gp,24(sp)
    80000148:	02013203          	ld	tp,32(sp)
    8000014c:	02813283          	ld	t0,40(sp)
    80000150:	03013303          	ld	t1,48(sp)
    80000154:	03813383          	ld	t2,56(sp)
    80000158:	04013403          	ld	s0,64(sp)
    8000015c:	04813483          	ld	s1,72(sp)
    80000160:	05013503          	ld	a0,80(sp)
    80000164:	05813583          	ld	a1,88(sp)
    80000168:	06013603          	ld	a2,96(sp)
    8000016c:	06813683          	ld	a3,104(sp)
    80000170:	07013703          	ld	a4,112(sp)
    80000174:	07813783          	ld	a5,120(sp)
    80000178:	08013803          	ld	a6,128(sp)
    8000017c:	08813883          	ld	a7,136(sp)
    80000180:	09013903          	ld	s2,144(sp)
    80000184:	09813983          	ld	s3,152(sp)
    80000188:	0a013a03          	ld	s4,160(sp)
    8000018c:	0a813a83          	ld	s5,168(sp)
    80000190:	0b013b03          	ld	s6,176(sp)
    80000194:	0b813b83          	ld	s7,184(sp)
    80000198:	0c013c03          	ld	s8,192(sp)
    8000019c:	0c813c83          	ld	s9,200(sp)
    800001a0:	0d013d03          	ld	s10,208(sp)
    800001a4:	0d813d83          	ld	s11,216(sp)
    800001a8:	0e013e03          	ld	t3,224(sp)
    800001ac:	0e813e83          	ld	t4,232(sp)
    800001b0:	0f013f03          	ld	t5,240(sp)
    800001b4:	0f813f83          	ld	t6,248(sp)
    800001b8:	01013103          	ld	sp,16(sp)
    800001bc:	30200073          	mret
    800001c0:	34002173          	csrr	sp,mscratch
    800001c4:	f0010113          	add	sp,sp,-256
    800001c8:	04a13823          	sd	a0,80(sp)
    800001cc:	04b13c23          	sd	a1,88(sp)
    800001d0:	00d00593          	li	a1,13
    800001d4:	ec9ff06f          	j	8000009c <trap_vector+0x98>
    800001d8:	00000593          	li	a1,0
    800001dc:	ec1ff06f          	j	8000009c <trap_vector+0x98>

00000000800001e0 <__redirect_trap>:
    800001e0:	000012b7          	lui	t0,0x1
    800001e4:	00510133          	add	sp,sp,t0
    800001e8:	405002b3          	neg	t0,t0
    800001ec:	00517133          	and	sp,sp,t0
    800001f0:	dc010113          	add	sp,sp,-576
    800001f4:	f49ff06f          	j	8000013c <restore_mscratch>

00000000800001f8 <__trap_from_machine_mode>:
    800001f8:	2f8040ef          	jal	800044f0 <trap_from_machine_mode>
    800001fc:	f45ff06f          	j	80000140 <restore_regs>

0000000080000200 <do_reset>:
    80000200:	00000093          	li	ra,0
    80000204:	00000113          	li	sp,0
    80000208:	00000193          	li	gp,0
    8000020c:	00000213          	li	tp,0
    80000210:	00000293          	li	t0,0
    80000214:	00000313          	li	t1,0
    80000218:	00000393          	li	t2,0
    8000021c:	00000413          	li	s0,0
    80000220:	00000493          	li	s1,0
    80000224:	00000613          	li	a2,0
    80000228:	00000693          	li	a3,0
    8000022c:	00000713          	li	a4,0
    80000230:	00000793          	li	a5,0
    80000234:	00000813          	li	a6,0
    80000238:	00000893          	li	a7,0
    8000023c:	00000913          	li	s2,0
    80000240:	00000993          	li	s3,0
    80000244:	00000a13          	li	s4,0
    80000248:	00000a93          	li	s5,0
    8000024c:	00000b13          	li	s6,0
    80000250:	00000b93          	li	s7,0
    80000254:	00000c13          	li	s8,0
    80000258:	00000c93          	li	s9,0
    8000025c:	00000d13          	li	s10,0
    80000260:	00000d93          	li	s11,0
    80000264:	00000e13          	li	t3,0
    80000268:	00000e93          	li	t4,0
    8000026c:	00000f13          	li	t5,0
    80000270:	00000f93          	li	t6,0
    80000274:	34001073          	csrw	mscratch,zero
    80000278:	00000297          	auipc	t0,0x0
    8000027c:	d8c28293          	add	t0,t0,-628 # 80000004 <trap_vector>
    80000280:	30529073          	csrw	mtvec,t0
    80000284:	30502373          	csrr	t1,mtvec
    80000288:	00629063          	bne	t0,t1,80000288 <do_reset+0x88>
    8000028c:	00013117          	auipc	sp,0x13
    80000290:	b3410113          	add	sp,sp,-1228 # 80012dc0 <stacks+0xdc0>
    80000294:	f14026f3          	csrr	a3,mhartid
    80000298:	00c69613          	sll	a2,a3,0xc
    8000029c:	00c10133          	add	sp,sp,a2
    800002a0:	00069463          	bnez	a3,800002a8 <do_reset+0xa8>
    800002a4:	6e80406f          	j	8000498c <init_first_hart>
    800002a8:	00800613          	li	a2,8
    800002ac:	30461073          	csrw	mie,a2
    800002b0:	10500073          	wfi
    800002b4:	ffdff06f          	j	800002b0 <do_reset+0xb0>

Disassembly of section .text:

00000000800002b8 <rest_of_boot_loader>:
    800002b8:	00050113          	mv	sp,a0
    800002bc:	2a40006f          	j	80000560 <rest_of_boot_loader_2>

00000000800002c0 <run_loaded_program.constprop.0>:
    800002c0:	e1010113          	add	sp,sp,-496
    800002c4:	1e813023          	sd	s0,480(sp)
    800002c8:	000017b7          	lui	a5,0x1
    800002cc:	00013417          	auipc	s0,0x13
    800002d0:	dc443403          	ld	s0,-572(s0) # 80013090 <mem_size>
    800002d4:	1d413023          	sd	s4,448(sp)
    800002d8:	1b613823          	sd	s6,432(sp)
    800002dc:	1e113423          	sd	ra,488(sp)
    800002e0:	1d313423          	sd	s3,456(sp)
    800002e4:	01145413          	srl	s0,s0,0x11
    800002e8:	80078793          	add	a5,a5,-2048 # 800 <_ftext-0x7ffff800>
    800002ec:	00050b13          	mv	s6,a0
    800002f0:	00058a13          	mv	s4,a1
    800002f4:	0087f463          	bgeu	a5,s0,800002fc <run_loaded_program.constprop.0+0x3c>
    800002f8:	00078413          	mv	s0,a5
    800002fc:	00010997          	auipc	s3,0x10
    80000300:	d0498993          	add	s3,s3,-764 # 80010000 <current>
    80000304:	0489b503          	ld	a0,72(s3)
    80000308:	00c41413          	sll	s0,s0,0xc
    8000030c:	00000793          	li	a5,0
    80000310:	00000713          	li	a4,0
    80000314:	03200693          	li	a3,50
    80000318:	00700613          	li	a2,7
    8000031c:	00040593          	mv	a1,s0
    80000320:	40850533          	sub	a0,a0,s0
    80000324:	075010ef          	jal	80001b98 <__do_mmap>
    80000328:	fff00793          	li	a5,-1
    8000032c:	1c913c23          	sd	s1,472(sp)
    80000330:	1d213823          	sd	s2,464(sp)
    80000334:	1b513c23          	sd	s5,440(sp)
    80000338:	1b713423          	sd	s7,424(sp)
    8000033c:	20f50c63          	beq	a0,a5,80000554 <run_loaded_program.constprop.0+0x294>
    80000340:	0189b603          	ld	a2,24(s3)
    80000344:	00a407b3          	add	a5,s0,a0
    80000348:	0109b583          	ld	a1,16(s3)
    8000034c:	40c78433          	sub	s0,a5,a2
    80000350:	00040513          	mv	a0,s0
    80000354:	04f9b823          	sd	a5,80(s3)
    80000358:	414020ef          	jal	8000276c <memcpy_to_user>
    8000035c:	0089b823          	sd	s0,16(s3)
    80000360:	040b0063          	beqz	s6,800003a0 <run_loaded_program.constprop.0+0xe0>
    80000364:	00010497          	auipc	s1,0x10
    80000368:	11448493          	add	s1,s1,276 # 80010478 <args.1>
    8000036c:	00000913          	li	s2,0
    80000370:	0004ba83          	ld	s5,0(s1)
    80000374:	00190913          	add	s2,s2,1
    80000378:	00848493          	add	s1,s1,8
    8000037c:	000a8513          	mv	a0,s5
    80000380:	0380c0ef          	jal	8000c3b8 <strlen>
    80000384:	00150613          	add	a2,a0,1
    80000388:	40c40433          	sub	s0,s0,a2
    8000038c:	000a8593          	mv	a1,s5
    80000390:	00040513          	mv	a0,s0
    80000394:	3d8020ef          	jal	8000276c <memcpy_to_user>
    80000398:	fe84bc23          	sd	s0,-8(s1)
    8000039c:	fd691ae3          	bne	s2,s6,80000370 <run_loaded_program.constprop.0+0xb0>
    800003a0:	0109b783          	ld	a5,16(s3)
    800003a4:	013b0a93          	add	s5,s6,19
    800003a8:	0289b803          	ld	a6,40(s3)
    800003ac:	0049a683          	lw	a3,4(s3)
    800003b0:	0009a703          	lw	a4,0(s3)
    800003b4:	ff847413          	and	s0,s0,-8
    800003b8:	02f13c23          	sd	a5,56(sp)
    800003bc:	003a9a93          	sll	s5,s5,0x3
    800003c0:	00600793          	li	a5,6
    800003c4:	41540ab3          	sub	s5,s0,s5
    800003c8:	04f13023          	sd	a5,64(sp)
    800003cc:	000017b7          	lui	a5,0x1
    800003d0:	ff0afa93          	and	s5,s5,-16
    800003d4:	04f13423          	sd	a5,72(sp)
    800003d8:	08010913          	add	s2,sp,128
    800003dc:	01700793          	li	a5,23
    800003e0:	00900893          	li	a7,9
    800003e4:	01013423          	sd	a6,8(sp)
    800003e8:	00d13c23          	sd	a3,24(sp)
    800003ec:	00500813          	li	a6,5
    800003f0:	00400693          	li	a3,4
    800003f4:	02e13423          	sd	a4,40(sp)
    800003f8:	04f13823          	sd	a5,80(sp)
    800003fc:	00300713          	li	a4,3
    80000400:	01900793          	li	a5,25
    80000404:	00400613          	li	a2,4
    80000408:	00090593          	mv	a1,s2
    8000040c:	000a8513          	mv	a0,s5
    80000410:	06813423          	sd	s0,104(sp)
    80000414:	01113023          	sd	a7,0(sp)
    80000418:	01013823          	sd	a6,16(sp)
    8000041c:	02d13023          	sd	a3,32(sp)
    80000420:	02e13823          	sd	a4,48(sp)
    80000424:	04013c23          	sd	zero,88(sp)
    80000428:	06f13023          	sd	a5,96(sp)
    8000042c:	06013823          	sd	zero,112(sp)
    80000430:	06013c23          	sd	zero,120(sp)
    80000434:	09612023          	sw	s6,128(sp)
    80000438:	008a8413          	add	s0,s5,8
    8000043c:	330020ef          	jal	8000276c <memcpy_to_user>
    80000440:	040b0663          	beqz	s6,8000048c <run_loaded_program.constprop.0+0x1cc>
    80000444:	00000493          	li	s1,0
    80000448:	00000793          	li	a5,0
    8000044c:	00010b97          	auipc	s7,0x10
    80000450:	02cb8b93          	add	s7,s7,44 # 80010478 <args.1>
    80000454:	00379793          	sll	a5,a5,0x3
    80000458:	00fb87b3          	add	a5,s7,a5
    8000045c:	0007b783          	ld	a5,0(a5) # 1000 <_ftext-0x7ffff000>
    80000460:	00040513          	mv	a0,s0
    80000464:	00800613          	li	a2,8
    80000468:	00090593          	mv	a1,s2
    8000046c:	08f13023          	sd	a5,128(sp)
    80000470:	2fc020ef          	jal	8000276c <memcpy_to_user>
    80000474:	0014871b          	addw	a4,s1,1
    80000478:	02071793          	sll	a5,a4,0x20
    8000047c:	0207d793          	srl	a5,a5,0x20
    80000480:	00840413          	add	s0,s0,8
    80000484:	0007049b          	sext.w	s1,a4
    80000488:	fd67e6e3          	bltu	a5,s6,80000454 <run_loaded_program.constprop.0+0x194>
    8000048c:	00040513          	mv	a0,s0
    80000490:	00800613          	li	a2,8
    80000494:	00090593          	mv	a1,s2
    80000498:	08013023          	sd	zero,128(sp)
    8000049c:	2d0020ef          	jal	8000276c <memcpy_to_user>
    800004a0:	00840513          	add	a0,s0,8
    800004a4:	00800613          	li	a2,8
    800004a8:	00090593          	mv	a1,s2
    800004ac:	08013023          	sd	zero,128(sp)
    800004b0:	01040413          	add	s0,s0,16
    800004b4:	2b8020ef          	jal	8000276c <memcpy_to_user>
    800004b8:	00010493          	mv	s1,sp
    800004bc:	0004b783          	ld	a5,0(s1)
    800004c0:	00040513          	mv	a0,s0
    800004c4:	00800613          	li	a2,8
    800004c8:	00090593          	mv	a1,s2
    800004cc:	08f13023          	sd	a5,128(sp)
    800004d0:	29c020ef          	jal	8000276c <memcpy_to_user>
    800004d4:	0084b783          	ld	a5,8(s1)
    800004d8:	00840513          	add	a0,s0,8
    800004dc:	00800613          	li	a2,8
    800004e0:	00090593          	mv	a1,s2
    800004e4:	01048493          	add	s1,s1,16
    800004e8:	08f13023          	sd	a5,128(sp)
    800004ec:	01040413          	add	s0,s0,16
    800004f0:	27c020ef          	jal	8000276c <memcpy_to_user>
    800004f4:	fc9914e3          	bne	s2,s1,800004bc <run_loaded_program.constprop.0+0x1fc>
    800004f8:	0689b783          	ld	a5,104(s3)
    800004fc:	00078e63          	beqz	a5,80000518 <run_loaded_program.constprop.0+0x258>
    80000500:	c01027f3          	rdtime	a5
    80000504:	06f9b023          	sd	a5,96(s3)
    80000508:	c00027f3          	rdcycle	a5
    8000050c:	06f9b423          	sd	a5,104(s3)
    80000510:	c02027f3          	rdinstret	a5
    80000514:	06f9b823          	sd	a5,112(s3)
    80000518:	12000613          	li	a2,288
    8000051c:	00000593          	li	a1,0
    80000520:	00090513          	mv	a0,s2
    80000524:	0289b403          	ld	s0,40(s3)
    80000528:	6290b0ef          	jal	8000c350 <memset>
    8000052c:	100027f3          	csrr	a5,sstatus
    80000530:	edd7f793          	and	a5,a5,-291
    80000534:	0207e793          	or	a5,a5,32
    80000538:	18f13023          	sd	a5,384(sp)
    8000053c:	09513823          	sd	s5,144(sp)
    80000540:	18813423          	sd	s0,392(sp)
    80000544:	294050ef          	jal	800057d8 <__riscv_flush_icache>
    80000548:	140a1073          	csrw	sscratch,s4
    8000054c:	00090513          	mv	a0,s2
    80000550:	4c0020ef          	jal	80002a10 <start_user>
    80000554:	0000d517          	auipc	a0,0xd
    80000558:	ee450513          	add	a0,a0,-284 # 8000d438 <softfloat_countLeadingZeros8+0x158>
    8000055c:	67d000ef          	jal	800013d8 <kassert_fail>

0000000080000560 <rest_of_boot_loader_2>:
    80000560:	f8010113          	add	sp,sp,-128
    80000564:	06113c23          	sd	ra,120(sp)
    80000568:	06813823          	sd	s0,112(sp)
    8000056c:	05613023          	sd	s6,64(sp)
    80000570:	00a13423          	sd	a0,8(sp)
    80000574:	00013417          	auipc	s0,0x13
    80000578:	aec40413          	add	s0,s0,-1300 # 80013060 <kva2pa_offset>
    8000057c:	3cc000ef          	jal	80000948 <file_init>
    80000580:	00043583          	ld	a1,0(s0)
    80000584:	00010b17          	auipc	s6,0x10
    80000588:	ef4b0b13          	add	s6,s6,-268 # 80010478 <args.1>
    8000058c:	00001637          	lui	a2,0x1
    80000590:	00000893          	li	a7,0
    80000594:	00000813          	li	a6,0
    80000598:	00000793          	li	a5,0
    8000059c:	00000713          	li	a4,0
    800005a0:	00000693          	li	a3,0
    800005a4:	80060613          	add	a2,a2,-2048 # 800 <_ftext-0x7ffff800>
    800005a8:	40bb05b3          	sub	a1,s6,a1
    800005ac:	7db00513          	li	a0,2011
    800005b0:	015000ef          	jal	80000dc4 <frontend_syscall>
    800005b4:	06913423          	sd	s1,104(sp)
    800005b8:	07213023          	sd	s2,96(sp)
    800005bc:	05313c23          	sd	s3,88(sp)
    800005c0:	05413823          	sd	s4,80(sp)
    800005c4:	05513423          	sd	s5,72(sp)
    800005c8:	03713c23          	sd	s7,56(sp)
    800005cc:	03813823          	sd	s8,48(sp)
    800005d0:	03913423          	sd	s9,40(sp)
    800005d4:	03a13023          	sd	s10,32(sp)
    800005d8:	01b13c23          	sd	s11,24(sp)
    800005dc:	1c051c63          	bnez	a0,800007b4 <rest_of_boot_loader_2+0x254>
    800005e0:	000b3903          	ld	s2,0(s6)
    800005e4:	00100793          	li	a5,1
    800005e8:	00100d13          	li	s10,1
    800005ec:	0d27fc63          	bgeu	a5,s2,800006c4 <rest_of_boot_loader_2+0x164>
    800005f0:	00043483          	ld	s1,0(s0)
    800005f4:	000b0c13          	mv	s8,s6
    800005f8:	00010c97          	auipc	s9,0x10
    800005fc:	e90c8c93          	add	s9,s9,-368 # 80010488 <args.1+0x10>
    80000600:	00100d13          	li	s10,1
    80000604:	02d00993          	li	s3,45
    80000608:	0000da17          	auipc	s4,0xd
    8000060c:	f88a0a13          	add	s4,s4,-120 # 8000d590 <softfloat_countLeadingZeros8+0x2b0>
    80000610:	00013b97          	auipc	s7,0x13
    80000614:	a10b8b93          	add	s7,s7,-1520 # 80013020 <randomize_mapping>
    80000618:	00100a93          	li	s5,1
    8000061c:	0300006f          	j	8000064c <rest_of_boot_loader_2+0xec>
    80000620:	00144703          	lbu	a4,1(s0)
    80000624:	f8d7071b          	addw	a4,a4,-115
    80000628:	06071663          	bnez	a4,80000694 <rest_of_boot_loader_2+0x134>
    8000062c:	00244703          	lbu	a4,2(s0)
    80000630:	06071263          	bnez	a4,80000694 <rest_of_boot_loader_2+0x134>
    80000634:	00010797          	auipc	a5,0x10
    80000638:	9cc78793          	add	a5,a5,-1588 # 80010000 <current>
    8000063c:	0757b423          	sd	s5,104(a5)
    80000640:	001d0d13          	add	s10,s10,1
    80000644:	008c8c93          	add	s9,s9,8
    80000648:	07a90e63          	beq	s2,s10,800006c4 <rest_of_boot_loader_2+0x164>
    8000064c:	000cb403          	ld	s0,0(s9)
    80000650:	00848433          	add	s0,s1,s0
    80000654:	00044703          	lbu	a4,0(s0)
    80000658:	09371e63          	bne	a4,s3,800006f4 <rest_of_boot_loader_2+0x194>
    8000065c:	00044d83          	lbu	s11,0(s0)
    80000660:	fd3d871b          	addw	a4,s11,-45
    80000664:	00071c63          	bnez	a4,8000067c <rest_of_boot_loader_2+0x11c>
    80000668:	00144703          	lbu	a4,1(s0)
    8000066c:	f987071b          	addw	a4,a4,-104
    80000670:	00071663          	bnez	a4,8000067c <rest_of_boot_loader_2+0x11c>
    80000674:	00244703          	lbu	a4,2(s0)
    80000678:	0c070e63          	beqz	a4,80000754 <rest_of_boot_loader_2+0x1f4>
    8000067c:	000a0593          	mv	a1,s4
    80000680:	00040513          	mv	a0,s0
    80000684:	55d0b0ef          	jal	8000c3e0 <strcmp>
    80000688:	0c050663          	beqz	a0,80000754 <rest_of_boot_loader_2+0x1f4>
    8000068c:	fd3d871b          	addw	a4,s11,-45
    80000690:	f80708e3          	beqz	a4,80000620 <rest_of_boot_loader_2+0xc0>
    80000694:	fd3d8d9b          	addw	s11,s11,-45
    80000698:	040d9063          	bnez	s11,800006d8 <rest_of_boot_loader_2+0x178>
    8000069c:	00144d83          	lbu	s11,1(s0)
    800006a0:	f90d8d9b          	addw	s11,s11,-112
    800006a4:	020d9a63          	bnez	s11,800006d8 <rest_of_boot_loader_2+0x178>
    800006a8:	00244d83          	lbu	s11,2(s0)
    800006ac:	020d9663          	bnez	s11,800006d8 <rest_of_boot_loader_2+0x178>
    800006b0:	0000f717          	auipc	a4,0xf
    800006b4:	de072023          	sw	zero,-544(a4) # 8000f490 <demand_paging>
    800006b8:	001d0d13          	add	s10,s10,1
    800006bc:	008c8c93          	add	s9,s9,8
    800006c0:	f9a916e3          	bne	s2,s10,8000064c <rest_of_boot_loader_2+0xec>
    800006c4:	41a90433          	sub	s0,s2,s10
    800006c8:	05a91e63          	bne	s2,s10,80000724 <rest_of_boot_loader_2+0x1c4>
    800006cc:	0000d517          	auipc	a0,0xd
    800006d0:	f0450513          	add	a0,a0,-252 # 8000d5d0 <softfloat_countLeadingZeros8+0x2f0>
    800006d4:	4c9000ef          	jal	8000139c <do_panic>
    800006d8:	0000d597          	auipc	a1,0xd
    800006dc:	ec058593          	add	a1,a1,-320 # 8000d598 <softfloat_countLeadingZeros8+0x2b8>
    800006e0:	00040513          	mv	a0,s0
    800006e4:	4fd0b0ef          	jal	8000c3e0 <strcmp>
    800006e8:	0a051e63          	bnez	a0,800007a4 <rest_of_boot_loader_2+0x244>
    800006ec:	015bb023          	sd	s5,0(s7)
    800006f0:	f51ff06f          	j	80000640 <rest_of_boot_loader_2+0xe0>
    800006f4:	fd2d78e3          	bgeu	s10,s2,800006c4 <rest_of_boot_loader_2+0x164>
    800006f8:	41a90533          	sub	a0,s2,s10
    800006fc:	00351693          	sll	a3,a0,0x3
    80000700:	00db06b3          	add	a3,s6,a3
    80000704:	003d1793          	sll	a5,s10,0x3
    80000708:	00fc0733          	add	a4,s8,a5
    8000070c:	00873703          	ld	a4,8(a4)
    80000710:	008c0c13          	add	s8,s8,8
    80000714:	00970733          	add	a4,a4,s1
    80000718:	feec3c23          	sd	a4,-8(s8)
    8000071c:	fedc16e3          	bne	s8,a3,80000708 <rest_of_boot_loader_2+0x1a8>
    80000720:	00050413          	mv	s0,a0
    80000724:	000b3503          	ld	a0,0(s6)
    80000728:	00010597          	auipc	a1,0x10
    8000072c:	8d858593          	add	a1,a1,-1832 # 80010000 <current>
    80000730:	00010797          	auipc	a5,0x10
    80000734:	94878793          	add	a5,a5,-1720 # 80010078 <phdrs.0>
    80000738:	00f5b823          	sd	a5,16(a1)
    8000073c:	40000793          	li	a5,1024
    80000740:	00f5bc23          	sd	a5,24(a1)
    80000744:	748000ef          	jal	80000e8c <load_elf>
    80000748:	00813583          	ld	a1,8(sp)
    8000074c:	00040513          	mv	a0,s0
    80000750:	b71ff0ef          	jal	800002c0 <run_loaded_program.constprop.0>
    80000754:	0000d517          	auipc	a0,0xd
    80000758:	d2c50513          	add	a0,a0,-724 # 8000d480 <softfloat_countLeadingZeros8+0x1a0>
    8000075c:	32d000ef          	jal	80001288 <printk>
    80000760:	0000d517          	auipc	a0,0xd
    80000764:	d3050513          	add	a0,a0,-720 # 8000d490 <softfloat_countLeadingZeros8+0x1b0>
    80000768:	321000ef          	jal	80001288 <printk>
    8000076c:	0000d517          	auipc	a0,0xd
    80000770:	d6450513          	add	a0,a0,-668 # 8000d4d0 <softfloat_countLeadingZeros8+0x1f0>
    80000774:	315000ef          	jal	80001288 <printk>
    80000778:	0000d517          	auipc	a0,0xd
    8000077c:	d6850513          	add	a0,a0,-664 # 8000d4e0 <softfloat_countLeadingZeros8+0x200>
    80000780:	309000ef          	jal	80001288 <printk>
    80000784:	0000d517          	auipc	a0,0xd
    80000788:	d9450513          	add	a0,a0,-620 # 8000d518 <softfloat_countLeadingZeros8+0x238>
    8000078c:	2fd000ef          	jal	80001288 <printk>
    80000790:	0000d517          	auipc	a0,0xd
    80000794:	dc850513          	add	a0,a0,-568 # 8000d558 <softfloat_countLeadingZeros8+0x278>
    80000798:	2f1000ef          	jal	80001288 <printk>
    8000079c:	00000513          	li	a0,0
    800007a0:	6bc000ef          	jal	80000e5c <shutdown>
    800007a4:	00040593          	mv	a1,s0
    800007a8:	0000d517          	auipc	a0,0xd
    800007ac:	e0850513          	add	a0,a0,-504 # 8000d5b0 <softfloat_countLeadingZeros8+0x2d0>
    800007b0:	3ed000ef          	jal	8000139c <do_panic>
    800007b4:	000015b7          	lui	a1,0x1
    800007b8:	80058593          	add	a1,a1,-2048 # 800 <_ftext-0x7ffff800>
    800007bc:	0000d517          	auipc	a0,0xd
    800007c0:	ca450513          	add	a0,a0,-860 # 8000d460 <softfloat_countLeadingZeros8+0x180>
    800007c4:	3d9000ef          	jal	8000139c <do_panic>

00000000800007c8 <boot_loader>:
    800007c8:	ff010113          	add	sp,sp,-16
    800007cc:	00113423          	sd	ra,8(sp)
    800007d0:	47d010ef          	jal	8000244c <pk_vm_init>
    800007d4:	00013717          	auipc	a4,0x13
    800007d8:	88c73703          	ld	a4,-1908(a4) # 80013060 <kva2pa_offset>
    800007dc:	00002797          	auipc	a5,0x2
    800007e0:	16878793          	add	a5,a5,360 # 80002944 <trap_entry>
    800007e4:	00f707b3          	add	a5,a4,a5
    800007e8:	10579073          	csrw	stvec,a5
    800007ec:	14005073          	csrw	sscratch,0
    800007f0:	10405073          	csrw	sie,0
    800007f4:	000067b7          	lui	a5,0x6
    800007f8:	6007879b          	addw	a5,a5,1536 # 6600 <_ftext-0x7fff9a00>
    800007fc:	1007a7f3          	csrrs	a5,sstatus,a5
    80000800:	00a705b3          	add	a1,a4,a0
    80000804:	00000517          	auipc	a0,0x0
    80000808:	ab450513          	add	a0,a0,-1356 # 800002b8 <rest_of_boot_loader>
    8000080c:	00000613          	li	a2,0
    80000810:	00e50533          	add	a0,a0,a4
    80000814:	328040ef          	jal	80004b3c <enter_supervisor_mode>

0000000080000818 <boot_other_hart>:
    80000818:	10500073          	wfi
    8000081c:	ffdff06f          	j	80000818 <boot_other_hart>

0000000080000820 <file_incref>:
    80000820:	00452783          	lw	a5,4(a0)
    80000824:	0017871b          	addw	a4,a5,1
    80000828:	00e52223          	sw	a4,4(a0)
    8000082c:	00078463          	beqz	a5,80000834 <file_incref+0x14>
    80000830:	00008067          	ret
    80000834:	ff010113          	add	sp,sp,-16
    80000838:	0000d517          	auipc	a0,0xd
    8000083c:	db850513          	add	a0,a0,-584 # 8000d5f0 <softfloat_countLeadingZeros8+0x310>
    80000840:	00113423          	sd	ra,8(sp)
    80000844:	395000ef          	jal	800013d8 <kassert_fail>

0000000080000848 <file_decref>:
    80000848:	00452783          	lw	a5,4(a0)
    8000084c:	00200713          	li	a4,2
    80000850:	fff7869b          	addw	a3,a5,-1
    80000854:	00d52223          	sw	a3,4(a0)
    80000858:	00e78463          	beq	a5,a4,80000860 <file_decref+0x18>
    8000085c:	00008067          	ret
    80000860:	00052583          	lw	a1,0(a0)
    80000864:	0ff0000f          	fence
    80000868:	00000893          	li	a7,0
    8000086c:	00052223          	sw	zero,4(a0)
    80000870:	00000813          	li	a6,0
    80000874:	00000793          	li	a5,0
    80000878:	00000713          	li	a4,0
    8000087c:	00000693          	li	a3,0
    80000880:	00000613          	li	a2,0
    80000884:	03900513          	li	a0,57
    80000888:	53c0006f          	j	80000dc4 <frontend_syscall>

000000008000088c <file_dup>:
    8000088c:	00050593          	mv	a1,a0
    80000890:	00010697          	auipc	a3,0x10
    80000894:	3e868693          	add	a3,a3,1000 # 80010c78 <fds>
    80000898:	00000513          	li	a0,0
    8000089c:	08000613          	li	a2,128
    800008a0:	00c0006f          	j	800008ac <file_dup+0x20>
    800008a4:	0015051b          	addw	a0,a0,1
    800008a8:	02c50663          	beq	a0,a2,800008d4 <file_dup+0x48>
    800008ac:	00351793          	sll	a5,a0,0x3
    800008b0:	00f687b3          	add	a5,a3,a5
    800008b4:	0007b703          	ld	a4,0(a5)
    800008b8:	fe0716e3          	bnez	a4,800008a4 <file_dup+0x18>
    800008bc:	0045a703          	lw	a4,4(a1)
    800008c0:	00b7b023          	sd	a1,0(a5)
    800008c4:	0017079b          	addw	a5,a4,1
    800008c8:	00f5a223          	sw	a5,4(a1)
    800008cc:	00070863          	beqz	a4,800008dc <file_dup+0x50>
    800008d0:	00008067          	ret
    800008d4:	fff00513          	li	a0,-1
    800008d8:	00008067          	ret
    800008dc:	ff010113          	add	sp,sp,-16
    800008e0:	0000d517          	auipc	a0,0xd
    800008e4:	d1050513          	add	a0,a0,-752 # 8000d5f0 <softfloat_countLeadingZeros8+0x310>
    800008e8:	00113423          	sd	ra,8(sp)
    800008ec:	2ed000ef          	jal	800013d8 <kassert_fail>

00000000800008f0 <file_dup3>:
    800008f0:	07f00793          	li	a5,127
    800008f4:	02b7ec63          	bltu	a5,a1,8000092c <file_dup3+0x3c>
    800008f8:	00359713          	sll	a4,a1,0x3
    800008fc:	00010797          	auipc	a5,0x10
    80000900:	37c78793          	add	a5,a5,892 # 80010c78 <fds>
    80000904:	00e787b3          	add	a5,a5,a4
    80000908:	0007b703          	ld	a4,0(a5)
    8000090c:	02071063          	bnez	a4,8000092c <file_dup3+0x3c>
    80000910:	00452703          	lw	a4,4(a0)
    80000914:	00a7b023          	sd	a0,0(a5)
    80000918:	0017079b          	addw	a5,a4,1
    8000091c:	00f52223          	sw	a5,4(a0)
    80000920:	00070a63          	beqz	a4,80000934 <file_dup3+0x44>
    80000924:	00058513          	mv	a0,a1
    80000928:	00008067          	ret
    8000092c:	fff00593          	li	a1,-1
    80000930:	ff5ff06f          	j	80000924 <file_dup3+0x34>
    80000934:	ff010113          	add	sp,sp,-16
    80000938:	0000d517          	auipc	a0,0xd
    8000093c:	cb850513          	add	a0,a0,-840 # 8000d5f0 <softfloat_countLeadingZeros8+0x310>
    80000940:	00113423          	sd	ra,8(sp)
    80000944:	295000ef          	jal	800013d8 <kassert_fail>

0000000080000948 <file_init>:
    80000948:	00000893          	li	a7,0
    8000094c:	00010517          	auipc	a0,0x10
    80000950:	32c50513          	add	a0,a0,812 # 80010c78 <fds>
    80000954:	0000f597          	auipc	a1,0xf
    80000958:	aac58593          	add	a1,a1,-1364 # 8000f400 <trap_table>
    8000095c:	00200e13          	li	t3,2
    80000960:	08000813          	li	a6,128
    80000964:	00300313          	li	t1,3
    80000968:	0000e797          	auipc	a5,0xe
    8000096c:	69878793          	add	a5,a5,1688 # 8000f000 <files>
    80000970:	00c0006f          	j	8000097c <file_init+0x34>
    80000974:	00878793          	add	a5,a5,8
    80000978:	04b78e63          	beq	a5,a1,800009d4 <file_init+0x8c>
    8000097c:	0047a703          	lw	a4,4(a5)
    80000980:	fe071ae3          	bnez	a4,80000974 <file_init+0x2c>
    80000984:	0047a703          	lw	a4,4(a5)
    80000988:	fe0716e3          	bnez	a4,80000974 <file_init+0x2c>
    8000098c:	01c7a223          	sw	t3,4(a5)
    80000990:	0117a023          	sw	a7,0(a5)
    80000994:	00000693          	li	a3,0
    80000998:	00c0006f          	j	800009a4 <file_init+0x5c>
    8000099c:	0016869b          	addw	a3,a3,1
    800009a0:	03068463          	beq	a3,a6,800009c8 <file_init+0x80>
    800009a4:	00369713          	sll	a4,a3,0x3
    800009a8:	00e50733          	add	a4,a0,a4
    800009ac:	00073603          	ld	a2,0(a4)
    800009b0:	fe0616e3          	bnez	a2,8000099c <file_init+0x54>
    800009b4:	0047a683          	lw	a3,4(a5)
    800009b8:	00f73023          	sd	a5,0(a4)
    800009bc:	0016871b          	addw	a4,a3,1
    800009c0:	00e7a223          	sw	a4,4(a5)
    800009c4:	00068c63          	beqz	a3,800009dc <file_init+0x94>
    800009c8:	0018889b          	addw	a7,a7,1
    800009cc:	f8689ee3          	bne	a7,t1,80000968 <file_init+0x20>
    800009d0:	00008067          	ret
    800009d4:	00000793          	li	a5,0
    800009d8:	fb9ff06f          	j	80000990 <file_init+0x48>
    800009dc:	ff010113          	add	sp,sp,-16
    800009e0:	0000d517          	auipc	a0,0xd
    800009e4:	c1050513          	add	a0,a0,-1008 # 8000d5f0 <softfloat_countLeadingZeros8+0x310>
    800009e8:	00113423          	sd	ra,8(sp)
    800009ec:	1ed000ef          	jal	800013d8 <kassert_fail>

00000000800009f0 <file_get>:
    800009f0:	07f00793          	li	a5,127
    800009f4:	02a7ee63          	bltu	a5,a0,80000a30 <file_get+0x40>
    800009f8:	00351513          	sll	a0,a0,0x3
    800009fc:	00010797          	auipc	a5,0x10
    80000a00:	27c78793          	add	a5,a5,636 # 80010c78 <fds>
    80000a04:	00a787b3          	add	a5,a5,a0
    80000a08:	0007b503          	ld	a0,0(a5)
    80000a0c:	02050463          	beqz	a0,80000a34 <file_get+0x44>
    80000a10:	00452783          	lw	a5,4(a0)
    80000a14:	0007871b          	sext.w	a4,a5
    80000a18:	00078c63          	beqz	a5,80000a30 <file_get+0x40>
    80000a1c:	00452783          	lw	a5,4(a0)
    80000a20:	fef718e3          	bne	a4,a5,80000a10 <file_get+0x20>
    80000a24:	0017071b          	addw	a4,a4,1
    80000a28:	00e52223          	sw	a4,4(a0)
    80000a2c:	00008067          	ret
    80000a30:	00000513          	li	a0,0
    80000a34:	00008067          	ret

0000000080000a38 <file_openat>:
    80000a38:	fc010113          	add	sp,sp,-64
    80000a3c:	02813823          	sd	s0,48(sp)
    80000a40:	02913423          	sd	s1,40(sp)
    80000a44:	03213023          	sd	s2,32(sp)
    80000a48:	01313c23          	sd	s3,24(sp)
    80000a4c:	01413823          	sd	s4,16(sp)
    80000a50:	02113c23          	sd	ra,56(sp)
    80000a54:	00050a13          	mv	s4,a0
    80000a58:	00058493          	mv	s1,a1
    80000a5c:	00060913          	mv	s2,a2
    80000a60:	00068993          	mv	s3,a3
    80000a64:	0000e417          	auipc	s0,0xe
    80000a68:	59c40413          	add	s0,s0,1436 # 8000f000 <files>
    80000a6c:	0000f897          	auipc	a7,0xf
    80000a70:	99488893          	add	a7,a7,-1644 # 8000f400 <trap_table>
    80000a74:	00c0006f          	j	80000a80 <file_openat+0x48>
    80000a78:	00840413          	add	s0,s0,8
    80000a7c:	09140463          	beq	s0,a7,80000b04 <file_openat+0xcc>
    80000a80:	00442803          	lw	a6,4(s0)
    80000a84:	fe081ae3          	bnez	a6,80000a78 <file_openat+0x40>
    80000a88:	00442803          	lw	a6,4(s0)
    80000a8c:	fe0816e3          	bnez	a6,80000a78 <file_openat+0x40>
    80000a90:	01513423          	sd	s5,8(sp)
    80000a94:	00200a93          	li	s5,2
    80000a98:	00048513          	mv	a0,s1
    80000a9c:	01542223          	sw	s5,4(s0)
    80000aa0:	1190b0ef          	jal	8000c3b8 <strlen>
    80000aa4:	00012617          	auipc	a2,0x12
    80000aa8:	5bc63603          	ld	a2,1468(a2) # 80013060 <kva2pa_offset>
    80000aac:	00150693          	add	a3,a0,1
    80000ab0:	40c48633          	sub	a2,s1,a2
    80000ab4:	00000893          	li	a7,0
    80000ab8:	00000813          	li	a6,0
    80000abc:	00098793          	mv	a5,s3
    80000ac0:	00090713          	mv	a4,s2
    80000ac4:	000a0593          	mv	a1,s4
    80000ac8:	03800513          	li	a0,56
    80000acc:	2f8000ef          	jal	80000dc4 <frontend_syscall>
    80000ad0:	00050493          	mv	s1,a0
    80000ad4:	02054c63          	bltz	a0,80000b0c <file_openat+0xd4>
    80000ad8:	00813a83          	ld	s5,8(sp)
    80000adc:	00a42023          	sw	a0,0(s0)
    80000ae0:	03813083          	ld	ra,56(sp)
    80000ae4:	00040513          	mv	a0,s0
    80000ae8:	03013403          	ld	s0,48(sp)
    80000aec:	02813483          	ld	s1,40(sp)
    80000af0:	02013903          	ld	s2,32(sp)
    80000af4:	01813983          	ld	s3,24(sp)
    80000af8:	01013a03          	ld	s4,16(sp)
    80000afc:	04010113          	add	sp,sp,64
    80000b00:	00008067          	ret
    80000b04:	ff400413          	li	s0,-12
    80000b08:	fd9ff06f          	j	80000ae0 <file_openat+0xa8>
    80000b0c:	00442783          	lw	a5,4(s0)
    80000b10:	fff7871b          	addw	a4,a5,-1
    80000b14:	00e42223          	sw	a4,4(s0)
    80000b18:	01578863          	beq	a5,s5,80000b28 <file_openat+0xf0>
    80000b1c:	00813a83          	ld	s5,8(sp)
    80000b20:	00048413          	mv	s0,s1
    80000b24:	fbdff06f          	j	80000ae0 <file_openat+0xa8>
    80000b28:	00042583          	lw	a1,0(s0)
    80000b2c:	0ff0000f          	fence
    80000b30:	00000893          	li	a7,0
    80000b34:	00042223          	sw	zero,4(s0)
    80000b38:	00000813          	li	a6,0
    80000b3c:	00000793          	li	a5,0
    80000b40:	00000713          	li	a4,0
    80000b44:	00000693          	li	a3,0
    80000b48:	00000613          	li	a2,0
    80000b4c:	03900513          	li	a0,57
    80000b50:	274000ef          	jal	80000dc4 <frontend_syscall>
    80000b54:	fc9ff06f          	j	80000b1c <file_openat+0xe4>

0000000080000b58 <file_open>:
    80000b58:	00060693          	mv	a3,a2
    80000b5c:	00058613          	mv	a2,a1
    80000b60:	00050593          	mv	a1,a0
    80000b64:	f9c00513          	li	a0,-100
    80000b68:	ed1ff06f          	j	80000a38 <file_openat>

0000000080000b6c <fd_close>:
    80000b6c:	07f00793          	li	a5,127
    80000b70:	0ea7ea63          	bltu	a5,a0,80000c64 <fd_close+0xf8>
    80000b74:	00010697          	auipc	a3,0x10
    80000b78:	10468693          	add	a3,a3,260 # 80010c78 <fds>
    80000b7c:	00351513          	sll	a0,a0,0x3
    80000b80:	fe010113          	add	sp,sp,-32
    80000b84:	00a687b3          	add	a5,a3,a0
    80000b88:	00813823          	sd	s0,16(sp)
    80000b8c:	0007b403          	ld	s0,0(a5)
    80000b90:	00113c23          	sd	ra,24(sp)
    80000b94:	00913423          	sd	s1,8(sp)
    80000b98:	04040063          	beqz	s0,80000bd8 <fd_close+0x6c>
    80000b9c:	00442783          	lw	a5,4(s0)
    80000ba0:	0007871b          	sext.w	a4,a5
    80000ba4:	02078a63          	beqz	a5,80000bd8 <fd_close+0x6c>
    80000ba8:	00442783          	lw	a5,4(s0)
    80000bac:	fef718e3          	bne	a4,a5,80000b9c <fd_close+0x30>
    80000bb0:	00a687b3          	add	a5,a3,a0
    80000bb4:	0007b483          	ld	s1,0(a5)
    80000bb8:	0017071b          	addw	a4,a4,1
    80000bbc:	00e42223          	sw	a4,4(s0)
    80000bc0:	02848863          	beq	s1,s0,80000bf0 <fd_close+0x84>
    80000bc4:	00442783          	lw	a5,4(s0)
    80000bc8:	00200713          	li	a4,2
    80000bcc:	fff7869b          	addw	a3,a5,-1
    80000bd0:	00d42223          	sw	a3,4(s0)
    80000bd4:	02e78a63          	beq	a5,a4,80000c08 <fd_close+0x9c>
    80000bd8:	01813083          	ld	ra,24(sp)
    80000bdc:	01013403          	ld	s0,16(sp)
    80000be0:	00813483          	ld	s1,8(sp)
    80000be4:	fff00513          	li	a0,-1
    80000be8:	02010113          	add	sp,sp,32
    80000bec:	00008067          	ret
    80000bf0:	00442703          	lw	a4,4(s0)
    80000bf4:	0007b023          	sd	zero,0(a5)
    80000bf8:	00200793          	li	a5,2
    80000bfc:	fff7069b          	addw	a3,a4,-1
    80000c00:	00d42223          	sw	a3,4(s0)
    80000c04:	02f71a63          	bne	a4,a5,80000c38 <fd_close+0xcc>
    80000c08:	00042583          	lw	a1,0(s0)
    80000c0c:	0ff0000f          	fence
    80000c10:	00000893          	li	a7,0
    80000c14:	00042223          	sw	zero,4(s0)
    80000c18:	00000813          	li	a6,0
    80000c1c:	00000793          	li	a5,0
    80000c20:	00000713          	li	a4,0
    80000c24:	00000693          	li	a3,0
    80000c28:	00000613          	li	a2,0
    80000c2c:	03900513          	li	a0,57
    80000c30:	194000ef          	jal	80000dc4 <frontend_syscall>
    80000c34:	fa8492e3          	bne	s1,s0,80000bd8 <fd_close+0x6c>
    80000c38:	00442783          	lw	a5,4(s0)
    80000c3c:	00200713          	li	a4,2
    80000c40:	fff7869b          	addw	a3,a5,-1
    80000c44:	00d42223          	sw	a3,4(s0)
    80000c48:	02e78263          	beq	a5,a4,80000c6c <fd_close+0x100>
    80000c4c:	00000513          	li	a0,0
    80000c50:	01813083          	ld	ra,24(sp)
    80000c54:	01013403          	ld	s0,16(sp)
    80000c58:	00813483          	ld	s1,8(sp)
    80000c5c:	02010113          	add	sp,sp,32
    80000c60:	00008067          	ret
    80000c64:	fff00513          	li	a0,-1
    80000c68:	00008067          	ret
    80000c6c:	00042583          	lw	a1,0(s0)
    80000c70:	0ff0000f          	fence
    80000c74:	00000893          	li	a7,0
    80000c78:	00042223          	sw	zero,4(s0)
    80000c7c:	00000813          	li	a6,0
    80000c80:	00000793          	li	a5,0
    80000c84:	00000713          	li	a4,0
    80000c88:	00000693          	li	a3,0
    80000c8c:	00000613          	li	a2,0
    80000c90:	03900513          	li	a0,57
    80000c94:	130000ef          	jal	80000dc4 <frontend_syscall>
    80000c98:	00000513          	li	a0,0
    80000c9c:	fb5ff06f          	j	80000c50 <fd_close+0xe4>

0000000080000ca0 <file_read>:
    80000ca0:	00058313          	mv	t1,a1
    80000ca4:	00052583          	lw	a1,0(a0)
    80000ca8:	00060693          	mv	a3,a2
    80000cac:	00012617          	auipc	a2,0x12
    80000cb0:	3b463603          	ld	a2,948(a2) # 80013060 <kva2pa_offset>
    80000cb4:	00000893          	li	a7,0
    80000cb8:	00000813          	li	a6,0
    80000cbc:	00000793          	li	a5,0
    80000cc0:	00000713          	li	a4,0
    80000cc4:	40c30633          	sub	a2,t1,a2
    80000cc8:	03f00513          	li	a0,63
    80000ccc:	0f80006f          	j	80000dc4 <frontend_syscall>

0000000080000cd0 <file_pread>:
    80000cd0:	00058313          	mv	t1,a1
    80000cd4:	00052583          	lw	a1,0(a0)
    80000cd8:	00068713          	mv	a4,a3
    80000cdc:	00060693          	mv	a3,a2
    80000ce0:	00012617          	auipc	a2,0x12
    80000ce4:	38063603          	ld	a2,896(a2) # 80013060 <kva2pa_offset>
    80000ce8:	00000893          	li	a7,0
    80000cec:	00000813          	li	a6,0
    80000cf0:	00000793          	li	a5,0
    80000cf4:	40c30633          	sub	a2,t1,a2
    80000cf8:	04300513          	li	a0,67
    80000cfc:	0c80006f          	j	80000dc4 <frontend_syscall>

0000000080000d00 <file_write>:
    80000d00:	00058313          	mv	t1,a1
    80000d04:	00052583          	lw	a1,0(a0)
    80000d08:	00060693          	mv	a3,a2
    80000d0c:	00012617          	auipc	a2,0x12
    80000d10:	35463603          	ld	a2,852(a2) # 80013060 <kva2pa_offset>
    80000d14:	00000893          	li	a7,0
    80000d18:	00000813          	li	a6,0
    80000d1c:	00000793          	li	a5,0
    80000d20:	00000713          	li	a4,0
    80000d24:	40c30633          	sub	a2,t1,a2
    80000d28:	04000513          	li	a0,64
    80000d2c:	0980006f          	j	80000dc4 <frontend_syscall>

0000000080000d30 <file_pwrite>:
    80000d30:	00058313          	mv	t1,a1
    80000d34:	00052583          	lw	a1,0(a0)
    80000d38:	00068713          	mv	a4,a3
    80000d3c:	00060693          	mv	a3,a2
    80000d40:	00012617          	auipc	a2,0x12
    80000d44:	32063603          	ld	a2,800(a2) # 80013060 <kva2pa_offset>
    80000d48:	00000893          	li	a7,0
    80000d4c:	00000813          	li	a6,0
    80000d50:	00000793          	li	a5,0
    80000d54:	40c30633          	sub	a2,t1,a2
    80000d58:	04400513          	li	a0,68
    80000d5c:	0680006f          	j	80000dc4 <frontend_syscall>

0000000080000d60 <file_truncate>:
    80000d60:	00058613          	mv	a2,a1
    80000d64:	00052583          	lw	a1,0(a0)
    80000d68:	ff010113          	add	sp,sp,-16
    80000d6c:	00000893          	li	a7,0
    80000d70:	00000813          	li	a6,0
    80000d74:	00000793          	li	a5,0
    80000d78:	00000713          	li	a4,0
    80000d7c:	00000693          	li	a3,0
    80000d80:	02e00513          	li	a0,46
    80000d84:	00113423          	sd	ra,8(sp)
    80000d88:	03c000ef          	jal	80000dc4 <frontend_syscall>
    80000d8c:	00813083          	ld	ra,8(sp)
    80000d90:	0005051b          	sext.w	a0,a0
    80000d94:	01010113          	add	sp,sp,16
    80000d98:	00008067          	ret

0000000080000d9c <file_lseek>:
    80000d9c:	00058313          	mv	t1,a1
    80000da0:	00052583          	lw	a1,0(a0)
    80000da4:	00060693          	mv	a3,a2
    80000da8:	00000893          	li	a7,0
    80000dac:	00000813          	li	a6,0
    80000db0:	00000793          	li	a5,0
    80000db4:	00000713          	li	a4,0
    80000db8:	00030613          	mv	a2,t1
    80000dbc:	03e00513          	li	a0,62
    80000dc0:	0040006f          	j	80000dc4 <frontend_syscall>

0000000080000dc4 <frontend_syscall>:
    80000dc4:	ff010113          	add	sp,sp,-16
    80000dc8:	00113423          	sd	ra,8(sp)
    80000dcc:	00813023          	sd	s0,0(sp)
    80000dd0:	00012e17          	auipc	t3,0x12
    80000dd4:	238e0e13          	add	t3,t3,568 # 80013008 <lock.1>
    80000dd8:	fff00e93          	li	t4,-1
    80000ddc:	000e2303          	lw	t1,0(t3)
    80000de0:	fe031ee3          	bnez	t1,80000ddc <frontend_syscall+0x18>
    80000de4:	000e2303          	lw	t1,0(t3)
    80000de8:	01de2023          	sw	t4,0(t3)
    80000dec:	0003031b          	sext.w	t1,t1
    80000df0:	0ff0000f          	fence
    80000df4:	fe0314e3          	bnez	t1,80000ddc <frontend_syscall+0x18>
    80000df8:	00010417          	auipc	s0,0x10
    80000dfc:	28040413          	add	s0,s0,640 # 80011078 <magic_mem.0>
    80000e00:	00a43023          	sd	a0,0(s0)
    80000e04:	00b43423          	sd	a1,8(s0)
    80000e08:	00c43823          	sd	a2,16(s0)
    80000e0c:	00d43c23          	sd	a3,24(s0)
    80000e10:	02e43023          	sd	a4,32(s0)
    80000e14:	02f43423          	sd	a5,40(s0)
    80000e18:	03043823          	sd	a6,48(s0)
    80000e1c:	03143c23          	sd	a7,56(s0)
    80000e20:	026e9e93          	sll	t4,t4,0x26
    80000e24:	00040513          	mv	a0,s0
    80000e28:	01d46863          	bltu	s0,t4,80000e38 <frontend_syscall+0x74>
    80000e2c:	00012517          	auipc	a0,0x12
    80000e30:	23453503          	ld	a0,564(a0) # 80013060 <kva2pa_offset>
    80000e34:	40a40533          	sub	a0,s0,a0
    80000e38:	799030ef          	jal	80004dd0 <htif_syscall>
    80000e3c:	00043503          	ld	a0,0(s0)
    80000e40:	0ff0000f          	fence
    80000e44:	00813083          	ld	ra,8(sp)
    80000e48:	00013403          	ld	s0,0(sp)
    80000e4c:	00012797          	auipc	a5,0x12
    80000e50:	1a07ae23          	sw	zero,444(a5) # 80013008 <lock.1>
    80000e54:	01010113          	add	sp,sp,16
    80000e58:	00008067          	ret

0000000080000e5c <shutdown>:
    80000e5c:	ff010113          	add	sp,sp,-16
    80000e60:	00050593          	mv	a1,a0
    80000e64:	00000893          	li	a7,0
    80000e68:	00000813          	li	a6,0
    80000e6c:	00000793          	li	a5,0
    80000e70:	00000713          	li	a4,0
    80000e74:	00000693          	li	a3,0
    80000e78:	00000613          	li	a2,0
    80000e7c:	05d00513          	li	a0,93
    80000e80:	00113423          	sd	ra,8(sp)
    80000e84:	f41ff0ef          	jal	80000dc4 <frontend_syscall>
    80000e88:	0000006f          	j	80000e88 <shutdown+0x2c>

0000000080000e8c <load_elf>:
    80000e8c:	f4010113          	add	sp,sp,-192
    80000e90:	0b213023          	sd	s2,160(sp)
    80000e94:	00000613          	li	a2,0
    80000e98:	00058913          	mv	s2,a1
    80000e9c:	00000593          	li	a1,0
    80000ea0:	0a113c23          	sd	ra,184(sp)
    80000ea4:	0a813823          	sd	s0,176(sp)
    80000ea8:	0a913423          	sd	s1,168(sp)
    80000eac:	09313c23          	sd	s3,152(sp)
    80000eb0:	09413823          	sd	s4,144(sp)
    80000eb4:	00a13423          	sd	a0,8(sp)
    80000eb8:	ca1ff0ef          	jal	80000b58 <file_open>
    80000ebc:	fffff7b7          	lui	a5,0xfffff
    80000ec0:	2cf57263          	bgeu	a0,a5,80001184 <load_elf+0x2f8>
    80000ec4:	00000693          	li	a3,0
    80000ec8:	04000613          	li	a2,64
    80000ecc:	01010593          	add	a1,sp,16
    80000ed0:	00050a13          	mv	s4,a0
    80000ed4:	dfdff0ef          	jal	80000cd0 <file_pread>
    80000ed8:	03f00793          	li	a5,63
    80000edc:	2aa7d463          	bge	a5,a0,80001184 <load_elf+0x2f8>
    80000ee0:	01013703          	ld	a4,16(sp)
    80000ee4:	464c47b7          	lui	a5,0x464c4
    80000ee8:	57f78793          	add	a5,a5,1407 # 464c457f <_ftext-0x39b3ba81>
    80000eec:	02071693          	sll	a3,a4,0x20
    80000ef0:	0206d693          	srl	a3,a3,0x20
    80000ef4:	fff00493          	li	s1,-1
    80000ef8:	28f69663          	bne	a3,a5,80001184 <load_elf+0x2f8>
    80000efc:	000927b7          	lui	a5,0x92
    80000f00:	93178793          	add	a5,a5,-1743 # 91931 <_ftext-0x7ff6e6cf>
    80000f04:	0184d693          	srl	a3,s1,0x18
    80000f08:	00e79793          	sll	a5,a5,0xe
    80000f0c:	00d77733          	and	a4,a4,a3
    80000f10:	57f78793          	add	a5,a5,1407
    80000f14:	2cf71c63          	bne	a4,a5,800011ec <load_elf+0x360>
    80000f18:	04012783          	lw	a5,64(sp)
    80000f1c:	0017f793          	and	a5,a5,1
    80000f20:	28079263          	bnez	a5,800011a4 <load_elf+0x318>
    80000f24:	04815783          	lhu	a5,72(sp)
    80000f28:	01893703          	ld	a4,24(s2)
    80000f2c:	00379413          	sll	s0,a5,0x3
    80000f30:	40f40433          	sub	s0,s0,a5
    80000f34:	00341413          	sll	s0,s0,0x3
    80000f38:	24876663          	bltu	a4,s0,80001184 <load_elf+0x2f8>
    80000f3c:	03013683          	ld	a3,48(sp)
    80000f40:	01093583          	ld	a1,16(s2)
    80000f44:	00040613          	mv	a2,s0
    80000f48:	000a0513          	mv	a0,s4
    80000f4c:	d85ff0ef          	jal	80000cd0 <file_pread>
    80000f50:	22854a63          	blt	a0,s0,80001184 <load_elf+0x2f8>
    80000f54:	02015983          	lhu	s3,32(sp)
    80000f58:	04815703          	lhu	a4,72(sp)
    80000f5c:	02813683          	ld	a3,40(sp)
    80000f60:	ffd98993          	add	s3,s3,-3
    80000f64:	0019b993          	seqz	s3,s3
    80000f68:	00c99993          	sll	s3,s3,0xc
    80000f6c:	0007079b          	sext.w	a5,a4
    80000f70:	03800613          	li	a2,56
    80000f74:	013686b3          	add	a3,a3,s3
    80000f78:	00f92223          	sw	a5,4(s2)
    80000f7c:	00c92023          	sw	a2,0(s2)
    80000f80:	02d93423          	sd	a3,40(s2)
    80000f84:	fff7879b          	addw	a5,a5,-1
    80000f88:	01093603          	ld	a2,16(s2)
    80000f8c:	1a978663          	beq	a5,s1,80001138 <load_elf+0x2ac>
    80000f90:	fff7069b          	addw	a3,a4,-1
    80000f94:	07913423          	sd	s9,104(sp)
    80000f98:	02069693          	sll	a3,a3,0x20
    80000f9c:	00371c93          	sll	s9,a4,0x3
    80000fa0:	0206d693          	srl	a3,a3,0x20
    80000fa4:	40ec8cb3          	sub	s9,s9,a4
    80000fa8:	00379413          	sll	s0,a5,0x3
    80000fac:	003c9c93          	sll	s9,s9,0x3
    80000fb0:	00369713          	sll	a4,a3,0x3
    80000fb4:	40f40433          	sub	s0,s0,a5
    80000fb8:	f90c8c93          	add	s9,s9,-112
    80000fbc:	40d707b3          	sub	a5,a4,a3
    80000fc0:	09513423          	sd	s5,136(sp)
    80000fc4:	00341413          	sll	s0,s0,0x3
    80000fc8:	00cc8cb3          	add	s9,s9,a2
    80000fcc:	00379793          	sll	a5,a5,0x3
    80000fd0:	00001ab7          	lui	s5,0x1
    80000fd4:	09613023          	sd	s6,128(sp)
    80000fd8:	05b13c23          	sd	s11,88(sp)
    80000fdc:	07713c23          	sd	s7,120(sp)
    80000fe0:	07813823          	sd	s8,112(sp)
    80000fe4:	07a13023          	sd	s10,96(sp)
    80000fe8:	00c40433          	add	s0,s0,a2
    80000fec:	40fc8cb3          	sub	s9,s9,a5
    80000ff0:	00300d93          	li	s11,3
    80000ff4:	00100b13          	li	s6,1
    80000ff8:	fffa8a93          	add	s5,s5,-1 # fff <_ftext-0x7ffff001>
    80000ffc:	00c0006f          	j	80001008 <load_elf+0x17c>
    80001000:	fc840413          	add	s0,s0,-56
    80001004:	108c8c63          	beq	s9,s0,8000111c <load_elf+0x290>
    80001008:	00042783          	lw	a5,0(s0)
    8000100c:	17b78663          	beq	a5,s11,80001178 <load_elf+0x2ec>
    80001010:	ff6798e3          	bne	a5,s6,80001000 <load_elf+0x174>
    80001014:	02843783          	ld	a5,40(s0)
    80001018:	fe0784e3          	beqz	a5,80001000 <load_elf+0x174>
    8000101c:	01043c03          	ld	s8,16(s0)
    80001020:	03093703          	ld	a4,48(s2)
    80001024:	013c0bb3          	add	s7,s8,s3
    80001028:	017787b3          	add	a5,a5,s7
    8000102c:	015c7c33          	and	s8,s8,s5
    80001030:	00f77463          	bgeu	a4,a5,80001038 <load_elf+0x1ac>
    80001034:	02f93823          	sd	a5,48(s2)
    80001038:	00442703          	lw	a4,4(s0)
    8000103c:	00843783          	ld	a5,8(s0)
    80001040:	02043583          	ld	a1,32(s0)
    80001044:	0027149b          	sllw	s1,a4,0x2
    80001048:	0027561b          	srlw	a2,a4,0x2
    8000104c:	018036b3          	snez	a3,s8
    80001050:	00167613          	and	a2,a2,1
    80001054:	0044f493          	and	s1,s1,4
    80001058:	00f6969b          	sllw	a3,a3,0xf
    8000105c:	00c4e4b3          	or	s1,s1,a2
    80001060:	418b8d33          	sub	s10,s7,s8
    80001064:	0126e693          	or	a3,a3,18
    80001068:	00277813          	and	a6,a4,2
    8000106c:	0024e613          	or	a2,s1,2
    80001070:	418787b3          	sub	a5,a5,s8
    80001074:	000a0713          	mv	a4,s4
    80001078:	0006869b          	sext.w	a3,a3
    8000107c:	00bc05b3          	add	a1,s8,a1
    80001080:	000d0513          	mv	a0,s10
    80001084:	0104e4b3          	or	s1,s1,a6
    80001088:	311000ef          	jal	80001b98 <__do_mmap>
    8000108c:	06ad1263          	bne	s10,a0,800010f0 <load_elf+0x264>
    80001090:	000c0613          	mv	a2,s8
    80001094:	00000593          	li	a1,0
    80001098:	650010ef          	jal	800026e8 <memset_user>
    8000109c:	0024f793          	and	a5,s1,2
    800010a0:	06078063          	beqz	a5,80001100 <load_elf+0x274>
    800010a4:	02043803          	ld	a6,32(s0)
    800010a8:	02843583          	ld	a1,40(s0)
    800010ac:	fff80813          	add	a6,a6,-1
    800010b0:	01880833          	add	a6,a6,s8
    800010b4:	00c85813          	srl	a6,a6,0xc
    800010b8:	00180813          	add	a6,a6,1
    800010bc:	00c81813          	sll	a6,a6,0xc
    800010c0:	418807b3          	sub	a5,a6,s8
    800010c4:	f2b7fee3          	bgeu	a5,a1,80001000 <load_elf+0x174>
    800010c8:	00fb8bb3          	add	s7,s7,a5
    800010cc:	018585b3          	add	a1,a1,s8
    800010d0:	00000793          	li	a5,0
    800010d4:	00000713          	li	a4,0
    800010d8:	03200693          	li	a3,50
    800010dc:	00048613          	mv	a2,s1
    800010e0:	410585b3          	sub	a1,a1,a6
    800010e4:	000b8513          	mv	a0,s7
    800010e8:	2b1000ef          	jal	80001b98 <__do_mmap>
    800010ec:	f0ab8ae3          	beq	s7,a0,80001000 <load_elf+0x174>
    800010f0:	00813583          	ld	a1,8(sp)
    800010f4:	0000c517          	auipc	a0,0xc
    800010f8:	59450513          	add	a0,a0,1428 # 8000d688 <softfloat_countLeadingZeros8+0x3a8>
    800010fc:	2a0000ef          	jal	8000139c <do_panic>
    80001100:	02043583          	ld	a1,32(s0)
    80001104:	00048613          	mv	a2,s1
    80001108:	000d0513          	mv	a0,s10
    8000110c:	00bc05b3          	add	a1,s8,a1
    80001110:	100010ef          	jal	80002210 <do_mprotect>
    80001114:	f80508e3          	beqz	a0,800010a4 <load_elf+0x218>
    80001118:	fd9ff06f          	j	800010f0 <load_elf+0x264>
    8000111c:	08813a83          	ld	s5,136(sp)
    80001120:	08013b03          	ld	s6,128(sp)
    80001124:	07813b83          	ld	s7,120(sp)
    80001128:	07013c03          	ld	s8,112(sp)
    8000112c:	06813c83          	ld	s9,104(sp)
    80001130:	06013d03          	ld	s10,96(sp)
    80001134:	05813d83          	ld	s11,88(sp)
    80001138:	000a0513          	mv	a0,s4
    8000113c:	f0cff0ef          	jal	80000848 <file_decref>
    80001140:	03093783          	ld	a5,48(s2)
    80001144:	0b813083          	ld	ra,184(sp)
    80001148:	0b013403          	ld	s0,176(sp)
    8000114c:	fff78793          	add	a5,a5,-1
    80001150:	00c7d793          	srl	a5,a5,0xc
    80001154:	00178793          	add	a5,a5,1
    80001158:	00c79793          	sll	a5,a5,0xc
    8000115c:	02f93c23          	sd	a5,56(s2)
    80001160:	0a813483          	ld	s1,168(sp)
    80001164:	0a013903          	ld	s2,160(sp)
    80001168:	09813983          	ld	s3,152(sp)
    8000116c:	09013a03          	ld	s4,144(sp)
    80001170:	0c010113          	add	sp,sp,192
    80001174:	00008067          	ret
    80001178:	0000c517          	auipc	a0,0xc
    8000117c:	4e850513          	add	a0,a0,1256 # 8000d660 <softfloat_countLeadingZeros8+0x380>
    80001180:	21c000ef          	jal	8000139c <do_panic>
    80001184:	09513423          	sd	s5,136(sp)
    80001188:	09613023          	sd	s6,128(sp)
    8000118c:	07713c23          	sd	s7,120(sp)
    80001190:	07813823          	sd	s8,112(sp)
    80001194:	07913423          	sd	s9,104(sp)
    80001198:	07a13023          	sd	s10,96(sp)
    8000119c:	05b13c23          	sd	s11,88(sp)
    800011a0:	f51ff06f          	j	800010f0 <load_elf+0x264>
    800011a4:	09513423          	sd	s5,136(sp)
    800011a8:	09613023          	sd	s6,128(sp)
    800011ac:	07713c23          	sd	s7,120(sp)
    800011b0:	07813823          	sd	s8,112(sp)
    800011b4:	07913423          	sd	s9,104(sp)
    800011b8:	07a13023          	sd	s10,96(sp)
    800011bc:	05b13c23          	sd	s11,88(sp)
    800011c0:	0000c697          	auipc	a3,0xc
    800011c4:	48068693          	add	a3,a3,1152 # 8000d640 <softfloat_countLeadingZeros8+0x360>
    800011c8:	02f00613          	li	a2,47
    800011cc:	0000c517          	auipc	a0,0xc
    800011d0:	45450513          	add	a0,a0,1108 # 8000d620 <softfloat_countLeadingZeros8+0x340>
    800011d4:	0000c597          	auipc	a1,0xc
    800011d8:	43c58593          	add	a1,a1,1084 # 8000d610 <softfloat_countLeadingZeros8+0x330>
    800011dc:	1c0030ef          	jal	8000439c <printm>
    800011e0:	00010537          	lui	a0,0x10
    800011e4:	fff50513          	add	a0,a0,-1 # ffff <_ftext-0x7fff0001>
    800011e8:	28c030ef          	jal	80004474 <poweroff>
    800011ec:	09513423          	sd	s5,136(sp)
    800011f0:	09613023          	sd	s6,128(sp)
    800011f4:	07713c23          	sd	s7,120(sp)
    800011f8:	07813823          	sd	s8,112(sp)
    800011fc:	07913423          	sd	s9,104(sp)
    80001200:	07a13023          	sd	s10,96(sp)
    80001204:	05b13c23          	sd	s11,88(sp)
    80001208:	0000c697          	auipc	a3,0xc
    8000120c:	3f868693          	add	a3,a3,1016 # 8000d600 <softfloat_countLeadingZeros8+0x320>
    80001210:	02900613          	li	a2,41
    80001214:	fb9ff06f          	j	800011cc <load_elf+0x340>

0000000080001218 <vprintk>:
    80001218:	ef010113          	add	sp,sp,-272
    8000121c:	10813023          	sd	s0,256(sp)
    80001220:	00010413          	mv	s0,sp
    80001224:	00058693          	mv	a3,a1
    80001228:	00050613          	mv	a2,a0
    8000122c:	10000593          	li	a1,256
    80001230:	00040513          	mv	a0,s0
    80001234:	10113423          	sd	ra,264(sp)
    80001238:	54d0a0ef          	jal	8000bf84 <vsnprintf>
    8000123c:	0005071b          	sext.w	a4,a0
    80001240:	0ff00793          	li	a5,255
    80001244:	10000693          	li	a3,256
    80001248:	00e7e463          	bltu	a5,a4,80001250 <vprintk+0x38>
    8000124c:	00050693          	mv	a3,a0
    80001250:	00012617          	auipc	a2,0x12
    80001254:	e1063603          	ld	a2,-496(a2) # 80013060 <kva2pa_offset>
    80001258:	40c40633          	sub	a2,s0,a2
    8000125c:	00000893          	li	a7,0
    80001260:	00000813          	li	a6,0
    80001264:	00000793          	li	a5,0
    80001268:	00000713          	li	a4,0
    8000126c:	00200593          	li	a1,2
    80001270:	04000513          	li	a0,64
    80001274:	b51ff0ef          	jal	80000dc4 <frontend_syscall>
    80001278:	10813083          	ld	ra,264(sp)
    8000127c:	10013403          	ld	s0,256(sp)
    80001280:	11010113          	add	sp,sp,272
    80001284:	00008067          	ret

0000000080001288 <printk>:
    80001288:	fa010113          	add	sp,sp,-96
    8000128c:	02810313          	add	t1,sp,40
    80001290:	02b13423          	sd	a1,40(sp)
    80001294:	00030593          	mv	a1,t1
    80001298:	00113c23          	sd	ra,24(sp)
    8000129c:	02c13823          	sd	a2,48(sp)
    800012a0:	02d13c23          	sd	a3,56(sp)
    800012a4:	04e13023          	sd	a4,64(sp)
    800012a8:	04f13423          	sd	a5,72(sp)
    800012ac:	05013823          	sd	a6,80(sp)
    800012b0:	05113c23          	sd	a7,88(sp)
    800012b4:	00613423          	sd	t1,8(sp)
    800012b8:	f61ff0ef          	jal	80001218 <vprintk>
    800012bc:	01813083          	ld	ra,24(sp)
    800012c0:	06010113          	add	sp,sp,96
    800012c4:	00008067          	ret

00000000800012c8 <dump_tf>:
    800012c8:	fc010113          	add	sp,sp,-64
    800012cc:	03213023          	sd	s2,32(sp)
    800012d0:	01313c23          	sd	s3,24(sp)
    800012d4:	01413823          	sd	s4,16(sp)
    800012d8:	01513423          	sd	s5,8(sp)
    800012dc:	01613023          	sd	s6,0(sp)
    800012e0:	02113c23          	sd	ra,56(sp)
    800012e4:	02813823          	sd	s0,48(sp)
    800012e8:	02913423          	sd	s1,40(sp)
    800012ec:	00050b13          	mv	s6,a0
    800012f0:	00053023          	sd	zero,0(a0)
    800012f4:	0000b997          	auipc	s3,0xb
    800012f8:	1cc98993          	add	s3,s3,460 # 8000c4c0 <regnames.0>
    800012fc:	01850913          	add	s2,a0,24
    80001300:	00000a93          	li	s5,0
    80001304:	0000ca17          	auipc	s4,0xc
    80001308:	3a4a0a13          	add	s4,s4,932 # 8000d6a8 <softfloat_countLeadingZeros8+0x3c8>
    8000130c:	fe893603          	ld	a2,-24(s2)
    80001310:	00098593          	mv	a1,s3
    80001314:	00398493          	add	s1,s3,3
    80001318:	fe890413          	add	s0,s2,-24
    8000131c:	02000693          	li	a3,32
    80001320:	000a0513          	mv	a0,s4
    80001324:	f65ff0ef          	jal	80001288 <printk>
    80001328:	00843603          	ld	a2,8(s0)
    8000132c:	00840413          	add	s0,s0,8
    80001330:	00048593          	mv	a1,s1
    80001334:	00348493          	add	s1,s1,3
    80001338:	ff2412e3          	bne	s0,s2,8000131c <dump_tf+0x54>
    8000133c:	00998593          	add	a1,s3,9
    80001340:	00a00693          	li	a3,10
    80001344:	000a0513          	mv	a0,s4
    80001348:	f41ff0ef          	jal	80001288 <printk>
    8000134c:	004a8a9b          	addw	s5,s5,4
    80001350:	02000793          	li	a5,32
    80001354:	00c98993          	add	s3,s3,12
    80001358:	02040913          	add	s2,s0,32
    8000135c:	fafa98e3          	bne	s5,a5,8000130c <dump_tf+0x44>
    80001360:	03013403          	ld	s0,48(sp)
    80001364:	100b3683          	ld	a3,256(s6)
    80001368:	110b3603          	ld	a2,272(s6)
    8000136c:	108b3583          	ld	a1,264(s6)
    80001370:	03813083          	ld	ra,56(sp)
    80001374:	02813483          	ld	s1,40(sp)
    80001378:	02013903          	ld	s2,32(sp)
    8000137c:	01813983          	ld	s3,24(sp)
    80001380:	01013a03          	ld	s4,16(sp)
    80001384:	00813a83          	ld	s5,8(sp)
    80001388:	00013b03          	ld	s6,0(sp)
    8000138c:	0000c517          	auipc	a0,0xc
    80001390:	32c50513          	add	a0,a0,812 # 8000d6b8 <softfloat_countLeadingZeros8+0x3d8>
    80001394:	04010113          	add	sp,sp,64
    80001398:	ef1ff06f          	j	80001288 <printk>

000000008000139c <do_panic>:
    8000139c:	fa010113          	add	sp,sp,-96
    800013a0:	02810313          	add	t1,sp,40
    800013a4:	02b13423          	sd	a1,40(sp)
    800013a8:	00030593          	mv	a1,t1
    800013ac:	00113c23          	sd	ra,24(sp)
    800013b0:	02c13823          	sd	a2,48(sp)
    800013b4:	02d13c23          	sd	a3,56(sp)
    800013b8:	04e13023          	sd	a4,64(sp)
    800013bc:	04f13423          	sd	a5,72(sp)
    800013c0:	05013823          	sd	a6,80(sp)
    800013c4:	05113c23          	sd	a7,88(sp)
    800013c8:	00613423          	sd	t1,8(sp)
    800013cc:	e4dff0ef          	jal	80001218 <vprintk>
    800013d0:	fff00513          	li	a0,-1
    800013d4:	a89ff0ef          	jal	80000e5c <shutdown>

00000000800013d8 <kassert_fail>:
    800013d8:	ff010113          	add	sp,sp,-16
    800013dc:	00050613          	mv	a2,a0
    800013e0:	00008593          	mv	a1,ra
    800013e4:	0000c517          	auipc	a0,0xc
    800013e8:	2f450513          	add	a0,a0,756 # 8000d6d8 <softfloat_countLeadingZeros8+0x3f8>
    800013ec:	00113423          	sd	ra,8(sp)
    800013f0:	fadff0ef          	jal	8000139c <do_panic>

00000000800013f4 <__vm_alloc_at>:
    800013f4:	00050813          	mv	a6,a0
    800013f8:	08a5ee63          	bltu	a1,a0,80001494 <__vm_alloc_at+0xa0>
    800013fc:	fff60e13          	add	t3,a2,-1
    80001400:	00012897          	auipc	a7,0x12
    80001404:	c508b883          	ld	a7,-944(a7) # 80013050 <root_page_table>
    80001408:	00012617          	auipc	a2,0x12
    8000140c:	c5863603          	ld	a2,-936(a2) # 80013060 <kva2pa_offset>
    80001410:	00ce1e13          	sll	t3,t3,0xc
    80001414:	fffff337          	lui	t1,0xfffff
    80001418:	00001eb7          	lui	t4,0x1
    8000141c:	01e85793          	srl	a5,a6,0x1e
    80001420:	1ff7f793          	and	a5,a5,511
    80001424:	00379793          	sll	a5,a5,0x3
    80001428:	00f887b3          	add	a5,a7,a5
    8000142c:	0007b703          	ld	a4,0(a5)
    80001430:	00177793          	and	a5,a4,1
    80001434:	06078463          	beqz	a5,8000149c <__vm_alloc_at+0xa8>
    80001438:	01585793          	srl	a5,a6,0x15
    8000143c:	1ff7f793          	and	a5,a5,511
    80001440:	00a75713          	srl	a4,a4,0xa
    80001444:	00379793          	sll	a5,a5,0x3
    80001448:	00c71713          	sll	a4,a4,0xc
    8000144c:	00c787b3          	add	a5,a5,a2
    80001450:	00e787b3          	add	a5,a5,a4
    80001454:	0007b783          	ld	a5,0(a5)
    80001458:	0017f713          	and	a4,a5,1
    8000145c:	04070063          	beqz	a4,8000149c <__vm_alloc_at+0xa8>
    80001460:	00a7d793          	srl	a5,a5,0xa
    80001464:	00c85713          	srl	a4,a6,0xc
    80001468:	00c79793          	sll	a5,a5,0xc
    8000146c:	1ff77713          	and	a4,a4,511
    80001470:	00c787b3          	add	a5,a5,a2
    80001474:	00371713          	sll	a4,a4,0x3
    80001478:	00e787b3          	add	a5,a5,a4
    8000147c:	02078063          	beqz	a5,8000149c <__vm_alloc_at+0xa8>
    80001480:	0007b783          	ld	a5,0(a5)
    80001484:	00078c63          	beqz	a5,8000149c <__vm_alloc_at+0xa8>
    80001488:	00080513          	mv	a0,a6
    8000148c:	01d50833          	add	a6,a0,t4
    80001490:	f905f6e3          	bgeu	a1,a6,8000141c <__vm_alloc_at+0x28>
    80001494:	00000513          	li	a0,0
    80001498:	00008067          	ret
    8000149c:	010e0533          	add	a0,t3,a6
    800014a0:	fea87ce3          	bgeu	a6,a0,80001498 <__vm_alloc_at+0xa4>
    800014a4:	01e55713          	srl	a4,a0,0x1e
    800014a8:	1ff77713          	and	a4,a4,511
    800014ac:	00371713          	sll	a4,a4,0x3
    800014b0:	00e88733          	add	a4,a7,a4
    800014b4:	00073683          	ld	a3,0(a4)
    800014b8:	01555793          	srl	a5,a0,0x15
    800014bc:	1ff7f793          	and	a5,a5,511
    800014c0:	00a6df13          	srl	t5,a3,0xa
    800014c4:	00379793          	sll	a5,a5,0x3
    800014c8:	00c55713          	srl	a4,a0,0xc
    800014cc:	00c787b3          	add	a5,a5,a2
    800014d0:	1ff77713          	and	a4,a4,511
    800014d4:	00cf1f13          	sll	t5,t5,0xc
    800014d8:	0016f693          	and	a3,a3,1
    800014dc:	01e787b3          	add	a5,a5,t5
    800014e0:	00371713          	sll	a4,a4,0x3
    800014e4:	02068663          	beqz	a3,80001510 <__vm_alloc_at+0x11c>
    800014e8:	0007b683          	ld	a3,0(a5)
    800014ec:	00a6d793          	srl	a5,a3,0xa
    800014f0:	00c79793          	sll	a5,a5,0xc
    800014f4:	00c787b3          	add	a5,a5,a2
    800014f8:	0016f693          	and	a3,a3,1
    800014fc:	00e787b3          	add	a5,a5,a4
    80001500:	00068863          	beqz	a3,80001510 <__vm_alloc_at+0x11c>
    80001504:	00078663          	beqz	a5,80001510 <__vm_alloc_at+0x11c>
    80001508:	0007b783          	ld	a5,0(a5)
    8000150c:	f80790e3          	bnez	a5,8000148c <__vm_alloc_at+0x98>
    80001510:	00650533          	add	a0,a0,t1
    80001514:	f8a868e3          	bltu	a6,a0,800014a4 <__vm_alloc_at+0xb0>
    80001518:	00008067          	ret

000000008000151c <__augment_page_freelist>:
    8000151c:	00012697          	auipc	a3,0x12
    80001520:	b1c68693          	add	a3,a3,-1252 # 80013038 <next_free_page>
    80001524:	0006b783          	ld	a5,0(a3)
    80001528:	00178713          	add	a4,a5,1
    8000152c:	06070c63          	beqz	a4,800015a4 <__augment_page_freelist+0x88>
    80001530:	00012617          	auipc	a2,0x12
    80001534:	b0063603          	ld	a2,-1280(a2) # 80013030 <free_pages>
    80001538:	06e66663          	bltu	a2,a4,800015a4 <__augment_page_freelist+0x88>
    8000153c:	ff010113          	add	sp,sp,-16
    80001540:	00813023          	sd	s0,0(sp)
    80001544:	00113423          	sd	ra,8(sp)
    80001548:	00c79793          	sll	a5,a5,0xc
    8000154c:	00012617          	auipc	a2,0x12
    80001550:	af463603          	ld	a2,-1292(a2) # 80013040 <first_free_page>
    80001554:	00c78433          	add	s0,a5,a2
    80001558:	00e6b023          	sd	a4,0(a3)
    8000155c:	00000513          	li	a0,0
    80001560:	02040a63          	beqz	s0,80001594 <__augment_page_freelist+0x78>
    80001564:	048000ef          	jal	800015ac <__maybe_fuzz_page_freelist>
    80001568:	00012717          	auipc	a4,0x12
    8000156c:	ab070713          	add	a4,a4,-1360 # 80013018 <page_freelist_depth>
    80001570:	00073783          	ld	a5,0(a4)
    80001574:	00100513          	li	a0,1
    80001578:	00178693          	add	a3,a5,1
    8000157c:	00d73023          	sd	a3,0(a4)
    80001580:	00379793          	sll	a5,a5,0x3
    80001584:	00012717          	auipc	a4,0x12
    80001588:	a8c73703          	ld	a4,-1396(a4) # 80013010 <page_freelist_storage>
    8000158c:	00f707b3          	add	a5,a4,a5
    80001590:	0087b023          	sd	s0,0(a5)
    80001594:	00813083          	ld	ra,8(sp)
    80001598:	00013403          	ld	s0,0(sp)
    8000159c:	01010113          	add	sp,sp,16
    800015a0:	00008067          	ret
    800015a4:	00000513          	li	a0,0
    800015a8:	00008067          	ret

00000000800015ac <__maybe_fuzz_page_freelist>:
    800015ac:	00012717          	auipc	a4,0x12
    800015b0:	a7470713          	add	a4,a4,-1420 # 80013020 <randomize_mapping>
    800015b4:	00073783          	ld	a5,0(a4)
    800015b8:	08078063          	beqz	a5,80001638 <__maybe_fuzz_page_freelist+0x8c>
    800015bc:	0017d613          	srl	a2,a5,0x1
    800015c0:	00c7c7b3          	xor	a5,a5,a2
    800015c4:	00100693          	li	a3,1
    800015c8:	03e69693          	sll	a3,a3,0x3e
    800015cc:	03e79793          	sll	a5,a5,0x3e
    800015d0:	00d7f7b3          	and	a5,a5,a3
    800015d4:	00c7e7b3          	or	a5,a5,a2
    800015d8:	00f73023          	sd	a5,0(a4)
    800015dc:	0017f693          	and	a3,a5,1
    800015e0:	04069863          	bnez	a3,80001630 <__maybe_fuzz_page_freelist+0x84>
    800015e4:	00012597          	auipc	a1,0x12
    800015e8:	a3458593          	add	a1,a1,-1484 # 80013018 <page_freelist_depth>
    800015ec:	0005b683          	ld	a3,0(a1)
    800015f0:	04068063          	beqz	a3,80001630 <__maybe_fuzz_page_freelist+0x84>
    800015f4:	02d7f7b3          	remu	a5,a5,a3
    800015f8:	00012617          	auipc	a2,0x12
    800015fc:	a1863603          	ld	a2,-1512(a2) # 80013010 <page_freelist_storage>
    80001600:	00369693          	sll	a3,a3,0x3
    80001604:	00d606b3          	add	a3,a2,a3
    80001608:	ff86b503          	ld	a0,-8(a3)
    8000160c:	00379793          	sll	a5,a5,0x3
    80001610:	00f607b3          	add	a5,a2,a5
    80001614:	0007b683          	ld	a3,0(a5)
    80001618:	00a7b023          	sd	a0,0(a5)
    8000161c:	0005b783          	ld	a5,0(a1)
    80001620:	00379793          	sll	a5,a5,0x3
    80001624:	00f60633          	add	a2,a2,a5
    80001628:	fed63c23          	sd	a3,-8(a2)
    8000162c:	00073783          	ld	a5,0(a4)
    80001630:	00f7f793          	and	a5,a5,15
    80001634:	00078463          	beqz	a5,8000163c <__maybe_fuzz_page_freelist+0x90>
    80001638:	00008067          	ret
    8000163c:	ee1ff06f          	j	8000151c <__augment_page_freelist>

0000000080001640 <__do_munmap>:
    80001640:	fa010113          	add	sp,sp,-96
    80001644:	03413823          	sd	s4,48(sp)
    80001648:	04113c23          	sd	ra,88(sp)
    8000164c:	00b50a33          	add	s4,a0,a1
    80001650:	19457063          	bgeu	a0,s4,800017d0 <__do_munmap+0x190>
    80001654:	04913423          	sd	s1,72(sp)
    80001658:	05213023          	sd	s2,64(sp)
    8000165c:	03313c23          	sd	s3,56(sp)
    80001660:	03513423          	sd	s5,40(sp)
    80001664:	03613023          	sd	s6,32(sp)
    80001668:	01713c23          	sd	s7,24(sp)
    8000166c:	01813823          	sd	s8,16(sp)
    80001670:	01913423          	sd	s9,8(sp)
    80001674:	04813823          	sd	s0,80(sp)
    80001678:	01a13023          	sd	s10,0(sp)
    8000167c:	00050993          	mv	s3,a0
    80001680:	00012b17          	auipc	s6,0x12
    80001684:	9d0b0b13          	add	s6,s6,-1584 # 80013050 <root_page_table>
    80001688:	00012b97          	auipc	s7,0x12
    8000168c:	9d8b8b93          	add	s7,s7,-1576 # 80013060 <kva2pa_offset>
    80001690:	00012c97          	auipc	s9,0x12
    80001694:	998c8c93          	add	s9,s9,-1640 # 80013028 <pages_promised>
    80001698:	00012917          	auipc	s2,0x12
    8000169c:	9c090913          	add	s2,s2,-1600 # 80013058 <vmr_freelist_head>
    800016a0:	00012497          	auipc	s1,0x12
    800016a4:	97048493          	add	s1,s1,-1680 # 80013010 <page_freelist_storage>
    800016a8:	00012c17          	auipc	s8,0x12
    800016ac:	970c0c13          	add	s8,s8,-1680 # 80013018 <page_freelist_depth>
    800016b0:	00001ab7          	lui	s5,0x1
    800016b4:	03c0006f          	j	800016f0 <__do_munmap+0xb0>
    800016b8:	ef5ff0ef          	jal	800015ac <__maybe_fuzz_page_freelist>
    800016bc:	000c3783          	ld	a5,0(s8)
    800016c0:	0004b703          	ld	a4,0(s1)
    800016c4:	00ad5d13          	srl	s10,s10,0xa
    800016c8:	00178693          	add	a3,a5,1
    800016cc:	00379793          	sll	a5,a5,0x3
    800016d0:	00dc3023          	sd	a3,0(s8)
    800016d4:	00f707b3          	add	a5,a4,a5
    800016d8:	00cd1d13          	sll	s10,s10,0xc
    800016dc:	01a7b023          	sd	s10,0(a5)
    800016e0:	00043023          	sd	zero,0(s0)
    800016e4:	12098073          	sfence.vma	s3
    800016e8:	015989b3          	add	s3,s3,s5
    800016ec:	0b49fe63          	bgeu	s3,s4,800017a8 <__do_munmap+0x168>
    800016f0:	000b3703          	ld	a4,0(s6)
    800016f4:	01e9d793          	srl	a5,s3,0x1e
    800016f8:	1ff7f793          	and	a5,a5,511
    800016fc:	00379793          	sll	a5,a5,0x3
    80001700:	00f707b3          	add	a5,a4,a5
    80001704:	0007b703          	ld	a4,0(a5)
    80001708:	00177793          	and	a5,a4,1
    8000170c:	fc078ee3          	beqz	a5,800016e8 <__do_munmap+0xa8>
    80001710:	000bb683          	ld	a3,0(s7)
    80001714:	0159d793          	srl	a5,s3,0x15
    80001718:	1ff7f793          	and	a5,a5,511
    8000171c:	00a75713          	srl	a4,a4,0xa
    80001720:	00379793          	sll	a5,a5,0x3
    80001724:	00c71713          	sll	a4,a4,0xc
    80001728:	00d787b3          	add	a5,a5,a3
    8000172c:	00e787b3          	add	a5,a5,a4
    80001730:	0007b783          	ld	a5,0(a5)
    80001734:	0017f713          	and	a4,a5,1
    80001738:	fa0708e3          	beqz	a4,800016e8 <__do_munmap+0xa8>
    8000173c:	00a7d413          	srl	s0,a5,0xa
    80001740:	00c9d793          	srl	a5,s3,0xc
    80001744:	00c41413          	sll	s0,s0,0xc
    80001748:	1ff7f793          	and	a5,a5,511
    8000174c:	00d40433          	add	s0,s0,a3
    80001750:	00379793          	sll	a5,a5,0x3
    80001754:	00f40433          	add	s0,s0,a5
    80001758:	f80408e3          	beqz	s0,800016e8 <__do_munmap+0xa8>
    8000175c:	00043d03          	ld	s10,0(s0)
    80001760:	f80d04e3          	beqz	s10,800016e8 <__do_munmap+0xa8>
    80001764:	001d7793          	and	a5,s10,1
    80001768:	f40798e3          	bnez	a5,800016b8 <__do_munmap+0x78>
    8000176c:	000cb703          	ld	a4,0(s9)
    80001770:	028d2783          	lw	a5,40(s10)
    80001774:	fff70713          	add	a4,a4,-1
    80001778:	fff7879b          	addw	a5,a5,-1
    8000177c:	00ecb023          	sd	a4,0(s9)
    80001780:	02fd2423          	sw	a5,40(s10)
    80001784:	0007871b          	sext.w	a4,a5
    80001788:	f4071ce3          	bnez	a4,800016e0 <__do_munmap+0xa0>
    8000178c:	018d3503          	ld	a0,24(s10)
    80001790:	00050463          	beqz	a0,80001798 <__do_munmap+0x158>
    80001794:	8b4ff0ef          	jal	80000848 <file_decref>
    80001798:	00093783          	ld	a5,0(s2)
    8000179c:	01a93023          	sd	s10,0(s2)
    800017a0:	00fd3023          	sd	a5,0(s10)
    800017a4:	f3dff06f          	j	800016e0 <__do_munmap+0xa0>
    800017a8:	05013403          	ld	s0,80(sp)
    800017ac:	04813483          	ld	s1,72(sp)
    800017b0:	04013903          	ld	s2,64(sp)
    800017b4:	03813983          	ld	s3,56(sp)
    800017b8:	02813a83          	ld	s5,40(sp)
    800017bc:	02013b03          	ld	s6,32(sp)
    800017c0:	01813b83          	ld	s7,24(sp)
    800017c4:	01013c03          	ld	s8,16(sp)
    800017c8:	00813c83          	ld	s9,8(sp)
    800017cc:	00013d03          	ld	s10,0(sp)
    800017d0:	05813083          	ld	ra,88(sp)
    800017d4:	03013a03          	ld	s4,48(sp)
    800017d8:	06010113          	add	sp,sp,96
    800017dc:	00008067          	ret

00000000800017e0 <__page_alloc>:
    800017e0:	fe010113          	add	sp,sp,-32
    800017e4:	00913423          	sd	s1,8(sp)
    800017e8:	00012497          	auipc	s1,0x12
    800017ec:	83048493          	add	s1,s1,-2000 # 80013018 <page_freelist_depth>
    800017f0:	00813823          	sd	s0,16(sp)
    800017f4:	0004b403          	ld	s0,0(s1)
    800017f8:	00113c23          	sd	ra,24(sp)
    800017fc:	00041663          	bnez	s0,80001808 <__page_alloc+0x28>
    80001800:	d1dff0ef          	jal	8000151c <__augment_page_freelist>
    80001804:	04050063          	beqz	a0,80001844 <__page_alloc+0x64>
    80001808:	da5ff0ef          	jal	800015ac <__maybe_fuzz_page_freelist>
    8000180c:	0004b783          	ld	a5,0(s1)
    80001810:	00012517          	auipc	a0,0x12
    80001814:	85053503          	ld	a0,-1968(a0) # 80013060 <kva2pa_offset>
    80001818:	00001637          	lui	a2,0x1
    8000181c:	fff78793          	add	a5,a5,-1
    80001820:	00379713          	sll	a4,a5,0x3
    80001824:	00f4b023          	sd	a5,0(s1)
    80001828:	00011797          	auipc	a5,0x11
    8000182c:	7e87b783          	ld	a5,2024(a5) # 80013010 <page_freelist_storage>
    80001830:	00e787b3          	add	a5,a5,a4
    80001834:	0007b403          	ld	s0,0(a5)
    80001838:	00000593          	li	a1,0
    8000183c:	00a40533          	add	a0,s0,a0
    80001840:	3110a0ef          	jal	8000c350 <memset>
    80001844:	01813083          	ld	ra,24(sp)
    80001848:	00040513          	mv	a0,s0
    8000184c:	01013403          	ld	s0,16(sp)
    80001850:	00813483          	ld	s1,8(sp)
    80001854:	02010113          	add	sp,sp,32
    80001858:	00008067          	ret

000000008000185c <__handle_page_fault>:
    8000185c:	fd010113          	add	sp,sp,-48
    80001860:	fffff7b7          	lui	a5,0xfffff
    80001864:	01213823          	sd	s2,16(sp)
    80001868:	00f57933          	and	s2,a0,a5
    8000186c:	01e95793          	srl	a5,s2,0x1e
    80001870:	1ff7f793          	and	a5,a5,511
    80001874:	00011717          	auipc	a4,0x11
    80001878:	7dc73703          	ld	a4,2012(a4) # 80013050 <root_page_table>
    8000187c:	00379793          	sll	a5,a5,0x3
    80001880:	00f707b3          	add	a5,a4,a5
    80001884:	0007b703          	ld	a4,0(a5) # fffffffffffff000 <_end+0xffffffff7ffeb000>
    80001888:	02113423          	sd	ra,40(sp)
    8000188c:	00177793          	and	a5,a4,1
    80001890:	22078663          	beqz	a5,80001abc <__handle_page_fault+0x260>
    80001894:	01413023          	sd	s4,0(sp)
    80001898:	00011a17          	auipc	s4,0x11
    8000189c:	7c8a0a13          	add	s4,s4,1992 # 80013060 <kva2pa_offset>
    800018a0:	000a3683          	ld	a3,0(s4)
    800018a4:	01595793          	srl	a5,s2,0x15
    800018a8:	1ff7f793          	and	a5,a5,511
    800018ac:	00a75713          	srl	a4,a4,0xa
    800018b0:	00379793          	sll	a5,a5,0x3
    800018b4:	00c71713          	sll	a4,a4,0xc
    800018b8:	00d787b3          	add	a5,a5,a3
    800018bc:	00e787b3          	add	a5,a5,a4
    800018c0:	0007b783          	ld	a5,0(a5)
    800018c4:	0017f713          	and	a4,a5,1
    800018c8:	20070463          	beqz	a4,80001ad0 <__handle_page_fault+0x274>
    800018cc:	02813023          	sd	s0,32(sp)
    800018d0:	00a7d413          	srl	s0,a5,0xa
    800018d4:	00c95793          	srl	a5,s2,0xc
    800018d8:	00c41413          	sll	s0,s0,0xc
    800018dc:	1ff7f793          	and	a5,a5,511
    800018e0:	00d40433          	add	s0,s0,a3
    800018e4:	00379793          	sll	a5,a5,0x3
    800018e8:	00913c23          	sd	s1,24(sp)
    800018ec:	00f40433          	add	s0,s0,a5
    800018f0:	20040663          	beqz	s0,80001afc <__handle_page_fault+0x2a0>
    800018f4:	00043783          	ld	a5,0(s0)
    800018f8:	20078263          	beqz	a5,80001afc <__handle_page_fault+0x2a0>
    800018fc:	0000e717          	auipc	a4,0xe
    80001900:	74c73703          	ld	a4,1868(a4) # 80010048 <current+0x48>
    80001904:	1ee97c63          	bgeu	s2,a4,80001afc <__handle_page_fault+0x2a0>
    80001908:	0017f713          	and	a4,a5,1
    8000190c:	00058493          	mv	s1,a1
    80001910:	06070063          	beqz	a4,80001970 <__handle_page_fault+0x114>
    80001914:	0014f713          	and	a4,s1,1
    80001918:	0024f693          	and	a3,s1,2
    8000191c:	0044f493          	and	s1,s1,4
    80001920:	02070e63          	beqz	a4,8000195c <__handle_page_fault+0x100>
    80001924:	14069c63          	bnez	a3,80001a7c <__handle_page_fault+0x220>
    80001928:	05b00713          	li	a4,91
    8000192c:	16048663          	beqz	s1,80001a98 <__handle_page_fault+0x23c>
    80001930:	00e7f533          	and	a0,a5,a4
    80001934:	40e50533          	sub	a0,a0,a4
    80001938:	02013403          	ld	s0,32(sp)
    8000193c:	01813483          	ld	s1,24(sp)
    80001940:	00013a03          	ld	s4,0(sp)
    80001944:	00a03533          	snez	a0,a0
    80001948:	40a00533          	neg	a0,a0
    8000194c:	02813083          	ld	ra,40(sp)
    80001950:	01013903          	ld	s2,16(sp)
    80001954:	03010113          	add	sp,sp,48
    80001958:	00008067          	ret
    8000195c:	10069663          	bnez	a3,80001a68 <__handle_page_fault+0x20c>
    80001960:	05900713          	li	a4,89
    80001964:	fc0496e3          	bnez	s1,80001930 <__handle_page_fault+0xd4>
    80001968:	01300713          	li	a4,19
    8000196c:	fc5ff06f          	j	80001930 <__handle_page_fault+0xd4>
    80001970:	01313423          	sd	s3,8(sp)
    80001974:	e6dff0ef          	jal	800017e0 <__page_alloc>
    80001978:	00050793          	mv	a5,a0
    8000197c:	18050a63          	beqz	a0,80001b10 <__handle_page_fault+0x2b4>
    80001980:	00c55993          	srl	s3,a0,0xc
    80001984:	00a99993          	sll	s3,s3,0xa
    80001988:	0c79e713          	or	a4,s3,199
    8000198c:	000a3583          	ld	a1,0(s4)
    80001990:	00043a03          	ld	s4,0(s0)
    80001994:	00e43023          	sd	a4,0(s0)
    80001998:	12090073          	sfence.vma	s2
    8000199c:	018a3503          	ld	a0,24(s4)
    800019a0:	04050263          	beqz	a0,800019e4 <__handle_page_fault+0x188>
    800019a4:	008a3703          	ld	a4,8(s4)
    800019a8:	010a3603          	ld	a2,16(s4)
    800019ac:	020a3683          	ld	a3,32(s4)
    800019b0:	00001837          	lui	a6,0x1
    800019b4:	00c70633          	add	a2,a4,a2
    800019b8:	00d906b3          	add	a3,s2,a3
    800019bc:	41260633          	sub	a2,a2,s2
    800019c0:	40e686b3          	sub	a3,a3,a4
    800019c4:	0cc86e63          	bltu	a6,a2,80001aa0 <__handle_page_fault+0x244>
    800019c8:	fffff737          	lui	a4,0xfffff
    800019cc:	00e7f7b3          	and	a5,a5,a4
    800019d0:	00b785b3          	add	a1,a5,a1
    800019d4:	afcff0ef          	jal	80000cd0 <file_pread>
    800019d8:	14a05263          	blez	a0,80001b1c <__handle_page_fault+0x2c0>
    800019dc:	00001637          	lui	a2,0x1
    800019e0:	0cc54463          	blt	a0,a2,80001aa8 <__handle_page_fault+0x24c>
    800019e4:	00011697          	auipc	a3,0x11
    800019e8:	64468693          	add	a3,a3,1604 # 80013028 <pages_promised>
    800019ec:	0006b703          	ld	a4,0(a3)
    800019f0:	028a2783          	lw	a5,40(s4)
    800019f4:	fff70713          	add	a4,a4,-1 # ffffffffffffefff <_end+0xffffffff7ffeafff>
    800019f8:	fff7879b          	addw	a5,a5,-1
    800019fc:	00e6b023          	sd	a4,0(a3)
    80001a00:	02fa2423          	sw	a5,40(s4)
    80001a04:	0007871b          	sext.w	a4,a5
    80001a08:	02071263          	bnez	a4,80001a2c <__handle_page_fault+0x1d0>
    80001a0c:	018a3503          	ld	a0,24(s4)
    80001a10:	00050463          	beqz	a0,80001a18 <__handle_page_fault+0x1bc>
    80001a14:	e35fe0ef          	jal	80000848 <file_decref>
    80001a18:	00011797          	auipc	a5,0x11
    80001a1c:	64078793          	add	a5,a5,1600 # 80013058 <vmr_freelist_head>
    80001a20:	0007b703          	ld	a4,0(a5)
    80001a24:	0147b023          	sd	s4,0(a5)
    80001a28:	00ea3023          	sd	a4,0(s4)
    80001a2c:	02ca2783          	lw	a5,44(s4)
    80001a30:	0017f713          	and	a4,a5,1
    80001a34:	0047f693          	and	a3,a5,4
    80001a38:	0027f793          	and	a5,a5,2
    80001a3c:	04070463          	beqz	a4,80001a84 <__handle_page_fault+0x228>
    80001a40:	0a079663          	bnez	a5,80001aec <__handle_page_fault+0x290>
    80001a44:	04a00793          	li	a5,74
    80001a48:	0a068663          	beqz	a3,80001af4 <__handle_page_fault+0x298>
    80001a4c:	00f9e9b3          	or	s3,s3,a5
    80001a50:	0119e993          	or	s3,s3,17
    80001a54:	01343023          	sd	s3,0(s0)
    80001a58:	12090073          	sfence.vma	s2
    80001a5c:	00043783          	ld	a5,0(s0)
    80001a60:	00813983          	ld	s3,8(sp)
    80001a64:	eb1ff06f          	j	80001914 <__handle_page_fault+0xb8>
    80001a68:	08400693          	li	a3,132
    80001a6c:	0596e713          	or	a4,a3,89
    80001a70:	ec0490e3          	bnez	s1,80001930 <__handle_page_fault+0xd4>
    80001a74:	0116e713          	or	a4,a3,17
    80001a78:	eb9ff06f          	j	80001930 <__handle_page_fault+0xd4>
    80001a7c:	0c600693          	li	a3,198
    80001a80:	fedff06f          	j	80001a6c <__handle_page_fault+0x210>
    80001a84:	04079c63          	bnez	a5,80001adc <__handle_page_fault+0x280>
    80001a88:	04800793          	li	a5,72
    80001a8c:	fc0690e3          	bnez	a3,80001a4c <__handle_page_fault+0x1f0>
    80001a90:	00200793          	li	a5,2
    80001a94:	fb9ff06f          	j	80001a4c <__handle_page_fault+0x1f0>
    80001a98:	05300713          	li	a4,83
    80001a9c:	e95ff06f          	j	80001930 <__handle_page_fault+0xd4>
    80001aa0:	00001637          	lui	a2,0x1
    80001aa4:	f25ff06f          	j	800019c8 <__handle_page_fault+0x16c>
    80001aa8:	40a60633          	sub	a2,a2,a0
    80001aac:	00000593          	li	a1,0
    80001ab0:	01250533          	add	a0,a0,s2
    80001ab4:	09d0a0ef          	jal	8000c350 <memset>
    80001ab8:	f2dff06f          	j	800019e4 <__handle_page_fault+0x188>
    80001abc:	02813083          	ld	ra,40(sp)
    80001ac0:	01013903          	ld	s2,16(sp)
    80001ac4:	fff00513          	li	a0,-1
    80001ac8:	03010113          	add	sp,sp,48
    80001acc:	00008067          	ret
    80001ad0:	00013a03          	ld	s4,0(sp)
    80001ad4:	fff00513          	li	a0,-1
    80001ad8:	e75ff06f          	j	8000194c <__handle_page_fault+0xf0>
    80001adc:	08400793          	li	a5,132
    80001ae0:	f60686e3          	beqz	a3,80001a4c <__handle_page_fault+0x1f0>
    80001ae4:	0487e793          	or	a5,a5,72
    80001ae8:	f65ff06f          	j	80001a4c <__handle_page_fault+0x1f0>
    80001aec:	0c600793          	li	a5,198
    80001af0:	ff1ff06f          	j	80001ae0 <__handle_page_fault+0x284>
    80001af4:	04200793          	li	a5,66
    80001af8:	f55ff06f          	j	80001a4c <__handle_page_fault+0x1f0>
    80001afc:	02013403          	ld	s0,32(sp)
    80001b00:	01813483          	ld	s1,24(sp)
    80001b04:	00013a03          	ld	s4,0(sp)
    80001b08:	fff00513          	li	a0,-1
    80001b0c:	e41ff06f          	j	8000194c <__handle_page_fault+0xf0>
    80001b10:	0000c517          	auipc	a0,0xc
    80001b14:	be850513          	add	a0,a0,-1048 # 8000d6f8 <softfloat_countLeadingZeros8+0x418>
    80001b18:	885ff0ef          	jal	8000139c <do_panic>
    80001b1c:	0000c517          	auipc	a0,0xc
    80001b20:	bec50513          	add	a0,a0,-1044 # 8000d708 <softfloat_countLeadingZeros8+0x428>
    80001b24:	8b5ff0ef          	jal	800013d8 <kassert_fail>

0000000080001b28 <__valid_user_range>:
    80001b28:	fff58593          	add	a1,a1,-1
    80001b2c:	00b505b3          	add	a1,a0,a1
    80001b30:	00a5ea63          	bltu	a1,a0,80001b44 <__valid_user_range+0x1c>
    80001b34:	0000e517          	auipc	a0,0xe
    80001b38:	51453503          	ld	a0,1300(a0) # 80010048 <current+0x48>
    80001b3c:	00a5b533          	sltu	a0,a1,a0
    80001b40:	00008067          	ret
    80001b44:	00000513          	li	a0,0
    80001b48:	00008067          	ret

0000000080001b4c <handle_page_fault>:
    80001b4c:	ff010113          	add	sp,sp,-16
    80001b50:	00113423          	sd	ra,8(sp)
    80001b54:	00011717          	auipc	a4,0x11
    80001b58:	4f470713          	add	a4,a4,1268 # 80013048 <vm_lock>
    80001b5c:	fff00693          	li	a3,-1
    80001b60:	00072783          	lw	a5,0(a4)
    80001b64:	fe079ee3          	bnez	a5,80001b60 <handle_page_fault+0x14>
    80001b68:	00072783          	lw	a5,0(a4)
    80001b6c:	00d72023          	sw	a3,0(a4)
    80001b70:	0007879b          	sext.w	a5,a5
    80001b74:	0ff0000f          	fence
    80001b78:	fe0794e3          	bnez	a5,80001b60 <handle_page_fault+0x14>
    80001b7c:	ce1ff0ef          	jal	8000185c <__handle_page_fault>
    80001b80:	0ff0000f          	fence
    80001b84:	00813083          	ld	ra,8(sp)
    80001b88:	00011797          	auipc	a5,0x11
    80001b8c:	4c07a023          	sw	zero,1216(a5) # 80013048 <vm_lock>
    80001b90:	01010113          	add	sp,sp,16
    80001b94:	00008067          	ret

0000000080001b98 <__do_mmap>:
    80001b98:	f8010113          	add	sp,sp,-128
    80001b9c:	07213023          	sd	s2,96(sp)
    80001ba0:	fff58913          	add	s2,a1,-1
    80001ba4:	03813823          	sd	s8,48(sp)
    80001ba8:	00c95913          	srl	s2,s2,0xc
    80001bac:	00011c17          	auipc	s8,0x11
    80001bb0:	47cc0c13          	add	s8,s8,1148 # 80013028 <pages_promised>
    80001bb4:	00190913          	add	s2,s2,1
    80001bb8:	03913423          	sd	s9,40(sp)
    80001bbc:	000c3c83          	ld	s9,0(s8)
    80001bc0:	00491813          	sll	a6,s2,0x4
    80001bc4:	01280833          	add	a6,a6,s2
    80001bc8:	06813823          	sd	s0,112(sp)
    80001bcc:	00485813          	srl	a6,a6,0x4
    80001bd0:	00058413          	mv	s0,a1
    80001bd4:	00011897          	auipc	a7,0x11
    80001bd8:	45c8b883          	ld	a7,1116(a7) # 80013030 <free_pages>
    80001bdc:	010c8593          	add	a1,s9,16
    80001be0:	00011317          	auipc	t1,0x11
    80001be4:	43833303          	ld	t1,1080(t1) # 80013018 <page_freelist_depth>
    80001be8:	006888b3          	add	a7,a7,t1
    80001bec:	00b80833          	add	a6,a6,a1
    80001bf0:	00011597          	auipc	a1,0x11
    80001bf4:	4485b583          	ld	a1,1096(a1) # 80013038 <next_free_page>
    80001bf8:	06113c23          	sd	ra,120(sp)
    80001bfc:	40b888b3          	sub	a7,a7,a1
    80001c00:	27187663          	bgeu	a6,a7,80001e6c <__do_mmap+0x2d4>
    80001c04:	05413823          	sd	s4,80(sp)
    80001c08:	05513423          	sd	s5,72(sp)
    80001c0c:	05613023          	sd	s6,64(sp)
    80001c10:	03a13023          	sd	s10,32(sp)
    80001c14:	00078a93          	mv	s5,a5
    80001c18:	05313c23          	sd	s3,88(sp)
    80001c1c:	0106f793          	and	a5,a3,16
    80001c20:	00060a13          	mv	s4,a2
    80001c24:	00068b13          	mv	s6,a3
    80001c28:	00070d13          	mv	s10,a4
    80001c2c:	1e078463          	beqz	a5,80001e14 <__do_mmap+0x27c>
    80001c30:	03451793          	sll	a5,a0,0x34
    80001c34:	00050993          	mv	s3,a0
    80001c38:	22079063          	bnez	a5,80001e58 <__do_mmap+0x2c0>
    80001c3c:	fff50793          	add	a5,a0,-1
    80001c40:	008787b3          	add	a5,a5,s0
    80001c44:	20a7ea63          	bltu	a5,a0,80001e58 <__do_mmap+0x2c0>
    80001c48:	0000e717          	auipc	a4,0xe
    80001c4c:	3b870713          	add	a4,a4,952 # 80010000 <current>
    80001c50:	00e13023          	sd	a4,0(sp)
    80001c54:	04873703          	ld	a4,72(a4)
    80001c58:	20e7f063          	bgeu	a5,a4,80001e58 <__do_mmap+0x2c0>
    80001c5c:	06913423          	sd	s1,104(sp)
    80001c60:	01b13c23          	sd	s11,24(sp)
    80001c64:	00011d97          	auipc	s11,0x11
    80001c68:	3f4d8d93          	add	s11,s11,1012 # 80013058 <vmr_freelist_head>
    80001c6c:	000db483          	ld	s1,0(s11)
    80001c70:	0009071b          	sext.w	a4,s2
    80001c74:	26048463          	beqz	s1,80001edc <__do_mmap+0x344>
    80001c78:	0004b683          	ld	a3,0(s1)
    80001c7c:	02091793          	sll	a5,s2,0x20
    80001c80:	0207d793          	srl	a5,a5,0x20
    80001c84:	019787b3          	add	a5,a5,s9
    80001c88:	00ddb023          	sd	a3,0(s11)
    80001c8c:	00fc3023          	sd	a5,0(s8)
    80001c90:	200d0c63          	beqz	s10,80001ea8 <__do_mmap+0x310>
    80001c94:	000d0513          	mv	a0,s10
    80001c98:	00e13423          	sd	a4,8(sp)
    80001c9c:	b85fe0ef          	jal	80000820 <file_incref>
    80001ca0:	00813703          	ld	a4,8(sp)
    80001ca4:	0134b423          	sd	s3,8(s1)
    80001ca8:	0084b823          	sd	s0,16(s1)
    80001cac:	01a4bc23          	sd	s10,24(s1)
    80001cb0:	0354b023          	sd	s5,32(s1)
    80001cb4:	02e4a423          	sw	a4,40(s1)
    80001cb8:	0344a623          	sw	s4,44(s1)
    80001cbc:	00898433          	add	s0,s3,s0
    80001cc0:	1089f463          	bgeu	s3,s0,80001dc8 <__do_mmap+0x230>
    80001cc4:	03713c23          	sd	s7,56(sp)
    80001cc8:	00098c93          	mv	s9,s3
    80001ccc:	00011a97          	auipc	s5,0x11
    80001cd0:	384a8a93          	add	s5,s5,900 # 80013050 <root_page_table>
    80001cd4:	00011d97          	auipc	s11,0x11
    80001cd8:	38cd8d93          	add	s11,s11,908 # 80013060 <kva2pa_offset>
    80001cdc:	00100d13          	li	s10,1
    80001ce0:	000abc03          	ld	s8,0(s5)
    80001ce4:	00200b93          	li	s7,2
    80001ce8:	00200693          	li	a3,2
    80001cec:	0200006f          	j	80001d0c <__do_mmap+0x174>
    80001cf0:	000dbc03          	ld	s8,0(s11)
    80001cf4:	00a7d793          	srl	a5,a5,0xa
    80001cf8:	00c79793          	sll	a5,a5,0xc
    80001cfc:	01878c33          	add	s8,a5,s8
    80001d00:	00100693          	li	a3,1
    80001d04:	07ab8063          	beq	s7,s10,80001d64 <__do_mmap+0x1cc>
    80001d08:	00100b93          	li	s7,1
    80001d0c:	0036979b          	sllw	a5,a3,0x3
    80001d10:	00d787bb          	addw	a5,a5,a3
    80001d14:	00c7879b          	addw	a5,a5,12
    80001d18:	00fcd7b3          	srl	a5,s9,a5
    80001d1c:	1ff7f793          	and	a5,a5,511
    80001d20:	00379793          	sll	a5,a5,0x3
    80001d24:	00fc0c33          	add	s8,s8,a5
    80001d28:	000c3783          	ld	a5,0(s8)
    80001d2c:	0017f693          	and	a3,a5,1
    80001d30:	fc0690e3          	bnez	a3,80001cf0 <__do_mmap+0x158>
    80001d34:	aadff0ef          	jal	800017e0 <__page_alloc>
    80001d38:	16050263          	beqz	a0,80001e9c <__do_mmap+0x304>
    80001d3c:	00c55793          	srl	a5,a0,0xc
    80001d40:	00a79793          	sll	a5,a5,0xa
    80001d44:	0017e793          	or	a5,a5,1
    80001d48:	00fc3023          	sd	a5,0(s8)
    80001d4c:	000dbc03          	ld	s8,0(s11)
    80001d50:	00a7d793          	srl	a5,a5,0xa
    80001d54:	00c79793          	sll	a5,a5,0xc
    80001d58:	01878c33          	add	s8,a5,s8
    80001d5c:	00100693          	li	a3,1
    80001d60:	fbab94e3          	bne	s7,s10,80001d08 <__do_mmap+0x170>
    80001d64:	00ccd793          	srl	a5,s9,0xc
    80001d68:	1ff7f793          	and	a5,a5,511
    80001d6c:	00379793          	sll	a5,a5,0x3
    80001d70:	00fc0c33          	add	s8,s8,a5
    80001d74:	120c0463          	beqz	s8,80001e9c <__do_mmap+0x304>
    80001d78:	000c3783          	ld	a5,0(s8)
    80001d7c:	10079863          	bnez	a5,80001e8c <__do_mmap+0x2f4>
    80001d80:	000017b7          	lui	a5,0x1
    80001d84:	009c3023          	sd	s1,0(s8)
    80001d88:	00fc8cb3          	add	s9,s9,a5
    80001d8c:	f48ceae3          	bltu	s9,s0,80001ce0 <__do_mmap+0x148>
    80001d90:	0000d797          	auipc	a5,0xd
    80001d94:	7007a783          	lw	a5,1792(a5) # 8000f490 <demand_paging>
    80001d98:	00078663          	beqz	a5,80001da4 <__do_mmap+0x20c>
    80001d9c:	030b1793          	sll	a5,s6,0x30
    80001da0:	0207d263          	bgez	a5,80001dc4 <__do_mmap+0x22c>
    80001da4:	00098493          	mv	s1,s3
    80001da8:	00001ab7          	lui	s5,0x1
    80001dac:	000a0593          	mv	a1,s4
    80001db0:	00048513          	mv	a0,s1
    80001db4:	aa9ff0ef          	jal	8000185c <__handle_page_fault>
    80001db8:	18051e63          	bnez	a0,80001f54 <__do_mmap+0x3bc>
    80001dbc:	015484b3          	add	s1,s1,s5
    80001dc0:	fe84e6e3          	bltu	s1,s0,80001dac <__do_mmap+0x214>
    80001dc4:	03813b83          	ld	s7,56(sp)
    80001dc8:	00013703          	ld	a4,0(sp)
    80001dcc:	07813083          	ld	ra,120(sp)
    80001dd0:	07013403          	ld	s0,112(sp)
    80001dd4:	00c91793          	sll	a5,s2,0xc
    80001dd8:	013787b3          	add	a5,a5,s3
    80001ddc:	04f73c23          	sd	a5,88(a4)
    80001de0:	06813483          	ld	s1,104(sp)
    80001de4:	05013a03          	ld	s4,80(sp)
    80001de8:	04813a83          	ld	s5,72(sp)
    80001dec:	04013b03          	ld	s6,64(sp)
    80001df0:	02013d03          	ld	s10,32(sp)
    80001df4:	01813d83          	ld	s11,24(sp)
    80001df8:	06013903          	ld	s2,96(sp)
    80001dfc:	03013c03          	ld	s8,48(sp)
    80001e00:	02813c83          	ld	s9,40(sp)
    80001e04:	00098513          	mv	a0,s3
    80001e08:	05813983          	ld	s3,88(sp)
    80001e0c:	08010113          	add	sp,sp,128
    80001e10:	00008067          	ret
    80001e14:	0000e797          	auipc	a5,0xe
    80001e18:	1ec78793          	add	a5,a5,492 # 80010000 <current>
    80001e1c:	0587b503          	ld	a0,88(a5)
    80001e20:	06913423          	sd	s1,104(sp)
    80001e24:	0487b483          	ld	s1,72(a5)
    80001e28:	00f13023          	sd	a5,0(sp)
    80001e2c:	00c91793          	sll	a5,s2,0xc
    80001e30:	40f484b3          	sub	s1,s1,a5
    80001e34:	08051863          	bnez	a0,80001ec4 <__do_mmap+0x32c>
    80001e38:	00013783          	ld	a5,0(sp)
    80001e3c:	00090613          	mv	a2,s2
    80001e40:	00048593          	mv	a1,s1
    80001e44:	0387b503          	ld	a0,56(a5)
    80001e48:	dacff0ef          	jal	800013f4 <__vm_alloc_at>
    80001e4c:	00050993          	mv	s3,a0
    80001e50:	e00518e3          	bnez	a0,80001c60 <__do_mmap+0xc8>
    80001e54:	06813483          	ld	s1,104(sp)
    80001e58:	05813983          	ld	s3,88(sp)
    80001e5c:	05013a03          	ld	s4,80(sp)
    80001e60:	04813a83          	ld	s5,72(sp)
    80001e64:	04013b03          	ld	s6,64(sp)
    80001e68:	02013d03          	ld	s10,32(sp)
    80001e6c:	07813083          	ld	ra,120(sp)
    80001e70:	07013403          	ld	s0,112(sp)
    80001e74:	06013903          	ld	s2,96(sp)
    80001e78:	03013c03          	ld	s8,48(sp)
    80001e7c:	02813c83          	ld	s9,40(sp)
    80001e80:	fff00513          	li	a0,-1
    80001e84:	08010113          	add	sp,sp,128
    80001e88:	00008067          	ret
    80001e8c:	000015b7          	lui	a1,0x1
    80001e90:	000c8513          	mv	a0,s9
    80001e94:	facff0ef          	jal	80001640 <__do_munmap>
    80001e98:	ee9ff06f          	j	80001d80 <__do_mmap+0x1e8>
    80001e9c:	0000c517          	auipc	a0,0xc
    80001ea0:	87450513          	add	a0,a0,-1932 # 8000d710 <softfloat_countLeadingZeros8+0x430>
    80001ea4:	d34ff0ef          	jal	800013d8 <kassert_fail>
    80001ea8:	0134b423          	sd	s3,8(s1)
    80001eac:	0084b823          	sd	s0,16(s1)
    80001eb0:	0004bc23          	sd	zero,24(s1)
    80001eb4:	0354b023          	sd	s5,32(s1)
    80001eb8:	02e4a423          	sw	a4,40(s1)
    80001ebc:	0344a623          	sw	s4,44(s1)
    80001ec0:	dfdff06f          	j	80001cbc <__do_mmap+0x124>
    80001ec4:	00090613          	mv	a2,s2
    80001ec8:	00048593          	mv	a1,s1
    80001ecc:	d28ff0ef          	jal	800013f4 <__vm_alloc_at>
    80001ed0:	00050993          	mv	s3,a0
    80001ed4:	f60502e3          	beqz	a0,80001e38 <__do_mmap+0x2a0>
    80001ed8:	d89ff06f          	j	80001c60 <__do_mmap+0xc8>
    80001edc:	00e13423          	sd	a4,8(sp)
    80001ee0:	901ff0ef          	jal	800017e0 <__page_alloc>
    80001ee4:	00011797          	auipc	a5,0x11
    80001ee8:	17c7b783          	ld	a5,380(a5) # 80013060 <kva2pa_offset>
    80001eec:	00f504b3          	add	s1,a0,a5
    80001ef0:	04048263          	beqz	s1,80001f34 <__do_mmap+0x39c>
    80001ef4:	00001637          	lui	a2,0x1
    80001ef8:	00813703          	ld	a4,8(sp)
    80001efc:	ff060613          	add	a2,a2,-16 # ff0 <_ftext-0x7ffff010>
    80001f00:	03048693          	add	a3,s1,48
    80001f04:	00c48633          	add	a2,s1,a2
    80001f08:	fcd6b823          	sd	a3,-48(a3)
    80001f0c:	03068693          	add	a3,a3,48
    80001f10:	fed61ce3          	bne	a2,a3,80001f08 <__do_mmap+0x370>
    80001f14:	0004b683          	ld	a3,0(s1)
    80001f18:	02091793          	sll	a5,s2,0x20
    80001f1c:	0207d793          	srl	a5,a5,0x20
    80001f20:	019787b3          	add	a5,a5,s9
    80001f24:	00ddb023          	sd	a3,0(s11)
    80001f28:	00fc3023          	sd	a5,0(s8)
    80001f2c:	d60d14e3          	bnez	s10,80001c94 <__do_mmap+0xfc>
    80001f30:	d75ff06f          	j	80001ca4 <__do_mmap+0x10c>
    80001f34:	06813483          	ld	s1,104(sp)
    80001f38:	05813983          	ld	s3,88(sp)
    80001f3c:	05013a03          	ld	s4,80(sp)
    80001f40:	04813a83          	ld	s5,72(sp)
    80001f44:	04013b03          	ld	s6,64(sp)
    80001f48:	02013d03          	ld	s10,32(sp)
    80001f4c:	01813d83          	ld	s11,24(sp)
    80001f50:	f1dff06f          	j	80001e6c <__do_mmap+0x2d4>
    80001f54:	0000b517          	auipc	a0,0xb
    80001f58:	7c450513          	add	a0,a0,1988 # 8000d718 <softfloat_countLeadingZeros8+0x438>
    80001f5c:	c7cff0ef          	jal	800013d8 <kassert_fail>

0000000080001f60 <do_munmap>:
    80001f60:	ff010113          	add	sp,sp,-16
    80001f64:	00113423          	sd	ra,8(sp)
    80001f68:	00813023          	sd	s0,0(sp)
    80001f6c:	03451793          	sll	a5,a0,0x34
    80001f70:	06079463          	bnez	a5,80001fd8 <do_munmap+0x78>
    80001f74:	fff58793          	add	a5,a1,-1 # fff <_ftext-0x7ffff001>
    80001f78:	00f507b3          	add	a5,a0,a5
    80001f7c:	04a7ee63          	bltu	a5,a0,80001fd8 <do_munmap+0x78>
    80001f80:	0000e717          	auipc	a4,0xe
    80001f84:	0c873703          	ld	a4,200(a4) # 80010048 <current+0x48>
    80001f88:	04e7f863          	bgeu	a5,a4,80001fd8 <do_munmap+0x78>
    80001f8c:	00011717          	auipc	a4,0x11
    80001f90:	0bc70713          	add	a4,a4,188 # 80013048 <vm_lock>
    80001f94:	fff00693          	li	a3,-1
    80001f98:	00072783          	lw	a5,0(a4)
    80001f9c:	fe079ee3          	bnez	a5,80001f98 <do_munmap+0x38>
    80001fa0:	00072403          	lw	s0,0(a4)
    80001fa4:	00d72023          	sw	a3,0(a4)
    80001fa8:	0004041b          	sext.w	s0,s0
    80001fac:	0ff0000f          	fence
    80001fb0:	fe0414e3          	bnez	s0,80001f98 <do_munmap+0x38>
    80001fb4:	e8cff0ef          	jal	80001640 <__do_munmap>
    80001fb8:	0ff0000f          	fence
    80001fbc:	00813083          	ld	ra,8(sp)
    80001fc0:	00040513          	mv	a0,s0
    80001fc4:	00013403          	ld	s0,0(sp)
    80001fc8:	00011797          	auipc	a5,0x11
    80001fcc:	0807a023          	sw	zero,128(a5) # 80013048 <vm_lock>
    80001fd0:	01010113          	add	sp,sp,16
    80001fd4:	00008067          	ret
    80001fd8:	fea00413          	li	s0,-22
    80001fdc:	00813083          	ld	ra,8(sp)
    80001fe0:	00040513          	mv	a0,s0
    80001fe4:	00013403          	ld	s0,0(sp)
    80001fe8:	01010113          	add	sp,sp,16
    80001fec:	00008067          	ret

0000000080001ff0 <do_mmap>:
    80001ff0:	fc010113          	add	sp,sp,-64
    80001ff4:	02813823          	sd	s0,48(sp)
    80001ff8:	02113c23          	sd	ra,56(sp)
    80001ffc:	0026f813          	and	a6,a3,2
    80002000:	fea00413          	li	s0,-22
    80002004:	08080a63          	beqz	a6,80002098 <do_mmap+0xa8>
    80002008:	08058863          	beqz	a1,80002098 <do_mmap+0xa8>
    8000200c:	03213023          	sd	s2,32(sp)
    80002010:	00050913          	mv	s2,a0
    80002014:	03479513          	sll	a0,a5,0x34
    80002018:	08051c63          	bnez	a0,800020b0 <do_mmap+0xc0>
    8000201c:	02913423          	sd	s1,40(sp)
    80002020:	0206f513          	and	a0,a3,32
    80002024:	00000493          	li	s1,0
    80002028:	0a050063          	beqz	a0,800020c8 <do_mmap+0xd8>
    8000202c:	00011897          	auipc	a7,0x11
    80002030:	01c88893          	add	a7,a7,28 # 80013048 <vm_lock>
    80002034:	fff00313          	li	t1,-1
    80002038:	0008a803          	lw	a6,0(a7)
    8000203c:	fe081ee3          	bnez	a6,80002038 <do_mmap+0x48>
    80002040:	0008a803          	lw	a6,0(a7)
    80002044:	0068a023          	sw	t1,0(a7)
    80002048:	0008081b          	sext.w	a6,a6
    8000204c:	0ff0000f          	fence
    80002050:	fe0814e3          	bnez	a6,80002038 <do_mmap+0x48>
    80002054:	00048713          	mv	a4,s1
    80002058:	00090513          	mv	a0,s2
    8000205c:	b3dff0ef          	jal	80001b98 <__do_mmap>
    80002060:	0000e797          	auipc	a5,0xe
    80002064:	fa078793          	add	a5,a5,-96 # 80010000 <current>
    80002068:	0407b703          	ld	a4,64(a5)
    8000206c:	00050413          	mv	s0,a0
    80002070:	00e57463          	bgeu	a0,a4,80002078 <do_mmap+0x88>
    80002074:	04a7b023          	sd	a0,64(a5)
    80002078:	0ff0000f          	fence
    8000207c:	00011797          	auipc	a5,0x11
    80002080:	fc07a623          	sw	zero,-52(a5) # 80013048 <vm_lock>
    80002084:	02048463          	beqz	s1,800020ac <do_mmap+0xbc>
    80002088:	00048513          	mv	a0,s1
    8000208c:	fbcfe0ef          	jal	80000848 <file_decref>
    80002090:	02813483          	ld	s1,40(sp)
    80002094:	02013903          	ld	s2,32(sp)
    80002098:	03813083          	ld	ra,56(sp)
    8000209c:	00040513          	mv	a0,s0
    800020a0:	03013403          	ld	s0,48(sp)
    800020a4:	04010113          	add	sp,sp,64
    800020a8:	00008067          	ret
    800020ac:	02813483          	ld	s1,40(sp)
    800020b0:	03813083          	ld	ra,56(sp)
    800020b4:	00040513          	mv	a0,s0
    800020b8:	03013403          	ld	s0,48(sp)
    800020bc:	02013903          	ld	s2,32(sp)
    800020c0:	04010113          	add	sp,sp,64
    800020c4:	00008067          	ret
    800020c8:	00070513          	mv	a0,a4
    800020cc:	00f13c23          	sd	a5,24(sp)
    800020d0:	00d13823          	sd	a3,16(sp)
    800020d4:	00c13423          	sd	a2,8(sp)
    800020d8:	00b13023          	sd	a1,0(sp)
    800020dc:	915fe0ef          	jal	800009f0 <file_get>
    800020e0:	00013583          	ld	a1,0(sp)
    800020e4:	00813603          	ld	a2,8(sp)
    800020e8:	01013683          	ld	a3,16(sp)
    800020ec:	01813783          	ld	a5,24(sp)
    800020f0:	00050493          	mv	s1,a0
    800020f4:	f2051ce3          	bnez	a0,8000202c <do_mmap+0x3c>
    800020f8:	02813483          	ld	s1,40(sp)
    800020fc:	02013903          	ld	s2,32(sp)
    80002100:	ff700413          	li	s0,-9
    80002104:	f95ff06f          	j	80002098 <do_mmap+0xa8>

0000000080002108 <__do_brk>:
    80002108:	fe010113          	add	sp,sp,-32
    8000210c:	01213023          	sd	s2,0(sp)
    80002110:	0000e917          	auipc	s2,0xe
    80002114:	ef090913          	add	s2,s2,-272 # 80010000 <current>
    80002118:	03093783          	ld	a5,48(s2)
    8000211c:	00813823          	sd	s0,16(sp)
    80002120:	00113c23          	sd	ra,24(sp)
    80002124:	00050413          	mv	s0,a0
    80002128:	03893503          	ld	a0,56(s2)
    8000212c:	02f46a63          	bltu	s0,a5,80002160 <__do_brk+0x58>
    80002130:	04093783          	ld	a5,64(s2)
    80002134:	0287e663          	bltu	a5,s0,80002160 <__do_brk+0x58>
    80002138:	00913423          	sd	s1,8(sp)
    8000213c:	fff40493          	add	s1,s0,-1
    80002140:	00c4d493          	srl	s1,s1,0xc
    80002144:	00148493          	add	s1,s1,1
    80002148:	00c49493          	sll	s1,s1,0xc
    8000214c:	04a4ea63          	bltu	s1,a0,800021a0 <__do_brk+0x98>
    80002150:	02956263          	bltu	a0,s1,80002174 <__do_brk+0x6c>
    80002154:	02993c23          	sd	s1,56(s2)
    80002158:	00813483          	ld	s1,8(sp)
    8000215c:	00040513          	mv	a0,s0
    80002160:	01813083          	ld	ra,24(sp)
    80002164:	01013403          	ld	s0,16(sp)
    80002168:	00013903          	ld	s2,0(sp)
    8000216c:	02010113          	add	sp,sp,32
    80002170:	00008067          	ret
    80002174:	00000793          	li	a5,0
    80002178:	00000713          	li	a4,0
    8000217c:	03200693          	li	a3,50
    80002180:	fff00613          	li	a2,-1
    80002184:	40a485b3          	sub	a1,s1,a0
    80002188:	a11ff0ef          	jal	80001b98 <__do_mmap>
    8000218c:	00050793          	mv	a5,a0
    80002190:	03893503          	ld	a0,56(s2)
    80002194:	fca780e3          	beq	a5,a0,80002154 <__do_brk+0x4c>
    80002198:	00813483          	ld	s1,8(sp)
    8000219c:	fc5ff06f          	j	80002160 <__do_brk+0x58>
    800021a0:	409505b3          	sub	a1,a0,s1
    800021a4:	00048513          	mv	a0,s1
    800021a8:	c98ff0ef          	jal	80001640 <__do_munmap>
    800021ac:	00040513          	mv	a0,s0
    800021b0:	02993c23          	sd	s1,56(s2)
    800021b4:	00813483          	ld	s1,8(sp)
    800021b8:	fa9ff06f          	j	80002160 <__do_brk+0x58>

00000000800021bc <do_brk>:
    800021bc:	ff010113          	add	sp,sp,-16
    800021c0:	00113423          	sd	ra,8(sp)
    800021c4:	00011717          	auipc	a4,0x11
    800021c8:	e8470713          	add	a4,a4,-380 # 80013048 <vm_lock>
    800021cc:	fff00693          	li	a3,-1
    800021d0:	00072783          	lw	a5,0(a4)
    800021d4:	fe079ee3          	bnez	a5,800021d0 <do_brk+0x14>
    800021d8:	00072783          	lw	a5,0(a4)
    800021dc:	00d72023          	sw	a3,0(a4)
    800021e0:	0007879b          	sext.w	a5,a5
    800021e4:	0ff0000f          	fence
    800021e8:	fe0794e3          	bnez	a5,800021d0 <do_brk+0x14>
    800021ec:	f1dff0ef          	jal	80002108 <__do_brk>
    800021f0:	0ff0000f          	fence
    800021f4:	00813083          	ld	ra,8(sp)
    800021f8:	00011797          	auipc	a5,0x11
    800021fc:	e407a823          	sw	zero,-432(a5) # 80013048 <vm_lock>
    80002200:	01010113          	add	sp,sp,16
    80002204:	00008067          	ret

0000000080002208 <do_mremap>:
    80002208:	fa800513          	li	a0,-88
    8000220c:	00008067          	ret

0000000080002210 <do_mprotect>:
    80002210:	03451793          	sll	a5,a0,0x34
    80002214:	00050693          	mv	a3,a0
    80002218:	0347d513          	srl	a0,a5,0x34
    8000221c:	1e079063          	bnez	a5,800023fc <do_mprotect+0x1ec>
    80002220:	00011717          	auipc	a4,0x11
    80002224:	e2870713          	add	a4,a4,-472 # 80013048 <vm_lock>
    80002228:	fff00813          	li	a6,-1
    8000222c:	00072783          	lw	a5,0(a4)
    80002230:	fe079ee3          	bnez	a5,8000222c <do_mprotect+0x1c>
    80002234:	00072783          	lw	a5,0(a4)
    80002238:	01072023          	sw	a6,0(a4)
    8000223c:	0007879b          	sext.w	a5,a5
    80002240:	0ff0000f          	fence
    80002244:	fe0794e3          	bnez	a5,8000222c <do_mprotect+0x1c>
    80002248:	00b685b3          	add	a1,a3,a1
    8000224c:	00011817          	auipc	a6,0x11
    80002250:	e0480813          	add	a6,a6,-508 # 80013050 <root_page_table>
    80002254:	12b6f463          	bgeu	a3,a1,8000237c <do_mprotect+0x16c>
    80002258:	00011317          	auipc	t1,0x11
    8000225c:	e0830313          	add	t1,t1,-504 # 80013060 <kva2pa_offset>
    80002260:	00167e13          	and	t3,a2,1
    80002264:	00267f13          	and	t5,a2,2
    80002268:	00467e93          	and	t4,a2,4
    8000226c:	000018b7          	lui	a7,0x1
    80002270:	0200006f          	j	80002290 <do_mprotect+0x80>
    80002274:	02c72783          	lw	a5,44(a4)
    80002278:	00f66fb3          	or	t6,a2,a5
    8000227c:	16ff9663          	bne	t6,a5,800023e8 <do_mprotect+0x1d8>
    80002280:	02c72623          	sw	a2,44(a4)
    80002284:	12068073          	sfence.vma	a3
    80002288:	011686b3          	add	a3,a3,a7
    8000228c:	0eb6f863          	bgeu	a3,a1,8000237c <do_mprotect+0x16c>
    80002290:	00083703          	ld	a4,0(a6)
    80002294:	01e6d793          	srl	a5,a3,0x1e
    80002298:	1ff7f793          	and	a5,a5,511
    8000229c:	00379793          	sll	a5,a5,0x3
    800022a0:	00f707b3          	add	a5,a4,a5
    800022a4:	0007b703          	ld	a4,0(a5)
    800022a8:	00177793          	and	a5,a4,1
    800022ac:	0c078663          	beqz	a5,80002378 <do_mprotect+0x168>
    800022b0:	00033f83          	ld	t6,0(t1)
    800022b4:	0156d793          	srl	a5,a3,0x15
    800022b8:	1ff7f793          	and	a5,a5,511
    800022bc:	00a75713          	srl	a4,a4,0xa
    800022c0:	00379793          	sll	a5,a5,0x3
    800022c4:	00c71713          	sll	a4,a4,0xc
    800022c8:	01f787b3          	add	a5,a5,t6
    800022cc:	00e787b3          	add	a5,a5,a4
    800022d0:	0007b783          	ld	a5,0(a5)
    800022d4:	0017f713          	and	a4,a5,1
    800022d8:	0a070063          	beqz	a4,80002378 <do_mprotect+0x168>
    800022dc:	00a7d793          	srl	a5,a5,0xa
    800022e0:	00c6d713          	srl	a4,a3,0xc
    800022e4:	00c79793          	sll	a5,a5,0xc
    800022e8:	1ff77713          	and	a4,a4,511
    800022ec:	01f787b3          	add	a5,a5,t6
    800022f0:	00371713          	sll	a4,a4,0x3
    800022f4:	00e787b3          	add	a5,a5,a4
    800022f8:	08078063          	beqz	a5,80002378 <do_mprotect+0x168>
    800022fc:	0007b703          	ld	a4,0(a5)
    80002300:	06070c63          	beqz	a4,80002378 <do_mprotect+0x168>
    80002304:	00177f93          	and	t6,a4,1
    80002308:	f60f86e3          	beqz	t6,80002274 <do_mprotect+0x64>
    8000230c:	01077f93          	and	t6,a4,16
    80002310:	0c0f8c63          	beqz	t6,800023e8 <do_mprotect+0x1d8>
    80002314:	020e0c63          	beqz	t3,8000234c <do_mprotect+0x13c>
    80002318:	00277f93          	and	t6,a4,2
    8000231c:	0c0f8663          	beqz	t6,800023e8 <do_mprotect+0x1d8>
    80002320:	0a0f1263          	bnez	t5,800023c4 <do_mprotect+0x1b4>
    80002324:	04200f93          	li	t6,66
    80002328:	000e8863          	beqz	t4,80002338 <do_mprotect+0x128>
    8000232c:	00877f93          	and	t6,a4,8
    80002330:	0a0f8c63          	beqz	t6,800023e8 <do_mprotect+0x1d8>
    80002334:	04a00f93          	li	t6,74
    80002338:	c0077713          	and	a4,a4,-1024
    8000233c:	01f76733          	or	a4,a4,t6
    80002340:	01176713          	or	a4,a4,17
    80002344:	00e7b023          	sd	a4,0(a5)
    80002348:	f3dff06f          	j	80002284 <do_mprotect+0x74>
    8000234c:	040f1063          	bnez	t5,8000238c <do_mprotect+0x17c>
    80002350:	00200f93          	li	t6,2
    80002354:	fe0e82e3          	beqz	t4,80002338 <do_mprotect+0x128>
    80002358:	00877f93          	and	t6,a4,8
    8000235c:	080f8663          	beqz	t6,800023e8 <do_mprotect+0x1d8>
    80002360:	04800f93          	li	t6,72
    80002364:	c0077713          	and	a4,a4,-1024
    80002368:	01f76733          	or	a4,a4,t6
    8000236c:	01176713          	or	a4,a4,17
    80002370:	00e7b023          	sd	a4,0(a5)
    80002374:	f11ff06f          	j	80002284 <do_mprotect+0x74>
    80002378:	ff400513          	li	a0,-12
    8000237c:	0ff0000f          	fence
    80002380:	00011797          	auipc	a5,0x11
    80002384:	cc07a423          	sw	zero,-824(a5) # 80013048 <vm_lock>
    80002388:	00008067          	ret
    8000238c:	00477f93          	and	t6,a4,4
    80002390:	040f8c63          	beqz	t6,800023e8 <do_mprotect+0x1d8>
    80002394:	08400f93          	li	t6,132
    80002398:	fa0e80e3          	beqz	t4,80002338 <do_mprotect+0x128>
    8000239c:	00877f93          	and	t6,a4,8
    800023a0:	040f8463          	beqz	t6,800023e8 <do_mprotect+0x1d8>
    800023a4:	0ce00f93          	li	t6,206
    800023a8:	f80e18e3          	bnez	t3,80002338 <do_mprotect+0x128>
    800023ac:	0cc00f93          	li	t6,204
    800023b0:	c0077713          	and	a4,a4,-1024
    800023b4:	01f76733          	or	a4,a4,t6
    800023b8:	01176713          	or	a4,a4,17
    800023bc:	00e7b023          	sd	a4,0(a5)
    800023c0:	ec5ff06f          	j	80002284 <do_mprotect+0x74>
    800023c4:	00477f93          	and	t6,a4,4
    800023c8:	020f8063          	beqz	t6,800023e8 <do_mprotect+0x1d8>
    800023cc:	fc0e98e3          	bnez	t4,8000239c <do_mprotect+0x18c>
    800023d0:	0c600f93          	li	t6,198
    800023d4:	c0077713          	and	a4,a4,-1024
    800023d8:	01f76733          	or	a4,a4,t6
    800023dc:	01176713          	or	a4,a4,17
    800023e0:	00e7b023          	sd	a4,0(a5)
    800023e4:	ea1ff06f          	j	80002284 <do_mprotect+0x74>
    800023e8:	ff300513          	li	a0,-13
    800023ec:	0ff0000f          	fence
    800023f0:	00011797          	auipc	a5,0x11
    800023f4:	c407ac23          	sw	zero,-936(a5) # 80013048 <vm_lock>
    800023f8:	00008067          	ret
    800023fc:	fea00513          	li	a0,-22
    80002400:	00008067          	ret

0000000080002404 <populate_mapping>:
    80002404:	fffff7b7          	lui	a5,0xfffff
    80002408:	00f577b3          	and	a5,a0,a5
    8000240c:	00b505b3          	add	a1,a0,a1
    80002410:	02b7fc63          	bgeu	a5,a1,80002448 <populate_mapping+0x44>
    80002414:	00267613          	and	a2,a2,2
    80002418:	000016b7          	lui	a3,0x1
    8000241c:	00001737          	lui	a4,0x1
    80002420:	00060e63          	beqz	a2,8000243c <populate_mapping+0x38>
    80002424:	0007a703          	lw	a4,0(a5) # fffffffffffff000 <_end+0xffffffff7ffeb000>
    80002428:	0007071b          	sext.w	a4,a4
    8000242c:	00e7a023          	sw	a4,0(a5)
    80002430:	00d787b3          	add	a5,a5,a3
    80002434:	feb7e8e3          	bltu	a5,a1,80002424 <populate_mapping+0x20>
    80002438:	00008067          	ret
    8000243c:	0007a683          	lw	a3,0(a5)
    80002440:	00e787b3          	add	a5,a5,a4
    80002444:	feb7ece3          	bltu	a5,a1,8000243c <populate_mapping+0x38>
    80002448:	00008067          	ret

000000008000244c <pk_vm_init>:
    8000244c:	f9010113          	add	sp,sp,-112
    80002450:	06813023          	sd	s0,96(sp)
    80002454:	00011417          	auipc	s0,0x11
    80002458:	c3c40413          	add	s0,s0,-964 # 80013090 <mem_size>
    8000245c:	00043603          	ld	a2,0(s0)
    80002460:	00100793          	li	a5,1
    80002464:	06113423          	sd	ra,104(sp)
    80002468:	04913c23          	sd	s1,88(sp)
    8000246c:	05413023          	sd	s4,64(sp)
    80002470:	02679793          	sll	a5,a5,0x26
    80002474:	00c7f463          	bgeu	a5,a2,8000247c <pk_vm_init+0x30>
    80002478:	00078613          	mv	a2,a5
    8000247c:	00012797          	auipc	a5,0x12
    80002480:	b8478793          	add	a5,a5,-1148 # 80014000 <_end>
    80002484:	00f13423          	sd	a5,8(sp)
    80002488:	00813703          	ld	a4,8(sp)
    8000248c:	00c65793          	srl	a5,a2,0xc
    80002490:	00379793          	sll	a5,a5,0x3
    80002494:	fff70713          	add	a4,a4,-1 # fff <_ftext-0x7ffff001>
    80002498:	00c75713          	srl	a4,a4,0xc
    8000249c:	00100693          	li	a3,1
    800024a0:	fff78793          	add	a5,a5,-1
    800024a4:	00170713          	add	a4,a4,1
    800024a8:	01f69693          	sll	a3,a3,0x1f
    800024ac:	00d606b3          	add	a3,a2,a3
    800024b0:	00c71713          	sll	a4,a4,0xc
    800024b4:	00011897          	auipc	a7,0x11
    800024b8:	b8488893          	add	a7,a7,-1148 # 80013038 <next_free_page>
    800024bc:	00c7d793          	srl	a5,a5,0xc
    800024c0:	0008b503          	ld	a0,0(a7)
    800024c4:	00178793          	add	a5,a5,1
    800024c8:	40e686b3          	sub	a3,a3,a4
    800024cc:	00100593          	li	a1,1
    800024d0:	00c79793          	sll	a5,a5,0xc
    800024d4:	00c6d693          	srl	a3,a3,0xc
    800024d8:	00c43023          	sd	a2,0(s0)
    800024dc:	0000e817          	auipc	a6,0xe
    800024e0:	b2480813          	add	a6,a6,-1244 # 80010000 <current>
    800024e4:	02659593          	sll	a1,a1,0x26
    800024e8:	00c7d793          	srl	a5,a5,0xc
    800024ec:	00011617          	auipc	a2,0x11
    800024f0:	b4e63a23          	sd	a4,-1196(a2) # 80013040 <first_free_page>
    800024f4:	00011617          	auipc	a2,0x11
    800024f8:	b2d63e23          	sd	a3,-1220(a2) # 80013030 <free_pages>
    800024fc:	04b83023          	sd	a1,64(a6)
    80002500:	04b83423          	sd	a1,72(a6)
    80002504:	00a78633          	add	a2,a5,a0
    80002508:	18f66263          	bltu	a2,a5,8000268c <pk_vm_init+0x240>
    8000250c:	00000793          	li	a5,0
    80002510:	00c6e863          	bltu	a3,a2,80002520 <pk_vm_init+0xd4>
    80002514:	00c51513          	sll	a0,a0,0xc
    80002518:	00c8b023          	sd	a2,0(a7)
    8000251c:	00e507b3          	add	a5,a0,a4
    80002520:	00011497          	auipc	s1,0x11
    80002524:	af048493          	add	s1,s1,-1296 # 80013010 <page_freelist_storage>
    80002528:	00f4b023          	sd	a5,0(s1)
    8000252c:	ab4ff0ef          	jal	800017e0 <__page_alloc>
    80002530:	00050a13          	mv	s4,a0
    80002534:	16050663          	beqz	a0,800026a0 <pk_vm_init+0x254>
    80002538:	03513c23          	sd	s5,56(sp)
    8000253c:	00043a83          	ld	s5,0(s0)
    80002540:	01913c23          	sd	s9,24(sp)
    80002544:	00011c97          	auipc	s9,0x11
    80002548:	b0cc8c93          	add	s9,s9,-1268 # 80013050 <root_page_table>
    8000254c:	00acb023          	sd	a0,0(s9)
    80002550:	02ba9793          	sll	a5,s5,0x2b
    80002554:	16079a63          	bnez	a5,800026c8 <pk_vm_init+0x27c>
    80002558:	05313423          	sd	s3,72(sp)
    8000255c:	fff00993          	li	s3,-1
    80002560:	02699993          	sll	s3,s3,0x26
    80002564:	080a8c63          	beqz	s5,800025fc <pk_vm_init+0x1b0>
    80002568:	03613823          	sd	s6,48(sp)
    8000256c:	08100b13          	li	s6,129
    80002570:	03713423          	sd	s7,40(sp)
    80002574:	03813023          	sd	s8,32(sp)
    80002578:	05213823          	sd	s2,80(sp)
    8000257c:	01fb1b13          	sll	s6,s6,0x1f
    80002580:	00011c17          	auipc	s8,0x11
    80002584:	ae0c0c13          	add	s8,s8,-1312 # 80013060 <kva2pa_offset>
    80002588:	00200bb7          	lui	s7,0x200
    8000258c:	013a8ab3          	add	s5,s5,s3
    80002590:	01e9d413          	srl	s0,s3,0x1e
    80002594:	1ff47413          	and	s0,s0,511
    80002598:	00341413          	sll	s0,s0,0x3
    8000259c:	008a0433          	add	s0,s4,s0
    800025a0:	00043783          	ld	a5,0(s0)
    800025a4:	01698933          	add	s2,s3,s6
    800025a8:	0017f713          	and	a4,a5,1
    800025ac:	0c070263          	beqz	a4,80002670 <pk_vm_init+0x224>
    800025b0:	000c3683          	ld	a3,0(s8)
    800025b4:	00a7d793          	srl	a5,a5,0xa
    800025b8:	0159d713          	srl	a4,s3,0x15
    800025bc:	00c79793          	sll	a5,a5,0xc
    800025c0:	1ff77713          	and	a4,a4,511
    800025c4:	00d787b3          	add	a5,a5,a3
    800025c8:	00371713          	sll	a4,a4,0x3
    800025cc:	00e787b3          	add	a5,a5,a4
    800025d0:	0c078263          	beqz	a5,80002694 <pk_vm_init+0x248>
    800025d4:	00c95713          	srl	a4,s2,0xc
    800025d8:	00a71713          	sll	a4,a4,0xa
    800025dc:	0cf76713          	or	a4,a4,207
    800025e0:	00e7b023          	sd	a4,0(a5)
    800025e4:	017989b3          	add	s3,s3,s7
    800025e8:	fb5994e3          	bne	s3,s5,80002590 <pk_vm_init+0x144>
    800025ec:	05013903          	ld	s2,80(sp)
    800025f0:	03013b03          	ld	s6,48(sp)
    800025f4:	02813b83          	ld	s7,40(sp)
    800025f8:	02013c03          	ld	s8,32(sp)
    800025fc:	12000073          	sfence.vma
    80002600:	000cb403          	ld	s0,0(s9)
    80002604:	fff00713          	li	a4,-1
    80002608:	03f71713          	sll	a4,a4,0x3f
    8000260c:	00c45793          	srl	a5,s0,0xc
    80002610:	00e7e7b3          	or	a5,a5,a4
    80002614:	18079073          	csrw	satp,a5
    80002618:	9c8ff0ef          	jal	800017e0 <__page_alloc>
    8000261c:	08050863          	beqz	a0,800026ac <pk_vm_init+0x260>
    80002620:	f7f00793          	li	a5,-129
    80002624:	0004b703          	ld	a4,0(s1)
    80002628:	01f79793          	sll	a5,a5,0x1f
    8000262c:	00f40433          	add	s0,s0,a5
    80002630:	008cb023          	sd	s0,0(s9)
    80002634:	06813083          	ld	ra,104(sp)
    80002638:	06013403          	ld	s0,96(sp)
    8000263c:	00f70733          	add	a4,a4,a5
    80002640:	00011697          	auipc	a3,0x11
    80002644:	a2f6b023          	sd	a5,-1504(a3) # 80013060 <kva2pa_offset>
    80002648:	00e4b023          	sd	a4,0(s1)
    8000264c:	000017b7          	lui	a5,0x1
    80002650:	04813983          	ld	s3,72(sp)
    80002654:	03813a83          	ld	s5,56(sp)
    80002658:	01813c83          	ld	s9,24(sp)
    8000265c:	05813483          	ld	s1,88(sp)
    80002660:	04013a03          	ld	s4,64(sp)
    80002664:	00f50533          	add	a0,a0,a5
    80002668:	07010113          	add	sp,sp,112
    8000266c:	00008067          	ret
    80002670:	970ff0ef          	jal	800017e0 <__page_alloc>
    80002674:	02050063          	beqz	a0,80002694 <pk_vm_init+0x248>
    80002678:	00c55793          	srl	a5,a0,0xc
    8000267c:	00a79793          	sll	a5,a5,0xa
    80002680:	0017e793          	or	a5,a5,1
    80002684:	00f43023          	sd	a5,0(s0)
    80002688:	f29ff06f          	j	800025b0 <pk_vm_init+0x164>
    8000268c:	00000793          	li	a5,0
    80002690:	e91ff06f          	j	80002520 <pk_vm_init+0xd4>
    80002694:	0000b517          	auipc	a0,0xb
    80002698:	07c50513          	add	a0,a0,124 # 8000d710 <softfloat_countLeadingZeros8+0x430>
    8000269c:	d3dfe0ef          	jal	800013d8 <kassert_fail>
    800026a0:	05313423          	sd	s3,72(sp)
    800026a4:	03513c23          	sd	s5,56(sp)
    800026a8:	01913c23          	sd	s9,24(sp)
    800026ac:	0000b517          	auipc	a0,0xb
    800026b0:	04c50513          	add	a0,a0,76 # 8000d6f8 <softfloat_countLeadingZeros8+0x418>
    800026b4:	05213823          	sd	s2,80(sp)
    800026b8:	03613823          	sd	s6,48(sp)
    800026bc:	03713423          	sd	s7,40(sp)
    800026c0:	03813023          	sd	s8,32(sp)
    800026c4:	cd9fe0ef          	jal	8000139c <do_panic>
    800026c8:	0000b517          	auipc	a0,0xb
    800026cc:	07850513          	add	a0,a0,120 # 8000d740 <softfloat_countLeadingZeros8+0x460>
    800026d0:	05213823          	sd	s2,80(sp)
    800026d4:	05313423          	sd	s3,72(sp)
    800026d8:	03613823          	sd	s6,48(sp)
    800026dc:	03713423          	sd	s7,40(sp)
    800026e0:	03813023          	sd	s8,32(sp)
    800026e4:	cf5fe0ef          	jal	800013d8 <kassert_fail>

00000000800026e8 <memset_user>:
    800026e8:	fd010113          	add	sp,sp,-48
    800026ec:	02813023          	sd	s0,32(sp)
    800026f0:	00913c23          	sd	s1,24(sp)
    800026f4:	01313423          	sd	s3,8(sp)
    800026f8:	02113423          	sd	ra,40(sp)
    800026fc:	01213823          	sd	s2,16(sp)
    80002700:	00c507b3          	add	a5,a0,a2
    80002704:	00050413          	mv	s0,a0
    80002708:	00060493          	mv	s1,a2
    8000270c:	00058993          	mv	s3,a1
    80002710:	00a7ec63          	bltu	a5,a0,80002728 <memset_user+0x40>
    80002714:	fff60713          	add	a4,a2,-1
    80002718:	fff00793          	li	a5,-1
    8000271c:	00e50733          	add	a4,a0,a4
    80002720:	02679793          	sll	a5,a5,0x26
    80002724:	00f76863          	bltu	a4,a5,80002734 <memset_user+0x4c>
    80002728:	00200593          	li	a1,2
    8000272c:	00040513          	mv	a0,s0
    80002730:	c1cff0ef          	jal	80001b4c <handle_page_fault>
    80002734:	00040937          	lui	s2,0x40
    80002738:	10092973          	csrrs	s2,sstatus,s2
    8000273c:	00048613          	mv	a2,s1
    80002740:	00098593          	mv	a1,s3
    80002744:	00040513          	mv	a0,s0
    80002748:	409090ef          	jal	8000c350 <memset>
    8000274c:	10091073          	csrw	sstatus,s2
    80002750:	02813083          	ld	ra,40(sp)
    80002754:	02013403          	ld	s0,32(sp)
    80002758:	01813483          	ld	s1,24(sp)
    8000275c:	01013903          	ld	s2,16(sp)
    80002760:	00813983          	ld	s3,8(sp)
    80002764:	03010113          	add	sp,sp,48
    80002768:	00008067          	ret

000000008000276c <memcpy_to_user>:
    8000276c:	fd010113          	add	sp,sp,-48
    80002770:	02813023          	sd	s0,32(sp)
    80002774:	00913c23          	sd	s1,24(sp)
    80002778:	01313423          	sd	s3,8(sp)
    8000277c:	02113423          	sd	ra,40(sp)
    80002780:	01213823          	sd	s2,16(sp)
    80002784:	00c507b3          	add	a5,a0,a2
    80002788:	00050413          	mv	s0,a0
    8000278c:	00060493          	mv	s1,a2
    80002790:	00058993          	mv	s3,a1
    80002794:	00a7ec63          	bltu	a5,a0,800027ac <memcpy_to_user+0x40>
    80002798:	fff60713          	add	a4,a2,-1
    8000279c:	fff00793          	li	a5,-1
    800027a0:	00e50733          	add	a4,a0,a4
    800027a4:	02679793          	sll	a5,a5,0x26
    800027a8:	00f76863          	bltu	a4,a5,800027b8 <memcpy_to_user+0x4c>
    800027ac:	00200593          	li	a1,2
    800027b0:	00040513          	mv	a0,s0
    800027b4:	b98ff0ef          	jal	80001b4c <handle_page_fault>
    800027b8:	00040937          	lui	s2,0x40
    800027bc:	10092973          	csrrs	s2,sstatus,s2
    800027c0:	00048613          	mv	a2,s1
    800027c4:	00098593          	mv	a1,s3
    800027c8:	00040513          	mv	a0,s0
    800027cc:	2fd090ef          	jal	8000c2c8 <memcpy>
    800027d0:	10091073          	csrw	sstatus,s2
    800027d4:	02813083          	ld	ra,40(sp)
    800027d8:	02013403          	ld	s0,32(sp)
    800027dc:	01813483          	ld	s1,24(sp)
    800027e0:	01013903          	ld	s2,16(sp)
    800027e4:	00813983          	ld	s3,8(sp)
    800027e8:	03010113          	add	sp,sp,48
    800027ec:	00008067          	ret

00000000800027f0 <memcpy_from_user>:
    800027f0:	fd010113          	add	sp,sp,-48
    800027f4:	02813023          	sd	s0,32(sp)
    800027f8:	00913c23          	sd	s1,24(sp)
    800027fc:	01313423          	sd	s3,8(sp)
    80002800:	02113423          	sd	ra,40(sp)
    80002804:	01213823          	sd	s2,16(sp)
    80002808:	00c587b3          	add	a5,a1,a2
    8000280c:	00058413          	mv	s0,a1
    80002810:	00060493          	mv	s1,a2
    80002814:	00050993          	mv	s3,a0
    80002818:	00b7ec63          	bltu	a5,a1,80002830 <memcpy_from_user+0x40>
    8000281c:	fff60713          	add	a4,a2,-1
    80002820:	fff00793          	li	a5,-1
    80002824:	00e58733          	add	a4,a1,a4
    80002828:	02679793          	sll	a5,a5,0x26
    8000282c:	00f76863          	bltu	a4,a5,8000283c <memcpy_from_user+0x4c>
    80002830:	00100593          	li	a1,1
    80002834:	00040513          	mv	a0,s0
    80002838:	b14ff0ef          	jal	80001b4c <handle_page_fault>
    8000283c:	00040937          	lui	s2,0x40
    80002840:	10092973          	csrrs	s2,sstatus,s2
    80002844:	00048613          	mv	a2,s1
    80002848:	00040593          	mv	a1,s0
    8000284c:	00098513          	mv	a0,s3
    80002850:	279090ef          	jal	8000c2c8 <memcpy>
    80002854:	10091073          	csrw	sstatus,s2
    80002858:	02813083          	ld	ra,40(sp)
    8000285c:	02013403          	ld	s0,32(sp)
    80002860:	01813483          	ld	s1,24(sp)
    80002864:	01013903          	ld	s2,16(sp)
    80002868:	00813983          	ld	s3,8(sp)
    8000286c:	03010113          	add	sp,sp,48
    80002870:	00008067          	ret

0000000080002874 <strcpy_from_user>:
    80002874:	fd010113          	add	sp,sp,-48
    80002878:	01413023          	sd	s4,0(sp)
    8000287c:	02113423          	sd	ra,40(sp)
    80002880:	00040a37          	lui	s4,0x40
    80002884:	100a2a73          	csrrs	s4,sstatus,s4
    80002888:	04060c63          	beqz	a2,800028e0 <strcpy_from_user+0x6c>
    8000288c:	01313423          	sd	s3,8(sp)
    80002890:	fff00993          	li	s3,-1
    80002894:	02813023          	sd	s0,32(sp)
    80002898:	00913c23          	sd	s1,24(sp)
    8000289c:	01213823          	sd	s2,16(sp)
    800028a0:	00050493          	mv	s1,a0
    800028a4:	00058413          	mv	s0,a1
    800028a8:	00c58933          	add	s2,a1,a2
    800028ac:	02699993          	sll	s3,s3,0x26
    800028b0:	05347463          	bgeu	s0,s3,800028f8 <strcpy_from_user+0x84>
    800028b4:	00044783          	lbu	a5,0(s0)
    800028b8:	00148493          	add	s1,s1,1
    800028bc:	00140413          	add	s0,s0,1
    800028c0:	0ff7f793          	zext.b	a5,a5
    800028c4:	fef48fa3          	sb	a5,-1(s1)
    800028c8:	04078a63          	beqz	a5,8000291c <strcpy_from_user+0xa8>
    800028cc:	ff2412e3          	bne	s0,s2,800028b0 <strcpy_from_user+0x3c>
    800028d0:	02013403          	ld	s0,32(sp)
    800028d4:	01813483          	ld	s1,24(sp)
    800028d8:	01013903          	ld	s2,16(sp)
    800028dc:	00813983          	ld	s3,8(sp)
    800028e0:	00000513          	li	a0,0
    800028e4:	100a1073          	csrw	sstatus,s4
    800028e8:	02813083          	ld	ra,40(sp)
    800028ec:	00013a03          	ld	s4,0(sp)
    800028f0:	03010113          	add	sp,sp,48
    800028f4:	00008067          	ret
    800028f8:	00040513          	mv	a0,s0
    800028fc:	00100593          	li	a1,1
    80002900:	a4cff0ef          	jal	80001b4c <handle_page_fault>
    80002904:	00044783          	lbu	a5,0(s0)
    80002908:	00148493          	add	s1,s1,1
    8000290c:	00140413          	add	s0,s0,1
    80002910:	0ff7f793          	zext.b	a5,a5
    80002914:	fef48fa3          	sb	a5,-1(s1)
    80002918:	fa079ae3          	bnez	a5,800028cc <strcpy_from_user+0x58>
    8000291c:	02013403          	ld	s0,32(sp)
    80002920:	01813483          	ld	s1,24(sp)
    80002924:	01013903          	ld	s2,16(sp)
    80002928:	00813983          	ld	s3,8(sp)
    8000292c:	00100513          	li	a0,1
    80002930:	100a1073          	csrw	sstatus,s4
    80002934:	02813083          	ld	ra,40(sp)
    80002938:	00013a03          	ld	s4,0(sp)
    8000293c:	03010113          	add	sp,sp,48
    80002940:	00008067          	ret

0000000080002944 <trap_entry>:
    80002944:	14011173          	csrrw	sp,sscratch,sp
    80002948:	00011463          	bnez	sp,80002950 <trap_entry+0xc>
    8000294c:	14002173          	csrr	sp,sscratch
    80002950:	ec010113          	add	sp,sp,-320
    80002954:	00113423          	sd	ra,8(sp)
    80002958:	00313c23          	sd	gp,24(sp)
    8000295c:	02413023          	sd	tp,32(sp)
    80002960:	02513423          	sd	t0,40(sp)
    80002964:	02613823          	sd	t1,48(sp)
    80002968:	02713c23          	sd	t2,56(sp)
    8000296c:	04813023          	sd	s0,64(sp)
    80002970:	04913423          	sd	s1,72(sp)
    80002974:	04a13823          	sd	a0,80(sp)
    80002978:	04b13c23          	sd	a1,88(sp)
    8000297c:	06c13023          	sd	a2,96(sp)
    80002980:	06d13423          	sd	a3,104(sp)
    80002984:	06e13823          	sd	a4,112(sp)
    80002988:	06f13c23          	sd	a5,120(sp)
    8000298c:	09013023          	sd	a6,128(sp)
    80002990:	09113423          	sd	a7,136(sp)
    80002994:	09213823          	sd	s2,144(sp)
    80002998:	09313c23          	sd	s3,152(sp)
    8000299c:	0b413023          	sd	s4,160(sp)
    800029a0:	0b513423          	sd	s5,168(sp)
    800029a4:	0b613823          	sd	s6,176(sp)
    800029a8:	0b713c23          	sd	s7,184(sp)
    800029ac:	0d813023          	sd	s8,192(sp)
    800029b0:	0d913423          	sd	s9,200(sp)
    800029b4:	0da13823          	sd	s10,208(sp)
    800029b8:	0db13c23          	sd	s11,216(sp)
    800029bc:	0fc13023          	sd	t3,224(sp)
    800029c0:	0fd13423          	sd	t4,232(sp)
    800029c4:	0fe13823          	sd	t5,240(sp)
    800029c8:	0ff13c23          	sd	t6,248(sp)
    800029cc:	140012f3          	csrrw	t0,sscratch,zero
    800029d0:	10002473          	csrr	s0,sstatus
    800029d4:	14102373          	csrr	t1,sepc
    800029d8:	143023f3          	csrr	t2,stval
    800029dc:	14202e73          	csrr	t3,scause
    800029e0:	00513823          	sd	t0,16(sp)
    800029e4:	10813023          	sd	s0,256(sp)
    800029e8:	10613423          	sd	t1,264(sp)
    800029ec:	10713823          	sd	t2,272(sp)
    800029f0:	11c13c23          	sd	t3,280(sp)
    800029f4:	00010513          	mv	a0,sp
    800029f8:	2d8000ef          	jal	80002cd0 <handle_trap>
    800029fc:	00010513          	mv	a0,sp
    80002a00:	10047413          	and	s0,s0,256
    80002a04:	00041663          	bnez	s0,80002a10 <start_user>
    80002a08:	14010113          	add	sp,sp,320
    80002a0c:	14011073          	csrw	sscratch,sp

0000000080002a10 <start_user>:
    80002a10:	10053283          	ld	t0,256(a0)
    80002a14:	10853303          	ld	t1,264(a0)
    80002a18:	10029073          	csrw	sstatus,t0
    80002a1c:	14131073          	csrw	sepc,t1
    80002a20:	00853083          	ld	ra,8(a0)
    80002a24:	01053103          	ld	sp,16(a0)
    80002a28:	01853183          	ld	gp,24(a0)
    80002a2c:	02053203          	ld	tp,32(a0)
    80002a30:	02853283          	ld	t0,40(a0)
    80002a34:	03053303          	ld	t1,48(a0)
    80002a38:	03853383          	ld	t2,56(a0)
    80002a3c:	04053403          	ld	s0,64(a0)
    80002a40:	04853483          	ld	s1,72(a0)
    80002a44:	05853583          	ld	a1,88(a0)
    80002a48:	06053603          	ld	a2,96(a0)
    80002a4c:	06853683          	ld	a3,104(a0)
    80002a50:	07053703          	ld	a4,112(a0)
    80002a54:	07853783          	ld	a5,120(a0)
    80002a58:	08053803          	ld	a6,128(a0)
    80002a5c:	08853883          	ld	a7,136(a0)
    80002a60:	09053903          	ld	s2,144(a0)
    80002a64:	09853983          	ld	s3,152(a0)
    80002a68:	0a053a03          	ld	s4,160(a0)
    80002a6c:	0a853a83          	ld	s5,168(a0)
    80002a70:	0b053b03          	ld	s6,176(a0)
    80002a74:	0b853b83          	ld	s7,184(a0)
    80002a78:	0c053c03          	ld	s8,192(a0)
    80002a7c:	0c853c83          	ld	s9,200(a0)
    80002a80:	0d053d03          	ld	s10,208(a0)
    80002a84:	0d853d83          	ld	s11,216(a0)
    80002a88:	0e053e03          	ld	t3,224(a0)
    80002a8c:	0e853e83          	ld	t4,232(a0)
    80002a90:	0f053f03          	ld	t5,240(a0)
    80002a94:	0f853f83          	ld	t6,248(a0)
    80002a98:	05053503          	ld	a0,80(a0)
    80002a9c:	10200073          	sret

0000000080002aa0 <segfault>:
    80002aa0:	fe010113          	add	sp,sp,-32
    80002aa4:	00813823          	sd	s0,16(sp)
    80002aa8:	00913423          	sd	s1,8(sp)
    80002aac:	01213023          	sd	s2,0(sp)
    80002ab0:	00058493          	mv	s1,a1
    80002ab4:	00050913          	mv	s2,a0
    80002ab8:	00113c23          	sd	ra,24(sp)
    80002abc:	00060413          	mv	s0,a2
    80002ac0:	809fe0ef          	jal	800012c8 <dump_tf>
    80002ac4:	10093783          	ld	a5,256(s2) # 40100 <_ftext-0x7ffbff00>
    80002ac8:	0000b597          	auipc	a1,0xb
    80002acc:	ca858593          	add	a1,a1,-856 # 8000d770 <softfloat_countLeadingZeros8+0x490>
    80002ad0:	1007f793          	and	a5,a5,256
    80002ad4:	00079663          	bnez	a5,80002ae0 <segfault+0x40>
    80002ad8:	0000b597          	auipc	a1,0xb
    80002adc:	ca058593          	add	a1,a1,-864 # 8000d778 <softfloat_countLeadingZeros8+0x498>
    80002ae0:	00048693          	mv	a3,s1
    80002ae4:	00040613          	mv	a2,s0
    80002ae8:	0000b517          	auipc	a0,0xb
    80002aec:	c9850513          	add	a0,a0,-872 # 8000d780 <softfloat_countLeadingZeros8+0x4a0>
    80002af0:	8adfe0ef          	jal	8000139c <do_panic>

0000000080002af4 <handle_store_access_fault>:
    80002af4:	ff010113          	add	sp,sp,-16
    80002af8:	00113423          	sd	ra,8(sp)
    80002afc:	fccfe0ef          	jal	800012c8 <dump_tf>
    80002b00:	0000b517          	auipc	a0,0xb
    80002b04:	c9850513          	add	a0,a0,-872 # 8000d798 <softfloat_countLeadingZeros8+0x4b8>
    80002b08:	895fe0ef          	jal	8000139c <do_panic>

0000000080002b0c <handle_misaligned_store>:
    80002b0c:	ff010113          	add	sp,sp,-16
    80002b10:	00113423          	sd	ra,8(sp)
    80002b14:	fb4fe0ef          	jal	800012c8 <dump_tf>
    80002b18:	0000b517          	auipc	a0,0xb
    80002b1c:	ca050513          	add	a0,a0,-864 # 8000d7b8 <softfloat_countLeadingZeros8+0x4d8>
    80002b20:	87dfe0ef          	jal	8000139c <do_panic>

0000000080002b24 <handle_load_access_fault>:
    80002b24:	ff010113          	add	sp,sp,-16
    80002b28:	00113423          	sd	ra,8(sp)
    80002b2c:	f9cfe0ef          	jal	800012c8 <dump_tf>
    80002b30:	0000b517          	auipc	a0,0xb
    80002b34:	ca050513          	add	a0,a0,-864 # 8000d7d0 <softfloat_countLeadingZeros8+0x4f0>
    80002b38:	865fe0ef          	jal	8000139c <do_panic>

0000000080002b3c <handle_misaligned_load>:
    80002b3c:	ff010113          	add	sp,sp,-16
    80002b40:	00113423          	sd	ra,8(sp)
    80002b44:	f84fe0ef          	jal	800012c8 <dump_tf>
    80002b48:	0000b517          	auipc	a0,0xb
    80002b4c:	ca050513          	add	a0,a0,-864 # 8000d7e8 <softfloat_countLeadingZeros8+0x508>
    80002b50:	84dfe0ef          	jal	8000139c <do_panic>

0000000080002b54 <handle_breakpoint>:
    80002b54:	ff010113          	add	sp,sp,-16
    80002b58:	00113423          	sd	ra,8(sp)
    80002b5c:	f6cfe0ef          	jal	800012c8 <dump_tf>
    80002b60:	0000b517          	auipc	a0,0xb
    80002b64:	ca050513          	add	a0,a0,-864 # 8000d800 <softfloat_countLeadingZeros8+0x520>
    80002b68:	835fe0ef          	jal	8000139c <do_panic>

0000000080002b6c <handle_illegal_instruction>:
    80002b6c:	ff010113          	add	sp,sp,-16
    80002b70:	00113423          	sd	ra,8(sp)
    80002b74:	f54fe0ef          	jal	800012c8 <dump_tf>
    80002b78:	0000b517          	auipc	a0,0xb
    80002b7c:	c9850513          	add	a0,a0,-872 # 8000d810 <softfloat_countLeadingZeros8+0x530>
    80002b80:	81dfe0ef          	jal	8000139c <do_panic>

0000000080002b84 <handle_instruction_access_fault>:
    80002b84:	ff010113          	add	sp,sp,-16
    80002b88:	00113423          	sd	ra,8(sp)
    80002b8c:	f3cfe0ef          	jal	800012c8 <dump_tf>
    80002b90:	0000b517          	auipc	a0,0xb
    80002b94:	ca850513          	add	a0,a0,-856 # 8000d838 <softfloat_countLeadingZeros8+0x558>
    80002b98:	805fe0ef          	jal	8000139c <do_panic>

0000000080002b9c <handle_misaligned_fetch>:
    80002b9c:	ff010113          	add	sp,sp,-16
    80002ba0:	00113423          	sd	ra,8(sp)
    80002ba4:	f24fe0ef          	jal	800012c8 <dump_tf>
    80002ba8:	0000b517          	auipc	a0,0xb
    80002bac:	cb050513          	add	a0,a0,-848 # 8000d858 <softfloat_countLeadingZeros8+0x578>
    80002bb0:	fecfe0ef          	jal	8000139c <do_panic>

0000000080002bb4 <handle_syscall>:
    80002bb4:	ff010113          	add	sp,sp,-16
    80002bb8:	00813023          	sd	s0,0(sp)
    80002bbc:	07853783          	ld	a5,120(a0)
    80002bc0:	00050413          	mv	s0,a0
    80002bc4:	08853803          	ld	a6,136(a0)
    80002bc8:	07053703          	ld	a4,112(a0)
    80002bcc:	06853683          	ld	a3,104(a0)
    80002bd0:	06053603          	ld	a2,96(a0)
    80002bd4:	05853583          	ld	a1,88(a0)
    80002bd8:	05053503          	ld	a0,80(a0)
    80002bdc:	00113423          	sd	ra,8(sp)
    80002be0:	464010ef          	jal	80004044 <do_syscall>
    80002be4:	10843783          	ld	a5,264(s0)
    80002be8:	00813083          	ld	ra,8(sp)
    80002bec:	04a43823          	sd	a0,80(s0)
    80002bf0:	00478793          	add	a5,a5,4 # 1004 <_ftext-0x7fffeffc>
    80002bf4:	10f43423          	sd	a5,264(s0)
    80002bf8:	00013403          	ld	s0,0(sp)
    80002bfc:	01010113          	add	sp,sp,16
    80002c00:	00008067          	ret

0000000080002c04 <handle_fault_store>:
    80002c04:	ff010113          	add	sp,sp,-16
    80002c08:	00813023          	sd	s0,0(sp)
    80002c0c:	00050413          	mv	s0,a0
    80002c10:	11053503          	ld	a0,272(a0)
    80002c14:	00200593          	li	a1,2
    80002c18:	00113423          	sd	ra,8(sp)
    80002c1c:	f31fe0ef          	jal	80001b4c <handle_page_fault>
    80002c20:	00051a63          	bnez	a0,80002c34 <handle_fault_store+0x30>
    80002c24:	00813083          	ld	ra,8(sp)
    80002c28:	00013403          	ld	s0,0(sp)
    80002c2c:	01010113          	add	sp,sp,16
    80002c30:	00008067          	ret
    80002c34:	11043583          	ld	a1,272(s0)
    80002c38:	0000b617          	auipc	a2,0xb
    80002c3c:	c4060613          	add	a2,a2,-960 # 8000d878 <softfloat_countLeadingZeros8+0x598>
    80002c40:	00040513          	mv	a0,s0
    80002c44:	e5dff0ef          	jal	80002aa0 <segfault>

0000000080002c48 <handle_fault_load>:
    80002c48:	ff010113          	add	sp,sp,-16
    80002c4c:	00813023          	sd	s0,0(sp)
    80002c50:	00050413          	mv	s0,a0
    80002c54:	11053503          	ld	a0,272(a0)
    80002c58:	00100593          	li	a1,1
    80002c5c:	00113423          	sd	ra,8(sp)
    80002c60:	eedfe0ef          	jal	80001b4c <handle_page_fault>
    80002c64:	00051a63          	bnez	a0,80002c78 <handle_fault_load+0x30>
    80002c68:	00813083          	ld	ra,8(sp)
    80002c6c:	00013403          	ld	s0,0(sp)
    80002c70:	01010113          	add	sp,sp,16
    80002c74:	00008067          	ret
    80002c78:	11043583          	ld	a1,272(s0)
    80002c7c:	0000b617          	auipc	a2,0xb
    80002c80:	c0460613          	add	a2,a2,-1020 # 8000d880 <softfloat_countLeadingZeros8+0x5a0>
    80002c84:	00040513          	mv	a0,s0
    80002c88:	e19ff0ef          	jal	80002aa0 <segfault>

0000000080002c8c <handle_fault_fetch>:
    80002c8c:	ff010113          	add	sp,sp,-16
    80002c90:	00813023          	sd	s0,0(sp)
    80002c94:	00050413          	mv	s0,a0
    80002c98:	11053503          	ld	a0,272(a0)
    80002c9c:	00400593          	li	a1,4
    80002ca0:	00113423          	sd	ra,8(sp)
    80002ca4:	ea9fe0ef          	jal	80001b4c <handle_page_fault>
    80002ca8:	00051a63          	bnez	a0,80002cbc <handle_fault_fetch+0x30>
    80002cac:	00813083          	ld	ra,8(sp)
    80002cb0:	00013403          	ld	s0,0(sp)
    80002cb4:	01010113          	add	sp,sp,16
    80002cb8:	00008067          	ret
    80002cbc:	11043583          	ld	a1,272(s0)
    80002cc0:	0000b617          	auipc	a2,0xb
    80002cc4:	bc860613          	add	a2,a2,-1080 # 8000d888 <softfloat_countLeadingZeros8+0x5a8>
    80002cc8:	00040513          	mv	a0,s0
    80002ccc:	dd5ff0ef          	jal	80002aa0 <segfault>

0000000080002cd0 <handle_trap>:
    80002cd0:	11853783          	ld	a5,280(a0)
    80002cd4:	0207ca63          	bltz	a5,80002d08 <handle_trap+0x38>
    80002cd8:	00f00713          	li	a4,15
    80002cdc:	02f76a63          	bltu	a4,a5,80002d10 <handle_trap+0x40>
    80002ce0:	00379793          	sll	a5,a5,0x3
    80002ce4:	0000a717          	auipc	a4,0xa
    80002ce8:	83c70713          	add	a4,a4,-1988 # 8000c520 <trap_handlers.0>
    80002cec:	00f707b3          	add	a5,a4,a5
    80002cf0:	0007b783          	ld	a5,0(a5)
    80002cf4:	00078e63          	beqz	a5,80002d10 <handle_trap+0x40>
    80002cf8:	00010717          	auipc	a4,0x10
    80002cfc:	36873703          	ld	a4,872(a4) # 80013060 <kva2pa_offset>
    80002d00:	00e787b3          	add	a5,a5,a4
    80002d04:	00078067          	jr	a5
    80002d08:	144177f3          	csrrc	a5,sip,2
    80002d0c:	00008067          	ret
    80002d10:	ff010113          	add	sp,sp,-16
    80002d14:	0000b517          	auipc	a0,0xb
    80002d18:	b7c50513          	add	a0,a0,-1156 # 8000d890 <softfloat_countLeadingZeros8+0x5b0>
    80002d1c:	00113423          	sd	ra,8(sp)
    80002d20:	eb8fe0ef          	jal	800013d8 <kassert_fail>

0000000080002d24 <sys_getpid>:
    80002d24:	00000513          	li	a0,0
    80002d28:	00008067          	ret

0000000080002d2c <sys_getdents>:
    80002d2c:	00000513          	li	a0,0
    80002d30:	00008067          	ret

0000000080002d34 <sys_exit>:
    80002d34:	0000d797          	auipc	a5,0xd
    80002d38:	2cc78793          	add	a5,a5,716 # 80010000 <current>
    80002d3c:	0687b703          	ld	a4,104(a5)
    80002d40:	fe010113          	add	sp,sp,-32
    80002d44:	00813823          	sd	s0,16(sp)
    80002d48:	00113c23          	sd	ra,24(sp)
    80002d4c:	00913423          	sd	s1,8(sp)
    80002d50:	01213023          	sd	s2,0(sp)
    80002d54:	00050413          	mv	s0,a0
    80002d58:	00071663          	bnez	a4,80002d64 <sys_exit+0x30>
    80002d5c:	00040513          	mv	a0,s0
    80002d60:	8fcfe0ef          	jal	80000e5c <shutdown>
    80002d64:	c01025f3          	rdtime	a1
    80002d68:	c00024f3          	rdcycle	s1
    80002d6c:	40e484b3          	sub	s1,s1,a4
    80002d70:	c0202973          	rdinstret	s2
    80002d74:	0607b703          	ld	a4,96(a5)
    80002d78:	0707b783          	ld	a5,112(a5)
    80002d7c:	0000b517          	auipc	a0,0xb
    80002d80:	b5c50513          	add	a0,a0,-1188 # 8000d8d8 <softfloat_countLeadingZeros8+0x5f8>
    80002d84:	40e585b3          	sub	a1,a1,a4
    80002d88:	40f90933          	sub	s2,s2,a5
    80002d8c:	cfcfe0ef          	jal	80001288 <printk>
    80002d90:	00048593          	mv	a1,s1
    80002d94:	0000b517          	auipc	a0,0xb
    80002d98:	b5450513          	add	a0,a0,-1196 # 8000d8e8 <softfloat_countLeadingZeros8+0x608>
    80002d9c:	cecfe0ef          	jal	80001288 <printk>
    80002da0:	00090593          	mv	a1,s2
    80002da4:	0000b517          	auipc	a0,0xb
    80002da8:	b5450513          	add	a0,a0,-1196 # 8000d8f8 <softfloat_countLeadingZeros8+0x618>
    80002dac:	cdcfe0ef          	jal	80001288 <printk>
    80002db0:	00a00793          	li	a5,10
    80002db4:	06400693          	li	a3,100
    80002db8:	02d486b3          	mul	a3,s1,a3
    80002dbc:	0000b517          	auipc	a0,0xb
    80002dc0:	b5450513          	add	a0,a0,-1196 # 8000d910 <softfloat_countLeadingZeros8+0x630>
    80002dc4:	02f48633          	mul	a2,s1,a5
    80002dc8:	0326d6b3          	divu	a3,a3,s2
    80002dcc:	03265633          	divu	a2,a2,s2
    80002dd0:	0324d5b3          	divu	a1,s1,s2
    80002dd4:	02f6f6b3          	remu	a3,a3,a5
    80002dd8:	0005859b          	sext.w	a1,a1
    80002ddc:	02f67633          	remu	a2,a2,a5
    80002de0:	ca8fe0ef          	jal	80001288 <printk>
    80002de4:	f79ff06f          	j	80002d5c <sys_exit+0x28>

0000000080002de8 <sys_tgkill>:
    80002de8:	ff010113          	add	sp,sp,-16
    80002dec:	00060513          	mv	a0,a2
    80002df0:	00113423          	sd	ra,8(sp)
    80002df4:	f41ff0ef          	jal	80002d34 <sys_exit>

0000000080002df8 <sys_time>:
    80002df8:	fe010113          	add	sp,sp,-32
    80002dfc:	00113c23          	sd	ra,24(sp)
    80002e00:	c00027f3          	rdcycle	a5
    80002e04:	3b9ad6b7          	lui	a3,0x3b9ad
    80002e08:	a0068693          	add	a3,a3,-1536 # 3b9aca00 <_ftext-0x44653600>
    80002e0c:	02d7d7b3          	divu	a5,a5,a3
    80002e10:	00f13423          	sd	a5,8(sp)
    80002e14:	00050a63          	beqz	a0,80002e28 <sys_time+0x30>
    80002e18:	00800613          	li	a2,8
    80002e1c:	00810593          	add	a1,sp,8
    80002e20:	94dff0ef          	jal	8000276c <memcpy_to_user>
    80002e24:	00813783          	ld	a5,8(sp)
    80002e28:	01813083          	ld	ra,24(sp)
    80002e2c:	00078513          	mv	a0,a5
    80002e30:	02010113          	add	sp,sp,32
    80002e34:	00008067          	ret

0000000080002e38 <sys_times>:
    80002e38:	fd010113          	add	sp,sp,-48
    80002e3c:	02113423          	sd	ra,40(sp)
    80002e40:	c00027f3          	rdcycle	a5
    80002e44:	3e800713          	li	a4,1000
    80002e48:	02e7d7b3          	divu	a5,a5,a4
    80002e4c:	00010593          	mv	a1,sp
    80002e50:	02000613          	li	a2,32
    80002e54:	00013423          	sd	zero,8(sp)
    80002e58:	00013823          	sd	zero,16(sp)
    80002e5c:	00013c23          	sd	zero,24(sp)
    80002e60:	00f13023          	sd	a5,0(sp)
    80002e64:	909ff0ef          	jal	8000276c <memcpy_to_user>
    80002e68:	02813083          	ld	ra,40(sp)
    80002e6c:	00000513          	li	a0,0
    80002e70:	03010113          	add	sp,sp,48
    80002e74:	00008067          	ret

0000000080002e78 <sys_gettimeofday>:
    80002e78:	fe010113          	add	sp,sp,-32
    80002e7c:	00113c23          	sd	ra,24(sp)
    80002e80:	c00027f3          	rdcycle	a5
    80002e84:	3b9ad737          	lui	a4,0x3b9ad
    80002e88:	a0070713          	add	a4,a4,-1536 # 3b9aca00 <_ftext-0x44653600>
    80002e8c:	02e7f6b3          	remu	a3,a5,a4
    80002e90:	00010593          	mv	a1,sp
    80002e94:	01000613          	li	a2,16
    80002e98:	02e7d7b3          	divu	a5,a5,a4
    80002e9c:	3e800713          	li	a4,1000
    80002ea0:	02e6d733          	divu	a4,a3,a4
    80002ea4:	00f13023          	sd	a5,0(sp)
    80002ea8:	00e13423          	sd	a4,8(sp)
    80002eac:	8c1ff0ef          	jal	8000276c <memcpy_to_user>
    80002eb0:	01813083          	ld	ra,24(sp)
    80002eb4:	00000513          	li	a0,0
    80002eb8:	02010113          	add	sp,sp,32
    80002ebc:	00008067          	ret

0000000080002ec0 <sys_clock_gettime>:
    80002ec0:	fe010113          	add	sp,sp,-32
    80002ec4:	00113c23          	sd	ra,24(sp)
    80002ec8:	00058513          	mv	a0,a1
    80002ecc:	c00027f3          	rdcycle	a5
    80002ed0:	3b9ad737          	lui	a4,0x3b9ad
    80002ed4:	a0070713          	add	a4,a4,-1536 # 3b9aca00 <_ftext-0x44653600>
    80002ed8:	02e7d6b3          	divu	a3,a5,a4
    80002edc:	00010593          	mv	a1,sp
    80002ee0:	01000613          	li	a2,16
    80002ee4:	02e7f7b3          	remu	a5,a5,a4
    80002ee8:	00d13023          	sd	a3,0(sp)
    80002eec:	00f13423          	sd	a5,8(sp)
    80002ef0:	87dff0ef          	jal	8000276c <memcpy_to_user>
    80002ef4:	01813083          	ld	ra,24(sp)
    80002ef8:	00000513          	li	a0,0
    80002efc:	02010113          	add	sp,sp,32
    80002f00:	00008067          	ret

0000000080002f04 <sys_read>:
    80002f04:	dc010113          	add	sp,sp,-576
    80002f08:	21313c23          	sd	s3,536(sp)
    80002f0c:	21413823          	sd	s4,528(sp)
    80002f10:	22113c23          	sd	ra,568(sp)
    80002f14:	22813823          	sd	s0,560(sp)
    80002f18:	00058993          	mv	s3,a1
    80002f1c:	00060a13          	mv	s4,a2
    80002f20:	ad1fd0ef          	jal	800009f0 <file_get>
    80002f24:	0a050263          	beqz	a0,80002fc8 <sys_read+0xc4>
    80002f28:	23213023          	sd	s2,544(sp)
    80002f2c:	21513423          	sd	s5,520(sp)
    80002f30:	21613023          	sd	s6,512(sp)
    80002f34:	22913423          	sd	s1,552(sp)
    80002f38:	00050a93          	mv	s5,a0
    80002f3c:	00000913          	li	s2,0
    80002f40:	20000b13          	li	s6,512
    80002f44:	0180006f          	j	80002f5c <sys_read+0x58>
    80002f48:	825ff0ef          	jal	8000276c <memcpy_to_user>
    80002f4c:	00890933          	add	s2,s2,s0
    80002f50:	008989b3          	add	s3,s3,s0
    80002f54:	06946663          	bltu	s0,s1,80002fc0 <sys_read+0xbc>
    80002f58:	072a0463          	beq	s4,s2,80002fc0 <sys_read+0xbc>
    80002f5c:	412a04b3          	sub	s1,s4,s2
    80002f60:	00010593          	mv	a1,sp
    80002f64:	000a8513          	mv	a0,s5
    80002f68:	009b7463          	bgeu	s6,s1,80002f70 <sys_read+0x6c>
    80002f6c:	20000493          	li	s1,512
    80002f70:	00048613          	mv	a2,s1
    80002f74:	d2dfd0ef          	jal	80000ca0 <file_read>
    80002f78:	00050413          	mv	s0,a0
    80002f7c:	00010593          	mv	a1,sp
    80002f80:	00098513          	mv	a0,s3
    80002f84:	00040613          	mv	a2,s0
    80002f88:	fc0450e3          	bgez	s0,80002f48 <sys_read+0x44>
    80002f8c:	000a8513          	mv	a0,s5
    80002f90:	8b9fd0ef          	jal	80000848 <file_decref>
    80002f94:	22813483          	ld	s1,552(sp)
    80002f98:	22013903          	ld	s2,544(sp)
    80002f9c:	20813a83          	ld	s5,520(sp)
    80002fa0:	20013b03          	ld	s6,512(sp)
    80002fa4:	23813083          	ld	ra,568(sp)
    80002fa8:	00040513          	mv	a0,s0
    80002fac:	23013403          	ld	s0,560(sp)
    80002fb0:	21813983          	ld	s3,536(sp)
    80002fb4:	21013a03          	ld	s4,528(sp)
    80002fb8:	24010113          	add	sp,sp,576
    80002fbc:	00008067          	ret
    80002fc0:	00090413          	mv	s0,s2
    80002fc4:	fc9ff06f          	j	80002f8c <sys_read+0x88>
    80002fc8:	ff700413          	li	s0,-9
    80002fcc:	fd9ff06f          	j	80002fa4 <sys_read+0xa0>

0000000080002fd0 <sys_pread>:
    80002fd0:	db010113          	add	sp,sp,-592
    80002fd4:	23313423          	sd	s3,552(sp)
    80002fd8:	23413023          	sd	s4,544(sp)
    80002fdc:	21513c23          	sd	s5,536(sp)
    80002fe0:	24113423          	sd	ra,584(sp)
    80002fe4:	24813023          	sd	s0,576(sp)
    80002fe8:	00058993          	mv	s3,a1
    80002fec:	00060a93          	mv	s5,a2
    80002ff0:	00068a13          	mv	s4,a3
    80002ff4:	9fdfd0ef          	jal	800009f0 <file_get>
    80002ff8:	0a050863          	beqz	a0,800030a8 <sys_pread+0xd8>
    80002ffc:	23213823          	sd	s2,560(sp)
    80003000:	21613823          	sd	s6,528(sp)
    80003004:	21713423          	sd	s7,520(sp)
    80003008:	22913c23          	sd	s1,568(sp)
    8000300c:	00050b13          	mv	s6,a0
    80003010:	00000913          	li	s2,0
    80003014:	20000b93          	li	s7,512
    80003018:	01c0006f          	j	80003034 <sys_pread+0x64>
    8000301c:	f50ff0ef          	jal	8000276c <memcpy_to_user>
    80003020:	00890933          	add	s2,s2,s0
    80003024:	008989b3          	add	s3,s3,s0
    80003028:	008a0a33          	add	s4,s4,s0
    8000302c:	06946a63          	bltu	s0,s1,800030a0 <sys_pread+0xd0>
    80003030:	072a8863          	beq	s5,s2,800030a0 <sys_pread+0xd0>
    80003034:	412a84b3          	sub	s1,s5,s2
    80003038:	000a0693          	mv	a3,s4
    8000303c:	00010593          	mv	a1,sp
    80003040:	000b0513          	mv	a0,s6
    80003044:	009bf463          	bgeu	s7,s1,8000304c <sys_pread+0x7c>
    80003048:	20000493          	li	s1,512
    8000304c:	00048613          	mv	a2,s1
    80003050:	c81fd0ef          	jal	80000cd0 <file_pread>
    80003054:	00050413          	mv	s0,a0
    80003058:	00010593          	mv	a1,sp
    8000305c:	00098513          	mv	a0,s3
    80003060:	00040613          	mv	a2,s0
    80003064:	fa045ce3          	bgez	s0,8000301c <sys_pread+0x4c>
    80003068:	000b0513          	mv	a0,s6
    8000306c:	fdcfd0ef          	jal	80000848 <file_decref>
    80003070:	23813483          	ld	s1,568(sp)
    80003074:	23013903          	ld	s2,560(sp)
    80003078:	21013b03          	ld	s6,528(sp)
    8000307c:	20813b83          	ld	s7,520(sp)
    80003080:	24813083          	ld	ra,584(sp)
    80003084:	00040513          	mv	a0,s0
    80003088:	24013403          	ld	s0,576(sp)
    8000308c:	22813983          	ld	s3,552(sp)
    80003090:	22013a03          	ld	s4,544(sp)
    80003094:	21813a83          	ld	s5,536(sp)
    80003098:	25010113          	add	sp,sp,592
    8000309c:	00008067          	ret
    800030a0:	00090413          	mv	s0,s2
    800030a4:	fc5ff06f          	j	80003068 <sys_pread+0x98>
    800030a8:	ff700413          	li	s0,-9
    800030ac:	fd5ff06f          	j	80003080 <sys_pread+0xb0>

00000000800030b0 <sys_write>:
    800030b0:	dc010113          	add	sp,sp,-576
    800030b4:	21313c23          	sd	s3,536(sp)
    800030b8:	21413823          	sd	s4,528(sp)
    800030bc:	22113c23          	sd	ra,568(sp)
    800030c0:	22813823          	sd	s0,560(sp)
    800030c4:	00058993          	mv	s3,a1
    800030c8:	00060a13          	mv	s4,a2
    800030cc:	925fd0ef          	jal	800009f0 <file_get>
    800030d0:	0a050263          	beqz	a0,80003174 <sys_write+0xc4>
    800030d4:	23213023          	sd	s2,544(sp)
    800030d8:	21513423          	sd	s5,520(sp)
    800030dc:	21613023          	sd	s6,512(sp)
    800030e0:	22913423          	sd	s1,552(sp)
    800030e4:	00050a93          	mv	s5,a0
    800030e8:	00000913          	li	s2,0
    800030ec:	20000b13          	li	s6,512
    800030f0:	0140006f          	j	80003104 <sys_write+0x54>
    800030f4:	00a90933          	add	s2,s2,a0
    800030f8:	00a989b3          	add	s3,s3,a0
    800030fc:	06956863          	bltu	a0,s1,8000316c <sys_write+0xbc>
    80003100:	072a0663          	beq	s4,s2,8000316c <sys_write+0xbc>
    80003104:	412a04b3          	sub	s1,s4,s2
    80003108:	00098593          	mv	a1,s3
    8000310c:	00010513          	mv	a0,sp
    80003110:	009b7463          	bgeu	s6,s1,80003118 <sys_write+0x68>
    80003114:	20000493          	li	s1,512
    80003118:	00048613          	mv	a2,s1
    8000311c:	ed4ff0ef          	jal	800027f0 <memcpy_from_user>
    80003120:	00048613          	mv	a2,s1
    80003124:	00010593          	mv	a1,sp
    80003128:	000a8513          	mv	a0,s5
    8000312c:	bd5fd0ef          	jal	80000d00 <file_write>
    80003130:	00050413          	mv	s0,a0
    80003134:	fc0550e3          	bgez	a0,800030f4 <sys_write+0x44>
    80003138:	000a8513          	mv	a0,s5
    8000313c:	f0cfd0ef          	jal	80000848 <file_decref>
    80003140:	22813483          	ld	s1,552(sp)
    80003144:	22013903          	ld	s2,544(sp)
    80003148:	20813a83          	ld	s5,520(sp)
    8000314c:	20013b03          	ld	s6,512(sp)
    80003150:	23813083          	ld	ra,568(sp)
    80003154:	00040513          	mv	a0,s0
    80003158:	23013403          	ld	s0,560(sp)
    8000315c:	21813983          	ld	s3,536(sp)
    80003160:	21013a03          	ld	s4,528(sp)
    80003164:	24010113          	add	sp,sp,576
    80003168:	00008067          	ret
    8000316c:	00090413          	mv	s0,s2
    80003170:	fc9ff06f          	j	80003138 <sys_write+0x88>
    80003174:	ff700413          	li	s0,-9
    80003178:	fd9ff06f          	j	80003150 <sys_write+0xa0>

000000008000317c <sys_writev>:
    8000317c:	fc010113          	add	sp,sp,-64
    80003180:	02113c23          	sd	ra,56(sp)
    80003184:	02913423          	sd	s1,40(sp)
    80003188:	08c05e63          	blez	a2,80003224 <sys_writev+0xa8>
    8000318c:	00461613          	sll	a2,a2,0x4
    80003190:	02813823          	sd	s0,48(sp)
    80003194:	03213023          	sd	s2,32(sp)
    80003198:	01313c23          	sd	s3,24(sp)
    8000319c:	00058413          	mv	s0,a1
    800031a0:	00050993          	mv	s3,a0
    800031a4:	00c58933          	add	s2,a1,a2
    800031a8:	00000493          	li	s1,0
    800031ac:	00c0006f          	j	800031b8 <sys_writev+0x3c>
    800031b0:	00a484b3          	add	s1,s1,a0
    800031b4:	05240863          	beq	s0,s2,80003204 <sys_writev+0x88>
    800031b8:	00040593          	mv	a1,s0
    800031bc:	01000613          	li	a2,16
    800031c0:	00010513          	mv	a0,sp
    800031c4:	e2cff0ef          	jal	800027f0 <memcpy_from_user>
    800031c8:	00813603          	ld	a2,8(sp)
    800031cc:	00013583          	ld	a1,0(sp)
    800031d0:	00098513          	mv	a0,s3
    800031d4:	01040413          	add	s0,s0,16
    800031d8:	ed9ff0ef          	jal	800030b0 <sys_write>
    800031dc:	fc055ae3          	bgez	a0,800031b0 <sys_writev+0x34>
    800031e0:	03013403          	ld	s0,48(sp)
    800031e4:	02013903          	ld	s2,32(sp)
    800031e8:	01813983          	ld	s3,24(sp)
    800031ec:	00050493          	mv	s1,a0
    800031f0:	03813083          	ld	ra,56(sp)
    800031f4:	00048513          	mv	a0,s1
    800031f8:	02813483          	ld	s1,40(sp)
    800031fc:	04010113          	add	sp,sp,64
    80003200:	00008067          	ret
    80003204:	03013403          	ld	s0,48(sp)
    80003208:	03813083          	ld	ra,56(sp)
    8000320c:	02013903          	ld	s2,32(sp)
    80003210:	01813983          	ld	s3,24(sp)
    80003214:	00048513          	mv	a0,s1
    80003218:	02813483          	ld	s1,40(sp)
    8000321c:	04010113          	add	sp,sp,64
    80003220:	00008067          	ret
    80003224:	00000493          	li	s1,0
    80003228:	fc9ff06f          	j	800031f0 <sys_writev+0x74>

000000008000322c <sys_dup>:
    8000322c:	ff010113          	add	sp,sp,-16
    80003230:	00113423          	sd	ra,8(sp)
    80003234:	00813023          	sd	s0,0(sp)
    80003238:	fb8fd0ef          	jal	800009f0 <file_get>
    8000323c:	02050863          	beqz	a0,8000326c <sys_dup+0x40>
    80003240:	00050413          	mv	s0,a0
    80003244:	e48fd0ef          	jal	8000088c <file_dup>
    80003248:	00050793          	mv	a5,a0
    8000324c:	00040513          	mv	a0,s0
    80003250:	00078413          	mv	s0,a5
    80003254:	df4fd0ef          	jal	80000848 <file_decref>
    80003258:	00813083          	ld	ra,8(sp)
    8000325c:	00040513          	mv	a0,s0
    80003260:	00013403          	ld	s0,0(sp)
    80003264:	01010113          	add	sp,sp,16
    80003268:	00008067          	ret
    8000326c:	ff700413          	li	s0,-9
    80003270:	fe9ff06f          	j	80003258 <sys_dup+0x2c>

0000000080003274 <sys_close>:
    80003274:	ff010113          	add	sp,sp,-16
    80003278:	00113423          	sd	ra,8(sp)
    8000327c:	8f1fd0ef          	jal	80000b6c <fd_close>
    80003280:	00054863          	bltz	a0,80003290 <sys_close+0x1c>
    80003284:	00813083          	ld	ra,8(sp)
    80003288:	01010113          	add	sp,sp,16
    8000328c:	00008067          	ret
    80003290:	ff700513          	li	a0,-9
    80003294:	ff1ff06f          	j	80003284 <sys_close+0x10>

0000000080003298 <sys_fstat>:
    80003298:	f6010113          	add	sp,sp,-160
    8000329c:	08913423          	sd	s1,136(sp)
    800032a0:	08113c23          	sd	ra,152(sp)
    800032a4:	00058493          	mv	s1,a1
    800032a8:	f48fd0ef          	jal	800009f0 <file_get>
    800032ac:	06050e63          	beqz	a0,80003328 <sys_fstat+0x90>
    800032b0:	00052583          	lw	a1,0(a0)
    800032b4:	09213023          	sd	s2,128(sp)
    800032b8:	00010617          	auipc	a2,0x10
    800032bc:	da863603          	ld	a2,-600(a2) # 80013060 <kva2pa_offset>
    800032c0:	00010913          	mv	s2,sp
    800032c4:	08813823          	sd	s0,144(sp)
    800032c8:	00000893          	li	a7,0
    800032cc:	00050413          	mv	s0,a0
    800032d0:	00000813          	li	a6,0
    800032d4:	00000713          	li	a4,0
    800032d8:	00000693          	li	a3,0
    800032dc:	40c90633          	sub	a2,s2,a2
    800032e0:	00000793          	li	a5,0
    800032e4:	05000513          	li	a0,80
    800032e8:	addfd0ef          	jal	80000dc4 <frontend_syscall>
    800032ec:	00050793          	mv	a5,a0
    800032f0:	00090593          	mv	a1,s2
    800032f4:	00048513          	mv	a0,s1
    800032f8:	08000613          	li	a2,128
    800032fc:	0007849b          	sext.w	s1,a5
    80003300:	c6cff0ef          	jal	8000276c <memcpy_to_user>
    80003304:	00040513          	mv	a0,s0
    80003308:	d40fd0ef          	jal	80000848 <file_decref>
    8000330c:	09013403          	ld	s0,144(sp)
    80003310:	08013903          	ld	s2,128(sp)
    80003314:	09813083          	ld	ra,152(sp)
    80003318:	00048513          	mv	a0,s1
    8000331c:	08813483          	ld	s1,136(sp)
    80003320:	0a010113          	add	sp,sp,160
    80003324:	00008067          	ret
    80003328:	ff700493          	li	s1,-9
    8000332c:	fe9ff06f          	j	80003314 <sys_fstat+0x7c>

0000000080003330 <sys_fcntl>:
    80003330:	fe010113          	add	sp,sp,-32
    80003334:	00913423          	sd	s1,8(sp)
    80003338:	01213023          	sd	s2,0(sp)
    8000333c:	00113c23          	sd	ra,24(sp)
    80003340:	00813823          	sd	s0,16(sp)
    80003344:	00058493          	mv	s1,a1
    80003348:	00060913          	mv	s2,a2
    8000334c:	ea4fd0ef          	jal	800009f0 <file_get>
    80003350:	04050c63          	beqz	a0,800033a8 <sys_fcntl+0x78>
    80003354:	00052583          	lw	a1,0(a0)
    80003358:	00050413          	mv	s0,a0
    8000335c:	00000793          	li	a5,0
    80003360:	00000893          	li	a7,0
    80003364:	00000813          	li	a6,0
    80003368:	00000713          	li	a4,0
    8000336c:	00090693          	mv	a3,s2
    80003370:	00048613          	mv	a2,s1
    80003374:	01900513          	li	a0,25
    80003378:	a4dfd0ef          	jal	80000dc4 <frontend_syscall>
    8000337c:	00050793          	mv	a5,a0
    80003380:	00040513          	mv	a0,s0
    80003384:	0007841b          	sext.w	s0,a5
    80003388:	cc0fd0ef          	jal	80000848 <file_decref>
    8000338c:	01813083          	ld	ra,24(sp)
    80003390:	00040513          	mv	a0,s0
    80003394:	01013403          	ld	s0,16(sp)
    80003398:	00813483          	ld	s1,8(sp)
    8000339c:	00013903          	ld	s2,0(sp)
    800033a0:	02010113          	add	sp,sp,32
    800033a4:	00008067          	ret
    800033a8:	ff700413          	li	s0,-9
    800033ac:	fe1ff06f          	j	8000338c <sys_fcntl+0x5c>

00000000800033b0 <sys_getcwd>:
    800033b0:	de010113          	add	sp,sp,-544
    800033b4:	20913423          	sd	s1,520(sp)
    800033b8:	20113c23          	sd	ra,536(sp)
    800033bc:	20813823          	sd	s0,528(sp)
    800033c0:	21213023          	sd	s2,512(sp)
    800033c4:	20000793          	li	a5,512
    800033c8:	00050493          	mv	s1,a0
    800033cc:	20000613          	li	a2,512
    800033d0:	00b7e463          	bltu	a5,a1,800033d8 <sys_getcwd+0x28>
    800033d4:	00058613          	mv	a2,a1
    800033d8:	00010597          	auipc	a1,0x10
    800033dc:	c885b583          	ld	a1,-888(a1) # 80013060 <kva2pa_offset>
    800033e0:	00010913          	mv	s2,sp
    800033e4:	00000893          	li	a7,0
    800033e8:	00000813          	li	a6,0
    800033ec:	00000793          	li	a5,0
    800033f0:	00000713          	li	a4,0
    800033f4:	00000693          	li	a3,0
    800033f8:	40b905b3          	sub	a1,s2,a1
    800033fc:	01100513          	li	a0,17
    80003400:	9c5fd0ef          	jal	80000dc4 <frontend_syscall>
    80003404:	00050413          	mv	s0,a0
    80003408:	00a05e63          	blez	a0,80003424 <sys_getcwd+0x74>
    8000340c:	00090513          	mv	a0,s2
    80003410:	7a9080ef          	jal	8000c3b8 <strlen>
    80003414:	00150613          	add	a2,a0,1
    80003418:	00090593          	mv	a1,s2
    8000341c:	00048513          	mv	a0,s1
    80003420:	b4cff0ef          	jal	8000276c <memcpy_to_user>
    80003424:	21813083          	ld	ra,536(sp)
    80003428:	00040513          	mv	a0,s0
    8000342c:	21013403          	ld	s0,528(sp)
    80003430:	20813483          	ld	s1,520(sp)
    80003434:	20013903          	ld	s2,512(sp)
    80003438:	22010113          	add	sp,sp,544
    8000343c:	00008067          	ret

0000000080003440 <sys_chdir>:
    80003440:	df010113          	add	sp,sp,-528
    80003444:	20813023          	sd	s0,512(sp)
    80003448:	00010413          	mv	s0,sp
    8000344c:	00050593          	mv	a1,a0
    80003450:	20000613          	li	a2,512
    80003454:	00040513          	mv	a0,s0
    80003458:	20113423          	sd	ra,520(sp)
    8000345c:	c18ff0ef          	jal	80002874 <strcpy_from_user>
    80003460:	04050263          	beqz	a0,800034a4 <sys_chdir+0x64>
    80003464:	00010597          	auipc	a1,0x10
    80003468:	bfc5b583          	ld	a1,-1028(a1) # 80013060 <kva2pa_offset>
    8000346c:	00000893          	li	a7,0
    80003470:	00000813          	li	a6,0
    80003474:	00000793          	li	a5,0
    80003478:	00000713          	li	a4,0
    8000347c:	00000693          	li	a3,0
    80003480:	00000613          	li	a2,0
    80003484:	40b405b3          	sub	a1,s0,a1
    80003488:	03100513          	li	a0,49
    8000348c:	939fd0ef          	jal	80000dc4 <frontend_syscall>
    80003490:	0005051b          	sext.w	a0,a0
    80003494:	20813083          	ld	ra,520(sp)
    80003498:	20013403          	ld	s0,512(sp)
    8000349c:	21010113          	add	sp,sp,528
    800034a0:	00008067          	ret
    800034a4:	fa500513          	li	a0,-91
    800034a8:	fedff06f          	j	80003494 <sys_chdir+0x54>

00000000800034ac <sys_ftruncate>:
    800034ac:	fe010113          	add	sp,sp,-32
    800034b0:	00913423          	sd	s1,8(sp)
    800034b4:	00113c23          	sd	ra,24(sp)
    800034b8:	00813823          	sd	s0,16(sp)
    800034bc:	00058493          	mv	s1,a1
    800034c0:	d30fd0ef          	jal	800009f0 <file_get>
    800034c4:	02050c63          	beqz	a0,800034fc <sys_ftruncate+0x50>
    800034c8:	00048593          	mv	a1,s1
    800034cc:	00050413          	mv	s0,a0
    800034d0:	891fd0ef          	jal	80000d60 <file_truncate>
    800034d4:	00050793          	mv	a5,a0
    800034d8:	00040513          	mv	a0,s0
    800034dc:	00078413          	mv	s0,a5
    800034e0:	b68fd0ef          	jal	80000848 <file_decref>
    800034e4:	01813083          	ld	ra,24(sp)
    800034e8:	00040513          	mv	a0,s0
    800034ec:	01013403          	ld	s0,16(sp)
    800034f0:	00813483          	ld	s1,8(sp)
    800034f4:	02010113          	add	sp,sp,32
    800034f8:	00008067          	ret
    800034fc:	ff700413          	li	s0,-9
    80003500:	fe5ff06f          	j	800034e4 <sys_ftruncate+0x38>

0000000080003504 <sys_dup3>:
    80003504:	fe010113          	add	sp,sp,-32
    80003508:	00113c23          	sd	ra,24(sp)
    8000350c:	00813823          	sd	s0,16(sp)
    80003510:	00913423          	sd	s1,8(sp)
    80003514:	04061663          	bnez	a2,80003560 <sys_dup3+0x5c>
    80003518:	00058493          	mv	s1,a1
    8000351c:	cd4fd0ef          	jal	800009f0 <file_get>
    80003520:	00050413          	mv	s0,a0
    80003524:	02050a63          	beqz	a0,80003558 <sys_dup3+0x54>
    80003528:	00048593          	mv	a1,s1
    8000352c:	bc4fd0ef          	jal	800008f0 <file_dup3>
    80003530:	00050793          	mv	a5,a0
    80003534:	00040513          	mv	a0,s0
    80003538:	00078413          	mv	s0,a5
    8000353c:	b0cfd0ef          	jal	80000848 <file_decref>
    80003540:	01813083          	ld	ra,24(sp)
    80003544:	00040513          	mv	a0,s0
    80003548:	01013403          	ld	s0,16(sp)
    8000354c:	00813483          	ld	s1,8(sp)
    80003550:	02010113          	add	sp,sp,32
    80003554:	00008067          	ret
    80003558:	ff700413          	li	s0,-9
    8000355c:	fe5ff06f          	j	80003540 <sys_dup3+0x3c>
    80003560:	0000a517          	auipc	a0,0xa
    80003564:	3c050513          	add	a0,a0,960 # 8000d920 <softfloat_countLeadingZeros8+0x640>
    80003568:	e71fd0ef          	jal	800013d8 <kassert_fail>

000000008000356c <sys_lseek>:
    8000356c:	fe010113          	add	sp,sp,-32
    80003570:	00913423          	sd	s1,8(sp)
    80003574:	01213023          	sd	s2,0(sp)
    80003578:	00113c23          	sd	ra,24(sp)
    8000357c:	00813823          	sd	s0,16(sp)
    80003580:	00058493          	mv	s1,a1
    80003584:	00060913          	mv	s2,a2
    80003588:	c68fd0ef          	jal	800009f0 <file_get>
    8000358c:	04050063          	beqz	a0,800035cc <sys_lseek+0x60>
    80003590:	00090613          	mv	a2,s2
    80003594:	00048593          	mv	a1,s1
    80003598:	00050413          	mv	s0,a0
    8000359c:	801fd0ef          	jal	80000d9c <file_lseek>
    800035a0:	00050793          	mv	a5,a0
    800035a4:	00040513          	mv	a0,s0
    800035a8:	00078413          	mv	s0,a5
    800035ac:	a9cfd0ef          	jal	80000848 <file_decref>
    800035b0:	01813083          	ld	ra,24(sp)
    800035b4:	00040513          	mv	a0,s0
    800035b8:	01013403          	ld	s0,16(sp)
    800035bc:	00813483          	ld	s1,8(sp)
    800035c0:	00013903          	ld	s2,0(sp)
    800035c4:	02010113          	add	sp,sp,32
    800035c8:	00008067          	ret
    800035cc:	ff700413          	li	s0,-9
    800035d0:	fe1ff06f          	j	800035b0 <sys_lseek+0x44>

00000000800035d4 <sys_lstat>:
    800035d4:	d6010113          	add	sp,sp,-672
    800035d8:	28913423          	sd	s1,648(sp)
    800035dc:	08010493          	add	s1,sp,128
    800035e0:	28813823          	sd	s0,656(sp)
    800035e4:	20000613          	li	a2,512
    800035e8:	00058413          	mv	s0,a1
    800035ec:	00050593          	mv	a1,a0
    800035f0:	00048513          	mv	a0,s1
    800035f4:	28113c23          	sd	ra,664(sp)
    800035f8:	a7cff0ef          	jal	80002874 <strcpy_from_user>
    800035fc:	06050a63          	beqz	a0,80003670 <sys_lstat+0x9c>
    80003600:	00048513          	mv	a0,s1
    80003604:	29213023          	sd	s2,640(sp)
    80003608:	5b1080ef          	jal	8000c3b8 <strlen>
    8000360c:	00010597          	auipc	a1,0x10
    80003610:	a545b583          	ld	a1,-1452(a1) # 80013060 <kva2pa_offset>
    80003614:	00010913          	mv	s2,sp
    80003618:	40b906b3          	sub	a3,s2,a1
    8000361c:	00150613          	add	a2,a0,1
    80003620:	00000893          	li	a7,0
    80003624:	00000813          	li	a6,0
    80003628:	00000793          	li	a5,0
    8000362c:	00000713          	li	a4,0
    80003630:	40b485b3          	sub	a1,s1,a1
    80003634:	40f00513          	li	a0,1039
    80003638:	f8cfd0ef          	jal	80000dc4 <frontend_syscall>
    8000363c:	00050793          	mv	a5,a0
    80003640:	00090593          	mv	a1,s2
    80003644:	00040513          	mv	a0,s0
    80003648:	08000613          	li	a2,128
    8000364c:	00078413          	mv	s0,a5
    80003650:	479080ef          	jal	8000c2c8 <memcpy>
    80003654:	28013903          	ld	s2,640(sp)
    80003658:	29813083          	ld	ra,664(sp)
    8000365c:	00040513          	mv	a0,s0
    80003660:	29013403          	ld	s0,656(sp)
    80003664:	28813483          	ld	s1,648(sp)
    80003668:	2a010113          	add	sp,sp,672
    8000366c:	00008067          	ret
    80003670:	fa500413          	li	s0,-91
    80003674:	fe5ff06f          	j	80003658 <sys_lstat+0x84>

0000000080003678 <sys_brk>:
    80003678:	b45fe06f          	j	800021bc <do_brk>

000000008000367c <sys_uname>:
    8000367c:	fe010113          	add	sp,sp,-32
    80003680:	00113c23          	sd	ra,24(sp)
    80003684:	00813823          	sd	s0,16(sp)
    80003688:	00913423          	sd	s1,8(sp)
    8000368c:	02010413          	add	s0,sp,32
    80003690:	e7010113          	add	sp,sp,-400
    80003694:	00050493          	mv	s1,a0
    80003698:	18600613          	li	a2,390
    8000369c:	00000593          	li	a1,0
    800036a0:	00010513          	mv	a0,sp
    800036a4:	4ad080ef          	jal	8000c350 <memset>
    800036a8:	00d00613          	li	a2,13
    800036ac:	0000a597          	auipc	a1,0xa
    800036b0:	28458593          	add	a1,a1,644 # 8000d930 <softfloat_countLeadingZeros8+0x650>
    800036b4:	00010513          	mv	a0,sp
    800036b8:	411080ef          	jal	8000c2c8 <memcpy>
    800036bc:	0000a797          	auipc	a5,0xa
    800036c0:	28478793          	add	a5,a5,644 # 8000d940 <softfloat_countLeadingZeros8+0x660>
    800036c4:	0027c503          	lbu	a0,2(a5)
    800036c8:	0037c583          	lbu	a1,3(a5)
    800036cc:	0047c603          	lbu	a2,4(a5)
    800036d0:	0007c883          	lbu	a7,0(a5)
    800036d4:	0017c803          	lbu	a6,1(a5)
    800036d8:	0057c683          	lbu	a3,5(a5)
    800036dc:	0067c703          	lbu	a4,6(a5)
    800036e0:	08a10223          	sb	a0,132(sp)
    800036e4:	08b102a3          	sb	a1,133(sp)
    800036e8:	08c10323          	sb	a2,134(sp)
    800036ec:	00048513          	mv	a0,s1
    800036f0:	040100a3          	sb	zero,65(sp)
    800036f4:	09110123          	sb	a7,130(sp)
    800036f8:	090101a3          	sb	a6,131(sp)
    800036fc:	08d103a3          	sb	a3,135(sp)
    80003700:	08e10423          	sb	a4,136(sp)
    80003704:	00010593          	mv	a1,sp
    80003708:	0c0101a3          	sb	zero,195(sp)
    8000370c:	10010223          	sb	zero,260(sp)
    80003710:	140102a3          	sb	zero,325(sp)
    80003714:	18600613          	li	a2,390
    80003718:	854ff0ef          	jal	8000276c <memcpy_to_user>
    8000371c:	fe040113          	add	sp,s0,-32
    80003720:	01813083          	ld	ra,24(sp)
    80003724:	01013403          	ld	s0,16(sp)
    80003728:	00813483          	ld	s1,8(sp)
    8000372c:	00000513          	li	a0,0
    80003730:	02010113          	add	sp,sp,32
    80003734:	00008067          	ret

0000000080003738 <sys_mmap>:
    80003738:	8b9fe06f          	j	80001ff0 <do_mmap>

000000008000373c <sys_munmap>:
    8000373c:	825fe06f          	j	80001f60 <do_munmap>

0000000080003740 <sys_mremap>:
    80003740:	ac9fe06f          	j	80002208 <do_mremap>

0000000080003744 <sys_mprotect>:
    80003744:	acdfe06f          	j	80002210 <do_mprotect>

0000000080003748 <sys_rt_sigaction>:
    80003748:	02060c63          	beqz	a2,80003780 <sys_rt_sigaction+0x38>
    8000374c:	fd010113          	add	sp,sp,-48
    80003750:	00060513          	mv	a0,a2
    80003754:	00810593          	add	a1,sp,8
    80003758:	01800613          	li	a2,24
    8000375c:	02113423          	sd	ra,40(sp)
    80003760:	00013423          	sd	zero,8(sp)
    80003764:	00013823          	sd	zero,16(sp)
    80003768:	00013c23          	sd	zero,24(sp)
    8000376c:	800ff0ef          	jal	8000276c <memcpy_to_user>
    80003770:	02813083          	ld	ra,40(sp)
    80003774:	00000513          	li	a0,0
    80003778:	03010113          	add	sp,sp,48
    8000377c:	00008067          	ret
    80003780:	00000513          	li	a0,0
    80003784:	00008067          	ret

0000000080003788 <sys_stub_success>:
    80003788:	00000513          	li	a0,0
    8000378c:	00008067          	ret

0000000080003790 <sys_getuid>:
    80003790:	00000513          	li	a0,0
    80003794:	00008067          	ret

0000000080003798 <sys_openat>:
    80003798:	dd010113          	add	sp,sp,-560
    8000379c:	20913c23          	sd	s1,536(sp)
    800037a0:	21213823          	sd	s2,528(sp)
    800037a4:	21313423          	sd	s3,520(sp)
    800037a8:	22113423          	sd	ra,552(sp)
    800037ac:	22813023          	sd	s0,544(sp)
    800037b0:	f9c00793          	li	a5,-100
    800037b4:	00058493          	mv	s1,a1
    800037b8:	00060913          	mv	s2,a2
    800037bc:	00068993          	mv	s3,a3
    800037c0:	08f50e63          	beq	a0,a5,8000385c <sys_openat+0xc4>
    800037c4:	a2cfd0ef          	jal	800009f0 <file_get>
    800037c8:	08050663          	beqz	a0,80003854 <sys_openat+0xbc>
    800037cc:	00052403          	lw	s0,0(a0)
    800037d0:	878fd0ef          	jal	80000848 <file_decref>
    800037d4:	fff00793          	li	a5,-1
    800037d8:	06f40e63          	beq	s0,a5,80003854 <sys_openat+0xbc>
    800037dc:	00048593          	mv	a1,s1
    800037e0:	20000613          	li	a2,512
    800037e4:	00010513          	mv	a0,sp
    800037e8:	88cff0ef          	jal	80002874 <strcpy_from_user>
    800037ec:	fa500493          	li	s1,-91
    800037f0:	02051263          	bnez	a0,80003814 <sys_openat+0x7c>
    800037f4:	22813083          	ld	ra,552(sp)
    800037f8:	22013403          	ld	s0,544(sp)
    800037fc:	21013903          	ld	s2,528(sp)
    80003800:	20813983          	ld	s3,520(sp)
    80003804:	00048513          	mv	a0,s1
    80003808:	21813483          	ld	s1,536(sp)
    8000380c:	23010113          	add	sp,sp,560
    80003810:	00008067          	ret
    80003814:	00040513          	mv	a0,s0
    80003818:	00098693          	mv	a3,s3
    8000381c:	00090613          	mv	a2,s2
    80003820:	00010593          	mv	a1,sp
    80003824:	a14fd0ef          	jal	80000a38 <file_openat>
    80003828:	fffff7b7          	lui	a5,0xfffff
    8000382c:	00050413          	mv	s0,a0
    80003830:	0005049b          	sext.w	s1,a0
    80003834:	fcf570e3          	bgeu	a0,a5,800037f4 <sys_openat+0x5c>
    80003838:	854fd0ef          	jal	8000088c <file_dup>
    8000383c:	00050493          	mv	s1,a0
    80003840:	00040513          	mv	a0,s0
    80003844:	804fd0ef          	jal	80000848 <file_decref>
    80003848:	fa04d6e3          	bgez	s1,800037f4 <sys_openat+0x5c>
    8000384c:	ff400493          	li	s1,-12
    80003850:	fa5ff06f          	j	800037f4 <sys_openat+0x5c>
    80003854:	ff700493          	li	s1,-9
    80003858:	f9dff06f          	j	800037f4 <sys_openat+0x5c>
    8000385c:	00050413          	mv	s0,a0
    80003860:	f7dff06f          	j	800037dc <sys_openat+0x44>

0000000080003864 <sys_open>:
    80003864:	00060693          	mv	a3,a2
    80003868:	00058613          	mv	a2,a1
    8000386c:	00050593          	mv	a1,a0
    80003870:	f9c00513          	li	a0,-100
    80003874:	f25ff06f          	j	80003798 <sys_openat>

0000000080003878 <sys_unlinkat>:
    80003878:	dd010113          	add	sp,sp,-560
    8000387c:	20913c23          	sd	s1,536(sp)
    80003880:	21213823          	sd	s2,528(sp)
    80003884:	22113423          	sd	ra,552(sp)
    80003888:	22813023          	sd	s0,544(sp)
    8000388c:	f9c00793          	li	a5,-100
    80003890:	00058493          	mv	s1,a1
    80003894:	00060913          	mv	s2,a2
    80003898:	0af50a63          	beq	a0,a5,8000394c <sys_unlinkat+0xd4>
    8000389c:	954fd0ef          	jal	800009f0 <file_get>
    800038a0:	0a050263          	beqz	a0,80003944 <sys_unlinkat+0xcc>
    800038a4:	00052403          	lw	s0,0(a0)
    800038a8:	fa1fc0ef          	jal	80000848 <file_decref>
    800038ac:	fff00793          	li	a5,-1
    800038b0:	08f40a63          	beq	s0,a5,80003944 <sys_unlinkat+0xcc>
    800038b4:	21313423          	sd	s3,520(sp)
    800038b8:	00010993          	mv	s3,sp
    800038bc:	20000613          	li	a2,512
    800038c0:	00048593          	mv	a1,s1
    800038c4:	00098513          	mv	a0,s3
    800038c8:	fadfe0ef          	jal	80002874 <strcpy_from_user>
    800038cc:	00050793          	mv	a5,a0
    800038d0:	fa500513          	li	a0,-91
    800038d4:	02079063          	bnez	a5,800038f4 <sys_unlinkat+0x7c>
    800038d8:	20813983          	ld	s3,520(sp)
    800038dc:	22813083          	ld	ra,552(sp)
    800038e0:	22013403          	ld	s0,544(sp)
    800038e4:	21813483          	ld	s1,536(sp)
    800038e8:	21013903          	ld	s2,528(sp)
    800038ec:	23010113          	add	sp,sp,560
    800038f0:	00008067          	ret
    800038f4:	00098513          	mv	a0,s3
    800038f8:	2c1080ef          	jal	8000c3b8 <strlen>
    800038fc:	0000f617          	auipc	a2,0xf
    80003900:	76463603          	ld	a2,1892(a2) # 80013060 <kva2pa_offset>
    80003904:	00090713          	mv	a4,s2
    80003908:	00150693          	add	a3,a0,1
    8000390c:	40c98633          	sub	a2,s3,a2
    80003910:	00040593          	mv	a1,s0
    80003914:	00000893          	li	a7,0
    80003918:	00000813          	li	a6,0
    8000391c:	00000793          	li	a5,0
    80003920:	02300513          	li	a0,35
    80003924:	ca0fd0ef          	jal	80000dc4 <frontend_syscall>
    80003928:	22813083          	ld	ra,552(sp)
    8000392c:	22013403          	ld	s0,544(sp)
    80003930:	20813983          	ld	s3,520(sp)
    80003934:	21813483          	ld	s1,536(sp)
    80003938:	21013903          	ld	s2,528(sp)
    8000393c:	23010113          	add	sp,sp,560
    80003940:	00008067          	ret
    80003944:	ff700513          	li	a0,-9
    80003948:	f95ff06f          	j	800038dc <sys_unlinkat+0x64>
    8000394c:	21313423          	sd	s3,520(sp)
    80003950:	00050413          	mv	s0,a0
    80003954:	f65ff06f          	j	800038b8 <sys_unlinkat+0x40>

0000000080003958 <sys_unlink>:
    80003958:	00050593          	mv	a1,a0
    8000395c:	00000613          	li	a2,0
    80003960:	f9c00513          	li	a0,-100
    80003964:	f15ff06f          	j	80003878 <sys_unlinkat>

0000000080003968 <sys_mkdirat>:
    80003968:	dd010113          	add	sp,sp,-560
    8000396c:	20913c23          	sd	s1,536(sp)
    80003970:	21213823          	sd	s2,528(sp)
    80003974:	22113423          	sd	ra,552(sp)
    80003978:	22813023          	sd	s0,544(sp)
    8000397c:	f9c00793          	li	a5,-100
    80003980:	00058493          	mv	s1,a1
    80003984:	00060913          	mv	s2,a2
    80003988:	0af50a63          	beq	a0,a5,80003a3c <sys_mkdirat+0xd4>
    8000398c:	864fd0ef          	jal	800009f0 <file_get>
    80003990:	0a050263          	beqz	a0,80003a34 <sys_mkdirat+0xcc>
    80003994:	00052403          	lw	s0,0(a0)
    80003998:	eb1fc0ef          	jal	80000848 <file_decref>
    8000399c:	fff00793          	li	a5,-1
    800039a0:	08f40a63          	beq	s0,a5,80003a34 <sys_mkdirat+0xcc>
    800039a4:	21313423          	sd	s3,520(sp)
    800039a8:	00010993          	mv	s3,sp
    800039ac:	20000613          	li	a2,512
    800039b0:	00048593          	mv	a1,s1
    800039b4:	00098513          	mv	a0,s3
    800039b8:	ebdfe0ef          	jal	80002874 <strcpy_from_user>
    800039bc:	00050793          	mv	a5,a0
    800039c0:	fa500513          	li	a0,-91
    800039c4:	02079063          	bnez	a5,800039e4 <sys_mkdirat+0x7c>
    800039c8:	20813983          	ld	s3,520(sp)
    800039cc:	22813083          	ld	ra,552(sp)
    800039d0:	22013403          	ld	s0,544(sp)
    800039d4:	21813483          	ld	s1,536(sp)
    800039d8:	21013903          	ld	s2,528(sp)
    800039dc:	23010113          	add	sp,sp,560
    800039e0:	00008067          	ret
    800039e4:	00098513          	mv	a0,s3
    800039e8:	1d1080ef          	jal	8000c3b8 <strlen>
    800039ec:	0000f617          	auipc	a2,0xf
    800039f0:	67463603          	ld	a2,1652(a2) # 80013060 <kva2pa_offset>
    800039f4:	00090713          	mv	a4,s2
    800039f8:	00150693          	add	a3,a0,1
    800039fc:	40c98633          	sub	a2,s3,a2
    80003a00:	00040593          	mv	a1,s0
    80003a04:	00000893          	li	a7,0
    80003a08:	00000813          	li	a6,0
    80003a0c:	00000793          	li	a5,0
    80003a10:	02200513          	li	a0,34
    80003a14:	bb0fd0ef          	jal	80000dc4 <frontend_syscall>
    80003a18:	22813083          	ld	ra,552(sp)
    80003a1c:	22013403          	ld	s0,544(sp)
    80003a20:	20813983          	ld	s3,520(sp)
    80003a24:	21813483          	ld	s1,536(sp)
    80003a28:	21013903          	ld	s2,528(sp)
    80003a2c:	23010113          	add	sp,sp,560
    80003a30:	00008067          	ret
    80003a34:	ff700513          	li	a0,-9
    80003a38:	f95ff06f          	j	800039cc <sys_mkdirat+0x64>
    80003a3c:	21313423          	sd	s3,520(sp)
    80003a40:	00050413          	mv	s0,a0
    80003a44:	f65ff06f          	j	800039a8 <sys_mkdirat+0x40>

0000000080003a48 <sys_mkdir>:
    80003a48:	00058613          	mv	a2,a1
    80003a4c:	00050593          	mv	a1,a0
    80003a50:	f9c00513          	li	a0,-100
    80003a54:	f15ff06f          	j	80003968 <sys_mkdirat>

0000000080003a58 <sys_faccessat>:
    80003a58:	dd010113          	add	sp,sp,-560
    80003a5c:	20913c23          	sd	s1,536(sp)
    80003a60:	21213823          	sd	s2,528(sp)
    80003a64:	22113423          	sd	ra,552(sp)
    80003a68:	22813023          	sd	s0,544(sp)
    80003a6c:	f9c00793          	li	a5,-100
    80003a70:	00058493          	mv	s1,a1
    80003a74:	00060913          	mv	s2,a2
    80003a78:	0af50a63          	beq	a0,a5,80003b2c <sys_faccessat+0xd4>
    80003a7c:	f75fc0ef          	jal	800009f0 <file_get>
    80003a80:	0a050263          	beqz	a0,80003b24 <sys_faccessat+0xcc>
    80003a84:	00052403          	lw	s0,0(a0)
    80003a88:	dc1fc0ef          	jal	80000848 <file_decref>
    80003a8c:	fff00793          	li	a5,-1
    80003a90:	08f40a63          	beq	s0,a5,80003b24 <sys_faccessat+0xcc>
    80003a94:	21313423          	sd	s3,520(sp)
    80003a98:	00010993          	mv	s3,sp
    80003a9c:	20000613          	li	a2,512
    80003aa0:	00048593          	mv	a1,s1
    80003aa4:	00098513          	mv	a0,s3
    80003aa8:	dcdfe0ef          	jal	80002874 <strcpy_from_user>
    80003aac:	00050793          	mv	a5,a0
    80003ab0:	fa500513          	li	a0,-91
    80003ab4:	02079063          	bnez	a5,80003ad4 <sys_faccessat+0x7c>
    80003ab8:	20813983          	ld	s3,520(sp)
    80003abc:	22813083          	ld	ra,552(sp)
    80003ac0:	22013403          	ld	s0,544(sp)
    80003ac4:	21813483          	ld	s1,536(sp)
    80003ac8:	21013903          	ld	s2,528(sp)
    80003acc:	23010113          	add	sp,sp,560
    80003ad0:	00008067          	ret
    80003ad4:	00098513          	mv	a0,s3
    80003ad8:	0e1080ef          	jal	8000c3b8 <strlen>
    80003adc:	0000f617          	auipc	a2,0xf
    80003ae0:	58463603          	ld	a2,1412(a2) # 80013060 <kva2pa_offset>
    80003ae4:	00090713          	mv	a4,s2
    80003ae8:	00150693          	add	a3,a0,1
    80003aec:	40c98633          	sub	a2,s3,a2
    80003af0:	00040593          	mv	a1,s0
    80003af4:	00000893          	li	a7,0
    80003af8:	00000813          	li	a6,0
    80003afc:	00000793          	li	a5,0
    80003b00:	03000513          	li	a0,48
    80003b04:	ac0fd0ef          	jal	80000dc4 <frontend_syscall>
    80003b08:	22813083          	ld	ra,552(sp)
    80003b0c:	22013403          	ld	s0,544(sp)
    80003b10:	20813983          	ld	s3,520(sp)
    80003b14:	21813483          	ld	s1,536(sp)
    80003b18:	21013903          	ld	s2,528(sp)
    80003b1c:	23010113          	add	sp,sp,560
    80003b20:	00008067          	ret
    80003b24:	ff700513          	li	a0,-9
    80003b28:	f95ff06f          	j	80003abc <sys_faccessat+0x64>
    80003b2c:	21313423          	sd	s3,520(sp)
    80003b30:	00050413          	mv	s0,a0
    80003b34:	f65ff06f          	j	80003a98 <sys_faccessat+0x40>

0000000080003b38 <sys_access>:
    80003b38:	00058613          	mv	a2,a1
    80003b3c:	00050593          	mv	a1,a0
    80003b40:	f9c00513          	li	a0,-100
    80003b44:	f15ff06f          	j	80003a58 <sys_faccessat>

0000000080003b48 <sys_fstatat>:
    80003b48:	d4010113          	add	sp,sp,-704
    80003b4c:	2a913423          	sd	s1,680(sp)
    80003b50:	29313c23          	sd	s3,664(sp)
    80003b54:	29413823          	sd	s4,656(sp)
    80003b58:	2a113c23          	sd	ra,696(sp)
    80003b5c:	2a813823          	sd	s0,688(sp)
    80003b60:	f9c00713          	li	a4,-100
    80003b64:	00058493          	mv	s1,a1
    80003b68:	00060a13          	mv	s4,a2
    80003b6c:	00068993          	mv	s3,a3
    80003b70:	0ee50063          	beq	a0,a4,80003c50 <sys_fstatat+0x108>
    80003b74:	e7dfc0ef          	jal	800009f0 <file_get>
    80003b78:	0c050863          	beqz	a0,80003c48 <sys_fstatat+0x100>
    80003b7c:	00052403          	lw	s0,0(a0)
    80003b80:	cc9fc0ef          	jal	80000848 <file_decref>
    80003b84:	fff00793          	li	a5,-1
    80003b88:	0cf40063          	beq	s0,a5,80003c48 <sys_fstatat+0x100>
    80003b8c:	2b213023          	sd	s2,672(sp)
    80003b90:	08010913          	add	s2,sp,128
    80003b94:	00048593          	mv	a1,s1
    80003b98:	20000613          	li	a2,512
    80003b9c:	00090513          	mv	a0,s2
    80003ba0:	cd5fe0ef          	jal	80002874 <strcpy_from_user>
    80003ba4:	fa500493          	li	s1,-91
    80003ba8:	02051463          	bnez	a0,80003bd0 <sys_fstatat+0x88>
    80003bac:	2a013903          	ld	s2,672(sp)
    80003bb0:	2b813083          	ld	ra,696(sp)
    80003bb4:	2b013403          	ld	s0,688(sp)
    80003bb8:	29813983          	ld	s3,664(sp)
    80003bbc:	29013a03          	ld	s4,656(sp)
    80003bc0:	00048513          	mv	a0,s1
    80003bc4:	2a813483          	ld	s1,680(sp)
    80003bc8:	2c010113          	add	sp,sp,704
    80003bcc:	00008067          	ret
    80003bd0:	00090513          	mv	a0,s2
    80003bd4:	29513423          	sd	s5,648(sp)
    80003bd8:	7e0080ef          	jal	8000c3b8 <strlen>
    80003bdc:	00010a93          	mv	s5,sp
    80003be0:	0000f617          	auipc	a2,0xf
    80003be4:	48063603          	ld	a2,1152(a2) # 80013060 <kva2pa_offset>
    80003be8:	40ca8733          	sub	a4,s5,a2
    80003bec:	00098793          	mv	a5,s3
    80003bf0:	00150693          	add	a3,a0,1
    80003bf4:	40c90633          	sub	a2,s2,a2
    80003bf8:	00040593          	mv	a1,s0
    80003bfc:	00000893          	li	a7,0
    80003c00:	00000813          	li	a6,0
    80003c04:	04f00513          	li	a0,79
    80003c08:	9bcfd0ef          	jal	80000dc4 <frontend_syscall>
    80003c0c:	00050493          	mv	s1,a0
    80003c10:	000a8593          	mv	a1,s5
    80003c14:	000a0513          	mv	a0,s4
    80003c18:	08000613          	li	a2,128
    80003c1c:	b51fe0ef          	jal	8000276c <memcpy_to_user>
    80003c20:	2b813083          	ld	ra,696(sp)
    80003c24:	2b013403          	ld	s0,688(sp)
    80003c28:	2a013903          	ld	s2,672(sp)
    80003c2c:	28813a83          	ld	s5,648(sp)
    80003c30:	29813983          	ld	s3,664(sp)
    80003c34:	29013a03          	ld	s4,656(sp)
    80003c38:	00048513          	mv	a0,s1
    80003c3c:	2a813483          	ld	s1,680(sp)
    80003c40:	2c010113          	add	sp,sp,704
    80003c44:	00008067          	ret
    80003c48:	ff700493          	li	s1,-9
    80003c4c:	f65ff06f          	j	80003bb0 <sys_fstatat+0x68>
    80003c50:	2b213023          	sd	s2,672(sp)
    80003c54:	00050413          	mv	s0,a0
    80003c58:	f39ff06f          	j	80003b90 <sys_fstatat+0x48>

0000000080003c5c <sys_stat>:
    80003c5c:	00058613          	mv	a2,a1
    80003c60:	00000693          	li	a3,0
    80003c64:	00050593          	mv	a1,a0
    80003c68:	f9c00513          	li	a0,-100
    80003c6c:	eddff06f          	j	80003b48 <sys_fstatat>

0000000080003c70 <sys_statx>:
    80003c70:	cc010113          	add	sp,sp,-832
    80003c74:	32913423          	sd	s1,808(sp)
    80003c78:	31313c23          	sd	s3,792(sp)
    80003c7c:	31413823          	sd	s4,784(sp)
    80003c80:	31513423          	sd	s5,776(sp)
    80003c84:	32113c23          	sd	ra,824(sp)
    80003c88:	32813823          	sd	s0,816(sp)
    80003c8c:	f9c00813          	li	a6,-100
    80003c90:	00058493          	mv	s1,a1
    80003c94:	00060a93          	mv	s5,a2
    80003c98:	00068a13          	mv	s4,a3
    80003c9c:	00070993          	mv	s3,a4
    80003ca0:	0d050663          	beq	a0,a6,80003d6c <sys_statx+0xfc>
    80003ca4:	d4dfc0ef          	jal	800009f0 <file_get>
    80003ca8:	0a050e63          	beqz	a0,80003d64 <sys_statx+0xf4>
    80003cac:	00052403          	lw	s0,0(a0)
    80003cb0:	b99fc0ef          	jal	80000848 <file_decref>
    80003cb4:	fff00793          	li	a5,-1
    80003cb8:	0af40663          	beq	s0,a5,80003d64 <sys_statx+0xf4>
    80003cbc:	33213023          	sd	s2,800(sp)
    80003cc0:	10010913          	add	s2,sp,256
    80003cc4:	00048593          	mv	a1,s1
    80003cc8:	20000613          	li	a2,512
    80003ccc:	00090513          	mv	a0,s2
    80003cd0:	ba5fe0ef          	jal	80002874 <strcpy_from_user>
    80003cd4:	fa500493          	li	s1,-91
    80003cd8:	02051663          	bnez	a0,80003d04 <sys_statx+0x94>
    80003cdc:	32013903          	ld	s2,800(sp)
    80003ce0:	33813083          	ld	ra,824(sp)
    80003ce4:	33013403          	ld	s0,816(sp)
    80003ce8:	31813983          	ld	s3,792(sp)
    80003cec:	31013a03          	ld	s4,784(sp)
    80003cf0:	30813a83          	ld	s5,776(sp)
    80003cf4:	00048513          	mv	a0,s1
    80003cf8:	32813483          	ld	s1,808(sp)
    80003cfc:	34010113          	add	sp,sp,832
    80003d00:	00008067          	ret
    80003d04:	00090513          	mv	a0,s2
    80003d08:	31613023          	sd	s6,768(sp)
    80003d0c:	6ac080ef          	jal	8000c3b8 <strlen>
    80003d10:	0000f617          	auipc	a2,0xf
    80003d14:	35063603          	ld	a2,848(a2) # 80013060 <kva2pa_offset>
    80003d18:	00010b13          	mv	s6,sp
    80003d1c:	020a1793          	sll	a5,s4,0x20
    80003d20:	40cb0833          	sub	a6,s6,a2
    80003d24:	00150693          	add	a3,a0,1
    80003d28:	40c90633          	sub	a2,s2,a2
    80003d2c:	00000893          	li	a7,0
    80003d30:	0207d793          	srl	a5,a5,0x20
    80003d34:	000a8713          	mv	a4,s5
    80003d38:	00040593          	mv	a1,s0
    80003d3c:	12300513          	li	a0,291
    80003d40:	884fd0ef          	jal	80000dc4 <frontend_syscall>
    80003d44:	000b0593          	mv	a1,s6
    80003d48:	00050493          	mv	s1,a0
    80003d4c:	10000613          	li	a2,256
    80003d50:	00098513          	mv	a0,s3
    80003d54:	a19fe0ef          	jal	8000276c <memcpy_to_user>
    80003d58:	32013903          	ld	s2,800(sp)
    80003d5c:	30013b03          	ld	s6,768(sp)
    80003d60:	f81ff06f          	j	80003ce0 <sys_statx+0x70>
    80003d64:	ff700493          	li	s1,-9
    80003d68:	f79ff06f          	j	80003ce0 <sys_statx+0x70>
    80003d6c:	33213023          	sd	s2,800(sp)
    80003d70:	00050413          	mv	s0,a0
    80003d74:	f4dff06f          	j	80003cc0 <sys_statx+0x50>

0000000080003d78 <sys_renameat>:
    80003d78:	bd010113          	add	sp,sp,-1072
    80003d7c:	42813023          	sd	s0,1056(sp)
    80003d80:	40913c23          	sd	s1,1048(sp)
    80003d84:	41313423          	sd	s3,1032(sp)
    80003d88:	41413023          	sd	s4,1024(sp)
    80003d8c:	42113423          	sd	ra,1064(sp)
    80003d90:	41213823          	sd	s2,1040(sp)
    80003d94:	f9c00493          	li	s1,-100
    80003d98:	00058a13          	mv	s4,a1
    80003d9c:	00060413          	mv	s0,a2
    80003da0:	00068993          	mv	s3,a3
    80003da4:	10950263          	beq	a0,s1,80003ea8 <sys_renameat+0x130>
    80003da8:	c49fc0ef          	jal	800009f0 <file_get>
    80003dac:	0e050663          	beqz	a0,80003e98 <sys_renameat+0x120>
    80003db0:	00052903          	lw	s2,0(a0)
    80003db4:	a95fc0ef          	jal	80000848 <file_decref>
    80003db8:	10940a63          	beq	s0,s1,80003ecc <sys_renameat+0x154>
    80003dbc:	00040513          	mv	a0,s0
    80003dc0:	c31fc0ef          	jal	800009f0 <file_get>
    80003dc4:	0c050e63          	beqz	a0,80003ea0 <sys_renameat+0x128>
    80003dc8:	00052403          	lw	s0,0(a0)
    80003dcc:	a7dfc0ef          	jal	80000848 <file_decref>
    80003dd0:	fff00793          	li	a5,-1
    80003dd4:	0cf90663          	beq	s2,a5,80003ea0 <sys_renameat+0x128>
    80003dd8:	fff00793          	li	a5,-1
    80003ddc:	0cf40263          	beq	s0,a5,80003ea0 <sys_renameat+0x128>
    80003de0:	00010493          	mv	s1,sp
    80003de4:	20000613          	li	a2,512
    80003de8:	000a0593          	mv	a1,s4
    80003dec:	00048513          	mv	a0,s1
    80003df0:	a85fe0ef          	jal	80002874 <strcpy_from_user>
    80003df4:	02051463          	bnez	a0,80003e1c <sys_renameat+0xa4>
    80003df8:	fa500513          	li	a0,-91
    80003dfc:	42813083          	ld	ra,1064(sp)
    80003e00:	42013403          	ld	s0,1056(sp)
    80003e04:	41813483          	ld	s1,1048(sp)
    80003e08:	41013903          	ld	s2,1040(sp)
    80003e0c:	40813983          	ld	s3,1032(sp)
    80003e10:	40013a03          	ld	s4,1024(sp)
    80003e14:	43010113          	add	sp,sp,1072
    80003e18:	00008067          	ret
    80003e1c:	20010a13          	add	s4,sp,512
    80003e20:	20000613          	li	a2,512
    80003e24:	00098593          	mv	a1,s3
    80003e28:	000a0513          	mv	a0,s4
    80003e2c:	a49fe0ef          	jal	80002874 <strcpy_from_user>
    80003e30:	fc0504e3          	beqz	a0,80003df8 <sys_renameat+0x80>
    80003e34:	00048513          	mv	a0,s1
    80003e38:	580080ef          	jal	8000c3b8 <strlen>
    80003e3c:	00050993          	mv	s3,a0
    80003e40:	000a0513          	mv	a0,s4
    80003e44:	574080ef          	jal	8000c3b8 <strlen>
    80003e48:	0000f617          	auipc	a2,0xf
    80003e4c:	21863603          	ld	a2,536(a2) # 80013060 <kva2pa_offset>
    80003e50:	40ca07b3          	sub	a5,s4,a2
    80003e54:	00150813          	add	a6,a0,1
    80003e58:	00040713          	mv	a4,s0
    80003e5c:	00198693          	add	a3,s3,1
    80003e60:	40c48633          	sub	a2,s1,a2
    80003e64:	00090593          	mv	a1,s2
    80003e68:	00000893          	li	a7,0
    80003e6c:	02600513          	li	a0,38
    80003e70:	f55fc0ef          	jal	80000dc4 <frontend_syscall>
    80003e74:	42813083          	ld	ra,1064(sp)
    80003e78:	42013403          	ld	s0,1056(sp)
    80003e7c:	41813483          	ld	s1,1048(sp)
    80003e80:	41013903          	ld	s2,1040(sp)
    80003e84:	40813983          	ld	s3,1032(sp)
    80003e88:	40013a03          	ld	s4,1024(sp)
    80003e8c:	0005051b          	sext.w	a0,a0
    80003e90:	43010113          	add	sp,sp,1072
    80003e94:	00008067          	ret
    80003e98:	fff00913          	li	s2,-1
    80003e9c:	f29410e3          	bne	s0,s1,80003dbc <sys_renameat+0x44>
    80003ea0:	ff700513          	li	a0,-9
    80003ea4:	f59ff06f          	j	80003dfc <sys_renameat+0x84>
    80003ea8:	00050913          	mv	s2,a0
    80003eac:	f2a60ae3          	beq	a2,a0,80003de0 <sys_renameat+0x68>
    80003eb0:	00060513          	mv	a0,a2
    80003eb4:	b3dfc0ef          	jal	800009f0 <file_get>
    80003eb8:	00050793          	mv	a5,a0
    80003ebc:	fe0502e3          	beqz	a0,80003ea0 <sys_renameat+0x128>
    80003ec0:	0007a403          	lw	s0,0(a5) # fffffffffffff000 <_end+0xffffffff7ffeb000>
    80003ec4:	985fc0ef          	jal	80000848 <file_decref>
    80003ec8:	f11ff06f          	j	80003dd8 <sys_renameat+0x60>
    80003ecc:	fff00793          	li	a5,-1
    80003ed0:	f0f918e3          	bne	s2,a5,80003de0 <sys_renameat+0x68>
    80003ed4:	ff700513          	li	a0,-9
    80003ed8:	f25ff06f          	j	80003dfc <sys_renameat+0x84>

0000000080003edc <sys_linkat>:
    80003edc:	bc010113          	add	sp,sp,-1088
    80003ee0:	42813823          	sd	s0,1072(sp)
    80003ee4:	42913423          	sd	s1,1064(sp)
    80003ee8:	43213023          	sd	s2,1056(sp)
    80003eec:	41313c23          	sd	s3,1048(sp)
    80003ef0:	41513423          	sd	s5,1032(sp)
    80003ef4:	42113c23          	sd	ra,1080(sp)
    80003ef8:	41413823          	sd	s4,1040(sp)
    80003efc:	f9c00493          	li	s1,-100
    80003f00:	00058993          	mv	s3,a1
    80003f04:	00060413          	mv	s0,a2
    80003f08:	00068a93          	mv	s5,a3
    80003f0c:	00070913          	mv	s2,a4
    80003f10:	0e950463          	beq	a0,s1,80003ff8 <sys_linkat+0x11c>
    80003f14:	addfc0ef          	jal	800009f0 <file_get>
    80003f18:	0c050863          	beqz	a0,80003fe8 <sys_linkat+0x10c>
    80003f1c:	00052a03          	lw	s4,0(a0)
    80003f20:	929fc0ef          	jal	80000848 <file_decref>
    80003f24:	0e940c63          	beq	s0,s1,8000401c <sys_linkat+0x140>
    80003f28:	00040513          	mv	a0,s0
    80003f2c:	ac5fc0ef          	jal	800009f0 <file_get>
    80003f30:	0c050063          	beqz	a0,80003ff0 <sys_linkat+0x114>
    80003f34:	00052403          	lw	s0,0(a0)
    80003f38:	911fc0ef          	jal	80000848 <file_decref>
    80003f3c:	fff00793          	li	a5,-1
    80003f40:	0afa0863          	beq	s4,a5,80003ff0 <sys_linkat+0x114>
    80003f44:	fff00793          	li	a5,-1
    80003f48:	0af40463          	beq	s0,a5,80003ff0 <sys_linkat+0x114>
    80003f4c:	00010493          	mv	s1,sp
    80003f50:	20000613          	li	a2,512
    80003f54:	00098593          	mv	a1,s3
    80003f58:	00048513          	mv	a0,s1
    80003f5c:	919fe0ef          	jal	80002874 <strcpy_from_user>
    80003f60:	02051663          	bnez	a0,80003f8c <sys_linkat+0xb0>
    80003f64:	fa500513          	li	a0,-91
    80003f68:	43813083          	ld	ra,1080(sp)
    80003f6c:	43013403          	ld	s0,1072(sp)
    80003f70:	42813483          	ld	s1,1064(sp)
    80003f74:	42013903          	ld	s2,1056(sp)
    80003f78:	41813983          	ld	s3,1048(sp)
    80003f7c:	41013a03          	ld	s4,1040(sp)
    80003f80:	40813a83          	ld	s5,1032(sp)
    80003f84:	44010113          	add	sp,sp,1088
    80003f88:	00008067          	ret
    80003f8c:	20010993          	add	s3,sp,512
    80003f90:	20000613          	li	a2,512
    80003f94:	000a8593          	mv	a1,s5
    80003f98:	00098513          	mv	a0,s3
    80003f9c:	8d9fe0ef          	jal	80002874 <strcpy_from_user>
    80003fa0:	fc0502e3          	beqz	a0,80003f64 <sys_linkat+0x88>
    80003fa4:	00048513          	mv	a0,s1
    80003fa8:	410080ef          	jal	8000c3b8 <strlen>
    80003fac:	00050a93          	mv	s5,a0
    80003fb0:	00098513          	mv	a0,s3
    80003fb4:	404080ef          	jal	8000c3b8 <strlen>
    80003fb8:	0000f617          	auipc	a2,0xf
    80003fbc:	0a863603          	ld	a2,168(a2) # 80013060 <kva2pa_offset>
    80003fc0:	00150813          	add	a6,a0,1
    80003fc4:	40c987b3          	sub	a5,s3,a2
    80003fc8:	00090893          	mv	a7,s2
    80003fcc:	00040713          	mv	a4,s0
    80003fd0:	001a8693          	add	a3,s5,1 # 1001 <_ftext-0x7fffefff>
    80003fd4:	40c48633          	sub	a2,s1,a2
    80003fd8:	000a0593          	mv	a1,s4
    80003fdc:	02500513          	li	a0,37
    80003fe0:	de5fc0ef          	jal	80000dc4 <frontend_syscall>
    80003fe4:	f85ff06f          	j	80003f68 <sys_linkat+0x8c>
    80003fe8:	fff00a13          	li	s4,-1
    80003fec:	f2941ee3          	bne	s0,s1,80003f28 <sys_linkat+0x4c>
    80003ff0:	ff700513          	li	a0,-9
    80003ff4:	f75ff06f          	j	80003f68 <sys_linkat+0x8c>
    80003ff8:	00050a13          	mv	s4,a0
    80003ffc:	f4a608e3          	beq	a2,a0,80003f4c <sys_linkat+0x70>
    80004000:	00060513          	mv	a0,a2
    80004004:	9edfc0ef          	jal	800009f0 <file_get>
    80004008:	00050793          	mv	a5,a0
    8000400c:	fe0502e3          	beqz	a0,80003ff0 <sys_linkat+0x114>
    80004010:	0007a403          	lw	s0,0(a5)
    80004014:	835fc0ef          	jal	80000848 <file_decref>
    80004018:	f2dff06f          	j	80003f44 <sys_linkat+0x68>
    8000401c:	fff00793          	li	a5,-1
    80004020:	f2fa16e3          	bne	s4,a5,80003f4c <sys_linkat+0x70>
    80004024:	ff700513          	li	a0,-9
    80004028:	f41ff06f          	j	80003f68 <sys_linkat+0x8c>

000000008000402c <sys_link>:
    8000402c:	00058693          	mv	a3,a1
    80004030:	00000713          	li	a4,0
    80004034:	00050593          	mv	a1,a0
    80004038:	f9c00613          	li	a2,-100
    8000403c:	f9c00513          	li	a0,-100
    80004040:	e9dff06f          	j	80003edc <sys_linkat>

0000000080004044 <do_syscall>:
    80004044:	12300893          	li	a7,291
    80004048:	0308e663          	bltu	a7,a6,80004074 <do_syscall+0x30>
    8000404c:	00381313          	sll	t1,a6,0x3
    80004050:	00008897          	auipc	a7,0x8
    80004054:	68888893          	add	a7,a7,1672 # 8000c6d8 <syscall_table.1>
    80004058:	006888b3          	add	a7,a7,t1
    8000405c:	0008b883          	ld	a7,0(a7)
    80004060:	02088c63          	beqz	a7,80004098 <do_syscall+0x54>
    80004064:	0000f317          	auipc	t1,0xf
    80004068:	ffc33303          	ld	t1,-4(t1) # 80013060 <kva2pa_offset>
    8000406c:	006888b3          	add	a7,a7,t1
    80004070:	00088067          	jr	a7
    80004074:	c0080893          	add	a7,a6,-1024
    80004078:	02600313          	li	t1,38
    8000407c:	01136e63          	bltu	t1,a7,80004098 <do_syscall+0x54>
    80004080:	00389893          	sll	a7,a7,0x3
    80004084:	00008317          	auipc	t1,0x8
    80004088:	51c30313          	add	t1,t1,1308 # 8000c5a0 <old_syscall_table.0>
    8000408c:	011308b3          	add	a7,t1,a7
    80004090:	0008b883          	ld	a7,0(a7)
    80004094:	fcdff06f          	j	80004060 <do_syscall+0x1c>
    80004098:	fa800513          	li	a0,-88
    8000409c:	00008067          	ret

00000000800040a0 <send_ipi_many>:
    800040a0:	00058313          	mv	t1,a1
    800040a4:	0000f817          	auipc	a6,0xf
    800040a8:	02c83803          	ld	a6,44(a6) # 800130d0 <hart_mask>
    800040ac:	00050e63          	beqz	a0,800040c8 <send_ipi_many+0x28>
    800040b0:	34102673          	csrr	a2,mepc
    800040b4:	000205b7          	lui	a1,0x20
    800040b8:	3005a6f3          	csrrs	a3,mstatus,a1
    800040bc:	00053783          	ld	a5,0(a0)
    800040c0:	30069073          	csrw	mstatus,a3
    800040c4:	00f87833          	and	a6,a6,a5
    800040c8:	00080713          	mv	a4,a6
    800040cc:	00000793          	li	a5,0
    800040d0:	14080e63          	beqz	a6,8000422c <send_ipi_many+0x18c>
    800040d4:	fe010113          	add	sp,sp,-32
    800040d8:	00813c23          	sd	s0,24(sp)
    800040dc:	000018b7          	lui	a7,0x1
    800040e0:	02010413          	add	s0,sp,32
    800040e4:	011408b3          	add	a7,s0,a7
    800040e8:	fffff6b7          	lui	a3,0xfffff
    800040ec:	0000fe17          	auipc	t3,0xf
    800040f0:	f14e0e13          	add	t3,t3,-236 # 80013000 <disabled_hart_mask>
    800040f4:	00d8f8b3          	and	a7,a7,a3
    800040f8:	00100e93          	li	t4,1
    800040fc:	f14025f3          	csrr	a1,mhartid
    80004100:	0100006f          	j	80004110 <send_ipi_many+0x70>
    80004104:	00175713          	srl	a4,a4,0x1
    80004108:	00178793          	add	a5,a5,1
    8000410c:	06070263          	beqz	a4,80004170 <send_ipi_many+0xd0>
    80004110:	00177693          	and	a3,a4,1
    80004114:	fe0688e3          	beqz	a3,80004104 <send_ipi_many+0x64>
    80004118:	000e3683          	ld	a3,0(t3)
    8000411c:	40b78633          	sub	a2,a5,a1
    80004120:	00c61613          	sll	a2,a2,0xc
    80004124:	40f6d6b3          	sra	a3,a3,a5
    80004128:	fc060513          	add	a0,a2,-64
    8000412c:	0016f693          	and	a3,a3,1
    80004130:	00a88533          	add	a0,a7,a0
    80004134:	fc0698e3          	bnez	a3,80004104 <send_ipi_many+0x64>
    80004138:	00852683          	lw	a3,8(a0)
    8000413c:	0006869b          	sext.w	a3,a3
    80004140:	fed42623          	sw	a3,-20(s0)
    80004144:	fec42683          	lw	a3,-20(s0)
    80004148:	00d366b3          	or	a3,t1,a3
    8000414c:	00d52423          	sw	a3,8(a0)
    80004150:	fec42683          	lw	a3,-20(s0)
    80004154:	0ff0000f          	fence
    80004158:	01160633          	add	a2,a2,a7
    8000415c:	fc063683          	ld	a3,-64(a2)
    80004160:	00175713          	srl	a4,a4,0x1
    80004164:	00178793          	add	a5,a5,1
    80004168:	01d6a023          	sw	t4,0(a3) # fffffffffffff000 <_end+0xffffffff7ffeb000>
    8000416c:	fa0712e3          	bnez	a4,80004110 <send_ipi_many+0x70>
    80004170:	00100793          	li	a5,1
    80004174:	0af30663          	beq	t1,a5,80004220 <send_ipi_many+0x180>
    80004178:	000018b7          	lui	a7,0x1
    8000417c:	011408b3          	add	a7,s0,a7
    80004180:	fffff7b7          	lui	a5,0xfffff
    80004184:	00000613          	li	a2,0
    80004188:	00f8f8b3          	and	a7,a7,a5
    8000418c:	f1402373          	csrr	t1,mhartid
    80004190:	0100006f          	j	800041a0 <send_ipi_many+0x100>
    80004194:	00185813          	srl	a6,a6,0x1
    80004198:	00170713          	add	a4,a4,1
    8000419c:	06080263          	beqz	a6,80004200 <send_ipi_many+0x160>
    800041a0:	00187793          	and	a5,a6,1
    800041a4:	fe0788e3          	beqz	a5,80004194 <send_ipi_many+0xf4>
    800041a8:	406707b3          	sub	a5,a4,t1
    800041ac:	00c79793          	sll	a5,a5,0xc
    800041b0:	011787b3          	add	a5,a5,a7
    800041b4:	fc07b783          	ld	a5,-64(a5) # ffffffffffffefc0 <_end+0xffffffff7ffeafc0>
    800041b8:	0007a783          	lw	a5,0(a5)
    800041bc:	fc078ce3          	beqz	a5,80004194 <send_ipi_many+0xf4>
    800041c0:	40670533          	sub	a0,a4,t1
    800041c4:	00c51513          	sll	a0,a0,0xc
    800041c8:	01150533          	add	a0,a0,a7
    800041cc:	fc08b683          	ld	a3,-64(a7) # fc0 <_ftext-0x7ffff040>
    800041d0:	fc053583          	ld	a1,-64(a0)
    800041d4:	0006a783          	lw	a5,0(a3)
    800041d8:	0007879b          	sext.w	a5,a5
    800041dc:	fef42423          	sw	a5,-24(s0)
    800041e0:	0006a023          	sw	zero,0(a3)
    800041e4:	fe842683          	lw	a3,-24(s0)
    800041e8:	0005a783          	lw	a5,0(a1) # 20000 <_ftext-0x7ffe0000>
    800041ec:	00c6e633          	or	a2,a3,a2
    800041f0:	fc079ee3          	bnez	a5,800041cc <send_ipi_many+0x12c>
    800041f4:	00185813          	srl	a6,a6,0x1
    800041f8:	00170713          	add	a4,a4,1
    800041fc:	fa0812e3          	bnez	a6,800041a0 <send_ipi_many+0x100>
    80004200:	02060063          	beqz	a2,80004220 <send_ipi_many+0x180>
    80004204:	000017b7          	lui	a5,0x1
    80004208:	00f407b3          	add	a5,s0,a5
    8000420c:	fffff737          	lui	a4,0xfffff
    80004210:	00e7f7b3          	and	a5,a5,a4
    80004214:	fc07b783          	ld	a5,-64(a5) # fc0 <_ftext-0x7ffff040>
    80004218:	00c7a023          	sw	a2,0(a5)
    8000421c:	0ff0000f          	fence
    80004220:	01813403          	ld	s0,24(sp)
    80004224:	02010113          	add	sp,sp,32
    80004228:	00008067          	ret
    8000422c:	00008067          	ret

0000000080004230 <putstring>:
    80004230:	fd010113          	add	sp,sp,-48
    80004234:	02813023          	sd	s0,32(sp)
    80004238:	02113423          	sd	ra,40(sp)
    8000423c:	00050413          	mv	s0,a0
    80004240:	00054503          	lbu	a0,0(a0)
    80004244:	06050263          	beqz	a0,800042a8 <putstring+0x78>
    80004248:	00913c23          	sd	s1,24(sp)
    8000424c:	01213823          	sd	s2,16(sp)
    80004250:	01313423          	sd	s3,8(sp)
    80004254:	0000f497          	auipc	s1,0xf
    80004258:	e5448493          	add	s1,s1,-428 # 800130a8 <uart>
    8000425c:	0000f917          	auipc	s2,0xf
    80004260:	e5c90913          	add	s2,s2,-420 # 800130b8 <uart16550>
    80004264:	0000f997          	auipc	s3,0xf
    80004268:	e5c98993          	add	s3,s3,-420 # 800130c0 <uart_litex>
    8000426c:	0100006f          	j	8000427c <putstring+0x4c>
    80004270:	655000ef          	jal	800050c4 <uart_putchar>
    80004274:	00044503          	lbu	a0,0(s0)
    80004278:	02050263          	beqz	a0,8000429c <putstring+0x6c>
    8000427c:	0004b783          	ld	a5,0(s1)
    80004280:	00140413          	add	s0,s0,1
    80004284:	fe0796e3          	bnez	a5,80004270 <putstring+0x40>
    80004288:	00093783          	ld	a5,0(s2)
    8000428c:	02078663          	beqz	a5,800042b8 <putstring+0x88>
    80004290:	170010ef          	jal	80005400 <uart16550_putchar>
    80004294:	00044503          	lbu	a0,0(s0)
    80004298:	fe0512e3          	bnez	a0,8000427c <putstring+0x4c>
    8000429c:	01813483          	ld	s1,24(sp)
    800042a0:	01013903          	ld	s2,16(sp)
    800042a4:	00813983          	ld	s3,8(sp)
    800042a8:	02813083          	ld	ra,40(sp)
    800042ac:	02013403          	ld	s0,32(sp)
    800042b0:	03010113          	add	sp,sp,48
    800042b4:	00008067          	ret
    800042b8:	0009b783          	ld	a5,0(s3)
    800042bc:	00078663          	beqz	a5,800042c8 <putstring+0x98>
    800042c0:	2f8010ef          	jal	800055b8 <uart_litex_putchar>
    800042c4:	fb1ff06f          	j	80004274 <putstring+0x44>
    800042c8:	0000f797          	auipc	a5,0xf
    800042cc:	dd07b783          	ld	a5,-560(a5) # 80013098 <htif>
    800042d0:	fa0782e3          	beqz	a5,80004274 <putstring+0x44>
    800042d4:	3a1000ef          	jal	80004e74 <htif_console_putchar>
    800042d8:	f9dff06f          	j	80004274 <putstring+0x44>

00000000800042dc <vprintm>:
    800042dc:	ed010113          	add	sp,sp,-304
    800042e0:	00050613          	mv	a2,a0
    800042e4:	00058693          	mv	a3,a1
    800042e8:	00010513          	mv	a0,sp
    800042ec:	10000593          	li	a1,256
    800042f0:	12113423          	sd	ra,296(sp)
    800042f4:	491070ef          	jal	8000bf84 <vsnprintf>
    800042f8:	00014503          	lbu	a0,0(sp)
    800042fc:	06050863          	beqz	a0,8000436c <vprintm+0x90>
    80004300:	12813023          	sd	s0,288(sp)
    80004304:	10913c23          	sd	s1,280(sp)
    80004308:	11213823          	sd	s2,272(sp)
    8000430c:	11313423          	sd	s3,264(sp)
    80004310:	00010413          	mv	s0,sp
    80004314:	0000f497          	auipc	s1,0xf
    80004318:	d9448493          	add	s1,s1,-620 # 800130a8 <uart>
    8000431c:	0000f917          	auipc	s2,0xf
    80004320:	d9c90913          	add	s2,s2,-612 # 800130b8 <uart16550>
    80004324:	0000f997          	auipc	s3,0xf
    80004328:	d9c98993          	add	s3,s3,-612 # 800130c0 <uart_litex>
    8000432c:	0100006f          	j	8000433c <vprintm+0x60>
    80004330:	595000ef          	jal	800050c4 <uart_putchar>
    80004334:	00044503          	lbu	a0,0(s0)
    80004338:	02050263          	beqz	a0,8000435c <vprintm+0x80>
    8000433c:	0004b783          	ld	a5,0(s1)
    80004340:	00140413          	add	s0,s0,1
    80004344:	fe0796e3          	bnez	a5,80004330 <vprintm+0x54>
    80004348:	00093783          	ld	a5,0(s2)
    8000434c:	02078663          	beqz	a5,80004378 <vprintm+0x9c>
    80004350:	0b0010ef          	jal	80005400 <uart16550_putchar>
    80004354:	00044503          	lbu	a0,0(s0)
    80004358:	fe0512e3          	bnez	a0,8000433c <vprintm+0x60>
    8000435c:	12013403          	ld	s0,288(sp)
    80004360:	11813483          	ld	s1,280(sp)
    80004364:	11013903          	ld	s2,272(sp)
    80004368:	10813983          	ld	s3,264(sp)
    8000436c:	12813083          	ld	ra,296(sp)
    80004370:	13010113          	add	sp,sp,304
    80004374:	00008067          	ret
    80004378:	0009b783          	ld	a5,0(s3)
    8000437c:	00078663          	beqz	a5,80004388 <vprintm+0xac>
    80004380:	238010ef          	jal	800055b8 <uart_litex_putchar>
    80004384:	fb1ff06f          	j	80004334 <vprintm+0x58>
    80004388:	0000f797          	auipc	a5,0xf
    8000438c:	d107b783          	ld	a5,-752(a5) # 80013098 <htif>
    80004390:	fa0782e3          	beqz	a5,80004334 <vprintm+0x58>
    80004394:	2e1000ef          	jal	80004e74 <htif_console_putchar>
    80004398:	f9dff06f          	j	80004334 <vprintm+0x58>

000000008000439c <printm>:
    8000439c:	fa010113          	add	sp,sp,-96
    800043a0:	02810313          	add	t1,sp,40
    800043a4:	02b13423          	sd	a1,40(sp)
    800043a8:	00030593          	mv	a1,t1
    800043ac:	00113c23          	sd	ra,24(sp)
    800043b0:	02c13823          	sd	a2,48(sp)
    800043b4:	02d13c23          	sd	a3,56(sp)
    800043b8:	04e13023          	sd	a4,64(sp)
    800043bc:	04f13423          	sd	a5,72(sp)
    800043c0:	05013823          	sd	a6,80(sp)
    800043c4:	05113c23          	sd	a7,88(sp)
    800043c8:	00613423          	sd	t1,8(sp)
    800043cc:	f11ff0ef          	jal	800042dc <vprintm>
    800043d0:	01813083          	ld	ra,24(sp)
    800043d4:	06010113          	add	sp,sp,96
    800043d8:	00008067          	ret

00000000800043dc <redirect_trap>:
    800043dc:	14361073          	csrw	stval,a2
    800043e0:	14151073          	csrw	sepc,a0
    800043e4:	342027f3          	csrr	a5,mcause
    800043e8:	14279073          	csrw	scause,a5
    800043ec:	105027f3          	csrr	a5,stvec
    800043f0:	34179073          	csrw	mepc,a5
    800043f4:	00459793          	sll	a5,a1,0x4
    800043f8:	0035d713          	srl	a4,a1,0x3
    800043fc:	10077713          	and	a4,a4,256
    80004400:	0207f793          	and	a5,a5,32
    80004404:	edd5f593          	and	a1,a1,-291
    80004408:	00e7e7b3          	or	a5,a5,a4
    8000440c:	00001737          	lui	a4,0x1
    80004410:	00b7e7b3          	or	a5,a5,a1
    80004414:	80070713          	add	a4,a4,-2048 # 800 <_ftext-0x7ffff800>
    80004418:	00e7e7b3          	or	a5,a5,a4
    8000441c:	30079073          	csrw	mstatus,a5
    80004420:	dc1fb06f          	j	800001e0 <__redirect_trap>

0000000080004424 <pmp_trap>:
    80004424:	30002773          	csrr	a4,mstatus
    80004428:	343027f3          	csrr	a5,mtval
    8000442c:	14379073          	csrw	stval,a5
    80004430:	14161073          	csrw	sepc,a2
    80004434:	342027f3          	csrr	a5,mcause
    80004438:	14279073          	csrw	scause,a5
    8000443c:	105027f3          	csrr	a5,stvec
    80004440:	34179073          	csrw	mepc,a5
    80004444:	00471793          	sll	a5,a4,0x4
    80004448:	00375693          	srl	a3,a4,0x3
    8000444c:	1006f693          	and	a3,a3,256
    80004450:	0207f793          	and	a5,a5,32
    80004454:	edd77713          	and	a4,a4,-291
    80004458:	00d7e7b3          	or	a5,a5,a3
    8000445c:	000016b7          	lui	a3,0x1
    80004460:	00e7e7b3          	or	a5,a5,a4
    80004464:	80068693          	add	a3,a3,-2048 # 800 <_ftext-0x7ffff800>
    80004468:	00d7e7b3          	or	a5,a5,a3
    8000446c:	30079073          	csrw	mstatus,a5
    80004470:	d71fb06f          	j	800001e0 <__redirect_trap>

0000000080004474 <poweroff>:
    80004474:	ff010113          	add	sp,sp,-16
    80004478:	00813023          	sd	s0,0(sp)
    8000447c:	00050413          	mv	s0,a0
    80004480:	00009517          	auipc	a0,0x9
    80004484:	4c850513          	add	a0,a0,1224 # 8000d948 <softfloat_countLeadingZeros8+0x668>
    80004488:	00113423          	sd	ra,8(sp)
    8000448c:	f11ff0ef          	jal	8000439c <printm>
    80004490:	00040513          	mv	a0,s0
    80004494:	2bc010ef          	jal	80005750 <finisher_exit>
    80004498:	0000f797          	auipc	a5,0xf
    8000449c:	c007b783          	ld	a5,-1024(a5) # 80013098 <htif>
    800044a0:	00078463          	beqz	a5,800044a8 <poweroff+0x34>
    800044a4:	259000ef          	jal	80004efc <htif_poweroff>
    800044a8:	00800593          	li	a1,8
    800044ac:	00000513          	li	a0,0
    800044b0:	bf1ff0ef          	jal	800040a0 <send_ipi_many>
    800044b4:	10500073          	wfi
    800044b8:	ffdff06f          	j	800044b4 <poweroff+0x40>

00000000800044bc <bad_trap>:
    800044bc:	ff010113          	add	sp,sp,-16
    800044c0:	00113423          	sd	ra,8(sp)
    800044c4:	00060713          	mv	a4,a2
    800044c8:	342026f3          	csrr	a3,mcause
    800044cc:	00009517          	auipc	a0,0x9
    800044d0:	4a450513          	add	a0,a0,1188 # 8000d970 <softfloat_countLeadingZeros8+0x690>
    800044d4:	01600613          	li	a2,22
    800044d8:	00009597          	auipc	a1,0x9
    800044dc:	48058593          	add	a1,a1,1152 # 8000d958 <softfloat_countLeadingZeros8+0x678>
    800044e0:	ebdff0ef          	jal	8000439c <printm>
    800044e4:	00010537          	lui	a0,0x10
    800044e8:	fff50513          	add	a0,a0,-1 # ffff <_ftext-0x7fff0001>
    800044ec:	f89ff0ef          	jal	80004474 <poweroff>

00000000800044f0 <trap_from_machine_mode>:
    800044f0:	ff010113          	add	sp,sp,-16
    800044f4:	00113423          	sd	ra,8(sp)
    800044f8:	34202773          	csrr	a4,mcause
    800044fc:	00f00793          	li	a5,15
    80004500:	0ae7ee63          	bltu	a5,a4,800045bc <trap_from_machine_mode+0xcc>
    80004504:	0000a7b7          	lui	a5,0xa
    80004508:	0a278793          	add	a5,a5,162 # a0a2 <_ftext-0x7fff5f5e>
    8000450c:	00e7d7b3          	srl	a5,a5,a4
    80004510:	0017f793          	and	a5,a5,1
    80004514:	0a078463          	beqz	a5,800045bc <trap_from_machine_mode+0xcc>
    80004518:	300027f3          	csrr	a5,mstatus
    8000451c:	02e79693          	sll	a3,a5,0x2e
    80004520:	000205b7          	lui	a1,0x20
    80004524:	0806d863          	bgez	a3,800045b4 <trap_from_machine_mode+0xc4>
    80004528:	05853783          	ld	a5,88(a0)
    8000452c:	000a06b7          	lui	a3,0xa0
    80004530:	06d78263          	beq	a5,a3,80004594 <trap_from_machine_mode+0xa4>
    80004534:	08b79063          	bne	a5,a1,800045b4 <trap_from_machine_mode+0xc4>
    80004538:	06853703          	ld	a4,104(a0)
    8000453c:	343027f3          	csrr	a5,mtval
    80004540:	14379073          	csrw	stval,a5
    80004544:	06053783          	ld	a5,96(a0)
    80004548:	14179073          	csrw	sepc,a5
    8000454c:	342027f3          	csrr	a5,mcause
    80004550:	14279073          	csrw	scause,a5
    80004554:	105027f3          	csrr	a5,stvec
    80004558:	34179073          	csrw	mepc,a5
    8000455c:	00471793          	sll	a5,a4,0x4
    80004560:	00375693          	srl	a3,a4,0x3
    80004564:	1006f693          	and	a3,a3,256
    80004568:	0207f793          	and	a5,a5,32
    8000456c:	edd77713          	and	a4,a4,-291
    80004570:	00d7e7b3          	or	a5,a5,a3
    80004574:	000016b7          	lui	a3,0x1
    80004578:	00e7e7b3          	or	a5,a5,a4
    8000457c:	80068693          	add	a3,a3,-2048 # 800 <_ftext-0x7ffff800>
    80004580:	00d7e7b3          	or	a5,a5,a3
    80004584:	30079073          	csrw	mstatus,a5
    80004588:	00813083          	ld	ra,8(sp)
    8000458c:	01010113          	add	sp,sp,16
    80004590:	c51fb06f          	j	800001e0 <__redirect_trap>
    80004594:	00d00793          	li	a5,13
    80004598:	00f70a63          	beq	a4,a5,800045ac <trap_from_machine_mode+0xbc>
    8000459c:	00500793          	li	a5,5
    800045a0:	00f71a63          	bne	a4,a5,800045b4 <trap_from_machine_mode+0xc4>
    800045a4:	3420d073          	csrw	mcause,1
    800045a8:	f91ff06f          	j	80004538 <trap_from_machine_mode+0x48>
    800045ac:	34265073          	csrw	mcause,12
    800045b0:	f89ff06f          	j	80004538 <trap_from_machine_mode+0x48>
    800045b4:	00070593          	mv	a1,a4
    800045b8:	f05ff0ef          	jal	800044bc <bad_trap>
    800045bc:	f01ff0ef          	jal	800044bc <bad_trap>

00000000800045c0 <mcall_trap>:
    800045c0:	fe010113          	add	sp,sp,-32
    800045c4:	00813823          	sd	s0,16(sp)
    800045c8:	00913423          	sd	s1,8(sp)
    800045cc:	00113c23          	sd	ra,24(sp)
    800045d0:	02010413          	add	s0,sp,32
    800045d4:	00050493          	mv	s1,a0
    800045d8:	00460613          	add	a2,a2,4
    800045dc:	34161073          	csrw	mepc,a2
    800045e0:	08853783          	ld	a5,136(a0)
    800045e4:	00800713          	li	a4,8
    800045e8:	05053503          	ld	a0,80(a0)
    800045ec:	14f76863          	bltu	a4,a5,8000473c <mcall_trap+0x17c>
    800045f0:	00009717          	auipc	a4,0x9
    800045f4:	a0870713          	add	a4,a4,-1528 # 8000cff8 <syscall_table.1+0x920>
    800045f8:	00279793          	sll	a5,a5,0x2
    800045fc:	00e787b3          	add	a5,a5,a4
    80004600:	0007a783          	lw	a5,0(a5)
    80004604:	00e787b3          	add	a5,a5,a4
    80004608:	00078067          	jr	a5
    8000460c:	00400593          	li	a1,4
    80004610:	a91ff0ef          	jal	800040a0 <send_ipi_many>
    80004614:	00000513          	li	a0,0
    80004618:	0940006f          	j	800046ac <mcall_trap+0xec>
    8000461c:	000017b7          	lui	a5,0x1
    80004620:	00f407b3          	add	a5,s0,a5
    80004624:	fffff737          	lui	a4,0xfffff
    80004628:	00e7f7b3          	and	a5,a5,a4
    8000462c:	fd07b783          	ld	a5,-48(a5) # fd0 <_ftext-0x7ffff030>
    80004630:	00a7b023          	sd	a0,0(a5)
    80004634:	02000793          	li	a5,32
    80004638:	3447b7f3          	csrrc	a5,mip,a5
    8000463c:	08000793          	li	a5,128
    80004640:	3047a7f3          	csrrs	a5,mie,a5
    80004644:	00000513          	li	a0,0
    80004648:	0640006f          	j	800046ac <mcall_trap+0xec>
    8000464c:	0000f797          	auipc	a5,0xf
    80004650:	a5c7b783          	ld	a5,-1444(a5) # 800130a8 <uart>
    80004654:	0ff57513          	zext.b	a0,a0
    80004658:	06078e63          	beqz	a5,800046d4 <mcall_trap+0x114>
    8000465c:	269000ef          	jal	800050c4 <uart_putchar>
    80004660:	00000513          	li	a0,0
    80004664:	0480006f          	j	800046ac <mcall_trap+0xec>
    80004668:	0000f797          	auipc	a5,0xf
    8000466c:	a407b783          	ld	a5,-1472(a5) # 800130a8 <uart>
    80004670:	0a079263          	bnez	a5,80004714 <mcall_trap+0x154>
    80004674:	0000f797          	auipc	a5,0xf
    80004678:	a447b783          	ld	a5,-1468(a5) # 800130b8 <uart16550>
    8000467c:	06079c63          	bnez	a5,800046f4 <mcall_trap+0x134>
    80004680:	0000f797          	auipc	a5,0xf
    80004684:	a407b783          	ld	a5,-1472(a5) # 800130c0 <uart_litex>
    80004688:	08079a63          	bnez	a5,8000471c <mcall_trap+0x15c>
    8000468c:	0000f797          	auipc	a5,0xf
    80004690:	a0c7b783          	ld	a5,-1524(a5) # 80013098 <htif>
    80004694:	fff00513          	li	a0,-1
    80004698:	00078a63          	beqz	a5,800046ac <mcall_trap+0xec>
    8000469c:	698000ef          	jal	80004d34 <htif_console_getchar>
    800046a0:	00c0006f          	j	800046ac <mcall_trap+0xec>
    800046a4:	34417573          	csrrc	a0,mip,2
    800046a8:	00257513          	and	a0,a0,2
    800046ac:	01813083          	ld	ra,24(sp)
    800046b0:	01013403          	ld	s0,16(sp)
    800046b4:	04a4b823          	sd	a0,80(s1)
    800046b8:	00813483          	ld	s1,8(sp)
    800046bc:	02010113          	add	sp,sp,32
    800046c0:	00008067          	ret
    800046c4:	00100593          	li	a1,1
    800046c8:	f49ff06f          	j	80004610 <mcall_trap+0x50>
    800046cc:	00200593          	li	a1,2
    800046d0:	f41ff06f          	j	80004610 <mcall_trap+0x50>
    800046d4:	0000f797          	auipc	a5,0xf
    800046d8:	9e47b783          	ld	a5,-1564(a5) # 800130b8 <uart16550>
    800046dc:	02078063          	beqz	a5,800046fc <mcall_trap+0x13c>
    800046e0:	521000ef          	jal	80005400 <uart16550_putchar>
    800046e4:	00000513          	li	a0,0
    800046e8:	fc5ff06f          	j	800046ac <mcall_trap+0xec>
    800046ec:	00000513          	li	a0,0
    800046f0:	d85ff0ef          	jal	80004474 <poweroff>
    800046f4:	53d000ef          	jal	80005430 <uart16550_getchar>
    800046f8:	fb5ff06f          	j	800046ac <mcall_trap+0xec>
    800046fc:	0000f797          	auipc	a5,0xf
    80004700:	9c47b783          	ld	a5,-1596(a5) # 800130c0 <uart_litex>
    80004704:	02078063          	beqz	a5,80004724 <mcall_trap+0x164>
    80004708:	6b1000ef          	jal	800055b8 <uart_litex_putchar>
    8000470c:	00000513          	li	a0,0
    80004710:	f9dff06f          	j	800046ac <mcall_trap+0xec>
    80004714:	1cd000ef          	jal	800050e0 <uart_getchar>
    80004718:	f95ff06f          	j	800046ac <mcall_trap+0xec>
    8000471c:	6bd000ef          	jal	800055d8 <uart_litex_getchar>
    80004720:	f8dff06f          	j	800046ac <mcall_trap+0xec>
    80004724:	0000f797          	auipc	a5,0xf
    80004728:	9747b783          	ld	a5,-1676(a5) # 80013098 <htif>
    8000472c:	ee0784e3          	beqz	a5,80004614 <mcall_trap+0x54>
    80004730:	744000ef          	jal	80004e74 <htif_console_putchar>
    80004734:	00000513          	li	a0,0
    80004738:	f75ff06f          	j	800046ac <mcall_trap+0xec>
    8000473c:	fa800513          	li	a0,-88
    80004740:	f6dff06f          	j	800046ac <mcall_trap+0xec>

0000000080004744 <hart_plic_init>:
    80004744:	ff010113          	add	sp,sp,-16
    80004748:	00813423          	sd	s0,8(sp)
    8000474c:	000016b7          	lui	a3,0x1
    80004750:	01010413          	add	s0,sp,16
    80004754:	00d406b3          	add	a3,s0,a3
    80004758:	fffff7b7          	lui	a5,0xfffff
    8000475c:	00f6f6b3          	and	a3,a3,a5
    80004760:	fc06b703          	ld	a4,-64(a3) # fc0 <_ftext-0x7ffff040>
    80004764:	fd06b783          	ld	a5,-48(a3)
    80004768:	00072023          	sw	zero,0(a4) # fffffffffffff000 <_end+0xffffffff7ffeb000>
    8000476c:	fff00713          	li	a4,-1
    80004770:	00e7b023          	sd	a4,0(a5) # fffffffffffff000 <_end+0xffffffff7ffeb000>
    80004774:	34405073          	csrw	mip,0
    80004778:	0000f617          	auipc	a2,0xf
    8000477c:	90063603          	ld	a2,-1792(a2) # 80013078 <plic_ndevs>
    80004780:	04060e63          	beqz	a2,800047dc <hart_plic_init+0x98>
    80004784:	01f60613          	add	a2,a2,31
    80004788:	00565613          	srl	a2,a2,0x5
    8000478c:	02060463          	beqz	a2,800047b4 <hart_plic_init+0x70>
    80004790:	00261613          	sll	a2,a2,0x2
    80004794:	00000793          	li	a5,0
    80004798:	fff00513          	li	a0,-1
    8000479c:	ff06b703          	ld	a4,-16(a3)
    800047a0:	00f705b3          	add	a1,a4,a5
    800047a4:	00478793          	add	a5,a5,4
    800047a8:	00070463          	beqz	a4,800047b0 <hart_plic_init+0x6c>
    800047ac:	00a5a023          	sw	a0,0(a1) # 20000 <_ftext-0x7ffe0000>
    800047b0:	fec796e3          	bne	a5,a2,8000479c <hart_plic_init+0x58>
    800047b4:	000017b7          	lui	a5,0x1
    800047b8:	fffff737          	lui	a4,0xfffff
    800047bc:	00f407b3          	add	a5,s0,a5
    800047c0:	00e7f7b3          	and	a5,a5,a4
    800047c4:	fd87b703          	ld	a4,-40(a5) # fd8 <_ftext-0x7ffff028>
    800047c8:	fe87b783          	ld	a5,-24(a5)
    800047cc:	00100693          	li	a3,1
    800047d0:	00d72023          	sw	a3,0(a4) # fffffffffffff000 <_end+0xffffffff7ffeb000>
    800047d4:	00078463          	beqz	a5,800047dc <hart_plic_init+0x98>
    800047d8:	0007a023          	sw	zero,0(a5)
    800047dc:	00813403          	ld	s0,8(sp)
    800047e0:	01010113          	add	sp,sp,16
    800047e4:	00008067          	ret

00000000800047e8 <hart_init>:
    800047e8:	301026f3          	csrr	a3,misa
    800047ec:	03a69713          	sll	a4,a3,0x3a
    800047f0:	43f75713          	sra	a4,a4,0x3f
    800047f4:	ff010113          	add	sp,sp,-16
    800047f8:	000067b7          	lui	a5,0x6
    800047fc:	00e7f7b3          	and	a5,a5,a4
    80004800:	00113423          	sd	ra,8(sp)
    80004804:	02a69713          	sll	a4,a3,0x2a
    80004808:	00075463          	bgez	a4,80004810 <hart_init+0x28>
    8000480c:	6007e793          	or	a5,a5,1536
    80004810:	30079073          	csrw	mstatus,a5
    80004814:	301027f3          	csrr	a5,misa
    80004818:	02d79713          	sll	a4,a5,0x2d
    8000481c:	00075663          	bgez	a4,80004828 <hart_init+0x40>
    80004820:	fff00793          	li	a5,-1
    80004824:	10679073          	csrw	scounteren,a5
    80004828:	301027f3          	csrr	a5,misa
    8000482c:	02b79713          	sll	a4,a5,0x2b
    80004830:	00075663          	bgez	a4,8000483c <hart_init+0x54>
    80004834:	fff00793          	li	a5,-1
    80004838:	30679073          	csrw	mcounteren,a5
    8000483c:	30445073          	csrw	mie,8
    80004840:	301027f3          	csrr	a5,misa
    80004844:	02d79713          	sll	a4,a5,0x2d
    80004848:	00075463          	bgez	a4,80004850 <hart_init+0x68>
    8000484c:	18005073          	csrw	satp,0
    80004850:	301027f3          	csrr	a5,misa
    80004854:	0207f793          	and	a5,a5,32
    80004858:	02078a63          	beqz	a5,8000488c <hart_init+0xa4>
    8000485c:	300027f3          	csrr	a5,mstatus
    80004860:	00d7d713          	srl	a4,a5,0xd
    80004864:	00377713          	and	a4,a4,3
    80004868:	00009697          	auipc	a3,0x9
    8000486c:	13868693          	add	a3,a3,312 # 8000d9a0 <softfloat_countLeadingZeros8+0x6c0>
    80004870:	05e00613          	li	a2,94
    80004874:	08070863          	beqz	a4,80004904 <hart_init+0x11c>
    80004878:	02800793          	li	a5,40
    8000487c:	3017b7f3          	csrrc	a5,misa,a5
    80004880:	301027f3          	csrr	a5,misa
    80004884:	0287f793          	and	a5,a5,40
    80004888:	06079863          	bnez	a5,800048f8 <hart_init+0x110>
    8000488c:	301027f3          	csrr	a5,misa
    80004890:	02d79713          	sll	a4,a5,0x2d
    80004894:	02075c63          	bgez	a4,800048cc <hart_init+0xe4>
    80004898:	22200693          	li	a3,546
    8000489c:	30369073          	csrw	mideleg,a3
    800048a0:	0000b7b7          	lui	a5,0xb
    800048a4:	10978793          	add	a5,a5,265 # b109 <_ftext-0x7fff4ef7>
    800048a8:	30279073          	csrw	medeleg,a5
    800048ac:	30302773          	csrr	a4,mideleg
    800048b0:	22277713          	and	a4,a4,546
    800048b4:	06d71863          	bne	a4,a3,80004924 <hart_init+0x13c>
    800048b8:	30202773          	csrr	a4,medeleg
    800048bc:	00009697          	auipc	a3,0x9
    800048c0:	16c68693          	add	a3,a3,364 # 8000da28 <softfloat_countLeadingZeros8+0x748>
    800048c4:	05600613          	li	a2,86
    800048c8:	02f71e63          	bne	a4,a5,80004904 <hart_init+0x11c>
    800048cc:	01f00793          	li	a5,31
    800048d0:	fff00713          	li	a4,-1
    800048d4:	00000297          	auipc	t0,0x0
    800048d8:	01428293          	add	t0,t0,20 # 800048e8 <hart_init+0x100>
    800048dc:	305292f3          	csrrw	t0,mtvec,t0
    800048e0:	3b071073          	csrw	pmpaddr0,a4
    800048e4:	3a079073          	csrw	pmpcfg0,a5
    800048e8:	30529073          	csrw	mtvec,t0
    800048ec:	00813083          	ld	ra,8(sp)
    800048f0:	01010113          	add	sp,sp,16
    800048f4:	00008067          	ret
    800048f8:	00009697          	auipc	a3,0x9
    800048fc:	0e068693          	add	a3,a3,224 # 8000d9d8 <softfloat_countLeadingZeros8+0x6f8>
    80004900:	06e00613          	li	a2,110
    80004904:	00009517          	auipc	a0,0x9
    80004908:	d1c50513          	add	a0,a0,-740 # 8000d620 <softfloat_countLeadingZeros8+0x340>
    8000490c:	00009597          	auipc	a1,0x9
    80004910:	0b458593          	add	a1,a1,180 # 8000d9c0 <softfloat_countLeadingZeros8+0x6e0>
    80004914:	a89ff0ef          	jal	8000439c <printm>
    80004918:	00010537          	lui	a0,0x10
    8000491c:	fff50513          	add	a0,a0,-1 # ffff <_ftext-0x7fff0001>
    80004920:	b55ff0ef          	jal	80004474 <poweroff>
    80004924:	00009697          	auipc	a3,0x9
    80004928:	0d468693          	add	a3,a3,212 # 8000d9f8 <softfloat_countLeadingZeros8+0x718>
    8000492c:	05500613          	li	a2,85
    80004930:	fd5ff06f          	j	80004904 <hart_init+0x11c>

0000000080004934 <hls_init>:
    80004934:	ff010113          	add	sp,sp,-16
    80004938:	00813423          	sd	s0,8(sp)
    8000493c:	f14027f3          	csrr	a5,mhartid
    80004940:	01010413          	add	s0,sp,16
    80004944:	40f507b3          	sub	a5,a0,a5
    80004948:	00001537          	lui	a0,0x1
    8000494c:	00a40533          	add	a0,s0,a0
    80004950:	00c79793          	sll	a5,a5,0xc
    80004954:	fffff737          	lui	a4,0xfffff
    80004958:	00e57533          	and	a0,a0,a4
    8000495c:	fc078793          	add	a5,a5,-64
    80004960:	00f50533          	add	a0,a0,a5
    80004964:	00053023          	sd	zero,0(a0) # 1000 <_ftext-0x7ffff000>
    80004968:	00053423          	sd	zero,8(a0)
    8000496c:	00053823          	sd	zero,16(a0)
    80004970:	00053c23          	sd	zero,24(a0)
    80004974:	02053023          	sd	zero,32(a0)
    80004978:	02053423          	sd	zero,40(a0)
    8000497c:	02053823          	sd	zero,48(a0)
    80004980:	00813403          	ld	s0,8(sp)
    80004984:	01010113          	add	sp,sp,16
    80004988:	00008067          	ret

000000008000498c <init_first_hart>:
    8000498c:	fd010113          	add	sp,sp,-48
    80004990:	02113423          	sd	ra,40(sp)
    80004994:	02813023          	sd	s0,32(sp)
    80004998:	00913c23          	sd	s1,24(sp)
    8000499c:	03010413          	add	s0,sp,48
    800049a0:	01213823          	sd	s2,16(sp)
    800049a4:	01313423          	sd	s3,8(sp)
    800049a8:	00058513          	mv	a0,a1
    800049ac:	00058993          	mv	s3,a1
    800049b0:	754000ef          	jal	80005104 <query_uart>
    800049b4:	00098513          	mv	a0,s3
    800049b8:	2b1000ef          	jal	80005468 <query_uart16550>
    800049bc:	00098513          	mv	a0,s3
    800049c0:	445000ef          	jal	80005604 <query_uart_litex>
    800049c4:	00098513          	mv	a0,s3
    800049c8:	5a8000ef          	jal	80004f70 <query_htif>
    800049cc:	00009517          	auipc	a0,0x9
    800049d0:	07c50513          	add	a0,a0,124 # 8000da48 <softfloat_countLeadingZeros8+0x768>
    800049d4:	9c9ff0ef          	jal	8000439c <printm>
    800049d8:	e11ff0ef          	jal	800047e8 <hart_init>
    800049dc:	000017b7          	lui	a5,0x1
    800049e0:	f1402973          	csrr	s2,mhartid
    800049e4:	41200933          	neg	s2,s2
    800049e8:	fffff737          	lui	a4,0xfffff
    800049ec:	00f407b3          	add	a5,s0,a5
    800049f0:	00c91913          	sll	s2,s2,0xc
    800049f4:	00e7f4b3          	and	s1,a5,a4
    800049f8:	fc090793          	add	a5,s2,-64
    800049fc:	00f487b3          	add	a5,s1,a5
    80004a00:	0007b023          	sd	zero,0(a5) # 1000 <_ftext-0x7ffff000>
    80004a04:	0007b423          	sd	zero,8(a5)
    80004a08:	0007b823          	sd	zero,16(a5)
    80004a0c:	0007bc23          	sd	zero,24(a5)
    80004a10:	0207b023          	sd	zero,32(a5)
    80004a14:	0207b423          	sd	zero,40(a5)
    80004a18:	0207b823          	sd	zero,48(a5)
    80004a1c:	00098513          	mv	a0,s3
    80004a20:	56d000ef          	jal	8000578c <query_finisher>
    80004a24:	00098513          	mv	a0,s3
    80004a28:	12d020ef          	jal	80007354 <query_mem>
    80004a2c:	00098513          	mv	a0,s3
    80004a30:	1ad020ef          	jal	800073dc <query_harts>
    80004a34:	00098513          	mv	a0,s3
    80004a38:	249020ef          	jal	80007480 <query_clint>
    80004a3c:	00098513          	mv	a0,s3
    80004a40:	2c5020ef          	jal	80007504 <query_plic>
    80004a44:	00098513          	mv	a0,s3
    80004a48:	3bd020ef          	jal	80007604 <query_chosen>
    80004a4c:	0000e797          	auipc	a5,0xe
    80004a50:	5b47b783          	ld	a5,1460(a5) # 80013000 <disabled_hart_mask>
    80004a54:	fff7c793          	not	a5,a5
    80004a58:	0000e717          	auipc	a4,0xe
    80004a5c:	67873703          	ld	a4,1656(a4) # 800130d0 <hart_mask>
    80004a60:	00e7f7b3          	and	a5,a5,a4
    80004a64:	0017f793          	and	a5,a5,1
    80004a68:	00078a63          	beqz	a5,80004a7c <init_first_hart+0xf0>
    80004a6c:	012487b3          	add	a5,s1,s2
    80004a70:	fc07b783          	ld	a5,-64(a5)
    80004a74:	00100713          	li	a4,1
    80004a78:	00e7a023          	sw	a4,0(a5)
    80004a7c:	0000e797          	auipc	a5,0xe
    80004a80:	5fc7b783          	ld	a5,1532(a5) # 80013078 <plic_ndevs>
    80004a84:	02078663          	beqz	a5,80004ab0 <init_first_hart+0x124>
    80004a88:	0000e697          	auipc	a3,0xe
    80004a8c:	5f86b683          	ld	a3,1528(a3) # 80013080 <plic_priorities>
    80004a90:	00279713          	sll	a4,a5,0x2
    80004a94:	00100613          	li	a2,1
    80004a98:	00468793          	add	a5,a3,4
    80004a9c:	00e686b3          	add	a3,a3,a4
    80004aa0:	00078713          	mv	a4,a5
    80004aa4:	00c7a023          	sw	a2,0(a5)
    80004aa8:	00478793          	add	a5,a5,4
    80004aac:	fed71ae3          	bne	a4,a3,80004aa0 <init_first_hart+0x114>
    80004ab0:	c95ff0ef          	jal	80004744 <hart_plic_init>
    80004ab4:	0000e717          	auipc	a4,0xe
    80004ab8:	5dc70713          	add	a4,a4,1500 # 80013090 <mem_size>
    80004abc:	00073783          	ld	a5,0(a4)
    80004ac0:	02013403          	ld	s0,32(sp)
    80004ac4:	ffe006b7          	lui	a3,0xffe00
    80004ac8:	02813083          	ld	ra,40(sp)
    80004acc:	01813483          	ld	s1,24(sp)
    80004ad0:	01013903          	ld	s2,16(sp)
    80004ad4:	00098513          	mv	a0,s3
    80004ad8:	00d7f7b3          	and	a5,a5,a3
    80004adc:	00813983          	ld	s3,8(sp)
    80004ae0:	00f73023          	sd	a5,0(a4)
    80004ae4:	03010113          	add	sp,sp,48
    80004ae8:	ce1fb06f          	j	800007c8 <boot_loader>

0000000080004aec <init_other_hart>:
    80004aec:	ff010113          	add	sp,sp,-16
    80004af0:	00113423          	sd	ra,8(sp)
    80004af4:	00813023          	sd	s0,0(sp)
    80004af8:	00058413          	mv	s0,a1
    80004afc:	cedff0ef          	jal	800047e8 <hart_init>
    80004b00:	c45ff0ef          	jal	80004744 <hart_plic_init>
    80004b04:	00040513          	mv	a0,s0
    80004b08:	00013403          	ld	s0,0(sp)
    80004b0c:	00813083          	ld	ra,8(sp)
    80004b10:	01010113          	add	sp,sp,16
    80004b14:	d05fb06f          	j	80000818 <boot_other_hart>

0000000080004b18 <setup_pmp>:
    80004b18:	01f00793          	li	a5,31
    80004b1c:	fff00713          	li	a4,-1
    80004b20:	00000297          	auipc	t0,0x0
    80004b24:	01428293          	add	t0,t0,20 # 80004b34 <setup_pmp+0x1c>
    80004b28:	305292f3          	csrrw	t0,mtvec,t0
    80004b2c:	3b071073          	csrw	pmpaddr0,a4
    80004b30:	3a079073          	csrw	pmpcfg0,a5
    80004b34:	30529073          	csrw	mtvec,t0
    80004b38:	00008067          	ret

0000000080004b3c <enter_supervisor_mode>:
    80004b3c:	ff010113          	add	sp,sp,-16
    80004b40:	00813423          	sd	s0,8(sp)
    80004b44:	01010413          	add	s0,sp,16
    80004b48:	00050713          	mv	a4,a0
    80004b4c:	00058513          	mv	a0,a1
    80004b50:	00060593          	mv	a1,a2
    80004b54:	300027f3          	csrr	a5,mstatus
    80004b58:	ffffe637          	lui	a2,0xffffe
    80004b5c:	77f60613          	add	a2,a2,1919 # ffffffffffffe77f <_end+0xffffffff7ffea77f>
    80004b60:	000016b7          	lui	a3,0x1
    80004b64:	00c7f7b3          	and	a5,a5,a2
    80004b68:	80068693          	add	a3,a3,-2048 # 800 <_ftext-0x7ffff800>
    80004b6c:	00d7e7b3          	or	a5,a5,a3
    80004b70:	30079073          	csrw	mstatus,a5
    80004b74:	000017b7          	lui	a5,0x1
    80004b78:	00f407b3          	add	a5,s0,a5
    80004b7c:	fffff6b7          	lui	a3,0xfffff
    80004b80:	00d7f7b3          	and	a5,a5,a3
    80004b84:	dc078693          	add	a3,a5,-576 # dc0 <_ftext-0x7ffff240>
    80004b88:	34069073          	csrw	mscratch,a3
    80004b8c:	dc07b023          	sd	zero,-576(a5)
    80004b90:	34171073          	csrw	mepc,a4
    80004b94:	30200073          	mret

0000000080004b98 <enter_machine_mode>:
    80004b98:	ff010113          	add	sp,sp,-16
    80004b9c:	00813023          	sd	s0,0(sp)
    80004ba0:	00113423          	sd	ra,8(sp)
    80004ba4:	01010413          	add	s0,sp,16
    80004ba8:	00050713          	mv	a4,a0
    80004bac:	00058513          	mv	a0,a1
    80004bb0:	00060593          	mv	a1,a2
    80004bb4:	300027f3          	csrr	a5,mstatus
    80004bb8:	f7f7f793          	and	a5,a5,-129
    80004bbc:	30079073          	csrw	mstatus,a5
    80004bc0:	000017b7          	lui	a5,0x1
    80004bc4:	00f407b3          	add	a5,s0,a5
    80004bc8:	fffff6b7          	lui	a3,0xfffff
    80004bcc:	00d7f7b3          	and	a5,a5,a3
    80004bd0:	dc078793          	add	a5,a5,-576 # dc0 <_ftext-0x7ffff240>
    80004bd4:	34079073          	csrw	mscratch,a5
    80004bd8:	000700e7          	jalr	a4

0000000080004bdc <htif_done>:
    80004bdc:	0005a783          	lw	a5,0(a1)
    80004be0:	00078863          	beqz	a5,80004bf0 <htif_done+0x14>
    80004be4:	00100793          	li	a5,1
    80004be8:	0000e717          	auipc	a4,0xe
    80004bec:	4af73823          	sd	a5,1200(a4) # 80013098 <htif>
    80004bf0:	00008067          	ret

0000000080004bf4 <__check_fromhost>:
    80004bf4:	00009797          	auipc	a5,0x9
    80004bf8:	40c7b783          	ld	a5,1036(a5) # 8000e000 <fromhost>
    80004bfc:	04078c63          	beqz	a5,80004c54 <__check_fromhost+0x60>
    80004c00:	ff010113          	add	sp,sp,-16
    80004c04:	00009717          	auipc	a4,0x9
    80004c08:	3e073e23          	sd	zero,1020(a4) # 8000e000 <fromhost>
    80004c0c:	00113423          	sd	ra,8(sp)
    80004c10:	0387d693          	srl	a3,a5,0x38
    80004c14:	00100713          	li	a4,1
    80004c18:	06e69663          	bne	a3,a4,80004c84 <__check_fromhost+0x90>
    80004c1c:	00879713          	sll	a4,a5,0x8
    80004c20:	03875713          	srl	a4,a4,0x38
    80004c24:	00070a63          	beqz	a4,80004c38 <__check_fromhost+0x44>
    80004c28:	02d71863          	bne	a4,a3,80004c58 <__check_fromhost+0x64>
    80004c2c:	00813083          	ld	ra,8(sp)
    80004c30:	01010113          	add	sp,sp,16
    80004c34:	00008067          	ret
    80004c38:	00813083          	ld	ra,8(sp)
    80004c3c:	0ff7f793          	zext.b	a5,a5
    80004c40:	0017879b          	addw	a5,a5,1
    80004c44:	0000e717          	auipc	a4,0xe
    80004c48:	46f72023          	sw	a5,1120(a4) # 800130a4 <htif_console_buf>
    80004c4c:	01010113          	add	sp,sp,16
    80004c50:	00008067          	ret
    80004c54:	00008067          	ret
    80004c58:	00009517          	auipc	a0,0x9
    80004c5c:	9c850513          	add	a0,a0,-1592 # 8000d620 <softfloat_countLeadingZeros8+0x340>
    80004c60:	00009697          	auipc	a3,0x9
    80004c64:	e2868693          	add	a3,a3,-472 # 8000da88 <softfloat_countLeadingZeros8+0x7a8>
    80004c68:	02700613          	li	a2,39
    80004c6c:	00009597          	auipc	a1,0x9
    80004c70:	e0458593          	add	a1,a1,-508 # 8000da70 <softfloat_countLeadingZeros8+0x790>
    80004c74:	f28ff0ef          	jal	8000439c <printm>
    80004c78:	00010537          	lui	a0,0x10
    80004c7c:	fff50513          	add	a0,a0,-1 # ffff <_ftext-0x7fff0001>
    80004c80:	ff4ff0ef          	jal	80004474 <poweroff>
    80004c84:	00009517          	auipc	a0,0x9
    80004c88:	99c50513          	add	a0,a0,-1636 # 8000d620 <softfloat_countLeadingZeros8+0x340>
    80004c8c:	00009697          	auipc	a3,0x9
    80004c90:	dcc68693          	add	a3,a3,-564 # 8000da58 <softfloat_countLeadingZeros8+0x778>
    80004c94:	01f00613          	li	a2,31
    80004c98:	00009597          	auipc	a1,0x9
    80004c9c:	dd858593          	add	a1,a1,-552 # 8000da70 <softfloat_countLeadingZeros8+0x790>
    80004ca0:	efcff0ef          	jal	8000439c <printm>
    80004ca4:	00010537          	lui	a0,0x10
    80004ca8:	fff50513          	add	a0,a0,-1 # ffff <_ftext-0x7fff0001>
    80004cac:	fc8ff0ef          	jal	80004474 <poweroff>

0000000080004cb0 <htif_open>:
    80004cb0:	00058023          	sb	zero,0(a1)
    80004cb4:	000580a3          	sb	zero,1(a1)
    80004cb8:	00058123          	sb	zero,2(a1)
    80004cbc:	000581a3          	sb	zero,3(a1)
    80004cc0:	00008067          	ret

0000000080004cc4 <htif_prop>:
    80004cc4:	fe010113          	add	sp,sp,-32
    80004cc8:	00813823          	sd	s0,16(sp)
    80004ccc:	00050413          	mv	s0,a0
    80004cd0:	00853503          	ld	a0,8(a0)
    80004cd4:	00913423          	sd	s1,8(sp)
    80004cd8:	00058493          	mv	s1,a1
    80004cdc:	00009597          	auipc	a1,0x9
    80004ce0:	db458593          	add	a1,a1,-588 # 8000da90 <softfloat_countLeadingZeros8+0x7b0>
    80004ce4:	00113c23          	sd	ra,24(sp)
    80004ce8:	6f8070ef          	jal	8000c3e0 <strcmp>
    80004cec:	00050c63          	beqz	a0,80004d04 <htif_prop+0x40>
    80004cf0:	01813083          	ld	ra,24(sp)
    80004cf4:	01013403          	ld	s0,16(sp)
    80004cf8:	00813483          	ld	s1,8(sp)
    80004cfc:	02010113          	add	sp,sp,32
    80004d00:	00008067          	ret
    80004d04:	00009597          	auipc	a1,0x9
    80004d08:	d9c58593          	add	a1,a1,-612 # 8000daa0 <softfloat_countLeadingZeros8+0x7c0>
    80004d0c:	00040513          	mv	a0,s0
    80004d10:	594020ef          	jal	800072a4 <fdt_string_list_index>
    80004d14:	fc054ee3          	bltz	a0,80004cf0 <htif_prop+0x2c>
    80004d18:	01813083          	ld	ra,24(sp)
    80004d1c:	01013403          	ld	s0,16(sp)
    80004d20:	00100793          	li	a5,1
    80004d24:	00f4a023          	sw	a5,0(s1)
    80004d28:	00813483          	ld	s1,8(sp)
    80004d2c:	02010113          	add	sp,sp,32
    80004d30:	00008067          	ret

0000000080004d34 <htif_console_getchar>:
    80004d34:	fe010113          	add	sp,sp,-32
    80004d38:	00813823          	sd	s0,16(sp)
    80004d3c:	00113c23          	sd	ra,24(sp)
    80004d40:	00913423          	sd	s1,8(sp)
    80004d44:	0000e717          	auipc	a4,0xe
    80004d48:	35c70713          	add	a4,a4,860 # 800130a0 <htif_lock>
    80004d4c:	fff00413          	li	s0,-1
    80004d50:	00072783          	lw	a5,0(a4)
    80004d54:	fe079ee3          	bnez	a5,80004d50 <htif_console_getchar+0x1c>
    80004d58:	00072783          	lw	a5,0(a4)
    80004d5c:	00872023          	sw	s0,0(a4)
    80004d60:	0007879b          	sext.w	a5,a5
    80004d64:	0ff0000f          	fence
    80004d68:	fe0794e3          	bnez	a5,80004d50 <htif_console_getchar+0x1c>
    80004d6c:	e89ff0ef          	jal	80004bf4 <__check_fromhost>
    80004d70:	0000e497          	auipc	s1,0xe
    80004d74:	3344a483          	lw	s1,820(s1) # 800130a4 <htif_console_buf>
    80004d78:	0204ca63          	bltz	s1,80004dac <htif_console_getchar+0x78>
    80004d7c:	0000e797          	auipc	a5,0xe
    80004d80:	3287a423          	sw	s0,808(a5) # 800130a4 <htif_console_buf>
    80004d84:	00009417          	auipc	s0,0x9
    80004d88:	27c40413          	add	s0,s0,636 # 8000e000 <fromhost>
    80004d8c:	00843783          	ld	a5,8(s0)
    80004d90:	00078863          	beqz	a5,80004da0 <htif_console_getchar+0x6c>
    80004d94:	e61ff0ef          	jal	80004bf4 <__check_fromhost>
    80004d98:	00843783          	ld	a5,8(s0)
    80004d9c:	fe079ce3          	bnez	a5,80004d94 <htif_console_getchar+0x60>
    80004da0:	00100793          	li	a5,1
    80004da4:	03879793          	sll	a5,a5,0x38
    80004da8:	00f43423          	sd	a5,8(s0)
    80004dac:	0ff0000f          	fence
    80004db0:	01813083          	ld	ra,24(sp)
    80004db4:	01013403          	ld	s0,16(sp)
    80004db8:	0000e797          	auipc	a5,0xe
    80004dbc:	2e07a423          	sw	zero,744(a5) # 800130a0 <htif_lock>
    80004dc0:	fff4851b          	addw	a0,s1,-1
    80004dc4:	00813483          	ld	s1,8(sp)
    80004dc8:	02010113          	add	sp,sp,32
    80004dcc:	00008067          	ret

0000000080004dd0 <htif_syscall>:
    80004dd0:	fe010113          	add	sp,sp,-32
    80004dd4:	00913423          	sd	s1,8(sp)
    80004dd8:	00113c23          	sd	ra,24(sp)
    80004ddc:	00813823          	sd	s0,16(sp)
    80004de0:	00050493          	mv	s1,a0
    80004de4:	0000e717          	auipc	a4,0xe
    80004de8:	2bc70713          	add	a4,a4,700 # 800130a0 <htif_lock>
    80004dec:	fff00693          	li	a3,-1
    80004df0:	00072783          	lw	a5,0(a4)
    80004df4:	fe079ee3          	bnez	a5,80004df0 <htif_syscall+0x20>
    80004df8:	00072783          	lw	a5,0(a4)
    80004dfc:	00d72023          	sw	a3,0(a4)
    80004e00:	0007879b          	sext.w	a5,a5
    80004e04:	0ff0000f          	fence
    80004e08:	fe0794e3          	bnez	a5,80004df0 <htif_syscall+0x20>
    80004e0c:	00009417          	auipc	s0,0x9
    80004e10:	1f440413          	add	s0,s0,500 # 8000e000 <fromhost>
    80004e14:	00843783          	ld	a5,8(s0)
    80004e18:	00078863          	beqz	a5,80004e28 <htif_syscall+0x58>
    80004e1c:	dd9ff0ef          	jal	80004bf4 <__check_fromhost>
    80004e20:	00843783          	ld	a5,8(s0)
    80004e24:	fe079ce3          	bnez	a5,80004e1c <htif_syscall+0x4c>
    80004e28:	00943423          	sd	s1,8(s0)
    80004e2c:	00043703          	ld	a4,0(s0)
    80004e30:	fe070ee3          	beqz	a4,80004e2c <htif_syscall+0x5c>
    80004e34:	00871793          	sll	a5,a4,0x8
    80004e38:	00e7e7b3          	or	a5,a5,a4
    80004e3c:	0387d793          	srl	a5,a5,0x38
    80004e40:	00078663          	beqz	a5,80004e4c <htif_syscall+0x7c>
    80004e44:	db1ff0ef          	jal	80004bf4 <__check_fromhost>
    80004e48:	fe5ff06f          	j	80004e2c <htif_syscall+0x5c>
    80004e4c:	00009797          	auipc	a5,0x9
    80004e50:	1a07ba23          	sd	zero,436(a5) # 8000e000 <fromhost>
    80004e54:	0ff0000f          	fence
    80004e58:	01813083          	ld	ra,24(sp)
    80004e5c:	01013403          	ld	s0,16(sp)
    80004e60:	0000e797          	auipc	a5,0xe
    80004e64:	2407a023          	sw	zero,576(a5) # 800130a0 <htif_lock>
    80004e68:	00813483          	ld	s1,8(sp)
    80004e6c:	02010113          	add	sp,sp,32
    80004e70:	00008067          	ret

0000000080004e74 <htif_console_putchar>:
    80004e74:	fe010113          	add	sp,sp,-32
    80004e78:	00913423          	sd	s1,8(sp)
    80004e7c:	00113c23          	sd	ra,24(sp)
    80004e80:	00813823          	sd	s0,16(sp)
    80004e84:	00050493          	mv	s1,a0
    80004e88:	0000e717          	auipc	a4,0xe
    80004e8c:	21870713          	add	a4,a4,536 # 800130a0 <htif_lock>
    80004e90:	fff00693          	li	a3,-1
    80004e94:	00072783          	lw	a5,0(a4)
    80004e98:	fe079ee3          	bnez	a5,80004e94 <htif_console_putchar+0x20>
    80004e9c:	00072783          	lw	a5,0(a4)
    80004ea0:	00d72023          	sw	a3,0(a4)
    80004ea4:	0007879b          	sext.w	a5,a5
    80004ea8:	0ff0000f          	fence
    80004eac:	fe0794e3          	bnez	a5,80004e94 <htif_console_putchar+0x20>
    80004eb0:	00009417          	auipc	s0,0x9
    80004eb4:	15040413          	add	s0,s0,336 # 8000e000 <fromhost>
    80004eb8:	00843783          	ld	a5,8(s0)
    80004ebc:	00078863          	beqz	a5,80004ecc <htif_console_putchar+0x58>
    80004ec0:	d35ff0ef          	jal	80004bf4 <__check_fromhost>
    80004ec4:	00843783          	ld	a5,8(s0)
    80004ec8:	fe079ce3          	bnez	a5,80004ec0 <htif_console_putchar+0x4c>
    80004ecc:	10100793          	li	a5,257
    80004ed0:	03079793          	sll	a5,a5,0x30
    80004ed4:	00f4e4b3          	or	s1,s1,a5
    80004ed8:	00943423          	sd	s1,8(s0)
    80004edc:	0ff0000f          	fence
    80004ee0:	01813083          	ld	ra,24(sp)
    80004ee4:	01013403          	ld	s0,16(sp)
    80004ee8:	0000e797          	auipc	a5,0xe
    80004eec:	1a07ac23          	sw	zero,440(a5) # 800130a0 <htif_lock>
    80004ef0:	00813483          	ld	s1,8(sp)
    80004ef4:	02010113          	add	sp,sp,32
    80004ef8:	00008067          	ret

0000000080004efc <htif_poweroff>:
    80004efc:	fd010113          	add	sp,sp,-48
    80004f00:	02813023          	sd	s0,32(sp)
    80004f04:	00913c23          	sd	s1,24(sp)
    80004f08:	01213823          	sd	s2,16(sp)
    80004f0c:	01313423          	sd	s3,8(sp)
    80004f10:	02113423          	sd	ra,40(sp)
    80004f14:	0000e417          	auipc	s0,0xe
    80004f18:	18c40413          	add	s0,s0,396 # 800130a0 <htif_lock>
    80004f1c:	00009497          	auipc	s1,0x9
    80004f20:	0e448493          	add	s1,s1,228 # 8000e000 <fromhost>
    80004f24:	fff00913          	li	s2,-1
    80004f28:	00100993          	li	s3,1
    80004f2c:	00042783          	lw	a5,0(s0)
    80004f30:	fe079ee3          	bnez	a5,80004f2c <htif_poweroff+0x30>
    80004f34:	00042783          	lw	a5,0(s0)
    80004f38:	01242023          	sw	s2,0(s0)
    80004f3c:	0007879b          	sext.w	a5,a5
    80004f40:	0ff0000f          	fence
    80004f44:	fe0794e3          	bnez	a5,80004f2c <htif_poweroff+0x30>
    80004f48:	0084b783          	ld	a5,8(s1)
    80004f4c:	00078863          	beqz	a5,80004f5c <htif_poweroff+0x60>
    80004f50:	ca5ff0ef          	jal	80004bf4 <__check_fromhost>
    80004f54:	0084b783          	ld	a5,8(s1)
    80004f58:	fe079ce3          	bnez	a5,80004f50 <htif_poweroff+0x54>
    80004f5c:	0134b423          	sd	s3,8(s1)
    80004f60:	0ff0000f          	fence
    80004f64:	0000e797          	auipc	a5,0xe
    80004f68:	1207ae23          	sw	zero,316(a5) # 800130a0 <htif_lock>
    80004f6c:	fc1ff06f          	j	80004f2c <htif_poweroff+0x30>

0000000080004f70 <query_htif>:
    80004f70:	fc010113          	add	sp,sp,-64
    80004f74:	00000797          	auipc	a5,0x0
    80004f78:	d3c78793          	add	a5,a5,-708 # 80004cb0 <htif_open>
    80004f7c:	00f13423          	sd	a5,8(sp)
    80004f80:	00000797          	auipc	a5,0x0
    80004f84:	d4478793          	add	a5,a5,-700 # 80004cc4 <htif_prop>
    80004f88:	00f13823          	sd	a5,16(sp)
    80004f8c:	00810593          	add	a1,sp,8
    80004f90:	00000797          	auipc	a5,0x0
    80004f94:	c4c78793          	add	a5,a5,-948 # 80004bdc <htif_done>
    80004f98:	02113c23          	sd	ra,56(sp)
    80004f9c:	02013023          	sd	zero,32(sp)
    80004fa0:	00f13c23          	sd	a5,24(sp)
    80004fa4:	02213423          	sd	sp,40(sp)
    80004fa8:	044020ef          	jal	80006fec <fdt_scan>
    80004fac:	03813083          	ld	ra,56(sp)
    80004fb0:	04010113          	add	sp,sp,64
    80004fb4:	00008067          	ret

0000000080004fb8 <uart_done>:
    80004fb8:	0005a783          	lw	a5,0(a1)
    80004fbc:	00078e63          	beqz	a5,80004fd8 <uart_done+0x20>
    80004fc0:	0085b783          	ld	a5,8(a1)
    80004fc4:	00078a63          	beqz	a5,80004fd8 <uart_done+0x20>
    80004fc8:	0000e717          	auipc	a4,0xe
    80004fcc:	0e070713          	add	a4,a4,224 # 800130a8 <uart>
    80004fd0:	00073683          	ld	a3,0(a4)
    80004fd4:	00068463          	beqz	a3,80004fdc <uart_done+0x24>
    80004fd8:	00008067          	ret
    80004fdc:	00100693          	li	a3,1
    80004fe0:	00d7a423          	sw	a3,8(a5)
    80004fe4:	00f73023          	sd	a5,0(a4)
    80004fe8:	00d7a623          	sw	a3,12(a5)
    80004fec:	00008067          	ret

0000000080004ff0 <uart_open>:
    80004ff0:	00058513          	mv	a0,a1
    80004ff4:	01000613          	li	a2,16
    80004ff8:	00000593          	li	a1,0
    80004ffc:	3540706f          	j	8000c350 <memset>

0000000080005000 <uart_prop>:
    80005000:	fe010113          	add	sp,sp,-32
    80005004:	01213023          	sd	s2,0(sp)
    80005008:	00853903          	ld	s2,8(a0)
    8000500c:	00813823          	sd	s0,16(sp)
    80005010:	00913423          	sd	s1,8(sp)
    80005014:	00050413          	mv	s0,a0
    80005018:	00058493          	mv	s1,a1
    8000501c:	00090513          	mv	a0,s2
    80005020:	00009597          	auipc	a1,0x9
    80005024:	a7058593          	add	a1,a1,-1424 # 8000da90 <softfloat_countLeadingZeros8+0x7b0>
    80005028:	00113c23          	sd	ra,24(sp)
    8000502c:	3b4070ef          	jal	8000c3e0 <strcmp>
    80005030:	02050863          	beqz	a0,80005060 <uart_prop+0x60>
    80005034:	00009597          	auipc	a1,0x9
    80005038:	a8c58593          	add	a1,a1,-1396 # 8000dac0 <softfloat_countLeadingZeros8+0x7e0>
    8000503c:	00090513          	mv	a0,s2
    80005040:	3a0070ef          	jal	8000c3e0 <strcmp>
    80005044:	04050863          	beqz	a0,80005094 <uart_prop+0x94>
    80005048:	01813083          	ld	ra,24(sp)
    8000504c:	01013403          	ld	s0,16(sp)
    80005050:	00813483          	ld	s1,8(sp)
    80005054:	00013903          	ld	s2,0(sp)
    80005058:	02010113          	add	sp,sp,32
    8000505c:	00008067          	ret
    80005060:	00009597          	auipc	a1,0x9
    80005064:	a5058593          	add	a1,a1,-1456 # 8000dab0 <softfloat_countLeadingZeros8+0x7d0>
    80005068:	00040513          	mv	a0,s0
    8000506c:	238020ef          	jal	800072a4 <fdt_string_list_index>
    80005070:	04054663          	bltz	a0,800050bc <uart_prop+0xbc>
    80005074:	01813083          	ld	ra,24(sp)
    80005078:	01013403          	ld	s0,16(sp)
    8000507c:	00100793          	li	a5,1
    80005080:	00f4a023          	sw	a5,0(s1)
    80005084:	00013903          	ld	s2,0(sp)
    80005088:	00813483          	ld	s1,8(sp)
    8000508c:	02010113          	add	sp,sp,32
    80005090:	00008067          	ret
    80005094:	00043783          	ld	a5,0(s0)
    80005098:	01043583          	ld	a1,16(s0)
    8000509c:	01013403          	ld	s0,16(sp)
    800050a0:	01813083          	ld	ra,24(sp)
    800050a4:	00013903          	ld	s2,0(sp)
    800050a8:	0007b503          	ld	a0,0(a5)
    800050ac:	00848613          	add	a2,s1,8
    800050b0:	00813483          	ld	s1,8(sp)
    800050b4:	02010113          	add	sp,sp,32
    800050b8:	0b00206f          	j	80007168 <fdt_get_address>
    800050bc:	00843903          	ld	s2,8(s0)
    800050c0:	f75ff06f          	j	80005034 <uart_prop+0x34>

00000000800050c4 <uart_putchar>:
    800050c4:	0000e717          	auipc	a4,0xe
    800050c8:	fe473703          	ld	a4,-28(a4) # 800130a8 <uart>
    800050cc:	00072783          	lw	a5,0(a4)
    800050d0:	fe07cee3          	bltz	a5,800050cc <uart_putchar+0x8>
    800050d4:	0005051b          	sext.w	a0,a0
    800050d8:	00a72023          	sw	a0,0(a4)
    800050dc:	00008067          	ret

00000000800050e0 <uart_getchar>:
    800050e0:	0000e797          	auipc	a5,0xe
    800050e4:	fc87b783          	ld	a5,-56(a5) # 800130a8 <uart>
    800050e8:	0047a783          	lw	a5,4(a5)
    800050ec:	0007879b          	sext.w	a5,a5
    800050f0:	0007851b          	sext.w	a0,a5
    800050f4:	0007c463          	bltz	a5,800050fc <uart_getchar+0x1c>
    800050f8:	00008067          	ret
    800050fc:	fff00513          	li	a0,-1
    80005100:	00008067          	ret

0000000080005104 <query_uart>:
    80005104:	fb010113          	add	sp,sp,-80
    80005108:	00000797          	auipc	a5,0x0
    8000510c:	ee878793          	add	a5,a5,-280 # 80004ff0 <uart_open>
    80005110:	00f13c23          	sd	a5,24(sp)
    80005114:	00000797          	auipc	a5,0x0
    80005118:	eec78793          	add	a5,a5,-276 # 80005000 <uart_prop>
    8000511c:	02f13023          	sd	a5,32(sp)
    80005120:	00000797          	auipc	a5,0x0
    80005124:	e9878793          	add	a5,a5,-360 # 80004fb8 <uart_done>
    80005128:	02f13423          	sd	a5,40(sp)
    8000512c:	01810593          	add	a1,sp,24
    80005130:	00810793          	add	a5,sp,8
    80005134:	04113423          	sd	ra,72(sp)
    80005138:	02013823          	sd	zero,48(sp)
    8000513c:	02f13c23          	sd	a5,56(sp)
    80005140:	6ad010ef          	jal	80006fec <fdt_scan>
    80005144:	04813083          	ld	ra,72(sp)
    80005148:	05010113          	add	sp,sp,80
    8000514c:	00008067          	ret

0000000080005150 <uart16550_done>:
    80005150:	0005a783          	lw	a5,0(a1)
    80005154:	00078e63          	beqz	a5,80005170 <uart16550_done+0x20>
    80005158:	0085b683          	ld	a3,8(a1)
    8000515c:	00068a63          	beqz	a3,80005170 <uart16550_done+0x20>
    80005160:	0000e717          	auipc	a4,0xe
    80005164:	f5870713          	add	a4,a4,-168 # 800130b8 <uart16550>
    80005168:	00073783          	ld	a5,0(a4)
    8000516c:	00078463          	beqz	a5,80005174 <uart16550_done+0x24>
    80005170:	00008067          	ret
    80005174:	0185a603          	lw	a2,24(a1)
    80005178:	0a061c63          	bnez	a2,80005230 <uart16550_done+0xe0>
    8000517c:	0000a617          	auipc	a2,0xa
    80005180:	31862603          	lw	a2,792(a2) # 8000f494 <uart16550_clock>
    80005184:	01c5a783          	lw	a5,28(a1)
    80005188:	00078a63          	beqz	a5,8000519c <uart16550_done+0x4c>
    8000518c:	0047979b          	sllw	a5,a5,0x4
    80005190:	02f657bb          	divuw	a5,a2,a5
    80005194:	00010537          	lui	a0,0x10
    80005198:	00a7e663          	bltu	a5,a0,800051a4 <uart16550_done+0x54>
    8000519c:	000967b7          	lui	a5,0x96
    800051a0:	02f657bb          	divuw	a5,a2,a5
    800051a4:	0145a503          	lw	a0,20(a1)
    800051a8:	0105e603          	lwu	a2,16(a1)
    800051ac:	00100593          	li	a1,1
    800051b0:	00a595bb          	sllw	a1,a1,a0
    800051b4:	00d606b3          	add	a3,a2,a3
    800051b8:	00d73023          	sd	a3,0(a4)
    800051bc:	00b686b3          	add	a3,a3,a1
    800051c0:	00068023          	sb	zero,0(a3)
    800051c4:	00073603          	ld	a2,0(a4)
    800051c8:	00300693          	li	a3,3
    800051cc:	00a696bb          	sllw	a3,a3,a0
    800051d0:	00d60633          	add	a2,a2,a3
    800051d4:	f8000813          	li	a6,-128
    800051d8:	01060023          	sb	a6,0(a2)
    800051dc:	00073603          	ld	a2,0(a4)
    800051e0:	0ff7f813          	zext.b	a6,a5
    800051e4:	0087d79b          	srlw	a5,a5,0x8
    800051e8:	01060023          	sb	a6,0(a2)
    800051ec:	00073603          	ld	a2,0(a4)
    800051f0:	0ff7f793          	zext.b	a5,a5
    800051f4:	00b60633          	add	a2,a2,a1
    800051f8:	00f60023          	sb	a5,0(a2)
    800051fc:	00073783          	ld	a5,0(a4)
    80005200:	00200613          	li	a2,2
    80005204:	00a6163b          	sllw	a2,a2,a0
    80005208:	00d787b3          	add	a5,a5,a3
    8000520c:	00300693          	li	a3,3
    80005210:	00d78023          	sb	a3,0(a5) # 96000 <_ftext-0x7ff6a000>
    80005214:	00073783          	ld	a5,0(a4)
    80005218:	0000e717          	auipc	a4,0xe
    8000521c:	e8a72c23          	sw	a0,-360(a4) # 800130b0 <uart16550_reg_shift>
    80005220:	fc700713          	li	a4,-57
    80005224:	00c787b3          	add	a5,a5,a2
    80005228:	00e78023          	sb	a4,0(a5)
    8000522c:	00008067          	ret
    80005230:	0000a797          	auipc	a5,0xa
    80005234:	26c7a223          	sw	a2,612(a5) # 8000f494 <uart16550_clock>
    80005238:	f4dff06f          	j	80005184 <uart16550_done+0x34>

000000008000523c <uart16550_open>:
    8000523c:	00058793          	mv	a5,a1
    80005240:	ff010113          	add	sp,sp,-16
    80005244:	02000613          	li	a2,32
    80005248:	00000593          	li	a1,0
    8000524c:	00078513          	mv	a0,a5
    80005250:	00113423          	sd	ra,8(sp)
    80005254:	0fc070ef          	jal	8000c350 <memset>
    80005258:	00813083          	ld	ra,8(sp)
    8000525c:	00009737          	lui	a4,0x9
    80005260:	60070713          	add	a4,a4,1536 # 9600 <_ftext-0x7fff6a00>
    80005264:	00e52e23          	sw	a4,28(a0) # 1001c <_ftext-0x7ffeffe4>
    80005268:	01010113          	add	sp,sp,16
    8000526c:	00008067          	ret

0000000080005270 <uart16550_prop>:
    80005270:	fe010113          	add	sp,sp,-32
    80005274:	00913423          	sd	s1,8(sp)
    80005278:	00853483          	ld	s1,8(a0)
    8000527c:	00813823          	sd	s0,16(sp)
    80005280:	01213023          	sd	s2,0(sp)
    80005284:	00050413          	mv	s0,a0
    80005288:	00058913          	mv	s2,a1
    8000528c:	00048513          	mv	a0,s1
    80005290:	00009597          	auipc	a1,0x9
    80005294:	80058593          	add	a1,a1,-2048 # 8000da90 <softfloat_countLeadingZeros8+0x7b0>
    80005298:	00113c23          	sd	ra,24(sp)
    8000529c:	144070ef          	jal	8000c3e0 <strcmp>
    800052a0:	0a050263          	beqz	a0,80005344 <uart16550_prop+0xd4>
    800052a4:	00009597          	auipc	a1,0x9
    800052a8:	81c58593          	add	a1,a1,-2020 # 8000dac0 <softfloat_countLeadingZeros8+0x7e0>
    800052ac:	00048513          	mv	a0,s1
    800052b0:	130070ef          	jal	8000c3e0 <strcmp>
    800052b4:	06050463          	beqz	a0,8000531c <uart16550_prop+0xac>
    800052b8:	00009597          	auipc	a1,0x9
    800052bc:	82858593          	add	a1,a1,-2008 # 8000dae0 <softfloat_countLeadingZeros8+0x800>
    800052c0:	00048513          	mv	a0,s1
    800052c4:	11c070ef          	jal	8000c3e0 <strcmp>
    800052c8:	0c050663          	beqz	a0,80005394 <uart16550_prop+0x124>
    800052cc:	00009597          	auipc	a1,0x9
    800052d0:	82458593          	add	a1,a1,-2012 # 8000daf0 <softfloat_countLeadingZeros8+0x810>
    800052d4:	00048513          	mv	a0,s1
    800052d8:	108070ef          	jal	8000c3e0 <strcmp>
    800052dc:	0e050063          	beqz	a0,800053bc <uart16550_prop+0x14c>
    800052e0:	00009597          	auipc	a1,0x9
    800052e4:	82058593          	add	a1,a1,-2016 # 8000db00 <softfloat_countLeadingZeros8+0x820>
    800052e8:	00048513          	mv	a0,s1
    800052ec:	0f4070ef          	jal	8000c3e0 <strcmp>
    800052f0:	08050863          	beqz	a0,80005380 <uart16550_prop+0x110>
    800052f4:	00009597          	auipc	a1,0x9
    800052f8:	81c58593          	add	a1,a1,-2020 # 8000db10 <softfloat_countLeadingZeros8+0x830>
    800052fc:	00048513          	mv	a0,s1
    80005300:	0e0070ef          	jal	8000c3e0 <strcmp>
    80005304:	06051263          	bnez	a0,80005368 <uart16550_prop+0xf8>
    80005308:	00000593          	li	a1,0
    8000530c:	00040513          	mv	a0,s0
    80005310:	749010ef          	jal	80007258 <fdt_get_value>
    80005314:	00a92c23          	sw	a0,24(s2)
    80005318:	0500006f          	j	80005368 <uart16550_prop+0xf8>
    8000531c:	00043783          	ld	a5,0(s0)
    80005320:	01043583          	ld	a1,16(s0)
    80005324:	01013403          	ld	s0,16(sp)
    80005328:	01813083          	ld	ra,24(sp)
    8000532c:	00813483          	ld	s1,8(sp)
    80005330:	0007b503          	ld	a0,0(a5)
    80005334:	00890613          	add	a2,s2,8
    80005338:	00013903          	ld	s2,0(sp)
    8000533c:	02010113          	add	sp,sp,32
    80005340:	6290106f          	j	80007168 <fdt_get_address>
    80005344:	00008597          	auipc	a1,0x8
    80005348:	78458593          	add	a1,a1,1924 # 8000dac8 <softfloat_countLeadingZeros8+0x7e8>
    8000534c:	00040513          	mv	a0,s0
    80005350:	755010ef          	jal	800072a4 <fdt_string_list_index>
    80005354:	fff00793          	li	a5,-1
    80005358:	00050493          	mv	s1,a0
    8000535c:	08f50463          	beq	a0,a5,800053e4 <uart16550_prop+0x174>
    80005360:	00100793          	li	a5,1
    80005364:	00f92023          	sw	a5,0(s2)
    80005368:	01813083          	ld	ra,24(sp)
    8000536c:	01013403          	ld	s0,16(sp)
    80005370:	00813483          	ld	s1,8(sp)
    80005374:	00013903          	ld	s2,0(sp)
    80005378:	02010113          	add	sp,sp,32
    8000537c:	00008067          	ret
    80005380:	00000593          	li	a1,0
    80005384:	00040513          	mv	a0,s0
    80005388:	6d1010ef          	jal	80007258 <fdt_get_value>
    8000538c:	00a92e23          	sw	a0,28(s2)
    80005390:	fd9ff06f          	j	80005368 <uart16550_prop+0xf8>
    80005394:	00040513          	mv	a0,s0
    80005398:	00000593          	li	a1,0
    8000539c:	6bd010ef          	jal	80007258 <fdt_get_value>
    800053a0:	01813083          	ld	ra,24(sp)
    800053a4:	01013403          	ld	s0,16(sp)
    800053a8:	00a92a23          	sw	a0,20(s2)
    800053ac:	00813483          	ld	s1,8(sp)
    800053b0:	00013903          	ld	s2,0(sp)
    800053b4:	02010113          	add	sp,sp,32
    800053b8:	00008067          	ret
    800053bc:	00040513          	mv	a0,s0
    800053c0:	00000593          	li	a1,0
    800053c4:	695010ef          	jal	80007258 <fdt_get_value>
    800053c8:	01813083          	ld	ra,24(sp)
    800053cc:	01013403          	ld	s0,16(sp)
    800053d0:	00a92823          	sw	a0,16(s2)
    800053d4:	00813483          	ld	s1,8(sp)
    800053d8:	00013903          	ld	s2,0(sp)
    800053dc:	02010113          	add	sp,sp,32
    800053e0:	00008067          	ret
    800053e4:	00008597          	auipc	a1,0x8
    800053e8:	6f458593          	add	a1,a1,1780 # 8000dad8 <softfloat_countLeadingZeros8+0x7f8>
    800053ec:	00040513          	mv	a0,s0
    800053f0:	6b5010ef          	jal	800072a4 <fdt_string_list_index>
    800053f4:	f69516e3          	bne	a0,s1,80005360 <uart16550_prop+0xf0>
    800053f8:	00843483          	ld	s1,8(s0)
    800053fc:	ea9ff06f          	j	800052a4 <uart16550_prop+0x34>

0000000080005400 <uart16550_putchar>:
    80005400:	0000e797          	auipc	a5,0xe
    80005404:	cb07a783          	lw	a5,-848(a5) # 800130b0 <uart16550_reg_shift>
    80005408:	00500713          	li	a4,5
    8000540c:	0000e697          	auipc	a3,0xe
    80005410:	cac6b683          	ld	a3,-852(a3) # 800130b8 <uart16550>
    80005414:	00f7173b          	sllw	a4,a4,a5
    80005418:	00e68733          	add	a4,a3,a4
    8000541c:	00074783          	lbu	a5,0(a4)
    80005420:	0207f793          	and	a5,a5,32
    80005424:	fe078ce3          	beqz	a5,8000541c <uart16550_putchar+0x1c>
    80005428:	00a68023          	sb	a0,0(a3)
    8000542c:	00008067          	ret

0000000080005430 <uart16550_getchar>:
    80005430:	0000e697          	auipc	a3,0xe
    80005434:	c806a683          	lw	a3,-896(a3) # 800130b0 <uart16550_reg_shift>
    80005438:	00500793          	li	a5,5
    8000543c:	0000e717          	auipc	a4,0xe
    80005440:	c7c73703          	ld	a4,-900(a4) # 800130b8 <uart16550>
    80005444:	00d797bb          	sllw	a5,a5,a3
    80005448:	00f707b3          	add	a5,a4,a5
    8000544c:	0007c783          	lbu	a5,0(a5)
    80005450:	0017f793          	and	a5,a5,1
    80005454:	00078663          	beqz	a5,80005460 <uart16550_getchar+0x30>
    80005458:	00074503          	lbu	a0,0(a4)
    8000545c:	00008067          	ret
    80005460:	fff00513          	li	a0,-1
    80005464:	00008067          	ret

0000000080005468 <query_uart16550>:
    80005468:	fa010113          	add	sp,sp,-96
    8000546c:	00000797          	auipc	a5,0x0
    80005470:	dd078793          	add	a5,a5,-560 # 8000523c <uart16550_open>
    80005474:	02f13423          	sd	a5,40(sp)
    80005478:	00000797          	auipc	a5,0x0
    8000547c:	df878793          	add	a5,a5,-520 # 80005270 <uart16550_prop>
    80005480:	02f13823          	sd	a5,48(sp)
    80005484:	00000797          	auipc	a5,0x0
    80005488:	ccc78793          	add	a5,a5,-820 # 80005150 <uart16550_done>
    8000548c:	02f13c23          	sd	a5,56(sp)
    80005490:	02810593          	add	a1,sp,40
    80005494:	00810793          	add	a5,sp,8
    80005498:	04113c23          	sd	ra,88(sp)
    8000549c:	04013023          	sd	zero,64(sp)
    800054a0:	04f13423          	sd	a5,72(sp)
    800054a4:	349010ef          	jal	80006fec <fdt_scan>
    800054a8:	05813083          	ld	ra,88(sp)
    800054ac:	06010113          	add	sp,sp,96
    800054b0:	00008067          	ret

00000000800054b4 <uart_litex_done>:
    800054b4:	0005a783          	lw	a5,0(a1)
    800054b8:	00078e63          	beqz	a5,800054d4 <uart_litex_done+0x20>
    800054bc:	0085b783          	ld	a5,8(a1)
    800054c0:	00078a63          	beqz	a5,800054d4 <uart_litex_done+0x20>
    800054c4:	0000e717          	auipc	a4,0xe
    800054c8:	bfc70713          	add	a4,a4,-1028 # 800130c0 <uart_litex>
    800054cc:	00073683          	ld	a3,0(a4)
    800054d0:	00068463          	beqz	a3,800054d8 <uart_litex_done+0x24>
    800054d4:	00008067          	ret
    800054d8:	00f73023          	sd	a5,0(a4)
    800054dc:	00008067          	ret

00000000800054e0 <uart_litex_open>:
    800054e0:	00058513          	mv	a0,a1
    800054e4:	01000613          	li	a2,16
    800054e8:	00000593          	li	a1,0
    800054ec:	6650606f          	j	8000c350 <memset>

00000000800054f0 <uart_litex_prop>:
    800054f0:	fd010113          	add	sp,sp,-48
    800054f4:	01213823          	sd	s2,16(sp)
    800054f8:	00853903          	ld	s2,8(a0)
    800054fc:	02813023          	sd	s0,32(sp)
    80005500:	00913c23          	sd	s1,24(sp)
    80005504:	00050413          	mv	s0,a0
    80005508:	00058493          	mv	s1,a1
    8000550c:	00090513          	mv	a0,s2
    80005510:	00008597          	auipc	a1,0x8
    80005514:	58058593          	add	a1,a1,1408 # 8000da90 <softfloat_countLeadingZeros8+0x7b0>
    80005518:	02113423          	sd	ra,40(sp)
    8000551c:	6c5060ef          	jal	8000c3e0 <strcmp>
    80005520:	04051e63          	bnez	a0,8000557c <uart_litex_prop+0x8c>
    80005524:	01313423          	sd	s3,8(sp)
    80005528:	01043983          	ld	s3,16(s0)
    8000552c:	00008597          	auipc	a1,0x8
    80005530:	5f458593          	add	a1,a1,1524 # 8000db20 <softfloat_countLeadingZeros8+0x840>
    80005534:	00098513          	mv	a0,s3
    80005538:	6a9060ef          	jal	8000c3e0 <strcmp>
    8000553c:	02051463          	bnez	a0,80005564 <uart_litex_prop+0x74>
    80005540:	00813983          	ld	s3,8(sp)
    80005544:	00100793          	li	a5,1
    80005548:	00f4a023          	sw	a5,0(s1)
    8000554c:	02813083          	ld	ra,40(sp)
    80005550:	02013403          	ld	s0,32(sp)
    80005554:	01813483          	ld	s1,24(sp)
    80005558:	01013903          	ld	s2,16(sp)
    8000555c:	03010113          	add	sp,sp,48
    80005560:	00008067          	ret
    80005564:	00008597          	auipc	a1,0x8
    80005568:	5cc58593          	add	a1,a1,1484 # 8000db30 <softfloat_countLeadingZeros8+0x850>
    8000556c:	00098513          	mv	a0,s3
    80005570:	671060ef          	jal	8000c3e0 <strcmp>
    80005574:	fc0506e3          	beqz	a0,80005540 <uart_litex_prop+0x50>
    80005578:	00813983          	ld	s3,8(sp)
    8000557c:	00008597          	auipc	a1,0x8
    80005580:	54458593          	add	a1,a1,1348 # 8000dac0 <softfloat_countLeadingZeros8+0x7e0>
    80005584:	00090513          	mv	a0,s2
    80005588:	659060ef          	jal	8000c3e0 <strcmp>
    8000558c:	fc0510e3          	bnez	a0,8000554c <uart_litex_prop+0x5c>
    80005590:	00043783          	ld	a5,0(s0)
    80005594:	01043583          	ld	a1,16(s0)
    80005598:	02013403          	ld	s0,32(sp)
    8000559c:	02813083          	ld	ra,40(sp)
    800055a0:	01013903          	ld	s2,16(sp)
    800055a4:	0007b503          	ld	a0,0(a5)
    800055a8:	00848613          	add	a2,s1,8
    800055ac:	01813483          	ld	s1,24(sp)
    800055b0:	03010113          	add	sp,sp,48
    800055b4:	3b50106f          	j	80007168 <fdt_get_address>

00000000800055b8 <uart_litex_putchar>:
    800055b8:	0000e717          	auipc	a4,0xe
    800055bc:	b0873703          	ld	a4,-1272(a4) # 800130c0 <uart_litex>
    800055c0:	00472783          	lw	a5,4(a4)
    800055c4:	0017f793          	and	a5,a5,1
    800055c8:	fe079ce3          	bnez	a5,800055c0 <uart_litex_putchar+0x8>
    800055cc:	0005051b          	sext.w	a0,a0
    800055d0:	00a72023          	sw	a0,0(a4)
    800055d4:	00008067          	ret

00000000800055d8 <uart_litex_getchar>:
    800055d8:	0000e717          	auipc	a4,0xe
    800055dc:	ae873703          	ld	a4,-1304(a4) # 800130c0 <uart_litex>
    800055e0:	00872783          	lw	a5,8(a4)
    800055e4:	0017f793          	and	a5,a5,1
    800055e8:	00079a63          	bnez	a5,800055fc <uart_litex_getchar+0x24>
    800055ec:	00200793          	li	a5,2
    800055f0:	00072503          	lw	a0,0(a4)
    800055f4:	00f72823          	sw	a5,16(a4)
    800055f8:	00008067          	ret
    800055fc:	fff00513          	li	a0,-1
    80005600:	00008067          	ret

0000000080005604 <query_uart_litex>:
    80005604:	fb010113          	add	sp,sp,-80
    80005608:	00000797          	auipc	a5,0x0
    8000560c:	ed878793          	add	a5,a5,-296 # 800054e0 <uart_litex_open>
    80005610:	00f13c23          	sd	a5,24(sp)
    80005614:	00000797          	auipc	a5,0x0
    80005618:	edc78793          	add	a5,a5,-292 # 800054f0 <uart_litex_prop>
    8000561c:	02f13023          	sd	a5,32(sp)
    80005620:	00000797          	auipc	a5,0x0
    80005624:	e9478793          	add	a5,a5,-364 # 800054b4 <uart_litex_done>
    80005628:	02f13423          	sd	a5,40(sp)
    8000562c:	01810593          	add	a1,sp,24
    80005630:	00810793          	add	a5,sp,8
    80005634:	04113423          	sd	ra,72(sp)
    80005638:	02013823          	sd	zero,48(sp)
    8000563c:	02f13c23          	sd	a5,56(sp)
    80005640:	1ad010ef          	jal	80006fec <fdt_scan>
    80005644:	04813083          	ld	ra,72(sp)
    80005648:	05010113          	add	sp,sp,80
    8000564c:	00008067          	ret

0000000080005650 <finisher_done>:
    80005650:	0005a783          	lw	a5,0(a1)
    80005654:	00078e63          	beqz	a5,80005670 <finisher_done+0x20>
    80005658:	0085b783          	ld	a5,8(a1)
    8000565c:	00078a63          	beqz	a5,80005670 <finisher_done+0x20>
    80005660:	0000e717          	auipc	a4,0xe
    80005664:	a6870713          	add	a4,a4,-1432 # 800130c8 <finisher>
    80005668:	00073683          	ld	a3,0(a4)
    8000566c:	00068463          	beqz	a3,80005674 <finisher_done+0x24>
    80005670:	00008067          	ret
    80005674:	00f73023          	sd	a5,0(a4)
    80005678:	00008067          	ret

000000008000567c <finisher_open>:
    8000567c:	00058513          	mv	a0,a1
    80005680:	01000613          	li	a2,16
    80005684:	00000593          	li	a1,0
    80005688:	4c90606f          	j	8000c350 <memset>

000000008000568c <finisher_prop>:
    8000568c:	fe010113          	add	sp,sp,-32
    80005690:	01213023          	sd	s2,0(sp)
    80005694:	00853903          	ld	s2,8(a0)
    80005698:	00813823          	sd	s0,16(sp)
    8000569c:	00913423          	sd	s1,8(sp)
    800056a0:	00050413          	mv	s0,a0
    800056a4:	00058493          	mv	s1,a1
    800056a8:	00090513          	mv	a0,s2
    800056ac:	00008597          	auipc	a1,0x8
    800056b0:	3e458593          	add	a1,a1,996 # 8000da90 <softfloat_countLeadingZeros8+0x7b0>
    800056b4:	00113c23          	sd	ra,24(sp)
    800056b8:	529060ef          	jal	8000c3e0 <strcmp>
    800056bc:	02050863          	beqz	a0,800056ec <finisher_prop+0x60>
    800056c0:	00008597          	auipc	a1,0x8
    800056c4:	40058593          	add	a1,a1,1024 # 8000dac0 <softfloat_countLeadingZeros8+0x7e0>
    800056c8:	00090513          	mv	a0,s2
    800056cc:	515060ef          	jal	8000c3e0 <strcmp>
    800056d0:	04050863          	beqz	a0,80005720 <finisher_prop+0x94>
    800056d4:	01813083          	ld	ra,24(sp)
    800056d8:	01013403          	ld	s0,16(sp)
    800056dc:	00813483          	ld	s1,8(sp)
    800056e0:	00013903          	ld	s2,0(sp)
    800056e4:	02010113          	add	sp,sp,32
    800056e8:	00008067          	ret
    800056ec:	00008597          	auipc	a1,0x8
    800056f0:	45458593          	add	a1,a1,1108 # 8000db40 <softfloat_countLeadingZeros8+0x860>
    800056f4:	00040513          	mv	a0,s0
    800056f8:	3ad010ef          	jal	800072a4 <fdt_string_list_index>
    800056fc:	04054663          	bltz	a0,80005748 <finisher_prop+0xbc>
    80005700:	01813083          	ld	ra,24(sp)
    80005704:	01013403          	ld	s0,16(sp)
    80005708:	00100793          	li	a5,1
    8000570c:	00f4a023          	sw	a5,0(s1)
    80005710:	00013903          	ld	s2,0(sp)
    80005714:	00813483          	ld	s1,8(sp)
    80005718:	02010113          	add	sp,sp,32
    8000571c:	00008067          	ret
    80005720:	00043783          	ld	a5,0(s0)
    80005724:	01043583          	ld	a1,16(s0)
    80005728:	01013403          	ld	s0,16(sp)
    8000572c:	01813083          	ld	ra,24(sp)
    80005730:	00013903          	ld	s2,0(sp)
    80005734:	0007b503          	ld	a0,0(a5)
    80005738:	00848613          	add	a2,s1,8
    8000573c:	00813483          	ld	s1,8(sp)
    80005740:	02010113          	add	sp,sp,32
    80005744:	2250106f          	j	80007168 <fdt_get_address>
    80005748:	00843903          	ld	s2,8(s0)
    8000574c:	f75ff06f          	j	800056c0 <finisher_prop+0x34>

0000000080005750 <finisher_exit>:
    80005750:	0000e797          	auipc	a5,0xe
    80005754:	9787b783          	ld	a5,-1672(a5) # 800130c8 <finisher>
    80005758:	02078863          	beqz	a5,80005788 <finisher_exit+0x38>
    8000575c:	00051a63          	bnez	a0,80005770 <finisher_exit+0x20>
    80005760:	00005737          	lui	a4,0x5
    80005764:	55570713          	add	a4,a4,1365 # 5555 <_ftext-0x7fffaaab>
    80005768:	00e7a023          	sw	a4,0(a5)
    8000576c:	00008067          	ret
    80005770:	00003737          	lui	a4,0x3
    80005774:	0105151b          	sllw	a0,a0,0x10
    80005778:	33370713          	add	a4,a4,819 # 3333 <_ftext-0x7fffcccd>
    8000577c:	00e56533          	or	a0,a0,a4
    80005780:	0005051b          	sext.w	a0,a0
    80005784:	00a7a023          	sw	a0,0(a5)
    80005788:	00008067          	ret

000000008000578c <query_finisher>:
    8000578c:	fb010113          	add	sp,sp,-80
    80005790:	00000797          	auipc	a5,0x0
    80005794:	eec78793          	add	a5,a5,-276 # 8000567c <finisher_open>
    80005798:	00f13c23          	sd	a5,24(sp)
    8000579c:	00000797          	auipc	a5,0x0
    800057a0:	ef078793          	add	a5,a5,-272 # 8000568c <finisher_prop>
    800057a4:	02f13023          	sd	a5,32(sp)
    800057a8:	00000797          	auipc	a5,0x0
    800057ac:	ea878793          	add	a5,a5,-344 # 80005650 <finisher_done>
    800057b0:	02f13423          	sd	a5,40(sp)
    800057b4:	01810593          	add	a1,sp,24
    800057b8:	00810793          	add	a5,sp,8
    800057bc:	04113423          	sd	ra,72(sp)
    800057c0:	02013823          	sd	zero,48(sp)
    800057c4:	02f13c23          	sd	a5,56(sp)
    800057c8:	025010ef          	jal	80006fec <fdt_scan>
    800057cc:	04813083          	ld	ra,72(sp)
    800057d0:	05010113          	add	sp,sp,80
    800057d4:	00008067          	ret

00000000800057d8 <__riscv_flush_icache>:
    800057d8:	0000100f          	fence.i
    800057dc:	00008067          	ret

00000000800057e0 <hart_open>:
    800057e0:	0005b783          	ld	a5,0(a1)
    800057e4:	00078c63          	beqz	a5,800057fc <hart_open+0x1c>
    800057e8:	0105b783          	ld	a5,16(a1)
    800057ec:	00078463          	beqz	a5,800057f4 <hart_open+0x14>
    800057f0:	00008067          	ret
    800057f4:	0005bc23          	sd	zero,24(a1)
    800057f8:	00008067          	ret
    800057fc:	fff00793          	li	a5,-1
    80005800:	00f5a423          	sw	a5,8(a1)
    80005804:	fe5ff06f          	j	800057e8 <hart_open+0x8>

0000000080005808 <hart_close>:
    80005808:	0005b783          	ld	a5,0(a1)
    8000580c:	00a78a63          	beq	a5,a0,80005820 <hart_close+0x18>
    80005810:	0105b783          	ld	a5,16(a1)
    80005814:	00a78c63          	beq	a5,a0,8000582c <hart_close+0x24>
    80005818:	00000513          	li	a0,0
    8000581c:	00008067          	ret
    80005820:	0105b783          	ld	a5,16(a1)
    80005824:	0005b023          	sd	zero,0(a1)
    80005828:	fea798e3          	bne	a5,a0,80005818 <hart_close+0x10>
    8000582c:	0005b823          	sd	zero,16(a1)
    80005830:	00000513          	li	a0,0
    80005834:	00008067          	ret

0000000080005838 <clint_open>:
    80005838:	0005a023          	sw	zero,0(a1)
    8000583c:	0005b423          	sd	zero,8(a1)
    80005840:	0005b823          	sd	zero,16(a1)
    80005844:	00008067          	ret

0000000080005848 <plic_open>:
    80005848:	0005a023          	sw	zero,0(a1)
    8000584c:	0005b423          	sd	zero,8(a1)
    80005850:	0005b823          	sd	zero,16(a1)
    80005854:	00008067          	ret

0000000080005858 <plic_redact>:
    80005858:	0005a783          	lw	a5,0(a1)
    8000585c:	06078c63          	beqz	a5,800058d4 <plic_redact+0x7c>
    80005860:	0185a783          	lw	a5,24(a1)
    80005864:	00100713          	li	a4,1
    80005868:	00e5ae23          	sw	a4,28(a1)
    8000586c:	41f7d61b          	sraw	a2,a5,0x1f
    80005870:	01e6561b          	srlw	a2,a2,0x1e
    80005874:	00f6063b          	addw	a2,a2,a5
    80005878:	4026561b          	sraw	a2,a2,0x2
    8000587c:	00261613          	sll	a2,a2,0x2
    80005880:	0105b683          	ld	a3,16(a1)
    80005884:	04c05863          	blez	a2,800058d4 <plic_redact+0x7c>
    80005888:	ff010537          	lui	a0,0xff010
    8000588c:	00ff05b7          	lui	a1,0xff0
    80005890:	00c68633          	add	a2,a3,a2
    80005894:	f0050513          	add	a0,a0,-256 # ffffffffff00ff00 <_end+0xffffffff7effbf00>
    80005898:	0ff58593          	add	a1,a1,255 # ff00ff <_ftext-0x7f00ff01>
    8000589c:	000b0837          	lui	a6,0xb0
    800058a0:	fff00893          	li	a7,-1
    800058a4:	0046a703          	lw	a4,4(a3)
    800058a8:	0087179b          	sllw	a5,a4,0x8
    800058ac:	0087571b          	srlw	a4,a4,0x8
    800058b0:	00a7f7b3          	and	a5,a5,a0
    800058b4:	00b77733          	and	a4,a4,a1
    800058b8:	00e7e7b3          	or	a5,a5,a4
    800058bc:	0007879b          	sext.w	a5,a5
    800058c0:	01079463          	bne	a5,a6,800058c8 <plic_redact+0x70>
    800058c4:	0116a223          	sw	a7,4(a3)
    800058c8:	00868693          	add	a3,a3,8
    800058cc:	40d607b3          	sub	a5,a2,a3
    800058d0:	fcf04ae3          	bgtz	a5,800058a4 <plic_redact+0x4c>
    800058d4:	00008067          	ret

00000000800058d8 <compat_open>:
    800058d8:	0085a783          	lw	a5,8(a1)
    800058dc:	0017879b          	addw	a5,a5,1
    800058e0:	00f5a423          	sw	a5,8(a1)
    800058e4:	00008067          	ret

00000000800058e8 <compat_close>:
    800058e8:	0085a783          	lw	a5,8(a1)
    800058ec:	00c5a703          	lw	a4,12(a1)
    800058f0:	00000513          	li	a0,0
    800058f4:	fff7869b          	addw	a3,a5,-1
    800058f8:	00d5a423          	sw	a3,8(a1)
    800058fc:	00f70463          	beq	a4,a5,80005904 <compat_close+0x1c>
    80005900:	00008067          	ret
    80005904:	3e700793          	li	a5,999
    80005908:	00f5a623          	sw	a5,12(a1)
    8000590c:	fff00513          	li	a0,-1
    80005910:	00008067          	ret

0000000080005914 <chosen_close>:
    80005914:	0005b783          	ld	a5,0(a1)
    80005918:	00078463          	beqz	a5,80005920 <chosen_close+0xc>
    8000591c:	00a78663          	beq	a5,a0,80005928 <chosen_close+0x14>
    80005920:	00000513          	li	a0,0
    80005924:	00008067          	ret
    80005928:	0005b023          	sd	zero,0(a1)
    8000592c:	00000513          	li	a0,0
    80005930:	00008067          	ret

0000000080005934 <hart_filter_open>:
    80005934:	fff00793          	li	a5,-1
    80005938:	02079793          	sll	a5,a5,0x20
    8000593c:	0005b423          	sd	zero,8(a1)
    80005940:	0005b823          	sd	zero,16(a1)
    80005944:	00f5b023          	sd	a5,0(a1)
    80005948:	00008067          	ret

000000008000594c <mem_prop>:
    8000594c:	fe010113          	add	sp,sp,-32
    80005950:	01213023          	sd	s2,0(sp)
    80005954:	00853903          	ld	s2,8(a0)
    80005958:	00813823          	sd	s0,16(sp)
    8000595c:	00913423          	sd	s1,8(sp)
    80005960:	00050413          	mv	s0,a0
    80005964:	00058493          	mv	s1,a1
    80005968:	00090513          	mv	a0,s2
    8000596c:	00008597          	auipc	a1,0x8
    80005970:	1e458593          	add	a1,a1,484 # 8000db50 <softfloat_countLeadingZeros8+0x870>
    80005974:	00113c23          	sd	ra,24(sp)
    80005978:	269060ef          	jal	8000c3e0 <strcmp>
    8000597c:	02051c63          	bnez	a0,800059b4 <mem_prop+0x68>
    80005980:	01043503          	ld	a0,16(s0)
    80005984:	00008597          	auipc	a1,0x8
    80005988:	1dc58593          	add	a1,a1,476 # 8000db60 <softfloat_countLeadingZeros8+0x880>
    8000598c:	255060ef          	jal	8000c3e0 <strcmp>
    80005990:	02051263          	bnez	a0,800059b4 <mem_prop+0x68>
    80005994:	00100793          	li	a5,1
    80005998:	00f4a023          	sw	a5,0(s1)
    8000599c:	01813083          	ld	ra,24(sp)
    800059a0:	01013403          	ld	s0,16(sp)
    800059a4:	00813483          	ld	s1,8(sp)
    800059a8:	00013903          	ld	s2,0(sp)
    800059ac:	02010113          	add	sp,sp,32
    800059b0:	00008067          	ret
    800059b4:	00008597          	auipc	a1,0x8
    800059b8:	10c58593          	add	a1,a1,268 # 8000dac0 <softfloat_countLeadingZeros8+0x7e0>
    800059bc:	00090513          	mv	a0,s2
    800059c0:	221060ef          	jal	8000c3e0 <strcmp>
    800059c4:	fc051ce3          	bnez	a0,8000599c <mem_prop+0x50>
    800059c8:	01043703          	ld	a4,16(s0)
    800059cc:	01842783          	lw	a5,24(s0)
    800059d0:	01813083          	ld	ra,24(sp)
    800059d4:	01013403          	ld	s0,16(sp)
    800059d8:	00e4b423          	sd	a4,8(s1)
    800059dc:	00f4a823          	sw	a5,16(s1)
    800059e0:	00013903          	ld	s2,0(sp)
    800059e4:	00813483          	ld	s1,8(sp)
    800059e8:	02010113          	add	sp,sp,32
    800059ec:	00008067          	ret

00000000800059f0 <chosen_open>:
    800059f0:	fe010113          	add	sp,sp,-32
    800059f4:	00813823          	sd	s0,16(sp)
    800059f8:	00050413          	mv	s0,a0
    800059fc:	00853503          	ld	a0,8(a0)
    80005a00:	00913423          	sd	s1,8(sp)
    80005a04:	00058493          	mv	s1,a1
    80005a08:	00008597          	auipc	a1,0x8
    80005a0c:	16058593          	add	a1,a1,352 # 8000db68 <softfloat_countLeadingZeros8+0x888>
    80005a10:	00113c23          	sd	ra,24(sp)
    80005a14:	1cd060ef          	jal	8000c3e0 <strcmp>
    80005a18:	00051463          	bnez	a0,80005a20 <chosen_open+0x30>
    80005a1c:	0084b023          	sd	s0,0(s1)
    80005a20:	01813083          	ld	ra,24(sp)
    80005a24:	01013403          	ld	s0,16(sp)
    80005a28:	00813483          	ld	s1,8(sp)
    80005a2c:	02010113          	add	sp,sp,32
    80005a30:	00008067          	ret

0000000080005a34 <fdt_scan_helper>:
    80005a34:	00100793          	li	a5,1
    80005a38:	f5010113          	add	sp,sp,-176
    80005a3c:	02079793          	sll	a5,a5,0x20
    80005a40:	07713423          	sd	s7,104(sp)
    80005a44:	07813023          	sd	s8,96(sp)
    80005a48:	00278793          	add	a5,a5,2
    80005a4c:	00ff0c37          	lui	s8,0xff0
    80005a50:	ff010bb7          	lui	s7,0xff010
    80005a54:	0a813023          	sd	s0,160(sp)
    80005a58:	08913c23          	sd	s1,152(sp)
    80005a5c:	09213823          	sd	s2,144(sp)
    80005a60:	09313423          	sd	s3,136(sp)
    80005a64:	09413023          	sd	s4,128(sp)
    80005a68:	07513c23          	sd	s5,120(sp)
    80005a6c:	07613823          	sd	s6,112(sp)
    80005a70:	05913c23          	sd	s9,88(sp)
    80005a74:	0a113423          	sd	ra,168(sp)
    80005a78:	00060493          	mv	s1,a2
    80005a7c:	00050b13          	mv	s6,a0
    80005a80:	00058913          	mv	s2,a1
    80005a84:	00068413          	mv	s0,a3
    80005a88:	00c13423          	sd	a2,8(sp)
    80005a8c:	00f13c23          	sd	a5,24(sp)
    80005a90:	02c13023          	sd	a2,32(sp)
    80005a94:	00000c93          	li	s9,0
    80005a98:	0ffc0c13          	add	s8,s8,255 # ff00ff <_ftext-0x7f00ff01>
    80005a9c:	f00b8b93          	add	s7,s7,-256 # ffffffffff00ff00 <_end+0xffffffff7effbf00>
    80005aa0:	000309b7          	lui	s3,0x30
    80005aa4:	00300a13          	li	s4,3
    80005aa8:	00010ab7          	lui	s5,0x10
    80005aac:	000b2703          	lw	a4,0(s6)
    80005ab0:	0087579b          	srlw	a5,a4,0x8
    80005ab4:	0087171b          	sllw	a4,a4,0x8
    80005ab8:	01777733          	and	a4,a4,s7
    80005abc:	0187f7b3          	and	a5,a5,s8
    80005ac0:	00e7e7b3          	or	a5,a5,a4
    80005ac4:	0107971b          	sllw	a4,a5,0x10
    80005ac8:	0107d69b          	srlw	a3,a5,0x10
    80005acc:	00d76733          	or	a4,a4,a3
    80005ad0:	0007879b          	sext.w	a5,a5
    80005ad4:	0007071b          	sext.w	a4,a4
    80005ad8:	13378a63          	beq	a5,s3,80005c0c <fdt_scan_helper+0x1d8>
    80005adc:	02ea6a63          	bltu	s4,a4,80005b10 <fdt_scan_helper+0xdc>
    80005ae0:	09578c63          	beq	a5,s5,80005b78 <fdt_scan_helper+0x144>
    80005ae4:	00020737          	lui	a4,0x20
    80005ae8:	02e79c63          	bne	a5,a4,80005b20 <fdt_scan_helper+0xec>
    80005aec:	000c9e63          	bnez	s9,80005b08 <fdt_scan_helper+0xd4>
    80005af0:	00048c63          	beqz	s1,80005b08 <fdt_scan_helper+0xd4>
    80005af4:	01043783          	ld	a5,16(s0)
    80005af8:	00078863          	beqz	a5,80005b08 <fdt_scan_helper+0xd4>
    80005afc:	02043583          	ld	a1,32(s0)
    80005b00:	00048513          	mv	a0,s1
    80005b04:	000780e7          	jalr	a5
    80005b08:	004b0513          	add	a0,s6,4
    80005b0c:	01c0006f          	j	80005b28 <fdt_scan_helper+0xf4>
    80005b10:	00040737          	lui	a4,0x40
    80005b14:	00e79663          	bne	a5,a4,80005b20 <fdt_scan_helper+0xec>
    80005b18:	004b0b13          	add	s6,s6,4
    80005b1c:	f91ff06f          	j	80005aac <fdt_scan_helper+0x78>
    80005b20:	020c8e63          	beqz	s9,80005b5c <fdt_scan_helper+0x128>
    80005b24:	000b0513          	mv	a0,s6
    80005b28:	0a813083          	ld	ra,168(sp)
    80005b2c:	0a013403          	ld	s0,160(sp)
    80005b30:	09813483          	ld	s1,152(sp)
    80005b34:	09013903          	ld	s2,144(sp)
    80005b38:	08813983          	ld	s3,136(sp)
    80005b3c:	08013a03          	ld	s4,128(sp)
    80005b40:	07813a83          	ld	s5,120(sp)
    80005b44:	07013b03          	ld	s6,112(sp)
    80005b48:	06813b83          	ld	s7,104(sp)
    80005b4c:	06013c03          	ld	s8,96(sp)
    80005b50:	05813c83          	ld	s9,88(sp)
    80005b54:	0b010113          	add	sp,sp,176
    80005b58:	00008067          	ret
    80005b5c:	fc0484e3          	beqz	s1,80005b24 <fdt_scan_helper+0xf0>
    80005b60:	01043783          	ld	a5,16(s0)
    80005b64:	fc0780e3          	beqz	a5,80005b24 <fdt_scan_helper+0xf0>
    80005b68:	02043583          	ld	a1,32(s0)
    80005b6c:	00048513          	mv	a0,s1
    80005b70:	000780e7          	jalr	a5
    80005b74:	fb1ff06f          	j	80005b24 <fdt_scan_helper+0xf0>
    80005b78:	05a13823          	sd	s10,80(sp)
    80005b7c:	000c9e63          	bnez	s9,80005b98 <fdt_scan_helper+0x164>
    80005b80:	00048c63          	beqz	s1,80005b98 <fdt_scan_helper+0x164>
    80005b84:	01043783          	ld	a5,16(s0)
    80005b88:	00078863          	beqz	a5,80005b98 <fdt_scan_helper+0x164>
    80005b8c:	02043583          	ld	a1,32(s0)
    80005b90:	00048513          	mv	a0,s1
    80005b94:	000780e7          	jalr	a5
    80005b98:	00043783          	ld	a5,0(s0)
    80005b9c:	004b0c93          	add	s9,s6,4
    80005ba0:	01913823          	sd	s9,16(sp)
    80005ba4:	000c8513          	mv	a0,s9
    80005ba8:	00078a63          	beqz	a5,80005bbc <fdt_scan_helper+0x188>
    80005bac:	02043583          	ld	a1,32(s0)
    80005bb0:	00810513          	add	a0,sp,8
    80005bb4:	000780e7          	jalr	a5
    80005bb8:	01013503          	ld	a0,16(sp)
    80005bbc:	7fc060ef          	jal	8000c3b8 <strlen>
    80005bc0:	ffc57513          	and	a0,a0,-4
    80005bc4:	00850513          	add	a0,a0,8
    80005bc8:	00040693          	mv	a3,s0
    80005bcc:	00810613          	add	a2,sp,8
    80005bd0:	00090593          	mv	a1,s2
    80005bd4:	00ab0533          	add	a0,s6,a0
    80005bd8:	e5dff0ef          	jal	80005a34 <fdt_scan_helper>
    80005bdc:	01843783          	ld	a5,24(s0)
    80005be0:	00050d13          	mv	s10,a0
    80005be4:	00078c63          	beqz	a5,80005bfc <fdt_scan_helper+0x1c8>
    80005be8:	02043583          	ld	a1,32(s0)
    80005bec:	00810513          	add	a0,sp,8
    80005bf0:	000780e7          	jalr	a5
    80005bf4:	fff00793          	li	a5,-1
    80005bf8:	14f50863          	beq	a0,a5,80005d48 <fdt_scan_helper+0x314>
    80005bfc:	000d0b13          	mv	s6,s10
    80005c00:	00100c93          	li	s9,1
    80005c04:	05013d03          	ld	s10,80(sp)
    80005c08:	ea5ff06f          	j	80005aac <fdt_scan_helper+0x78>
    80005c0c:	05a13823          	sd	s10,80(sp)
    80005c10:	05b13423          	sd	s11,72(sp)
    80005c14:	140c9863          	bnez	s9,80005d64 <fdt_scan_helper+0x330>
    80005c18:	008b2783          	lw	a5,8(s6)
    80005c1c:	004b2683          	lw	a3,4(s6)
    80005c20:	00cb0613          	add	a2,s6,12
    80005c24:	0087971b          	sllw	a4,a5,0x8
    80005c28:	0087d79b          	srlw	a5,a5,0x8
    80005c2c:	0187f5b3          	and	a1,a5,s8
    80005c30:	01777733          	and	a4,a4,s7
    80005c34:	0086979b          	sllw	a5,a3,0x8
    80005c38:	00b76733          	or	a4,a4,a1
    80005c3c:	0086d69b          	srlw	a3,a3,0x8
    80005c40:	01071d9b          	sllw	s11,a4,0x10
    80005c44:	0177f7b3          	and	a5,a5,s7
    80005c48:	0186f6b3          	and	a3,a3,s8
    80005c4c:	0107571b          	srlw	a4,a4,0x10
    80005c50:	00d7e7b3          	or	a5,a5,a3
    80005c54:	00ededb3          	or	s11,s11,a4
    80005c58:	01079d1b          	sllw	s10,a5,0x10
    80005c5c:	020d9d93          	sll	s11,s11,0x20
    80005c60:	0107d79b          	srlw	a5,a5,0x10
    80005c64:	020ddd93          	srl	s11,s11,0x20
    80005c68:	00fd6d33          	or	s10,s10,a5
    80005c6c:	01b90db3          	add	s11,s2,s11
    80005c70:	000d0d1b          	sext.w	s10,s10
    80005c74:	03b13423          	sd	s11,40(sp)
    80005c78:	03a12c23          	sw	s10,56(sp)
    80005c7c:	02c13823          	sd	a2,48(sp)
    80005c80:	08048663          	beqz	s1,80005d0c <fdt_scan_helper+0x2d8>
    80005c84:	00008597          	auipc	a1,0x8
    80005c88:	f0c58593          	add	a1,a1,-244 # 8000db90 <softfloat_countLeadingZeros8+0x8b0>
    80005c8c:	000d8513          	mv	a0,s11
    80005c90:	750060ef          	jal	8000c3e0 <strcmp>
    80005c94:	02051663          	bnez	a0,80005cc0 <fdt_scan_helper+0x28c>
    80005c98:	00cb2703          	lw	a4,12(s6)
    80005c9c:	0087179b          	sllw	a5,a4,0x8
    80005ca0:	0087571b          	srlw	a4,a4,0x8
    80005ca4:	01877733          	and	a4,a4,s8
    80005ca8:	0177f7b3          	and	a5,a5,s7
    80005cac:	00e7e7b3          	or	a5,a5,a4
    80005cb0:	0107971b          	sllw	a4,a5,0x10
    80005cb4:	0107d79b          	srlw	a5,a5,0x10
    80005cb8:	00f767b3          	or	a5,a4,a5
    80005cbc:	00f4a823          	sw	a5,16(s1)
    80005cc0:	00008597          	auipc	a1,0x8
    80005cc4:	ee058593          	add	a1,a1,-288 # 8000dba0 <softfloat_countLeadingZeros8+0x8c0>
    80005cc8:	000d8513          	mv	a0,s11
    80005ccc:	714060ef          	jal	8000c3e0 <strcmp>
    80005cd0:	02051e63          	bnez	a0,80005d0c <fdt_scan_helper+0x2d8>
    80005cd4:	00cb2703          	lw	a4,12(s6)
    80005cd8:	ff010637          	lui	a2,0xff010
    80005cdc:	00ff06b7          	lui	a3,0xff0
    80005ce0:	0087179b          	sllw	a5,a4,0x8
    80005ce4:	f0060613          	add	a2,a2,-256 # ffffffffff00ff00 <_end+0xffffffff7effbf00>
    80005ce8:	0087571b          	srlw	a4,a4,0x8
    80005cec:	0ff68693          	add	a3,a3,255 # ff00ff <_ftext-0x7f00ff01>
    80005cf0:	00d77733          	and	a4,a4,a3
    80005cf4:	00c7f7b3          	and	a5,a5,a2
    80005cf8:	00e7e7b3          	or	a5,a5,a4
    80005cfc:	0107971b          	sllw	a4,a5,0x10
    80005d00:	0107d79b          	srlw	a5,a5,0x10
    80005d04:	00f767b3          	or	a5,a4,a5
    80005d08:	00f4aa23          	sw	a5,20(s1)
    80005d0c:	003d0d1b          	addw	s10,s10,3
    80005d10:	41fd579b          	sraw	a5,s10,0x1f
    80005d14:	01e7d79b          	srlw	a5,a5,0x1e
    80005d18:	01a787bb          	addw	a5,a5,s10
    80005d1c:	00843703          	ld	a4,8(s0)
    80005d20:	02043583          	ld	a1,32(s0)
    80005d24:	4027d79b          	sraw	a5,a5,0x2
    80005d28:	0037879b          	addw	a5,a5,3
    80005d2c:	00279793          	sll	a5,a5,0x2
    80005d30:	02010513          	add	a0,sp,32
    80005d34:	00fb0b33          	add	s6,s6,a5
    80005d38:	000700e7          	jalr	a4 # 40000 <_ftext-0x7ffc0000>
    80005d3c:	05013d03          	ld	s10,80(sp)
    80005d40:	04813d83          	ld	s11,72(sp)
    80005d44:	d69ff06f          	j	80005aac <fdt_scan_helper+0x78>
    80005d48:	ebab0ae3          	beq	s6,s10,80005bfc <fdt_scan_helper+0x1c8>
    80005d4c:	040007b7          	lui	a5,0x4000
    80005d50:	0080006f          	j	80005d58 <fdt_scan_helper+0x324>
    80005d54:	004c8c93          	add	s9,s9,4
    80005d58:	fefcae23          	sw	a5,-4(s9)
    80005d5c:	ff9d1ce3          	bne	s10,s9,80005d54 <fdt_scan_helper+0x320>
    80005d60:	e9dff06f          	j	80005bfc <fdt_scan_helper+0x1c8>
    80005d64:	00008517          	auipc	a0,0x8
    80005d68:	8bc50513          	add	a0,a0,-1860 # 8000d620 <softfloat_countLeadingZeros8+0x340>
    80005d6c:	00008697          	auipc	a3,0x8
    80005d70:	e0468693          	add	a3,a3,-508 # 8000db70 <softfloat_countLeadingZeros8+0x890>
    80005d74:	03a00613          	li	a2,58
    80005d78:	00008597          	auipc	a1,0x8
    80005d7c:	e0058593          	add	a1,a1,-512 # 8000db78 <softfloat_countLeadingZeros8+0x898>
    80005d80:	e1cfe0ef          	jal	8000439c <printm>
    80005d84:	00010537          	lui	a0,0x10
    80005d88:	fff50513          	add	a0,a0,-1 # ffff <_ftext-0x7fff0001>
    80005d8c:	ee8fe0ef          	jal	80004474 <poweroff>

0000000080005d90 <mem_open>:
    80005d90:	00058513          	mv	a0,a1
    80005d94:	01800613          	li	a2,24
    80005d98:	00000593          	li	a1,0
    80005d9c:	5b40606f          	j	8000c350 <memset>

0000000080005da0 <clint_done>:
    80005da0:	0005a783          	lw	a5,0(a1)
    80005da4:	0105b683          	ld	a3,16(a1)
    80005da8:	0185a603          	lw	a2,24(a1)
    80005dac:	10078863          	beqz	a5,80005ebc <clint_done+0x11c>
    80005db0:	ff010113          	add	sp,sp,-16
    80005db4:	00813023          	sd	s0,0(sp)
    80005db8:	00113423          	sd	ra,8(sp)
    80005dbc:	01010413          	add	s0,sp,16
    80005dc0:	0085b803          	ld	a6,8(a1)
    80005dc4:	14080a63          	beqz	a6,80005f18 <clint_done+0x178>
    80005dc8:	0e068c63          	beqz	a3,80005ec0 <clint_done+0x120>
    80005dcc:	00f67793          	and	a5,a2,15
    80005dd0:	0e079863          	bnez	a5,80005ec0 <clint_done+0x120>
    80005dd4:	01c5a783          	lw	a5,28(a1)
    80005dd8:	10079a63          	bnez	a5,80005eec <clint_done+0x14c>
    80005ddc:	41f6579b          	sraw	a5,a2,0x1f
    80005de0:	01e7d79b          	srlw	a5,a5,0x1e
    80005de4:	0000c737          	lui	a4,0xc
    80005de8:	00c787bb          	addw	a5,a5,a2
    80005dec:	ff870713          	add	a4,a4,-8 # bff8 <_ftext-0x7fff4008>
    80005df0:	00100613          	li	a2,1
    80005df4:	4027d79b          	sraw	a5,a5,0x2
    80005df8:	00e80733          	add	a4,a6,a4
    80005dfc:	00c5ae23          	sw	a2,28(a1)
    80005e00:	00279793          	sll	a5,a5,0x2
    80005e04:	0000d617          	auipc	a2,0xd
    80005e08:	28e63223          	sd	a4,644(a2) # 80013088 <mtime>
    80005e0c:	0af05063          	blez	a5,80005eac <clint_done+0x10c>
    80005e10:	00001537          	lui	a0,0x1
    80005e14:	f1402773          	csrr	a4,mhartid
    80005e18:	40e00733          	neg	a4,a4
    80005e1c:	fffff637          	lui	a2,0xfffff
    80005e20:	00a40533          	add	a0,s0,a0
    80005e24:	00c71713          	sll	a4,a4,0xc
    80005e28:	00c57533          	and	a0,a0,a2
    80005e2c:	ff010337          	lui	t1,0xff010
    80005e30:	00ff08b7          	lui	a7,0xff0
    80005e34:	fc070713          	add	a4,a4,-64
    80005e38:	00004eb7          	lui	t4,0x4
    80005e3c:	00f685b3          	add	a1,a3,a5
    80005e40:	0000de17          	auipc	t3,0xd
    80005e44:	298e2e03          	lw	t3,664(t3) # 800130d8 <hart_phandles>
    80005e48:	00000613          	li	a2,0
    80005e4c:	f0030313          	add	t1,t1,-256 # ffffffffff00ff00 <_end+0xffffffff7effbf00>
    80005e50:	0ff88893          	add	a7,a7,255 # ff00ff <_ftext-0x7f00ff01>
    80005e54:	00e50533          	add	a0,a0,a4
    80005e58:	01d80eb3          	add	t4,a6,t4
    80005e5c:	0006a703          	lw	a4,0(a3)
    80005e60:	0087179b          	sllw	a5,a4,0x8
    80005e64:	0087571b          	srlw	a4,a4,0x8
    80005e68:	01177733          	and	a4,a4,a7
    80005e6c:	0067f7b3          	and	a5,a5,t1
    80005e70:	00e7e7b3          	or	a5,a5,a4
    80005e74:	0107971b          	sllw	a4,a5,0x10
    80005e78:	0107d79b          	srlw	a5,a5,0x10
    80005e7c:	00f767b3          	or	a5,a4,a5
    80005e80:	0007879b          	sext.w	a5,a5
    80005e84:	01c79c63          	bne	a5,t3,80005e9c <clint_done+0xfc>
    80005e88:	0016179b          	sllw	a5,a2,0x1
    80005e8c:	01060733          	add	a4,a2,a6
    80005e90:	01d787b3          	add	a5,a5,t4
    80005e94:	00e53023          	sd	a4,0(a0) # 1000 <_ftext-0x7ffff000>
    80005e98:	00f53823          	sd	a5,16(a0)
    80005e9c:	01068693          	add	a3,a3,16
    80005ea0:	40d587b3          	sub	a5,a1,a3
    80005ea4:	0046061b          	addw	a2,a2,4 # fffffffffffff004 <_end+0xffffffff7ffeb004>
    80005ea8:	faf04ae3          	bgtz	a5,80005e5c <clint_done+0xbc>
    80005eac:	00813083          	ld	ra,8(sp)
    80005eb0:	00013403          	ld	s0,0(sp)
    80005eb4:	01010113          	add	sp,sp,16
    80005eb8:	00008067          	ret
    80005ebc:	00008067          	ret
    80005ec0:	00007517          	auipc	a0,0x7
    80005ec4:	76050513          	add	a0,a0,1888 # 8000d620 <softfloat_countLeadingZeros8+0x340>
    80005ec8:	00008697          	auipc	a3,0x8
    80005ecc:	cf868693          	add	a3,a3,-776 # 8000dbc0 <softfloat_countLeadingZeros8+0x8e0>
    80005ed0:	15800613          	li	a2,344
    80005ed4:	00008597          	auipc	a1,0x8
    80005ed8:	ca458593          	add	a1,a1,-860 # 8000db78 <softfloat_countLeadingZeros8+0x898>
    80005edc:	cc0fe0ef          	jal	8000439c <printm>
    80005ee0:	00010537          	lui	a0,0x10
    80005ee4:	fff50513          	add	a0,a0,-1 # ffff <_ftext-0x7fff0001>
    80005ee8:	d8cfe0ef          	jal	80004474 <poweroff>
    80005eec:	00007517          	auipc	a0,0x7
    80005ef0:	73450513          	add	a0,a0,1844 # 8000d620 <softfloat_countLeadingZeros8+0x340>
    80005ef4:	00008697          	auipc	a3,0x8
    80005ef8:	cfc68693          	add	a3,a3,-772 # 8000dbf0 <softfloat_countLeadingZeros8+0x910>
    80005efc:	15900613          	li	a2,345
    80005f00:	00008597          	auipc	a1,0x8
    80005f04:	c7858593          	add	a1,a1,-904 # 8000db78 <softfloat_countLeadingZeros8+0x898>
    80005f08:	c94fe0ef          	jal	8000439c <printm>
    80005f0c:	00010537          	lui	a0,0x10
    80005f10:	fff50513          	add	a0,a0,-1 # ffff <_ftext-0x7fff0001>
    80005f14:	d60fe0ef          	jal	80004474 <poweroff>
    80005f18:	00007517          	auipc	a0,0x7
    80005f1c:	70850513          	add	a0,a0,1800 # 8000d620 <softfloat_countLeadingZeros8+0x340>
    80005f20:	00008697          	auipc	a3,0x8
    80005f24:	c9068693          	add	a3,a3,-880 # 8000dbb0 <softfloat_countLeadingZeros8+0x8d0>
    80005f28:	15700613          	li	a2,343
    80005f2c:	00008597          	auipc	a1,0x8
    80005f30:	c4c58593          	add	a1,a1,-948 # 8000db78 <softfloat_countLeadingZeros8+0x898>
    80005f34:	c68fe0ef          	jal	8000439c <printm>
    80005f38:	00010537          	lui	a0,0x10
    80005f3c:	fff50513          	add	a0,a0,-1 # ffff <_ftext-0x7fff0001>
    80005f40:	d34fe0ef          	jal	80004474 <poweroff>

0000000080005f44 <plic_done>:
    80005f44:	fa010113          	add	sp,sp,-96
    80005f48:	04813823          	sd	s0,80(sp)
    80005f4c:	04913423          	sd	s1,72(sp)
    80005f50:	04113c23          	sd	ra,88(sp)
    80005f54:	06010413          	add	s0,sp,96
    80005f58:	0005a703          	lw	a4,0(a1)
    80005f5c:	0105b483          	ld	s1,16(a1)
    80005f60:	0185a783          	lw	a5,24(a1)
    80005f64:	12070863          	beqz	a4,80006094 <plic_done+0x150>
    80005f68:	0085b683          	ld	a3,8(a1)
    80005f6c:	03513423          	sd	s5,40(sp)
    80005f70:	00058a93          	mv	s5,a1
    80005f74:	26068e63          	beqz	a3,800061f0 <plic_done+0x2ac>
    80005f78:	1c048e63          	beqz	s1,80006154 <plic_done+0x210>
    80005f7c:	0077f713          	and	a4,a5,7
    80005f80:	1c071a63          	bnez	a4,80006154 <plic_done+0x210>
    80005f84:	0205a703          	lw	a4,32(a1)
    80005f88:	3ff00613          	li	a2,1023
    80005f8c:	22e66c63          	bltu	a2,a4,800061c4 <plic_done+0x280>
    80005f90:	01c5a603          	lw	a2,28(a1)
    80005f94:	05213023          	sd	s2,64(sp)
    80005f98:	20061263          	bnez	a2,8000619c <plic_done+0x258>
    80005f9c:	41f7d91b          	sraw	s2,a5,0x1f
    80005fa0:	01e9591b          	srlw	s2,s2,0x1e
    80005fa4:	00f9093b          	addw	s2,s2,a5
    80005fa8:	4029591b          	sraw	s2,s2,0x2
    80005fac:	00100793          	li	a5,1
    80005fb0:	00f5ae23          	sw	a5,28(a1)
    80005fb4:	00291913          	sll	s2,s2,0x2
    80005fb8:	0000d797          	auipc	a5,0xd
    80005fbc:	0cd7b423          	sd	a3,200(a5) # 80013080 <plic_priorities>
    80005fc0:	0000d797          	auipc	a5,0xd
    80005fc4:	0ae7bc23          	sd	a4,184(a5) # 80013078 <plic_ndevs>
    80005fc8:	19205063          	blez	s2,80006148 <plic_done+0x204>
    80005fcc:	01813823          	sd	s8,16(sp)
    80005fd0:	f14027f3          	csrr	a5,mhartid
    80005fd4:	00001c37          	lui	s8,0x1
    80005fd8:	40f007b3          	neg	a5,a5
    80005fdc:	01840c33          	add	s8,s0,s8
    80005fe0:	00c79793          	sll	a5,a5,0xc
    80005fe4:	fffff737          	lui	a4,0xfffff
    80005fe8:	03613023          	sd	s6,32(sp)
    80005fec:	01713c23          	sd	s7,24(sp)
    80005ff0:	00ff0b37          	lui	s6,0xff0
    80005ff4:	ff010bb7          	lui	s7,0xff010
    80005ff8:	00ec7c33          	and	s8,s8,a4
    80005ffc:	fc078793          	add	a5,a5,-64
    80006000:	03313c23          	sd	s3,56(sp)
    80006004:	03413823          	sd	s4,48(sp)
    80006008:	01913423          	sd	s9,8(sp)
    8000600c:	01248933          	add	s2,s1,s2
    80006010:	00000a13          	li	s4,0
    80006014:	00000993          	li	s3,0
    80006018:	0000dc97          	auipc	s9,0xd
    8000601c:	0c0c8c93          	add	s9,s9,192 # 800130d8 <hart_phandles>
    80006020:	f00b8b93          	add	s7,s7,-256 # ffffffffff00ff00 <_end+0xffffffff7effbf00>
    80006024:	0ffb0b13          	add	s6,s6,255 # ff00ff <_ftext-0x7f00ff01>
    80006028:	00fc0c33          	add	s8,s8,a5
    8000602c:	0004a703          	lw	a4,0(s1)
    80006030:	000ca683          	lw	a3,0(s9)
    80006034:	0087179b          	sllw	a5,a4,0x8
    80006038:	0087571b          	srlw	a4,a4,0x8
    8000603c:	01677733          	and	a4,a4,s6
    80006040:	0177f7b3          	and	a5,a5,s7
    80006044:	00e7e7b3          	or	a5,a5,a4
    80006048:	0107971b          	sllw	a4,a5,0x10
    8000604c:	0107d79b          	srlw	a5,a5,0x10
    80006050:	00f767b3          	or	a5,a4,a5
    80006054:	0007879b          	sext.w	a5,a5
    80006058:	04f68863          	beq	a3,a5,800060a8 <plic_done+0x164>
    8000605c:	00848493          	add	s1,s1,8
    80006060:	00001737          	lui	a4,0x1
    80006064:	409907b3          	sub	a5,s2,s1
    80006068:	0809899b          	addw	s3,s3,128 # 30080 <_ftext-0x7ffcff80>
    8000606c:	01470a3b          	addw	s4,a4,s4
    80006070:	faf04ee3          	bgtz	a5,8000602c <plic_done+0xe8>
    80006074:	04013903          	ld	s2,64(sp)
    80006078:	03813983          	ld	s3,56(sp)
    8000607c:	03013a03          	ld	s4,48(sp)
    80006080:	02813a83          	ld	s5,40(sp)
    80006084:	02013b03          	ld	s6,32(sp)
    80006088:	01813b83          	ld	s7,24(sp)
    8000608c:	01013c03          	ld	s8,16(sp)
    80006090:	00813c83          	ld	s9,8(sp)
    80006094:	05813083          	ld	ra,88(sp)
    80006098:	05013403          	ld	s0,80(sp)
    8000609c:	04813483          	ld	s1,72(sp)
    800060a0:	06010113          	add	sp,sp,96
    800060a4:	00008067          	ret
    800060a8:	0044a703          	lw	a4,4(s1)
    800060ac:	000b06b7          	lui	a3,0xb0
    800060b0:	0087179b          	sllw	a5,a4,0x8
    800060b4:	0087571b          	srlw	a4,a4,0x8
    800060b8:	0177f7b3          	and	a5,a5,s7
    800060bc:	01677733          	and	a4,a4,s6
    800060c0:	00e7e7b3          	or	a5,a5,a4
    800060c4:	0007879b          	sext.w	a5,a5
    800060c8:	02d78a63          	beq	a5,a3,800060fc <plic_done+0x1b8>
    800060cc:	00090737          	lui	a4,0x90
    800060d0:	04e79a63          	bne	a5,a4,80006124 <plic_done+0x1e0>
    800060d4:	008ab783          	ld	a5,8(s5) # 10008 <_ftext-0x7ffefff8>
    800060d8:	00002737          	lui	a4,0x2
    800060dc:	002006b7          	lui	a3,0x200
    800060e0:	00e78733          	add	a4,a5,a4
    800060e4:	00d787b3          	add	a5,a5,a3
    800060e8:	01370733          	add	a4,a4,s3
    800060ec:	014787b3          	add	a5,a5,s4
    800060f0:	02ec3823          	sd	a4,48(s8) # 1030 <_ftext-0x7fffefd0>
    800060f4:	02fc3423          	sd	a5,40(s8)
    800060f8:	f65ff06f          	j	8000605c <plic_done+0x118>
    800060fc:	008ab783          	ld	a5,8(s5)
    80006100:	00002737          	lui	a4,0x2
    80006104:	002006b7          	lui	a3,0x200
    80006108:	00e78733          	add	a4,a5,a4
    8000610c:	00d787b3          	add	a5,a5,a3
    80006110:	01370733          	add	a4,a4,s3
    80006114:	014787b3          	add	a5,a5,s4
    80006118:	02ec3023          	sd	a4,32(s8)
    8000611c:	00fc3c23          	sd	a5,24(s8)
    80006120:	f3dff06f          	j	8000605c <plic_done+0x118>
    80006124:	0107961b          	sllw	a2,a5,0x10
    80006128:	0107d79b          	srlw	a5,a5,0x10
    8000612c:	00f66633          	or	a2,a2,a5
    80006130:	0006061b          	sext.w	a2,a2
    80006134:	00000593          	li	a1,0
    80006138:	00008517          	auipc	a0,0x8
    8000613c:	b2050513          	add	a0,a0,-1248 # 8000dc58 <softfloat_countLeadingZeros8+0x978>
    80006140:	a5cfe0ef          	jal	8000439c <printm>
    80006144:	f19ff06f          	j	8000605c <plic_done+0x118>
    80006148:	04013903          	ld	s2,64(sp)
    8000614c:	02813a83          	ld	s5,40(sp)
    80006150:	f45ff06f          	j	80006094 <plic_done+0x150>
    80006154:	05213023          	sd	s2,64(sp)
    80006158:	03313c23          	sd	s3,56(sp)
    8000615c:	03413823          	sd	s4,48(sp)
    80006160:	03613023          	sd	s6,32(sp)
    80006164:	01713c23          	sd	s7,24(sp)
    80006168:	01813823          	sd	s8,16(sp)
    8000616c:	01913423          	sd	s9,8(sp)
    80006170:	00008697          	auipc	a3,0x8
    80006174:	a9068693          	add	a3,a3,-1392 # 8000dc00 <softfloat_countLeadingZeros8+0x920>
    80006178:	1ad00613          	li	a2,429
    8000617c:	00007517          	auipc	a0,0x7
    80006180:	4a450513          	add	a0,a0,1188 # 8000d620 <softfloat_countLeadingZeros8+0x340>
    80006184:	00008597          	auipc	a1,0x8
    80006188:	9f458593          	add	a1,a1,-1548 # 8000db78 <softfloat_countLeadingZeros8+0x898>
    8000618c:	a10fe0ef          	jal	8000439c <printm>
    80006190:	00010537          	lui	a0,0x10
    80006194:	fff50513          	add	a0,a0,-1 # ffff <_ftext-0x7fff0001>
    80006198:	adcfe0ef          	jal	80004474 <poweroff>
    8000619c:	03313c23          	sd	s3,56(sp)
    800061a0:	03413823          	sd	s4,48(sp)
    800061a4:	03613023          	sd	s6,32(sp)
    800061a8:	01713c23          	sd	s7,24(sp)
    800061ac:	01813823          	sd	s8,16(sp)
    800061b0:	01913423          	sd	s9,8(sp)
    800061b4:	00008697          	auipc	a3,0x8
    800061b8:	a3c68693          	add	a3,a3,-1476 # 8000dbf0 <softfloat_countLeadingZeros8+0x910>
    800061bc:	1af00613          	li	a2,431
    800061c0:	fbdff06f          	j	8000617c <plic_done+0x238>
    800061c4:	05213023          	sd	s2,64(sp)
    800061c8:	03313c23          	sd	s3,56(sp)
    800061cc:	03413823          	sd	s4,48(sp)
    800061d0:	03613023          	sd	s6,32(sp)
    800061d4:	01713c23          	sd	s7,24(sp)
    800061d8:	01813823          	sd	s8,16(sp)
    800061dc:	01913423          	sd	s9,8(sp)
    800061e0:	00008697          	auipc	a3,0x8
    800061e4:	a5068693          	add	a3,a3,-1456 # 8000dc30 <softfloat_countLeadingZeros8+0x950>
    800061e8:	1ae00613          	li	a2,430
    800061ec:	f91ff06f          	j	8000617c <plic_done+0x238>
    800061f0:	05213023          	sd	s2,64(sp)
    800061f4:	03313c23          	sd	s3,56(sp)
    800061f8:	03413823          	sd	s4,48(sp)
    800061fc:	03613023          	sd	s6,32(sp)
    80006200:	01713c23          	sd	s7,24(sp)
    80006204:	01813823          	sd	s8,16(sp)
    80006208:	01913423          	sd	s9,8(sp)
    8000620c:	00008697          	auipc	a3,0x8
    80006210:	9a468693          	add	a3,a3,-1628 # 8000dbb0 <softfloat_countLeadingZeros8+0x8d0>
    80006214:	1ac00613          	li	a2,428
    80006218:	f65ff06f          	j	8000617c <plic_done+0x238>

000000008000621c <hart_done>:
    8000621c:	0005b783          	ld	a5,0(a1)
    80006220:	ff010113          	add	sp,sp,-16
    80006224:	00113423          	sd	ra,8(sp)
    80006228:	00a78c63          	beq	a5,a0,80006240 <hart_done+0x24>
    8000622c:	0105b703          	ld	a4,16(a1)
    80006230:	04a70263          	beq	a4,a0,80006274 <hart_done+0x58>
    80006234:	00813083          	ld	ra,8(sp)
    80006238:	01010113          	add	sp,sp,16
    8000623c:	00008067          	ret
    80006240:	0085a703          	lw	a4,8(a1)
    80006244:	00008697          	auipc	a3,0x8
    80006248:	a4468693          	add	a3,a3,-1468 # 8000dc88 <softfloat_countLeadingZeros8+0x9a8>
    8000624c:	10600613          	li	a2,262
    80006250:	fc075ee3          	bgez	a4,8000622c <hart_done+0x10>
    80006254:	00007517          	auipc	a0,0x7
    80006258:	3cc50513          	add	a0,a0,972 # 8000d620 <softfloat_countLeadingZeros8+0x340>
    8000625c:	00008597          	auipc	a1,0x8
    80006260:	91c58593          	add	a1,a1,-1764 # 8000db78 <softfloat_countLeadingZeros8+0x898>
    80006264:	938fe0ef          	jal	8000439c <printm>
    80006268:	00010537          	lui	a0,0x10
    8000626c:	fff50513          	add	a0,a0,-1 # ffff <_ftext-0x7fff0001>
    80006270:	a04fe0ef          	jal	80004474 <poweroff>
    80006274:	fc0780e3          	beqz	a5,80006234 <hart_done+0x18>
    80006278:	01c5a783          	lw	a5,28(a1)
    8000627c:	04078663          	beqz	a5,800062c8 <hart_done+0xac>
    80006280:	0185a683          	lw	a3,24(a1)
    80006284:	00100713          	li	a4,1
    80006288:	04e69863          	bne	a3,a4,800062d8 <hart_done+0xbc>
    8000628c:	0085a503          	lw	a0,8(a1)
    80006290:	faa042e3          	bgtz	a0,80006234 <hart_done+0x18>
    80006294:	0000d617          	auipc	a2,0xd
    80006298:	e3c60613          	add	a2,a2,-452 # 800130d0 <hart_mask>
    8000629c:	00063703          	ld	a4,0(a2)
    800062a0:	00251593          	sll	a1,a0,0x2
    800062a4:	0000d697          	auipc	a3,0xd
    800062a8:	e3468693          	add	a3,a3,-460 # 800130d8 <hart_phandles>
    800062ac:	00813083          	ld	ra,8(sp)
    800062b0:	00b686b3          	add	a3,a3,a1
    800062b4:	00176713          	or	a4,a4,1
    800062b8:	00f6a023          	sw	a5,0(a3)
    800062bc:	00e63023          	sd	a4,0(a2)
    800062c0:	01010113          	add	sp,sp,16
    800062c4:	e70fe06f          	j	80004934 <hls_init>
    800062c8:	00008697          	auipc	a3,0x8
    800062cc:	9d068693          	add	a3,a3,-1584 # 8000dc98 <softfloat_countLeadingZeros8+0x9b8>
    800062d0:	10a00613          	li	a2,266
    800062d4:	f81ff06f          	j	80006254 <hart_done+0x38>
    800062d8:	00008697          	auipc	a3,0x8
    800062dc:	9d868693          	add	a3,a3,-1576 # 8000dcb0 <softfloat_countLeadingZeros8+0x9d0>
    800062e0:	10b00613          	li	a2,267
    800062e4:	f71ff06f          	j	80006254 <hart_done+0x38>

00000000800062e8 <hart_filter_done>:
    800062e8:	0005a783          	lw	a5,0(a1)
    800062ec:	10078463          	beqz	a5,800063f4 <hart_filter_done+0x10c>
    800062f0:	fe010113          	add	sp,sp,-32
    800062f4:	00913423          	sd	s1,8(sp)
    800062f8:	0085b483          	ld	s1,8(a1)
    800062fc:	00813823          	sd	s0,16(sp)
    80006300:	00113c23          	sd	ra,24(sp)
    80006304:	01213023          	sd	s2,0(sp)
    80006308:	00058413          	mv	s0,a1
    8000630c:	0e048663          	beqz	s1,800063f8 <hart_filter_done+0x110>
    80006310:	0045a783          	lw	a5,4(a1)
    80006314:	1007c863          	bltz	a5,80006424 <hart_filter_done+0x13c>
    80006318:	0105b903          	ld	s2,16(a1)
    8000631c:	04090c63          	beqz	s2,80006374 <hart_filter_done+0x8c>
    80006320:	00008597          	auipc	a1,0x8
    80006324:	9d058593          	add	a1,a1,-1584 # 8000dcf0 <softfloat_countLeadingZeros8+0xa10>
    80006328:	00048513          	mv	a0,s1
    8000632c:	0b4060ef          	jal	8000c3e0 <strcmp>
    80006330:	04051263          	bnez	a0,80006374 <hart_filter_done+0x8c>
    80006334:	00008597          	auipc	a1,0x8
    80006338:	9c458593          	add	a1,a1,-1596 # 8000dcf8 <softfloat_countLeadingZeros8+0xa18>
    8000633c:	00090513          	mv	a0,s2
    80006340:	0a0060ef          	jal	8000c3e0 <strcmp>
    80006344:	08050c63          	beqz	a0,800063dc <hart_filter_done+0xf4>
    80006348:	00008597          	auipc	a1,0x8
    8000634c:	9c058593          	add	a1,a1,-1600 # 8000dd08 <softfloat_countLeadingZeros8+0xa28>
    80006350:	00090513          	mv	a0,s2
    80006354:	08c060ef          	jal	8000c3e0 <strcmp>
    80006358:	08050263          	beqz	a0,800063dc <hart_filter_done+0xf4>
    8000635c:	00048593          	mv	a1,s1
    80006360:	00090613          	mv	a2,s2
    80006364:	00008517          	auipc	a0,0x8
    80006368:	9b450513          	add	a0,a0,-1612 # 8000dd18 <softfloat_countLeadingZeros8+0xa38>
    8000636c:	830fe0ef          	jal	8000439c <printm>
    80006370:	00843483          	ld	s1,8(s0)
    80006374:	00008797          	auipc	a5,0x8
    80006378:	9ec78793          	add	a5,a5,-1556 # 8000dd60 <softfloat_countLeadingZeros8+0xa80>
    8000637c:	0037c603          	lbu	a2,3(a5)
    80006380:	0047c683          	lbu	a3,4(a5)
    80006384:	0057c703          	lbu	a4,5(a5)
    80006388:	0007c803          	lbu	a6,0(a5)
    8000638c:	0017c503          	lbu	a0,1(a5)
    80006390:	0027c583          	lbu	a1,2(a5)
    80006394:	0067c783          	lbu	a5,6(a5)
    80006398:	00e482a3          	sb	a4,5(s1)
    8000639c:	01048023          	sb	a6,0(s1)
    800063a0:	00a480a3          	sb	a0,1(s1)
    800063a4:	00b48123          	sb	a1,2(s1)
    800063a8:	00c481a3          	sb	a2,3(s1)
    800063ac:	00d48223          	sb	a3,4(s1)
    800063b0:	00f48323          	sb	a5,6(s1)
    800063b4:	00843783          	ld	a5,8(s0)
    800063b8:	01843683          	ld	a3,24(s0)
    800063bc:	07000737          	lui	a4,0x7000
    800063c0:	fee7ac23          	sw	a4,-8(a5)
    800063c4:	00442603          	lw	a2,4(s0)
    800063c8:	0006b783          	ld	a5,0(a3)
    800063cc:	00100713          	li	a4,1
    800063d0:	00c7173b          	sllw	a4,a4,a2
    800063d4:	00e7e7b3          	or	a5,a5,a4
    800063d8:	00f6b023          	sd	a5,0(a3)
    800063dc:	01813083          	ld	ra,24(sp)
    800063e0:	01013403          	ld	s0,16(sp)
    800063e4:	00813483          	ld	s1,8(sp)
    800063e8:	00013903          	ld	s2,0(sp)
    800063ec:	02010113          	add	sp,sp,32
    800063f0:	00008067          	ret
    800063f4:	00008067          	ret
    800063f8:	00007517          	auipc	a0,0x7
    800063fc:	22850513          	add	a0,a0,552 # 8000d620 <softfloat_countLeadingZeros8+0x340>
    80006400:	00008697          	auipc	a3,0x8
    80006404:	8c868693          	add	a3,a3,-1848 # 8000dcc8 <softfloat_countLeadingZeros8+0x9e8>
    80006408:	2a300613          	li	a2,675
    8000640c:	00007597          	auipc	a1,0x7
    80006410:	76c58593          	add	a1,a1,1900 # 8000db78 <softfloat_countLeadingZeros8+0x898>
    80006414:	f89fd0ef          	jal	8000439c <printm>
    80006418:	00010537          	lui	a0,0x10
    8000641c:	fff50513          	add	a0,a0,-1 # ffff <_ftext-0x7fff0001>
    80006420:	854fe0ef          	jal	80004474 <poweroff>
    80006424:	00007517          	auipc	a0,0x7
    80006428:	1fc50513          	add	a0,a0,508 # 8000d620 <softfloat_countLeadingZeros8+0x340>
    8000642c:	00008697          	auipc	a3,0x8
    80006430:	8ac68693          	add	a3,a3,-1876 # 8000dcd8 <softfloat_countLeadingZeros8+0x9f8>
    80006434:	2a400613          	li	a2,676
    80006438:	00007597          	auipc	a1,0x7
    8000643c:	74058593          	add	a1,a1,1856 # 8000db78 <softfloat_countLeadingZeros8+0x898>
    80006440:	f5dfd0ef          	jal	8000439c <printm>
    80006444:	00010537          	lui	a0,0x10
    80006448:	fff50513          	add	a0,a0,-1 # ffff <_ftext-0x7fff0001>
    8000644c:	828fe0ef          	jal	80004474 <poweroff>

0000000080006450 <mem_done>:
    80006450:	0005a783          	lw	a5,0(a1)
    80006454:	0085b683          	ld	a3,8(a1)
    80006458:	0105a703          	lw	a4,16(a1)
    8000645c:	16078263          	beqz	a5,800065c0 <mem_done+0x170>
    80006460:	ff010113          	add	sp,sp,-16
    80006464:	00113423          	sd	ra,8(sp)
    80006468:	18068a63          	beqz	a3,800065fc <mem_done+0x1ac>
    8000646c:	00377793          	and	a5,a4,3
    80006470:	18079663          	bnez	a5,800065fc <mem_done+0x1ac>
    80006474:	41f7579b          	sraw	a5,a4,0x1f
    80006478:	01e7d79b          	srlw	a5,a5,0x1e
    8000647c:	00e787bb          	addw	a5,a5,a4
    80006480:	4027d79b          	sraw	a5,a5,0x2
    80006484:	00279793          	sll	a5,a5,0x2
    80006488:	00f68e33          	add	t3,a3,a5
    8000648c:	10f05663          	blez	a5,80006598 <mem_done+0x148>
    80006490:	00053783          	ld	a5,0(a0)
    80006494:	00ff05b7          	lui	a1,0xff0
    80006498:	ff010537          	lui	a0,0xff010
    8000649c:	0107ae83          	lw	t4,16(a5)
    800064a0:	0147af83          	lw	t6,20(a5)
    800064a4:	00813023          	sd	s0,0(sp)
    800064a8:	fffe831b          	addw	t1,t4,-1 # 3fff <_ftext-0x7fffc001>
    800064ac:	ffff889b          	addw	a7,t6,-1
    800064b0:	02031793          	sll	a5,t1,0x20
    800064b4:	01e7d313          	srl	t1,a5,0x1e
    800064b8:	02089793          	sll	a5,a7,0x20
    800064bc:	01e7d893          	srl	a7,a5,0x1e
    800064c0:	00000817          	auipc	a6,0x0
    800064c4:	f9080813          	add	a6,a6,-112 # 80006450 <mem_done>
    800064c8:	00430313          	add	t1,t1,4
    800064cc:	00488893          	add	a7,a7,4
    800064d0:	00000293          	li	t0,0
    800064d4:	f0050513          	add	a0,a0,-256 # ffffffffff00ff00 <_end+0xffffffff7effbf00>
    800064d8:	0ff58593          	add	a1,a1,255 # ff00ff <_ftext-0x7f00ff01>
    800064dc:	0dd05663          	blez	t4,800065a8 <mem_done+0x158>
    800064e0:	00668633          	add	a2,a3,t1
    800064e4:	00000393          	li	t2,0
    800064e8:	0006a703          	lw	a4,0(a3)
    800064ec:	02039393          	sll	t2,t2,0x20
    800064f0:	00468693          	add	a3,a3,4
    800064f4:	0087179b          	sllw	a5,a4,0x8
    800064f8:	0087571b          	srlw	a4,a4,0x8
    800064fc:	00b77733          	and	a4,a4,a1
    80006500:	00a7f7b3          	and	a5,a5,a0
    80006504:	00e7e7b3          	or	a5,a5,a4
    80006508:	0107971b          	sllw	a4,a5,0x10
    8000650c:	0107d79b          	srlw	a5,a5,0x10
    80006510:	00f767b3          	or	a5,a4,a5
    80006514:	02079793          	sll	a5,a5,0x20
    80006518:	0207d793          	srl	a5,a5,0x20
    8000651c:	007783b3          	add	t2,a5,t2
    80006520:	fcc694e3          	bne	a3,a2,800064e8 <mem_done+0x98>
    80006524:	09f05a63          	blez	t6,800065b8 <mem_done+0x168>
    80006528:	011606b3          	add	a3,a2,a7
    8000652c:	00000793          	li	a5,0
    80006530:	00062703          	lw	a4,0(a2)
    80006534:	02079413          	sll	s0,a5,0x20
    80006538:	00460613          	add	a2,a2,4
    8000653c:	0087179b          	sllw	a5,a4,0x8
    80006540:	0087571b          	srlw	a4,a4,0x8
    80006544:	00b77733          	and	a4,a4,a1
    80006548:	00a7f7b3          	and	a5,a5,a0
    8000654c:	00e7e7b3          	or	a5,a5,a4
    80006550:	0107971b          	sllw	a4,a5,0x10
    80006554:	0107d79b          	srlw	a5,a5,0x10
    80006558:	00f767b3          	or	a5,a4,a5
    8000655c:	02079793          	sll	a5,a5,0x20
    80006560:	0207d793          	srl	a5,a5,0x20
    80006564:	008787b3          	add	a5,a5,s0
    80006568:	fcd614e3          	bne	a2,a3,80006530 <mem_done+0xe0>
    8000656c:	00786a63          	bltu	a6,t2,80006580 <mem_done+0x130>
    80006570:	00f383b3          	add	t2,t2,a5
    80006574:	0103e663          	bltu	t2,a6,80006580 <mem_done+0x130>
    80006578:	00078f13          	mv	t5,a5
    8000657c:	00100293          	li	t0,1
    80006580:	40de07b3          	sub	a5,t3,a3
    80006584:	f4f04ce3          	bgtz	a5,800064dc <mem_done+0x8c>
    80006588:	02028e63          	beqz	t0,800065c4 <mem_done+0x174>
    8000658c:	00013403          	ld	s0,0(sp)
    80006590:	0000d797          	auipc	a5,0xd
    80006594:	b1e7b023          	sd	t5,-1280(a5) # 80013090 <mem_size>
    80006598:	02de1a63          	bne	t3,a3,800065cc <mem_done+0x17c>
    8000659c:	00813083          	ld	ra,8(sp)
    800065a0:	01010113          	add	sp,sp,16
    800065a4:	00008067          	ret
    800065a8:	00068613          	mv	a2,a3
    800065ac:	00000393          	li	t2,0
    800065b0:	f7f04ce3          	bgtz	t6,80006528 <mem_done+0xd8>
    800065b4:	fcdff06f          	j	80006580 <mem_done+0x130>
    800065b8:	00000793          	li	a5,0
    800065bc:	fb1ff06f          	j	8000656c <mem_done+0x11c>
    800065c0:	00008067          	ret
    800065c4:	00013403          	ld	s0,0(sp)
    800065c8:	fd1ff06f          	j	80006598 <mem_done+0x148>
    800065cc:	00007517          	auipc	a0,0x7
    800065d0:	05450513          	add	a0,a0,84 # 8000d620 <softfloat_countLeadingZeros8+0x340>
    800065d4:	00007697          	auipc	a3,0x7
    800065d8:	7c468693          	add	a3,a3,1988 # 8000dd98 <softfloat_countLeadingZeros8+0xab8>
    800065dc:	0c100613          	li	a2,193
    800065e0:	00007597          	auipc	a1,0x7
    800065e4:	59858593          	add	a1,a1,1432 # 8000db78 <softfloat_countLeadingZeros8+0x898>
    800065e8:	00813023          	sd	s0,0(sp)
    800065ec:	db1fd0ef          	jal	8000439c <printm>
    800065f0:	00010537          	lui	a0,0x10
    800065f4:	fff50513          	add	a0,a0,-1 # ffff <_ftext-0x7fff0001>
    800065f8:	e7dfd0ef          	jal	80004474 <poweroff>
    800065fc:	00007517          	auipc	a0,0x7
    80006600:	02450513          	add	a0,a0,36 # 8000d620 <softfloat_countLeadingZeros8+0x340>
    80006604:	00007697          	auipc	a3,0x7
    80006608:	76468693          	add	a3,a3,1892 # 8000dd68 <softfloat_countLeadingZeros8+0xa88>
    8000660c:	0b900613          	li	a2,185
    80006610:	00007597          	auipc	a1,0x7
    80006614:	56858593          	add	a1,a1,1384 # 8000db78 <softfloat_countLeadingZeros8+0x898>
    80006618:	00813023          	sd	s0,0(sp)
    8000661c:	d81fd0ef          	jal	8000439c <printm>
    80006620:	00010537          	lui	a0,0x10
    80006624:	fff50513          	add	a0,a0,-1 # ffff <_ftext-0x7fff0001>
    80006628:	e4dfd0ef          	jal	80004474 <poweroff>

000000008000662c <compat_prop>:
    8000662c:	fd010113          	add	sp,sp,-48
    80006630:	00913c23          	sd	s1,24(sp)
    80006634:	00050493          	mv	s1,a0
    80006638:	00853503          	ld	a0,8(a0)
    8000663c:	01313423          	sd	s3,8(sp)
    80006640:	00058993          	mv	s3,a1
    80006644:	00007597          	auipc	a1,0x7
    80006648:	44c58593          	add	a1,a1,1100 # 8000da90 <softfloat_countLeadingZeros8+0x7b0>
    8000664c:	02113423          	sd	ra,40(sp)
    80006650:	591050ef          	jal	8000c3e0 <strcmp>
    80006654:	02051463          	bnez	a0,8000667c <compat_prop+0x50>
    80006658:	0184a783          	lw	a5,24(s1)
    8000665c:	02813023          	sd	s0,32(sp)
    80006660:	0104b403          	ld	s0,16(s1)
    80006664:	01213823          	sd	s2,16(sp)
    80006668:	0009b483          	ld	s1,0(s3)
    8000666c:	00f40933          	add	s2,s0,a5
    80006670:	02f04a63          	bgtz	a5,800066a4 <compat_prop+0x78>
    80006674:	02013403          	ld	s0,32(sp)
    80006678:	01013903          	ld	s2,16(sp)
    8000667c:	02813083          	ld	ra,40(sp)
    80006680:	01813483          	ld	s1,24(sp)
    80006684:	00813983          	ld	s3,8(sp)
    80006688:	03010113          	add	sp,sp,48
    8000668c:	00008067          	ret
    80006690:	529050ef          	jal	8000c3b8 <strlen>
    80006694:	00150513          	add	a0,a0,1
    80006698:	00a40433          	add	s0,s0,a0
    8000669c:	408907b3          	sub	a5,s2,s0
    800066a0:	fcf05ae3          	blez	a5,80006674 <compat_prop+0x48>
    800066a4:	00048593          	mv	a1,s1
    800066a8:	00040513          	mv	a0,s0
    800066ac:	535050ef          	jal	8000c3e0 <strcmp>
    800066b0:	00050793          	mv	a5,a0
    800066b4:	00040513          	mv	a0,s0
    800066b8:	fc079ce3          	bnez	a5,80006690 <compat_prop+0x64>
    800066bc:	0089a783          	lw	a5,8(s3)
    800066c0:	00c9a703          	lw	a4,12(s3)
    800066c4:	fae7d8e3          	bge	a5,a4,80006674 <compat_prop+0x48>
    800066c8:	02013403          	ld	s0,32(sp)
    800066cc:	02813083          	ld	ra,40(sp)
    800066d0:	00f9a623          	sw	a5,12(s3)
    800066d4:	01013903          	ld	s2,16(sp)
    800066d8:	01813483          	ld	s1,24(sp)
    800066dc:	00813983          	ld	s3,8(sp)
    800066e0:	03010113          	add	sp,sp,48
    800066e4:	00008067          	ret

00000000800066e8 <hart_filter_prop>:
    800066e8:	fe010113          	add	sp,sp,-32
    800066ec:	01213023          	sd	s2,0(sp)
    800066f0:	00853903          	ld	s2,8(a0)
    800066f4:	00813823          	sd	s0,16(sp)
    800066f8:	00913423          	sd	s1,8(sp)
    800066fc:	00058413          	mv	s0,a1
    80006700:	00050493          	mv	s1,a0
    80006704:	00007597          	auipc	a1,0x7
    80006708:	44c58593          	add	a1,a1,1100 # 8000db50 <softfloat_countLeadingZeros8+0x870>
    8000670c:	00090513          	mv	a0,s2
    80006710:	00113c23          	sd	ra,24(sp)
    80006714:	4cd050ef          	jal	8000c3e0 <strcmp>
    80006718:	00051c63          	bnez	a0,80006730 <hart_filter_prop+0x48>
    8000671c:	0104b503          	ld	a0,16(s1)
    80006720:	00007597          	auipc	a1,0x7
    80006724:	68858593          	add	a1,a1,1672 # 8000dda8 <softfloat_countLeadingZeros8+0xac8>
    80006728:	4b9050ef          	jal	8000c3e0 <strcmp>
    8000672c:	08050263          	beqz	a0,800067b0 <hart_filter_prop+0xc8>
    80006730:	00007597          	auipc	a1,0x7
    80006734:	39058593          	add	a1,a1,912 # 8000dac0 <softfloat_countLeadingZeros8+0x7e0>
    80006738:	00090513          	mv	a0,s2
    8000673c:	4a5050ef          	jal	8000c3e0 <strcmp>
    80006740:	00050793          	mv	a5,a0
    80006744:	08050663          	beqz	a0,800067d0 <hart_filter_prop+0xe8>
    80006748:	00007597          	auipc	a1,0x7
    8000674c:	58858593          	add	a1,a1,1416 # 8000dcd0 <softfloat_countLeadingZeros8+0x9f0>
    80006750:	00090513          	mv	a0,s2
    80006754:	48d050ef          	jal	8000c3e0 <strcmp>
    80006758:	02051263          	bnez	a0,8000677c <hart_filter_prop+0x94>
    8000675c:	0104b783          	ld	a5,16(s1)
    80006760:	00f43423          	sd	a5,8(s0)
    80006764:	01813083          	ld	ra,24(sp)
    80006768:	01013403          	ld	s0,16(sp)
    8000676c:	00813483          	ld	s1,8(sp)
    80006770:	00013903          	ld	s2,0(sp)
    80006774:	02010113          	add	sp,sp,32
    80006778:	00008067          	ret
    8000677c:	00007597          	auipc	a1,0x7
    80006780:	63458593          	add	a1,a1,1588 # 8000ddb0 <softfloat_countLeadingZeros8+0xad0>
    80006784:	00090513          	mv	a0,s2
    80006788:	459050ef          	jal	8000c3e0 <strcmp>
    8000678c:	fc051ce3          	bnez	a0,80006764 <hart_filter_prop+0x7c>
    80006790:	0104b783          	ld	a5,16(s1)
    80006794:	01813083          	ld	ra,24(sp)
    80006798:	00813483          	ld	s1,8(sp)
    8000679c:	00f43823          	sd	a5,16(s0)
    800067a0:	01013403          	ld	s0,16(sp)
    800067a4:	00013903          	ld	s2,0(sp)
    800067a8:	02010113          	add	sp,sp,32
    800067ac:	00008067          	ret
    800067b0:	00100793          	li	a5,1
    800067b4:	01813083          	ld	ra,24(sp)
    800067b8:	00f42023          	sw	a5,0(s0)
    800067bc:	01013403          	ld	s0,16(sp)
    800067c0:	00813483          	ld	s1,8(sp)
    800067c4:	00013903          	ld	s2,0(sp)
    800067c8:	02010113          	add	sp,sp,32
    800067cc:	00008067          	ret
    800067d0:	0004b703          	ld	a4,0(s1)
    800067d4:	0104b603          	ld	a2,16(s1)
    800067d8:	00073703          	ld	a4,0(a4) # 7000000 <_ftext-0x79000000>
    800067dc:	01072583          	lw	a1,16(a4)
    800067e0:	06b05263          	blez	a1,80006844 <hart_filter_prop+0x15c>
    800067e4:	02059793          	sll	a5,a1,0x20
    800067e8:	01e7d593          	srl	a1,a5,0x1e
    800067ec:	ff010837          	lui	a6,0xff010
    800067f0:	00ff0537          	lui	a0,0xff0
    800067f4:	00b605b3          	add	a1,a2,a1
    800067f8:	00000793          	li	a5,0
    800067fc:	f0080813          	add	a6,a6,-256 # ffffffffff00ff00 <_end+0xffffffff7effbf00>
    80006800:	0ff50513          	add	a0,a0,255 # ff00ff <_ftext-0x7f00ff01>
    80006804:	00062703          	lw	a4,0(a2)
    80006808:	02079693          	sll	a3,a5,0x20
    8000680c:	00460613          	add	a2,a2,4
    80006810:	0087179b          	sllw	a5,a4,0x8
    80006814:	0087571b          	srlw	a4,a4,0x8
    80006818:	00a77733          	and	a4,a4,a0
    8000681c:	0107f7b3          	and	a5,a5,a6
    80006820:	00e7e7b3          	or	a5,a5,a4
    80006824:	0107971b          	sllw	a4,a5,0x10
    80006828:	0107d79b          	srlw	a5,a5,0x10
    8000682c:	00f767b3          	or	a5,a4,a5
    80006830:	02079793          	sll	a5,a5,0x20
    80006834:	0207d793          	srl	a5,a5,0x20
    80006838:	00d787b3          	add	a5,a5,a3
    8000683c:	fcb614e3          	bne	a2,a1,80006804 <hart_filter_prop+0x11c>
    80006840:	0007879b          	sext.w	a5,a5
    80006844:	01813083          	ld	ra,24(sp)
    80006848:	00f42223          	sw	a5,4(s0)
    8000684c:	01013403          	ld	s0,16(sp)
    80006850:	00813483          	ld	s1,8(sp)
    80006854:	00013903          	ld	s2,0(sp)
    80006858:	02010113          	add	sp,sp,32
    8000685c:	00008067          	ret

0000000080006860 <clint_prop>:
    80006860:	fc010113          	add	sp,sp,-64
    80006864:	01513423          	sd	s5,8(sp)
    80006868:	00853a83          	ld	s5,8(a0)
    8000686c:	02913423          	sd	s1,40(sp)
    80006870:	03213023          	sd	s2,32(sp)
    80006874:	00058493          	mv	s1,a1
    80006878:	00050913          	mv	s2,a0
    8000687c:	00007597          	auipc	a1,0x7
    80006880:	21458593          	add	a1,a1,532 # 8000da90 <softfloat_countLeadingZeros8+0x7b0>
    80006884:	000a8513          	mv	a0,s5
    80006888:	02113c23          	sd	ra,56(sp)
    8000688c:	355050ef          	jal	8000c3e0 <strcmp>
    80006890:	08051863          	bnez	a0,80006920 <clint_prop+0xc0>
    80006894:	01892783          	lw	a5,24(s2)
    80006898:	02813823          	sd	s0,48(sp)
    8000689c:	01093403          	ld	s0,16(s2)
    800068a0:	01413823          	sd	s4,16(sp)
    800068a4:	00f40a33          	add	s4,s0,a5
    800068a8:	14f05c63          	blez	a5,80006a00 <clint_prop+0x1a0>
    800068ac:	01313c23          	sd	s3,24(sp)
    800068b0:	00007997          	auipc	s3,0x7
    800068b4:	51098993          	add	s3,s3,1296 # 8000ddc0 <softfloat_countLeadingZeros8+0xae0>
    800068b8:	0180006f          	j	800068d0 <clint_prop+0x70>
    800068bc:	2fd050ef          	jal	8000c3b8 <strlen>
    800068c0:	00150513          	add	a0,a0,1
    800068c4:	00a40433          	add	s0,s0,a0
    800068c8:	408a07b3          	sub	a5,s4,s0
    800068cc:	04f05463          	blez	a5,80006914 <clint_prop+0xb4>
    800068d0:	00098593          	mv	a1,s3
    800068d4:	00040513          	mv	a0,s0
    800068d8:	309050ef          	jal	8000c3e0 <strcmp>
    800068dc:	00050793          	mv	a5,a0
    800068e0:	00040513          	mv	a0,s0
    800068e4:	fc079ce3          	bnez	a5,800068bc <clint_prop+0x5c>
    800068e8:	03013403          	ld	s0,48(sp)
    800068ec:	03813083          	ld	ra,56(sp)
    800068f0:	00100793          	li	a5,1
    800068f4:	00f4a023          	sw	a5,0(s1)
    800068f8:	01813983          	ld	s3,24(sp)
    800068fc:	01013a03          	ld	s4,16(sp)
    80006900:	02813483          	ld	s1,40(sp)
    80006904:	02013903          	ld	s2,32(sp)
    80006908:	00813a83          	ld	s5,8(sp)
    8000690c:	04010113          	add	sp,sp,64
    80006910:	00008067          	ret
    80006914:	03013403          	ld	s0,48(sp)
    80006918:	01813983          	ld	s3,24(sp)
    8000691c:	01013a03          	ld	s4,16(sp)
    80006920:	00007597          	auipc	a1,0x7
    80006924:	1a058593          	add	a1,a1,416 # 8000dac0 <softfloat_countLeadingZeros8+0x7e0>
    80006928:	000a8513          	mv	a0,s5
    8000692c:	2b5050ef          	jal	8000c3e0 <strcmp>
    80006930:	04050063          	beqz	a0,80006970 <clint_prop+0x110>
    80006934:	00007597          	auipc	a1,0x7
    80006938:	49c58593          	add	a1,a1,1180 # 8000ddd0 <softfloat_countLeadingZeros8+0xaf0>
    8000693c:	000a8513          	mv	a0,s5
    80006940:	2a1050ef          	jal	8000c3e0 <strcmp>
    80006944:	00051a63          	bnez	a0,80006958 <clint_prop+0xf8>
    80006948:	01093703          	ld	a4,16(s2)
    8000694c:	01892783          	lw	a5,24(s2)
    80006950:	00e4b823          	sd	a4,16(s1)
    80006954:	00f4ac23          	sw	a5,24(s1)
    80006958:	03813083          	ld	ra,56(sp)
    8000695c:	02813483          	ld	s1,40(sp)
    80006960:	02013903          	ld	s2,32(sp)
    80006964:	00813a83          	ld	s5,8(sp)
    80006968:	04010113          	add	sp,sp,64
    8000696c:	00008067          	ret
    80006970:	00093783          	ld	a5,0(s2)
    80006974:	01093683          	ld	a3,16(s2)
    80006978:	0007b783          	ld	a5,0(a5)
    8000697c:	0004b423          	sd	zero,8(s1)
    80006980:	0107a583          	lw	a1,16(a5)
    80006984:	fcb05ae3          	blez	a1,80006958 <clint_prop+0xf8>
    80006988:	02059793          	sll	a5,a1,0x20
    8000698c:	01e7d593          	srl	a1,a5,0x1e
    80006990:	ff010837          	lui	a6,0xff010
    80006994:	00ff0537          	lui	a0,0xff0
    80006998:	00b685b3          	add	a1,a3,a1
    8000699c:	00000793          	li	a5,0
    800069a0:	f0080813          	add	a6,a6,-256 # ffffffffff00ff00 <_end+0xffffffff7effbf00>
    800069a4:	0ff50513          	add	a0,a0,255 # ff00ff <_ftext-0x7f00ff01>
    800069a8:	0006a703          	lw	a4,0(a3)
    800069ac:	02079613          	sll	a2,a5,0x20
    800069b0:	00468693          	add	a3,a3,4
    800069b4:	0087179b          	sllw	a5,a4,0x8
    800069b8:	0087571b          	srlw	a4,a4,0x8
    800069bc:	00a77733          	and	a4,a4,a0
    800069c0:	0107f7b3          	and	a5,a5,a6
    800069c4:	00e7e7b3          	or	a5,a5,a4
    800069c8:	0107971b          	sllw	a4,a5,0x10
    800069cc:	0107d79b          	srlw	a5,a5,0x10
    800069d0:	00f767b3          	or	a5,a4,a5
    800069d4:	02079793          	sll	a5,a5,0x20
    800069d8:	0207d793          	srl	a5,a5,0x20
    800069dc:	00c787b3          	add	a5,a5,a2
    800069e0:	fcb694e3          	bne	a3,a1,800069a8 <clint_prop+0x148>
    800069e4:	03813083          	ld	ra,56(sp)
    800069e8:	00f4b423          	sd	a5,8(s1)
    800069ec:	02013903          	ld	s2,32(sp)
    800069f0:	02813483          	ld	s1,40(sp)
    800069f4:	00813a83          	ld	s5,8(sp)
    800069f8:	04010113          	add	sp,sp,64
    800069fc:	00008067          	ret
    80006a00:	03013403          	ld	s0,48(sp)
    80006a04:	01013a03          	ld	s4,16(sp)
    80006a08:	f19ff06f          	j	80006920 <clint_prop+0xc0>

0000000080006a0c <chosen_prop>:
    80006a0c:	0005b783          	ld	a5,0(a1)
    80006a10:	16078e63          	beqz	a5,80006b8c <chosen_prop+0x180>
    80006a14:	fe010113          	add	sp,sp,-32
    80006a18:	01213023          	sd	s2,0(sp)
    80006a1c:	00853903          	ld	s2,8(a0)
    80006a20:	00813823          	sd	s0,16(sp)
    80006a24:	00913423          	sd	s1,8(sp)
    80006a28:	00058413          	mv	s0,a1
    80006a2c:	00050493          	mv	s1,a0
    80006a30:	00007597          	auipc	a1,0x7
    80006a34:	3b858593          	add	a1,a1,952 # 8000dde8 <softfloat_countLeadingZeros8+0xb08>
    80006a38:	00090513          	mv	a0,s2
    80006a3c:	00113c23          	sd	ra,24(sp)
    80006a40:	1a1050ef          	jal	8000c3e0 <strcmp>
    80006a44:	02050863          	beqz	a0,80006a74 <chosen_prop+0x68>
    80006a48:	00007597          	auipc	a1,0x7
    80006a4c:	3b858593          	add	a1,a1,952 # 8000de00 <softfloat_countLeadingZeros8+0xb20>
    80006a50:	00090513          	mv	a0,s2
    80006a54:	18d050ef          	jal	8000c3e0 <strcmp>
    80006a58:	0a050463          	beqz	a0,80006b00 <chosen_prop+0xf4>
    80006a5c:	01813083          	ld	ra,24(sp)
    80006a60:	01013403          	ld	s0,16(sp)
    80006a64:	00813483          	ld	s1,8(sp)
    80006a68:	00013903          	ld	s2,0(sp)
    80006a6c:	02010113          	add	sp,sp,32
    80006a70:	00008067          	ret
    80006a74:	0004b783          	ld	a5,0(s1)
    80006a78:	0104b603          	ld	a2,16(s1)
    80006a7c:	0007b783          	ld	a5,0(a5)
    80006a80:	0107a583          	lw	a1,16(a5)
    80006a84:	10b05663          	blez	a1,80006b90 <chosen_prop+0x184>
    80006a88:	02059793          	sll	a5,a1,0x20
    80006a8c:	01e7d593          	srl	a1,a5,0x1e
    80006a90:	ff010837          	lui	a6,0xff010
    80006a94:	00ff0537          	lui	a0,0xff0
    80006a98:	00b605b3          	add	a1,a2,a1
    80006a9c:	00000793          	li	a5,0
    80006aa0:	f0080813          	add	a6,a6,-256 # ffffffffff00ff00 <_end+0xffffffff7effbf00>
    80006aa4:	0ff50513          	add	a0,a0,255 # ff00ff <_ftext-0x7f00ff01>
    80006aa8:	00062703          	lw	a4,0(a2)
    80006aac:	02079693          	sll	a3,a5,0x20
    80006ab0:	00460613          	add	a2,a2,4
    80006ab4:	0087179b          	sllw	a5,a4,0x8
    80006ab8:	0087571b          	srlw	a4,a4,0x8
    80006abc:	00a77733          	and	a4,a4,a0
    80006ac0:	0107f7b3          	and	a5,a5,a6
    80006ac4:	00e7e7b3          	or	a5,a5,a4
    80006ac8:	0107971b          	sllw	a4,a5,0x10
    80006acc:	0107d79b          	srlw	a5,a5,0x10
    80006ad0:	00f767b3          	or	a5,a4,a5
    80006ad4:	02079793          	sll	a5,a5,0x20
    80006ad8:	0207d793          	srl	a5,a5,0x20
    80006adc:	00d787b3          	add	a5,a5,a3
    80006ae0:	fcb614e3          	bne	a2,a1,80006aa8 <chosen_prop+0x9c>
    80006ae4:	00f43423          	sd	a5,8(s0)
    80006ae8:	01813083          	ld	ra,24(sp)
    80006aec:	01013403          	ld	s0,16(sp)
    80006af0:	00813483          	ld	s1,8(sp)
    80006af4:	00013903          	ld	s2,0(sp)
    80006af8:	02010113          	add	sp,sp,32
    80006afc:	00008067          	ret
    80006b00:	0004b783          	ld	a5,0(s1)
    80006b04:	0104b603          	ld	a2,16(s1)
    80006b08:	0007b783          	ld	a5,0(a5)
    80006b0c:	0107a583          	lw	a1,16(a5)
    80006b10:	08b05663          	blez	a1,80006b9c <chosen_prop+0x190>
    80006b14:	02059793          	sll	a5,a1,0x20
    80006b18:	01e7d593          	srl	a1,a5,0x1e
    80006b1c:	ff010837          	lui	a6,0xff010
    80006b20:	00ff0537          	lui	a0,0xff0
    80006b24:	00b605b3          	add	a1,a2,a1
    80006b28:	00000793          	li	a5,0
    80006b2c:	f0080813          	add	a6,a6,-256 # ffffffffff00ff00 <_end+0xffffffff7effbf00>
    80006b30:	0ff50513          	add	a0,a0,255 # ff00ff <_ftext-0x7f00ff01>
    80006b34:	00062703          	lw	a4,0(a2)
    80006b38:	02079693          	sll	a3,a5,0x20
    80006b3c:	00460613          	add	a2,a2,4
    80006b40:	0087179b          	sllw	a5,a4,0x8
    80006b44:	0087571b          	srlw	a4,a4,0x8
    80006b48:	00a77733          	and	a4,a4,a0
    80006b4c:	0107f7b3          	and	a5,a5,a6
    80006b50:	00e7e7b3          	or	a5,a5,a4
    80006b54:	0107971b          	sllw	a4,a5,0x10
    80006b58:	0107d79b          	srlw	a5,a5,0x10
    80006b5c:	00f767b3          	or	a5,a4,a5
    80006b60:	02079793          	sll	a5,a5,0x20
    80006b64:	0207d793          	srl	a5,a5,0x20
    80006b68:	00d787b3          	add	a5,a5,a3
    80006b6c:	fcb614e3          	bne	a2,a1,80006b34 <chosen_prop+0x128>
    80006b70:	00f43823          	sd	a5,16(s0)
    80006b74:	01813083          	ld	ra,24(sp)
    80006b78:	01013403          	ld	s0,16(sp)
    80006b7c:	00813483          	ld	s1,8(sp)
    80006b80:	00013903          	ld	s2,0(sp)
    80006b84:	02010113          	add	sp,sp,32
    80006b88:	00008067          	ret
    80006b8c:	00008067          	ret
    80006b90:	00000793          	li	a5,0
    80006b94:	00f43423          	sd	a5,8(s0)
    80006b98:	f51ff06f          	j	80006ae8 <chosen_prop+0xdc>
    80006b9c:	00000793          	li	a5,0
    80006ba0:	00f43823          	sd	a5,16(s0)
    80006ba4:	fd1ff06f          	j	80006b74 <chosen_prop+0x168>

0000000080006ba8 <plic_prop>:
    80006ba8:	fc010113          	add	sp,sp,-64
    80006bac:	01513423          	sd	s5,8(sp)
    80006bb0:	00853a83          	ld	s5,8(a0)
    80006bb4:	02913423          	sd	s1,40(sp)
    80006bb8:	03213023          	sd	s2,32(sp)
    80006bbc:	00058493          	mv	s1,a1
    80006bc0:	00050913          	mv	s2,a0
    80006bc4:	00007597          	auipc	a1,0x7
    80006bc8:	ecc58593          	add	a1,a1,-308 # 8000da90 <softfloat_countLeadingZeros8+0x7b0>
    80006bcc:	000a8513          	mv	a0,s5
    80006bd0:	02113c23          	sd	ra,56(sp)
    80006bd4:	00d050ef          	jal	8000c3e0 <strcmp>
    80006bd8:	08051863          	bnez	a0,80006c68 <plic_prop+0xc0>
    80006bdc:	01892783          	lw	a5,24(s2)
    80006be0:	02813823          	sd	s0,48(sp)
    80006be4:	01093403          	ld	s0,16(s2)
    80006be8:	01413823          	sd	s4,16(sp)
    80006bec:	00f40a33          	add	s4,s0,a5
    80006bf0:	1cf05063          	blez	a5,80006db0 <plic_prop+0x208>
    80006bf4:	01313c23          	sd	s3,24(sp)
    80006bf8:	00007997          	auipc	s3,0x7
    80006bfc:	22098993          	add	s3,s3,544 # 8000de18 <softfloat_countLeadingZeros8+0xb38>
    80006c00:	0180006f          	j	80006c18 <plic_prop+0x70>
    80006c04:	7b4050ef          	jal	8000c3b8 <strlen>
    80006c08:	00150513          	add	a0,a0,1
    80006c0c:	00a40433          	add	s0,s0,a0
    80006c10:	408a07b3          	sub	a5,s4,s0
    80006c14:	04f05463          	blez	a5,80006c5c <plic_prop+0xb4>
    80006c18:	00098593          	mv	a1,s3
    80006c1c:	00040513          	mv	a0,s0
    80006c20:	7c0050ef          	jal	8000c3e0 <strcmp>
    80006c24:	00050793          	mv	a5,a0
    80006c28:	00040513          	mv	a0,s0
    80006c2c:	fc079ce3          	bnez	a5,80006c04 <plic_prop+0x5c>
    80006c30:	03013403          	ld	s0,48(sp)
    80006c34:	03813083          	ld	ra,56(sp)
    80006c38:	00100793          	li	a5,1
    80006c3c:	00f4a023          	sw	a5,0(s1)
    80006c40:	01813983          	ld	s3,24(sp)
    80006c44:	01013a03          	ld	s4,16(sp)
    80006c48:	02813483          	ld	s1,40(sp)
    80006c4c:	02013903          	ld	s2,32(sp)
    80006c50:	00813a83          	ld	s5,8(sp)
    80006c54:	04010113          	add	sp,sp,64
    80006c58:	00008067          	ret
    80006c5c:	03013403          	ld	s0,48(sp)
    80006c60:	01813983          	ld	s3,24(sp)
    80006c64:	01013a03          	ld	s4,16(sp)
    80006c68:	00007597          	auipc	a1,0x7
    80006c6c:	e5858593          	add	a1,a1,-424 # 8000dac0 <softfloat_countLeadingZeros8+0x7e0>
    80006c70:	000a8513          	mv	a0,s5
    80006c74:	76c050ef          	jal	8000c3e0 <strcmp>
    80006c78:	04050063          	beqz	a0,80006cb8 <plic_prop+0x110>
    80006c7c:	00007597          	auipc	a1,0x7
    80006c80:	15458593          	add	a1,a1,340 # 8000ddd0 <softfloat_countLeadingZeros8+0xaf0>
    80006c84:	000a8513          	mv	a0,s5
    80006c88:	758050ef          	jal	8000c3e0 <strcmp>
    80006c8c:	0a051e63          	bnez	a0,80006d48 <plic_prop+0x1a0>
    80006c90:	01093703          	ld	a4,16(s2)
    80006c94:	01892783          	lw	a5,24(s2)
    80006c98:	00e4b823          	sd	a4,16(s1)
    80006c9c:	00f4ac23          	sw	a5,24(s1)
    80006ca0:	03813083          	ld	ra,56(sp)
    80006ca4:	02813483          	ld	s1,40(sp)
    80006ca8:	02013903          	ld	s2,32(sp)
    80006cac:	00813a83          	ld	s5,8(sp)
    80006cb0:	04010113          	add	sp,sp,64
    80006cb4:	00008067          	ret
    80006cb8:	00093783          	ld	a5,0(s2)
    80006cbc:	01093683          	ld	a3,16(s2)
    80006cc0:	0007b783          	ld	a5,0(a5)
    80006cc4:	0004b423          	sd	zero,8(s1)
    80006cc8:	0107a583          	lw	a1,16(a5)
    80006ccc:	fcb05ae3          	blez	a1,80006ca0 <plic_prop+0xf8>
    80006cd0:	02059793          	sll	a5,a1,0x20
    80006cd4:	01e7d593          	srl	a1,a5,0x1e
    80006cd8:	ff010837          	lui	a6,0xff010
    80006cdc:	00ff0537          	lui	a0,0xff0
    80006ce0:	00b685b3          	add	a1,a3,a1
    80006ce4:	00000793          	li	a5,0
    80006ce8:	f0080813          	add	a6,a6,-256 # ffffffffff00ff00 <_end+0xffffffff7effbf00>
    80006cec:	0ff50513          	add	a0,a0,255 # ff00ff <_ftext-0x7f00ff01>
    80006cf0:	0006a703          	lw	a4,0(a3)
    80006cf4:	02079613          	sll	a2,a5,0x20
    80006cf8:	00468693          	add	a3,a3,4
    80006cfc:	0087179b          	sllw	a5,a4,0x8
    80006d00:	0087571b          	srlw	a4,a4,0x8
    80006d04:	00a77733          	and	a4,a4,a0
    80006d08:	0107f7b3          	and	a5,a5,a6
    80006d0c:	00e7e7b3          	or	a5,a5,a4
    80006d10:	0107971b          	sllw	a4,a5,0x10
    80006d14:	0107d79b          	srlw	a5,a5,0x10
    80006d18:	00f767b3          	or	a5,a4,a5
    80006d1c:	02079793          	sll	a5,a5,0x20
    80006d20:	0207d793          	srl	a5,a5,0x20
    80006d24:	00c787b3          	add	a5,a5,a2
    80006d28:	fcb694e3          	bne	a3,a1,80006cf0 <plic_prop+0x148>
    80006d2c:	03813083          	ld	ra,56(sp)
    80006d30:	00f4b423          	sd	a5,8(s1)
    80006d34:	02013903          	ld	s2,32(sp)
    80006d38:	02813483          	ld	s1,40(sp)
    80006d3c:	00813a83          	ld	s5,8(sp)
    80006d40:	04010113          	add	sp,sp,64
    80006d44:	00008067          	ret
    80006d48:	00007597          	auipc	a1,0x7
    80006d4c:	0e058593          	add	a1,a1,224 # 8000de28 <softfloat_countLeadingZeros8+0xb48>
    80006d50:	000a8513          	mv	a0,s5
    80006d54:	68c050ef          	jal	8000c3e0 <strcmp>
    80006d58:	f40514e3          	bnez	a0,80006ca0 <plic_prop+0xf8>
    80006d5c:	01093783          	ld	a5,16(s2)
    80006d60:	ff010637          	lui	a2,0xff010
    80006d64:	00ff06b7          	lui	a3,0xff0
    80006d68:	0007a703          	lw	a4,0(a5)
    80006d6c:	f0060613          	add	a2,a2,-256 # ffffffffff00ff00 <_end+0xffffffff7effbf00>
    80006d70:	0ff68693          	add	a3,a3,255 # ff00ff <_ftext-0x7f00ff01>
    80006d74:	0087179b          	sllw	a5,a4,0x8
    80006d78:	0087571b          	srlw	a4,a4,0x8
    80006d7c:	00d77733          	and	a4,a4,a3
    80006d80:	00c7f7b3          	and	a5,a5,a2
    80006d84:	00e7e7b3          	or	a5,a5,a4
    80006d88:	03813083          	ld	ra,56(sp)
    80006d8c:	0107971b          	sllw	a4,a5,0x10
    80006d90:	0107d79b          	srlw	a5,a5,0x10
    80006d94:	00f767b3          	or	a5,a4,a5
    80006d98:	02f4a023          	sw	a5,32(s1)
    80006d9c:	02013903          	ld	s2,32(sp)
    80006da0:	02813483          	ld	s1,40(sp)
    80006da4:	00813a83          	ld	s5,8(sp)
    80006da8:	04010113          	add	sp,sp,64
    80006dac:	00008067          	ret
    80006db0:	03013403          	ld	s0,48(sp)
    80006db4:	01013a03          	ld	s4,16(sp)
    80006db8:	eb1ff06f          	j	80006c68 <plic_prop+0xc0>

0000000080006dbc <hart_prop>:
    80006dbc:	fe010113          	add	sp,sp,-32
    80006dc0:	00913423          	sd	s1,8(sp)
    80006dc4:	00853483          	ld	s1,8(a0)
    80006dc8:	00813823          	sd	s0,16(sp)
    80006dcc:	01213023          	sd	s2,0(sp)
    80006dd0:	00050413          	mv	s0,a0
    80006dd4:	00058913          	mv	s2,a1
    80006dd8:	00048513          	mv	a0,s1
    80006ddc:	00007597          	auipc	a1,0x7
    80006de0:	d7458593          	add	a1,a1,-652 # 8000db50 <softfloat_countLeadingZeros8+0x870>
    80006de4:	00113c23          	sd	ra,24(sp)
    80006de8:	5f8050ef          	jal	8000c3e0 <strcmp>
    80006dec:	04051663          	bnez	a0,80006e38 <hart_prop+0x7c>
    80006df0:	01043503          	ld	a0,16(s0)
    80006df4:	00007597          	auipc	a1,0x7
    80006df8:	fb458593          	add	a1,a1,-76 # 8000dda8 <softfloat_countLeadingZeros8+0xac8>
    80006dfc:	5e4050ef          	jal	8000c3e0 <strcmp>
    80006e00:	02051c63          	bnez	a0,80006e38 <hart_prop+0x7c>
    80006e04:	00093783          	ld	a5,0(s2)
    80006e08:	00007697          	auipc	a3,0x7
    80006e0c:	03068693          	add	a3,a3,48 # 8000de38 <softfloat_countLeadingZeros8+0xb58>
    80006e10:	0f100613          	li	a2,241
    80006e14:	1a079c63          	bnez	a5,80006fcc <hart_prop+0x210>
    80006e18:	00043783          	ld	a5,0(s0)
    80006e1c:	01813083          	ld	ra,24(sp)
    80006e20:	01013403          	ld	s0,16(sp)
    80006e24:	00f93023          	sd	a5,0(s2)
    80006e28:	00813483          	ld	s1,8(sp)
    80006e2c:	00013903          	ld	s2,0(sp)
    80006e30:	02010113          	add	sp,sp,32
    80006e34:	00008067          	ret
    80006e38:	00007597          	auipc	a1,0x7
    80006e3c:	01058593          	add	a1,a1,16 # 8000de48 <softfloat_countLeadingZeros8+0xb68>
    80006e40:	00048513          	mv	a0,s1
    80006e44:	59c050ef          	jal	8000c3e0 <strcmp>
    80006e48:	02051663          	bnez	a0,80006e74 <hart_prop+0xb8>
    80006e4c:	01093783          	ld	a5,16(s2)
    80006e50:	16079863          	bnez	a5,80006fc0 <hart_prop+0x204>
    80006e54:	00043783          	ld	a5,0(s0)
    80006e58:	00f93823          	sd	a5,16(s2)
    80006e5c:	01813083          	ld	ra,24(sp)
    80006e60:	01013403          	ld	s0,16(sp)
    80006e64:	00813483          	ld	s1,8(sp)
    80006e68:	00013903          	ld	s2,0(sp)
    80006e6c:	02010113          	add	sp,sp,32
    80006e70:	00008067          	ret
    80006e74:	00007597          	auipc	a1,0x7
    80006e78:	00458593          	add	a1,a1,4 # 8000de78 <softfloat_countLeadingZeros8+0xb98>
    80006e7c:	00048513          	mv	a0,s1
    80006e80:	560050ef          	jal	8000c3e0 <strcmp>
    80006e84:	04050c63          	beqz	a0,80006edc <hart_prop+0x120>
    80006e88:	00007597          	auipc	a1,0x7
    80006e8c:	00858593          	add	a1,a1,8 # 8000de90 <softfloat_countLeadingZeros8+0xbb0>
    80006e90:	00048513          	mv	a0,s1
    80006e94:	54c050ef          	jal	8000c3e0 <strcmp>
    80006e98:	08051c63          	bnez	a0,80006f30 <hart_prop+0x174>
    80006e9c:	01043783          	ld	a5,16(s0)
    80006ea0:	ff010637          	lui	a2,0xff010
    80006ea4:	00ff06b7          	lui	a3,0xff0
    80006ea8:	0007a703          	lw	a4,0(a5)
    80006eac:	f0060613          	add	a2,a2,-256 # ffffffffff00ff00 <_end+0xffffffff7effbf00>
    80006eb0:	0ff68693          	add	a3,a3,255 # ff00ff <_ftext-0x7f00ff01>
    80006eb4:	0087179b          	sllw	a5,a4,0x8
    80006eb8:	0087571b          	srlw	a4,a4,0x8
    80006ebc:	00d77733          	and	a4,a4,a3
    80006ec0:	00c7f7b3          	and	a5,a5,a2
    80006ec4:	00e7e7b3          	or	a5,a5,a4
    80006ec8:	0107971b          	sllw	a4,a5,0x10
    80006ecc:	0107d79b          	srlw	a5,a5,0x10
    80006ed0:	00f767b3          	or	a5,a4,a5
    80006ed4:	00f92e23          	sw	a5,28(s2)
    80006ed8:	f85ff06f          	j	80006e5c <hart_prop+0xa0>
    80006edc:	01043783          	ld	a5,16(s0)
    80006ee0:	ff010637          	lui	a2,0xff010
    80006ee4:	00ff06b7          	lui	a3,0xff0
    80006ee8:	0007a703          	lw	a4,0(a5)
    80006eec:	f0060613          	add	a2,a2,-256 # ffffffffff00ff00 <_end+0xffffffff7effbf00>
    80006ef0:	0ff68693          	add	a3,a3,255 # ff00ff <_ftext-0x7f00ff01>
    80006ef4:	0087179b          	sllw	a5,a4,0x8
    80006ef8:	0087571b          	srlw	a4,a4,0x8
    80006efc:	00d77733          	and	a4,a4,a3
    80006f00:	00c7f7b3          	and	a5,a5,a2
    80006f04:	00e7e7b3          	or	a5,a5,a4
    80006f08:	01813083          	ld	ra,24(sp)
    80006f0c:	01013403          	ld	s0,16(sp)
    80006f10:	0107971b          	sllw	a4,a5,0x10
    80006f14:	0107d79b          	srlw	a5,a5,0x10
    80006f18:	00f767b3          	or	a5,a4,a5
    80006f1c:	00f92c23          	sw	a5,24(s2)
    80006f20:	00813483          	ld	s1,8(sp)
    80006f24:	00013903          	ld	s2,0(sp)
    80006f28:	02010113          	add	sp,sp,32
    80006f2c:	00008067          	ret
    80006f30:	00007597          	auipc	a1,0x7
    80006f34:	b9058593          	add	a1,a1,-1136 # 8000dac0 <softfloat_countLeadingZeros8+0x7e0>
    80006f38:	00048513          	mv	a0,s1
    80006f3c:	4a4050ef          	jal	8000c3e0 <strcmp>
    80006f40:	f0051ee3          	bnez	a0,80006e5c <hart_prop+0xa0>
    80006f44:	00043783          	ld	a5,0(s0)
    80006f48:	01043603          	ld	a2,16(s0)
    80006f4c:	0007b783          	ld	a5,0(a5)
    80006f50:	0107a583          	lw	a1,16(a5)
    80006f54:	06b05263          	blez	a1,80006fb8 <hart_prop+0x1fc>
    80006f58:	02059793          	sll	a5,a1,0x20
    80006f5c:	01e7d593          	srl	a1,a5,0x1e
    80006f60:	ff010837          	lui	a6,0xff010
    80006f64:	00ff0537          	lui	a0,0xff0
    80006f68:	00b605b3          	add	a1,a2,a1
    80006f6c:	00000793          	li	a5,0
    80006f70:	f0080813          	add	a6,a6,-256 # ffffffffff00ff00 <_end+0xffffffff7effbf00>
    80006f74:	0ff50513          	add	a0,a0,255 # ff00ff <_ftext-0x7f00ff01>
    80006f78:	00062703          	lw	a4,0(a2)
    80006f7c:	02079693          	sll	a3,a5,0x20
    80006f80:	00460613          	add	a2,a2,4
    80006f84:	0087179b          	sllw	a5,a4,0x8
    80006f88:	0087571b          	srlw	a4,a4,0x8
    80006f8c:	00a77733          	and	a4,a4,a0
    80006f90:	0107f7b3          	and	a5,a5,a6
    80006f94:	00e7e7b3          	or	a5,a5,a4
    80006f98:	0107971b          	sllw	a4,a5,0x10
    80006f9c:	0107d79b          	srlw	a5,a5,0x10
    80006fa0:	00f767b3          	or	a5,a4,a5
    80006fa4:	02079793          	sll	a5,a5,0x20
    80006fa8:	0207d793          	srl	a5,a5,0x20
    80006fac:	00d787b3          	add	a5,a5,a3
    80006fb0:	fcb614e3          	bne	a2,a1,80006f78 <hart_prop+0x1bc>
    80006fb4:	0007851b          	sext.w	a0,a5
    80006fb8:	00a92423          	sw	a0,8(s2)
    80006fbc:	ea1ff06f          	j	80006e5c <hart_prop+0xa0>
    80006fc0:	00007697          	auipc	a3,0x7
    80006fc4:	ea068693          	add	a3,a3,-352 # 8000de60 <softfloat_countLeadingZeros8+0xb80>
    80006fc8:	0f400613          	li	a2,244
    80006fcc:	00006517          	auipc	a0,0x6
    80006fd0:	65450513          	add	a0,a0,1620 # 8000d620 <softfloat_countLeadingZeros8+0x340>
    80006fd4:	00007597          	auipc	a1,0x7
    80006fd8:	ba458593          	add	a1,a1,-1116 # 8000db78 <softfloat_countLeadingZeros8+0x898>
    80006fdc:	bc0fd0ef          	jal	8000439c <printm>
    80006fe0:	00010537          	lui	a0,0x10
    80006fe4:	fff50513          	add	a0,a0,-1 # ffff <_ftext-0x7fff0001>
    80006fe8:	c8cfd0ef          	jal	80004474 <poweroff>

0000000080006fec <fdt_scan>:
    80006fec:	00052703          	lw	a4,0(a0)
    80006ff0:	00ff0637          	lui	a2,0xff0
    80006ff4:	ff010837          	lui	a6,0xff010
    80006ff8:	0087579b          	srlw	a5,a4,0x8
    80006ffc:	0ff60613          	add	a2,a2,255 # ff00ff <_ftext-0x7f00ff01>
    80007000:	0087171b          	sllw	a4,a4,0x8
    80007004:	f0080813          	add	a6,a6,-256 # ffffffffff00ff00 <_end+0xffffffff7effbf00>
    80007008:	01077733          	and	a4,a4,a6
    8000700c:	00c7f7b3          	and	a5,a5,a2
    80007010:	00e7e7b3          	or	a5,a5,a4
    80007014:	feedd737          	lui	a4,0xfeedd
    80007018:	0007879b          	sext.w	a5,a5
    8000701c:	00d70713          	add	a4,a4,13 # fffffffffeedd00d <_end+0xffffffff7eec900d>
    80007020:	02e79a63          	bne	a5,a4,80007054 <fdt_scan+0x68>
    80007024:	01852703          	lw	a4,24(a0)
    80007028:	01100693          	li	a3,17
    8000702c:	0087179b          	sllw	a5,a4,0x8
    80007030:	0087571b          	srlw	a4,a4,0x8
    80007034:	00c77733          	and	a4,a4,a2
    80007038:	0107f7b3          	and	a5,a5,a6
    8000703c:	00e7e7b3          	or	a5,a5,a4
    80007040:	0107971b          	sllw	a4,a5,0x10
    80007044:	0107d79b          	srlw	a5,a5,0x10
    80007048:	00f767b3          	or	a5,a4,a5
    8000704c:	0007879b          	sext.w	a5,a5
    80007050:	00f6f463          	bgeu	a3,a5,80007058 <fdt_scan+0x6c>
    80007054:	00008067          	ret
    80007058:	00c52783          	lw	a5,12(a0)
    8000705c:	00852883          	lw	a7,8(a0)
    80007060:	00058693          	mv	a3,a1
    80007064:	0087971b          	sllw	a4,a5,0x8
    80007068:	0087d59b          	srlw	a1,a5,0x8
    8000706c:	0088979b          	sllw	a5,a7,0x8
    80007070:	0088d89b          	srlw	a7,a7,0x8
    80007074:	00c5f5b3          	and	a1,a1,a2
    80007078:	00c8f8b3          	and	a7,a7,a2
    8000707c:	01077733          	and	a4,a4,a6
    80007080:	0107f7b3          	and	a5,a5,a6
    80007084:	00b76733          	or	a4,a4,a1
    80007088:	0117e7b3          	or	a5,a5,a7
    8000708c:	0107961b          	sllw	a2,a5,0x10
    80007090:	0107159b          	sllw	a1,a4,0x10
    80007094:	0107d79b          	srlw	a5,a5,0x10
    80007098:	0107571b          	srlw	a4,a4,0x10
    8000709c:	00f667b3          	or	a5,a2,a5
    800070a0:	00e5e5b3          	or	a1,a1,a4
    800070a4:	02059593          	sll	a1,a1,0x20
    800070a8:	02079793          	sll	a5,a5,0x20
    800070ac:	0205d593          	srl	a1,a1,0x20
    800070b0:	0207d793          	srl	a5,a5,0x20
    800070b4:	00a585b3          	add	a1,a1,a0
    800070b8:	00000613          	li	a2,0
    800070bc:	00a78533          	add	a0,a5,a0
    800070c0:	975fe06f          	j	80005a34 <fdt_scan_helper>

00000000800070c4 <fdt_size>:
    800070c4:	00052703          	lw	a4,0(a0)
    800070c8:	ff010637          	lui	a2,0xff010
    800070cc:	00ff06b7          	lui	a3,0xff0
    800070d0:	0087179b          	sllw	a5,a4,0x8
    800070d4:	f0060613          	add	a2,a2,-256 # ffffffffff00ff00 <_end+0xffffffff7effbf00>
    800070d8:	0087571b          	srlw	a4,a4,0x8
    800070dc:	0ff68693          	add	a3,a3,255 # ff00ff <_ftext-0x7f00ff01>
    800070e0:	00d77733          	and	a4,a4,a3
    800070e4:	00c7f7b3          	and	a5,a5,a2
    800070e8:	00e7e7b3          	or	a5,a5,a4
    800070ec:	feedd737          	lui	a4,0xfeedd
    800070f0:	0007879b          	sext.w	a5,a5
    800070f4:	00d70713          	add	a4,a4,13 # fffffffffeedd00d <_end+0xffffffff7eec900d>
    800070f8:	00050593          	mv	a1,a0
    800070fc:	06e79263          	bne	a5,a4,80007160 <fdt_size+0x9c>
    80007100:	01852703          	lw	a4,24(a0)
    80007104:	01100813          	li	a6,17
    80007108:	00000513          	li	a0,0
    8000710c:	0087179b          	sllw	a5,a4,0x8
    80007110:	0087571b          	srlw	a4,a4,0x8
    80007114:	00d77733          	and	a4,a4,a3
    80007118:	00c7f7b3          	and	a5,a5,a2
    8000711c:	00e7e7b3          	or	a5,a5,a4
    80007120:	0107971b          	sllw	a4,a5,0x10
    80007124:	0107d79b          	srlw	a5,a5,0x10
    80007128:	00f767b3          	or	a5,a4,a5
    8000712c:	0007879b          	sext.w	a5,a5
    80007130:	02f86a63          	bltu	a6,a5,80007164 <fdt_size+0xa0>
    80007134:	0045a703          	lw	a4,4(a1)
    80007138:	0087179b          	sllw	a5,a4,0x8
    8000713c:	0087571b          	srlw	a4,a4,0x8
    80007140:	00c7f7b3          	and	a5,a5,a2
    80007144:	00d77733          	and	a4,a4,a3
    80007148:	00e7e7b3          	or	a5,a5,a4
    8000714c:	0107951b          	sllw	a0,a5,0x10
    80007150:	0107d79b          	srlw	a5,a5,0x10
    80007154:	00f56533          	or	a0,a0,a5
    80007158:	0005051b          	sext.w	a0,a0
    8000715c:	00008067          	ret
    80007160:	00000513          	li	a0,0
    80007164:	00008067          	ret

0000000080007168 <fdt_get_address>:
    80007168:	01052503          	lw	a0,16(a0)
    8000716c:	00063023          	sd	zero,0(a2)
    80007170:	06a05463          	blez	a0,800071d8 <fdt_get_address+0x70>
    80007174:	02051793          	sll	a5,a0,0x20
    80007178:	01e7d513          	srl	a0,a5,0x1e
    8000717c:	ff0108b7          	lui	a7,0xff010
    80007180:	00ff0837          	lui	a6,0xff0
    80007184:	00a58533          	add	a0,a1,a0
    80007188:	00000793          	li	a5,0
    8000718c:	f0088893          	add	a7,a7,-256 # ffffffffff00ff00 <_end+0xffffffff7effbf00>
    80007190:	0ff80813          	add	a6,a6,255 # ff00ff <_ftext-0x7f00ff01>
    80007194:	0005a703          	lw	a4,0(a1)
    80007198:	02079693          	sll	a3,a5,0x20
    8000719c:	00458593          	add	a1,a1,4
    800071a0:	0087179b          	sllw	a5,a4,0x8
    800071a4:	0087571b          	srlw	a4,a4,0x8
    800071a8:	01077733          	and	a4,a4,a6
    800071ac:	0117f7b3          	and	a5,a5,a7
    800071b0:	00e7e7b3          	or	a5,a5,a4
    800071b4:	0107971b          	sllw	a4,a5,0x10
    800071b8:	0107d79b          	srlw	a5,a5,0x10
    800071bc:	00f767b3          	or	a5,a4,a5
    800071c0:	02079793          	sll	a5,a5,0x20
    800071c4:	0207d793          	srl	a5,a5,0x20
    800071c8:	00d787b3          	add	a5,a5,a3
    800071cc:	fca594e3          	bne	a1,a0,80007194 <fdt_get_address+0x2c>
    800071d0:	00f63023          	sd	a5,0(a2)
    800071d4:	00008067          	ret
    800071d8:	00058513          	mv	a0,a1
    800071dc:	00008067          	ret

00000000800071e0 <fdt_get_size>:
    800071e0:	01452503          	lw	a0,20(a0)
    800071e4:	00063023          	sd	zero,0(a2)
    800071e8:	06a05463          	blez	a0,80007250 <fdt_get_size+0x70>
    800071ec:	02051793          	sll	a5,a0,0x20
    800071f0:	01e7d513          	srl	a0,a5,0x1e
    800071f4:	ff0108b7          	lui	a7,0xff010
    800071f8:	00ff0837          	lui	a6,0xff0
    800071fc:	00a58533          	add	a0,a1,a0
    80007200:	00000793          	li	a5,0
    80007204:	f0088893          	add	a7,a7,-256 # ffffffffff00ff00 <_end+0xffffffff7effbf00>
    80007208:	0ff80813          	add	a6,a6,255 # ff00ff <_ftext-0x7f00ff01>
    8000720c:	0005a703          	lw	a4,0(a1)
    80007210:	02079693          	sll	a3,a5,0x20
    80007214:	00458593          	add	a1,a1,4
    80007218:	0087179b          	sllw	a5,a4,0x8
    8000721c:	0087571b          	srlw	a4,a4,0x8
    80007220:	01077733          	and	a4,a4,a6
    80007224:	0117f7b3          	and	a5,a5,a7
    80007228:	00e7e7b3          	or	a5,a5,a4
    8000722c:	0107971b          	sllw	a4,a5,0x10
    80007230:	0107d79b          	srlw	a5,a5,0x10
    80007234:	00f767b3          	or	a5,a4,a5
    80007238:	02079793          	sll	a5,a5,0x20
    8000723c:	0207d793          	srl	a5,a5,0x20
    80007240:	00d787b3          	add	a5,a5,a3
    80007244:	fca594e3          	bne	a1,a0,8000720c <fdt_get_size+0x2c>
    80007248:	00f63023          	sd	a5,0(a2)
    8000724c:	00008067          	ret
    80007250:	00058513          	mv	a0,a1
    80007254:	00008067          	ret

0000000080007258 <fdt_get_value>:
    80007258:	01053783          	ld	a5,16(a0)
    8000725c:	02059713          	sll	a4,a1,0x20
    80007260:	01e75593          	srl	a1,a4,0x1e
    80007264:	00b787b3          	add	a5,a5,a1
    80007268:	0007a703          	lw	a4,0(a5)
    8000726c:	ff010637          	lui	a2,0xff010
    80007270:	00ff06b7          	lui	a3,0xff0
    80007274:	0087179b          	sllw	a5,a4,0x8
    80007278:	f0060613          	add	a2,a2,-256 # ffffffffff00ff00 <_end+0xffffffff7effbf00>
    8000727c:	0ff68693          	add	a3,a3,255 # ff00ff <_ftext-0x7f00ff01>
    80007280:	0087571b          	srlw	a4,a4,0x8
    80007284:	00c7f7b3          	and	a5,a5,a2
    80007288:	00d77733          	and	a4,a4,a3
    8000728c:	00e7e7b3          	or	a5,a5,a4
    80007290:	0107951b          	sllw	a0,a5,0x10
    80007294:	0107d79b          	srlw	a5,a5,0x10
    80007298:	00f56533          	or	a0,a0,a5
    8000729c:	0005051b          	sext.w	a0,a0
    800072a0:	00008067          	ret

00000000800072a4 <fdt_string_list_index>:
    800072a4:	fd010113          	add	sp,sp,-48
    800072a8:	01852783          	lw	a5,24(a0)
    800072ac:	02813023          	sd	s0,32(sp)
    800072b0:	01053403          	ld	s0,16(a0)
    800072b4:	01313423          	sd	s3,8(sp)
    800072b8:	02113423          	sd	ra,40(sp)
    800072bc:	00913c23          	sd	s1,24(sp)
    800072c0:	00f409b3          	add	s3,s0,a5
    800072c4:	08f05463          	blez	a5,8000734c <fdt_string_list_index+0xa8>
    800072c8:	01213823          	sd	s2,16(sp)
    800072cc:	00000493          	li	s1,0
    800072d0:	00058913          	mv	s2,a1
    800072d4:	01c0006f          	j	800072f0 <fdt_string_list_index+0x4c>
    800072d8:	0e0050ef          	jal	8000c3b8 <strlen>
    800072dc:	00150513          	add	a0,a0,1
    800072e0:	00a40433          	add	s0,s0,a0
    800072e4:	408987b3          	sub	a5,s3,s0
    800072e8:	0014849b          	addw	s1,s1,1
    800072ec:	02f05e63          	blez	a5,80007328 <fdt_string_list_index+0x84>
    800072f0:	00090593          	mv	a1,s2
    800072f4:	00040513          	mv	a0,s0
    800072f8:	0e8050ef          	jal	8000c3e0 <strcmp>
    800072fc:	00050793          	mv	a5,a0
    80007300:	00040513          	mv	a0,s0
    80007304:	fc079ae3          	bnez	a5,800072d8 <fdt_string_list_index+0x34>
    80007308:	01013903          	ld	s2,16(sp)
    8000730c:	02813083          	ld	ra,40(sp)
    80007310:	02013403          	ld	s0,32(sp)
    80007314:	00813983          	ld	s3,8(sp)
    80007318:	00048513          	mv	a0,s1
    8000731c:	01813483          	ld	s1,24(sp)
    80007320:	03010113          	add	sp,sp,48
    80007324:	00008067          	ret
    80007328:	02813083          	ld	ra,40(sp)
    8000732c:	02013403          	ld	s0,32(sp)
    80007330:	fff00493          	li	s1,-1
    80007334:	01013903          	ld	s2,16(sp)
    80007338:	00813983          	ld	s3,8(sp)
    8000733c:	00048513          	mv	a0,s1
    80007340:	01813483          	ld	s1,24(sp)
    80007344:	03010113          	add	sp,sp,48
    80007348:	00008067          	ret
    8000734c:	fff00493          	li	s1,-1
    80007350:	fbdff06f          	j	8000730c <fdt_string_list_index+0x68>

0000000080007354 <query_mem>:
    80007354:	fb010113          	add	sp,sp,-80
    80007358:	fffff797          	auipc	a5,0xfffff
    8000735c:	a3878793          	add	a5,a5,-1480 # 80005d90 <mem_open>
    80007360:	00f13c23          	sd	a5,24(sp)
    80007364:	ffffe797          	auipc	a5,0xffffe
    80007368:	5e878793          	add	a5,a5,1512 # 8000594c <mem_prop>
    8000736c:	02f13023          	sd	a5,32(sp)
    80007370:	01810593          	add	a1,sp,24
    80007374:	fffff797          	auipc	a5,0xfffff
    80007378:	0dc78793          	add	a5,a5,220 # 80006450 <mem_done>
    8000737c:	02f13423          	sd	a5,40(sp)
    80007380:	04113423          	sd	ra,72(sp)
    80007384:	0000c797          	auipc	a5,0xc
    80007388:	d007b623          	sd	zero,-756(a5) # 80013090 <mem_size>
    8000738c:	02013823          	sd	zero,48(sp)
    80007390:	02213c23          	sd	sp,56(sp)
    80007394:	c59ff0ef          	jal	80006fec <fdt_scan>
    80007398:	0000c797          	auipc	a5,0xc
    8000739c:	cf87b783          	ld	a5,-776(a5) # 80013090 <mem_size>
    800073a0:	00078863          	beqz	a5,800073b0 <query_mem+0x5c>
    800073a4:	04813083          	ld	ra,72(sp)
    800073a8:	05010113          	add	sp,sp,80
    800073ac:	00008067          	ret
    800073b0:	00006517          	auipc	a0,0x6
    800073b4:	27050513          	add	a0,a0,624 # 8000d620 <softfloat_countLeadingZeros8+0x340>
    800073b8:	00007697          	auipc	a3,0x7
    800073bc:	ae068693          	add	a3,a3,-1312 # 8000de98 <softfloat_countLeadingZeros8+0xbb8>
    800073c0:	0d100613          	li	a2,209
    800073c4:	00006597          	auipc	a1,0x6
    800073c8:	7b458593          	add	a1,a1,1972 # 8000db78 <softfloat_countLeadingZeros8+0x898>
    800073cc:	fd1fc0ef          	jal	8000439c <printm>
    800073d0:	00010537          	lui	a0,0x10
    800073d4:	fff50513          	add	a0,a0,-1 # ffff <_ftext-0x7fff0001>
    800073d8:	89cfd0ef          	jal	80004474 <poweroff>

00000000800073dc <query_harts>:
    800073dc:	fa010113          	add	sp,sp,-96
    800073e0:	ffffe717          	auipc	a4,0xffffe
    800073e4:	40070713          	add	a4,a4,1024 # 800057e0 <hart_open>
    800073e8:	02e13423          	sd	a4,40(sp)
    800073ec:	00000717          	auipc	a4,0x0
    800073f0:	9d070713          	add	a4,a4,-1584 # 80006dbc <hart_prop>
    800073f4:	02e13823          	sd	a4,48(sp)
    800073f8:	fffff717          	auipc	a4,0xfffff
    800073fc:	e2470713          	add	a4,a4,-476 # 8000621c <hart_done>
    80007400:	00810793          	add	a5,sp,8
    80007404:	02e13c23          	sd	a4,56(sp)
    80007408:	02810593          	add	a1,sp,40
    8000740c:	ffffe717          	auipc	a4,0xffffe
    80007410:	3fc70713          	add	a4,a4,1020 # 80005808 <hart_close>
    80007414:	04113c23          	sd	ra,88(sp)
    80007418:	00013423          	sd	zero,8(sp)
    8000741c:	04e13023          	sd	a4,64(sp)
    80007420:	04f13423          	sd	a5,72(sp)
    80007424:	00013823          	sd	zero,16(sp)
    80007428:	00013c23          	sd	zero,24(sp)
    8000742c:	02013023          	sd	zero,32(sp)
    80007430:	bbdff0ef          	jal	80006fec <fdt_scan>
    80007434:	f1402773          	csrr	a4,mhartid
    80007438:	0000c797          	auipc	a5,0xc
    8000743c:	c987b783          	ld	a5,-872(a5) # 800130d0 <hart_mask>
    80007440:	00e7d7b3          	srl	a5,a5,a4
    80007444:	00078863          	beqz	a5,80007454 <query_harts+0x78>
    80007448:	05813083          	ld	ra,88(sp)
    8000744c:	06010113          	add	sp,sp,96
    80007450:	00008067          	ret
    80007454:	00006517          	auipc	a0,0x6
    80007458:	1cc50513          	add	a0,a0,460 # 8000d620 <softfloat_countLeadingZeros8+0x340>
    8000745c:	00007697          	auipc	a3,0x7
    80007460:	a4c68693          	add	a3,a3,-1460 # 8000dea8 <softfloat_countLeadingZeros8+0xbc8>
    80007464:	12d00613          	li	a2,301
    80007468:	00006597          	auipc	a1,0x6
    8000746c:	71058593          	add	a1,a1,1808 # 8000db78 <softfloat_countLeadingZeros8+0x898>
    80007470:	f2dfc0ef          	jal	8000439c <printm>
    80007474:	00010537          	lui	a0,0x10
    80007478:	fff50513          	add	a0,a0,-1 # ffff <_ftext-0x7fff0001>
    8000747c:	ff9fc0ef          	jal	80004474 <poweroff>

0000000080007480 <query_clint>:
    80007480:	fa010113          	add	sp,sp,-96
    80007484:	ffffe797          	auipc	a5,0xffffe
    80007488:	3b478793          	add	a5,a5,948 # 80005838 <clint_open>
    8000748c:	02f13423          	sd	a5,40(sp)
    80007490:	fffff797          	auipc	a5,0xfffff
    80007494:	3d078793          	add	a5,a5,976 # 80006860 <clint_prop>
    80007498:	02f13823          	sd	a5,48(sp)
    8000749c:	fffff797          	auipc	a5,0xfffff
    800074a0:	90478793          	add	a5,a5,-1788 # 80005da0 <clint_done>
    800074a4:	02f13c23          	sd	a5,56(sp)
    800074a8:	02810593          	add	a1,sp,40
    800074ac:	00810793          	add	a5,sp,8
    800074b0:	04f13423          	sd	a5,72(sp)
    800074b4:	04113c23          	sd	ra,88(sp)
    800074b8:	04013023          	sd	zero,64(sp)
    800074bc:	02012223          	sw	zero,36(sp)
    800074c0:	b2dff0ef          	jal	80006fec <fdt_scan>
    800074c4:	02412783          	lw	a5,36(sp)
    800074c8:	00078863          	beqz	a5,800074d8 <query_clint+0x58>
    800074cc:	05813083          	ld	ra,88(sp)
    800074d0:	06010113          	add	sp,sp,96
    800074d4:	00008067          	ret
    800074d8:	00006517          	auipc	a0,0x6
    800074dc:	14850513          	add	a0,a0,328 # 8000d620 <softfloat_countLeadingZeros8+0x340>
    800074e0:	00007697          	auipc	a3,0x7
    800074e4:	9f068693          	add	a3,a3,-1552 # 8000ded0 <softfloat_countLeadingZeros8+0xbf0>
    800074e8:	17a00613          	li	a2,378
    800074ec:	00006597          	auipc	a1,0x6
    800074f0:	68c58593          	add	a1,a1,1676 # 8000db78 <softfloat_countLeadingZeros8+0x898>
    800074f4:	ea9fc0ef          	jal	8000439c <printm>
    800074f8:	00010537          	lui	a0,0x10
    800074fc:	fff50513          	add	a0,a0,-1 # ffff <_ftext-0x7fff0001>
    80007500:	f75fc0ef          	jal	80004474 <poweroff>

0000000080007504 <query_plic>:
    80007504:	fa010113          	add	sp,sp,-96
    80007508:	ffffe797          	auipc	a5,0xffffe
    8000750c:	34078793          	add	a5,a5,832 # 80005848 <plic_open>
    80007510:	00f13023          	sd	a5,0(sp)
    80007514:	fffff797          	auipc	a5,0xfffff
    80007518:	69478793          	add	a5,a5,1684 # 80006ba8 <plic_prop>
    8000751c:	00f13423          	sd	a5,8(sp)
    80007520:	fffff797          	auipc	a5,0xfffff
    80007524:	a2478793          	add	a5,a5,-1500 # 80005f44 <plic_done>
    80007528:	00f13823          	sd	a5,16(sp)
    8000752c:	00010593          	mv	a1,sp
    80007530:	02810793          	add	a5,sp,40
    80007534:	04113c23          	sd	ra,88(sp)
    80007538:	00013c23          	sd	zero,24(sp)
    8000753c:	02f13023          	sd	a5,32(sp)
    80007540:	04012223          	sw	zero,68(sp)
    80007544:	aa9ff0ef          	jal	80006fec <fdt_scan>
    80007548:	05813083          	ld	ra,88(sp)
    8000754c:	06010113          	add	sp,sp,96
    80007550:	00008067          	ret

0000000080007554 <filter_plic>:
    80007554:	fa010113          	add	sp,sp,-96
    80007558:	ffffe797          	auipc	a5,0xffffe
    8000755c:	2f078793          	add	a5,a5,752 # 80005848 <plic_open>
    80007560:	00f13023          	sd	a5,0(sp)
    80007564:	fffff797          	auipc	a5,0xfffff
    80007568:	64478793          	add	a5,a5,1604 # 80006ba8 <plic_prop>
    8000756c:	00f13423          	sd	a5,8(sp)
    80007570:	ffffe797          	auipc	a5,0xffffe
    80007574:	2e878793          	add	a5,a5,744 # 80005858 <plic_redact>
    80007578:	00f13823          	sd	a5,16(sp)
    8000757c:	00010593          	mv	a1,sp
    80007580:	02810793          	add	a5,sp,40
    80007584:	04113c23          	sd	ra,88(sp)
    80007588:	00013c23          	sd	zero,24(sp)
    8000758c:	02f13023          	sd	a5,32(sp)
    80007590:	04012223          	sw	zero,68(sp)
    80007594:	a59ff0ef          	jal	80006fec <fdt_scan>
    80007598:	05813083          	ld	ra,88(sp)
    8000759c:	06010113          	add	sp,sp,96
    800075a0:	00008067          	ret

00000000800075a4 <filter_compat>:
    800075a4:	fb010113          	add	sp,sp,-80
    800075a8:	ffffe697          	auipc	a3,0xffffe
    800075ac:	33068693          	add	a3,a3,816 # 800058d8 <compat_open>
    800075b0:	00d13c23          	sd	a3,24(sp)
    800075b4:	fffff697          	auipc	a3,0xfffff
    800075b8:	07868693          	add	a3,a3,120 # 8000662c <compat_prop>
    800075bc:	02d13023          	sd	a3,32(sp)
    800075c0:	3e700793          	li	a5,999
    800075c4:	ffffe697          	auipc	a3,0xffffe
    800075c8:	32468693          	add	a3,a3,804 # 800058e8 <compat_close>
    800075cc:	00058713          	mv	a4,a1
    800075d0:	02d13823          	sd	a3,48(sp)
    800075d4:	02079793          	sll	a5,a5,0x20
    800075d8:	00810693          	add	a3,sp,8
    800075dc:	01810593          	add	a1,sp,24
    800075e0:	04113423          	sd	ra,72(sp)
    800075e4:	02013423          	sd	zero,40(sp)
    800075e8:	02d13c23          	sd	a3,56(sp)
    800075ec:	00e13423          	sd	a4,8(sp)
    800075f0:	00f13823          	sd	a5,16(sp)
    800075f4:	9f9ff0ef          	jal	80006fec <fdt_scan>
    800075f8:	04813083          	ld	ra,72(sp)
    800075fc:	05010113          	add	sp,sp,80
    80007600:	00008067          	ret

0000000080007604 <query_chosen>:
    80007604:	fb010113          	add	sp,sp,-80
    80007608:	ffffe797          	auipc	a5,0xffffe
    8000760c:	3e878793          	add	a5,a5,1000 # 800059f0 <chosen_open>
    80007610:	00f13c23          	sd	a5,24(sp)
    80007614:	ffffe797          	auipc	a5,0xffffe
    80007618:	30078793          	add	a5,a5,768 # 80005914 <chosen_close>
    8000761c:	02f13823          	sd	a5,48(sp)
    80007620:	01810593          	add	a1,sp,24
    80007624:	fffff797          	auipc	a5,0xfffff
    80007628:	3e878793          	add	a5,a5,1000 # 80006a0c <chosen_prop>
    8000762c:	04113423          	sd	ra,72(sp)
    80007630:	02f13023          	sd	a5,32(sp)
    80007634:	02013423          	sd	zero,40(sp)
    80007638:	00013023          	sd	zero,0(sp)
    8000763c:	02213c23          	sd	sp,56(sp)
    80007640:	00013423          	sd	zero,8(sp)
    80007644:	00013823          	sd	zero,16(sp)
    80007648:	9a5ff0ef          	jal	80006fec <fdt_scan>
    8000764c:	00813783          	ld	a5,8(sp)
    80007650:	04813083          	ld	ra,72(sp)
    80007654:	0000c717          	auipc	a4,0xc
    80007658:	a0f73e23          	sd	a5,-1508(a4) # 80013070 <kernel_start>
    8000765c:	01013783          	ld	a5,16(sp)
    80007660:	0000c717          	auipc	a4,0xc
    80007664:	a0f73423          	sd	a5,-1528(a4) # 80013068 <kernel_end>
    80007668:	05010113          	add	sp,sp,80
    8000766c:	00008067          	ret

0000000080007670 <filter_harts>:
    80007670:	fa010113          	add	sp,sp,-96
    80007674:	ffffe717          	auipc	a4,0xffffe
    80007678:	2c070713          	add	a4,a4,704 # 80005934 <hart_filter_open>
    8000767c:	02e13423          	sd	a4,40(sp)
    80007680:	fffff717          	auipc	a4,0xfffff
    80007684:	06870713          	add	a4,a4,104 # 800066e8 <hart_filter_prop>
    80007688:	04113c23          	sd	ra,88(sp)
    8000768c:	02e13823          	sd	a4,48(sp)
    80007690:	fffff717          	auipc	a4,0xfffff
    80007694:	c5870713          	add	a4,a4,-936 # 800062e8 <hart_filter_done>
    80007698:	00058793          	mv	a5,a1
    8000769c:	02e13c23          	sd	a4,56(sp)
    800076a0:	0005b023          	sd	zero,0(a1)
    800076a4:	00810713          	add	a4,sp,8
    800076a8:	02810593          	add	a1,sp,40
    800076ac:	04013023          	sd	zero,64(sp)
    800076b0:	04e13423          	sd	a4,72(sp)
    800076b4:	02f13023          	sd	a5,32(sp)
    800076b8:	935ff0ef          	jal	80006fec <fdt_scan>
    800076bc:	05813083          	ld	ra,88(sp)
    800076c0:	06010113          	add	sp,sp,96
    800076c4:	00008067          	ret

00000000800076c8 <truly_illegal_insn.constprop.0>:
    800076c8:	d15fc06f          	j	800043dc <redirect_trap>

00000000800076cc <illegal_insn_trap>:
    800076cc:	00058813          	mv	a6,a1
    800076d0:	00060793          	mv	a5,a2
    800076d4:	300025f3          	csrr	a1,mstatus
    800076d8:	34302773          	csrr	a4,mtval
    800076dc:	00300893          	li	a7,3
    800076e0:	00377313          	and	t1,a4,3
    800076e4:	03131a63          	bne	t1,a7,80007718 <illegal_insn_trap+0x4c>
    800076e8:	00478693          	add	a3,a5,4
    800076ec:	34169073          	csrw	mepc,a3
    800076f0:	00006317          	auipc	t1,0x6
    800076f4:	92c30313          	add	t1,t1,-1748 # 8000d01c <illegal_insn_trap_table>
    800076f8:	07c77613          	and	a2,a4,124
    800076fc:	00660633          	add	a2,a2,t1
    80007700:	00062883          	lw	a7,0(a2)
    80007704:	00058693          	mv	a3,a1
    80007708:	00078613          	mv	a2,a5
    8000770c:	006888b3          	add	a7,a7,t1
    80007710:	00080593          	mv	a1,a6
    80007714:	00088067          	jr	a7
    80007718:	00070863          	beqz	a4,80007728 <illegal_insn_trap+0x5c>
    8000771c:	00070613          	mv	a2,a4
    80007720:	00078513          	mv	a0,a5
    80007724:	fa5ff06f          	j	800076c8 <truly_illegal_insn.constprop.0>
    80007728:	000a05b7          	lui	a1,0xa0
    8000772c:	3005a6f3          	csrrs	a3,mstatus,a1
    80007730:	00066703          	lwu	a4,0(a2)
    80007734:	30069073          	csrw	mstatus,a3
    80007738:	00377613          	and	a2,a4,3
    8000773c:	00068593          	mv	a1,a3
    80007740:	fb1604e3          	beq	a2,a7,800076e8 <illegal_insn_trap+0x1c>
    80007744:	fd9ff06f          	j	8000771c <illegal_insn_trap+0x50>

0000000080007748 <truly_illegal_insn>:
    80007748:	00060513          	mv	a0,a2
    8000774c:	00068593          	mv	a1,a3
    80007750:	00070613          	mv	a2,a4
    80007754:	c89fc06f          	j	800043dc <redirect_trap>

0000000080007758 <emulate_system_opcode>:
    80007758:	00c75793          	srl	a5,a4,0xc
    8000775c:	00002837          	lui	a6,0x2
    80007760:	00068593          	mv	a1,a3
    80007764:	80080813          	add	a6,a6,-2048 # 1800 <_ftext-0x7fffe800>
    80007768:	0f87f693          	and	a3,a5,248
    8000776c:	00d506b3          	add	a3,a0,a3
    80007770:	00f75e13          	srl	t3,a4,0xf
    80007774:	0105f8b3          	and	a7,a1,a6
    80007778:	7ff00313          	li	t1,2047
    8000777c:	00050f13          	mv	t5,a0
    80007780:	0006be83          	ld	t4,0(a3)
    80007784:	00060513          	mv	a0,a2
    80007788:	01fe7e13          	and	t3,t3,31
    8000778c:	0147581b          	srlw	a6,a4,0x14
    80007790:	07136663          	bltu	t1,a7,800077fc <emulate_system_opcode+0xa4>
    80007794:	10602673          	csrr	a2,scounteren
    80007798:	000016b7          	lui	a3,0x1
    8000779c:	b0368693          	add	a3,a3,-1277 # b03 <_ftext-0x7ffff4fd>
    800077a0:	16d80e63          	beq	a6,a3,8000791c <emulate_system_opcode+0x1c4>
    800077a4:	0706f463          	bgeu	a3,a6,8000780c <emulate_system_opcode+0xb4>
    800077a8:	000016b7          	lui	a3,0x1
    800077ac:	c0168693          	add	a3,a3,-1023 # c01 <_ftext-0x7ffff3ff>
    800077b0:	18d80c63          	beq	a6,a3,80007948 <emulate_system_opcode+0x1f0>
    800077b4:	2d06ee63          	bltu	a3,a6,80007a90 <emulate_system_opcode+0x338>
    800077b8:	000016b7          	lui	a3,0x1
    800077bc:	b0468693          	add	a3,a3,-1276 # b04 <_ftext-0x7ffff4fc>
    800077c0:	2ad80263          	beq	a6,a3,80007a64 <emulate_system_opcode+0x30c>
    800077c4:	000016b7          	lui	a3,0x1
    800077c8:	c0068693          	add	a3,a3,-1024 # c00 <_ftext-0x7ffff400>
    800077cc:	0ed81863          	bne	a6,a3,800078bc <emulate_system_opcode+0x164>
    800077d0:	00167613          	and	a2,a2,1
    800077d4:	0e060463          	beqz	a2,800078bc <emulate_system_opcode+0x164>
    800077d8:	b00026f3          	csrr	a3,mcycle
    800077dc:	0077f793          	and	a5,a5,7
    800077e0:	00006617          	auipc	a2,0x6
    800077e4:	8bc60613          	add	a2,a2,-1860 # 8000d09c <illegal_insn_trap_table+0x80>
    800077e8:	00279793          	sll	a5,a5,0x2
    800077ec:	00c787b3          	add	a5,a5,a2
    800077f0:	0007a783          	lw	a5,0(a5)
    800077f4:	00c787b3          	add	a5,a5,a2
    800077f8:	00078067          	jr	a5
    800077fc:	000016b7          	lui	a3,0x1
    80007800:	b0368693          	add	a3,a3,-1277 # b03 <_ftext-0x7ffff4fd>
    80007804:	12d80063          	beq	a6,a3,80007924 <emulate_system_opcode+0x1cc>
    80007808:	0906e663          	bltu	a3,a6,80007894 <emulate_system_opcode+0x13c>
    8000780c:	00300693          	li	a3,3
    80007810:	22d80263          	beq	a6,a3,80007a34 <emulate_system_opcode+0x2dc>
    80007814:	0506e663          	bltu	a3,a6,80007860 <emulate_system_opcode+0x108>
    80007818:	00100693          	li	a3,1
    8000781c:	0cd80663          	beq	a6,a3,800078e8 <emulate_system_opcode+0x190>
    80007820:	00200693          	li	a3,2
    80007824:	08d81c63          	bne	a6,a3,800078bc <emulate_system_opcode+0x164>
    80007828:	00d5d693          	srl	a3,a1,0xd
    8000782c:	0036f693          	and	a3,a3,3
    80007830:	08068663          	beqz	a3,800078bc <emulate_system_opcode+0x164>
    80007834:	0077f793          	and	a5,a5,7
    80007838:	00006897          	auipc	a7,0x6
    8000783c:	88488893          	add	a7,a7,-1916 # 8000d0bc <illegal_insn_trap_table+0xa0>
    80007840:	00279793          	sll	a5,a5,0x2
    80007844:	011787b3          	add	a5,a5,a7
    80007848:	0007a603          	lw	a2,0(a5)
    8000784c:	4052569b          	sraw	a3,tp,0x5
    80007850:	0002079b          	sext.w	a5,tp
    80007854:	01160633          	add	a2,a2,a7
    80007858:	0076f693          	and	a3,a3,7
    8000785c:	00060067          	jr	a2
    80007860:	32300693          	li	a3,803
    80007864:	06d80063          	beq	a6,a3,800078c4 <emulate_system_opcode+0x16c>
    80007868:	32400693          	li	a3,804
    8000786c:	04d81863          	bne	a6,a3,800078bc <emulate_system_opcode+0x164>
    80007870:	324026f3          	csrr	a3,mhpmevent4
    80007874:	0077f793          	and	a5,a5,7
    80007878:	00006617          	auipc	a2,0x6
    8000787c:	86460613          	add	a2,a2,-1948 # 8000d0dc <illegal_insn_trap_table+0xc0>
    80007880:	00279793          	sll	a5,a5,0x2
    80007884:	00c787b3          	add	a5,a5,a2
    80007888:	0007a783          	lw	a5,0(a5)
    8000788c:	00c787b3          	add	a5,a5,a2
    80007890:	00078067          	jr	a5
    80007894:	000016b7          	lui	a3,0x1
    80007898:	c0168693          	add	a3,a3,-1023 # c01 <_ftext-0x7ffff3ff>
    8000789c:	0ad80a63          	beq	a6,a3,80007950 <emulate_system_opcode+0x1f8>
    800078a0:	2306e463          	bltu	a3,a6,80007ac8 <emulate_system_opcode+0x370>
    800078a4:	000016b7          	lui	a3,0x1
    800078a8:	b0468693          	add	a3,a3,-1276 # b04 <_ftext-0x7ffff4fc>
    800078ac:	1cd80063          	beq	a6,a3,80007a6c <emulate_system_opcode+0x314>
    800078b0:	000016b7          	lui	a3,0x1
    800078b4:	c0068693          	add	a3,a3,-1024 # c00 <_ftext-0x7ffff400>
    800078b8:	f2d800e3          	beq	a6,a3,800077d8 <emulate_system_opcode+0x80>
    800078bc:	00070613          	mv	a2,a4
    800078c0:	e09ff06f          	j	800076c8 <truly_illegal_insn.constprop.0>
    800078c4:	323026f3          	csrr	a3,mhpmevent3
    800078c8:	0077f793          	and	a5,a5,7
    800078cc:	00006617          	auipc	a2,0x6
    800078d0:	83060613          	add	a2,a2,-2000 # 8000d0fc <illegal_insn_trap_table+0xe0>
    800078d4:	00279793          	sll	a5,a5,0x2
    800078d8:	00c787b3          	add	a5,a5,a2
    800078dc:	0007a783          	lw	a5,0(a5)
    800078e0:	00c787b3          	add	a5,a5,a2
    800078e4:	00078067          	jr	a5
    800078e8:	00d5d693          	srl	a3,a1,0xd
    800078ec:	0036f693          	and	a3,a3,3
    800078f0:	fc0686e3          	beqz	a3,800078bc <emulate_system_opcode+0x164>
    800078f4:	0077f793          	and	a5,a5,7
    800078f8:	00006897          	auipc	a7,0x6
    800078fc:	82488893          	add	a7,a7,-2012 # 8000d11c <illegal_insn_trap_table+0x100>
    80007900:	00279793          	sll	a5,a5,0x2
    80007904:	011787b3          	add	a5,a5,a7
    80007908:	0007a783          	lw	a5,0(a5)
    8000790c:	0002061b          	sext.w	a2,tp
    80007910:	01f27693          	and	a3,tp,31
    80007914:	011787b3          	add	a5,a5,a7
    80007918:	00078067          	jr	a5
    8000791c:	00867613          	and	a2,a2,8
    80007920:	f8060ee3          	beqz	a2,800078bc <emulate_system_opcode+0x164>
    80007924:	b03026f3          	csrr	a3,mhpmcounter3
    80007928:	0077f793          	and	a5,a5,7
    8000792c:	00006617          	auipc	a2,0x6
    80007930:	81060613          	add	a2,a2,-2032 # 8000d13c <illegal_insn_trap_table+0x120>
    80007934:	00279793          	sll	a5,a5,0x2
    80007938:	00c787b3          	add	a5,a5,a2
    8000793c:	0007a783          	lw	a5,0(a5)
    80007940:	00c787b3          	add	a5,a5,a2
    80007944:	00078067          	jr	a5
    80007948:	00267613          	and	a2,a2,2
    8000794c:	f60608e3          	beqz	a2,800078bc <emulate_system_opcode+0x164>
    80007950:	0077f793          	and	a5,a5,7
    80007954:	00006617          	auipc	a2,0x6
    80007958:	80860613          	add	a2,a2,-2040 # 8000d15c <illegal_insn_trap_table+0x140>
    8000795c:	00279793          	sll	a5,a5,0x2
    80007960:	00c787b3          	add	a5,a5,a2
    80007964:	0007a783          	lw	a5,0(a5)
    80007968:	0000b697          	auipc	a3,0xb
    8000796c:	7206b683          	ld	a3,1824(a3) # 80013088 <mtime>
    80007970:	0006b683          	ld	a3,0(a3)
    80007974:	00c787b3          	add	a5,a5,a2
    80007978:	00078067          	jr	a5
    8000797c:	fffe4e93          	not	t4,t3
    80007980:	00defeb3          	and	t4,t4,a3
    80007984:	040e0863          	beqz	t3,800079d4 <emulate_system_opcode+0x27c>
    80007988:	32400793          	li	a5,804
    8000798c:	18f80863          	beq	a6,a5,80007b1c <emulate_system_opcode+0x3c4>
    80007990:	32400793          	li	a5,804
    80007994:	0707e863          	bltu	a5,a6,80007a04 <emulate_system_opcode+0x2ac>
    80007998:	00300793          	li	a5,3
    8000799c:	1af80863          	beq	a6,a5,80007b4c <emulate_system_opcode+0x3f4>
    800079a0:	1707e463          	bltu	a5,a6,80007b08 <emulate_system_opcode+0x3b0>
    800079a4:	00100793          	li	a5,1
    800079a8:	12f80c63          	beq	a6,a5,80007ae0 <emulate_system_opcode+0x388>
    800079ac:	00200613          	li	a2,2
    800079b0:	0002079b          	sext.w	a5,tp
    800079b4:	f0c814e3          	bne	a6,a2,800078bc <emulate_system_opcode+0x164>
    800079b8:	005e9e93          	sll	t4,t4,0x5
    800079bc:	01f7f793          	and	a5,a5,31
    800079c0:	01d7e7b3          	or	a5,a5,t4
    800079c4:	0ff7f793          	zext.b	a5,a5
    800079c8:	00f00233          	add	tp,zero,a5
    800079cc:	000067b7          	lui	a5,0x6
    800079d0:	3007a7f3          	csrrs	a5,mstatus,a5
    800079d4:	00475713          	srl	a4,a4,0x4
    800079d8:	0f877713          	and	a4,a4,248
    800079dc:	00ef0533          	add	a0,t5,a4
    800079e0:	00d53023          	sd	a3,0(a0)
    800079e4:	00008067          	ret
    800079e8:	00de6eb3          	or	t4,t3,a3
    800079ec:	f99ff06f          	j	80007984 <emulate_system_opcode+0x22c>
    800079f0:	fffece93          	not	t4,t4
    800079f4:	00defeb3          	and	t4,t4,a3
    800079f8:	f8dff06f          	j	80007984 <emulate_system_opcode+0x22c>
    800079fc:	00deeeb3          	or	t4,t4,a3
    80007a00:	f85ff06f          	j	80007984 <emulate_system_opcode+0x22c>
    80007a04:	000017b7          	lui	a5,0x1
    80007a08:	b0478793          	add	a5,a5,-1276 # b04 <_ftext-0x7ffff4fc>
    80007a0c:	12f80a63          	beq	a6,a5,80007b40 <emulate_system_opcode+0x3e8>
    80007a10:	1107fe63          	bgeu	a5,a6,80007b2c <emulate_system_opcode+0x3d4>
    80007a14:	000017b7          	lui	a5,0x1
    80007a18:	c0078793          	add	a5,a5,-1024 # c00 <_ftext-0x7ffff400>
    80007a1c:	0af80e63          	beq	a6,a5,80007ad8 <emulate_system_opcode+0x380>
    80007a20:	000017b7          	lui	a5,0x1
    80007a24:	c0278793          	add	a5,a5,-1022 # c02 <_ftext-0x7ffff3fe>
    80007a28:	e8f81ae3          	bne	a6,a5,800078bc <emulate_system_opcode+0x164>
    80007a2c:	b02e9073          	csrw	minstret,t4
    80007a30:	fa5ff06f          	j	800079d4 <emulate_system_opcode+0x27c>
    80007a34:	00d5d693          	srl	a3,a1,0xd
    80007a38:	0036f693          	and	a3,a3,3
    80007a3c:	e80680e3          	beqz	a3,800078bc <emulate_system_opcode+0x164>
    80007a40:	0077f793          	and	a5,a5,7
    80007a44:	00005617          	auipc	a2,0x5
    80007a48:	73860613          	add	a2,a2,1848 # 8000d17c <illegal_insn_trap_table+0x160>
    80007a4c:	00279793          	sll	a5,a5,0x2
    80007a50:	00c787b3          	add	a5,a5,a2
    80007a54:	0007a783          	lw	a5,0(a5)
    80007a58:	0ff27693          	zext.b	a3,tp
    80007a5c:	00c787b3          	add	a5,a5,a2
    80007a60:	00078067          	jr	a5
    80007a64:	01067613          	and	a2,a2,16
    80007a68:	e4060ae3          	beqz	a2,800078bc <emulate_system_opcode+0x164>
    80007a6c:	b04026f3          	csrr	a3,mhpmcounter4
    80007a70:	0077f793          	and	a5,a5,7
    80007a74:	00005617          	auipc	a2,0x5
    80007a78:	72860613          	add	a2,a2,1832 # 8000d19c <illegal_insn_trap_table+0x180>
    80007a7c:	00279793          	sll	a5,a5,0x2
    80007a80:	00c787b3          	add	a5,a5,a2
    80007a84:	0007a783          	lw	a5,0(a5)
    80007a88:	00c787b3          	add	a5,a5,a2
    80007a8c:	00078067          	jr	a5
    80007a90:	000016b7          	lui	a3,0x1
    80007a94:	c0268693          	add	a3,a3,-1022 # c02 <_ftext-0x7ffff3fe>
    80007a98:	e2d812e3          	bne	a6,a3,800078bc <emulate_system_opcode+0x164>
    80007a9c:	00467613          	and	a2,a2,4
    80007aa0:	e0060ee3          	beqz	a2,800078bc <emulate_system_opcode+0x164>
    80007aa4:	b02026f3          	csrr	a3,minstret
    80007aa8:	0077f793          	and	a5,a5,7
    80007aac:	00005617          	auipc	a2,0x5
    80007ab0:	71060613          	add	a2,a2,1808 # 8000d1bc <illegal_insn_trap_table+0x1a0>
    80007ab4:	00279793          	sll	a5,a5,0x2
    80007ab8:	00c787b3          	add	a5,a5,a2
    80007abc:	0007a783          	lw	a5,0(a5)
    80007ac0:	00c787b3          	add	a5,a5,a2
    80007ac4:	00078067          	jr	a5
    80007ac8:	000016b7          	lui	a3,0x1
    80007acc:	c0268693          	add	a3,a3,-1022 # c02 <_ftext-0x7ffff3fe>
    80007ad0:	fcd80ae3          	beq	a6,a3,80007aa4 <emulate_system_opcode+0x34c>
    80007ad4:	de9ff06f          	j	800078bc <emulate_system_opcode+0x164>
    80007ad8:	b00e9073          	csrw	mcycle,t4
    80007adc:	ef9ff06f          	j	800079d4 <emulate_system_opcode+0x27c>
    80007ae0:	0002061b          	sext.w	a2,tp
    80007ae4:	01fefe93          	and	t4,t4,31
    80007ae8:	0e067613          	and	a2,a2,224
    80007aec:	01d66633          	or	a2,a2,t4
    80007af0:	00c00233          	add	tp,zero,a2
    80007af4:	000067b7          	lui	a5,0x6
    80007af8:	3007a7f3          	csrrs	a5,mstatus,a5
    80007afc:	ed9ff06f          	j	800079d4 <emulate_system_opcode+0x27c>
    80007b00:	000e0e93          	mv	t4,t3
    80007b04:	e85ff06f          	j	80007988 <emulate_system_opcode+0x230>
    80007b08:	32300793          	li	a5,803
    80007b0c:	daf818e3          	bne	a6,a5,800078bc <emulate_system_opcode+0x164>
    80007b10:	323e9073          	csrw	mhpmevent3,t4
    80007b14:	ec1ff06f          	j	800079d4 <emulate_system_opcode+0x27c>
    80007b18:	000e0e93          	mv	t4,t3
    80007b1c:	324e9073          	csrw	mhpmevent4,t4
    80007b20:	eb5ff06f          	j	800079d4 <emulate_system_opcode+0x27c>
    80007b24:	000e0e93          	mv	t4,t3
    80007b28:	e69ff06f          	j	80007990 <emulate_system_opcode+0x238>
    80007b2c:	000017b7          	lui	a5,0x1
    80007b30:	b0378793          	add	a5,a5,-1277 # b03 <_ftext-0x7ffff4fd>
    80007b34:	d8f814e3          	bne	a6,a5,800078bc <emulate_system_opcode+0x164>
    80007b38:	b03e9073          	csrw	mhpmcounter3,t4
    80007b3c:	e99ff06f          	j	800079d4 <emulate_system_opcode+0x27c>
    80007b40:	b04e9073          	csrw	mhpmcounter4,t4
    80007b44:	e91ff06f          	j	800079d4 <emulate_system_opcode+0x27c>
    80007b48:	000e0e93          	mv	t4,t3
    80007b4c:	0ffefe93          	zext.b	t4,t4
    80007b50:	01d00233          	add	tp,zero,t4
    80007b54:	000067b7          	lui	a5,0x6
    80007b58:	3007a7f3          	csrrs	a5,mstatus,a5
    80007b5c:	e79ff06f          	j	800079d4 <emulate_system_opcode+0x27c>
    80007b60:	000e0e93          	mv	t4,t3
    80007b64:	e35ff06f          	j	80007998 <emulate_system_opcode+0x240>

0000000080007b68 <emulate_fp>:
    80007b68:	00d6d793          	srl	a5,a3,0xd
    80007b6c:	0037f793          	and	a5,a5,3
    80007b70:	04078263          	beqz	a5,80007bb4 <emulate_fp+0x4c>
    80007b74:	01975793          	srl	a5,a4,0x19
    80007b78:	00005817          	auipc	a6,0x5
    80007b7c:	66480813          	add	a6,a6,1636 # 8000d1dc <fp_emulation_table>
    80007b80:	07c7f793          	and	a5,a5,124
    80007b84:	010787b3          	add	a5,a5,a6
    80007b88:	0007a783          	lw	a5,0(a5) # 6000 <_ftext-0x7fffa000>
    80007b8c:	000078b7          	lui	a7,0x7
    80007b90:	01177333          	and	t1,a4,a7
    80007b94:	01078833          	add	a6,a5,a6
    80007b98:	0ff27793          	zext.b	a5,tp
    80007b9c:	01131e63          	bne	t1,a7,80007bb8 <emulate_fp+0x50>
    80007ba0:	00879893          	sll	a7,a5,0x8
    80007ba4:	00f887b3          	add	a5,a7,a5
    80007ba8:	00078213          	mv	tp,a5
    80007bac:	00080067          	jr	a6
    80007bb0:	00078213          	mv	tp,a5
    80007bb4:	b95ff06f          	j	80007748 <truly_illegal_insn>
    80007bb8:	00c75893          	srl	a7,a4,0xc
    80007bbc:	0078fe13          	and	t3,a7,7
    80007bc0:	00400313          	li	t1,4
    80007bc4:	ffc366e3          	bltu	t1,t3,80007bb0 <emulate_fp+0x48>
    80007bc8:	00d89893          	sll	a7,a7,0xd
    80007bcc:	0000e337          	lui	t1,0xe
    80007bd0:	0068f8b3          	and	a7,a7,t1
    80007bd4:	00f8e7b3          	or	a5,a7,a5
    80007bd8:	fd1ff06f          	j	80007ba8 <emulate_fp+0x40>

0000000080007bdc <emulate_any_fadd>:
    80007bdc:	fe010113          	add	sp,sp,-32
    80007be0:	06000837          	lui	a6,0x6000
    80007be4:	00813823          	sd	s0,16(sp)
    80007be8:	00913423          	sd	s1,8(sp)
    80007bec:	00113c23          	sd	ra,24(sp)
    80007bf0:	01077833          	and	a6,a4,a6
    80007bf4:	00070413          	mv	s0,a4
    80007bf8:	00050493          	mv	s1,a0
    80007bfc:	06080c63          	beqz	a6,80007c74 <emulate_any_fadd+0x98>
    80007c00:	020008b7          	lui	a7,0x2000
    80007c04:	05181e63          	bne	a6,a7,80007c60 <emulate_any_fadd+0x84>
    80007c08:	01175693          	srl	a3,a4,0x11
    80007c0c:	0f86f693          	and	a3,a3,248
    80007c10:	00c75713          	srl	a4,a4,0xc
    80007c14:	00d506b3          	add	a3,a0,a3
    80007c18:	0f877713          	and	a4,a4,248
    80007c1c:	1006b583          	ld	a1,256(a3)
    80007c20:	00e50733          	add	a4,a0,a4
    80007c24:	10073503          	ld	a0,256(a4)
    80007c28:	02079793          	sll	a5,a5,0x20
    80007c2c:	00b7c5b3          	xor	a1,a5,a1
    80007c30:	00445413          	srl	s0,s0,0x4
    80007c34:	351010ef          	jal	80009784 <f64_add>
    80007c38:	0f847413          	and	s0,s0,248
    80007c3c:	008487b3          	add	a5,s1,s0
    80007c40:	10a7b023          	sd	a0,256(a5)
    80007c44:	000067b7          	lui	a5,0x6
    80007c48:	3007a7f3          	csrrs	a5,mstatus,a5
    80007c4c:	01813083          	ld	ra,24(sp)
    80007c50:	01013403          	ld	s0,16(sp)
    80007c54:	00813483          	ld	s1,8(sp)
    80007c58:	02010113          	add	sp,sp,32
    80007c5c:	00008067          	ret
    80007c60:	01013403          	ld	s0,16(sp)
    80007c64:	01813083          	ld	ra,24(sp)
    80007c68:	00813483          	ld	s1,8(sp)
    80007c6c:	02010113          	add	sp,sp,32
    80007c70:	ad9ff06f          	j	80007748 <truly_illegal_insn>
    80007c74:	01175693          	srl	a3,a4,0x11
    80007c78:	0f86f693          	and	a3,a3,248
    80007c7c:	00c75713          	srl	a4,a4,0xc
    80007c80:	00d506b3          	add	a3,a0,a3
    80007c84:	0f877713          	and	a4,a4,248
    80007c88:	1006a583          	lw	a1,256(a3)
    80007c8c:	00e50733          	add	a4,a0,a4
    80007c90:	10072503          	lw	a0,256(a4)
    80007c94:	00445413          	srl	s0,s0,0x4
    80007c98:	00b7c5b3          	xor	a1,a5,a1
    80007c9c:	0f847413          	and	s0,s0,248
    80007ca0:	204010ef          	jal	80008ea4 <f32_add>
    80007ca4:	00848433          	add	s0,s1,s0
    80007ca8:	10a42023          	sw	a0,256(s0)
    80007cac:	000067b7          	lui	a5,0x6
    80007cb0:	3007a7f3          	csrrs	a5,mstatus,a5
    80007cb4:	01813083          	ld	ra,24(sp)
    80007cb8:	01013403          	ld	s0,16(sp)
    80007cbc:	00813483          	ld	s1,8(sp)
    80007cc0:	02010113          	add	sp,sp,32
    80007cc4:	00008067          	ret

0000000080007cc8 <emulate_fadd>:
    80007cc8:	00000793          	li	a5,0
    80007ccc:	f11ff06f          	j	80007bdc <emulate_any_fadd>

0000000080007cd0 <emulate_fsub>:
    80007cd0:	800007b7          	lui	a5,0x80000
    80007cd4:	f09ff06f          	j	80007bdc <emulate_any_fadd>

0000000080007cd8 <emulate_fmul>:
    80007cd8:	fe010113          	add	sp,sp,-32
    80007cdc:	060007b7          	lui	a5,0x6000
    80007ce0:	00813823          	sd	s0,16(sp)
    80007ce4:	00913423          	sd	s1,8(sp)
    80007ce8:	00113c23          	sd	ra,24(sp)
    80007cec:	00f777b3          	and	a5,a4,a5
    80007cf0:	00070413          	mv	s0,a4
    80007cf4:	00050493          	mv	s1,a0
    80007cf8:	06078863          	beqz	a5,80007d68 <emulate_fmul+0x90>
    80007cfc:	02000837          	lui	a6,0x2000
    80007d00:	05079a63          	bne	a5,a6,80007d54 <emulate_fmul+0x7c>
    80007d04:	00c45793          	srl	a5,s0,0xc
    80007d08:	01175713          	srl	a4,a4,0x11
    80007d0c:	0f877713          	and	a4,a4,248
    80007d10:	0f87f793          	and	a5,a5,248
    80007d14:	00e50733          	add	a4,a0,a4
    80007d18:	00f507b3          	add	a5,a0,a5
    80007d1c:	10073583          	ld	a1,256(a4)
    80007d20:	1007b503          	ld	a0,256(a5) # 6000100 <_ftext-0x79ffff00>
    80007d24:	00445413          	srl	s0,s0,0x4
    80007d28:	0f847413          	and	s0,s0,248
    80007d2c:	6a1010ef          	jal	80009bcc <f64_mul>
    80007d30:	008484b3          	add	s1,s1,s0
    80007d34:	10a4b023          	sd	a0,256(s1)
    80007d38:	000067b7          	lui	a5,0x6
    80007d3c:	3007a7f3          	csrrs	a5,mstatus,a5
    80007d40:	01813083          	ld	ra,24(sp)
    80007d44:	01013403          	ld	s0,16(sp)
    80007d48:	00813483          	ld	s1,8(sp)
    80007d4c:	02010113          	add	sp,sp,32
    80007d50:	00008067          	ret
    80007d54:	01013403          	ld	s0,16(sp)
    80007d58:	01813083          	ld	ra,24(sp)
    80007d5c:	00813483          	ld	s1,8(sp)
    80007d60:	02010113          	add	sp,sp,32
    80007d64:	9e5ff06f          	j	80007748 <truly_illegal_insn>
    80007d68:	00c45793          	srl	a5,s0,0xc
    80007d6c:	01175713          	srl	a4,a4,0x11
    80007d70:	0f877713          	and	a4,a4,248
    80007d74:	0f87f793          	and	a5,a5,248
    80007d78:	00e50733          	add	a4,a0,a4
    80007d7c:	00f507b3          	add	a5,a0,a5
    80007d80:	10072583          	lw	a1,256(a4)
    80007d84:	1007a503          	lw	a0,256(a5) # 6100 <_ftext-0x7fff9f00>
    80007d88:	00445413          	srl	s0,s0,0x4
    80007d8c:	0f847413          	and	s0,s0,248
    80007d90:	544010ef          	jal	800092d4 <f32_mul>
    80007d94:	008484b3          	add	s1,s1,s0
    80007d98:	10a4a023          	sw	a0,256(s1)
    80007d9c:	000067b7          	lui	a5,0x6
    80007da0:	3007a7f3          	csrrs	a5,mstatus,a5
    80007da4:	01813083          	ld	ra,24(sp)
    80007da8:	01013403          	ld	s0,16(sp)
    80007dac:	00813483          	ld	s1,8(sp)
    80007db0:	02010113          	add	sp,sp,32
    80007db4:	00008067          	ret

0000000080007db8 <emulate_fdiv>:
    80007db8:	fe010113          	add	sp,sp,-32
    80007dbc:	060007b7          	lui	a5,0x6000
    80007dc0:	00813823          	sd	s0,16(sp)
    80007dc4:	00913423          	sd	s1,8(sp)
    80007dc8:	00113c23          	sd	ra,24(sp)
    80007dcc:	00f777b3          	and	a5,a4,a5
    80007dd0:	00070413          	mv	s0,a4
    80007dd4:	00050493          	mv	s1,a0
    80007dd8:	06078863          	beqz	a5,80007e48 <emulate_fdiv+0x90>
    80007ddc:	02000837          	lui	a6,0x2000
    80007de0:	05079a63          	bne	a5,a6,80007e34 <emulate_fdiv+0x7c>
    80007de4:	00c45793          	srl	a5,s0,0xc
    80007de8:	01175713          	srl	a4,a4,0x11
    80007dec:	0f877713          	and	a4,a4,248
    80007df0:	0f87f793          	and	a5,a5,248
    80007df4:	00e50733          	add	a4,a0,a4
    80007df8:	00f507b3          	add	a5,a0,a5
    80007dfc:	10073583          	ld	a1,256(a4)
    80007e00:	1007b503          	ld	a0,256(a5) # 6000100 <_ftext-0x79ffff00>
    80007e04:	00445413          	srl	s0,s0,0x4
    80007e08:	0f847413          	and	s0,s0,248
    80007e0c:	19d010ef          	jal	800097a8 <f64_div>
    80007e10:	008484b3          	add	s1,s1,s0
    80007e14:	10a4b023          	sd	a0,256(s1)
    80007e18:	000067b7          	lui	a5,0x6
    80007e1c:	3007a7f3          	csrrs	a5,mstatus,a5
    80007e20:	01813083          	ld	ra,24(sp)
    80007e24:	01013403          	ld	s0,16(sp)
    80007e28:	00813483          	ld	s1,8(sp)
    80007e2c:	02010113          	add	sp,sp,32
    80007e30:	00008067          	ret
    80007e34:	01013403          	ld	s0,16(sp)
    80007e38:	01813083          	ld	ra,24(sp)
    80007e3c:	00813483          	ld	s1,8(sp)
    80007e40:	02010113          	add	sp,sp,32
    80007e44:	905ff06f          	j	80007748 <truly_illegal_insn>
    80007e48:	00c45793          	srl	a5,s0,0xc
    80007e4c:	01175713          	srl	a4,a4,0x11
    80007e50:	0f877713          	and	a4,a4,248
    80007e54:	0f87f793          	and	a5,a5,248
    80007e58:	00e50733          	add	a4,a0,a4
    80007e5c:	00f507b3          	add	a5,a0,a5
    80007e60:	10072583          	lw	a1,256(a4)
    80007e64:	1007a503          	lw	a0,256(a5) # 6100 <_ftext-0x7fff9f00>
    80007e68:	00445413          	srl	s0,s0,0x4
    80007e6c:	0f847413          	and	s0,s0,248
    80007e70:	05c010ef          	jal	80008ecc <f32_div>
    80007e74:	008484b3          	add	s1,s1,s0
    80007e78:	10a4a023          	sw	a0,256(s1)
    80007e7c:	000067b7          	lui	a5,0x6
    80007e80:	3007a7f3          	csrrs	a5,mstatus,a5
    80007e84:	01813083          	ld	ra,24(sp)
    80007e88:	01013403          	ld	s0,16(sp)
    80007e8c:	00813483          	ld	s1,8(sp)
    80007e90:	02010113          	add	sp,sp,32
    80007e94:	00008067          	ret

0000000080007e98 <emulate_fsqrt>:
    80007e98:	fe010113          	add	sp,sp,-32
    80007e9c:	01475793          	srl	a5,a4,0x14
    80007ea0:	00813823          	sd	s0,16(sp)
    80007ea4:	00913423          	sd	s1,8(sp)
    80007ea8:	00113c23          	sd	ra,24(sp)
    80007eac:	01f7f793          	and	a5,a5,31
    80007eb0:	00070413          	mv	s0,a4
    80007eb4:	00050493          	mv	s1,a0
    80007eb8:	04079c63          	bnez	a5,80007f10 <emulate_fsqrt+0x78>
    80007ebc:	060007b7          	lui	a5,0x6000
    80007ec0:	00f777b3          	and	a5,a4,a5
    80007ec4:	06078463          	beqz	a5,80007f2c <emulate_fsqrt+0x94>
    80007ec8:	02000737          	lui	a4,0x2000
    80007ecc:	04e79263          	bne	a5,a4,80007f10 <emulate_fsqrt+0x78>
    80007ed0:	00c45793          	srl	a5,s0,0xc
    80007ed4:	0f87f793          	and	a5,a5,248
    80007ed8:	00f507b3          	add	a5,a0,a5
    80007edc:	1007b503          	ld	a0,256(a5) # 6000100 <_ftext-0x79ffff00>
    80007ee0:	00445413          	srl	s0,s0,0x4
    80007ee4:	0f847413          	and	s0,s0,248
    80007ee8:	6b1010ef          	jal	80009d98 <f64_sqrt>
    80007eec:	008484b3          	add	s1,s1,s0
    80007ef0:	10a4b023          	sd	a0,256(s1)
    80007ef4:	000067b7          	lui	a5,0x6
    80007ef8:	3007a7f3          	csrrs	a5,mstatus,a5
    80007efc:	01813083          	ld	ra,24(sp)
    80007f00:	01013403          	ld	s0,16(sp)
    80007f04:	00813483          	ld	s1,8(sp)
    80007f08:	02010113          	add	sp,sp,32
    80007f0c:	00008067          	ret
    80007f10:	00040713          	mv	a4,s0
    80007f14:	01013403          	ld	s0,16(sp)
    80007f18:	01813083          	ld	ra,24(sp)
    80007f1c:	00048513          	mv	a0,s1
    80007f20:	00813483          	ld	s1,8(sp)
    80007f24:	02010113          	add	sp,sp,32
    80007f28:	821ff06f          	j	80007748 <truly_illegal_insn>
    80007f2c:	00c75793          	srl	a5,a4,0xc
    80007f30:	0f87f793          	and	a5,a5,248
    80007f34:	00f507b3          	add	a5,a0,a5
    80007f38:	1007a503          	lw	a0,256(a5) # 6100 <_ftext-0x7fff9f00>
    80007f3c:	00445413          	srl	s0,s0,0x4
    80007f40:	0f847413          	and	s0,s0,248
    80007f44:	55c010ef          	jal	800094a0 <f32_sqrt>
    80007f48:	00848433          	add	s0,s1,s0
    80007f4c:	10a42023          	sw	a0,256(s0)
    80007f50:	000067b7          	lui	a5,0x6
    80007f54:	3007a7f3          	csrrs	a5,mstatus,a5
    80007f58:	01813083          	ld	ra,24(sp)
    80007f5c:	01013403          	ld	s0,16(sp)
    80007f60:	00813483          	ld	s1,8(sp)
    80007f64:	02010113          	add	sp,sp,32
    80007f68:	00008067          	ret

0000000080007f6c <emulate_fsgnj>:
    80007f6c:	00c75793          	srl	a5,a4,0xc
    80007f70:	0077f893          	and	a7,a5,7
    80007f74:	00200813          	li	a6,2
    80007f78:	0d184c63          	blt	a6,a7,80008050 <emulate_fsgnj+0xe4>
    80007f7c:	06000837          	lui	a6,0x6000
    80007f80:	01077833          	and	a6,a4,a6
    80007f84:	06080663          	beqz	a6,80007ff0 <emulate_fsgnj+0x84>
    80007f88:	02000337          	lui	t1,0x2000
    80007f8c:	0c681263          	bne	a6,t1,80008050 <emulate_fsgnj+0xe4>
    80007f90:	01175613          	srl	a2,a4,0x11
    80007f94:	0f87f793          	and	a5,a5,248
    80007f98:	0f867613          	and	a2,a2,248
    80007f9c:	00f507b3          	add	a5,a0,a5
    80007fa0:	00c50633          	add	a2,a0,a2
    80007fa4:	1007b683          	ld	a3,256(a5) # 6100 <_ftext-0x7fff9f00>
    80007fa8:	10063783          	ld	a5,256(a2)
    80007fac:	0018d613          	srl	a2,a7,0x1
    80007fb0:	03f6d593          	srl	a1,a3,0x3f
    80007fb4:	03f7d793          	srl	a5,a5,0x3f
    80007fb8:	00b67633          	and	a2,a2,a1
    80007fbc:	0117c7b3          	xor	a5,a5,a7
    80007fc0:	00c7c7b3          	xor	a5,a5,a2
    80007fc4:	00475713          	srl	a4,a4,0x4
    80007fc8:	00169693          	sll	a3,a3,0x1
    80007fcc:	0f877713          	and	a4,a4,248
    80007fd0:	0016d693          	srl	a3,a3,0x1
    80007fd4:	03f79793          	sll	a5,a5,0x3f
    80007fd8:	00d7e7b3          	or	a5,a5,a3
    80007fdc:	00e50533          	add	a0,a0,a4
    80007fe0:	10f53023          	sd	a5,256(a0)
    80007fe4:	000067b7          	lui	a5,0x6
    80007fe8:	3007a7f3          	csrrs	a5,mstatus,a5
    80007fec:	00008067          	ret
    80007ff0:	01175613          	srl	a2,a4,0x11
    80007ff4:	0f87f793          	and	a5,a5,248
    80007ff8:	0f867613          	and	a2,a2,248
    80007ffc:	00f507b3          	add	a5,a0,a5
    80008000:	00c50633          	add	a2,a0,a2
    80008004:	1007a683          	lw	a3,256(a5) # 6100 <_ftext-0x7fff9f00>
    80008008:	10062783          	lw	a5,256(a2)
    8000800c:	4018d59b          	sraw	a1,a7,0x1
    80008010:	03f6d613          	srl	a2,a3,0x3f
    80008014:	01f7d79b          	srlw	a5,a5,0x1f
    80008018:	00b67633          	and	a2,a2,a1
    8000801c:	00f8c7b3          	xor	a5,a7,a5
    80008020:	00c7c7b3          	xor	a5,a5,a2
    80008024:	00475713          	srl	a4,a4,0x4
    80008028:	02169693          	sll	a3,a3,0x21
    8000802c:	01f7979b          	sllw	a5,a5,0x1f
    80008030:	0f877713          	and	a4,a4,248
    80008034:	0216d693          	srl	a3,a3,0x21
    80008038:	00f6e6b3          	or	a3,a3,a5
    8000803c:	00e50733          	add	a4,a0,a4
    80008040:	10d72023          	sw	a3,256(a4) # 2000100 <_ftext-0x7dffff00>
    80008044:	000067b7          	lui	a5,0x6
    80008048:	3007a7f3          	csrrs	a5,mstatus,a5
    8000804c:	00008067          	ret
    80008050:	ef8ff06f          	j	80007748 <truly_illegal_insn>

0000000080008054 <emulate_fmin>:
    80008054:	fd010113          	add	sp,sp,-48
    80008058:	00c75793          	srl	a5,a4,0xc
    8000805c:	02813023          	sd	s0,32(sp)
    80008060:	00913c23          	sd	s1,24(sp)
    80008064:	00070413          	mv	s0,a4
    80008068:	02113423          	sd	ra,40(sp)
    8000806c:	0067f713          	and	a4,a5,6
    80008070:	00050493          	mv	s1,a0
    80008074:	12071463          	bnez	a4,8000819c <emulate_fmin+0x148>
    80008078:	06000737          	lui	a4,0x6000
    8000807c:	00e47733          	and	a4,s0,a4
    80008080:	0077f813          	and	a6,a5,7
    80008084:	08070c63          	beqz	a4,8000811c <emulate_fmin+0xc8>
    80008088:	02000537          	lui	a0,0x2000
    8000808c:	10a71863          	bne	a4,a0,8000819c <emulate_fmin+0x148>
    80008090:	01145713          	srl	a4,s0,0x11
    80008094:	0f87f793          	and	a5,a5,248
    80008098:	0f877713          	and	a4,a4,248
    8000809c:	00f487b3          	add	a5,s1,a5
    800080a0:	00e48733          	add	a4,s1,a4
    800080a4:	01213823          	sd	s2,16(sp)
    800080a8:	01313423          	sd	s3,8(sp)
    800080ac:	1007b903          	ld	s2,256(a5) # 6100 <_ftext-0x7fff9f00>
    800080b0:	10073983          	ld	s3,256(a4) # 6000100 <_ftext-0x79ffff00>
    800080b4:	00090513          	mv	a0,s2
    800080b8:	00098593          	mv	a1,s3
    800080bc:	00080663          	beqz	a6,800080c8 <emulate_fmin+0x74>
    800080c0:	00090593          	mv	a1,s2
    800080c4:	00098513          	mv	a0,s3
    800080c8:	249010ef          	jal	80009b10 <f64_lt_quiet>
    800080cc:	00051e63          	bnez	a0,800080e8 <emulate_fmin+0x94>
    800080d0:	fff9c793          	not	a5,s3
    800080d4:	0347d713          	srl	a4,a5,0x34
    800080d8:	7ff77713          	and	a4,a4,2047
    800080dc:	0e071e63          	bnez	a4,800081d8 <emulate_fmin+0x184>
    800080e0:	00c99793          	sll	a5,s3,0xc
    800080e4:	0e078a63          	beqz	a5,800081d8 <emulate_fmin+0x184>
    800080e8:	00445413          	srl	s0,s0,0x4
    800080ec:	0f847413          	and	s0,s0,248
    800080f0:	00848533          	add	a0,s1,s0
    800080f4:	11253023          	sd	s2,256(a0) # 2000100 <_ftext-0x7dffff00>
    800080f8:	000067b7          	lui	a5,0x6
    800080fc:	3007a7f3          	csrrs	a5,mstatus,a5
    80008100:	02813083          	ld	ra,40(sp)
    80008104:	02013403          	ld	s0,32(sp)
    80008108:	01013903          	ld	s2,16(sp)
    8000810c:	00813983          	ld	s3,8(sp)
    80008110:	01813483          	ld	s1,24(sp)
    80008114:	03010113          	add	sp,sp,48
    80008118:	00008067          	ret
    8000811c:	01145713          	srl	a4,s0,0x11
    80008120:	0f877713          	and	a4,a4,248
    80008124:	00e50733          	add	a4,a0,a4
    80008128:	0f87f793          	and	a5,a5,248
    8000812c:	00f507b3          	add	a5,a0,a5
    80008130:	01413023          	sd	s4,0(sp)
    80008134:	10072a03          	lw	s4,256(a4)
    80008138:	01313423          	sd	s3,8(sp)
    8000813c:	1007a983          	lw	s3,256(a5) # 6100 <_ftext-0x7fff9f00>
    80008140:	01213823          	sd	s2,16(sp)
    80008144:	000a091b          	sext.w	s2,s4
    80008148:	00090593          	mv	a1,s2
    8000814c:	0009851b          	sext.w	a0,s3
    80008150:	00080663          	beqz	a6,8000815c <emulate_fmin+0x108>
    80008154:	00050593          	mv	a1,a0
    80008158:	00090513          	mv	a0,s2
    8000815c:	0b8010ef          	jal	80009214 <f32_lt_quiet>
    80008160:	04050c63          	beqz	a0,800081b8 <emulate_fmin+0x164>
    80008164:	00445413          	srl	s0,s0,0x4
    80008168:	0f847413          	and	s0,s0,248
    8000816c:	00848533          	add	a0,s1,s0
    80008170:	11352023          	sw	s3,256(a0)
    80008174:	000067b7          	lui	a5,0x6
    80008178:	3007a7f3          	csrrs	a5,mstatus,a5
    8000817c:	02813083          	ld	ra,40(sp)
    80008180:	02013403          	ld	s0,32(sp)
    80008184:	00013a03          	ld	s4,0(sp)
    80008188:	01013903          	ld	s2,16(sp)
    8000818c:	00813983          	ld	s3,8(sp)
    80008190:	01813483          	ld	s1,24(sp)
    80008194:	03010113          	add	sp,sp,48
    80008198:	00008067          	ret
    8000819c:	00040713          	mv	a4,s0
    800081a0:	02013403          	ld	s0,32(sp)
    800081a4:	02813083          	ld	ra,40(sp)
    800081a8:	00048513          	mv	a0,s1
    800081ac:	01813483          	ld	s1,24(sp)
    800081b0:	03010113          	add	sp,sp,48
    800081b4:	d94ff06f          	j	80007748 <truly_illegal_insn>
    800081b8:	fff94913          	not	s2,s2
    800081bc:	01795793          	srl	a5,s2,0x17
    800081c0:	0ff7f793          	zext.b	a5,a5
    800081c4:	00079663          	bnez	a5,800081d0 <emulate_fmin+0x17c>
    800081c8:	029a1793          	sll	a5,s4,0x29
    800081cc:	f8079ce3          	bnez	a5,80008164 <emulate_fmin+0x110>
    800081d0:	000a0993          	mv	s3,s4
    800081d4:	f91ff06f          	j	80008164 <emulate_fmin+0x110>
    800081d8:	00445413          	srl	s0,s0,0x4
    800081dc:	0f847413          	and	s0,s0,248
    800081e0:	00098913          	mv	s2,s3
    800081e4:	00848533          	add	a0,s1,s0
    800081e8:	11253023          	sd	s2,256(a0)
    800081ec:	000067b7          	lui	a5,0x6
    800081f0:	3007a7f3          	csrrs	a5,mstatus,a5
    800081f4:	f0dff06f          	j	80008100 <emulate_fmin+0xac>

00000000800081f8 <emulate_fcvt_ff>:
    800081f8:	fe010113          	add	sp,sp,-32
    800081fc:	060007b7          	lui	a5,0x6000
    80008200:	00813823          	sd	s0,16(sp)
    80008204:	00913423          	sd	s1,8(sp)
    80008208:	01475813          	srl	a6,a4,0x14
    8000820c:	00113c23          	sd	ra,24(sp)
    80008210:	00f777b3          	and	a5,a4,a5
    80008214:	00070413          	mv	s0,a4
    80008218:	00050493          	mv	s1,a0
    8000821c:	01f87813          	and	a6,a6,31
    80008220:	02079063          	bnez	a5,80008240 <emulate_fcvt_ff+0x48>
    80008224:	00100793          	li	a5,1
    80008228:	06f80263          	beq	a6,a5,8000828c <emulate_fcvt_ff+0x94>
    8000822c:	01013403          	ld	s0,16(sp)
    80008230:	01813083          	ld	ra,24(sp)
    80008234:	00813483          	ld	s1,8(sp)
    80008238:	02010113          	add	sp,sp,32
    8000823c:	d0cff06f          	j	80007748 <truly_illegal_insn>
    80008240:	020008b7          	lui	a7,0x2000
    80008244:	ff1794e3          	bne	a5,a7,8000822c <emulate_fcvt_ff+0x34>
    80008248:	fe0812e3          	bnez	a6,8000822c <emulate_fcvt_ff+0x34>
    8000824c:	00c75793          	srl	a5,a4,0xc
    80008250:	0f87f793          	and	a5,a5,248
    80008254:	00f507b3          	add	a5,a0,a5
    80008258:	1007a503          	lw	a0,256(a5) # 6000100 <_ftext-0x79ffff00>
    8000825c:	00445413          	srl	s0,s0,0x4
    80008260:	0f847413          	and	s0,s0,248
    80008264:	38c010ef          	jal	800095f0 <f32_to_f64>
    80008268:	008484b3          	add	s1,s1,s0
    8000826c:	10a4b023          	sd	a0,256(s1)
    80008270:	000067b7          	lui	a5,0x6
    80008274:	3007a7f3          	csrrs	a5,mstatus,a5
    80008278:	01813083          	ld	ra,24(sp)
    8000827c:	01013403          	ld	s0,16(sp)
    80008280:	00813483          	ld	s1,8(sp)
    80008284:	02010113          	add	sp,sp,32
    80008288:	00008067          	ret
    8000828c:	00c75793          	srl	a5,a4,0xc
    80008290:	0f87f793          	and	a5,a5,248
    80008294:	00f507b3          	add	a5,a0,a5
    80008298:	1007b503          	ld	a0,256(a5) # 6100 <_ftext-0x7fff9f00>
    8000829c:	00445413          	srl	s0,s0,0x4
    800082a0:	0f847413          	and	s0,s0,248
    800082a4:	481010ef          	jal	80009f24 <f64_to_f32>
    800082a8:	008484b3          	add	s1,s1,s0
    800082ac:	10a4a023          	sw	a0,256(s1)
    800082b0:	000067b7          	lui	a5,0x6
    800082b4:	3007a7f3          	csrrs	a5,mstatus,a5
    800082b8:	01813083          	ld	ra,24(sp)
    800082bc:	01013403          	ld	s0,16(sp)
    800082c0:	00813483          	ld	s1,8(sp)
    800082c4:	02010113          	add	sp,sp,32
    800082c8:	00008067          	ret

00000000800082cc <emulate_fcvt_fi>:
    800082cc:	02571793          	sll	a5,a4,0x25
    800082d0:	0007d463          	bgez	a5,800082d8 <emulate_fcvt_fi+0xc>
    800082d4:	c74ff06f          	j	80007748 <truly_illegal_insn>
    800082d8:	00c75813          	srl	a6,a4,0xc
    800082dc:	fe010113          	add	sp,sp,-32
    800082e0:	0f887813          	and	a6,a6,248
    800082e4:	01475793          	srl	a5,a4,0x14
    800082e8:	00813823          	sd	s0,16(sp)
    800082ec:	00913423          	sd	s1,8(sp)
    800082f0:	01050833          	add	a6,a0,a6
    800082f4:	00113c23          	sd	ra,24(sp)
    800082f8:	01f7f793          	and	a5,a5,31
    800082fc:	00200893          	li	a7,2
    80008300:	00083803          	ld	a6,0(a6) # 6000000 <_ftext-0x7a000000>
    80008304:	00070413          	mv	s0,a4
    80008308:	00050493          	mv	s1,a0
    8000830c:	0f178063          	beq	a5,a7,800083ec <emulate_fcvt_fi+0x120>
    80008310:	04f8e863          	bltu	a7,a5,80008360 <emulate_fcvt_fi+0x94>
    80008314:	0a078863          	beqz	a5,800083c4 <emulate_fcvt_fi+0xf8>
    80008318:	02081513          	sll	a0,a6,0x20
    8000831c:	02055513          	srl	a0,a0,0x20
    80008320:	135030ef          	jal	8000bc54 <ui64_to_f64>
    80008324:	00445793          	srl	a5,s0,0x4
    80008328:	0f87f793          	and	a5,a5,248
    8000832c:	10078793          	add	a5,a5,256 # 6100 <_ftext-0x7fff9f00>
    80008330:	00f484b3          	add	s1,s1,a5
    80008334:	01945793          	srl	a5,s0,0x19
    80008338:	0037f793          	and	a5,a5,3
    8000833c:	04078863          	beqz	a5,8000838c <emulate_fcvt_fi+0xc0>
    80008340:	00a4b023          	sd	a0,0(s1)
    80008344:	000067b7          	lui	a5,0x6
    80008348:	3007a7f3          	csrrs	a5,mstatus,a5
    8000834c:	01813083          	ld	ra,24(sp)
    80008350:	01013403          	ld	s0,16(sp)
    80008354:	00813483          	ld	s1,8(sp)
    80008358:	02010113          	add	sp,sp,32
    8000835c:	00008067          	ret
    80008360:	00300893          	li	a7,3
    80008364:	05179663          	bne	a5,a7,800083b0 <emulate_fcvt_fi+0xe4>
    80008368:	00080513          	mv	a0,a6
    8000836c:	0e9030ef          	jal	8000bc54 <ui64_to_f64>
    80008370:	00445793          	srl	a5,s0,0x4
    80008374:	0f87f793          	and	a5,a5,248
    80008378:	10078793          	add	a5,a5,256 # 6100 <_ftext-0x7fff9f00>
    8000837c:	00f484b3          	add	s1,s1,a5
    80008380:	01945793          	srl	a5,s0,0x19
    80008384:	0037f793          	and	a5,a5,3
    80008388:	fa079ce3          	bnez	a5,80008340 <emulate_fcvt_fi+0x74>
    8000838c:	399010ef          	jal	80009f24 <f64_to_f32>
    80008390:	00a4a023          	sw	a0,0(s1)
    80008394:	000067b7          	lui	a5,0x6
    80008398:	3007a7f3          	csrrs	a5,mstatus,a5
    8000839c:	01813083          	ld	ra,24(sp)
    800083a0:	01013403          	ld	s0,16(sp)
    800083a4:	00813483          	ld	s1,8(sp)
    800083a8:	02010113          	add	sp,sp,32
    800083ac:	00008067          	ret
    800083b0:	01013403          	ld	s0,16(sp)
    800083b4:	01813083          	ld	ra,24(sp)
    800083b8:	00813483          	ld	s1,8(sp)
    800083bc:	02010113          	add	sp,sp,32
    800083c0:	b88ff06f          	j	80007748 <truly_illegal_insn>
    800083c4:	02081793          	sll	a5,a6,0x20
    800083c8:	f407d8e3          	bgez	a5,80008318 <emulate_fcvt_fi+0x4c>
    800083cc:	4100053b          	negw	a0,a6
    800083d0:	02051513          	sll	a0,a0,0x20
    800083d4:	02055513          	srl	a0,a0,0x20
    800083d8:	07d030ef          	jal	8000bc54 <ui64_to_f64>
    800083dc:	fff00793          	li	a5,-1
    800083e0:	03f79793          	sll	a5,a5,0x3f
    800083e4:	00f54533          	xor	a0,a0,a5
    800083e8:	f3dff06f          	j	80008324 <emulate_fcvt_fi+0x58>
    800083ec:	f6085ee3          	bgez	a6,80008368 <emulate_fcvt_fi+0x9c>
    800083f0:	41000533          	neg	a0,a6
    800083f4:	061030ef          	jal	8000bc54 <ui64_to_f64>
    800083f8:	fe5ff06f          	j	800083dc <emulate_fcvt_fi+0x110>

00000000800083fc <emulate_fcvt_if>:
    800083fc:	fc010113          	add	sp,sp,-64
    80008400:	01475793          	srl	a5,a4,0x14
    80008404:	02813823          	sd	s0,48(sp)
    80008408:	03213023          	sd	s2,32(sp)
    8000840c:	00070413          	mv	s0,a4
    80008410:	02113c23          	sd	ra,56(sp)
    80008414:	01c7f713          	and	a4,a5,28
    80008418:	00050913          	mv	s2,a0
    8000841c:	0a071c63          	bnez	a4,800084d4 <emulate_fcvt_if+0xd8>
    80008420:	02913423          	sd	s1,40(sp)
    80008424:	0007849b          	sext.w	s1,a5
    80008428:	060007b7          	lui	a5,0x6000
    8000842c:	00f477b3          	and	a5,s0,a5
    80008430:	0c078063          	beqz	a5,800084f0 <emulate_fcvt_if+0xf4>
    80008434:	02000737          	lui	a4,0x2000
    80008438:	08e79c63          	bne	a5,a4,800084d0 <emulate_fcvt_if+0xd4>
    8000843c:	00c45793          	srl	a5,s0,0xc
    80008440:	0f87f793          	and	a5,a5,248
    80008444:	00f507b3          	add	a5,a0,a5
    80008448:	1007b503          	ld	a0,256(a5) # 6000100 <_ftext-0x79ffff00>
    8000844c:	01413823          	sd	s4,16(sp)
    80008450:	40d2559b          	sraw	a1,tp,0xd
    80008454:	01f4fa13          	and	s4,s1,31
    80008458:	0a054e63          	bltz	a0,80008514 <emulate_fcvt_if+0x118>
    8000845c:	00100613          	li	a2,1
    80008460:	37d010ef          	jal	80009fdc <f64_to_ui64>
    80008464:	00100793          	li	a5,1
    80008468:	12fa0263          	beq	s4,a5,8000858c <emulate_fcvt_if+0x190>
    8000846c:	01e4f793          	and	a5,s1,30
    80008470:	0e078863          	beqz	a5,80008560 <emulate_fcvt_if+0x164>
    80008474:	00200793          	li	a5,2
    80008478:	00050713          	mv	a4,a0
    8000847c:	02fa1063          	bne	s4,a5,8000849c <emulate_fcvt_if+0xa0>
    80008480:	fff00793          	li	a5,-1
    80008484:	0017d793          	srl	a5,a5,0x1
    80008488:	00050713          	mv	a4,a0
    8000848c:	00078693          	mv	a3,a5
    80008490:	00a6f663          	bgeu	a3,a0,8000849c <emulate_fcvt_if+0xa0>
    80008494:	01026213          	or	tp,tp,16
    80008498:	00078713          	mv	a4,a5
    8000849c:	000067b7          	lui	a5,0x6
    800084a0:	3007a7f3          	csrrs	a5,mstatus,a5
    800084a4:	00445413          	srl	s0,s0,0x4
    800084a8:	0f847413          	and	s0,s0,248
    800084ac:	00890533          	add	a0,s2,s0
    800084b0:	03813083          	ld	ra,56(sp)
    800084b4:	03013403          	ld	s0,48(sp)
    800084b8:	00e53023          	sd	a4,0(a0)
    800084bc:	02813483          	ld	s1,40(sp)
    800084c0:	01013a03          	ld	s4,16(sp)
    800084c4:	02013903          	ld	s2,32(sp)
    800084c8:	04010113          	add	sp,sp,64
    800084cc:	00008067          	ret
    800084d0:	02813483          	ld	s1,40(sp)
    800084d4:	00040713          	mv	a4,s0
    800084d8:	03013403          	ld	s0,48(sp)
    800084dc:	03813083          	ld	ra,56(sp)
    800084e0:	00090513          	mv	a0,s2
    800084e4:	02013903          	ld	s2,32(sp)
    800084e8:	04010113          	add	sp,sp,64
    800084ec:	a5cff06f          	j	80007748 <truly_illegal_insn>
    800084f0:	00c45793          	srl	a5,s0,0xc
    800084f4:	0f87f793          	and	a5,a5,248
    800084f8:	00f507b3          	add	a5,a0,a5
    800084fc:	1007a503          	lw	a0,256(a5) # 6100 <_ftext-0x7fff9f00>
    80008500:	01413823          	sd	s4,16(sp)
    80008504:	01f4fa13          	and	s4,s1,31
    80008508:	0e8010ef          	jal	800095f0 <f32_to_f64>
    8000850c:	40d2559b          	sraw	a1,tp,0xd
    80008510:	f40556e3          	bgez	a0,8000845c <emulate_fcvt_if+0x60>
    80008514:	01513423          	sd	s5,8(sp)
    80008518:	fff00a93          	li	s5,-1
    8000851c:	01313c23          	sd	s3,24(sp)
    80008520:	03fa9993          	sll	s3,s5,0x3f
    80008524:	00100613          	li	a2,1
    80008528:	01354533          	xor	a0,a0,s3
    8000852c:	2b1010ef          	jal	80009fdc <f64_to_ui64>
    80008530:	00100793          	li	a5,1
    80008534:	04fa0063          	beq	s4,a5,80008574 <emulate_fcvt_if+0x178>
    80008538:	01e4f793          	and	a5,s1,30
    8000853c:	08078063          	beqz	a5,800085bc <emulate_fcvt_if+0x1c0>
    80008540:	00200793          	li	a5,2
    80008544:	06fa0063          	beq	s4,a5,800085a4 <emulate_fcvt_if+0x1a8>
    80008548:	01813983          	ld	s3,24(sp)
    8000854c:	00813a83          	ld	s5,8(sp)
    80008550:	fff00793          	li	a5,-1
    80008554:	00000693          	li	a3,0
    80008558:	00000713          	li	a4,0
    8000855c:	f35ff06f          	j	80008490 <emulate_fcvt_if+0x94>
    80008560:	800007b7          	lui	a5,0x80000
    80008564:	fff7c793          	not	a5,a5
    80008568:	0005071b          	sext.w	a4,a0
    8000856c:	00078693          	mv	a3,a5
    80008570:	f21ff06f          	j	80008490 <emulate_fcvt_if+0x94>
    80008574:	020ad793          	srl	a5,s5,0x20
    80008578:	01813983          	ld	s3,24(sp)
    8000857c:	00813a83          	ld	s5,8(sp)
    80008580:	00000693          	li	a3,0
    80008584:	00000713          	li	a4,0
    80008588:	f09ff06f          	j	80008490 <emulate_fcvt_if+0x94>
    8000858c:	fff00713          	li	a4,-1
    80008590:	02075713          	srl	a4,a4,0x20
    80008594:	00070793          	mv	a5,a4
    80008598:	00078693          	mv	a3,a5
    8000859c:	00e57733          	and	a4,a0,a4
    800085a0:	ef1ff06f          	j	80008490 <emulate_fcvt_if+0x94>
    800085a4:	00098793          	mv	a5,s3
    800085a8:	00098693          	mv	a3,s3
    800085ac:	00813a83          	ld	s5,8(sp)
    800085b0:	01813983          	ld	s3,24(sp)
    800085b4:	40a00733          	neg	a4,a0
    800085b8:	ed9ff06f          	j	80008490 <emulate_fcvt_if+0x94>
    800085bc:	00100793          	li	a5,1
    800085c0:	01f79793          	sll	a5,a5,0x1f
    800085c4:	01813983          	ld	s3,24(sp)
    800085c8:	00813a83          	ld	s5,8(sp)
    800085cc:	40a0073b          	negw	a4,a0
    800085d0:	00078693          	mv	a3,a5
    800085d4:	ebdff06f          	j	80008490 <emulate_fcvt_if+0x94>

00000000800085d8 <emulate_fcmp>:
    800085d8:	fd010113          	add	sp,sp,-48
    800085dc:	00c75793          	srl	a5,a4,0xc
    800085e0:	02813023          	sd	s0,32(sp)
    800085e4:	00913c23          	sd	s1,24(sp)
    800085e8:	01213823          	sd	s2,16(sp)
    800085ec:	00070413          	mv	s0,a4
    800085f0:	02113423          	sd	ra,40(sp)
    800085f4:	0077f913          	and	s2,a5,7
    800085f8:	00200713          	li	a4,2
    800085fc:	00050493          	mv	s1,a0
    80008600:	01274c63          	blt	a4,s2,80008618 <emulate_fcmp+0x40>
    80008604:	06000737          	lui	a4,0x6000
    80008608:	00e47733          	and	a4,s0,a4
    8000860c:	02070663          	beqz	a4,80008638 <emulate_fcmp+0x60>
    80008610:	02000537          	lui	a0,0x2000
    80008614:	0aa70463          	beq	a4,a0,800086bc <emulate_fcmp+0xe4>
    80008618:	00040713          	mv	a4,s0
    8000861c:	02013403          	ld	s0,32(sp)
    80008620:	02813083          	ld	ra,40(sp)
    80008624:	01013903          	ld	s2,16(sp)
    80008628:	00048513          	mv	a0,s1
    8000862c:	01813483          	ld	s1,24(sp)
    80008630:	03010113          	add	sp,sp,48
    80008634:	914ff06f          	j	80007748 <truly_illegal_insn>
    80008638:	01145713          	srl	a4,s0,0x11
    8000863c:	0f87f793          	and	a5,a5,248
    80008640:	0f877713          	and	a4,a4,248
    80008644:	01313423          	sd	s3,8(sp)
    80008648:	01413023          	sd	s4,0(sp)
    8000864c:	00f507b3          	add	a5,a0,a5
    80008650:	00e50733          	add	a4,a0,a4
    80008654:	00100693          	li	a3,1
    80008658:	1007a983          	lw	s3,256(a5) # ffffffff80000100 <_end+0xfffffffefffec100>
    8000865c:	10072a03          	lw	s4,256(a4) # 6000100 <_ftext-0x79ffff00>
    80008660:	00d90c63          	beq	s2,a3,80008678 <emulate_fcmp+0xa0>
    80008664:	000a0593          	mv	a1,s4
    80008668:	00098513          	mv	a0,s3
    8000866c:	289000ef          	jal	800090f4 <f32_eq>
    80008670:	00091a63          	bnez	s2,80008684 <emulate_fcmp+0xac>
    80008674:	08051c63          	bnez	a0,8000870c <emulate_fcmp+0x134>
    80008678:	000a0593          	mv	a1,s4
    8000867c:	00098513          	mv	a0,s3
    80008680:	30d000ef          	jal	8000918c <f32_lt>
    80008684:	000067b7          	lui	a5,0x6
    80008688:	3007a7f3          	csrrs	a5,mstatus,a5
    8000868c:	00445413          	srl	s0,s0,0x4
    80008690:	0f847413          	and	s0,s0,248
    80008694:	008484b3          	add	s1,s1,s0
    80008698:	02813083          	ld	ra,40(sp)
    8000869c:	02013403          	ld	s0,32(sp)
    800086a0:	00a4b023          	sd	a0,0(s1)
    800086a4:	00813983          	ld	s3,8(sp)
    800086a8:	00013a03          	ld	s4,0(sp)
    800086ac:	01813483          	ld	s1,24(sp)
    800086b0:	01013903          	ld	s2,16(sp)
    800086b4:	03010113          	add	sp,sp,48
    800086b8:	00008067          	ret
    800086bc:	01145713          	srl	a4,s0,0x11
    800086c0:	0f87f793          	and	a5,a5,248
    800086c4:	0f877713          	and	a4,a4,248
    800086c8:	01313423          	sd	s3,8(sp)
    800086cc:	01413023          	sd	s4,0(sp)
    800086d0:	00f487b3          	add	a5,s1,a5
    800086d4:	00e48733          	add	a4,s1,a4
    800086d8:	00100693          	li	a3,1
    800086dc:	1007b983          	ld	s3,256(a5) # 6100 <_ftext-0x7fff9f00>
    800086e0:	10073a03          	ld	s4,256(a4)
    800086e4:	00d90c63          	beq	s2,a3,800086fc <emulate_fcmp+0x124>
    800086e8:	000a0593          	mv	a1,s4
    800086ec:	00098513          	mv	a0,s3
    800086f0:	30c010ef          	jal	800099fc <f64_eq>
    800086f4:	f80918e3          	bnez	s2,80008684 <emulate_fcmp+0xac>
    800086f8:	00051a63          	bnez	a0,8000870c <emulate_fcmp+0x134>
    800086fc:	000a0593          	mv	a1,s4
    80008700:	00098513          	mv	a0,s3
    80008704:	398010ef          	jal	80009a9c <f64_lt>
    80008708:	f7dff06f          	j	80008684 <emulate_fcmp+0xac>
    8000870c:	00100513          	li	a0,1
    80008710:	f75ff06f          	j	80008684 <emulate_fcmp+0xac>

0000000080008714 <emulate_fmv_if>:
    80008714:	fe010113          	add	sp,sp,-32
    80008718:	01475793          	srl	a5,a4,0x14
    8000871c:	00813823          	sd	s0,16(sp)
    80008720:	00913423          	sd	s1,8(sp)
    80008724:	00113c23          	sd	ra,24(sp)
    80008728:	01f7f793          	and	a5,a5,31
    8000872c:	00070413          	mv	s0,a4
    80008730:	00050493          	mv	s1,a0
    80008734:	00058813          	mv	a6,a1
    80008738:	00060893          	mv	a7,a2
    8000873c:	00068313          	mv	t1,a3
    80008740:	0a079463          	bnez	a5,800087e8 <emulate_fmv_if+0xd4>
    80008744:	060007b7          	lui	a5,0x6000
    80008748:	00f777b3          	and	a5,a4,a5
    8000874c:	02079c63          	bnez	a5,80008784 <emulate_fmv_if+0x70>
    80008750:	00c75793          	srl	a5,a4,0xc
    80008754:	0f87f813          	and	a6,a5,248
    80008758:	01050833          	add	a6,a0,a6
    8000875c:	0077f793          	and	a5,a5,7
    80008760:	10082803          	lw	a6,256(a6)
    80008764:	04078c63          	beqz	a5,800087bc <emulate_fmv_if+0xa8>
    80008768:	00100893          	li	a7,1
    8000876c:	0b178263          	beq	a5,a7,80008810 <emulate_fmv_if+0xfc>
    80008770:	01013403          	ld	s0,16(sp)
    80008774:	01813083          	ld	ra,24(sp)
    80008778:	00813483          	ld	s1,8(sp)
    8000877c:	02010113          	add	sp,sp,32
    80008780:	fc9fe06f          	j	80007748 <truly_illegal_insn>
    80008784:	02000e37          	lui	t3,0x2000
    80008788:	07c79063          	bne	a5,t3,800087e8 <emulate_fmv_if+0xd4>
    8000878c:	00c75793          	srl	a5,a4,0xc
    80008790:	0f87f813          	and	a6,a5,248
    80008794:	01050833          	add	a6,a0,a6
    80008798:	0077f793          	and	a5,a5,7
    8000879c:	10083803          	ld	a6,256(a6)
    800087a0:	00078e63          	beqz	a5,800087bc <emulate_fmv_if+0xa8>
    800087a4:	00100893          	li	a7,1
    800087a8:	fd1794e3          	bne	a5,a7,80008770 <emulate_fmv_if+0x5c>
    800087ac:	00080513          	mv	a0,a6
    800087b0:	145010ef          	jal	8000a0f4 <f64_classify>
    800087b4:	02051813          	sll	a6,a0,0x20
    800087b8:	02085813          	srl	a6,a6,0x20
    800087bc:	000067b7          	lui	a5,0x6
    800087c0:	3007a7f3          	csrrs	a5,mstatus,a5
    800087c4:	00445413          	srl	s0,s0,0x4
    800087c8:	0f847413          	and	s0,s0,248
    800087cc:	00848533          	add	a0,s1,s0
    800087d0:	01813083          	ld	ra,24(sp)
    800087d4:	01013403          	ld	s0,16(sp)
    800087d8:	01053023          	sd	a6,0(a0) # 2000000 <_ftext-0x7e000000>
    800087dc:	00813483          	ld	s1,8(sp)
    800087e0:	02010113          	add	sp,sp,32
    800087e4:	00008067          	ret
    800087e8:	00040713          	mv	a4,s0
    800087ec:	01013403          	ld	s0,16(sp)
    800087f0:	01813083          	ld	ra,24(sp)
    800087f4:	00048513          	mv	a0,s1
    800087f8:	00813483          	ld	s1,8(sp)
    800087fc:	00030693          	mv	a3,t1
    80008800:	00088613          	mv	a2,a7
    80008804:	00080593          	mv	a1,a6
    80008808:	02010113          	add	sp,sp,32
    8000880c:	f3dfe06f          	j	80007748 <truly_illegal_insn>
    80008810:	00080513          	mv	a0,a6
    80008814:	695000ef          	jal	800096a8 <f32_classify>
    80008818:	02051813          	sll	a6,a0,0x20
    8000881c:	02085813          	srl	a6,a6,0x20
    80008820:	f9dff06f          	j	800087bc <emulate_fmv_if+0xa8>

0000000080008824 <emulate_fmv_fi>:
    80008824:	001007b7          	lui	a5,0x100
    80008828:	f0778793          	add	a5,a5,-249 # fff07 <_ftext-0x7ff000f9>
    8000882c:	00c75e13          	srl	t3,a4,0xc
    80008830:	00c79793          	sll	a5,a5,0xc
    80008834:	00f00313          	li	t1,15
    80008838:	0f8e7e13          	and	t3,t3,248
    8000883c:	07f78793          	add	a5,a5,127
    80008840:	01c31313          	sll	t1,t1,0x1c
    80008844:	01c50e33          	add	t3,a0,t3
    80008848:	00f777b3          	and	a5,a4,a5
    8000884c:	05330313          	add	t1,t1,83 # 2000053 <_ftext-0x7dffffad>
    80008850:	000e3e03          	ld	t3,0(t3) # 2000000 <_ftext-0x7e000000>
    80008854:	02678a63          	beq	a5,t1,80008888 <emulate_fmv_fi+0x64>
    80008858:	07900313          	li	t1,121
    8000885c:	01931313          	sll	t1,t1,0x19
    80008860:	05330313          	add	t1,t1,83
    80008864:	02679063          	bne	a5,t1,80008884 <emulate_fmv_fi+0x60>
    80008868:	00475813          	srl	a6,a4,0x4
    8000886c:	0f887813          	and	a6,a6,248
    80008870:	010508b3          	add	a7,a0,a6
    80008874:	11c8b023          	sd	t3,256(a7) # 2000100 <_ftext-0x7dffff00>
    80008878:	000067b7          	lui	a5,0x6
    8000887c:	3007a7f3          	csrrs	a5,mstatus,a5
    80008880:	00008067          	ret
    80008884:	ec5fe06f          	j	80007748 <truly_illegal_insn>
    80008888:	00475813          	srl	a6,a4,0x4
    8000888c:	0f887813          	and	a6,a6,248
    80008890:	010508b3          	add	a7,a0,a6
    80008894:	11c8a023          	sw	t3,256(a7)
    80008898:	000067b7          	lui	a5,0x6
    8000889c:	3007a7f3          	csrrs	a5,mstatus,a5
    800088a0:	00008067          	ret

00000000800088a4 <emulate_fmadd>:
    800088a4:	fe010113          	add	sp,sp,-32
    800088a8:	00d6d793          	srl	a5,a3,0xd
    800088ac:	00813823          	sd	s0,16(sp)
    800088b0:	00913423          	sd	s1,8(sp)
    800088b4:	00113c23          	sd	ra,24(sp)
    800088b8:	0037f793          	and	a5,a5,3
    800088bc:	00050493          	mv	s1,a0
    800088c0:	00070413          	mv	s0,a4
    800088c4:	14078063          	beqz	a5,80008a04 <emulate_fmadd+0x160>
    800088c8:	00007337          	lui	t1,0x7
    800088cc:	006777b3          	and	a5,a4,t1
    800088d0:	00447813          	and	a6,s0,4
    800088d4:	00877713          	and	a4,a4,8
    800088d8:	0ff27893          	zext.b	a7,tp
    800088dc:	14679263          	bne	a5,t1,80008a20 <emulate_fmadd+0x17c>
    800088e0:	00889793          	sll	a5,a7,0x8
    800088e4:	011788b3          	add	a7,a5,a7
    800088e8:	00088213          	mv	tp,a7
    800088ec:	060008b7          	lui	a7,0x6000
    800088f0:	011478b3          	and	a7,s0,a7
    800088f4:	08088463          	beqz	a7,8000897c <emulate_fmadd+0xd8>
    800088f8:	020007b7          	lui	a5,0x2000
    800088fc:	10f89463          	bne	a7,a5,80008a04 <emulate_fmadd+0x160>
    80008900:	01845613          	srl	a2,s0,0x18
    80008904:	00c45693          	srl	a3,s0,0xc
    80008908:	01145793          	srl	a5,s0,0x11
    8000890c:	0f867613          	and	a2,a2,248
    80008910:	0f86f693          	and	a3,a3,248
    80008914:	00d486b3          	add	a3,s1,a3
    80008918:	00c48633          	add	a2,s1,a2
    8000891c:	0f87f793          	and	a5,a5,248
    80008920:	00f487b3          	add	a5,s1,a5
    80008924:	1006b503          	ld	a0,256(a3)
    80008928:	10063603          	ld	a2,256(a2)
    8000892c:	1007b583          	ld	a1,256(a5) # 2000100 <_ftext-0x7dffff00>
    80008930:	01003833          	snez	a6,a6
    80008934:	00e03733          	snez	a4,a4
    80008938:	03f81813          	sll	a6,a6,0x3f
    8000893c:	03f71713          	sll	a4,a4,0x3f
    80008940:	00000693          	li	a3,0
    80008944:	00c84633          	xor	a2,a6,a2
    80008948:	00a74533          	xor	a0,a4,a0
    8000894c:	00445413          	srl	s0,s0,0x4
    80008950:	144020ef          	jal	8000aa94 <softfloat_mulAddF64>
    80008954:	0f847413          	and	s0,s0,248
    80008958:	008487b3          	add	a5,s1,s0
    8000895c:	10a7b023          	sd	a0,256(a5)
    80008960:	000067b7          	lui	a5,0x6
    80008964:	3007a7f3          	csrrs	a5,mstatus,a5
    80008968:	01813083          	ld	ra,24(sp)
    8000896c:	01013403          	ld	s0,16(sp)
    80008970:	00813483          	ld	s1,8(sp)
    80008974:	02010113          	add	sp,sp,32
    80008978:	00008067          	ret
    8000897c:	01845613          	srl	a2,s0,0x18
    80008980:	00c45693          	srl	a3,s0,0xc
    80008984:	0f867613          	and	a2,a2,248
    80008988:	0f86f693          	and	a3,a3,248
    8000898c:	00d486b3          	add	a3,s1,a3
    80008990:	00c48633          	add	a2,s1,a2
    80008994:	01145793          	srl	a5,s0,0x11
    80008998:	1006a503          	lw	a0,256(a3)
    8000899c:	10062603          	lw	a2,256(a2)
    800089a0:	0f87f793          	and	a5,a5,248
    800089a4:	00f487b3          	add	a5,s1,a5
    800089a8:	01003833          	snez	a6,a6
    800089ac:	00e03733          	snez	a4,a4
    800089b0:	1007a583          	lw	a1,256(a5) # 6100 <_ftext-0x7fff9f00>
    800089b4:	01f8181b          	sllw	a6,a6,0x1f
    800089b8:	01f7171b          	sllw	a4,a4,0x1f
    800089bc:	01064633          	xor	a2,a2,a6
    800089c0:	00e54533          	xor	a0,a0,a4
    800089c4:	00000693          	li	a3,0
    800089c8:	0006061b          	sext.w	a2,a2
    800089cc:	0005051b          	sext.w	a0,a0
    800089d0:	00445413          	srl	s0,s0,0x4
    800089d4:	571010ef          	jal	8000a744 <softfloat_mulAddF32>
    800089d8:	0f847413          	and	s0,s0,248
    800089dc:	008487b3          	add	a5,s1,s0
    800089e0:	10a7a023          	sw	a0,256(a5)
    800089e4:	000067b7          	lui	a5,0x6
    800089e8:	3007a7f3          	csrrs	a5,mstatus,a5
    800089ec:	01813083          	ld	ra,24(sp)
    800089f0:	01013403          	ld	s0,16(sp)
    800089f4:	00813483          	ld	s1,8(sp)
    800089f8:	02010113          	add	sp,sp,32
    800089fc:	00008067          	ret
    80008a00:	00088213          	mv	tp,a7
    80008a04:	00040713          	mv	a4,s0
    80008a08:	01013403          	ld	s0,16(sp)
    80008a0c:	01813083          	ld	ra,24(sp)
    80008a10:	00048513          	mv	a0,s1
    80008a14:	00813483          	ld	s1,8(sp)
    80008a18:	02010113          	add	sp,sp,32
    80008a1c:	d2dfe06f          	j	80007748 <truly_illegal_insn>
    80008a20:	00c45793          	srl	a5,s0,0xc
    80008a24:	0077f313          	and	t1,a5,7
    80008a28:	00400513          	li	a0,4
    80008a2c:	fc656ae3          	bltu	a0,t1,80008a00 <emulate_fmadd+0x15c>
    80008a30:	00d79793          	sll	a5,a5,0xd
    80008a34:	0000e537          	lui	a0,0xe
    80008a38:	00a7f7b3          	and	a5,a5,a0
    80008a3c:	0117e8b3          	or	a7,a5,a7
    80008a40:	ea9ff06f          	j	800088e8 <emulate_fmadd+0x44>

0000000080008a44 <emulate_float_load>:
    80008a44:	00c75813          	srl	a6,a4,0xc
    80008a48:	0f887813          	and	a6,a6,248
    80008a4c:	01050833          	add	a6,a0,a6
    80008a50:	00083e03          	ld	t3,0(a6)
    80008a54:	4147581b          	sraw	a6,a4,0x14
    80008a58:	00070793          	mv	a5,a4
    80008a5c:	01c80833          	add	a6,a6,t3
    80008a60:	00d6de13          	srl	t3,a3,0xd
    80008a64:	003e7e13          	and	t3,t3,3
    80008a68:	040e0863          	beqz	t3,80008ab8 <emulate_float_load+0x74>
    80008a6c:	00007337          	lui	t1,0x7
    80008a70:	00677333          	and	t1,a4,t1
    80008a74:	00002e37          	lui	t3,0x2
    80008a78:	05c30263          	beq	t1,t3,80008abc <emulate_float_load+0x78>
    80008a7c:	00003e37          	lui	t3,0x3
    80008a80:	03c31c63          	bne	t1,t3,80008ab8 <emulate_float_load+0x74>
    80008a84:	00787713          	and	a4,a6,7
    80008a88:	06071463          	bnez	a4,80008af0 <emulate_float_load+0xac>
    80008a8c:	0047d793          	srl	a5,a5,0x4
    80008a90:	0f87f793          	and	a5,a5,248
    80008a94:	00f508b3          	add	a7,a0,a5
    80008a98:	000205b7          	lui	a1,0x20
    80008a9c:	3005a6f3          	csrrs	a3,mstatus,a1
    80008aa0:	00083783          	ld	a5,0(a6)
    80008aa4:	30069073          	csrw	mstatus,a3
    80008aa8:	10f8b023          	sd	a5,256(a7) # 6000100 <_ftext-0x79ffff00>
    80008aac:	000067b7          	lui	a5,0x6
    80008ab0:	3007a7f3          	csrrs	a5,mstatus,a5
    80008ab4:	00008067          	ret
    80008ab8:	c91fe06f          	j	80007748 <truly_illegal_insn>
    80008abc:	00387713          	and	a4,a6,3
    80008ac0:	02071863          	bnez	a4,80008af0 <emulate_float_load+0xac>
    80008ac4:	0047d793          	srl	a5,a5,0x4
    80008ac8:	0f87f793          	and	a5,a5,248
    80008acc:	00f508b3          	add	a7,a0,a5
    80008ad0:	000205b7          	lui	a1,0x20
    80008ad4:	3005a6f3          	csrrs	a3,mstatus,a1
    80008ad8:	00082783          	lw	a5,0(a6)
    80008adc:	30069073          	csrw	mstatus,a3
    80008ae0:	10f8a023          	sw	a5,256(a7)
    80008ae4:	000067b7          	lui	a5,0x6
    80008ae8:	3007a7f3          	csrrs	a5,mstatus,a5
    80008aec:	00008067          	ret
    80008af0:	34381073          	csrw	mtval,a6
    80008af4:	0bc0006f          	j	80008bb0 <misaligned_load_trap>

0000000080008af8 <emulate_float_store>:
    80008af8:	00c75793          	srl	a5,a4,0xc
    80008afc:	0f87f893          	and	a7,a5,248
    80008b00:	41975e1b          	sraw	t3,a4,0x19
    80008b04:	011508b3          	add	a7,a0,a7
    80008b08:	00775793          	srl	a5,a4,0x7
    80008b0c:	0008be83          	ld	t4,0(a7)
    80008b10:	01f7f793          	and	a5,a5,31
    80008b14:	005e189b          	sllw	a7,t3,0x5
    80008b18:	0117e7b3          	or	a5,a5,a7
    80008b1c:	00d6de13          	srl	t3,a3,0xd
    80008b20:	0007879b          	sext.w	a5,a5
    80008b24:	003e7e13          	and	t3,t3,3
    80008b28:	00070813          	mv	a6,a4
    80008b2c:	01d787b3          	add	a5,a5,t4
    80008b30:	040e0463          	beqz	t3,80008b78 <emulate_float_store+0x80>
    80008b34:	000078b7          	lui	a7,0x7
    80008b38:	011778b3          	and	a7,a4,a7
    80008b3c:	00002e37          	lui	t3,0x2
    80008b40:	03c88e63          	beq	a7,t3,80008b7c <emulate_float_store+0x84>
    80008b44:	00003e37          	lui	t3,0x3
    80008b48:	03c89863          	bne	a7,t3,80008b78 <emulate_float_store+0x80>
    80008b4c:	0077f713          	and	a4,a5,7
    80008b50:	04071c63          	bnez	a4,80008ba8 <emulate_float_store+0xb0>
    80008b54:	01185813          	srl	a6,a6,0x11
    80008b58:	0f887813          	and	a6,a6,248
    80008b5c:	01050333          	add	t1,a0,a6
    80008b60:	10033703          	ld	a4,256(t1) # 7100 <_ftext-0x7fff8f00>
    80008b64:	000205b7          	lui	a1,0x20
    80008b68:	3005a6f3          	csrrs	a3,mstatus,a1
    80008b6c:	00e7b023          	sd	a4,0(a5) # 6000 <_ftext-0x7fffa000>
    80008b70:	30069073          	csrw	mstatus,a3
    80008b74:	00008067          	ret
    80008b78:	bd1fe06f          	j	80007748 <truly_illegal_insn>
    80008b7c:	0037f713          	and	a4,a5,3
    80008b80:	02071463          	bnez	a4,80008ba8 <emulate_float_store+0xb0>
    80008b84:	01185813          	srl	a6,a6,0x11
    80008b88:	0f887813          	and	a6,a6,248
    80008b8c:	01050533          	add	a0,a0,a6
    80008b90:	10052703          	lw	a4,256(a0) # e100 <_ftext-0x7fff1f00>
    80008b94:	000205b7          	lui	a1,0x20
    80008b98:	3005a6f3          	csrrs	a3,mstatus,a1
    80008b9c:	00e7a023          	sw	a4,0(a5)
    80008ba0:	30069073          	csrw	mstatus,a3
    80008ba4:	00008067          	ret
    80008ba8:	34379073          	csrw	mtval,a5
    80008bac:	1d80006f          	j	80008d84 <misaligned_store_trap>

0000000080008bb0 <misaligned_load_trap>:
    80008bb0:	000a05b7          	lui	a1,0xa0
    80008bb4:	00300813          	li	a6,3
    80008bb8:	3005a6f3          	csrrs	a3,mstatus,a1
    80008bbc:	00066703          	lwu	a4,0(a2)
    80008bc0:	30069073          	csrw	mstatus,a3
    80008bc4:	00377893          	and	a7,a4,3
    80008bc8:	00068313          	mv	t1,a3
    80008bcc:	00200593          	li	a1,2
    80008bd0:	01089463          	bne	a7,a6,80008bd8 <misaligned_load_trap+0x28>
    80008bd4:	00400593          	li	a1,4
    80008bd8:	00b60e33          	add	t3,a2,a1
    80008bdc:	343028f3          	csrr	a7,mtval
    80008be0:	000075b7          	lui	a1,0x7
    80008be4:	07f58593          	add	a1,a1,127 # 707f <_ftext-0x7fff8f81>
    80008be8:	00002837          	lui	a6,0x2
    80008bec:	00b775b3          	and	a1,a4,a1
    80008bf0:	00380813          	add	a6,a6,3 # 2003 <_ftext-0x7fffdffd>
    80008bf4:	11058063          	beq	a1,a6,80008cf4 <misaligned_load_trap+0x144>
    80008bf8:	00003837          	lui	a6,0x3
    80008bfc:	00380813          	add	a6,a6,3 # 3003 <_ftext-0x7fffcffd>
    80008c00:	05058a63          	beq	a1,a6,80008c54 <misaligned_load_trap+0xa4>
    80008c04:	000067b7          	lui	a5,0x6
    80008c08:	00378793          	add	a5,a5,3 # 6003 <_ftext-0x7fff9ffd>
    80008c0c:	12f58663          	beq	a1,a5,80008d38 <misaligned_load_trap+0x188>
    80008c10:	000037b7          	lui	a5,0x3
    80008c14:	00778793          	add	a5,a5,7 # 3007 <_ftext-0x7fffcff9>
    80008c18:	0ef58863          	beq	a1,a5,80008d08 <misaligned_load_trap+0x158>
    80008c1c:	000027b7          	lui	a5,0x2
    80008c20:	00778793          	add	a5,a5,7 # 2007 <_ftext-0x7fffdff9>
    80008c24:	12f58463          	beq	a1,a5,80008d4c <misaligned_load_trap+0x19c>
    80008c28:	000017b7          	lui	a5,0x1
    80008c2c:	00378793          	add	a5,a5,3 # 1003 <_ftext-0x7fffeffd>
    80008c30:	12f58863          	beq	a1,a5,80008d60 <misaligned_load_trap+0x1b0>
    80008c34:	000057b7          	lui	a5,0x5
    80008c38:	00378793          	add	a5,a5,3 # 5003 <_ftext-0x7fffaffd>
    80008c3c:	12f59c63          	bne	a1,a5,80008d74 <misaligned_load_trap+0x1c4>
    80008c40:	00200313          	li	t1,2
    80008c44:	00200f93          	li	t6,2
    80008c48:	00000f13          	li	t5,0
    80008c4c:	00000e93          	li	t4,0
    80008c50:	0140006f          	j	80008c64 <misaligned_load_trap+0xb4>
    80008c54:	00800313          	li	t1,8
    80008c58:	00800f93          	li	t6,8
    80008c5c:	00000f13          	li	t5,0
    80008c60:	00000e93          	li	t4,0
    80008c64:	ff010113          	add	sp,sp,-16
    80008c68:	00013423          	sd	zero,8(sp)
    80008c6c:	01130333          	add	t1,t1,a7
    80008c70:	00088793          	mv	a5,a7
    80008c74:	41178833          	sub	a6,a5,a7
    80008c78:	00810593          	add	a1,sp,8
    80008c7c:	01058833          	add	a6,a1,a6
    80008c80:	00178793          	add	a5,a5,1
    80008c84:	000205b7          	lui	a1,0x20
    80008c88:	3005a6f3          	csrrs	a3,mstatus,a1
    80008c8c:	fff7c283          	lbu	t0,-1(a5)
    80008c90:	30069073          	csrw	mstatus,a3
    80008c94:	00580023          	sb	t0,0(a6)
    80008c98:	fc679ee3          	bne	a5,t1,80008c74 <misaligned_load_trap+0xc4>
    80008c9c:	00475793          	srl	a5,a4,0x4
    80008ca0:	0f87f793          	and	a5,a5,248
    80008ca4:	020f0863          	beqz	t5,80008cd4 <misaligned_load_trap+0x124>
    80008ca8:	10078793          	add	a5,a5,256
    80008cac:	00800713          	li	a4,8
    80008cb0:	00f507b3          	add	a5,a0,a5
    80008cb4:	06ef8463          	beq	t6,a4,80008d1c <misaligned_load_trap+0x16c>
    80008cb8:	00812703          	lw	a4,8(sp)
    80008cbc:	00e7a023          	sw	a4,0(a5)
    80008cc0:	000067b7          	lui	a5,0x6
    80008cc4:	3007a7f3          	csrrs	a5,mstatus,a5
    80008cc8:	341e1073          	csrw	mepc,t3
    80008ccc:	01010113          	add	sp,sp,16
    80008cd0:	00008067          	ret
    80008cd4:	00813703          	ld	a4,8(sp)
    80008cd8:	00f507b3          	add	a5,a0,a5
    80008cdc:	01d71733          	sll	a4,a4,t4
    80008ce0:	41d75733          	sra	a4,a4,t4
    80008ce4:	00e7b023          	sd	a4,0(a5) # 6000 <_ftext-0x7fffa000>
    80008ce8:	341e1073          	csrw	mepc,t3
    80008cec:	01010113          	add	sp,sp,16
    80008cf0:	00008067          	ret
    80008cf4:	00400313          	li	t1,4
    80008cf8:	00400f93          	li	t6,4
    80008cfc:	00000f13          	li	t5,0
    80008d00:	02000e93          	li	t4,32
    80008d04:	f61ff06f          	j	80008c64 <misaligned_load_trap+0xb4>
    80008d08:	00800313          	li	t1,8
    80008d0c:	00800f93          	li	t6,8
    80008d10:	00100f13          	li	t5,1
    80008d14:	00000e93          	li	t4,0
    80008d18:	f4dff06f          	j	80008c64 <misaligned_load_trap+0xb4>
    80008d1c:	00813703          	ld	a4,8(sp)
    80008d20:	00e7b023          	sd	a4,0(a5)
    80008d24:	000067b7          	lui	a5,0x6
    80008d28:	3007a7f3          	csrrs	a5,mstatus,a5
    80008d2c:	341e1073          	csrw	mepc,t3
    80008d30:	01010113          	add	sp,sp,16
    80008d34:	00008067          	ret
    80008d38:	00400313          	li	t1,4
    80008d3c:	00400f93          	li	t6,4
    80008d40:	00000f13          	li	t5,0
    80008d44:	00000e93          	li	t4,0
    80008d48:	f1dff06f          	j	80008c64 <misaligned_load_trap+0xb4>
    80008d4c:	00400313          	li	t1,4
    80008d50:	00400f93          	li	t6,4
    80008d54:	00100f13          	li	t5,1
    80008d58:	00000e93          	li	t4,0
    80008d5c:	f09ff06f          	j	80008c64 <misaligned_load_trap+0xb4>
    80008d60:	00200313          	li	t1,2
    80008d64:	00200f93          	li	t6,2
    80008d68:	00000f13          	li	t5,0
    80008d6c:	03000e93          	li	t4,48
    80008d70:	ef5ff06f          	j	80008c64 <misaligned_load_trap+0xb4>
    80008d74:	3422d073          	csrw	mcause,5
    80008d78:	00500593          	li	a1,5
    80008d7c:	00030693          	mv	a3,t1
    80008d80:	9c9fe06f          	j	80007748 <truly_illegal_insn>

0000000080008d84 <misaligned_store_trap>:
    80008d84:	000a05b7          	lui	a1,0xa0
    80008d88:	00300793          	li	a5,3
    80008d8c:	3005a6f3          	csrrs	a3,mstatus,a1
    80008d90:	00066703          	lwu	a4,0(a2)
    80008d94:	30069073          	csrw	mstatus,a3
    80008d98:	00377593          	and	a1,a4,3
    80008d9c:	ff010113          	add	sp,sp,-16
    80008da0:	00068e13          	mv	t3,a3
    80008da4:	00200813          	li	a6,2
    80008da8:	00f59463          	bne	a1,a5,80008db0 <misaligned_store_trap+0x2c>
    80008dac:	00400813          	li	a6,4
    80008db0:	01175593          	srl	a1,a4,0x11
    80008db4:	0f85f593          	and	a1,a1,248
    80008db8:	00b505b3          	add	a1,a0,a1
    80008dbc:	0005b303          	ld	t1,0(a1) # a0000 <_ftext-0x7ff60000>
    80008dc0:	000077b7          	lui	a5,0x7
    80008dc4:	07f78793          	add	a5,a5,127 # 707f <_ftext-0x7fff8f81>
    80008dc8:	000028b7          	lui	a7,0x2
    80008dcc:	00613423          	sd	t1,8(sp)
    80008dd0:	00f777b3          	and	a5,a4,a5
    80008dd4:	02388893          	add	a7,a7,35 # 2023 <_ftext-0x7fffdfdd>
    80008dd8:	01060333          	add	t1,a2,a6
    80008ddc:	09178063          	beq	a5,a7,80008e5c <misaligned_store_trap+0xd8>
    80008de0:	00003837          	lui	a6,0x3
    80008de4:	02380813          	add	a6,a6,35 # 3023 <_ftext-0x7fffcfdd>
    80008de8:	03078a63          	beq	a5,a6,80008e1c <misaligned_store_trap+0x98>
    80008dec:	00003837          	lui	a6,0x3
    80008df0:	02780813          	add	a6,a6,39 # 3027 <_ftext-0x7fffcfd9>
    80008df4:	09078463          	beq	a5,a6,80008e7c <misaligned_store_trap+0xf8>
    80008df8:	00002837          	lui	a6,0x2
    80008dfc:	02780813          	add	a6,a6,39 # 2027 <_ftext-0x7fffdfd9>
    80008e00:	07078463          	beq	a5,a6,80008e68 <misaligned_store_trap+0xe4>
    80008e04:	000015b7          	lui	a1,0x1
    80008e08:	02358593          	add	a1,a1,35 # 1023 <_ftext-0x7fffefdd>
    80008e0c:	08b79263          	bne	a5,a1,80008e90 <misaligned_store_trap+0x10c>
    80008e10:	34302873          	csrr	a6,mtval
    80008e14:	00200893          	li	a7,2
    80008e18:	00c0006f          	j	80008e24 <misaligned_store_trap+0xa0>
    80008e1c:	34302873          	csrr	a6,mtval
    80008e20:	00800893          	li	a7,8
    80008e24:	00810793          	add	a5,sp,8
    80008e28:	00f888b3          	add	a7,a7,a5
    80008e2c:	40f80833          	sub	a6,a6,a5
    80008e30:	0007c703          	lbu	a4,0(a5)
    80008e34:	00f80533          	add	a0,a6,a5
    80008e38:	000205b7          	lui	a1,0x20
    80008e3c:	3005a6f3          	csrrs	a3,mstatus,a1
    80008e40:	00e50023          	sb	a4,0(a0)
    80008e44:	30069073          	csrw	mstatus,a3
    80008e48:	00178793          	add	a5,a5,1
    80008e4c:	fef892e3          	bne	a7,a5,80008e30 <misaligned_store_trap+0xac>
    80008e50:	34131073          	csrw	mepc,t1
    80008e54:	01010113          	add	sp,sp,16
    80008e58:	00008067          	ret
    80008e5c:	34302873          	csrr	a6,mtval
    80008e60:	00400893          	li	a7,4
    80008e64:	fc1ff06f          	j	80008e24 <misaligned_store_trap+0xa0>
    80008e68:	1005a783          	lw	a5,256(a1) # 20100 <_ftext-0x7ffdff00>
    80008e6c:	00f13423          	sd	a5,8(sp)
    80008e70:	34302873          	csrr	a6,mtval
    80008e74:	00400893          	li	a7,4
    80008e78:	fadff06f          	j	80008e24 <misaligned_store_trap+0xa0>
    80008e7c:	1005b783          	ld	a5,256(a1)
    80008e80:	00f13423          	sd	a5,8(sp)
    80008e84:	34302873          	csrr	a6,mtval
    80008e88:	00800893          	li	a7,8
    80008e8c:	f99ff06f          	j	80008e24 <misaligned_store_trap+0xa0>
    80008e90:	3423d073          	csrw	mcause,7
    80008e94:	00700593          	li	a1,7
    80008e98:	000e0693          	mv	a3,t3
    80008e9c:	01010113          	add	sp,sp,16
    80008ea0:	8a9fe06f          	j	80007748 <truly_illegal_insn>

0000000080008ea4 <f32_add>:
    80008ea4:	00a5c7b3          	xor	a5,a1,a0
    80008ea8:	02079713          	sll	a4,a5,0x20
    80008eac:	0005051b          	sext.w	a0,a0
    80008eb0:	0005859b          	sext.w	a1,a1
    80008eb4:	00003797          	auipc	a5,0x3
    80008eb8:	98c78793          	add	a5,a5,-1652 # 8000b840 <softfloat_subMagsF32>
    80008ebc:	00074663          	bltz	a4,80008ec8 <f32_add+0x24>
    80008ec0:	00001797          	auipc	a5,0x1
    80008ec4:	31878793          	add	a5,a5,792 # 8000a1d8 <softfloat_addMagsF32>
    80008ec8:	00078067          	jr	a5

0000000080008ecc <f32_div>:
    80008ecc:	fc010113          	add	sp,sp,-64
    80008ed0:	008007b7          	lui	a5,0x800
    80008ed4:	fff78793          	add	a5,a5,-1 # 7fffff <_ftext-0x7f800001>
    80008ed8:	01313c23          	sd	s3,24(sp)
    80008edc:	0175599b          	srlw	s3,a0,0x17
    80008ee0:	00a7f733          	and	a4,a5,a0
    80008ee4:	0175d69b          	srlw	a3,a1,0x17
    80008ee8:	00b7f7b3          	and	a5,a5,a1
    80008eec:	02813823          	sd	s0,48(sp)
    80008ef0:	02913423          	sd	s1,40(sp)
    80008ef4:	03213023          	sd	s2,32(sp)
    80008ef8:	02113c23          	sd	ra,56(sp)
    80008efc:	00b54933          	xor	s2,a0,a1
    80008f00:	0ff9f993          	zext.b	s3,s3
    80008f04:	0ff00613          	li	a2,255
    80008f08:	0007049b          	sext.w	s1,a4
    80008f0c:	0005051b          	sext.w	a0,a0
    80008f10:	0005859b          	sext.w	a1,a1
    80008f14:	0ff6f713          	zext.b	a4,a3
    80008f18:	0007841b          	sext.w	s0,a5
    80008f1c:	0009091b          	sext.w	s2,s2
    80008f20:	06c98e63          	beq	s3,a2,80008f9c <f32_div+0xd0>
    80008f24:	04c70863          	beq	a4,a2,80008f74 <f32_div+0xa8>
    80008f28:	01413823          	sd	s4,16(sp)
    80008f2c:	00070a1b          	sext.w	s4,a4
    80008f30:	0a071663          	bnez	a4,80008fdc <f32_div+0x110>
    80008f34:	08041c63          	bnez	s0,80008fcc <f32_div+0x100>
    80008f38:	0134e733          	or	a4,s1,s3
    80008f3c:	1a070463          	beqz	a4,800090e4 <f32_div+0x218>
    80008f40:	00826213          	or	tp,tp,8
    80008f44:	01013a03          	ld	s4,16(sp)
    80008f48:	03813083          	ld	ra,56(sp)
    80008f4c:	03013403          	ld	s0,48(sp)
    80008f50:	800007b7          	lui	a5,0x80000
    80008f54:	00f977b3          	and	a5,s2,a5
    80008f58:	7f800537          	lui	a0,0x7f800
    80008f5c:	02813483          	ld	s1,40(sp)
    80008f60:	02013903          	ld	s2,32(sp)
    80008f64:	01813983          	ld	s3,24(sp)
    80008f68:	00f5053b          	addw	a0,a0,a5
    80008f6c:	04010113          	add	sp,sp,64
    80008f70:	00008067          	ret
    80008f74:	14040063          	beqz	s0,800090b4 <f32_div+0x1e8>
    80008f78:	521020ef          	jal	8000bc98 <softfloat_propagateNaNF32UI>
    80008f7c:	03813083          	ld	ra,56(sp)
    80008f80:	03013403          	ld	s0,48(sp)
    80008f84:	02813483          	ld	s1,40(sp)
    80008f88:	02013903          	ld	s2,32(sp)
    80008f8c:	01813983          	ld	s3,24(sp)
    80008f90:	0005051b          	sext.w	a0,a0
    80008f94:	04010113          	add	sp,sp,64
    80008f98:	00008067          	ret
    80008f9c:	fc049ee3          	bnez	s1,80008f78 <f32_div+0xac>
    80008fa0:	fb3714e3          	bne	a4,s3,80008f48 <f32_div+0x7c>
    80008fa4:	fc041ae3          	bnez	s0,80008f78 <f32_div+0xac>
    80008fa8:	01026213          	or	tp,tp,16
    80008fac:	03813083          	ld	ra,56(sp)
    80008fb0:	03013403          	ld	s0,48(sp)
    80008fb4:	02813483          	ld	s1,40(sp)
    80008fb8:	02013903          	ld	s2,32(sp)
    80008fbc:	01813983          	ld	s3,24(sp)
    80008fc0:	7fc00537          	lui	a0,0x7fc00
    80008fc4:	04010113          	add	sp,sp,64
    80008fc8:	00008067          	ret
    80008fcc:	00040513          	mv	a0,s0
    80008fd0:	014020ef          	jal	8000afe4 <softfloat_normSubnormalF32Sig>
    80008fd4:	00050a1b          	sext.w	s4,a0
    80008fd8:	42055413          	sra	s0,a0,0x20
    80008fdc:	0a098e63          	beqz	s3,80009098 <f32_div+0x1cc>
    80008fe0:	0009899b          	sext.w	s3,s3
    80008fe4:	008007b7          	lui	a5,0x800
    80008fe8:	00f4e733          	or	a4,s1,a5
    80008fec:	00f467b3          	or	a5,s0,a5
    80008ff0:	0007071b          	sext.w	a4,a4
    80008ff4:	0007879b          	sext.w	a5,a5
    80008ff8:	414989bb          	subw	s3,s3,s4
    80008ffc:	0cf77e63          	bgeu	a4,a5,800090d8 <f32_div+0x20c>
    80009000:	0087149b          	sllw	s1,a4,0x8
    80009004:	07d9899b          	addw	s3,s3,125
    80009008:	0087941b          	sllw	s0,a5,0x8
    8000900c:	0004051b          	sext.w	a0,s0
    80009010:	55c010ef          	jal	8000a56c <softfloat_approxRecip32_1>
    80009014:	02049493          	sll	s1,s1,0x20
    80009018:	02051793          	sll	a5,a0,0x20
    8000901c:	0204d493          	srl	s1,s1,0x20
    80009020:	0207d793          	srl	a5,a5,0x20
    80009024:	029787b3          	mul	a5,a5,s1
    80009028:	4207d793          	sra	a5,a5,0x20
    8000902c:	0027879b          	addw	a5,a5,2 # 800002 <_ftext-0x7f7ffffe>
    80009030:	03e7f713          	and	a4,a5,62
    80009034:	0007861b          	sext.w	a2,a5
    80009038:	02071c63          	bnez	a4,80009070 <f32_div+0x1a4>
    8000903c:	ffc7f613          	and	a2,a5,-4
    80009040:	0016179b          	sllw	a5,a2,0x1
    80009044:	02079713          	sll	a4,a5,0x20
    80009048:	02041793          	sll	a5,s0,0x20
    8000904c:	02075713          	srl	a4,a4,0x20
    80009050:	0207d793          	srl	a5,a5,0x20
    80009054:	02f707b3          	mul	a5,a4,a5
    80009058:	02049493          	sll	s1,s1,0x20
    8000905c:	0006061b          	sext.w	a2,a2
    80009060:	40f484b3          	sub	s1,s1,a5
    80009064:	0804c463          	bltz	s1,800090ec <f32_div+0x220>
    80009068:	00048463          	beqz	s1,80009070 <f32_div+0x1a4>
    8000906c:	00166613          	or	a2,a2,1
    80009070:	03013403          	ld	s0,48(sp)
    80009074:	01013a03          	ld	s4,16(sp)
    80009078:	03813083          	ld	ra,56(sp)
    8000907c:	02813483          	ld	s1,40(sp)
    80009080:	00098593          	mv	a1,s3
    80009084:	01f9551b          	srlw	a0,s2,0x1f
    80009088:	01813983          	ld	s3,24(sp)
    8000908c:	02013903          	ld	s2,32(sp)
    80009090:	04010113          	add	sp,sp,64
    80009094:	0a40206f          	j	8000b138 <softfloat_roundPackToF32>
    80009098:	00048c63          	beqz	s1,800090b0 <f32_div+0x1e4>
    8000909c:	00048513          	mv	a0,s1
    800090a0:	745010ef          	jal	8000afe4 <softfloat_normSubnormalF32Sig>
    800090a4:	0005099b          	sext.w	s3,a0
    800090a8:	42055493          	sra	s1,a0,0x20
    800090ac:	f39ff06f          	j	80008fe4 <f32_div+0x118>
    800090b0:	01013a03          	ld	s4,16(sp)
    800090b4:	03813083          	ld	ra,56(sp)
    800090b8:	03013403          	ld	s0,48(sp)
    800090bc:	800007b7          	lui	a5,0x80000
    800090c0:	02813483          	ld	s1,40(sp)
    800090c4:	01813983          	ld	s3,24(sp)
    800090c8:	00f97533          	and	a0,s2,a5
    800090cc:	02013903          	ld	s2,32(sp)
    800090d0:	04010113          	add	sp,sp,64
    800090d4:	00008067          	ret
    800090d8:	0077149b          	sllw	s1,a4,0x7
    800090dc:	07e9899b          	addw	s3,s3,126
    800090e0:	f29ff06f          	j	80009008 <f32_div+0x13c>
    800090e4:	01013a03          	ld	s4,16(sp)
    800090e8:	ec1ff06f          	j	80008fa8 <f32_div+0xdc>
    800090ec:	ffc6061b          	addw	a2,a2,-4
    800090f0:	f81ff06f          	j	80009070 <f32_div+0x1a4>

00000000800090f4 <f32_eq>:
    800090f4:	00050793          	mv	a5,a0
    800090f8:	fff7c713          	not	a4,a5
    800090fc:	0005061b          	sext.w	a2,a0
    80009100:	01775513          	srl	a0,a4,0x17
    80009104:	0ff57513          	zext.b	a0,a0
    80009108:	0005869b          	sext.w	a3,a1
    8000910c:	00051663          	bnez	a0,80009118 <f32_eq+0x24>
    80009110:	02979713          	sll	a4,a5,0x29
    80009114:	02071a63          	bnez	a4,80009148 <f32_eq+0x54>
    80009118:	fff5c713          	not	a4,a1
    8000911c:	01775513          	srl	a0,a4,0x17
    80009120:	0ff57513          	zext.b	a0,a0
    80009124:	00051663          	bnez	a0,80009130 <f32_eq+0x3c>
    80009128:	02959713          	sll	a4,a1,0x29
    8000912c:	00071e63          	bnez	a4,80009148 <f32_eq+0x54>
    80009130:	00100513          	li	a0,1
    80009134:	00d60863          	beq	a2,a3,80009144 <f32_eq+0x50>
    80009138:	00b7e533          	or	a0,a5,a1
    8000913c:	0015151b          	sllw	a0,a0,0x1
    80009140:	00153513          	seqz	a0,a0
    80009144:	00008067          	ret
    80009148:	7fc00737          	lui	a4,0x7fc00
    8000914c:	00e7f733          	and	a4,a5,a4
    80009150:	7f8006b7          	lui	a3,0x7f800
    80009154:	02d70663          	beq	a4,a3,80009180 <f32_eq+0x8c>
    80009158:	7fc007b7          	lui	a5,0x7fc00
    8000915c:	00f5f7b3          	and	a5,a1,a5
    80009160:	7f800737          	lui	a4,0x7f800
    80009164:	00000513          	li	a0,0
    80009168:	fce79ee3          	bne	a5,a4,80009144 <f32_eq+0x50>
    8000916c:	02a59593          	sll	a1,a1,0x2a
    80009170:	fc058ae3          	beqz	a1,80009144 <f32_eq+0x50>
    80009174:	01026213          	or	tp,tp,16
    80009178:	00000513          	li	a0,0
    8000917c:	00008067          	ret
    80009180:	02a79793          	sll	a5,a5,0x2a
    80009184:	fe0798e3          	bnez	a5,80009174 <f32_eq+0x80>
    80009188:	fd1ff06f          	j	80009158 <f32_eq+0x64>

000000008000918c <f32_lt>:
    8000918c:	00050793          	mv	a5,a0
    80009190:	fff7c693          	not	a3,a5
    80009194:	0005071b          	sext.w	a4,a0
    80009198:	0176d513          	srl	a0,a3,0x17
    8000919c:	0ff57513          	zext.b	a0,a0
    800091a0:	0005861b          	sext.w	a2,a1
    800091a4:	00051663          	bnez	a0,800091b0 <f32_lt+0x24>
    800091a8:	02979693          	sll	a3,a5,0x29
    800091ac:	04069e63          	bnez	a3,80009208 <f32_lt+0x7c>
    800091b0:	fff5c693          	not	a3,a1
    800091b4:	0176d513          	srl	a0,a3,0x17
    800091b8:	0ff57513          	zext.b	a0,a0
    800091bc:	00051663          	bnez	a0,800091c8 <f32_lt+0x3c>
    800091c0:	02959693          	sll	a3,a1,0x29
    800091c4:	04069263          	bnez	a3,80009208 <f32_lt+0x7c>
    800091c8:	00b7c6b3          	xor	a3,a5,a1
    800091cc:	02069513          	sll	a0,a3,0x20
    800091d0:	02054063          	bltz	a0,800091f0 <f32_lt+0x64>
    800091d4:	00000513          	li	a0,0
    800091d8:	00c70a63          	beq	a4,a2,800091ec <f32_lt+0x60>
    800091dc:	00c73733          	sltu	a4,a4,a2
    800091e0:	01f7d79b          	srlw	a5,a5,0x1f
    800091e4:	00f74733          	xor	a4,a4,a5
    800091e8:	0ff77513          	zext.b	a0,a4
    800091ec:	00008067          	ret
    800091f0:	00000513          	li	a0,0
    800091f4:	fe075ce3          	bgez	a4,800091ec <f32_lt+0x60>
    800091f8:	00b7e533          	or	a0,a5,a1
    800091fc:	0015151b          	sllw	a0,a0,0x1
    80009200:	00a03533          	snez	a0,a0
    80009204:	00008067          	ret
    80009208:	01026213          	or	tp,tp,16
    8000920c:	00000513          	li	a0,0
    80009210:	00008067          	ret

0000000080009214 <f32_lt_quiet>:
    80009214:	00050793          	mv	a5,a0
    80009218:	fff7c693          	not	a3,a5
    8000921c:	0005071b          	sext.w	a4,a0
    80009220:	0176d513          	srl	a0,a3,0x17
    80009224:	0ff57513          	zext.b	a0,a0
    80009228:	0005861b          	sext.w	a2,a1
    8000922c:	00051663          	bnez	a0,80009238 <f32_lt_quiet+0x24>
    80009230:	02979693          	sll	a3,a5,0x29
    80009234:	04069e63          	bnez	a3,80009290 <f32_lt_quiet+0x7c>
    80009238:	fff5c693          	not	a3,a1
    8000923c:	0176d513          	srl	a0,a3,0x17
    80009240:	0ff57513          	zext.b	a0,a0
    80009244:	00051663          	bnez	a0,80009250 <f32_lt_quiet+0x3c>
    80009248:	02959693          	sll	a3,a1,0x29
    8000924c:	04069263          	bnez	a3,80009290 <f32_lt_quiet+0x7c>
    80009250:	00b7c6b3          	xor	a3,a5,a1
    80009254:	02069513          	sll	a0,a3,0x20
    80009258:	02054063          	bltz	a0,80009278 <f32_lt_quiet+0x64>
    8000925c:	00000513          	li	a0,0
    80009260:	00c70a63          	beq	a4,a2,80009274 <f32_lt_quiet+0x60>
    80009264:	00c73733          	sltu	a4,a4,a2
    80009268:	01f7d79b          	srlw	a5,a5,0x1f
    8000926c:	00f74733          	xor	a4,a4,a5
    80009270:	0ff77513          	zext.b	a0,a4
    80009274:	00008067          	ret
    80009278:	00000513          	li	a0,0
    8000927c:	fe075ce3          	bgez	a4,80009274 <f32_lt_quiet+0x60>
    80009280:	00b7e533          	or	a0,a5,a1
    80009284:	0015151b          	sllw	a0,a0,0x1
    80009288:	00a03533          	snez	a0,a0
    8000928c:	00008067          	ret
    80009290:	7fc00737          	lui	a4,0x7fc00
    80009294:	00e7f733          	and	a4,a5,a4
    80009298:	7f8006b7          	lui	a3,0x7f800
    8000929c:	02d70663          	beq	a4,a3,800092c8 <f32_lt_quiet+0xb4>
    800092a0:	7fc007b7          	lui	a5,0x7fc00
    800092a4:	00f5f7b3          	and	a5,a1,a5
    800092a8:	7f800737          	lui	a4,0x7f800
    800092ac:	00000513          	li	a0,0
    800092b0:	fce792e3          	bne	a5,a4,80009274 <f32_lt_quiet+0x60>
    800092b4:	02a59593          	sll	a1,a1,0x2a
    800092b8:	fa058ee3          	beqz	a1,80009274 <f32_lt_quiet+0x60>
    800092bc:	01026213          	or	tp,tp,16
    800092c0:	00000513          	li	a0,0
    800092c4:	00008067          	ret
    800092c8:	02a79793          	sll	a5,a5,0x2a
    800092cc:	fe0798e3          	bnez	a5,800092bc <f32_lt_quiet+0xa8>
    800092d0:	fd1ff06f          	j	800092a0 <f32_lt_quiet+0x8c>

00000000800092d4 <f32_mul>:
    800092d4:	008007b7          	lui	a5,0x800
    800092d8:	fc010113          	add	sp,sp,-64
    800092dc:	fff78793          	add	a5,a5,-1 # 7fffff <_ftext-0x7f800001>
    800092e0:	0175571b          	srlw	a4,a0,0x17
    800092e4:	00a5c633          	xor	a2,a1,a0
    800092e8:	02813823          	sd	s0,48(sp)
    800092ec:	03213023          	sd	s2,32(sp)
    800092f0:	01313c23          	sd	s3,24(sp)
    800092f4:	00a7f933          	and	s2,a5,a0
    800092f8:	0175d99b          	srlw	s3,a1,0x17
    800092fc:	00b7f7b3          	and	a5,a5,a1
    80009300:	01413823          	sd	s4,16(sp)
    80009304:	02113c23          	sd	ra,56(sp)
    80009308:	0ff77713          	zext.b	a4,a4
    8000930c:	0ff00693          	li	a3,255
    80009310:	0005051b          	sext.w	a0,a0
    80009314:	0009091b          	sext.w	s2,s2
    80009318:	0005859b          	sext.w	a1,a1
    8000931c:	0ff9f993          	zext.b	s3,s3
    80009320:	0007841b          	sext.w	s0,a5
    80009324:	00060a1b          	sext.w	s4,a2
    80009328:	06d70663          	beq	a4,a3,80009394 <f32_mul+0xc0>
    8000932c:	02d98e63          	beq	s3,a3,80009368 <f32_mul+0x94>
    80009330:	02913423          	sd	s1,40(sp)
    80009334:	0007049b          	sext.w	s1,a4
    80009338:	0a071063          	bnez	a4,800093d8 <f32_mul+0x104>
    8000933c:	08091663          	bnez	s2,800093c8 <f32_mul+0xf4>
    80009340:	03813083          	ld	ra,56(sp)
    80009344:	03013403          	ld	s0,48(sp)
    80009348:	800007b7          	lui	a5,0x80000
    8000934c:	02813483          	ld	s1,40(sp)
    80009350:	02013903          	ld	s2,32(sp)
    80009354:	01813983          	ld	s3,24(sp)
    80009358:	00fa7533          	and	a0,s4,a5
    8000935c:	01013a03          	ld	s4,16(sp)
    80009360:	04010113          	add	sp,sp,64
    80009364:	00008067          	ret
    80009368:	00e96933          	or	s2,s2,a4
    8000936c:	02040a63          	beqz	s0,800093a0 <f32_mul+0xcc>
    80009370:	129020ef          	jal	8000bc98 <softfloat_propagateNaNF32UI>
    80009374:	03813083          	ld	ra,56(sp)
    80009378:	03013403          	ld	s0,48(sp)
    8000937c:	02013903          	ld	s2,32(sp)
    80009380:	01813983          	ld	s3,24(sp)
    80009384:	01013a03          	ld	s4,16(sp)
    80009388:	0005051b          	sext.w	a0,a0
    8000938c:	04010113          	add	sp,sp,64
    80009390:	00008067          	ret
    80009394:	fc091ee3          	bnez	s2,80009370 <f32_mul+0x9c>
    80009398:	0ce98263          	beq	s3,a4,8000945c <f32_mul+0x188>
    8000939c:	01346933          	or	s2,s0,s3
    800093a0:	0c091063          	bnez	s2,80009460 <f32_mul+0x18c>
    800093a4:	01026213          	or	tp,tp,16
    800093a8:	03813083          	ld	ra,56(sp)
    800093ac:	03013403          	ld	s0,48(sp)
    800093b0:	02013903          	ld	s2,32(sp)
    800093b4:	01813983          	ld	s3,24(sp)
    800093b8:	01013a03          	ld	s4,16(sp)
    800093bc:	7fc00537          	lui	a0,0x7fc00
    800093c0:	04010113          	add	sp,sp,64
    800093c4:	00008067          	ret
    800093c8:	00090513          	mv	a0,s2
    800093cc:	419010ef          	jal	8000afe4 <softfloat_normSubnormalF32Sig>
    800093d0:	0005049b          	sext.w	s1,a0
    800093d4:	42055913          	sra	s2,a0,0x20
    800093d8:	0a099a63          	bnez	s3,8000948c <f32_mul+0x1b8>
    800093dc:	f60402e3          	beqz	s0,80009340 <f32_mul+0x6c>
    800093e0:	00040513          	mv	a0,s0
    800093e4:	401010ef          	jal	8000afe4 <softfloat_normSubnormalF32Sig>
    800093e8:	0005099b          	sext.w	s3,a0
    800093ec:	42055413          	sra	s0,a0,0x20
    800093f0:	400007b7          	lui	a5,0x40000
    800093f4:	0079151b          	sllw	a0,s2,0x7
    800093f8:	00f56533          	or	a0,a0,a5
    800093fc:	0084141b          	sllw	s0,s0,0x8
    80009400:	800007b7          	lui	a5,0x80000
    80009404:	00f46433          	or	s0,s0,a5
    80009408:	02051513          	sll	a0,a0,0x20
    8000940c:	02041413          	sll	s0,s0,0x20
    80009410:	02055513          	srl	a0,a0,0x20
    80009414:	02045413          	srl	s0,s0,0x20
    80009418:	02850533          	mul	a0,a0,s0
    8000941c:	02000593          	li	a1,32
    80009420:	013484bb          	addw	s1,s1,s3
    80009424:	300020ef          	jal	8000b724 <softfloat_shortShiftRightJam64>
    80009428:	0005061b          	sext.w	a2,a0
    8000942c:	400007b7          	lui	a5,0x40000
    80009430:	06f66263          	bltu	a2,a5,80009494 <f32_mul+0x1c0>
    80009434:	f814859b          	addw	a1,s1,-127
    80009438:	03013403          	ld	s0,48(sp)
    8000943c:	02813483          	ld	s1,40(sp)
    80009440:	03813083          	ld	ra,56(sp)
    80009444:	02013903          	ld	s2,32(sp)
    80009448:	01813983          	ld	s3,24(sp)
    8000944c:	01fa551b          	srlw	a0,s4,0x1f
    80009450:	01013a03          	ld	s4,16(sp)
    80009454:	04010113          	add	sp,sp,64
    80009458:	4e10106f          	j	8000b138 <softfloat_roundPackToF32>
    8000945c:	f0041ae3          	bnez	s0,80009370 <f32_mul+0x9c>
    80009460:	03813083          	ld	ra,56(sp)
    80009464:	03013403          	ld	s0,48(sp)
    80009468:	800007b7          	lui	a5,0x80000
    8000946c:	00fa77b3          	and	a5,s4,a5
    80009470:	7f800537          	lui	a0,0x7f800
    80009474:	02013903          	ld	s2,32(sp)
    80009478:	01813983          	ld	s3,24(sp)
    8000947c:	01013a03          	ld	s4,16(sp)
    80009480:	00f5053b          	addw	a0,a0,a5
    80009484:	04010113          	add	sp,sp,64
    80009488:	00008067          	ret
    8000948c:	0009899b          	sext.w	s3,s3
    80009490:	f61ff06f          	j	800093f0 <f32_mul+0x11c>
    80009494:	0016161b          	sllw	a2,a2,0x1
    80009498:	f804859b          	addw	a1,s1,-128
    8000949c:	f9dff06f          	j	80009438 <f32_mul+0x164>

00000000800094a0 <f32_sqrt>:
    800094a0:	fd010113          	add	sp,sp,-48
    800094a4:	0175579b          	srlw	a5,a0,0x17
    800094a8:	02951593          	sll	a1,a0,0x29
    800094ac:	02113423          	sd	ra,40(sp)
    800094b0:	0ff7f793          	zext.b	a5,a5
    800094b4:	0ff00713          	li	a4,255
    800094b8:	0005069b          	sext.w	a3,a0
    800094bc:	0295d593          	srl	a1,a1,0x29
    800094c0:	02e78c63          	beq	a5,a4,800094f8 <f32_sqrt+0x58>
    800094c4:	0006cc63          	bltz	a3,800094dc <f32_sqrt+0x3c>
    800094c8:	0e079c63          	bnez	a5,800095c0 <f32_sqrt+0x120>
    800094cc:	04059063          	bnez	a1,8000950c <f32_sqrt+0x6c>
    800094d0:	02813083          	ld	ra,40(sp)
    800094d4:	03010113          	add	sp,sp,48
    800094d8:	00008067          	ret
    800094dc:	00f5e5b3          	or	a1,a1,a5
    800094e0:	fe0588e3          	beqz	a1,800094d0 <f32_sqrt+0x30>
    800094e4:	01026213          	or	tp,tp,16
    800094e8:	02813083          	ld	ra,40(sp)
    800094ec:	7fc00537          	lui	a0,0x7fc00
    800094f0:	03010113          	add	sp,sp,48
    800094f4:	00008067          	ret
    800094f8:	0c059e63          	bnez	a1,800095d4 <f32_sqrt+0x134>
    800094fc:	fe06c4e3          	bltz	a3,800094e4 <f32_sqrt+0x44>
    80009500:	02813083          	ld	ra,40(sp)
    80009504:	03010113          	add	sp,sp,48
    80009508:	00008067          	ret
    8000950c:	00058513          	mv	a0,a1
    80009510:	02813023          	sd	s0,32(sp)
    80009514:	00913c23          	sd	s1,24(sp)
    80009518:	01213823          	sd	s2,16(sp)
    8000951c:	2c9010ef          	jal	8000afe4 <softfloat_normSubnormalF32Sig>
    80009520:	0005079b          	sext.w	a5,a0
    80009524:	42055593          	sra	a1,a0,0x20
    80009528:	0085941b          	sllw	s0,a1,0x8
    8000952c:	80000737          	lui	a4,0x80000
    80009530:	00e46433          	or	s0,s0,a4
    80009534:	0004041b          	sext.w	s0,s0
    80009538:	0017f513          	and	a0,a5,1
    8000953c:	00040593          	mv	a1,s0
    80009540:	f817891b          	addw	s2,a5,-127 # 7fffff81 <_ftext-0x7f>
    80009544:	00050493          	mv	s1,a0
    80009548:	0bc010ef          	jal	8000a604 <softfloat_approxRecipSqrt32_1>
    8000954c:	02041413          	sll	s0,s0,0x20
    80009550:	02051513          	sll	a0,a0,0x20
    80009554:	02045413          	srl	s0,s0,0x20
    80009558:	02055513          	srl	a0,a0,0x20
    8000955c:	02a407b3          	mul	a5,s0,a0
    80009560:	4019591b          	sraw	s2,s2,0x1
    80009564:	07e9091b          	addw	s2,s2,126
    80009568:	4207d793          	sra	a5,a5,0x20
    8000956c:	00048463          	beqz	s1,80009574 <f32_sqrt+0xd4>
    80009570:	0017d79b          	srlw	a5,a5,0x1
    80009574:	0027879b          	addw	a5,a5,2
    80009578:	03e7f713          	and	a4,a5,62
    8000957c:	0007861b          	sext.w	a2,a5
    80009580:	02071063          	bnez	a4,800095a0 <f32_sqrt+0x100>
    80009584:	0027d71b          	srlw	a4,a5,0x2
    80009588:	02e7073b          	mulw	a4,a4,a4
    8000958c:	ffc7f793          	and	a5,a5,-4
    80009590:	0007861b          	sext.w	a2,a5
    80009594:	04074a63          	bltz	a4,800095e8 <f32_sqrt+0x148>
    80009598:	00070463          	beqz	a4,800095a0 <f32_sqrt+0x100>
    8000959c:	fff6061b          	addw	a2,a2,-1
    800095a0:	02013403          	ld	s0,32(sp)
    800095a4:	01813483          	ld	s1,24(sp)
    800095a8:	02813083          	ld	ra,40(sp)
    800095ac:	00090593          	mv	a1,s2
    800095b0:	01013903          	ld	s2,16(sp)
    800095b4:	00000513          	li	a0,0
    800095b8:	03010113          	add	sp,sp,48
    800095bc:	37d0106f          	j	8000b138 <softfloat_roundPackToF32>
    800095c0:	02813023          	sd	s0,32(sp)
    800095c4:	00913c23          	sd	s1,24(sp)
    800095c8:	01213823          	sd	s2,16(sp)
    800095cc:	0007879b          	sext.w	a5,a5
    800095d0:	f59ff06f          	j	80009528 <f32_sqrt+0x88>
    800095d4:	00000593          	li	a1,0
    800095d8:	00068513          	mv	a0,a3
    800095dc:	6bc020ef          	jal	8000bc98 <softfloat_propagateNaNF32UI>
    800095e0:	0005051b          	sext.w	a0,a0
    800095e4:	eedff06f          	j	800094d0 <f32_sqrt+0x30>
    800095e8:	00166613          	or	a2,a2,1
    800095ec:	fb5ff06f          	j	800095a0 <f32_sqrt+0x100>

00000000800095f0 <f32_to_f64>:
    800095f0:	fe010113          	add	sp,sp,-32
    800095f4:	0175579b          	srlw	a5,a0,0x17
    800095f8:	00813823          	sd	s0,16(sp)
    800095fc:	02951713          	sll	a4,a0,0x29
    80009600:	00113c23          	sd	ra,24(sp)
    80009604:	0ff7f793          	zext.b	a5,a5
    80009608:	0ff00693          	li	a3,255
    8000960c:	01f5541b          	srlw	s0,a0,0x1f
    80009610:	02975713          	srl	a4,a4,0x29
    80009614:	04d78a63          	beq	a5,a3,80009668 <f32_to_f64+0x78>
    80009618:	03f41413          	sll	s0,s0,0x3f
    8000961c:	02078a63          	beqz	a5,80009650 <f32_to_f64+0x60>
    80009620:	0007879b          	sext.w	a5,a5
    80009624:	02071693          	sll	a3,a4,0x20
    80009628:	3807879b          	addw	a5,a5,896
    8000962c:	0036d713          	srl	a4,a3,0x3
    80009630:	03479793          	sll	a5,a5,0x34
    80009634:	00870433          	add	s0,a4,s0
    80009638:	00878433          	add	s0,a5,s0
    8000963c:	01813083          	ld	ra,24(sp)
    80009640:	00040513          	mv	a0,s0
    80009644:	01013403          	ld	s0,16(sp)
    80009648:	02010113          	add	sp,sp,32
    8000964c:	00008067          	ret
    80009650:	fe0706e3          	beqz	a4,8000963c <f32_to_f64+0x4c>
    80009654:	00070513          	mv	a0,a4
    80009658:	18d010ef          	jal	8000afe4 <softfloat_normSubnormalF32Sig>
    8000965c:	fff5079b          	addw	a5,a0,-1 # 7fbfffff <_ftext-0x400001>
    80009660:	42055713          	sra	a4,a0,0x20
    80009664:	fc1ff06f          	j	80009624 <f32_to_f64+0x34>
    80009668:	00070e63          	beqz	a4,80009684 <f32_to_f64+0x94>
    8000966c:	00fff437          	lui	s0,0xfff
    80009670:	02951793          	sll	a5,a0,0x29
    80009674:	02741413          	sll	s0,s0,0x27
    80009678:	fc07c2e3          	bltz	a5,8000963c <f32_to_f64+0x4c>
    8000967c:	01026213          	or	tp,tp,16
    80009680:	fbdff06f          	j	8000963c <f32_to_f64+0x4c>
    80009684:	7ff00793          	li	a5,2047
    80009688:	03f41413          	sll	s0,s0,0x3f
    8000968c:	03479793          	sll	a5,a5,0x34
    80009690:	00f40433          	add	s0,s0,a5
    80009694:	01813083          	ld	ra,24(sp)
    80009698:	00040513          	mv	a0,s0
    8000969c:	01013403          	ld	s0,16(sp)
    800096a0:	02010113          	add	sp,sp,32
    800096a4:	00008067          	ret

00000000800096a8 <f32_classify>:
    800096a8:	0175579b          	srlw	a5,a0,0x17
    800096ac:	0005071b          	sext.w	a4,a0
    800096b0:	0ff7f793          	zext.b	a5,a5
    800096b4:	04074463          	bltz	a4,800096fc <f32_classify+0x54>
    800096b8:	0ff00693          	li	a3,255
    800096bc:	00d78a63          	beq	a5,a3,800096d0 <f32_classify+0x28>
    800096c0:	06079063          	bnez	a5,80009720 <f32_classify+0x78>
    800096c4:	02000513          	li	a0,32
    800096c8:	06070863          	beqz	a4,80009738 <f32_classify+0x90>
    800096cc:	00008067          	ret
    800096d0:	02951793          	sll	a5,a0,0x29
    800096d4:	00000713          	li	a4,0
    800096d8:	06078463          	beqz	a5,80009740 <f32_classify+0x98>
    800096dc:	02951793          	sll	a5,a0,0x29
    800096e0:	02078c63          	beqz	a5,80009718 <f32_classify+0x70>
    800096e4:	7fc007b7          	lui	a5,0x7fc00
    800096e8:	00f577b3          	and	a5,a0,a5
    800096ec:	7f8006b7          	lui	a3,0x7f800
    800096f0:	04d78e63          	beq	a5,a3,8000974c <f32_classify+0xa4>
    800096f4:	20076513          	or	a0,a4,512
    800096f8:	00008067          	ret
    800096fc:	0ff00713          	li	a4,255
    80009700:	06e78863          	beq	a5,a4,80009770 <f32_classify+0xc8>
    80009704:	06079c63          	bnez	a5,8000977c <f32_classify+0xd4>
    80009708:	02951793          	sll	a5,a0,0x29
    8000970c:	00800713          	li	a4,8
    80009710:	00078463          	beqz	a5,80009718 <f32_classify+0x70>
    80009714:	00400713          	li	a4,4
    80009718:	0007051b          	sext.w	a0,a4
    8000971c:	00008067          	ret
    80009720:	04000713          	li	a4,64
    80009724:	fff54793          	not	a5,a0
    80009728:	0177d693          	srl	a3,a5,0x17
    8000972c:	0ff6f693          	zext.b	a3,a3
    80009730:	fa0686e3          	beqz	a3,800096dc <f32_classify+0x34>
    80009734:	fe5ff06f          	j	80009718 <f32_classify+0x70>
    80009738:	01000513          	li	a0,16
    8000973c:	00008067          	ret
    80009740:	08000713          	li	a4,128
    80009744:	0007051b          	sext.w	a0,a4
    80009748:	00008067          	ret
    8000974c:	02a51793          	sll	a5,a0,0x2a
    80009750:	02a7d693          	srl	a3,a5,0x2a
    80009754:	00078463          	beqz	a5,8000975c <f32_classify+0xb4>
    80009758:	10076713          	or	a4,a4,256
    8000975c:	0016b793          	seqz	a5,a3
    80009760:	0097979b          	sllw	a5,a5,0x9
    80009764:	00f76533          	or	a0,a4,a5
    80009768:	0005051b          	sext.w	a0,a0
    8000976c:	00008067          	ret
    80009770:	02951713          	sll	a4,a0,0x29
    80009774:	00173713          	seqz	a4,a4
    80009778:	fadff06f          	j	80009724 <f32_classify+0x7c>
    8000977c:	00200713          	li	a4,2
    80009780:	fa5ff06f          	j	80009724 <f32_classify+0x7c>

0000000080009784 <f64_add>:
    80009784:	00b547b3          	xor	a5,a0,a1
    80009788:	03f55613          	srl	a2,a0,0x3f
    8000978c:	0007c863          	bltz	a5,8000979c <f64_add+0x18>
    80009790:	00001797          	auipc	a5,0x1
    80009794:	c2478793          	add	a5,a5,-988 # 8000a3b4 <softfloat_addMagsF64>
    80009798:	00078067          	jr	a5
    8000979c:	00002797          	auipc	a5,0x2
    800097a0:	2b878793          	add	a5,a5,696 # 8000ba54 <softfloat_subMagsF64>
    800097a4:	00078067          	jr	a5

00000000800097a8 <f64_div>:
    800097a8:	fc010113          	add	sp,sp,-64
    800097ac:	02913423          	sd	s1,40(sp)
    800097b0:	fff00793          	li	a5,-1
    800097b4:	03455493          	srl	s1,a0,0x34
    800097b8:	00c7d793          	srl	a5,a5,0xc
    800097bc:	02813823          	sd	s0,48(sp)
    800097c0:	03213023          	sd	s2,32(sp)
    800097c4:	01313c23          	sd	s3,24(sp)
    800097c8:	01413823          	sd	s4,16(sp)
    800097cc:	02113c23          	sd	ra,56(sp)
    800097d0:	0345da13          	srl	s4,a1,0x34
    800097d4:	7ff4f493          	and	s1,s1,2047
    800097d8:	7ff00713          	li	a4,2047
    800097dc:	00f57933          	and	s2,a0,a5
    800097e0:	7ffa7a13          	and	s4,s4,2047
    800097e4:	00f5f433          	and	s0,a1,a5
    800097e8:	00b549b3          	xor	s3,a0,a1
    800097ec:	06e48c63          	beq	s1,a4,80009864 <f64_div+0xbc>
    800097f0:	04ea0663          	beq	s4,a4,8000983c <f64_div+0x94>
    800097f4:	0a0a1c63          	bnez	s4,800098ac <f64_div+0x104>
    800097f8:	0a041263          	bnez	s0,8000989c <f64_div+0xf4>
    800097fc:	0124e4b3          	or	s1,s1,s2
    80009800:	06048863          	beqz	s1,80009870 <f64_div+0xc8>
    80009804:	00826213          	or	tp,tp,8
    80009808:	03813083          	ld	ra,56(sp)
    8000980c:	03013403          	ld	s0,48(sp)
    80009810:	03f9d513          	srl	a0,s3,0x3f
    80009814:	7ff00793          	li	a5,2047
    80009818:	03f51513          	sll	a0,a0,0x3f
    8000981c:	03479793          	sll	a5,a5,0x34
    80009820:	02813483          	ld	s1,40(sp)
    80009824:	02013903          	ld	s2,32(sp)
    80009828:	01813983          	ld	s3,24(sp)
    8000982c:	01013a03          	ld	s4,16(sp)
    80009830:	00f50533          	add	a0,a0,a5
    80009834:	04010113          	add	sp,sp,64
    80009838:	00008067          	ret
    8000983c:	18040263          	beqz	s0,800099c0 <f64_div+0x218>
    80009840:	4a4020ef          	jal	8000bce4 <softfloat_propagateNaNF64UI>
    80009844:	03813083          	ld	ra,56(sp)
    80009848:	03013403          	ld	s0,48(sp)
    8000984c:	02813483          	ld	s1,40(sp)
    80009850:	02013903          	ld	s2,32(sp)
    80009854:	01813983          	ld	s3,24(sp)
    80009858:	01013a03          	ld	s4,16(sp)
    8000985c:	04010113          	add	sp,sp,64
    80009860:	00008067          	ret
    80009864:	fc091ee3          	bnez	s2,80009840 <f64_div+0x98>
    80009868:	fa9a10e3          	bne	s4,s1,80009808 <f64_div+0x60>
    8000986c:	fc041ae3          	bnez	s0,80009840 <f64_div+0x98>
    80009870:	01026213          	or	tp,tp,16
    80009874:	03813083          	ld	ra,56(sp)
    80009878:	03013403          	ld	s0,48(sp)
    8000987c:	00fff537          	lui	a0,0xfff
    80009880:	02813483          	ld	s1,40(sp)
    80009884:	02013903          	ld	s2,32(sp)
    80009888:	01813983          	ld	s3,24(sp)
    8000988c:	01013a03          	ld	s4,16(sp)
    80009890:	02751513          	sll	a0,a0,0x27
    80009894:	04010113          	add	sp,sp,64
    80009898:	00008067          	ret
    8000989c:	00040513          	mv	a0,s0
    800098a0:	788010ef          	jal	8000b028 <softfloat_normSubnormalF64Sig>
    800098a4:	00050a1b          	sext.w	s4,a0
    800098a8:	00058413          	mv	s0,a1
    800098ac:	00049c63          	bnez	s1,800098c4 <f64_div+0x11c>
    800098b0:	10090863          	beqz	s2,800099c0 <f64_div+0x218>
    800098b4:	00090513          	mv	a0,s2
    800098b8:	770010ef          	jal	8000b028 <softfloat_normSubnormalF64Sig>
    800098bc:	0005049b          	sext.w	s1,a0
    800098c0:	00058913          	mv	s2,a1
    800098c4:	00100793          	li	a5,1
    800098c8:	03479793          	sll	a5,a5,0x34
    800098cc:	00f96933          	or	s2,s2,a5
    800098d0:	00f46433          	or	s0,s0,a5
    800098d4:	414484bb          	subw	s1,s1,s4
    800098d8:	10896863          	bltu	s2,s0,800099e8 <f64_div+0x240>
    800098dc:	3fe4849b          	addw	s1,s1,1022
    800098e0:	00a91913          	sll	s2,s2,0xa
    800098e4:	00b41413          	sll	s0,s0,0xb
    800098e8:	42045513          	sra	a0,s0,0x20
    800098ec:	481000ef          	jal	8000a56c <softfloat_approxRecip32_1>
    800098f0:	ffe5051b          	addw	a0,a0,-2 # ffeffe <_ftext-0x7f001002>
    800098f4:	02051513          	sll	a0,a0,0x20
    800098f8:	02055513          	srl	a0,a0,0x20
    800098fc:	02095613          	srl	a2,s2,0x20
    80009900:	02a60633          	mul	a2,a2,a0
    80009904:	02045a13          	srl	s4,s0,0x20
    80009908:	0044541b          	srlw	s0,s0,0x4
    8000990c:	02041413          	sll	s0,s0,0x20
    80009910:	02045413          	srl	s0,s0,0x20
    80009914:	02065793          	srl	a5,a2,0x20
    80009918:	0017979b          	sllw	a5,a5,0x1
    8000991c:	02079793          	sll	a5,a5,0x20
    80009920:	0207d793          	srl	a5,a5,0x20
    80009924:	02fa0733          	mul	a4,s4,a5
    80009928:	02065613          	srl	a2,a2,0x20
    8000992c:	02061613          	sll	a2,a2,0x20
    80009930:	028787b3          	mul	a5,a5,s0
    80009934:	40e90933          	sub	s2,s2,a4
    80009938:	01c91913          	sll	s2,s2,0x1c
    8000993c:	40f90933          	sub	s2,s2,a5
    80009940:	02095793          	srl	a5,s2,0x20
    80009944:	02a787b3          	mul	a5,a5,a0
    80009948:	0207d793          	srl	a5,a5,0x20
    8000994c:	0047879b          	addw	a5,a5,4
    80009950:	02079693          	sll	a3,a5,0x20
    80009954:	01c6d713          	srl	a4,a3,0x1c
    80009958:	1c077693          	and	a3,a4,448
    8000995c:	00e60633          	add	a2,a2,a4
    80009960:	02069c63          	bnez	a3,80009998 <f64_div+0x1f0>
    80009964:	0017979b          	sllw	a5,a5,0x1
    80009968:	ff07f793          	and	a5,a5,-16
    8000996c:	02079793          	sll	a5,a5,0x20
    80009970:	0207d793          	srl	a5,a5,0x20
    80009974:	02fa0a33          	mul	s4,s4,a5
    80009978:	f8067613          	and	a2,a2,-128
    8000997c:	02f40433          	mul	s0,s0,a5
    80009980:	41490933          	sub	s2,s2,s4
    80009984:	01c91913          	sll	s2,s2,0x1c
    80009988:	40890933          	sub	s2,s2,s0
    8000998c:	06094463          	bltz	s2,800099f4 <f64_div+0x24c>
    80009990:	00090463          	beqz	s2,80009998 <f64_div+0x1f0>
    80009994:	00166613          	or	a2,a2,1
    80009998:	03013403          	ld	s0,48(sp)
    8000999c:	03813083          	ld	ra,56(sp)
    800099a0:	02013903          	ld	s2,32(sp)
    800099a4:	01013a03          	ld	s4,16(sp)
    800099a8:	00048593          	mv	a1,s1
    800099ac:	03f9d513          	srl	a0,s3,0x3f
    800099b0:	02813483          	ld	s1,40(sp)
    800099b4:	01813983          	ld	s3,24(sp)
    800099b8:	04010113          	add	sp,sp,64
    800099bc:	0d90106f          	j	8000b294 <softfloat_roundPackToF64>
    800099c0:	03813083          	ld	ra,56(sp)
    800099c4:	03013403          	ld	s0,48(sp)
    800099c8:	03f9d513          	srl	a0,s3,0x3f
    800099cc:	02813483          	ld	s1,40(sp)
    800099d0:	02013903          	ld	s2,32(sp)
    800099d4:	01813983          	ld	s3,24(sp)
    800099d8:	01013a03          	ld	s4,16(sp)
    800099dc:	03f51513          	sll	a0,a0,0x3f
    800099e0:	04010113          	add	sp,sp,64
    800099e4:	00008067          	ret
    800099e8:	3fd4849b          	addw	s1,s1,1021
    800099ec:	00b91913          	sll	s2,s2,0xb
    800099f0:	ef5ff06f          	j	800098e4 <f64_div+0x13c>
    800099f4:	f8060613          	add	a2,a2,-128
    800099f8:	fa1ff06f          	j	80009998 <f64_div+0x1f0>

00000000800099fc <f64_eq>:
    800099fc:	fff54713          	not	a4,a0
    80009a00:	03475693          	srl	a3,a4,0x34
    80009a04:	7ff6f693          	and	a3,a3,2047
    80009a08:	00050793          	mv	a5,a0
    80009a0c:	00069663          	bnez	a3,80009a18 <f64_eq+0x1c>
    80009a10:	00c51713          	sll	a4,a0,0xc
    80009a14:	02071a63          	bnez	a4,80009a48 <f64_eq+0x4c>
    80009a18:	fff5c713          	not	a4,a1
    80009a1c:	03475693          	srl	a3,a4,0x34
    80009a20:	7ff6f693          	and	a3,a3,2047
    80009a24:	00069663          	bnez	a3,80009a30 <f64_eq+0x34>
    80009a28:	00c59713          	sll	a4,a1,0xc
    80009a2c:	00071e63          	bnez	a4,80009a48 <f64_eq+0x4c>
    80009a30:	00100513          	li	a0,1
    80009a34:	00b78863          	beq	a5,a1,80009a44 <f64_eq+0x48>
    80009a38:	00b7e533          	or	a0,a5,a1
    80009a3c:	00151513          	sll	a0,a0,0x1
    80009a40:	00153513          	seqz	a0,a0
    80009a44:	00008067          	ret
    80009a48:	00fff737          	lui	a4,0xfff
    80009a4c:	02771713          	sll	a4,a4,0x27
    80009a50:	7ff00693          	li	a3,2047
    80009a54:	00e7f733          	and	a4,a5,a4
    80009a58:	03469693          	sll	a3,a3,0x34
    80009a5c:	02d70a63          	beq	a4,a3,80009a90 <f64_eq+0x94>
    80009a60:	00fff7b7          	lui	a5,0xfff
    80009a64:	02779793          	sll	a5,a5,0x27
    80009a68:	7ff00713          	li	a4,2047
    80009a6c:	00f5f7b3          	and	a5,a1,a5
    80009a70:	03471713          	sll	a4,a4,0x34
    80009a74:	00000513          	li	a0,0
    80009a78:	fce796e3          	bne	a5,a4,80009a44 <f64_eq+0x48>
    80009a7c:	00d59593          	sll	a1,a1,0xd
    80009a80:	fc0582e3          	beqz	a1,80009a44 <f64_eq+0x48>
    80009a84:	01026213          	or	tp,tp,16
    80009a88:	00000513          	li	a0,0
    80009a8c:	00008067          	ret
    80009a90:	00d79793          	sll	a5,a5,0xd
    80009a94:	fe0798e3          	bnez	a5,80009a84 <f64_eq+0x88>
    80009a98:	fc9ff06f          	j	80009a60 <f64_eq+0x64>

0000000080009a9c <f64_lt>:
    80009a9c:	fff54713          	not	a4,a0
    80009aa0:	03475693          	srl	a3,a4,0x34
    80009aa4:	7ff6f693          	and	a3,a3,2047
    80009aa8:	00050793          	mv	a5,a0
    80009aac:	00069663          	bnez	a3,80009ab8 <f64_lt+0x1c>
    80009ab0:	00c51713          	sll	a4,a0,0xc
    80009ab4:	04071863          	bnez	a4,80009b04 <f64_lt+0x68>
    80009ab8:	fff5c713          	not	a4,a1
    80009abc:	03475693          	srl	a3,a4,0x34
    80009ac0:	7ff6f693          	and	a3,a3,2047
    80009ac4:	00069663          	bnez	a3,80009ad0 <f64_lt+0x34>
    80009ac8:	00c59713          	sll	a4,a1,0xc
    80009acc:	02071c63          	bnez	a4,80009b04 <f64_lt+0x68>
    80009ad0:	00b7c733          	xor	a4,a5,a1
    80009ad4:	00000513          	li	a0,0
    80009ad8:	00074c63          	bltz	a4,80009af0 <f64_lt+0x54>
    80009adc:	00b78863          	beq	a5,a1,80009aec <f64_lt+0x50>
    80009ae0:	03f7d513          	srl	a0,a5,0x3f
    80009ae4:	00b7b5b3          	sltu	a1,a5,a1
    80009ae8:	00a5c533          	xor	a0,a1,a0
    80009aec:	00008067          	ret
    80009af0:	fe07dee3          	bgez	a5,80009aec <f64_lt+0x50>
    80009af4:	00b7e7b3          	or	a5,a5,a1
    80009af8:	00179793          	sll	a5,a5,0x1
    80009afc:	00f03533          	snez	a0,a5
    80009b00:	00008067          	ret
    80009b04:	01026213          	or	tp,tp,16
    80009b08:	00000513          	li	a0,0
    80009b0c:	00008067          	ret

0000000080009b10 <f64_lt_quiet>:
    80009b10:	fff54713          	not	a4,a0
    80009b14:	03475693          	srl	a3,a4,0x34
    80009b18:	7ff6f693          	and	a3,a3,2047
    80009b1c:	00050793          	mv	a5,a0
    80009b20:	00069663          	bnez	a3,80009b2c <f64_lt_quiet+0x1c>
    80009b24:	00c51713          	sll	a4,a0,0xc
    80009b28:	04071863          	bnez	a4,80009b78 <f64_lt_quiet+0x68>
    80009b2c:	fff5c713          	not	a4,a1
    80009b30:	03475693          	srl	a3,a4,0x34
    80009b34:	7ff6f693          	and	a3,a3,2047
    80009b38:	00069663          	bnez	a3,80009b44 <f64_lt_quiet+0x34>
    80009b3c:	00c59713          	sll	a4,a1,0xc
    80009b40:	02071c63          	bnez	a4,80009b78 <f64_lt_quiet+0x68>
    80009b44:	00b7c733          	xor	a4,a5,a1
    80009b48:	00000513          	li	a0,0
    80009b4c:	00074c63          	bltz	a4,80009b64 <f64_lt_quiet+0x54>
    80009b50:	00b78863          	beq	a5,a1,80009b60 <f64_lt_quiet+0x50>
    80009b54:	03f7d513          	srl	a0,a5,0x3f
    80009b58:	00b7b5b3          	sltu	a1,a5,a1
    80009b5c:	00a5c533          	xor	a0,a1,a0
    80009b60:	00008067          	ret
    80009b64:	fe07dee3          	bgez	a5,80009b60 <f64_lt_quiet+0x50>
    80009b68:	00b7e7b3          	or	a5,a5,a1
    80009b6c:	00179793          	sll	a5,a5,0x1
    80009b70:	00f03533          	snez	a0,a5
    80009b74:	00008067          	ret
    80009b78:	00fff737          	lui	a4,0xfff
    80009b7c:	02771713          	sll	a4,a4,0x27
    80009b80:	7ff00693          	li	a3,2047
    80009b84:	00e7f733          	and	a4,a5,a4
    80009b88:	03469693          	sll	a3,a3,0x34
    80009b8c:	02d70a63          	beq	a4,a3,80009bc0 <f64_lt_quiet+0xb0>
    80009b90:	00fff7b7          	lui	a5,0xfff
    80009b94:	02779793          	sll	a5,a5,0x27
    80009b98:	7ff00713          	li	a4,2047
    80009b9c:	00f5f7b3          	and	a5,a1,a5
    80009ba0:	03471713          	sll	a4,a4,0x34
    80009ba4:	00000513          	li	a0,0
    80009ba8:	fae79ce3          	bne	a5,a4,80009b60 <f64_lt_quiet+0x50>
    80009bac:	00d59593          	sll	a1,a1,0xd
    80009bb0:	fa0588e3          	beqz	a1,80009b60 <f64_lt_quiet+0x50>
    80009bb4:	01026213          	or	tp,tp,16
    80009bb8:	00000513          	li	a0,0
    80009bbc:	00008067          	ret
    80009bc0:	00d79793          	sll	a5,a5,0xd
    80009bc4:	fe0798e3          	bnez	a5,80009bb4 <f64_lt_quiet+0xa4>
    80009bc8:	fc9ff06f          	j	80009b90 <f64_lt_quiet+0x80>

0000000080009bcc <f64_mul>:
    80009bcc:	fb010113          	add	sp,sp,-80
    80009bd0:	03213823          	sd	s2,48(sp)
    80009bd4:	fff00793          	li	a5,-1
    80009bd8:	03455913          	srl	s2,a0,0x34
    80009bdc:	00c7d793          	srl	a5,a5,0xc
    80009be0:	04813023          	sd	s0,64(sp)
    80009be4:	02913c23          	sd	s1,56(sp)
    80009be8:	03313423          	sd	s3,40(sp)
    80009bec:	03413023          	sd	s4,32(sp)
    80009bf0:	0345d993          	srl	s3,a1,0x34
    80009bf4:	04113423          	sd	ra,72(sp)
    80009bf8:	7ff97913          	and	s2,s2,2047
    80009bfc:	7ff00713          	li	a4,2047
    80009c00:	00f57a33          	and	s4,a0,a5
    80009c04:	7ff9f993          	and	s3,s3,2047
    80009c08:	00f5f433          	and	s0,a1,a5
    80009c0c:	00b544b3          	xor	s1,a0,a1
    80009c10:	06e90263          	beq	s2,a4,80009c74 <f64_mul+0xa8>
    80009c14:	02e98a63          	beq	s3,a4,80009c48 <f64_mul+0x7c>
    80009c18:	0a091463          	bnez	s2,80009cc0 <f64_mul+0xf4>
    80009c1c:	080a1a63          	bnez	s4,80009cb0 <f64_mul+0xe4>
    80009c20:	04813083          	ld	ra,72(sp)
    80009c24:	04013403          	ld	s0,64(sp)
    80009c28:	03f4d513          	srl	a0,s1,0x3f
    80009c2c:	03013903          	ld	s2,48(sp)
    80009c30:	03813483          	ld	s1,56(sp)
    80009c34:	02813983          	ld	s3,40(sp)
    80009c38:	02013a03          	ld	s4,32(sp)
    80009c3c:	03f51513          	sll	a0,a0,0x3f
    80009c40:	05010113          	add	sp,sp,80
    80009c44:	00008067          	ret
    80009c48:	01496933          	or	s2,s2,s4
    80009c4c:	02040a63          	beqz	s0,80009c80 <f64_mul+0xb4>
    80009c50:	094020ef          	jal	8000bce4 <softfloat_propagateNaNF64UI>
    80009c54:	04813083          	ld	ra,72(sp)
    80009c58:	04013403          	ld	s0,64(sp)
    80009c5c:	03813483          	ld	s1,56(sp)
    80009c60:	03013903          	ld	s2,48(sp)
    80009c64:	02813983          	ld	s3,40(sp)
    80009c68:	02013a03          	ld	s4,32(sp)
    80009c6c:	05010113          	add	sp,sp,80
    80009c70:	00008067          	ret
    80009c74:	fc0a1ee3          	bnez	s4,80009c50 <f64_mul+0x84>
    80009c78:	0f298063          	beq	s3,s2,80009d58 <f64_mul+0x18c>
    80009c7c:	0089e933          	or	s2,s3,s0
    80009c80:	0c091e63          	bnez	s2,80009d5c <f64_mul+0x190>
    80009c84:	01026213          	or	tp,tp,16
    80009c88:	04813083          	ld	ra,72(sp)
    80009c8c:	04013403          	ld	s0,64(sp)
    80009c90:	00fff537          	lui	a0,0xfff
    80009c94:	03813483          	ld	s1,56(sp)
    80009c98:	03013903          	ld	s2,48(sp)
    80009c9c:	02813983          	ld	s3,40(sp)
    80009ca0:	02013a03          	ld	s4,32(sp)
    80009ca4:	02751513          	sll	a0,a0,0x27
    80009ca8:	05010113          	add	sp,sp,80
    80009cac:	00008067          	ret
    80009cb0:	000a0513          	mv	a0,s4
    80009cb4:	374010ef          	jal	8000b028 <softfloat_normSubnormalF64Sig>
    80009cb8:	0005091b          	sext.w	s2,a0
    80009cbc:	00058a13          	mv	s4,a1
    80009cc0:	00099c63          	bnez	s3,80009cd8 <f64_mul+0x10c>
    80009cc4:	f4040ee3          	beqz	s0,80009c20 <f64_mul+0x54>
    80009cc8:	00040513          	mv	a0,s0
    80009ccc:	35c010ef          	jal	8000b028 <softfloat_normSubnormalF64Sig>
    80009cd0:	0005099b          	sext.w	s3,a0
    80009cd4:	00058413          	mv	s0,a1
    80009cd8:	00100513          	li	a0,1
    80009cdc:	fff00593          	li	a1,-1
    80009ce0:	00aa1a13          	sll	s4,s4,0xa
    80009ce4:	00b41413          	sll	s0,s0,0xb
    80009ce8:	03e51513          	sll	a0,a0,0x3e
    80009cec:	03f59593          	sll	a1,a1,0x3f
    80009cf0:	01010613          	add	a2,sp,16
    80009cf4:	00b465b3          	or	a1,s0,a1
    80009cf8:	00aa6533          	or	a0,s4,a0
    80009cfc:	1dd000ef          	jal	8000a6d8 <softfloat_mul64To128M>
    80009d00:	01412783          	lw	a5,20(sp)
    80009d04:	01012703          	lw	a4,16(sp)
    80009d08:	01813603          	ld	a2,24(sp)
    80009d0c:	0139093b          	addw	s2,s2,s3
    80009d10:	00e7e7b3          	or	a5,a5,a4
    80009d14:	00078463          	beqz	a5,80009d1c <f64_mul+0x150>
    80009d18:	00166613          	or	a2,a2,1
    80009d1c:	fff00793          	li	a5,-1
    80009d20:	0027d793          	srl	a5,a5,0x2
    80009d24:	06c7e663          	bltu	a5,a2,80009d90 <f64_mul+0x1c4>
    80009d28:	c009059b          	addw	a1,s2,-1024
    80009d2c:	00161613          	sll	a2,a2,0x1
    80009d30:	03f4d513          	srl	a0,s1,0x3f
    80009d34:	560010ef          	jal	8000b294 <softfloat_roundPackToF64>
    80009d38:	04813083          	ld	ra,72(sp)
    80009d3c:	04013403          	ld	s0,64(sp)
    80009d40:	03813483          	ld	s1,56(sp)
    80009d44:	03013903          	ld	s2,48(sp)
    80009d48:	02813983          	ld	s3,40(sp)
    80009d4c:	02013a03          	ld	s4,32(sp)
    80009d50:	05010113          	add	sp,sp,80
    80009d54:	00008067          	ret
    80009d58:	ee041ce3          	bnez	s0,80009c50 <f64_mul+0x84>
    80009d5c:	04813083          	ld	ra,72(sp)
    80009d60:	04013403          	ld	s0,64(sp)
    80009d64:	03f4d513          	srl	a0,s1,0x3f
    80009d68:	7ff00793          	li	a5,2047
    80009d6c:	03f51513          	sll	a0,a0,0x3f
    80009d70:	03479793          	sll	a5,a5,0x34
    80009d74:	03813483          	ld	s1,56(sp)
    80009d78:	03013903          	ld	s2,48(sp)
    80009d7c:	02813983          	ld	s3,40(sp)
    80009d80:	02013a03          	ld	s4,32(sp)
    80009d84:	00f50533          	add	a0,a0,a5
    80009d88:	05010113          	add	sp,sp,80
    80009d8c:	00008067          	ret
    80009d90:	c019059b          	addw	a1,s2,-1023
    80009d94:	f9dff06f          	j	80009d30 <f64_mul+0x164>

0000000080009d98 <f64_sqrt>:
    80009d98:	fc010113          	add	sp,sp,-64
    80009d9c:	03455713          	srl	a4,a0,0x34
    80009da0:	00c51593          	sll	a1,a0,0xc
    80009da4:	02113c23          	sd	ra,56(sp)
    80009da8:	7ff77713          	and	a4,a4,2047
    80009dac:	7ff00693          	li	a3,2047
    80009db0:	00050793          	mv	a5,a0
    80009db4:	00c5d593          	srl	a1,a1,0xc
    80009db8:	04d70063          	beq	a4,a3,80009df8 <f64_sqrt+0x60>
    80009dbc:	00054e63          	bltz	a0,80009dd8 <f64_sqrt+0x40>
    80009dc0:	12071e63          	bnez	a4,80009efc <f64_sqrt+0x164>
    80009dc4:	04059663          	bnez	a1,80009e10 <f64_sqrt+0x78>
    80009dc8:	00078513          	mv	a0,a5
    80009dcc:	03813083          	ld	ra,56(sp)
    80009dd0:	04010113          	add	sp,sp,64
    80009dd4:	00008067          	ret
    80009dd8:	00b76733          	or	a4,a4,a1
    80009ddc:	fe0706e3          	beqz	a4,80009dc8 <f64_sqrt+0x30>
    80009de0:	01026213          	or	tp,tp,16
    80009de4:	00fff537          	lui	a0,0xfff
    80009de8:	02751513          	sll	a0,a0,0x27
    80009dec:	03813083          	ld	ra,56(sp)
    80009df0:	04010113          	add	sp,sp,64
    80009df4:	00008067          	ret
    80009df8:	10059c63          	bnez	a1,80009f10 <f64_sqrt+0x178>
    80009dfc:	fc0556e3          	bgez	a0,80009dc8 <f64_sqrt+0x30>
    80009e00:	01026213          	or	tp,tp,16
    80009e04:	00fff537          	lui	a0,0xfff
    80009e08:	02751513          	sll	a0,a0,0x27
    80009e0c:	fe1ff06f          	j	80009dec <f64_sqrt+0x54>
    80009e10:	00058513          	mv	a0,a1
    80009e14:	02813823          	sd	s0,48(sp)
    80009e18:	02913423          	sd	s1,40(sp)
    80009e1c:	03213023          	sd	s2,32(sp)
    80009e20:	01313c23          	sd	s3,24(sp)
    80009e24:	204010ef          	jal	8000b028 <softfloat_normSubnormalF64Sig>
    80009e28:	0005071b          	sext.w	a4,a0
    80009e2c:	00100793          	li	a5,1
    80009e30:	03479793          	sll	a5,a5,0x34
    80009e34:	00f5e4b3          	or	s1,a1,a5
    80009e38:	0154d993          	srl	s3,s1,0x15
    80009e3c:	00177513          	and	a0,a4,1
    80009e40:	0009859b          	sext.w	a1,s3
    80009e44:	c017091b          	addw	s2,a4,-1023 # ffec01 <_ftext-0x7f0013ff>
    80009e48:	00050413          	mv	s0,a0
    80009e4c:	7b8000ef          	jal	8000a604 <softfloat_approxRecipSqrt32_1>
    80009e50:	02051513          	sll	a0,a0,0x20
    80009e54:	02099793          	sll	a5,s3,0x20
    80009e58:	02055513          	srl	a0,a0,0x20
    80009e5c:	0207d793          	srl	a5,a5,0x20
    80009e60:	02a787b3          	mul	a5,a5,a0
    80009e64:	4019591b          	sraw	s2,s2,0x1
    80009e68:	3fe9091b          	addw	s2,s2,1022
    80009e6c:	00949713          	sll	a4,s1,0x9
    80009e70:	0207d793          	srl	a5,a5,0x20
    80009e74:	00040663          	beqz	s0,80009e80 <f64_sqrt+0xe8>
    80009e78:	00849713          	sll	a4,s1,0x8
    80009e7c:	0017d793          	srl	a5,a5,0x1
    80009e80:	02f78633          	mul	a2,a5,a5
    80009e84:	02079793          	sll	a5,a5,0x20
    80009e88:	0207e793          	or	a5,a5,32
    80009e8c:	02100693          	li	a3,33
    80009e90:	40c70633          	sub	a2,a4,a2
    80009e94:	00265613          	srl	a2,a2,0x2
    80009e98:	02061613          	sll	a2,a2,0x20
    80009e9c:	02065613          	srl	a2,a2,0x20
    80009ea0:	02a60633          	mul	a2,a2,a0
    80009ea4:	02065613          	srl	a2,a2,0x20
    80009ea8:	00361613          	sll	a2,a2,0x3
    80009eac:	00f60633          	add	a2,a2,a5
    80009eb0:	1ff67793          	and	a5,a2,511
    80009eb4:	02f6e263          	bltu	a3,a5,80009ed8 <f64_sqrt+0x140>
    80009eb8:	fc067613          	and	a2,a2,-64
    80009ebc:	00665793          	srl	a5,a2,0x6
    80009ec0:	02f787b3          	mul	a5,a5,a5
    80009ec4:	03471713          	sll	a4,a4,0x34
    80009ec8:	40f70733          	sub	a4,a4,a5
    80009ecc:	04074863          	bltz	a4,80009f1c <f64_sqrt+0x184>
    80009ed0:	00070463          	beqz	a4,80009ed8 <f64_sqrt+0x140>
    80009ed4:	00166613          	or	a2,a2,1
    80009ed8:	03013403          	ld	s0,48(sp)
    80009edc:	02813483          	ld	s1,40(sp)
    80009ee0:	01813983          	ld	s3,24(sp)
    80009ee4:	03813083          	ld	ra,56(sp)
    80009ee8:	00090593          	mv	a1,s2
    80009eec:	02013903          	ld	s2,32(sp)
    80009ef0:	00000513          	li	a0,0
    80009ef4:	04010113          	add	sp,sp,64
    80009ef8:	39c0106f          	j	8000b294 <softfloat_roundPackToF64>
    80009efc:	02813823          	sd	s0,48(sp)
    80009f00:	02913423          	sd	s1,40(sp)
    80009f04:	03213023          	sd	s2,32(sp)
    80009f08:	01313c23          	sd	s3,24(sp)
    80009f0c:	f21ff06f          	j	80009e2c <f64_sqrt+0x94>
    80009f10:	00000593          	li	a1,0
    80009f14:	5d1010ef          	jal	8000bce4 <softfloat_propagateNaNF64UI>
    80009f18:	eb5ff06f          	j	80009dcc <f64_sqrt+0x34>
    80009f1c:	fff60613          	add	a2,a2,-1
    80009f20:	fb9ff06f          	j	80009ed8 <f64_sqrt+0x140>

0000000080009f24 <f64_to_f32>:
    80009f24:	fe010113          	add	sp,sp,-32
    80009f28:	00813823          	sd	s0,16(sp)
    80009f2c:	03455413          	srl	s0,a0,0x34
    80009f30:	00050793          	mv	a5,a0
    80009f34:	00913423          	sd	s1,8(sp)
    80009f38:	00c51513          	sll	a0,a0,0xc
    80009f3c:	00113c23          	sd	ra,24(sp)
    80009f40:	7ff47413          	and	s0,s0,2047
    80009f44:	7ff00713          	li	a4,2047
    80009f48:	03f7d493          	srl	s1,a5,0x3f
    80009f4c:	00c55513          	srl	a0,a0,0xc
    80009f50:	04e40a63          	beq	s0,a4,80009fa4 <f64_to_f32+0x80>
    80009f54:	01600593          	li	a1,22
    80009f58:	7cc010ef          	jal	8000b724 <softfloat_shortShiftRightJam64>
    80009f5c:	0005051b          	sext.w	a0,a0
    80009f60:	00a467b3          	or	a5,s0,a0
    80009f64:	00079e63          	bnez	a5,80009f80 <f64_to_f32+0x5c>
    80009f68:	01f4951b          	sllw	a0,s1,0x1f
    80009f6c:	01813083          	ld	ra,24(sp)
    80009f70:	01013403          	ld	s0,16(sp)
    80009f74:	00813483          	ld	s1,8(sp)
    80009f78:	02010113          	add	sp,sp,32
    80009f7c:	00008067          	ret
    80009f80:	40000637          	lui	a2,0x40000
    80009f84:	c7f4059b          	addw	a1,s0,-897 # ffec7f <_ftext-0x7f001381>
    80009f88:	01013403          	ld	s0,16(sp)
    80009f8c:	01813083          	ld	ra,24(sp)
    80009f90:	00c56633          	or	a2,a0,a2
    80009f94:	00048513          	mv	a0,s1
    80009f98:	00813483          	ld	s1,8(sp)
    80009f9c:	02010113          	add	sp,sp,32
    80009fa0:	1980106f          	j	8000b138 <softfloat_roundPackToF32>
    80009fa4:	00050c63          	beqz	a0,80009fbc <f64_to_f32+0x98>
    80009fa8:	00c79713          	sll	a4,a5,0xc
    80009fac:	7fc00537          	lui	a0,0x7fc00
    80009fb0:	fa074ee3          	bltz	a4,80009f6c <f64_to_f32+0x48>
    80009fb4:	01026213          	or	tp,tp,16
    80009fb8:	fb5ff06f          	j	80009f6c <f64_to_f32+0x48>
    80009fbc:	01813083          	ld	ra,24(sp)
    80009fc0:	01013403          	ld	s0,16(sp)
    80009fc4:	01f4949b          	sllw	s1,s1,0x1f
    80009fc8:	7f8007b7          	lui	a5,0x7f800
    80009fcc:	00f4853b          	addw	a0,s1,a5
    80009fd0:	00813483          	ld	s1,8(sp)
    80009fd4:	02010113          	add	sp,sp,32
    80009fd8:	00008067          	ret

0000000080009fdc <f64_to_ui64>:
    80009fdc:	fc010113          	add	sp,sp,-64
    80009fe0:	03455713          	srl	a4,a0,0x34
    80009fe4:	02813823          	sd	s0,48(sp)
    80009fe8:	02913423          	sd	s1,40(sp)
    80009fec:	01313c23          	sd	s3,24(sp)
    80009ff0:	00c51813          	sll	a6,a0,0xc
    80009ff4:	02113c23          	sd	ra,56(sp)
    80009ff8:	03213023          	sd	s2,32(sp)
    80009ffc:	7ff77713          	and	a4,a4,2047
    8000a000:	00058413          	mv	s0,a1
    8000a004:	00060493          	mv	s1,a2
    8000a008:	03f55993          	srl	s3,a0,0x3f
    8000a00c:	00c85813          	srl	a6,a6,0xc
    8000a010:	04071e63          	bnez	a4,8000a06c <f64_to_ui64+0x90>
    8000a014:	00012023          	sw	zero,0(sp)
    8000a018:	43300613          	li	a2,1075
    8000a01c:	00010913          	mv	s2,sp
    8000a020:	02085793          	srl	a5,a6,0x20
    8000a024:	00090693          	mv	a3,s2
    8000a028:	00090593          	mv	a1,s2
    8000a02c:	00300513          	li	a0,3
    8000a030:	00f12423          	sw	a5,8(sp)
    8000a034:	01012223          	sw	a6,4(sp)
    8000a038:	4e8010ef          	jal	8000b520 <softfloat_shiftRightJamM>
    8000a03c:	00048693          	mv	a3,s1
    8000a040:	00040613          	mv	a2,s0
    8000a044:	00090593          	mv	a1,s2
    8000a048:	00098513          	mv	a0,s3
    8000a04c:	018010ef          	jal	8000b064 <softfloat_roundMToUI64>
    8000a050:	03813083          	ld	ra,56(sp)
    8000a054:	03013403          	ld	s0,48(sp)
    8000a058:	02813483          	ld	s1,40(sp)
    8000a05c:	02013903          	ld	s2,32(sp)
    8000a060:	01813983          	ld	s3,24(sp)
    8000a064:	04010113          	add	sp,sp,64
    8000a068:	00008067          	ret
    8000a06c:	00050793          	mv	a5,a0
    8000a070:	43300613          	li	a2,1075
    8000a074:	00100513          	li	a0,1
    8000a078:	03451513          	sll	a0,a0,0x34
    8000a07c:	40e6063b          	subw	a2,a2,a4
    8000a080:	00012023          	sw	zero,0(sp)
    8000a084:	00a86533          	or	a0,a6,a0
    8000a088:	04c04c63          	bgtz	a2,8000a0e0 <f64_to_ui64+0x104>
    8000a08c:	ff500693          	li	a3,-11
    8000a090:	02d64063          	blt	a2,a3,8000a0b0 <f64_to_ui64+0xd4>
    8000a094:	bcd7071b          	addw	a4,a4,-1075
    8000a098:	00e51533          	sll	a0,a0,a4
    8000a09c:	02055793          	srl	a5,a0,0x20
    8000a0a0:	00f12423          	sw	a5,8(sp)
    8000a0a4:	00a12223          	sw	a0,4(sp)
    8000a0a8:	00010913          	mv	s2,sp
    8000a0ac:	f91ff06f          	j	8000a03c <f64_to_ui64+0x60>
    8000a0b0:	01026213          	or	tp,tp,16
    8000a0b4:	7ff00693          	li	a3,2047
    8000a0b8:	02d70863          	beq	a4,a3,8000a0e8 <f64_to_ui64+0x10c>
    8000a0bc:	03813083          	ld	ra,56(sp)
    8000a0c0:	03013403          	ld	s0,48(sp)
    8000a0c4:	fff7c513          	not	a0,a5
    8000a0c8:	02813483          	ld	s1,40(sp)
    8000a0cc:	02013903          	ld	s2,32(sp)
    8000a0d0:	01813983          	ld	s3,24(sp)
    8000a0d4:	43f55513          	sra	a0,a0,0x3f
    8000a0d8:	04010113          	add	sp,sp,64
    8000a0dc:	00008067          	ret
    8000a0e0:	00050813          	mv	a6,a0
    8000a0e4:	f39ff06f          	j	8000a01c <f64_to_ui64+0x40>
    8000a0e8:	fff00513          	li	a0,-1
    8000a0ec:	fc0808e3          	beqz	a6,8000a0bc <f64_to_ui64+0xe0>
    8000a0f0:	f61ff06f          	j	8000a050 <f64_to_ui64+0x74>

000000008000a0f4 <f64_classify>:
    8000a0f4:	03455713          	srl	a4,a0,0x34
    8000a0f8:	00050793          	mv	a5,a0
    8000a0fc:	7ff77713          	and	a4,a4,2047
    8000a100:	7ff00693          	li	a3,2047
    8000a104:	04054663          	bltz	a0,8000a150 <f64_classify+0x5c>
    8000a108:	00d70a63          	beq	a4,a3,8000a11c <f64_classify+0x28>
    8000a10c:	06071663          	bnez	a4,8000a178 <f64_classify+0x84>
    8000a110:	02000513          	li	a0,32
    8000a114:	08078063          	beqz	a5,8000a194 <f64_classify+0xa0>
    8000a118:	00008067          	ret
    8000a11c:	00c51713          	sll	a4,a0,0xc
    8000a120:	00000513          	li	a0,0
    8000a124:	06070c63          	beqz	a4,8000a19c <f64_classify+0xa8>
    8000a128:	00c79713          	sll	a4,a5,0xc
    8000a12c:	04070263          	beqz	a4,8000a170 <f64_classify+0x7c>
    8000a130:	00fff737          	lui	a4,0xfff
    8000a134:	02771713          	sll	a4,a4,0x27
    8000a138:	7ff00693          	li	a3,2047
    8000a13c:	00e7f733          	and	a4,a5,a4
    8000a140:	03469693          	sll	a3,a3,0x34
    8000a144:	06d70263          	beq	a4,a3,8000a1a8 <f64_classify+0xb4>
    8000a148:	20056513          	or	a0,a0,512
    8000a14c:	00008067          	ret
    8000a150:	00c51513          	sll	a0,a0,0xc
    8000a154:	00153513          	seqz	a0,a0
    8000a158:	02d70263          	beq	a4,a3,8000a17c <f64_classify+0x88>
    8000a15c:	06071a63          	bnez	a4,8000a1d0 <f64_classify+0xdc>
    8000a160:	00c79793          	sll	a5,a5,0xc
    8000a164:	00800513          	li	a0,8
    8000a168:	00078463          	beqz	a5,8000a170 <f64_classify+0x7c>
    8000a16c:	00400513          	li	a0,4
    8000a170:	0005051b          	sext.w	a0,a0
    8000a174:	00008067          	ret
    8000a178:	04000513          	li	a0,64
    8000a17c:	fff7c713          	not	a4,a5
    8000a180:	03475693          	srl	a3,a4,0x34
    8000a184:	7ff6f693          	and	a3,a3,2047
    8000a188:	fa0680e3          	beqz	a3,8000a128 <f64_classify+0x34>
    8000a18c:	0005051b          	sext.w	a0,a0
    8000a190:	00008067          	ret
    8000a194:	01000513          	li	a0,16
    8000a198:	00008067          	ret
    8000a19c:	08000513          	li	a0,128
    8000a1a0:	0005051b          	sext.w	a0,a0
    8000a1a4:	00008067          	ret
    8000a1a8:	fff00713          	li	a4,-1
    8000a1ac:	00d75713          	srl	a4,a4,0xd
    8000a1b0:	00e7f7b3          	and	a5,a5,a4
    8000a1b4:	00078463          	beqz	a5,8000a1bc <f64_classify+0xc8>
    8000a1b8:	10056513          	or	a0,a0,256
    8000a1bc:	0017b793          	seqz	a5,a5
    8000a1c0:	0097979b          	sllw	a5,a5,0x9
    8000a1c4:	00f56533          	or	a0,a0,a5
    8000a1c8:	0005051b          	sext.w	a0,a0
    8000a1cc:	00008067          	ret
    8000a1d0:	00200513          	li	a0,2
    8000a1d4:	fa9ff06f          	j	8000a17c <f64_classify+0x88>

000000008000a1d8 <softfloat_addMagsF32>:
    8000a1d8:	fd010113          	add	sp,sp,-48
    8000a1dc:	0175579b          	srlw	a5,a0,0x17
    8000a1e0:	0175d69b          	srlw	a3,a1,0x17
    8000a1e4:	00800737          	lui	a4,0x800
    8000a1e8:	fff70713          	add	a4,a4,-1 # 7fffff <_ftext-0x7f800001>
    8000a1ec:	00913c23          	sd	s1,24(sp)
    8000a1f0:	01313423          	sd	s3,8(sp)
    8000a1f4:	0ff6f493          	zext.b	s1,a3
    8000a1f8:	0ff7f993          	zext.b	s3,a5
    8000a1fc:	02113423          	sd	ra,40(sp)
    8000a200:	01413023          	sd	s4,0(sp)
    8000a204:	00050313          	mv	t1,a0
    8000a208:	00e578b3          	and	a7,a0,a4
    8000a20c:	00e5f833          	and	a6,a1,a4
    8000a210:	4099863b          	subw	a2,s3,s1
    8000a214:	02999c63          	bne	s3,s1,8000a24c <softfloat_addMagsF32+0x74>
    8000a218:	0e098c63          	beqz	s3,8000a310 <softfloat_addMagsF32+0x138>
    8000a21c:	0ff00693          	li	a3,255
    8000a220:	14d98463          	beq	s3,a3,8000a368 <softfloat_addMagsF32+0x190>
    8000a224:	01000637          	lui	a2,0x1000
    8000a228:	0106063b          	addw	a2,a2,a6
    8000a22c:	0116063b          	addw	a2,a2,a7
    8000a230:	00167713          	and	a4,a2,1
    8000a234:	01f55a1b          	srlw	s4,a0,0x1f
    8000a238:	00071663          	bnez	a4,8000a244 <softfloat_addMagsF32+0x6c>
    8000a23c:	0fe00713          	li	a4,254
    8000a240:	12e99e63          	bne	s3,a4,8000a37c <softfloat_addMagsF32+0x1a4>
    8000a244:	0066161b          	sllw	a2,a2,0x6
    8000a248:	0680006f          	j	8000a2b0 <softfloat_addMagsF32+0xd8>
    8000a24c:	02813023          	sd	s0,32(sp)
    8000a250:	01213823          	sd	s2,16(sp)
    8000a254:	0068941b          	sllw	s0,a7,0x6
    8000a258:	0068191b          	sllw	s2,a6,0x6
    8000a25c:	00040893          	mv	a7,s0
    8000a260:	00090813          	mv	a6,s2
    8000a264:	01f55a1b          	srlw	s4,a0,0x1f
    8000a268:	0ff00713          	li	a4,255
    8000a26c:	06064263          	bltz	a2,8000a2d0 <softfloat_addMagsF32+0xf8>
    8000a270:	0ae98e63          	beq	s3,a4,8000a32c <softfloat_addMagsF32+0x154>
    8000a274:	00048463          	beqz	s1,8000a27c <softfloat_addMagsF32+0xa4>
    8000a278:	20000937          	lui	s2,0x20000
    8000a27c:	00060593          	mv	a1,a2
    8000a280:	0128053b          	addw	a0,a6,s2
    8000a284:	248010ef          	jal	8000b4cc <softfloat_shiftRightJam32>
    8000a288:	0005091b          	sext.w	s2,a0
    8000a28c:	200007b7          	lui	a5,0x20000
    8000a290:	0124043b          	addw	s0,s0,s2
    8000a294:	00f4063b          	addw	a2,s0,a5
    8000a298:	400007b7          	lui	a5,0x40000
    8000a29c:	06f67463          	bgeu	a2,a5,8000a304 <softfloat_addMagsF32+0x12c>
    8000a2a0:	02013403          	ld	s0,32(sp)
    8000a2a4:	01013903          	ld	s2,16(sp)
    8000a2a8:	fff9899b          	addw	s3,s3,-1
    8000a2ac:	0016161b          	sllw	a2,a2,0x1
    8000a2b0:	02813083          	ld	ra,40(sp)
    8000a2b4:	01813483          	ld	s1,24(sp)
    8000a2b8:	00098593          	mv	a1,s3
    8000a2bc:	000a0513          	mv	a0,s4
    8000a2c0:	00813983          	ld	s3,8(sp)
    8000a2c4:	00013a03          	ld	s4,0(sp)
    8000a2c8:	03010113          	add	sp,sp,48
    8000a2cc:	66d0006f          	j	8000b138 <softfloat_roundPackToF32>
    8000a2d0:	06e48663          	beq	s1,a4,8000a33c <softfloat_addMagsF32+0x164>
    8000a2d4:	00098463          	beqz	s3,8000a2dc <softfloat_addMagsF32+0x104>
    8000a2d8:	20000437          	lui	s0,0x20000
    8000a2dc:	413485bb          	subw	a1,s1,s3
    8000a2e0:	0088853b          	addw	a0,a7,s0
    8000a2e4:	1e8010ef          	jal	8000b4cc <softfloat_shiftRightJam32>
    8000a2e8:	0005041b          	sext.w	s0,a0
    8000a2ec:	200007b7          	lui	a5,0x20000
    8000a2f0:	0124043b          	addw	s0,s0,s2
    8000a2f4:	00f4063b          	addw	a2,s0,a5
    8000a2f8:	400007b7          	lui	a5,0x40000
    8000a2fc:	00048993          	mv	s3,s1
    8000a300:	faf660e3          	bltu	a2,a5,8000a2a0 <softfloat_addMagsF32+0xc8>
    8000a304:	02013403          	ld	s0,32(sp)
    8000a308:	01013903          	ld	s2,16(sp)
    8000a30c:	fa5ff06f          	j	8000a2b0 <softfloat_addMagsF32+0xd8>
    8000a310:	0105053b          	addw	a0,a0,a6
    8000a314:	02813083          	ld	ra,40(sp)
    8000a318:	01813483          	ld	s1,24(sp)
    8000a31c:	00813983          	ld	s3,8(sp)
    8000a320:	00013a03          	ld	s4,0(sp)
    8000a324:	03010113          	add	sp,sp,48
    8000a328:	00008067          	ret
    8000a32c:	00041a63          	bnez	s0,8000a340 <softfloat_addMagsF32+0x168>
    8000a330:	02013403          	ld	s0,32(sp)
    8000a334:	01013903          	ld	s2,16(sp)
    8000a338:	fddff06f          	j	8000a314 <softfloat_addMagsF32+0x13c>
    8000a33c:	04090e63          	beqz	s2,8000a398 <softfloat_addMagsF32+0x1c0>
    8000a340:	02013403          	ld	s0,32(sp)
    8000a344:	01013903          	ld	s2,16(sp)
    8000a348:	151010ef          	jal	8000bc98 <softfloat_propagateNaNF32UI>
    8000a34c:	02813083          	ld	ra,40(sp)
    8000a350:	01813483          	ld	s1,24(sp)
    8000a354:	00813983          	ld	s3,8(sp)
    8000a358:	00013a03          	ld	s4,0(sp)
    8000a35c:	0005051b          	sext.w	a0,a0
    8000a360:	03010113          	add	sp,sp,48
    8000a364:	00008067          	ret
    8000a368:	0065e333          	or	t1,a1,t1
    8000a36c:	00e37333          	and	t1,t1,a4
    8000a370:	0003031b          	sext.w	t1,t1
    8000a374:	fc031ae3          	bnez	t1,8000a348 <softfloat_addMagsF32+0x170>
    8000a378:	f9dff06f          	j	8000a314 <softfloat_addMagsF32+0x13c>
    8000a37c:	0179979b          	sllw	a5,s3,0x17
    8000a380:	0016561b          	srlw	a2,a2,0x1
    8000a384:	80000537          	lui	a0,0x80000
    8000a388:	00c787bb          	addw	a5,a5,a2
    8000a38c:	00a37533          	and	a0,t1,a0
    8000a390:	00a7853b          	addw	a0,a5,a0
    8000a394:	f81ff06f          	j	8000a314 <softfloat_addMagsF32+0x13c>
    8000a398:	800007b7          	lui	a5,0x80000
    8000a39c:	00f37333          	and	t1,t1,a5
    8000a3a0:	7f800537          	lui	a0,0x7f800
    8000a3a4:	02013403          	ld	s0,32(sp)
    8000a3a8:	01013903          	ld	s2,16(sp)
    8000a3ac:	0065053b          	addw	a0,a0,t1
    8000a3b0:	f65ff06f          	j	8000a314 <softfloat_addMagsF32+0x13c>

000000008000a3b4 <softfloat_addMagsF64>:
    8000a3b4:	fd010113          	add	sp,sp,-48
    8000a3b8:	02813023          	sd	s0,32(sp)
    8000a3bc:	00913c23          	sd	s1,24(sp)
    8000a3c0:	03455413          	srl	s0,a0,0x34
    8000a3c4:	0345d493          	srl	s1,a1,0x34
    8000a3c8:	fff00793          	li	a5,-1
    8000a3cc:	00c7d793          	srl	a5,a5,0xc
    8000a3d0:	01313423          	sd	s3,8(sp)
    8000a3d4:	7ff47413          	and	s0,s0,2047
    8000a3d8:	7ff4f493          	and	s1,s1,2047
    8000a3dc:	02113423          	sd	ra,40(sp)
    8000a3e0:	00060993          	mv	s3,a2
    8000a3e4:	00f576b3          	and	a3,a0,a5
    8000a3e8:	00f5f733          	and	a4,a1,a5
    8000a3ec:	4094063b          	subw	a2,s0,s1
    8000a3f0:	04941263          	bne	s0,s1,8000a434 <softfloat_addMagsF64+0x80>
    8000a3f4:	0e040e63          	beqz	s0,8000a4f0 <softfloat_addMagsF64+0x13c>
    8000a3f8:	7ff00613          	li	a2,2047
    8000a3fc:	14c40463          	beq	s0,a2,8000a544 <softfloat_addMagsF64+0x190>
    8000a400:	00100793          	li	a5,1
    8000a404:	03579793          	sll	a5,a5,0x35
    8000a408:	00f70733          	add	a4,a4,a5
    8000a40c:	00d70733          	add	a4,a4,a3
    8000a410:	00971613          	sll	a2,a4,0x9
    8000a414:	00040593          	mv	a1,s0
    8000a418:	02013403          	ld	s0,32(sp)
    8000a41c:	02813083          	ld	ra,40(sp)
    8000a420:	01813483          	ld	s1,24(sp)
    8000a424:	00098513          	mv	a0,s3
    8000a428:	00813983          	ld	s3,8(sp)
    8000a42c:	03010113          	add	sp,sp,48
    8000a430:	6650006f          	j	8000b294 <softfloat_roundPackToF64>
    8000a434:	01213823          	sd	s2,16(sp)
    8000a438:	01413023          	sd	s4,0(sp)
    8000a43c:	00969913          	sll	s2,a3,0x9
    8000a440:	00971a13          	sll	s4,a4,0x9
    8000a444:	7ff00793          	li	a5,2047
    8000a448:	04064c63          	bltz	a2,8000a4a0 <softfloat_addMagsF64+0xec>
    8000a44c:	0cf40063          	beq	s0,a5,8000a50c <softfloat_addMagsF64+0x158>
    8000a450:	00a71513          	sll	a0,a4,0xa
    8000a454:	00048863          	beqz	s1,8000a464 <softfloat_addMagsF64+0xb0>
    8000a458:	00100713          	li	a4,1
    8000a45c:	03d71713          	sll	a4,a4,0x3d
    8000a460:	00ea0533          	add	a0,s4,a4
    8000a464:	00060593          	mv	a1,a2
    8000a468:	090010ef          	jal	8000b4f8 <softfloat_shiftRightJam64>
    8000a46c:	00050a13          	mv	s4,a0
    8000a470:	00100793          	li	a5,1
    8000a474:	03d79793          	sll	a5,a5,0x3d
    8000a478:	01490933          	add	s2,s2,s4
    8000a47c:	00f90633          	add	a2,s2,a5
    8000a480:	fff00793          	li	a5,-1
    8000a484:	0027d793          	srl	a5,a5,0x2
    8000a488:	04c7ee63          	bltu	a5,a2,8000a4e4 <softfloat_addMagsF64+0x130>
    8000a48c:	01013903          	ld	s2,16(sp)
    8000a490:	00013a03          	ld	s4,0(sp)
    8000a494:	fff4041b          	addw	s0,s0,-1 # 1fffffff <_ftext-0x60000001>
    8000a498:	00161613          	sll	a2,a2,0x1
    8000a49c:	f79ff06f          	j	8000a414 <softfloat_addMagsF64+0x60>
    8000a4a0:	06f48e63          	beq	s1,a5,8000a51c <softfloat_addMagsF64+0x168>
    8000a4a4:	00a69513          	sll	a0,a3,0xa
    8000a4a8:	00040863          	beqz	s0,8000a4b8 <softfloat_addMagsF64+0x104>
    8000a4ac:	00100693          	li	a3,1
    8000a4b0:	03d69693          	sll	a3,a3,0x3d
    8000a4b4:	00d90533          	add	a0,s2,a3
    8000a4b8:	408485bb          	subw	a1,s1,s0
    8000a4bc:	03c010ef          	jal	8000b4f8 <softfloat_shiftRightJam64>
    8000a4c0:	00050913          	mv	s2,a0
    8000a4c4:	00100793          	li	a5,1
    8000a4c8:	03d79793          	sll	a5,a5,0x3d
    8000a4cc:	01490933          	add	s2,s2,s4
    8000a4d0:	00f90633          	add	a2,s2,a5
    8000a4d4:	fff00793          	li	a5,-1
    8000a4d8:	0027d793          	srl	a5,a5,0x2
    8000a4dc:	00048413          	mv	s0,s1
    8000a4e0:	fac7f6e3          	bgeu	a5,a2,8000a48c <softfloat_addMagsF64+0xd8>
    8000a4e4:	01013903          	ld	s2,16(sp)
    8000a4e8:	00013a03          	ld	s4,0(sp)
    8000a4ec:	f29ff06f          	j	8000a414 <softfloat_addMagsF64+0x60>
    8000a4f0:	00e50533          	add	a0,a0,a4
    8000a4f4:	02813083          	ld	ra,40(sp)
    8000a4f8:	02013403          	ld	s0,32(sp)
    8000a4fc:	01813483          	ld	s1,24(sp)
    8000a500:	00813983          	ld	s3,8(sp)
    8000a504:	03010113          	add	sp,sp,48
    8000a508:	00008067          	ret
    8000a50c:	00091a63          	bnez	s2,8000a520 <softfloat_addMagsF64+0x16c>
    8000a510:	01013903          	ld	s2,16(sp)
    8000a514:	00013a03          	ld	s4,0(sp)
    8000a518:	fddff06f          	j	8000a4f4 <softfloat_addMagsF64+0x140>
    8000a51c:	020a0c63          	beqz	s4,8000a554 <softfloat_addMagsF64+0x1a0>
    8000a520:	01013903          	ld	s2,16(sp)
    8000a524:	00013a03          	ld	s4,0(sp)
    8000a528:	7bc010ef          	jal	8000bce4 <softfloat_propagateNaNF64UI>
    8000a52c:	02813083          	ld	ra,40(sp)
    8000a530:	02013403          	ld	s0,32(sp)
    8000a534:	01813483          	ld	s1,24(sp)
    8000a538:	00813983          	ld	s3,8(sp)
    8000a53c:	03010113          	add	sp,sp,48
    8000a540:	00008067          	ret
    8000a544:	00b56733          	or	a4,a0,a1
    8000a548:	00f777b3          	and	a5,a4,a5
    8000a54c:	fc079ee3          	bnez	a5,8000a528 <softfloat_addMagsF64+0x174>
    8000a550:	fa5ff06f          	j	8000a4f4 <softfloat_addMagsF64+0x140>
    8000a554:	03f99613          	sll	a2,s3,0x3f
    8000a558:	03479793          	sll	a5,a5,0x34
    8000a55c:	01013903          	ld	s2,16(sp)
    8000a560:	00013a03          	ld	s4,0(sp)
    8000a564:	00f60533          	add	a0,a2,a5
    8000a568:	f8dff06f          	j	8000a4f4 <softfloat_addMagsF64+0x140>

000000008000a56c <softfloat_approxRecip32_1>:
    8000a56c:	01b5579b          	srlw	a5,a0,0x1b
    8000a570:	00f7f793          	and	a5,a5,15
    8000a574:	00179793          	sll	a5,a5,0x1
    8000a578:	00003717          	auipc	a4,0x3
    8000a57c:	ce870713          	add	a4,a4,-792 # 8000d260 <softfloat_approxRecip_1k1s>
    8000a580:	00f70733          	add	a4,a4,a5
    8000a584:	00075683          	lhu	a3,0(a4)
    8000a588:	00b5571b          	srlw	a4,a0,0xb
    8000a58c:	03071713          	sll	a4,a4,0x30
    8000a590:	03075713          	srl	a4,a4,0x30
    8000a594:	02e686bb          	mulw	a3,a3,a4
    8000a598:	00003717          	auipc	a4,0x3
    8000a59c:	ce870713          	add	a4,a4,-792 # 8000d280 <softfloat_approxRecip_1k0s>
    8000a5a0:	00f707b3          	add	a5,a4,a5
    8000a5a4:	0007d703          	lhu	a4,0(a5) # ffffffff80000000 <_end+0xfffffffefffec000>
    8000a5a8:	02051793          	sll	a5,a0,0x20
    8000a5ac:	0207d793          	srl	a5,a5,0x20
    8000a5b0:	0146d69b          	srlw	a3,a3,0x14
    8000a5b4:	40d7073b          	subw	a4,a4,a3
    8000a5b8:	03071713          	sll	a4,a4,0x30
    8000a5bc:	03075713          	srl	a4,a4,0x30
    8000a5c0:	02e787b3          	mul	a5,a5,a4
    8000a5c4:	0107151b          	sllw	a0,a4,0x10
    8000a5c8:	0077d793          	srl	a5,a5,0x7
    8000a5cc:	fff7c793          	not	a5,a5
    8000a5d0:	02079793          	sll	a5,a5,0x20
    8000a5d4:	0207d793          	srl	a5,a5,0x20
    8000a5d8:	02f70733          	mul	a4,a4,a5
    8000a5dc:	02f787b3          	mul	a5,a5,a5
    8000a5e0:	01875713          	srl	a4,a4,0x18
    8000a5e4:	00e5053b          	addw	a0,a0,a4
    8000a5e8:	02051713          	sll	a4,a0,0x20
    8000a5ec:	02075713          	srl	a4,a4,0x20
    8000a5f0:	0207d793          	srl	a5,a5,0x20
    8000a5f4:	02e787b3          	mul	a5,a5,a4
    8000a5f8:	0307d793          	srl	a5,a5,0x30
    8000a5fc:	00f5053b          	addw	a0,a0,a5
    8000a600:	00008067          	ret

000000008000a604 <softfloat_approxRecipSqrt32_1>:
    8000a604:	01b5d79b          	srlw	a5,a1,0x1b
    8000a608:	00e7f793          	and	a5,a5,14
    8000a60c:	00a787bb          	addw	a5,a5,a0
    8000a610:	00179793          	sll	a5,a5,0x1
    8000a614:	00003717          	auipc	a4,0x3
    8000a618:	c8c70713          	add	a4,a4,-884 # 8000d2a0 <softfloat_approxRecipSqrt_1k1s>
    8000a61c:	00f70733          	add	a4,a4,a5
    8000a620:	00075683          	lhu	a3,0(a4)
    8000a624:	00c5d71b          	srlw	a4,a1,0xc
    8000a628:	03071713          	sll	a4,a4,0x30
    8000a62c:	03075713          	srl	a4,a4,0x30
    8000a630:	02e686bb          	mulw	a3,a3,a4
    8000a634:	00003717          	auipc	a4,0x3
    8000a638:	c8c70713          	add	a4,a4,-884 # 8000d2c0 <softfloat_approxRecipSqrt_1k0s>
    8000a63c:	00f707b3          	add	a5,a4,a5
    8000a640:	0007d703          	lhu	a4,0(a5)
    8000a644:	0146d79b          	srlw	a5,a3,0x14
    8000a648:	40f7073b          	subw	a4,a4,a5
    8000a64c:	03071713          	sll	a4,a4,0x30
    8000a650:	03075713          	srl	a4,a4,0x30
    8000a654:	02e707bb          	mulw	a5,a4,a4
    8000a658:	0007069b          	sext.w	a3,a4
    8000a65c:	00051463          	bnez	a0,8000a664 <softfloat_approxRecipSqrt32_1+0x60>
    8000a660:	0017979b          	sllw	a5,a5,0x1
    8000a664:	02079793          	sll	a5,a5,0x20
    8000a668:	02059593          	sll	a1,a1,0x20
    8000a66c:	0205d593          	srl	a1,a1,0x20
    8000a670:	0207d793          	srl	a5,a5,0x20
    8000a674:	0106951b          	sllw	a0,a3,0x10
    8000a678:	00e6969b          	sllw	a3,a3,0xe
    8000a67c:	02b787b3          	mul	a5,a5,a1
    8000a680:	80000637          	lui	a2,0x80000
    8000a684:	0177d793          	srl	a5,a5,0x17
    8000a688:	fff7c793          	not	a5,a5
    8000a68c:	02079793          	sll	a5,a5,0x20
    8000a690:	0207d793          	srl	a5,a5,0x20
    8000a694:	02f70733          	mul	a4,a4,a5
    8000a698:	02f787b3          	mul	a5,a5,a5
    8000a69c:	01975713          	srl	a4,a4,0x19
    8000a6a0:	00e5053b          	addw	a0,a0,a4
    8000a6a4:	0015571b          	srlw	a4,a0,0x1
    8000a6a8:	0035559b          	srlw	a1,a0,0x3
    8000a6ac:	00b7073b          	addw	a4,a4,a1
    8000a6b0:	40d7073b          	subw	a4,a4,a3
    8000a6b4:	02071713          	sll	a4,a4,0x20
    8000a6b8:	02075713          	srl	a4,a4,0x20
    8000a6bc:	0207d793          	srl	a5,a5,0x20
    8000a6c0:	02f707b3          	mul	a5,a4,a5
    8000a6c4:	0307d793          	srl	a5,a5,0x30
    8000a6c8:	00f5053b          	addw	a0,a0,a5
    8000a6cc:	00c57463          	bgeu	a0,a2,8000a6d4 <softfloat_approxRecipSqrt32_1+0xd0>
    8000a6d0:	80000537          	lui	a0,0x80000
    8000a6d4:	00008067          	ret

000000008000a6d8 <softfloat_mul64To128M>:
    8000a6d8:	fff00793          	li	a5,-1
    8000a6dc:	0207d793          	srl	a5,a5,0x20
    8000a6e0:	02055813          	srl	a6,a0,0x20
    8000a6e4:	0205d893          	srl	a7,a1,0x20
    8000a6e8:	00f57533          	and	a0,a0,a5
    8000a6ec:	00f5f5b3          	and	a1,a1,a5
    8000a6f0:	02b80733          	mul	a4,a6,a1
    8000a6f4:	02a887b3          	mul	a5,a7,a0
    8000a6f8:	02b50533          	mul	a0,a0,a1
    8000a6fc:	00e78733          	add	a4,a5,a4
    8000a700:	00f737b3          	sltu	a5,a4,a5
    8000a704:	02071693          	sll	a3,a4,0x20
    8000a708:	02079793          	sll	a5,a5,0x20
    8000a70c:	02075713          	srl	a4,a4,0x20
    8000a710:	00e7e7b3          	or	a5,a5,a4
    8000a714:	03180833          	mul	a6,a6,a7
    8000a718:	00d50733          	add	a4,a0,a3
    8000a71c:	00a73533          	sltu	a0,a4,a0
    8000a720:	00f50533          	add	a0,a0,a5
    8000a724:	02075793          	srl	a5,a4,0x20
    8000a728:	00f62223          	sw	a5,4(a2) # ffffffff80000004 <_end+0xfffffffefffec004>
    8000a72c:	00e62023          	sw	a4,0(a2)
    8000a730:	01050533          	add	a0,a0,a6
    8000a734:	02055793          	srl	a5,a0,0x20
    8000a738:	00f62623          	sw	a5,12(a2)
    8000a73c:	00a62423          	sw	a0,8(a2)
    8000a740:	00008067          	ret

000000008000a744 <softfloat_mulAddF32>:
    8000a744:	f9010113          	add	sp,sp,-112
    8000a748:	fff68813          	add	a6,a3,-1 # 7f7fffff <_ftext-0x800001>
    8000a74c:	05213823          	sd	s2,80(sp)
    8000a750:	ffe68693          	add	a3,a3,-2
    8000a754:	00060913          	mv	s2,a2
    8000a758:	01913c23          	sd	s9,24(sp)
    8000a75c:	0175571b          	srlw	a4,a0,0x17
    8000a760:	01f6561b          	srlw	a2,a2,0x1f
    8000a764:	00183813          	seqz	a6,a6
    8000a768:	00b54cb3          	xor	s9,a0,a1
    8000a76c:	008007b7          	lui	a5,0x800
    8000a770:	fff78793          	add	a5,a5,-1 # 7fffff <_ftext-0x7f800001>
    8000a774:	06813023          	sd	s0,96(sp)
    8000a778:	04913c23          	sd	s1,88(sp)
    8000a77c:	05413023          	sd	s4,64(sp)
    8000a780:	0016b493          	seqz	s1,a3
    8000a784:	03513c23          	sd	s5,56(sp)
    8000a788:	03613823          	sd	s6,48(sp)
    8000a78c:	03713423          	sd	s7,40(sp)
    8000a790:	03813023          	sd	s8,32(sp)
    8000a794:	01a13823          	sd	s10,16(sp)
    8000a798:	0175da1b          	srlw	s4,a1,0x17
    8000a79c:	01064633          	xor	a2,a2,a6
    8000a7a0:	01795b9b          	srlw	s7,s2,0x17
    8000a7a4:	01fcdc9b          	srlw	s9,s9,0x1f
    8000a7a8:	06113423          	sd	ra,104(sp)
    8000a7ac:	0ff77713          	zext.b	a4,a4
    8000a7b0:	0ff00693          	li	a3,255
    8000a7b4:	00f57b33          	and	s6,a0,a5
    8000a7b8:	0ffa7a13          	zext.b	s4,s4
    8000a7bc:	00f5fd33          	and	s10,a1,a5
    8000a7c0:	0ff67a93          	zext.b	s5,a2
    8000a7c4:	0ffbfb93          	zext.b	s7,s7
    8000a7c8:	00f97433          	and	s0,s2,a5
    8000a7cc:	009ccc33          	xor	s8,s9,s1
    8000a7d0:	16d70463          	beq	a4,a3,8000a938 <softfloat_mulAddF32+0x1f4>
    8000a7d4:	10da0a63          	beq	s4,a3,8000a8e8 <softfloat_mulAddF32+0x1a4>
    8000a7d8:	1adb8c63          	beq	s7,a3,8000a990 <softfloat_mulAddF32+0x24c>
    8000a7dc:	05313423          	sd	s3,72(sp)
    8000a7e0:	0007099b          	sext.w	s3,a4
    8000a7e4:	00071c63          	bnez	a4,8000a7fc <softfloat_mulAddF32+0xb8>
    8000a7e8:	1a0b0a63          	beqz	s6,8000a99c <softfloat_mulAddF32+0x258>
    8000a7ec:	000b0513          	mv	a0,s6
    8000a7f0:	7f4000ef          	jal	8000afe4 <softfloat_normSubnormalF32Sig>
    8000a7f4:	0005099b          	sext.w	s3,a0
    8000a7f8:	42055b13          	sra	s6,a0,0x20
    8000a7fc:	160a0e63          	beqz	s4,8000a978 <softfloat_mulAddF32+0x234>
    8000a800:	000a0a1b          	sext.w	s4,s4
    8000a804:	400007b7          	lui	a5,0x40000
    8000a808:	007b1b1b          	sllw	s6,s6,0x7
    8000a80c:	007d1d1b          	sllw	s10,s10,0x7
    8000a810:	00fb6b33          	or	s6,s6,a5
    8000a814:	00fd6d33          	or	s10,s10,a5
    8000a818:	020b1b13          	sll	s6,s6,0x20
    8000a81c:	020d1d13          	sll	s10,s10,0x20
    8000a820:	020b5b13          	srl	s6,s6,0x20
    8000a824:	020d5d13          	srl	s10,s10,0x20
    8000a828:	03ab0b33          	mul	s6,s6,s10
    8000a82c:	fff00793          	li	a5,-1
    8000a830:	0037d793          	srl	a5,a5,0x3
    8000a834:	0149873b          	addw	a4,s3,s4
    8000a838:	1967fa63          	bgeu	a5,s6,8000a9cc <softfloat_mulAddF32+0x288>
    8000a83c:	f827091b          	addw	s2,a4,-126
    8000a840:	180b8c63          	beqz	s7,8000a9d8 <softfloat_mulAddF32+0x294>
    8000a844:	000b8b9b          	sext.w	s7,s7
    8000a848:	0064179b          	sllw	a5,s0,0x6
    8000a84c:	20000737          	lui	a4,0x20000
    8000a850:	00e7e7b3          	or	a5,a5,a4
    8000a854:	417905bb          	subw	a1,s2,s7
    8000a858:	00058713          	mv	a4,a1
    8000a85c:	0007841b          	sext.w	s0,a5
    8000a860:	1b8a8063          	beq	s5,s8,8000aa00 <softfloat_mulAddF32+0x2bc>
    8000a864:	02041413          	sll	s0,s0,0x20
    8000a868:	1e05c063          	bltz	a1,8000aa48 <softfloat_mulAddF32+0x304>
    8000a86c:	18059263          	bnez	a1,8000a9f0 <softfloat_mulAddF32+0x2ac>
    8000a870:	408b09b3          	sub	s3,s6,s0
    8000a874:	148b0063          	beq	s6,s0,8000a9b4 <softfloat_mulAddF32+0x270>
    8000a878:	0009d863          	bgez	s3,8000a888 <softfloat_mulAddF32+0x144>
    8000a87c:	409c8cb3          	sub	s9,s9,s1
    8000a880:	001cbc13          	seqz	s8,s9
    8000a884:	416409b3          	sub	s3,s0,s6
    8000a888:	00098513          	mv	a0,s3
    8000a88c:	568010ef          	jal	8000bdf4 <softfloat_countLeadingZeros64>
    8000a890:	fff5079b          	addw	a5,a0,-1 # 7fffffff <_ftext-0x1>
    8000a894:	fdf5051b          	addw	a0,a0,-33
    8000a898:	40f9093b          	subw	s2,s2,a5
    8000a89c:	02051793          	sll	a5,a0,0x20
    8000a8a0:	00a9963b          	sllw	a2,s3,a0
    8000a8a4:	1c07c063          	bltz	a5,8000aa64 <softfloat_mulAddF32+0x320>
    8000a8a8:	06013403          	ld	s0,96(sp)
    8000a8ac:	04813983          	ld	s3,72(sp)
    8000a8b0:	06813083          	ld	ra,104(sp)
    8000a8b4:	05813483          	ld	s1,88(sp)
    8000a8b8:	04013a03          	ld	s4,64(sp)
    8000a8bc:	03813a83          	ld	s5,56(sp)
    8000a8c0:	03013b03          	ld	s6,48(sp)
    8000a8c4:	02813b83          	ld	s7,40(sp)
    8000a8c8:	01813c83          	ld	s9,24(sp)
    8000a8cc:	01013d03          	ld	s10,16(sp)
    8000a8d0:	00090593          	mv	a1,s2
    8000a8d4:	000c0513          	mv	a0,s8
    8000a8d8:	05013903          	ld	s2,80(sp)
    8000a8dc:	02013c03          	ld	s8,32(sp)
    8000a8e0:	07010113          	add	sp,sp,112
    8000a8e4:	0550006f          	j	8000b138 <softfloat_roundPackToF32>
    8000a8e8:	00eb6b33          	or	s6,s6,a4
    8000a8ec:	040d0c63          	beqz	s10,8000a944 <softfloat_mulAddF32+0x200>
    8000a8f0:	3a8010ef          	jal	8000bc98 <softfloat_propagateNaNF32UI>
    8000a8f4:	0005051b          	sext.w	a0,a0
    8000a8f8:	00090593          	mv	a1,s2
    8000a8fc:	39c010ef          	jal	8000bc98 <softfloat_propagateNaNF32UI>
    8000a900:	0005051b          	sext.w	a0,a0
    8000a904:	06813083          	ld	ra,104(sp)
    8000a908:	06013403          	ld	s0,96(sp)
    8000a90c:	05813483          	ld	s1,88(sp)
    8000a910:	05013903          	ld	s2,80(sp)
    8000a914:	04013a03          	ld	s4,64(sp)
    8000a918:	03813a83          	ld	s5,56(sp)
    8000a91c:	03013b03          	ld	s6,48(sp)
    8000a920:	02813b83          	ld	s7,40(sp)
    8000a924:	02013c03          	ld	s8,32(sp)
    8000a928:	01813c83          	ld	s9,24(sp)
    8000a92c:	01013d03          	ld	s10,16(sp)
    8000a930:	07010113          	add	sp,sp,112
    8000a934:	00008067          	ret
    8000a938:	fa0b1ce3          	bnez	s6,8000a8f0 <softfloat_mulAddF32+0x1ac>
    8000a93c:	02ea0a63          	beq	s4,a4,8000a970 <softfloat_mulAddF32+0x22c>
    8000a940:	014d6b33          	or	s6,s10,s4
    8000a944:	020b0063          	beqz	s6,8000a964 <softfloat_mulAddF32+0x220>
    8000a948:	01fc151b          	sllw	a0,s8,0x1f
    8000a94c:	7f800737          	lui	a4,0x7f800
    8000a950:	0ff00793          	li	a5,255
    8000a954:	00e5053b          	addw	a0,a0,a4
    8000a958:	fafb96e3          	bne	s7,a5,8000a904 <softfloat_mulAddF32+0x1c0>
    8000a95c:	f8041ee3          	bnez	s0,8000a8f8 <softfloat_mulAddF32+0x1b4>
    8000a960:	fb8a82e3          	beq	s5,s8,8000a904 <softfloat_mulAddF32+0x1c0>
    8000a964:	01026213          	or	tp,tp,16
    8000a968:	7fc00537          	lui	a0,0x7fc00
    8000a96c:	f8dff06f          	j	8000a8f8 <softfloat_mulAddF32+0x1b4>
    8000a970:	f80d10e3          	bnez	s10,8000a8f0 <softfloat_mulAddF32+0x1ac>
    8000a974:	fd5ff06f          	j	8000a948 <softfloat_mulAddF32+0x204>
    8000a978:	020d0263          	beqz	s10,8000a99c <softfloat_mulAddF32+0x258>
    8000a97c:	000d0513          	mv	a0,s10
    8000a980:	664000ef          	jal	8000afe4 <softfloat_normSubnormalF32Sig>
    8000a984:	00050a1b          	sext.w	s4,a0
    8000a988:	42055d13          	sra	s10,a0,0x20
    8000a98c:	e79ff06f          	j	8000a804 <softfloat_mulAddF32+0xc0>
    8000a990:	00040e63          	beqz	s0,8000a9ac <softfloat_mulAddF32+0x268>
    8000a994:	00000513          	li	a0,0
    8000a998:	f61ff06f          	j	8000a8f8 <softfloat_mulAddF32+0x1b4>
    8000a99c:	017467b3          	or	a5,s0,s7
    8000a9a0:	00079463          	bnez	a5,8000a9a8 <softfloat_mulAddF32+0x264>
    8000a9a4:	018a9863          	bne	s5,s8,8000a9b4 <softfloat_mulAddF32+0x270>
    8000a9a8:	04813983          	ld	s3,72(sp)
    8000a9ac:	00090513          	mv	a0,s2
    8000a9b0:	f55ff06f          	j	8000a904 <softfloat_mulAddF32+0x1c0>
    8000a9b4:	40d2551b          	sraw	a0,tp,0xd
    8000a9b8:	ffe50513          	add	a0,a0,-2 # 7fbffffe <_ftext-0x400002>
    8000a9bc:	00153513          	seqz	a0,a0
    8000a9c0:	04813983          	ld	s3,72(sp)
    8000a9c4:	01f5151b          	sllw	a0,a0,0x1f
    8000a9c8:	f3dff06f          	j	8000a904 <softfloat_mulAddF32+0x1c0>
    8000a9cc:	f817091b          	addw	s2,a4,-127 # 7f7fff81 <_ftext-0x80007f>
    8000a9d0:	001b1b13          	sll	s6,s6,0x1
    8000a9d4:	e6dff06f          	j	8000a840 <softfloat_mulAddF32+0xfc>
    8000a9d8:	04040c63          	beqz	s0,8000aa30 <softfloat_mulAddF32+0x2ec>
    8000a9dc:	00040513          	mv	a0,s0
    8000a9e0:	604000ef          	jal	8000afe4 <softfloat_normSubnormalF32Sig>
    8000a9e4:	00050b9b          	sext.w	s7,a0
    8000a9e8:	42055413          	sra	s0,a0,0x20
    8000a9ec:	e5dff06f          	j	8000a848 <softfloat_mulAddF32+0x104>
    8000a9f0:	00040513          	mv	a0,s0
    8000a9f4:	305000ef          	jal	8000b4f8 <softfloat_shiftRightJam64>
    8000a9f8:	40ab09b3          	sub	s3,s6,a0
    8000a9fc:	e8dff06f          	j	8000a888 <softfloat_mulAddF32+0x144>
    8000aa00:	06b05c63          	blez	a1,8000aa78 <softfloat_mulAddF32+0x334>
    8000aa04:	02041513          	sll	a0,s0,0x20
    8000aa08:	2f1000ef          	jal	8000b4f8 <softfloat_shiftRightJam64>
    8000aa0c:	02000593          	li	a1,32
    8000aa10:	01650533          	add	a0,a0,s6
    8000aa14:	511000ef          	jal	8000b724 <softfloat_shortShiftRightJam64>
    8000aa18:	0005061b          	sext.w	a2,a0
    8000aa1c:	400007b7          	lui	a5,0x40000
    8000aa20:	e8f674e3          	bgeu	a2,a5,8000a8a8 <softfloat_mulAddF32+0x164>
    8000aa24:	0016161b          	sllw	a2,a2,0x1
    8000aa28:	fff9091b          	addw	s2,s2,-1 # 1fffffff <_ftext-0x60000001>
    8000aa2c:	e7dff06f          	j	8000a8a8 <softfloat_mulAddF32+0x164>
    8000aa30:	01f00593          	li	a1,31
    8000aa34:	000b0513          	mv	a0,s6
    8000aa38:	4ed000ef          	jal	8000b724 <softfloat_shortShiftRightJam64>
    8000aa3c:	fff9091b          	addw	s2,s2,-1
    8000aa40:	0005061b          	sext.w	a2,a0
    8000aa44:	e65ff06f          	j	8000a8a8 <softfloat_mulAddF32+0x164>
    8000aa48:	412b85bb          	subw	a1,s7,s2
    8000aa4c:	000b0513          	mv	a0,s6
    8000aa50:	2a9000ef          	jal	8000b4f8 <softfloat_shiftRightJam64>
    8000aa54:	40a409b3          	sub	s3,s0,a0
    8000aa58:	000b8913          	mv	s2,s7
    8000aa5c:	000a8c13          	mv	s8,s5
    8000aa60:	e29ff06f          	j	8000a888 <softfloat_mulAddF32+0x144>
    8000aa64:	40a005bb          	negw	a1,a0
    8000aa68:	00098513          	mv	a0,s3
    8000aa6c:	4b9000ef          	jal	8000b724 <softfloat_shortShiftRightJam64>
    8000aa70:	0005061b          	sext.w	a2,a0
    8000aa74:	e35ff06f          	j	8000a8a8 <softfloat_mulAddF32+0x164>
    8000aa78:	02000593          	li	a1,32
    8000aa7c:	40e585bb          	subw	a1,a1,a4
    8000aa80:	000b0513          	mv	a0,s6
    8000aa84:	275000ef          	jal	8000b4f8 <softfloat_shiftRightJam64>
    8000aa88:	0085063b          	addw	a2,a0,s0
    8000aa8c:	000b8913          	mv	s2,s7
    8000aa90:	f8dff06f          	j	8000aa1c <softfloat_mulAddF32+0x2d8>

000000008000aa94 <softfloat_mulAddF64>:
    8000aa94:	f6010113          	add	sp,sp,-160
    8000aa98:	fff68713          	add	a4,a3,-1
    8000aa9c:	07313c23          	sd	s3,120(sp)
    8000aaa0:	ffe68693          	add	a3,a3,-2
    8000aaa4:	05713c23          	sd	s7,88(sp)
    8000aaa8:	03455993          	srl	s3,a0,0x34
    8000aaac:	00b54bb3          	xor	s7,a0,a1
    8000aab0:	fff00793          	li	a5,-1
    8000aab4:	00c7d793          	srl	a5,a5,0xc
    8000aab8:	03f65813          	srl	a6,a2,0x3f
    8000aabc:	08813823          	sd	s0,144(sp)
    8000aac0:	08913423          	sd	s1,136(sp)
    8000aac4:	0016b413          	seqz	s0,a3
    8000aac8:	09213023          	sd	s2,128(sp)
    8000aacc:	07413823          	sd	s4,112(sp)
    8000aad0:	00060913          	mv	s2,a2
    8000aad4:	07513423          	sd	s5,104(sp)
    8000aad8:	07613023          	sd	s6,96(sp)
    8000aadc:	05813823          	sd	s8,80(sp)
    8000aae0:	05913423          	sd	s9,72(sp)
    8000aae4:	05a13023          	sd	s10,64(sp)
    8000aae8:	0345da13          	srl	s4,a1,0x34
    8000aaec:	00173713          	seqz	a4,a4
    8000aaf0:	03465613          	srl	a2,a2,0x34
    8000aaf4:	03fbdb93          	srl	s7,s7,0x3f
    8000aaf8:	08113c23          	sd	ra,152(sp)
    8000aafc:	7ff9f993          	and	s3,s3,2047
    8000ab00:	7ff00693          	li	a3,2047
    8000ab04:	00f57ab3          	and	s5,a0,a5
    8000ab08:	7ffa7a13          	and	s4,s4,2047
    8000ab0c:	00f5fb33          	and	s6,a1,a5
    8000ab10:	01074c33          	xor	s8,a4,a6
    8000ab14:	7ff67c93          	and	s9,a2,2047
    8000ab18:	00f974b3          	and	s1,s2,a5
    8000ab1c:	008bcd33          	xor	s10,s7,s0
    8000ab20:	0cd98e63          	beq	s3,a3,8000abfc <softfloat_mulAddF64+0x168>
    8000ab24:	08da0663          	beq	s4,a3,8000abb0 <softfloat_mulAddF64+0x11c>
    8000ab28:	12dc8263          	beq	s9,a3,8000ac4c <softfloat_mulAddF64+0x1b8>
    8000ab2c:	00099c63          	bnez	s3,8000ab44 <softfloat_mulAddF64+0xb0>
    8000ab30:	120a8463          	beqz	s5,8000ac58 <softfloat_mulAddF64+0x1c4>
    8000ab34:	000a8513          	mv	a0,s5
    8000ab38:	4f0000ef          	jal	8000b028 <softfloat_normSubnormalF64Sig>
    8000ab3c:	0005099b          	sext.w	s3,a0
    8000ab40:	00058a93          	mv	s5,a1
    8000ab44:	100a1063          	bnez	s4,8000ac44 <softfloat_mulAddF64+0x1b0>
    8000ab48:	100b0863          	beqz	s6,8000ac58 <softfloat_mulAddF64+0x1c4>
    8000ab4c:	000b0513          	mv	a0,s6
    8000ab50:	03b13c23          	sd	s11,56(sp)
    8000ab54:	4d4000ef          	jal	8000b028 <softfloat_normSubnormalF64Sig>
    8000ab58:	00050a1b          	sext.w	s4,a0
    8000ab5c:	00058b13          	mv	s6,a1
    8000ab60:	fff00713          	li	a4,-1
    8000ab64:	00100d93          	li	s11,1
    8000ab68:	03f71593          	sll	a1,a4,0x3f
    8000ab6c:	00aa9513          	sll	a0,s5,0xa
    8000ab70:	00bb1b13          	sll	s6,s6,0xb
    8000ab74:	03ed9d93          	sll	s11,s11,0x3e
    8000ab78:	01010613          	add	a2,sp,16
    8000ab7c:	00bb65b3          	or	a1,s6,a1
    8000ab80:	01b56533          	or	a0,a0,s11
    8000ab84:	b55ff0ef          	jal	8000a6d8 <softfloat_mul64To128M>
    8000ab88:	01813903          	ld	s2,24(sp)
    8000ab8c:	014989bb          	addw	s3,s3,s4
    8000ab90:	fff00713          	li	a4,-1
    8000ab94:	00191793          	sll	a5,s2,0x1
    8000ab98:	0e07d663          	bgez	a5,8000ac84 <softfloat_mulAddF64+0x1f0>
    8000ab9c:	c0298a1b          	addw	s4,s3,-1022
    8000aba0:	180c9a63          	bnez	s9,8000ad34 <softfloat_mulAddF64+0x2a0>
    8000aba4:	32049a63          	bnez	s1,8000aed8 <softfloat_mulAddF64+0x444>
    8000aba8:	c0198a1b          	addw	s4,s3,-1023
    8000abac:	0ec0006f          	j	8000ac98 <softfloat_mulAddF64+0x204>
    8000abb0:	0159e9b3          	or	s3,s3,s5
    8000abb4:	040b0a63          	beqz	s6,8000ac08 <softfloat_mulAddF64+0x174>
    8000abb8:	12c010ef          	jal	8000bce4 <softfloat_propagateNaNF64UI>
    8000abbc:	00090593          	mv	a1,s2
    8000abc0:	124010ef          	jal	8000bce4 <softfloat_propagateNaNF64UI>
    8000abc4:	09813083          	ld	ra,152(sp)
    8000abc8:	09013403          	ld	s0,144(sp)
    8000abcc:	08813483          	ld	s1,136(sp)
    8000abd0:	08013903          	ld	s2,128(sp)
    8000abd4:	07813983          	ld	s3,120(sp)
    8000abd8:	07013a03          	ld	s4,112(sp)
    8000abdc:	06813a83          	ld	s5,104(sp)
    8000abe0:	06013b03          	ld	s6,96(sp)
    8000abe4:	05813b83          	ld	s7,88(sp)
    8000abe8:	05013c03          	ld	s8,80(sp)
    8000abec:	04813c83          	ld	s9,72(sp)
    8000abf0:	04013d03          	ld	s10,64(sp)
    8000abf4:	0a010113          	add	sp,sp,160
    8000abf8:	00008067          	ret
    8000abfc:	fa0a9ee3          	bnez	s5,8000abb8 <softfloat_mulAddF64+0x124>
    8000ac00:	033a0e63          	beq	s4,s3,8000ac3c <softfloat_mulAddF64+0x1a8>
    8000ac04:	016a69b3          	or	s3,s4,s6
    8000ac08:	02098263          	beqz	s3,8000ac2c <softfloat_mulAddF64+0x198>
    8000ac0c:	7ff00793          	li	a5,2047
    8000ac10:	03fd1513          	sll	a0,s10,0x3f
    8000ac14:	03479793          	sll	a5,a5,0x34
    8000ac18:	7ff00713          	li	a4,2047
    8000ac1c:	00f50533          	add	a0,a0,a5
    8000ac20:	faec92e3          	bne	s9,a4,8000abc4 <softfloat_mulAddF64+0x130>
    8000ac24:	f8049ce3          	bnez	s1,8000abbc <softfloat_mulAddF64+0x128>
    8000ac28:	f9ac0ee3          	beq	s8,s10,8000abc4 <softfloat_mulAddF64+0x130>
    8000ac2c:	01026213          	or	tp,tp,16
    8000ac30:	00fff537          	lui	a0,0xfff
    8000ac34:	02751513          	sll	a0,a0,0x27
    8000ac38:	f85ff06f          	j	8000abbc <softfloat_mulAddF64+0x128>
    8000ac3c:	f60b1ee3          	bnez	s6,8000abb8 <softfloat_mulAddF64+0x124>
    8000ac40:	fcdff06f          	j	8000ac0c <softfloat_mulAddF64+0x178>
    8000ac44:	03b13c23          	sd	s11,56(sp)
    8000ac48:	f19ff06f          	j	8000ab60 <softfloat_mulAddF64+0xcc>
    8000ac4c:	00048c63          	beqz	s1,8000ac64 <softfloat_mulAddF64+0x1d0>
    8000ac50:	00000513          	li	a0,0
    8000ac54:	f69ff06f          	j	8000abbc <softfloat_mulAddF64+0x128>
    8000ac58:	009ce7b3          	or	a5,s9,s1
    8000ac5c:	00079463          	bnez	a5,8000ac64 <softfloat_mulAddF64+0x1d0>
    8000ac60:	01ac1863          	bne	s8,s10,8000ac70 <softfloat_mulAddF64+0x1dc>
    8000ac64:	00090513          	mv	a0,s2
    8000ac68:	f5dff06f          	j	8000abc4 <softfloat_mulAddF64+0x130>
    8000ac6c:	03813d83          	ld	s11,56(sp)
    8000ac70:	40d2551b          	sraw	a0,tp,0xd
    8000ac74:	ffe50513          	add	a0,a0,-2 # ffeffe <_ftext-0x7f001002>
    8000ac78:	00153513          	seqz	a0,a0
    8000ac7c:	03f51513          	sll	a0,a0,0x3f
    8000ac80:	f45ff06f          	j	8000abc4 <softfloat_mulAddF64+0x130>
    8000ac84:	c0198a1b          	addw	s4,s3,-1023
    8000ac88:	020c9e63          	bnez	s9,8000acc4 <softfloat_mulAddF64+0x230>
    8000ac8c:	1c049663          	bnez	s1,8000ae58 <softfloat_mulAddF64+0x3c4>
    8000ac90:	00191913          	sll	s2,s2,0x1
    8000ac94:	c0098a1b          	addw	s4,s3,-1024
    8000ac98:	01412783          	lw	a5,20(sp)
    8000ac9c:	01012703          	lw	a4,16(sp)
    8000aca0:	00e7e7b3          	or	a5,a5,a4
    8000aca4:	00078463          	beqz	a5,8000acac <softfloat_mulAddF64+0x218>
    8000aca8:	00196913          	or	s2,s2,1
    8000acac:	00090613          	mv	a2,s2
    8000acb0:	000a0593          	mv	a1,s4
    8000acb4:	000d0513          	mv	a0,s10
    8000acb8:	5dc000ef          	jal	8000b294 <softfloat_roundPackToF64>
    8000acbc:	03813d83          	ld	s11,56(sp)
    8000acc0:	f05ff06f          	j	8000abc4 <softfloat_mulAddF64+0x130>
    8000acc4:	00a49493          	sll	s1,s1,0xa
    8000acc8:	419a09bb          	subw	s3,s4,s9
    8000accc:	01b4e4b3          	or	s1,s1,s11
    8000acd0:	2409c663          	bltz	s3,8000af1c <softfloat_mulAddF64+0x488>
    8000acd4:	01010693          	add	a3,sp,16
    8000acd8:	00068613          	mv	a2,a3
    8000acdc:	00068593          	mv	a1,a3
    8000ace0:	00400513          	li	a0,4
    8000ace4:	064010ef          	jal	8000bd48 <softfloat_addM>
    8000ace8:	10099063          	bnez	s3,8000ade8 <softfloat_mulAddF64+0x354>
    8000acec:	01813903          	ld	s2,24(sp)
    8000acf0:	0dac0e63          	beq	s8,s10,8000adcc <softfloat_mulAddF64+0x338>
    8000acf4:	409907b3          	sub	a5,s2,s1
    8000acf8:	22991c63          	bne	s2,s1,8000af30 <softfloat_mulAddF64+0x49c>
    8000acfc:	01412783          	lw	a5,20(sp)
    8000ad00:	01012703          	lw	a4,16(sp)
    8000ad04:	00e7e7b3          	or	a5,a5,a4
    8000ad08:	f60782e3          	beqz	a5,8000ac6c <softfloat_mulAddF64+0x1d8>
    8000ad0c:	00013c23          	sd	zero,24(sp)
    8000ad10:	01013903          	ld	s2,16(sp)
    8000ad14:	04000413          	li	s0,64
    8000ad18:	00090513          	mv	a0,s2
    8000ad1c:	0d8010ef          	jal	8000bdf4 <softfloat_countLeadingZeros64>
    8000ad20:	008507bb          	addw	a5,a0,s0
    8000ad24:	fff7861b          	addw	a2,a5,-1 # 3fffffff <_ftext-0x40000001>
    8000ad28:	06061263          	bnez	a2,8000ad8c <softfloat_mulAddF64+0x2f8>
    8000ad2c:	fffa0a1b          	addw	s4,s4,-1 # 3ffff <_ftext-0x7ffc0001>
    8000ad30:	f69ff06f          	j	8000ac98 <softfloat_mulAddF64+0x204>
    8000ad34:	00a49493          	sll	s1,s1,0xa
    8000ad38:	419a09bb          	subw	s3,s4,s9
    8000ad3c:	01b4e4b3          	or	s1,s1,s11
    8000ad40:	fa09d4e3          	bgez	s3,8000ace8 <softfloat_mulAddF64+0x254>
    8000ad44:	21ac0e63          	beq	s8,s10,8000af60 <softfloat_mulAddF64+0x4cc>
    8000ad48:	00000593          	li	a1,0
    8000ad4c:	22e98263          	beq	s3,a4,8000af70 <softfloat_mulAddF64+0x4dc>
    8000ad50:	00090513          	mv	a0,s2
    8000ad54:	413585bb          	subw	a1,a1,s3
    8000ad58:	7a0000ef          	jal	8000b4f8 <softfloat_shiftRightJam64>
    8000ad5c:	01412783          	lw	a5,20(sp)
    8000ad60:	01012703          	lw	a4,16(sp)
    8000ad64:	40a48933          	sub	s2,s1,a0
    8000ad68:	00e7e7b3          	or	a5,a5,a4
    8000ad6c:	00078663          	beqz	a5,8000ad78 <softfloat_mulAddF64+0x2e4>
    8000ad70:	fff90913          	add	s2,s2,-1
    8000ad74:	00196913          	or	s2,s2,1
    8000ad78:	00191793          	sll	a5,s2,0x1
    8000ad7c:	1c07da63          	bgez	a5,8000af50 <softfloat_mulAddF64+0x4bc>
    8000ad80:	fffc8a1b          	addw	s4,s9,-1
    8000ad84:	000c0d13          	mv	s10,s8
    8000ad88:	f25ff06f          	j	8000acac <softfloat_mulAddF64+0x218>
    8000ad8c:	01010693          	add	a3,sp,16
    8000ad90:	40ca0a3b          	subw	s4,s4,a2
    8000ad94:	00068593          	mv	a1,a3
    8000ad98:	00400513          	li	a0,4
    8000ad9c:	664000ef          	jal	8000b400 <softfloat_shiftLeftM>
    8000ada0:	fffa0a1b          	addw	s4,s4,-1
    8000ada4:	01813903          	ld	s2,24(sp)
    8000ada8:	ef1ff06f          	j	8000ac98 <softfloat_mulAddF64+0x204>
    8000adac:	000c8a13          	mv	s4,s9
    8000adb0:	fff00593          	li	a1,-1
    8000adb4:	413585bb          	subw	a1,a1,s3
    8000adb8:	00058a63          	beqz	a1,8000adcc <softfloat_mulAddF64+0x338>
    8000adbc:	00090513          	mv	a0,s2
    8000adc0:	738000ef          	jal	8000b4f8 <softfloat_shiftRightJam64>
    8000adc4:	00050913          	mv	s2,a0
    8000adc8:	000c8a13          	mv	s4,s9
    8000adcc:	00990933          	add	s2,s2,s1
    8000add0:	f4095ee3          	bgez	s2,8000ad2c <softfloat_mulAddF64+0x298>
    8000add4:	00090513          	mv	a0,s2
    8000add8:	00100593          	li	a1,1
    8000addc:	149000ef          	jal	8000b724 <softfloat_shortShiftRightJam64>
    8000ade0:	00050913          	mv	s2,a0
    8000ade4:	eb5ff06f          	j	8000ac98 <softfloat_mulAddF64+0x204>
    8000ade8:	00100793          	li	a5,1
    8000adec:	02079793          	sll	a5,a5,0x20
    8000adf0:	0204d713          	srl	a4,s1,0x20
    8000adf4:	c0078793          	add	a5,a5,-1024
    8000adf8:	02071713          	sll	a4,a4,0x20
    8000adfc:	00f4f7b3          	and	a5,s1,a5
    8000ae00:	02010693          	add	a3,sp,32
    8000ae04:	00e7e7b3          	or	a5,a5,a4
    8000ae08:	00098613          	mv	a2,s3
    8000ae0c:	00068593          	mv	a1,a3
    8000ae10:	00400513          	li	a0,4
    8000ae14:	02f13423          	sd	a5,40(sp)
    8000ae18:	02013023          	sd	zero,32(sp)
    8000ae1c:	704000ef          	jal	8000b520 <softfloat_shiftRightJamM>
    8000ae20:	0fac0063          	beq	s8,s10,8000af00 <softfloat_mulAddF64+0x46c>
    8000ae24:	01010693          	add	a3,sp,16
    8000ae28:	02010613          	add	a2,sp,32
    8000ae2c:	00068593          	mv	a1,a3
    8000ae30:	00400513          	li	a0,4
    8000ae34:	191000ef          	jal	8000b7c4 <softfloat_subM>
    8000ae38:	00100793          	li	a5,1
    8000ae3c:	08f98663          	beq	s3,a5,8000aec8 <softfloat_mulAddF64+0x434>
    8000ae40:	01813903          	ld	s2,24(sp)
    8000ae44:	00191793          	sll	a5,s2,0x1
    8000ae48:	ee07c2e3          	bltz	a5,8000ad2c <softfloat_mulAddF64+0x298>
    8000ae4c:	00191913          	sll	s2,s2,0x1
    8000ae50:	ffea0a1b          	addw	s4,s4,-2
    8000ae54:	e45ff06f          	j	8000ac98 <softfloat_mulAddF64+0x204>
    8000ae58:	00048513          	mv	a0,s1
    8000ae5c:	1cc000ef          	jal	8000b028 <softfloat_normSubnormalF64Sig>
    8000ae60:	00a59493          	sll	s1,a1,0xa
    8000ae64:	40aa09bb          	subw	s3,s4,a0
    8000ae68:	00050c9b          	sext.w	s9,a0
    8000ae6c:	01b4e4b3          	or	s1,s1,s11
    8000ae70:	fff00593          	li	a1,-1
    8000ae74:	e609d0e3          	bgez	s3,8000acd4 <softfloat_mulAddF64+0x240>
    8000ae78:	0fac0863          	beq	s8,s10,8000af68 <softfloat_mulAddF64+0x4d4>
    8000ae7c:	fff00793          	li	a5,-1
    8000ae80:	ecf998e3          	bne	s3,a5,8000ad50 <softfloat_mulAddF64+0x2bc>
    8000ae84:	000c8a13          	mv	s4,s9
    8000ae88:	0e058463          	beqz	a1,8000af70 <softfloat_mulAddF64+0x4dc>
    8000ae8c:	00100793          	li	a5,1
    8000ae90:	02079793          	sll	a5,a5,0x20
    8000ae94:	0204d713          	srl	a4,s1,0x20
    8000ae98:	c0078793          	add	a5,a5,-1024
    8000ae9c:	02071713          	sll	a4,a4,0x20
    8000aea0:	01010693          	add	a3,sp,16
    8000aea4:	00f4f7b3          	and	a5,s1,a5
    8000aea8:	00e7e7b3          	or	a5,a5,a4
    8000aeac:	00068613          	mv	a2,a3
    8000aeb0:	02010593          	add	a1,sp,32
    8000aeb4:	00400513          	li	a0,4
    8000aeb8:	02f13423          	sd	a5,40(sp)
    8000aebc:	02013023          	sd	zero,32(sp)
    8000aec0:	000c0d13          	mv	s10,s8
    8000aec4:	101000ef          	jal	8000b7c4 <softfloat_subM>
    8000aec8:	01813903          	ld	s2,24(sp)
    8000aecc:	00000413          	li	s0,0
    8000aed0:	e40914e3          	bnez	s2,8000ad18 <softfloat_mulAddF64+0x284>
    8000aed4:	e3dff06f          	j	8000ad10 <softfloat_mulAddF64+0x27c>
    8000aed8:	00048513          	mv	a0,s1
    8000aedc:	14c000ef          	jal	8000b028 <softfloat_normSubnormalF64Sig>
    8000aee0:	00a59493          	sll	s1,a1,0xa
    8000aee4:	40aa09bb          	subw	s3,s4,a0
    8000aee8:	01b4e4b3          	or	s1,s1,s11
    8000aeec:	0005051b          	sext.w	a0,a0
    8000aef0:	de09dce3          	bgez	s3,8000ace8 <softfloat_mulAddF64+0x254>
    8000aef4:	00000593          	li	a1,0
    8000aef8:	00050c93          	mv	s9,a0
    8000aefc:	f7dff06f          	j	8000ae78 <softfloat_mulAddF64+0x3e4>
    8000af00:	01010693          	add	a3,sp,16
    8000af04:	02010613          	add	a2,sp,32
    8000af08:	00068593          	mv	a1,a3
    8000af0c:	00400513          	li	a0,4
    8000af10:	639000ef          	jal	8000bd48 <softfloat_addM>
    8000af14:	01813903          	ld	s2,24(sp)
    8000af18:	eb9ff06f          	j	8000add0 <softfloat_mulAddF64+0x33c>
    8000af1c:	e9ac08e3          	beq	s8,s10,8000adac <softfloat_mulAddF64+0x318>
    8000af20:	fff00593          	li	a1,-1
    8000af24:	000c8a13          	mv	s4,s9
    8000af28:	e2e994e3          	bne	s3,a4,8000ad50 <softfloat_mulAddF64+0x2bc>
    8000af2c:	f61ff06f          	j	8000ae8c <softfloat_mulAddF64+0x3f8>
    8000af30:	00f13c23          	sd	a5,24(sp)
    8000af34:	f807dae3          	bgez	a5,8000aec8 <softfloat_mulAddF64+0x434>
    8000af38:	408b8d33          	sub	s10,s7,s0
    8000af3c:	01010593          	add	a1,sp,16
    8000af40:	00400513          	li	a0,4
    8000af44:	001d3d13          	seqz	s10,s10
    8000af48:	044000ef          	jal	8000af8c <softfloat_negXM>
    8000af4c:	f7dff06f          	j	8000aec8 <softfloat_mulAddF64+0x434>
    8000af50:	00191913          	sll	s2,s2,0x1
    8000af54:	ffec8a1b          	addw	s4,s9,-2
    8000af58:	000c0d13          	mv	s10,s8
    8000af5c:	d51ff06f          	j	8000acac <softfloat_mulAddF64+0x218>
    8000af60:	414c85bb          	subw	a1,s9,s4
    8000af64:	e59ff06f          	j	8000adbc <softfloat_mulAddF64+0x328>
    8000af68:	000c8a13          	mv	s4,s9
    8000af6c:	e49ff06f          	j	8000adb4 <softfloat_mulAddF64+0x320>
    8000af70:	01010693          	add	a3,sp,16
    8000af74:	00100613          	li	a2,1
    8000af78:	00068593          	mv	a1,a3
    8000af7c:	00400513          	li	a0,4
    8000af80:	738000ef          	jal	8000b6b8 <softfloat_shortShiftRightM>
    8000af84:	000c8a13          	mv	s4,s9
    8000af88:	f05ff06f          	j	8000ae8c <softfloat_mulAddF64+0x3f8>

000000008000af8c <softfloat_negXM>:
    8000af8c:	0005a703          	lw	a4,0(a1)
    8000af90:	00100793          	li	a5,1
    8000af94:	40e0073b          	negw	a4,a4
    8000af98:	00e5a023          	sw	a4,0(a1)
    8000af9c:	04f50263          	beq	a0,a5,8000afe0 <softfloat_negXM+0x54>
    8000afa0:	ffe5061b          	addw	a2,a0,-2
    8000afa4:	02061793          	sll	a5,a2,0x20
    8000afa8:	01e7d613          	srl	a2,a5,0x1e
    8000afac:	00858793          	add	a5,a1,8
    8000afb0:	00f60633          	add	a2,a2,a5
    8000afb4:	00458593          	add	a1,a1,4
    8000afb8:	00100693          	li	a3,1
    8000afbc:	0005a783          	lw	a5,0(a1)
    8000afc0:	00173713          	seqz	a4,a4
    8000afc4:	40e00733          	neg	a4,a4
    8000afc8:	00e6f6b3          	and	a3,a3,a4
    8000afcc:	40f687bb          	subw	a5,a3,a5
    8000afd0:	fff7871b          	addw	a4,a5,-1
    8000afd4:	00e5a023          	sw	a4,0(a1)
    8000afd8:	00458593          	add	a1,a1,4
    8000afdc:	feb610e3          	bne	a2,a1,8000afbc <softfloat_negXM+0x30>
    8000afe0:	00008067          	ret

000000008000afe4 <softfloat_normSubnormalF32Sig>:
    8000afe4:	fe010113          	add	sp,sp,-32
    8000afe8:	00813823          	sd	s0,16(sp)
    8000afec:	00113c23          	sd	ra,24(sp)
    8000aff0:	00050413          	mv	s0,a0
    8000aff4:	5c1000ef          	jal	8000bdb4 <softfloat_countLeadingZeros32>
    8000aff8:	ff85079b          	addw	a5,a0,-8
    8000affc:	00100513          	li	a0,1
    8000b000:	40f5053b          	subw	a0,a0,a5
    8000b004:	00f4143b          	sllw	s0,s0,a5
    8000b008:	02051513          	sll	a0,a0,0x20
    8000b00c:	02041413          	sll	s0,s0,0x20
    8000b010:	02055513          	srl	a0,a0,0x20
    8000b014:	01813083          	ld	ra,24(sp)
    8000b018:	00856533          	or	a0,a0,s0
    8000b01c:	01013403          	ld	s0,16(sp)
    8000b020:	02010113          	add	sp,sp,32
    8000b024:	00008067          	ret

000000008000b028 <softfloat_normSubnormalF64Sig>:
    8000b028:	fe010113          	add	sp,sp,-32
    8000b02c:	00813823          	sd	s0,16(sp)
    8000b030:	00113c23          	sd	ra,24(sp)
    8000b034:	00050413          	mv	s0,a0
    8000b038:	5bd000ef          	jal	8000bdf4 <softfloat_countLeadingZeros64>
    8000b03c:	ff55059b          	addw	a1,a0,-11
    8000b040:	00100713          	li	a4,1
    8000b044:	01813083          	ld	ra,24(sp)
    8000b048:	40b7073b          	subw	a4,a4,a1
    8000b04c:	00b415b3          	sll	a1,s0,a1
    8000b050:	01013403          	ld	s0,16(sp)
    8000b054:	00e12023          	sw	a4,0(sp)
    8000b058:	00013503          	ld	a0,0(sp)
    8000b05c:	02010113          	add	sp,sp,32
    8000b060:	00008067          	ret

000000008000b064 <softfloat_roundMToUI64>:
    8000b064:	0085e783          	lwu	a5,8(a1)
    8000b068:	0045e883          	lwu	a7,4(a1)
    8000b06c:	00400813          	li	a6,4
    8000b070:	02079793          	sll	a5,a5,0x20
    8000b074:	00050713          	mv	a4,a0
    8000b078:	0005a583          	lw	a1,0(a1)
    8000b07c:	0117e533          	or	a0,a5,a7
    8000b080:	05060263          	beq	a2,a6,8000b0c4 <softfloat_roundMToUI64+0x60>
    8000b084:	00061c63          	bnez	a2,8000b09c <softfloat_roundMToUI64+0x38>
    8000b088:	0605cc63          	bltz	a1,8000b100 <softfloat_roundMToUI64+0x9c>
    8000b08c:	00070463          	beqz	a4,8000b094 <softfloat_roundMToUI64+0x30>
    8000b090:	02051463          	bnez	a0,8000b0b8 <softfloat_roundMToUI64+0x54>
    8000b094:	04059063          	bnez	a1,8000b0d4 <softfloat_roundMToUI64+0x70>
    8000b098:	00008067          	ret
    8000b09c:	04070263          	beqz	a4,8000b0e0 <softfloat_roundMToUI64+0x7c>
    8000b0a0:	02059793          	sll	a5,a1,0x20
    8000b0a4:	0207d793          	srl	a5,a5,0x20
    8000b0a8:	00a7e7b3          	or	a5,a5,a0
    8000b0ac:	08078263          	beqz	a5,8000b130 <softfloat_roundMToUI64+0xcc>
    8000b0b0:	00200793          	li	a5,2
    8000b0b4:	fcf61ee3          	bne	a2,a5,8000b090 <softfloat_roundMToUI64+0x2c>
    8000b0b8:	01026213          	or	tp,tp,16
    8000b0bc:	00000513          	li	a0,0
    8000b0c0:	00008067          	ret
    8000b0c4:	fc05d4e3          	bgez	a1,8000b08c <softfloat_roundMToUI64+0x28>
    8000b0c8:	00150513          	add	a0,a0,1
    8000b0cc:	04050c63          	beqz	a0,8000b124 <softfloat_roundMToUI64+0xc0>
    8000b0d0:	fe0714e3          	bnez	a4,8000b0b8 <softfloat_roundMToUI64+0x54>
    8000b0d4:	fc0682e3          	beqz	a3,8000b098 <softfloat_roundMToUI64+0x34>
    8000b0d8:	00126213          	or	tp,tp,1
    8000b0dc:	00008067          	ret
    8000b0e0:	00300793          	li	a5,3
    8000b0e4:	faf618e3          	bne	a2,a5,8000b094 <softfloat_roundMToUI64+0x30>
    8000b0e8:	fa0588e3          	beqz	a1,8000b098 <softfloat_roundMToUI64+0x34>
    8000b0ec:	00150513          	add	a0,a0,1
    8000b0f0:	fe0512e3          	bnez	a0,8000b0d4 <softfloat_roundMToUI64+0x70>
    8000b0f4:	01026213          	or	tp,tp,16
    8000b0f8:	fff00513          	li	a0,-1
    8000b0fc:	00008067          	ret
    8000b100:	00150513          	add	a0,a0,1
    8000b104:	02050063          	beqz	a0,8000b124 <softfloat_roundMToUI64+0xc0>
    8000b108:	800007b7          	lui	a5,0x80000
    8000b10c:	fcf592e3          	bne	a1,a5,8000b0d0 <softfloat_roundMToUI64+0x6c>
    8000b110:	ffe57513          	and	a0,a0,-2
    8000b114:	fc0700e3          	beqz	a4,8000b0d4 <softfloat_roundMToUI64+0x70>
    8000b118:	fa0510e3          	bnez	a0,8000b0b8 <softfloat_roundMToUI64+0x54>
    8000b11c:	f6068ee3          	beqz	a3,8000b098 <softfloat_roundMToUI64+0x34>
    8000b120:	fb9ff06f          	j	8000b0d8 <softfloat_roundMToUI64+0x74>
    8000b124:	01026213          	or	tp,tp,16
    8000b128:	fff70513          	add	a0,a4,-1
    8000b12c:	00008067          	ret
    8000b130:	00000513          	li	a0,0
    8000b134:	00008067          	ret

000000008000b138 <softfloat_roundPackToF32>:
    8000b138:	fe010113          	add	sp,sp,-32
    8000b13c:	00913423          	sd	s1,8(sp)
    8000b140:	40d2549b          	sraw	s1,tp,0xd
    8000b144:	00813823          	sd	s0,16(sp)
    8000b148:	01213023          	sd	s2,0(sp)
    8000b14c:	00113c23          	sd	ra,24(sp)
    8000b150:	ffb4f793          	and	a5,s1,-5
    8000b154:	0005041b          	sext.w	s0,a0
    8000b158:	04000913          	li	s2,64
    8000b15c:	00078a63          	beqz	a5,8000b170 <softfloat_roundPackToF32+0x38>
    8000b160:	00153513          	seqz	a0,a0
    8000b164:	0025051b          	addw	a0,a0,2
    8000b168:	00000913          	li	s2,0
    8000b16c:	0e950663          	beq	a0,s1,8000b258 <softfloat_roundPackToF32+0x120>
    8000b170:	0fc00713          	li	a4,252
    8000b174:	07f67793          	and	a5,a2,127
    8000b178:	04b77063          	bgeu	a4,a1,8000b1b8 <softfloat_roundPackToF32+0x80>
    8000b17c:	0805ce63          	bltz	a1,8000b218 <softfloat_roundPackToF32+0xe0>
    8000b180:	0fd00713          	li	a4,253
    8000b184:	0ce58463          	beq	a1,a4,8000b24c <softfloat_roundPackToF32+0x114>
    8000b188:	00526213          	or	tp,tp,5
    8000b18c:	01813083          	ld	ra,24(sp)
    8000b190:	01f4151b          	sllw	a0,s0,0x1f
    8000b194:	01013403          	ld	s0,16(sp)
    8000b198:	7f8007b7          	lui	a5,0x7f800
    8000b19c:	00193913          	seqz	s2,s2
    8000b1a0:	00f5053b          	addw	a0,a0,a5
    8000b1a4:	00813483          	ld	s1,8(sp)
    8000b1a8:	4125053b          	subw	a0,a0,s2
    8000b1ac:	00013903          	ld	s2,0(sp)
    8000b1b0:	02010113          	add	sp,sp,32
    8000b1b4:	00008067          	ret
    8000b1b8:	00c9063b          	addw	a2,s2,a2
    8000b1bc:	0076561b          	srlw	a2,a2,0x7
    8000b1c0:	02078263          	beqz	a5,8000b1e4 <softfloat_roundPackToF32+0xac>
    8000b1c4:	00126213          	or	tp,tp,1
    8000b1c8:	fc078793          	add	a5,a5,-64 # 7f7fffc0 <_ftext-0x800040>
    8000b1cc:	0014b493          	seqz	s1,s1
    8000b1d0:	0017b793          	seqz	a5,a5
    8000b1d4:	00f4f4b3          	and	s1,s1,a5
    8000b1d8:	fff4c493          	not	s1,s1
    8000b1dc:	00c4f633          	and	a2,s1,a2
    8000b1e0:	0006061b          	sext.w	a2,a2
    8000b1e4:	00000793          	li	a5,0
    8000b1e8:	02061463          	bnez	a2,8000b210 <softfloat_roundPackToF32+0xd8>
    8000b1ec:	01813083          	ld	ra,24(sp)
    8000b1f0:	01f4151b          	sllw	a0,s0,0x1f
    8000b1f4:	01013403          	ld	s0,16(sp)
    8000b1f8:	00c5053b          	addw	a0,a0,a2
    8000b1fc:	00813483          	ld	s1,8(sp)
    8000b200:	00013903          	ld	s2,0(sp)
    8000b204:	00f5053b          	addw	a0,a0,a5
    8000b208:	02010113          	add	sp,sp,32
    8000b20c:	00008067          	ret
    8000b210:	0175979b          	sllw	a5,a1,0x17
    8000b214:	fd9ff06f          	j	8000b1ec <softfloat_roundPackToF32+0xb4>
    8000b218:	fff00793          	li	a5,-1
    8000b21c:	04f58263          	beq	a1,a5,8000b260 <softfloat_roundPackToF32+0x128>
    8000b220:	40b005bb          	negw	a1,a1
    8000b224:	00060513          	mv	a0,a2
    8000b228:	2a4000ef          	jal	8000b4cc <softfloat_shiftRightJam32>
    8000b22c:	07f57793          	and	a5,a0,127
    8000b230:	0005051b          	sext.w	a0,a0
    8000b234:	04078863          	beqz	a5,8000b284 <softfloat_roundPackToF32+0x14c>
    8000b238:	00226213          	or	tp,tp,2
    8000b23c:	00a9093b          	addw	s2,s2,a0
    8000b240:	0079561b          	srlw	a2,s2,0x7
    8000b244:	00000593          	li	a1,0
    8000b248:	f7dff06f          	j	8000b1c4 <softfloat_roundPackToF32+0x8c>
    8000b24c:	00c9063b          	addw	a2,s2,a2
    8000b250:	f60656e3          	bgez	a2,8000b1bc <softfloat_roundPackToF32+0x84>
    8000b254:	f35ff06f          	j	8000b188 <softfloat_roundPackToF32+0x50>
    8000b258:	07f00913          	li	s2,127
    8000b25c:	f15ff06f          	j	8000b170 <softfloat_roundPackToF32+0x38>
    8000b260:	00c907bb          	addw	a5,s2,a2
    8000b264:	fa07dee3          	bgez	a5,8000b220 <softfloat_roundPackToF32+0xe8>
    8000b268:	00100593          	li	a1,1
    8000b26c:	00060513          	mv	a0,a2
    8000b270:	25c000ef          	jal	8000b4cc <softfloat_shiftRightJam32>
    8000b274:	07f57793          	and	a5,a0,127
    8000b278:	0125063b          	addw	a2,a0,s2
    8000b27c:	00000593          	li	a1,0
    8000b280:	f3dff06f          	j	8000b1bc <softfloat_roundPackToF32+0x84>
    8000b284:	00a9093b          	addw	s2,s2,a0
    8000b288:	0079561b          	srlw	a2,s2,0x7
    8000b28c:	00000593          	li	a1,0
    8000b290:	f55ff06f          	j	8000b1e4 <softfloat_roundPackToF32+0xac>

000000008000b294 <softfloat_roundPackToF64>:
    8000b294:	fe010113          	add	sp,sp,-32
    8000b298:	00913423          	sd	s1,8(sp)
    8000b29c:	40d2549b          	sraw	s1,tp,0xd
    8000b2a0:	00813823          	sd	s0,16(sp)
    8000b2a4:	00113c23          	sd	ra,24(sp)
    8000b2a8:	ffb4f793          	and	a5,s1,-5
    8000b2ac:	00050413          	mv	s0,a0
    8000b2b0:	20000693          	li	a3,512
    8000b2b4:	00078a63          	beqz	a5,8000b2c8 <softfloat_roundPackToF64+0x34>
    8000b2b8:	00153793          	seqz	a5,a0
    8000b2bc:	0027879b          	addw	a5,a5,2
    8000b2c0:	00000693          	li	a3,0
    8000b2c4:	0e978c63          	beq	a5,s1,8000b3bc <softfloat_roundPackToF64+0x128>
    8000b2c8:	03059713          	sll	a4,a1,0x30
    8000b2cc:	03075713          	srl	a4,a4,0x30
    8000b2d0:	7fc00513          	li	a0,2044
    8000b2d4:	3ff67793          	and	a5,a2,1023
    8000b2d8:	04e57063          	bgeu	a0,a4,8000b318 <softfloat_roundPackToF64+0x84>
    8000b2dc:	0805ca63          	bltz	a1,8000b370 <softfloat_roundPackToF64+0xdc>
    8000b2e0:	7fd00713          	li	a4,2045
    8000b2e4:	0ce58663          	beq	a1,a4,8000b3b0 <softfloat_roundPackToF64+0x11c>
    8000b2e8:	00526213          	or	tp,tp,5
    8000b2ec:	7ff00793          	li	a5,2047
    8000b2f0:	01813083          	ld	ra,24(sp)
    8000b2f4:	03f41513          	sll	a0,s0,0x3f
    8000b2f8:	01013403          	ld	s0,16(sp)
    8000b2fc:	03479793          	sll	a5,a5,0x34
    8000b300:	00f50533          	add	a0,a0,a5
    8000b304:	0016b693          	seqz	a3,a3
    8000b308:	00813483          	ld	s1,8(sp)
    8000b30c:	40d50533          	sub	a0,a0,a3
    8000b310:	02010113          	add	sp,sp,32
    8000b314:	00008067          	ret
    8000b318:	00c68633          	add	a2,a3,a2
    8000b31c:	00a65613          	srl	a2,a2,0xa
    8000b320:	02078063          	beqz	a5,8000b340 <softfloat_roundPackToF64+0xac>
    8000b324:	00126213          	or	tp,tp,1
    8000b328:	e0078793          	add	a5,a5,-512
    8000b32c:	0017b793          	seqz	a5,a5
    8000b330:	0014b493          	seqz	s1,s1
    8000b334:	00f4f4b3          	and	s1,s1,a5
    8000b338:	fff4c493          	not	s1,s1
    8000b33c:	00967633          	and	a2,a2,s1
    8000b340:	00000793          	li	a5,0
    8000b344:	02061263          	bnez	a2,8000b368 <softfloat_roundPackToF64+0xd4>
    8000b348:	01813083          	ld	ra,24(sp)
    8000b34c:	03f41513          	sll	a0,s0,0x3f
    8000b350:	01013403          	ld	s0,16(sp)
    8000b354:	00c50533          	add	a0,a0,a2
    8000b358:	00813483          	ld	s1,8(sp)
    8000b35c:	00f50533          	add	a0,a0,a5
    8000b360:	02010113          	add	sp,sp,32
    8000b364:	00008067          	ret
    8000b368:	03459793          	sll	a5,a1,0x34
    8000b36c:	fddff06f          	j	8000b348 <softfloat_roundPackToF64+0xb4>
    8000b370:	01213023          	sd	s2,0(sp)
    8000b374:	fff00793          	li	a5,-1
    8000b378:	02069913          	sll	s2,a3,0x20
    8000b37c:	02095913          	srl	s2,s2,0x20
    8000b380:	04f58263          	beq	a1,a5,8000b3c4 <softfloat_roundPackToF64+0x130>
    8000b384:	40b005bb          	negw	a1,a1
    8000b388:	00060513          	mv	a0,a2
    8000b38c:	16c000ef          	jal	8000b4f8 <softfloat_shiftRightJam64>
    8000b390:	3ff57793          	and	a5,a0,1023
    8000b394:	04078c63          	beqz	a5,8000b3ec <softfloat_roundPackToF64+0x158>
    8000b398:	00226213          	or	tp,tp,2
    8000b39c:	01250633          	add	a2,a0,s2
    8000b3a0:	00a65613          	srl	a2,a2,0xa
    8000b3a4:	00013903          	ld	s2,0(sp)
    8000b3a8:	00000593          	li	a1,0
    8000b3ac:	f79ff06f          	j	8000b324 <softfloat_roundPackToF64+0x90>
    8000b3b0:	00c68633          	add	a2,a3,a2
    8000b3b4:	f60654e3          	bgez	a2,8000b31c <softfloat_roundPackToF64+0x88>
    8000b3b8:	f31ff06f          	j	8000b2e8 <softfloat_roundPackToF64+0x54>
    8000b3bc:	3ff00693          	li	a3,1023
    8000b3c0:	f09ff06f          	j	8000b2c8 <softfloat_roundPackToF64+0x34>
    8000b3c4:	012607b3          	add	a5,a2,s2
    8000b3c8:	fa07dee3          	bgez	a5,8000b384 <softfloat_roundPackToF64+0xf0>
    8000b3cc:	00100593          	li	a1,1
    8000b3d0:	00060513          	mv	a0,a2
    8000b3d4:	124000ef          	jal	8000b4f8 <softfloat_shiftRightJam64>
    8000b3d8:	01250633          	add	a2,a0,s2
    8000b3dc:	3ff57793          	and	a5,a0,1023
    8000b3e0:	00013903          	ld	s2,0(sp)
    8000b3e4:	00000593          	li	a1,0
    8000b3e8:	f35ff06f          	j	8000b31c <softfloat_roundPackToF64+0x88>
    8000b3ec:	01250633          	add	a2,a0,s2
    8000b3f0:	00a65613          	srl	a2,a2,0xa
    8000b3f4:	00013903          	ld	s2,0(sp)
    8000b3f8:	00000593          	li	a1,0
    8000b3fc:	f45ff06f          	j	8000b340 <softfloat_roundPackToF64+0xac>

000000008000b400 <softfloat_shiftLeftM>:
    8000b400:	fe010113          	add	sp,sp,-32
    8000b404:	00813823          	sd	s0,16(sp)
    8000b408:	00913423          	sd	s1,8(sp)
    8000b40c:	00113c23          	sd	ra,24(sp)
    8000b410:	0056549b          	srlw	s1,a2,0x5
    8000b414:	00050793          	mv	a5,a0
    8000b418:	00068413          	mv	s0,a3
    8000b41c:	04a4fe63          	bgeu	s1,a0,8000b478 <softfloat_shiftLeftM+0x78>
    8000b420:	0056569b          	srlw	a3,a2,0x5
    8000b424:	40d5083b          	subw	a6,a0,a3
    8000b428:	01f67613          	and	a2,a2,31
    8000b42c:	0008051b          	sext.w	a0,a6
    8000b430:	06061a63          	bnez	a2,8000b4a4 <softfloat_shiftLeftM+0xa4>
    8000b434:	fff8069b          	addw	a3,a6,-1
    8000b438:	02069613          	sll	a2,a3,0x20
    8000b43c:	01e65693          	srl	a3,a2,0x1e
    8000b440:	fff7879b          	addw	a5,a5,-1
    8000b444:	00d58733          	add	a4,a1,a3
    8000b448:	02079693          	sll	a3,a5,0x20
    8000b44c:	01e6d793          	srl	a5,a3,0x1e
    8000b450:	02081693          	sll	a3,a6,0x20
    8000b454:	01e6d593          	srl	a1,a3,0x1e
    8000b458:	00f407b3          	add	a5,s0,a5
    8000b45c:	40b705b3          	sub	a1,a4,a1
    8000b460:	00072603          	lw	a2,0(a4)
    8000b464:	ffc70713          	add	a4,a4,-4
    8000b468:	ffc78793          	add	a5,a5,-4
    8000b46c:	00c7a223          	sw	a2,4(a5)
    8000b470:	feb718e3          	bne	a4,a1,8000b460 <softfloat_shiftLeftM+0x60>
    8000b474:	00048793          	mv	a5,s1
    8000b478:	fff7861b          	addw	a2,a5,-1
    8000b47c:	00040513          	mv	a0,s0
    8000b480:	01013403          	ld	s0,16(sp)
    8000b484:	01813083          	ld	ra,24(sp)
    8000b488:	00813483          	ld	s1,8(sp)
    8000b48c:	02061793          	sll	a5,a2,0x20
    8000b490:	01e7d613          	srl	a2,a5,0x1e
    8000b494:	00460613          	add	a2,a2,4
    8000b498:	00000593          	li	a1,0
    8000b49c:	02010113          	add	sp,sp,32
    8000b4a0:	6b10006f          	j	8000c350 <memset>
    8000b4a4:	02069693          	sll	a3,a3,0x20
    8000b4a8:	01e6d693          	srl	a3,a3,0x1e
    8000b4ac:	00d406b3          	add	a3,s0,a3
    8000b4b0:	1a4000ef          	jal	8000b654 <softfloat_shortShiftLeftM>
    8000b4b4:	fc0490e3          	bnez	s1,8000b474 <softfloat_shiftLeftM+0x74>
    8000b4b8:	01813083          	ld	ra,24(sp)
    8000b4bc:	01013403          	ld	s0,16(sp)
    8000b4c0:	00813483          	ld	s1,8(sp)
    8000b4c4:	02010113          	add	sp,sp,32
    8000b4c8:	00008067          	ret

000000008000b4cc <softfloat_shiftRightJam32>:
    8000b4cc:	01e00793          	li	a5,30
    8000b4d0:	02b7e063          	bltu	a5,a1,8000b4f0 <softfloat_shiftRightJam32+0x24>
    8000b4d4:	40b007bb          	negw	a5,a1
    8000b4d8:	00f517bb          	sllw	a5,a0,a5
    8000b4dc:	00f037b3          	snez	a5,a5
    8000b4e0:	00b5553b          	srlw	a0,a0,a1
    8000b4e4:	00a7e7b3          	or	a5,a5,a0
    8000b4e8:	0007851b          	sext.w	a0,a5
    8000b4ec:	00008067          	ret
    8000b4f0:	00a03533          	snez	a0,a0
    8000b4f4:	00008067          	ret

000000008000b4f8 <softfloat_shiftRightJam64>:
    8000b4f8:	03e00793          	li	a5,62
    8000b4fc:	00b7ee63          	bltu	a5,a1,8000b518 <softfloat_shiftRightJam64+0x20>
    8000b500:	40b007bb          	negw	a5,a1
    8000b504:	00f517b3          	sll	a5,a0,a5
    8000b508:	00f037b3          	snez	a5,a5
    8000b50c:	00b55533          	srl	a0,a0,a1
    8000b510:	00a7e533          	or	a0,a5,a0
    8000b514:	00008067          	ret
    8000b518:	00a03533          	snez	a0,a0
    8000b51c:	00008067          	ret

000000008000b520 <softfloat_shiftRightJamM>:
    8000b520:	fd010113          	add	sp,sp,-48
    8000b524:	02813023          	sd	s0,32(sp)
    8000b528:	01313423          	sd	s3,8(sp)
    8000b52c:	02113423          	sd	ra,40(sp)
    8000b530:	00913c23          	sd	s1,24(sp)
    8000b534:	0056541b          	srlw	s0,a2,0x5
    8000b538:	00050813          	mv	a6,a0
    8000b53c:	00068993          	mv	s3,a3
    8000b540:	0c040a63          	beqz	s0,8000b614 <softfloat_shiftRightJamM+0xf4>
    8000b544:	0056549b          	srlw	s1,a2,0x5
    8000b548:	0c856c63          	bltu	a0,s0,8000b620 <softfloat_shiftRightJamM+0x100>
    8000b54c:	fff4871b          	addw	a4,s1,-1
    8000b550:	02071793          	sll	a5,a4,0x20
    8000b554:	01e7d713          	srl	a4,a5,0x1e
    8000b558:	00470713          	add	a4,a4,4
    8000b55c:	00e58733          	add	a4,a1,a4
    8000b560:	00058793          	mv	a5,a1
    8000b564:	0080006f          	j	8000b56c <softfloat_shiftRightJamM+0x4c>
    8000b568:	00e78863          	beq	a5,a4,8000b578 <softfloat_shiftRightJamM+0x58>
    8000b56c:	0007a403          	lw	s0,0(a5)
    8000b570:	00478793          	add	a5,a5,4
    8000b574:	fe040ae3          	beqz	s0,8000b568 <softfloat_shiftRightJamM+0x48>
    8000b578:	00098513          	mv	a0,s3
    8000b57c:	0504fc63          	bgeu	s1,a6,8000b5d4 <softfloat_shiftRightJamM+0xb4>
    8000b580:	02049713          	sll	a4,s1,0x20
    8000b584:	01213823          	sd	s2,16(sp)
    8000b588:	01e75793          	srl	a5,a4,0x1e
    8000b58c:	4098093b          	subw	s2,a6,s1
    8000b590:	01f67613          	and	a2,a2,31
    8000b594:	00f585b3          	add	a1,a1,a5
    8000b598:	0009051b          	sext.w	a0,s2
    8000b59c:	08061663          	bnez	a2,8000b628 <softfloat_shiftRightJamM+0x108>
    8000b5a0:	02091513          	sll	a0,s2,0x20
    8000b5a4:	02055513          	srl	a0,a0,0x20
    8000b5a8:	00251693          	sll	a3,a0,0x2
    8000b5ac:	00d586b3          	add	a3,a1,a3
    8000b5b0:	00098793          	mv	a5,s3
    8000b5b4:	0005a703          	lw	a4,0(a1)
    8000b5b8:	00458593          	add	a1,a1,4
    8000b5bc:	00478793          	add	a5,a5,4
    8000b5c0:	fee7ae23          	sw	a4,-4(a5)
    8000b5c4:	fed598e3          	bne	a1,a3,8000b5b4 <softfloat_shiftRightJamM+0x94>
    8000b5c8:	01013903          	ld	s2,16(sp)
    8000b5cc:	00251513          	sll	a0,a0,0x2
    8000b5d0:	00a98533          	add	a0,s3,a0
    8000b5d4:	fff4861b          	addw	a2,s1,-1
    8000b5d8:	02061793          	sll	a5,a2,0x20
    8000b5dc:	01e7d613          	srl	a2,a5,0x1e
    8000b5e0:	00460613          	add	a2,a2,4
    8000b5e4:	00000593          	li	a1,0
    8000b5e8:	569000ef          	jal	8000c350 <memset>
    8000b5ec:	00040863          	beqz	s0,8000b5fc <softfloat_shiftRightJamM+0xdc>
    8000b5f0:	0009a783          	lw	a5,0(s3)
    8000b5f4:	0017e793          	or	a5,a5,1
    8000b5f8:	00f9a023          	sw	a5,0(s3)
    8000b5fc:	02813083          	ld	ra,40(sp)
    8000b600:	02013403          	ld	s0,32(sp)
    8000b604:	01813483          	ld	s1,24(sp)
    8000b608:	00813983          	ld	s3,8(sp)
    8000b60c:	03010113          	add	sp,sp,48
    8000b610:	00008067          	ret
    8000b614:	00000493          	li	s1,0
    8000b618:	00000513          	li	a0,0
    8000b61c:	f61ff06f          	j	8000b57c <softfloat_shiftRightJamM+0x5c>
    8000b620:	0005049b          	sext.w	s1,a0
    8000b624:	f29ff06f          	j	8000b54c <softfloat_shiftRightJamM+0x2c>
    8000b628:	00098693          	mv	a3,s3
    8000b62c:	118000ef          	jal	8000b744 <softfloat_shortShiftRightJamM>
    8000b630:	00048e63          	beqz	s1,8000b64c <softfloat_shiftRightJamM+0x12c>
    8000b634:	02091513          	sll	a0,s2,0x20
    8000b638:	02055513          	srl	a0,a0,0x20
    8000b63c:	00251513          	sll	a0,a0,0x2
    8000b640:	01013903          	ld	s2,16(sp)
    8000b644:	00a98533          	add	a0,s3,a0
    8000b648:	f8dff06f          	j	8000b5d4 <softfloat_shiftRightJamM+0xb4>
    8000b64c:	01013903          	ld	s2,16(sp)
    8000b650:	f9dff06f          	j	8000b5ec <softfloat_shiftRightJamM+0xcc>

000000008000b654 <softfloat_shortShiftLeftM>:
    8000b654:	fff5079b          	addw	a5,a0,-1
    8000b658:	02079713          	sll	a4,a5,0x20
    8000b65c:	01e75813          	srl	a6,a4,0x1e
    8000b660:	01058733          	add	a4,a1,a6
    8000b664:	00072703          	lw	a4,0(a4)
    8000b668:	40c00e3b          	negw	t3,a2
    8000b66c:	00c7173b          	sllw	a4,a4,a2
    8000b670:	04078063          	beqz	a5,8000b6b0 <softfloat_shortShiftLeftM+0x5c>
    8000b674:	ffe5079b          	addw	a5,a0,-2
    8000b678:	02079513          	sll	a0,a5,0x20
    8000b67c:	01e55793          	srl	a5,a0,0x1e
    8000b680:	01fe7e13          	and	t3,t3,31
    8000b684:	00f587b3          	add	a5,a1,a5
    8000b688:	01068533          	add	a0,a3,a6
    8000b68c:	0007a803          	lw	a6,0(a5)
    8000b690:	ffc50513          	add	a0,a0,-4
    8000b694:	00078893          	mv	a7,a5
    8000b698:	01c8533b          	srlw	t1,a6,t3
    8000b69c:	00676733          	or	a4,a4,t1
    8000b6a0:	00e52223          	sw	a4,4(a0)
    8000b6a4:	ffc78793          	add	a5,a5,-4
    8000b6a8:	00c8173b          	sllw	a4,a6,a2
    8000b6ac:	ff1590e3          	bne	a1,a7,8000b68c <softfloat_shortShiftLeftM+0x38>
    8000b6b0:	00e6a023          	sw	a4,0(a3)
    8000b6b4:	00008067          	ret

000000008000b6b8 <softfloat_shortShiftRightM>:
    8000b6b8:	0005a783          	lw	a5,0(a1)
    8000b6bc:	fff50e1b          	addw	t3,a0,-1
    8000b6c0:	000e071b          	sext.w	a4,t3
    8000b6c4:	40c0033b          	negw	t1,a2
    8000b6c8:	00c7d7bb          	srlw	a5,a5,a2
    8000b6cc:	04070863          	beqz	a4,8000b71c <softfloat_shortShiftRightM+0x64>
    8000b6d0:	ffe5081b          	addw	a6,a0,-2
    8000b6d4:	02081713          	sll	a4,a6,0x20
    8000b6d8:	01e75813          	srl	a6,a4,0x1e
    8000b6dc:	00858513          	add	a0,a1,8
    8000b6e0:	01f37313          	and	t1,t1,31
    8000b6e4:	00458593          	add	a1,a1,4
    8000b6e8:	00068713          	mv	a4,a3
    8000b6ec:	00a80833          	add	a6,a6,a0
    8000b6f0:	0005a503          	lw	a0,0(a1)
    8000b6f4:	00470713          	add	a4,a4,4
    8000b6f8:	00458593          	add	a1,a1,4
    8000b6fc:	006518bb          	sllw	a7,a0,t1
    8000b700:	0117e7b3          	or	a5,a5,a7
    8000b704:	fef72e23          	sw	a5,-4(a4)
    8000b708:	00c557bb          	srlw	a5,a0,a2
    8000b70c:	feb812e3          	bne	a6,a1,8000b6f0 <softfloat_shortShiftRightM+0x38>
    8000b710:	020e1713          	sll	a4,t3,0x20
    8000b714:	01e75e13          	srl	t3,a4,0x1e
    8000b718:	01c686b3          	add	a3,a3,t3
    8000b71c:	00f6a023          	sw	a5,0(a3)
    8000b720:	00008067          	ret

000000008000b724 <softfloat_shortShiftRightJam64>:
    8000b724:	fff00793          	li	a5,-1
    8000b728:	00b797b3          	sll	a5,a5,a1
    8000b72c:	fff7c793          	not	a5,a5
    8000b730:	00a7f7b3          	and	a5,a5,a0
    8000b734:	00f037b3          	snez	a5,a5
    8000b738:	00b55533          	srl	a0,a0,a1
    8000b73c:	00a7e533          	or	a0,a5,a0
    8000b740:	00008067          	ret

000000008000b744 <softfloat_shortShiftRightJamM>:
    8000b744:	0005a803          	lw	a6,0(a1)
    8000b748:	fff50e1b          	addw	t3,a0,-1
    8000b74c:	40c0033b          	negw	t1,a2
    8000b750:	00c8573b          	srlw	a4,a6,a2
    8000b754:	00c71ebb          	sllw	t4,a4,a2
    8000b758:	000e089b          	sext.w	a7,t3
    8000b75c:	0007079b          	sext.w	a5,a4
    8000b760:	010e8663          	beq	t4,a6,8000b76c <softfloat_shortShiftRightJamM+0x28>
    8000b764:	00176713          	or	a4,a4,1
    8000b768:	0007079b          	sext.w	a5,a4
    8000b76c:	04088863          	beqz	a7,8000b7bc <softfloat_shortShiftRightJamM+0x78>
    8000b770:	ffe5081b          	addw	a6,a0,-2
    8000b774:	02081713          	sll	a4,a6,0x20
    8000b778:	01e75813          	srl	a6,a4,0x1e
    8000b77c:	00858513          	add	a0,a1,8
    8000b780:	01f37313          	and	t1,t1,31
    8000b784:	00458593          	add	a1,a1,4
    8000b788:	00068713          	mv	a4,a3
    8000b78c:	00a80833          	add	a6,a6,a0
    8000b790:	0005a503          	lw	a0,0(a1)
    8000b794:	00470713          	add	a4,a4,4
    8000b798:	00458593          	add	a1,a1,4
    8000b79c:	006518bb          	sllw	a7,a0,t1
    8000b7a0:	0117e7b3          	or	a5,a5,a7
    8000b7a4:	fef72e23          	sw	a5,-4(a4)
    8000b7a8:	00c557bb          	srlw	a5,a0,a2
    8000b7ac:	feb812e3          	bne	a6,a1,8000b790 <softfloat_shortShiftRightJamM+0x4c>
    8000b7b0:	020e1713          	sll	a4,t3,0x20
    8000b7b4:	01e75e13          	srl	t3,a4,0x1e
    8000b7b8:	01c686b3          	add	a3,a3,t3
    8000b7bc:	00f6a023          	sw	a5,0(a3)
    8000b7c0:	00008067          	ret

000000008000b7c4 <softfloat_subM>:
    8000b7c4:	0005a803          	lw	a6,0(a1)
    8000b7c8:	00062703          	lw	a4,0(a2)
    8000b7cc:	40e807bb          	subw	a5,a6,a4
    8000b7d0:	00f6a023          	sw	a5,0(a3)
    8000b7d4:	00100793          	li	a5,1
    8000b7d8:	06f50263          	beq	a0,a5,8000b83c <softfloat_subM+0x78>
    8000b7dc:	ffe5089b          	addw	a7,a0,-2
    8000b7e0:	02089793          	sll	a5,a7,0x20
    8000b7e4:	01e7d893          	srl	a7,a5,0x1e
    8000b7e8:	00858793          	add	a5,a1,8
    8000b7ec:	00460613          	add	a2,a2,4
    8000b7f0:	00458593          	add	a1,a1,4
    8000b7f4:	00468693          	add	a3,a3,4
    8000b7f8:	00f888b3          	add	a7,a7,a5
    8000b7fc:	00000513          	li	a0,0
    8000b800:	02c0006f          	j	8000b82c <softfloat_subM+0x68>
    8000b804:	0017c513          	xor	a0,a5,1
    8000b808:	0005a803          	lw	a6,0(a1)
    8000b80c:	00062703          	lw	a4,0(a2)
    8000b810:	00458593          	add	a1,a1,4
    8000b814:	00460613          	add	a2,a2,4
    8000b818:	40e807bb          	subw	a5,a6,a4
    8000b81c:	40a787bb          	subw	a5,a5,a0
    8000b820:	00f6a023          	sw	a5,0(a3)
    8000b824:	00468693          	add	a3,a3,4
    8000b828:	00b88a63          	beq	a7,a1,8000b83c <softfloat_subM+0x78>
    8000b82c:	010737b3          	sltu	a5,a4,a6
    8000b830:	fc051ae3          	bnez	a0,8000b804 <softfloat_subM+0x40>
    8000b834:	00e83533          	sltu	a0,a6,a4
    8000b838:	fd1ff06f          	j	8000b808 <softfloat_subM+0x44>
    8000b83c:	00008067          	ret

000000008000b840 <softfloat_subMagsF32>:
    8000b840:	fd010113          	add	sp,sp,-48
    8000b844:	0175569b          	srlw	a3,a0,0x17
    8000b848:	0175d71b          	srlw	a4,a1,0x17
    8000b84c:	008007b7          	lui	a5,0x800
    8000b850:	fff78793          	add	a5,a5,-1 # 7fffff <_ftext-0x7f800001>
    8000b854:	0ff6f313          	zext.b	t1,a3
    8000b858:	01213823          	sd	s2,16(sp)
    8000b85c:	0ff77813          	zext.b	a6,a4
    8000b860:	02113423          	sd	ra,40(sp)
    8000b864:	00f576b3          	and	a3,a0,a5
    8000b868:	00f5f633          	and	a2,a1,a5
    8000b86c:	4103093b          	subw	s2,t1,a6
    8000b870:	09031263          	bne	t1,a6,8000b8f4 <softfloat_subMagsF32+0xb4>
    8000b874:	0ff00713          	li	a4,255
    8000b878:	12e30c63          	beq	t1,a4,8000b9b0 <softfloat_subMagsF32+0x170>
    8000b87c:	40c687bb          	subw	a5,a3,a2
    8000b880:	00913c23          	sd	s1,24(sp)
    8000b884:	00078693          	mv	a3,a5
    8000b888:	00078493          	mv	s1,a5
    8000b88c:	14078863          	beqz	a5,8000b9dc <softfloat_subMagsF32+0x19c>
    8000b890:	02813023          	sd	s0,32(sp)
    8000b894:	00030463          	beqz	t1,8000b89c <softfloat_subMagsF32+0x5c>
    8000b898:	fff3091b          	addw	s2,t1,-1
    8000b89c:	0005041b          	sext.w	s0,a0
    8000b8a0:	1807cc63          	bltz	a5,8000ba38 <softfloat_subMagsF32+0x1f8>
    8000b8a4:	01f4541b          	srlw	s0,s0,0x1f
    8000b8a8:	00078513          	mv	a0,a5
    8000b8ac:	508000ef          	jal	8000bdb4 <softfloat_countLeadingZeros32>
    8000b8b0:	ff85051b          	addw	a0,a0,-8
    8000b8b4:	40a9073b          	subw	a4,s2,a0
    8000b8b8:	02071693          	sll	a3,a4,0x20
    8000b8bc:	00000793          	li	a5,0
    8000b8c0:	0006c663          	bltz	a3,8000b8cc <softfloat_subMagsF32+0x8c>
    8000b8c4:	0177179b          	sllw	a5,a4,0x17
    8000b8c8:	00050913          	mv	s2,a0
    8000b8cc:	02813083          	ld	ra,40(sp)
    8000b8d0:	01f4151b          	sllw	a0,s0,0x1f
    8000b8d4:	02013403          	ld	s0,32(sp)
    8000b8d8:	012494bb          	sllw	s1,s1,s2
    8000b8dc:	00f5053b          	addw	a0,a0,a5
    8000b8e0:	01013903          	ld	s2,16(sp)
    8000b8e4:	0095053b          	addw	a0,a0,s1
    8000b8e8:	01813483          	ld	s1,24(sp)
    8000b8ec:	03010113          	add	sp,sp,48
    8000b8f0:	00008067          	ret
    8000b8f4:	0076969b          	sllw	a3,a3,0x7
    8000b8f8:	0076161b          	sllw	a2,a2,0x7
    8000b8fc:	02813023          	sd	s0,32(sp)
    8000b900:	00080713          	mv	a4,a6
    8000b904:	0005079b          	sext.w	a5,a0
    8000b908:	00068e9b          	sext.w	t4,a3
    8000b90c:	00060e1b          	sext.w	t3,a2
    8000b910:	06094263          	bltz	s2,8000b974 <softfloat_subMagsF32+0x134>
    8000b914:	0ff00813          	li	a6,255
    8000b918:	0f030463          	beq	t1,a6,8000ba00 <softfloat_subMagsF32+0x1c0>
    8000b91c:	400005b7          	lui	a1,0x40000
    8000b920:	00913c23          	sd	s1,24(sp)
    8000b924:	01313423          	sd	s3,8(sp)
    8000b928:	00b6e6b3          	or	a3,a3,a1
    8000b92c:	fff3049b          	addw	s1,t1,-1
    8000b930:	0006899b          	sext.w	s3,a3
    8000b934:	00070463          	beqz	a4,8000b93c <softfloat_subMagsF32+0xfc>
    8000b938:	40000e37          	lui	t3,0x40000
    8000b93c:	01f7d41b          	srlw	s0,a5,0x1f
    8000b940:	01c6053b          	addw	a0,a2,t3
    8000b944:	00090593          	mv	a1,s2
    8000b948:	b85ff0ef          	jal	8000b4cc <softfloat_shiftRightJam32>
    8000b94c:	40a9863b          	subw	a2,s3,a0
    8000b950:	00040513          	mv	a0,s0
    8000b954:	02013403          	ld	s0,32(sp)
    8000b958:	00813983          	ld	s3,8(sp)
    8000b95c:	02813083          	ld	ra,40(sp)
    8000b960:	01013903          	ld	s2,16(sp)
    8000b964:	00048593          	mv	a1,s1
    8000b968:	01813483          	ld	s1,24(sp)
    8000b96c:	03010113          	add	sp,sp,48
    8000b970:	4dc0006f          	j	8000be4c <softfloat_normRoundPackToF32>
    8000b974:	fff7c793          	not	a5,a5
    8000b978:	0ff00f13          	li	t5,255
    8000b97c:	01f7d41b          	srlw	s0,a5,0x1f
    8000b980:	0be80063          	beq	a6,t5,8000ba20 <softfloat_subMagsF32+0x1e0>
    8000b984:	400007b7          	lui	a5,0x40000
    8000b988:	00913c23          	sd	s1,24(sp)
    8000b98c:	01313423          	sd	s3,8(sp)
    8000b990:	00f66633          	or	a2,a2,a5
    8000b994:	fff8049b          	addw	s1,a6,-1
    8000b998:	0006099b          	sext.w	s3,a2
    8000b99c:	00030463          	beqz	t1,8000b9a4 <softfloat_subMagsF32+0x164>
    8000b9a0:	40000eb7          	lui	t4,0x40000
    8000b9a4:	01d6853b          	addw	a0,a3,t4
    8000b9a8:	4068093b          	subw	s2,a6,t1
    8000b9ac:	f99ff06f          	j	8000b944 <softfloat_subMagsF32+0x104>
    8000b9b0:	00050e13          	mv	t3,a0
    8000b9b4:	01c5ee33          	or	t3,a1,t3
    8000b9b8:	00fe7e33          	and	t3,t3,a5
    8000b9bc:	000e0e1b          	sext.w	t3,t3
    8000b9c0:	040e1463          	bnez	t3,8000ba08 <softfloat_subMagsF32+0x1c8>
    8000b9c4:	01026213          	or	tp,tp,16
    8000b9c8:	7fc00537          	lui	a0,0x7fc00
    8000b9cc:	02813083          	ld	ra,40(sp)
    8000b9d0:	01013903          	ld	s2,16(sp)
    8000b9d4:	03010113          	add	sp,sp,48
    8000b9d8:	00008067          	ret
    8000b9dc:	02813083          	ld	ra,40(sp)
    8000b9e0:	40d2551b          	sraw	a0,tp,0xd
    8000b9e4:	ffe50513          	add	a0,a0,-2 # 7fbffffe <_ftext-0x400002>
    8000b9e8:	00153513          	seqz	a0,a0
    8000b9ec:	01813483          	ld	s1,24(sp)
    8000b9f0:	01013903          	ld	s2,16(sp)
    8000b9f4:	01f5151b          	sllw	a0,a0,0x1f
    8000b9f8:	03010113          	add	sp,sp,48
    8000b9fc:	00008067          	ret
    8000ba00:	02013403          	ld	s0,32(sp)
    8000ba04:	fc0e84e3          	beqz	t4,8000b9cc <softfloat_subMagsF32+0x18c>
    8000ba08:	290000ef          	jal	8000bc98 <softfloat_propagateNaNF32UI>
    8000ba0c:	02813083          	ld	ra,40(sp)
    8000ba10:	01013903          	ld	s2,16(sp)
    8000ba14:	0005051b          	sext.w	a0,a0
    8000ba18:	03010113          	add	sp,sp,48
    8000ba1c:	00008067          	ret
    8000ba20:	020e1663          	bnez	t3,8000ba4c <softfloat_subMagsF32+0x20c>
    8000ba24:	01f4179b          	sllw	a5,s0,0x1f
    8000ba28:	7f800537          	lui	a0,0x7f800
    8000ba2c:	02013403          	ld	s0,32(sp)
    8000ba30:	00a7853b          	addw	a0,a5,a0
    8000ba34:	f99ff06f          	j	8000b9cc <softfloat_subMagsF32+0x18c>
    8000ba38:	fff44513          	not	a0,s0
    8000ba3c:	40d004bb          	negw	s1,a3
    8000ba40:	01f5541b          	srlw	s0,a0,0x1f
    8000ba44:	00048793          	mv	a5,s1
    8000ba48:	e61ff06f          	j	8000b8a8 <softfloat_subMagsF32+0x68>
    8000ba4c:	02013403          	ld	s0,32(sp)
    8000ba50:	fb9ff06f          	j	8000ba08 <softfloat_subMagsF32+0x1c8>

000000008000ba54 <softfloat_subMagsF64>:
    8000ba54:	fd010113          	add	sp,sp,-48
    8000ba58:	02813023          	sd	s0,32(sp)
    8000ba5c:	00913c23          	sd	s1,24(sp)
    8000ba60:	03455413          	srl	s0,a0,0x34
    8000ba64:	0345d493          	srl	s1,a1,0x34
    8000ba68:	fff00793          	li	a5,-1
    8000ba6c:	00c7d793          	srl	a5,a5,0xc
    8000ba70:	01313423          	sd	s3,8(sp)
    8000ba74:	7ff47413          	and	s0,s0,2047
    8000ba78:	7ff4f493          	and	s1,s1,2047
    8000ba7c:	02113423          	sd	ra,40(sp)
    8000ba80:	00060993          	mv	s3,a2
    8000ba84:	00f57733          	and	a4,a0,a5
    8000ba88:	00f5f6b3          	and	a3,a1,a5
    8000ba8c:	4094063b          	subw	a2,s0,s1
    8000ba90:	06941863          	bne	s0,s1,8000bb00 <softfloat_subMagsF64+0xac>
    8000ba94:	7ff00613          	li	a2,2047
    8000ba98:	10c40a63          	beq	s0,a2,8000bbac <softfloat_subMagsF64+0x158>
    8000ba9c:	40d704b3          	sub	s1,a4,a3
    8000baa0:	12d70e63          	beq	a4,a3,8000bbdc <softfloat_subMagsF64+0x188>
    8000baa4:	00040463          	beqz	s0,8000baac <softfloat_subMagsF64+0x58>
    8000baa8:	fff4041b          	addw	s0,s0,-1
    8000baac:	0004d663          	bgez	s1,8000bab8 <softfloat_subMagsF64+0x64>
    8000bab0:	0019c993          	xor	s3,s3,1
    8000bab4:	409004b3          	neg	s1,s1
    8000bab8:	00048513          	mv	a0,s1
    8000babc:	338000ef          	jal	8000bdf4 <softfloat_countLeadingZeros64>
    8000bac0:	ff55051b          	addw	a0,a0,-11 # 7f7ffff5 <_ftext-0x80000b>
    8000bac4:	40a4073b          	subw	a4,s0,a0
    8000bac8:	00000793          	li	a5,0
    8000bacc:	00074663          	bltz	a4,8000bad8 <softfloat_subMagsF64+0x84>
    8000bad0:	03471793          	sll	a5,a4,0x34
    8000bad4:	00050413          	mv	s0,a0
    8000bad8:	008494b3          	sll	s1,s1,s0
    8000badc:	02813083          	ld	ra,40(sp)
    8000bae0:	02013403          	ld	s0,32(sp)
    8000bae4:	03f99613          	sll	a2,s3,0x3f
    8000bae8:	00f60533          	add	a0,a2,a5
    8000baec:	00813983          	ld	s3,8(sp)
    8000baf0:	00950533          	add	a0,a0,s1
    8000baf4:	01813483          	ld	s1,24(sp)
    8000baf8:	03010113          	add	sp,sp,48
    8000bafc:	00008067          	ret
    8000bb00:	01213823          	sd	s2,16(sp)
    8000bb04:	01413023          	sd	s4,0(sp)
    8000bb08:	00a71913          	sll	s2,a4,0xa
    8000bb0c:	00a69a13          	sll	s4,a3,0xa
    8000bb10:	7ff00793          	li	a5,2047
    8000bb14:	04064e63          	bltz	a2,8000bb70 <softfloat_subMagsF64+0x11c>
    8000bb18:	0ef40663          	beq	s0,a5,8000bc04 <softfloat_subMagsF64+0x1b0>
    8000bb1c:	000a0513          	mv	a0,s4
    8000bb20:	00048663          	beqz	s1,8000bb2c <softfloat_subMagsF64+0xd8>
    8000bb24:	00100513          	li	a0,1
    8000bb28:	03e51513          	sll	a0,a0,0x3e
    8000bb2c:	00060593          	mv	a1,a2
    8000bb30:	01450533          	add	a0,a0,s4
    8000bb34:	9c5ff0ef          	jal	8000b4f8 <softfloat_shiftRightJam64>
    8000bb38:	00100793          	li	a5,1
    8000bb3c:	03e79793          	sll	a5,a5,0x3e
    8000bb40:	00f96733          	or	a4,s2,a5
    8000bb44:	40a70633          	sub	a2,a4,a0
    8000bb48:	fff4059b          	addw	a1,s0,-1
    8000bb4c:	02013403          	ld	s0,32(sp)
    8000bb50:	01013903          	ld	s2,16(sp)
    8000bb54:	00013a03          	ld	s4,0(sp)
    8000bb58:	02813083          	ld	ra,40(sp)
    8000bb5c:	01813483          	ld	s1,24(sp)
    8000bb60:	00098513          	mv	a0,s3
    8000bb64:	00813983          	ld	s3,8(sp)
    8000bb68:	03010113          	add	sp,sp,48
    8000bb6c:	37c0006f          	j	8000bee8 <softfloat_normRoundPackToF64>
    8000bb70:	0019c993          	xor	s3,s3,1
    8000bb74:	0af48063          	beq	s1,a5,8000bc14 <softfloat_subMagsF64+0x1c0>
    8000bb78:	00090513          	mv	a0,s2
    8000bb7c:	00040663          	beqz	s0,8000bb88 <softfloat_subMagsF64+0x134>
    8000bb80:	00100513          	li	a0,1
    8000bb84:	03e51513          	sll	a0,a0,0x3e
    8000bb88:	408485bb          	subw	a1,s1,s0
    8000bb8c:	01250533          	add	a0,a0,s2
    8000bb90:	969ff0ef          	jal	8000b4f8 <softfloat_shiftRightJam64>
    8000bb94:	00100793          	li	a5,1
    8000bb98:	03e79793          	sll	a5,a5,0x3e
    8000bb9c:	00fa66b3          	or	a3,s4,a5
    8000bba0:	40a68633          	sub	a2,a3,a0
    8000bba4:	00048413          	mv	s0,s1
    8000bba8:	fa1ff06f          	j	8000bb48 <softfloat_subMagsF64+0xf4>
    8000bbac:	00b56733          	or	a4,a0,a1
    8000bbb0:	00f777b3          	and	a5,a4,a5
    8000bbb4:	08079263          	bnez	a5,8000bc38 <softfloat_subMagsF64+0x1e4>
    8000bbb8:	01026213          	or	tp,tp,16
    8000bbbc:	00fff537          	lui	a0,0xfff
    8000bbc0:	02751513          	sll	a0,a0,0x27
    8000bbc4:	02813083          	ld	ra,40(sp)
    8000bbc8:	02013403          	ld	s0,32(sp)
    8000bbcc:	01813483          	ld	s1,24(sp)
    8000bbd0:	00813983          	ld	s3,8(sp)
    8000bbd4:	03010113          	add	sp,sp,48
    8000bbd8:	00008067          	ret
    8000bbdc:	02813083          	ld	ra,40(sp)
    8000bbe0:	02013403          	ld	s0,32(sp)
    8000bbe4:	40d2551b          	sraw	a0,tp,0xd
    8000bbe8:	ffe50513          	add	a0,a0,-2 # ffeffe <_ftext-0x7f001002>
    8000bbec:	00153513          	seqz	a0,a0
    8000bbf0:	01813483          	ld	s1,24(sp)
    8000bbf4:	00813983          	ld	s3,8(sp)
    8000bbf8:	03f51513          	sll	a0,a0,0x3f
    8000bbfc:	03010113          	add	sp,sp,48
    8000bc00:	00008067          	ret
    8000bc04:	02091663          	bnez	s2,8000bc30 <softfloat_subMagsF64+0x1dc>
    8000bc08:	01013903          	ld	s2,16(sp)
    8000bc0c:	00013a03          	ld	s4,0(sp)
    8000bc10:	fb5ff06f          	j	8000bbc4 <softfloat_subMagsF64+0x170>
    8000bc14:	000a1e63          	bnez	s4,8000bc30 <softfloat_subMagsF64+0x1dc>
    8000bc18:	03f99513          	sll	a0,s3,0x3f
    8000bc1c:	03479793          	sll	a5,a5,0x34
    8000bc20:	01013903          	ld	s2,16(sp)
    8000bc24:	00013a03          	ld	s4,0(sp)
    8000bc28:	00f50533          	add	a0,a0,a5
    8000bc2c:	f99ff06f          	j	8000bbc4 <softfloat_subMagsF64+0x170>
    8000bc30:	01013903          	ld	s2,16(sp)
    8000bc34:	00013a03          	ld	s4,0(sp)
    8000bc38:	0ac000ef          	jal	8000bce4 <softfloat_propagateNaNF64UI>
    8000bc3c:	02813083          	ld	ra,40(sp)
    8000bc40:	02013403          	ld	s0,32(sp)
    8000bc44:	01813483          	ld	s1,24(sp)
    8000bc48:	00813983          	ld	s3,8(sp)
    8000bc4c:	03010113          	add	sp,sp,48
    8000bc50:	00008067          	ret

000000008000bc54 <ui64_to_f64>:
    8000bc54:	04050063          	beqz	a0,8000bc94 <ui64_to_f64+0x40>
    8000bc58:	00050613          	mv	a2,a0
    8000bc5c:	00054863          	bltz	a0,8000bc6c <ui64_to_f64+0x18>
    8000bc60:	43c00593          	li	a1,1084
    8000bc64:	00000513          	li	a0,0
    8000bc68:	2800006f          	j	8000bee8 <softfloat_normRoundPackToF64>
    8000bc6c:	ff010113          	add	sp,sp,-16
    8000bc70:	00100593          	li	a1,1
    8000bc74:	00113423          	sd	ra,8(sp)
    8000bc78:	aadff0ef          	jal	8000b724 <softfloat_shortShiftRightJam64>
    8000bc7c:	00813083          	ld	ra,8(sp)
    8000bc80:	00050613          	mv	a2,a0
    8000bc84:	43d00593          	li	a1,1085
    8000bc88:	00000513          	li	a0,0
    8000bc8c:	01010113          	add	sp,sp,16
    8000bc90:	e04ff06f          	j	8000b294 <softfloat_roundPackToF64>
    8000bc94:	00008067          	ret

000000008000bc98 <softfloat_propagateNaNF32UI>:
    8000bc98:	7fc007b7          	lui	a5,0x7fc00
    8000bc9c:	00f577b3          	and	a5,a0,a5
    8000bca0:	7f800737          	lui	a4,0x7f800
    8000bca4:	00e78e63          	beq	a5,a4,8000bcc0 <softfloat_propagateNaNF32UI+0x28>
    8000bca8:	7fc007b7          	lui	a5,0x7fc00
    8000bcac:	00f5f7b3          	and	a5,a1,a5
    8000bcb0:	7f800737          	lui	a4,0x7f800
    8000bcb4:	02e78063          	beq	a5,a4,8000bcd4 <softfloat_propagateNaNF32UI+0x3c>
    8000bcb8:	7fc00537          	lui	a0,0x7fc00
    8000bcbc:	00008067          	ret
    8000bcc0:	02a51513          	sll	a0,a0,0x2a
    8000bcc4:	fe0502e3          	beqz	a0,8000bca8 <softfloat_propagateNaNF32UI+0x10>
    8000bcc8:	01026213          	or	tp,tp,16
    8000bccc:	7fc00537          	lui	a0,0x7fc00
    8000bcd0:	00008067          	ret
    8000bcd4:	02a59593          	sll	a1,a1,0x2a
    8000bcd8:	fe0580e3          	beqz	a1,8000bcb8 <softfloat_propagateNaNF32UI+0x20>
    8000bcdc:	01026213          	or	tp,tp,16
    8000bce0:	fedff06f          	j	8000bccc <softfloat_propagateNaNF32UI+0x34>

000000008000bce4 <softfloat_propagateNaNF64UI>:
    8000bce4:	00fff7b7          	lui	a5,0xfff
    8000bce8:	02779793          	sll	a5,a5,0x27
    8000bcec:	7ff00713          	li	a4,2047
    8000bcf0:	00f577b3          	and	a5,a0,a5
    8000bcf4:	03471713          	sll	a4,a4,0x34
    8000bcf8:	02e78463          	beq	a5,a4,8000bd20 <softfloat_propagateNaNF64UI+0x3c>
    8000bcfc:	00fff7b7          	lui	a5,0xfff
    8000bd00:	02779793          	sll	a5,a5,0x27
    8000bd04:	7ff00713          	li	a4,2047
    8000bd08:	00f5f7b3          	and	a5,a1,a5
    8000bd0c:	03471713          	sll	a4,a4,0x34
    8000bd10:	02e78463          	beq	a5,a4,8000bd38 <softfloat_propagateNaNF64UI+0x54>
    8000bd14:	00fff537          	lui	a0,0xfff
    8000bd18:	02751513          	sll	a0,a0,0x27
    8000bd1c:	00008067          	ret
    8000bd20:	00d51513          	sll	a0,a0,0xd
    8000bd24:	fc050ce3          	beqz	a0,8000bcfc <softfloat_propagateNaNF64UI+0x18>
    8000bd28:	01026213          	or	tp,tp,16
    8000bd2c:	00fff537          	lui	a0,0xfff
    8000bd30:	02751513          	sll	a0,a0,0x27
    8000bd34:	00008067          	ret
    8000bd38:	00d59593          	sll	a1,a1,0xd
    8000bd3c:	fc058ce3          	beqz	a1,8000bd14 <softfloat_propagateNaNF64UI+0x30>
    8000bd40:	01026213          	or	tp,tp,16
    8000bd44:	fe9ff06f          	j	8000bd2c <softfloat_propagateNaNF64UI+0x48>

000000008000bd48 <softfloat_addM>:
    8000bd48:	0005a703          	lw	a4,0(a1) # 40000000 <_ftext-0x40000000>
    8000bd4c:	00062783          	lw	a5,0(a2)
    8000bd50:	00100813          	li	a6,1
    8000bd54:	00e787bb          	addw	a5,a5,a4
    8000bd58:	00f6a023          	sw	a5,0(a3)
    8000bd5c:	05050a63          	beq	a0,a6,8000bdb0 <softfloat_addM+0x68>
    8000bd60:	ffe5051b          	addw	a0,a0,-2 # ffeffe <_ftext-0x7f001002>
    8000bd64:	02051813          	sll	a6,a0,0x20
    8000bd68:	01e85513          	srl	a0,a6,0x1e
    8000bd6c:	00858813          	add	a6,a1,8
    8000bd70:	01050533          	add	a0,a0,a6
    8000bd74:	00458593          	add	a1,a1,4
    8000bd78:	00460613          	add	a2,a2,4
    8000bd7c:	00468693          	add	a3,a3,4
    8000bd80:	00000813          	li	a6,0
    8000bd84:	00e78463          	beq	a5,a4,8000bd8c <softfloat_addM+0x44>
    8000bd88:	00e7b833          	sltu	a6,a5,a4
    8000bd8c:	0005a703          	lw	a4,0(a1)
    8000bd90:	00062783          	lw	a5,0(a2)
    8000bd94:	00458593          	add	a1,a1,4
    8000bd98:	00460613          	add	a2,a2,4
    8000bd9c:	00e787bb          	addw	a5,a5,a4
    8000bda0:	010787bb          	addw	a5,a5,a6
    8000bda4:	00f6a023          	sw	a5,0(a3)
    8000bda8:	00468693          	add	a3,a3,4
    8000bdac:	fcb51ce3          	bne	a0,a1,8000bd84 <softfloat_addM+0x3c>
    8000bdb0:	00008067          	ret

000000008000bdb4 <softfloat_countLeadingZeros32>:
    8000bdb4:	000107b7          	lui	a5,0x10
    8000bdb8:	00000713          	li	a4,0
    8000bdbc:	00f57663          	bgeu	a0,a5,8000bdc8 <softfloat_countLeadingZeros32+0x14>
    8000bdc0:	0105151b          	sllw	a0,a0,0x10
    8000bdc4:	01000713          	li	a4,16
    8000bdc8:	010007b7          	lui	a5,0x1000
    8000bdcc:	00f57663          	bgeu	a0,a5,8000bdd8 <softfloat_countLeadingZeros32+0x24>
    8000bdd0:	0085151b          	sllw	a0,a0,0x8
    8000bdd4:	0087071b          	addw	a4,a4,8 # 7f800008 <_ftext-0x7ffff8>
    8000bdd8:	0185551b          	srlw	a0,a0,0x18
    8000bddc:	00001797          	auipc	a5,0x1
    8000bde0:	50478793          	add	a5,a5,1284 # 8000d2e0 <softfloat_countLeadingZeros8>
    8000bde4:	00a787b3          	add	a5,a5,a0
    8000bde8:	0007c503          	lbu	a0,0(a5)
    8000bdec:	00e5053b          	addw	a0,a0,a4
    8000bdf0:	00008067          	ret

000000008000bdf4 <softfloat_countLeadingZeros64>:
    8000bdf4:	02055793          	srl	a5,a0,0x20
    8000bdf8:	04078463          	beqz	a5,8000be40 <softfloat_countLeadingZeros64+0x4c>
    8000bdfc:	0007879b          	sext.w	a5,a5
    8000be00:	00000713          	li	a4,0
    8000be04:	000106b7          	lui	a3,0x10
    8000be08:	00d7f663          	bgeu	a5,a3,8000be14 <softfloat_countLeadingZeros64+0x20>
    8000be0c:	0107979b          	sllw	a5,a5,0x10
    8000be10:	0107071b          	addw	a4,a4,16
    8000be14:	010006b7          	lui	a3,0x1000
    8000be18:	00d7f663          	bgeu	a5,a3,8000be24 <softfloat_countLeadingZeros64+0x30>
    8000be1c:	0087979b          	sllw	a5,a5,0x8
    8000be20:	0087071b          	addw	a4,a4,8
    8000be24:	00001697          	auipc	a3,0x1
    8000be28:	4bc68693          	add	a3,a3,1212 # 8000d2e0 <softfloat_countLeadingZeros8>
    8000be2c:	0187d79b          	srlw	a5,a5,0x18
    8000be30:	00f687b3          	add	a5,a3,a5
    8000be34:	0007c503          	lbu	a0,0(a5)
    8000be38:	00e5053b          	addw	a0,a0,a4
    8000be3c:	00008067          	ret
    8000be40:	0005079b          	sext.w	a5,a0
    8000be44:	02000713          	li	a4,32
    8000be48:	fbdff06f          	j	8000be04 <softfloat_countLeadingZeros64+0x10>

000000008000be4c <softfloat_normRoundPackToF32>:
    8000be4c:	fe010113          	add	sp,sp,-32
    8000be50:	01213023          	sd	s2,0(sp)
    8000be54:	00050913          	mv	s2,a0
    8000be58:	00060513          	mv	a0,a2
    8000be5c:	00813823          	sd	s0,16(sp)
    8000be60:	00913423          	sd	s1,8(sp)
    8000be64:	00060413          	mv	s0,a2
    8000be68:	00058493          	mv	s1,a1
    8000be6c:	00113c23          	sd	ra,24(sp)
    8000be70:	f45ff0ef          	jal	8000bdb4 <softfloat_countLeadingZeros32>
    8000be74:	fff5061b          	addw	a2,a0,-1
    8000be78:	00600693          	li	a3,6
    8000be7c:	40c485bb          	subw	a1,s1,a2
    8000be80:	04c6d463          	bge	a3,a2,8000bec8 <softfloat_normRoundPackToF32+0x7c>
    8000be84:	0fc00693          	li	a3,252
    8000be88:	04b6e063          	bltu	a3,a1,8000bec8 <softfloat_normRoundPackToF32+0x7c>
    8000be8c:	0005071b          	sext.w	a4,a0
    8000be90:	01f9191b          	sllw	s2,s2,0x1f
    8000be94:	00000693          	li	a3,0
    8000be98:	00040463          	beqz	s0,8000bea0 <softfloat_normRoundPackToF32+0x54>
    8000be9c:	0175969b          	sllw	a3,a1,0x17
    8000bea0:	ff87071b          	addw	a4,a4,-8
    8000bea4:	00e4143b          	sllw	s0,s0,a4
    8000bea8:	0124053b          	addw	a0,s0,s2
    8000beac:	01813083          	ld	ra,24(sp)
    8000beb0:	01013403          	ld	s0,16(sp)
    8000beb4:	00813483          	ld	s1,8(sp)
    8000beb8:	00013903          	ld	s2,0(sp)
    8000bebc:	00d5053b          	addw	a0,a0,a3
    8000bec0:	02010113          	add	sp,sp,32
    8000bec4:	00008067          	ret
    8000bec8:	00c4163b          	sllw	a2,s0,a2
    8000becc:	01013403          	ld	s0,16(sp)
    8000bed0:	01813083          	ld	ra,24(sp)
    8000bed4:	00813483          	ld	s1,8(sp)
    8000bed8:	00090513          	mv	a0,s2
    8000bedc:	00013903          	ld	s2,0(sp)
    8000bee0:	02010113          	add	sp,sp,32
    8000bee4:	a54ff06f          	j	8000b138 <softfloat_roundPackToF32>

000000008000bee8 <softfloat_normRoundPackToF64>:
    8000bee8:	fe010113          	add	sp,sp,-32
    8000beec:	01213023          	sd	s2,0(sp)
    8000bef0:	00050913          	mv	s2,a0
    8000bef4:	00060513          	mv	a0,a2
    8000bef8:	00813823          	sd	s0,16(sp)
    8000befc:	00913423          	sd	s1,8(sp)
    8000bf00:	00060413          	mv	s0,a2
    8000bf04:	00058493          	mv	s1,a1
    8000bf08:	00113c23          	sd	ra,24(sp)
    8000bf0c:	ee9ff0ef          	jal	8000bdf4 <softfloat_countLeadingZeros64>
    8000bf10:	fff5061b          	addw	a2,a0,-1
    8000bf14:	00900693          	li	a3,9
    8000bf18:	40c485bb          	subw	a1,s1,a2
    8000bf1c:	04c6d463          	bge	a3,a2,8000bf64 <softfloat_normRoundPackToF64+0x7c>
    8000bf20:	7fc00713          	li	a4,2044
    8000bf24:	04b76063          	bltu	a4,a1,8000bf64 <softfloat_normRoundPackToF64+0x7c>
    8000bf28:	0005079b          	sext.w	a5,a0
    8000bf2c:	03f91913          	sll	s2,s2,0x3f
    8000bf30:	00000713          	li	a4,0
    8000bf34:	00040463          	beqz	s0,8000bf3c <softfloat_normRoundPackToF64+0x54>
    8000bf38:	03459713          	sll	a4,a1,0x34
    8000bf3c:	ff57879b          	addw	a5,a5,-11
    8000bf40:	00f41433          	sll	s0,s0,a5
    8000bf44:	01240533          	add	a0,s0,s2
    8000bf48:	01813083          	ld	ra,24(sp)
    8000bf4c:	01013403          	ld	s0,16(sp)
    8000bf50:	00813483          	ld	s1,8(sp)
    8000bf54:	00013903          	ld	s2,0(sp)
    8000bf58:	00e50533          	add	a0,a0,a4
    8000bf5c:	02010113          	add	sp,sp,32
    8000bf60:	00008067          	ret
    8000bf64:	00c41633          	sll	a2,s0,a2
    8000bf68:	01013403          	ld	s0,16(sp)
    8000bf6c:	01813083          	ld	ra,24(sp)
    8000bf70:	00813483          	ld	s1,8(sp)
    8000bf74:	00090513          	mv	a0,s2
    8000bf78:	00013903          	ld	s2,0(sp)
    8000bf7c:	02010113          	add	sp,sp,32
    8000bf80:	b14ff06f          	j	8000b294 <softfloat_roundPackToF64>

000000008000bf84 <vsnprintf>:
    8000bf84:	00064783          	lbu	a5,0(a2)
    8000bf88:	00050313          	mv	t1,a0
    8000bf8c:	2c078a63          	beqz	a5,8000c260 <vsnprintf+0x2dc>
    8000bf90:	fe010113          	add	sp,sp,-32
    8000bf94:	00100513          	li	a0,1
    8000bf98:	00813c23          	sd	s0,24(sp)
    8000bf9c:	00913823          	sd	s1,16(sp)
    8000bfa0:	01213423          	sd	s2,8(sp)
    8000bfa4:	01313023          	sd	s3,0(sp)
    8000bfa8:	00000813          	li	a6,0
    8000bfac:	00000393          	li	t2,0
    8000bfb0:	00000413          	li	s0,0
    8000bfb4:	00000713          	li	a4,0
    8000bfb8:	02500293          	li	t0,37
    8000bfbc:	01500f93          	li	t6,21
    8000bfc0:	00001e97          	auipc	t4,0x1
    8000bfc4:	420e8e93          	add	t4,t4,1056 # 8000d3e0 <softfloat_countLeadingZeros8+0x100>
    8000bfc8:	40650533          	sub	a0,a0,t1
    8000bfcc:	00900f13          	li	t5,9
    8000bfd0:	ffc00e13          	li	t3,-4
    8000bfd4:	1e070a63          	beqz	a4,8000c1c8 <vsnprintf+0x244>
    8000bfd8:	f9d7879b          	addw	a5,a5,-99
    8000bfdc:	0ff7f793          	zext.b	a5,a5
    8000bfe0:	00ffec63          	bltu	t6,a5,8000bff8 <vsnprintf+0x74>
    8000bfe4:	00279793          	sll	a5,a5,0x2
    8000bfe8:	01d787b3          	add	a5,a5,t4
    8000bfec:	0007a783          	lw	a5,0(a5)
    8000bff0:	01d787b3          	add	a5,a5,t4
    8000bff4:	00078067          	jr	a5
    8000bff8:	00164783          	lbu	a5,1(a2)
    8000bffc:	00160613          	add	a2,a2,1
    8000c000:	fc079ae3          	bnez	a5,8000bfd4 <vsnprintf+0x50>
    8000c004:	0008051b          	sext.w	a0,a6
    8000c008:	1eb86663          	bltu	a6,a1,8000c1f4 <vsnprintf+0x270>
    8000c00c:	00058663          	beqz	a1,8000c018 <vsnprintf+0x94>
    8000c010:	00b30333          	add	t1,t1,a1
    8000c014:	fe030fa3          	sb	zero,-1(t1)
    8000c018:	01813403          	ld	s0,24(sp)
    8000c01c:	01013483          	ld	s1,16(sp)
    8000c020:	00813903          	ld	s2,8(sp)
    8000c024:	00013983          	ld	s3,0(sp)
    8000c028:	02010113          	add	sp,sp,32
    8000c02c:	00008067          	ret
    8000c030:	20040863          	beqz	s0,8000c240 <vsnprintf+0x2bc>
    8000c034:	0006b903          	ld	s2,0(a3)
    8000c038:	00f00993          	li	s3,15
    8000c03c:	00868693          	add	a3,a3,8
    8000c040:	01030733          	add	a4,t1,a6
    8000c044:	00299793          	sll	a5,s3,0x2
    8000c048:	00e508b3          	add	a7,a0,a4
    8000c04c:	00b8fe63          	bgeu	a7,a1,8000c068 <vsnprintf+0xe4>
    8000c050:	40f958b3          	sra	a7,s2,a5
    8000c054:	00f8f493          	and	s1,a7,15
    8000c058:	05748413          	add	s0,s1,87
    8000c05c:	009f4463          	blt	t5,s1,8000c064 <vsnprintf+0xe0>
    8000c060:	03048413          	add	s0,s1,48
    8000c064:	00870023          	sb	s0,0(a4)
    8000c068:	ffc7879b          	addw	a5,a5,-4
    8000c06c:	00170713          	add	a4,a4,1
    8000c070:	fdc79ce3          	bne	a5,t3,8000c048 <vsnprintf+0xc4>
    8000c074:	00180813          	add	a6,a6,1
    8000c078:	00164783          	lbu	a5,1(a2)
    8000c07c:	01098833          	add	a6,s3,a6
    8000c080:	00000413          	li	s0,0
    8000c084:	00000713          	li	a4,0
    8000c088:	f75ff06f          	j	8000bffc <vsnprintf+0x78>
    8000c08c:	0006b883          	ld	a7,0(a3)
    8000c090:	00080713          	mv	a4,a6
    8000c094:	00868693          	add	a3,a3,8
    8000c098:	0008c783          	lbu	a5,0(a7)
    8000c09c:	1c078e63          	beqz	a5,8000c278 <vsnprintf+0x2f4>
    8000c0a0:	00170713          	add	a4,a4,1
    8000c0a4:	00b77663          	bgeu	a4,a1,8000c0b0 <vsnprintf+0x12c>
    8000c0a8:	00e30433          	add	s0,t1,a4
    8000c0ac:	fef40fa3          	sb	a5,-1(s0)
    8000c0b0:	410707b3          	sub	a5,a4,a6
    8000c0b4:	00f887b3          	add	a5,a7,a5
    8000c0b8:	0007c783          	lbu	a5,0(a5)
    8000c0bc:	fe0792e3          	bnez	a5,8000c0a0 <vsnprintf+0x11c>
    8000c0c0:	00070813          	mv	a6,a4
    8000c0c4:	00164783          	lbu	a5,1(a2)
    8000c0c8:	00000413          	li	s0,0
    8000c0cc:	00000713          	li	a4,0
    8000c0d0:	f2dff06f          	j	8000bffc <vsnprintf+0x78>
    8000c0d4:	00180793          	add	a5,a6,1
    8000c0d8:	00b7f863          	bgeu	a5,a1,8000c0e8 <vsnprintf+0x164>
    8000c0dc:	01030733          	add	a4,t1,a6
    8000c0e0:	03000893          	li	a7,48
    8000c0e4:	01170023          	sb	a7,0(a4)
    8000c0e8:	00280813          	add	a6,a6,2
    8000c0ec:	f4b874e3          	bgeu	a6,a1,8000c034 <vsnprintf+0xb0>
    8000c0f0:	00f307b3          	add	a5,t1,a5
    8000c0f4:	07800713          	li	a4,120
    8000c0f8:	00e78023          	sb	a4,0(a5)
    8000c0fc:	f39ff06f          	j	8000c034 <vsnprintf+0xb0>
    8000c100:	00164783          	lbu	a5,1(a2)
    8000c104:	06c00893          	li	a7,108
    8000c108:	15178463          	beq	a5,a7,8000c250 <vsnprintf+0x2cc>
    8000c10c:	00070413          	mv	s0,a4
    8000c110:	eedff06f          	j	8000bffc <vsnprintf+0x78>
    8000c114:	00868493          	add	s1,a3,8
    8000c118:	0e040e63          	beqz	s0,8000c214 <vsnprintf+0x290>
    8000c11c:	0006b683          	ld	a3,0(a3)
    8000c120:	1006c063          	bltz	a3,8000c220 <vsnprintf+0x29c>
    8000c124:	00a00793          	li	a5,10
    8000c128:	02f6c7b3          	div	a5,a3,a5
    8000c12c:	14078063          	beqz	a5,8000c26c <vsnprintf+0x2e8>
    8000c130:	00100713          	li	a4,1
    8000c134:	00a00893          	li	a7,10
    8000c138:	0317c7b3          	div	a5,a5,a7
    8000c13c:	00170713          	add	a4,a4,1
    8000c140:	fe079ce3          	bnez	a5,8000c138 <vsnprintf+0x1b4>
    8000c144:	fff7039b          	addw	t2,a4,-1
    8000c148:	00070893          	mv	a7,a4
    8000c14c:	0203ca63          	bltz	t2,8000c180 <vsnprintf+0x1fc>
    8000c150:	00180793          	add	a5,a6,1
    8000c154:	007787b3          	add	a5,a5,t2
    8000c158:	00080913          	mv	s2,a6
    8000c15c:	00a00413          	li	s0,10
    8000c160:	00b7fa63          	bgeu	a5,a1,8000c174 <vsnprintf+0x1f0>
    8000c164:	0286e733          	rem	a4,a3,s0
    8000c168:	00f303b3          	add	t2,t1,a5
    8000c16c:	0307071b          	addw	a4,a4,48
    8000c170:	fee38fa3          	sb	a4,-1(t2)
    8000c174:	fff78793          	add	a5,a5,-1
    8000c178:	0286c6b3          	div	a3,a3,s0
    8000c17c:	ff2792e3          	bne	a5,s2,8000c160 <vsnprintf+0x1dc>
    8000c180:	00164783          	lbu	a5,1(a2)
    8000c184:	01180833          	add	a6,a6,a7
    8000c188:	00048693          	mv	a3,s1
    8000c18c:	00000393          	li	t2,0
    8000c190:	00000413          	li	s0,0
    8000c194:	00000713          	li	a4,0
    8000c198:	e65ff06f          	j	8000bffc <vsnprintf+0x78>
    8000c19c:	00180713          	add	a4,a6,1
    8000c1a0:	f2b770e3          	bgeu	a4,a1,8000c0c0 <vsnprintf+0x13c>
    8000c1a4:	0006a783          	lw	a5,0(a3)
    8000c1a8:	01030833          	add	a6,t1,a6
    8000c1ac:	00868693          	add	a3,a3,8
    8000c1b0:	00f80023          	sb	a5,0(a6)
    8000c1b4:	00164783          	lbu	a5,1(a2)
    8000c1b8:	00070813          	mv	a6,a4
    8000c1bc:	00000413          	li	s0,0
    8000c1c0:	00000713          	li	a4,0
    8000c1c4:	e39ff06f          	j	8000bffc <vsnprintf+0x78>
    8000c1c8:	02578063          	beq	a5,t0,8000c1e8 <vsnprintf+0x264>
    8000c1cc:	00180893          	add	a7,a6,1
    8000c1d0:	00b8f663          	bgeu	a7,a1,8000c1dc <vsnprintf+0x258>
    8000c1d4:	01030833          	add	a6,t1,a6
    8000c1d8:	00f80023          	sb	a5,0(a6)
    8000c1dc:	00164783          	lbu	a5,1(a2)
    8000c1e0:	00088813          	mv	a6,a7
    8000c1e4:	e19ff06f          	j	8000bffc <vsnprintf+0x78>
    8000c1e8:	00164783          	lbu	a5,1(a2)
    8000c1ec:	00100713          	li	a4,1
    8000c1f0:	e0dff06f          	j	8000bffc <vsnprintf+0x78>
    8000c1f4:	01030333          	add	t1,t1,a6
    8000c1f8:	00030023          	sb	zero,0(t1)
    8000c1fc:	01813403          	ld	s0,24(sp)
    8000c200:	01013483          	ld	s1,16(sp)
    8000c204:	00813903          	ld	s2,8(sp)
    8000c208:	00013983          	ld	s3,0(sp)
    8000c20c:	02010113          	add	sp,sp,32
    8000c210:	00008067          	ret
    8000c214:	f00394e3          	bnez	t2,8000c11c <vsnprintf+0x198>
    8000c218:	0006a683          	lw	a3,0(a3)
    8000c21c:	f006d4e3          	bgez	a3,8000c124 <vsnprintf+0x1a0>
    8000c220:	00180793          	add	a5,a6,1
    8000c224:	00b7f863          	bgeu	a5,a1,8000c234 <vsnprintf+0x2b0>
    8000c228:	01030833          	add	a6,t1,a6
    8000c22c:	02d00713          	li	a4,45
    8000c230:	00e80023          	sb	a4,0(a6)
    8000c234:	40d006b3          	neg	a3,a3
    8000c238:	00078813          	mv	a6,a5
    8000c23c:	ee9ff06f          	j	8000c124 <vsnprintf+0x1a0>
    8000c240:	0006a903          	lw	s2,0(a3)
    8000c244:	00700993          	li	s3,7
    8000c248:	00868693          	add	a3,a3,8
    8000c24c:	df5ff06f          	j	8000c040 <vsnprintf+0xbc>
    8000c250:	00264783          	lbu	a5,2(a2)
    8000c254:	00070393          	mv	t2,a4
    8000c258:	00160613          	add	a2,a2,1
    8000c25c:	da1ff06f          	j	8000bffc <vsnprintf+0x78>
    8000c260:	00000513          	li	a0,0
    8000c264:	02059263          	bnez	a1,8000c288 <vsnprintf+0x304>
    8000c268:	00008067          	ret
    8000c26c:	00100893          	li	a7,1
    8000c270:	00000393          	li	t2,0
    8000c274:	eddff06f          	j	8000c150 <vsnprintf+0x1cc>
    8000c278:	00164783          	lbu	a5,1(a2)
    8000c27c:	00000413          	li	s0,0
    8000c280:	00000713          	li	a4,0
    8000c284:	d79ff06f          	j	8000bffc <vsnprintf+0x78>
    8000c288:	00030023          	sb	zero,0(t1)
    8000c28c:	00008067          	ret

000000008000c290 <snprintf>:
    8000c290:	fb010113          	add	sp,sp,-80
    8000c294:	02810313          	add	t1,sp,40
    8000c298:	02d13423          	sd	a3,40(sp)
    8000c29c:	00030693          	mv	a3,t1
    8000c2a0:	00113c23          	sd	ra,24(sp)
    8000c2a4:	02e13823          	sd	a4,48(sp)
    8000c2a8:	02f13c23          	sd	a5,56(sp)
    8000c2ac:	05013023          	sd	a6,64(sp)
    8000c2b0:	05113423          	sd	a7,72(sp)
    8000c2b4:	00613423          	sd	t1,8(sp)
    8000c2b8:	ccdff0ef          	jal	8000bf84 <vsnprintf>
    8000c2bc:	01813083          	ld	ra,24(sp)
    8000c2c0:	05010113          	add	sp,sp,80
    8000c2c4:	00008067          	ret

000000008000c2c8 <memcpy>:
    8000c2c8:	00b567b3          	or	a5,a0,a1
    8000c2cc:	0077f793          	and	a5,a5,7
    8000c2d0:	04079a63          	bnez	a5,8000c324 <memcpy+0x5c>
    8000c2d4:	ff960813          	add	a6,a2,-7
    8000c2d8:	01050833          	add	a6,a0,a6
    8000c2dc:	05057463          	bgeu	a0,a6,8000c324 <memcpy+0x5c>
    8000c2e0:	00050793          	mv	a5,a0
    8000c2e4:	00058713          	mv	a4,a1
    8000c2e8:	00073683          	ld	a3,0(a4)
    8000c2ec:	00878793          	add	a5,a5,8
    8000c2f0:	00870713          	add	a4,a4,8
    8000c2f4:	fed7bc23          	sd	a3,-8(a5)
    8000c2f8:	ff07e8e3          	bltu	a5,a6,8000c2e8 <memcpy+0x20>
    8000c2fc:	ff860793          	add	a5,a2,-8
    8000c300:	ff87f793          	and	a5,a5,-8
    8000c304:	00878793          	add	a5,a5,8
    8000c308:	00f585b3          	add	a1,a1,a5
    8000c30c:	00c50633          	add	a2,a0,a2
    8000c310:	00f507b3          	add	a5,a0,a5
    8000c314:	40f606b3          	sub	a3,a2,a5
    8000c318:	00d586b3          	add	a3,a1,a3
    8000c31c:	00c7ee63          	bltu	a5,a2,8000c338 <memcpy+0x70>
    8000c320:	00008067          	ret
    8000c324:	00050793          	mv	a5,a0
    8000c328:	00c50633          	add	a2,a0,a2
    8000c32c:	40f606b3          	sub	a3,a2,a5
    8000c330:	00d586b3          	add	a3,a1,a3
    8000c334:	fec7f6e3          	bgeu	a5,a2,8000c320 <memcpy+0x58>
    8000c338:	0005c703          	lbu	a4,0(a1)
    8000c33c:	00158593          	add	a1,a1,1
    8000c340:	00178793          	add	a5,a5,1
    8000c344:	fee78fa3          	sb	a4,-1(a5)
    8000c348:	fed598e3          	bne	a1,a3,8000c338 <memcpy+0x70>
    8000c34c:	00008067          	ret

000000008000c350 <memset>:
    8000c350:	00c567b3          	or	a5,a0,a2
    8000c354:	0077f793          	and	a5,a5,7
    8000c358:	00c50633          	add	a2,a0,a2
    8000c35c:	02078063          	beqz	a5,8000c37c <memset+0x2c>
    8000c360:	0ff5f713          	zext.b	a4,a1
    8000c364:	00050793          	mv	a5,a0
    8000c368:	04c57663          	bgeu	a0,a2,8000c3b4 <memset+0x64>
    8000c36c:	00178793          	add	a5,a5,1
    8000c370:	fee78fa3          	sb	a4,-1(a5)
    8000c374:	fef61ce3          	bne	a2,a5,8000c36c <memset+0x1c>
    8000c378:	00008067          	ret
    8000c37c:	010107b7          	lui	a5,0x1010
    8000c380:	10178793          	add	a5,a5,257 # 1010101 <_ftext-0x7efefeff>
    8000c384:	01079793          	sll	a5,a5,0x10
    8000c388:	10178793          	add	a5,a5,257
    8000c38c:	01079793          	sll	a5,a5,0x10
    8000c390:	0ff5f713          	zext.b	a4,a1
    8000c394:	10178793          	add	a5,a5,257
    8000c398:	02f70733          	mul	a4,a4,a5
    8000c39c:	fcc57ee3          	bgeu	a0,a2,8000c378 <memset+0x28>
    8000c3a0:	00050793          	mv	a5,a0
    8000c3a4:	00878793          	add	a5,a5,8
    8000c3a8:	fee7bc23          	sd	a4,-8(a5)
    8000c3ac:	fec7ece3          	bltu	a5,a2,8000c3a4 <memset+0x54>
    8000c3b0:	00008067          	ret
    8000c3b4:	00008067          	ret

000000008000c3b8 <strlen>:
    8000c3b8:	00054783          	lbu	a5,0(a0)
    8000c3bc:	00078e63          	beqz	a5,8000c3d8 <strlen+0x20>
    8000c3c0:	00050793          	mv	a5,a0
    8000c3c4:	0017c703          	lbu	a4,1(a5)
    8000c3c8:	00178793          	add	a5,a5,1
    8000c3cc:	fe071ce3          	bnez	a4,8000c3c4 <strlen+0xc>
    8000c3d0:	40a78533          	sub	a0,a5,a0
    8000c3d4:	00008067          	ret
    8000c3d8:	00000513          	li	a0,0
    8000c3dc:	00008067          	ret

000000008000c3e0 <strcmp>:
    8000c3e0:	00054783          	lbu	a5,0(a0)
    8000c3e4:	00158593          	add	a1,a1,1
    8000c3e8:	00150513          	add	a0,a0,1
    8000c3ec:	fff5c703          	lbu	a4,-1(a1)
    8000c3f0:	00078a63          	beqz	a5,8000c404 <strcmp+0x24>
    8000c3f4:	fee786e3          	beq	a5,a4,8000c3e0 <strcmp>
    8000c3f8:	0007851b          	sext.w	a0,a5
    8000c3fc:	40e5053b          	subw	a0,a0,a4
    8000c400:	00008067          	ret
    8000c404:	00000513          	li	a0,0
    8000c408:	ff5ff06f          	j	8000c3fc <strcmp+0x1c>

000000008000c40c <strcpy>:
    8000c40c:	00050793          	mv	a5,a0
    8000c410:	0005c703          	lbu	a4,0(a1)
    8000c414:	00178793          	add	a5,a5,1
    8000c418:	00158593          	add	a1,a1,1
    8000c41c:	fee78fa3          	sb	a4,-1(a5)
    8000c420:	fe0718e3          	bnez	a4,8000c410 <strcpy+0x4>
    8000c424:	00008067          	ret

000000008000c428 <atol>:
    8000c428:	00054703          	lbu	a4,0(a0)
    8000c42c:	02000693          	li	a3,32
    8000c430:	00050793          	mv	a5,a0
    8000c434:	00d71863          	bne	a4,a3,8000c444 <atol+0x1c>
    8000c438:	0017c703          	lbu	a4,1(a5)
    8000c43c:	00178793          	add	a5,a5,1
    8000c440:	fed70ce3          	beq	a4,a3,8000c438 <atol+0x10>
    8000c444:	02d00693          	li	a3,45
    8000c448:	04d70e63          	beq	a4,a3,8000c4a4 <atol+0x7c>
    8000c44c:	02b00693          	li	a3,43
    8000c450:	04d70063          	beq	a4,a3,8000c490 <atol+0x68>
    8000c454:	0007c683          	lbu	a3,0(a5)
    8000c458:	00000593          	li	a1,0
    8000c45c:	04068c63          	beqz	a3,8000c4b4 <atol+0x8c>
    8000c460:	00000513          	li	a0,0
    8000c464:	00178793          	add	a5,a5,1
    8000c468:	00251713          	sll	a4,a0,0x2
    8000c46c:	fd06861b          	addw	a2,a3,-48
    8000c470:	0007c683          	lbu	a3,0(a5)
    8000c474:	00a70733          	add	a4,a4,a0
    8000c478:	00171713          	sll	a4,a4,0x1
    8000c47c:	00e60533          	add	a0,a2,a4
    8000c480:	fe0692e3          	bnez	a3,8000c464 <atol+0x3c>
    8000c484:	02058a63          	beqz	a1,8000c4b8 <atol+0x90>
    8000c488:	40a00533          	neg	a0,a0
    8000c48c:	00008067          	ret
    8000c490:	0017c683          	lbu	a3,1(a5)
    8000c494:	00178793          	add	a5,a5,1
    8000c498:	00068e63          	beqz	a3,8000c4b4 <atol+0x8c>
    8000c49c:	00000593          	li	a1,0
    8000c4a0:	fc1ff06f          	j	8000c460 <atol+0x38>
    8000c4a4:	0017c683          	lbu	a3,1(a5)
    8000c4a8:	00100593          	li	a1,1
    8000c4ac:	00178793          	add	a5,a5,1
    8000c4b0:	fa0698e3          	bnez	a3,8000c460 <atol+0x38>
    8000c4b4:	00000513          	li	a0,0
    8000c4b8:	00008067          	ret

Disassembly of section .rodata:

000000008000c4c0 <regnames.0>:
    8000c4c0:	207a                	.insn	2, 0x207a
    8000c4c2:	7200                	.insn	2, 0x7200
    8000c4c4:	0061                	.insn	2, 0x0061
    8000c4c6:	67007073          	csrc	0x670,0
    8000c4ca:	0070                	.insn	2, 0x0070
    8000c4cc:	7074                	.insn	2, 0x7074
    8000c4ce:	7400                	.insn	2, 0x7400
    8000c4d0:	0030                	.insn	2, 0x0030
    8000c4d2:	3174                	.insn	2, 0x3174
    8000c4d4:	7400                	.insn	2, 0x7400
    8000c4d6:	0032                	.insn	2, 0x0032
    8000c4d8:	73003073          	csrc	mhpmevent16h,zero
    8000c4dc:	0031                	.insn	2, 0x0031
    8000c4de:	3061                	.insn	2, 0x3061
    8000c4e0:	6100                	.insn	2, 0x6100
    8000c4e2:	0031                	.insn	2, 0x0031
    8000c4e4:	3261                	.insn	2, 0x3261
    8000c4e6:	6100                	.insn	2, 0x6100
    8000c4e8:	34610033          	.insn	4, 0x34610033
    8000c4ec:	6100                	.insn	2, 0x6100
    8000c4ee:	0035                	.insn	2, 0x0035
    8000c4f0:	3661                	.insn	2, 0x3661
    8000c4f2:	6100                	.insn	2, 0x6100
    8000c4f4:	32730037          	lui	zero,0x32730
    8000c4f8:	7300                	.insn	2, 0x7300
    8000c4fa:	34730033          	.insn	4, 0x34730033
    8000c4fe:	7300                	.insn	2, 0x7300
    8000c500:	0035                	.insn	2, 0x0035
    8000c502:	73003673          	csrrc	a2,mhpmevent16h,zero
    8000c506:	38730037          	lui	zero,0x38730
    8000c50a:	7300                	.insn	2, 0x7300
    8000c50c:	0039                	.insn	2, 0x0039
    8000c50e:	73004173          	.insn	4, 0x73004173
    8000c512:	0042                	.insn	2, 0x0042
    8000c514:	3374                	.insn	2, 0x3374
    8000c516:	7400                	.insn	2, 0x7400
    8000c518:	0034                	.insn	2, 0x0034
    8000c51a:	3574                	.insn	2, 0x3574
    8000c51c:	7400                	.insn	2, 0x7400
    8000c51e:	0036                	.insn	2, 0x0036

000000008000c520 <trap_handlers.0>:
    8000c520:	2b9c                	.insn	2, 0x2b9c
    8000c522:	8000                	.insn	2, 0x8000
    8000c524:	0000                	.insn	2, 0x
    8000c526:	0000                	.insn	2, 0x
    8000c528:	2b84                	.insn	2, 0x2b84
    8000c52a:	8000                	.insn	2, 0x8000
    8000c52c:	0000                	.insn	2, 0x
    8000c52e:	0000                	.insn	2, 0x
    8000c530:	2b6c                	.insn	2, 0x2b6c
    8000c532:	8000                	.insn	2, 0x8000
    8000c534:	0000                	.insn	2, 0x
    8000c536:	0000                	.insn	2, 0x
    8000c538:	2b54                	.insn	2, 0x2b54
    8000c53a:	8000                	.insn	2, 0x8000
    8000c53c:	0000                	.insn	2, 0x
    8000c53e:	0000                	.insn	2, 0x
    8000c540:	2b3c                	.insn	2, 0x2b3c
    8000c542:	8000                	.insn	2, 0x8000
    8000c544:	0000                	.insn	2, 0x
    8000c546:	0000                	.insn	2, 0x
    8000c548:	2b24                	.insn	2, 0x2b24
    8000c54a:	8000                	.insn	2, 0x8000
    8000c54c:	0000                	.insn	2, 0x
    8000c54e:	0000                	.insn	2, 0x
    8000c550:	2b0c                	.insn	2, 0x2b0c
    8000c552:	8000                	.insn	2, 0x8000
    8000c554:	0000                	.insn	2, 0x
    8000c556:	0000                	.insn	2, 0x
    8000c558:	2af4                	.insn	2, 0x2af4
    8000c55a:	8000                	.insn	2, 0x8000
    8000c55c:	0000                	.insn	2, 0x
    8000c55e:	0000                	.insn	2, 0x
    8000c560:	2bb4                	.insn	2, 0x2bb4
    8000c562:	8000                	.insn	2, 0x8000
	...
    8000c580:	2c8c                	.insn	2, 0x2c8c
    8000c582:	8000                	.insn	2, 0x8000
    8000c584:	0000                	.insn	2, 0x
    8000c586:	0000                	.insn	2, 0x
    8000c588:	2c48                	.insn	2, 0x2c48
    8000c58a:	8000                	.insn	2, 0x8000
	...
    8000c598:	2c04                	.insn	2, 0x2c04
    8000c59a:	8000                	.insn	2, 0x8000
    8000c59c:	0000                	.insn	2, 0x
	...

000000008000c5a0 <old_syscall_table.0>:
    8000c5a0:	3864                	.insn	2, 0x3864
    8000c5a2:	8000                	.insn	2, 0x8000
    8000c5a4:	0000                	.insn	2, 0x
    8000c5a6:	0000                	.insn	2, 0x
    8000c5a8:	402c                	.insn	2, 0x402c
    8000c5aa:	8000                	.insn	2, 0x8000
    8000c5ac:	0000                	.insn	2, 0x
    8000c5ae:	0000                	.insn	2, 0x
    8000c5b0:	3958                	.insn	2, 0x3958
    8000c5b2:	8000                	.insn	2, 0x8000
	...
    8000c5d0:	3a48                	.insn	2, 0x3a48
    8000c5d2:	8000                	.insn	2, 0x8000
	...
    8000c5e8:	3b38                	.insn	2, 0x3b38
    8000c5ea:	8000                	.insn	2, 0x8000
	...
    8000c610:	3c5c                	.insn	2, 0x3c5c
    8000c612:	8000                	.insn	2, 0x8000
    8000c614:	0000                	.insn	2, 0x
    8000c616:	0000                	.insn	2, 0x
    8000c618:	35d4                	.insn	2, 0x35d4
    8000c61a:	8000                	.insn	2, 0x8000
	...
    8000c6d0:	2df8                	.insn	2, 0x2df8
    8000c6d2:	8000                	.insn	2, 0x8000
    8000c6d4:	0000                	.insn	2, 0x
	...

000000008000c6d8 <syscall_table.1>:
	...
    8000c760:	33b0                	.insn	2, 0x33b0
    8000c762:	8000                	.insn	2, 0x8000
	...
    8000c790:	322c                	.insn	2, 0x322c
    8000c792:	8000                	.insn	2, 0x8000
    8000c794:	0000                	.insn	2, 0x
    8000c796:	0000                	.insn	2, 0x
    8000c798:	3504                	.insn	2, 0x3504
    8000c79a:	8000                	.insn	2, 0x8000
    8000c79c:	0000                	.insn	2, 0x
    8000c79e:	0000                	.insn	2, 0x
    8000c7a0:	3330                	.insn	2, 0x3330
    8000c7a2:	8000                	.insn	2, 0x8000
	...
    8000c7e8:	3968                	.insn	2, 0x3968
    8000c7ea:	8000                	.insn	2, 0x8000
    8000c7ec:	0000                	.insn	2, 0x
    8000c7ee:	0000                	.insn	2, 0x
    8000c7f0:	3878                	.insn	2, 0x3878
    8000c7f2:	8000                	.insn	2, 0x8000
	...
    8000c800:	3edc                	.insn	2, 0x3edc
    8000c802:	8000                	.insn	2, 0x8000
    8000c804:	0000                	.insn	2, 0x
    8000c806:	0000                	.insn	2, 0x
    8000c808:	3d78                	.insn	2, 0x3d78
    8000c80a:	8000                	.insn	2, 0x8000
	...
    8000c848:	34ac                	.insn	2, 0x34ac
    8000c84a:	8000                	.insn	2, 0x8000
	...
    8000c858:	3a58                	.insn	2, 0x3a58
    8000c85a:	8000                	.insn	2, 0x8000
    8000c85c:	0000                	.insn	2, 0x
    8000c85e:	0000                	.insn	2, 0x
    8000c860:	3440                	.insn	2, 0x3440
    8000c862:	8000                	.insn	2, 0x8000
	...
    8000c898:	3798                	.insn	2, 0x3798
    8000c89a:	8000                	.insn	2, 0x8000
    8000c89c:	0000                	.insn	2, 0x
    8000c89e:	0000                	.insn	2, 0x
    8000c8a0:	3274                	.insn	2, 0x3274
    8000c8a2:	8000                	.insn	2, 0x8000
	...
    8000c8c0:	2d2c                	.insn	2, 0x2d2c
    8000c8c2:	8000                	.insn	2, 0x8000
    8000c8c4:	0000                	.insn	2, 0x
    8000c8c6:	0000                	.insn	2, 0x
    8000c8c8:	356c                	.insn	2, 0x356c
    8000c8ca:	8000                	.insn	2, 0x8000
    8000c8cc:	0000                	.insn	2, 0x
    8000c8ce:	0000                	.insn	2, 0x
    8000c8d0:	2f04                	.insn	2, 0x2f04
    8000c8d2:	8000                	.insn	2, 0x8000
    8000c8d4:	0000                	.insn	2, 0x
    8000c8d6:	0000                	.insn	2, 0x
    8000c8d8:	30b0                	.insn	2, 0x30b0
    8000c8da:	8000                	.insn	2, 0x8000
	...
    8000c8e8:	317c                	.insn	2, 0x317c
    8000c8ea:	8000                	.insn	2, 0x8000
    8000c8ec:	0000                	.insn	2, 0x
    8000c8ee:	0000                	.insn	2, 0x
    8000c8f0:	2fd0                	.insn	2, 0x2fd0
    8000c8f2:	8000                	.insn	2, 0x8000
	...
    8000c950:	3b48                	.insn	2, 0x3b48
    8000c952:	8000                	.insn	2, 0x8000
    8000c954:	0000                	.insn	2, 0x
    8000c956:	0000                	.insn	2, 0x
    8000c958:	3298                	.insn	2, 0x3298
    8000c95a:	8000                	.insn	2, 0x8000
	...
    8000c9c0:	2d34                	.insn	2, 0x2d34
    8000c9c2:	8000                	.insn	2, 0x8000
    8000c9c4:	0000                	.insn	2, 0x
    8000c9c6:	0000                	.insn	2, 0x
    8000c9c8:	2d34                	.insn	2, 0x2d34
    8000c9ca:	8000                	.insn	2, 0x8000
	...
    8000ca60:	2ec0                	.insn	2, 0x2ec0
    8000ca62:	8000                	.insn	2, 0x8000
	...
    8000caf0:	2de8                	.insn	2, 0x2de8
    8000caf2:	8000                	.insn	2, 0x8000
	...
    8000cb08:	3748                	.insn	2, 0x3748
    8000cb0a:	8000                	.insn	2, 0x8000
    8000cb0c:	0000                	.insn	2, 0x
    8000cb0e:	0000                	.insn	2, 0x
    8000cb10:	3788                	.insn	2, 0x3788
    8000cb12:	8000                	.insn	2, 0x8000
	...
    8000cba0:	2e38                	.insn	2, 0x2e38
    8000cba2:	8000                	.insn	2, 0x8000
	...
    8000cbd8:	367c                	.insn	2, 0x367c
    8000cbda:	8000                	.insn	2, 0x8000
	...
    8000cc20:	2e78                	.insn	2, 0x2e78
    8000cc22:	8000                	.insn	2, 0x8000
	...
    8000cc38:	2d24                	.insn	2, 0x2d24
    8000cc3a:	8000                	.insn	2, 0x8000
	...
    8000cc48:	3790                	.insn	2, 0x3790
    8000cc4a:	8000                	.insn	2, 0x8000
    8000cc4c:	0000                	.insn	2, 0x
    8000cc4e:	0000                	.insn	2, 0x
    8000cc50:	3790                	.insn	2, 0x3790
    8000cc52:	8000                	.insn	2, 0x8000
    8000cc54:	0000                	.insn	2, 0x
    8000cc56:	0000                	.insn	2, 0x
    8000cc58:	3790                	.insn	2, 0x3790
    8000cc5a:	8000                	.insn	2, 0x8000
    8000cc5c:	0000                	.insn	2, 0x
    8000cc5e:	0000                	.insn	2, 0x
    8000cc60:	3790                	.insn	2, 0x3790
    8000cc62:	8000                	.insn	2, 0x8000
    8000cc64:	0000                	.insn	2, 0x
    8000cc66:	0000                	.insn	2, 0x
    8000cc68:	3790                	.insn	2, 0x3790
    8000cc6a:	8000                	.insn	2, 0x8000
	...
    8000cd88:	3678                	.insn	2, 0x3678
    8000cd8a:	8000                	.insn	2, 0x8000
    8000cd8c:	0000                	.insn	2, 0x
    8000cd8e:	0000                	.insn	2, 0x
    8000cd90:	373c                	.insn	2, 0x373c
    8000cd92:	8000                	.insn	2, 0x8000
    8000cd94:	0000                	.insn	2, 0x
    8000cd96:	0000                	.insn	2, 0x
    8000cd98:	3740                	.insn	2, 0x3740
    8000cd9a:	8000                	.insn	2, 0x8000
	...
    8000cdc8:	3738                	.insn	2, 0x3738
    8000cdca:	8000                	.insn	2, 0x8000
	...
    8000cde8:	3744                	.insn	2, 0x3744
    8000cdea:	8000                	.insn	2, 0x8000
	...
    8000cff0:	3c70                	.insn	2, 0x3c70
    8000cff2:	8000                	.insn	2, 0x8000
    8000cff4:	0000                	.insn	2, 0x
    8000cff6:	0000                	.insn	2, 0x
    8000cff8:	7624                	.insn	2, 0x7624
    8000cffa:	ffff                	.insn	2, 0xffff
    8000cffc:	7654                	.insn	2, 0x7654
    8000cffe:	ffff                	.insn	2, 0xffff
    8000d000:	7670                	.insn	2, 0x7670
    8000d002:	ffff                	.insn	2, 0xffff
    8000d004:	76ac                	.insn	2, 0x76ac
    8000d006:	ffff                	.insn	2, 0xffff
    8000d008:	76cc                	.insn	2, 0x76cc
    8000d00a:	ffff                	.insn	2, 0xffff
    8000d00c:	76d4                	.insn	2, 0x76d4
    8000d00e:	ffff                	.insn	2, 0xffff
    8000d010:	7614                	.insn	2, 0x7614
    8000d012:	ffff                	.insn	2, 0xffff
    8000d014:	7614                	.insn	2, 0x7614
    8000d016:	ffff                	.insn	2, 0xffff
    8000d018:	76f4                	.insn	2, 0x76f4
    8000d01a:	ffff                	.insn	2, 0xffff

000000008000d01c <illegal_insn_trap_table>:
    8000d01c:	a72c                	.insn	2, 0xa72c
    8000d01e:	ffff                	.insn	2, 0xffff
    8000d020:	ba28                	.insn	2, 0xba28
    8000d022:	ffff                	.insn	2, 0xffff
    8000d024:	a72c                	.insn	2, 0xa72c
    8000d026:	ffff                	.insn	2, 0xffff
    8000d028:	a72c                	.insn	2, 0xa72c
    8000d02a:	ffff                	.insn	2, 0xffff
    8000d02c:	a72c                	.insn	2, 0xa72c
    8000d02e:	ffff                	.insn	2, 0xffff
    8000d030:	a72c                	.insn	2, 0xa72c
    8000d032:	ffff                	.insn	2, 0xffff
    8000d034:	a72c                	.insn	2, 0xa72c
    8000d036:	ffff                	.insn	2, 0xffff
    8000d038:	a72c                	.insn	2, 0xa72c
    8000d03a:	ffff                	.insn	2, 0xffff
    8000d03c:	a72c                	.insn	2, 0xa72c
    8000d03e:	ffff                	.insn	2, 0xffff
    8000d040:	badc                	.insn	2, 0xbadc
    8000d042:	ffff                	.insn	2, 0xffff
    8000d044:	a72c                	.insn	2, 0xa72c
    8000d046:	ffff                	.insn	2, 0xffff
    8000d048:	a72c                	.insn	2, 0xa72c
    8000d04a:	ffff                	.insn	2, 0xffff
    8000d04c:	a72c                	.insn	2, 0xa72c
    8000d04e:	ffff                	.insn	2, 0xffff
    8000d050:	a72c                	.insn	2, 0xa72c
    8000d052:	ffff                	.insn	2, 0xffff
    8000d054:	a72c                	.insn	2, 0xa72c
    8000d056:	ffff                	.insn	2, 0xffff
    8000d058:	a72c                	.insn	2, 0xa72c
    8000d05a:	ffff                	.insn	2, 0xffff
    8000d05c:	b888                	.insn	2, 0xb888
    8000d05e:	ffff                	.insn	2, 0xffff
    8000d060:	b888                	.insn	2, 0xb888
    8000d062:	ffff                	.insn	2, 0xffff
    8000d064:	b888                	.insn	2, 0xb888
    8000d066:	ffff                	.insn	2, 0xffff
    8000d068:	b888                	.insn	2, 0xb888
    8000d06a:	ffff                	.insn	2, 0xffff
    8000d06c:	ab4c                	.insn	2, 0xab4c
    8000d06e:	ffff                	.insn	2, 0xffff
    8000d070:	a72c                	.insn	2, 0xa72c
    8000d072:	ffff                	.insn	2, 0xffff
    8000d074:	a72c                	.insn	2, 0xa72c
    8000d076:	ffff                	.insn	2, 0xffff
    8000d078:	a72c                	.insn	2, 0xa72c
    8000d07a:	ffff                	.insn	2, 0xffff
    8000d07c:	a72c                	.insn	2, 0xa72c
    8000d07e:	ffff                	.insn	2, 0xffff
    8000d080:	a72c                	.insn	2, 0xa72c
    8000d082:	ffff                	.insn	2, 0xffff
    8000d084:	a72c                	.insn	2, 0xa72c
    8000d086:	ffff                	.insn	2, 0xffff
    8000d088:	a72c                	.insn	2, 0xa72c
    8000d08a:	ffff                	.insn	2, 0xffff
    8000d08c:	a73c                	.insn	2, 0xa73c
    8000d08e:	ffff                	.insn	2, 0xffff
    8000d090:	a72c                	.insn	2, 0xa72c
    8000d092:	ffff                	.insn	2, 0xffff
    8000d094:	a72c                	.insn	2, 0xa72c
    8000d096:	ffff                	.insn	2, 0xffff
    8000d098:	a72c                	.insn	2, 0xa72c
    8000d09a:	ffff                	.insn	2, 0xffff
    8000d09c:	a820                	.insn	2, 0xa820
    8000d09e:	ffff                	.insn	2, 0xffff
    8000d0a0:	aa3c                	.insn	2, 0xaa3c
    8000d0a2:	ffff                	.insn	2, 0xffff
    8000d0a4:	a960                	.insn	2, 0xa960
    8000d0a6:	ffff                	.insn	2, 0xffff
    8000d0a8:	a954                	.insn	2, 0xa954
    8000d0aa:	ffff                	.insn	2, 0xffff
    8000d0ac:	a820                	.insn	2, 0xa820
    8000d0ae:	ffff                	.insn	2, 0xffff
    8000d0b0:	aa64                	.insn	2, 0xaa64
    8000d0b2:	ffff                	.insn	2, 0xffff
    8000d0b4:	a94c                	.insn	2, 0xa94c
    8000d0b6:	ffff                	.insn	2, 0xffff
    8000d0b8:	a8e0                	.insn	2, 0xa8e0
    8000d0ba:	ffff                	.insn	2, 0xffff
    8000d0bc:	a800                	.insn	2, 0xa800
    8000d0be:	ffff                	.insn	2, 0xffff
    8000d0c0:	a8fc                	.insn	2, 0xa8fc
    8000d0c2:	ffff                	.insn	2, 0xffff
    8000d0c4:	a940                	.insn	2, 0xa940
    8000d0c6:	ffff                	.insn	2, 0xffff
    8000d0c8:	a934                	.insn	2, 0xa934
    8000d0ca:	ffff                	.insn	2, 0xffff
    8000d0cc:	a800                	.insn	2, 0xa800
    8000d0ce:	ffff                	.insn	2, 0xffff
    8000d0d0:	aaa4                	.insn	2, 0xaaa4
    8000d0d2:	ffff                	.insn	2, 0xffff
    8000d0d4:	a92c                	.insn	2, 0xa92c
    8000d0d6:	ffff                	.insn	2, 0xffff
    8000d0d8:	a8c0                	.insn	2, 0xa8c0
    8000d0da:	ffff                	.insn	2, 0xffff
    8000d0dc:	a7e0                	.insn	2, 0xa7e0
    8000d0de:	ffff                	.insn	2, 0xffff
    8000d0e0:	aa40                	.insn	2, 0xaa40
    8000d0e2:	ffff                	.insn	2, 0xffff
    8000d0e4:	a920                	.insn	2, 0xa920
    8000d0e6:	ffff                	.insn	2, 0xffff
    8000d0e8:	a914                	.insn	2, 0xa914
    8000d0ea:	ffff                	.insn	2, 0xffff
    8000d0ec:	a7e0                	.insn	2, 0xa7e0
    8000d0ee:	ffff                	.insn	2, 0xffff
    8000d0f0:	aa3c                	.insn	2, 0xaa3c
    8000d0f2:	ffff                	.insn	2, 0xffff
    8000d0f4:	a90c                	.insn	2, 0xa90c
    8000d0f6:	ffff                	.insn	2, 0xffff
    8000d0f8:	a8a0                	.insn	2, 0xa8a0
    8000d0fa:	ffff                	.insn	2, 0xffff
    8000d0fc:	a7c0                	.insn	2, 0xa7c0
    8000d0fe:	ffff                	.insn	2, 0xffff
    8000d100:	aa14                	.insn	2, 0xaa14
    8000d102:	ffff                	.insn	2, 0xffff
    8000d104:	a900                	.insn	2, 0xa900
    8000d106:	ffff                	.insn	2, 0xffff
    8000d108:	a8f4                	.insn	2, 0xa8f4
    8000d10a:	ffff                	.insn	2, 0xffff
    8000d10c:	a7c0                	.insn	2, 0xa7c0
    8000d10e:	ffff                	.insn	2, 0xffff
    8000d110:	aa28                	.insn	2, 0xaa28
    8000d112:	ffff                	.insn	2, 0xffff
    8000d114:	a8ec                	.insn	2, 0xa8ec
    8000d116:	ffff                	.insn	2, 0xffff
    8000d118:	a880                	.insn	2, 0xa880
    8000d11a:	ffff                	.insn	2, 0xffff
    8000d11c:	a7a0                	.insn	2, 0xa7a0
    8000d11e:	ffff                	.insn	2, 0xffff
    8000d120:	a9c8                	.insn	2, 0xa9c8
    8000d122:	ffff                	.insn	2, 0xffff
    8000d124:	a8e0                	.insn	2, 0xa8e0
    8000d126:	ffff                	.insn	2, 0xffff
    8000d128:	a8d4                	.insn	2, 0xa8d4
    8000d12a:	ffff                	.insn	2, 0xffff
    8000d12c:	a7a0                	.insn	2, 0xa7a0
    8000d12e:	ffff                	.insn	2, 0xffff
    8000d130:	aa08                	.insn	2, 0xaa08
    8000d132:	ffff                	.insn	2, 0xffff
    8000d134:	a8cc                	.insn	2, 0xa8cc
    8000d136:	ffff                	.insn	2, 0xffff
    8000d138:	a860                	.insn	2, 0xa860
    8000d13a:	ffff                	.insn	2, 0xffff
    8000d13c:	a780                	.insn	2, 0xa780
    8000d13e:	ffff                	.insn	2, 0xffff
    8000d140:	a9fc                	.insn	2, 0xa9fc
    8000d142:	ffff                	.insn	2, 0xffff
    8000d144:	a8c0                	.insn	2, 0xa8c0
    8000d146:	ffff                	.insn	2, 0xffff
    8000d148:	a8b4                	.insn	2, 0xa8b4
    8000d14a:	ffff                	.insn	2, 0xffff
    8000d14c:	a780                	.insn	2, 0xa780
    8000d14e:	ffff                	.insn	2, 0xffff
    8000d150:	a9c4                	.insn	2, 0xa9c4
    8000d152:	ffff                	.insn	2, 0xffff
    8000d154:	a8ac                	.insn	2, 0xa8ac
    8000d156:	ffff                	.insn	2, 0xffff
    8000d158:	a840                	.insn	2, 0xa840
    8000d15a:	ffff                	.insn	2, 0xffff
    8000d15c:	a760                	.insn	2, 0xa760
    8000d15e:	ffff                	.insn	2, 0xffff
    8000d160:	a760                	.insn	2, 0xa760
    8000d162:	ffff                	.insn	2, 0xffff
    8000d164:	a8a0                	.insn	2, 0xa8a0
    8000d166:	ffff                	.insn	2, 0xffff
    8000d168:	a894                	.insn	2, 0xa894
    8000d16a:	ffff                	.insn	2, 0xffff
    8000d16c:	a760                	.insn	2, 0xa760
    8000d16e:	ffff                	.insn	2, 0xffff
    8000d170:	a9a4                	.insn	2, 0xa9a4
    8000d172:	ffff                	.insn	2, 0xffff
    8000d174:	a88c                	.insn	2, 0xa88c
    8000d176:	ffff                	.insn	2, 0xffff
    8000d178:	a820                	.insn	2, 0xa820
    8000d17a:	ffff                	.insn	2, 0xffff
    8000d17c:	a740                	.insn	2, 0xa740
    8000d17e:	ffff                	.insn	2, 0xffff
    8000d180:	a9d0                	.insn	2, 0xa9d0
    8000d182:	ffff                	.insn	2, 0xffff
    8000d184:	a880                	.insn	2, 0xa880
    8000d186:	ffff                	.insn	2, 0xffff
    8000d188:	a874                	.insn	2, 0xa874
    8000d18a:	ffff                	.insn	2, 0xffff
    8000d18c:	a740                	.insn	2, 0xa740
    8000d18e:	ffff                	.insn	2, 0xffff
    8000d190:	a9cc                	.insn	2, 0xa9cc
    8000d192:	ffff                	.insn	2, 0xffff
    8000d194:	a86c                	.insn	2, 0xa86c
    8000d196:	ffff                	.insn	2, 0xffff
    8000d198:	a800                	.insn	2, 0xa800
    8000d19a:	ffff                	.insn	2, 0xffff
    8000d19c:	a720                	.insn	2, 0xa720
    8000d19e:	ffff                	.insn	2, 0xffff
    8000d1a0:	a9a4                	.insn	2, 0xa9a4
    8000d1a2:	ffff                	.insn	2, 0xffff
    8000d1a4:	a860                	.insn	2, 0xa860
    8000d1a6:	ffff                	.insn	2, 0xffff
    8000d1a8:	a854                	.insn	2, 0xa854
    8000d1aa:	ffff                	.insn	2, 0xffff
    8000d1ac:	a720                	.insn	2, 0xa720
    8000d1ae:	ffff                	.insn	2, 0xffff
    8000d1b0:	a964                	.insn	2, 0xa964
    8000d1b2:	ffff                	.insn	2, 0xffff
    8000d1b4:	a84c                	.insn	2, 0xa84c
    8000d1b6:	ffff                	.insn	2, 0xffff
    8000d1b8:	a7e0                	.insn	2, 0xa7e0
    8000d1ba:	ffff                	.insn	2, 0xffff
    8000d1bc:	a700                	.insn	2, 0xa700
    8000d1be:	ffff                	.insn	2, 0xffff
    8000d1c0:	a870                	.insn	2, 0xa870
    8000d1c2:	ffff                	.insn	2, 0xffff
    8000d1c4:	a840                	.insn	2, 0xa840
    8000d1c6:	ffff                	.insn	2, 0xffff
    8000d1c8:	a834                	.insn	2, 0xa834
    8000d1ca:	ffff                	.insn	2, 0xffff
    8000d1cc:	a700                	.insn	2, 0xa700
    8000d1ce:	ffff                	.insn	2, 0xffff
    8000d1d0:	a944                	.insn	2, 0xa944
    8000d1d2:	ffff                	.insn	2, 0xffff
    8000d1d4:	a82c                	.insn	2, 0xa82c
    8000d1d6:	ffff                	.insn	2, 0xffff
    8000d1d8:	a7c0                	.insn	2, 0xa7c0
    8000d1da:	ffff                	.insn	2, 0xffff

000000008000d1dc <fp_emulation_table>:
    8000d1dc:	aaec                	.insn	2, 0xaaec
    8000d1de:	ffff                	.insn	2, 0xffff
    8000d1e0:	aaf4                	.insn	2, 0xaaf4
    8000d1e2:	ffff                	.insn	2, 0xffff
    8000d1e4:	aafc                	.insn	2, 0xaafc
    8000d1e6:	ffff                	.insn	2, 0xffff
    8000d1e8:	abdc                	.insn	2, 0xabdc
    8000d1ea:	ffff                	.insn	2, 0xffff
    8000d1ec:	ad90                	.insn	2, 0xad90
    8000d1ee:	ffff                	.insn	2, 0xffff
    8000d1f0:	ae78                	.insn	2, 0xae78
    8000d1f2:	ffff                	.insn	2, 0xffff
    8000d1f4:	a56c                	.insn	2, 0xa56c
    8000d1f6:	ffff                	.insn	2, 0xffff
    8000d1f8:	a56c                	.insn	2, 0xa56c
    8000d1fa:	ffff                	.insn	2, 0xffff
    8000d1fc:	b01c                	.insn	2, 0xb01c
    8000d1fe:	ffff                	.insn	2, 0xffff
    8000d200:	a56c                	.insn	2, 0xa56c
    8000d202:	ffff                	.insn	2, 0xffff
    8000d204:	a56c                	.insn	2, 0xa56c
    8000d206:	ffff                	.insn	2, 0xffff
    8000d208:	acbc                	.insn	2, 0xacbc
    8000d20a:	ffff                	.insn	2, 0xffff
    8000d20c:	a56c                	.insn	2, 0xa56c
    8000d20e:	ffff                	.insn	2, 0xffff
    8000d210:	a56c                	.insn	2, 0xa56c
    8000d212:	ffff                	.insn	2, 0xffff
    8000d214:	a56c                	.insn	2, 0xa56c
    8000d216:	ffff                	.insn	2, 0xffff
    8000d218:	a56c                	.insn	2, 0xa56c
    8000d21a:	ffff                	.insn	2, 0xffff
    8000d21c:	a56c                	.insn	2, 0xa56c
    8000d21e:	ffff                	.insn	2, 0xffff
    8000d220:	a56c                	.insn	2, 0xa56c
    8000d222:	ffff                	.insn	2, 0xffff
    8000d224:	a56c                	.insn	2, 0xa56c
    8000d226:	ffff                	.insn	2, 0xffff
    8000d228:	a56c                	.insn	2, 0xa56c
    8000d22a:	ffff                	.insn	2, 0xffff
    8000d22c:	b3fc                	.insn	2, 0xb3fc
    8000d22e:	ffff                	.insn	2, 0xffff
    8000d230:	a56c                	.insn	2, 0xa56c
    8000d232:	ffff                	.insn	2, 0xffff
    8000d234:	a56c                	.insn	2, 0xa56c
    8000d236:	ffff                	.insn	2, 0xffff
    8000d238:	a56c                	.insn	2, 0xa56c
    8000d23a:	ffff                	.insn	2, 0xffff
    8000d23c:	b220                	.insn	2, 0xb220
    8000d23e:	ffff                	.insn	2, 0xffff
    8000d240:	a56c                	.insn	2, 0xa56c
    8000d242:	ffff                	.insn	2, 0xffff
    8000d244:	b0f0                	.insn	2, 0xb0f0
    8000d246:	ffff                	.insn	2, 0xffff
    8000d248:	a56c                	.insn	2, 0xa56c
    8000d24a:	ffff                	.insn	2, 0xffff
    8000d24c:	b538                	.insn	2, 0xb538
    8000d24e:	ffff                	.insn	2, 0xffff
    8000d250:	a56c                	.insn	2, 0xa56c
    8000d252:	ffff                	.insn	2, 0xffff
    8000d254:	b648                	.insn	2, 0xb648
    8000d256:	ffff                	.insn	2, 0xffff
    8000d258:	a56c                	.insn	2, 0xa56c
    8000d25a:	ffff                	.insn	2, 0xffff
    8000d25c:	0000                	.insn	2, 0x
	...

000000008000d260 <softfloat_approxRecip_1k1s>:
    8000d260:	f0f1                	.insn	2, 0xf0f1
    8000d262:	d62c                	.insn	2, 0xd62c
    8000d264:	bfa1                	.insn	2, 0xbfa1
    8000d266:	9c0aac77          	.insn	4, 0x9c0aac77
    8000d26a:	81858ddb          	.insn	4, 0x81858ddb
    8000d26e:	76ba                	.insn	2, 0x76ba
    8000d270:	64d46d3b          	.insn	4, 0x64d46d3b
    8000d274:	5d5c                	.insn	2, 0x5d5c
    8000d276:	56b1                	.insn	2, 0x56b1
    8000d278:	50b6                	.insn	2, 0x50b6
    8000d27a:	4b55                	.insn	2, 0x4b55
    8000d27c:	4679                	.insn	2, 0x4679
    8000d27e:	4211                	.insn	2, 0x4211

000000008000d280 <softfloat_approxRecip_1k0s>:
    8000d280:	ffc4                	.insn	2, 0xffc4
    8000d282:	f0be                	.insn	2, 0xf0be
    8000d284:	d76fe363          	bltu	t6,s6,8000c7ea <syscall_table.1+0x112>
    8000d288:	ccad                	.insn	2, 0xccad
    8000d28a:	c2f0                	.insn	2, 0xc2f0
    8000d28c:	ba16                	.insn	2, 0xba16
    8000d28e:	b201                	.insn	2, 0xb201
    8000d290:	a3c6aa97          	auipc	s5,0xa3c6a
    8000d294:	9d7a                	.insn	2, 0x9d7a
    8000d296:	97a6                	.insn	2, 0x97a6
    8000d298:	923c                	.insn	2, 0x923c
    8000d29a:	8d32                	.insn	2, 0x8d32
    8000d29c:	887e                	.insn	2, 0x887e
    8000d29e:	          	auipc	s0,0xa5a58

000000008000d2a0 <softfloat_approxRecipSqrt_1k1s>:
    8000d2a0:	a5a5                	.insn	2, 0xa5a5
    8000d2a2:	ea42                	.insn	2, 0xea42
    8000d2a4:	8c21                	.insn	2, 0x8c21
    8000d2a6:	c62d                	.insn	2, 0xc62d
    8000d2a8:	aa7f788f          	.insn	4, 0xaa7f788f
    8000d2ac:	6928                	.insn	2, 0x6928
    8000d2ae:	94b6                	.insn	2, 0x94b6
    8000d2b0:	83355cc7          	.insn	4, 0x83355cc7
    8000d2b4:	52a6                	.insn	2, 0x52a6
    8000d2b6:	74e2                	.insn	2, 0x74e2
    8000d2b8:	4a3e                	.insn	2, 0x4a3e
    8000d2ba:	68fe                	.insn	2, 0x68fe
    8000d2bc:	5efd432b          	.insn	4, 0x5efd432b

000000008000d2c0 <softfloat_approxRecipSqrt_1k0s>:
    8000d2c0:	b4c9                	.insn	2, 0xb4c9
    8000d2c2:	aa7dffab          	.insn	4, 0xaa7dffab
    8000d2c6:	f11c                	.insn	2, 0xf11c
    8000d2c8:	a1c5                	.insn	2, 0xa1c5
    8000d2ca:	9a43e4c7          	.insn	4, 0x9a43e4c7
    8000d2ce:	da29                	.insn	2, 0xda29
    8000d2d0:	93b5                	.insn	2, 0x93b5
    8000d2d2:	d0e5                	.insn	2, 0xd0e5
    8000d2d4:	8ded                	.insn	2, 0x8ded
    8000d2d6:	88c6c8b7          	lui	a7,0x88c6c
    8000d2da:	c16d                	.insn	2, 0xc16d
    8000d2dc:	8424                	.insn	2, 0x8424
    8000d2de:	bae1                	.insn	2, 0xbae1

000000008000d2e0 <softfloat_countLeadingZeros8>:
    8000d2e0:	0708                	.insn	2, 0x0708
    8000d2e2:	0606                	.insn	2, 0x0606
    8000d2e4:	0505                	.insn	2, 0x0505
    8000d2e6:	0505                	.insn	2, 0x0505
    8000d2e8:	0404                	.insn	2, 0x0404
    8000d2ea:	0404                	.insn	2, 0x0404
    8000d2ec:	0404                	.insn	2, 0x0404
    8000d2ee:	0404                	.insn	2, 0x0404
    8000d2f0:	03030303          	lb	t1,48(t1)
    8000d2f4:	03030303          	lb	t1,48(t1)
    8000d2f8:	03030303          	lb	t1,48(t1)
    8000d2fc:	03030303          	lb	t1,48(t1)
    8000d300:	0202                	.insn	2, 0x0202
    8000d302:	0202                	.insn	2, 0x0202
    8000d304:	0202                	.insn	2, 0x0202
    8000d306:	0202                	.insn	2, 0x0202
    8000d308:	0202                	.insn	2, 0x0202
    8000d30a:	0202                	.insn	2, 0x0202
    8000d30c:	0202                	.insn	2, 0x0202
    8000d30e:	0202                	.insn	2, 0x0202
    8000d310:	0202                	.insn	2, 0x0202
    8000d312:	0202                	.insn	2, 0x0202
    8000d314:	0202                	.insn	2, 0x0202
    8000d316:	0202                	.insn	2, 0x0202
    8000d318:	0202                	.insn	2, 0x0202
    8000d31a:	0202                	.insn	2, 0x0202
    8000d31c:	0202                	.insn	2, 0x0202
    8000d31e:	0202                	.insn	2, 0x0202
    8000d320:	0101                	.insn	2, 0x0101
    8000d322:	0101                	.insn	2, 0x0101
    8000d324:	0101                	.insn	2, 0x0101
    8000d326:	0101                	.insn	2, 0x0101
    8000d328:	0101                	.insn	2, 0x0101
    8000d32a:	0101                	.insn	2, 0x0101
    8000d32c:	0101                	.insn	2, 0x0101
    8000d32e:	0101                	.insn	2, 0x0101
    8000d330:	0101                	.insn	2, 0x0101
    8000d332:	0101                	.insn	2, 0x0101
    8000d334:	0101                	.insn	2, 0x0101
    8000d336:	0101                	.insn	2, 0x0101
    8000d338:	0101                	.insn	2, 0x0101
    8000d33a:	0101                	.insn	2, 0x0101
    8000d33c:	0101                	.insn	2, 0x0101
    8000d33e:	0101                	.insn	2, 0x0101
    8000d340:	0101                	.insn	2, 0x0101
    8000d342:	0101                	.insn	2, 0x0101
    8000d344:	0101                	.insn	2, 0x0101
    8000d346:	0101                	.insn	2, 0x0101
    8000d348:	0101                	.insn	2, 0x0101
    8000d34a:	0101                	.insn	2, 0x0101
    8000d34c:	0101                	.insn	2, 0x0101
    8000d34e:	0101                	.insn	2, 0x0101
    8000d350:	0101                	.insn	2, 0x0101
    8000d352:	0101                	.insn	2, 0x0101
    8000d354:	0101                	.insn	2, 0x0101
    8000d356:	0101                	.insn	2, 0x0101
    8000d358:	0101                	.insn	2, 0x0101
    8000d35a:	0101                	.insn	2, 0x0101
    8000d35c:	0101                	.insn	2, 0x0101
    8000d35e:	0101                	.insn	2, 0x0101
	...
    8000d3e0:	edbc                	.insn	2, 0xedbc
    8000d3e2:	ffff                	.insn	2, 0xffff
    8000d3e4:	ed34                	.insn	2, 0xed34
    8000d3e6:	ffff                	.insn	2, 0xffff
    8000d3e8:	ec18                	.insn	2, 0xec18
    8000d3ea:	ffff                	.insn	2, 0xffff
    8000d3ec:	ec18                	.insn	2, 0xec18
    8000d3ee:	ffff                	.insn	2, 0xffff
    8000d3f0:	ec18                	.insn	2, 0xec18
    8000d3f2:	ffff                	.insn	2, 0xffff
    8000d3f4:	ec18                	.insn	2, 0xec18
    8000d3f6:	ffff                	.insn	2, 0xffff
    8000d3f8:	ec18                	.insn	2, 0xec18
    8000d3fa:	ffff                	.insn	2, 0xffff
    8000d3fc:	ec18                	.insn	2, 0xec18
    8000d3fe:	ffff                	.insn	2, 0xffff
    8000d400:	ec18                	.insn	2, 0xec18
    8000d402:	ffff                	.insn	2, 0xffff
    8000d404:	ed20                	.insn	2, 0xed20
    8000d406:	ffff                	.insn	2, 0xffff
    8000d408:	ec18                	.insn	2, 0xec18
    8000d40a:	ffff                	.insn	2, 0xffff
    8000d40c:	ec18                	.insn	2, 0xec18
    8000d40e:	ffff                	.insn	2, 0xffff
    8000d410:	ec18                	.insn	2, 0xec18
    8000d412:	ffff                	.insn	2, 0xffff
    8000d414:	ecf4                	.insn	2, 0xecf4
    8000d416:	ffff                	.insn	2, 0xffff
    8000d418:	ec18                	.insn	2, 0xec18
    8000d41a:	ffff                	.insn	2, 0xffff
    8000d41c:	ec18                	.insn	2, 0xec18
    8000d41e:	ffff                	.insn	2, 0xffff
    8000d420:	ecac                	.insn	2, 0xecac
    8000d422:	ffff                	.insn	2, 0xffff
    8000d424:	ec18                	.insn	2, 0xec18
    8000d426:	ffff                	.insn	2, 0xffff
    8000d428:	ec18                	.insn	2, 0xec18
    8000d42a:	ffff                	.insn	2, 0xffff
    8000d42c:	ec18                	.insn	2, 0xec18
    8000d42e:	ffff                	.insn	2, 0xffff
    8000d430:	ec18                	.insn	2, 0xec18
    8000d432:	ffff                	.insn	2, 0xffff
    8000d434:	ec50                	.insn	2, 0xec50
    8000d436:	ffff                	.insn	2, 0xffff
    8000d438:	63617473          	csrrc	s0,0x636,2
    8000d43c:	6f625f6b          	.insn	4, 0x6f625f6b
    8000d440:	7474                	.insn	2, 0x7474
    8000d442:	21206d6f          	jal	s10,80013654 <hart_phandles+0x57c>
    8000d446:	203d                	.insn	2, 0x203d
    8000d448:	7528                	.insn	2, 0x7528
    8000d44a:	6e69                	.insn	2, 0x6e69
    8000d44c:	7074                	.insn	2, 0x7074
    8000d44e:	7274                	.insn	2, 0x7274
    8000d450:	745f 2d29 0031      	.insn	6, 0x00312d29745f
	...
    8000d45e:	0000                	.insn	2, 0x
    8000d460:	7261                	.insn	2, 0x7261
    8000d462:	6d207367          	.insn	4, 0x6d207367
    8000d466:	7375                	.insn	2, 0x7375
    8000d468:	2074                	.insn	2, 0x2074
    8000d46a:	6f6e                	.insn	2, 0x6f6e
    8000d46c:	2074                	.insn	2, 0x2074
    8000d46e:	7865                	.insn	2, 0x7865
    8000d470:	64656563          	bltu	a0,t1,8000daba <softfloat_countLeadingZeros8+0x7da>
    8000d474:	2520                	.insn	2, 0x2520
    8000d476:	2064                	.insn	2, 0x2064
    8000d478:	7962                	.insn	2, 0x7962
    8000d47a:	6574                	.insn	2, 0x6574
    8000d47c:	00000a73          	.insn	4, 0x0a73
    8000d480:	7250                	.insn	2, 0x7250
    8000d482:	2079786f          	jal	a6,800a4e88 <_end+0x90e88>
    8000d486:	6e72656b          	.insn	4, 0x6e72656b
    8000d48a:	6c65                	.insn	2, 0x6c65
    8000d48c:	0a0a                	.insn	2, 0x0a0a
    8000d48e:	0000                	.insn	2, 0x
    8000d490:	7375                	.insn	2, 0x7375
    8000d492:	6761                	.insn	2, 0x6761
    8000d494:	3a65                	.insn	2, 0x3a65
    8000d496:	7020                	.insn	2, 0x7020
    8000d498:	705b206b          	.insn	4, 0x705b206b
    8000d49c:	706f206b          	.insn	4, 0x706f206b
    8000d4a0:	6974                	.insn	2, 0x6974
    8000d4a2:	5d736e6f          	jal	t3,80044278 <_end+0x30278>
    8000d4a6:	3c20                	.insn	2, 0x3c20
    8000d4a8:	7375                	.insn	2, 0x7375
    8000d4aa:	7265                	.insn	2, 0x7265
    8000d4ac:	7020                	.insn	2, 0x7020
    8000d4ae:	6f72                	.insn	2, 0x6f72
    8000d4b0:	6d617267          	.insn	4, 0x6d617267
    8000d4b4:	203e                	.insn	2, 0x203e
    8000d4b6:	6f72705b          	.insn	4, 0x6f72705b
    8000d4ba:	6d617267          	.insn	4, 0x6d617267
    8000d4be:	6f20                	.insn	2, 0x6f20
    8000d4c0:	7470                	.insn	2, 0x7470
    8000d4c2:	6f69                	.insn	2, 0x6f69
    8000d4c4:	736e                	.insn	2, 0x736e
    8000d4c6:	0a5d                	.insn	2, 0x0a5d
	...
    8000d4d0:	6974704f          	.insn	4, 0x6974704f
    8000d4d4:	3a736e6f          	jal	t3,8004407a <_end+0x3007a>
    8000d4d8:	000a                	.insn	2, 0x000a
    8000d4da:	0000                	.insn	2, 0x
    8000d4dc:	0000                	.insn	2, 0x
    8000d4de:	0000                	.insn	2, 0x
    8000d4e0:	2020                	.insn	2, 0x2020
    8000d4e2:	682d                	.insn	2, 0x682d
    8000d4e4:	202c                	.insn	2, 0x202c
    8000d4e6:	2d2d                	.insn	2, 0x2d2d
    8000d4e8:	6568                	.insn	2, 0x6568
    8000d4ea:	706c                	.insn	2, 0x706c
    8000d4ec:	2020                	.insn	2, 0x2020
    8000d4ee:	2020                	.insn	2, 0x2020
    8000d4f0:	2020                	.insn	2, 0x2020
    8000d4f2:	2020                	.insn	2, 0x2020
    8000d4f4:	2020                	.insn	2, 0x2020
    8000d4f6:	2020                	.insn	2, 0x2020
    8000d4f8:	7250                	.insn	2, 0x7250
    8000d4fa:	6e69                	.insn	2, 0x6e69
    8000d4fc:	2074                	.insn	2, 0x2074
    8000d4fe:	6874                	.insn	2, 0x6874
    8000d500:	7369                	.insn	2, 0x7369
    8000d502:	6820                	.insn	2, 0x6820
    8000d504:	6c65                	.insn	2, 0x6c65
    8000d506:	2070                	.insn	2, 0x2070
    8000d508:	656d                	.insn	2, 0x656d
    8000d50a:	67617373          	csrrc	t1,0x676,2
    8000d50e:	0a65                	.insn	2, 0x0a65
	...
    8000d518:	2020                	.insn	2, 0x2020
    8000d51a:	702d                	.insn	2, 0x702d
    8000d51c:	2020                	.insn	2, 0x2020
    8000d51e:	2020                	.insn	2, 0x2020
    8000d520:	2020                	.insn	2, 0x2020
    8000d522:	2020                	.insn	2, 0x2020
    8000d524:	2020                	.insn	2, 0x2020
    8000d526:	2020                	.insn	2, 0x2020
    8000d528:	2020                	.insn	2, 0x2020
    8000d52a:	2020                	.insn	2, 0x2020
    8000d52c:	2020                	.insn	2, 0x2020
    8000d52e:	2020                	.insn	2, 0x2020
    8000d530:	6944                	.insn	2, 0x6944
    8000d532:	6c626173          	csrrs	sp,0x6c6,4
    8000d536:	2065                	.insn	2, 0x2065
    8000d538:	642d6e6f          	jal	t3,800e3b7a <_end+0xcfb7a>
    8000d53c:	6d65                	.insn	2, 0x6d65
    8000d53e:	6e61                	.insn	2, 0x6e61
    8000d540:	2064                	.insn	2, 0x2064
    8000d542:	7270                	.insn	2, 0x7270
    8000d544:	6172676f          	jal	a4,8003435a <_end+0x2035a>
    8000d548:	206d                	.insn	2, 0x206d
    8000d54a:	6170                	.insn	2, 0x6170
    8000d54c:	676e6967          	.insn	4, 0x676e6967
    8000d550:	000a                	.insn	2, 0x000a
    8000d552:	0000                	.insn	2, 0x
    8000d554:	0000                	.insn	2, 0x
    8000d556:	0000                	.insn	2, 0x
    8000d558:	2020                	.insn	2, 0x2020
    8000d55a:	732d                	.insn	2, 0x732d
    8000d55c:	2020                	.insn	2, 0x2020
    8000d55e:	2020                	.insn	2, 0x2020
    8000d560:	2020                	.insn	2, 0x2020
    8000d562:	2020                	.insn	2, 0x2020
    8000d564:	2020                	.insn	2, 0x2020
    8000d566:	2020                	.insn	2, 0x2020
    8000d568:	2020                	.insn	2, 0x2020
    8000d56a:	2020                	.insn	2, 0x2020
    8000d56c:	2020                	.insn	2, 0x2020
    8000d56e:	2020                	.insn	2, 0x2020
    8000d570:	7250                	.insn	2, 0x7250
    8000d572:	6e69                	.insn	2, 0x6e69
    8000d574:	2074                	.insn	2, 0x2074
    8000d576:	6c637963          	bgeu	t1,t1,8000dc48 <softfloat_countLeadingZeros8+0x968>
    8000d57a:	7365                	.insn	2, 0x7365
    8000d57c:	7520                	.insn	2, 0x7520
    8000d57e:	6f70                	.insn	2, 0x6f70
    8000d580:	206e                	.insn	2, 0x206e
    8000d582:	6574                	.insn	2, 0x6574
    8000d584:	6d72                	.insn	2, 0x6d72
    8000d586:	6e69                	.insn	2, 0x6e69
    8000d588:	7461                	.insn	2, 0x7461
    8000d58a:	6f69                	.insn	2, 0x6f69
    8000d58c:	0a6e                	.insn	2, 0x0a6e
    8000d58e:	0000                	.insn	2, 0x
    8000d590:	2d2d                	.insn	2, 0x2d2d
    8000d592:	6568                	.insn	2, 0x6568
    8000d594:	706c                	.insn	2, 0x706c
    8000d596:	0000                	.insn	2, 0x
    8000d598:	2d2d                	.insn	2, 0x2d2d
    8000d59a:	6172                	.insn	2, 0x6172
    8000d59c:	646e                	.insn	2, 0x646e
    8000d59e:	7a696d6f          	jal	s10,800a3d44 <_end+0x8fd44>
    8000d5a2:	2d65                	.insn	2, 0x2d65
    8000d5a4:	616d                	.insn	2, 0x616d
    8000d5a6:	7070                	.insn	2, 0x7070
    8000d5a8:	6e69                	.insn	2, 0x6e69
    8000d5aa:	00000067          	jr	zero # 0 <MEM_START-0x80000000>
    8000d5ae:	0000                	.insn	2, 0x
    8000d5b0:	6e75                	.insn	2, 0x6e75
    8000d5b2:	6572                	.insn	2, 0x6572
    8000d5b4:	6e676f63          	bltu	a4,t1,8000dcb2 <softfloat_countLeadingZeros8+0x9d2>
    8000d5b8:	7a69                	.insn	2, 0x7a69
    8000d5ba:	6465                	.insn	2, 0x6465
    8000d5bc:	6f20                	.insn	2, 0x6f20
    8000d5be:	7470                	.insn	2, 0x7470
    8000d5c0:	6f69                	.insn	2, 0x6f69
    8000d5c2:	3a6e                	.insn	2, 0x3a6e
    8000d5c4:	6020                	.insn	2, 0x6020
    8000d5c6:	7325                	.insn	2, 0x7325
    8000d5c8:	00000a27          	.insn	4, 0x0a27
    8000d5cc:	0000                	.insn	2, 0x
    8000d5ce:	0000                	.insn	2, 0x
    8000d5d0:	6574                	.insn	2, 0x6574
    8000d5d2:	6c6c                	.insn	2, 0x6c6c
    8000d5d4:	6d20                	.insn	2, 0x6d20
    8000d5d6:	2065                	.insn	2, 0x2065
    8000d5d8:	74616877          	.insn	4, 0x74616877
    8000d5dc:	4520                	.insn	2, 0x4520
    8000d5de:	464c                	.insn	2, 0x464c
    8000d5e0:	7420                	.insn	2, 0x7420
    8000d5e2:	6f6c206f          	j	800cfcd8 <_end+0xbbcd8>
    8000d5e6:	6461                	.insn	2, 0x6461
    8000d5e8:	0a21                	.insn	2, 0x0a21
    8000d5ea:	0000                	.insn	2, 0x
    8000d5ec:	0000                	.insn	2, 0x
    8000d5ee:	0000                	.insn	2, 0x
    8000d5f0:	7270                	.insn	2, 0x7270
    8000d5f2:	7665                	.insn	2, 0x7665
    8000d5f4:	3e20                	.insn	2, 0x3e20
    8000d5f6:	3020                	.insn	2, 0x3020
	...
    8000d600:	5349                	.insn	2, 0x5349
    8000d602:	455f 464c 3436      	.insn	6, 0x3436464c455f
    8000d608:	6528                	.insn	2, 0x6528
    8000d60a:	2968                	.insn	2, 0x2968
    8000d60c:	0000                	.insn	2, 0x
    8000d60e:	0000                	.insn	2, 0x
    8000d610:	2e2e                	.insn	2, 0x2e2e
    8000d612:	2f6b702f          	.insn	4, 0x2f6b702f
    8000d616:	6c65                	.insn	2, 0x6c65
    8000d618:	2e66                	.insn	2, 0x2e66
    8000d61a:	00000063          	beqz	zero,8000d61a <softfloat_countLeadingZeros8+0x33a>
    8000d61e:	0000                	.insn	2, 0x
    8000d620:	7325                	.insn	2, 0x7325
    8000d622:	253a                	.insn	2, 0x253a
    8000d624:	3a64                	.insn	2, 0x3a64
    8000d626:	6120                	.insn	2, 0x6120
    8000d628:	72657373          	csrrc	t1,mhpmevent6h,10
    8000d62c:	6974                	.insn	2, 0x6974
    8000d62e:	66206e6f          	jal	t3,80013c90 <hart_phandles+0xbb8>
    8000d632:	6961                	.insn	2, 0x6961
    8000d634:	656c                	.insn	2, 0x656c
    8000d636:	3a64                	.insn	2, 0x3a64
    8000d638:	2520                	.insn	2, 0x2520
    8000d63a:	00000a73          	.insn	4, 0x0a73
    8000d63e:	0000                	.insn	2, 0x
    8000d640:	2821                	.insn	2, 0x2821
    8000d642:	6865                	.insn	2, 0x6865
    8000d644:	652e                	.insn	2, 0x652e
    8000d646:	665f 616c 7367      	.insn	6, 0x7367616c665f
    8000d64c:	2620                	.insn	2, 0x2620
    8000d64e:	4520                	.insn	2, 0x4520
    8000d650:	5f46                	.insn	2, 0x5f46
    8000d652:	4952                	.insn	2, 0x4952
    8000d654:	5f564353          	.insn	4, 0x5f564353
    8000d658:	5652                	.insn	2, 0x5652
    8000d65a:	00002943          	.insn	4, 0x2943
    8000d65e:	0000                	.insn	2, 0x
    8000d660:	6f6e                	.insn	2, 0x6f6e
    8000d662:	2074                	.insn	2, 0x2074
    8000d664:	2061                	.insn	2, 0x2061
    8000d666:	74617473          	csrrc	s0,0x746,2
    8000d66a:	6369                	.insn	2, 0x6369
    8000d66c:	6c61                	.insn	2, 0x6c61
    8000d66e:	796c                	.insn	2, 0x796c
    8000d670:	6c20                	.insn	2, 0x6c20
    8000d672:	6e69                	.insn	2, 0x6e69
    8000d674:	2064656b          	.insn	4, 0x2064656b
    8000d678:	4c45                	.insn	2, 0x4c45
    8000d67a:	2046                	.insn	2, 0x2046
    8000d67c:	7270                	.insn	2, 0x7270
    8000d67e:	6172676f          	jal	a4,80034494 <_end+0x20494>
    8000d682:	0a6d                	.insn	2, 0x0a6d
    8000d684:	0000                	.insn	2, 0x
    8000d686:	0000                	.insn	2, 0x
    8000d688:	6c756f63          	bltu	a0,t2,8000dd66 <softfloat_countLeadingZeros8+0xa86>
    8000d68c:	6e64                	.insn	2, 0x6e64
    8000d68e:	6f207427          	.insn	4, 0x6f207427
    8000d692:	6570                	.insn	2, 0x6570
    8000d694:	206e                	.insn	2, 0x206e
    8000d696:	4c45                	.insn	2, 0x4c45
    8000d698:	2046                	.insn	2, 0x2046
    8000d69a:	7270                	.insn	2, 0x7270
    8000d69c:	6172676f          	jal	a4,800344b2 <_end+0x204b2>
    8000d6a0:	3a6d                	.insn	2, 0x3a6d
    8000d6a2:	2520                	.insn	2, 0x2520
    8000d6a4:	000a2173          	csrrs	sp,ustatus,s4
    8000d6a8:	7325                	.insn	2, 0x7325
    8000d6aa:	2520                	.insn	2, 0x2520
    8000d6ac:	786c                	.insn	2, 0x786c
    8000d6ae:	6325                	.insn	2, 0x6325
	...
    8000d6b8:	6370                	.insn	2, 0x6370
    8000d6ba:	2520                	.insn	2, 0x2520
    8000d6bc:	786c                	.insn	2, 0x786c
    8000d6be:	7620                	.insn	2, 0x7620
    8000d6c0:	2f61                	.insn	2, 0x2f61
    8000d6c2:	6e69                	.insn	2, 0x6e69
    8000d6c4:	25207473          	csrrc	s0,0x252,0
    8000d6c8:	786c                	.insn	2, 0x786c
    8000d6ca:	7320                	.insn	2, 0x7320
    8000d6cc:	2072                	.insn	2, 0x2072
    8000d6ce:	6c25                	.insn	2, 0x6c25
    8000d6d0:	0a78                	.insn	2, 0x0a78
    8000d6d2:	0000                	.insn	2, 0x
    8000d6d4:	0000                	.insn	2, 0x
    8000d6d6:	0000                	.insn	2, 0x
    8000d6d8:	7361                	.insn	2, 0x7361
    8000d6da:	74726573          	csrrs	a0,0x747,4
    8000d6de:	6f69                	.insn	2, 0x6f69
    8000d6e0:	206e                	.insn	2, 0x206e
    8000d6e2:	6166                	.insn	2, 0x6166
    8000d6e4:	6c69                	.insn	2, 0x6c69
    8000d6e6:	6465                	.insn	2, 0x6465
    8000d6e8:	4020                	.insn	2, 0x4020
    8000d6ea:	2520                	.insn	2, 0x2520
    8000d6ec:	3a70                	.insn	2, 0x3a70
    8000d6ee:	2520                	.insn	2, 0x2520
    8000d6f0:	00000a73          	.insn	4, 0x0a73
    8000d6f4:	0000                	.insn	2, 0x
    8000d6f6:	0000                	.insn	2, 0x
    8000d6f8:	2074754f          	.insn	4, 0x2074754f
    8000d6fc:	6d20666f          	jal	a2,80013dce <hart_phandles+0xcf6>
    8000d700:	6d65                	.insn	2, 0x6d65
    8000d702:	2179726f          	jal	tp,800a5118 <_end+0x91118>
    8000d706:	000a                	.insn	2, 0x000a
    8000d708:	6572                	.insn	2, 0x6572
    8000d70a:	2074                	.insn	2, 0x2074
    8000d70c:	203e                	.insn	2, 0x203e
    8000d70e:	0030                	.insn	2, 0x0030
    8000d710:	7470                	.insn	2, 0x7470
    8000d712:	0065                	.insn	2, 0x0065
    8000d714:	0000                	.insn	2, 0x
    8000d716:	0000                	.insn	2, 0x
    8000d718:	5f5f 6168 646e      	.insn	6, 0x646e61685f5f
    8000d71e:	656c                	.insn	2, 0x656c
    8000d720:	705f 6761 5f65      	.insn	6, 0x5f656761705f
    8000d726:	6166                	.insn	2, 0x6166
    8000d728:	6c75                	.insn	2, 0x6c75
    8000d72a:	2874                	.insn	2, 0x2874
    8000d72c:	2c61                	.insn	2, 0x2c61
    8000d72e:	7020                	.insn	2, 0x7020
    8000d730:	6f72                	.insn	2, 0x6f72
    8000d732:	2974                	.insn	2, 0x2974
    8000d734:	3d20                	.insn	2, 0x3d20
    8000d736:	203d                	.insn	2, 0x203d
    8000d738:	0030                	.insn	2, 0x0030
    8000d73a:	0000                	.insn	2, 0x
    8000d73c:	0000                	.insn	2, 0x
    8000d73e:	0000                	.insn	2, 0x
    8000d740:	7628                	.insn	2, 0x7628
    8000d742:	6461                	.insn	2, 0x6461
    8000d744:	7264                	.insn	2, 0x7264
    8000d746:	7c20                	.insn	2, 0x7c20
    8000d748:	7020                	.insn	2, 0x7020
    8000d74a:	6461                	.insn	2, 0x6461
    8000d74c:	7264                	.insn	2, 0x7264
    8000d74e:	7c20                	.insn	2, 0x7c20
    8000d750:	6c20                	.insn	2, 0x6c20
    8000d752:	6e65                	.insn	2, 0x6e65
    8000d754:	2029                	.insn	2, 0x2029
    8000d756:	2025                	.insn	2, 0x2025
    8000d758:	656d                	.insn	2, 0x656d
    8000d75a:	61706167          	.insn	4, 0x61706167
    8000d75e:	735f6567          	.insn	4, 0x735f6567
    8000d762:	7a69                	.insn	2, 0x7a69
    8000d764:	2065                	.insn	2, 0x2065
    8000d766:	3d3d                	.insn	2, 0x3d3d
    8000d768:	3020                	.insn	2, 0x3020
    8000d76a:	0000                	.insn	2, 0x
    8000d76c:	0000                	.insn	2, 0x
    8000d76e:	0000                	.insn	2, 0x
    8000d770:	6e72654b          	.insn	4, 0x6e72654b
    8000d774:	6c65                	.insn	2, 0x6c65
    8000d776:	0000                	.insn	2, 0x
    8000d778:	7355                	.insn	2, 0x7355
    8000d77a:	7265                	.insn	2, 0x7265
    8000d77c:	0000                	.insn	2, 0x
    8000d77e:	0000                	.insn	2, 0x
    8000d780:	7325                	.insn	2, 0x7325
    8000d782:	2520                	.insn	2, 0x2520
    8000d784:	65732073          	csrs	hviprio2h,t1
    8000d788:	75616667          	.insn	4, 0x75616667
    8000d78c:	746c                	.insn	2, 0x746c
    8000d78e:	4020                	.insn	2, 0x4020
    8000d790:	2520                	.insn	2, 0x2520
    8000d792:	0a70                	.insn	2, 0x0a70
    8000d794:	0000                	.insn	2, 0x
    8000d796:	0000                	.insn	2, 0x
    8000d798:	726f7453          	.insn	4, 0x726f7453
    8000d79c:	2f65                	.insn	2, 0x2f65
    8000d79e:	4d41                	.insn	2, 0x4d41
    8000d7a0:	6361204f          	.insn	4, 0x6361204f
    8000d7a4:	73736563          	bltu	t1,s7,8000dece <softfloat_countLeadingZeros8+0xbee>
    8000d7a8:	6620                	.insn	2, 0x6620
    8000d7aa:	7561                	.insn	2, 0x7561
    8000d7ac:	746c                	.insn	2, 0x746c
    8000d7ae:	0a21                	.insn	2, 0x0a21
	...
    8000d7b8:	694d                	.insn	2, 0x694d
    8000d7ba:	696c6173          	csrrs	sp,0x696,24
    8000d7be:	64656e67          	.insn	4, 0x64656e67
    8000d7c2:	4120                	.insn	2, 0x4120
    8000d7c4:	4f4d                	.insn	2, 0x4f4d
    8000d7c6:	0a21                	.insn	2, 0x0a21
	...
    8000d7d0:	6f4c                	.insn	2, 0x6f4c
    8000d7d2:	6461                	.insn	2, 0x6461
    8000d7d4:	6120                	.insn	2, 0x6120
    8000d7d6:	73656363          	bltu	a0,s6,8000defc <softfloat_countLeadingZeros8+0xc1c>
    8000d7da:	61662073          	csrs	0x616,a2
    8000d7de:	6c75                	.insn	2, 0x6c75
    8000d7e0:	2174                	.insn	2, 0x2174
    8000d7e2:	000a                	.insn	2, 0x000a
    8000d7e4:	0000                	.insn	2, 0x
    8000d7e6:	0000                	.insn	2, 0x
    8000d7e8:	694d                	.insn	2, 0x694d
    8000d7ea:	696c6173          	csrrs	sp,0x696,24
    8000d7ee:	64656e67          	.insn	4, 0x64656e67
    8000d7f2:	4c20                	.insn	2, 0x4c20
    8000d7f4:	2164616f          	jal	sp,80053a0a <_end+0x3fa0a>
    8000d7f8:	000a                	.insn	2, 0x000a
    8000d7fa:	0000                	.insn	2, 0x
    8000d7fc:	0000                	.insn	2, 0x
    8000d7fe:	0000                	.insn	2, 0x
    8000d800:	7242                	.insn	2, 0x7242
    8000d802:	6165                	.insn	2, 0x6165
    8000d804:	696f706b          	.insn	4, 0x696f706b
    8000d808:	746e                	.insn	2, 0x746e
    8000d80a:	0a21                	.insn	2, 0x0a21
    8000d80c:	0000                	.insn	2, 0x
    8000d80e:	0000                	.insn	2, 0x
    8000d810:	6e41                	.insn	2, 0x6e41
    8000d812:	6920                	.insn	2, 0x6920
    8000d814:	6c6c                	.insn	2, 0x6c6c
    8000d816:	6765                	.insn	2, 0x6765
    8000d818:	6c61                	.insn	2, 0x6c61
    8000d81a:	6920                	.insn	2, 0x6920
    8000d81c:	736e                	.insn	2, 0x736e
    8000d81e:	7274                	.insn	2, 0x7274
    8000d820:	6375                	.insn	2, 0x6375
    8000d822:	6974                	.insn	2, 0x6974
    8000d824:	77206e6f          	jal	t3,80013f96 <hart_phandles+0xebe>
    8000d828:	7361                	.insn	2, 0x7361
    8000d82a:	6520                	.insn	2, 0x6520
    8000d82c:	6578                	.insn	2, 0x6578
    8000d82e:	65747563          	bgeu	s0,s7,8000de78 <softfloat_countLeadingZeros8+0xb98>
    8000d832:	2164                	.insn	2, 0x2164
    8000d834:	000a                	.insn	2, 0x000a
    8000d836:	0000                	.insn	2, 0x
    8000d838:	6e49                	.insn	2, 0x6e49
    8000d83a:	75727473          	csrrc	s0,0x757,4
    8000d83e:	6f697463          	bgeu	s2,s6,8000df26 <softfloat_countLeadingZeros8+0xc46>
    8000d842:	206e                	.insn	2, 0x206e
    8000d844:	6361                	.insn	2, 0x6361
    8000d846:	73736563          	bltu	t1,s7,8000df70 <softfloat_countLeadingZeros8+0xc90>
    8000d84a:	6620                	.insn	2, 0x6620
    8000d84c:	7561                	.insn	2, 0x7561
    8000d84e:	746c                	.insn	2, 0x746c
    8000d850:	0a21                	.insn	2, 0x0a21
    8000d852:	0000                	.insn	2, 0x
    8000d854:	0000                	.insn	2, 0x
    8000d856:	0000                	.insn	2, 0x
    8000d858:	694d                	.insn	2, 0x694d
    8000d85a:	696c6173          	csrrs	sp,0x696,24
    8000d85e:	64656e67          	.insn	4, 0x64656e67
    8000d862:	6920                	.insn	2, 0x6920
    8000d864:	736e                	.insn	2, 0x736e
    8000d866:	7274                	.insn	2, 0x7274
    8000d868:	6375                	.insn	2, 0x6375
    8000d86a:	6974                	.insn	2, 0x6974
    8000d86c:	61206e6f          	jal	t3,80013e7e <hart_phandles+0xda6>
    8000d870:	73656363          	bltu	a0,s6,8000df96 <softfloat_countLeadingZeros8+0xcb6>
    8000d874:	000a2173          	csrrs	sp,ustatus,s4
    8000d878:	726f7473          	csrrc	s0,mhpmevent6h,30
    8000d87c:	0065                	.insn	2, 0x0065
    8000d87e:	0000                	.insn	2, 0x
    8000d880:	6f6c                	.insn	2, 0x6f6c
    8000d882:	6461                	.insn	2, 0x6461
    8000d884:	0000                	.insn	2, 0x
    8000d886:	0000                	.insn	2, 0x
    8000d888:	6566                	.insn	2, 0x6566
    8000d88a:	6374                	.insn	2, 0x6374
    8000d88c:	0068                	.insn	2, 0x0068
    8000d88e:	0000                	.insn	2, 0x
    8000d890:	6674                	.insn	2, 0x6674
    8000d892:	3e2d                	.insn	2, 0x3e2d
    8000d894:	73756163          	bltu	a0,s7,8000dfb6 <softfloat_countLeadingZeros8+0xcd6>
    8000d898:	2065                	.insn	2, 0x2065
    8000d89a:	203c                	.insn	2, 0x203c
    8000d89c:	5241                	.insn	2, 0x5241
    8000d89e:	4152                	.insn	2, 0x4152
    8000d8a0:	5f59                	.insn	2, 0x5f59
    8000d8a2:	455a4953          	.insn	4, 0x455a4953
    8000d8a6:	7428                	.insn	2, 0x7428
    8000d8a8:	6172                	.insn	2, 0x6172
    8000d8aa:	5f70                	.insn	2, 0x5f70
    8000d8ac:	6168                	.insn	2, 0x6168
    8000d8ae:	646e                	.insn	2, 0x646e
    8000d8b0:	656c                	.insn	2, 0x656c
    8000d8b2:	7372                	.insn	2, 0x7372
    8000d8b4:	2029                	.insn	2, 0x2029
    8000d8b6:	2626                	.insn	2, 0x2626
    8000d8b8:	7420                	.insn	2, 0x7420
    8000d8ba:	6172                	.insn	2, 0x6172
    8000d8bc:	5f70                	.insn	2, 0x5f70
    8000d8be:	6168                	.insn	2, 0x6168
    8000d8c0:	646e                	.insn	2, 0x646e
    8000d8c2:	656c                	.insn	2, 0x656c
    8000d8c4:	7372                	.insn	2, 0x7372
    8000d8c6:	2d66745b          	.insn	4, 0x2d66745b
    8000d8ca:	633e                	.insn	2, 0x633e
    8000d8cc:	7561                	.insn	2, 0x7561
    8000d8ce:	005d6573          	csrrs	a0,utvec,26
    8000d8d2:	0000                	.insn	2, 0x
    8000d8d4:	0000                	.insn	2, 0x
    8000d8d6:	0000                	.insn	2, 0x
    8000d8d8:	6c25                	.insn	2, 0x6c25
    8000d8da:	646c                	.insn	2, 0x646c
    8000d8dc:	7420                	.insn	2, 0x7420
    8000d8de:	6369                	.insn	2, 0x6369
    8000d8e0:	000a736b          	.insn	4, 0x000a736b
    8000d8e4:	0000                	.insn	2, 0x
    8000d8e6:	0000                	.insn	2, 0x
    8000d8e8:	6c25                	.insn	2, 0x6c25
    8000d8ea:	646c                	.insn	2, 0x646c
    8000d8ec:	6320                	.insn	2, 0x6320
    8000d8ee:	6379                	.insn	2, 0x6379
    8000d8f0:	656c                	.insn	2, 0x656c
    8000d8f2:	00000a73          	.insn	4, 0x0a73
    8000d8f6:	0000                	.insn	2, 0x
    8000d8f8:	6c25                	.insn	2, 0x6c25
    8000d8fa:	646c                	.insn	2, 0x646c
    8000d8fc:	6920                	.insn	2, 0x6920
    8000d8fe:	736e                	.insn	2, 0x736e
    8000d900:	7274                	.insn	2, 0x7274
    8000d902:	6375                	.insn	2, 0x6375
    8000d904:	6974                	.insn	2, 0x6974
    8000d906:	0a736e6f          	jal	t3,800441ac <_end+0x301ac>
    8000d90a:	0000                	.insn	2, 0x
    8000d90c:	0000                	.insn	2, 0x
    8000d90e:	0000                	.insn	2, 0x
    8000d910:	6425                	.insn	2, 0x6425
    8000d912:	252e                	.insn	2, 0x252e
    8000d914:	2564                	.insn	2, 0x2564
    8000d916:	2064                	.insn	2, 0x2064
    8000d918:	0a495043          	.insn	4, 0x0a495043
    8000d91c:	0000                	.insn	2, 0x
    8000d91e:	0000                	.insn	2, 0x
    8000d920:	6c66                	.insn	2, 0x6c66
    8000d922:	6761                	.insn	2, 0x6761
    8000d924:	3d3d2073          	csrs	0x3d3,s10
    8000d928:	3020                	.insn	2, 0x3020
    8000d92a:	0000                	.insn	2, 0x
    8000d92c:	0000                	.insn	2, 0x
    8000d92e:	0000                	.insn	2, 0x
    8000d930:	7250                	.insn	2, 0x7250
    8000d932:	2079786f          	jal	a6,800a5338 <_end+0x91338>
    8000d936:	6e72654b          	.insn	4, 0x6e72654b
    8000d93a:	6c65                	.insn	2, 0x6c65
    8000d93c:	0000                	.insn	2, 0x
    8000d93e:	0000                	.insn	2, 0x
    8000d940:	2e34                	.insn	2, 0x2e34
    8000d942:	3531                	.insn	2, 0x3531
    8000d944:	302e                	.insn	2, 0x302e
    8000d946:	0000                	.insn	2, 0x
    8000d948:	6f50                	.insn	2, 0x6f50
    8000d94a:	20726577          	.insn	4, 0x20726577
    8000d94e:	0d66666f          	jal	a2,80073a24 <_end+0x5fa24>
    8000d952:	000a                	.insn	2, 0x000a
    8000d954:	0000                	.insn	2, 0x
    8000d956:	0000                	.insn	2, 0x
    8000d958:	2e2e                	.insn	2, 0x2e2e
    8000d95a:	63616d2f          	.insn	4, 0x63616d2f
    8000d95e:	6968                	.insn	2, 0x6968
    8000d960:	656e                	.insn	2, 0x656e
    8000d962:	72746d2f          	.insn	4, 0x72746d2f
    8000d966:	7061                	.insn	2, 0x7061
    8000d968:	632e                	.insn	2, 0x632e
    8000d96a:	0000                	.insn	2, 0x
    8000d96c:	0000                	.insn	2, 0x
    8000d96e:	0000                	.insn	2, 0x
    8000d970:	7325                	.insn	2, 0x7325
    8000d972:	253a                	.insn	2, 0x253a
    8000d974:	3a64                	.insn	2, 0x3a64
    8000d976:	6d20                	.insn	2, 0x6d20
    8000d978:	6361                	.insn	2, 0x6361
    8000d97a:	6968                	.insn	2, 0x6968
    8000d97c:	656e                	.insn	2, 0x656e
    8000d97e:	6d20                	.insn	2, 0x6d20
    8000d980:	3a65646f          	jal	s0,80063d26 <_end+0x4fd26>
    8000d984:	7520                	.insn	2, 0x7520
    8000d986:	686e                	.insn	2, 0x686e
    8000d988:	6e61                	.insn	2, 0x6e61
    8000d98a:	6c64                	.insn	2, 0x6c64
    8000d98c:	6261                	.insn	2, 0x6261
    8000d98e:	656c                	.insn	2, 0x656c
    8000d990:	7420                	.insn	2, 0x7420
    8000d992:	6172                	.insn	2, 0x6172
    8000d994:	2070                	.insn	2, 0x2070
    8000d996:	6425                	.insn	2, 0x6425
    8000d998:	4020                	.insn	2, 0x4020
    8000d99a:	2520                	.insn	2, 0x2520
    8000d99c:	0a70                	.insn	2, 0x0a70
    8000d99e:	0000                	.insn	2, 0x
    8000d9a0:	6572                	.insn	2, 0x6572
    8000d9a2:	6461                	.insn	2, 0x6461
    8000d9a4:	635f 7273 6d28      	.insn	6, 0x6d287273635f
    8000d9aa:	74617473          	csrrc	s0,0x746,2
    8000d9ae:	7375                	.insn	2, 0x7375
    8000d9b0:	2029                	.insn	2, 0x2029
    8000d9b2:	2026                	.insn	2, 0x2026
    8000d9b4:	534d                	.insn	2, 0x534d
    8000d9b6:	4154                	.insn	2, 0x4154
    8000d9b8:	5554                	.insn	2, 0x5554
    8000d9ba:	53465f53          	.insn	4, 0x53465f53
    8000d9be:	0000                	.insn	2, 0x
    8000d9c0:	2e2e                	.insn	2, 0x2e2e
    8000d9c2:	63616d2f          	.insn	4, 0x63616d2f
    8000d9c6:	6968                	.insn	2, 0x6968
    8000d9c8:	656e                	.insn	2, 0x656e
    8000d9ca:	6e696d2f          	.insn	4, 0x6e696d2f
    8000d9ce:	7469                	.insn	2, 0x7469
    8000d9d0:	632e                	.insn	2, 0x632e
    8000d9d2:	0000                	.insn	2, 0x
    8000d9d4:	0000                	.insn	2, 0x
    8000d9d6:	0000                	.insn	2, 0x
    8000d9d8:	2821                	.insn	2, 0x2821
    8000d9da:	6572                	.insn	2, 0x6572
    8000d9dc:	6461                	.insn	2, 0x6461
    8000d9de:	635f 7273 6d28      	.insn	6, 0x6d287273635f
    8000d9e4:	7369                	.insn	2, 0x7369
    8000d9e6:	2961                	.insn	2, 0x2961
    8000d9e8:	2620                	.insn	2, 0x2620
    8000d9ea:	6620                	.insn	2, 0x6620
    8000d9ec:	5f64                	.insn	2, 0x5f64
    8000d9ee:	616d                	.insn	2, 0x616d
    8000d9f0:	00296b73          	csrrs	s6,frm,18
    8000d9f4:	0000                	.insn	2, 0x
    8000d9f6:	0000                	.insn	2, 0x
    8000d9f8:	7228                	.insn	2, 0x7228
    8000d9fa:	6165                	.insn	2, 0x6165
    8000d9fc:	5f64                	.insn	2, 0x5f64
    8000d9fe:	28727363          	bgeu	tp,t2,8000dc84 <softfloat_countLeadingZeros8+0x9a4>
    8000da02:	696d                	.insn	2, 0x696d
    8000da04:	6564                	.insn	2, 0x6564
    8000da06:	656c                	.insn	2, 0x656c
    8000da08:	26202967          	.insn	4, 0x26202967
    8000da0c:	6920                	.insn	2, 0x6920
    8000da0e:	746e                	.insn	2, 0x746e
    8000da10:	7265                	.insn	2, 0x7265
    8000da12:	7572                	.insn	2, 0x7572
    8000da14:	7470                	.insn	2, 0x7470
    8000da16:	3d202973          	csrr	s2,0x3d2
    8000da1a:	203d                	.insn	2, 0x203d
    8000da1c:	6e69                	.insn	2, 0x6e69
    8000da1e:	6574                	.insn	2, 0x6574
    8000da20:	7272                	.insn	2, 0x7272
    8000da22:	7075                	.insn	2, 0x7075
    8000da24:	7374                	.insn	2, 0x7374
    8000da26:	0000                	.insn	2, 0x
    8000da28:	6572                	.insn	2, 0x6572
    8000da2a:	6461                	.insn	2, 0x6461
    8000da2c:	635f 7273 6d28      	.insn	6, 0x6d287273635f
    8000da32:	6465                	.insn	2, 0x6465
    8000da34:	6c65                	.insn	2, 0x6c65
    8000da36:	6765                	.insn	2, 0x6765
    8000da38:	2029                	.insn	2, 0x2029
    8000da3a:	3d3d                	.insn	2, 0x3d3d
    8000da3c:	6520                	.insn	2, 0x6520
    8000da3e:	6378                	.insn	2, 0x6378
    8000da40:	7065                	.insn	2, 0x7065
    8000da42:	6974                	.insn	2, 0x6974
    8000da44:	00736e6f          	jal	t3,8004424a <_end+0x3024a>
    8000da48:	6262                	.insn	2, 0x6262
    8000da4a:	206c                	.insn	2, 0x206c
    8000da4c:	6f6c                	.insn	2, 0x6f6c
    8000da4e:	6461                	.insn	2, 0x6461
    8000da50:	7265                	.insn	2, 0x7265
    8000da52:	0a0d                	.insn	2, 0x0a0d
    8000da54:	0000                	.insn	2, 0x
    8000da56:	0000                	.insn	2, 0x
    8000da58:	5246                	.insn	2, 0x5246
    8000da5a:	4f484d4f          	.insn	4, 0x4f484d4f
    8000da5e:	445f5453          	.insn	4, 0x445f5453
    8000da62:	5645                	.insn	2, 0x5645
    8000da64:	6628                	.insn	2, 0x6628
    8000da66:	2968                	.insn	2, 0x2968
    8000da68:	3d20                	.insn	2, 0x3d20
    8000da6a:	203d                	.insn	2, 0x203d
    8000da6c:	0031                	.insn	2, 0x0031
    8000da6e:	0000                	.insn	2, 0x
    8000da70:	2e2e                	.insn	2, 0x2e2e
    8000da72:	63616d2f          	.insn	4, 0x63616d2f
    8000da76:	6968                	.insn	2, 0x6968
    8000da78:	656e                	.insn	2, 0x656e
    8000da7a:	6974682f          	.insn	4, 0x6974682f
    8000da7e:	2e66                	.insn	2, 0x2e66
    8000da80:	00000063          	beqz	zero,8000da80 <softfloat_countLeadingZeros8+0x7a0>
    8000da84:	0000                	.insn	2, 0x
    8000da86:	0000                	.insn	2, 0x
    8000da88:	0030                	.insn	2, 0x0030
    8000da8a:	0000                	.insn	2, 0x
    8000da8c:	0000                	.insn	2, 0x
    8000da8e:	0000                	.insn	2, 0x
    8000da90:	706d6f63          	bltu	s10,t1,8000e1ae <tohost+0x1a6>
    8000da94:	7461                	.insn	2, 0x7461
    8000da96:	6269                	.insn	2, 0x6269
    8000da98:	656c                	.insn	2, 0x656c
    8000da9a:	0000                	.insn	2, 0x
    8000da9c:	0000                	.insn	2, 0x
    8000da9e:	0000                	.insn	2, 0x
    8000daa0:	6375                	.insn	2, 0x6375
    8000daa2:	2c62                	.insn	2, 0x2c62
    8000daa4:	7468                	.insn	2, 0x7468
    8000daa6:	6669                	.insn	2, 0x6669
    8000daa8:	0030                	.insn	2, 0x0030
    8000daaa:	0000                	.insn	2, 0x
    8000daac:	0000                	.insn	2, 0x
    8000daae:	0000                	.insn	2, 0x
    8000dab0:	69666973          	csrrs	s2,0x696,12
    8000dab4:	6576                	.insn	2, 0x6576
    8000dab6:	752c                	.insn	2, 0x752c
    8000dab8:	7261                	.insn	2, 0x7261
    8000daba:	3074                	.insn	2, 0x3074
    8000dabc:	0000                	.insn	2, 0x
    8000dabe:	0000                	.insn	2, 0x
    8000dac0:	6572                	.insn	2, 0x6572
    8000dac2:	00000067          	jr	zero # 0 <MEM_START-0x80000000>
    8000dac6:	0000                	.insn	2, 0x
    8000dac8:	736e                	.insn	2, 0x736e
    8000daca:	3631                	.insn	2, 0x3631
    8000dacc:	3535                	.insn	2, 0x3535
    8000dace:	6130                	.insn	2, 0x6130
	...
    8000dad8:	736e                	.insn	2, 0x736e
    8000dada:	3631                	.insn	2, 0x3631
    8000dadc:	00303537          	lui	a0,0x303
    8000dae0:	6572                	.insn	2, 0x6572
    8000dae2:	68732d67          	.insn	4, 0x68732d67
    8000dae6:	6669                	.insn	2, 0x6669
    8000dae8:	0074                	.insn	2, 0x0074
    8000daea:	0000                	.insn	2, 0x
    8000daec:	0000                	.insn	2, 0x
    8000daee:	0000                	.insn	2, 0x
    8000daf0:	6572                	.insn	2, 0x6572
    8000daf2:	666f2d67          	.insn	4, 0x666f2d67
    8000daf6:	7366                	.insn	2, 0x7366
    8000daf8:	7465                	.insn	2, 0x7465
    8000dafa:	0000                	.insn	2, 0x
    8000dafc:	0000                	.insn	2, 0x
    8000dafe:	0000                	.insn	2, 0x
    8000db00:	72727563          	bgeu	tp,t2,8000e22a <tohost+0x222>
    8000db04:	6e65                	.insn	2, 0x6e65
    8000db06:	2d74                	.insn	2, 0x2d74
    8000db08:	65657073          	csrc	hviprio1h,10
    8000db0c:	0064                	.insn	2, 0x0064
    8000db0e:	0000                	.insn	2, 0x
    8000db10:	636f6c63          	bltu	t5,s6,8000e148 <tohost+0x140>
    8000db14:	72662d6b          	.insn	4, 0x72662d6b
    8000db18:	7165                	.insn	2, 0x7165
    8000db1a:	6575                	.insn	2, 0x6575
    8000db1c:	636e                	.insn	2, 0x636e
    8000db1e:	0079                	.insn	2, 0x0079
    8000db20:	696c                	.insn	2, 0x696c
    8000db22:	6574                	.insn	2, 0x6574
    8000db24:	2c78                	.insn	2, 0x2c78
    8000db26:	6175                	.insn	2, 0x6175
    8000db28:	7472                	.insn	2, 0x7472
    8000db2a:	0030                	.insn	2, 0x0030
    8000db2c:	0000                	.insn	2, 0x
    8000db2e:	0000                	.insn	2, 0x
    8000db30:	696c                	.insn	2, 0x696c
    8000db32:	6574                	.insn	2, 0x6574
    8000db34:	2c78                	.insn	2, 0x2c78
    8000db36:	696c                	.insn	2, 0x696c
    8000db38:	6574                	.insn	2, 0x6574
    8000db3a:	6175                	.insn	2, 0x6175
    8000db3c:	7472                	.insn	2, 0x7472
    8000db3e:	0000                	.insn	2, 0x
    8000db40:	69666973          	csrrs	s2,0x696,12
    8000db44:	6576                	.insn	2, 0x6576
    8000db46:	742c                	.insn	2, 0x742c
    8000db48:	7365                	.insn	2, 0x7365
    8000db4a:	3074                	.insn	2, 0x3074
    8000db4c:	0000                	.insn	2, 0x
    8000db4e:	0000                	.insn	2, 0x
    8000db50:	6564                	.insn	2, 0x6564
    8000db52:	6976                	.insn	2, 0x6976
    8000db54:	745f6563          	bltu	t5,t0,8000e29e <tohost+0x296>
    8000db58:	7079                	.insn	2, 0x7079
    8000db5a:	0065                	.insn	2, 0x0065
    8000db5c:	0000                	.insn	2, 0x
    8000db5e:	0000                	.insn	2, 0x
    8000db60:	656d                	.insn	2, 0x656d
    8000db62:	6f6d                	.insn	2, 0x6f6d
    8000db64:	7972                	.insn	2, 0x7972
    8000db66:	0000                	.insn	2, 0x
    8000db68:	736f6863          	bltu	t5,s6,8000e298 <tohost+0x290>
    8000db6c:	6e65                	.insn	2, 0x6e65
    8000db6e:	0000                	.insn	2, 0x
    8000db70:	6c21                	.insn	2, 0x6c21
    8000db72:	7361                	.insn	2, 0x7361
    8000db74:	0074                	.insn	2, 0x0074
    8000db76:	0000                	.insn	2, 0x
    8000db78:	2e2e                	.insn	2, 0x2e2e
    8000db7a:	63616d2f          	.insn	4, 0x63616d2f
    8000db7e:	6968                	.insn	2, 0x6968
    8000db80:	656e                	.insn	2, 0x656e
    8000db82:	7464662f          	.insn	4, 0x7464662f
    8000db86:	632e                	.insn	2, 0x632e
	...
    8000db90:	64646123          	.insn	4, 0x64646123
    8000db94:	6572                	.insn	2, 0x6572
    8000db96:	632d7373          	csrrc	t1,0x632,26
    8000db9a:	6c65                	.insn	2, 0x6c65
    8000db9c:	736c                	.insn	2, 0x736c
    8000db9e:	0000                	.insn	2, 0x
    8000dba0:	7a697323          	.insn	4, 0x7a697323
    8000dba4:	2d65                	.insn	2, 0x2d65
    8000dba6:	6c6c6563          	bltu	s8,t1,8000e270 <tohost+0x268>
    8000dbaa:	00000073          	ecall
    8000dbae:	0000                	.insn	2, 0x
    8000dbb0:	6e616373          	csrrs	t1,0x6e6,2
    8000dbb4:	3e2d                	.insn	2, 0x3e2d
    8000dbb6:	6572                	.insn	2, 0x6572
    8000dbb8:	3d212067          	.insn	4, 0x3d212067
    8000dbbc:	3020                	.insn	2, 0x3020
    8000dbbe:	0000                	.insn	2, 0x
    8000dbc0:	6e616373          	csrrs	t1,0x6e6,2
    8000dbc4:	3e2d                	.insn	2, 0x3e2d
    8000dbc6:	6e69                	.insn	2, 0x6e69
    8000dbc8:	5f74                	.insn	2, 0x5f74
    8000dbca:	6176                	.insn	2, 0x6176
    8000dbcc:	756c                	.insn	2, 0x756c
    8000dbce:	2065                	.insn	2, 0x2065
    8000dbd0:	2626                	.insn	2, 0x2626
    8000dbd2:	7320                	.insn	2, 0x7320
    8000dbd4:	2d6e6163          	bltu	t3,s6,8000de96 <softfloat_countLeadingZeros8+0xbb6>
    8000dbd8:	693e                	.insn	2, 0x693e
    8000dbda:	746e                	.insn	2, 0x746e
    8000dbdc:	6c5f 6e65 2520      	.insn	6, 0x25206e656c5f
    8000dbe2:	3120                	.insn	2, 0x3120
    8000dbe4:	2036                	.insn	2, 0x2036
    8000dbe6:	3d3d                	.insn	2, 0x3d3d
    8000dbe8:	3020                	.insn	2, 0x3020
    8000dbea:	0000                	.insn	2, 0x
    8000dbec:	0000                	.insn	2, 0x
    8000dbee:	0000                	.insn	2, 0x
    8000dbf0:	7321                	.insn	2, 0x7321
    8000dbf2:	2d6e6163          	bltu	t3,s6,8000deb4 <softfloat_countLeadingZeros8+0xbd4>
    8000dbf6:	643e                	.insn	2, 0x643e
    8000dbf8:	00656e6f          	jal	t3,80063bfe <_end+0x4fbfe>
    8000dbfc:	0000                	.insn	2, 0x
    8000dbfe:	0000                	.insn	2, 0x
    8000dc00:	6e616373          	csrrs	t1,0x6e6,2
    8000dc04:	3e2d                	.insn	2, 0x3e2d
    8000dc06:	6e69                	.insn	2, 0x6e69
    8000dc08:	5f74                	.insn	2, 0x5f74
    8000dc0a:	6176                	.insn	2, 0x6176
    8000dc0c:	756c                	.insn	2, 0x756c
    8000dc0e:	2065                	.insn	2, 0x2065
    8000dc10:	2626                	.insn	2, 0x2626
    8000dc12:	7320                	.insn	2, 0x7320
    8000dc14:	2d6e6163          	bltu	t3,s6,8000ded6 <softfloat_countLeadingZeros8+0xbf6>
    8000dc18:	693e                	.insn	2, 0x693e
    8000dc1a:	746e                	.insn	2, 0x746e
    8000dc1c:	6c5f 6e65 2520      	.insn	6, 0x25206e656c5f
    8000dc22:	3820                	.insn	2, 0x3820
    8000dc24:	3d20                	.insn	2, 0x3d20
    8000dc26:	203d                	.insn	2, 0x203d
    8000dc28:	0030                	.insn	2, 0x0030
    8000dc2a:	0000                	.insn	2, 0x
    8000dc2c:	0000                	.insn	2, 0x
    8000dc2e:	0000                	.insn	2, 0x
    8000dc30:	6e616373          	csrrs	t1,0x6e6,2
    8000dc34:	3e2d                	.insn	2, 0x3e2d
    8000dc36:	646e                	.insn	2, 0x646e
    8000dc38:	7665                	.insn	2, 0x7665
    8000dc3a:	3e20                	.insn	2, 0x3e20
    8000dc3c:	203d                	.insn	2, 0x203d
    8000dc3e:	2030                	.insn	2, 0x2030
    8000dc40:	2626                	.insn	2, 0x2626
    8000dc42:	7320                	.insn	2, 0x7320
    8000dc44:	2d6e6163          	bltu	t3,s6,8000df06 <softfloat_countLeadingZeros8+0xc26>
    8000dc48:	6e3e                	.insn	2, 0x6e3e
    8000dc4a:	6564                	.insn	2, 0x6564
    8000dc4c:	2076                	.insn	2, 0x2076
    8000dc4e:	203c                	.insn	2, 0x203c
    8000dc50:	3031                	.insn	2, 0x3031
    8000dc52:	3432                	.insn	2, 0x3432
    8000dc54:	0000                	.insn	2, 0x
    8000dc56:	0000                	.insn	2, 0x
    8000dc58:	4c50                	.insn	2, 0x4c50
    8000dc5a:	4349                	.insn	2, 0x4349
    8000dc5c:	7720                	.insn	2, 0x7720
    8000dc5e:	7269                	.insn	2, 0x7269
    8000dc60:	6465                	.insn	2, 0x6465
    8000dc62:	6820                	.insn	2, 0x6820
    8000dc64:	7261                	.insn	2, 0x7261
    8000dc66:	2074                	.insn	2, 0x2074
    8000dc68:	6425                	.insn	2, 0x6425
    8000dc6a:	7420                	.insn	2, 0x7420
    8000dc6c:	7277206f          	j	80080b92 <_end+0x6cb92>
    8000dc70:	20676e6f          	jal	t3,80083e76 <_end+0x6fe76>
    8000dc74:	6e69                	.insn	2, 0x6e69
    8000dc76:	6574                	.insn	2, 0x6574
    8000dc78:	7272                	.insn	2, 0x7272
    8000dc7a:	7075                	.insn	2, 0x7075
    8000dc7c:	2074                	.insn	2, 0x2074
    8000dc7e:	6425                	.insn	2, 0x6425
	...
    8000dc88:	6e616373          	csrrs	t1,0x6e6,2
    8000dc8c:	3e2d                	.insn	2, 0x3e2d
    8000dc8e:	6168                	.insn	2, 0x6168
    8000dc90:	7472                	.insn	2, 0x7472
    8000dc92:	3e20                	.insn	2, 0x3e20
    8000dc94:	203d                	.insn	2, 0x203d
    8000dc96:	0030                	.insn	2, 0x0030
    8000dc98:	6e616373          	csrrs	t1,0x6e6,2
    8000dc9c:	3e2d                	.insn	2, 0x3e2d
    8000dc9e:	6870                	.insn	2, 0x6870
    8000dca0:	6e61                	.insn	2, 0x6e61
    8000dca2:	6c64                	.insn	2, 0x6c64
    8000dca4:	2065                	.insn	2, 0x2065
    8000dca6:	203e                	.insn	2, 0x203e
    8000dca8:	0030                	.insn	2, 0x0030
    8000dcaa:	0000                	.insn	2, 0x
    8000dcac:	0000                	.insn	2, 0x
    8000dcae:	0000                	.insn	2, 0x
    8000dcb0:	6e616373          	csrrs	t1,0x6e6,2
    8000dcb4:	3e2d                	.insn	2, 0x3e2d
    8000dcb6:	6c6c6563          	bltu	s8,t1,8000e380 <tohost+0x378>
    8000dcba:	3d3d2073          	csrs	0x3d3,s10
    8000dcbe:	3120                	.insn	2, 0x3120
	...
    8000dcc8:	6966                	.insn	2, 0x6966
    8000dcca:	746c                	.insn	2, 0x746c
    8000dccc:	7265                	.insn	2, 0x7265
    8000dcce:	3e2d                	.insn	2, 0x3e2d
    8000dcd0:	74617473          	csrrc	s0,0x746,2
    8000dcd4:	7375                	.insn	2, 0x7375
    8000dcd6:	0000                	.insn	2, 0x
    8000dcd8:	6966                	.insn	2, 0x6966
    8000dcda:	746c                	.insn	2, 0x746c
    8000dcdc:	7265                	.insn	2, 0x7265
    8000dcde:	3e2d                	.insn	2, 0x3e2d
    8000dce0:	6168                	.insn	2, 0x6168
    8000dce2:	7472                	.insn	2, 0x7472
    8000dce4:	3e20                	.insn	2, 0x3e20
    8000dce6:	203d                	.insn	2, 0x203d
    8000dce8:	0030                	.insn	2, 0x0030
    8000dcea:	0000                	.insn	2, 0x
    8000dcec:	0000                	.insn	2, 0x
    8000dcee:	0000                	.insn	2, 0x
    8000dcf0:	79616b6f          	jal	s6,80024486 <_end+0x10486>
    8000dcf4:	0000                	.insn	2, 0x
    8000dcf6:	0000                	.insn	2, 0x
    8000dcf8:	6972                	.insn	2, 0x6972
    8000dcfa:	2c766373          	csrrs	t1,0x2c7,12
    8000dcfe:	39337673          	csrrc	a2,0x393,6
    8000dd02:	0000                	.insn	2, 0x
    8000dd04:	0000                	.insn	2, 0x
    8000dd06:	0000                	.insn	2, 0x
    8000dd08:	6972                	.insn	2, 0x6972
    8000dd0a:	2c766373          	csrrs	t1,0x2c7,12
    8000dd0e:	38347673          	csrrc	a2,0x383,8
    8000dd12:	0000                	.insn	2, 0x
    8000dd14:	0000                	.insn	2, 0x
    8000dd16:	0000                	.insn	2, 0x
    8000dd18:	6168                	.insn	2, 0x6168
    8000dd1a:	7472                	.insn	2, 0x7472
    8000dd1c:	665f 6c69 6574      	.insn	6, 0x65746c69665f
    8000dd22:	5f72                	.insn	2, 0x5f72
    8000dd24:	616d                	.insn	2, 0x616d
    8000dd26:	73206b73          	csrrs	s6,mhpmevent18h,0
    8000dd2a:	7761                	.insn	2, 0x7761
    8000dd2c:	7520                	.insn	2, 0x7520
    8000dd2e:	6b6e                	.insn	2, 0x6b6e
    8000dd30:	6f6e                	.insn	2, 0x6f6e
    8000dd32:	68206e77          	.insn	4, 0x68206e77
    8000dd36:	7261                	.insn	2, 0x7261
    8000dd38:	2074                	.insn	2, 0x2074
    8000dd3a:	7974                	.insn	2, 0x7974
    8000dd3c:	6570                	.insn	2, 0x6570
    8000dd3e:	203a                	.insn	2, 0x203a
    8000dd40:	74617473          	csrrc	s0,0x746,2
    8000dd44:	7375                	.insn	2, 0x7375
    8000dd46:	223d                	.insn	2, 0x223d
    8000dd48:	7325                	.insn	2, 0x7325
    8000dd4a:	2c22                	.insn	2, 0x2c22
    8000dd4c:	6d20                	.insn	2, 0x6d20
    8000dd4e:	756d                	.insn	2, 0x756d
    8000dd50:	745f 7079 3d65      	.insn	6, 0x3d657079745f
    8000dd56:	2522                	.insn	2, 0x2522
    8000dd58:	000a2273          	csrrs	tp,ustatus,s4
    8000dd5c:	0000                	.insn	2, 0x
    8000dd5e:	0000                	.insn	2, 0x
    8000dd60:	616d                	.insn	2, 0x616d
    8000dd62:	64656b73          	csrrs	s6,hviprio1,10
    8000dd66:	0000                	.insn	2, 0x
    8000dd68:	6e616373          	csrrs	t1,0x6e6,2
    8000dd6c:	3e2d                	.insn	2, 0x3e2d
    8000dd6e:	6572                	.insn	2, 0x6572
    8000dd70:	61765f67          	.insn	4, 0x61765f67
    8000dd74:	756c                	.insn	2, 0x756c
    8000dd76:	2065                	.insn	2, 0x2065
    8000dd78:	2626                	.insn	2, 0x2626
    8000dd7a:	7320                	.insn	2, 0x7320
    8000dd7c:	2d6e6163          	bltu	t3,s6,8000e03e <tohost+0x36>
    8000dd80:	723e                	.insn	2, 0x723e
    8000dd82:	6765                	.insn	2, 0x6765
    8000dd84:	6c5f 6e65 2520      	.insn	6, 0x25206e656c5f
    8000dd8a:	3420                	.insn	2, 0x3420
    8000dd8c:	3d20                	.insn	2, 0x3d20
    8000dd8e:	203d                	.insn	2, 0x203d
    8000dd90:	0030                	.insn	2, 0x0030
    8000dd92:	0000                	.insn	2, 0x
    8000dd94:	0000                	.insn	2, 0x
    8000dd96:	0000                	.insn	2, 0x
    8000dd98:	6e65                	.insn	2, 0x6e65
    8000dd9a:	2064                	.insn	2, 0x2064
    8000dd9c:	3d3d                	.insn	2, 0x3d3d
    8000dd9e:	7620                	.insn	2, 0x7620
    8000dda0:	6c61                	.insn	2, 0x6c61
    8000dda2:	6575                	.insn	2, 0x6575
    8000dda4:	0000                	.insn	2, 0x
    8000dda6:	0000                	.insn	2, 0x
    8000dda8:	00757063          	bgeu	a0,t2,8000dda8 <softfloat_countLeadingZeros8+0xac8>
    8000ddac:	0000                	.insn	2, 0x
    8000ddae:	0000                	.insn	2, 0x
    8000ddb0:	6d6d                	.insn	2, 0x6d6d
    8000ddb2:	2d75                	.insn	2, 0x2d75
    8000ddb4:	7974                	.insn	2, 0x7974
    8000ddb6:	6570                	.insn	2, 0x6570
	...
    8000ddc0:	6972                	.insn	2, 0x6972
    8000ddc2:	2c766373          	csrrs	t1,0x2c7,12
    8000ddc6:	6e696c63          	bltu	s2,t1,8000e4be <tohost+0x4b6>
    8000ddca:	3074                	.insn	2, 0x3074
    8000ddcc:	0000                	.insn	2, 0x
    8000ddce:	0000                	.insn	2, 0x
    8000ddd0:	6e69                	.insn	2, 0x6e69
    8000ddd2:	6574                	.insn	2, 0x6574
    8000ddd4:	7272                	.insn	2, 0x7272
    8000ddd6:	7075                	.insn	2, 0x7075
    8000ddd8:	7374                	.insn	2, 0x7374
    8000ddda:	652d                	.insn	2, 0x652d
    8000dddc:	7478                	.insn	2, 0x7478
    8000ddde:	6e65                	.insn	2, 0x6e65
    8000dde0:	6564                	.insn	2, 0x6564
    8000dde2:	0064                	.insn	2, 0x0064
    8000dde4:	0000                	.insn	2, 0x
    8000dde6:	0000                	.insn	2, 0x
    8000dde8:	6972                	.insn	2, 0x6972
    8000ddea:	2c766373          	csrrs	t1,0x2c7,12
    8000ddee:	6e72656b          	.insn	4, 0x6e72656b
    8000ddf2:	6c65                	.insn	2, 0x6c65
    8000ddf4:	732d                	.insn	2, 0x732d
    8000ddf6:	6174                	.insn	2, 0x6174
    8000ddf8:	7472                	.insn	2, 0x7472
    8000ddfa:	0000                	.insn	2, 0x
    8000ddfc:	0000                	.insn	2, 0x
    8000ddfe:	0000                	.insn	2, 0x
    8000de00:	6972                	.insn	2, 0x6972
    8000de02:	2c766373          	csrrs	t1,0x2c7,12
    8000de06:	6e72656b          	.insn	4, 0x6e72656b
    8000de0a:	6c65                	.insn	2, 0x6c65
    8000de0c:	652d                	.insn	2, 0x652d
    8000de0e:	646e                	.insn	2, 0x646e
	...
    8000de18:	6972                	.insn	2, 0x6972
    8000de1a:	2c766373          	csrrs	t1,0x2c7,12
    8000de1e:	6c70                	.insn	2, 0x6c70
    8000de20:	6369                	.insn	2, 0x6369
    8000de22:	0030                	.insn	2, 0x0030
    8000de24:	0000                	.insn	2, 0x
    8000de26:	0000                	.insn	2, 0x
    8000de28:	6972                	.insn	2, 0x6972
    8000de2a:	2c766373          	csrrs	t1,0x2c7,12
    8000de2e:	646e                	.insn	2, 0x646e
    8000de30:	7665                	.insn	2, 0x7665
    8000de32:	0000                	.insn	2, 0x
    8000de34:	0000                	.insn	2, 0x
    8000de36:	0000                	.insn	2, 0x
    8000de38:	7321                	.insn	2, 0x7321
    8000de3a:	2d6e6163          	bltu	t3,s6,8000e0fc <tohost+0xf4>
    8000de3e:	633e                	.insn	2, 0x633e
    8000de40:	7570                	.insn	2, 0x7570
    8000de42:	0000                	.insn	2, 0x
    8000de44:	0000                	.insn	2, 0x
    8000de46:	0000                	.insn	2, 0x
    8000de48:	6e69                	.insn	2, 0x6e69
    8000de4a:	6574                	.insn	2, 0x6574
    8000de4c:	7272                	.insn	2, 0x7272
    8000de4e:	7075                	.insn	2, 0x7075
    8000de50:	2d74                	.insn	2, 0x2d74
    8000de52:	746e6f63          	bltu	t3,t1,8000e5b0 <tohost+0x5a8>
    8000de56:	6f72                	.insn	2, 0x6f72
    8000de58:	6c6c                	.insn	2, 0x6c6c
    8000de5a:	7265                	.insn	2, 0x7265
    8000de5c:	0000                	.insn	2, 0x
    8000de5e:	0000                	.insn	2, 0x
    8000de60:	7321                	.insn	2, 0x7321
    8000de62:	2d6e6163          	bltu	t3,s6,8000e124 <tohost+0x11c>
    8000de66:	633e                	.insn	2, 0x633e
    8000de68:	72746e6f          	jal	t3,80054d8e <_end+0x40d8e>
    8000de6c:	656c6c6f          	jal	s8,800d44c2 <_end+0xc04c2>
    8000de70:	0072                	.insn	2, 0x0072
    8000de72:	0000                	.insn	2, 0x
    8000de74:	0000                	.insn	2, 0x
    8000de76:	0000                	.insn	2, 0x
    8000de78:	746e6923          	.insn	4, 0x746e6923
    8000de7c:	7265                	.insn	2, 0x7265
    8000de7e:	7572                	.insn	2, 0x7572
    8000de80:	7470                	.insn	2, 0x7470
    8000de82:	632d                	.insn	2, 0x632d
    8000de84:	6c65                	.insn	2, 0x6c65
    8000de86:	736c                	.insn	2, 0x736c
	...
    8000de90:	6870                	.insn	2, 0x6870
    8000de92:	6e61                	.insn	2, 0x6e61
    8000de94:	6c64                	.insn	2, 0x6c64
    8000de96:	0065                	.insn	2, 0x0065
    8000de98:	656d                	.insn	2, 0x656d
    8000de9a:	5f6d                	.insn	2, 0x5f6d
    8000de9c:	657a6973          	csrrs	s2,hviprio2h,20
    8000dea0:	3e20                	.insn	2, 0x3e20
    8000dea2:	3020                	.insn	2, 0x3020
    8000dea4:	0000                	.insn	2, 0x
    8000dea6:	0000                	.insn	2, 0x
    8000dea8:	6828                	.insn	2, 0x6828
    8000deaa:	7261                	.insn	2, 0x7261
    8000deac:	5f74                	.insn	2, 0x5f74
    8000deae:	616d                	.insn	2, 0x616d
    8000deb0:	3e206b73          	csrrs	s6,0x3e2,0
    8000deb4:	203e                	.insn	2, 0x203e
    8000deb6:	6572                	.insn	2, 0x6572
    8000deb8:	6461                	.insn	2, 0x6461
    8000deba:	635f 7273 6d28      	.insn	6, 0x6d287273635f
    8000dec0:	6168                	.insn	2, 0x6168
    8000dec2:	7472                	.insn	2, 0x7472
    8000dec4:	6469                	.insn	2, 0x6469
    8000dec6:	2929                	.insn	2, 0x2929
    8000dec8:	2120                	.insn	2, 0x2120
    8000deca:	203d                	.insn	2, 0x203d
    8000decc:	0030                	.insn	2, 0x0030
    8000dece:	0000                	.insn	2, 0x
    8000ded0:	6e616373          	csrrs	t1,0x6e6,2
    8000ded4:	642e                	.insn	2, 0x642e
    8000ded6:	00656e6f          	jal	t3,80063edc <_end+0x4fedc>

Disassembly of section .htif:

000000008000e000 <fromhost>:
	...

000000008000e008 <tohost>:
	...

Disassembly of section .data:

000000008000f000 <files>:
    8000f000:	ffff                	.insn	2, 0xffff
    8000f002:	ffff                	.insn	2, 0xffff
    8000f004:	0000                	.insn	2, 0x
    8000f006:	0000                	.insn	2, 0x
    8000f008:	ffff                	.insn	2, 0xffff
    8000f00a:	ffff                	.insn	2, 0xffff
    8000f00c:	0000                	.insn	2, 0x
    8000f00e:	0000                	.insn	2, 0x
    8000f010:	ffff                	.insn	2, 0xffff
    8000f012:	ffff                	.insn	2, 0xffff
    8000f014:	0000                	.insn	2, 0x
    8000f016:	0000                	.insn	2, 0x
    8000f018:	ffff                	.insn	2, 0xffff
    8000f01a:	ffff                	.insn	2, 0xffff
    8000f01c:	0000                	.insn	2, 0x
    8000f01e:	0000                	.insn	2, 0x
    8000f020:	ffff                	.insn	2, 0xffff
    8000f022:	ffff                	.insn	2, 0xffff
    8000f024:	0000                	.insn	2, 0x
    8000f026:	0000                	.insn	2, 0x
    8000f028:	ffff                	.insn	2, 0xffff
    8000f02a:	ffff                	.insn	2, 0xffff
    8000f02c:	0000                	.insn	2, 0x
    8000f02e:	0000                	.insn	2, 0x
    8000f030:	ffff                	.insn	2, 0xffff
    8000f032:	ffff                	.insn	2, 0xffff
    8000f034:	0000                	.insn	2, 0x
    8000f036:	0000                	.insn	2, 0x
    8000f038:	ffff                	.insn	2, 0xffff
    8000f03a:	ffff                	.insn	2, 0xffff
    8000f03c:	0000                	.insn	2, 0x
    8000f03e:	0000                	.insn	2, 0x
    8000f040:	ffff                	.insn	2, 0xffff
    8000f042:	ffff                	.insn	2, 0xffff
    8000f044:	0000                	.insn	2, 0x
    8000f046:	0000                	.insn	2, 0x
    8000f048:	ffff                	.insn	2, 0xffff
    8000f04a:	ffff                	.insn	2, 0xffff
    8000f04c:	0000                	.insn	2, 0x
    8000f04e:	0000                	.insn	2, 0x
    8000f050:	ffff                	.insn	2, 0xffff
    8000f052:	ffff                	.insn	2, 0xffff
    8000f054:	0000                	.insn	2, 0x
    8000f056:	0000                	.insn	2, 0x
    8000f058:	ffff                	.insn	2, 0xffff
    8000f05a:	ffff                	.insn	2, 0xffff
    8000f05c:	0000                	.insn	2, 0x
    8000f05e:	0000                	.insn	2, 0x
    8000f060:	ffff                	.insn	2, 0xffff
    8000f062:	ffff                	.insn	2, 0xffff
    8000f064:	0000                	.insn	2, 0x
    8000f066:	0000                	.insn	2, 0x
    8000f068:	ffff                	.insn	2, 0xffff
    8000f06a:	ffff                	.insn	2, 0xffff
    8000f06c:	0000                	.insn	2, 0x
    8000f06e:	0000                	.insn	2, 0x
    8000f070:	ffff                	.insn	2, 0xffff
    8000f072:	ffff                	.insn	2, 0xffff
    8000f074:	0000                	.insn	2, 0x
    8000f076:	0000                	.insn	2, 0x
    8000f078:	ffff                	.insn	2, 0xffff
    8000f07a:	ffff                	.insn	2, 0xffff
    8000f07c:	0000                	.insn	2, 0x
    8000f07e:	0000                	.insn	2, 0x
    8000f080:	ffff                	.insn	2, 0xffff
    8000f082:	ffff                	.insn	2, 0xffff
    8000f084:	0000                	.insn	2, 0x
    8000f086:	0000                	.insn	2, 0x
    8000f088:	ffff                	.insn	2, 0xffff
    8000f08a:	ffff                	.insn	2, 0xffff
    8000f08c:	0000                	.insn	2, 0x
    8000f08e:	0000                	.insn	2, 0x
    8000f090:	ffff                	.insn	2, 0xffff
    8000f092:	ffff                	.insn	2, 0xffff
    8000f094:	0000                	.insn	2, 0x
    8000f096:	0000                	.insn	2, 0x
    8000f098:	ffff                	.insn	2, 0xffff
    8000f09a:	ffff                	.insn	2, 0xffff
    8000f09c:	0000                	.insn	2, 0x
    8000f09e:	0000                	.insn	2, 0x
    8000f0a0:	ffff                	.insn	2, 0xffff
    8000f0a2:	ffff                	.insn	2, 0xffff
    8000f0a4:	0000                	.insn	2, 0x
    8000f0a6:	0000                	.insn	2, 0x
    8000f0a8:	ffff                	.insn	2, 0xffff
    8000f0aa:	ffff                	.insn	2, 0xffff
    8000f0ac:	0000                	.insn	2, 0x
    8000f0ae:	0000                	.insn	2, 0x
    8000f0b0:	ffff                	.insn	2, 0xffff
    8000f0b2:	ffff                	.insn	2, 0xffff
    8000f0b4:	0000                	.insn	2, 0x
    8000f0b6:	0000                	.insn	2, 0x
    8000f0b8:	ffff                	.insn	2, 0xffff
    8000f0ba:	ffff                	.insn	2, 0xffff
    8000f0bc:	0000                	.insn	2, 0x
    8000f0be:	0000                	.insn	2, 0x
    8000f0c0:	ffff                	.insn	2, 0xffff
    8000f0c2:	ffff                	.insn	2, 0xffff
    8000f0c4:	0000                	.insn	2, 0x
    8000f0c6:	0000                	.insn	2, 0x
    8000f0c8:	ffff                	.insn	2, 0xffff
    8000f0ca:	ffff                	.insn	2, 0xffff
    8000f0cc:	0000                	.insn	2, 0x
    8000f0ce:	0000                	.insn	2, 0x
    8000f0d0:	ffff                	.insn	2, 0xffff
    8000f0d2:	ffff                	.insn	2, 0xffff
    8000f0d4:	0000                	.insn	2, 0x
    8000f0d6:	0000                	.insn	2, 0x
    8000f0d8:	ffff                	.insn	2, 0xffff
    8000f0da:	ffff                	.insn	2, 0xffff
    8000f0dc:	0000                	.insn	2, 0x
    8000f0de:	0000                	.insn	2, 0x
    8000f0e0:	ffff                	.insn	2, 0xffff
    8000f0e2:	ffff                	.insn	2, 0xffff
    8000f0e4:	0000                	.insn	2, 0x
    8000f0e6:	0000                	.insn	2, 0x
    8000f0e8:	ffff                	.insn	2, 0xffff
    8000f0ea:	ffff                	.insn	2, 0xffff
    8000f0ec:	0000                	.insn	2, 0x
    8000f0ee:	0000                	.insn	2, 0x
    8000f0f0:	ffff                	.insn	2, 0xffff
    8000f0f2:	ffff                	.insn	2, 0xffff
    8000f0f4:	0000                	.insn	2, 0x
    8000f0f6:	0000                	.insn	2, 0x
    8000f0f8:	ffff                	.insn	2, 0xffff
    8000f0fa:	ffff                	.insn	2, 0xffff
    8000f0fc:	0000                	.insn	2, 0x
    8000f0fe:	0000                	.insn	2, 0x
    8000f100:	ffff                	.insn	2, 0xffff
    8000f102:	ffff                	.insn	2, 0xffff
    8000f104:	0000                	.insn	2, 0x
    8000f106:	0000                	.insn	2, 0x
    8000f108:	ffff                	.insn	2, 0xffff
    8000f10a:	ffff                	.insn	2, 0xffff
    8000f10c:	0000                	.insn	2, 0x
    8000f10e:	0000                	.insn	2, 0x
    8000f110:	ffff                	.insn	2, 0xffff
    8000f112:	ffff                	.insn	2, 0xffff
    8000f114:	0000                	.insn	2, 0x
    8000f116:	0000                	.insn	2, 0x
    8000f118:	ffff                	.insn	2, 0xffff
    8000f11a:	ffff                	.insn	2, 0xffff
    8000f11c:	0000                	.insn	2, 0x
    8000f11e:	0000                	.insn	2, 0x
    8000f120:	ffff                	.insn	2, 0xffff
    8000f122:	ffff                	.insn	2, 0xffff
    8000f124:	0000                	.insn	2, 0x
    8000f126:	0000                	.insn	2, 0x
    8000f128:	ffff                	.insn	2, 0xffff
    8000f12a:	ffff                	.insn	2, 0xffff
    8000f12c:	0000                	.insn	2, 0x
    8000f12e:	0000                	.insn	2, 0x
    8000f130:	ffff                	.insn	2, 0xffff
    8000f132:	ffff                	.insn	2, 0xffff
    8000f134:	0000                	.insn	2, 0x
    8000f136:	0000                	.insn	2, 0x
    8000f138:	ffff                	.insn	2, 0xffff
    8000f13a:	ffff                	.insn	2, 0xffff
    8000f13c:	0000                	.insn	2, 0x
    8000f13e:	0000                	.insn	2, 0x
    8000f140:	ffff                	.insn	2, 0xffff
    8000f142:	ffff                	.insn	2, 0xffff
    8000f144:	0000                	.insn	2, 0x
    8000f146:	0000                	.insn	2, 0x
    8000f148:	ffff                	.insn	2, 0xffff
    8000f14a:	ffff                	.insn	2, 0xffff
    8000f14c:	0000                	.insn	2, 0x
    8000f14e:	0000                	.insn	2, 0x
    8000f150:	ffff                	.insn	2, 0xffff
    8000f152:	ffff                	.insn	2, 0xffff
    8000f154:	0000                	.insn	2, 0x
    8000f156:	0000                	.insn	2, 0x
    8000f158:	ffff                	.insn	2, 0xffff
    8000f15a:	ffff                	.insn	2, 0xffff
    8000f15c:	0000                	.insn	2, 0x
    8000f15e:	0000                	.insn	2, 0x
    8000f160:	ffff                	.insn	2, 0xffff
    8000f162:	ffff                	.insn	2, 0xffff
    8000f164:	0000                	.insn	2, 0x
    8000f166:	0000                	.insn	2, 0x
    8000f168:	ffff                	.insn	2, 0xffff
    8000f16a:	ffff                	.insn	2, 0xffff
    8000f16c:	0000                	.insn	2, 0x
    8000f16e:	0000                	.insn	2, 0x
    8000f170:	ffff                	.insn	2, 0xffff
    8000f172:	ffff                	.insn	2, 0xffff
    8000f174:	0000                	.insn	2, 0x
    8000f176:	0000                	.insn	2, 0x
    8000f178:	ffff                	.insn	2, 0xffff
    8000f17a:	ffff                	.insn	2, 0xffff
    8000f17c:	0000                	.insn	2, 0x
    8000f17e:	0000                	.insn	2, 0x
    8000f180:	ffff                	.insn	2, 0xffff
    8000f182:	ffff                	.insn	2, 0xffff
    8000f184:	0000                	.insn	2, 0x
    8000f186:	0000                	.insn	2, 0x
    8000f188:	ffff                	.insn	2, 0xffff
    8000f18a:	ffff                	.insn	2, 0xffff
    8000f18c:	0000                	.insn	2, 0x
    8000f18e:	0000                	.insn	2, 0x
    8000f190:	ffff                	.insn	2, 0xffff
    8000f192:	ffff                	.insn	2, 0xffff
    8000f194:	0000                	.insn	2, 0x
    8000f196:	0000                	.insn	2, 0x
    8000f198:	ffff                	.insn	2, 0xffff
    8000f19a:	ffff                	.insn	2, 0xffff
    8000f19c:	0000                	.insn	2, 0x
    8000f19e:	0000                	.insn	2, 0x
    8000f1a0:	ffff                	.insn	2, 0xffff
    8000f1a2:	ffff                	.insn	2, 0xffff
    8000f1a4:	0000                	.insn	2, 0x
    8000f1a6:	0000                	.insn	2, 0x
    8000f1a8:	ffff                	.insn	2, 0xffff
    8000f1aa:	ffff                	.insn	2, 0xffff
    8000f1ac:	0000                	.insn	2, 0x
    8000f1ae:	0000                	.insn	2, 0x
    8000f1b0:	ffff                	.insn	2, 0xffff
    8000f1b2:	ffff                	.insn	2, 0xffff
    8000f1b4:	0000                	.insn	2, 0x
    8000f1b6:	0000                	.insn	2, 0x
    8000f1b8:	ffff                	.insn	2, 0xffff
    8000f1ba:	ffff                	.insn	2, 0xffff
    8000f1bc:	0000                	.insn	2, 0x
    8000f1be:	0000                	.insn	2, 0x
    8000f1c0:	ffff                	.insn	2, 0xffff
    8000f1c2:	ffff                	.insn	2, 0xffff
    8000f1c4:	0000                	.insn	2, 0x
    8000f1c6:	0000                	.insn	2, 0x
    8000f1c8:	ffff                	.insn	2, 0xffff
    8000f1ca:	ffff                	.insn	2, 0xffff
    8000f1cc:	0000                	.insn	2, 0x
    8000f1ce:	0000                	.insn	2, 0x
    8000f1d0:	ffff                	.insn	2, 0xffff
    8000f1d2:	ffff                	.insn	2, 0xffff
    8000f1d4:	0000                	.insn	2, 0x
    8000f1d6:	0000                	.insn	2, 0x
    8000f1d8:	ffff                	.insn	2, 0xffff
    8000f1da:	ffff                	.insn	2, 0xffff
    8000f1dc:	0000                	.insn	2, 0x
    8000f1de:	0000                	.insn	2, 0x
    8000f1e0:	ffff                	.insn	2, 0xffff
    8000f1e2:	ffff                	.insn	2, 0xffff
    8000f1e4:	0000                	.insn	2, 0x
    8000f1e6:	0000                	.insn	2, 0x
    8000f1e8:	ffff                	.insn	2, 0xffff
    8000f1ea:	ffff                	.insn	2, 0xffff
    8000f1ec:	0000                	.insn	2, 0x
    8000f1ee:	0000                	.insn	2, 0x
    8000f1f0:	ffff                	.insn	2, 0xffff
    8000f1f2:	ffff                	.insn	2, 0xffff
    8000f1f4:	0000                	.insn	2, 0x
    8000f1f6:	0000                	.insn	2, 0x
    8000f1f8:	ffff                	.insn	2, 0xffff
    8000f1fa:	ffff                	.insn	2, 0xffff
    8000f1fc:	0000                	.insn	2, 0x
    8000f1fe:	0000                	.insn	2, 0x
    8000f200:	ffff                	.insn	2, 0xffff
    8000f202:	ffff                	.insn	2, 0xffff
    8000f204:	0000                	.insn	2, 0x
    8000f206:	0000                	.insn	2, 0x
    8000f208:	ffff                	.insn	2, 0xffff
    8000f20a:	ffff                	.insn	2, 0xffff
    8000f20c:	0000                	.insn	2, 0x
    8000f20e:	0000                	.insn	2, 0x
    8000f210:	ffff                	.insn	2, 0xffff
    8000f212:	ffff                	.insn	2, 0xffff
    8000f214:	0000                	.insn	2, 0x
    8000f216:	0000                	.insn	2, 0x
    8000f218:	ffff                	.insn	2, 0xffff
    8000f21a:	ffff                	.insn	2, 0xffff
    8000f21c:	0000                	.insn	2, 0x
    8000f21e:	0000                	.insn	2, 0x
    8000f220:	ffff                	.insn	2, 0xffff
    8000f222:	ffff                	.insn	2, 0xffff
    8000f224:	0000                	.insn	2, 0x
    8000f226:	0000                	.insn	2, 0x
    8000f228:	ffff                	.insn	2, 0xffff
    8000f22a:	ffff                	.insn	2, 0xffff
    8000f22c:	0000                	.insn	2, 0x
    8000f22e:	0000                	.insn	2, 0x
    8000f230:	ffff                	.insn	2, 0xffff
    8000f232:	ffff                	.insn	2, 0xffff
    8000f234:	0000                	.insn	2, 0x
    8000f236:	0000                	.insn	2, 0x
    8000f238:	ffff                	.insn	2, 0xffff
    8000f23a:	ffff                	.insn	2, 0xffff
    8000f23c:	0000                	.insn	2, 0x
    8000f23e:	0000                	.insn	2, 0x
    8000f240:	ffff                	.insn	2, 0xffff
    8000f242:	ffff                	.insn	2, 0xffff
    8000f244:	0000                	.insn	2, 0x
    8000f246:	0000                	.insn	2, 0x
    8000f248:	ffff                	.insn	2, 0xffff
    8000f24a:	ffff                	.insn	2, 0xffff
    8000f24c:	0000                	.insn	2, 0x
    8000f24e:	0000                	.insn	2, 0x
    8000f250:	ffff                	.insn	2, 0xffff
    8000f252:	ffff                	.insn	2, 0xffff
    8000f254:	0000                	.insn	2, 0x
    8000f256:	0000                	.insn	2, 0x
    8000f258:	ffff                	.insn	2, 0xffff
    8000f25a:	ffff                	.insn	2, 0xffff
    8000f25c:	0000                	.insn	2, 0x
    8000f25e:	0000                	.insn	2, 0x
    8000f260:	ffff                	.insn	2, 0xffff
    8000f262:	ffff                	.insn	2, 0xffff
    8000f264:	0000                	.insn	2, 0x
    8000f266:	0000                	.insn	2, 0x
    8000f268:	ffff                	.insn	2, 0xffff
    8000f26a:	ffff                	.insn	2, 0xffff
    8000f26c:	0000                	.insn	2, 0x
    8000f26e:	0000                	.insn	2, 0x
    8000f270:	ffff                	.insn	2, 0xffff
    8000f272:	ffff                	.insn	2, 0xffff
    8000f274:	0000                	.insn	2, 0x
    8000f276:	0000                	.insn	2, 0x
    8000f278:	ffff                	.insn	2, 0xffff
    8000f27a:	ffff                	.insn	2, 0xffff
    8000f27c:	0000                	.insn	2, 0x
    8000f27e:	0000                	.insn	2, 0x
    8000f280:	ffff                	.insn	2, 0xffff
    8000f282:	ffff                	.insn	2, 0xffff
    8000f284:	0000                	.insn	2, 0x
    8000f286:	0000                	.insn	2, 0x
    8000f288:	ffff                	.insn	2, 0xffff
    8000f28a:	ffff                	.insn	2, 0xffff
    8000f28c:	0000                	.insn	2, 0x
    8000f28e:	0000                	.insn	2, 0x
    8000f290:	ffff                	.insn	2, 0xffff
    8000f292:	ffff                	.insn	2, 0xffff
    8000f294:	0000                	.insn	2, 0x
    8000f296:	0000                	.insn	2, 0x
    8000f298:	ffff                	.insn	2, 0xffff
    8000f29a:	ffff                	.insn	2, 0xffff
    8000f29c:	0000                	.insn	2, 0x
    8000f29e:	0000                	.insn	2, 0x
    8000f2a0:	ffff                	.insn	2, 0xffff
    8000f2a2:	ffff                	.insn	2, 0xffff
    8000f2a4:	0000                	.insn	2, 0x
    8000f2a6:	0000                	.insn	2, 0x
    8000f2a8:	ffff                	.insn	2, 0xffff
    8000f2aa:	ffff                	.insn	2, 0xffff
    8000f2ac:	0000                	.insn	2, 0x
    8000f2ae:	0000                	.insn	2, 0x
    8000f2b0:	ffff                	.insn	2, 0xffff
    8000f2b2:	ffff                	.insn	2, 0xffff
    8000f2b4:	0000                	.insn	2, 0x
    8000f2b6:	0000                	.insn	2, 0x
    8000f2b8:	ffff                	.insn	2, 0xffff
    8000f2ba:	ffff                	.insn	2, 0xffff
    8000f2bc:	0000                	.insn	2, 0x
    8000f2be:	0000                	.insn	2, 0x
    8000f2c0:	ffff                	.insn	2, 0xffff
    8000f2c2:	ffff                	.insn	2, 0xffff
    8000f2c4:	0000                	.insn	2, 0x
    8000f2c6:	0000                	.insn	2, 0x
    8000f2c8:	ffff                	.insn	2, 0xffff
    8000f2ca:	ffff                	.insn	2, 0xffff
    8000f2cc:	0000                	.insn	2, 0x
    8000f2ce:	0000                	.insn	2, 0x
    8000f2d0:	ffff                	.insn	2, 0xffff
    8000f2d2:	ffff                	.insn	2, 0xffff
    8000f2d4:	0000                	.insn	2, 0x
    8000f2d6:	0000                	.insn	2, 0x
    8000f2d8:	ffff                	.insn	2, 0xffff
    8000f2da:	ffff                	.insn	2, 0xffff
    8000f2dc:	0000                	.insn	2, 0x
    8000f2de:	0000                	.insn	2, 0x
    8000f2e0:	ffff                	.insn	2, 0xffff
    8000f2e2:	ffff                	.insn	2, 0xffff
    8000f2e4:	0000                	.insn	2, 0x
    8000f2e6:	0000                	.insn	2, 0x
    8000f2e8:	ffff                	.insn	2, 0xffff
    8000f2ea:	ffff                	.insn	2, 0xffff
    8000f2ec:	0000                	.insn	2, 0x
    8000f2ee:	0000                	.insn	2, 0x
    8000f2f0:	ffff                	.insn	2, 0xffff
    8000f2f2:	ffff                	.insn	2, 0xffff
    8000f2f4:	0000                	.insn	2, 0x
    8000f2f6:	0000                	.insn	2, 0x
    8000f2f8:	ffff                	.insn	2, 0xffff
    8000f2fa:	ffff                	.insn	2, 0xffff
    8000f2fc:	0000                	.insn	2, 0x
    8000f2fe:	0000                	.insn	2, 0x
    8000f300:	ffff                	.insn	2, 0xffff
    8000f302:	ffff                	.insn	2, 0xffff
    8000f304:	0000                	.insn	2, 0x
    8000f306:	0000                	.insn	2, 0x
    8000f308:	ffff                	.insn	2, 0xffff
    8000f30a:	ffff                	.insn	2, 0xffff
    8000f30c:	0000                	.insn	2, 0x
    8000f30e:	0000                	.insn	2, 0x
    8000f310:	ffff                	.insn	2, 0xffff
    8000f312:	ffff                	.insn	2, 0xffff
    8000f314:	0000                	.insn	2, 0x
    8000f316:	0000                	.insn	2, 0x
    8000f318:	ffff                	.insn	2, 0xffff
    8000f31a:	ffff                	.insn	2, 0xffff
    8000f31c:	0000                	.insn	2, 0x
    8000f31e:	0000                	.insn	2, 0x
    8000f320:	ffff                	.insn	2, 0xffff
    8000f322:	ffff                	.insn	2, 0xffff
    8000f324:	0000                	.insn	2, 0x
    8000f326:	0000                	.insn	2, 0x
    8000f328:	ffff                	.insn	2, 0xffff
    8000f32a:	ffff                	.insn	2, 0xffff
    8000f32c:	0000                	.insn	2, 0x
    8000f32e:	0000                	.insn	2, 0x
    8000f330:	ffff                	.insn	2, 0xffff
    8000f332:	ffff                	.insn	2, 0xffff
    8000f334:	0000                	.insn	2, 0x
    8000f336:	0000                	.insn	2, 0x
    8000f338:	ffff                	.insn	2, 0xffff
    8000f33a:	ffff                	.insn	2, 0xffff
    8000f33c:	0000                	.insn	2, 0x
    8000f33e:	0000                	.insn	2, 0x
    8000f340:	ffff                	.insn	2, 0xffff
    8000f342:	ffff                	.insn	2, 0xffff
    8000f344:	0000                	.insn	2, 0x
    8000f346:	0000                	.insn	2, 0x
    8000f348:	ffff                	.insn	2, 0xffff
    8000f34a:	ffff                	.insn	2, 0xffff
    8000f34c:	0000                	.insn	2, 0x
    8000f34e:	0000                	.insn	2, 0x
    8000f350:	ffff                	.insn	2, 0xffff
    8000f352:	ffff                	.insn	2, 0xffff
    8000f354:	0000                	.insn	2, 0x
    8000f356:	0000                	.insn	2, 0x
    8000f358:	ffff                	.insn	2, 0xffff
    8000f35a:	ffff                	.insn	2, 0xffff
    8000f35c:	0000                	.insn	2, 0x
    8000f35e:	0000                	.insn	2, 0x
    8000f360:	ffff                	.insn	2, 0xffff
    8000f362:	ffff                	.insn	2, 0xffff
    8000f364:	0000                	.insn	2, 0x
    8000f366:	0000                	.insn	2, 0x
    8000f368:	ffff                	.insn	2, 0xffff
    8000f36a:	ffff                	.insn	2, 0xffff
    8000f36c:	0000                	.insn	2, 0x
    8000f36e:	0000                	.insn	2, 0x
    8000f370:	ffff                	.insn	2, 0xffff
    8000f372:	ffff                	.insn	2, 0xffff
    8000f374:	0000                	.insn	2, 0x
    8000f376:	0000                	.insn	2, 0x
    8000f378:	ffff                	.insn	2, 0xffff
    8000f37a:	ffff                	.insn	2, 0xffff
    8000f37c:	0000                	.insn	2, 0x
    8000f37e:	0000                	.insn	2, 0x
    8000f380:	ffff                	.insn	2, 0xffff
    8000f382:	ffff                	.insn	2, 0xffff
    8000f384:	0000                	.insn	2, 0x
    8000f386:	0000                	.insn	2, 0x
    8000f388:	ffff                	.insn	2, 0xffff
    8000f38a:	ffff                	.insn	2, 0xffff
    8000f38c:	0000                	.insn	2, 0x
    8000f38e:	0000                	.insn	2, 0x
    8000f390:	ffff                	.insn	2, 0xffff
    8000f392:	ffff                	.insn	2, 0xffff
    8000f394:	0000                	.insn	2, 0x
    8000f396:	0000                	.insn	2, 0x
    8000f398:	ffff                	.insn	2, 0xffff
    8000f39a:	ffff                	.insn	2, 0xffff
    8000f39c:	0000                	.insn	2, 0x
    8000f39e:	0000                	.insn	2, 0x
    8000f3a0:	ffff                	.insn	2, 0xffff
    8000f3a2:	ffff                	.insn	2, 0xffff
    8000f3a4:	0000                	.insn	2, 0x
    8000f3a6:	0000                	.insn	2, 0x
    8000f3a8:	ffff                	.insn	2, 0xffff
    8000f3aa:	ffff                	.insn	2, 0xffff
    8000f3ac:	0000                	.insn	2, 0x
    8000f3ae:	0000                	.insn	2, 0x
    8000f3b0:	ffff                	.insn	2, 0xffff
    8000f3b2:	ffff                	.insn	2, 0xffff
    8000f3b4:	0000                	.insn	2, 0x
    8000f3b6:	0000                	.insn	2, 0x
    8000f3b8:	ffff                	.insn	2, 0xffff
    8000f3ba:	ffff                	.insn	2, 0xffff
    8000f3bc:	0000                	.insn	2, 0x
    8000f3be:	0000                	.insn	2, 0x
    8000f3c0:	ffff                	.insn	2, 0xffff
    8000f3c2:	ffff                	.insn	2, 0xffff
    8000f3c4:	0000                	.insn	2, 0x
    8000f3c6:	0000                	.insn	2, 0x
    8000f3c8:	ffff                	.insn	2, 0xffff
    8000f3ca:	ffff                	.insn	2, 0xffff
    8000f3cc:	0000                	.insn	2, 0x
    8000f3ce:	0000                	.insn	2, 0x
    8000f3d0:	ffff                	.insn	2, 0xffff
    8000f3d2:	ffff                	.insn	2, 0xffff
    8000f3d4:	0000                	.insn	2, 0x
    8000f3d6:	0000                	.insn	2, 0x
    8000f3d8:	ffff                	.insn	2, 0xffff
    8000f3da:	ffff                	.insn	2, 0xffff
    8000f3dc:	0000                	.insn	2, 0x
    8000f3de:	0000                	.insn	2, 0x
    8000f3e0:	ffff                	.insn	2, 0xffff
    8000f3e2:	ffff                	.insn	2, 0xffff
    8000f3e4:	0000                	.insn	2, 0x
    8000f3e6:	0000                	.insn	2, 0x
    8000f3e8:	ffff                	.insn	2, 0xffff
    8000f3ea:	ffff                	.insn	2, 0xffff
    8000f3ec:	0000                	.insn	2, 0x
    8000f3ee:	0000                	.insn	2, 0x
    8000f3f0:	ffff                	.insn	2, 0xffff
    8000f3f2:	ffff                	.insn	2, 0xffff
    8000f3f4:	0000                	.insn	2, 0x
    8000f3f6:	0000                	.insn	2, 0x
    8000f3f8:	ffff                	.insn	2, 0xffff
    8000f3fa:	ffff                	.insn	2, 0xffff
    8000f3fc:	0000                	.insn	2, 0x
	...

000000008000f400 <trap_table>:
    8000f400:	44bc                	.insn	2, 0x44bc
    8000f402:	8000                	.insn	2, 0x8000
    8000f404:	0000                	.insn	2, 0x
    8000f406:	0000                	.insn	2, 0x
    8000f408:	4424                	.insn	2, 0x4424
    8000f40a:	8000                	.insn	2, 0x8000
    8000f40c:	0000                	.insn	2, 0x
    8000f40e:	0000                	.insn	2, 0x
    8000f410:	76cc                	.insn	2, 0x76cc
    8000f412:	8000                	.insn	2, 0x8000
    8000f414:	0000                	.insn	2, 0x
    8000f416:	0000                	.insn	2, 0x
    8000f418:	44bc                	.insn	2, 0x44bc
    8000f41a:	8000                	.insn	2, 0x8000
    8000f41c:	0000                	.insn	2, 0x
    8000f41e:	0000                	.insn	2, 0x
    8000f420:	8bb0                	.insn	2, 0x8bb0
    8000f422:	8000                	.insn	2, 0x8000
    8000f424:	0000                	.insn	2, 0x
    8000f426:	0000                	.insn	2, 0x
    8000f428:	4424                	.insn	2, 0x4424
    8000f42a:	8000                	.insn	2, 0x8000
    8000f42c:	0000                	.insn	2, 0x
    8000f42e:	0000                	.insn	2, 0x
    8000f430:	8d84                	.insn	2, 0x8d84
    8000f432:	8000                	.insn	2, 0x8000
    8000f434:	0000                	.insn	2, 0x
    8000f436:	0000                	.insn	2, 0x
    8000f438:	4424                	.insn	2, 0x4424
    8000f43a:	8000                	.insn	2, 0x8000
    8000f43c:	0000                	.insn	2, 0x
    8000f43e:	0000                	.insn	2, 0x
    8000f440:	44bc                	.insn	2, 0x44bc
    8000f442:	8000                	.insn	2, 0x8000
    8000f444:	0000                	.insn	2, 0x
    8000f446:	0000                	.insn	2, 0x
    8000f448:	45c0                	.insn	2, 0x45c0
    8000f44a:	8000                	.insn	2, 0x8000
    8000f44c:	0000                	.insn	2, 0x
    8000f44e:	0000                	.insn	2, 0x
    8000f450:	44bc                	.insn	2, 0x44bc
    8000f452:	8000                	.insn	2, 0x8000
    8000f454:	0000                	.insn	2, 0x
    8000f456:	0000                	.insn	2, 0x
    8000f458:	44bc                	.insn	2, 0x44bc
    8000f45a:	8000                	.insn	2, 0x8000
    8000f45c:	0000                	.insn	2, 0x
    8000f45e:	0000                	.insn	2, 0x
    8000f460:	44bc                	.insn	2, 0x44bc
    8000f462:	8000                	.insn	2, 0x8000
    8000f464:	0000                	.insn	2, 0x
    8000f466:	0000                	.insn	2, 0x
    8000f468:	01f8                	.insn	2, 0x01f8
    8000f46a:	8000                	.insn	2, 0x8000
    8000f46c:	0000                	.insn	2, 0x
    8000f46e:	0000                	.insn	2, 0x
    8000f470:	44bc                	.insn	2, 0x44bc
    8000f472:	8000                	.insn	2, 0x8000
    8000f474:	0000                	.insn	2, 0x
    8000f476:	0000                	.insn	2, 0x
    8000f478:	44bc                	.insn	2, 0x44bc
    8000f47a:	8000                	.insn	2, 0x8000
    8000f47c:	0000                	.insn	2, 0x
    8000f47e:	0000                	.insn	2, 0x
    8000f480:	3a434347          	.insn	4, 0x3a434347
    8000f484:	2820                	.insn	2, 0x2820
    8000f486:	31202967          	.insn	4, 0x31202967
    8000f48a:	2e322e33          	.insn	4, 0x2e322e33
    8000f48e:	0030                	.insn	2, 0x0030

Disassembly of section .sdata:

000000008000f490 <demand_paging>:
    8000f490:	0001                	.insn	2, 0x0001
	...

000000008000f494 <uart16550_clock>:
    8000f494:	2000                	.insn	2, 0x2000
    8000f496:	001c                	.insn	2, 0x001c

Disassembly of section .riscv.attributes:

0000000000000000 <.riscv.attributes>:
   0:	4241                	.insn	2, 0x4241
   2:	0000                	.insn	2, 0x
   4:	7200                	.insn	2, 0x7200
   6:	7369                	.insn	2, 0x7369
   8:	01007663          	bgeu	zero,a6,14 <MEM_START-0x7fffffec>
   c:	0038                	.insn	2, 0x0038
   e:	0000                	.insn	2, 0x
  10:	1004                	.insn	2, 0x1004
  12:	7205                	.insn	2, 0x7205
  14:	3676                	.insn	2, 0x3676
  16:	6934                	.insn	2, 0x6934
  18:	7032                	.insn	2, 0x7032
  1a:	5f31                	.insn	2, 0x5f31
  1c:	326d                	.insn	2, 0x326d
  1e:	3070                	.insn	2, 0x3070
  20:	7a5f 6369 7273      	.insn	6, 0x727363697a5f
  26:	7032                	.insn	2, 0x7032
  28:	5f30                	.insn	2, 0x5f30
  2a:	697a                	.insn	2, 0x697a
  2c:	6566                	.insn	2, 0x6566
  2e:	636e                	.insn	2, 0x636e
  30:	6965                	.insn	2, 0x6965
  32:	7032                	.insn	2, 0x7032
  34:	5f30                	.insn	2, 0x5f30
  36:	6d7a                	.insn	2, 0x6d7a
  38:	756d                	.insn	2, 0x756d
  3a:	316c                	.insn	2, 0x316c
  3c:	3070                	.insn	2, 0x3070
  3e:	0800                	.insn	2, 0x0800
  40:	0a01                	.insn	2, 0x0a01
  42:	Address 0x42 is out of bounds.

