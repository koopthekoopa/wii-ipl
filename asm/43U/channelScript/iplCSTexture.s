.include "macros.inc"
.file "iplCSTexture.cpp"

# 0x8145A428..0x8145A894 | size: 0x46C
.text
.balign 4

# .text:0x0 | 0x8145A428 | size: 0x58
# ipl::cs::texture::is_valid_fmt(const CHANSVmObjHdr*)
.fn is_valid_fmt__Q33ipl2cs7textureFPC13CHANSVmObjHdr, global
/* 8145A428 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145A42C | 38 A0 00 00 */	li r5, 0x0
/* 8145A430 | 41 82 00 48 */	beq .L_8145A478
/* 8145A434 | 80 E3 00 04 */	lwz r7, 0x4(r3)
/* 8145A438 | 38 80 00 0E */	li r4, 0xe
/* 8145A43C | 80 C3 00 00 */	lwz r6, 0x0(r3)
/* 8145A440 | 38 60 00 00 */	li r3, 0x0
/* 8145A444 | 7C 07 20 10 */	subfc r0, r7, r4
/* 8145A448 | 7C 06 19 10 */	subfe r0, r6, r3
/* 8145A44C | 7C 04 21 10 */	subfe r0, r4, r4
/* 8145A450 | 7C 00 00 D1 */	neg. r0, r0
/* 8145A454 | 40 82 00 18 */	bne .L_8145A46C
/* 8145A458 | 38 00 00 01 */	li r0, 0x1
/* 8145A45C | 7C 00 38 30 */	slw r0, r0, r7
/* 8145A460 | 70 00 40 7F */	andi. r0, r0, 0x407f
/* 8145A464 | 41 82 00 08 */	beq .L_8145A46C
/* 8145A468 | 38 60 00 01 */	li r3, 0x1
.L_8145A46C:
/* 8145A46C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145A470 | 41 82 00 08 */	beq .L_8145A478
/* 8145A474 | 38 A0 00 01 */	li r5, 0x1
.L_8145A478:
/* 8145A478 | 7C A3 2B 78 */	mr r3, r5
/* 8145A47C | 4E 80 00 20 */	blr
.endfn is_valid_fmt__Q33ipl2cs7textureFPC13CHANSVmObjHdr

# .text:0x58 | 0x8145A480 | size: 0x38
# ipl::cs::texture::is_valid_wrap(const CHANSVmObjHdr*)
.fn is_valid_wrap__Q33ipl2cs7textureFPC13CHANSVmObjHdr, global
/* 8145A480 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145A484 | 38 A0 00 00 */	li r5, 0x0
/* 8145A488 | 41 82 00 28 */	beq .L_8145A4B0
/* 8145A48C | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8145A490 | 38 80 00 02 */	li r4, 0x2
/* 8145A494 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145A498 | 7C 00 20 10 */	subfc r0, r0, r4
/* 8145A49C | 7C 03 29 10 */	subfe r0, r3, r5
/* 8145A4A0 | 7C 04 21 10 */	subfe r0, r4, r4
/* 8145A4A4 | 7C 00 00 D1 */	neg. r0, r0
/* 8145A4A8 | 40 82 00 08 */	bne .L_8145A4B0
/* 8145A4AC | 38 A0 00 01 */	li r5, 0x1
.L_8145A4B0:
/* 8145A4B0 | 7C A3 2B 78 */	mr r3, r5
/* 8145A4B4 | 4E 80 00 20 */	blr
.endfn is_valid_wrap__Q33ipl2cs7textureFPC13CHANSVmObjHdr

