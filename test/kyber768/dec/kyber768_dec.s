riscv32-unknown-elf-objdump  -d /home/alessandra.dolmeta/pqc_riscv/test/kyber768/dec/build/dec/dec

/home/alessandra.dolmeta/pqc_riscv/test/kyber768/dec/build/dec/dec:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	6970606f          	j	1c00ee96 <__rt_handle_illegal_instr>
1c008004:	0840006f          	j	1c008088 <pos_no_irq_handler>
1c008008:	0800006f          	j	1c008088 <pos_no_irq_handler>
1c00800c:	07c0006f          	j	1c008088 <pos_no_irq_handler>
1c008010:	0780006f          	j	1c008088 <pos_no_irq_handler>
1c008014:	0740006f          	j	1c008088 <pos_no_irq_handler>
1c008018:	0700006f          	j	1c008088 <pos_no_irq_handler>
1c00801c:	06c0006f          	j	1c008088 <pos_no_irq_handler>
1c008020:	0680006f          	j	1c008088 <pos_no_irq_handler>
1c008024:	0640006f          	j	1c008088 <pos_no_irq_handler>
1c008028:	0600006f          	j	1c008088 <pos_no_irq_handler>
1c00802c:	05c0006f          	j	1c008088 <pos_no_irq_handler>
1c008030:	0580006f          	j	1c008088 <pos_no_irq_handler>
1c008034:	0540006f          	j	1c008088 <pos_no_irq_handler>
1c008038:	0500006f          	j	1c008088 <pos_no_irq_handler>
1c00803c:	04c0006f          	j	1c008088 <pos_no_irq_handler>
1c008040:	0480006f          	j	1c008088 <pos_no_irq_handler>
1c008044:	0440006f          	j	1c008088 <pos_no_irq_handler>
1c008048:	0400006f          	j	1c008088 <pos_no_irq_handler>
1c00804c:	03c0006f          	j	1c008088 <pos_no_irq_handler>
1c008050:	0380006f          	j	1c008088 <pos_no_irq_handler>
1c008054:	0340006f          	j	1c008088 <pos_no_irq_handler>
1c008058:	0300006f          	j	1c008088 <pos_no_irq_handler>
1c00805c:	02c0006f          	j	1c008088 <pos_no_irq_handler>
1c008060:	0280006f          	j	1c008088 <pos_no_irq_handler>
1c008064:	0240006f          	j	1c008088 <pos_no_irq_handler>
1c008068:	0200006f          	j	1c008088 <pos_no_irq_handler>
1c00806c:	01c0006f          	j	1c008088 <pos_no_irq_handler>
1c008070:	0180006f          	j	1c008088 <pos_no_irq_handler>
1c008074:	0140006f          	j	1c008088 <pos_no_irq_handler>
1c008078:	0100006f          	j	1c008088 <pos_no_irq_handler>
1c00807c:	00c0006f          	j	1c008088 <pos_no_irq_handler>

1c008080 <_start>:
1c008080:	0400006f          	j	1c0080c0 <_stext>

1c008084 <pos_illegal_instr>:
1c008084:	6130606f          	j	1c00ee96 <__rt_handle_illegal_instr>

1c008088 <pos_no_irq_handler>:
1c008088:	30200073          	mret

1c00808c <pos_semihosting_call>:
1c00808c:	00100073          	ebreak
1c008090:	00008067          	ret

1c008094 <do_cl_boot>:
1c008094:	10200137          	lui	sp,0x10200
1c008098:	00100193          	li	gp,1
1c00809c:	00000217          	auipc	tp,0x0
1c0080a0:	fe420213          	addi	tp,tp,-28 # 1c008080 <_start>
1c0080a4:	04412023          	sw	tp,64(sp) # 10200040 <__CTOR_LIST__-0xbdfffc4>
1c0080a8:	00312423          	sw	gp,8(sp)

1c0080ac <loop>:
1c0080ac:	1a10a137          	lui	sp,0x1a10a
1c0080b0:	80010113          	addi	sp,sp,-2048 # 1a109800 <__CTOR_LIST__-0x1ef6804>
1c0080b4:	00012023          	sw	zero,0(sp)
1c0080b8:	10500073          	wfi
1c0080bc:	ff1ff06f          	j	1c0080ac <loop>

Disassembly of section .text:

1c0080c0 <_stext>:
1c0080c0:	ffffe297          	auipc	t0,0xffffe
1c0080c4:	0a028293          	addi	t0,t0,160 # 1c006160 <pos_fll_is_on>
1c0080c8:	ffffe317          	auipc	t1,0xffffe
1c0080cc:	0bc30313          	addi	t1,t1,188 # 1c006184 <__l2_priv0_end>
1c0080d0:	0002a023          	sw	zero,0(t0)
1c0080d4:	0291                	addi	t0,t0,4
1c0080d6:	fe62ede3          	bltu	t0,t1,1c0080d0 <_stext+0x10>
1c0080da:	ffffe117          	auipc	sp,0xffffe
1c0080de:	08610113          	addi	sp,sp,134 # 1c006160 <pos_fll_is_on>
1c0080e2:	3e9060ef          	jal	ra,1c00ecca <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	06638393          	addi	t2,t2,102 # 1c008154 <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	405060ef          	jal	ra,1c00ed00 <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	447050ef          	jal	ra,1c00dd48 <exit>
	...

1c008108 <__clzsi2>:
1c008108:	000107b7          	lui	a5,0x10
1c00810c:	02f57a63          	bgeu	a0,a5,1c008140 <__clzsi2+0x38>
1c008110:	0ff00793          	li	a5,255
1c008114:	00a7b7b3          	sltu	a5,a5,a0
1c008118:	00379793          	slli	a5,a5,0x3
1c00811c:	1c000737          	lui	a4,0x1c000
1c008120:	02000693          	li	a3,32
1c008124:	40f686b3          	sub	a3,a3,a5
1c008128:	00f55533          	srl	a0,a0,a5
1c00812c:	01c70793          	addi	a5,a4,28 # 1c00001c <__clz_tab>
1c008130:	00a78533          	add	a0,a5,a0
1c008134:	00054503          	lbu	a0,0(a0)
1c008138:	40a68533          	sub	a0,a3,a0
1c00813c:	00008067          	ret
1c008140:	01000737          	lui	a4,0x1000
1c008144:	01000793          	li	a5,16
1c008148:	fce56ae3          	bltu	a0,a4,1c00811c <__clzsi2+0x14>
1c00814c:	01800793          	li	a5,24
1c008150:	fcdff06f          	j	1c00811c <__clzsi2+0x14>

1c008154 <main>:
1c008154:	81010113          	addi	sp,sp,-2032
1c008158:	b465d7b7          	lui	a5,0xb465d
1c00815c:	7e112623          	sw	ra,2028(sp)
1c008160:	7e812423          	sw	s0,2024(sp)
1c008164:	7e912223          	sw	s1,2020(sp)
1c008168:	7f212023          	sw	s2,2016(sp)
1c00816c:	7d312e23          	sw	s3,2012(sp)
1c008170:	7ee78793          	addi	a5,a5,2030 # b465d7ee <__l2_shared_end+0x9864d7ee>
1c008174:	9f010113          	addi	sp,sp,-1552
1c008178:	d03e                	sw	a5,32(sp)
1c00817a:	94b167b7          	lui	a5,0x94b16
1c00817e:	ced78793          	addi	a5,a5,-787 # 94b15ced <__l2_shared_end+0x78b05ced>
1c008182:	d23e                	sw	a5,36(sp)
1c008184:	70b8d7b7          	lui	a5,0x70b8d
1c008188:	ed878793          	addi	a5,a5,-296 # 70b8ced8 <__l2_shared_end+0x54b7ced8>
1c00818c:	d43e                	sw	a5,40(sp)
1c00818e:	f13e57b7          	lui	a5,0xf13e5
1c008192:	02578793          	addi	a5,a5,37 # f13e5025 <__l2_shared_end+0xd53d5025>
1c008196:	d63e                	sw	a5,44(sp)
1c008198:	19e717b7          	lui	a5,0x19e71
1c00819c:	f6a78793          	addi	a5,a5,-150 # 19e70f6a <__CTOR_LIST__-0x218f09a>
1c0081a0:	d83e                	sw	a5,48(sp)
1c0081a2:	846dd7b7          	lui	a5,0x846dd
1c0081a6:	acb78793          	addi	a5,a5,-1333 # 846dcacb <__l2_shared_end+0x686ccacb>
1c0081aa:	da3e                	sw	a5,52(sp)
1c0081ac:	c2e1c7b7          	lui	a5,0xc2e1c
1c0081b0:	29d78793          	addi	a5,a5,669 # c2e1c29d <__l2_shared_end+0xa6e0c29d>
1c0081b4:	dc3e                	sw	a5,56(sp)
1c0081b6:	0d9c47b7          	lui	a5,0xd9c4
1c0081ba:	61678793          	addi	a5,a5,1558 # d9c4616 <__CTOR_LIST__-0xe63b9ee>
1c0081be:	de3e                	sw	a5,60(sp)
1c0081c0:	d61367b7          	lui	a5,0xd6136
1c0081c4:	9ac78793          	addi	a5,a5,-1620 # d61359ac <__l2_shared_end+0xba1259ac>
1c0081c8:	c0be                	sw	a5,64(sp)
1c0081ca:	319b87b7          	lui	a5,0x319b8
1c0081ce:	cb378793          	addi	a5,a5,-845 # 319b7cb3 <__l2_shared_end+0x159a7cb3>
1c0081d2:	c2be                	sw	a5,68(sp)
1c0081d4:	b93db7b7          	lui	a5,0xb93db
1c0081d8:	d6878793          	addi	a5,a5,-664 # b93dad68 <__l2_shared_end+0x9d3cad68>
1c0081dc:	c4be                	sw	a5,72(sp)
1c0081de:	3b0547b7          	lui	a5,0x3b054
1c0081e2:	9c878793          	addi	a5,a5,-1592 # 3b0539c8 <__l2_shared_end+0x1f0439c8>
1c0081e6:	c6be                	sw	a5,76(sp)
1c0081e8:	a491f7b7          	lui	a5,0xa491f
1c0081ec:	45b78793          	addi	a5,a5,1115 # a491f45b <__l2_shared_end+0x8890f45b>
1c0081f0:	c8be                	sw	a5,80(sp)
1c0081f2:	d61787b7          	lui	a5,0xd6178
1c0081f6:	da178793          	addi	a5,a5,-607 # d6177da1 <__l2_shared_end+0xba167da1>
1c0081fa:	cabe                	sw	a5,84(sp)
1c0081fc:	ac4b47b7          	lui	a5,0xac4b4
1c008200:	88578793          	addi	a5,a5,-1915 # ac4b3885 <__l2_shared_end+0x904a3885>
1c008204:	ccbe                	sw	a5,88(sp)
1c008206:	ef11e7b7          	lui	a5,0xef11e
1c00820a:	eee78793          	addi	a5,a5,-274 # ef11deee <__l2_shared_end+0xd310deee>
1c00820e:	cebe                	sw	a5,92(sp)
1c008210:	c058e7b7          	lui	a5,0xc058e
1c008214:	ec078793          	addi	a5,a5,-320 # c058dec0 <__l2_shared_end+0xa457dec0>
1c008218:	d0be                	sw	a5,96(sp)
1c00821a:	a5e4c7b7          	lui	a5,0xa5e4c
1c00821e:	5a678793          	addi	a5,a5,1446 # a5e4c5a6 <__l2_shared_end+0x89e3c5a6>
1c008222:	d2be                	sw	a5,100(sp)
1c008224:	ea30e7b7          	lui	a5,0xea30e
1c008228:	98b78793          	addi	a5,a5,-1653 # ea30d98b <__l2_shared_end+0xce2fd98b>
1c00822c:	d4be                	sw	a5,104(sp)
1c00822e:	4d2a17b7          	lui	a5,0x4d2a1
1c008232:	87178793          	addi	a5,a5,-1935 # 4d2a0871 <__l2_shared_end+0x31290871>
1c008236:	d6be                	sw	a5,108(sp)
1c008238:	a91537b7          	lui	a5,0xa9153
1c00823c:	fb778793          	addi	a5,a5,-73 # a9152fb7 <__l2_shared_end+0x8d142fb7>
1c008240:	d8be                	sw	a5,112(sp)
1c008242:	7bd7c7b7          	lui	a5,0x7bd7c
1c008246:	f3178793          	addi	a5,a5,-207 # 7bd7bf31 <__l2_shared_end+0x5fd6bf31>
1c00824a:	dabe                	sw	a5,116(sp)
1c00824c:	3d9b57b7          	lui	a5,0x3d9b5
1c008250:	cbf78793          	addi	a5,a5,-833 # 3d9b4cbf <__l2_shared_end+0x219a4cbf>
1c008254:	dcbe                	sw	a5,120(sp)
1c008256:	d780d7b7          	lui	a5,0xd780d
1c00825a:	5eb78793          	addi	a5,a5,1515 # d780d5eb <__l2_shared_end+0xbb7fd5eb>
1c00825e:	debe                	sw	a5,124(sp)
1c008260:	f0c217b7          	lui	a5,0xf0c21
1c008264:	09078793          	addi	a5,a5,144 # f0c21090 <__l2_shared_end+0xd4c11090>
1c008268:	c13e                	sw	a5,128(sp)
1c00826a:	b97337b7          	lui	a5,0xb9733
1c00826e:	e9f78793          	addi	a5,a5,-353 # b9732e9f <__l2_shared_end+0x9d722e9f>
1c008272:	c33e                	sw	a5,132(sp)
1c008274:	8f4057b7          	lui	a5,0x8f405
1c008278:	12078793          	addi	a5,a5,288 # 8f405120 <__l2_shared_end+0x733f5120>
1c00827c:	c53e                	sw	a5,136(sp)
1c00827e:	341d77b7          	lui	a5,0x341d7
1c008282:	b0778793          	addi	a5,a5,-1273 # 341d6b07 <__l2_shared_end+0x181c6b07>
1c008286:	c73e                	sw	a5,140(sp)
1c008288:	f2f527b7          	lui	a5,0xf2f52
1c00828c:	1c578793          	addi	a5,a5,453 # f2f521c5 <__l2_shared_end+0xd6f421c5>
1c008290:	c93e                	sw	a5,144(sp)
1c008292:	c78ec7b7          	lui	a5,0xc78ec
1c008296:	e5f78793          	addi	a5,a5,-417 # c78ebe5f <__l2_shared_end+0xab8dbe5f>
1c00829a:	cb3e                	sw	a5,148(sp)
1c00829c:	fa07a7b7          	lui	a5,0xfa07a
1c0082a0:	d5178793          	addi	a5,a5,-687 # fa079d51 <__l2_shared_end+0xde069d51>
1c0082a4:	cd3e                	sw	a5,152(sp)
1c0082a6:	5e3ee7b7          	lui	a5,0x5e3ee
1c0082aa:	f8378793          	addi	a5,a5,-125 # 5e3edf83 <__l2_shared_end+0x423ddf83>
1c0082ae:	cf3e                	sw	a5,156(sp)
1c0082b0:	d6c8a7b7          	lui	a5,0xd6c8a
1c0082b4:	59078793          	addi	a5,a5,1424 # d6c8a590 <__l2_shared_end+0xbac7a590>
1c0082b8:	d13e                	sw	a5,160(sp)
1c0082ba:	94d597b7          	lui	a5,0x94d59
1c0082be:	0c178793          	addi	a5,a5,193 # 94d590c1 <__l2_shared_end+0x78d490c1>
1c0082c2:	d33e                	sw	a5,164(sp)
1c0082c4:	8471b7b7          	lui	a5,0x8471b
1c0082c8:	db378793          	addi	a5,a5,-589 # 8471adb3 <__l2_shared_end+0x6870adb3>
1c0082cc:	d53e                	sw	a5,168(sp)
1c0082ce:	a4adc7b7          	lui	a5,0xa4adc
1c0082d2:	8c278793          	addi	a5,a5,-1854 # a4adb8c2 <__l2_shared_end+0x88acb8c2>
1c0082d6:	d73e                	sw	a5,172(sp)
1c0082d8:	e58b37b7          	lui	a5,0xe58b3
1c0082dc:	2c878793          	addi	a5,a5,712 # e58b32c8 <__l2_shared_end+0xc98a32c8>
1c0082e0:	d93e                	sw	a5,176(sp)
1c0082e2:	be3f67b7          	lui	a5,0xbe3f6
1c0082e6:	03478793          	addi	a5,a5,52 # be3f6034 <__l2_shared_end+0xa23e6034>
1c0082ea:	db3e                	sw	a5,180(sp)
1c0082ec:	7b0c07b7          	lui	a5,0x7b0c0
1c0082f0:	d9978793          	addi	a5,a5,-615 # 7b0bfd99 <__l2_shared_end+0x5f0afd99>
1c0082f4:	dd3e                	sw	a5,184(sp)
1c0082f6:	d02457b7          	lui	a5,0xd0245
1c0082fa:	b6e78793          	addi	a5,a5,-1170 # d0244b6e <__l2_shared_end+0xb4234b6e>
1c0082fe:	df3e                	sw	a5,188(sp)
1c008300:	0abb97b7          	lui	a5,0xabb9
1c008304:	18d78793          	addi	a5,a5,397 # abb918d <__CTOR_LIST__-0x11446e77>
1c008308:	c1be                	sw	a5,192(sp)
1c00830a:	ec1767b7          	lui	a5,0xec176
1c00830e:	3ae78793          	addi	a5,a5,942 # ec1763ae <__l2_shared_end+0xd01663ae>
1c008312:	c3be                	sw	a5,196(sp)
1c008314:	6c70b7b7          	lui	a5,0x6c70b
1c008318:	1e178793          	addi	a5,a5,481 # 6c70b1e1 <__l2_shared_end+0x506fb1e1>
1c00831c:	c5be                	sw	a5,200(sp)
1c00831e:	f54157b7          	lui	a5,0xf5415
1c008322:	65678793          	addi	a5,a5,1622 # f5415656 <__l2_shared_end+0xd9405656>
1c008326:	c7be                	sw	a5,204(sp)
1c008328:	619dd7b7          	lui	a5,0x619dd
1c00832c:	23d78793          	addi	a5,a5,573 # 619dd23d <__l2_shared_end+0x459cd23d>
1c008330:	c9be                	sw	a5,208(sp)
1c008332:	9539a7b7          	lui	a5,0x9539a
1c008336:	51178793          	addi	a5,a5,1297 # 9539a511 <__l2_shared_end+0x7938a511>
1c00833a:	cbbe                	sw	a5,212(sp)
1c00833c:	06d567b7          	lui	a5,0x6d56
1c008340:	7fe78793          	addi	a5,a5,2046 # 6d567fe <__CTOR_LIST__-0x152a9806>
1c008344:	cdbe                	sw	a5,216(sp)
1c008346:	d91887b7          	lui	a5,0xd9188
1c00834a:	b4c78793          	addi	a5,a5,-1204 # d9187b4c <__l2_shared_end+0xbd177b4c>
1c00834e:	cfbe                	sw	a5,220(sp)
1c008350:	25aad7b7          	lui	a5,0x25aad
1c008354:	32c78793          	addi	a5,a5,812 # 25aad32c <__l2_shared_end+0x9a9d32c>
1c008358:	d1be                	sw	a5,224(sp)
1c00835a:	b3b147b7          	lui	a5,0xb3b14
1c00835e:	a2278793          	addi	a5,a5,-1502 # b3b13a22 <__l2_shared_end+0x97b03a22>
1c008362:	d3be                	sw	a5,228(sp)
1c008364:	24a8f7b7          	lui	a5,0x24a8f
1c008368:	8c978793          	addi	a5,a5,-1847 # 24a8e8c9 <__l2_shared_end+0x8a7e8c9>
1c00836c:	d5be                	sw	a5,232(sp)
1c00836e:	2c1667b7          	lui	a5,0x2c166
1c008372:	18678793          	addi	a5,a5,390 # 2c166186 <__l2_shared_end+0x10156186>
1c008376:	d7be                	sw	a5,236(sp)
1c008378:	c5c277b7          	lui	a5,0xc5c27
1c00837c:	bf578793          	addi	a5,a5,-1035 # c5c26bf5 <__l2_shared_end+0xa9c16bf5>
1c008380:	d9be                	sw	a5,240(sp)
1c008382:	120fa7b7          	lui	a5,0x120fa
1c008386:	4e178793          	addi	a5,a5,1249 # 120fa4e1 <__CTOR_LIST__-0x9f05b23>
1c00838a:	dbbe                	sw	a5,244(sp)
1c00838c:	fe1887b7          	lui	a5,0xfe188
1c008390:	56d78793          	addi	a5,a5,1389 # fe18856d <__l2_shared_end+0xe217856d>
1c008394:	ddbe                	sw	a5,248(sp)
1c008396:	94e2e7b7          	lui	a5,0x94e2e
1c00839a:	55f78793          	addi	a5,a5,1375 # 94e2e55f <__l2_shared_end+0x78e1e55f>
1c00839e:	dfbe                	sw	a5,252(sp)
1c0083a0:	70e077b7          	lui	a5,0x70e07
1c0083a4:	61578793          	addi	a5,a5,1557 # 70e07615 <__l2_shared_end+0x54df7615>
1c0083a8:	10f12023          	sw	a5,256(sp)
1c0083ac:	2f3de7b7          	lui	a5,0x2f3de
1c0083b0:	bbb78793          	addi	a5,a5,-1093 # 2f3ddbbb <__l2_shared_end+0x133cdbbb>
1c0083b4:	10f12223          	sw	a5,260(sp)
1c0083b8:	4c09e7b7          	lui	a5,0x4c09e
1c0083bc:	17cd                	addi	a5,a5,-13
1c0083be:	10f12423          	sw	a5,264(sp)
1c0083c2:	18c3d7b7          	lui	a5,0x18c3d
1c0083c6:	c2f78793          	addi	a5,a5,-977 # 18c3cc2f <__CTOR_LIST__-0x33c33d5>
1c0083ca:	10f12623          	sw	a5,268(sp)
1c0083ce:	85efd7b7          	lui	a5,0x85efd
1c0083d2:	21f78793          	addi	a5,a5,543 # 85efd21f <__l2_shared_end+0x69eed21f>
1c0083d6:	10f12823          	sw	a5,272(sp)
1c0083da:	8aa987b7          	lui	a5,0x8aa98
1c0083de:	b8878793          	addi	a5,a5,-1144 # 8aa97b88 <__l2_shared_end+0x6ea87b88>
1c0083e2:	10f12a23          	sw	a5,276(sp)
1c0083e6:	bb9f47b7          	lui	a5,0xbb9f4
1c0083ea:	17a78793          	addi	a5,a5,378 # bb9f417a <__l2_shared_end+0x9f9e417a>
1c0083ee:	10f12c23          	sw	a5,280(sp)
1c0083f2:	4bd657b7          	lui	a5,0x4bd65
1c0083f6:	e7078793          	addi	a5,a5,-400 # 4bd64e70 <__l2_shared_end+0x2fd54e70>
1c0083fa:	10f12e23          	sw	a5,284(sp)
1c0083fe:	74a837b7          	lui	a5,0x74a83
1c008402:	61278793          	addi	a5,a5,1554 # 74a83612 <__l2_shared_end+0x58a73612>
1c008406:	12f12023          	sw	a5,288(sp)
1c00840a:	6145e7b7          	lui	a5,0x6145e
1c00840e:	3e478793          	addi	a5,a5,996 # 6145e3e4 <__l2_shared_end+0x4544e3e4>
1c008412:	12f12223          	sw	a5,292(sp)
1c008416:	360457b7          	lui	a5,0x36045
1c00841a:	9ff78793          	addi	a5,a5,-1537 # 360449ff <__l2_shared_end+0x1a0349ff>
1c00841e:	12f12423          	sw	a5,296(sp)
1c008422:	652a27b7          	lui	a5,0x652a2
1c008426:	2a878793          	addi	a5,a5,680 # 652a22a8 <__l2_shared_end+0x492922a8>
1c00842a:	12f12623          	sw	a5,300(sp)
1c00842e:	9c34d7b7          	lui	a5,0x9c34d
1c008432:	30878793          	addi	a5,a5,776 # 9c34d308 <__l2_shared_end+0x8033d308>
1c008436:	12f12823          	sw	a5,304(sp)
1c00843a:	5fa927b7          	lui	a5,0x5fa92
1c00843e:	4b178793          	addi	a5,a5,1201 # 5fa924b1 <__l2_shared_end+0x43a824b1>
1c008442:	12f12a23          	sw	a5,308(sp)
1c008446:	87900793          	li	a5,-1927
1c00844a:	12f11c23          	sh	a5,312(sp)
1c00844e:	57d1                	li	a5,-12
1c008450:	12f10d23          	sb	a5,314(sp)
1c008454:	fdc00793          	li	a5,-36
1c008458:	12f10da3          	sb	a5,315(sp)
1c00845c:	0347a7b7          	lui	a5,0x347a
1c008460:	65f78793          	addi	a5,a5,1631 # 347a65f <__CTOR_LIST__-0x18b859a5>
1c008464:	12f12e23          	sw	a5,316(sp)
1c008468:	763897b7          	lui	a5,0x76389
1c00846c:	dba78793          	addi	a5,a5,-582 # 76388dba <__l2_shared_end+0x5a378dba>
1c008470:	14f12023          	sw	a5,320(sp)
1c008474:	434257b7          	lui	a5,0x43425
1c008478:	a1878793          	addi	a5,a5,-1512 # 43424a18 <__l2_shared_end+0x27414a18>
1c00847c:	14f12223          	sw	a5,324(sp)
1c008480:	e14ee7b7          	lui	a5,0xe14ee
1c008484:	91f78793          	addi	a5,a5,-1761 # e14ed91f <__l2_shared_end+0xc54dd91f>
1c008488:	14f12423          	sw	a5,328(sp)
1c00848c:	10f4c7b7          	lui	a5,0x10f4c
1c008490:	61478793          	addi	a5,a5,1556 # 10f4c614 <__CTOR_LIST__-0xb0b39f0>
1c008494:	14f12623          	sw	a5,332(sp)
1c008498:	cd4c17b7          	lui	a5,0xcd4c1
1c00849c:	c8b78793          	addi	a5,a5,-885 # cd4c0c8b <__l2_shared_end+0xb14b0c8b>
1c0084a0:	14f12823          	sw	a5,336(sp)
1c0084a4:	934067b7          	lui	a5,0x93406
1c0084a8:	d7378793          	addi	a5,a5,-653 # 93405d73 <__l2_shared_end+0x773f5d73>
1c0084ac:	14f12a23          	sw	a5,340(sp)
1c0084b0:	9861e7b7          	lui	a5,0x9861e
1c0084b4:	66b78793          	addi	a5,a5,1643 # 9861e66b <__l2_shared_end+0x7c60e66b>
1c0084b8:	14f12c23          	sw	a5,344(sp)
1c0084bc:	814617b7          	lui	a5,0x81461
1c0084c0:	fa678793          	addi	a5,a5,-90 # 81460fa6 <__l2_shared_end+0x65450fa6>
1c0084c4:	14f12e23          	sw	a5,348(sp)
1c0084c8:	6db577b7          	lui	a5,0x6db57
1c0084cc:	67278793          	addi	a5,a5,1650 # 6db57672 <__l2_shared_end+0x51b47672>
1c0084d0:	16f12023          	sw	a5,352(sp)
1c0084d4:	3a4707b7          	lui	a5,0x3a470
1c0084d8:	76678793          	addi	a5,a5,1894 # 3a470766 <__l2_shared_end+0x1e460766>
1c0084dc:	16f12223          	sw	a5,356(sp)
1c0084e0:	4811e7b7          	lui	a5,0x4811e
1c0084e4:	95878793          	addi	a5,a5,-1704 # 4811d958 <__l2_shared_end+0x2c10d958>
1c0084e8:	16f12423          	sw	a5,360(sp)
1c0084ec:	dae487b7          	lui	a5,0xdae48
1c0084f0:	fc878793          	addi	a5,a5,-56 # dae47fc8 <__l2_shared_end+0xbee37fc8>
1c0084f4:	16f12623          	sw	a5,364(sp)
1c0084f8:	a19717b7          	lui	a5,0xa1971
1c0084fc:	30778793          	addi	a5,a5,775 # a1971307 <__l2_shared_end+0x85961307>
1c008500:	16f12823          	sw	a5,368(sp)
1c008504:	d24817b7          	lui	a5,0xd2481
1c008508:	56278793          	addi	a5,a5,1378 # d2481562 <__l2_shared_end+0xb6471562>
1c00850c:	16f12a23          	sw	a5,372(sp)
1c008510:	3350d7b7          	lui	a5,0x3350d
1c008514:	07cd                	addi	a5,a5,19
1c008516:	16f12c23          	sw	a5,376(sp)
1c00851a:	929917b7          	lui	a5,0x92991
1c00851e:	a2578793          	addi	a5,a5,-1499 # 92990a25 <__l2_shared_end+0x76980a25>
1c008522:	16f12e23          	sw	a5,380(sp)
1c008526:	9b0627b7          	lui	a5,0x9b062
1c00852a:	34078793          	addi	a5,a5,832 # 9b062340 <__l2_shared_end+0x7f052340>
1c00852e:	18f12023          	sw	a5,384(sp)
1c008532:	a2ab87b7          	lui	a5,0xa2ab8
1c008536:	55778793          	addi	a5,a5,1367 # a2ab8557 <__l2_shared_end+0x86aa8557>
1c00853a:	18f12223          	sw	a5,388(sp)
1c00853e:	824d47b7          	lui	a5,0x824d4
1c008542:	44e78793          	addi	a5,a5,1102 # 824d444e <__l2_shared_end+0x664c444e>
1c008546:	18f12423          	sw	a5,392(sp)
1c00854a:	db2d07b7          	lui	a5,0xdb2d0
1c00854e:	abe78793          	addi	a5,a5,-1346 # db2cfabe <__l2_shared_end+0xbf2bfabe>
1c008552:	18f12623          	sw	a5,396(sp)
1c008556:	aecbd7b7          	lui	a5,0xaecbd
1c00855a:	1dc78793          	addi	a5,a5,476 # aecbd1dc <__l2_shared_end+0x92cad1dc>
1c00855e:	18f12823          	sw	a5,400(sp)
1c008562:	d464d7b7          	lui	a5,0xd464d
1c008566:	bf878793          	addi	a5,a5,-1032 # d464cbf8 <__l2_shared_end+0xb863cbf8>
1c00856a:	18f12a23          	sw	a5,404(sp)
1c00856e:	de95d7b7          	lui	a5,0xde95d
1c008572:	71678793          	addi	a5,a5,1814 # de95d716 <__l2_shared_end+0xc294d716>
1c008576:	18f12c23          	sw	a5,408(sp)
1c00857a:	50c3d7b7          	lui	a5,0x50c3d
1c00857e:	14878793          	addi	a5,a5,328 # 50c3d148 <__l2_shared_end+0x34c2d148>
1c008582:	18f12e23          	sw	a5,412(sp)
1c008586:	f5dcc7b7          	lui	a5,0xf5dcc
1c00858a:	57a78793          	addi	a5,a5,1402 # f5dcc57a <__l2_shared_end+0xd9dbc57a>
1c00858e:	1af12023          	sw	a5,416(sp)
1c008592:	7e4aa7b7          	lui	a5,0x7e4aa
1c008596:	8ee78793          	addi	a5,a5,-1810 # 7e4a98ee <__l2_shared_end+0x624998ee>
1c00859a:	1af12223          	sw	a5,420(sp)
1c00859e:	dd9177b7          	lui	a5,0xdd917
1c0085a2:	9e478793          	addi	a5,a5,-1564 # dd9169e4 <__l2_shared_end+0xc19069e4>
1c0085a6:	1af12423          	sw	a5,424(sp)
1c0085aa:	50be67b7          	lui	a5,0x50be6
1c0085ae:	d1478793          	addi	a5,a5,-748 # 50be5d14 <__l2_shared_end+0x34bd5d14>
1c0085b2:	1af12623          	sw	a5,428(sp)
1c0085b6:	6f7d87b7          	lui	a5,0x6f7d8
1c0085ba:	c3b78793          	addi	a5,a5,-965 # 6f7d7c3b <__l2_shared_end+0x537c7c3b>
1c0085be:	1af12823          	sw	a5,432(sp)
1c0085c2:	d0ebd7b7          	lui	a5,0xd0ebd
1c0085c6:	cb678793          	addi	a5,a5,-842 # d0ebccb6 <__l2_shared_end+0xb4eaccb6>
1c0085ca:	1af12a23          	sw	a5,436(sp)
1c0085ce:	0cc0b7b7          	lui	a5,0xcc0b
1c0085d2:	12b78793          	addi	a5,a5,299 # cc0b12b <__CTOR_LIST__-0xf3f4ed9>
1c0085d6:	1af12c23          	sw	a5,440(sp)
1c0085da:	d95857b7          	lui	a5,0xd9585
1c0085de:	15a78793          	addi	a5,a5,346 # d958515a <__l2_shared_end+0xbd57515a>
1c0085e2:	1af12e23          	sw	a5,444(sp)
1c0085e6:	d41ae7b7          	lui	a5,0xd41ae
1c0085ea:	88d78793          	addi	a5,a5,-1907 # d41ad88d <__l2_shared_end+0xb819d88d>
1c0085ee:	1cf12023          	sw	a5,448(sp)
1c0085f2:	9a0bb7b7          	lui	a5,0x9a0bb
1c0085f6:	c9278793          	addi	a5,a5,-878 # 9a0bac92 <__l2_shared_end+0x7e0aac92>
1c0085fa:	1cf12223          	sw	a5,452(sp)
1c0085fe:	f35f67b7          	lui	a5,0xf35f6
1c008602:	ed678793          	addi	a5,a5,-298 # f35f5ed6 <__l2_shared_end+0xd75e5ed6>
1c008606:	1cf12423          	sw	a5,456(sp)
1c00860a:	cc0947b7          	lui	a5,0xcc094
1c00860e:	2b778793          	addi	a5,a5,695 # cc0942b7 <__l2_shared_end+0xb00842b7>
1c008612:	1cf12623          	sw	a5,460(sp)
1c008616:	697147b7          	lui	a5,0x69714
1c00861a:	3f078793          	addi	a5,a5,1008 # 697143f0 <__l2_shared_end+0x4d7043f0>
1c00861e:	1cf12823          	sw	a5,464(sp)
1c008622:	80fd77b7          	lui	a5,0x80fd7
1c008626:	fb078793          	addi	a5,a5,-80 # 80fd6fb0 <__l2_shared_end+0x64fc6fb0>
1c00862a:	1cf12a23          	sw	a5,468(sp)
1c00862e:	82f7a7b7          	lui	a5,0x82f7a
1c008632:	ac978793          	addi	a5,a5,-1335 # 82f79ac9 <__l2_shared_end+0x66f69ac9>
1c008636:	1cf12c23          	sw	a5,472(sp)
1c00863a:	793457b7          	lui	a5,0x79345
1c00863e:	e0c78793          	addi	a5,a5,-500 # 79344e0c <__l2_shared_end+0x5d334e0c>
1c008642:	1cf12e23          	sw	a5,476(sp)
1c008646:	107167b7          	lui	a5,0x10716
1c00864a:	26c78793          	addi	a5,a5,620 # 1071626c <__CTOR_LIST__-0xb8e9d98>
1c00864e:	1ef12023          	sw	a5,480(sp)
1c008652:	b13527b7          	lui	a5,0xb1352
1c008656:	5a378793          	addi	a5,a5,1443 # b13525a3 <__l2_shared_end+0x953425a3>
1c00865a:	1ef12223          	sw	a5,484(sp)
1c00865e:	f4a977b7          	lui	a5,0xf4a97
1c008662:	31778793          	addi	a5,a5,791 # f4a97317 <__l2_shared_end+0xd8a87317>
1c008666:	1ef12423          	sw	a5,488(sp)
1c00866a:	20df97b7          	lui	a5,0x20df9
1c00866e:	80f78793          	addi	a5,a5,-2033 # 20df880f <__l2_shared_end+0x4de880f>
1c008672:	1ef12623          	sw	a5,492(sp)
1c008676:	1de167b7          	lui	a5,0x1de16
1c00867a:	bb378793          	addi	a5,a5,-1101 # 1de15bb3 <__l2_shared_end+0x1e05bb3>
1c00867e:	1ef12823          	sw	a5,496(sp)
1c008682:	e7c2d7b7          	lui	a5,0xe7c2d
1c008686:	8a278793          	addi	a5,a5,-1886 # e7c2c8a2 <__l2_shared_end+0xcbc1c8a2>
1c00868a:	1ef12a23          	sw	a5,500(sp)
1c00868e:	8cdb37b7          	lui	a5,0x8cdb3
1c008692:	69b78793          	addi	a5,a5,1691 # 8cdb369b <__l2_shared_end+0x70da369b>
1c008696:	1ef12c23          	sw	a5,504(sp)
1c00869a:	845497b7          	lui	a5,0x84549
1c00869e:	7f378793          	addi	a5,a5,2035 # 845497f3 <__l2_shared_end+0x685397f3>
1c0086a2:	1ef12e23          	sw	a5,508(sp)
1c0086a6:	69e397b7          	lui	a5,0x69e39
1c0086aa:	76f78793          	addi	a5,a5,1903 # 69e3976f <__l2_shared_end+0x4de2976f>
1c0086ae:	20f12023          	sw	a5,512(sp)
1c0086b2:	af6847b7          	lui	a5,0xaf684
1c0086b6:	bb978793          	addi	a5,a5,-1095 # af683bb9 <__l2_shared_end+0x93673bb9>
1c0086ba:	20f12223          	sw	a5,516(sp)
1c0086be:	1eee07b7          	lui	a5,0x1eee0
1c0086c2:	92f78793          	addi	a5,a5,-1745 # 1eedf92f <__l2_shared_end+0x2ecf92f>
1c0086c6:	20f12423          	sw	a5,520(sp)
1c0086ca:	9ba017b7          	lui	a5,0x9ba01
1c0086ce:	5ae78793          	addi	a5,a5,1454 # 9ba015ae <__l2_shared_end+0x7f9f15ae>
1c0086d2:	20f12623          	sw	a5,524(sp)
1c0086d6:	33c6b7b7          	lui	a5,0x33c6b
1c0086da:	1dc78793          	addi	a5,a5,476 # 33c6b1dc <__l2_shared_end+0x17c5b1dc>
1c0086de:	20f12823          	sw	a5,528(sp)
1c0086e2:	a10567b7          	lui	a5,0xa1056
1c0086e6:	cdc78793          	addi	a5,a5,-804 # a1055cdc <__l2_shared_end+0x85045cdc>
1c0086ea:	20f12a23          	sw	a5,532(sp)
1c0086ee:	f2f9f7b7          	lui	a5,0xf2f9f
1c0086f2:	8b378793          	addi	a5,a5,-1869 # f2f9e8b3 <__l2_shared_end+0xd6f8e8b3>
1c0086f6:	20f12c23          	sw	a5,536(sp)
1c0086fa:	437e47b7          	lui	a5,0x437e4
1c0086fe:	39c78793          	addi	a5,a5,924 # 437e439c <__l2_shared_end+0x277d439c>
1c008702:	20f12e23          	sw	a5,540(sp)
1c008706:	4f9c77b7          	lui	a5,0x4f9c7
1c00870a:	b1e78793          	addi	a5,a5,-1250 # 4f9c6b1e <__l2_shared_end+0x339b6b1e>
1c00870e:	22f12023          	sw	a5,544(sp)
1c008712:	284b17b7          	lui	a5,0x284b1
1c008716:	d6c78793          	addi	a5,a5,-660 # 284b0d6c <__l2_shared_end+0xc4a0d6c>
1c00871a:	22f12223          	sw	a5,548(sp)
1c00871e:	e75e67b7          	lui	a5,0xe75e6
1c008722:	84d78793          	addi	a5,a5,-1971 # e75e584d <__l2_shared_end+0xcb5d584d>
1c008726:	22f12423          	sw	a5,552(sp)
1c00872a:	0c7a87b7          	lui	a5,0xc7a8
1c00872e:	8e578793          	addi	a5,a5,-1819 # c7a78e5 <__CTOR_LIST__-0xf85871f>
1c008732:	22f12623          	sw	a5,556(sp)
1c008736:	d36e97b7          	lui	a5,0xd36e9
1c00873a:	f7578793          	addi	a5,a5,-139 # d36e8f75 <__l2_shared_end+0xb76d8f75>
1c00873e:	22f12a23          	sw	a5,564(sp)
1c008742:	613227b7          	lui	a5,0x61322
1c008746:	63f78793          	addi	a5,a5,1599 # 6132263f <__l2_shared_end+0x4531263f>
1c00874a:	22f12c23          	sw	a5,568(sp)
1c00874e:	77a537b7          	lui	a5,0x77a53
1c008752:	b5b78793          	addi	a5,a5,-1189 # 77a52b5b <__l2_shared_end+0x5ba42b5b>
1c008756:	22f12e23          	sw	a5,572(sp)
1c00875a:	f8d1e7b7          	lui	a5,0xf8d1e
1c00875e:	04578793          	addi	a5,a5,69 # f8d1e045 <__l2_shared_end+0xdcd0e045>
1c008762:	24f12023          	sw	a5,576(sp)
1c008766:	d32b57b7          	lui	a5,0xd32b5
1c00876a:	a4078793          	addi	a5,a5,-1472 # d32b4a40 <__l2_shared_end+0xb72a4a40>
1c00876e:	24f12223          	sw	a5,580(sp)
1c008772:	1f5947b7          	lui	a5,0x1f594
1c008776:	0e278793          	addi	a5,a5,226 # 1f5940e2 <__l2_shared_end+0x35840e2>
1c00877a:	24f12423          	sw	a5,584(sp)
1c00877e:	fc5d77b7          	lui	a5,0xfc5d7
1c008782:	7fc78793          	addi	a5,a5,2044 # fc5d77fc <__l2_shared_end+0xe05c77fc>
1c008786:	24f12623          	sw	a5,588(sp)
1c00878a:	b260a7b7          	lui	a5,0xb260a
1c00878e:	f5c78793          	addi	a5,a5,-164 # b2609f5c <__l2_shared_end+0x965f9f5c>
1c008792:	24f12823          	sw	a5,592(sp)
1c008796:	7c3b77b7          	lui	a5,0x7c3b7
1c00879a:	10778793          	addi	a5,a5,263 # 7c3b7107 <__l2_shared_end+0x603a7107>
1c00879e:	24f12a23          	sw	a5,596(sp)
1c0087a2:	579ed7b7          	lui	a5,0x579ed
1c0087a6:	80978793          	addi	a5,a5,-2039 # 579ec809 <__l2_shared_end+0x3b9dc809>
1c0087aa:	24f12c23          	sw	a5,600(sp)
1c0087ae:	ab4847b7          	lui	a5,0xab484
1c0087b2:	d0278793          	addi	a5,a5,-766 # ab483d02 <__l2_shared_end+0x8f473d02>
1c0087b6:	24f12e23          	sw	a5,604(sp)
1c0087ba:	3a0857b7          	lui	a5,0x3a085
1c0087be:	1d578793          	addi	a5,a5,469 # 3a0851d5 <__l2_shared_end+0x1e0751d5>
1c0087c2:	26f12023          	sw	a5,608(sp)
1c0087c6:	b72197b7          	lui	a5,0xb7219
1c0087ca:	41c78793          	addi	a5,a5,1052 # b721941c <__l2_shared_end+0x9b20941c>
1c0087ce:	26f12223          	sw	a5,612(sp)
1c0087d2:	522437b7          	lui	a5,0x52243
1c0087d6:	91278793          	addi	a5,a5,-1774 # 52242912 <__l2_shared_end+0x36232912>
1c0087da:	26f12423          	sw	a5,616(sp)
1c0087de:	3a7d87b7          	lui	a5,0x3a7d8
1c0087e2:	3e678793          	addi	a5,a5,998 # 3a7d83e6 <__l2_shared_end+0x1e7c83e6>
1c0087e6:	26f12623          	sw	a5,620(sp)
1c0087ea:	322e27b7          	lui	a5,0x322e2
1c0087ee:	33e78793          	addi	a5,a5,830 # 322e233e <__l2_shared_end+0x162d233e>
1c0087f2:	26f12823          	sw	a5,624(sp)
1c0087f6:	f4e8d7b7          	lui	a5,0xf4e8d
1c0087fa:	d7778793          	addi	a5,a5,-649 # f4e8cd77 <__l2_shared_end+0xd8e7cd77>
1c0087fe:	26f12a23          	sw	a5,628(sp)
1c008802:	df1597b7          	lui	a5,0xdf159
1c008806:	91f78793          	addi	a5,a5,-1761 # df15891f <__l2_shared_end+0xc314891f>
1c00880a:	26f12c23          	sw	a5,632(sp)
1c00880e:	604877b7          	lui	a5,0x60487
1c008812:	cc978793          	addi	a5,a5,-823 # 60486cc9 <__l2_shared_end+0x44476cc9>
1c008816:	26f12e23          	sw	a5,636(sp)
1c00881a:	bb6267b7          	lui	a5,0xbb626
1c00881e:	83e78793          	addi	a5,a5,-1986 # bb62583e <__l2_shared_end+0x9f61583e>
1c008822:	28f12023          	sw	a5,640(sp)
1c008826:	22e057b7          	lui	a5,0x22e05
1c00882a:	92578793          	addi	a5,a5,-1755 # 22e04925 <__l2_shared_end+0x6df4925>
1c00882e:	28f12223          	sw	a5,644(sp)
1c008832:	e55627b7          	lui	a5,0xe5562
1c008836:	28a78793          	addi	a5,a5,650 # e556228a <__l2_shared_end+0xc955228a>
1c00883a:	28f12423          	sw	a5,648(sp)
1c00883e:	21dd97b7          	lui	a5,0x21dd9
1c008842:	78378793          	addi	a5,a5,1923 # 21dd9783 <__l2_shared_end+0x5dc9783>
1c008846:	28f12623          	sw	a5,652(sp)
1c00884a:	1352b7b7          	lui	a5,0x1352b
1c00884e:	6699                	lui	a3,0x6
1c008850:	99578793          	addi	a5,a5,-1643 # 1352a995 <__CTOR_LIST__-0x8ad566f>
1c008854:	6c968713          	addi	a4,a3,1737 # 66c9 <__CTOR_LIST__-0x1bff993b>
1c008858:	28f12823          	sw	a5,656(sp)
1c00885c:	09fd58b7          	lui	a7,0x9fd5
1c008860:	4f0f07b7          	lui	a5,0x4f0f0
1c008864:	22e11823          	sh	a4,560(sp)
1c008868:	5d378793          	addi	a5,a5,1491 # 4f0f05d3 <__l2_shared_end+0x330e05d3>
1c00886c:	fd188893          	addi	a7,a7,-47 # 9fd4fd1 <__CTOR_LIST__-0x1202b033>
1c008870:	28f12a23          	sw	a5,660(sp)
1c008874:	2d112a23          	sw	a7,724(sp)
1c008878:	539b48b7          	lui	a7,0x539b4
1c00887c:	c6a88893          	addi	a7,a7,-918 # 539b3c6a <__l2_shared_end+0x379a3c6a>
1c008880:	2d112c23          	sw	a7,728(sp)
1c008884:	1ca4d8b7          	lui	a7,0x1ca4d
1c008888:	dda88893          	addi	a7,a7,-550 # 1ca4cdda <__l2_shared_end+0xa3cdda>
1c00888c:	2d112e23          	sw	a7,732(sp)
1c008890:	79cce8b7          	lui	a7,0x79cce
1c008894:	2c188893          	addi	a7,a7,705 # 79cce2c1 <__l2_shared_end+0x5dcbe2c1>
1c008898:	33112023          	sw	a7,800(sp)
1c00889c:	fd2458b7          	lui	a7,0xfd245
1c0088a0:	81b88893          	addi	a7,a7,-2021 # fd24481b <__l2_shared_end+0xe123481b>
1c0088a4:	2f112023          	sw	a7,736(sp)
1c0088a8:	a0b908b7          	lui	a7,0xa0b90
1c0088ac:	dca88893          	addi	a7,a7,-566 # a0b8fdca <__l2_shared_end+0x84b7fdca>
1c0088b0:	a872e7b7          	lui	a5,0xa872e
1c0088b4:	c4378793          	addi	a5,a5,-957 # a872dc43 <__l2_shared_end+0x8c71dc43>
1c0088b8:	31112e23          	sw	a7,796(sp)
1c0088bc:	2ad038b7          	lui	a7,0x2ad03
1c0088c0:	28f12c23          	sw	a5,664(sp)
1c0088c4:	47688893          	addi	a7,a7,1142 # 2ad03476 <__l2_shared_end+0xecf3476>
1c0088c8:	750ba7b7          	lui	a5,0x750ba
1c0088cc:	1c078793          	addi	a5,a5,448 # 750ba1c0 <__l2_shared_end+0x590aa1c0>
1c0088d0:	2f112223          	sw	a7,740(sp)
1c0088d4:	7cca48b7          	lui	a7,0x7cca4
1c0088d8:	28f12e23          	sw	a5,668(sp)
1c0088dc:	3ba88893          	addi	a7,a7,954 # 7cca43ba <__l2_shared_end+0x60c943ba>
1c0088e0:	57b1                	li	a5,-20
1c0088e2:	22f10923          	sb	a5,562(sp)
1c0088e6:	31112c23          	sw	a7,792(sp)
1c0088ea:	f8600793          	li	a5,-122
1c0088ee:	f5c8b8b7          	lui	a7,0xf5c8b
1c0088f2:	22f109a3          	sb	a5,563(sp)
1c0088f6:	18fd                	addi	a7,a7,-1
1c0088f8:	5718a7b7          	lui	a5,0x5718a
1c0088fc:	0c578793          	addi	a5,a5,197 # 5718a0c5 <__l2_shared_end+0x3b17a0c5>
1c008900:	2f112423          	sw	a7,744(sp)
1c008904:	7dcd68b7          	lui	a7,0x7dcd6
1c008908:	2af12023          	sw	a5,672(sp)
1c00890c:	d6b88893          	addi	a7,a7,-661 # 7dcd5d6b <__l2_shared_end+0x61cc5d6b>
1c008910:	9fbae7b7          	lui	a5,0x9fbae
1c008914:	d7a84637          	lui	a2,0xd7a84
1c008918:	77178793          	addi	a5,a5,1905 # 9fbae771 <__l2_shared_end+0x83b9e771>
1c00891c:	d9b60613          	addi	a2,a2,-613 # d7a83d9b <__l2_shared_end+0xbba73d9b>
1c008920:	31112a23          	sw	a7,788(sp)
1c008924:	6f9c98b7          	lui	a7,0x6f9c9
1c008928:	2af12223          	sw	a5,676(sp)
1c00892c:	2ac12e23          	sw	a2,700(sp)
1c008930:	1c988893          	addi	a7,a7,457 # 6f9c91c9 <__l2_shared_end+0x539b91c9>
1c008934:	bfdd47b7          	lui	a5,0xbfdd4
1c008938:	817d5637          	lui	a2,0x817d5
1c00893c:	2c378793          	addi	a5,a5,707 # bfdd42c3 <__l2_shared_end+0xa3dc42c3>
1c008940:	81f60613          	addi	a2,a2,-2017 # 817d481f <__l2_shared_end+0x657c481f>
1c008944:	2f112623          	sw	a7,748(sp)
1c008948:	3a2708b7          	lui	a7,0x3a270
1c00894c:	2af12423          	sw	a5,680(sp)
1c008950:	2cc12023          	sw	a2,704(sp)
1c008954:	ad588893          	addi	a7,a7,-1323 # 3a26fad5 <__l2_shared_end+0x1e25fad5>
1c008958:	3b0a87b7          	lui	a5,0x3b0a8
1c00895c:	9cc4a637          	lui	a2,0x9cc4a
1c008960:	dc178793          	addi	a5,a5,-575 # 3b0a7dc1 <__l2_shared_end+0x1f097dc1>
1c008964:	93760613          	addi	a2,a2,-1737 # 9cc49937 <__l2_shared_end+0x80c39937>
1c008968:	31112823          	sw	a7,784(sp)
1c00896c:	34fe98b7          	lui	a7,0x34fe9
1c008970:	2af12623          	sw	a5,684(sp)
1c008974:	2cc12223          	sw	a2,708(sp)
1c008978:	78288893          	addi	a7,a7,1922 # 34fe9782 <__l2_shared_end+0x18fd9782>
1c00897c:	eac857b7          	lui	a5,0xeac85
1c008980:	ab671637          	lui	a2,0xab671
1c008984:	25578793          	addi	a5,a5,597 # eac85255 <__l2_shared_end+0xcec75255>
1c008988:	3f060613          	addi	a2,a2,1008 # ab6713f0 <__l2_shared_end+0x8f6613f0>
1c00898c:	2f112823          	sw	a7,752(sp)
1c008990:	72e858b7          	lui	a7,0x72e85
1c008994:	2af12823          	sw	a5,688(sp)
1c008998:	2cc12423          	sw	a2,712(sp)
1c00899c:	c3288893          	addi	a7,a7,-974 # 72e84c32 <__l2_shared_end+0x56e74c32>
1c0089a0:	7886a7b7          	lui	a5,0x7886a
1c0089a4:	3fff4637          	lui	a2,0x3fff4
1c0089a8:	3f878793          	addi	a5,a5,1016 # 7886a3f8 <__l2_shared_end+0x5c85a3f8>
1c0089ac:	3c360613          	addi	a2,a2,963 # 3fff43c3 <__l2_shared_end+0x23fe43c3>
1c0089b0:	31112623          	sw	a7,780(sp)
1c0089b4:	9ee098b7          	lui	a7,0x9ee09
1c0089b8:	2af12a23          	sw	a5,692(sp)
1c0089bc:	2cc12623          	sw	a2,716(sp)
1c0089c0:	e3a88893          	addi	a7,a7,-454 # 9ee08e3a <__l2_shared_end+0x82df8e3a>
1c0089c4:	a748e7b7          	lui	a5,0xa748e
1c0089c8:	d8bcd637          	lui	a2,0xd8bcd
1c0089cc:	c0d78793          	addi	a5,a5,-1011 # a748dc0d <__l2_shared_end+0x8b47dc0d>
1c0089d0:	c1c60613          	addi	a2,a2,-996 # d8bccc1c <__l2_shared_end+0xbcbbcc1c>
1c0089d4:	2f112a23          	sw	a7,756(sp)
1c0089d8:	5b19a8b7          	lui	a7,0x5b19a
1c0089dc:	2af12c23          	sw	a5,696(sp)
1c0089e0:	2cc12823          	sw	a2,720(sp)
1c0089e4:	fde88893          	addi	a7,a7,-34 # 5b199fde <__l2_shared_end+0x3f189fde>
1c0089e8:	31112423          	sw	a7,776(sp)
1c0089ec:	b48568b7          	lui	a7,0xb4856
1c0089f0:	7b188893          	addi	a7,a7,1969 # b48567b1 <__l2_shared_end+0x988467b1>
1c0089f4:	2f112c23          	sw	a7,760(sp)
1c0089f8:	db9028b7          	lui	a7,0xdb902
1c0089fc:	dec88893          	addi	a7,a7,-532 # db901dec <__l2_shared_end+0xbf8f1dec>
1c008a00:	31112223          	sw	a7,772(sp)
1c008a04:	f61948b7          	lui	a7,0xf6194
1c008a08:	e1d88893          	addi	a7,a7,-483 # f6193e1d <__l2_shared_end+0xda183e1d>
1c008a0c:	2f112e23          	sw	a7,764(sp)
1c008a10:	59b4f8b7          	lui	a7,0x59b4f
1c008a14:	97788893          	addi	a7,a7,-1673 # 59b4e977 <__l2_shared_end+0x3db3e977>
1c008a18:	31112023          	sw	a7,768(sp)
1c008a1c:	70b858b7          	lui	a7,0x70b85
1c008a20:	ed588893          	addi	a7,a7,-299 # 70b84ed5 <__l2_shared_end+0x54b74ed5>
1c008a24:	33112223          	sw	a7,804(sp)
1c008a28:	78ed                	lui	a7,0xffffb
1c008a2a:	64988893          	addi	a7,a7,1609 # ffffb649 <__l2_shared_end+0xe3feb649>
1c008a2e:	33111423          	sh	a7,808(sp)
1c008a32:	f9900893          	li	a7,-103
1c008a36:	33110523          	sb	a7,810(sp)
1c008a3a:	02000893          	li	a7,32
1c008a3e:	331105a3          	sb	a7,811(sp)
1c008a42:	ebe308b7          	lui	a7,0xebe30
1c008a46:	fae88893          	addi	a7,a7,-82 # ebe2ffae <__l2_shared_end+0xcfe1ffae>
1c008a4a:	33112623          	sw	a7,812(sp)
1c008a4e:	2d5138b7          	lui	a7,0x2d513
1c008a52:	58188893          	addi	a7,a7,1409 # 2d513581 <__l2_shared_end+0x11503581>
1c008a56:	33112823          	sw	a7,816(sp)
1c008a5a:	c66e08b7          	lui	a7,0xc66e0
1c008a5e:	cbc88893          	addi	a7,a7,-836 # c66dfcbc <__l2_shared_end+0xaa6cfcbc>
1c008a62:	33112a23          	sw	a7,820(sp)
1c008a66:	7c6cf8b7          	lui	a7,0x7c6cf
1c008a6a:	98688893          	addi	a7,a7,-1658 # 7c6ce986 <__l2_shared_end+0x606be986>
1c008a6e:	33112c23          	sw	a7,824(sp)
1c008a72:	775118b7          	lui	a7,0x77511
1c008a76:	09f88893          	addi	a7,a7,159 # 7751109f <__l2_shared_end+0x5b50109f>
1c008a7a:	33112e23          	sw	a7,828(sp)
1c008a7e:	1565f8b7          	lui	a7,0x1565f
1c008a82:	caa88893          	addi	a7,a7,-854 # 1565ecaa <__CTOR_LIST__-0x69a135a>
1c008a86:	35112023          	sw	a7,832(sp)
1c008a8a:	32eb58b7          	lui	a7,0x32eb5
1c008a8e:	8d388893          	addi	a7,a7,-1837 # 32eb48d3 <__l2_shared_end+0x16ea48d3>
1c008a92:	35112223          	sw	a7,836(sp)
1c008a96:	329f58b7          	lui	a7,0x329f5
1c008a9a:	7ec88893          	addi	a7,a7,2028 # 329f57ec <__l2_shared_end+0x169e57ec>
1c008a9e:	35112423          	sw	a7,840(sp)
1c008aa2:	cb1228b7          	lui	a7,0xcb122
1c008aa6:	e7388893          	addi	a7,a7,-397 # cb121e73 <__l2_shared_end+0xaf111e73>
1c008aaa:	35112623          	sw	a7,844(sp)
1c008aae:	cf1b98b7          	lui	a7,0xcf1b9
1c008ab2:	35688893          	addi	a7,a7,854 # cf1b9356 <__l2_shared_end+0xb31a9356>
1c008ab6:	35112823          	sw	a7,848(sp)
1c008aba:	8888e8b7          	lui	a7,0x8888e
1c008abe:	df288893          	addi	a7,a7,-526 # 8888ddf2 <__l2_shared_end+0x6c87ddf2>
1c008ac2:	35112a23          	sw	a7,852(sp)
1c008ac6:	989b68b7          	lui	a7,0x989b6
1c008aca:	27688893          	addi	a7,a7,630 # 989b6276 <__l2_shared_end+0x7c9a6276>
1c008ace:	35112c23          	sw	a7,856(sp)
1c008ad2:	e81268b7          	lui	a7,0xe8126
1c008ad6:	bb788893          	addi	a7,a7,-1097 # e8125bb7 <__l2_shared_end+0xcc115bb7>
1c008ada:	35112e23          	sw	a7,860(sp)
1c008ade:	47eed8b7          	lui	a7,0x47eed
1c008ae2:	d5588893          	addi	a7,a7,-683 # 47eecd55 <__l2_shared_end+0x2bedcd55>
1c008ae6:	37112023          	sw	a7,864(sp)
1c008aea:	c85b18b7          	lui	a7,0xc85b1
1c008aee:	b8688893          	addi	a7,a7,-1146 # c85b0b86 <__l2_shared_end+0xac5a0b86>
1c008af2:	37112223          	sw	a7,868(sp)
1c008af6:	000d08b7          	lui	a7,0xd0
1c008afa:	bf188893          	addi	a7,a7,-1039 # cfbf1 <__CTOR_LIST__-0x1bf30413>
1c008afe:	37112423          	sw	a7,872(sp)
1c008b02:	d06fd8b7          	lui	a7,0xd06fd
1c008b06:	bc988893          	addi	a7,a7,-1079 # d06fcbc9 <__l2_shared_end+0xb46ecbc9>
1c008b0a:	37112623          	sw	a7,876(sp)
1c008b0e:	dd7d08b7          	lui	a7,0xdd7d0
1c008b12:	b9188893          	addi	a7,a7,-1135 # dd7cfb91 <__l2_shared_end+0xc17bfb91>
1c008b16:	37112823          	sw	a7,880(sp)
1c008b1a:	d7ddf8b7          	lui	a7,0xd7ddf
1c008b1e:	abf88893          	addi	a7,a7,-1345 # d7ddeabf <__l2_shared_end+0xbbdceabf>
1c008b22:	37112a23          	sw	a7,884(sp)
1c008b26:	a80408b7          	lui	a7,0xa8040
1c008b2a:	39488893          	addi	a7,a7,916 # a8040394 <__l2_shared_end+0x8c030394>
1c008b2e:	37112c23          	sw	a7,888(sp)
1c008b32:	3baa28b7          	lui	a7,0x3baa2
1c008b36:	bab88893          	addi	a7,a7,-1109 # 3baa1bab <__l2_shared_end+0x1fa91bab>
1c008b3a:	37112e23          	sw	a7,892(sp)
1c008b3e:	66acc8b7          	lui	a7,0x66acc
1c008b42:	18f88893          	addi	a7,a7,399 # 66acc18f <__l2_shared_end+0x4aabc18f>
1c008b46:	39112023          	sw	a7,896(sp)
1c008b4a:	ac38a8b7          	lui	a7,0xac38a
1c008b4e:	1ee88893          	addi	a7,a7,494 # ac38a1ee <__l2_shared_end+0x9037a1ee>
1c008b52:	39112223          	sw	a7,900(sp)
1c008b56:	badb88b7          	lui	a7,0xbadb8
1c008b5a:	48888893          	addi	a7,a7,1160 # badb8488 <__l2_shared_end+0x9eda8488>
1c008b5e:	39112423          	sw	a7,904(sp)
1c008b62:	de8538b7          	lui	a7,0xde853
1c008b66:	81188893          	addi	a7,a7,-2031 # de852811 <__l2_shared_end+0xc2842811>
1c008b6a:	39112623          	sw	a7,908(sp)
1c008b6e:	19fb48b7          	lui	a7,0x19fb4
1c008b72:	95e88893          	addi	a7,a7,-1698 # 19fb395e <__CTOR_LIST__-0x204c6a6>
1c008b76:	39112823          	sw	a7,912(sp)
1c008b7a:	54feb8b7          	lui	a7,0x54feb
1c008b7e:	8ee88893          	addi	a7,a7,-1810 # 54fea8ee <__l2_shared_end+0x38fda8ee>
1c008b82:	39112a23          	sw	a7,916(sp)
1c008b86:	4842d8b7          	lui	a7,0x4842d
1c008b8a:	34488893          	addi	a7,a7,836 # 4842d344 <__l2_shared_end+0x2c41d344>
1c008b8e:	39112c23          	sw	a7,920(sp)
1c008b92:	2cb0f8b7          	lui	a7,0x2cb0f
1c008b96:	6cd88893          	addi	a7,a7,1741 # 2cb0f6cd <__l2_shared_end+0x10aff6cd>
1c008b9a:	39112e23          	sw	a7,924(sp)
1c008b9e:	a658e8b7          	lui	a7,0xa658e
1c008ba2:	4bb88893          	addi	a7,a7,1211 # a658e4bb <__l2_shared_end+0x8a57e4bb>
1c008ba6:	3b112023          	sw	a7,928(sp)
1c008baa:	9bd0c8b7          	lui	a7,0x9bd0c
1c008bae:	6d188893          	addi	a7,a7,1745 # 9bd0c6d1 <__l2_shared_end+0x7fcfc6d1>
1c008bb2:	3b112223          	sw	a7,932(sp)
1c008bb6:	055148b7          	lui	a7,0x5514
1c008bba:	a2f88893          	addi	a7,a7,-1489 # 5513a2f <__CTOR_LIST__-0x16aec5d5>
1c008bbe:	3b112423          	sw	a7,936(sp)
1c008bc2:	82d258b7          	lui	a7,0x82d25
1c008bc6:	72f88893          	addi	a7,a7,1839 # 82d2572f <__l2_shared_end+0x66d1572f>
1c008bca:	3b112623          	sw	a7,940(sp)
1c008bce:	8dd298b7          	lui	a7,0x8dd29
1c008bd2:	02888893          	addi	a7,a7,40 # 8dd29028 <__l2_shared_end+0x71d19028>
1c008bd6:	3b112823          	sw	a7,944(sp)
1c008bda:	4c1f48b7          	lui	a7,0x4c1f4
1c008bde:	9d488893          	addi	a7,a7,-1580 # 4c1f39d4 <__l2_shared_end+0x301e39d4>
1c008be2:	3b112a23          	sw	a7,948(sp)
1c008be6:	a11e48b7          	lui	a7,0xa11e4
1c008bea:	f0b88893          	addi	a7,a7,-245 # a11e3f0b <__l2_shared_end+0x851d3f0b>
1c008bee:	3b112c23          	sw	a7,952(sp)
1c008bf2:	2491a8b7          	lui	a7,0x2491a
1c008bf6:	08988893          	addi	a7,a7,137 # 2491a089 <__l2_shared_end+0x890a089>
1c008bfa:	3b112e23          	sw	a7,956(sp)
1c008bfe:	1fd4d8b7          	lui	a7,0x1fd4d
1c008c02:	b6488893          	addi	a7,a7,-1180 # 1fd4cb64 <__l2_shared_end+0x3d3cb64>
1c008c06:	3d112023          	sw	a7,960(sp)
1c008c0a:	8ac468b7          	lui	a7,0x8ac46
1c008c0e:	6d588893          	addi	a7,a7,1749 # 8ac466d5 <__l2_shared_end+0x6ec366d5>
1c008c12:	3d112223          	sw	a7,964(sp)
1c008c16:	c25468b7          	lui	a7,0xc2546
1c008c1a:	49a88893          	addi	a7,a7,1178 # c254649a <__l2_shared_end+0xa653649a>
1c008c1e:	3d112423          	sw	a7,968(sp)
1c008c22:	287fa8b7          	lui	a7,0x287fa
1c008c26:	5dc88893          	addi	a7,a7,1500 # 287fa5dc <__l2_shared_end+0xc7ea5dc>
1c008c2a:	3d112623          	sw	a7,972(sp)
1c008c2e:	fe7028b7          	lui	a7,0xfe702
1c008c32:	ec288893          	addi	a7,a7,-318 # fe701ec2 <__l2_shared_end+0xe26f1ec2>
1c008c36:	3d112823          	sw	a7,976(sp)
1c008c3a:	3108e8b7          	lui	a7,0x3108e
1c008c3e:	e5688893          	addi	a7,a7,-426 # 3108de56 <__l2_shared_end+0x1507de56>
1c008c42:	3d112a23          	sw	a7,980(sp)
1c008c46:	8f4c68b7          	lui	a7,0x8f4c6
1c008c4a:	77e88893          	addi	a7,a7,1918 # 8f4c677e <__l2_shared_end+0x734b677e>
1c008c4e:	3d112c23          	sw	a7,984(sp)
1c008c52:	e2f3e8b7          	lui	a7,0xe2f3e
1c008c56:	9f188893          	addi	a7,a7,-1551 # e2f3d9f1 <__l2_shared_end+0xc6f2d9f1>
1c008c5a:	3d112e23          	sw	a7,988(sp)
1c008c5e:	bdc5d8b7          	lui	a7,0xbdc5d
1c008c62:	c2588893          	addi	a7,a7,-987 # bdc5cc25 <__l2_shared_end+0xa1c4cc25>
1c008c66:	3f112023          	sw	a7,992(sp)
1c008c6a:	a5fad8b7          	lui	a7,0xa5fad
1c008c6e:	91f88893          	addi	a7,a7,-1761 # a5fac91f <__l2_shared_end+0x89f9c91f>
1c008c72:	3f112223          	sw	a7,996(sp)
1c008c76:	9daba8b7          	lui	a7,0x9daba
1c008c7a:	b8c88893          	addi	a7,a7,-1140 # 9dab9b8c <__l2_shared_end+0x81aa9b8c>
1c008c7e:	3f112423          	sw	a7,1000(sp)
1c008c82:	6d0e98b7          	lui	a7,0x6d0e9
1c008c86:	05488893          	addi	a7,a7,84 # 6d0e9054 <__l2_shared_end+0x510d9054>
1c008c8a:	3f112623          	sw	a7,1004(sp)
1c008c8e:	42d1d8b7          	lui	a7,0x42d1d
1c008c92:	b7188893          	addi	a7,a7,-1167 # 42d1cb71 <__l2_shared_end+0x26d0cb71>
1c008c96:	3f112823          	sw	a7,1008(sp)
1c008c9a:	775a68b7          	lui	a7,0x775a6
1c008c9e:	46588893          	addi	a7,a7,1125 # 775a6465 <__l2_shared_end+0x5b596465>
1c008ca2:	3f112a23          	sw	a7,1012(sp)
1c008ca6:	c95658b7          	lui	a7,0xc9565
1c008caa:	89a88893          	addi	a7,a7,-1894 # c956489a <__l2_shared_end+0xad55489a>
1c008cae:	3f112c23          	sw	a7,1016(sp)
1c008cb2:	350378b7          	lui	a7,0x35037
1c008cb6:	9c288893          	addi	a7,a7,-1598 # 350369c2 <__l2_shared_end+0x190269c2>
1c008cba:	3f112e23          	sw	a7,1020(sp)
1c008cbe:	63ec98b7          	lui	a7,0x63ec9
1c008cc2:	57f88893          	addi	a7,a7,1407 # 63ec957f <__l2_shared_end+0x47eb957f>
1c008cc6:	41112023          	sw	a7,1024(sp)
1c008cca:	88e058b7          	lui	a7,0x88e05
1c008cce:	d2c88893          	addi	a7,a7,-724 # 88e04d2c <__l2_shared_end+0x6cdf4d2c>
1c008cd2:	41112223          	sw	a7,1028(sp)
1c008cd6:	82cd48b7          	lui	a7,0x82cd4
1c008cda:	7b288893          	addi	a7,a7,1970 # 82cd47b2 <__l2_shared_end+0x66cc47b2>
1c008cde:	41112423          	sw	a7,1032(sp)
1c008ce2:	bd3af8b7          	lui	a7,0xbd3af
1c008ce6:	61a88893          	addi	a7,a7,1562 # bd3af61a <__l2_shared_end+0xa139f61a>
1c008cea:	41112623          	sw	a7,1036(sp)
1c008cee:	917528b7          	lui	a7,0x91752
1c008cf2:	49a88893          	addi	a7,a7,1178 # 9175249a <__l2_shared_end+0x7574249a>
1c008cf6:	41112823          	sw	a7,1040(sp)
1c008cfa:	10d7d8b7          	lui	a7,0x10d7d
1c008cfe:	0e088893          	addi	a7,a7,224 # 10d7d0e0 <__CTOR_LIST__-0xb282f24>
1c008d02:	41112a23          	sw	a7,1044(sp)
1c008d06:	69b258b7          	lui	a7,0x69b25
1c008d0a:	d2388893          	addi	a7,a7,-733 # 69b24d23 <__l2_shared_end+0x4db14d23>
1c008d0e:	41112c23          	sw	a7,1048(sp)
1c008d12:	76c368b7          	lui	a7,0x76c36
1c008d16:	5a688893          	addi	a7,a7,1446 # 76c365a6 <__l2_shared_end+0x5ac265a6>
1c008d1a:	41112e23          	sw	a7,1052(sp)
1c008d1e:	689d                	lui	a7,0x7
1c008d20:	4f988893          	addi	a7,a7,1273 # 74f9 <__CTOR_LIST__-0x1bff8b0b>
1c008d24:	43111023          	sh	a7,1056(sp)
1c008d28:	58b5                	li	a7,-19
1c008d2a:	43110123          	sb	a7,1058(sp)
1c008d2e:	fbd00893          	li	a7,-67
1c008d32:	431101a3          	sb	a7,1059(sp)
1c008d36:	5bac78b7          	lui	a7,0x5bac7
1c008d3a:	c5e88893          	addi	a7,a7,-930 # 5bac6c5e <__l2_shared_end+0x3fab6c5e>
1c008d3e:	43112223          	sw	a7,1060(sp)
1c008d42:	9ef1d8b7          	lui	a7,0x9ef1d
1c008d46:	1a788893          	addi	a7,a7,423 # 9ef1d1a7 <__l2_shared_end+0x82f0d1a7>
1c008d4a:	43112423          	sw	a7,1064(sp)
1c008d4e:	aa6c58b7          	lui	a7,0xaa6c5
1c008d52:	d2e88893          	addi	a7,a7,-722 # aa6c4d2e <__l2_shared_end+0x8e6b4d2e>
1c008d56:	43112623          	sw	a7,1068(sp)
1c008d5a:	d34dc8b7          	lui	a7,0xd34dc
1c008d5e:	d3f88893          	addi	a7,a7,-705 # d34dbd3f <__l2_shared_end+0xb74cbd3f>
1c008d62:	43112823          	sw	a7,1072(sp)
1c008d66:	c80278b7          	lui	a7,0xc8027
1c008d6a:	7c388893          	addi	a7,a7,1987 # c80277c3 <__l2_shared_end+0xac0177c3>
1c008d6e:	43112a23          	sw	a7,1076(sp)
1c008d72:	050008b7          	lui	a7,0x5000
1c008d76:	3d088893          	addi	a7,a7,976 # 50003d0 <__CTOR_LIST__-0x16fffc34>
1c008d7a:	43112c23          	sw	a7,1080(sp)
1c008d7e:	0bbf18b7          	lui	a7,0xbbf1
1c008d82:	61c88893          	addi	a7,a7,1564 # bbf161c <__CTOR_LIST__-0x1040e9e8>
1c008d86:	43112e23          	sw	a7,1084(sp)
1c008d8a:	d09e08b7          	lui	a7,0xd09e0
1c008d8e:	aa088893          	addi	a7,a7,-1376 # d09dfaa0 <__l2_shared_end+0xb49cfaa0>
1c008d92:	45112023          	sw	a7,1088(sp)
1c008d96:	2e9238b7          	lui	a7,0x2e923
1c008d9a:	0a788893          	addi	a7,a7,167 # 2e9230a7 <__l2_shared_end+0x129130a7>
1c008d9e:	45112223          	sw	a7,1092(sp)
1c008da2:	e3f718b7          	lui	a7,0xe3f71
1c008da6:	18b9                	addi	a7,a7,-18
1c008da8:	45112423          	sw	a7,1096(sp)
1c008dac:	5c7f88b7          	lui	a7,0x5c7f8
1c008db0:	1ae88893          	addi	a7,a7,430 # 5c7f81ae <__l2_shared_end+0x407e81ae>
1c008db4:	45112623          	sw	a7,1100(sp)
1c008db8:	2a4f78b7          	lui	a7,0x2a4f7
1c008dbc:	3ba88893          	addi	a7,a7,954 # 2a4f73ba <__l2_shared_end+0xe4e73ba>
1c008dc0:	45112823          	sw	a7,1104(sp)
1c008dc4:	905718b7          	lui	a7,0x90571
1c008dc8:	02888893          	addi	a7,a7,40 # 90571028 <__l2_shared_end+0x74561028>
1c008dcc:	45112a23          	sw	a7,1108(sp)
1c008dd0:	b01a48b7          	lui	a7,0xb01a4
1c008dd4:	ddb88893          	addi	a7,a7,-549 # b01a3ddb <__l2_shared_end+0x94193ddb>
1c008dd8:	45112c23          	sw	a7,1112(sp)
1c008ddc:	76cca8b7          	lui	a7,0x76cca
1c008de0:	a2e88893          	addi	a7,a7,-1490 # 76cc9a2e <__l2_shared_end+0x5acb9a2e>
1c008de4:	45112e23          	sw	a7,1116(sp)
1c008de8:	bcd268b7          	lui	a7,0xbcd26
1c008dec:	f3e88893          	addi	a7,a7,-194 # bcd25f3e <__l2_shared_end+0xa0d15f3e>
1c008df0:	47112023          	sw	a7,1120(sp)
1c008df4:	32ac48b7          	lui	a7,0x32ac4
1c008df8:	70488893          	addi	a7,a7,1796 # 32ac4704 <__l2_shared_end+0x16ab4704>
1c008dfc:	47112223          	sw	a7,1124(sp)
1c008e00:	26a028b7          	lui	a7,0x26a02
1c008e04:	1885                	addi	a7,a7,-31
1c008e06:	47112423          	sw	a7,1128(sp)
1c008e0a:	87f9e8b7          	lui	a7,0x87f9e
1c008e0e:	61288893          	addi	a7,a7,1554 # 87f9e612 <__l2_shared_end+0x6bf8e612>
1c008e12:	47112623          	sw	a7,1132(sp)
1c008e16:	ca77f8b7          	lui	a7,0xca77f
1c008e1a:	7e588893          	addi	a7,a7,2021 # ca77f7e5 <__l2_shared_end+0xae76f7e5>
1c008e1e:	47112823          	sw	a7,1136(sp)
1c008e22:	65c388b7          	lui	a7,0x65c38
1c008e26:	a2e88893          	addi	a7,a7,-1490 # 65c37a2e <__l2_shared_end+0x49c27a2e>
1c008e2a:	47112a23          	sw	a7,1140(sp)
1c008e2e:	6462d8b7          	lui	a7,0x6462d
1c008e32:	f5188893          	addi	a7,a7,-175 # 6462cf51 <__l2_shared_end+0x4861cf51>
1c008e36:	47112c23          	sw	a7,1144(sp)
1c008e3a:	3c4838b7          	lui	a7,0x3c483
1c008e3e:	99c88893          	addi	a7,a7,-1636 # 3c48299c <__l2_shared_end+0x2047299c>
1c008e42:	47112e23          	sw	a7,1148(sp)
1c008e46:	f69628b7          	lui	a7,0xf6962
1c008e4a:	34688893          	addi	a7,a7,838 # f6962346 <__l2_shared_end+0xda952346>
1c008e4e:	49112023          	sw	a7,1152(sp)
1c008e52:	25f628b7          	lui	a7,0x25f62
1c008e56:	fb288893          	addi	a7,a7,-78 # 25f61fb2 <__l2_shared_end+0x9f51fb2>
1c008e5a:	49112223          	sw	a7,1156(sp)
1c008e5e:	1f4b78b7          	lui	a7,0x1f4b7
1c008e62:	bb988893          	addi	a7,a7,-1095 # 1f4b6bb9 <__l2_shared_end+0x34a6bb9>
1c008e66:	49112423          	sw	a7,1160(sp)
1c008e6a:	b33848b7          	lui	a7,0xb3384
1c008e6e:	a5c88893          	addi	a7,a7,-1444 # b3383a5c <__l2_shared_end+0x97373a5c>
1c008e72:	49112623          	sw	a7,1164(sp)
1c008e76:	f30808b7          	lui	a7,0xf3080
1c008e7a:	7c888893          	addi	a7,a7,1992 # f30807c8 <__l2_shared_end+0xd70707c8>
1c008e7e:	49112823          	sw	a7,1168(sp)
1c008e82:	8417d8b7          	lui	a7,0x8417d
1c008e86:	c3b88893          	addi	a7,a7,-965 # 8417cc3b <__l2_shared_end+0x6816cc3b>
1c008e8a:	49112a23          	sw	a7,1172(sp)
1c008e8e:	be48e8b7          	lui	a7,0xbe48e
1c008e92:	bbe88893          	addi	a7,a7,-1090 # be48dbbe <__l2_shared_end+0xa247dbbe>
1c008e96:	49112c23          	sw	a7,1176(sp)
1c008e9a:	423b28b7          	lui	a7,0x423b2
1c008e9e:	5e088893          	addi	a7,a7,1504 # 423b25e0 <__l2_shared_end+0x263a25e0>
1c008ea2:	49112e23          	sw	a7,1180(sp)
1c008ea6:	619608b7          	lui	a7,0x61960
1c008eaa:	b6c88893          	addi	a7,a7,-1172 # 6195fb6c <__l2_shared_end+0x4594fb6c>
1c008eae:	4b112023          	sw	a7,1184(sp)
1c008eb2:	98ce18b7          	lui	a7,0x98ce1
1c008eb6:	28788893          	addi	a7,a7,647 # 98ce1287 <__l2_shared_end+0x7ccd1287>
1c008eba:	4b112223          	sw	a7,1188(sp)
1c008ebe:	5c3ba8b7          	lui	a7,0x5c3ba
1c008ec2:	52588893          	addi	a7,a7,1317 # 5c3ba525 <__l2_shared_end+0x403aa525>
1c008ec6:	4b112423          	sw	a7,1192(sp)
1c008eca:	438188b7          	lui	a7,0x43818
1c008ece:	cc888893          	addi	a7,a7,-824 # 43817cc8 <__l2_shared_end+0x27807cc8>
1c008ed2:	4b112623          	sw	a7,1196(sp)
1c008ed6:	406bc8b7          	lui	a7,0x406bc
1c008eda:	4af88893          	addi	a7,a7,1199 # 406bc4af <__l2_shared_end+0x246ac4af>
1c008ede:	4b112823          	sw	a7,1200(sp)
1c008ee2:	4b4c88b7          	lui	a7,0x4b4c8
1c008ee6:	b6288893          	addi	a7,a7,-1182 # 4b4c7b62 <__l2_shared_end+0x2f4b7b62>
1c008eea:	4b112a23          	sw	a7,1204(sp)
1c008eee:	2c3838b7          	lui	a7,0x2c383
1c008ef2:	ebd88893          	addi	a7,a7,-323 # 2c382ebd <__l2_shared_end+0x10372ebd>
1c008ef6:	4b112c23          	sw	a7,1208(sp)
1c008efa:	487e48b7          	lui	a7,0x487e4
1c008efe:	5ec88893          	addi	a7,a7,1516 # 487e45ec <__l2_shared_end+0x2c7d45ec>
1c008f02:	4b112e23          	sw	a7,1212(sp)
1c008f06:	840c18b7          	lui	a7,0x840c1
1c008f0a:	3a788893          	addi	a7,a7,935 # 840c13a7 <__l2_shared_end+0x680b13a7>
1c008f0e:	4d112023          	sw	a7,1216(sp)
1c008f12:	5c60c8b7          	lui	a7,0x5c60c
1c008f16:	21288893          	addi	a7,a7,530 # 5c60c212 <__l2_shared_end+0x405fc212>
1c008f1a:	4d112223          	sw	a7,1220(sp)
1c008f1e:	bf1568b7          	lui	a7,0xbf156
1c008f22:	94788893          	addi	a7,a7,-1721 # bf155947 <__l2_shared_end+0xa3145947>
1c008f26:	4d112423          	sw	a7,1224(sp)
1c008f2a:	e46d48b7          	lui	a7,0xe46d4
1c008f2e:	70888893          	addi	a7,a7,1800 # e46d4708 <__l2_shared_end+0xc86c4708>
1c008f32:	4d112623          	sw	a7,1228(sp)
1c008f36:	2970b8b7          	lui	a7,0x2970b
1c008f3a:	ab888893          	addi	a7,a7,-1352 # 2970aab8 <__l2_shared_end+0xd6faab8>
1c008f3e:	4d112823          	sw	a7,1232(sp)
1c008f42:	ef9dc8b7          	lui	a7,0xef9dc
1c008f46:	98a88893          	addi	a7,a7,-1654 # ef9db98a <__l2_shared_end+0xd39cb98a>
1c008f4a:	4d112a23          	sw	a7,1236(sp)
1c008f4e:	f1c188b7          	lui	a7,0xf1c18
1c008f52:	69388893          	addi	a7,a7,1683 # f1c18693 <__l2_shared_end+0xd5c08693>
1c008f56:	4d112c23          	sw	a7,1240(sp)
1c008f5a:	98c358b7          	lui	a7,0x98c35
1c008f5e:	31288893          	addi	a7,a7,786 # 98c35312 <__l2_shared_end+0x7cc25312>
1c008f62:	4d112e23          	sw	a7,1244(sp)
1c008f66:	f9add8b7          	lui	a7,0xf9add
1c008f6a:	0c688893          	addi	a7,a7,198 # f9add0c6 <__l2_shared_end+0xddacd0c6>
1c008f6e:	4f112023          	sw	a7,1248(sp)
1c008f72:	642288b7          	lui	a7,0x64228
1c008f76:	ed988893          	addi	a7,a7,-295 # 64227ed9 <__l2_shared_end+0x48217ed9>
1c008f7a:	4f112223          	sw	a7,1252(sp)
1c008f7e:	02e428b7          	lui	a7,0x2e42
1c008f82:	6a088893          	addi	a7,a7,1696 # 2e426a0 <__CTOR_LIST__-0x191bd964>
1c008f86:	4f112423          	sw	a7,1256(sp)
1c008f8a:	269ab8b7          	lui	a7,0x269ab
1c008f8e:	51188893          	addi	a7,a7,1297 # 269ab511 <__l2_shared_end+0xa99b511>
1c008f92:	4f112623          	sw	a7,1260(sp)
1c008f96:	101648b7          	lui	a7,0x10164
1c008f9a:	fa288893          	addi	a7,a7,-94 # 10163fa2 <__CTOR_LIST__-0xbe9c062>
1c008f9e:	4f112823          	sw	a7,1264(sp)
1c008fa2:	6f0a28b7          	lui	a7,0x6f0a2
1c008fa6:	22a88893          	addi	a7,a7,554 # 6f0a222a <__l2_shared_end+0x5309222a>
1c008faa:	4f112a23          	sw	a7,1268(sp)
1c008fae:	147af8b7          	lui	a7,0x147af
1c008fb2:	22b88893          	addi	a7,a7,555 # 147af22b <__CTOR_LIST__-0x7850dd9>
1c008fb6:	4f112c23          	sw	a7,1272(sp)
1c008fba:	326f68b7          	lui	a7,0x326f6
1c008fbe:	f0188893          	addi	a7,a7,-255 # 326f5f01 <__l2_shared_end+0x166e5f01>
1c008fc2:	4f112e23          	sw	a7,1276(sp)
1c008fc6:	7574e8b7          	lui	a7,0x7574e
1c008fca:	26188893          	addi	a7,a7,609 # 7574e261 <__l2_shared_end+0x5973e261>
1c008fce:	51112023          	sw	a7,1280(sp)
1c008fd2:	57b7d8b7          	lui	a7,0x57b7d
1c008fd6:	c8c88893          	addi	a7,a7,-884 # 57b7cc8c <__l2_shared_end+0x3bb6cc8c>
1c008fda:	51112223          	sw	a7,1284(sp)
1c008fde:	530008b7          	lui	a7,0x53000
1c008fe2:	6a488893          	addi	a7,a7,1700 # 530006a4 <__l2_shared_end+0x36ff06a4>
1c008fe6:	51112423          	sw	a7,1288(sp)
1c008fea:	c250a8b7          	lui	a7,0xc250a
1c008fee:	08dd                	addi	a7,a7,23
1c008ff0:	51112623          	sw	a7,1292(sp)
1c008ff4:	999f48b7          	lui	a7,0x999f4
1c008ff8:	92d88893          	addi	a7,a7,-1747 # 999f392d <__l2_shared_end+0x7d9e392d>
1c008ffc:	51112823          	sw	a7,1296(sp)
1c009000:	73aa78b7          	lui	a7,0x73aa7
1c009004:	44988893          	addi	a7,a7,1097 # 73aa7449 <__l2_shared_end+0x57a97449>
1c009008:	51112a23          	sw	a7,1300(sp)
1c00900c:	bafbf8b7          	lui	a7,0xbafbf
1c009010:	d1388893          	addi	a7,a7,-749 # bafbed13 <__l2_shared_end+0x9efaed13>
1c009014:	51112c23          	sw	a7,1304(sp)
1c009018:	163718b7          	lui	a7,0x16371
1c00901c:	84688893          	addi	a7,a7,-1978 # 16370846 <__CTOR_LIST__-0x5c8f7be>
1c009020:	51112e23          	sw	a7,1308(sp)
1c009024:	8154a8b7          	lui	a7,0x8154a
1c009028:	81388893          	addi	a7,a7,-2029 # 81549813 <__l2_shared_end+0x65539813>
1c00902c:	53112023          	sw	a7,1312(sp)
1c009030:	9ec8b8b7          	lui	a7,0x9ec8b
1c009034:	eb088893          	addi	a7,a7,-336 # 9ec8aeb0 <__l2_shared_end+0x82c7aeb0>
1c009038:	53112223          	sw	a7,1316(sp)
1c00903c:	750268b7          	lui	a7,0x75026
1c009040:	0dd88893          	addi	a7,a7,221 # 750260dd <__l2_shared_end+0x590160dd>
1c009044:	53112423          	sw	a7,1320(sp)
1c009048:	75e228b7          	lui	a7,0x75e22
1c00904c:	84b88893          	addi	a7,a7,-1973 # 75e2184b <__l2_shared_end+0x59e1184b>
1c009050:	53112623          	sw	a7,1324(sp)
1c009054:	b4f888b7          	lui	a7,0xb4f88
1c009058:	ab988893          	addi	a7,a7,-1351 # b4f87ab9 <__l2_shared_end+0x98f77ab9>
1c00905c:	53112823          	sw	a7,1328(sp)
1c009060:	b582c8b7          	lui	a7,0xb582c
1c009064:	6ad88893          	addi	a7,a7,1709 # b582c6ad <__l2_shared_end+0x9981c6ad>
1c009068:	53112a23          	sw	a7,1332(sp)
1c00906c:	68a5c8b7          	lui	a7,0x68a5c
1c009070:	97388893          	addi	a7,a7,-1677 # 68a5b973 <__l2_shared_end+0x4ca4b973>
1c009074:	53112c23          	sw	a7,1336(sp)
1c009078:	b22328b7          	lui	a7,0xb2232
1c00907c:	47388893          	addi	a7,a7,1139 # b2232473 <__l2_shared_end+0x96222473>
1c009080:	53112e23          	sw	a7,1340(sp)
1c009084:	da18f8b7          	lui	a7,0xda18f
1c009088:	40d88893          	addi	a7,a7,1037 # da18f40d <__l2_shared_end+0xbe17f40d>
1c00908c:	55112023          	sw	a7,1344(sp)
1c009090:	086918b7          	lui	a7,0x8691
1c009094:	f0a88893          	addi	a7,a7,-246 # 8690f0a <__CTOR_LIST__-0x1396f0fa>
1c009098:	55112223          	sw	a7,1348(sp)
1c00909c:	83e948b7          	lui	a7,0x83e94
1c0090a0:	b6688893          	addi	a7,a7,-1178 # 83e93b66 <__l2_shared_end+0x67e83b66>
1c0090a4:	55112423          	sw	a7,1352(sp)
1c0090a8:	6912e8b7          	lui	a7,0x6912e
1c0090ac:	a3e88893          	addi	a7,a7,-1474 # 6912da3e <__l2_shared_end+0x4d11da3e>
1c0090b0:	55112623          	sw	a7,1356(sp)
1c0090b4:	e90278b7          	lui	a7,0xe9027
1c0090b8:	71288893          	addi	a7,a7,1810 # e9027712 <__l2_shared_end+0xcd017712>
1c0090bc:	55112823          	sw	a7,1360(sp)
1c0090c0:	b12bc8b7          	lui	a7,0xb12bc
1c0090c4:	87d88893          	addi	a7,a7,-1923 # b12bb87d <__l2_shared_end+0x952ab87d>
1c0090c8:	55112a23          	sw	a7,1364(sp)
1c0090cc:	c02ce8b7          	lui	a7,0xc02ce
1c0090d0:	21d88893          	addi	a7,a7,541 # c02ce21d <__l2_shared_end+0xa42be21d>
1c0090d4:	55112c23          	sw	a7,1368(sp)
1c0090d8:	ca2668b7          	lui	a7,0xca266
1c0090dc:	e7688893          	addi	a7,a7,-394 # ca265e76 <__l2_shared_end+0xae255e76>
1c0090e0:	55112e23          	sw	a7,1372(sp)
1c0090e4:	6c2518b7          	lui	a7,0x6c251
1c0090e8:	db688893          	addi	a7,a7,-586 # 6c250db6 <__l2_shared_end+0x50240db6>
1c0090ec:	57112023          	sw	a7,1376(sp)
1c0090f0:	132228b7          	lui	a7,0x13222
1c0090f4:	7bb88893          	addi	a7,a7,1979 # 132227bb <__CTOR_LIST__-0x8ddd849>
1c0090f8:	57112223          	sw	a7,1380(sp)
1c0090fc:	d7c1c8b7          	lui	a7,0xd7c1c
1c009100:	21588893          	addi	a7,a7,533 # d7c1c215 <__l2_shared_end+0xbbc0c215>
1c009104:	57112423          	sw	a7,1384(sp)
1c009108:	aae658b7          	lui	a7,0xaae65
1c00910c:	65f88893          	addi	a7,a7,1631 # aae6565f <__l2_shared_end+0x8ee5565f>
1c009110:	57112623          	sw	a7,1388(sp)
1c009114:	83cc18b7          	lui	a7,0x83cc1
1c009118:	84c88893          	addi	a7,a7,-1972 # 83cc084c <__l2_shared_end+0x67cb084c>
1c00911c:	57112823          	sw	a7,1392(sp)
1c009120:	686ba8b7          	lui	a7,0x686ba
1c009124:	14588893          	addi	a7,a7,325 # 686ba145 <__l2_shared_end+0x4c6aa145>
1c009128:	57112a23          	sw	a7,1396(sp)
1c00912c:	03000893          	li	a7,48
1c009130:	57110d23          	sb	a7,1402(sp)
1c009134:	6702f8b7          	lui	a7,0x6702f
1c009138:	c6c88893          	addi	a7,a7,-916 # 6702ec6c <__l2_shared_end+0x4b01ec6c>
1c00913c:	57112e23          	sw	a7,1404(sp)
1c009140:	e11d38b7          	lui	a7,0xe11d3
1c009144:	dc088893          	addi	a7,a7,-576 # e11d2dc0 <__l2_shared_end+0xc51c2dc0>
1c009148:	59112023          	sw	a7,1408(sp)
1c00914c:	73a848b7          	lui	a7,0x73a84
1c009150:	cca88893          	addi	a7,a7,-822 # 73a83cca <__l2_shared_end+0x57a73cca>
1c009154:	59112223          	sw	a7,1412(sp)
1c009158:	8ec858b7          	lui	a7,0x8ec85
1c00915c:	7679                	lui	a2,0xffffe
1c00915e:	68188893          	addi	a7,a7,1665 # 8ec85681 <__l2_shared_end+0x72c75681>
1c009162:	30060313          	addi	t1,a2,768 # ffffe300 <__l2_shared_end+0xe3fee300>
1c009166:	07500513          	li	a0,117
1c00916a:	59112423          	sw	a7,1416(sp)
1c00916e:	f890b8b7          	lui	a7,0xf890b
1c009172:	56611c23          	sh	t1,1400(sp)
1c009176:	56a10da3          	sb	a0,1403(sp)
1c00917a:	ed688893          	addi	a7,a7,-298 # f890aed6 <__l2_shared_end+0xdc8faed6>
1c00917e:	59112623          	sw	a7,1420(sp)
1c009182:	ad5aa8b7          	lui	a7,0xad5aa
1c009186:	b4288893          	addi	a7,a7,-1214 # ad5a9b42 <__l2_shared_end+0x91599b42>
1c00918a:	59112823          	sw	a7,1424(sp)
1c00918e:	fe5368b7          	lui	a7,0xfe536
1c009192:	a8c88893          	addi	a7,a7,-1396 # fe535a8c <__l2_shared_end+0xe2525a8c>
1c009196:	59112a23          	sw	a7,1428(sp)
1c00919a:	07d288b7          	lui	a7,0x7d28
1c00919e:	72688893          	addi	a7,a7,1830 # 7d28726 <__CTOR_LIST__-0x142d78de>
1c0091a2:	59112c23          	sw	a7,1432(sp)
1c0091a6:	b118e8b7          	lui	a7,0xb118e
1c0091aa:	b4f88893          	addi	a7,a7,-1201 # b118db4f <__l2_shared_end+0x9517db4f>
1c0091ae:	59112e23          	sw	a7,1436(sp)
1c0091b2:	9e4828b7          	lui	a7,0x9e482
1c0091b6:	a2488893          	addi	a7,a7,-1500 # 9e481a24 <__l2_shared_end+0x82471a24>
1c0091ba:	5b112023          	sw	a7,1440(sp)
1c0091be:	aaab58b7          	lui	a7,0xaaab5
1c0091c2:	08588893          	addi	a7,a7,133 # aaab5085 <__l2_shared_end+0x8eaa5085>
1c0091c6:	5b112223          	sw	a7,1444(sp)
1c0091ca:	cc9a58b7          	lui	a7,0xcc9a5
1c0091ce:	57b88893          	addi	a7,a7,1403 # cc9a557b <__l2_shared_end+0xb099557b>
1c0091d2:	5b112423          	sw	a7,1448(sp)
1c0091d6:	39b5b8b7          	lui	a7,0x39b5b
1c0091da:	46a88893          	addi	a7,a7,1130 # 39b5b46a <__l2_shared_end+0x1db4b46a>
1c0091de:	5b112623          	sw	a7,1452(sp)
1c0091e2:	851b88b7          	lui	a7,0x851b8
1c0091e6:	26c88893          	addi	a7,a7,620 # 851b826c <__l2_shared_end+0x691a826c>
1c0091ea:	5b112823          	sw	a7,1456(sp)
1c0091ee:	a6ca08b7          	lui	a7,0xa6ca0
1c0091f2:	54388893          	addi	a7,a7,1347 # a6ca0543 <__l2_shared_end+0x8ac90543>
1c0091f6:	5b112a23          	sw	a7,1460(sp)
1c0091fa:	398048b7          	lui	a7,0x39804
1c0091fe:	76a88893          	addi	a7,a7,1898 # 3980476a <__l2_shared_end+0x1d7f476a>
1c009202:	5b112c23          	sw	a7,1464(sp)
1c009206:	36f738b7          	lui	a7,0x36f73
1c00920a:	ccc88893          	addi	a7,a7,-820 # 36f72ccc <__l2_shared_end+0x1af62ccc>
1c00920e:	5b112e23          	sw	a7,1468(sp)
1c009212:	44a358b7          	lui	a7,0x44a35
1c009216:	65f88893          	addi	a7,a7,1631 # 44a3565f <__l2_shared_end+0x28a2565f>
1c00921a:	5d112023          	sw	a7,1472(sp)
1c00921e:	a79af8b7          	lui	a7,0xa79af
1c009222:	0d188893          	addi	a7,a7,209 # a79af0d1 <__l2_shared_end+0x8b99f0d1>
1c009226:	5d112223          	sw	a7,1476(sp)
1c00922a:	157a68b7          	lui	a7,0x157a6
1c00922e:	63a88893          	addi	a7,a7,1594 # 157a663a <__CTOR_LIST__-0x68599ca>
1c009232:	5d112423          	sw	a7,1480(sp)
1c009236:	10b278b7          	lui	a7,0x10b27
1c00923a:	1ce88893          	addi	a7,a7,462 # 10b271ce <__CTOR_LIST__-0xb4d8e36>
1c00923e:	5d112623          	sw	a7,1484(sp)
1c009242:	4030c8b7          	lui	a7,0x4030c
1c009246:	9d988893          	addi	a7,a7,-1575 # 4030b9d9 <__l2_shared_end+0x242fb9d9>
1c00924a:	5d112823          	sw	a7,1488(sp)
1c00924e:	a1a248b7          	lui	a7,0xa1a24
1c009252:	83a88893          	addi	a7,a7,-1990 # a1a2383a <__l2_shared_end+0x85a1383a>
1c009256:	5d112a23          	sw	a7,1492(sp)
1c00925a:	9bf3e8b7          	lui	a7,0x9bf3e
1c00925e:	e0c88893          	addi	a7,a7,-500 # 9bf3de0c <__l2_shared_end+0x7ff2de0c>
1c009262:	5d112c23          	sw	a7,1496(sp)
1c009266:	ad6098b7          	lui	a7,0xad609
1c00926a:	99e88893          	addi	a7,a7,-1634 # ad60899e <__l2_shared_end+0x915f899e>
1c00926e:	5d112e23          	sw	a7,1500(sp)
1c009272:	b71338b7          	lui	a7,0xb7133
1c009276:	34688893          	addi	a7,a7,838 # b7133346 <__l2_shared_end+0x9b123346>
1c00927a:	5f112023          	sw	a7,1504(sp)
1c00927e:	3a7248b7          	lui	a7,0x3a724
1c009282:	dab88893          	addi	a7,a7,-597 # 3a723dab <__l2_shared_end+0x1e713dab>
1c009286:	5f112223          	sw	a7,1508(sp)
1c00928a:	721d68b7          	lui	a7,0x721d6
1c00928e:	c7188893          	addi	a7,a7,-911 # 721d5c71 <__l2_shared_end+0x561c5c71>
1c009292:	5f112423          	sw	a7,1512(sp)
1c009296:	6bb488b7          	lui	a7,0x6bb48
1c00929a:	99b88893          	addi	a7,a7,-1637 # 6bb4799b <__l2_shared_end+0x4fb3799b>
1c00929e:	5f112623          	sw	a7,1516(sp)
1c0092a2:	31dbd8b7          	lui	a7,0x31dbd
1c0092a6:	e7b88893          	addi	a7,a7,-389 # 31dbce7b <__l2_shared_end+0x15dace7b>
1c0092aa:	5f112823          	sw	a7,1520(sp)
1c0092ae:	867738b7          	lui	a7,0x86773
1c0092b2:	bb988893          	addi	a7,a7,-1095 # 86772bb9 <__l2_shared_end+0x6a762bb9>
1c0092b6:	5f112a23          	sw	a7,1524(sp)
1c0092ba:	6c14d8b7          	lui	a7,0x6c14d
1c0092be:	94a88893          	addi	a7,a7,-1718 # 6c14c94a <__l2_shared_end+0x5013c94a>
1c0092c2:	5f112c23          	sw	a7,1528(sp)
1c0092c6:	af9bb8b7          	lui	a7,0xaf9bb
1c0092ca:	81588893          	addi	a7,a7,-2027 # af9ba815 <__l2_shared_end+0x939aa815>
1c0092ce:	5f112e23          	sw	a7,1532(sp)
1c0092d2:	cc1f68b7          	lui	a7,0xcc1f6
1c0092d6:	0e188893          	addi	a7,a7,225 # cc1f60e1 <__l2_shared_end+0xb01e60e1>
1c0092da:	61112023          	sw	a7,1536(sp)
1c0092de:	57e638b7          	lui	a7,0x57e63
1c0092e2:	88388893          	addi	a7,a7,-1917 # 57e62883 <__l2_shared_end+0x3be52883>
1c0092e6:	61112223          	sw	a7,1540(sp)
1c0092ea:	bebaf8b7          	lui	a7,0xbebaf
1c0092ee:	ba688893          	addi	a7,a7,-1114 # bebaeba6 <__l2_shared_end+0xa2b9eba6>
1c0092f2:	61112423          	sw	a7,1544(sp)
1c0092f6:	865918b7          	lui	a7,0x86591
1c0092fa:	1f888893          	addi	a7,a7,504 # 865911f8 <__l2_shared_end+0x6a5811f8>
1c0092fe:	61112623          	sw	a7,1548(sp)
1c009302:	72f188b7          	lui	a7,0x72f18
1c009306:	7dc88893          	addi	a7,a7,2012 # 72f187dc <__l2_shared_end+0x56f087dc>
1c00930a:	61112823          	sw	a7,1552(sp)
1c00930e:	88a3c8b7          	lui	a7,0x88a3c
1c009312:	a3488893          	addi	a7,a7,-1484 # 88a3ba34 <__l2_shared_end+0x6ca2ba34>
1c009316:	61112a23          	sw	a7,1556(sp)
1c00931a:	85a138b7          	lui	a7,0x85a13
1c00931e:	35e88893          	addi	a7,a7,862 # 85a1335e <__l2_shared_end+0x69a0335e>
1c009322:	61112c23          	sw	a7,1560(sp)
1c009326:	589198b7          	lui	a7,0x58919
1c00932a:	b6888893          	addi	a7,a7,-1176 # 58918b68 <__l2_shared_end+0x3c908b68>
1c00932e:	61112e23          	sw	a7,1564(sp)
1c009332:	0948f8b7          	lui	a7,0x948f
1c009336:	c8388893          	addi	a7,a7,-893 # 948ec83 <__CTOR_LIST__-0x12b71381>
1c00933a:	63112023          	sw	a7,1568(sp)
1c00933e:	1b69d8b7          	lui	a7,0x1b69d
1c009342:	9c588893          	addi	a7,a7,-1595 # 1b69c9c5 <__CTOR_LIST__-0x96363f>
1c009346:	63112223          	sw	a7,1572(sp)
1c00934a:	7981a8b7          	lui	a7,0x7981a
1c00934e:	09588893          	addi	a7,a7,149 # 7981a095 <__l2_shared_end+0x5d80a095>
1c009352:	63112423          	sw	a7,1576(sp)
1c009356:	c17788b7          	lui	a7,0xc1778
1c00935a:	5a488893          	addi	a7,a7,1444 # c17785a4 <__l2_shared_end+0xa57685a4>
1c00935e:	63112623          	sw	a7,1580(sp)
1c009362:	bca158b7          	lui	a7,0xbca15
1c009366:	a7288893          	addi	a7,a7,-1422 # bca14a72 <__l2_shared_end+0xa0a04a72>
1c00936a:	63112823          	sw	a7,1584(sp)
1c00936e:	ead568b7          	lui	a7,0xead56
1c009372:	4f688893          	addi	a7,a7,1270 # ead564f6 <__l2_shared_end+0xced464f6>
1c009376:	63112a23          	sw	a7,1588(sp)
1c00937a:	729ac8b7          	lui	a7,0x729ac
1c00937e:	64988893          	addi	a7,a7,1609 # 729ac649 <__l2_shared_end+0x5699c649>
1c009382:	63112c23          	sw	a7,1592(sp)
1c009386:	313ee8b7          	lui	a7,0x313ee
1c00938a:	a7c88893          	addi	a7,a7,-1412 # 313eda7c <__l2_shared_end+0x153dda7c>
1c00938e:	63112e23          	sw	a7,1596(sp)
1c009392:	256728b7          	lui	a7,0x25672
1c009396:	ee788893          	addi	a7,a7,-281 # 25671ee7 <__l2_shared_end+0x9661ee7>
1c00939a:	65112023          	sw	a7,1600(sp)
1c00939e:	47e868b7          	lui	a7,0x47e86
1c0093a2:	57e88893          	addi	a7,a7,1406 # 47e8657e <__l2_shared_end+0x2be7657e>
1c0093a6:	65112223          	sw	a7,1604(sp)
1c0093aa:	ab4768b7          	lui	a7,0xab476
1c0093ae:	9df88893          	addi	a7,a7,-1569 # ab4759df <__l2_shared_end+0x8f4659df>
1c0093b2:	65112423          	sw	a7,1608(sp)
1c0093b6:	737598b7          	lui	a7,0x73759
1c0093ba:	6e288893          	addi	a7,a7,1762 # 737596e2 <__l2_shared_end+0x577496e2>
1c0093be:	65112623          	sw	a7,1612(sp)
1c0093c2:	596138b7          	lui	a7,0x59613
1c0093c6:	dac88893          	addi	a7,a7,-596 # 59612dac <__l2_shared_end+0x3d602dac>
1c0093ca:	65112823          	sw	a7,1616(sp)
1c0093ce:	ae9968b7          	lui	a7,0xae996
1c0093d2:	6f988893          	addi	a7,a7,1785 # ae9966f9 <__l2_shared_end+0x929866f9>
1c0093d6:	65112a23          	sw	a7,1620(sp)
1c0093da:	655fa8b7          	lui	a7,0x655fa
1c0093de:	51688893          	addi	a7,a7,1302 # 655fa516 <__l2_shared_end+0x495ea516>
1c0093e2:	65112c23          	sw	a7,1624(sp)
1c0093e6:	0be098b7          	lui	a7,0xbe09
1c0093ea:	f4e88893          	addi	a7,a7,-178 # be08f4e <__CTOR_LIST__-0x101f70b6>
1c0093ee:	65112e23          	sw	a7,1628(sp)
1c0093f2:	139168b7          	lui	a7,0x13916
1c0093f6:	7ea88893          	addi	a7,a7,2026 # 139167ea <__CTOR_LIST__-0x86e981a>
1c0093fa:	67112023          	sw	a7,1632(sp)
1c0093fe:	d845a8b7          	lui	a7,0xd845a
1c009402:	05a88893          	addi	a7,a7,90 # d845a05a <__l2_shared_end+0xbc44a05a>
1c009406:	67112223          	sw	a7,1636(sp)
1c00940a:	3cd7d8b7          	lui	a7,0x3cd7d
1c00940e:	05188893          	addi	a7,a7,81 # 3cd7d051 <__l2_shared_end+0x20d6d051>
1c009412:	67112423          	sw	a7,1640(sp)
1c009416:	5cbe68b7          	lui	a7,0x5cbe6
1c00941a:	9d188893          	addi	a7,a7,-1583 # 5cbe59d1 <__l2_shared_end+0x40bd59d1>
1c00941e:	67112623          	sw	a7,1644(sp)
1c009422:	40000893          	li	a7,1024
1c009426:	67111823          	sh	a7,1648(sp)
1c00942a:	48ed                	li	a7,27
1c00942c:	67110923          	sb	a7,1650(sp)
1c009430:	48c1                	li	a7,16
1c009432:	671109a3          	sb	a7,1651(sp)
1c009436:	5018b8b7          	lui	a7,0x5018b
1c00943a:	f3388893          	addi	a7,a7,-205 # 5018af33 <__l2_shared_end+0x3417af33>
1c00943e:	67112a23          	sw	a7,1652(sp)
1c009442:	8d2bc8b7          	lui	a7,0x8d2bc
1c009446:	60c88893          	addi	a7,a7,1548 # 8d2bc60c <__l2_shared_end+0x712ac60c>
1c00944a:	67112c23          	sw	a7,1656(sp)
1c00944e:	d7be38b7          	lui	a7,0xd7be3
1c009452:	6c688893          	addi	a7,a7,1734 # d7be36c6 <__l2_shared_end+0xbbbd36c6>
1c009456:	67112e23          	sw	a7,1660(sp)
1c00945a:	98d458b7          	lui	a7,0x98d45
1c00945e:	d0e88893          	addi	a7,a7,-754 # 98d44d0e <__l2_shared_end+0x7cd34d0e>
1c009462:	69112023          	sw	a7,1664(sp)
1c009466:	208838b7          	lui	a7,0x20883
1c00946a:	71e88893          	addi	a7,a7,1822 # 2088371e <__l2_shared_end+0x487371e>
1c00946e:	69112223          	sw	a7,1668(sp)
1c009472:	d3a778b7          	lui	a7,0xd3a77
1c009476:	3eb88893          	addi	a7,a7,1003 # d3a773eb <__l2_shared_end+0xb7a673eb>
1c00947a:	69112423          	sw	a7,1672(sp)
1c00947e:	2da478b7          	lui	a7,0x2da47
1c009482:	9bc88893          	addi	a7,a7,-1604 # 2da469bc <__l2_shared_end+0x11a369bc>
1c009486:	69112623          	sw	a7,1676(sp)
1c00948a:	ec0398b7          	lui	a7,0xec039
1c00948e:	1cb88893          	addi	a7,a7,459 # ec0391cb <__l2_shared_end+0xd00291cb>
1c009492:	69112823          	sw	a7,1680(sp)
1c009496:	0702c8b7          	lui	a7,0x702c
1c00949a:	88b88893          	addi	a7,a7,-1909 # 702b88b <__CTOR_LIST__-0x14fd4779>
1c00949e:	69112a23          	sw	a7,1684(sp)
1c0094a2:	b476c8b7          	lui	a7,0xb476c
1c0094a6:	a6388893          	addi	a7,a7,-1437 # b476ba63 <__l2_shared_end+0x9875ba63>
1c0094aa:	69112c23          	sw	a7,1688(sp)
1c0094ae:	658018b7          	lui	a7,0x65801
1c0094b2:	18288893          	addi	a7,a7,386 # 65801182 <__l2_shared_end+0x497f1182>
1c0094b6:	69112e23          	sw	a7,1692(sp)
1c0094ba:	a63d58b7          	lui	a7,0xa63d5
1c0094be:	52988893          	addi	a7,a7,1321 # a63d5529 <__l2_shared_end+0x8a3c5529>
1c0094c2:	6b112023          	sw	a7,1696(sp)
1c0094c6:	893978b7          	lui	a7,0x89397
1c0094ca:	54888893          	addi	a7,a7,1352 # 89397548 <__l2_shared_end+0x6d387548>
1c0094ce:	6b112223          	sw	a7,1700(sp)
1c0094d2:	364428b7          	lui	a7,0x36442
1c0094d6:	24788893          	addi	a7,a7,583 # 36442247 <__l2_shared_end+0x1a432247>
1c0094da:	6b112423          	sw	a7,1704(sp)
1c0094de:	c37ec8b7          	lui	a7,0xc37ec
1c0094e2:	c7288893          	addi	a7,a7,-910 # c37ebc72 <__l2_shared_end+0xa77dbc72>
1c0094e6:	6b112623          	sw	a7,1708(sp)
1c0094ea:	8c1548b7          	lui	a7,0x8c154
1c0094ee:	61688893          	addi	a7,a7,1558 # 8c154616 <__l2_shared_end+0x70144616>
1c0094f2:	6b112823          	sw	a7,1712(sp)
1c0094f6:	e24368b7          	lui	a7,0xe2436
1c0094fa:	3a688893          	addi	a7,a7,934 # e24363a6 <__l2_shared_end+0xc64263a6>
1c0094fe:	6b112a23          	sw	a7,1716(sp)
1c009502:	38d6a8b7          	lui	a7,0x38d6a
1c009506:	be688893          	addi	a7,a7,-1050 # 38d69be6 <__l2_shared_end+0x1cd59be6>
1c00950a:	6b112c23          	sw	a7,1720(sp)
1c00950e:	713c58b7          	lui	a7,0x713c5
1c009512:	acc88893          	addi	a7,a7,-1332 # 713c4acc <__l2_shared_end+0x553b4acc>
1c009516:	6b112e23          	sw	a7,1724(sp)
1c00951a:	ce7538b7          	lui	a7,0xce753
1c00951e:	71e88893          	addi	a7,a7,1822 # ce75371e <__l2_shared_end+0xb274371e>
1c009522:	6d112023          	sw	a7,1728(sp)
1c009526:	8a96b8b7          	lui	a7,0x8a96b
1c00952a:	48888893          	addi	a7,a7,1160 # 8a96b488 <__l2_shared_end+0x6e95b488>
1c00952e:	6d112223          	sw	a7,1732(sp)
1c009532:	72b7e8b7          	lui	a7,0x72b7e
1c009536:	b2c88893          	addi	a7,a7,-1236 # 72b7db2c <__l2_shared_end+0x56b6db2c>
1c00953a:	6d112423          	sw	a7,1736(sp)
1c00953e:	6aafe8b7          	lui	a7,0x6aafe
1c009542:	9a088893          	addi	a7,a7,-1632 # 6aafd9a0 <__l2_shared_end+0x4eaed9a0>
1c009546:	6d112623          	sw	a7,1740(sp)
1c00954a:	556898b7          	lui	a7,0x55689
1c00954e:	1a388893          	addi	a7,a7,419 # 556891a3 <__l2_shared_end+0x396791a3>
1c009552:	6d112823          	sw	a7,1744(sp)
1c009556:	58a678b7          	lui	a7,0x58a67
1c00955a:	40088893          	addi	a7,a7,1024 # 58a67400 <__l2_shared_end+0x3ca57400>
1c00955e:	6d112a23          	sw	a7,1748(sp)
1c009562:	6693a8b7          	lui	a7,0x6693a
1c009566:	12d88893          	addi	a7,a7,301 # 6693a12d <__l2_shared_end+0x4a92a12d>
1c00956a:	6d112c23          	sw	a7,1752(sp)
1c00956e:	74e128b7          	lui	a7,0x74e12
1c009572:	bf688893          	addi	a7,a7,-1034 # 74e11bf6 <__l2_shared_end+0x58e01bf6>
1c009576:	6d112e23          	sw	a7,1756(sp)
1c00957a:	187248b7          	lui	a7,0x18724
1c00957e:	40388893          	addi	a7,a7,1027 # 18724403 <__CTOR_LIST__-0x38dbc01>
1c009582:	6f112023          	sw	a7,1760(sp)
1c009586:	050c98b7          	lui	a7,0x50c9
1c00958a:	02d88893          	addi	a7,a7,45 # 50c902d <__CTOR_LIST__-0x16f36fd7>
1c00958e:	6f112223          	sw	a7,1764(sp)
1c009592:	6c9a38b7          	lui	a7,0x6c9a3
1c009596:	69888893          	addi	a7,a7,1688 # 6c9a3698 <__l2_shared_end+0x50993698>
1c00959a:	6f112423          	sw	a7,1768(sp)
1c00959e:	c93078b7          	lui	a7,0xc9307
1c0095a2:	d6588893          	addi	a7,a7,-667 # c9306d65 <__l2_shared_end+0xad2f6d65>
1c0095a6:	6f112623          	sw	a7,1772(sp)
1c0095aa:	f6aa58b7          	lui	a7,0xf6aa5
1c0095ae:	79588893          	addi	a7,a7,1941 # f6aa5795 <__l2_shared_end+0xdaa95795>
1c0095b2:	6f112823          	sw	a7,1776(sp)
1c0095b6:	f42338b7          	lui	a7,0xf4233
1c0095ba:	0e488893          	addi	a7,a7,228 # f42330e4 <__l2_shared_end+0xd82230e4>
1c0095be:	6f112a23          	sw	a7,1780(sp)
1c0095c2:	2d4ac8b7          	lui	a7,0x2d4ac
1c0095c6:	c1788893          	addi	a7,a7,-1001 # 2d4abc17 <__l2_shared_end+0x1149bc17>
1c0095ca:	6f112c23          	sw	a7,1784(sp)
1c0095ce:	c44438b7          	lui	a7,0xc4443
1c0095d2:	98e88893          	addi	a7,a7,-1650 # c444298e <__l2_shared_end+0xa843298e>
1c0095d6:	6f112e23          	sw	a7,1788(sp)
1c0095da:	520108b7          	lui	a7,0x52010
1c0095de:	1e688893          	addi	a7,a7,486 # 520101e6 <__l2_shared_end+0x360001e6>
1c0095e2:	71112023          	sw	a7,1792(sp)
1c0095e6:	21eb38b7          	lui	a7,0x21eb3
1c0095ea:	8bf88893          	addi	a7,a7,-1857 # 21eb28bf <__l2_shared_end+0x5ea28bf>
1c0095ee:	71112223          	sw	a7,1796(sp)
1c0095f2:	6704b8b7          	lui	a7,0x6704b
1c0095f6:	91988893          	addi	a7,a7,-1767 # 6704a919 <__l2_shared_end+0x4b03a919>
1c0095fa:	71112423          	sw	a7,1800(sp)
1c0095fe:	065728b7          	lui	a7,0x6572
1c009602:	8aa88893          	addi	a7,a7,-1878 # 65718aa <__CTOR_LIST__-0x15a8e75a>
1c009606:	71112623          	sw	a7,1804(sp)
1c00960a:	379378b7          	lui	a7,0x37937
1c00960e:	f3988893          	addi	a7,a7,-199 # 37936f39 <__l2_shared_end+0x1b926f39>
1c009612:	71112823          	sw	a7,1808(sp)
1c009616:	7393f8b7          	lui	a7,0x7393f
1c00961a:	12288893          	addi	a7,a7,290 # 7393f122 <__l2_shared_end+0x5792f122>
1c00961e:	71112a23          	sw	a7,1812(sp)
1c009622:	011b48b7          	lui	a7,0x11b4
1c009626:	3d388893          	addi	a7,a7,979 # 11b43d3 <__CTOR_LIST__-0x1ae4bc31>
1c00962a:	71112c23          	sw	a7,1816(sp)
1c00962e:	194a88b7          	lui	a7,0x194a8
1c009632:	97b88893          	addi	a7,a7,-1669 # 194a797b <__CTOR_LIST__-0x2b58689>
1c009636:	71112e23          	sw	a7,1820(sp)
1c00963a:	903998b7          	lui	a7,0x90399
1c00963e:	bb988893          	addi	a7,a7,-1095 # 90398bb9 <__l2_shared_end+0x74388bb9>
1c009642:	73112023          	sw	a7,1824(sp)
1c009646:	71cc98b7          	lui	a7,0x71cc9
1c00964a:	b1888893          	addi	a7,a7,-1256 # 71cc8b18 <__l2_shared_end+0x55cb8b18>
1c00964e:	73112223          	sw	a7,1828(sp)
1c009652:	a723d8b7          	lui	a7,0xa723d
1c009656:	d4288893          	addi	a7,a7,-702 # a723cd42 <__l2_shared_end+0x8b22cd42>
1c00965a:	73112423          	sw	a7,1832(sp)
1c00965e:	5da938b7          	lui	a7,0x5da93
1c009662:	85a88893          	addi	a7,a7,-1958 # 5da9285a <__l2_shared_end+0x41a8285a>
1c009666:	73112623          	sw	a7,1836(sp)
1c00966a:	f7aa28b7          	lui	a7,0xf7aa2
1c00966e:	52c88893          	addi	a7,a7,1324 # f7aa252c <__l2_shared_end+0xdba9252c>
1c009672:	73112823          	sw	a7,1840(sp)
1c009676:	bad8e8b7          	lui	a7,0xbad8e
1c00967a:	fc288893          	addi	a7,a7,-62 # bad8dfc2 <__l2_shared_end+0x9ed7dfc2>
1c00967e:	73112a23          	sw	a7,1844(sp)
1c009682:	6670e8b7          	lui	a7,0x6670e
1c009686:	40688893          	addi	a7,a7,1030 # 6670e406 <__l2_shared_end+0x4a6fe406>
1c00968a:	73112c23          	sw	a7,1848(sp)
1c00968e:	a51f18b7          	lui	a7,0xa51f1
1c009692:	c9488893          	addi	a7,a7,-876 # a51f0c94 <__l2_shared_end+0x891e0c94>
1c009696:	31a60613          	addi	a2,a2,794
1c00969a:	73112e23          	sw	a7,1852(sp)
1c00969e:	b9da58b7          	lui	a7,0xb9da5
1c0096a2:	55688893          	addi	a7,a7,1366 # b9da5556 <__l2_shared_end+0x9dd95556>
1c0096a6:	76c11423          	sh	a2,1896(sp)
1c0096aa:	f9300613          	li	a2,-109
1c0096ae:	75112023          	sw	a7,1856(sp)
1c0096b2:	76c10523          	sb	a2,1898(sp)
1c0096b6:	4286b8b7          	lui	a7,0x4286b
1c0096ba:	5619                	li	a2,-26
1c0096bc:	6be88893          	addi	a7,a7,1726 # 4286b6be <__l2_shared_end+0x2685b6be>
1c0096c0:	76c105a3          	sb	a2,1899(sp)
1c0096c4:	1c9eb637          	lui	a2,0x1c9eb
1c0096c8:	75112223          	sw	a7,1860(sp)
1c0096cc:	8d760613          	addi	a2,a2,-1833 # 1c9ea8d7 <__l2_shared_end+0x9da8d7>
1c0096d0:	00e978b7          	lui	a7,0xe97
1c0096d4:	28c88893          	addi	a7,a7,652 # e9728c <__CTOR_LIST__-0x1b168d78>
1c0096d8:	76c12623          	sw	a2,1900(sp)
1c0096dc:	553b9637          	lui	a2,0x553b9
1c0096e0:	75112423          	sw	a7,1864(sp)
1c0096e4:	f2260613          	addi	a2,a2,-222 # 553b8f22 <__l2_shared_end+0x393a8f22>
1c0096e8:	6b1b08b7          	lui	a7,0x6b1b0
1c0096ec:	87088893          	addi	a7,a7,-1936 # 6b1af870 <__l2_shared_end+0x4f19f870>
1c0096f0:	76c12823          	sw	a2,1904(sp)
1c0096f4:	9d9d1637          	lui	a2,0x9d9d1
1c0096f8:	75112623          	sw	a7,1868(sp)
1c0096fc:	bd760613          	addi	a2,a2,-1065 # 9d9d0bd7 <__l2_shared_end+0x819c0bd7>
1c009700:	764568b7          	lui	a7,0x76456
1c009704:	3fb88893          	addi	a7,a7,1019 # 764563fb <__l2_shared_end+0x5a4463fb>
1c009708:	76c12a23          	sw	a2,1908(sp)
1c00970c:	06c06637          	lui	a2,0x6c06
1c009710:	75112823          	sw	a7,1872(sp)
1c009714:	c4b60613          	addi	a2,a2,-949 # 6c05c4b <__CTOR_LIST__-0x153fa3b9>
1c009718:	c0ff58b7          	lui	a7,0xc0ff5
1c00971c:	16188893          	addi	a7,a7,353 # c0ff5161 <__l2_shared_end+0xa4fe5161>
1c009720:	76c12c23          	sw	a2,1912(sp)
1c009724:	690bb637          	lui	a2,0x690bb
1c009728:	75112a23          	sw	a7,1876(sp)
1c00972c:	d7160613          	addi	a2,a2,-655 # 690bad71 <__l2_shared_end+0x4d0aad71>
1c009730:	2564f8b7          	lui	a7,0x2564f
1c009734:	a5988893          	addi	a7,a7,-1447 # 2564ea59 <__l2_shared_end+0x963ea59>
1c009738:	76c12e23          	sw	a2,1916(sp)
1c00973c:	294a6637          	lui	a2,0x294a6
1c009740:	75112c23          	sw	a7,1880(sp)
1c009744:	74860613          	addi	a2,a2,1864 # 294a6748 <__l2_shared_end+0xd496748>
1c009748:	a34ab8b7          	lui	a7,0xa34ab
1c00974c:	25f88893          	addi	a7,a7,607 # a34ab25f <__l2_shared_end+0x8749b25f>
1c009750:	78c12023          	sw	a2,1920(sp)
1c009754:	57ff5637          	lui	a2,0x57ff5
1c009758:	75112e23          	sw	a7,1884(sp)
1c00975c:	26960613          	addi	a2,a2,617 # 57ff5269 <__l2_shared_end+0x3bfe5269>
1c009760:	01fc88b7          	lui	a7,0x1fc8
1c009764:	ce488893          	addi	a7,a7,-796 # 1fc7ce4 <__CTOR_LIST__-0x1a038320>
1c009768:	78c12223          	sw	a2,1924(sp)
1c00976c:	2c75a637          	lui	a2,0x2c75a
1c009770:	77112023          	sw	a7,1888(sp)
1c009774:	36560613          	addi	a2,a2,869 # 2c75a365 <__l2_shared_end+0x1074a365>
1c009778:	914318b7          	lui	a7,0x91431
1c00977c:	f3088893          	addi	a7,a7,-208 # 91430f30 <__l2_shared_end+0x75420f30>
1c009780:	78c12423          	sw	a2,1928(sp)
1c009784:	e67ed637          	lui	a2,0xe67ed
1c009788:	77112223          	sw	a7,1892(sp)
1c00978c:	89360613          	addi	a2,a2,-1901 # e67ec893 <__l2_shared_end+0xca7dc893>
1c009790:	78c12623          	sw	a2,1932(sp)
1c009794:	e383c637          	lui	a2,0xe383c
1c009798:	61560613          	addi	a2,a2,1557 # e383c615 <__l2_shared_end+0xc782c615>
1c00979c:	78c12823          	sw	a2,1936(sp)
1c0097a0:	4d91f637          	lui	a2,0x4d91f
1c0097a4:	7a160613          	addi	a2,a2,1953 # 4d91f7a1 <__l2_shared_end+0x3190f7a1>
1c0097a8:	78c12a23          	sw	a2,1940(sp)
1c0097ac:	4e537637          	lui	a2,0x4e537
1c0097b0:	22c60613          	addi	a2,a2,556 # 4e53722c <__l2_shared_end+0x3252722c>
1c0097b4:	78c12c23          	sw	a2,1944(sp)
1c0097b8:	bb31b637          	lui	a2,0xbb31b
1c0097bc:	26b60613          	addi	a2,a2,619 # bb31b26b <__l2_shared_end+0x9f30b26b>
1c0097c0:	78c12e23          	sw	a2,1948(sp)
1c0097c4:	60ea1637          	lui	a2,0x60ea1
1c0097c8:	61060613          	addi	a2,a2,1552 # 60ea1610 <__l2_shared_end+0x44e91610>
1c0097cc:	7ac12023          	sw	a2,1952(sp)
1c0097d0:	97b8a637          	lui	a2,0x97b8a
1c0097d4:	5e760613          	addi	a2,a2,1511 # 97b8a5e7 <__l2_shared_end+0x7bb7a5e7>
1c0097d8:	7ac12223          	sw	a2,1956(sp)
1c0097dc:	624d3637          	lui	a2,0x624d3
1c0097e0:	ee360613          	addi	a2,a2,-285 # 624d2ee3 <__l2_shared_end+0x464c2ee3>
1c0097e4:	7ac12423          	sw	a2,1960(sp)
1c0097e8:	5f948637          	lui	a2,0x5f948
1c0097ec:	3a360613          	addi	a2,a2,931 # 5f9483a3 <__l2_shared_end+0x439383a3>
1c0097f0:	7ac12623          	sw	a2,1964(sp)
1c0097f4:	bf369637          	lui	a2,0xbf369
1c0097f8:	1d960613          	addi	a2,a2,473 # bf3691d9 <__l2_shared_end+0xa33591d9>
1c0097fc:	7ac12823          	sw	a2,1968(sp)
1c009800:	4814d637          	lui	a2,0x4814d
1c009804:	161d                	addi	a2,a2,-25
1c009806:	7ac12a23          	sw	a2,1972(sp)
1c00980a:	4aaaf637          	lui	a2,0x4aaaf
1c00980e:	c4960613          	addi	a2,a2,-951 # 4aaaec49 <__l2_shared_end+0x2ea9ec49>
1c009812:	7ac12c23          	sw	a2,1976(sp)
1c009816:	40c04637          	lui	a2,0x40c04
1c00981a:	70560613          	addi	a2,a2,1797 # 40c04705 <__l2_shared_end+0x24bf4705>
1c00981e:	7ac12e23          	sw	a2,1980(sp)
1c009822:	f255a637          	lui	a2,0xf255a
1c009826:	a9960613          	addi	a2,a2,-1383 # f2559a99 <__l2_shared_end+0xd6549a99>
1c00982a:	7cc12023          	sw	a2,1984(sp)
1c00982e:	c5277637          	lui	a2,0xc5277
1c009832:	54960613          	addi	a2,a2,1353 # c5277549 <__l2_shared_end+0xa9267549>
1c009836:	7cc12223          	sw	a2,1988(sp)
1c00983a:	2fcbf637          	lui	a2,0x2fcbf
1c00983e:	b7260613          	addi	a2,a2,-1166 # 2fcbeb72 <__l2_shared_end+0x13caeb72>
1c009842:	7cc12423          	sw	a2,1992(sp)
1c009846:	29eb4637          	lui	a2,0x29eb4
1c00984a:	6ec60613          	addi	a2,a2,1772 # 29eb46ec <__l2_shared_end+0xdea46ec>
1c00984e:	7cc12623          	sw	a2,1996(sp)
1c009852:	bff40637          	lui	a2,0xbff40
1c009856:	74160613          	addi	a2,a2,1857 # bff40741 <__l2_shared_end+0xa3f30741>
1c00985a:	7cc12823          	sw	a2,2000(sp)
1c00985e:	e46b8637          	lui	a2,0xe46b8
1c009862:	96460613          	addi	a2,a2,-1692 # e46b7964 <__l2_shared_end+0xc86a7964>
1c009866:	7cc12a23          	sw	a2,2004(sp)
1c00986a:	6bbca637          	lui	a2,0x6bbca
1c00986e:	9bc60613          	addi	a2,a2,-1604 # 6bbc99bc <__l2_shared_end+0x4fbb99bc>
1c009872:	7cc12c23          	sw	a2,2008(sp)
1c009876:	6098b637          	lui	a2,0x6098b
1c00987a:	28660613          	addi	a2,a2,646 # 6098b286 <__l2_shared_end+0x4497b286>
1c00987e:	7cc12e23          	sw	a2,2012(sp)
1c009882:	f5455637          	lui	a2,0xf5455
1c009886:	75160613          	addi	a2,a2,1873 # f5455751 <__l2_shared_end+0xd9445751>
1c00988a:	7ec12023          	sw	a2,2016(sp)
1c00988e:	79ec0637          	lui	a2,0x79ec0
1c009892:	4b460613          	addi	a2,a2,1204 # 79ec04b4 <__l2_shared_end+0x5deb04b4>
1c009896:	7ec12223          	sw	a2,2020(sp)
1c00989a:	6fb34637          	lui	a2,0x6fb34
1c00989e:	b0960613          	addi	a2,a2,-1271 # 6fb33b09 <__l2_shared_end+0x53b23b09>
1c0098a2:	7ec12423          	sw	a2,2024(sp)
1c0098a6:	79adc637          	lui	a2,0x79adc
1c0098aa:	bc760613          	addi	a2,a2,-1081 # 79adbbc7 <__l2_shared_end+0x5dacbbc7>
1c0098ae:	7ec12623          	sw	a2,2028(sp)
1c0098b2:	a3c8c637          	lui	a2,0xa3c8c
1c0098b6:	0b660613          	addi	a2,a2,182 # a3c8c0b6 <__l2_shared_end+0x87c7c0b6>
1c0098ba:	7ec12823          	sw	a2,2032(sp)
1c0098be:	56db5637          	lui	a2,0x56db5
1c0098c2:	eba60613          	addi	a2,a2,-326 # 56db4eba <__l2_shared_end+0x3ada4eba>
1c0098c6:	7ec12a23          	sw	a2,2036(sp)
1c0098ca:	f98fd637          	lui	a2,0xf98fd
1c0098ce:	8a460613          	addi	a2,a2,-1884 # f98fc8a4 <__l2_shared_end+0xdd8ec8a4>
1c0098d2:	7ec12c23          	sw	a2,2040(sp)
1c0098d6:	e7749637          	lui	a2,0xe7749
1c0098da:	6405                	lui	s0,0x1
1c0098dc:	b4760613          	addi	a2,a2,-1209 # e7748b47 <__l2_shared_end+0xcb738b47>
1c0098e0:	7ec12e23          	sw	a2,2044(sp)
1c0098e4:	80040493          	addi	s1,s0,-2048 # 800 <__CTOR_LIST__-0x1bfff804>
1c0098e8:	252c1637          	lui	a2,0x252c1
1c0098ec:	bc960613          	addi	a2,a2,-1079 # 252c0bc9 <__l2_shared_end+0x92b0bc9>
1c0098f0:	948a                	add	s1,s1,sp
1c0098f2:	c090                	sw	a2,0(s1)
1c0098f4:	80440493          	addi	s1,s0,-2044
1c0098f8:	ac821637          	lui	a2,0xac821
1c0098fc:	86960613          	addi	a2,a2,-1943 # ac820869 <__l2_shared_end+0x90810869>
1c009900:	948a                	add	s1,s1,sp
1c009902:	c090                	sw	a2,0(s1)
1c009904:	80840493          	addi	s1,s0,-2040
1c009908:	518d5637          	lui	a2,0x518d5
1c00990c:	18460613          	addi	a2,a2,388 # 518d5184 <__l2_shared_end+0x358c5184>
1c009910:	948a                	add	s1,s1,sp
1c009912:	c090                	sw	a2,0(s1)
1c009914:	80c40493          	addi	s1,s0,-2036
1c009918:	6fa40637          	lui	a2,0x6fa40
1c00991c:	f1160613          	addi	a2,a2,-239 # 6fa3ff11 <__l2_shared_end+0x53a2ff11>
1c009920:	948a                	add	s1,s1,sp
1c009922:	c090                	sw	a2,0(s1)
1c009924:	81040493          	addi	s1,s0,-2032
1c009928:	5b9be637          	lui	a2,0x5b9be
1c00992c:	4f160613          	addi	a2,a2,1265 # 5b9be4f1 <__l2_shared_end+0x3f9ae4f1>
1c009930:	948a                	add	s1,s1,sp
1c009932:	c090                	sw	a2,0(s1)
1c009934:	81440493          	addi	s1,s0,-2028
1c009938:	e5f46637          	lui	a2,0xe5f46
1c00993c:	abc60613          	addi	a2,a2,-1348 # e5f45abc <__l2_shared_end+0xc9f35abc>
1c009940:	948a                	add	s1,s1,sp
1c009942:	c090                	sw	a2,0(s1)
1c009944:	81840493          	addi	s1,s0,-2024
1c009948:	af02c637          	lui	a2,0xaf02c
1c00994c:	27b60613          	addi	a2,a2,635 # af02c27b <__l2_shared_end+0x9301c27b>
1c009950:	948a                	add	s1,s1,sp
1c009952:	c090                	sw	a2,0(s1)
1c009954:	81c40493          	addi	s1,s0,-2020
1c009958:	08666637          	lui	a2,0x8666
1c00995c:	c1260613          	addi	a2,a2,-1006 # 8665c12 <__CTOR_LIST__-0x1399a3f2>
1c009960:	948a                	add	s1,s1,sp
1c009962:	c090                	sw	a2,0(s1)
1c009964:	82040493          	addi	s1,s0,-2016
1c009968:	da4d3637          	lui	a2,0xda4d3
1c00996c:	02a60613          	addi	a2,a2,42 # da4d302a <__l2_shared_end+0xbe4c302a>
1c009970:	948a                	add	s1,s1,sp
1c009972:	c090                	sw	a2,0(s1)
1c009974:	82440493          	addi	s1,s0,-2012
1c009978:	06b6f637          	lui	a2,0x6b6f
1c00997c:	d8660613          	addi	a2,a2,-634 # 6b6ed86 <__CTOR_LIST__-0x1549127e>
1c009980:	948a                	add	s1,s1,sp
1c009982:	c090                	sw	a2,0(s1)
1c009984:	82840493          	addi	s1,s0,-2008
1c009988:	ab734637          	lui	a2,0xab734
1c00998c:	3b660613          	addi	a2,a2,950 # ab7343b6 <__l2_shared_end+0x8f7243b6>
1c009990:	948a                	add	s1,s1,sp
1c009992:	c090                	sw	a2,0(s1)
1c009994:	82c40493          	addi	s1,s0,-2004
1c009998:	563b7637          	lui	a2,0x563b7
1c00999c:	8b660613          	addi	a2,a2,-1866 # 563b68b6 <__l2_shared_end+0x3a3a68b6>
1c0099a0:	948a                	add	s1,s1,sp
1c0099a2:	c090                	sw	a2,0(s1)
1c0099a4:	83040493          	addi	s1,s0,-2000
1c0099a8:	ab619637          	lui	a2,0xab619
1c0099ac:	69460613          	addi	a2,a2,1684 # ab619694 <__l2_shared_end+0x8f609694>
1c0099b0:	948a                	add	s1,s1,sp
1c0099b2:	c090                	sw	a2,0(s1)
1c0099b4:	83440493          	addi	s1,s0,-1996
1c0099b8:	e111c637          	lui	a2,0xe111c
1c0099bc:	06060613          	addi	a2,a2,96 # e111c060 <__l2_shared_end+0xc510c060>
1c0099c0:	948a                	add	s1,s1,sp
1c0099c2:	c090                	sw	a2,0(s1)
1c0099c4:	83840493          	addi	s1,s0,-1992
1c0099c8:	c8233637          	lui	a2,0xc8233
1c0099cc:	b4c60613          	addi	a2,a2,-1204 # c8232b4c <__l2_shared_end+0xac222b4c>
1c0099d0:	948a                	add	s1,s1,sp
1c0099d2:	c090                	sw	a2,0(s1)
1c0099d4:	83c40493          	addi	s1,s0,-1988
1c0099d8:	a9873637          	lui	a2,0xa9873
1c0099dc:	59260613          	addi	a2,a2,1426 # a9873592 <__l2_shared_end+0x8d863592>
1c0099e0:	948a                	add	s1,s1,sp
1c0099e2:	c090                	sw	a2,0(s1)
1c0099e4:	84040493          	addi	s1,s0,-1984
1c0099e8:	5779d637          	lui	a2,0x5779d
1c0099ec:	c7460613          	addi	a2,a2,-908 # 5779cc74 <__l2_shared_end+0x3b78cc74>
1c0099f0:	948a                	add	s1,s1,sp
1c0099f2:	c090                	sw	a2,0(s1)
1c0099f4:	84440493          	addi	s1,s0,-1980
1c0099f8:	62958637          	lui	a2,0x62958
1c0099fc:	24c60613          	addi	a2,a2,588 # 6295824c <__l2_shared_end+0x4694824c>
1c009a00:	948a                	add	s1,s1,sp
1c009a02:	c090                	sw	a2,0(s1)
1c009a04:	84840493          	addi	s1,s0,-1976
1c009a08:	1d809637          	lui	a2,0x1d809
1c009a0c:	11060613          	addi	a2,a2,272 # 1d809110 <__l2_shared_end+0x17f9110>
1c009a10:	948a                	add	s1,s1,sp
1c009a12:	c090                	sw	a2,0(s1)
1c009a14:	84c40493          	addi	s1,s0,-1972
1c009a18:	57972637          	lui	a2,0x57972
1c009a1c:	33760613          	addi	a2,a2,823 # 57972337 <__l2_shared_end+0x3b962337>
1c009a20:	948a                	add	s1,s1,sp
1c009a22:	c090                	sw	a2,0(s1)
1c009a24:	85040493          	addi	s1,s0,-1968
1c009a28:	69316637          	lui	a2,0x69316
1c009a2c:	88560613          	addi	a2,a2,-1915 # 69315885 <__l2_shared_end+0x4d305885>
1c009a30:	948a                	add	s1,s1,sp
1c009a32:	c090                	sw	a2,0(s1)
1c009a34:	85440493          	addi	s1,s0,-1964
1c009a38:	82d16637          	lui	a2,0x82d16
1c009a3c:	8c360613          	addi	a2,a2,-1853 # 82d158c3 <__l2_shared_end+0x66d058c3>
1c009a40:	948a                	add	s1,s1,sp
1c009a42:	c090                	sw	a2,0(s1)
1c009a44:	85840493          	addi	s1,s0,-1960
1c009a48:	4b347637          	lui	a2,0x4b347
1c009a4c:	c5960613          	addi	a2,a2,-935 # 4b346c59 <__l2_shared_end+0x2f336c59>
1c009a50:	948a                	add	s1,s1,sp
1c009a52:	c090                	sw	a2,0(s1)
1c009a54:	85c40493          	addi	s1,s0,-1956
1c009a58:	404a9637          	lui	a2,0x404a9
1c009a5c:	62260613          	addi	a2,a2,1570 # 404a9622 <__l2_shared_end+0x24499622>
1c009a60:	948a                	add	s1,s1,sp
1c009a62:	c090                	sw	a2,0(s1)
1c009a64:	77e5                	lui	a5,0xffff9
1c009a66:	86040613          	addi	a2,s0,-1952
1c009a6a:	b9578813          	addi	a6,a5,-1131 # ffff8b95 <__l2_shared_end+0xe3fe8b95>
1c009a6e:	960a                	add	a2,a2,sp
1c009a70:	86240493          	addi	s1,s0,-1950
1c009a74:	01061023          	sh	a6,0(a2)
1c009a78:	948a                	add	s1,s1,sp
1c009a7a:	02200613          	li	a2,34
1c009a7e:	00c48023          	sb	a2,0(s1)
1c009a82:	86340493          	addi	s1,s0,-1949
1c009a86:	07200613          	li	a2,114
1c009a8a:	948a                	add	s1,s1,sp
1c009a8c:	00c48023          	sb	a2,0(s1)
1c009a90:	86440493          	addi	s1,s0,-1948
1c009a94:	fd100637          	lui	a2,0xfd100
1c009a98:	bba60613          	addi	a2,a2,-1094 # fd0ffbba <__l2_shared_end+0xe10efbba>
1c009a9c:	948a                	add	s1,s1,sp
1c009a9e:	c090                	sw	a2,0(s1)
1c009aa0:	86840493          	addi	s1,s0,-1944
1c009aa4:	b1e4d637          	lui	a2,0xb1e4d
1c009aa8:	c2b60613          	addi	a2,a2,-981 # b1e4cc2b <__l2_shared_end+0x95e3cc2b>
1c009aac:	948a                	add	s1,s1,sp
1c009aae:	c090                	sw	a2,0(s1)
1c009ab0:	86c40493          	addi	s1,s0,-1940
1c009ab4:	cb100637          	lui	a2,0xcb100
1c009ab8:	24f60613          	addi	a2,a2,591 # cb10024f <__l2_shared_end+0xaf0f024f>
1c009abc:	948a                	add	s1,s1,sp
1c009abe:	c090                	sw	a2,0(s1)
1c009ac0:	87040493          	addi	s1,s0,-1936
1c009ac4:	6f471637          	lui	a2,0x6f471
1c009ac8:	4c860613          	addi	a2,a2,1224 # 6f4714c8 <__l2_shared_end+0x534614c8>
1c009acc:	948a                	add	s1,s1,sp
1c009ace:	c090                	sw	a2,0(s1)
1c009ad0:	87440493          	addi	s1,s0,-1932
1c009ad4:	80f44637          	lui	a2,0x80f44
1c009ad8:	74060613          	addi	a2,a2,1856 # 80f44740 <__l2_shared_end+0x64f34740>
1c009adc:	948a                	add	s1,s1,sp
1c009ade:	c090                	sw	a2,0(s1)
1c009ae0:	87840493          	addi	s1,s0,-1928
1c009ae4:	74968637          	lui	a2,0x74968
1c009ae8:	35660613          	addi	a2,a2,854 # 74968356 <__l2_shared_end+0x58958356>
1c009aec:	948a                	add	s1,s1,sp
1c009aee:	c090                	sw	a2,0(s1)
1c009af0:	87c40493          	addi	s1,s0,-1924
1c009af4:	32230637          	lui	a2,0x32230
1c009af8:	12b60613          	addi	a2,a2,299 # 3223012b <__l2_shared_end+0x1622012b>
1c009afc:	948a                	add	s1,s1,sp
1c009afe:	c090                	sw	a2,0(s1)
1c009b00:	88040493          	addi	s1,s0,-1920
1c009b04:	1019a637          	lui	a2,0x1019a
1c009b08:	1a160613          	addi	a2,a2,417 # 1019a1a1 <__CTOR_LIST__-0xbe65e63>
1c009b0c:	948a                	add	s1,s1,sp
1c009b0e:	c090                	sw	a2,0(s1)
1c009b10:	88440493          	addi	s1,s0,-1916
1c009b14:	b4b9e637          	lui	a2,0xb4b9e
1c009b18:	f5660613          	addi	a2,a2,-170 # b4b9df56 <__l2_shared_end+0x98b8df56>
1c009b1c:	948a                	add	s1,s1,sp
1c009b1e:	c090                	sw	a2,0(s1)
1c009b20:	88840493          	addi	s1,s0,-1912
1c009b24:	a67b7637          	lui	a2,0xa67b7
1c009b28:	53a60613          	addi	a2,a2,1338 # a67b753a <__l2_shared_end+0x8a7a753a>
1c009b2c:	948a                	add	s1,s1,sp
1c009b2e:	c090                	sw	a2,0(s1)
1c009b30:	88c40493          	addi	s1,s0,-1908
1c009b34:	66bc3637          	lui	a2,0x66bc3
1c009b38:	7ac60613          	addi	a2,a2,1964 # 66bc37ac <__l2_shared_end+0x4abb37ac>
1c009b3c:	948a                	add	s1,s1,sp
1c009b3e:	c090                	sw	a2,0(s1)
1c009b40:	89040493          	addi	s1,s0,-1904
1c009b44:	ca33e637          	lui	a2,0xca33e
1c009b48:	46260613          	addi	a2,a2,1122 # ca33e462 <__l2_shared_end+0xae32e462>
1c009b4c:	948a                	add	s1,s1,sp
1c009b4e:	c090                	sw	a2,0(s1)
1c009b50:	89440493          	addi	s1,s0,-1900
1c009b54:	95836637          	lui	a2,0x95836
1c009b58:	9f160613          	addi	a2,a2,-1551 # 958359f1 <__l2_shared_end+0x798259f1>
1c009b5c:	948a                	add	s1,s1,sp
1c009b5e:	c090                	sw	a2,0(s1)
1c009b60:	89840493          	addi	s1,s0,-1896
1c009b64:	a7a95637          	lui	a2,0xa7a95
1c009b68:	1619                	addi	a2,a2,-26
1c009b6a:	948a                	add	s1,s1,sp
1c009b6c:	c090                	sw	a2,0(s1)
1c009b6e:	89c40493          	addi	s1,s0,-1892
1c009b72:	00714637          	lui	a2,0x714
1c009b76:	b2f60613          	addi	a2,a2,-1233 # 713b2f <__CTOR_LIST__-0x1b8ec4d5>
1c009b7a:	948a                	add	s1,s1,sp
1c009b7c:	c090                	sw	a2,0(s1)
1c009b7e:	8a040493          	addi	s1,s0,-1888
1c009b82:	b38ef637          	lui	a2,0xb38ef
1c009b86:	b6a60613          	addi	a2,a2,-1174 # b38eeb6a <__l2_shared_end+0x978deb6a>
1c009b8a:	948a                	add	s1,s1,sp
1c009b8c:	c090                	sw	a2,0(s1)
1c009b8e:	8a440493          	addi	s1,s0,-1884
1c009b92:	d6fd7637          	lui	a2,0xd6fd7
1c009b96:	67360613          	addi	a2,a2,1651 # d6fd7673 <__l2_shared_end+0xbafc7673>
1c009b9a:	948a                	add	s1,s1,sp
1c009b9c:	c090                	sw	a2,0(s1)
1c009b9e:	8a840493          	addi	s1,s0,-1880
1c009ba2:	60e05637          	lui	a2,0x60e05
1c009ba6:	a1760613          	addi	a2,a2,-1513 # 60e04a17 <__l2_shared_end+0x44df4a17>
1c009baa:	948a                	add	s1,s1,sp
1c009bac:	c090                	sw	a2,0(s1)
1c009bae:	8ac40493          	addi	s1,s0,-1876
1c009bb2:	2a537637          	lui	a2,0x2a537
1c009bb6:	b5a60613          	addi	a2,a2,-1190 # 2a536b5a <__l2_shared_end+0xe526b5a>
1c009bba:	948a                	add	s1,s1,sp
1c009bbc:	c090                	sw	a2,0(s1)
1c009bbe:	8b040493          	addi	s1,s0,-1872
1c009bc2:	26f01637          	lui	a2,0x26f01
1c009bc6:	4b660613          	addi	a2,a2,1206 # 26f014b6 <__l2_shared_end+0xaef14b6>
1c009bca:	948a                	add	s1,s1,sp
1c009bcc:	c090                	sw	a2,0(s1)
1c009bce:	8b440493          	addi	s1,s0,-1868
1c009bd2:	3b56b637          	lui	a2,0x3b56b
1c009bd6:	e4160613          	addi	a2,a2,-447 # 3b56ae41 <__l2_shared_end+0x1f55ae41>
1c009bda:	948a                	add	s1,s1,sp
1c009bdc:	c090                	sw	a2,0(s1)
1c009bde:	8b840493          	addi	s1,s0,-1864
1c009be2:	00193637          	lui	a2,0x193
1c009be6:	0f260613          	addi	a2,a2,242 # 1930f2 <__CTOR_LIST__-0x1be6cf12>
1c009bea:	948a                	add	s1,s1,sp
1c009bec:	c090                	sw	a2,0(s1)
1c009bee:	8bc40493          	addi	s1,s0,-1860
1c009bf2:	d3ed0637          	lui	a2,0xd3ed0
1c009bf6:	1f460613          	addi	a2,a2,500 # d3ed01f4 <__l2_shared_end+0xb7ec01f4>
1c009bfa:	948a                	add	s1,s1,sp
1c009bfc:	c090                	sw	a2,0(s1)
1c009bfe:	8c040493          	addi	s1,s0,-1856
1c009c02:	90d33637          	lui	a2,0x90d33
1c009c06:	1b460613          	addi	a2,a2,436 # 90d331b4 <__l2_shared_end+0x74d231b4>
1c009c0a:	948a                	add	s1,s1,sp
1c009c0c:	c090                	sw	a2,0(s1)
1c009c0e:	8c440493          	addi	s1,s0,-1852
1c009c12:	2b4af637          	lui	a2,0x2b4af
1c009c16:	aa960613          	addi	a2,a2,-1367 # 2b4aeaa9 <__l2_shared_end+0xf49eaa9>
1c009c1a:	948a                	add	s1,s1,sp
1c009c1c:	c090                	sw	a2,0(s1)
1c009c1e:	8c840493          	addi	s1,s0,-1848
1c009c22:	f4cfa637          	lui	a2,0xf4cfa
1c009c26:	b3660613          	addi	a2,a2,-1226 # f4cf9b36 <__l2_shared_end+0xd8ce9b36>
1c009c2a:	948a                	add	s1,s1,sp
1c009c2c:	c090                	sw	a2,0(s1)
1c009c2e:	8cc40493          	addi	s1,s0,-1844
1c009c32:	4ae84637          	lui	a2,0x4ae84
1c009c36:	8b860613          	addi	a2,a2,-1864 # 4ae838b8 <__l2_shared_end+0x2ee738b8>
1c009c3a:	948a                	add	s1,s1,sp
1c009c3c:	c090                	sw	a2,0(s1)
1c009c3e:	8d040493          	addi	s1,s0,-1840
1c009c42:	a1918637          	lui	a2,0xa1918
1c009c46:	98860613          	addi	a2,a2,-1656 # a1917988 <__l2_shared_end+0x85907988>
1c009c4a:	948a                	add	s1,s1,sp
1c009c4c:	c090                	sw	a2,0(s1)
1c009c4e:	8d440493          	addi	s1,s0,-1836
1c009c52:	cc68d637          	lui	a2,0xcc68d
1c009c56:	86760613          	addi	a2,a2,-1945 # cc68c867 <__l2_shared_end+0xb067c867>
1c009c5a:	948a                	add	s1,s1,sp
1c009c5c:	c090                	sw	a2,0(s1)
1c009c5e:	8d840493          	addi	s1,s0,-1832
1c009c62:	3c6ba637          	lui	a2,0x3c6ba
1c009c66:	19b60613          	addi	a2,a2,411 # 3c6ba19b <__l2_shared_end+0x206aa19b>
1c009c6a:	948a                	add	s1,s1,sp
1c009c6c:	c090                	sw	a2,0(s1)
1c009c6e:	8dc40493          	addi	s1,s0,-1828
1c009c72:	e1b39637          	lui	a2,0xe1b39
1c009c76:	93160613          	addi	a2,a2,-1743 # e1b38931 <__l2_shared_end+0xc5b28931>
1c009c7a:	948a                	add	s1,s1,sp
1c009c7c:	c090                	sw	a2,0(s1)
1c009c7e:	8e040493          	addi	s1,s0,-1824
1c009c82:	64739637          	lui	a2,0x64739
1c009c86:	f9060613          	addi	a2,a2,-112 # 64738f90 <__l2_shared_end+0x48728f90>
1c009c8a:	948a                	add	s1,s1,sp
1c009c8c:	c090                	sw	a2,0(s1)
1c009c8e:	8e440493          	addi	s1,s0,-1820
1c009c92:	2a385637          	lui	a2,0x2a385
1c009c96:	f6060613          	addi	a2,a2,-160 # 2a384f60 <__l2_shared_end+0xe374f60>
1c009c9a:	948a                	add	s1,s1,sp
1c009c9c:	c090                	sw	a2,0(s1)
1c009c9e:	8e840493          	addi	s1,s0,-1816
1c009ca2:	c8851637          	lui	a2,0xc8851
1c009ca6:	a2a60613          	addi	a2,a2,-1494 # c8850a2a <__l2_shared_end+0xac840a2a>
1c009caa:	948a                	add	s1,s1,sp
1c009cac:	c090                	sw	a2,0(s1)
1c009cae:	8ec40493          	addi	s1,s0,-1812
1c009cb2:	1b984637          	lui	a2,0x1b984
1c009cb6:	1e360613          	addi	a2,a2,483 # 1b9841e3 <__CTOR_LIST__-0x67be21>
1c009cba:	948a                	add	s1,s1,sp
1c009cbc:	c090                	sw	a2,0(s1)
1c009cbe:	8f040493          	addi	s1,s0,-1808
1c009cc2:	3347f637          	lui	a2,0x3347f
1c009cc6:	c9f60613          	addi	a2,a2,-865 # 3347ec9f <__l2_shared_end+0x1746ec9f>
1c009cca:	948a                	add	s1,s1,sp
1c009ccc:	c090                	sw	a2,0(s1)
1c009cce:	8f440493          	addi	s1,s0,-1804
1c009cd2:	db1e3637          	lui	a2,0xdb1e3
1c009cd6:	a3060613          	addi	a2,a2,-1488 # db1e2a30 <__l2_shared_end+0xbf1d2a30>
1c009cda:	948a                	add	s1,s1,sp
1c009cdc:	c090                	sw	a2,0(s1)
1c009cde:	8f840493          	addi	s1,s0,-1800
1c009ce2:	3b9e7637          	lui	a2,0x3b9e7
1c009ce6:	14460613          	addi	a2,a2,324 # 3b9e7144 <__l2_shared_end+0x1f9d7144>
1c009cea:	948a                	add	s1,s1,sp
1c009cec:	c090                	sw	a2,0(s1)
1c009cee:	8fc40493          	addi	s1,s0,-1796
1c009cf2:	0b778637          	lui	a2,0xb778
1c009cf6:	b5360613          	addi	a2,a2,-1197 # b777b53 <__CTOR_LIST__-0x108884b1>
1c009cfa:	948a                	add	s1,s1,sp
1c009cfc:	c090                	sw	a2,0(s1)
1c009cfe:	90040493          	addi	s1,s0,-1792
1c009d02:	1e85d637          	lui	a2,0x1e85d
1c009d06:	43860613          	addi	a2,a2,1080 # 1e85d438 <__l2_shared_end+0x284d438>
1c009d0a:	948a                	add	s1,s1,sp
1c009d0c:	c090                	sw	a2,0(s1)
1c009d0e:	90440493          	addi	s1,s0,-1788
1c009d12:	a30d0637          	lui	a2,0xa30d0
1c009d16:	15c60613          	addi	a2,a2,348 # a30d015c <__l2_shared_end+0x870c015c>
1c009d1a:	948a                	add	s1,s1,sp
1c009d1c:	c090                	sw	a2,0(s1)
1c009d1e:	90840493          	addi	s1,s0,-1784
1c009d22:	bc707637          	lui	a2,0xbc707
1c009d26:	49a60613          	addi	a2,a2,1178 # bc70749a <__l2_shared_end+0xa06f749a>
1c009d2a:	948a                	add	s1,s1,sp
1c009d2c:	c090                	sw	a2,0(s1)
1c009d2e:	90c40493          	addi	s1,s0,-1780
1c009d32:	6f918637          	lui	a2,0x6f918
1c009d36:	0671                	addi	a2,a2,28
1c009d38:	948a                	add	s1,s1,sp
1c009d3a:	c090                	sw	a2,0(s1)
1c009d3c:	91040493          	addi	s1,s0,-1776
1c009d40:	58bdc637          	lui	a2,0x58bdc
1c009d44:	77860613          	addi	a2,a2,1912 # 58bdc778 <__l2_shared_end+0x3cbcc778>
1c009d48:	948a                	add	s1,s1,sp
1c009d4a:	c090                	sw	a2,0(s1)
1c009d4c:	91440493          	addi	s1,s0,-1772
1c009d50:	b1d3e637          	lui	a2,0xb1d3e
1c009d54:	c9160613          	addi	a2,a2,-879 # b1d3dc91 <__l2_shared_end+0x95d2dc91>
1c009d58:	948a                	add	s1,s1,sp
1c009d5a:	c090                	sw	a2,0(s1)
1c009d5c:	91840493          	addi	s1,s0,-1768
1c009d60:	f0b68637          	lui	a2,0xf0b68
1c009d64:	4ea60613          	addi	a2,a2,1258 # f0b684ea <__l2_shared_end+0xd4b584ea>
1c009d68:	948a                	add	s1,s1,sp
1c009d6a:	c090                	sw	a2,0(s1)
1c009d6c:	91c40493          	addi	s1,s0,-1764
1c009d70:	b846b637          	lui	a2,0xb846b
1c009d74:	35160613          	addi	a2,a2,849 # b846b351 <__l2_shared_end+0x9c45b351>
1c009d78:	948a                	add	s1,s1,sp
1c009d7a:	c090                	sw	a2,0(s1)
1c009d7c:	92040493          	addi	s1,s0,-1760
1c009d80:	7cb9c637          	lui	a2,0x7cb9c
1c009d84:	10360613          	addi	a2,a2,259 # 7cb9c103 <__l2_shared_end+0x60b8c103>
1c009d88:	948a                	add	s1,s1,sp
1c009d8a:	c090                	sw	a2,0(s1)
1c009d8c:	92440493          	addi	s1,s0,-1756
1c009d90:	20406637          	lui	a2,0x20406
1c009d94:	09460613          	addi	a2,a2,148 # 20406094 <__l2_shared_end+0x43f6094>
1c009d98:	948a                	add	s1,s1,sp
1c009d9a:	c090                	sw	a2,0(s1)
1c009d9c:	92840493          	addi	s1,s0,-1752
1c009da0:	279b2637          	lui	a2,0x279b2
1c009da4:	7b760613          	addi	a2,a2,1975 # 279b27b7 <__l2_shared_end+0xb9a27b7>
1c009da8:	948a                	add	s1,s1,sp
1c009daa:	c090                	sw	a2,0(s1)
1c009dac:	92c40493          	addi	s1,s0,-1748
1c009db0:	49307637          	lui	a2,0x49307
1c009db4:	c8360613          	addi	a2,a2,-893 # 49306c83 <__l2_shared_end+0x2d2f6c83>
1c009db8:	948a                	add	s1,s1,sp
1c009dba:	c090                	sw	a2,0(s1)
1c009dbc:	93040493          	addi	s1,s0,-1744
1c009dc0:	379a1637          	lui	a2,0x379a1
1c009dc4:	bea60613          	addi	a2,a2,-1046 # 379a0bea <__l2_shared_end+0x1b990bea>
1c009dc8:	948a                	add	s1,s1,sp
1c009dca:	c090                	sw	a2,0(s1)
1c009dcc:	93440493          	addi	s1,s0,-1740
1c009dd0:	750b5637          	lui	a2,0x750b5
1c009dd4:	15860613          	addi	a2,a2,344 # 750b5158 <__l2_shared_end+0x590a5158>
1c009dd8:	948a                	add	s1,s1,sp
1c009dda:	c090                	sw	a2,0(s1)
1c009ddc:	93840493          	addi	s1,s0,-1736
1c009de0:	37326637          	lui	a2,0x37326
1c009de4:	95960613          	addi	a2,a2,-1703 # 37325959 <__l2_shared_end+0x1b315959>
1c009de8:	948a                	add	s1,s1,sp
1c009dea:	c090                	sw	a2,0(s1)
1c009dec:	93c40493          	addi	s1,s0,-1732
1c009df0:	8725e637          	lui	a2,0x8725e
1c009df4:	7ad60613          	addi	a2,a2,1965 # 8725e7ad <__l2_shared_end+0x6b24e7ad>
1c009df8:	948a                	add	s1,s1,sp
1c009dfa:	c090                	sw	a2,0(s1)
1c009dfc:	94040493          	addi	s1,s0,-1728
1c009e00:	b7062637          	lui	a2,0xb7062
1c009e04:	24660613          	addi	a2,a2,582 # b7062246 <__l2_shared_end+0x9b052246>
1c009e08:	948a                	add	s1,s1,sp
1c009e0a:	c090                	sw	a2,0(s1)
1c009e0c:	94440493          	addi	s1,s0,-1724
1c009e10:	8465f637          	lui	a2,0x8465f
1c009e14:	30960613          	addi	a2,a2,777 # 8465f309 <__l2_shared_end+0x6864f309>
1c009e18:	948a                	add	s1,s1,sp
1c009e1a:	c090                	sw	a2,0(s1)
1c009e1c:	94840493          	addi	s1,s0,-1720
1c009e20:	93559637          	lui	a2,0x93559
1c009e24:	68c60613          	addi	a2,a2,1676 # 9355968c <__l2_shared_end+0x7754968c>
1c009e28:	948a                	add	s1,s1,sp
1c009e2a:	c090                	sw	a2,0(s1)
1c009e2c:	94c40493          	addi	s1,s0,-1716
1c009e30:	6cfea637          	lui	a2,0x6cfea
1c009e34:	52660613          	addi	a2,a2,1318 # 6cfea526 <__l2_shared_end+0x50fda526>
1c009e38:	948a                	add	s1,s1,sp
1c009e3a:	c090                	sw	a2,0(s1)
1c009e3c:	95040493          	addi	s1,s0,-1712
1c009e40:	31f55637          	lui	a2,0x31f55
1c009e44:	c6f60613          	addi	a2,a2,-913 # 31f54c6f <__l2_shared_end+0x15f44c6f>
1c009e48:	948a                	add	s1,s1,sp
1c009e4a:	c090                	sw	a2,0(s1)
1c009e4c:	95440493          	addi	s1,s0,-1708
1c009e50:	47182637          	lui	a2,0x47182
1c009e54:	afd60613          	addi	a2,a2,-1283 # 47181afd <__l2_shared_end+0x2b171afd>
1c009e58:	948a                	add	s1,s1,sp
1c009e5a:	c090                	sw	a2,0(s1)
1c009e5c:	de040713          	addi	a4,s0,-544
1c009e60:	8622                	mv	a2,s0
1c009e62:	95840413          	addi	s0,s0,-1704
1c009e66:	77268693          	addi	a3,a3,1906
1c009e6a:	940a                	add	s0,s0,sp
1c009e6c:	00d41023          	sh	a3,0(s0)
1c009e70:	95a60413          	addi	s0,a2,-1702
1c009e74:	56d9                	li	a3,-10
1c009e76:	940a                	add	s0,s0,sp
1c009e78:	00d40023          	sb	a3,0(s0)
1c009e7c:	95b60413          	addi	s0,a2,-1701
1c009e80:	06b00693          	li	a3,107
1c009e84:	940a                	add	s0,s0,sp
1c009e86:	00d40023          	sb	a3,0(s0)
1c009e8a:	95c60413          	addi	s0,a2,-1700
1c009e8e:	01f256b7          	lui	a3,0x1f25
1c009e92:	aa168693          	addi	a3,a3,-1375 # 1f24aa1 <__CTOR_LIST__-0x1a0db563>
1c009e96:	940a                	add	s0,s0,sp
1c009e98:	c014                	sw	a3,0(s0)
1c009e9a:	96060413          	addi	s0,a2,-1696
1c009e9e:	111fc6b7          	lui	a3,0x111fc
1c009ea2:	46368693          	addi	a3,a3,1123 # 111fc463 <__CTOR_LIST__-0xae03ba1>
1c009ea6:	940a                	add	s0,s0,sp
1c009ea8:	c014                	sw	a3,0(s0)
1c009eaa:	96460413          	addi	s0,a2,-1692
1c009eae:	9519a6b7          	lui	a3,0x9519a
1c009eb2:	03868693          	addi	a3,a3,56 # 9519a038 <__l2_shared_end+0x7918a038>
1c009eb6:	940a                	add	s0,s0,sp
1c009eb8:	c014                	sw	a3,0(s0)
1c009eba:	96860413          	addi	s0,a2,-1688
1c009ebe:	1d2786b7          	lui	a3,0x1d278
1c009ec2:	f1468693          	addi	a3,a3,-236 # 1d277f14 <__l2_shared_end+0x1267f14>
1c009ec6:	940a                	add	s0,s0,sp
1c009ec8:	c014                	sw	a3,0(s0)
1c009eca:	96c60413          	addi	s0,a2,-1684
1c009ece:	53bec6b7          	lui	a3,0x53bec
1c009ed2:	2df68693          	addi	a3,a3,735 # 53bec2df <__l2_shared_end+0x37bdc2df>
1c009ed6:	940a                	add	s0,s0,sp
1c009ed8:	c014                	sw	a3,0(s0)
1c009eda:	97060413          	addi	s0,a2,-1680
1c009ede:	e681b6b7          	lui	a3,0xe681b
1c009ee2:	26168693          	addi	a3,a3,609 # e681b261 <__l2_shared_end+0xca80b261>
1c009ee6:	940a                	add	s0,s0,sp
1c009ee8:	c014                	sw	a3,0(s0)
1c009eea:	97460413          	addi	s0,a2,-1676
1c009eee:	0521a6b7          	lui	a3,0x521a
1c009ef2:	d0268693          	addi	a3,a3,-766 # 5219d02 <__CTOR_LIST__-0x16de6302>
1c009ef6:	940a                	add	s0,s0,sp
1c009ef8:	c014                	sw	a3,0(s0)
1c009efa:	97860413          	addi	s0,a2,-1672
1c009efe:	9b85b6b7          	lui	a3,0x9b85b
1c009f02:	28468693          	addi	a3,a3,644 # 9b85b284 <__l2_shared_end+0x7f84b284>
1c009f06:	940a                	add	s0,s0,sp
1c009f08:	c014                	sw	a3,0(s0)
1c009f0a:	97c60413          	addi	s0,a2,-1668
1c009f0e:	726686b7          	lui	a3,0x72668
1c009f12:	37368693          	addi	a3,a3,883 # 72668373 <__l2_shared_end+0x56658373>
1c009f16:	940a                	add	s0,s0,sp
1c009f18:	c014                	sw	a3,0(s0)
1c009f1a:	98060413          	addi	s0,a2,-1664
1c009f1e:	bb67f6b7          	lui	a3,0xbb67f
1c009f22:	78468693          	addi	a3,a3,1924 # bb67f784 <__l2_shared_end+0x9f66f784>
1c009f26:	940a                	add	s0,s0,sp
1c009f28:	c014                	sw	a3,0(s0)
1c009f2a:	98460413          	addi	s0,a2,-1660
1c009f2e:	aa2b86b7          	lui	a3,0xaa2b8
1c009f32:	83268693          	addi	a3,a3,-1998 # aa2b7832 <__l2_shared_end+0x8e2a7832>
1c009f36:	940a                	add	s0,s0,sp
1c009f38:	c014                	sw	a3,0(s0)
1c009f3a:	98860413          	addi	s0,a2,-1656
1c009f3e:	da3316b7          	lui	a3,0xda331
1c009f42:	9d168693          	addi	a3,a3,-1583 # da3309d1 <__l2_shared_end+0xbe3209d1>
1c009f46:	940a                	add	s0,s0,sp
1c009f48:	c014                	sw	a3,0(s0)
1c009f4a:	98c60413          	addi	s0,a2,-1652
1c009f4e:	a0a346b7          	lui	a3,0xa0a34
1c009f52:	80168693          	addi	a3,a3,-2047 # a0a33801 <__l2_shared_end+0x84a23801>
1c009f56:	940a                	add	s0,s0,sp
1c009f58:	c014                	sw	a3,0(s0)
1c009f5a:	99060413          	addi	s0,a2,-1648
1c009f5e:	951416b7          	lui	a3,0x95141
1c009f62:	a6668693          	addi	a3,a3,-1434 # 95140a66 <__l2_shared_end+0x79130a66>
1c009f66:	940a                	add	s0,s0,sp
1c009f68:	c014                	sw	a3,0(s0)
1c009f6a:	99460413          	addi	s0,a2,-1644
1c009f6e:	9c3fc6b7          	lui	a3,0x9c3fc
1c009f72:	03168693          	addi	a3,a3,49 # 9c3fc031 <__l2_shared_end+0x803ec031>
1c009f76:	940a                	add	s0,s0,sp
1c009f78:	c014                	sw	a3,0(s0)
1c009f7a:	99860413          	addi	s0,a2,-1640
1c009f7e:	33cc06b7          	lui	a3,0x33cc0
1c009f82:	c8f68693          	addi	a3,a3,-881 # 33cbfc8f <__l2_shared_end+0x17cafc8f>
1c009f86:	940a                	add	s0,s0,sp
1c009f88:	c014                	sw	a3,0(s0)
1c009f8a:	99c60413          	addi	s0,a2,-1636
1c009f8e:	a7a5c6b7          	lui	a3,0xa7a5c
1c009f92:	3e368693          	addi	a3,a3,995 # a7a5c3e3 <__l2_shared_end+0x8ba4c3e3>
1c009f96:	940a                	add	s0,s0,sp
1c009f98:	c014                	sw	a3,0(s0)
1c009f9a:	9a060413          	addi	s0,a2,-1632
1c009f9e:	fa2156b7          	lui	a3,0xfa215
1c009fa2:	e9868693          	addi	a3,a3,-360 # fa214e98 <__l2_shared_end+0xde204e98>
1c009fa6:	940a                	add	s0,s0,sp
1c009fa8:	c014                	sw	a3,0(s0)
1c009faa:	9a460413          	addi	s0,a2,-1628
1c009fae:	2aa776b7          	lui	a3,0x2aa77
1c009fb2:	ab268693          	addi	a3,a3,-1358 # 2aa76ab2 <__l2_shared_end+0xea66ab2>
1c009fb6:	940a                	add	s0,s0,sp
1c009fb8:	c014                	sw	a3,0(s0)
1c009fba:	9a860413          	addi	s0,a2,-1624
1c009fbe:	2f9476b7          	lui	a3,0x2f947
1c009fc2:	b8a68693          	addi	a3,a3,-1142 # 2f946b8a <__l2_shared_end+0x13936b8a>
1c009fc6:	940a                	add	s0,s0,sp
1c009fc8:	c014                	sw	a3,0(s0)
1c009fca:	9ac60413          	addi	s0,a2,-1620
1c009fce:	555266b7          	lui	a3,0x55526
1c009fd2:	e2668693          	addi	a3,a3,-474 # 55525e26 <__l2_shared_end+0x39515e26>
1c009fd6:	940a                	add	s0,s0,sp
1c009fd8:	c014                	sw	a3,0(s0)
1c009fda:	9b060413          	addi	s0,a2,-1616
1c009fde:	0e80a6b7          	lui	a3,0xe80a
1c009fe2:	c1a68693          	addi	a3,a3,-998 # e809c1a <__CTOR_LIST__-0xd7f63ea>
1c009fe6:	940a                	add	s0,s0,sp
1c009fe8:	c014                	sw	a3,0(s0)
1c009fea:	9b460413          	addi	s0,a2,-1612
1c009fee:	5f8046b7          	lui	a3,0x5f804
1c009ff2:	45a68693          	addi	a3,a3,1114 # 5f80445a <__l2_shared_end+0x437f445a>
1c009ff6:	940a                	add	s0,s0,sp
1c009ff8:	c014                	sw	a3,0(s0)
1c009ffa:	9b860413          	addi	s0,a2,-1608
1c009ffe:	a04106b7          	lui	a3,0xa0410
1c00a002:	10c68693          	addi	a3,a3,268 # a041010c <__l2_shared_end+0x8440010c>
1c00a006:	940a                	add	s0,s0,sp
1c00a008:	c014                	sw	a3,0(s0)
1c00a00a:	9bc60413          	addi	s0,a2,-1604
1c00a00e:	332156b7          	lui	a3,0x33215
1c00a012:	45568693          	addi	a3,a3,1109 # 33215455 <__l2_shared_end+0x17205455>
1c00a016:	940a                	add	s0,s0,sp
1c00a018:	c014                	sw	a3,0(s0)
1c00a01a:	9c060413          	addi	s0,a2,-1600
1c00a01e:	df05f6b7          	lui	a3,0xdf05f
1c00a022:	18768693          	addi	a3,a3,391 # df05f187 <__l2_shared_end+0xc304f187>
1c00a026:	940a                	add	s0,s0,sp
1c00a028:	c014                	sw	a3,0(s0)
1c00a02a:	9c460413          	addi	s0,a2,-1596
1c00a02e:	968446b7          	lui	a3,0x96844
1c00a032:	55668693          	addi	a3,a3,1366 # 96844556 <__l2_shared_end+0x7a834556>
1c00a036:	940a                	add	s0,s0,sp
1c00a038:	c014                	sw	a3,0(s0)
1c00a03a:	9c860413          	addi	s0,a2,-1592
1c00a03e:	904696b7          	lui	a3,0x90469
1c00a042:	fbd68693          	addi	a3,a3,-67 # 90468fbd <__l2_shared_end+0x74458fbd>
1c00a046:	940a                	add	s0,s0,sp
1c00a048:	c014                	sw	a3,0(s0)
1c00a04a:	9cc60413          	addi	s0,a2,-1588
1c00a04e:	a26d96b7          	lui	a3,0xa26d9
1c00a052:	85168693          	addi	a3,a3,-1967 # a26d8851 <__l2_shared_end+0x866c8851>
1c00a056:	940a                	add	s0,s0,sp
1c00a058:	c014                	sw	a3,0(s0)
1c00a05a:	9d060413          	addi	s0,a2,-1584
1c00a05e:	e79fd6b7          	lui	a3,0xe79fd
1c00a062:	b2368693          	addi	a3,a3,-1245 # e79fcb23 <__l2_shared_end+0xcb9ecb23>
1c00a066:	940a                	add	s0,s0,sp
1c00a068:	c014                	sw	a3,0(s0)
1c00a06a:	9d460413          	addi	s0,a2,-1580
1c00a06e:	0b3986b7          	lui	a3,0xb398
1c00a072:	b8e68693          	addi	a3,a3,-1138 # b397b8e <__CTOR_LIST__-0x10c68476>
1c00a076:	940a                	add	s0,s0,sp
1c00a078:	c014                	sw	a3,0(s0)
1c00a07a:	9d860413          	addi	s0,a2,-1576
1c00a07e:	930a56b7          	lui	a3,0x930a5
1c00a082:	bf968693          	addi	a3,a3,-1031 # 930a4bf9 <__l2_shared_end+0x77094bf9>
1c00a086:	940a                	add	s0,s0,sp
1c00a088:	c014                	sw	a3,0(s0)
1c00a08a:	9dc60413          	addi	s0,a2,-1572
1c00a08e:	95af96b7          	lui	a3,0x95af9
1c00a092:	17668693          	addi	a3,a3,374 # 95af9176 <__l2_shared_end+0x79ae9176>
1c00a096:	940a                	add	s0,s0,sp
1c00a098:	c014                	sw	a3,0(s0)
1c00a09a:	9e060413          	addi	s0,a2,-1568
1c00a09e:	762b16b7          	lui	a3,0x762b1
1c00a0a2:	85068693          	addi	a3,a3,-1968 # 762b0850 <__l2_shared_end+0x5a2a0850>
1c00a0a6:	940a                	add	s0,s0,sp
1c00a0a8:	c014                	sw	a3,0(s0)
1c00a0aa:	9e460413          	addi	s0,a2,-1564
1c00a0ae:	4dcb46b7          	lui	a3,0x4dcb4
1c00a0b2:	5d068693          	addi	a3,a3,1488 # 4dcb45d0 <__l2_shared_end+0x31ca45d0>
1c00a0b6:	940a                	add	s0,s0,sp
1c00a0b8:	c014                	sw	a3,0(s0)
1c00a0ba:	9e860413          	addi	s0,a2,-1560
1c00a0be:	673cc6b7          	lui	a3,0x673cc
1c00a0c2:	22968693          	addi	a3,a3,553 # 673cc229 <__l2_shared_end+0x4b3bc229>
1c00a0c6:	940a                	add	s0,s0,sp
1c00a0c8:	c014                	sw	a3,0(s0)
1c00a0ca:	9ec60413          	addi	s0,a2,-1556
1c00a0ce:	d00826b7          	lui	a3,0xd0082
1c00a0d2:	69468693          	addi	a3,a3,1684 # d0082694 <__l2_shared_end+0xb4072694>
1c00a0d6:	940a                	add	s0,s0,sp
1c00a0d8:	c014                	sw	a3,0(s0)
1c00a0da:	9f060413          	addi	s0,a2,-1552
1c00a0de:	0fc8a6b7          	lui	a3,0xfc8a
1c00a0e2:	17868693          	addi	a3,a3,376 # fc8a178 <__CTOR_LIST__-0xc375e8c>
1c00a0e6:	940a                	add	s0,s0,sp
1c00a0e8:	c014                	sw	a3,0(s0)
1c00a0ea:	9f460413          	addi	s0,a2,-1548
1c00a0ee:	947a76b7          	lui	a3,0x947a7
1c00a0f2:	62468693          	addi	a3,a3,1572 # 947a7624 <__l2_shared_end+0x78797624>
1c00a0f6:	940a                	add	s0,s0,sp
1c00a0f8:	c014                	sw	a3,0(s0)
1c00a0fa:	9f860413          	addi	s0,a2,-1544
1c00a0fe:	77f026b7          	lui	a3,0x77f02
1c00a102:	95d68693          	addi	a3,a3,-1699 # 77f0195d <__l2_shared_end+0x5bef195d>
1c00a106:	940a                	add	s0,s0,sp
1c00a108:	c014                	sw	a3,0(s0)
1c00a10a:	9fc60413          	addi	s0,a2,-1540
1c00a10e:	9b9b36b7          	lui	a3,0x9b9b3
1c00a112:	cd868693          	addi	a3,a3,-808 # 9b9b2cd8 <__l2_shared_end+0x7f9a2cd8>
1c00a116:	940a                	add	s0,s0,sp
1c00a118:	c014                	sw	a3,0(s0)
1c00a11a:	a0060413          	addi	s0,a2,-1536
1c00a11e:	467376b7          	lui	a3,0x46737
1c00a122:	06e5                	addi	a3,a3,25
1c00a124:	940a                	add	s0,s0,sp
1c00a126:	c014                	sw	a3,0(s0)
1c00a128:	a0460413          	addi	s0,a2,-1532
1c00a12c:	cf69c6b7          	lui	a3,0xcf69c
1c00a130:	e4a68693          	addi	a3,a3,-438 # cf69be4a <__l2_shared_end+0xb368be4a>
1c00a134:	940a                	add	s0,s0,sp
1c00a136:	c014                	sw	a3,0(s0)
1c00a138:	a0860413          	addi	s0,a2,-1528
1c00a13c:	172656b7          	lui	a3,0x17265
1c00a140:	67c68693          	addi	a3,a3,1660 # 1726567c <__CTOR_LIST__-0x4d9a988>
1c00a144:	940a                	add	s0,s0,sp
1c00a146:	c014                	sw	a3,0(s0)
1c00a148:	a0c60413          	addi	s0,a2,-1524
1c00a14c:	84f316b7          	lui	a3,0x84f31
1c00a150:	87368693          	addi	a3,a3,-1933 # 84f30873 <__l2_shared_end+0x68f20873>
1c00a154:	940a                	add	s0,s0,sp
1c00a156:	c014                	sw	a3,0(s0)
1c00a158:	a1060413          	addi	s0,a2,-1520
1c00a15c:	635236b7          	lui	a3,0x63523
1c00a160:	d6768693          	addi	a3,a3,-665 # 63522d67 <__l2_shared_end+0x47512d67>
1c00a164:	940a                	add	s0,s0,sp
1c00a166:	c014                	sw	a3,0(s0)
1c00a168:	a1460413          	addi	s0,a2,-1516
1c00a16c:	6d82c6b7          	lui	a3,0x6d82c
1c00a170:	4b068693          	addi	a3,a3,1200 # 6d82c4b0 <__l2_shared_end+0x5181c4b0>
1c00a174:	940a                	add	s0,s0,sp
1c00a176:	c014                	sw	a3,0(s0)
1c00a178:	a1860413          	addi	s0,a2,-1512
1c00a17c:	1a0e46b7          	lui	a3,0x1a0e4
1c00a180:	7b468693          	addi	a3,a3,1972 # 1a0e47b4 <__CTOR_LIST__-0x1f1b850>
1c00a184:	940a                	add	s0,s0,sp
1c00a186:	c014                	sw	a3,0(s0)
1c00a188:	a1c60413          	addi	s0,a2,-1508
1c00a18c:	1e75e6b7          	lui	a3,0x1e75e
1c00a190:	47068693          	addi	a3,a3,1136 # 1e75e470 <__l2_shared_end+0x274e470>
1c00a194:	940a                	add	s0,s0,sp
1c00a196:	c014                	sw	a3,0(s0)
1c00a198:	a2060413          	addi	s0,a2,-1504
1c00a19c:	e8ab26b7          	lui	a3,0xe8ab2
1c00a1a0:	83968693          	addi	a3,a3,-1991 # e8ab1839 <__l2_shared_end+0xccaa1839>
1c00a1a4:	940a                	add	s0,s0,sp
1c00a1a6:	c014                	sw	a3,0(s0)
1c00a1a8:	a2460413          	addi	s0,a2,-1500
1c00a1ac:	c03bc6b7          	lui	a3,0xc03bc
1c00a1b0:	cfc68693          	addi	a3,a3,-772 # c03bbcfc <__l2_shared_end+0xa43abcfc>
1c00a1b4:	940a                	add	s0,s0,sp
1c00a1b6:	c014                	sw	a3,0(s0)
1c00a1b8:	a2860413          	addi	s0,a2,-1496
1c00a1bc:	9ee826b7          	lui	a3,0x9ee82
1c00a1c0:	a5368693          	addi	a3,a3,-1453 # 9ee81a53 <__l2_shared_end+0x82e71a53>
1c00a1c4:	940a                	add	s0,s0,sp
1c00a1c6:	c014                	sw	a3,0(s0)
1c00a1c8:	a2c60413          	addi	s0,a2,-1492
1c00a1cc:	4b2116b7          	lui	a3,0x4b211
1c00a1d0:	25568693          	addi	a3,a3,597 # 4b211255 <__l2_shared_end+0x2f201255>
1c00a1d4:	940a                	add	s0,s0,sp
1c00a1d6:	c014                	sw	a3,0(s0)
1c00a1d8:	a3060413          	addi	s0,a2,-1488
1c00a1dc:	164ad6b7          	lui	a3,0x164ad
1c00a1e0:	95c68693          	addi	a3,a3,-1700 # 164ac95c <__CTOR_LIST__-0x5b536a8>
1c00a1e4:	940a                	add	s0,s0,sp
1c00a1e6:	c014                	sw	a3,0(s0)
1c00a1e8:	a3460413          	addi	s0,a2,-1484
1c00a1ec:	b3bc16b7          	lui	a3,0xb3bc1
1c00a1f0:	4a068693          	addi	a3,a3,1184 # b3bc14a0 <__l2_shared_end+0x97bb14a0>
1c00a1f4:	940a                	add	s0,s0,sp
1c00a1f6:	c014                	sw	a3,0(s0)
1c00a1f8:	a3860413          	addi	s0,a2,-1480
1c00a1fc:	fb7976b7          	lui	a3,0xfb797
1c00a200:	c8268693          	addi	a3,a3,-894 # fb796c82 <__l2_shared_end+0xdf786c82>
1c00a204:	940a                	add	s0,s0,sp
1c00a206:	c014                	sw	a3,0(s0)
1c00a208:	a3c60413          	addi	s0,a2,-1476
1c00a20c:	82d0b6b7          	lui	a3,0x82d0b
1c00a210:	df468693          	addi	a3,a3,-524 # 82d0adf4 <__l2_shared_end+0x66cfadf4>
1c00a214:	940a                	add	s0,s0,sp
1c00a216:	c014                	sw	a3,0(s0)
1c00a218:	a4060413          	addi	s0,a2,-1472
1c00a21c:	abfbf6b7          	lui	a3,0xabfbf
1c00a220:	e5e68693          	addi	a3,a3,-418 # abfbee5e <__l2_shared_end+0x8ffaee5e>
1c00a224:	940a                	add	s0,s0,sp
1c00a226:	c014                	sw	a3,0(s0)
1c00a228:	a4460413          	addi	s0,a2,-1468
1c00a22c:	ff7cd6b7          	lui	a3,0xff7cd
1c00a230:	b8868693          	addi	a3,a3,-1144 # ff7ccb88 <__l2_shared_end+0xe37bcb88>
1c00a234:	940a                	add	s0,s0,sp
1c00a236:	c014                	sw	a3,0(s0)
1c00a238:	a4860413          	addi	s0,a2,-1464
1c00a23c:	498dc6b7          	lui	a3,0x498dc
1c00a240:	b3768693          	addi	a3,a3,-1225 # 498dbb37 <__l2_shared_end+0x2d8cbb37>
1c00a244:	940a                	add	s0,s0,sp
1c00a246:	c014                	sw	a3,0(s0)
1c00a248:	a4c60413          	addi	s0,a2,-1460
1c00a24c:	02e996b7          	lui	a3,0x2e99
1c00a250:	d1f68693          	addi	a3,a3,-737 # 2e98d1f <__CTOR_LIST__-0x191672e5>
1c00a254:	940a                	add	s0,s0,sp
1c00a256:	c014                	sw	a3,0(s0)
1c00a258:	86b2                	mv	a3,a2
1c00a25a:	a5060613          	addi	a2,a2,-1456
1c00a25e:	a5778793          	addi	a5,a5,-1449
1c00a262:	960a                	add	a2,a2,sp
1c00a264:	00f61023          	sh	a5,0(a2)
1c00a268:	a5268613          	addi	a2,a3,-1454
1c00a26c:	47f9                	li	a5,30
1c00a26e:	960a                	add	a2,a2,sp
1c00a270:	00f60023          	sb	a5,0(a2)
1c00a274:	a5368613          	addi	a2,a3,-1453
1c00a278:	f9600793          	li	a5,-106
1c00a27c:	960a                	add	a2,a2,sp
1c00a27e:	00f60023          	sb	a5,0(a2)
1c00a282:	a5468613          	addi	a2,a3,-1452
1c00a286:	5b5657b7          	lui	a5,0x5b565
1c00a28a:	51678793          	addi	a5,a5,1302 # 5b565516 <__l2_shared_end+0x3f555516>
1c00a28e:	960a                	add	a2,a2,sp
1c00a290:	c21c                	sw	a5,0(a2)
1c00a292:	a5868693          	addi	a3,a3,-1448
1c00a296:	2a7827b7          	lui	a5,0x2a782
1c00a29a:	87778793          	addi	a5,a5,-1929 # 2a781877 <__l2_shared_end+0xe771877>
1c00a29e:	968a                	add	a3,a3,sp
1c00a2a0:	c29c                	sw	a5,0(a3)
1c00a2a2:	dc4f57b7          	lui	a5,0xdc4f5
1c00a2a6:	970a                	add	a4,a4,sp
1c00a2a8:	02378793          	addi	a5,a5,35 # dc4f5023 <__l2_shared_end+0xc04e5023>
1c00a2ac:	c6f72e23          	sw	a5,-900(a4) # fffc7c <__CTOR_LIST__-0x1b000388>
1c00a2b0:	f183c7b7          	lui	a5,0xf183c
1c00a2b4:	71378793          	addi	a5,a5,1811 # f183c713 <__l2_shared_end+0xd582c713>
1c00a2b8:	c8f72023          	sw	a5,-896(a4)
1c00a2bc:	9277e7b7          	lui	a5,0x9277e
1c00a2c0:	13078793          	addi	a5,a5,304 # 9277e130 <__l2_shared_end+0x7676e130>
1c00a2c4:	c8f72223          	sw	a5,-892(a4)
1c00a2c8:	1f5d37b7          	lui	a5,0x1f5d3
1c00a2cc:	05e78793          	addi	a5,a5,94 # 1f5d305e <__l2_shared_end+0x35c305e>
1c00a2d0:	c8f72423          	sw	a5,-888(a4)
1c00a2d4:	8ccc67b7          	lui	a5,0x8ccc6
1c00a2d8:	3bc78793          	addi	a5,a5,956 # 8ccc63bc <__l2_shared_end+0x70cb63bc>
1c00a2dc:	c8f72623          	sw	a5,-884(a4)
1c00a2e0:	7fc6c7b7          	lui	a5,0x7fc6c
1c00a2e4:	21578793          	addi	a5,a5,533 # 7fc6c215 <__l2_shared_end+0x63c5c215>
1c00a2e8:	c8f72823          	sw	a5,-880(a4)
1c00a2ec:	ca0c57b7          	lui	a5,0xca0c5
1c00a2f0:	08578793          	addi	a5,a5,133 # ca0c5085 <__l2_shared_end+0xae0b5085>
1c00a2f4:	c8f72a23          	sw	a5,-876(a4)
1c00a2f8:	f4e967b7          	lui	a5,0xf4e96
1c00a2fc:	d7878793          	addi	a5,a5,-648 # f4e95d78 <__l2_shared_end+0xd8e85d78>
1c00a300:	c8f72c23          	sw	a5,-872(a4)
1c00a304:	580557b7          	lui	a5,0x58055
1c00a308:	98078793          	addi	a5,a5,-1664 # 58054980 <__l2_shared_end+0x3c044980>
1c00a30c:	c8f72e23          	sw	a5,-868(a4)
1c00a310:	f0aa77b7          	lui	a5,0xf0aa7
1c00a314:	1ef78793          	addi	a5,a5,495 # f0aa71ef <__l2_shared_end+0xd4a971ef>
1c00a318:	caf72023          	sw	a5,-864(a4)
1c00a31c:	395167b7          	lui	a5,0x39516
1c00a320:	bfb78793          	addi	a5,a5,-1029 # 39515bfb <__l2_shared_end+0x1d505bfb>
1c00a324:	caf72223          	sw	a5,-860(a4)
1c00a328:	691247b7          	lui	a5,0x69124
1c00a32c:	07d1                	addi	a5,a5,20
1c00a32e:	caf72423          	sw	a5,-856(a4)
1c00a332:	c5c417b7          	lui	a5,0xc5c41
1c00a336:	9b378793          	addi	a5,a5,-1613 # c5c409b3 <__l2_shared_end+0xa9c309b3>
1c00a33a:	caf72623          	sw	a5,-852(a4)
1c00a33e:	a7d267b7          	lui	a5,0xa7d26
1c00a342:	49c78793          	addi	a5,a5,1180 # a7d2649c <__l2_shared_end+0x8bd1649c>
1c00a346:	caf72823          	sw	a5,-848(a4)
1c00a34a:	5f85e7b7          	lui	a5,0x5f85e
1c00a34e:	85778793          	addi	a5,a5,-1961 # 5f85d857 <__l2_shared_end+0x4384d857>
1c00a352:	caf72a23          	sw	a5,-844(a4)
1c00a356:	155647b7          	lui	a5,0x15564
1c00a35a:	65878793          	addi	a5,a5,1624 # 15564658 <__CTOR_LIST__-0x6a9b9ac>
1c00a35e:	caf72c23          	sw	a5,-840(a4)
1c00a362:	a61e67b7          	lui	a5,0xa61e6
1c00a366:	f9278793          	addi	a5,a5,-110 # a61e5f92 <__l2_shared_end+0x8a1d5f92>
1c00a36a:	caf72e23          	sw	a5,-836(a4)
1c00a36e:	43b137b7          	lui	a5,0x43b13
1c00a372:	c8178793          	addi	a5,a5,-895 # 43b12c81 <__l2_shared_end+0x27b02c81>
1c00a376:	ccf72023          	sw	a5,-832(a4)
1c00a37a:	e183f7b7          	lui	a5,0xe183f
1c00a37e:	3ff78793          	addi	a5,a5,1023 # e183f3ff <__l2_shared_end+0xc582f3ff>
1c00a382:	ccf72223          	sw	a5,-828(a4)
1c00a386:	512897b7          	lui	a5,0x51289
1c00a38a:	e0478793          	addi	a5,a5,-508 # 51288e04 <__l2_shared_end+0x35278e04>
1c00a38e:	ccf72423          	sw	a5,-824(a4)
1c00a392:	2993c7b7          	lui	a5,0x2993c
1c00a396:	f1878793          	addi	a5,a5,-232 # 2993bf18 <__l2_shared_end+0xd92bf18>
1c00a39a:	ccf72623          	sw	a5,-820(a4)
1c00a39e:	bd6fc7b7          	lui	a5,0xbd6fc
1c00a3a2:	84478793          	addi	a5,a5,-1980 # bd6fb844 <__l2_shared_end+0xa16eb844>
1c00a3a6:	ccf72823          	sw	a5,-816(a4)
1c00a3aa:	e6b9b7b7          	lui	a5,0xe6b9b
1c00a3ae:	1f478793          	addi	a5,a5,500 # e6b9b1f4 <__l2_shared_end+0xcab8b1f4>
1c00a3b2:	ccf72a23          	sw	a5,-812(a4)
1c00a3b6:	4a6687b7          	lui	a5,0x4a668
1c00a3ba:	55678793          	addi	a5,a5,1366 # 4a668556 <__l2_shared_end+0x2e658556>
1c00a3be:	ccf72c23          	sw	a5,-808(a4)
1c00a3c2:	465c77b7          	lui	a5,0x465c7
1c00a3c6:	70778793          	addi	a5,a5,1799 # 465c7707 <__l2_shared_end+0x2a5b7707>
1c00a3ca:	ccf72e23          	sw	a5,-804(a4)
1c00a3ce:	daaa37b7          	lui	a5,0xdaaa3
1c00a3d2:	a9578793          	addi	a5,a5,-1387 # daaa2a95 <__l2_shared_end+0xbea92a95>
1c00a3d6:	cef72023          	sw	a5,-800(a4)
1c00a3da:	4bf577b7          	lui	a5,0x4bf57
1c00a3de:	81178793          	addi	a5,a5,-2031 # 4bf56811 <__l2_shared_end+0x2ff46811>
1c00a3e2:	cef72223          	sw	a5,-796(a4)
1c00a3e6:	31a2c7b7          	lui	a5,0x31a2c
1c00a3ea:	74778793          	addi	a5,a5,1863 # 31a2c747 <__l2_shared_end+0x15a1c747>
1c00a3ee:	cef72423          	sw	a5,-792(a4)
1c00a3f2:	645c37b7          	lui	a5,0x645c3
1c00a3f6:	5e778793          	addi	a5,a5,1511 # 645c35e7 <__l2_shared_end+0x485b35e7>
1c00a3fa:	cef72623          	sw	a5,-788(a4)
1c00a3fe:	b56777b7          	lui	a5,0xb5677
1c00a402:	46378793          	addi	a5,a5,1123 # b5677463 <__l2_shared_end+0x99667463>
1c00a406:	cef72823          	sw	a5,-784(a4)
1c00a40a:	ab9cc7b7          	lui	a5,0xab9cc
1c00a40e:	0a378793          	addi	a5,a5,163 # ab9cc0a3 <__l2_shared_end+0x8f9bc0a3>
1c00a412:	cef72a23          	sw	a5,-780(a4)
1c00a416:	f535c7b7          	lui	a5,0xf535c
1c00a41a:	b6778793          	addi	a5,a5,-1177 # f535bb67 <__l2_shared_end+0xd934bb67>
1c00a41e:	cef72c23          	sw	a5,-776(a4)
1c00a422:	72c247b7          	lui	a5,0x72c24
1c00a426:	08678793          	addi	a5,a5,134 # 72c24086 <__l2_shared_end+0x56c14086>
1c00a42a:	cef72e23          	sw	a5,-772(a4)
1c00a42e:	63bb87b7          	lui	a5,0x63bb8
1c00a432:	36278793          	addi	a5,a5,866 # 63bb8362 <__l2_shared_end+0x47ba8362>
1c00a436:	d0f72023          	sw	a5,-768(a4)
1c00a43a:	f61517b7          	lui	a5,0xf6151
1c00a43e:	a5378793          	addi	a5,a5,-1453 # f6150a53 <__l2_shared_end+0xda140a53>
1c00a442:	d0f72223          	sw	a5,-764(a4)
1c00a446:	a848d7b7          	lui	a5,0xa848d
1c00a44a:	a6e78793          	addi	a5,a5,-1426 # a848ca6e <__l2_shared_end+0x8c47ca6e>
1c00a44e:	d0f72423          	sw	a5,-760(a4)
1c00a452:	a80cc7b7          	lui	a5,0xa80cc
1c00a456:	04078793          	addi	a5,a5,64 # a80cc040 <__l2_shared_end+0x8c0bc040>
1c00a45a:	d0f72623          	sw	a5,-756(a4)
1c00a45e:	3c2837b7          	lui	a5,0x3c283
1c00a462:	e8678793          	addi	a5,a5,-378 # 3c282e86 <__l2_shared_end+0x20272e86>
1c00a466:	d0f72823          	sw	a5,-752(a4)
1c00a46a:	41bbc7b7          	lui	a5,0x41bbc
1c00a46e:	f7378793          	addi	a5,a5,-141 # 41bbbf73 <__l2_shared_end+0x25babf73>
1c00a472:	d0f72a23          	sw	a5,-748(a4)
1c00a476:	b81537b7          	lui	a5,0xb8153
1c00a47a:	93a78793          	addi	a5,a5,-1734 # b815293a <__l2_shared_end+0x9c14293a>
1c00a47e:	d0f72c23          	sw	a5,-744(a4)
1c00a482:	049a17b7          	lui	a5,0x49a1
1c00a486:	5d178793          	addi	a5,a5,1489 # 49a15d1 <__CTOR_LIST__-0x1765ea33>
1c00a48a:	d0f72e23          	sw	a5,-740(a4)
1c00a48e:	9bc517b7          	lui	a5,0x9bc51
1c00a492:	23f78793          	addi	a5,a5,575 # 9bc5123f <__l2_shared_end+0x7fc4123f>
1c00a496:	d2f72023          	sw	a5,-736(a4)
1c00a49a:	488287b7          	lui	a5,0x48828
1c00a49e:	2fa78793          	addi	a5,a5,762 # 488282fa <__l2_shared_end+0x2c8182fa>
1c00a4a2:	d2f72223          	sw	a5,-732(a4)
1c00a4a6:	1076a7b7          	lui	a5,0x1076a
1c00a4aa:	b2478793          	addi	a5,a5,-1244 # 10769b24 <__CTOR_LIST__-0xb8964e0>
1c00a4ae:	d2f72423          	sw	a5,-728(a4)
1c00a4b2:	a161b7b7          	lui	a5,0xa161b
1c00a4b6:	a6f78793          	addi	a5,a5,-1425 # a161aa6f <__l2_shared_end+0x8560aa6f>
1c00a4ba:	d2f72623          	sw	a5,-724(a4)
1c00a4be:	0c28a7b7          	lui	a5,0xc28a
1c00a4c2:	02778793          	addi	a5,a5,39 # c28a027 <__CTOR_LIST__-0xfd75fdd>
1c00a4c6:	d2f72823          	sw	a5,-720(a4)
1c00a4ca:	e75067b7          	lui	a5,0xe7506
1c00a4ce:	35878793          	addi	a5,a5,856 # e7506358 <__l2_shared_end+0xcb4f6358>
1c00a4d2:	d2f72a23          	sw	a5,-716(a4)
1c00a4d6:	4cb737b7          	lui	a5,0x4cb73
1c00a4da:	ca478793          	addi	a5,a5,-860 # 4cb72ca4 <__l2_shared_end+0x30b62ca4>
1c00a4de:	d2f72c23          	sw	a5,-712(a4)
1c00a4e2:	d6aba7b7          	lui	a5,0xd6aba
1c00a4e6:	ca478793          	addi	a5,a5,-860 # d6ab9ca4 <__l2_shared_end+0xbaaa9ca4>
1c00a4ea:	d2f72e23          	sw	a5,-708(a4)
1c00a4ee:	c71e97b7          	lui	a5,0xc71e9
1c00a4f2:	90678793          	addi	a5,a5,-1786 # c71e8906 <__l2_shared_end+0xab1d8906>
1c00a4f6:	d4f72023          	sw	a5,-704(a4)
1c00a4fa:	af8497b7          	lui	a5,0xaf849
1c00a4fe:	ecb78793          	addi	a5,a5,-309 # af848ecb <__l2_shared_end+0x93838ecb>
1c00a502:	d4f72223          	sw	a5,-700(a4)
1c00a506:	142e57b7          	lui	a5,0x142e5
1c00a50a:	bfe78793          	addi	a5,a5,-1026 # 142e4bfe <__CTOR_LIST__-0x7d1b406>
1c00a50e:	d4f72423          	sw	a5,-696(a4)
1c00a512:	335817b7          	lui	a5,0x33581
1c00a516:	6c778793          	addi	a5,a5,1735 # 335816c7 <__l2_shared_end+0x175716c7>
1c00a51a:	d4f72623          	sw	a5,-692(a4)
1c00a51e:	115677b7          	lui	a5,0x11567
1c00a522:	52b78793          	addi	a5,a5,1323 # 1156752b <__CTOR_LIST__-0xaa98ad9>
1c00a526:	d4f72823          	sw	a5,-688(a4)
1c00a52a:	7f97b7b7          	lui	a5,0x7f97b
1c00a52e:	7ba78793          	addi	a5,a5,1978 # 7f97b7ba <__l2_shared_end+0x6396b7ba>
1c00a532:	d4f72a23          	sw	a5,-684(a4)
1c00a536:	36e777b7          	lui	a5,0x36e77
1c00a53a:	ca778793          	addi	a5,a5,-857 # 36e76ca7 <__l2_shared_end+0x1ae66ca7>
1c00a53e:	d4f72c23          	sw	a5,-680(a4)
1c00a542:	4ad327b7          	lui	a5,0x4ad32
1c00a546:	eb278793          	addi	a5,a5,-334 # 4ad31eb2 <__l2_shared_end+0x2ed21eb2>
1c00a54a:	d4f72e23          	sw	a5,-676(a4)
1c00a54e:	c30eb7b7          	lui	a5,0xc30eb
1c00a552:	c1778793          	addi	a5,a5,-1001 # c30eac17 <__l2_shared_end+0xa70dac17>
1c00a556:	d6f72023          	sw	a5,-672(a4)
1c00a55a:	b2a927b7          	lui	a5,0xb2a92
1c00a55e:	c5678793          	addi	a5,a5,-938 # b2a91c56 <__l2_shared_end+0x96a81c56>
1c00a562:	d6f72223          	sw	a5,-668(a4)
1c00a566:	77f5                	lui	a5,0xffffd
1c00a568:	48278793          	addi	a5,a5,1154 # ffffd482 <__l2_shared_end+0xe3fed482>
1c00a56c:	d6f71423          	sh	a5,-664(a4)
1c00a570:	fa200793          	li	a5,-94
1c00a574:	d6f70523          	sb	a5,-662(a4)
1c00a578:	fbc00793          	li	a5,-68
1c00a57c:	d6f705a3          	sb	a5,-661(a4)
1c00a580:	929777b7          	lui	a5,0x92977
1c00a584:	64078793          	addi	a5,a5,1600 # 92977640 <__l2_shared_end+0x76967640>
1c00a588:	d6f72623          	sw	a5,-660(a4)
1c00a58c:	18f927b7          	lui	a5,0x18f92
1c00a590:	c4b78793          	addi	a5,a5,-949 # 18f91c4b <__CTOR_LIST__-0x306e3b9>
1c00a594:	d6f72823          	sw	a5,-656(a4)
1c00a598:	a4d387b7          	lui	a5,0xa4d38
1c00a59c:	3ba78793          	addi	a5,a5,954 # a4d383ba <__l2_shared_end+0x88d283ba>
1c00a5a0:	d6f72a23          	sw	a5,-652(a4)
1c00a5a4:	6425d7b7          	lui	a5,0x6425d
1c00a5a8:	8fd78793          	addi	a5,a5,-1795 # 6425c8fd <__l2_shared_end+0x4824c8fd>
1c00a5ac:	d6f72c23          	sw	a5,-648(a4)
1c00a5b0:	04d967b7          	lui	a5,0x4d96
1c00a5b4:	bc978793          	addi	a5,a5,-1079 # 4d95bc9 <__CTOR_LIST__-0x1726a43b>
1c00a5b8:	d6f72e23          	sw	a5,-644(a4)
1c00a5bc:	1ee9f7b7          	lui	a5,0x1ee9f
1c00a5c0:	ebd78793          	addi	a5,a5,-323 # 1ee9eebd <__l2_shared_end+0x2e8eebd>
1c00a5c4:	d8f72023          	sw	a5,-640(a4)
1c00a5c8:	6bb3d7b7          	lui	a5,0x6bb3d
1c00a5cc:	cd678793          	addi	a5,a5,-810 # 6bb3ccd6 <__l2_shared_end+0x4fb2ccd6>
1c00a5d0:	d8f72223          	sw	a5,-636(a4)
1c00a5d4:	5ca097b7          	lui	a5,0x5ca09
1c00a5d8:	8aa78793          	addi	a5,a5,-1878 # 5ca088aa <__l2_shared_end+0x409f88aa>
1c00a5dc:	d8f72423          	sw	a5,-632(a4)
1c00a5e0:	012977b7          	lui	a5,0x1297
1c00a5e4:	18078793          	addi	a5,a5,384 # 1297180 <__CTOR_LIST__-0x1ad68e84>
1c00a5e8:	d8f72623          	sw	a5,-628(a4)
1c00a5ec:	ee0a37b7          	lui	a5,0xee0a3
1c00a5f0:	8bf78793          	addi	a5,a5,-1857 # ee0a28bf <__l2_shared_end+0xd20928bf>
1c00a5f4:	d8f72823          	sw	a5,-624(a4)
1c00a5f8:	20ec47b7          	lui	a5,0x20ec4
1c00a5fc:	86578793          	addi	a5,a5,-1947 # 20ec3865 <__l2_shared_end+0x4eb3865>
1c00a600:	d8f72a23          	sw	a5,-620(a4)
1c00a604:	4ea8c7b7          	lui	a5,0x4ea8c
1c00a608:	27878793          	addi	a5,a5,632 # 4ea8c278 <__l2_shared_end+0x32a7c278>
1c00a60c:	d8f72c23          	sw	a5,-616(a4)
1c00a610:	c12f87b7          	lui	a5,0xc12f8
1c00a614:	6e578793          	addi	a5,a5,1765 # c12f86e5 <__l2_shared_end+0xa52e86e5>
1c00a618:	d8f72e23          	sw	a5,-612(a4)
1c00a61c:	e992d7b7          	lui	a5,0xe992d
1c00a620:	d3778793          	addi	a5,a5,-713 # e992cd37 <__l2_shared_end+0xcd91cd37>
1c00a624:	daf72023          	sw	a5,-608(a4)
1c00a628:	9fd677b7          	lui	a5,0x9fd67
1c00a62c:	87978793          	addi	a5,a5,-1927 # 9fd66879 <__l2_shared_end+0x83d56879>
1c00a630:	daf72223          	sw	a5,-604(a4)
1c00a634:	1e3a47b7          	lui	a5,0x1e3a4
1c00a638:	5c378793          	addi	a5,a5,1475 # 1e3a45c3 <__l2_shared_end+0x23945c3>
1c00a63c:	daf72423          	sw	a5,-600(a4)
1c00a640:	c561b7b7          	lui	a5,0xc561b
1c00a644:	11c78793          	addi	a5,a5,284 # c561b11c <__l2_shared_end+0xa960b11c>
1c00a648:	daf72623          	sw	a5,-596(a4)
1c00a64c:	7324a7b7          	lui	a5,0x7324a
1c00a650:	f0c78793          	addi	a5,a5,-244 # 73249f0c <__l2_shared_end+0x57239f0c>
1c00a654:	daf72823          	sw	a5,-592(a4)
1c00a658:	3790d7b7          	lui	a5,0x3790d
1c00a65c:	0a078793          	addi	a5,a5,160 # 3790d0a0 <__l2_shared_end+0x1b8fd0a0>
1c00a660:	daf72a23          	sw	a5,-588(a4)
1c00a664:	faa097b7          	lui	a5,0xfaa09
1c00a668:	8b178793          	addi	a5,a5,-1871 # faa088b1 <__l2_shared_end+0xde9f88b1>
1c00a66c:	daf72c23          	sw	a5,-584(a4)
1c00a670:	44c3f7b7          	lui	a5,0x44c3f
1c00a674:	f0178793          	addi	a5,a5,-255 # 44c3ef01 <__l2_shared_end+0x28c2ef01>
1c00a678:	daf72e23          	sw	a5,-580(a4)
1c00a67c:	e88fb7b7          	lui	a5,0xe88fb
1c00a680:	cc278793          	addi	a5,a5,-830 # e88facc2 <__l2_shared_end+0xcc8eacc2>
1c00a684:	dcf72023          	sw	a5,-576(a4)
1c00a688:	580a37b7          	lui	a5,0x580a3
1c00a68c:	b5978793          	addi	a5,a5,-1191 # 580a2b59 <__l2_shared_end+0x3c092b59>
1c00a690:	dcf72223          	sw	a5,-572(a4)
1c00a694:	a96267b7          	lui	a5,0xa9626
1c00a698:	64578793          	addi	a5,a5,1605 # a9626645 <__l2_shared_end+0x8d616645>
1c00a69c:	dcf72423          	sw	a5,-568(a4)
1c00a6a0:	9a6537b7          	lui	a5,0x9a653
1c00a6a4:	35078793          	addi	a5,a5,848 # 9a653350 <__l2_shared_end+0x7e643350>
1c00a6a8:	dcf72623          	sw	a5,-564(a4)
1c00a6ac:	902d97b7          	lui	a5,0x902d9
1c00a6b0:	a1578793          	addi	a5,a5,-1515 # 902d8a15 <__l2_shared_end+0x742c8a15>
1c00a6b4:	dcf72823          	sw	a5,-560(a4)
1c00a6b8:	250ce7b7          	lui	a5,0x250ce
1c00a6bc:	5a678793          	addi	a5,a5,1446 # 250ce5a6 <__l2_shared_end+0x90be5a6>
1c00a6c0:	dcf72a23          	sw	a5,-556(a4)
1c00a6c4:	579787b7          	lui	a5,0x57978
1c00a6c8:	73a78793          	addi	a5,a5,1850 # 5797873a <__l2_shared_end+0x3b96873a>
1c00a6cc:	dcf72c23          	sw	a5,-552(a4)
1c00a6d0:	c429d7b7          	lui	a5,0xc429d
1c00a6d4:	e8578793          	addi	a5,a5,-379 # c429ce85 <__l2_shared_end+0xa828ce85>
1c00a6d8:	dcf72e23          	sw	a5,-548(a4)
1c00a6dc:	a10007b7          	lui	a5,0xa1000
1c00a6e0:	05778793          	addi	a5,a5,87 # a1000057 <__l2_shared_end+0x84ff0057>
1c00a6e4:	def72023          	sw	a5,-544(a4)
1c00a6e8:	b2b3d7b7          	lui	a5,0xb2b3d
1c00a6ec:	45478793          	addi	a5,a5,1108 # b2b3d454 <__l2_shared_end+0x96b2d454>
1c00a6f0:	def72223          	sw	a5,-540(a4)
1c00a6f4:	5c2047b7          	lui	a5,0x5c204
1c00a6f8:	2c678793          	addi	a5,a5,710 # 5c2042c6 <__l2_shared_end+0x401f42c6>
1c00a6fc:	def72423          	sw	a5,-536(a4)
1c00a700:	acf987b7          	lui	a5,0xacf98
1c00a704:	c8c78793          	addi	a5,a5,-884 # acf97c8c <__l2_shared_end+0x90f87c8c>
1c00a708:	def72623          	sw	a5,-532(a4)
1c00a70c:	fb7117b7          	lui	a5,0xfb711
1c00a710:	06b78793          	addi	a5,a5,107 # fb71106b <__l2_shared_end+0xdf70106b>
1c00a714:	def72823          	sw	a5,-528(a4)
1c00a718:	95ab77b7          	lui	a5,0x95ab7
1c00a71c:	8b378793          	addi	a5,a5,-1869 # 95ab68b3 <__l2_shared_end+0x79aa68b3>
1c00a720:	def72a23          	sw	a5,-524(a4)
1c00a724:	884b77b7          	lui	a5,0x884b7
1c00a728:	40a78793          	addi	a5,a5,1034 # 884b740a <__l2_shared_end+0x6c4a740a>
1c00a72c:	def72c23          	sw	a5,-520(a4)
1c00a730:	24a567b7          	lui	a5,0x24a56
1c00a734:	bc978793          	addi	a5,a5,-1079 # 24a55bc9 <__l2_shared_end+0x8a45bc9>
1c00a738:	def72e23          	sw	a5,-516(a4)
1c00a73c:	118317b7          	lui	a5,0x11831
1c00a740:	73078793          	addi	a5,a5,1840 # 11831730 <__CTOR_LIST__-0xa7ce8d4>
1c00a744:	e0f72023          	sw	a5,-512(a4)
1c00a748:	8304b7b7          	lui	a5,0x8304b
1c00a74c:	92078793          	addi	a5,a5,-1760 # 8304a920 <__l2_shared_end+0x6703a920>
1c00a750:	e0f72223          	sw	a5,-508(a4)
1c00a754:	4798d7b7          	lui	a5,0x4798d
1c00a758:	23878793          	addi	a5,a5,568 # 4798d238 <__l2_shared_end+0x2b97d238>
1c00a75c:	e0f72423          	sw	a5,-504(a4)
1c00a760:	a91217b7          	lui	a5,0xa9121
1c00a764:	d8378793          	addi	a5,a5,-637 # a9120d83 <__l2_shared_end+0x8d110d83>
1c00a768:	e0f72623          	sw	a5,-500(a4)
1c00a76c:	bd9aa7b7          	lui	a5,0xbd9aa
1c00a770:	03378793          	addi	a5,a5,51 # bd9aa033 <__l2_shared_end+0xa199a033>
1c00a774:	e0f72823          	sw	a5,-496(a4)
1c00a778:	826ba7b7          	lui	a5,0x826ba
1c00a77c:	42178793          	addi	a5,a5,1057 # 826ba421 <__l2_shared_end+0x666aa421>
1c00a780:	e0f72a23          	sw	a5,-492(a4)
1c00a784:	804eb7b7          	lui	a5,0x804eb
1c00a788:	18c78793          	addi	a5,a5,396 # 804eb18c <__l2_shared_end+0x644db18c>
1c00a78c:	e0f72c23          	sw	a5,-488(a4)
1c00a790:	2951d7b7          	lui	a5,0x2951d
1c00a794:	38c78793          	addi	a5,a5,908 # 2951d38c <__l2_shared_end+0xd50d38c>
1c00a798:	e0f72e23          	sw	a5,-484(a4)
1c00a79c:	5b6ee7b7          	lui	a5,0x5b6ee
1c00a7a0:	cc978793          	addi	a5,a5,-823 # 5b6edcc9 <__l2_shared_end+0x3f6ddcc9>
1c00a7a4:	e2f72023          	sw	a5,-480(a4)
1c00a7a8:	124a27b7          	lui	a5,0x124a2
1c00a7ac:	d9378793          	addi	a5,a5,-621 # 124a1d93 <__CTOR_LIST__-0x9b5e271>
1c00a7b0:	e2f72223          	sw	a5,-476(a4)
1c00a7b4:	79e0f7b7          	lui	a5,0x79e0f
1c00a7b8:	f6f78793          	addi	a5,a5,-145 # 79e0ef6f <__l2_shared_end+0x5ddfef6f>
1c00a7bc:	e2f72423          	sw	a5,-472(a4)
1c00a7c0:	2b8e67b7          	lui	a5,0x2b8e6
1c00a7c4:	10978793          	addi	a5,a5,265 # 2b8e6109 <__l2_shared_end+0xf8d6109>
1c00a7c8:	e2f72623          	sw	a5,-468(a4)
1c00a7cc:	b6e787b7          	lui	a5,0xb6e78
1c00a7d0:	64578793          	addi	a5,a5,1605 # b6e78645 <__l2_shared_end+0x9ae68645>
1c00a7d4:	e2f72823          	sw	a5,-464(a4)
1c00a7d8:	3b9627b7          	lui	a5,0x3b962
1c00a7dc:	4b478793          	addi	a5,a5,1204 # 3b9624b4 <__l2_shared_end+0x1f9524b4>
1c00a7e0:	e2f72a23          	sw	a5,-460(a4)
1c00a7e4:	50ba27b7          	lui	a5,0x50ba2
1c00a7e8:	37378793          	addi	a5,a5,883 # 50ba2373 <__l2_shared_end+0x34b92373>
1c00a7ec:	e2f72c23          	sw	a5,-456(a4)
1c00a7f0:	bb12a7b7          	lui	a5,0xbb12a
1c00a7f4:	15b78793          	addi	a5,a5,347 # bb12a15b <__l2_shared_end+0x9f11a15b>
1c00a7f8:	e2f72e23          	sw	a5,-452(a4)
1c00a7fc:	7d4a87b7          	lui	a5,0x7d4a8
1c00a800:	39b78793          	addi	a5,a5,923 # 7d4a839b <__l2_shared_end+0x6149839b>
1c00a804:	e4f72023          	sw	a5,-448(a4)
1c00a808:	0dad87b7          	lui	a5,0xdad8
1c00a80c:	81b78793          	addi	a5,a5,-2021 # dad781b <__CTOR_LIST__-0xe5287e9>
1c00a810:	e4f72223          	sw	a5,-444(a4)
1c00a814:	6a5547b7          	lui	a5,0x6a554
1c00a818:	df578793          	addi	a5,a5,-523 # 6a553df5 <__l2_shared_end+0x4e543df5>
1c00a81c:	e4f72423          	sw	a5,-440(a4)
1c00a820:	9f3677b7          	lui	a5,0x9f367
1c00a824:	91c78793          	addi	a5,a5,-1764 # 9f36691c <__l2_shared_end+0x8335691c>
1c00a828:	e4f72623          	sw	a5,-436(a4)
1c00a82c:	1d8b17b7          	lui	a5,0x1d8b1
1c00a830:	40978793          	addi	a5,a5,1033 # 1d8b1409 <__l2_shared_end+0x18a1409>
1c00a834:	e4f72823          	sw	a5,-432(a4)
1c00a838:	f58d97b7          	lui	a5,0xf58d9
1c00a83c:	3c978793          	addi	a5,a5,969 # f58d93c9 <__l2_shared_end+0xd98c93c9>
1c00a840:	e4f72a23          	sw	a5,-428(a4)
1c00a844:	87f027b7          	lui	a5,0x87f02
1c00a848:	39278793          	addi	a5,a5,914 # 87f02392 <__l2_shared_end+0x6bef2392>
1c00a84c:	e4f72c23          	sw	a5,-424(a4)
1c00a850:	be3377b7          	lui	a5,0xbe337
1c00a854:	8fd78793          	addi	a5,a5,-1795 # be3368fd <__l2_shared_end+0xa23268fd>
1c00a858:	e4f72e23          	sw	a5,-420(a4)
1c00a85c:	678d                	lui	a5,0x3
1c00a85e:	b5b78793          	addi	a5,a5,-1189 # 2b5b <__CTOR_LIST__-0x1bffd4a9>
1c00a862:	e6f71023          	sh	a5,-416(a4)
1c00a866:	fc200793          	li	a5,-62
1c00a86a:	e6f70123          	sb	a5,-414(a4)
1c00a86e:	06500793          	li	a5,101
1c00a872:	e6f701a3          	sb	a5,-413(a4)
1c00a876:	1189e7b7          	lui	a5,0x1189e
1c00a87a:	51f78793          	addi	a5,a5,1311 # 1189e51f <__CTOR_LIST__-0xa761ae5>
1c00a87e:	e6f72223          	sw	a5,-412(a4)
1c00a882:	7f4607b7          	lui	a5,0x7f460
1c00a886:	1ac78793          	addi	a5,a5,428 # 7f4601ac <__l2_shared_end+0x634501ac>
1c00a88a:	e6f72423          	sw	a5,-408(a4)
1c00a88e:	dcdf97b7          	lui	a5,0xdcdf9
1c00a892:	79278793          	addi	a5,a5,1938 # dcdf9792 <__l2_shared_end+0xc0de9792>
1c00a896:	e6f72623          	sw	a5,-404(a4)
1c00a89a:	0f1ab7b7          	lui	a5,0xf1ab
1c00a89e:	42278793          	addi	a5,a5,1058 # f1ab422 <__CTOR_LIST__-0xce54be2>
1c00a8a2:	e6f72823          	sw	a5,-400(a4)
1c00a8a6:	877107b7          	lui	a5,0x87710
1c00a8aa:	21778793          	addi	a5,a5,535 # 87710217 <__l2_shared_end+0x6b700217>
1c00a8ae:	e6f72a23          	sw	a5,-396(a4)
1c00a8b2:	f38cb7b7          	lui	a5,0xf38cb
1c00a8b6:	71078793          	addi	a5,a5,1808 # f38cb710 <__l2_shared_end+0xd78bb710>
1c00a8ba:	e6f72c23          	sw	a5,-392(a4)
1c00a8be:	816527b7          	lui	a5,0x81652
1c00a8c2:	85b78793          	addi	a5,a5,-1957 # 8165185b <__l2_shared_end+0x6564185b>
1c00a8c6:	e6f72e23          	sw	a5,-388(a4)
1c00a8ca:	456d97b7          	lui	a5,0x456d9
1c00a8ce:	93a78793          	addi	a5,a5,-1734 # 456d893a <__l2_shared_end+0x296c893a>
1c00a8d2:	e8f72023          	sw	a5,-384(a4)
1c00a8d6:	813357b7          	lui	a5,0x81335
1c00a8da:	d2178793          	addi	a5,a5,-735 # 81334d21 <__l2_shared_end+0x65324d21>
1c00a8de:	e8f72223          	sw	a5,-380(a4)
1c00a8e2:	43c0b7b7          	lui	a5,0x43c0b
1c00a8e6:	65578793          	addi	a5,a5,1621 # 43c0b655 <__l2_shared_end+0x27bfb655>
1c00a8ea:	e8f72423          	sw	a5,-376(a4)
1c00a8ee:	0c3337b7          	lui	a5,0xc333
1c00a8f2:	2c578793          	addi	a5,a5,709 # c3332c5 <__CTOR_LIST__-0xfcccd3f>
1c00a8f6:	e8f72623          	sw	a5,-372(a4)
1c00a8fa:	075237b7          	lui	a5,0x7523
1c00a8fe:	d0078793          	addi	a5,a5,-768 # 7522d00 <__CTOR_LIST__-0x14add304>
1c00a902:	e8f72823          	sw	a5,-368(a4)
1c00a906:	507a47b7          	lui	a5,0x507a4
1c00a90a:	63978793          	addi	a5,a5,1593 # 507a4639 <__l2_shared_end+0x34794639>
1c00a90e:	e8f72a23          	sw	a5,-364(a4)
1c00a912:	376687b7          	lui	a5,0x37668
1c00a916:	64a78793          	addi	a5,a5,1610 # 3766864a <__l2_shared_end+0x1b65864a>
1c00a91a:	e8f72c23          	sw	a5,-360(a4)
1c00a91e:	c85137b7          	lui	a5,0xc8513
1c00a922:	4fb78793          	addi	a5,a5,1275 # c85134fb <__l2_shared_end+0xac5034fb>
1c00a926:	e8f72e23          	sw	a5,-356(a4)
1c00a92a:	3ef907b7          	lui	a5,0x3ef90
1c00a92e:	84978793          	addi	a5,a5,-1975 # 3ef8f849 <__l2_shared_end+0x22f7f849>
1c00a932:	eaf72023          	sw	a5,-352(a4)
1c00a936:	7f1497b7          	lui	a5,0x7f149
1c00a93a:	46a78793          	addi	a5,a5,1130 # 7f14946a <__l2_shared_end+0x6313946a>
1c00a93e:	eaf72223          	sw	a5,-348(a4)
1c00a942:	3aa597b7          	lui	a5,0x3aa59
1c00a946:	d1678793          	addi	a5,a5,-746 # 3aa58d16 <__l2_shared_end+0x1ea48d16>
1c00a94a:	eaf72423          	sw	a5,-344(a4)
1c00a94e:	afd907b7          	lui	a5,0xafd90
1c00a952:	9cd78793          	addi	a5,a5,-1587 # afd8f9cd <__l2_shared_end+0x93d7f9cd>
1c00a956:	eaf72623          	sw	a5,-340(a4)
1c00a95a:	848a97b7          	lui	a5,0x848a9
1c00a95e:	6fd78793          	addi	a5,a5,1789 # 848a96fd <__l2_shared_end+0x688996fd>
1c00a962:	eaf72823          	sw	a5,-336(a4)
1c00a966:	bc9a57b7          	lui	a5,0xbc9a5
1c00a96a:	a1278793          	addi	a5,a5,-1518 # bc9a4a12 <__l2_shared_end+0xa0994a12>
1c00a96e:	eaf72a23          	sw	a5,-332(a4)
1c00a972:	0c96b7b7          	lui	a5,0xc96b
1c00a976:	f0978793          	addi	a5,a5,-247 # c96af09 <__CTOR_LIST__-0xf6950fb>
1c00a97a:	eaf72c23          	sw	a5,-328(a4)
1c00a97e:	239fb7b7          	lui	a5,0x239fb
1c00a982:	2d378793          	addi	a5,a5,723 # 239fb2d3 <__l2_shared_end+0x79eb2d3>
1c00a986:	eaf72e23          	sw	a5,-324(a4)
1c00a98a:	de010693          	addi	a3,sp,-544
1c00a98e:	6785                	lui	a5,0x1
1c00a990:	97b6                	add	a5,a5,a3
1c00a992:	b41b86b7          	lui	a3,0xb41b8
1c00a996:	34468693          	addi	a3,a3,836 # b41b8344 <__l2_shared_end+0x981a8344>
1c00a99a:	ecd72023          	sw	a3,-320(a4)
1c00a99e:	5e6066b7          	lui	a3,0x5e606
1c00a9a2:	71e68693          	addi	a3,a3,1822 # 5e60671e <__l2_shared_end+0x425f671e>
1c00a9a6:	ecd72223          	sw	a3,-316(a4)
1c00a9aa:	f20df6b7          	lui	a3,0xf20df
1c00a9ae:	0eb68693          	addi	a3,a3,235 # f20df0eb <__l2_shared_end+0xd60cf0eb>
1c00a9b2:	ecd72423          	sw	a3,-312(a4)
1c00a9b6:	177186b7          	lui	a3,0x17718
1c00a9ba:	50268693          	addi	a3,a3,1282 # 17718502 <__CTOR_LIST__-0x48e7b02>
1c00a9be:	ecd7a623          	sw	a3,-308(a5) # ecc <__CTOR_LIST__-0x1bfff138>
1c00a9c2:	48d7a7b7          	lui	a5,0x48d7a
1c00a9c6:	d3978793          	addi	a5,a5,-711 # 48d79d39 <__l2_shared_end+0x2cd69d39>
1c00a9ca:	ecf72823          	sw	a5,-304(a4)
1c00a9ce:	ed4a57b7          	lui	a5,0xed4a5
1c00a9d2:	1b678793          	addi	a5,a5,438 # ed4a51b6 <__l2_shared_end+0xd14951b6>
1c00a9d6:	ecf72a23          	sw	a5,-300(a4)
1c00a9da:	6c2fc7b7          	lui	a5,0x6c2fc
1c00a9de:	b6178793          	addi	a5,a5,-1183 # 6c2fbb61 <__l2_shared_end+0x502ebb61>
1c00a9e2:	ecf72c23          	sw	a5,-296(a4)
1c00a9e6:	68d147b7          	lui	a5,0x68d14
1c00a9ea:	1b878793          	addi	a5,a5,440 # 68d141b8 <__l2_shared_end+0x4cd041b8>
1c00a9ee:	ecf72e23          	sw	a5,-292(a4)
1c00a9f2:	205ef7b7          	lui	a5,0x205ef
1c00a9f6:	3d578793          	addi	a5,a5,981 # 205ef3d5 <__l2_shared_end+0x45df3d5>
1c00a9fa:	eef72023          	sw	a5,-288(a4)
1c00a9fe:	a37347b7          	lui	a5,0xa3734
1c00aa02:	50578793          	addi	a5,a5,1285 # a3734505 <__l2_shared_end+0x87724505>
1c00aa06:	eef72223          	sw	a5,-284(a4)
1c00aa0a:	8248d7b7          	lui	a5,0x8248d
1c00aa0e:	d3178793          	addi	a5,a5,-719 # 8248cd31 <__l2_shared_end+0x6647cd31>
1c00aa12:	eef72423          	sw	a5,-280(a4)
1c00aa16:	2c0757b7          	lui	a5,0x2c075
1c00aa1a:	ba078793          	addi	a5,a5,-1120 # 2c074ba0 <__l2_shared_end+0x10064ba0>
1c00aa1e:	eef72623          	sw	a5,-276(a4)
1c00aa22:	825897b7          	lui	a5,0x82589
1c00aa26:	11778793          	addi	a5,a5,279 # 82589117 <__l2_shared_end+0x66579117>
1c00aa2a:	eef72823          	sw	a5,-272(a4)
1c00aa2e:	1247d7b7          	lui	a5,0x1247d
1c00aa32:	f5b78793          	addi	a5,a5,-165 # 1247cf5b <__CTOR_LIST__-0x9b830a9>
1c00aa36:	eef72a23          	sw	a5,-268(a4)
1c00aa3a:	cc0de7b7          	lui	a5,0xcc0de
1c00aa3e:	a6678793          	addi	a5,a5,-1434 # cc0dda66 <__l2_shared_end+0xb00cda66>
1c00aa42:	eef72c23          	sw	a5,-264(a4)
1c00aa46:	21a0b7b7          	lui	a5,0x21a0b
1c00aa4a:	1ea78793          	addi	a5,a5,490 # 21a0b1ea <__l2_shared_end+0x59fb1ea>
1c00aa4e:	eef72e23          	sw	a5,-260(a4)
1c00aa52:	755437b7          	lui	a5,0x75543
1c00aa56:	2c778793          	addi	a5,a5,711 # 755432c7 <__l2_shared_end+0x595332c7>
1c00aa5a:	f0f72023          	sw	a5,-256(a4)
1c00aa5e:	1c1667b7          	lui	a5,0x1c166
1c00aa62:	a1d78793          	addi	a5,a5,-1507 # 1c165a1d <__l2_shared_end+0x155a1d>
1c00aa66:	f0f72223          	sw	a5,-252(a4)
1c00aa6a:	2c0697b7          	lui	a5,0x2c069
1c00aa6e:	21a78793          	addi	a5,a5,538 # 2c06921a <__l2_shared_end+0x1005921a>
1c00aa72:	f0f72423          	sw	a5,-248(a4)
1c00aa76:	7a2117b7          	lui	a5,0x7a211
1c00aa7a:	a2278793          	addi	a5,a5,-1502 # 7a210a22 <__l2_shared_end+0x5e200a22>
1c00aa7e:	f0f72623          	sw	a5,-244(a4)
1c00aa82:	3382e7b7          	lui	a5,0x3382e
1c00aa86:	96978793          	addi	a5,a5,-1687 # 3382d969 <__l2_shared_end+0x1781d969>
1c00aa8a:	f0f72823          	sw	a5,-240(a4)
1c00aa8e:	99deb7b7          	lui	a5,0x99deb
1c00aa92:	41478793          	addi	a5,a5,1044 # 99deb414 <__l2_shared_end+0x7dddb414>
1c00aa96:	f0f72a23          	sw	a5,-236(a4)
1c00aa9a:	5fd4f7b7          	lui	a5,0x5fd4f
1c00aa9e:	86f78793          	addi	a5,a5,-1937 # 5fd4e86f <__l2_shared_end+0x43d3e86f>
1c00aaa2:	f0f72c23          	sw	a5,-232(a4)
1c00aaa6:	16afb7b7          	lui	a5,0x16afb
1c00aaaa:	56d78793          	addi	a5,a5,1389 # 16afb56d <__CTOR_LIST__-0x5504a97>
1c00aaae:	f0f72e23          	sw	a5,-228(a4)
1c00aab2:	951457b7          	lui	a5,0x95145
1c00aab6:	6c178793          	addi	a5,a5,1729 # 951456c1 <__l2_shared_end+0x791356c1>
1c00aaba:	f2f72023          	sw	a5,-224(a4)
1c00aabe:	9030c7b7          	lui	a5,0x9030c
1c00aac2:	4a478793          	addi	a5,a5,1188 # 9030c4a4 <__l2_shared_end+0x742fc4a4>
1c00aac6:	f2f72223          	sw	a5,-220(a4)
1c00aaca:	944c47b7          	lui	a5,0x944c4
1c00aace:	9bc78793          	addi	a5,a5,-1604 # 944c39bc <__l2_shared_end+0x784b39bc>
1c00aad2:	f2f72423          	sw	a5,-216(a4)
1c00aad6:	73ecb7b7          	lui	a5,0x73ecb
1c00aada:	0e178793          	addi	a5,a5,225 # 73ecb0e1 <__l2_shared_end+0x57ebb0e1>
1c00aade:	f2f72623          	sw	a5,-212(a4)
1c00aae2:	6762b7b7          	lui	a5,0x6762b
1c00aae6:	58e78793          	addi	a5,a5,1422 # 6762b58e <__l2_shared_end+0x4b61b58e>
1c00aaea:	f2f72823          	sw	a5,-208(a4)
1c00aaee:	cd2e27b7          	lui	a5,0xcd2e2
1c00aaf2:	c2078793          	addi	a5,a5,-992 # cd2e1c20 <__l2_shared_end+0xb12d1c20>
1c00aaf6:	f2f72a23          	sw	a5,-204(a4)
1c00aafa:	934987b7          	lui	a5,0x93498
1c00aafe:	b1c78793          	addi	a5,a5,-1252 # 93497b1c <__l2_shared_end+0x77487b1c>
1c00ab02:	f2f72c23          	sw	a5,-200(a4)
1c00ab06:	28c0f7b7          	lui	a5,0x28c0f
1c00ab0a:	fc078793          	addi	a5,a5,-64 # 28c0efc0 <__l2_shared_end+0xcbfefc0>
1c00ab0e:	f2f72e23          	sw	a5,-196(a4)
1c00ab12:	099ae7b7          	lui	a5,0x99ae
1c00ab16:	c4b78793          	addi	a5,a5,-949 # 99adc4b <__CTOR_LIST__-0x126523b9>
1c00ab1a:	f4f72023          	sw	a5,-192(a4)
1c00ab1e:	954f37b7          	lui	a5,0x954f3
1c00ab22:	91c78793          	addi	a5,a5,-1764 # 954f291c <__l2_shared_end+0x794e291c>
1c00ab26:	f4f72223          	sw	a5,-188(a4)
1c00ab2a:	787147b7          	lui	a5,0x78714
1c00ab2e:	a7078793          	addi	a5,a5,-1424 # 78713a70 <__l2_shared_end+0x5c703a70>
1c00ab32:	f4f72423          	sw	a5,-184(a4)
1c00ab36:	958a37b7          	lui	a5,0x958a3
1c00ab3a:	c8278793          	addi	a5,a5,-894 # 958a2c82 <__l2_shared_end+0x79892c82>
1c00ab3e:	f4f72623          	sw	a5,-180(a4)
1c00ab42:	451ea7b7          	lui	a5,0x451ea
1c00ab46:	bb778793          	addi	a5,a5,-1097 # 451e9bb7 <__l2_shared_end+0x291d9bb7>
1c00ab4a:	f4f72823          	sw	a5,-176(a4)
1c00ab4e:	8d99e7b7          	lui	a5,0x8d99e
1c00ab52:	09178793          	addi	a5,a5,145 # 8d99e091 <__l2_shared_end+0x7198e091>
1c00ab56:	f4f72a23          	sw	a5,-172(a4)
1c00ab5a:	6791                	lui	a5,0x4
1c00ab5c:	88978793          	addi	a5,a5,-1911 # 3889 <__CTOR_LIST__-0x1bffc77b>
1c00ab60:	f4f71c23          	sh	a5,-168(a4)
1c00ab64:	fc100793          	li	a5,-63
1c00ab68:	f4f70da3          	sb	a5,-165(a4)
1c00ab6c:	8ac087b7          	lui	a5,0x8ac08
1c00ab70:	9a878793          	addi	a5,a5,-1624 # 8ac079a8 <__l2_shared_end+0x6ebf79a8>
1c00ab74:	f4f72e23          	sw	a5,-164(a4)
1c00ab78:	7dc647b7          	lui	a5,0x7dc64
1c00ab7c:	c0778793          	addi	a5,a5,-1017 # 7dc63c07 <__l2_shared_end+0x61c53c07>
1c00ab80:	f6f72023          	sw	a5,-160(a4)
1c00ab84:	a7bb27b7          	lui	a5,0xa7bb2
1c00ab88:	6f478793          	addi	a5,a5,1780 # a7bb26f4 <__l2_shared_end+0x8bba26f4>
1c00ab8c:	f6f72223          	sw	a5,-156(a4)
1c00ab90:	e68ac7b7          	lui	a5,0xe68ac
1c00ab94:	19278793          	addi	a5,a5,402 # e68ac192 <__l2_shared_end+0xca89c192>
1c00ab98:	f6f72423          	sw	a5,-152(a4)
1c00ab9c:	87bb07b7          	lui	a5,0x87bb0
1c00aba0:	ec178793          	addi	a5,a5,-319 # 87bafec1 <__l2_shared_end+0x6bb9fec1>
1c00aba4:	f6f72623          	sw	a5,-148(a4)
1c00aba8:	8154f7b7          	lui	a5,0x8154f
1c00abac:	c9b78793          	addi	a5,a5,-869 # 8154ec9b <__l2_shared_end+0x6553ec9b>
1c00abb0:	f6f72823          	sw	a5,-144(a4)
1c00abb4:	a0ff37b7          	lui	a5,0xa0ff3
1c00abb8:	a2c78793          	addi	a5,a5,-1492 # a0ff2a2c <__l2_shared_end+0x84fe2a2c>
1c00abbc:	f6f72a23          	sw	a5,-140(a4)
1c00abc0:	703b97b7          	lui	a5,0x703b9
1c00abc4:	71278793          	addi	a5,a5,1810 # 703b9712 <__l2_shared_end+0x543a9712>
1c00abc8:	f6f72c23          	sw	a5,-136(a4)
1c00abcc:	278ed7b7          	lui	a5,0x278ed
1c00abd0:	40a78793          	addi	a5,a5,1034 # 278ed40a <__l2_shared_end+0xb8dd40a>
1c00abd4:	f6f72e23          	sw	a5,-132(a4)
1c00abd8:	082887b7          	lui	a5,0x8288
1c00abdc:	81078793          	addi	a5,a5,-2032 # 8287810 <__CTOR_LIST__-0x13d787f4>
1c00abe0:	f8f72023          	sw	a5,-128(a4)
1c00abe4:	008627b7          	lui	a5,0x862
1c00abe8:	66478793          	addi	a5,a5,1636 # 862664 <__CTOR_LIST__-0x1b79d9a0>
1c00abec:	f8f72223          	sw	a5,-124(a4)
1c00abf0:	9e30b7b7          	lui	a5,0x9e30b
1c00abf4:	aa778793          	addi	a5,a5,-1369 # 9e30aaa7 <__l2_shared_end+0x822faaa7>
1c00abf8:	f8f72423          	sw	a5,-120(a4)
1c00abfc:	759817b7          	lui	a5,0x75981
1c00ac00:	0aa78793          	addi	a5,a5,170 # 759810aa <__l2_shared_end+0x599710aa>
1c00ac04:	f8f72623          	sw	a5,-116(a4)
1c00ac08:	528a17b7          	lui	a5,0x528a1
1c00ac0c:	f0a78793          	addi	a5,a5,-246 # 528a0f0a <__l2_shared_end+0x36890f0a>
1c00ac10:	f8f72823          	sw	a5,-112(a4)
1c00ac14:	5729c7b7          	lui	a5,0x5729c
1c00ac18:	92e78793          	addi	a5,a5,-1746 # 5729b92e <__l2_shared_end+0x3b28b92e>
1c00ac1c:	f8f72a23          	sw	a5,-108(a4)
1c00ac20:	782f47b7          	lui	a5,0x782f4
1c00ac24:	17b78793          	addi	a5,a5,379 # 782f417b <__l2_shared_end+0x5c2e417b>
1c00ac28:	f8f72c23          	sw	a5,-104(a4)
1c00ac2c:	883667b7          	lui	a5,0x88366
1c00ac30:	15578793          	addi	a5,a5,341 # 88366155 <__l2_shared_end+0x6c356155>
1c00ac34:	f8f72e23          	sw	a5,-100(a4)
1c00ac38:	c89b37b7          	lui	a5,0xc89b3
1c00ac3c:	fb778793          	addi	a5,a5,-73 # c89b2fb7 <__l2_shared_end+0xac9a2fb7>
1c00ac40:	faf72023          	sw	a5,-96(a4)
1c00ac44:	b91317b7          	lui	a5,0xb9131
1c00ac48:	a5c78793          	addi	a5,a5,-1444 # b9130a5c <__l2_shared_end+0x9d120a5c>
1c00ac4c:	faf72223          	sw	a5,-92(a4)
1c00ac50:	6f5847b7          	lui	a5,0x6f584
1c00ac54:	1d078793          	addi	a5,a5,464 # 6f5841d0 <__l2_shared_end+0x535741d0>
1c00ac58:	faf72423          	sw	a5,-88(a4)
1c00ac5c:	b1fe87b7          	lui	a5,0xb1fe8
1c00ac60:	f4a70d23          	sb	a0,-166(a4)
1c00ac64:	3d578793          	addi	a5,a5,981 # b1fe83d5 <__l2_shared_end+0x95fd83d5>
1c00ac68:	faf72623          	sw	a5,-84(a4)
1c00ac6c:	405b07b7          	lui	a5,0x405b0
1c00ac70:	d2a78793          	addi	a5,a5,-726 # 405afd2a <__l2_shared_end+0x2459fd2a>
1c00ac74:	faf72823          	sw	a5,-80(a4)
1c00ac78:	433bd7b7          	lui	a5,0x433bd
1c00ac7c:	32d78793          	addi	a5,a5,813 # 433bd32d <__l2_shared_end+0x273ad32d>
1c00ac80:	faf72a23          	sw	a5,-76(a4)
1c00ac84:	a45f47b7          	lui	a5,0xa45f4
1c00ac88:	f5478793          	addi	a5,a5,-172 # a45f3f54 <__l2_shared_end+0x885e3f54>
1c00ac8c:	faf72c23          	sw	a5,-72(a4)
1c00ac90:	8d6c47b7          	lui	a5,0x8d6c4
1c00ac94:	3eb78793          	addi	a5,a5,1003 # 8d6c43eb <__l2_shared_end+0x716b43eb>
1c00ac98:	faf72e23          	sw	a5,-68(a4)
1c00ac9c:	ab0c37b7          	lui	a5,0xab0c3
1c00aca0:	07578793          	addi	a5,a5,117 # ab0c3075 <__l2_shared_end+0x8f0b3075>
1c00aca4:	fcf72023          	sw	a5,-64(a4)
1c00aca8:	12ec67b7          	lui	a5,0x12ec6
1c00acac:	60678793          	addi	a5,a5,1542 # 12ec6606 <__CTOR_LIST__-0x91399fe>
1c00acb0:	fcf72223          	sw	a5,-60(a4)
1c00acb4:	eb4af7b7          	lui	a5,0xeb4af
1c00acb8:	19478793          	addi	a5,a5,404 # eb4af194 <__l2_shared_end+0xcf49f194>
1c00acbc:	fcf72423          	sw	a5,-56(a4)
1c00acc0:	984c47b7          	lui	a5,0x984c4
1c00acc4:	30778793          	addi	a5,a5,775 # 984c4307 <__l2_shared_end+0x7c4b4307>
1c00acc8:	fcf72623          	sw	a5,-52(a4)
1c00accc:	0044c7b7          	lui	a5,0x44c
1c00acd0:	a8478793          	addi	a5,a5,-1404 # 44ba84 <__CTOR_LIST__-0x1bbb4580>
1c00acd4:	fcf72823          	sw	a5,-48(a4)
1c00acd8:	83b4d7b7          	lui	a5,0x83b4d
1c00acdc:	d3e78793          	addi	a5,a5,-706 # 83b4cd3e <__l2_shared_end+0x67b3cd3e>
1c00ace0:	fcf72a23          	sw	a5,-44(a4)
1c00ace4:	1a8287b7          	lui	a5,0x1a828
1c00ace8:	39178793          	addi	a5,a5,913 # 1a828391 <__CTOR_LIST__-0x17d7c73>
1c00acec:	fcf72c23          	sw	a5,-40(a4)
1c00acf0:	c6a787b7          	lui	a5,0xc6a78
1c00acf4:	52478793          	addi	a5,a5,1316 # c6a78524 <__l2_shared_end+0xaaa68524>
1c00acf8:	fcf72e23          	sw	a5,-36(a4)
1c00acfc:	a62e37b7          	lui	a5,0xa62e3
1c00ad00:	a3e78793          	addi	a5,a5,-1474 # a62e2a3e <__l2_shared_end+0x8a2d2a3e>
1c00ad04:	fef72023          	sw	a5,-32(a4)
1c00ad08:	fc76c7b7          	lui	a5,0xfc76c
1c00ad0c:	4c978793          	addi	a5,a5,1225 # fc76c4c9 <__l2_shared_end+0xe075c4c9>
1c00ad10:	fef72223          	sw	a5,-28(a4)
1c00ad14:	13b037b7          	lui	a5,0x13b03
1c00ad18:	74978793          	addi	a5,a5,1865 # 13b03749 <__CTOR_LIST__-0x84fc8bb>
1c00ad1c:	fef72423          	sw	a5,-24(a4)
1c00ad20:	93a797b7          	lui	a5,0x93a79
1c00ad24:	3c978793          	addi	a5,a5,969 # 93a793c9 <__l2_shared_end+0x77a693c9>
1c00ad28:	fef72623          	sw	a5,-20(a4)
1c00ad2c:	99abc7b7          	lui	a5,0x99abc
1c00ad30:	0d678793          	addi	a5,a5,214 # 99abc0d6 <__l2_shared_end+0x7daac0d6>
1c00ad34:	fef72823          	sw	a5,-16(a4)
1c00ad38:	a85b77b7          	lui	a5,0xa85b7
1c00ad3c:	96078793          	addi	a5,a5,-1696 # a85b6960 <__l2_shared_end+0x8c5a6960>
1c00ad40:	fef72a23          	sw	a5,-12(a4)
1c00ad44:	da49f7b7          	lui	a5,0xda49f
1c00ad48:	75fd                	lui	a1,0xfffff
1c00ad4a:	63878793          	addi	a5,a5,1592 # da49f638 <__l2_shared_end+0xbe48f638>
1c00ad4e:	22058413          	addi	s0,a1,544 # fffff220 <__l2_shared_end+0xe3fef220>
1c00ad52:	fef72c23          	sw	a5,-8(a4)
1c00ad56:	d0a3a7b7          	lui	a5,0xd0a3a
1c00ad5a:	943a                	add	s0,s0,a4
1c00ad5c:	c5378793          	addi	a5,a5,-941 # d0a39c53 <__l2_shared_end+0xb4a29c53>
1c00ad60:	6a058613          	addi	a2,a1,1696
1c00ad64:	26058593          	addi	a1,a1,608
1c00ad68:	963a                	add	a2,a2,a4
1c00ad6a:	95ba                	add	a1,a1,a4
1c00ad6c:	fef72e23          	sw	a5,-4(a4)
1c00ad70:	8522                	mv	a0,s0
1c00ad72:	71f010ef          	jal	ra,1c00cc90 <PQCLEAN_KYBER768_CLEAN_crypto_kem_dec>
1c00ad76:	1c000537          	lui	a0,0x1c000
1c00ad7a:	11c50513          	addi	a0,a0,284 # 1c00011c <__clz_tab+0x100>
1c00ad7e:	725020ef          	jal	ra,1c00dca2 <puts>
1c00ad82:	1c000537          	lui	a0,0x1c000
1c00ad86:	13050513          	addi	a0,a0,304 # 1c000130 <__clz_tab+0x114>
1c00ad8a:	719020ef          	jal	ra,1c00dca2 <puts>
1c00ad8e:	02040913          	addi	s2,s0,32
1c00ad92:	84a2                	mv	s1,s0
1c00ad94:	1c0009b7          	lui	s3,0x1c000
1c00ad98:	0004c583          	lbu	a1,0(s1)
1c00ad9c:	13898513          	addi	a0,s3,312 # 1c000138 <__clz_tab+0x11c>
1c00ada0:	0485                	addi	s1,s1,1
1c00ada2:	7c3020ef          	jal	ra,1c00dd64 <printf>
1c00ada6:	ff2499e3          	bne	s1,s2,1c00ad98 <main+0x2c44>
1c00adaa:	4529                	li	a0,10
1c00adac:	773020ef          	jal	ra,1c00dd1e <putchar>
1c00adb0:	6705                	lui	a4,0x1
1c00adb2:	77fd                	lui	a5,0xfffff
1c00adb4:	de070713          	addi	a4,a4,-544 # de0 <__CTOR_LIST__-0x1bfff224>
1c00adb8:	24078793          	addi	a5,a5,576 # fffff240 <__l2_shared_end+0xe3fef240>
1c00adbc:	970a                	add	a4,a4,sp
1c00adbe:	97ba                	add	a5,a5,a4
1c00adc0:	a019                	j	1c00adc6 <main+0x2c72>
1c00adc2:	05240063          	beq	s0,s2,1c00ae02 <main+0x2cae>
1c00adc6:	00044683          	lbu	a3,0(s0)
1c00adca:	0007c703          	lbu	a4,0(a5)
1c00adce:	0405                	addi	s0,s0,1
1c00add0:	0785                	addi	a5,a5,1
1c00add2:	fee688e3          	beq	a3,a4,1c00adc2 <main+0x2c6e>
1c00add6:	1c000537          	lui	a0,0x1c000
1c00adda:	14050513          	addi	a0,a0,320 # 1c000140 <__clz_tab+0x124>
1c00adde:	6c5020ef          	jal	ra,1c00dca2 <puts>
1c00ade2:	557d                	li	a0,-1
1c00ade4:	61010113          	addi	sp,sp,1552
1c00ade8:	7ec12083          	lw	ra,2028(sp)
1c00adec:	7e812403          	lw	s0,2024(sp)
1c00adf0:	7e412483          	lw	s1,2020(sp)
1c00adf4:	7e012903          	lw	s2,2016(sp)
1c00adf8:	7dc12983          	lw	s3,2012(sp)
1c00adfc:	7f010113          	addi	sp,sp,2032
1c00ae00:	8082                	ret
1c00ae02:	4501                	li	a0,0
1c00ae04:	b7c5                	j	1c00ade4 <main+0x2c90>

1c00ae06 <pos_fll_init>:
1c00ae06:	1101                	addi	sp,sp,-32
1c00ae08:	1a1005b7          	lui	a1,0x1a100
1c00ae0c:	c64e                	sw	s3,12(sp)
1c00ae0e:	00451613          	slli	a2,a0,0x4
1c00ae12:	00458993          	addi	s3,a1,4 # 1a100004 <__CTOR_LIST__-0x1f00000>
1c00ae16:	99b2                	add	s3,s3,a2
1c00ae18:	0009a703          	lw	a4,0(s3)
1c00ae1c:	ca26                	sw	s1,20(sp)
1c00ae1e:	ce06                	sw	ra,28(sp)
1c00ae20:	cc22                	sw	s0,24(sp)
1c00ae22:	c84a                	sw	s2,16(sp)
1c00ae24:	c452                	sw	s4,8(sp)
1c00ae26:	84aa                	mv	s1,a0
1c00ae28:	87ba                	mv	a5,a4
1c00ae2a:	04074763          	bltz	a4,1c00ae78 <pos_fll_init+0x72>
1c00ae2e:	00858693          	addi	a3,a1,8
1c00ae32:	96b2                	add	a3,a3,a2
1c00ae34:	429c                	lw	a5,0(a3)
1c00ae36:	f0000537          	lui	a0,0xf0000
1c00ae3a:	3ff50513          	addi	a0,a0,1023 # f00003ff <__l2_shared_end+0xd3ff03ff>
1c00ae3e:	8fe9                	and	a5,a5,a0
1c00ae40:	00502537          	lui	a0,0x502
1c00ae44:	80050513          	addi	a0,a0,-2048 # 501800 <__CTOR_LIST__-0x1bafe804>
1c00ae48:	8fc9                	or	a5,a5,a0
1c00ae4a:	05b1                	addi	a1,a1,12
1c00ae4c:	c29c                	sw	a5,0(a3)
1c00ae4e:	962e                	add	a2,a2,a1
1c00ae50:	4214                	lw	a3,0(a2)
1c00ae52:	fc0107b7          	lui	a5,0xfc010
1c00ae56:	17fd                	addi	a5,a5,-1
1c00ae58:	01875593          	srli	a1,a4,0x18
1c00ae5c:	8efd                	and	a3,a3,a5
1c00ae5e:	0c05e593          	ori	a1,a1,192
1c00ae62:	00871793          	slli	a5,a4,0x8
1c00ae66:	014c0537          	lui	a0,0x14c0
1c00ae6a:	8ec9                	or	a3,a3,a0
1c00ae6c:	05e2                	slli	a1,a1,0x18
1c00ae6e:	83a1                	srli	a5,a5,0x8
1c00ae70:	c214                	sw	a3,0(a2)
1c00ae72:	8fcd                	or	a5,a5,a1
1c00ae74:	00f9a023          	sw	a5,0(s3)
1c00ae78:	1c006437          	lui	s0,0x1c006
1c00ae7c:	16440413          	addi	s0,s0,356 # 1c006164 <pos_fll_freq>
1c00ae80:	00249a13          	slli	s4,s1,0x2
1c00ae84:	014406b3          	add	a3,s0,s4
1c00ae88:	0006a903          	lw	s2,0(a3)
1c00ae8c:	02091d63          	bnez	s2,1c00aec6 <pos_fll_init+0xc0>
1c00ae90:	83e9                	srli	a5,a5,0x1a
1c00ae92:	0742                	slli	a4,a4,0x10
1c00ae94:	8341                	srli	a4,a4,0x10
1c00ae96:	8bbd                	andi	a5,a5,15
1c00ae98:	073e                	slli	a4,a4,0xf
1c00ae9a:	17fd                	addi	a5,a5,-1
1c00ae9c:	00f75933          	srl	s2,a4,a5
1c00aea0:	0126a023          	sw	s2,0(a3)
1c00aea4:	1c0066b7          	lui	a3,0x1c006
1c00aea8:	16068693          	addi	a3,a3,352 # 1c006160 <pos_fll_is_on>
1c00aeac:	96a6                	add	a3,a3,s1
1c00aeae:	4785                	li	a5,1
1c00aeb0:	00f68023          	sb	a5,0(a3)
1c00aeb4:	40f2                	lw	ra,28(sp)
1c00aeb6:	4462                	lw	s0,24(sp)
1c00aeb8:	44d2                	lw	s1,20(sp)
1c00aeba:	49b2                	lw	s3,12(sp)
1c00aebc:	4a22                	lw	s4,8(sp)
1c00aebe:	854a                	mv	a0,s2
1c00aec0:	4942                	lw	s2,16(sp)
1c00aec2:	6105                	addi	sp,sp,32
1c00aec4:	8082                	ret
1c00aec6:	854a                	mv	a0,s2
1c00aec8:	a40fd0ef          	jal	ra,1c008108 <__clzsi2>
1c00aecc:	1579                	addi	a0,a0,-2
1c00aece:	8105                	srli	a0,a0,0x1
1c00aed0:	c939                	beqz	a0,1c00af26 <pos_fll_init+0x120>
1c00aed2:	fff50613          	addi	a2,a0,-1 # 14bffff <__CTOR_LIST__-0x1ab40005>
1c00aed6:	1c0066b7          	lui	a3,0x1c006
1c00aeda:	4785                	li	a5,1
1c00aedc:	00c797b3          	sll	a5,a5,a2
1c00aee0:	00a91733          	sll	a4,s2,a0
1c00aee4:	16068693          	addi	a3,a3,352 # 1c006160 <pos_fll_is_on>
1c00aee8:	7661                	lui	a2,0xffff8
1c00aeea:	8e79                	and	a2,a2,a4
1c00aeec:	009685b3          	add	a1,a3,s1
1c00aef0:	97b2                	add	a5,a5,a2
1c00aef2:	0005c603          	lbu	a2,0(a1)
1c00aef6:	9452                	add	s0,s0,s4
1c00aef8:	00a7d7b3          	srl	a5,a5,a0
1c00aefc:	c01c                	sw	a5,0(s0)
1c00aefe:	d65d                	beqz	a2,1c00aeac <pos_fll_init+0xa6>
1c00af00:	0009a783          	lw	a5,0(s3)
1c00af04:	833d                	srli	a4,a4,0xf
1c00af06:	0742                	slli	a4,a4,0x10
1c00af08:	7641                	lui	a2,0xffff0
1c00af0a:	8341                	srli	a4,a4,0x10
1c00af0c:	8ff1                	and	a5,a5,a2
1c00af0e:	8fd9                	or	a5,a5,a4
1c00af10:	0505                	addi	a0,a0,1
1c00af12:	c4000737          	lui	a4,0xc4000
1c00af16:	893d                	andi	a0,a0,15
1c00af18:	177d                	addi	a4,a4,-1
1c00af1a:	056a                	slli	a0,a0,0x1a
1c00af1c:	8ff9                	and	a5,a5,a4
1c00af1e:	8d5d                	or	a0,a0,a5
1c00af20:	00a9a023          	sw	a0,0(s3)
1c00af24:	b761                	j	1c00aeac <pos_fll_init+0xa6>
1c00af26:	4505                	li	a0,1
1c00af28:	b76d                	j	1c00aed2 <pos_fll_init+0xcc>

1c00af2a <pos_fll_constructor>:
1c00af2a:	1c0067b7          	lui	a5,0x1c006
1c00af2e:	16478793          	addi	a5,a5,356 # 1c006164 <pos_fll_freq>
1c00af32:	0007a023          	sw	zero,0(a5)
1c00af36:	0007a223          	sw	zero,4(a5)
1c00af3a:	1c0067b7          	lui	a5,0x1c006
1c00af3e:	16079023          	sh	zero,352(a5) # 1c006160 <pos_fll_is_on>
1c00af42:	8082                	ret

1c00af44 <pos_soc_init>:
1c00af44:	1141                	addi	sp,sp,-16
1c00af46:	c606                	sw	ra,12(sp)
1c00af48:	c422                	sw	s0,8(sp)
1c00af4a:	37c5                	jal	1c00af2a <pos_fll_constructor>
1c00af4c:	4501                	li	a0,0
1c00af4e:	3d65                	jal	1c00ae06 <pos_fll_init>
1c00af50:	1c006437          	lui	s0,0x1c006
1c00af54:	87aa                	mv	a5,a0
1c00af56:	16c40413          	addi	s0,s0,364 # 1c00616c <pos_freq_domains>
1c00af5a:	4505                	li	a0,1
1c00af5c:	c01c                	sw	a5,0(s0)
1c00af5e:	3565                	jal	1c00ae06 <pos_fll_init>
1c00af60:	40b2                	lw	ra,12(sp)
1c00af62:	c408                	sw	a0,8(s0)
1c00af64:	4422                	lw	s0,8(sp)
1c00af66:	0141                	addi	sp,sp,16
1c00af68:	8082                	ret

1c00af6a <KeccakF1600_StatePermute>:
1c00af6a:	1a400837          	lui	a6,0x1a400
1c00af6e:	87aa                	mv	a5,a0
1c00af70:	0c850613          	addi	a2,a0,200
1c00af74:	1141                	addi	sp,sp,-16
1c00af76:	40a80533          	sub	a0,a6,a0
1c00af7a:	4394                	lw	a3,0(a5)
1c00af7c:	00f50733          	add	a4,a0,a5
1c00af80:	0791                	addi	a5,a5,4
1c00af82:	c314                	sw	a3,0(a4)
1c00af84:	fec79be3          	bne	a5,a2,1c00af7a <KeccakF1600_StatePermute+0x10>
1c00af88:	4785                	li	a5,1
1c00af8a:	18f82823          	sw	a5,400(a6) # 1a400190 <__CTOR_LIST__-0x1bffe74>
1c00af8e:	1a400737          	lui	a4,0x1a400
1c00af92:	19472783          	lw	a5,404(a4) # 1a400194 <__CTOR_LIST__-0x1bffe70>
1c00af96:	8b85                	andi	a5,a5,1
1c00af98:	dfed                	beqz	a5,1c00af92 <KeccakF1600_StatePermute+0x28>
1c00af9a:	c602                	sw	zero,12(sp)
1c00af9c:	4732                	lw	a4,12(sp)
1c00af9e:	03100793          	li	a5,49
1c00afa2:	02e7c663          	blt	a5,a4,1c00afce <KeccakF1600_StatePermute+0x64>
1c00afa6:	1a400637          	lui	a2,0x1a400
1c00afaa:	0c860613          	addi	a2,a2,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c00afae:	03100513          	li	a0,49
1c00afb2:	4732                	lw	a4,12(sp)
1c00afb4:	47b2                	lw	a5,12(sp)
1c00afb6:	070a                	slli	a4,a4,0x2
1c00afb8:	9732                	add	a4,a4,a2
1c00afba:	4314                	lw	a3,0(a4)
1c00afbc:	4732                	lw	a4,12(sp)
1c00afbe:	078a                	slli	a5,a5,0x2
1c00afc0:	97ae                	add	a5,a5,a1
1c00afc2:	0705                	addi	a4,a4,1
1c00afc4:	c63a                	sw	a4,12(sp)
1c00afc6:	4732                	lw	a4,12(sp)
1c00afc8:	c394                	sw	a3,0(a5)
1c00afca:	fee554e3          	bge	a0,a4,1c00afb2 <KeccakF1600_StatePermute+0x48>
1c00afce:	0141                	addi	sp,sp,16
1c00afd0:	8082                	ret

1c00afd2 <KYBER_poly_ntt>:
1c00afd2:	1a4007b7          	lui	a5,0x1a400
1c00afd6:	40000713          	li	a4,1024
1c00afda:	30e7a423          	sw	a4,776(a5) # 1a400308 <__CTOR_LIST__-0x1bffcfc>
1c00afde:	3007a423          	sw	zero,776(a5)
1c00afe2:	4705                	li	a4,1
1c00afe4:	30e7a423          	sw	a4,776(a5)
1c00afe8:	3007a423          	sw	zero,776(a5)
1c00afec:	20050693          	addi	a3,a0,512
1c00aff0:	1a400737          	lui	a4,0x1a400
1c00aff4:	411c                	lw	a5,0(a0)
1c00aff6:	0511                	addi	a0,a0,4
1c00aff8:	30f72023          	sw	a5,768(a4) # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c00affc:	fed51ce3          	bne	a0,a3,1c00aff4 <KYBER_poly_ntt+0x22>
1c00b000:	08000793          	li	a5,128
1c00b004:	30f72423          	sw	a5,776(a4)
1c00b008:	30072423          	sw	zero,776(a4)
1c00b00c:	1a400737          	lui	a4,0x1a400
1c00b010:	30c72783          	lw	a5,780(a4) # 1a40030c <__CTOR_LIST__-0x1bffcf8>
1c00b014:	8b85                	andi	a5,a5,1
1c00b016:	dfed                	beqz	a5,1c00b010 <KYBER_poly_ntt+0x3e>
1c00b018:	47c1                	li	a5,16
1c00b01a:	30f72423          	sw	a5,776(a4)
1c00b01e:	30072423          	sw	zero,776(a4)
1c00b022:	20058693          	addi	a3,a1,512
1c00b026:	1a400737          	lui	a4,0x1a400
1c00b02a:	0001                	nop
1c00b02c:	30472783          	lw	a5,772(a4) # 1a400304 <__CTOR_LIST__-0x1bffd00>
1c00b030:	0591                	addi	a1,a1,4
1c00b032:	fef5ae23          	sw	a5,-4(a1)
1c00b036:	fed59ae3          	bne	a1,a3,1c00b02a <KYBER_poly_ntt+0x58>
1c00b03a:	8082                	ret

1c00b03c <KYBER_poly_intt>:
1c00b03c:	1a4007b7          	lui	a5,0x1a400
1c00b040:	40000713          	li	a4,1024
1c00b044:	30e7a423          	sw	a4,776(a5) # 1a400308 <__CTOR_LIST__-0x1bffcfc>
1c00b048:	3007a423          	sw	zero,776(a5)
1c00b04c:	4709                	li	a4,2
1c00b04e:	30e7a423          	sw	a4,776(a5)
1c00b052:	3007a423          	sw	zero,776(a5)
1c00b056:	20050693          	addi	a3,a0,512
1c00b05a:	1a400737          	lui	a4,0x1a400
1c00b05e:	411c                	lw	a5,0(a0)
1c00b060:	0511                	addi	a0,a0,4
1c00b062:	30f72023          	sw	a5,768(a4) # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c00b066:	fed51ce3          	bne	a0,a3,1c00b05e <KYBER_poly_intt+0x22>
1c00b06a:	20000793          	li	a5,512
1c00b06e:	30f72423          	sw	a5,776(a4)
1c00b072:	30072423          	sw	zero,776(a4)
1c00b076:	1a400737          	lui	a4,0x1a400
1c00b07a:	30c72783          	lw	a5,780(a4) # 1a40030c <__CTOR_LIST__-0x1bffcf8>
1c00b07e:	8b85                	andi	a5,a5,1
1c00b080:	dfed                	beqz	a5,1c00b07a <KYBER_poly_intt+0x3e>
1c00b082:	47c1                	li	a5,16
1c00b084:	30f72423          	sw	a5,776(a4)
1c00b088:	30072423          	sw	zero,776(a4)
1c00b08c:	20058693          	addi	a3,a1,512
1c00b090:	1a400737          	lui	a4,0x1a400
1c00b094:	0001                	nop
1c00b096:	30472783          	lw	a5,772(a4) # 1a400304 <__CTOR_LIST__-0x1bffd00>
1c00b09a:	0591                	addi	a1,a1,4
1c00b09c:	fef5ae23          	sw	a5,-4(a1)
1c00b0a0:	fed59ae3          	bne	a1,a3,1c00b094 <KYBER_poly_intt+0x58>
1c00b0a4:	8082                	ret

1c00b0a6 <KYBER_poly_pwm>:
1c00b0a6:	1a4007b7          	lui	a5,0x1a400
1c00b0aa:	40000713          	li	a4,1024
1c00b0ae:	30e7a423          	sw	a4,776(a5) # 1a400308 <__CTOR_LIST__-0x1bffcfc>
1c00b0b2:	3007a423          	sw	zero,776(a5)
1c00b0b6:	4709                	li	a4,2
1c00b0b8:	30e7a423          	sw	a4,776(a5)
1c00b0bc:	3007a423          	sw	zero,776(a5)
1c00b0c0:	20058693          	addi	a3,a1,512
1c00b0c4:	1a400737          	lui	a4,0x1a400
1c00b0c8:	419c                	lw	a5,0(a1)
1c00b0ca:	0591                	addi	a1,a1,4
1c00b0cc:	30f72023          	sw	a5,768(a4) # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c00b0d0:	fed59ce3          	bne	a1,a3,1c00b0c8 <KYBER_poly_pwm+0x22>
1c00b0d4:	47a1                	li	a5,8
1c00b0d6:	30f72423          	sw	a5,776(a4)
1c00b0da:	30072423          	sw	zero,776(a4)
1c00b0de:	20060693          	addi	a3,a2,512
1c00b0e2:	1a400737          	lui	a4,0x1a400
1c00b0e6:	421c                	lw	a5,0(a2)
1c00b0e8:	0611                	addi	a2,a2,4
1c00b0ea:	30f72023          	sw	a5,768(a4) # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c00b0ee:	fec69ce3          	bne	a3,a2,1c00b0e6 <KYBER_poly_pwm+0x40>
1c00b0f2:	10000793          	li	a5,256
1c00b0f6:	30f72423          	sw	a5,776(a4)
1c00b0fa:	30072423          	sw	zero,776(a4)
1c00b0fe:	1a400737          	lui	a4,0x1a400
1c00b102:	30c72783          	lw	a5,780(a4) # 1a40030c <__CTOR_LIST__-0x1bffcf8>
1c00b106:	8b85                	andi	a5,a5,1
1c00b108:	dfed                	beqz	a5,1c00b102 <KYBER_poly_pwm+0x5c>
1c00b10a:	47c1                	li	a5,16
1c00b10c:	30f72423          	sw	a5,776(a4)
1c00b110:	30072423          	sw	zero,776(a4)
1c00b114:	20050693          	addi	a3,a0,512
1c00b118:	1a400737          	lui	a4,0x1a400
1c00b11c:	0001                	nop
1c00b11e:	30472783          	lw	a5,772(a4) # 1a400304 <__CTOR_LIST__-0x1bffd00>
1c00b122:	0511                	addi	a0,a0,4
1c00b124:	fef52e23          	sw	a5,-4(a0)
1c00b128:	fed51ae3          	bne	a0,a3,1c00b11c <KYBER_poly_pwm+0x76>
1c00b12c:	8082                	ret

1c00b12e <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>:
1c00b12e:	1101                	addi	sp,sp,-32
1c00b130:	55555f37          	lui	t5,0x55555
1c00b134:	ce22                	sw	s0,28(sp)
1c00b136:	cc26                	sw	s1,24(sp)
1c00b138:	ca4a                	sw	s2,20(sp)
1c00b13a:	c84e                	sw	s3,16(sp)
1c00b13c:	c652                	sw	s4,12(sp)
1c00b13e:	20050f93          	addi	t6,a0,512
1c00b142:	555f0f13          	addi	t5,t5,1365 # 55555555 <__l2_shared_end+0x39545555>
1c00b146:	0015c683          	lbu	a3,1(a1)
1c00b14a:	0005c603          	lbu	a2,0(a1)
1c00b14e:	0025c783          	lbu	a5,2(a1)
1c00b152:	0035c703          	lbu	a4,3(a1)
1c00b156:	06a2                	slli	a3,a3,0x8
1c00b158:	8ed1                	or	a3,a3,a2
1c00b15a:	07c2                	slli	a5,a5,0x10
1c00b15c:	8fd5                	or	a5,a5,a3
1c00b15e:	0762                	slli	a4,a4,0x18
1c00b160:	8f5d                	or	a4,a4,a5
1c00b162:	00175793          	srli	a5,a4,0x1
1c00b166:	01e7f7b3          	and	a5,a5,t5
1c00b16a:	01e77733          	and	a4,a4,t5
1c00b16e:	97ba                	add	a5,a5,a4
1c00b170:	0027da13          	srli	s4,a5,0x2
1c00b174:	0047d313          	srli	t1,a5,0x4
1c00b178:	0067d993          	srli	s3,a5,0x6
1c00b17c:	0087d893          	srli	a7,a5,0x8
1c00b180:	00a7d913          	srli	s2,a5,0xa
1c00b184:	00c7d813          	srli	a6,a5,0xc
1c00b188:	00e7d493          	srli	s1,a5,0xe
1c00b18c:	0107d613          	srli	a2,a5,0x10
1c00b190:	0127d413          	srli	s0,a5,0x12
1c00b194:	0147d693          	srli	a3,a5,0x14
1c00b198:	0167d393          	srli	t2,a5,0x16
1c00b19c:	0187d713          	srli	a4,a5,0x18
1c00b1a0:	01a7d293          	srli	t0,a5,0x1a
1c00b1a4:	01c7de93          	srli	t4,a5,0x1c
1c00b1a8:	0037fe13          	andi	t3,a5,3
1c00b1ac:	003a7a13          	andi	s4,s4,3
1c00b1b0:	00337313          	andi	t1,t1,3
1c00b1b4:	0039f993          	andi	s3,s3,3
1c00b1b8:	0038f893          	andi	a7,a7,3
1c00b1bc:	00397913          	andi	s2,s2,3
1c00b1c0:	00387813          	andi	a6,a6,3
1c00b1c4:	888d                	andi	s1,s1,3
1c00b1c6:	8a0d                	andi	a2,a2,3
1c00b1c8:	880d                	andi	s0,s0,3
1c00b1ca:	8a8d                	andi	a3,a3,3
1c00b1cc:	0033f393          	andi	t2,t2,3
1c00b1d0:	8b0d                	andi	a4,a4,3
1c00b1d2:	0032f293          	andi	t0,t0,3
1c00b1d6:	003efe93          	andi	t4,t4,3
1c00b1da:	83f9                	srli	a5,a5,0x1e
1c00b1dc:	414e0e33          	sub	t3,t3,s4
1c00b1e0:	41330333          	sub	t1,t1,s3
1c00b1e4:	412888b3          	sub	a7,a7,s2
1c00b1e8:	40980833          	sub	a6,a6,s1
1c00b1ec:	8e01                	sub	a2,a2,s0
1c00b1ee:	407686b3          	sub	a3,a3,t2
1c00b1f2:	40570733          	sub	a4,a4,t0
1c00b1f6:	40fe87b3          	sub	a5,t4,a5
1c00b1fa:	01c51023          	sh	t3,0(a0)
1c00b1fe:	00651123          	sh	t1,2(a0)
1c00b202:	01151223          	sh	a7,4(a0)
1c00b206:	01051323          	sh	a6,6(a0)
1c00b20a:	00c51423          	sh	a2,8(a0)
1c00b20e:	00d51523          	sh	a3,10(a0)
1c00b212:	00e51623          	sh	a4,12(a0)
1c00b216:	00f51723          	sh	a5,14(a0)
1c00b21a:	0541                	addi	a0,a0,16
1c00b21c:	0591                	addi	a1,a1,4
1c00b21e:	f3f514e3          	bne	a0,t6,1c00b146 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1+0x18>
1c00b222:	4472                	lw	s0,28(sp)
1c00b224:	44e2                	lw	s1,24(sp)
1c00b226:	4952                	lw	s2,20(sp)
1c00b228:	49c2                	lw	s3,16(sp)
1c00b22a:	4a32                	lw	s4,12(sp)
1c00b22c:	6105                	addi	sp,sp,32
1c00b22e:	8082                	ret

1c00b230 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta2>:
1c00b230:	1101                	addi	sp,sp,-32
1c00b232:	55555f37          	lui	t5,0x55555
1c00b236:	ce22                	sw	s0,28(sp)
1c00b238:	cc26                	sw	s1,24(sp)
1c00b23a:	ca4a                	sw	s2,20(sp)
1c00b23c:	c84e                	sw	s3,16(sp)
1c00b23e:	c652                	sw	s4,12(sp)
1c00b240:	20050f93          	addi	t6,a0,512
1c00b244:	555f0f13          	addi	t5,t5,1365 # 55555555 <__l2_shared_end+0x39545555>
1c00b248:	0015c683          	lbu	a3,1(a1)
1c00b24c:	0005c603          	lbu	a2,0(a1)
1c00b250:	0025c783          	lbu	a5,2(a1)
1c00b254:	0035c703          	lbu	a4,3(a1)
1c00b258:	06a2                	slli	a3,a3,0x8
1c00b25a:	8ed1                	or	a3,a3,a2
1c00b25c:	07c2                	slli	a5,a5,0x10
1c00b25e:	8fd5                	or	a5,a5,a3
1c00b260:	0762                	slli	a4,a4,0x18
1c00b262:	8f5d                	or	a4,a4,a5
1c00b264:	00175793          	srli	a5,a4,0x1
1c00b268:	01e7f7b3          	and	a5,a5,t5
1c00b26c:	01e77733          	and	a4,a4,t5
1c00b270:	97ba                	add	a5,a5,a4
1c00b272:	0027da13          	srli	s4,a5,0x2
1c00b276:	0047d313          	srli	t1,a5,0x4
1c00b27a:	0067d993          	srli	s3,a5,0x6
1c00b27e:	0087d893          	srli	a7,a5,0x8
1c00b282:	00a7d913          	srli	s2,a5,0xa
1c00b286:	00c7d813          	srli	a6,a5,0xc
1c00b28a:	00e7d493          	srli	s1,a5,0xe
1c00b28e:	0107d613          	srli	a2,a5,0x10
1c00b292:	0127d413          	srli	s0,a5,0x12
1c00b296:	0147d693          	srli	a3,a5,0x14
1c00b29a:	0167d393          	srli	t2,a5,0x16
1c00b29e:	0187d713          	srli	a4,a5,0x18
1c00b2a2:	01a7d293          	srli	t0,a5,0x1a
1c00b2a6:	01c7de93          	srli	t4,a5,0x1c
1c00b2aa:	0037fe13          	andi	t3,a5,3
1c00b2ae:	003a7a13          	andi	s4,s4,3
1c00b2b2:	00337313          	andi	t1,t1,3
1c00b2b6:	0039f993          	andi	s3,s3,3
1c00b2ba:	0038f893          	andi	a7,a7,3
1c00b2be:	00397913          	andi	s2,s2,3
1c00b2c2:	00387813          	andi	a6,a6,3
1c00b2c6:	888d                	andi	s1,s1,3
1c00b2c8:	8a0d                	andi	a2,a2,3
1c00b2ca:	880d                	andi	s0,s0,3
1c00b2cc:	8a8d                	andi	a3,a3,3
1c00b2ce:	0033f393          	andi	t2,t2,3
1c00b2d2:	8b0d                	andi	a4,a4,3
1c00b2d4:	0032f293          	andi	t0,t0,3
1c00b2d8:	003efe93          	andi	t4,t4,3
1c00b2dc:	83f9                	srli	a5,a5,0x1e
1c00b2de:	414e0e33          	sub	t3,t3,s4
1c00b2e2:	41330333          	sub	t1,t1,s3
1c00b2e6:	412888b3          	sub	a7,a7,s2
1c00b2ea:	40980833          	sub	a6,a6,s1
1c00b2ee:	8e01                	sub	a2,a2,s0
1c00b2f0:	407686b3          	sub	a3,a3,t2
1c00b2f4:	40570733          	sub	a4,a4,t0
1c00b2f8:	40fe87b3          	sub	a5,t4,a5
1c00b2fc:	01c51023          	sh	t3,0(a0)
1c00b300:	00651123          	sh	t1,2(a0)
1c00b304:	01151223          	sh	a7,4(a0)
1c00b308:	01051323          	sh	a6,6(a0)
1c00b30c:	00c51423          	sh	a2,8(a0)
1c00b310:	00d51523          	sh	a3,10(a0)
1c00b314:	00e51623          	sh	a4,12(a0)
1c00b318:	00f51723          	sh	a5,14(a0)
1c00b31c:	0541                	addi	a0,a0,16
1c00b31e:	0591                	addi	a1,a1,4
1c00b320:	f3f514e3          	bne	a0,t6,1c00b248 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta2+0x18>
1c00b324:	4472                	lw	s0,28(sp)
1c00b326:	44e2                	lw	s1,24(sp)
1c00b328:	4952                	lw	s2,20(sp)
1c00b32a:	49c2                	lw	s3,16(sp)
1c00b32c:	4a32                	lw	s4,12(sp)
1c00b32e:	6105                	addi	sp,sp,32
1c00b330:	8082                	ret

1c00b332 <keccak_absorb.constprop.1>:
1c00b332:	7151                	addi	sp,sp,-240
1c00b334:	d3a6                	sw	s1,228(sp)
1c00b336:	cfce                	sw	s3,220(sp)
1c00b338:	cdd2                	sw	s4,216(sp)
1c00b33a:	cbd6                	sw	s5,212(sp)
1c00b33c:	84b6                	mv	s1,a3
1c00b33e:	d786                	sw	ra,236(sp)
1c00b340:	d5a2                	sw	s0,232(sp)
1c00b342:	d1ca                	sw	s2,224(sp)
1c00b344:	c9da                	sw	s6,208(sp)
1c00b346:	8a2a                	mv	s4,a0
1c00b348:	87ae                	mv	a5,a1
1c00b34a:	8ab2                	mv	s5,a2
1c00b34c:	89aa                	mv	s3,a0
1c00b34e:	0c850693          	addi	a3,a0,200
1c00b352:	872a                	mv	a4,a0
1c00b354:	4581                	li	a1,0
1c00b356:	4601                	li	a2,0
1c00b358:	c30c                	sw	a1,0(a4)
1c00b35a:	c350                	sw	a2,4(a4)
1c00b35c:	0721                	addi	a4,a4,8
1c00b35e:	fee69be3          	bne	a3,a4,1c00b354 <keccak_absorb.constprop.1+0x22>
1c00b362:	08700713          	li	a4,135
1c00b366:	09577363          	bgeu	a4,s5,1c00b3ec <keccak_absorb.constprop.1+0xba>
1c00b36a:	08878b13          	addi	s6,a5,136
1c00b36e:	895a                	mv	s2,s6
1c00b370:	08700413          	li	s0,135
1c00b374:	86d2                	mv	a3,s4
1c00b376:	0017c703          	lbu	a4,1(a5)
1c00b37a:	0027ce03          	lbu	t3,2(a5)
1c00b37e:	0057c803          	lbu	a6,5(a5)
1c00b382:	0047cf03          	lbu	t5,4(a5)
1c00b386:	0067c503          	lbu	a0,6(a5)
1c00b38a:	0007ce83          	lbu	t4,0(a5)
1c00b38e:	0037c583          	lbu	a1,3(a5)
1c00b392:	0077c603          	lbu	a2,7(a5)
1c00b396:	0722                	slli	a4,a4,0x8
1c00b398:	0e42                	slli	t3,t3,0x10
1c00b39a:	0822                	slli	a6,a6,0x8
1c00b39c:	0006a303          	lw	t1,0(a3)
1c00b3a0:	0046a883          	lw	a7,4(a3)
1c00b3a4:	01c76733          	or	a4,a4,t3
1c00b3a8:	01e86833          	or	a6,a6,t5
1c00b3ac:	0542                	slli	a0,a0,0x10
1c00b3ae:	01d76733          	or	a4,a4,t4
1c00b3b2:	05e2                	slli	a1,a1,0x18
1c00b3b4:	01056533          	or	a0,a0,a6
1c00b3b8:	0662                	slli	a2,a2,0x18
1c00b3ba:	8f4d                	or	a4,a4,a1
1c00b3bc:	8e49                	or	a2,a2,a0
1c00b3be:	00e34733          	xor	a4,t1,a4
1c00b3c2:	00c8c633          	xor	a2,a7,a2
1c00b3c6:	c298                	sw	a4,0(a3)
1c00b3c8:	c2d0                	sw	a2,4(a3)
1c00b3ca:	07a1                	addi	a5,a5,8
1c00b3cc:	06a1                	addi	a3,a3,8
1c00b3ce:	faf914e3          	bne	s2,a5,1c00b376 <keccak_absorb.constprop.1+0x44>
1c00b3d2:	85d2                	mv	a1,s4
1c00b3d4:	8552                	mv	a0,s4
1c00b3d6:	3e51                	jal	1c00af6a <KeccakF1600_StatePermute>
1c00b3d8:	f78a8a93          	addi	s5,s5,-136
1c00b3dc:	08890913          	addi	s2,s2,136
1c00b3e0:	87da                	mv	a5,s6
1c00b3e2:	01547563          	bgeu	s0,s5,1c00b3ec <keccak_absorb.constprop.1+0xba>
1c00b3e6:	088b0b13          	addi	s6,s6,136
1c00b3ea:	b769                	j	1c00b374 <keccak_absorb.constprop.1+0x42>
1c00b3ec:	0038                	addi	a4,sp,8
1c00b3ee:	09010e13          	addi	t3,sp,144
1c00b3f2:	86ba                	mv	a3,a4
1c00b3f4:	0006a023          	sw	zero,0(a3)
1c00b3f8:	0691                	addi	a3,a3,4
1c00b3fa:	fede1de3          	bne	t3,a3,1c00b3f4 <keccak_absorb.constprop.1+0xc2>
1c00b3fe:	080a8263          	beqz	s5,1c00b482 <keccak_absorb.constprop.1+0x150>
1c00b402:	fffa8693          	addi	a3,s5,-1
1c00b406:	4609                	li	a2,2
1c00b408:	10d67163          	bgeu	a2,a3,1c00b50a <keccak_absorb.constprop.1+0x1d8>
1c00b40c:	ffcaf313          	andi	t1,s5,-4
1c00b410:	86be                	mv	a3,a5
1c00b412:	933e                	add	t1,t1,a5
1c00b414:	883a                	mv	a6,a4
1c00b416:	0016c503          	lbu	a0,1(a3)
1c00b41a:	0006c883          	lbu	a7,0(a3)
1c00b41e:	0026c583          	lbu	a1,2(a3)
1c00b422:	0036c603          	lbu	a2,3(a3)
1c00b426:	0522                	slli	a0,a0,0x8
1c00b428:	01156533          	or	a0,a0,a7
1c00b42c:	05c2                	slli	a1,a1,0x10
1c00b42e:	8dc9                	or	a1,a1,a0
1c00b430:	0662                	slli	a2,a2,0x18
1c00b432:	8e4d                	or	a2,a2,a1
1c00b434:	00c82023          	sw	a2,0(a6)
1c00b438:	0691                	addi	a3,a3,4
1c00b43a:	0811                	addi	a6,a6,4
1c00b43c:	fcd31de3          	bne	t1,a3,1c00b416 <keccak_absorb.constprop.1+0xe4>
1c00b440:	ffcaf693          	andi	a3,s5,-4
1c00b444:	02da8f63          	beq	s5,a3,1c00b482 <keccak_absorb.constprop.1+0x150>
1c00b448:	00d78633          	add	a2,a5,a3
1c00b44c:	00064503          	lbu	a0,0(a2)
1c00b450:	098c                	addi	a1,sp,208
1c00b452:	95b6                	add	a1,a1,a3
1c00b454:	00168613          	addi	a2,a3,1
1c00b458:	f2a58c23          	sb	a0,-200(a1)
1c00b45c:	03567363          	bgeu	a2,s5,1c00b482 <keccak_absorb.constprop.1+0x150>
1c00b460:	00c785b3          	add	a1,a5,a2
1c00b464:	0005c583          	lbu	a1,0(a1)
1c00b468:	0988                	addi	a0,sp,208
1c00b46a:	962a                	add	a2,a2,a0
1c00b46c:	0689                	addi	a3,a3,2
1c00b46e:	f2b60c23          	sb	a1,-200(a2)
1c00b472:	0156f863          	bgeu	a3,s5,1c00b482 <keccak_absorb.constprop.1+0x150>
1c00b476:	97b6                	add	a5,a5,a3
1c00b478:	0007c783          	lbu	a5,0(a5)
1c00b47c:	96aa                	add	a3,a3,a0
1c00b47e:	f2f68c23          	sb	a5,-200(a3)
1c00b482:	099c                	addi	a5,sp,208
1c00b484:	9abe                	add	s5,s5,a5
1c00b486:	f29a8c23          	sb	s1,-200(s5)
1c00b48a:	08f14783          	lbu	a5,143(sp)
1c00b48e:	f807e793          	ori	a5,a5,-128
1c00b492:	08f107a3          	sb	a5,143(sp)
1c00b496:	00174783          	lbu	a5,1(a4)
1c00b49a:	00274303          	lbu	t1,2(a4)
1c00b49e:	00574503          	lbu	a0,5(a4)
1c00b4a2:	00474f03          	lbu	t5,4(a4)
1c00b4a6:	00674583          	lbu	a1,6(a4)
1c00b4aa:	00074e83          	lbu	t4,0(a4)
1c00b4ae:	00374603          	lbu	a2,3(a4)
1c00b4b2:	00774683          	lbu	a3,7(a4)
1c00b4b6:	07a2                	slli	a5,a5,0x8
1c00b4b8:	0342                	slli	t1,t1,0x10
1c00b4ba:	0522                	slli	a0,a0,0x8
1c00b4bc:	0009a883          	lw	a7,0(s3)
1c00b4c0:	0049a803          	lw	a6,4(s3)
1c00b4c4:	0067e7b3          	or	a5,a5,t1
1c00b4c8:	01e56533          	or	a0,a0,t5
1c00b4cc:	05c2                	slli	a1,a1,0x10
1c00b4ce:	01d7e7b3          	or	a5,a5,t4
1c00b4d2:	0662                	slli	a2,a2,0x18
1c00b4d4:	8dc9                	or	a1,a1,a0
1c00b4d6:	06e2                	slli	a3,a3,0x18
1c00b4d8:	8e5d                	or	a2,a2,a5
1c00b4da:	00b6e7b3          	or	a5,a3,a1
1c00b4de:	00c8c633          	xor	a2,a7,a2
1c00b4e2:	00f847b3          	xor	a5,a6,a5
1c00b4e6:	00c9a023          	sw	a2,0(s3)
1c00b4ea:	00f9a223          	sw	a5,4(s3)
1c00b4ee:	0721                	addi	a4,a4,8
1c00b4f0:	09a1                	addi	s3,s3,8
1c00b4f2:	faee12e3          	bne	t3,a4,1c00b496 <keccak_absorb.constprop.1+0x164>
1c00b4f6:	50be                	lw	ra,236(sp)
1c00b4f8:	542e                	lw	s0,232(sp)
1c00b4fa:	549e                	lw	s1,228(sp)
1c00b4fc:	590e                	lw	s2,224(sp)
1c00b4fe:	49fe                	lw	s3,220(sp)
1c00b500:	4a6e                	lw	s4,216(sp)
1c00b502:	4ade                	lw	s5,212(sp)
1c00b504:	4b4e                	lw	s6,208(sp)
1c00b506:	616d                	addi	sp,sp,240
1c00b508:	8082                	ret
1c00b50a:	4681                	li	a3,0
1c00b50c:	bf35                	j	1c00b448 <keccak_absorb.constprop.1+0x116>

1c00b50e <shake128_absorb>:
1c00b50e:	7151                	addi	sp,sp,-240
1c00b510:	cfce                	sw	s3,220(sp)
1c00b512:	89aa                	mv	s3,a0
1c00b514:	0c800513          	li	a0,200
1c00b518:	d5a2                	sw	s0,232(sp)
1c00b51a:	d3a6                	sw	s1,228(sp)
1c00b51c:	d786                	sw	ra,236(sp)
1c00b51e:	d1ca                	sw	s2,224(sp)
1c00b520:	842e                	mv	s0,a1
1c00b522:	84b2                	mv	s1,a2
1c00b524:	159030ef          	jal	ra,1c00ee7c <pi_l2_malloc>
1c00b528:	00a9a023          	sw	a0,0(s3)
1c00b52c:	1c050363          	beqz	a0,1c00b6f2 <shake128_absorb+0x1e4>
1c00b530:	892a                	mv	s2,a0
1c00b532:	0c850713          	addi	a4,a0,200
1c00b536:	87aa                	mv	a5,a0
1c00b538:	4601                	li	a2,0
1c00b53a:	4681                	li	a3,0
1c00b53c:	c390                	sw	a2,0(a5)
1c00b53e:	c3d4                	sw	a3,4(a5)
1c00b540:	07a1                	addi	a5,a5,8
1c00b542:	fef71be3          	bne	a4,a5,1c00b538 <shake128_absorb+0x2a>
1c00b546:	0a700793          	li	a5,167
1c00b54a:	0897f063          	bgeu	a5,s1,1c00b5ca <shake128_absorb+0xbc>
1c00b54e:	0a700993          	li	s3,167
1c00b552:	87a2                	mv	a5,s0
1c00b554:	40890eb3          	sub	t4,s2,s0
1c00b558:	0a840413          	addi	s0,s0,168
1c00b55c:	0017c703          	lbu	a4,1(a5)
1c00b560:	0027ce03          	lbu	t3,2(a5)
1c00b564:	0057c503          	lbu	a0,5(a5)
1c00b568:	0047cf83          	lbu	t6,4(a5)
1c00b56c:	0067c583          	lbu	a1,6(a5)
1c00b570:	0007cf03          	lbu	t5,0(a5)
1c00b574:	0037c603          	lbu	a2,3(a5)
1c00b578:	0077c683          	lbu	a3,7(a5)
1c00b57c:	00fe8833          	add	a6,t4,a5
1c00b580:	0722                	slli	a4,a4,0x8
1c00b582:	0e42                	slli	t3,t3,0x10
1c00b584:	0522                	slli	a0,a0,0x8
1c00b586:	00082303          	lw	t1,0(a6)
1c00b58a:	00482883          	lw	a7,4(a6)
1c00b58e:	01c76733          	or	a4,a4,t3
1c00b592:	01f56533          	or	a0,a0,t6
1c00b596:	05c2                	slli	a1,a1,0x10
1c00b598:	01e76733          	or	a4,a4,t5
1c00b59c:	0662                	slli	a2,a2,0x18
1c00b59e:	8dc9                	or	a1,a1,a0
1c00b5a0:	06e2                	slli	a3,a3,0x18
1c00b5a2:	8f51                	or	a4,a4,a2
1c00b5a4:	8ecd                	or	a3,a3,a1
1c00b5a6:	00e34733          	xor	a4,t1,a4
1c00b5aa:	00d8c6b3          	xor	a3,a7,a3
1c00b5ae:	00e82023          	sw	a4,0(a6)
1c00b5b2:	00d82223          	sw	a3,4(a6)
1c00b5b6:	07a1                	addi	a5,a5,8
1c00b5b8:	faf412e3          	bne	s0,a5,1c00b55c <shake128_absorb+0x4e>
1c00b5bc:	f5848493          	addi	s1,s1,-168
1c00b5c0:	85ca                	mv	a1,s2
1c00b5c2:	854a                	mv	a0,s2
1c00b5c4:	325d                	jal	1c00af6a <KeccakF1600_StatePermute>
1c00b5c6:	f899e6e3          	bltu	s3,s1,1c00b552 <shake128_absorb+0x44>
1c00b5ca:	0b010313          	addi	t1,sp,176
1c00b5ce:	003c                	addi	a5,sp,8
1c00b5d0:	0007a023          	sw	zero,0(a5)
1c00b5d4:	0791                	addi	a5,a5,4
1c00b5d6:	fef31de3          	bne	t1,a5,1c00b5d0 <shake128_absorb+0xc2>
1c00b5da:	c0d9                	beqz	s1,1c00b660 <shake128_absorb+0x152>
1c00b5dc:	fff48793          	addi	a5,s1,-1
1c00b5e0:	4709                	li	a4,2
1c00b5e2:	10f77663          	bgeu	a4,a5,1c00b6ee <shake128_absorb+0x1e0>
1c00b5e6:	ffc4f593          	andi	a1,s1,-4
1c00b5ea:	87a2                	mv	a5,s0
1c00b5ec:	95a2                	add	a1,a1,s0
1c00b5ee:	0028                	addi	a0,sp,8
1c00b5f0:	0017c603          	lbu	a2,1(a5)
1c00b5f4:	0007c803          	lbu	a6,0(a5)
1c00b5f8:	0027c683          	lbu	a3,2(a5)
1c00b5fc:	0037c703          	lbu	a4,3(a5)
1c00b600:	0622                	slli	a2,a2,0x8
1c00b602:	01066633          	or	a2,a2,a6
1c00b606:	06c2                	slli	a3,a3,0x10
1c00b608:	8ed1                	or	a3,a3,a2
1c00b60a:	0762                	slli	a4,a4,0x18
1c00b60c:	8f55                	or	a4,a4,a3
1c00b60e:	c118                	sw	a4,0(a0)
1c00b610:	0791                	addi	a5,a5,4
1c00b612:	0511                	addi	a0,a0,4
1c00b614:	fcf59ee3          	bne	a1,a5,1c00b5f0 <shake128_absorb+0xe2>
1c00b618:	ffc4f793          	andi	a5,s1,-4
1c00b61c:	04f48263          	beq	s1,a5,1c00b660 <shake128_absorb+0x152>
1c00b620:	00f40733          	add	a4,s0,a5
1c00b624:	00074603          	lbu	a2,0(a4)
1c00b628:	0994                	addi	a3,sp,208
1c00b62a:	96be                	add	a3,a3,a5
1c00b62c:	00178713          	addi	a4,a5,1
1c00b630:	f2c68c23          	sb	a2,-200(a3)
1c00b634:	02977663          	bgeu	a4,s1,1c00b660 <shake128_absorb+0x152>
1c00b638:	00e406b3          	add	a3,s0,a4
1c00b63c:	0006c603          	lbu	a2,0(a3)
1c00b640:	0994                	addi	a3,sp,208
1c00b642:	96ba                	add	a3,a3,a4
1c00b644:	f2c68c23          	sb	a2,-200(a3)
1c00b648:	00278713          	addi	a4,a5,2
1c00b64c:	00977a63          	bgeu	a4,s1,1c00b660 <shake128_absorb+0x152>
1c00b650:	00e407b3          	add	a5,s0,a4
1c00b654:	0007c683          	lbu	a3,0(a5)
1c00b658:	099c                	addi	a5,sp,208
1c00b65a:	97ba                	add	a5,a5,a4
1c00b65c:	f2d78c23          	sb	a3,-200(a5)
1c00b660:	099c                	addi	a5,sp,208
1c00b662:	00978633          	add	a2,a5,s1
1c00b666:	47fd                	li	a5,31
1c00b668:	f2f60c23          	sb	a5,-200(a2)
1c00b66c:	0af14703          	lbu	a4,175(sp)
1c00b670:	003c                	addi	a5,sp,8
1c00b672:	40f90933          	sub	s2,s2,a5
1c00b676:	f8076713          	ori	a4,a4,-128
1c00b67a:	0ae107a3          	sb	a4,175(sp)
1c00b67e:	0017c703          	lbu	a4,1(a5)
1c00b682:	0027cf83          	lbu	t6,2(a5)
1c00b686:	0057c883          	lbu	a7,5(a5)
1c00b68a:	0047c503          	lbu	a0,4(a5)
1c00b68e:	0067c803          	lbu	a6,6(a5)
1c00b692:	0007c583          	lbu	a1,0(a5)
1c00b696:	0037c603          	lbu	a2,3(a5)
1c00b69a:	0077c683          	lbu	a3,7(a5)
1c00b69e:	00f90e33          	add	t3,s2,a5
1c00b6a2:	0722                	slli	a4,a4,0x8
1c00b6a4:	0fc2                	slli	t6,t6,0x10
1c00b6a6:	08a2                	slli	a7,a7,0x8
1c00b6a8:	000e2f03          	lw	t5,0(t3)
1c00b6ac:	004e2e83          	lw	t4,4(t3)
1c00b6b0:	01f76733          	or	a4,a4,t6
1c00b6b4:	00a8e8b3          	or	a7,a7,a0
1c00b6b8:	0842                	slli	a6,a6,0x10
1c00b6ba:	8f4d                	or	a4,a4,a1
1c00b6bc:	0662                	slli	a2,a2,0x18
1c00b6be:	01186833          	or	a6,a6,a7
1c00b6c2:	06e2                	slli	a3,a3,0x18
1c00b6c4:	8f51                	or	a4,a4,a2
1c00b6c6:	0106e6b3          	or	a3,a3,a6
1c00b6ca:	00ef4733          	xor	a4,t5,a4
1c00b6ce:	00dec6b3          	xor	a3,t4,a3
1c00b6d2:	00ee2023          	sw	a4,0(t3)
1c00b6d6:	00de2223          	sw	a3,4(t3)
1c00b6da:	07a1                	addi	a5,a5,8
1c00b6dc:	faf311e3          	bne	t1,a5,1c00b67e <shake128_absorb+0x170>
1c00b6e0:	50be                	lw	ra,236(sp)
1c00b6e2:	542e                	lw	s0,232(sp)
1c00b6e4:	549e                	lw	s1,228(sp)
1c00b6e6:	590e                	lw	s2,224(sp)
1c00b6e8:	49fe                	lw	s3,220(sp)
1c00b6ea:	616d                	addi	sp,sp,240
1c00b6ec:	8082                	ret
1c00b6ee:	4781                	li	a5,0
1c00b6f0:	bf05                	j	1c00b620 <shake128_absorb+0x112>
1c00b6f2:	06f00513          	li	a0,111
1c00b6f6:	652020ef          	jal	ra,1c00dd48 <exit>

1c00b6fa <shake128_squeezeblocks>:
1c00b6fa:	1101                	addi	sp,sp,-32
1c00b6fc:	c05a                	sw	s6,0(sp)
1c00b6fe:	ce06                	sw	ra,28(sp)
1c00b700:	cc22                	sw	s0,24(sp)
1c00b702:	ca26                	sw	s1,20(sp)
1c00b704:	c84a                	sw	s2,16(sp)
1c00b706:	c64e                	sw	s3,12(sp)
1c00b708:	c452                	sw	s4,8(sp)
1c00b70a:	c256                	sw	s5,4(sp)
1c00b70c:	00062b03          	lw	s6,0(a2)
1c00b710:	c5f1                	beqz	a1,1c00b7dc <shake128_squeezeblocks+0xe2>
1c00b712:	7ac1                	lui	s5,0xffff0
1c00b714:	ff010a37          	lui	s4,0xff010
1c00b718:	010009b7          	lui	s3,0x1000
1c00b71c:	84ae                	mv	s1,a1
1c00b71e:	892a                	mv	s2,a0
1c00b720:	0a8b0413          	addi	s0,s6,168
1c00b724:	0ffa8a93          	addi	s5,s5,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c00b728:	1a7d                	addi	s4,s4,-1
1c00b72a:	19fd                	addi	s3,s3,-1
1c00b72c:	85da                	mv	a1,s6
1c00b72e:	855a                	mv	a0,s6
1c00b730:	83bff0ef          	jal	ra,1c00af6a <KeccakF1600_StatePermute>
1c00b734:	85da                	mv	a1,s6
1c00b736:	00490813          	addi	a6,s2,4
1c00b73a:	4198                	lw	a4,0(a1)
1c00b73c:	41dc                	lw	a5,4(a1)
1c00b73e:	05a1                	addi	a1,a1,8
1c00b740:	00875893          	srli	a7,a4,0x8
1c00b744:	0087d513          	srli	a0,a5,0x8
1c00b748:	0ff77613          	andi	a2,a4,255
1c00b74c:	0ff7f693          	andi	a3,a5,255
1c00b750:	0ff8f893          	andi	a7,a7,255
1c00b754:	0ff57513          	andi	a0,a0,255
1c00b758:	08a2                	slli	a7,a7,0x8
1c00b75a:	0522                	slli	a0,a0,0x8
1c00b75c:	01567633          	and	a2,a2,s5
1c00b760:	0156f6b3          	and	a3,a3,s5
1c00b764:	01166633          	or	a2,a2,a7
1c00b768:	8ec9                	or	a3,a3,a0
1c00b76a:	00ff08b7          	lui	a7,0xff0
1c00b76e:	00ff0537          	lui	a0,0xff0
1c00b772:	011778b3          	and	a7,a4,a7
1c00b776:	8d7d                	and	a0,a0,a5
1c00b778:	01467633          	and	a2,a2,s4
1c00b77c:	0146f6b3          	and	a3,a3,s4
1c00b780:	01166633          	or	a2,a2,a7
1c00b784:	8ec9                	or	a3,a3,a0
1c00b786:	8361                	srli	a4,a4,0x18
1c00b788:	83e1                	srli	a5,a5,0x18
1c00b78a:	01367633          	and	a2,a2,s3
1c00b78e:	0136f6b3          	and	a3,a3,s3
1c00b792:	0762                	slli	a4,a4,0x18
1c00b794:	07e2                	slli	a5,a5,0x18
1c00b796:	8f51                	or	a4,a4,a2
1c00b798:	8fd5                	or	a5,a5,a3
1c00b79a:	00875e13          	srli	t3,a4,0x8
1c00b79e:	01075313          	srli	t1,a4,0x10
1c00b7a2:	0087d893          	srli	a7,a5,0x8
1c00b7a6:	0107d513          	srli	a0,a5,0x10
1c00b7aa:	8361                	srli	a4,a4,0x18
1c00b7ac:	83e1                	srli	a5,a5,0x18
1c00b7ae:	fec80e23          	sb	a2,-4(a6)
1c00b7b2:	ffc80ea3          	sb	t3,-3(a6)
1c00b7b6:	fe680f23          	sb	t1,-2(a6)
1c00b7ba:	fee80fa3          	sb	a4,-1(a6)
1c00b7be:	00d80023          	sb	a3,0(a6)
1c00b7c2:	011800a3          	sb	a7,1(a6)
1c00b7c6:	00a80123          	sb	a0,2(a6)
1c00b7ca:	00f801a3          	sb	a5,3(a6)
1c00b7ce:	0821                	addi	a6,a6,8
1c00b7d0:	f6b415e3          	bne	s0,a1,1c00b73a <shake128_squeezeblocks+0x40>
1c00b7d4:	14fd                	addi	s1,s1,-1
1c00b7d6:	0a890913          	addi	s2,s2,168
1c00b7da:	f8a9                	bnez	s1,1c00b72c <shake128_squeezeblocks+0x32>
1c00b7dc:	40f2                	lw	ra,28(sp)
1c00b7de:	4462                	lw	s0,24(sp)
1c00b7e0:	44d2                	lw	s1,20(sp)
1c00b7e2:	4942                	lw	s2,16(sp)
1c00b7e4:	49b2                	lw	s3,12(sp)
1c00b7e6:	4a22                	lw	s4,8(sp)
1c00b7e8:	4a92                	lw	s5,4(sp)
1c00b7ea:	4b02                	lw	s6,0(sp)
1c00b7ec:	6105                	addi	sp,sp,32
1c00b7ee:	8082                	ret

1c00b7f0 <shake128_ctx_release>:
1c00b7f0:	4108                	lw	a0,0(a0)
1c00b7f2:	0c800593          	li	a1,200
1c00b7f6:	6920306f          	j	1c00ee88 <pi_l2_free>

1c00b7fa <shake256>:
1c00b7fa:	7131                	addi	sp,sp,-192
1c00b7fc:	db26                	sw	s1,180(sp)
1c00b7fe:	d74e                	sw	s3,172(sp)
1c00b800:	84aa                	mv	s1,a0
1c00b802:	08800993          	li	s3,136
1c00b806:	0c800513          	li	a0,200
1c00b80a:	dd22                	sw	s0,184(sp)
1c00b80c:	d94a                	sw	s2,176(sp)
1c00b80e:	d356                	sw	s5,164(sp)
1c00b810:	df06                	sw	ra,188(sp)
1c00b812:	d552                	sw	s4,168(sp)
1c00b814:	d15a                	sw	s6,160(sp)
1c00b816:	cf5e                	sw	s7,156(sp)
1c00b818:	cd62                	sw	s8,152(sp)
1c00b81a:	0335d9b3          	divu	s3,a1,s3
1c00b81e:	892e                	mv	s2,a1
1c00b820:	8432                	mv	s0,a2
1c00b822:	8ab6                	mv	s5,a3
1c00b824:	658030ef          	jal	ra,1c00ee7c <pi_l2_malloc>
1c00b828:	24050763          	beqz	a0,1c00ba76 <shake256+0x27c>
1c00b82c:	46fd                	li	a3,31
1c00b82e:	8656                	mv	a2,s5
1c00b830:	85a2                	mv	a1,s0
1c00b832:	8a2a                	mv	s4,a0
1c00b834:	3cfd                	jal	1c00b332 <keccak_absorb.constprop.1>
1c00b836:	08700793          	li	a5,135
1c00b83a:	0d27ff63          	bgeu	a5,s2,1c00b918 <shake256+0x11e>
1c00b83e:	00499413          	slli	s0,s3,0x4
1c00b842:	944e                	add	s0,s0,s3
1c00b844:	040e                	slli	s0,s0,0x3
1c00b846:	7bc1                	lui	s7,0xffff0
1c00b848:	ff010b37          	lui	s6,0xff010
1c00b84c:	01000ab7          	lui	s5,0x1000
1c00b850:	9426                	add	s0,s0,s1
1c00b852:	8c26                	mv	s8,s1
1c00b854:	0ffb8b93          	addi	s7,s7,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c00b858:	1b7d                	addi	s6,s6,-1
1c00b85a:	1afd                	addi	s5,s5,-1
1c00b85c:	85d2                	mv	a1,s4
1c00b85e:	8552                	mv	a0,s4
1c00b860:	f0aff0ef          	jal	ra,1c00af6a <KeccakF1600_StatePermute>
1c00b864:	87e2                	mv	a5,s8
1c00b866:	418a0533          	sub	a0,s4,s8
1c00b86a:	088c0593          	addi	a1,s8,136
1c00b86e:	00f50733          	add	a4,a0,a5
1c00b872:	4314                	lw	a3,0(a4)
1c00b874:	4358                	lw	a4,4(a4)
1c00b876:	07a1                	addi	a5,a5,8
1c00b878:	0086d313          	srli	t1,a3,0x8
1c00b87c:	00875893          	srli	a7,a4,0x8
1c00b880:	0ff6f813          	andi	a6,a3,255
1c00b884:	0ff77613          	andi	a2,a4,255
1c00b888:	0ff37313          	andi	t1,t1,255
1c00b88c:	0ff8f893          	andi	a7,a7,255
1c00b890:	0322                	slli	t1,t1,0x8
1c00b892:	08a2                	slli	a7,a7,0x8
1c00b894:	01787833          	and	a6,a6,s7
1c00b898:	01767633          	and	a2,a2,s7
1c00b89c:	00686833          	or	a6,a6,t1
1c00b8a0:	01166633          	or	a2,a2,a7
1c00b8a4:	00ff0337          	lui	t1,0xff0
1c00b8a8:	00ff08b7          	lui	a7,0xff0
1c00b8ac:	0066f333          	and	t1,a3,t1
1c00b8b0:	011778b3          	and	a7,a4,a7
1c00b8b4:	01687833          	and	a6,a6,s6
1c00b8b8:	01667633          	and	a2,a2,s6
1c00b8bc:	00686833          	or	a6,a6,t1
1c00b8c0:	01166633          	or	a2,a2,a7
1c00b8c4:	82e1                	srli	a3,a3,0x18
1c00b8c6:	8361                	srli	a4,a4,0x18
1c00b8c8:	01587833          	and	a6,a6,s5
1c00b8cc:	01567633          	and	a2,a2,s5
1c00b8d0:	06e2                	slli	a3,a3,0x18
1c00b8d2:	0762                	slli	a4,a4,0x18
1c00b8d4:	00d866b3          	or	a3,a6,a3
1c00b8d8:	8f51                	or	a4,a4,a2
1c00b8da:	0086de93          	srli	t4,a3,0x8
1c00b8de:	0106de13          	srli	t3,a3,0x10
1c00b8e2:	00875313          	srli	t1,a4,0x8
1c00b8e6:	01075893          	srli	a7,a4,0x10
1c00b8ea:	82e1                	srli	a3,a3,0x18
1c00b8ec:	8361                	srli	a4,a4,0x18
1c00b8ee:	ff078c23          	sb	a6,-8(a5)
1c00b8f2:	ffd78ca3          	sb	t4,-7(a5)
1c00b8f6:	ffc78d23          	sb	t3,-6(a5)
1c00b8fa:	fed78da3          	sb	a3,-5(a5)
1c00b8fe:	fec78e23          	sb	a2,-4(a5)
1c00b902:	fe678ea3          	sb	t1,-3(a5)
1c00b906:	ff178f23          	sb	a7,-2(a5)
1c00b90a:	fee78fa3          	sb	a4,-1(a5)
1c00b90e:	f6f590e3          	bne	a1,a5,1c00b86e <shake256+0x74>
1c00b912:	8c2e                	mv	s8,a1
1c00b914:	f48594e3          	bne	a1,s0,1c00b85c <shake256+0x62>
1c00b918:	08800593          	li	a1,136
1c00b91c:	02b97933          	remu	s2,s2,a1
1c00b920:	02091263          	bnez	s2,1c00b944 <shake256+0x14a>
1c00b924:	546a                	lw	s0,184(sp)
1c00b926:	50fa                	lw	ra,188(sp)
1c00b928:	54da                	lw	s1,180(sp)
1c00b92a:	594a                	lw	s2,176(sp)
1c00b92c:	59ba                	lw	s3,172(sp)
1c00b92e:	5a9a                	lw	s5,164(sp)
1c00b930:	5b0a                	lw	s6,160(sp)
1c00b932:	4bfa                	lw	s7,156(sp)
1c00b934:	4c6a                	lw	s8,152(sp)
1c00b936:	8552                	mv	a0,s4
1c00b938:	5a2a                	lw	s4,168(sp)
1c00b93a:	0c800593          	li	a1,200
1c00b93e:	6129                	addi	sp,sp,192
1c00b940:	5480306f          	j	1c00ee88 <pi_l2_free>
1c00b944:	85d2                	mv	a1,s4
1c00b946:	8552                	mv	a0,s4
1c00b948:	e22ff0ef          	jal	ra,1c00af6a <KeccakF1600_StatePermute>
1c00b94c:	002c                	addi	a1,sp,8
1c00b94e:	78c1                	lui	a7,0xffff0
1c00b950:	ff010837          	lui	a6,0xff010
1c00b954:	01000537          	lui	a0,0x1000
1c00b958:	09010e13          	addi	t3,sp,144
1c00b95c:	862e                	mv	a2,a1
1c00b95e:	40ba0333          	sub	t1,s4,a1
1c00b962:	0ff88893          	addi	a7,a7,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c00b966:	187d                	addi	a6,a6,-1
1c00b968:	157d                	addi	a0,a0,-1
1c00b96a:	00c307b3          	add	a5,t1,a2
1c00b96e:	0007ae83          	lw	t4,0(a5)
1c00b972:	43d4                	lw	a3,4(a5)
1c00b974:	0621                	addi	a2,a2,8
1c00b976:	008edf93          	srli	t6,t4,0x8
1c00b97a:	0086df13          	srli	t5,a3,0x8
1c00b97e:	0ffef713          	andi	a4,t4,255
1c00b982:	0ff6f793          	andi	a5,a3,255
1c00b986:	0fffff93          	andi	t6,t6,255
1c00b98a:	0fff7f13          	andi	t5,t5,255
1c00b98e:	0fa2                	slli	t6,t6,0x8
1c00b990:	0f22                	slli	t5,t5,0x8
1c00b992:	01177733          	and	a4,a4,a7
1c00b996:	0117f7b3          	and	a5,a5,a7
1c00b99a:	01f76733          	or	a4,a4,t6
1c00b99e:	01e7e7b3          	or	a5,a5,t5
1c00b9a2:	00ff0fb7          	lui	t6,0xff0
1c00b9a6:	00ff0f37          	lui	t5,0xff0
1c00b9aa:	01feffb3          	and	t6,t4,t6
1c00b9ae:	01e6ff33          	and	t5,a3,t5
1c00b9b2:	01077733          	and	a4,a4,a6
1c00b9b6:	0107f7b3          	and	a5,a5,a6
1c00b9ba:	01f76733          	or	a4,a4,t6
1c00b9be:	018ede93          	srli	t4,t4,0x18
1c00b9c2:	01e7e7b3          	or	a5,a5,t5
1c00b9c6:	82e1                	srli	a3,a3,0x18
1c00b9c8:	0ee2                	slli	t4,t4,0x18
1c00b9ca:	8f69                	and	a4,a4,a0
1c00b9cc:	06e2                	slli	a3,a3,0x18
1c00b9ce:	8fe9                	and	a5,a5,a0
1c00b9d0:	01d76733          	or	a4,a4,t4
1c00b9d4:	8fd5                	or	a5,a5,a3
1c00b9d6:	fee62c23          	sw	a4,-8(a2)
1c00b9da:	fef62e23          	sw	a5,-4(a2)
1c00b9de:	f8ce16e3          	bne	t3,a2,1c00b96a <shake256+0x170>
1c00b9e2:	fff90793          	addi	a5,s2,-1
1c00b9e6:	4709                	li	a4,2
1c00b9e8:	08f77363          	bgeu	a4,a5,1c00ba6e <shake256+0x274>
1c00b9ec:	00499413          	slli	s0,s3,0x4
1c00b9f0:	013407b3          	add	a5,s0,s3
1c00b9f4:	078e                	slli	a5,a5,0x3
1c00b9f6:	97a6                	add	a5,a5,s1
1c00b9f8:	0fc97813          	andi	a6,s2,252
1c00b9fc:	983e                	add	a6,a6,a5
1c00b9fe:	4198                	lw	a4,0(a1)
1c00ba00:	0791                	addi	a5,a5,4
1c00ba02:	0591                	addi	a1,a1,4
1c00ba04:	00875513          	srli	a0,a4,0x8
1c00ba08:	01075613          	srli	a2,a4,0x10
1c00ba0c:	01875693          	srli	a3,a4,0x18
1c00ba10:	fea78ea3          	sb	a0,-3(a5)
1c00ba14:	fec78f23          	sb	a2,-2(a5)
1c00ba18:	fed78fa3          	sb	a3,-1(a5)
1c00ba1c:	fee78e23          	sb	a4,-4(a5)
1c00ba20:	fcf81fe3          	bne	a6,a5,1c00b9fe <shake256+0x204>
1c00ba24:	ffc97793          	andi	a5,s2,-4
1c00ba28:	eef90ee3          	beq	s2,a5,1c00b924 <shake256+0x12a>
1c00ba2c:	0918                	addi	a4,sp,144
1c00ba2e:	973e                	add	a4,a4,a5
1c00ba30:	99a2                	add	s3,s3,s0
1c00ba32:	f7874683          	lbu	a3,-136(a4)
1c00ba36:	098e                	slli	s3,s3,0x3
1c00ba38:	99a6                	add	s3,s3,s1
1c00ba3a:	00f98733          	add	a4,s3,a5
1c00ba3e:	00d70023          	sb	a3,0(a4)
1c00ba42:	00178713          	addi	a4,a5,1
1c00ba46:	ed277fe3          	bgeu	a4,s2,1c00b924 <shake256+0x12a>
1c00ba4a:	0914                	addi	a3,sp,144
1c00ba4c:	96ba                	add	a3,a3,a4
1c00ba4e:	f786c683          	lbu	a3,-136(a3)
1c00ba52:	974e                	add	a4,a4,s3
1c00ba54:	0789                	addi	a5,a5,2
1c00ba56:	00d70023          	sb	a3,0(a4)
1c00ba5a:	ed27f5e3          	bgeu	a5,s2,1c00b924 <shake256+0x12a>
1c00ba5e:	0918                	addi	a4,sp,144
1c00ba60:	973e                	add	a4,a4,a5
1c00ba62:	f7874703          	lbu	a4,-136(a4)
1c00ba66:	99be                	add	s3,s3,a5
1c00ba68:	00e98023          	sb	a4,0(s3) # 1000000 <__CTOR_LIST__-0x1b000004>
1c00ba6c:	bd65                	j	1c00b924 <shake256+0x12a>
1c00ba6e:	4781                	li	a5,0
1c00ba70:	00499413          	slli	s0,s3,0x4
1c00ba74:	bf65                	j	1c00ba2c <shake256+0x232>
1c00ba76:	06f00513          	li	a0,111
1c00ba7a:	2ce020ef          	jal	ra,1c00dd48 <exit>

1c00ba7e <sha3_256>:
1c00ba7e:	712d                	addi	sp,sp,-288
1c00ba80:	10812c23          	sw	s0,280(sp)
1c00ba84:	4699                	li	a3,6
1c00ba86:	842a                	mv	s0,a0
1c00ba88:	0828                	addi	a0,sp,24
1c00ba8a:	10112e23          	sw	ra,284(sp)
1c00ba8e:	10912a23          	sw	s1,276(sp)
1c00ba92:	11212823          	sw	s2,272(sp)
1c00ba96:	11312623          	sw	s3,268(sp)
1c00ba9a:	11412423          	sw	s4,264(sp)
1c00ba9e:	11512223          	sw	s5,260(sp)
1c00baa2:	11612023          	sw	s6,256(sp)
1c00baa6:	dfde                	sw	s7,252(sp)
1c00baa8:	dde2                	sw	s8,248(sp)
1c00baaa:	dbe6                	sw	s9,244(sp)
1c00baac:	d9ea                	sw	s10,240(sp)
1c00baae:	d7ee                	sw	s11,236(sp)
1c00bab0:	3049                	jal	1c00b332 <keccak_absorb.constprop.1>
1c00bab2:	082c                	addi	a1,sp,24
1c00bab4:	852e                	mv	a0,a1
1c00bab6:	cb4ff0ef          	jal	ra,1c00af6a <KeccakF1600_StatePermute>
1c00baba:	4372                	lw	t1,28(sp)
1c00babc:	5612                	lw	a2,36(sp)
1c00babe:	5732                	lw	a4,44(sp)
1c00bac0:	5582                	lw	a1,32(sp)
1c00bac2:	56a2                	lw	a3,40(sp)
1c00bac4:	59d2                	lw	s3,52(sp)
1c00bac6:	4ae2                	lw	s5,24(sp)
1c00bac8:	00835293          	srli	t0,t1,0x8
1c00bacc:	00865f13          	srli	t5,a2,0x8
1c00bad0:	00875893          	srli	a7,a4,0x8
1c00bad4:	5a42                	lw	s4,48(sp)
1c00bad6:	0085df93          	srli	t6,a1,0x8
1c00bada:	0086de93          	srli	t4,a3,0x8
1c00bade:	0ff2f293          	andi	t0,t0,255
1c00bae2:	0fff7f13          	andi	t5,t5,255
1c00bae6:	0ff8f893          	andi	a7,a7,255
1c00baea:	0ff37b93          	andi	s7,t1,255
1c00baee:	0ff67913          	andi	s2,a2,255
1c00baf2:	0ff77e13          	andi	t3,a4,255
1c00baf6:	008ad393          	srli	t2,s5,0x8
1c00bafa:	0089d513          	srli	a0,s3,0x8
1c00bafe:	0fffff93          	andi	t6,t6,255
1c00bb02:	0ffefe93          	andi	t4,t4,255
1c00bb06:	02a2                	slli	t0,t0,0x8
1c00bb08:	0f22                	slli	t5,t5,0x8
1c00bb0a:	08a2                	slli	a7,a7,0x8
1c00bb0c:	ff0107b7          	lui	a5,0xff010
1c00bb10:	17fd                	addi	a5,a5,-1
1c00bb12:	0ff5fb13          	andi	s6,a1,255
1c00bb16:	0ff6f493          	andi	s1,a3,255
1c00bb1a:	005be2b3          	or	t0,s7,t0
1c00bb1e:	01e96f33          	or	t5,s2,t5
1c00bb22:	011e68b3          	or	a7,t3,a7
1c00bb26:	0ff3f393          	andi	t2,t2,255
1c00bb2a:	0fa2                	slli	t6,t6,0x8
1c00bb2c:	0ea2                	slli	t4,t4,0x8
1c00bb2e:	0ff57513          	andi	a0,a0,255
1c00bb32:	00ff0bb7          	lui	s7,0xff0
1c00bb36:	0ffafc13          	andi	s8,s5,255
1c00bb3a:	0ff9f913          	andi	s2,s3,255
1c00bb3e:	01767bb3          	and	s7,a2,s7
1c00bb42:	00f8fe33          	and	t3,a7,a5
1c00bb46:	008a5813          	srli	a6,s4,0x8
1c00bb4a:	01fb6fb3          	or	t6,s6,t6
1c00bb4e:	01d4eeb3          	or	t4,s1,t4
1c00bb52:	00ff7f33          	and	t5,t5,a5
1c00bb56:	010008b7          	lui	a7,0x1000
1c00bb5a:	03a2                	slli	t2,t2,0x8
1c00bb5c:	0522                	slli	a0,a0,0x8
1c00bb5e:	00ff04b7          	lui	s1,0xff0
1c00bb62:	00ff0b37          	lui	s6,0xff0
1c00bb66:	8cf5                	and	s1,s1,a3
1c00bb68:	01677b33          	and	s6,a4,s6
1c00bb6c:	00a96533          	or	a0,s2,a0
1c00bb70:	007c63b3          	or	t2,s8,t2
1c00bb74:	fff88913          	addi	s2,a7,-1 # ffffff <__CTOR_LIST__-0x1b000005>
1c00bb78:	00fefeb3          	and	t4,t4,a5
1c00bb7c:	017f6f33          	or	t5,t5,s7
1c00bb80:	0ff87813          	andi	a6,a6,255
1c00bb84:	00ff0c37          	lui	s8,0xff0
1c00bb88:	8261                	srli	a2,a2,0x18
1c00bb8a:	0ffa7d93          	andi	s11,s4,255
1c00bb8e:	0185fc33          	and	s8,a1,s8
1c00bb92:	012f7f33          	and	t5,t5,s2
1c00bb96:	00ffffb3          	and	t6,t6,a5
1c00bb9a:	009eeeb3          	or	t4,t4,s1
1c00bb9e:	016e6e33          	or	t3,t3,s6
1c00bba2:	8361                	srli	a4,a4,0x18
1c00bba4:	0822                	slli	a6,a6,0x8
1c00bba6:	00ff0d37          	lui	s10,0xff0
1c00bbaa:	82e1                	srli	a3,a3,0x18
1c00bbac:	0662                	slli	a2,a2,0x18
1c00bbae:	01aafd33          	and	s10,s5,s10
1c00bbb2:	010de833          	or	a6,s11,a6
1c00bbb6:	012efeb3          	and	t4,t4,s2
1c00bbba:	012e7e33          	and	t3,t3,s2
1c00bbbe:	00cf6633          	or	a2,t5,a2
1c00bbc2:	018ada93          	srli	s5,s5,0x18
1c00bbc6:	018fefb3          	or	t6,t6,s8
1c00bbca:	06e2                	slli	a3,a3,0x18
1c00bbcc:	01871c13          	slli	s8,a4,0x18
1c00bbd0:	00ff0bb7          	lui	s7,0xff0
1c00bbd4:	00f87b33          	and	s6,a6,a5
1c00bbd8:	00dee4b3          	or	s1,t4,a3
1c00bbdc:	017a7bb3          	and	s7,s4,s7
1c00bbe0:	018e66b3          	or	a3,t3,s8
1c00bbe4:	018a9813          	slli	a6,s5,0x18
1c00bbe8:	018a5713          	srli	a4,s4,0x18
1c00bbec:	00865a93          	srli	s5,a2,0x8
1c00bbf0:	01065a13          	srli	s4,a2,0x10
1c00bbf4:	00ff0cb7          	lui	s9,0xff0
1c00bbf8:	8261                	srli	a2,a2,0x18
1c00bbfa:	c232                	sw	a2,4(sp)
1c00bbfc:	01937cb3          	and	s9,t1,s9
1c00bc00:	0086d613          	srli	a2,a3,0x8
1c00bc04:	00f3f3b3          	and	t2,t2,a5
1c00bc08:	00f2f2b3          	and	t0,t0,a5
1c00bc0c:	c432                	sw	a2,8(sp)
1c00bc0e:	01a3e3b3          	or	t2,t2,s10
1c00bc12:	0106d613          	srli	a2,a3,0x10
1c00bc16:	0192e2b3          	or	t0,t0,s9
1c00bc1a:	01835313          	srli	t1,t1,0x18
1c00bc1e:	81e1                	srli	a1,a1,0x18
1c00bc20:	00ff08b7          	lui	a7,0xff0
1c00bc24:	8fe9                	and	a5,a5,a0
1c00bc26:	0123f3b3          	and	t2,t2,s2
1c00bc2a:	0122f2b3          	and	t0,t0,s2
1c00bc2e:	012fffb3          	and	t6,t6,s2
1c00bc32:	c632                	sw	a2,12(sp)
1c00bc34:	0119f8b3          	and	a7,s3,a7
1c00bc38:	4612                	lw	a2,4(sp)
1c00bc3a:	01831513          	slli	a0,t1,0x18
1c00bc3e:	05e2                	slli	a1,a1,0x18
1c00bc40:	017b6333          	or	t1,s6,s7
1c00bc44:	0103e833          	or	a6,t2,a6
1c00bc48:	00a2e533          	or	a0,t0,a0
1c00bc4c:	00bfe5b3          	or	a1,t6,a1
1c00bc50:	0117e8b3          	or	a7,a5,a7
1c00bc54:	01237333          	and	t1,t1,s2
1c00bc58:	0128f8b3          	and	a7,a7,s2
1c00bc5c:	00885d93          	srli	s11,a6,0x8
1c00bc60:	01085d13          	srli	s10,a6,0x10
1c00bc64:	00855c93          	srli	s9,a0,0x8
1c00bc68:	01055c13          	srli	s8,a0,0x10
1c00bc6c:	0085db93          	srli	s7,a1,0x8
1c00bc70:	0105db13          	srli	s6,a1,0x10
1c00bc74:	0104d913          	srli	s2,s1,0x10
1c00bc78:	0189d793          	srli	a5,s3,0x18
1c00bc7c:	8161                	srli	a0,a0,0x18
1c00bc7e:	0084d993          	srli	s3,s1,0x8
1c00bc82:	81e1                	srli	a1,a1,0x18
1c00bc84:	80e1                	srli	s1,s1,0x18
1c00bc86:	01885813          	srli	a6,a6,0x18
1c00bc8a:	01b400a3          	sb	s11,1(s0)
1c00bc8e:	01a40123          	sb	s10,2(s0)
1c00bc92:	019402a3          	sb	s9,5(s0)
1c00bc96:	01840323          	sb	s8,6(s0)
1c00bc9a:	00a403a3          	sb	a0,7(s0)
1c00bc9e:	017404a3          	sb	s7,9(s0)
1c00bca2:	01640523          	sb	s6,10(s0)
1c00bca6:	00b405a3          	sb	a1,11(s0)
1c00bcaa:	015406a3          	sb	s5,13(s0)
1c00bcae:	01440723          	sb	s4,14(s0)
1c00bcb2:	00c407a3          	sb	a2,15(s0)
1c00bcb6:	013408a3          	sb	s3,17(s0)
1c00bcba:	01240923          	sb	s2,18(s0)
1c00bcbe:	009409a3          	sb	s1,19(s0)
1c00bcc2:	00740023          	sb	t2,0(s0)
1c00bcc6:	010401a3          	sb	a6,3(s0)
1c00bcca:	00540223          	sb	t0,4(s0)
1c00bcce:	01f40423          	sb	t6,8(s0)
1c00bcd2:	01e40623          	sb	t5,12(s0)
1c00bcd6:	01d40823          	sb	t4,16(s0)
1c00bcda:	01c40a23          	sb	t3,20(s0)
1c00bcde:	4622                	lw	a2,8(sp)
1c00bce0:	0762                	slli	a4,a4,0x18
1c00bce2:	07e2                	slli	a5,a5,0x18
1c00bce4:	00c40aa3          	sb	a2,21(s0)
1c00bce8:	4632                	lw	a2,12(sp)
1c00bcea:	00e36733          	or	a4,t1,a4
1c00bcee:	00f8e7b3          	or	a5,a7,a5
1c00bcf2:	82e1                	srli	a3,a3,0x18
1c00bcf4:	00c40b23          	sb	a2,22(s0)
1c00bcf8:	00d40ba3          	sb	a3,23(s0)
1c00bcfc:	00875513          	srli	a0,a4,0x8
1c00bd00:	01075593          	srli	a1,a4,0x10
1c00bd04:	0087d613          	srli	a2,a5,0x8
1c00bd08:	0107d693          	srli	a3,a5,0x10
1c00bd0c:	8361                	srli	a4,a4,0x18
1c00bd0e:	83e1                	srli	a5,a5,0x18
1c00bd10:	00640c23          	sb	t1,24(s0)
1c00bd14:	00a40ca3          	sb	a0,25(s0)
1c00bd18:	00b40d23          	sb	a1,26(s0)
1c00bd1c:	00e40da3          	sb	a4,27(s0)
1c00bd20:	01140e23          	sb	a7,28(s0)
1c00bd24:	00c40ea3          	sb	a2,29(s0)
1c00bd28:	00d40f23          	sb	a3,30(s0)
1c00bd2c:	00f40fa3          	sb	a5,31(s0)
1c00bd30:	11c12083          	lw	ra,284(sp)
1c00bd34:	11812403          	lw	s0,280(sp)
1c00bd38:	11412483          	lw	s1,276(sp)
1c00bd3c:	11012903          	lw	s2,272(sp)
1c00bd40:	10c12983          	lw	s3,268(sp)
1c00bd44:	10812a03          	lw	s4,264(sp)
1c00bd48:	10412a83          	lw	s5,260(sp)
1c00bd4c:	10012b03          	lw	s6,256(sp)
1c00bd50:	5bfe                	lw	s7,252(sp)
1c00bd52:	5c6e                	lw	s8,248(sp)
1c00bd54:	5cde                	lw	s9,244(sp)
1c00bd56:	5d4e                	lw	s10,240(sp)
1c00bd58:	5dbe                	lw	s11,236(sp)
1c00bd5a:	6115                	addi	sp,sp,288
1c00bd5c:	8082                	ret

1c00bd5e <sha3_512>:
1c00bd5e:	7105                	addi	sp,sp,-480
1c00bd60:	1c812c23          	sw	s0,472(sp)
1c00bd64:	1d312623          	sw	s3,460(sp)
1c00bd68:	1d412423          	sw	s4,456(sp)
1c00bd6c:	1c112e23          	sw	ra,476(sp)
1c00bd70:	1c912a23          	sw	s1,468(sp)
1c00bd74:	1d212823          	sw	s2,464(sp)
1c00bd78:	1d512223          	sw	s5,452(sp)
1c00bd7c:	1d612023          	sw	s6,448(sp)
1c00bd80:	1b712e23          	sw	s7,444(sp)
1c00bd84:	1b812c23          	sw	s8,440(sp)
1c00bd88:	1b912a23          	sw	s9,436(sp)
1c00bd8c:	1ba12823          	sw	s10,432(sp)
1c00bd90:	1bb12623          	sw	s11,428(sp)
1c00bd94:	842a                	mv	s0,a0
1c00bd96:	8a32                	mv	s4,a2
1c00bd98:	0d810993          	addi	s3,sp,216
1c00bd9c:	081c                	addi	a5,sp,16
1c00bd9e:	4681                	li	a3,0
1c00bda0:	4701                	li	a4,0
1c00bda2:	c394                	sw	a3,0(a5)
1c00bda4:	c3d8                	sw	a4,4(a5)
1c00bda6:	07a1                	addi	a5,a5,8
1c00bda8:	ff379be3          	bne	a5,s3,1c00bd9e <sha3_512+0x40>
1c00bdac:	04700793          	li	a5,71
1c00bdb0:	0947f463          	bgeu	a5,s4,1c00be38 <sha3_512+0xda>
1c00bdb4:	04858a93          	addi	s5,a1,72
1c00bdb8:	8956                	mv	s2,s5
1c00bdba:	04700493          	li	s1,71
1c00bdbe:	0818                	addi	a4,sp,16
1c00bdc0:	0015c783          	lbu	a5,1(a1)
1c00bdc4:	0025ce03          	lbu	t3,2(a1)
1c00bdc8:	0055c803          	lbu	a6,5(a1)
1c00bdcc:	0045cf03          	lbu	t5,4(a1)
1c00bdd0:	0065c503          	lbu	a0,6(a1)
1c00bdd4:	0005ce83          	lbu	t4,0(a1)
1c00bdd8:	0035c603          	lbu	a2,3(a1)
1c00bddc:	0075c683          	lbu	a3,7(a1)
1c00bde0:	07a2                	slli	a5,a5,0x8
1c00bde2:	0e42                	slli	t3,t3,0x10
1c00bde4:	0822                	slli	a6,a6,0x8
1c00bde6:	00072303          	lw	t1,0(a4)
1c00bdea:	00472883          	lw	a7,4(a4)
1c00bdee:	01c7e7b3          	or	a5,a5,t3
1c00bdf2:	01e86833          	or	a6,a6,t5
1c00bdf6:	0542                	slli	a0,a0,0x10
1c00bdf8:	01d7e7b3          	or	a5,a5,t4
1c00bdfc:	0662                	slli	a2,a2,0x18
1c00bdfe:	01056533          	or	a0,a0,a6
1c00be02:	06e2                	slli	a3,a3,0x18
1c00be04:	8fd1                	or	a5,a5,a2
1c00be06:	8ec9                	or	a3,a3,a0
1c00be08:	00f347b3          	xor	a5,t1,a5
1c00be0c:	00d8c6b3          	xor	a3,a7,a3
1c00be10:	c31c                	sw	a5,0(a4)
1c00be12:	c354                	sw	a3,4(a4)
1c00be14:	05a1                	addi	a1,a1,8
1c00be16:	0721                	addi	a4,a4,8
1c00be18:	fb2594e3          	bne	a1,s2,1c00bdc0 <sha3_512+0x62>
1c00be1c:	080c                	addi	a1,sp,16
1c00be1e:	852e                	mv	a0,a1
1c00be20:	94aff0ef          	jal	ra,1c00af6a <KeccakF1600_StatePermute>
1c00be24:	fb8a0a13          	addi	s4,s4,-72 # ff00ffb8 <__l2_shared_end+0xe2ffffb8>
1c00be28:	04890913          	addi	s2,s2,72
1c00be2c:	85d6                	mv	a1,s5
1c00be2e:	0144f563          	bgeu	s1,s4,1c00be38 <sha3_512+0xda>
1c00be32:	048a8a93          	addi	s5,s5,72 # 1000048 <__CTOR_LIST__-0x1affffbc>
1c00be36:	b761                	j	1c00bdbe <sha3_512+0x60>
1c00be38:	1218                	addi	a4,sp,288
1c00be3a:	87ce                	mv	a5,s3
1c00be3c:	0007a023          	sw	zero,0(a5) # ff010000 <__l2_shared_end+0xe3000000>
1c00be40:	0791                	addi	a5,a5,4
1c00be42:	fee79de3          	bne	a5,a4,1c00be3c <sha3_512+0xde>
1c00be46:	080a0063          	beqz	s4,1c00bec6 <sha3_512+0x168>
1c00be4a:	fffa0793          	addi	a5,s4,-1
1c00be4e:	4709                	li	a4,2
1c00be50:	68f77563          	bgeu	a4,a5,1c00c4da <sha3_512+0x77c>
1c00be54:	ffca7813          	andi	a6,s4,-4
1c00be58:	87ae                	mv	a5,a1
1c00be5a:	982e                	add	a6,a6,a1
1c00be5c:	0017c603          	lbu	a2,1(a5)
1c00be60:	0007c503          	lbu	a0,0(a5)
1c00be64:	0027c683          	lbu	a3,2(a5)
1c00be68:	0037c703          	lbu	a4,3(a5)
1c00be6c:	0622                	slli	a2,a2,0x8
1c00be6e:	8e49                	or	a2,a2,a0
1c00be70:	06c2                	slli	a3,a3,0x10
1c00be72:	8ed1                	or	a3,a3,a2
1c00be74:	0762                	slli	a4,a4,0x18
1c00be76:	8f55                	or	a4,a4,a3
1c00be78:	00e9a023          	sw	a4,0(s3)
1c00be7c:	0791                	addi	a5,a5,4
1c00be7e:	0991                	addi	s3,s3,4
1c00be80:	fd079ee3          	bne	a5,a6,1c00be5c <sha3_512+0xfe>
1c00be84:	ffca7793          	andi	a5,s4,-4
1c00be88:	03478f63          	beq	a5,s4,1c00bec6 <sha3_512+0x168>
1c00be8c:	00f58733          	add	a4,a1,a5
1c00be90:	00074603          	lbu	a2,0(a4)
1c00be94:	1314                	addi	a3,sp,416
1c00be96:	96be                	add	a3,a3,a5
1c00be98:	00178713          	addi	a4,a5,1
1c00be9c:	f2c68c23          	sb	a2,-200(a3)
1c00bea0:	03477363          	bgeu	a4,s4,1c00bec6 <sha3_512+0x168>
1c00bea4:	00e586b3          	add	a3,a1,a4
1c00bea8:	0006c683          	lbu	a3,0(a3)
1c00beac:	1310                	addi	a2,sp,416
1c00beae:	9732                	add	a4,a4,a2
1c00beb0:	0789                	addi	a5,a5,2
1c00beb2:	f2d70c23          	sb	a3,-200(a4)
1c00beb6:	0147f863          	bgeu	a5,s4,1c00bec6 <sha3_512+0x168>
1c00beba:	95be                	add	a1,a1,a5
1c00bebc:	0005c703          	lbu	a4,0(a1)
1c00bec0:	97b2                	add	a5,a5,a2
1c00bec2:	f2e78c23          	sb	a4,-200(a5)
1c00bec6:	131c                	addi	a5,sp,416
1c00bec8:	9a3e                	add	s4,s4,a5
1c00beca:	4799                	li	a5,6
1c00becc:	f2fa0c23          	sb	a5,-200(s4)
1c00bed0:	0da14703          	lbu	a4,218(sp)
1c00bed4:	0d914f83          	lbu	t6,217(sp)
1c00bed8:	0e214783          	lbu	a5,226(sp)
1c00bedc:	0e114e83          	lbu	t4,225(sp)
1c00bee0:	0e514303          	lbu	t1,229(sp)
1c00bee4:	0e414383          	lbu	t2,228(sp)
1c00bee8:	0e614803          	lbu	a6,230(sp)
1c00beec:	0d814283          	lbu	t0,216(sp)
1c00bef0:	0e014f03          	lbu	t5,224(sp)
1c00bef4:	0db14503          	lbu	a0,219(sp)
1c00bef8:	0e314603          	lbu	a2,227(sp)
1c00befc:	0e714683          	lbu	a3,231(sp)
1c00bf00:	0fa2                	slli	t6,t6,0x8
1c00bf02:	0ea2                	slli	t4,t4,0x8
1c00bf04:	0742                	slli	a4,a4,0x10
1c00bf06:	07c2                	slli	a5,a5,0x10
1c00bf08:	0322                	slli	t1,t1,0x8
1c00bf0a:	00736333          	or	t1,t1,t2
1c00bf0e:	01f76733          	or	a4,a4,t6
1c00bf12:	01d7e7b3          	or	a5,a5,t4
1c00bf16:	0842                	slli	a6,a6,0x10
1c00bf18:	0dd14e03          	lbu	t3,221(sp)
1c00bf1c:	00576733          	or	a4,a4,t0
1c00bf20:	01e7e7b3          	or	a5,a5,t5
1c00bf24:	00686833          	or	a6,a6,t1
1c00bf28:	0662                	slli	a2,a2,0x18
1c00bf2a:	06e2                	slli	a3,a3,0x18
1c00bf2c:	0562                	slli	a0,a0,0x18
1c00bf2e:	0dc14483          	lbu	s1,220(sp)
1c00bf32:	0de14883          	lbu	a7,222(sp)
1c00bf36:	8d59                	or	a0,a0,a4
1c00bf38:	00f66733          	or	a4,a2,a5
1c00bf3c:	0106e7b3          	or	a5,a3,a6
1c00bf40:	46c2                	lw	a3,16(sp)
1c00bf42:	0df14583          	lbu	a1,223(sp)
1c00bf46:	0e22                	slli	t3,t3,0x8
1c00bf48:	009e6e33          	or	t3,t3,s1
1c00bf4c:	8d35                	xor	a0,a0,a3
1c00bf4e:	08c2                	slli	a7,a7,0x10
1c00bf50:	46d2                	lw	a3,20(sp)
1c00bf52:	01c8e8b3          	or	a7,a7,t3
1c00bf56:	05e2                	slli	a1,a1,0x18
1c00bf58:	0115e5b3          	or	a1,a1,a7
1c00bf5c:	8db5                	xor	a1,a1,a3
1c00bf5e:	46e2                	lw	a3,24(sp)
1c00bf60:	0ea14803          	lbu	a6,234(sp)
1c00bf64:	0e914483          	lbu	s1,233(sp)
1c00bf68:	8eb9                	xor	a3,a3,a4
1c00bf6a:	4772                	lw	a4,28(sp)
1c00bf6c:	0e814a83          	lbu	s5,232(sp)
1c00bf70:	0eb14a03          	lbu	s4,235(sp)
1c00bf74:	8f3d                	xor	a4,a4,a5
1c00bf76:	0ec14d03          	lbu	s10,236(sp)
1c00bf7a:	11f14783          	lbu	a5,287(sp)
1c00bf7e:	0ed14903          	lbu	s2,237(sp)
1c00bf82:	c82a                	sw	a0,16(sp)
1c00bf84:	ca2e                	sw	a1,20(sp)
1c00bf86:	cc36                	sw	a3,24(sp)
1c00bf88:	ce3a                	sw	a4,28(sp)
1c00bf8a:	0ee14f83          	lbu	t6,238(sp)
1c00bf8e:	0f214283          	lbu	t0,242(sp)
1c00bf92:	0f114f03          	lbu	t5,241(sp)
1c00bf96:	0fd14883          	lbu	a7,253(sp)
1c00bf9a:	0fc14b83          	lbu	s7,252(sp)
1c00bf9e:	04a2                	slli	s1,s1,0x8
1c00bfa0:	0842                	slli	a6,a6,0x10
1c00bfa2:	02c2                	slli	t0,t0,0x10
1c00bfa4:	08a2                	slli	a7,a7,0x8
1c00bfa6:	00986833          	or	a6,a6,s1
1c00bfaa:	0f22                	slli	t5,t5,0x8
1c00bfac:	01e2ef33          	or	t5,t0,t5
1c00bfb0:	01586833          	or	a6,a6,s5
1c00bfb4:	0178e2b3          	or	t0,a7,s7
1c00bfb8:	018a1893          	slli	a7,s4,0x18
1c00bfbc:	0108e833          	or	a6,a7,a6
1c00bfc0:	5882                	lw	a7,32(sp)
1c00bfc2:	0ef14503          	lbu	a0,239(sp)
1c00bfc6:	0922                	slli	s2,s2,0x8
1c00bfc8:	01a96933          	or	s2,s2,s10
1c00bfcc:	0108c8b3          	xor	a7,a7,a6
1c00bfd0:	0fc2                	slli	t6,t6,0x10
1c00bfd2:	5812                	lw	a6,36(sp)
1c00bfd4:	0f014983          	lbu	s3,240(sp)
1c00bfd8:	0f314583          	lbu	a1,243(sp)
1c00bfdc:	012fefb3          	or	t6,t6,s2
1c00bfe0:	0562                	slli	a0,a0,0x18
1c00bfe2:	0f514e83          	lbu	t4,245(sp)
1c00bfe6:	01f56533          	or	a0,a0,t6
1c00bfea:	0f414c83          	lbu	s9,244(sp)
1c00bfee:	0f614c03          	lbu	s8,246(sp)
1c00bff2:	00a84833          	xor	a6,a6,a0
1c00bff6:	5522                	lw	a0,40(sp)
1c00bff8:	0f714603          	lbu	a2,247(sp)
1c00bffc:	013f6f33          	or	t5,t5,s3
1c00c000:	05e2                	slli	a1,a1,0x18
1c00c002:	0f914e03          	lbu	t3,249(sp)
1c00c006:	0fa14303          	lbu	t1,250(sp)
1c00c00a:	01e5e5b3          	or	a1,a1,t5
1c00c00e:	0ea2                	slli	t4,t4,0x8
1c00c010:	019ee4b3          	or	s1,t4,s9
1c00c014:	8d2d                	xor	a0,a0,a1
1c00c016:	010c1e93          	slli	t4,s8,0x10
1c00c01a:	55b2                	lw	a1,44(sp)
1c00c01c:	0f814383          	lbu	t2,248(sp)
1c00c020:	0fb14683          	lbu	a3,251(sp)
1c00c024:	009eeeb3          	or	t4,t4,s1
1c00c028:	0662                	slli	a2,a2,0x18
1c00c02a:	01d66633          	or	a2,a2,t4
1c00c02e:	0342                	slli	t1,t1,0x10
1c00c030:	0e22                	slli	t3,t3,0x8
1c00c032:	0fe14b03          	lbu	s6,254(sp)
1c00c036:	8db1                	xor	a1,a1,a2
1c00c038:	006e6e33          	or	t3,t3,t1
1c00c03c:	5642                	lw	a2,48(sp)
1c00c03e:	0ff14703          	lbu	a4,255(sp)
1c00c042:	007e6e33          	or	t3,t3,t2
1c00c046:	06e2                	slli	a3,a3,0x18
1c00c048:	01c6e6b3          	or	a3,a3,t3
1c00c04c:	8e35                	xor	a2,a2,a3
1c00c04e:	010b1313          	slli	t1,s6,0x10
1c00c052:	56d2                	lw	a3,52(sp)
1c00c054:	00536333          	or	t1,t1,t0
1c00c058:	0762                	slli	a4,a4,0x18
1c00c05a:	00676733          	or	a4,a4,t1
1c00c05e:	8f35                	xor	a4,a4,a3
1c00c060:	10114e83          	lbu	t4,257(sp)
1c00c064:	10214a83          	lbu	s5,258(sp)
1c00c068:	d046                	sw	a7,32(sp)
1c00c06a:	d242                	sw	a6,36(sp)
1c00c06c:	d42a                	sw	a0,40(sp)
1c00c06e:	d62e                	sw	a1,44(sp)
1c00c070:	d832                	sw	a2,48(sp)
1c00c072:	da3a                	sw	a4,52(sp)
1c00c074:	10014903          	lbu	s2,256(sp)
1c00c078:	10914303          	lbu	t1,265(sp)
1c00c07c:	10a14983          	lbu	s3,266(sp)
1c00c080:	10814383          	lbu	t2,264(sp)
1c00c084:	10514f83          	lbu	t6,261(sp)
1c00c088:	10b14603          	lbu	a2,267(sp)
1c00c08c:	10414b03          	lbu	s6,260(sp)
1c00c090:	10614e03          	lbu	t3,262(sp)
1c00c094:	09c2                	slli	s3,s3,0x10
1c00c096:	0322                	slli	t1,t1,0x8
1c00c098:	10714583          	lbu	a1,263(sp)
1c00c09c:	01336333          	or	t1,t1,s3
1c00c0a0:	00736333          	or	t1,t1,t2
1c00c0a4:	10d14f03          	lbu	t5,269(sp)
1c00c0a8:	0fa2                	slli	t6,t6,0x8
1c00c0aa:	0662                	slli	a2,a2,0x18
1c00c0ac:	10c14a03          	lbu	s4,268(sp)
1c00c0b0:	016fefb3          	or	t6,t6,s6
1c00c0b4:	11114803          	lbu	a6,273(sp)
1c00c0b8:	11214483          	lbu	s1,274(sp)
1c00c0bc:	10e14883          	lbu	a7,270(sp)
1c00c0c0:	00666633          	or	a2,a2,t1
1c00c0c4:	0e42                	slli	t3,t3,0x10
1c00c0c6:	5372                	lw	t1,60(sp)
1c00c0c8:	01fe6e33          	or	t3,t3,t6
1c00c0cc:	10f14683          	lbu	a3,271(sp)
1c00c0d0:	05e2                	slli	a1,a1,0x18
1c00c0d2:	11014283          	lbu	t0,272(sp)
1c00c0d6:	11314703          	lbu	a4,275(sp)
1c00c0da:	01c5e5b3          	or	a1,a1,t3
1c00c0de:	0f22                	slli	t5,t5,0x8
1c00c0e0:	014f6f33          	or	t5,t5,s4
1c00c0e4:	00b34333          	xor	t1,t1,a1
1c00c0e8:	04c2                	slli	s1,s1,0x10
1c00c0ea:	4596                	lw	a1,68(sp)
1c00c0ec:	0822                	slli	a6,a6,0x8
1c00c0ee:	08c2                	slli	a7,a7,0x10
1c00c0f0:	10314503          	lbu	a0,259(sp)
1c00c0f4:	01e8e8b3          	or	a7,a7,t5
1c00c0f8:	00986833          	or	a6,a6,s1
1c00c0fc:	06e2                	slli	a3,a3,0x18
1c00c0fe:	00586833          	or	a6,a6,t0
1c00c102:	0116e6b3          	or	a3,a3,a7
1c00c106:	0ac2                	slli	s5,s5,0x10
1c00c108:	0ea2                	slli	t4,t4,0x8
1c00c10a:	0762                	slli	a4,a4,0x18
1c00c10c:	5e62                	lw	t3,56(sp)
1c00c10e:	8db5                	xor	a1,a1,a3
1c00c110:	015eeeb3          	or	t4,t4,s5
1c00c114:	46a6                	lw	a3,72(sp)
1c00c116:	01076733          	or	a4,a4,a6
1c00c11a:	4806                	lw	a6,64(sp)
1c00c11c:	012eeeb3          	or	t4,t4,s2
1c00c120:	0562                	slli	a0,a0,0x18
1c00c122:	01d56533          	or	a0,a0,t4
1c00c126:	00ae4e33          	xor	t3,t3,a0
1c00c12a:	00c84833          	xor	a6,a6,a2
1c00c12e:	8f35                	xor	a4,a4,a3
1c00c130:	11414f03          	lbu	t5,276(sp)
1c00c134:	11514883          	lbu	a7,277(sp)
1c00c138:	11614503          	lbu	a0,278(sp)
1c00c13c:	11714603          	lbu	a2,279(sp)
1c00c140:	dc72                	sw	t3,56(sp)
1c00c142:	de1a                	sw	t1,60(sp)
1c00c144:	c0c2                	sw	a6,64(sp)
1c00c146:	c2ae                	sw	a1,68(sp)
1c00c148:	c4ba                	sw	a4,72(sp)
1c00c14a:	11914703          	lbu	a4,281(sp)
1c00c14e:	11a14303          	lbu	t1,282(sp)
1c00c152:	11814e03          	lbu	t3,280(sp)
1c00c156:	11b14683          	lbu	a3,283(sp)
1c00c15a:	0342                	slli	t1,t1,0x10
1c00c15c:	0722                	slli	a4,a4,0x8
1c00c15e:	00676733          	or	a4,a4,t1
1c00c162:	01c76733          	or	a4,a4,t3
1c00c166:	06e2                	slli	a3,a3,0x18
1c00c168:	08a2                	slli	a7,a7,0x8
1c00c16a:	01e8e8b3          	or	a7,a7,t5
1c00c16e:	8f55                	or	a4,a4,a3
1c00c170:	0542                	slli	a0,a0,0x10
1c00c172:	46b6                	lw	a3,76(sp)
1c00c174:	01156533          	or	a0,a0,a7
1c00c178:	0662                	slli	a2,a2,0x18
1c00c17a:	11d14803          	lbu	a6,285(sp)
1c00c17e:	8e49                	or	a2,a2,a0
1c00c180:	11c14e83          	lbu	t4,284(sp)
1c00c184:	8e35                	xor	a2,a2,a3
1c00c186:	11e14583          	lbu	a1,286(sp)
1c00c18a:	46c6                	lw	a3,80(sp)
1c00c18c:	0822                	slli	a6,a6,0x8
1c00c18e:	01d86833          	or	a6,a6,t4
1c00c192:	8eb9                	xor	a3,a3,a4
1c00c194:	0807e793          	ori	a5,a5,128
1c00c198:	4756                	lw	a4,84(sp)
1c00c19a:	05c2                	slli	a1,a1,0x10
1c00c19c:	0105e5b3          	or	a1,a1,a6
1c00c1a0:	07e2                	slli	a5,a5,0x18
1c00c1a2:	8fcd                	or	a5,a5,a1
1c00c1a4:	080c                	addi	a1,sp,16
1c00c1a6:	8fb9                	xor	a5,a5,a4
1c00c1a8:	852e                	mv	a0,a1
1c00c1aa:	c6b2                	sw	a2,76(sp)
1c00c1ac:	c8b6                	sw	a3,80(sp)
1c00c1ae:	cabe                	sw	a5,84(sp)
1c00c1b0:	dbbfe0ef          	jal	ra,1c00af6a <KeccakF1600_StatePermute>
1c00c1b4:	4552                	lw	a0,20(sp)
1c00c1b6:	45f2                	lw	a1,28(sp)
1c00c1b8:	5612                	lw	a2,36(sp)
1c00c1ba:	56b2                	lw	a3,44(sp)
1c00c1bc:	57d2                	lw	a5,52(sp)
1c00c1be:	5772                	lw	a4,60(sp)
1c00c1c0:	00855b13          	srli	s6,a0,0x8
1c00c1c4:	01055a93          	srli	s5,a0,0x10
1c00c1c8:	01855a13          	srli	s4,a0,0x18
1c00c1cc:	0085d993          	srli	s3,a1,0x8
1c00c1d0:	0105d913          	srli	s2,a1,0x10
1c00c1d4:	0185d493          	srli	s1,a1,0x18
1c00c1d8:	0ca10e23          	sb	a0,220(sp)
1c00c1dc:	0d610ea3          	sb	s6,221(sp)
1c00c1e0:	0d510f23          	sb	s5,222(sp)
1c00c1e4:	0d410fa3          	sb	s4,223(sp)
1c00c1e8:	00865393          	srli	t2,a2,0x8
1c00c1ec:	01065293          	srli	t0,a2,0x10
1c00c1f0:	01865f93          	srli	t6,a2,0x18
1c00c1f4:	0086df13          	srli	t5,a3,0x8
1c00c1f8:	0106de93          	srli	t4,a3,0x10
1c00c1fc:	0186de13          	srli	t3,a3,0x18
1c00c200:	0087d313          	srli	t1,a5,0x8
1c00c204:	0107d893          	srli	a7,a5,0x10
1c00c208:	0187d813          	srli	a6,a5,0x18
1c00c20c:	0eb10223          	sb	a1,228(sp)
1c00c210:	0f3102a3          	sb	s3,229(sp)
1c00c214:	0f210323          	sb	s2,230(sp)
1c00c218:	0e9103a3          	sb	s1,231(sp)
1c00c21c:	45c2                	lw	a1,16(sp)
1c00c21e:	4536                	lw	a0,76(sp)
1c00c220:	0ec10623          	sb	a2,236(sp)
1c00c224:	0e7106a3          	sb	t2,237(sp)
1c00c228:	467e                	lw	a2,220(sp)
1c00c22a:	0e510723          	sb	t0,238(sp)
1c00c22e:	0ff107a3          	sb	t6,239(sp)
1c00c232:	0ed10a23          	sb	a3,244(sp)
1c00c236:	0fe10aa3          	sb	t5,245(sp)
1c00c23a:	46e2                	lw	a3,24(sp)
1c00c23c:	0fd10b23          	sb	t4,246(sp)
1c00c240:	0fc10ba3          	sb	t3,247(sp)
1c00c244:	0e610ea3          	sb	t1,253(sp)
1c00c248:	0f110f23          	sb	a7,254(sp)
1c00c24c:	0f010fa3          	sb	a6,255(sp)
1c00c250:	10e10223          	sb	a4,260(sp)
1c00c254:	4816                	lw	a6,68(sp)
1c00c256:	0ef10e23          	sb	a5,252(sp)
1c00c25a:	579e                	lw	a5,228(sp)
1c00c25c:	00875d93          	srli	s11,a4,0x8
1c00c260:	01075d13          	srli	s10,a4,0x10
1c00c264:	00885c93          	srli	s9,a6,0x8
1c00c268:	01085c13          	srli	s8,a6,0x10
1c00c26c:	01885b93          	srli	s7,a6,0x18
1c00c270:	00855b13          	srli	s6,a0,0x8
1c00c274:	01055a93          	srli	s5,a0,0x10
1c00c278:	01855a13          	srli	s4,a0,0x18
1c00c27c:	0085d993          	srli	s3,a1,0x8
1c00c280:	0105d913          	srli	s2,a1,0x10
1c00c284:	0185d493          	srli	s1,a1,0x18
1c00c288:	00865393          	srli	t2,a2,0x8
1c00c28c:	01065293          	srli	t0,a2,0x10
1c00c290:	01865f93          	srli	t6,a2,0x18
1c00c294:	0086df13          	srli	t5,a3,0x8
1c00c298:	0106de93          	srli	t4,a3,0x10
1c00c29c:	0186de13          	srli	t3,a3,0x18
1c00c2a0:	0087d313          	srli	t1,a5,0x8
1c00c2a4:	0107d893          	srli	a7,a5,0x10
1c00c2a8:	00f40623          	sb	a5,12(s0)
1c00c2ac:	8361                	srli	a4,a4,0x18
1c00c2ae:	83e1                	srli	a5,a5,0x18
1c00c2b0:	11b102a3          	sb	s11,261(sp)
1c00c2b4:	11a10323          	sb	s10,262(sp)
1c00c2b8:	10e103a3          	sb	a4,263(sp)
1c00c2bc:	11010623          	sb	a6,268(sp)
1c00c2c0:	4706                	lw	a4,64(sp)
1c00c2c2:	119106a3          	sb	s9,269(sp)
1c00c2c6:	11810723          	sb	s8,270(sp)
1c00c2ca:	117107a3          	sb	s7,271(sp)
1c00c2ce:	10a10a23          	sb	a0,276(sp)
1c00c2d2:	11610aa3          	sb	s6,277(sp)
1c00c2d6:	11510b23          	sb	s5,278(sp)
1c00c2da:	11410ba3          	sb	s4,279(sp)
1c00c2de:	00b40023          	sb	a1,0(s0)
1c00c2e2:	4a26                	lw	s4,72(sp)
1c00c2e4:	55be                	lw	a1,236(sp)
1c00c2e6:	013400a3          	sb	s3,1(s0)
1c00c2ea:	01240123          	sb	s2,2(s0)
1c00c2ee:	009401a3          	sb	s1,3(s0)
1c00c2f2:	00c40223          	sb	a2,4(s0)
1c00c2f6:	007402a3          	sb	t2,5(s0)
1c00c2fa:	565e                	lw	a2,244(sp)
1c00c2fc:	00540323          	sb	t0,6(s0)
1c00c300:	01f403a3          	sb	t6,7(s0)
1c00c304:	01e404a3          	sb	t5,9(s0)
1c00c308:	01d40523          	sb	t4,10(s0)
1c00c30c:	01c405a3          	sb	t3,11(s0)
1c00c310:	006406a3          	sb	t1,13(s0)
1c00c314:	01140723          	sb	a7,14(s0)
1c00c318:	00f407a3          	sb	a5,15(s0)
1c00c31c:	00d40423          	sb	a3,8(s0)
1c00c320:	56fe                	lw	a3,252(sp)
1c00c322:	5502                	lw	a0,32(sp)
1c00c324:	54a2                	lw	s1,40(sp)
1c00c326:	0185db13          	srli	s6,a1,0x18
1c00c32a:	00855d93          	srli	s11,a0,0x8
1c00c32e:	01055d13          	srli	s10,a0,0x10
1c00c332:	01855c93          	srli	s9,a0,0x18
1c00c336:	5522                	lw	a0,40(sp)
1c00c338:	5842                	lw	a6,48(sp)
1c00c33a:	0085dc13          	srli	s8,a1,0x8
1c00c33e:	00855a93          	srli	s5,a0,0x8
1c00c342:	8141                	srli	a0,a0,0x10
1c00c344:	c42a                	sw	a0,8(sp)
1c00c346:	5562                	lw	a0,56(sp)
1c00c348:	0105db93          	srli	s7,a1,0x10
1c00c34c:	00b40a23          	sb	a1,20(s0)
1c00c350:	8161                	srli	a0,a0,0x18
1c00c352:	c22a                	sw	a0,4(sp)
1c00c354:	5502                	lw	a0,32(sp)
1c00c356:	45a2                	lw	a1,8(sp)
1c00c358:	01640ba3          	sb	s6,23(s0)
1c00c35c:	c62a                	sw	a0,12(sp)
1c00c35e:	00c14503          	lbu	a0,12(sp)
1c00c362:	5b22                	lw	s6,40(sp)
1c00c364:	0184d993          	srli	s3,s1,0x18
1c00c368:	00865913          	srli	s2,a2,0x8
1c00c36c:	01065493          	srli	s1,a2,0x10
1c00c370:	01865393          	srli	t2,a2,0x18
1c00c374:	00a10623          	sb	a0,12(sp)
1c00c378:	0ff57513          	andi	a0,a0,255
1c00c37c:	10412783          	lw	a5,260(sp)
1c00c380:	00885293          	srli	t0,a6,0x8
1c00c384:	01085f93          	srli	t6,a6,0x10
1c00c388:	01885f13          	srli	t5,a6,0x18
1c00c38c:	0086de93          	srli	t4,a3,0x8
1c00c390:	5862                	lw	a6,56(sp)
1c00c392:	0106de13          	srli	t3,a3,0x10
1c00c396:	0186d313          	srli	t1,a3,0x18
1c00c39a:	00a40823          	sb	a0,16(s0)
1c00c39e:	01b408a3          	sb	s11,17(s0)
1c00c3a2:	01a40923          	sb	s10,18(s0)
1c00c3a6:	019409a3          	sb	s9,19(s0)
1c00c3aa:	01840aa3          	sb	s8,21(s0)
1c00c3ae:	01740b23          	sb	s7,22(s0)
1c00c3b2:	01640c23          	sb	s6,24(s0)
1c00c3b6:	01540ca3          	sb	s5,25(s0)
1c00c3ba:	00b40d23          	sb	a1,26(s0)
1c00c3be:	01340da3          	sb	s3,27(s0)
1c00c3c2:	01240ea3          	sb	s2,29(s0)
1c00c3c6:	00940f23          	sb	s1,30(s0)
1c00c3ca:	00740fa3          	sb	t2,31(s0)
1c00c3ce:	00c40e23          	sb	a2,28(s0)
1c00c3d2:	5642                	lw	a2,48(sp)
1c00c3d4:	02d40223          	sb	a3,36(s0)
1c00c3d8:	56e2                	lw	a3,56(sp)
1c00c3da:	02c40023          	sb	a2,32(s0)
1c00c3de:	10c12603          	lw	a2,268(sp)
1c00c3e2:	02d40423          	sb	a3,40(s0)
1c00c3e6:	4692                	lw	a3,4(sp)
1c00c3e8:	00885893          	srli	a7,a6,0x8
1c00c3ec:	025400a3          	sb	t0,33(s0)
1c00c3f0:	02d405a3          	sb	a3,43(s0)
1c00c3f4:	11412683          	lw	a3,276(sp)
1c00c3f8:	03f40123          	sb	t6,34(s0)
1c00c3fc:	03e401a3          	sb	t5,35(s0)
1c00c400:	03d402a3          	sb	t4,37(s0)
1c00c404:	03c40323          	sb	t3,38(s0)
1c00c408:	026403a3          	sb	t1,39(s0)
1c00c40c:	02f40623          	sb	a5,44(s0)
1c00c410:	0087d993          	srli	s3,a5,0x8
1c00c414:	0107d913          	srli	s2,a5,0x10
1c00c418:	01085813          	srli	a6,a6,0x10
1c00c41c:	00875493          	srli	s1,a4,0x8
1c00c420:	008a5e13          	srli	t3,s4,0x8
1c00c424:	010a5313          	srli	t1,s4,0x10
1c00c428:	83e1                	srli	a5,a5,0x18
1c00c42a:	01075393          	srli	t2,a4,0x10
1c00c42e:	01875293          	srli	t0,a4,0x18
1c00c432:	00865f93          	srli	t6,a2,0x8
1c00c436:	01065f13          	srli	t5,a2,0x10
1c00c43a:	01865e93          	srli	t4,a2,0x18
1c00c43e:	031404a3          	sb	a7,41(s0)
1c00c442:	03040523          	sb	a6,42(s0)
1c00c446:	033406a3          	sb	s3,45(s0)
1c00c44a:	03240723          	sb	s2,46(s0)
1c00c44e:	029408a3          	sb	s1,49(s0)
1c00c452:	03440c23          	sb	s4,56(s0)
1c00c456:	018a5893          	srli	a7,s4,0x18
1c00c45a:	02f407a3          	sb	a5,47(s0)
1c00c45e:	02e40823          	sb	a4,48(s0)
1c00c462:	02740923          	sb	t2,50(s0)
1c00c466:	025409a3          	sb	t0,51(s0)
1c00c46a:	02c40a23          	sb	a2,52(s0)
1c00c46e:	03f40aa3          	sb	t6,53(s0)
1c00c472:	03e40b23          	sb	t5,54(s0)
1c00c476:	03d40ba3          	sb	t4,55(s0)
1c00c47a:	03c40ca3          	sb	t3,57(s0)
1c00c47e:	02640d23          	sb	t1,58(s0)
1c00c482:	0086d813          	srli	a6,a3,0x8
1c00c486:	0106d513          	srli	a0,a3,0x10
1c00c48a:	0186d593          	srli	a1,a3,0x18
1c00c48e:	03140da3          	sb	a7,59(s0)
1c00c492:	02d40e23          	sb	a3,60(s0)
1c00c496:	03040ea3          	sb	a6,61(s0)
1c00c49a:	02a40f23          	sb	a0,62(s0)
1c00c49e:	02b40fa3          	sb	a1,63(s0)
1c00c4a2:	1dc12083          	lw	ra,476(sp)
1c00c4a6:	1d812403          	lw	s0,472(sp)
1c00c4aa:	1d412483          	lw	s1,468(sp)
1c00c4ae:	1d012903          	lw	s2,464(sp)
1c00c4b2:	1cc12983          	lw	s3,460(sp)
1c00c4b6:	1c812a03          	lw	s4,456(sp)
1c00c4ba:	1c412a83          	lw	s5,452(sp)
1c00c4be:	1c012b03          	lw	s6,448(sp)
1c00c4c2:	1bc12b83          	lw	s7,444(sp)
1c00c4c6:	1b812c03          	lw	s8,440(sp)
1c00c4ca:	1b412c83          	lw	s9,436(sp)
1c00c4ce:	1b012d03          	lw	s10,432(sp)
1c00c4d2:	1ac12d83          	lw	s11,428(sp)
1c00c4d6:	613d                	addi	sp,sp,480
1c00c4d8:	8082                	ret
1c00c4da:	4781                	li	a5,0
1c00c4dc:	ba45                	j	1c00be8c <sha3_512+0x12e>

1c00c4de <PQCLEAN_KYBER768_CLEAN_gen_matrix>:
1c00c4de:	db010113          	addi	sp,sp,-592
1c00c4e2:	21b12e23          	sw	s11,540(sp)
1c00c4e6:	6d85                	lui	s11,0x1
1c00c4e8:	24912223          	sw	s1,580(sp)
1c00c4ec:	25212023          	sw	s2,576(sp)
1c00c4f0:	23512a23          	sw	s5,564(sp)
1c00c4f4:	23612823          	sw	s6,560(sp)
1c00c4f8:	23912223          	sw	s9,548(sp)
1c00c4fc:	23a12023          	sw	s10,544(sp)
1c00c500:	24112623          	sw	ra,588(sp)
1c00c504:	fffd8d13          	addi	s10,s11,-1 # fff <__CTOR_LIST__-0x1bfff005>
1c00c508:	24812423          	sw	s0,584(sp)
1c00c50c:	23312e23          	sw	s3,572(sp)
1c00c510:	23412c23          	sw	s4,568(sp)
1c00c514:	23712623          	sw	s7,556(sp)
1c00c518:	23812423          	sw	s8,552(sp)
1c00c51c:	8cae                	mv	s9,a1
1c00c51e:	c432                	sw	a2,8(sp)
1c00c520:	c62a                	sw	a0,12(sp)
1c00c522:	4b01                	li	s6,0
1c00c524:	20c10a93          	addi	s5,sp,524
1c00c528:	d00d8d93          	addi	s11,s11,-768
1c00c52c:	10000913          	li	s2,256
1c00c530:	1964                	addi	s1,sp,188
1c00c532:	4432                	lw	s0,12(sp)
1c00c534:	0ffb7c13          	andi	s8,s6,255
1c00c538:	4981                	li	s3,0
1c00c53a:	a831                	j	1c00c556 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x78>
1c00c53c:	00f69023          	sh	a5,0(a3)
1c00c540:	15251763          	bne	a0,s2,1c00c68e <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x1b0>
1c00c544:	0808                	addi	a0,sp,16
1c00c546:	aaaff0ef          	jal	ra,1c00b7f0 <shake128_ctx_release>
1c00c54a:	0985                	addi	s3,s3,1
1c00c54c:	478d                	li	a5,3
1c00c54e:	20040413          	addi	s0,s0,512
1c00c552:	0ef98a63          	beq	s3,a5,1c00c646 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x168>
1c00c556:	47a2                	lw	a5,8(sp)
1c00c558:	0ff9f613          	andi	a2,s3,255
1c00c55c:	cff9                	beqz	a5,1c00c63a <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x15c>
1c00c55e:	86b2                	mv	a3,a2
1c00c560:	85e6                	mv	a1,s9
1c00c562:	8662                	mv	a2,s8
1c00c564:	0808                	addi	a0,sp,16
1c00c566:	26e010ef          	jal	ra,1c00d7d4 <PQCLEAN_KYBER768_CLEAN_kyber_shake128_absorb>
1c00c56a:	0810                	addi	a2,sp,16
1c00c56c:	458d                	li	a1,3
1c00c56e:	0848                	addi	a0,sp,20
1c00c570:	98aff0ef          	jal	ra,1c00b6fa <shake128_squeezeblocks>
1c00c574:	4b81                	li	s7,0
1c00c576:	0858                	addi	a4,sp,20
1c00c578:	00174583          	lbu	a1,1(a4)
1c00c57c:	00074603          	lbu	a2,0(a4)
1c00c580:	001b9693          	slli	a3,s7,0x1
1c00c584:	00859793          	slli	a5,a1,0x8
1c00c588:	8fd1                	or	a5,a5,a2
1c00c58a:	01a7f7b3          	and	a5,a5,s10
1c00c58e:	07c2                	slli	a5,a5,0x10
1c00c590:	83c1                	srli	a5,a5,0x10
1c00c592:	00274603          	lbu	a2,2(a4)
1c00c596:	96a2                	add	a3,a3,s0
1c00c598:	0045d313          	srli	t1,a1,0x4
1c00c59c:	001b8513          	addi	a0,s7,1 # ff0001 <__CTOR_LIST__-0x1b010003>
1c00c5a0:	f8fdfee3          	bgeu	s11,a5,1c00c53c <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x5e>
1c00c5a4:	0612                	slli	a2,a2,0x4
1c00c5a6:	00666633          	or	a2,a2,t1
1c00c5aa:	00cdc863          	blt	s11,a2,1c00c5ba <PQCLEAN_KYBER768_CLEAN_gen_matrix+0xdc>
1c00c5ae:	001b9793          	slli	a5,s7,0x1
1c00c5b2:	97a2                	add	a5,a5,s0
1c00c5b4:	00c79023          	sh	a2,0(a5)
1c00c5b8:	0b85                	addi	s7,s7,1
1c00c5ba:	f92b85e3          	beq	s7,s2,1c00c544 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x66>
1c00c5be:	070d                	addi	a4,a4,3
1c00c5c0:	faea9ce3          	bne	s5,a4,1c00c578 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x9a>
1c00c5c4:	0ff00a13          	li	s4,255
1c00c5c8:	a821                	j	1c00c5e0 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x102>
1c00c5ca:	00171593          	slli	a1,a4,0x1
1c00c5ce:	95aa                	add	a1,a1,a0
1c00c5d0:	0705                	addi	a4,a4,1
1c00c5d2:	00f59023          	sh	a5,0(a1)
1c00c5d6:	0c676363          	bltu	a4,t1,1c00c69c <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x1be>
1c00c5da:	9bba                	add	s7,s7,a4
1c00c5dc:	f77a64e3          	bltu	s4,s7,1c00c544 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x66>
1c00c5e0:	0810                	addi	a2,sp,16
1c00c5e2:	0848                	addi	a0,sp,20
1c00c5e4:	4585                	li	a1,1
1c00c5e6:	914ff0ef          	jal	ra,1c00b6fa <shake128_squeezeblocks>
1c00c5ea:	001b9513          	slli	a0,s7,0x1
1c00c5ee:	9522                	add	a0,a0,s0
1c00c5f0:	41790333          	sub	t1,s2,s7
1c00c5f4:	0850                	addi	a2,sp,20
1c00c5f6:	4701                	li	a4,0
1c00c5f8:	00164583          	lbu	a1,1(a2)
1c00c5fc:	00064e03          	lbu	t3,0(a2)
1c00c600:	00264683          	lbu	a3,2(a2)
1c00c604:	00859793          	slli	a5,a1,0x8
1c00c608:	01c7e7b3          	or	a5,a5,t3
1c00c60c:	01a7f7b3          	and	a5,a5,s10
1c00c610:	07c2                	slli	a5,a5,0x10
1c00c612:	0692                	slli	a3,a3,0x4
1c00c614:	8191                	srli	a1,a1,0x4
1c00c616:	83c1                	srli	a5,a5,0x10
1c00c618:	8ecd                	or	a3,a3,a1
1c00c61a:	fafdf8e3          	bgeu	s11,a5,1c00c5ca <PQCLEAN_KYBER768_CLEAN_gen_matrix+0xec>
1c00c61e:	00ddc863          	blt	s11,a3,1c00c62e <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x150>
1c00c622:	00171793          	slli	a5,a4,0x1
1c00c626:	97aa                	add	a5,a5,a0
1c00c628:	00d79023          	sh	a3,0(a5)
1c00c62c:	0705                	addi	a4,a4,1
1c00c62e:	fa6776e3          	bgeu	a4,t1,1c00c5da <PQCLEAN_KYBER768_CLEAN_gen_matrix+0xfc>
1c00c632:	060d                	addi	a2,a2,3
1c00c634:	fcc492e3          	bne	s1,a2,1c00c5f8 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x11a>
1c00c638:	b74d                	j	1c00c5da <PQCLEAN_KYBER768_CLEAN_gen_matrix+0xfc>
1c00c63a:	86e2                	mv	a3,s8
1c00c63c:	85e6                	mv	a1,s9
1c00c63e:	0808                	addi	a0,sp,16
1c00c640:	194010ef          	jal	ra,1c00d7d4 <PQCLEAN_KYBER768_CLEAN_kyber_shake128_absorb>
1c00c644:	b71d                	j	1c00c56a <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x8c>
1c00c646:	47b2                	lw	a5,12(sp)
1c00c648:	0b05                	addi	s6,s6,1
1c00c64a:	60078793          	addi	a5,a5,1536
1c00c64e:	c63e                	sw	a5,12(sp)
1c00c650:	ef3b11e3          	bne	s6,s3,1c00c532 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x54>
1c00c654:	24c12083          	lw	ra,588(sp)
1c00c658:	24812403          	lw	s0,584(sp)
1c00c65c:	24412483          	lw	s1,580(sp)
1c00c660:	24012903          	lw	s2,576(sp)
1c00c664:	23c12983          	lw	s3,572(sp)
1c00c668:	23812a03          	lw	s4,568(sp)
1c00c66c:	23412a83          	lw	s5,564(sp)
1c00c670:	23012b03          	lw	s6,560(sp)
1c00c674:	22c12b83          	lw	s7,556(sp)
1c00c678:	22812c03          	lw	s8,552(sp)
1c00c67c:	22412c83          	lw	s9,548(sp)
1c00c680:	22012d03          	lw	s10,544(sp)
1c00c684:	21c12d83          	lw	s11,540(sp)
1c00c688:	25010113          	addi	sp,sp,592
1c00c68c:	8082                	ret
1c00c68e:	8191                	srli	a1,a1,0x4
1c00c690:	0612                	slli	a2,a2,0x4
1c00c692:	8e4d                	or	a2,a2,a1
1c00c694:	8baa                	mv	s7,a0
1c00c696:	f0cddce3          	bge	s11,a2,1c00c5ae <PQCLEAN_KYBER768_CLEAN_gen_matrix+0xd0>
1c00c69a:	b715                	j	1c00c5be <PQCLEAN_KYBER768_CLEAN_gen_matrix+0xe0>
1c00c69c:	f8ddd3e3          	bge	s11,a3,1c00c622 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x144>
1c00c6a0:	bf49                	j	1c00c632 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x154>

1c00c6a2 <PQCLEAN_KYBER768_CLEAN_indcpa_enc>:
1c00c6a2:	97010113          	addi	sp,sp,-1680
1c00c6a6:	7375                	lui	t1,0xffffd
1c00c6a8:	68112623          	sw	ra,1676(sp)
1c00c6ac:	68812423          	sw	s0,1672(sp)
1c00c6b0:	68912223          	sw	s1,1668(sp)
1c00c6b4:	69212023          	sw	s2,1664(sp)
1c00c6b8:	67312e23          	sw	s3,1660(sp)
1c00c6bc:	67412c23          	sw	s4,1656(sp)
1c00c6c0:	67512a23          	sw	s5,1652(sp)
1c00c6c4:	67612823          	sw	s6,1648(sp)
1c00c6c8:	67712623          	sw	s7,1644(sp)
1c00c6cc:	67812423          	sw	s8,1640(sp)
1c00c6d0:	67912223          	sw	s9,1636(sp)
1c00c6d4:	67a12023          	sw	s10,1632(sp)
1c00c6d8:	65b12e23          	sw	s11,1628(sp)
1c00c6dc:	6c0d                	lui	s8,0x3
1c00c6de:	911a                	add	sp,sp,t1
1c00c6e0:	1818                	addi	a4,sp,48
1c00c6e2:	7979                	lui	s2,0xffffe
1c00c6e4:	620c0793          	addi	a5,s8,1568 # 3620 <__CTOR_LIST__-0x1bffc9e4>
1c00c6e8:	97ba                	add	a5,a5,a4
1c00c6ea:	c0090a13          	addi	s4,s2,-1024 # ffffdc00 <__l2_shared_end+0xe3fedc00>
1c00c6ee:	9a3e                	add	s4,s4,a5
1c00c6f0:	8432                	mv	s0,a2
1c00c6f2:	8aae                	mv	s5,a1
1c00c6f4:	89aa                	mv	s3,a0
1c00c6f6:	85b2                	mv	a1,a2
1c00c6f8:	8552                	mv	a0,s4
1c00c6fa:	84b6                	mv	s1,a3
1c00c6fc:	649000ef          	jal	ra,1c00d544 <PQCLEAN_KYBER768_CLEAN_polyvec_frombytes>
1c00c700:	48244b03          	lbu	s6,1154(s0)
1c00c704:	49444783          	lbu	a5,1172(s0)
1c00c708:	49844703          	lbu	a4,1176(s0)
1c00c70c:	d65a                	sw	s6,44(sp)
1c00c70e:	48b44b03          	lbu	s6,1163(s0)
1c00c712:	48044083          	lbu	ra,1152(s0)
1c00c716:	ca3e                	sw	a5,20(sp)
1c00c718:	c45a                	sw	s6,8(sp)
1c00c71a:	48f44b03          	lbu	s6,1167(s0)
1c00c71e:	ce3a                	sw	a4,28(sp)
1c00c720:	d406                	sw	ra,40(sp)
1c00c722:	48c44c03          	lbu	s8,1164(s0)
1c00c726:	49044b83          	lbu	s7,1168(s0)
1c00c72a:	48544d83          	lbu	s11,1157(s0)
1c00c72e:	48944383          	lbu	t2,1161(s0)
1c00c732:	48d44283          	lbu	t0,1165(s0)
1c00c736:	49144f83          	lbu	t6,1169(s0)
1c00c73a:	49544f03          	lbu	t5,1173(s0)
1c00c73e:	49944e83          	lbu	t4,1177(s0)
1c00c742:	49d44e03          	lbu	t3,1181(s0)
1c00c746:	48144503          	lbu	a0,1153(s0)
1c00c74a:	48444d03          	lbu	s10,1156(s0)
1c00c74e:	48644303          	lbu	t1,1158(s0)
1c00c752:	48844c83          	lbu	s9,1160(s0)
1c00c756:	48a44883          	lbu	a7,1162(s0)
1c00c75a:	48e44803          	lbu	a6,1166(s0)
1c00c75e:	49244603          	lbu	a2,1170(s0)
1c00c762:	49644683          	lbu	a3,1174(s0)
1c00c766:	49a44703          	lbu	a4,1178(s0)
1c00c76a:	49c44583          	lbu	a1,1180(s0)
1c00c76e:	49e44783          	lbu	a5,1182(s0)
1c00c772:	48744083          	lbu	ra,1159(s0)
1c00c776:	c65a                	sw	s6,12(sp)
1c00c778:	49344b03          	lbu	s6,1171(s0)
1c00c77c:	0fa2                	slli	t6,t6,0x8
1c00c77e:	017fefb3          	or	t6,t6,s7
1c00c782:	c85a                	sw	s6,16(sp)
1c00c784:	49744b03          	lbu	s6,1175(s0)
1c00c788:	4bd2                	lw	s7,20(sp)
1c00c78a:	0f22                	slli	t5,t5,0x8
1c00c78c:	cc5a                	sw	s6,24(sp)
1c00c78e:	49b44b03          	lbu	s6,1179(s0)
1c00c792:	017f6f33          	or	t5,t5,s7
1c00c796:	4bf2                	lw	s7,28(sp)
1c00c798:	0e22                	slli	t3,t3,0x8
1c00c79a:	d05a                	sw	s6,32(sp)
1c00c79c:	00be65b3          	or	a1,t3,a1
1c00c7a0:	49f44b03          	lbu	s6,1183(s0)
1c00c7a4:	5e22                	lw	t3,40(sp)
1c00c7a6:	0ea2                	slli	t4,t4,0x8
1c00c7a8:	017eeeb3          	or	t4,t4,s7
1c00c7ac:	06c2                	slli	a3,a3,0x10
1c00c7ae:	0742                	slli	a4,a4,0x10
1c00c7b0:	01e6e6b3          	or	a3,a3,t5
1c00c7b4:	01d76733          	or	a4,a4,t4
1c00c7b8:	4f62                	lw	t5,24(sp)
1c00c7ba:	5e82                	lw	t4,32(sp)
1c00c7bc:	03a2                	slli	t2,t2,0x8
1c00c7be:	02a2                	slli	t0,t0,0x8
1c00c7c0:	0522                	slli	a0,a0,0x8
1c00c7c2:	d25a                	sw	s6,36(sp)
1c00c7c4:	0182e2b3          	or	t0,t0,s8
1c00c7c8:	01c56533          	or	a0,a0,t3
1c00c7cc:	0193e3b3          	or	t2,t2,s9
1c00c7d0:	5e32                	lw	t3,44(sp)
1c00c7d2:	08c2                	slli	a7,a7,0x10
1c00c7d4:	0842                	slli	a6,a6,0x10
1c00c7d6:	0642                	slli	a2,a2,0x10
1c00c7d8:	07c2                	slli	a5,a5,0x10
1c00c7da:	48344b03          	lbu	s6,1155(s0)
1c00c7de:	0078e8b3          	or	a7,a7,t2
1c00c7e2:	00586833          	or	a6,a6,t0
1c00c7e6:	43a2                	lw	t2,8(sp)
1c00c7e8:	42b2                	lw	t0,12(sp)
1c00c7ea:	01f66633          	or	a2,a2,t6
1c00c7ee:	8fcd                	or	a5,a5,a1
1c00c7f0:	4fc2                	lw	t6,16(sp)
1c00c7f2:	5592                	lw	a1,36(sp)
1c00c7f4:	6c0d                	lui	s8,0x3
1c00c7f6:	0f62                	slli	t5,t5,0x18
1c00c7f8:	0ee2                	slli	t4,t4,0x18
1c00c7fa:	0da2                	slli	s11,s11,0x8
1c00c7fc:	00df66b3          	or	a3,t5,a3
1c00c800:	7475                	lui	s0,0xffffd
1c00c802:	03010f13          	addi	t5,sp,48
1c00c806:	00eee733          	or	a4,t4,a4
1c00c80a:	01aded33          	or	s10,s11,s10
1c00c80e:	0342                	slli	t1,t1,0x10
1c00c810:	0e42                	slli	t3,t3,0x10
1c00c812:	620c0e93          	addi	t4,s8,1568 # 3620 <__CTOR_LIST__-0x1bffc9e4>
1c00c816:	00e2                	slli	ra,ra,0x18
1c00c818:	03e2                	slli	t2,t2,0x18
1c00c81a:	02e2                	slli	t0,t0,0x18
1c00c81c:	0fe2                	slli	t6,t6,0x18
1c00c81e:	9efa                	add	t4,t4,t5
1c00c820:	05e2                	slli	a1,a1,0x18
1c00c822:	00ae6e33          	or	t3,t3,a0
1c00c826:	0b62                	slli	s6,s6,0x18
1c00c828:	01a36333          	or	t1,t1,s10
1c00c82c:	c0040513          	addi	a0,s0,-1024 # ffffcc00 <__l2_shared_end+0xe3fecc00>
1c00c830:	0102e833          	or	a6,t0,a6
1c00c834:	00cfe633          	or	a2,t6,a2
1c00c838:	01cb6e33          	or	t3,s6,t3
1c00c83c:	0060e333          	or	t1,ra,t1
1c00c840:	0113e8b3          	or	a7,t2,a7
1c00c844:	9576                	add	a0,a0,t4
1c00c846:	8fcd                	or	a5,a5,a1
1c00c848:	85d6                	mv	a1,s5
1c00c84a:	de42                	sw	a6,60(sp)
1c00c84c:	d872                	sw	t3,48(sp)
1c00c84e:	da1a                	sw	t1,52(sp)
1c00c850:	dc46                	sw	a7,56(sp)
1c00c852:	c2b6                	sw	a3,68(sp)
1c00c854:	c0b2                	sw	a2,64(sp)
1c00c856:	c4ba                	sw	a4,72(sp)
1c00c858:	c6be                	sw	a5,76(sp)
1c00c85a:	7ea000ef          	jal	ra,1c00d044 <PQCLEAN_KYBER768_CLEAN_poly_frommsg>
1c00c85e:	1818                	addi	a4,sp,48
1c00c860:	7b7d                	lui	s6,0xfffff
1c00c862:	620c0793          	addi	a5,s8,1568
1c00c866:	97ba                	add	a5,a5,a4
1c00c868:	e00b0b93          	addi	s7,s6,-512 # ffffee00 <__l2_shared_end+0xe3feee00>
1c00c86c:	9bbe                	add	s7,s7,a5
1c00c86e:	620c0793          	addi	a5,s8,1568
1c00c872:	97ba                	add	a5,a5,a4
1c00c874:	9e040593          	addi	a1,s0,-1568
1c00c878:	95be                	add	a1,a1,a5
1c00c87a:	4605                	li	a2,1
1c00c87c:	855e                	mv	a0,s7
1c00c87e:	3185                	jal	1c00c4de <PQCLEAN_KYBER768_CLEAN_gen_matrix>
1c00c880:	1818                	addi	a4,sp,48
1c00c882:	620c0793          	addi	a5,s8,1568
1c00c886:	97ba                	add	a5,a5,a4
1c00c888:	60040a93          	addi	s5,s0,1536
1c00c88c:	9abe                	add	s5,s5,a5
1c00c88e:	85a6                	mv	a1,s1
1c00c890:	4601                	li	a2,0
1c00c892:	8556                	mv	a0,s5
1c00c894:	187000ef          	jal	ra,1c00d21a <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c00c898:	85a6                	mv	a1,s1
1c00c89a:	4605                	li	a2,1
1c00c89c:	200a8513          	addi	a0,s5,512
1c00c8a0:	17b000ef          	jal	ra,1c00d21a <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c00c8a4:	85a6                	mv	a1,s1
1c00c8a6:	4609                	li	a2,2
1c00c8a8:	400a8513          	addi	a0,s5,1024
1c00c8ac:	16f000ef          	jal	ra,1c00d21a <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c00c8b0:	1818                	addi	a4,sp,48
1c00c8b2:	620c0793          	addi	a5,s8,1568
1c00c8b6:	97ba                	add	a5,a5,a4
1c00c8b8:	20090913          	addi	s2,s2,512
1c00c8bc:	993e                	add	s2,s2,a5
1c00c8be:	85a6                	mv	a1,s1
1c00c8c0:	460d                	li	a2,3
1c00c8c2:	854a                	mv	a0,s2
1c00c8c4:	17b000ef          	jal	ra,1c00d23e <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta2>
1c00c8c8:	85a6                	mv	a1,s1
1c00c8ca:	4611                	li	a2,4
1c00c8cc:	20090513          	addi	a0,s2,512
1c00c8d0:	16f000ef          	jal	ra,1c00d23e <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta2>
1c00c8d4:	85a6                	mv	a1,s1
1c00c8d6:	4615                	li	a2,5
1c00c8d8:	40090513          	addi	a0,s2,1024
1c00c8dc:	163000ef          	jal	ra,1c00d23e <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta2>
1c00c8e0:	1818                	addi	a4,sp,48
1c00c8e2:	620c0793          	addi	a5,s8,1568
1c00c8e6:	97ba                	add	a5,a5,a4
1c00c8e8:	e0040513          	addi	a0,s0,-512
1c00c8ec:	85a6                	mv	a1,s1
1c00c8ee:	953e                	add	a0,a0,a5
1c00c8f0:	4619                	li	a2,6
1c00c8f2:	14d000ef          	jal	ra,1c00d23e <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta2>
1c00c8f6:	8556                	mv	a0,s5
1c00c8f8:	477000ef          	jal	ra,1c00d56e <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>
1c00c8fc:	1818                	addi	a4,sp,48
1c00c8fe:	620c0793          	addi	a5,s8,1568
1c00c902:	97ba                	add	a5,a5,a4
1c00c904:	800b0493          	addi	s1,s6,-2048
1c00c908:	94be                	add	s1,s1,a5
1c00c90a:	85de                	mv	a1,s7
1c00c90c:	8526                	mv	a0,s1
1c00c90e:	8656                	mv	a2,s5
1c00c910:	5e7000ef          	jal	ra,1c00d6f6 <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c00c914:	8656                	mv	a2,s5
1c00c916:	600b8593          	addi	a1,s7,1536
1c00c91a:	20048513          	addi	a0,s1,512 # ff0200 <__CTOR_LIST__-0x1b00fe04>
1c00c91e:	5d9000ef          	jal	ra,1c00d6f6 <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c00c922:	020c0793          	addi	a5,s8,32
1c00c926:	1818                	addi	a4,sp,48
1c00c928:	00f705b3          	add	a1,a4,a5
1c00c92c:	8656                	mv	a2,s5
1c00c92e:	40048513          	addi	a0,s1,1024
1c00c932:	5c5000ef          	jal	ra,1c00d6f6 <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c00c936:	1818                	addi	a4,sp,48
1c00c938:	620c0793          	addi	a5,s8,1568
1c00c93c:	97ba                	add	a5,a5,a4
1c00c93e:	a0040513          	addi	a0,s0,-1536
1c00c942:	953e                	add	a0,a0,a5
1c00c944:	8656                	mv	a2,s5
1c00c946:	85d2                	mv	a1,s4
1c00c948:	5af000ef          	jal	ra,1c00d6f6 <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c00c94c:	8526                	mv	a0,s1
1c00c94e:	4d9000ef          	jal	ra,1c00d626 <PQCLEAN_KYBER768_CLEAN_polyvec_invntt_tomont>
1c00c952:	65010713          	addi	a4,sp,1616
1c00c956:	a0070793          	addi	a5,a4,-1536
1c00c95a:	25010813          	addi	a6,sp,592
1c00c95e:	4388                	lw	a0,0(a5)
1c00c960:	43cc                	lw	a1,4(a5)
1c00c962:	4790                	lw	a2,8(a5)
1c00c964:	47d4                	lw	a3,12(a5)
1c00c966:	c308                	sw	a0,0(a4)
1c00c968:	c34c                	sw	a1,4(a4)
1c00c96a:	c710                	sw	a2,8(a4)
1c00c96c:	c754                	sw	a3,12(a4)
1c00c96e:	07c1                	addi	a5,a5,16
1c00c970:	0741                	addi	a4,a4,16
1c00c972:	ff0796e3          	bne	a5,a6,1c00c95e <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0x2bc>
1c00c976:	678d                	lui	a5,0x3
1c00c978:	62078793          	addi	a5,a5,1568 # 3620 <__CTOR_LIST__-0x1bffc9e4>
1c00c97c:	1814                	addi	a3,sp,48
1c00c97e:	7775                	lui	a4,0xffffd
1c00c980:	97b6                	add	a5,a5,a3
1c00c982:	973e                	add	a4,a4,a5
1c00c984:	6341                	lui	t1,0x10
1c00c986:	4581                	li	a1,0
1c00c988:	137d                	addi	t1,t1,-1
1c00c98a:	7475                	lui	s0,0xffffd
1c00c98c:	8e3a                	mv	t3,a4
1c00c98e:	10000e93          	li	t4,256
1c00c992:	00071603          	lh	a2,0(a4) # ffffd000 <__l2_shared_end+0xe3fed000>
1c00c996:	00471883          	lh	a7,4(a4)
1c00c99a:	00271683          	lh	a3,2(a4)
1c00c99e:	00671803          	lh	a6,6(a4)
1c00c9a2:	4015d793          	srai	a5,a1,0x1
1c00c9a6:	00279513          	slli	a0,a5,0x2
1c00c9aa:	0642                	slli	a2,a2,0x10
1c00c9ac:	0068f8b3          	and	a7,a7,t1
1c00c9b0:	0785                	addi	a5,a5,1
1c00c9b2:	06c2                	slli	a3,a3,0x10
1c00c9b4:	00687833          	and	a6,a6,t1
1c00c9b8:	9572                	add	a0,a0,t3
1c00c9ba:	01166633          	or	a2,a2,a7
1c00c9be:	078a                	slli	a5,a5,0x2
1c00c9c0:	0106e6b3          	or	a3,a3,a6
1c00c9c4:	20c52023          	sw	a2,512(a0) # 1000200 <__CTOR_LIST__-0x1afffe04>
1c00c9c8:	97f2                	add	a5,a5,t3
1c00c9ca:	20d7a023          	sw	a3,512(a5)
1c00c9ce:	0591                	addi	a1,a1,4
1c00c9d0:	0721                	addi	a4,a4,8
1c00c9d2:	fdd590e3          	bne	a1,t4,1c00c992 <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0x2f0>
1c00c9d6:	690d                	lui	s2,0x3
1c00c9d8:	1818                	addi	a4,sp,48
1c00c9da:	62090793          	addi	a5,s2,1568 # 3620 <__CTOR_LIST__-0x1bffc9e4>
1c00c9de:	97ba                	add	a5,a5,a4
1c00c9e0:	40040593          	addi	a1,s0,1024 # ffffd400 <__l2_shared_end+0xe3fed400>
1c00c9e4:	00b784b3          	add	s1,a5,a1
1c00c9e8:	62090793          	addi	a5,s2,1568
1c00c9ec:	97ba                	add	a5,a5,a4
1c00c9ee:	20040513          	addi	a0,s0,512
1c00c9f2:	85a6                	mv	a1,s1
1c00c9f4:	953e                	add	a0,a0,a5
1c00c9f6:	e46fe0ef          	jal	ra,1c00b03c <KYBER_poly_intt>
1c00c9fa:	62090713          	addi	a4,s2,1568
1c00c9fe:	1814                	addi	a3,sp,48
1c00ca00:	a0040793          	addi	a5,s0,-1536
1c00ca04:	9736                	add	a4,a4,a3
1c00ca06:	97ba                	add	a5,a5,a4
1c00ca08:	85a6                	mv	a1,s1
1c00ca0a:	10078613          	addi	a2,a5,256
1c00ca0e:	4198                	lw	a4,0(a1)
1c00ca10:	0789                	addi	a5,a5,2
1c00ca12:	0591                	addi	a1,a1,4
1c00ca14:	01075693          	srli	a3,a4,0x10
1c00ca18:	fed79f23          	sh	a3,-2(a5)
1c00ca1c:	0ee79f23          	sh	a4,254(a5)
1c00ca20:	fec797e3          	bne	a5,a2,1c00ca0e <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0x36c>
1c00ca24:	678d                	lui	a5,0x3
1c00ca26:	1814                	addi	a3,sp,48
1c00ca28:	62078713          	addi	a4,a5,1568 # 3620 <__CTOR_LIST__-0x1bffc9e4>
1c00ca2c:	74fd                	lui	s1,0xfffff
1c00ca2e:	9736                	add	a4,a4,a3
1c00ca30:	8a3e                	mv	s4,a5
1c00ca32:	80048493          	addi	s1,s1,-2048 # ffffe800 <__l2_shared_end+0xe3fee800>
1c00ca36:	7679                	lui	a2,0xffffe
1c00ca38:	62078793          	addi	a5,a5,1568
1c00ca3c:	97b6                	add	a5,a5,a3
1c00ca3e:	94ba                	add	s1,s1,a4
1c00ca40:	20060613          	addi	a2,a2,512 # ffffe200 <__l2_shared_end+0xe3fee200>
1c00ca44:	963e                	add	a2,a2,a5
1c00ca46:	85a6                	mv	a1,s1
1c00ca48:	8526                	mv	a0,s1
1c00ca4a:	527000ef          	jal	ra,1c00d770 <PQCLEAN_KYBER768_CLEAN_polyvec_add>
1c00ca4e:	1818                	addi	a4,sp,48
1c00ca50:	7975                	lui	s2,0xffffd
1c00ca52:	620a0793          	addi	a5,s4,1568
1c00ca56:	97ba                	add	a5,a5,a4
1c00ca58:	a0090413          	addi	s0,s2,-1536 # ffffca00 <__l2_shared_end+0xe3feca00>
1c00ca5c:	943e                	add	s0,s0,a5
1c00ca5e:	620a0793          	addi	a5,s4,1568
1c00ca62:	97ba                	add	a5,a5,a4
1c00ca64:	e0090613          	addi	a2,s2,-512
1c00ca68:	963e                	add	a2,a2,a5
1c00ca6a:	85a2                	mv	a1,s0
1c00ca6c:	8522                	mv	a0,s0
1c00ca6e:	0f3000ef          	jal	ra,1c00d360 <PQCLEAN_KYBER768_CLEAN_poly_add>
1c00ca72:	1818                	addi	a4,sp,48
1c00ca74:	620a0793          	addi	a5,s4,1568
1c00ca78:	97ba                	add	a5,a5,a4
1c00ca7a:	c0090613          	addi	a2,s2,-1024
1c00ca7e:	963e                	add	a2,a2,a5
1c00ca80:	85a2                	mv	a1,s0
1c00ca82:	8522                	mv	a0,s0
1c00ca84:	0dd000ef          	jal	ra,1c00d360 <PQCLEAN_KYBER768_CLEAN_poly_add>
1c00ca88:	8526                	mv	a0,s1
1c00ca8a:	4cb000ef          	jal	ra,1c00d754 <PQCLEAN_KYBER768_CLEAN_polyvec_reduce>
1c00ca8e:	8522                	mv	a0,s0
1c00ca90:	0a9000ef          	jal	ra,1c00d338 <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c00ca94:	85a6                	mv	a1,s1
1c00ca96:	854e                	mv	a0,s3
1c00ca98:	11b000ef          	jal	ra,1c00d3b2 <PQCLEAN_KYBER768_CLEAN_polyvec_compress>
1c00ca9c:	85a2                	mv	a1,s0
1c00ca9e:	3c098513          	addi	a0,s3,960
1c00caa2:	26d5                	jal	1c00ce86 <PQCLEAN_KYBER768_CLEAN_poly_compress>
1c00caa4:	630d                	lui	t1,0x3
1c00caa6:	911a                	add	sp,sp,t1
1c00caa8:	68c12083          	lw	ra,1676(sp)
1c00caac:	68812403          	lw	s0,1672(sp)
1c00cab0:	68412483          	lw	s1,1668(sp)
1c00cab4:	68012903          	lw	s2,1664(sp)
1c00cab8:	67c12983          	lw	s3,1660(sp)
1c00cabc:	67812a03          	lw	s4,1656(sp)
1c00cac0:	67412a83          	lw	s5,1652(sp)
1c00cac4:	67012b03          	lw	s6,1648(sp)
1c00cac8:	66c12b83          	lw	s7,1644(sp)
1c00cacc:	66812c03          	lw	s8,1640(sp)
1c00cad0:	66412c83          	lw	s9,1636(sp)
1c00cad4:	66012d03          	lw	s10,1632(sp)
1c00cad8:	65c12d83          	lw	s11,1628(sp)
1c00cadc:	69010113          	addi	sp,sp,1680
1c00cae0:	8082                	ret

1c00cae2 <PQCLEAN_KYBER768_CLEAN_indcpa_dec>:
1c00cae2:	9d010113          	addi	sp,sp,-1584
1c00cae6:	737d                	lui	t1,0xfffff
1c00cae8:	62112623          	sw	ra,1580(sp)
1c00caec:	62812423          	sw	s0,1576(sp)
1c00caf0:	62912223          	sw	s1,1572(sp)
1c00caf4:	63212023          	sw	s2,1568(sp)
1c00caf8:	61312e23          	sw	s3,1564(sp)
1c00cafc:	61412c23          	sw	s4,1560(sp)
1c00cb00:	61512a23          	sw	s5,1556(sp)
1c00cb04:	911a                	add	sp,sp,t1
1c00cb06:	6a85                	lui	s5,0x1
1c00cb08:	797d                	lui	s2,0xfffff
1c00cb0a:	0818                	addi	a4,sp,16
1c00cb0c:	600a8793          	addi	a5,s5,1536 # 1600 <__CTOR_LIST__-0x1bffea04>
1c00cb10:	97ba                	add	a5,a5,a4
1c00cb12:	40090413          	addi	s0,s2,1024 # fffff400 <__l2_shared_end+0xe3fef400>
1c00cb16:	943e                	add	s0,s0,a5
1c00cb18:	84aa                	mv	s1,a0
1c00cb1a:	8522                	mv	a0,s0
1c00cb1c:	89b2                	mv	s3,a2
1c00cb1e:	8a2e                	mv	s4,a1
1c00cb20:	177000ef          	jal	ra,1c00d496 <PQCLEAN_KYBER768_CLEAN_polyvec_decompress>
1c00cb24:	0818                	addi	a4,sp,16
1c00cb26:	600a8793          	addi	a5,s5,1536
1c00cb2a:	97ba                	add	a5,a5,a4
1c00cb2c:	a0090513          	addi	a0,s2,-1536
1c00cb30:	953e                	add	a0,a0,a5
1c00cb32:	3c0a0593          	addi	a1,s4,960
1c00cb36:	2145                	jal	1c00cfd6 <PQCLEAN_KYBER768_CLEAN_poly_decompress>
1c00cb38:	081c                	addi	a5,sp,16
1c00cb3a:	6505                	lui	a0,0x1
1c00cb3c:	953e                	add	a0,a0,a5
1c00cb3e:	85ce                	mv	a1,s3
1c00cb40:	205000ef          	jal	ra,1c00d544 <PQCLEAN_KYBER768_CLEAN_polyvec_frombytes>
1c00cb44:	8522                	mv	a0,s0
1c00cb46:	229000ef          	jal	ra,1c00d56e <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>
1c00cb4a:	081c                	addi	a5,sp,16
1c00cb4c:	6585                	lui	a1,0x1
1c00cb4e:	0818                	addi	a4,sp,16
1c00cb50:	95be                	add	a1,a1,a5
1c00cb52:	600a8793          	addi	a5,s5,1536
1c00cb56:	97ba                	add	a5,a5,a4
1c00cb58:	c0090513          	addi	a0,s2,-1024
1c00cb5c:	953e                	add	a0,a0,a5
1c00cb5e:	8622                	mv	a2,s0
1c00cb60:	397000ef          	jal	ra,1c00d6f6 <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c00cb64:	0818                	addi	a4,sp,16
1c00cb66:	600a8793          	addi	a5,s5,1536
1c00cb6a:	97ba                	add	a5,a5,a4
1c00cb6c:	97ca                	add	a5,a5,s2
1c00cb6e:	e0078713          	addi	a4,a5,-512
1c00cb72:	c63e                	sw	a5,12(sp)
1c00cb74:	883a                	mv	a6,a4
1c00cb76:	c0078793          	addi	a5,a5,-1024
1c00cb7a:	4388                	lw	a0,0(a5)
1c00cb7c:	43cc                	lw	a1,4(a5)
1c00cb7e:	4790                	lw	a2,8(a5)
1c00cb80:	47d4                	lw	a3,12(a5)
1c00cb82:	c308                	sw	a0,0(a4)
1c00cb84:	c34c                	sw	a1,4(a4)
1c00cb86:	c710                	sw	a2,8(a4)
1c00cb88:	c754                	sw	a3,12(a4)
1c00cb8a:	07c1                	addi	a5,a5,16
1c00cb8c:	0741                	addi	a4,a4,16
1c00cb8e:	ff0796e3          	bne	a5,a6,1c00cb7a <PQCLEAN_KYBER768_CLEAN_indcpa_dec+0x98>
1c00cb92:	6785                	lui	a5,0x1
1c00cb94:	777d                	lui	a4,0xfffff
1c00cb96:	60078793          	addi	a5,a5,1536 # 1600 <__CTOR_LIST__-0x1bffea04>
1c00cb9a:	0814                	addi	a3,sp,16
1c00cb9c:	e0070713          	addi	a4,a4,-512 # ffffee00 <__l2_shared_end+0xe3feee00>
1c00cba0:	97b6                	add	a5,a5,a3
1c00cba2:	6341                	lui	t1,0x10
1c00cba4:	747d                	lui	s0,0xfffff
1c00cba6:	973e                	add	a4,a4,a5
1c00cba8:	4581                	li	a1,0
1c00cbaa:	137d                	addi	t1,t1,-1
1c00cbac:	10000e13          	li	t3,256
1c00cbb0:	00071603          	lh	a2,0(a4)
1c00cbb4:	00471883          	lh	a7,4(a4)
1c00cbb8:	00271683          	lh	a3,2(a4)
1c00cbbc:	00671803          	lh	a6,6(a4)
1c00cbc0:	4015d793          	srai	a5,a1,0x1
1c00cbc4:	00279513          	slli	a0,a5,0x2
1c00cbc8:	61010e93          	addi	t4,sp,1552
1c00cbcc:	0642                	slli	a2,a2,0x10
1c00cbce:	0068f8b3          	and	a7,a7,t1
1c00cbd2:	0785                	addi	a5,a5,1
1c00cbd4:	06c2                	slli	a3,a3,0x10
1c00cbd6:	00687833          	and	a6,a6,t1
1c00cbda:	9576                	add	a0,a0,t4
1c00cbdc:	01166633          	or	a2,a2,a7
1c00cbe0:	078a                	slli	a5,a5,0x2
1c00cbe2:	0106e6b3          	or	a3,a3,a6
1c00cbe6:	c110                	sw	a2,0(a0)
1c00cbe8:	97f6                	add	a5,a5,t4
1c00cbea:	c394                	sw	a3,0(a5)
1c00cbec:	0591                	addi	a1,a1,4
1c00cbee:	0721                	addi	a4,a4,8
1c00cbf0:	fdc590e3          	bne	a1,t3,1c00cbb0 <PQCLEAN_KYBER768_CLEAN_indcpa_dec+0xce>
1c00cbf4:	6985                	lui	s3,0x1
1c00cbf6:	0818                	addi	a4,sp,16
1c00cbf8:	60098793          	addi	a5,s3,1536 # 1600 <__CTOR_LIST__-0x1bffea04>
1c00cbfc:	97ba                	add	a5,a5,a4
1c00cbfe:	20040593          	addi	a1,s0,512 # fffff200 <__l2_shared_end+0xe3fef200>
1c00cc02:	00b78933          	add	s2,a5,a1
1c00cc06:	85ca                	mv	a1,s2
1c00cc08:	8576                	mv	a0,t4
1c00cc0a:	c32fe0ef          	jal	ra,1c00b03c <KYBER_poly_intt>
1c00cc0e:	60098713          	addi	a4,s3,1536
1c00cc12:	0814                	addi	a3,sp,16
1c00cc14:	c0040793          	addi	a5,s0,-1024
1c00cc18:	9736                	add	a4,a4,a3
1c00cc1a:	97ba                	add	a5,a5,a4
1c00cc1c:	85ca                	mv	a1,s2
1c00cc1e:	10078613          	addi	a2,a5,256
1c00cc22:	4198                	lw	a4,0(a1)
1c00cc24:	0789                	addi	a5,a5,2
1c00cc26:	0591                	addi	a1,a1,4
1c00cc28:	01075693          	srli	a3,a4,0x10
1c00cc2c:	fed79f23          	sh	a3,-2(a5)
1c00cc30:	0ee79f23          	sh	a4,254(a5)
1c00cc34:	fef617e3          	bne	a2,a5,1c00cc22 <PQCLEAN_KYBER768_CLEAN_indcpa_dec+0x140>
1c00cc38:	6685                	lui	a3,0x1
1c00cc3a:	0810                	addi	a2,sp,16
1c00cc3c:	77fd                	lui	a5,0xfffff
1c00cc3e:	60068713          	addi	a4,a3,1536 # 1600 <__CTOR_LIST__-0x1bffea04>
1c00cc42:	9732                	add	a4,a4,a2
1c00cc44:	c0078413          	addi	s0,a5,-1024 # ffffec00 <__l2_shared_end+0xe3feec00>
1c00cc48:	943a                	add	s0,s0,a4
1c00cc4a:	60068713          	addi	a4,a3,1536
1c00cc4e:	0814                	addi	a3,sp,16
1c00cc50:	a0078793          	addi	a5,a5,-1536
1c00cc54:	9736                	add	a4,a4,a3
1c00cc56:	8622                	mv	a2,s0
1c00cc58:	00f705b3          	add	a1,a4,a5
1c00cc5c:	8522                	mv	a0,s0
1c00cc5e:	272d                	jal	1c00d388 <PQCLEAN_KYBER768_CLEAN_poly_sub>
1c00cc60:	8522                	mv	a0,s0
1c00cc62:	2dd9                	jal	1c00d338 <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c00cc64:	85a2                	mv	a1,s0
1c00cc66:	8526                	mv	a0,s1
1c00cc68:	21bd                	jal	1c00d0d6 <PQCLEAN_KYBER768_CLEAN_poly_tomsg>
1c00cc6a:	6305                	lui	t1,0x1
1c00cc6c:	911a                	add	sp,sp,t1
1c00cc6e:	62c12083          	lw	ra,1580(sp)
1c00cc72:	62812403          	lw	s0,1576(sp)
1c00cc76:	62412483          	lw	s1,1572(sp)
1c00cc7a:	62012903          	lw	s2,1568(sp)
1c00cc7e:	61c12983          	lw	s3,1564(sp)
1c00cc82:	61812a03          	lw	s4,1560(sp)
1c00cc86:	61412a83          	lw	s5,1556(sp)
1c00cc8a:	63010113          	addi	sp,sp,1584
1c00cc8e:	8082                	ret

1c00cc90 <PQCLEAN_KYBER768_CLEAN_crypto_kem_dec>:
1c00cc90:	b0010113          	addi	sp,sp,-1280
1c00cc94:	4f612023          	sw	s6,1248(sp)
1c00cc98:	8b2a                	mv	s6,a0
1c00cc9a:	850a                	mv	a0,sp
1c00cc9c:	4e112e23          	sw	ra,1276(sp)
1c00cca0:	4e812c23          	sw	s0,1272(sp)
1c00cca4:	4e912a23          	sw	s1,1268(sp)
1c00cca8:	4f212823          	sw	s2,1264(sp)
1c00ccac:	4f312623          	sw	s3,1260(sp)
1c00ccb0:	4f412423          	sw	s4,1256(sp)
1c00ccb4:	4f512223          	sw	s5,1252(sp)
1c00ccb8:	4d712e23          	sw	s7,1244(sp)
1c00ccbc:	4d812c23          	sw	s8,1240(sp)
1c00ccc0:	4d912a23          	sw	s9,1236(sp)
1c00ccc4:	4da12823          	sw	s10,1232(sp)
1c00ccc8:	4db12623          	sw	s11,1228(sp)
1c00cccc:	8432                	mv	s0,a2
1c00ccce:	8aae                	mv	s5,a1
1c00ccd0:	3d09                	jal	1c00cae2 <PQCLEAN_KYBER768_CLEAN_indcpa_dec>
1c00ccd2:	6785                	lui	a5,0x1
1c00ccd4:	97a2                	add	a5,a5,s0
1c00ccd6:	9217ca03          	lbu	s4,-1759(a5) # 921 <__CTOR_LIST__-0x1bfff6e3>
1c00ccda:	9257c983          	lbu	s3,-1755(a5)
1c00ccde:	9297c903          	lbu	s2,-1751(a5)
1c00cce2:	92d7c083          	lbu	ra,-1747(a5)
1c00cce6:	9317c583          	lbu	a1,-1743(a5)
1c00ccea:	9357c383          	lbu	t2,-1739(a5)
1c00ccee:	9207cd83          	lbu	s11,-1760(a5)
1c00ccf2:	9247cd03          	lbu	s10,-1756(a5)
1c00ccf6:	9287cc83          	lbu	s9,-1752(a5)
1c00ccfa:	92c7cc03          	lbu	s8,-1748(a5)
1c00ccfe:	9307cb83          	lbu	s7,-1744(a5)
1c00cd02:	9347c503          	lbu	a0,-1740(a5)
1c00cd06:	9227c283          	lbu	t0,-1758(a5)
1c00cd0a:	9267cf83          	lbu	t6,-1754(a5)
1c00cd0e:	92a7cf03          	lbu	t5,-1750(a5)
1c00cd12:	92e7ce83          	lbu	t4,-1746(a5)
1c00cd16:	9327ce03          	lbu	t3,-1742(a5)
1c00cd1a:	9367c303          	lbu	t1,-1738(a5)
1c00cd1e:	9377c483          	lbu	s1,-1737(a5)
1c00cd22:	9237c883          	lbu	a7,-1757(a5)
1c00cd26:	9277c803          	lbu	a6,-1753(a5)
1c00cd2a:	92b7c603          	lbu	a2,-1749(a5)
1c00cd2e:	92f7c683          	lbu	a3,-1745(a5)
1c00cd32:	9337c703          	lbu	a4,-1741(a5)
1c00cd36:	0a22                	slli	s4,s4,0x8
1c00cd38:	09a2                	slli	s3,s3,0x8
1c00cd3a:	0922                	slli	s2,s2,0x8
1c00cd3c:	00a2                	slli	ra,ra,0x8
1c00cd3e:	05a2                	slli	a1,a1,0x8
1c00cd40:	03a2                	slli	t2,t2,0x8
1c00cd42:	02c2                	slli	t0,t0,0x10
1c00cd44:	0fc2                	slli	t6,t6,0x10
1c00cd46:	0f42                	slli	t5,t5,0x10
1c00cd48:	0ec2                	slli	t4,t4,0x10
1c00cd4a:	0175e5b3          	or	a1,a1,s7
1c00cd4e:	01ba6a33          	or	s4,s4,s11
1c00cd52:	01a9e9b3          	or	s3,s3,s10
1c00cd56:	01996933          	or	s2,s2,s9
1c00cd5a:	0180e0b3          	or	ra,ra,s8
1c00cd5e:	00a3e3b3          	or	t2,t2,a0
1c00cd62:	0342                	slli	t1,t1,0x10
1c00cd64:	0e42                	slli	t3,t3,0x10
1c00cd66:	0142ea33          	or	s4,t0,s4
1c00cd6a:	013fe9b3          	or	s3,t6,s3
1c00cd6e:	012f6933          	or	s2,t5,s2
1c00cd72:	001ee0b3          	or	ra,t4,ra
1c00cd76:	00be6e33          	or	t3,t3,a1
1c00cd7a:	007363b3          	or	t2,t1,t2
1c00cd7e:	01849593          	slli	a1,s1,0x18
1c00cd82:	08e2                	slli	a7,a7,0x18
1c00cd84:	0862                	slli	a6,a6,0x18
1c00cd86:	0662                	slli	a2,a2,0x18
1c00cd88:	06e2                	slli	a3,a3,0x18
1c00cd8a:	0762                	slli	a4,a4,0x18
1c00cd8c:	0016e6b3          	or	a3,a3,ra
1c00cd90:	0148e8b3          	or	a7,a7,s4
1c00cd94:	01c76733          	or	a4,a4,t3
1c00cd98:	0075e5b3          	or	a1,a1,t2
1c00cd9c:	01386833          	or	a6,a6,s3
1c00cda0:	01266633          	or	a2,a2,s2
1c00cda4:	9387c303          	lbu	t1,-1736(a5)
1c00cda8:	d046                	sw	a7,32(sp)
1c00cdaa:	9397c503          	lbu	a0,-1735(a5)
1c00cdae:	d242                	sw	a6,36(sp)
1c00cdb0:	d636                	sw	a3,44(sp)
1c00cdb2:	d83a                	sw	a4,48(sp)
1c00cdb4:	da2e                	sw	a1,52(sp)
1c00cdb6:	d432                	sw	a2,40(sp)
1c00cdb8:	93a7c603          	lbu	a2,-1734(a5)
1c00cdbc:	93d7c583          	lbu	a1,-1731(a5)
1c00cdc0:	93c7c803          	lbu	a6,-1732(a5)
1c00cdc4:	93e7c683          	lbu	a3,-1730(a5)
1c00cdc8:	93b7c703          	lbu	a4,-1733(a5)
1c00cdcc:	93f7c783          	lbu	a5,-1729(a5)
1c00cdd0:	0522                	slli	a0,a0,0x8
1c00cdd2:	05a2                	slli	a1,a1,0x8
1c00cdd4:	00656533          	or	a0,a0,t1
1c00cdd8:	0105e5b3          	or	a1,a1,a6
1c00cddc:	0642                	slli	a2,a2,0x10
1c00cdde:	06c2                	slli	a3,a3,0x10
1c00cde0:	8ecd                	or	a3,a3,a1
1c00cde2:	8e49                	or	a2,a2,a0
1c00cde4:	0762                	slli	a4,a4,0x18
1c00cde6:	07e2                	slli	a5,a5,0x18
1c00cde8:	8f51                	or	a4,a4,a2
1c00cdea:	8fd5                	or	a5,a5,a3
1c00cdec:	858a                	mv	a1,sp
1c00cdee:	0088                	addi	a0,sp,64
1c00cdf0:	04000613          	li	a2,64
1c00cdf4:	dc3a                	sw	a4,56(sp)
1c00cdf6:	de3e                	sw	a5,60(sp)
1c00cdf8:	f67fe0ef          	jal	ra,1c00bd5e <sha3_512>
1c00cdfc:	1094                	addi	a3,sp,96
1c00cdfe:	48040613          	addi	a2,s0,1152
1c00ce02:	858a                	mv	a1,sp
1c00ce04:	0108                	addi	a0,sp,128
1c00ce06:	89dff0ef          	jal	ra,1c00c6a2 <PQCLEAN_KYBER768_CLEAN_indcpa_enc>
1c00ce0a:	010c                	addi	a1,sp,128
1c00ce0c:	44000613          	li	a2,1088
1c00ce10:	8556                	mv	a0,s5
1c00ce12:	235000ef          	jal	ra,1c00d846 <PQCLEAN_KYBER768_CLEAN_verify>
1c00ce16:	892a                	mv	s2,a0
1c00ce18:	85d6                	mv	a1,s5
1c00ce1a:	1088                	addi	a0,sp,96
1c00ce1c:	44000613          	li	a2,1088
1c00ce20:	c5ffe0ef          	jal	ra,1c00ba7e <sha3_256>
1c00ce24:	6785                	lui	a5,0x1
1c00ce26:	94078593          	addi	a1,a5,-1728 # 940 <__CTOR_LIST__-0x1bfff6c4>
1c00ce2a:	0ff97693          	andi	a3,s2,255
1c00ce2e:	95a2                	add	a1,a1,s0
1c00ce30:	0088                	addi	a0,sp,64
1c00ce32:	02000613          	li	a2,32
1c00ce36:	32b000ef          	jal	ra,1c00d960 <PQCLEAN_KYBER768_CLEAN_cmov>
1c00ce3a:	855a                	mv	a0,s6
1c00ce3c:	0090                	addi	a2,sp,64
1c00ce3e:	04000693          	li	a3,64
1c00ce42:	02000593          	li	a1,32
1c00ce46:	9b5fe0ef          	jal	ra,1c00b7fa <shake256>
1c00ce4a:	4fc12083          	lw	ra,1276(sp)
1c00ce4e:	4f812403          	lw	s0,1272(sp)
1c00ce52:	4f412483          	lw	s1,1268(sp)
1c00ce56:	4f012903          	lw	s2,1264(sp)
1c00ce5a:	4ec12983          	lw	s3,1260(sp)
1c00ce5e:	4e812a03          	lw	s4,1256(sp)
1c00ce62:	4e412a83          	lw	s5,1252(sp)
1c00ce66:	4e012b03          	lw	s6,1248(sp)
1c00ce6a:	4dc12b83          	lw	s7,1244(sp)
1c00ce6e:	4d812c03          	lw	s8,1240(sp)
1c00ce72:	4d412c83          	lw	s9,1236(sp)
1c00ce76:	4d012d03          	lw	s10,1232(sp)
1c00ce7a:	4cc12d83          	lw	s11,1228(sp)
1c00ce7e:	4501                	li	a0,0
1c00ce80:	50010113          	addi	sp,sp,1280
1c00ce84:	8082                	ret

1c00ce86 <PQCLEAN_KYBER768_CLEAN_poly_compress>:
1c00ce86:	1101                	addi	sp,sp,-32
1c00ce88:	6605                	lui	a2,0x1
1c00ce8a:	ce22                	sw	s0,28(sp)
1c00ce8c:	cc26                	sw	s1,24(sp)
1c00ce8e:	ca4a                	sw	s2,20(sp)
1c00ce90:	c84e                	sw	s3,16(sp)
1c00ce92:	c652                	sw	s4,12(sp)
1c00ce94:	08050813          	addi	a6,a0,128 # 1080 <__CTOR_LIST__-0x1bffef84>
1c00ce98:	d0160613          	addi	a2,a2,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00ce9c:	00259a03          	lh	s4,2(a1) # 1002 <__CTOR_LIST__-0x1bfff002>
1c00cea0:	00059383          	lh	t2,0(a1)
1c00cea4:	00659983          	lh	s3,6(a1)
1c00cea8:	00a59903          	lh	s2,10(a1)
1c00ceac:	00e59483          	lh	s1,14(a1)
1c00ceb0:	00459283          	lh	t0,4(a1)
1c00ceb4:	00859e03          	lh	t3,8(a1)
1c00ceb8:	00c59f83          	lh	t6,12(a1)
1c00cebc:	40fa5893          	srai	a7,s4,0xf
1c00cec0:	00c8f8b3          	and	a7,a7,a2
1c00cec4:	40f3df13          	srai	t5,t2,0xf
1c00cec8:	40f9d693          	srai	a3,s3,0xf
1c00cecc:	40f95713          	srai	a4,s2,0xf
1c00ced0:	40f4d793          	srai	a5,s1,0xf
1c00ced4:	98d2                	add	a7,a7,s4
1c00ced6:	00cf7f33          	and	t5,t5,a2
1c00ceda:	40fe5413          	srai	s0,t3,0xf
1c00cede:	8ef1                	and	a3,a3,a2
1c00cee0:	40f2de93          	srai	t4,t0,0xf
1c00cee4:	8f71                	and	a4,a4,a2
1c00cee6:	8ff1                	and	a5,a5,a2
1c00cee8:	40ffd313          	srai	t1,t6,0xf
1c00ceec:	08c2                	slli	a7,a7,0x10
1c00ceee:	9f1e                	add	t5,t5,t2
1c00cef0:	96ce                	add	a3,a3,s3
1c00cef2:	00cefeb3          	and	t4,t4,a2
1c00cef6:	974a                	add	a4,a4,s2
1c00cef8:	8c71                	and	s0,s0,a2
1c00cefa:	97a6                	add	a5,a5,s1
1c00cefc:	00c37333          	and	t1,t1,a2
1c00cf00:	0108d893          	srli	a7,a7,0x10
1c00cf04:	0f42                	slli	t5,t5,0x10
1c00cf06:	06c2                	slli	a3,a3,0x10
1c00cf08:	9e96                	add	t4,t4,t0
1c00cf0a:	0742                	slli	a4,a4,0x10
1c00cf0c:	9e22                	add	t3,t3,s0
1c00cf0e:	07c2                	slli	a5,a5,0x10
1c00cf10:	937e                	add	t1,t1,t6
1c00cf12:	0892                	slli	a7,a7,0x4
1c00cf14:	010f5f13          	srli	t5,t5,0x10
1c00cf18:	82c1                	srli	a3,a3,0x10
1c00cf1a:	8341                	srli	a4,a4,0x10
1c00cf1c:	83c1                	srli	a5,a5,0x10
1c00cf1e:	0ec2                	slli	t4,t4,0x10
1c00cf20:	0e42                	slli	t3,t3,0x10
1c00cf22:	0342                	slli	t1,t1,0x10
1c00cf24:	68088893          	addi	a7,a7,1664 # ff0680 <__CTOR_LIST__-0x1b00f984>
1c00cf28:	0f12                	slli	t5,t5,0x4
1c00cf2a:	02c8c8b3          	div	a7,a7,a2
1c00cf2e:	0692                	slli	a3,a3,0x4
1c00cf30:	010ede93          	srli	t4,t4,0x10
1c00cf34:	0712                	slli	a4,a4,0x4
1c00cf36:	010e5e13          	srli	t3,t3,0x10
1c00cf3a:	0792                	slli	a5,a5,0x4
1c00cf3c:	01035313          	srli	t1,t1,0x10
1c00cf40:	680f0f13          	addi	t5,t5,1664 # ff0680 <__CTOR_LIST__-0x1b00f984>
1c00cf44:	68068693          	addi	a3,a3,1664
1c00cf48:	0e92                	slli	t4,t4,0x4
1c00cf4a:	68070713          	addi	a4,a4,1664
1c00cf4e:	0e12                	slli	t3,t3,0x4
1c00cf50:	68078793          	addi	a5,a5,1664
1c00cf54:	0312                	slli	t1,t1,0x4
1c00cf56:	680e8e93          	addi	t4,t4,1664
1c00cf5a:	680e0e13          	addi	t3,t3,1664
1c00cf5e:	68030313          	addi	t1,t1,1664 # 1680 <__CTOR_LIST__-0x1bffe984>
1c00cf62:	0511                	addi	a0,a0,4
1c00cf64:	05c1                	addi	a1,a1,16
1c00cf66:	02cf4f33          	div	t5,t5,a2
1c00cf6a:	00f8f893          	andi	a7,a7,15
1c00cf6e:	0892                	slli	a7,a7,0x4
1c00cf70:	02c6c6b3          	div	a3,a3,a2
1c00cf74:	00ff7f13          	andi	t5,t5,15
1c00cf78:	01e8e8b3          	or	a7,a7,t5
1c00cf7c:	ff150e23          	sb	a7,-4(a0)
1c00cf80:	02c74733          	div	a4,a4,a2
1c00cf84:	8abd                	andi	a3,a3,15
1c00cf86:	0692                	slli	a3,a3,0x4
1c00cf88:	02c7c7b3          	div	a5,a5,a2
1c00cf8c:	8b3d                	andi	a4,a4,15
1c00cf8e:	0712                	slli	a4,a4,0x4
1c00cf90:	02ceceb3          	div	t4,t4,a2
1c00cf94:	8bbd                	andi	a5,a5,15
1c00cf96:	0792                	slli	a5,a5,0x4
1c00cf98:	02ce4e33          	div	t3,t3,a2
1c00cf9c:	00fef893          	andi	a7,t4,15
1c00cfa0:	0116e6b3          	or	a3,a3,a7
1c00cfa4:	fed50ea3          	sb	a3,-3(a0)
1c00cfa8:	02c34333          	div	t1,t1,a2
1c00cfac:	00fe7e13          	andi	t3,t3,15
1c00cfb0:	01c76733          	or	a4,a4,t3
1c00cfb4:	fee50f23          	sb	a4,-2(a0)
1c00cfb8:	00f37313          	andi	t1,t1,15
1c00cfbc:	0067e7b3          	or	a5,a5,t1
1c00cfc0:	fef50fa3          	sb	a5,-1(a0)
1c00cfc4:	ed051ce3          	bne	a0,a6,1c00ce9c <PQCLEAN_KYBER768_CLEAN_poly_compress+0x16>
1c00cfc8:	4472                	lw	s0,28(sp)
1c00cfca:	44e2                	lw	s1,24(sp)
1c00cfcc:	4952                	lw	s2,20(sp)
1c00cfce:	49c2                	lw	s3,16(sp)
1c00cfd0:	4a32                	lw	s4,12(sp)
1c00cfd2:	6105                	addi	sp,sp,32
1c00cfd4:	8082                	ret

1c00cfd6 <PQCLEAN_KYBER768_CLEAN_poly_decompress>:
1c00cfd6:	6705                	lui	a4,0x1
1c00cfd8:	08058693          	addi	a3,a1,128
1c00cfdc:	d0170713          	addi	a4,a4,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00cfe0:	0005c783          	lbu	a5,0(a1)
1c00cfe4:	0511                	addi	a0,a0,4
1c00cfe6:	0585                	addi	a1,a1,1
1c00cfe8:	8bbd                	andi	a5,a5,15
1c00cfea:	02e787b3          	mul	a5,a5,a4
1c00cfee:	07a1                	addi	a5,a5,8
1c00cff0:	8791                	srai	a5,a5,0x4
1c00cff2:	fef51e23          	sh	a5,-4(a0)
1c00cff6:	fff5c783          	lbu	a5,-1(a1)
1c00cffa:	8391                	srli	a5,a5,0x4
1c00cffc:	02e787b3          	mul	a5,a5,a4
1c00d000:	07a1                	addi	a5,a5,8
1c00d002:	8791                	srai	a5,a5,0x4
1c00d004:	fef51f23          	sh	a5,-2(a0)
1c00d008:	fcd59ce3          	bne	a1,a3,1c00cfe0 <PQCLEAN_KYBER768_CLEAN_poly_decompress+0xa>
1c00d00c:	8082                	ret

1c00d00e <PQCLEAN_KYBER768_CLEAN_poly_frombytes>:
1c00d00e:	6685                	lui	a3,0x1
1c00d010:	18058613          	addi	a2,a1,384
1c00d014:	16fd                	addi	a3,a3,-1
1c00d016:	0015c783          	lbu	a5,1(a1)
1c00d01a:	0005c703          	lbu	a4,0(a1)
1c00d01e:	058d                	addi	a1,a1,3
1c00d020:	07a2                	slli	a5,a5,0x8
1c00d022:	8fd9                	or	a5,a5,a4
1c00d024:	8ff5                	and	a5,a5,a3
1c00d026:	00f51023          	sh	a5,0(a0)
1c00d02a:	ffe5c703          	lbu	a4,-2(a1)
1c00d02e:	fff5c783          	lbu	a5,-1(a1)
1c00d032:	0511                	addi	a0,a0,4
1c00d034:	8311                	srli	a4,a4,0x4
1c00d036:	0792                	slli	a5,a5,0x4
1c00d038:	8fd9                	or	a5,a5,a4
1c00d03a:	fef51f23          	sh	a5,-2(a0)
1c00d03e:	fcb61ce3          	bne	a2,a1,1c00d016 <PQCLEAN_KYBER768_CLEAN_poly_frombytes+0x8>
1c00d042:	8082                	ret

1c00d044 <PQCLEAN_KYBER768_CLEAN_poly_frommsg>:
1c00d044:	20050713          	addi	a4,a0,512
1c00d048:	0005c783          	lbu	a5,0(a1)
1c00d04c:	0541                	addi	a0,a0,16
1c00d04e:	0585                	addi	a1,a1,1
1c00d050:	8b85                	andi	a5,a5,1
1c00d052:	40f007b3          	neg	a5,a5
1c00d056:	6817f793          	andi	a5,a5,1665
1c00d05a:	fef51823          	sh	a5,-16(a0)
1c00d05e:	fff5c783          	lbu	a5,-1(a1)
1c00d062:	07fa                	slli	a5,a5,0x1e
1c00d064:	87fd                	srai	a5,a5,0x1f
1c00d066:	6817f793          	andi	a5,a5,1665
1c00d06a:	fef51923          	sh	a5,-14(a0)
1c00d06e:	fff5c783          	lbu	a5,-1(a1)
1c00d072:	07f6                	slli	a5,a5,0x1d
1c00d074:	87fd                	srai	a5,a5,0x1f
1c00d076:	6817f793          	andi	a5,a5,1665
1c00d07a:	fef51a23          	sh	a5,-12(a0)
1c00d07e:	fff5c783          	lbu	a5,-1(a1)
1c00d082:	07f2                	slli	a5,a5,0x1c
1c00d084:	87fd                	srai	a5,a5,0x1f
1c00d086:	6817f793          	andi	a5,a5,1665
1c00d08a:	fef51b23          	sh	a5,-10(a0)
1c00d08e:	fff5c783          	lbu	a5,-1(a1)
1c00d092:	07ee                	slli	a5,a5,0x1b
1c00d094:	87fd                	srai	a5,a5,0x1f
1c00d096:	6817f793          	andi	a5,a5,1665
1c00d09a:	fef51c23          	sh	a5,-8(a0)
1c00d09e:	fff5c783          	lbu	a5,-1(a1)
1c00d0a2:	07ea                	slli	a5,a5,0x1a
1c00d0a4:	87fd                	srai	a5,a5,0x1f
1c00d0a6:	6817f793          	andi	a5,a5,1665
1c00d0aa:	fef51d23          	sh	a5,-6(a0)
1c00d0ae:	fff5c783          	lbu	a5,-1(a1)
1c00d0b2:	07e6                	slli	a5,a5,0x19
1c00d0b4:	87fd                	srai	a5,a5,0x1f
1c00d0b6:	6817f793          	andi	a5,a5,1665
1c00d0ba:	fef51e23          	sh	a5,-4(a0)
1c00d0be:	fff5c783          	lbu	a5,-1(a1)
1c00d0c2:	879d                	srai	a5,a5,0x7
1c00d0c4:	40f007b3          	neg	a5,a5
1c00d0c8:	6817f793          	andi	a5,a5,1665
1c00d0cc:	fef51f23          	sh	a5,-2(a0)
1c00d0d0:	f6a71ce3          	bne	a4,a0,1c00d048 <PQCLEAN_KYBER768_CLEAN_poly_frommsg+0x4>
1c00d0d4:	8082                	ret

1c00d0d6 <PQCLEAN_KYBER768_CLEAN_poly_tomsg>:
1c00d0d6:	6685                	lui	a3,0x1
1c00d0d8:	20058613          	addi	a2,a1,512
1c00d0dc:	d0168693          	addi	a3,a3,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00d0e0:	00050023          	sb	zero,0(a0)
1c00d0e4:	00059783          	lh	a5,0(a1)
1c00d0e8:	0505                	addi	a0,a0,1
1c00d0ea:	05c1                	addi	a1,a1,16
1c00d0ec:	40f7d713          	srai	a4,a5,0xf
1c00d0f0:	8f75                	and	a4,a4,a3
1c00d0f2:	97ba                	add	a5,a5,a4
1c00d0f4:	07c2                	slli	a5,a5,0x10
1c00d0f6:	83c1                	srli	a5,a5,0x10
1c00d0f8:	0786                	slli	a5,a5,0x1
1c00d0fa:	68078793          	addi	a5,a5,1664
1c00d0fe:	02d7c7b3          	div	a5,a5,a3
1c00d102:	0017f813          	andi	a6,a5,1
1c00d106:	ff050fa3          	sb	a6,-1(a0)
1c00d10a:	ff259703          	lh	a4,-14(a1)
1c00d10e:	40f75793          	srai	a5,a4,0xf
1c00d112:	8ff5                	and	a5,a5,a3
1c00d114:	97ba                	add	a5,a5,a4
1c00d116:	07c2                	slli	a5,a5,0x10
1c00d118:	83c1                	srli	a5,a5,0x10
1c00d11a:	0786                	slli	a5,a5,0x1
1c00d11c:	68078793          	addi	a5,a5,1664
1c00d120:	02d7c7b3          	div	a5,a5,a3
1c00d124:	8b85                	andi	a5,a5,1
1c00d126:	0786                	slli	a5,a5,0x1
1c00d128:	0107e7b3          	or	a5,a5,a6
1c00d12c:	fef50fa3          	sb	a5,-1(a0)
1c00d130:	ff459703          	lh	a4,-12(a1)
1c00d134:	40f75813          	srai	a6,a4,0xf
1c00d138:	00d87833          	and	a6,a6,a3
1c00d13c:	9742                	add	a4,a4,a6
1c00d13e:	0742                	slli	a4,a4,0x10
1c00d140:	8341                	srli	a4,a4,0x10
1c00d142:	0706                	slli	a4,a4,0x1
1c00d144:	68070713          	addi	a4,a4,1664
1c00d148:	02d74733          	div	a4,a4,a3
1c00d14c:	8b05                	andi	a4,a4,1
1c00d14e:	070a                	slli	a4,a4,0x2
1c00d150:	8fd9                	or	a5,a5,a4
1c00d152:	fef50fa3          	sb	a5,-1(a0)
1c00d156:	ff659703          	lh	a4,-10(a1)
1c00d15a:	40f75813          	srai	a6,a4,0xf
1c00d15e:	00d87833          	and	a6,a6,a3
1c00d162:	9742                	add	a4,a4,a6
1c00d164:	0742                	slli	a4,a4,0x10
1c00d166:	8341                	srli	a4,a4,0x10
1c00d168:	0706                	slli	a4,a4,0x1
1c00d16a:	68070713          	addi	a4,a4,1664
1c00d16e:	02d74733          	div	a4,a4,a3
1c00d172:	8b05                	andi	a4,a4,1
1c00d174:	070e                	slli	a4,a4,0x3
1c00d176:	8fd9                	or	a5,a5,a4
1c00d178:	fef50fa3          	sb	a5,-1(a0)
1c00d17c:	ff859703          	lh	a4,-8(a1)
1c00d180:	40f75813          	srai	a6,a4,0xf
1c00d184:	00d87833          	and	a6,a6,a3
1c00d188:	9742                	add	a4,a4,a6
1c00d18a:	0742                	slli	a4,a4,0x10
1c00d18c:	8341                	srli	a4,a4,0x10
1c00d18e:	0706                	slli	a4,a4,0x1
1c00d190:	68070713          	addi	a4,a4,1664
1c00d194:	02d74733          	div	a4,a4,a3
1c00d198:	8b05                	andi	a4,a4,1
1c00d19a:	0712                	slli	a4,a4,0x4
1c00d19c:	8fd9                	or	a5,a5,a4
1c00d19e:	fef50fa3          	sb	a5,-1(a0)
1c00d1a2:	ffa59703          	lh	a4,-6(a1)
1c00d1a6:	40f75813          	srai	a6,a4,0xf
1c00d1aa:	00d87833          	and	a6,a6,a3
1c00d1ae:	9742                	add	a4,a4,a6
1c00d1b0:	0742                	slli	a4,a4,0x10
1c00d1b2:	8341                	srli	a4,a4,0x10
1c00d1b4:	0706                	slli	a4,a4,0x1
1c00d1b6:	68070713          	addi	a4,a4,1664
1c00d1ba:	02d74733          	div	a4,a4,a3
1c00d1be:	8b05                	andi	a4,a4,1
1c00d1c0:	0716                	slli	a4,a4,0x5
1c00d1c2:	8fd9                	or	a5,a5,a4
1c00d1c4:	fef50fa3          	sb	a5,-1(a0)
1c00d1c8:	ffc59703          	lh	a4,-4(a1)
1c00d1cc:	40f75813          	srai	a6,a4,0xf
1c00d1d0:	00d87833          	and	a6,a6,a3
1c00d1d4:	9742                	add	a4,a4,a6
1c00d1d6:	0742                	slli	a4,a4,0x10
1c00d1d8:	8341                	srli	a4,a4,0x10
1c00d1da:	0706                	slli	a4,a4,0x1
1c00d1dc:	68070713          	addi	a4,a4,1664
1c00d1e0:	02d74733          	div	a4,a4,a3
1c00d1e4:	8b05                	andi	a4,a4,1
1c00d1e6:	071a                	slli	a4,a4,0x6
1c00d1e8:	8fd9                	or	a5,a5,a4
1c00d1ea:	fef50fa3          	sb	a5,-1(a0)
1c00d1ee:	ffe59703          	lh	a4,-2(a1)
1c00d1f2:	40f75813          	srai	a6,a4,0xf
1c00d1f6:	00d87833          	and	a6,a6,a3
1c00d1fa:	9742                	add	a4,a4,a6
1c00d1fc:	0742                	slli	a4,a4,0x10
1c00d1fe:	8341                	srli	a4,a4,0x10
1c00d200:	0706                	slli	a4,a4,0x1
1c00d202:	68070713          	addi	a4,a4,1664
1c00d206:	02d74733          	div	a4,a4,a3
1c00d20a:	8b05                	andi	a4,a4,1
1c00d20c:	071e                	slli	a4,a4,0x7
1c00d20e:	8fd9                	or	a5,a5,a4
1c00d210:	fef50fa3          	sb	a5,-1(a0)
1c00d214:	ecb616e3          	bne	a2,a1,1c00d0e0 <PQCLEAN_KYBER768_CLEAN_poly_tomsg+0xa>
1c00d218:	8082                	ret

1c00d21a <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>:
1c00d21a:	7175                	addi	sp,sp,-144
1c00d21c:	c522                	sw	s0,136(sp)
1c00d21e:	86b2                	mv	a3,a2
1c00d220:	842a                	mv	s0,a0
1c00d222:	862e                	mv	a2,a1
1c00d224:	850a                	mv	a0,sp
1c00d226:	08000593          	li	a1,128
1c00d22a:	c706                	sw	ra,140(sp)
1c00d22c:	23c5                	jal	1c00d80c <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>
1c00d22e:	858a                	mv	a1,sp
1c00d230:	8522                	mv	a0,s0
1c00d232:	efdfd0ef          	jal	ra,1c00b12e <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>
1c00d236:	40ba                	lw	ra,140(sp)
1c00d238:	442a                	lw	s0,136(sp)
1c00d23a:	6149                	addi	sp,sp,144
1c00d23c:	8082                	ret

1c00d23e <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta2>:
1c00d23e:	7175                	addi	sp,sp,-144
1c00d240:	c522                	sw	s0,136(sp)
1c00d242:	86b2                	mv	a3,a2
1c00d244:	842a                	mv	s0,a0
1c00d246:	862e                	mv	a2,a1
1c00d248:	850a                	mv	a0,sp
1c00d24a:	08000593          	li	a1,128
1c00d24e:	c706                	sw	ra,140(sp)
1c00d250:	2b75                	jal	1c00d80c <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>
1c00d252:	858a                	mv	a1,sp
1c00d254:	8522                	mv	a0,s0
1c00d256:	fdbfd0ef          	jal	ra,1c00b230 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta2>
1c00d25a:	40ba                	lw	ra,140(sp)
1c00d25c:	442a                	lw	s0,136(sp)
1c00d25e:	6149                	addi	sp,sp,144
1c00d260:	8082                	ret

1c00d262 <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>:
1c00d262:	9f010113          	addi	sp,sp,-1552
1c00d266:	6341                	lui	t1,0x10
1c00d268:	60812423          	sw	s0,1544(sp)
1c00d26c:	60112623          	sw	ra,1548(sp)
1c00d270:	842a                	mv	s0,a0
1c00d272:	4e01                	li	t3,0
1c00d274:	137d                	addi	t1,t1,-1
1c00d276:	10000f93          	li	t6,256
1c00d27a:	00061503          	lh	a0,0(a2)
1c00d27e:	00461383          	lh	t2,4(a2)
1c00d282:	00059803          	lh	a6,0(a1)
1c00d286:	00459283          	lh	t0,4(a1)
1c00d28a:	00259683          	lh	a3,2(a1)
1c00d28e:	00659f03          	lh	t5,6(a1)
1c00d292:	00261703          	lh	a4,2(a2)
1c00d296:	00661e83          	lh	t4,6(a2)
1c00d29a:	401e5793          	srai	a5,t3,0x1
1c00d29e:	00279893          	slli	a7,a5,0x2
1c00d2a2:	60010093          	addi	ra,sp,1536
1c00d2a6:	0542                	slli	a0,a0,0x10
1c00d2a8:	0063f3b3          	and	t2,t2,t1
1c00d2ac:	0842                	slli	a6,a6,0x10
1c00d2ae:	0062f2b3          	and	t0,t0,t1
1c00d2b2:	0785                	addi	a5,a5,1
1c00d2b4:	9886                	add	a7,a7,ra
1c00d2b6:	06c2                	slli	a3,a3,0x10
1c00d2b8:	006f7f33          	and	t5,t5,t1
1c00d2bc:	00756533          	or	a0,a0,t2
1c00d2c0:	0742                	slli	a4,a4,0x10
1c00d2c2:	006efeb3          	and	t4,t4,t1
1c00d2c6:	00586833          	or	a6,a6,t0
1c00d2ca:	078a                	slli	a5,a5,0x2
1c00d2cc:	9786                	add	a5,a5,ra
1c00d2ce:	01e6e6b3          	or	a3,a3,t5
1c00d2d2:	01d76733          	or	a4,a4,t4
1c00d2d6:	a108a023          	sw	a6,-1536(a7)
1c00d2da:	c0a8a023          	sw	a0,-1024(a7)
1c00d2de:	a0d7a023          	sw	a3,-1536(a5)
1c00d2e2:	c0e7a023          	sw	a4,-1024(a5)
1c00d2e6:	0e11                	addi	t3,t3,4
1c00d2e8:	05a1                	addi	a1,a1,8
1c00d2ea:	0621                	addi	a2,a2,8
1c00d2ec:	f9fe17e3          	bne	t3,t6,1c00d27a <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery+0x18>
1c00d2f0:	0410                	addi	a2,sp,512
1c00d2f2:	858a                	mv	a1,sp
1c00d2f4:	40010513          	addi	a0,sp,1024
1c00d2f8:	daffd0ef          	jal	ra,1c00b0a6 <KYBER_poly_pwm>
1c00d2fc:	40010793          	addi	a5,sp,1024
1c00d300:	8522                	mv	a0,s0
1c00d302:	60010813          	addi	a6,sp,1536
1c00d306:	4394                	lw	a3,0(a5)
1c00d308:	43d8                	lw	a4,4(a5)
1c00d30a:	07a1                	addi	a5,a5,8
1c00d30c:	0106d593          	srli	a1,a3,0x10
1c00d310:	01075613          	srli	a2,a4,0x10
1c00d314:	00b51023          	sh	a1,0(a0)
1c00d318:	00c51123          	sh	a2,2(a0)
1c00d31c:	00d51223          	sh	a3,4(a0)
1c00d320:	00e51323          	sh	a4,6(a0)
1c00d324:	0521                	addi	a0,a0,8
1c00d326:	fef810e3          	bne	a6,a5,1c00d306 <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery+0xa4>
1c00d32a:	60c12083          	lw	ra,1548(sp)
1c00d32e:	60812403          	lw	s0,1544(sp)
1c00d332:	61010113          	addi	sp,sp,1552
1c00d336:	8082                	ret

1c00d338 <PQCLEAN_KYBER768_CLEAN_poly_reduce>:
1c00d338:	1141                	addi	sp,sp,-16
1c00d33a:	c422                	sw	s0,8(sp)
1c00d33c:	c226                	sw	s1,4(sp)
1c00d33e:	c606                	sw	ra,12(sp)
1c00d340:	842a                	mv	s0,a0
1c00d342:	20050493          	addi	s1,a0,512
1c00d346:	00041503          	lh	a0,0(s0)
1c00d34a:	0409                	addi	s0,s0,2
1c00d34c:	2195                	jal	1c00d7b0 <PQCLEAN_KYBER768_CLEAN_barrett_reduce>
1c00d34e:	fea41f23          	sh	a0,-2(s0)
1c00d352:	fe941ae3          	bne	s0,s1,1c00d346 <PQCLEAN_KYBER768_CLEAN_poly_reduce+0xe>
1c00d356:	40b2                	lw	ra,12(sp)
1c00d358:	4422                	lw	s0,8(sp)
1c00d35a:	4492                	lw	s1,4(sp)
1c00d35c:	0141                	addi	sp,sp,16
1c00d35e:	8082                	ret

1c00d360 <PQCLEAN_KYBER768_CLEAN_poly_add>:
1c00d360:	4781                	li	a5,0
1c00d362:	20000893          	li	a7,512
1c00d366:	00f606b3          	add	a3,a2,a5
1c00d36a:	00f58733          	add	a4,a1,a5
1c00d36e:	0006d803          	lhu	a6,0(a3)
1c00d372:	00075703          	lhu	a4,0(a4)
1c00d376:	00f506b3          	add	a3,a0,a5
1c00d37a:	0789                	addi	a5,a5,2
1c00d37c:	9742                	add	a4,a4,a6
1c00d37e:	00e69023          	sh	a4,0(a3)
1c00d382:	ff1792e3          	bne	a5,a7,1c00d366 <PQCLEAN_KYBER768_CLEAN_poly_add+0x6>
1c00d386:	8082                	ret

1c00d388 <PQCLEAN_KYBER768_CLEAN_poly_sub>:
1c00d388:	4781                	li	a5,0
1c00d38a:	20000893          	li	a7,512
1c00d38e:	00f606b3          	add	a3,a2,a5
1c00d392:	00f58733          	add	a4,a1,a5
1c00d396:	0006d803          	lhu	a6,0(a3)
1c00d39a:	00075703          	lhu	a4,0(a4)
1c00d39e:	00f506b3          	add	a3,a0,a5
1c00d3a2:	0789                	addi	a5,a5,2
1c00d3a4:	41070733          	sub	a4,a4,a6
1c00d3a8:	00e69023          	sh	a4,0(a3)
1c00d3ac:	ff1791e3          	bne	a5,a7,1c00d38e <PQCLEAN_KYBER768_CLEAN_poly_sub+0x6>
1c00d3b0:	8082                	ret

1c00d3b2 <PQCLEAN_KYBER768_CLEAN_polyvec_compress>:
1c00d3b2:	88aa                	mv	a7,a0
1c00d3b4:	6605                	lui	a2,0x1
1c00d3b6:	14050513          	addi	a0,a0,320
1c00d3ba:	882e                	mv	a6,a1
1c00d3bc:	50088893          	addi	a7,a7,1280
1c00d3c0:	d0160613          	addi	a2,a2,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00d3c4:	ec050693          	addi	a3,a0,-320
1c00d3c8:	85c2                	mv	a1,a6
1c00d3ca:	00059283          	lh	t0,0(a1)
1c00d3ce:	00259f83          	lh	t6,2(a1)
1c00d3d2:	00459f03          	lh	t5,4(a1)
1c00d3d6:	40f2de13          	srai	t3,t0,0xf
1c00d3da:	40ffd713          	srai	a4,t6,0xf
1c00d3de:	00ce7e33          	and	t3,t3,a2
1c00d3e2:	8f71                	and	a4,a4,a2
1c00d3e4:	00659e83          	lh	t4,6(a1)
1c00d3e8:	40ff5793          	srai	a5,t5,0xf
1c00d3ec:	9e16                	add	t3,t3,t0
1c00d3ee:	977e                	add	a4,a4,t6
1c00d3f0:	8ff1                	and	a5,a5,a2
1c00d3f2:	0e42                	slli	t3,t3,0x10
1c00d3f4:	0742                	slli	a4,a4,0x10
1c00d3f6:	97fa                	add	a5,a5,t5
1c00d3f8:	010e5e13          	srli	t3,t3,0x10
1c00d3fc:	8341                	srli	a4,a4,0x10
1c00d3fe:	40fed313          	srai	t1,t4,0xf
1c00d402:	07c2                	slli	a5,a5,0x10
1c00d404:	0e2a                	slli	t3,t3,0xa
1c00d406:	072a                	slli	a4,a4,0xa
1c00d408:	00c37333          	and	t1,t1,a2
1c00d40c:	83c1                	srli	a5,a5,0x10
1c00d40e:	680e0e13          	addi	t3,t3,1664
1c00d412:	68070713          	addi	a4,a4,1664
1c00d416:	9376                	add	t1,t1,t4
1c00d418:	02ce5e33          	divu	t3,t3,a2
1c00d41c:	07aa                	slli	a5,a5,0xa
1c00d41e:	0342                	slli	t1,t1,0x10
1c00d420:	68078793          	addi	a5,a5,1664
1c00d424:	01035313          	srli	t1,t1,0x10
1c00d428:	032a                	slli	t1,t1,0xa
1c00d42a:	68030313          	addi	t1,t1,1664 # 10680 <__CTOR_LIST__-0x1bfef984>
1c00d42e:	0695                	addi	a3,a3,5
1c00d430:	05a1                	addi	a1,a1,8
1c00d432:	02c75733          	divu	a4,a4,a2
1c00d436:	3ffe7e13          	andi	t3,t3,1023
1c00d43a:	008e5e93          	srli	t4,t3,0x8
1c00d43e:	ffc68da3          	sb	t3,-5(a3)
1c00d442:	02c7d7b3          	divu	a5,a5,a2
1c00d446:	3ff77713          	andi	a4,a4,1023
1c00d44a:	00271e13          	slli	t3,a4,0x2
1c00d44e:	01ceee33          	or	t3,t4,t3
1c00d452:	8319                	srli	a4,a4,0x6
1c00d454:	ffc68e23          	sb	t3,-4(a3)
1c00d458:	02c35333          	divu	t1,t1,a2
1c00d45c:	3ff7f793          	andi	a5,a5,1023
1c00d460:	00479e13          	slli	t3,a5,0x4
1c00d464:	01c76733          	or	a4,a4,t3
1c00d468:	fee68ea3          	sb	a4,-3(a3)
1c00d46c:	8391                	srli	a5,a5,0x4
1c00d46e:	3ff37713          	andi	a4,t1,1023
1c00d472:	00671313          	slli	t1,a4,0x6
1c00d476:	0067e7b3          	or	a5,a5,t1
1c00d47a:	8309                	srli	a4,a4,0x2
1c00d47c:	fef68f23          	sb	a5,-2(a3)
1c00d480:	fee68fa3          	sb	a4,-1(a3)
1c00d484:	f4a693e3          	bne	a3,a0,1c00d3ca <PQCLEAN_KYBER768_CLEAN_polyvec_compress+0x18>
1c00d488:	14068513          	addi	a0,a3,320
1c00d48c:	20080813          	addi	a6,a6,512 # ff010200 <__l2_shared_end+0xe3000200>
1c00d490:	f2a89ae3          	bne	a7,a0,1c00d3c4 <PQCLEAN_KYBER768_CLEAN_polyvec_compress+0x12>
1c00d494:	8082                	ret

1c00d496 <PQCLEAN_KYBER768_CLEAN_polyvec_decompress>:
1c00d496:	6805                	lui	a6,0x1
1c00d498:	14058893          	addi	a7,a1,320
1c00d49c:	832a                	mv	t1,a0
1c00d49e:	50058e13          	addi	t3,a1,1280
1c00d4a2:	d0180813          	addi	a6,a6,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00d4a6:	ec088593          	addi	a1,a7,-320
1c00d4aa:	851a                	mv	a0,t1
1c00d4ac:	0015c683          	lbu	a3,1(a1)
1c00d4b0:	0025c703          	lbu	a4,2(a1)
1c00d4b4:	0035ce83          	lbu	t4,3(a1)
1c00d4b8:	0005c283          	lbu	t0,0(a1)
1c00d4bc:	0045c783          	lbu	a5,4(a1)
1c00d4c0:	00869613          	slli	a2,a3,0x8
1c00d4c4:	0026df93          	srli	t6,a3,0x2
1c00d4c8:	00475f13          	srli	t5,a4,0x4
1c00d4cc:	00671693          	slli	a3,a4,0x6
1c00d4d0:	004e9713          	slli	a4,t4,0x4
1c00d4d4:	00566633          	or	a2,a2,t0
1c00d4d8:	078a                	slli	a5,a5,0x2
1c00d4da:	006ede93          	srli	t4,t4,0x6
1c00d4de:	01f6e6b3          	or	a3,a3,t6
1c00d4e2:	01e76733          	or	a4,a4,t5
1c00d4e6:	01d7e7b3          	or	a5,a5,t4
1c00d4ea:	3ff67613          	andi	a2,a2,1023
1c00d4ee:	3ff6f693          	andi	a3,a3,1023
1c00d4f2:	3ff77713          	andi	a4,a4,1023
1c00d4f6:	03060633          	mul	a2,a2,a6
1c00d4fa:	0521                	addi	a0,a0,8
1c00d4fc:	0595                	addi	a1,a1,5
1c00d4fe:	030686b3          	mul	a3,a3,a6
1c00d502:	20060613          	addi	a2,a2,512
1c00d506:	8229                	srli	a2,a2,0xa
1c00d508:	fec51c23          	sh	a2,-8(a0)
1c00d50c:	03070733          	mul	a4,a4,a6
1c00d510:	20068693          	addi	a3,a3,512
1c00d514:	82a9                	srli	a3,a3,0xa
1c00d516:	fed51d23          	sh	a3,-6(a0)
1c00d51a:	030787b3          	mul	a5,a5,a6
1c00d51e:	20070713          	addi	a4,a4,512
1c00d522:	8329                	srli	a4,a4,0xa
1c00d524:	fee51e23          	sh	a4,-4(a0)
1c00d528:	20078793          	addi	a5,a5,512
1c00d52c:	83a9                	srli	a5,a5,0xa
1c00d52e:	fef51f23          	sh	a5,-2(a0)
1c00d532:	f7159de3          	bne	a1,a7,1c00d4ac <PQCLEAN_KYBER768_CLEAN_polyvec_decompress+0x16>
1c00d536:	14058893          	addi	a7,a1,320
1c00d53a:	20030313          	addi	t1,t1,512
1c00d53e:	f7c894e3          	bne	a7,t3,1c00d4a6 <PQCLEAN_KYBER768_CLEAN_polyvec_decompress+0x10>
1c00d542:	8082                	ret

1c00d544 <PQCLEAN_KYBER768_CLEAN_polyvec_frombytes>:
1c00d544:	1141                	addi	sp,sp,-16
1c00d546:	c606                	sw	ra,12(sp)
1c00d548:	c422                	sw	s0,8(sp)
1c00d54a:	c226                	sw	s1,4(sp)
1c00d54c:	842a                	mv	s0,a0
1c00d54e:	84ae                	mv	s1,a1
1c00d550:	3c7d                	jal	1c00d00e <PQCLEAN_KYBER768_CLEAN_poly_frombytes>
1c00d552:	18048593          	addi	a1,s1,384
1c00d556:	20040513          	addi	a0,s0,512
1c00d55a:	3c55                	jal	1c00d00e <PQCLEAN_KYBER768_CLEAN_poly_frombytes>
1c00d55c:	40040513          	addi	a0,s0,1024
1c00d560:	4422                	lw	s0,8(sp)
1c00d562:	40b2                	lw	ra,12(sp)
1c00d564:	30048593          	addi	a1,s1,768
1c00d568:	4492                	lw	s1,4(sp)
1c00d56a:	0141                	addi	sp,sp,16
1c00d56c:	b44d                	j	1c00d00e <PQCLEAN_KYBER768_CLEAN_poly_frombytes>

1c00d56e <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>:
1c00d56e:	9e010113          	addi	sp,sp,-1568
1c00d572:	60912a23          	sw	s1,1556(sp)
1c00d576:	64c1                	lui	s1,0x10
1c00d578:	60812c23          	sw	s0,1560(sp)
1c00d57c:	61212823          	sw	s2,1552(sp)
1c00d580:	61312623          	sw	s3,1548(sp)
1c00d584:	61412423          	sw	s4,1544(sp)
1c00d588:	60112e23          	sw	ra,1564(sp)
1c00d58c:	8a2a                	mv	s4,a0
1c00d58e:	60050413          	addi	s0,a0,1536
1c00d592:	40010993          	addi	s3,sp,1024
1c00d596:	14fd                	addi	s1,s1,-1
1c00d598:	10000913          	li	s2,256
1c00d59c:	20000613          	li	a2,512
1c00d5a0:	85d2                	mv	a1,s4
1c00d5a2:	854e                	mv	a0,s3
1c00d5a4:	2b0d                	jal	1c00dad6 <memcpy>
1c00d5a6:	864e                	mv	a2,s3
1c00d5a8:	4681                	li	a3,0
1c00d5aa:	00061703          	lh	a4,0(a2)
1c00d5ae:	00261583          	lh	a1,2(a2)
1c00d5b2:	4016d793          	srai	a5,a3,0x1
1c00d5b6:	078a                	slli	a5,a5,0x2
1c00d5b8:	0742                	slli	a4,a4,0x10
1c00d5ba:	8de5                	and	a1,a1,s1
1c00d5bc:	60010513          	addi	a0,sp,1536
1c00d5c0:	97aa                	add	a5,a5,a0
1c00d5c2:	8f4d                	or	a4,a4,a1
1c00d5c4:	a0e7a023          	sw	a4,-1536(a5)
1c00d5c8:	0689                	addi	a3,a3,2
1c00d5ca:	0611                	addi	a2,a2,4
1c00d5cc:	fd269fe3          	bne	a3,s2,1c00d5aa <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x3c>
1c00d5d0:	040c                	addi	a1,sp,512
1c00d5d2:	850a                	mv	a0,sp
1c00d5d4:	9fffd0ef          	jal	ra,1c00afd2 <KYBER_poly_ntt>
1c00d5d8:	0418                	addi	a4,sp,512
1c00d5da:	87d2                	mv	a5,s4
1c00d5dc:	4310                	lw	a2,0(a4)
1c00d5de:	4354                	lw	a3,4(a4)
1c00d5e0:	0721                	addi	a4,a4,8
1c00d5e2:	01065813          	srli	a6,a2,0x10
1c00d5e6:	0106d593          	srli	a1,a3,0x10
1c00d5ea:	01079023          	sh	a6,0(a5)
1c00d5ee:	00b79123          	sh	a1,2(a5)
1c00d5f2:	00c79223          	sh	a2,4(a5)
1c00d5f6:	00d79323          	sh	a3,6(a5)
1c00d5fa:	07a1                	addi	a5,a5,8
1c00d5fc:	fee990e3          	bne	s3,a4,1c00d5dc <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x6e>
1c00d600:	200a0a13          	addi	s4,s4,512
1c00d604:	f9441ce3          	bne	s0,s4,1c00d59c <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x2e>
1c00d608:	61c12083          	lw	ra,1564(sp)
1c00d60c:	61812403          	lw	s0,1560(sp)
1c00d610:	61412483          	lw	s1,1556(sp)
1c00d614:	61012903          	lw	s2,1552(sp)
1c00d618:	60c12983          	lw	s3,1548(sp)
1c00d61c:	60812a03          	lw	s4,1544(sp)
1c00d620:	62010113          	addi	sp,sp,1568
1c00d624:	8082                	ret

1c00d626 <PQCLEAN_KYBER768_CLEAN_polyvec_invntt_tomont>:
1c00d626:	9e010113          	addi	sp,sp,-1568
1c00d62a:	60912a23          	sw	s1,1556(sp)
1c00d62e:	64c1                	lui	s1,0x10
1c00d630:	60812c23          	sw	s0,1560(sp)
1c00d634:	61212823          	sw	s2,1552(sp)
1c00d638:	61312623          	sw	s3,1548(sp)
1c00d63c:	61412423          	sw	s4,1544(sp)
1c00d640:	60112e23          	sw	ra,1564(sp)
1c00d644:	10050a13          	addi	s4,a0,256
1c00d648:	70050413          	addi	s0,a0,1792
1c00d64c:	40010913          	addi	s2,sp,1024
1c00d650:	14fd                	addi	s1,s1,-1
1c00d652:	10000993          	li	s3,256
1c00d656:	f00a0593          	addi	a1,s4,-256
1c00d65a:	20000613          	li	a2,512
1c00d65e:	854a                	mv	a0,s2
1c00d660:	299d                	jal	1c00dad6 <memcpy>
1c00d662:	874a                	mv	a4,s2
1c00d664:	4581                	li	a1,0
1c00d666:	00071603          	lh	a2,0(a4)
1c00d66a:	00471883          	lh	a7,4(a4)
1c00d66e:	00271683          	lh	a3,2(a4)
1c00d672:	00671803          	lh	a6,6(a4)
1c00d676:	4015d793          	srai	a5,a1,0x1
1c00d67a:	00279513          	slli	a0,a5,0x2
1c00d67e:	60010313          	addi	t1,sp,1536
1c00d682:	0642                	slli	a2,a2,0x10
1c00d684:	0098f8b3          	and	a7,a7,s1
1c00d688:	0785                	addi	a5,a5,1
1c00d68a:	06c2                	slli	a3,a3,0x10
1c00d68c:	00987833          	and	a6,a6,s1
1c00d690:	951a                	add	a0,a0,t1
1c00d692:	01166633          	or	a2,a2,a7
1c00d696:	078a                	slli	a5,a5,0x2
1c00d698:	0106e6b3          	or	a3,a3,a6
1c00d69c:	a0c52023          	sw	a2,-1536(a0)
1c00d6a0:	979a                	add	a5,a5,t1
1c00d6a2:	a0d7a023          	sw	a3,-1536(a5)
1c00d6a6:	0591                	addi	a1,a1,4
1c00d6a8:	0721                	addi	a4,a4,8
1c00d6aa:	fb359ee3          	bne	a1,s3,1c00d666 <PQCLEAN_KYBER768_CLEAN_polyvec_invntt_tomont+0x40>
1c00d6ae:	040c                	addi	a1,sp,512
1c00d6b0:	850a                	mv	a0,sp
1c00d6b2:	98bfd0ef          	jal	ra,1c00b03c <KYBER_poly_intt>
1c00d6b6:	0418                	addi	a4,sp,512
1c00d6b8:	87d2                	mv	a5,s4
1c00d6ba:	4314                	lw	a3,0(a4)
1c00d6bc:	0711                	addi	a4,a4,4
1c00d6be:	0789                	addi	a5,a5,2
1c00d6c0:	0106d613          	srli	a2,a3,0x10
1c00d6c4:	eec79f23          	sh	a2,-258(a5)
1c00d6c8:	fed79f23          	sh	a3,-2(a5)
1c00d6cc:	fee917e3          	bne	s2,a4,1c00d6ba <PQCLEAN_KYBER768_CLEAN_polyvec_invntt_tomont+0x94>
1c00d6d0:	200a0a13          	addi	s4,s4,512
1c00d6d4:	f94411e3          	bne	s0,s4,1c00d656 <PQCLEAN_KYBER768_CLEAN_polyvec_invntt_tomont+0x30>
1c00d6d8:	61c12083          	lw	ra,1564(sp)
1c00d6dc:	61812403          	lw	s0,1560(sp)
1c00d6e0:	61412483          	lw	s1,1556(sp)
1c00d6e4:	61012903          	lw	s2,1552(sp)
1c00d6e8:	60c12983          	lw	s3,1548(sp)
1c00d6ec:	60812a03          	lw	s4,1544(sp)
1c00d6f0:	62010113          	addi	sp,sp,1568
1c00d6f4:	8082                	ret

1c00d6f6 <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>:
1c00d6f6:	df010113          	addi	sp,sp,-528
1c00d6fa:	20112623          	sw	ra,524(sp)
1c00d6fe:	20812423          	sw	s0,520(sp)
1c00d702:	20912223          	sw	s1,516(sp)
1c00d706:	21212023          	sw	s2,512(sp)
1c00d70a:	842a                	mv	s0,a0
1c00d70c:	84ae                	mv	s1,a1
1c00d70e:	8932                	mv	s2,a2
1c00d710:	3e89                	jal	1c00d262 <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>
1c00d712:	20090613          	addi	a2,s2,512
1c00d716:	20048593          	addi	a1,s1,512 # 10200 <__CTOR_LIST__-0x1bfefe04>
1c00d71a:	850a                	mv	a0,sp
1c00d71c:	3699                	jal	1c00d262 <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>
1c00d71e:	860a                	mv	a2,sp
1c00d720:	85a2                	mv	a1,s0
1c00d722:	8522                	mv	a0,s0
1c00d724:	3935                	jal	1c00d360 <PQCLEAN_KYBER768_CLEAN_poly_add>
1c00d726:	40090613          	addi	a2,s2,1024
1c00d72a:	40048593          	addi	a1,s1,1024
1c00d72e:	850a                	mv	a0,sp
1c00d730:	3e0d                	jal	1c00d262 <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>
1c00d732:	860a                	mv	a2,sp
1c00d734:	85a2                	mv	a1,s0
1c00d736:	8522                	mv	a0,s0
1c00d738:	3125                	jal	1c00d360 <PQCLEAN_KYBER768_CLEAN_poly_add>
1c00d73a:	8522                	mv	a0,s0
1c00d73c:	3ef5                	jal	1c00d338 <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c00d73e:	20c12083          	lw	ra,524(sp)
1c00d742:	20812403          	lw	s0,520(sp)
1c00d746:	20412483          	lw	s1,516(sp)
1c00d74a:	20012903          	lw	s2,512(sp)
1c00d74e:	21010113          	addi	sp,sp,528
1c00d752:	8082                	ret

1c00d754 <PQCLEAN_KYBER768_CLEAN_polyvec_reduce>:
1c00d754:	1141                	addi	sp,sp,-16
1c00d756:	c606                	sw	ra,12(sp)
1c00d758:	c422                	sw	s0,8(sp)
1c00d75a:	842a                	mv	s0,a0
1c00d75c:	3ef1                	jal	1c00d338 <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c00d75e:	20040513          	addi	a0,s0,512
1c00d762:	3ed9                	jal	1c00d338 <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c00d764:	40040513          	addi	a0,s0,1024
1c00d768:	4422                	lw	s0,8(sp)
1c00d76a:	40b2                	lw	ra,12(sp)
1c00d76c:	0141                	addi	sp,sp,16
1c00d76e:	b6e9                	j	1c00d338 <PQCLEAN_KYBER768_CLEAN_poly_reduce>

1c00d770 <PQCLEAN_KYBER768_CLEAN_polyvec_add>:
1c00d770:	1101                	addi	sp,sp,-32
1c00d772:	cc22                	sw	s0,24(sp)
1c00d774:	ca26                	sw	s1,20(sp)
1c00d776:	c84a                	sw	s2,16(sp)
1c00d778:	c64e                	sw	s3,12(sp)
1c00d77a:	c452                	sw	s4,8(sp)
1c00d77c:	ce06                	sw	ra,28(sp)
1c00d77e:	89aa                	mv	s3,a0
1c00d780:	892e                	mv	s2,a1
1c00d782:	84b2                	mv	s1,a2
1c00d784:	4401                	li	s0,0
1c00d786:	60000a13          	li	s4,1536
1c00d78a:	00848633          	add	a2,s1,s0
1c00d78e:	008905b3          	add	a1,s2,s0
1c00d792:	00898533          	add	a0,s3,s0
1c00d796:	20040413          	addi	s0,s0,512
1c00d79a:	36d9                	jal	1c00d360 <PQCLEAN_KYBER768_CLEAN_poly_add>
1c00d79c:	ff4417e3          	bne	s0,s4,1c00d78a <PQCLEAN_KYBER768_CLEAN_polyvec_add+0x1a>
1c00d7a0:	40f2                	lw	ra,28(sp)
1c00d7a2:	4462                	lw	s0,24(sp)
1c00d7a4:	44d2                	lw	s1,20(sp)
1c00d7a6:	4942                	lw	s2,16(sp)
1c00d7a8:	49b2                	lw	s3,12(sp)
1c00d7aa:	4a22                	lw	s4,8(sp)
1c00d7ac:	6105                	addi	sp,sp,32
1c00d7ae:	8082                	ret

1c00d7b0 <PQCLEAN_KYBER768_CLEAN_barrett_reduce>:
1c00d7b0:	6795                	lui	a5,0x5
1c00d7b2:	ebf78793          	addi	a5,a5,-321 # 4ebf <__CTOR_LIST__-0x1bffb145>
1c00d7b6:	02f507b3          	mul	a5,a0,a5
1c00d7ba:	02000737          	lui	a4,0x2000
1c00d7be:	97ba                	add	a5,a5,a4
1c00d7c0:	6705                	lui	a4,0x1
1c00d7c2:	d0170713          	addi	a4,a4,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00d7c6:	87e9                	srai	a5,a5,0x1a
1c00d7c8:	02e787b3          	mul	a5,a5,a4
1c00d7cc:	8d1d                	sub	a0,a0,a5
1c00d7ce:	0542                	slli	a0,a0,0x10
1c00d7d0:	8541                	srai	a0,a0,0x10
1c00d7d2:	8082                	ret

1c00d7d4 <PQCLEAN_KYBER768_CLEAN_kyber_shake128_absorb>:
1c00d7d4:	7139                	addi	sp,sp,-64
1c00d7d6:	da26                	sw	s1,52(sp)
1c00d7d8:	d84a                	sw	s2,48(sp)
1c00d7da:	84b2                	mv	s1,a2
1c00d7dc:	892a                	mv	s2,a0
1c00d7de:	02000613          	li	a2,32
1c00d7e2:	0068                	addi	a0,sp,12
1c00d7e4:	de06                	sw	ra,60(sp)
1c00d7e6:	dc22                	sw	s0,56(sp)
1c00d7e8:	8436                	mv	s0,a3
1c00d7ea:	24f5                	jal	1c00dad6 <memcpy>
1c00d7ec:	006c                	addi	a1,sp,12
1c00d7ee:	854a                	mv	a0,s2
1c00d7f0:	02200613          	li	a2,34
1c00d7f4:	02910623          	sb	s1,44(sp)
1c00d7f8:	028106a3          	sb	s0,45(sp)
1c00d7fc:	d13fd0ef          	jal	ra,1c00b50e <shake128_absorb>
1c00d800:	50f2                	lw	ra,60(sp)
1c00d802:	5462                	lw	s0,56(sp)
1c00d804:	54d2                	lw	s1,52(sp)
1c00d806:	5942                	lw	s2,48(sp)
1c00d808:	6121                	addi	sp,sp,64
1c00d80a:	8082                	ret

1c00d80c <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>:
1c00d80c:	7139                	addi	sp,sp,-64
1c00d80e:	87b2                	mv	a5,a2
1c00d810:	da26                	sw	s1,52(sp)
1c00d812:	d84a                	sw	s2,48(sp)
1c00d814:	84aa                	mv	s1,a0
1c00d816:	892e                	mv	s2,a1
1c00d818:	02000613          	li	a2,32
1c00d81c:	85be                	mv	a1,a5
1c00d81e:	0068                	addi	a0,sp,12
1c00d820:	de06                	sw	ra,60(sp)
1c00d822:	dc22                	sw	s0,56(sp)
1c00d824:	8436                	mv	s0,a3
1c00d826:	2c45                	jal	1c00dad6 <memcpy>
1c00d828:	0070                	addi	a2,sp,12
1c00d82a:	85ca                	mv	a1,s2
1c00d82c:	8526                	mv	a0,s1
1c00d82e:	02100693          	li	a3,33
1c00d832:	02810623          	sb	s0,44(sp)
1c00d836:	fc5fd0ef          	jal	ra,1c00b7fa <shake256>
1c00d83a:	50f2                	lw	ra,60(sp)
1c00d83c:	5462                	lw	s0,56(sp)
1c00d83e:	54d2                	lw	s1,52(sp)
1c00d840:	5942                	lw	s2,48(sp)
1c00d842:	6121                	addi	sp,sp,64
1c00d844:	8082                	ret

1c00d846 <PQCLEAN_KYBER768_CLEAN_verify>:
1c00d846:	10060863          	beqz	a2,1c00d956 <PQCLEAN_KYBER768_CLEAN_verify+0x110>
1c00d84a:	fff60793          	addi	a5,a2,-1
1c00d84e:	470d                	li	a4,3
1c00d850:	10f77563          	bgeu	a4,a5,1c00d95a <PQCLEAN_KYBER768_CLEAN_verify+0x114>
1c00d854:	ffc67293          	andi	t0,a2,-4
1c00d858:	872e                	mv	a4,a1
1c00d85a:	86aa                	mv	a3,a0
1c00d85c:	92ae                	add	t0,t0,a1
1c00d85e:	4f01                	li	t5,0
1c00d860:	0016ce83          	lbu	t4,1(a3)
1c00d864:	00174e03          	lbu	t3,1(a4)
1c00d868:	0006c383          	lbu	t2,0(a3)
1c00d86c:	0026c303          	lbu	t1,2(a3)
1c00d870:	00074f83          	lbu	t6,0(a4)
1c00d874:	00274883          	lbu	a7,2(a4)
1c00d878:	0036c783          	lbu	a5,3(a3)
1c00d87c:	00374803          	lbu	a6,3(a4)
1c00d880:	0ea2                	slli	t4,t4,0x8
1c00d882:	0e22                	slli	t3,t3,0x8
1c00d884:	007eeeb3          	or	t4,t4,t2
1c00d888:	0342                	slli	t1,t1,0x10
1c00d88a:	01fe6e33          	or	t3,t3,t6
1c00d88e:	08c2                	slli	a7,a7,0x10
1c00d890:	01d36333          	or	t1,t1,t4
1c00d894:	07e2                	slli	a5,a5,0x18
1c00d896:	01c8e8b3          	or	a7,a7,t3
1c00d89a:	0862                	slli	a6,a6,0x18
1c00d89c:	0067e7b3          	or	a5,a5,t1
1c00d8a0:	01186833          	or	a6,a6,a7
1c00d8a4:	0107c7b3          	xor	a5,a5,a6
1c00d8a8:	0711                	addi	a4,a4,4
1c00d8aa:	01e7ef33          	or	t5,a5,t5
1c00d8ae:	0691                	addi	a3,a3,4
1c00d8b0:	fa5718e3          	bne	a4,t0,1c00d860 <PQCLEAN_KYBER768_CLEAN_verify+0x1a>
1c00d8b4:	008f5793          	srli	a5,t5,0x8
1c00d8b8:	01e7e7b3          	or	a5,a5,t5
1c00d8bc:	010f5713          	srli	a4,t5,0x10
1c00d8c0:	8fd9                	or	a5,a5,a4
1c00d8c2:	018f5f13          	srli	t5,t5,0x18
1c00d8c6:	01e7ef33          	or	t5,a5,t5
1c00d8ca:	ffc67793          	andi	a5,a2,-4
1c00d8ce:	0fff7f13          	andi	t5,t5,255
1c00d8d2:	06f60f63          	beq	a2,a5,1c00d950 <PQCLEAN_KYBER768_CLEAN_verify+0x10a>
1c00d8d6:	00f586b3          	add	a3,a1,a5
1c00d8da:	00f50733          	add	a4,a0,a5
1c00d8de:	0006c803          	lbu	a6,0(a3)
1c00d8e2:	00074703          	lbu	a4,0(a4)
1c00d8e6:	00178693          	addi	a3,a5,1
1c00d8ea:	01074733          	xor	a4,a4,a6
1c00d8ee:	00ef6f33          	or	t5,t5,a4
1c00d8f2:	0fff7f13          	andi	t5,t5,255
1c00d8f6:	04c6fd63          	bgeu	a3,a2,1c00d950 <PQCLEAN_KYBER768_CLEAN_verify+0x10a>
1c00d8fa:	00d50733          	add	a4,a0,a3
1c00d8fe:	96ae                	add	a3,a3,a1
1c00d900:	0006c803          	lbu	a6,0(a3)
1c00d904:	00074703          	lbu	a4,0(a4)
1c00d908:	00278693          	addi	a3,a5,2
1c00d90c:	01074733          	xor	a4,a4,a6
1c00d910:	00ef6f33          	or	t5,t5,a4
1c00d914:	0fff7f13          	andi	t5,t5,255
1c00d918:	02c6fc63          	bgeu	a3,a2,1c00d950 <PQCLEAN_KYBER768_CLEAN_verify+0x10a>
1c00d91c:	00d50733          	add	a4,a0,a3
1c00d920:	96ae                	add	a3,a3,a1
1c00d922:	00074703          	lbu	a4,0(a4)
1c00d926:	0006c683          	lbu	a3,0(a3)
1c00d92a:	078d                	addi	a5,a5,3
1c00d92c:	8f35                	xor	a4,a4,a3
1c00d92e:	00ef6f33          	or	t5,t5,a4
1c00d932:	0fff7f13          	andi	t5,t5,255
1c00d936:	00c7fd63          	bgeu	a5,a2,1c00d950 <PQCLEAN_KYBER768_CLEAN_verify+0x10a>
1c00d93a:	95be                	add	a1,a1,a5
1c00d93c:	97aa                	add	a5,a5,a0
1c00d93e:	0005c703          	lbu	a4,0(a1)
1c00d942:	0007c783          	lbu	a5,0(a5)
1c00d946:	8fb9                	xor	a5,a5,a4
1c00d948:	00ff6f33          	or	t5,t5,a5
1c00d94c:	0fff7f13          	andi	t5,t5,255
1c00d950:	01e03533          	snez	a0,t5
1c00d954:	8082                	ret
1c00d956:	4501                	li	a0,0
1c00d958:	8082                	ret
1c00d95a:	4f01                	li	t5,0
1c00d95c:	4781                	li	a5,0
1c00d95e:	bfa5                	j	1c00d8d6 <PQCLEAN_KYBER768_CLEAN_verify+0x90>

1c00d960 <PQCLEAN_KYBER768_CLEAN_cmov>:
1c00d960:	14060763          	beqz	a2,1c00daae <PQCLEAN_KYBER768_CLEAN_cmov+0x14e>
1c00d964:	00350793          	addi	a5,a0,3
1c00d968:	8f8d                	sub	a5,a5,a1
1c00d96a:	40d006b3          	neg	a3,a3
1c00d96e:	0077b793          	sltiu	a5,a5,7
1c00d972:	0ff6ff13          	andi	t5,a3,255
1c00d976:	10079c63          	bnez	a5,1c00da8e <PQCLEAN_KYBER768_CLEAN_cmov+0x12e>
1c00d97a:	fff60793          	addi	a5,a2,-1
1c00d97e:	0037b793          	sltiu	a5,a5,3
1c00d982:	10079663          	bnez	a5,1c00da8e <PQCLEAN_KYBER768_CLEAN_cmov+0x12e>
1c00d986:	008f1713          	slli	a4,t5,0x8
1c00d98a:	00ef6733          	or	a4,t5,a4
1c00d98e:	010f1793          	slli	a5,t5,0x10
1c00d992:	8fd9                	or	a5,a5,a4
1c00d994:	1141                	addi	sp,sp,-16
1c00d996:	018f1f93          	slli	t6,t5,0x18
1c00d99a:	ffc67293          	andi	t0,a2,-4
1c00d99e:	c622                	sw	s0,12(sp)
1c00d9a0:	01f7efb3          	or	t6,a5,t6
1c00d9a4:	872a                	mv	a4,a0
1c00d9a6:	882e                	mv	a6,a1
1c00d9a8:	92aa                	add	t0,t0,a0
1c00d9aa:	00184e03          	lbu	t3,1(a6)
1c00d9ae:	00174e83          	lbu	t4,1(a4)
1c00d9b2:	00084383          	lbu	t2,0(a6)
1c00d9b6:	00284883          	lbu	a7,2(a6)
1c00d9ba:	00074403          	lbu	s0,0(a4)
1c00d9be:	00274303          	lbu	t1,2(a4)
1c00d9c2:	00384783          	lbu	a5,3(a6)
1c00d9c6:	00374683          	lbu	a3,3(a4)
1c00d9ca:	0ea2                	slli	t4,t4,0x8
1c00d9cc:	0e22                	slli	t3,t3,0x8
1c00d9ce:	008eeeb3          	or	t4,t4,s0
1c00d9d2:	0342                	slli	t1,t1,0x10
1c00d9d4:	007e6e33          	or	t3,t3,t2
1c00d9d8:	08c2                	slli	a7,a7,0x10
1c00d9da:	01d36333          	or	t1,t1,t4
1c00d9de:	01c8e8b3          	or	a7,a7,t3
1c00d9e2:	06e2                	slli	a3,a3,0x18
1c00d9e4:	07e2                	slli	a5,a5,0x18
1c00d9e6:	0066e6b3          	or	a3,a3,t1
1c00d9ea:	0117e7b3          	or	a5,a5,a7
1c00d9ee:	8fb5                	xor	a5,a5,a3
1c00d9f0:	01f7f7b3          	and	a5,a5,t6
1c00d9f4:	8fb5                	xor	a5,a5,a3
1c00d9f6:	0087d313          	srli	t1,a5,0x8
1c00d9fa:	0107d893          	srli	a7,a5,0x10
1c00d9fe:	0187d693          	srli	a3,a5,0x18
1c00da02:	00f70023          	sb	a5,0(a4)
1c00da06:	006700a3          	sb	t1,1(a4)
1c00da0a:	01170123          	sb	a7,2(a4)
1c00da0e:	00d701a3          	sb	a3,3(a4)
1c00da12:	0711                	addi	a4,a4,4
1c00da14:	0811                	addi	a6,a6,4
1c00da16:	f8571ae3          	bne	a4,t0,1c00d9aa <PQCLEAN_KYBER768_CLEAN_cmov+0x4a>
1c00da1a:	ffc67793          	andi	a5,a2,-4
1c00da1e:	06f60563          	beq	a2,a5,1c00da88 <PQCLEAN_KYBER768_CLEAN_cmov+0x128>
1c00da22:	00f50833          	add	a6,a0,a5
1c00da26:	00f58733          	add	a4,a1,a5
1c00da2a:	00084883          	lbu	a7,0(a6)
1c00da2e:	00074703          	lbu	a4,0(a4)
1c00da32:	00178693          	addi	a3,a5,1
1c00da36:	00e8c733          	xor	a4,a7,a4
1c00da3a:	00ef7733          	and	a4,t5,a4
1c00da3e:	00e8c733          	xor	a4,a7,a4
1c00da42:	00e80023          	sb	a4,0(a6)
1c00da46:	04c6f163          	bgeu	a3,a2,1c00da88 <PQCLEAN_KYBER768_CLEAN_cmov+0x128>
1c00da4a:	00d508b3          	add	a7,a0,a3
1c00da4e:	96ae                	add	a3,a3,a1
1c00da50:	0008c803          	lbu	a6,0(a7)
1c00da54:	0006c703          	lbu	a4,0(a3)
1c00da58:	0789                	addi	a5,a5,2
1c00da5a:	00e84733          	xor	a4,a6,a4
1c00da5e:	00ef7733          	and	a4,t5,a4
1c00da62:	00e84733          	xor	a4,a6,a4
1c00da66:	00e88023          	sb	a4,0(a7)
1c00da6a:	00c7ff63          	bgeu	a5,a2,1c00da88 <PQCLEAN_KYBER768_CLEAN_cmov+0x128>
1c00da6e:	953e                	add	a0,a0,a5
1c00da70:	97ae                	add	a5,a5,a1
1c00da72:	00054703          	lbu	a4,0(a0)
1c00da76:	0007c783          	lbu	a5,0(a5)
1c00da7a:	8fb9                	xor	a5,a5,a4
1c00da7c:	00ff7f33          	and	t5,t5,a5
1c00da80:	01e74f33          	xor	t5,a4,t5
1c00da84:	01e50023          	sb	t5,0(a0)
1c00da88:	4432                	lw	s0,12(sp)
1c00da8a:	0141                	addi	sp,sp,16
1c00da8c:	8082                	ret
1c00da8e:	962a                	add	a2,a2,a0
1c00da90:	00054703          	lbu	a4,0(a0)
1c00da94:	0005c783          	lbu	a5,0(a1)
1c00da98:	0505                	addi	a0,a0,1
1c00da9a:	0585                	addi	a1,a1,1
1c00da9c:	8fb9                	xor	a5,a5,a4
1c00da9e:	00ff77b3          	and	a5,t5,a5
1c00daa2:	8fb9                	xor	a5,a5,a4
1c00daa4:	fef50fa3          	sb	a5,-1(a0)
1c00daa8:	fec514e3          	bne	a0,a2,1c00da90 <PQCLEAN_KYBER768_CLEAN_cmov+0x130>
1c00daac:	8082                	ret
1c00daae:	8082                	ret

1c00dab0 <pos_wait_forever>:
1c00dab0:	f14027f3          	csrr	a5,mhartid
1c00dab4:	8795                	srai	a5,a5,0x5
1c00dab6:	03f7f793          	andi	a5,a5,63
1c00daba:	477d                	li	a4,31
1c00dabc:	00e78363          	beq	a5,a4,1c00dac2 <pos_wait_forever+0x12>
1c00dac0:	a001                	j	1c00dac0 <pos_wait_forever+0x10>
1c00dac2:	1a10a7b7          	lui	a5,0x1a10a
1c00dac6:	577d                	li	a4,-1
1c00dac8:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00dacc:	10500073          	wfi
1c00dad0:	10500073          	wfi
1c00dad4:	bfe5                	j	1c00dacc <pos_wait_forever+0x1c>

1c00dad6 <memcpy>:
1c00dad6:	00c5e7b3          	or	a5,a1,a2
1c00dada:	8fc9                	or	a5,a5,a0
1c00dadc:	8b8d                	andi	a5,a5,3
1c00dade:	872e                	mv	a4,a1
1c00dae0:	882a                	mv	a6,a0
1c00dae2:	cbc5                	beqz	a5,1c00db92 <memcpy+0xbc>
1c00dae4:	c279                	beqz	a2,1c00dbaa <memcpy+0xd4>
1c00dae6:	00350793          	addi	a5,a0,3
1c00daea:	8f8d                	sub	a5,a5,a1
1c00daec:	0077b793          	sltiu	a5,a5,7
1c00daf0:	e7d1                	bnez	a5,1c00db7c <memcpy+0xa6>
1c00daf2:	fff60793          	addi	a5,a2,-1
1c00daf6:	0047b793          	sltiu	a5,a5,4
1c00dafa:	e3c9                	bnez	a5,1c00db7c <memcpy+0xa6>
1c00dafc:	ffc67e13          	andi	t3,a2,-4
1c00db00:	9e2e                	add	t3,t3,a1
1c00db02:	00174883          	lbu	a7,1(a4)
1c00db06:	00074303          	lbu	t1,0(a4)
1c00db0a:	00274683          	lbu	a3,2(a4)
1c00db0e:	00374783          	lbu	a5,3(a4)
1c00db12:	08a2                	slli	a7,a7,0x8
1c00db14:	0068e8b3          	or	a7,a7,t1
1c00db18:	06c2                	slli	a3,a3,0x10
1c00db1a:	0116e6b3          	or	a3,a3,a7
1c00db1e:	07e2                	slli	a5,a5,0x18
1c00db20:	8fd5                	or	a5,a5,a3
1c00db22:	0087d313          	srli	t1,a5,0x8
1c00db26:	0107d893          	srli	a7,a5,0x10
1c00db2a:	83e1                	srli	a5,a5,0x18
1c00db2c:	00d80023          	sb	a3,0(a6)
1c00db30:	006800a3          	sb	t1,1(a6)
1c00db34:	01180123          	sb	a7,2(a6)
1c00db38:	00f801a3          	sb	a5,3(a6)
1c00db3c:	0711                	addi	a4,a4,4
1c00db3e:	0811                	addi	a6,a6,4
1c00db40:	fdc711e3          	bne	a4,t3,1c00db02 <memcpy+0x2c>
1c00db44:	ffc67793          	andi	a5,a2,-4
1c00db48:	00367693          	andi	a3,a2,3
1c00db4c:	00f50733          	add	a4,a0,a5
1c00db50:	95be                	add	a1,a1,a5
1c00db52:	02f60f63          	beq	a2,a5,1c00db90 <memcpy+0xba>
1c00db56:	0005c603          	lbu	a2,0(a1)
1c00db5a:	fff68793          	addi	a5,a3,-1
1c00db5e:	00c70023          	sb	a2,0(a4)
1c00db62:	c79d                	beqz	a5,1c00db90 <memcpy+0xba>
1c00db64:	0015c603          	lbu	a2,1(a1)
1c00db68:	4789                	li	a5,2
1c00db6a:	00c700a3          	sb	a2,1(a4)
1c00db6e:	02f68163          	beq	a3,a5,1c00db90 <memcpy+0xba>
1c00db72:	0025c783          	lbu	a5,2(a1)
1c00db76:	00f70123          	sb	a5,2(a4)
1c00db7a:	8082                	ret
1c00db7c:	962e                	add	a2,a2,a1
1c00db7e:	87aa                	mv	a5,a0
1c00db80:	0005c703          	lbu	a4,0(a1)
1c00db84:	0585                	addi	a1,a1,1
1c00db86:	0785                	addi	a5,a5,1
1c00db88:	fee78fa3          	sb	a4,-1(a5)
1c00db8c:	fec59ae3          	bne	a1,a2,1c00db80 <memcpy+0xaa>
1c00db90:	8082                	ret
1c00db92:	de7d                	beqz	a2,1c00db90 <memcpy+0xba>
1c00db94:	87aa                	mv	a5,a0
1c00db96:	4194                	lw	a3,0(a1)
1c00db98:	0791                	addi	a5,a5,4
1c00db9a:	40c78733          	sub	a4,a5,a2
1c00db9e:	fed7ae23          	sw	a3,-4(a5)
1c00dba2:	0591                	addi	a1,a1,4
1c00dba4:	fea719e3          	bne	a4,a0,1c00db96 <memcpy+0xc0>
1c00dba8:	8082                	ret
1c00dbaa:	8082                	ret

1c00dbac <memmove>:
1c00dbac:	40b507b3          	sub	a5,a0,a1
1c00dbb0:	0ac7e063          	bltu	a5,a2,1c00dc50 <memmove+0xa4>
1c00dbb4:	c661                	beqz	a2,1c00dc7c <memmove+0xd0>
1c00dbb6:	00350793          	addi	a5,a0,3
1c00dbba:	8f8d                	sub	a5,a5,a1
1c00dbbc:	0077b793          	sltiu	a5,a5,7
1c00dbc0:	e3dd                	bnez	a5,1c00dc66 <memmove+0xba>
1c00dbc2:	fff60793          	addi	a5,a2,-1
1c00dbc6:	0047b793          	sltiu	a5,a5,4
1c00dbca:	efd1                	bnez	a5,1c00dc66 <memmove+0xba>
1c00dbcc:	ffc67e13          	andi	t3,a2,-4
1c00dbd0:	872e                	mv	a4,a1
1c00dbd2:	882a                	mv	a6,a0
1c00dbd4:	9e2e                	add	t3,t3,a1
1c00dbd6:	00174883          	lbu	a7,1(a4)
1c00dbda:	00074303          	lbu	t1,0(a4)
1c00dbde:	00274683          	lbu	a3,2(a4)
1c00dbe2:	00374783          	lbu	a5,3(a4)
1c00dbe6:	08a2                	slli	a7,a7,0x8
1c00dbe8:	0068e8b3          	or	a7,a7,t1
1c00dbec:	06c2                	slli	a3,a3,0x10
1c00dbee:	0116e6b3          	or	a3,a3,a7
1c00dbf2:	07e2                	slli	a5,a5,0x18
1c00dbf4:	8fd5                	or	a5,a5,a3
1c00dbf6:	0087d313          	srli	t1,a5,0x8
1c00dbfa:	0107d893          	srli	a7,a5,0x10
1c00dbfe:	83e1                	srli	a5,a5,0x18
1c00dc00:	00d80023          	sb	a3,0(a6)
1c00dc04:	006800a3          	sb	t1,1(a6)
1c00dc08:	01180123          	sb	a7,2(a6)
1c00dc0c:	00f801a3          	sb	a5,3(a6)
1c00dc10:	0711                	addi	a4,a4,4
1c00dc12:	0811                	addi	a6,a6,4
1c00dc14:	fdc711e3          	bne	a4,t3,1c00dbd6 <memmove+0x2a>
1c00dc18:	ffc67793          	andi	a5,a2,-4
1c00dc1c:	00367693          	andi	a3,a2,3
1c00dc20:	00f50733          	add	a4,a0,a5
1c00dc24:	95be                	add	a1,a1,a5
1c00dc26:	04f60a63          	beq	a2,a5,1c00dc7a <memmove+0xce>
1c00dc2a:	0005c603          	lbu	a2,0(a1)
1c00dc2e:	fff68793          	addi	a5,a3,-1
1c00dc32:	00c70023          	sb	a2,0(a4)
1c00dc36:	c3b1                	beqz	a5,1c00dc7a <memmove+0xce>
1c00dc38:	0015c603          	lbu	a2,1(a1)
1c00dc3c:	4789                	li	a5,2
1c00dc3e:	00c700a3          	sb	a2,1(a4)
1c00dc42:	02f68c63          	beq	a3,a5,1c00dc7a <memmove+0xce>
1c00dc46:	0025c783          	lbu	a5,2(a1)
1c00dc4a:	00f70123          	sb	a5,2(a4)
1c00dc4e:	8082                	ret
1c00dc50:	167d                	addi	a2,a2,-1
1c00dc52:	00c587b3          	add	a5,a1,a2
1c00dc56:	0007c703          	lbu	a4,0(a5)
1c00dc5a:	00c507b3          	add	a5,a0,a2
1c00dc5e:	00e78023          	sb	a4,0(a5)
1c00dc62:	f67d                	bnez	a2,1c00dc50 <memmove+0xa4>
1c00dc64:	8082                	ret
1c00dc66:	962a                	add	a2,a2,a0
1c00dc68:	87aa                	mv	a5,a0
1c00dc6a:	0005c703          	lbu	a4,0(a1)
1c00dc6e:	0785                	addi	a5,a5,1
1c00dc70:	0585                	addi	a1,a1,1
1c00dc72:	fee78fa3          	sb	a4,-1(a5)
1c00dc76:	fec79ae3          	bne	a5,a2,1c00dc6a <memmove+0xbe>
1c00dc7a:	8082                	ret
1c00dc7c:	8082                	ret

1c00dc7e <strchr>:
1c00dc7e:	00054703          	lbu	a4,0(a0)
1c00dc82:	0ff5f593          	andi	a1,a1,255
1c00dc86:	87aa                	mv	a5,a0
1c00dc88:	00b70863          	beq	a4,a1,1c00dc98 <strchr+0x1a>
1c00dc8c:	cb01                	beqz	a4,1c00dc9c <strchr+0x1e>
1c00dc8e:	0017c703          	lbu	a4,1(a5)
1c00dc92:	0785                	addi	a5,a5,1
1c00dc94:	feb71ce3          	bne	a4,a1,1c00dc8c <strchr+0xe>
1c00dc98:	853e                	mv	a0,a5
1c00dc9a:	8082                	ret
1c00dc9c:	4501                	li	a0,0
1c00dc9e:	dded                	beqz	a1,1c00dc98 <strchr+0x1a>
1c00dca0:	8082                	ret

1c00dca2 <puts>:
1c00dca2:	00054783          	lbu	a5,0(a0)
1c00dca6:	c78d                	beqz	a5,1c00dcd0 <puts+0x2e>
1c00dca8:	f14026f3          	csrr	a3,mhartid
1c00dcac:	00369713          	slli	a4,a3,0x3
1c00dcb0:	1a10f637          	lui	a2,0x1a10f
1c00dcb4:	0ff77713          	andi	a4,a4,255
1c00dcb8:	9732                	add	a4,a4,a2
1c00dcba:	6609                	lui	a2,0x2
1c00dcbc:	068a                	slli	a3,a3,0x2
1c00dcbe:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00dcc2:	8ef1                	and	a3,a3,a2
1c00dcc4:	9736                	add	a4,a4,a3
1c00dcc6:	c31c                	sw	a5,0(a4)
1c00dcc8:	00154783          	lbu	a5,1(a0)
1c00dccc:	0505                	addi	a0,a0,1
1c00dcce:	ffe5                	bnez	a5,1c00dcc6 <puts+0x24>
1c00dcd0:	f1402773          	csrr	a4,mhartid
1c00dcd4:	00371793          	slli	a5,a4,0x3
1c00dcd8:	1a10f6b7          	lui	a3,0x1a10f
1c00dcdc:	0ff7f793          	andi	a5,a5,255
1c00dce0:	97b6                	add	a5,a5,a3
1c00dce2:	6689                	lui	a3,0x2
1c00dce4:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00dce8:	070a                	slli	a4,a4,0x2
1c00dcea:	8f75                	and	a4,a4,a3
1c00dcec:	97ba                	add	a5,a5,a4
1c00dcee:	4729                	li	a4,10
1c00dcf0:	c398                	sw	a4,0(a5)
1c00dcf2:	4501                	li	a0,0
1c00dcf4:	8082                	ret

1c00dcf6 <pos_libc_fputc_locked>:
1c00dcf6:	6689                	lui	a3,0x2
1c00dcf8:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00dcfc:	f14027f3          	csrr	a5,mhartid
1c00dd00:	00379713          	slli	a4,a5,0x3
1c00dd04:	078a                	slli	a5,a5,0x2
1c00dd06:	8ff5                	and	a5,a5,a3
1c00dd08:	0ff77713          	andi	a4,a4,255
1c00dd0c:	1a10f6b7          	lui	a3,0x1a10f
1c00dd10:	9736                	add	a4,a4,a3
1c00dd12:	97ba                	add	a5,a5,a4
1c00dd14:	0ff57513          	andi	a0,a0,255
1c00dd18:	c388                	sw	a0,0(a5)
1c00dd1a:	4501                	li	a0,0
1c00dd1c:	8082                	ret

1c00dd1e <putchar>:
1c00dd1e:	6689                	lui	a3,0x2
1c00dd20:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00dd24:	f14027f3          	csrr	a5,mhartid
1c00dd28:	00379713          	slli	a4,a5,0x3
1c00dd2c:	078a                	slli	a5,a5,0x2
1c00dd2e:	8ff5                	and	a5,a5,a3
1c00dd30:	0ff77713          	andi	a4,a4,255
1c00dd34:	1a10f6b7          	lui	a3,0x1a10f
1c00dd38:	9736                	add	a4,a4,a3
1c00dd3a:	97ba                	add	a5,a5,a4
1c00dd3c:	0ff57513          	andi	a0,a0,255
1c00dd40:	c388                	sw	a0,0(a5)
1c00dd42:	4501                	li	a0,0
1c00dd44:	8082                	ret

1c00dd46 <pos_libc_prf_locked>:
1c00dd46:	a0b1                	j	1c00dd92 <pos_libc_prf>

1c00dd48 <exit>:
1c00dd48:	800007b7          	lui	a5,0x80000
1c00dd4c:	1141                	addi	sp,sp,-16
1c00dd4e:	8d5d                	or	a0,a0,a5
1c00dd50:	c606                	sw	ra,12(sp)
1c00dd52:	1a1047b7          	lui	a5,0x1a104
1c00dd56:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c00dd5a:	3b99                	jal	1c00dab0 <pos_wait_forever>

1c00dd5c <pos_io_start>:
1c00dd5c:	4501                	li	a0,0
1c00dd5e:	8082                	ret

1c00dd60 <pos_io_stop>:
1c00dd60:	4501                	li	a0,0
1c00dd62:	8082                	ret

1c00dd64 <printf>:
1c00dd64:	7139                	addi	sp,sp,-64
1c00dd66:	02410313          	addi	t1,sp,36
1c00dd6a:	d432                	sw	a2,40(sp)
1c00dd6c:	862a                	mv	a2,a0
1c00dd6e:	1c00e537          	lui	a0,0x1c00e
1c00dd72:	d22e                	sw	a1,36(sp)
1c00dd74:	d636                	sw	a3,44(sp)
1c00dd76:	4589                	li	a1,2
1c00dd78:	869a                	mv	a3,t1
1c00dd7a:	cf650513          	addi	a0,a0,-778 # 1c00dcf6 <pos_libc_fputc_locked>
1c00dd7e:	ce06                	sw	ra,28(sp)
1c00dd80:	d83a                	sw	a4,48(sp)
1c00dd82:	da3e                	sw	a5,52(sp)
1c00dd84:	dc42                	sw	a6,56(sp)
1c00dd86:	de46                	sw	a7,60(sp)
1c00dd88:	c61a                	sw	t1,12(sp)
1c00dd8a:	3f75                	jal	1c00dd46 <pos_libc_prf_locked>
1c00dd8c:	40f2                	lw	ra,28(sp)
1c00dd8e:	6121                	addi	sp,sp,64
1c00dd90:	8082                	ret

1c00dd92 <pos_libc_prf>:
1c00dd92:	7169                	addi	sp,sp,-304
1c00dd94:	12112623          	sw	ra,300(sp)
1c00dd98:	12812423          	sw	s0,296(sp)
1c00dd9c:	12912223          	sw	s1,292(sp)
1c00dda0:	13212023          	sw	s2,288(sp)
1c00dda4:	11312e23          	sw	s3,284(sp)
1c00dda8:	11412c23          	sw	s4,280(sp)
1c00ddac:	11512a23          	sw	s5,276(sp)
1c00ddb0:	11612823          	sw	s6,272(sp)
1c00ddb4:	11712623          	sw	s7,268(sp)
1c00ddb8:	11812423          	sw	s8,264(sp)
1c00ddbc:	11912223          	sw	s9,260(sp)
1c00ddc0:	11a12023          	sw	s10,256(sp)
1c00ddc4:	dfee                	sw	s11,252(sp)
1c00ddc6:	00064783          	lbu	a5,0(a2)
1c00ddca:	c636                	sw	a3,12(sp)
1c00ddcc:	3c0781e3          	beqz	a5,1c00e98e <pos_libc_prf+0xbfc>
1c00ddd0:	7741                	lui	a4,0xffff0
1c00ddd2:	0ff70713          	addi	a4,a4,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c00ddd6:	cc3a                	sw	a4,24(sp)
1c00ddd8:	10000737          	lui	a4,0x10000
1c00dddc:	177d                	addi	a4,a4,-1
1c00ddde:	8caa                	mv	s9,a0
1c00dde0:	84ae                	mv	s1,a1
1c00dde2:	00160c13          	addi	s8,a2,1
1c00dde6:	4401                	li	s0,0
1c00dde8:	1c000d37          	lui	s10,0x1c000
1c00ddec:	ca3a                	sw	a4,20(sp)
1c00ddee:	853e                	mv	a0,a5
1c00ddf0:	02500793          	li	a5,37
1c00ddf4:	04f50863          	beq	a0,a5,1c00de44 <pos_libc_prf+0xb2>
1c00ddf8:	85a6                	mv	a1,s1
1c00ddfa:	9c82                	jalr	s9
1c00ddfc:	57fd                	li	a5,-1
1c00ddfe:	4cf50b63          	beq	a0,a5,1c00e2d4 <pos_libc_prf+0x542>
1c00de02:	0405                	addi	s0,s0,1
1c00de04:	000c4503          	lbu	a0,0(s8)
1c00de08:	0c05                	addi	s8,s8,1
1c00de0a:	f17d                	bnez	a0,1c00ddf0 <pos_libc_prf+0x5e>
1c00de0c:	12c12083          	lw	ra,300(sp)
1c00de10:	8522                	mv	a0,s0
1c00de12:	12812403          	lw	s0,296(sp)
1c00de16:	12412483          	lw	s1,292(sp)
1c00de1a:	12012903          	lw	s2,288(sp)
1c00de1e:	11c12983          	lw	s3,284(sp)
1c00de22:	11812a03          	lw	s4,280(sp)
1c00de26:	11412a83          	lw	s5,276(sp)
1c00de2a:	11012b03          	lw	s6,272(sp)
1c00de2e:	10c12b83          	lw	s7,268(sp)
1c00de32:	10812c03          	lw	s8,264(sp)
1c00de36:	10412c83          	lw	s9,260(sp)
1c00de3a:	10012d03          	lw	s10,256(sp)
1c00de3e:	5dfe                	lw	s11,252(sp)
1c00de40:	6155                	addi	sp,sp,304
1c00de42:	8082                	ret
1c00de44:	8de2                	mv	s11,s8
1c00de46:	000dcc03          	lbu	s8,0(s11)
1c00de4a:	148d0513          	addi	a0,s10,328 # 1c000148 <__clz_tab+0x12c>
1c00de4e:	c826                	sw	s1,16(sp)
1c00de50:	85e2                	mv	a1,s8
1c00de52:	c202                	sw	zero,4(sp)
1c00de54:	c402                	sw	zero,8(sp)
1c00de56:	c002                	sw	zero,0(sp)
1c00de58:	001d8493          	addi	s1,s11,1
1c00de5c:	350d                	jal	1c00dc7e <strchr>
1c00de5e:	02000913          	li	s2,32
1c00de62:	4b81                	li	s7,0
1c00de64:	02b00993          	li	s3,43
1c00de68:	02d00b13          	li	s6,45
1c00de6c:	03000a93          	li	s5,48
1c00de70:	02000a13          	li	s4,32
1c00de74:	8626                	mv	a2,s1
1c00de76:	c51d                	beqz	a0,1c00dea4 <pos_libc_prf+0x112>
1c00de78:	413c0e63          	beq	s8,s3,1c00e294 <pos_libc_prf+0x502>
1c00de7c:	3f89ec63          	bltu	s3,s8,1c00e274 <pos_libc_prf+0x4e2>
1c00de80:	414c0663          	beq	s8,s4,1c00e28c <pos_libc_prf+0x4fa>
1c00de84:	02300793          	li	a5,35
1c00de88:	3efc1363          	bne	s8,a5,1c00e26e <pos_libc_prf+0x4dc>
1c00de8c:	4b85                	li	s7,1
1c00de8e:	8da6                	mv	s11,s1
1c00de90:	000dcc03          	lbu	s8,0(s11)
1c00de94:	148d0513          	addi	a0,s10,328
1c00de98:	001d8493          	addi	s1,s11,1
1c00de9c:	85e2                	mv	a1,s8
1c00de9e:	33c5                	jal	1c00dc7e <strchr>
1c00dea0:	8626                	mv	a2,s1
1c00dea2:	f979                	bnez	a0,1c00de78 <pos_libc_prf+0xe6>
1c00dea4:	87e2                	mv	a5,s8
1c00dea6:	ce5e                	sw	s7,28(sp)
1c00dea8:	02a00693          	li	a3,42
1c00deac:	8c6e                	mv	s8,s11
1c00deae:	8ba6                	mv	s7,s1
1c00deb0:	8dbe                	mv	s11,a5
1c00deb2:	44c2                	lw	s1,16(sp)
1c00deb4:	42d78263          	beq	a5,a3,1c00e2d8 <pos_libc_prf+0x546>
1c00deb8:	fd078693          	addi	a3,a5,-48
1c00debc:	4525                	li	a0,9
1c00debe:	4a01                	li	s4,0
1c00dec0:	3cd57f63          	bgeu	a0,a3,1c00e29e <pos_libc_prf+0x50c>
1c00dec4:	02e00793          	li	a5,46
1c00dec8:	5afd                	li	s5,-1
1c00deca:	74fd8363          	beq	s11,a5,1c00e610 <pos_libc_prf+0x87e>
1c00dece:	1c0007b7          	lui	a5,0x1c000
1c00ded2:	85ee                	mv	a1,s11
1c00ded4:	15078513          	addi	a0,a5,336 # 1c000150 <__clz_tab+0x134>
1c00ded8:	c832                	sw	a2,16(sp)
1c00deda:	3355                	jal	1c00dc7e <strchr>
1c00dedc:	4642                	lw	a2,16(sp)
1c00dede:	8c32                	mv	s8,a2
1c00dee0:	c509                	beqz	a0,1c00deea <pos_libc_prf+0x158>
1c00dee2:	00064d83          	lbu	s11,0(a2)
1c00dee6:	00160c13          	addi	s8,a2,1
1c00deea:	06900793          	li	a5,105
1c00deee:	0afd8ee3          	beq	s11,a5,1c00e7aa <pos_libc_prf+0xa18>
1c00def2:	4db7c763          	blt	a5,s11,1c00e3c0 <pos_libc_prf+0x62e>
1c00def6:	05800793          	li	a5,88
1c00defa:	4efd8163          	beq	s11,a5,1c00e3dc <pos_libc_prf+0x64a>
1c00defe:	41b7c163          	blt	a5,s11,1c00e300 <pos_libc_prf+0x56e>
1c00df02:	02500793          	li	a5,37
1c00df06:	26fd8ae3          	beq	s11,a5,1c00e97a <pos_libc_prf+0xbe8>
1c00df0a:	3fb7d863          	bge	a5,s11,1c00e2fa <pos_libc_prf+0x568>
1c00df0e:	fbbd8793          	addi	a5,s11,-69
1c00df12:	4689                	li	a3,2
1c00df14:	eef6e8e3          	bltu	a3,a5,1c00de04 <pos_libc_prf+0x72>
1c00df18:	47b2                	lw	a5,12(sp)
1c00df1a:	7ff00893          	li	a7,2047
1c00df1e:	00778b13          	addi	s6,a5,7
1c00df22:	ff8b7b13          	andi	s6,s6,-8
1c00df26:	004b2783          	lw	a5,4(s6)
1c00df2a:	000b2603          	lw	a2,0(s6)
1c00df2e:	0b21                	addi	s6,s6,8
1c00df30:	00b79693          	slli	a3,a5,0xb
1c00df34:	01565513          	srli	a0,a2,0x15
1c00df38:	8ec9                	or	a3,a3,a0
1c00df3a:	0147d813          	srli	a6,a5,0x14
1c00df3e:	0686                	slli	a3,a3,0x1
1c00df40:	7ff87813          	andi	a6,a6,2047
1c00df44:	0016d513          	srli	a0,a3,0x1
1c00df48:	00b61313          	slli	t1,a2,0xb
1c00df4c:	86be                	mv	a3,a5
1c00df4e:	41180263          	beq	a6,a7,1c00e352 <pos_libc_prf+0x5c0>
1c00df52:	04600793          	li	a5,70
1c00df56:	00fd9463          	bne	s11,a5,1c00df5e <pos_libc_prf+0x1cc>
1c00df5a:	06600d93          	li	s11,102
1c00df5e:	006867b3          	or	a5,a6,t1
1c00df62:	00a7e8b3          	or	a7,a5,a0
1c00df66:	862a                	mv	a2,a0
1c00df68:	340885e3          	beqz	a7,1c00eab2 <pos_libc_prf+0xd20>
1c00df6c:	80000637          	lui	a2,0x80000
1c00df70:	c0280813          	addi	a6,a6,-1022
1c00df74:	879a                	mv	a5,t1
1c00df76:	8e49                	or	a2,a2,a0
1c00df78:	4606c7e3          	bltz	a3,1c00ebe6 <pos_libc_prf+0xe54>
1c00df7c:	4722                	lw	a4,8(sp)
1c00df7e:	480708e3          	beqz	a4,1c00ec0e <pos_libc_prf+0xe7c>
1c00df82:	02b00693          	li	a3,43
1c00df86:	02d10223          	sb	a3,36(sp)
1c00df8a:	02510f13          	addi	t5,sp,37
1c00df8e:	56f9                	li	a3,-2
1c00df90:	4301                	li	t1,0
1c00df92:	06d85663          	bge	a6,a3,1c00dffe <pos_libc_prf+0x26c>
1c00df96:	333338b7          	lui	a7,0x33333
1c00df9a:	80000e37          	lui	t3,0x80000
1c00df9e:	33288893          	addi	a7,a7,818 # 33333332 <__l2_shared_end+0x17323332>
1c00dfa2:	fffe4e13          	not	t3,t3
1c00dfa6:	5ef9                	li	t4,-2
1c00dfa8:	01f61593          	slli	a1,a2,0x1f
1c00dfac:	0017d693          	srli	a3,a5,0x1
1c00dfb0:	0017f713          	andi	a4,a5,1
1c00dfb4:	8ecd                	or	a3,a3,a1
1c00dfb6:	00d707b3          	add	a5,a4,a3
1c00dfba:	00e7b733          	sltu	a4,a5,a4
1c00dfbe:	8205                	srli	a2,a2,0x1
1c00dfc0:	963a                	add	a2,a2,a4
1c00dfc2:	8742                	mv	a4,a6
1c00dfc4:	0805                	addi	a6,a6,1
1c00dfc6:	fec8e1e3          	bltu	a7,a2,1c00dfa8 <pos_libc_prf+0x216>
1c00dfca:	00279593          	slli	a1,a5,0x2
1c00dfce:	01e7d513          	srli	a0,a5,0x1e
1c00dfd2:	00261693          	slli	a3,a2,0x2
1c00dfd6:	97ae                	add	a5,a5,a1
1c00dfd8:	8ec9                	or	a3,a3,a0
1c00dfda:	9636                	add	a2,a2,a3
1c00dfdc:	00b7b5b3          	sltu	a1,a5,a1
1c00dfe0:	962e                	add	a2,a2,a1
1c00dfe2:	01f7d693          	srli	a3,a5,0x1f
1c00dfe6:	00270813          	addi	a6,a4,2 # 10000002 <__CTOR_LIST__-0xc000002>
1c00dfea:	137d                	addi	t1,t1,-1
1c00dfec:	01c61763          	bne	a2,t3,1c00dffa <pos_libc_prf+0x268>
1c00dff0:	00170813          	addi	a6,a4,1
1c00dff4:	0786                	slli	a5,a5,0x1
1c00dff6:	ffe6e613          	ori	a2,a3,-2
1c00dffa:	fbd847e3          	blt	a6,t4,1c00dfa8 <pos_libc_prf+0x216>
1c00dffe:	07005363          	blez	a6,1c00e064 <pos_libc_prf+0x2d2>
1c00e002:	800008b7          	lui	a7,0x80000
1c00e006:	4e15                	li	t3,5
1c00e008:	fff8c893          	not	a7,a7
1c00e00c:	00278693          	addi	a3,a5,2
1c00e010:	00f6b7b3          	sltu	a5,a3,a5
1c00e014:	963e                	add	a2,a2,a5
1c00e016:	03c657b3          	divu	a5,a2,t3
1c00e01a:	0036d713          	srli	a4,a3,0x3
1c00e01e:	187d                	addi	a6,a6,-1
1c00e020:	0305                	addi	t1,t1,1
1c00e022:	00279593          	slli	a1,a5,0x2
1c00e026:	95be                	add	a1,a1,a5
1c00e028:	8e0d                	sub	a2,a2,a1
1c00e02a:	0676                	slli	a2,a2,0x1d
1c00e02c:	8f51                	or	a4,a4,a2
1c00e02e:	03c75633          	divu	a2,a4,t3
1c00e032:	00361713          	slli	a4,a2,0x3
1c00e036:	00561593          	slli	a1,a2,0x5
1c00e03a:	95ba                	add	a1,a1,a4
1c00e03c:	8e8d                	sub	a3,a3,a1
1c00e03e:	03c6d6b3          	divu	a3,a3,t3
1c00e042:	8275                	srli	a2,a2,0x1d
1c00e044:	963e                	add	a2,a2,a5
1c00e046:	00e687b3          	add	a5,a3,a4
1c00e04a:	00d7b6b3          	sltu	a3,a5,a3
1c00e04e:	9636                	add	a2,a2,a3
1c00e050:	01f7d713          	srli	a4,a5,0x1f
1c00e054:	0606                	slli	a2,a2,0x1
1c00e056:	8e59                	or	a2,a2,a4
1c00e058:	0786                	slli	a5,a5,0x1
1c00e05a:	187d                	addi	a6,a6,-1
1c00e05c:	fec8fae3          	bgeu	a7,a2,1c00e050 <pos_libc_prf+0x2be>
1c00e060:	fb0046e3          	bgtz	a6,1c00e00c <pos_libc_prf+0x27a>
1c00e064:	4e11                	li	t3,4
1c00e066:	01f61693          	slli	a3,a2,0x1f
1c00e06a:	0017d713          	srli	a4,a5,0x1
1c00e06e:	8f55                	or	a4,a4,a3
1c00e070:	8b85                	andi	a5,a5,1
1c00e072:	00e78533          	add	a0,a5,a4
1c00e076:	8205                	srli	a2,a2,0x1
1c00e078:	00f537b3          	sltu	a5,a0,a5
1c00e07c:	00c788b3          	add	a7,a5,a2
1c00e080:	0805                	addi	a6,a6,1
1c00e082:	87aa                	mv	a5,a0
1c00e084:	8646                	mv	a2,a7
1c00e086:	ffc810e3          	bne	a6,t3,1c00e066 <pos_libc_prf+0x2d4>
1c00e08a:	06700793          	li	a5,103
1c00e08e:	2a0acee3          	bltz	s5,1c00eb4a <pos_libc_prf+0xdb8>
1c00e092:	28fd83e3          	beq	s11,a5,1c00eb18 <pos_libc_prf+0xd86>
1c00e096:	04700793          	li	a5,71
1c00e09a:	26fd8fe3          	beq	s11,a5,1c00eb18 <pos_libc_prf+0xd86>
1c00e09e:	06600793          	li	a5,102
1c00e0a2:	2cfd85e3          	beq	s11,a5,1c00eb6c <pos_libc_prf+0xdda>
1c00e0a6:	001a8813          	addi	a6,s5,1
1c00e0aa:	47c1                	li	a5,16
1c00e0ac:	0107d363          	bge	a5,a6,1c00e0b2 <pos_libc_prf+0x320>
1c00e0b0:	4841                	li	a6,16
1c00e0b2:	187d                	addi	a6,a6,-1
1c00e0b4:	4601                	li	a2,0
1c00e0b6:	4781                	li	a5,0
1c00e0b8:	080006b7          	lui	a3,0x8000
1c00e0bc:	4e15                	li	t3,5
1c00e0be:	5efd                	li	t4,-1
1c00e0c0:	00278713          	addi	a4,a5,2
1c00e0c4:	00f737b3          	sltu	a5,a4,a5
1c00e0c8:	97b6                	add	a5,a5,a3
1c00e0ca:	03c7dfb3          	divu	t6,a5,t3
1c00e0ce:	00375593          	srli	a1,a4,0x3
1c00e0d2:	187d                	addi	a6,a6,-1
1c00e0d4:	002f9693          	slli	a3,t6,0x2
1c00e0d8:	96fe                	add	a3,a3,t6
1c00e0da:	8f95                	sub	a5,a5,a3
1c00e0dc:	07f6                	slli	a5,a5,0x1d
1c00e0de:	8ddd                	or	a1,a1,a5
1c00e0e0:	03c5d5b3          	divu	a1,a1,t3
1c00e0e4:	00359693          	slli	a3,a1,0x3
1c00e0e8:	00559793          	slli	a5,a1,0x5
1c00e0ec:	97b6                	add	a5,a5,a3
1c00e0ee:	8f1d                	sub	a4,a4,a5
1c00e0f0:	03c757b3          	divu	a5,a4,t3
1c00e0f4:	81f5                	srli	a1,a1,0x1d
1c00e0f6:	95fe                	add	a1,a1,t6
1c00e0f8:	96be                	add	a3,a3,a5
1c00e0fa:	00f6b733          	sltu	a4,a3,a5
1c00e0fe:	972e                	add	a4,a4,a1
1c00e100:	01f71593          	slli	a1,a4,0x1f
1c00e104:	0016d793          	srli	a5,a3,0x1
1c00e108:	8fcd                	or	a5,a5,a1
1c00e10a:	8a85                	andi	a3,a3,1
1c00e10c:	97b6                	add	a5,a5,a3
1c00e10e:	8305                	srli	a4,a4,0x1
1c00e110:	00d7b6b3          	sltu	a3,a5,a3
1c00e114:	96ba                	add	a3,a3,a4
1c00e116:	fbd815e3          	bne	a6,t4,1c00e0c0 <pos_libc_prf+0x32e>
1c00e11a:	97aa                	add	a5,a5,a0
1c00e11c:	96c6                	add	a3,a3,a7
1c00e11e:	00a7b533          	sltu	a0,a5,a0
1c00e122:	00d508b3          	add	a7,a0,a3
1c00e126:	f00006b7          	lui	a3,0xf0000
1c00e12a:	0116f6b3          	and	a3,a3,a7
1c00e12e:	c2b5                	beqz	a3,1c00e192 <pos_libc_prf+0x400>
1c00e130:	00278813          	addi	a6,a5,2
1c00e134:	00f836b3          	sltu	a3,a6,a5
1c00e138:	98b6                	add	a7,a7,a3
1c00e13a:	4e95                	li	t4,5
1c00e13c:	03d8de33          	divu	t3,a7,t4
1c00e140:	00385693          	srli	a3,a6,0x3
1c00e144:	0305                	addi	t1,t1,1
1c00e146:	002e1513          	slli	a0,t3,0x2
1c00e14a:	9572                	add	a0,a0,t3
1c00e14c:	40a888b3          	sub	a7,a7,a0
1c00e150:	01d89513          	slli	a0,a7,0x1d
1c00e154:	8ec9                	or	a3,a3,a0
1c00e156:	03d6d6b3          	divu	a3,a3,t4
1c00e15a:	00369513          	slli	a0,a3,0x3
1c00e15e:	00569793          	slli	a5,a3,0x5
1c00e162:	97aa                	add	a5,a5,a0
1c00e164:	40f807b3          	sub	a5,a6,a5
1c00e168:	03d7d7b3          	divu	a5,a5,t4
1c00e16c:	82f5                	srli	a3,a3,0x1d
1c00e16e:	96f2                	add	a3,a3,t3
1c00e170:	953e                	add	a0,a0,a5
1c00e172:	00f537b3          	sltu	a5,a0,a5
1c00e176:	96be                	add	a3,a3,a5
1c00e178:	01f69813          	slli	a6,a3,0x1f
1c00e17c:	00155793          	srli	a5,a0,0x1
1c00e180:	00f867b3          	or	a5,a6,a5
1c00e184:	8905                	andi	a0,a0,1
1c00e186:	97aa                	add	a5,a5,a0
1c00e188:	8285                	srli	a3,a3,0x1
1c00e18a:	00a7b533          	sltu	a0,a5,a0
1c00e18e:	00d508b3          	add	a7,a0,a3
1c00e192:	001f0993          	addi	s3,t5,1
1c00e196:	06600693          	li	a3,102
1c00e19a:	884e                	mv	a6,s3
1c00e19c:	4edd8163          	beq	s11,a3,1c00e67e <pos_libc_prf+0x8ec>
1c00e1a0:	00279693          	slli	a3,a5,0x2
1c00e1a4:	01e7d513          	srli	a0,a5,0x1e
1c00e1a8:	00289e13          	slli	t3,a7,0x2
1c00e1ac:	97b6                	add	a5,a5,a3
1c00e1ae:	01c56e33          	or	t3,a0,t3
1c00e1b2:	00d7b833          	sltu	a6,a5,a3
1c00e1b6:	011e06b3          	add	a3,t3,a7
1c00e1ba:	9836                	add	a6,a6,a3
1c00e1bc:	0806                	slli	a6,a6,0x1
1c00e1be:	01f7d693          	srli	a3,a5,0x1f
1c00e1c2:	0106e833          	or	a6,a3,a6
1c00e1c6:	01c85693          	srli	a3,a6,0x1c
1c00e1ca:	03068513          	addi	a0,a3,48 # f0000030 <__l2_shared_end+0xd3ff0030>
1c00e1ce:	4772                	lw	a4,28(sp)
1c00e1d0:	00af0023          	sb	a0,0(t5)
1c00e1d4:	00179513          	slli	a0,a5,0x1
1c00e1d8:	47d2                	lw	a5,20(sp)
1c00e1da:	00d036b3          	snez	a3,a3
1c00e1de:	01576bb3          	or	s7,a4,s5
1c00e1e2:	00f87833          	and	a6,a6,a5
1c00e1e6:	40d30333          	sub	t1,t1,a3
1c00e1ea:	060b8463          	beqz	s7,1c00e252 <pos_libc_prf+0x4c0>
1c00e1ee:	02e00793          	li	a5,46
1c00e1f2:	00ff00a3          	sb	a5,1(t5)
1c00e1f6:	002f0993          	addi	s3,t5,2
1c00e1fa:	040a8c63          	beqz	s5,1c00e252 <pos_libc_prf+0x4c0>
1c00e1fe:	002a8793          	addi	a5,s5,2
1c00e202:	9f3e                	add	t5,t5,a5
1c00e204:	88ce                	mv	a7,s3
1c00e206:	4ebd                	li	t4,15
1c00e208:	03000f93          	li	t6,48
1c00e20c:	00251793          	slli	a5,a0,0x2
1c00e210:	01e55693          	srli	a3,a0,0x1e
1c00e214:	00281713          	slli	a4,a6,0x2
1c00e218:	00a785b3          	add	a1,a5,a0
1c00e21c:	8f55                	or	a4,a4,a3
1c00e21e:	9742                	add	a4,a4,a6
1c00e220:	00f5b7b3          	sltu	a5,a1,a5
1c00e224:	97ba                	add	a5,a5,a4
1c00e226:	0786                	slli	a5,a5,0x1
1c00e228:	01f5d713          	srli	a4,a1,0x1f
1c00e22c:	8fd9                	or	a5,a5,a4
1c00e22e:	01c7d713          	srli	a4,a5,0x1c
1c00e232:	03070713          	addi	a4,a4,48
1c00e236:	0885                	addi	a7,a7,1
1c00e238:	53d05763          	blez	t4,1c00e766 <pos_libc_prf+0x9d4>
1c00e23c:	fee88fa3          	sb	a4,-1(a7) # 7fffffff <__l2_shared_end+0x63feffff>
1c00e240:	4752                	lw	a4,20(sp)
1c00e242:	1efd                	addi	t4,t4,-1
1c00e244:	00159513          	slli	a0,a1,0x1
1c00e248:	00e7f833          	and	a6,a5,a4
1c00e24c:	fd1f10e3          	bne	t5,a7,1c00e20c <pos_libc_prf+0x47a>
1c00e250:	99d6                	add	s3,s3,s5
1c00e252:	4e061c63          	bnez	a2,1c00e74a <pos_libc_prf+0x9b8>
1c00e256:	fdfdf793          	andi	a5,s11,-33
1c00e25a:	04500693          	li	a3,69
1c00e25e:	00d781e3          	beq	a5,a3,1c00ea60 <pos_libc_prf+0xcce>
1c00e262:	105c                	addi	a5,sp,36
1c00e264:	00098023          	sb	zero,0(s3)
1c00e268:	40f989b3          	sub	s3,s3,a5
1c00e26c:	aa05                	j	1c00e39c <pos_libc_prf+0x60a>
1c00e26e:	b80c0fe3          	beqz	s8,1c00de0c <pos_libc_prf+0x7a>
1c00e272:	b931                	j	1c00de8e <pos_libc_prf+0xfc>
1c00e274:	016c0863          	beq	s8,s6,1c00e284 <pos_libc_prf+0x4f2>
1c00e278:	c15c1be3          	bne	s8,s5,1c00de8e <pos_libc_prf+0xfc>
1c00e27c:	03000913          	li	s2,48
1c00e280:	8da6                	mv	s11,s1
1c00e282:	b139                	j	1c00de90 <pos_libc_prf+0xfe>
1c00e284:	4785                	li	a5,1
1c00e286:	c03e                	sw	a5,0(sp)
1c00e288:	8da6                	mv	s11,s1
1c00e28a:	b119                	j	1c00de90 <pos_libc_prf+0xfe>
1c00e28c:	4785                	li	a5,1
1c00e28e:	c23e                	sw	a5,4(sp)
1c00e290:	8da6                	mv	s11,s1
1c00e292:	befd                	j	1c00de90 <pos_libc_prf+0xfe>
1c00e294:	4785                	li	a5,1
1c00e296:	c43e                	sw	a5,8(sp)
1c00e298:	8da6                	mv	s11,s1
1c00e29a:	bedd                	j	1c00de90 <pos_libc_prf+0xfe>
1c00e29c:	0b85                	addi	s7,s7,1
1c00e29e:	002a1793          	slli	a5,s4,0x2
1c00e2a2:	97d2                	add	a5,a5,s4
1c00e2a4:	0786                	slli	a5,a5,0x1
1c00e2a6:	97ee                	add	a5,a5,s11
1c00e2a8:	000bcd83          	lbu	s11,0(s7)
1c00e2ac:	fd078a13          	addi	s4,a5,-48
1c00e2b0:	8662                	mv	a2,s8
1c00e2b2:	fd0d8793          	addi	a5,s11,-48
1c00e2b6:	8c5e                	mv	s8,s7
1c00e2b8:	fef572e3          	bgeu	a0,a5,1c00e29c <pos_libc_prf+0x50a>
1c00e2bc:	0609                	addi	a2,a2,2
1c00e2be:	0c800793          	li	a5,200
1c00e2c2:	c147f1e3          	bgeu	a5,s4,1c00dec4 <pos_libc_prf+0x132>
1c00e2c6:	0c800a13          	li	s4,200
1c00e2ca:	beed                	j	1c00dec4 <pos_libc_prf+0x132>
1c00e2cc:	0c800793          	li	a5,200
1c00e2d0:	b3b7dae3          	bge	a5,s11,1c00de04 <pos_libc_prf+0x72>
1c00e2d4:	547d                	li	s0,-1
1c00e2d6:	be1d                	j	1c00de0c <pos_libc_prf+0x7a>
1c00e2d8:	47b2                	lw	a5,12(sp)
1c00e2da:	0007aa03          	lw	s4,0(a5)
1c00e2de:	00478693          	addi	a3,a5,4
1c00e2e2:	000a5663          	bgez	s4,1c00e2ee <pos_libc_prf+0x55c>
1c00e2e6:	4785                	li	a5,1
1c00e2e8:	41400a33          	neg	s4,s4
1c00e2ec:	c03e                	sw	a5,0(sp)
1c00e2ee:	000bcd83          	lbu	s11,0(s7)
1c00e2f2:	c636                	sw	a3,12(sp)
1c00e2f4:	002c0613          	addi	a2,s8,2
1c00e2f8:	b7d9                	j	1c00e2be <pos_libc_prf+0x52c>
1c00e2fa:	b00d89e3          	beqz	s11,1c00de0c <pos_libc_prf+0x7a>
1c00e2fe:	b619                	j	1c00de04 <pos_libc_prf+0x72>
1c00e300:	06400793          	li	a5,100
1c00e304:	4afd8363          	beq	s11,a5,1c00e7aa <pos_libc_prf+0xa18>
1c00e308:	19b7d963          	bge	a5,s11,1c00e49a <pos_libc_prf+0x708>
1c00e30c:	f9bd8793          	addi	a5,s11,-101
1c00e310:	4689                	li	a3,2
1c00e312:	aef6e9e3          	bltu	a3,a5,1c00de04 <pos_libc_prf+0x72>
1c00e316:	47b2                	lw	a5,12(sp)
1c00e318:	7ff00893          	li	a7,2047
1c00e31c:	00778b13          	addi	s6,a5,7
1c00e320:	ff8b7b13          	andi	s6,s6,-8
1c00e324:	004b2783          	lw	a5,4(s6)
1c00e328:	000b2603          	lw	a2,0(s6)
1c00e32c:	0b21                	addi	s6,s6,8
1c00e32e:	00b79693          	slli	a3,a5,0xb
1c00e332:	01565813          	srli	a6,a2,0x15
1c00e336:	0147d513          	srli	a0,a5,0x14
1c00e33a:	00d866b3          	or	a3,a6,a3
1c00e33e:	0686                	slli	a3,a3,0x1
1c00e340:	7ff57813          	andi	a6,a0,2047
1c00e344:	00b61313          	slli	t1,a2,0xb
1c00e348:	0016d513          	srli	a0,a3,0x1
1c00e34c:	86be                	mv	a3,a5
1c00e34e:	c11818e3          	bne	a6,a7,1c00df5e <pos_libc_prf+0x1cc>
1c00e352:	105c                	addi	a5,sp,36
1c00e354:	0006d863          	bgez	a3,1c00e364 <pos_libc_prf+0x5d2>
1c00e358:	02d00793          	li	a5,45
1c00e35c:	02f10223          	sb	a5,36(sp)
1c00e360:	02510793          	addi	a5,sp,37
1c00e364:	00a36633          	or	a2,t1,a0
1c00e368:	fbfd8593          	addi	a1,s11,-65
1c00e36c:	00378993          	addi	s3,a5,3
1c00e370:	46e5                	li	a3,25
1c00e372:	0c0612e3          	bnez	a2,1c00ec36 <pos_libc_prf+0xea4>
1c00e376:	10b6e5e3          	bltu	a3,a1,1c00ec80 <pos_libc_prf+0xeee>
1c00e37a:	04900693          	li	a3,73
1c00e37e:	00d78023          	sb	a3,0(a5)
1c00e382:	04e00693          	li	a3,78
1c00e386:	00d780a3          	sb	a3,1(a5)
1c00e38a:	04600693          	li	a3,70
1c00e38e:	00d78123          	sb	a3,2(a5)
1c00e392:	000781a3          	sb	zero,3(a5)
1c00e396:	105c                	addi	a5,sp,36
1c00e398:	40f989b3          	sub	s3,s3,a5
1c00e39c:	47a2                	lw	a5,8(sp)
1c00e39e:	4712                	lw	a4,4(sp)
1c00e3a0:	8fd9                	or	a5,a5,a4
1c00e3a2:	ce3e                	sw	a5,28(sp)
1c00e3a4:	5e079b63          	bnez	a5,1c00e99a <pos_libc_prf+0xc08>
1c00e3a8:	02414683          	lbu	a3,36(sp)
1c00e3ac:	02d00793          	li	a5,45
1c00e3b0:	5ef68563          	beq	a3,a5,1c00e99a <pos_libc_prf+0xc08>
1c00e3b4:	0c800793          	li	a5,200
1c00e3b8:	0d37d863          	bge	a5,s3,1c00e488 <pos_libc_prf+0x6f6>
1c00e3bc:	547d                	li	s0,-1
1c00e3be:	b4b9                	j	1c00de0c <pos_libc_prf+0x7a>
1c00e3c0:	07000793          	li	a5,112
1c00e3c4:	46fd8f63          	beq	s11,a5,1c00e842 <pos_libc_prf+0xab0>
1c00e3c8:	1bb7d663          	bge	a5,s11,1c00e574 <pos_libc_prf+0x7e2>
1c00e3cc:	07500793          	li	a5,117
1c00e3d0:	52fd8763          	beq	s11,a5,1c00e8fe <pos_libc_prf+0xb6c>
1c00e3d4:	07800793          	li	a5,120
1c00e3d8:	16fd9163          	bne	s11,a5,1c00e53a <pos_libc_prf+0x7a8>
1c00e3dc:	47b2                	lw	a5,12(sp)
1c00e3de:	1054                	addi	a3,sp,36
1c00e3e0:	4390                	lw	a2,0(a5)
1c00e3e2:	00478b13          	addi	s6,a5,4
1c00e3e6:	47f2                	lw	a5,28(sp)
1c00e3e8:	28079163          	bnez	a5,1c00e66a <pos_libc_prf+0x8d8>
1c00e3ec:	87b6                	mv	a5,a3
1c00e3ee:	4ea5                	li	t4,9
1c00e3f0:	4e3d                	li	t3,15
1c00e3f2:	a039                	j	1c00e400 <pos_libc_prf+0x66e>
1c00e3f4:	ff098fa3          	sb	a6,-1(s3)
1c00e3f8:	02ce7663          	bgeu	t3,a2,1c00e424 <pos_libc_prf+0x692>
1c00e3fc:	862a                	mv	a2,a0
1c00e3fe:	87ce                	mv	a5,s3
1c00e400:	00f67593          	andi	a1,a2,15
1c00e404:	00178993          	addi	s3,a5,1
1c00e408:	05758813          	addi	a6,a1,87
1c00e40c:	03058713          	addi	a4,a1,48
1c00e410:	00465513          	srli	a0,a2,0x4
1c00e414:	febee0e3          	bltu	t4,a1,1c00e3f4 <pos_libc_prf+0x662>
1c00e418:	00e78023          	sb	a4,0(a5)
1c00e41c:	00178993          	addi	s3,a5,1
1c00e420:	fcce6ee3          	bltu	t3,a2,1c00e3fc <pos_libc_prf+0x66a>
1c00e424:	40d98633          	sub	a2,s3,a3
1c00e428:	01565c63          	bge	a2,s5,1c00e440 <pos_libc_prf+0x6ae>
1c00e42c:	03000513          	li	a0,48
1c00e430:	87ce                	mv	a5,s3
1c00e432:	0985                	addi	s3,s3,1
1c00e434:	40d98733          	sub	a4,s3,a3
1c00e438:	fea98fa3          	sb	a0,-1(s3)
1c00e43c:	ff574ae3          	blt	a4,s5,1c00e430 <pos_libc_prf+0x69e>
1c00e440:	00098023          	sb	zero,0(s3)
1c00e444:	00f6fe63          	bgeu	a3,a5,1c00e460 <pos_libc_prf+0x6ce>
1c00e448:	0006c603          	lbu	a2,0(a3)
1c00e44c:	0007c703          	lbu	a4,0(a5)
1c00e450:	0685                	addi	a3,a3,1
1c00e452:	00c78023          	sb	a2,0(a5)
1c00e456:	fee68fa3          	sb	a4,-1(a3)
1c00e45a:	17fd                	addi	a5,a5,-1
1c00e45c:	fef6e6e3          	bltu	a3,a5,1c00e448 <pos_libc_prf+0x6b6>
1c00e460:	05800793          	li	a5,88
1c00e464:	66fd8463          	beq	s11,a5,1c00eacc <pos_libc_prf+0xd3a>
1c00e468:	105c                	addi	a5,sp,36
1c00e46a:	40f989b3          	sub	s3,s3,a5
1c00e46e:	47f2                	lw	a5,28(sp)
1c00e470:	c399                	beqz	a5,1c00e476 <pos_libc_prf+0x6e4>
1c00e472:	4789                	li	a5,2
1c00e474:	ce3e                	sw	a5,28(sp)
1c00e476:	57fd                	li	a5,-1
1c00e478:	f2fa8ee3          	beq	s5,a5,1c00e3b4 <pos_libc_prf+0x622>
1c00e47c:	0c800793          	li	a5,200
1c00e480:	e537cae3          	blt	a5,s3,1c00e2d4 <pos_libc_prf+0x542>
1c00e484:	02000913          	li	s2,32
1c00e488:	00198613          	addi	a2,s3,1
1c00e48c:	0349c963          	blt	s3,s4,1c00e4be <pos_libc_prf+0x72c>
1c00e490:	c65a                	sw	s6,12(sp)
1c00e492:	8a4e                	mv	s4,s3
1c00e494:	1a0a1663          	bnez	s4,1c00e640 <pos_libc_prf+0x8ae>
1c00e498:	b2b5                	j	1c00de04 <pos_libc_prf+0x72>
1c00e49a:	06300793          	li	a5,99
1c00e49e:	96fd93e3          	bne	s11,a5,1c00de04 <pos_libc_prf+0x72>
1c00e4a2:	4732                	lw	a4,12(sp)
1c00e4a4:	020102a3          	sb	zero,37(sp)
1c00e4a8:	4785                	li	a5,1
1c00e4aa:	4314                	lw	a3,0(a4)
1c00e4ac:	00470b13          	addi	s6,a4,4
1c00e4b0:	02d10223          	sb	a3,36(sp)
1c00e4b4:	1947d463          	bge	a5,s4,1c00e63c <pos_libc_prf+0x8aa>
1c00e4b8:	4609                	li	a2,2
1c00e4ba:	4985                	li	s3,1
1c00e4bc:	ce02                	sw	zero,28(sp)
1c00e4be:	4782                	lw	a5,0(sp)
1c00e4c0:	4e078463          	beqz	a5,1c00e9a8 <pos_libc_prf+0xc16>
1c00e4c4:	413a07b3          	sub	a5,s4,s3
1c00e4c8:	4585                	li	a1,1
1c00e4ca:	0149d363          	bge	s3,s4,1c00e4d0 <pos_libc_prf+0x73e>
1c00e4ce:	85be                	mv	a1,a5
1c00e4d0:	17fd                	addi	a5,a5,-1
1c00e4d2:	0037b793          	sltiu	a5,a5,3
1c00e4d6:	eb95                	bnez	a5,1c00e50a <pos_libc_prf+0x778>
1c00e4d8:	0349d963          	bge	s3,s4,1c00e50a <pos_libc_prf+0x778>
1c00e4dc:	105c                	addi	a5,sp,36
1c00e4de:	97ce                	add	a5,a5,s3
1c00e4e0:	ffc5f613          	andi	a2,a1,-4
1c00e4e4:	963e                	add	a2,a2,a5
1c00e4e6:	02000693          	li	a3,32
1c00e4ea:	00d78023          	sb	a3,0(a5)
1c00e4ee:	00d780a3          	sb	a3,1(a5)
1c00e4f2:	00d78123          	sb	a3,2(a5)
1c00e4f6:	00d781a3          	sb	a3,3(a5)
1c00e4fa:	0791                	addi	a5,a5,4
1c00e4fc:	fef617e3          	bne	a2,a5,1c00e4ea <pos_libc_prf+0x758>
1c00e500:	ffc5f793          	andi	a5,a1,-4
1c00e504:	99be                	add	s3,s3,a5
1c00e506:	02b78663          	beq	a5,a1,1c00e532 <pos_libc_prf+0x7a0>
1c00e50a:	199c                	addi	a5,sp,240
1c00e50c:	97ce                	add	a5,a5,s3
1c00e50e:	02000693          	li	a3,32
1c00e512:	f2d78a23          	sb	a3,-204(a5)
1c00e516:	00198793          	addi	a5,s3,1
1c00e51a:	0147dc63          	bge	a5,s4,1c00e532 <pos_libc_prf+0x7a0>
1c00e51e:	1998                	addi	a4,sp,240
1c00e520:	97ba                	add	a5,a5,a4
1c00e522:	f2d78a23          	sb	a3,-204(a5)
1c00e526:	0989                	addi	s3,s3,2
1c00e528:	0149d563          	bge	s3,s4,1c00e532 <pos_libc_prf+0x7a0>
1c00e52c:	99ba                	add	s3,s3,a4
1c00e52e:	f2d98a23          	sb	a3,-204(s3)
1c00e532:	c65a                	sw	s6,12(sp)
1c00e534:	100a1663          	bnez	s4,1c00e640 <pos_libc_prf+0x8ae>
1c00e538:	b0f1                	j	1c00de04 <pos_libc_prf+0x72>
1c00e53a:	07300793          	li	a5,115
1c00e53e:	d8fd97e3          	bne	s11,a5,1c00e2cc <pos_libc_prf+0x53a>
1c00e542:	47b2                	lw	a5,12(sp)
1c00e544:	4981                	li	s3,0
1c00e546:	0c800693          	li	a3,200
1c00e54a:	438c                	lw	a1,0(a5)
1c00e54c:	00478b13          	addi	s6,a5,4
1c00e550:	a021                	j	1c00e558 <pos_libc_prf+0x7c6>
1c00e552:	0985                	addi	s3,s3,1
1c00e554:	6ad98163          	beq	s3,a3,1c00ebf6 <pos_libc_prf+0xe64>
1c00e558:	013587b3          	add	a5,a1,s3
1c00e55c:	0007c783          	lbu	a5,0(a5)
1c00e560:	fbed                	bnez	a5,1c00e552 <pos_libc_prf+0x7c0>
1c00e562:	000ac563          	bltz	s5,1c00e56c <pos_libc_prf+0x7da>
1c00e566:	013ad363          	bge	s5,s3,1c00e56c <pos_libc_prf+0x7da>
1c00e56a:	89d6                	mv	s3,s5
1c00e56c:	5a099163          	bnez	s3,1c00eb0e <pos_libc_prf+0xd7c>
1c00e570:	c65a                	sw	s6,12(sp)
1c00e572:	b849                	j	1c00de04 <pos_libc_prf+0x72>
1c00e574:	06e00793          	li	a5,110
1c00e578:	36fd8c63          	beq	s11,a5,1c00e8f0 <pos_libc_prf+0xb5e>
1c00e57c:	06f00793          	li	a5,111
1c00e580:	88fd92e3          	bne	s11,a5,1c00de04 <pos_libc_prf+0x72>
1c00e584:	47b2                	lw	a5,12(sp)
1c00e586:	4390                	lw	a2,0(a5)
1c00e588:	00478b13          	addi	s6,a5,4
1c00e58c:	47f2                	lw	a5,28(sp)
1c00e58e:	c7f5                	beqz	a5,1c00e67a <pos_libc_prf+0x8e8>
1c00e590:	03000793          	li	a5,48
1c00e594:	02f10223          	sb	a5,36(sp)
1c00e598:	02510693          	addi	a3,sp,37
1c00e59c:	60060b63          	beqz	a2,1c00ebb2 <pos_libc_prf+0xe20>
1c00e5a0:	89b6                	mv	s3,a3
1c00e5a2:	481d                	li	a6,7
1c00e5a4:	00767713          	andi	a4,a2,7
1c00e5a8:	03070713          	addi	a4,a4,48
1c00e5ac:	85b2                	mv	a1,a2
1c00e5ae:	00e98023          	sb	a4,0(s3)
1c00e5b2:	87ce                	mv	a5,s3
1c00e5b4:	820d                	srli	a2,a2,0x3
1c00e5b6:	0985                	addi	s3,s3,1
1c00e5b8:	feb866e3          	bltu	a6,a1,1c00e5a4 <pos_libc_prf+0x812>
1c00e5bc:	40d98633          	sub	a2,s3,a3
1c00e5c0:	01565c63          	bge	a2,s5,1c00e5d8 <pos_libc_prf+0x846>
1c00e5c4:	03000593          	li	a1,48
1c00e5c8:	87ce                	mv	a5,s3
1c00e5ca:	0985                	addi	s3,s3,1
1c00e5cc:	40d98733          	sub	a4,s3,a3
1c00e5d0:	feb98fa3          	sb	a1,-1(s3)
1c00e5d4:	ff574ae3          	blt	a4,s5,1c00e5c8 <pos_libc_prf+0x836>
1c00e5d8:	00098023          	sb	zero,0(s3)
1c00e5dc:	00f6fe63          	bgeu	a3,a5,1c00e5f8 <pos_libc_prf+0x866>
1c00e5e0:	0006c603          	lbu	a2,0(a3)
1c00e5e4:	0007c703          	lbu	a4,0(a5)
1c00e5e8:	0685                	addi	a3,a3,1
1c00e5ea:	00c78023          	sb	a2,0(a5)
1c00e5ee:	fee68fa3          	sb	a4,-1(a3)
1c00e5f2:	17fd                	addi	a5,a5,-1
1c00e5f4:	fef6e6e3          	bltu	a3,a5,1c00e5e0 <pos_libc_prf+0x84e>
1c00e5f8:	1058                	addi	a4,sp,36
1c00e5fa:	57fd                	li	a5,-1
1c00e5fc:	40e989b3          	sub	s3,s3,a4
1c00e600:	36fa8763          	beq	s5,a5,1c00e96e <pos_libc_prf+0xbdc>
1c00e604:	0c800793          	li	a5,200
1c00e608:	cd37c6e3          	blt	a5,s3,1c00e2d4 <pos_libc_prf+0x542>
1c00e60c:	ce02                	sw	zero,28(sp)
1c00e60e:	bd9d                	j	1c00e484 <pos_libc_prf+0x6f2>
1c00e610:	00064583          	lbu	a1,0(a2) # 80000000 <__l2_shared_end+0x63ff0000>
1c00e614:	02a00793          	li	a5,42
1c00e618:	00160693          	addi	a3,a2,1
1c00e61c:	14f59b63          	bne	a1,a5,1c00e772 <pos_libc_prf+0x9e0>
1c00e620:	47b2                	lw	a5,12(sp)
1c00e622:	00164d83          	lbu	s11,1(a2)
1c00e626:	0609                	addi	a2,a2,2
1c00e628:	0007aa83          	lw	s5,0(a5)
1c00e62c:	0791                	addi	a5,a5,4
1c00e62e:	c63e                	sw	a5,12(sp)
1c00e630:	0c800793          	li	a5,200
1c00e634:	8957dde3          	bge	a5,s5,1c00dece <pos_libc_prf+0x13c>
1c00e638:	5afd                	li	s5,-1
1c00e63a:	b851                	j	1c00dece <pos_libc_prf+0x13c>
1c00e63c:	c65a                	sw	s6,12(sp)
1c00e63e:	4a05                	li	s4,1
1c00e640:	02410913          	addi	s2,sp,36
1c00e644:	59fd                	li	s3,-1
1c00e646:	41240ab3          	sub	s5,s0,s2
1c00e64a:	9a4a                	add	s4,s4,s2
1c00e64c:	a029                	j	1c00e656 <pos_libc_prf+0x8c4>
1c00e64e:	012a8433          	add	s0,s5,s2
1c00e652:	fb490963          	beq	s2,s4,1c00de04 <pos_libc_prf+0x72>
1c00e656:	00094503          	lbu	a0,0(s2)
1c00e65a:	85a6                	mv	a1,s1
1c00e65c:	0905                	addi	s2,s2,1
1c00e65e:	9c82                	jalr	s9
1c00e660:	ff3517e3          	bne	a0,s3,1c00e64e <pos_libc_prf+0x8bc>
1c00e664:	547d                	li	s0,-1
1c00e666:	fa6ff06f          	j	1c00de0c <pos_libc_prf+0x7a>
1c00e66a:	77e1                	lui	a5,0xffff8
1c00e66c:	8307c793          	xori	a5,a5,-2000
1c00e670:	02f11223          	sh	a5,36(sp)
1c00e674:	02610693          	addi	a3,sp,38
1c00e678:	bb95                	j	1c00e3ec <pos_libc_prf+0x65a>
1c00e67a:	1054                	addi	a3,sp,36
1c00e67c:	b715                	j	1c00e5a0 <pos_libc_prf+0x80e>
1c00e67e:	5c605a63          	blez	t1,1c00ec52 <pos_libc_prf+0xec0>
1c00e682:	006f09b3          	add	s3,t5,t1
1c00e686:	4541                	li	a0,16
1c00e688:	03000e13          	li	t3,48
1c00e68c:	00279713          	slli	a4,a5,0x2
1c00e690:	01e7d593          	srli	a1,a5,0x1e
1c00e694:	00289693          	slli	a3,a7,0x2
1c00e698:	00f70333          	add	t1,a4,a5
1c00e69c:	8ecd                	or	a3,a3,a1
1c00e69e:	96c6                	add	a3,a3,a7
1c00e6a0:	00e33733          	sltu	a4,t1,a4
1c00e6a4:	9736                	add	a4,a4,a3
1c00e6a6:	0706                	slli	a4,a4,0x1
1c00e6a8:	01f35693          	srli	a3,t1,0x1f
1c00e6ac:	8f55                	or	a4,a4,a3
1c00e6ae:	01c75693          	srli	a3,a4,0x1c
1c00e6b2:	03068693          	addi	a3,a3,48
1c00e6b6:	4ea05463          	blez	a0,1c00eb9e <pos_libc_prf+0xe0c>
1c00e6ba:	fed80fa3          	sb	a3,-1(a6)
1c00e6be:	46d2                	lw	a3,20(sp)
1c00e6c0:	157d                	addi	a0,a0,-1
1c00e6c2:	00131793          	slli	a5,t1,0x1
1c00e6c6:	00d778b3          	and	a7,a4,a3
1c00e6ca:	4d099e63          	bne	s3,a6,1c00eba6 <pos_libc_prf+0xe14>
1c00e6ce:	4301                	li	t1,0
1c00e6d0:	4772                	lw	a4,28(sp)
1c00e6d2:	01576bb3          	or	s7,a4,s5
1c00e6d6:	060b8863          	beqz	s7,1c00e746 <pos_libc_prf+0x9b4>
1c00e6da:	02e00693          	li	a3,46
1c00e6de:	00d98023          	sb	a3,0(s3)
1c00e6e2:	00198e93          	addi	t4,s3,1
1c00e6e6:	5c0a8763          	beqz	s5,1c00ecb4 <pos_libc_prf+0xf22>
1c00e6ea:	001a8693          	addi	a3,s5,1
1c00e6ee:	99b6                	add	s3,s3,a3
1c00e6f0:	8876                	mv	a6,t4
1c00e6f2:	03000f13          	li	t5,48
1c00e6f6:	0805                	addi	a6,a6,1
1c00e6f8:	4a031963          	bnez	t1,1c00ebaa <pos_libc_prf+0xe18>
1c00e6fc:	00279713          	slli	a4,a5,0x2
1c00e700:	01e7d593          	srli	a1,a5,0x1e
1c00e704:	00289693          	slli	a3,a7,0x2
1c00e708:	00f70e33          	add	t3,a4,a5
1c00e70c:	8ecd                	or	a3,a3,a1
1c00e70e:	96c6                	add	a3,a3,a7
1c00e710:	00ee3733          	sltu	a4,t3,a4
1c00e714:	9736                	add	a4,a4,a3
1c00e716:	0706                	slli	a4,a4,0x1
1c00e718:	01fe5693          	srli	a3,t3,0x1f
1c00e71c:	8f55                	or	a4,a4,a3
1c00e71e:	01c75593          	srli	a1,a4,0x1c
1c00e722:	03000693          	li	a3,48
1c00e726:	00a05a63          	blez	a0,1c00e73a <pos_libc_prf+0x9a8>
1c00e72a:	03058693          	addi	a3,a1,48
1c00e72e:	45d2                	lw	a1,20(sp)
1c00e730:	157d                	addi	a0,a0,-1
1c00e732:	001e1793          	slli	a5,t3,0x1
1c00e736:	00b778b3          	and	a7,a4,a1
1c00e73a:	fed80fa3          	sb	a3,-1(a6)
1c00e73e:	fb099ce3          	bne	s3,a6,1c00e6f6 <pos_libc_prf+0x964>
1c00e742:	015e89b3          	add	s3,t4,s5
1c00e746:	b0060ee3          	beqz	a2,1c00e262 <pos_libc_prf+0x4d0>
1c00e74a:	03000613          	li	a2,48
1c00e74e:	fff9c783          	lbu	a5,-1(s3)
1c00e752:	86ce                	mv	a3,s3
1c00e754:	19fd                	addi	s3,s3,-1
1c00e756:	fec78ce3          	beq	a5,a2,1c00e74e <pos_libc_prf+0x9bc>
1c00e75a:	02e00613          	li	a2,46
1c00e75e:	aec78ce3          	beq	a5,a2,1c00e256 <pos_libc_prf+0x4c4>
1c00e762:	89b6                	mv	s3,a3
1c00e764:	bccd                	j	1c00e256 <pos_libc_prf+0x4c4>
1c00e766:	fff88fa3          	sb	t6,-1(a7)
1c00e76a:	ab1f11e3          	bne	t5,a7,1c00e20c <pos_libc_prf+0x47a>
1c00e76e:	99d6                	add	s3,s3,s5
1c00e770:	b4cd                	j	1c00e252 <pos_libc_prf+0x4c0>
1c00e772:	fd058713          	addi	a4,a1,-48
1c00e776:	47a5                	li	a5,9
1c00e778:	8dae                	mv	s11,a1
1c00e77a:	4a81                	li	s5,0
1c00e77c:	4525                	li	a0,9
1c00e77e:	00e7f463          	bgeu	a5,a4,1c00e786 <pos_libc_prf+0x9f4>
1c00e782:	a199                	j	1c00ebc8 <pos_libc_prf+0xe36>
1c00e784:	0685                	addi	a3,a3,1
1c00e786:	002a9793          	slli	a5,s5,0x2
1c00e78a:	97d6                	add	a5,a5,s5
1c00e78c:	0786                	slli	a5,a5,0x1
1c00e78e:	97ee                	add	a5,a5,s11
1c00e790:	0006cd83          	lbu	s11,0(a3)
1c00e794:	fd078a93          	addi	s5,a5,-48 # ffff7fd0 <__l2_shared_end+0xe3fe7fd0>
1c00e798:	8732                	mv	a4,a2
1c00e79a:	fd0d8793          	addi	a5,s11,-48
1c00e79e:	8636                	mv	a2,a3
1c00e7a0:	fef572e3          	bgeu	a0,a5,1c00e784 <pos_libc_prf+0x9f2>
1c00e7a4:	00270613          	addi	a2,a4,2
1c00e7a8:	b561                	j	1c00e630 <pos_libc_prf+0x89e>
1c00e7aa:	47b2                	lw	a5,12(sp)
1c00e7ac:	0007a303          	lw	t1,0(a5)
1c00e7b0:	00478b13          	addi	s6,a5,4
1c00e7b4:	2e034263          	bltz	t1,1c00ea98 <pos_libc_prf+0xd06>
1c00e7b8:	47a2                	lw	a5,8(sp)
1c00e7ba:	861a                	mv	a2,t1
1c00e7bc:	3c078663          	beqz	a5,1c00eb88 <pos_libc_prf+0xdf6>
1c00e7c0:	02b00793          	li	a5,43
1c00e7c4:	02f10223          	sb	a5,36(sp)
1c00e7c8:	02510693          	addi	a3,sp,37
1c00e7cc:	89b6                	mv	s3,a3
1c00e7ce:	4529                	li	a0,10
1c00e7d0:	48a5                	li	a7,9
1c00e7d2:	02a67733          	remu	a4,a2,a0
1c00e7d6:	87ce                	mv	a5,s3
1c00e7d8:	0985                	addi	s3,s3,1
1c00e7da:	85b2                	mv	a1,a2
1c00e7dc:	03070713          	addi	a4,a4,48
1c00e7e0:	fee98fa3          	sb	a4,-1(s3)
1c00e7e4:	02a65633          	divu	a2,a2,a0
1c00e7e8:	feb8e5e3          	bltu	a7,a1,1c00e7d2 <pos_libc_prf+0xa40>
1c00e7ec:	40d98633          	sub	a2,s3,a3
1c00e7f0:	01565c63          	bge	a2,s5,1c00e808 <pos_libc_prf+0xa76>
1c00e7f4:	03000593          	li	a1,48
1c00e7f8:	87ce                	mv	a5,s3
1c00e7fa:	0985                	addi	s3,s3,1
1c00e7fc:	40d98733          	sub	a4,s3,a3
1c00e800:	feb98fa3          	sb	a1,-1(s3)
1c00e804:	ff574ae3          	blt	a4,s5,1c00e7f8 <pos_libc_prf+0xa66>
1c00e808:	00098023          	sb	zero,0(s3)
1c00e80c:	00f6fe63          	bgeu	a3,a5,1c00e828 <pos_libc_prf+0xa96>
1c00e810:	0006c603          	lbu	a2,0(a3)
1c00e814:	0007c703          	lbu	a4,0(a5)
1c00e818:	0685                	addi	a3,a3,1
1c00e81a:	00c78023          	sb	a2,0(a5)
1c00e81e:	fee68fa3          	sb	a4,-1(a3)
1c00e822:	17fd                	addi	a5,a5,-1
1c00e824:	fef6e6e3          	bltu	a3,a5,1c00e810 <pos_libc_prf+0xa7e>
1c00e828:	4712                	lw	a4,4(sp)
1c00e82a:	47a2                	lw	a5,8(sp)
1c00e82c:	8fd9                	or	a5,a5,a4
1c00e82e:	ce3e                	sw	a5,28(sp)
1c00e830:	1058                	addi	a4,sp,36
1c00e832:	40e989b3          	sub	s3,s3,a4
1c00e836:	c40790e3          	bnez	a5,1c00e476 <pos_libc_prf+0x6e4>
1c00e83a:	01f35793          	srli	a5,t1,0x1f
1c00e83e:	ce3e                	sw	a5,28(sp)
1c00e840:	b91d                	j	1c00e476 <pos_libc_prf+0x6e4>
1c00e842:	47b2                	lw	a5,12(sp)
1c00e844:	02610613          	addi	a2,sp,38
1c00e848:	4ea5                	li	t4,9
1c00e84a:	438c                	lw	a1,0(a5)
1c00e84c:	00478b13          	addi	s6,a5,4
1c00e850:	77e1                	lui	a5,0xffff8
1c00e852:	8307c793          	xori	a5,a5,-2000
1c00e856:	02f11223          	sh	a5,36(sp)
1c00e85a:	4e3d                	li	t3,15
1c00e85c:	87b2                	mv	a5,a2
1c00e85e:	a039                	j	1c00e86c <pos_libc_prf+0xada>
1c00e860:	ff168fa3          	sb	a7,-1(a3)
1c00e864:	02be7663          	bgeu	t3,a1,1c00e890 <pos_libc_prf+0xafe>
1c00e868:	85c2                	mv	a1,a6
1c00e86a:	87b6                	mv	a5,a3
1c00e86c:	00f5f513          	andi	a0,a1,15
1c00e870:	00178693          	addi	a3,a5,1 # ffff8001 <__l2_shared_end+0xe3fe8001>
1c00e874:	05750893          	addi	a7,a0,87
1c00e878:	03050713          	addi	a4,a0,48
1c00e87c:	0045d813          	srli	a6,a1,0x4
1c00e880:	feaee0e3          	bltu	t4,a0,1c00e860 <pos_libc_prf+0xace>
1c00e884:	00e78023          	sb	a4,0(a5)
1c00e888:	00178693          	addi	a3,a5,1
1c00e88c:	fcbe6ee3          	bltu	t3,a1,1c00e868 <pos_libc_prf+0xad6>
1c00e890:	40c689b3          	sub	s3,a3,a2
1c00e894:	459d                	li	a1,7
1c00e896:	0135cc63          	blt	a1,s3,1c00e8ae <pos_libc_prf+0xb1c>
1c00e89a:	03000513          	li	a0,48
1c00e89e:	87b6                	mv	a5,a3
1c00e8a0:	0685                	addi	a3,a3,1
1c00e8a2:	40c689b3          	sub	s3,a3,a2
1c00e8a6:	fea68fa3          	sb	a0,-1(a3)
1c00e8aa:	ff35dae3          	bge	a1,s3,1c00e89e <pos_libc_prf+0xb0c>
1c00e8ae:	00068023          	sb	zero,0(a3)
1c00e8b2:	86b2                	mv	a3,a2
1c00e8b4:	00f67e63          	bgeu	a2,a5,1c00e8d0 <pos_libc_prf+0xb3e>
1c00e8b8:	0006c603          	lbu	a2,0(a3)
1c00e8bc:	0007c703          	lbu	a4,0(a5)
1c00e8c0:	0685                	addi	a3,a3,1
1c00e8c2:	00c78023          	sb	a2,0(a5)
1c00e8c6:	fee68fa3          	sb	a4,-1(a3)
1c00e8ca:	17fd                	addi	a5,a5,-1
1c00e8cc:	fef6e6e3          	bltu	a3,a5,1c00e8b8 <pos_libc_prf+0xb26>
1c00e8d0:	57fd                	li	a5,-1
1c00e8d2:	0989                	addi	s3,s3,2
1c00e8d4:	22fa8663          	beq	s5,a5,1c00eb00 <pos_libc_prf+0xd6e>
1c00e8d8:	0c800793          	li	a5,200
1c00e8dc:	9f37cce3          	blt	a5,s3,1c00e2d4 <pos_libc_prf+0x542>
1c00e8e0:	02000913          	li	s2,32
1c00e8e4:	0b49d863          	bge	s3,s4,1c00e994 <pos_libc_prf+0xc02>
1c00e8e8:	00198613          	addi	a2,s3,1
1c00e8ec:	ce02                	sw	zero,28(sp)
1c00e8ee:	bec1                	j	1c00e4be <pos_libc_prf+0x72c>
1c00e8f0:	4732                	lw	a4,12(sp)
1c00e8f2:	431c                	lw	a5,0(a4)
1c00e8f4:	0711                	addi	a4,a4,4
1c00e8f6:	c63a                	sw	a4,12(sp)
1c00e8f8:	c380                	sw	s0,0(a5)
1c00e8fa:	d0aff06f          	j	1c00de04 <pos_libc_prf+0x72>
1c00e8fe:	47b2                	lw	a5,12(sp)
1c00e900:	4529                	li	a0,10
1c00e902:	48a5                	li	a7,9
1c00e904:	4390                	lw	a2,0(a5)
1c00e906:	00478b13          	addi	s6,a5,4
1c00e90a:	105c                	addi	a5,sp,36
1c00e90c:	02a67733          	remu	a4,a2,a0
1c00e910:	86be                	mv	a3,a5
1c00e912:	0785                	addi	a5,a5,1
1c00e914:	85b2                	mv	a1,a2
1c00e916:	03070713          	addi	a4,a4,48
1c00e91a:	fee78fa3          	sb	a4,-1(a5)
1c00e91e:	02a65633          	divu	a2,a2,a0
1c00e922:	feb8e5e3          	bltu	a7,a1,1c00e90c <pos_libc_prf+0xb7a>
1c00e926:	1058                	addi	a4,sp,36
1c00e928:	40e789b3          	sub	s3,a5,a4
1c00e92c:	0159dd63          	bge	s3,s5,1c00e946 <pos_libc_prf+0xbb4>
1c00e930:	03000613          	li	a2,48
1c00e934:	86be                	mv	a3,a5
1c00e936:	1058                	addi	a4,sp,36
1c00e938:	0785                	addi	a5,a5,1
1c00e93a:	40e789b3          	sub	s3,a5,a4
1c00e93e:	fec78fa3          	sb	a2,-1(a5)
1c00e942:	ff59c9e3          	blt	s3,s5,1c00e934 <pos_libc_prf+0xba2>
1c00e946:	00078023          	sb	zero,0(a5)
1c00e94a:	105c                	addi	a5,sp,36
1c00e94c:	00d7fe63          	bgeu	a5,a3,1c00e968 <pos_libc_prf+0xbd6>
1c00e950:	0007c603          	lbu	a2,0(a5)
1c00e954:	0006c703          	lbu	a4,0(a3)
1c00e958:	0785                	addi	a5,a5,1
1c00e95a:	00c68023          	sb	a2,0(a3)
1c00e95e:	fee78fa3          	sb	a4,-1(a5)
1c00e962:	16fd                	addi	a3,a3,-1
1c00e964:	fed7e6e3          	bltu	a5,a3,1c00e950 <pos_libc_prf+0xbbe>
1c00e968:	57fd                	li	a5,-1
1c00e96a:	c8fa9de3          	bne	s5,a5,1c00e604 <pos_libc_prf+0x872>
1c00e96e:	0c800793          	li	a5,200
1c00e972:	9737c1e3          	blt	a5,s3,1c00e2d4 <pos_libc_prf+0x542>
1c00e976:	ce02                	sw	zero,28(sp)
1c00e978:	be01                	j	1c00e488 <pos_libc_prf+0x6f6>
1c00e97a:	85a6                	mv	a1,s1
1c00e97c:	02500513          	li	a0,37
1c00e980:	9c82                	jalr	s9
1c00e982:	57fd                	li	a5,-1
1c00e984:	c6f51f63          	bne	a0,a5,1c00de02 <pos_libc_prf+0x70>
1c00e988:	547d                	li	s0,-1
1c00e98a:	c82ff06f          	j	1c00de0c <pos_libc_prf+0x7a>
1c00e98e:	4401                	li	s0,0
1c00e990:	c7cff06f          	j	1c00de0c <pos_libc_prf+0x7a>
1c00e994:	8a4e                	mv	s4,s3
1c00e996:	c65a                	sw	s6,12(sp)
1c00e998:	b165                	j	1c00e640 <pos_libc_prf+0x8ae>
1c00e99a:	0c800793          	li	a5,200
1c00e99e:	9337cbe3          	blt	a5,s3,1c00e2d4 <pos_libc_prf+0x542>
1c00e9a2:	4785                	li	a5,1
1c00e9a4:	ce3e                	sw	a5,28(sp)
1c00e9a6:	b4cd                	j	1c00e488 <pos_libc_prf+0x6f6>
1c00e9a8:	104c                	addi	a1,sp,36
1c00e9aa:	413a09b3          	sub	s3,s4,s3
1c00e9ae:	01358533          	add	a0,a1,s3
1c00e9b2:	9faff0ef          	jal	ra,1c00dbac <memmove>
1c00e9b6:	02000793          	li	a5,32
1c00e9ba:	24f90863          	beq	s2,a5,1c00ec0a <pos_libc_prf+0xe78>
1c00e9be:	47f2                	lw	a5,28(sp)
1c00e9c0:	99be                	add	s3,s3,a5
1c00e9c2:	47f2                	lw	a5,28(sp)
1c00e9c4:	b737d7e3          	bge	a5,s3,1c00e532 <pos_libc_prf+0x7a0>
1c00e9c8:	4772                	lw	a4,28(sp)
1c00e9ca:	4789                	li	a5,2
1c00e9cc:	40e988b3          	sub	a7,s3,a4
1c00e9d0:	fff88693          	addi	a3,a7,-1
1c00e9d4:	06d7f063          	bgeu	a5,a3,1c00ea34 <pos_libc_prf+0xca2>
1c00e9d8:	47e2                	lw	a5,24(sp)
1c00e9da:	00891613          	slli	a2,s2,0x8
1c00e9de:	ffc8f593          	andi	a1,a7,-4
1c00e9e2:	00f976b3          	and	a3,s2,a5
1c00e9e6:	8ed1                	or	a3,a3,a2
1c00e9e8:	01091793          	slli	a5,s2,0x10
1c00e9ec:	8edd                	or	a3,a3,a5
1c00e9ee:	01891613          	slli	a2,s2,0x18
1c00e9f2:	8e55                	or	a2,a2,a3
1c00e9f4:	105c                	addi	a5,sp,36
1c00e9f6:	00865813          	srli	a6,a2,0x8
1c00e9fa:	01065513          	srli	a0,a2,0x10
1c00e9fe:	97ba                	add	a5,a5,a4
1c00ea00:	95be                	add	a1,a1,a5
1c00ea02:	0306f693          	andi	a3,a3,48
1c00ea06:	8261                	srli	a2,a2,0x18
1c00ea08:	0ff87813          	andi	a6,a6,255
1c00ea0c:	0ff57513          	andi	a0,a0,255
1c00ea10:	00d78023          	sb	a3,0(a5)
1c00ea14:	010780a3          	sb	a6,1(a5)
1c00ea18:	00a78123          	sb	a0,2(a5)
1c00ea1c:	00c781a3          	sb	a2,3(a5)
1c00ea20:	0791                	addi	a5,a5,4
1c00ea22:	fef597e3          	bne	a1,a5,1c00ea10 <pos_libc_prf+0xc7e>
1c00ea26:	4772                	lw	a4,28(sp)
1c00ea28:	ffc8f793          	andi	a5,a7,-4
1c00ea2c:	973e                	add	a4,a4,a5
1c00ea2e:	ce3a                	sw	a4,28(sp)
1c00ea30:	b11781e3          	beq	a5,a7,1c00e532 <pos_libc_prf+0x7a0>
1c00ea34:	4772                	lw	a4,28(sp)
1c00ea36:	199c                	addi	a5,sp,240
1c00ea38:	97ba                	add	a5,a5,a4
1c00ea3a:	f3278a23          	sb	s2,-204(a5)
1c00ea3e:	00170793          	addi	a5,a4,1
1c00ea42:	af37d8e3          	bge	a5,s3,1c00e532 <pos_libc_prf+0x7a0>
1c00ea46:	1994                	addi	a3,sp,240
1c00ea48:	97b6                	add	a5,a5,a3
1c00ea4a:	f3278a23          	sb	s2,-204(a5)
1c00ea4e:	00270b93          	addi	s7,a4,2
1c00ea52:	af3bd0e3          	bge	s7,s3,1c00e532 <pos_libc_prf+0x7a0>
1c00ea56:	9bb6                	add	s7,s7,a3
1c00ea58:	f32b8a23          	sb	s2,-204(s7)
1c00ea5c:	c65a                	sw	s6,12(sp)
1c00ea5e:	bcd9                	j	1c00e534 <pos_libc_prf+0x7a2>
1c00ea60:	01b98023          	sb	s11,0(s3)
1c00ea64:	02b00613          	li	a2,43
1c00ea68:	00035663          	bgez	t1,1c00ea74 <pos_libc_prf+0xce2>
1c00ea6c:	40600333          	neg	t1,t1
1c00ea70:	02d00613          	li	a2,45
1c00ea74:	47a9                	li	a5,10
1c00ea76:	02f346b3          	div	a3,t1,a5
1c00ea7a:	00c980a3          	sb	a2,1(s3)
1c00ea7e:	0991                	addi	s3,s3,4
1c00ea80:	02f367b3          	rem	a5,t1,a5
1c00ea84:	03068693          	addi	a3,a3,48
1c00ea88:	fed98f23          	sb	a3,-2(s3)
1c00ea8c:	03078793          	addi	a5,a5,48
1c00ea90:	fef98fa3          	sb	a5,-1(s3)
1c00ea94:	fceff06f          	j	1c00e262 <pos_libc_prf+0x4d0>
1c00ea98:	02d00793          	li	a5,45
1c00ea9c:	02f10223          	sb	a5,36(sp)
1c00eaa0:	800007b7          	lui	a5,0x80000
1c00eaa4:	14f30e63          	beq	t1,a5,1c00ec00 <pos_libc_prf+0xe6e>
1c00eaa8:	40600633          	neg	a2,t1
1c00eaac:	02510693          	addi	a3,sp,37
1c00eab0:	bb31                	j	1c00e7cc <pos_libc_prf+0xa3a>
1c00eab2:	4722                	lw	a4,8(sp)
1c00eab4:	10070d63          	beqz	a4,1c00ebce <pos_libc_prf+0xe3c>
1c00eab8:	02b00693          	li	a3,43
1c00eabc:	02d10223          	sb	a3,36(sp)
1c00eac0:	02510f13          	addi	t5,sp,37
1c00eac4:	4301                	li	t1,0
1c00eac6:	4801                	li	a6,0
1c00eac8:	d9cff06f          	j	1c00e064 <pos_libc_prf+0x2d2>
1c00eacc:	02414783          	lbu	a5,36(sp)
1c00ead0:	98078ce3          	beqz	a5,1c00e468 <pos_libc_prf+0x6d6>
1c00ead4:	1054                	addi	a3,sp,36
1c00ead6:	45e5                	li	a1,25
1c00ead8:	fe078713          	addi	a4,a5,-32 # 7fffffe0 <__l2_shared_end+0x63feffe0>
1c00eadc:	f9f78793          	addi	a5,a5,-97
1c00eae0:	0ff7f793          	andi	a5,a5,255
1c00eae4:	00f5e963          	bltu	a1,a5,1c00eaf6 <pos_libc_prf+0xd64>
1c00eae8:	0016c783          	lbu	a5,1(a3)
1c00eaec:	00e68023          	sb	a4,0(a3)
1c00eaf0:	0685                	addi	a3,a3,1
1c00eaf2:	f3fd                	bnez	a5,1c00ead8 <pos_libc_prf+0xd46>
1c00eaf4:	ba95                	j	1c00e468 <pos_libc_prf+0x6d6>
1c00eaf6:	0016c783          	lbu	a5,1(a3)
1c00eafa:	0685                	addi	a3,a3,1
1c00eafc:	fff1                	bnez	a5,1c00ead8 <pos_libc_prf+0xd46>
1c00eafe:	b2ad                	j	1c00e468 <pos_libc_prf+0x6d6>
1c00eb00:	0c800793          	li	a5,200
1c00eb04:	df37d0e3          	bge	a5,s3,1c00e8e4 <pos_libc_prf+0xb52>
1c00eb08:	547d                	li	s0,-1
1c00eb0a:	b02ff06f          	j	1c00de0c <pos_libc_prf+0x7a>
1c00eb0e:	864e                	mv	a2,s3
1c00eb10:	1048                	addi	a0,sp,36
1c00eb12:	fc5fe0ef          	jal	ra,1c00dad6 <memcpy>
1c00eb16:	b3f9                	j	1c00e8e4 <pos_libc_prf+0xb52>
1c00eb18:	47f2                	lw	a5,28(sp)
1c00eb1a:	4601                	li	a2,0
1c00eb1c:	e399                	bnez	a5,1c00eb22 <pos_libc_prf+0xd90>
1c00eb1e:	01503633          	snez	a2,s5
1c00eb22:	57f5                	li	a5,-3
1c00eb24:	001a8813          	addi	a6,s5,1
1c00eb28:	00f34463          	blt	t1,a5,1c00eb30 <pos_libc_prf+0xd9e>
1c00eb2c:	04685163          	bge	a6,t1,1c00eb6e <pos_libc_prf+0xddc>
1c00eb30:	47c1                	li	a5,16
1c00eb32:	0107d363          	bge	a5,a6,1c00eb38 <pos_libc_prf+0xda6>
1c00eb36:	4841                	li	a6,16
1c00eb38:	06700793          	li	a5,103
1c00eb3c:	187d                	addi	a6,a6,-1
1c00eb3e:	02fd8363          	beq	s11,a5,1c00eb64 <pos_libc_prf+0xdd2>
1c00eb42:	04500d93          	li	s11,69
1c00eb46:	d70ff06f          	j	1c00e0b6 <pos_libc_prf+0x324>
1c00eb4a:	4a99                	li	s5,6
1c00eb4c:	d4fd9563          	bne	s11,a5,1c00e096 <pos_libc_prf+0x304>
1c00eb50:	4772                	lw	a4,28(sp)
1c00eb52:	4605                	li	a2,1
1c00eb54:	57f5                	li	a5,-3
1c00eb56:	8e19                	sub	a2,a2,a4
1c00eb58:	00f34563          	blt	t1,a5,1c00eb62 <pos_libc_prf+0xdd0>
1c00eb5c:	479d                	li	a5,7
1c00eb5e:	0067d863          	bge	a5,t1,1c00eb6e <pos_libc_prf+0xddc>
1c00eb62:	4819                	li	a6,6
1c00eb64:	06500d93          	li	s11,101
1c00eb68:	d4eff06f          	j	1c00e0b6 <pos_libc_prf+0x324>
1c00eb6c:	4601                	li	a2,0
1c00eb6e:	006a8833          	add	a6,s5,t1
1c00eb72:	0b005b63          	blez	a6,1c00ec28 <pos_libc_prf+0xe96>
1c00eb76:	47c1                	li	a5,16
1c00eb78:	0107d363          	bge	a5,a6,1c00eb7e <pos_libc_prf+0xdec>
1c00eb7c:	4841                	li	a6,16
1c00eb7e:	187d                	addi	a6,a6,-1
1c00eb80:	06600d93          	li	s11,102
1c00eb84:	d32ff06f          	j	1c00e0b6 <pos_libc_prf+0x324>
1c00eb88:	4792                	lw	a5,4(sp)
1c00eb8a:	1054                	addi	a3,sp,36
1c00eb8c:	c40780e3          	beqz	a5,1c00e7cc <pos_libc_prf+0xa3a>
1c00eb90:	02000793          	li	a5,32
1c00eb94:	02f10223          	sb	a5,36(sp)
1c00eb98:	02510693          	addi	a3,sp,37
1c00eb9c:	b905                	j	1c00e7cc <pos_libc_prf+0xa3a>
1c00eb9e:	ffc80fa3          	sb	t3,-1(a6)
1c00eba2:	b30986e3          	beq	s3,a6,1c00e6ce <pos_libc_prf+0x93c>
1c00eba6:	0805                	addi	a6,a6,1
1c00eba8:	b4d5                	j	1c00e68c <pos_libc_prf+0x8fa>
1c00ebaa:	ffe80fa3          	sb	t5,-1(a6)
1c00ebae:	0305                	addi	t1,t1,1
1c00ebb0:	b679                	j	1c00e73e <pos_libc_prf+0x9ac>
1c00ebb2:	020102a3          	sb	zero,37(sp)
1c00ebb6:	57fd                	li	a5,-1
1c00ebb8:	0cfa8263          	beq	s5,a5,1c00ec7c <pos_libc_prf+0xeea>
1c00ebbc:	4785                	li	a5,1
1c00ebbe:	0b47c063          	blt	a5,s4,1c00ec5e <pos_libc_prf+0xecc>
1c00ebc2:	4a72                	lw	s4,28(sp)
1c00ebc4:	c65a                	sw	s6,12(sp)
1c00ebc6:	bcad                	j	1c00e640 <pos_libc_prf+0x8ae>
1c00ebc8:	8636                	mv	a2,a3
1c00ebca:	b04ff06f          	j	1c00dece <pos_libc_prf+0x13c>
1c00ebce:	4712                	lw	a4,4(sp)
1c00ebd0:	c77d                	beqz	a4,1c00ecbe <pos_libc_prf+0xf2c>
1c00ebd2:	02000693          	li	a3,32
1c00ebd6:	02d10223          	sb	a3,36(sp)
1c00ebda:	4301                	li	t1,0
1c00ebdc:	4801                	li	a6,0
1c00ebde:	02510f13          	addi	t5,sp,37
1c00ebe2:	c82ff06f          	j	1c00e064 <pos_libc_prf+0x2d2>
1c00ebe6:	02d00693          	li	a3,45
1c00ebea:	02d10223          	sb	a3,36(sp)
1c00ebee:	02510f13          	addi	t5,sp,37
1c00ebf2:	b9cff06f          	j	1c00df8e <pos_libc_prf+0x1fc>
1c00ebf6:	0c800613          	li	a2,200
1c00ebfa:	960ad6e3          	bgez	s5,1c00e566 <pos_libc_prf+0x7d4>
1c00ebfe:	bf09                	j	1c00eb10 <pos_libc_prf+0xd7e>
1c00ec00:	80000637          	lui	a2,0x80000
1c00ec04:	02510693          	addi	a3,sp,37
1c00ec08:	b6d1                	j	1c00e7cc <pos_libc_prf+0xa3a>
1c00ec0a:	ce02                	sw	zero,28(sp)
1c00ec0c:	bb5d                	j	1c00e9c2 <pos_libc_prf+0xc30>
1c00ec0e:	4712                	lw	a4,4(sp)
1c00ec10:	02410f13          	addi	t5,sp,36
1c00ec14:	b6070d63          	beqz	a4,1c00df8e <pos_libc_prf+0x1fc>
1c00ec18:	02000693          	li	a3,32
1c00ec1c:	02d10223          	sb	a3,36(sp)
1c00ec20:	02510f13          	addi	t5,sp,37
1c00ec24:	b6aff06f          	j	1c00df8e <pos_libc_prf+0x1fc>
1c00ec28:	06600d93          	li	s11,102
1c00ec2c:	4781                	li	a5,0
1c00ec2e:	080006b7          	lui	a3,0x8000
1c00ec32:	ce8ff06f          	j	1c00e11a <pos_libc_prf+0x388>
1c00ec36:	06b6e363          	bltu	a3,a1,1c00ec9c <pos_libc_prf+0xf0a>
1c00ec3a:	04e00693          	li	a3,78
1c00ec3e:	04100613          	li	a2,65
1c00ec42:	00d78023          	sb	a3,0(a5)
1c00ec46:	00c780a3          	sb	a2,1(a5)
1c00ec4a:	00d78123          	sb	a3,2(a5)
1c00ec4e:	f44ff06f          	j	1c00e392 <pos_libc_prf+0x600>
1c00ec52:	03000693          	li	a3,48
1c00ec56:	00df0023          	sb	a3,0(t5)
1c00ec5a:	4541                	li	a0,16
1c00ec5c:	bc95                	j	1c00e6d0 <pos_libc_prf+0x93e>
1c00ec5e:	4982                	lw	s3,0(sp)
1c00ec60:	860992e3          	bnez	s3,1c00e4c4 <pos_libc_prf+0x732>
1c00ec64:	104c                	addi	a1,sp,36
1c00ec66:	fffa0993          	addi	s3,s4,-1
1c00ec6a:	4609                	li	a2,2
1c00ec6c:	01358533          	add	a0,a1,s3
1c00ec70:	f3dfe0ef          	jal	ra,1c00dbac <memmove>
1c00ec74:	02000913          	li	s2,32
1c00ec78:	ce02                	sw	zero,28(sp)
1c00ec7a:	b3b9                	j	1c00e9c8 <pos_libc_prf+0xc36>
1c00ec7c:	49f2                	lw	s3,28(sp)
1c00ec7e:	b19d                	j	1c00e8e4 <pos_libc_prf+0xb52>
1c00ec80:	06900693          	li	a3,105
1c00ec84:	00d78023          	sb	a3,0(a5)
1c00ec88:	06e00693          	li	a3,110
1c00ec8c:	00d780a3          	sb	a3,1(a5)
1c00ec90:	06600693          	li	a3,102
1c00ec94:	00d78123          	sb	a3,2(a5)
1c00ec98:	efaff06f          	j	1c00e392 <pos_libc_prf+0x600>
1c00ec9c:	06e00693          	li	a3,110
1c00eca0:	06100613          	li	a2,97
1c00eca4:	00d78023          	sb	a3,0(a5)
1c00eca8:	00c780a3          	sb	a2,1(a5)
1c00ecac:	00d78123          	sb	a3,2(a5)
1c00ecb0:	ee2ff06f          	j	1c00e392 <pos_libc_prf+0x600>
1c00ecb4:	89f6                	mv	s3,t4
1c00ecb6:	a8061ae3          	bnez	a2,1c00e74a <pos_libc_prf+0x9b8>
1c00ecba:	da8ff06f          	j	1c00e262 <pos_libc_prf+0x4d0>
1c00ecbe:	4301                	li	t1,0
1c00ecc0:	4801                	li	a6,0
1c00ecc2:	02410f13          	addi	t5,sp,36
1c00ecc6:	b9eff06f          	j	1c00e064 <pos_libc_prf+0x2d2>

1c00ecca <pos_init_start>:
1c00ecca:	1141                	addi	sp,sp,-16
1c00eccc:	c422                	sw	s0,8(sp)
1c00ecce:	1c000437          	lui	s0,0x1c000
1c00ecd2:	c606                	sw	ra,12(sp)
1c00ecd4:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c00ecd8:	a6cfc0ef          	jal	ra,1c00af44 <pos_soc_init>
1c00ecdc:	2a75                	jal	1c00ee98 <pos_irq_init>
1c00ecde:	22e5                	jal	1c00eec6 <pos_soc_event_init>
1c00ece0:	2225                	jal	1c00ee08 <pos_allocs_init>
1c00ece2:	405c                	lw	a5,4(s0)
1c00ece4:	c791                	beqz	a5,1c00ecf0 <pos_init_start+0x26>
1c00ece6:	0411                	addi	s0,s0,4
1c00ece8:	0411                	addi	s0,s0,4
1c00ecea:	9782                	jalr	a5
1c00ecec:	401c                	lw	a5,0(s0)
1c00ecee:	ffed                	bnez	a5,1c00ece8 <pos_init_start+0x1e>
1c00ecf0:	86cff0ef          	jal	ra,1c00dd5c <pos_io_start>
1c00ecf4:	300467f3          	csrrsi	a5,mstatus,8
1c00ecf8:	40b2                	lw	ra,12(sp)
1c00ecfa:	4422                	lw	s0,8(sp)
1c00ecfc:	0141                	addi	sp,sp,16
1c00ecfe:	8082                	ret

1c00ed00 <pos_init_stop>:
1c00ed00:	1141                	addi	sp,sp,-16
1c00ed02:	c422                	sw	s0,8(sp)
1c00ed04:	1c000437          	lui	s0,0x1c000
1c00ed08:	c606                	sw	ra,12(sp)
1c00ed0a:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c00ed0e:	852ff0ef          	jal	ra,1c00dd60 <pos_io_stop>
1c00ed12:	405c                	lw	a5,4(s0)
1c00ed14:	c791                	beqz	a5,1c00ed20 <pos_init_stop+0x20>
1c00ed16:	0411                	addi	s0,s0,4
1c00ed18:	0411                	addi	s0,s0,4
1c00ed1a:	9782                	jalr	a5
1c00ed1c:	401c                	lw	a5,0(s0)
1c00ed1e:	ffed                	bnez	a5,1c00ed18 <pos_init_stop+0x18>
1c00ed20:	40b2                	lw	ra,12(sp)
1c00ed22:	4422                	lw	s0,8(sp)
1c00ed24:	0141                	addi	sp,sp,16
1c00ed26:	8082                	ret

1c00ed28 <pos_alloc_init>:
1c00ed28:	00758793          	addi	a5,a1,7
1c00ed2c:	9be1                	andi	a5,a5,-8
1c00ed2e:	40b785b3          	sub	a1,a5,a1
1c00ed32:	c11c                	sw	a5,0(a0)
1c00ed34:	40b605b3          	sub	a1,a2,a1
1c00ed38:	00b05663          	blez	a1,1c00ed44 <pos_alloc_init+0x1c>
1c00ed3c:	99e1                	andi	a1,a1,-8
1c00ed3e:	c38c                	sw	a1,0(a5)
1c00ed40:	0007a223          	sw	zero,4(a5)
1c00ed44:	8082                	ret

1c00ed46 <pos_alloc>:
1c00ed46:	411c                	lw	a5,0(a0)
1c00ed48:	00758713          	addi	a4,a1,7
1c00ed4c:	862a                	mv	a2,a0
1c00ed4e:	ff877593          	andi	a1,a4,-8
1c00ed52:	4681                	li	a3,0
1c00ed54:	e789                	bnez	a5,1c00ed5e <pos_alloc+0x18>
1c00ed56:	a091                	j	1c00ed9a <pos_alloc+0x54>
1c00ed58:	86be                	mv	a3,a5
1c00ed5a:	c505                	beqz	a0,1c00ed82 <pos_alloc+0x3c>
1c00ed5c:	87aa                	mv	a5,a0
1c00ed5e:	4398                	lw	a4,0(a5)
1c00ed60:	43c8                	lw	a0,4(a5)
1c00ed62:	feb74be3          	blt	a4,a1,1c00ed58 <pos_alloc+0x12>
1c00ed66:	00b70f63          	beq	a4,a1,1c00ed84 <pos_alloc+0x3e>
1c00ed6a:	00b78833          	add	a6,a5,a1
1c00ed6e:	8f0d                	sub	a4,a4,a1
1c00ed70:	00e82023          	sw	a4,0(a6)
1c00ed74:	00a82223          	sw	a0,4(a6)
1c00ed78:	ca91                	beqz	a3,1c00ed8c <pos_alloc+0x46>
1c00ed7a:	0106a223          	sw	a6,4(a3) # 8000004 <__CTOR_LIST__-0x14000000>
1c00ed7e:	853e                	mv	a0,a5
1c00ed80:	8082                	ret
1c00ed82:	8082                	ret
1c00ed84:	ca81                	beqz	a3,1c00ed94 <pos_alloc+0x4e>
1c00ed86:	c2c8                	sw	a0,4(a3)
1c00ed88:	853e                	mv	a0,a5
1c00ed8a:	8082                	ret
1c00ed8c:	01062023          	sw	a6,0(a2) # 80000000 <__l2_shared_end+0x63ff0000>
1c00ed90:	853e                	mv	a0,a5
1c00ed92:	8082                	ret
1c00ed94:	c208                	sw	a0,0(a2)
1c00ed96:	853e                	mv	a0,a5
1c00ed98:	8082                	ret
1c00ed9a:	4501                	li	a0,0
1c00ed9c:	8082                	ret

1c00ed9e <pos_free>:
1c00ed9e:	411c                	lw	a5,0(a0)
1c00eda0:	061d                	addi	a2,a2,7
1c00eda2:	9a61                	andi	a2,a2,-8
1c00eda4:	c7a1                	beqz	a5,1c00edec <pos_free+0x4e>
1c00eda6:	00b7e563          	bltu	a5,a1,1c00edb0 <pos_free+0x12>
1c00edaa:	a089                	j	1c00edec <pos_free+0x4e>
1c00edac:	00b7f563          	bgeu	a5,a1,1c00edb6 <pos_free+0x18>
1c00edb0:	873e                	mv	a4,a5
1c00edb2:	43dc                	lw	a5,4(a5)
1c00edb4:	ffe5                	bnez	a5,1c00edac <pos_free+0xe>
1c00edb6:	00c586b3          	add	a3,a1,a2
1c00edba:	00d78b63          	beq	a5,a3,1c00edd0 <pos_free+0x32>
1c00edbe:	c190                	sw	a2,0(a1)
1c00edc0:	4314                	lw	a3,0(a4)
1c00edc2:	c1dc                	sw	a5,4(a1)
1c00edc4:	00d70533          	add	a0,a4,a3
1c00edc8:	00a58e63          	beq	a1,a0,1c00ede4 <pos_free+0x46>
1c00edcc:	c34c                	sw	a1,4(a4)
1c00edce:	8082                	ret
1c00edd0:	4394                	lw	a3,0(a5)
1c00edd2:	43dc                	lw	a5,4(a5)
1c00edd4:	9636                	add	a2,a2,a3
1c00edd6:	c190                	sw	a2,0(a1)
1c00edd8:	4314                	lw	a3,0(a4)
1c00edda:	c1dc                	sw	a5,4(a1)
1c00eddc:	00d70533          	add	a0,a4,a3
1c00ede0:	fea596e3          	bne	a1,a0,1c00edcc <pos_free+0x2e>
1c00ede4:	9636                	add	a2,a2,a3
1c00ede6:	c310                	sw	a2,0(a4)
1c00ede8:	c35c                	sw	a5,4(a4)
1c00edea:	8082                	ret
1c00edec:	00c58733          	add	a4,a1,a2
1c00edf0:	00e78663          	beq	a5,a4,1c00edfc <pos_free+0x5e>
1c00edf4:	c1dc                	sw	a5,4(a1)
1c00edf6:	c190                	sw	a2,0(a1)
1c00edf8:	c10c                	sw	a1,0(a0)
1c00edfa:	8082                	ret
1c00edfc:	4398                	lw	a4,0(a5)
1c00edfe:	43dc                	lw	a5,4(a5)
1c00ee00:	963a                	add	a2,a2,a4
1c00ee02:	c1dc                	sw	a5,4(a1)
1c00ee04:	c190                	sw	a2,0(a1)
1c00ee06:	bfcd                	j	1c00edf8 <pos_free+0x5a>

1c00ee08 <pos_allocs_init>:
1c00ee08:	1c0065b7          	lui	a1,0x1c006
1c00ee0c:	1141                	addi	sp,sp,-16
1c00ee0e:	18458613          	addi	a2,a1,388 # 1c006184 <__l2_priv0_end>
1c00ee12:	1c0087b7          	lui	a5,0x1c008
1c00ee16:	c606                	sw	ra,12(sp)
1c00ee18:	18458593          	addi	a1,a1,388
1c00ee1c:	40c78633          	sub	a2,a5,a2
1c00ee20:	04f5d863          	bge	a1,a5,1c00ee70 <pos_allocs_init+0x68>
1c00ee24:	1c006537          	lui	a0,0x1c006
1c00ee28:	17850513          	addi	a0,a0,376 # 1c006178 <pos_alloc_l2>
1c00ee2c:	3df5                	jal	1c00ed28 <pos_alloc_init>
1c00ee2e:	1c00f5b7          	lui	a1,0x1c00f
1c00ee32:	ee058613          	addi	a2,a1,-288 # 1c00eee0 <__l2_priv1_end>
1c00ee36:	1c0107b7          	lui	a5,0x1c010
1c00ee3a:	ee058593          	addi	a1,a1,-288
1c00ee3e:	40c78633          	sub	a2,a5,a2
1c00ee42:	02f5da63          	bge	a1,a5,1c00ee76 <pos_allocs_init+0x6e>
1c00ee46:	1c006537          	lui	a0,0x1c006
1c00ee4a:	17c50513          	addi	a0,a0,380 # 1c00617c <pos_alloc_l2+0x4>
1c00ee4e:	3de9                	jal	1c00ed28 <pos_alloc_init>
1c00ee50:	40b2                	lw	ra,12(sp)
1c00ee52:	1c0105b7          	lui	a1,0x1c010
1c00ee56:	00058793          	mv	a5,a1
1c00ee5a:	1c080637          	lui	a2,0x1c080
1c00ee5e:	1c006537          	lui	a0,0x1c006
1c00ee62:	8e1d                	sub	a2,a2,a5
1c00ee64:	00058593          	mv	a1,a1
1c00ee68:	18050513          	addi	a0,a0,384 # 1c006180 <pos_alloc_l2+0x8>
1c00ee6c:	0141                	addi	sp,sp,16
1c00ee6e:	bd6d                	j	1c00ed28 <pos_alloc_init>
1c00ee70:	4581                	li	a1,0
1c00ee72:	4601                	li	a2,0
1c00ee74:	bf45                	j	1c00ee24 <pos_allocs_init+0x1c>
1c00ee76:	4581                	li	a1,0
1c00ee78:	4601                	li	a2,0
1c00ee7a:	b7f1                	j	1c00ee46 <pos_allocs_init+0x3e>

1c00ee7c <pi_l2_malloc>:
1c00ee7c:	85aa                	mv	a1,a0
1c00ee7e:	1c006537          	lui	a0,0x1c006
1c00ee82:	17850513          	addi	a0,a0,376 # 1c006178 <pos_alloc_l2>
1c00ee86:	b5c1                	j	1c00ed46 <pos_alloc>

1c00ee88 <pi_l2_free>:
1c00ee88:	862e                	mv	a2,a1
1c00ee8a:	85aa                	mv	a1,a0
1c00ee8c:	1c006537          	lui	a0,0x1c006
1c00ee90:	17850513          	addi	a0,a0,376 # 1c006178 <pos_alloc_l2>
1c00ee94:	b729                	j	1c00ed9e <pos_free>

1c00ee96 <__rt_handle_illegal_instr>:
1c00ee96:	8082                	ret

1c00ee98 <pos_irq_init>:
1c00ee98:	1a10a737          	lui	a4,0x1a10a
1c00ee9c:	56fd                	li	a3,-1
1c00ee9e:	f14027f3          	csrr	a5,mhartid
1c00eea2:	8795                	srai	a5,a5,0x5
1c00eea4:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00eea8:	03f7f793          	andi	a5,a5,63
1c00eeac:	477d                	li	a4,31
1c00eeae:	00e78363          	beq	a5,a4,1c00eeb4 <pos_irq_init+0x1c>
1c00eeb2:	8082                	ret
1c00eeb4:	1c0087b7          	lui	a5,0x1c008
1c00eeb8:	00078793          	mv	a5,a5
1c00eebc:	0017e793          	ori	a5,a5,1
1c00eec0:	30579073          	csrw	mtvec,a5
1c00eec4:	8082                	ret

1c00eec6 <pos_soc_event_init>:
1c00eec6:	1a1067b7          	lui	a5,0x1a106
1c00eeca:	577d                	li	a4,-1
1c00eecc:	c3d8                	sw	a4,4(a5)
1c00eece:	c798                	sw	a4,8(a5)
1c00eed0:	c7d8                	sw	a4,12(a5)
1c00eed2:	cb98                	sw	a4,16(a5)
1c00eed4:	cbd8                	sw	a4,20(a5)
1c00eed6:	cf98                	sw	a4,24(a5)
1c00eed8:	cfd8                	sw	a4,28(a5)
1c00eeda:	d398                	sw	a4,32(a5)
1c00eedc:	8082                	ret

1c00eede <_endtext>:
	...
