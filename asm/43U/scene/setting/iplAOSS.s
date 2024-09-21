.include "macros.inc"
.file "iplAOSS.cpp"

# 0x810BD4A8..0x810BDDD0 | size: 0x928
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810BD4A8 | size: 0x160
.obj AOSS_810BD4A8, global
	.skip 0x160
.endobj AOSS_810BD4A8

# .bss:0x160 | 0x810BD608 | size: 0x7C8
.obj AOSS_810BD608, global
	.skip 0x7C8
.endobj AOSS_810BD608

# 0x813FD170..0x813FDA04 | size: 0x894
.text
.balign 4

# .text:0x0 | 0x813FD170 | size: 0xC
.fn AOSSi_Cancel, global
/* 813FD170 | 38 00 00 01 */	li r0, 0x1
/* 813FD174 | 90 0D AB F8 */	stw r0, lbl_81698C38@sda21(r0)
/* 813FD178 | 4E 80 00 20 */	blr
.endfn AOSSi_Cancel

# .text:0xC | 0x813FD17C | size: 0x10
.fn AOSS_813FD17C, global
/* 813FD17C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813FD180 | 38 80 00 00 */	li r4, 0x0
/* 813FD184 | 38 A0 00 00 */	li r5, 0x0
/* 813FD188 | 48 13 3E F8 */	b OSSendMessage
.endfn AOSS_813FD17C

# .text:0x1C | 0x813FD18C | size: 0x88
.fn AOSS_813FD18C, global
/* 813FD18C | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 813FD190 | 7C 08 02 A6 */	mflr r0
/* 813FD194 | 38 A0 00 01 */	li r5, 0x1
/* 813FD198 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 813FD19C | 38 81 00 0C */	addi r4, r1, 0xc
/* 813FD1A0 | 93 E1 00 6C */	stw r31, 0x6c(r1)
/* 813FD1A4 | 7C 7F 1B 78 */	mr r31, r3
/* 813FD1A8 | 38 61 00 10 */	addi r3, r1, 0x10
/* 813FD1AC | 48 13 3E 75 */	bl OSInitMessageQueue
/* 813FD1B0 | 38 61 00 30 */	addi r3, r1, 0x30
/* 813FD1B4 | 48 12 F7 31 */	bl OSCreateAlarm
/* 813FD1B8 | 38 61 00 30 */	addi r3, r1, 0x30
/* 813FD1BC | 38 81 00 10 */	addi r4, r1, 0x10
/* 813FD1C0 | 48 12 FE 0D */	bl fn_8152CFCC
/* 813FD1C4 | 3C 60 80 00 */	lis r3, 0x8000
/* 813FD1C8 | 3C E0 81 40 */	lis r7, AOSS_813FD17C@ha
/* 813FD1CC | 80 83 00 F8 */	lwz r4, 0xf8(r3)
/* 813FD1D0 | 38 00 03 E8 */	li r0, 0x3e8
/* 813FD1D4 | 38 61 00 30 */	addi r3, r1, 0x30
/* 813FD1D8 | 38 E7 D1 7C */	addi r7, r7, AOSS_813FD17C@l
/* 813FD1DC | 54 84 F0 BE */	srwi r4, r4, 2
/* 813FD1E0 | 38 A0 00 00 */	li r5, 0x0
/* 813FD1E4 | 7C 04 03 96 */	divwu r0, r4, r0
/* 813FD1E8 | 7C DF 01 D6 */	mullw r6, r31, r0
/* 813FD1EC | 48 12 F9 59 */	bl OSSetAlarm
/* 813FD1F0 | 38 61 00 10 */	addi r3, r1, 0x10
/* 813FD1F4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813FD1F8 | 38 A0 00 01 */	li r5, 0x1
/* 813FD1FC | 48 13 3F 4D */	bl OSReceiveMessage
/* 813FD200 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 813FD204 | 83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 813FD208 | 7C 08 03 A6 */	mtlr r0
/* 813FD20C | 38 21 00 70 */	addi r1, r1, 0x70
/* 813FD210 | 4E 80 00 20 */	blr
.endfn AOSS_813FD18C

# .text:0xA4 | 0x813FD214 | size: 0x24
.fn AOSSi_Alloc, global
/* 813FD214 | 81 8D AC 10 */	lwz r12, lbl_81698C50@sda21(r0)
/* 813FD218 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 813FD21C | 41 82 00 14 */	beq .L_813FD230
/* 813FD220 | 7C 64 1B 78 */	mr r4, r3
/* 813FD224 | 38 60 00 00 */	li r3, 0x0
/* 813FD228 | 7D 89 03 A6 */	mtctr r12
/* 813FD22C | 4E 80 04 20 */	bctr
.L_813FD230:
/* 813FD230 | 38 60 00 00 */	li r3, 0x0
/* 813FD234 | 4E 80 00 20 */	blr
.endfn AOSSi_Alloc

# .text:0xC8 | 0x813FD238 | size: 0x24
.fn AOSSi_Free, global
/* 813FD238 | 81 8D AC 14 */	lwz r12, lbl_81698C54@sda21(r0)
/* 813FD23C | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 813FD240 | 4D 82 00 20 */	beqlr
/* 813FD244 | 7C 64 1B 78 */	mr r4, r3
/* 813FD248 | 38 60 00 00 */	li r3, 0x0
/* 813FD24C | 38 A0 00 00 */	li r5, 0x0
/* 813FD250 | 7D 89 03 A6 */	mtctr r12
/* 813FD254 | 4E 80 04 20 */	bctr
/* 813FD258 | 4E 80 00 20 */	blr
.endfn AOSSi_Free

