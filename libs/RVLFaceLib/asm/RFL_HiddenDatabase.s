.include "macros.inc"
.file "RFL_HiddenDatabase.c"

# 0x81330A18..0x81330AA0 | size: 0x88
.section extab, "a"
.balign 4

# extab:0x0 | 0x81330A18 | size: 0x8
.obj "@etb_81330A18", local
.hidden "@etb_81330A18"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_81330A18"

# extab:0x8 | 0x81330A20 | size: 0x8
.obj "@etb_81330A20", local
.hidden "@etb_81330A20"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_81330A20"

# extab:0x10 | 0x81330A28 | size: 0x8
.obj "@etb_81330A28", local
.hidden "@etb_81330A28"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r30-r31
 */
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_81330A28"

# extab:0x18 | 0x81330A30 | size: 0x8
.obj "@etb_81330A30", local
.hidden "@etb_81330A30"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r30-r31
 */
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_81330A30"

# extab:0x20 | 0x81330A38 | size: 0x8
.obj "@etb_81330A38", local
.hidden "@etb_81330A38"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r28-r31
 */
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_81330A38"

# extab:0x28 | 0x81330A40 | size: 0x8
.obj "@etb_81330A40", local
.hidden "@etb_81330A40"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r28-r31
 */
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_81330A40"

# extab:0x30 | 0x81330A48 | size: 0x8
.obj "@etb_81330A48", local
.hidden "@etb_81330A48"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r24-r31
 */
	.4byte 0x40080000
	.4byte 0x00000000
.endobj "@etb_81330A48"

# extab:0x38 | 0x81330A50 | size: 0x8
.obj "@etb_81330A50", local
.hidden "@etb_81330A50"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r28-r31
 */
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_81330A50"

# extab:0x40 | 0x81330A58 | size: 0x8
.obj "@etb_81330A58", local
.hidden "@etb_81330A58"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r30-r31
 */
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_81330A58"

# extab:0x48 | 0x81330A60 | size: 0x8
.obj "@etb_81330A60", local
.hidden "@etb_81330A60"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r26-r31
 */
	.4byte 0x30080000
	.4byte 0x00000000
.endobj "@etb_81330A60"

# extab:0x50 | 0x81330A68 | size: 0x8
.obj "@etb_81330A68", local
.hidden "@etb_81330A68"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r30-r31
 */
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_81330A68"

# extab:0x58 | 0x81330A70 | size: 0x8
.obj "@etb_81330A70", local
.hidden "@etb_81330A70"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r28-r31
 */
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_81330A70"

# extab:0x60 | 0x81330A78 | size: 0x8
.obj "@etb_81330A78", local
.hidden "@etb_81330A78"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r29-r31
 */
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_81330A78"

# extab:0x68 | 0x81330A80 | size: 0x8
.obj "@etb_81330A80", local
.hidden "@etb_81330A80"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r31
 */
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_81330A80"

# extab:0x70 | 0x81330A88 | size: 0x8
.obj "@etb_81330A88", local
.hidden "@etb_81330A88"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r31
 */
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_81330A88"

# extab:0x78 | 0x81330A90 | size: 0x8
.obj "@etb_81330A90", local
.hidden "@etb_81330A90"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r29-r31
 */
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_81330A90"

# extab:0x80 | 0x81330A98 | size: 0x8
.obj "@etb_81330A98", local
.hidden "@etb_81330A98"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_81330A98"

# 0x813318B4..0x81331980 | size: 0xCC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x813318B4 | size: 0xC
.obj "@eti_813318B4", local
.hidden "@eti_813318B4"
	.4byte RFLiInitHiddenDatabase
	.4byte 0x00000034
	.4byte "@etb_81330A18"
.endobj "@eti_813318B4"

# extabindex:0xC | 0x813318C0 | size: 0xC
.obj "@eti_813318C0", local
.hidden "@eti_813318C0"
	.4byte loadclosecallback_
	.4byte 0x00000038
	.4byte "@etb_81330A20"
.endobj "@eti_813318C0"

# extabindex:0x18 | 0x813318CC | size: 0xC
.obj "@eti_813318CC", local
.hidden "@eti_813318CC"
	.4byte loadcallback_
	.4byte 0x000000D4
	.4byte "@etb_81330A28"
.endobj "@eti_813318CC"

# extabindex:0x24 | 0x813318D8 | size: 0xC
.obj "@eti_813318D8", local
.hidden "@eti_813318D8"
	.4byte loadopencallback_
	.4byte 0x000000BC
	.4byte "@etb_81330A30"
.endobj "@eti_813318D8"

# extabindex:0x30 | 0x813318E4 | size: 0xC
.obj "@eti_813318E4", local
.hidden "@eti_813318E4"
	.4byte RFLiLoadHiddenDataAsync
	.4byte 0x000000B8
	.4byte "@etb_81330A38"
.endobj "@eti_813318E4"

# extabindex:0x3C | 0x813318F0 | size: 0xC
.obj "@eti_813318F0", local
.hidden "@eti_813318F0"
	.4byte RFLiLoadCachedHiddenData
	.4byte 0x00000140
	.4byte "@etb_81330A40"
.endobj "@eti_813318F0"

# extabindex:0x48 | 0x813318FC | size: 0xC
.obj "@eti_813318FC", local
.hidden "@eti_813318FC"
	.4byte overwrite_
	.4byte 0x000000E4
	.4byte "@etb_81330A48"
.endobj "@eti_813318FC"

# extabindex:0x54 | 0x81331908 | size: 0xC
.obj "@eti_81331908", local
.hidden "@eti_81331908"
	.4byte create_
	.4byte 0x000000F8
	.4byte "@etb_81330A50"
.endobj "@eti_81331908"

# extabindex:0x60 | 0x81331914 | size: 0xC
.obj "@eti_81331914", local
.hidden "@eti_81331914"
	.4byte writeCallback_
	.4byte 0x00000100
	.4byte "@etb_81330A58"
.endobj "@eti_81331914"

# extabindex:0x6C | 0x81331920 | size: 0xC
.obj "@eti_81331920", local
.hidden "@eti_81331920"
	.4byte writeData_
	.4byte 0x00000140
	.4byte "@etb_81330A60"
.endobj "@eti_81331920"

# extabindex:0x78 | 0x8133192C | size: 0xC
.obj "@eti_8133192C", local
.hidden "@eti_8133192C"
	.4byte openForWriteCallback_
	.4byte 0x00000070
	.4byte "@etb_81330A68"
.endobj "@eti_8133192C"

# extabindex:0x84 | 0x81331938 | size: 0xC
.obj "@eti_81331938", local
.hidden "@eti_81331938"
	.4byte RFLiOneDataToHiddenDB
	.4byte 0x00000198
	.4byte "@etb_81330A70"
.endobj "@eti_81331938"

# extabindex:0x90 | 0x81331944 | size: 0xC
.obj "@eti_81331944", local
.hidden "@eti_81331944"
	.4byte RFLiCountupHiddenDataNum
	.4byte 0x000000AC
	.4byte "@etb_81330A78"
.endobj "@eti_81331944"

# extabindex:0x9C | 0x81331950 | size: 0xC
.obj "@eti_81331950", local
.hidden "@eti_81331950"
	.4byte RFLiGetHiddenNext
	.4byte 0x00000080
	.4byte "@etb_81330A80"
.endobj "@eti_81331950"

# extabindex:0xA8 | 0x8133195C | size: 0xC
.obj "@eti_8133195C", local
.hidden "@eti_8133195C"
	.4byte RFLiGetHiddenPrev
	.4byte 0x00000080
	.4byte "@etb_81330A88"
.endobj "@eti_8133195C"

# extabindex:0xB4 | 0x81331968 | size: 0xC
.obj "@eti_81331968", local
.hidden "@eti_81331968"
	.4byte RFLiIsValidHiddenData
	.4byte 0x000000E0
	.4byte "@etb_81330A90"
.endobj "@eti_81331968"

# extabindex:0xC0 | 0x81331974 | size: 0xC
.obj "@eti_81331974", local
.hidden "@eti_81331974"
	.4byte RFLiIsCachedHDB
	.4byte 0x00000048
	.4byte "@etb_81330A98"
.endobj "@eti_81331974"

# 0x814E4158..0x814E4E74 | size: 0xD1C
.text
.balign 4

