.include "macros.inc"
.file "pf_finfo.c"

# 0x814CF900..0x814CF924 | size: 0x24
.text
.balign 4

# .text:0x0 | 0x814CF900 | size: 0x24
.fn VFipf2_finfo, global
/* 814CF900 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814CF904 | 7C 08 02 A6 */	mflr r0
/* 814CF908 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814CF90C | 4B FF A2 CD */	bl VFiPFFILE_finfo
/* 814CF910 | 4B FF FD ED */	bl VFiPFAPI_convertReturnValue
/* 814CF914 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814CF918 | 7C 08 03 A6 */	mtlr r0
/* 814CF91C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814CF920 | 4E 80 00 20 */	blr
.endfn VFipf2_finfo
