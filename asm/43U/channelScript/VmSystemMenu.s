.include "macros.inc"
.file "VmSystemMenu.c"

# 0x814576E8..0x8145802C | size: 0x944
.text
.balign 4

# .text:0x0 | 0x814576E8 | size: 0x30
.fn VmSystemMenu_814576E8, local
/* 814576E8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814576EC | 7C 08 02 A6 */	mflr r0
/* 814576F0 | 7C A4 2B 78 */	mr r4, r5
/* 814576F4 | 38 A0 00 01 */	li r5, 0x1
/* 814576F8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814576FC | 4B FF 35 59 */	bl CHANSVmNewObjData
/* 81457700 | 30 03 FF FF */	subic r0, r3, 0x1
/* 81457704 | 7C 60 19 10 */	subfe r3, r0, r3
/* 81457708 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8145770C | 7C 08 03 A6 */	mtlr r0
/* 81457710 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81457714 | 4E 80 00 20 */	blr
.endfn VmSystemMenu_814576E8

# .text:0x30 | 0x81457718 | size: 0x34
.fn CHANSGetExport_SC_ASPECT_RATIO_4x3, global
/* 81457718 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8145771C | 7C 08 02 A6 */	mflr r0
/* 81457720 | 7C A4 2B 78 */	mr r4, r5
/* 81457724 | 38 C0 00 00 */	li r6, 0x0
/* 81457728 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8145772C | 38 A0 00 00 */	li r5, 0x0
/* 81457730 | 4B FF 42 69 */	bl CHANSVmSetInteger
/* 81457734 | 7C 60 00 34 */	cntlzw r0, r3
/* 81457738 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8145773C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81457740 | 7C 08 03 A6 */	mtlr r0
/* 81457744 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81457748 | 4E 80 00 20 */	blr
.endfn CHANSGetExport_SC_ASPECT_RATIO_4x3

# .text:0x64 | 0x8145774C | size: 0x34
.fn CHANSGetExport_SC_ASPECT_RATIO_16x9, global
/* 8145774C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81457750 | 7C 08 02 A6 */	mflr r0
/* 81457754 | 7C A4 2B 78 */	mr r4, r5
/* 81457758 | 38 C0 00 01 */	li r6, 0x1
/* 8145775C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81457760 | 38 A0 00 00 */	li r5, 0x0
/* 81457764 | 4B FF 42 35 */	bl CHANSVmSetInteger
/* 81457768 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145776C | 54 03 D9 7E */	srwi r3, r0, 5
/* 81457770 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81457774 | 7C 08 03 A6 */	mtlr r0
/* 81457778 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8145777C | 4E 80 00 20 */	blr
.endfn CHANSGetExport_SC_ASPECT_RATIO_16x9

# .text:0x98 | 0x81457780 | size: 0x34
.fn CHANSGetExport_SC_LANG_JAPANESE, global
/* 81457780 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81457784 | 7C 08 02 A6 */	mflr r0
/* 81457788 | 7C A4 2B 78 */	mr r4, r5
/* 8145778C | 38 C0 00 00 */	li r6, 0x0
/* 81457790 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81457794 | 38 A0 00 00 */	li r5, 0x0
/* 81457798 | 4B FF 42 01 */	bl CHANSVmSetInteger
/* 8145779C | 7C 60 00 34 */	cntlzw r0, r3
/* 814577A0 | 54 03 D9 7E */	srwi r3, r0, 5
/* 814577A4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814577A8 | 7C 08 03 A6 */	mtlr r0
/* 814577AC | 38 21 00 10 */	addi r1, r1, 0x10
/* 814577B0 | 4E 80 00 20 */	blr
.endfn CHANSGetExport_SC_LANG_JAPANESE

# .text:0xCC | 0x814577B4 | size: 0x34
.fn CHANSGetExport_SC_LANG_ENGLISH, global
/* 814577B4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814577B8 | 7C 08 02 A6 */	mflr r0
/* 814577BC | 7C A4 2B 78 */	mr r4, r5
/* 814577C0 | 38 C0 00 01 */	li r6, 0x1
/* 814577C4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814577C8 | 38 A0 00 00 */	li r5, 0x0
/* 814577CC | 4B FF 41 CD */	bl CHANSVmSetInteger
/* 814577D0 | 7C 60 00 34 */	cntlzw r0, r3
/* 814577D4 | 54 03 D9 7E */	srwi r3, r0, 5
/* 814577D8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814577DC | 7C 08 03 A6 */	mtlr r0
/* 814577E0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814577E4 | 4E 80 00 20 */	blr
.endfn CHANSGetExport_SC_LANG_ENGLISH

# .text:0x100 | 0x814577E8 | size: 0x34
.fn CHANSGetExport_SC_LANG_GERMAN, global
/* 814577E8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814577EC | 7C 08 02 A6 */	mflr r0
/* 814577F0 | 7C A4 2B 78 */	mr r4, r5
/* 814577F4 | 38 C0 00 02 */	li r6, 0x2
/* 814577F8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814577FC | 38 A0 00 00 */	li r5, 0x0
/* 81457800 | 4B FF 41 99 */	bl CHANSVmSetInteger
/* 81457804 | 7C 60 00 34 */	cntlzw r0, r3
/* 81457808 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8145780C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81457810 | 7C 08 03 A6 */	mtlr r0
/* 81457814 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81457818 | 4E 80 00 20 */	blr
.endfn CHANSGetExport_SC_LANG_GERMAN

# .text:0x134 | 0x8145781C | size: 0x34
.fn CHANSGetExport_SC_LANG_FRENCH, global
/* 8145781C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81457820 | 7C 08 02 A6 */	mflr r0
/* 81457824 | 7C A4 2B 78 */	mr r4, r5
/* 81457828 | 38 C0 00 03 */	li r6, 0x3
/* 8145782C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81457830 | 38 A0 00 00 */	li r5, 0x0
/* 81457834 | 4B FF 41 65 */	bl CHANSVmSetInteger
/* 81457838 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145783C | 54 03 D9 7E */	srwi r3, r0, 5
/* 81457840 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81457844 | 7C 08 03 A6 */	mtlr r0
/* 81457848 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8145784C | 4E 80 00 20 */	blr
.endfn CHANSGetExport_SC_LANG_FRENCH

