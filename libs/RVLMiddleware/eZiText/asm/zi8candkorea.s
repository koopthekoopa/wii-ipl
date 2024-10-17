.include "macros.inc"
.file "zi8candkorea.c"

# 0x81330748..0x813307A8 | size: 0x60
.section extab, "a"
.balign 4

# extab:0x0 | 0x81330748 | size: 0x8
.obj "@etb_81330748", local
.hidden "@etb_81330748"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r27-r31
 */
	.4byte 0x28080000
	.4byte 0x00000000
.endobj "@etb_81330748"

# extab:0x8 | 0x81330750 | size: 0x8
.obj "@etb_81330750", local
.hidden "@etb_81330750"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r26-r31
 */
	.4byte 0x30080000
	.4byte 0x00000000
.endobj "@etb_81330750"

# extab:0x10 | 0x81330758 | size: 0x8
.obj "@etb_81330758", local
.hidden "@etb_81330758"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r26-r31
 */
	.4byte 0x30080000
	.4byte 0x00000000
.endobj "@etb_81330758"

# extab:0x18 | 0x81330760 | size: 0x8
.obj "@etb_81330760", local
.hidden "@etb_81330760"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r26-r31
 */
	.4byte 0x30080000
	.4byte 0x00000000
.endobj "@etb_81330760"

# extab:0x20 | 0x81330768 | size: 0x8
.obj "@etb_81330768", local
.hidden "@etb_81330768"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r29-r31
 */
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_81330768"

# extab:0x28 | 0x81330770 | size: 0x8
.obj "@etb_81330770", local
.hidden "@etb_81330770"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r27-r31
 */
	.4byte 0x28080000
	.4byte 0x00000000
.endobj "@etb_81330770"

# extab:0x30 | 0x81330778 | size: 0x8
.obj "@etb_81330778", local
.hidden "@etb_81330778"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r31
 */
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_81330778"

# extab:0x38 | 0x81330780 | size: 0x8
.obj "@etb_81330780", local
.hidden "@etb_81330780"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r29-r31
 */
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_81330780"

# extab:0x40 | 0x81330788 | size: 0x8
.obj "@etb_81330788", local
.hidden "@etb_81330788"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r27-r31
 */
	.4byte 0x28080000
	.4byte 0x00000000
.endobj "@etb_81330788"

# extab:0x48 | 0x81330790 | size: 0x8
.obj "@etb_81330790", local
.hidden "@etb_81330790"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r29-r31
 */
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_81330790"

# extab:0x50 | 0x81330798 | size: 0x8
.obj "@etb_81330798", local
.hidden "@etb_81330798"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r23-r31
 */
	.4byte 0x48080000
	.4byte 0x00000000
.endobj "@etb_81330798"

# extab:0x58 | 0x813307A0 | size: 0x8
.obj "@etb_813307A0", local
.hidden "@etb_813307A0"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r27-r31
 */
	.4byte 0x28080000
	.4byte 0x00000000
.endobj "@etb_813307A0"

# 0x8133147C..0x8133150C | size: 0x90
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8133147C | size: 0xC
.obj "@eti_8133147C", local
.hidden "@eti_8133147C"
	.4byte Zi8_814813FC
	.4byte 0x000000C4
	.4byte "@etb_81330748"
.endobj "@eti_8133147C"

# extabindex:0xC | 0x81331488 | size: 0xC
.obj "@eti_81331488", local
.hidden "@eti_81331488"
	.4byte Zi8GetKoreanCandidates
	.4byte 0x000009AC
	.4byte "@etb_81330750"
.endobj "@eti_81331488"

# extabindex:0x18 | 0x81331494 | size: 0xC
.obj "@eti_81331494", local
.hidden "@eti_81331494"
	.4byte Zi8_81481E6C
	.4byte 0x000009D4
	.4byte "@etb_81330758"
.endobj "@eti_81331494"

# extabindex:0x24 | 0x813314A0 | size: 0xC
.obj "@eti_813314A0", local
.hidden "@eti_813314A0"
	.4byte Zi8IsWordW
	.4byte 0x00000680
	.4byte "@etb_81330760"
.endobj "@eti_813314A0"

# extabindex:0x30 | 0x813314AC | size: 0xC
.obj "@eti_813314AC", local
.hidden "@eti_813314AC"
	.4byte Zi8ConvertUC2UserKey
	.4byte 0x0000016C
	.4byte "@etb_81330768"
.endobj "@eti_813314AC"

# extabindex:0x3C | 0x813314B8 | size: 0xC
.obj "@eti_813314B8", local
.hidden "@eti_813314B8"
	.4byte Zi8_8148302C
	.4byte 0x000000EC
	.4byte "@etb_81330770"
.endobj "@eti_813314B8"

# extabindex:0x48 | 0x813314C4 | size: 0xC
.obj "@eti_813314C4", local
.hidden "@eti_813314C4"
	.4byte Zi8_81483118
	.4byte 0x0000014C
	.4byte "@etb_81330778"
.endobj "@eti_813314C4"

# extabindex:0x54 | 0x813314D0 | size: 0xC
.obj "@eti_813314D0", local
.hidden "@eti_813314D0"
	.4byte Zi8_81483264
	.4byte 0x000000A4
	.4byte "@etb_81330780"
.endobj "@eti_813314D0"

# extabindex:0x60 | 0x813314DC | size: 0xC
.obj "@eti_813314DC", local
.hidden "@eti_813314DC"
	.4byte Zi8_81483308
	.4byte 0x000000E8
	.4byte "@etb_81330788"
.endobj "@eti_813314DC"

# extabindex:0x6C | 0x813314E8 | size: 0xC
.obj "@eti_813314E8", local
.hidden "@eti_813314E8"
	.4byte Zi8_814833F0
	.4byte 0x000000BC
	.4byte "@etb_81330790"
.endobj "@eti_813314E8"

# extabindex:0x78 | 0x813314F4 | size: 0xC
.obj "@eti_813314F4", local
.hidden "@eti_813314F4"
	.4byte Zi8_814834AC
	.4byte 0x0000055C
	.4byte "@etb_81330798"
.endobj "@eti_813314F4"

# extabindex:0x84 | 0x81331500 | size: 0xC
.obj "@eti_81331500", local
.hidden "@eti_81331500"
	.4byte Zi8GetKOcandidates
	.4byte 0x00000A74
	.4byte "@etb_813307A0"
.endobj "@eti_81331500"

# 0x814813FC..0x8148447C | size: 0x3080
.text
.balign 4

# .text:0x0 | 0x814813FC | size: 0xC4
.fn Zi8_814813FC, global
/* 814813FC | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81481400 | 7C 08 02 A6 */	mflr r0
/* 81481404 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81481408 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8148140C | 48 17 80 B5 */	bl _savegpr_27
/* 81481410 | B0 61 00 08 */	sth r3, 0x8(r1)
/* 81481414 | 7C 9B 23 78 */	mr r27, r4
/* 81481418 | 7C BC 2B 78 */	mr r28, r5
/* 8148141C | 7C DD 33 78 */	mr r29, r6
/* 81481420 | 38 60 00 12 */	li r3, 0x12
/* 81481424 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81481428 | 38 80 00 05 */	li r4, 0x5
/* 8148142C | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81481430 | 7F A5 EB 78 */	mr r5, r29
/* 81481434 | 4B FD DF 7D */	bl Zi8GetTableAddress
/* 81481438 | 7C 7E 1B 78 */	mr r30, r3
/* 8148143C | 3B E0 00 00 */	li r31, 0x0
/* 81481440 | 48 00 00 44 */	b .L_81481484
.L_81481444:
/* 81481444 | A0 61 00 08 */	lhz r3, 0x8(r1)
/* 81481448 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 8148144C | 7C 1E 00 AE */	lbzx r0, r30, r0
/* 81481450 | 7C 03 00 00 */	cmpw r3, r0
/* 81481454 | 40 82 00 2C */	bne .L_81481480
/* 81481458 | B3 FC 00 00 */	sth r31, 0x0(r28)
/* 8148145C | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 81481460 | 7C 1E 00 AE */	lbzx r0, r30, r0
/* 81481464 | 98 1B 00 00 */	stb r0, 0x0(r27)
/* 81481468 | 38 60 00 64 */	li r3, 0x64
/* 8148146C | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81481470 | 7F A4 EB 78 */	mr r4, r29
/* 81481474 | 48 00 30 09 */	bl Zi8LogError
/* 81481478 | 38 60 00 01 */	li r3, 0x1
/* 8148147C | 48 00 00 2C */	b .L_814814A8
.L_81481480:
/* 81481480 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_81481484:
/* 81481484 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 81481488 | 7C 1E 00 AE */	lbzx r0, r30, r0
/* 8148148C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81481490 | 40 82 FF B4 */	bne .L_81481444
/* 81481494 | 38 60 02 A8 */	li r3, 0x2a8
/* 81481498 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8148149C | 7F A4 EB 78 */	mr r4, r29
/* 814814A0 | 48 00 2F DD */	bl Zi8LogError
/* 814814A4 | 38 60 00 00 */	li r3, 0x0
.L_814814A8:
/* 814814A8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814814AC | 48 17 80 61 */	bl _restgpr_27
/* 814814B0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814814B4 | 7C 08 03 A6 */	mtlr r0
/* 814814B8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814814BC | 4E 80 00 20 */	blr
.endfn Zi8_814813FC

