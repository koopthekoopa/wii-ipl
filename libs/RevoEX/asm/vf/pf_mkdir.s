.include "macros.inc"
.file "pf_mkdir.c"

# 0x814CFB6C..0x814CFBBC | size: 0x50
.text
.balign 4

# .text:0x0 | 0x814CFB6C | size: 0x50
.fn VFipf2_mkdir, global
/* 814CFB6C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814CFB70 | 7C 08 02 A6 */	mflr r0
/* 814CFB74 | 7C 64 1B 78 */	mr r4, r3
/* 814CFB78 | 38 A0 00 01 */	li r5, 0x1
/* 814CFB7C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814CFB80 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814CFB84 | 4B FE 61 81 */	bl VFiPFSTR_InitStr
/* 814CFB88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CFB8C | 40 82 00 10 */	bne .L_814CFB9C
/* 814CFB90 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814CFB94 | 4B FE E5 09 */	bl VFiPFDIR_mkdir
/* 814CFB98 | 48 00 00 10 */	b .L_814CFBA8
.L_814CFB9C:
/* 814CFB9C | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CFBA0 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CFBA4 | 90 64 00 1C */	stw r3, 0x1c(r4)
.L_814CFBA8:
/* 814CFBA8 | 4B FF FB 55 */	bl VFiPFAPI_convertReturnValue
/* 814CFBAC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814CFBB0 | 7C 08 03 A6 */	mtlr r0
/* 814CFBB4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814CFBB8 | 4E 80 00 20 */	blr
.endfn VFipf2_mkdir
