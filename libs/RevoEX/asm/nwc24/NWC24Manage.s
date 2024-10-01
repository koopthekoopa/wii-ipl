.include "macros.inc"
.file "NWC24Manage.c"

# 0x810C98A0..0x810C98C0 | size: 0x20
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810C98A0 | size: 0x20
.obj InternalStatBuf, local
	.skip 0x20
.endobj InternalStatBuf

# 0x8149FFDC..0x814A0EA4 | size: 0xEC8
.text
.balign 4

# .text:0x0 | 0x8149FFDC | size: 0x38
.fn NWC24iRegister, global
/* 8149FFDC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149FFE0 | 7C 08 02 A6 */	mflr r0
/* 8149FFE4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149FFE8 | 80 0D AD B0 */	lwz r0, Registered@sda21(r0)
/* 8149FFEC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149FFF0 | 40 82 00 14 */	bne .L_814A0004
/* 8149FFF4 | 80 6D 9B 20 */	lwz r3, __NWC24Version@sda21(r0)
/* 8149FFF8 | 48 08 C7 E1 */	bl OSRegisterVersion
/* 8149FFFC | 38 00 00 01 */	li r0, 0x1
/* 814A0000 | 90 0D AD B0 */	stw r0, Registered@sda21(r0)
.L_814A0004:
/* 814A0004 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814A0008 | 7C 08 03 A6 */	mtlr r0
/* 814A000C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814A0010 | 4E 80 00 20 */	blr
.endfn NWC24iRegister

# .text:0x38 | 0x814A0014 | size: 0x20
.fn NWC24OpenLib, global
/* 814A0014 | 80 0D AD A4 */	lwz r0, Opened@sda21(r0)
/* 814A0018 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814A001C | 40 82 00 0C */	bne .L_814A0028
/* 814A0020 | 38 60 FF E6 */	li r3, -0x1a
/* 814A0024 | 4E 80 00 20 */	blr
.L_814A0028:
/* 814A0028 | 38 80 00 01 */	li r4, 0x1
/* 814A002C | 48 00 00 28 */	b NWC24OpenLibInternal
/* 814A0030 | 4E 80 00 20 */	blr
.endfn NWC24OpenLib

# .text:0x58 | 0x814A0034 | size: 0x20
.fn NWC24OpenMsgLib, global
/* 814A0034 | 80 0D AD A4 */	lwz r0, Opened@sda21(r0)
/* 814A0038 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814A003C | 40 82 00 0C */	bne .L_814A0048
/* 814A0040 | 38 60 FF E6 */	li r3, -0x1a
/* 814A0044 | 4E 80 00 20 */	blr
.L_814A0048:
/* 814A0048 | 38 80 00 01 */	li r4, 0x1
/* 814A004C | 48 00 00 08 */	b NWC24OpenLibInternal
/* 814A0050 | 4E 80 00 20 */	blr
.endfn NWC24OpenMsgLib

# .text:0x78 | 0x814A0054 | size: 0x1CC
.fn NWC24OpenLibInternal, local
/* 814A0054 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814A0058 | 7C 08 02 A6 */	mflr r0
/* 814A005C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814A0060 | 38 00 00 00 */	li r0, 0x0
/* 814A0064 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814A0068 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814A006C | 7C 7E 1B 78 */	mr r30, r3
/* 814A0070 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814A0074 | 7C 9D 23 78 */	mr r29, r4
/* 814A0078 | 90 0D AD AC */	stw r0, GlobalErrorCode@sda21(r0)
/* 814A007C | 48 02 FD 85 */	bl VFIsAvailable
/* 814A0080 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A0084 | 40 82 00 0C */	bne .L_814A0090
/* 814A0088 | 38 60 FF FF */	li r3, -0x1
/* 814A008C | 48 00 01 78 */	b .L_814A0204
.L_814A0090:
/* 814A0090 | 80 0D AD A4 */	lwz r0, Opened@sda21(r0)
/* 814A0094 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814A0098 | 40 82 00 0C */	bne .L_814A00A4
/* 814A009C | 38 60 FF F6 */	li r3, -0xa
/* 814A00A0 | 48 00 01 64 */	b .L_814A0204
.L_814A00A4:
/* 814A00A4 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 814A00A8 | 40 82 00 0C */	bne .L_814A00B4
/* 814A00AC | 38 60 FF E6 */	li r3, -0x1a
/* 814A00B0 | 48 00 01 54 */	b .L_814A0204
.L_814A00B4:
/* 814A00B4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814A00B8 | 40 82 00 0C */	bne .L_814A00C4
/* 814A00BC | 38 60 FF FB */	li r3, -0x5
/* 814A00C0 | 48 00 01 44 */	b .L_814A0204
.L_814A00C4:
/* 814A00C4 | 57 C0 06 FF */	clrlwi. r0, r30, 27
/* 814A00C8 | 41 82 00 0C */	beq .L_814A00D4
/* 814A00CC | 38 60 FF E9 */	li r3, -0x17
/* 814A00D0 | 48 00 01 34 */	b .L_814A0204
.L_814A00D4:
/* 814A00D4 | 48 00 B7 D9 */	bl NWC24iTrySuspendForOpenLib
/* 814A00D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A00DC | 40 82 00 F8 */	bne .L_814A01D4
/* 814A00E0 | 80 0D AD B0 */	lwz r0, Registered@sda21(r0)
/* 814A00E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A00E8 | 40 82 00 14 */	bne .L_814A00FC
/* 814A00EC | 80 6D 9B 20 */	lwz r3, __NWC24Version@sda21(r0)
/* 814A00F0 | 48 08 C6 E9 */	bl OSRegisterVersion
/* 814A00F4 | 38 00 00 01 */	li r0, 0x1
/* 814A00F8 | 90 0D AD B0 */	stw r0, Registered@sda21(r0)
.L_814A00FC:
/* 814A00FC | 80 0D AD A8 */	lwz r0, YouGotMail@sda21(r0)
/* 814A0100 | 38 7E 19 00 */	addi r3, r30, 0x1900
/* 814A0104 | 93 CD AD A0 */	stw r30, NWC24WorkP_81698DE0@sda21(r0)
/* 814A0108 | 54 00 00 3C */	clrrwi r0, r0, 1
/* 814A010C | 90 0D AD A8 */	stw r0, YouGotMail@sda21(r0)
/* 814A0110 | 48 00 44 F5 */	bl NWC24InitBase64Table
/* 814A0114 | 3B C0 00 00 */	li r30, 0x0
/* 814A0118 | 3B E0 00 00 */	li r31, 0x0
/* 814A011C | 4B FF F5 BD */	bl NWC24iConfigOpen
/* 814A0120 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A0124 | 41 82 00 0C */	beq .L_814A0130
/* 814A0128 | 7C 7F 1B 78 */	mr r31, r3
/* 814A012C | 63 DE 00 04 */	ori r30, r30, 0x4
.L_814A0130:
/* 814A0130 | 48 00 20 41 */	bl NWC24iOpenMBox
/* 814A0134 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A0138 | 41 82 00 0C */	beq .L_814A0144
/* 814A013C | 7C 7F 1B 78 */	mr r31, r3
/* 814A0140 | 63 DE 00 04 */	ori r30, r30, 0x4
.L_814A0144:
/* 814A0144 | 48 00 D5 5D */	bl NWC24iOpenFriendList
/* 814A0148 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A014C | 41 82 00 0C */	beq .L_814A0158
/* 814A0150 | 7C 7F 1B 78 */	mr r31, r3
/* 814A0154 | 63 DE 00 04 */	ori r30, r30, 0x4
.L_814A0158:
/* 814A0158 | 48 00 DB A1 */	bl NWC24iOpenSecretFriendList
/* 814A015C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A0160 | 41 82 00 1C */	beq .L_814A017C
/* 814A0164 | 2C 03 FF EC */	cmpwi r3, -0x14
/* 814A0168 | 7C 7F 1B 78 */	mr r31, r3
/* 814A016C | 63 C0 00 01 */	ori r0, r30, 0x1
/* 814A0170 | 40 82 00 08 */	bne .L_814A0178
/* 814A0174 | 63 C0 00 04 */	ori r0, r30, 0x4
.L_814A0178:
/* 814A0178 | 7C 1E 03 78 */	mr r30, r0
.L_814A017C:
/* 814A017C | 48 01 04 71 */	bl NWC24iOpenDlTaskList
/* 814A0180 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A0184 | 40 80 00 1C */	bge .L_814A01A0
/* 814A0188 | 2C 03 FF EC */	cmpwi r3, -0x14
/* 814A018C | 7C 7F 1B 78 */	mr r31, r3
/* 814A0190 | 63 C0 00 02 */	ori r0, r30, 0x2
/* 814A0194 | 40 82 00 08 */	bne .L_814A019C
/* 814A0198 | 63 C0 00 04 */	ori r0, r30, 0x4
.L_814A019C:
/* 814A019C | 7C 1E 03 78 */	mr r30, r0
.L_814A01A0:
/* 814A01A0 | 28 1E 00 03 */	cmplwi r30, 0x3
/* 814A01A4 | 40 82 00 08 */	bne .L_814A01AC
/* 814A01A8 | 3B E0 FF CF */	li r31, -0x31
.L_814A01AC:
/* 814A01AC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814A01B0 | 41 82 00 18 */	beq .L_814A01C8
/* 814A01B4 | 38 00 00 00 */	li r0, 0x0
/* 814A01B8 | 90 0D AD A0 */	stw r0, NWC24WorkP_81698DE0@sda21(r0)
/* 814A01BC | 48 00 B7 D1 */	bl NWC24iResumeForCloseLib
/* 814A01C0 | 7F E3 FB 78 */	mr r3, r31
/* 814A01C4 | 48 00 00 10 */	b .L_814A01D4
.L_814A01C8:
/* 814A01C8 | 93 AD AD A4 */	stw r29, Opened@sda21(r0)
/* 814A01CC | 38 60 00 00 */	li r3, 0x0
/* 814A01D0 | 48 00 00 34 */	b .L_814A0204
.L_814A01D4:
/* 814A01D4 | 38 03 00 31 */	addi r0, r3, 0x31
/* 814A01D8 | 28 00 00 30 */	cmplwi r0, 0x30
/* 814A01DC | 41 81 00 28 */	bgt .L_814A0204
/* 814A01E0 | 3C 80 81 67 */	lis r4, jumptable_8166D85C@ha
/* 814A01E4 | 54 00 10 3A */	slwi r0, r0, 2
/* 814A01E8 | 38 84 D8 5C */	addi r4, r4, jumptable_8166D85C@l
/* 814A01EC | 7C 84 00 2E */	lwzx r4, r4, r0
/* 814A01F0 | 7C 89 03 A6 */	mtctr r4
/* 814A01F4 | 4E 80 04 20 */	bctr
.L_814A01F8:
/* 814A01F8 | 3C 83 FF FE */	subis r4, r3, 0x2
/* 814A01FC | 38 04 56 38 */	addi r0, r4, 0x5638
/* 814A0200 | 90 0D AD AC */	stw r0, GlobalErrorCode@sda21(r0)
.L_814A0204:
/* 814A0204 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814A0208 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814A020C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814A0210 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814A0214 | 7C 08 03 A6 */	mtlr r0
/* 814A0218 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814A021C | 4E 80 00 20 */	blr
.endfn NWC24OpenLibInternal