# .text:0x0 | 0x814E4158 | size: 0x34
.fn RFLiInitHiddenDatabase, global
/* 814E4158 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814E415C | 7C 08 02 A6 */	mflr r0
/* 814E4160 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814E4164 | 4B FF 6B 39 */	bl RFLiGetHDBManager
/* 814E4168 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E416C | 41 82 00 10 */	beq .L_814E417C
/* 814E4170 | 38 00 00 00 */	li r0, 0x0
/* 814E4174 | 90 03 00 34 */	stw r0, 0x34(r3)
/* 814E4178 | 90 03 00 38 */	stw r0, 0x38(r3)
.L_814E417C:
/* 814E417C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814E4180 | 7C 08 03 A6 */	mtlr r0
/* 814E4184 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814E4188 | 4E 80 00 20 */	blr
.endfn RFLiInitHiddenDatabase

# .text:0x34 | 0x814E418C | size: 0x38
.fn loadclosecallback_, local
/* 814E418C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814E4190 | 7C 08 02 A6 */	mflr r0
/* 814E4194 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814E4198 | 4B FF 6B 05 */	bl RFLiGetHDBManager
/* 814E419C | 81 83 00 2C */	lwz r12, 0x2c(r3)
/* 814E41A0 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814E41A4 | 41 82 00 10 */	beq .L_814E41B4
/* 814E41A8 | 80 63 00 28 */	lwz r3, 0x28(r3)
/* 814E41AC | 7D 89 03 A6 */	mtctr r12
/* 814E41B0 | 4E 80 04 21 */	bctrl
.L_814E41B4:
/* 814E41B4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814E41B8 | 7C 08 03 A6 */	mtlr r0
/* 814E41BC | 38 21 00 10 */	addi r1, r1, 0x10
/* 814E41C0 | 4E 80 00 20 */	blr
.endfn loadclosecallback_

# .text:0x6C | 0x814E41C4 | size: 0xD4
.fn loadcallback_, local
/* 814E41C4 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 814E41C8 | 7C 08 02 A6 */	mflr r0
/* 814E41CC | 90 01 00 64 */	stw r0, 0x64(r1)
/* 814E41D0 | 93 E1 00 5C */	stw r31, 0x5c(r1)
/* 814E41D4 | 93 C1 00 58 */	stw r30, 0x58(r1)
/* 814E41D8 | 4B FF 6A C5 */	bl RFLiGetHDBManager
/* 814E41DC | 7C 7E 1B 78 */	mr r30, r3
/* 814E41E0 | 4B FF 6B 25 */	bl RFLGetAsyncStatus
/* 814E41E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E41E8 | 40 82 00 78 */	bne .L_814E4260
/* 814E41EC | 83 FE 00 24 */	lwz r31, 0x24(r30)
/* 814E41F0 | 48 00 24 D1 */	bl RFLiGetHiddenHeader
/* 814E41F4 | A0 1E 00 30 */	lhz r0, 0x30(r30)
/* 814E41F8 | 1C 00 00 0C */	mulli r0, r0, 0xc
/* 814E41FC | 7C 83 02 14 */	add r4, r3, r0
/* 814E4200 | 38 7F 00 18 */	addi r3, r31, 0x18
/* 814E4204 | 38 84 00 08 */	addi r4, r4, 0x8
/* 814E4208 | 48 00 1E 7D */	bl RFLiIsSameID
/* 814E420C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E4210 | 41 82 00 50 */	beq .L_814E4260
/* 814E4214 | 7F E3 FB 78 */	mr r3, r31
/* 814E4218 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814E421C | 48 00 18 8D */	bl RFLiConvertHRaw2Info
/* 814E4220 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814E4224 | 48 00 48 71 */	bl RFLiCheckValidInfo
/* 814E4228 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E422C | 41 82 00 28 */	beq .L_814E4254
/* 814E4230 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814E4234 | 48 00 4C C5 */	bl RFLiIsValidOnNAND
/* 814E4238 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E423C | 41 82 00 18 */	beq .L_814E4254
/* 814E4240 | 80 7E 00 20 */	lwz r3, 0x20(r30)
/* 814E4244 | 7F E4 FB 78 */	mr r4, r31
/* 814E4248 | 38 A0 00 40 */	li r5, 0x40
/* 814E424C | 4B E4 BF E5 */	bl memcpy
/* 814E4250 | 48 00 00 10 */	b .L_814E4260
.L_814E4254:
/* 814E4254 | 3B E0 00 07 */	li r31, 0x7
/* 814E4258 | 4B FF 6A A5 */	bl RFLiGetManager
/* 814E425C | 93 E3 1B 40 */	stw r31, 0x1b40(r3)
.L_814E4260:
/* 814E4260 | 80 7E 00 24 */	lwz r3, 0x24(r30)
/* 814E4264 | 4B FF 6A 0D */	bl RFLiFree
/* 814E4268 | 38 00 00 00 */	li r0, 0x0
/* 814E426C | 3C 80 81 4E */	lis r4, loadclosecallback_@ha
/* 814E4270 | 90 1E 00 24 */	stw r0, 0x24(r30)
/* 814E4274 | 38 84 41 8C */	addi r4, r4, loadclosecallback_@l
/* 814E4278 | 38 60 00 00 */	li r3, 0x0
/* 814E427C | 4B FF A2 D9 */	bl RFLiCloseAsync
/* 814E4280 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 814E4284 | 83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 814E4288 | 83 C1 00 58 */	lwz r30, 0x58(r1)
/* 814E428C | 7C 08 03 A6 */	mtlr r0
/* 814E4290 | 38 21 00 60 */	addi r1, r1, 0x60
/* 814E4294 | 4E 80 00 20 */	blr
.endfn loadcallback_

# .text:0x140 | 0x814E4298 | size: 0xBC
.fn loadopencallback_, local
/* 814E4298 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814E429C | 7C 08 02 A6 */	mflr r0
/* 814E42A0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814E42A4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814E42A8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814E42AC | 4B FF 69 F1 */	bl RFLiGetHDBManager
/* 814E42B0 | 7C 7F 1B 78 */	mr r31, r3
/* 814E42B4 | 4B FF 6A 51 */	bl RFLGetAsyncStatus
/* 814E42B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E42BC | 40 82 00 6C */	bne .L_814E4328
/* 814E42C0 | A0 1F 00 30 */	lhz r0, 0x30(r31)
/* 814E42C4 | 38 60 00 40 */	li r3, 0x40
/* 814E42C8 | 54 1E 30 32 */	slwi r30, r0, 6
/* 814E42CC | 4B FF 69 91 */	bl RFLiAlloc32
/* 814E42D0 | 3C FE 00 02 */	addis r7, r30, 0x2
/* 814E42D4 | 3C C0 81 4E */	lis r6, loadcallback_@ha
/* 814E42D8 | 90 7F 00 24 */	stw r3, 0x24(r31)
/* 814E42DC | 7C 64 1B 78 */	mr r4, r3
/* 814E42E0 | 38 60 00 00 */	li r3, 0x0
/* 814E42E4 | 38 C6 41 C4 */	addi r6, r6, loadcallback_@l
/* 814E42E8 | 38 A0 00 40 */	li r5, 0x40
/* 814E42EC | 38 E7 F1 E0 */	subi r7, r7, 0xe20
/* 814E42F0 | 4B FF 90 F9 */	bl RFLiReadAsync
/* 814E42F4 | 2C 03 00 06 */	cmpwi r3, 0x6
/* 814E42F8 | 41 82 00 44 */	beq .L_814E433C
/* 814E42FC | 40 80 00 0C */	bge .L_814E4308
/* 814E4300 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E4304 | 41 82 00 38 */	beq .L_814E433C
.L_814E4308:
/* 814E4308 | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 814E430C | 4B FF 69 65 */	bl RFLiFree
/* 814E4310 | 38 00 00 00 */	li r0, 0x0
/* 814E4314 | 38 60 00 00 */	li r3, 0x0
/* 814E4318 | 90 1F 00 24 */	stw r0, 0x24(r31)
/* 814E431C | 38 80 00 00 */	li r4, 0x0
/* 814E4320 | 4B FF A2 35 */	bl RFLiCloseAsync
/* 814E4324 | 48 00 00 18 */	b .L_814E433C
.L_814E4328:
/* 814E4328 | 38 00 00 00 */	li r0, 0x0
/* 814E432C | 90 1F 00 20 */	stw r0, 0x20(r31)
/* 814E4330 | 90 1F 00 24 */	stw r0, 0x24(r31)
/* 814E4334 | B0 1F 00 30 */	sth r0, 0x30(r31)
/* 814E4338 | 90 1F 00 2C */	stw r0, 0x2c(r31)
.L_814E433C:
/* 814E433C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814E4340 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814E4344 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814E4348 | 7C 08 03 A6 */	mtlr r0
/* 814E434C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814E4350 | 4E 80 00 20 */	blr
.endfn loadopencallback_

