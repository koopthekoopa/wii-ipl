.include "macros.inc"
.file "pf_unmount.c"

# 0x814CFC84..0x814CFCAC | size: 0x28
.text
.balign 4

# .text:0x0 | 0x814CFC84 | size: 0x28
.fn VFipf2_unmount, global
/* 814CFC84 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814CFC88 | 7C 08 02 A6 */	mflr r0
/* 814CFC8C | 7C 63 07 74 */	extsb r3, r3
/* 814CFC90 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814CFC94 | 4B FF EF 15 */	bl VFiPFVOL_unmount
/* 814CFC98 | 4B FF FA 8D */	bl VFiPFAPI_convertReturnValue4unmount
/* 814CFC9C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814CFCA0 | 7C 08 03 A6 */	mtlr r0
/* 814CFCA4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814CFCA8 | 4E 80 00 20 */	blr
.endfn VFipf2_unmount
