.include "macros.inc"
.file "pf_fread.c"

# 0x814CF9F8..0x814CFA20 | size: 0x28
.text
.balign 4

# .text:0x0 | 0x814CF9F8 | size: 0x28
.fn VFipf2_fread, global
/* 814CF9F8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814CF9FC | 7C 08 02 A6 */	mflr r0
/* 814CFA00 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814CFA04 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814CFA08 | 4B FF 99 5D */	bl VFiPFFILE_fread
/* 814CFA0C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814CFA10 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814CFA14 | 7C 08 03 A6 */	mtlr r0
/* 814CFA18 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814CFA1C | 4E 80 00 20 */	blr
.endfn VFipf2_fread
