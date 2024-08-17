.include "macros.inc"
.file "BS2ParentalControl.c"

# 0x813801DC..0x813803F0 | size: 0x214
.text
.balign 4

# .text:0x0 | 0x813801DC | size: 0xA4
.fn BS2CheckParentalControl, global
/* 813801DC 0004E5DC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 813801E0 0004E5E0  7C 08 02 A6 */	mflr r0
/* 813801E4 0004E5E4  90 01 00 64 */	stw r0, 0x64(r1)
/* 813801E8 0004E5E8  48 00 00 99 */	bl __BS2IsPCEnable
/* 813801EC 0004E5EC  2C 03 00 00 */	cmpwi r3, 0x0
/* 813801F0 0004E5F0  40 82 00 0C */	bne .L_813801FC
/* 813801F4 0004E5F4  38 60 00 01 */	li r3, 0x1
/* 813801F8 0004E5F8  48 00 00 78 */	b .L_81380270
.L_813801FC:
/* 813801FC 0004E5FC  38 61 00 08 */	addi r3, r1, 0x8
/* 81380200 0004E600  48 1E 9F 79 */	bl fn_8156A178
/* 81380204 0004E604  2C 03 00 00 */	cmpwi r3, 0x0
/* 81380208 0004E608  40 82 00 0C */	bne .L_81380214
/* 8138020C 0004E60C  38 60 00 01 */	li r3, 0x1
/* 81380210 0004E610  48 00 00 60 */	b .L_81380270
.L_81380214:
/* 81380214 0004E614  88 01 00 08 */	lbz r0, 0x8(r1)
/* 81380218 0004E618  54 00 06 31 */	rlwinm. r0, r0, 0, 24, 24
/* 8138021C 0004E61C  41 82 00 50 */	beq .L_8138026C
/* 81380220 0004E620  3C 60 81 0B */	lis r3, bi3@ha
/* 81380224 0004E624  88 01 00 09 */	lbz r0, 0x9(r1)
/* 81380228 0004E628  38 63 9F 40 */	addi r3, r3, bi3@l
/* 8138022C 0004E62C  7C 63 02 14 */	add r3, r3, r0
/* 81380230 0004E630  88 63 00 10 */	lbz r3, 0x10(r3)
/* 81380234 0004E634  54 60 06 31 */	rlwinm. r0, r3, 0, 24, 24
/* 81380238 0004E638  41 82 00 0C */	beq .L_81380244
/* 8138023C 0004E63C  38 60 00 00 */	li r3, 0x0
/* 81380240 0004E640  48 00 00 30 */	b .L_81380270
.L_81380244:
/* 81380244 0004E644  54 60 06 73 */	rlwinm. r0, r3, 0, 25, 25
/* 81380248 0004E648  41 82 00 0C */	beq .L_81380254
/* 8138024C 0004E64C  38 60 00 00 */	li r3, 0x0
/* 81380250 0004E650  48 00 00 20 */	b .L_81380270
.L_81380254:
/* 81380254 0004E654  88 01 00 0A */	lbz r0, 0xa(r1)
/* 81380258 0004E658  54 63 06 FE */	clrlwi r3, r3, 27
/* 8138025C 0004E65C  7C 03 00 00 */	cmpw r3, r0
/* 81380260 0004E660  40 81 00 0C */	ble .L_8138026C
/* 81380264 0004E664  38 60 00 00 */	li r3, 0x0
/* 81380268 0004E668  48 00 00 08 */	b .L_81380270
.L_8138026C:
/* 8138026C 0004E66C  38 60 00 01 */	li r3, 0x1
.L_81380270:
/* 81380270 0004E670  80 01 00 64 */	lwz r0, 0x64(r1)
/* 81380274 0004E674  7C 08 03 A6 */	mtlr r0
/* 81380278 0004E678  38 21 00 60 */	addi r1, r1, 0x60
/* 8138027C 0004E67C  4E 80 00 20 */	blr
.endfn BS2CheckParentalControl