# .text:0xEC | 0x813FD25C | size: 0x2C
.fn AOSS_813FD25C, global
/* 813FD25C | 38 00 00 04 */	li r0, 0x4
/* 813FD260 | 38 A0 00 00 */	li r5, 0x0
/* 813FD264 | 7C 09 03 A6 */	mtctr r0
.L_813FD268:
/* 813FD268 | 20 05 00 03 */	subfic r0, r5, 0x3
/* 813FD26C | 38 A5 00 01 */	addi r5, r5, 0x1
/* 813FD270 | 54 00 18 38 */	slwi r0, r0, 3
/* 813FD274 | 7C 80 04 30 */	srw r0, r4, r0
/* 813FD278 | 98 03 00 00 */	stb r0, 0x0(r3)
/* 813FD27C | 38 63 00 01 */	addi r3, r3, 0x1
/* 813FD280 | 42 00 FF E8 */	bdnz .L_813FD268
/* 813FD284 | 4E 80 00 20 */	blr
.endfn AOSS_813FD25C

# .text:0x118 | 0x813FD288 | size: 0x7C
.fn AOSSi_SetNCDIPAddr, global
/* 813FD288 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813FD28C | 7C 08 02 A6 */	mflr r0
/* 813FD290 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813FD294 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813FD298 | 48 1F C2 2D */	bl _savegpr_28
/* 813FD29C | 7C 9C 23 78 */	mr r28, r4
/* 813FD2A0 | 7C 64 1B 78 */	mr r4, r3
/* 813FD2A4 | 7C BD 2B 78 */	mr r29, r5
/* 813FD2A8 | 7C DE 33 78 */	mr r30, r6
/* 813FD2AC | 7C FF 3B 78 */	mr r31, r7
/* 813FD2B0 | 38 6D AB FC */	li r3, lbl_81698C3C@sda21
/* 813FD2B4 | 4B FF FF A9 */	bl AOSS_813FD25C
/* 813FD2B8 | 7F 84 E3 78 */	mr r4, r28
/* 813FD2BC | 38 6D AC 00 */	li r3, lbl_81698C40@sda21
/* 813FD2C0 | 4B FF FF 9D */	bl AOSS_813FD25C
/* 813FD2C4 | 7F A4 EB 78 */	mr r4, r29
/* 813FD2C8 | 38 6D AC 04 */	li r3, lbl_81698C44@sda21
/* 813FD2CC | 4B FF FF 91 */	bl AOSS_813FD25C
/* 813FD2D0 | 7F C4 F3 78 */	mr r4, r30
/* 813FD2D4 | 38 6D AC 08 */	li r3, lbl_81698C48@sda21
/* 813FD2D8 | 4B FF FF 85 */	bl AOSS_813FD25C
/* 813FD2DC | 7F E4 FB 78 */	mr r4, r31
/* 813FD2E0 | 38 6D AC 0C */	li r3, lbl_81698C4C@sda21
/* 813FD2E4 | 4B FF FF 79 */	bl AOSS_813FD25C
/* 813FD2E8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813FD2EC | 38 60 00 00 */	li r3, 0x0
/* 813FD2F0 | 48 1F C2 21 */	bl _restgpr_28
/* 813FD2F4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813FD2F8 | 7C 08 03 A6 */	mtlr r0
/* 813FD2FC | 38 21 00 20 */	addi r1, r1, 0x20
/* 813FD300 | 4E 80 00 20 */	blr
.endfn AOSSi_SetNCDIPAddr

# .text:0x194 | 0x813FD304 | size: 0x68
.fn AOSSi_InitLocal, global
/* 813FD304 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FD308 | 7C 08 02 A6 */	mflr r0
/* 813FD30C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FD310 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FD314 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813FD318 | 7C 9F 23 78 */	mr r31, r4
/* 813FD31C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813FD320 | 7C 7E 1B 78 */	mr r30, r3
/* 813FD324 | 41 82 00 0C */	beq .L_813FD330
/* 813FD328 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813FD32C | 40 82 00 0C */	bne .L_813FD338
.L_813FD330:
/* 813FD330 | 38 60 FF FF */	li r3, -0x1
/* 813FD334 | 48 00 00 20 */	b .L_813FD354
.L_813FD338:
/* 813FD338 | 48 13 35 4D */	bl OSDisableInterrupts
/* 813FD33C | 38 00 00 00 */	li r0, 0x0
/* 813FD340 | 93 CD AC 10 */	stw r30, lbl_81698C50@sda21(r0)
/* 813FD344 | 93 ED AC 14 */	stw r31, lbl_81698C54@sda21(r0)
/* 813FD348 | 90 0D AB F8 */	stw r0, lbl_81698C38@sda21(r0)
/* 813FD34C | 48 13 35 61 */	bl OSRestoreInterrupts
/* 813FD350 | 38 60 00 00 */	li r3, 0x0
.L_813FD354:
/* 813FD354 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FD358 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FD35C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813FD360 | 7C 08 03 A6 */	mtlr r0
/* 813FD364 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FD368 | 4E 80 00 20 */	blr
.endfn AOSSi_InitLocal

# .text:0x1FC | 0x813FD36C | size: 0x34
.fn AOSSi_EndLocal, global
/* 813FD36C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FD370 | 7C 08 02 A6 */	mflr r0
/* 813FD374 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FD378 | 48 13 35 0D */	bl OSDisableInterrupts
/* 813FD37C | 38 00 00 00 */	li r0, 0x0
/* 813FD380 | 90 0D AC 10 */	stw r0, lbl_81698C50@sda21(r0)
/* 813FD384 | 90 0D AC 14 */	stw r0, lbl_81698C54@sda21(r0)
/* 813FD388 | 48 13 35 25 */	bl OSRestoreInterrupts
/* 813FD38C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FD390 | 38 60 00 00 */	li r3, 0x0
/* 813FD394 | 7C 08 03 A6 */	mtlr r0
/* 813FD398 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FD39C | 4E 80 00 20 */	blr
.endfn AOSSi_EndLocal