# .text:0x244 | 0x814A0220 | size: 0x6C
.fn NWC24CloseLib, global
/* 814A0220 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814A0224 | 7C 08 02 A6 */	mflr r0
/* 814A0228 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814A022C | 80 0D AD A4 */	lwz r0, Opened@sda21(r0)
/* 814A0230 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814A0234 | 41 82 00 0C */	beq .L_814A0240
/* 814A0238 | 38 60 FF F7 */	li r3, -0x9
/* 814A023C | 48 00 00 40 */	b .L_814A027C
.L_814A0240:
/* 814A0240 | 4B FF F6 05 */	bl NWC24iConfigFlush
/* 814A0244 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A0248 | 41 82 00 08 */	beq .L_814A0250
/* 814A024C | 48 00 00 30 */	b .L_814A027C
.L_814A0250:
/* 814A0250 | 48 01 03 F9 */	bl NWC24iCloseDlTaskList
/* 814A0254 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A0258 | 40 80 00 08 */	bge .L_814A0260
/* 814A025C | 48 00 00 20 */	b .L_814A027C
.L_814A0260:
/* 814A0260 | 48 00 B7 2D */	bl NWC24iResumeForCloseLib
/* 814A0264 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A0268 | 41 82 00 08 */	beq .L_814A0270
/* 814A026C | 48 00 00 10 */	b .L_814A027C
.L_814A0270:
/* 814A0270 | 38 00 00 00 */	li r0, 0x0
/* 814A0274 | 90 0D AD A0 */	stw r0, NWC24WorkP_81698DE0@sda21(r0)
/* 814A0278 | 90 0D AD A4 */	stw r0, Opened@sda21(r0)
.L_814A027C:
/* 814A027C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814A0280 | 7C 08 03 A6 */	mtlr r0
/* 814A0284 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814A0288 | 4E 80 00 20 */	blr
.endfn NWC24CloseLib

# .text:0x2B0 | 0x814A028C | size: 0x6C
.fn NWC24CloseMsgLib, global
/* 814A028C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814A0290 | 7C 08 02 A6 */	mflr r0
/* 814A0294 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814A0298 | 80 0D AD A4 */	lwz r0, Opened@sda21(r0)
/* 814A029C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814A02A0 | 41 82 00 0C */	beq .L_814A02AC
/* 814A02A4 | 38 60 FF F7 */	li r3, -0x9
/* 814A02A8 | 48 00 00 40 */	b .L_814A02E8
.L_814A02AC:
/* 814A02AC | 4B FF F5 99 */	bl NWC24iConfigFlush
/* 814A02B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A02B4 | 41 82 00 08 */	beq .L_814A02BC
/* 814A02B8 | 48 00 00 30 */	b .L_814A02E8
.L_814A02BC:
/* 814A02BC | 48 01 03 8D */	bl NWC24iCloseDlTaskList
/* 814A02C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A02C4 | 40 80 00 08 */	bge .L_814A02CC
/* 814A02C8 | 48 00 00 20 */	b .L_814A02E8
.L_814A02CC:
/* 814A02CC | 48 00 B6 C1 */	bl NWC24iResumeForCloseLib
/* 814A02D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A02D4 | 41 82 00 08 */	beq .L_814A02DC
/* 814A02D8 | 48 00 00 10 */	b .L_814A02E8
.L_814A02DC:
/* 814A02DC | 38 00 00 00 */	li r0, 0x0
/* 814A02E0 | 90 0D AD A0 */	stw r0, NWC24WorkP_81698DE0@sda21(r0)
/* 814A02E4 | 90 0D AD A4 */	stw r0, Opened@sda21(r0)
.L_814A02E8:
/* 814A02E8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814A02EC | 7C 08 03 A6 */	mtlr r0
/* 814A02F0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814A02F4 | 4E 80 00 20 */	blr
.endfn NWC24CloseMsgLib

# .text:0x31C | 0x814A02F8 | size: 0x14
.fn NWC24IsMsgLibOpened, global
/* 814A02F8 | 80 6D AD A4 */	lwz r3, Opened@sda21(r0)
/* 814A02FC | 38 03 FF FF */	subi r0, r3, 0x1
/* 814A0300 | 7C 00 00 34 */	cntlzw r0, r0
/* 814A0304 | 54 03 D9 7E */	srwi r3, r0, 5
/* 814A0308 | 4E 80 00 20 */	blr
.endfn NWC24IsMsgLibOpened

# .text:0x330 | 0x814A030C | size: 0x14
.fn NWC24IsMsgLibOpenedByTool, global
/* 814A030C | 80 6D AD A4 */	lwz r3, Opened@sda21(r0)
/* 814A0310 | 38 03 FF FE */	subi r0, r3, 0x2
/* 814A0314 | 7C 00 00 34 */	cntlzw r0, r0
/* 814A0318 | 54 03 D9 7E */	srwi r3, r0, 5
/* 814A031C | 4E 80 00 20 */	blr
.endfn NWC24IsMsgLibOpenedByTool

# .text:0x344 | 0x814A0320 | size: 0x14
.fn NWC24IsMsgLibOpenBlocking, global
/* 814A0320 | 80 6D AD A4 */	lwz r3, Opened@sda21(r0)
/* 814A0324 | 38 03 FF FD */	subi r0, r3, 0x3
/* 814A0328 | 7C 00 00 34 */	cntlzw r0, r0
/* 814A032C | 54 03 D9 7E */	srwi r3, r0, 5
/* 814A0330 | 4E 80 00 20 */	blr
.endfn NWC24IsMsgLibOpenBlocking

# .text:0x358 | 0x814A0334 | size: 0xA0
.fn NWC24BlockOpenMsgLib, global
/* 814A0334 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814A0338 | 7C 08 02 A6 */	mflr r0
/* 814A033C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814A0340 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814A0344 | 3B E0 00 00 */	li r31, 0x0
/* 814A0348 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814A034C | 7C 7E 1B 78 */	mr r30, r3
/* 814A0350 | 48 09 05 35 */	bl OSDisableInterrupts
/* 814A0354 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814A0358 | 41 82 00 34 */	beq .L_814A038C
/* 814A035C | 80 0D AD A4 */	lwz r0, Opened@sda21(r0)
/* 814A0360 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A0364 | 40 82 00 10 */	bne .L_814A0374
/* 814A0368 | 38 00 00 03 */	li r0, 0x3
/* 814A036C | 90 0D AD A4 */	stw r0, Opened@sda21(r0)
/* 814A0370 | 48 00 00 44 */	b .L_814A03B4
.L_814A0374:
/* 814A0374 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814A0378 | 40 82 00 0C */	bne .L_814A0384
/* 814A037C | 3B E0 FF F6 */	li r31, -0xa
/* 814A0380 | 48 00 00 34 */	b .L_814A03B4
.L_814A0384:
/* 814A0384 | 3B E0 FF E6 */	li r31, -0x1a
/* 814A0388 | 48 00 00 2C */	b .L_814A03B4
.L_814A038C:
/* 814A038C | 80 8D AD A4 */	lwz r4, Opened@sda21(r0)
/* 814A0390 | 38 04 FF FD */	subi r0, r4, 0x3
/* 814A0394 | 7C 00 00 34 */	cntlzw r0, r0
/* 814A0398 | 54 04 D9 7F */	srwi. r4, r0, 5
/* 814A039C | 41 82 00 0C */	beq .L_814A03A8
/* 814A03A0 | 38 00 00 00 */	li r0, 0x0
/* 814A03A4 | 90 0D AD A4 */	stw r0, Opened@sda21(r0)
.L_814A03A8:
/* 814A03A8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814A03AC | 40 82 00 08 */	bne .L_814A03B4
/* 814A03B0 | 3B E0 FF F7 */	li r31, -0x9
.L_814A03B4:
/* 814A03B4 | 48 09 04 F9 */	bl OSRestoreInterrupts
/* 814A03B8 | 7F E3 FB 78 */	mr r3, r31
/* 814A03BC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814A03C0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814A03C4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814A03C8 | 7C 08 03 A6 */	mtlr r0
/* 814A03CC | 38 21 00 10 */	addi r1, r1, 0x10
/* 814A03D0 | 4E 80 00 20 */	blr
.endfn NWC24BlockOpenMsgLib