# .text:0xC4 | 0x814814C0 | size: 0x9AC
.fn Zi8GetKoreanCandidates, global
/* 814814C0 | 94 21 FE F0 */	stwu r1, -0x110(r1)
/* 814814C4 | 7C 08 02 A6 */	mflr r0
/* 814814C8 | 90 01 01 14 */	stw r0, 0x114(r1)
/* 814814CC | 39 61 01 10 */	addi r11, r1, 0x110
/* 814814D0 | 48 17 7F ED */	bl _savegpr_26
/* 814814D4 | 7C 7F 1B 78 */	mr r31, r3
/* 814814D8 | 7C 9A 23 78 */	mr r26, r4
/* 814814DC | 7C BE 2B 78 */	mr r30, r5
/* 814814E0 | 38 60 00 00 */	li r3, 0x0
/* 814814E4 | B0 61 00 12 */	sth r3, 0x12(r1)
/* 814814E8 | 3B 60 00 00 */	li r27, 0x0
/* 814814EC | 38 00 00 FF */	li r0, 0xff
/* 814814F0 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 814814F4 | A0 1F 00 1E */	lhz r0, 0x1e(r31)
/* 814814F8 | B0 01 00 0E */	sth r0, 0xe(r1)
/* 814814FC | 38 60 00 00 */	li r3, 0x0
/* 81481500 | 98 7F 00 20 */	stb r3, 0x20(r31)
/* 81481504 | 98 7F 00 22 */	stb r3, 0x22(r31)
/* 81481508 | 98 7F 00 21 */	stb r3, 0x21(r31)
/* 8148150C | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 81481510 | 41 82 00 28 */	beq .L_81481538
/* 81481514 | 88 1A 00 00 */	lbz r0, 0x0(r26)
/* 81481518 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148151C | 41 82 00 1C */	beq .L_81481538
/* 81481520 | 38 60 07 D0 */	li r3, 0x7d0
/* 81481524 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81481528 | 7F C4 F3 78 */	mr r4, r30
/* 8148152C | 48 00 2F 51 */	bl Zi8LogError
/* 81481530 | 38 60 00 00 */	li r3, 0x0
/* 81481534 | 48 00 09 20 */	b .L_81481E54
.L_81481538:
/* 81481538 | 88 1F 00 0C */	lbz r0, 0xc(r31)
/* 8148153C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81481540 | 41 82 00 10 */	beq .L_81481550
/* 81481544 | 88 1F 00 0C */	lbz r0, 0xc(r31)
/* 81481548 | 28 00 00 64 */	cmplwi r0, 0x64
/* 8148154C | 40 81 00 1C */	ble .L_81481568
.L_81481550:
/* 81481550 | 38 60 00 64 */	li r3, 0x64
/* 81481554 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81481558 | 7F C4 F3 78 */	mr r4, r30
/* 8148155C | 48 00 2F 21 */	bl Zi8LogError
/* 81481560 | 38 60 00 00 */	li r3, 0x0
/* 81481564 | 48 00 08 F0 */	b .L_81481E54
.L_81481568:
/* 81481568 | 38 60 00 12 */	li r3, 0x12
/* 8148156C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81481570 | 38 80 00 04 */	li r4, 0x4
/* 81481574 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81481578 | 7F C5 F3 78 */	mr r5, r30
/* 8148157C | 4B FD DE 35 */	bl Zi8GetTableAddress
/* 81481580 | 7C 7C 1B 78 */	mr r28, r3
/* 81481584 | 38 60 00 12 */	li r3, 0x12
/* 81481588 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8148158C | 38 80 00 01 */	li r4, 0x1
/* 81481590 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81481594 | 7F C5 F3 78 */	mr r5, r30
/* 81481598 | 4B FD DE 19 */	bl Zi8GetTableAddress
/* 8148159C | 90 61 00 24 */	stw r3, 0x24(r1)
/* 814815A0 | 38 60 00 12 */	li r3, 0x12
/* 814815A4 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814815A8 | 38 80 00 02 */	li r4, 0x2
/* 814815AC | 54 84 06 3E */	clrlwi r4, r4, 24
/* 814815B0 | 7F C5 F3 78 */	mr r5, r30
/* 814815B4 | 4B FD DD FD */	bl Zi8GetTableAddress
/* 814815B8 | 90 61 00 20 */	stw r3, 0x20(r1)
/* 814815BC | 38 60 00 12 */	li r3, 0x12
/* 814815C0 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814815C4 | 38 80 00 31 */	li r4, 0x31
/* 814815C8 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 814815CC | 7F C5 F3 78 */	mr r5, r30
/* 814815D0 | 4B FD DD E1 */	bl Zi8GetTableAddress
/* 814815D4 | 7C 64 1B 78 */	mr r4, r3
/* 814815D8 | 90 81 00 1C */	stw r4, 0x1c(r1)
/* 814815DC | 38 60 00 12 */	li r3, 0x12
/* 814815E0 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814815E4 | 38 80 00 00 */	li r4, 0x0
/* 814815E8 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 814815EC | 7F C5 F3 78 */	mr r5, r30
/* 814815F0 | 4B FD DE 41 */	bl Zi8GetTableCount
/* 814815F4 | B0 61 00 1A */	sth r3, 0x1a(r1)
/* 814815F8 | 38 60 00 12 */	li r3, 0x12
/* 814815FC | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81481600 | 38 80 00 03 */	li r4, 0x3
/* 81481604 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81481608 | 7F C5 F3 78 */	mr r5, r30
/* 8148160C | 4B FD DE 25 */	bl Zi8GetTableCount
/* 81481610 | 7C 64 1B 78 */	mr r4, r3
/* 81481614 | B0 81 00 18 */	sth r4, 0x18(r1)
/* 81481618 | 38 60 00 12 */	li r3, 0x12
/* 8148161C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81481620 | 38 80 00 06 */	li r4, 0x6
/* 81481624 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81481628 | 7F C5 F3 78 */	mr r5, r30
/* 8148162C | 4B FD DE 05 */	bl Zi8GetTableCount
/* 81481630 | 7C 60 1B 78 */	mr r0, r3
/* 81481634 | B0 01 00 16 */	sth r0, 0x16(r1)
/* 81481638 | 38 60 00 12 */	li r3, 0x12
/* 8148163C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81481640 | 38 80 00 31 */	li r4, 0x31
/* 81481644 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81481648 | 7F C5 F3 78 */	mr r5, r30
/* 8148164C | 4B FD DD E5 */	bl Zi8GetTableCount
/* 81481650 | 7C 60 1B 78 */	mr r0, r3
/* 81481654 | B0 01 00 14 */	sth r0, 0x14(r1)
/* 81481658 | 38 00 00 00 */	li r0, 0x0
/* 8148165C | 98 01 00 0A */	stb r0, 0xa(r1)
/* 81481660 | 48 00 01 80 */	b .L_814817E0
.L_81481664:
/* 81481664 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 81481668 | 88 01 00 0A */	lbz r0, 0xa(r1)
/* 8148166C | 54 06 08 3C */	slwi r6, r0, 1
/* 81481670 | 7F A3 32 2E */	lhzx r29, r3, r6
/* 81481674 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 81481678 | 28 00 00 61 */	cmplwi r0, 0x61
/* 8148167C | 41 80 00 38 */	blt .L_814816B4
/* 81481680 | 57 A5 04 3E */	clrlwi r5, r29, 16
/* 81481684 | 28 05 00 7A */	cmplwi r5, 0x7a
/* 81481688 | 41 81 00 2C */	bgt .L_814816B4
/* 8148168C | 80 81 00 24 */	lwz r4, 0x24(r1)
/* 81481690 | 57 A3 04 3E */	clrlwi r3, r29, 16
/* 81481694 | 38 03 FF 9F */	subi r0, r3, 0x61
/* 81481698 | 54 00 08 3C */	slwi r0, r0, 1
/* 8148169C | 7C 84 00 AE */	lbzx r4, r4, r0
/* 814816A0 | 88 61 00 0A */	lbz r3, 0xa(r1)
/* 814816A4 | 54 60 08 3C */	slwi r0, r3, 1
/* 814816A8 | 38 61 00 28 */	addi r3, r1, 0x28
/* 814816AC | 7C 83 03 2E */	sthx r4, r3, r0
/* 814816B0 | 48 00 01 24 */	b .L_814817D4
.L_814816B4:
/* 814816B4 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 814816B8 | 28 00 00 41 */	cmplwi r0, 0x41
/* 814816BC | 41 80 00 3C */	blt .L_814816F8
/* 814816C0 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 814816C4 | 28 00 00 5A */	cmplwi r0, 0x5a
/* 814816C8 | 41 81 00 30 */	bgt .L_814816F8
/* 814816CC | 80 81 00 24 */	lwz r4, 0x24(r1)
/* 814816D0 | 57 A3 04 3E */	clrlwi r3, r29, 16
/* 814816D4 | 38 03 FF BF */	subi r0, r3, 0x41
/* 814816D8 | 54 00 08 3C */	slwi r0, r0, 1
/* 814816DC | 7C 64 02 14 */	add r3, r4, r0
/* 814816E0 | 88 83 00 01 */	lbz r4, 0x1(r3)
/* 814816E4 | 88 01 00 0A */	lbz r0, 0xa(r1)
/* 814816E8 | 54 00 08 3C */	slwi r0, r0, 1
/* 814816EC | 38 61 00 28 */	addi r3, r1, 0x28
/* 814816F0 | 7C 83 03 2E */	sthx r4, r3, r0
/* 814816F4 | 48 00 00 E0 */	b .L_814817D4
.L_814816F8:
/* 814816F8 | 38 00 00 00 */	li r0, 0x0
/* 814816FC | 98 01 00 09 */	stb r0, 0x9(r1)
/* 81481700 | 48 00 00 30 */	b .L_81481730
.L_81481704:
/* 81481704 | 57 A5 04 3E */	clrlwi r5, r29, 16
/* 81481708 | 80 81 00 20 */	lwz r4, 0x20(r1)
/* 8148170C | 88 61 00 09 */	lbz r3, 0x9(r1)
/* 81481710 | 54 60 10 3A */	slwi r0, r3, 2
/* 81481714 | 7C 03 00 50 */	subf r0, r3, r0
/* 81481718 | 7C 04 00 AE */	lbzx r0, r4, r0
/* 8148171C | 7C 05 00 00 */	cmpw r5, r0
/* 81481720 | 41 82 00 2C */	beq .L_8148174C
/* 81481724 | 88 61 00 09 */	lbz r3, 0x9(r1)
/* 81481728 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8148172C | 98 01 00 09 */	stb r0, 0x9(r1)
.L_81481730:
/* 81481730 | 80 81 00 20 */	lwz r4, 0x20(r1)
/* 81481734 | 88 61 00 09 */	lbz r3, 0x9(r1)
/* 81481738 | 54 60 10 3A */	slwi r0, r3, 2
/* 8148173C | 7C 03 00 50 */	subf r0, r3, r0
/* 81481740 | 7C 04 00 AE */	lbzx r0, r4, r0
/* 81481744 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81481748 | 40 82 FF BC */	bne .L_81481704
.L_8148174C:
/* 8148174C | 80 81 00 20 */	lwz r4, 0x20(r1)
/* 81481750 | 88 61 00 09 */	lbz r3, 0x9(r1)
/* 81481754 | 54 60 10 3A */	slwi r0, r3, 2
/* 81481758 | 7C 03 00 50 */	subf r0, r3, r0
/* 8148175C | 7C 04 00 AE */	lbzx r0, r4, r0
/* 81481760 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81481764 | 41 82 00 58 */	beq .L_814817BC
/* 81481768 | 80 81 00 20 */	lwz r4, 0x20(r1)
/* 8148176C | 88 61 00 09 */	lbz r3, 0x9(r1)
/* 81481770 | 54 60 10 3A */	slwi r0, r3, 2
/* 81481774 | 7C 03 00 50 */	subf r0, r3, r0
/* 81481778 | 7C 64 02 14 */	add r3, r4, r0
/* 8148177C | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 81481780 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81481784 | 54 05 40 2E */	slwi r5, r0, 8
/* 81481788 | 80 81 00 20 */	lwz r4, 0x20(r1)
/* 8148178C | 88 61 00 09 */	lbz r3, 0x9(r1)
/* 81481790 | 54 60 10 3A */	slwi r0, r3, 2
/* 81481794 | 7C 03 00 50 */	subf r0, r3, r0
/* 81481798 | 7C 64 02 14 */	add r3, r4, r0
/* 8148179C | 88 03 00 02 */	lbz r0, 0x2(r3)
/* 814817A0 | 7C A0 03 78 */	or r0, r5, r0
/* 814817A4 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 814817A8 | 88 01 00 0A */	lbz r0, 0xa(r1)
/* 814817AC | 54 00 08 3C */	slwi r0, r0, 1
/* 814817B0 | 38 61 00 28 */	addi r3, r1, 0x28
/* 814817B4 | 7C 83 03 2E */	sthx r4, r3, r0
/* 814817B8 | 48 00 00 1C */	b .L_814817D4
.L_814817BC:
/* 814817BC | 38 60 01 61 */	li r3, 0x161
/* 814817C0 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814817C4 | 7F C4 F3 78 */	mr r4, r30
/* 814817C8 | 48 00 2C B5 */	bl Zi8LogError
/* 814817CC | 38 60 00 00 */	li r3, 0x0
/* 814817D0 | 48 00 06 84 */	b .L_81481E54
.L_814817D4:
/* 814817D4 | 88 61 00 0A */	lbz r3, 0xa(r1)
/* 814817D8 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814817DC | 98 01 00 0A */	stb r0, 0xa(r1)
.L_814817E0:
/* 814817E0 | 88 01 00 0A */	lbz r0, 0xa(r1)
/* 814817E4 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 814817E8 | 88 1F 00 0C */	lbz r0, 0xc(r31)
/* 814817EC | 7C 03 00 40 */	cmplw r3, r0
/* 814817F0 | 41 80 FE 74 */	blt .L_81481664
/* 814817F4 | 3B 60 00 00 */	li r27, 0x0
/* 814817F8 | 3B A0 00 00 */	li r29, 0x0
/* 814817FC | 48 00 06 30 */	b .L_81481E2C
.L_81481800:
/* 81481800 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 81481804 | 54 00 08 3C */	slwi r0, r0, 1
/* 81481808 | 38 61 00 28 */	addi r3, r1, 0x28
/* 8148180C | 7C 63 02 2E */	lhzx r3, r3, r0
/* 81481810 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81481814 | 38 A1 00 10 */	addi r5, r1, 0x10
/* 81481818 | 7F C6 F3 78 */	mr r6, r30
/* 8148181C | 4B FF FB E1 */	bl Zi8_814813FC
/* 81481820 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81481824 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81481828 | 41 82 02 CC */	beq .L_81481AF4
/* 8148182C | 38 61 00 12 */	addi r3, r1, 0x12
/* 81481830 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 81481834 | 54 04 08 3C */	slwi r4, r0, 1
/* 81481838 | 38 01 00 28 */	addi r0, r1, 0x28
/* 8148183C | 7C 80 22 14 */	add r4, r0, r4
/* 81481840 | 38 84 00 02 */	addi r4, r4, 0x2
/* 81481844 | 88 A1 00 08 */	lbz r5, 0x8(r1)
/* 81481848 | 88 01 00 0A */	lbz r0, 0xa(r1)
/* 8148184C | 7C DD 00 50 */	subf r6, r29, r0
/* 81481850 | 38 06 FF FF */	subi r0, r6, 0x1
/* 81481854 | 54 06 04 3E */	clrlwi r6, r0, 16
/* 81481858 | 7F C7 F3 78 */	mr r7, r30
/* 8148185C | 48 00 06 11 */	bl Zi8_81481E6C
/* 81481860 | 98 61 00 09 */	stb r3, 0x9(r1)
/* 81481864 | 88 1E 1B 30 */	lbz r0, 0x1b30(r30)
/* 81481868 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8148186C | 40 82 02 90 */	bne .L_81481AFC
/* 81481870 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 81481874 | 28 00 00 1E */	cmplwi r0, 0x1e
/* 81481878 | 41 81 02 84 */	bgt .L_81481AFC
/* 8148187C | 3C 60 81 67 */	lis r3, jumptable_8166B2B0@ha
/* 81481880 | 38 63 B2 B0 */	addi r3, r3, jumptable_8166B2B0@l
/* 81481884 | 54 00 10 3A */	slwi r0, r0, 2
/* 81481888 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 8148188C | 7C 69 03 A6 */	mtctr r3
/* 81481890 | 4E 80 04 20 */	bctr
.L_81481894:
/* 81481894 | 38 60 00 12 */	li r3, 0x12
/* 81481898 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8148189C | 38 80 00 1E */	li r4, 0x1e
/* 814818A0 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 814818A4 | 7F C5 F3 78 */	mr r5, r30
/* 814818A8 | 4B FD DB 09 */	bl Zi8GetTableAddress
/* 814818AC | 7C 7C 1B 78 */	mr r28, r3
/* 814818B0 | 48 00 02 4C */	b .L_81481AFC
.L_814818B4:
/* 814818B4 | 38 60 00 12 */	li r3, 0x12
/* 814818B8 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814818BC | 38 80 00 1F */	li r4, 0x1f
/* 814818C0 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 814818C4 | 7F C5 F3 78 */	mr r5, r30
/* 814818C8 | 4B FD DA E9 */	bl Zi8GetTableAddress
/* 814818CC | 7C 7C 1B 78 */	mr r28, r3
/* 814818D0 | 48 00 02 2C */	b .L_81481AFC
.L_814818D4:
/* 814818D4 | 38 60 00 12 */	li r3, 0x12
/* 814818D8 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814818DC | 38 80 00 20 */	li r4, 0x20
/* 814818E0 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 814818E4 | 7F C5 F3 78 */	mr r5, r30
/* 814818E8 | 4B FD DA C9 */	bl Zi8GetTableAddress
/* 814818EC | 7C 7C 1B 78 */	mr r28, r3
/* 814818F0 | 48 00 02 0C */	b .L_81481AFC
.L_814818F4:
/* 814818F4 | 38 60 00 12 */	li r3, 0x12
/* 814818F8 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814818FC | 38 80 00 21 */	li r4, 0x21
/* 81481900 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81481904 | 7F C5 F3 78 */	mr r5, r30
/* 81481908 | 4B FD DA A9 */	bl Zi8GetTableAddress
/* 8148190C | 7C 7C 1B 78 */	mr r28, r3
/* 81481910 | 48 00 01 EC */	b .L_81481AFC
.L_81481914:
/* 81481914 | 38 60 00 12 */	li r3, 0x12
/* 81481918 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8148191C | 38 80 00 22 */	li r4, 0x22
/* 81481920 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81481924 | 7F C5 F3 78 */	mr r5, r30
/* 81481928 | 4B FD DA 89 */	bl Zi8GetTableAddress
/* 8148192C | 7C 7C 1B 78 */	mr r28, r3
/* 81481930 | 48 00 01 CC */	b .L_81481AFC
.L_81481934:
/* 81481934 | 38 60 00 12 */	li r3, 0x12
/* 81481938 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8148193C | 38 80 00 23 */	li r4, 0x23
/* 81481940 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81481944 | 7F C5 F3 78 */	mr r5, r30
/* 81481948 | 4B FD DA 69 */	bl Zi8GetTableAddress
/* 8148194C | 7C 7C 1B 78 */	mr r28, r3
/* 81481950 | 48 00 01 AC */	b .L_81481AFC
.L_81481954:
/* 81481954 | 38 60 00 12 */	li r3, 0x12
/* 81481958 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8148195C | 38 80 00 24 */	li r4, 0x24
/* 81481960 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81481964 | 7F C5 F3 78 */	mr r5, r30
/* 81481968 | 4B FD DA 49 */	bl Zi8GetTableAddress
/* 8148196C | 7C 7C 1B 78 */	mr r28, r3
/* 81481970 | 48 00 01 8C */	b .L_81481AFC
.L_81481974:
/* 81481974 | 38 60 00 12 */	li r3, 0x12
/* 81481978 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8148197C | 38 80 00 25 */	li r4, 0x25
/* 81481980 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81481984 | 7F C5 F3 78 */	mr r5, r30
/* 81481988 | 4B FD DA 29 */	bl Zi8GetTableAddress
/* 8148198C | 7C 7C 1B 78 */	mr r28, r3
/* 81481990 | 48 00 01 6C */	b .L_81481AFC
.L_81481994:
/* 81481994 | 38 60 00 12 */	li r3, 0x12
/* 81481998 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8148199C | 38 80 00 26 */	li r4, 0x26
/* 814819A0 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 814819A4 | 7F C5 F3 78 */	mr r5, r30
/* 814819A8 | 4B FD DA 09 */	bl Zi8GetTableAddress
/* 814819AC | 7C 7C 1B 78 */	mr r28, r3
/* 814819B0 | 48 00 01 4C */	b .L_81481AFC
.L_814819B4:
/* 814819B4 | 38 60 00 12 */	li r3, 0x12
/* 814819B8 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814819BC | 38 80 00 27 */	li r4, 0x27
/* 814819C0 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 814819C4 | 7F C5 F3 78 */	mr r5, r30
/* 814819C8 | 4B FD D9 E9 */	bl Zi8GetTableAddress
/* 814819CC | 7C 7C 1B 78 */	mr r28, r3
/* 814819D0 | 48 00 01 2C */	b .L_81481AFC
.L_814819D4:
/* 814819D4 | 38 60 00 12 */	li r3, 0x12
/* 814819D8 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814819DC | 38 80 00 28 */	li r4, 0x28
/* 814819E0 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 814819E4 | 7F C5 F3 78 */	mr r5, r30
/* 814819E8 | 4B FD D9 C9 */	bl Zi8GetTableAddress
/* 814819EC | 7C 7C 1B 78 */	mr r28, r3
/* 814819F0 | 48 00 01 0C */	b .L_81481AFC
.L_814819F4:
/* 814819F4 | 38 60 00 12 */	li r3, 0x12
/* 814819F8 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814819FC | 38 80 00 29 */	li r4, 0x29
/* 81481A00 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81481A04 | 7F C5 F3 78 */	mr r5, r30
/* 81481A08 | 4B FD D9 A9 */	bl Zi8GetTableAddress
/* 81481A0C | 7C 7C 1B 78 */	mr r28, r3
/* 81481A10 | 48 00 00 EC */	b .L_81481AFC
.L_81481A14:
/* 81481A14 | 38 60 00 12 */	li r3, 0x12
/* 81481A18 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81481A1C | 38 80 00 2A */	li r4, 0x2a
/* 81481A20 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81481A24 | 7F C5 F3 78 */	mr r5, r30
/* 81481A28 | 4B FD D9 89 */	bl Zi8GetTableAddress
/* 81481A2C | 7C 7C 1B 78 */	mr r28, r3
/* 81481A30 | 48 00 00 CC */	b .L_81481AFC
.L_81481A34:
/* 81481A34 | 38 60 00 12 */	li r3, 0x12
/* 81481A38 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81481A3C | 38 80 00 2B */	li r4, 0x2b
/* 81481A40 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81481A44 | 7F C5 F3 78 */	mr r5, r30
/* 81481A48 | 4B FD D9 69 */	bl Zi8GetTableAddress
/* 81481A4C | 7C 7C 1B 78 */	mr r28, r3
/* 81481A50 | 48 00 00 AC */	b .L_81481AFC
.L_81481A54:
/* 81481A54 | 38 60 00 12 */	li r3, 0x12
/* 81481A58 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81481A5C | 38 80 00 2C */	li r4, 0x2c
/* 81481A60 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81481A64 | 7F C5 F3 78 */	mr r5, r30
/* 81481A68 | 4B FD D9 49 */	bl Zi8GetTableAddress
/* 81481A6C | 7C 7C 1B 78 */	mr r28, r3
/* 81481A70 | 48 00 00 8C */	b .L_81481AFC
.L_81481A74:
/* 81481A74 | 38 60 00 12 */	li r3, 0x12
/* 81481A78 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81481A7C | 38 80 00 2D */	li r4, 0x2d
/* 81481A80 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81481A84 | 7F C5 F3 78 */	mr r5, r30
/* 81481A88 | 4B FD D9 29 */	bl Zi8GetTableAddress
/* 81481A8C | 7C 7C 1B 78 */	mr r28, r3
/* 81481A90 | 48 00 00 6C */	b .L_81481AFC
.L_81481A94:
/* 81481A94 | 38 60 00 12 */	li r3, 0x12
/* 81481A98 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81481A9C | 38 80 00 2E */	li r4, 0x2e
/* 81481AA0 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81481AA4 | 7F C5 F3 78 */	mr r5, r30
/* 81481AA8 | 4B FD D9 09 */	bl Zi8GetTableAddress
/* 81481AAC | 7C 7C 1B 78 */	mr r28, r3
/* 81481AB0 | 48 00 00 4C */	b .L_81481AFC
.L_81481AB4:
/* 81481AB4 | 38 60 00 12 */	li r3, 0x12
/* 81481AB8 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81481ABC | 38 80 00 2F */	li r4, 0x2f
/* 81481AC0 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81481AC4 | 7F C5 F3 78 */	mr r5, r30
/* 81481AC8 | 4B FD D8 E9 */	bl Zi8GetTableAddress
/* 81481ACC | 7C 7C 1B 78 */	mr r28, r3
/* 81481AD0 | 48 00 00 2C */	b .L_81481AFC
.L_81481AD4:
/* 81481AD4 | 38 60 00 12 */	li r3, 0x12
/* 81481AD8 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81481ADC | 38 80 00 30 */	li r4, 0x30
/* 81481AE0 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81481AE4 | 7F C5 F3 78 */	mr r5, r30
/* 81481AE8 | 4B FD D8 C9 */	bl Zi8GetTableAddress
/* 81481AEC | 7C 7C 1B 78 */	mr r28, r3
/* 81481AF0 | 48 00 00 0C */	b .L_81481AFC
.L_81481AF4:
/* 81481AF4 | 38 00 00 00 */	li r0, 0x0
/* 81481AF8 | 98 01 00 09 */	stb r0, 0x9(r1)
.L_81481AFC:
/* 81481AFC | 88 01 00 09 */	lbz r0, 0x9(r1)
/* 81481B00 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81481B04 | 41 82 00 F0 */	beq .L_81481BF4
/* 81481B08 | A0 01 00 16 */	lhz r0, 0x16(r1)
/* 81481B0C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81481B10 | 40 82 00 20 */	bne .L_81481B30
/* 81481B14 | A0 81 00 12 */	lhz r4, 0x12(r1)
/* 81481B18 | A0 61 00 10 */	lhz r3, 0x10(r1)
/* 81481B1C | A0 01 00 18 */	lhz r0, 0x18(r1)
/* 81481B20 | 7C 03 01 D6 */	mullw r0, r3, r0
/* 81481B24 | 7C 04 02 14 */	add r0, r4, r0
/* 81481B28 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81481B2C | B0 01 00 12 */	sth r0, 0x12(r1)
.L_81481B30:
/* 81481B30 | A0 01 00 0E */	lhz r0, 0xe(r1)
/* 81481B34 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81481B38 | 41 82 00 14 */	beq .L_81481B4C
/* 81481B3C | A0 61 00 0E */	lhz r3, 0xe(r1)
/* 81481B40 | 38 03 FF FF */	subi r0, r3, 0x1
/* 81481B44 | B0 01 00 0E */	sth r0, 0xe(r1)
/* 81481B48 | 48 00 00 84 */	b .L_81481BCC
.L_81481B4C:
/* 81481B4C | A0 01 00 12 */	lhz r0, 0x12(r1)
/* 81481B50 | 54 00 08 3C */	slwi r0, r0, 1
/* 81481B54 | 7C 1C 00 AE */	lbzx r0, r28, r0
/* 81481B58 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81481B5C | 54 04 40 2E */	slwi r4, r0, 8
/* 81481B60 | A0 01 00 12 */	lhz r0, 0x12(r1)
/* 81481B64 | 54 00 08 3C */	slwi r0, r0, 1
/* 81481B68 | 7C 7C 02 14 */	add r3, r28, r0
/* 81481B6C | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 81481B70 | 7C 80 03 78 */	or r0, r4, r0
/* 81481B74 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81481B78 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 81481B7C | 57 60 06 3E */	clrlwi r0, r27, 24
/* 81481B80 | 54 00 08 3C */	slwi r0, r0, 1
/* 81481B84 | 7C 83 03 2E */	sthx r4, r3, r0
/* 81481B88 | A0 01 00 16 */	lhz r0, 0x16(r1)
/* 81481B8C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81481B90 | 41 82 00 38 */	beq .L_81481BC8
/* 81481B94 | 88 1E 1B 30 */	lbz r0, 0x1b30(r30)
/* 81481B98 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81481B9C | 40 82 00 2C */	bne .L_81481BC8
/* 81481BA0 | 80 DF 00 18 */	lwz r6, 0x18(r31)
/* 81481BA4 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 81481BA8 | 54 05 08 3C */	slwi r5, r0, 1
/* 81481BAC | 7C 86 2A 2E */	lhzx r4, r6, r5
/* 81481BB0 | A0 61 00 10 */	lhz r3, 0x10(r1)
/* 81481BB4 | A0 01 00 18 */	lhz r0, 0x18(r1)
/* 81481BB8 | 7C 03 01 D6 */	mullw r0, r3, r0
/* 81481BBC | 7C 04 02 14 */	add r0, r4, r0
/* 81481BC0 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81481BC4 | 7C 06 2B 2E */	sthx r0, r6, r5
.L_81481BC8:
/* 81481BC8 | 3B 7B 00 01 */	addi r27, r27, 0x1
.L_81481BCC:
/* 81481BCC | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 81481BD0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81481BD4 | 40 82 00 14 */	bne .L_81481BE8
/* 81481BD8 | 88 61 00 09 */	lbz r3, 0x9(r1)
/* 81481BDC | 38 03 00 01 */	addi r0, r3, 0x1
/* 81481BE0 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81481BE4 | 98 1F 00 22 */	stb r0, 0x22(r31)
.L_81481BE8:
/* 81481BE8 | 88 01 00 09 */	lbz r0, 0x9(r1)
/* 81481BEC | 7F BD 02 14 */	add r29, r29, r0
/* 81481BF0 | 48 00 02 28 */	b .L_81481E18
.L_81481BF4:
/* 81481BF4 | A0 01 00 0E */	lhz r0, 0xe(r1)
/* 81481BF8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81481BFC | 41 82 00 C8 */	beq .L_81481CC4
/* 81481C00 | 38 00 00 00 */	li r0, 0x0
/* 81481C04 | B0 01 00 0C */	sth r0, 0xc(r1)
/* 81481C08 | 48 00 00 70 */	b .L_81481C78
.L_81481C0C:
/* 81481C0C | 80 81 00 1C */	lwz r4, 0x1c(r1)
/* 81481C10 | A0 61 00 0C */	lhz r3, 0xc(r1)
/* 81481C14 | 54 60 10 3A */	slwi r0, r3, 2
/* 81481C18 | 7C 03 00 50 */	subf r0, r3, r0
/* 81481C1C | 7C 84 00 AE */	lbzx r4, r4, r0
/* 81481C20 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 81481C24 | 54 00 08 3C */	slwi r0, r0, 1
/* 81481C28 | 38 61 00 28 */	addi r3, r1, 0x28
/* 81481C2C | 7C 03 02 2E */	lhzx r0, r3, r0
/* 81481C30 | 7C 04 00 00 */	cmpw r4, r0
/* 81481C34 | 40 82 00 38 */	bne .L_81481C6C
/* 81481C38 | 80 81 00 1C */	lwz r4, 0x1c(r1)
/* 81481C3C | A0 61 00 0C */	lhz r3, 0xc(r1)
/* 81481C40 | 54 60 10 3A */	slwi r0, r3, 2
/* 81481C44 | 7C 03 00 50 */	subf r0, r3, r0
/* 81481C48 | 7C 64 02 14 */	add r3, r4, r0
/* 81481C4C | 88 83 00 01 */	lbz r4, 0x1(r3)
/* 81481C50 | 57 A3 04 3E */	clrlwi r3, r29, 16
/* 81481C54 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81481C58 | 54 00 08 3C */	slwi r0, r0, 1
/* 81481C5C | 38 61 00 28 */	addi r3, r1, 0x28
/* 81481C60 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 81481C64 | 7C 04 00 00 */	cmpw r4, r0
/* 81481C68 | 41 82 00 24 */	beq .L_81481C8C
.L_81481C6C:
/* 81481C6C | A0 61 00 0C */	lhz r3, 0xc(r1)
/* 81481C70 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81481C74 | B0 01 00 0C */	sth r0, 0xc(r1)
.L_81481C78:
/* 81481C78 | A0 01 00 0C */	lhz r0, 0xc(r1)
/* 81481C7C | 54 03 04 3E */	clrlwi r3, r0, 16
/* 81481C80 | A0 01 00 14 */	lhz r0, 0x14(r1)
/* 81481C84 | 7C 03 00 40 */	cmplw r3, r0
/* 81481C88 | 41 80 FF 84 */	blt .L_81481C0C
.L_81481C8C:
/* 81481C8C | A0 01 00 0C */	lhz r0, 0xc(r1)
/* 81481C90 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 81481C94 | A0 01 00 14 */	lhz r0, 0x14(r1)
/* 81481C98 | 7C 03 00 40 */	cmplw r3, r0
/* 81481C9C | 40 82 00 10 */	bne .L_81481CAC
/* 81481CA0 | A0 61 00 0E */	lhz r3, 0xe(r1)
/* 81481CA4 | 38 03 FF FF */	subi r0, r3, 0x1
/* 81481CA8 | B0 01 00 0E */	sth r0, 0xe(r1)
.L_81481CAC:
/* 81481CAC | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 81481CB0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81481CB4 | 40 82 01 64 */	bne .L_81481E18
/* 81481CB8 | 38 00 00 01 */	li r0, 0x1
/* 81481CBC | 98 1F 00 22 */	stb r0, 0x22(r31)
/* 81481CC0 | 48 00 01 58 */	b .L_81481E18
.L_81481CC4:
/* 81481CC4 | 38 00 00 00 */	li r0, 0x0
/* 81481CC8 | B0 01 00 0C */	sth r0, 0xc(r1)
/* 81481CCC | 48 00 00 C4 */	b .L_81481D90
.L_81481CD0:
/* 81481CD0 | 80 81 00 1C */	lwz r4, 0x1c(r1)
/* 81481CD4 | A0 61 00 0C */	lhz r3, 0xc(r1)
/* 81481CD8 | 54 60 10 3A */	slwi r0, r3, 2
/* 81481CDC | 7C 03 00 50 */	subf r0, r3, r0
/* 81481CE0 | 7C 84 00 AE */	lbzx r4, r4, r0
/* 81481CE4 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 81481CE8 | 54 00 08 3C */	slwi r0, r0, 1
/* 81481CEC | 38 61 00 28 */	addi r3, r1, 0x28
/* 81481CF0 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 81481CF4 | 7C 04 00 00 */	cmpw r4, r0
/* 81481CF8 | 40 82 00 8C */	bne .L_81481D84
/* 81481CFC | 80 81 00 1C */	lwz r4, 0x1c(r1)
/* 81481D00 | A0 61 00 0C */	lhz r3, 0xc(r1)
/* 81481D04 | 54 60 10 3A */	slwi r0, r3, 2
/* 81481D08 | 7C 03 00 50 */	subf r0, r3, r0
/* 81481D0C | 7C 64 02 14 */	add r3, r4, r0
/* 81481D10 | 88 83 00 01 */	lbz r4, 0x1(r3)
/* 81481D14 | 57 A3 04 3E */	clrlwi r3, r29, 16
/* 81481D18 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81481D1C | 54 00 08 3C */	slwi r0, r0, 1
/* 81481D20 | 38 61 00 28 */	addi r3, r1, 0x28
/* 81481D24 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 81481D28 | 7C 04 00 00 */	cmpw r4, r0
/* 81481D2C | 40 82 00 58 */	bne .L_81481D84
/* 81481D30 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 81481D34 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81481D38 | 40 82 00 0C */	bne .L_81481D44
/* 81481D3C | 38 00 00 01 */	li r0, 0x1
/* 81481D40 | 98 1F 00 22 */	stb r0, 0x22(r31)
.L_81481D44:
/* 81481D44 | A0 A1 00 1A */	lhz r5, 0x1a(r1)
/* 81481D48 | 80 81 00 1C */	lwz r4, 0x1c(r1)
/* 81481D4C | A0 61 00 0C */	lhz r3, 0xc(r1)
/* 81481D50 | 54 60 10 3A */	slwi r0, r3, 2
/* 81481D54 | 7C 03 00 50 */	subf r0, r3, r0
/* 81481D58 | 7C 64 02 14 */	add r3, r4, r0
/* 81481D5C | 88 03 00 02 */	lbz r0, 0x2(r3)
/* 81481D60 | 7C 05 02 14 */	add r0, r5, r0
/* 81481D64 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81481D68 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 81481D6C | 57 60 06 3E */	clrlwi r0, r27, 24
/* 81481D70 | 54 00 08 3C */	slwi r0, r0, 1
/* 81481D74 | 7C 83 03 2E */	sthx r4, r3, r0
/* 81481D78 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81481D7C | 3B BD 00 01 */	addi r29, r29, 0x1
/* 81481D80 | 48 00 00 24 */	b .L_81481DA4
.L_81481D84:
/* 81481D84 | A0 61 00 0C */	lhz r3, 0xc(r1)
/* 81481D88 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81481D8C | B0 01 00 0C */	sth r0, 0xc(r1)
.L_81481D90:
/* 81481D90 | A0 01 00 0C */	lhz r0, 0xc(r1)
/* 81481D94 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 81481D98 | A0 01 00 14 */	lhz r0, 0x14(r1)
/* 81481D9C | 7C 03 00 40 */	cmplw r3, r0
/* 81481DA0 | 41 80 FF 30 */	blt .L_81481CD0
.L_81481DA4:
/* 81481DA4 | A0 01 00 0C */	lhz r0, 0xc(r1)
/* 81481DA8 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81481DAC | A0 61 00 14 */	lhz r3, 0x14(r1)
/* 81481DB0 | 7C 00 18 40 */	cmplw r0, r3
/* 81481DB4 | 40 82 00 64 */	bne .L_81481E18
/* 81481DB8 | 57 A3 04 3E */	clrlwi r3, r29, 16
/* 81481DBC | 54 63 08 3C */	slwi r3, r3, 1
/* 81481DC0 | 38 81 00 28 */	addi r4, r1, 0x28
/* 81481DC4 | 7C 64 1A 2E */	lhzx r3, r4, r3
/* 81481DC8 | 80 9F 00 18 */	lwz r4, 0x18(r31)
/* 81481DCC | 57 60 06 3E */	clrlwi r0, r27, 24
/* 81481DD0 | 54 00 08 3C */	slwi r0, r0, 1
/* 81481DD4 | 7C 64 03 2E */	sthx r3, r4, r0
/* 81481DD8 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81481DDC | 28 00 00 FF */	cmplwi r0, 0xff
/* 81481DE0 | 40 80 00 38 */	bge .L_81481E18
/* 81481DE4 | 57 A3 04 3E */	clrlwi r3, r29, 16
/* 81481DE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81481DEC | 40 82 00 0C */	bne .L_81481DF8
/* 81481DF0 | 38 00 00 01 */	li r0, 0x1
/* 81481DF4 | 98 1F 00 22 */	stb r0, 0x22(r31)
.L_81481DF8:
/* 81481DF8 | 80 DF 00 18 */	lwz r6, 0x18(r31)
/* 81481DFC | 57 60 06 3E */	clrlwi r0, r27, 24
/* 81481E00 | 54 05 08 3C */	slwi r5, r0, 1
/* 81481E04 | 7C 86 2A 2E */	lhzx r4, r6, r5
/* 81481E08 | A0 61 00 1A */	lhz r3, 0x1a(r1)
/* 81481E0C | 7C 04 1A 14 */	add r0, r4, r3
/* 81481E10 | 7C 06 2B 2E */	sthx r0, r6, r5
/* 81481E14 | 3B 7B 00 01 */	addi r27, r27, 0x1
.L_81481E18:
/* 81481E18 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 81481E1C | 88 9F 00 1C */	lbz r4, 0x1c(r31)
/* 81481E20 | 7C 00 20 40 */	cmplw r0, r4
/* 81481E24 | 40 80 00 18 */	bge .L_81481E3C
/* 81481E28 | 3B BD 00 01 */	addi r29, r29, 0x1
.L_81481E2C:
/* 81481E2C | 57 A3 04 3E */	clrlwi r3, r29, 16
/* 81481E30 | 88 01 00 0A */	lbz r0, 0xa(r1)
/* 81481E34 | 7C 03 00 00 */	cmpw r3, r0
/* 81481E38 | 41 80 F9 C8 */	blt .L_81481800
.L_81481E3C:
/* 81481E3C | 9B 7F 00 21 */	stb r27, 0x21(r31)
/* 81481E40 | 38 60 00 64 */	li r3, 0x64
/* 81481E44 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81481E48 | 7F C4 F3 78 */	mr r4, r30
/* 81481E4C | 48 00 26 31 */	bl Zi8LogError
/* 81481E50 | 57 63 06 3E */	clrlwi r3, r27, 24
.L_81481E54:
/* 81481E54 | 39 61 01 10 */	addi r11, r1, 0x110
/* 81481E58 | 48 17 76 B1 */	bl _restgpr_26
/* 81481E5C | 80 01 01 14 */	lwz r0, 0x114(r1)
/* 81481E60 | 7C 08 03 A6 */	mtlr r0
/* 81481E64 | 38 21 01 10 */	addi r1, r1, 0x110
/* 81481E68 | 4E 80 00 20 */	blr
.endfn Zi8GetKoreanCandidates