# .text:0x168 | 0x81457850 | size: 0x34
.fn CHANSGetExport_SC_LANG_SPANISH, global
/* 81457850 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81457854 | 7C 08 02 A6 */	mflr r0
/* 81457858 | 7C A4 2B 78 */	mr r4, r5
/* 8145785C | 38 C0 00 04 */	li r6, 0x4
/* 81457860 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81457864 | 38 A0 00 00 */	li r5, 0x0
/* 81457868 | 4B FF 41 31 */	bl CHANSVmSetInteger
/* 8145786C | 7C 60 00 34 */	cntlzw r0, r3
/* 81457870 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81457874 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81457878 | 7C 08 03 A6 */	mtlr r0
/* 8145787C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81457880 | 4E 80 00 20 */	blr
.endfn CHANSGetExport_SC_LANG_SPANISH

# .text:0x19C | 0x81457884 | size: 0x34
.fn CHANSGetExport_SC_LANG_ITALIAN, global
/* 81457884 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81457888 | 7C 08 02 A6 */	mflr r0
/* 8145788C | 7C A4 2B 78 */	mr r4, r5
/* 81457890 | 38 C0 00 05 */	li r6, 0x5
/* 81457894 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81457898 | 38 A0 00 00 */	li r5, 0x0
/* 8145789C | 4B FF 40 FD */	bl CHANSVmSetInteger
/* 814578A0 | 7C 60 00 34 */	cntlzw r0, r3
/* 814578A4 | 54 03 D9 7E */	srwi r3, r0, 5
/* 814578A8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814578AC | 7C 08 03 A6 */	mtlr r0
/* 814578B0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814578B4 | 4E 80 00 20 */	blr
.endfn CHANSGetExport_SC_LANG_ITALIAN

# .text:0x1D0 | 0x814578B8 | size: 0x34
.fn CHANSGetExport_SC_LANG_DUTCH, global
/* 814578B8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814578BC | 7C 08 02 A6 */	mflr r0
/* 814578C0 | 7C A4 2B 78 */	mr r4, r5
/* 814578C4 | 38 C0 00 06 */	li r6, 0x6
/* 814578C8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814578CC | 38 A0 00 00 */	li r5, 0x0
/* 814578D0 | 4B FF 40 C9 */	bl CHANSVmSetInteger
/* 814578D4 | 7C 60 00 34 */	cntlzw r0, r3
/* 814578D8 | 54 03 D9 7E */	srwi r3, r0, 5
/* 814578DC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814578E0 | 7C 08 03 A6 */	mtlr r0
/* 814578E4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814578E8 | 4E 80 00 20 */	blr
.endfn CHANSGetExport_SC_LANG_DUTCH

# .text:0x204 | 0x814578EC | size: 0x34
.fn CHANSGetExport_SC_LANG_SIMP_CHINESE, global
/* 814578EC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814578F0 | 7C 08 02 A6 */	mflr r0
/* 814578F4 | 7C A4 2B 78 */	mr r4, r5
/* 814578F8 | 38 C0 00 07 */	li r6, 0x7
/* 814578FC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81457900 | 38 A0 00 00 */	li r5, 0x0
/* 81457904 | 4B FF 40 95 */	bl CHANSVmSetInteger
/* 81457908 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145790C | 54 03 D9 7E */	srwi r3, r0, 5
/* 81457910 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81457914 | 7C 08 03 A6 */	mtlr r0
/* 81457918 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8145791C | 4E 80 00 20 */	blr
.endfn CHANSGetExport_SC_LANG_SIMP_CHINESE

# .text:0x238 | 0x81457920 | size: 0x34
.fn CHANSGetExport_SC_LANG_TRAD_CHINESE, global
/* 81457920 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81457924 | 7C 08 02 A6 */	mflr r0
/* 81457928 | 7C A4 2B 78 */	mr r4, r5
/* 8145792C | 38 C0 00 08 */	li r6, 0x8
/* 81457930 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81457934 | 38 A0 00 00 */	li r5, 0x0
/* 81457938 | 4B FF 40 61 */	bl CHANSVmSetInteger
/* 8145793C | 7C 60 00 34 */	cntlzw r0, r3
/* 81457940 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81457944 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81457948 | 7C 08 03 A6 */	mtlr r0
/* 8145794C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81457950 | 4E 80 00 20 */	blr
.endfn CHANSGetExport_SC_LANG_TRAD_CHINESE

# .text:0x26C | 0x81457954 | size: 0x34
.fn CHANSGetExport_SC_LANG_KOREAN, global
/* 81457954 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81457958 | 7C 08 02 A6 */	mflr r0
/* 8145795C | 7C A4 2B 78 */	mr r4, r5
/* 81457960 | 38 C0 00 09 */	li r6, 0x9
/* 81457964 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81457968 | 38 A0 00 00 */	li r5, 0x0
/* 8145796C | 4B FF 40 2D */	bl CHANSVmSetInteger
/* 81457970 | 7C 60 00 34 */	cntlzw r0, r3
/* 81457974 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81457978 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8145797C | 7C 08 03 A6 */	mtlr r0
/* 81457980 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81457984 | 4E 80 00 20 */	blr
.endfn CHANSGetExport_SC_LANG_KOREAN

# .text:0x2A0 | 0x81457988 | size: 0x40
.fn CHANSGetExport_scprivate, global
/* 81457988 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8145798C | 7C 08 02 A6 */	mflr r0
/* 81457990 | 7C 86 23 78 */	mr r6, r4
/* 81457994 | 7C A4 2B 78 */	mr r4, r5
/* 81457998 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8145799C | 38 A0 00 00 */	li r5, 0x0
/* 814579A0 | 80 C6 00 00 */	lwz r6, 0x0(r6)
/* 814579A4 | 80 C6 00 00 */	lwz r6, 0x0(r6)
/* 814579A8 | 88 C6 00 00 */	lbz r6, 0x0(r6)
/* 814579AC | 4B FF 3F ED */	bl CHANSVmSetInteger
/* 814579B0 | 7C 60 00 34 */	cntlzw r0, r3
/* 814579B4 | 54 03 D9 7E */	srwi r3, r0, 5
/* 814579B8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814579BC | 7C 08 03 A6 */	mtlr r0
/* 814579C0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814579C4 | 4E 80 00 20 */	blr
.endfn CHANSGetExport_scprivate