# .text:0x3F8 | 0x814A03D4 | size: 0x14
.fn NWC24iSetNewMsgArrived, global
/* 814A03D4 | 80 0D AD A8 */	lwz r0, YouGotMail@sda21(r0)
/* 814A03D8 | 7C 00 1B 78 */	or r0, r0, r3
/* 814A03DC | 38 60 00 00 */	li r3, 0x0
/* 814A03E0 | 90 0D AD A8 */	stw r0, YouGotMail@sda21(r0)
/* 814A03E4 | 4E 80 00 20 */	blr
.endfn NWC24iSetNewMsgArrived

# .text:0x40C | 0x814A03E8 | size: 0x88
.fn NWC24GetSchedulerError, global
/* 814A03E8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814A03EC | 7C 08 02 A6 */	mflr r0
/* 814A03F0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814A03F4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814A03F8 | 7C 9F 23 78 */	mr r31, r4
/* 814A03FC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814A0400 | 7C 7E 1B 78 */	mr r30, r3
/* 814A0404 | 48 09 58 95 */	bl OSGetTick
/* 814A0408 | 80 8D AD B4 */	lwz r4, lastTick$2045@sda21(r0)
/* 814A040C | 54 60 00 1E */	clrrwi r0, r3, 16
/* 814A0410 | 54 84 00 1E */	clrrwi r4, r4, 16
/* 814A0414 | 7C 04 00 40 */	cmplw r4, r0
/* 814A0418 | 40 82 00 0C */	bne .L_814A0424
/* 814A041C | 38 60 00 00 */	li r3, 0x0
/* 814A0420 | 48 00 00 18 */	b .L_814A0438
.L_814A0424:
/* 814A0424 | 90 6D AD B4 */	stw r3, lastTick$2045@sda21(r0)
/* 814A0428 | 3C 60 81 0D */	lis r3, InternalStatBuf@ha
/* 814A042C | 38 63 98 A0 */	addi r3, r3, InternalStatBuf@l
/* 814A0430 | 38 80 00 20 */	li r4, 0x20
/* 814A0434 | 48 00 AA C5 */	bl NWC24iGetSchedulerStat
.L_814A0438:
/* 814A0438 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A043C | 40 82 00 1C */	bne .L_814A0458
/* 814A0440 | 3C 80 81 0D */	lis r4, InternalStatBuf@ha
/* 814A0444 | 38 84 98 A0 */	addi r4, r4, InternalStatBuf@l
/* 814A0448 | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 814A044C | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 814A0450 | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 814A0454 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_814A0458:
/* 814A0458 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814A045C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814A0460 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814A0464 | 7C 08 03 A6 */	mtlr r0
/* 814A0468 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814A046C | 4E 80 00 20 */	blr
.endfn NWC24GetSchedulerError

# .text:0x494 | 0x814A0470 | size: 0x1DC
.fn NWC24Check, global
/* 814A0470 | 94 21 FF 80 */	stwu r1, -0x80(r1)
/* 814A0474 | 7C 08 02 A6 */	mflr r0
/* 814A0478 | 90 01 00 84 */	stw r0, 0x84(r1)
/* 814A047C | 39 61 00 80 */	addi r11, r1, 0x80
/* 814A0480 | 48 15 90 41 */	bl _savegpr_27
/* 814A0484 | 80 0D AD A4 */	lwz r0, Opened@sda21(r0)
/* 814A0488 | 38 80 00 00 */	li r4, 0x0
/* 814A048C | 90 8D AD AC */	stw r4, GlobalErrorCode@sda21(r0)
/* 814A0490 | 7C 7B 1B 78 */	mr r27, r3
/* 814A0494 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814A0498 | 41 82 00 0C */	beq .L_814A04A4
/* 814A049C | 3B E0 FF F7 */	li r31, -0x9
/* 814A04A0 | 48 00 01 90 */	b .L_814A0630
.L_814A04A4:
/* 814A04A4 | 3B E0 FF D9 */	li r31, -0x27
.L_814A04A8:
/* 814A04A8 | 48 0C 7E 9D */	bl fn_81568344
/* 814A04AC | 28 03 00 01 */	cmplwi r3, 0x1
/* 814A04B0 | 41 82 FF F8 */	beq .L_814A04A8
/* 814A04B4 | 28 03 00 02 */	cmplwi r3, 0x2
/* 814A04B8 | 40 82 00 14 */	bne .L_814A04CC
/* 814A04BC | 3C 60 FF FE */	lis r3, 0xfffe
/* 814A04C0 | 38 03 55 C8 */	addi r0, r3, 0x55c8
/* 814A04C4 | 90 0D AD AC */	stw r0, GlobalErrorCode@sda21(r0)
/* 814A04C8 | 48 00 01 68 */	b .L_814A0630
.L_814A04CC:
/* 814A04CC | 48 0C A3 55 */	bl SCGetWCFlags
/* 814A04D0 | 54 7D 07 FE */	clrlwi r29, r3, 31
/* 814A04D4 | 48 0C A3 09 */	bl fn_8156A7DC
/* 814A04D8 | 7C 7E 1B 78 */	mr r30, r3
/* 814A04DC | 48 0C A1 D1 */	bl SCGetNetContentRestrictions
/* 814A04E0 | 54 7C 07 BC */	rlwinm r28, r3, 0, 30, 30
/* 814A04E4 | 38 61 00 1C */	addi r3, r1, 0x1c
/* 814A04E8 | 48 0C 9C 91 */	bl SCGetParentalControl
/* 814A04EC | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814A04F0 | 40 82 00 14 */	bne .L_814A0504
/* 814A04F4 | 3C 60 FF FE */	lis r3, 0xfffe
/* 814A04F8 | 38 03 55 AD */	addi r0, r3, 0x55ad
/* 814A04FC | 90 0D AD AC */	stw r0, GlobalErrorCode@sda21(r0)
/* 814A0500 | 48 00 01 30 */	b .L_814A0630
.L_814A0504:
/* 814A0504 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814A0508 | 40 82 00 14 */	bne .L_814A051C
/* 814A050C | 3C 60 FF FE */	lis r3, 0xfffe
/* 814A0510 | 38 03 55 CD */	addi r0, r3, 0x55cd
/* 814A0514 | 90 0D AD AC */	stw r0, GlobalErrorCode@sda21(r0)
/* 814A0518 | 48 00 01 18 */	b .L_814A0630
.L_814A051C:
/* 814A051C | 57 7E 07 FF */	clrlwi. r30, r27, 31
/* 814A0520 | 41 82 00 28 */	beq .L_814A0548
/* 814A0524 | 88 01 00 1C */	lbz r0, 0x1c(r1)
/* 814A0528 | 54 00 06 31 */	rlwinm. r0, r0, 0, 24, 24
/* 814A052C | 41 82 00 1C */	beq .L_814A0548
/* 814A0530 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814A0534 | 41 82 00 14 */	beq .L_814A0548
/* 814A0538 | 3C 60 FF FE */	lis r3, 0xfffe
/* 814A053C | 38 03 55 CD */	addi r0, r3, 0x55cd
/* 814A0540 | 90 0D AD AC */	stw r0, GlobalErrorCode@sda21(r0)
/* 814A0544 | 48 00 00 EC */	b .L_814A0630
.L_814A0548:
/* 814A0548 | 38 61 00 18 */	addi r3, r1, 0x18
/* 814A054C | 38 81 00 14 */	addi r4, r1, 0x14
/* 814A0550 | 38 A1 00 10 */	addi r5, r1, 0x10
/* 814A0554 | 3B E0 FF E1 */	li r31, -0x1f
/* 814A0558 | 4B FF 2A 9D */	bl NCDiGetEnabledConfigList
/* 814A055C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A0560 | 40 80 00 14 */	bge .L_814A0574
/* 814A0564 | 3C 60 FF FE */	lis r3, 0xfffe
/* 814A0568 | 38 03 55 B3 */	addi r0, r3, 0x55b3
/* 814A056C | 90 0D AD AC */	stw r0, GlobalErrorCode@sda21(r0)
/* 814A0570 | 48 00 00 C0 */	b .L_814A0630
.L_814A0574:
/* 814A0574 | 80 01 00 18 */	lwz r0, 0x18(r1)
/* 814A0578 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A057C | 40 82 00 2C */	bne .L_814A05A8
/* 814A0580 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814A0584 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A0588 | 40 82 00 20 */	bne .L_814A05A8
/* 814A058C | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 814A0590 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A0594 | 40 82 00 14 */	bne .L_814A05A8
/* 814A0598 | 3C 60 FF FF */	lis r3, 0xffff
/* 814A059C | 38 03 3B 85 */	addi r0, r3, 0x3b85
/* 814A05A0 | 90 0D AD AC */	stw r0, GlobalErrorCode@sda21(r0)
/* 814A05A4 | 48 00 00 8C */	b .L_814A0630
.L_814A05A8:
/* 814A05A8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814A05AC | 41 82 00 28 */	beq .L_814A05D4
/* 814A05B0 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814A05B4 | 4B FF F5 7D */	bl NWC24GetIdCreationStage
/* 814A05B8 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814A05BC | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814A05C0 | 41 82 00 14 */	beq .L_814A05D4
/* 814A05C4 | 3C 60 FF FE */	lis r3, 0xfffe
/* 814A05C8 | 38 03 55 A8 */	addi r0, r3, 0x55a8
/* 814A05CC | 90 0D AD AC */	stw r0, GlobalErrorCode@sda21(r0)
/* 814A05D0 | 48 00 00 60 */	b .L_814A0630
.L_814A05D4:
/* 814A05D4 | 38 00 00 00 */	li r0, 0x0
/* 814A05D8 | 7F 64 DB 78 */	mr r4, r27
/* 814A05DC | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814A05E0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814A05E4 | 48 00 03 E1 */	bl AnalyzeScdErrors
/* 814A05E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A05EC | 40 80 00 14 */	bge .L_814A0600
/* 814A05F0 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814A05F4 | 7C 7F 1B 78 */	mr r31, r3
/* 814A05F8 | 90 0D AD AC */	stw r0, GlobalErrorCode@sda21(r0)
/* 814A05FC | 48 00 00 34 */	b .L_814A0630
.L_814A0600:
/* 814A0600 | 38 60 00 00 */	li r3, 0x0
/* 814A0604 | 38 80 00 00 */	li r4, 0x0
/* 814A0608 | 48 00 27 A1 */	bl NWC24iMBoxCheck
/* 814A060C | 2C 03 FF FA */	cmpwi r3, -0x6
/* 814A0610 | 7C 7F 1B 78 */	mr r31, r3
/* 814A0614 | 40 82 00 10 */	bne .L_814A0624
/* 814A0618 | 3C 80 FF FE */	lis r4, 0xfffe
/* 814A061C | 38 04 55 CE */	addi r0, r4, 0x55ce
/* 814A0620 | 90 0D AD AC */	stw r0, GlobalErrorCode@sda21(r0)
.L_814A0624:
/* 814A0624 | 2C 03 FF FA */	cmpwi r3, -0x6
/* 814A0628 | 41 82 00 08 */	beq .L_814A0630
/* 814A062C | 3B E0 00 00 */	li r31, 0x0
.L_814A0630:
/* 814A0630 | 39 61 00 80 */	addi r11, r1, 0x80
/* 814A0634 | 7F E3 FB 78 */	mr r3, r31
/* 814A0638 | 48 15 8E D5 */	bl _restgpr_27
/* 814A063C | 80 01 00 84 */	lwz r0, 0x84(r1)
/* 814A0640 | 7C 08 03 A6 */	mtlr r0
/* 814A0644 | 38 21 00 80 */	addi r1, r1, 0x80
/* 814A0648 | 4E 80 00 20 */	blr
.endfn NWC24Check

