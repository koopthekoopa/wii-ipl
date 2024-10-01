.include "macros.inc"
.file "pf_entry.c"

# 0x814BE2FC..0x814BFEEC | size: 0x1BF0
.text
.balign 4

# .text:0x0 | 0x814BE2FC | size: 0x368
.fn VFiPFENT_searchEmptyTailSFN, global
/* 814BE2FC | 94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 814BE300 | 7C 08 02 A6 */	mflr r0
/* 814BE304 | 90 01 00 C4 */	stw r0, 0xc4(r1)
/* 814BE308 | 39 61 00 C0 */	addi r11, r1, 0xc0
/* 814BE30C | 48 13 B1 AD */	bl _savegpr_25
/* 814BE310 | 83 A3 00 30 */	lwz r29, 0x30(r3)
/* 814BE314 | 7C 9A 23 78 */	mr r26, r4
/* 814BE318 | 7C DC 33 78 */	mr r28, r6
/* 814BE31C | 7C 7E 1B 78 */	mr r30, r3
/* 814BE320 | 80 1D 18 48 */	lwz r0, 0x1848(r29)
/* 814BE324 | 7C BB 2B 78 */	mr r27, r5
/* 814BE328 | 7F 83 E3 78 */	mr r3, r28
/* 814BE32C | 38 80 00 00 */	li r4, 0x0
/* 814BE330 | 54 05 10 3A */	slwi r5, r0, 2
/* 814BE334 | 4B FF 75 D5 */	bl VFipf_memset
/* 814BE338 | 80 BE 00 00 */	lwz r5, 0x0(r30)
/* 814BE33C | 38 61 00 28 */	addi r3, r1, 0x28
/* 814BE340 | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 814BE344 | 38 80 00 00 */	li r4, 0x0
/* 814BE348 | 90 A1 00 30 */	stw r5, 0x30(r1)
/* 814BE34C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814BE350 | 80 BE 00 08 */	lwz r5, 0x8(r30)
/* 814BE354 | 80 1E 00 0C */	lwz r0, 0xc(r30)
/* 814BE358 | 90 A1 00 38 */	stw r5, 0x38(r1)
/* 814BE35C | 90 01 00 3C */	stw r0, 0x3c(r1)
/* 814BE360 | 80 BE 00 10 */	lwz r5, 0x10(r30)
/* 814BE364 | 80 1E 00 14 */	lwz r0, 0x14(r30)
/* 814BE368 | 90 A1 00 40 */	stw r5, 0x40(r1)
/* 814BE36C | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814BE370 | 80 BE 00 18 */	lwz r5, 0x18(r30)
/* 814BE374 | 80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 814BE378 | 90 A1 00 48 */	stw r5, 0x48(r1)
/* 814BE37C | 90 01 00 4C */	stw r0, 0x4c(r1)
/* 814BE380 | 80 BE 00 20 */	lwz r5, 0x20(r30)
/* 814BE384 | 80 1E 00 24 */	lwz r0, 0x24(r30)
/* 814BE388 | 90 A1 00 50 */	stw r5, 0x50(r1)
/* 814BE38C | 90 01 00 54 */	stw r0, 0x54(r1)
/* 814BE390 | 80 BE 00 28 */	lwz r5, 0x28(r30)
/* 814BE394 | 80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 814BE398 | 90 A1 00 58 */	stw r5, 0x58(r1)
/* 814BE39C | 90 01 00 5C */	stw r0, 0x5c(r1)
/* 814BE3A0 | 80 1E 00 30 */	lwz r0, 0x30(r30)
/* 814BE3A4 | 90 01 00 60 */	stw r0, 0x60(r1)
/* 814BE3A8 | 48 00 2F 11 */	bl VFiPFENT_ITER_IteratorInitialize
/* 814BE3AC | 7C 7E 1B 78 */	mr r30, r3
/* 814BE3B0 | 3B E1 00 18 */	addi r31, r1, 0x18
/* 814BE3B4 | 3B 20 00 01 */	li r25, 0x1
/* 814BE3B8 | 48 00 02 80 */	b .L_814BE638
.L_814BE3BC:
/* 814BE3BC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814BE3C0 | 41 82 00 0C */	beq .L_814BE3CC
/* 814BE3C4 | 7F C3 F3 78 */	mr r3, r30
/* 814BE3C8 | 48 00 02 84 */	b .L_814BE64C
.L_814BE3CC:
/* 814BE3CC | 88 01 00 70 */	lbz r0, 0x70(r1)
/* 814BE3D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BE3D4 | 41 82 02 74 */	beq .L_814BE648
/* 814BE3D8 | 28 00 00 E5 */	cmplwi r0, 0xe5
/* 814BE3DC | 41 82 02 4C */	beq .L_814BE628
/* 814BE3E0 | 88 61 00 7B */	lbz r3, 0x7b(r1)
/* 814BE3E4 | 54 60 07 3E */	clrlwi r0, r3, 28
/* 814BE3E8 | 2C 00 00 0F */	cmpwi r0, 0xf
/* 814BE3EC | 41 82 02 3C */	beq .L_814BE628
/* 814BE3F0 | 54 60 07 39 */	rlwinm. r0, r3, 0, 28, 28
/* 814BE3F4 | 40 82 02 34 */	bne .L_814BE628
/* 814BE3F8 | 38 61 00 18 */	addi r3, r1, 0x18
/* 814BE3FC | 38 81 00 70 */	addi r4, r1, 0x70
/* 814BE400 | 38 A0 00 00 */	li r5, 0x0
/* 814BE404 | 48 00 CC C9 */	bl VFiPFPATH_getShortName
/* 814BE408 | 38 61 00 19 */	addi r3, r1, 0x19
/* 814BE40C | 38 80 00 01 */	li r4, 0x1
/* 814BE410 | 48 00 00 0C */	b .L_814BE41C
.L_814BE414:
/* 814BE414 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814BE418 | 38 84 00 01 */	addi r4, r4, 0x1
.L_814BE41C:
/* 814BE41C | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 814BE420 | 7C 00 07 74 */	extsb r0, r0
/* 814BE424 | 2C 00 00 7E */	cmpwi r0, 0x7e
/* 814BE428 | 41 82 00 14 */	beq .L_814BE43C
/* 814BE42C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BE430 | 41 82 00 0C */	beq .L_814BE43C
/* 814BE434 | 28 04 00 07 */	cmplwi r4, 0x7
/* 814BE438 | 41 80 FF DC */	blt .L_814BE414
.L_814BE43C:
/* 814BE43C | 28 04 00 07 */	cmplwi r4, 0x7
/* 814BE440 | 40 80 01 E8 */	bge .L_814BE628
/* 814BE444 | 7C 1F 20 AE */	lbzx r0, r31, r4
/* 814BE448 | 7C 00 07 74 */	extsb r0, r0
/* 814BE44C | 2C 00 00 7E */	cmpwi r0, 0x7e
/* 814BE450 | 40 82 01 D8 */	bne .L_814BE628
/* 814BE454 | 38 E4 00 01 */	addi r7, r4, 0x1
/* 814BE458 | 7C 7F 3A 14 */	add r3, r31, r7
/* 814BE45C | 48 00 00 0C */	b .L_814BE468
.L_814BE460:
/* 814BE460 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814BE464 | 38 E7 00 01 */	addi r7, r7, 0x1
.L_814BE468:
/* 814BE468 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 814BE46C | 7C 00 07 74 */	extsb r0, r0
/* 814BE470 | 2C 00 00 30 */	cmpwi r0, 0x30
/* 814BE474 | 41 80 00 0C */	blt .L_814BE480
/* 814BE478 | 2C 00 00 39 */	cmpwi r0, 0x39
/* 814BE47C | 40 81 FF E4 */	ble .L_814BE460
.L_814BE480:
/* 814BE480 | 7C 1F 38 AE */	lbzx r0, r31, r7
/* 814BE484 | 7C 00 07 74 */	extsb r0, r0
/* 814BE488 | 2C 00 00 2E */	cmpwi r0, 0x2e
/* 814BE48C | 41 82 00 0C */	beq .L_814BE498
/* 814BE490 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BE494 | 40 82 01 94 */	bne .L_814BE628
.L_814BE498:
/* 814BE498 | 7C 04 38 50 */	subf r0, r4, r7
/* 814BE49C | 3B C0 00 00 */	li r30, 0x0
/* 814BE4A0 | 35 00 FF FF */	subic. r8, r0, 0x1
/* 814BE4A4 | 7D 03 43 78 */	mr r3, r8
/* 814BE4A8 | 41 82 01 20 */	beq .L_814BE5C8
/* 814BE4AC | 55 00 E8 FF */	srwi. r0, r8, 3
/* 814BE4B0 | 7C 09 03 A6 */	mtctr r0
/* 814BE4B4 | 41 82 00 F0 */	beq .L_814BE5A4
.L_814BE4B8:
/* 814BE4B8 | 7C C8 38 50 */	subf r6, r8, r7
/* 814BE4BC | 39 08 FF FF */	subi r8, r8, 0x1
/* 814BE4C0 | 7C BF 30 AE */	lbzx r5, r31, r6
/* 814BE4C4 | 1F DE 00 0A */	mulli r30, r30, 0xa
/* 814BE4C8 | 7C C8 38 50 */	subf r6, r8, r7
/* 814BE4CC | 7C A0 07 74 */	extsb r0, r5
/* 814BE4D0 | 7C BF 30 AE */	lbzx r5, r31, r6
/* 814BE4D4 | 7C 80 F2 14 */	add r4, r0, r30
/* 814BE4D8 | 39 08 FF FF */	subi r8, r8, 0x1
/* 814BE4DC | 3B C4 FF D0 */	subi r30, r4, 0x30
/* 814BE4E0 | 7C A0 07 74 */	extsb r0, r5
/* 814BE4E4 | 1F DE 00 0A */	mulli r30, r30, 0xa
/* 814BE4E8 | 7C C8 38 50 */	subf r6, r8, r7
/* 814BE4EC | 7C BF 30 AE */	lbzx r5, r31, r6
/* 814BE4F0 | 39 08 FF FF */	subi r8, r8, 0x1
/* 814BE4F4 | 7C 80 F2 14 */	add r4, r0, r30
/* 814BE4F8 | 7C C8 38 50 */	subf r6, r8, r7
/* 814BE4FC | 3B C4 FF D0 */	subi r30, r4, 0x30
/* 814BE500 | 7C A0 07 74 */	extsb r0, r5
/* 814BE504 | 1F DE 00 0A */	mulli r30, r30, 0xa
/* 814BE508 | 7C BF 30 AE */	lbzx r5, r31, r6
/* 814BE50C | 39 08 FF FF */	subi r8, r8, 0x1
/* 814BE510 | 7C 80 F2 14 */	add r4, r0, r30
/* 814BE514 | 7C C8 38 50 */	subf r6, r8, r7
/* 814BE518 | 3B C4 FF D0 */	subi r30, r4, 0x30
/* 814BE51C | 7C A0 07 74 */	extsb r0, r5
/* 814BE520 | 1F DE 00 0A */	mulli r30, r30, 0xa
/* 814BE524 | 7C BF 30 AE */	lbzx r5, r31, r6
/* 814BE528 | 39 08 FF FF */	subi r8, r8, 0x1
/* 814BE52C | 7C 80 F2 14 */	add r4, r0, r30
/* 814BE530 | 7C C8 38 50 */	subf r6, r8, r7
/* 814BE534 | 3B C4 FF D0 */	subi r30, r4, 0x30
/* 814BE538 | 7C A0 07 74 */	extsb r0, r5
/* 814BE53C | 1F DE 00 0A */	mulli r30, r30, 0xa
/* 814BE540 | 7C BF 30 AE */	lbzx r5, r31, r6
/* 814BE544 | 39 08 FF FF */	subi r8, r8, 0x1
/* 814BE548 | 7C 80 F2 14 */	add r4, r0, r30
/* 814BE54C | 7C C8 38 50 */	subf r6, r8, r7
/* 814BE550 | 3B C4 FF D0 */	subi r30, r4, 0x30
/* 814BE554 | 7C A0 07 74 */	extsb r0, r5
/* 814BE558 | 1F DE 00 0A */	mulli r30, r30, 0xa
/* 814BE55C | 7C BF 30 AE */	lbzx r5, r31, r6
/* 814BE560 | 39 08 FF FF */	subi r8, r8, 0x1
/* 814BE564 | 7C 80 F2 14 */	add r4, r0, r30
/* 814BE568 | 7C C8 38 50 */	subf r6, r8, r7
/* 814BE56C | 3B C4 FF D0 */	subi r30, r4, 0x30
/* 814BE570 | 7C A0 07 74 */	extsb r0, r5
/* 814BE574 | 1F DE 00 0A */	mulli r30, r30, 0xa
/* 814BE578 | 7C BF 30 AE */	lbzx r5, r31, r6
/* 814BE57C | 39 08 FF FF */	subi r8, r8, 0x1
/* 814BE580 | 7C 80 F2 14 */	add r4, r0, r30
/* 814BE584 | 7C A0 07 74 */	extsb r0, r5
/* 814BE588 | 3B C4 FF D0 */	subi r30, r4, 0x30
/* 814BE58C | 1F DE 00 0A */	mulli r30, r30, 0xa
/* 814BE590 | 7C 80 F2 14 */	add r4, r0, r30
/* 814BE594 | 3B C4 FF D0 */	subi r30, r4, 0x30
/* 814BE598 | 42 00 FF 20 */	bdnz .L_814BE4B8
/* 814BE59C | 70 63 00 07 */	andi. r3, r3, 0x7
/* 814BE5A0 | 41 82 00 28 */	beq .L_814BE5C8
.L_814BE5A4:
/* 814BE5A4 | 7C 69 03 A6 */	mtctr r3
.L_814BE5A8:
/* 814BE5A8 | 7C C8 38 50 */	subf r6, r8, r7
/* 814BE5AC | 39 08 FF FF */	subi r8, r8, 0x1
/* 814BE5B0 | 7C BF 30 AE */	lbzx r5, r31, r6
/* 814BE5B4 | 1F DE 00 0A */	mulli r30, r30, 0xa
/* 814BE5B8 | 7C A0 07 74 */	extsb r0, r5
/* 814BE5BC | 7C 80 F2 14 */	add r4, r0, r30
/* 814BE5C0 | 3B C4 FF D0 */	subi r30, r4, 0x30
/* 814BE5C4 | 42 00 FF E4 */	bdnz .L_814BE5A8
.L_814BE5C8:
/* 814BE5C8 | 7F 64 DB 78 */	mr r4, r27
/* 814BE5CC | 38 61 00 08 */	addi r3, r1, 0x8
/* 814BE5D0 | 4B FF 74 51 */	bl VFipf_strcpy
/* 814BE5D4 | 7F C4 F3 78 */	mr r4, r30
/* 814BE5D8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814BE5DC | 48 00 D9 3D */	bl VFiPFPATH_parseShortNameNumeric
/* 814BE5E0 | 38 61 00 18 */	addi r3, r1, 0x18
/* 814BE5E4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814BE5E8 | 48 00 C4 F5 */	bl VFiPFPATH_cmpTailSFN
/* 814BE5EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BE5F0 | 40 82 00 38 */	bne .L_814BE628
/* 814BE5F4 | 7C 1E D0 40 */	cmplw r30, r26
/* 814BE5F8 | 41 80 00 30 */	blt .L_814BE628
/* 814BE5FC | 80 1D 18 48 */	lwz r0, 0x1848(r29)
/* 814BE600 | 54 00 28 34 */	slwi r0, r0, 5
/* 814BE604 | 7C 1A 02 14 */	add r0, r26, r0
/* 814BE608 | 7C 1E 00 40 */	cmplw r30, r0
/* 814BE60C | 40 80 00 1C */	bge .L_814BE628
/* 814BE610 | 7F DA F0 50 */	subf r30, r26, r30
/* 814BE614 | 57 C4 E8 FA */	rlwinm r4, r30, 29, 3, 29
/* 814BE618 | 7C 7C 20 2E */	lwzx r3, r28, r4
/* 814BE61C | 7F 20 F0 30 */	slw r0, r25, r30
/* 814BE620 | 7C 60 03 78 */	or r0, r3, r0
/* 814BE624 | 7C 1C 21 2E */	stwx r0, r28, r4
.L_814BE628:
/* 814BE628 | 38 61 00 28 */	addi r3, r1, 0x28
/* 814BE62C | 38 80 00 00 */	li r4, 0x0
/* 814BE630 | 48 00 2F 91 */	bl VFiPFENT_ITER_Advance
/* 814BE634 | 7C 7E 1B 78 */	mr r30, r3
.L_814BE638:
/* 814BE638 | 38 61 00 28 */	addi r3, r1, 0x28
/* 814BE63C | 48 00 2D 81 */	bl VFiPFENT_ITER_IsAtLogicalEnd
/* 814BE640 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BE644 | 41 82 FD 78 */	beq .L_814BE3BC
.L_814BE648:
/* 814BE648 | 38 60 00 00 */	li r3, 0x0
.L_814BE64C:
/* 814BE64C | 39 61 00 C0 */	addi r11, r1, 0xc0
/* 814BE650 | 48 13 AE B5 */	bl _restgpr_25
/* 814BE654 | 80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 814BE658 | 7C 08 03 A6 */	mtlr r0
/* 814BE65C | 38 21 00 C0 */	addi r1, r1, 0xc0
/* 814BE660 | 4E 80 00 20 */	blr
.endfn VFiPFENT_searchEmptyTailSFN