# .text:0x1FC | 0x814E4354 | size: 0xB8
.fn RFLiLoadHiddenDataAsync, global
/* 814E4354 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814E4358 | 7C 08 02 A6 */	mflr r0
/* 814E435C | 28 04 27 10 */	cmplwi r4, 0x2710
/* 814E4360 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814E4364 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814E4368 | 7C DF 33 78 */	mr r31, r6
/* 814E436C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814E4370 | 7C BE 2B 78 */	mr r30, r5
/* 814E4374 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814E4378 | 7C 9D 23 78 */	mr r29, r4
/* 814E437C | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814E4380 | 7C 7C 1B 78 */	mr r28, r3
/* 814E4384 | 41 80 00 0C */	blt .L_814E4390
/* 814E4388 | 38 60 00 0F */	li r3, 0xf
/* 814E438C | 48 00 00 60 */	b .L_814E43EC
.L_814E4390:
/* 814E4390 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E4394 | 40 82 00 0C */	bne .L_814E43A0
/* 814E4398 | 38 60 00 0F */	li r3, 0xf
/* 814E439C | 48 00 00 50 */	b .L_814E43EC
.L_814E43A0:
/* 814E43A0 | 4B FF 68 95 */	bl RFLAvailable
/* 814E43A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E43A8 | 40 82 00 0C */	bne .L_814E43B4
/* 814E43AC | 38 60 00 01 */	li r3, 0x1
/* 814E43B0 | 48 00 00 3C */	b .L_814E43EC
.L_814E43B4:
/* 814E43B4 | 4B FF 68 E9 */	bl RFLiGetHDBManager
/* 814E43B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E43BC | 40 82 00 0C */	bne .L_814E43C8
/* 814E43C0 | 38 60 00 01 */	li r3, 0x1
/* 814E43C4 | 48 00 00 28 */	b .L_814E43EC
.L_814E43C8:
/* 814E43C8 | 93 83 00 20 */	stw r28, 0x20(r3)
/* 814E43CC | 3C A0 81 4E */	lis r5, loadopencallback_@ha
/* 814E43D0 | 38 A5 42 98 */	addi r5, r5, loadopencallback_@l
/* 814E43D4 | 38 80 00 01 */	li r4, 0x1
/* 814E43D8 | B3 A3 00 30 */	sth r29, 0x30(r3)
/* 814E43DC | 93 C3 00 2C */	stw r30, 0x2c(r3)
/* 814E43E0 | 93 E3 00 28 */	stw r31, 0x28(r3)
/* 814E43E4 | 38 60 00 00 */	li r3, 0x0
/* 814E43E8 | 4B FF 86 C9 */	bl RFLiOpenAsync
.L_814E43EC:
/* 814E43EC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814E43F0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814E43F4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814E43F8 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814E43FC | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814E4400 | 7C 08 03 A6 */	mtlr r0
/* 814E4404 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814E4408 | 4E 80 00 20 */	blr
.endfn RFLiLoadHiddenDataAsync

# .text:0x2B4 | 0x814E440C | size: 0x140
.fn RFLiLoadCachedHiddenData, global
/* 814E440C | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 814E4410 | 7C 08 02 A6 */	mflr r0
/* 814E4414 | 28 04 27 10 */	cmplwi r4, 0x2710
/* 814E4418 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 814E441C | 93 E1 00 6C */	stw r31, 0x6c(r1)
/* 814E4420 | 93 C1 00 68 */	stw r30, 0x68(r1)
/* 814E4424 | 93 A1 00 64 */	stw r29, 0x64(r1)
/* 814E4428 | 7C 9D 23 78 */	mr r29, r4
/* 814E442C | 93 81 00 60 */	stw r28, 0x60(r1)
/* 814E4430 | 7C 7C 1B 78 */	mr r28, r3
/* 814E4434 | 41 80 00 0C */	blt .L_814E4440
/* 814E4438 | 38 60 00 0F */	li r3, 0xf
/* 814E443C | 48 00 00 F0 */	b .L_814E452C
.L_814E4440:
/* 814E4440 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E4444 | 40 82 00 0C */	bne .L_814E4450
/* 814E4448 | 38 60 00 0F */	li r3, 0xf
/* 814E444C | 48 00 00 E0 */	b .L_814E452C
.L_814E4450:
/* 814E4450 | 4B FF 67 E5 */	bl RFLAvailable
/* 814E4454 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E4458 | 40 82 00 0C */	bne .L_814E4464
/* 814E445C | 38 60 00 01 */	li r3, 0x1
/* 814E4460 | 48 00 00 CC */	b .L_814E452C
.L_814E4464:
/* 814E4464 | 4B FF 68 39 */	bl RFLiGetHDBManager
/* 814E4468 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E446C | 7C 7F 1B 78 */	mr r31, r3
/* 814E4470 | 40 82 00 0C */	bne .L_814E447C
/* 814E4474 | 38 60 00 01 */	li r3, 0x1
/* 814E4478 | 48 00 00 B4 */	b .L_814E452C
.L_814E447C:
/* 814E447C | 4B FF 67 B9 */	bl RFLAvailable
/* 814E4480 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E4484 | 40 82 00 0C */	bne .L_814E4490
/* 814E4488 | 38 00 00 00 */	li r0, 0x0
/* 814E448C | 48 00 00 1C */	b .L_814E44A8
.L_814E4490:
/* 814E4490 | 4B FF 68 0D */	bl RFLiGetHDBManager
/* 814E4494 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E4498 | 40 82 00 0C */	bne .L_814E44A4
/* 814E449C | 38 00 00 00 */	li r0, 0x0
/* 814E44A0 | 48 00 00 08 */	b .L_814E44A8
.L_814E44A4:
/* 814E44A4 | 80 03 00 38 */	lwz r0, 0x38(r3)
.L_814E44A8:
/* 814E44A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E44AC | 41 82 00 7C */	beq .L_814E4528
/* 814E44B0 | 57 BE 32 B2 */	clrlslwi r30, r29, 16, 6
/* 814E44B4 | 48 00 22 0D */	bl RFLiGetHiddenHeader
/* 814E44B8 | 1C 9D 00 0C */	mulli r4, r29, 0xc
/* 814E44BC | 80 1F 00 34 */	lwz r0, 0x34(r31)
/* 814E44C0 | 7C 83 22 14 */	add r4, r3, r4
/* 814E44C4 | 7C 60 F2 14 */	add r3, r0, r30
/* 814E44C8 | 38 63 00 18 */	addi r3, r3, 0x18
/* 814E44CC | 38 84 00 08 */	addi r4, r4, 0x8
/* 814E44D0 | 48 00 1B B5 */	bl RFLiIsSameID
/* 814E44D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E44D8 | 41 82 00 48 */	beq .L_814E4520
/* 814E44DC | 80 1F 00 34 */	lwz r0, 0x34(r31)
/* 814E44E0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814E44E4 | 7C 60 F2 14 */	add r3, r0, r30
/* 814E44E8 | 48 00 15 C1 */	bl RFLiConvertHRaw2Info
/* 814E44EC | 38 61 00 08 */	addi r3, r1, 0x8
/* 814E44F0 | 48 00 45 A5 */	bl RFLiCheckValidInfo
/* 814E44F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E44F8 | 41 82 00 20 */	beq .L_814E4518
/* 814E44FC | 80 1F 00 34 */	lwz r0, 0x34(r31)
/* 814E4500 | 7F 83 E3 78 */	mr r3, r28
/* 814E4504 | 38 A0 00 40 */	li r5, 0x40
/* 814E4508 | 7C 80 F2 14 */	add r4, r0, r30
/* 814E450C | 4B E4 BD 25 */	bl memcpy
/* 814E4510 | 38 60 00 00 */	li r3, 0x0
/* 814E4514 | 48 00 00 18 */	b .L_814E452C
.L_814E4518:
/* 814E4518 | 38 60 00 07 */	li r3, 0x7
/* 814E451C | 48 00 00 10 */	b .L_814E452C
.L_814E4520:
/* 814E4520 | 38 60 00 07 */	li r3, 0x7
/* 814E4524 | 48 00 00 08 */	b .L_814E452C
.L_814E4528:
/* 814E4528 | 38 60 00 01 */	li r3, 0x1
.L_814E452C:
/* 814E452C | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 814E4530 | 83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 814E4534 | 83 C1 00 68 */	lwz r30, 0x68(r1)
/* 814E4538 | 83 A1 00 64 */	lwz r29, 0x64(r1)
/* 814E453C | 83 81 00 60 */	lwz r28, 0x60(r1)
/* 814E4540 | 7C 08 03 A6 */	mtlr r0
/* 814E4544 | 38 21 00 70 */	addi r1, r1, 0x70
/* 814E4548 | 4E 80 00 20 */	blr
.endfn RFLiLoadCachedHiddenData