# .text:0x670 | 0x814A064C | size: 0x8
.fn NWC24GetErrorCode, global
/* 814A064C | 80 6D AD AC */	lwz r3, GlobalErrorCode@sda21(r0)
/* 814A0650 | 4E 80 00 20 */	blr
.endfn NWC24GetErrorCode

# .text:0x678 | 0x814A0654 | size: 0x8
.fn NWC24iSetErrorCode, global
/* 814A0654 | 90 6D AD AC */	stw r3, GlobalErrorCode@sda21(r0)
/* 814A0658 | 4E 80 00 20 */	blr
.endfn NWC24iSetErrorCode

# .text:0x680 | 0x814A065C | size: 0xA8
.fn NWC24InitFiles, global
/* 814A065C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814A0660 | 7C 08 02 A6 */	mflr r0
/* 814A0664 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814A0668 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814A066C | 7C 9F 23 78 */	mr r31, r4
/* 814A0670 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814A0674 | 7C 7E 1B 78 */	mr r30, r3
/* 814A0678 | 38 60 00 01 */	li r3, 0x1
/* 814A067C | 4B FF FC B9 */	bl NWC24BlockOpenMsgLib
/* 814A0680 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A0684 | 41 82 00 08 */	beq .L_814A068C
/* 814A0688 | 48 00 00 64 */	b .L_814A06EC
.L_814A068C:
/* 814A068C | 48 00 A6 AD */	bl NWC24SuspendScheduler
/* 814A0690 | 7F C3 F3 78 */	mr r3, r30
/* 814A0694 | 7F E4 FB 78 */	mr r4, r31
/* 814A0698 | 7F E5 FB 78 */	mr r5, r31
/* 814A069C | 7F E6 FB 78 */	mr r6, r31
/* 814A06A0 | 7F E7 FB 78 */	mr r7, r31
/* 814A06A4 | 48 00 00 ED */	bl InitAllFiles
/* 814A06A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A06AC | 7C 7F 1B 78 */	mr r31, r3
/* 814A06B0 | 40 82 00 24 */	bne .L_814A06D4
/* 814A06B4 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814A06B8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814A06BC | 48 00 AC 69 */	bl NWC24iRequestGenerateUserId
/* 814A06C0 | 38 03 00 24 */	addi r0, r3, 0x24
/* 814A06C4 | 7C 7F 1B 78 */	mr r31, r3
/* 814A06C8 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814A06CC | 41 81 00 08 */	bgt .L_814A06D4
/* 814A06D0 | 3B E0 00 00 */	li r31, 0x0
.L_814A06D4:
/* 814A06D4 | 48 00 A7 35 */	bl NWC24ResumeScheduler
/* 814A06D8 | 38 60 00 00 */	li r3, 0x0
/* 814A06DC | 4B FF FC 59 */	bl NWC24BlockOpenMsgLib
/* 814A06E0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814A06E4 | 41 82 00 08 */	beq .L_814A06EC
/* 814A06E8 | 7F E3 FB 78 */	mr r3, r31
.L_814A06EC:
/* 814A06EC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814A06F0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814A06F4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814A06F8 | 7C 08 03 A6 */	mtlr r0
/* 814A06FC | 38 21 00 20 */	addi r1, r1, 0x20
/* 814A0700 | 4E 80 00 20 */	blr
.endfn NWC24InitFiles

# .text:0x728 | 0x814A0704 | size: 0x8C
.fn NWC24InitFilesIndividually, global
/* 814A0704 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814A0708 | 7C 08 02 A6 */	mflr r0
/* 814A070C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814A0710 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814A0714 | 48 15 8D AD */	bl _savegpr_27
/* 814A0718 | 7C 7B 1B 78 */	mr r27, r3
/* 814A071C | 7C 9C 23 78 */	mr r28, r4
/* 814A0720 | 7C BD 2B 78 */	mr r29, r5
/* 814A0724 | 7C DE 33 78 */	mr r30, r6
/* 814A0728 | 7C FF 3B 78 */	mr r31, r7
/* 814A072C | 38 60 00 01 */	li r3, 0x1
/* 814A0730 | 4B FF FC 05 */	bl NWC24BlockOpenMsgLib
/* 814A0734 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A0738 | 41 82 00 08 */	beq .L_814A0740
/* 814A073C | 48 00 00 3C */	b .L_814A0778
.L_814A0740:
/* 814A0740 | 48 00 A5 F9 */	bl NWC24SuspendScheduler
/* 814A0744 | 7F 63 DB 78 */	mr r3, r27
/* 814A0748 | 7F 84 E3 78 */	mr r4, r28
/* 814A074C | 7F A5 EB 78 */	mr r5, r29
/* 814A0750 | 7F C6 F3 78 */	mr r6, r30
/* 814A0754 | 7F E7 FB 78 */	mr r7, r31
/* 814A0758 | 48 00 00 39 */	bl InitAllFiles
/* 814A075C | 7C 7F 1B 78 */	mr r31, r3
/* 814A0760 | 48 00 A6 A9 */	bl NWC24ResumeScheduler
/* 814A0764 | 38 60 00 00 */	li r3, 0x0
/* 814A0768 | 4B FF FB CD */	bl NWC24BlockOpenMsgLib
/* 814A076C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814A0770 | 41 82 00 08 */	beq .L_814A0778
/* 814A0774 | 7F E3 FB 78 */	mr r3, r31
.L_814A0778:
/* 814A0778 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814A077C | 48 15 8D 91 */	bl _restgpr_27
/* 814A0780 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814A0784 | 7C 08 03 A6 */	mtlr r0
/* 814A0788 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814A078C | 4E 80 00 20 */	blr
.endfn NWC24InitFilesIndividually

# .text:0x7B4 | 0x814A0790 | size: 0xBC
.fn InitAllFiles, global
/* 814A0790 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814A0794 | 7C 08 02 A6 */	mflr r0
/* 814A0798 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814A079C | 54 60 06 FF */	clrlwi. r0, r3, 27
/* 814A07A0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814A07A4 | 7C FF 3B 78 */	mr r31, r7
/* 814A07A8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814A07AC | 7C DE 33 78 */	mr r30, r6
/* 814A07B0 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814A07B4 | 7C 9D 23 78 */	mr r29, r4
/* 814A07B8 | 41 82 00 0C */	beq .L_814A07C4
/* 814A07BC | 38 60 FF E9 */	li r3, -0x17
/* 814A07C0 | 48 00 00 70 */	b .L_814A0830
.L_814A07C4:
/* 814A07C4 | 90 6D AD A0 */	stw r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814A07C8 | 7C A3 2B 78 */	mr r3, r5
/* 814A07CC | 48 00 00 81 */	bl NWC24iInitMsgBoxDir
/* 814A07D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A07D4 | 41 82 00 08 */	beq .L_814A07DC
/* 814A07D8 | 48 00 00 58 */	b .L_814A0830
.L_814A07DC:
/* 814A07DC | 48 00 1B 29 */	bl NWC24iInitMBox
/* 814A07E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A07E4 | 41 82 00 08 */	beq .L_814A07EC
/* 814A07E8 | 48 00 00 48 */	b .L_814A0830
.L_814A07EC:
/* 814A07EC | 7F A3 EB 78 */	mr r3, r29
/* 814A07F0 | 4B FF ED 01 */	bl NWC24iConfigInit
/* 814A07F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A07F8 | 41 82 00 08 */	beq .L_814A0800
/* 814A07FC | 48 00 00 34 */	b .L_814A0830
.L_814A0800:
/* 814A0800 | 7F C3 F3 78 */	mr r3, r30
/* 814A0804 | 48 00 CE D9 */	bl NWC24iInitFriendList
/* 814A0808 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A080C | 41 82 00 08 */	beq .L_814A0814
/* 814A0810 | 48 00 00 20 */	b .L_814A0830
.L_814A0814:
/* 814A0814 | 7F C3 F3 78 */	mr r3, r30
/* 814A0818 | 48 00 D5 1D */	bl NWC24iInitSecretFriendList
/* 814A081C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A0820 | 41 82 00 08 */	beq .L_814A0828
/* 814A0824 | 48 00 00 0C */	b .L_814A0830
.L_814A0828:
/* 814A0828 | 7F E3 FB 78 */	mr r3, r31
/* 814A082C | 48 01 05 AD */	bl NWC24iInitDlTaskList
.L_814A0830:
/* 814A0830 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814A0834 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814A0838 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814A083C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814A0840 | 7C 08 03 A6 */	mtlr r0
/* 814A0844 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814A0848 | 4E 80 00 20 */	blr
.endfn InitAllFiles

