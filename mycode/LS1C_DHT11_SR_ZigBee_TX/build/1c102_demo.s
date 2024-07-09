
1c102_demo.elf:     file format elf32-loongarch
1c102_demo.elf


Disassembly of section .text:

1c000000 <_start>:
_start():
1c000000:	0015000d 	move	$r13,$r0
1c000004:	50002000 	b	32(0x20) # 1c000024 <LoopCopyDataInit>

1c000008 <CopyDataInit>:
CopyDataInit():
1c000008:	1438010f 	lu12i.w	$r15,114696(0x1c008)
1c00000c:	039fb1ef 	ori	$r15,$r15,0x7ec
1c000010:	001035f0 	add.w	$r16,$r15,$r13
1c000014:	2880020f 	ld.w	$r15,$r16,0
1c000018:	00103590 	add.w	$r16,$r12,$r13
1c00001c:	2980020f 	st.w	$r15,$r16,0
1c000020:	028011ad 	addi.w	$r13,$r13,4(0x4)

1c000024 <LoopCopyDataInit>:
LoopCopyDataInit():
1c000024:	1500002c 	lu12i.w	$r12,-524287(0x80001)
1c000028:	0380018c 	ori	$r12,$r12,0x0
1c00002c:	1500002f 	lu12i.w	$r15,-524287(0x80001)
1c000030:	038191ef 	ori	$r15,$r15,0x64
1c000034:	0010358e 	add.w	$r14,$r12,$r13
1c000038:	5fffd1cf 	bne	$r14,$r15,-48(0x3ffd0) # 1c000008 <CopyDataInit>
1c00003c:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c000040:	0380018c 	ori	$r12,$r12,0x0
1c000044:	1500000d 	lu12i.w	$r13,-524288(0x80000)
1c000048:	038611ad 	ori	$r13,$r13,0x184
1c00004c:	580011ac 	beq	$r13,$r12,16(0x10) # 1c00005c <cpu_init_start>

1c000050 <LoopFillZerobss>:
LoopFillZerobss():
1c000050:	29800180 	st.w	$r0,$r12,0
1c000054:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000058:	5ffff9ac 	bne	$r13,$r12,-8(0x3fff8) # 1c000050 <LoopFillZerobss>

1c00005c <cpu_init_start>:
cpu_init_start():
1c00005c:	1438002c 	lu12i.w	$r12,114689(0x1c001)
1c000060:	0400302c 	csrwr	$r12,0xc
1c000064:	0015000c 	move	$r12,$r0
1c000068:	0400102c 	csrwr	$r12,0x4
1c00006c:	1400002c 	lu12i.w	$r12,1(0x1)
1c000070:	03bffd8c 	ori	$r12,$r12,0xfff
1c000074:	0400118c 	csrxchg	$r12,$r12,0x4
1c000078:	15ffe3ec 	lu12i.w	$r12,-225(0xfff1f)
1c00007c:	03bffd8c 	ori	$r12,$r12,0xfff
1c000080:	0406442c 	csrwr	$r12,0x191
1c000084:	14eca06c 	lu12i.w	$r12,484611(0x76503)
1c000088:	0388418c 	ori	$r12,$r12,0x210
1c00008c:	0406402c 	csrwr	$r12,0x190
1c000090:	0380200c 	ori	$r12,$r0,0x8
1c000094:	04000180 	csrxchg	$r0,$r12,0x0
1c000098:	15000023 	lu12i.w	$r3,-524287(0x80001)
1c00009c:	03bdf063 	ori	$r3,$r3,0xf7c
1c0000a0:	54132400 	bl	4900(0x1324) # 1c0013c4 <bsp_init>
1c0000a4:	03400000 	andi	$r0,$r0,0x0
1c0000a8:	4c000020 	jirl	$r0,$r1,0

1c0000ac <cpu_wait>:
cpu_wait():
1c0000ac:	06488000 	idle	0x0
1c0000b0:	4c000020 	jirl	$r0,$r1,0
	...

1c000800 <m4_flash_4k>:
m4_flash_4k():
1c000800:	140007ec 	lu12i.w	$r12,63(0x3f)
1c000804:	03be018c 	ori	$r12,$r12,0xf80
1c000808:	157fcc0d 	lu12i.w	$r13,-262560(0xbfe60)
1c00080c:	0014b08c 	and	$r12,$r4,$r12
1c000810:	038061af 	ori	$r15,$r13,0x18
1c000814:	02804010 	addi.w	$r16,$r0,16(0x10)
1c000818:	1540000e 	lu12i.w	$r14,-393216(0xa0000)
1c00081c:	298001f0 	st.w	$r16,$r15,0
1c000820:	0015398e 	or	$r14,$r12,$r14
1c000824:	298001ae 	st.w	$r14,$r13,0
1c000828:	1480000f 	lu12i.w	$r15,262144(0x40000)
1c00082c:	14b54aae 	lu12i.w	$r14,371285(0x5aa55)
1c000830:	0396a9ce 	ori	$r14,$r14,0x5aa
1c000834:	298001af 	st.w	$r15,$r13,0
1c000838:	15c0000f 	lu12i.w	$r15,-131072(0xe0000)
1c00083c:	2980008e 	st.w	$r14,$r4,0
1c000840:	00153d8c 	or	$r12,$r12,$r15
1c000844:	298001ac 	st.w	$r12,$r13,0
1c000848:	4c000020 	jirl	$r0,$r1,0
	...

1c001000 <DEFAULT_INT_HANDLER>:
DEFAULT_INT_HANDLER():
1c001000:	0400c435 	csrwr	$r21,0x31
1c001004:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c001008:	29bff2ac 	st.w	$r12,$r21,-4(0xffc)
1c00100c:	29bfe2ad 	st.w	$r13,$r21,-8(0xff8)
1c001010:	29bfd2ae 	st.w	$r14,$r21,-12(0xff4)
1c001014:	29bfc2af 	st.w	$r15,$r21,-16(0xff0)
1c001018:	29bfb2b0 	st.w	$r16,$r21,-20(0xfec)
1c00101c:	29bfa2b1 	st.w	$r17,$r21,-24(0xfe8)
1c001020:	29bf92b2 	st.w	$r18,$r21,-28(0xfe4)
1c001024:	29bf82b3 	st.w	$r19,$r21,-32(0xfe0)
1c001028:	29bf72b4 	st.w	$r20,$r21,-36(0xfdc)
1c00102c:	29bed2a4 	st.w	$r4,$r21,-76(0xfb4)
1c001030:	29bec2a5 	st.w	$r5,$r21,-80(0xfb0)
1c001034:	29beb2a6 	st.w	$r6,$r21,-84(0xfac)
1c001038:	29bea2a7 	st.w	$r7,$r21,-88(0xfa8)
1c00103c:	29be92a8 	st.w	$r8,$r21,-92(0xfa4)
1c001040:	29be82a9 	st.w	$r9,$r21,-96(0xfa0)
1c001044:	29be72aa 	st.w	$r10,$r21,-100(0xf9c)
1c001048:	29be62ab 	st.w	$r11,$r21,-104(0xf98)
1c00104c:	29be52a1 	st.w	$r1,$r21,-108(0xf94)
1c001050:	29be42a3 	st.w	$r3,$r21,-112(0xf90)
1c001054:	0400140c 	csrrd	$r12,0x5
1c001058:	036ef18d 	andi	$r13,$r12,0xbbc
1c00105c:	400065a0 	beqz	$r13,100(0x64) # 1c0010c0 <exception_core_check>

1c001060 <exception_pmu>:
exception_pmu():
1c001060:	0340118d 	andi	$r13,$r12,0x4
1c001064:	44002da0 	bnez	$r13,44(0x2c) # 1c001090 <wake_label>
1c001068:	0340218d 	andi	$r13,$r12,0x8
1c00106c:	44002da0 	bnez	$r13,44(0x2c) # 1c001098 <touch_label>
1c001070:	0340418d 	andi	$r13,$r12,0x10
1c001074:	44002da0 	bnez	$r13,44(0x2c) # 1c0010a0 <uart2_label>
1c001078:	0340818d 	andi	$r13,$r12,0x20
1c00107c:	44002da0 	bnez	$r13,44(0x2c) # 1c0010a8 <bcc_label>
1c001080:	0342018d 	andi	$r13,$r12,0x80
1c001084:	44002da0 	bnez	$r13,44(0x2c) # 1c0010b0 <exint_label>
1c001088:	0360018d 	andi	$r13,$r12,0x800
1c00108c:	44002da0 	bnez	$r13,44(0x2c) # 1c0010b8 <timer_label>

1c001090 <wake_label>:
wake_label():
1c001090:	5438f400 	bl	14580(0x38f4) # 1c004984 <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	54393c00 	bl	14652(0x393c) # 1c0049d4 <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	5439c800 	bl	14792(0x39c8) # 1c004a68 <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	5439fc00 	bl	14844(0x39fc) # 1c004aa4 <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	54381c00 	bl	14364(0x381c) # 1c0048cc <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	543d9400 	bl	15764(0x3d94) # 1c004e4c <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	543b3c00 	bl	15164(0x3b3c) # 1c004c04 <intc_handler>
1c0010cc:	50000400 	b	4(0x4) # 1c0010d0 <exception_exit>

1c0010d0 <exception_exit>:
exception_exit():
1c0010d0:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c0010d4:	28bff2ac 	ld.w	$r12,$r21,-4(0xffc)
1c0010d8:	28bfe2ad 	ld.w	$r13,$r21,-8(0xff8)
1c0010dc:	28bfd2ae 	ld.w	$r14,$r21,-12(0xff4)
1c0010e0:	28bfc2af 	ld.w	$r15,$r21,-16(0xff0)
1c0010e4:	28bfb2b0 	ld.w	$r16,$r21,-20(0xfec)
1c0010e8:	28bfa2b1 	ld.w	$r17,$r21,-24(0xfe8)
1c0010ec:	28bf92b2 	ld.w	$r18,$r21,-28(0xfe4)
1c0010f0:	28bf82b3 	ld.w	$r19,$r21,-32(0xfe0)
1c0010f4:	28bf72b4 	ld.w	$r20,$r21,-36(0xfdc)
1c0010f8:	28bed2a4 	ld.w	$r4,$r21,-76(0xfb4)
1c0010fc:	28bec2a5 	ld.w	$r5,$r21,-80(0xfb0)
1c001100:	28beb2a6 	ld.w	$r6,$r21,-84(0xfac)
1c001104:	28bea2a7 	ld.w	$r7,$r21,-88(0xfa8)
1c001108:	28be92a8 	ld.w	$r8,$r21,-92(0xfa4)
1c00110c:	28be82a9 	ld.w	$r9,$r21,-96(0xfa0)
1c001110:	28be72aa 	ld.w	$r10,$r21,-100(0xf9c)
1c001114:	28be62ab 	ld.w	$r11,$r21,-104(0xf98)
1c001118:	28be52a1 	ld.w	$r1,$r21,-108(0xf94)
1c00111c:	28be42a3 	ld.w	$r3,$r21,-112(0xf90)
1c001120:	0400c415 	csrrd	$r21,0x31
1c001124:	06483800 	ertn

1c001128 <serial_out>:
serial_out():
1c001128:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c00112c:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c001130:	03408108 	andi	$r8,$r8,0x20
1c001134:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c001128 <serial_out>
1c001138:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00113c:	29000184 	st.b	$r4,$r12,0
1c001140:	4c000020 	jirl	$r0,$r1,0

1c001144 <outputaddr>:
outputaddr():
1c001144:	02bff063 	addi.w	$r3,$r3,-4(0xffc)
1c001148:	29800061 	st.w	$r1,$r3,0
1c00114c:	1cc80006 	pcaddu12i	$r6,409600(0x64000)
1c001150:	28bae0c6 	ld.w	$r6,$r6,-328(0xeb8)
1c001154:	15e0000d 	lu12i.w	$r13,-65536(0xf0000)
1c001158:	0380200e 	ori	$r14,$r0,0x8
1c00115c:	0380700f 	ori	$r15,$r0,0x1c
1c001160:	03800085 	ori	$r5,$r4,0x0
1c001164:	58002dc0 	beq	$r14,$r0,44(0x2c) # 1c001190 <outputaddr+0x4c>
1c001168:	0014b4ac 	and	$r12,$r5,$r13
1c00116c:	0017bd8c 	srl.w	$r12,$r12,$r15
1c001170:	0010198c 	add.w	$r12,$r12,$r6
1c001174:	2a000190 	ld.bu	$r16,$r12,0
1c001178:	03800204 	ori	$r4,$r16,0x0
1c00117c:	57ffafff 	bl	-84(0xfffffac) # 1c001128 <serial_out>
1c001180:	004491ad 	srli.w	$r13,$r13,0x4
1c001184:	02bff1ef 	addi.w	$r15,$r15,-4(0xffc)
1c001188:	02bffdce 	addi.w	$r14,$r14,-1(0xfff)
1c00118c:	53ffdbff 	b	-40(0xfffffd8) # 1c001164 <outputaddr+0x20>
1c001190:	03802804 	ori	$r4,$r0,0xa
1c001194:	57ff97ff 	bl	-108(0xfffff94) # 1c001128 <serial_out>
1c001198:	28800061 	ld.w	$r1,$r3,0
1c00119c:	02801063 	addi.w	$r3,$r3,4(0x4)
1c0011a0:	4c000020 	jirl	$r0,$r1,0

1c0011a4 <outputstring>:
outputstring():
1c0011a4:	00150089 	move	$r9,$r4
1c0011a8:	2a00012c 	ld.bu	$r12,$r9,0
1c0011ac:	58002580 	beq	$r12,$r0,36(0x24) # 1c0011d0 <outputstring+0x2c>
1c0011b0:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c0011b4:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c0011b8:	03408108 	andi	$r8,$r8,0x20
1c0011bc:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c0011b0 <outputstring+0xc>
1c0011c0:	157fd007 	lu12i.w	$r7,-262528(0xbfe80)
1c0011c4:	290000ec 	st.b	$r12,$r7,0
1c0011c8:	02800529 	addi.w	$r9,$r9,1(0x1)
1c0011cc:	53ffdfff 	b	-36(0xfffffdc) # 1c0011a8 <outputstring+0x4>
1c0011d0:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c0011d4:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c0011d8:	03410108 	andi	$r8,$r8,0x40
1c0011dc:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c0011d0 <outputstring+0x2c>
1c0011e0:	4c000020 	jirl	$r0,$r1,0

1c0011e4 <cpu_sleep>:
cpu_sleep():
1c0011e4:	0400c435 	csrwr	$r21,0x31
1c0011e8:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c0011ec:	29bff2ac 	st.w	$r12,$r21,-4(0xffc)
1c0011f0:	29bfe2ad 	st.w	$r13,$r21,-8(0xff8)
1c0011f4:	29bfd2ae 	st.w	$r14,$r21,-12(0xff4)
1c0011f8:	29bfc2af 	st.w	$r15,$r21,-16(0xff0)
1c0011fc:	29bfb2b0 	st.w	$r16,$r21,-20(0xfec)
1c001200:	29bfa2b1 	st.w	$r17,$r21,-24(0xfe8)
1c001204:	29bf92b2 	st.w	$r18,$r21,-28(0xfe4)
1c001208:	29bf82b3 	st.w	$r19,$r21,-32(0xfe0)
1c00120c:	29bf72b4 	st.w	$r20,$r21,-36(0xfdc)
1c001210:	29bf62b7 	st.w	$r23,$r21,-40(0xfd8)
1c001214:	29bf52b8 	st.w	$r24,$r21,-44(0xfd4)
1c001218:	29bf42b9 	st.w	$r25,$r21,-48(0xfd0)
1c00121c:	29bf32ba 	st.w	$r26,$r21,-52(0xfcc)
1c001220:	29bf22bb 	st.w	$r27,$r21,-56(0xfc8)
1c001224:	29bf12bc 	st.w	$r28,$r21,-60(0xfc4)
1c001228:	29bf02bd 	st.w	$r29,$r21,-64(0xfc0)
1c00122c:	29bef2be 	st.w	$r30,$r21,-68(0xfbc)
1c001230:	29bee2bf 	st.w	$r31,$r21,-72(0xfb8)
1c001234:	29bed2a4 	st.w	$r4,$r21,-76(0xfb4)
1c001238:	29bec2a5 	st.w	$r5,$r21,-80(0xfb0)
1c00123c:	29beb2a6 	st.w	$r6,$r21,-84(0xfac)
1c001240:	29bea2a7 	st.w	$r7,$r21,-88(0xfa8)
1c001244:	29be92a8 	st.w	$r8,$r21,-92(0xfa4)
1c001248:	29be82a9 	st.w	$r9,$r21,-96(0xfa0)
1c00124c:	29be72aa 	st.w	$r10,$r21,-100(0xf9c)
1c001250:	29be62ab 	st.w	$r11,$r21,-104(0xf98)
1c001254:	29be52a1 	st.w	$r1,$r21,-108(0xf94)
1c001258:	29be42a3 	st.w	$r3,$r21,-112(0xf90)
1c00125c:	29be32a2 	st.w	$r2,$r21,-116(0xf8c)
1c001260:	29be22b6 	st.w	$r22,$r21,-120(0xf88)
1c001264:	028002ac 	addi.w	$r12,$r21,0
1c001268:	0400c415 	csrrd	$r21,0x31
1c00126c:	29be1195 	st.w	$r21,$r12,-124(0xf84)
1c001270:	38720000 	dbar	0x0
1c001274:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c001278:	2880f1ac 	ld.w	$r12,$r13,60(0x3c)
1c00127c:	0340058c 	andi	$r12,$r12,0x1
1c001280:	43fff99f 	beqz	$r12,-8(0x7ffff8) # 1c001278 <cpu_sleep+0x94>
1c001284:	2980f1ac 	st.w	$r12,$r13,60(0x3c)
1c001288:	06488000 	idle	0x0

1c00128c <wakeup_reset>:
wakeup_reset():
1c00128c:	1cc80004 	pcaddu12i	$r4,409600(0x64000)
1c001290:	28b64084 	ld.w	$r4,$r4,-624(0xd90)
1c001294:	57ff13ff 	bl	-240(0xfffff10) # 1c0011a4 <outputstring>
1c001298:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c00129c:	28bff2ac 	ld.w	$r12,$r21,-4(0xffc)
1c0012a0:	28bfe2ad 	ld.w	$r13,$r21,-8(0xff8)
1c0012a4:	28bfd2ae 	ld.w	$r14,$r21,-12(0xff4)
1c0012a8:	28bfc2af 	ld.w	$r15,$r21,-16(0xff0)
1c0012ac:	28bfb2b0 	ld.w	$r16,$r21,-20(0xfec)
1c0012b0:	28bfa2b1 	ld.w	$r17,$r21,-24(0xfe8)
1c0012b4:	28bf92b2 	ld.w	$r18,$r21,-28(0xfe4)
1c0012b8:	28bf82b3 	ld.w	$r19,$r21,-32(0xfe0)
1c0012bc:	28bf72b4 	ld.w	$r20,$r21,-36(0xfdc)
1c0012c0:	28bf62b7 	ld.w	$r23,$r21,-40(0xfd8)
1c0012c4:	28bf52b8 	ld.w	$r24,$r21,-44(0xfd4)
1c0012c8:	28bf42b9 	ld.w	$r25,$r21,-48(0xfd0)
1c0012cc:	28bf32ba 	ld.w	$r26,$r21,-52(0xfcc)
1c0012d0:	28bf22bb 	ld.w	$r27,$r21,-56(0xfc8)
1c0012d4:	28bf12bc 	ld.w	$r28,$r21,-60(0xfc4)
1c0012d8:	28bf02bd 	ld.w	$r29,$r21,-64(0xfc0)
1c0012dc:	28bef2be 	ld.w	$r30,$r21,-68(0xfbc)
1c0012e0:	28bee2bf 	ld.w	$r31,$r21,-72(0xfb8)
1c0012e4:	28bed2a4 	ld.w	$r4,$r21,-76(0xfb4)
1c0012e8:	28bec2a5 	ld.w	$r5,$r21,-80(0xfb0)
1c0012ec:	28beb2a6 	ld.w	$r6,$r21,-84(0xfac)
1c0012f0:	28bea2a7 	ld.w	$r7,$r21,-88(0xfa8)
1c0012f4:	28be92a8 	ld.w	$r8,$r21,-92(0xfa4)
1c0012f8:	28be82a9 	ld.w	$r9,$r21,-96(0xfa0)
1c0012fc:	28be72aa 	ld.w	$r10,$r21,-100(0xf9c)
1c001300:	28be62ab 	ld.w	$r11,$r21,-104(0xf98)
1c001304:	28be52a1 	ld.w	$r1,$r21,-108(0xf94)
1c001308:	28be42a3 	ld.w	$r3,$r21,-112(0xf90)
1c00130c:	28be32a2 	ld.w	$r2,$r21,-116(0xf8c)
1c001310:	28be22b6 	ld.w	$r22,$r21,-120(0xf88)
1c001314:	28be12b5 	ld.w	$r21,$r21,-124(0xf84)
1c001318:	0400c42c 	csrwr	$r12,0x31
1c00131c:	0380100c 	ori	$r12,$r0,0x4
1c001320:	0400018c 	csrxchg	$r12,$r12,0x0
1c001324:	0400c40c 	csrrd	$r12,0x31
1c001328:	4c000020 	jirl	$r0,$r1,0

1c00132c <GPIOInit>:
GPIOInit():
1c00132c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001330:	29803061 	st.w	$r1,$r3,12(0xc)
1c001334:	29802076 	st.w	$r22,$r3,8(0x8)
1c001338:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00133c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001340:	140001ec 	lu12i.w	$r12,15(0xf)
1c001344:	03bffd85 	ori	$r5,$r12,0xfff
1c001348:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00134c:	03804184 	ori	$r4,$r12,0x10
1c001350:	54017c00 	bl	380(0x17c) # 1c0014cc <AFIO_RemapConfig>
1c001354:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001358:	140001ec 	lu12i.w	$r12,15(0xf)
1c00135c:	03bffd85 	ori	$r5,$r12,0xfff
1c001360:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001364:	03805184 	ori	$r4,$r12,0x14
1c001368:	54016400 	bl	356(0x164) # 1c0014cc <AFIO_RemapConfig>
1c00136c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001370:	140001ec 	lu12i.w	$r12,15(0xf)
1c001374:	03bcfd85 	ori	$r5,$r12,0xf3f
1c001378:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00137c:	03806184 	ori	$r4,$r12,0x18
1c001380:	54014c00 	bl	332(0x14c) # 1c0014cc <AFIO_RemapConfig>
1c001384:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001388:	02830005 	addi.w	$r5,$r0,192(0xc0)
1c00138c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001390:	03806184 	ori	$r4,$r12,0x18
1c001394:	54013800 	bl	312(0x138) # 1c0014cc <AFIO_RemapConfig>
1c001398:	02800406 	addi.w	$r6,$r0,1(0x1)
1c00139c:	140001ec 	lu12i.w	$r12,15(0xf)
1c0013a0:	03bffd85 	ori	$r5,$r12,0xfff
1c0013a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0013a8:	03807184 	ori	$r4,$r12,0x1c
1c0013ac:	54012000 	bl	288(0x120) # 1c0014cc <AFIO_RemapConfig>
1c0013b0:	03400000 	andi	$r0,$r0,0x0
1c0013b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0013b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0013bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0013c0:	4c000020 	jirl	$r0,$r1,0

1c0013c4 <bsp_init>:
bsp_init():
1c0013c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0013c8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0013cc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0013d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0013d4:	541df800 	bl	7672(0x1df8) # 1c0031cc <DisableInt>
1c0013d8:	541d5800 	bl	7512(0x1d58) # 1c003130 <SystemClockInit>
1c0013dc:	57ff53ff 	bl	-176(0xfffff50) # 1c00132c <GPIOInit>
1c0013e0:	5424f800 	bl	9464(0x24f8) # 1c0038d8 <WdgInit>
1c0013e4:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0013e8:	54243800 	bl	9272(0x2438) # 1c003820 <WDG_SetWatchDog>
1c0013ec:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0013f0:	03880184 	ori	$r4,$r12,0x200
1c0013f4:	5416b800 	bl	5816(0x16b8) # 1c002aac <Uart0_init>
1c0013f8:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0013fc:	03880184 	ori	$r4,$r12,0x200
1c001400:	54177000 	bl	6000(0x1770) # 1c002b70 <Uart1_init>
1c001404:	541fbc00 	bl	8124(0x1fbc) # 1c0033c0 <ls1x_logo>
1c001408:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00140c:	0380118c 	ori	$r12,$r12,0x4
1c001410:	2880018e 	ld.w	$r14,$r12,0
1c001414:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001418:	0380118c 	ori	$r12,$r12,0x4
1c00141c:	1404000d 	lu12i.w	$r13,8192(0x2000)
1c001420:	001535cd 	or	$r13,$r14,$r13
1c001424:	2980018d 	st.w	$r13,$r12,0
1c001428:	541dc800 	bl	7624(0x1dc8) # 1c0031f0 <EnableInt>
1c00142c:	54205c00 	bl	8284(0x205c) # 1c003488 <open_count>
1c001430:	02801804 	addi.w	$r4,$r0,6(0x6)
1c001434:	541e2400 	bl	7716(0x1e24) # 1c003258 <Wake_Set>
1c001438:	54247400 	bl	9332(0x2474) # 1c0038ac <WDG_DogFeed>
1c00143c:	541ec800 	bl	7880(0x1ec8) # 1c003304 <PMU_GetRstRrc>
1c001440:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001444:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001448:	44003180 	bnez	$r12,48(0x30) # 1c001478 <bsp_init+0xb4>
1c00144c:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c001450:	0290c084 	addi.w	$r4,$r4,1072(0x430)
1c001454:	54074c00 	bl	1868(0x74c) # 1c001ba0 <myprintf>
1c001458:	541f1800 	bl	7960(0x1f18) # 1c003370 <PMU_GetBootSpiStatus>
1c00145c:	0015008c 	move	$r12,$r4
1c001460:	40001180 	beqz	$r12,16(0x10) # 1c001470 <bsp_init+0xac>
1c001464:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c001468:	0290a084 	addi.w	$r4,$r4,1064(0x428)
1c00146c:	54073400 	bl	1844(0x734) # 1c001ba0 <myprintf>
1c001470:	54478000 	bl	18304(0x4780) # 1c005bf0 <main>
1c001474:	50004000 	b	64(0x40) # 1c0014b4 <bsp_init+0xf0>
1c001478:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00147c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001480:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c001498 <bsp_init+0xd4>
1c001484:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c001488:	02905084 	addi.w	$r4,$r4,1044(0x414)
1c00148c:	54071400 	bl	1812(0x714) # 1c001ba0 <myprintf>
1c001490:	54476000 	bl	18272(0x4760) # 1c005bf0 <main>
1c001494:	50002000 	b	32(0x20) # 1c0014b4 <bsp_init+0xf0>
1c001498:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00149c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0014a0:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0014b4 <bsp_init+0xf0>
1c0014a4:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c0014a8:	02901084 	addi.w	$r4,$r4,1028(0x404)
1c0014ac:	5406f400 	bl	1780(0x6f4) # 1c001ba0 <myprintf>
1c0014b0:	57fd37ff 	bl	-716(0xffffd34) # 1c0011e4 <cpu_sleep>
1c0014b4:	0015000c 	move	$r12,$r0
1c0014b8:	00150184 	move	$r4,$r12
1c0014bc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0014c0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0014c4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0014c8:	4c000020 	jirl	$r0,$r1,0

1c0014cc <AFIO_RemapConfig>:
AFIO_RemapConfig():
1c0014cc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0014d0:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0014d4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0014d8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0014dc:	001500ac 	move	$r12,$r5
1c0014e0:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c0014e4:	297f6acc 	st.h	$r12,$r22,-38(0xfda)
1c0014e8:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0014ec:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0014f0:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0014f4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0014f8:	2880018c 	ld.w	$r12,$r12,0
1c0014fc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001500:	293faec0 	st.b	$r0,$r22,-21(0xfeb)
1c001504:	50006c00 	b	108(0x6c) # 1c001570 <AFIO_RemapConfig+0xa4>
1c001508:	2a7f6acd 	ld.hu	$r13,$r22,-38(0xfda)
1c00150c:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001510:	001831ac 	sra.w	$r12,$r13,$r12
1c001514:	0340058c 	andi	$r12,$r12,0x1
1c001518:	40004d80 	beqz	$r12,76(0x4c) # 1c001564 <AFIO_RemapConfig+0x98>
1c00151c:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001520:	0040858c 	slli.w	$r12,$r12,0x1
1c001524:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001528:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c00152c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001530:	001731ac 	sll.w	$r12,$r13,$r12
1c001534:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001538:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c00153c:	0014300c 	nor	$r12,$r0,$r12
1c001540:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001544:	0014b1ac 	and	$r12,$r13,$r12
1c001548:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00154c:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c001550:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001554:	001731ac 	sll.w	$r12,$r13,$r12
1c001558:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00155c:	001531ac 	or	$r12,$r13,$r12
1c001560:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001564:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001568:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00156c:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c001570:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c001574:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c001578:	6fff918d 	bgeu	$r12,$r13,-112(0x3ff90) # 1c001508 <AFIO_RemapConfig+0x3c>
1c00157c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001580:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001584:	2980018d 	st.w	$r13,$r12,0
1c001588:	03400000 	andi	$r0,$r0,0x0
1c00158c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001590:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001594:	4c000020 	jirl	$r0,$r1,0

1c001598 <gpio_get_pin>:
gpio_get_pin():
1c001598:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00159c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0015a0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0015a4:	0015008c 	move	$r12,$r4
1c0015a8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0015ac:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0015b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0015b4:	0382018c 	ori	$r12,$r12,0x80
1c0015b8:	001031ac 	add.w	$r12,$r13,$r12
1c0015bc:	29000180 	st.b	$r0,$r12,0
1c0015c0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0015c4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0015c8:	0382018c 	ori	$r12,$r12,0x80
1c0015cc:	001031ac 	add.w	$r12,$r13,$r12
1c0015d0:	2a00018c 	ld.bu	$r12,$r12,0
1c0015d4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0015d8:	00150184 	move	$r4,$r12
1c0015dc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0015e0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0015e4:	4c000020 	jirl	$r0,$r1,0

1c0015e8 <gpio_write_pin>:
gpio_write_pin():
1c0015e8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0015ec:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0015f0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0015f4:	0015008c 	move	$r12,$r4
1c0015f8:	001500ad 	move	$r13,$r5
1c0015fc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001600:	001501ac 	move	$r12,$r13
1c001604:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c001608:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c00160c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001610:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c001634 <gpio_write_pin+0x4c>
1c001614:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001618:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00161c:	0382018c 	ori	$r12,$r12,0x80
1c001620:	001031ac 	add.w	$r12,$r13,$r12
1c001624:	0015018d 	move	$r13,$r12
1c001628:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c00162c:	290001ac 	st.b	$r12,$r13,0
1c001630:	50002000 	b	32(0x20) # 1c001650 <gpio_write_pin+0x68>
1c001634:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001638:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00163c:	0382018c 	ori	$r12,$r12,0x80
1c001640:	001031ac 	add.w	$r12,$r13,$r12
1c001644:	0015018d 	move	$r13,$r12
1c001648:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c00164c:	290001ac 	st.b	$r12,$r13,0
1c001650:	03400000 	andi	$r0,$r0,0x0
1c001654:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001658:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00165c:	4c000020 	jirl	$r0,$r1,0

1c001660 <gpio_pin_remap>:
gpio_pin_remap():
1c001660:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001664:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001668:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00166c:	0015008c 	move	$r12,$r4
1c001670:	001500ad 	move	$r13,$r5
1c001674:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c001678:	001501ac 	move	$r12,$r13
1c00167c:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c001680:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001684:	0044918c 	srli.w	$r12,$r12,0x4
1c001688:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00168c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001690:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001694:	03403d8c 	andi	$r12,$r12,0xf
1c001698:	0040858c 	slli.w	$r12,$r12,0x1
1c00169c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0016a0:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c0016a4:	0280fc0c 	addi.w	$r12,$r0,63(0x3f)
1c0016a8:	6801b58d 	bltu	$r12,$r13,436(0x1b4) # 1c00185c <gpio_pin_remap+0x1fc>
1c0016ac:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0016b0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0016b4:	580089ac 	beq	$r13,$r12,136(0x88) # 1c00173c <gpio_pin_remap+0xdc>
1c0016b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0016bc:	40002180 	beqz	$r12,32(0x20) # 1c0016dc <gpio_pin_remap+0x7c>
1c0016c0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0016c4:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0016c8:	5800d5ac 	beq	$r13,$r12,212(0xd4) # 1c00179c <gpio_pin_remap+0x13c>
1c0016cc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0016d0:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0016d4:	580129ac 	beq	$r13,$r12,296(0x128) # 1c0017fc <gpio_pin_remap+0x19c>
1c0016d8:	50018800 	b	392(0x188) # 1c001860 <gpio_pin_remap+0x200>
1c0016dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016e0:	0380418c 	ori	$r12,$r12,0x10
1c0016e4:	2880018d 	ld.w	$r13,$r12,0
1c0016e8:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c0016ec:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0016f0:	001731cc 	sll.w	$r12,$r14,$r12
1c0016f4:	0014300c 	nor	$r12,$r0,$r12
1c0016f8:	0015018e 	move	$r14,$r12
1c0016fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001700:	0380418c 	ori	$r12,$r12,0x10
1c001704:	0014b9ad 	and	$r13,$r13,$r14
1c001708:	2980018d 	st.w	$r13,$r12,0
1c00170c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001710:	0380418c 	ori	$r12,$r12,0x10
1c001714:	2880018d 	ld.w	$r13,$r12,0
1c001718:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c00171c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001720:	001731cc 	sll.w	$r12,$r14,$r12
1c001724:	0015018e 	move	$r14,$r12
1c001728:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00172c:	0380418c 	ori	$r12,$r12,0x10
1c001730:	001539ad 	or	$r13,$r13,$r14
1c001734:	2980018d 	st.w	$r13,$r12,0
1c001738:	50012800 	b	296(0x128) # 1c001860 <gpio_pin_remap+0x200>
1c00173c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001740:	0380518c 	ori	$r12,$r12,0x14
1c001744:	2880018d 	ld.w	$r13,$r12,0
1c001748:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c00174c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001750:	001731cc 	sll.w	$r12,$r14,$r12
1c001754:	0014300c 	nor	$r12,$r0,$r12
1c001758:	0015018e 	move	$r14,$r12
1c00175c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001760:	0380518c 	ori	$r12,$r12,0x14
1c001764:	0014b9ad 	and	$r13,$r13,$r14
1c001768:	2980018d 	st.w	$r13,$r12,0
1c00176c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001770:	0380518c 	ori	$r12,$r12,0x14
1c001774:	2880018d 	ld.w	$r13,$r12,0
1c001778:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c00177c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001780:	001731cc 	sll.w	$r12,$r14,$r12
1c001784:	0015018e 	move	$r14,$r12
1c001788:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00178c:	0380518c 	ori	$r12,$r12,0x14
1c001790:	001539ad 	or	$r13,$r13,$r14
1c001794:	2980018d 	st.w	$r13,$r12,0
1c001798:	5000c800 	b	200(0xc8) # 1c001860 <gpio_pin_remap+0x200>
1c00179c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017a0:	0380618c 	ori	$r12,$r12,0x18
1c0017a4:	2880018d 	ld.w	$r13,$r12,0
1c0017a8:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c0017ac:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0017b0:	001731cc 	sll.w	$r12,$r14,$r12
1c0017b4:	0014300c 	nor	$r12,$r0,$r12
1c0017b8:	0015018e 	move	$r14,$r12
1c0017bc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017c0:	0380618c 	ori	$r12,$r12,0x18
1c0017c4:	0014b9ad 	and	$r13,$r13,$r14
1c0017c8:	2980018d 	st.w	$r13,$r12,0
1c0017cc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017d0:	0380618c 	ori	$r12,$r12,0x18
1c0017d4:	2880018d 	ld.w	$r13,$r12,0
1c0017d8:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c0017dc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0017e0:	001731cc 	sll.w	$r12,$r14,$r12
1c0017e4:	0015018e 	move	$r14,$r12
1c0017e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017ec:	0380618c 	ori	$r12,$r12,0x18
1c0017f0:	001539ad 	or	$r13,$r13,$r14
1c0017f4:	2980018d 	st.w	$r13,$r12,0
1c0017f8:	50006800 	b	104(0x68) # 1c001860 <gpio_pin_remap+0x200>
1c0017fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001800:	0380718c 	ori	$r12,$r12,0x1c
1c001804:	2880018d 	ld.w	$r13,$r12,0
1c001808:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c00180c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001810:	001731cc 	sll.w	$r12,$r14,$r12
1c001814:	0014300c 	nor	$r12,$r0,$r12
1c001818:	0015018e 	move	$r14,$r12
1c00181c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001820:	0380718c 	ori	$r12,$r12,0x1c
1c001824:	0014b9ad 	and	$r13,$r13,$r14
1c001828:	2980018d 	st.w	$r13,$r12,0
1c00182c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001830:	0380718c 	ori	$r12,$r12,0x1c
1c001834:	2880018d 	ld.w	$r13,$r12,0
1c001838:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c00183c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001840:	001731cc 	sll.w	$r12,$r14,$r12
1c001844:	0015018e 	move	$r14,$r12
1c001848:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00184c:	0380718c 	ori	$r12,$r12,0x1c
1c001850:	001539ad 	or	$r13,$r13,$r14
1c001854:	2980018d 	st.w	$r13,$r12,0
1c001858:	50000800 	b	8(0x8) # 1c001860 <gpio_pin_remap+0x200>
1c00185c:	03400000 	andi	$r0,$r0,0x0
1c001860:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001864:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001868:	4c000020 	jirl	$r0,$r1,0

1c00186c <gpio_set_direction>:
gpio_set_direction():
1c00186c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001870:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001874:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001878:	0015008c 	move	$r12,$r4
1c00187c:	001500ad 	move	$r13,$r5
1c001880:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c001884:	001501ac 	move	$r12,$r13
1c001888:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c00188c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001890:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001894:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c001898:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c00189c:	6800658d 	bltu	$r12,$r13,100(0x64) # 1c001900 <gpio_set_direction+0x94>
1c0018a0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018a4:	0381018c 	ori	$r12,$r12,0x40
1c0018a8:	2880018d 	ld.w	$r13,$r12,0
1c0018ac:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0018b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0018b4:	001731cc 	sll.w	$r12,$r14,$r12
1c0018b8:	0014300c 	nor	$r12,$r0,$r12
1c0018bc:	0015018e 	move	$r14,$r12
1c0018c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018c4:	0381018c 	ori	$r12,$r12,0x40
1c0018c8:	0014b9ad 	and	$r13,$r13,$r14
1c0018cc:	2980018d 	st.w	$r13,$r12,0
1c0018d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018d4:	0381018c 	ori	$r12,$r12,0x40
1c0018d8:	2880018d 	ld.w	$r13,$r12,0
1c0018dc:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c0018e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0018e4:	001731cc 	sll.w	$r12,$r14,$r12
1c0018e8:	0015018e 	move	$r14,$r12
1c0018ec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018f0:	0381018c 	ori	$r12,$r12,0x40
1c0018f4:	001539ad 	or	$r13,$r13,$r14
1c0018f8:	2980018d 	st.w	$r13,$r12,0
1c0018fc:	50008c00 	b	140(0x8c) # 1c001988 <gpio_set_direction+0x11c>
1c001900:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c001904:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c001908:	6c007d8d 	bgeu	$r12,$r13,124(0x7c) # 1c001984 <gpio_set_direction+0x118>
1c00190c:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c001910:	0281000c 	addi.w	$r12,$r0,64(0x40)
1c001914:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c001984 <gpio_set_direction+0x118>
1c001918:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00191c:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c001920:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001924:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001928:	0381418c 	ori	$r12,$r12,0x50
1c00192c:	2880018d 	ld.w	$r13,$r12,0
1c001930:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001934:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001938:	001731cc 	sll.w	$r12,$r14,$r12
1c00193c:	0014300c 	nor	$r12,$r0,$r12
1c001940:	0015018e 	move	$r14,$r12
1c001944:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001948:	0381418c 	ori	$r12,$r12,0x50
1c00194c:	0014b9ad 	and	$r13,$r13,$r14
1c001950:	2980018d 	st.w	$r13,$r12,0
1c001954:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001958:	0381418c 	ori	$r12,$r12,0x50
1c00195c:	2880018d 	ld.w	$r13,$r12,0
1c001960:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001964:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001968:	001731cc 	sll.w	$r12,$r14,$r12
1c00196c:	0015018e 	move	$r14,$r12
1c001970:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001974:	0381418c 	ori	$r12,$r12,0x50
1c001978:	001539ad 	or	$r13,$r13,$r14
1c00197c:	2980018d 	st.w	$r13,$r12,0
1c001980:	50000800 	b	8(0x8) # 1c001988 <gpio_set_direction+0x11c>
1c001984:	03400000 	andi	$r0,$r0,0x0
1c001988:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00198c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001990:	4c000020 	jirl	$r0,$r1,0

1c001994 <myputchar>:
myputchar():
1c001994:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001998:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00199c:	29806076 	st.w	$r22,$r3,24(0x18)
1c0019a0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0019a4:	0015008c 	move	$r12,$r4
1c0019a8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0019ac:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0019b0:	00150185 	move	$r5,$r12
1c0019b4:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c0019b8:	540fe400 	bl	4068(0xfe4) # 1c00299c <UART_SendData>
1c0019bc:	03400000 	andi	$r0,$r0,0x0
1c0019c0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0019c4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0019c8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0019cc:	4c000020 	jirl	$r0,$r1,0

1c0019d0 <printbase>:
printbase():
1c0019d0:	02be4063 	addi.w	$r3,$r3,-112(0xf90)
1c0019d4:	2981b061 	st.w	$r1,$r3,108(0x6c)
1c0019d8:	2981a076 	st.w	$r22,$r3,104(0x68)
1c0019dc:	0281c076 	addi.w	$r22,$r3,112(0x70)
1c0019e0:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c0019e4:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c0019e8:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c0019ec:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c0019f0:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c0019f4:	40002580 	beqz	$r12,36(0x24) # 1c001a18 <printbase+0x48>
1c0019f8:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c0019fc:	64001d80 	bge	$r12,$r0,28(0x1c) # 1c001a18 <printbase+0x48>
1c001a00:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001a04:	0011300c 	sub.w	$r12,$r0,$r12
1c001a08:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a0c:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c001a10:	57ff87ff 	bl	-124(0xfffff84) # 1c001994 <myputchar>
1c001a14:	50000c00 	b	12(0xc) # 1c001a20 <printbase+0x50>
1c001a18:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001a1c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a20:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001a24:	50005000 	b	80(0x50) # 1c001a74 <printbase+0xa4>
1c001a28:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c001a2c:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001a30:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c001a34:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001a3c <printbase+0x6c>
1c001a38:	002a0007 	break	0x7
1c001a3c:	00005dcc 	ext.w.b	$r12,$r14
1c001a40:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001a44:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c001a48:	001035cd 	add.w	$r13,$r14,$r13
1c001a4c:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c001a50:	28be52cd 	ld.w	$r13,$r22,-108(0xf94)
1c001a54:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c001a58:	002135cc 	div.wu	$r12,$r14,$r13
1c001a5c:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001a64 <printbase+0x94>
1c001a60:	002a0007 	break	0x7
1c001a64:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001a6c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001a70:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001a74:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001a78:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c001a28 <printbase+0x58>
1c001a7c:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c001a80:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001a84:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c001a88:	001231ad 	slt	$r13,$r13,$r12
1c001a8c:	0013b5ce 	masknez	$r14,$r14,$r13
1c001a90:	0013358c 	maskeqz	$r12,$r12,$r13
1c001a94:	001531cc 	or	$r12,$r14,$r12
1c001a98:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001a9c:	50007400 	b	116(0x74) # 1c001b10 <printbase+0x140>
1c001aa0:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c001aa4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001aa8:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c001ac4 <printbase+0xf4>
1c001aac:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001ab0:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001ab4:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c001ab8:	001031ac 	add.w	$r12,$r13,$r12
1c001abc:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c001ac0:	50000800 	b	8(0x8) # 1c001ac8 <printbase+0xf8>
1c001ac4:	0015000c 	move	$r12,$r0
1c001ac8:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001acc:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c001ad0:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c001ad4:	6000198d 	blt	$r12,$r13,24(0x18) # 1c001aec <printbase+0x11c>
1c001ad8:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001adc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001ae0:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c001ae4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001ae8:	50001400 	b	20(0x14) # 1c001afc <printbase+0x12c>
1c001aec:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001af0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001af4:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c001af8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001afc:	00150184 	move	$r4,$r12
1c001b00:	57fe97ff 	bl	-364(0xffffe94) # 1c001994 <myputchar>
1c001b04:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b08:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001b0c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001b10:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b14:	63ff8c0c 	blt	$r0,$r12,-116(0x3ff8c) # 1c001aa0 <printbase+0xd0>
1c001b18:	0015000c 	move	$r12,$r0
1c001b1c:	00150184 	move	$r4,$r12
1c001b20:	2881b061 	ld.w	$r1,$r3,108(0x6c)
1c001b24:	2881a076 	ld.w	$r22,$r3,104(0x68)
1c001b28:	0281c063 	addi.w	$r3,$r3,112(0x70)
1c001b2c:	4c000020 	jirl	$r0,$r1,0

1c001b30 <puts>:
puts():
1c001b30:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001b34:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001b38:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001b3c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001b40:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001b44:	50003000 	b	48(0x30) # 1c001b74 <puts+0x44>
1c001b48:	283fbecd 	ld.b	$r13,$r22,-17(0xfef)
1c001b4c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001b50:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001b5c <puts+0x2c>
1c001b54:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001b58:	57fe3fff 	bl	-452(0xffffe3c) # 1c001994 <myputchar>
1c001b5c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001b60:	00150184 	move	$r4,$r12
1c001b64:	57fe33ff 	bl	-464(0xffffe30) # 1c001994 <myputchar>
1c001b68:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001b6c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001b70:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001b74:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001b78:	2a00018c 	ld.bu	$r12,$r12,0
1c001b7c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001b80:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c001b84:	47ffc59f 	bnez	$r12,-60(0x7fffc4) # 1c001b48 <puts+0x18>
1c001b88:	0015000c 	move	$r12,$r0
1c001b8c:	00150184 	move	$r4,$r12
1c001b90:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001b94:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001b98:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001b9c:	4c000020 	jirl	$r0,$r1,0

1c001ba0 <myprintf>:
myprintf():
1c001ba0:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c001ba4:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c001ba8:	2980e076 	st.w	$r22,$r3,56(0x38)
1c001bac:	02810076 	addi.w	$r22,$r3,64(0x40)
1c001bb0:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c001bb4:	298012c5 	st.w	$r5,$r22,4(0x4)
1c001bb8:	298022c6 	st.w	$r6,$r22,8(0x8)
1c001bbc:	298032c7 	st.w	$r7,$r22,12(0xc)
1c001bc0:	298042c8 	st.w	$r8,$r22,16(0x10)
1c001bc4:	298052c9 	st.w	$r9,$r22,20(0x14)
1c001bc8:	298062ca 	st.w	$r10,$r22,24(0x18)
1c001bcc:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c001bd0:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c001bd4:	02bf918c 	addi.w	$r12,$r12,-28(0xfe4)
1c001bd8:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001bdc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001be0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001be4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001be8:	50033000 	b	816(0x330) # 1c001f18 <myprintf+0x378>
1c001bec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001bf0:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001bf4:	001031ac 	add.w	$r12,$r13,$r12
1c001bf8:	2a00018c 	ld.bu	$r12,$r12,0
1c001bfc:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c001c00:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001c04:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c001c08:	5c02e5ac 	bne	$r13,$r12,740(0x2e4) # 1c001eec <myprintf+0x34c>
1c001c0c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001c10:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001c14:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c18:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c1c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001c20:	001031ac 	add.w	$r12,$r13,$r12
1c001c24:	2800018c 	ld.b	$r12,$r12,0
1c001c28:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c001c2c:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c001c30:	6802adac 	bltu	$r13,$r12,684(0x2ac) # 1c001edc <myprintf+0x33c>
1c001c34:	0040898d 	slli.w	$r13,$r12,0x2
1c001c38:	1c0000ac 	pcaddu12i	$r12,5(0x5)
1c001c3c:	02b1f18c 	addi.w	$r12,$r12,-900(0xc7c)
1c001c40:	001031ac 	add.w	$r12,$r13,$r12
1c001c44:	2880018c 	ld.w	$r12,$r12,0
1c001c48:	4c000180 	jirl	$r0,$r12,0
1c001c4c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c50:	2880018c 	ld.w	$r12,$r12,0
1c001c54:	00150184 	move	$r4,$r12
1c001c58:	57fedbff 	bl	-296(0xffffed8) # 1c001b30 <puts>
1c001c5c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c60:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001c64:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001c68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c6c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c70:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001c74:	50029800 	b	664(0x298) # 1c001f0c <myprintf+0x36c>
1c001c78:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c7c:	2880018c 	ld.w	$r12,$r12,0
1c001c80:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001c84:	00150184 	move	$r4,$r12
1c001c88:	57fd0fff 	bl	-756(0xffffd0c) # 1c001994 <myputchar>
1c001c8c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c90:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001c94:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001c98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c9c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ca0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001ca4:	50026800 	b	616(0x268) # 1c001f0c <myprintf+0x36c>
1c001ca8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001cac:	2880018c 	ld.w	$r12,$r12,0
1c001cb0:	00150007 	move	$r7,$r0
1c001cb4:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001cb8:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001cbc:	00150184 	move	$r4,$r12
1c001cc0:	57fd13ff 	bl	-752(0xffffd10) # 1c0019d0 <printbase>
1c001cc4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001cc8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001ccc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001cd0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001cd4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001cd8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001cdc:	50023000 	b	560(0x230) # 1c001f0c <myprintf+0x36c>
1c001ce0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001ce4:	2880018c 	ld.w	$r12,$r12,0
1c001ce8:	02800407 	addi.w	$r7,$r0,1(0x1)
1c001cec:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001cf0:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001cf4:	00150184 	move	$r4,$r12
1c001cf8:	57fcdbff 	bl	-808(0xffffcd8) # 1c0019d0 <printbase>
1c001cfc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d00:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001d04:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001d08:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d0c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d10:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d14:	5001f800 	b	504(0x1f8) # 1c001f0c <myprintf+0x36c>
1c001d18:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d1c:	2880018c 	ld.w	$r12,$r12,0
1c001d20:	00150007 	move	$r7,$r0
1c001d24:	02802006 	addi.w	$r6,$r0,8(0x8)
1c001d28:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001d2c:	00150184 	move	$r4,$r12
1c001d30:	57fca3ff 	bl	-864(0xffffca0) # 1c0019d0 <printbase>
1c001d34:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d38:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001d3c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001d40:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d44:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d48:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d4c:	5001c000 	b	448(0x1c0) # 1c001f0c <myprintf+0x36c>
1c001d50:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d54:	2880018c 	ld.w	$r12,$r12,0
1c001d58:	00150007 	move	$r7,$r0
1c001d5c:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001d60:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001d64:	00150184 	move	$r4,$r12
1c001d68:	57fc6bff 	bl	-920(0xffffc68) # 1c0019d0 <printbase>
1c001d6c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d70:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001d74:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001d78:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d7c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d80:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d84:	50018800 	b	392(0x188) # 1c001f0c <myprintf+0x36c>
1c001d88:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d8c:	2880018c 	ld.w	$r12,$r12,0
1c001d90:	00150007 	move	$r7,$r0
1c001d94:	02804006 	addi.w	$r6,$r0,16(0x10)
1c001d98:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001d9c:	00150184 	move	$r4,$r12
1c001da0:	57fc33ff 	bl	-976(0xffffc30) # 1c0019d0 <printbase>
1c001da4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001da8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001dac:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001db0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001db4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001db8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001dbc:	50015000 	b	336(0x150) # 1c001f0c <myprintf+0x36c>
1c001dc0:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001dc4:	57fbd3ff 	bl	-1072(0xffffbd0) # 1c001994 <myputchar>
1c001dc8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001dcc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001dd0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001dd4:	50013800 	b	312(0x138) # 1c001f0c <myprintf+0x36c>
1c001dd8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ddc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001de0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001de4:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001de8:	50003c00 	b	60(0x3c) # 1c001e24 <myprintf+0x284>
1c001dec:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001df0:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001df4:	001c31ad 	mul.w	$r13,$r13,$r12
1c001df8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001dfc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e00:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001e04:	001031cc 	add.w	$r12,$r14,$r12
1c001e08:	2800018c 	ld.b	$r12,$r12,0
1c001e0c:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001e10:	001031ac 	add.w	$r12,$r13,$r12
1c001e14:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001e18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e1c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e20:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e28:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e2c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001e30:	001031ac 	add.w	$r12,$r13,$r12
1c001e34:	2800018d 	ld.b	$r13,$r12,0
1c001e38:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001e3c:	67fdd98d 	bge	$r12,$r13,-552(0x3fdd8) # 1c001c14 <myprintf+0x74>
1c001e40:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e44:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e48:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001e4c:	001031ac 	add.w	$r12,$r13,$r12
1c001e50:	2800018d 	ld.b	$r13,$r12,0
1c001e54:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001e58:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001dec <myprintf+0x24c>
1c001e5c:	53fdbbff 	b	-584(0xffffdb8) # 1c001c14 <myprintf+0x74>
1c001e60:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001e64:	50003c00 	b	60(0x3c) # 1c001ea0 <myprintf+0x300>
1c001e68:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001e6c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001e70:	001c31ad 	mul.w	$r13,$r13,$r12
1c001e74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e78:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e7c:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001e80:	001031cc 	add.w	$r12,$r14,$r12
1c001e84:	2800018c 	ld.b	$r12,$r12,0
1c001e88:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001e8c:	001031ac 	add.w	$r12,$r13,$r12
1c001e90:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001e94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e98:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e9c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001ea0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ea4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ea8:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001eac:	001031ac 	add.w	$r12,$r13,$r12
1c001eb0:	2800018d 	ld.b	$r13,$r12,0
1c001eb4:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001eb8:	67fd5d8d 	bge	$r12,$r13,-676(0x3fd5c) # 1c001c14 <myprintf+0x74>
1c001ebc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ec0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ec4:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001ec8:	001031ac 	add.w	$r12,$r13,$r12
1c001ecc:	2800018d 	ld.b	$r13,$r12,0
1c001ed0:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001ed4:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001e68 <myprintf+0x2c8>
1c001ed8:	53fd3fff 	b	-708(0xffffd3c) # 1c001c14 <myprintf+0x74>
1c001edc:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001ee0:	57fab7ff 	bl	-1356(0xffffab4) # 1c001994 <myputchar>
1c001ee4:	03400000 	andi	$r0,$r0,0x0
1c001ee8:	50002400 	b	36(0x24) # 1c001f0c <myprintf+0x36c>
1c001eec:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001ef0:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001ef4:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001f00 <myprintf+0x360>
1c001ef8:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001efc:	57fa9bff 	bl	-1384(0xffffa98) # 1c001994 <myputchar>
1c001f00:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c001f04:	00150184 	move	$r4,$r12
1c001f08:	57fa8fff 	bl	-1396(0xffffa8c) # 1c001994 <myputchar>
1c001f0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f10:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f14:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f1c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001f20:	001031ac 	add.w	$r12,$r13,$r12
1c001f24:	2800018c 	ld.b	$r12,$r12,0
1c001f28:	47fcc59f 	bnez	$r12,-828(0x7ffcc4) # 1c001bec <myprintf+0x4c>
1c001f2c:	0015000c 	move	$r12,$r0
1c001f30:	00150184 	move	$r4,$r12
1c001f34:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c001f38:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c001f3c:	02818063 	addi.w	$r3,$r3,96(0x60)
1c001f40:	4c000020 	jirl	$r0,$r1,0

1c001f44 <vsputs>:
vsputs():
1c001f44:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001f48:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001f4c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001f50:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001f54:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001f58:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c001f5c:	28bf62c4 	ld.w	$r4,$r22,-40(0xfd8)
1c001f60:	5417b000 	bl	6064(0x17b0) # 1c003710 <strlen>
1c001f64:	0015008c 	move	$r12,$r4
1c001f68:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f6c:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c001f70:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c001f74:	54174000 	bl	5952(0x1740) # 1c0036b4 <strcpy>
1c001f78:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c001f7c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f80:	001031ac 	add.w	$r12,$r13,$r12
1c001f84:	00150184 	move	$r4,$r12
1c001f88:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001f8c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001f90:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001f94:	4c000020 	jirl	$r0,$r1,0

1c001f98 <vsputchar>:
vsputchar():
1c001f98:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001f9c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001fa0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001fa4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001fa8:	001500ac 	move	$r12,$r5
1c001fac:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c001fb0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fb4:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c001fb8:	2900018d 	st.b	$r13,$r12,0
1c001fbc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fc0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001fc4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001fc8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fcc:	00150184 	move	$r4,$r12
1c001fd0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001fd4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001fd8:	4c000020 	jirl	$r0,$r1,0

1c001fdc <vsprintbase>:
vsprintbase():
1c001fdc:	02be0063 	addi.w	$r3,$r3,-128(0xf80)
1c001fe0:	2981f061 	st.w	$r1,$r3,124(0x7c)
1c001fe4:	2981e076 	st.w	$r22,$r3,120(0x78)
1c001fe8:	02820076 	addi.w	$r22,$r3,128(0x80)
1c001fec:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c001ff0:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c001ff4:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c001ff8:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c001ffc:	29be32c8 	st.w	$r8,$r22,-116(0xf8c)
1c002000:	28be32cc 	ld.w	$r12,$r22,-116(0xf8c)
1c002004:	40002d80 	beqz	$r12,44(0x2c) # 1c002030 <vsprintbase+0x54>
1c002008:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c00200c:	64002580 	bge	$r12,$r0,36(0x24) # 1c002030 <vsprintbase+0x54>
1c002010:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c002014:	0011300c 	sub.w	$r12,$r0,$r12
1c002018:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00201c:	0280b405 	addi.w	$r5,$r0,45(0x2d)
1c002020:	28be72c4 	ld.w	$r4,$r22,-100(0xf9c)
1c002024:	57ff77ff 	bl	-140(0xfffff74) # 1c001f98 <vsputchar>
1c002028:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c00202c:	50000c00 	b	12(0xc) # 1c002038 <vsprintbase+0x5c>
1c002030:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c002034:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002038:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00203c:	50005000 	b	80(0x50) # 1c00208c <vsprintbase+0xb0>
1c002040:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c002044:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c002048:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c00204c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002054 <vsprintbase+0x78>
1c002050:	002a0007 	break	0x7
1c002054:	00005dcc 	ext.w.b	$r12,$r14
1c002058:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00205c:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c002060:	001035cd 	add.w	$r13,$r14,$r13
1c002064:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c002068:	28be42cd 	ld.w	$r13,$r22,-112(0xf90)
1c00206c:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c002070:	002135cc 	div.wu	$r12,$r14,$r13
1c002074:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c00207c <vsprintbase+0xa0>
1c002078:	002a0007 	break	0x7
1c00207c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002080:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002084:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002088:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00208c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002090:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c002040 <vsprintbase+0x64>
1c002094:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c002098:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00209c:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c0020a0:	001231ad 	slt	$r13,$r13,$r12
1c0020a4:	0013b5ce 	masknez	$r14,$r14,$r13
1c0020a8:	0013358c 	maskeqz	$r12,$r12,$r13
1c0020ac:	001531cc 	or	$r12,$r14,$r12
1c0020b0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0020b4:	50008400 	b	132(0x84) # 1c002138 <vsprintbase+0x15c>
1c0020b8:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0020bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0020c0:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c0020dc <vsprintbase+0x100>
1c0020c4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0020c8:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0020cc:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0020d0:	001031ac 	add.w	$r12,$r13,$r12
1c0020d4:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c0020d8:	50000800 	b	8(0x8) # 1c0020e0 <vsprintbase+0x104>
1c0020dc:	0015000c 	move	$r12,$r0
1c0020e0:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0020e4:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c0020e8:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c0020ec:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c002108 <vsprintbase+0x12c>
1c0020f0:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0020f4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0020f8:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c0020fc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002100:	00005d8c 	ext.w.b	$r12,$r12
1c002104:	50001800 	b	24(0x18) # 1c00211c <vsprintbase+0x140>
1c002108:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c00210c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002110:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c002114:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002118:	00005d8c 	ext.w.b	$r12,$r12
1c00211c:	00150185 	move	$r5,$r12
1c002120:	28be72c4 	ld.w	$r4,$r22,-100(0xf9c)
1c002124:	57fe77ff 	bl	-396(0xffffe74) # 1c001f98 <vsputchar>
1c002128:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c00212c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002130:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c002134:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002138:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00213c:	63ff7c0c 	blt	$r0,$r12,-132(0x3ff7c) # 1c0020b8 <vsprintbase+0xdc>
1c002140:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c002144:	00150184 	move	$r4,$r12
1c002148:	2881f061 	ld.w	$r1,$r3,124(0x7c)
1c00214c:	2881e076 	ld.w	$r22,$r3,120(0x78)
1c002150:	02820063 	addi.w	$r3,$r3,128(0x80)
1c002154:	4c000020 	jirl	$r0,$r1,0

1c002158 <vsprintf>:
vsprintf():
1c002158:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00215c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002160:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002164:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002168:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00216c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c002170:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c002174:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002178:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00217c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002180:	50036c00 	b	876(0x36c) # 1c0024ec <vsprintf+0x394>
1c002184:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002188:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c00218c:	001031ac 	add.w	$r12,$r13,$r12
1c002190:	2a00018c 	ld.bu	$r12,$r12,0
1c002194:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c002198:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c00219c:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c0021a0:	5c0311ac 	bne	$r13,$r12,784(0x310) # 1c0024b0 <vsprintf+0x358>
1c0021a4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0021a8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0021ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0021b0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0021b4:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0021b8:	001031ac 	add.w	$r12,$r13,$r12
1c0021bc:	2800018c 	ld.b	$r12,$r12,0
1c0021c0:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c0021c4:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c0021c8:	6802d1ac 	bltu	$r13,$r12,720(0x2d0) # 1c002498 <vsprintf+0x340>
1c0021cc:	0040898d 	slli.w	$r13,$r12,0x2
1c0021d0:	1c0000ac 	pcaddu12i	$r12,5(0x5)
1c0021d4:	02a0d18c 	addi.w	$r12,$r12,-1996(0x834)
1c0021d8:	001031ac 	add.w	$r12,$r13,$r12
1c0021dc:	2880018c 	ld.w	$r12,$r12,0
1c0021e0:	4c000180 	jirl	$r0,$r12,0
1c0021e4:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0021e8:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c0021ec:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0021f0:	2880018c 	ld.w	$r12,$r12,0
1c0021f4:	00150185 	move	$r5,$r12
1c0021f8:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0021fc:	57fd4bff 	bl	-696(0xffffd48) # 1c001f44 <vsputs>
1c002200:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002204:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002208:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00220c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002210:	5002d000 	b	720(0x2d0) # 1c0024e0 <vsprintf+0x388>
1c002214:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c002218:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c00221c:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002220:	2880018c 	ld.w	$r12,$r12,0
1c002224:	00005d8c 	ext.w.b	$r12,$r12
1c002228:	00150185 	move	$r5,$r12
1c00222c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002230:	57fd6bff 	bl	-664(0xffffd68) # 1c001f98 <vsputchar>
1c002234:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002238:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00223c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002240:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002244:	50029c00 	b	668(0x29c) # 1c0024e0 <vsprintf+0x388>
1c002248:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c00224c:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c002250:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002254:	2880018c 	ld.w	$r12,$r12,0
1c002258:	00150008 	move	$r8,$r0
1c00225c:	02802807 	addi.w	$r7,$r0,10(0xa)
1c002260:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c002264:	00150185 	move	$r5,$r12
1c002268:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c00226c:	57fd73ff 	bl	-656(0xffffd70) # 1c001fdc <vsprintbase>
1c002270:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002274:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002278:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00227c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002280:	50026000 	b	608(0x260) # 1c0024e0 <vsprintf+0x388>
1c002284:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c002288:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c00228c:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002290:	2880018c 	ld.w	$r12,$r12,0
1c002294:	02800408 	addi.w	$r8,$r0,1(0x1)
1c002298:	02802807 	addi.w	$r7,$r0,10(0xa)
1c00229c:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c0022a0:	00150185 	move	$r5,$r12
1c0022a4:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0022a8:	57fd37ff 	bl	-716(0xffffd34) # 1c001fdc <vsprintbase>
1c0022ac:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0022b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022b4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022b8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0022bc:	50022400 	b	548(0x224) # 1c0024e0 <vsprintf+0x388>
1c0022c0:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0022c4:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c0022c8:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0022cc:	2880018c 	ld.w	$r12,$r12,0
1c0022d0:	00150008 	move	$r8,$r0
1c0022d4:	02802007 	addi.w	$r7,$r0,8(0x8)
1c0022d8:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c0022dc:	00150185 	move	$r5,$r12
1c0022e0:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0022e4:	57fcfbff 	bl	-776(0xffffcf8) # 1c001fdc <vsprintbase>
1c0022e8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0022ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022f0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022f4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0022f8:	5001e800 	b	488(0x1e8) # 1c0024e0 <vsprintf+0x388>
1c0022fc:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c002300:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c002304:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002308:	2880018c 	ld.w	$r12,$r12,0
1c00230c:	00150008 	move	$r8,$r0
1c002310:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002314:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c002318:	00150185 	move	$r5,$r12
1c00231c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002320:	57fcbfff 	bl	-836(0xffffcbc) # 1c001fdc <vsprintbase>
1c002324:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002328:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00232c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002330:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002334:	5001ac00 	b	428(0x1ac) # 1c0024e0 <vsprintf+0x388>
1c002338:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c00233c:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c002340:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002344:	2880018c 	ld.w	$r12,$r12,0
1c002348:	00150008 	move	$r8,$r0
1c00234c:	02804007 	addi.w	$r7,$r0,16(0x10)
1c002350:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c002354:	00150185 	move	$r5,$r12
1c002358:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c00235c:	57fc83ff 	bl	-896(0xffffc80) # 1c001fdc <vsprintbase>
1c002360:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002364:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002368:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00236c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002370:	50017000 	b	368(0x170) # 1c0024e0 <vsprintf+0x388>
1c002374:	02809405 	addi.w	$r5,$r0,37(0x25)
1c002378:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c00237c:	57fc1fff 	bl	-996(0xffffc1c) # 1c001f98 <vsputchar>
1c002380:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002384:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002388:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00238c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002390:	50015000 	b	336(0x150) # 1c0024e0 <vsprintf+0x388>
1c002394:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002398:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00239c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0023a0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0023a4:	50003c00 	b	60(0x3c) # 1c0023e0 <vsprintf+0x288>
1c0023a8:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0023ac:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0023b0:	001c31ad 	mul.w	$r13,$r13,$r12
1c0023b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023b8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023bc:	28bf62ce 	ld.w	$r14,$r22,-40(0xfd8)
1c0023c0:	001031cc 	add.w	$r12,$r14,$r12
1c0023c4:	2800018c 	ld.b	$r12,$r12,0
1c0023c8:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c0023cc:	001031ac 	add.w	$r12,$r13,$r12
1c0023d0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0023d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023d8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023dc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0023e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023e4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023e8:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0023ec:	001031ac 	add.w	$r12,$r13,$r12
1c0023f0:	2800018d 	ld.b	$r13,$r12,0
1c0023f4:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c0023f8:	67fdb58d 	bge	$r12,$r13,-588(0x3fdb4) # 1c0021ac <vsprintf+0x54>
1c0023fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002400:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002404:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c002408:	001031ac 	add.w	$r12,$r13,$r12
1c00240c:	2800018d 	ld.b	$r13,$r12,0
1c002410:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c002414:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c0023a8 <vsprintf+0x250>
1c002418:	53fd97ff 	b	-620(0xffffd94) # 1c0021ac <vsprintf+0x54>
1c00241c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002420:	50003c00 	b	60(0x3c) # 1c00245c <vsprintf+0x304>
1c002424:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c002428:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c00242c:	001c31ad 	mul.w	$r13,$r13,$r12
1c002430:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002434:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002438:	28bf62ce 	ld.w	$r14,$r22,-40(0xfd8)
1c00243c:	001031cc 	add.w	$r12,$r14,$r12
1c002440:	2800018c 	ld.b	$r12,$r12,0
1c002444:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c002448:	001031ac 	add.w	$r12,$r13,$r12
1c00244c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002450:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002454:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002458:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00245c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002460:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002464:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c002468:	001031ac 	add.w	$r12,$r13,$r12
1c00246c:	2800018d 	ld.b	$r13,$r12,0
1c002470:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c002474:	67fd398d 	bge	$r12,$r13,-712(0x3fd38) # 1c0021ac <vsprintf+0x54>
1c002478:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00247c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002480:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c002484:	001031ac 	add.w	$r12,$r13,$r12
1c002488:	2800018d 	ld.b	$r13,$r12,0
1c00248c:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c002490:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c002424 <vsprintf+0x2cc>
1c002494:	53fd1bff 	b	-744(0xffffd18) # 1c0021ac <vsprintf+0x54>
1c002498:	02809405 	addi.w	$r5,$r0,37(0x25)
1c00249c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0024a0:	57fafbff 	bl	-1288(0xffffaf8) # 1c001f98 <vsputchar>
1c0024a4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0024a8:	03400000 	andi	$r0,$r0,0x0
1c0024ac:	50003400 	b	52(0x34) # 1c0024e0 <vsprintf+0x388>
1c0024b0:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c0024b4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0024b8:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0024cc <vsprintf+0x374>
1c0024bc:	02803405 	addi.w	$r5,$r0,13(0xd)
1c0024c0:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0024c4:	57fad7ff 	bl	-1324(0xffffad4) # 1c001f98 <vsputchar>
1c0024c8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0024cc:	283f8ecc 	ld.b	$r12,$r22,-29(0xfe3)
1c0024d0:	00150185 	move	$r5,$r12
1c0024d4:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0024d8:	57fac3ff 	bl	-1344(0xffffac0) # 1c001f98 <vsputchar>
1c0024dc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0024e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0024e4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0024e8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0024ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0024f0:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0024f4:	001031ac 	add.w	$r12,$r13,$r12
1c0024f8:	2800018c 	ld.b	$r12,$r12,0
1c0024fc:	47fc899f 	bnez	$r12,-888(0x7ffc88) # 1c002184 <vsprintf+0x2c>
1c002500:	00150005 	move	$r5,$r0
1c002504:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002508:	57fa93ff 	bl	-1392(0xffffa90) # 1c001f98 <vsputchar>
1c00250c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002510:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002514:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002518:	001131ac 	sub.w	$r12,$r13,$r12
1c00251c:	00150184 	move	$r4,$r12
1c002520:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002524:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002528:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00252c:	4c000020 	jirl	$r0,$r1,0

1c002530 <sprintf>:
sprintf():
1c002530:	02bec063 	addi.w	$r3,$r3,-80(0xfb0)
1c002534:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002538:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00253c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002540:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002544:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c002548:	298022c6 	st.w	$r6,$r22,8(0x8)
1c00254c:	298032c7 	st.w	$r7,$r22,12(0xc)
1c002550:	298042c8 	st.w	$r8,$r22,16(0x10)
1c002554:	298052c9 	st.w	$r9,$r22,20(0x14)
1c002558:	298062ca 	st.w	$r10,$r22,24(0x18)
1c00255c:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c002560:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c002564:	02bfa18c 	addi.w	$r12,$r12,-24(0xfe8)
1c002568:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00256c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002570:	00150186 	move	$r6,$r12
1c002574:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c002578:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c00257c:	57fbdfff 	bl	-1060(0xffffbdc) # 1c002158 <vsprintf>
1c002580:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002584:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002588:	00150184 	move	$r4,$r12
1c00258c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002590:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002594:	02814063 	addi.w	$r3,$r3,80(0x50)
1c002598:	4c000020 	jirl	$r0,$r1,0

1c00259c <UART_Init>:
UART_Init():
1c00259c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0025a0:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0025a4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0025a8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0025ac:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0025b0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0025b4:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0025b8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0025bc:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c0025c0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0025c4:	03403d8c 	andi	$r12,$r12,0xf
1c0025c8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0025cc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0025d0:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c0025d4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0025d8:	0044918c 	srli.w	$r12,$r12,0x4
1c0025dc:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c0025e0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0025e4:	40000d80 	beqz	$r12,12(0xc) # 1c0025f0 <UART_Init+0x54>
1c0025e8:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c0025ec:	44001980 	bnez	$r12,24(0x18) # 1c002604 <UART_Init+0x68>
1c0025f0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0025f4:	0280e00d 	addi.w	$r13,$r0,56(0x38)
1c0025f8:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0025fc:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c002600:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002604:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002608:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c00260c:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c002624 <UART_Init+0x88>
1c002610:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002614:	02808c0d 	addi.w	$r13,$r0,35(0x23)
1c002618:	2900118d 	st.b	$r13,$r12,4(0x4)
1c00261c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c002620:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002624:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002628:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c00262c:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002630:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002634:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c002638:	580011ac 	beq	$r13,$r12,16(0x10) # 1c002648 <UART_Init+0xac>
1c00263c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002640:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c002644:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c0026a4 <UART_Init+0x108>
1c002648:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00264c:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002650:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002654:	2880018c 	ld.w	$r12,$r12,0
1c002658:	002131ae 	div.wu	$r14,$r13,$r12
1c00265c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002664 <UART_Init+0xc8>
1c002660:	002a0007 	break	0x7
1c002664:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c002668:	002135cc 	div.wu	$r12,$r14,$r13
1c00266c:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002674 <UART_Init+0xd8>
1c002670:	002a0007 	break	0x7
1c002674:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002678:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00267c:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002680:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002684:	2880018e 	ld.w	$r14,$r12,0
1c002688:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00268c:	001c31ce 	mul.w	$r14,$r14,$r12
1c002690:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002694:	001c31cc 	mul.w	$r12,$r14,$r12
1c002698:	001131ac 	sub.w	$r12,$r13,$r12
1c00269c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0026a0:	50005400 	b	84(0x54) # 1c0026f4 <UART_Init+0x158>
1c0026a4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0026a8:	2880018c 	ld.w	$r12,$r12,0
1c0026ac:	1400010d 	lu12i.w	$r13,8(0x8)
1c0026b0:	002131ae 	div.wu	$r14,$r13,$r12
1c0026b4:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0026bc <UART_Init+0x120>
1c0026b8:	002a0007 	break	0x7
1c0026bc:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0026c0:	002135cc 	div.wu	$r12,$r14,$r13
1c0026c4:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0026cc <UART_Init+0x130>
1c0026c8:	002a0007 	break	0x7
1c0026cc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0026d0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0026d4:	2880018d 	ld.w	$r13,$r12,0
1c0026d8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0026dc:	001c31ad 	mul.w	$r13,$r13,$r12
1c0026e0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0026e4:	001c31ac 	mul.w	$r12,$r13,$r12
1c0026e8:	1400010d 	lu12i.w	$r13,8(0x8)
1c0026ec:	001131ac 	sub.w	$r12,$r13,$r12
1c0026f0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0026f4:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c0026f8:	0283fc0c 	addi.w	$r12,$r0,255(0xff)
1c0026fc:	001c31ad 	mul.w	$r13,$r13,$r12
1c002700:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002704:	2880018c 	ld.w	$r12,$r12,0
1c002708:	002131ae 	div.wu	$r14,$r13,$r12
1c00270c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002714 <UART_Init+0x178>
1c002710:	002a0007 	break	0x7
1c002714:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c002718:	002135cc 	div.wu	$r12,$r14,$r13
1c00271c:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002724 <UART_Init+0x188>
1c002720:	002a0007 	break	0x7
1c002724:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002728:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00272c:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002730:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002734:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c002738:	001531ac 	or	$r12,$r13,$r12
1c00273c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002740:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002744:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002748:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00274c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002750:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002754:	2900018d 	st.b	$r13,$r12,0
1c002758:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00275c:	0044a18c 	srli.w	$r12,$r12,0x8
1c002760:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002764:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002768:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00276c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002770:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002774:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002778:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00277c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002780:	2900098d 	st.b	$r13,$r12,2(0x2)
1c002784:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002788:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c00278c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002790:	0341fd8c 	andi	$r12,$r12,0x7f
1c002794:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002798:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00279c:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0027a0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027a4:	29000580 	st.b	$r0,$r12,1(0x1)
1c0027a8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027ac:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0027b0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027b4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0027b8:	2a00298c 	ld.bu	$r12,$r12,10(0xa)
1c0027bc:	001531ac 	or	$r12,$r13,$r12
1c0027c0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027c4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027c8:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0027cc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027d0:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0027d4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027d8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0027dc:	2a00358c 	ld.bu	$r12,$r12,13(0xd)
1c0027e0:	001531ac 	or	$r12,$r13,$r12
1c0027e4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027e8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027ec:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0027f0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027f4:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0027f8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027fc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002800:	2a00398c 	ld.bu	$r12,$r12,14(0xe)
1c002804:	001531ac 	or	$r12,$r13,$r12
1c002808:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00280c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002810:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002814:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002818:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c00281c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002820:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002824:	2a002d8c 	ld.bu	$r12,$r12,11(0xb)
1c002828:	001531ac 	or	$r12,$r13,$r12
1c00282c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002830:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002834:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002838:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00283c:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002840:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002844:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002848:	2a003d8c 	ld.bu	$r12,$r12,15(0xf)
1c00284c:	001531ac 	or	$r12,$r13,$r12
1c002850:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002854:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002858:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c00285c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002860:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002864:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002868:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00286c:	2a00318c 	ld.bu	$r12,$r12,12(0xc)
1c002870:	001531ac 	or	$r12,$r13,$r12
1c002874:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002878:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00287c:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002880:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002884:	2a00018c 	ld.bu	$r12,$r12,0
1c002888:	03400000 	andi	$r0,$r0,0x0
1c00288c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002890:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002894:	4c000020 	jirl	$r0,$r1,0

1c002898 <UART_StructInit>:
UART_StructInit():
1c002898:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00289c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0028a0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0028a4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0028a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028ac:	1400038d 	lu12i.w	$r13,28(0x1c)
1c0028b0:	038801ad 	ori	$r13,$r13,0x200
1c0028b4:	2980018d 	st.w	$r13,$r12,0
1c0028b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028bc:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c0028c0:	038801ad 	ori	$r13,$r13,0x200
1c0028c4:	2980118d 	st.w	$r13,$r12,4(0x4)
1c0028c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028cc:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c0028d0:	2900298d 	st.b	$r13,$r12,10(0xa)
1c0028d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028d8:	29002d80 	st.b	$r0,$r12,11(0xb)
1c0028dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028e0:	29003580 	st.b	$r0,$r12,13(0xd)
1c0028e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028e8:	29003180 	st.b	$r0,$r12,12(0xc)
1c0028ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028f0:	29003d80 	st.b	$r0,$r12,15(0xf)
1c0028f4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028f8:	29003980 	st.b	$r0,$r12,14(0xe)
1c0028fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002900:	29402180 	st.h	$r0,$r12,8(0x8)
1c002904:	03400000 	andi	$r0,$r0,0x0
1c002908:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00290c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002910:	4c000020 	jirl	$r0,$r1,0

1c002914 <UART_ITConfig>:
UART_ITConfig():
1c002914:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002918:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00291c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002920:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002924:	001500ac 	move	$r12,$r5
1c002928:	29bf92c6 	st.w	$r6,$r22,-28(0xfe4)
1c00292c:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c002930:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002934:	40002980 	beqz	$r12,40(0x28) # 1c00295c <UART_ITConfig+0x48>
1c002938:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00293c:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c002940:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002944:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c002948:	001531ac 	or	$r12,$r13,$r12
1c00294c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002950:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002954:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002958:	50003400 	b	52(0x34) # 1c00298c <UART_ITConfig+0x78>
1c00295c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002960:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c002964:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002968:	00005d8d 	ext.w.b	$r13,$r12
1c00296c:	283faecc 	ld.b	$r12,$r22,-21(0xfeb)
1c002970:	0014300c 	nor	$r12,$r0,$r12
1c002974:	00005d8c 	ext.w.b	$r12,$r12
1c002978:	0014b1ac 	and	$r12,$r13,$r12
1c00297c:	00005d8c 	ext.w.b	$r12,$r12
1c002980:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002984:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002988:	2900058d 	st.b	$r13,$r12,1(0x1)
1c00298c:	03400000 	andi	$r0,$r0,0x0
1c002990:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002994:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002998:	4c000020 	jirl	$r0,$r1,0

1c00299c <UART_SendData>:
UART_SendData():
1c00299c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0029a0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0029a4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0029a8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0029ac:	001500ac 	move	$r12,$r5
1c0029b0:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0029b4:	03400000 	andi	$r0,$r0,0x0
1c0029b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0029bc:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c0029c0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0029c4:	0340818c 	andi	$r12,$r12,0x20
1c0029c8:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c0029b8 <UART_SendData+0x1c>
1c0029cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0029d0:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c0029d4:	2900018d 	st.b	$r13,$r12,0
1c0029d8:	03400000 	andi	$r0,$r0,0x0
1c0029dc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0029e0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0029e4:	4c000020 	jirl	$r0,$r1,0

1c0029e8 <UART_SendDataALL>:
UART_SendDataALL():
1c0029e8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0029ec:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0029f0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0029f4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0029f8:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c0029fc:	001500cc 	move	$r12,$r6
1c002a00:	297f9acc 	st.h	$r12,$r22,-26(0xfe6)
1c002a04:	50004400 	b	68(0x44) # 1c002a48 <UART_SendDataALL+0x60>
1c002a08:	03400000 	andi	$r0,$r0,0x0
1c002a0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002a10:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c002a14:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002a18:	0340818c 	andi	$r12,$r12,0x20
1c002a1c:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c002a0c <UART_SendDataALL+0x24>
1c002a20:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002a24:	2a00018d 	ld.bu	$r13,$r12,0
1c002a28:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002a2c:	2900018d 	st.b	$r13,$r12,0
1c002a30:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002a34:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002a38:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002a3c:	2a7f9acc 	ld.hu	$r12,$r22,-26(0xfe6)
1c002a40:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c002a44:	297f9acc 	st.h	$r12,$r22,-26(0xfe6)
1c002a48:	2a7f9acc 	ld.hu	$r12,$r22,-26(0xfe6)
1c002a4c:	47ffbd9f 	bnez	$r12,-68(0x7fffbc) # 1c002a08 <UART_SendDataALL+0x20>
1c002a50:	03400000 	andi	$r0,$r0,0x0
1c002a54:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002a58:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002a5c:	4c000020 	jirl	$r0,$r1,0

1c002a60 <UART_ReceiveData>:
UART_ReceiveData():
1c002a60:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002a64:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002a68:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002a6c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002a70:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c002a74:	03400000 	andi	$r0,$r0,0x0
1c002a78:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002a7c:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c002a80:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002a84:	0340058c 	andi	$r12,$r12,0x1
1c002a88:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c002a78 <UART_ReceiveData+0x18>
1c002a8c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002a90:	2a00018c 	ld.bu	$r12,$r12,0
1c002a94:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002a98:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002a9c:	00150184 	move	$r4,$r12
1c002aa0:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002aa4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002aa8:	4c000020 	jirl	$r0,$r1,0

1c002aac <Uart0_init>:
Uart0_init():
1c002aac:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002ab0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002ab4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002ab8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002abc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002ac0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002ac4:	02801804 	addi.w	$r4,$r0,6(0x6)
1c002ac8:	57eb9bff 	bl	-5224(0xfffeb98) # 1c001660 <gpio_pin_remap>
1c002acc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002ad0:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c002ad4:	57eb8fff 	bl	-5236(0xfffeb8c) # 1c001660 <gpio_pin_remap>
1c002ad8:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002adc:	00150184 	move	$r4,$r12
1c002ae0:	57fdbbff 	bl	-584(0xffffdb8) # 1c002898 <UART_StructInit>
1c002ae4:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002ae8:	2894a18c 	ld.w	$r12,$r12,1320(0x528)
1c002aec:	2880018c 	ld.w	$r12,$r12,0
1c002af0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002af4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002af8:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002afc:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002b00:	00150185 	move	$r5,$r12
1c002b04:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002b08:	57fa97ff 	bl	-1388(0xffffa94) # 1c00259c <UART_Init>
1c002b0c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002b10:	0380098c 	ori	$r12,$r12,0x2
1c002b14:	2a00018c 	ld.bu	$r12,$r12,0
1c002b18:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002b1c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002b20:	0380098c 	ori	$r12,$r12,0x2
1c002b24:	038021ad 	ori	$r13,$r13,0x8
1c002b28:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002b2c:	2900018d 	st.b	$r13,$r12,0
1c002b30:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002b34:	2a00018c 	ld.bu	$r12,$r12,0
1c002b38:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002b3c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002b40:	038021ad 	ori	$r13,$r13,0x8
1c002b44:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002b48:	2900018d 	st.b	$r13,$r12,0
1c002b4c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c002b50:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002b54:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002b58:	57fdbfff 	bl	-580(0xffffdbc) # 1c002914 <UART_ITConfig>
1c002b5c:	03400000 	andi	$r0,$r0,0x0
1c002b60:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002b64:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002b68:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002b6c:	4c000020 	jirl	$r0,$r1,0

1c002b70 <Uart1_init>:
Uart1_init():
1c002b70:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002b74:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002b78:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002b7c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002b80:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002b84:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002b88:	02802004 	addi.w	$r4,$r0,8(0x8)
1c002b8c:	57ead7ff 	bl	-5420(0xfffead4) # 1c001660 <gpio_pin_remap>
1c002b90:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002b94:	02802404 	addi.w	$r4,$r0,9(0x9)
1c002b98:	57eacbff 	bl	-5432(0xfffeac8) # 1c001660 <gpio_pin_remap>
1c002b9c:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002ba0:	00150184 	move	$r4,$r12
1c002ba4:	57fcf7ff 	bl	-780(0xffffcf4) # 1c002898 <UART_StructInit>
1c002ba8:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002bac:	2891918c 	ld.w	$r12,$r12,1124(0x464)
1c002bb0:	2880018c 	ld.w	$r12,$r12,0
1c002bb4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002bb8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002bbc:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002bc0:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002bc4:	00150185 	move	$r5,$r12
1c002bc8:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002bcc:	57f9d3ff 	bl	-1584(0xffff9d0) # 1c00259c <UART_Init>
1c002bd0:	00150006 	move	$r6,$r0
1c002bd4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002bd8:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002bdc:	57fd3bff 	bl	-712(0xffffd38) # 1c002914 <UART_ITConfig>
1c002be0:	03400000 	andi	$r0,$r0,0x0
1c002be4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002be8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002bec:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002bf0:	4c000020 	jirl	$r0,$r1,0

1c002bf4 <CLOCK_WaitForHSEStartUp>:
CLOCK_WaitForHSEStartUp():
1c002bf4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002bf8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002bfc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002c00:	1400006c 	lu12i.w	$r12,3(0x3)
1c002c04:	03ba018c 	ori	$r12,$r12,0xe80
1c002c08:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002c0c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002c10:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c14:	2880018d 	ld.w	$r13,$r12,0
1c002c18:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c1c:	038101ad 	ori	$r13,$r13,0x40
1c002c20:	2980018d 	st.w	$r13,$r12,0
1c002c24:	03400000 	andi	$r0,$r0,0x0
1c002c28:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002c2c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002c30:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002c34:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1c002c28 <CLOCK_WaitForHSEStartUp+0x34>
1c002c38:	50001c00 	b	28(0x1c) # 1c002c54 <CLOCK_WaitForHSEStartUp+0x60>
1c002c3c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c40:	2880018e 	ld.w	$r14,$r12,0
1c002c44:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c48:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002c4c:	0014b5cd 	and	$r13,$r14,$r13
1c002c50:	2980018d 	st.w	$r13,$r12,0
1c002c54:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c58:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002c5c:	63ffe180 	blt	$r12,$r0,-32(0x3ffe0) # 1c002c3c <CLOCK_WaitForHSEStartUp+0x48>
1c002c60:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c64:	2880018d 	ld.w	$r13,$r12,0
1c002c68:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c6c:	038201ad 	ori	$r13,$r13,0x80
1c002c70:	2980018d 	st.w	$r13,$r12,0
1c002c74:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002c78:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002c7c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002c80:	00150184 	move	$r4,$r12
1c002c84:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002c88:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002c8c:	4c000020 	jirl	$r0,$r1,0

1c002c90 <CLOCK_WaitForLSEStartUp>:
CLOCK_WaitForLSEStartUp():
1c002c90:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002c94:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002c98:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002c9c:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002ca0:	50008800 	b	136(0x88) # 1c002d28 <CLOCK_WaitForLSEStartUp+0x98>
1c002ca4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ca8:	2880018e 	ld.w	$r14,$r12,0
1c002cac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002cb0:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002cb4:	0014b5cd 	and	$r13,$r14,$r13
1c002cb8:	2980018d 	st.w	$r13,$r12,0
1c002cbc:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002cc0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002cc4:	50001400 	b	20(0x14) # 1c002cd8 <CLOCK_WaitForLSEStartUp+0x48>
1c002cc8:	03400000 	andi	$r0,$r0,0x0
1c002ccc:	03400000 	andi	$r0,$r0,0x0
1c002cd0:	03400000 	andi	$r0,$r0,0x0
1c002cd4:	03400000 	andi	$r0,$r0,0x0
1c002cd8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002cdc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002ce0:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002ce4:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002cc8 <CLOCK_WaitForLSEStartUp+0x38>
1c002ce8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002cec:	2880018d 	ld.w	$r13,$r12,0
1c002cf0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002cf4:	038081ad 	ori	$r13,$r13,0x20
1c002cf8:	2980018d 	st.w	$r13,$r12,0
1c002cfc:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002d00:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002d04:	50001400 	b	20(0x14) # 1c002d18 <CLOCK_WaitForLSEStartUp+0x88>
1c002d08:	03400000 	andi	$r0,$r0,0x0
1c002d0c:	03400000 	andi	$r0,$r0,0x0
1c002d10:	03400000 	andi	$r0,$r0,0x0
1c002d14:	03400000 	andi	$r0,$r0,0x0
1c002d18:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002d1c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002d20:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002d24:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002d08 <CLOCK_WaitForLSEStartUp+0x78>
1c002d28:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d2c:	0380118c 	ori	$r12,$r12,0x4
1c002d30:	2880018d 	ld.w	$r13,$r12,0
1c002d34:	1420000c 	lu12i.w	$r12,65536(0x10000)
1c002d38:	0014b1ac 	and	$r12,$r13,$r12
1c002d3c:	43ff699f 	beqz	$r12,-152(0x7fff68) # 1c002ca4 <CLOCK_WaitForLSEStartUp+0x14>
1c002d40:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d44:	0380118c 	ori	$r12,$r12,0x4
1c002d48:	2880018d 	ld.w	$r13,$r12,0
1c002d4c:	1440000c 	lu12i.w	$r12,131072(0x20000)
1c002d50:	0014b1ac 	and	$r12,$r13,$r12
1c002d54:	47ff519f 	bnez	$r12,-176(0x7fff50) # 1c002ca4 <CLOCK_WaitForLSEStartUp+0x14>
1c002d58:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002d5c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002d60:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002d64:	00150184 	move	$r4,$r12
1c002d68:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002d6c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002d70:	4c000020 	jirl	$r0,$r1,0

1c002d74 <CLOCK_HSEConfig>:
CLOCK_HSEConfig():
1c002d74:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002d78:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002d7c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002d80:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002d84:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002d88:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002d8c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d90:	2880018e 	ld.w	$r14,$r12,0
1c002d94:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002d98:	0014300d 	nor	$r13,$r0,$r12
1c002d9c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002da0:	0014b5cd 	and	$r13,$r14,$r13
1c002da4:	2980018d 	st.w	$r13,$r12,0
1c002da8:	1400002c 	lu12i.w	$r12,1(0x1)
1c002dac:	03b4bd8c 	ori	$r12,$r12,0xd2f
1c002db0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002db4:	50001400 	b	20(0x14) # 1c002dc8 <CLOCK_HSEConfig+0x54>
1c002db8:	03400000 	andi	$r0,$r0,0x0
1c002dbc:	03400000 	andi	$r0,$r0,0x0
1c002dc0:	03400000 	andi	$r0,$r0,0x0
1c002dc4:	03400000 	andi	$r0,$r0,0x0
1c002dc8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002dcc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002dd0:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002dd4:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002db8 <CLOCK_HSEConfig+0x44>
1c002dd8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002ddc:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002de0:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002df0 <CLOCK_HSEConfig+0x7c>
1c002de4:	57fe13ff 	bl	-496(0xffffe10) # 1c002bf4 <CLOCK_WaitForHSEStartUp>
1c002de8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002dec:	50002400 	b	36(0x24) # 1c002e10 <CLOCK_HSEConfig+0x9c>
1c002df0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002df4:	2880018e 	ld.w	$r14,$r12,0
1c002df8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002dfc:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002e00:	0014b5cd 	and	$r13,$r14,$r13
1c002e04:	2980018d 	st.w	$r13,$r12,0
1c002e08:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002e0c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002e10:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e14:	00150184 	move	$r4,$r12
1c002e18:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002e1c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002e20:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002e24:	4c000020 	jirl	$r0,$r1,0

1c002e28 <CLOCK_LSEConfig>:
CLOCK_LSEConfig():
1c002e28:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002e2c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002e30:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002e34:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002e38:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002e3c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002e40:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002e44:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c002e48:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002e58 <CLOCK_LSEConfig+0x30>
1c002e4c:	57fe47ff 	bl	-444(0xffffe44) # 1c002c90 <CLOCK_WaitForLSEStartUp>
1c002e50:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002e54:	50002400 	b	36(0x24) # 1c002e78 <CLOCK_LSEConfig+0x50>
1c002e58:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e5c:	2880018e 	ld.w	$r14,$r12,0
1c002e60:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e64:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002e68:	0014b5cd 	and	$r13,$r14,$r13
1c002e6c:	2980018d 	st.w	$r13,$r12,0
1c002e70:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002e74:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002e78:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e7c:	00150184 	move	$r4,$r12
1c002e80:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002e84:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002e88:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002e8c:	4c000020 	jirl	$r0,$r1,0

1c002e90 <CLOCK_StructInit>:
CLOCK_StructInit():
1c002e90:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002e94:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002e98:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002e9c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002ea0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ea4:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c002ea8:	2980018d 	st.w	$r13,$r12,0
1c002eac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002eb0:	0282000d 	addi.w	$r13,$r0,128(0x80)
1c002eb4:	2980118d 	st.w	$r13,$r12,4(0x4)
1c002eb8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ebc:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c002ec0:	2980218d 	st.w	$r13,$r12,8(0x8)
1c002ec4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ec8:	29803180 	st.w	$r0,$r12,12(0xc)
1c002ecc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ed0:	29804180 	st.w	$r0,$r12,16(0x10)
1c002ed4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ed8:	29805180 	st.w	$r0,$r12,20(0x14)
1c002edc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ee0:	29806180 	st.w	$r0,$r12,24(0x18)
1c002ee4:	03400000 	andi	$r0,$r0,0x0
1c002ee8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002eec:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002ef0:	4c000020 	jirl	$r0,$r1,0

1c002ef4 <CLOCK_Init>:
CLOCK_Init():
1c002ef4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002ef8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002efc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002f00:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002f04:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002f08:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002f0c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f10:	2880018e 	ld.w	$r14,$r12,0
1c002f14:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f18:	02b3fc0d 	addi.w	$r13,$r0,-769(0xcff)
1c002f1c:	0014b5cd 	and	$r13,$r14,$r13
1c002f20:	2980018d 	st.w	$r13,$r12,0
1c002f24:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f28:	2880018e 	ld.w	$r14,$r12,0
1c002f2c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f30:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c002f34:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f38:	001535cd 	or	$r13,$r14,$r13
1c002f3c:	2980018d 	st.w	$r13,$r12,0
1c002f40:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f44:	2880018e 	ld.w	$r14,$r12,0
1c002f48:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f4c:	02bfbc0d 	addi.w	$r13,$r0,-17(0xfef)
1c002f50:	0014b5cd 	and	$r13,$r14,$r13
1c002f54:	2980018d 	st.w	$r13,$r12,0
1c002f58:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f5c:	2880018e 	ld.w	$r14,$r12,0
1c002f60:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f64:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c002f68:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f6c:	001535cd 	or	$r13,$r14,$r13
1c002f70:	2980018d 	st.w	$r13,$r12,0
1c002f74:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f78:	2880018e 	ld.w	$r14,$r12,0
1c002f7c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f80:	15ffffed 	lu12i.w	$r13,-1(0xfffff)
1c002f84:	039ffdad 	ori	$r13,$r13,0x7ff
1c002f88:	0014b5cd 	and	$r13,$r14,$r13
1c002f8c:	2980018d 	st.w	$r13,$r12,0
1c002f90:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f94:	2880018e 	ld.w	$r14,$r12,0
1c002f98:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f9c:	2880518d 	ld.w	$r13,$r12,20(0x14)
1c002fa0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002fa4:	001535cd 	or	$r13,$r14,$r13
1c002fa8:	2980018d 	st.w	$r13,$r12,0
1c002fac:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002fb0:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002fb4:	00150184 	move	$r4,$r12
1c002fb8:	57fdbfff 	bl	-580(0xffffdbc) # 1c002d74 <CLOCK_HSEConfig>
1c002fbc:	0015008d 	move	$r13,$r4
1c002fc0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002fc4:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002fd0 <CLOCK_Init+0xdc>
1c002fc8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002fcc:	50015000 	b	336(0x150) # 1c00311c <CLOCK_Init+0x228>
1c002fd0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002fd4:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c002fd8:	00150184 	move	$r4,$r12
1c002fdc:	57fe4fff 	bl	-436(0xffffe4c) # 1c002e28 <CLOCK_LSEConfig>
1c002fe0:	0015008d 	move	$r13,$r4
1c002fe4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002fe8:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002ff4 <CLOCK_Init+0x100>
1c002fec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ff0:	50012c00 	b	300(0x12c) # 1c00311c <CLOCK_Init+0x228>
1c002ff4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ff8:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002ffc:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c003000:	5800fdac 	beq	$r13,$r12,252(0xfc) # 1c0030fc <CLOCK_Init+0x208>
1c003004:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003008:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c00300c:	4000a180 	beqz	$r12,160(0xa0) # 1c0030ac <CLOCK_Init+0x1b8>
1c003010:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003014:	2880018e 	ld.w	$r14,$r12,0
1c003018:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00301c:	15efffed 	lu12i.w	$r13,-32769(0xf7fff)
1c003020:	03bffdad 	ori	$r13,$r13,0xfff
1c003024:	0014b5cd 	and	$r13,$r14,$r13
1c003028:	2980018d 	st.w	$r13,$r12,0
1c00302c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003030:	2880018e 	ld.w	$r14,$r12,0
1c003034:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003038:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c00303c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003040:	001535cd 	or	$r13,$r14,$r13
1c003044:	2980018d 	st.w	$r13,$r12,0
1c003048:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c00304c:	0386c18c 	ori	$r12,$r12,0x1b0
1c003050:	2880018c 	ld.w	$r12,$r12,0
1c003054:	40004180 	beqz	$r12,64(0x40) # 1c003094 <CLOCK_Init+0x1a0>
1c003058:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c00305c:	0386c18c 	ori	$r12,$r12,0x1b0
1c003060:	2880018c 	ld.w	$r12,$r12,0
1c003064:	0040898e 	slli.w	$r14,$r12,0x2
1c003068:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c00306c:	002031cd 	div.w	$r13,$r14,$r12
1c003070:	5c000980 	bne	$r12,$r0,8(0x8) # 1c003078 <CLOCK_Init+0x184>
1c003074:	002a0007 	break	0x7
1c003078:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c00307c:	001c31ac 	mul.w	$r12,$r13,$r12
1c003080:	0015018d 	move	$r13,$r12
1c003084:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c003088:	02be718c 	addi.w	$r12,$r12,-100(0xf9c)
1c00308c:	2980018d 	st.w	$r13,$r12,0
1c003090:	50008000 	b	128(0x80) # 1c003110 <CLOCK_Init+0x21c>
1c003094:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c003098:	02be318c 	addi.w	$r12,$r12,-116(0xf8c)
1c00309c:	1401458d 	lu12i.w	$r13,2604(0xa2c)
1c0030a0:	038fe1ad 	ori	$r13,$r13,0x3f8
1c0030a4:	2980018d 	st.w	$r13,$r12,0
1c0030a8:	50006800 	b	104(0x68) # 1c003110 <CLOCK_Init+0x21c>
1c0030ac:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c0030b0:	0386c18c 	ori	$r12,$r12,0x1b0
1c0030b4:	2880018c 	ld.w	$r12,$r12,0
1c0030b8:	40002d80 	beqz	$r12,44(0x2c) # 1c0030e4 <CLOCK_Init+0x1f0>
1c0030bc:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c0030c0:	0386c18c 	ori	$r12,$r12,0x1b0
1c0030c4:	2880018d 	ld.w	$r13,$r12,0
1c0030c8:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c0030cc:	001c31ac 	mul.w	$r12,$r13,$r12
1c0030d0:	0015018d 	move	$r13,$r12
1c0030d4:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c0030d8:	02bd318c 	addi.w	$r12,$r12,-180(0xf4c)
1c0030dc:	2980018d 	st.w	$r13,$r12,0
1c0030e0:	50003000 	b	48(0x30) # 1c003110 <CLOCK_Init+0x21c>
1c0030e4:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c0030e8:	02bcf18c 	addi.w	$r12,$r12,-196(0xf3c)
1c0030ec:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c0030f0:	038801ad 	ori	$r13,$r13,0x200
1c0030f4:	2980018d 	st.w	$r13,$r12,0
1c0030f8:	50001800 	b	24(0x18) # 1c003110 <CLOCK_Init+0x21c>
1c0030fc:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c003100:	02bc918c 	addi.w	$r12,$r12,-220(0xf24)
1c003104:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c003108:	038801ad 	ori	$r13,$r13,0x200
1c00310c:	2980018d 	st.w	$r13,$r12,0
1c003110:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003114:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003118:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00311c:	00150184 	move	$r4,$r12
1c003120:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003124:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003128:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00312c:	4c000020 	jirl	$r0,$r1,0

1c003130 <SystemClockInit>:
SystemClockInit():
1c003130:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003134:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003138:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00313c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003140:	29bf52c0 	st.w	$r0,$r22,-44(0xfd4)
1c003144:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c003148:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c00314c:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c003150:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c003154:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003158:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00315c:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c003160:	00150184 	move	$r4,$r12
1c003164:	57fd2fff 	bl	-724(0xffffd2c) # 1c002e90 <CLOCK_StructInit>
1c003168:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c00316c:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c003170:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c003174:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c003178:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c00317c:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c003180:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c003184:	0284000c 	addi.w	$r12,$r0,256(0x100)
1c003188:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00318c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003190:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003194:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c003198:	00150184 	move	$r4,$r12
1c00319c:	57fd5bff 	bl	-680(0xffffd58) # 1c002ef4 <CLOCK_Init>
1c0031a0:	0015008d 	move	$r13,$r4
1c0031a4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0031a8:	58000dac 	beq	$r13,$r12,12(0xc) # 1c0031b4 <SystemClockInit+0x84>
1c0031ac:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c0031b0:	50000800 	b	8(0x8) # 1c0031b8 <SystemClockInit+0x88>
1c0031b4:	0015000c 	move	$r12,$r0
1c0031b8:	00150184 	move	$r4,$r12
1c0031bc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0031c0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0031c4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0031c8:	4c000020 	jirl	$r0,$r1,0

1c0031cc <DisableInt>:
DisableInt():
1c0031cc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0031d0:	29803076 	st.w	$r22,$r3,12(0xc)
1c0031d4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0031d8:	0380100c 	ori	$r12,$r0,0x4
1c0031dc:	04000180 	csrxchg	$r0,$r12,0x0
1c0031e0:	03400000 	andi	$r0,$r0,0x0
1c0031e4:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0031e8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0031ec:	4c000020 	jirl	$r0,$r1,0

1c0031f0 <EnableInt>:
EnableInt():
1c0031f0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0031f4:	29803076 	st.w	$r22,$r3,12(0xc)
1c0031f8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0031fc:	0380100c 	ori	$r12,$r0,0x4
1c003200:	0400018c 	csrxchg	$r12,$r12,0x0
1c003204:	03400000 	andi	$r0,$r0,0x0
1c003208:	28803076 	ld.w	$r22,$r3,12(0xc)
1c00320c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003210:	4c000020 	jirl	$r0,$r1,0

1c003214 <Set_Timer_stop>:
Set_Timer_stop():
1c003214:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003218:	29803076 	st.w	$r22,$r3,12(0xc)
1c00321c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003220:	04010420 	csrwr	$r0,0x41
1c003224:	03400000 	andi	$r0,$r0,0x0
1c003228:	28803076 	ld.w	$r22,$r3,12(0xc)
1c00322c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003230:	4c000020 	jirl	$r0,$r1,0

1c003234 <Set_Timer_clear>:
Set_Timer_clear():
1c003234:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003238:	29803076 	st.w	$r22,$r3,12(0xc)
1c00323c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003240:	0380040c 	ori	$r12,$r0,0x1
1c003244:	0401102c 	csrwr	$r12,0x44
1c003248:	03400000 	andi	$r0,$r0,0x0
1c00324c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003250:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003254:	4c000020 	jirl	$r0,$r1,0

1c003258 <Wake_Set>:
Wake_Set():
1c003258:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00325c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003260:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003264:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003268:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00326c:	40006980 	beqz	$r12,104(0x68) # 1c0032d4 <Wake_Set+0x7c>
1c003270:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003274:	0040a18c 	slli.w	$r12,$r12,0x8
1c003278:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00327c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003280:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003284:	0380218c 	ori	$r12,$r12,0x8
1c003288:	2880018d 	ld.w	$r13,$r12,0
1c00328c:	14001fec 	lu12i.w	$r12,255(0xff)
1c003290:	03bffd8c 	ori	$r12,$r12,0xfff
1c003294:	0014b1ac 	and	$r12,$r13,$r12
1c003298:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00329c:	001031ac 	add.w	$r12,$r13,$r12
1c0032a0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0032a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032a8:	0380318c 	ori	$r12,$r12,0xc
1c0032ac:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0032b0:	2980018d 	st.w	$r13,$r12,0
1c0032b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032b8:	0380118c 	ori	$r12,$r12,0x4
1c0032bc:	2880018d 	ld.w	$r13,$r12,0
1c0032c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032c4:	0380118c 	ori	$r12,$r12,0x4
1c0032c8:	038601ad 	ori	$r13,$r13,0x180
1c0032cc:	2980018d 	st.w	$r13,$r12,0
1c0032d0:	50002400 	b	36(0x24) # 1c0032f4 <Wake_Set+0x9c>
1c0032d4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032d8:	0380118c 	ori	$r12,$r12,0x4
1c0032dc:	2880018e 	ld.w	$r14,$r12,0
1c0032e0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032e4:	0380118c 	ori	$r12,$r12,0x4
1c0032e8:	02b9fc0d 	addi.w	$r13,$r0,-385(0xe7f)
1c0032ec:	0014b5cd 	and	$r13,$r14,$r13
1c0032f0:	2980018d 	st.w	$r13,$r12,0
1c0032f4:	03400000 	andi	$r0,$r0,0x0
1c0032f8:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0032fc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003300:	4c000020 	jirl	$r0,$r1,0

1c003304 <PMU_GetRstRrc>:
PMU_GetRstRrc():
1c003304:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003308:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00330c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003310:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003314:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003318:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c00331c:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c003320:	0014b1ac 	and	$r12,$r13,$r12
1c003324:	44000d80 	bnez	$r12,12(0xc) # 1c003330 <PMU_GetRstRrc+0x2c>
1c003328:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00332c:	50003000 	b	48(0x30) # 1c00335c <PMU_GetRstRrc+0x58>
1c003330:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003334:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003338:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c00333c:	0014b1ad 	and	$r13,$r13,$r12
1c003340:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c003344:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c003354 <PMU_GetRstRrc+0x50>
1c003348:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c00334c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003350:	50000c00 	b	12(0xc) # 1c00335c <PMU_GetRstRrc+0x58>
1c003354:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003358:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00335c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003360:	00150184 	move	$r4,$r12
1c003364:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003368:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00336c:	4c000020 	jirl	$r0,$r1,0

1c003370 <PMU_GetBootSpiStatus>:
PMU_GetBootSpiStatus():
1c003370:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003374:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003378:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00337c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003380:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003384:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003388:	0380198c 	ori	$r12,$r12,0x6
1c00338c:	2a00018c 	ld.bu	$r12,$r12,0
1c003390:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003394:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003398:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00339c:	0340058c 	andi	$r12,$r12,0x1
1c0033a0:	40000d80 	beqz	$r12,12(0xc) # 1c0033ac <PMU_GetBootSpiStatus+0x3c>
1c0033a4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0033a8:	50000800 	b	8(0x8) # 1c0033b0 <PMU_GetBootSpiStatus+0x40>
1c0033ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0033b0:	00150184 	move	$r4,$r12
1c0033b4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0033b8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0033bc:	4c000020 	jirl	$r0,$r1,0

1c0033c0 <ls1x_logo>:
ls1x_logo():
1c0033c0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0033c4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0033c8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0033cc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0033d0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0033d4:	029e1084 	addi.w	$r4,$r4,1924(0x784)
1c0033d8:	57e7cbff 	bl	-6200(0xfffe7c8) # 1c001ba0 <myprintf>
1c0033dc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0033e0:	029df084 	addi.w	$r4,$r4,1916(0x77c)
1c0033e4:	57e7bfff 	bl	-6212(0xfffe7bc) # 1c001ba0 <myprintf>
1c0033e8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0033ec:	029f5084 	addi.w	$r4,$r4,2004(0x7d4)
1c0033f0:	57e7b3ff 	bl	-6224(0xfffe7b0) # 1c001ba0 <myprintf>
1c0033f4:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0033f8:	02a0b084 	addi.w	$r4,$r4,-2004(0x82c)
1c0033fc:	57e7a7ff 	bl	-6236(0xfffe7a4) # 1c001ba0 <myprintf>
1c003400:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003404:	02a21084 	addi.w	$r4,$r4,-1916(0x884)
1c003408:	57e79bff 	bl	-6248(0xfffe798) # 1c001ba0 <myprintf>
1c00340c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003410:	02a37084 	addi.w	$r4,$r4,-1828(0x8dc)
1c003414:	57e78fff 	bl	-6260(0xfffe78c) # 1c001ba0 <myprintf>
1c003418:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00341c:	02a4d084 	addi.w	$r4,$r4,-1740(0x934)
1c003420:	57e783ff 	bl	-6272(0xfffe780) # 1c001ba0 <myprintf>
1c003424:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003428:	02a63084 	addi.w	$r4,$r4,-1652(0x98c)
1c00342c:	57e777ff 	bl	-6284(0xfffe774) # 1c001ba0 <myprintf>
1c003430:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003434:	02a79084 	addi.w	$r4,$r4,-1564(0x9e4)
1c003438:	57e76bff 	bl	-6296(0xfffe768) # 1c001ba0 <myprintf>
1c00343c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003440:	02a8f084 	addi.w	$r4,$r4,-1476(0xa3c)
1c003444:	57e75fff 	bl	-6308(0xfffe75c) # 1c001ba0 <myprintf>
1c003448:	03400000 	andi	$r0,$r0,0x0
1c00344c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003450:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003454:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003458:	4c000020 	jirl	$r0,$r1,0

1c00345c <get_count>:
get_count():
1c00345c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003460:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003464:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003468:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00346c:	0000600c 	rdtimel.w	$r12,$r0
1c003470:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003474:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003478:	00150184 	move	$r4,$r12
1c00347c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003480:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003484:	4c000020 	jirl	$r0,$r1,0

1c003488 <open_count>:
open_count():
1c003488:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00348c:	29803076 	st.w	$r22,$r3,12(0xc)
1c003490:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003494:	0380400c 	ori	$r12,$r0,0x10
1c003498:	0402bd80 	csrxchg	$r0,$r12,0xaf
1c00349c:	03400000 	andi	$r0,$r0,0x0
1c0034a0:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0034a4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0034a8:	4c000020 	jirl	$r0,$r1,0

1c0034ac <start_count>:
start_count():
1c0034ac:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0034b0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0034b4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0034b8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0034bc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0034c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0034c4:	29800180 	st.w	$r0,$r12,0
1c0034c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0034cc:	29801180 	st.w	$r0,$r12,4(0x4)
1c0034d0:	57ff8fff 	bl	-116(0xfffff8c) # 1c00345c <get_count>
1c0034d4:	0015008d 	move	$r13,$r4
1c0034d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0034dc:	2980018d 	st.w	$r13,$r12,0
1c0034e0:	03400000 	andi	$r0,$r0,0x0
1c0034e4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0034e8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0034ec:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0034f0:	4c000020 	jirl	$r0,$r1,0

1c0034f4 <stop_count>:
stop_count():
1c0034f4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0034f8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0034fc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003500:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003504:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003508:	57ff57ff 	bl	-172(0xfffff54) # 1c00345c <get_count>
1c00350c:	0015008d 	move	$r13,$r4
1c003510:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003514:	2980118d 	st.w	$r13,$r12,4(0x4)
1c003518:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00351c:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003520:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003524:	2880018c 	ld.w	$r12,$r12,0
1c003528:	68001dac 	bltu	$r13,$r12,28(0x1c) # 1c003544 <stop_count+0x50>
1c00352c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003530:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003534:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003538:	2880018c 	ld.w	$r12,$r12,0
1c00353c:	001131ac 	sub.w	$r12,$r13,$r12
1c003540:	50002800 	b	40(0x28) # 1c003568 <stop_count+0x74>
1c003544:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c003548:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00354c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003550:	2880018c 	ld.w	$r12,$r12,0
1c003554:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003558:	001131ad 	sub.w	$r13,$r13,$r12
1c00355c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003560:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c003564:	001031ac 	add.w	$r12,$r13,$r12
1c003568:	00150184 	move	$r4,$r12
1c00356c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003570:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003574:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003578:	4c000020 	jirl	$r0,$r1,0

1c00357c <delay_cycle>:
delay_cycle():
1c00357c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003580:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003584:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003588:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00358c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003590:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003594:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c003598:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c00359c:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c0035a0:	00150184 	move	$r4,$r12
1c0035a4:	57ff0bff 	bl	-248(0xfffff08) # 1c0034ac <start_count>
1c0035a8:	50001400 	b	20(0x14) # 1c0035bc <delay_cycle+0x40>
1c0035ac:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c0035b0:	00150184 	move	$r4,$r12
1c0035b4:	57ff43ff 	bl	-192(0xfffff40) # 1c0034f4 <stop_count>
1c0035b8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0035bc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0035c0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0035c4:	6bffe9ac 	bltu	$r13,$r12,-24(0x3ffe8) # 1c0035ac <delay_cycle+0x30>
1c0035c8:	03400000 	andi	$r0,$r0,0x0
1c0035cc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0035d0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0035d4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0035d8:	4c000020 	jirl	$r0,$r1,0

1c0035dc <delay_us>:
delay_us():
1c0035dc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0035e0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0035e4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0035e8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0035ec:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0035f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0035f4:	00408d8c 	slli.w	$r12,$r12,0x3
1c0035f8:	00150184 	move	$r4,$r12
1c0035fc:	57ff83ff 	bl	-128(0xfffff80) # 1c00357c <delay_cycle>
1c003600:	03400000 	andi	$r0,$r0,0x0
1c003604:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003608:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00360c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003610:	4c000020 	jirl	$r0,$r1,0

1c003614 <delay_ms>:
delay_ms():
1c003614:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003618:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00361c:	29806076 	st.w	$r22,$r3,24(0x18)
1c003620:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003624:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003628:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00362c:	1400002c 	lu12i.w	$r12,1(0x1)
1c003630:	03bd018c 	ori	$r12,$r12,0xf40
1c003634:	001c31ac 	mul.w	$r12,$r13,$r12
1c003638:	00150184 	move	$r4,$r12
1c00363c:	57ff43ff 	bl	-192(0xfffff40) # 1c00357c <delay_cycle>
1c003640:	03400000 	andi	$r0,$r0,0x0
1c003644:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003648:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00364c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003650:	4c000020 	jirl	$r0,$r1,0

1c003654 <memset>:
memset():
1c003654:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003658:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c00365c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003660:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003664:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c003668:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c00366c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003670:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003674:	50001c00 	b	28(0x1c) # 1c003690 <memset+0x3c>
1c003678:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00367c:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c003680:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c003684:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c003688:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c00368c:	2900018d 	st.b	$r13,$r12,0
1c003690:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c003694:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003698:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c00369c:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c003678 <memset+0x24>
1c0036a0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0036a4:	00150184 	move	$r4,$r12
1c0036a8:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0036ac:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0036b0:	4c000020 	jirl	$r0,$r1,0

1c0036b4 <strcpy>:
strcpy():
1c0036b4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0036b8:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0036bc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0036c0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0036c4:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0036c8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0036cc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0036d0:	03400000 	andi	$r0,$r0,0x0
1c0036d4:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0036d8:	028005ac 	addi.w	$r12,$r13,1(0x1)
1c0036dc:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0036e0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0036e4:	0280058e 	addi.w	$r14,$r12,1(0x1)
1c0036e8:	29bf72ce 	st.w	$r14,$r22,-36(0xfdc)
1c0036ec:	280001ad 	ld.b	$r13,$r13,0
1c0036f0:	2900018d 	st.b	$r13,$r12,0
1c0036f4:	2800018c 	ld.b	$r12,$r12,0
1c0036f8:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c0036d4 <strcpy+0x20>
1c0036fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003700:	00150184 	move	$r4,$r12
1c003704:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003708:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00370c:	4c000020 	jirl	$r0,$r1,0

1c003710 <strlen>:
strlen():
1c003710:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003714:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003718:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00371c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003720:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003724:	50001000 	b	16(0x10) # 1c003734 <strlen+0x24>
1c003728:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00372c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003730:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003734:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003738:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c00373c:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c003740:	2800018c 	ld.b	$r12,$r12,0
1c003744:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003728 <strlen+0x18>
1c003748:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00374c:	00150184 	move	$r4,$r12
1c003750:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003754:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003758:	4c000020 	jirl	$r0,$r1,0

1c00375c <EXTI_ClearITPendingBit>:
EXTI_ClearITPendingBit():
1c00375c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003760:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003764:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003768:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00376c:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c003770:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003774:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c003778:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00377c:	001531ad 	or	$r13,$r13,$r12
1c003780:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003784:	2980318d 	st.w	$r13,$r12,12(0xc)
1c003788:	03400000 	andi	$r0,$r0,0x0
1c00378c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003790:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003794:	4c000020 	jirl	$r0,$r1,0

1c003798 <WDG_getOddValue>:
WDG_getOddValue():
1c003798:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00379c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0037a0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0037a4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0037a8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0037ac:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0037b0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0037b4:	50003800 	b	56(0x38) # 1c0037ec <WDG_getOddValue+0x54>
1c0037b8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0037bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037c0:	001731ac 	sll.w	$r12,$r13,$r12
1c0037c4:	0015018d 	move	$r13,$r12
1c0037c8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0037cc:	0014b1ac 	and	$r12,$r13,$r12
1c0037d0:	40001180 	beqz	$r12,16(0x10) # 1c0037e0 <WDG_getOddValue+0x48>
1c0037d4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0037d8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0037dc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0037e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037e4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0037e8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0037ec:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0037f0:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c0037f4:	67ffc58d 	bge	$r12,$r13,-60(0x3ffc4) # 1c0037b8 <WDG_getOddValue+0x20>
1c0037f8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0037fc:	0340058c 	andi	$r12,$r12,0x1
1c003800:	44000d80 	bnez	$r12,12(0xc) # 1c00380c <WDG_getOddValue+0x74>
1c003804:	1400010c 	lu12i.w	$r12,8(0x8)
1c003808:	50000800 	b	8(0x8) # 1c003810 <WDG_getOddValue+0x78>
1c00380c:	0015000c 	move	$r12,$r0
1c003810:	00150184 	move	$r4,$r12
1c003814:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003818:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00381c:	4c000020 	jirl	$r0,$r1,0

1c003820 <WDG_SetWatchDog>:
WDG_SetWatchDog():
1c003820:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003824:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003828:	29806076 	st.w	$r22,$r3,24(0x18)
1c00382c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003830:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003834:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003838:	140000ec 	lu12i.w	$r12,7(0x7)
1c00383c:	03bffd8c 	ori	$r12,$r12,0xfff
1c003840:	0014b1ac 	and	$r12,$r13,$r12
1c003844:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003848:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c00384c:	57ff4fff 	bl	-180(0xfffff4c) # 1c003798 <WDG_getOddValue>
1c003850:	0015008c 	move	$r12,$r4
1c003854:	0015018d 	move	$r13,$r12
1c003858:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00385c:	0015358c 	or	$r12,$r12,$r13
1c003860:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003864:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003868:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c00386c:	0396a9ad 	ori	$r13,$r13,0x5aa
1c003870:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c003874:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003878:	0014300c 	nor	$r12,$r0,$r12
1c00387c:	0040c18c 	slli.w	$r12,$r12,0x10
1c003880:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003884:	001531ac 	or	$r12,$r13,$r12
1c003888:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00388c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003890:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003894:	2980c18d 	st.w	$r13,$r12,48(0x30)
1c003898:	03400000 	andi	$r0,$r0,0x0
1c00389c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0038a0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0038a4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0038a8:	4c000020 	jirl	$r0,$r1,0

1c0038ac <WDG_DogFeed>:
WDG_DogFeed():
1c0038ac:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0038b0:	29803076 	st.w	$r22,$r3,12(0xc)
1c0038b4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0038b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0038bc:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c0038c0:	0396a9ad 	ori	$r13,$r13,0x5aa
1c0038c4:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c0038c8:	03400000 	andi	$r0,$r0,0x0
1c0038cc:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0038d0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0038d4:	4c000020 	jirl	$r0,$r1,0

1c0038d8 <WdgInit>:
WdgInit():
1c0038d8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0038dc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0038e0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0038e4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0038e8:	150000ec 	lu12i.w	$r12,-524281(0x80007)
1c0038ec:	03bffd84 	ori	$r4,$r12,0xfff
1c0038f0:	57ff33ff 	bl	-208(0xfffff30) # 1c003820 <WDG_SetWatchDog>
1c0038f4:	03400000 	andi	$r0,$r0,0x0
1c0038f8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0038fc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003900:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003904:	4c000020 	jirl	$r0,$r1,0

1c003908 <TOUCH_GetBaseVal>:
TOUCH_GetBaseVal():
1c003908:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00390c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003910:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003914:	0015008c 	move	$r12,$r4
1c003918:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c00391c:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003920:	0040898c 	slli.w	$r12,$r12,0x2
1c003924:	0015018d 	move	$r13,$r12
1c003928:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c00392c:	0381018c 	ori	$r12,$r12,0x40
1c003930:	001031ac 	add.w	$r12,$r13,$r12
1c003934:	2880018c 	ld.w	$r12,$r12,0
1c003938:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00393c:	037ffd8c 	andi	$r12,$r12,0xfff
1c003940:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003944:	00150184 	move	$r4,$r12
1c003948:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00394c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003950:	4c000020 	jirl	$r0,$r1,0

1c003954 <TOUCH_GetCountValue>:
TOUCH_GetCountValue():
1c003954:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003958:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00395c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003960:	0015008c 	move	$r12,$r4
1c003964:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003968:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c00396c:	0040898c 	slli.w	$r12,$r12,0x2
1c003970:	0015018d 	move	$r13,$r12
1c003974:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003978:	0382018c 	ori	$r12,$r12,0x80
1c00397c:	001031ac 	add.w	$r12,$r13,$r12
1c003980:	2880018c 	ld.w	$r12,$r12,0
1c003984:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003988:	037ffd8c 	andi	$r12,$r12,0xfff
1c00398c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003990:	00150184 	move	$r4,$r12
1c003994:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003998:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00399c:	4c000020 	jirl	$r0,$r1,0

1c0039a0 <Printf_KeyChannel>:
Printf_KeyChannel():
1c0039a0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0039a4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0039a8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0039ac:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0039b0:	0015008c 	move	$r12,$r4
1c0039b4:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0039b8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0039bc:	50003400 	b	52(0x34) # 1c0039f0 <Printf_KeyChannel+0x50>
1c0039c0:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c0039c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039c8:	001831ac 	sra.w	$r12,$r13,$r12
1c0039cc:	0340058c 	andi	$r12,$r12,0x1
1c0039d0:	40001580 	beqz	$r12,20(0x14) # 1c0039e4 <Printf_KeyChannel+0x44>
1c0039d4:	28bfb2c5 	ld.w	$r5,$r22,-20(0xfec)
1c0039d8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0039dc:	02941084 	addi.w	$r4,$r4,1284(0x504)
1c0039e0:	57e1c3ff 	bl	-7744(0xfffe1c0) # 1c001ba0 <myprintf>
1c0039e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039e8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0039ec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0039f0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0039f4:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c0039f8:	6fffc98d 	bgeu	$r12,$r13,-56(0x3ffc8) # 1c0039c0 <Printf_KeyChannel+0x20>
1c0039fc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003a00:	02939084 	addi.w	$r4,$r4,1252(0x4e4)
1c003a04:	57e19fff 	bl	-7780(0xfffe19c) # 1c001ba0 <myprintf>
1c003a08:	03400000 	andi	$r0,$r0,0x0
1c003a0c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003a10:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003a14:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003a18:	4c000020 	jirl	$r0,$r1,0

1c003a1c <Printf_KeyType>:
Printf_KeyType():
1c003a1c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003a20:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003a24:	29806076 	st.w	$r22,$r3,24(0x18)
1c003a28:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003a2c:	0015008c 	move	$r12,$r4
1c003a30:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003a34:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003a38:	0340058c 	andi	$r12,$r12,0x1
1c003a3c:	40001180 	beqz	$r12,16(0x10) # 1c003a4c <Printf_KeyType+0x30>
1c003a40:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003a44:	02929084 	addi.w	$r4,$r4,1188(0x4a4)
1c003a48:	57e15bff 	bl	-7848(0xfffe158) # 1c001ba0 <myprintf>
1c003a4c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003a50:	0340098c 	andi	$r12,$r12,0x2
1c003a54:	40001180 	beqz	$r12,16(0x10) # 1c003a64 <Printf_KeyType+0x48>
1c003a58:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003a5c:	02925084 	addi.w	$r4,$r4,1172(0x494)
1c003a60:	57e143ff 	bl	-7872(0xfffe140) # 1c001ba0 <myprintf>
1c003a64:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003a68:	0340118c 	andi	$r12,$r12,0x4
1c003a6c:	40001180 	beqz	$r12,16(0x10) # 1c003a7c <Printf_KeyType+0x60>
1c003a70:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003a74:	02921084 	addi.w	$r4,$r4,1156(0x484)
1c003a78:	57e12bff 	bl	-7896(0xfffe128) # 1c001ba0 <myprintf>
1c003a7c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003a80:	0340218c 	andi	$r12,$r12,0x8
1c003a84:	40001180 	beqz	$r12,16(0x10) # 1c003a94 <Printf_KeyType+0x78>
1c003a88:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003a8c:	0291e084 	addi.w	$r4,$r4,1144(0x478)
1c003a90:	57e113ff 	bl	-7920(0xfffe110) # 1c001ba0 <myprintf>
1c003a94:	03400000 	andi	$r0,$r0,0x0
1c003a98:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003a9c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003aa0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003aa4:	4c000020 	jirl	$r0,$r1,0

1c003aa8 <Printf_KeyVal>:
Printf_KeyVal():
1c003aa8:	02bd4063 	addi.w	$r3,$r3,-176(0xf50)
1c003aac:	2982b061 	st.w	$r1,$r3,172(0xac)
1c003ab0:	2982a076 	st.w	$r22,$r3,168(0xa8)
1c003ab4:	0282c076 	addi.w	$r22,$r3,176(0xb0)
1c003ab8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003abc:	5000d800 	b	216(0xd8) # 1c003b94 <Printf_KeyVal+0xec>
1c003ac0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ac4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003ac8:	00150184 	move	$r4,$r12
1c003acc:	57fe8bff 	bl	-376(0xffffe88) # 1c003954 <TOUCH_GetCountValue>
1c003ad0:	0015008c 	move	$r12,$r4
1c003ad4:	0015018d 	move	$r13,$r12
1c003ad8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003adc:	0040898c 	slli.w	$r12,$r12,0x2
1c003ae0:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003ae4:	001031cc 	add.w	$r12,$r14,$r12
1c003ae8:	29bdb18d 	st.w	$r13,$r12,-148(0xf6c)
1c003aec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003af0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003af4:	00150184 	move	$r4,$r12
1c003af8:	57fe13ff 	bl	-496(0xffffe10) # 1c003908 <TOUCH_GetBaseVal>
1c003afc:	0015008c 	move	$r12,$r4
1c003b00:	0015018d 	move	$r13,$r12
1c003b04:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b08:	0040898c 	slli.w	$r12,$r12,0x2
1c003b0c:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003b10:	001031cc 	add.w	$r12,$r14,$r12
1c003b14:	29be718d 	st.w	$r13,$r12,-100(0xf9c)
1c003b18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b1c:	0040898c 	slli.w	$r12,$r12,0x2
1c003b20:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003b24:	001031ac 	add.w	$r12,$r13,$r12
1c003b28:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003b2c:	40004980 	beqz	$r12,72(0x48) # 1c003b74 <Printf_KeyVal+0xcc>
1c003b30:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b34:	0040898c 	slli.w	$r12,$r12,0x2
1c003b38:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003b3c:	001031ac 	add.w	$r12,$r13,$r12
1c003b40:	28be718d 	ld.w	$r13,$r12,-100(0xf9c)
1c003b44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b48:	0040898c 	slli.w	$r12,$r12,0x2
1c003b4c:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003b50:	001031cc 	add.w	$r12,$r14,$r12
1c003b54:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003b58:	001131ad 	sub.w	$r13,$r13,$r12
1c003b5c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b60:	0040898c 	slli.w	$r12,$r12,0x2
1c003b64:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003b68:	001031cc 	add.w	$r12,$r14,$r12
1c003b6c:	29bf318d 	st.w	$r13,$r12,-52(0xfcc)
1c003b70:	50001800 	b	24(0x18) # 1c003b88 <Printf_KeyVal+0xe0>
1c003b74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b78:	0040898c 	slli.w	$r12,$r12,0x2
1c003b7c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003b80:	001031ac 	add.w	$r12,$r13,$r12
1c003b84:	29bf3180 	st.w	$r0,$r12,-52(0xfcc)
1c003b88:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b8c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003b90:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003b94:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003b98:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003b9c:	67ff258d 	bge	$r12,$r13,-220(0x3ff24) # 1c003ac0 <Printf_KeyVal+0x18>
1c003ba0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003ba4:	028db084 	addi.w	$r4,$r4,876(0x36c)
1c003ba8:	57dffbff 	bl	-8200(0xfffdff8) # 1c001ba0 <myprintf>
1c003bac:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003bb0:	028e2084 	addi.w	$r4,$r4,904(0x388)
1c003bb4:	57dfefff 	bl	-8212(0xfffdfec) # 1c001ba0 <myprintf>
1c003bb8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003bbc:	50003400 	b	52(0x34) # 1c003bf0 <Printf_KeyVal+0x148>
1c003bc0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003bc4:	0040898c 	slli.w	$r12,$r12,0x2
1c003bc8:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003bcc:	001031ac 	add.w	$r12,$r13,$r12
1c003bd0:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003bd4:	00150185 	move	$r5,$r12
1c003bd8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003bdc:	028d9084 	addi.w	$r4,$r4,868(0x364)
1c003be0:	57dfc3ff 	bl	-8256(0xfffdfc0) # 1c001ba0 <myprintf>
1c003be4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003be8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003bec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003bf0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003bf4:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003bf8:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003bc0 <Printf_KeyVal+0x118>
1c003bfc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003c00:	028d2084 	addi.w	$r4,$r4,840(0x348)
1c003c04:	57df9fff 	bl	-8292(0xfffdf9c) # 1c001ba0 <myprintf>
1c003c08:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003c0c:	50003400 	b	52(0x34) # 1c003c40 <Printf_KeyVal+0x198>
1c003c10:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c14:	0040898c 	slli.w	$r12,$r12,0x2
1c003c18:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003c1c:	001031ac 	add.w	$r12,$r13,$r12
1c003c20:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003c24:	00150185 	move	$r5,$r12
1c003c28:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003c2c:	028c5084 	addi.w	$r4,$r4,788(0x314)
1c003c30:	57df73ff 	bl	-8336(0xfffdf70) # 1c001ba0 <myprintf>
1c003c34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c38:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003c3c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003c40:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003c44:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003c48:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003c10 <Printf_KeyVal+0x168>
1c003c4c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003c50:	028c1084 	addi.w	$r4,$r4,772(0x304)
1c003c54:	57df4fff 	bl	-8372(0xfffdf4c) # 1c001ba0 <myprintf>
1c003c58:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003c5c:	50007400 	b	116(0x74) # 1c003cd0 <Printf_KeyVal+0x228>
1c003c60:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c64:	0040898c 	slli.w	$r12,$r12,0x2
1c003c68:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003c6c:	001031ac 	add.w	$r12,$r13,$r12
1c003c70:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003c74:	64002d80 	bge	$r12,$r0,44(0x2c) # 1c003ca0 <Printf_KeyVal+0x1f8>
1c003c78:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c7c:	0040898c 	slli.w	$r12,$r12,0x2
1c003c80:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003c84:	001031ac 	add.w	$r12,$r13,$r12
1c003c88:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003c8c:	00150185 	move	$r5,$r12
1c003c90:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003c94:	028b3084 	addi.w	$r4,$r4,716(0x2cc)
1c003c98:	57df0bff 	bl	-8440(0xfffdf08) # 1c001ba0 <myprintf>
1c003c9c:	50002800 	b	40(0x28) # 1c003cc4 <Printf_KeyVal+0x21c>
1c003ca0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ca4:	0040898c 	slli.w	$r12,$r12,0x2
1c003ca8:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003cac:	001031ac 	add.w	$r12,$r13,$r12
1c003cb0:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003cb4:	00150185 	move	$r5,$r12
1c003cb8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003cbc:	028ab084 	addi.w	$r4,$r4,684(0x2ac)
1c003cc0:	57dee3ff 	bl	-8480(0xfffdee0) # 1c001ba0 <myprintf>
1c003cc4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003cc8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003ccc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003cd0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003cd4:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003cd8:	67ff898d 	bge	$r12,$r13,-120(0x3ff88) # 1c003c60 <Printf_KeyVal+0x1b8>
1c003cdc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003ce0:	02881084 	addi.w	$r4,$r4,516(0x204)
1c003ce4:	57debfff 	bl	-8516(0xfffdebc) # 1c001ba0 <myprintf>
1c003ce8:	03400000 	andi	$r0,$r0,0x0
1c003cec:	2882b061 	ld.w	$r1,$r3,172(0xac)
1c003cf0:	2882a076 	ld.w	$r22,$r3,168(0xa8)
1c003cf4:	0282c063 	addi.w	$r3,$r3,176(0xb0)
1c003cf8:	4c000020 	jirl	$r0,$r1,0

1c003cfc <TIM_Init>:
TIM_Init():
1c003cfc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003d00:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003d04:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003d08:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003d0c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003d10:	29800180 	st.w	$r0,$r12,0
1c003d14:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003d18:	0380118c 	ori	$r12,$r12,0x4
1c003d1c:	29800180 	st.w	$r0,$r12,0
1c003d20:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003d24:	0380218c 	ori	$r12,$r12,0x8
1c003d28:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003d2c:	288011ad 	ld.w	$r13,$r13,4(0x4)
1c003d30:	2980018d 	st.w	$r13,$r12,0
1c003d34:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003d38:	0380318c 	ori	$r12,$r12,0xc
1c003d3c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003d40:	288021ad 	ld.w	$r13,$r13,8(0x8)
1c003d44:	2980018d 	st.w	$r13,$r12,0
1c003d48:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003d4c:	2880018e 	ld.w	$r14,$r12,0
1c003d50:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d54:	2880518d 	ld.w	$r13,$r12,20(0x14)
1c003d58:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003d5c:	001535cd 	or	$r13,$r14,$r13
1c003d60:	2980018d 	st.w	$r13,$r12,0
1c003d64:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d68:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c003d6c:	40002180 	beqz	$r12,32(0x20) # 1c003d8c <TIM_Init+0x90>
1c003d70:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003d74:	2a00018c 	ld.bu	$r12,$r12,0
1c003d78:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003d7c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003d80:	038005ad 	ori	$r13,$r13,0x1
1c003d84:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003d88:	2900018d 	st.b	$r13,$r12,0
1c003d8c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003d90:	2880018e 	ld.w	$r14,$r12,0
1c003d94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d98:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c003d9c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003da0:	001535cd 	or	$r13,$r14,$r13
1c003da4:	2980018d 	st.w	$r13,$r12,0
1c003da8:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003dac:	2880018e 	ld.w	$r14,$r12,0
1c003db0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003db4:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c003db8:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003dbc:	001535cd 	or	$r13,$r14,$r13
1c003dc0:	2980018d 	st.w	$r13,$r12,0
1c003dc4:	03400000 	andi	$r0,$r0,0x0
1c003dc8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003dcc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003dd0:	4c000020 	jirl	$r0,$r1,0

1c003dd4 <TIM_StructInit>:
TIM_StructInit():
1c003dd4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003dd8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003ddc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003de0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003de4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003de8:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c003dec:	038801ad 	ori	$r13,$r13,0x200
1c003df0:	2980018d 	st.w	$r13,$r12,0
1c003df4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003df8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003dfc:	2980618d 	st.w	$r13,$r12,24(0x18)
1c003e00:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e04:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c003e08:	2980518d 	st.w	$r13,$r12,20(0x14)
1c003e0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e10:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c003e14:	2980418d 	st.w	$r13,$r12,16(0x10)
1c003e18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e1c:	1400002d 	lu12i.w	$r13,1(0x1)
1c003e20:	03bcfdad 	ori	$r13,$r13,0xf3f
1c003e24:	2980118d 	st.w	$r13,$r12,4(0x4)
1c003e28:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e2c:	1400026d 	lu12i.w	$r13,19(0x13)
1c003e30:	03a201ad 	ori	$r13,$r13,0x880
1c003e34:	2980218d 	st.w	$r13,$r12,8(0x8)
1c003e38:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e3c:	29803180 	st.w	$r0,$r12,12(0xc)
1c003e40:	03400000 	andi	$r0,$r0,0x0
1c003e44:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003e48:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003e4c:	4c000020 	jirl	$r0,$r1,0

1c003e50 <timer_init>:
timer_init():
1c003e50:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c003e54:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c003e58:	2980e076 	st.w	$r22,$r3,56(0x38)
1c003e5c:	02810076 	addi.w	$r22,$r3,64(0x40)
1c003e60:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c003e64:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c003e68:	00150184 	move	$r4,$r12
1c003e6c:	57ff6bff 	bl	-152(0xfffff68) # 1c003dd4 <TIM_StructInit>
1c003e70:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c003e74:	1400002c 	lu12i.w	$r12,1(0x1)
1c003e78:	03bd018c 	ori	$r12,$r12,0xf40
1c003e7c:	001c31ac 	mul.w	$r12,$r13,$r12
1c003e80:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c003e84:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c003e88:	00150184 	move	$r4,$r12
1c003e8c:	57fe73ff 	bl	-400(0xffffe70) # 1c003cfc <TIM_Init>
1c003e90:	03400000 	andi	$r0,$r0,0x0
1c003e94:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c003e98:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c003e9c:	02810063 	addi.w	$r3,$r3,64(0x40)
1c003ea0:	4c000020 	jirl	$r0,$r1,0

1c003ea4 <TIM_GetITStatus>:
TIM_GetITStatus():
1c003ea4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003ea8:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003eac:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003eb0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003eb4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003eb8:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003ebc:	2880018d 	ld.w	$r13,$r12,0
1c003ec0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003ec4:	0014b1ac 	and	$r12,$r13,$r12
1c003ec8:	40001180 	beqz	$r12,16(0x10) # 1c003ed8 <TIM_GetITStatus+0x34>
1c003ecc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003ed0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003ed4:	50000800 	b	8(0x8) # 1c003edc <TIM_GetITStatus+0x38>
1c003ed8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003edc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ee0:	00150184 	move	$r4,$r12
1c003ee4:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003ee8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003eec:	4c000020 	jirl	$r0,$r1,0

1c003ef0 <TIM_ClearIT>:
TIM_ClearIT():
1c003ef0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003ef4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003ef8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003efc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003f00:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003f04:	2880018e 	ld.w	$r14,$r12,0
1c003f08:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003f0c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003f10:	001535cd 	or	$r13,$r14,$r13
1c003f14:	2980018d 	st.w	$r13,$r12,0
1c003f18:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003f1c:	03800d8c 	ori	$r12,$r12,0x3
1c003f20:	2a00018c 	ld.bu	$r12,$r12,0
1c003f24:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003f28:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003f2c:	03800d8c 	ori	$r12,$r12,0x3
1c003f30:	038005ad 	ori	$r13,$r13,0x1
1c003f34:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003f38:	2900018d 	st.b	$r13,$r12,0
1c003f3c:	03400000 	andi	$r0,$r0,0x0
1c003f40:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003f44:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003f48:	4c000020 	jirl	$r0,$r1,0

1c003f4c <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c003f4c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003f50:	29803061 	st.w	$r1,$r3,12(0xc)
1c003f54:	29802076 	st.w	$r22,$r3,8(0x8)
1c003f58:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003f5c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003f60:	028610c6 	addi.w	$r6,$r6,388(0x184)
1c003f64:	02804c05 	addi.w	$r5,$r0,19(0x13)
1c003f68:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003f6c:	02801084 	addi.w	$r4,$r4,4(0x4)
1c003f70:	57dc33ff 	bl	-9168(0xfffdc30) # 1c001ba0 <myprintf>
1c003f74:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003f78:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003f7c:	03808184 	ori	$r4,$r12,0x20
1c003f80:	57f7dfff 	bl	-2084(0xffff7dc) # 1c00375c <EXTI_ClearITPendingBit>
1c003f84:	03400000 	andi	$r0,$r0,0x0
1c003f88:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003f8c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003f90:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003f94:	4c000020 	jirl	$r0,$r1,0

1c003f98 <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c003f98:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003f9c:	29803061 	st.w	$r1,$r3,12(0xc)
1c003fa0:	29802076 	st.w	$r22,$r3,8(0x8)
1c003fa4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003fa8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003fac:	028540c6 	addi.w	$r6,$r6,336(0x150)
1c003fb0:	02806005 	addi.w	$r5,$r0,24(0x18)
1c003fb4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003fb8:	02bee084 	addi.w	$r4,$r4,-72(0xfb8)
1c003fbc:	57dbe7ff 	bl	-9244(0xfffdbe4) # 1c001ba0 <myprintf>
1c003fc0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c003fc4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003fc8:	03808184 	ori	$r4,$r12,0x20
1c003fcc:	57f793ff 	bl	-2160(0xffff790) # 1c00375c <EXTI_ClearITPendingBit>
1c003fd0:	03400000 	andi	$r0,$r0,0x0
1c003fd4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003fd8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003fdc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003fe0:	4c000020 	jirl	$r0,$r1,0

1c003fe4 <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c003fe4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003fe8:	29803061 	st.w	$r1,$r3,12(0xc)
1c003fec:	29802076 	st.w	$r22,$r3,8(0x8)
1c003ff0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003ff4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003ff8:	028470c6 	addi.w	$r6,$r6,284(0x11c)
1c003ffc:	02807405 	addi.w	$r5,$r0,29(0x1d)
1c004000:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004004:	02bdb084 	addi.w	$r4,$r4,-148(0xf6c)
1c004008:	57db9bff 	bl	-9320(0xfffdb98) # 1c001ba0 <myprintf>
1c00400c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c004010:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004014:	03808184 	ori	$r4,$r12,0x20
1c004018:	57f747ff 	bl	-2236(0xffff744) # 1c00375c <EXTI_ClearITPendingBit>
1c00401c:	03400000 	andi	$r0,$r0,0x0
1c004020:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004024:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004028:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00402c:	4c000020 	jirl	$r0,$r1,0

1c004030 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c004030:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004034:	29803061 	st.w	$r1,$r3,12(0xc)
1c004038:	29802076 	st.w	$r22,$r3,8(0x8)
1c00403c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004040:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004044:	0283a0c6 	addi.w	$r6,$r6,232(0xe8)
1c004048:	02808805 	addi.w	$r5,$r0,34(0x22)
1c00404c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004050:	02bc8084 	addi.w	$r4,$r4,-224(0xf20)
1c004054:	57db4fff 	bl	-9396(0xfffdb4c) # 1c001ba0 <myprintf>
1c004058:	02802005 	addi.w	$r5,$r0,8(0x8)
1c00405c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004060:	03808184 	ori	$r4,$r12,0x20
1c004064:	57f6fbff 	bl	-2312(0xffff6f8) # 1c00375c <EXTI_ClearITPendingBit>
1c004068:	03400000 	andi	$r0,$r0,0x0
1c00406c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004070:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004074:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004078:	4c000020 	jirl	$r0,$r1,0

1c00407c <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c00407c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004080:	29803061 	st.w	$r1,$r3,12(0xc)
1c004084:	29802076 	st.w	$r22,$r3,8(0x8)
1c004088:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00408c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004090:	0282d0c6 	addi.w	$r6,$r6,180(0xb4)
1c004094:	02809c05 	addi.w	$r5,$r0,39(0x27)
1c004098:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00409c:	02bb5084 	addi.w	$r4,$r4,-300(0xed4)
1c0040a0:	57db03ff 	bl	-9472(0xfffdb00) # 1c001ba0 <myprintf>
1c0040a4:	02804005 	addi.w	$r5,$r0,16(0x10)
1c0040a8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0040ac:	03808184 	ori	$r4,$r12,0x20
1c0040b0:	57f6afff 	bl	-2388(0xffff6ac) # 1c00375c <EXTI_ClearITPendingBit>
1c0040b4:	03400000 	andi	$r0,$r0,0x0
1c0040b8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0040bc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0040c0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0040c4:	4c000020 	jirl	$r0,$r1,0

1c0040c8 <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c0040c8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0040cc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0040d0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0040d4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0040d8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0040dc:	028200c6 	addi.w	$r6,$r6,128(0x80)
1c0040e0:	0280b005 	addi.w	$r5,$r0,44(0x2c)
1c0040e4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0040e8:	02ba2084 	addi.w	$r4,$r4,-376(0xe88)
1c0040ec:	57dab7ff 	bl	-9548(0xfffdab4) # 1c001ba0 <myprintf>
1c0040f0:	02808005 	addi.w	$r5,$r0,32(0x20)
1c0040f4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0040f8:	03808184 	ori	$r4,$r12,0x20
1c0040fc:	57f663ff 	bl	-2464(0xffff660) # 1c00375c <EXTI_ClearITPendingBit>
1c004100:	03400000 	andi	$r0,$r0,0x0
1c004104:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004108:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00410c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004110:	4c000020 	jirl	$r0,$r1,0

1c004114 <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c004114:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004118:	29803061 	st.w	$r1,$r3,12(0xc)
1c00411c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004120:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004124:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004128:	028130c6 	addi.w	$r6,$r6,76(0x4c)
1c00412c:	0280c405 	addi.w	$r5,$r0,49(0x31)
1c004130:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004134:	02b8f084 	addi.w	$r4,$r4,-452(0xe3c)
1c004138:	57da6bff 	bl	-9624(0xfffda68) # 1c001ba0 <myprintf>
1c00413c:	02810005 	addi.w	$r5,$r0,64(0x40)
1c004140:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004144:	03808184 	ori	$r4,$r12,0x20
1c004148:	57f617ff 	bl	-2540(0xffff614) # 1c00375c <EXTI_ClearITPendingBit>
1c00414c:	03400000 	andi	$r0,$r0,0x0
1c004150:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004154:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004158:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00415c:	4c000020 	jirl	$r0,$r1,0

1c004160 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c004160:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004164:	29803061 	st.w	$r1,$r3,12(0xc)
1c004168:	29802076 	st.w	$r22,$r3,8(0x8)
1c00416c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004170:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004174:	028060c6 	addi.w	$r6,$r6,24(0x18)
1c004178:	0280d805 	addi.w	$r5,$r0,54(0x36)
1c00417c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004180:	02b7c084 	addi.w	$r4,$r4,-528(0xdf0)
1c004184:	57da1fff 	bl	-9700(0xfffda1c) # 1c001ba0 <myprintf>
1c004188:	02820005 	addi.w	$r5,$r0,128(0x80)
1c00418c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004190:	03808184 	ori	$r4,$r12,0x20
1c004194:	57f5cbff 	bl	-2616(0xffff5c8) # 1c00375c <EXTI_ClearITPendingBit>
1c004198:	03400000 	andi	$r0,$r0,0x0
1c00419c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0041a0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0041a4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0041a8:	4c000020 	jirl	$r0,$r1,0

1c0041ac <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c0041ac:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0041b0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0041b4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0041b8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0041bc:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0041c0:	02bf90c6 	addi.w	$r6,$r6,-28(0xfe4)
1c0041c4:	0280ec05 	addi.w	$r5,$r0,59(0x3b)
1c0041c8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0041cc:	02b69084 	addi.w	$r4,$r4,-604(0xda4)
1c0041d0:	57d9d3ff 	bl	-9776(0xfffd9d0) # 1c001ba0 <myprintf>
1c0041d4:	02840005 	addi.w	$r5,$r0,256(0x100)
1c0041d8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0041dc:	03808184 	ori	$r4,$r12,0x20
1c0041e0:	57f57fff 	bl	-2692(0xffff57c) # 1c00375c <EXTI_ClearITPendingBit>
1c0041e4:	03400000 	andi	$r0,$r0,0x0
1c0041e8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0041ec:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0041f0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0041f4:	4c000020 	jirl	$r0,$r1,0

1c0041f8 <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c0041f8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0041fc:	29803061 	st.w	$r1,$r3,12(0xc)
1c004200:	29802076 	st.w	$r22,$r3,8(0x8)
1c004204:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004208:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00420c:	02bec0c6 	addi.w	$r6,$r6,-80(0xfb0)
1c004210:	02810005 	addi.w	$r5,$r0,64(0x40)
1c004214:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004218:	02b56084 	addi.w	$r4,$r4,-680(0xd58)
1c00421c:	57d987ff 	bl	-9852(0xfffd984) # 1c001ba0 <myprintf>
1c004220:	02880005 	addi.w	$r5,$r0,512(0x200)
1c004224:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004228:	03808184 	ori	$r4,$r12,0x20
1c00422c:	57f533ff 	bl	-2768(0xffff530) # 1c00375c <EXTI_ClearITPendingBit>
1c004230:	03400000 	andi	$r0,$r0,0x0
1c004234:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004238:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00423c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004240:	4c000020 	jirl	$r0,$r1,0

1c004244 <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c004244:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004248:	29803061 	st.w	$r1,$r3,12(0xc)
1c00424c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004250:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004254:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004258:	02bdf0c6 	addi.w	$r6,$r6,-132(0xf7c)
1c00425c:	02811405 	addi.w	$r5,$r0,69(0x45)
1c004260:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004264:	02b43084 	addi.w	$r4,$r4,-756(0xd0c)
1c004268:	57d93bff 	bl	-9928(0xfffd938) # 1c001ba0 <myprintf>
1c00426c:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c004270:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004274:	03808184 	ori	$r4,$r12,0x20
1c004278:	57f4e7ff 	bl	-2844(0xffff4e4) # 1c00375c <EXTI_ClearITPendingBit>
1c00427c:	03400000 	andi	$r0,$r0,0x0
1c004280:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004284:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004288:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00428c:	4c000020 	jirl	$r0,$r1,0

1c004290 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c004290:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004294:	29803061 	st.w	$r1,$r3,12(0xc)
1c004298:	29802076 	st.w	$r22,$r3,8(0x8)
1c00429c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0042a0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0042a4:	02bd20c6 	addi.w	$r6,$r6,-184(0xf48)
1c0042a8:	02812805 	addi.w	$r5,$r0,74(0x4a)
1c0042ac:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0042b0:	02b30084 	addi.w	$r4,$r4,-832(0xcc0)
1c0042b4:	57d8efff 	bl	-10004(0xfffd8ec) # 1c001ba0 <myprintf>
1c0042b8:	03a00005 	ori	$r5,$r0,0x800
1c0042bc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0042c0:	03808184 	ori	$r4,$r12,0x20
1c0042c4:	57f49bff 	bl	-2920(0xffff498) # 1c00375c <EXTI_ClearITPendingBit>
1c0042c8:	03400000 	andi	$r0,$r0,0x0
1c0042cc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0042d0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0042d4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0042d8:	4c000020 	jirl	$r0,$r1,0

1c0042dc <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c0042dc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0042e0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0042e4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0042e8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0042ec:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0042f0:	02bc50c6 	addi.w	$r6,$r6,-236(0xf14)
1c0042f4:	02813c05 	addi.w	$r5,$r0,79(0x4f)
1c0042f8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0042fc:	02b1d084 	addi.w	$r4,$r4,-908(0xc74)
1c004300:	57d8a3ff 	bl	-10080(0xfffd8a0) # 1c001ba0 <myprintf>
1c004304:	14000025 	lu12i.w	$r5,1(0x1)
1c004308:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00430c:	03808184 	ori	$r4,$r12,0x20
1c004310:	57f44fff 	bl	-2996(0xffff44c) # 1c00375c <EXTI_ClearITPendingBit>
1c004314:	03400000 	andi	$r0,$r0,0x0
1c004318:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00431c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004320:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004324:	4c000020 	jirl	$r0,$r1,0

1c004328 <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c004328:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00432c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004330:	29802076 	st.w	$r22,$r3,8(0x8)
1c004334:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004338:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00433c:	02bb80c6 	addi.w	$r6,$r6,-288(0xee0)
1c004340:	02815005 	addi.w	$r5,$r0,84(0x54)
1c004344:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004348:	02b0a084 	addi.w	$r4,$r4,-984(0xc28)
1c00434c:	57d857ff 	bl	-10156(0xfffd854) # 1c001ba0 <myprintf>
1c004350:	14000045 	lu12i.w	$r5,2(0x2)
1c004354:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004358:	03808184 	ori	$r4,$r12,0x20
1c00435c:	57f403ff 	bl	-3072(0xffff400) # 1c00375c <EXTI_ClearITPendingBit>
1c004360:	03400000 	andi	$r0,$r0,0x0
1c004364:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004368:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00436c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004370:	4c000020 	jirl	$r0,$r1,0

1c004374 <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c004374:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004378:	29803061 	st.w	$r1,$r3,12(0xc)
1c00437c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004380:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004384:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004388:	02bab0c6 	addi.w	$r6,$r6,-340(0xeac)
1c00438c:	02816405 	addi.w	$r5,$r0,89(0x59)
1c004390:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004394:	02af7084 	addi.w	$r4,$r4,-1060(0xbdc)
1c004398:	57d80bff 	bl	-10232(0xfffd808) # 1c001ba0 <myprintf>
1c00439c:	14000085 	lu12i.w	$r5,4(0x4)
1c0043a0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0043a4:	03808184 	ori	$r4,$r12,0x20
1c0043a8:	57f3b7ff 	bl	-3148(0xffff3b4) # 1c00375c <EXTI_ClearITPendingBit>
1c0043ac:	03400000 	andi	$r0,$r0,0x0
1c0043b0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0043b4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0043b8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0043bc:	4c000020 	jirl	$r0,$r1,0

1c0043c0 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c0043c0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0043c4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0043c8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0043cc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0043d0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0043d4:	02b9e0c6 	addi.w	$r6,$r6,-392(0xe78)
1c0043d8:	02817805 	addi.w	$r5,$r0,94(0x5e)
1c0043dc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0043e0:	02ae4084 	addi.w	$r4,$r4,-1136(0xb90)
1c0043e4:	57d7bfff 	bl	-10308(0xfffd7bc) # 1c001ba0 <myprintf>
1c0043e8:	14000105 	lu12i.w	$r5,8(0x8)
1c0043ec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0043f0:	03808184 	ori	$r4,$r12,0x20
1c0043f4:	57f36bff 	bl	-3224(0xffff368) # 1c00375c <EXTI_ClearITPendingBit>
1c0043f8:	03400000 	andi	$r0,$r0,0x0
1c0043fc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004400:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004404:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004408:	4c000020 	jirl	$r0,$r1,0

1c00440c <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c00440c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004410:	29803061 	st.w	$r1,$r3,12(0xc)
1c004414:	29802076 	st.w	$r22,$r3,8(0x8)
1c004418:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00441c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004420:	02b910c6 	addi.w	$r6,$r6,-444(0xe44)
1c004424:	02819005 	addi.w	$r5,$r0,100(0x64)
1c004428:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00442c:	02ad1084 	addi.w	$r4,$r4,-1212(0xb44)
1c004430:	57d773ff 	bl	-10384(0xfffd770) # 1c001ba0 <myprintf>
1c004434:	14000205 	lu12i.w	$r5,16(0x10)
1c004438:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00443c:	03808184 	ori	$r4,$r12,0x20
1c004440:	57f31fff 	bl	-3300(0xffff31c) # 1c00375c <EXTI_ClearITPendingBit>
1c004444:	03400000 	andi	$r0,$r0,0x0
1c004448:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00444c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004450:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004454:	4c000020 	jirl	$r0,$r1,0

1c004458 <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c004458:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00445c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004460:	29802076 	st.w	$r22,$r3,8(0x8)
1c004464:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004468:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00446c:	02b840c6 	addi.w	$r6,$r6,-496(0xe10)
1c004470:	0281a405 	addi.w	$r5,$r0,105(0x69)
1c004474:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004478:	02abe084 	addi.w	$r4,$r4,-1288(0xaf8)
1c00447c:	57d727ff 	bl	-10460(0xfffd724) # 1c001ba0 <myprintf>
1c004480:	14000405 	lu12i.w	$r5,32(0x20)
1c004484:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004488:	03808184 	ori	$r4,$r12,0x20
1c00448c:	57f2d3ff 	bl	-3376(0xffff2d0) # 1c00375c <EXTI_ClearITPendingBit>
1c004490:	03400000 	andi	$r0,$r0,0x0
1c004494:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004498:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00449c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0044a0:	4c000020 	jirl	$r0,$r1,0

1c0044a4 <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c0044a4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0044a8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0044ac:	29802076 	st.w	$r22,$r3,8(0x8)
1c0044b0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0044b4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0044b8:	02b770c6 	addi.w	$r6,$r6,-548(0xddc)
1c0044bc:	0281b805 	addi.w	$r5,$r0,110(0x6e)
1c0044c0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0044c4:	02aab084 	addi.w	$r4,$r4,-1364(0xaac)
1c0044c8:	57d6dbff 	bl	-10536(0xfffd6d8) # 1c001ba0 <myprintf>
1c0044cc:	14000805 	lu12i.w	$r5,64(0x40)
1c0044d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0044d4:	03808184 	ori	$r4,$r12,0x20
1c0044d8:	57f287ff 	bl	-3452(0xffff284) # 1c00375c <EXTI_ClearITPendingBit>
1c0044dc:	03400000 	andi	$r0,$r0,0x0
1c0044e0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0044e4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0044e8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0044ec:	4c000020 	jirl	$r0,$r1,0

1c0044f0 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c0044f0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0044f4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0044f8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0044fc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004500:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004504:	02b6a0c6 	addi.w	$r6,$r6,-600(0xda8)
1c004508:	0281cc05 	addi.w	$r5,$r0,115(0x73)
1c00450c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004510:	02a98084 	addi.w	$r4,$r4,-1440(0xa60)
1c004514:	57d68fff 	bl	-10612(0xfffd68c) # 1c001ba0 <myprintf>
1c004518:	14001005 	lu12i.w	$r5,128(0x80)
1c00451c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004520:	03808184 	ori	$r4,$r12,0x20
1c004524:	57f23bff 	bl	-3528(0xffff238) # 1c00375c <EXTI_ClearITPendingBit>
1c004528:	03400000 	andi	$r0,$r0,0x0
1c00452c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004530:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004534:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004538:	4c000020 	jirl	$r0,$r1,0

1c00453c <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c00453c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004540:	29803061 	st.w	$r1,$r3,12(0xc)
1c004544:	29802076 	st.w	$r22,$r3,8(0x8)
1c004548:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00454c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004550:	02b5d0c6 	addi.w	$r6,$r6,-652(0xd74)
1c004554:	0281e005 	addi.w	$r5,$r0,120(0x78)
1c004558:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00455c:	02a85084 	addi.w	$r4,$r4,-1516(0xa14)
1c004560:	57d643ff 	bl	-10688(0xfffd640) # 1c001ba0 <myprintf>
1c004564:	14002005 	lu12i.w	$r5,256(0x100)
1c004568:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00456c:	03808184 	ori	$r4,$r12,0x20
1c004570:	57f1efff 	bl	-3604(0xffff1ec) # 1c00375c <EXTI_ClearITPendingBit>
1c004574:	03400000 	andi	$r0,$r0,0x0
1c004578:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00457c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004580:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004584:	4c000020 	jirl	$r0,$r1,0

1c004588 <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c004588:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00458c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004590:	29802076 	st.w	$r22,$r3,8(0x8)
1c004594:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004598:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00459c:	02b500c6 	addi.w	$r6,$r6,-704(0xd40)
1c0045a0:	0281f405 	addi.w	$r5,$r0,125(0x7d)
1c0045a4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0045a8:	02a72084 	addi.w	$r4,$r4,-1592(0x9c8)
1c0045ac:	57d5f7ff 	bl	-10764(0xfffd5f4) # 1c001ba0 <myprintf>
1c0045b0:	14004005 	lu12i.w	$r5,512(0x200)
1c0045b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0045b8:	03808184 	ori	$r4,$r12,0x20
1c0045bc:	57f1a3ff 	bl	-3680(0xffff1a0) # 1c00375c <EXTI_ClearITPendingBit>
1c0045c0:	03400000 	andi	$r0,$r0,0x0
1c0045c4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0045c8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0045cc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0045d0:	4c000020 	jirl	$r0,$r1,0

1c0045d4 <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c0045d4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0045d8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0045dc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0045e0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0045e4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0045e8:	02b430c6 	addi.w	$r6,$r6,-756(0xd0c)
1c0045ec:	02820805 	addi.w	$r5,$r0,130(0x82)
1c0045f0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0045f4:	02a5f084 	addi.w	$r4,$r4,-1668(0x97c)
1c0045f8:	57d5abff 	bl	-10840(0xfffd5a8) # 1c001ba0 <myprintf>
1c0045fc:	14008005 	lu12i.w	$r5,1024(0x400)
1c004600:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004604:	03808184 	ori	$r4,$r12,0x20
1c004608:	57f157ff 	bl	-3756(0xffff154) # 1c00375c <EXTI_ClearITPendingBit>
1c00460c:	03400000 	andi	$r0,$r0,0x0
1c004610:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004614:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004618:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00461c:	4c000020 	jirl	$r0,$r1,0

1c004620 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c004620:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004624:	29803061 	st.w	$r1,$r3,12(0xc)
1c004628:	29802076 	st.w	$r22,$r3,8(0x8)
1c00462c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004630:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004634:	02b360c6 	addi.w	$r6,$r6,-808(0xcd8)
1c004638:	02821c05 	addi.w	$r5,$r0,135(0x87)
1c00463c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004640:	02a4c084 	addi.w	$r4,$r4,-1744(0x930)
1c004644:	57d55fff 	bl	-10916(0xfffd55c) # 1c001ba0 <myprintf>
1c004648:	14010005 	lu12i.w	$r5,2048(0x800)
1c00464c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004650:	03808184 	ori	$r4,$r12,0x20
1c004654:	57f10bff 	bl	-3832(0xffff108) # 1c00375c <EXTI_ClearITPendingBit>
1c004658:	03400000 	andi	$r0,$r0,0x0
1c00465c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004660:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004664:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004668:	4c000020 	jirl	$r0,$r1,0

1c00466c <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c00466c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004670:	29803061 	st.w	$r1,$r3,12(0xc)
1c004674:	29802076 	st.w	$r22,$r3,8(0x8)
1c004678:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00467c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004680:	02b290c6 	addi.w	$r6,$r6,-860(0xca4)
1c004684:	02823005 	addi.w	$r5,$r0,140(0x8c)
1c004688:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00468c:	02a39084 	addi.w	$r4,$r4,-1820(0x8e4)
1c004690:	57d513ff 	bl	-10992(0xfffd510) # 1c001ba0 <myprintf>
1c004694:	14020005 	lu12i.w	$r5,4096(0x1000)
1c004698:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00469c:	03808184 	ori	$r4,$r12,0x20
1c0046a0:	57f0bfff 	bl	-3908(0xffff0bc) # 1c00375c <EXTI_ClearITPendingBit>
1c0046a4:	03400000 	andi	$r0,$r0,0x0
1c0046a8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0046ac:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0046b0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0046b4:	4c000020 	jirl	$r0,$r1,0

1c0046b8 <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c0046b8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0046bc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0046c0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0046c4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0046c8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0046cc:	02b1c0c6 	addi.w	$r6,$r6,-912(0xc70)
1c0046d0:	02824405 	addi.w	$r5,$r0,145(0x91)
1c0046d4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0046d8:	02a26084 	addi.w	$r4,$r4,-1896(0x898)
1c0046dc:	57d4c7ff 	bl	-11068(0xfffd4c4) # 1c001ba0 <myprintf>
1c0046e0:	14040005 	lu12i.w	$r5,8192(0x2000)
1c0046e4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0046e8:	03808184 	ori	$r4,$r12,0x20
1c0046ec:	57f073ff 	bl	-3984(0xffff070) # 1c00375c <EXTI_ClearITPendingBit>
1c0046f0:	03400000 	andi	$r0,$r0,0x0
1c0046f4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0046f8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0046fc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004700:	4c000020 	jirl	$r0,$r1,0

1c004704 <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c004704:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004708:	29803061 	st.w	$r1,$r3,12(0xc)
1c00470c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004710:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004714:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004718:	02b0f0c6 	addi.w	$r6,$r6,-964(0xc3c)
1c00471c:	02825805 	addi.w	$r5,$r0,150(0x96)
1c004720:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004724:	02a13084 	addi.w	$r4,$r4,-1972(0x84c)
1c004728:	57d47bff 	bl	-11144(0xfffd478) # 1c001ba0 <myprintf>
1c00472c:	14080005 	lu12i.w	$r5,16384(0x4000)
1c004730:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004734:	03808184 	ori	$r4,$r12,0x20
1c004738:	57f027ff 	bl	-4060(0xffff024) # 1c00375c <EXTI_ClearITPendingBit>
1c00473c:	03400000 	andi	$r0,$r0,0x0
1c004740:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004744:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004748:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00474c:	4c000020 	jirl	$r0,$r1,0

1c004750 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c004750:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004754:	29803061 	st.w	$r1,$r3,12(0xc)
1c004758:	29802076 	st.w	$r22,$r3,8(0x8)
1c00475c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004760:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004764:	02b020c6 	addi.w	$r6,$r6,-1016(0xc08)
1c004768:	02826c05 	addi.w	$r5,$r0,155(0x9b)
1c00476c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004770:	02a00084 	addi.w	$r4,$r4,-2048(0x800)
1c004774:	57d42fff 	bl	-11220(0xfffd42c) # 1c001ba0 <myprintf>
1c004778:	14100005 	lu12i.w	$r5,32768(0x8000)
1c00477c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004780:	03808184 	ori	$r4,$r12,0x20
1c004784:	57efdbff 	bl	-4136(0xfffefd8) # 1c00375c <EXTI_ClearITPendingBit>
1c004788:	03400000 	andi	$r0,$r0,0x0
1c00478c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004790:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004794:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004798:	4c000020 	jirl	$r0,$r1,0

1c00479c <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c00479c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0047a0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0047a4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0047a8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0047ac:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0047b0:	02af50c6 	addi.w	$r6,$r6,-1068(0xbd4)
1c0047b4:	02828005 	addi.w	$r5,$r0,160(0xa0)
1c0047b8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0047bc:	029ed084 	addi.w	$r4,$r4,1972(0x7b4)
1c0047c0:	57d3e3ff 	bl	-11296(0xfffd3e0) # 1c001ba0 <myprintf>
1c0047c4:	14200005 	lu12i.w	$r5,65536(0x10000)
1c0047c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0047cc:	03808184 	ori	$r4,$r12,0x20
1c0047d0:	57ef8fff 	bl	-4212(0xfffef8c) # 1c00375c <EXTI_ClearITPendingBit>
1c0047d4:	03400000 	andi	$r0,$r0,0x0
1c0047d8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0047dc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0047e0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0047e4:	4c000020 	jirl	$r0,$r1,0

1c0047e8 <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c0047e8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0047ec:	29803061 	st.w	$r1,$r3,12(0xc)
1c0047f0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0047f4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0047f8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0047fc:	02ae80c6 	addi.w	$r6,$r6,-1120(0xba0)
1c004800:	02829805 	addi.w	$r5,$r0,166(0xa6)
1c004804:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004808:	029da084 	addi.w	$r4,$r4,1896(0x768)
1c00480c:	57d397ff 	bl	-11372(0xfffd394) # 1c001ba0 <myprintf>
1c004810:	14400005 	lu12i.w	$r5,131072(0x20000)
1c004814:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004818:	03808184 	ori	$r4,$r12,0x20
1c00481c:	57ef43ff 	bl	-4288(0xfffef40) # 1c00375c <EXTI_ClearITPendingBit>
1c004820:	03400000 	andi	$r0,$r0,0x0
1c004824:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004828:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00482c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004830:	4c000020 	jirl	$r0,$r1,0

1c004834 <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c004834:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004838:	29803061 	st.w	$r1,$r3,12(0xc)
1c00483c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004840:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004844:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004848:	02adb0c6 	addi.w	$r6,$r6,-1172(0xb6c)
1c00484c:	0282ac05 	addi.w	$r5,$r0,171(0xab)
1c004850:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004854:	029c7084 	addi.w	$r4,$r4,1820(0x71c)
1c004858:	57d34bff 	bl	-11448(0xfffd348) # 1c001ba0 <myprintf>
1c00485c:	14800005 	lu12i.w	$r5,262144(0x40000)
1c004860:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004864:	03808184 	ori	$r4,$r12,0x20
1c004868:	57eef7ff 	bl	-4364(0xfffeef4) # 1c00375c <EXTI_ClearITPendingBit>
1c00486c:	03400000 	andi	$r0,$r0,0x0
1c004870:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004874:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004878:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00487c:	4c000020 	jirl	$r0,$r1,0

1c004880 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c004880:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004884:	29803061 	st.w	$r1,$r3,12(0xc)
1c004888:	29802076 	st.w	$r22,$r3,8(0x8)
1c00488c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004890:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004894:	02ace0c6 	addi.w	$r6,$r6,-1224(0xb38)
1c004898:	0282c005 	addi.w	$r5,$r0,176(0xb0)
1c00489c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0048a0:	029b4084 	addi.w	$r4,$r4,1744(0x6d0)
1c0048a4:	57d2ffff 	bl	-11524(0xfffd2fc) # 1c001ba0 <myprintf>
1c0048a8:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c0048ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0048b0:	03808184 	ori	$r4,$r12,0x20
1c0048b4:	57eeabff 	bl	-4440(0xfffeea8) # 1c00375c <EXTI_ClearITPendingBit>
1c0048b8:	03400000 	andi	$r0,$r0,0x0
1c0048bc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0048c0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0048c4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0048c8:	4c000020 	jirl	$r0,$r1,0

1c0048cc <ext_handler>:
ext_handler():
1c0048cc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0048d0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0048d4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0048d8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0048dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0048e0:	0380f18c 	ori	$r12,$r12,0x3c
1c0048e4:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c0048e8:	2980018d 	st.w	$r13,$r12,0
1c0048ec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0048f0:	0380818c 	ori	$r12,$r12,0x20
1c0048f4:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c0048f8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0048fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004900:	0380818c 	ori	$r12,$r12,0x20
1c004904:	2880018c 	ld.w	$r12,$r12,0
1c004908:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00490c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004910:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004914:	0014b1ac 	and	$r12,$r13,$r12
1c004918:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00491c:	03400000 	andi	$r0,$r0,0x0
1c004920:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004924:	50004000 	b	64(0x40) # 1c004964 <ext_handler+0x98>
1c004928:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c00492c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004930:	0017b1ac 	srl.w	$r12,$r13,$r12
1c004934:	0340058c 	andi	$r12,$r12,0x1
1c004938:	40002180 	beqz	$r12,32(0x20) # 1c004958 <ext_handler+0x8c>
1c00493c:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c004940:	029b81ad 	addi.w	$r13,$r13,1760(0x6e0)
1c004944:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004948:	0040898c 	slli.w	$r12,$r12,0x2
1c00494c:	001031ac 	add.w	$r12,$r13,$r12
1c004950:	2880018c 	ld.w	$r12,$r12,0
1c004954:	4c000181 	jirl	$r1,$r12,0
1c004958:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00495c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004960:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004964:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004968:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c00496c:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c004928 <ext_handler+0x5c>
1c004970:	03400000 	andi	$r0,$r0,0x0
1c004974:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004978:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00497c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004980:	4c000020 	jirl	$r0,$r1,0

1c004984 <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c004984:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004988:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00498c:	29806076 	st.w	$r22,$r3,24(0x18)
1c004990:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004994:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004998:	0380f18c 	ori	$r12,$r12,0x3c
1c00499c:	1400020d 	lu12i.w	$r13,16(0x10)
1c0049a0:	2980018d 	st.w	$r13,$r12,0
1c0049a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0049a8:	0380118c 	ori	$r12,$r12,0x4
1c0049ac:	2880018c 	ld.w	$r12,$r12,0
1c0049b0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0049b4:	57eefbff 	bl	-4360(0xfffeef8) # 1c0038ac <WDG_DogFeed>
1c0049b8:	02801804 	addi.w	$r4,$r0,6(0x6)
1c0049bc:	57e89fff 	bl	-5988(0xfffe89c) # 1c003258 <Wake_Set>
1c0049c0:	03400000 	andi	$r0,$r0,0x0
1c0049c4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0049c8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0049cc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0049d0:	4c000020 	jirl	$r0,$r1,0

1c0049d4 <TOUCH>:
TOUCH():
1c0049d4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0049d8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0049dc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0049e0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0049e4:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c0049e8:	0380118c 	ori	$r12,$r12,0x4
1c0049ec:	2880018c 	ld.w	$r12,$r12,0
1c0049f0:	0044c18c 	srli.w	$r12,$r12,0x10
1c0049f4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0049f8:	037ffd8c 	andi	$r12,$r12,0xfff
1c0049fc:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c004a00:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004a04:	0380118c 	ori	$r12,$r12,0x4
1c004a08:	2880018c 	ld.w	$r12,$r12,0
1c004a0c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004a10:	03403d8c 	andi	$r12,$r12,0xf
1c004a14:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c004a18:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a1c:	0380f18c 	ori	$r12,$r12,0x3c
1c004a20:	1400040d 	lu12i.w	$r13,32(0x20)
1c004a24:	2980018d 	st.w	$r13,$r12,0
1c004a28:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004a2c:	0380118c 	ori	$r12,$r12,0x4
1c004a30:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c004a34:	2980018d 	st.w	$r13,$r12,0
1c004a38:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c004a3c:	00150184 	move	$r4,$r12
1c004a40:	57efdfff 	bl	-4132(0xfffefdc) # 1c003a1c <Printf_KeyType>
1c004a44:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c004a48:	00150184 	move	$r4,$r12
1c004a4c:	57ef57ff 	bl	-4268(0xfffef54) # 1c0039a0 <Printf_KeyChannel>
1c004a50:	57f05bff 	bl	-4008(0xffff058) # 1c003aa8 <Printf_KeyVal>
1c004a54:	03400000 	andi	$r0,$r0,0x0
1c004a58:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004a5c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004a60:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004a64:	4c000020 	jirl	$r0,$r1,0

1c004a68 <UART2_INT>:
UART2_INT():
1c004a68:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004a6c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004a70:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004a74:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a78:	0380f18c 	ori	$r12,$r12,0x3c
1c004a7c:	1400080d 	lu12i.w	$r13,64(0x40)
1c004a80:	2980018d 	st.w	$r13,$r12,0
1c004a84:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c004a88:	0380098c 	ori	$r12,$r12,0x2
1c004a8c:	2a00018c 	ld.bu	$r12,$r12,0
1c004a90:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004a94:	03400000 	andi	$r0,$r0,0x0
1c004a98:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004a9c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004aa0:	4c000020 	jirl	$r0,$r1,0

1c004aa4 <BAT_FAIL>:
BAT_FAIL():
1c004aa4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004aa8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004aac:	29806076 	st.w	$r22,$r3,24(0x18)
1c004ab0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004ab4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004ab8:	0380118c 	ori	$r12,$r12,0x4
1c004abc:	2880018c 	ld.w	$r12,$r12,0
1c004ac0:	0044cd8c 	srli.w	$r12,$r12,0x13
1c004ac4:	03407d8c 	andi	$r12,$r12,0x1f
1c004ac8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004acc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004ad0:	0380118c 	ori	$r12,$r12,0x4
1c004ad4:	2880018e 	ld.w	$r14,$r12,0
1c004ad8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004adc:	0380f18c 	ori	$r12,$r12,0x3c
1c004ae0:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c004ae4:	0014b5cd 	and	$r13,$r14,$r13
1c004ae8:	2980018d 	st.w	$r13,$r12,0
1c004aec:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004af0:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c004af4:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c004b64 <BAT_FAIL+0xc0>
1c004af8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004afc:	0040898d 	slli.w	$r13,$r12,0x2
1c004b00:	1c00004c 	pcaddu12i	$r12,2(0x2)
1c004b04:	0296718c 	addi.w	$r12,$r12,1436(0x59c)
1c004b08:	001031ac 	add.w	$r12,$r13,$r12
1c004b0c:	2880018c 	ld.w	$r12,$r12,0
1c004b10:	4c000180 	jirl	$r0,$r12,0
1c004b14:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004b18:	02927084 	addi.w	$r4,$r4,1180(0x49c)
1c004b1c:	57d087ff 	bl	-12156(0xfffd084) # 1c001ba0 <myprintf>
1c004b20:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b24:	0380118c 	ori	$r12,$r12,0x4
1c004b28:	29800180 	st.w	$r0,$r12,0
1c004b2c:	50003c00 	b	60(0x3c) # 1c004b68 <BAT_FAIL+0xc4>
1c004b30:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004b34:	0292a084 	addi.w	$r4,$r4,1192(0x4a8)
1c004b38:	57d06bff 	bl	-12184(0xfffd068) # 1c001ba0 <myprintf>
1c004b3c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b40:	0380118c 	ori	$r12,$r12,0x4
1c004b44:	2880018e 	ld.w	$r14,$r12,0
1c004b48:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b4c:	0380118c 	ori	$r12,$r12,0x4
1c004b50:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c004b54:	03bffdad 	ori	$r13,$r13,0xfff
1c004b58:	0014b5cd 	and	$r13,$r14,$r13
1c004b5c:	2980018d 	st.w	$r13,$r12,0
1c004b60:	50000800 	b	8(0x8) # 1c004b68 <BAT_FAIL+0xc4>
1c004b64:	03400000 	andi	$r0,$r0,0x0
1c004b68:	03400000 	andi	$r0,$r0,0x0
1c004b6c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004b70:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004b74:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004b78:	4c000020 	jirl	$r0,$r1,0

1c004b7c <TIM_SetCompare1>:
TIM_SetCompare1():
1c004b7c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004b80:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004b84:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004b88:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004b8c:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c004b90:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004b94:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c004b98:	5c005dac 	bne	$r13,$r12,92(0x5c) # 1c004bf4 <TIM_SetCompare1+0x78>
1c004b9c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004ba0:	0292218c 	addi.w	$r12,$r12,1160(0x488)
1c004ba4:	2880018c 	ld.w	$r12,$r12,0
1c004ba8:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004bac:	6400218d 	bge	$r12,$r13,32(0x20) # 1c004bcc <TIM_SetCompare1+0x50>
1c004bb0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004bb4:	0291d18c 	addi.w	$r12,$r12,1140(0x474)
1c004bb8:	2880018d 	ld.w	$r13,$r12,0
1c004bbc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004bc0:	0291b18c 	addi.w	$r12,$r12,1132(0x46c)
1c004bc4:	2980018d 	st.w	$r13,$r12,0
1c004bc8:	50002c00 	b	44(0x2c) # 1c004bf4 <TIM_SetCompare1+0x78>
1c004bcc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004bd0:	64001580 	bge	$r12,$r0,20(0x14) # 1c004be4 <TIM_SetCompare1+0x68>
1c004bd4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004bd8:	0291518c 	addi.w	$r12,$r12,1108(0x454)
1c004bdc:	29800180 	st.w	$r0,$r12,0
1c004be0:	50001400 	b	20(0x14) # 1c004bf4 <TIM_SetCompare1+0x78>
1c004be4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004be8:	0291118c 	addi.w	$r12,$r12,1092(0x444)
1c004bec:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004bf0:	2980018d 	st.w	$r13,$r12,0
1c004bf4:	03400000 	andi	$r0,$r0,0x0
1c004bf8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004bfc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004c00:	4c000020 	jirl	$r0,$r1,0

1c004c04 <intc_handler>:
intc_handler():
1c004c04:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004c08:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004c0c:	29806076 	st.w	$r22,$r3,24(0x18)
1c004c10:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004c14:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004c18:	0380158c 	ori	$r12,$r12,0x5
1c004c1c:	2a00018c 	ld.bu	$r12,$r12,0
1c004c20:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004c24:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004c28:	0340058c 	andi	$r12,$r12,0x1
1c004c2c:	4000f580 	beqz	$r12,244(0xf4) # 1c004d20 <intc_handler+0x11c>
1c004c30:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004c34:	57f273ff 	bl	-3472(0xffff270) # 1c003ea4 <TIM_GetITStatus>
1c004c38:	0015008c 	move	$r12,$r4
1c004c3c:	4000e580 	beqz	$r12,228(0xe4) # 1c004d20 <intc_handler+0x11c>
1c004c40:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004c44:	028f118c 	addi.w	$r12,$r12,964(0x3c4)
1c004c48:	2880018d 	ld.w	$r13,$r12,0
1c004c4c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004c50:	028f718c 	addi.w	$r12,$r12,988(0x3dc)
1c004c54:	2880018c 	ld.w	$r12,$r12,0
1c004c58:	6000358d 	blt	$r12,$r13,52(0x34) # 1c004c8c <intc_handler+0x88>
1c004c5c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004c60:	028e918c 	addi.w	$r12,$r12,932(0x3a4)
1c004c64:	2880018c 	ld.w	$r12,$r12,0
1c004c68:	44002580 	bnez	$r12,36(0x24) # 1c004c8c <intc_handler+0x88>
1c004c6c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004c70:	02808804 	addi.w	$r4,$r0,34(0x22)
1c004c74:	57c977ff 	bl	-13964(0xfffc974) # 1c0015e8 <gpio_write_pin>
1c004c78:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004c7c:	028e218c 	addi.w	$r12,$r12,904(0x388)
1c004c80:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c004c84:	2980018d 	st.w	$r13,$r12,0
1c004c88:	50004c00 	b	76(0x4c) # 1c004cd4 <intc_handler+0xd0>
1c004c8c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004c90:	028de18c 	addi.w	$r12,$r12,888(0x378)
1c004c94:	2880018d 	ld.w	$r13,$r12,0
1c004c98:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004c9c:	028e418c 	addi.w	$r12,$r12,912(0x390)
1c004ca0:	2880018c 	ld.w	$r12,$r12,0
1c004ca4:	6400318d 	bge	$r12,$r13,48(0x30) # 1c004cd4 <intc_handler+0xd0>
1c004ca8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004cac:	028d618c 	addi.w	$r12,$r12,856(0x358)
1c004cb0:	2880018d 	ld.w	$r13,$r12,0
1c004cb4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004cb8:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c004cd4 <intc_handler+0xd0>
1c004cbc:	00150005 	move	$r5,$r0
1c004cc0:	02808804 	addi.w	$r4,$r0,34(0x22)
1c004cc4:	57c927ff 	bl	-14044(0xfffc924) # 1c0015e8 <gpio_write_pin>
1c004cc8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004ccc:	028ce18c 	addi.w	$r12,$r12,824(0x338)
1c004cd0:	29800180 	st.w	$r0,$r12,0
1c004cd4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004cd8:	028cc18c 	addi.w	$r12,$r12,816(0x330)
1c004cdc:	2880018c 	ld.w	$r12,$r12,0
1c004ce0:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c004ce4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004ce8:	028c818c 	addi.w	$r12,$r12,800(0x320)
1c004cec:	2980018d 	st.w	$r13,$r12,0
1c004cf0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004cf4:	028c518c 	addi.w	$r12,$r12,788(0x314)
1c004cf8:	2880018d 	ld.w	$r13,$r12,0
1c004cfc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004d00:	028ca18c 	addi.w	$r12,$r12,808(0x328)
1c004d04:	2880018c 	ld.w	$r12,$r12,0
1c004d08:	6400118d 	bge	$r12,$r13,16(0x10) # 1c004d18 <intc_handler+0x114>
1c004d0c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004d10:	028be18c 	addi.w	$r12,$r12,760(0x2f8)
1c004d14:	29800180 	st.w	$r0,$r12,0
1c004d18:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004d1c:	57f1d7ff 	bl	-3628(0xffff1d4) # 1c003ef0 <TIM_ClearIT>
1c004d20:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004d24:	0340118c 	andi	$r12,$r12,0x4
1c004d28:	40007d80 	beqz	$r12,124(0x7c) # 1c004da4 <intc_handler+0x1a0>
1c004d2c:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c004d30:	0380098c 	ori	$r12,$r12,0x2
1c004d34:	2a00018c 	ld.bu	$r12,$r12,0
1c004d38:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004d3c:	0340118c 	andi	$r12,$r12,0x4
1c004d40:	40005580 	beqz	$r12,84(0x54) # 1c004d94 <intc_handler+0x190>
1c004d44:	50003800 	b	56(0x38) # 1c004d7c <intc_handler+0x178>
1c004d48:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c004d4c:	57dd17ff 	bl	-8940(0xfffdd14) # 1c002a60 <UART_ReceiveData>
1c004d50:	0015008c 	move	$r12,$r4
1c004d54:	0015018d 	move	$r13,$r12
1c004d58:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004d5c:	028ac18c 	addi.w	$r12,$r12,688(0x2b0)
1c004d60:	2900018d 	st.b	$r13,$r12,0
1c004d64:	02800406 	addi.w	$r6,$r0,1(0x1)
1c004d68:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c004d6c:	028a80a5 	addi.w	$r5,$r5,672(0x2a0)
1c004d70:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004d74:	288a9084 	ld.w	$r4,$r4,676(0x2a4)
1c004d78:	5419dc00 	bl	6620(0x19dc) # 1c006754 <Queue_Wirte>
1c004d7c:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c004d80:	0380158c 	ori	$r12,$r12,0x5
1c004d84:	2a00018c 	ld.bu	$r12,$r12,0
1c004d88:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004d8c:	0340058c 	andi	$r12,$r12,0x1
1c004d90:	47ffb99f 	bnez	$r12,-72(0x7fffb8) # 1c004d48 <intc_handler+0x144>
1c004d94:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004d98:	03800d8c 	ori	$r12,$r12,0x3
1c004d9c:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c004da0:	2900018d 	st.b	$r13,$r12,0
1c004da4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004da8:	0340218c 	andi	$r12,$r12,0x8
1c004dac:	40007d80 	beqz	$r12,124(0x7c) # 1c004e28 <intc_handler+0x224>
1c004db0:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c004db4:	0380098c 	ori	$r12,$r12,0x2
1c004db8:	2a00018c 	ld.bu	$r12,$r12,0
1c004dbc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004dc0:	0340118c 	andi	$r12,$r12,0x4
1c004dc4:	40005580 	beqz	$r12,84(0x54) # 1c004e18 <intc_handler+0x214>
1c004dc8:	50003800 	b	56(0x38) # 1c004e00 <intc_handler+0x1fc>
1c004dcc:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c004dd0:	57dc93ff 	bl	-9072(0xfffdc90) # 1c002a60 <UART_ReceiveData>
1c004dd4:	0015008c 	move	$r12,$r4
1c004dd8:	0015018d 	move	$r13,$r12
1c004ddc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004de0:	0288b18c 	addi.w	$r12,$r12,556(0x22c)
1c004de4:	2900018d 	st.b	$r13,$r12,0
1c004de8:	02800406 	addi.w	$r6,$r0,1(0x1)
1c004dec:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c004df0:	028870a5 	addi.w	$r5,$r5,540(0x21c)
1c004df4:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004df8:	28888084 	ld.w	$r4,$r4,544(0x220)
1c004dfc:	54195800 	bl	6488(0x1958) # 1c006754 <Queue_Wirte>
1c004e00:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c004e04:	0380158c 	ori	$r12,$r12,0x5
1c004e08:	2a00018c 	ld.bu	$r12,$r12,0
1c004e0c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004e10:	0340058c 	andi	$r12,$r12,0x1
1c004e14:	47ffb99f 	bnez	$r12,-72(0x7fffb8) # 1c004dcc <intc_handler+0x1c8>
1c004e18:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004e1c:	03800d8c 	ori	$r12,$r12,0x3
1c004e20:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c004e24:	2900018d 	st.b	$r13,$r12,0
1c004e28:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004e2c:	03800d8c 	ori	$r12,$r12,0x3
1c004e30:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c004e34:	2900018d 	st.b	$r13,$r12,0
1c004e38:	03400000 	andi	$r0,$r0,0x0
1c004e3c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004e40:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004e44:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004e48:	4c000020 	jirl	$r0,$r1,0

1c004e4c <TIMER_HANDLER>:
TIMER_HANDLER():
1c004e4c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004e50:	29803061 	st.w	$r1,$r3,12(0xc)
1c004e54:	29802076 	st.w	$r22,$r3,8(0x8)
1c004e58:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004e5c:	57e3dbff 	bl	-7208(0xfffe3d8) # 1c003234 <Set_Timer_clear>
1c004e60:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004e64:	02867084 	addi.w	$r4,$r4,412(0x19c)
1c004e68:	57cd3bff 	bl	-13000(0xfffcd38) # 1c001ba0 <myprintf>
1c004e6c:	57e3abff 	bl	-7256(0xfffe3a8) # 1c003214 <Set_Timer_stop>
1c004e70:	03400000 	andi	$r0,$r0,0x0
1c004e74:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004e78:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004e7c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004e80:	4c000020 	jirl	$r0,$r1,0

1c004e84 <IIC_Delay>:
IIC_Delay():
1c004e84:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004e88:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004e8c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004e90:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004e94:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004e98:	50001000 	b	16(0x10) # 1c004ea8 <IIC_Delay+0x24>
1c004e9c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004ea0:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c004ea4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004ea8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004eac:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c004e9c <IIC_Delay+0x18>
1c004eb0:	03400000 	andi	$r0,$r0,0x0
1c004eb4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004eb8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004ebc:	4c000020 	jirl	$r0,$r1,0

1c004ec0 <IIC_Init>:
IIC_Init():
1c004ec0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004ec4:	29803061 	st.w	$r1,$r3,12(0xc)
1c004ec8:	29802076 	st.w	$r22,$r3,8(0x8)
1c004ecc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004ed0:	00150005 	move	$r5,$r0
1c004ed4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004ed8:	57c78bff 	bl	-14456(0xfffc788) # 1c001660 <gpio_pin_remap>
1c004edc:	00150005 	move	$r5,$r0
1c004ee0:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004ee4:	57c77fff 	bl	-14468(0xfffc77c) # 1c001660 <gpio_pin_remap>
1c004ee8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004eec:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004ef0:	57c97fff 	bl	-13956(0xfffc97c) # 1c00186c <gpio_set_direction>
1c004ef4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004ef8:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004efc:	57c973ff 	bl	-13968(0xfffc970) # 1c00186c <gpio_set_direction>
1c004f00:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004f04:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004f08:	57c6e3ff 	bl	-14624(0xfffc6e0) # 1c0015e8 <gpio_write_pin>
1c004f0c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004f10:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004f14:	57c6d7ff 	bl	-14636(0xfffc6d4) # 1c0015e8 <gpio_write_pin>
1c004f18:	03400000 	andi	$r0,$r0,0x0
1c004f1c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004f20:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004f24:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004f28:	4c000020 	jirl	$r0,$r1,0

1c004f2c <SDA_IN>:
SDA_IN():
1c004f2c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004f30:	29803061 	st.w	$r1,$r3,12(0xc)
1c004f34:	29802076 	st.w	$r22,$r3,8(0x8)
1c004f38:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004f3c:	00150005 	move	$r5,$r0
1c004f40:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004f44:	57c92bff 	bl	-14040(0xfffc928) # 1c00186c <gpio_set_direction>
1c004f48:	03400000 	andi	$r0,$r0,0x0
1c004f4c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004f50:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004f54:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004f58:	4c000020 	jirl	$r0,$r1,0

1c004f5c <SDA_OUT>:
SDA_OUT():
1c004f5c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004f60:	29803061 	st.w	$r1,$r3,12(0xc)
1c004f64:	29802076 	st.w	$r22,$r3,8(0x8)
1c004f68:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004f6c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004f70:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004f74:	57c8fbff 	bl	-14088(0xfffc8f8) # 1c00186c <gpio_set_direction>
1c004f78:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004f7c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004f80:	57c66bff 	bl	-14744(0xfffc668) # 1c0015e8 <gpio_write_pin>
1c004f84:	03400000 	andi	$r0,$r0,0x0
1c004f88:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004f8c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004f90:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004f94:	4c000020 	jirl	$r0,$r1,0

1c004f98 <IIC_Start>:
IIC_Start():
1c004f98:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004f9c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004fa0:	29802076 	st.w	$r22,$r3,8(0x8)
1c004fa4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004fa8:	57ffb7ff 	bl	-76(0xfffffb4) # 1c004f5c <SDA_OUT>
1c004fac:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004fb0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004fb4:	57c637ff 	bl	-14796(0xfffc634) # 1c0015e8 <gpio_write_pin>
1c004fb8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004fbc:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004fc0:	57c62bff 	bl	-14808(0xfffc628) # 1c0015e8 <gpio_write_pin>
1c004fc4:	57fec3ff 	bl	-320(0xffffec0) # 1c004e84 <IIC_Delay>
1c004fc8:	00150005 	move	$r5,$r0
1c004fcc:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004fd0:	57c61bff 	bl	-14824(0xfffc618) # 1c0015e8 <gpio_write_pin>
1c004fd4:	57feb3ff 	bl	-336(0xffffeb0) # 1c004e84 <IIC_Delay>
1c004fd8:	00150005 	move	$r5,$r0
1c004fdc:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004fe0:	57c60bff 	bl	-14840(0xfffc608) # 1c0015e8 <gpio_write_pin>
1c004fe4:	03400000 	andi	$r0,$r0,0x0
1c004fe8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004fec:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004ff0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004ff4:	4c000020 	jirl	$r0,$r1,0

1c004ff8 <IIC_Stop>:
IIC_Stop():
1c004ff8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004ffc:	29803061 	st.w	$r1,$r3,12(0xc)
1c005000:	29802076 	st.w	$r22,$r3,8(0x8)
1c005004:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005008:	57ff57ff 	bl	-172(0xfffff54) # 1c004f5c <SDA_OUT>
1c00500c:	00150005 	move	$r5,$r0
1c005010:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c005014:	57c5d7ff 	bl	-14892(0xfffc5d4) # 1c0015e8 <gpio_write_pin>
1c005018:	00150005 	move	$r5,$r0
1c00501c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005020:	57c5cbff 	bl	-14904(0xfffc5c8) # 1c0015e8 <gpio_write_pin>
1c005024:	57fe63ff 	bl	-416(0xffffe60) # 1c004e84 <IIC_Delay>
1c005028:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00502c:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c005030:	57c5bbff 	bl	-14920(0xfffc5b8) # 1c0015e8 <gpio_write_pin>
1c005034:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005038:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00503c:	57c5afff 	bl	-14932(0xfffc5ac) # 1c0015e8 <gpio_write_pin>
1c005040:	57fe47ff 	bl	-444(0xffffe44) # 1c004e84 <IIC_Delay>
1c005044:	03400000 	andi	$r0,$r0,0x0
1c005048:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00504c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005050:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005054:	4c000020 	jirl	$r0,$r1,0

1c005058 <IIC_Wait_Ack>:
IIC_Wait_Ack():
1c005058:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00505c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005060:	29806076 	st.w	$r22,$r3,24(0x18)
1c005064:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005068:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00506c:	57fec3ff 	bl	-320(0xffffec0) # 1c004f2c <SDA_IN>
1c005070:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005074:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005078:	57c573ff 	bl	-14992(0xfffc570) # 1c0015e8 <gpio_write_pin>
1c00507c:	57fe0bff 	bl	-504(0xffffe08) # 1c004e84 <IIC_Delay>
1c005080:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005084:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c005088:	57c563ff 	bl	-15008(0xfffc560) # 1c0015e8 <gpio_write_pin>
1c00508c:	57fdfbff 	bl	-520(0xffffdf8) # 1c004e84 <IIC_Delay>
1c005090:	50002800 	b	40(0x28) # 1c0050b8 <IIC_Wait_Ack+0x60>
1c005094:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005098:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00509c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0050a0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0050a4:	0283e80c 	addi.w	$r12,$r0,250(0xfa)
1c0050a8:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c0050b8 <IIC_Wait_Ack+0x60>
1c0050ac:	57ff4fff 	bl	-180(0xfffff4c) # 1c004ff8 <IIC_Stop>
1c0050b0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0050b4:	50002400 	b	36(0x24) # 1c0050d8 <IIC_Wait_Ack+0x80>
1c0050b8:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0050bc:	57c4dfff 	bl	-15140(0xfffc4dc) # 1c001598 <gpio_get_pin>
1c0050c0:	0015008c 	move	$r12,$r4
1c0050c4:	47ffd19f 	bnez	$r12,-48(0x7fffd0) # 1c005094 <IIC_Wait_Ack+0x3c>
1c0050c8:	00150005 	move	$r5,$r0
1c0050cc:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c0050d0:	57c51bff 	bl	-15080(0xfffc518) # 1c0015e8 <gpio_write_pin>
1c0050d4:	0015000c 	move	$r12,$r0
1c0050d8:	00150184 	move	$r4,$r12
1c0050dc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0050e0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0050e4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0050e8:	4c000020 	jirl	$r0,$r1,0

1c0050ec <IIC_Send_Byte>:
IIC_Send_Byte():
1c0050ec:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0050f0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0050f4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0050f8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0050fc:	0015008c 	move	$r12,$r4
1c005100:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c005104:	57fe5bff 	bl	-424(0xffffe58) # 1c004f5c <SDA_OUT>
1c005108:	00150005 	move	$r5,$r0
1c00510c:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c005110:	57c4dbff 	bl	-15144(0xfffc4d8) # 1c0015e8 <gpio_write_pin>
1c005114:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005118:	50006000 	b	96(0x60) # 1c005178 <IIC_Send_Byte+0x8c>
1c00511c:	283f7ecc 	ld.b	$r12,$r22,-33(0xfdf)
1c005120:	64001580 	bge	$r12,$r0,20(0x14) # 1c005134 <IIC_Send_Byte+0x48>
1c005124:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005128:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00512c:	57c4bfff 	bl	-15172(0xfffc4bc) # 1c0015e8 <gpio_write_pin>
1c005130:	50001000 	b	16(0x10) # 1c005140 <IIC_Send_Byte+0x54>
1c005134:	00150005 	move	$r5,$r0
1c005138:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00513c:	57c4afff 	bl	-15188(0xfffc4ac) # 1c0015e8 <gpio_write_pin>
1c005140:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c005144:	0040858c 	slli.w	$r12,$r12,0x1
1c005148:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c00514c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005150:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c005154:	57c497ff 	bl	-15212(0xfffc494) # 1c0015e8 <gpio_write_pin>
1c005158:	57fd2fff 	bl	-724(0xffffd2c) # 1c004e84 <IIC_Delay>
1c00515c:	00150005 	move	$r5,$r0
1c005160:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c005164:	57c487ff 	bl	-15228(0xfffc484) # 1c0015e8 <gpio_write_pin>
1c005168:	57fd1fff 	bl	-740(0xffffd1c) # 1c004e84 <IIC_Delay>
1c00516c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005170:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005174:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005178:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00517c:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005180:	6fff9d8d 	bgeu	$r12,$r13,-100(0x3ff9c) # 1c00511c <IIC_Send_Byte+0x30>
1c005184:	03400000 	andi	$r0,$r0,0x0
1c005188:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00518c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005190:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005194:	4c000020 	jirl	$r0,$r1,0

1c005198 <OLED_Hardware_Init>:
OLED_Hardware_Init():
1c005198:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00519c:	29803061 	st.w	$r1,$r3,12(0xc)
1c0051a0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0051a4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0051a8:	57fd1bff 	bl	-744(0xffffd18) # 1c004ec0 <IIC_Init>
1c0051ac:	03400000 	andi	$r0,$r0,0x0
1c0051b0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0051b4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0051b8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0051bc:	4c000020 	jirl	$r0,$r1,0

1c0051c0 <OLED_WR_Byte>:
OLED_WR_Byte():
1c0051c0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0051c4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0051c8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0051cc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0051d0:	0015008c 	move	$r12,$r4
1c0051d4:	001500ad 	move	$r13,$r5
1c0051d8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0051dc:	001501ac 	move	$r12,$r13
1c0051e0:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0051e4:	57fdb7ff 	bl	-588(0xffffdb4) # 1c004f98 <IIC_Start>
1c0051e8:	0281e004 	addi.w	$r4,$r0,120(0x78)
1c0051ec:	57ff03ff 	bl	-256(0xfffff00) # 1c0050ec <IIC_Send_Byte>
1c0051f0:	57fe6bff 	bl	-408(0xffffe68) # 1c005058 <IIC_Wait_Ack>
1c0051f4:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0051f8:	00150184 	move	$r4,$r12
1c0051fc:	57fef3ff 	bl	-272(0xffffef0) # 1c0050ec <IIC_Send_Byte>
1c005200:	57fe5bff 	bl	-424(0xffffe58) # 1c005058 <IIC_Wait_Ack>
1c005204:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005208:	00150184 	move	$r4,$r12
1c00520c:	57fee3ff 	bl	-288(0xffffee0) # 1c0050ec <IIC_Send_Byte>
1c005210:	57fe4bff 	bl	-440(0xffffe48) # 1c005058 <IIC_Wait_Ack>
1c005214:	57fde7ff 	bl	-540(0xffffde4) # 1c004ff8 <IIC_Stop>
1c005218:	03400000 	andi	$r0,$r0,0x0
1c00521c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005220:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005224:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005228:	4c000020 	jirl	$r0,$r1,0

1c00522c <OLED_Set_Pos>:
OLED_Set_Pos():
1c00522c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005230:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005234:	29806076 	st.w	$r22,$r3,24(0x18)
1c005238:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00523c:	0015008c 	move	$r12,$r4
1c005240:	001500ad 	move	$r13,$r5
1c005244:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005248:	001501ac 	move	$r12,$r13
1c00524c:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005250:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005254:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c005258:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00525c:	00150005 	move	$r5,$r0
1c005260:	00150184 	move	$r4,$r12
1c005264:	57ff5fff 	bl	-164(0xfffff5c) # 1c0051c0 <OLED_WR_Byte>
1c005268:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00526c:	0044918c 	srli.w	$r12,$r12,0x4
1c005270:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005274:	0380418c 	ori	$r12,$r12,0x10
1c005278:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00527c:	00150005 	move	$r5,$r0
1c005280:	00150184 	move	$r4,$r12
1c005284:	57ff3fff 	bl	-196(0xfffff3c) # 1c0051c0 <OLED_WR_Byte>
1c005288:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00528c:	03403d8c 	andi	$r12,$r12,0xf
1c005290:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005294:	00150005 	move	$r5,$r0
1c005298:	00150184 	move	$r4,$r12
1c00529c:	57ff27ff 	bl	-220(0xfffff24) # 1c0051c0 <OLED_WR_Byte>
1c0052a0:	03400000 	andi	$r0,$r0,0x0
1c0052a4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0052a8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0052ac:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0052b0:	4c000020 	jirl	$r0,$r1,0

1c0052b4 <OLED_Clear>:
OLED_Clear():
1c0052b4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0052b8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0052bc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0052c0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0052c4:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0052c8:	50006800 	b	104(0x68) # 1c005330 <OLED_Clear+0x7c>
1c0052cc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0052d0:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c0052d4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0052d8:	00150005 	move	$r5,$r0
1c0052dc:	00150184 	move	$r4,$r12
1c0052e0:	57fee3ff 	bl	-288(0xffffee0) # 1c0051c0 <OLED_WR_Byte>
1c0052e4:	00150005 	move	$r5,$r0
1c0052e8:	02800804 	addi.w	$r4,$r0,2(0x2)
1c0052ec:	57fed7ff 	bl	-300(0xffffed4) # 1c0051c0 <OLED_WR_Byte>
1c0052f0:	00150005 	move	$r5,$r0
1c0052f4:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0052f8:	57fecbff 	bl	-312(0xffffec8) # 1c0051c0 <OLED_WR_Byte>
1c0052fc:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005300:	50001c00 	b	28(0x1c) # 1c00531c <OLED_Clear+0x68>
1c005304:	02810005 	addi.w	$r5,$r0,64(0x40)
1c005308:	00150004 	move	$r4,$r0
1c00530c:	57feb7ff 	bl	-332(0xffffeb4) # 1c0051c0 <OLED_WR_Byte>
1c005310:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005314:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005318:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c00531c:	283fbacc 	ld.b	$r12,$r22,-18(0xfee)
1c005320:	67ffe580 	bge	$r12,$r0,-28(0x3ffe4) # 1c005304 <OLED_Clear+0x50>
1c005324:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005328:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00532c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005330:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005334:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005338:	6fff958d 	bgeu	$r12,$r13,-108(0x3ff94) # 1c0052cc <OLED_Clear+0x18>
1c00533c:	03400000 	andi	$r0,$r0,0x0
1c005340:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005344:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005348:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00534c:	4c000020 	jirl	$r0,$r1,0

1c005350 <OLED_Init>:
OLED_Init():
1c005350:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005354:	29803061 	st.w	$r1,$r3,12(0xc)
1c005358:	29802076 	st.w	$r22,$r3,8(0x8)
1c00535c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005360:	57fe3bff 	bl	-456(0xffffe38) # 1c005198 <OLED_Hardware_Init>
1c005364:	02819004 	addi.w	$r4,$r0,100(0x64)
1c005368:	57e2afff 	bl	-7508(0xfffe2ac) # 1c003614 <delay_ms>
1c00536c:	57ff4bff 	bl	-184(0xfffff48) # 1c0052b4 <OLED_Clear>
1c005370:	00150005 	move	$r5,$r0
1c005374:	00150004 	move	$r4,$r0
1c005378:	57feb7ff 	bl	-332(0xffffeb4) # 1c00522c <OLED_Set_Pos>
1c00537c:	00150005 	move	$r5,$r0
1c005380:	0282b804 	addi.w	$r4,$r0,174(0xae)
1c005384:	57fe3fff 	bl	-452(0xffffe3c) # 1c0051c0 <OLED_WR_Byte>
1c005388:	00150005 	move	$r5,$r0
1c00538c:	00150004 	move	$r4,$r0
1c005390:	57fe33ff 	bl	-464(0xffffe30) # 1c0051c0 <OLED_WR_Byte>
1c005394:	00150005 	move	$r5,$r0
1c005398:	02804004 	addi.w	$r4,$r0,16(0x10)
1c00539c:	57fe27ff 	bl	-476(0xffffe24) # 1c0051c0 <OLED_WR_Byte>
1c0053a0:	00150005 	move	$r5,$r0
1c0053a4:	02810004 	addi.w	$r4,$r0,64(0x40)
1c0053a8:	57fe1bff 	bl	-488(0xffffe18) # 1c0051c0 <OLED_WR_Byte>
1c0053ac:	00150005 	move	$r5,$r0
1c0053b0:	02820404 	addi.w	$r4,$r0,129(0x81)
1c0053b4:	57fe0fff 	bl	-500(0xffffe0c) # 1c0051c0 <OLED_WR_Byte>
1c0053b8:	00150005 	move	$r5,$r0
1c0053bc:	02833c04 	addi.w	$r4,$r0,207(0xcf)
1c0053c0:	57fe03ff 	bl	-512(0xffffe00) # 1c0051c0 <OLED_WR_Byte>
1c0053c4:	00150005 	move	$r5,$r0
1c0053c8:	02828404 	addi.w	$r4,$r0,161(0xa1)
1c0053cc:	57fdf7ff 	bl	-524(0xffffdf4) # 1c0051c0 <OLED_WR_Byte>
1c0053d0:	00150005 	move	$r5,$r0
1c0053d4:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c0053d8:	57fdebff 	bl	-536(0xffffde8) # 1c0051c0 <OLED_WR_Byte>
1c0053dc:	00150005 	move	$r5,$r0
1c0053e0:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c0053e4:	57fddfff 	bl	-548(0xffffddc) # 1c0051c0 <OLED_WR_Byte>
1c0053e8:	00150005 	move	$r5,$r0
1c0053ec:	0282a004 	addi.w	$r4,$r0,168(0xa8)
1c0053f0:	57fdd3ff 	bl	-560(0xffffdd0) # 1c0051c0 <OLED_WR_Byte>
1c0053f4:	00150005 	move	$r5,$r0
1c0053f8:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c0053fc:	57fdc7ff 	bl	-572(0xffffdc4) # 1c0051c0 <OLED_WR_Byte>
1c005400:	00150005 	move	$r5,$r0
1c005404:	02820404 	addi.w	$r4,$r0,129(0x81)
1c005408:	57fdbbff 	bl	-584(0xffffdb8) # 1c0051c0 <OLED_WR_Byte>
1c00540c:	00150005 	move	$r5,$r0
1c005410:	0283fc04 	addi.w	$r4,$r0,255(0xff)
1c005414:	57fdafff 	bl	-596(0xffffdac) # 1c0051c0 <OLED_WR_Byte>
1c005418:	00150005 	move	$r5,$r0
1c00541c:	02834c04 	addi.w	$r4,$r0,211(0xd3)
1c005420:	57fda3ff 	bl	-608(0xffffda0) # 1c0051c0 <OLED_WR_Byte>
1c005424:	00150005 	move	$r5,$r0
1c005428:	00150004 	move	$r4,$r0
1c00542c:	57fd97ff 	bl	-620(0xffffd94) # 1c0051c0 <OLED_WR_Byte>
1c005430:	00150005 	move	$r5,$r0
1c005434:	02835404 	addi.w	$r4,$r0,213(0xd5)
1c005438:	57fd8bff 	bl	-632(0xffffd88) # 1c0051c0 <OLED_WR_Byte>
1c00543c:	00150005 	move	$r5,$r0
1c005440:	02820004 	addi.w	$r4,$r0,128(0x80)
1c005444:	57fd7fff 	bl	-644(0xffffd7c) # 1c0051c0 <OLED_WR_Byte>
1c005448:	00150005 	move	$r5,$r0
1c00544c:	02836404 	addi.w	$r4,$r0,217(0xd9)
1c005450:	57fd73ff 	bl	-656(0xffffd70) # 1c0051c0 <OLED_WR_Byte>
1c005454:	00150005 	move	$r5,$r0
1c005458:	0283c404 	addi.w	$r4,$r0,241(0xf1)
1c00545c:	57fd67ff 	bl	-668(0xffffd64) # 1c0051c0 <OLED_WR_Byte>
1c005460:	00150005 	move	$r5,$r0
1c005464:	02836804 	addi.w	$r4,$r0,218(0xda)
1c005468:	57fd5bff 	bl	-680(0xffffd58) # 1c0051c0 <OLED_WR_Byte>
1c00546c:	00150005 	move	$r5,$r0
1c005470:	02804804 	addi.w	$r4,$r0,18(0x12)
1c005474:	57fd4fff 	bl	-692(0xffffd4c) # 1c0051c0 <OLED_WR_Byte>
1c005478:	00150005 	move	$r5,$r0
1c00547c:	02836c04 	addi.w	$r4,$r0,219(0xdb)
1c005480:	57fd43ff 	bl	-704(0xffffd40) # 1c0051c0 <OLED_WR_Byte>
1c005484:	00150005 	move	$r5,$r0
1c005488:	02810004 	addi.w	$r4,$r0,64(0x40)
1c00548c:	57fd37ff 	bl	-716(0xffffd34) # 1c0051c0 <OLED_WR_Byte>
1c005490:	00150005 	move	$r5,$r0
1c005494:	02808004 	addi.w	$r4,$r0,32(0x20)
1c005498:	57fd2bff 	bl	-728(0xffffd28) # 1c0051c0 <OLED_WR_Byte>
1c00549c:	00150005 	move	$r5,$r0
1c0054a0:	02800804 	addi.w	$r4,$r0,2(0x2)
1c0054a4:	57fd1fff 	bl	-740(0xffffd1c) # 1c0051c0 <OLED_WR_Byte>
1c0054a8:	00150005 	move	$r5,$r0
1c0054ac:	02823404 	addi.w	$r4,$r0,141(0x8d)
1c0054b0:	57fd13ff 	bl	-752(0xffffd10) # 1c0051c0 <OLED_WR_Byte>
1c0054b4:	00150005 	move	$r5,$r0
1c0054b8:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0054bc:	57fd07ff 	bl	-764(0xffffd04) # 1c0051c0 <OLED_WR_Byte>
1c0054c0:	00150005 	move	$r5,$r0
1c0054c4:	02829004 	addi.w	$r4,$r0,164(0xa4)
1c0054c8:	57fcfbff 	bl	-776(0xffffcf8) # 1c0051c0 <OLED_WR_Byte>
1c0054cc:	00150005 	move	$r5,$r0
1c0054d0:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c0054d4:	57fcefff 	bl	-788(0xffffcec) # 1c0051c0 <OLED_WR_Byte>
1c0054d8:	00150005 	move	$r5,$r0
1c0054dc:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c0054e0:	57fce3ff 	bl	-800(0xffffce0) # 1c0051c0 <OLED_WR_Byte>
1c0054e4:	00150005 	move	$r5,$r0
1c0054e8:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c0054ec:	57fcd7ff 	bl	-812(0xffffcd4) # 1c0051c0 <OLED_WR_Byte>
1c0054f0:	57fdc7ff 	bl	-572(0xffffdc4) # 1c0052b4 <OLED_Clear>
1c0054f4:	00150005 	move	$r5,$r0
1c0054f8:	00150004 	move	$r4,$r0
1c0054fc:	57fd33ff 	bl	-720(0xffffd30) # 1c00522c <OLED_Set_Pos>
1c005500:	03400000 	andi	$r0,$r0,0x0
1c005504:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005508:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00550c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005510:	4c000020 	jirl	$r0,$r1,0

1c005514 <OLED_ShowChar>:
OLED_ShowChar():
1c005514:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005518:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00551c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005520:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005524:	0015008c 	move	$r12,$r4
1c005528:	001500af 	move	$r15,$r5
1c00552c:	001500ce 	move	$r14,$r6
1c005530:	001500ed 	move	$r13,$r7
1c005534:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c005538:	001501ec 	move	$r12,$r15
1c00553c:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005540:	001501cc 	move	$r12,$r14
1c005544:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c005548:	001501ac 	move	$r12,$r13
1c00554c:	293f6acc 	st.b	$r12,$r22,-38(0xfda)
1c005550:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005554:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005558:	2a3f6acd 	ld.bu	$r13,$r22,-38(0xfda)
1c00555c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005560:	58000dac 	beq	$r13,$r12,12(0xc) # 1c00556c <OLED_ShowChar+0x58>
1c005564:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005568:	293f6acc 	st.b	$r12,$r22,-38(0xfda)
1c00556c:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c005570:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c005574:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c005578:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00557c:	50009800 	b	152(0x98) # 1c005614 <OLED_ShowChar+0x100>
1c005580:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005584:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c005588:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c00558c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005590:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005594:	001031ac 	add.w	$r12,$r13,$r12
1c005598:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00559c:	00150185 	move	$r5,$r12
1c0055a0:	001501c4 	move	$r4,$r14
1c0055a4:	57fc8bff 	bl	-888(0xffffc88) # 1c00522c <OLED_Set_Pos>
1c0055a8:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0055ac:	50004800 	b	72(0x48) # 1c0055f4 <OLED_ShowChar+0xe0>
1c0055b0:	2a3f6ecd 	ld.bu	$r13,$r22,-37(0xfdb)
1c0055b4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0055b8:	00408d8e 	slli.w	$r14,$r12,0x3
1c0055bc:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0055c0:	001031cc 	add.w	$r12,$r14,$r12
1c0055c4:	1c00004e 	pcaddu12i	$r14,2(0x2)
1c0055c8:	02b871ce 	addi.w	$r14,$r14,-484(0xe1c)
1c0055cc:	004091ad 	slli.w	$r13,$r13,0x4
1c0055d0:	001035cd 	add.w	$r13,$r14,$r13
1c0055d4:	001031ac 	add.w	$r12,$r13,$r12
1c0055d8:	2a00018c 	ld.bu	$r12,$r12,0
1c0055dc:	02810005 	addi.w	$r5,$r0,64(0x40)
1c0055e0:	00150184 	move	$r4,$r12
1c0055e4:	57fbdfff 	bl	-1060(0xffffbdc) # 1c0051c0 <OLED_WR_Byte>
1c0055e8:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0055ec:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0055f0:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0055f4:	2a3f6acc 	ld.bu	$r12,$r22,-38(0xfda)
1c0055f8:	0044858c 	srli.w	$r12,$r12,0x1
1c0055fc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005600:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c005604:	6bffadac 	bltu	$r13,$r12,-84(0x3ffac) # 1c0055b0 <OLED_ShowChar+0x9c>
1c005608:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00560c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005610:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005614:	2a3f6acc 	ld.bu	$r12,$r22,-38(0xfda)
1c005618:	00448d8c 	srli.w	$r12,$r12,0x3
1c00561c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005620:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005624:	6bff5dac 	bltu	$r13,$r12,-164(0x3ff5c) # 1c005580 <OLED_ShowChar+0x6c>
1c005628:	03400000 	andi	$r0,$r0,0x0
1c00562c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005630:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005634:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005638:	4c000020 	jirl	$r0,$r1,0

1c00563c <OLED_DrawFont16>:
OLED_DrawFont16():
1c00563c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005640:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005644:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005648:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00564c:	0015008c 	move	$r12,$r4
1c005650:	001500ad 	move	$r13,$r5
1c005654:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c005658:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c00565c:	001501ac 	move	$r12,$r13
1c005660:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005664:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005668:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c00566c:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c005670:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c005674:	02806c0c 	addi.w	$r12,$r0,27(0x1b)
1c005678:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c00567c:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c005680:	50013800 	b	312(0x138) # 1c0057b8 <OLED_DrawFont16+0x17c>
1c005684:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c005688:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c00568c:	028d21ad 	addi.w	$r13,$r13,840(0x348)
1c005690:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c005694:	001c31cc 	mul.w	$r12,$r14,$r12
1c005698:	001031ac 	add.w	$r12,$r13,$r12
1c00569c:	2a00018d 	ld.bu	$r13,$r12,0
1c0056a0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0056a4:	2a00018c 	ld.bu	$r12,$r12,0
1c0056a8:	5c0105ac 	bne	$r13,$r12,260(0x104) # 1c0057ac <OLED_DrawFont16+0x170>
1c0056ac:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c0056b0:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c0056b4:	028c81ad 	addi.w	$r13,$r13,800(0x320)
1c0056b8:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c0056bc:	001c31cc 	mul.w	$r12,$r14,$r12
1c0056c0:	001031ac 	add.w	$r12,$r13,$r12
1c0056c4:	2a00058d 	ld.bu	$r13,$r12,1(0x1)
1c0056c8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0056cc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0056d0:	2a00018c 	ld.bu	$r12,$r12,0
1c0056d4:	5c00d9ac 	bne	$r13,$r12,216(0xd8) # 1c0057ac <OLED_DrawFont16+0x170>
1c0056d8:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c0056dc:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c0056e0:	028bd1ad 	addi.w	$r13,$r13,756(0x2f4)
1c0056e4:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c0056e8:	001c31cc 	mul.w	$r12,$r14,$r12
1c0056ec:	001031ac 	add.w	$r12,$r13,$r12
1c0056f0:	2a00098d 	ld.bu	$r13,$r12,2(0x2)
1c0056f4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0056f8:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0056fc:	2a00018c 	ld.bu	$r12,$r12,0
1c005700:	5c00adac 	bne	$r13,$r12,172(0xac) # 1c0057ac <OLED_DrawFont16+0x170>
1c005704:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005708:	50009400 	b	148(0x94) # 1c00579c <OLED_DrawFont16+0x160>
1c00570c:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005710:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c005714:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c005718:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00571c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005720:	001031ac 	add.w	$r12,$r13,$r12
1c005724:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005728:	00150185 	move	$r5,$r12
1c00572c:	001501c4 	move	$r4,$r14
1c005730:	57faffff 	bl	-1284(0xffffafc) # 1c00522c <OLED_Set_Pos>
1c005734:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005738:	50004c00 	b	76(0x4c) # 1c005784 <OLED_DrawFont16+0x148>
1c00573c:	2a7fb2cf 	ld.hu	$r15,$r22,-20(0xfec)
1c005740:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005744:	0040918d 	slli.w	$r13,$r12,0x4
1c005748:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00574c:	001031ad 	add.w	$r13,$r13,$r12
1c005750:	1c00004e 	pcaddu12i	$r14,2(0x2)
1c005754:	028a01ce 	addi.w	$r14,$r14,640(0x280)
1c005758:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c00575c:	001c31ec 	mul.w	$r12,$r15,$r12
1c005760:	001031cc 	add.w	$r12,$r14,$r12
1c005764:	0010358c 	add.w	$r12,$r12,$r13
1c005768:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c00576c:	02810005 	addi.w	$r5,$r0,64(0x40)
1c005770:	00150184 	move	$r4,$r12
1c005774:	57fa4fff 	bl	-1460(0xffffa4c) # 1c0051c0 <OLED_WR_Byte>
1c005778:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00577c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005780:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005784:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005788:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c00578c:	6fffb18d 	bgeu	$r12,$r13,-80(0x3ffb0) # 1c00573c <OLED_DrawFont16+0x100>
1c005790:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005794:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005798:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c00579c:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c0057a0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0057a4:	6fff698d 	bgeu	$r12,$r13,-152(0x3ff68) # 1c00570c <OLED_DrawFont16+0xd0>
1c0057a8:	50001c00 	b	28(0x1c) # 1c0057c4 <OLED_DrawFont16+0x188>
1c0057ac:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c0057b0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0057b4:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c0057b8:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c0057bc:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c0057c0:	6bfec5ac 	bltu	$r13,$r12,-316(0x3fec4) # 1c005684 <OLED_DrawFont16+0x48>
1c0057c4:	03400000 	andi	$r0,$r0,0x0
1c0057c8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0057cc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0057d0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0057d4:	4c000020 	jirl	$r0,$r1,0

1c0057d8 <OLED_DrawFont32>:
OLED_DrawFont32():
1c0057d8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0057dc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0057e0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0057e4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0057e8:	0015008c 	move	$r12,$r4
1c0057ec:	001500ad 	move	$r13,$r5
1c0057f0:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c0057f4:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0057f8:	001501ac 	move	$r12,$r13
1c0057fc:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005800:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005804:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005808:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c00580c:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c005810:	0280500c 	addi.w	$r12,$r0,20(0x14)
1c005814:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c005818:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c00581c:	50014400 	b	324(0x144) # 1c005960 <OLED_DrawFont32+0x188>
1c005820:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c005824:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c005828:	0286b1ad 	addi.w	$r13,$r13,428(0x1ac)
1c00582c:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c005830:	001c31cc 	mul.w	$r12,$r14,$r12
1c005834:	001031ac 	add.w	$r12,$r13,$r12
1c005838:	2a00018c 	ld.bu	$r12,$r12,0
1c00583c:	0015018d 	move	$r13,$r12
1c005840:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005844:	2800018c 	ld.b	$r12,$r12,0
1c005848:	5c010dac 	bne	$r13,$r12,268(0x10c) # 1c005954 <OLED_DrawFont32+0x17c>
1c00584c:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c005850:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c005854:	028601ad 	addi.w	$r13,$r13,384(0x180)
1c005858:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c00585c:	001c31cc 	mul.w	$r12,$r14,$r12
1c005860:	001031ac 	add.w	$r12,$r13,$r12
1c005864:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c005868:	0015018d 	move	$r13,$r12
1c00586c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005870:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005874:	2800018c 	ld.b	$r12,$r12,0
1c005878:	5c00ddac 	bne	$r13,$r12,220(0xdc) # 1c005954 <OLED_DrawFont32+0x17c>
1c00587c:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c005880:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c005884:	028541ad 	addi.w	$r13,$r13,336(0x150)
1c005888:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c00588c:	001c31cc 	mul.w	$r12,$r14,$r12
1c005890:	001031ac 	add.w	$r12,$r13,$r12
1c005894:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c005898:	0015018d 	move	$r13,$r12
1c00589c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0058a0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0058a4:	2800018c 	ld.b	$r12,$r12,0
1c0058a8:	5c00adac 	bne	$r13,$r12,172(0xac) # 1c005954 <OLED_DrawFont32+0x17c>
1c0058ac:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0058b0:	50009400 	b	148(0x94) # 1c005944 <OLED_DrawFont32+0x16c>
1c0058b4:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0058b8:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c0058bc:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c0058c0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0058c4:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0058c8:	001031ac 	add.w	$r12,$r13,$r12
1c0058cc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0058d0:	00150185 	move	$r5,$r12
1c0058d4:	001501c4 	move	$r4,$r14
1c0058d8:	57f957ff 	bl	-1708(0xffff954) # 1c00522c <OLED_Set_Pos>
1c0058dc:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0058e0:	50004c00 	b	76(0x4c) # 1c00592c <OLED_DrawFont32+0x154>
1c0058e4:	2a7fb2cf 	ld.hu	$r15,$r22,-20(0xfec)
1c0058e8:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0058ec:	0040958d 	slli.w	$r13,$r12,0x5
1c0058f0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0058f4:	001031ad 	add.w	$r13,$r13,$r12
1c0058f8:	1c00004e 	pcaddu12i	$r14,2(0x2)
1c0058fc:	029231ce 	addi.w	$r14,$r14,1164(0x48c)
1c005900:	02820c0c 	addi.w	$r12,$r0,131(0x83)
1c005904:	001c31ec 	mul.w	$r12,$r15,$r12
1c005908:	001031cc 	add.w	$r12,$r14,$r12
1c00590c:	0010358c 	add.w	$r12,$r12,$r13
1c005910:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c005914:	02810005 	addi.w	$r5,$r0,64(0x40)
1c005918:	00150184 	move	$r4,$r12
1c00591c:	57f8a7ff 	bl	-1884(0xffff8a4) # 1c0051c0 <OLED_WR_Byte>
1c005920:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005924:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005928:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00592c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005930:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c005934:	6fffb18d 	bgeu	$r12,$r13,-80(0x3ffb0) # 1c0058e4 <OLED_DrawFont32+0x10c>
1c005938:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00593c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005940:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005944:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c005948:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c00594c:	6fff698d 	bgeu	$r12,$r13,-152(0x3ff68) # 1c0058b4 <OLED_DrawFont32+0xdc>
1c005950:	50001c00 	b	28(0x1c) # 1c00596c <OLED_DrawFont32+0x194>
1c005954:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c005958:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00595c:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c005960:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c005964:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c005968:	6bfeb9ac 	bltu	$r13,$r12,-328(0x3feb8) # 1c005820 <OLED_DrawFont32+0x48>
1c00596c:	03400000 	andi	$r0,$r0,0x0
1c005970:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005974:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005978:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00597c:	4c000020 	jirl	$r0,$r1,0

1c005980 <OLED_Show_Str>:
OLED_Show_Str():
1c005980:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005984:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005988:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00598c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005990:	0015008c 	move	$r12,$r4
1c005994:	001500ae 	move	$r14,$r5
1c005998:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c00599c:	001500ed 	move	$r13,$r7
1c0059a0:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0059a4:	001501cc 	move	$r12,$r14
1c0059a8:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c0059ac:	001501ac 	move	$r12,$r13
1c0059b0:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c0059b4:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0059b8:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c0059bc:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0059c0:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c0059c4:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c0059c8:	580209ac 	beq	$r13,$r12,520(0x208) # 1c005bd0 <OLED_Show_Str+0x250>
1c0059cc:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0059d0:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c0059d4:	5001fc00 	b	508(0x1fc) # 1c005bd0 <OLED_Show_Str+0x250>
1c0059d8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0059dc:	44012580 	bnez	$r12,292(0x124) # 1c005b00 <OLED_Show_Str+0x180>
1c0059e0:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c0059e4:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c0059e8:	0044858c 	srli.w	$r12,$r12,0x1
1c0059ec:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0059f0:	0015018e 	move	$r14,$r12
1c0059f4:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c0059f8:	0011398c 	sub.w	$r12,$r12,$r14
1c0059fc:	64002d8d 	bge	$r12,$r13,44(0x2c) # 1c005a28 <OLED_Show_Str+0xa8>
1c005a00:	297f7ac0 	st.h	$r0,$r22,-34(0xfde)
1c005a04:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005a08:	00448d8c 	srli.w	$r12,$r12,0x3
1c005a0c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005a10:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005a14:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c005a18:	001031ac 	add.w	$r12,$r13,$r12
1c005a1c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005a20:	03401d8c 	andi	$r12,$r12,0x7
1c005a24:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005a28:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c005a2c:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005a30:	00448d8c 	srli.w	$r12,$r12,0x3
1c005a34:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005a38:	0015018e 	move	$r14,$r12
1c005a3c:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c005a40:	0011398c 	sub.w	$r12,$r12,$r14
1c005a44:	6400098d 	bge	$r12,$r13,8(0x8) # 1c005a4c <OLED_Show_Str+0xcc>
1c005a48:	297f72c0 	st.h	$r0,$r22,-36(0xfdc)
1c005a4c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005a50:	2800018c 	ld.b	$r12,$r12,0
1c005a54:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005a58:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c005a5c:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c005a6c <OLED_Show_Str+0xec>
1c005a60:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005a64:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005a68:	50016800 	b	360(0x168) # 1c005bd0 <OLED_Show_Str+0x250>
1c005a6c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005a70:	2800018d 	ld.b	$r13,$r12,0
1c005a74:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c005a78:	5c0031ac 	bne	$r13,$r12,48(0x30) # 1c005aa8 <OLED_Show_Str+0x128>
1c005a7c:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005a80:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005a84:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c005a88:	001031ac 	add.w	$r12,$r13,$r12
1c005a8c:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005a90:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c005a94:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c005a98:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005a9c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005aa0:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c005aa4:	50004c00 	b	76(0x4c) # 1c005af0 <OLED_Show_Str+0x170>
1c005aa8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005aac:	2800018c 	ld.b	$r12,$r12,0
1c005ab0:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c005ab4:	2a3f5ecf 	ld.bu	$r15,$r22,-41(0xfd7)
1c005ab8:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c005abc:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005ac0:	001501e7 	move	$r7,$r15
1c005ac4:	001501c6 	move	$r6,$r14
1c005ac8:	001501a5 	move	$r5,$r13
1c005acc:	00150184 	move	$r4,$r12
1c005ad0:	57fa47ff 	bl	-1468(0xffffa44) # 1c005514 <OLED_ShowChar>
1c005ad4:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005ad8:	0044858c 	srli.w	$r12,$r12,0x1
1c005adc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005ae0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005ae4:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005ae8:	001031ac 	add.w	$r12,$r13,$r12
1c005aec:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c005af0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005af4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005af8:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c005afc:	5000d400 	b	212(0xd4) # 1c005bd0 <OLED_Show_Str+0x250>
1c005b00:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c005b04:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005b08:	0282000e 	addi.w	$r14,$r0,128(0x80)
1c005b0c:	001131cc 	sub.w	$r12,$r14,$r12
1c005b10:	64002d8d 	bge	$r12,$r13,44(0x2c) # 1c005b3c <OLED_Show_Str+0x1bc>
1c005b14:	297f7ac0 	st.h	$r0,$r22,-34(0xfde)
1c005b18:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005b1c:	00448d8c 	srli.w	$r12,$r12,0x3
1c005b20:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005b24:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005b28:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c005b2c:	001031ac 	add.w	$r12,$r13,$r12
1c005b30:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005b34:	03401d8c 	andi	$r12,$r12,0x7
1c005b38:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005b3c:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c005b40:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005b44:	00448d8c 	srli.w	$r12,$r12,0x3
1c005b48:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005b4c:	0015018e 	move	$r14,$r12
1c005b50:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c005b54:	0011398c 	sub.w	$r12,$r12,$r14
1c005b58:	6400098d 	bge	$r12,$r13,8(0x8) # 1c005b60 <OLED_Show_Str+0x1e0>
1c005b5c:	297f72c0 	st.h	$r0,$r22,-36(0xfdc)
1c005b60:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005b64:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c005b68:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c005b6c:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c005b8c <OLED_Show_Str+0x20c>
1c005b70:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c005b74:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005b78:	28bf62c6 	ld.w	$r6,$r22,-40(0xfd8)
1c005b7c:	001501a5 	move	$r5,$r13
1c005b80:	00150184 	move	$r4,$r12
1c005b84:	57fc57ff 	bl	-940(0xffffc54) # 1c0057d8 <OLED_DrawFont32>
1c005b88:	50002800 	b	40(0x28) # 1c005bb0 <OLED_Show_Str+0x230>
1c005b8c:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c005b90:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005b94:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c005bb0 <OLED_Show_Str+0x230>
1c005b98:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c005b9c:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005ba0:	28bf62c6 	ld.w	$r6,$r22,-40(0xfd8)
1c005ba4:	001501a5 	move	$r5,$r13
1c005ba8:	00150184 	move	$r4,$r12
1c005bac:	57fa93ff 	bl	-1392(0xffffa90) # 1c00563c <OLED_DrawFont16>
1c005bb0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005bb4:	02800d8c 	addi.w	$r12,$r12,3(0x3)
1c005bb8:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c005bbc:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005bc0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005bc4:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005bc8:	001031ac 	add.w	$r12,$r13,$r12
1c005bcc:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c005bd0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005bd4:	2800018c 	ld.b	$r12,$r12,0
1c005bd8:	47fe019f 	bnez	$r12,-512(0x7ffe00) # 1c0059d8 <OLED_Show_Str+0x58>
1c005bdc:	03400000 	andi	$r0,$r0,0x0
1c005be0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005be4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005be8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005bec:	4c000020 	jirl	$r0,$r1,0

1c005bf0 <main>:
main():
1c005bf0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005bf4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005bf8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005bfc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005c00:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005c04:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005c08:	57d52bff 	bl	-10968(0xfffd528) # 1c003130 <SystemClockInit>
1c005c0c:	57b723ff 	bl	-18656(0xfffb720) # 1c00132c <GPIOInit>
1c005c10:	57f743ff 	bl	-2240(0xffff740) # 1c005350 <OLED_Init>
1c005c14:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005c18:	57e23bff 	bl	-7624(0xfffe238) # 1c003e50 <timer_init>
1c005c1c:	57d5d7ff 	bl	-10796(0xfffd5d4) # 1c0031f0 <EnableInt>
1c005c20:	02800c06 	addi.w	$r6,$r0,3(0x3)
1c005c24:	02804805 	addi.w	$r5,$r0,18(0x12)
1c005c28:	02800804 	addi.w	$r4,$r0,2(0x2)
1c005c2c:	54065400 	bl	1620(0x654) # 1c006280 <DL_LN3X_Init>
1c005c30:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005c34:	288f9084 	ld.w	$r4,$r4,996(0x3e4)
1c005c38:	540a6400 	bl	2660(0xa64) # 1c00669c <Queue_Init>
1c005c3c:	540bf400 	bl	3060(0xbf4) # 1c006830 <BEEP_Init>
1c005c40:	54060000 	bl	1536(0x600) # 1c006240 <DHT11_Init>
1c005c44:	1cc7ff45 	pcaddu12i	$r5,409594(0x63ffa)
1c005c48:	028f20a5 	addi.w	$r5,$r5,968(0x3c8)
1c005c4c:	1cc7ff44 	pcaddu12i	$r4,409594(0x63ffa)
1c005c50:	028ef884 	addi.w	$r4,$r4,958(0x3be)
1c005c54:	5404e000 	bl	1248(0x4e0) # 1c006134 <DHT11_Read_Data>
1c005c58:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005c5c:	288ee18c 	ld.w	$r12,$r12,952(0x3b8)
1c005c60:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c005c64:	2900018d 	st.b	$r13,$r12,0
1c005c68:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005c6c:	028e898c 	addi.w	$r12,$r12,930(0x3a2)
1c005c70:	2a40018c 	ld.hu	$r12,$r12,0
1c005c74:	0044a18c 	srli.w	$r12,$r12,0x8
1c005c78:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005c7c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005c80:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005c84:	288e418c 	ld.w	$r12,$r12,912(0x390)
1c005c88:	2900058d 	st.b	$r13,$r12,1(0x1)
1c005c8c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005c90:	028df98c 	addi.w	$r12,$r12,894(0x37e)
1c005c94:	2a40018c 	ld.hu	$r12,$r12,0
1c005c98:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005c9c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005ca0:	288dd18c 	ld.w	$r12,$r12,884(0x374)
1c005ca4:	2900098d 	st.b	$r13,$r12,2(0x2)
1c005ca8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005cac:	028d918c 	addi.w	$r12,$r12,868(0x364)
1c005cb0:	2a40018c 	ld.hu	$r12,$r12,0
1c005cb4:	0044a18c 	srli.w	$r12,$r12,0x8
1c005cb8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005cbc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005cc0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005cc4:	288d418c 	ld.w	$r12,$r12,848(0x350)
1c005cc8:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c005ccc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005cd0:	028d018c 	addi.w	$r12,$r12,832(0x340)
1c005cd4:	2a40018c 	ld.hu	$r12,$r12,0
1c005cd8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005cdc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005ce0:	288cd18c 	ld.w	$r12,$r12,820(0x334)
1c005ce4:	2900118d 	st.b	$r13,$r12,4(0x4)
1c005ce8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005cec:	288c818c 	ld.w	$r12,$r12,800(0x320)
1c005cf0:	2880018c 	ld.w	$r12,$r12,0
1c005cf4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005cf8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005cfc:	288c618c 	ld.w	$r12,$r12,792(0x318)
1c005d00:	2900158d 	st.b	$r13,$r12,5(0x5)
1c005d04:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005d08:	028c198c 	addi.w	$r12,$r12,774(0x306)
1c005d0c:	2a40018d 	ld.hu	$r13,$r12,0
1c005d10:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005d14:	002131ae 	div.wu	$r14,$r13,$r12
1c005d18:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005d20 <main+0x130>
1c005d1c:	002a0007 	break	0x7
1c005d20:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c005d24:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005d28:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005d2c:	028b898c 	addi.w	$r12,$r12,738(0x2e2)
1c005d30:	2a40018d 	ld.hu	$r13,$r12,0
1c005d34:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005d38:	002131ae 	div.wu	$r14,$r13,$r12
1c005d3c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005d44 <main+0x154>
1c005d40:	002a0007 	break	0x7
1c005d44:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c005d48:	00150186 	move	$r6,$r12
1c005d4c:	1c000065 	pcaddu12i	$r5,3(0x3)
1c005d50:	02a9d0a5 	addi.w	$r5,$r5,-1420(0xa74)
1c005d54:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005d58:	288b1084 	ld.w	$r4,$r4,708(0x2c4)
1c005d5c:	57c7d7ff 	bl	-14380(0xfffc7d4) # 1c002530 <sprintf>
1c005d60:	02804007 	addi.w	$r7,$r0,16(0x10)
1c005d64:	1cc7ff66 	pcaddu12i	$r6,409595(0x63ffb)
1c005d68:	288ad0c6 	ld.w	$r6,$r6,692(0x2b4)
1c005d6c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c005d70:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005d74:	57fc0fff 	bl	-1012(0xffffc0c) # 1c005980 <OLED_Show_Str>
1c005d78:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005d7c:	028a518c 	addi.w	$r12,$r12,660(0x294)
1c005d80:	2a40018d 	ld.hu	$r13,$r12,0
1c005d84:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005d88:	002131ae 	div.wu	$r14,$r13,$r12
1c005d8c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005d94 <main+0x1a4>
1c005d90:	002a0007 	break	0x7
1c005d94:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c005d98:	00150186 	move	$r6,$r12
1c005d9c:	1c000065 	pcaddu12i	$r5,3(0x3)
1c005da0:	02a8d0a5 	addi.w	$r5,$r5,-1484(0xa34)
1c005da4:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005da8:	2889d084 	ld.w	$r4,$r4,628(0x274)
1c005dac:	57c787ff 	bl	-14460(0xfffc784) # 1c002530 <sprintf>
1c005db0:	02804007 	addi.w	$r7,$r0,16(0x10)
1c005db4:	1cc7ff66 	pcaddu12i	$r6,409595(0x63ffb)
1c005db8:	288990c6 	ld.w	$r6,$r6,612(0x264)
1c005dbc:	02801805 	addi.w	$r5,$r0,6(0x6)
1c005dc0:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005dc4:	57fbbfff 	bl	-1092(0xffffbbc) # 1c005980 <OLED_Show_Str>
1c005dc8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005dcc:	2889218c 	ld.w	$r12,$r12,584(0x248)
1c005dd0:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c005dd4:	00150186 	move	$r6,$r12
1c005dd8:	1c000065 	pcaddu12i	$r5,3(0x3)
1c005ddc:	02a830a5 	addi.w	$r5,$r5,-1524(0xa0c)
1c005de0:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005de4:	2888e084 	ld.w	$r4,$r4,568(0x238)
1c005de8:	57c74bff 	bl	-14520(0xfffc748) # 1c002530 <sprintf>
1c005dec:	02804007 	addi.w	$r7,$r0,16(0x10)
1c005df0:	1cc7ff66 	pcaddu12i	$r6,409595(0x63ffb)
1c005df4:	2888a0c6 	ld.w	$r6,$r6,552(0x228)
1c005df8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c005dfc:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005e00:	57fb83ff 	bl	-1152(0xffffb80) # 1c005980 <OLED_Show_Str>
1c005e04:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c005e08:	57d80fff 	bl	-10228(0xfffd80c) # 1c003614 <delay_ms>
1c005e0c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c005e10:	02801805 	addi.w	$r5,$r0,6(0x6)
1c005e14:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005e18:	2887f084 	ld.w	$r4,$r4,508(0x1fc)
1c005e1c:	54072800 	bl	1832(0x728) # 1c006544 <DL_LN3X_Send>
1c005e20:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005e24:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c005e28:	6400318d 	bge	$r12,$r13,48(0x30) # 1c005e58 <main+0x268>
1c005e2c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005e30:	0287918c 	addi.w	$r12,$r12,484(0x1e4)
1c005e34:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c005e38:	2980018d 	st.w	$r13,$r12,0
1c005e3c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005e40:	0287518c 	addi.w	$r12,$r12,468(0x1d4)
1c005e44:	2880018c 	ld.w	$r12,$r12,0
1c005e48:	00150185 	move	$r5,$r12
1c005e4c:	02803404 	addi.w	$r4,$r0,13(0xd)
1c005e50:	57ed2fff 	bl	-4820(0xfffed2c) # 1c004b7c <TIM_SetCompare1>
1c005e54:	53fdf3ff 	b	-528(0xffffdf0) # 1c005c44 <main+0x54>
1c005e58:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005e5c:	0280640c 	addi.w	$r12,$r0,25(0x19)
1c005e60:	6400318d 	bge	$r12,$r13,48(0x30) # 1c005e90 <main+0x2a0>
1c005e64:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005e68:	0286b18c 	addi.w	$r12,$r12,428(0x1ac)
1c005e6c:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c005e70:	2980018d 	st.w	$r13,$r12,0
1c005e74:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005e78:	0286718c 	addi.w	$r12,$r12,412(0x19c)
1c005e7c:	2880018c 	ld.w	$r12,$r12,0
1c005e80:	00150185 	move	$r5,$r12
1c005e84:	02803404 	addi.w	$r4,$r0,13(0xd)
1c005e88:	57ecf7ff 	bl	-4876(0xfffecf4) # 1c004b7c <TIM_SetCompare1>
1c005e8c:	53fdbbff 	b	-584(0xffffdb8) # 1c005c44 <main+0x54>
1c005e90:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005e94:	0286018c 	addi.w	$r12,$r12,384(0x180)
1c005e98:	29800180 	st.w	$r0,$r12,0
1c005e9c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005ea0:	0285d18c 	addi.w	$r12,$r12,372(0x174)
1c005ea4:	2880018c 	ld.w	$r12,$r12,0
1c005ea8:	00150185 	move	$r5,$r12
1c005eac:	02803404 	addi.w	$r4,$r0,13(0xd)
1c005eb0:	57eccfff 	bl	-4916(0xfffeccc) # 1c004b7c <TIM_SetCompare1>
1c005eb4:	53fd93ff 	b	-624(0xffffd90) # 1c005c44 <main+0x54>

1c005eb8 <DHT11_Rst>:
DHT11_Rst():
1c005eb8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005ebc:	29803061 	st.w	$r1,$r3,12(0xc)
1c005ec0:	29802076 	st.w	$r22,$r3,8(0x8)
1c005ec4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005ec8:	54007000 	bl	112(0x70) # 1c005f38 <DHT11_IO_Out>
1c005ecc:	00150005 	move	$r5,$r0
1c005ed0:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c005ed4:	57b717ff 	bl	-18668(0xfffb714) # 1c0015e8 <gpio_write_pin>
1c005ed8:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005edc:	57d73bff 	bl	-10440(0xfffd738) # 1c003614 <delay_ms>
1c005ee0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005ee4:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c005ee8:	57b703ff 	bl	-18688(0xfffb700) # 1c0015e8 <gpio_write_pin>
1c005eec:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c005ef0:	57d6efff 	bl	-10516(0xfffd6ec) # 1c0035dc <delay_us>
1c005ef4:	03400000 	andi	$r0,$r0,0x0
1c005ef8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005efc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005f00:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005f04:	4c000020 	jirl	$r0,$r1,0

1c005f08 <DHT11_IO_In>:
DHT11_IO_In():
1c005f08:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005f0c:	29803061 	st.w	$r1,$r3,12(0xc)
1c005f10:	29802076 	st.w	$r22,$r3,8(0x8)
1c005f14:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005f18:	00150005 	move	$r5,$r0
1c005f1c:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c005f20:	57b94fff 	bl	-18100(0xfffb94c) # 1c00186c <gpio_set_direction>
1c005f24:	03400000 	andi	$r0,$r0,0x0
1c005f28:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005f2c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005f30:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005f34:	4c000020 	jirl	$r0,$r1,0

1c005f38 <DHT11_IO_Out>:
DHT11_IO_Out():
1c005f38:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005f3c:	29803061 	st.w	$r1,$r3,12(0xc)
1c005f40:	29802076 	st.w	$r22,$r3,8(0x8)
1c005f44:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005f48:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005f4c:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c005f50:	57b91fff 	bl	-18148(0xfffb91c) # 1c00186c <gpio_set_direction>
1c005f54:	03400000 	andi	$r0,$r0,0x0
1c005f58:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005f5c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005f60:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005f64:	4c000020 	jirl	$r0,$r1,0

1c005f68 <DHT11_Check>:
DHT11_Check():
1c005f68:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005f6c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005f70:	29806076 	st.w	$r22,$r3,24(0x18)
1c005f74:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005f78:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005f7c:	57ff8fff 	bl	-116(0xfffff8c) # 1c005f08 <DHT11_IO_In>
1c005f80:	50001000 	b	16(0x10) # 1c005f90 <DHT11_Check+0x28>
1c005f84:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005f88:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005f8c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005f90:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c005f94:	57b607ff 	bl	-18940(0xfffb604) # 1c001598 <gpio_get_pin>
1c005f98:	0015008c 	move	$r12,$r4
1c005f9c:	40001180 	beqz	$r12,16(0x10) # 1c005fac <DHT11_Check+0x44>
1c005fa0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005fa4:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c005fa8:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c005f84 <DHT11_Check+0x1c>
1c005fac:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005fb0:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c005fb4:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c005fc0 <DHT11_Check+0x58>
1c005fb8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005fbc:	50004c00 	b	76(0x4c) # 1c006008 <DHT11_Check+0xa0>
1c005fc0:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005fc4:	50001000 	b	16(0x10) # 1c005fd4 <DHT11_Check+0x6c>
1c005fc8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005fcc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005fd0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005fd4:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c005fd8:	57b5c3ff 	bl	-19008(0xfffb5c0) # 1c001598 <gpio_get_pin>
1c005fdc:	0015008c 	move	$r12,$r4
1c005fe0:	44001180 	bnez	$r12,16(0x10) # 1c005ff0 <DHT11_Check+0x88>
1c005fe4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005fe8:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c005fec:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c005fc8 <DHT11_Check+0x60>
1c005ff0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005ff4:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c005ff8:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c006004 <DHT11_Check+0x9c>
1c005ffc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006000:	50000800 	b	8(0x8) # 1c006008 <DHT11_Check+0xa0>
1c006004:	0015000c 	move	$r12,$r0
1c006008:	00150184 	move	$r4,$r12
1c00600c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006010:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006014:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006018:	4c000020 	jirl	$r0,$r1,0

1c00601c <DHT11_Read_Bit>:
DHT11_Read_Bit():
1c00601c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006020:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006024:	29806076 	st.w	$r22,$r3,24(0x18)
1c006028:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00602c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006030:	50001000 	b	16(0x10) # 1c006040 <DHT11_Read_Bit+0x24>
1c006034:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006038:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00603c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006040:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006044:	57b557ff 	bl	-19116(0xfffb554) # 1c001598 <gpio_get_pin>
1c006048:	0015008c 	move	$r12,$r4
1c00604c:	40001180 	beqz	$r12,16(0x10) # 1c00605c <DHT11_Read_Bit+0x40>
1c006050:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006054:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c006058:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c006034 <DHT11_Read_Bit+0x18>
1c00605c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006060:	50001000 	b	16(0x10) # 1c006070 <DHT11_Read_Bit+0x54>
1c006064:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006068:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00606c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006070:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006074:	57b527ff 	bl	-19164(0xfffb524) # 1c001598 <gpio_get_pin>
1c006078:	0015008c 	move	$r12,$r4
1c00607c:	44001180 	bnez	$r12,16(0x10) # 1c00608c <DHT11_Read_Bit+0x70>
1c006080:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006084:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c006088:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c006064 <DHT11_Read_Bit+0x48>
1c00608c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006090:	57d54fff 	bl	-10932(0xfffd54c) # 1c0035dc <delay_us>
1c006094:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006098:	57b503ff 	bl	-19200(0xfffb500) # 1c001598 <gpio_get_pin>
1c00609c:	0015008c 	move	$r12,$r4
1c0060a0:	40000d80 	beqz	$r12,12(0xc) # 1c0060ac <DHT11_Read_Bit+0x90>
1c0060a4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0060a8:	50000800 	b	8(0x8) # 1c0060b0 <DHT11_Read_Bit+0x94>
1c0060ac:	0015000c 	move	$r12,$r0
1c0060b0:	00150184 	move	$r4,$r12
1c0060b4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0060b8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0060bc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0060c0:	4c000020 	jirl	$r0,$r1,0

1c0060c4 <DHT11_Read_Byte>:
DHT11_Read_Byte():
1c0060c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0060c8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0060cc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0060d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0060d4:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0060d8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0060dc:	50003400 	b	52(0x34) # 1c006110 <DHT11_Read_Byte+0x4c>
1c0060e0:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0060e4:	0040858c 	slli.w	$r12,$r12,0x1
1c0060e8:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0060ec:	57ff33ff 	bl	-208(0xfffff30) # 1c00601c <DHT11_Read_Bit>
1c0060f0:	0015008c 	move	$r12,$r4
1c0060f4:	0015018d 	move	$r13,$r12
1c0060f8:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0060fc:	001531ac 	or	$r12,$r13,$r12
1c006100:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c006104:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006108:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00610c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006110:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006114:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c006118:	6fffc98d 	bgeu	$r12,$r13,-56(0x3ffc8) # 1c0060e0 <DHT11_Read_Byte+0x1c>
1c00611c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c006120:	00150184 	move	$r4,$r12
1c006124:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006128:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00612c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006130:	4c000020 	jirl	$r0,$r1,0

1c006134 <DHT11_Read_Data>:
DHT11_Read_Data():
1c006134:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006138:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00613c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006140:	29809077 	st.w	$r23,$r3,36(0x24)
1c006144:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006148:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00614c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c006150:	57fd6bff 	bl	-664(0xffffd68) # 1c005eb8 <DHT11_Rst>
1c006154:	57fe17ff 	bl	-492(0xffffe14) # 1c005f68 <DHT11_Check>
1c006158:	0015008c 	move	$r12,$r4
1c00615c:	4400c180 	bnez	$r12,192(0xc0) # 1c00621c <DHT11_Read_Data+0xe8>
1c006160:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006164:	50002800 	b	40(0x28) # 1c00618c <DHT11_Read_Data+0x58>
1c006168:	2a3fbed7 	ld.bu	$r23,$r22,-17(0xfef)
1c00616c:	57ff5bff 	bl	-168(0xfffff58) # 1c0060c4 <DHT11_Read_Byte>
1c006170:	0015008c 	move	$r12,$r4
1c006174:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c006178:	00105dad 	add.w	$r13,$r13,$r23
1c00617c:	293fe1ac 	st.b	$r12,$r13,-8(0xff8)
1c006180:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006184:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006188:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00618c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006190:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c006194:	6fffd58d 	bgeu	$r12,$r13,-44(0x3ffd4) # 1c006168 <DHT11_Read_Data+0x34>
1c006198:	2a3fa2cc 	ld.bu	$r12,$r22,-24(0xfe8)
1c00619c:	0015018d 	move	$r13,$r12
1c0061a0:	2a3fa6cc 	ld.bu	$r12,$r22,-23(0xfe9)
1c0061a4:	001031ac 	add.w	$r12,$r13,$r12
1c0061a8:	2a3faacd 	ld.bu	$r13,$r22,-22(0xfea)
1c0061ac:	0010358c 	add.w	$r12,$r12,$r13
1c0061b0:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c0061b4:	0010358c 	add.w	$r12,$r12,$r13
1c0061b8:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c0061bc:	5c00698d 	bne	$r12,$r13,104(0x68) # 1c006224 <DHT11_Read_Data+0xf0>
1c0061c0:	2a3fa2cc 	ld.bu	$r12,$r22,-24(0xfe8)
1c0061c4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0061c8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0061cc:	001c31ac 	mul.w	$r12,$r13,$r12
1c0061d0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0061d4:	2a3fa6cc 	ld.bu	$r12,$r22,-23(0xfe9)
1c0061d8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0061dc:	001031ac 	add.w	$r12,$r13,$r12
1c0061e0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0061e4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0061e8:	2940018d 	st.h	$r13,$r12,0
1c0061ec:	2a3faacc 	ld.bu	$r12,$r22,-22(0xfea)
1c0061f0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0061f4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0061f8:	001c31ac 	mul.w	$r12,$r13,$r12
1c0061fc:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006200:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c006204:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006208:	001031ac 	add.w	$r12,$r13,$r12
1c00620c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006210:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006214:	2940018d 	st.h	$r13,$r12,0
1c006218:	50000c00 	b	12(0xc) # 1c006224 <DHT11_Read_Data+0xf0>
1c00621c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006220:	50000800 	b	8(0x8) # 1c006228 <DHT11_Read_Data+0xf4>
1c006224:	0015000c 	move	$r12,$r0
1c006228:	00150184 	move	$r4,$r12
1c00622c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006230:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006234:	28809077 	ld.w	$r23,$r3,36(0x24)
1c006238:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00623c:	4c000020 	jirl	$r0,$r1,0

1c006240 <DHT11_Init>:
DHT11_Init():
1c006240:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006244:	29803061 	st.w	$r1,$r3,12(0xc)
1c006248:	29802076 	st.w	$r22,$r3,8(0x8)
1c00624c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006250:	00150005 	move	$r5,$r0
1c006254:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006258:	57b40bff 	bl	-19448(0xfffb408) # 1c001660 <gpio_pin_remap>
1c00625c:	57fcdfff 	bl	-804(0xffffcdc) # 1c005f38 <DHT11_IO_Out>
1c006260:	57fc5bff 	bl	-936(0xffffc58) # 1c005eb8 <DHT11_Rst>
1c006264:	57fd07ff 	bl	-764(0xffffd04) # 1c005f68 <DHT11_Check>
1c006268:	0015008c 	move	$r12,$r4
1c00626c:	00150184 	move	$r4,$r12
1c006270:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006274:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006278:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00627c:	4c000020 	jirl	$r0,$r1,0

1c006280 <DL_LN3X_Init>:
DL_LN3X_Init():
1c006280:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006284:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006288:	29806076 	st.w	$r22,$r3,24(0x18)
1c00628c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006290:	0015008c 	move	$r12,$r4
1c006294:	001500ae 	move	$r14,$r5
1c006298:	001500cd 	move	$r13,$r6
1c00629c:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c0062a0:	001501cc 	move	$r12,$r14
1c0062a4:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c0062a8:	001501ac 	move	$r12,$r13
1c0062ac:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c0062b0:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0062b4:	03880184 	ori	$r4,$r12,0x200
1c0062b8:	57c7f7ff 	bl	-14348(0xfffc7f4) # 1c002aac <Uart0_init>
1c0062bc:	02800804 	addi.w	$r4,$r0,2(0x2)
1c0062c0:	5401f000 	bl	496(0x1f0) # 1c0064b0 <DL_LN3X_Baud_Rate>
1c0062c4:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c0062c8:	57d34fff 	bl	-11444(0xfffd34c) # 1c003614 <delay_ms>
1c0062cc:	1400004c 	lu12i.w	$r12,2(0x2)
1c0062d0:	03960184 	ori	$r4,$r12,0x580
1c0062d4:	57c7dbff 	bl	-14376(0xfffc7d8) # 1c002aac <Uart0_init>
1c0062d8:	02800804 	addi.w	$r4,$r0,2(0x2)
1c0062dc:	5401d400 	bl	468(0x1d4) # 1c0064b0 <DL_LN3X_Baud_Rate>
1c0062e0:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c0062e4:	57d333ff 	bl	-11472(0xfffd330) # 1c003614 <delay_ms>
1c0062e8:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c0062ec:	57d32bff 	bl	-11480(0xfffd328) # 1c003614 <delay_ms>
1c0062f0:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0062f4:	00150184 	move	$r4,$r12
1c0062f8:	54007400 	bl	116(0x74) # 1c00636c <DL_LN3X_Address>
1c0062fc:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c006300:	57d317ff 	bl	-11500(0xfffd314) # 1c003614 <delay_ms>
1c006304:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c006308:	00150184 	move	$r4,$r12
1c00630c:	5400d400 	bl	212(0xd4) # 1c0063e0 <DL_LN3X_Channel>
1c006310:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c006314:	57d303ff 	bl	-11520(0xfffd300) # 1c003614 <delay_ms>
1c006318:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c00631c:	00150184 	move	$r4,$r12
1c006320:	54011c00 	bl	284(0x11c) # 1c00643c <DL_LN3X_Network_Id>
1c006324:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c006328:	57d2efff 	bl	-11540(0xfffd2ec) # 1c003614 <delay_ms>
1c00632c:	1400038c 	lu12i.w	$r12,28(0x1c)
1c006330:	03880184 	ori	$r4,$r12,0x200
1c006334:	57c77bff 	bl	-14472(0xfffc778) # 1c002aac <Uart0_init>
1c006338:	5401d400 	bl	468(0x1d4) # 1c00650c <DL_LN3X_Reset>
1c00633c:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c006340:	57d2d7ff 	bl	-11564(0xfffd2d4) # 1c003614 <delay_ms>
1c006344:	1400004c 	lu12i.w	$r12,2(0x2)
1c006348:	03960184 	ori	$r4,$r12,0x580
1c00634c:	57c763ff 	bl	-14496(0xfffc760) # 1c002aac <Uart0_init>
1c006350:	5401bc00 	bl	444(0x1bc) # 1c00650c <DL_LN3X_Reset>
1c006354:	03400000 	andi	$r0,$r0,0x0
1c006358:	00150184 	move	$r4,$r12
1c00635c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006360:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006364:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006368:	4c000020 	jirl	$r0,$r1,0

1c00636c <DL_LN3X_Address>:
DL_LN3X_Address():
1c00636c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006370:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006374:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006378:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00637c:	0015008c 	move	$r12,$r4
1c006380:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c006384:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006388:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c00638c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006390:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006394:	02b2718c 	addi.w	$r12,$r12,-868(0xc9c)
1c006398:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00639c:	29001d8d 	st.b	$r13,$r12,7(0x7)
1c0063a0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0063a4:	0048a18c 	srai.w	$r12,$r12,0x8
1c0063a8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0063ac:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0063b0:	02b2018c 	addi.w	$r12,$r12,-896(0xc80)
1c0063b4:	2900218d 	st.b	$r13,$r12,8(0x8)
1c0063b8:	02802806 	addi.w	$r6,$r0,10(0xa)
1c0063bc:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c0063c0:	02b1c0a5 	addi.w	$r5,$r5,-912(0xc70)
1c0063c4:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c0063c8:	57c623ff 	bl	-14816(0xfffc620) # 1c0029e8 <UART_SendDataALL>
1c0063cc:	03400000 	andi	$r0,$r0,0x0
1c0063d0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0063d4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0063d8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0063dc:	4c000020 	jirl	$r0,$r1,0

1c0063e0 <DL_LN3X_Channel>:
DL_LN3X_Channel():
1c0063e0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0063e4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0063e8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0063ec:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0063f0:	0015008c 	move	$r12,$r4
1c0063f4:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0063f8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0063fc:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c006400:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006404:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006408:	02b1018c 	addi.w	$r12,$r12,-960(0xc40)
1c00640c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006410:	29001d8d 	st.b	$r13,$r12,7(0x7)
1c006414:	02802406 	addi.w	$r6,$r0,9(0x9)
1c006418:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c00641c:	02b0b0a5 	addi.w	$r5,$r5,-980(0xc2c)
1c006420:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c006424:	57c5c7ff 	bl	-14908(0xfffc5c4) # 1c0029e8 <UART_SendDataALL>
1c006428:	03400000 	andi	$r0,$r0,0x0
1c00642c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006430:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006434:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006438:	4c000020 	jirl	$r0,$r1,0

1c00643c <DL_LN3X_Network_Id>:
DL_LN3X_Network_Id():
1c00643c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006440:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006444:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006448:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00644c:	0015008c 	move	$r12,$r4
1c006450:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c006454:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006458:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c00645c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006460:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006464:	02af618c 	addi.w	$r12,$r12,-1064(0xbd8)
1c006468:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00646c:	29001d8d 	st.b	$r13,$r12,7(0x7)
1c006470:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006474:	0048a18c 	srai.w	$r12,$r12,0x8
1c006478:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00647c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006480:	02aef18c 	addi.w	$r12,$r12,-1092(0xbbc)
1c006484:	2900218d 	st.b	$r13,$r12,8(0x8)
1c006488:	02802806 	addi.w	$r6,$r0,10(0xa)
1c00648c:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c006490:	02aeb0a5 	addi.w	$r5,$r5,-1108(0xbac)
1c006494:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c006498:	57c553ff 	bl	-15024(0xfffc550) # 1c0029e8 <UART_SendDataALL>
1c00649c:	03400000 	andi	$r0,$r0,0x0
1c0064a0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0064a4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0064a8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0064ac:	4c000020 	jirl	$r0,$r1,0

1c0064b0 <DL_LN3X_Baud_Rate>:
DL_LN3X_Baud_Rate():
1c0064b0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0064b4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0064b8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0064bc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0064c0:	0015008c 	move	$r12,$r4
1c0064c4:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0064c8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0064cc:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0064d0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0064d4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0064d8:	02adf18c 	addi.w	$r12,$r12,-1156(0xb7c)
1c0064dc:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0064e0:	29001d8d 	st.b	$r13,$r12,7(0x7)
1c0064e4:	02802406 	addi.w	$r6,$r0,9(0x9)
1c0064e8:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c0064ec:	02ada0a5 	addi.w	$r5,$r5,-1176(0xb68)
1c0064f0:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c0064f4:	57c4f7ff 	bl	-15116(0xfffc4f4) # 1c0029e8 <UART_SendDataALL>
1c0064f8:	03400000 	andi	$r0,$r0,0x0
1c0064fc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006500:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006504:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006508:	4c000020 	jirl	$r0,$r1,0

1c00650c <DL_LN3X_Reset>:
DL_LN3X_Reset():
1c00650c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006510:	29803061 	st.w	$r1,$r3,12(0xc)
1c006514:	29802076 	st.w	$r22,$r3,8(0x8)
1c006518:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00651c:	02802006 	addi.w	$r6,$r0,8(0x8)
1c006520:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c006524:	02acf0a5 	addi.w	$r5,$r5,-1220(0xb3c)
1c006528:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c00652c:	57c4bfff 	bl	-15172(0xfffc4bc) # 1c0029e8 <UART_SendDataALL>
1c006530:	03400000 	andi	$r0,$r0,0x0
1c006534:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006538:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00653c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006540:	4c000020 	jirl	$r0,$r1,0

1c006544 <DL_LN3X_Send>:
DL_LN3X_Send():
1c006544:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006548:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00654c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006550:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006554:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c006558:	001500ac 	move	$r12,$r5
1c00655c:	001500cd 	move	$r13,$r6
1c006560:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c006564:	001501ac 	move	$r12,$r13
1c006568:	297f62cc 	st.h	$r12,$r22,-40(0xfd8)
1c00656c:	0283f805 	addi.w	$r5,$r0,254(0xfe)
1c006570:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c006574:	57c42bff 	bl	-15320(0xfffc428) # 1c00299c <UART_SendData>
1c006578:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c00657c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c006580:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006584:	00150185 	move	$r5,$r12
1c006588:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c00658c:	57c413ff 	bl	-15344(0xfffc410) # 1c00299c <UART_SendData>
1c006590:	02824005 	addi.w	$r5,$r0,144(0x90)
1c006594:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c006598:	57c407ff 	bl	-15356(0xfffc404) # 1c00299c <UART_SendData>
1c00659c:	02824405 	addi.w	$r5,$r0,145(0x91)
1c0065a0:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c0065a4:	57c3fbff 	bl	-15368(0xfffc3f8) # 1c00299c <UART_SendData>
1c0065a8:	2a7f62cc 	ld.hu	$r12,$r22,-40(0xfd8)
1c0065ac:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0065b0:	00150185 	move	$r5,$r12
1c0065b4:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c0065b8:	57c3e7ff 	bl	-15388(0xfffc3e4) # 1c00299c <UART_SendData>
1c0065bc:	2a7f62cc 	ld.hu	$r12,$r22,-40(0xfd8)
1c0065c0:	0044a18c 	srli.w	$r12,$r12,0x8
1c0065c4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0065c8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0065cc:	00150185 	move	$r5,$r12
1c0065d0:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c0065d4:	57c3cbff 	bl	-15416(0xfffc3c8) # 1c00299c <UART_SendData>
1c0065d8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0065dc:	50009400 	b	148(0x94) # 1c006670 <DL_LN3X_Send+0x12c>
1c0065e0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0065e4:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0065e8:	001031ac 	add.w	$r12,$r13,$r12
1c0065ec:	2a00018d 	ld.bu	$r13,$r12,0
1c0065f0:	0283fc0c 	addi.w	$r12,$r0,255(0xff)
1c0065f4:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c006614 <DL_LN3X_Send+0xd0>
1c0065f8:	0283f805 	addi.w	$r5,$r0,254(0xfe)
1c0065fc:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c006600:	57c39fff 	bl	-15460(0xfffc39c) # 1c00299c <UART_SendData>
1c006604:	0283f405 	addi.w	$r5,$r0,253(0xfd)
1c006608:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c00660c:	57c393ff 	bl	-15472(0xfffc390) # 1c00299c <UART_SendData>
1c006610:	50005400 	b	84(0x54) # 1c006664 <DL_LN3X_Send+0x120>
1c006614:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006618:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c00661c:	001031ac 	add.w	$r12,$r13,$r12
1c006620:	2a00018d 	ld.bu	$r13,$r12,0
1c006624:	0283f80c 	addi.w	$r12,$r0,254(0xfe)
1c006628:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c006648 <DL_LN3X_Send+0x104>
1c00662c:	0283f805 	addi.w	$r5,$r0,254(0xfe)
1c006630:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c006634:	57c36bff 	bl	-15512(0xfffc368) # 1c00299c <UART_SendData>
1c006638:	0283f005 	addi.w	$r5,$r0,252(0xfc)
1c00663c:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c006640:	57c35fff 	bl	-15524(0xfffc35c) # 1c00299c <UART_SendData>
1c006644:	50002000 	b	32(0x20) # 1c006664 <DL_LN3X_Send+0x120>
1c006648:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00664c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006650:	001031ac 	add.w	$r12,$r13,$r12
1c006654:	2a00018c 	ld.bu	$r12,$r12,0
1c006658:	00150185 	move	$r5,$r12
1c00665c:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c006660:	57c33fff 	bl	-15556(0xfffc33c) # 1c00299c <UART_SendData>
1c006664:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006668:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00666c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006670:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006674:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c006678:	6bff69ac 	bltu	$r13,$r12,-152(0x3ff68) # 1c0065e0 <DL_LN3X_Send+0x9c>
1c00667c:	0283fc05 	addi.w	$r5,$r0,255(0xff)
1c006680:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c006684:	57c31bff 	bl	-15592(0xfffc318) # 1c00299c <UART_SendData>
1c006688:	03400000 	andi	$r0,$r0,0x0
1c00668c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006690:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006694:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006698:	4c000020 	jirl	$r0,$r1,0

1c00669c <Queue_Init>:
Queue_Init():
1c00669c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0066a0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0066a4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0066a8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0066ac:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0066b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0066b4:	44000d80 	bnez	$r12,12(0xc) # 1c0066c0 <Queue_Init+0x24>
1c0066b8:	0015000c 	move	$r12,$r0
1c0066bc:	50001800 	b	24(0x18) # 1c0066d4 <Queue_Init+0x38>
1c0066c0:	0284c006 	addi.w	$r6,$r0,304(0x130)
1c0066c4:	00150005 	move	$r5,$r0
1c0066c8:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c0066cc:	57cf8bff 	bl	-12408(0xfffcf88) # 1c003654 <memset>
1c0066d0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0066d4:	00150184 	move	$r4,$r12
1c0066d8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0066dc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0066e0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0066e4:	4c000020 	jirl	$r0,$r1,0

1c0066e8 <Queue_NoUse>:
Queue_NoUse():
1c0066e8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0066ec:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0066f0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0066f4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0066f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0066fc:	44000d80 	bnez	$r12,12(0xc) # 1c006708 <Queue_NoUse+0x20>
1c006700:	0015000c 	move	$r12,$r0
1c006704:	50004000 	b	64(0x40) # 1c006744 <Queue_NoUse+0x5c>
1c006708:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00670c:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c006710:	0015018d 	move	$r13,$r12
1c006714:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006718:	2a40018c 	ld.hu	$r12,$r12,0
1c00671c:	001131ac 	sub.w	$r12,$r13,$r12
1c006720:	0284b18d 	addi.w	$r13,$r12,300(0x12c)
1c006724:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c006728:	0020b1ae 	mod.w	$r14,$r13,$r12
1c00672c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006734 <Queue_NoUse+0x4c>
1c006730:	002a0007 	break	0x7
1c006734:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c006738:	0284ac0d 	addi.w	$r13,$r0,299(0x12b)
1c00673c:	001131ac 	sub.w	$r12,$r13,$r12
1c006740:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006744:	00150184 	move	$r4,$r12
1c006748:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00674c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006750:	4c000020 	jirl	$r0,$r1,0

1c006754 <Queue_Wirte>:
Queue_Wirte():
1c006754:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006758:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00675c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006760:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006764:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c006768:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00676c:	001500cc 	move	$r12,$r6
1c006770:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c006774:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006778:	44000d80 	bnez	$r12,12(0xc) # 1c006784 <Queue_Wirte+0x30>
1c00677c:	0015000c 	move	$r12,$r0
1c006780:	50009c00 	b	156(0x9c) # 1c00681c <Queue_Wirte+0xc8>
1c006784:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c006788:	57ff63ff 	bl	-160(0xfffff60) # 1c0066e8 <Queue_NoUse>
1c00678c:	0015008c 	move	$r12,$r4
1c006790:	0015018d 	move	$r13,$r12
1c006794:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c006798:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c0067a4 <Queue_Wirte+0x50>
1c00679c:	0015000c 	move	$r12,$r0
1c0067a0:	50007c00 	b	124(0x7c) # 1c00681c <Queue_Wirte+0xc8>
1c0067a4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0067a8:	50006400 	b	100(0x64) # 1c00680c <Queue_Wirte+0xb8>
1c0067ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0067b0:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0067b4:	001031ac 	add.w	$r12,$r13,$r12
1c0067b8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0067bc:	2a4009ad 	ld.hu	$r13,$r13,2(0x2)
1c0067c0:	001501ae 	move	$r14,$r13
1c0067c4:	2a00018d 	ld.bu	$r13,$r12,0
1c0067c8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0067cc:	0010398c 	add.w	$r12,$r12,$r14
1c0067d0:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0067d4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0067d8:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c0067dc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0067e0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0067e4:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c0067e8:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c0067ec:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0067f4 <Queue_Wirte+0xa0>
1c0067f0:	002a0007 	break	0x7
1c0067f4:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c0067f8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0067fc:	2940098d 	st.h	$r13,$r12,2(0x2)
1c006800:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006804:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006808:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00680c:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c006810:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006814:	63ff99ac 	blt	$r13,$r12,-104(0x3ff98) # 1c0067ac <Queue_Wirte+0x58>
1c006818:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00681c:	00150184 	move	$r4,$r12
1c006820:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006824:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006828:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00682c:	4c000020 	jirl	$r0,$r1,0

1c006830 <BEEP_Init>:
BEEP_Init():
1c006830:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006834:	29803061 	st.w	$r1,$r3,12(0xc)
1c006838:	29802076 	st.w	$r22,$r3,8(0x8)
1c00683c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006840:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006844:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c006848:	57b027ff 	bl	-20444(0xfffb024) # 1c00186c <gpio_set_direction>
1c00684c:	03400000 	andi	$r0,$r0,0x0
1c006850:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006854:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006858:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00685c:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c006860 <msg_wakeup>:
msg_wakeup():
1c006860:	656b6177 	bge	$r11,$r23,93024(0x16b60) # 1c01d3c0 <_sidata+0x14bd4>
1c006864:	0a217075 	xvfmadd.d	$xr21,$xr3,$xr28,$xr2
	...

1c006869 <hexdecarr>:
hexdecarr():
1c006869:	33323130 	xvstelm.w	$xr16,$r9,-464(0x230),0x4
1c00686d:	37363534 	0x37363534
1c006871:	62613938 	blt	$r9,$r24,-106184(0x26138) # 1bfec9a9 <_start-0x13657>
1c006875:	66656463 	bge	$r3,$r3,-105116(0x26564) # 1bfecdd9 <_start-0x13227>
1c006879:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c00687d:	79654b0a 	0x79654b0a
1c006881:	73657220 	vssrani.wu.d	$vr0,$vr17,0x1c
1c006885:	0d217465 	xvbitsel.v	$xr5,$xr3,$xr29,$xr2
1c006889:	0d00000a 	fsel	$f10,$f0,$f0,$fcc0
1c00688d:	6970730a 	bltu	$r24,$r10,94320(0x17070) # 1c01d8fd <_sidata+0x15111>
1c006891:	6f6f6220 	bgeu	$r17,$r0,-37024(0x36f60) # 1bffd7f1 <_start-0x280f>
1c006895:	0d000074 	fsel	$f20,$f3,$f0,$fcc0
1c006899:	676f640a 	bge	$r0,$r10,-37020(0x36f64) # 1bffd7fd <_start-0x2803>
1c00689d:	72616220 	0x72616220
1c0068a1:	0a0d216b 	0x0a0d216b
1c0068a5:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0068a9:	6b61770a 	bltu	$r24,$r10,-40588(0x36174) # 1bffca1d <_start-0x35e3>
1c0068ad:	21705565 	sc.w	$r5,$r11,28756(0x7054)
1c0068b1:	c0000a0d 	0xc0000a0d
1c0068b5:	dc1c001d 	0xdc1c001d
1c0068b9:	dc1c001e 	0xdc1c001e
1c0068bd:	dc1c001e 	0xdc1c001e
1c0068c1:	dc1c001e 	0xdc1c001e
1c0068c5:	dc1c001e 	0xdc1c001e
1c0068c9:	dc1c001e 	0xdc1c001e
1c0068cd:	dc1c001e 	0xdc1c001e
1c0068d1:	dc1c001e 	0xdc1c001e
1c0068d5:	dc1c001e 	0xdc1c001e
1c0068d9:	dc1c001e 	0xdc1c001e
1c0068dd:	d81c001e 	0xd81c001e
1c0068e1:	601c001d 	blt	$r0,$r29,7168(0x1c00) # 1c0084e1 <tfont32+0x75d>
1c0068e5:	601c001e 	blt	$r0,$r30,7168(0x1c00) # 1c0084e5 <tfont32+0x761>
1c0068e9:	601c001e 	blt	$r0,$r30,7168(0x1c00) # 1c0084e9 <tfont32+0x765>
1c0068ed:	601c001e 	blt	$r0,$r30,7168(0x1c00) # 1c0084ed <tfont32+0x769>
1c0068f1:	601c001e 	blt	$r0,$r30,7168(0x1c00) # 1c0084f1 <tfont32+0x76d>
1c0068f5:	601c001e 	blt	$r0,$r30,7168(0x1c00) # 1c0084f5 <tfont32+0x771>
1c0068f9:	601c001e 	blt	$r0,$r30,7168(0x1c00) # 1c0084f9 <tfont32+0x775>
1c0068fd:	601c001e 	blt	$r0,$r30,7168(0x1c00) # 1c0084fd <tfont32+0x779>
1c006901:	601c001e 	blt	$r0,$r30,7168(0x1c00) # 1c008501 <tfont32+0x77d>
1c006905:	dc1c001e 	0xdc1c001e
1c006909:	dc1c001e 	0xdc1c001e
1c00690d:	dc1c001e 	0xdc1c001e
1c006911:	dc1c001e 	0xdc1c001e
1c006915:	dc1c001e 	0xdc1c001e
1c006919:	dc1c001e 	0xdc1c001e
1c00691d:	dc1c001e 	0xdc1c001e
1c006921:	dc1c001e 	0xdc1c001e
1c006925:	dc1c001e 	0xdc1c001e
1c006929:	dc1c001e 	0xdc1c001e
1c00692d:	dc1c001e 	0xdc1c001e
1c006931:	dc1c001e 	0xdc1c001e
1c006935:	dc1c001e 	0xdc1c001e
1c006939:	dc1c001e 	0xdc1c001e
1c00693d:	dc1c001e 	0xdc1c001e
1c006941:	dc1c001e 	0xdc1c001e
1c006945:	dc1c001e 	0xdc1c001e
1c006949:	dc1c001e 	0xdc1c001e
1c00694d:	dc1c001e 	0xdc1c001e
1c006951:	dc1c001e 	0xdc1c001e
1c006955:	dc1c001e 	0xdc1c001e
1c006959:	dc1c001e 	0xdc1c001e
1c00695d:	dc1c001e 	0xdc1c001e
1c006961:	dc1c001e 	0xdc1c001e
1c006965:	dc1c001e 	0xdc1c001e
1c006969:	dc1c001e 	0xdc1c001e
1c00696d:	dc1c001e 	0xdc1c001e
1c006971:	dc1c001e 	0xdc1c001e
1c006975:	dc1c001e 	0xdc1c001e
1c006979:	dc1c001e 	0xdc1c001e
1c00697d:	dc1c001e 	0xdc1c001e
1c006981:	dc1c001e 	0xdc1c001e
1c006985:	dc1c001e 	0xdc1c001e
1c006989:	dc1c001e 	0xdc1c001e
1c00698d:	dc1c001e 	0xdc1c001e
1c006991:	dc1c001e 	0xdc1c001e
1c006995:	dc1c001e 	0xdc1c001e
1c006999:	dc1c001e 	0xdc1c001e
1c00699d:	dc1c001e 	0xdc1c001e
1c0069a1:	dc1c001e 	0xdc1c001e
1c0069a5:	501c001e 	b	7871488(0x781c00) # 1c7885a5 <_sidata+0x77fdb9>
1c0069a9:	781c001d 	0x781c001d
1c0069ad:	e01c001c 	0xe01c001c
1c0069b1:	dc1c001c 	0xdc1c001c
1c0069b5:	dc1c001e 	0xdc1c001e
1c0069b9:	dc1c001e 	0xdc1c001e
1c0069bd:	dc1c001e 	0xdc1c001e
1c0069c1:	dc1c001e 	0xdc1c001e
1c0069c5:	dc1c001e 	0xdc1c001e
1c0069c9:	dc1c001e 	0xdc1c001e
1c0069cd:	dc1c001e 	0xdc1c001e
1c0069d1:	dc1c001e 	0xdc1c001e
1c0069d5:	dc1c001e 	0xdc1c001e
1c0069d9:	181c001e 	pcaddi	$r30,57344(0xe000)
1c0069dd:	881c001d 	0x881c001d
1c0069e1:	dc1c001d 	0xdc1c001d
1c0069e5:	dc1c001e 	0xdc1c001e
1c0069e9:	4c1c001e 	jirl	$r30,$r0,7168(0x1c00)
1c0069ed:	dc1c001c 	0xdc1c001c
1c0069f1:	a81c001e 	0xa81c001e
1c0069f5:	dc1c001c 	0xdc1c001c
1c0069f9:	dc1c001e 	0xdc1c001e
1c0069fd:	881c001e 	0x881c001e
1c006a01:	741c001d 	0x741c001d
1c006a05:	981c0023 	0x981c0023
1c006a09:	981c0024 	0x981c0024
1c006a0d:	981c0024 	0x981c0024
1c006a11:	981c0024 	0x981c0024
1c006a15:	981c0024 	0x981c0024
1c006a19:	981c0024 	0x981c0024
1c006a1d:	981c0024 	0x981c0024
1c006a21:	981c0024 	0x981c0024
1c006a25:	981c0024 	0x981c0024
1c006a29:	981c0024 	0x981c0024
1c006a2d:	941c0024 	0x941c0024
1c006a31:	1c1c0023 	pcaddu12i	$r3,57345(0xe001)
1c006a35:	1c1c0024 	pcaddu12i	$r4,57345(0xe001)
1c006a39:	1c1c0024 	pcaddu12i	$r4,57345(0xe001)
1c006a3d:	1c1c0024 	pcaddu12i	$r4,57345(0xe001)
1c006a41:	1c1c0024 	pcaddu12i	$r4,57345(0xe001)
1c006a45:	1c1c0024 	pcaddu12i	$r4,57345(0xe001)
1c006a49:	1c1c0024 	pcaddu12i	$r4,57345(0xe001)
1c006a4d:	1c1c0024 	pcaddu12i	$r4,57345(0xe001)
1c006a51:	1c1c0024 	pcaddu12i	$r4,57345(0xe001)
1c006a55:	981c0024 	0x981c0024
1c006a59:	981c0024 	0x981c0024
1c006a5d:	981c0024 	0x981c0024
1c006a61:	981c0024 	0x981c0024
1c006a65:	981c0024 	0x981c0024
1c006a69:	981c0024 	0x981c0024
1c006a6d:	981c0024 	0x981c0024
1c006a71:	981c0024 	0x981c0024
1c006a75:	981c0024 	0x981c0024
1c006a79:	981c0024 	0x981c0024
1c006a7d:	981c0024 	0x981c0024
1c006a81:	981c0024 	0x981c0024
1c006a85:	981c0024 	0x981c0024
1c006a89:	981c0024 	0x981c0024
1c006a8d:	981c0024 	0x981c0024
1c006a91:	981c0024 	0x981c0024
1c006a95:	981c0024 	0x981c0024
1c006a99:	981c0024 	0x981c0024
1c006a9d:	981c0024 	0x981c0024
1c006aa1:	981c0024 	0x981c0024
1c006aa5:	981c0024 	0x981c0024
1c006aa9:	981c0024 	0x981c0024
1c006aad:	981c0024 	0x981c0024
1c006ab1:	981c0024 	0x981c0024
1c006ab5:	981c0024 	0x981c0024
1c006ab9:	981c0024 	0x981c0024
1c006abd:	981c0024 	0x981c0024
1c006ac1:	981c0024 	0x981c0024
1c006ac5:	981c0024 	0x981c0024
1c006ac9:	981c0024 	0x981c0024
1c006acd:	981c0024 	0x981c0024
1c006ad1:	981c0024 	0x981c0024
1c006ad5:	981c0024 	0x981c0024
1c006ad9:	981c0024 	0x981c0024
1c006add:	981c0024 	0x981c0024
1c006ae1:	981c0024 	0x981c0024
1c006ae5:	981c0024 	0x981c0024
1c006ae9:	981c0024 	0x981c0024
1c006aed:	981c0024 	0x981c0024
1c006af1:	981c0024 	0x981c0024
1c006af5:	fc1c0024 	0xfc1c0024
1c006af9:	141c0022 	lu12i.w	$r2,57345(0xe001)
1c006afd:	841c0022 	0x841c0022
1c006b01:	981c0022 	0x981c0022
1c006b05:	981c0024 	0x981c0024
1c006b09:	981c0024 	0x981c0024
1c006b0d:	981c0024 	0x981c0024
1c006b11:	981c0024 	0x981c0024
1c006b15:	981c0024 	0x981c0024
1c006b19:	981c0024 	0x981c0024
1c006b1d:	981c0024 	0x981c0024
1c006b21:	981c0024 	0x981c0024
1c006b25:	981c0024 	0x981c0024
1c006b29:	c01c0024 	0xc01c0024
1c006b2d:	381c0022 	stx.d	$r2,$r1,$r0
1c006b31:	981c0023 	0x981c0023
1c006b35:	981c0024 	0x981c0024
1c006b39:	e41c0024 	0xe41c0024
1c006b3d:	981c0021 	0x981c0021
1c006b41:	481c0024 	bceqz	$fcc1,1055744(0x101c00) # 1c108741 <_sidata+0xfff55>
1c006b45:	981c0022 	0x981c0022
1c006b49:	981c0024 	0x981c0024
1c006b4d:	381c0024 	stx.d	$r4,$r1,$r0
1c006b51:	0a1c0023 	xvfmadd.s	$xr3,$xr1,$xr0,$xr24
1c006b55:	7c000000 	0x7c000000
1c006b59:	7c7c7c7c 	0x7c7c7c7c
1c006b5d:	7c7c7c7c 	0x7c7c7c7c
1c006b61:	7c7c7c7c 	0x7c7c7c7c
1c006b65:	7c7c7c7c 	0x7c7c7c7c
1c006b69:	7c7c7c7c 	0x7c7c7c7c
1c006b6d:	7c7c7c7c 	0x7c7c7c7c
1c006b71:	7c7c7c7c 	0x7c7c7c7c
1c006b75:	7c7c7c7c 	0x7c7c7c7c
1c006b79:	7c7c7c7c 	0x7c7c7c7c
1c006b7d:	7c7c7c7c 	0x7c7c7c7c
1c006b81:	7c7c7c7c 	0x7c7c7c7c
1c006b85:	7c7c7c7c 	0x7c7c7c7c
1c006b89:	7c7c7c7c 	0x7c7c7c7c
1c006b8d:	7c7c7c7c 	0x7c7c7c7c
1c006b91:	7c7c7c7c 	0x7c7c7c7c
1c006b95:	7c7c7c7c 	0x7c7c7c7c
1c006b99:	7c7c7c7c 	0x7c7c7c7c
1c006b9d:	7c7c7c7c 	0x7c7c7c7c
1c006ba1:	7c7c7c7c 	0x7c7c7c7c
1c006ba5:	7c7c7c7c 	0x7c7c7c7c
1c006ba9:	7c7c7c7c 	0x7c7c7c7c
1c006bad:	7c7c7c7c 	0x7c7c7c7c
1c006bb1:	7c7c7c7c 	0x7c7c7c7c
1c006bb5:	7c7c7c7c 	0x7c7c7c7c
1c006bb9:	7c00000a 	0x7c00000a
1c006bbd:	7c20207c 	0x7c20207c
1c006bc1:	7c7c7c7c 	0x7c7c7c7c
1c006bc5:	7c7c7c7c 	0x7c7c7c7c
1c006bc9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006bcd:	7c202020 	0x7c202020
1c006bd1:	7c7c7c7c 	0x7c7c7c7c
1c006bd5:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006bd9:	7c202020 	0x7c202020
1c006bdd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006be1:	7c7c2020 	0x7c7c2020
1c006be5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006be9:	7c7c7c20 	0x7c7c7c20
1c006bed:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006bf1:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006bf5:	7c7c7c7c 	0x7c7c7c7c
1c006bf9:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006bfd:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006c01:	7c7c7c7c 	0x7c7c7c7c
1c006c05:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006c09:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006c0d:	7c7c7c7c 	0x7c7c7c7c
1c006c11:	7c202020 	0x7c202020
1c006c15:	7c7c7c7c 	0x7c7c7c7c
1c006c19:	7c7c2020 	0x7c7c2020
1c006c1d:	7c00000a 	0x7c00000a
1c006c21:	7c20207c 	0x7c20207c
1c006c25:	7c7c7c7c 	0x7c7c7c7c
1c006c29:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006c2d:	7c7c2020 	0x7c7c2020
1c006c31:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006c35:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006c39:	7c7c2020 	0x7c7c2020
1c006c3d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006c41:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006c45:	7c202020 	0x7c202020
1c006c49:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006c4d:	7c7c7c20 	0x7c7c7c20
1c006c51:	7c20207c 	0x7c20207c
1c006c55:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006c59:	7c7c7c20 	0x7c7c7c20
1c006c5d:	7c202020 	0x7c202020
1c006c61:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006c65:	7c7c7c20 	0x7c7c7c20
1c006c69:	7c202020 	0x7c202020
1c006c6d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006c71:	7c7c7c20 	0x7c7c7c20
1c006c75:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006c79:	7c7c7c7c 	0x7c7c7c7c
1c006c7d:	7c7c2020 	0x7c7c2020
1c006c81:	7c00000a 	0x7c00000a
1c006c85:	7c20207c 	0x7c20207c
1c006c89:	7c7c7c7c 	0x7c7c7c7c
1c006c8d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006c91:	7c7c7c20 	0x7c7c7c20
1c006c95:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006c99:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006c9d:	7c7c7c20 	0x7c7c7c20
1c006ca1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006ca5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006ca9:	20207c20 	ll.w	$r0,$r1,8316(0x207c)
1c006cad:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006cb1:	7c7c7c20 	0x7c7c7c20
1c006cb5:	7c7c2020 	0x7c7c2020
1c006cb9:	7c7c7c7c 	0x7c7c7c7c
1c006cbd:	7c7c7c7c 	0x7c7c7c7c
1c006cc1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006cc5:	7c7c7c20 	0x7c7c7c20
1c006cc9:	7c7c7c7c 	0x7c7c7c7c
1c006ccd:	7c7c2020 	0x7c7c2020
1c006cd1:	7c7c7c7c 	0x7c7c7c7c
1c006cd5:	7c7c7c20 	0x7c7c7c20
1c006cd9:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c006cdd:	7c7c7c20 	0x7c7c7c20
1c006ce1:	7c7c2020 	0x7c7c2020
1c006ce5:	7c00000a 	0x7c00000a
1c006ce9:	7c20207c 	0x7c20207c
1c006ced:	7c7c7c7c 	0x7c7c7c7c
1c006cf1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006cf5:	7c7c7c20 	0x7c7c7c20
1c006cf9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006cfd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006d01:	7c7c7c20 	0x7c7c7c20
1c006d05:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006d09:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006d0d:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c006d11:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c006d15:	7c7c7c20 	0x7c7c7c20
1c006d19:	7c7c2020 	0x7c7c2020
1c006d1d:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006d21:	7c7c7c20 	0x7c7c7c20
1c006d25:	7c7c7c7c 	0x7c7c7c7c
1c006d29:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006d2d:	7c7c7c7c 	0x7c7c7c7c
1c006d31:	7c7c2020 	0x7c7c2020
1c006d35:	7c7c7c7c 	0x7c7c7c7c
1c006d39:	7c7c7c20 	0x7c7c7c20
1c006d3d:	7c7c2020 	0x7c7c2020
1c006d41:	7c7c2020 	0x7c7c2020
1c006d45:	7c7c2020 	0x7c7c2020
1c006d49:	7c00000a 	0x7c00000a
1c006d4d:	7c20207c 	0x7c20207c
1c006d51:	7c7c7c7c 	0x7c7c7c7c
1c006d55:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006d59:	7c7c7c20 	0x7c7c7c20
1c006d5d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006d61:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006d65:	7c7c7c20 	0x7c7c7c20
1c006d69:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006d6d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006d71:	7c7c7c20 	0x7c7c7c20
1c006d75:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c006d79:	7c7c7c20 	0x7c7c7c20
1c006d7d:	7c7c2020 	0x7c7c2020
1c006d81:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006d85:	7c7c7c20 	0x7c7c7c20
1c006d89:	7c7c7c7c 	0x7c7c7c7c
1c006d8d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006d91:	7c7c7c20 	0x7c7c7c20
1c006d95:	7c7c2020 	0x7c7c2020
1c006d99:	7c7c7c7c 	0x7c7c7c7c
1c006d9d:	7c7c7c20 	0x7c7c7c20
1c006da1:	7c7c2020 	0x7c7c2020
1c006da5:	7c20207c 	0x7c20207c
1c006da9:	7c7c2020 	0x7c7c2020
1c006dad:	7c00000a 	0x7c00000a
1c006db1:	7c20207c 	0x7c20207c
1c006db5:	7c7c7c7c 	0x7c7c7c7c
1c006db9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006dbd:	7c7c2020 	0x7c7c2020
1c006dc1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006dc5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006dc9:	7c7c2020 	0x7c7c2020
1c006dcd:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006dd1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006dd5:	7c7c7c20 	0x7c7c7c20
1c006dd9:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006ddd:	7c7c7c20 	0x7c7c7c20
1c006de1:	7c202020 	0x7c202020
1c006de5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006de9:	7c7c7c20 	0x7c7c7c20
1c006ded:	7c202020 	0x7c202020
1c006df1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006df5:	7c7c7c7c 	0x7c7c7c7c
1c006df9:	7c202020 	0x7c202020
1c006dfd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006e01:	7c7c7c20 	0x7c7c7c20
1c006e05:	7c7c2020 	0x7c7c2020
1c006e09:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006e0d:	7c7c2020 	0x7c7c2020
1c006e11:	7c00000a 	0x7c00000a
1c006e15:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006e19:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006e1d:	7c7c7c7c 	0x7c7c7c7c
1c006e21:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006e25:	7c202020 	0x7c202020
1c006e29:	7c7c7c7c 	0x7c7c7c7c
1c006e2d:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006e31:	7c202020 	0x7c202020
1c006e35:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006e39:	7c7c7c20 	0x7c7c7c20
1c006e3d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006e41:	7c7c7c20 	0x7c7c7c20
1c006e45:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006e49:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006e4d:	7c7c7c7c 	0x7c7c7c7c
1c006e51:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006e55:	7c202020 	0x7c202020
1c006e59:	7c7c7c7c 	0x7c7c7c7c
1c006e5d:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006e61:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006e65:	7c7c7c7c 	0x7c7c7c7c
1c006e69:	7c7c2020 	0x7c7c2020
1c006e6d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006e71:	7c7c2020 	0x7c7c2020
1c006e75:	7c00000a 	0x7c00000a
1c006e79:	7c7c7c7c 	0x7c7c7c7c
1c006e7d:	7c7c7c7c 	0x7c7c7c7c
1c006e81:	7c7c7c7c 	0x7c7c7c7c
1c006e85:	7c7c7c7c 	0x7c7c7c7c
1c006e89:	7c7c7c7c 	0x7c7c7c7c
1c006e8d:	7c7c7c7c 	0x7c7c7c7c
1c006e91:	7c7c7c7c 	0x7c7c7c7c
1c006e95:	7c7c7c7c 	0x7c7c7c7c
1c006e99:	7c7c7c7c 	0x7c7c7c7c
1c006e9d:	325b7c7c 	xvldrepl.h	$xr28,$r3,-578(0xdbe)
1c006ea1:	20303230 	ll.w	$r16,$r17,12336(0x3030)
1c006ea5:	4e4f4f4c 	jirl	$r12,$r26,-110772(0x24f4c)
1c006ea9:	4e4f5347 	jirl	$r7,$r26,-110768(0x24f50)
1c006ead:	7c7c7c5d 	0x7c7c7c5d
1c006eb1:	7c7c7c7c 	0x7c7c7c7c
1c006eb5:	7c7c7c7c 	0x7c7c7c7c
1c006eb9:	7c7c7c7c 	0x7c7c7c7c
1c006ebd:	7c7c7c7c 	0x7c7c7c7c
1c006ec1:	7c7c7c7c 	0x7c7c7c7c
1c006ec5:	7c7c7c7c 	0x7c7c7c7c
1c006ec9:	7c7c7c7c 	0x7c7c7c7c
1c006ecd:	7c7c7c7c 	0x7c7c7c7c
1c006ed1:	7c7c7c7c 	0x7c7c7c7c
1c006ed5:	7c7c7c7c 	0x7c7c7c7c
1c006ed9:	0900000a 	0x0900000a
1c006edd:	0a006425 	0x0a006425
1c006ee1:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006ee5:	776f440a 	xvssrarni.du.q	$xr10,$xr0,0x51
1c006ee9:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c006eed:	0050550a 	0x0050550a
1c006ef1:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006ef5:	6c754d0a 	bgeu	$r8,$r10,30028(0x754c) # 1c00e441 <_sidata+0x5c55>
1c006ef9:	776f4469 	xvssrarni.du.q	$xr9,$xr3,0x51
1c006efd:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c006f01:	756f430a 	0x756f430a
1c006f05:	4f20746e 	jirl	$r14,$r3,-57228(0x32074)
1c006f09:	0d000056 	fsel	$f22,$f2,$f0,$fcc0
1c006f0d:	3030090a 	0x3030090a
1c006f11:	09313009 	0x09313009
1c006f15:	30093230 	0x30093230
1c006f19:	34300933 	0x34300933
1c006f1d:	09353009 	0x09353009
1c006f21:	30093630 	0x30093630
1c006f25:	38300937 	fldx.s	$f23,$r9,$r2
1c006f29:	09393009 	0x09393009
1c006f2d:	31093031 	0x31093031
1c006f31:	0d000031 	fsel	$f17,$f1,$f0,$fcc0
1c006f35:	746e630a 	0x746e630a
1c006f39:	09000000 	0x09000000
1c006f3d:	00643425 	bstrins.w	$r5,$r1,0x4,0xd
1c006f41:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006f45:	7361420a 	vssrani.w.d	$vr10,$vr16,0x10
1c006f49:	6c615665 	bgeu	$r19,$r5,24916(0x6154) # 1c00d09d <_sidata+0x48b1>
1c006f4d:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006f51:	6275530a 	blt	$r24,$r10,-101040(0x27550) # 1bfee4a1 <_start-0x11b5f>
1c006f55:	006c6156 	bstrins.w	$r22,$r10,0xc,0x18
1c006f59:	09000000 	0x09000000
1c006f5d:	00643225 	bstrins.w	$r5,$r17,0x4,0xc
1c006f61:	09000000 	0x09000000
1c006f65:	00643325 	bstrins.w	$r5,$r25,0x4,0xc
1c006f69:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006f6d:	203c200a 	ll.w	$r10,$r0,15392(0x3c20)
1c006f71:	3a515249 	0x3a515249
1c006f75:	20642520 	ll.w	$r0,$r9,25636(0x6424)
1c006f79:	636e7566 	blt	$r11,$r6,-37260(0x36e74) # 1bffdded <_start-0x2213>
1c006f7d:	2073253a 	ll.w	$r26,$r9,29476(0x7324)
1c006f81:	0d3e2020 	0x0d3e2020
1c006f85:	0a00000a 	0x0a00000a
1c006f89:	2e2e2e2e 	0x2e2e2e2e
1c006f8d:	2e2e2e2e 	0x2e2e2e2e
1c006f91:	2e2e2e2e 	0x2e2e2e2e
1c006f95:	464f532e 	bnez	$r25,3821392(0x3a4f50) # 1c3abee5 <_sidata+0x3a36f9>
1c006f99:	4e495f54 	jirl	$r20,$r26,-112292(0x2495c)
1c006f9d:	2e2e2e54 	0x2e2e2e54
1c006fa1:	2e2e2e2e 	0x2e2e2e2e
1c006fa5:	2e2e2e2e 	0x2e2e2e2e
1c006fa9:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c006fad:	0d00000d 	fsel	$f13,$f0,$f0,$fcc0
1c006fb1:	2e2e2e0a 	0x2e2e2e0a
1c006fb5:	2e2e2e2e 	0x2e2e2e2e
1c006fb9:	2e2e2e2e 	0x2e2e2e2e
1c006fbd:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c39b1e9 <_sidata+0x3929fd>
1c006fc1:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd1b61d <_start-0x2e49e3>
1c006fc5:	2e2e4c49 	0x2e2e4c49
1c006fc9:	2e2e2e2e 	0x2e2e2e2e
1c006fcd:	2e2e2e2e 	0x2e2e2e2e
1c006fd1:	2e2e2e2e 	0x2e2e2e2e
1c006fd5:	0d000a0d 	fsel	$f13,$f16,$f2,$fcc0
1c006fd9:	2e2e2e0a 	0x2e2e2e0a
1c006fdd:	2e2e2e2e 	0x2e2e2e2e
1c006fe1:	2e2e2e2e 	0x2e2e2e2e
1c006fe5:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c38b111 <_sidata+0x382925>
1c006fe9:	2e2e2e43 	0x2e2e2e43
1c006fed:	2e2e2e2e 	0x2e2e2e2e
1c006ff1:	2e2e2e2e 	0x2e2e2e2e
1c006ff5:	0d2e2e2e 	xvbitsel.v	$xr14,$xr17,$xr11,$xr28
1c006ff9:	4300000a 	beqz	$r0,2818048(0x2b0000) # 1c2b6ff9 <_sidata+0x2ae80d>
1c006ffd:	2065726f 	ll.w	$r15,$r19,25968(0x6570)
1c007001:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c01dd69 <_sidata+0x1557d>
1c007005:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c00d325 <_sidata+0x4b39>
1c007009:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c00700d:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c01e479 <_sidata+0x15c8d>
1c007011:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c007015:	0d2e2e74 	xvbitsel.v	$xr20,$xr19,$xr11,$xr28
1c007019:	 	jirl	$r10,$r0,0

1c00701c <Ext_IrqHandle>:
1c00701c:	1c003f4c 	pcaddu12i	$r12,506(0x1fa)
1c007020:	1c003f98 	pcaddu12i	$r24,508(0x1fc)
1c007024:	1c003fe4 	pcaddu12i	$r4,511(0x1ff)
1c007028:	1c004030 	pcaddu12i	$r16,513(0x201)
1c00702c:	1c00407c 	pcaddu12i	$r28,515(0x203)
1c007030:	1c0040c8 	pcaddu12i	$r8,518(0x206)
1c007034:	1c004114 	pcaddu12i	$r20,520(0x208)
1c007038:	1c004160 	pcaddu12i	$r0,523(0x20b)
1c00703c:	1c0041ac 	pcaddu12i	$r12,525(0x20d)
1c007040:	1c0041f8 	pcaddu12i	$r24,527(0x20f)
1c007044:	1c004244 	pcaddu12i	$r4,530(0x212)
1c007048:	1c004290 	pcaddu12i	$r16,532(0x214)
1c00704c:	1c0042dc 	pcaddu12i	$r28,534(0x216)
1c007050:	1c004328 	pcaddu12i	$r8,537(0x219)
1c007054:	1c004374 	pcaddu12i	$r20,539(0x21b)
1c007058:	1c0043c0 	pcaddu12i	$r0,542(0x21e)
1c00705c:	1c00440c 	pcaddu12i	$r12,544(0x220)
1c007060:	1c004458 	pcaddu12i	$r24,546(0x222)
1c007064:	1c0044a4 	pcaddu12i	$r4,549(0x225)
1c007068:	1c0044f0 	pcaddu12i	$r16,551(0x227)
1c00706c:	1c00453c 	pcaddu12i	$r28,553(0x229)
1c007070:	1c004588 	pcaddu12i	$r8,556(0x22c)
1c007074:	1c0045d4 	pcaddu12i	$r20,558(0x22e)
1c007078:	1c004620 	pcaddu12i	$r0,561(0x231)
1c00707c:	1c00466c 	pcaddu12i	$r12,563(0x233)
1c007080:	1c0046b8 	pcaddu12i	$r24,565(0x235)
1c007084:	1c004704 	pcaddu12i	$r4,568(0x238)
1c007088:	1c004750 	pcaddu12i	$r16,570(0x23a)
1c00708c:	1c00479c 	pcaddu12i	$r28,572(0x23c)
1c007090:	1c0047e8 	pcaddu12i	$r8,575(0x23f)
1c007094:	1c004834 	pcaddu12i	$r20,577(0x241)
1c007098:	1c004880 	pcaddu12i	$r0,580(0x244)
1c00709c:	1c004b64 	pcaddu12i	$r4,603(0x25b)
1c0070a0:	1c004b14 	pcaddu12i	$r20,600(0x258)
1c0070a4:	1c004b64 	pcaddu12i	$r4,603(0x25b)
1c0070a8:	1c004b64 	pcaddu12i	$r4,603(0x25b)
1c0070ac:	1c004b64 	pcaddu12i	$r4,603(0x25b)
1c0070b0:	1c004b64 	pcaddu12i	$r4,603(0x25b)
1c0070b4:	1c004b64 	pcaddu12i	$r4,603(0x25b)
1c0070b8:	1c004b64 	pcaddu12i	$r4,603(0x25b)
1c0070bc:	1c004b64 	pcaddu12i	$r4,603(0x25b)
1c0070c0:	1c004b64 	pcaddu12i	$r4,603(0x25b)
1c0070c4:	1c004b64 	pcaddu12i	$r4,603(0x25b)
1c0070c8:	1c004b64 	pcaddu12i	$r4,603(0x25b)
1c0070cc:	1c004b64 	pcaddu12i	$r4,603(0x25b)
1c0070d0:	1c004b64 	pcaddu12i	$r4,603(0x25b)
1c0070d4:	1c004b64 	pcaddu12i	$r4,603(0x25b)
1c0070d8:	1c004b64 	pcaddu12i	$r4,603(0x25b)
1c0070dc:	1c004b30 	pcaddu12i	$r16,601(0x259)

1c0070e0 <__FUNCTION__.1648>:
1c0070e0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e558 <_sidata+0x15d6c>
1c0070e4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e148 <_sidata+0x1595c>
1c0070e8:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bffa148 <_start-0x5eb8>
1c0070ec:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe25c <_start-0x1da4>
1c0070f0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00df50 <_sidata+0x5764>
1c0070f4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0070f8 <__FUNCTION__.1652>:
1c0070f8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e570 <_sidata+0x15d84>
1c0070fc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e160 <_sidata+0x15974>
1c007100:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bffa260 <_start-0x5da0>
1c007104:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe274 <_start-0x1d8c>
1c007108:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00df68 <_sidata+0x577c>
1c00710c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007110 <__FUNCTION__.1656>:
1c007110:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e588 <_sidata+0x15d9c>
1c007114:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e178 <_sidata+0x1598c>
1c007118:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bffa378 <_start-0x5c88>
1c00711c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe28c <_start-0x1d74>
1c007120:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00df80 <_sidata+0x5794>
1c007124:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007128 <__FUNCTION__.1660>:
1c007128:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e5a0 <_sidata+0x15db4>
1c00712c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e190 <_sidata+0x159a4>
1c007130:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bffa490 <_start-0x5b70>
1c007134:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe2a4 <_start-0x1d5c>
1c007138:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00df98 <_sidata+0x57ac>
1c00713c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007140 <__FUNCTION__.1664>:
1c007140:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e5b8 <_sidata+0x15dcc>
1c007144:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e1a8 <_sidata+0x159bc>
1c007148:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bffa5a8 <_start-0x5a58>
1c00714c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe2bc <_start-0x1d44>
1c007150:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dfb0 <_sidata+0x57c4>
1c007154:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007158 <__FUNCTION__.1668>:
1c007158:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e5d0 <_sidata+0x15de4>
1c00715c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e1c0 <_sidata+0x159d4>
1c007160:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bffa6c0 <_start-0x5940>
1c007164:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe2d4 <_start-0x1d2c>
1c007168:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dfc8 <_sidata+0x57dc>
1c00716c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007170 <__FUNCTION__.1672>:
1c007170:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e5e8 <_sidata+0x15dfc>
1c007174:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e1d8 <_sidata+0x159ec>
1c007178:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bffa7d8 <_start-0x5828>
1c00717c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe2ec <_start-0x1d14>
1c007180:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dfe0 <_sidata+0x57f4>
1c007184:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007188 <__FUNCTION__.1676>:
1c007188:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e600 <_sidata+0x15e14>
1c00718c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e1f0 <_sidata+0x15a04>
1c007190:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bffa8f0 <_start-0x5710>
1c007194:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe304 <_start-0x1cfc>
1c007198:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dff8 <_sidata+0x580c>
1c00719c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0071a0 <__FUNCTION__.1680>:
1c0071a0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e618 <_sidata+0x15e2c>
1c0071a4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e208 <_sidata+0x15a1c>
1c0071a8:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bffa208 <_start-0x5df8>
1c0071ac:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe31c <_start-0x1ce4>
1c0071b0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e010 <_sidata+0x5824>
1c0071b4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0071b8 <__FUNCTION__.1684>:
1c0071b8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e630 <_sidata+0x15e44>
1c0071bc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e220 <_sidata+0x15a34>
1c0071c0:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bffa320 <_start-0x5ce0>
1c0071c4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe334 <_start-0x1ccc>
1c0071c8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e028 <_sidata+0x583c>
1c0071cc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0071d0 <__FUNCTION__.1688>:
1c0071d0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e648 <_sidata+0x15e5c>
1c0071d4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e238 <_sidata+0x15a4c>
1c0071d8:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bffa438 <_start-0x5bc8>
1c0071dc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe34c <_start-0x1cb4>
1c0071e0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e040 <_sidata+0x5854>
1c0071e4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0071e8 <__FUNCTION__.1692>:
1c0071e8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e660 <_sidata+0x15e74>
1c0071ec:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e250 <_sidata+0x15a64>
1c0071f0:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bffa550 <_start-0x5ab0>
1c0071f4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe364 <_start-0x1c9c>
1c0071f8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e058 <_sidata+0x586c>
1c0071fc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007200 <__FUNCTION__.1696>:
1c007200:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e678 <_sidata+0x15e8c>
1c007204:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e268 <_sidata+0x15a7c>
1c007208:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bffa668 <_start-0x5998>
1c00720c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe37c <_start-0x1c84>
1c007210:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e070 <_sidata+0x5884>
1c007214:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007218 <__FUNCTION__.1700>:
1c007218:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e690 <_sidata+0x15ea4>
1c00721c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e280 <_sidata+0x15a94>
1c007220:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bffa780 <_start-0x5880>
1c007224:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe394 <_start-0x1c6c>
1c007228:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e088 <_sidata+0x589c>
1c00722c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007230 <__FUNCTION__.1704>:
1c007230:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e6a8 <_sidata+0x15ebc>
1c007234:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e298 <_sidata+0x15aac>
1c007238:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bffa898 <_start-0x5768>
1c00723c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe3ac <_start-0x1c54>
1c007240:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e0a0 <_sidata+0x58b4>
1c007244:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007248 <__FUNCTION__.1708>:
1c007248:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e6c0 <_sidata+0x15ed4>
1c00724c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e2b0 <_sidata+0x15ac4>
1c007250:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bffa9b0 <_start-0x5650>
1c007254:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe3c4 <_start-0x1c3c>
1c007258:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e0b8 <_sidata+0x58cc>
1c00725c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007260 <__FUNCTION__.1712>:
1c007260:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e6d8 <_sidata+0x15eec>
1c007264:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e2c8 <_sidata+0x15adc>
1c007268:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bffa2c8 <_start-0x5d38>
1c00726c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe3dc <_start-0x1c24>
1c007270:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e0d0 <_sidata+0x58e4>
1c007274:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007278 <__FUNCTION__.1716>:
1c007278:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e6f0 <_sidata+0x15f04>
1c00727c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e2e0 <_sidata+0x15af4>
1c007280:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bffa3e0 <_start-0x5c20>
1c007284:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe3f4 <_start-0x1c0c>
1c007288:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e0e8 <_sidata+0x58fc>
1c00728c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007290 <__FUNCTION__.1720>:
1c007290:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e708 <_sidata+0x15f1c>
1c007294:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e2f8 <_sidata+0x15b0c>
1c007298:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bffa4f8 <_start-0x5b08>
1c00729c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe40c <_start-0x1bf4>
1c0072a0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e100 <_sidata+0x5914>
1c0072a4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0072a8 <__FUNCTION__.1724>:
1c0072a8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e720 <_sidata+0x15f34>
1c0072ac:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e310 <_sidata+0x15b24>
1c0072b0:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bffa610 <_start-0x59f0>
1c0072b4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe424 <_start-0x1bdc>
1c0072b8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e118 <_sidata+0x592c>
1c0072bc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0072c0 <__FUNCTION__.1728>:
1c0072c0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e738 <_sidata+0x15f4c>
1c0072c4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e328 <_sidata+0x15b3c>
1c0072c8:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bffa728 <_start-0x58d8>
1c0072cc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe43c <_start-0x1bc4>
1c0072d0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e130 <_sidata+0x5944>
1c0072d4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0072d8 <__FUNCTION__.1732>:
1c0072d8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e750 <_sidata+0x15f64>
1c0072dc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e340 <_sidata+0x15b54>
1c0072e0:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bffa840 <_start-0x57c0>
1c0072e4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe454 <_start-0x1bac>
1c0072e8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e148 <_sidata+0x595c>
1c0072ec:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0072f0 <__FUNCTION__.1736>:
1c0072f0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e768 <_sidata+0x15f7c>
1c0072f4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e358 <_sidata+0x15b6c>
1c0072f8:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bffa958 <_start-0x56a8>
1c0072fc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe46c <_start-0x1b94>
1c007300:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e160 <_sidata+0x5974>
1c007304:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007308 <__FUNCTION__.1740>:
1c007308:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e780 <_sidata+0x15f94>
1c00730c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e370 <_sidata+0x15b84>
1c007310:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bffaa70 <_start-0x5590>
1c007314:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe484 <_start-0x1b7c>
1c007318:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e178 <_sidata+0x598c>
1c00731c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007320 <__FUNCTION__.1744>:
1c007320:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e798 <_sidata+0x15fac>
1c007324:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e388 <_sidata+0x15b9c>
1c007328:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bffa38c <_start-0x5c74>
1c00732c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe49c <_start-0x1b64>
1c007330:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e190 <_sidata+0x59a4>
1c007334:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007338 <__FUNCTION__.1748>:
1c007338:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e7b0 <_sidata+0x15fc4>
1c00733c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e3a0 <_sidata+0x15bb4>
1c007340:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bffa4a4 <_start-0x5b5c>
1c007344:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe4b4 <_start-0x1b4c>
1c007348:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e1a8 <_sidata+0x59bc>
1c00734c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007350 <__FUNCTION__.1752>:
1c007350:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e7c8 <_sidata+0x15fdc>
1c007354:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e3b8 <_sidata+0x15bcc>
1c007358:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bffa5bc <_start-0x5a44>
1c00735c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe4cc <_start-0x1b34>
1c007360:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e1c0 <_sidata+0x59d4>
1c007364:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007368 <__FUNCTION__.1756>:
1c007368:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e7e0 <_sidata+0x15ff4>
1c00736c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e3d0 <_sidata+0x15be4>
1c007370:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bffa6d4 <_start-0x592c>
1c007374:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe4e4 <_start-0x1b1c>
1c007378:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e1d8 <_sidata+0x59ec>
1c00737c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007380 <__FUNCTION__.1760>:
1c007380:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e7f8 <_sidata+0x1600c>
1c007384:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e3e8 <_sidata+0x15bfc>
1c007388:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bffa7ec <_start-0x5814>
1c00738c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe4fc <_start-0x1b04>
1c007390:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e1f0 <_sidata+0x5a04>
1c007394:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007398 <__FUNCTION__.1764>:
1c007398:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e810 <_sidata+0x16024>
1c00739c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e400 <_sidata+0x15c14>
1c0073a0:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bffa904 <_start-0x56fc>
1c0073a4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe514 <_start-0x1aec>
1c0073a8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e208 <_sidata+0x5a1c>
1c0073ac:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0073b0 <__FUNCTION__.1768>:
1c0073b0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e828 <_sidata+0x1603c>
1c0073b4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e418 <_sidata+0x15c2c>
1c0073b8:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bffaa1c <_start-0x55e4>
1c0073bc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe52c <_start-0x1ad4>
1c0073c0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e220 <_sidata+0x5a34>
1c0073c4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0073c8 <__FUNCTION__.1772>:
1c0073c8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e840 <_sidata+0x16054>
1c0073cc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e430 <_sidata+0x15c44>
1c0073d0:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bffab34 <_start-0x54cc>
1c0073d4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe544 <_start-0x1abc>
1c0073d8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e238 <_sidata+0x5a4c>
1c0073dc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0073e0 <asc2_1608>:
	...
1c0073f0:	f8000000 	0xf8000000
1c0073f4:	00000000 	0x00000000
1c0073f8:	33000000 	0x33000000
1c0073fc:	00000000 	0x00000000
1c007400:	020c1000 	slti	$r0,$r0,772(0x304)
1c007404:	00020c10 	0x00020c10
	...
1c007410:	78c04000 	0x78c04000
1c007414:	0078c040 	bstrpick.w	$r0,$r2,0x18,0x10
1c007418:	043f0400 	csrrd	$r0,0xfc1
1c00741c:	00043f04 	alsl.w	$r4,$r24,$r15,0x1
1c007420:	88887000 	0x88887000
1c007424:	003008fc 	0x003008fc
1c007428:	20201800 	ll.w	$r0,$r0,8216(0x2018)
1c00742c:	001e21ff 	mulh.d	$r31,$r15,$r8
1c007430:	80f008f0 	0x80f008f0
1c007434:	00001860 	cto.w	$r0,$r3
1c007438:	030c3100 	lu52i.d	$r0,$r8,780(0x30c)
1c00743c:	001e211e 	mulh.d	$r30,$r8,$r8
1c007440:	8808f000 	0x8808f000
1c007444:	00000070 	0x00000070
1c007448:	2c23211e 	vld	$vr30,$r8,-1848(0x8c8)
1c00744c:	10212719 	addu16i.d	$r25,$r24,2121(0x849)
1c007450:	000e1200 	bytepick.d	$r0,$r16,$r4,0x4
	...
1c007460:	e0000000 	0xe0000000
1c007464:	00020418 	0x00020418
1c007468:	07000000 	0x07000000
1c00746c:	00402018 	0x00402018
1c007470:	18040200 	pcaddi	$r0,8208(0x2010)
1c007474:	000000e0 	0x000000e0
1c007478:	18204000 	pcaddi	$r0,66048(0x10200)
1c00747c:	00000007 	0x00000007
1c007480:	f0804040 	0xf0804040
1c007484:	00404080 	0x00404080
1c007488:	0f010202 	0x0f010202
1c00748c:	00020201 	0x00020201
1c007490:	00000000 	0x00000000
1c007494:	000000e0 	0x000000e0
1c007498:	01010100 	fadd.d	$f0,$f8,$f0
1c00749c:	0101010f 	fadd.d	$f15,$f8,$f0
	...
1c0074a8:	00709000 	bstrpick.w	$r0,$r0,0x10,0x4
	...
1c0074b8:	01010100 	fadd.d	$f0,$f8,$f0
1c0074bc:	00010101 	0x00010101
	...
1c0074c8:	00303000 	0x00303000
	...
1c0074d4:	000438c0 	alsl.w	$r0,$r6,$r14,0x1
1c0074d8:	07186000 	0x07186000
1c0074dc:	00000000 	0x00000000
1c0074e0:	0810e000 	fmadd.s	$f0,$f0,$f24,$f1
1c0074e4:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c0074e8:	20100f00 	ll.w	$r0,$r24,4108(0x100c)
1c0074ec:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c0074f0:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c0074f4:	000000f8 	0x000000f8
1c0074f8:	20200000 	ll.w	$r0,$r0,8192(0x2000)
1c0074fc:	0020203f 	div.w	$r31,$r1,$r8
1c007500:	08087000 	0x08087000
1c007504:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c007508:	24283000 	ldptr.w	$r0,$r0,10288(0x2830)
1c00750c:	00302122 	0x00302122
1c007510:	08083000 	0x08083000
1c007514:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c007518:	21201800 	sc.w	$r0,$r0,8216(0x2018)
1c00751c:	001c2221 	mul.w	$r1,$r17,$r8
1c007520:	40800000 	beqz	$r0,32768(0x8000) # 1c00f520 <_sidata+0x6d34>
1c007524:	0000f830 	0x0000f830
1c007528:	24050600 	ldptr.w	$r0,$r16,1284(0x504)
1c00752c:	24243f24 	ldptr.w	$r4,$r25,9276(0x243c)
1c007530:	8888f800 	0x8888f800
1c007534:	00080888 	bytepick.w	$r8,$r4,$r2,0x0
1c007538:	20201900 	ll.w	$r0,$r8,8216(0x2018)
1c00753c:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c007540:	8810e000 	0x8810e000
1c007544:	00009088 	0x00009088
1c007548:	20110f00 	ll.w	$r0,$r24,4364(0x110c)
1c00754c:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c007550:	08081800 	0x08081800
1c007554:	00186888 	sra.w	$r8,$r4,$r26
1c007558:	3e000000 	0x3e000000
1c00755c:	00000001 	0x00000001
1c007560:	08887000 	0x08887000
1c007564:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c007568:	21221c00 	sc.w	$r0,$r0,8732(0x221c)
1c00756c:	001c2221 	mul.w	$r1,$r17,$r8
1c007570:	0808f000 	0x0808f000
1c007574:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c007578:	22120100 	ll.d	$r0,$r8,4608(0x1200)
1c00757c:	000f1122 	bytepick.d	$r2,$r9,$r4,0x6
1c007580:	c0000000 	0xc0000000
1c007584:	000000c0 	0x000000c0
1c007588:	30000000 	0x30000000
1c00758c:	00000030 	0x00000030
1c007590:	80000000 	0x80000000
1c007594:	00000000 	0x00000000
1c007598:	e0000000 	0xe0000000
1c00759c:	00000000 	0x00000000
1c0075a0:	40800000 	beqz	$r0,32768(0x8000) # 1c00f5a0 <_sidata+0x6db4>
1c0075a4:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c0075a8:	04020100 	csrxchg	$r0,$r8,0x80
1c0075ac:	00201008 	div.w	$r8,$r0,$r4
1c0075b0:	40404000 	beqz	$r0,16448(0x4040) # 1c00b5f0 <_sidata+0x2e04>
1c0075b4:	00404040 	0x00404040
1c0075b8:	02020200 	slti	$r0,$r16,128(0x80)
1c0075bc:	00020202 	0x00020202
1c0075c0:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c0075c4:	00008040 	0x00008040
1c0075c8:	08102000 	fmadd.s	$f0,$f0,$f8,$f0
1c0075cc:	00010204 	0x00010204
1c0075d0:	08487000 	0x08487000
1c0075d4:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c0075d8:	30000000 	0x30000000
1c0075dc:	00000037 	0x00000037
1c0075e0:	28c830c0 	ld.d	$r0,$r6,524(0x20c)
1c0075e4:	00e010e8 	bstrpick.d	$r8,$r7,0x20,0x4
1c0075e8:	28271807 	ld.b	$r7,$r0,-1594(0x9c6)
1c0075ec:	0017282f 	sll.w	$r15,$r1,$r10
1c0075f0:	38c00000 	0x38c00000
1c0075f4:	000000e0 	0x000000e0
1c0075f8:	02233c20 	slti	$r0,$r1,-1841(0x8cf)
1c0075fc:	20382702 	ll.w	$r2,$r24,14372(0x3824)
1c007600:	8888f808 	0x8888f808
1c007604:	00007088 	0x00007088
1c007608:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c00760c:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c007610:	080830c0 	0x080830c0
1c007614:	00380808 	0x00380808
1c007618:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c00761c:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c007620:	0808f808 	0x0808f808
1c007624:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c007628:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c00762c:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c007630:	8888f808 	0x8888f808
1c007634:	001008e8 	add.w	$r8,$r7,$r2
1c007638:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c00763c:	00182023 	sra.w	$r3,$r1,$r8
1c007640:	8888f808 	0x8888f808
1c007644:	001008e8 	add.w	$r8,$r7,$r2
1c007648:	00203f20 	div.w	$r0,$r25,$r15
1c00764c:	00000003 	0x00000003
1c007650:	080830c0 	0x080830c0
1c007654:	00003808 	revb.2w	$r8,$r0
1c007658:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c00765c:	00021e22 	0x00021e22
1c007660:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c007664:	08f80800 	0x08f80800
1c007668:	01213f20 	0x01213f20
1c00766c:	203f2101 	ll.w	$r1,$r8,16160(0x3f20)
1c007670:	f8080800 	0xf8080800
1c007674:	00000808 	0x00000808
1c007678:	3f202000 	0x3f202000
1c00767c:	00002020 	clo.d	$r0,$r1
1c007680:	08080000 	0x08080000
1c007684:	000808f8 	bytepick.w	$r24,$r7,$r2,0x0
1c007688:	808080c0 	0x808080c0
1c00768c:	0000007f 	0x0000007f
1c007690:	c088f808 	0xc088f808
1c007694:	00081828 	bytepick.w	$r8,$r1,$r6,0x0
1c007698:	01203f20 	0x01203f20
1c00769c:	00203826 	div.w	$r6,$r1,$r14
1c0076a0:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c0076a4:	00000000 	0x00000000
1c0076a8:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c0076ac:	00302020 	0x00302020
1c0076b0:	00f8f808 	bstrpick.d	$r8,$r0,0x38,0x3e
1c0076b4:	0008f8f8 	bytepick.w	$r24,$r7,$r30,0x1
1c0076b8:	3e013f20 	0x3e013f20
1c0076bc:	00203f01 	div.w	$r1,$r24,$r15
1c0076c0:	c030f808 	0xc030f808
1c0076c4:	08f80800 	0x08f80800
1c0076c8:	00203f20 	div.w	$r0,$r25,$r15
1c0076cc:	003f1807 	0x003f1807
1c0076d0:	080810e0 	0x080810e0
1c0076d4:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c0076d8:	2020100f 	ll.w	$r15,$r0,8208(0x2010)
1c0076dc:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c0076e0:	0808f808 	0x0808f808
1c0076e4:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c0076e8:	01213f20 	0x01213f20
1c0076ec:	00000101 	0x00000101
1c0076f0:	080810e0 	0x080810e0
1c0076f4:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c0076f8:	2828100f 	ld.b	$r15,$r0,-1532(0xa04)
1c0076fc:	004f5030 	0x004f5030
1c007700:	8888f808 	0x8888f808
1c007704:	00708888 	bstrpick.w	$r8,$r4,0x10,0x2
1c007708:	00203f20 	div.w	$r0,$r25,$r15
1c00770c:	20300c03 	ll.w	$r3,$r0,12300(0x300c)
1c007710:	08887000 	0x08887000
1c007714:	00380808 	0x00380808
1c007718:	21203800 	sc.w	$r0,$r0,8248(0x2038)
1c00771c:	001c2221 	mul.w	$r1,$r17,$r8
1c007720:	f8080818 	0xf8080818
1c007724:	00180808 	sra.w	$r8,$r0,$r2
1c007728:	3f200000 	0x3f200000
1c00772c:	00000020 	0x00000020
1c007730:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c007734:	08f80800 	0x08f80800
1c007738:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c00773c:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c007740:	00887808 	bstrins.d	$r8,$r0,0x8,0x1e
1c007744:	0838c800 	0x0838c800
1c007748:	38070000 	0x38070000
1c00774c:	0000010e 	0x0000010e
1c007750:	f800f808 	0xf800f808
1c007754:	0008f800 	bytepick.w	$r0,$r0,$r30,0x1
1c007758:	013e0300 	0x013e0300
1c00775c:	0000033e 	0x0000033e
1c007760:	80681808 	0x80681808
1c007764:	08186880 	fmadd.s	$f0,$f4,$f26,$f16
1c007768:	032c3020 	lu52i.d	$r0,$r1,-1268(0xb0c)
1c00776c:	20302c03 	ll.w	$r3,$r0,12332(0x302c)
1c007770:	00c83808 	bstrpick.d	$r8,$r0,0x8,0xe
1c007774:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c007778:	3f200000 	0x3f200000
1c00777c:	00000020 	0x00000020
1c007780:	08080810 	0x08080810
1c007784:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c007788:	21263820 	sc.w	$r0,$r1,9784(0x2638)
1c00778c:	00182020 	sra.w	$r0,$r1,$r8
1c007790:	fe000000 	0xfe000000
1c007794:	00020202 	0x00020202
1c007798:	7f000000 	0x7f000000
1c00779c:	00404040 	0x00404040
1c0077a0:	c0380400 	0xc0380400
1c0077a4:	00000000 	0x00000000
1c0077a8:	01000000 	0x01000000
1c0077ac:	00c03806 	bstrpick.d	$r6,$r0,0x0,0xe
1c0077b0:	02020200 	slti	$r0,$r16,128(0x80)
1c0077b4:	000000fe 	0x000000fe
1c0077b8:	40404000 	beqz	$r0,16448(0x4040) # 1c00b7f8 <_sidata+0x300c>
1c0077bc:	0000007f 	0x0000007f
1c0077c0:	02040000 	slti	$r0,$r0,256(0x100)
1c0077c4:	00000402 	0x00000402
	...
1c0077d8:	80808080 	0x80808080
1c0077dc:	80808080 	0x80808080
1c0077e0:	04020200 	csrxchg	$r0,$r16,0x80
	...
1c0077f0:	80800000 	0x80800000
1c0077f4:	00000080 	0x00000080
1c0077f8:	24241900 	ldptr.w	$r0,$r8,9240(0x2418)
1c0077fc:	00203f12 	div.w	$r18,$r24,$r15
1c007800:	8000f010 	0x8000f010
1c007804:	00000080 	0x00000080
1c007808:	20113f00 	ll.w	$r0,$r24,4412(0x113c)
1c00780c:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c007810:	80000000 	0x80000000
1c007814:	00008080 	0x00008080
1c007818:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c00781c:	00112020 	sub.w	$r0,$r1,$r8
1c007820:	80800000 	0x80800000
1c007824:	00f09080 	bstrpick.d	$r0,$r4,0x30,0x24
1c007828:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c00782c:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c007830:	80800000 	0x80800000
1c007834:	00008080 	0x00008080
1c007838:	24241f00 	ldptr.w	$r0,$r24,9244(0x241c)
1c00783c:	00172424 	sll.w	$r4,$r1,$r9
1c007840:	e0808000 	0xe0808000
1c007844:	00209090 	mod.w	$r16,$r4,$r4
1c007848:	3f202000 	0x3f202000
1c00784c:	00002020 	clo.d	$r0,$r1
1c007850:	80800000 	0x80800000
1c007854:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007858:	94946b00 	0x94946b00
1c00785c:	00609394 	bstrpick.w	$r20,$r28,0x0,0x4
1c007860:	8000f010 	0x8000f010
1c007864:	00008080 	0x00008080
1c007868:	00213f20 	div.wu	$r0,$r25,$r15
1c00786c:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c007870:	98988000 	0x98988000
1c007874:	00000000 	0x00000000
1c007878:	3f202000 	0x3f202000
1c00787c:	00002020 	clo.d	$r0,$r1
1c007880:	80000000 	0x80000000
1c007884:	00009898 	0x00009898
1c007888:	8080c000 	0x8080c000
1c00788c:	00007f80 	0x00007f80
1c007890:	0000f010 	0x0000f010
1c007894:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007898:	06243f20 	cacop	0x0,$r25,-1777(0x90f)
1c00789c:	00203029 	div.w	$r9,$r1,$r12
1c0078a0:	f8101000 	0xf8101000
1c0078a4:	00000000 	0x00000000
1c0078a8:	3f202000 	0x3f202000
1c0078ac:	00002020 	clo.d	$r0,$r1
1c0078b0:	80808080 	0x80808080
1c0078b4:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0078b8:	00203f20 	div.w	$r0,$r25,$r15
1c0078bc:	3f00203f 	0x3f00203f
1c0078c0:	80008080 	0x80008080
1c0078c4:	00008080 	0x00008080
1c0078c8:	00213f20 	div.wu	$r0,$r25,$r15
1c0078cc:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c0078d0:	80800000 	0x80800000
1c0078d4:	00008080 	0x00008080
1c0078d8:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c0078dc:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c0078e0:	80008080 	0x80008080
1c0078e4:	00000080 	0x00000080
1c0078e8:	2091ff80 	ll.w	$r0,$r28,-28164(0x91fc)
1c0078ec:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c0078f0:	80000000 	0x80000000
1c0078f4:	00800080 	bstrins.d	$r0,$r4,0x0,0x0
1c0078f8:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c0078fc:	80ff9120 	0x80ff9120
1c007900:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007904:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007908:	213f2020 	sc.w	$r0,$r1,16160(0x3f20)
1c00790c:	00010020 	asrtle.d	$r1,$r0
1c007910:	80800000 	0x80800000
1c007914:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007918:	24243300 	ldptr.w	$r0,$r24,9264(0x2430)
1c00791c:	00192424 	srl.d	$r4,$r1,$r9
1c007920:	e0808000 	0xe0808000
1c007924:	00008080 	0x00008080
1c007928:	1f000000 	pcaddu18i	$r0,-524288(0x80000)
1c00792c:	00102020 	add.w	$r0,$r1,$r8
1c007930:	00008080 	0x00008080
1c007934:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c007938:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c00793c:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c007940:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007944:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007948:	300c0300 	0x300c0300
1c00794c:	0000030c 	0x0000030c
1c007950:	80008080 	0x80008080
1c007954:	80800080 	0x80800080
1c007958:	0c300e01 	0x0c300e01
1c00795c:	01063807 	0x01063807
1c007960:	80808000 	0x80808000
1c007964:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c007968:	0e312000 	0x0e312000
1c00796c:	0020312e 	div.w	$r14,$r9,$r12
1c007970:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007974:	80808000 	0x80808000
1c007978:	78868100 	0x78868100
1c00797c:	00010618 	0x00010618
1c007980:	80808000 	0x80808000
1c007984:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007988:	2c302100 	vld	$vr0,$r8,-1016(0xc08)
1c00798c:	00302122 	0x00302122
1c007990:	00000000 	0x00000000
1c007994:	0202fc00 	slti	$r0,$r0,191(0xbf)
1c007998:	00000000 	0x00000000
1c00799c:	40403e01 	beqz	$r16,278588(0x4403c) # 1c04b9d8 <_sidata+0x431ec>
1c0079a0:	00000000 	0x00000000
1c0079a4:	000000ff 	0x000000ff
1c0079a8:	00000000 	0x00000000
1c0079ac:	000000ff 	0x000000ff
1c0079b0:	00fc0202 	bstrpick.d	$r2,$r16,0x3c,0x0
1c0079b4:	00000000 	0x00000000
1c0079b8:	013e4040 	0x013e4040
1c0079bc:	00000000 	0x00000000
1c0079c0:	02010200 	slti	$r0,$r16,64(0x40)
1c0079c4:	00020402 	0x00020402
	...

1c0079d0 <tfont16>:
1c0079d0:	00b2b7e5 	bstrins.d	$r5,$r31,0x32,0x2d
1c0079d4:	8282e200 	0x8282e200
1c0079d8:	82828282 	0x82828282
1c0079dc:	00fe8282 	bstrpick.d	$r2,$r20,0x3e,0x20
1c0079e0:	00000000 	0x00000000
1c0079e4:	40403f00 	beqz	$r24,16444(0x403c) # 1c00ba20 <_sidata+0x3234>
1c0079e8:	40404040 	beqz	$r2,16448(0x4040) # 1c00ba28 <_sidata+0x323c>
1c0079ec:	40404040 	beqz	$r2,16448(0x4040) # 1c00ba2c <_sidata+0x3240>
1c0079f0:	e8000078 	0xe8000078
1c0079f4:	40409ebf 	beqz	$r21,-245604(0x7c409c) # 1bfcba90 <_start-0x34570>
1c0079f8:	0400cc42 	csrxchg	$r2,$r2,0x33
1c0079fc:	475c6444 	bnez	$r2,1268836(0x135c64) # 1c13d660 <_sidata+0x134e74>
1c007a00:	444444f4 	bnez	$r7,-3128252(0x504444) # 1bd0be44 <_start-0x2f41bc>
1c007a04:	40000004 	beqz	$r0,1048576(0x100000) # 1c107a04 <_sidata+0xff218>
1c007a08:	44201f20 	bnez	$r25,8220(0x201c) # 1c009a24 <_sidata+0x1238>
1c007a0c:	44444444 	bnez	$r2,1066052(0x104444) # 1c10be50 <_sidata+0x103664>
1c007a10:	4444447f 	bnez	$r3,-244668(0x7c4444) # 1bfcbe54 <_start-0x341ac>
1c007a14:	8ee60044 	0x8ee60044
1c007a18:	101010a5 	addu16i.d	$r5,$r5,1028(0x404)
1c007a1c:	445010ff 	bnez	$r7,-241648(0x7c5010) # 1bfcca2c <_start-0x335d4>
1c007a20:	44c66554 	bnez	$r10,-3094940(0x50c664) # 1bd14084 <_start-0x2ebf7c>
1c007a24:	40445464 	beqz	$r3,1066068(0x104454) # 1c10be78 <_sidata+0x10368c>
1c007a28:	82440400 	0x82440400
1c007a2c:	8282017f 	0x8282017f
1c007a30:	2223564a 	ll.d	$r10,$r18,9044(0x2354)
1c007a34:	02824e52 	addi.w	$r18,$r18,147(0x93)
1c007a38:	b088e500 	0xb088e500
1c007a3c:	4a526242 	0x4a526242
1c007a40:	625242c6 	blt	$r22,$r6,-110016(0x25240) # 1bfecc80 <_start-0x13380>
1c007a44:	00f800c2 	bstrpick.d	$r2,$r6,0x38,0x0
1c007a48:	0000ff00 	0x0000ff00
1c007a4c:	4444c440 	bnez	$r2,17604(0x44c4) # 1c00bf10 <_sidata+0x3724>
1c007a50:	2424247f 	ldptr.w	$r31,$r3,9252(0x2424)
1c007a54:	400f0020 	beqz	$r1,3840(0xf00) # 1c008954 <_sidata+0x168>
1c007a58:	00007f80 	0x00007f80
1c007a5c:	068384e2 	0x068384e2
1c007a60:	f8e60909 	0xf8e60909
1c007a64:	0202040c 	slti	$r12,$r0,129(0x81)
1c007a68:	04020202 	csrxchg	$r2,$r16,0x80
1c007a6c:	0000001e 	0x0000001e
1c007a70:	1f070000 	pcaddu18i	$r0,-509952(0x83800)
1c007a74:	40402030 	beqz	$r1,-4177888(0x404020) # 1bc0ba94 <_start-0x3f456c>
1c007a78:	20404040 	ll.w	$r0,$r2,16448(0x4040)
1c007a7c:	e6000010 	0xe6000010
1c007a80:	8080aa9c 	0x8080aa9c
1c007a84:	88888888 	0x88888888
1c007a88:	8888ff88 	0x8888ff88
1c007a8c:	80888888 	0x80888888
1c007a90:	20200080 	ll.w	$r0,$r4,8192(0x2000)
1c007a94:	02040810 	slti	$r16,$r0,258(0x102)
1c007a98:	0201ff01 	slti	$r1,$r24,127(0x7f)
1c007a9c:	20100804 	ll.w	$r4,$r0,4104(0x1008)
1c007aa0:	a3e60020 	0xa3e60020
1c007aa4:	d0101080 	0xd0101080
1c007aa8:	205090ff 	ll.w	$r31,$r7,20624(0x5090)
1c007aac:	4c434c50 	jirl	$r16,$r2,17228(0x434c)
1c007ab0:	40402050 	beqz	$r2,-4177888(0x404020) # 1bc0bad0 <_start-0x3f4530>
1c007ab4:	00030400 	0x00030400
1c007ab8:	444100ff 	bnez	$r7,-245504(0x7c4100) # 1bfcbbb8 <_start-0x34448>
1c007abc:	604e4158 	blt	$r10,$r24,20032(0x4e40) # 1c00c8fc <_sidata+0x4110>
1c007ac0:	40404758 	beqz	$r26,-2080700(0x604044) # 1be0bb04 <_start-0x1f44fc>
1c007ac4:	8bb5e600 	0x8bb5e600
1c007ac8:	8c026010 	0x8c026010
1c007acc:	f202fe00 	0xf202fe00
1c007ad0:	f800fe02 	0xf800fe02
1c007ad4:	0000ff00 	0x0000ff00
1c007ad8:	017e0404 	0x017e0404
1c007adc:	0f304780 	0x0f304780
1c007ae0:	47002710 	bnez	$r24,-3997660(0x430024) # 1bc37b04 <_start-0x3c84fc>
1c007ae4:	00007f80 	0x00007f80
1c007ae8:	42b088e5 	beqz	$r7,1486984(0x16b088) # 1c172b70 <_sidata+0x16a384>
1c007aec:	c64a5262 	0xc64a5262
1c007af0:	c2625242 	0xc2625242
1c007af4:	0000f800 	0x0000f800
1c007af8:	400000ff 	beqz	$r7,-262144(0x7c0000) # 1bfc7af8 <_start-0x38508>
1c007afc:	7f4444c4 	0x7f4444c4
1c007b00:	20242424 	ll.w	$r4,$r1,9252(0x2424)
1c007b04:	80400f00 	0x80400f00
1c007b08:	e400007f 	0xe400007f
1c007b0c:	8000a0bc 	0x8000a0bc
1c007b10:	4007f860 	beqz	$r3,2040(0x7f8) # 1c008308 <tfont32+0x584>
1c007b14:	5fe84848 	bne	$r2,$r8,-6072(0x3e848) # 1c00635c <DL_LN3X_Init+0xdc>
1c007b18:	40484848 	beqz	$r2,2115656(0x204848) # 1c20c360 <_sidata+0x203b74>
1c007b1c:	00010040 	asrtle.d	$r2,$r0
1c007b20:	0000ff00 	0x0000ff00
1c007b24:	22120b02 	ll.d	$r2,$r24,4616(0x1208)
1c007b28:	00060ad2 	alsl.wu	$r18,$r22,$r2,0x1
1c007b2c:	84e60000 	0x84e60000
1c007b30:	fc00009f 	0xfc00009f
1c007b34:	5454d404 	bl	1070292(0x1054d4) # 1c10d008 <_sidata+0x10481c>
1c007b38:	7f04d454 	0x7f04d454
1c007b3c:	0436c584 	csrxchg	$r4,$r12,0xdb1
1c007b40:	01668800 	0x01668800
1c007b44:	82826300 	0x82826300
1c007b48:	8284ab92 	0x8284ab92
1c007b4c:	cf2402c1 	0xcf2402c1
1c007b50:	a899e500 	0xa899e500
1c007b54:	929e8080 	0x929e8080
1c007b58:	e09e9292 	0xe09e9292
1c007b5c:	d2b29e80 	0xd2b29e80
1c007b60:	00809e92 	bstrins.d	$r18,$r20,0x0,0x27
1c007b64:	94f40808 	0x94f40808
1c007b68:	00f19292 	bstrpick.d	$r18,$r20,0x31,0x24
1c007b6c:	9492f201 	0x9492f201
1c007b70:	0008f894 	bytepick.w	$r20,$r4,$r30,0x1
1c007b74:	10a9b8e6 	addu16i.d	$r6,$r7,10862(0x2a6e)
1c007b78:	008c0260 	bstrins.d	$r0,$r19,0xc,0x0
1c007b7c:	9292fe00 	0x9292fe00
1c007b80:	fe929292 	0xfe929292
1c007b84:	04000000 	csrrd	$r0,0x0
1c007b88:	40017e04 	beqz	$r16,1048956(0x10017c) # 1c107d04 <_sidata+0xff518>
1c007b8c:	7e42427e 	0x7e42427e
1c007b90:	42427e42 	beqz	$r18,672380(0xa427c) # 1c0abe0c <_sidata+0xa3620>
1c007b94:	e600407e 	0xe600407e
1c007b98:	6010bfb9 	blt	$r29,$r25,4284(0x10bc) # 1c008c54 <_sidata+0x468>
1c007b9c:	fe008c02 	0xfe008c02
1c007ba0:	92929292 	0x92929292
1c007ba4:	00fe9292 	bstrpick.d	$r18,$r20,0x3e,0x24
1c007ba8:	04040000 	csrrd	$r0,0x100
1c007bac:	4844017e 	bcnez	$fcc3,-506880(0x784400) # 1bf8bfac <_start-0x74054>
1c007bb0:	40407f50 	beqz	$r26,-4177796(0x40407c) # 1bc0bc2c <_start-0x3f43d4>
1c007bb4:	4448507f 	bnez	$r3,-243632(0x7c4850) # 1bfcc404 <_start-0x33bfc>
1c007bb8:	bae50040 	0xbae50040
1c007bbc:	fc0000a6 	0xfc0000a6
1c007bc0:	fc242424 	0xfc242424
1c007bc4:	fc242625 	0xfc242625
1c007bc8:	04242424 	csrwr	$r4,0x909
1c007bcc:	8f304000 	0x8f304000
1c007bd0:	554c8480 	bl	33639556(0x2014c84) # 1e01c854 <_sidata+0x2014068>
1c007bd4:	55252525 	bl	76883236(0x4952524) # 2095a0f8 <_sidata+0x495190c>
1c007bd8:	8080804c 	0x8080804c
1c007bdc:	919be700 	0x919be700
1c007be0:	007e0000 	bstrins.w	$r0,$r0,0x1e,0x0
1c007be4:	4000ff00 	beqz	$r24,252(0xfc) # 1c007ce0 <tfont16+0x310>
1c007be8:	14040f30 	lu12i.w	$r16,8313(0x2079)
1c007bec:	00000464 	0x00000464
1c007bf0:	427e4040 	beqz	$r2,163392(0x27e40) # 1c02fa30 <_sidata+0x27244>
1c007bf4:	42427e42 	beqz	$r18,672380(0xa427c) # 1c0abe70 <_sidata+0xa3684>
1c007bf8:	42427e42 	beqz	$r18,672380(0xa427c) # 1c0abe74 <_sidata+0xa3688>
1c007bfc:	0040407e 	0x0040407e
1c007c00:	108bb5e6 	addu16i.d	$r6,$r15,8941(0x22ed)
1c007c04:	008c0260 	bstrins.d	$r0,$r19,0xc,0x0
1c007c08:	02f202fe 	addi.d	$r30,$r23,-896(0xc80)
1c007c0c:	00f800fe 	bstrpick.d	$r30,$r7,0x38,0x0
1c007c10:	040000ff 	csrxchg	$r31,$r7,0x0
1c007c14:	80017e04 	0x80017e04
1c007c18:	100f3047 	addu16i.d	$r7,$r2,972(0x3cc)
1c007c1c:	80470027 	0x80470027
1c007c20:	e500007f 	0xe500007f
1c007c24:	0c109eae 	0x0c109eae
1c007c28:	64148404 	bge	$r0,$r4,5252(0x1484) # 1c0090ac <_sidata+0x8c0>
1c007c2c:	04f40605 	csrxchg	$r5,$r16,0x3d01
1c007c30:	14040404 	lu12i.w	$r4,8224(0x2020)
1c007c34:	8404000c 	0x8404000c
1c007c38:	24474484 	ldptr.w	$r4,$r4,18244(0x4744)
1c007c3c:	0c070c14 	0x0c070c14
1c007c40:	84442414 	0x84442414
1c007c44:	aae90004 	0xaae90004
1c007c48:	82fa028c 	0x82fa028c
1c007c4c:	4080fe82 	beqz	$r20,557308(0x880fc) # 1c08fd48 <_sidata+0x8755c>
1c007c50:	434c5020 	beqz	$r1,216144(0x34c50) # 1c03c8a0 <_sidata+0x340b4>
1c007c54:	4020504c 	beqz	$r2,3154000(0x302050) # 1c309ca4 <_sidata+0x3014b8>
1c007c58:	48180800 	bceqz	$fcc0,6152(0x1808) # 1c009460 <_sidata+0xc74>
1c007c5c:	403f4484 	beqz	$r4,1064772(0x103f44) # 1c10bba0 <_sidata+0x1033b4>
1c007c60:	4e415844 	jirl	$r4,$r2,-114344(0x24158)
1c007c64:	40475860 	beqz	$r3,18264(0x4758) # 1c00c3bc <_sidata+0x3bd0>
1c007c68:	baa4e700 	0xbaa4e700
1c007c6c:	42424040 	beqz	$r2,148032(0x24240) # 1c02beac <_sidata+0x236c0>
1c007c70:	c2424242 	0xc2424242
1c007c74:	42424242 	beqz	$r18,672320(0xa4240) # 1c0abeb4 <_sidata+0xa36c8>
1c007c78:	00404042 	0x00404042
1c007c7c:	06081020 	cacop	0x0,$r1,516(0x204)
1c007c80:	7f804000 	0x7f804000
1c007c84:	02000000 	slti	$r0,$r0,0
1c007c88:	00300804 	0x00300804
1c007c8c:	00be98e6 	bstrins.d	$r6,$r7,0x3e,0x26
1c007c90:	92fe0000 	0x92fe0000
1c007c94:	92929292 	0x92929292
1c007c98:	00fe9292 	bstrpick.d	$r18,$r20,0x3e,0x24
1c007c9c:	40000000 	beqz	$r0,0 # 1c007c9c <tfont16+0x2cc>
1c007ca0:	40584442 	beqz	$r2,546884(0x85844) # 1c08d4e4 <_sidata+0x84cf8>
1c007ca4:	4040407f 	beqz	$r3,-245696(0x7c4040) # 1bfcbce4 <_start-0x3431c>
1c007ca8:	4850407f 	bceqz	$fcc3,-241600(0x7c5040) # 1bfccce8 <_start-0x33318>
1c007cac:	e5004046 	0xe5004046
1c007cb0:	0c109eae 	0x0c109eae
1c007cb4:	64148404 	bge	$r0,$r4,5252(0x1484) # 1c009138 <_sidata+0x94c>
1c007cb8:	04f40605 	csrxchg	$r5,$r16,0x3d01
1c007cbc:	14040404 	lu12i.w	$r4,8224(0x2020)
1c007cc0:	8404000c 	0x8404000c
1c007cc4:	24474484 	ldptr.w	$r4,$r4,18244(0x4744)
1c007cc8:	0c070c14 	0x0c070c14
1c007ccc:	84442414 	0x84442414
1c007cd0:	aae90004 	0xaae90004
1c007cd4:	82fa028c 	0x82fa028c
1c007cd8:	4080fe82 	beqz	$r20,557308(0x880fc) # 1c08fdd4 <_sidata+0x875e8>
1c007cdc:	434c5020 	beqz	$r1,216144(0x34c50) # 1c03c92c <_sidata+0x34140>
1c007ce0:	4020504c 	beqz	$r2,3154000(0x302050) # 1c309d30 <_sidata+0x301544>
1c007ce4:	48180800 	bceqz	$fcc0,6152(0x1808) # 1c0094ec <_sidata+0xd00>
1c007ce8:	403f4484 	beqz	$r4,1064772(0x103f44) # 1c10bc2c <_sidata+0x103440>
1c007cec:	4e415844 	jirl	$r4,$r2,-114344(0x24158)
1c007cf0:	40475860 	beqz	$r3,18264(0x4758) # 1c00c448 <_sidata+0x3c5c>
1c007cf4:	be99e700 	0xbe99e700
1c007cf8:	22e20202 	ll.d	$r2,$r16,-7680(0xe200)
1c007cfc:	262a3222 	ldptr.d	$r2,$r17,10800(0x2a30)
1c007d00:	22222222 	ll.d	$r2,$r17,8736(0x2220)
1c007d04:	000202e2 	0x000202e2
1c007d08:	42ff0000 	beqz	$r0,196352(0x2ff00) # 1c037c08 <_sidata+0x2f41c>
1c007d0c:	42424242 	beqz	$r18,672320(0xa4240) # 1c0abf4c <_sidata+0xa3760>
1c007d10:	42424242 	beqz	$r18,672320(0xa4240) # 1c0abf50 <_sidata+0xa3764>
1c007d14:	000000ff 	0x000000ff
1c007d18:	2491a7e7 	ldptr.w	$r7,$r31,-28252(0x91a4)
1c007d1c:	a3fea424 	0xa3fea424
1c007d20:	cc220022 	0xcc220022
1c007d24:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c007d28:	08000000 	0x08000000
1c007d2c:	00ff0106 	bstrpick.d	$r6,$r8,0x3f,0x0
1c007d30:	04040401 	csrrd	$r1,0x101
1c007d34:	02ff0404 	addi.d	$r4,$r0,-63(0xfc1)
1c007d38:	e8000202 	0xe8000202
1c007d3c:	6484a38d 	bge	$r28,$r13,33952(0x84a0) # 1c0101dc <_sidata+0x79f0>
1c007d40:	242f2424 	ldptr.w	$r4,$r1,12068(0x2f24)
1c007d44:	2424a424 	ldptr.w	$r4,$r1,9380(0x24a4)
1c007d48:	a424242f 	0xa424242f
1c007d4c:	42400064 	beqz	$r3,1196032(0x124000) # 1c12bd4c <_sidata+0x123560>
1c007d50:	0a122222 	xvfmadd.s	$xr2,$xr17,$xr8,$xr4
1c007d54:	0a06ff06 	0x0a06ff06
1c007d58:	42222212 	beqz	$r16,-3530208(0x4a2220) # 1bca9f78 <_start-0x356088>
1c007d5c:	88e50040 	0x88e50040
1c007d60:	d020409b 	0xd020409b
1c007d64:	c844434c 	0xc844434c
1c007d68:	f8002010 	0xf8002010
1c007d6c:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c007d70:	3f000000 	0x3f000000
1c007d74:	47484440 	bnez	$r2,215108(0x34844) # 1c03c5b8 <_sidata+0x33dcc>
1c007d78:	0f007040 	0x0f007040
1c007d7c:	007f8040 	bstrpick.w	$r0,$r2,0x1f,0x0
1c007d80:	00000000 	0x00000000

1c007d84 <tfont32>:
1c007d84:	00be99e7 	bstrins.d	$r7,$r15,0x3e,0x26
1c007d88:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c007d8c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007d90:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007d94:	70f0f010 	vsrlr.h	$vr16,$vr0,$vr28
1c007d98:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007d9c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007da0:	10181010 	addu16i.d	$r16,$r0,1540(0x604)
	...
1c007dac:	f8fc0000 	0xf8fc0000
1c007db0:	08080808 	0x08080808
1c007db4:	08080b0c 	0x08080b0c
1c007db8:	08080808 	0x08080808
1c007dbc:	f8fc0808 	0xf8fc0808
	...
1c007dcc:	ffff0000 	0xffff0000
1c007dd0:	08080808 	0x08080808
1c007dd4:	08080808 	0x08080808
1c007dd8:	08080808 	0x08080808
1c007ddc:	ffff0808 	0xffff0808
	...
1c007dec:	3f7f0000 	0x3f7f0000
1c007df0:	08080808 	0x08080808
1c007df4:	08080808 	0x08080808
1c007df8:	08080808 	0x08080808
1c007dfc:	3f7f0808 	0x3f7f0808
1c007e00:	00000000 	0x00000000
1c007e04:	e7000000 	0xe7000000
1c007e08:	000091a7 	0x000091a7
1c007e0c:	20404040 	ll.w	$r0,$r2,16448(0x4040)
1c007e10:	e0e02020 	0xe0e02020
1c007e14:	18181030 	pcaddi	$r16,49281(0xc081)
1c007e18:	80000000 	0x80000000
1c007e1c:	00000080 	0x00000080
1c007e20:	f8fc0000 	0xf8fc0000
1c007e24:	00000008 	0x00000008
1c007e28:	00000000 	0x00000000
1c007e2c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007e30:	ffff9010 	0xffff9010
1c007e34:	18101010 	pcaddi	$r16,32896(0x8080)
1c007e38:	c0000010 	0xc0000010
1c007e3c:	00060781 	alsl.wu	$r1,$r28,$r1,0x1
1c007e40:	ffff0000 	0xffff0000
	...
1c007e4c:	18204080 	pcaddi	$r0,66052(0x10204)
1c007e50:	ffff030e 	0xffff030e
1c007e54:	5e060301 	bne	$r24,$r1,-129536(0x20600) # 1bfe8454 <_start-0x17bac>
1c007e58:	20202040 	ll.w	$r0,$r2,8224(0x2020)
1c007e5c:	10102321 	addu16i.d	$r1,$r25,1032(0x408)
1c007e60:	ffff1010 	0xffff1010
1c007e64:	0c0c0808 	0x0c0c0808
1c007e68:	01000000 	0x01000000
1c007e6c:	00000000 	0x00000000
1c007e70:	3f7f0000 	0x3f7f0000
	...
1c007e80:	3f7f0000 	0x3f7f0000
1c007e84:	00000000 	0x00000000
1c007e88:	8de80000 	0x8de80000
1c007e8c:	000000a3 	0x000000a3
1c007e90:	80808080 	0x80808080
1c007e94:	80808080 	0x80808080
1c007e98:	8088f8fc 	0x8088f8fc
1c007e9c:	80808080 	0x80808080
1c007ea0:	8088f8fc 	0x8088f8fc
1c007ea4:	e0c08080 	0xe0c08080
1c007ea8:	000080c0 	0x000080c0
1c007eac:	00000000 	0x00000000
1c007eb0:	10f8c080 	addu16i.d	$r0,$r4,15920(0x3e30)
1c007eb4:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007eb8:	10101717 	addu16i.d	$r23,$r24,1029(0x405)
1c007ebc:	1050f0f0 	addu16i.d	$r16,$r7,5180(0x143c)
1c007ec0:	10101317 	addu16i.d	$r23,$r24,1028(0x404)
1c007ec4:	f0d01010 	0xf0d01010
1c007ec8:	00001038 	clo.w	$r24,$r1
1c007ecc:	00000000 	0x00000000
1c007ed0:	02020200 	slti	$r0,$r16,128(0x80)
1c007ed4:	c2820202 	0xc2820202
1c007ed8:	061e3a62 	cacop	0x2,$r19,1934(0x78e)
1c007edc:	0e02ffff 	0x0e02ffff
1c007ee0:	82c26212 	0x82c26212
1c007ee4:	03020282 	lu52i.d	$r2,$r20,128(0x80)
1c007ee8:	00000203 	0x00000203
1c007eec:	10000000 	addu16i.d	$r0,$r0,0
1c007ef0:	06040808 	cacop	0x8,$r0,258(0x102)
1c007ef4:	00010102 	0x00010102
1c007ef8:	00000000 	0x00000000
1c007efc:	00003f7f 	revb.d	$r31,$r27
1c007f00:	01000000 	0x01000000
1c007f04:	0e060303 	0x0e060303
1c007f08:	0004040e 	alsl.w	$r14,$r0,$r1,0x1
1c007f0c:	9b88e500 	0x9b88e500
1c007f10:	00000000 	0x00000000
1c007f14:	c0000000 	0xc0000000
1c007f18:	28183cf0 	ld.b	$r16,$r7,1551(0x60f)
1c007f1c:	80c04060 	0x80c04060
	...
1c007f28:	f8000000 	0xf8000000
1c007f2c:	000000f8 	0x000000f8
1c007f30:	40800000 	beqz	$r0,32768(0x8000) # 1c00ff30 <_sidata+0x7744>
1c007f34:	23e6f830 	sc.d	$r16,$r1,-6408(0xe6f8)
1c007f38:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007f3c:	23f0e020 	sc.d	$r0,$r1,-3872(0xf0e0)
1c007f40:	00000207 	0x00000207
1c007f44:	0002ff00 	0x0002ff00
1c007f48:	ff000000 	0xff000000
1c007f4c:	000000ff 	0x000000ff
1c007f50:	00000100 	0x00000100
1c007f54:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
1c007f58:	60200000 	blt	$r0,$r0,8192(0x2000) # 1c009f58 <_sidata+0x176c>
1c007f5c:	001f3f60 	mulw.d.w	$r0,$r27,$r15
1c007f60:	00008000 	0x00008000
1c007f64:	00007f00 	0x00007f00
1c007f68:	ff000000 	0xff000000
1c007f6c:	000000ff 	0x000000ff
1c007f70:	00000000 	0x00000000
1c007f74:	303f0700 	0x303f0700
1c007f78:	30303030 	0x30303030
1c007f7c:	30303030 	0x30303030
1c007f80:	00103f38 	add.w	$r24,$r25,$r15
1c007f84:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c007f88:	3f703030 	0x3f703030
1c007f8c:	0000001f 	0x0000001f
1c007f90:	0088bcef 	bstrins.d	$r15,$r7,0x8,0x2f
	...
1c007fa8:	40800000 	beqz	$r0,32768(0x8000) # 1c00ffa8 <_sidata+0x77bc>
1c007fac:	00102040 	add.w	$r0,$r2,$r8
	...
1c007fc4:	1cf00000 	pcaddu12i	$r0,491520(0x78000)
1c007fc8:	00000306 	0x00000306
	...
1c007fe4:	701f0000 	vaddwev.d.w	$vr0,$vr0,$vr0
1c007fe8:	000000c0 	0x000000c0
	...
1c008008:	04020100 	csrxchg	$r0,$r8,0x80
1c00800c:	0010080c 	add.w	$r12,$r0,$r2
1c008010:	e5000000 	0xe5000000
1c008014:	0000978c 	0x0000978c
	...
1c008020:	08f8fc00 	0x08f8fc00
1c008024:	00000000 	0x00000000
1c008028:	0008f8fc 	bytepick.w	$r28,$r7,$r30,0x1
	...
1c008038:	08080808 	0x08080808
1c00803c:	08080808 	0x08080808
1c008040:	00ffff08 	bstrpick.d	$r8,$r24,0x3f,0x3f
1c008044:	00000000 	0x00000000
1c008048:	4040ffff 	beqz	$r31,-245508(0x7c40fc) # 1bfcc144 <_start-0x33ebc>
1c00804c:	18103020 	pcaddi	$r0,33153(0x8181)
1c008050:	00040e0c 	alsl.w	$r12,$r16,$r3,0x1
	...
1c00805c:	80000000 	0x80000000
1c008060:	00ffff80 	bstrpick.d	$r0,$r28,0x3f,0x3f
1c008064:	00000000 	0x00000000
1c008068:	0000ffff 	0x0000ffff
1c00806c:	00000000 	0x00000000
1c008070:	00c00000 	bstrpick.d	$r0,$r0,0x0,0x0
1c008074:	00000000 	0x00000000
1c008078:	03060606 	lu52i.d	$r6,$r16,385(0x181)
1c00807c:	00010103 	0x00010103
1c008080:	003f7f00 	0x003f7f00
1c008084:	00000000 	0x00000000
1c008088:	30303f1f 	0x30303f1f
1c00808c:	30303030 	0x30303030
1c008090:	183f3830 	pcaddi	$r16,129473(0x1f9c1)
1c008094:	bae40000 	0xbae40000
1c008098:	800000ac 	0x800000ac
1c00809c:	80808080 	0x80808080
1c0080a0:	80808080 	0x80808080
1c0080a4:	8c808080 	0x8c808080
1c0080a8:	80b0f898 	0x80b0f898
1c0080ac:	80808080 	0x80808080
1c0080b0:	c0808080 	0xc0808080
1c0080b4:	0080c0e0 	bstrins.d	$r0,$r7,0x0,0x30
	...
1c0080c0:	08f8f800 	0x08f8f800
1c0080c4:	08080808 	0x08080808
1c0080c8:	08080808 	0x08080808
1c0080cc:	f8080808 	0xf8080808
1c0080d0:	000008fc 	0x000008fc
	...
1c0080e0:	e4cf0f00 	0xe4cf0f00
1c0080e4:	04040444 	csrxchg	$r4,$r2,0x101
1c0080e8:	0404fcfc 	csrxchg	$r28,$r7,0x13f
1c0080ec:	cf442404 	0xcf442404
1c0080f0:	0000008f 	0x0000008f
1c0080f4:	00000000 	0x00000000
1c0080f8:	20000000 	ll.w	$r0,$r0,0
1c0080fc:	04081010 	csrrd	$r16,0x204
1c008100:	00010306 	0x00010306
1c008104:	70301010 	vsubwev.h.bu	$vr16,$vr0,$vr4
1c008108:	00003f3f 	revb.d	$r31,$r25
1c00810c:	00000000 	0x00000000
1c008110:	1e0e0301 	pcaddu18i	$r1,28696(0x7018)
1c008114:	00000018 	0x00000018
1c008118:	89bcef00 	0x89bcef00
1c00811c:	00000000 	0x00000000
1c008120:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c008124:	0080c060 	bstrins.d	$r0,$r3,0x0,0x30
	...
1c008144:	06010000 	cacop	0x0,$r0,64(0x40)
1c008148:	0000f03c 	0x0000f03c
	...
1c008164:	c0800000 	0xc0800000
1c008168:	00000f78 	0x00000f78
	...
1c008180:	0c081000 	0x0c081000
1c008184:	00010306 	0x00010306
	...
1c00819c:	0091a7e7 	bstrins.d	$r7,$r31,0x11,0x29
1c0081a0:	40404000 	beqz	$r0,16448(0x4040) # 1c00c1e0 <_sidata+0x39f4>
1c0081a4:	e0202020 	0xe0202020
1c0081a8:	181030e0 	pcaddi	$r0,33159(0x8187)
1c0081ac:	00000018 	0x00000018
1c0081b0:	00008080 	0x00008080
1c0081b4:	fc000000 	0xfc000000
1c0081b8:	000008f8 	0x000008f8
1c0081bc:	00000000 	0x00000000
1c0081c0:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c0081c4:	ff901010 	0xff901010
1c0081c8:	101010ff 	addu16i.d	$r31,$r7,1028(0x404)
1c0081cc:	00001018 	clo.w	$r24,$r0
1c0081d0:	060781c0 	cacop	0x0,$r14,480(0x1e0)
1c0081d4:	ff000000 	0xff000000
1c0081d8:	000000ff 	0x000000ff
1c0081dc:	00000000 	0x00000000
1c0081e0:	20408000 	ll.w	$r0,$r0,16512(0x4080)
1c0081e4:	ff030e18 	0xff030e18
1c0081e8:	060301ff 	cacop	0x1f,$r15,192(0xc0)
1c0081ec:	2020405e 	ll.w	$r30,$r2,8256(0x2040)
1c0081f0:	10232120 	addu16i.d	$r0,$r9,2248(0x8c8)
1c0081f4:	ff101010 	0xff101010
1c0081f8:	0c0808ff 	0x0c0808ff
1c0081fc:	0000000c 	0x0000000c
1c008200:	00000001 	0x00000001
1c008204:	7f000000 	0x7f000000
1c008208:	0000003f 	0x0000003f
	...
1c008214:	7f000000 	0x7f000000
1c008218:	0000003f 	0x0000003f
1c00821c:	e6000000 	0xe6000000
1c008220:	0000808a 	0x0000808a
1c008224:	00000000 	0x00000000
1c008228:	08f8fc00 	0x08f8fc00
	...
1c008234:	f8fc0000 	0xf8fc0000
1c008238:	00000008 	0x00000008
	...
1c008244:	02020202 	slti	$r2,$r16,128(0x80)
1c008248:	02ffff02 	addi.d	$r2,$r24,-1(0xfff)
1c00824c:	42438382 	beqz	$r28,672640(0xa4380) # 1c0ac5cc <_sidata+0xa3de0>
1c008250:	82828282 	0x82828282
1c008254:	ffff8282 	0xffff8282
1c008258:	82828282 	0x82828282
1c00825c:	020383c2 	slti	$r2,$r30,224(0xe0)
1c008260:	00000000 	0x00000000
1c008264:	06060c0c 	cacop	0xc,$r0,387(0x183)
1c008268:	01ffff02 	0x01ffff02
1c00826c:	00000000 	0x00000000
1c008270:	1c030000 	pcaddu12i	$r0,6144(0x1800)
1c008274:	8000c070 	0x8000c070
1c008278:	0f3c70c0 	0x0f3c70c0
1c00827c:	00000003 	0x00000003
1c008280:	00000000 	0x00000000
1c008284:	30101000 	vldrepl.d	$vr0,$r0,32(0x20)
1c008288:	003f3f70 	0x003f3f70
1c00828c:	20204040 	ll.w	$r0,$r2,8256(0x2040)
1c008290:	08181020 	fmadd.s	$f0,$f1,$f4,$f16
1c008294:	0703060c 	0x0703060c
1c008298:	38180c0f 	stx.w	$r15,$r0,$r3
1c00829c:	20303030 	ll.w	$r16,$r1,12336(0x3030)
1c0082a0:	8fe50000 	0x8fe50000
1c0082a4:	00000091 	0x00000091
1c0082a8:	f0800000 	0xf0800000
1c0082ac:	00000070 	0x00000070
1c0082b0:	18fcc000 	pcaddi	$r0,517632(0x7e600)
1c0082b4:	00000000 	0x00000000
1c0082b8:	70100800 	0x70100800
1c0082bc:	0000c0e0 	0x0000c0e0
	...
1c0082c8:	05070e04 	0x05070e04
1c0082cc:	84040404 	0x84040404
1c0082d0:	8487fff4 	0x8487fff4
1c0082d4:	84848484 	0x84848484
1c0082d8:	84848484 	0x84848484
1c0082dc:	0484c584 	csrxchg	$r4,$r12,0x2131
1c0082e0:	00040606 	alsl.w	$r6,$r16,$r1,0x1
	...
1c0082ec:	0f3ce080 	0x0f3ce080
1c0082f0:	06010003 	cacop	0x3,$r0,64(0x40)
1c0082f4:	80e03018 	0x80e03018
1c0082f8:	1e3860c0 	pcaddu18i	$r0,115462(0x1c306)
1c0082fc:	00000307 	0x00000307
1c008300:	00000000 	0x00000000
1c008304:	20000000 	ll.w	$r0,$r0,0
1c008308:	03040810 	lu52i.d	$r16,$r0,258(0x102)
1c00830c:	20204041 	ll.w	$r1,$r2,8256(0x2040)
1c008310:	08181020 	fmadd.s	$f0,$f1,$f4,$f16
1c008314:	0303060c 	lu52i.d	$r12,$r16,193(0xc1)
1c008318:	0c060703 	0x0c060703
1c00831c:	3038181c 	0x3038181c
1c008320:	00103030 	add.w	$r16,$r1,$r12
1c008324:	95b1e500 	0x95b1e500
1c008328:	00000000 	0x00000000
1c00832c:	08f80400 	0x08f80400
1c008330:	08080808 	0x08080808
1c008334:	08080808 	0x08080808
1c008338:	08080808 	0x08080808
1c00833c:	08080808 	0x08080808
1c008340:	08f8fc08 	0x08f8fc08
	...
1c00834c:	21ff0000 	sc.w	$r0,$r0,-256(0xff00)
1c008350:	21212121 	sc.w	$r1,$r9,8480(0x2120)
1c008354:	21fdff21 	sc.w	$r1,$r25,-516(0xfdfc)
1c008358:	21212121 	sc.w	$r1,$r9,8480(0x2120)
1c00835c:	2121fdff 	sc.w	$r31,$r15,8700(0x21fc)
1c008360:	00233321 	div.du	$r1,$r25,$r12
	...
1c00836c:	043fff00 	csrxchg	$r0,$r24,0xfff
1c008370:	fc040404 	0xfc040404
1c008374:	040707fc 	csrxchg	$r28,$r31,0x1c1
1c008378:	04c4740c 	csrrd	$r12,0x311d
1c00837c:	64448707 	bge	$r24,$r7,17540(0x4484) # 1c00c800 <_sidata+0x4014>
1c008380:	06062434 	cacop	0x14,$r1,393(0x189)
1c008384:	00000004 	0x00000004
1c008388:	18204000 	pcaddi	$r0,66048(0x10200)
1c00838c:	00000107 	0x00000107
1c008390:	3f000000 	0x3f000000
1c008394:	0818103f 	fmadd.s	$f31,$f1,$f4,$f16
1c008398:	03000004 	lu52i.d	$r4,$r0,0
1c00839c:	180c0607 	pcaddi	$r7,24624(0x6030)
1c0083a0:	30383818 	0x30383818
1c0083a4:	00001010 	clo.w	$r16,$r0
1c0083a8:	00899ce6 	bstrins.d	$r6,$r7,0x9,0x27
1c0083ac:	80808000 	0x80808000
1c0083b0:	80808080 	0x80808080
1c0083b4:	80808080 	0x80808080
1c0083b8:	88b8fce0 	0x88b8fce0
1c0083bc:	80808080 	0x80808080
1c0083c0:	80808080 	0x80808080
1c0083c4:	c0e0c080 	0xc0e0c080
1c0083c8:	00000080 	0x00000080
1c0083cc:	00000000 	0x00000000
1c0083d0:	c0800000 	0xc0800000
1c0083d4:	171cf8e0 	lu32i.d	$r0,-464953(0x8e7c7)
1c0083d8:	10101013 	addu16i.d	$r19,$r0,1028(0x404)
1c0083dc:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0083e0:	10f81010 	addu16i.d	$r16,$r0,15876(0x3e04)
	...
1c0083ec:	04081000 	csrrd	$r0,0x204
1c0083f0:	00010306 	0x00010306
1c0083f4:	4242ffff 	beqz	$r31,-113924(0x7e42fc) # 1bfec6f0 <_start-0x13910>
1c0083f8:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ac638 <_sidata+0xa3e4c>
1c0083fc:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ac63c <_sidata+0xa3e50>
1c008400:	00ff4242 	bstrpick.d	$r2,$r18,0x3f,0x10
	...
1c008414:	00003f7f 	revb.d	$r31,$r27
1c008418:	00000000 	0x00000000
1c00841c:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c008420:	003f7030 	0x003f7030
1c008424:	00000000 	0x00000000
1c008428:	e9000000 	0xe9000000
1c00842c:	00009099 	0x00009099
1c008430:	10f00800 	addu16i.d	$r0,$r0,15362(0x3c02)
1c008434:	f0101010 	0xf0101010
1c008438:	00001078 	clo.w	$r24,$r3
1c00843c:	1010f0f8 	addu16i.d	$r24,$r7,1084(0x43c)
1c008440:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008444:	f8101010 	0xf8101010
1c008448:	00000010 	0x00000010
1c00844c:	00000000 	0x00000000
1c008450:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c008454:	c33e0000 	0xc33e0000
1c008458:	00000000 	0x00000000
1c00845c:	8484ffff 	0x8484ffff
1c008460:	84848484 	0x84848484
1c008464:	ff848484 	0xff848484
	...
1c008470:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c008474:	c0c04000 	0xc0c04000
1c008478:	00007eff 	0x00007eff
1c00847c:	0000ffff 	0x0000ffff
1c008480:	c0701e01 	0xc0701e01
1c008484:	0d1030a0 	vbitsel.v	$vr0,$vr5,$vr12,$vr0
1c008488:	0000040e 	0x0000040e
1c00848c:	00000000 	0x00000000
1c008490:	007f0000 	bstrins.w	$r0,$r0,0x1f,0x0
1c008494:	00010000 	asrtle.d	$r0,$r0
1c008498:	00000000 	0x00000000
1c00849c:	08183f1f 	fmadd.s	$f31,$f24,$f15,$f16
1c0084a0:	01020204 	0x01020204
1c0084a4:	1c0e0703 	pcaddu12i	$r3,28728(0x7038)
1c0084a8:	00183818 	sra.w	$r24,$r0,$r14
1c0084ac:	85e50000 	0x85e50000
1c0084b0:	000000ac 	0x000000ac
1c0084b4:	00000000 	0x00000000
1c0084b8:	80000000 	0x80000000
1c0084bc:	001078e0 	add.w	$r0,$r7,$r30
1c0084c0:	1c000000 	pcaddu12i	$r0,0
1c0084c4:	000080e0 	0x000080e0
	...
1c0084d4:	c0800000 	0xc0800000
1c0084d8:	070e3860 	0x070e3860
1c0084dc:	00000001 	0x00000001
1c0084e0:	0080c0e0 	bstrins.d	$r0,$r7,0x0,0x30
1c0084e4:	1c0e0300 	pcaddu12i	$r0,28696(0x7018)
1c0084e8:	c0c0e070 	0xc0c0e070
1c0084ec:	00000080 	0x00000080
1c0084f0:	04000000 	csrrd	$r0,0x0
1c0084f4:	00010302 	0x00010302
1c0084f8:	c0000000 	0xc0000000
1c0084fc:	071c3860 	0x071c3860
1c008500:	00000103 	0x00000103
1c008504:	0080c020 	bstrins.d	$r0,$r1,0x0,0x30
1c008508:	03010000 	lu52i.d	$r0,$r0,64(0x40)
1c00850c:	00010103 	0x00010103
1c008510:	00000000 	0x00000000
1c008514:	38080000 	ldx.w	$r0,$r0,$r0
1c008518:	191b1e3c 	pcaddi	$r28,-468751(0x8d8f1)
1c00851c:	08081818 	0x08081818
1c008520:	08080808 	0x08080808
1c008524:	0f090808 	0x0f090808
1c008528:	00307c1e 	0x00307c1e
1c00852c:	00000000 	0x00000000
1c008530:	b88fe500 	0xb88fe500
1c008534:	00000000 	0x00000000
1c008538:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c00853c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008540:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008544:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008548:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c00854c:	00f0f810 	bstrpick.d	$r16,$r0,0x30,0x3e
1c008550:	00000000 	0x00000000
1c008554:	04000000 	csrrd	$r0,0x0
1c008558:	84c40404 	0x84c40404
1c00855c:	84848484 	0x84848484
1c008560:	84848484 	0x84848484
1c008564:	0684c484 	0x0684c484
1c008568:	00000406 	0x00000406
1c00856c:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
	...
1c008578:	ffff0000 	0xffff0000
1c00857c:	40404040 	beqz	$r2,16448(0x4040) # 1c00c5bc <_sidata+0x3dd0>
1c008580:	40404040 	beqz	$r2,16448(0x4040) # 1c00c5c0 <_sidata+0x3dd4>
1c008584:	0000ff40 	0x0000ff40
1c008588:	00000000 	0x00000000
1c00858c:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
	...
1c008598:	01030000 	fsub.d	$f0,$f0,$f0
	...
1c0085a4:	00010100 	asrtle.d	$r8,$r0
1c0085a8:	30101010 	vldrepl.d	$vr16,$r0,32(0x20)
1c0085ac:	000f3f70 	bytepick.d	$r16,$r27,$r15,0x6
1c0085b0:	00000000 	0x00000000
1c0085b4:	00be98e6 	bstrins.d	$r6,$r7,0x3e,0x26
1c0085b8:	00000000 	0x00000000
1c0085bc:	f0080000 	0xf0080000
1c0085c0:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0085c4:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0085c8:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0085cc:	f0f81010 	0xf0f81010
	...
1c0085dc:	ff000000 	0xff000000
1c0085e0:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ac820 <_sidata+0xa4034>
1c0085e4:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ac824 <_sidata+0xa4038>
1c0085e8:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ac828 <_sidata+0xa403c>
1c0085ec:	ffff4242 	0xffff4242
	...
1c0085f8:	08000000 	0x08000000
1c0085fc:	c0e17030 	0xc0e17030
1c008600:	fe000000 	0xfe000000
1c008604:	000000fe 	0x000000fe
1c008608:	00fefe00 	bstrpick.d	$r0,$r16,0x3e,0x3f
1c00860c:	60c08000 	blt	$r0,$r0,49280(0xc080) # 1c01468c <_sidata+0xbea0>
1c008610:	00081c38 	bytepick.w	$r24,$r1,$r7,0x0
1c008614:	00000000 	0x00000000
1c008618:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c00861c:	13111010 	addu16i.d	$r16,$r0,-15292(0xc444)
1c008620:	1f101010 	pcaddu18i	$r16,-491392(0x88080)
1c008624:	1010101f 	addu16i.d	$r31,$r0,1028(0x404)
1c008628:	141f1f10 	lu12i.w	$r16,63736(0xf8f8)
1c00862c:	10101112 	addu16i.d	$r18,$r8,1028(0x404)
1c008630:	10181810 	addu16i.d	$r16,$r0,1542(0x606)
1c008634:	e7000000 	0xe7000000
1c008638:	0000baa4 	0x0000baa4
1c00863c:	00000000 	0x00000000
1c008640:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008644:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008648:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00864c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008650:	30382020 	0x30382020
1c008654:	00000020 	0x00000020
1c008658:	00000000 	0x00000000
1c00865c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008660:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008664:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008668:	20e0e020 	ll.w	$r0,$r1,-7968(0xe0e0)
1c00866c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008670:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008674:	20303020 	ll.w	$r0,$r1,12336(0x3030)
1c008678:	00000000 	0x00000000
1c00867c:	80000000 	0x80000000
1c008680:	1e3c70c0 	pcaddu18i	$r0,123782(0x1e386)
1c008684:	00000406 	0x00000406
1c008688:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
1c00868c:	04020000 	csrrd	$r0,0x80
1c008690:	e0701808 	0xe0701808
1c008694:	000080c0 	0x000080c0
1c008698:	00000000 	0x00000000
1c00869c:	01030408 	fsub.d	$f8,$f0,$f1
1c0086a0:	08000000 	0x08000000
1c0086a4:	30101008 	vldrepl.d	$vr8,$r0,32(0x20)
1c0086a8:	001f3f70 	mulw.d.w	$r16,$r27,$r15
	...
1c0086b4:	00030701 	0x00030701
1c0086b8:	aee50000 	0xaee50000
1c0086bc:	0000009e 	0x0000009e
1c0086c0:	00800000 	bstrins.d	$r0,$r0,0x0,0x0
1c0086c4:	00000000 	0x00000000
1c0086c8:	04000000 	csrrd	$r0,0x0
1c0086cc:	0070f818 	bstrpick.w	$r24,$r0,0x10,0x1e
	...
1c0086d8:	00000080 	0x00000080
1c0086dc:	00000000 	0x00000000
1c0086e0:	810f1c18 	0x810f1c18
1c0086e4:	09010101 	0x09010101
1c0086e8:	01713919 	0x01713919
1c0086ec:	fdff0101 	0xfdff0101
1c0086f0:	01010105 	fadd.d	$f5,$f8,$f0
1c0086f4:	07090101 	0x07090101
1c0086f8:	00020307 	0x00020307
1c0086fc:	10000000 	addu16i.d	$r0,$r0,0
1c008700:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008704:	1e171311 	pcaddu18i	$r17,47256(0xb898)
1c008708:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c00870c:	93bffcd0 	0x93bffcd0
1c008710:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008714:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008718:	00101818 	add.w	$r24,$r0,$r6
1c00871c:	40000000 	beqz	$r0,0 # 1c00871c <tfont32+0x998>
1c008720:	20404040 	ll.w	$r0,$r2,16448(0x4040)
1c008724:	10102020 	addu16i.d	$r0,$r1,1032(0x408)
1c008728:	070e0c18 	0x070e0c18
1c00872c:	01000003 	0x01000003
1c008730:	06020301 	cacop	0x1,$r24,128(0x80)
1c008734:	383c1c0e 	fstx.d	$f14,$r0,$r7
1c008738:	00000030 	0x00000030
1c00873c:	8caae900 	0x8caae900
1c008740:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c008744:	10109090 	addu16i.d	$r16,$r4,1060(0x424)
1c008748:	10f81010 	addu16i.d	$r16,$r0,15876(0x3e04)
1c00874c:	00000000 	0x00000000
1c008750:	f0800000 	0xf0800000
1c008754:	80e8183c 	0x80e8183c
	...
1c008760:	80000000 	0x80000000
1c008764:	00001fff 	ctz.w	$r31,$r31
1c008768:	003fff00 	0x003fff00
1c00876c:	50204080 	b	33562688(0x2002040) # 1e00a7ac <_sidata+0x2001fc0>
1c008770:	4043474c 	beqz	$r26,3162948(0x304344) # 1c30cab4 <_sidata+0x3042c8>
1c008774:	43404040 	beqz	$r2,213056(0x34040) # 1c03c7b4 <_sidata+0x33fc8>
1c008778:	70784c66 	0x70784c66
1c00877c:	00202070 	div.w	$r16,$r3,$r8
1c008780:	c1c14000 	0xc1c14000
1c008784:	21214143 	sc.w	$r3,$r10,8512(0x2140)
1c008788:	ff810121 	0xff810121
1c00878c:	1c00000f 	pcaddu12i	$r15,0
1c008790:	0c02c0f0 	0x0c02c0f0
1c008794:	0000e0f8 	0x0000e0f8
1c008798:	061f7cc0 	cacop	0x0,$r6,2015(0x7df)
	...
1c0087a4:	18080800 	pcaddi	$r0,16448(0x4040)
1c0087a8:	070f1838 	0x070f1838
1c0087ac:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c0087b0:	10101113 	addu16i.d	$r19,$r8,1028(0x404)
1c0087b4:	1e101011 	pcaddu18i	$r17,32896(0x8080)
1c0087b8:	18101013 	pcaddi	$r19,32896(0x8080)
1c0087bc:	00001018 	clo.w	$r24,$r0
1c0087c0:	e5a9b8e6 	0xe5a9b8e6
1c0087c4:	203aa6ba 	ll.w	$r26,$r21,15012(0x3aa4)
1c0087c8:	20643225 	ll.w	$r5,$r17,25648(0x6430)
1c0087cc:	008384e2 	bstrins.d	$r2,$r7,0x3,0x21
1c0087d0:	e5bfb9e6 	0xe5bfb9e6
1c0087d4:	203aa6ba 	ll.w	$r26,$r21,15012(0x3aa4)
1c0087d8:	20643225 	ll.w	$r5,$r17,25648(0x6430)
1c0087dc:	48522525 	bcnez	$fcc1,1331748(0x145224) # 1c14da00 <_sidata+0x145214>
1c0087e0:	00000000 	0x00000000
1c0087e4:	203a7366 	ll.w	$r6,$r27,14960(0x3a70)
1c0087e8:	00206425 	div.w	$r5,$r1,$r25

Disassembly of section .data:

80001000 <_sdata>:
_sdata():
80001000:	00000000 	0x00000000
80001004:	1c006869 	pcaddu12i	$r9,835(0x343)
80001008:	80000000 	0x80000000
8000100c:	80001020 	0x80001020
80001010:	80000018 	0x80000018
80001014:	80000054 	0x80000054
80001018:	80000020 	0x80000020
8000101c:	1c006860 	pcaddu12i	$r0,835(0x343)

80001020 <g_SystemFreq>:
80001020:	007a1200 	bstrins.w	$r0,$r16,0x1a,0x4

80001024 <pwm_max_count>:
80001024:	00000014 	0x00000014

80001028 <pwm_cmp0>:
80001028:	00000001 	0x00000001

8000102c <dlln3x_address>:
8000102c:	219007fe 	sc.w	$r30,$r31,-28668(0x9004)
80001030:	90110000 	0x90110000
80001034:	0000ff00 	0x0000ff00

80001038 <dlln3x_network_id>:
80001038:	219007fe 	sc.w	$r30,$r31,-28668(0x9004)
8000103c:	91120000 	0x91120000
80001040:	0000ff01 	0x0000ff01

80001044 <dlln3x_channel>:
80001044:	219006fe 	sc.w	$r30,$r23,-28668(0x9004)
80001048:	12130000 	addu16i.d	$r0,$r0,-31552(0x84c0)
8000104c:	000000ff 	0x000000ff

80001050 <dlln3x_baud>:
80001050:	219006fe 	sc.w	$r30,$r23,-28668(0x9004)
80001054:	08140000 	fmadd.s	$f0,$f0,$f0,$f8
80001058:	000000ff 	0x000000ff

8000105c <dlln3x_rest>:
8000105c:	219005fe 	sc.w	$r30,$r15,-28668(0x9004)
80001060:	ff100000 	0xff100000

Disassembly of section .bss:

80000000 <gpio_state0>:
_sbss():
80000000:	00000000 	0x00000000

80000004 <count_timer_irq>:
80000004:	00000000 	0x00000000

80000008 <receive_Data.1833>:
	...

8000000a <temperature>:
	...

8000000c <humidity>:
8000000c:	00000000 	0x00000000

80000010 <pwm_cmp>:
80000010:	00000000 	0x00000000

80000014 <Read_length>:
80000014:	00000000 	0x00000000

80000018 <data>:
	...

80000020 <str>:
	...

80000054 <Circular_queue>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	0x3a434347
   4:	4e472820 	jirl	$r0,$r1,-112856(0x24728)
   8:	38202955 	ldx.bu	$r21,$r10,$r10
   c:	302e332e 	vldrepl.w	$vr14,$r25,-464(0xe30)
	...