# .text:0xA4 | 0x81380280 | size: 0x50
.fn __BS2IsPCEnable, global
/* 81380280 0004E680  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81380284 0004E684  7C 08 02 A6 */	mflr r0
/* 81380288 0004E688  90 01 00 14 */	stw r0, 0x14(r1)
/* 8138028C 0004E68C  48 1E A8 41 */	bl fn_8156AACC
/* 81380290 0004E690  7C 60 07 74 */	extsb r0, r3
/* 81380294 0004E694  2C 00 00 04 */	cmpwi r0, 0x4
/* 81380298 0004E698  41 82 00 24 */	beq .L_813802BC
/* 8138029C 0004E69C  40 80 00 10 */	bge .L_813802AC
/* 813802A0 0004E6A0  2C 00 00 00 */	cmpwi r0, 0x0
/* 813802A4 0004E6A4  40 80 00 10 */	bge .L_813802B4
/* 813802A8 0004E6A8  48 00 00 14 */	b .L_813802BC
.L_813802AC:
/* 813802AC 0004E6AC  2C 00 00 07 */	cmpwi r0, 0x7
/* 813802B0 0004E6B0  40 80 00 0C */	bge .L_813802BC
.L_813802B4:
/* 813802B4 0004E6B4  38 60 00 01 */	li r3, 0x1
/* 813802B8 0004E6B8  48 00 00 08 */	b .L_813802C0
.L_813802BC:
/* 813802BC 0004E6BC  38 60 00 00 */	li r3, 0x0
.L_813802C0:
/* 813802C0 0004E6C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 813802C4 0004E6C4  7C 08 03 A6 */	mtlr r0
/* 813802C8 0004E6C8  38 21 00 10 */	addi r1, r1, 0x10
/* 813802CC 0004E6CC  4E 80 00 20 */	blr
.endfn __BS2IsPCEnable

