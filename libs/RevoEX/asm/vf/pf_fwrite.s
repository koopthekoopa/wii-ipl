.include "macros.inc"
.file "pf_fwrite.c"

# 0x814CFADC..0x814CFB04 | size: 0x28
.text
.balign 4

# .text:0x0 | 0x814CFADC | size: 0x28
.fn VFipf2_fwrite, global
/* 814CFADC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814CFAE0 | 7C 08 02 A6 */	mflr r0
/* 814CFAE4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814CFAE8 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814CFAEC | 4B FF 9A B5 */	bl VFiPFFILE_fwrite
/* 814CFAF0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814CFAF4 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814CFAF8 | 7C 08 03 A6 */	mtlr r0
/* 814CFAFC | 38 21 00 10 */	addi r1, r1, 0x10
/* 814CFB00 | 4E 80 00 20 */	blr
.endfn VFipf2_fwrite