# .text:0x90 | 0x8145A4B8 | size: 0xE8
# ipl::cs::texture::init_tpl(CHANSVm*, CHANSVmObjHdr*)
.fn init_tpl__Q33ipl2cs7textureFP7CHANSVmP13CHANSVmObjHdr, global
/* 8145A4B8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8145A4BC | 7C 08 02 A6 */	mflr r0
/* 8145A4C0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8145A4C4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8145A4C8 | 48 19 EF FD */	bl _savegpr_28
/* 8145A4CC | 7C 9D 23 78 */	mr r29, r4
/* 8145A4D0 | 7C 7C 1B 78 */	mr r28, r3
/* 8145A4D4 | 3B C0 00 00 */	li r30, 0x0
/* 8145A4D8 | 38 80 00 00 */	li r4, 0x0
/* 8145A4DC | 4B FF 21 E5 */	bl CHANSVmGetArgInteger
/* 8145A4E0 | 7C 7F 1B 78 */	mr r31, r3
/* 8145A4E4 | 7F 83 E3 78 */	mr r3, r28
/* 8145A4E8 | 38 80 00 01 */	li r4, 0x1
/* 8145A4EC | 4B FF 21 D5 */	bl CHANSVmGetArgInteger
/* 8145A4F0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145A4F4 | 7C 65 1B 78 */	mr r5, r3
/* 8145A4F8 | 41 82 00 0C */	beq .L_8145A504
/* 8145A4FC | 83 FF 00 04 */	lwz r31, 0x4(r31)
/* 8145A500 | 48 00 00 08 */	b .L_8145A508
.L_8145A504:
/* 8145A504 | 3B E0 00 00 */	li r31, 0x0
.L_8145A508:
/* 8145A508 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8145A50C | 7F E4 FB 78 */	mr r4, r31
/* 8145A510 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8145A514 | 41 82 00 0C */	beq .L_8145A520
/* 8145A518 | 80 A5 00 04 */	lwz r5, 0x4(r5)
/* 8145A51C | 48 00 00 08 */	b .L_8145A524
.L_8145A520:
/* 8145A520 | 38 A0 00 00 */	li r5, 0x0
.L_8145A524:
/* 8145A524 | 4B F0 A1 5D */	bl __ct__Q33ipl7utility12tpl_validityFP10TPLPaletteUl
/* 8145A528 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8145A52C | 7F E4 FB 78 */	mr r4, r31
/* 8145A530 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8145A534 | 80 63 00 88 */	lwz r3, 0x88(r3)
/* 8145A538 | 4B EE 0B B1 */	bl isValidAddr__Q33ipl7channel20ChannelScriptManagerFPv
/* 8145A53C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145A540 | 41 82 00 44 */	beq .L_8145A584
/* 8145A544 | 57 E0 06 FF */	clrlwi. r0, r31, 27
/* 8145A548 | 40 82 00 3C */	bne .L_8145A584
/* 8145A54C | 38 61 00 08 */	addi r3, r1, 0x8
/* 8145A550 | 4B F0 A4 DD */	bl is_valid__Q33ipl7utility12tpl_validityFv
/* 8145A554 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145A558 | 41 82 00 2C */	beq .L_8145A584
/* 8145A55C | 7F 83 E3 78 */	mr r3, r28
/* 8145A560 | 7F A4 EB 78 */	mr r4, r29
/* 8145A564 | 38 A0 00 24 */	li r5, 0x24
/* 8145A568 | 4B FF 06 ED */	bl CHANSVmNewObjData
/* 8145A56C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145A570 | 41 82 00 14 */	beq .L_8145A584
/* 8145A574 | 38 00 00 00 */	li r0, 0x0
/* 8145A578 | 3B C0 00 01 */	li r30, 0x1
/* 8145A57C | 90 03 00 00 */	stw r0, 0x0(r3)
/* 8145A580 | 93 E3 00 04 */	stw r31, 0x4(r3)
.L_8145A584:
/* 8145A584 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8145A588 | 7F C3 F3 78 */	mr r3, r30
/* 8145A58C | 48 19 EF 85 */	bl _restgpr_28
/* 8145A590 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8145A594 | 7C 08 03 A6 */	mtlr r0
/* 8145A598 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8145A59C | 4E 80 00 20 */	blr
.endfn init_tpl__Q33ipl2cs7textureFP7CHANSVmP13CHANSVmObjHdr

