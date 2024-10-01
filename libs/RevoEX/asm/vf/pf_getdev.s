.include "macros.inc"
.file "pf_getdev.c"

# 0x814CFB04..0x814CFB2C | size: 0x28
.text
.balign 4

# .text:0x0 | 0x814CFB04 | size: 0x28
.fn VFipf2_devinf, global
/* 814CFB04 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814CFB08 | 7C 08 02 A6 */	mflr r0
/* 814CFB0C | 7C 63 07 74 */	extsb r3, r3
/* 814CFB10 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814CFB14 | 4B FF E5 7D */	bl VFiPFVOL_getdev
/* 814CFB18 | 4B FF FB E5 */	bl VFiPFAPI_convertReturnValue
/* 814CFB1C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814CFB20 | 7C 08 03 A6 */	mtlr r0
/* 814CFB24 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814CFB28 | 4E 80 00 20 */	blr
.endfn VFipf2_devinf