# .text:0x870 | 0x814A084C | size: 0x178
.fn NWC24iInitMsgBoxDir, global
/* 814A084C | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 814A0850 | 7C 08 02 A6 */	mflr r0
/* 814A0854 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 814A0858 | 93 E1 00 5C */	stw r31, 0x5c(r1)
/* 814A085C | 93 C1 00 58 */	stw r30, 0x58(r1)
/* 814A0860 | 7C 7E 1B 78 */	mr r30, r3
/* 814A0864 | 4B FF F1 6D */	bl NWC24GetMBoxDir
/* 814A0868 | 7C 7F 1B 78 */	mr r31, r3
/* 814A086C | 38 61 00 10 */	addi r3, r1, 0x10
/* 814A0870 | 7F E4 FB 78 */	mr r4, r31
/* 814A0874 | 4B FF C4 D9 */	bl Mail_strcpy
/* 814A0878 | 38 81 00 11 */	addi r4, r1, 0x11
/* 814A087C | 48 00 00 20 */	b .L_814A089C
.L_814A0880:
/* 814A0880 | 7C 60 07 74 */	extsb r0, r3
/* 814A0884 | 2C 00 00 2F */	cmpwi r0, 0x2f
/* 814A0888 | 40 82 00 10 */	bne .L_814A0898
/* 814A088C | 38 00 00 00 */	li r0, 0x0
/* 814A0890 | 98 04 00 00 */	stb r0, 0x0(r4)
/* 814A0894 | 48 00 00 14 */	b .L_814A08A8
.L_814A0898:
/* 814A0898 | 38 84 00 01 */	addi r4, r4, 0x1
.L_814A089C:
/* 814A089C | 88 64 00 00 */	lbz r3, 0x0(r4)
/* 814A08A0 | 7C 60 07 75 */	extsb. r0, r3
/* 814A08A4 | 40 82 FF DC */	bne .L_814A0880
.L_814A08A8:
/* 814A08A8 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814A08AC | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814A08B0 | 38 80 00 00 */	li r4, 0x0
/* 814A08B4 | 48 0C 3B 2D */	bl NANDPrivateReadDir
/* 814A08B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A08BC | 41 82 00 0C */	beq .L_814A08C8
/* 814A08C0 | 38 60 FF FF */	li r3, -0x1
/* 814A08C4 | 48 00 00 E8 */	b .L_814A09AC
.L_814A08C8:
/* 814A08C8 | 7F E4 FB 78 */	mr r4, r31
/* 814A08CC | 38 61 00 10 */	addi r3, r1, 0x10
/* 814A08D0 | 4B FF C4 7D */	bl Mail_strcpy
/* 814A08D4 | 38 81 00 11 */	addi r4, r1, 0x11
/* 814A08D8 | 38 A0 00 00 */	li r5, 0x0
/* 814A08DC | 48 00 00 2C */	b .L_814A0908
.L_814A08E0:
/* 814A08E0 | 7C 60 07 74 */	extsb r0, r3
/* 814A08E4 | 2C 00 00 2F */	cmpwi r0, 0x2f
/* 814A08E8 | 40 82 00 1C */	bne .L_814A0904
/* 814A08EC | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814A08F0 | 2C 05 00 02 */	cmpwi r5, 0x2
/* 814A08F4 | 40 82 00 10 */	bne .L_814A0904
/* 814A08F8 | 38 00 00 00 */	li r0, 0x0
/* 814A08FC | 98 04 00 00 */	stb r0, 0x0(r4)
/* 814A0900 | 48 00 00 14 */	b .L_814A0914
.L_814A0904:
/* 814A0904 | 38 84 00 01 */	addi r4, r4, 0x1
.L_814A0908:
/* 814A0908 | 88 64 00 00 */	lbz r3, 0x0(r4)
/* 814A090C | 7C 60 07 75 */	extsb. r0, r3
/* 814A0910 | 40 82 FF D0 */	bne .L_814A08E0
.L_814A0914:
/* 814A0914 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814A0918 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814A091C | 38 80 00 00 */	li r4, 0x0
/* 814A0920 | 48 0C 3A C1 */	bl NANDPrivateReadDir
/* 814A0924 | 2C 03 FF F4 */	cmpwi r3, -0xc
/* 814A0928 | 40 82 00 1C */	bne .L_814A0944
/* 814A092C | 38 61 00 10 */	addi r3, r1, 0x10
/* 814A0930 | 4B FF DE E9 */	bl NWC24CreateDir
/* 814A0934 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A0938 | 41 82 00 1C */	beq .L_814A0954
/* 814A093C | 38 60 FF FF */	li r3, -0x1
/* 814A0940 | 48 00 00 6C */	b .L_814A09AC
.L_814A0944:
/* 814A0944 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A0948 | 41 82 00 0C */	beq .L_814A0954
/* 814A094C | 38 60 FF FF */	li r3, -0x1
/* 814A0950 | 48 00 00 5C */	b .L_814A09AC
.L_814A0954:
/* 814A0954 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814A0958 | 41 82 00 30 */	beq .L_814A0988
/* 814A095C | 7F E3 FB 78 */	mr r3, r31
/* 814A0960 | 48 0C 35 49 */	bl NANDPrivateDelete
/* 814A0964 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A0968 | 41 82 00 20 */	beq .L_814A0988
/* 814A096C | 2C 03 FF F4 */	cmpwi r3, -0xc
/* 814A0970 | 41 82 00 18 */	beq .L_814A0988
/* 814A0974 | 2C 03 FF FC */	cmpwi r3, -0x4
/* 814A0978 | 38 60 FF FF */	li r3, -0x1
/* 814A097C | 40 82 00 30 */	bne .L_814A09AC
/* 814A0980 | 38 60 FF DA */	li r3, -0x26
/* 814A0984 | 48 00 00 28 */	b .L_814A09AC
.L_814A0988:
/* 814A0988 | 7F E3 FB 78 */	mr r3, r31
/* 814A098C | 4B FF DE 8D */	bl NWC24CreateDir
/* 814A0990 | 2C 03 FF F1 */	cmpwi r3, -0xf
/* 814A0994 | 41 82 00 14 */	beq .L_814A09A8
/* 814A0998 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A099C | 41 82 00 0C */	beq .L_814A09A8
/* 814A09A0 | 38 60 FF FF */	li r3, -0x1
/* 814A09A4 | 48 00 00 08 */	b .L_814A09AC
.L_814A09A8:
/* 814A09A8 | 38 60 00 00 */	li r3, 0x0
.L_814A09AC:
/* 814A09AC | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 814A09B0 | 83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 814A09B4 | 83 C1 00 58 */	lwz r30, 0x58(r1)
/* 814A09B8 | 7C 08 03 A6 */	mtlr r0
/* 814A09BC | 38 21 00 60 */	addi r1, r1, 0x60
/* 814A09C0 | 4E 80 00 20 */	blr
.endfn NWC24iInitMsgBoxDir