# .text:0xA70 | 0x81481E6C | size: 0x9D4
.fn Zi8_81481E6C, global
/* 81481E6C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81481E70 | 7C 08 02 A6 */	mflr r0
/* 81481E74 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81481E78 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81481E7C | 48 17 76 41 */	bl _savegpr_26
/* 81481E80 | 7C 7B 1B 78 */	mr r27, r3
/* 81481E84 | 7C 9D 23 78 */	mr r29, r4
/* 81481E88 | 98 A1 00 08 */	stb r5, 0x8(r1)
/* 81481E8C | 7C DA 33 78 */	mr r26, r6
/* 81481E90 | 7C FE 3B 78 */	mr r30, r7
/* 81481E94 | A0 1D 00 00 */	lhz r0, 0x0(r29)
/* 81481E98 | B0 01 00 0A */	sth r0, 0xa(r1)
/* 81481E9C | 38 00 00 FF */	li r0, 0xff
/* 81481EA0 | 98 01 00 09 */	stb r0, 0x9(r1)
/* 81481EA4 | 88 1E 1B 30 */	lbz r0, 0x1b30(r30)
/* 81481EA8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81481EAC | 40 82 00 40 */	bne .L_81481EEC
/* 81481EB0 | 38 60 00 12 */	li r3, 0x12
/* 81481EB4 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81481EB8 | 38 80 00 03 */	li r4, 0x3
/* 81481EBC | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81481EC0 | 7F C5 F3 78 */	mr r5, r30
/* 81481EC4 | 4B FD D4 ED */	bl Zi8GetTableAddress
/* 81481EC8 | 7C 7F 1B 78 */	mr r31, r3
/* 81481ECC | 38 60 00 12 */	li r3, 0x12
/* 81481ED0 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81481ED4 | 38 80 00 03 */	li r4, 0x3
/* 81481ED8 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81481EDC | 7F C5 F3 78 */	mr r5, r30
/* 81481EE0 | 4B FD D5 51 */	bl Zi8GetTableCount
/* 81481EE4 | 7C 7C 1B 78 */	mr r28, r3
/* 81481EE8 | 48 00 04 98 */	b .L_81482380
.L_81481EEC:
/* 81481EEC | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 81481EF0 | 28 00 00 1E */	cmplwi r0, 0x1e
/* 81481EF4 | 41 81 04 8C */	bgt .L_81482380
/* 81481EF8 | 3C 60 81 67 */	lis r3, jumptable_8166B32C@ha
/* 81481EFC | 38 63 B3 2C */	addi r3, r3, jumptable_8166B32C@l
/* 81481F00 | 54 00 10 3A */	slwi r0, r0, 2
/* 81481F04 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 81481F08 | 7C 69 03 A6 */	mtctr r3
/* 81481F0C | 4E 80 04 20 */	bctr
.L_81481F10:
/* 81481F10 | 38 60 00 12 */	li r3, 0x12
/* 81481F14 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81481F18 | 38 80 00 0B */	li r4, 0xb
/* 81481F1C | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81481F20 | 7F C5 F3 78 */	mr r5, r30
/* 81481F24 | 4B FD D4 8D */	bl Zi8GetTableAddress
/* 81481F28 | 7C 7F 1B 78 */	mr r31, r3
/* 81481F2C | 38 60 00 12 */	li r3, 0x12
/* 81481F30 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81481F34 | 38 80 00 0B */	li r4, 0xb
/* 81481F38 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81481F3C | 7F C5 F3 78 */	mr r5, r30
/* 81481F40 | 4B FD D4 F1 */	bl Zi8GetTableCount
/* 81481F44 | 7C 7C 1B 78 */	mr r28, r3
/* 81481F48 | 48 00 04 38 */	b .L_81482380
.L_81481F4C:
/* 81481F4C | 38 60 00 12 */	li r3, 0x12
/* 81481F50 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81481F54 | 38 80 00 0C */	li r4, 0xc
/* 81481F58 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81481F5C | 7F C5 F3 78 */	mr r5, r30
/* 81481F60 | 4B FD D4 51 */	bl Zi8GetTableAddress
/* 81481F64 | 7C 7F 1B 78 */	mr r31, r3
/* 81481F68 | 38 60 00 12 */	li r3, 0x12
/* 81481F6C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81481F70 | 38 80 00 0C */	li r4, 0xc
/* 81481F74 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81481F78 | 7F C5 F3 78 */	mr r5, r30
/* 81481F7C | 4B FD D4 B5 */	bl Zi8GetTableCount
/* 81481F80 | 7C 7C 1B 78 */	mr r28, r3
/* 81481F84 | 48 00 03 FC */	b .L_81482380
.L_81481F88:
/* 81481F88 | 38 60 00 12 */	li r3, 0x12
/* 81481F8C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81481F90 | 38 80 00 0D */	li r4, 0xd
/* 81481F94 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81481F98 | 7F C5 F3 78 */	mr r5, r30
/* 81481F9C | 4B FD D4 15 */	bl Zi8GetTableAddress
/* 81481FA0 | 7C 7F 1B 78 */	mr r31, r3
/* 81481FA4 | 38 60 00 12 */	li r3, 0x12
/* 81481FA8 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81481FAC | 38 80 00 0D */	li r4, 0xd
/* 81481FB0 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81481FB4 | 7F C5 F3 78 */	mr r5, r30
/* 81481FB8 | 4B FD D4 79 */	bl Zi8GetTableCount
/* 81481FBC | 7C 7C 1B 78 */	mr r28, r3
/* 81481FC0 | 48 00 03 C0 */	b .L_81482380
.L_81481FC4:
/* 81481FC4 | 38 60 00 12 */	li r3, 0x12
/* 81481FC8 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81481FCC | 38 80 00 0E */	li r4, 0xe
/* 81481FD0 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81481FD4 | 7F C5 F3 78 */	mr r5, r30
/* 81481FD8 | 4B FD D3 D9 */	bl Zi8GetTableAddress
/* 81481FDC | 7C 7F 1B 78 */	mr r31, r3
/* 81481FE0 | 38 60 00 12 */	li r3, 0x12
/* 81481FE4 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81481FE8 | 38 80 00 0E */	li r4, 0xe
/* 81481FEC | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81481FF0 | 7F C5 F3 78 */	mr r5, r30
/* 81481FF4 | 4B FD D4 3D */	bl Zi8GetTableCount
/* 81481FF8 | 7C 7C 1B 78 */	mr r28, r3
/* 81481FFC | 48 00 03 84 */	b .L_81482380
.L_81482000:
/* 81482000 | 38 60 00 12 */	li r3, 0x12
/* 81482004 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81482008 | 38 80 00 0F */	li r4, 0xf
/* 8148200C | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81482010 | 7F C5 F3 78 */	mr r5, r30
/* 81482014 | 4B FD D3 9D */	bl Zi8GetTableAddress
/* 81482018 | 7C 7F 1B 78 */	mr r31, r3
/* 8148201C | 38 60 00 12 */	li r3, 0x12
/* 81482020 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81482024 | 38 80 00 0F */	li r4, 0xf
/* 81482028 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8148202C | 7F C5 F3 78 */	mr r5, r30
/* 81482030 | 4B FD D4 01 */	bl Zi8GetTableCount
/* 81482034 | 7C 7C 1B 78 */	mr r28, r3
/* 81482038 | 48 00 03 48 */	b .L_81482380
.L_8148203C:
/* 8148203C | 38 60 00 12 */	li r3, 0x12
/* 81482040 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81482044 | 38 80 00 10 */	li r4, 0x10
/* 81482048 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8148204C | 7F C5 F3 78 */	mr r5, r30
/* 81482050 | 4B FD D3 61 */	bl Zi8GetTableAddress
/* 81482054 | 7C 7F 1B 78 */	mr r31, r3
/* 81482058 | 38 60 00 12 */	li r3, 0x12
/* 8148205C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81482060 | 38 80 00 10 */	li r4, 0x10
/* 81482064 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81482068 | 7F C5 F3 78 */	mr r5, r30
/* 8148206C | 4B FD D3 C5 */	bl Zi8GetTableCount
/* 81482070 | 7C 7C 1B 78 */	mr r28, r3
/* 81482074 | 48 00 03 0C */	b .L_81482380
.L_81482078:
/* 81482078 | 38 60 00 12 */	li r3, 0x12
/* 8148207C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81482080 | 38 80 00 11 */	li r4, 0x11
/* 81482084 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81482088 | 7F C5 F3 78 */	mr r5, r30
/* 8148208C | 4B FD D3 25 */	bl Zi8GetTableAddress
/* 81482090 | 7C 7F 1B 78 */	mr r31, r3
/* 81482094 | 38 60 00 12 */	li r3, 0x12
/* 81482098 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8148209C | 38 80 00 11 */	li r4, 0x11
/* 814820A0 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 814820A4 | 7F C5 F3 78 */	mr r5, r30
/* 814820A8 | 4B FD D3 89 */	bl Zi8GetTableCount
/* 814820AC | 7C 7C 1B 78 */	mr r28, r3
/* 814820B0 | 48 00 02 D0 */	b .L_81482380
.L_814820B4:
/* 814820B4 | 38 60 00 12 */	li r3, 0x12
/* 814820B8 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814820BC | 38 80 00 12 */	li r4, 0x12
/* 814820C0 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 814820C4 | 7F C5 F3 78 */	mr r5, r30
/* 814820C8 | 4B FD D2 E9 */	bl Zi8GetTableAddress
/* 814820CC | 7C 7F 1B 78 */	mr r31, r3
/* 814820D0 | 38 60 00 12 */	li r3, 0x12
/* 814820D4 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814820D8 | 38 80 00 12 */	li r4, 0x12
/* 814820DC | 54 84 06 3E */	clrlwi r4, r4, 24
/* 814820E0 | 7F C5 F3 78 */	mr r5, r30
/* 814820E4 | 4B FD D3 4D */	bl Zi8GetTableCount
/* 814820E8 | 7C 7C 1B 78 */	mr r28, r3
/* 814820EC | 48 00 02 94 */	b .L_81482380
.L_814820F0:
/* 814820F0 | 38 60 00 12 */	li r3, 0x12
/* 814820F4 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814820F8 | 38 80 00 13 */	li r4, 0x13
/* 814820FC | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81482100 | 7F C5 F3 78 */	mr r5, r30
/* 81482104 | 4B FD D2 AD */	bl Zi8GetTableAddress
/* 81482108 | 7C 7F 1B 78 */	mr r31, r3
/* 8148210C | 38 60 00 12 */	li r3, 0x12
/* 81482110 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81482114 | 38 80 00 13 */	li r4, 0x13
/* 81482118 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8148211C | 7F C5 F3 78 */	mr r5, r30
/* 81482120 | 4B FD D3 11 */	bl Zi8GetTableCount
/* 81482124 | 7C 7C 1B 78 */	mr r28, r3
/* 81482128 | 48 00 02 58 */	b .L_81482380
.L_8148212C:
/* 8148212C | 38 60 00 12 */	li r3, 0x12
/* 81482130 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81482134 | 38 80 00 14 */	li r4, 0x14
/* 81482138 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8148213C | 7F C5 F3 78 */	mr r5, r30
/* 81482140 | 4B FD D2 71 */	bl Zi8GetTableAddress
/* 81482144 | 7C 7F 1B 78 */	mr r31, r3
/* 81482148 | 38 60 00 12 */	li r3, 0x12
/* 8148214C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81482150 | 38 80 00 14 */	li r4, 0x14
/* 81482154 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81482158 | 7F C5 F3 78 */	mr r5, r30
/* 8148215C | 4B FD D2 D5 */	bl Zi8GetTableCount
/* 81482160 | 7C 7C 1B 78 */	mr r28, r3
/* 81482164 | 48 00 02 1C */	b .L_81482380
.L_81482168:
/* 81482168 | 38 60 00 12 */	li r3, 0x12
/* 8148216C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81482170 | 38 80 00 15 */	li r4, 0x15
/* 81482174 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81482178 | 7F C5 F3 78 */	mr r5, r30
/* 8148217C | 4B FD D2 35 */	bl Zi8GetTableAddress
/* 81482180 | 7C 7F 1B 78 */	mr r31, r3
/* 81482184 | 38 60 00 12 */	li r3, 0x12
/* 81482188 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8148218C | 38 80 00 15 */	li r4, 0x15
/* 81482190 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81482194 | 7F C5 F3 78 */	mr r5, r30
/* 81482198 | 4B FD D2 99 */	bl Zi8GetTableCount
/* 8148219C | 7C 7C 1B 78 */	mr r28, r3
/* 814821A0 | 48 00 01 E0 */	b .L_81482380
.L_814821A4:
/* 814821A4 | 38 60 00 12 */	li r3, 0x12
/* 814821A8 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814821AC | 38 80 00 16 */	li r4, 0x16
/* 814821B0 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 814821B4 | 7F C5 F3 78 */	mr r5, r30
/* 814821B8 | 4B FD D1 F9 */	bl Zi8GetTableAddress
/* 814821BC | 7C 7F 1B 78 */	mr r31, r3
/* 814821C0 | 38 60 00 12 */	li r3, 0x12
/* 814821C4 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814821C8 | 38 80 00 16 */	li r4, 0x16
/* 814821CC | 54 84 06 3E */	clrlwi r4, r4, 24
/* 814821D0 | 7F C5 F3 78 */	mr r5, r30
/* 814821D4 | 4B FD D2 5D */	bl Zi8GetTableCount
/* 814821D8 | 7C 7C 1B 78 */	mr r28, r3
/* 814821DC | 48 00 01 A4 */	b .L_81482380
.L_814821E0:
/* 814821E0 | 38 60 00 12 */	li r3, 0x12
/* 814821E4 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814821E8 | 38 80 00 17 */	li r4, 0x17
/* 814821EC | 54 84 06 3E */	clrlwi r4, r4, 24
/* 814821F0 | 7F C5 F3 78 */	mr r5, r30
/* 814821F4 | 4B FD D1 BD */	bl Zi8GetTableAddress
/* 814821F8 | 7C 7F 1B 78 */	mr r31, r3
/* 814821FC | 38 60 00 12 */	li r3, 0x12
/* 81482200 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81482204 | 38 80 00 17 */	li r4, 0x17
/* 81482208 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8148220C | 7F C5 F3 78 */	mr r5, r30
/* 81482210 | 4B FD D2 21 */	bl Zi8GetTableCount
/* 81482214 | 7C 7C 1B 78 */	mr r28, r3
/* 81482218 | 48 00 01 68 */	b .L_81482380
.L_8148221C:
/* 8148221C | 38 60 00 12 */	li r3, 0x12
/* 81482220 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81482224 | 38 80 00 18 */	li r4, 0x18
/* 81482228 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8148222C | 7F C5 F3 78 */	mr r5, r30
/* 81482230 | 4B FD D1 81 */	bl Zi8GetTableAddress
/* 81482234 | 7C 7F 1B 78 */	mr r31, r3
/* 81482238 | 38 60 00 12 */	li r3, 0x12
/* 8148223C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81482240 | 38 80 00 18 */	li r4, 0x18
/* 81482244 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81482248 | 7F C5 F3 78 */	mr r5, r30
/* 8148224C | 4B FD D1 E5 */	bl Zi8GetTableCount
/* 81482250 | 7C 7C 1B 78 */	mr r28, r3
/* 81482254 | 48 00 01 2C */	b .L_81482380
.L_81482258:
/* 81482258 | 38 60 00 12 */	li r3, 0x12
/* 8148225C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81482260 | 38 80 00 19 */	li r4, 0x19
/* 81482264 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81482268 | 7F C5 F3 78 */	mr r5, r30
/* 8148226C | 4B FD D1 45 */	bl Zi8GetTableAddress
/* 81482270 | 7C 7F 1B 78 */	mr r31, r3
/* 81482274 | 38 60 00 12 */	li r3, 0x12
/* 81482278 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8148227C | 38 80 00 19 */	li r4, 0x19
/* 81482280 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81482284 | 7F C5 F3 78 */	mr r5, r30
/* 81482288 | 4B FD D1 A9 */	bl Zi8GetTableCount
/* 8148228C | 7C 7C 1B 78 */	mr r28, r3
/* 81482290 | 48 00 00 F0 */	b .L_81482380
.L_81482294:
/* 81482294 | 38 60 00 12 */	li r3, 0x12
/* 81482298 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8148229C | 38 80 00 1A */	li r4, 0x1a
/* 814822A0 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 814822A4 | 7F C5 F3 78 */	mr r5, r30
/* 814822A8 | 4B FD D1 09 */	bl Zi8GetTableAddress
/* 814822AC | 7C 7F 1B 78 */	mr r31, r3
/* 814822B0 | 38 60 00 12 */	li r3, 0x12
/* 814822B4 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814822B8 | 38 80 00 1A */	li r4, 0x1a
/* 814822BC | 54 84 06 3E */	clrlwi r4, r4, 24
/* 814822C0 | 7F C5 F3 78 */	mr r5, r30
/* 814822C4 | 4B FD D1 6D */	bl Zi8GetTableCount
/* 814822C8 | 7C 7C 1B 78 */	mr r28, r3
/* 814822CC | 48 00 00 B4 */	b .L_81482380
.L_814822D0:
/* 814822D0 | 38 60 00 12 */	li r3, 0x12
/* 814822D4 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814822D8 | 38 80 00 1B */	li r4, 0x1b
/* 814822DC | 54 84 06 3E */	clrlwi r4, r4, 24
/* 814822E0 | 7F C5 F3 78 */	mr r5, r30
/* 814822E4 | 4B FD D0 CD */	bl Zi8GetTableAddress
/* 814822E8 | 7C 7F 1B 78 */	mr r31, r3
/* 814822EC | 38 60 00 12 */	li r3, 0x12
/* 814822F0 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814822F4 | 38 80 00 1B */	li r4, 0x1b
/* 814822F8 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 814822FC | 7F C5 F3 78 */	mr r5, r30
/* 81482300 | 4B FD D1 31 */	bl Zi8GetTableCount
/* 81482304 | 7C 7C 1B 78 */	mr r28, r3
/* 81482308 | 48 00 00 78 */	b .L_81482380
.L_8148230C:
/* 8148230C | 38 60 00 12 */	li r3, 0x12
/* 81482310 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81482314 | 38 80 00 1C */	li r4, 0x1c
/* 81482318 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8148231C | 7F C5 F3 78 */	mr r5, r30
/* 81482320 | 4B FD D0 91 */	bl Zi8GetTableAddress
/* 81482324 | 7C 7F 1B 78 */	mr r31, r3
/* 81482328 | 38 60 00 12 */	li r3, 0x12
/* 8148232C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81482330 | 38 80 00 1C */	li r4, 0x1c
/* 81482334 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81482338 | 7F C5 F3 78 */	mr r5, r30
/* 8148233C | 4B FD D0 F5 */	bl Zi8GetTableCount
/* 81482340 | 7C 7C 1B 78 */	mr r28, r3
/* 81482344 | 48 00 00 3C */	b .L_81482380
.L_81482348:
/* 81482348 | 38 60 00 12 */	li r3, 0x12
/* 8148234C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81482350 | 38 80 00 1D */	li r4, 0x1d
/* 81482354 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81482358 | 7F C5 F3 78 */	mr r5, r30
/* 8148235C | 4B FD D0 55 */	bl Zi8GetTableAddress
/* 81482360 | 7C 7F 1B 78 */	mr r31, r3
/* 81482364 | 38 60 00 12 */	li r3, 0x12
/* 81482368 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8148236C | 38 80 00 1D */	li r4, 0x1d
/* 81482370 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81482374 | 7F C5 F3 78 */	mr r5, r30
/* 81482378 | 4B FD D0 B9 */	bl Zi8GetTableCount
/* 8148237C | 7C 7C 1B 78 */	mr r28, r3
.L_81482380:
/* 81482380 | 38 00 00 00 */	li r0, 0x0
/* 81482384 | B0 1B 00 00 */	sth r0, 0x0(r27)
/* 81482388 | 57 40 04 3E */	clrlwi r0, r26, 16
/* 8148238C | 28 00 00 01 */	cmplwi r0, 0x1
/* 81482390 | 41 80 00 10 */	blt .L_814823A0
/* 81482394 | A0 01 00 0A */	lhz r0, 0xa(r1)
/* 81482398 | 28 00 00 FF */	cmplwi r0, 0xff
/* 8148239C | 41 80 00 0C */	blt .L_814823A8
.L_814823A0:
/* 814823A0 | 38 60 00 00 */	li r3, 0x0
/* 814823A4 | 48 00 04 84 */	b .L_81482828
.L_814823A8:
/* 814823A8 | A0 1B 00 00 */	lhz r0, 0x0(r27)
/* 814823AC | B0 01 00 12 */	sth r0, 0x12(r1)
/* 814823B0 | 48 00 00 28 */	b .L_814823D8
.L_814823B4:
/* 814823B4 | A0 01 00 12 */	lhz r0, 0x12(r1)
/* 814823B8 | 54 00 10 3A */	slwi r0, r0, 2
/* 814823BC | 7C 7F 00 AE */	lbzx r3, r31, r0
/* 814823C0 | A0 01 00 0A */	lhz r0, 0xa(r1)
/* 814823C4 | 7C 03 00 00 */	cmpw r3, r0
/* 814823C8 | 40 80 00 24 */	bge .L_814823EC
/* 814823CC | A0 61 00 12 */	lhz r3, 0x12(r1)
/* 814823D0 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814823D4 | B0 01 00 12 */	sth r0, 0x12(r1)
.L_814823D8:
/* 814823D8 | A0 01 00 12 */	lhz r0, 0x12(r1)
/* 814823DC | 54 03 04 3E */	clrlwi r3, r0, 16
/* 814823E0 | 57 80 04 3E */	clrlwi r0, r28, 16
/* 814823E4 | 7C 03 00 40 */	cmplw r3, r0
/* 814823E8 | 41 80 FF CC */	blt .L_814823B4
.L_814823EC:
/* 814823EC | A0 01 00 12 */	lhz r0, 0x12(r1)
/* 814823F0 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 814823F4 | 57 80 04 3E */	clrlwi r0, r28, 16
/* 814823F8 | 7C 03 00 40 */	cmplw r3, r0
/* 814823FC | 40 80 00 1C */	bge .L_81482418
/* 81482400 | A0 61 00 0A */	lhz r3, 0xa(r1)
/* 81482404 | A0 01 00 12 */	lhz r0, 0x12(r1)
/* 81482408 | 54 00 10 3A */	slwi r0, r0, 2
/* 8148240C | 7C 1F 00 AE */	lbzx r0, r31, r0
/* 81482410 | 7C 03 00 00 */	cmpw r3, r0
/* 81482414 | 41 82 00 0C */	beq .L_81482420
.L_81482418:
/* 81482418 | 38 60 00 00 */	li r3, 0x0
/* 8148241C | 48 00 04 0C */	b .L_81482828
.L_81482420:
/* 81482420 | 57 40 04 3E */	clrlwi r0, r26, 16
/* 81482424 | 28 00 00 02 */	cmplwi r0, 0x2
/* 81482428 | 41 80 00 18 */	blt .L_81482440
/* 8148242C | A0 1D 00 02 */	lhz r0, 0x2(r29)
/* 81482430 | B0 01 00 0A */	sth r0, 0xa(r1)
/* 81482434 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81482438 | 28 00 00 FF */	cmplwi r0, 0xff
/* 8148243C | 41 80 00 14 */	blt .L_81482450
.L_81482440:
/* 81482440 | A0 01 00 12 */	lhz r0, 0x12(r1)
/* 81482444 | B0 1B 00 00 */	sth r0, 0x0(r27)
/* 81482448 | 38 60 00 01 */	li r3, 0x1
/* 8148244C | 48 00 03 DC */	b .L_81482828
.L_81482450:
/* 81482450 | A0 01 00 12 */	lhz r0, 0x12(r1)
/* 81482454 | B0 01 00 10 */	sth r0, 0x10(r1)
/* 81482458 | 48 00 00 2C */	b .L_81482484
.L_8148245C:
/* 8148245C | A0 01 00 10 */	lhz r0, 0x10(r1)
/* 81482460 | 54 00 10 3A */	slwi r0, r0, 2
/* 81482464 | 7C 7F 02 14 */	add r3, r31, r0
/* 81482468 | 88 63 00 01 */	lbz r3, 0x1(r3)
/* 8148246C | A0 01 00 0A */	lhz r0, 0xa(r1)
/* 81482470 | 7C 03 00 00 */	cmpw r3, r0
/* 81482474 | 40 80 00 24 */	bge .L_81482498
/* 81482478 | A0 61 00 10 */	lhz r3, 0x10(r1)
/* 8148247C | 38 03 00 01 */	addi r0, r3, 0x1
/* 81482480 | B0 01 00 10 */	sth r0, 0x10(r1)
.L_81482484:
/* 81482484 | A0 01 00 10 */	lhz r0, 0x10(r1)
/* 81482488 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 8148248C | 57 80 04 3E */	clrlwi r0, r28, 16
/* 81482490 | 7C 03 00 40 */	cmplw r3, r0
/* 81482494 | 41 80 FF C8 */	blt .L_8148245C
.L_81482498:
/* 81482498 | A0 01 00 10 */	lhz r0, 0x10(r1)
/* 8148249C | 54 03 04 3E */	clrlwi r3, r0, 16
/* 814824A0 | 57 80 04 3E */	clrlwi r0, r28, 16
/* 814824A4 | 7C 03 00 40 */	cmplw r3, r0
/* 814824A8 | 40 80 00 38 */	bge .L_814824E0
/* 814824AC | A0 81 00 0A */	lhz r4, 0xa(r1)
/* 814824B0 | A0 01 00 10 */	lhz r0, 0x10(r1)
/* 814824B4 | 54 00 10 3A */	slwi r0, r0, 2
/* 814824B8 | 7C 7F 02 14 */	add r3, r31, r0
/* 814824BC | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 814824C0 | 7C 04 00 00 */	cmpw r4, r0
/* 814824C4 | 40 82 00 1C */	bne .L_814824E0
/* 814824C8 | A0 7D 00 00 */	lhz r3, 0x0(r29)
/* 814824CC | A0 01 00 10 */	lhz r0, 0x10(r1)
/* 814824D0 | 54 00 10 3A */	slwi r0, r0, 2
/* 814824D4 | 7C 1F 00 AE */	lbzx r0, r31, r0
/* 814824D8 | 7C 03 00 00 */	cmpw r3, r0
/* 814824DC | 41 82 00 14 */	beq .L_814824F0
.L_814824E0:
/* 814824E0 | A0 01 00 12 */	lhz r0, 0x12(r1)
/* 814824E4 | B0 1B 00 00 */	sth r0, 0x0(r27)
/* 814824E8 | 38 60 00 01 */	li r3, 0x1
/* 814824EC | 48 00 03 3C */	b .L_81482828
.L_814824F0:
/* 814824F0 | 57 40 04 3E */	clrlwi r0, r26, 16
/* 814824F4 | 28 00 00 03 */	cmplwi r0, 0x3
/* 814824F8 | 41 80 00 18 */	blt .L_81482510
/* 814824FC | A0 1D 00 04 */	lhz r0, 0x4(r29)
/* 81482500 | B0 01 00 0A */	sth r0, 0xa(r1)
/* 81482504 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81482508 | 28 00 00 FF */	cmplwi r0, 0xff
/* 8148250C | 41 80 00 14 */	blt .L_81482520
.L_81482510:
/* 81482510 | A0 01 00 10 */	lhz r0, 0x10(r1)
/* 81482514 | B0 1B 00 00 */	sth r0, 0x0(r27)
/* 81482518 | 38 60 00 02 */	li r3, 0x2
/* 8148251C | 48 00 03 0C */	b .L_81482828
.L_81482520:
/* 81482520 | A0 01 00 10 */	lhz r0, 0x10(r1)
/* 81482524 | B0 01 00 0E */	sth r0, 0xe(r1)
/* 81482528 | 48 00 00 2C */	b .L_81482554
.L_8148252C:
/* 8148252C | A0 01 00 0E */	lhz r0, 0xe(r1)
/* 81482530 | 54 00 10 3A */	slwi r0, r0, 2
/* 81482534 | 7C 7F 02 14 */	add r3, r31, r0
/* 81482538 | 88 63 00 02 */	lbz r3, 0x2(r3)
/* 8148253C | A0 01 00 0A */	lhz r0, 0xa(r1)
/* 81482540 | 7C 03 00 00 */	cmpw r3, r0
/* 81482544 | 40 80 00 24 */	bge .L_81482568
/* 81482548 | A0 61 00 0E */	lhz r3, 0xe(r1)
/* 8148254C | 38 03 00 01 */	addi r0, r3, 0x1
/* 81482550 | B0 01 00 0E */	sth r0, 0xe(r1)
.L_81482554:
/* 81482554 | A0 01 00 0E */	lhz r0, 0xe(r1)
/* 81482558 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 8148255C | 57 80 04 3E */	clrlwi r0, r28, 16
/* 81482560 | 7C 03 00 40 */	cmplw r3, r0
/* 81482564 | 41 80 FF C8 */	blt .L_8148252C
.L_81482568:
/* 81482568 | A0 01 00 0E */	lhz r0, 0xe(r1)
/* 8148256C | 54 03 04 3E */	clrlwi r3, r0, 16
/* 81482570 | 57 80 04 3E */	clrlwi r0, r28, 16
/* 81482574 | 7C 03 00 40 */	cmplw r3, r0
/* 81482578 | 40 80 00 54 */	bge .L_814825CC
/* 8148257C | A0 81 00 0A */	lhz r4, 0xa(r1)
/* 81482580 | A0 01 00 0E */	lhz r0, 0xe(r1)
/* 81482584 | 54 00 10 3A */	slwi r0, r0, 2
/* 81482588 | 7C 7F 02 14 */	add r3, r31, r0
/* 8148258C | 88 03 00 02 */	lbz r0, 0x2(r3)
/* 81482590 | 7C 04 00 00 */	cmpw r4, r0
/* 81482594 | 40 82 00 38 */	bne .L_814825CC
/* 81482598 | A0 9D 00 02 */	lhz r4, 0x2(r29)
/* 8148259C | A0 01 00 0E */	lhz r0, 0xe(r1)
/* 814825A0 | 54 00 10 3A */	slwi r0, r0, 2
/* 814825A4 | 7C 7F 02 14 */	add r3, r31, r0
/* 814825A8 | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 814825AC | 7C 04 00 00 */	cmpw r4, r0
/* 814825B0 | 40 82 00 1C */	bne .L_814825CC
/* 814825B4 | A0 7D 00 00 */	lhz r3, 0x0(r29)
/* 814825B8 | A0 01 00 0E */	lhz r0, 0xe(r1)
/* 814825BC | 54 00 10 3A */	slwi r0, r0, 2
/* 814825C0 | 7C 1F 00 AE */	lbzx r0, r31, r0
/* 814825C4 | 7C 03 00 00 */	cmpw r3, r0
/* 814825C8 | 41 82 00 6C */	beq .L_81482634
.L_814825CC:
/* 814825CC | A0 7D 00 02 */	lhz r3, 0x2(r29)
/* 814825D0 | 38 81 00 09 */	addi r4, r1, 0x9
/* 814825D4 | 38 A1 00 16 */	addi r5, r1, 0x16
/* 814825D8 | 7F C6 F3 78 */	mr r6, r30
/* 814825DC | 4B FF EE 21 */	bl Zi8_814813FC
/* 814825E0 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 814825E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814825E8 | 41 82 00 3C */	beq .L_81482624
/* 814825EC | 38 61 00 14 */	addi r3, r1, 0x14
/* 814825F0 | 38 9D 00 04 */	addi r4, r29, 0x4
/* 814825F4 | 88 A1 00 09 */	lbz r5, 0x9(r1)
/* 814825F8 | 38 C0 00 01 */	li r6, 0x1
/* 814825FC | 54 C6 04 3E */	clrlwi r6, r6, 16
/* 81482600 | 7F C7 F3 78 */	mr r7, r30
/* 81482604 | 4B FF F8 69 */	bl Zi8_81481E6C
/* 81482608 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8148260C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81482610 | 41 82 00 14 */	beq .L_81482624
/* 81482614 | A0 01 00 12 */	lhz r0, 0x12(r1)
/* 81482618 | B0 1B 00 00 */	sth r0, 0x0(r27)
/* 8148261C | 38 60 00 01 */	li r3, 0x1
/* 81482620 | 48 00 02 08 */	b .L_81482828
.L_81482624:
/* 81482624 | A0 01 00 10 */	lhz r0, 0x10(r1)
/* 81482628 | B0 1B 00 00 */	sth r0, 0x0(r27)
/* 8148262C | 38 60 00 02 */	li r3, 0x2
/* 81482630 | 48 00 01 F8 */	b .L_81482828
.L_81482634:
/* 81482634 | 57 40 04 3E */	clrlwi r0, r26, 16
/* 81482638 | 28 00 00 04 */	cmplwi r0, 0x4
/* 8148263C | 41 80 00 18 */	blt .L_81482654
/* 81482640 | A0 1D 00 06 */	lhz r0, 0x6(r29)
/* 81482644 | B0 01 00 0A */	sth r0, 0xa(r1)
/* 81482648 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8148264C | 28 00 00 FF */	cmplwi r0, 0xff
/* 81482650 | 41 80 00 14 */	blt .L_81482664
.L_81482654:
/* 81482654 | A0 01 00 0E */	lhz r0, 0xe(r1)
/* 81482658 | B0 1B 00 00 */	sth r0, 0x0(r27)
/* 8148265C | 38 60 00 03 */	li r3, 0x3
/* 81482660 | 48 00 01 C8 */	b .L_81482828
.L_81482664:
/* 81482664 | A0 01 00 0E */	lhz r0, 0xe(r1)
/* 81482668 | B0 01 00 0C */	sth r0, 0xc(r1)
/* 8148266C | 48 00 00 2C */	b .L_81482698
.L_81482670:
/* 81482670 | A0 01 00 0C */	lhz r0, 0xc(r1)
/* 81482674 | 54 00 10 3A */	slwi r0, r0, 2
/* 81482678 | 7C 7F 02 14 */	add r3, r31, r0
/* 8148267C | 88 63 00 03 */	lbz r3, 0x3(r3)
/* 81482680 | A0 01 00 0A */	lhz r0, 0xa(r1)
/* 81482684 | 7C 03 00 00 */	cmpw r3, r0
/* 81482688 | 40 80 00 24 */	bge .L_814826AC
/* 8148268C | A0 61 00 0C */	lhz r3, 0xc(r1)
/* 81482690 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81482694 | B0 01 00 0C */	sth r0, 0xc(r1)
.L_81482698:
/* 81482698 | A0 01 00 0C */	lhz r0, 0xc(r1)
/* 8148269C | 54 03 04 3E */	clrlwi r3, r0, 16
/* 814826A0 | 57 80 04 3E */	clrlwi r0, r28, 16
/* 814826A4 | 7C 03 00 40 */	cmplw r3, r0
/* 814826A8 | 41 80 FF C8 */	blt .L_81482670
.L_814826AC:
/* 814826AC | A0 01 00 0C */	lhz r0, 0xc(r1)
/* 814826B0 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 814826B4 | 57 80 04 3E */	clrlwi r0, r28, 16
/* 814826B8 | 7C 03 00 40 */	cmplw r3, r0
/* 814826BC | 40 80 00 70 */	bge .L_8148272C
/* 814826C0 | A0 81 00 0A */	lhz r4, 0xa(r1)
/* 814826C4 | A0 01 00 0C */	lhz r0, 0xc(r1)
/* 814826C8 | 54 00 10 3A */	slwi r0, r0, 2
/* 814826CC | 7C 7F 02 14 */	add r3, r31, r0
/* 814826D0 | 88 03 00 03 */	lbz r0, 0x3(r3)
/* 814826D4 | 7C 04 00 00 */	cmpw r4, r0
/* 814826D8 | 40 82 00 54 */	bne .L_8148272C
/* 814826DC | A0 9D 00 04 */	lhz r4, 0x4(r29)
/* 814826E0 | A0 01 00 0C */	lhz r0, 0xc(r1)
/* 814826E4 | 54 00 10 3A */	slwi r0, r0, 2
/* 814826E8 | 7C 7F 02 14 */	add r3, r31, r0
/* 814826EC | 88 03 00 02 */	lbz r0, 0x2(r3)
/* 814826F0 | 7C 04 00 00 */	cmpw r4, r0
/* 814826F4 | 40 82 00 38 */	bne .L_8148272C
/* 814826F8 | A0 9D 00 02 */	lhz r4, 0x2(r29)
/* 814826FC | A0 01 00 0C */	lhz r0, 0xc(r1)
/* 81482700 | 54 00 10 3A */	slwi r0, r0, 2
/* 81482704 | 7C 7F 02 14 */	add r3, r31, r0
/* 81482708 | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 8148270C | 7C 04 00 00 */	cmpw r4, r0
/* 81482710 | 40 82 00 1C */	bne .L_8148272C
/* 81482714 | A0 7D 00 00 */	lhz r3, 0x0(r29)
/* 81482718 | A0 01 00 0C */	lhz r0, 0xc(r1)
/* 8148271C | 54 00 10 3A */	slwi r0, r0, 2
/* 81482720 | 7C 1F 00 AE */	lbzx r0, r31, r0
/* 81482724 | 7C 03 00 00 */	cmpw r3, r0
/* 81482728 | 41 82 00 6C */	beq .L_81482794
.L_8148272C:
/* 8148272C | A0 7D 00 04 */	lhz r3, 0x4(r29)
/* 81482730 | 38 81 00 09 */	addi r4, r1, 0x9
/* 81482734 | 38 A1 00 16 */	addi r5, r1, 0x16
/* 81482738 | 7F C6 F3 78 */	mr r6, r30
/* 8148273C | 4B FF EC C1 */	bl Zi8_814813FC
/* 81482740 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81482744 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81482748 | 41 82 00 3C */	beq .L_81482784
/* 8148274C | 38 61 00 14 */	addi r3, r1, 0x14
/* 81482750 | 38 9D 00 06 */	addi r4, r29, 0x6
/* 81482754 | 88 A1 00 09 */	lbz r5, 0x9(r1)
/* 81482758 | 38 C0 00 01 */	li r6, 0x1
/* 8148275C | 54 C6 04 3E */	clrlwi r6, r6, 16
/* 81482760 | 7F C7 F3 78 */	mr r7, r30
/* 81482764 | 4B FF F7 09 */	bl Zi8_81481E6C
/* 81482768 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8148276C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81482770 | 41 82 00 14 */	beq .L_81482784
/* 81482774 | A0 01 00 10 */	lhz r0, 0x10(r1)
/* 81482778 | B0 1B 00 00 */	sth r0, 0x0(r27)
/* 8148277C | 38 60 00 02 */	li r3, 0x2
/* 81482780 | 48 00 00 A8 */	b .L_81482828
.L_81482784:
/* 81482784 | A0 01 00 0E */	lhz r0, 0xe(r1)
/* 81482788 | B0 1B 00 00 */	sth r0, 0x0(r27)
/* 8148278C | 38 60 00 03 */	li r3, 0x3
/* 81482790 | 48 00 00 98 */	b .L_81482828
.L_81482794:
/* 81482794 | 57 40 04 3E */	clrlwi r0, r26, 16
/* 81482798 | 28 00 00 05 */	cmplwi r0, 0x5
/* 8148279C | 41 80 00 18 */	blt .L_814827B4
/* 814827A0 | A0 1D 00 08 */	lhz r0, 0x8(r29)
/* 814827A4 | B0 01 00 0A */	sth r0, 0xa(r1)
/* 814827A8 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 814827AC | 28 00 00 FF */	cmplwi r0, 0xff
/* 814827B0 | 41 80 00 14 */	blt .L_814827C4
.L_814827B4:
/* 814827B4 | A0 01 00 0C */	lhz r0, 0xc(r1)
/* 814827B8 | B0 1B 00 00 */	sth r0, 0x0(r27)
/* 814827BC | 38 60 00 04 */	li r3, 0x4
/* 814827C0 | 48 00 00 68 */	b .L_81482828
.L_814827C4:
/* 814827C4 | A0 7D 00 06 */	lhz r3, 0x6(r29)
/* 814827C8 | 38 81 00 09 */	addi r4, r1, 0x9
/* 814827CC | 38 A1 00 16 */	addi r5, r1, 0x16
/* 814827D0 | 7F C6 F3 78 */	mr r6, r30
/* 814827D4 | 4B FF EC 29 */	bl Zi8_814813FC
/* 814827D8 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 814827DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814827E0 | 41 82 00 3C */	beq .L_8148281C
/* 814827E4 | 38 61 00 14 */	addi r3, r1, 0x14
/* 814827E8 | 38 9D 00 08 */	addi r4, r29, 0x8
/* 814827EC | 88 A1 00 09 */	lbz r5, 0x9(r1)
/* 814827F0 | 38 C0 00 01 */	li r6, 0x1
/* 814827F4 | 54 C6 04 3E */	clrlwi r6, r6, 16
/* 814827F8 | 7F C7 F3 78 */	mr r7, r30
/* 814827FC | 4B FF F6 71 */	bl Zi8_81481E6C
/* 81482800 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81482804 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81482808 | 41 82 00 14 */	beq .L_8148281C
/* 8148280C | A0 01 00 0E */	lhz r0, 0xe(r1)
/* 81482810 | B0 1B 00 00 */	sth r0, 0x0(r27)
/* 81482814 | 38 60 00 03 */	li r3, 0x3
/* 81482818 | 48 00 00 10 */	b .L_81482828
.L_8148281C:
/* 8148281C | A0 01 00 0C */	lhz r0, 0xc(r1)
/* 81482820 | B0 1B 00 00 */	sth r0, 0x0(r27)
/* 81482824 | 38 60 00 04 */	li r3, 0x4
.L_81482828:
/* 81482828 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8148282C | 48 17 6C DD */	bl _restgpr_26
/* 81482830 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81482834 | 7C 08 03 A6 */	mtlr r0
/* 81482838 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8148283C | 4E 80 00 20 */	blr
.endfn Zi8_81481E6C

