.include "macros.inc"
.file "pf_detach.c"

# 0x814CF890..0x814CF8B8 | size: 0x28
.text
.balign 4

# .text:0x0 | 0x814CF890 | size: 0x28
.fn VFipf2_detach, global
/* 814CF890 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814CF894 | 7C 08 02 A6 */	mflr r0
/* 814CF898 | 7C 63 07 74 */	extsb r3, r3
/* 814CF89C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814CF8A0 | 4B FF F0 85 */	bl VFiPFVOL_detach
/* 814CF8A4 | 4B FF FE 59 */	bl VFiPFAPI_convertReturnValue
/* 814CF8A8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814CF8AC | 7C 08 03 A6 */	mtlr r0
/* 814CF8B0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814CF8B4 | 4E 80 00 20 */	blr
.endfn VFipf2_detach