# .text:0xF4 | 0x813802D0 | size: 0x120
.fn BS2IsValidDisc, global
/* 813802D0 0004E6D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813802D4 0004E6D4  7C 08 02 A6 */	mflr r0
/* 813802D8 0004E6D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 813802DC 0004E6DC  4B FF FF A5 */	bl __BS2IsPCEnable
/* 813802E0 0004E6E0  2C 03 00 00 */	cmpwi r3, 0x0
/* 813802E4 0004E6E4  40 82 00 0C */	bne .L_813802F0
/* 813802E8 0004E6E8  38 60 00 01 */	li r3, 0x1
/* 813802EC 0004E6EC  48 00 00 F4 */	b .L_813803E0
.L_813802F0:
/* 813802F0 0004E6F0  48 1E A7 DD */	bl fn_8156AACC
/* 813802F4 0004E6F4  7C 60 07 74 */	extsb r0, r3
/* 813802F8 0004E6F8  28 00 00 06 */	cmplwi r0, 0x6
/* 813802FC 0004E6FC  41 81 00 E0 */	bgt .L_813803DC
/* 81380300 0004E700  3C 60 81 64 */	lis r3, jumptable_81646EA8@ha
/* 81380304 0004E704  54 00 10 3A */	slwi r0, r0, 2
/* 81380308 0004E708  38 63 6E A8 */	addi r3, r3, jumptable_81646EA8@l
/* 8138030C 0004E70C  7C 63 00 2E */	lwzx r3, r3, r0
/* 81380310 0004E710  7C 69 03 A6 */	mtctr r3
/* 81380314 0004E714  4E 80 04 20 */	bctr
.L_81380318:
/* 81380318 0004E718  3C 60 81 0B */	lis r3, bi3@ha
/* 8138031C 0004E71C  38 63 9F 40 */	addi r3, r3, bi3@l
/* 81380320 0004E720  88 03 00 10 */	lbz r0, 0x10(r3)
/* 81380324 0004E724  54 00 06 30 */	rlwinm r0, r0, 0, 24, 24
/* 81380328 0004E728  7C 00 00 34 */	cntlzw r0, r0
/* 8138032C 0004E72C  54 03 D9 7E */	srwi r3, r0, 5
/* 81380330 0004E730  48 00 00 B0 */	b .L_813803E0
.L_81380334:
/* 81380334 0004E734  3C 60 81 0B */	lis r3, bi3@ha
/* 81380338 0004E738  38 63 9F 40 */	addi r3, r3, bi3@l
/* 8138033C 0004E73C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 81380340 0004E740  54 00 06 30 */	rlwinm r0, r0, 0, 24, 24
/* 81380344 0004E744  7C 00 00 34 */	cntlzw r0, r0
/* 81380348 0004E748  54 03 D9 7E */	srwi r3, r0, 5
/* 8138034C 0004E74C  48 00 00 94 */	b .L_813803E0
.L_81380350:
/* 81380350 0004E750  3C 60 81 0B */	lis r3, bi3@ha
/* 81380354 0004E754  38 63 9F 40 */	addi r3, r3, bi3@l
/* 81380358 0004E758  88 03 00 13 */	lbz r0, 0x13(r3)
/* 8138035C 0004E75C  54 00 06 31 */	rlwinm. r0, r0, 0, 24, 24
/* 81380360 0004E760  41 82 00 3C */	beq .L_8138039C
/* 81380364 0004E764  88 03 00 14 */	lbz r0, 0x14(r3)
/* 81380368 0004E768  54 00 06 31 */	rlwinm. r0, r0, 0, 24, 24
/* 8138036C 0004E76C  41 82 00 30 */	beq .L_8138039C
/* 81380370 0004E770  88 03 00 15 */	lbz r0, 0x15(r3)
/* 81380374 0004E774  54 00 06 31 */	rlwinm. r0, r0, 0, 24, 24
/* 81380378 0004E778  41 82 00 24 */	beq .L_8138039C
/* 8138037C 0004E77C  88 03 00 16 */	lbz r0, 0x16(r3)
/* 81380380 0004E780  54 00 06 31 */	rlwinm. r0, r0, 0, 24, 24
/* 81380384 0004E784  41 82 00 18 */	beq .L_8138039C
/* 81380388 0004E788  88 03 00 17 */	lbz r0, 0x17(r3)
/* 8138038C 0004E78C  54 00 06 31 */	rlwinm. r0, r0, 0, 24, 24
/* 81380390 0004E790  41 82 00 0C */	beq .L_8138039C
/* 81380394 0004E794  38 60 00 00 */	li r3, 0x0
/* 81380398 0004E798  48 00 00 48 */	b .L_813803E0
.L_8138039C:
/* 8138039C 0004E79C  38 60 00 01 */	li r3, 0x1
/* 813803A0 0004E7A0  48 00 00 40 */	b .L_813803E0
.L_813803A4:
/* 813803A4 0004E7A4  3C 60 81 0B */	lis r3, bi3@ha
/* 813803A8 0004E7A8  38 63 9F 40 */	addi r3, r3, bi3@l
/* 813803AC 0004E7AC  88 03 00 18 */	lbz r0, 0x18(r3)
/* 813803B0 0004E7B0  54 00 06 30 */	rlwinm r0, r0, 0, 24, 24
/* 813803B4 0004E7B4  7C 00 00 34 */	cntlzw r0, r0
/* 813803B8 0004E7B8  54 03 D9 7E */	srwi r3, r0, 5
/* 813803BC 0004E7BC  48 00 00 24 */	b .L_813803E0
.L_813803C0:
/* 813803C0 0004E7C0  3C 60 81 0B */	lis r3, bi3@ha
/* 813803C4 0004E7C4  38 63 9F 40 */	addi r3, r3, bi3@l
/* 813803C8 0004E7C8  88 03 00 19 */	lbz r0, 0x19(r3)
/* 813803CC 0004E7CC  54 00 06 30 */	rlwinm r0, r0, 0, 24, 24
/* 813803D0 0004E7D0  7C 00 00 34 */	cntlzw r0, r0
/* 813803D4 0004E7D4  54 03 D9 7E */	srwi r3, r0, 5
/* 813803D8 0004E7D8  48 00 00 08 */	b .L_813803E0
.L_813803DC:
/* 813803DC 0004E7DC  38 60 00 00 */	li r3, 0x0
.L_813803E0:
/* 813803E0 0004E7E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 813803E4 0004E7E4  7C 08 03 A6 */	mtlr r0
/* 813803E8 0004E7E8  38 21 00 10 */	addi r1, r1, 0x10
/* 813803EC 0004E7EC  4E 80 00 20 */	blr
.endfn BS2IsValidDisc

# 0x81646EA8..0x81646EC8 | size: 0x20
.data
.balign 8

# .data:0x0 | 0x81646EA8 | size: 0x1C
.obj jumptable_81646EA8, local
	.rel BS2IsValidDisc, .L_81380318
	.rel BS2IsValidDisc, .L_81380334
	.rel BS2IsValidDisc, .L_81380350
	.rel BS2IsValidDisc, .L_813803A4
	.rel BS2IsValidDisc, .L_813803DC
	.rel BS2IsValidDisc, .L_81380318
	.rel BS2IsValidDisc, .L_813803C0
.endobj jumptable_81646EA8

# .data:0x1C | 0x81646EC4 | size: 0x4
.obj gap_08_81646EC4_data, global
.hidden gap_08_81646EC4_data
	.4byte 0x00000000
.endobj gap_08_81646EC4_data