# .text:0x1444 | 0x81482840 | size: 0x680
.fn Zi8IsWordW, global
/* 81482840 | 94 21 FE F0 */	stwu r1, -0x110(r1)
/* 81482844 | 7C 08 02 A6 */	mflr r0
/* 81482848 | 90 01 01 14 */	stw r0, 0x114(r1)
/* 8148284C | 39 61 01 10 */	addi r11, r1, 0x110
/* 81482850 | 48 17 6C 6D */	bl _savegpr_26
/* 81482854 | 7C 7C 1B 78 */	mr r28, r3
/* 81482858 | 7C 9A 23 78 */	mr r26, r4
/* 8148285C | 7C BF 2B 78 */	mr r31, r5
/* 81482860 | 38 00 00 00 */	li r0, 0x0
/* 81482864 | 90 01 00 20 */	stw r0, 0x20(r1)
/* 81482868 | 38 00 00 00 */	li r0, 0x0
/* 8148286C | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 81482870 | 38 00 00 00 */	li r0, 0x0
/* 81482874 | 98 01 00 0A */	stb r0, 0xa(r1)
/* 81482878 | 38 00 00 00 */	li r0, 0x0
/* 8148287C | 98 01 00 09 */	stb r0, 0x9(r1)
/* 81482880 | 38 00 00 00 */	li r0, 0x0
/* 81482884 | B0 01 00 0C */	sth r0, 0xc(r1)
/* 81482888 | 88 62 8C 18 */	lbz r3, lbl_81695018@sda21(r0)
/* 8148288C | 88 02 8C 19 */	lbz r0, lbl_81695019@sda21(r0)
/* 81482890 | 98 61 00 28 */	stb r3, 0x28(r1)
/* 81482894 | 98 01 00 29 */	stb r0, 0x29(r1)
/* 81482898 | 88 62 8C 1A */	lbz r3, lbl_8169501A@sda21(r0)
/* 8148289C | 88 02 8C 1B */	lbz r0, lbl_8169501B@sda21(r0)
/* 814828A0 | 98 61 00 2A */	stb r3, 0x2a(r1)
/* 814828A4 | 98 01 00 2B */	stb r0, 0x2b(r1)
/* 814828A8 | 88 62 8C 1C */	lbz r3, lbl_8169501C@sda21(r0)
/* 814828AC | 88 02 8C 1D */	lbz r0, lbl_8169501D@sda21(r0)
/* 814828B0 | 98 61 00 2C */	stb r3, 0x2c(r1)
/* 814828B4 | 98 01 00 2D */	stb r0, 0x2d(r1)
/* 814828B8 | 88 62 8C 1E */	lbz r3, lbl_8169501E@sda21(r0)
/* 814828BC | 88 02 8C 1F */	lbz r0, lbl_8169501F@sda21(r0)
/* 814828C0 | 98 61 00 2E */	stb r3, 0x2e(r1)
/* 814828C4 | 98 01 00 2F */	stb r0, 0x2f(r1)
/* 814828C8 | 80 1F 14 10 */	lwz r0, 0x1410(r31)
/* 814828CC | 90 01 00 10 */	stw r0, 0x10(r1)
/* 814828D0 | 88 1F 14 18 */	lbz r0, 0x1418(r31)
/* 814828D4 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 814828D8 | 38 00 00 00 */	li r0, 0x0
/* 814828DC | 90 01 00 30 */	stw r0, 0x30(r1)
/* 814828E0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814828E4 | 90 01 00 38 */	stw r0, 0x38(r1)
/* 814828E8 | 90 01 00 3C */	stw r0, 0x3c(r1)
/* 814828EC | 90 01 00 40 */	stw r0, 0x40(r1)
/* 814828F0 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814828F4 | 38 60 00 64 */	li r3, 0x64
/* 814828F8 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814828FC | 7F E4 FB 78 */	mr r4, r31
/* 81482900 | 48 00 1B 7D */	bl Zi8LogError
/* 81482904 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81482908 | 41 82 00 10 */	beq .L_81482918
/* 8148290C | A0 1C 00 00 */	lhz r0, 0x0(r28)
/* 81482910 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81482914 | 40 82 00 1C */	bne .L_81482930
.L_81482918:
/* 81482918 | 38 60 01 2C */	li r3, 0x12c
/* 8148291C | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81482920 | 7F E4 FB 78 */	mr r4, r31
/* 81482924 | 48 00 1B 5D */	bl Zi8ReplaceLastError
/* 81482928 | 38 60 00 00 */	li r3, 0x0
/* 8148292C | 48 00 05 7C */	b .L_81482EA8
.L_81482930:
/* 81482930 | 57 40 06 3E */	clrlwi r0, r26, 24
/* 81482934 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81482938 | 41 82 02 88 */	beq .L_81482BC0
/* 8148293C | 3B A0 00 00 */	li r29, 0x0
/* 81482940 | 48 00 00 28 */	b .L_81482968
.L_81482944:
/* 81482944 | 57 A0 08 3C */	slwi r0, r29, 1
/* 81482948 | 7C 1C 02 2E */	lhzx r0, r28, r0
/* 8148294C | 28 00 EF F1 */	cmplwi r0, 0xeff1
/* 81482950 | 40 80 00 0C */	bge .L_8148295C
/* 81482954 | 2C 1D 00 40 */	cmpwi r29, 0x40
/* 81482958 | 40 82 00 0C */	bne .L_81482964
.L_8148295C:
/* 8148295C | 38 60 00 00 */	li r3, 0x0
/* 81482960 | 48 00 05 48 */	b .L_81482EA8
.L_81482964:
/* 81482964 | 3B BD 00 01 */	addi r29, r29, 0x1
.L_81482968:
/* 81482968 | 57 A0 08 3C */	slwi r0, r29, 1
/* 8148296C | 7C 1C 02 2E */	lhzx r0, r28, r0
/* 81482970 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81482974 | 40 82 FF D0 */	bne .L_81482944
/* 81482978 | 57 A0 06 3E */	clrlwi r0, r29, 24
/* 8148297C | 98 01 00 38 */	stb r0, 0x38(r1)
/* 81482980 | 38 00 00 01 */	li r0, 0x1
/* 81482984 | 98 01 00 32 */	stb r0, 0x32(r1)
/* 81482988 | 93 81 00 34 */	stw r28, 0x34(r1)
/* 8148298C | 38 00 00 40 */	li r0, 0x40
/* 81482990 | B0 01 00 40 */	sth r0, 0x40(r1)
/* 81482994 | 9B 41 00 48 */	stb r26, 0x48(r1)
/* 81482998 | 38 00 00 00 */	li r0, 0x0
/* 8148299C | 98 01 00 49 */	stb r0, 0x49(r1)
/* 814829A0 | 38 00 00 07 */	li r0, 0x7
/* 814829A4 | 98 01 00 4A */	stb r0, 0x4a(r1)
/* 814829A8 | 38 00 00 01 */	li r0, 0x1
/* 814829AC | 98 01 00 4B */	stb r0, 0x4b(r1)
/* 814829B0 | 38 00 00 81 */	li r0, 0x81
/* 814829B4 | 98 01 00 4C */	stb r0, 0x4c(r1)
/* 814829B8 | 93 81 00 50 */	stw r28, 0x50(r1)
/* 814829BC | 57 A0 06 3E */	clrlwi r0, r29, 24
/* 814829C0 | 98 01 00 54 */	stb r0, 0x54(r1)
/* 814829C4 | 38 00 00 00 */	li r0, 0x0
/* 814829C8 | 90 01 00 58 */	stw r0, 0x58(r1)
/* 814829CC | 38 00 00 00 */	li r0, 0x0
/* 814829D0 | 98 01 00 5C */	stb r0, 0x5c(r1)
/* 814829D4 | 38 01 00 74 */	addi r0, r1, 0x74
/* 814829D8 | 90 01 00 60 */	stw r0, 0x60(r1)
/* 814829DC | 38 00 00 01 */	li r0, 0x1
/* 814829E0 | 98 01 00 64 */	stb r0, 0x64(r1)
/* 814829E4 | 38 00 00 00 */	li r0, 0x0
/* 814829E8 | B0 01 00 66 */	sth r0, 0x66(r1)
/* 814829EC | 38 01 00 28 */	addi r0, r1, 0x28
/* 814829F0 | 90 1F 14 10 */	stw r0, 0x1410(r31)
/* 814829F4 | 88 1F 00 1C */	lbz r0, 0x1c(r31)
/* 814829F8 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814829FC | 40 82 01 70 */	bne .L_81482B6C
/* 81482A00 | 38 00 00 00 */	li r0, 0x0
/* 81482A04 | 98 1F 14 18 */	stb r0, 0x1418(r31)
/* 81482A08 | 88 1F 00 09 */	lbz r0, 0x9(r31)
/* 81482A0C | 54 00 07 FE */	clrlwi r0, r0, 31
/* 81482A10 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81482A14 | 41 82 00 20 */	beq .L_81482A34
/* 81482A18 | 38 A0 00 01 */	li r5, 0x1
/* 81482A1C | 88 9F 14 18 */	lbz r4, 0x1418(r31)
/* 81482A20 | 54 80 06 3E */	clrlwi r0, r4, 24
/* 81482A24 | 38 61 00 28 */	addi r3, r1, 0x28
/* 81482A28 | 7C A3 01 AE */	stbx r5, r3, r0
/* 81482A2C | 38 04 00 01 */	addi r0, r4, 0x1
/* 81482A30 | 98 1F 14 18 */	stb r0, 0x1418(r31)
.L_81482A34:
/* 81482A34 | 88 1F 00 09 */	lbz r0, 0x9(r31)
/* 81482A38 | 54 00 07 7A */	rlwinm r0, r0, 0, 29, 29
/* 81482A3C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81482A40 | 41 82 00 20 */	beq .L_81482A60
/* 81482A44 | 38 A0 00 02 */	li r5, 0x2
/* 81482A48 | 88 9F 14 18 */	lbz r4, 0x1418(r31)
/* 81482A4C | 54 80 06 3E */	clrlwi r0, r4, 24
/* 81482A50 | 38 61 00 28 */	addi r3, r1, 0x28
/* 81482A54 | 7C A3 01 AE */	stbx r5, r3, r0
/* 81482A58 | 38 04 00 01 */	addi r0, r4, 0x1
/* 81482A5C | 98 1F 14 18 */	stb r0, 0x1418(r31)
.L_81482A60:
/* 81482A60 | 88 1F 00 09 */	lbz r0, 0x9(r31)
/* 81482A64 | 54 00 07 BC */	rlwinm r0, r0, 0, 30, 30
/* 81482A68 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81482A6C | 41 82 00 20 */	beq .L_81482A8C
/* 81482A70 | 38 A0 00 03 */	li r5, 0x3
/* 81482A74 | 88 9F 14 18 */	lbz r4, 0x1418(r31)
/* 81482A78 | 54 80 06 3E */	clrlwi r0, r4, 24
/* 81482A7C | 38 61 00 28 */	addi r3, r1, 0x28
/* 81482A80 | 7C A3 01 AE */	stbx r5, r3, r0
/* 81482A84 | 38 04 00 01 */	addi r0, r4, 0x1
/* 81482A88 | 98 1F 14 18 */	stb r0, 0x1418(r31)
.L_81482A8C:
/* 81482A8C | 88 1F 00 09 */	lbz r0, 0x9(r31)
/* 81482A90 | 54 00 07 38 */	rlwinm r0, r0, 0, 28, 28
/* 81482A94 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81482A98 | 41 82 00 20 */	beq .L_81482AB8
/* 81482A9C | 38 A0 00 04 */	li r5, 0x4
/* 81482AA0 | 88 9F 14 18 */	lbz r4, 0x1418(r31)
/* 81482AA4 | 54 80 06 3E */	clrlwi r0, r4, 24
/* 81482AA8 | 38 61 00 28 */	addi r3, r1, 0x28
/* 81482AAC | 7C A3 01 AE */	stbx r5, r3, r0
/* 81482AB0 | 38 04 00 01 */	addi r0, r4, 0x1
/* 81482AB4 | 98 1F 14 18 */	stb r0, 0x1418(r31)
.L_81482AB8:
/* 81482AB8 | 88 1F 00 09 */	lbz r0, 0x9(r31)
/* 81482ABC | 54 00 07 FE */	clrlwi r0, r0, 31
/* 81482AC0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81482AC4 | 41 82 00 20 */	beq .L_81482AE4
/* 81482AC8 | 38 A0 00 05 */	li r5, 0x5
/* 81482ACC | 88 9F 14 18 */	lbz r4, 0x1418(r31)
/* 81482AD0 | 54 80 06 3E */	clrlwi r0, r4, 24
/* 81482AD4 | 38 61 00 28 */	addi r3, r1, 0x28
/* 81482AD8 | 7C A3 01 AE */	stbx r5, r3, r0
/* 81482ADC | 38 04 00 01 */	addi r0, r4, 0x1
/* 81482AE0 | 98 1F 14 18 */	stb r0, 0x1418(r31)
.L_81482AE4:
/* 81482AE4 | 88 1F 00 09 */	lbz r0, 0x9(r31)
/* 81482AE8 | 54 00 07 7A */	rlwinm r0, r0, 0, 29, 29
/* 81482AEC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81482AF0 | 41 82 00 20 */	beq .L_81482B10
/* 81482AF4 | 38 A0 00 06 */	li r5, 0x6
/* 81482AF8 | 88 9F 14 18 */	lbz r4, 0x1418(r31)
/* 81482AFC | 54 80 06 3E */	clrlwi r0, r4, 24
/* 81482B00 | 38 61 00 28 */	addi r3, r1, 0x28
/* 81482B04 | 7C A3 01 AE */	stbx r5, r3, r0
/* 81482B08 | 38 04 00 01 */	addi r0, r4, 0x1
/* 81482B0C | 98 1F 14 18 */	stb r0, 0x1418(r31)
.L_81482B10:
/* 81482B10 | 88 1F 00 09 */	lbz r0, 0x9(r31)
/* 81482B14 | 54 00 07 BC */	rlwinm r0, r0, 0, 30, 30
/* 81482B18 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81482B1C | 41 82 00 20 */	beq .L_81482B3C
/* 81482B20 | 38 A0 00 07 */	li r5, 0x7
/* 81482B24 | 88 9F 14 18 */	lbz r4, 0x1418(r31)
/* 81482B28 | 54 80 06 3E */	clrlwi r0, r4, 24
/* 81482B2C | 38 61 00 28 */	addi r3, r1, 0x28
/* 81482B30 | 7C A3 01 AE */	stbx r5, r3, r0
/* 81482B34 | 38 04 00 01 */	addi r0, r4, 0x1
/* 81482B38 | 98 1F 14 18 */	stb r0, 0x1418(r31)
.L_81482B3C:
/* 81482B3C | 88 1F 00 09 */	lbz r0, 0x9(r31)
/* 81482B40 | 54 00 07 38 */	rlwinm r0, r0, 0, 28, 28
/* 81482B44 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81482B48 | 41 82 00 44 */	beq .L_81482B8C
/* 81482B4C | 38 A0 00 08 */	li r5, 0x8
/* 81482B50 | 88 9F 14 18 */	lbz r4, 0x1418(r31)
/* 81482B54 | 54 80 06 3E */	clrlwi r0, r4, 24
/* 81482B58 | 38 61 00 28 */	addi r3, r1, 0x28
/* 81482B5C | 7C A3 01 AE */	stbx r5, r3, r0
/* 81482B60 | 38 04 00 01 */	addi r0, r4, 0x1
/* 81482B64 | 98 1F 14 18 */	stb r0, 0x1418(r31)
/* 81482B68 | 48 00 00 24 */	b .L_81482B8C
.L_81482B6C:
/* 81482B6C | 88 1F 00 1C */	lbz r0, 0x1c(r31)
/* 81482B70 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81482B74 | 41 82 00 10 */	beq .L_81482B84
/* 81482B78 | 38 00 00 02 */	li r0, 0x2
/* 81482B7C | 98 1F 14 18 */	stb r0, 0x1418(r31)
/* 81482B80 | 48 00 00 0C */	b .L_81482B8C
.L_81482B84:
/* 81482B84 | 38 00 00 01 */	li r0, 0x1
/* 81482B88 | 98 1F 14 18 */	stb r0, 0x1418(r31)
.L_81482B8C:
/* 81482B8C | 38 61 00 48 */	addi r3, r1, 0x48
/* 81482B90 | 38 81 00 30 */	addi r4, r1, 0x30
/* 81482B94 | 7F E5 FB 78 */	mr r5, r31
/* 81482B98 | 4B FF 86 79 */	bl Zi8GetCandidatesOrCount
/* 81482B9C | 7C 7D 1B 78 */	mr r29, r3
/* 81482BA0 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 81482BA4 | 90 1F 14 10 */	stw r0, 0x1410(r31)
/* 81482BA8 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 81482BAC | 98 1F 14 18 */	stb r0, 0x1418(r31)
/* 81482BB0 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81482BB4 | 41 82 00 0C */	beq .L_81482BC0
/* 81482BB8 | 38 60 00 01 */	li r3, 0x1
/* 81482BBC | 48 00 02 EC */	b .L_81482EA8
.L_81482BC0:
/* 81482BC0 | 57 40 06 3E */	clrlwi r0, r26, 24
/* 81482BC4 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81482BC8 | 41 82 00 1C */	beq .L_81482BE4
/* 81482BCC | 38 60 02 6C */	li r3, 0x26c
/* 81482BD0 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81482BD4 | 7F E4 FB 78 */	mr r4, r31
/* 81482BD8 | 48 00 18 A9 */	bl Zi8ReplaceLastError
/* 81482BDC | 38 60 00 00 */	li r3, 0x0
/* 81482BE0 | 48 00 02 C8 */	b .L_81482EA8
.L_81482BE4:
/* 81482BE4 | 3B A0 00 00 */	li r29, 0x0
/* 81482BE8 | 48 00 00 50 */	b .L_81482C38
.L_81482BEC:
/* 81482BEC | 57 A0 08 3C */	slwi r0, r29, 1
/* 81482BF0 | 7C 7C 02 2E */	lhzx r3, r28, r0
/* 81482BF4 | 7F E4 FB 78 */	mr r4, r31
/* 81482BF8 | 4B FF C7 9D */	bl Zi8Uni2Ord
/* 81482BFC | 57 A0 08 3C */	slwi r0, r29, 1
/* 81482C00 | 38 81 00 74 */	addi r4, r1, 0x74
/* 81482C04 | 7C 64 03 2E */	sthx r3, r4, r0
/* 81482C08 | 57 A0 08 3C */	slwi r0, r29, 1
/* 81482C0C | 38 61 00 74 */	addi r3, r1, 0x74
/* 81482C10 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 81482C14 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 81482C18 | 40 82 00 0C */	bne .L_81482C24
/* 81482C1C | 38 60 00 00 */	li r3, 0x0
/* 81482C20 | 48 00 02 88 */	b .L_81482EA8
.L_81482C24:
/* 81482C24 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 81482C28 | 2C 1D 00 40 */	cmpwi r29, 0x40
/* 81482C2C | 40 82 00 0C */	bne .L_81482C38
/* 81482C30 | 38 60 00 00 */	li r3, 0x0
/* 81482C34 | 48 00 02 74 */	b .L_81482EA8
.L_81482C38:
/* 81482C38 | 57 A0 08 3C */	slwi r0, r29, 1
/* 81482C3C | 7C 1C 02 2E */	lhzx r0, r28, r0
/* 81482C40 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81482C44 | 40 82 FF A8 */	bne .L_81482BEC
/* 81482C48 | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 81482C4C | 3B BD FF FF */	subi r29, r29, 0x1
/* 81482C50 | 40 82 00 0C */	bne .L_81482C5C
/* 81482C54 | 38 60 00 01 */	li r3, 0x1
/* 81482C58 | 48 00 02 50 */	b .L_81482EA8
.L_81482C5C:
/* 81482C5C | 57 A4 08 3C */	slwi r4, r29, 1
/* 81482C60 | 38 61 00 74 */	addi r3, r1, 0x74
/* 81482C64 | 7C 03 22 2E */	lhzx r0, r3, r4
/* 81482C68 | 60 00 80 00 */	ori r0, r0, 0x8000
/* 81482C6C | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81482C70 | 7C 03 23 2E */	sthx r0, r3, r4
/* 81482C74 | 38 60 00 01 */	li r3, 0x1
/* 81482C78 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81482C7C | 7F E4 FB 78 */	mr r4, r31
/* 81482C80 | 4B FD C7 F5 */	bl Zi8GetFormatVersion
/* 81482C84 | 54 60 07 BC */	rlwinm r0, r3, 0, 30, 30
/* 81482C88 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81482C8C | 98 1F 00 16 */	stb r0, 0x16(r31)
/* 81482C90 | 38 60 00 01 */	li r3, 0x1
/* 81482C94 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81482C98 | 38 80 00 00 */	li r4, 0x0
/* 81482C9C | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81482CA0 | 7F E5 FB 78 */	mr r5, r31
/* 81482CA4 | 4B FD C7 0D */	bl Zi8GetTableAddress
/* 81482CA8 | 90 61 00 20 */	stw r3, 0x20(r1)
/* 81482CAC | 80 61 00 20 */	lwz r3, 0x20(r1)
/* 81482CB0 | A0 01 00 74 */	lhz r0, 0x74(r1)
/* 81482CB4 | 1C 00 00 0C */	mulli r0, r0, 0xc
/* 81482CB8 | 7C 03 02 14 */	add r0, r3, r0
/* 81482CBC | 90 01 00 18 */	stw r0, 0x18(r1)
/* 81482CC0 | 38 60 00 01 */	li r3, 0x1
/* 81482CC4 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81482CC8 | 38 80 00 01 */	li r4, 0x1
/* 81482CCC | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81482CD0 | 7F E5 FB 78 */	mr r5, r31
/* 81482CD4 | 4B FD C6 DD */	bl Zi8GetTableAddress
/* 81482CD8 | 90 61 00 1C */	stw r3, 0x1c(r1)
/* 81482CDC | 80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 81482CE0 | 80 61 00 18 */	lwz r3, 0x18(r1)
/* 81482CE4 | 88 03 00 09 */	lbz r0, 0x9(r3)
/* 81482CE8 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 81482CEC | 54 05 80 1E */	slwi r5, r0, 16
/* 81482CF0 | 80 61 00 18 */	lwz r3, 0x18(r1)
/* 81482CF4 | 88 83 00 0B */	lbz r4, 0xb(r3)
/* 81482CF8 | 80 61 00 18 */	lwz r3, 0x18(r1)
/* 81482CFC | 88 03 00 0A */	lbz r0, 0xa(r3)
/* 81482D00 | 54 00 40 2E */	slwi r0, r0, 8
/* 81482D04 | 7C 80 03 78 */	or r0, r4, r0
/* 81482D08 | 7C A0 03 78 */	or r0, r5, r0
/* 81482D0C | 7C 06 02 14 */	add r0, r6, r0
/* 81482D10 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 81482D14 | 83 C1 00 1C */	lwz r30, 0x1c(r1)
/* 81482D18 | 88 1F 00 16 */	lbz r0, 0x16(r31)
/* 81482D1C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81482D20 | 41 82 00 48 */	beq .L_81482D68
/* 81482D24 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 81482D28 | 54 00 07 7E */	clrlwi r0, r0, 29
/* 81482D2C | 2C 00 00 05 */	cmpwi r0, 0x5
/* 81482D30 | 41 82 00 28 */	beq .L_81482D58
/* 81482D34 | 40 80 00 2C */	bge .L_81482D60
/* 81482D38 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81482D3C | 41 82 00 0C */	beq .L_81482D48
/* 81482D40 | 40 80 00 10 */	bge .L_81482D50
/* 81482D44 | 48 00 00 1C */	b .L_81482D60
.L_81482D48:
/* 81482D48 | 3B 60 00 02 */	li r27, 0x2
/* 81482D4C | 48 00 00 18 */	b .L_81482D64
.L_81482D50:
/* 81482D50 | 3B 60 00 03 */	li r27, 0x3
/* 81482D54 | 48 00 00 10 */	b .L_81482D64
.L_81482D58:
/* 81482D58 | 3B 60 00 04 */	li r27, 0x4
/* 81482D5C | 48 00 00 08 */	b .L_81482D64
.L_81482D60:
/* 81482D60 | 3B 60 00 01 */	li r27, 0x1
.L_81482D64:
/* 81482D64 | 7F DE DA 14 */	add r30, r30, r27
.L_81482D68:
/* 81482D68 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 81482D6C | 54 00 06 30 */	rlwinm r0, r0, 0, 24, 24
/* 81482D70 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81482D74 | 41 82 00 24 */	beq .L_81482D98
/* 81482D78 | 38 00 00 00 */	li r0, 0x0
/* 81482D7C | 98 01 00 0A */	stb r0, 0xa(r1)
/* 81482D80 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 81482D84 | 54 00 06 7E */	clrlwi r0, r0, 25
/* 81482D88 | 7C 00 26 70 */	srawi r0, r0, 4
/* 81482D8C | 7C 60 F2 14 */	add r3, r0, r30
/* 81482D90 | 3B C3 00 01 */	addi r30, r3, 0x1
/* 81482D94 | 48 00 00 F0 */	b .L_81482E84
.L_81482D98:
/* 81482D98 | 38 60 00 00 */	li r3, 0x0
/* 81482D9C | 48 00 01 0C */	b .L_81482EA8
.L_81482DA0:
/* 81482DA0 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 81482DA4 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81482DA8 | 98 01 00 0A */	stb r0, 0xa(r1)
/* 81482DAC | 88 01 00 0A */	lbz r0, 0xa(r1)
/* 81482DB0 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 81482DB4 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81482DB8 | 98 01 00 09 */	stb r0, 0x9(r1)
/* 81482DBC | 48 00 00 BC */	b .L_81482E78
.L_81482DC0:
/* 81482DC0 | 7F BB EB 78 */	mr r27, r29
/* 81482DC4 | 38 01 00 74 */	addi r0, r1, 0x74
/* 81482DC8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81482DCC | 48 00 00 58 */	b .L_81482E24
.L_81482DD0:
/* 81482DD0 | 88 1E 00 01 */	lbz r0, 0x1(r30)
/* 81482DD4 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81482DD8 | 54 03 40 2E */	slwi r3, r0, 8
/* 81482DDC | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 81482DE0 | 7C 60 03 78 */	or r0, r3, r0
/* 81482DE4 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81482DE8 | B0 01 00 0C */	sth r0, 0xc(r1)
/* 81482DEC | 3B DE 00 02 */	addi r30, r30, 0x2
/* 81482DF0 | A0 01 00 0C */	lhz r0, 0xc(r1)
/* 81482DF4 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81482DF8 | 80 61 00 14 */	lwz r3, 0x14(r1)
/* 81482DFC | 38 63 00 02 */	addi r3, r3, 0x2
/* 81482E00 | 90 61 00 14 */	stw r3, 0x14(r1)
/* 81482E04 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 81482E08 | 7C 04 00 40 */	cmplw r4, r0
/* 81482E0C | 40 82 00 20 */	bne .L_81482E2C
/* 81482E10 | 3B 7B FF FF */	subi r27, r27, 0x1
/* 81482E14 | A0 01 00 0C */	lhz r0, 0xc(r1)
/* 81482E18 | 54 00 04 20 */	rlwinm r0, r0, 0, 16, 16
/* 81482E1C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81482E20 | 40 82 00 0C */	bne .L_81482E2C
.L_81482E24:
/* 81482E24 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 81482E28 | 41 81 FF A8 */	bgt .L_81482DD0
.L_81482E2C:
/* 81482E2C | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 81482E30 | 40 82 00 0C */	bne .L_81482E3C
/* 81482E34 | 38 60 00 01 */	li r3, 0x1
/* 81482E38 | 48 00 00 70 */	b .L_81482EA8
.L_81482E3C:
/* 81482E3C | A0 01 00 0C */	lhz r0, 0xc(r1)
/* 81482E40 | 54 00 04 20 */	rlwinm r0, r0, 0, 16, 16
/* 81482E44 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81482E48 | 40 82 00 24 */	bne .L_81482E6C
/* 81482E4C | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81482E50 | 48 00 00 08 */	b .L_81482E58
.L_81482E54:
/* 81482E54 | 3B DE 00 02 */	addi r30, r30, 0x2
.L_81482E58:
/* 81482E58 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 81482E5C | 54 00 06 30 */	rlwinm r0, r0, 0, 24, 24
/* 81482E60 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81482E64 | 41 82 FF F0 */	beq .L_81482E54
/* 81482E68 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_81482E6C:
/* 81482E6C | 88 61 00 09 */	lbz r3, 0x9(r1)
/* 81482E70 | 38 03 FF FF */	subi r0, r3, 0x1
/* 81482E74 | 98 01 00 09 */	stb r0, 0x9(r1)
.L_81482E78:
/* 81482E78 | 88 01 00 09 */	lbz r0, 0x9(r1)
/* 81482E7C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81482E80 | 40 82 FF 40 */	bne .L_81482DC0
.L_81482E84:
/* 81482E84 | 88 01 00 0A */	lbz r0, 0xa(r1)
/* 81482E88 | 54 00 06 30 */	rlwinm r0, r0, 0, 24, 24
/* 81482E8C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81482E90 | 41 82 FF 10 */	beq .L_81482DA0
/* 81482E94 | 38 60 02 BD */	li r3, 0x2bd
/* 81482E98 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81482E9C | 7F E4 FB 78 */	mr r4, r31
/* 81482EA0 | 48 00 15 DD */	bl Zi8LogError
/* 81482EA4 | 38 60 00 00 */	li r3, 0x0
.L_81482EA8:
/* 81482EA8 | 39 61 01 10 */	addi r11, r1, 0x110
/* 81482EAC | 48 17 66 5D */	bl _restgpr_26
/* 81482EB0 | 80 01 01 14 */	lwz r0, 0x114(r1)
/* 81482EB4 | 7C 08 03 A6 */	mtlr r0
/* 81482EB8 | 38 21 01 10 */	addi r1, r1, 0x110
/* 81482EBC | 4E 80 00 20 */	blr
.endfn Zi8IsWordW