# .text:0x368 | 0x814BE664 | size: 0x118
.fn VFiPFENT_findEmptyTailSFN, global
/* 814BE664 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 814BE668 | 7C 08 02 A6 */	mflr r0
/* 814BE66C | 90 01 00 64 */	stw r0, 0x64(r1)
/* 814BE670 | 39 61 00 60 */	addi r11, r1, 0x60
/* 814BE674 | 48 13 AE 49 */	bl _savegpr_26
/* 814BE678 | 83 E3 02 2C */	lwz r31, 0x22c(r3)
/* 814BE67C | 38 00 00 01 */	li r0, 0x1
/* 814BE680 | 7C 66 1B 78 */	mr r6, r3
/* 814BE684 | 7C 9D 23 78 */	mr r29, r4
/* 814BE688 | 90 05 00 00 */	stw r0, 0x0(r5)
/* 814BE68C | 7C BE 2B 78 */	mr r30, r5
/* 814BE690 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814BE694 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814BE698 | 80 A6 02 2C */	lwz r5, 0x22c(r6)
/* 814BE69C | 38 C6 02 34 */	addi r6, r6, 0x234
/* 814BE6A0 | 48 00 68 CD */	bl VFiPFFAT_InitFFD
/* 814BE6A4 | 3F 60 00 0F */	lis r27, 0xf
/* 814BE6A8 | 3B 40 00 01 */	li r26, 0x1
/* 814BE6AC | 3B 9B 42 3F */	addi r28, r27, 0x423f
/* 814BE6B0 | 48 00 00 A8 */	b .L_814BE758
.L_814BE6B4:
/* 814BE6B4 | 80 DF 18 50 */	lwz r6, 0x1850(r31)
/* 814BE6B8 | 7F 44 D3 78 */	mr r4, r26
/* 814BE6BC | 7F A5 EB 78 */	mr r5, r29
/* 814BE6C0 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814BE6C4 | 4B FF FC 39 */	bl VFiPFENT_searchEmptyTailSFN
/* 814BE6C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BE6CC | 41 82 00 08 */	beq .L_814BE6D4
/* 814BE6D0 | 48 00 00 94 */	b .L_814BE764
.L_814BE6D4:
/* 814BE6D4 | 38 A0 00 00 */	li r5, 0x0
/* 814BE6D8 | 38 80 00 00 */	li r4, 0x0
/* 814BE6DC | 48 00 00 64 */	b .L_814BE740
.L_814BE6E0:
/* 814BE6E0 | 80 7F 18 50 */	lwz r3, 0x1850(r31)
/* 814BE6E4 | 7C 63 20 2E */	lwzx r3, r3, r4
/* 814BE6E8 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 814BE6EC | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814BE6F0 | 41 82 00 3C */	beq .L_814BE72C
/* 814BE6F4 | 54 A4 10 3A */	slwi r4, r5, 2
/* 814BE6F8 | 48 00 00 1C */	b .L_814BE714
.L_814BE6FC:
/* 814BE6FC | 7C 04 18 2E */	lwzx r0, r4, r3
/* 814BE700 | 54 00 F8 7E */	srwi r0, r0, 1
/* 814BE704 | 7C 04 19 2E */	stwx r0, r4, r3
/* 814BE708 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 814BE70C | 38 03 00 01 */	addi r0, r3, 0x1
/* 814BE710 | 90 1E 00 00 */	stw r0, 0x0(r30)
.L_814BE714:
/* 814BE714 | 80 7F 18 50 */	lwz r3, 0x1850(r31)
/* 814BE718 | 7C 04 18 2E */	lwzx r0, r4, r3
/* 814BE71C | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814BE720 | 40 82 FF DC */	bne .L_814BE6FC
/* 814BE724 | 3B 5B 42 40 */	addi r26, r27, 0x4240
/* 814BE728 | 48 00 00 24 */	b .L_814BE74C
.L_814BE72C:
/* 814BE72C | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 814BE730 | 38 84 00 04 */	addi r4, r4, 0x4
/* 814BE734 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814BE738 | 38 03 00 20 */	addi r0, r3, 0x20
/* 814BE73C | 90 1E 00 00 */	stw r0, 0x0(r30)
.L_814BE740:
/* 814BE740 | 80 1F 18 48 */	lwz r0, 0x1848(r31)
/* 814BE744 | 7C 05 00 40 */	cmplw r5, r0
/* 814BE748 | 41 80 FF 98 */	blt .L_814BE6E0
.L_814BE74C:
/* 814BE74C | 80 1F 18 48 */	lwz r0, 0x1848(r31)
/* 814BE750 | 54 00 28 34 */	slwi r0, r0, 5
/* 814BE754 | 7F 5A 02 14 */	add r26, r26, r0
.L_814BE758:
/* 814BE758 | 7C 1A E0 40 */	cmplw r26, r28
/* 814BE75C | 40 81 FF 58 */	ble .L_814BE6B4
/* 814BE760 | 38 60 00 00 */	li r3, 0x0
.L_814BE764:
/* 814BE764 | 39 61 00 60 */	addi r11, r1, 0x60
/* 814BE768 | 48 13 AD A1 */	bl _restgpr_26
/* 814BE76C | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 814BE770 | 7C 08 03 A6 */	mtlr r0
/* 814BE774 | 38 21 00 60 */	addi r1, r1, 0x60
/* 814BE778 | 4E 80 00 20 */	blr
.endfn VFiPFENT_findEmptyTailSFN

# .text:0x480 | 0x814BE77C | size: 0x70
.fn VFiPFENT_CalcCheckSum, global
/* 814BE77C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814BE780 | 7C 08 02 A6 */	mflr r0
/* 814BE784 | 7C 64 1B 78 */	mr r4, r3
/* 814BE788 | 38 A0 00 00 */	li r5, 0x0
/* 814BE78C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814BE790 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814BE794 | 38 84 02 0E */	addi r4, r4, 0x20e
/* 814BE798 | 48 00 C7 AD */	bl VFiPFPATH_putShortName
/* 814BE79C | 38 00 00 0B */	li r0, 0xb
/* 814BE7A0 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814BE7A4 | 38 60 00 00 */	li r3, 0x0
/* 814BE7A8 | 38 E0 00 00 */	li r7, 0x0
/* 814BE7AC | 7C 09 03 A6 */	mtctr r0
.L_814BE7B0:
/* 814BE7B0 | 54 E4 04 3E */	clrlwi r4, r7, 16
/* 814BE7B4 | 54 60 07 FE */	clrlwi r0, r3, 31
/* 814BE7B8 | 7C A6 20 AE */	lbzx r5, r6, r4
/* 814BE7BC | 54 64 FE 7E */	extrwi r4, r3, 7, 24
/* 814BE7C0 | 7C 00 00 D0 */	neg r0, r0
/* 814BE7C4 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 814BE7C8 | 54 03 06 30 */	rlwinm r3, r0, 0, 24, 24
/* 814BE7CC | 7C 05 22 14 */	add r0, r5, r4
/* 814BE7D0 | 7C 03 02 14 */	add r0, r3, r0
/* 814BE7D4 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 814BE7D8 | 42 00 FF D8 */	bdnz .L_814BE7B0
/* 814BE7DC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814BE7E0 | 7C 08 03 A6 */	mtlr r0
/* 814BE7E4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814BE7E8 | 4E 80 00 20 */	blr
.endfn VFiPFENT_CalcCheckSum

# .text:0x4F0 | 0x814BE7EC | size: 0x48
.fn VFiPFENT_LoadShortNameFromBuf, global
/* 814BE7EC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814BE7F0 | 7C 08 02 A6 */	mflr r0
/* 814BE7F4 | 88 A4 00 0B */	lbz r5, 0xb(r4)
/* 814BE7F8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814BE7FC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814BE800 | 7C 7F 1B 78 */	mr r31, r3
/* 814BE804 | 38 63 02 0E */	addi r3, r3, 0x20e
/* 814BE808 | 48 00 C8 C5 */	bl VFiPFPATH_getShortName
/* 814BE80C | 88 1F 02 0E */	lbz r0, 0x20e(r31)
/* 814BE810 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 814BE814 | 40 82 00 0C */	bne .L_814BE820
/* 814BE818 | 38 00 FF E5 */	li r0, -0x1b
/* 814BE81C | 98 1F 02 0E */	stb r0, 0x20e(r31)
.L_814BE820:
/* 814BE820 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814BE824 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814BE828 | 7C 08 03 A6 */	mtlr r0
/* 814BE82C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814BE830 | 4E 80 00 20 */	blr
.endfn VFiPFENT_LoadShortNameFromBuf

# .text:0x538 | 0x814BE834 | size: 0xAC
.fn VFiPFENT_loadEntryNumericFieldsFromBuf, global
/* 814BE834 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814BE838 | 38 C3 02 1E */	addi r6, r3, 0x21e
/* 814BE83C | 89 04 00 0B */	lbz r8, 0xb(r4)
/* 814BE840 | 38 03 02 20 */	addi r0, r3, 0x220
/* 814BE844 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814BE848 | 38 A3 02 22 */	addi r5, r3, 0x222
/* 814BE84C | 89 44 00 0C */	lbz r10, 0xc(r4)
/* 814BE850 | 39 23 02 24 */	addi r9, r3, 0x224
/* 814BE854 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814BE858 | 88 E4 00 0D */	lbz r7, 0xd(r4)
/* 814BE85C | 99 03 02 1C */	stb r8, 0x21c(r3)
/* 814BE860 | 39 03 02 26 */	addi r8, r3, 0x226
/* 814BE864 | A1 64 00 0E */	lhz r11, 0xe(r4)
/* 814BE868 | 99 43 02 1B */	stb r10, 0x21b(r3)
/* 814BE86C | A1 44 00 10 */	lhz r10, 0x10(r4)
/* 814BE870 | 98 E3 02 1D */	stb r7, 0x21d(r3)
/* 814BE874 | A1 84 00 12 */	lhz r12, 0x12(r4)
/* 814BE878 | 7D 60 37 2C */	sthbrx r11, r0, r6
/* 814BE87C | 81 64 00 1C */	lwz r11, 0x1c(r4)
/* 814BE880 | 7D 40 07 2C */	sthbrx r10, r0, r0
/* 814BE884 | A3 E4 00 1A */	lhz r31, 0x1a(r4)
/* 814BE888 | 55 67 42 1E */	rlwinm r7, r11, 8, 8, 15
/* 814BE88C | 55 66 C4 2E */	rlwinm r6, r11, 24, 16, 23
/* 814BE890 | 7D 80 2F 2C */	sthbrx r12, r0, r5
/* 814BE894 | A1 44 00 16 */	lhz r10, 0x16(r4)
/* 814BE898 | 57 E0 44 2E */	clrlslwi r0, r31, 24, 8
/* 814BE89C | A3 C4 00 14 */	lhz r30, 0x14(r4)
/* 814BE8A0 | 51 67 C0 0E */	rlwimi r7, r11, 24, 0, 7
/* 814BE8A4 | A0 84 00 18 */	lhz r4, 0x18(r4)
/* 814BE8A8 | 51 66 46 3E */	rlwimi r6, r11, 8, 24, 31
/* 814BE8AC | 7D 40 4F 2C */	sthbrx r10, r0, r9
/* 814BE8B0 | 57 C5 44 2E */	clrlslwi r5, r30, 24, 8
/* 814BE8B4 | 53 C5 C6 3E */	rlwimi r5, r30, 24, 24, 31
/* 814BE8B8 | 53 E0 C6 3E */	rlwimi r0, r31, 24, 24, 31
/* 814BE8BC | 7C 80 47 2C */	sthbrx r4, r0, r8
/* 814BE8C0 | 7C E4 33 78 */	or r4, r7, r6
/* 814BE8C4 | 50 A0 80 1E */	rlwimi r0, r5, 16, 0, 15
/* 814BE8C8 | 90 83 02 28 */	stw r4, 0x228(r3)
/* 814BE8CC | 90 03 02 34 */	stw r0, 0x234(r3)
/* 814BE8D0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814BE8D4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814BE8D8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814BE8DC | 4E 80 00 20 */	blr
.endfn VFiPFENT_loadEntryNumericFieldsFromBuf

# .text:0x5E4 | 0x814BE8E0 | size: 0x220
.fn VFiPFENT_LoadLFNEntryFieldsFromBuf, global
/* 814BE8E0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814BE8E4 | 7C 08 02 A6 */	mflr r0
/* 814BE8E8 | 88 E4 00 00 */	lbz r7, 0x0(r4)
/* 814BE8EC | 39 00 00 01 */	li r8, 0x1
/* 814BE8F0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814BE8F4 | 54 E0 06 73 */	rlwinm. r0, r7, 0, 25, 25
/* 814BE8F8 | 88 C4 00 0D */	lbz r6, 0xd(r4)
/* 814BE8FC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814BE900 | 3B E0 00 00 */	li r31, 0x0
/* 814BE904 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814BE908 | 7C 9E 23 78 */	mr r30, r4
/* 814BE90C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814BE910 | 7C 7D 1B 78 */	mr r29, r3
/* 814BE914 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814BE918 | 41 82 00 10 */	beq .L_814BE928
/* 814BE91C | 54 E0 06 B0 */	rlwinm r0, r7, 0, 26, 24
/* 814BE920 | 3B E0 00 01 */	li r31, 0x1
/* 814BE924 | 54 07 06 3E */	clrlwi r7, r0, 24
.L_814BE928:
/* 814BE928 | 54 E0 06 3E */	clrlwi r0, r7, 24
/* 814BE92C | 28 00 00 14 */	cmplwi r0, 0x14
/* 814BE930 | 40 81 00 1C */	ble .L_814BE94C
/* 814BE934 | 38 00 00 00 */	li r0, 0x0
/* 814BE938 | 98 03 02 0B */	stb r0, 0x20b(r3)
/* 814BE93C | 98 03 02 0C */	stb r0, 0x20c(r3)
/* 814BE940 | 98 03 02 0A */	stb r0, 0x20a(r3)
/* 814BE944 | 38 60 00 21 */	li r3, 0x21
/* 814BE948 | 48 00 01 98 */	b .L_814BEAE0
.L_814BE94C:
/* 814BE94C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814BE950 | 41 82 00 20 */	beq .L_814BE970
/* 814BE954 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814BE958 | 41 82 00 30 */	beq .L_814BE988
/* 814BE95C | 88 A3 02 0B */	lbz r5, 0x20b(r3)
/* 814BE960 | 39 00 00 00 */	li r8, 0x0
/* 814BE964 | 38 05 00 01 */	addi r0, r5, 0x1
/* 814BE968 | 54 05 06 3E */	clrlwi r5, r0, 24
/* 814BE96C | 48 00 00 1C */	b .L_814BE988
.L_814BE970:
/* 814BE970 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814BE974 | 40 82 00 14 */	bne .L_814BE988
/* 814BE978 | 88 A3 02 0B */	lbz r5, 0x20b(r3)
/* 814BE97C | 39 00 00 00 */	li r8, 0x0
/* 814BE980 | 38 05 FF FF */	subi r0, r5, 0x1
/* 814BE984 | 54 05 06 3E */	clrlwi r5, r0, 24
.L_814BE988:
/* 814BE988 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814BE98C | 41 82 00 10 */	beq .L_814BE99C
/* 814BE990 | 38 00 00 00 */	li r0, 0x0
/* 814BE994 | 98 03 02 0A */	stb r0, 0x20a(r3)
/* 814BE998 | 48 00 00 48 */	b .L_814BE9E0
.L_814BE99C:
/* 814BE99C | 88 03 02 0A */	lbz r0, 0x20a(r3)
/* 814BE9A0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BE9A4 | 40 82 00 0C */	bne .L_814BE9B0
/* 814BE9A8 | 38 60 00 21 */	li r3, 0x21
/* 814BE9AC | 48 00 01 34 */	b .L_814BEAE0
.L_814BE9B0:
/* 814BE9B0 | 54 E0 06 3E */	clrlwi r0, r7, 24
/* 814BE9B4 | 7C 00 28 40 */	cmplw r0, r5
/* 814BE9B8 | 40 82 00 10 */	bne .L_814BE9C8
/* 814BE9BC | 88 03 02 0C */	lbz r0, 0x20c(r3)
/* 814BE9C0 | 7C 06 00 40 */	cmplw r6, r0
/* 814BE9C4 | 41 82 00 1C */	beq .L_814BE9E0
.L_814BE9C8:
/* 814BE9C8 | 38 00 00 00 */	li r0, 0x0
/* 814BE9CC | 98 03 02 0B */	stb r0, 0x20b(r3)
/* 814BE9D0 | 98 03 02 0C */	stb r0, 0x20c(r3)
/* 814BE9D4 | 98 03 02 0A */	stb r0, 0x20a(r3)
/* 814BE9D8 | 38 60 00 21 */	li r3, 0x21
/* 814BE9DC | 48 00 01 04 */	b .L_814BEAE0
.L_814BE9E0:
/* 814BE9E0 | 54 E5 06 3E */	clrlwi r5, r7, 24
/* 814BE9E4 | 98 E3 02 0B */	stb r7, 0x20b(r3)
/* 814BE9E8 | 38 05 FF FF */	subi r0, r5, 0x1
/* 814BE9EC | 38 84 00 01 */	addi r4, r4, 0x1
/* 814BE9F0 | 1C 00 00 1A */	mulli r0, r0, 0x1a
/* 814BE9F4 | 98 C3 02 0C */	stb r6, 0x20c(r3)
/* 814BE9F8 | 38 A0 00 0A */	li r5, 0xa
/* 814BE9FC | 7F 83 02 14 */	add r28, r3, r0
/* 814BEA00 | 7F 83 E3 78 */	mr r3, r28
/* 814BEA04 | 4B FF 6D DD */	bl VFipf_memcpy
/* 814BEA08 | 38 7C 00 0A */	addi r3, r28, 0xa
/* 814BEA0C | 38 9E 00 0E */	addi r4, r30, 0xe
/* 814BEA10 | 38 A0 00 0C */	li r5, 0xc
/* 814BEA14 | 4B FF 6D CD */	bl VFipf_memcpy
/* 814BEA18 | 38 7C 00 16 */	addi r3, r28, 0x16
/* 814BEA1C | 38 9E 00 1C */	addi r4, r30, 0x1c
/* 814BEA20 | 38 A0 00 04 */	li r5, 0x4
/* 814BEA24 | 4B FF 6D BD */	bl VFipf_memcpy
/* 814BEA28 | 7F 83 E3 78 */	mr r3, r28
/* 814BEA2C | 38 80 00 0A */	li r4, 0xa
/* 814BEA30 | 4B FF 70 B5 */	bl VFiPF_LE16_TO_U16_STR
/* 814BEA34 | 38 7C 00 0A */	addi r3, r28, 0xa
/* 814BEA38 | 38 80 00 0C */	li r4, 0xc
/* 814BEA3C | 4B FF 70 A9 */	bl VFiPF_LE16_TO_U16_STR
/* 814BEA40 | 38 7C 00 16 */	addi r3, r28, 0x16
/* 814BEA44 | 38 80 00 04 */	li r4, 0x4
/* 814BEA48 | 4B FF 70 9D */	bl VFiPF_LE16_TO_U16_STR
/* 814BEA4C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814BEA50 | 41 82 00 80 */	beq .L_814BEAD0
/* 814BEA54 | 38 9C 00 1A */	addi r4, r28, 0x1a
/* 814BEA58 | 38 60 00 00 */	li r3, 0x0
/* 814BEA5C | 38 04 00 01 */	addi r0, r4, 0x1
/* 814BEA60 | B0 7C 00 1A */	sth r3, 0x1a(r28)
/* 814BEA64 | 7C 1C 00 50 */	subf r0, r28, r0
/* 814BEA68 | 54 00 F8 7E */	srwi r0, r0, 1
/* 814BEA6C | 7C 09 03 A6 */	mtctr r0
/* 814BEA70 | 7C 1C 20 40 */	cmplw r28, r4
/* 814BEA74 | 40 80 00 20 */	bge .L_814BEA94
.L_814BEA78:
/* 814BEA78 | A0 1C 00 00 */	lhz r0, 0x0(r28)
/* 814BEA7C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BEA80 | 40 82 00 0C */	bne .L_814BEA8C
/* 814BEA84 | 3B 9C 00 02 */	addi r28, r28, 0x2
/* 814BEA88 | 48 00 00 0C */	b .L_814BEA94
.L_814BEA8C:
/* 814BEA8C | 3B 9C 00 02 */	addi r28, r28, 0x2
/* 814BEA90 | 42 00 FF E8 */	bdnz .L_814BEA78
.L_814BEA94:
/* 814BEA94 | 38 04 00 01 */	addi r0, r4, 0x1
/* 814BEA98 | 7C 1C 00 50 */	subf r0, r28, r0
/* 814BEA9C | 54 00 F8 7E */	srwi r0, r0, 1
/* 814BEAA0 | 7C 09 03 A6 */	mtctr r0
/* 814BEAA4 | 7C 1C 20 40 */	cmplw r28, r4
/* 814BEAA8 | 40 80 00 28 */	bge .L_814BEAD0
.L_814BEAAC:
/* 814BEAAC | A0 1C 00 00 */	lhz r0, 0x0(r28)
/* 814BEAB0 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814BEAB4 | 41 82 00 14 */	beq .L_814BEAC8
/* 814BEAB8 | 38 00 00 00 */	li r0, 0x0
/* 814BEABC | 38 60 00 21 */	li r3, 0x21
/* 814BEAC0 | 98 1D 02 0A */	stb r0, 0x20a(r29)
/* 814BEAC4 | 48 00 00 1C */	b .L_814BEAE0
.L_814BEAC8:
/* 814BEAC8 | 3B 9C 00 02 */	addi r28, r28, 0x2
/* 814BEACC | 42 00 FF E0 */	bdnz .L_814BEAAC
.L_814BEAD0:
/* 814BEAD0 | 88 9D 02 0A */	lbz r4, 0x20a(r29)
/* 814BEAD4 | 38 60 00 00 */	li r3, 0x0
/* 814BEAD8 | 38 04 00 01 */	addi r0, r4, 0x1
/* 814BEADC | 98 1D 02 0A */	stb r0, 0x20a(r29)
.L_814BEAE0:
/* 814BEAE0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814BEAE4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814BEAE8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814BEAEC | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814BEAF0 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814BEAF4 | 7C 08 03 A6 */	mtlr r0
/* 814BEAF8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814BEAFC | 4E 80 00 20 */	blr
.endfn VFiPFENT_LoadLFNEntryFieldsFromBuf