# .text:0x3F4 | 0x814E454C | size: 0xC
.fn writeCtrl2HDBCallback_, local
/* 814E454C | 38 60 00 00 */	li r3, 0x0
/* 814E4550 | 38 80 00 00 */	li r4, 0x0
/* 814E4554 | 4B FF A0 00 */	b RFLiCloseAsync
.endfn writeCtrl2HDBCallback_

# .text:0x400 | 0x814E4558 | size: 0xE4
.fn overwrite_, local
/* 814E4558 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814E455C | 7C 08 02 A6 */	mflr r0
/* 814E4560 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814E4564 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814E4568 | 48 11 4F 4D */	bl _savegpr_24
/* 814E456C | 7C 7F 1B 78 */	mr r31, r3
/* 814E4570 | 48 00 21 51 */	bl RFLiGetHiddenHeader
/* 814E4574 | AB 63 00 04 */	lha r27, 0x4(r3)
/* 814E4578 | 7C 7C 1B 78 */	mr r28, r3
/* 814E457C | AB 03 00 06 */	lha r24, 0x6(r3)
/* 814E4580 | 1C 1B 00 0C */	mulli r0, r27, 0xc
/* 814E4584 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814E4588 | 7C 83 02 14 */	add r4, r3, r0
/* 814E458C | 3B 44 00 08 */	addi r26, r4, 0x8
/* 814E4590 | A8 84 00 10 */	lha r4, 0x10(r4)
/* 814E4594 | 1C 18 00 0C */	mulli r0, r24, 0xc
/* 814E4598 | 54 84 88 1E */	extlwi r4, r4, 16, 17
/* 814E459C | 7C 99 8E 70 */	srawi r25, r4, 17
/* 814E45A0 | 1C 99 00 0C */	mulli r4, r25, 0xc
/* 814E45A4 | 7F C3 02 14 */	add r30, r3, r0
/* 814E45A8 | 7F A3 22 14 */	add r29, r3, r4
/* 814E45AC | 41 80 00 0C */	blt .L_814E45B8
/* 814E45B0 | 2C 1B 27 10 */	cmpwi r27, 0x2710
/* 814E45B4 | 41 80 00 0C */	blt .L_814E45C0
.L_814E45B8:
/* 814E45B8 | 38 60 FF FF */	li r3, -0x1
/* 814E45BC | 48 00 00 68 */	b .L_814E4624
.L_814E45C0:
/* 814E45C0 | 7F 43 D3 78 */	mr r3, r26
/* 814E45C4 | 48 00 59 45 */	bl RFLiClearTableData
/* 814E45C8 | B3 3C 00 04 */	sth r25, 0x4(r28)
/* 814E45CC | 7F 43 D3 78 */	mr r3, r26
/* 814E45D0 | 38 9F 00 18 */	addi r4, r31, 0x18
/* 814E45D4 | 38 A0 00 08 */	li r5, 0x8
/* 814E45D8 | A8 1D 00 12 */	lha r0, 0x12(r29)
/* 814E45DC | 60 00 7F FF */	ori r0, r0, 0x7fff
/* 814E45E0 | B0 1D 00 12 */	sth r0, 0x12(r29)
/* 814E45E4 | A8 1E 00 10 */	lha r0, 0x10(r30)
/* 814E45E8 | 53 60 04 7E */	rlwimi r0, r27, 0, 17, 31
/* 814E45EC | B0 1E 00 10 */	sth r0, 0x10(r30)
/* 814E45F0 | A8 1A 00 0A */	lha r0, 0xa(r26)
/* 814E45F4 | 53 00 04 7E */	rlwimi r0, r24, 0, 17, 31
/* 814E45F8 | B0 1A 00 0A */	sth r0, 0xa(r26)
/* 814E45FC | B3 7C 00 06 */	sth r27, 0x6(r28)
/* 814E4600 | A8 1A 00 08 */	lha r0, 0x8(r26)
/* 814E4604 | 60 00 7F FF */	ori r0, r0, 0x7fff
/* 814E4608 | B0 1A 00 08 */	sth r0, 0x8(r26)
/* 814E460C | 4B E4 BC 25 */	bl memcpy
/* 814E4610 | A0 9F 00 00 */	lhz r4, 0x0(r31)
/* 814E4614 | 7F 63 DB 78 */	mr r3, r27
/* 814E4618 | A0 1A 00 08 */	lhz r0, 0x8(r26)
/* 814E461C | 50 80 0C 20 */	rlwimi r0, r4, 1, 16, 16
/* 814E4620 | B0 1A 00 08 */	sth r0, 0x8(r26)
.L_814E4624:
/* 814E4624 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814E4628 | 48 11 4E D9 */	bl _restgpr_24
/* 814E462C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814E4630 | 7C 08 03 A6 */	mtlr r0
/* 814E4634 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814E4638 | 4E 80 00 20 */	blr
.endfn overwrite_

# .text:0x4E4 | 0x814E463C | size: 0xF8
.fn create_, local
/* 814E463C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814E4640 | 7C 08 02 A6 */	mflr r0
/* 814E4644 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814E4648 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814E464C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814E4650 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814E4654 | 7C 9D 23 78 */	mr r29, r4
/* 814E4658 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814E465C | 7C 7C 1B 78 */	mr r28, r3
/* 814E4660 | 48 00 20 61 */	bl RFLiGetHiddenHeader
/* 814E4664 | 1C 1D 00 0C */	mulli r0, r29, 0xc
/* 814E4668 | 7C 7F 1B 78 */	mr r31, r3
/* 814E466C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814E4670 | 7C 63 02 14 */	add r3, r3, r0
/* 814E4674 | 3B C3 00 08 */	addi r30, r3, 0x8
/* 814E4678 | 41 80 00 9C */	blt .L_814E4714
/* 814E467C | 2C 1D 27 10 */	cmpwi r29, 0x2710
/* 814E4680 | 41 80 00 08 */	blt .L_814E4688
/* 814E4684 | 48 00 00 90 */	b .L_814E4714
.L_814E4688:
/* 814E4688 | 7F C3 F3 78 */	mr r3, r30
/* 814E468C | 48 00 58 7D */	bl RFLiClearTableData
/* 814E4690 | A8 1F 00 06 */	lha r0, 0x6(r31)
/* 814E4694 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E4698 | 41 80 00 3C */	blt .L_814E46D4
/* 814E469C | 1C 00 00 0C */	mulli r0, r0, 0xc
/* 814E46A0 | 7C 7F 02 14 */	add r3, r31, r0
/* 814E46A4 | A8 03 00 10 */	lha r0, 0x10(r3)
/* 814E46A8 | 53 A0 04 7E */	rlwimi r0, r29, 0, 17, 31
/* 814E46AC | B0 03 00 10 */	sth r0, 0x10(r3)
/* 814E46B0 | A8 7F 00 06 */	lha r3, 0x6(r31)
/* 814E46B4 | A8 1E 00 0A */	lha r0, 0xa(r30)
/* 814E46B8 | 50 60 04 7E */	rlwimi r0, r3, 0, 17, 31
/* 814E46BC | B0 1E 00 0A */	sth r0, 0xa(r30)
/* 814E46C0 | B3 BF 00 06 */	sth r29, 0x6(r31)
/* 814E46C4 | A8 1E 00 08 */	lha r0, 0x8(r30)
/* 814E46C8 | 60 00 7F FF */	ori r0, r0, 0x7fff
/* 814E46CC | B0 1E 00 08 */	sth r0, 0x8(r30)
/* 814E46D0 | 48 00 00 24 */	b .L_814E46F4
.L_814E46D4:
/* 814E46D4 | B3 BF 00 06 */	sth r29, 0x6(r31)
/* 814E46D8 | B3 BF 00 04 */	sth r29, 0x4(r31)
/* 814E46DC | A8 1E 00 0A */	lha r0, 0xa(r30)
/* 814E46E0 | 60 00 7F FF */	ori r0, r0, 0x7fff
/* 814E46E4 | B0 1E 00 0A */	sth r0, 0xa(r30)
/* 814E46E8 | A8 1E 00 08 */	lha r0, 0x8(r30)
/* 814E46EC | 60 00 7F FF */	ori r0, r0, 0x7fff
/* 814E46F0 | B0 1E 00 08 */	sth r0, 0x8(r30)
.L_814E46F4:
/* 814E46F4 | 7F C3 F3 78 */	mr r3, r30
/* 814E46F8 | 38 9C 00 18 */	addi r4, r28, 0x18
/* 814E46FC | 38 A0 00 08 */	li r5, 0x8
/* 814E4700 | 4B E4 BB 31 */	bl memcpy
/* 814E4704 | A0 7C 00 00 */	lhz r3, 0x0(r28)
/* 814E4708 | A0 1E 00 08 */	lhz r0, 0x8(r30)
/* 814E470C | 50 60 0C 20 */	rlwimi r0, r3, 1, 16, 16
/* 814E4710 | B0 1E 00 08 */	sth r0, 0x8(r30)
.L_814E4714:
/* 814E4714 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814E4718 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814E471C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814E4720 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814E4724 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814E4728 | 7C 08 03 A6 */	mtlr r0
/* 814E472C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814E4730 | 4E 80 00 20 */	blr
.endfn create_