# .text:0x178 | 0x8145A5A0 | size: 0x1D8
# ipl::cs::texture::init_texobj(CHANSVm*, CHANSVmObjHdr*, unsigned long)
.fn init_texobj__Q33ipl2cs7textureFP7CHANSVmP13CHANSVmObjHdrUl, global
/* 8145A5A0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8145A5A4 | 7C 08 02 A6 */	mflr r0
/* 8145A5A8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8145A5AC | 39 61 00 30 */	addi r11, r1, 0x30
/* 8145A5B0 | 48 19 EF 01 */	bl _savegpr_23
/* 8145A5B4 | 7C 98 23 78 */	mr r24, r4
/* 8145A5B8 | 7C 77 1B 78 */	mr r23, r3
/* 8145A5BC | 7C B9 2B 78 */	mr r25, r5
/* 8145A5C0 | 3B A0 00 00 */	li r29, 0x0
/* 8145A5C4 | 38 80 00 01 */	li r4, 0x1
/* 8145A5C8 | 4B FF 20 F9 */	bl CHANSVmGetArgInteger
/* 8145A5CC | 7C 7E 1B 78 */	mr r30, r3
/* 8145A5D0 | 7E E3 BB 78 */	mr r3, r23
/* 8145A5D4 | 38 80 00 02 */	li r4, 0x2
/* 8145A5D8 | 4B FF 20 E9 */	bl CHANSVmGetArgInteger
/* 8145A5DC | 7C 7F 1B 78 */	mr r31, r3
/* 8145A5E0 | 7E E3 BB 78 */	mr r3, r23
/* 8145A5E4 | 38 80 00 03 */	li r4, 0x3
/* 8145A5E8 | 4B FF 20 D9 */	bl CHANSVmGetArgInteger
/* 8145A5EC | 7C 7C 1B 78 */	mr r28, r3
/* 8145A5F0 | 7E E3 BB 78 */	mr r3, r23
/* 8145A5F4 | 38 80 00 04 */	li r4, 0x4
/* 8145A5F8 | 4B FF 20 C9 */	bl CHANSVmGetArgInteger
/* 8145A5FC | 7C 7B 1B 78 */	mr r27, r3
/* 8145A600 | 7E E3 BB 78 */	mr r3, r23
/* 8145A604 | 38 80 00 05 */	li r4, 0x5
/* 8145A608 | 4B FF 20 B9 */	bl CHANSVmGetArgInteger
/* 8145A60C | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 8145A610 | 7C 7A 1B 78 */	mr r26, r3
/* 8145A614 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 8145A618 | 7F 24 CB 78 */	mr r4, r25
/* 8145A61C | 80 65 00 88 */	lwz r3, 0x88(r5)
/* 8145A620 | 4B EE 0A C9 */	bl isValidAddr__Q33ipl7channel20ChannelScriptManagerFPv
/* 8145A624 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145A628 | 41 82 01 34 */	beq .L_8145A75C
/* 8145A62C | 57 20 06 FF */	clrlwi. r0, r25, 27
/* 8145A630 | 40 82 01 2C */	bne .L_8145A75C
/* 8145A634 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8145A638 | 38 80 00 00 */	li r4, 0x0
/* 8145A63C | 41 82 00 44 */	beq .L_8145A680
/* 8145A640 | 80 DE 00 00 */	lwz r6, 0x0(r30)
/* 8145A644 | 38 A0 00 00 */	li r5, 0x0
/* 8145A648 | 80 FE 00 04 */	lwz r7, 0x4(r30)
/* 8145A64C | 7C E0 33 79 */	or. r0, r7, r6
/* 8145A650 | 41 82 00 24 */	beq .L_8145A674
/* 8145A654 | 38 00 04 00 */	li r0, 0x400
/* 8145A658 | 38 60 00 00 */	li r3, 0x0
/* 8145A65C | 7C 00 38 10 */	subfc r0, r0, r7
/* 8145A660 | 7C 03 31 10 */	subfe r0, r3, r6
/* 8145A664 | 7C 07 39 10 */	subfe r0, r7, r7
/* 8145A668 | 7C 00 00 D1 */	neg. r0, r0
/* 8145A66C | 41 82 00 08 */	beq .L_8145A674
/* 8145A670 | 38 A0 00 01 */	li r5, 0x1
.L_8145A674:
/* 8145A674 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8145A678 | 41 82 00 08 */	beq .L_8145A680
/* 8145A67C | 38 80 00 01 */	li r4, 0x1
.L_8145A680:
/* 8145A680 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8145A684 | 41 82 00 D8 */	beq .L_8145A75C
/* 8145A688 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145A68C | 38 80 00 00 */	li r4, 0x0
/* 8145A690 | 41 82 00 44 */	beq .L_8145A6D4
/* 8145A694 | 80 DF 00 00 */	lwz r6, 0x0(r31)
/* 8145A698 | 38 A0 00 00 */	li r5, 0x0
/* 8145A69C | 80 FF 00 04 */	lwz r7, 0x4(r31)
/* 8145A6A0 | 7C E0 33 79 */	or. r0, r7, r6
/* 8145A6A4 | 41 82 00 24 */	beq .L_8145A6C8
/* 8145A6A8 | 38 00 04 00 */	li r0, 0x400
/* 8145A6AC | 38 60 00 00 */	li r3, 0x0
/* 8145A6B0 | 7C 00 38 10 */	subfc r0, r0, r7
/* 8145A6B4 | 7C 03 31 10 */	subfe r0, r3, r6
/* 8145A6B8 | 7C 07 39 10 */	subfe r0, r7, r7
/* 8145A6BC | 7C 00 00 D1 */	neg. r0, r0
/* 8145A6C0 | 41 82 00 08 */	beq .L_8145A6C8
/* 8145A6C4 | 38 A0 00 01 */	li r5, 0x1
.L_8145A6C8:
/* 8145A6C8 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8145A6CC | 41 82 00 08 */	beq .L_8145A6D4
/* 8145A6D0 | 38 80 00 01 */	li r4, 0x1
.L_8145A6D4:
/* 8145A6D4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8145A6D8 | 41 82 00 84 */	beq .L_8145A75C
/* 8145A6DC | 7F 83 E3 78 */	mr r3, r28
/* 8145A6E0 | 4B FF FD 49 */	bl is_valid_fmt__Q33ipl2cs7textureFPC13CHANSVmObjHdr
/* 8145A6E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145A6E8 | 41 82 00 74 */	beq .L_8145A75C
/* 8145A6EC | 7F 63 DB 78 */	mr r3, r27
/* 8145A6F0 | 4B FF FD 91 */	bl is_valid_wrap__Q33ipl2cs7textureFPC13CHANSVmObjHdr
/* 8145A6F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145A6F8 | 41 82 00 64 */	beq .L_8145A75C
/* 8145A6FC | 7F 43 D3 78 */	mr r3, r26
/* 8145A700 | 4B FF FD 81 */	bl is_valid_wrap__Q33ipl2cs7textureFPC13CHANSVmObjHdr
/* 8145A704 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145A708 | 41 82 00 54 */	beq .L_8145A75C
/* 8145A70C | 7E E3 BB 78 */	mr r3, r23
/* 8145A710 | 7F 04 C3 78 */	mr r4, r24
/* 8145A714 | 38 A0 00 24 */	li r5, 0x24
/* 8145A718 | 4B FF 05 3D */	bl CHANSVmNewObjData
/* 8145A71C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145A720 | 41 82 00 3C */	beq .L_8145A75C
/* 8145A724 | 38 00 00 01 */	li r0, 0x1
/* 8145A728 | 7F 24 CB 78 */	mr r4, r25
/* 8145A72C | 90 03 00 00 */	stw r0, 0x0(r3)
/* 8145A730 | 39 40 00 00 */	li r10, 0x0
/* 8145A734 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8145A738 | 80 BE 00 04 */	lwz r5, 0x4(r30)
/* 8145A73C | 80 DF 00 04 */	lwz r6, 0x4(r31)
/* 8145A740 | 80 FC 00 04 */	lwz r7, 0x4(r28)
/* 8145A744 | 54 A5 04 3E */	clrlwi r5, r5, 16
/* 8145A748 | 81 1B 00 04 */	lwz r8, 0x4(r27)
/* 8145A74C | 54 C6 04 3E */	clrlwi r6, r6, 16
/* 8145A750 | 81 3A 00 04 */	lwz r9, 0x4(r26)
/* 8145A754 | 48 0E B5 1D */	bl GXInitTexObj
/* 8145A758 | 3B A0 00 01 */	li r29, 0x1
.L_8145A75C:
/* 8145A75C | 39 61 00 30 */	addi r11, r1, 0x30
/* 8145A760 | 7F A3 EB 78 */	mr r3, r29
/* 8145A764 | 48 19 ED 99 */	bl _restgpr_23
/* 8145A768 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8145A76C | 7C 08 03 A6 */	mtlr r0
/* 8145A770 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8145A774 | 4E 80 00 20 */	blr
.endfn init_texobj__Q33ipl2cs7textureFP7CHANSVmP13CHANSVmObjHdrUl