# .text:0x2E0 | 0x814579C8 | size: 0x60
.fn CHANSSetExport_scprivate, global
/* 814579C8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814579CC | 7C 08 02 A6 */	mflr r0
/* 814579D0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814579D4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814579D8 | 80 A4 00 00 */	lwz r5, 0x0(r4)
/* 814579DC | 38 80 00 00 */	li r4, 0x0
/* 814579E0 | 83 E5 00 00 */	lwz r31, 0x0(r5)
/* 814579E4 | 4B FF 4C DD */	bl CHANSVmGetArgInteger
/* 814579E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814579EC | 41 82 00 24 */	beq .L_81457A10
/* 814579F0 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814579F4 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 814579F8 | 38 60 00 01 */	li r3, 0x1
/* 814579FC | 7C 80 03 78 */	or r0, r4, r0
/* 81457A00 | 30 80 FF FF */	subic r4, r0, 0x1
/* 81457A04 | 7C 04 01 10 */	subfe r0, r4, r0
/* 81457A08 | 98 1F 00 00 */	stb r0, 0x0(r31)
/* 81457A0C | 48 00 00 08 */	b .L_81457A14
.L_81457A10:
/* 81457A10 | 38 60 00 00 */	li r3, 0x0
.L_81457A14:
/* 81457A14 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81457A18 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81457A1C | 7C 08 03 A6 */	mtlr r0
/* 81457A20 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81457A24 | 4E 80 00 20 */	blr
.endfn CHANSSetExport_scprivate

# .text:0x340 | 0x81457A28 | size: 0x28
.fn CHANSExport_beginRender, global
/* 81457A28 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81457A2C | 7C 08 02 A6 */	mflr r0
/* 81457A30 | 38 8D AD 21 */	li r4, lbl_81698D61@sda21
/* 81457A34 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81457A38 | 4B FF E9 0D */	bl CHANSVmSetSignal
/* 81457A3C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81457A40 | 38 60 00 01 */	li r3, 0x1
/* 81457A44 | 7C 08 03 A6 */	mtlr r0
/* 81457A48 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81457A4C | 4E 80 00 20 */	blr
.endfn CHANSExport_beginRender

# .text:0x368 | 0x81457A50 | size: 0x28
.fn CHANSExport_waitForRetrace, global
/* 81457A50 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81457A54 | 7C 08 02 A6 */	mflr r0
/* 81457A58 | 38 8D AD 20 */	li r4, lbl_81698D60@sda21
/* 81457A5C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81457A60 | 4B FF E8 E5 */	bl CHANSVmSetSignal
/* 81457A64 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81457A68 | 38 60 00 01 */	li r3, 0x1
/* 81457A6C | 7C 08 03 A6 */	mtlr r0
/* 81457A70 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81457A74 | 4E 80 00 20 */	blr
.endfn CHANSExport_waitForRetrace

# .text:0x390 | 0x81457A78 | size: 0x54
.fn CHANSExport_SCGetAspectRatio, global
/* 81457A78 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81457A7C | 7C 08 02 A6 */	mflr r0
/* 81457A80 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81457A84 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81457A88 | 7C BF 2B 78 */	mr r31, r5
/* 81457A8C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81457A90 | 7C 7E 1B 78 */	mr r30, r3
/* 81457A94 | 48 11 25 21 */	bl SCGetAspectRatio
/* 81457A98 | 54 66 06 3E */	clrlwi r6, r3, 24
/* 81457A9C | 7F C3 F3 78 */	mr r3, r30
/* 81457AA0 | 7F E4 FB 78 */	mr r4, r31
/* 81457AA4 | 38 A0 00 00 */	li r5, 0x0
/* 81457AA8 | 4B FF 3E F1 */	bl CHANSVmSetInteger
/* 81457AAC | 7C 60 00 34 */	cntlzw r0, r3
/* 81457AB0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81457AB4 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81457AB8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81457ABC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81457AC0 | 7C 08 03 A6 */	mtlr r0
/* 81457AC4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81457AC8 | 4E 80 00 20 */	blr
.endfn CHANSExport_SCGetAspectRatio

# .text:0x3E4 | 0x81457ACC | size: 0x54
.fn CHANSExport_SCGetLanguage, global
/* 81457ACC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81457AD0 | 7C 08 02 A6 */	mflr r0
/* 81457AD4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81457AD8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81457ADC | 7C BF 2B 78 */	mr r31, r5
/* 81457AE0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81457AE4 | 7C 7E 1B 78 */	mr r30, r3
/* 81457AE8 | 48 11 26 1D */	bl SCGetLanguage
/* 81457AEC | 54 66 06 3E */	clrlwi r6, r3, 24
/* 81457AF0 | 7F C3 F3 78 */	mr r3, r30
/* 81457AF4 | 7F E4 FB 78 */	mr r4, r31
/* 81457AF8 | 38 A0 00 00 */	li r5, 0x0
/* 81457AFC | 4B FF 3E 9D */	bl CHANSVmSetInteger
/* 81457B00 | 7C 60 00 34 */	cntlzw r0, r3
/* 81457B04 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81457B08 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81457B0C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81457B10 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81457B14 | 7C 08 03 A6 */	mtlr r0
/* 81457B18 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81457B1C | 4E 80 00 20 */	blr
.endfn CHANSExport_SCGetLanguage

# .text:0x438 | 0x81457B20 | size: 0x50
.fn CHANSGetProductArea, local
/* 81457B20 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81457B24 | 7C 08 02 A6 */	mflr r0
/* 81457B28 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81457B2C | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 81457B30 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 81457B34 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 81457B38 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81457B3C | 41 82 00 20 */	beq .L_81457B5C
/* 81457B40 | 7C A4 2B 78 */	mr r4, r5
/* 81457B44 | 7D 06 43 78 */	mr r6, r8
/* 81457B48 | 7C E5 3B 78 */	mr r5, r7
/* 81457B4C | 4B FF 3E 4D */	bl CHANSVmSetInteger
/* 81457B50 | 7C 60 00 34 */	cntlzw r0, r3
/* 81457B54 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81457B58 | 48 00 00 08 */	b .L_81457B60
.L_81457B5C:
/* 81457B5C | 38 60 00 00 */	li r3, 0x0
.L_81457B60:
/* 81457B60 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81457B64 | 7C 08 03 A6 */	mtlr r0
/* 81457B68 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81457B6C | 4E 80 00 20 */	blr
.endfn CHANSGetProductArea