# .text:0x230 | 0x813FD3A0 | size: 0x38C
.fn AOSSi_WLANGetBSSList, global
/* 813FD3A0 | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 813FD3A4 | 7C 2C 0B 78 */	mr r12, r1
/* 813FD3A8 | 21 6B FE 80 */	subfic r11, r11, -0x180
/* 813FD3AC | 7C 21 59 6E */	stwux r1, r1, r11
/* 813FD3B0 | 7C 08 02 A6 */	mflr r0
/* 813FD3B4 | 7D 8B 63 78 */	mr r11, r12
/* 813FD3B8 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 813FD3BC | 48 1F C0 DD */	bl _savegpr_17
/* 813FD3C0 | 80 0D AC 10 */	lwz r0, lbl_81698C50@sda21(r0)
/* 813FD3C4 | 7C 73 1B 78 */	mr r19, r3
/* 813FD3C8 | 3A 20 FF FF */	li r17, -0x1
/* 813FD3CC | 3A 40 00 00 */	li r18, 0x0
/* 813FD3D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813FD3D4 | 3A E0 00 00 */	li r23, 0x0
/* 813FD3D8 | 3A A0 00 00 */	li r21, 0x0
/* 813FD3DC | 3A 80 00 00 */	li r20, 0x0
/* 813FD3E0 | 41 82 00 10 */	beq .L_813FD3F0
/* 813FD3E4 | 80 0D AC 14 */	lwz r0, lbl_81698C54@sda21(r0)
/* 813FD3E8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813FD3EC | 40 82 00 0C */	bne .L_813FD3F8
.L_813FD3F0:
/* 813FD3F0 | 38 60 FF FF */	li r3, -0x1
/* 813FD3F4 | 48 00 03 1C */	b .L_813FD710
.L_813FD3F8:
/* 813FD3F8 | 48 09 59 35 */	bl NCDLockWirelessDriver
/* 813FD3FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FD400 | 7C 79 1B 78 */	mr r25, r3
/* 813FD404 | 41 81 00 0C */	bgt .L_813FD410
/* 813FD408 | 38 60 FF FF */	li r3, -0x1
/* 813FD40C | 48 00 03 04 */	b .L_813FD710
.L_813FD410:
/* 813FD410 | 38 60 00 03 */	li r3, 0x3
/* 813FD414 | 48 0D C6 75 */	bl fn_814D9A88
/* 813FD418 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FD41C | 41 82 00 1C */	beq .L_813FD438
/* 813FD420 | 2C 12 00 0A */	cmpwi r18, 0xa
/* 813FD424 | 41 81 02 D8 */	bgt .L_813FD6FC
/* 813FD428 | 38 60 00 0A */	li r3, 0xa
/* 813FD42C | 3A 52 00 01 */	addi r18, r18, 0x1
/* 813FD430 | 4B FF FD 5D */	bl AOSS_813FD18C
/* 813FD434 | 4B FF FF DC */	b .L_813FD410
.L_813FD438:
/* 813FD438 | 38 61 00 A0 */	addi r3, r1, 0xa0
/* 813FD43C | 48 0D C5 79 */	bl fn_814D99B4
/* 813FD440 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FD444 | 40 82 00 14 */	bne .L_813FD458
/* 813FD448 | 38 61 00 20 */	addi r3, r1, 0x20
/* 813FD44C | 38 81 00 A0 */	addi r4, r1, 0xa0
/* 813FD450 | 38 A0 00 06 */	li r5, 0x6
/* 813FD454 | 4B F3 2D DD */	bl memcpy
.L_813FD458:
/* 813FD458 | 38 60 32 00 */	li r3, 0x3200
/* 813FD45C | 4B FF FD B9 */	bl AOSSi_Alloc
/* 813FD460 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FD464 | 7C 78 1B 78 */	mr r24, r3
/* 813FD468 | 41 82 02 68 */	beq .L_813FD6D0
/* 813FD46C | 38 80 00 00 */	li r4, 0x0
/* 813FD470 | 38 A0 32 00 */	li r5, 0x3200
/* 813FD474 | 4B F3 2E C1 */	bl memset
/* 813FD478 | A0 A1 00 A6 */	lhz r5, 0xa6(r1)
/* 813FD47C | 38 00 00 28 */	li r0, 0x28
/* 813FD480 | B0 01 00 42 */	sth r0, 0x42(r1)
/* 813FD484 | 38 61 00 44 */	addi r3, r1, 0x44
/* 813FD488 | 38 80 00 FF */	li r4, 0xff
/* 813FD48C | B0 A1 00 40 */	sth r5, 0x40(r1)
/* 813FD490 | 38 A0 00 06 */	li r5, 0x6
/* 813FD494 | 4B F3 2E A1 */	bl memset
/* 813FD498 | 38 00 00 00 */	li r0, 0x0
/* 813FD49C | 38 61 00 4E */	addi r3, r1, 0x4e
/* 813FD4A0 | B0 01 00 4A */	sth r0, 0x4a(r1)
/* 813FD4A4 | 38 80 00 00 */	li r4, 0x0
/* 813FD4A8 | 38 A0 00 20 */	li r5, 0x20
/* 813FD4AC | B0 01 00 4C */	sth r0, 0x4c(r1)
/* 813FD4B0 | 4B F3 2E 85 */	bl memset
/* 813FD4B4 | 38 61 00 6E */	addi r3, r1, 0x6e
/* 813FD4B8 | 38 80 00 FF */	li r4, 0xff
/* 813FD4BC | 38 A0 00 20 */	li r5, 0x20
/* 813FD4C0 | 4B F3 2E 75 */	bl memset
.L_813FD4C4:
/* 813FD4C4 | 7F 04 C3 78 */	mr r4, r24
/* 813FD4C8 | 38 61 00 40 */	addi r3, r1, 0x40
/* 813FD4CC | 38 A0 32 00 */	li r5, 0x3200
/* 813FD4D0 | 48 0D C4 01 */	bl fn_814D98D0
/* 813FD4D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FD4D8 | 41 82 00 10 */	beq .L_813FD4E8
/* 813FD4DC | 3C 03 80 00 */	addis r0, r3, 0x8000
/* 813FD4E0 | 28 00 80 04 */	cmplwi r0, 0x8004
/* 813FD4E4 | 40 82 01 AC */	bne .L_813FD690
.L_813FD4E8:
/* 813FD4E8 | A2 D8 00 00 */	lhz r22, 0x0(r24)
/* 813FD4EC | 2C 16 00 00 */	cmpwi r22, 0x0
/* 813FD4F0 | 41 82 01 48 */	beq .L_813FD638
/* 813FD4F4 | 38 16 FF FF */	subi r0, r22, 0x1
/* 813FD4F8 | 1C 60 00 54 */	mulli r3, r0, 0x54
/* 813FD4FC | 38 63 00 58 */	addi r3, r3, 0x58
/* 813FD500 | 4B FF FD 15 */	bl AOSSi_Alloc
/* 813FD504 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FD508 | 7C 7B 1B 78 */	mr r27, r3
/* 813FD50C | 40 82 00 0C */	bne .L_813FD518
/* 813FD510 | 3A 20 FF FF */	li r17, -0x1
/* 813FD514 | 48 00 01 7C */	b .L_813FD690
.L_813FD518:
/* 813FD518 | 3F 80 81 65 */	lis r28, lbl_81657B90@ha
/* 813FD51C | 92 C3 00 00 */	stw r22, 0x0(r3)
/* 813FD520 | 3A F8 00 02 */	addi r23, r24, 0x2
/* 813FD524 | 3B 40 00 00 */	li r26, 0x0
/* 813FD528 | 3B 9C 7B 90 */	addi r28, r28, lbl_81657B90@l
/* 813FD52C | 3A 20 00 00 */	li r17, 0x0
/* 813FD530 | 3B E0 00 00 */	li r31, 0x0
/* 813FD534 | 3B C0 00 02 */	li r30, 0x2
/* 813FD538 | 3B A0 00 01 */	li r29, 0x1
/* 813FD53C | 3A 40 00 0C */	li r18, 0xc
/* 813FD540 | 48 00 00 E4 */	b .L_813FD624
.L_813FD544:
/* 813FD544 | A0 17 00 0A */	lhz r0, 0xa(r23)
/* 813FD548 | 7C BB 8A 14 */	add r5, r27, r17
/* 813FD54C | 38 65 00 08 */	addi r3, r5, 0x8
/* 813FD550 | 38 97 00 0C */	addi r4, r23, 0xc
/* 813FD554 | 90 05 00 04 */	stw r0, 0x4(r5)
/* 813FD558 | 38 A0 00 20 */	li r5, 0x20
/* 813FD55C | 4B F3 2C D5 */	bl memcpy
/* 813FD560 | A0 17 00 36 */	lhz r0, 0x36(r23)
/* 813FD564 | 7C BB 8A 14 */	add r5, r27, r17
/* 813FD568 | 38 65 00 34 */	addi r3, r5, 0x34
/* 813FD56C | 38 97 00 04 */	addi r4, r23, 0x4
/* 813FD570 | 90 05 00 28 */	stw r0, 0x28(r5)
/* 813FD574 | 38 A0 00 06 */	li r5, 0x6
/* 813FD578 | 4B F3 2C B9 */	bl memcpy
/* 813FD57C | 7C FB 8A 14 */	add r7, r27, r17
/* 813FD580 | 38 60 00 00 */	li r3, 0x0
/* 813FD584 | 38 80 00 00 */	li r4, 0x0
/* 813FD588 | 7E 49 03 A6 */	mtctr r18
.L_813FD58C:
/* 813FD58C | A0 B7 00 30 */	lhz r5, 0x30(r23)
/* 813FD590 | 7C 1C 22 2E */	lhzx r0, r28, r4
/* 813FD594 | 7C A0 00 39 */	and. r0, r5, r0
/* 813FD598 | 41 82 00 34 */	beq .L_813FD5CC
/* 813FD59C | 7C BC 22 14 */	add r5, r28, r4
/* 813FD5A0 | 7C C7 1A 14 */	add r6, r7, r3
/* 813FD5A4 | 88 05 00 02 */	lbz r0, 0x2(r5)
/* 813FD5A8 | 98 06 00 40 */	stb r0, 0x40(r6)
/* 813FD5AC | A0 B7 00 2E */	lhz r5, 0x2e(r23)
/* 813FD5B0 | 7C 1C 22 2E */	lhzx r0, r28, r4
/* 813FD5B4 | 7C A0 00 39 */	and. r0, r5, r0
/* 813FD5B8 | 41 82 00 10 */	beq .L_813FD5C8
/* 813FD5BC | 88 06 00 40 */	lbz r0, 0x40(r6)
/* 813FD5C0 | 60 00 00 80 */	ori r0, r0, 0x80
/* 813FD5C4 | 98 06 00 40 */	stb r0, 0x40(r6)
.L_813FD5C8:
/* 813FD5C8 | 38 63 00 01 */	addi r3, r3, 0x1
.L_813FD5CC:
/* 813FD5CC | 38 84 00 04 */	addi r4, r4, 0x4
/* 813FD5D0 | 42 00 FF BC */	bdnz .L_813FD58C
/* 813FD5D4 | 7C 9B 8A 14 */	add r4, r27, r17
/* 813FD5D8 | 90 64 00 3C */	stw r3, 0x3c(r4)
/* 813FD5DC | A0 17 00 32 */	lhz r0, 0x32(r23)
/* 813FD5E0 | 90 04 00 50 */	stw r0, 0x50(r4)
/* 813FD5E4 | A0 17 00 2C */	lhz r0, 0x2c(r23)
/* 813FD5E8 | 54 00 07 BE */	clrlwi r0, r0, 30
/* 813FD5EC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813FD5F0 | 40 82 00 0C */	bne .L_813FD5FC
/* 813FD5F4 | 93 A4 00 54 */	stw r29, 0x54(r4)
/* 813FD5F8 | 48 00 00 18 */	b .L_813FD610
.L_813FD5FC:
/* 813FD5FC | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813FD600 | 40 82 00 0C */	bne .L_813FD60C
/* 813FD604 | 93 C4 00 54 */	stw r30, 0x54(r4)
/* 813FD608 | 48 00 00 08 */	b .L_813FD610
.L_813FD60C:
/* 813FD60C | 93 E4 00 54 */	stw r31, 0x54(r4)
.L_813FD610:
/* 813FD610 | A0 17 00 00 */	lhz r0, 0x0(r23)
/* 813FD614 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 813FD618 | 3A 31 00 54 */	addi r17, r17, 0x54
/* 813FD61C | 54 00 08 3C */	slwi r0, r0, 1
/* 813FD620 | 7E F7 02 14 */	add r23, r23, r0
.L_813FD624:
/* 813FD624 | 7C 1A B0 00 */	cmpw r26, r22
/* 813FD628 | 41 80 FF 1C */	blt .L_813FD544
/* 813FD62C | 93 73 00 00 */	stw r27, 0x0(r19)
/* 813FD630 | 3A 20 00 00 */	li r17, 0x0
/* 813FD634 | 48 00 00 5C */	b .L_813FD690
.L_813FD638:
/* 813FD638 | 80 0D AB F8 */	lwz r0, lbl_81698C38@sda21(r0)
/* 813FD63C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813FD640 | 40 82 00 0C */	bne .L_813FD64C
/* 813FD644 | 3A 20 FF FF */	li r17, -0x1
/* 813FD648 | 48 00 00 48 */	b .L_813FD690
.L_813FD64C:
/* 813FD64C | 3A F7 00 01 */	addi r23, r23, 0x1
/* 813FD650 | 2C 17 00 0A */	cmpwi r23, 0xa
/* 813FD654 | 40 81 00 30 */	ble .L_813FD684
/* 813FD658 | 38 60 00 58 */	li r3, 0x58
/* 813FD65C | 4B FF FB B9 */	bl AOSSi_Alloc
/* 813FD660 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FD664 | 40 82 00 0C */	bne .L_813FD670
/* 813FD668 | 3A 20 FF FF */	li r17, -0x1
/* 813FD66C | 48 00 00 24 */	b .L_813FD690
.L_813FD670:
/* 813FD670 | 38 00 00 00 */	li r0, 0x0
/* 813FD674 | 3A 20 00 00 */	li r17, 0x0
/* 813FD678 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 813FD67C | 90 73 00 00 */	stw r3, 0x0(r19)
/* 813FD680 | 48 00 00 10 */	b .L_813FD690
.L_813FD684:
/* 813FD684 | 38 60 00 64 */	li r3, 0x64
/* 813FD688 | 4B FF FB 05 */	bl AOSS_813FD18C
/* 813FD68C | 4B FF FE 38 */	b .L_813FD4C4
.L_813FD690:
/* 813FD690 | 81 8D AC 14 */	lwz r12, lbl_81698C54@sda21(r0)
/* 813FD694 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 813FD698 | 41 82 00 38 */	beq .L_813FD6D0
/* 813FD69C | 7F 04 C3 78 */	mr r4, r24
/* 813FD6A0 | 38 60 00 00 */	li r3, 0x0
/* 813FD6A4 | 38 A0 00 00 */	li r5, 0x0
/* 813FD6A8 | 7D 89 03 A6 */	mtctr r12
/* 813FD6AC | 4E 80 04 21 */	bctrl
/* 813FD6B0 | 48 00 00 20 */	b .L_813FD6D0
.L_813FD6B4:
/* 813FD6B4 | 2C 15 00 0A */	cmpwi r21, 0xa
/* 813FD6B8 | 40 81 00 0C */	ble .L_813FD6C4
/* 813FD6BC | 3A 20 FF FF */	li r17, -0x1
/* 813FD6C0 | 48 00 00 3C */	b .L_813FD6FC
.L_813FD6C4:
/* 813FD6C4 | 38 60 00 0A */	li r3, 0xa
/* 813FD6C8 | 3A B5 00 01 */	addi r21, r21, 0x1
/* 813FD6CC | 4B FF FA C1 */	bl AOSS_813FD18C
.L_813FD6D0:
/* 813FD6D0 | 48 0D C4 9D */	bl fn_814D9B6C
/* 813FD6D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FD6D8 | 40 82 FF DC */	bne .L_813FD6B4
/* 813FD6DC | 48 00 00 20 */	b .L_813FD6FC
.L_813FD6E0:
/* 813FD6E0 | 2C 14 00 0A */	cmpwi r20, 0xa
/* 813FD6E4 | 40 81 00 0C */	ble .L_813FD6F0
/* 813FD6E8 | 3A 20 FF FF */	li r17, -0x1
/* 813FD6EC | 48 00 00 20 */	b .L_813FD70C
.L_813FD6F0:
/* 813FD6F0 | 38 60 00 0A */	li r3, 0xa
/* 813FD6F4 | 3A 94 00 01 */	addi r20, r20, 0x1
/* 813FD6F8 | 4B FF FA 95 */	bl AOSS_813FD18C
.L_813FD6FC:
/* 813FD6FC | 7F 23 CB 78 */	mr r3, r25
/* 813FD700 | 48 09 57 31 */	bl NCDUnlockWirelessDriver
/* 813FD704 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FD708 | 40 82 FF D8 */	bne .L_813FD6E0
.L_813FD70C:
/* 813FD70C | 7E 23 8B 78 */	mr r3, r17
.L_813FD710:
/* 813FD710 | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 813FD714 | 7D 4B 53 78 */	mr r11, r10
/* 813FD718 | 48 1F BD CD */	bl _restgpr_17
/* 813FD71C | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 813FD720 | 7C 08 03 A6 */	mtlr r0
/* 813FD724 | 7D 41 53 78 */	mr r1, r10
/* 813FD728 | 4E 80 00 20 */	blr
.endfn AOSSi_WLANGetBSSList

