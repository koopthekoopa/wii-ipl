.include "macros.inc"
.file "pf_chdir.c"

# 0x814CF7DC..0x814CF82C | size: 0x50
.text
.balign 4

# .text:0x0 | 0x814CF7DC | size: 0x50
.fn VFipf2_chdir, global
/* 814CF7DC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814CF7E0 | 7C 08 02 A6 */	mflr r0
/* 814CF7E4 | 7C 64 1B 78 */	mr r4, r3
/* 814CF7E8 | 38 A0 00 01 */	li r5, 0x1
/* 814CF7EC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814CF7F0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814CF7F4 | 4B FE 65 11 */	bl VFiPFSTR_InitStr
/* 814CF7F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CF7FC | 40 82 00 10 */	bne .L_814CF80C
/* 814CF800 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814CF804 | 4B FE E9 F1 */	bl VFiPFDIR_chdir
/* 814CF808 | 48 00 00 10 */	b .L_814CF818
.L_814CF80C:
/* 814CF80C | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CF810 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CF814 | 90 64 00 1C */	stw r3, 0x1c(r4)
.L_814CF818:
/* 814CF818 | 4B FF FE E5 */	bl VFiPFAPI_convertReturnValue
/* 814CF81C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814CF820 | 7C 08 03 A6 */	mtlr r0
/* 814CF824 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814CF828 | 4E 80 00 20 */	blr
.endfn VFipf2_chdir
