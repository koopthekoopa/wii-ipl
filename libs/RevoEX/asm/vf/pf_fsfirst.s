.include "macros.inc"
.file "pf_fsfirst.c"

# 0x814CFA44..0x814CFAB8 | size: 0x74
.text
.balign 4

# .text:0x0 | 0x814CFA44 | size: 0x74
.fn VFipf2_fsfirst, global
/* 814CFA44 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814CFA48 | 7C 08 02 A6 */	mflr r0
/* 814CFA4C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814CFA50 | 7C 60 1B 78 */	mr r0, r3
/* 814CFA54 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814CFA58 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814CFA5C | 7C BF 2B 78 */	mr r31, r5
/* 814CFA60 | 38 A0 00 01 */	li r5, 0x1
/* 814CFA64 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814CFA68 | 7C 9E 23 78 */	mr r30, r4
/* 814CFA6C | 7C 04 03 78 */	mr r4, r0
/* 814CFA70 | 4B FE 62 95 */	bl VFiPFSTR_InitStr
/* 814CFA74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CFA78 | 40 82 00 18 */	bne .L_814CFA90
/* 814CFA7C | 7F C4 F3 78 */	mr r4, r30
/* 814CFA80 | 7F E5 FB 78 */	mr r5, r31
/* 814CFA84 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814CFA88 | 4B FE E2 49 */	bl VFiPFDIR_fsfirst
/* 814CFA8C | 48 00 00 10 */	b .L_814CFA9C
.L_814CFA90:
/* 814CFA90 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CFA94 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CFA98 | 90 64 00 1C */	stw r3, 0x1c(r4)
.L_814CFA9C:
/* 814CFA9C | 4B FF FC 61 */	bl VFiPFAPI_convertReturnValue
/* 814CFAA0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814CFAA4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814CFAA8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814CFAAC | 7C 08 03 A6 */	mtlr r0
/* 814CFAB0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814CFAB4 | 4E 80 00 20 */	blr
.endfn VFipf2_fsfirst
