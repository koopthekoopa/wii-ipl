.include "macros.inc"
.file "pf_init_prfile2.c"

# 0x814CFB2C..0x814CFB6C | size: 0x40
.text
.balign 4

# .text:0x0 | 0x814CFB2C | size: 0x40
.fn VFipf2_init_prfile2, global
/* 814CFB2C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814CFB30 | 7C 08 02 A6 */	mflr r0
/* 814CFB34 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814CFB38 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814CFB3C | 4B FF 6C 01 */	bl VFiPFFATFS_initializeFATFS
/* 814CFB40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CFB44 | 7C 7F 1B 78 */	mr r31, r3
/* 814CFB48 | 40 82 00 08 */	bne .L_814CFB50
/* 814CFB4C | 48 00 01 75 */	bl VFiPFSYS_initializeSYS
.L_814CFB50:
/* 814CFB50 | 7F E3 FB 78 */	mr r3, r31
/* 814CFB54 | 4B FF FB A9 */	bl VFiPFAPI_convertReturnValue
/* 814CFB58 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814CFB5C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814CFB60 | 7C 08 03 A6 */	mtlr r0
/* 814CFB64 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814CFB68 | 4E 80 00 20 */	blr
.endfn VFipf2_init_prfile2