# .text:0x5DC | 0x814E4734 | size: 0x100
.fn writeCallback_, local
/* 814E4734 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814E4738 | 7C 08 02 A6 */	mflr r0
/* 814E473C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814E4740 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814E4744 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814E4748 | 4B FF 65 55 */	bl RFLiGetHDBManager
/* 814E474C | 7C 7F 1B 78 */	mr r31, r3
/* 814E4750 | 4B FF 65 B5 */	bl RFLGetAsyncStatus
/* 814E4754 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E4758 | 40 82 00 A8 */	bne .L_814E4800
/* 814E475C | 4B FF 65 41 */	bl RFLiGetHDBManager
/* 814E4760 | 3B C3 00 3C */	addi r30, r3, 0x3c
/* 814E4764 | 4B FF 64 D1 */	bl RFLAvailable
/* 814E4768 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E476C | 40 82 00 0C */	bne .L_814E4778
/* 814E4770 | 38 00 00 00 */	li r0, 0x0
/* 814E4774 | 48 00 00 1C */	b .L_814E4790
.L_814E4778:
/* 814E4778 | 4B FF 65 25 */	bl RFLiGetHDBManager
/* 814E477C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E4780 | 40 82 00 0C */	bne .L_814E478C
/* 814E4784 | 38 00 00 00 */	li r0, 0x0
/* 814E4788 | 48 00 00 08 */	b .L_814E4790
.L_814E478C:
/* 814E478C | 80 03 00 38 */	lwz r0, 0x38(r3)
.L_814E4790:
/* 814E4790 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E4794 | 41 82 00 20 */	beq .L_814E47B4
/* 814E4798 | A8 1F 00 0C */	lha r0, 0xc(r31)
/* 814E479C | 38 A0 00 40 */	li r5, 0x40
/* 814E47A0 | 80 7F 00 34 */	lwz r3, 0x34(r31)
/* 814E47A4 | 54 00 30 32 */	slwi r0, r0, 6
/* 814E47A8 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 814E47AC | 7C 63 02 14 */	add r3, r3, r0
/* 814E47B0 | 4B E4 BA 81 */	bl memcpy
.L_814E47B4:
/* 814E47B4 | 88 7E 19 01 */	lbz r3, 0x1901(r30)
/* 814E47B8 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814E47BC | 98 1E 19 01 */	stb r0, 0x1901(r30)
/* 814E47C0 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 814E47C4 | 88 1E 19 00 */	lbz r0, 0x1900(r30)
/* 814E47C8 | 7C 03 00 40 */	cmplw r3, r0
/* 814E47CC | 40 80 00 14 */	bge .L_814E47E0
/* 814E47D0 | 54 60 34 B2 */	clrlslwi r0, r3, 24, 6
/* 814E47D4 | 7C 7E 02 14 */	add r3, r30, r0
/* 814E47D8 | 48 00 00 5D */	bl writeData_
/* 814E47DC | 48 00 00 40 */	b .L_814E481C
.L_814E47E0:
/* 814E47E0 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814E47E4 | 4B FF 64 8D */	bl RFLiFree
/* 814E47E8 | 38 00 00 00 */	li r0, 0x0
/* 814E47EC | 90 1F 00 08 */	stw r0, 0x8(r31)
/* 814E47F0 | 4B FF 64 AD */	bl RFLiGetHDBManager
/* 814E47F4 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 814E47F8 | 48 00 0D DD */	bl RFLiSaveOpenedDatabaseAsync
/* 814E47FC | 48 00 00 20 */	b .L_814E481C
.L_814E4800:
/* 814E4800 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814E4804 | 4B FF 64 6D */	bl RFLiFree
/* 814E4808 | 38 00 00 00 */	li r0, 0x0
/* 814E480C | 38 60 00 00 */	li r3, 0x0
/* 814E4810 | 90 1F 00 08 */	stw r0, 0x8(r31)
/* 814E4814 | 38 80 00 00 */	li r4, 0x0
/* 814E4818 | 4B FF 9D 3D */	bl RFLiCloseAsync
.L_814E481C:
/* 814E481C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814E4820 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814E4824 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814E4828 | 7C 08 03 A6 */	mtlr r0
/* 814E482C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814E4830 | 4E 80 00 20 */	blr
.endfn writeCallback_

# .text:0x6DC | 0x814E4834 | size: 0x140
.fn writeData_, local
/* 814E4834 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814E4838 | 7C 08 02 A6 */	mflr r0
/* 814E483C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814E4840 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814E4844 | 48 11 4C 79 */	bl _savegpr_26
/* 814E4848 | 7C 7A 1B 78 */	mr r26, r3
/* 814E484C | 4B FF 64 51 */	bl RFLiGetHDBManager
/* 814E4850 | 7C 7F 1B 78 */	mr r31, r3
/* 814E4854 | 48 00 1E 6D */	bl RFLiGetHiddenHeader
/* 814E4858 | 3B 83 00 08 */	addi r28, r3, 0x8
/* 814E485C | 3B 60 00 00 */	li r27, 0x0
.L_814E4860:
/* 814E4860 | 7F 83 E3 78 */	mr r3, r28
/* 814E4864 | 48 00 1B 1D */	bl RFLiIsValidID
/* 814E4868 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E486C | 40 82 00 08 */	bne .L_814E4874
/* 814E4870 | 48 00 00 18 */	b .L_814E4888
.L_814E4874:
/* 814E4874 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 814E4878 | 3B 9C 00 0C */	addi r28, r28, 0xc
/* 814E487C | 2C 1B 27 10 */	cmpwi r27, 0x2710
/* 814E4880 | 41 80 FF E0 */	blt .L_814E4860
/* 814E4884 | 3B 60 FF FF */	li r27, -0x1
.L_814E4888:
/* 814E4888 | 3B C0 FF FF */	li r30, -0x1
/* 814E488C | 4B FF 63 A9 */	bl RFLAvailable
/* 814E4890 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E4894 | 40 82 00 0C */	bne .L_814E48A0
/* 814E4898 | 3B C0 FF FF */	li r30, -0x1
/* 814E489C | 48 00 00 50 */	b .L_814E48EC
.L_814E48A0:
/* 814E48A0 | 4B FF 63 FD */	bl RFLiGetHDBManager
/* 814E48A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E48A8 | 40 82 00 0C */	bne .L_814E48B4
/* 814E48AC | 3B C0 FF FF */	li r30, -0x1
/* 814E48B0 | 48 00 00 3C */	b .L_814E48EC
.L_814E48B4:
/* 814E48B4 | 48 00 1E 0D */	bl RFLiGetHiddenHeader
/* 814E48B8 | 3B 83 00 08 */	addi r28, r3, 0x8
/* 814E48BC | 3B A0 00 00 */	li r29, 0x0
.L_814E48C0:
/* 814E48C0 | 7F 83 E3 78 */	mr r3, r28
/* 814E48C4 | 38 9A 00 18 */	addi r4, r26, 0x18
/* 814E48C8 | 48 00 17 BD */	bl RFLiIsSameID
/* 814E48CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E48D0 | 41 82 00 0C */	beq .L_814E48DC
/* 814E48D4 | 7F BE EB 78 */	mr r30, r29
/* 814E48D8 | 48 00 00 14 */	b .L_814E48EC
.L_814E48DC:
/* 814E48DC | 3B BD 00 01 */	addi r29, r29, 0x1
/* 814E48E0 | 3B 9C 00 0C */	addi r28, r28, 0xc
/* 814E48E4 | 2C 1D 27 10 */	cmpwi r29, 0x2710
/* 814E48E8 | 41 80 FF D8 */	blt .L_814E48C0
.L_814E48EC:
/* 814E48EC | 7F C0 07 34 */	extsh r0, r30
/* 814E48F0 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 814E48F4 | 41 82 00 0C */	beq .L_814E4900
/* 814E48F8 | 7F DB F3 78 */	mr r27, r30
/* 814E48FC | 48 00 00 24 */	b .L_814E4920
.L_814E4900:
/* 814E4900 | 7F 64 07 35 */	extsh. r4, r27
/* 814E4904 | 40 80 00 14 */	bge .L_814E4918
/* 814E4908 | 7F 43 D3 78 */	mr r3, r26
/* 814E490C | 4B FF FC 4D */	bl overwrite_
/* 814E4910 | 7C 7B 1B 78 */	mr r27, r3
/* 814E4914 | 48 00 00 0C */	b .L_814E4920
.L_814E4918:
/* 814E4918 | 7F 43 D3 78 */	mr r3, r26
/* 814E491C | 4B FF FD 21 */	bl create_
.L_814E4920:
/* 814E4920 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814E4924 | 7F 44 D3 78 */	mr r4, r26
/* 814E4928 | 38 A0 00 40 */	li r5, 0x40
/* 814E492C | 4B E4 B9 05 */	bl memcpy
/* 814E4930 | B3 7F 00 0C */	sth r27, 0xc(r31)
/* 814E4934 | 7F 60 07 34 */	extsh r0, r27
/* 814E4938 | 54 03 30 32 */	slwi r3, r0, 6
/* 814E493C | 3C C0 81 4E */	lis r6, writeCallback_@ha
/* 814E4940 | 3C E3 00 02 */	addis r7, r3, 0x2
/* 814E4944 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 814E4948 | 38 C6 47 34 */	addi r6, r6, writeCallback_@l
/* 814E494C | 38 60 00 00 */	li r3, 0x0
/* 814E4950 | 38 A0 00 40 */	li r5, 0x40
/* 814E4954 | 38 E7 F1 E0 */	subi r7, r7, 0xe20
/* 814E4958 | 4B FF 98 25 */	bl RFLiWriteAsync
/* 814E495C | 39 61 00 20 */	addi r11, r1, 0x20
/* 814E4960 | 48 11 4B A9 */	bl _restgpr_26
/* 814E4964 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814E4968 | 7C 08 03 A6 */	mtlr r0
/* 814E496C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814E4970 | 4E 80 00 20 */	blr
.endfn writeData_