# .text:0x9E8 | 0x814A09C4 | size: 0x160
.fn AnalyzeScdErrors, global
/* 814A09C4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814A09C8 | 7C 08 02 A6 */	mflr r0
/* 814A09CC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814A09D0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814A09D4 | 48 15 8A E1 */	bl _savegpr_24
/* 814A09D8 | 80 AD AD A0 */	lwz r5, NWC24WorkP_81698DE0@sda21(r0)
/* 814A09DC | 3B C0 00 00 */	li r30, 0x0
/* 814A09E0 | 7C 9D 23 78 */	mr r29, r4
/* 814A09E4 | 7C 7C 1B 78 */	mr r28, r3
/* 814A09E8 | 93 C3 00 00 */	stw r30, 0x0(r3)
/* 814A09EC | 3B E5 04 00 */	addi r31, r5, 0x400
/* 814A09F0 | 7F E3 FB 78 */	mr r3, r31
/* 814A09F4 | 38 80 01 00 */	li r4, 0x100
/* 814A09F8 | 48 00 A5 01 */	bl NWC24iGetSchedulerStat
/* 814A09FC | 2C 03 FF FF */	cmpwi r3, -0x1
/* 814A0A00 | 41 82 00 14 */	beq .L_814A0A14
/* 814A0A04 | 2C 03 FF F5 */	cmpwi r3, -0xb
/* 814A0A08 | 41 82 00 0C */	beq .L_814A0A14
/* 814A0A0C | 2C 03 FF D6 */	cmpwi r3, -0x2a
/* 814A0A10 | 40 82 00 18 */	bne .L_814A0A28
.L_814A0A14:
/* 814A0A14 | 3C 83 FF FE */	subis r4, r3, 0x2
/* 814A0A18 | 38 60 FF FF */	li r3, -0x1
/* 814A0A1C | 38 04 55 D4 */	addi r0, r4, 0x55d4
/* 814A0A20 | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 814A0A24 | 48 00 00 E8 */	b .L_814A0B0C
.L_814A0A28:
/* 814A0A28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A0A2C | 41 82 00 0C */	beq .L_814A0A38
/* 814A0A30 | 38 60 00 00 */	li r3, 0x0
/* 814A0A34 | 48 00 00 D8 */	b .L_814A0B0C
.L_814A0A38:
/* 814A0A38 | 57 A0 07 FF */	clrlwi. r0, r29, 31
/* 814A0A3C | 41 82 00 1C */	beq .L_814A0A58
/* 814A0A40 | 80 1F 00 44 */	lwz r0, 0x44(r31)
/* 814A0A44 | 54 00 07 BE */	clrlwi r0, r0, 30
/* 814A0A48 | 28 00 00 03 */	cmplwi r0, 0x3
/* 814A0A4C | 40 82 00 2C */	bne .L_814A0A78
/* 814A0A50 | 38 60 00 00 */	li r3, 0x0
/* 814A0A54 | 48 00 00 B8 */	b .L_814A0B0C
.L_814A0A58:
/* 814A0A58 | 57 A0 07 BD */	rlwinm. r0, r29, 0, 30, 30
/* 814A0A5C | 41 82 00 1C */	beq .L_814A0A78
/* 814A0A60 | 80 1F 00 48 */	lwz r0, 0x48(r31)
/* 814A0A64 | 54 00 07 3E */	clrlwi r0, r0, 28
/* 814A0A68 | 28 00 00 0F */	cmplwi r0, 0xf
/* 814A0A6C | 40 82 00 0C */	bne .L_814A0A78
/* 814A0A70 | 38 60 00 00 */	li r3, 0x0
/* 814A0A74 | 48 00 00 98 */	b .L_814A0B0C
.L_814A0A78:
/* 814A0A78 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 814A0A7C | 3B 60 00 20 */	li r27, 0x20
/* 814A0A80 | 28 03 00 20 */	cmplwi r3, 0x20
/* 814A0A84 | 40 80 00 08 */	bge .L_814A0A8C
/* 814A0A88 | 7C 7B 1B 78 */	mr r27, r3
.L_814A0A8C:
/* 814A0A8C | 38 63 00 1F */	addi r3, r3, 0x1f
/* 814A0A90 | 3B 20 00 00 */	li r25, 0x0
/* 814A0A94 | 54 60 D8 08 */	slwi r0, r3, 27
/* 814A0A98 | 54 63 0F FE */	srwi r3, r3, 31
/* 814A0A9C | 7C 03 00 50 */	subf r0, r3, r0
/* 814A0AA0 | 54 00 28 3E */	rotlwi r0, r0, 5
/* 814A0AA4 | 7F 00 1A 14 */	add r24, r0, r3
/* 814A0AA8 | 48 00 00 50 */	b .L_814A0AF8
.L_814A0AAC:
/* 814A0AAC | 57 00 10 3A */	slwi r0, r24, 2
/* 814A0AB0 | 7F A4 EB 78 */	mr r4, r29
/* 814A0AB4 | 7F 5F 02 14 */	add r26, r31, r0
/* 814A0AB8 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814A0ABC | 80 7A 00 80 */	lwz r3, 0x80(r26)
/* 814A0AC0 | 48 00 00 65 */	bl AnalyzeErrorCode
/* 814A0AC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A0AC8 | 41 82 00 20 */	beq .L_814A0AE8
/* 814A0ACC | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814A0AD0 | 7F DE 02 14 */	add r30, r30, r0
/* 814A0AD4 | 28 1E 00 3C */	cmplwi r30, 0x3c
/* 814A0AD8 | 41 80 00 10 */	blt .L_814A0AE8
/* 814A0ADC | 80 1A 00 80 */	lwz r0, 0x80(r26)
/* 814A0AE0 | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 814A0AE4 | 48 00 00 28 */	b .L_814A0B0C
.L_814A0AE8:
/* 814A0AE8 | 37 18 FF FF */	subic. r24, r24, 0x1
/* 814A0AEC | 40 80 00 08 */	bge .L_814A0AF4
/* 814A0AF0 | 3B 00 00 1F */	li r24, 0x1f
.L_814A0AF4:
/* 814A0AF4 | 3B 39 00 01 */	addi r25, r25, 0x1
.L_814A0AF8:
/* 814A0AF8 | 7C 19 D8 40 */	cmplw r25, r27
/* 814A0AFC | 41 80 FF B0 */	blt .L_814A0AAC
/* 814A0B00 | 38 00 00 00 */	li r0, 0x0
/* 814A0B04 | 38 60 00 00 */	li r3, 0x0
/* 814A0B08 | 90 1C 00 00 */	stw r0, 0x0(r28)
.L_814A0B0C:
/* 814A0B0C | 39 61 00 30 */	addi r11, r1, 0x30
/* 814A0B10 | 48 15 89 F1 */	bl _restgpr_24
/* 814A0B14 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814A0B18 | 7C 08 03 A6 */	mtlr r0
/* 814A0B1C | 38 21 00 30 */	addi r1, r1, 0x30
/* 814A0B20 | 4E 80 00 20 */	blr
.endfn AnalyzeScdErrors

