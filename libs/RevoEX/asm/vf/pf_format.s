.include "macros.inc"
.file "pf_format.c"

# 0x814CF9D0..0x814CF9F8 | size: 0x28
.text
.balign 4

# .text:0x0 | 0x814CF9D0 | size: 0x28
.fn VFipf2_format, global
/* 814CF9D0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814CF9D4 | 7C 08 02 A6 */	mflr r0
/* 814CF9D8 | 7C 63 07 74 */	extsb r3, r3
/* 814CF9DC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814CF9E0 | 4B FF F0 61 */	bl VFiPFVOL_format
/* 814CF9E4 | 4B FF FD 19 */	bl VFiPFAPI_convertReturnValue
/* 814CF9E8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814CF9EC | 7C 08 03 A6 */	mtlr r0
/* 814CF9F0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814CF9F4 | 4E 80 00 20 */	blr
.endfn VFipf2_format