# .text:0x81C | 0x814E4974 | size: 0x70
.fn openForWriteCallback_, local
/* 814E4974 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814E4978 | 7C 08 02 A6 */	mflr r0
/* 814E497C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814E4980 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814E4984 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814E4988 | 4B FF 63 7D */	bl RFLGetAsyncStatus
/* 814E498C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E4990 | 40 82 00 3C */	bne .L_814E49CC
/* 814E4994 | 4B FF 63 09 */	bl RFLiGetHDBManager
/* 814E4998 | 3B C3 00 3C */	addi r30, r3, 0x3c
/* 814E499C | 7C 7F 1B 78 */	mr r31, r3
/* 814E49A0 | 88 63 19 3D */	lbz r3, 0x193d(r3)
/* 814E49A4 | 88 1E 19 00 */	lbz r0, 0x1900(r30)
/* 814E49A8 | 7C 03 00 40 */	cmplw r3, r0
/* 814E49AC | 40 80 00 20 */	bge .L_814E49CC
/* 814E49B0 | 38 60 00 40 */	li r3, 0x40
/* 814E49B4 | 4B FF 62 A9 */	bl RFLiAlloc32
/* 814E49B8 | 90 7F 00 08 */	stw r3, 0x8(r31)
/* 814E49BC | 88 1E 19 01 */	lbz r0, 0x1901(r30)
/* 814E49C0 | 54 00 30 32 */	slwi r0, r0, 6
/* 814E49C4 | 7C 7E 02 14 */	add r3, r30, r0
/* 814E49C8 | 4B FF FE 6D */	bl writeData_
.L_814E49CC:
/* 814E49CC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814E49D0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814E49D4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814E49D8 | 7C 08 03 A6 */	mtlr r0
/* 814E49DC | 38 21 00 10 */	addi r1, r1, 0x10
/* 814E49E0 | 4E 80 00 20 */	blr
.endfn openForWriteCallback_

# .text:0x88C | 0x814E49E4 | size: 0x14
.fn writeDataStart_, local
/* 814E49E4 | 3C A0 81 4E */	lis r5, openForWriteCallback_@ha
/* 814E49E8 | 38 60 00 00 */	li r3, 0x0
/* 814E49EC | 38 A5 49 74 */	addi r5, r5, openForWriteCallback_@l
/* 814E49F0 | 38 80 00 02 */	li r4, 0x2
/* 814E49F4 | 4B FF 80 BC */	b RFLiOpenAsync
.endfn writeDataStart_

