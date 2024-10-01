.include "macros.inc"
.file "pf_sync.c"

# 0x814CFC5C..0x814CFC84 | size: 0x28
.text
.balign 4

# .text:0x0 | 0x814CFC5C | size: 0x28
.fn VFipf2_sync, global
/* 814CFC5C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814CFC60 | 7C 08 02 A6 */	mflr r0
/* 814CFC64 | 7C 63 07 74 */	extsb r3, r3
/* 814CFC68 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814CFC6C | 4B FF F1 2D */	bl VFiPFVOL_sync
/* 814CFC70 | 4B FF FA 8D */	bl VFiPFAPI_convertReturnValue
/* 814CFC74 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814CFC78 | 7C 08 03 A6 */	mtlr r0
/* 814CFC7C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814CFC80 | 4E 80 00 20 */	blr
.endfn VFipf2_sync
