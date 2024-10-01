.include "macros.inc"
.file "pf_fclose.c"

# 0x814CF8DC..0x814CF900 | size: 0x24
.text
.balign 4

# .text:0x0 | 0x814CF8DC | size: 0x24
.fn VFipf2_fclose, global
/* 814CF8DC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814CF8E0 | 7C 08 02 A6 */	mflr r0
/* 814CF8E4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814CF8E8 | 4B FF 96 FD */	bl VFiPFFILE_fclose
/* 814CF8EC | 4B FF FE 11 */	bl VFiPFAPI_convertReturnValue
/* 814CF8F0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814CF8F4 | 7C 08 03 A6 */	mtlr r0
/* 814CF8F8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814CF8FC | 4E 80 00 20 */	blr
.endfn VFipf2_fclose