# .text:0x804 | 0x814BEB00 | size: 0x16C
.fn VFiPFENT_storeLFNEntryFieldsToBuf, global
/* 814BEB00 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814BEB04 | 7C 08 02 A6 */	mflr r0
/* 814BEB08 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814BEB0C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814BEB10 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814BEB14 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814BEB18 | 7C 7E 1B 78 */	mr r30, r3
/* 814BEB1C | 41 82 00 10 */	beq .L_814BEB2C
/* 814BEB20 | 60 A0 00 40 */	ori r0, r5, 0x40
/* 814BEB24 | 98 03 00 00 */	stb r0, 0x0(r3)
/* 814BEB28 | 48 00 00 08 */	b .L_814BEB30
.L_814BEB2C:
/* 814BEB2C | 98 A3 00 00 */	stb r5, 0x0(r3)
.L_814BEB30:
/* 814BEB30 | 38 05 FF FF */	subi r0, r5, 0x1
/* 814BEB34 | 38 A0 00 00 */	li r5, 0x0
/* 814BEB38 | 1C 00 00 1A */	mulli r0, r0, 0x1a
/* 814BEB3C | 39 00 00 0F */	li r8, 0xf
/* 814BEB40 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814BEB44 | 99 03 00 0B */	stb r8, 0xb(r3)
/* 814BEB48 | 98 C3 00 0D */	stb r6, 0xd(r3)
/* 814BEB4C | 7F E4 02 14 */	add r31, r4, r0
/* 814BEB50 | 98 A3 00 0C */	stb r5, 0xc(r3)
/* 814BEB54 | B0 A3 00 1A */	sth r5, 0x1a(r3)
/* 814BEB58 | 41 82 00 A8 */	beq .L_814BEC00
/* 814BEB5C | 38 BF 00 1A */	addi r5, r31, 0x1a
/* 814BEB60 | 7F E6 FB 78 */	mr r6, r31
/* 814BEB64 | 38 05 00 01 */	addi r0, r5, 0x1
/* 814BEB68 | 7C 1F 00 50 */	subf r0, r31, r0
/* 814BEB6C | 54 00 F8 7E */	srwi r0, r0, 1
/* 814BEB70 | 7C 09 03 A6 */	mtctr r0
/* 814BEB74 | 7C 1F 28 40 */	cmplw r31, r5
/* 814BEB78 | 40 80 00 20 */	bge .L_814BEB98
.L_814BEB7C:
/* 814BEB7C | A0 06 00 00 */	lhz r0, 0x0(r6)
/* 814BEB80 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BEB84 | 40 82 00 0C */	bne .L_814BEB90
/* 814BEB88 | 38 C6 00 02 */	addi r6, r6, 0x2
/* 814BEB8C | 48 00 00 0C */	b .L_814BEB98
.L_814BEB90:
/* 814BEB90 | 38 C6 00 02 */	addi r6, r6, 0x2
/* 814BEB94 | 42 00 FF E8 */	bdnz .L_814BEB7C
.L_814BEB98:
/* 814BEB98 | 38 85 00 01 */	addi r4, r5, 0x1
/* 814BEB9C | 7C 06 28 40 */	cmplw r6, r5
/* 814BEBA0 | 7C 86 20 50 */	subf r4, r6, r4
/* 814BEBA4 | 3C A0 00 01 */	lis r5, 0x1
/* 814BEBA8 | 38 A5 FF FF */	subi r5, r5, 0x1
/* 814BEBAC | 54 84 F8 7E */	srwi r4, r4, 1
/* 814BEBB0 | 40 80 00 50 */	bge .L_814BEC00
/* 814BEBB4 | 54 80 E8 FF */	srwi. r0, r4, 3
/* 814BEBB8 | 7C 09 03 A6 */	mtctr r0
/* 814BEBBC | 41 82 00 34 */	beq .L_814BEBF0
.L_814BEBC0:
/* 814BEBC0 | B0 A6 00 00 */	sth r5, 0x0(r6)
/* 814BEBC4 | B0 A6 00 02 */	sth r5, 0x2(r6)
/* 814BEBC8 | B0 A6 00 04 */	sth r5, 0x4(r6)
/* 814BEBCC | B0 A6 00 06 */	sth r5, 0x6(r6)
/* 814BEBD0 | B0 A6 00 08 */	sth r5, 0x8(r6)
/* 814BEBD4 | B0 A6 00 0A */	sth r5, 0xa(r6)
/* 814BEBD8 | B0 A6 00 0C */	sth r5, 0xc(r6)
/* 814BEBDC | B0 A6 00 0E */	sth r5, 0xe(r6)
/* 814BEBE0 | 38 C6 00 10 */	addi r6, r6, 0x10
/* 814BEBE4 | 42 00 FF DC */	bdnz .L_814BEBC0
/* 814BEBE8 | 70 84 00 07 */	andi. r4, r4, 0x7
/* 814BEBEC | 41 82 00 14 */	beq .L_814BEC00
.L_814BEBF0:
/* 814BEBF0 | 7C 89 03 A6 */	mtctr r4
.L_814BEBF4:
/* 814BEBF4 | B0 A6 00 00 */	sth r5, 0x0(r6)
/* 814BEBF8 | 38 C6 00 02 */	addi r6, r6, 0x2
/* 814BEBFC | 42 00 FF F8 */	bdnz .L_814BEBF4
.L_814BEC00:
/* 814BEC00 | 7F E4 FB 78 */	mr r4, r31
/* 814BEC04 | 38 A0 00 0A */	li r5, 0xa
/* 814BEC08 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814BEC0C | 4B FF 6B D5 */	bl VFipf_memcpy
/* 814BEC10 | 38 7E 00 0E */	addi r3, r30, 0xe
/* 814BEC14 | 38 9F 00 0A */	addi r4, r31, 0xa
/* 814BEC18 | 38 A0 00 0C */	li r5, 0xc
/* 814BEC1C | 4B FF 6B C5 */	bl VFipf_memcpy
/* 814BEC20 | 38 7E 00 1C */	addi r3, r30, 0x1c
/* 814BEC24 | 38 9F 00 16 */	addi r4, r31, 0x16
/* 814BEC28 | 38 A0 00 04 */	li r5, 0x4
/* 814BEC2C | 4B FF 6B B5 */	bl VFipf_memcpy
/* 814BEC30 | 38 7E 00 01 */	addi r3, r30, 0x1
/* 814BEC34 | 38 80 00 0A */	li r4, 0xa
/* 814BEC38 | 4B FF 6E AD */	bl VFiPF_LE16_TO_U16_STR
/* 814BEC3C | 38 7E 00 0E */	addi r3, r30, 0xe
/* 814BEC40 | 38 80 00 0C */	li r4, 0xc
/* 814BEC44 | 4B FF 6E A1 */	bl VFiPF_LE16_TO_U16_STR
/* 814BEC48 | 38 7E 00 1C */	addi r3, r30, 0x1c
/* 814BEC4C | 38 80 00 04 */	li r4, 0x4
/* 814BEC50 | 4B FF 6E 95 */	bl VFiPF_LE16_TO_U16_STR
/* 814BEC54 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814BEC58 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814BEC5C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814BEC60 | 7C 08 03 A6 */	mtlr r0
/* 814BEC64 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814BEC68 | 4E 80 00 20 */	blr
.endfn VFiPFENT_storeLFNEntryFieldsToBuf

# .text:0x970 | 0x814BEC6C | size: 0x9C
.fn VFiPFENT_GetEntryOfPath, global
/* 814BEC6C | 94 21 FF 70 */	stwu r1, -0x90(r1)
/* 814BEC70 | 7C 08 02 A6 */	mflr r0
/* 814BEC74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BEC78 | 90 01 00 94 */	stw r0, 0x94(r1)
/* 814BEC7C | 93 E1 00 8C */	stw r31, 0x8c(r1)
/* 814BEC80 | 7C BF 2B 78 */	mr r31, r5
/* 814BEC84 | 93 C1 00 88 */	stw r30, 0x88(r1)
/* 814BEC88 | 7C 9E 23 78 */	mr r30, r4
/* 814BEC8C | 93 A1 00 84 */	stw r29, 0x84(r1)
/* 814BEC90 | 7C 7D 1B 78 */	mr r29, r3
/* 814BEC94 | 41 82 00 0C */	beq .L_814BECA0
/* 814BEC98 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814BEC9C | 40 82 00 0C */	bne .L_814BECA8
.L_814BECA0:
/* 814BECA0 | 38 60 00 0A */	li r3, 0xa
/* 814BECA4 | 48 00 00 48 */	b .L_814BECEC
.L_814BECA8:
/* 814BECA8 | 80 05 00 00 */	lwz r0, 0x0(r5)
/* 814BECAC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BECB0 | 40 82 00 0C */	bne .L_814BECBC
/* 814BECB4 | 38 60 00 0A */	li r3, 0xa
/* 814BECB8 | 48 00 00 34 */	b .L_814BECEC
.L_814BECBC:
/* 814BECBC | 7F E3 FB 78 */	mr r3, r31
/* 814BECC0 | 4B FF 70 F1 */	bl VFiPFSTR_StrLen
/* 814BECC4 | 54 60 04 3F */	clrlwi. r0, r3, 16
/* 814BECC8 | 40 82 00 0C */	bne .L_814BECD4
/* 814BECCC | 38 60 00 0A */	li r3, 0xa
/* 814BECD0 | 48 00 00 1C */	b .L_814BECEC
.L_814BECD4:
/* 814BECD4 | 7F A4 EB 78 */	mr r4, r29
/* 814BECD8 | 7F C5 F3 78 */	mr r5, r30
/* 814BECDC | 7F E6 FB 78 */	mr r6, r31
/* 814BECE0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814BECE4 | 38 E0 00 00 */	li r7, 0x0
/* 814BECE8 | 48 00 2E F5 */	bl VFiPFENT_ITER_GetEntryOfPath
.L_814BECEC:
/* 814BECEC | 80 01 00 94 */	lwz r0, 0x94(r1)
/* 814BECF0 | 83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 814BECF4 | 83 C1 00 88 */	lwz r30, 0x88(r1)
/* 814BECF8 | 83 A1 00 84 */	lwz r29, 0x84(r1)
/* 814BECFC | 7C 08 03 A6 */	mtlr r0
/* 814BED00 | 38 21 00 90 */	addi r1, r1, 0x90
/* 814BED04 | 4E 80 00 20 */	blr
.endfn VFiPFENT_GetEntryOfPath

# .text:0xA0C | 0x814BED08 | size: 0x9C
.fn VFiPFENT_GetParentEntryOfPath, global
/* 814BED08 | 94 21 FF 70 */	stwu r1, -0x90(r1)
/* 814BED0C | 7C 08 02 A6 */	mflr r0
/* 814BED10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BED14 | 90 01 00 94 */	stw r0, 0x94(r1)
/* 814BED18 | 93 E1 00 8C */	stw r31, 0x8c(r1)
/* 814BED1C | 7C BF 2B 78 */	mr r31, r5
/* 814BED20 | 93 C1 00 88 */	stw r30, 0x88(r1)
/* 814BED24 | 7C 9E 23 78 */	mr r30, r4
/* 814BED28 | 93 A1 00 84 */	stw r29, 0x84(r1)
/* 814BED2C | 7C 7D 1B 78 */	mr r29, r3
/* 814BED30 | 41 82 00 0C */	beq .L_814BED3C
/* 814BED34 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814BED38 | 40 82 00 0C */	bne .L_814BED44
.L_814BED3C:
/* 814BED3C | 38 60 00 0A */	li r3, 0xa
/* 814BED40 | 48 00 00 48 */	b .L_814BED88
.L_814BED44:
/* 814BED44 | 80 05 00 00 */	lwz r0, 0x0(r5)
/* 814BED48 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BED4C | 40 82 00 0C */	bne .L_814BED58
/* 814BED50 | 38 60 00 0A */	li r3, 0xa
/* 814BED54 | 48 00 00 34 */	b .L_814BED88
.L_814BED58:
/* 814BED58 | 7F E3 FB 78 */	mr r3, r31
/* 814BED5C | 4B FF 70 55 */	bl VFiPFSTR_StrLen
/* 814BED60 | 54 60 04 3F */	clrlwi. r0, r3, 16
/* 814BED64 | 40 82 00 0C */	bne .L_814BED70
/* 814BED68 | 38 60 00 0A */	li r3, 0xa
/* 814BED6C | 48 00 00 1C */	b .L_814BED88
.L_814BED70:
/* 814BED70 | 7F A4 EB 78 */	mr r4, r29
/* 814BED74 | 7F C5 F3 78 */	mr r5, r30
/* 814BED78 | 7F E6 FB 78 */	mr r6, r31
/* 814BED7C | 38 61 00 08 */	addi r3, r1, 0x8
/* 814BED80 | 38 E0 00 01 */	li r7, 0x1
/* 814BED84 | 48 00 2E 59 */	bl VFiPFENT_ITER_GetEntryOfPath
.L_814BED88:
/* 814BED88 | 80 01 00 94 */	lwz r0, 0x94(r1)
/* 814BED8C | 83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 814BED90 | 83 C1 00 88 */	lwz r30, 0x88(r1)
/* 814BED94 | 83 A1 00 84 */	lwz r29, 0x84(r1)
/* 814BED98 | 7C 08 03 A6 */	mtlr r0
/* 814BED9C | 38 21 00 90 */	addi r1, r1, 0x90
/* 814BEDA0 | 4E 80 00 20 */	blr
.endfn VFiPFENT_GetParentEntryOfPath