# .text:0x8A0 | 0x814E49F8 | size: 0x198
.fn RFLiOneDataToHiddenDB, global
/* 814E49F8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814E49FC | 7C 08 02 A6 */	mflr r0
/* 814E4A00 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814E4A04 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814E4A08 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814E4A0C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814E4A10 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814E4A14 | 7C 7C 1B 78 */	mr r28, r3
/* 814E4A18 | 4B FF 62 85 */	bl RFLiGetHDBManager
/* 814E4A1C | 38 00 00 00 */	li r0, 0x0
/* 814E4A20 | 90 03 00 10 */	stw r0, 0x10(r3)
/* 814E4A24 | 98 03 19 3C */	stb r0, 0x193c(r3)
/* 814E4A28 | 98 03 19 3D */	stb r0, 0x193d(r3)
/* 814E4A2C | 38 7C 00 18 */	addi r3, r28, 0x18
/* 814E4A30 | 48 00 19 51 */	bl RFLiIsValidID
/* 814E4A34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E4A38 | 41 82 00 AC */	beq .L_814E4AE4
/* 814E4A3C | A0 1C 00 20 */	lhz r0, 0x20(r28)
/* 814E4A40 | 54 00 F7 FF */	extrwi. r0, r0, 1, 29
/* 814E4A44 | 40 82 00 A0 */	bne .L_814E4AE4
/* 814E4A48 | 38 7C 00 18 */	addi r3, r28, 0x18
/* 814E4A4C | 38 80 00 00 */	li r4, 0x0
/* 814E4A50 | 48 00 1A 81 */	bl RFLSearchOfficialData
/* 814E4A54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E4A58 | 40 82 00 8C */	bne .L_814E4AE4
/* 814E4A5C | 3B C0 FF FF */	li r30, -0x1
/* 814E4A60 | 4B FF 61 D5 */	bl RFLAvailable
/* 814E4A64 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E4A68 | 40 82 00 0C */	bne .L_814E4A74
/* 814E4A6C | 3B C0 FF FF */	li r30, -0x1
/* 814E4A70 | 48 00 00 50 */	b .L_814E4AC0
.L_814E4A74:
/* 814E4A74 | 4B FF 62 29 */	bl RFLiGetHDBManager
/* 814E4A78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E4A7C | 40 82 00 0C */	bne .L_814E4A88
/* 814E4A80 | 3B C0 FF FF */	li r30, -0x1
/* 814E4A84 | 48 00 00 3C */	b .L_814E4AC0
.L_814E4A88:
/* 814E4A88 | 48 00 1C 39 */	bl RFLiGetHiddenHeader
/* 814E4A8C | 3B A3 00 08 */	addi r29, r3, 0x8
/* 814E4A90 | 3B E0 00 00 */	li r31, 0x0
.L_814E4A94:
/* 814E4A94 | 7F A3 EB 78 */	mr r3, r29
/* 814E4A98 | 38 9C 00 18 */	addi r4, r28, 0x18
/* 814E4A9C | 48 00 15 E9 */	bl RFLiIsSameID
/* 814E4AA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E4AA4 | 41 82 00 0C */	beq .L_814E4AB0
/* 814E4AA8 | 7F FE FB 78 */	mr r30, r31
/* 814E4AAC | 48 00 00 14 */	b .L_814E4AC0
.L_814E4AB0:
/* 814E4AB0 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814E4AB4 | 3B BD 00 0C */	addi r29, r29, 0xc
/* 814E4AB8 | 2C 1F 27 10 */	cmpwi r31, 0x2710
/* 814E4ABC | 41 80 FF D8 */	blt .L_814E4A94
.L_814E4AC0:
/* 814E4AC0 | 7F C0 07 34 */	extsh r0, r30
/* 814E4AC4 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 814E4AC8 | 41 82 00 14 */	beq .L_814E4ADC
/* 814E4ACC | 38 7C 00 18 */	addi r3, r28, 0x18
/* 814E4AD0 | 48 00 17 49 */	bl RFLiIsMyHomeID
/* 814E4AD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E4AD8 | 40 82 00 0C */	bne .L_814E4AE4
.L_814E4ADC:
/* 814E4ADC | 38 00 00 01 */	li r0, 0x1
/* 814E4AE0 | 48 00 00 08 */	b .L_814E4AE8
.L_814E4AE4:
/* 814E4AE4 | 38 00 00 00 */	li r0, 0x0
.L_814E4AE8:
/* 814E4AE8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E4AEC | 41 82 00 80 */	beq .L_814E4B6C
/* 814E4AF0 | 4B FF 61 AD */	bl RFLiGetHDBManager
/* 814E4AF4 | 88 03 19 3C */	lbz r0, 0x193c(r3)
/* 814E4AF8 | 3B C3 00 3C */	addi r30, r3, 0x3c
/* 814E4AFC | 7F 84 E3 78 */	mr r4, r28
/* 814E4B00 | 38 A0 00 40 */	li r5, 0x40
/* 814E4B04 | 54 00 30 32 */	slwi r0, r0, 6
/* 814E4B08 | 7F FE 02 14 */	add r31, r30, r0
/* 814E4B0C | 7F E3 FB 78 */	mr r3, r31
/* 814E4B10 | 4B E4 B7 21 */	bl memcpy
/* 814E4B14 | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 814E4B18 | 54 00 00 3C */	clrrwi r0, r0, 1
/* 814E4B1C | B0 1F 00 00 */	sth r0, 0x0(r31)
/* 814E4B20 | 88 7E 19 00 */	lbz r3, 0x1900(r30)
/* 814E4B24 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814E4B28 | 98 1E 19 00 */	stb r0, 0x1900(r30)
/* 814E4B2C | 4B FF 61 71 */	bl RFLiGetHDBManager
/* 814E4B30 | 3C 80 81 4E */	lis r4, writeCtrl2HDBCallback_@ha
/* 814E4B34 | 38 84 45 4C */	addi r4, r4, writeCtrl2HDBCallback_@l
/* 814E4B38 | 90 83 00 10 */	stw r4, 0x10(r3)
/* 814E4B3C | 48 00 1C 0D */	bl RFLiDBIsLoaded
/* 814E4B40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E4B44 | 40 82 00 14 */	bne .L_814E4B58
/* 814E4B48 | 3C 60 81 4E */	lis r3, writeDataStart_@ha
/* 814E4B4C | 38 63 49 E4 */	addi r3, r3, writeDataStart_@l
/* 814E4B50 | 48 00 57 F1 */	bl RFLiFormatAsync
/* 814E4B54 | 48 00 00 18 */	b .L_814E4B6C
.L_814E4B58:
/* 814E4B58 | 3C A0 81 4E */	lis r5, openForWriteCallback_@ha
/* 814E4B5C | 38 60 00 00 */	li r3, 0x0
/* 814E4B60 | 38 A5 49 74 */	addi r5, r5, openForWriteCallback_@l
/* 814E4B64 | 38 80 00 02 */	li r4, 0x2
/* 814E4B68 | 4B FF 7F 49 */	bl RFLiOpenAsync
.L_814E4B6C:
/* 814E4B6C | 4B FF 61 99 */	bl RFLGetAsyncStatus
/* 814E4B70 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814E4B74 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814E4B78 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814E4B7C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814E4B80 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814E4B84 | 7C 08 03 A6 */	mtlr r0
/* 814E4B88 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814E4B8C | 4E 80 00 20 */	blr
.endfn RFLiOneDataToHiddenDB

# .text:0xA38 | 0x814E4B90 | size: 0xAC
.fn RFLiCountupHiddenDataNum, global
/* 814E4B90 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814E4B94 | 7C 08 02 A6 */	mflr r0
/* 814E4B98 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814E4B9C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814E4BA0 | 3B E0 00 00 */	li r31, 0x0
/* 814E4BA4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814E4BA8 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814E4BAC | 7C 7D 1B 78 */	mr r29, r3
/* 814E4BB0 | 4B FF 60 85 */	bl RFLAvailable
/* 814E4BB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E4BB8 | 40 82 00 0C */	bne .L_814E4BC4
/* 814E4BBC | 38 60 00 00 */	li r3, 0x0
/* 814E4BC0 | 48 00 00 60 */	b .L_814E4C20
.L_814E4BC4:
/* 814E4BC4 | 4B FF 60 D9 */	bl RFLiGetHDBManager
/* 814E4BC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E4BCC | 40 82 00 0C */	bne .L_814E4BD8
/* 814E4BD0 | 38 60 00 00 */	li r3, 0x0
/* 814E4BD4 | 48 00 00 4C */	b .L_814E4C20
.L_814E4BD8:
/* 814E4BD8 | 48 00 1B 71 */	bl RFLiDBIsLoaded
/* 814E4BDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E4BE0 | 40 82 00 0C */	bne .L_814E4BEC
/* 814E4BE4 | 38 60 00 00 */	li r3, 0x0
/* 814E4BE8 | 48 00 00 38 */	b .L_814E4C20
.L_814E4BEC:
/* 814E4BEC | 48 00 1A D5 */	bl RFLiGetHiddenHeader
/* 814E4BF0 | 3B C0 00 00 */	li r30, 0x0
.L_814E4BF4:
/* 814E4BF4 | 7F A4 EB 78 */	mr r4, r29
/* 814E4BF8 | 57 C3 04 3E */	clrlwi r3, r30, 16
/* 814E4BFC | 48 00 01 41 */	bl RFLiIsValidHiddenData
/* 814E4C00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E4C04 | 41 82 00 0C */	beq .L_814E4C10
/* 814E4C08 | 38 1F 00 01 */	addi r0, r31, 0x1
/* 814E4C0C | 54 1F 04 3E */	clrlwi r31, r0, 16
.L_814E4C10:
/* 814E4C10 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814E4C14 | 28 1E 27 10 */	cmplwi r30, 0x2710
/* 814E4C18 | 41 80 FF DC */	blt .L_814E4BF4
/* 814E4C1C | 7F E3 FB 78 */	mr r3, r31
.L_814E4C20:
/* 814E4C20 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814E4C24 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814E4C28 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814E4C2C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814E4C30 | 7C 08 03 A6 */	mtlr r0
/* 814E4C34 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814E4C38 | 4E 80 00 20 */	blr
.endfn RFLiCountupHiddenDataNum

# .text:0xAE4 | 0x814E4C3C | size: 0x80
.fn RFLiGetHiddenNext, global
/* 814E4C3C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814E4C40 | 7C 08 02 A6 */	mflr r0
/* 814E4C44 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814E4C48 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814E4C4C | 7C 7F 1B 78 */	mr r31, r3
/* 814E4C50 | 4B FF 60 4D */	bl RFLiGetHDBManager
/* 814E4C54 | 28 1F 27 10 */	cmplwi r31, 0x2710
/* 814E4C58 | 41 80 00 0C */	blt .L_814E4C64
/* 814E4C5C | 38 60 FF FF */	li r3, -0x1
/* 814E4C60 | 48 00 00 48 */	b .L_814E4CA8
.L_814E4C64:
/* 814E4C64 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E4C68 | 40 82 00 0C */	bne .L_814E4C74
/* 814E4C6C | 38 60 FF FF */	li r3, -0x1
/* 814E4C70 | 48 00 00 38 */	b .L_814E4CA8
.L_814E4C74:
/* 814E4C74 | 48 00 1A 4D */	bl RFLiGetHiddenHeader
/* 814E4C78 | 1C 1F 00 0C */	mulli r0, r31, 0xc
/* 814E4C7C | 7C 63 02 14 */	add r3, r3, r0
/* 814E4C80 | 3B E3 00 08 */	addi r31, r3, 0x8
/* 814E4C84 | 7F E3 FB 78 */	mr r3, r31
/* 814E4C88 | 48 00 16 F9 */	bl RFLiIsValidID
/* 814E4C8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E4C90 | 41 82 00 14 */	beq .L_814E4CA4
/* 814E4C94 | A8 1F 00 08 */	lha r0, 0x8(r31)
/* 814E4C98 | 54 00 88 1E */	extlwi r0, r0, 16, 17
/* 814E4C9C | 7C 03 8E 70 */	srawi r3, r0, 17
/* 814E4CA0 | 48 00 00 08 */	b .L_814E4CA8
.L_814E4CA4:
/* 814E4CA4 | 38 60 FF FF */	li r3, -0x1
.L_814E4CA8:
/* 814E4CA8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814E4CAC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814E4CB0 | 7C 08 03 A6 */	mtlr r0
/* 814E4CB4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814E4CB8 | 4E 80 00 20 */	blr
.endfn RFLiGetHiddenNext