# .text:0x350 | 0x8145A778 | size: 0xE4
# ipl::cs::texture::ctor(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn ctor__Q33ipl2cs7textureFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145A778 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145A77C | 7C 08 02 A6 */	mflr r0
/* 8145A780 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145A784 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145A788 | 48 19 ED 3D */	bl _savegpr_28
/* 8145A78C | 7C 7C 1B 78 */	mr r28, r3
/* 8145A790 | 7C BD 2B 78 */	mr r29, r5
/* 8145A794 | 3B E0 00 00 */	li r31, 0x0
/* 8145A798 | 4B FF 1E ED */	bl CHANSVmGetArgc
/* 8145A79C | 28 03 00 02 */	cmplwi r3, 0x2
/* 8145A7A0 | 40 82 00 18 */	bne .L_8145A7B8
/* 8145A7A4 | 7F 83 E3 78 */	mr r3, r28
/* 8145A7A8 | 7F A4 EB 78 */	mr r4, r29
/* 8145A7AC | 4B FF FD 0D */	bl init_tpl__Q33ipl2cs7textureFP7CHANSVmP13CHANSVmObjHdr
/* 8145A7B0 | 7C 7F 1B 78 */	mr r31, r3
/* 8145A7B4 | 48 00 00 8C */	b .L_8145A840
.L_8145A7B8:
/* 8145A7B8 | 28 03 00 06 */	cmplwi r3, 0x6
/* 8145A7BC | 40 82 00 84 */	bne .L_8145A840
/* 8145A7C0 | 7F 83 E3 78 */	mr r3, r28
/* 8145A7C4 | 38 80 00 00 */	li r4, 0x0
/* 8145A7C8 | 4B FF 1E C9 */	bl CHANSVmGetArg
/* 8145A7CC | 7C 7E 1B 78 */	mr r30, r3
/* 8145A7D0 | 38 8D 98 18 */	li r4, lbl_81697858@sda21
/* 8145A7D4 | 4B FF 28 31 */	bl CHANSVmCheckNativeInstance
/* 8145A7D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145A7DC | 41 82 00 34 */	beq .L_8145A810
/* 8145A7E0 | 7F C3 F3 78 */	mr r3, r30
/* 8145A7E4 | 48 00 1D 45 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145A7E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145A7EC | 41 82 00 54 */	beq .L_8145A840
/* 8145A7F0 | 80 BE 00 00 */	lwz r5, 0x0(r30)
/* 8145A7F4 | 7F 83 E3 78 */	mr r3, r28
/* 8145A7F8 | 7F A4 EB 78 */	mr r4, r29
/* 8145A7FC | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 8145A800 | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 8145A804 | 4B FF FD 9D */	bl init_texobj__Q33ipl2cs7textureFP7CHANSVmP13CHANSVmObjHdrUl
/* 8145A808 | 7C 7F 1B 78 */	mr r31, r3
/* 8145A80C | 48 00 00 34 */	b .L_8145A840
.L_8145A810:
/* 8145A810 | 7F 83 E3 78 */	mr r3, r28
/* 8145A814 | 38 80 00 00 */	li r4, 0x0
/* 8145A818 | 4B FF 1E A9 */	bl CHANSVmGetArgInteger
/* 8145A81C | 7C 65 1B 79 */	mr. r5, r3
/* 8145A820 | 7F 83 E3 78 */	mr r3, r28
/* 8145A824 | 7F A4 EB 78 */	mr r4, r29
/* 8145A828 | 41 82 00 0C */	beq .L_8145A834
/* 8145A82C | 80 A5 00 04 */	lwz r5, 0x4(r5)
/* 8145A830 | 48 00 00 08 */	b .L_8145A838
.L_8145A834:
/* 8145A834 | 38 A0 00 00 */	li r5, 0x0
.L_8145A838:
/* 8145A838 | 4B FF FD 69 */	bl init_texobj__Q33ipl2cs7textureFP7CHANSVmP13CHANSVmObjHdrUl
/* 8145A83C | 7C 7F 1B 78 */	mr r31, r3
.L_8145A840:
/* 8145A840 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145A844 | 7F E3 FB 78 */	mr r3, r31
/* 8145A848 | 48 19 EC C9 */	bl _restgpr_28
/* 8145A84C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145A850 | 7C 08 03 A6 */	mtlr r0
/* 8145A854 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145A858 | 4E 80 00 20 */	blr
.endfn ctor__Q33ipl2cs7textureFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x434 | 0x8145A85C | size: 0x38
# ipl::cs::texture::init(CHANSVm*)
.fn init__Q33ipl2cs7textureFP7CHANSVm, global
/* 8145A85C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8145A860 | 7C 08 02 A6 */	mflr r0
/* 8145A864 | 3C A0 81 46 */	lis r5, ctor__Q33ipl2cs7textureFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr@ha
/* 8145A868 | 38 8D 98 1E */	li r4, lbl_8169785E@sda21
/* 8145A86C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8145A870 | 38 A5 A7 78 */	addi r5, r5, ctor__Q33ipl2cs7textureFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr@l
/* 8145A874 | 38 C0 00 00 */	li r6, 0x0
/* 8145A878 | 4B FF 20 5D */	bl CHANSVmAddNativeClass
/* 8145A87C | 30 03 FF FF */	subic r0, r3, 0x1
/* 8145A880 | 7C 60 19 10 */	subfe r3, r0, r3
/* 8145A884 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8145A888 | 7C 08 03 A6 */	mtlr r0
/* 8145A88C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8145A890 | 4E 80 00 20 */	blr
.endfn init__Q33ipl2cs7textureFP7CHANSVm

# 0x81697858..0x81697868 | size: 0x10
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697858 | size: 0x6
.obj lbl_81697858, global
	.string "Image"
.endobj lbl_81697858

# .sdata:0x6 | 0x8169785E | size: 0xA
.obj lbl_8169785E, global
	.4byte 0x54657874
	.4byte 0x75726500
	.2byte 0x0000
.endobj lbl_8169785E