# .text:0x488 | 0x81457B70 | size: 0x60
.fn CHANSExport_SCGetProductArea, global
/* 81457B70 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81457B74 | 7C 08 02 A6 */	mflr r0
/* 81457B78 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81457B7C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81457B80 | 48 1A 19 49 */	bl _savegpr_29
/* 81457B84 | 7C 7D 1B 78 */	mr r29, r3
/* 81457B88 | 7C 9E 23 78 */	mr r30, r4
/* 81457B8C | 7C BF 2B 78 */	mr r31, r5
/* 81457B90 | 48 11 2F 3D */	bl SCGetProductArea
/* 81457B94 | 7C 68 07 74 */	extsb r8, r3
/* 81457B98 | 2C 08 00 05 */	cmpwi r8, 0x5
/* 81457B9C | 40 82 00 08 */	bne .L_81457BA4
/* 81457BA0 | 39 00 00 00 */	li r8, 0x0
.L_81457BA4:
/* 81457BA4 | 7F A3 EB 78 */	mr r3, r29
/* 81457BA8 | 7F C4 F3 78 */	mr r4, r30
/* 81457BAC | 7F E5 FB 78 */	mr r5, r31
/* 81457BB0 | 7D 07 FE 70 */	srawi r7, r8, 31
/* 81457BB4 | 4B FF FF 6D */	bl CHANSGetProductArea
/* 81457BB8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81457BBC | 48 1A 19 59 */	bl _restgpr_29
/* 81457BC0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81457BC4 | 7C 08 03 A6 */	mtlr r0
/* 81457BC8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81457BCC | 4E 80 00 20 */	blr
.endfn CHANSExport_SCGetProductArea

# .text:0x4E8 | 0x81457BD0 | size: 0xC
.fn CHANSGetExport_SC_PRODUCT_AREA_UNKNOWN, global
/* 81457BD0 | 39 00 FF FF */	li r8, -0x1
/* 81457BD4 | 38 E0 FF FF */	li r7, -0x1
/* 81457BD8 | 4B FF FF 48 */	b CHANSGetProductArea
.endfn CHANSGetExport_SC_PRODUCT_AREA_UNKNOWN

# .text:0x4F4 | 0x81457BDC | size: 0xC
.fn CHANSGetExport_SC_PRODUCT_AREA_JPN, global
/* 81457BDC | 39 00 00 00 */	li r8, 0x0
/* 81457BE0 | 38 E0 00 00 */	li r7, 0x0
/* 81457BE4 | 4B FF FF 3C */	b CHANSGetProductArea
.endfn CHANSGetExport_SC_PRODUCT_AREA_JPN

# .text:0x500 | 0x81457BE8 | size: 0xC
.fn CHANSGetExport_SC_PRODUCT_AREA_USA, global
/* 81457BE8 | 39 00 00 01 */	li r8, 0x1
/* 81457BEC | 38 E0 00 00 */	li r7, 0x0
/* 81457BF0 | 4B FF FF 30 */	b CHANSGetProductArea
.endfn CHANSGetExport_SC_PRODUCT_AREA_USA

# .text:0x50C | 0x81457BF4 | size: 0xC
.fn CHANSGetExport_SC_PRODUCT_AREA_EUR, global
/* 81457BF4 | 39 00 00 02 */	li r8, 0x2
/* 81457BF8 | 38 E0 00 00 */	li r7, 0x0
/* 81457BFC | 4B FF FF 24 */	b CHANSGetProductArea
.endfn CHANSGetExport_SC_PRODUCT_AREA_EUR

# .text:0x518 | 0x81457C00 | size: 0xC
.fn CHANSGetExport_SC_PRODUCT_AREA_KOR, global
/* 81457C00 | 39 00 00 06 */	li r8, 0x6
/* 81457C04 | 38 E0 00 00 */	li r7, 0x0
/* 81457C08 | 4B FF FF 18 */	b CHANSGetProductArea
.endfn CHANSGetExport_SC_PRODUCT_AREA_KOR

# .text:0x524 | 0x81457C0C | size: 0xC
.fn CHANSGetExport_SC_PRODUCT_AREA_HKG, global
/* 81457C0C | 39 00 00 07 */	li r8, 0x7
/* 81457C10 | 38 E0 00 00 */	li r7, 0x0
/* 81457C14 | 4B FF FF 0C */	b CHANSGetProductArea
.endfn CHANSGetExport_SC_PRODUCT_AREA_HKG

# .text:0x530 | 0x81457C18 | size: 0xC
.fn CHANSGetExport_SC_PRODUCT_AREA_ASI, global
/* 81457C18 | 39 00 00 08 */	li r8, 0x8
/* 81457C1C | 38 E0 00 00 */	li r7, 0x0
/* 81457C20 | 4B FF FF 00 */	b CHANSGetProductArea
.endfn CHANSGetExport_SC_PRODUCT_AREA_ASI

# .text:0x53C | 0x81457C24 | size: 0xC
.fn CHANSGetExport_SC_PRODUCT_AREA_LTN, global
/* 81457C24 | 39 00 00 09 */	li r8, 0x9
/* 81457C28 | 38 E0 00 00 */	li r7, 0x0
/* 81457C2C | 4B FF FE F4 */	b CHANSGetProductArea
.endfn CHANSGetExport_SC_PRODUCT_AREA_LTN

# .text:0x548 | 0x81457C30 | size: 0x64
.fn CHANSExport_SCGetWCFlags, global
/* 81457C30 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81457C34 | 7C 08 02 A6 */	mflr r0
/* 81457C38 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81457C3C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81457C40 | 48 1A 18 85 */	bl _savegpr_28
/* 81457C44 | 7C 7C 1B 78 */	mr r28, r3
/* 81457C48 | 7C 9D 23 78 */	mr r29, r4
/* 81457C4C | 7C BE 2B 78 */	mr r30, r5
/* 81457C50 | 3B E0 00 00 */	li r31, 0x0
/* 81457C54 | 48 11 2B CD */	bl SCGetWCFlags
/* 81457C58 | 54 60 07 FF */	clrlwi. r0, r3, 31
/* 81457C5C | 41 82 00 08 */	beq .L_81457C64
/* 81457C60 | 3B E0 00 01 */	li r31, 0x1
.L_81457C64:
/* 81457C64 | 7F 83 E3 78 */	mr r3, r28
/* 81457C68 | 7F A4 EB 78 */	mr r4, r29
/* 81457C6C | 7F C5 F3 78 */	mr r5, r30
/* 81457C70 | 7F E8 FB 78 */	mr r8, r31
/* 81457C74 | 7F E7 FE 70 */	srawi r7, r31, 31
/* 81457C78 | 4B FF FE A9 */	bl CHANSGetProductArea
/* 81457C7C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81457C80 | 48 1A 18 91 */	bl _restgpr_28
/* 81457C84 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81457C88 | 7C 08 03 A6 */	mtlr r0
/* 81457C8C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81457C90 | 4E 80 00 20 */	blr
.endfn CHANSExport_SCGetWCFlags

