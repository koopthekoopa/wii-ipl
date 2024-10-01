.include "macros.inc"
.file "pf_remove.c"

# 0x814CFBBC..0x814CFC0C | size: 0x50
.text
.balign 4

# .text:0x0 | 0x814CFBBC | size: 0x50
.fn VFipf2_remove, global
/* 814CFBBC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814CFBC0 | 7C 08 02 A6 */	mflr r0
/* 814CFBC4 | 7C 64 1B 78 */	mr r4, r3
/* 814CFBC8 | 38 A0 00 01 */	li r5, 0x1
/* 814CFBCC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814CFBD0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814CFBD4 | 4B FE 61 31 */	bl VFiPFSTR_InitStr
/* 814CFBD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CFBDC | 40 82 00 10 */	bne .L_814CFBEC
/* 814CFBE0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814CFBE4 | 4B FF 90 F5 */	bl VFiPFFILE_remove
/* 814CFBE8 | 48 00 00 10 */	b .L_814CFBF8
.L_814CFBEC:
/* 814CFBEC | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CFBF0 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CFBF4 | 90 64 00 1C */	stw r3, 0x1c(r4)
.L_814CFBF8:
/* 814CFBF8 | 4B FF FB 05 */	bl VFiPFAPI_convertReturnValue
/* 814CFBFC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814CFC00 | 7C 08 03 A6 */	mtlr r0
/* 814CFC04 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814CFC08 | 4E 80 00 20 */	blr
.endfn VFipf2_remove