# .text:0x5BC | 0x813FD72C | size: 0x26C
.fn AOSSi_WLANConnect, global
/* 813FD72C | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 813FD730 | 7C 2C 0B 78 */	mr r12, r1
/* 813FD734 | 21 6B FF 20 */	subfic r11, r11, -0xe0
/* 813FD738 | 7C 21 59 6E */	stwux r1, r1, r11
/* 813FD73C | 7C 08 02 A6 */	mflr r0
/* 813FD740 | 7D 8B 63 78 */	mr r11, r12
/* 813FD744 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 813FD748 | 48 1F BD 79 */	bl _savegpr_27
/* 813FD74C | 3F C0 81 0C */	lis r30, AOSS_810BD4A8@ha
/* 813FD750 | 7C 9D 23 78 */	mr r29, r4
/* 813FD754 | 3B DE D4 A8 */	addi r30, r30, AOSS_810BD4A8@l
/* 813FD758 | 7C 7B 1B 78 */	mr r27, r3
/* 813FD75C | 7F C3 F3 78 */	mr r3, r30
/* 813FD760 | 3B E0 00 00 */	li r31, 0x0
/* 813FD764 | 38 80 00 00 */	li r4, 0x0
/* 813FD768 | 38 A0 01 5E */	li r5, 0x15e
/* 813FD76C | 4B F3 2B C9 */	bl memset
/* 813FD770 | 38 60 00 00 */	li r3, 0x0
/* 813FD774 | 38 00 00 01 */	li r0, 0x1
/* 813FD778 | 98 1E 00 00 */	stb r0, 0x0(r30)
/* 813FD77C | B0 7E 00 02 */	sth r3, 0x2(r30)
/* 813FD780 | 98 7E 00 04 */	stb r3, 0x4(r30)
/* 813FD784 | 80 1B 00 28 */	lwz r0, 0x28(r27)
/* 813FD788 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813FD78C | 40 82 00 08 */	bne .L_813FD794
/* 813FD790 | B0 7E 00 2A */	sth r3, 0x2a(r30)
.L_813FD794:
/* 813FD794 | 80 1B 00 28 */	lwz r0, 0x28(r27)
/* 813FD798 | 28 00 00 05 */	cmplwi r0, 0x5
/* 813FD79C | 40 82 00 28 */	bne .L_813FD7C4
/* 813FD7A0 | 38 60 00 01 */	li r3, 0x1
/* 813FD7A4 | 38 00 00 00 */	li r0, 0x0
/* 813FD7A8 | B0 7E 00 2A */	sth r3, 0x2a(r30)
/* 813FD7AC | 38 7E 00 32 */	addi r3, r30, 0x32
/* 813FD7B0 | 38 9B 00 2C */	addi r4, r27, 0x2c
/* 813FD7B4 | B0 1E 00 2E */	sth r0, 0x2e(r30)
/* 813FD7B8 | 80 BB 00 28 */	lwz r5, 0x28(r27)
/* 813FD7BC | 4B F3 2A 75 */	bl memcpy
/* 813FD7C0 | 48 00 00 48 */	b .L_813FD808
.L_813FD7C4:
/* 813FD7C4 | 28 00 00 0D */	cmplwi r0, 0xd
/* 813FD7C8 | 40 82 00 28 */	bne .L_813FD7F0
/* 813FD7CC | 38 60 00 02 */	li r3, 0x2
/* 813FD7D0 | 38 00 00 00 */	li r0, 0x0
/* 813FD7D4 | B0 7E 00 2A */	sth r3, 0x2a(r30)
/* 813FD7D8 | 38 7E 00 32 */	addi r3, r30, 0x32
/* 813FD7DC | 38 9B 00 2C */	addi r4, r27, 0x2c
/* 813FD7E0 | B0 1E 00 2E */	sth r0, 0x2e(r30)
/* 813FD7E4 | 80 BB 00 28 */	lwz r5, 0x28(r27)
/* 813FD7E8 | 4B F3 2A 49 */	bl memcpy
/* 813FD7EC | 48 00 00 1C */	b .L_813FD808
.L_813FD7F0:
/* 813FD7F0 | 28 00 00 10 */	cmplwi r0, 0x10
/* 813FD7F4 | 40 82 00 0C */	bne .L_813FD800
/* 813FD7F8 | 38 60 FF FF */	li r3, -0x1
/* 813FD7FC | 48 00 01 80 */	b .L_813FD97C
.L_813FD800:
/* 813FD800 | 38 60 FF FF */	li r3, -0x1
/* 813FD804 | 48 00 01 78 */	b .L_813FD97C
.L_813FD808:
/* 813FD808 | 80 1B 00 00 */	lwz r0, 0x0(r27)
/* 813FD80C | 38 7E 00 06 */	addi r3, r30, 0x6
/* 813FD810 | 38 9B 00 04 */	addi r4, r27, 0x4
/* 813FD814 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 813FD818 | B0 1E 00 26 */	sth r0, 0x26(r30)
/* 813FD81C | 80 BB 00 00 */	lwz r5, 0x0(r27)
/* 813FD820 | 4B F3 2A 11 */	bl memcpy
/* 813FD824 | 3F 60 81 0C */	lis r27, AOSS_810BD608@ha
/* 813FD828 | 3B 80 00 00 */	li r28, 0x0
/* 813FD82C | 3B 7B D6 08 */	addi r27, r27, AOSS_810BD608@l
/* 813FD830 | 38 80 00 00 */	li r4, 0x0
/* 813FD834 | 38 A0 07 C4 */	li r5, 0x7c4
/* 813FD838 | 7F 63 DB 78 */	mr r3, r27
/* 813FD83C | 4B F3 2A F9 */	bl memset
/* 813FD840 | 38 00 00 00 */	li r0, 0x0
/* 813FD844 | 38 60 05 14 */	li r3, 0x514
/* 813FD848 | 38 E0 00 64 */	li r7, 0x64
/* 813FD84C | 38 C0 00 04 */	li r6, 0x4
/* 813FD850 | 90 7B 00 1C */	stw r3, 0x1c(r27)
/* 813FD854 | 38 7B 00 08 */	addi r3, r27, 0x8
/* 813FD858 | 38 8D AB FC */	li r4, lbl_81698C3C@sda21
/* 813FD85C | 38 A0 00 04 */	li r5, 0x4
/* 813FD860 | 90 FB 00 20 */	stw r7, 0x20(r27)
/* 813FD864 | 90 DB 00 24 */	stw r6, 0x24(r27)
/* 813FD868 | 90 1B 00 00 */	stw r0, 0x0(r27)
/* 813FD86C | 90 1B 00 04 */	stw r0, 0x4(r27)
/* 813FD870 | 4B F3 29 C1 */	bl memcpy
/* 813FD874 | 38 7B 00 0C */	addi r3, r27, 0xc
/* 813FD878 | 38 8D AC 00 */	li r4, lbl_81698C40@sda21
/* 813FD87C | 38 A0 00 04 */	li r5, 0x4
/* 813FD880 | 4B F3 29 B1 */	bl memcpy
/* 813FD884 | 38 7B 00 10 */	addi r3, r27, 0x10
/* 813FD888 | 38 8D AC 04 */	li r4, lbl_81698C44@sda21
/* 813FD88C | 38 A0 00 04 */	li r5, 0x4
/* 813FD890 | 4B F3 29 A1 */	bl memcpy
/* 813FD894 | 38 7B 00 14 */	addi r3, r27, 0x14
/* 813FD898 | 38 8D AC 08 */	li r4, lbl_81698C48@sda21
/* 813FD89C | 38 A0 00 04 */	li r5, 0x4
/* 813FD8A0 | 4B F3 29 91 */	bl memcpy
/* 813FD8A4 | 38 7B 00 18 */	addi r3, r27, 0x18
/* 813FD8A8 | 38 8D AC 0C */	li r4, lbl_81698C4C@sda21
/* 813FD8AC | 38 A0 00 04 */	li r5, 0x4
/* 813FD8B0 | 4B F3 29 81 */	bl memcpy
/* 813FD8B4 | 7F 63 DB 78 */	mr r3, r27
/* 813FD8B8 | 48 09 4E 01 */	bl NCDSetIpConfig
/* 813FD8BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FD8C0 | 41 82 00 08 */	beq .L_813FD8C8
/* 813FD8C4 | 3B 80 FF FF */	li r28, -0x1
.L_813FD8C8:
/* 813FD8C8 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 813FD8CC | 40 82 00 1C */	bne .L_813FD8E8
/* 813FD8D0 | 3C 60 81 0C */	lis r3, AOSS_810BD4A8@ha
/* 813FD8D4 | 38 63 D4 A8 */	addi r3, r3, AOSS_810BD4A8@l
/* 813FD8D8 | 48 09 4B 75 */	bl NCDSetIfConfig
/* 813FD8DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FD8E0 | 41 82 00 08 */	beq .L_813FD8E8
/* 813FD8E4 | 3B 80 FF FF */	li r28, -0x1
.L_813FD8E8:
/* 813FD8E8 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 813FD8EC | 40 82 00 44 */	bne .L_813FD930
/* 813FD8F0 | 48 00 00 34 */	b .L_813FD924
.L_813FD8F4:
/* 813FD8F4 | 80 0D AB F8 */	lwz r0, lbl_81698C38@sda21(r0)
/* 813FD8F8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813FD8FC | 40 82 00 0C */	bne .L_813FD908
/* 813FD900 | 3B 80 FF FF */	li r28, -0x1
/* 813FD904 | 48 00 00 2C */	b .L_813FD930
.L_813FD908:
/* 813FD908 | 2C 1F 02 58 */	cmpwi r31, 0x258
/* 813FD90C | 40 81 00 0C */	ble .L_813FD918
/* 813FD910 | 3B 80 FF FF */	li r28, -0x1
/* 813FD914 | 48 00 00 1C */	b .L_813FD930
.L_813FD918:
/* 813FD918 | 38 60 00 0A */	li r3, 0xa
/* 813FD91C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 813FD920 | 4B FF F8 6D */	bl AOSS_813FD18C
.L_813FD924:
/* 813FD924 | 48 09 52 9D */	bl NCDIsInterfaceDecided
/* 813FD928 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FD92C | 41 82 FF C8 */	beq .L_813FD8F4
.L_813FD930:
/* 813FD930 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 813FD934 | 40 82 00 3C */	bne .L_813FD970
/* 813FD938 | 38 00 00 01 */	li r0, 0x1
/* 813FD93C | 38 61 00 20 */	addi r3, r1, 0x20
/* 813FD940 | 90 1D 00 00 */	stw r0, 0x0(r29)
/* 813FD944 | 48 0D C0 71 */	bl fn_814D99B4
/* 813FD948 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FD94C | 40 82 00 0C */	bne .L_813FD958
/* 813FD950 | 88 01 00 2E */	lbz r0, 0x2e(r1)
/* 813FD954 | 90 1D 00 28 */	stw r0, 0x28(r29)
.L_813FD958:
/* 813FD958 | A0 BE 00 26 */	lhz r5, 0x26(r30)
/* 813FD95C | 38 7D 00 08 */	addi r3, r29, 0x8
/* 813FD960 | 38 9E 00 06 */	addi r4, r30, 0x6
/* 813FD964 | 90 BD 00 04 */	stw r5, 0x4(r29)
/* 813FD968 | 4B F3 28 C9 */	bl memcpy
/* 813FD96C | 48 00 00 0C */	b .L_813FD978
.L_813FD970:
/* 813FD970 | 38 00 00 00 */	li r0, 0x0
/* 813FD974 | 90 1D 00 00 */	stw r0, 0x0(r29)
.L_813FD978:
/* 813FD978 | 7F 83 E3 78 */	mr r3, r28
.L_813FD97C:
/* 813FD97C | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 813FD980 | 7D 4B 53 78 */	mr r11, r10
/* 813FD984 | 48 1F BB 89 */	bl _restgpr_27
/* 813FD988 | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 813FD98C | 7C 08 03 A6 */	mtlr r0
/* 813FD990 | 7D 41 53 78 */	mr r1, r10
/* 813FD994 | 4E 80 00 20 */	blr
.endfn AOSSi_WLANConnect