# .text:0x5AC | 0x81457C94 | size: 0x54
.fn VmSystemMenu_81457C94, local
/* 81457C94 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 81457C98 | 7C 08 02 A6 */	mflr r0
/* 81457C9C | 90 01 00 64 */	stw r0, 0x64(r1)
/* 81457CA0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81457CA4 | 93 E1 00 5C */	stw r31, 0x5c(r1)
/* 81457CA8 | 3B E0 00 01 */	li r31, 0x1
/* 81457CAC | 48 11 24 CD */	bl SCGetParentalControl
/* 81457CB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81457CB4 | 40 82 00 0C */	bne .L_81457CC0
/* 81457CB8 | 3B E0 00 00 */	li r31, 0x0
/* 81457CBC | 48 00 00 14 */	b .L_81457CD0
.L_81457CC0:
/* 81457CC0 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 81457CC4 | 54 00 06 31 */	rlwinm. r0, r0, 0, 24, 24
/* 81457CC8 | 40 82 00 08 */	bne .L_81457CD0
/* 81457CCC | 3B E0 00 00 */	li r31, 0x0
.L_81457CD0:
/* 81457CD0 | 7F E3 FB 78 */	mr r3, r31
/* 81457CD4 | 83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 81457CD8 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 81457CDC | 7C 08 03 A6 */	mtlr r0
/* 81457CE0 | 38 21 00 60 */	addi r1, r1, 0x60
/* 81457CE4 | 4E 80 00 20 */	blr
.endfn VmSystemMenu_81457C94

# .text:0x600 | 0x81457CE8 | size: 0x54
.fn CHANSExport_getParentalControlUseFlag, global
/* 81457CE8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81457CEC | 7C 08 02 A6 */	mflr r0
/* 81457CF0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81457CF4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81457CF8 | 7C BF 2B 78 */	mr r31, r5
/* 81457CFC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81457D00 | 7C 7E 1B 78 */	mr r30, r3
/* 81457D04 | 4B FF FF 91 */	bl VmSystemMenu_81457C94
/* 81457D08 | 7C 66 1B 78 */	mr r6, r3
/* 81457D0C | 7F C3 F3 78 */	mr r3, r30
/* 81457D10 | 7F E4 FB 78 */	mr r4, r31
/* 81457D14 | 7C C5 FE 70 */	srawi r5, r6, 31
/* 81457D18 | 4B FF 3C 81 */	bl CHANSVmSetInteger
/* 81457D1C | 7C 60 00 34 */	cntlzw r0, r3
/* 81457D20 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81457D24 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81457D28 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81457D2C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81457D30 | 7C 08 03 A6 */	mtlr r0
/* 81457D34 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81457D38 | 4E 80 00 20 */	blr
.endfn CHANSExport_getParentalControlUseFlag

# .text:0x654 | 0x81457D3C | size: 0x54
.fn VmSystemMenu_81457D3C, local
/* 81457D3C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81457D40 | 7C 08 02 A6 */	mflr r0
/* 81457D44 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81457D48 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81457D4C | 3B E0 00 00 */	li r31, 0x0
/* 81457D50 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81457D54 | 7C 7E 1B 78 */	mr r30, r3
/* 81457D58 | 4B FF FF 3D */	bl VmSystemMenu_81457C94
/* 81457D5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81457D60 | 41 82 00 14 */	beq .L_81457D74
/* 81457D64 | 48 11 29 49 */	bl SCGetNetContentRestrictions
/* 81457D68 | 7F C0 18 39 */	and. r0, r30, r3
/* 81457D6C | 41 82 00 08 */	beq .L_81457D74
/* 81457D70 | 3B E0 00 01 */	li r31, 0x1
.L_81457D74:
/* 81457D74 | 7F E3 FB 78 */	mr r3, r31
/* 81457D78 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81457D7C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81457D80 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81457D84 | 7C 08 03 A6 */	mtlr r0
/* 81457D88 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81457D8C | 4E 80 00 20 */	blr
.endfn VmSystemMenu_81457D3C

# .text:0x6A8 | 0x81457D90 | size: 0x58
.fn CHANSExport_getNewsRestriction, global
/* 81457D90 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81457D94 | 7C 08 02 A6 */	mflr r0
/* 81457D98 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81457D9C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81457DA0 | 7C BF 2B 78 */	mr r31, r5
/* 81457DA4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81457DA8 | 7C 7E 1B 78 */	mr r30, r3
/* 81457DAC | 38 60 00 01 */	li r3, 0x1
/* 81457DB0 | 4B FF FF 8D */	bl VmSystemMenu_81457D3C
/* 81457DB4 | 7C 66 1B 78 */	mr r6, r3
/* 81457DB8 | 7F C3 F3 78 */	mr r3, r30
/* 81457DBC | 7F E4 FB 78 */	mr r4, r31
/* 81457DC0 | 7C C5 FE 70 */	srawi r5, r6, 31
/* 81457DC4 | 4B FF 3B D5 */	bl CHANSVmSetInteger
/* 81457DC8 | 7C 60 00 34 */	cntlzw r0, r3
/* 81457DCC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81457DD0 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81457DD4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81457DD8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81457DDC | 7C 08 03 A6 */	mtlr r0
/* 81457DE0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81457DE4 | 4E 80 00 20 */	blr
.endfn CHANSExport_getNewsRestriction

# .text:0x700 | 0x81457DE8 | size: 0x58
.fn CHANSExport_getNwc24MessageRestriction, global
/* 81457DE8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81457DEC | 7C 08 02 A6 */	mflr r0
/* 81457DF0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81457DF4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81457DF8 | 7C BF 2B 78 */	mr r31, r5
/* 81457DFC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81457E00 | 7C 7E 1B 78 */	mr r30, r3
/* 81457E04 | 38 60 00 02 */	li r3, 0x2
/* 81457E08 | 4B FF FF 35 */	bl VmSystemMenu_81457D3C
/* 81457E0C | 7C 66 1B 78 */	mr r6, r3
/* 81457E10 | 7F C3 F3 78 */	mr r3, r30
/* 81457E14 | 7F E4 FB 78 */	mr r4, r31
/* 81457E18 | 7C C5 FE 70 */	srawi r5, r6, 31
/* 81457E1C | 4B FF 3B 7D */	bl CHANSVmSetInteger
/* 81457E20 | 7C 60 00 34 */	cntlzw r0, r3
/* 81457E24 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81457E28 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81457E2C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81457E30 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81457E34 | 7C 08 03 A6 */	mtlr r0
/* 81457E38 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81457E3C | 4E 80 00 20 */	blr
.endfn CHANSExport_getNwc24MessageRestriction