# .text:0xB64 | 0x814E4CBC | size: 0x80
.fn RFLiGetHiddenPrev, global
/* 814E4CBC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814E4CC0 | 7C 08 02 A6 */	mflr r0
/* 814E4CC4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814E4CC8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814E4CCC | 7C 7F 1B 78 */	mr r31, r3
/* 814E4CD0 | 4B FF 5F CD */	bl RFLiGetHDBManager
/* 814E4CD4 | 28 1F 27 10 */	cmplwi r31, 0x2710
/* 814E4CD8 | 41 80 00 0C */	blt .L_814E4CE4
/* 814E4CDC | 38 60 FF FF */	li r3, -0x1
/* 814E4CE0 | 48 00 00 48 */	b .L_814E4D28
.L_814E4CE4:
/* 814E4CE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E4CE8 | 40 82 00 0C */	bne .L_814E4CF4
/* 814E4CEC | 38 60 FF FF */	li r3, -0x1
/* 814E4CF0 | 48 00 00 38 */	b .L_814E4D28
.L_814E4CF4:
/* 814E4CF4 | 48 00 19 CD */	bl RFLiGetHiddenHeader
/* 814E4CF8 | 1C 1F 00 0C */	mulli r0, r31, 0xc
/* 814E4CFC | 7C 63 02 14 */	add r3, r3, r0
/* 814E4D00 | 3B E3 00 08 */	addi r31, r3, 0x8
/* 814E4D04 | 7F E3 FB 78 */	mr r3, r31
/* 814E4D08 | 48 00 16 79 */	bl RFLiIsValidID
/* 814E4D0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E4D10 | 41 82 00 14 */	beq .L_814E4D24
/* 814E4D14 | A8 1F 00 0A */	lha r0, 0xa(r31)
/* 814E4D18 | 54 00 88 1E */	extlwi r0, r0, 16, 17
/* 814E4D1C | 7C 03 8E 70 */	srawi r3, r0, 17
/* 814E4D20 | 48 00 00 08 */	b .L_814E4D28
.L_814E4D24:
/* 814E4D24 | 38 60 FF FF */	li r3, -0x1
.L_814E4D28:
/* 814E4D28 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814E4D2C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814E4D30 | 7C 08 03 A6 */	mtlr r0
/* 814E4D34 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814E4D38 | 4E 80 00 20 */	blr
.endfn RFLiGetHiddenPrev

# .text:0xBE4 | 0x814E4D3C | size: 0xE0
.fn RFLiIsValidHiddenData, global
/* 814E4D3C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814E4D40 | 7C 08 02 A6 */	mflr r0
/* 814E4D44 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814E4D48 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814E4D4C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814E4D50 | 7C 7E 1B 78 */	mr r30, r3
/* 814E4D54 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814E4D58 | 7C 9D 23 78 */	mr r29, r4
/* 814E4D5C | 4B FF 5E D9 */	bl RFLAvailable
/* 814E4D60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E4D64 | 40 82 00 0C */	bne .L_814E4D70
/* 814E4D68 | 38 60 00 00 */	li r3, 0x0
/* 814E4D6C | 48 00 00 94 */	b .L_814E4E00
.L_814E4D70:
/* 814E4D70 | 4B FF 5F 2D */	bl RFLiGetHDBManager
/* 814E4D74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E4D78 | 40 82 00 0C */	bne .L_814E4D84
/* 814E4D7C | 38 60 00 00 */	li r3, 0x0
/* 814E4D80 | 48 00 00 80 */	b .L_814E4E00
.L_814E4D84:
/* 814E4D84 | 48 00 19 3D */	bl RFLiGetHiddenHeader
/* 814E4D88 | 1F DE 00 0C */	mulli r30, r30, 0xc
/* 814E4D8C | 7C 7F 1B 78 */	mr r31, r3
/* 814E4D90 | 7C 63 F2 14 */	add r3, r3, r30
/* 814E4D94 | 38 63 00 08 */	addi r3, r3, 0x8
/* 814E4D98 | 48 00 15 E9 */	bl RFLiIsValidID
/* 814E4D9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E4DA0 | 40 82 00 0C */	bne .L_814E4DAC
/* 814E4DA4 | 38 60 00 00 */	li r3, 0x0
/* 814E4DA8 | 48 00 00 58 */	b .L_814E4E00
.L_814E4DAC:
/* 814E4DAC | 2C 1D 00 02 */	cmpwi r29, 0x2
/* 814E4DB0 | 40 82 00 0C */	bne .L_814E4DBC
/* 814E4DB4 | 38 60 00 01 */	li r3, 0x1
/* 814E4DB8 | 48 00 00 48 */	b .L_814E4E00
.L_814E4DBC:
/* 814E4DBC | 7C 7F F2 14 */	add r3, r31, r30
/* 814E4DC0 | A0 03 00 10 */	lhz r0, 0x10(r3)
/* 814E4DC4 | 54 00 8F FE */	extrwi r0, r0, 1, 16
/* 814E4DC8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814E4DCC | 41 82 00 20 */	beq .L_814E4DEC
/* 814E4DD0 | 40 80 00 2C */	bge .L_814E4DFC
/* 814E4DD4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814E4DD8 | 40 80 00 08 */	bge .L_814E4DE0
/* 814E4DDC | 48 00 00 20 */	b .L_814E4DFC
.L_814E4DE0:
/* 814E4DE0 | 7F A0 00 34 */	cntlzw r0, r29
/* 814E4DE4 | 54 03 D9 7E */	srwi r3, r0, 5
/* 814E4DE8 | 48 00 00 18 */	b .L_814E4E00
.L_814E4DEC:
/* 814E4DEC | 38 1D FF FF */	subi r0, r29, 0x1
/* 814E4DF0 | 7C 00 00 34 */	cntlzw r0, r0
/* 814E4DF4 | 54 03 D9 7E */	srwi r3, r0, 5
/* 814E4DF8 | 48 00 00 08 */	b .L_814E4E00
.L_814E4DFC:
/* 814E4DFC | 38 60 00 00 */	li r3, 0x0
.L_814E4E00:
/* 814E4E00 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814E4E04 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814E4E08 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814E4E0C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814E4E10 | 7C 08 03 A6 */	mtlr r0
/* 814E4E14 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814E4E18 | 4E 80 00 20 */	blr
.endfn RFLiIsValidHiddenData

# .text:0xCC4 | 0x814E4E1C | size: 0x10
.fn RFLiClearCacheHDB, global
/* 814E4E1C | 3C A0 00 0A */	lis r5, 0xa
/* 814E4E20 | 38 80 00 00 */	li r4, 0x0
/* 814E4E24 | 38 A5 C4 00 */	subi r5, r5, 0x3c00
/* 814E4E28 | 4B E4 B5 0C */	b memset
.endfn RFLiClearCacheHDB

# .text:0xCD4 | 0x814E4E2C | size: 0x48
.fn RFLiIsCachedHDB, global
/* 814E4E2C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814E4E30 | 7C 08 02 A6 */	mflr r0
/* 814E4E34 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814E4E38 | 4B FF 5D FD */	bl RFLAvailable
/* 814E4E3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E4E40 | 40 82 00 0C */	bne .L_814E4E4C
/* 814E4E44 | 38 60 00 00 */	li r3, 0x0
/* 814E4E48 | 48 00 00 1C */	b .L_814E4E64
.L_814E4E4C:
/* 814E4E4C | 4B FF 5E 51 */	bl RFLiGetHDBManager
/* 814E4E50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814E4E54 | 40 82 00 0C */	bne .L_814E4E60
/* 814E4E58 | 38 60 00 00 */	li r3, 0x0
/* 814E4E5C | 48 00 00 08 */	b .L_814E4E64
.L_814E4E60:
/* 814E4E60 | 80 63 00 38 */	lwz r3, 0x38(r3)
.L_814E4E64:
/* 814E4E64 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814E4E68 | 7C 08 03 A6 */	mtlr r0
/* 814E4E6C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814E4E70 | 4E 80 00 20 */	blr
.endfn RFLiIsCachedHDB