# .text:0x828 | 0x813FD998 | size: 0x4
.fn AOSSi_Sleep, global
/* 813FD998 | 4B FF F7 F4 */	b AOSS_813FD18C
.endfn AOSSi_Sleep

# .text:0x82C | 0x813FD99C | size: 0x34
.fn AOSSi_Status, global
/* 813FD99C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FD9A0 | 7C 08 02 A6 */	mflr r0
/* 813FD9A4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FD9A8 | 81 8D AC 18 */	lwz r12, lbl_81698C58@sda21(r0)
/* 813FD9AC | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 813FD9B0 | 41 82 00 0C */	beq .L_813FD9BC
/* 813FD9B4 | 7D 89 03 A6 */	mtctr r12
/* 813FD9B8 | 4E 80 04 21 */	bctrl
.L_813FD9BC:
/* 813FD9BC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FD9C0 | 38 60 00 00 */	li r3, 0x0
/* 813FD9C4 | 7C 08 03 A6 */	mtlr r0
/* 813FD9C8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FD9CC | 4E 80 00 20 */	blr
.endfn AOSSi_Status

# .text:0x860 | 0x813FD9D0 | size: 0x34
.fn AOSS_SetCallback, global
/* 813FD9D0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FD9D4 | 7C 08 02 A6 */	mflr r0
/* 813FD9D8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FD9DC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813FD9E0 | 7C 7F 1B 78 */	mr r31, r3
/* 813FD9E4 | 48 13 2E A1 */	bl OSDisableInterrupts
/* 813FD9E8 | 93 ED AC 18 */	stw r31, lbl_81698C58@sda21(r0)
/* 813FD9EC | 48 13 2E C1 */	bl OSRestoreInterrupts
/* 813FD9F0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FD9F4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FD9F8 | 7C 08 03 A6 */	mtlr r0
/* 813FD9FC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FDA00 | 4E 80 00 20 */	blr
.endfn AOSS_SetCallback