# .text:0x758 | 0x81457E40 | size: 0x58
.fn CHANSExport_getShoppingRestriction, global
/* 81457E40 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81457E44 | 7C 08 02 A6 */	mflr r0
/* 81457E48 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81457E4C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81457E50 | 7C BF 2B 78 */	mr r31, r5
/* 81457E54 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81457E58 | 7C 7E 1B 78 */	mr r30, r3
/* 81457E5C | 38 60 00 04 */	li r3, 0x4
/* 81457E60 | 4B FF FE DD */	bl VmSystemMenu_81457D3C
/* 81457E64 | 7C 66 1B 78 */	mr r6, r3
/* 81457E68 | 7F C3 F3 78 */	mr r3, r30
/* 81457E6C | 7F E4 FB 78 */	mr r4, r31
/* 81457E70 | 7C C5 FE 70 */	srawi r5, r6, 31
/* 81457E74 | 4B FF 3B 25 */	bl CHANSVmSetInteger
/* 81457E78 | 7C 60 00 34 */	cntlzw r0, r3
/* 81457E7C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81457E80 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81457E84 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81457E88 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81457E8C | 7C 08 03 A6 */	mtlr r0
/* 81457E90 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81457E94 | 4E 80 00 20 */	blr
.endfn CHANSExport_getShoppingRestriction

# .text:0x7B0 | 0x81457E98 | size: 0x70
.fn CHANSExport_getWwwRestriction, global
/* 81457E98 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81457E9C | 7C 08 02 A6 */	mflr r0
/* 81457EA0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81457EA4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81457EA8 | 48 1A 16 21 */	bl _savegpr_29
/* 81457EAC | 7C 7D 1B 78 */	mr r29, r3
/* 81457EB0 | 7C BE 2B 78 */	mr r30, r5
/* 81457EB4 | 3B E0 00 00 */	li r31, 0x0
/* 81457EB8 | 4B FF FD DD */	bl VmSystemMenu_81457C94
/* 81457EBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81457EC0 | 41 82 00 14 */	beq .L_81457ED4
/* 81457EC4 | 48 11 24 D9 */	bl SCGetWwwRestriction
/* 81457EC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81457ECC | 41 82 00 08 */	beq .L_81457ED4
/* 81457ED0 | 3B E0 00 01 */	li r31, 0x1
.L_81457ED4:
/* 81457ED4 | 7F A3 EB 78 */	mr r3, r29
/* 81457ED8 | 7F C4 F3 78 */	mr r4, r30
/* 81457EDC | 7F E6 FB 78 */	mr r6, r31
/* 81457EE0 | 7F E5 FE 70 */	srawi r5, r31, 31
/* 81457EE4 | 4B FF 3A B5 */	bl CHANSVmSetInteger
/* 81457EE8 | 7C 60 00 34 */	cntlzw r0, r3
/* 81457EEC | 39 61 00 20 */	addi r11, r1, 0x20
/* 81457EF0 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81457EF4 | 48 1A 16 21 */	bl _restgpr_29
/* 81457EF8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81457EFC | 7C 08 03 A6 */	mtlr r0
/* 81457F00 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81457F04 | 4E 80 00 20 */	blr
.endfn CHANSExport_getWwwRestriction

# .text:0x820 | 0x81457F08 | size: 0x54
.fn CHANSExport_exit, global
/* 81457F08 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81457F0C | 7C 08 02 A6 */	mflr r0
/* 81457F10 | 38 80 00 00 */	li r4, 0x0
/* 81457F14 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81457F18 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81457F1C | 7C 7F 1B 78 */	mr r31, r3
/* 81457F20 | 4B FF 47 A1 */	bl CHANSVmGetArgInteger
/* 81457F24 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81457F28 | 41 82 00 14 */	beq .L_81457F3C
/* 81457F2C | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81457F30 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81457F34 | 90 7F 00 04 */	stw r3, 0x4(r31)
/* 81457F38 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_81457F3C:
/* 81457F3C | 38 00 00 01 */	li r0, 0x1
/* 81457F40 | 38 60 00 01 */	li r3, 0x1
/* 81457F44 | 98 1F 00 4F */	stb r0, 0x4f(r31)
/* 81457F48 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81457F4C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81457F50 | 7C 08 03 A6 */	mtlr r0
/* 81457F54 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81457F58 | 4E 80 00 20 */	blr
.endfn CHANSExport_exit

# .text:0x874 | 0x81457F5C | size: 0x34
.fn CHANSExport_getSmallestFreeSysWorkSize, global
/* 81457F5C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81457F60 | 7C 08 02 A6 */	mflr r0
/* 81457F64 | 7C A4 2B 78 */	mr r4, r5
/* 81457F68 | 38 A0 00 00 */	li r5, 0x0
/* 81457F6C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81457F70 | 80 C3 00 1C */	lwz r6, 0x1c(r3)
/* 81457F74 | 4B FF 3A 25 */	bl CHANSVmSetInteger
/* 81457F78 | 7C 60 00 34 */	cntlzw r0, r3
/* 81457F7C | 54 03 D9 7E */	srwi r3, r0, 5
/* 81457F80 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81457F84 | 7C 08 03 A6 */	mtlr r0
/* 81457F88 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81457F8C | 4E 80 00 20 */	blr
.endfn CHANSExport_getSmallestFreeSysWorkSize

# .text:0x8A8 | 0x81457F90 | size: 0x3C
.fn CHANSExport_getFreeSysWorkSize, global
/* 81457F90 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81457F94 | 7C 08 02 A6 */	mflr r0
/* 81457F98 | 7C A4 2B 78 */	mr r4, r5
/* 81457F9C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81457FA0 | 80 C3 00 28 */	lwz r6, 0x28(r3)
/* 81457FA4 | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 81457FA8 | 7C C6 00 50 */	subf r6, r6, r0
/* 81457FAC | 7C C5 FE 70 */	srawi r5, r6, 31
/* 81457FB0 | 4B FF 39 E9 */	bl CHANSVmSetInteger
/* 81457FB4 | 7C 60 00 34 */	cntlzw r0, r3
/* 81457FB8 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81457FBC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81457FC0 | 7C 08 03 A6 */	mtlr r0
/* 81457FC4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81457FC8 | 4E 80 00 20 */	blr
.endfn CHANSExport_getFreeSysWorkSize

