.include "macros.inc"
.file "wd_misc.c"

# 0x814D97DC..0x814D98D0 | size: 0xF4
.text
.balign 4

# .text:0x0 | 0x814D97DC | size: 0xC
.fn WDi_GetWork, global
/* 814D97DC | 3C 60 81 67 */	lis r3, wdifWork@ha
/* 814D97E0 | 38 63 E9 80 */	addi r3, r3, wdifWork@l
/* 814D97E4 | 4E 80 00 20 */	blr
.endfn WDi_GetWork

# .text:0xC | 0x814D97E8 | size: 0x44
.fn WDi_Ioctlv, global
/* 814D97E8 | 3D 00 81 67 */	lis r8, wdifWork@ha
/* 814D97EC | 7C 8A 23 78 */	mr r10, r4
/* 814D97F0 | 80 08 E9 80 */	lwz r0, wdifWork@l(r8)
/* 814D97F4 | 7C A9 2B 78 */	mr r9, r5
/* 814D97F8 | 7C C7 33 78 */	mr r7, r6
/* 814D97FC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D9800 | 40 80 00 10 */	bge .L_814D9810
/* 814D9804 | 3C 60 80 01 */	lis r3, 0x8001
/* 814D9808 | 38 63 80 00 */	addi r3, r3, -0x8000
/* 814D980C | 4E 80 00 20 */	blr
.L_814D9810:
/* 814D9810 | 80 08 E9 80 */	lwz r0, wdifWork@l(r8)
/* 814D9814 | 7C 64 1B 78 */	mr r4, r3
/* 814D9818 | 7D 45 53 78 */	mr r5, r10
/* 814D981C | 7D 26 4B 78 */	mr r6, r9
/* 814D9820 | 7C 03 03 78 */	mr r3, r0
/* 814D9824 | 48 09 9F D4 */	b IOS_Ioctlv
/* 814D9828 | 4E 80 00 20 */	blr
.endfn WDi_Ioctlv

# .text:0x50 | 0x814D982C | size: 0x9C
.fn WDi_SetupHeap, global
/* 814D982C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D9830 | 7C 08 02 A6 */	mflr r0
/* 814D9834 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D9838 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814D983C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814D9840 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814D9844 | 7C 7D 1B 78 */	mr r29, r3
/* 814D9848 | 48 09 89 CD */	bl IPCGetBufferLo
/* 814D984C | 3F E0 81 67 */	lis r31, wdifWork@ha
/* 814D9850 | 7C 7E 1B 78 */	mr r30, r3
/* 814D9854 | 3B FF E9 80 */	addi r31, r31, wdifWork@l
/* 814D9858 | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 814D985C | 2C 00 FF FF */	cmpwi r0, -0x1
/* 814D9860 | 40 82 00 48 */	bne .L_814D98A8
/* 814D9864 | 48 09 89 A9 */	bl IPCGetBufferHi
/* 814D9868 | 7C 1E EA 14 */	add r0, r30, r29
/* 814D986C | 7C 00 18 40 */	cmplw r0, r3
/* 814D9870 | 40 81 00 0C */	ble .L_814D987C
/* 814D9874 | 38 60 FF EA */	li r3, -0x16
/* 814D9878 | 48 00 00 34 */	b .L_814D98AC
.L_814D987C:
/* 814D987C | 7F C3 F3 78 */	mr r3, r30
/* 814D9880 | 7F A4 EB 78 */	mr r4, r29
/* 814D9884 | 48 09 A3 75 */	bl iosCreateHeap
/* 814D9888 | 90 7F 00 08 */	stw r3, 0x8(r31)
/* 814D988C | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 814D9890 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D9894 | 40 80 00 0C */	bge .L_814D98A0
/* 814D9898 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814D989C | 48 00 00 10 */	b .L_814D98AC
.L_814D98A0:
/* 814D98A0 | 7C 7E EA 14 */	add r3, r30, r29
/* 814D98A4 | 48 09 89 79 */	bl IPCSetBufferLo
.L_814D98A8:
/* 814D98A8 | 38 60 00 00 */	li r3, 0x0
.L_814D98AC:
/* 814D98AC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D98B0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814D98B4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814D98B8 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814D98BC | 7C 08 03 A6 */	mtlr r0
/* 814D98C0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D98C4 | 4E 80 00 20 */	blr
.endfn WDi_SetupHeap

# .text:0xEC | 0x814D98C8 | size: 0x8
.fn WDi_CleanupHeap, global
/* 814D98C8 | 38 60 00 00 */	li r3, 0x0
/* 814D98CC | 4E 80 00 20 */	blr
.endfn WDi_CleanupHeap

# 0x8166E980..0x8166E990 | size: 0x10
.data
.balign 8

# .data:0x0 | 0x8166E980 | size: 0xC
.obj wdifWork, local
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
.endobj wdifWork

# .data:0xC | 0x8166E98C | size: 0x4
.obj gap_08_8166E98C_data, global
.hidden gap_08_8166E98C_data
	.4byte 0x00000000
.endobj gap_08_8166E98C_data