# 0x81657B90..0x81657BC0 | size: 0x30
.data
.balign 8

# .data:0x0 | 0x81657B90 | size: 0x30
.obj lbl_81657B90, global
	.4byte 0x00010200
	.4byte 0x00020400
	.4byte 0x00040B00
	.4byte 0x00080C00
	.4byte 0x00101200
	.4byte 0x00201600
	.4byte 0x00401800
	.4byte 0x00802400
	.4byte 0x01003000
	.4byte 0x02004800
	.4byte 0x04006000
	.4byte 0x08006C00
.endobj lbl_81657B90

# 0x81698C38..0x81698C60 | size: 0x28
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698C38 | size: 0x4
.obj lbl_81698C38, global
	.skip 0x4
.endobj lbl_81698C38

# .sbss:0x4 | 0x81698C3C | size: 0x4
.obj lbl_81698C3C, global
	.skip 0x4
.endobj lbl_81698C3C

# .sbss:0x8 | 0x81698C40 | size: 0x4
.obj lbl_81698C40, global
	.skip 0x4
.endobj lbl_81698C40

# .sbss:0xC | 0x81698C44 | size: 0x4
.obj lbl_81698C44, global
	.skip 0x4
.endobj lbl_81698C44

# .sbss:0x10 | 0x81698C48 | size: 0x4
.obj lbl_81698C48, global
	.skip 0x4
.endobj lbl_81698C48

# .sbss:0x14 | 0x81698C4C | size: 0x4
.obj lbl_81698C4C, global
	.skip 0x4
.endobj lbl_81698C4C

# .sbss:0x18 | 0x81698C50 | size: 0x4
.obj lbl_81698C50, global
	.skip 0x4
.endobj lbl_81698C50

# .sbss:0x1C | 0x81698C54 | size: 0x4
.obj lbl_81698C54, global
	.skip 0x4
.endobj lbl_81698C54

# .sbss:0x20 | 0x81698C58 | size: 0x8
.obj lbl_81698C58, global
	.skip 0x8
.endobj lbl_81698C58