# .text:0x8E4 | 0x81457FCC | size: 0x60
.fn VmSystemInit, global
/* 81457FCC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81457FD0 | 7C 08 02 A6 */	mflr r0
/* 81457FD4 | 3C 80 81 61 */	lis r4, lbl_8161730C@ha
/* 81457FD8 | 3D 20 81 45 */	lis r9, VmSystemMenu_814576E8@ha
/* 81457FDC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81457FE0 | 38 00 00 15 */	li r0, 0x15
/* 81457FE4 | 3D 40 81 61 */	lis r10, lbl_81617210@ha
/* 81457FE8 | 38 84 73 0C */	addi r4, r4, lbl_8161730C@l
/* 81457FEC | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81457FF0 | 38 00 00 0E */	li r0, 0xe
/* 81457FF4 | 39 29 76 E8 */	addi r9, r9, VmSystemMenu_814576E8@l
/* 81457FF8 | 39 4A 72 10 */	addi r10, r10, lbl_81617210@l
/* 81457FFC | 90 81 00 0C */	stw r4, 0xc(r1)
/* 81458000 | 38 8D 97 95 */	li r4, lbl_816977D5@sda21
/* 81458004 | 38 A0 00 00 */	li r5, 0x0
/* 81458008 | 38 C0 00 00 */	li r6, 0x0
/* 8145800C | 90 01 00 10 */	stw r0, 0x10(r1)
/* 81458010 | 38 E0 00 00 */	li r7, 0x0
/* 81458014 | 39 0D 97 9D */	li r8, lbl_816977DD@sda21
/* 81458018 | 4B FF 4F 0D */	bl CHANSVmNewBuiltinObject
/* 8145801C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81458020 | 7C 08 03 A6 */	mtlr r0
/* 81458024 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81458028 | 4E 80 00 20 */	blr
.endfn VmSystemInit

# 0x81617210..0x81617380 | size: 0x170
.rodata
.balign 8

# .rodata:0x0 | 0x81617210 | size: 0xFC
.obj lbl_81617210, global
	.4byte lbl_8166A2B0
	.4byte CHANSGetExport_SC_ASPECT_RATIO_4x3
	.4byte 0x00000000
	.4byte lbl_8166A2C4
	.4byte CHANSGetExport_SC_ASPECT_RATIO_16x9
	.4byte 0x00000000
	.4byte lbl_8166A2D9
	.4byte CHANSGetExport_SC_LANG_JAPANESE
	.4byte 0x00000000
	.4byte lbl_8166A2EA
	.4byte CHANSGetExport_SC_LANG_ENGLISH
	.4byte 0x00000000
	.4byte lbl_8166A2FA
	.4byte CHANSGetExport_SC_LANG_GERMAN
	.4byte 0x00000000
	.4byte lbl_8166A309
	.4byte CHANSGetExport_SC_LANG_FRENCH
	.4byte 0x00000000
	.4byte lbl_8166A318
	.4byte CHANSGetExport_SC_LANG_SPANISH
	.4byte 0x00000000
	.4byte lbl_8166A328
	.4byte CHANSGetExport_SC_LANG_ITALIAN
	.4byte 0x00000000
	.4byte lbl_8166A338
	.4byte CHANSGetExport_SC_LANG_DUTCH
	.4byte 0x00000000
	.4byte lbl_8166A346
	.4byte CHANSGetExport_SC_LANG_SIMP_CHINESE
	.4byte 0x00000000
	.4byte lbl_8166A35B
	.4byte CHANSGetExport_SC_LANG_TRAD_CHINESE
	.4byte 0x00000000
	.4byte lbl_8166A370
	.4byte CHANSGetExport_SC_LANG_KOREAN
	.4byte 0x00000000
	.4byte lbl_8166A37F
	.4byte CHANSGetExport_scprivate
	.4byte CHANSSetExport_scprivate
	.4byte lbl_8166A389
	.4byte CHANSGetExport_SC_PRODUCT_AREA_UNKNOWN
	.4byte 0x00000000
	.4byte lbl_8166A3A1
	.4byte CHANSGetExport_SC_PRODUCT_AREA_JPN
	.4byte 0x00000000
	.4byte lbl_8166A3B5
	.4byte CHANSGetExport_SC_PRODUCT_AREA_USA
	.4byte 0x00000000
	.4byte lbl_8166A3C9
	.4byte CHANSGetExport_SC_PRODUCT_AREA_EUR
	.4byte 0x00000000
	.4byte lbl_8166A3DD
	.4byte CHANSGetExport_SC_PRODUCT_AREA_KOR
	.4byte 0x00000000
	.4byte lbl_8166A3F1
	.4byte CHANSGetExport_SC_PRODUCT_AREA_HKG
	.4byte 0x00000000
	.4byte lbl_8166A405
	.4byte CHANSGetExport_SC_PRODUCT_AREA_ASI
	.4byte 0x00000000
	.4byte lbl_8166A419
	.4byte CHANSGetExport_SC_PRODUCT_AREA_LTN
	.4byte 0x00000000
.endobj lbl_81617210

# .rodata:0xFC | 0x8161730C | size: 0x74
.obj lbl_8161730C, global
	.4byte lbl_8166A42D
	.4byte CHANSExport_beginRender
	.4byte lbl_816977D0
	.4byte CHANSExport_exit
	.4byte lbl_8166A439
	.4byte CHANSExport_SCGetAspectRatio
	.4byte lbl_8166A44A
	.4byte CHANSExport_SCGetLanguage
	.4byte lbl_8166A458
	.4byte CHANSExport_SCGetProductArea
	.4byte lbl_8166A469
	.4byte CHANSExport_SCGetWCFlags
	.4byte lbl_8166A476
	.4byte CHANSExport_getParentalControlUseFlag
	.4byte lbl_8166A490
	.4byte CHANSExport_getNewsRestriction
	.4byte lbl_8166A4A3
	.4byte CHANSExport_getNwc24MessageRestriction
	.4byte lbl_8166A4BE
	.4byte CHANSExport_getShoppingRestriction
	.4byte lbl_8166A4D5
	.4byte CHANSExport_getWwwRestriction
	.4byte lbl_8166A4E7
	.4byte CHANSExport_getSmallestFreeSysWorkSize
	.4byte lbl_8166A502
	.4byte CHANSExport_getFreeSysWorkSize
	.4byte lbl_8166A515
	.4byte CHANSExport_waitForRetrace
	.4byte 0x00000000
.endobj lbl_8161730C

# 0x8166A2B0..0x8166A528 | size: 0x278
.data
.balign 8

# .data:0x0 | 0x8166A2B0 | size: 0x14
.obj lbl_8166A2B0, global
	.string "SC_ASPECT_RATIO_4x3"
.endobj lbl_8166A2B0

# .data:0x14 | 0x8166A2C4 | size: 0x15
.obj lbl_8166A2C4, global
	.string "SC_ASPECT_RATIO_16x9"
.endobj lbl_8166A2C4

# .data:0x29 | 0x8166A2D9 | size: 0x11
.obj lbl_8166A2D9, global
	.string "SC_LANG_JAPANESE"
.endobj lbl_8166A2D9

# .data:0x3A | 0x8166A2EA | size: 0x10
.obj lbl_8166A2EA, global
	.string "SC_LANG_ENGLISH"