# .text:0xB48 | 0x814A0B24 | size: 0x380
.fn AnalyzeErrorCode, global
/* 814A0B24 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814A0B28 | 3C C0 66 66 */	lis r6, 0x6666
/* 814A0B2C | 38 00 00 00 */	li r0, 0x0
/* 814A0B30 | 7D 03 00 D0 */	neg r8, r3
/* 814A0B34 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814A0B38 | 90 05 00 00 */	stw r0, 0x0(r5)
/* 814A0B3C | 38 06 66 67 */	addi r0, r6, 0x6667
/* 814A0B40 | 7C 60 40 96 */	mulhw r3, r0, r8
/* 814A0B44 | 7C 66 16 70 */	srawi r6, r3, 2
/* 814A0B48 | 54 C7 0F FE */	srwi r7, r6, 31
/* 814A0B4C | 7C 63 16 70 */	srawi r3, r3, 2
/* 814A0B50 | 7C C6 3A 14 */	add r6, r6, r7
/* 814A0B54 | 1C E6 00 0A */	mulli r7, r6, 0xa
/* 814A0B58 | 54 66 0F FE */	srwi r6, r3, 31
/* 814A0B5C | 7C E7 40 50 */	subf r7, r7, r8
/* 814A0B60 | 7D 03 32 14 */	add r8, r3, r6
/* 814A0B64 | 7C C0 40 96 */	mulhw r6, r0, r8
/* 814A0B68 | 7C E3 07 74 */	extsb r3, r7
/* 814A0B6C | 7C C7 16 70 */	srawi r7, r6, 2
/* 814A0B70 | 54 E9 0F FE */	srwi r9, r7, 31
/* 814A0B74 | 7C C6 16 70 */	srawi r6, r6, 2
/* 814A0B78 | 7C E7 4A 14 */	add r7, r7, r9
/* 814A0B7C | 1D 27 00 0A */	mulli r9, r7, 0xa
/* 814A0B80 | 54 C7 0F FE */	srwi r7, r6, 31
/* 814A0B84 | 7D 29 40 50 */	subf r9, r9, r8
/* 814A0B88 | 7D 06 3A 14 */	add r8, r6, r7
/* 814A0B8C | 7C E0 40 96 */	mulhw r7, r0, r8
/* 814A0B90 | 7D 26 07 74 */	extsb r6, r9
/* 814A0B94 | 7C E9 16 70 */	srawi r9, r7, 2
/* 814A0B98 | 55 2A 0F FE */	srwi r10, r9, 31
/* 814A0B9C | 7C E7 16 70 */	srawi r7, r7, 2
/* 814A0BA0 | 7D 29 52 14 */	add r9, r9, r10
/* 814A0BA4 | 1D 49 00 0A */	mulli r10, r9, 0xa
/* 814A0BA8 | 54 E9 0F FE */	srwi r9, r7, 31
/* 814A0BAC | 7D 4A 40 50 */	subf r10, r10, r8
/* 814A0BB0 | 7D 07 4A 14 */	add r8, r7, r9
/* 814A0BB4 | 7D 20 40 96 */	mulhw r9, r0, r8
/* 814A0BB8 | 7D 47 07 74 */	extsb r7, r10
/* 814A0BBC | 7D 2A 16 70 */	srawi r10, r9, 2
/* 814A0BC0 | 55 4B 0F FE */	srwi r11, r10, 31
/* 814A0BC4 | 7D 29 16 70 */	srawi r9, r9, 2
/* 814A0BC8 | 7D 4A 5A 14 */	add r10, r10, r11
/* 814A0BCC | 1D 6A 00 0A */	mulli r11, r10, 0xa
/* 814A0BD0 | 55 2A 0F FE */	srwi r10, r9, 31
/* 814A0BD4 | 7D 6B 40 50 */	subf r11, r11, r8
/* 814A0BD8 | 7D 09 52 14 */	add r8, r9, r10
/* 814A0BDC | 7D 20 40 96 */	mulhw r9, r0, r8
/* 814A0BE0 | 7D 7F 07 74 */	extsb r31, r11
/* 814A0BE4 | 7D 2B 16 70 */	srawi r11, r9, 2
/* 814A0BE8 | 7D 29 16 70 */	srawi r9, r9, 2
/* 814A0BEC | 55 2A 0F FE */	srwi r10, r9, 31
/* 814A0BF0 | 55 6C 0F FE */	srwi r12, r11, 31
/* 814A0BF4 | 7D 49 52 14 */	add r10, r9, r10
/* 814A0BF8 | 7C 00 50 96 */	mulhw r0, r0, r10
/* 814A0BFC | 7D 6B 62 14 */	add r11, r11, r12
/* 814A0C00 | 7C 00 16 70 */	srawi r0, r0, 2
/* 814A0C04 | 54 09 0F FE */	srwi r9, r0, 31
/* 814A0C08 | 7C 00 4A 14 */	add r0, r0, r9
/* 814A0C0C | 1C 00 00 0A */	mulli r0, r0, 0xa
/* 814A0C10 | 7C 00 50 50 */	subf r0, r0, r10
/* 814A0C14 | 1D 2B 00 0A */	mulli r9, r11, 0xa
/* 814A0C18 | 7C 0A 07 75 */	extsb. r10, r0
/* 814A0C1C | 7C 09 40 50 */	subf r0, r9, r8
/* 814A0C20 | 7C 08 07 74 */	extsb r8, r0
/* 814A0C24 | 40 82 00 1C */	bne .L_814A0C40
/* 814A0C28 | 2C 08 00 05 */	cmpwi r8, 0x5
/* 814A0C2C | 40 82 00 14 */	bne .L_814A0C40
/* 814A0C30 | 38 00 00 3C */	li r0, 0x3c
/* 814A0C34 | 38 60 FF E1 */	li r3, -0x1f
/* 814A0C38 | 90 05 00 00 */	stw r0, 0x0(r5)
/* 814A0C3C | 48 00 02 5C */	b .L_814A0E98
.L_814A0C40:
/* 814A0C40 | 2C 1F 00 07 */	cmpwi r31, 0x7
/* 814A0C44 | 40 82 00 14 */	bne .L_814A0C58
/* 814A0C48 | 54 80 07 BD */	rlwinm. r0, r4, 0, 30, 30
/* 814A0C4C | 40 82 00 1C */	bne .L_814A0C68
/* 814A0C50 | 38 60 00 00 */	li r3, 0x0
/* 814A0C54 | 48 00 02 44 */	b .L_814A0E98
.L_814A0C58:
/* 814A0C58 | 54 80 07 FF */	clrlwi. r0, r4, 31
/* 814A0C5C | 40 82 00 0C */	bne .L_814A0C68
/* 814A0C60 | 38 60 00 00 */	li r3, 0x0
/* 814A0C64 | 48 00 02 34 */	b .L_814A0E98
.L_814A0C68:
/* 814A0C68 | 2C 0A 00 01 */	cmpwi r10, 0x1
/* 814A0C6C | 40 82 00 64 */	bne .L_814A0CD0
/* 814A0C70 | 2C 08 00 01 */	cmpwi r8, 0x1
/* 814A0C74 | 40 82 00 5C */	bne .L_814A0CD0
/* 814A0C78 | 2C 07 00 01 */	cmpwi r7, 0x1
/* 814A0C7C | 40 82 00 0C */	bne .L_814A0C88
/* 814A0C80 | 38 60 00 00 */	li r3, 0x0
/* 814A0C84 | 48 00 02 14 */	b .L_814A0E98
.L_814A0C88:
/* 814A0C88 | 2C 07 00 04 */	cmpwi r7, 0x4
/* 814A0C8C | 40 82 00 24 */	bne .L_814A0CB0
/* 814A0C90 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814A0C94 | 40 82 00 1C */	bne .L_814A0CB0
/* 814A0C98 | 2C 03 00 07 */	cmpwi r3, 0x7
/* 814A0C9C | 40 82 00 14 */	bne .L_814A0CB0
/* 814A0CA0 | 38 00 00 3C */	li r0, 0x3c
/* 814A0CA4 | 38 60 FF E1 */	li r3, -0x1f
/* 814A0CA8 | 90 05 00 00 */	stw r0, 0x0(r5)
/* 814A0CAC | 48 00 01 EC */	b .L_814A0E98
.L_814A0CB0:
/* 814A0CB0 | 54 80 07 FF */	clrlwi. r0, r4, 31
/* 814A0CB4 | 40 82 00 0C */	bne .L_814A0CC0
/* 814A0CB8 | 38 60 00 00 */	li r3, 0x0
/* 814A0CBC | 48 00 01 DC */	b .L_814A0E98
.L_814A0CC0:
/* 814A0CC0 | 38 00 00 1E */	li r0, 0x1e
/* 814A0CC4 | 38 60 FF E0 */	li r3, -0x20
/* 814A0CC8 | 90 05 00 00 */	stw r0, 0x0(r5)
/* 814A0CCC | 48 00 01 CC */	b .L_814A0E98
.L_814A0CD0:
/* 814A0CD0 | 2C 0A 00 01 */	cmpwi r10, 0x1
/* 814A0CD4 | 40 82 01 C0 */	bne .L_814A0E94
/* 814A0CD8 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814A0CDC | 40 82 01 B8 */	bne .L_814A0E94
/* 814A0CE0 | 54 80 07 FF */	clrlwi. r0, r4, 31
/* 814A0CE4 | 40 82 00 0C */	bne .L_814A0CF0
/* 814A0CE8 | 38 60 00 00 */	li r3, 0x0
/* 814A0CEC | 48 00 01 AC */	b .L_814A0E98
.L_814A0CF0:
/* 814A0CF0 | 1C 06 00 0A */	mulli r0, r6, 0xa
/* 814A0CF4 | 2C 07 00 02 */	cmpwi r7, 0x2
/* 814A0CF8 | 7C 63 02 14 */	add r3, r3, r0
/* 814A0CFC | 41 82 00 88 */	beq .L_814A0D84
/* 814A0D00 | 40 80 00 10 */	bge .L_814A0D10
/* 814A0D04 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814A0D08 | 41 82 00 18 */	beq .L_814A0D20
/* 814A0D0C | 48 00 01 88 */	b .L_814A0E94
.L_814A0D10:
/* 814A0D10 | 2C 07 00 04 */	cmpwi r7, 0x4
/* 814A0D14 | 41 82 01 4C */	beq .L_814A0E60
/* 814A0D18 | 40 80 01 7C */	bge .L_814A0E94
/* 814A0D1C | 48 00 00 F8 */	b .L_814A0E14
.L_814A0D20:
/* 814A0D20 | 2C 03 00 46 */	cmpwi r3, 0x46
/* 814A0D24 | 41 80 00 0C */	blt .L_814A0D30
/* 814A0D28 | 38 60 00 00 */	li r3, 0x0
/* 814A0D2C | 48 00 01 6C */	b .L_814A0E98
.L_814A0D30:
/* 814A0D30 | 38 00 00 3C */	li r0, 0x3c
/* 814A0D34 | 2C 03 00 1E */	cmpwi r3, 0x1e
/* 814A0D38 | 90 05 00 00 */	stw r0, 0x0(r5)
/* 814A0D3C | 40 80 00 18 */	bge .L_814A0D54
/* 814A0D40 | 2C 03 00 04 */	cmpwi r3, 0x4
/* 814A0D44 | 40 80 00 38 */	bge .L_814A0D7C
/* 814A0D48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A0D4C | 40 80 00 18 */	bge .L_814A0D64
/* 814A0D50 | 48 00 00 2C */	b .L_814A0D7C
.L_814A0D54:
/* 814A0D54 | 2C 03 00 20 */	cmpwi r3, 0x20
/* 814A0D58 | 41 82 00 1C */	beq .L_814A0D74
/* 814A0D5C | 40 80 00 20 */	bge .L_814A0D7C
/* 814A0D60 | 48 00 00 0C */	b .L_814A0D6C
.L_814A0D64:
/* 814A0D64 | 38 60 FF FF */	li r3, -0x1
/* 814A0D68 | 48 00 01 30 */	b .L_814A0E98
.L_814A0D6C:
/* 814A0D6C | 38 60 FF E1 */	li r3, -0x1f
/* 814A0D70 | 48 00 01 28 */	b .L_814A0E98
.L_814A0D74:
/* 814A0D74 | 38 60 FF E0 */	li r3, -0x20
/* 814A0D78 | 48 00 01 20 */	b .L_814A0E98
.L_814A0D7C:
/* 814A0D7C | 38 60 00 00 */	li r3, 0x0
/* 814A0D80 | 48 00 01 18 */	b .L_814A0E98
.L_814A0D84:
/* 814A0D84 | 7C 03 00 D0 */	neg r0, r3
/* 814A0D88 | 2C 00 FF E1 */	cmpwi r0, -0x1f
/* 814A0D8C | 41 82 00 60 */	beq .L_814A0DEC
/* 814A0D90 | 40 80 00 2C */	bge .L_814A0DBC
/* 814A0D94 | 2C 00 FF D4 */	cmpwi r0, -0x2c
/* 814A0D98 | 41 82 00 54 */	beq .L_814A0DEC
/* 814A0D9C | 40 80 00 10 */	bge .L_814A0DAC
/* 814A0DA0 | 2C 00 FF D3 */	cmpwi r0, -0x2d
/* 814A0DA4 | 40 80 00 40 */	bge .L_814A0DE4
/* 814A0DA8 | 48 00 00 64 */	b .L_814A0E0C
.L_814A0DAC:
/* 814A0DAC | 2C 00 FF DF */	cmpwi r0, -0x21
/* 814A0DB0 | 41 82 00 3C */	beq .L_814A0DEC
/* 814A0DB4 | 40 80 00 48 */	bge .L_814A0DFC
/* 814A0DB8 | 48 00 00 54 */	b .L_814A0E0C
.L_814A0DBC:
/* 814A0DBC | 2C 00 FF FF */	cmpwi r0, -0x1
/* 814A0DC0 | 41 82 00 14 */	beq .L_814A0DD4
/* 814A0DC4 | 40 80 00 48 */	bge .L_814A0E0C
/* 814A0DC8 | 2C 00 FF F5 */	cmpwi r0, -0xb
/* 814A0DCC | 41 82 00 18 */	beq .L_814A0DE4
/* 814A0DD0 | 48 00 00 3C */	b .L_814A0E0C
.L_814A0DD4:
/* 814A0DD4 | 38 00 00 3C */	li r0, 0x3c
/* 814A0DD8 | 38 60 FF FF */	li r3, -0x1
/* 814A0DDC | 90 05 00 00 */	stw r0, 0x0(r5)
/* 814A0DE0 | 48 00 00 B8 */	b .L_814A0E98
.L_814A0DE4:
/* 814A0DE4 | 38 60 00 00 */	li r3, 0x0
/* 814A0DE8 | 48 00 00 B0 */	b .L_814A0E98
.L_814A0DEC:
/* 814A0DEC | 38 00 00 3C */	li r0, 0x3c
/* 814A0DF0 | 38 60 FF E1 */	li r3, -0x1f
/* 814A0DF4 | 90 05 00 00 */	stw r0, 0x0(r5)
/* 814A0DF8 | 48 00 00 A0 */	b .L_814A0E98
.L_814A0DFC:
/* 814A0DFC | 38 00 00 14 */	li r0, 0x14
/* 814A0E00 | 38 60 FF E0 */	li r3, -0x20
/* 814A0E04 | 90 05 00 00 */	stw r0, 0x0(r5)
/* 814A0E08 | 48 00 00 90 */	b .L_814A0E98
.L_814A0E0C:
/* 814A0E0C | 38 60 00 00 */	li r3, 0x0
/* 814A0E10 | 48 00 00 88 */	b .L_814A0E98
.L_814A0E14:
/* 814A0E14 | 2C 03 00 09 */	cmpwi r3, 0x9
/* 814A0E18 | 40 80 00 18 */	bge .L_814A0E30
/* 814A0E1C | 2C 03 00 06 */	cmpwi r3, 0x6
/* 814A0E20 | 40 80 00 28 */	bge .L_814A0E48
/* 814A0E24 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 814A0E28 | 40 80 00 10 */	bge .L_814A0E38
/* 814A0E2C | 48 00 00 2C */	b .L_814A0E58
.L_814A0E30:
/* 814A0E30 | 2C 03 00 0E */	cmpwi r3, 0xe
/* 814A0E34 | 40 80 00 24 */	bge .L_814A0E58
.L_814A0E38:
/* 814A0E38 | 38 00 00 1E */	li r0, 0x1e
/* 814A0E3C | 38 60 FF E1 */	li r3, -0x1f
/* 814A0E40 | 90 05 00 00 */	stw r0, 0x0(r5)
/* 814A0E44 | 48 00 00 54 */	b .L_814A0E98
.L_814A0E48:
/* 814A0E48 | 38 00 00 14 */	li r0, 0x14
/* 814A0E4C | 38 60 FF E0 */	li r3, -0x20
/* 814A0E50 | 90 05 00 00 */	stw r0, 0x0(r5)
/* 814A0E54 | 48 00 00 44 */	b .L_814A0E98
.L_814A0E58:
/* 814A0E58 | 38 60 00 00 */	li r3, 0x0
/* 814A0E5C | 48 00 00 3C */	b .L_814A0E98
.L_814A0E60:
/* 814A0E60 | 2C 03 00 0D */	cmpwi r3, 0xd
/* 814A0E64 | 40 80 00 20 */	bge .L_814A0E84
/* 814A0E68 | 2C 03 00 09 */	cmpwi r3, 0x9
/* 814A0E6C | 40 80 00 08 */	bge .L_814A0E74
/* 814A0E70 | 48 00 00 14 */	b .L_814A0E84
.L_814A0E74:
/* 814A0E74 | 38 00 00 3C */	li r0, 0x3c
/* 814A0E78 | 38 60 FF E0 */	li r3, -0x20
/* 814A0E7C | 90 05 00 00 */	stw r0, 0x0(r5)
/* 814A0E80 | 48 00 00 18 */	b .L_814A0E98
.L_814A0E84:
/* 814A0E84 | 38 00 00 14 */	li r0, 0x14
/* 814A0E88 | 38 60 FF E1 */	li r3, -0x1f
/* 814A0E8C | 90 05 00 00 */	stw r0, 0x0(r5)
/* 814A0E90 | 48 00 00 08 */	b .L_814A0E98
.L_814A0E94:
/* 814A0E94 | 38 60 00 00 */	li r3, 0x0
.L_814A0E98:
/* 814A0E98 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814A0E9C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814A0EA0 | 4E 80 00 20 */	blr
.endfn AnalyzeErrorCode

