.include "macros.inc"
.file "pf_errnum.c"

# 0x814CF8B8..0x814CF8DC | size: 0x24
.text
.balign 4

# .text:0x0 | 0x814CF8B8 | size: 0x24
.fn VFipf2_errnum, global
/* 814CF8B8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814CF8BC | 7C 08 02 A6 */	mflr r0
/* 814CF8C0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814CF8C4 | 4B FF E7 BD */	bl VFiPFVOL_errnum
/* 814CF8C8 | 4B FF FD F5 */	bl VFiPFAPI_convertError
/* 814CF8CC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814CF8D0 | 7C 08 03 A6 */	mtlr r0
/* 814CF8D4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814CF8D8 | 4E 80 00 20 */	blr
.endfn VFipf2_errnum
