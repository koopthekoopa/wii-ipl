.include "macros.inc"
.file "pf_system.c"

# 0x814CFCC0..0x814CFD38 | size: 0x78
.text
.balign 4

# .text:0x0 | 0x814CFCC0 | size: 0x4
.fn VFiPFSYS_initializeSYS, global
/* 814CFCC0 | 4E 80 00 20 */	blr
.endfn VFiPFSYS_initializeSYS

# .text:0x4 | 0x814CFCC4 | size: 0x10
.fn VFiPFSYS_GetCurrentContextID, global
/* 814CFCC4 | 38 00 00 00 */	li r0, 0x0
/* 814CFCC8 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 814CFCCC | 38 60 00 00 */	li r3, 0x0
/* 814CFCD0 | 4E 80 00 20 */	blr
.endfn VFiPFSYS_GetCurrentContextID

# .text:0x14 | 0x814CFCD4 | size: 0x64
.fn VFiPFSYS_TimeStamp, global
/* 814CFCD4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814CFCD8 | 7C 08 02 A6 */	mflr r0
/* 814CFCDC | 38 A0 00 04 */	li r5, 0x4
/* 814CFCE0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814CFCE4 | 38 00 07 D0 */	li r0, 0x7d0
/* 814CFCE8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814CFCEC | 3B E0 00 01 */	li r31, 0x1
/* 814CFCF0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814CFCF4 | 7C 9E 23 78 */	mr r30, r4
/* 814CFCF8 | B0 03 00 00 */	sth r0, 0x0(r3)
/* 814CFCFC | 38 00 00 00 */	li r0, 0x0
/* 814CFD00 | B0 A3 00 02 */	sth r5, 0x2(r3)
/* 814CFD04 | B3 E3 00 04 */	sth r31, 0x4(r3)
/* 814CFD08 | B0 04 00 00 */	sth r0, 0x0(r4)
/* 814CFD0C | B0 04 00 02 */	sth r0, 0x2(r4)
/* 814CFD10 | B0 04 00 04 */	sth r0, 0x4(r4)
/* 814CFD14 | B3 E4 00 06 */	sth r31, 0x6(r4)
/* 814CFD18 | 48 00 50 41 */	bl dTM_GetNowTime
/* 814CFD1C | B3 FE 00 06 */	sth r31, 0x6(r30)
/* 814CFD20 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814CFD24 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814CFD28 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814CFD2C | 7C 08 03 A6 */	mtlr r0
/* 814CFD30 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814CFD34 | 4E 80 00 20 */	blr
.endfn VFiPFSYS_TimeStamp

# 0x81698E70..0x81698E78 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698E70 | size: 0x4
.obj VFipf_sys_set_81698E70, global
	.skip 0x4
.endobj VFipf_sys_set_81698E70

# .sbss:0x4 | 0x81698E74 | size: 0x4
.obj gap_12_81698E74_sbss, global
.hidden gap_12_81698E74_sbss
	.skip 0x4
.endobj gap_12_81698E74_sbss