# .text:0xAA8 | 0x814BEDA4 | size: 0x190
.fn VFiPFENT_findEntry, global
/* 814BEDA4 | 94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 814BEDA8 | 7C 08 02 A6 */	mflr r0
/* 814BEDAC | 90 01 00 A4 */	stw r0, 0xa4(r1)
/* 814BEDB0 | 39 61 00 A0 */	addi r11, r1, 0xa0
/* 814BEDB4 | 48 13 A7 05 */	bl _savegpr_25
/* 814BEDB8 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 814BEDBC | 7C 7A 1B 78 */	mr r26, r3
/* 814BEDC0 | 7C 9B 23 78 */	mr r27, r4
/* 814BEDC4 | 7C B9 2B 78 */	mr r25, r5
/* 814BEDC8 | 7C DC 33 78 */	mr r28, r6
/* 814BEDCC | 7C FD 3B 78 */	mr r29, r7
/* 814BEDD0 | 7D 1E 43 78 */	mr r30, r8
/* 814BEDD4 | 7D 3F 4B 78 */	mr r31, r9
/* 814BEDD8 | 41 82 00 10 */	beq .L_814BEDE8
/* 814BEDDC | 3C A0 00 0F */	lis r5, 0xf
/* 814BEDE0 | 38 05 42 3F */	addi r0, r5, 0x423f
/* 814BEDE4 | 90 09 00 00 */	stw r0, 0x0(r9)
.L_814BEDE8:
/* 814BEDE8 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 814BEDEC | 41 82 00 10 */	beq .L_814BEDFC
/* 814BEDF0 | 3C A0 00 0F */	lis r5, 0xf
/* 814BEDF4 | 38 05 42 3F */	addi r0, r5, 0x423f
/* 814BEDF8 | 90 09 00 00 */	stw r0, 0x0(r9)
.L_814BEDFC:
/* 814BEDFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BEE00 | 41 82 00 0C */	beq .L_814BEE0C
/* 814BEE04 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814BEE08 | 40 82 00 0C */	bne .L_814BEE14
.L_814BEE0C:
/* 814BEE0C | 38 60 00 0A */	li r3, 0xa
/* 814BEE10 | 48 00 01 0C */	b .L_814BEF1C
.L_814BEE14:
/* 814BEE14 | 80 06 00 00 */	lwz r0, 0x0(r6)
/* 814BEE18 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BEE1C | 40 82 00 0C */	bne .L_814BEE28
/* 814BEE20 | 38 60 00 0A */	li r3, 0xa
/* 814BEE24 | 48 00 00 F8 */	b .L_814BEF1C
.L_814BEE28:
/* 814BEE28 | 7F 83 E3 78 */	mr r3, r28
/* 814BEE2C | 4B FF 6F 85 */	bl VFiPFSTR_StrLen
/* 814BEE30 | 54 60 04 3F */	clrlwi. r0, r3, 16
/* 814BEE34 | 40 82 00 0C */	bne .L_814BEE40
/* 814BEE38 | 38 60 00 0A */	li r3, 0xa
/* 814BEE3C | 48 00 00 E0 */	b .L_814BEF1C
.L_814BEE40:
/* 814BEE40 | 3C 60 00 0F */	lis r3, 0xf
/* 814BEE44 | 38 03 42 3F */	addi r0, r3, 0x423f
/* 814BEE48 | 7C 19 00 40 */	cmplw r25, r0
/* 814BEE4C | 41 80 00 0C */	blt .L_814BEE58
/* 814BEE50 | 38 60 00 0A */	li r3, 0xa
/* 814BEE54 | 48 00 00 C8 */	b .L_814BEF1C
.L_814BEE58:
/* 814BEE58 | 80 BA 00 00 */	lwz r5, 0x0(r26)
/* 814BEE5C | 7F 24 CB 78 */	mr r4, r25
/* 814BEE60 | 80 1A 00 04 */	lwz r0, 0x4(r26)
/* 814BEE64 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814BEE68 | 90 A1 00 14 */	stw r5, 0x14(r1)
/* 814BEE6C | 90 01 00 18 */	stw r0, 0x18(r1)
/* 814BEE70 | 80 BA 00 08 */	lwz r5, 0x8(r26)
/* 814BEE74 | 80 1A 00 0C */	lwz r0, 0xc(r26)
/* 814BEE78 | 90 A1 00 1C */	stw r5, 0x1c(r1)
/* 814BEE7C | 90 01 00 20 */	stw r0, 0x20(r1)
/* 814BEE80 | 80 BA 00 10 */	lwz r5, 0x10(r26)
/* 814BEE84 | 80 1A 00 14 */	lwz r0, 0x14(r26)
/* 814BEE88 | 90 A1 00 24 */	stw r5, 0x24(r1)
/* 814BEE8C | 90 01 00 28 */	stw r0, 0x28(r1)
/* 814BEE90 | 80 BA 00 18 */	lwz r5, 0x18(r26)
/* 814BEE94 | 80 1A 00 1C */	lwz r0, 0x1c(r26)
/* 814BEE98 | 90 A1 00 2C */	stw r5, 0x2c(r1)
/* 814BEE9C | 90 01 00 30 */	stw r0, 0x30(r1)
/* 814BEEA0 | 80 BA 00 20 */	lwz r5, 0x20(r26)
/* 814BEEA4 | 80 1A 00 24 */	lwz r0, 0x24(r26)
/* 814BEEA8 | 90 A1 00 34 */	stw r5, 0x34(r1)
/* 814BEEAC | 90 01 00 38 */	stw r0, 0x38(r1)
/* 814BEEB0 | 80 BA 00 28 */	lwz r5, 0x28(r26)
/* 814BEEB4 | 80 1A 00 2C */	lwz r0, 0x2c(r26)
/* 814BEEB8 | 90 A1 00 3C */	stw r5, 0x3c(r1)
/* 814BEEBC | 90 01 00 40 */	stw r0, 0x40(r1)
/* 814BEEC0 | 80 1A 00 30 */	lwz r0, 0x30(r26)
/* 814BEEC4 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814BEEC8 | 48 00 23 F1 */	bl VFiPFENT_ITER_IteratorInitialize
/* 814BEECC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BEED0 | 41 82 00 08 */	beq .L_814BEED8
/* 814BEED4 | 48 00 00 48 */	b .L_814BEF1C
.L_814BEED8:
/* 814BEED8 | 7F 64 DB 78 */	mr r4, r27
/* 814BEEDC | 7F 85 E3 78 */	mr r5, r28
/* 814BEEE0 | 7F A6 EB 78 */	mr r6, r29
/* 814BEEE4 | 7F E8 FB 78 */	mr r8, r31
/* 814BEEE8 | 7F C9 F3 78 */	mr r9, r30
/* 814BEEEC | 38 61 00 0C */	addi r3, r1, 0xc
/* 814BEEF0 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814BEEF4 | 39 40 00 00 */	li r10, 0x0
/* 814BEEF8 | 48 00 2A ED */	bl VFiPFENT_ITER_FindEntry
/* 814BEEFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BEF00 | 41 82 00 08 */	beq .L_814BEF08
/* 814BEF04 | 48 00 00 18 */	b .L_814BEF1C
.L_814BEF08:
/* 814BEF08 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814BEF0C | 7C 00 00 34 */	cntlzw r0, r0
/* 814BEF10 | 54 00 DF FE */	extrwi r0, r0, 1, 26
/* 814BEF14 | 7C 00 00 D0 */	neg r0, r0
/* 814BEF18 | 54 03 07 BE */	clrlwi r3, r0, 30
.L_814BEF1C:
/* 814BEF1C | 39 61 00 A0 */	addi r11, r1, 0xa0
/* 814BEF20 | 48 13 A5 E5 */	bl _restgpr_25
/* 814BEF24 | 80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 814BEF28 | 7C 08 03 A6 */	mtlr r0
/* 814BEF2C | 38 21 00 A0 */	addi r1, r1, 0xa0
/* 814BEF30 | 4E 80 00 20 */	blr
.endfn VFiPFENT_findEntry

# .text:0xC38 | 0x814BEF34 | size: 0x6C
.fn VFiPFENT_allocateEntry, global
/* 814BEF34 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 814BEF38 | 41 82 00 10 */	beq .L_814BEF48
/* 814BEF3C | 3D 40 00 0F */	lis r10, 0xf
/* 814BEF40 | 38 0A 42 3F */	addi r0, r10, 0x423f
/* 814BEF44 | 90 09 00 00 */	stw r0, 0x0(r9)
.L_814BEF48:
/* 814BEF48 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814BEF4C | 41 82 00 10 */	beq .L_814BEF5C
/* 814BEF50 | 80 05 00 30 */	lwz r0, 0x30(r5)
/* 814BEF54 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BEF58 | 40 82 00 0C */	bne .L_814BEF64
.L_814BEF5C:
/* 814BEF5C | 38 60 00 0A */	li r3, 0xa
/* 814BEF60 | 4E 80 00 20 */	blr
.L_814BEF64:
/* 814BEF64 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814BEF68 | 41 82 00 18 */	beq .L_814BEF80
/* 814BEF6C | 80 07 00 00 */	lwz r0, 0x0(r7)
/* 814BEF70 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BEF74 | 40 82 00 0C */	bne .L_814BEF80
/* 814BEF78 | 38 60 00 0A */	li r3, 0xa
/* 814BEF7C | 4E 80 00 20 */	blr
.L_814BEF80:
/* 814BEF80 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814BEF84 | 41 82 00 0C */	beq .L_814BEF90
/* 814BEF88 | 28 04 00 15 */	cmplwi r4, 0x15
/* 814BEF8C | 40 81 00 0C */	ble .L_814BEF98
.L_814BEF90:
/* 814BEF90 | 38 60 00 0A */	li r3, 0xa
/* 814BEF94 | 4E 80 00 20 */	blr
.L_814BEF98:
/* 814BEF98 | 48 00 2B 40 */	b VFiPFENT_ITER_AllocateEntry
/* 814BEF9C | 4E 80 00 20 */	blr
.endfn VFiPFENT_allocateEntry

# .text:0xCA4 | 0x814BEFA0 | size: 0xA8
.fn VFiPFENT_GetRootDir, global
/* 814BEFA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BEFA4 | 40 82 00 0C */	bne .L_814BEFB0
/* 814BEFA8 | 38 60 00 0A */	li r3, 0xa
/* 814BEFAC | 4E 80 00 20 */	blr
.L_814BEFB0:
/* 814BEFB0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814BEFB4 | 40 82 00 0C */	bne .L_814BEFC0
/* 814BEFB8 | 38 60 00 0A */	li r3, 0xa
/* 814BEFBC | 4E 80 00 20 */	blr
.L_814BEFC0:
/* 814BEFC0 | A0 03 18 60 */	lhz r0, 0x1860(r3)
/* 814BEFC4 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814BEFC8 | 40 82 00 0C */	bne .L_814BEFD4
/* 814BEFCC | 38 60 00 09 */	li r3, 0x9
/* 814BEFD0 | 4E 80 00 20 */	blr
.L_814BEFD4:
/* 814BEFD4 | 39 00 00 00 */	li r8, 0x0
/* 814BEFD8 | 39 20 00 5C */	li r9, 0x5c
/* 814BEFDC | 38 E0 00 10 */	li r7, 0x10
/* 814BEFE0 | 38 C0 00 03 */	li r6, 0x3
/* 814BEFE4 | 38 A0 00 01 */	li r5, 0x1
/* 814BEFE8 | 38 00 FF FF */	li r0, -0x1
/* 814BEFEC | 90 64 02 2C */	stw r3, 0x22c(r4)
/* 814BEFF0 | 38 60 00 00 */	li r3, 0x0
/* 814BEFF4 | B1 24 00 00 */	sth r9, 0x0(r4)
/* 814BEFF8 | B1 04 00 02 */	sth r8, 0x2(r4)
/* 814BEFFC | 99 04 02 0A */	stb r8, 0x20a(r4)
/* 814BF000 | 99 04 02 0B */	stb r8, 0x20b(r4)
/* 814BF004 | 99 04 02 0C */	stb r8, 0x20c(r4)
/* 814BF008 | 99 24 02 0E */	stb r9, 0x20e(r4)
/* 814BF00C | 99 04 02 0F */	stb r8, 0x20f(r4)
/* 814BF010 | 99 04 02 1B */	stb r8, 0x21b(r4)
/* 814BF014 | 98 E4 02 1C */	stb r7, 0x21c(r4)
/* 814BF018 | 99 04 02 1D */	stb r8, 0x21d(r4)
/* 814BF01C | B1 04 02 1E */	sth r8, 0x21e(r4)
/* 814BF020 | B1 04 02 20 */	sth r8, 0x220(r4)
/* 814BF024 | B1 04 02 22 */	sth r8, 0x222(r4)
/* 814BF028 | B1 04 02 24 */	sth r8, 0x224(r4)
/* 814BF02C | B1 04 02 26 */	sth r8, 0x226(r4)
/* 814BF030 | 91 04 02 28 */	stw r8, 0x228(r4)
/* 814BF034 | 90 C4 02 30 */	stw r6, 0x230(r4)
/* 814BF038 | 90 A4 02 34 */	stw r5, 0x234(r4)
/* 814BF03C | 90 04 02 38 */	stw r0, 0x238(r4)
/* 814BF040 | B1 04 02 3C */	sth r8, 0x23c(r4)
/* 814BF044 | 4E 80 00 20 */	blr
.endfn VFiPFENT_GetRootDir

# .text:0xD4C | 0x814BF048 | size: 0xE8
.fn VFiPFENT_MakeRootDir, global
/* 814BF048 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814BF04C | 7C 08 02 A6 */	mflr r0
/* 814BF050 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BF054 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814BF058 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814BF05C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814BF060 | 7C 7E 1B 78 */	mr r30, r3
/* 814BF064 | 40 82 00 0C */	bne .L_814BF070
/* 814BF068 | 38 60 00 0A */	li r3, 0xa
/* 814BF06C | 48 00 00 AC */	b .L_814BF118
.L_814BF070:
/* 814BF070 | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 814BF074 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814BF078 | 41 82 00 14 */	beq .L_814BF08C
/* 814BF07C | 40 80 00 7C */	bge .L_814BF0F8
/* 814BF080 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BF084 | 40 80 00 50 */	bge .L_814BF0D4
/* 814BF088 | 48 00 00 70 */	b .L_814BF0F8
.L_814BF08C:
/* 814BF08C | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 814BF090 | 38 C0 00 00 */	li r6, 0x0
/* 814BF094 | 88 03 00 21 */	lbz r0, 0x21(r3)
/* 814BF098 | 38 E0 00 00 */	li r7, 0x0
/* 814BF09C | 38 84 FF FE */	subi r4, r4, 0x2
/* 814BF0A0 | 81 03 00 30 */	lwz r8, 0x30(r3)
/* 814BF0A4 | 7C 80 00 30 */	slw r0, r4, r0
/* 814BF0A8 | 88 A3 00 06 */	lbz r5, 0x6(r3)
/* 814BF0AC | 7C 88 02 14 */	add r4, r8, r0
/* 814BF0B0 | 39 00 00 00 */	li r8, 0x0
/* 814BF0B4 | 48 00 0B 39 */	bl VFiPFENT_FillVoidEntryToSectors
/* 814BF0B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BF0BC | 7C 7F 1B 78 */	mr r31, r3
/* 814BF0C0 | 40 82 00 3C */	bne .L_814BF0FC
/* 814BF0C4 | 7F C3 F3 78 */	mr r3, r30
/* 814BF0C8 | 48 00 59 A9 */	bl VFiPFFAT_MakeRootDir
/* 814BF0CC | 7C 7F 1B 78 */	mr r31, r3
/* 814BF0D0 | 48 00 00 2C */	b .L_814BF0FC
.L_814BF0D4:
/* 814BF0D4 | 80 83 00 2C */	lwz r4, 0x2c(r3)
/* 814BF0D8 | 38 C0 00 00 */	li r6, 0x0
/* 814BF0DC | 80 03 00 30 */	lwz r0, 0x30(r3)
/* 814BF0E0 | 38 E0 00 00 */	li r7, 0x0
/* 814BF0E4 | 39 00 00 00 */	li r8, 0x0
/* 814BF0E8 | 7C A4 00 50 */	subf r5, r4, r0
/* 814BF0EC | 48 00 0B 01 */	bl VFiPFENT_FillVoidEntryToSectors
/* 814BF0F0 | 7C 7F 1B 78 */	mr r31, r3
/* 814BF0F4 | 48 00 00 08 */	b .L_814BF0FC
.L_814BF0F8:
/* 814BF0F8 | 3B E0 00 07 */	li r31, 0x7
.L_814BF0FC:
/* 814BF0FC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814BF100 | 40 82 00 14 */	bne .L_814BF114
/* 814BF104 | 3C 60 81 67 */	lis r3, lbl_8166E4F0@ha
/* 814BF108 | 7F C4 F3 78 */	mr r4, r30
/* 814BF10C | 38 63 E4 F0 */	addi r3, r3, lbl_8166E4F0@l
/* 814BF110 | 48 00 EF 2D */	bl VFiPFVOL_LoadVolumeLabelFromBuf
.L_814BF114:
/* 814BF114 | 7F E3 FB 78 */	mr r3, r31
.L_814BF118:
/* 814BF118 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814BF11C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814BF120 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814BF124 | 7C 08 03 A6 */	mtlr r0
/* 814BF128 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814BF12C | 4E 80 00 20 */	blr
.endfn VFiPFENT_MakeRootDir

