.include "macros.inc"
.file "pf_rmdir.c"

# 0x814CFC0C..0x814CFC5C | size: 0x50
.text
.balign 4

# .text:0x0 | 0x814CFC0C | size: 0x50
.fn VFipf2_rmdir, global
/* 814CFC0C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814CFC10 | 7C 08 02 A6 */	mflr r0
/* 814CFC14 | 7C 64 1B 78 */	mr r4, r3
/* 814CFC18 | 38 A0 00 01 */	li r5, 0x1
/* 814CFC1C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814CFC20 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814CFC24 | 4B FE 60 E1 */	bl VFiPFSTR_InitStr
/* 814CFC28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CFC2C | 40 82 00 10 */	bne .L_814CFC3C
/* 814CFC30 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814CFC34 | 4B FE E2 99 */	bl VFiPFDIR_rmdir
/* 814CFC38 | 48 00 00 10 */	b .L_814CFC48
.L_814CFC3C:
/* 814CFC3C | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CFC40 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CFC44 | 90 64 00 1C */	stw r3, 0x1c(r4)
.L_814CFC48:
/* 814CFC48 | 4B FF FA B5 */	bl VFiPFAPI_convertReturnValue
/* 814CFC4C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814CFC50 | 7C 08 03 A6 */	mtlr r0
/* 814CFC54 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814CFC58 | 4E 80 00 20 */	blr
.endfn VFipf2_rmdir
