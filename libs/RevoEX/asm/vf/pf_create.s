.include "macros.inc"
.file "pf_create.c"

# 0x814CF82C..0x814CF890 | size: 0x64
.text
.balign 4

# .text:0x0 | 0x814CF82C | size: 0x64
.fn VFipf2_create, global
/* 814CF82C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814CF830 | 7C 08 02 A6 */	mflr r0
/* 814CF834 | 7C 64 1B 78 */	mr r4, r3
/* 814CF838 | 38 A0 00 01 */	li r5, 0x1
/* 814CF83C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814CF840 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814CF844 | 4B FE 64 C1 */	bl VFiPFSTR_InitStr
/* 814CF848 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CF84C | 40 82 00 18 */	bne .L_814CF864
/* 814CF850 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814CF854 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814CF858 | 38 80 00 19 */	li r4, 0x19
/* 814CF85C | 4B FF 96 41 */	bl VFiPFFILE_fopen
/* 814CF860 | 48 00 00 18 */	b .L_814CF878
.L_814CF864:
/* 814CF864 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CF868 | 38 00 00 00 */	li r0, 0x0
/* 814CF86C | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CF870 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814CF874 | 90 64 00 1C */	stw r3, 0x1c(r4)
.L_814CF878:
/* 814CF878 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814CF87C | 4B FF FE 91 */	bl VFiPFAPI_convertReturnValue2NULL
/* 814CF880 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814CF884 | 7C 08 03 A6 */	mtlr r0
/* 814CF888 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814CF88C | 4E 80 00 20 */	blr
.endfn VFipf2_create