# .text:0xE34 | 0x814BF130 | size: 0x74
.fn VFiPFENT_CompareAttr, global
/* 814BF130 | 54 65 06 7F */	clrlwi. r5, r3, 25
/* 814BF134 | 38 60 00 00 */	li r3, 0x0
/* 814BF138 | 40 82 00 08 */	bne .L_814BF140
/* 814BF13C | 38 A0 00 40 */	li r5, 0x40
.L_814BF140:
/* 814BF140 | 54 A0 06 F7 */	rlwinm. r0, r5, 0, 27, 27
/* 814BF144 | 40 82 00 08 */	bne .L_814BF14C
/* 814BF148 | 60 A5 01 00 */	ori r5, r5, 0x100
.L_814BF14C:
/* 814BF14C | 54 80 06 31 */	rlwinm. r0, r4, 0, 24, 24
/* 814BF150 | 41 82 00 1C */	beq .L_814BF16C
/* 814BF154 | 54 84 06 6E */	rlwinm r4, r4, 0, 25, 23
/* 814BF158 | 7C 80 28 38 */	and r0, r4, r5
/* 814BF15C | 7C 04 00 40 */	cmplw r4, r0
/* 814BF160 | 4C 82 00 20 */	bnelr
/* 814BF164 | 38 60 00 01 */	li r3, 0x1
/* 814BF168 | 4E 80 00 20 */	blr
.L_814BF16C:
/* 814BF16C | 54 80 04 E7 */	rlwinm. r0, r4, 0, 19, 19
/* 814BF170 | 41 82 00 24 */	beq .L_814BF194
/* 814BF174 | 54 80 05 EF */	rlwinm. r0, r4, 0, 23, 23
/* 814BF178 | 54 84 05 24 */	rlwinm r4, r4, 0, 20, 18
/* 814BF17C | 40 82 00 08 */	bne .L_814BF184
/* 814BF180 | 54 A5 06 2C */	rlwinm r5, r5, 0, 24, 22
.L_814BF184:
/* 814BF184 | 7C 05 20 40 */	cmplw r5, r4
/* 814BF188 | 4C 82 00 20 */	bnelr
/* 814BF18C | 38 60 00 01 */	li r3, 0x1
/* 814BF190 | 4E 80 00 20 */	blr
.L_814BF194:
/* 814BF194 | 7C A0 20 39 */	and. r0, r5, r4
/* 814BF198 | 4D 82 00 20 */	beqlr
/* 814BF19C | 38 60 00 01 */	li r3, 0x1
/* 814BF1A0 | 4E 80 00 20 */	blr
.endfn VFiPFENT_CompareAttr

# .text:0xEA8 | 0x814BF1A4 | size: 0x130
.fn VFiPFENT_compareEntryName, global
/* 814BF1A4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814BF1A8 | 7C 08 02 A6 */	mflr r0
/* 814BF1AC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814BF1B0 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 814BF1B4 | 3B E0 00 01 */	li r31, 0x1
/* 814BF1B8 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 814BF1BC | 7C BE 2B 78 */	mr r30, r5
/* 814BF1C0 | 93 A1 00 24 */	stw r29, 0x24(r1)
/* 814BF1C4 | 7C 9D 23 78 */	mr r29, r4
/* 814BF1C8 | 93 81 00 20 */	stw r28, 0x20(r1)
/* 814BF1CC | 7C 7C 1B 78 */	mr r28, r3
/* 814BF1D0 | 88 03 02 0A */	lbz r0, 0x20a(r3)
/* 814BF1D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BF1D8 | 41 82 00 88 */	beq .L_814BF260
/* 814BF1DC | 88 03 02 0B */	lbz r0, 0x20b(r3)
/* 814BF1E0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814BF1E4 | 40 82 00 7C */	bne .L_814BF260
/* 814BF1E8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814BF1EC | 38 9C 02 0E */	addi r4, r28, 0x20e
/* 814BF1F0 | 38 A0 00 00 */	li r5, 0x0
/* 814BF1F4 | 48 00 BD 51 */	bl VFiPFPATH_putShortName
/* 814BF1F8 | 38 00 00 0B */	li r0, 0xb
/* 814BF1FC | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814BF200 | 38 80 00 00 */	li r4, 0x0
/* 814BF204 | 38 E0 00 00 */	li r7, 0x0
/* 814BF208 | 7C 09 03 A6 */	mtctr r0
.L_814BF20C:
/* 814BF20C | 54 E3 04 3E */	clrlwi r3, r7, 16
/* 814BF210 | 54 80 07 FE */	clrlwi r0, r4, 31
/* 814BF214 | 7C A6 18 AE */	lbzx r5, r6, r3
/* 814BF218 | 7C 00 00 D0 */	neg r0, r0
/* 814BF21C | 54 84 FE 7E */	extrwi r4, r4, 7, 24
/* 814BF220 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 814BF224 | 54 03 06 30 */	rlwinm r3, r0, 0, 24, 24
/* 814BF228 | 7C 05 22 14 */	add r0, r5, r4
/* 814BF22C | 7C 03 02 14 */	add r0, r3, r0
/* 814BF230 | 54 04 06 3E */	clrlwi r4, r0, 24
/* 814BF234 | 42 00 FF D8 */	bdnz .L_814BF20C
/* 814BF238 | 88 1C 02 0C */	lbz r0, 0x20c(r28)
/* 814BF23C | 7C 00 20 40 */	cmplw r0, r4
/* 814BF240 | 40 82 00 20 */	bne .L_814BF260
/* 814BF244 | 7F 83 E3 78 */	mr r3, r28
/* 814BF248 | 7F A4 EB 78 */	mr r4, r29
/* 814BF24C | 38 A0 00 00 */	li r5, 0x0
/* 814BF250 | 38 C0 00 01 */	li r6, 0x1
/* 814BF254 | 48 00 B5 21 */	bl VFiPFPATH_MatchFileNameWithPattern
/* 814BF258 | 7C 60 00 34 */	cntlzw r0, r3
/* 814BF25C | 54 1F D9 7E */	srwi r31, r0, 5
.L_814BF260:
/* 814BF260 | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 814BF264 | 40 82 00 4C */	bne .L_814BF2B0
/* 814BF268 | 3C 60 81 0D */	lis r3, VFipf_vol_set_810CD7F0@ha
/* 814BF26C | 38 63 D7 F0 */	addi r3, r3, VFipf_vol_set_810CD7F0@l
/* 814BF270 | 80 03 00 3C */	lwz r0, 0x3c(r3)
/* 814BF274 | 54 00 07 BC */	rlwinm r0, r0, 0, 30, 30
/* 814BF278 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814BF27C | 40 82 00 14 */	bne .L_814BF290
/* 814BF280 | 57 C0 07 39 */	rlwinm. r0, r30, 0, 28, 28
/* 814BF284 | 40 82 00 0C */	bne .L_814BF290
/* 814BF288 | 38 A0 00 00 */	li r5, 0x0
/* 814BF28C | 48 00 00 08 */	b .L_814BF294
.L_814BF290:
/* 814BF290 | 38 A0 00 01 */	li r5, 0x1
.L_814BF294:
/* 814BF294 | 7F A4 EB 78 */	mr r4, r29
/* 814BF298 | 38 7C 02 0E */	addi r3, r28, 0x20e
/* 814BF29C | 38 C0 00 00 */	li r6, 0x0
/* 814BF2A0 | 48 00 B4 D5 */	bl VFiPFPATH_MatchFileNameWithPattern
/* 814BF2A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BF2A8 | 41 82 00 08 */	beq .L_814BF2B0
/* 814BF2AC | 3B E0 00 00 */	li r31, 0x0
.L_814BF2B0:
/* 814BF2B0 | 7F E3 FB 78 */	mr r3, r31
/* 814BF2B4 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 814BF2B8 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 814BF2BC | 83 A1 00 24 */	lwz r29, 0x24(r1)
/* 814BF2C0 | 83 81 00 20 */	lwz r28, 0x20(r1)
/* 814BF2C4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814BF2C8 | 7C 08 03 A6 */	mtlr r0
/* 814BF2CC | 38 21 00 30 */	addi r1, r1, 0x30
/* 814BF2D0 | 4E 80 00 20 */	blr
.endfn VFiPFENT_compareEntryName

# .text:0xFD8 | 0x814BF2D4 | size: 0x1B8
.fn VFiPFENT_UpdateSFNEntry, global
/* 814BF2D4 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814BF2D8 | 7C 08 02 A6 */	mflr r0
/* 814BF2DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BF2E0 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814BF2E4 | 93 E1 00 3C */	stw r31, 0x3c(r1)
/* 814BF2E8 | 93 C1 00 38 */	stw r30, 0x38(r1)
/* 814BF2EC | 7C 7E 1B 78 */	mr r30, r3
/* 814BF2F0 | 93 A1 00 34 */	stw r29, 0x34(r1)
/* 814BF2F4 | 93 81 00 30 */	stw r28, 0x30(r1)
/* 814BF2F8 | 40 82 00 0C */	bne .L_814BF304
/* 814BF2FC | 38 60 00 0A */	li r3, 0xa
/* 814BF300 | 48 00 01 6C */	b .L_814BF46C
.L_814BF304:
/* 814BF304 | 83 E3 02 2C */	lwz r31, 0x22c(r3)
/* 814BF308 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814BF30C | 40 82 00 0C */	bne .L_814BF318
/* 814BF310 | 38 60 00 0A */	li r3, 0xa
/* 814BF314 | 48 00 01 58 */	b .L_814BF46C
.L_814BF318:
/* 814BF318 | A0 BF 00 24 */	lhz r5, 0x24(r31)
/* 814BF31C | 80 1F 00 30 */	lwz r0, 0x30(r31)
/* 814BF320 | 80 C3 02 38 */	lwz r6, 0x238(r3)
/* 814BF324 | 7C 05 00 50 */	subf r0, r5, r0
/* 814BF328 | 7C 06 00 40 */	cmplw r6, r0
/* 814BF32C | 40 80 00 0C */	bge .L_814BF338
/* 814BF330 | 38 60 00 1C */	li r3, 0x1c
/* 814BF334 | 48 00 01 38 */	b .L_814BF46C
.L_814BF338:
/* 814BF338 | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 814BF33C | 7C 06 00 40 */	cmplw r6, r0
/* 814BF340 | 41 80 00 0C */	blt .L_814BF34C
/* 814BF344 | 38 60 00 10 */	li r3, 0x10
/* 814BF348 | 48 00 01 24 */	b .L_814BF46C
.L_814BF34C:
/* 814BF34C | 80 03 02 34 */	lwz r0, 0x234(r3)
/* 814BF350 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814BF354 | 40 82 00 0C */	bne .L_814BF360
/* 814BF358 | 38 60 00 0E */	li r3, 0xe
/* 814BF35C | 48 00 01 10 */	b .L_814BF46C
.L_814BF360:
/* 814BF360 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814BF364 | 41 82 00 10 */	beq .L_814BF374
/* 814BF368 | 88 03 02 1C */	lbz r0, 0x21c(r3)
/* 814BF36C | 60 00 00 20 */	ori r0, r0, 0x20
/* 814BF370 | 98 03 02 1C */	stb r0, 0x21c(r3)
.L_814BF374:
/* 814BF374 | 88 BE 02 1C */	lbz r5, 0x21c(r30)
/* 814BF378 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814BF37C | 38 9E 02 0E */	addi r4, r30, 0x20e
/* 814BF380 | 48 00 BB C5 */	bl VFiPFPATH_putShortName
/* 814BF384 | 88 01 00 10 */	lbz r0, 0x10(r1)
/* 814BF388 | 28 00 00 E5 */	cmplwi r0, 0xe5
/* 814BF38C | 40 82 00 0C */	bne .L_814BF398
/* 814BF390 | 38 00 00 05 */	li r0, 0x5
/* 814BF394 | 98 01 00 10 */	stb r0, 0x10(r1)
.L_814BF398:
/* 814BF398 | 88 1E 02 1C */	lbz r0, 0x21c(r30)
/* 814BF39C | 7F E3 FB 78 */	mr r3, r31
/* 814BF3A0 | 3B 81 00 1E */	addi r28, r1, 0x1e
/* 814BF3A4 | 3B A1 00 20 */	addi r29, r1, 0x20
/* 814BF3A8 | 98 01 00 1B */	stb r0, 0x1b(r1)
/* 814BF3AC | 39 81 00 22 */	addi r12, r1, 0x22
/* 814BF3B0 | 39 61 00 26 */	addi r11, r1, 0x26
/* 814BF3B4 | 38 C1 00 28 */	addi r6, r1, 0x28
/* 814BF3B8 | 88 FE 02 1B */	lbz r7, 0x21b(r30)
/* 814BF3BC | 38 A1 00 24 */	addi r5, r1, 0x24
/* 814BF3C0 | 38 01 00 2A */	addi r0, r1, 0x2a
/* 814BF3C4 | 38 81 00 10 */	addi r4, r1, 0x10
/* 814BF3C8 | 98 E1 00 1C */	stb r7, 0x1c(r1)
/* 814BF3CC | 39 01 00 08 */	addi r8, r1, 0x8
/* 814BF3D0 | 38 E0 00 20 */	li r7, 0x20
/* 814BF3D4 | 39 20 00 00 */	li r9, 0x0
/* 814BF3D8 | 8B FE 02 1D */	lbz r31, 0x21d(r30)
/* 814BF3DC | 39 40 00 00 */	li r10, 0x0
/* 814BF3E0 | 9B E1 00 1D */	stb r31, 0x1d(r1)
/* 814BF3E4 | A3 FE 02 1E */	lhz r31, 0x21e(r30)
/* 814BF3E8 | 7F E0 E7 2C */	sthbrx r31, r0, r28
/* 814BF3EC | A3 9E 02 20 */	lhz r28, 0x220(r30)
/* 814BF3F0 | 7F 80 EF 2C */	sthbrx r28, r0, r29
/* 814BF3F4 | A3 9E 02 22 */	lhz r28, 0x222(r30)
/* 814BF3F8 | 7F 80 67 2C */	sthbrx r28, r0, r12
/* 814BF3FC | A1 9E 02 24 */	lhz r12, 0x224(r30)
/* 814BF400 | 7D 80 5F 2C */	sthbrx r12, r0, r11
/* 814BF404 | A1 7E 02 26 */	lhz r11, 0x226(r30)
/* 814BF408 | 7D 60 37 2C */	sthbrx r11, r0, r6
/* 814BF40C | 80 DE 02 34 */	lwz r6, 0x234(r30)
/* 814BF410 | 54 C6 84 3E */	srwi r6, r6, 16
/* 814BF414 | 7C C0 2F 2C */	sthbrx r6, r0, r5
/* 814BF418 | 80 BE 02 34 */	lwz r5, 0x234(r30)
/* 814BF41C | 7C A0 07 2C */	sthbrx r5, r0, r0
/* 814BF420 | 80 DE 02 28 */	lwz r6, 0x228(r30)
/* 814BF424 | 54 C5 42 1E */	rlwinm r5, r6, 8, 8, 15
/* 814BF428 | 54 C0 C4 2E */	rlwinm r0, r6, 24, 16, 23
/* 814BF42C | 50 C5 C0 0E */	rlwimi r5, r6, 24, 0, 7
/* 814BF430 | 50 C0 46 3E */	rlwimi r0, r6, 8, 24, 31
/* 814BF434 | 7C A0 03 78 */	or r0, r5, r0
/* 814BF438 | 90 01 00 2C */	stw r0, 0x2c(r1)
/* 814BF43C | 80 BE 02 38 */	lwz r5, 0x238(r30)
/* 814BF440 | A0 DE 02 3C */	lhz r6, 0x23c(r30)
/* 814BF444 | 48 00 D8 91 */	bl VFiPFSEC_WriteData
/* 814BF448 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BF44C | 41 82 00 08 */	beq .L_814BF454
/* 814BF450 | 48 00 00 1C */	b .L_814BF46C
.L_814BF454:
/* 814BF454 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814BF458 | 38 64 FF E0 */	subi r3, r4, 0x20
/* 814BF45C | 20 04 00 20 */	subfic r0, r4, 0x20
/* 814BF460 | 7C 60 03 78 */	or r0, r3, r0
/* 814BF464 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814BF468 | 70 03 00 11 */	andi. r3, r0, 0x11
.L_814BF46C:
/* 814BF46C | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814BF470 | 83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 814BF474 | 83 C1 00 38 */	lwz r30, 0x38(r1)
/* 814BF478 | 83 A1 00 34 */	lwz r29, 0x34(r1)
/* 814BF47C | 83 81 00 30 */	lwz r28, 0x30(r1)
/* 814BF480 | 7C 08 03 A6 */	mtlr r0
/* 814BF484 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814BF488 | 4E 80 00 20 */	blr
.endfn VFiPFENT_UpdateSFNEntry

