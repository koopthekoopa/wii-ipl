.include "macros.inc"
.file "pf_fseek.c"

# 0x814CFA20..0x814CFA44 | size: 0x24
.text
.balign 4

# .text:0x0 | 0x814CFA20 | size: 0x24
.fn VFipf2_fseek, global
/* 814CFA20 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814CFA24 | 7C 08 02 A6 */	mflr r0
/* 814CFA28 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814CFA2C | 4B FF 9E 15 */	bl VFiPFFILE_fseek
/* 814CFA30 | 4B FF FC CD */	bl VFiPFAPI_convertReturnValue
/* 814CFA34 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814CFA38 | 7C 08 03 A6 */	mtlr r0
/* 814CFA3C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814CFA40 | 4E 80 00 20 */	blr
.endfn VFipf2_fseek