# .text:0x1AC4 | 0x81482EC0 | size: 0x16C
.fn Zi8ConvertUC2UserKey, global
/* 81482EC0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81482EC4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81482EC8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81482ECC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81482ED0 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81482ED4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81482ED8 | 41 82 00 28 */	beq .L_81482F00
/* 81482EDC | 54 80 06 3E */	clrlwi r0, r4, 24
/* 81482EE0 | 28 00 00 82 */	cmplwi r0, 0x82
/* 81482EE4 | 41 81 00 1C */	bgt .L_81482F00
/* 81482EE8 | 54 80 06 3E */	clrlwi r0, r4, 24
/* 81482EEC | 54 00 10 3A */	slwi r0, r0, 2
/* 81482EF0 | 7C C5 02 14 */	add r6, r5, r0
/* 81482EF4 | 83 A6 12 00 */	lwz r29, 0x1200(r6)
/* 81482EF8 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81482EFC | 40 82 00 0C */	bne .L_81482F08
.L_81482F00:
/* 81482F00 | 38 60 00 00 */	li r3, 0x0
/* 81482F04 | 48 00 01 14 */	b .L_81483018
.L_81482F08:
/* 81482F08 | 3B C0 00 00 */	li r30, 0x0
/* 81482F0C | 48 00 00 8C */	b .L_81482F98
.L_81482F10:
/* 81482F10 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 81482F14 | 54 00 10 3A */	slwi r0, r0, 2
/* 81482F18 | 7C DD 02 14 */	add r6, r29, r0
/* 81482F1C | 83 E6 00 80 */	lwz r31, 0x80(r6)
/* 81482F20 | 48 00 00 20 */	b .L_81482F40
.L_81482F24:
/* 81482F24 | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 81482F28 | 54 06 04 3E */	clrlwi r6, r0, 16
/* 81482F2C | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81482F30 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81482F34 | 7C 06 00 40 */	cmplw r6, r0
/* 81482F38 | 41 82 00 6C */	beq .L_81482FA4
/* 81482F3C | 3B FF 00 02 */	addi r31, r31, 0x2
.L_81482F40:
/* 81482F40 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81482F44 | 41 82 00 10 */	beq .L_81482F54
/* 81482F48 | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 81482F4C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81482F50 | 40 82 FF D4 */	bne .L_81482F24
.L_81482F54:
/* 81482F54 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 81482F58 | 54 00 10 3A */	slwi r0, r0, 2
/* 81482F5C | 7F FD 00 2E */	lwzx r31, r29, r0
/* 81482F60 | 48 00 00 20 */	b .L_81482F80
.L_81482F64:
/* 81482F64 | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 81482F68 | 54 06 04 3E */	clrlwi r6, r0, 16
/* 81482F6C | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81482F70 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81482F74 | 7C 06 00 40 */	cmplw r6, r0
/* 81482F78 | 41 82 00 2C */	beq .L_81482FA4
/* 81482F7C | 3B FF 00 02 */	addi r31, r31, 0x2
.L_81482F80:
/* 81482F80 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81482F84 | 41 82 00 10 */	beq .L_81482F94
/* 81482F88 | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 81482F8C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81482F90 | 40 82 FF D4 */	bne .L_81482F64
.L_81482F94:
/* 81482F94 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_81482F98:
/* 81482F98 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 81482F9C | 28 00 00 20 */	cmplwi r0, 0x20
/* 81482FA0 | 41 80 FF 70 */	blt .L_81482F10
.L_81482FA4:
/* 81482FA4 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 81482FA8 | 28 00 00 20 */	cmplwi r0, 0x20
/* 81482FAC | 41 80 00 0C */	blt .L_81482FB8
/* 81482FB0 | 38 60 00 00 */	li r3, 0x0
/* 81482FB4 | 48 00 00 64 */	b .L_81483018
.L_81482FB8:
/* 81482FB8 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 81482FBC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81482FC0 | 40 82 00 10 */	bne .L_81482FD0
/* 81482FC4 | 3C 60 00 01 */	lis r3, 0x1
/* 81482FC8 | 38 63 EF FA */	subi r3, r3, 0x1006
/* 81482FCC | 48 00 00 4C */	b .L_81483018
.L_81482FD0:
/* 81482FD0 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 81482FD4 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81482FD8 | 41 80 00 20 */	blt .L_81482FF8
/* 81482FDC | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 81482FE0 | 28 00 00 09 */	cmplwi r0, 0x9
/* 81482FE4 | 41 81 00 14 */	bgt .L_81482FF8
/* 81482FE8 | 3C DE 00 01 */	addis r6, r30, 0x1
/* 81482FEC | 38 06 EF F0 */	subi r0, r6, 0x1010
/* 81482FF0 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 81482FF4 | 48 00 00 24 */	b .L_81483018
.L_81482FF8:
/* 81482FF8 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 81482FFC | 28 00 00 1F */	cmplwi r0, 0x1f
/* 81483000 | 41 81 00 14 */	bgt .L_81483014
/* 81483004 | 3C DE 00 01 */	addis r6, r30, 0x1
/* 81483008 | 38 06 EF F1 */	subi r0, r6, 0x100f
/* 8148300C | 54 03 04 3E */	clrlwi r3, r0, 16
/* 81483010 | 48 00 00 08 */	b .L_81483018
.L_81483014:
/* 81483014 | 38 60 00 00 */	li r3, 0x0
.L_81483018:
/* 81483018 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8148301C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81483020 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81483024 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81483028 | 4E 80 00 20 */	blr
.endfn Zi8ConvertUC2UserKey

# .text:0x1C30 | 0x8148302C | size: 0xEC
.fn Zi8_8148302C, global
/* 8148302C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81483030 | 7C 08 02 A6 */	mflr r0
/* 81483034 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81483038 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8148303C | 48 17 64 85 */	bl _savegpr_27
/* 81483040 | B0 61 00 08 */	sth r3, 0x8(r1)
/* 81483044 | 7C 9E 23 78 */	mr r30, r4
/* 81483048 | 7C BD 2B 78 */	mr r29, r5
/* 8148304C | 38 60 00 12 */	li r3, 0x12
/* 81483050 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81483054 | 38 80 00 09 */	li r4, 0x9
/* 81483058 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8148305C | 7F A5 EB 78 */	mr r5, r29
/* 81483060 | 4B FD C3 D1 */	bl Zi8GetTableCount
/* 81483064 | 7C 7C 1B 78 */	mr r28, r3
/* 81483068 | 3B E0 00 00 */	li r31, 0x0
/* 8148306C | 48 00 00 6C */	b .L_814830D8
.L_81483070:
/* 81483070 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 81483074 | 54 03 18 38 */	slwi r3, r0, 3
/* 81483078 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 8148307C | 7C 03 02 14 */	add r0, r3, r0
/* 81483080 | 7C 60 F2 14 */	add r3, r0, r30
/* 81483084 | 88 03 00 07 */	lbz r0, 0x7(r3)
/* 81483088 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8148308C | 54 04 40 2E */	slwi r4, r0, 8
/* 81483090 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 81483094 | 54 03 18 38 */	slwi r3, r0, 3
/* 81483098 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 8148309C | 7C 03 02 14 */	add r0, r3, r0
/* 814830A0 | 7C 60 F2 14 */	add r3, r0, r30
/* 814830A4 | 88 03 00 08 */	lbz r0, 0x8(r3)
/* 814830A8 | 7C 80 03 78 */	or r0, r4, r0
/* 814830AC | 54 1B 04 3E */	clrlwi r27, r0, 16
/* 814830B0 | A0 01 00 08 */	lhz r0, 0x8(r1)
/* 814830B4 | 7C 1B 00 40 */	cmplw r27, r0
/* 814830B8 | 40 82 00 1C */	bne .L_814830D4
/* 814830BC | 38 60 00 64 */	li r3, 0x64
/* 814830C0 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814830C4 | 7F A4 EB 78 */	mr r4, r29
/* 814830C8 | 48 00 13 B5 */	bl Zi8LogError
/* 814830CC | 7F E3 FB 78 */	mr r3, r31
/* 814830D0 | 48 00 00 30 */	b .L_81483100
.L_814830D4:
/* 814830D4 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_814830D8:
/* 814830D8 | 57 E3 04 3E */	clrlwi r3, r31, 16
/* 814830DC | 57 80 04 3E */	clrlwi r0, r28, 16
/* 814830E0 | 7C 03 00 40 */	cmplw r3, r0
/* 814830E4 | 41 80 FF 8C */	blt .L_81483070
/* 814830E8 | 38 60 09 6A */	li r3, 0x96a
/* 814830EC | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814830F0 | 7F A4 EB 78 */	mr r4, r29
/* 814830F4 | 48 00 13 89 */	bl Zi8LogError
/* 814830F8 | 3C 60 00 01 */	lis r3, 0x1
/* 814830FC | 38 63 FF FF */	subi r3, r3, 0x1
.L_81483100:
/* 81483100 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81483104 | 48 17 64 09 */	bl _restgpr_27
/* 81483108 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8148310C | 7C 08 03 A6 */	mtlr r0
/* 81483110 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81483114 | 4E 80 00 20 */	blr
.endfn Zi8_8148302C

# .text:0x1D1C | 0x81483118 | size: 0x14C
.fn Zi8_81483118, global
/* 81483118 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8148311C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81483120 | 3B E0 00 00 */	li r31, 0x0
/* 81483124 | 48 00 00 14 */	b .L_81483138
.L_81483128:
/* 81483128 | 38 A0 00 00 */	li r5, 0x0
/* 8148312C | 57 E0 06 3E */	clrlwi r0, r31, 24
/* 81483130 | 7C A4 01 AE */	stbx r5, r4, r0
/* 81483134 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_81483138:
/* 81483138 | 57 E0 06 3E */	clrlwi r0, r31, 24
/* 8148313C | 28 00 00 05 */	cmplwi r0, 0x5
/* 81483140 | 41 80 FF E8 */	blt .L_81483128
/* 81483144 | 88 03 00 0C */	lbz r0, 0xc(r3)
/* 81483148 | 28 00 00 09 */	cmplwi r0, 0x9
/* 8148314C | 41 81 01 0C */	bgt .L_81483258
/* 81483150 | 3C A0 81 67 */	lis r5, jumptable_8166B3A8@ha
/* 81483154 | 38 A5 B3 A8 */	addi r5, r5, jumptable_8166B3A8@l
/* 81483158 | 54 00 10 3A */	slwi r0, r0, 2
/* 8148315C | 7C A5 00 2E */	lwzx r5, r5, r0
/* 81483160 | 7C A9 03 A6 */	mtctr r5
/* 81483164 | 4E 80 04 20 */	bctr
.L_81483168:
/* 81483168 | 88 C4 00 04 */	lbz r6, 0x4(r4)
/* 8148316C | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 81483170 | A0 05 00 10 */	lhz r0, 0x10(r5)
/* 81483174 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 81483178 | 54 00 20 36 */	slwi r0, r0, 4
/* 8148317C | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81483180 | 7C C0 03 78 */	or r0, r6, r0
/* 81483184 | 98 04 00 04 */	stb r0, 0x4(r4)
.L_81483188:
/* 81483188 | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 8148318C | A0 05 00 0E */	lhz r0, 0xe(r5)
/* 81483190 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 81483194 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81483198 | 98 04 00 03 */	stb r0, 0x3(r4)
.L_8148319C:
/* 8148319C | 88 C4 00 03 */	lbz r6, 0x3(r4)
/* 814831A0 | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 814831A4 | A0 05 00 0C */	lhz r0, 0xc(r5)
/* 814831A8 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 814831AC | 54 00 20 36 */	slwi r0, r0, 4
/* 814831B0 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 814831B4 | 7C C0 03 78 */	or r0, r6, r0
/* 814831B8 | 98 04 00 03 */	stb r0, 0x3(r4)
.L_814831BC:
/* 814831BC | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 814831C0 | A0 05 00 0A */	lhz r0, 0xa(r5)
/* 814831C4 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 814831C8 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 814831CC | 98 04 00 02 */	stb r0, 0x2(r4)
.L_814831D0:
/* 814831D0 | 88 C4 00 02 */	lbz r6, 0x2(r4)
/* 814831D4 | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 814831D8 | A0 05 00 08 */	lhz r0, 0x8(r5)
/* 814831DC | 54 00 07 3E */	clrlwi r0, r0, 28
/* 814831E0 | 54 00 20 36 */	slwi r0, r0, 4
/* 814831E4 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 814831E8 | 7C C0 03 78 */	or r0, r6, r0
/* 814831EC | 98 04 00 02 */	stb r0, 0x2(r4)
.L_814831F0:
/* 814831F0 | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 814831F4 | A0 05 00 06 */	lhz r0, 0x6(r5)
/* 814831F8 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 814831FC | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81483200 | 98 04 00 01 */	stb r0, 0x1(r4)
.L_81483204:
/* 81483204 | 88 C4 00 01 */	lbz r6, 0x1(r4)
/* 81483208 | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 8148320C | A0 05 00 04 */	lhz r0, 0x4(r5)
/* 81483210 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 81483214 | 54 00 20 36 */	slwi r0, r0, 4
/* 81483218 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8148321C | 7C C0 03 78 */	or r0, r6, r0
/* 81483220 | 98 04 00 01 */	stb r0, 0x1(r4)
.L_81483224:
/* 81483224 | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 81483228 | A0 05 00 02 */	lhz r0, 0x2(r5)
/* 8148322C | 54 00 07 3E */	clrlwi r0, r0, 28
/* 81483230 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81483234 | 98 04 00 00 */	stb r0, 0x0(r4)
.L_81483238:
/* 81483238 | 88 C4 00 00 */	lbz r6, 0x0(r4)
/* 8148323C | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 81483240 | A0 05 00 00 */	lhz r0, 0x0(r5)
/* 81483244 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 81483248 | 54 00 20 36 */	slwi r0, r0, 4
/* 8148324C | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81483250 | 7C C0 03 78 */	or r0, r6, r0
/* 81483254 | 98 04 00 00 */	stb r0, 0x0(r4)
.L_81483258:
/* 81483258 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8148325C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81483260 | 4E 80 00 20 */	blr
.endfn Zi8_81483118

# .text:0x1E68 | 0x81483264 | size: 0xA4
.fn Zi8_81483264, global
/* 81483264 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81483268 | 7C 08 02 A6 */	mflr r0
/* 8148326C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81483270 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81483274 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81483278 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8148327C | 7C 7F 1B 78 */	mr r31, r3
/* 81483280 | 7C 9D 23 78 */	mr r29, r4
/* 81483284 | 80 1F 00 24 */	lwz r0, 0x24(r31)
/* 81483288 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148328C | 40 82 00 1C */	bne .L_814832A8
/* 81483290 | 38 60 01 64 */	li r3, 0x164
/* 81483294 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81483298 | 7F A4 EB 78 */	mr r4, r29
/* 8148329C | 48 00 11 E1 */	bl Zi8LogError
/* 814832A0 | 38 60 00 01 */	li r3, 0x1
/* 814832A4 | 48 00 00 48 */	b .L_814832EC
.L_814832A8:
/* 814832A8 | 3B C0 00 00 */	li r30, 0x0
/* 814832AC | 48 00 00 1C */	b .L_814832C8
.L_814832B0:
/* 814832B0 | 38 80 00 00 */	li r4, 0x0
/* 814832B4 | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 814832B8 | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 814832BC | 54 00 08 3C */	slwi r0, r0, 1
/* 814832C0 | 7C 83 03 2E */	sthx r4, r3, r0
/* 814832C4 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_814832C8:
/* 814832C8 | 57 C3 06 3E */	clrlwi r3, r30, 24
/* 814832CC | 88 1F 00 1C */	lbz r0, 0x1c(r31)
/* 814832D0 | 7C 03 00 40 */	cmplw r3, r0
/* 814832D4 | 41 80 FF DC */	blt .L_814832B0
/* 814832D8 | 38 60 00 64 */	li r3, 0x64
/* 814832DC | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814832E0 | 7F A4 EB 78 */	mr r4, r29
/* 814832E4 | 48 00 11 99 */	bl Zi8LogError
/* 814832E8 | 38 60 00 00 */	li r3, 0x0
.L_814832EC:
/* 814832EC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814832F0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814832F4 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814832F8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814832FC | 7C 08 03 A6 */	mtlr r0
/* 81483300 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81483304 | 4E 80 00 20 */	blr
.endfn Zi8_81483264