# .text:0x1190 | 0x814BF48C | size: 0x250
.fn VFiPFENT_UpdateEntry, global
/* 814BF48C | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 814BF490 | 7C 08 02 A6 */	mflr r0
/* 814BF494 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 814BF498 | 39 61 00 50 */	addi r11, r1, 0x50
/* 814BF49C | 48 13 A0 19 */	bl _savegpr_24
/* 814BF4A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BF4A4 | 7C 7B 1B 78 */	mr r27, r3
/* 814BF4A8 | 7C 9C 23 78 */	mr r28, r4
/* 814BF4AC | 40 82 00 0C */	bne .L_814BF4B8
/* 814BF4B0 | 38 60 00 0A */	li r3, 0xa
/* 814BF4B4 | 48 00 02 10 */	b .L_814BF6C4
.L_814BF4B8:
/* 814BF4B8 | 83 C3 02 2C */	lwz r30, 0x22c(r3)
/* 814BF4BC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814BF4C0 | 40 82 00 0C */	bne .L_814BF4CC
/* 814BF4C4 | 38 60 00 0A */	li r3, 0xa
/* 814BF4C8 | 48 00 01 FC */	b .L_814BF6C4
.L_814BF4CC:
/* 814BF4CC | 7C A4 2B 78 */	mr r4, r5
/* 814BF4D0 | 4B FF FE 05 */	bl VFiPFENT_UpdateSFNEntry
/* 814BF4D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BF4D8 | 7C 7F 1B 78 */	mr r31, r3
/* 814BF4DC | 40 82 01 E4 */	bne .L_814BF6C0
/* 814BF4E0 | A0 1B 00 00 */	lhz r0, 0x0(r27)
/* 814BF4E4 | 3B A0 00 01 */	li r29, 0x1
/* 814BF4E8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BF4EC | 41 82 01 04 */	beq .L_814BF5F0
/* 814BF4F0 | 88 1B 02 0A */	lbz r0, 0x20a(r27)
/* 814BF4F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BF4F8 | 41 82 00 F8 */	beq .L_814BF5F0
/* 814BF4FC | 88 1B 02 1B */	lbz r0, 0x21b(r27)
/* 814BF500 | 54 00 06 F9 */	rlwinm. r0, r0, 0, 27, 28
/* 814BF504 | 40 82 00 EC */	bne .L_814BF5F0
/* 814BF508 | 80 1B 02 38 */	lwz r0, 0x238(r27)
/* 814BF50C | 7F 9A E3 78 */	mr r26, r28
/* 814BF510 | 3B 00 00 01 */	li r24, 0x1
/* 814BF514 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814BF518 | A3 3B 02 3C */	lhz r25, 0x23c(r27)
/* 814BF51C | 48 00 00 C8 */	b .L_814BF5E4
.L_814BF520:
/* 814BF520 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 814BF524 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 814BF528 | 40 82 00 40 */	bne .L_814BF568
/* 814BF52C | A0 7E 00 00 */	lhz r3, 0x0(r30)
/* 814BF530 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814BF534 | 38 03 FF E0 */	subi r0, r3, 0x20
/* 814BF538 | 54 19 04 3E */	clrlwi r25, r0, 16
/* 814BF53C | 40 82 00 1C */	bne .L_814BF558
/* 814BF540 | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 814BF544 | 7F C4 F3 78 */	mr r4, r30
/* 814BF548 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814BF54C | 48 00 51 45 */	bl VFiPFFAT_GetBeforeSector
/* 814BF550 | 7C 7F 1B 78 */	mr r31, r3
/* 814BF554 | 48 00 00 1C */	b .L_814BF570
.L_814BF558:
/* 814BF558 | 80 1A 00 00 */	lwz r0, 0x0(r26)
/* 814BF55C | 3B 5A 00 04 */	addi r26, r26, 0x4
/* 814BF560 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814BF564 | 48 00 00 0C */	b .L_814BF570
.L_814BF568:
/* 814BF568 | 38 19 FF E0 */	subi r0, r25, 0x20
/* 814BF56C | 54 19 04 3E */	clrlwi r25, r0, 16
.L_814BF570:
/* 814BF570 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814BF574 | 40 82 00 50 */	bne .L_814BF5C4
/* 814BF578 | 88 1B 02 0A */	lbz r0, 0x20a(r27)
/* 814BF57C | 7F 64 DB 78 */	mr r4, r27
/* 814BF580 | 88 DB 02 0C */	lbz r6, 0x20c(r27)
/* 814BF584 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814BF588 | 7C 18 00 50 */	subf r0, r24, r0
/* 814BF58C | 57 05 06 3E */	clrlwi r5, r24, 24
/* 814BF590 | 7C 00 00 34 */	cntlzw r0, r0
/* 814BF594 | 54 07 D9 7E */	srwi r7, r0, 5
/* 814BF598 | 4B FF F5 69 */	bl VFiPFENT_storeLFNEntryFieldsToBuf
/* 814BF59C | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 814BF5A0 | 7F C3 F3 78 */	mr r3, r30
/* 814BF5A4 | 7F 26 CB 78 */	mr r6, r25
/* 814BF5A8 | 38 81 00 10 */	addi r4, r1, 0x10
/* 814BF5AC | 39 01 00 08 */	addi r8, r1, 0x8
/* 814BF5B0 | 38 E0 00 20 */	li r7, 0x20
/* 814BF5B4 | 39 20 00 00 */	li r9, 0x0
/* 814BF5B8 | 39 40 00 00 */	li r10, 0x0
/* 814BF5BC | 48 00 D7 19 */	bl VFiPFSEC_WriteData
/* 814BF5C0 | 7C 7F 1B 78 */	mr r31, r3
.L_814BF5C4:
/* 814BF5C4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814BF5C8 | 40 82 00 10 */	bne .L_814BF5D8
/* 814BF5CC | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814BF5D0 | 28 00 00 20 */	cmplwi r0, 0x20
/* 814BF5D4 | 41 82 00 0C */	beq .L_814BF5E0
.L_814BF5D8:
/* 814BF5D8 | 3B E0 00 11 */	li r31, 0x11
/* 814BF5DC | 8B 1B 02 0A */	lbz r24, 0x20a(r27)
.L_814BF5E0:
/* 814BF5E0 | 3B 18 00 01 */	addi r24, r24, 0x1
.L_814BF5E4:
/* 814BF5E4 | 88 1B 02 0A */	lbz r0, 0x20a(r27)
/* 814BF5E8 | 7C 18 00 00 */	cmpw r24, r0
/* 814BF5EC | 40 81 FF 34 */	ble .L_814BF520
.L_814BF5F0:
/* 814BF5F0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814BF5F4 | 41 82 00 CC */	beq .L_814BF6C0
/* 814BF5F8 | 80 7B 02 38 */	lwz r3, 0x238(r27)
/* 814BF5FC | 38 00 00 E5 */	li r0, 0xe5
/* 814BF600 | 7F 9A E3 78 */	mr r26, r28
/* 814BF604 | 3B 20 00 00 */	li r25, 0x0
/* 814BF608 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 814BF60C | A3 1B 02 3C */	lhz r24, 0x23c(r27)
/* 814BF610 | 98 01 00 10 */	stb r0, 0x10(r1)
/* 814BF614 | 48 00 00 A4 */	b .L_814BF6B8
.L_814BF618:
/* 814BF618 | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 814BF61C | 7F C3 F3 78 */	mr r3, r30
/* 814BF620 | 7F 06 C3 78 */	mr r6, r24
/* 814BF624 | 38 81 00 10 */	addi r4, r1, 0x10
/* 814BF628 | 39 01 00 08 */	addi r8, r1, 0x8
/* 814BF62C | 38 E0 00 01 */	li r7, 0x1
/* 814BF630 | 39 20 00 00 */	li r9, 0x0
/* 814BF634 | 39 40 00 00 */	li r10, 0x0
/* 814BF638 | 48 00 D6 9D */	bl VFiPFSEC_WriteData
/* 814BF63C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BF640 | 40 82 00 10 */	bne .L_814BF650
/* 814BF644 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814BF648 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814BF64C | 41 82 00 08 */	beq .L_814BF654
.L_814BF650:
/* 814BF650 | 38 60 00 11 */	li r3, 0x11
.L_814BF654:
/* 814BF654 | 88 1B 02 0A */	lbz r0, 0x20a(r27)
/* 814BF658 | 7C 19 00 00 */	cmpw r25, r0
/* 814BF65C | 40 80 00 4C */	bge .L_814BF6A8
/* 814BF660 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 814BF664 | 40 82 00 3C */	bne .L_814BF6A0
/* 814BF668 | A0 9E 00 00 */	lhz r4, 0x0(r30)
/* 814BF66C | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814BF670 | 38 04 FF E0 */	subi r0, r4, 0x20
/* 814BF674 | 54 18 04 3E */	clrlwi r24, r0, 16
/* 814BF678 | 40 82 00 18 */	bne .L_814BF690
/* 814BF67C | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 814BF680 | 7F C4 F3 78 */	mr r4, r30
/* 814BF684 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814BF688 | 48 00 50 09 */	bl VFiPFFAT_GetBeforeSector
/* 814BF68C | 48 00 00 1C */	b .L_814BF6A8
.L_814BF690:
/* 814BF690 | 80 1A 00 00 */	lwz r0, 0x0(r26)
/* 814BF694 | 3B 5A 00 04 */	addi r26, r26, 0x4
/* 814BF698 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814BF69C | 48 00 00 0C */	b .L_814BF6A8
.L_814BF6A0:
/* 814BF6A0 | 38 18 FF E0 */	subi r0, r24, 0x20
/* 814BF6A4 | 54 18 04 3E */	clrlwi r24, r0, 16
.L_814BF6A8:
/* 814BF6A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BF6AC | 41 82 00 08 */	beq .L_814BF6B4
/* 814BF6B0 | 7F B9 EB 78 */	mr r25, r29
.L_814BF6B4:
/* 814BF6B4 | 3B 39 00 01 */	addi r25, r25, 0x1
.L_814BF6B8:
/* 814BF6B8 | 7C 19 E8 00 */	cmpw r25, r29
/* 814BF6BC | 41 80 FF 5C */	blt .L_814BF618
.L_814BF6C0:
/* 814BF6C0 | 7F E3 FB 78 */	mr r3, r31
.L_814BF6C4:
/* 814BF6C4 | 39 61 00 50 */	addi r11, r1, 0x50
/* 814BF6C8 | 48 13 9E 39 */	bl _restgpr_24
/* 814BF6CC | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 814BF6D0 | 7C 08 03 A6 */	mtlr r0
/* 814BF6D4 | 38 21 00 50 */	addi r1, r1, 0x50
/* 814BF6D8 | 4E 80 00 20 */	blr
.endfn VFiPFENT_UpdateEntry

# .text:0x13E0 | 0x814BF6DC | size: 0xDC
.fn VFiPFENT_AdjustSFN, global
/* 814BF6DC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814BF6E0 | 7C 08 02 A6 */	mflr r0
/* 814BF6E4 | 38 A4 00 01 */	addi r5, r4, 0x1
/* 814BF6E8 | 38 E0 00 01 */	li r7, 0x1
/* 814BF6EC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814BF6F0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814BF6F4 | 7C 9F 23 78 */	mr r31, r4
/* 814BF6F8 | 48 00 00 0C */	b .L_814BF704
.L_814BF6FC:
/* 814BF6FC | 38 E7 00 01 */	addi r7, r7, 0x1
/* 814BF700 | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814BF704:
/* 814BF704 | 88 C5 00 00 */	lbz r6, 0x0(r5)
/* 814BF708 | 7C C0 07 74 */	extsb r0, r6
/* 814BF70C | 2C 00 00 7E */	cmpwi r0, 0x7e
/* 814BF710 | 41 82 00 14 */	beq .L_814BF724
/* 814BF714 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BF718 | 41 82 00 0C */	beq .L_814BF724
/* 814BF71C | 28 07 00 07 */	cmplwi r7, 0x7
/* 814BF720 | 41 80 FF DC */	blt .L_814BF6FC
.L_814BF724:
/* 814BF724 | 28 07 00 07 */	cmplwi r7, 0x7
/* 814BF728 | 40 80 00 78 */	bge .L_814BF7A0
/* 814BF72C | 7C C0 07 74 */	extsb r0, r6
/* 814BF730 | 2C 00 00 7E */	cmpwi r0, 0x7e
/* 814BF734 | 40 82 00 6C */	bne .L_814BF7A0
/* 814BF738 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 814BF73C | 7C 84 3A 14 */	add r4, r4, r7
/* 814BF740 | 48 00 00 08 */	b .L_814BF748
.L_814BF744:
/* 814BF744 | 38 84 00 01 */	addi r4, r4, 0x1
.L_814BF748:
/* 814BF748 | 88 A4 00 00 */	lbz r5, 0x0(r4)
/* 814BF74C | 7C A0 07 74 */	extsb r0, r5
/* 814BF750 | 2C 00 00 30 */	cmpwi r0, 0x30
/* 814BF754 | 41 80 00 0C */	blt .L_814BF760
/* 814BF758 | 2C 00 00 39 */	cmpwi r0, 0x39
/* 814BF75C | 40 81 FF E8 */	ble .L_814BF744
.L_814BF760:
/* 814BF760 | 7C A0 07 74 */	extsb r0, r5
/* 814BF764 | 2C 00 00 2E */	cmpwi r0, 0x2e
/* 814BF768 | 41 82 00 0C */	beq .L_814BF774
/* 814BF76C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BF770 | 40 82 00 30 */	bne .L_814BF7A0
.L_814BF774:
/* 814BF774 | 7F E4 FB 78 */	mr r4, r31
/* 814BF778 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814BF77C | 4B FF EE E9 */	bl VFiPFENT_findEmptyTailSFN
/* 814BF780 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BF784 | 41 82 00 08 */	beq .L_814BF78C
/* 814BF788 | 48 00 00 1C */	b .L_814BF7A4
.L_814BF78C:
/* 814BF78C | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814BF790 | 28 04 00 01 */	cmplwi r4, 0x1
/* 814BF794 | 41 82 00 0C */	beq .L_814BF7A0
/* 814BF798 | 7F E3 FB 78 */	mr r3, r31
/* 814BF79C | 48 00 C7 7D */	bl VFiPFPATH_parseShortNameNumeric
.L_814BF7A0:
/* 814BF7A0 | 38 60 00 00 */	li r3, 0x0
.L_814BF7A4:
/* 814BF7A4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814BF7A8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814BF7AC | 7C 08 03 A6 */	mtlr r0
/* 814BF7B0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814BF7B4 | 4E 80 00 20 */	blr
.endfn VFiPFENT_AdjustSFN

