.include "macros.inc"
.file "pf_fsnext.c"

# 0x814CFAB8..0x814CFADC | size: 0x24
.text
.balign 4

# .text:0x0 | 0x814CFAB8 | size: 0x24
.fn VFipf2_fsnext, global
/* 814CFAB8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814CFABC | 7C 08 02 A6 */	mflr r0
/* 814CFAC0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814CFAC4 | 4B FE E3 51 */	bl VFiPFDIR_fsnext
/* 814CFAC8 | 4B FF FC 35 */	bl VFiPFAPI_convertReturnValue
/* 814CFACC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814CFAD0 | 7C 08 03 A6 */	mtlr r0
/* 814CFAD4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814CFAD8 | 4E 80 00 20 */	blr
.endfn VFipf2_fsnext