# .text:0x1F0C | 0x81483308 | size: 0xE8
.fn Zi8_81483308, global
/* 81483308 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8148330C | 7C 08 02 A6 */	mflr r0
/* 81483310 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81483314 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81483318 | 48 17 61 A9 */	bl _savegpr_27
/* 8148331C | 7C 7F 1B 78 */	mr r31, r3
/* 81483320 | 7C 9B 23 78 */	mr r27, r4
/* 81483324 | 7C BE 2B 78 */	mr r30, r5
/* 81483328 | 7C DC 33 78 */	mr r28, r6
/* 8148332C | 38 60 00 64 */	li r3, 0x64
/* 81483330 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81483334 | 7F 84 E3 78 */	mr r4, r28
/* 81483338 | 48 00 11 45 */	bl Zi8LogError
/* 8148333C | 80 1F 00 24 */	lwz r0, 0x24(r31)
/* 81483340 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81483344 | 40 82 00 1C */	bne .L_81483360
/* 81483348 | 38 60 01 64 */	li r3, 0x164
/* 8148334C | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81483350 | 7F 84 E3 78 */	mr r4, r28
/* 81483354 | 48 00 11 2D */	bl Zi8ReplaceLastError
/* 81483358 | 38 60 00 01 */	li r3, 0x1
/* 8148335C | 48 00 00 7C */	b .L_814833D8
.L_81483360:
/* 81483360 | 3B A0 00 00 */	li r29, 0x0
/* 81483364 | 48 00 00 2C */	b .L_81483390
.L_81483368:
/* 81483368 | 57 64 04 3E */	clrlwi r4, r27, 16
/* 8148336C | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 81483370 | 57 A0 06 3E */	clrlwi r0, r29, 24
/* 81483374 | 54 00 08 3C */	slwi r0, r0, 1
/* 81483378 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 8148337C | 7C 04 00 40 */	cmplw r4, r0
/* 81483380 | 40 82 00 0C */	bne .L_8148338C
/* 81483384 | 38 60 00 01 */	li r3, 0x1
/* 81483388 | 48 00 00 50 */	b .L_814833D8
.L_8148338C:
/* 8148338C | 3B BD 00 01 */	addi r29, r29, 0x1
.L_81483390:
/* 81483390 | 57 A3 06 3E */	clrlwi r3, r29, 24
/* 81483394 | 88 1F 00 1C */	lbz r0, 0x1c(r31)
/* 81483398 | 7C 03 00 40 */	cmplw r3, r0
/* 8148339C | 41 80 FF CC */	blt .L_81483368
/* 814833A0 | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 814833A4 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 814833A8 | 54 00 08 3C */	slwi r0, r0, 1
/* 814833AC | 7F 63 03 2E */	sthx r27, r3, r0
/* 814833B0 | 88 7E 00 00 */	lbz r3, 0x0(r30)
/* 814833B4 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814833B8 | 98 1E 00 00 */	stb r0, 0x0(r30)
/* 814833BC | 54 03 06 3E */	clrlwi r3, r0, 24
/* 814833C0 | 88 1F 00 1C */	lbz r0, 0x1c(r31)
/* 814833C4 | 7C 03 00 40 */	cmplw r3, r0
/* 814833C8 | 41 80 00 0C */	blt .L_814833D4
/* 814833CC | 38 00 00 00 */	li r0, 0x0
/* 814833D0 | 98 1E 00 00 */	stb r0, 0x0(r30)
.L_814833D4:
/* 814833D4 | 38 60 00 00 */	li r3, 0x0
.L_814833D8:
/* 814833D8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814833DC | 48 17 61 31 */	bl _restgpr_27
/* 814833E0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814833E4 | 7C 08 03 A6 */	mtlr r0
/* 814833E8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814833EC | 4E 80 00 20 */	blr
.endfn Zi8_81483308

# .text:0x1FF4 | 0x814833F0 | size: 0xBC
.fn Zi8_814833F0, global
/* 814833F0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814833F4 | 7C 08 02 A6 */	mflr r0
/* 814833F8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814833FC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81483400 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81483404 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81483408 | 7C 7F 1B 78 */	mr r31, r3
/* 8148340C | B0 81 00 08 */	sth r4, 0x8(r1)
/* 81483410 | 7C BD 2B 78 */	mr r29, r5
/* 81483414 | 38 60 00 64 */	li r3, 0x64
/* 81483418 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8148341C | 7F A4 EB 78 */	mr r4, r29
/* 81483420 | 48 00 10 5D */	bl Zi8LogError
/* 81483424 | 80 1F 00 24 */	lwz r0, 0x24(r31)
/* 81483428 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148342C | 40 82 00 1C */	bne .L_81483448
/* 81483430 | 38 60 01 64 */	li r3, 0x164
/* 81483434 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81483438 | 7F A4 EB 78 */	mr r4, r29
/* 8148343C | 48 00 10 45 */	bl Zi8ReplaceLastError
/* 81483440 | 38 60 00 00 */	li r3, 0x0
/* 81483444 | 48 00 00 4C */	b .L_81483490
.L_81483448:
/* 81483448 | 3B C0 00 00 */	li r30, 0x0
/* 8148344C | 48 00 00 30 */	b .L_8148347C
.L_81483450:
/* 81483450 | A0 01 00 08 */	lhz r0, 0x8(r1)
/* 81483454 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81483458 | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8148345C | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 81483460 | 54 00 08 3C */	slwi r0, r0, 1
/* 81483464 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 81483468 | 7C 04 00 40 */	cmplw r4, r0
/* 8148346C | 40 82 00 0C */	bne .L_81483478
/* 81483470 | 38 60 00 01 */	li r3, 0x1
/* 81483474 | 48 00 00 1C */	b .L_81483490
.L_81483478:
/* 81483478 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_8148347C:
/* 8148347C | 57 C3 06 3E */	clrlwi r3, r30, 24
/* 81483480 | 88 1F 00 1C */	lbz r0, 0x1c(r31)
/* 81483484 | 7C 03 00 40 */	cmplw r3, r0
/* 81483488 | 41 80 FF C8 */	blt .L_81483450
/* 8148348C | 38 60 00 00 */	li r3, 0x0
.L_81483490:
/* 81483490 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81483494 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81483498 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8148349C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814834A0 | 7C 08 03 A6 */	mtlr r0
/* 814834A4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814834A8 | 4E 80 00 20 */	blr
.endfn Zi8_814833F0

# .text:0x20B0 | 0x814834AC | size: 0x55C
.fn Zi8_814834AC, global
/* 814834AC | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 814834B0 | 7C 08 02 A6 */	mflr r0
/* 814834B4 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 814834B8 | 39 61 00 50 */	addi r11, r1, 0x50
/* 814834BC | 48 17 5F F5 */	bl _savegpr_23
/* 814834C0 | 7C 7F 1B 78 */	mr r31, r3
/* 814834C4 | 7C 9D 23 78 */	mr r29, r4
/* 814834C8 | 7C BE 2B 78 */	mr r30, r5
/* 814834CC | 7C D7 33 78 */	mr r23, r6
/* 814834D0 | 7C FA 3B 78 */	mr r26, r7
/* 814834D4 | 3B 60 00 00 */	li r27, 0x0
/* 814834D8 | 38 00 00 00 */	li r0, 0x0
/* 814834DC | 98 01 00 09 */	stb r0, 0x9(r1)
/* 814834E0 | 3B 00 00 00 */	li r24, 0x0
/* 814834E4 | 38 00 00 00 */	li r0, 0x0
/* 814834E8 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 814834EC | 98 01 00 20 */	stb r0, 0x20(r1)
/* 814834F0 | 38 60 00 64 */	li r3, 0x64
/* 814834F4 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814834F8 | 7F 44 D3 78 */	mr r4, r26
/* 814834FC | 48 00 0F 81 */	bl Zi8LogError
/* 81483500 | 88 1F 00 0C */	lbz r0, 0xc(r31)
/* 81483504 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81483508 | 40 82 01 00 */	bne .L_81483608
/* 8148350C | A0 7D 00 00 */	lhz r3, 0x0(r29)
/* 81483510 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 81483514 | 7C 03 00 00 */	cmpw r3, r0
/* 81483518 | 41 80 00 58 */	blt .L_81483570
/* 8148351C | 3B 80 00 00 */	li r28, 0x0
/* 81483520 | 48 00 00 24 */	b .L_81483544
.L_81483524:
/* 81483524 | 7F E3 FB 78 */	mr r3, r31
/* 81483528 | 80 9F 00 18 */	lwz r4, 0x18(r31)
/* 8148352C | 57 80 08 3C */	slwi r0, r28, 1
/* 81483530 | 7C 84 02 2E */	lhzx r4, r4, r0
/* 81483534 | 7E E5 BB 78 */	mr r5, r23
/* 81483538 | 7F 46 D3 78 */	mr r6, r26
/* 8148353C | 4B FF FD CD */	bl Zi8_81483308
/* 81483540 | 3B 9C 00 01 */	addi r28, r28, 0x1
.L_81483544:
/* 81483544 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 81483548 | 7C 1C 00 00 */	cmpw r28, r0
/* 8148354C | 41 80 FF D8 */	blt .L_81483524
/* 81483550 | 88 7E 00 00 */	lbz r3, 0x0(r30)
/* 81483554 | A0 1D 00 00 */	lhz r0, 0x0(r29)
/* 81483558 | 7C 03 00 50 */	subf r0, r3, r0
/* 8148355C | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81483560 | B0 1D 00 00 */	sth r0, 0x0(r29)
/* 81483564 | 38 00 00 00 */	li r0, 0x0
/* 81483568 | 98 1E 00 00 */	stb r0, 0x0(r30)
/* 8148356C | 48 00 00 94 */	b .L_81483600
.L_81483570:
/* 81483570 | 3B 80 00 00 */	li r28, 0x0
/* 81483574 | 48 00 00 24 */	b .L_81483598
.L_81483578:
/* 81483578 | 7F E3 FB 78 */	mr r3, r31
/* 8148357C | 80 9F 00 18 */	lwz r4, 0x18(r31)
/* 81483580 | 57 80 08 3C */	slwi r0, r28, 1
/* 81483584 | 7C 84 02 2E */	lhzx r4, r4, r0
/* 81483588 | 7E E5 BB 78 */	mr r5, r23
/* 8148358C | 7F 46 D3 78 */	mr r6, r26
/* 81483590 | 4B FF FD 79 */	bl Zi8_81483308
/* 81483594 | 3B 9C 00 01 */	addi r28, r28, 0x1
.L_81483598:
/* 81483598 | A0 1D 00 00 */	lhz r0, 0x0(r29)
/* 8148359C | 7C 1C 00 00 */	cmpw r28, r0
/* 814835A0 | 41 80 FF D8 */	blt .L_81483578
/* 814835A4 | 3B 80 00 00 */	li r28, 0x0
/* 814835A8 | 48 00 00 28 */	b .L_814835D0
.L_814835AC:
/* 814835AC | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 814835B0 | A0 1D 00 00 */	lhz r0, 0x0(r29)
/* 814835B4 | 7C 00 E2 14 */	add r0, r0, r28
/* 814835B8 | 54 00 08 3C */	slwi r0, r0, 1
/* 814835BC | 7C 83 02 2E */	lhzx r4, r3, r0
/* 814835C0 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 814835C4 | 57 80 08 3C */	slwi r0, r28, 1
/* 814835C8 | 7C 83 03 2E */	sthx r4, r3, r0
/* 814835CC | 3B 9C 00 01 */	addi r28, r28, 0x1
.L_814835D0:
/* 814835D0 | A0 7D 00 00 */	lhz r3, 0x0(r29)
/* 814835D4 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 814835D8 | 7C 03 00 50 */	subf r0, r3, r0
/* 814835DC | 7C 1C 00 00 */	cmpw r28, r0
/* 814835E0 | 41 80 FF CC */	blt .L_814835AC
/* 814835E4 | A0 7D 00 00 */	lhz r3, 0x0(r29)
/* 814835E8 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 814835EC | 7C 03 00 50 */	subf r0, r3, r0
/* 814835F0 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 814835F4 | 98 1E 00 00 */	stb r0, 0x0(r30)
/* 814835F8 | 38 00 00 00 */	li r0, 0x0
/* 814835FC | B0 1D 00 00 */	sth r0, 0x0(r29)
.L_81483600:
/* 81483600 | 38 60 00 01 */	li r3, 0x1
/* 81483604 | 48 00 03 EC */	b .L_814839F0
.L_81483608:
/* 81483608 | 88 1F 00 0C */	lbz r0, 0xc(r31)
/* 8148360C | 28 00 00 09 */	cmplwi r0, 0x9
/* 81483610 | 40 81 00 14 */	ble .L_81483624
/* 81483614 | 38 00 00 00 */	li r0, 0x0
/* 81483618 | 98 1E 00 00 */	stb r0, 0x0(r30)
/* 8148361C | 38 60 00 00 */	li r3, 0x0
/* 81483620 | 48 00 03 D0 */	b .L_814839F0
.L_81483624:
/* 81483624 | 88 7F 00 00 */	lbz r3, 0x0(r31)
/* 81483628 | 38 80 00 09 */	li r4, 0x9
/* 8148362C | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81483630 | 7F 45 D3 78 */	mr r5, r26
/* 81483634 | 4B FD BD 7D */	bl Zi8GetTableAddress
/* 81483638 | 90 61 00 18 */	stw r3, 0x18(r1)
/* 8148363C | 88 7F 00 00 */	lbz r3, 0x0(r31)
/* 81483640 | 38 80 00 0A */	li r4, 0xa
/* 81483644 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81483648 | 7F 45 D3 78 */	mr r5, r26
/* 8148364C | 4B FD BD 65 */	bl Zi8GetTableAddress
/* 81483650 | 90 61 00 14 */	stw r3, 0x14(r1)
/* 81483654 | 80 01 00 18 */	lwz r0, 0x18(r1)
/* 81483658 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148365C | 40 82 00 1C */	bne .L_81483678
/* 81483660 | 38 60 07 6C */	li r3, 0x76c
/* 81483664 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81483668 | 7F 44 D3 78 */	mr r4, r26
/* 8148366C | 48 00 0E 15 */	bl Zi8ReplaceLastError
/* 81483670 | 38 60 00 00 */	li r3, 0x0
/* 81483674 | 48 00 03 7C */	b .L_814839F0
.L_81483678:
/* 81483678 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8148367C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81483680 | 40 82 00 1C */	bne .L_8148369C
/* 81483684 | 38 60 07 76 */	li r3, 0x776
/* 81483688 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8148368C | 7F 44 D3 78 */	mr r4, r26
/* 81483690 | 48 00 0D F1 */	bl Zi8ReplaceLastError
/* 81483694 | 38 60 00 00 */	li r3, 0x0
/* 81483698 | 48 00 03 58 */	b .L_814839F0
.L_8148369C:
/* 8148369C | 38 60 00 12 */	li r3, 0x12
/* 814836A0 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 814836A4 | 38 80 00 09 */	li r4, 0x9
/* 814836A8 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 814836AC | 7F 45 D3 78 */	mr r5, r26
/* 814836B0 | 4B FD BD 81 */	bl Zi8GetTableCount
/* 814836B4 | B0 61 00 0A */	sth r3, 0xa(r1)
/* 814836B8 | 7F E3 FB 78 */	mr r3, r31
/* 814836BC | 38 81 00 1C */	addi r4, r1, 0x1c
/* 814836C0 | 4B FF FA 59 */	bl Zi8_81483118
/* 814836C4 | 3B 80 00 00 */	li r28, 0x0
/* 814836C8 | 48 00 01 90 */	b .L_81483858
.L_814836CC:
/* 814836CC | 38 00 00 01 */	li r0, 0x1
/* 814836D0 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 814836D4 | 80 01 00 18 */	lwz r0, 0x18(r1)
/* 814836D8 | 57 83 18 38 */	slwi r3, r28, 3
/* 814836DC | 7C 00 E2 14 */	add r0, r0, r28
/* 814836E0 | 7C 03 02 14 */	add r0, r3, r0
/* 814836E4 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 814836E8 | 3B 60 00 00 */	li r27, 0x0
/* 814836EC | 88 1F 00 0C */	lbz r0, 0xc(r31)
/* 814836F0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814836F4 | 40 81 00 5C */	ble .L_81483750
/* 814836F8 | 3B 60 00 00 */	li r27, 0x0
/* 814836FC | 48 00 00 38 */	b .L_81483734
.L_81483700:
/* 81483700 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 81483704 | 38 61 00 1C */	addi r3, r1, 0x1c
/* 81483708 | 7C 03 00 AE */	lbzx r0, r3, r0
/* 8148370C | 54 04 06 3E */	clrlwi r4, r0, 24
/* 81483710 | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 81483714 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 81483718 | 7C 03 00 AE */	lbzx r0, r3, r0
/* 8148371C | 7C 04 00 40 */	cmplw r4, r0
/* 81483720 | 41 82 00 10 */	beq .L_81483730
/* 81483724 | 38 00 00 00 */	li r0, 0x0
/* 81483728 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 8148372C | 48 00 00 24 */	b .L_81483750
.L_81483730:
/* 81483730 | 3B 7B 00 01 */	addi r27, r27, 0x1
.L_81483734:
/* 81483734 | 57 64 06 3E */	clrlwi r4, r27, 24
/* 81483738 | 88 7F 00 0C */	lbz r3, 0xc(r31)
/* 8148373C | 54 60 0F FE */	srwi r0, r3, 31
/* 81483740 | 7C 00 1A 14 */	add r0, r0, r3
/* 81483744 | 7C 00 0E 70 */	srawi r0, r0, 1
/* 81483748 | 7C 04 00 00 */	cmpw r4, r0
/* 8148374C | 41 80 FF B4 */	blt .L_81483700
.L_81483750:
/* 81483750 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 81483754 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81483758 | 41 82 00 50 */	beq .L_814837A8
/* 8148375C | 88 1F 00 0C */	lbz r0, 0xc(r31)
/* 81483760 | 54 03 0F FE */	srwi r3, r0, 31
/* 81483764 | 54 00 07 FE */	clrlwi r0, r0, 31
/* 81483768 | 7C 00 1A 78 */	xor r0, r0, r3
/* 8148376C | 7C 03 00 50 */	subf r0, r3, r0
/* 81483770 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81483774 | 41 82 00 34 */	beq .L_814837A8
/* 81483778 | 57 60 06 3E */	clrlwi r0, r27, 24
/* 8148377C | 38 61 00 1C */	addi r3, r1, 0x1c
/* 81483780 | 7C 03 00 AE */	lbzx r0, r3, r0
/* 81483784 | 54 04 06 36 */	rlwinm r4, r0, 0, 24, 27
/* 81483788 | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 8148378C | 57 60 06 3E */	clrlwi r0, r27, 24
/* 81483790 | 7C 03 00 AE */	lbzx r0, r3, r0
/* 81483794 | 54 00 06 36 */	rlwinm r0, r0, 0, 24, 27
/* 81483798 | 7C 04 00 00 */	cmpw r4, r0
/* 8148379C | 41 82 00 0C */	beq .L_814837A8
/* 814837A0 | 38 00 00 00 */	li r0, 0x0
/* 814837A4 | 98 01 00 08 */	stb r0, 0x8(r1)
.L_814837A8:
/* 814837A8 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 814837AC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814837B0 | 41 82 00 A4 */	beq .L_81483854
/* 814837B4 | 38 00 00 00 */	li r0, 0x0
/* 814837B8 | 98 01 00 09 */	stb r0, 0x9(r1)
/* 814837BC | 48 00 00 84 */	b .L_81483840
.L_814837C0:
/* 814837C0 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 814837C4 | 88 01 00 09 */	lbz r0, 0x9(r1)
/* 814837C8 | 54 00 08 3C */	slwi r0, r0, 1
/* 814837CC | 7C 03 02 2E */	lhzx r0, r3, r0
/* 814837D0 | 80 81 00 18 */	lwz r4, 0x18(r1)
/* 814837D4 | 57 83 18 38 */	slwi r3, r28, 3
/* 814837D8 | 7C 63 E2 14 */	add r3, r3, r28
/* 814837DC | 7C 63 22 14 */	add r3, r3, r4
/* 814837E0 | 88 63 00 07 */	lbz r3, 0x7(r3)
/* 814837E4 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814837E8 | 54 65 40 2E */	slwi r5, r3, 8
/* 814837EC | 80 81 00 18 */	lwz r4, 0x18(r1)
/* 814837F0 | 57 83 18 38 */	slwi r3, r28, 3
/* 814837F4 | 7C 63 E2 14 */	add r3, r3, r28
/* 814837F8 | 7C 63 22 14 */	add r3, r3, r4
/* 814837FC | 88 63 00 08 */	lbz r3, 0x8(r3)
/* 81483800 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81483804 | 7C A3 1B 78 */	or r3, r5, r3
/* 81483808 | 7C 00 18 00 */	cmpw r0, r3
/* 8148380C | 40 82 00 28 */	bne .L_81483834
/* 81483810 | 3B 18 00 01 */	addi r24, r24, 0x1
/* 81483814 | 80 9F 00 18 */	lwz r4, 0x18(r31)
/* 81483818 | 88 01 00 09 */	lbz r0, 0x9(r1)
/* 8148381C | 54 03 08 3C */	slwi r3, r0, 1
/* 81483820 | 7C 04 1A 2E */	lhzx r0, r4, r3
/* 81483824 | 54 00 04 7E */	clrlwi r0, r0, 17
/* 81483828 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8148382C | 7C 04 1B 2E */	sthx r0, r4, r3
/* 81483830 | 48 00 00 24 */	b .L_81483854
.L_81483834:
/* 81483834 | 88 61 00 09 */	lbz r3, 0x9(r1)
/* 81483838 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8148383C | 98 01 00 09 */	stb r0, 0x9(r1)
.L_81483840:
/* 81483840 | 88 01 00 09 */	lbz r0, 0x9(r1)
/* 81483844 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81483848 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 8148384C | 7C 03 00 40 */	cmplw r3, r0
/* 81483850 | 41 80 FF 70 */	blt .L_814837C0
.L_81483854:
/* 81483854 | 3B 9C 00 01 */	addi r28, r28, 0x1
.L_81483858:
/* 81483858 | A0 01 00 0A */	lhz r0, 0xa(r1)
/* 8148385C | 7C 1C 00 00 */	cmpw r28, r0
/* 81483860 | 40 80 00 14 */	bge .L_81483874
/* 81483864 | 57 03 06 3E */	clrlwi r3, r24, 24
/* 81483868 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 8148386C | 7C 03 00 40 */	cmplw r3, r0
/* 81483870 | 41 80 FE 5C */	blt .L_814836CC
.L_81483874:
/* 81483874 | 57 03 06 3E */	clrlwi r3, r24, 24
/* 81483878 | A0 1D 00 00 */	lhz r0, 0x0(r29)
/* 8148387C | 7C 03 00 00 */	cmpw r3, r0
/* 81483880 | 41 80 00 D0 */	blt .L_81483950
/* 81483884 | 8B 1E 00 00 */	lbz r24, 0x0(r30)
/* 81483888 | 38 00 00 00 */	li r0, 0x0
/* 8148388C | 98 1E 00 00 */	stb r0, 0x0(r30)
/* 81483890 | 3B 20 00 00 */	li r25, 0x0
/* 81483894 | 48 00 00 A4 */	b .L_81483938
.L_81483898:
/* 81483898 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8148389C | 57 20 08 3C */	slwi r0, r25, 1
/* 814838A0 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 814838A4 | 54 00 04 20 */	rlwinm r0, r0, 0, 16, 16
/* 814838A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814838AC | 40 82 00 88 */	bne .L_81483934
/* 814838B0 | 80 9F 00 18 */	lwz r4, 0x18(r31)
/* 814838B4 | 57 23 08 3C */	slwi r3, r25, 1
/* 814838B8 | 7C 04 1A 2E */	lhzx r0, r4, r3
/* 814838BC | 60 00 80 00 */	ori r0, r0, 0x8000
/* 814838C0 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 814838C4 | 7C 04 1B 2E */	sthx r0, r4, r3
/* 814838C8 | A0 1D 00 00 */	lhz r0, 0x0(r29)
/* 814838CC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814838D0 | 41 82 00 30 */	beq .L_81483900
/* 814838D4 | A0 7D 00 00 */	lhz r3, 0x0(r29)
/* 814838D8 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814838DC | B0 1D 00 00 */	sth r0, 0x0(r29)
/* 814838E0 | 7F E3 FB 78 */	mr r3, r31
/* 814838E4 | 80 9F 00 18 */	lwz r4, 0x18(r31)
/* 814838E8 | 57 20 08 3C */	slwi r0, r25, 1
/* 814838EC | 7C 84 02 2E */	lhzx r4, r4, r0
/* 814838F0 | 7E E5 BB 78 */	mr r5, r23
/* 814838F4 | 7F 46 D3 78 */	mr r6, r26
/* 814838F8 | 4B FF FA 11 */	bl Zi8_81483308
/* 814838FC | 48 00 00 38 */	b .L_81483934
.L_81483900:
/* 81483900 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 81483904 | 7C 00 C8 00 */	cmpw r0, r25
/* 81483908 | 41 82 00 20 */	beq .L_81483928
/* 8148390C | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 81483910 | 57 20 08 3C */	slwi r0, r25, 1
/* 81483914 | 7C 83 02 2E */	lhzx r4, r3, r0
/* 81483918 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8148391C | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 81483920 | 54 00 08 3C */	slwi r0, r0, 1
/* 81483924 | 7C 83 03 2E */	sthx r4, r3, r0
.L_81483928:
/* 81483928 | 88 7E 00 00 */	lbz r3, 0x0(r30)
/* 8148392C | 38 03 00 01 */	addi r0, r3, 0x1
/* 81483930 | 98 1E 00 00 */	stb r0, 0x0(r30)
.L_81483934:
/* 81483934 | 3B 39 00 01 */	addi r25, r25, 0x1
.L_81483938:
/* 81483938 | 57 00 06 3E */	clrlwi r0, r24, 24
/* 8148393C | 7C 19 00 00 */	cmpw r25, r0
/* 81483940 | 41 80 FF 58 */	blt .L_81483898
/* 81483944 | 38 00 00 00 */	li r0, 0x0
/* 81483948 | B0 1D 00 00 */	sth r0, 0x0(r29)
/* 8148394C | 48 00 00 A0 */	b .L_814839EC
.L_81483950:
/* 81483950 | 38 00 00 00 */	li r0, 0x0
/* 81483954 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 81483958 | 48 00 00 68 */	b .L_814839C0
.L_8148395C:
/* 8148395C | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 81483960 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 81483964 | 54 00 08 3C */	slwi r0, r0, 1
/* 81483968 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 8148396C | 54 00 04 20 */	rlwinm r0, r0, 0, 16, 16
/* 81483970 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81483974 | 40 82 00 40 */	bne .L_814839B4
/* 81483978 | 80 9F 00 18 */	lwz r4, 0x18(r31)
/* 8148397C | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 81483980 | 54 03 08 3C */	slwi r3, r0, 1
/* 81483984 | 7C 04 1A 2E */	lhzx r0, r4, r3
/* 81483988 | 60 00 80 00 */	ori r0, r0, 0x8000
/* 8148398C | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81483990 | 7C 04 1B 2E */	sthx r0, r4, r3
/* 81483994 | 7F E3 FB 78 */	mr r3, r31
/* 81483998 | 80 9F 00 18 */	lwz r4, 0x18(r31)
/* 8148399C | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814839A0 | 54 00 08 3C */	slwi r0, r0, 1
/* 814839A4 | 7C 84 02 2E */	lhzx r4, r4, r0
/* 814839A8 | 7E E5 BB 78 */	mr r5, r23
/* 814839AC | 7F 46 D3 78 */	mr r6, r26
/* 814839B0 | 4B FF F9 59 */	bl Zi8_81483308
.L_814839B4:
/* 814839B4 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 814839B8 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814839BC | 90 01 00 0C */	stw r0, 0xc(r1)
.L_814839C0:
/* 814839C0 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 814839C4 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 814839C8 | 7C 03 00 00 */	cmpw r3, r0
/* 814839CC | 41 80 FF 90 */	blt .L_8148395C
/* 814839D0 | 57 03 06 3E */	clrlwi r3, r24, 24
/* 814839D4 | A0 1D 00 00 */	lhz r0, 0x0(r29)
/* 814839D8 | 7C 03 00 50 */	subf r0, r3, r0
/* 814839DC | 54 00 04 3E */	clrlwi r0, r0, 16
/* 814839E0 | B0 1D 00 00 */	sth r0, 0x0(r29)
/* 814839E4 | 38 00 00 00 */	li r0, 0x0
/* 814839E8 | 98 1E 00 00 */	stb r0, 0x0(r30)
.L_814839EC:
/* 814839EC | 38 60 00 00 */	li r3, 0x0
.L_814839F0:
/* 814839F0 | 39 61 00 50 */	addi r11, r1, 0x50
/* 814839F4 | 48 17 5B 09 */	bl _restgpr_23
/* 814839F8 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 814839FC | 7C 08 03 A6 */	mtlr r0
/* 81483A00 | 38 21 00 50 */	addi r1, r1, 0x50
/* 81483A04 | 4E 80 00 20 */	blr
.endfn Zi8_814834AC