# .text:0x14BC | 0x814BF7B8 | size: 0x178
.fn VFiPFENT_RemoveEntry, global
/* 814BF7B8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814BF7BC | 7C 08 02 A6 */	mflr r0
/* 814BF7C0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814BF7C4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814BF7C8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814BF7CC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814BF7D0 | 7C 9D 23 78 */	mr r29, r4
/* 814BF7D4 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814BF7D8 | 7C 7C 1B 78 */	mr r28, r3
/* 814BF7DC | 88 02 8C 48 */	lbz r0, lbl_81695048@sda21(r0)
/* 814BF7E0 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 814BF7E4 | 83 C3 02 2C */	lwz r30, 0x22c(r3)
/* 814BF7E8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814BF7EC | 40 82 00 0C */	bne .L_814BF7F8
/* 814BF7F0 | 38 60 00 0A */	li r3, 0xa
/* 814BF7F4 | 48 00 01 1C */	b .L_814BF910
.L_814BF7F8:
/* 814BF7F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BF7FC | 40 82 00 0C */	bne .L_814BF808
/* 814BF800 | 38 60 00 0A */	li r3, 0xa
/* 814BF804 | 48 00 01 0C */	b .L_814BF910
.L_814BF808:
/* 814BF808 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814BF80C | 40 82 00 0C */	bne .L_814BF818
/* 814BF810 | 38 60 00 0A */	li r3, 0xa
/* 814BF814 | 48 00 00 FC */	b .L_814BF910
.L_814BF818:
/* 814BF818 | 88 03 02 0A */	lbz r0, 0x20a(r3)
/* 814BF81C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814BF820 | 41 82 00 84 */	beq .L_814BF8A4
/* 814BF824 | 88 03 02 1B */	lbz r0, 0x21b(r3)
/* 814BF828 | 54 00 06 F9 */	rlwinm. r0, r0, 0, 27, 28
/* 814BF82C | 40 82 00 78 */	bne .L_814BF8A4
/* 814BF830 | 3B E0 00 01 */	li r31, 0x1
/* 814BF834 | 48 00 00 64 */	b .L_814BF898
.L_814BF838:
/* 814BF838 | 7F A3 EB 78 */	mr r3, r29
/* 814BF83C | 38 80 00 00 */	li r4, 0x0
/* 814BF840 | 48 00 1E 79 */	bl VFiPFENT_ITER_Retreat
/* 814BF844 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BF848 | 41 82 00 08 */	beq .L_814BF850
/* 814BF84C | 48 00 00 C4 */	b .L_814BF910
.L_814BF850:
/* 814BF850 | 80 BD 00 40 */	lwz r5, 0x40(r29)
/* 814BF854 | 7F C3 F3 78 */	mr r3, r30
/* 814BF858 | A0 DD 00 44 */	lhz r6, 0x44(r29)
/* 814BF85C | 38 81 00 08 */	addi r4, r1, 0x8
/* 814BF860 | 39 01 00 0C */	addi r8, r1, 0xc
/* 814BF864 | 38 E0 00 01 */	li r7, 0x1
/* 814BF868 | 39 20 00 00 */	li r9, 0x0
/* 814BF86C | 39 40 00 00 */	li r10, 0x0
/* 814BF870 | 48 00 D4 65 */	bl VFiPFSEC_WriteData
/* 814BF874 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BF878 | 41 82 00 08 */	beq .L_814BF880
/* 814BF87C | 48 00 00 94 */	b .L_814BF910
.L_814BF880:
/* 814BF880 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814BF884 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814BF888 | 41 82 00 0C */	beq .L_814BF894
/* 814BF88C | 38 60 00 11 */	li r3, 0x11
/* 814BF890 | 48 00 00 80 */	b .L_814BF910
.L_814BF894:
/* 814BF894 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_814BF898:
/* 814BF898 | 88 1C 02 0A */	lbz r0, 0x20a(r28)
/* 814BF89C | 7C 1F 00 40 */	cmplw r31, r0
/* 814BF8A0 | 40 81 FF 98 */	ble .L_814BF838
.L_814BF8A4:
/* 814BF8A4 | 80 BC 02 38 */	lwz r5, 0x238(r28)
/* 814BF8A8 | 7F C3 F3 78 */	mr r3, r30
/* 814BF8AC | A0 DC 02 3C */	lhz r6, 0x23c(r28)
/* 814BF8B0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814BF8B4 | 39 01 00 0C */	addi r8, r1, 0xc
/* 814BF8B8 | 38 E0 00 01 */	li r7, 0x1
/* 814BF8BC | 39 20 00 00 */	li r9, 0x0
/* 814BF8C0 | 39 40 00 00 */	li r10, 0x0
/* 814BF8C4 | 48 00 D4 11 */	bl VFiPFSEC_WriteData
/* 814BF8C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BF8CC | 41 82 00 08 */	beq .L_814BF8D4
/* 814BF8D0 | 48 00 00 40 */	b .L_814BF910
.L_814BF8D4:
/* 814BF8D4 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814BF8D8 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814BF8DC | 41 82 00 0C */	beq .L_814BF8E8
/* 814BF8E0 | 38 60 00 11 */	li r3, 0x11
/* 814BF8E4 | 48 00 00 2C */	b .L_814BF910
.L_814BF8E8:
/* 814BF8E8 | 80 1E 15 D0 */	lwz r0, 0x15d0(r30)
/* 814BF8EC | 54 00 07 7B */	rlwinm. r0, r0, 0, 29, 29
/* 814BF8F0 | 41 82 00 1C */	beq .L_814BF90C
/* 814BF8F4 | 7F C3 F3 78 */	mr r3, r30
/* 814BF8F8 | 38 80 00 00 */	li r4, 0x0
/* 814BF8FC | 4B FF CB 69 */	bl VFiPFCACHE_FlushDataCacheSpecific
/* 814BF900 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BF904 | 41 82 00 08 */	beq .L_814BF90C
/* 814BF908 | 48 00 00 08 */	b .L_814BF910
.L_814BF90C:
/* 814BF90C | 38 60 00 00 */	li r3, 0x0
.L_814BF910:
/* 814BF910 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814BF914 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814BF918 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814BF91C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814BF920 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814BF924 | 7C 08 03 A6 */	mtlr r0
/* 814BF928 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814BF92C | 4E 80 00 20 */	blr
.endfn VFiPFENT_RemoveEntry

# .text:0x1634 | 0x814BF930 | size: 0x84
.fn VFiPFENT_getcurrentDateTimeForEnt, global
/* 814BF930 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814BF934 | 7C 08 02 A6 */	mflr r0
/* 814BF938 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814BF93C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814BF940 | 7C 9F 23 78 */	mr r31, r4
/* 814BF944 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814BF948 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814BF94C | 7C 7E 1B 78 */	mr r30, r3
/* 814BF950 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814BF954 | 48 01 03 81 */	bl VFiPFSYS_TimeStamp
/* 814BF958 | A0 61 00 10 */	lhz r3, 0x10(r1)
/* 814BF95C | A0 81 00 14 */	lhz r4, 0x14(r1)
/* 814BF960 | 38 03 F8 44 */	subi r0, r3, 0x7bc
/* 814BF964 | A0 61 00 12 */	lhz r3, 0x12(r1)
/* 814BF968 | 54 00 4C 2C */	clrlslwi r0, r0, 25, 9
/* 814BF96C | 50 60 2D F4 */	rlwimi r0, r3, 5, 23, 26
/* 814BF970 | 50 80 06 FE */	rlwimi r0, r4, 0, 27, 31
/* 814BF974 | B0 1E 00 00 */	sth r0, 0x0(r30)
/* 814BF978 | A0 01 00 08 */	lhz r0, 0x8(r1)
/* 814BF97C | A0 81 00 0C */	lhz r4, 0xc(r1)
/* 814BF980 | A0 61 00 0A */	lhz r3, 0xa(r1)
/* 814BF984 | 54 00 5C 28 */	clrlslwi r0, r0, 27, 11
/* 814BF988 | 50 60 2D 74 */	rlwimi r0, r3, 5, 21, 26
/* 814BF98C | 50 80 FE FE */	rlwimi r0, r4, 31, 27, 31
/* 814BF990 | B0 1F 00 00 */	sth r0, 0x0(r31)
/* 814BF994 | A0 01 00 0E */	lhz r0, 0xe(r1)
/* 814BF998 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814BF99C | 54 03 06 3E */	clrlwi r3, r0, 24
/* 814BF9A0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814BF9A4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814BF9A8 | 7C 08 03 A6 */	mtlr r0
/* 814BF9AC | 38 21 00 20 */	addi r1, r1, 0x20
/* 814BF9B0 | 4E 80 00 20 */	blr
.endfn VFiPFENT_getcurrentDateTimeForEnt

# .text:0x16B8 | 0x814BF9B4 | size: 0x238
.fn VFiPFENT_InitENT, global
/* 814BF9B4 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 814BF9B8 | 7C 08 02 A6 */	mflr r0
/* 814BF9BC | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814BF9C0 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 814BF9C4 | 93 E1 00 4C */	stw r31, 0x4c(r1)
/* 814BF9C8 | 3B E0 00 00 */	li r31, 0x0
/* 814BF9CC | 93 C1 00 48 */	stw r30, 0x48(r1)
/* 814BF9D0 | 7C FE 3B 78 */	mr r30, r7
/* 814BF9D4 | 93 A1 00 44 */	stw r29, 0x44(r1)
/* 814BF9D8 | 7C 9D 23 78 */	mr r29, r4
/* 814BF9DC | 93 81 00 40 */	stw r28, 0x40(r1)
/* 814BF9E0 | 7C 7C 1B 78 */	mr r28, r3
/* 814BF9E4 | 93 E3 02 28 */	stw r31, 0x228(r3)
/* 814BF9E8 | 98 A3 02 1C */	stb r5, 0x21c(r3)
/* 814BF9EC | 91 03 02 2C */	stw r8, 0x22c(r3)
/* 814BF9F0 | 41 82 00 64 */	beq .L_814BFA54
/* 814BF9F4 | 38 61 00 18 */	addi r3, r1, 0x18
/* 814BF9F8 | 38 81 00 20 */	addi r4, r1, 0x20
/* 814BF9FC | 48 01 02 D9 */	bl VFiPFSYS_TimeStamp
/* 814BFA00 | A0 61 00 18 */	lhz r3, 0x18(r1)
/* 814BFA04 | A0 81 00 1C */	lhz r4, 0x1c(r1)
/* 814BFA08 | 38 63 F8 44 */	subi r3, r3, 0x7bc
/* 814BFA0C | A0 01 00 1A */	lhz r0, 0x1a(r1)
/* 814BFA10 | 54 65 4C 2C */	clrlslwi r5, r3, 25, 9
/* 814BFA14 | 50 05 2D F4 */	rlwimi r5, r0, 5, 23, 26
/* 814BFA18 | 50 85 06 FE */	rlwimi r5, r4, 0, 27, 31
/* 814BFA1C | B0 BC 02 20 */	sth r5, 0x220(r28)
/* 814BFA20 | A0 61 00 20 */	lhz r3, 0x20(r1)
/* 814BFA24 | A0 81 00 24 */	lhz r4, 0x24(r1)
/* 814BFA28 | A0 01 00 22 */	lhz r0, 0x22(r1)
/* 814BFA2C | 54 63 5C 28 */	clrlslwi r3, r3, 27, 11
/* 814BFA30 | 50 03 2D 74 */	rlwimi r3, r0, 5, 21, 26
/* 814BFA34 | 50 83 FE FE */	rlwimi r3, r4, 31, 27, 31
/* 814BFA38 | B0 7C 02 1E */	sth r3, 0x21e(r28)
/* 814BFA3C | A0 01 00 26 */	lhz r0, 0x26(r1)
/* 814BFA40 | 98 1C 02 1D */	stb r0, 0x21d(r28)
/* 814BFA44 | B0 BC 02 22 */	sth r5, 0x222(r28)
/* 814BFA48 | B0 7C 02 24 */	sth r3, 0x224(r28)
/* 814BFA4C | B0 BC 02 26 */	sth r5, 0x226(r28)
/* 814BFA50 | 48 00 00 30 */	b .L_814BFA80
.L_814BFA54:
/* 814BFA54 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814BFA58 | 38 81 00 10 */	addi r4, r1, 0x10
/* 814BFA5C | 48 01 02 79 */	bl VFiPFSYS_TimeStamp
/* 814BFA60 | A0 61 00 08 */	lhz r3, 0x8(r1)
/* 814BFA64 | A0 81 00 0C */	lhz r4, 0xc(r1)
/* 814BFA68 | 38 03 F8 44 */	subi r0, r3, 0x7bc
/* 814BFA6C | A0 61 00 0A */	lhz r3, 0xa(r1)
/* 814BFA70 | 54 00 4C 2C */	clrlslwi r0, r0, 25, 9
/* 814BFA74 | 50 60 2D F4 */	rlwimi r0, r3, 5, 23, 26
/* 814BFA78 | 50 80 06 FE */	rlwimi r0, r4, 0, 27, 31
/* 814BFA7C | B0 1C 02 22 */	sth r0, 0x222(r28)
.L_814BFA80:
/* 814BFA80 | 38 00 00 00 */	li r0, 0x0
/* 814BFA84 | 7F A4 EB 78 */	mr r4, r29
/* 814BFA88 | 98 1C 02 1B */	stb r0, 0x21b(r28)
/* 814BFA8C | 38 7C 02 0E */	addi r3, r28, 0x20e
/* 814BFA90 | 48 00 BD 11 */	bl VFiPFPATH_parseShortName
/* 814BFA94 | 88 1C 02 0E */	lbz r0, 0x20e(r28)
/* 814BFA98 | 7C 00 07 75 */	extsb. r0, r0
/* 814BFA9C | 41 82 01 28 */	beq .L_814BFBC4
/* 814BFAA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BFAA4 | 41 82 01 08 */	beq .L_814BFBAC
/* 814BFAA8 | 88 1C 02 1B */	lbz r0, 0x21b(r28)
/* 814BFAAC | 54 00 06 F9 */	rlwinm. r0, r0, 0, 27, 28
/* 814BFAB0 | 40 82 00 FC */	bne .L_814BFBAC
/* 814BFAB4 | 7F C3 F3 78 */	mr r3, r30
/* 814BFAB8 | 38 9C 02 0E */	addi r4, r28, 0x20e
/* 814BFABC | 4B FF FC 21 */	bl VFiPFENT_AdjustSFN
/* 814BFAC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BFAC4 | 7C 7F 1B 78 */	mr r31, r3
/* 814BFAC8 | 40 82 01 00 */	bne .L_814BFBC8
/* 814BFACC | 38 61 00 28 */	addi r3, r1, 0x28
/* 814BFAD0 | 38 9C 02 0E */	addi r4, r28, 0x20e
/* 814BFAD4 | 38 A0 00 00 */	li r5, 0x0
/* 814BFAD8 | 48 00 B4 6D */	bl VFiPFPATH_putShortName
/* 814BFADC | 38 00 00 0B */	li r0, 0xb
/* 814BFAE0 | 38 C1 00 28 */	addi r6, r1, 0x28
/* 814BFAE4 | 38 80 00 00 */	li r4, 0x0
/* 814BFAE8 | 38 E0 00 00 */	li r7, 0x0
/* 814BFAEC | 7C 09 03 A6 */	mtctr r0
.L_814BFAF0:
/* 814BFAF0 | 54 E3 04 3E */	clrlwi r3, r7, 16
/* 814BFAF4 | 54 80 07 FE */	clrlwi r0, r4, 31
/* 814BFAF8 | 7C A6 18 AE */	lbzx r5, r6, r3
/* 814BFAFC | 7C 00 00 D0 */	neg r0, r0
/* 814BFB00 | 54 84 FE 7E */	extrwi r4, r4, 7, 24
/* 814BFB04 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 814BFB08 | 54 03 06 30 */	rlwinm r3, r0, 0, 24, 24
/* 814BFB0C | 7C 05 22 14 */	add r0, r5, r4
/* 814BFB10 | 7C 03 02 14 */	add r0, r3, r0
/* 814BFB14 | 54 04 06 3E */	clrlwi r4, r0, 24
/* 814BFB18 | 42 00 FF D8 */	bdnz .L_814BFAF0
/* 814BFB1C | 98 9C 02 0C */	stb r4, 0x20c(r28)
/* 814BFB20 | 7F A3 EB 78 */	mr r3, r29
/* 814BFB24 | 4B FF 60 E1 */	bl VFiPFSTR_GetCodeMode
/* 814BFB28 | 28 03 00 01 */	cmplwi r3, 0x1
/* 814BFB2C | 40 82 00 20 */	bne .L_814BFB4C
/* 814BFB30 | 7F A3 EB 78 */	mr r3, r29
/* 814BFB34 | 38 80 00 01 */	li r4, 0x1
/* 814BFB38 | 4B FF 60 D5 */	bl VFiPFSTR_GetStrPos
/* 814BFB3C | 7C 64 1B 78 */	mr r4, r3
/* 814BFB40 | 7F 83 E3 78 */	mr r3, r28
/* 814BFB44 | 48 00 BB C5 */	bl VFiPFPATH_transformInUnicode
/* 814BFB48 | 48 00 00 1C */	b .L_814BFB64
.L_814BFB4C:
/* 814BFB4C | 7F A3 EB 78 */	mr r3, r29
/* 814BFB50 | 38 80 00 01 */	li r4, 0x1
/* 814BFB54 | 4B FF 60 B9 */	bl VFiPFSTR_GetStrPos
/* 814BFB58 | 7C 64 1B 78 */	mr r4, r3
/* 814BFB5C | 7F 83 E3 78 */	mr r3, r28
/* 814BFB60 | 4B FF 65 F5 */	bl VFipf_w_strcpy
.L_814BFB64:
/* 814BFB64 | 7F A3 EB 78 */	mr r3, r29
/* 814BFB68 | 38 80 00 01 */	li r4, 0x1
/* 814BFB6C | 4B FF 62 59 */	bl VFiPFSTR_StrNumChar
/* 814BFB70 | 38 00 00 01 */	li r0, 0x1
/* 814BFB74 | 3C 80 4E C5 */	lis r4, 0x4ec5
/* 814BFB78 | 98 1C 02 0B */	stb r0, 0x20b(r28)
/* 814BFB7C | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814BFB80 | 38 04 EC 4F */	subi r0, r4, 0x13b1
/* 814BFB84 | 7C 00 18 16 */	mulhwu r0, r0, r3
/* 814BFB88 | 54 04 F0 BE */	srwi r4, r0, 2
/* 814BFB8C | 1C 04 00 0D */	mulli r0, r4, 0xd
/* 814BFB90 | 7C 60 18 50 */	subf r3, r0, r3
/* 814BFB94 | 7C 03 00 D0 */	neg r0, r3
/* 814BFB98 | 7C 00 1B 78 */	or r0, r0, r3
/* 814BFB9C | 54 00 0F FE */	srwi r0, r0, 31
/* 814BFBA0 | 7C 04 02 14 */	add r0, r4, r0
/* 814BFBA4 | 98 1C 02 0A */	stb r0, 0x20a(r28)
/* 814BFBA8 | 48 00 00 20 */	b .L_814BFBC8
.L_814BFBAC:
/* 814BFBAC | 38 00 00 00 */	li r0, 0x0
/* 814BFBB0 | 98 1C 02 0A */	stb r0, 0x20a(r28)
/* 814BFBB4 | B0 1C 00 00 */	sth r0, 0x0(r28)
/* 814BFBB8 | 98 1C 02 0C */	stb r0, 0x20c(r28)
/* 814BFBBC | 98 1C 02 0B */	stb r0, 0x20b(r28)
/* 814BFBC0 | 48 00 00 08 */	b .L_814BFBC8
.L_814BFBC4:
/* 814BFBC4 | 3B E0 00 01 */	li r31, 0x1
.L_814BFBC8:
/* 814BFBC8 | 7F E3 FB 78 */	mr r3, r31
/* 814BFBCC | 83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 814BFBD0 | 83 C1 00 48 */	lwz r30, 0x48(r1)
/* 814BFBD4 | 83 A1 00 44 */	lwz r29, 0x44(r1)
/* 814BFBD8 | 83 81 00 40 */	lwz r28, 0x40(r1)
/* 814BFBDC | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 814BFBE0 | 7C 08 03 A6 */	mtlr r0
/* 814BFBE4 | 38 21 00 50 */	addi r1, r1, 0x50
/* 814BFBE8 | 4E 80 00 20 */	blr
.endfn VFiPFENT_InitENT