.endobj lbl_8166A2EA

# .data:0x4A | 0x8166A2FA | size: 0xF
.obj lbl_8166A2FA, global
	.string "SC_LANG_GERMAN"
.endobj lbl_8166A2FA

# .data:0x59 | 0x8166A309 | size: 0xF
.obj lbl_8166A309, global
	.string "SC_LANG_FRENCH"
.endobj lbl_8166A309

# .data:0x68 | 0x8166A318 | size: 0x10
.obj lbl_8166A318, global
	.string "SC_LANG_SPANISH"
.endobj lbl_8166A318

# .data:0x78 | 0x8166A328 | size: 0x10
.obj lbl_8166A328, global
	.string "SC_LANG_ITALIAN"
.endobj lbl_8166A328

# .data:0x88 | 0x8166A338 | size: 0xE
.obj lbl_8166A338, global
	.string "SC_LANG_DUTCH"
.endobj lbl_8166A338

# .data:0x96 | 0x8166A346 | size: 0x15
.obj lbl_8166A346, global
	.string "SC_LANG_SIMP_CHINESE"
.endobj lbl_8166A346

# .data:0xAB | 0x8166A35B | size: 0x15
.obj lbl_8166A35B, global
	.string "SC_LANG_TRAD_CHINESE"
.endobj lbl_8166A35B

# .data:0xC0 | 0x8166A370 | size: 0xF
.obj lbl_8166A370, global
	.string "SC_LANG_KOREAN"
.endobj lbl_8166A370

# .data:0xCF | 0x8166A37F | size: 0xA
.obj lbl_8166A37F, global
	.string "scprivate"
.endobj lbl_8166A37F

# .data:0xD9 | 0x8166A389 | size: 0x18
.obj lbl_8166A389, global
	.string "SC_PRODUCT_AREA_UNKNOWN"
.endobj lbl_8166A389

# .data:0xF1 | 0x8166A3A1 | size: 0x14
.obj lbl_8166A3A1, global
	.string "SC_PRODUCT_AREA_JPN"
.endobj lbl_8166A3A1

# .data:0x105 | 0x8166A3B5 | size: 0x14
.obj lbl_8166A3B5, global
	.string "SC_PRODUCT_AREA_USA"
.endobj lbl_8166A3B5

# .data:0x119 | 0x8166A3C9 | size: 0x14
.obj lbl_8166A3C9, global
	.string "SC_PRODUCT_AREA_EUR"
.endobj lbl_8166A3C9

# .data:0x12D | 0x8166A3DD | size: 0x14
.obj lbl_8166A3DD, global
	.string "SC_PRODUCT_AREA_KOR"
.endobj lbl_8166A3DD

# .data:0x141 | 0x8166A3F1 | size: 0x14
.obj lbl_8166A3F1, global
	.string "SC_PRODUCT_AREA_HKG"
.endobj lbl_8166A3F1

# .data:0x155 | 0x8166A405 | size: 0x14
.obj lbl_8166A405, global
	.string "SC_PRODUCT_AREA_ASI"
.endobj lbl_8166A405

# .data:0x169 | 0x8166A419 | size: 0x14
.obj lbl_8166A419, global
	.string "SC_PRODUCT_AREA_LTN"
.endobj lbl_8166A419

# .data:0x17D | 0x8166A42D | size: 0xC
.obj lbl_8166A42D, global
	.string "beginRender"
.endobj lbl_8166A42D

# .data:0x189 | 0x8166A439 | size: 0x11
.obj lbl_8166A439, global
	.string "SCGetAspectRatio"
.endobj lbl_8166A439

# .data:0x19A | 0x8166A44A | size: 0xE
.obj lbl_8166A44A, global
	.string "SCGetLanguage"
.endobj lbl_8166A44A

# .data:0x1A8 | 0x8166A458 | size: 0x11
.obj lbl_8166A458, global
	.string "SCGetProductArea"
.endobj lbl_8166A458

# .data:0x1B9 | 0x8166A469 | size: 0xD
.obj lbl_8166A469, global
	.string "SCGetWCFlags"
.endobj lbl_8166A469

# .data:0x1C6 | 0x8166A476 | size: 0x1A
.obj lbl_8166A476, global
	.string "getParentalControlUseFlag"
.endobj lbl_8166A476

# .data:0x1E0 | 0x8166A490 | size: 0x13
.obj lbl_8166A490, global
	.string "getNewsRestriction"
.endobj lbl_8166A490

# .data:0x1F3 | 0x8166A4A3 | size: 0x1B
.obj lbl_8166A4A3, global
	.string "getNwc24MessageRestriction"
.endobj lbl_8166A4A3

# .data:0x20E | 0x8166A4BE | size: 0x17
.obj lbl_8166A4BE, global
	.string "getShoppingRestriction"
.endobj lbl_8166A4BE

# .data:0x225 | 0x8166A4D5 | size: 0x12
.obj lbl_8166A4D5, global
	.string "getWwwRestriction"
.endobj lbl_8166A4D5

# .data:0x237 | 0x8166A4E7 | size: 0x1B
.obj lbl_8166A4E7, global
	.string "getSmallestFreeSysWorkSize"
.endobj lbl_8166A4E7

# .data:0x252 | 0x8166A502 | size: 0x13
.obj lbl_8166A502, global
	.string "getFreeSysWorkSize"
.endobj lbl_8166A502

# .data:0x265 | 0x8166A515 | size: 0x13
.obj lbl_8166A515, global
	.4byte 0x77616974
	.4byte 0x466F7252
	.4byte 0x65747261
	.4byte 0x63650000
	.byte 0x00, 0x00, 0x00
.endobj lbl_8166A515

# 0x816977D0..0x816977E8 | size: 0x18
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x816977D0 | size: 0x5
.obj lbl_816977D0, global
	.string "exit"
.endobj lbl_816977D0

# .sdata:0x5 | 0x816977D5 | size: 0x8
.obj lbl_816977D5, global
	.string "@System"
.endobj lbl_816977D5

# .sdata:0xD | 0x816977DD | size: 0xB
.obj lbl_816977DD, global
	.4byte 0x53797374
	.4byte 0x656D0000
	.byte 0x00, 0x00, 0x00
.endobj lbl_816977DD

# 0x81698D60..0x81698D68 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698D60 | size: 0x1
.obj lbl_81698D60, global
	.skip 0x1
.endobj lbl_81698D60

# .sbss:0x1 | 0x81698D61 | size: 0x7
.obj lbl_81698D61, global
	.skip 0x7
.endobj lbl_81698D61