# 0x8166D810..0x8166D920 | size: 0x110
.data
.balign 8

# .data:0x0 | 0x8166D810 | size: 0x4C
.obj lbl_8166D810, global
	.4byte 0x3C3C2052
	.4byte 0x564C5F53
	.4byte 0x444B202D
	.4byte 0x204E5743
	.4byte 0x32342009
	.4byte 0x72656C65
	.4byte 0x61736520
	.4byte 0x6275696C
	.4byte 0x643A2044
	.4byte 0x65632031
	.4byte 0x32203230
	.4byte 0x30382030
	.4byte 0x333A3036
	.4byte 0x3A303620
	.4byte 0x28307834
	.4byte 0x3139395F
	.4byte 0x36303833
	.4byte 0x3129203E
	.4byte 0x3E000000
.endobj lbl_8166D810

# .data:0x4C | 0x8166D85C | size: 0xC4
.obj jumptable_8166D85C, local
	.rel NWC24OpenLibInternal, .L_814A01F8
	.rel NWC24OpenLibInternal, .L_814A0204
	.rel NWC24OpenLibInternal, .L_814A0204
	.rel NWC24OpenLibInternal, .L_814A01F8
	.rel NWC24OpenLibInternal, .L_814A0204
	.rel NWC24OpenLibInternal, .L_814A0204
	.rel NWC24OpenLibInternal, .L_814A01F8
	.rel NWC24OpenLibInternal, .L_814A01F8
	.rel NWC24OpenLibInternal, .L_814A0204
	.rel NWC24OpenLibInternal, .L_814A0204
	.rel NWC24OpenLibInternal, .L_814A0204
	.rel NWC24OpenLibInternal, .L_814A01F8
	.rel NWC24OpenLibInternal, .L_814A0204
	.rel NWC24OpenLibInternal, .L_814A0204
	.rel NWC24OpenLibInternal, .L_814A0204
	.rel NWC24OpenLibInternal, .L_814A0204
	.rel NWC24OpenLibInternal, .L_814A0204
	.rel NWC24OpenLibInternal, .L_814A0204
	.rel NWC24OpenLibInternal, .L_814A0204
	.rel NWC24OpenLibInternal, .L_814A0204
	.rel NWC24OpenLibInternal, .L_814A01F8
	.rel NWC24OpenLibInternal, .L_814A0204
	.rel NWC24OpenLibInternal, .L_814A0204
	.rel NWC24OpenLibInternal, .L_814A01F8
	.rel NWC24OpenLibInternal, .L_814A0204
	.rel NWC24OpenLibInternal, .L_814A0204
	.rel NWC24OpenLibInternal, .L_814A0204
	.rel NWC24OpenLibInternal, .L_814A01F8
	.rel NWC24OpenLibInternal, .L_814A01F8
	.rel NWC24OpenLibInternal, .L_814A01F8
	.rel NWC24OpenLibInternal, .L_814A01F8
	.rel NWC24OpenLibInternal, .L_814A01F8
	.rel NWC24OpenLibInternal, .L_814A01F8
	.rel NWC24OpenLibInternal, .L_814A01F8
	.rel NWC24OpenLibInternal, .L_814A0204
	.rel NWC24OpenLibInternal, .L_814A01F8
	.rel NWC24OpenLibInternal, .L_814A0204
	.rel NWC24OpenLibInternal, .L_814A0204
	.rel NWC24OpenLibInternal, .L_814A0204
	.rel NWC24OpenLibInternal, .L_814A0204
	.rel NWC24OpenLibInternal, .L_814A0204
	.rel NWC24OpenLibInternal, .L_814A0204
	.rel NWC24OpenLibInternal, .L_814A0204
	.rel NWC24OpenLibInternal, .L_814A0204
	.rel NWC24OpenLibInternal, .L_814A0204
	.rel NWC24OpenLibInternal, .L_814A0204
	.rel NWC24OpenLibInternal, .L_814A0204
	.rel NWC24OpenLibInternal, .L_814A0204
	.rel NWC24OpenLibInternal, .L_814A01F8
.endobj jumptable_8166D85C

# 0x81697B60..0x81697B68 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697B60 | size: 0x4
.obj __NWC24Version, global
	.4byte lbl_8166D810
.endobj __NWC24Version

# .sdata:0x4 | 0x81697B64 | size: 0x4
.obj gap_11_81697B64_sdata, global
.hidden gap_11_81697B64_sdata
	.4byte 0x00000000
.endobj gap_11_81697B64_sdata

# 0x81698DE0..0x81698DF8 | size: 0x18
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698DE0 | size: 0x4
.obj NWC24WorkP_81698DE0, global
	.skip 0x4
.endobj NWC24WorkP_81698DE0

# .sbss:0x4 | 0x81698DE4 | size: 0x4
.obj Opened, local
	.skip 0x4
.endobj Opened

# .sbss:0x8 | 0x81698DE8 | size: 0x4
.obj YouGotMail, local
	.skip 0x4
.endobj YouGotMail

# .sbss:0xC | 0x81698DEC | size: 0x4
.obj GlobalErrorCode, local
	.skip 0x4
.endobj GlobalErrorCode

# .sbss:0x10 | 0x81698DF0 | size: 0x4
.obj Registered, local
	.skip 0x4
.endobj Registered

# .sbss:0x14 | 0x81698DF4 | size: 0x4
.obj lastTick$2045, local
	.skip 0x4
.endobj lastTick$2045