# .text:0x18F0 | 0x814BFBEC | size: 0x300
.fn VFiPFENT_FillVoidEntryToSectors, global
/* 814BFBEC | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 814BFBF0 | 7C 08 02 A6 */	mflr r0
/* 814BFBF4 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 814BFBF8 | 39 61 00 50 */	addi r11, r1, 0x50
/* 814BFBFC | 48 13 98 A1 */	bl _savegpr_18
/* 814BFC00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BFC04 | 7C 73 1B 78 */	mr r19, r3
/* 814BFC08 | 7C 94 23 78 */	mr r20, r4
/* 814BFC0C | 7C B5 2B 78 */	mr r21, r5
/* 814BFC10 | 7C D6 33 78 */	mr r22, r6
/* 814BFC14 | 7C F7 3B 78 */	mr r23, r7
/* 814BFC18 | 7D 18 43 78 */	mr r24, r8
/* 814BFC1C | 40 82 00 0C */	bne .L_814BFC28
/* 814BFC20 | 38 60 00 0A */	li r3, 0xa
/* 814BFC24 | 48 00 02 B0 */	b .L_814BFED4
.L_814BFC28:
/* 814BFC28 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814BFC2C | 41 82 00 1C */	beq .L_814BFC48
/* 814BFC30 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814BFC34 | 41 82 00 0C */	beq .L_814BFC40
/* 814BFC38 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814BFC3C | 40 82 00 0C */	bne .L_814BFC48
.L_814BFC40:
/* 814BFC40 | 38 60 00 0A */	li r3, 0xa
/* 814BFC44 | 48 00 02 90 */	b .L_814BFED4
.L_814BFC48:
/* 814BFC48 | 7E 63 9B 78 */	mr r3, r19
/* 814BFC4C | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814BFC50 | 38 80 FF FF */	li r4, -0x1
/* 814BFC54 | 4B FF C2 05 */	bl VFiPFCACHE_AllocateDataPage
/* 814BFC58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BFC5C | 7C 72 1B 78 */	mr r18, r3
/* 814BFC60 | 40 82 02 70 */	bne .L_814BFED0
/* 814BFC64 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 814BFC68 | 38 80 00 00 */	li r4, 0x0
/* 814BFC6C | 83 33 15 EC */	lwz r25, 0x15ec(r19)
/* 814BFC70 | 88 13 00 20 */	lbz r0, 0x20(r19)
/* 814BFC74 | 83 83 00 04 */	lwz r28, 0x4(r3)
/* 814BFC78 | 7F 3A 00 30 */	slw r26, r25, r0
/* 814BFC7C | 7F 83 E3 78 */	mr r3, r28
/* 814BFC80 | 7F 45 D3 78 */	mr r5, r26
/* 814BFC84 | 4B FF 5C 85 */	bl VFipf_memset
/* 814BFC88 | 7F 74 AA 14 */	add r27, r20, r21
/* 814BFC8C | 3B E0 00 20 */	li r31, 0x20
/* 814BFC90 | 3B A0 00 2E */	li r29, 0x2e
/* 814BFC94 | 3B C0 00 00 */	li r30, 0x0
/* 814BFC98 | 48 00 02 24 */	b .L_814BFEBC
.L_814BFC9C:
/* 814BFC9C | 7C 15 C8 40 */	cmplw r21, r25
/* 814BFCA0 | 40 80 00 18 */	bge .L_814BFCB8
/* 814BFCA4 | 88 13 00 20 */	lbz r0, 0x20(r19)
/* 814BFCA8 | 7E B9 AB 78 */	mr r25, r21
/* 814BFCAC | 7E 9B A3 78 */	mr r27, r20
/* 814BFCB0 | 7E BA 00 30 */	slw r26, r21, r0
/* 814BFCB4 | 48 00 00 08 */	b .L_814BFCBC
.L_814BFCB8:
/* 814BFCB8 | 7F 79 D8 50 */	subf r27, r25, r27
.L_814BFCBC:
/* 814BFCBC | 7C 15 C8 40 */	cmplw r21, r25
/* 814BFCC0 | 40 82 01 AC */	bne .L_814BFE6C
/* 814BFCC4 | 2C 16 00 00 */	cmpwi r22, 0x0
/* 814BFCC8 | 41 82 01 A4 */	beq .L_814BFE6C
/* 814BFCCC | 9B BC 00 00 */	stb r29, 0x0(r28)
/* 814BFCD0 | 39 1C 00 0E */	addi r8, r28, 0xe
/* 814BFCD4 | 38 FC 00 10 */	addi r7, r28, 0x10
/* 814BFCD8 | 38 DC 00 12 */	addi r6, r28, 0x12
/* 814BFCDC | 9B FC 00 01 */	stb r31, 0x1(r28)
/* 814BFCE0 | 38 BC 00 16 */	addi r5, r28, 0x16
/* 814BFCE4 | 38 9C 00 18 */	addi r4, r28, 0x18
/* 814BFCE8 | 38 7C 00 14 */	addi r3, r28, 0x14
/* 814BFCEC | 9B FC 00 02 */	stb r31, 0x2(r28)
/* 814BFCF0 | 38 1C 00 1A */	addi r0, r28, 0x1a
/* 814BFCF4 | 9B FC 00 03 */	stb r31, 0x3(r28)
/* 814BFCF8 | 9B FC 00 04 */	stb r31, 0x4(r28)
/* 814BFCFC | 9B FC 00 05 */	stb r31, 0x5(r28)
/* 814BFD00 | 9B FC 00 06 */	stb r31, 0x6(r28)
/* 814BFD04 | 9B FC 00 07 */	stb r31, 0x7(r28)
/* 814BFD08 | 9B FC 00 08 */	stb r31, 0x8(r28)
/* 814BFD0C | 9B FC 00 09 */	stb r31, 0x9(r28)
/* 814BFD10 | 9B FC 00 0A */	stb r31, 0xa(r28)
/* 814BFD14 | 89 37 02 1C */	lbz r9, 0x21c(r23)
/* 814BFD18 | 99 3C 00 0B */	stb r9, 0xb(r28)
/* 814BFD1C | 89 37 02 1B */	lbz r9, 0x21b(r23)
/* 814BFD20 | 99 3C 00 0C */	stb r9, 0xc(r28)
/* 814BFD24 | 89 37 02 1D */	lbz r9, 0x21d(r23)
/* 814BFD28 | 99 3C 00 0D */	stb r9, 0xd(r28)
/* 814BFD2C | A1 37 02 1E */	lhz r9, 0x21e(r23)
/* 814BFD30 | 7D 20 47 2C */	sthbrx r9, r0, r8
/* 814BFD34 | A1 17 02 20 */	lhz r8, 0x220(r23)
/* 814BFD38 | 7D 00 3F 2C */	sthbrx r8, r0, r7
/* 814BFD3C | A0 F7 02 22 */	lhz r7, 0x222(r23)
/* 814BFD40 | 7C E0 37 2C */	sthbrx r7, r0, r6
/* 814BFD44 | A0 D7 02 24 */	lhz r6, 0x224(r23)
/* 814BFD48 | 7C C0 2F 2C */	sthbrx r6, r0, r5
/* 814BFD4C | A0 B7 02 26 */	lhz r5, 0x226(r23)
/* 814BFD50 | 7C A0 27 2C */	sthbrx r5, r0, r4
/* 814BFD54 | 80 97 02 34 */	lwz r4, 0x234(r23)
/* 814BFD58 | 54 84 84 3E */	srwi r4, r4, 16
/* 814BFD5C | 7C 80 1F 2C */	sthbrx r4, r0, r3
/* 814BFD60 | 80 77 02 34 */	lwz r3, 0x234(r23)
/* 814BFD64 | 7C 60 07 2C */	sthbrx r3, r0, r0
/* 814BFD68 | 80 97 02 28 */	lwz r4, 0x228(r23)
/* 814BFD6C | 54 83 42 1E */	rlwinm r3, r4, 8, 8, 15
/* 814BFD70 | 54 80 C4 2E */	rlwinm r0, r4, 24, 16, 23
/* 814BFD74 | 50 83 C0 0E */	rlwimi r3, r4, 24, 0, 7
/* 814BFD78 | 50 80 46 3E */	rlwimi r0, r4, 8, 24, 31
/* 814BFD7C | 7C 60 03 78 */	or r0, r3, r0
/* 814BFD80 | 90 1C 00 1C */	stw r0, 0x1c(r28)
/* 814BFD84 | 80 78 02 38 */	lwz r3, 0x238(r24)
/* 814BFD88 | 80 17 02 34 */	lwz r0, 0x234(r23)
/* 814BFD8C | 3C 63 00 01 */	addis r3, r3, 0x1
/* 814BFD90 | 28 03 FF FF */	cmplwi r3, 0xffff
/* 814BFD94 | 41 82 00 10 */	beq .L_814BFDA4
/* 814BFD98 | 80 78 02 34 */	lwz r3, 0x234(r24)
/* 814BFD9C | 28 03 00 01 */	cmplwi r3, 0x1
/* 814BFDA0 | 40 82 00 0C */	bne .L_814BFDAC
.L_814BFDA4:
/* 814BFDA4 | 93 D7 02 34 */	stw r30, 0x234(r23)
/* 814BFDA8 | 48 00 00 08 */	b .L_814BFDB0
.L_814BFDAC:
/* 814BFDAC | 90 77 02 34 */	stw r3, 0x234(r23)
.L_814BFDB0:
/* 814BFDB0 | 9B BC 00 20 */	stb r29, 0x20(r28)
/* 814BFDB4 | 39 3C 00 2E */	addi r9, r28, 0x2e
/* 814BFDB8 | 39 1C 00 30 */	addi r8, r28, 0x30
/* 814BFDBC | 38 FC 00 32 */	addi r7, r28, 0x32
/* 814BFDC0 | 9B BC 00 21 */	stb r29, 0x21(r28)
/* 814BFDC4 | 38 DC 00 36 */	addi r6, r28, 0x36
/* 814BFDC8 | 38 BC 00 38 */	addi r5, r28, 0x38
/* 814BFDCC | 38 9C 00 34 */	addi r4, r28, 0x34
/* 814BFDD0 | 9B FC 00 22 */	stb r31, 0x22(r28)
/* 814BFDD4 | 38 7C 00 3A */	addi r3, r28, 0x3a
/* 814BFDD8 | 9B FC 00 23 */	stb r31, 0x23(r28)
/* 814BFDDC | 9B FC 00 24 */	stb r31, 0x24(r28)
/* 814BFDE0 | 9B FC 00 25 */	stb r31, 0x25(r28)
/* 814BFDE4 | 9B FC 00 26 */	stb r31, 0x26(r28)
/* 814BFDE8 | 9B FC 00 27 */	stb r31, 0x27(r28)
/* 814BFDEC | 9B FC 00 28 */	stb r31, 0x28(r28)
/* 814BFDF0 | 9B FC 00 29 */	stb r31, 0x29(r28)
/* 814BFDF4 | 9B FC 00 2A */	stb r31, 0x2a(r28)
/* 814BFDF8 | 89 57 02 1C */	lbz r10, 0x21c(r23)
/* 814BFDFC | 99 5C 00 2B */	stb r10, 0x2b(r28)
/* 814BFE00 | 89 57 02 1B */	lbz r10, 0x21b(r23)
/* 814BFE04 | 99 5C 00 2C */	stb r10, 0x2c(r28)
/* 814BFE08 | 89 57 02 1D */	lbz r10, 0x21d(r23)
/* 814BFE0C | 99 5C 00 2D */	stb r10, 0x2d(r28)
/* 814BFE10 | A1 57 02 1E */	lhz r10, 0x21e(r23)
/* 814BFE14 | 7D 40 4F 2C */	sthbrx r10, r0, r9
/* 814BFE18 | A1 37 02 20 */	lhz r9, 0x220(r23)
/* 814BFE1C | 7D 20 47 2C */	sthbrx r9, r0, r8
/* 814BFE20 | A1 17 02 22 */	lhz r8, 0x222(r23)
/* 814BFE24 | 7D 00 3F 2C */	sthbrx r8, r0, r7
/* 814BFE28 | A0 F7 02 24 */	lhz r7, 0x224(r23)
/* 814BFE2C | 7C E0 37 2C */	sthbrx r7, r0, r6
/* 814BFE30 | A0 D7 02 26 */	lhz r6, 0x226(r23)
/* 814BFE34 | 7C C0 2F 2C */	sthbrx r6, r0, r5
/* 814BFE38 | 80 B7 02 34 */	lwz r5, 0x234(r23)
/* 814BFE3C | 54 A5 84 3E */	srwi r5, r5, 16
/* 814BFE40 | 7C A0 27 2C */	sthbrx r5, r0, r4
/* 814BFE44 | 80 97 02 34 */	lwz r4, 0x234(r23)
/* 814BFE48 | 7C 80 1F 2C */	sthbrx r4, r0, r3
/* 814BFE4C | 80 B7 02 28 */	lwz r5, 0x228(r23)
/* 814BFE50 | 54 A4 42 1E */	rlwinm r4, r5, 8, 8, 15
/* 814BFE54 | 54 A3 C4 2E */	rlwinm r3, r5, 24, 16, 23
/* 814BFE58 | 50 A4 C0 0E */	rlwimi r4, r5, 24, 0, 7
/* 814BFE5C | 50 A3 46 3E */	rlwimi r3, r5, 8, 24, 31
/* 814BFE60 | 7C 83 1B 78 */	or r3, r4, r3
/* 814BFE64 | 90 7C 00 3C */	stw r3, 0x3c(r28)
/* 814BFE68 | 90 17 02 34 */	stw r0, 0x234(r23)
.L_814BFE6C:
/* 814BFE6C | 7E 63 9B 78 */	mr r3, r19
/* 814BFE70 | 7F 84 E3 78 */	mr r4, r28
/* 814BFE74 | 7F 65 DB 78 */	mr r5, r27
/* 814BFE78 | 7F 46 D3 78 */	mr r6, r26
/* 814BFE7C | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814BFE80 | 39 00 00 01 */	li r8, 0x1
/* 814BFE84 | 39 20 00 00 */	li r9, 0x0
/* 814BFE88 | 48 00 CF 95 */	bl VFiPFSEC_WriteDataSector
/* 814BFE8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814BFE90 | 7C 72 1B 78 */	mr r18, r3
/* 814BFE94 | 41 82 00 0C */	beq .L_814BFEA0
/* 814BFE98 | 3A A0 00 00 */	li r21, 0x0
/* 814BFE9C | 48 00 00 20 */	b .L_814BFEBC
.L_814BFEA0:
/* 814BFEA0 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814BFEA4 | 7C 00 D0 40 */	cmplw r0, r26
/* 814BFEA8 | 41 82 00 10 */	beq .L_814BFEB8
/* 814BFEAC | 3A A0 00 00 */	li r21, 0x0
/* 814BFEB0 | 3A 40 00 11 */	li r18, 0x11
/* 814BFEB4 | 48 00 00 08 */	b .L_814BFEBC
.L_814BFEB8:
/* 814BFEB8 | 7E B9 A8 50 */	subf r21, r25, r21
.L_814BFEBC:
/* 814BFEBC | 2C 15 00 00 */	cmpwi r21, 0x0
/* 814BFEC0 | 40 82 FD DC */	bne .L_814BFC9C
/* 814BFEC4 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814BFEC8 | 7E 63 9B 78 */	mr r3, r19
/* 814BFECC | 4B FF C0 01 */	bl VFiPFCACHE_FreeDataPage
.L_814BFED0:
/* 814BFED0 | 7E 43 93 78 */	mr r3, r18
.L_814BFED4:
/* 814BFED4 | 39 61 00 50 */	addi r11, r1, 0x50
/* 814BFED8 | 48 13 96 11 */	bl _restgpr_18
/* 814BFEDC | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 814BFEE0 | 7C 08 03 A6 */	mtlr r0
/* 814BFEE4 | 38 21 00 50 */	addi r1, r1, 0x50
/* 814BFEE8 | 4E 80 00 20 */	blr
.endfn VFiPFENT_FillVoidEntryToSectors

# 0x8166E4F0..0x8166E500 | size: 0x10
.data
.balign 8

# .data:0x0 | 0x8166E4F0 | size: 0xC
.obj lbl_8166E4F0, global
	.string "NO NAME    "
.endobj lbl_8166E4F0

# .data:0xC | 0x8166E4FC | size: 0x4
.obj gap_08_8166E4FC_data, global
.hidden gap_08_8166E4FC_data
	.4byte 0x00000000
.endobj gap_08_8166E4FC_data

# 0x81695048..0x81695050 | size: 0x8
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81695048 | size: 0x8
.obj lbl_81695048, global
	.byte 0xE5, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
.endobj lbl_81695048
