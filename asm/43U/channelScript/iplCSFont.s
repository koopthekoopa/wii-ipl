.include "macros.inc"
.file "iplCSFont.cpp"

# 0x8145D164..0x8145D224 | size: 0xC0
.text
.balign 4

# .text:0x0 | 0x8145D164 | size: 0x78
# ipl::cs::font::_ctor(CHANSVm*, CHANSVmObjHdr*, unsigned long)
.fn _ctor__Q33ipl2cs4fontFP7CHANSVmP13CHANSVmObjHdrUl, global
/* 8145D164 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145D168 | 7C 08 02 A6 */	mflr r0
/* 8145D16C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145D170 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145D174 | 48 19 C3 51 */	bl _savegpr_28
/* 8145D178 | 7C BE 2B 78 */	mr r30, r5
/* 8145D17C | 7C 7C 1B 78 */	mr r28, r3
/* 8145D180 | 7C 9D 23 78 */	mr r29, r4
/* 8145D184 | 3B E0 00 00 */	li r31, 0x0
/* 8145D188 | 38 A0 00 04 */	li r5, 0x4
/* 8145D18C | 4B FE DA C9 */	bl CHANSVmNewObjData
/* 8145D190 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145D194 | 41 82 00 2C */	beq .L_8145D1C0
/* 8145D198 | 93 C3 00 00 */	stw r30, 0x0(r3)
/* 8145D19C | 38 00 00 08 */	li r0, 0x8
/* 8145D1A0 | 7F 83 E3 78 */	mr r3, r28
/* 8145D1A4 | 38 8D 98 F8 */	li r4, lbl_81697938@sda21
/* 8145D1A8 | 98 1D 00 08 */	stb r0, 0x8(r29)
/* 8145D1AC | 4B FE F5 C9 */	bl CHANSVmFindNativeClass
/* 8145D1B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145D1B4 | 90 7D 00 0C */	stw r3, 0xc(r29)
/* 8145D1B8 | 41 82 00 08 */	beq .L_8145D1C0
/* 8145D1BC | 3B E0 00 01 */	li r31, 0x1
.L_8145D1C0:
/* 8145D1C0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145D1C4 | 7F E3 FB 78 */	mr r3, r31
/* 8145D1C8 | 48 19 C3 49 */	bl _restgpr_28
/* 8145D1CC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145D1D0 | 7C 08 03 A6 */	mtlr r0
/* 8145D1D4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145D1D8 | 4E 80 00 20 */	blr
.endfn _ctor__Q33ipl2cs4fontFP7CHANSVmP13CHANSVmObjHdrUl

# .text:0x78 | 0x8145D1DC | size: 0x48
# ipl::cs::font::init(CHANSVm*)
.fn init__Q33ipl2cs4fontFP7CHANSVm, global
/* 8145D1DC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8145D1E0 | 7C 08 02 A6 */	mflr r0
/* 8145D1E4 | 38 8D 98 F8 */	li r4, lbl_81697938@sda21
/* 8145D1E8 | 38 A0 00 00 */	li r5, 0x0
/* 8145D1EC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8145D1F0 | 38 C0 00 00 */	li r6, 0x0
/* 8145D1F4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8145D1F8 | 3B E0 00 00 */	li r31, 0x0
/* 8145D1FC | 4B FE F6 D9 */	bl CHANSVmAddNativeClass
/* 8145D200 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145D204 | 41 82 00 08 */	beq .L_8145D20C
/* 8145D208 | 3B E0 00 01 */	li r31, 0x1
.L_8145D20C:
/* 8145D20C | 7F E3 FB 78 */	mr r3, r31
/* 8145D210 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8145D214 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8145D218 | 7C 08 03 A6 */	mtlr r0
/* 8145D21C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8145D220 | 4E 80 00 20 */	blr
.endfn init__Q33ipl2cs4fontFP7CHANSVm

# 0x81697938..0x81697940 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697938 | size: 0x5
.obj lbl_81697938, global
	.string "Font"
.endobj lbl_81697938

# .sdata:0x5 | 0x8169793D | size: 0x3
.obj gap_11_8169793D_sdata, global
.hidden gap_11_8169793D_sdata
	.byte 0x00, 0x00, 0x00
.endobj gap_11_8169793D_sdata