# .text:0x260C | 0x81483A08 | size: 0xA74
.fn Zi8GetKOcandidates, global
/* 81483A08 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 81483A0C | 7C 08 02 A6 */	mflr r0
/* 81483A10 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 81483A14 | 39 61 00 60 */	addi r11, r1, 0x60
/* 81483A18 | 48 17 5A A9 */	bl _savegpr_27
/* 81483A1C | 7C 7F 1B 78 */	mr r31, r3
/* 81483A20 | 7C 9E 23 78 */	mr r30, r4
/* 81483A24 | 7C BB 2B 78 */	mr r27, r5
/* 81483A28 | 3C 60 00 01 */	lis r3, 0x1
/* 81483A2C | 38 63 FF FF */	subi r3, r3, 0x1
/* 81483A30 | B0 61 00 12 */	sth r3, 0x12(r1)
/* 81483A34 | 38 00 00 00 */	li r0, 0x0
/* 81483A38 | 90 01 00 2C */	stw r0, 0x2c(r1)
/* 81483A3C | 38 00 00 00 */	li r0, 0x0
/* 81483A40 | 90 01 00 38 */	stw r0, 0x38(r1)
/* 81483A44 | 98 01 00 3C */	stb r0, 0x3c(r1)
/* 81483A48 | 38 00 00 00 */	li r0, 0x0
/* 81483A4C | 98 01 00 0E */	stb r0, 0xe(r1)
/* 81483A50 | 38 00 00 00 */	li r0, 0x0
/* 81483A54 | 98 01 00 0D */	stb r0, 0xd(r1)
/* 81483A58 | 38 00 00 00 */	li r0, 0x0
/* 81483A5C | 98 01 00 0C */	stb r0, 0xc(r1)
/* 81483A60 | 38 00 00 00 */	li r0, 0x0
/* 81483A64 | 98 01 00 0B */	stb r0, 0xb(r1)
/* 81483A68 | A0 1F 00 1E */	lhz r0, 0x1e(r31)
/* 81483A6C | B0 01 00 10 */	sth r0, 0x10(r1)
/* 81483A70 | 38 00 00 00 */	li r0, 0x0
/* 81483A74 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81483A78 | 38 60 00 00 */	li r3, 0x0
/* 81483A7C | 90 61 00 20 */	stw r3, 0x20(r1)
/* 81483A80 | 38 00 00 00 */	li r0, 0x0
/* 81483A84 | 98 01 00 09 */	stb r0, 0x9(r1)
/* 81483A88 | 38 60 00 64 */	li r3, 0x64
/* 81483A8C | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81483A90 | 7F 64 DB 78 */	mr r4, r27
/* 81483A94 | 48 00 09 E9 */	bl Zi8LogError
/* 81483A98 | 7F E3 FB 78 */	mr r3, r31
/* 81483A9C | 7F 64 DB 78 */	mr r4, r27
/* 81483AA0 | 4B FF F7 C5 */	bl Zi8_81483264
/* 81483AA4 | 38 60 00 12 */	li r3, 0x12
/* 81483AA8 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81483AAC | 38 80 00 09 */	li r4, 0x9
/* 81483AB0 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81483AB4 | 7F 65 DB 78 */	mr r5, r27
/* 81483AB8 | 4B FD B8 F9 */	bl Zi8GetTableAddress
/* 81483ABC | 7C 7C 1B 78 */	mr r28, r3
/* 81483AC0 | 38 60 00 12 */	li r3, 0x12
/* 81483AC4 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81483AC8 | 38 80 00 0A */	li r4, 0xa
/* 81483ACC | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81483AD0 | 7F 65 DB 78 */	mr r5, r27
/* 81483AD4 | 4B FD B8 DD */	bl Zi8GetTableAddress
/* 81483AD8 | 90 61 00 34 */	stw r3, 0x34(r1)
/* 81483ADC | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81483AE0 | 40 82 00 1C */	bne .L_81483AFC
/* 81483AE4 | 38 60 07 6C */	li r3, 0x76c
/* 81483AE8 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81483AEC | 7F 64 DB 78 */	mr r4, r27
/* 81483AF0 | 48 00 09 91 */	bl Zi8ReplaceLastError
/* 81483AF4 | 38 60 00 00 */	li r3, 0x0
/* 81483AF8 | 48 00 09 6C */	b .L_81484464
.L_81483AFC:
/* 81483AFC | 80 81 00 34 */	lwz r4, 0x34(r1)
/* 81483B00 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81483B04 | 40 82 00 1C */	bne .L_81483B20
/* 81483B08 | 38 60 07 76 */	li r3, 0x776
/* 81483B0C | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81483B10 | 7F 64 DB 78 */	mr r4, r27
/* 81483B14 | 48 00 09 6D */	bl Zi8ReplaceLastError
/* 81483B18 | 38 60 00 00 */	li r3, 0x0
/* 81483B1C | 48 00 09 48 */	b .L_81484464
.L_81483B20:
/* 81483B20 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 81483B24 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81483B28 | 40 82 00 20 */	bne .L_81483B48
/* 81483B2C | 38 00 00 00 */	li r0, 0x0
/* 81483B30 | 98 1F 00 21 */	stb r0, 0x21(r31)
/* 81483B34 | 38 00 00 00 */	li r0, 0x0
/* 81483B38 | 98 1F 00 20 */	stb r0, 0x20(r31)
/* 81483B3C | 38 00 00 00 */	li r0, 0x0
/* 81483B40 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 81483B44 | B0 03 00 00 */	sth r0, 0x0(r3)
.L_81483B48:
/* 81483B48 | 38 60 00 64 */	li r3, 0x64
/* 81483B4C | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81483B50 | 7F 64 DB 78 */	mr r4, r27
/* 81483B54 | 48 00 09 29 */	bl Zi8LogError
/* 81483B58 | 88 1F 00 14 */	lbz r0, 0x14(r31)
/* 81483B5C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81483B60 | 41 82 05 D8 */	beq .L_81484138
/* 81483B64 | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 81483B68 | A0 63 00 00 */	lhz r3, 0x0(r3)
/* 81483B6C | 7F 84 E3 78 */	mr r4, r28
/* 81483B70 | 7F 65 DB 78 */	mr r5, r27
/* 81483B74 | 4B FF F4 B9 */	bl Zi8_8148302C
/* 81483B78 | B0 61 00 18 */	sth r3, 0x18(r1)
/* 81483B7C | 54 65 04 3E */	clrlwi r5, r3, 16
/* 81483B80 | 28 05 FF FF */	cmplwi r5, 0xffff
/* 81483B84 | 41 82 05 40 */	beq .L_814840C4
/* 81483B88 | A0 81 00 18 */	lhz r4, 0x18(r1)
/* 81483B8C | 54 83 18 38 */	slwi r3, r4, 3
/* 81483B90 | A0 01 00 18 */	lhz r0, 0x18(r1)
/* 81483B94 | 7C 03 02 14 */	add r0, r3, r0
/* 81483B98 | 7C 60 E2 14 */	add r3, r0, r28
/* 81483B9C | 88 03 00 04 */	lbz r0, 0x4(r3)
/* 81483BA0 | 54 04 07 38 */	rlwinm r4, r0, 0, 28, 28
/* 81483BA4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81483BA8 | 41 82 05 1C */	beq .L_814840C4
/* 81483BAC | A0 01 00 18 */	lhz r0, 0x18(r1)
/* 81483BB0 | 54 03 18 38 */	slwi r3, r0, 3
/* 81483BB4 | A0 01 00 18 */	lhz r0, 0x18(r1)
/* 81483BB8 | 7C 03 02 14 */	add r0, r3, r0
/* 81483BBC | 7C 60 E2 14 */	add r3, r0, r28
/* 81483BC0 | 88 C3 00 06 */	lbz r6, 0x6(r3)
/* 81483BC4 | A0 01 00 18 */	lhz r0, 0x18(r1)
/* 81483BC8 | 54 03 18 38 */	slwi r3, r0, 3
/* 81483BCC | A0 01 00 18 */	lhz r0, 0x18(r1)
/* 81483BD0 | 7C 03 02 14 */	add r0, r3, r0
/* 81483BD4 | 7C 80 E2 14 */	add r4, r0, r28
/* 81483BD8 | 88 64 00 04 */	lbz r3, 0x4(r4)
/* 81483BDC | 54 60 07 BE */	clrlwi r0, r3, 30
/* 81483BE0 | 54 05 80 1E */	slwi r5, r0, 16
/* 81483BE4 | A0 81 00 18 */	lhz r4, 0x18(r1)
/* 81483BE8 | 54 83 18 38 */	slwi r3, r4, 3
/* 81483BEC | A0 01 00 18 */	lhz r0, 0x18(r1)
/* 81483BF0 | 7C 03 02 14 */	add r0, r3, r0
/* 81483BF4 | 7C 60 E2 14 */	add r3, r0, r28
/* 81483BF8 | 88 03 00 05 */	lbz r0, 0x5(r3)
/* 81483BFC | 54 00 40 2E */	slwi r0, r0, 8
/* 81483C00 | 7C A0 03 78 */	or r0, r5, r0
/* 81483C04 | 7C C4 03 78 */	or r4, r6, r0
/* 81483C08 | 90 81 00 28 */	stw r4, 0x28(r1)
/* 81483C0C | 88 7F 00 14 */	lbz r3, 0x14(r31)
/* 81483C10 | 38 03 FF FF */	subi r0, r3, 0x1
/* 81483C14 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81483C18 | 98 61 00 0E */	stb r3, 0xe(r1)
/* 81483C1C | 38 00 00 01 */	li r0, 0x1
/* 81483C20 | 98 01 00 0D */	stb r0, 0xd(r1)
/* 81483C24 | 80 61 00 34 */	lwz r3, 0x34(r1)
/* 81483C28 | 80 01 00 28 */	lwz r0, 0x28(r1)
/* 81483C2C | 7F A3 02 14 */	add r29, r3, r0
/* 81483C30 | 48 00 00 B4 */	b .L_81483CE4
.L_81483C34:
/* 81483C34 | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 81483C38 | 88 01 00 0D */	lbz r0, 0xd(r1)
/* 81483C3C | 54 00 08 3C */	slwi r0, r0, 1
/* 81483C40 | 7C 63 02 2E */	lhzx r3, r3, r0
/* 81483C44 | 7F 84 E3 78 */	mr r4, r28
/* 81483C48 | 7F 65 DB 78 */	mr r5, r27
/* 81483C4C | 4B FF F3 E1 */	bl Zi8_8148302C
/* 81483C50 | B0 61 00 18 */	sth r3, 0x18(r1)
/* 81483C54 | A0 81 00 18 */	lhz r4, 0x18(r1)
/* 81483C58 | 88 1D 00 00 */	lbz r0, 0x0(r29)
/* 81483C5C | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81483C60 | 54 00 06 FE */	clrlwi r0, r0, 27
/* 81483C64 | 54 03 40 2E */	slwi r3, r0, 8
/* 81483C68 | 88 1D 00 01 */	lbz r0, 0x1(r29)
/* 81483C6C | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81483C70 | 7C 63 03 78 */	or r3, r3, r0
/* 81483C74 | 7C 04 18 00 */	cmpw r4, r3
/* 81483C78 | 40 82 00 50 */	bne .L_81483CC8
/* 81483C7C | 88 61 00 0E */	lbz r3, 0xe(r1)
/* 81483C80 | 38 03 FF FF */	subi r0, r3, 0x1
/* 81483C84 | 98 01 00 0E */	stb r0, 0xe(r1)
/* 81483C88 | 88 61 00 0D */	lbz r3, 0xd(r1)
/* 81483C8C | 38 63 00 01 */	addi r3, r3, 0x1
/* 81483C90 | 98 61 00 0D */	stb r3, 0xd(r1)
/* 81483C94 | 88 1D 00 00 */	lbz r0, 0x0(r29)
/* 81483C98 | 54 00 06 72 */	rlwinm r0, r0, 0, 25, 25
/* 81483C9C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81483CA0 | 41 82 00 20 */	beq .L_81483CC0
/* 81483CA4 | 88 7F 00 14 */	lbz r3, 0x14(r31)
/* 81483CA8 | 38 03 FF FF */	subi r0, r3, 0x1
/* 81483CAC | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81483CB0 | 98 01 00 0E */	stb r0, 0xe(r1)
/* 81483CB4 | 38 60 00 01 */	li r3, 0x1
/* 81483CB8 | 98 61 00 0D */	stb r3, 0xd(r1)
/* 81483CBC | 48 00 00 34 */	b .L_81483CF0
.L_81483CC0:
/* 81483CC0 | 3B BD 00 02 */	addi r29, r29, 0x2
/* 81483CC4 | 48 00 00 20 */	b .L_81483CE4
.L_81483CC8:
/* 81483CC8 | 38 00 00 01 */	li r0, 0x1
/* 81483CCC | 98 01 00 0D */	stb r0, 0xd(r1)
/* 81483CD0 | 88 7F 00 14 */	lbz r3, 0x14(r31)
/* 81483CD4 | 38 83 FF FF */	subi r4, r3, 0x1
/* 81483CD8 | 54 80 06 3E */	clrlwi r0, r4, 24
/* 81483CDC | 98 01 00 0E */	stb r0, 0xe(r1)
/* 81483CE0 | 48 00 00 10 */	b .L_81483CF0
.L_81483CE4:
/* 81483CE4 | 88 61 00 0E */	lbz r3, 0xe(r1)
/* 81483CE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81483CEC | 40 82 FF 48 */	bne .L_81483C34
.L_81483CF0:
/* 81483CF0 | 88 01 00 0E */	lbz r0, 0xe(r1)
/* 81483CF4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81483CF8 | 40 82 03 90 */	bne .L_81484088
/* 81483CFC | 88 1D 00 00 */	lbz r0, 0x0(r29)
/* 81483D00 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 81483D04 | 54 60 06 FE */	clrlwi r0, r3, 27
/* 81483D08 | 54 00 40 2E */	slwi r0, r0, 8
/* 81483D0C | 88 BD 00 01 */	lbz r5, 0x1(r29)
/* 81483D10 | 7C 04 2B 78 */	or r4, r0, r5
/* 81483D14 | 54 83 04 3E */	clrlwi r3, r4, 16
/* 81483D18 | B0 61 00 18 */	sth r3, 0x18(r1)
/* 81483D1C | A0 61 00 18 */	lhz r3, 0x18(r1)
/* 81483D20 | 54 63 18 38 */	slwi r3, r3, 3
/* 81483D24 | A0 01 00 18 */	lhz r0, 0x18(r1)
/* 81483D28 | 7C 03 02 14 */	add r0, r3, r0
/* 81483D2C | 7C 60 E2 14 */	add r3, r0, r28
/* 81483D30 | 88 03 00 07 */	lbz r0, 0x7(r3)
/* 81483D34 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81483D38 | 54 04 40 2E */	slwi r4, r0, 8
/* 81483D3C | A0 61 00 18 */	lhz r3, 0x18(r1)
/* 81483D40 | 54 60 18 38 */	slwi r0, r3, 3
/* 81483D44 | A0 61 00 18 */	lhz r3, 0x18(r1)
/* 81483D48 | 7C 00 1A 14 */	add r0, r0, r3
/* 81483D4C | 7C 60 E2 14 */	add r3, r0, r28
/* 81483D50 | 88 03 00 08 */	lbz r0, 0x8(r3)
/* 81483D54 | 7C 80 03 78 */	or r0, r4, r0
/* 81483D58 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 81483D5C | B0 01 00 14 */	sth r0, 0x14(r1)
/* 81483D60 | 88 1F 00 14 */	lbz r0, 0x14(r31)
/* 81483D64 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81483D68 | 40 82 01 D4 */	bne .L_81483F3C
/* 81483D6C | A0 01 00 18 */	lhz r0, 0x18(r1)
/* 81483D70 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 81483D74 | A0 01 00 12 */	lhz r0, 0x12(r1)
/* 81483D78 | 7C 03 00 40 */	cmplw r3, r0
/* 81483D7C | 40 82 00 3C */	bne .L_81483DB8
/* 81483D80 | 48 00 00 08 */	b .L_81483D88
.L_81483D84:
/* 81483D84 | 3B BD 00 02 */	addi r29, r29, 0x2
.L_81483D88:
/* 81483D88 | 88 1D 00 00 */	lbz r0, 0x0(r29)
/* 81483D8C | 54 00 06 72 */	rlwinm r0, r0, 0, 25, 25
/* 81483D90 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81483D94 | 41 82 FF F0 */	beq .L_81483D84
/* 81483D98 | 3B BD 00 02 */	addi r29, r29, 0x2
/* 81483D9C | 88 7F 00 14 */	lbz r3, 0x14(r31)
/* 81483DA0 | 38 03 FF FF */	subi r0, r3, 0x1
/* 81483DA4 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81483DA8 | 98 01 00 0E */	stb r0, 0xe(r1)
/* 81483DAC | 38 00 00 01 */	li r0, 0x1
/* 81483DB0 | 98 01 00 0D */	stb r0, 0xd(r1)
/* 81483DB4 | 48 00 03 00 */	b .L_814840B4
.L_81483DB8:
/* 81483DB8 | A0 01 00 18 */	lhz r0, 0x18(r1)
/* 81483DBC | B0 01 00 12 */	sth r0, 0x12(r1)
/* 81483DC0 | 88 1F 00 0C */	lbz r0, 0xc(r31)
/* 81483DC4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81483DC8 | 40 82 00 9C */	bne .L_81483E64
/* 81483DCC | A0 01 00 10 */	lhz r0, 0x10(r1)
/* 81483DD0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81483DD4 | 41 82 00 14 */	beq .L_81483DE8
/* 81483DD8 | A0 61 00 10 */	lhz r3, 0x10(r1)
/* 81483DDC | 38 03 FF FF */	subi r0, r3, 0x1
/* 81483DE0 | B0 01 00 10 */	sth r0, 0x10(r1)
/* 81483DE4 | 48 00 02 A4 */	b .L_81484088
.L_81483DE8:
/* 81483DE8 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 81483DEC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81483DF0 | 41 82 00 24 */	beq .L_81483E14
/* 81483DF4 | 80 61 00 24 */	lwz r3, 0x24(r1)
/* 81483DF8 | 38 63 00 01 */	addi r3, r3, 0x1
/* 81483DFC | 90 61 00 24 */	stw r3, 0x24(r1)
/* 81483E00 | 80 1E 00 0C */	lwz r0, 0xc(r30)
/* 81483E04 | 7C 03 00 00 */	cmpw r3, r0
/* 81483E08 | 41 80 02 80 */	blt .L_81484088
/* 81483E0C | 80 7E 00 0C */	lwz r3, 0xc(r30)
/* 81483E10 | 48 00 06 54 */	b .L_81484464
.L_81483E14:
/* 81483E14 | A0 A1 00 14 */	lhz r5, 0x14(r1)
/* 81483E18 | 80 9F 00 18 */	lwz r4, 0x18(r31)
/* 81483E1C | 88 61 00 0C */	lbz r3, 0xc(r1)
/* 81483E20 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81483E24 | 54 00 08 3C */	slwi r0, r0, 1
/* 81483E28 | 7C A4 03 2E */	sthx r5, r4, r0
/* 81483E2C | 38 03 00 01 */	addi r0, r3, 0x1
/* 81483E30 | 98 01 00 0C */	stb r0, 0xc(r1)
/* 81483E34 | 88 7F 00 20 */	lbz r3, 0x20(r31)
/* 81483E38 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81483E3C | 98 1F 00 20 */	stb r0, 0x20(r31)
/* 81483E40 | 88 7F 00 21 */	lbz r3, 0x21(r31)
/* 81483E44 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81483E48 | 98 1F 00 21 */	stb r0, 0x21(r31)
/* 81483E4C | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81483E50 | 88 1F 00 1C */	lbz r0, 0x1c(r31)
/* 81483E54 | 7C 03 00 40 */	cmplw r3, r0
/* 81483E58 | 41 80 02 30 */	blt .L_81484088
/* 81483E5C | 88 7F 00 21 */	lbz r3, 0x21(r31)
/* 81483E60 | 48 00 06 04 */	b .L_81484464
.L_81483E64:
/* 81483E64 | A0 A1 00 14 */	lhz r5, 0x14(r1)
/* 81483E68 | 80 9F 00 18 */	lwz r4, 0x18(r31)
/* 81483E6C | 88 61 00 0C */	lbz r3, 0xc(r1)
/* 81483E70 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81483E74 | 54 00 08 3C */	slwi r0, r0, 1
/* 81483E78 | 7C A4 03 2E */	sthx r5, r4, r0
/* 81483E7C | 38 03 00 01 */	addi r0, r3, 0x1
/* 81483E80 | 98 01 00 0C */	stb r0, 0xc(r1)
/* 81483E84 | 88 7F 00 20 */	lbz r3, 0x20(r31)
/* 81483E88 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81483E8C | 98 1F 00 20 */	stb r0, 0x20(r31)
/* 81483E90 | 88 7F 00 21 */	lbz r3, 0x21(r31)
/* 81483E94 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81483E98 | 98 1F 00 21 */	stb r0, 0x21(r31)
/* 81483E9C | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81483EA0 | 88 1F 00 1C */	lbz r0, 0x1c(r31)
/* 81483EA4 | 7C 03 00 40 */	cmplw r3, r0
/* 81483EA8 | 41 80 01 E0 */	blt .L_81484088
/* 81483EAC | 7F E3 FB 78 */	mr r3, r31
/* 81483EB0 | 38 81 00 10 */	addi r4, r1, 0x10
/* 81483EB4 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 81483EB8 | 38 C1 00 09 */	addi r6, r1, 0x9
/* 81483EBC | 7F 67 DB 78 */	mr r7, r27
/* 81483EC0 | 4B FF F5 ED */	bl Zi8_814834AC
/* 81483EC4 | 88 01 00 0C */	lbz r0, 0xc(r1)
/* 81483EC8 | 98 1F 00 20 */	stb r0, 0x20(r31)
/* 81483ECC | 88 01 00 0C */	lbz r0, 0xc(r1)
/* 81483ED0 | 98 1F 00 21 */	stb r0, 0x21(r31)
/* 81483ED4 | 88 01 00 0C */	lbz r0, 0xc(r1)
/* 81483ED8 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81483EDC | 88 1F 00 1C */	lbz r0, 0x1c(r31)
/* 81483EE0 | 7C 03 00 40 */	cmplw r3, r0
/* 81483EE4 | 41 80 01 A4 */	blt .L_81484088
/* 81483EE8 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 81483EEC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81483EF0 | 41 82 00 44 */	beq .L_81483F34
/* 81483EF4 | 80 61 00 24 */	lwz r3, 0x24(r1)
/* 81483EF8 | 88 01 00 0C */	lbz r0, 0xc(r1)
/* 81483EFC | 7C 63 02 14 */	add r3, r3, r0
/* 81483F00 | 90 61 00 24 */	stw r3, 0x24(r1)
/* 81483F04 | 80 1E 00 0C */	lwz r0, 0xc(r30)
/* 81483F08 | 7C 03 00 00 */	cmpw r3, r0
/* 81483F0C | 41 80 00 0C */	blt .L_81483F18
/* 81483F10 | 80 7E 00 0C */	lwz r3, 0xc(r30)
/* 81483F14 | 48 00 05 50 */	b .L_81484464
.L_81483F18:
/* 81483F18 | 38 00 00 00 */	li r0, 0x0
/* 81483F1C | 98 1F 00 20 */	stb r0, 0x20(r31)
/* 81483F20 | 38 00 00 00 */	li r0, 0x0
/* 81483F24 | 98 1F 00 21 */	stb r0, 0x21(r31)
/* 81483F28 | 38 00 00 00 */	li r0, 0x0
/* 81483F2C | 98 01 00 0C */	stb r0, 0xc(r1)
/* 81483F30 | 48 00 01 58 */	b .L_81484088
.L_81483F34:
/* 81483F34 | 88 61 00 0C */	lbz r3, 0xc(r1)
/* 81483F38 | 48 00 05 2C */	b .L_81484464
.L_81483F3C:
/* 81483F3C | 38 00 00 00 */	li r0, 0x0
/* 81483F40 | 90 01 00 20 */	stw r0, 0x20(r1)
/* 81483F44 | 48 00 00 30 */	b .L_81483F74
.L_81483F48:
/* 81483F48 | A0 01 00 14 */	lhz r0, 0x14(r1)
/* 81483F4C | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81483F50 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 81483F54 | 80 01 00 20 */	lwz r0, 0x20(r1)
/* 81483F58 | 54 00 08 3C */	slwi r0, r0, 1
/* 81483F5C | 7C 03 02 2E */	lhzx r0, r3, r0
/* 81483F60 | 7C 04 00 40 */	cmplw r4, r0
/* 81483F64 | 41 82 00 20 */	beq .L_81483F84
/* 81483F68 | 80 61 00 20 */	lwz r3, 0x20(r1)
/* 81483F6C | 38 03 00 01 */	addi r0, r3, 0x1
/* 81483F70 | 90 01 00 20 */	stw r0, 0x20(r1)
.L_81483F74:
/* 81483F74 | 80 61 00 20 */	lwz r3, 0x20(r1)
/* 81483F78 | 88 01 00 0C */	lbz r0, 0xc(r1)
/* 81483F7C | 7C 03 00 00 */	cmpw r3, r0
/* 81483F80 | 41 80 FF C8 */	blt .L_81483F48
.L_81483F84:
/* 81483F84 | 80 61 00 20 */	lwz r3, 0x20(r1)
/* 81483F88 | 88 01 00 0C */	lbz r0, 0xc(r1)
/* 81483F8C | 7C 03 00 00 */	cmpw r3, r0
/* 81483F90 | 40 82 00 F8 */	bne .L_81484088
/* 81483F94 | 7F E3 FB 78 */	mr r3, r31
/* 81483F98 | A0 81 00 14 */	lhz r4, 0x14(r1)
/* 81483F9C | 7F 65 DB 78 */	mr r5, r27
/* 81483FA0 | 4B FF F4 51 */	bl Zi8_814833F0
/* 81483FA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81483FA8 | 40 82 00 E0 */	bne .L_81484088
/* 81483FAC | A0 A1 00 14 */	lhz r5, 0x14(r1)
/* 81483FB0 | 80 9F 00 18 */	lwz r4, 0x18(r31)
/* 81483FB4 | 88 61 00 0C */	lbz r3, 0xc(r1)
/* 81483FB8 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81483FBC | 54 00 08 3C */	slwi r0, r0, 1
/* 81483FC0 | 7C A4 03 2E */	sthx r5, r4, r0
/* 81483FC4 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81483FC8 | 98 01 00 0C */	stb r0, 0xc(r1)
/* 81483FCC | 88 7F 00 20 */	lbz r3, 0x20(r31)
/* 81483FD0 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81483FD4 | 98 1F 00 20 */	stb r0, 0x20(r31)
/* 81483FD8 | 88 7F 00 21 */	lbz r3, 0x21(r31)
/* 81483FDC | 38 03 00 01 */	addi r0, r3, 0x1
/* 81483FE0 | 98 1F 00 21 */	stb r0, 0x21(r31)
/* 81483FE4 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81483FE8 | 88 1F 00 1C */	lbz r0, 0x1c(r31)
/* 81483FEC | 7C 03 00 40 */	cmplw r3, r0
/* 81483FF0 | 41 80 00 98 */	blt .L_81484088
/* 81483FF4 | 7F E3 FB 78 */	mr r3, r31
/* 81483FF8 | 38 81 00 10 */	addi r4, r1, 0x10
/* 81483FFC | 38 A1 00 0C */	addi r5, r1, 0xc
/* 81484000 | 38 C1 00 09 */	addi r6, r1, 0x9
/* 81484004 | 7F 67 DB 78 */	mr r7, r27
/* 81484008 | 4B FF F4 A5 */	bl Zi8_814834AC
/* 8148400C | 88 01 00 0C */	lbz r0, 0xc(r1)
/* 81484010 | 98 1F 00 20 */	stb r0, 0x20(r31)
/* 81484014 | 88 01 00 0C */	lbz r0, 0xc(r1)
/* 81484018 | 98 1F 00 21 */	stb r0, 0x21(r31)
/* 8148401C | 88 01 00 0C */	lbz r0, 0xc(r1)
/* 81484020 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81484024 | 88 1F 00 1C */	lbz r0, 0x1c(r31)
/* 81484028 | 7C 03 00 40 */	cmplw r3, r0
/* 8148402C | 41 80 00 5C */	blt .L_81484088
/* 81484030 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 81484034 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81484038 | 41 82 00 44 */	beq .L_8148407C
/* 8148403C | 80 61 00 24 */	lwz r3, 0x24(r1)
/* 81484040 | 88 01 00 0C */	lbz r0, 0xc(r1)
/* 81484044 | 7C 63 02 14 */	add r3, r3, r0
/* 81484048 | 90 61 00 24 */	stw r3, 0x24(r1)
/* 8148404C | 80 1E 00 0C */	lwz r0, 0xc(r30)
/* 81484050 | 7C 03 00 00 */	cmpw r3, r0
/* 81484054 | 41 80 00 0C */	blt .L_81484060
/* 81484058 | 80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8148405C | 48 00 04 08 */	b .L_81484464
.L_81484060:
/* 81484060 | 38 00 00 00 */	li r0, 0x0
/* 81484064 | 98 1F 00 20 */	stb r0, 0x20(r31)
/* 81484068 | 38 00 00 00 */	li r0, 0x0
/* 8148406C | 98 1F 00 21 */	stb r0, 0x21(r31)
/* 81484070 | 38 00 00 00 */	li r0, 0x0
/* 81484074 | 98 01 00 0C */	stb r0, 0xc(r1)
/* 81484078 | 48 00 00 10 */	b .L_81484088
.L_8148407C:
/* 8148407C | 88 61 00 0C */	lbz r3, 0xc(r1)
/* 81484080 | 48 00 03 E4 */	b .L_81484464
.L_81484084:
/* 81484084 | 3B BD 00 02 */	addi r29, r29, 0x2
.L_81484088:
/* 81484088 | 88 1D 00 00 */	lbz r0, 0x0(r29)
/* 8148408C | 54 00 06 72 */	rlwinm r0, r0, 0, 25, 25
/* 81484090 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81484094 | 41 82 FF F0 */	beq .L_81484084
/* 81484098 | 3B BD 00 02 */	addi r29, r29, 0x2
/* 8148409C | 88 7F 00 14 */	lbz r3, 0x14(r31)
/* 814840A0 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814840A4 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 814840A8 | 98 01 00 0E */	stb r0, 0xe(r1)
/* 814840AC | 38 00 00 01 */	li r0, 0x1
/* 814840B0 | 98 01 00 0D */	stb r0, 0xd(r1)
.L_814840B4:
/* 814840B4 | 88 1D 00 00 */	lbz r0, 0x0(r29)
/* 814840B8 | 54 00 06 30 */	rlwinm r0, r0, 0, 24, 24
/* 814840BC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814840C0 | 41 82 FC 24 */	beq .L_81483CE4
.L_814840C4:
/* 814840C4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814840C8 | 90 01 00 2C */	stw r0, 0x2c(r1)
/* 814840CC | 88 01 00 0C */	lbz r0, 0xc(r1)
/* 814840D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814840D4 | 41 82 00 64 */	beq .L_81484138
/* 814840D8 | 7F E3 FB 78 */	mr r3, r31
/* 814840DC | 38 81 00 10 */	addi r4, r1, 0x10
/* 814840E0 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814840E4 | 38 C1 00 09 */	addi r6, r1, 0x9
/* 814840E8 | 7F 67 DB 78 */	mr r7, r27
/* 814840EC | 4B FF F3 C1 */	bl Zi8_814834AC
/* 814840F0 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 814840F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814840F8 | 41 82 00 30 */	beq .L_81484128
/* 814840FC | 80 61 00 24 */	lwz r3, 0x24(r1)
/* 81484100 | 88 01 00 0C */	lbz r0, 0xc(r1)
/* 81484104 | 7C 63 02 14 */	add r3, r3, r0
/* 81484108 | 90 61 00 24 */	stw r3, 0x24(r1)
/* 8148410C | 80 1E 00 0C */	lwz r0, 0xc(r30)
/* 81484110 | 7C 03 00 00 */	cmpw r3, r0
/* 81484114 | 41 80 00 0C */	blt .L_81484120
/* 81484118 | 80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8148411C | 48 00 03 48 */	b .L_81484464
.L_81484120:
/* 81484120 | 80 61 00 24 */	lwz r3, 0x24(r1)
/* 81484124 | 90 61 00 2C */	stw r3, 0x2c(r1)
.L_81484128:
/* 81484128 | 88 01 00 0C */	lbz r0, 0xc(r1)
/* 8148412C | 98 1F 00 20 */	stb r0, 0x20(r31)
/* 81484130 | 88 01 00 0C */	lbz r0, 0xc(r1)
/* 81484134 | 98 1F 00 21 */	stb r0, 0x21(r31)
.L_81484138:
/* 81484138 | 88 1F 00 0C */	lbz r0, 0xc(r31)
/* 8148413C | 28 00 00 09 */	cmplwi r0, 0x9
/* 81484140 | 40 81 00 14 */	ble .L_81484154
/* 81484144 | 38 00 00 00 */	li r0, 0x0
/* 81484148 | 98 1F 00 21 */	stb r0, 0x21(r31)
/* 8148414C | 38 60 00 00 */	li r3, 0x0
/* 81484150 | 48 00 03 14 */	b .L_81484464
.L_81484154:
/* 81484154 | 88 1F 00 0C */	lbz r0, 0xc(r31)
/* 81484158 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148415C | 41 82 00 1C */	beq .L_81484178
/* 81484160 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 81484164 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81484168 | 40 82 00 10 */	bne .L_81484178
/* 8148416C | 38 00 00 00 */	li r0, 0x0
/* 81484170 | 98 01 00 0A */	stb r0, 0xa(r1)
/* 81484174 | 48 00 00 0C */	b .L_81484180
.L_81484178:
/* 81484178 | 38 00 00 01 */	li r0, 0x1
/* 8148417C | 98 01 00 0A */	stb r0, 0xa(r1)
.L_81484180:
/* 81484180 | 38 60 00 12 */	li r3, 0x12
/* 81484184 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81484188 | 38 80 00 09 */	li r4, 0x9
/* 8148418C | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81484190 | 7F 65 DB 78 */	mr r5, r27
/* 81484194 | 4B FD B2 9D */	bl Zi8GetTableCount
/* 81484198 | B0 61 00 16 */	sth r3, 0x16(r1)
/* 8148419C | 7F E3 FB 78 */	mr r3, r31
/* 814841A0 | 38 81 00 38 */	addi r4, r1, 0x38
/* 814841A4 | 4B FF EF 75 */	bl Zi8_81483118
.L_814841A8:
/* 814841A8 | 38 00 00 00 */	li r0, 0x0
/* 814841AC | 90 01 00 30 */	stw r0, 0x30(r1)
/* 814841B0 | 48 00 02 74 */	b .L_81484424
.L_814841B4:
/* 814841B4 | 38 60 00 01 */	li r3, 0x1
/* 814841B8 | 98 61 00 08 */	stb r3, 0x8(r1)
/* 814841BC | 80 61 00 30 */	lwz r3, 0x30(r1)
/* 814841C0 | 54 63 18 38 */	slwi r3, r3, 3
/* 814841C4 | 80 81 00 30 */	lwz r4, 0x30(r1)
/* 814841C8 | 7C 1C 1A 14 */	add r0, r28, r3
/* 814841CC | 7C 04 02 14 */	add r0, r4, r0
/* 814841D0 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 814841D4 | 38 00 00 00 */	li r0, 0x0
/* 814841D8 | 98 01 00 0B */	stb r0, 0xb(r1)
/* 814841DC | 88 1F 00 0C */	lbz r0, 0xc(r31)
/* 814841E0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814841E4 | 40 81 00 68 */	ble .L_8148424C
/* 814841E8 | 38 60 00 00 */	li r3, 0x0
/* 814841EC | 98 61 00 0B */	stb r3, 0xb(r1)
/* 814841F0 | 48 00 00 40 */	b .L_81484230
.L_814841F4:
/* 814841F4 | 88 01 00 0B */	lbz r0, 0xb(r1)
/* 814841F8 | 38 61 00 38 */	addi r3, r1, 0x38
/* 814841FC | 7C 63 00 AE */	lbzx r3, r3, r0
/* 81484200 | 54 65 06 3E */	clrlwi r5, r3, 24
/* 81484204 | 80 81 00 1C */	lwz r4, 0x1c(r1)
/* 81484208 | 88 61 00 0B */	lbz r3, 0xb(r1)
/* 8148420C | 7C 04 18 AE */	lbzx r0, r4, r3
/* 81484210 | 7C 05 00 40 */	cmplw r5, r0
/* 81484214 | 41 82 00 10 */	beq .L_81484224
/* 81484218 | 38 00 00 00 */	li r0, 0x0
/* 8148421C | 98 01 00 08 */	stb r0, 0x8(r1)
/* 81484220 | 48 00 00 2C */	b .L_8148424C
.L_81484224:
/* 81484224 | 88 61 00 0B */	lbz r3, 0xb(r1)
/* 81484228 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8148422C | 98 01 00 0B */	stb r0, 0xb(r1)
.L_81484230:
/* 81484230 | 88 81 00 0B */	lbz r4, 0xb(r1)
/* 81484234 | 88 1F 00 0C */	lbz r0, 0xc(r31)
/* 81484238 | 54 03 0F FE */	srwi r3, r0, 31
/* 8148423C | 7C 03 02 14 */	add r0, r3, r0
/* 81484240 | 7C 00 0E 70 */	srawi r0, r0, 1
/* 81484244 | 7C 04 00 00 */	cmpw r4, r0
/* 81484248 | 41 80 FF AC */	blt .L_814841F4
.L_8148424C:
/* 8148424C | 88 61 00 08 */	lbz r3, 0x8(r1)
/* 81484250 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81484254 | 41 82 00 50 */	beq .L_814842A4
/* 81484258 | 88 DF 00 0C */	lbz r6, 0xc(r31)
/* 8148425C | 54 C3 0F FE */	srwi r3, r6, 31
/* 81484260 | 54 C0 07 FE */	clrlwi r0, r6, 31
/* 81484264 | 7C 00 1A 78 */	xor r0, r0, r3
/* 81484268 | 7C 03 00 50 */	subf r0, r3, r0
/* 8148426C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81484270 | 41 82 00 34 */	beq .L_814842A4
/* 81484274 | 88 81 00 0B */	lbz r4, 0xb(r1)
/* 81484278 | 38 61 00 38 */	addi r3, r1, 0x38
/* 8148427C | 7C 03 20 AE */	lbzx r0, r3, r4
/* 81484280 | 54 05 06 36 */	rlwinm r5, r0, 0, 24, 27
/* 81484284 | 80 81 00 1C */	lwz r4, 0x1c(r1)
/* 81484288 | 88 61 00 0B */	lbz r3, 0xb(r1)
/* 8148428C | 7C 04 18 AE */	lbzx r0, r4, r3
/* 81484290 | 54 00 06 36 */	rlwinm r0, r0, 0, 24, 27
/* 81484294 | 7C 05 00 00 */	cmpw r5, r0
/* 81484298 | 41 82 00 0C */	beq .L_814842A4
/* 8148429C | 38 60 00 00 */	li r3, 0x0
/* 814842A0 | 98 61 00 08 */	stb r3, 0x8(r1)
.L_814842A4:
/* 814842A4 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 814842A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814842AC | 41 82 01 6C */	beq .L_81484418
/* 814842B0 | 88 1F 00 0C */	lbz r0, 0xc(r31)
/* 814842B4 | 54 04 0F FE */	srwi r4, r0, 31
/* 814842B8 | 54 03 07 FE */	clrlwi r3, r0, 31
/* 814842BC | 7C 60 22 78 */	xor r0, r3, r4
/* 814842C0 | 7C 04 00 50 */	subf r0, r4, r0
/* 814842C4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814842C8 | 41 82 00 48 */	beq .L_81484310
/* 814842CC | 80 61 00 1C */	lwz r3, 0x1c(r1)
/* 814842D0 | 88 01 00 0B */	lbz r0, 0xb(r1)
/* 814842D4 | 7C 63 00 AE */	lbzx r3, r3, r0
/* 814842D8 | 54 60 07 3E */	clrlwi r0, r3, 28
/* 814842DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814842E0 | 41 82 00 14 */	beq .L_814842F4
/* 814842E4 | 88 61 00 0A */	lbz r3, 0xa(r1)
/* 814842E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814842EC | 41 82 01 2C */	beq .L_81484418
/* 814842F0 | 48 00 00 60 */	b .L_81484350
.L_814842F4:
/* 814842F4 | 88 01 00 0A */	lbz r0, 0xa(r1)
/* 814842F8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814842FC | 41 82 00 54 */	beq .L_81484350
/* 81484300 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 81484304 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81484308 | 41 82 01 10 */	beq .L_81484418
/* 8148430C | 48 00 00 44 */	b .L_81484350
.L_81484310:
/* 81484310 | 80 61 00 1C */	lwz r3, 0x1c(r1)
/* 81484314 | 88 81 00 0B */	lbz r4, 0xb(r1)
/* 81484318 | 7C 03 20 AE */	lbzx r0, r3, r4
/* 8148431C | 54 00 06 36 */	rlwinm r0, r0, 0, 24, 27
/* 81484320 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81484324 | 41 82 00 14 */	beq .L_81484338
/* 81484328 | 88 01 00 0A */	lbz r0, 0xa(r1)
/* 8148432C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81484330 | 41 82 00 E8 */	beq .L_81484418
/* 81484334 | 48 00 00 1C */	b .L_81484350
.L_81484338:
/* 81484338 | 88 61 00 0A */	lbz r3, 0xa(r1)
/* 8148433C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81484340 | 41 82 00 10 */	beq .L_81484350
/* 81484344 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 81484348 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8148434C | 41 82 00 CC */	beq .L_81484418
.L_81484350:
/* 81484350 | A0 01 00 10 */	lhz r0, 0x10(r1)
/* 81484354 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81484358 | 41 82 00 14 */	beq .L_8148436C
/* 8148435C | A0 61 00 10 */	lhz r3, 0x10(r1)
/* 81484360 | 38 63 FF FF */	subi r3, r3, 0x1
/* 81484364 | B0 61 00 10 */	sth r3, 0x10(r1)
/* 81484368 | 48 00 00 B0 */	b .L_81484418
.L_8148436C:
/* 8148436C | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 81484370 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81484374 | 41 82 00 24 */	beq .L_81484398
/* 81484378 | 80 61 00 2C */	lwz r3, 0x2c(r1)
/* 8148437C | 38 63 00 01 */	addi r3, r3, 0x1
/* 81484380 | 90 61 00 2C */	stw r3, 0x2c(r1)
/* 81484384 | 80 1E 00 0C */	lwz r0, 0xc(r30)
/* 81484388 | 7C 03 00 00 */	cmpw r3, r0
/* 8148438C | 41 80 00 8C */	blt .L_81484418
/* 81484390 | 80 7E 00 0C */	lwz r3, 0xc(r30)
/* 81484394 | 48 00 00 D0 */	b .L_81484464
.L_81484398:
/* 81484398 | 80 01 00 30 */	lwz r0, 0x30(r1)
/* 8148439C | 54 03 18 38 */	slwi r3, r0, 3
/* 814843A0 | 80 01 00 30 */	lwz r0, 0x30(r1)
/* 814843A4 | 7C 03 02 14 */	add r0, r3, r0
/* 814843A8 | 7C 60 E2 14 */	add r3, r0, r28
/* 814843AC | 88 03 00 07 */	lbz r0, 0x7(r3)
/* 814843B0 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 814843B4 | 54 64 40 2E */	slwi r4, r3, 8
/* 814843B8 | 80 01 00 30 */	lwz r0, 0x30(r1)
/* 814843BC | 54 03 18 38 */	slwi r3, r0, 3
/* 814843C0 | 80 01 00 30 */	lwz r0, 0x30(r1)
/* 814843C4 | 7C 03 02 14 */	add r0, r3, r0
/* 814843C8 | 7C 60 E2 14 */	add r3, r0, r28
/* 814843CC | 88 03 00 08 */	lbz r0, 0x8(r3)
/* 814843D0 | 7C 80 03 78 */	or r0, r4, r0
/* 814843D4 | 54 05 04 3E */	clrlwi r5, r0, 16
/* 814843D8 | 80 9F 00 18 */	lwz r4, 0x18(r31)
/* 814843DC | 88 61 00 0C */	lbz r3, 0xc(r1)
/* 814843E0 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 814843E4 | 54 00 08 3C */	slwi r0, r0, 1
/* 814843E8 | 7C A4 03 2E */	sthx r5, r4, r0
/* 814843EC | 38 63 00 01 */	addi r3, r3, 0x1
/* 814843F0 | 98 61 00 0C */	stb r3, 0xc(r1)
/* 814843F4 | 88 7F 00 21 */	lbz r3, 0x21(r31)
/* 814843F8 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814843FC | 98 1F 00 21 */	stb r0, 0x21(r31)
/* 81484400 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81484404 | 88 9F 00 1C */	lbz r4, 0x1c(r31)
/* 81484408 | 7C 00 20 40 */	cmplw r0, r4
/* 8148440C | 41 80 00 0C */	blt .L_81484418
/* 81484410 | 88 7F 00 21 */	lbz r3, 0x21(r31)
/* 81484414 | 48 00 00 50 */	b .L_81484464
.L_81484418:
/* 81484418 | 80 61 00 30 */	lwz r3, 0x30(r1)
/* 8148441C | 38 03 00 01 */	addi r0, r3, 0x1
/* 81484420 | 90 01 00 30 */	stw r0, 0x30(r1)
.L_81484424:
/* 81484424 | 80 61 00 30 */	lwz r3, 0x30(r1)
/* 81484428 | A0 01 00 16 */	lhz r0, 0x16(r1)
/* 8148442C | 7C 03 00 00 */	cmpw r3, r0
/* 81484430 | 41 80 FD 84 */	blt .L_814841B4
/* 81484434 | 88 61 00 0A */	lbz r3, 0xa(r1)
/* 81484438 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8148443C | 98 01 00 0A */	stb r0, 0xa(r1)
/* 81484440 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 81484444 | 28 00 00 02 */	cmplwi r0, 0x2
/* 81484448 | 41 80 FD 60 */	blt .L_814841A8
/* 8148444C | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 81484450 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81484454 | 41 82 00 0C */	beq .L_81484460
/* 81484458 | 80 61 00 2C */	lwz r3, 0x2c(r1)
/* 8148445C | 48 00 00 08 */	b .L_81484464
.L_81484460:
/* 81484460 | 88 7F 00 21 */	lbz r3, 0x21(r31)
.L_81484464:
/* 81484464 | 39 61 00 60 */	addi r11, r1, 0x60
/* 81484468 | 48 17 50 A5 */	bl _restgpr_27
/* 8148446C | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 81484470 | 7C 08 03 A6 */	mtlr r0
/* 81484474 | 38 21 00 60 */	addi r1, r1, 0x60
/* 81484478 | 4E 80 00 20 */	blr
.endfn Zi8GetKOcandidates

