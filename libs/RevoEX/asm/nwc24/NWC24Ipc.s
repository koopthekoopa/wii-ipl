.include "macros.inc"
.file "NWC24Ipc.c"

# 0x814AE844..0x814AE9B8 | size: 0x174
.text
.balign 4

# .text:0x0 | 0x814AE844 | size: 0x78
.fn NWC24iOpenResourceManager, global
/* 814AE844 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814AE848 | 7C 08 02 A6 */	mflr r0
/* 814AE84C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814AE850 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814AE854 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814AE858 | 7C BF 2B 78 */	mr r31, r5
/* 814AE85C | 40 82 00 0C */	bne .L_814AE868
/* 814AE860 | 38 60 FF FD */	li r3, -0x3
/* 814AE864 | 48 00 00 44 */	b .L_814AE8A8
.L_814AE868:
/* 814AE868 | 7C 83 23 78 */	mr r3, r4
/* 814AE86C | 7C C4 33 78 */	mr r4, r6
/* 814AE870 | 48 0C 42 A1 */	bl IOS_Open
/* 814AE874 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AE878 | 90 7F 00 00 */	stw r3, 0x0(r31)
/* 814AE87C | 40 80 00 28 */	bge .L_814AE8A4
/* 814AE880 | 2C 03 FF FA */	cmpwi r3, -0x6
/* 814AE884 | 40 82 00 0C */	bne .L_814AE890
/* 814AE888 | 38 60 FF E3 */	li r3, -0x1d
/* 814AE88C | 48 00 00 1C */	b .L_814AE8A8
.L_814AE890:
/* 814AE890 | 2C 03 FF F8 */	cmpwi r3, -0x8
/* 814AE894 | 38 60 FF D6 */	li r3, -0x2a
/* 814AE898 | 40 82 00 10 */	bne .L_814AE8A8
/* 814AE89C | 38 60 FF E6 */	li r3, -0x1a
/* 814AE8A0 | 48 00 00 08 */	b .L_814AE8A8
.L_814AE8A4:
/* 814AE8A4 | 38 60 00 00 */	li r3, 0x0
.L_814AE8A8:
/* 814AE8A8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814AE8AC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814AE8B0 | 7C 08 03 A6 */	mtlr r0
/* 814AE8B4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814AE8B8 | 4E 80 00 20 */	blr
.endfn NWC24iOpenResourceManager

# .text:0x78 | 0x814AE8BC | size: 0x34
.fn NWC24iCloseResourceManager, global
/* 814AE8BC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814AE8C0 | 7C 08 02 A6 */	mflr r0
/* 814AE8C4 | 7C 83 23 78 */	mr r3, r4
/* 814AE8C8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814AE8CC | 48 0C 44 25 */	bl fn_81572CF0
/* 814AE8D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AE8D4 | 38 60 00 00 */	li r3, 0x0
/* 814AE8D8 | 40 80 00 08 */	bge .L_814AE8E0
/* 814AE8DC | 38 60 FF D6 */	li r3, -0x2a
.L_814AE8E0:
/* 814AE8E0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814AE8E4 | 7C 08 03 A6 */	mtlr r0
/* 814AE8E8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814AE8EC | 4E 80 00 20 */	blr
.endfn NWC24iCloseResourceManager

# .text:0xAC | 0x814AE8F0 | size: 0x48
.fn NWC24iIoctlResourceManager, global
/* 814AE8F0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814AE8F4 | 7C 08 02 A6 */	mflr r0
/* 814AE8F8 | 7C 83 23 78 */	mr r3, r4
/* 814AE8FC | 7C A4 2B 78 */	mr r4, r5
/* 814AE900 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814AE904 | 7C C5 33 78 */	mr r5, r6
/* 814AE908 | 7C E6 3B 78 */	mr r6, r7
/* 814AE90C | 7D 07 43 78 */	mr r7, r8
/* 814AE910 | 7D 28 4B 78 */	mr r8, r9
/* 814AE914 | 48 0C 4B 95 */	bl fn_815734A8
/* 814AE918 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AE91C | 38 60 00 00 */	li r3, 0x0
/* 814AE920 | 40 80 00 08 */	bge .L_814AE928
/* 814AE924 | 38 60 FF D6 */	li r3, -0x2a
.L_814AE928:
/* 814AE928 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814AE92C | 7C 08 03 A6 */	mtlr r0
/* 814AE930 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814AE934 | 4E 80 00 20 */	blr
.endfn NWC24iIoctlResourceManager

# .text:0xF4 | 0x814AE938 | size: 0x5C
.fn NWC24iIoctlResourceManagerAsync, global
/* 814AE938 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814AE93C | 7C 08 02 A6 */	mflr r0
/* 814AE940 | 7C 83 23 78 */	mr r3, r4
/* 814AE944 | 7C A4 2B 78 */	mr r4, r5
/* 814AE948 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814AE94C | 3D 60 81 4B */	lis r11, CallbackAsyncIpc@ha
/* 814AE950 | 7C C5 33 78 */	mr r5, r6
/* 814AE954 | 7C E6 3B 78 */	mr r6, r7
/* 814AE958 | 7D 07 43 78 */	mr r7, r8
/* 814AE95C | 7D 28 4B 78 */	mr r8, r9
/* 814AE960 | 39 2B E9 9C */	addi r9, r11, CallbackAsyncIpc@l
/* 814AE964 | 48 0C 4A 0D */	bl fn_81573370
/* 814AE968 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AE96C | 40 80 00 0C */	bge .L_814AE978
/* 814AE970 | 38 60 FF D6 */	li r3, -0x2a
/* 814AE974 | 48 00 00 10 */	b .L_814AE984
.L_814AE978:
/* 814AE978 | 38 00 00 01 */	li r0, 0x1
/* 814AE97C | 38 60 00 00 */	li r3, 0x0
/* 814AE980 | 90 0D AD F0 */	stw r0, NWC24iIsRequestPending@sda21(r0)
.L_814AE984:
/* 814AE984 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814AE988 | 7C 08 03 A6 */	mtlr r0
/* 814AE98C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814AE990 | 4E 80 00 20 */	blr
.endfn NWC24iIoctlResourceManagerAsync

# .text:0x150 | 0x814AE994 | size: 0x8
.fn NWC24iIsAsyncRequestPending, global
/* 814AE994 | 80 6D AD F0 */	lwz r3, NWC24iIsRequestPending@sda21(r0)
/* 814AE998 | 4E 80 00 20 */	blr
.endfn NWC24iIsAsyncRequestPending

# .text:0x158 | 0x814AE99C | size: 0x1C
.fn CallbackAsyncIpc, local
/* 814AE99C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814AE9A0 | 41 82 00 08 */	beq .L_814AE9A8
/* 814AE9A4 | 90 64 00 00 */	stw r3, 0x0(r4)
.L_814AE9A8:
/* 814AE9A8 | 38 00 00 00 */	li r0, 0x0
/* 814AE9AC | 38 60 00 00 */	li r3, 0x0
/* 814AE9B0 | 90 0D AD F0 */	stw r0, NWC24iIsRequestPending@sda21(r0)
/* 814AE9B4 | 4E 80 00 20 */	blr
.endfn CallbackAsyncIpc

# 0x81698E30..0x81698E38 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698E30 | size: 0x4
.obj NWC24iIsRequestPending, local
	.skip 0x4
.endobj NWC24iIsRequestPending

# .sbss:0x4 | 0x81698E34 | size: 0x4
.obj gap_12_81698E34_sbss, global
.hidden gap_12_81698E34_sbss
	.skip 0x4
.endobj gap_12_81698E34_sbss