# 0x8166B2B0..0x8166B3D0 | size: 0x120
.data
.balign 8

# .data:0x0 | 0x8166B2B0 | size: 0x7C
.obj jumptable_8166B2B0, local
	.rel Zi8GetKoreanCandidates, .L_81481AFC
	.rel Zi8GetKoreanCandidates, .L_81481894
	.rel Zi8GetKoreanCandidates, .L_814818B4
	.rel Zi8GetKoreanCandidates, .L_81481AFC
	.rel Zi8GetKoreanCandidates, .L_814818D4
	.rel Zi8GetKoreanCandidates, .L_81481AFC
	.rel Zi8GetKoreanCandidates, .L_81481AFC
	.rel Zi8GetKoreanCandidates, .L_814818F4
	.rel Zi8GetKoreanCandidates, .L_81481914
	.rel Zi8GetKoreanCandidates, .L_81481934
	.rel Zi8GetKoreanCandidates, .L_81481AFC
	.rel Zi8GetKoreanCandidates, .L_81481AFC
	.rel Zi8GetKoreanCandidates, .L_81481AFC
	.rel Zi8GetKoreanCandidates, .L_81481AFC
	.rel Zi8GetKoreanCandidates, .L_81481AFC
	.rel Zi8GetKoreanCandidates, .L_81481AFC
	.rel Zi8GetKoreanCandidates, .L_81481AFC
	.rel Zi8GetKoreanCandidates, .L_81481954
	.rel Zi8GetKoreanCandidates, .L_81481974
	.rel Zi8GetKoreanCandidates, .L_81481994
	.rel Zi8GetKoreanCandidates, .L_81481AFC
	.rel Zi8GetKoreanCandidates, .L_814819B4
	.rel Zi8GetKoreanCandidates, .L_814819D4
	.rel Zi8GetKoreanCandidates, .L_814819F4
	.rel Zi8GetKoreanCandidates, .L_81481A14
	.rel Zi8GetKoreanCandidates, .L_81481A34
	.rel Zi8GetKoreanCandidates, .L_81481A54
	.rel Zi8GetKoreanCandidates, .L_81481A74
	.rel Zi8GetKoreanCandidates, .L_81481A94
	.rel Zi8GetKoreanCandidates, .L_81481AB4
	.rel Zi8GetKoreanCandidates, .L_81481AD4
.endobj jumptable_8166B2B0

# .data:0x7C | 0x8166B32C | size: 0x7C
.obj jumptable_8166B32C, local
	.rel Zi8_81481E6C, .L_81482380
	.rel Zi8_81481E6C, .L_81481F10
	.rel Zi8_81481E6C, .L_81481F4C
	.rel Zi8_81481E6C, .L_81482380
	.rel Zi8_81481E6C, .L_81481F88
	.rel Zi8_81481E6C, .L_81482380
	.rel Zi8_81481E6C, .L_81482380
	.rel Zi8_81481E6C, .L_81481FC4
	.rel Zi8_81481E6C, .L_81482000
	.rel Zi8_81481E6C, .L_8148203C
	.rel Zi8_81481E6C, .L_81482380
	.rel Zi8_81481E6C, .L_81482380
	.rel Zi8_81481E6C, .L_81482380
	.rel Zi8_81481E6C, .L_81482380
	.rel Zi8_81481E6C, .L_81482380
	.rel Zi8_81481E6C, .L_81482380
	.rel Zi8_81481E6C, .L_81482380
	.rel Zi8_81481E6C, .L_81482078
	.rel Zi8_81481E6C, .L_814820B4
	.rel Zi8_81481E6C, .L_814820F0
	.rel Zi8_81481E6C, .L_81482380
	.rel Zi8_81481E6C, .L_8148212C
	.rel Zi8_81481E6C, .L_81482168
	.rel Zi8_81481E6C, .L_814821A4
	.rel Zi8_81481E6C, .L_814821E0
	.rel Zi8_81481E6C, .L_8148221C
	.rel Zi8_81481E6C, .L_81482258
	.rel Zi8_81481E6C, .L_81482294
	.rel Zi8_81481E6C, .L_814822D0
	.rel Zi8_81481E6C, .L_8148230C
	.rel Zi8_81481E6C, .L_81482348
.endobj jumptable_8166B32C

# .data:0xF8 | 0x8166B3A8 | size: 0x28
.obj jumptable_8166B3A8, local
	.rel Zi8_81483118, .L_81483258
	.rel Zi8_81483118, .L_81483238
	.rel Zi8_81483118, .L_81483224
	.rel Zi8_81483118, .L_81483204
	.rel Zi8_81483118, .L_814831F0
	.rel Zi8_81483118, .L_814831D0
	.rel Zi8_81483118, .L_814831BC
	.rel Zi8_81483118, .L_8148319C
	.rel Zi8_81483118, .L_81483188
	.rel Zi8_81483118, .L_81483168
.endobj jumptable_8166B3A8

# 0x81695018..0x81695020 | size: 0x8
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81695018 | size: 0x1
.obj lbl_81695018, global
	.byte 0x01
.endobj lbl_81695018

# .sdata2:0x1 | 0x81695019 | size: 0x1
.obj lbl_81695019, global
	.byte 0x05
.endobj lbl_81695019

# .sdata2:0x2 | 0x8169501A | size: 0x1
.obj lbl_8169501A, global
	.byte 0x00
.endobj lbl_8169501A

# .sdata2:0x3 | 0x8169501B | size: 0x1
.obj lbl_8169501B, global
	.byte 0x00
.endobj lbl_8169501B

# .sdata2:0x4 | 0x8169501C | size: 0x1
.obj lbl_8169501C, global
	.byte 0x00
.endobj lbl_8169501C

# .sdata2:0x5 | 0x8169501D | size: 0x1
.obj lbl_8169501D, global
	.byte 0x00
.endobj lbl_8169501D

# .sdata2:0x6 | 0x8169501E | size: 0x1
.obj lbl_8169501E, global
	.byte 0x00
.endobj lbl_8169501E

# .sdata2:0x7 | 0x8169501F | size: 0x1
.obj lbl_8169501F, global
	.byte 0x00
.endobj lbl_8169501F
