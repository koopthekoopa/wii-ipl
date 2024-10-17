.include "macros.inc"
.file "iplSound.cpp"

# 0x81089848..0x8108A480 | size: 0xC38
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x81089848 | size: 0xC
# ipl::snd::unk
.obj unk__Q23ipl3snd, global
	.skip 0xC
.endobj unk__Q23ipl3snd

# .bss:0xC | 0x81089854 | size: 0xD8
# ipl::snd::_seBlk
.obj _seBlk__Q23ipl3snd, global
	.skip 0xD8
.endobj _seBlk__Q23ipl3snd

# .bss:0xE4 | 0x8108992C | size: 0x63C
# ipl::snd::sSystem
.obj sSystem__Q23ipl3snd, global
	.skip 0x63C
.endobj sSystem__Q23ipl3snd

# .bss:0x720 | 0x81089F68 | size: 0x518
# ipl::snd::sBannerSoundPlayer
.obj sBannerSoundPlayer__Q23ipl3snd, global
	.skip 0x518
.endobj sBannerSoundPlayer__Q23ipl3snd

# 0x8136B25C..0x8136C824 | size: 0x15C8
.text
.balign 4

# .text:0x0 | 0x8136B25C | size: 0x24
# ipl::snd::System::shutup(int)
.fn shutup__Q33ipl3snd6SystemFi, global
/* 8136B25C | 80 0D A7 50 */	lwz r0, m_isLocked__Q23ipl3snd@sda21(r0)
/* 8136B260 | 7C 00 20 00 */	cmpw r0, r4
/* 8136B264 | 4D 82 00 20 */	beqlr
/* 8136B268 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8136B26C | 90 8D A7 50 */	stw r4, m_isLocked__Q23ipl3snd@sda21(r0)
/* 8136B270 | 41 82 00 08 */	beq .L_8136B278
/* 8136B274 | 48 1E 69 60 */	b fn_81551BD4
.L_8136B278:
/* 8136B278 | 48 1E 69 48 */	b fn_81551BC0
/* 8136B27C | 4E 80 00 20 */	blr
.endfn shutup__Q33ipl3snd6SystemFi

# .text:0x24 | 0x8136B280 | size: 0xFC
# ipl::snd::System::initOnMemory(const void*, EGG::Heap*, unsigned long)
.fn initOnMemory__Q33ipl3snd6SystemFPCvPQ23EGG4HeapUl, global
/* 8136B280 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8136B284 | 7C 08 02 A6 */	mflr r0
/* 8136B288 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 8136B28C | 39 61 00 50 */	addi r11, r1, 0x50
/* 8136B290 | 48 28 E2 31 */	bl _savegpr_27
/* 8136B294 | 3B E0 00 00 */	li r31, 0x0
/* 8136B298 | 7C 7B 1B 78 */	mr r27, r3
/* 8136B29C | 93 E3 06 20 */	stw r31, 0x620(r3)
/* 8136B2A0 | 7C 9C 23 78 */	mr r28, r4
/* 8136B2A4 | 7C BD 2B 78 */	mr r29, r5
/* 8136B2A8 | 7C DE 33 78 */	mr r30, r6
/* 8136B2AC | 93 E3 06 24 */	stw r31, 0x624(r3)
/* 8136B2B0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8136B2B4 | 93 ED A7 4C */	stw r31, _mainBGMHandle__Q23ipl3snd@sda21(r0)
/* 8136B2B8 | 48 28 AF 55 */	bl fn_815F620C
/* 8136B2BC | 3C 00 00 03 */	lis r0, 0x3
/* 8136B2C0 | 93 A1 00 08 */	stw r29, 0x8(r1)
/* 8136B2C4 | 7F 63 DB 78 */	mr r3, r27
/* 8136B2C8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8136B2CC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8136B2D0 | 90 01 00 20 */	stw r0, 0x20(r1)
/* 8136B2D4 | 93 E1 00 24 */	stw r31, 0x24(r1)
/* 8136B2D8 | 93 E1 00 28 */	stw r31, 0x28(r1)
/* 8136B2DC | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 8136B2E0 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8136B2E4 | 7D 89 03 A6 */	mtctr r12
/* 8136B2E8 | 4E 80 04 21 */	bctrl
/* 8136B2EC | 81 9B 00 34 */	lwz r12, 0x34(r27)
/* 8136B2F0 | 38 7B 00 34 */	addi r3, r27, 0x34
/* 8136B2F4 | 7F 84 E3 78 */	mr r4, r28
/* 8136B2F8 | 38 BB 00 08 */	addi r5, r27, 0x8
/* 8136B2FC | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8136B300 | 7D 89 03 A6 */	mtctr r12
/* 8136B304 | 4E 80 04 21 */	bctrl
/* 8136B308 | 90 7B 06 28 */	stw r3, 0x628(r27)
/* 8136B30C | 7F 63 DB 78 */	mr r3, r27
/* 8136B310 | 48 00 00 6D */	bl initFx__Q33ipl3snd6SystemFv
/* 8136B314 | 3C 60 81 09 */	lis r3, sBannerSoundPlayer__Q23ipl3snd@ha
/* 8136B318 | 38 80 00 05 */	li r4, 0x5
/* 8136B31C | 38 63 9F 68 */	addi r3, r3, sBannerSoundPlayer__Q23ipl3snd@l
/* 8136B320 | 48 0A 33 E1 */	bl init__17BannerSoundPlayerFl
/* 8136B324 | 3C A0 81 09 */	lis r5, _seBlk__Q23ipl3snd@ha
/* 8136B328 | 3C 80 00 01 */	lis r4, 0x1
/* 8136B32C | 38 00 00 10 */	li r0, 0x10
/* 8136B330 | 7F E3 FB 78 */	mr r3, r31
/* 8136B334 | 38 A5 98 54 */	addi r5, r5, _seBlk__Q23ipl3snd@l
/* 8136B338 | 38 84 FF FF */	subi r4, r4, 0x1
/* 8136B33C | 7C 09 03 A6 */	mtctr r0
.L_8136B340:
/* 8136B340 | 7C C5 1A 14 */	add r6, r5, r3
/* 8136B344 | 38 63 00 0C */	addi r3, r3, 0xc
/* 8136B348 | 93 E6 00 04 */	stw r31, 0x4(r6)
/* 8136B34C | 90 86 00 08 */	stw r4, 0x8(r6)
/* 8136B350 | 42 00 FF F0 */	bdnz .L_8136B340
/* 8136B354 | 3C 60 81 09 */	lis r3, sBannerSoundPlayer__Q23ipl3snd@ha
/* 8136B358 | C0 22 82 A0 */	lfs f1, lbl_816946A0@sda21(r0)
/* 8136B35C | 38 63 9F 68 */	addi r3, r3, sBannerSoundPlayer__Q23ipl3snd@l
/* 8136B360 | 48 0A 37 E9 */	bl setMasterVolume__17BannerSoundPlayerFf
/* 8136B364 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8136B368 | 48 28 E1 A5 */	bl _restgpr_27
/* 8136B36C | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 8136B370 | 7C 08 03 A6 */	mtlr r0
/* 8136B374 | 38 21 00 50 */	addi r1, r1, 0x50
/* 8136B378 | 4E 80 00 20 */	blr
.endfn initOnMemory__Q33ipl3snd6SystemFPCvPQ23EGG4HeapUl

# .text:0x120 | 0x8136B37C | size: 0x14
# ipl::snd::System::initFx()
.fn initFx__Q33ipl3snd6SystemFv, global
/* 8136B37C | 3C A0 81 61 */	lis r5, reverbHiParam__Q23ipl3snd@ha
/* 8136B380 | 38 80 00 00 */	li r4, 0x0
/* 8136B384 | 38 A5 F0 48 */	addi r5, r5, reverbHiParam__Q23ipl3snd@l
/* 8136B388 | 38 63 05 D8 */	addi r3, r3, 0x5d8
/* 8136B38C | 48 28 B8 7C */	b fn_815F6C08
.endfn initFx__Q33ipl3snd6SystemFv

# .text:0x134 | 0x8136B390 | size: 0x2C
# ipl::snd::System::calc()
.fn calc__Q33ipl3snd6SystemFv, global
/* 8136B390 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136B394 | 7C 08 02 A6 */	mflr r0
/* 8136B398 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136B39C | 48 28 BB 09 */	bl fn_815F6EA4
/* 8136B3A0 | 3C 60 81 09 */	lis r3, sBannerSoundPlayer__Q23ipl3snd@ha
/* 8136B3A4 | 38 63 9F 68 */	addi r3, r3, sBannerSoundPlayer__Q23ipl3snd@l
/* 8136B3A8 | 48 0A 36 81 */	bl calc__17BannerSoundPlayerFv
/* 8136B3AC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136B3B0 | 7C 08 03 A6 */	mtlr r0
/* 8136B3B4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136B3B8 | 4E 80 00 20 */	blr
.endfn calc__Q33ipl3snd6SystemFv

# .text:0x160 | 0x8136B3BC | size: 0x4C
# ipl::snd::System::startBGM(const char*)
.fn startBGM__Q33ipl3snd6SystemFPCc, global
/* 8136B3BC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136B3C0 | 7C 08 02 A6 */	mflr r0
/* 8136B3C4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136B3C8 | 80 0D A7 50 */	lwz r0, m_isLocked__Q23ipl3snd@sda21(r0)
/* 8136B3CC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136B3D0 | 41 82 00 0C */	beq .L_8136B3DC
/* 8136B3D4 | 38 60 00 00 */	li r3, 0x0
/* 8136B3D8 | 48 00 00 20 */	b .L_8136B3F8
.L_8136B3DC:
/* 8136B3DC | 7C 85 23 78 */	mr r5, r4
/* 8136B3E0 | 38 8D A7 48 */	li r4, _bgmBlk__Q23ipl3snd@sda21
/* 8136B3E4 | 38 63 00 34 */	addi r3, r3, 0x34
/* 8136B3E8 | 48 00 00 21 */	bl startSound__Q23EGG9ArcPlayerFPQ34nw4r3snd11SoundHandlePCc
/* 8136B3EC | 38 0D A7 48 */	li r0, _bgmBlk__Q23ipl3snd@sda21
/* 8136B3F0 | 38 6D A7 48 */	li r3, _bgmBlk__Q23ipl3snd@sda21
/* 8136B3F4 | 90 0D A7 4C */	stw r0, _mainBGMHandle__Q23ipl3snd@sda21(r0)
.L_8136B3F8:
/* 8136B3F8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136B3FC | 7C 08 03 A6 */	mtlr r0
/* 8136B400 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136B404 | 4E 80 00 20 */	blr
.endfn startBGM__Q33ipl3snd6SystemFPCc

# .text:0x1AC | 0x8136B408 | size: 0x64
# EGG::ArcPlayer::startSound(nw4r::snd::SoundHandle*, const char*)
.fn startSound__Q23EGG9ArcPlayerFPQ34nw4r3snd11SoundHandlePCc, global
/* 8136B408 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136B40C | 7C 08 02 A6 */	mflr r0
/* 8136B410 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136B414 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136B418 | 7C 9F 23 78 */	mr r31, r4
/* 8136B41C | 7C A4 2B 78 */	mr r4, r5
/* 8136B420 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8136B424 | 7C 7E 1B 78 */	mr r30, r3
/* 8136B428 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 8136B42C | 48 19 AD E9 */	bl ConvertLabelStringToSoundId__Q34nw4r3snd12SoundArchiveCFPCc
/* 8136B430 | 7C 65 1B 78 */	mr r5, r3
/* 8136B434 | 7F E4 FB 78 */	mr r4, r31
/* 8136B438 | 38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8136B43C | 38 C0 00 00 */	li r6, 0x0
/* 8136B440 | 38 E0 00 00 */	li r7, 0x0
/* 8136B444 | 39 00 00 00 */	li r8, 0x0
/* 8136B448 | 48 1A 07 F1 */	bl detail_StartSound__Q34nw4r3snd14SoundStartableFPQ34nw4r3snd11SoundHandleUlPQ54nw4r3snd6detail10BasicSound14AmbientArgInfoPQ44nw4r3snd6detail19ExternalSoundPlayerPCQ44nw4r3snd14SoundStartable9StartInfo
/* 8136B44C | 7C 60 00 34 */	cntlzw r0, r3
/* 8136B450 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136B454 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8136B458 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8136B45C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136B460 | 7C 08 03 A6 */	mtlr r0
/* 8136B464 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136B468 | 4E 80 00 20 */	blr
.endfn startSound__Q23EGG9ArcPlayerFPQ34nw4r3snd11SoundHandlePCc

# .text:0x210 | 0x8136B46C | size: 0xF0
# ipl::snd::System::startSE(const char*)
.fn startSE__Q33ipl3snd6SystemFPCc, global
/* 8136B46C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136B470 | 7C 08 02 A6 */	mflr r0
/* 8136B474 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8136B478 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136B47C | 48 28 E0 4D */	bl _savegpr_29
/* 8136B480 | 80 0D A7 50 */	lwz r0, m_isLocked__Q23ipl3snd@sda21(r0)
/* 8136B484 | 7C 7D 1B 78 */	mr r29, r3
/* 8136B488 | 7C 9E 23 78 */	mr r30, r4
/* 8136B48C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136B490 | 41 82 00 0C */	beq .L_8136B49C
/* 8136B494 | 38 60 00 00 */	li r3, 0x0
/* 8136B498 | 48 00 00 AC */	b .L_8136B544
.L_8136B49C:
/* 8136B49C | 48 00 0B 99 */	bl FIsSEActive__Q33ipl3snd6SystemFPCc
/* 8136B4A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136B4A4 | 7C 7F 1B 78 */	mr r31, r3
/* 8136B4A8 | 41 82 00 10 */	beq .L_8136B4B8
/* 8136B4AC | 48 00 00 B1 */	bl GetId__Q34nw4r3snd11SoundHandleCFv
/* 8136B4B0 | 28 03 00 39 */	cmplwi r3, 0x39
/* 8136B4B4 | 41 82 00 1C */	beq .L_8136B4D0
.L_8136B4B8:
/* 8136B4B8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8136B4BC | 41 82 00 1C */	beq .L_8136B4D8
/* 8136B4C0 | 7F E3 FB 78 */	mr r3, r31
/* 8136B4C4 | 48 00 00 99 */	bl GetId__Q34nw4r3snd11SoundHandleCFv
/* 8136B4C8 | 28 03 00 35 */	cmplwi r3, 0x35
/* 8136B4CC | 40 82 00 0C */	bne .L_8136B4D8
.L_8136B4D0:
/* 8136B4D0 | 7F E3 FB 78 */	mr r3, r31
/* 8136B4D4 | 48 00 00 70 */	b .L_8136B544
.L_8136B4D8:
/* 8136B4D8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8136B4DC | 40 82 00 14 */	bne .L_8136B4F0
/* 8136B4E0 | 7F A3 EB 78 */	mr r3, r29
/* 8136B4E4 | 38 80 00 01 */	li r4, 0x1
/* 8136B4E8 | 48 00 0B F5 */	bl getFreeSEBlock__Q33ipl3snd6SystemFb
/* 8136B4EC | 7C 7F 1B 78 */	mr r31, r3
.L_8136B4F0:
/* 8136B4F0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8136B4F4 | 40 82 00 0C */	bne .L_8136B500
/* 8136B4F8 | 38 60 00 00 */	li r3, 0x0
/* 8136B4FC | 48 00 00 48 */	b .L_8136B544
.L_8136B500:
/* 8136B500 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8136B504 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136B508 | 41 82 00 18 */	beq .L_8136B520
/* 8136B50C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136B510 | 38 80 00 00 */	li r4, 0x0
/* 8136B514 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8136B518 | 7D 89 03 A6 */	mtctr r12
/* 8136B51C | 4E 80 04 21 */	bctrl
.L_8136B520:
/* 8136B520 | 7F E4 FB 78 */	mr r4, r31
/* 8136B524 | 7F C5 F3 78 */	mr r5, r30
/* 8136B528 | 38 7D 00 34 */	addi r3, r29, 0x34
/* 8136B52C | 4B FF FE DD */	bl startSound__Q23EGG9ArcPlayerFPQ34nw4r3snd11SoundHandlePCc
/* 8136B530 | 93 DF 00 04 */	stw r30, 0x4(r31)
/* 8136B534 | 7F E3 FB 78 */	mr r3, r31
/* 8136B538 | 48 00 00 25 */	bl GetId__Q34nw4r3snd11SoundHandleCFv
/* 8136B53C | 90 7F 00 08 */	stw r3, 0x8(r31)
/* 8136B540 | 7F E3 FB 78 */	mr r3, r31
.L_8136B544:
/* 8136B544 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136B548 | 48 28 DF CD */	bl _restgpr_29
/* 8136B54C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136B550 | 7C 08 03 A6 */	mtlr r0
/* 8136B554 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8136B558 | 4E 80 00 20 */	blr
.endfn startSE__Q33ipl3snd6SystemFPCc

# .text:0x300 | 0x8136B55C | size: 0x1C
# nw4r::snd::SoundHandle::GetId() const
.fn GetId__Q34nw4r3snd11SoundHandleCFv, global
/* 8136B55C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8136B560 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136B564 | 41 82 00 0C */	beq .L_8136B570
/* 8136B568 | 80 63 00 78 */	lwz r3, 0x78(r3)
/* 8136B56C | 4E 80 00 20 */	blr
.L_8136B570:
/* 8136B570 | 38 60 FF FF */	li r3, -0x1
/* 8136B574 | 4E 80 00 20 */	blr
.endfn GetId__Q34nw4r3snd11SoundHandleCFv

# .text:0x31C | 0x8136B578 | size: 0xF0
# ipl::snd::System::startSEIndex(unsigned long)
.fn startSEIndex__Q33ipl3snd6SystemFUl, global
/* 8136B578 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136B57C | 7C 08 02 A6 */	mflr r0
/* 8136B580 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8136B584 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136B588 | 48 28 DF 41 */	bl _savegpr_29
/* 8136B58C | 80 0D A7 50 */	lwz r0, m_isLocked__Q23ipl3snd@sda21(r0)
/* 8136B590 | 7C 7D 1B 78 */	mr r29, r3
/* 8136B594 | 7C 9E 23 78 */	mr r30, r4
/* 8136B598 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136B59C | 41 82 00 0C */	beq .L_8136B5A8
/* 8136B5A0 | 38 60 00 00 */	li r3, 0x0
/* 8136B5A4 | 48 00 00 AC */	b .L_8136B650
.L_8136B5A8:
/* 8136B5A8 | 48 00 0A CD */	bl FIsSEActive__Q33ipl3snd6SystemFUl
/* 8136B5AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136B5B0 | 7C 7F 1B 78 */	mr r31, r3
/* 8136B5B4 | 41 82 00 10 */	beq .L_8136B5C4
/* 8136B5B8 | 4B FF FF A5 */	bl GetId__Q34nw4r3snd11SoundHandleCFv
/* 8136B5BC | 28 03 00 39 */	cmplwi r3, 0x39
/* 8136B5C0 | 41 82 00 1C */	beq .L_8136B5DC
.L_8136B5C4:
/* 8136B5C4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8136B5C8 | 41 82 00 1C */	beq .L_8136B5E4
/* 8136B5CC | 7F E3 FB 78 */	mr r3, r31
/* 8136B5D0 | 4B FF FF 8D */	bl GetId__Q34nw4r3snd11SoundHandleCFv
/* 8136B5D4 | 28 03 00 35 */	cmplwi r3, 0x35
/* 8136B5D8 | 40 82 00 0C */	bne .L_8136B5E4
.L_8136B5DC:
/* 8136B5DC | 7F E3 FB 78 */	mr r3, r31
/* 8136B5E0 | 48 00 00 70 */	b .L_8136B650
.L_8136B5E4:
/* 8136B5E4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8136B5E8 | 40 82 00 14 */	bne .L_8136B5FC
/* 8136B5EC | 7F A3 EB 78 */	mr r3, r29
/* 8136B5F0 | 38 80 00 01 */	li r4, 0x1
/* 8136B5F4 | 48 00 0A E9 */	bl getFreeSEBlock__Q33ipl3snd6SystemFb
/* 8136B5F8 | 7C 7F 1B 78 */	mr r31, r3
.L_8136B5FC:
/* 8136B5FC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8136B600 | 40 82 00 0C */	bne .L_8136B60C
/* 8136B604 | 38 60 00 00 */	li r3, 0x0
/* 8136B608 | 48 00 00 48 */	b .L_8136B650
.L_8136B60C:
/* 8136B60C | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8136B610 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136B614 | 41 82 00 18 */	beq .L_8136B62C
/* 8136B618 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136B61C | 38 80 00 00 */	li r4, 0x0
/* 8136B620 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8136B624 | 7D 89 03 A6 */	mtctr r12
/* 8136B628 | 4E 80 04 21 */	bctrl
.L_8136B62C:
/* 8136B62C | 7F E4 FB 78 */	mr r4, r31
/* 8136B630 | 7F C5 F3 78 */	mr r5, r30
/* 8136B634 | 38 7D 05 04 */	addi r3, r29, 0x504
/* 8136B638 | 38 C0 00 00 */	li r6, 0x0
/* 8136B63C | 38 E0 00 00 */	li r7, 0x0
/* 8136B640 | 39 00 00 00 */	li r8, 0x0
/* 8136B644 | 48 1A 05 F5 */	bl detail_StartSound__Q34nw4r3snd14SoundStartableFPQ34nw4r3snd11SoundHandleUlPQ54nw4r3snd6detail10BasicSound14AmbientArgInfoPQ44nw4r3snd6detail19ExternalSoundPlayerPCQ44nw4r3snd14SoundStartable9StartInfo
/* 8136B648 | 93 DF 00 08 */	stw r30, 0x8(r31)
/* 8136B64C | 7F E3 FB 78 */	mr r3, r31
.L_8136B650:
/* 8136B650 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136B654 | 48 28 DE C1 */	bl _restgpr_29
/* 8136B658 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136B65C | 7C 08 03 A6 */	mtlr r0
/* 8136B660 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8136B664 | 4E 80 00 20 */	blr
.endfn startSEIndex__Q33ipl3snd6SystemFUl

# .text:0x40C | 0x8136B668 | size: 0x38
# EGG::ArcPlayer::startSound(nw4r::snd::SoundHandle*, unsigned long)
.fn startSound__Q23EGG9ArcPlayerFPQ34nw4r3snd11SoundHandleUl, global
/* 8136B668 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136B66C | 7C 08 02 A6 */	mflr r0
/* 8136B670 | 38 C0 00 00 */	li r6, 0x0
/* 8136B674 | 38 E0 00 00 */	li r7, 0x0
/* 8136B678 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136B67C | 39 00 00 00 */	li r8, 0x0
/* 8136B680 | 38 63 04 D0 */	addi r3, r3, 0x4d0
/* 8136B684 | 48 1A 05 B5 */	bl detail_StartSound__Q34nw4r3snd14SoundStartableFPQ34nw4r3snd11SoundHandleUlPQ54nw4r3snd6detail10BasicSound14AmbientArgInfoPQ44nw4r3snd6detail19ExternalSoundPlayerPCQ44nw4r3snd14SoundStartable9StartInfo
/* 8136B688 | 7C 60 00 34 */	cntlzw r0, r3
/* 8136B68C | 54 03 D9 7E */	srwi r3, r0, 5
/* 8136B690 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136B694 | 7C 08 03 A6 */	mtlr r0
/* 8136B698 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136B69C | 4E 80 00 20 */	blr
.endfn startSound__Q23EGG9ArcPlayerFPQ34nw4r3snd11SoundHandleUl

# .text:0x444 | 0x8136B6A0 | size: 0x100
# ipl::snd::System::startSEwithPos(const char*, float)
.fn startSEwithPos__Q33ipl3snd6SystemFPCcf, global
/* 8136B6A0 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8136B6A4 | 7C 08 02 A6 */	mflr r0
/* 8136B6A8 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 8136B6AC | DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8136B6B0 | F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 8136B6B4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8136B6B8 | 48 28 DE 11 */	bl _savegpr_29
/* 8136B6BC | 80 0D A7 50 */	lwz r0, m_isLocked__Q23ipl3snd@sda21(r0)
/* 8136B6C0 | FF E0 08 90 */	fmr f31, f1
/* 8136B6C4 | 7C 7D 1B 78 */	mr r29, r3
/* 8136B6C8 | 7C 9E 23 78 */	mr r30, r4
/* 8136B6CC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136B6D0 | 41 82 00 0C */	beq .L_8136B6DC
/* 8136B6D4 | 38 60 00 00 */	li r3, 0x0
/* 8136B6D8 | 48 00 00 A8 */	b .L_8136B780
.L_8136B6DC:
/* 8136B6DC | 48 00 09 59 */	bl FIsSEActive__Q33ipl3snd6SystemFPCc
/* 8136B6E0 | 7C 60 1B 78 */	mr r0, r3
/* 8136B6E4 | 7F A3 EB 78 */	mr r3, r29
/* 8136B6E8 | 7C 00 00 34 */	cntlzw r0, r0
/* 8136B6EC | 54 04 D9 7E */	srwi r4, r0, 5
/* 8136B6F0 | 48 00 09 ED */	bl getFreeSEBlock__Q33ipl3snd6SystemFb
/* 8136B6F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136B6F8 | 7C 7F 1B 78 */	mr r31, r3
/* 8136B6FC | 40 82 00 0C */	bne .L_8136B708
/* 8136B700 | 38 60 00 00 */	li r3, 0x0
/* 8136B704 | 48 00 00 7C */	b .L_8136B780
.L_8136B708:
/* 8136B708 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8136B70C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136B710 | 41 82 00 18 */	beq .L_8136B728
/* 8136B714 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136B718 | 38 80 00 00 */	li r4, 0x0
/* 8136B71C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8136B720 | 7D 89 03 A6 */	mtctr r12
/* 8136B724 | 4E 80 04 21 */	bctrl
.L_8136B728:
/* 8136B728 | 7F E4 FB 78 */	mr r4, r31
/* 8136B72C | 7F C5 F3 78 */	mr r5, r30
/* 8136B730 | 38 7D 00 34 */	addi r3, r29, 0x34
/* 8136B734 | 4B FF FC D5 */	bl startSound__Q23EGG9ArcPlayerFPQ34nw4r3snd11SoundHandlePCc
/* 8136B738 | 93 DF 00 04 */	stw r30, 0x4(r31)
/* 8136B73C | 7F E3 FB 78 */	mr r3, r31
/* 8136B740 | 4B FF FE 1D */	bl GetId__Q34nw4r3snd11SoundHandleCFv
/* 8136B744 | 90 7F 00 08 */	stw r3, 0x8(r31)
/* 8136B748 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8136B74C | 4B FC AC DD */	bl __ct__Q34nw4r2ut4RectFv
/* 8136B750 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8136B754 | 4B FC A1 C5 */	bl getProjectionRect__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 8136B758 | C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8136B75C | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8136B760 | EC 3F 00 24 */	fdivs f1, f31, f0
/* 8136B764 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136B768 | 41 82 00 14 */	beq .L_8136B77C
/* 8136B76C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136B770 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8136B774 | 7D 89 03 A6 */	mtctr r12
/* 8136B778 | 4E 80 04 21 */	bctrl
.L_8136B77C:
/* 8136B77C | 7F E3 FB 78 */	mr r3, r31
.L_8136B780:
/* 8136B780 | E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 8136B784 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8136B788 | CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8136B78C | 48 28 DD 89 */	bl _restgpr_29
/* 8136B790 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8136B794 | 7C 08 03 A6 */	mtlr r0
/* 8136B798 | 38 21 00 40 */	addi r1, r1, 0x40
/* 8136B79C | 4E 80 00 20 */	blr
.endfn startSEwithPos__Q33ipl3snd6SystemFPCcf

# .text:0x544 | 0x8136B7A0 | size: 0x9C
# ipl::snd::System::holdSE(const char*)
.fn holdSE__Q33ipl3snd6SystemFPCc, global
/* 8136B7A0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136B7A4 | 7C 08 02 A6 */	mflr r0
/* 8136B7A8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8136B7AC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136B7B0 | 48 28 DD 19 */	bl _savegpr_29
/* 8136B7B4 | 80 0D A7 50 */	lwz r0, m_isLocked__Q23ipl3snd@sda21(r0)
/* 8136B7B8 | 7C 7D 1B 78 */	mr r29, r3
/* 8136B7BC | 7C 9E 23 78 */	mr r30, r4
/* 8136B7C0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136B7C4 | 41 82 00 0C */	beq .L_8136B7D0
/* 8136B7C8 | 38 60 00 00 */	li r3, 0x0
/* 8136B7CC | 48 00 00 58 */	b .L_8136B824
.L_8136B7D0:
/* 8136B7D0 | 48 00 08 65 */	bl FIsSEActive__Q33ipl3snd6SystemFPCc
/* 8136B7D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136B7D8 | 7C 7F 1B 78 */	mr r31, r3
/* 8136B7DC | 40 82 00 14 */	bne .L_8136B7F0
/* 8136B7E0 | 7F A3 EB 78 */	mr r3, r29
/* 8136B7E4 | 38 80 00 01 */	li r4, 0x1
/* 8136B7E8 | 48 00 08 F5 */	bl getFreeSEBlock__Q33ipl3snd6SystemFb
/* 8136B7EC | 7C 7F 1B 78 */	mr r31, r3
.L_8136B7F0:
/* 8136B7F0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8136B7F4 | 40 82 00 0C */	bne .L_8136B800
/* 8136B7F8 | 38 60 00 00 */	li r3, 0x0
/* 8136B7FC | 48 00 00 28 */	b .L_8136B824
.L_8136B800:
/* 8136B800 | 7F E4 FB 78 */	mr r4, r31
/* 8136B804 | 7F C5 F3 78 */	mr r5, r30
/* 8136B808 | 38 7D 00 34 */	addi r3, r29, 0x34
/* 8136B80C | 48 00 00 31 */	bl holdSound__Q23EGG9ArcPlayerFPQ34nw4r3snd11SoundHandlePCc
/* 8136B810 | 93 DF 00 04 */	stw r30, 0x4(r31)
/* 8136B814 | 7F E3 FB 78 */	mr r3, r31
/* 8136B818 | 4B FF FD 45 */	bl GetId__Q34nw4r3snd11SoundHandleCFv
/* 8136B81C | 90 7F 00 08 */	stw r3, 0x8(r31)
/* 8136B820 | 7F E3 FB 78 */	mr r3, r31
.L_8136B824:
/* 8136B824 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136B828 | 48 28 DC ED */	bl _restgpr_29
/* 8136B82C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136B830 | 7C 08 03 A6 */	mtlr r0
/* 8136B834 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8136B838 | 4E 80 00 20 */	blr
.endfn holdSE__Q33ipl3snd6SystemFPCc

# .text:0x5E0 | 0x8136B83C | size: 0x64
# EGG::ArcPlayer::holdSound(nw4r::snd::SoundHandle*, const char*)
.fn holdSound__Q23EGG9ArcPlayerFPQ34nw4r3snd11SoundHandlePCc, global
/* 8136B83C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136B840 | 7C 08 02 A6 */	mflr r0
/* 8136B844 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136B848 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136B84C | 7C 9F 23 78 */	mr r31, r4
/* 8136B850 | 7C A4 2B 78 */	mr r4, r5
/* 8136B854 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8136B858 | 7C 7E 1B 78 */	mr r30, r3
/* 8136B85C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 8136B860 | 48 19 A9 B5 */	bl ConvertLabelStringToSoundId__Q34nw4r3snd12SoundArchiveCFPCc
/* 8136B864 | 7C 65 1B 78 */	mr r5, r3
/* 8136B868 | 7F E4 FB 78 */	mr r4, r31
/* 8136B86C | 38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8136B870 | 38 C0 00 00 */	li r6, 0x0
/* 8136B874 | 38 E0 00 00 */	li r7, 0x0
/* 8136B878 | 39 00 00 00 */	li r8, 0x0
/* 8136B87C | 48 1A 04 29 */	bl detail_HoldSound__Q34nw4r3snd14SoundStartableFPQ34nw4r3snd11SoundHandleUlPQ54nw4r3snd6detail10BasicSound14AmbientArgInfoPQ44nw4r3snd6detail19ExternalSoundPlayerPCQ44nw4r3snd14SoundStartable9StartInfo
/* 8136B880 | 7C 60 00 34 */	cntlzw r0, r3
/* 8136B884 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136B888 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8136B88C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8136B890 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136B894 | 7C 08 03 A6 */	mtlr r0
/* 8136B898 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136B89C | 4E 80 00 20 */	blr
.endfn holdSound__Q23EGG9ArcPlayerFPQ34nw4r3snd11SoundHandlePCc

# .text:0x644 | 0x8136B8A0 | size: 0x194
# ipl::snd::System::holdSEwithPosDis(const char*, float, float)
.fn holdSEwithPosDis__Q33ipl3snd6SystemFPCcff, global
/* 8136B8A0 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8136B8A4 | 7C 08 02 A6 */	mflr r0
/* 8136B8A8 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 8136B8AC | DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8136B8B0 | F3 E1 00 48 */	psq_st f31, 0x48(r1), 0, qr0
/* 8136B8B4 | DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8136B8B8 | F3 C1 00 38 */	psq_st f30, 0x38(r1), 0, qr0
/* 8136B8BC | 39 61 00 30 */	addi r11, r1, 0x30
/* 8136B8C0 | 48 28 DC 09 */	bl _savegpr_29
/* 8136B8C4 | 80 0D A7 50 */	lwz r0, m_isLocked__Q23ipl3snd@sda21(r0)
/* 8136B8C8 | FF C0 08 90 */	fmr f30, f1
/* 8136B8CC | FF E0 10 90 */	fmr f31, f2
/* 8136B8D0 | 7C 7D 1B 78 */	mr r29, r3
/* 8136B8D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136B8D8 | 7C 9E 23 78 */	mr r30, r4
/* 8136B8DC | 41 82 00 0C */	beq .L_8136B8E8
/* 8136B8E0 | 38 60 00 00 */	li r3, 0x0
/* 8136B8E4 | 48 00 01 28 */	b .L_8136BA0C
.L_8136B8E8:
/* 8136B8E8 | 48 00 07 4D */	bl FIsSEActive__Q33ipl3snd6SystemFPCc
/* 8136B8EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136B8F0 | 7C 7F 1B 78 */	mr r31, r3
/* 8136B8F4 | 40 82 00 14 */	bne .L_8136B908
/* 8136B8F8 | 7F A3 EB 78 */	mr r3, r29
/* 8136B8FC | 38 80 00 01 */	li r4, 0x1
/* 8136B900 | 48 00 07 DD */	bl getFreeSEBlock__Q33ipl3snd6SystemFb
/* 8136B904 | 7C 7F 1B 78 */	mr r31, r3
.L_8136B908:
/* 8136B908 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8136B90C | 40 82 00 0C */	bne .L_8136B918
/* 8136B910 | 38 60 00 00 */	li r3, 0x0
/* 8136B914 | 48 00 00 F8 */	b .L_8136BA0C
.L_8136B918:
/* 8136B918 | 7F E4 FB 78 */	mr r4, r31
/* 8136B91C | 7F C5 F3 78 */	mr r5, r30
/* 8136B920 | 38 7D 00 34 */	addi r3, r29, 0x34
/* 8136B924 | 4B FF FF 19 */	bl holdSound__Q23EGG9ArcPlayerFPQ34nw4r3snd11SoundHandlePCc
/* 8136B928 | 93 DF 00 04 */	stw r30, 0x4(r31)
/* 8136B92C | 7F E3 FB 78 */	mr r3, r31
/* 8136B930 | 4B FF FC 2D */	bl GetId__Q34nw4r3snd11SoundHandleCFv
/* 8136B934 | 90 7F 00 08 */	stw r3, 0x8(r31)
/* 8136B938 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8136B93C | 4B FC AA ED */	bl __ct__Q34nw4r2ut4RectFv
/* 8136B940 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8136B944 | 4B FC A0 09 */	bl getProjectionRect4x3__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 8136B948 | C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8136B94C | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8136B950 | EC 3E 00 24 */	fdivs f1, f30, f0
/* 8136B954 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136B958 | 41 82 00 14 */	beq .L_8136B96C
/* 8136B95C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136B960 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8136B964 | 7D 89 03 A6 */	mtctr r12
/* 8136B968 | 4E 80 04 21 */	bctrl
.L_8136B96C:
/* 8136B96C | C0 02 82 A8 */	lfs f0, lbl_816946A8@sda21(r0)
/* 8136B970 | C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8136B974 | EC 40 07 F2 */	fmuls f2, f0, f31
/* 8136B978 | C0 02 82 AC */	lfs f0, lbl_816946AC@sda21(r0)
/* 8136B97C | EC 22 08 24 */	fdivs f1, f2, f1
/* 8136B980 | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8136B984 | 40 80 00 08 */	bge .L_8136B98C
/* 8136B988 | FC 20 00 90 */	fmr f1, f0
.L_8136B98C:
/* 8136B98C | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8136B990 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136B994 | 41 82 00 18 */	beq .L_8136B9AC
/* 8136B998 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136B99C | 38 80 00 00 */	li r4, 0x0
/* 8136B9A0 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8136B9A4 | 7D 89 03 A6 */	mtctr r12
/* 8136B9A8 | 4E 80 04 21 */	bctrl
.L_8136B9AC:
/* 8136B9AC | C0 02 82 B0 */	lfs f0, lbl_816946B0@sda21(r0)
/* 8136B9B0 | FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8136B9B4 | 40 80 00 28 */	bge .L_8136B9DC
/* 8136B9B8 | EC 3F 00 24 */	fdivs f1, f31, f0
/* 8136B9BC | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8136B9C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136B9C4 | 41 82 00 44 */	beq .L_8136BA08
/* 8136B9C8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136B9CC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8136B9D0 | 7D 89 03 A6 */	mtctr r12
/* 8136B9D4 | 4E 80 04 21 */	bctrl
/* 8136B9D8 | 48 00 00 30 */	b .L_8136BA08
.L_8136B9DC:
/* 8136B9DC | C0 02 82 B4 */	lfs f0, lbl_816946B4@sda21(r0)
/* 8136B9E0 | FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8136B9E4 | 40 80 00 24 */	bge .L_8136BA08
/* 8136B9E8 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8136B9EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136B9F0 | 41 82 00 18 */	beq .L_8136BA08
/* 8136B9F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136B9F8 | C0 22 82 A8 */	lfs f1, lbl_816946A8@sda21(r0)
/* 8136B9FC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8136BA00 | 7D 89 03 A6 */	mtctr r12
/* 8136BA04 | 4E 80 04 21 */	bctrl
.L_8136BA08:
/* 8136BA08 | 7F E3 FB 78 */	mr r3, r31
.L_8136BA0C:
/* 8136BA0C | E3 E1 00 48 */	psq_l f31, 0x48(r1), 0, qr0
/* 8136BA10 | CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8136BA14 | E3 C1 00 38 */	psq_l f30, 0x38(r1), 0, qr0
/* 8136BA18 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8136BA1C | CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8136BA20 | 48 28 DA F5 */	bl _restgpr_29
/* 8136BA24 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 8136BA28 | 7C 08 03 A6 */	mtlr r0
/* 8136BA2C | 38 21 00 50 */	addi r1, r1, 0x50
/* 8136BA30 | 4E 80 00 20 */	blr
.endfn holdSEwithPosDis__Q33ipl3snd6SystemFPCcff

# .text:0x7D8 | 0x8136BA34 | size: 0x34
# ipl::snd::System::stopBGM(int)
.fn stopBGM__Q33ipl3snd6SystemFi, global
/* 8136BA34 | 80 6D A7 4C */	lwz r3, _mainBGMHandle__Q23ipl3snd@sda21(r0)
/* 8136BA38 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136BA3C | 4D 82 00 20 */	beqlr
/* 8136BA40 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8136BA44 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136BA48 | 4D 82 00 20 */	beqlr
/* 8136BA4C | 4D 82 00 20 */	beqlr
/* 8136BA50 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8136BA54 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136BA58 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8136BA5C | 7D 89 03 A6 */	mtctr r12
/* 8136BA60 | 4E 80 04 20 */	bctr
/* 8136BA64 | 4E 80 00 20 */	blr
.endfn stopBGM__Q33ipl3snd6SystemFi

# .text:0x80C | 0x8136BA68 | size: 0xA8
# ipl::snd::System::stopSE(nw4r::snd::SoundHandle*, int)
.fn stopSE__Q33ipl3snd6SystemFPQ34nw4r3snd11SoundHandlei, global
/* 8136BA68 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8136BA6C | 7C 08 02 A6 */	mflr r0
/* 8136BA70 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8136BA74 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8136BA78 | 48 28 DA 3D */	bl _savegpr_24
/* 8136BA7C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8136BA80 | 7C 98 23 78 */	mr r24, r4
/* 8136BA84 | 7C B9 2B 78 */	mr r25, r5
/* 8136BA88 | 41 82 00 70 */	beq .L_8136BAF8
/* 8136BA8C | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 8136BA90 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136BA94 | 41 82 00 64 */	beq .L_8136BAF8
/* 8136BA98 | 3B 40 00 00 */	li r26, 0x0
/* 8136BA9C | 3C 60 00 01 */	lis r3, 0x1
/* 8136BAA0 | 3F 80 81 09 */	lis r28, _seBlk__Q23ipl3snd@ha
/* 8136BAA4 | 3B E0 00 00 */	li r31, 0x0
/* 8136BAA8 | 7F 5D D3 78 */	mr r29, r26
/* 8136BAAC | 3B C3 FF FF */	subi r30, r3, 0x1
/* 8136BAB0 | 3B 9C 98 54 */	addi r28, r28, _seBlk__Q23ipl3snd@l
.L_8136BAB4:
/* 8136BAB4 | 7F 7C FA 14 */	add r27, r28, r31
/* 8136BAB8 | 7C 18 D8 40 */	cmplw r24, r27
/* 8136BABC | 40 82 00 2C */	bne .L_8136BAE8
/* 8136BAC0 | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 8136BAC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136BAC8 | 41 82 00 18 */	beq .L_8136BAE0
/* 8136BACC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136BAD0 | 7F 24 CB 78 */	mr r4, r25
/* 8136BAD4 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8136BAD8 | 7D 89 03 A6 */	mtctr r12
/* 8136BADC | 4E 80 04 21 */	bctrl
.L_8136BAE0:
/* 8136BAE0 | 93 BB 00 04 */	stw r29, 0x4(r27)
/* 8136BAE4 | 93 DB 00 08 */	stw r30, 0x8(r27)
.L_8136BAE8:
/* 8136BAE8 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 8136BAEC | 3B FF 00 0C */	addi r31, r31, 0xc
/* 8136BAF0 | 2C 1A 00 10 */	cmpwi r26, 0x10
/* 8136BAF4 | 41 80 FF C0 */	blt .L_8136BAB4
.L_8136BAF8:
/* 8136BAF8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8136BAFC | 48 28 DA 05 */	bl _restgpr_24
/* 8136BB00 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8136BB04 | 7C 08 03 A6 */	mtlr r0
/* 8136BB08 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8136BB0C | 4E 80 00 20 */	blr
.endfn stopSE__Q33ipl3snd6SystemFPQ34nw4r3snd11SoundHandlei

# .text:0x8B4 | 0x8136BB10 | size: 0x104
# ipl::snd::System::stopAllSound(int)
.fn stopAllSound__Q33ipl3snd6SystemFi, global
/* 8136BB10 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8136BB14 | 7C 08 02 A6 */	mflr r0
/* 8136BB18 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8136BB1C | 39 61 00 30 */	addi r11, r1, 0x30
/* 8136BB20 | 48 28 D9 99 */	bl _savegpr_25
/* 8136BB24 | 3B 40 00 00 */	li r26, 0x0
/* 8136BB28 | 3F 80 81 09 */	lis r28, _seBlk__Q23ipl3snd@ha
/* 8136BB2C | 3C 60 00 01 */	lis r3, 0x1
/* 8136BB30 | 7C 99 23 78 */	mr r25, r4
/* 8136BB34 | 7F 5D D3 78 */	mr r29, r26
/* 8136BB38 | 3B 9C 98 54 */	addi r28, r28, _seBlk__Q23ipl3snd@l
/* 8136BB3C | 3B C3 FF FF */	subi r30, r3, 0x1
/* 8136BB40 | 3B E0 00 00 */	li r31, 0x0
.L_8136BB44:
/* 8136BB44 | 7C 7C F8 2E */	lwzx r3, r28, r31
/* 8136BB48 | 7F 7C FA 14 */	add r27, r28, r31
/* 8136BB4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136BB50 | 41 82 00 18 */	beq .L_8136BB68
/* 8136BB54 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136BB58 | 7F 24 CB 78 */	mr r4, r25
/* 8136BB5C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8136BB60 | 7D 89 03 A6 */	mtctr r12
/* 8136BB64 | 4E 80 04 21 */	bctrl
.L_8136BB68:
/* 8136BB68 | 93 BB 00 04 */	stw r29, 0x4(r27)
/* 8136BB6C | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 8136BB70 | 2C 1A 00 10 */	cmpwi r26, 0x10
/* 8136BB74 | 3B FF 00 0C */	addi r31, r31, 0xc
/* 8136BB78 | 93 DB 00 08 */	stw r30, 0x8(r27)
/* 8136BB7C | 41 80 FF C8 */	blt .L_8136BB44
/* 8136BB80 | 80 6D A7 4C */	lwz r3, _mainBGMHandle__Q23ipl3snd@sda21(r0)
/* 8136BB84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136BB88 | 41 82 00 28 */	beq .L_8136BBB0
/* 8136BB8C | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8136BB90 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136BB94 | 41 82 00 1C */	beq .L_8136BBB0
/* 8136BB98 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8136BB9C | 7F 24 CB 78 */	mr r4, r25
/* 8136BBA0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136BBA4 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8136BBA8 | 7D 89 03 A6 */	mtctr r12
/* 8136BBAC | 4E 80 04 21 */	bctrl
.L_8136BBB0:
/* 8136BBB0 | 3C 60 81 09 */	lis r3, sBannerSoundPlayer__Q23ipl3snd@ha
/* 8136BBB4 | 7F 24 CB 78 */	mr r4, r25
/* 8136BBB8 | 38 63 9F 68 */	addi r3, r3, sBannerSoundPlayer__Q23ipl3snd@l
/* 8136BBBC | 48 0A 2D 5D */	bl stop__17BannerSoundPlayerFUl
/* 8136BBC0 | 1C 79 03 E8 */	mulli r3, r25, 0x3e8
/* 8136BBC4 | 38 00 00 3C */	li r0, 0x3c
/* 8136BBC8 | 7F 83 03 D6 */	divw r28, r3, r0
/* 8136BBCC | 48 18 BA 01 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 8136BBD0 | 7F 85 E3 78 */	mr r5, r28
/* 8136BBD4 | 38 80 00 00 */	li r4, 0x0
/* 8136BBD8 | 48 18 C9 59 */	bl ClearEffect__Q44nw4r3snd6detail9AxManagerFQ34nw4r3snd6AuxBusi
/* 8136BBDC | 48 18 B9 F1 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 8136BBE0 | 7F 85 E3 78 */	mr r5, r28
/* 8136BBE4 | 38 80 00 01 */	li r4, 0x1
/* 8136BBE8 | 48 18 C9 49 */	bl ClearEffect__Q44nw4r3snd6detail9AxManagerFQ34nw4r3snd6AuxBusi
/* 8136BBEC | 48 18 B9 E1 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 8136BBF0 | 7F 85 E3 78 */	mr r5, r28
/* 8136BBF4 | 38 80 00 02 */	li r4, 0x2
/* 8136BBF8 | 48 18 C9 39 */	bl ClearEffect__Q44nw4r3snd6detail9AxManagerFQ34nw4r3snd6AuxBusi
/* 8136BBFC | 39 61 00 30 */	addi r11, r1, 0x30
/* 8136BC00 | 48 28 D9 05 */	bl _restgpr_25
/* 8136BC04 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8136BC08 | 7C 08 03 A6 */	mtlr r0
/* 8136BC0C | 38 21 00 30 */	addi r1, r1, 0x30
/* 8136BC10 | 4E 80 00 20 */	blr
.endfn stopAllSound__Q33ipl3snd6SystemFi

# .text:0x9B8 | 0x8136BC14 | size: 0x110
# ipl::snd::System::resetAllSound()
.fn resetAllSound__Q33ipl3snd6SystemFv, global
/* 8136BC14 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136BC18 | 7C 08 02 A6 */	mflr r0
/* 8136BC1C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8136BC20 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136BC24 | 48 28 D8 99 */	bl _savegpr_26
/* 8136BC28 | 3B 40 00 00 */	li r26, 0x0
/* 8136BC2C | 3F 80 81 09 */	lis r28, _seBlk__Q23ipl3snd@ha
/* 8136BC30 | 3C 60 00 01 */	lis r3, 0x1
/* 8136BC34 | 3B E0 00 00 */	li r31, 0x0
/* 8136BC38 | 7F 5D D3 78 */	mr r29, r26
/* 8136BC3C | 3B 9C 98 54 */	addi r28, r28, _seBlk__Q23ipl3snd@l
/* 8136BC40 | 3B C3 FF FF */	subi r30, r3, 0x1
.L_8136BC44:
/* 8136BC44 | 7C 7C F8 2E */	lwzx r3, r28, r31
/* 8136BC48 | 7F 7C FA 14 */	add r27, r28, r31
/* 8136BC4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136BC50 | 41 82 00 18 */	beq .L_8136BC68
/* 8136BC54 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136BC58 | 38 80 00 00 */	li r4, 0x0
/* 8136BC5C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8136BC60 | 7D 89 03 A6 */	mtctr r12
/* 8136BC64 | 4E 80 04 21 */	bctrl
.L_8136BC68:
/* 8136BC68 | 93 BB 00 04 */	stw r29, 0x4(r27)
/* 8136BC6C | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 8136BC70 | 2C 1A 00 10 */	cmpwi r26, 0x10
/* 8136BC74 | 3B FF 00 0C */	addi r31, r31, 0xc
/* 8136BC78 | 93 DB 00 08 */	stw r30, 0x8(r27)
/* 8136BC7C | 41 80 FF C8 */	blt .L_8136BC44
/* 8136BC80 | 80 6D A7 4C */	lwz r3, _mainBGMHandle__Q23ipl3snd@sda21(r0)
/* 8136BC84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136BC88 | 41 82 00 28 */	beq .L_8136BCB0
/* 8136BC8C | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8136BC90 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136BC94 | 41 82 00 1C */	beq .L_8136BCB0
/* 8136BC98 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8136BC9C | 38 80 00 00 */	li r4, 0x0
/* 8136BCA0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136BCA4 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8136BCA8 | 7D 89 03 A6 */	mtctr r12
/* 8136BCAC | 4E 80 04 21 */	bctrl
.L_8136BCB0:
/* 8136BCB0 | 3F E0 81 09 */	lis r31, sBannerSoundPlayer__Q23ipl3snd@ha
/* 8136BCB4 | 38 80 00 00 */	li r4, 0x0
/* 8136BCB8 | 38 7F 9F 68 */	addi r3, r31, sBannerSoundPlayer__Q23ipl3snd@l
/* 8136BCBC | 48 0A 2C 5D */	bl stop__17BannerSoundPlayerFUl
/* 8136BCC0 | 48 18 B9 0D */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 8136BCC4 | 38 80 00 00 */	li r4, 0x0
/* 8136BCC8 | 38 A0 00 00 */	li r5, 0x0
/* 8136BCCC | 48 18 C8 65 */	bl ClearEffect__Q44nw4r3snd6detail9AxManagerFQ34nw4r3snd6AuxBusi
/* 8136BCD0 | 48 18 B8 FD */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 8136BCD4 | 38 80 00 01 */	li r4, 0x1
/* 8136BCD8 | 38 A0 00 00 */	li r5, 0x0
/* 8136BCDC | 48 18 C8 55 */	bl ClearEffect__Q44nw4r3snd6detail9AxManagerFQ34nw4r3snd6AuxBusi
/* 8136BCE0 | 48 18 B8 ED */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 8136BCE4 | 38 80 00 02 */	li r4, 0x2
/* 8136BCE8 | 38 A0 00 00 */	li r5, 0x0
/* 8136BCEC | 48 18 C8 45 */	bl ClearEffect__Q44nw4r3snd6detail9AxManagerFQ34nw4r3snd6AuxBusi
/* 8136BCF0 | 48 18 B8 DD */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 8136BCF4 | C0 22 82 A4 */	lfs f1, lbl_816946A4@sda21(r0)
/* 8136BCF8 | 38 80 00 00 */	li r4, 0x0
/* 8136BCFC | 48 18 C4 C5 */	bl SetMasterVolume__Q44nw4r3snd6detail9AxManagerFfi
/* 8136BD00 | C0 22 82 A4 */	lfs f1, lbl_816946A4@sda21(r0)
/* 8136BD04 | 38 7F 9F 68 */	addi r3, r31, sBannerSoundPlayer__Q23ipl3snd@l
/* 8136BD08 | 48 0A 2E 41 */	bl setMasterVolume__17BannerSoundPlayerFf
/* 8136BD0C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136BD10 | 48 28 D7 F9 */	bl _restgpr_26
/* 8136BD14 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136BD18 | 7C 08 03 A6 */	mtlr r0
/* 8136BD1C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8136BD20 | 4E 80 00 20 */	blr
.endfn resetAllSound__Q33ipl3snd6SystemFv

# .text:0xAC8 | 0x8136BD24 | size: 0x34
# ipl::snd::System::muteOnBGM(int)
.fn muteOnBGM__Q33ipl3snd6SystemFi, global
/* 8136BD24 | 80 6D A7 4C */	lwz r3, _mainBGMHandle__Q23ipl3snd@sda21(r0)
/* 8136BD28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136BD2C | 4D 82 00 20 */	beqlr
/* 8136BD30 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8136BD34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136BD38 | 4D 82 00 20 */	beqlr
/* 8136BD3C | 4D 82 00 20 */	beqlr
/* 8136BD40 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136BD44 | C0 22 82 A4 */	lfs f1, lbl_816946A4@sda21(r0)
/* 8136BD48 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8136BD4C | 7D 89 03 A6 */	mtctr r12
/* 8136BD50 | 4E 80 04 20 */	bctr
/* 8136BD54 | 4E 80 00 20 */	blr
.endfn muteOnBGM__Q33ipl3snd6SystemFi

# .text:0xAFC | 0x8136BD58 | size: 0x34
# ipl::snd::System::muteOffBGM(int)
.fn muteOffBGM__Q33ipl3snd6SystemFi, global
/* 8136BD58 | 80 6D A7 4C */	lwz r3, _mainBGMHandle__Q23ipl3snd@sda21(r0)
/* 8136BD5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136BD60 | 4D 82 00 20 */	beqlr
/* 8136BD64 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8136BD68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136BD6C | 4D 82 00 20 */	beqlr
/* 8136BD70 | 4D 82 00 20 */	beqlr
/* 8136BD74 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136BD78 | C0 22 82 AC */	lfs f1, lbl_816946AC@sda21(r0)
/* 8136BD7C | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8136BD80 | 7D 89 03 A6 */	mtctr r12
/* 8136BD84 | 4E 80 04 20 */	bctr
/* 8136BD88 | 4E 80 00 20 */	blr
.endfn muteOffBGM__Q33ipl3snd6SystemFi

# .text:0xB30 | 0x8136BD8C | size: 0xA8
# ipl::snd::System::pauseOnBGM()
.fn pauseOnBGM__Q33ipl3snd6SystemFv, global
/* 8136BD8C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136BD90 | 7C 08 02 A6 */	mflr r0
/* 8136BD94 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136BD98 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136BD9C | 7C 7F 1B 78 */	mr r31, r3
/* 8136BDA0 | 80 8D A7 4C */	lwz r4, _mainBGMHandle__Q23ipl3snd@sda21(r0)
/* 8136BDA4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8136BDA8 | 41 82 00 78 */	beq .L_8136BE20
/* 8136BDAC | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 8136BDB0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136BDB4 | 41 82 00 24 */	beq .L_8136BDD8
/* 8136BDB8 | 41 82 00 20 */	beq .L_8136BDD8
/* 8136BDBC | 80 64 00 00 */	lwz r3, 0x0(r4)
/* 8136BDC0 | 38 80 00 01 */	li r4, 0x1
/* 8136BDC4 | 38 A0 00 05 */	li r5, 0x5
/* 8136BDC8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136BDCC | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8136BDD0 | 7D 89 03 A6 */	mtctr r12
/* 8136BDD4 | 4E 80 04 21 */	bctrl
.L_8136BDD8:
/* 8136BDD8 | 7F E3 FB 78 */	mr r3, r31
/* 8136BDDC | 48 00 00 D9 */	bl pauseOnSE__Q33ipl3snd6SystemFv
/* 8136BDE0 | 3C 60 81 09 */	lis r3, sBannerSoundPlayer__Q23ipl3snd@ha
/* 8136BDE4 | 38 80 00 01 */	li r4, 0x1
/* 8136BDE8 | 38 63 9F 68 */	addi r3, r3, sBannerSoundPlayer__Q23ipl3snd@l
/* 8136BDEC | 48 0A 2B DD */	bl pause__17BannerSoundPlayerFb
/* 8136BDF0 | 48 18 B7 DD */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 8136BDF4 | 38 80 00 00 */	li r4, 0x0
/* 8136BDF8 | 38 A0 00 FA */	li r5, 0xfa
/* 8136BDFC | 48 18 C7 35 */	bl ClearEffect__Q44nw4r3snd6detail9AxManagerFQ34nw4r3snd6AuxBusi
/* 8136BE00 | 48 18 B7 CD */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 8136BE04 | 38 80 00 01 */	li r4, 0x1
/* 8136BE08 | 38 A0 00 FA */	li r5, 0xfa
/* 8136BE0C | 48 18 C7 25 */	bl ClearEffect__Q44nw4r3snd6detail9AxManagerFQ34nw4r3snd6AuxBusi
/* 8136BE10 | 48 18 B7 BD */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 8136BE14 | 38 80 00 02 */	li r4, 0x2
/* 8136BE18 | 38 A0 00 FA */	li r5, 0xfa
/* 8136BE1C | 48 18 C7 15 */	bl ClearEffect__Q44nw4r3snd6detail9AxManagerFQ34nw4r3snd6AuxBusi
.L_8136BE20:
/* 8136BE20 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136BE24 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136BE28 | 7C 08 03 A6 */	mtlr r0
/* 8136BE2C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136BE30 | 4E 80 00 20 */	blr
.endfn pauseOnBGM__Q33ipl3snd6SystemFv

# .text:0xBD8 | 0x8136BE34 | size: 0x80
# ipl::snd::System::pauseOffBGM()
.fn pauseOffBGM__Q33ipl3snd6SystemFv, global
/* 8136BE34 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136BE38 | 7C 08 02 A6 */	mflr r0
/* 8136BE3C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136BE40 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136BE44 | 7C 7F 1B 78 */	mr r31, r3
/* 8136BE48 | 80 0D A7 4C */	lwz r0, _mainBGMHandle__Q23ipl3snd@sda21(r0)
/* 8136BE4C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136BE50 | 41 82 00 50 */	beq .L_8136BEA0
/* 8136BE54 | 4B FF F5 29 */	bl initFx__Q33ipl3snd6SystemFv
/* 8136BE58 | 80 6D A7 4C */	lwz r3, _mainBGMHandle__Q23ipl3snd@sda21(r0)
/* 8136BE5C | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8136BE60 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136BE64 | 41 82 00 24 */	beq .L_8136BE88
/* 8136BE68 | 41 82 00 20 */	beq .L_8136BE88
/* 8136BE6C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8136BE70 | 38 80 00 00 */	li r4, 0x0
/* 8136BE74 | 38 A0 00 05 */	li r5, 0x5
/* 8136BE78 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136BE7C | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8136BE80 | 7D 89 03 A6 */	mtctr r12
/* 8136BE84 | 4E 80 04 21 */	bctrl
.L_8136BE88:
/* 8136BE88 | 7F E3 FB 78 */	mr r3, r31
/* 8136BE8C | 48 00 00 9D */	bl pauseOffSE__Q33ipl3snd6SystemFv
/* 8136BE90 | 3C 60 81 09 */	lis r3, sBannerSoundPlayer__Q23ipl3snd@ha
/* 8136BE94 | 38 80 00 00 */	li r4, 0x0
/* 8136BE98 | 38 63 9F 68 */	addi r3, r3, sBannerSoundPlayer__Q23ipl3snd@l
/* 8136BE9C | 48 0A 2B 2D */	bl pause__17BannerSoundPlayerFb
.L_8136BEA0:
/* 8136BEA0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136BEA4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136BEA8 | 7C 08 03 A6 */	mtlr r0
/* 8136BEAC | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136BEB0 | 4E 80 00 20 */	blr
.endfn pauseOffBGM__Q33ipl3snd6SystemFv

# .text:0xC58 | 0x8136BEB4 | size: 0x74
# ipl::snd::System::pauseOnSE()
.fn pauseOnSE__Q33ipl3snd6SystemFv, global
/* 8136BEB4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136BEB8 | 7C 08 02 A6 */	mflr r0
/* 8136BEBC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8136BEC0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136BEC4 | 48 28 D6 05 */	bl _savegpr_29
/* 8136BEC8 | 3F C0 81 09 */	lis r30, _seBlk__Q23ipl3snd@ha
/* 8136BECC | 3B A0 00 00 */	li r29, 0x0
/* 8136BED0 | 3B DE 98 54 */	addi r30, r30, _seBlk__Q23ipl3snd@l
/* 8136BED4 | 3B E0 00 00 */	li r31, 0x0
.L_8136BED8:
/* 8136BED8 | 7C 7E F8 2E */	lwzx r3, r30, r31
/* 8136BEDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136BEE0 | 41 82 00 20 */	beq .L_8136BF00
/* 8136BEE4 | 41 82 00 1C */	beq .L_8136BF00
/* 8136BEE8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136BEEC | 38 80 00 01 */	li r4, 0x1
/* 8136BEF0 | 38 A0 00 05 */	li r5, 0x5
/* 8136BEF4 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8136BEF8 | 7D 89 03 A6 */	mtctr r12
/* 8136BEFC | 4E 80 04 21 */	bctrl
.L_8136BF00:
/* 8136BF00 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 8136BF04 | 3B FF 00 0C */	addi r31, r31, 0xc
/* 8136BF08 | 2C 1D 00 10 */	cmpwi r29, 0x10
/* 8136BF0C | 41 80 FF CC */	blt .L_8136BED8
/* 8136BF10 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136BF14 | 48 28 D6 01 */	bl _restgpr_29
/* 8136BF18 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136BF1C | 7C 08 03 A6 */	mtlr r0
/* 8136BF20 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8136BF24 | 4E 80 00 20 */	blr
.endfn pauseOnSE__Q33ipl3snd6SystemFv

# .text:0xCCC | 0x8136BF28 | size: 0x74
# ipl::snd::System::pauseOffSE()
.fn pauseOffSE__Q33ipl3snd6SystemFv, global
/* 8136BF28 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136BF2C | 7C 08 02 A6 */	mflr r0
/* 8136BF30 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8136BF34 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136BF38 | 48 28 D5 91 */	bl _savegpr_29
/* 8136BF3C | 3F C0 81 09 */	lis r30, _seBlk__Q23ipl3snd@ha
/* 8136BF40 | 3B A0 00 00 */	li r29, 0x0
/* 8136BF44 | 3B DE 98 54 */	addi r30, r30, _seBlk__Q23ipl3snd@l
/* 8136BF48 | 3B E0 00 00 */	li r31, 0x0
.L_8136BF4C:
/* 8136BF4C | 7C 7E F8 2E */	lwzx r3, r30, r31
/* 8136BF50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136BF54 | 41 82 00 20 */	beq .L_8136BF74
/* 8136BF58 | 41 82 00 1C */	beq .L_8136BF74
/* 8136BF5C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136BF60 | 38 80 00 00 */	li r4, 0x0
/* 8136BF64 | 38 A0 00 05 */	li r5, 0x5
/* 8136BF68 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8136BF6C | 7D 89 03 A6 */	mtctr r12
/* 8136BF70 | 4E 80 04 21 */	bctrl
.L_8136BF74:
/* 8136BF74 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 8136BF78 | 3B FF 00 0C */	addi r31, r31, 0xc
/* 8136BF7C | 2C 1D 00 10 */	cmpwi r29, 0x10
/* 8136BF80 | 41 80 FF CC */	blt .L_8136BF4C
/* 8136BF84 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136BF88 | 48 28 D5 8D */	bl _restgpr_29
/* 8136BF8C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136BF90 | 7C 08 03 A6 */	mtlr r0
/* 8136BF94 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8136BF98 | 4E 80 00 20 */	blr
.endfn pauseOffSE__Q33ipl3snd6SystemFv

# .text:0xD40 | 0x8136BF9C | size: 0x70
# ipl::snd::System::setOutputMode(ipl::snd::EAudioOutputMode)
.fn setOutputMode__Q33ipl3snd6SystemFQ33ipl3snd16EAudioOutputMode, global
/* 8136BF9C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136BFA0 | 7C 08 02 A6 */	mflr r0
/* 8136BFA4 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 8136BFA8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136BFAC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136BFB0 | 41 82 00 28 */	beq .L_8136BFD8
/* 8136BFB4 | 40 80 00 10 */	bge .L_8136BFC4
/* 8136BFB8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8136BFBC | 40 80 00 14 */	bge .L_8136BFD0
/* 8136BFC0 | 48 00 00 38 */	b .L_8136BFF8
.L_8136BFC4:
/* 8136BFC4 | 2C 04 00 03 */	cmpwi r4, 0x3
/* 8136BFC8 | 40 80 00 30 */	bge .L_8136BFF8
/* 8136BFCC | 48 00 00 14 */	b .L_8136BFE0
.L_8136BFD0:
/* 8136BFD0 | 3B E0 00 00 */	li r31, 0x0
/* 8136BFD4 | 48 00 00 18 */	b .L_8136BFEC
.L_8136BFD8:
/* 8136BFD8 | 3B E0 00 01 */	li r31, 0x1
/* 8136BFDC | 48 00 00 10 */	b .L_8136BFEC
.L_8136BFE0:
/* 8136BFE0 | 3B E0 00 03 */	li r31, 0x3
/* 8136BFE4 | 48 00 00 08 */	b .L_8136BFEC
/* 8136BFE8 | 48 00 00 10 */	b .L_8136BFF8
.L_8136BFEC:
/* 8136BFEC | 48 18 B5 E1 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 8136BFF0 | 7F E4 FB 78 */	mr r4, r31
/* 8136BFF4 | 48 18 BB A1 */	bl SetOutputMode__Q44nw4r3snd6detail9AxManagerFQ34nw4r3snd10OutputMode
.L_8136BFF8:
/* 8136BFF8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136BFFC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136C000 | 7C 08 03 A6 */	mtlr r0
/* 8136C004 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136C008 | 4E 80 00 20 */	blr
.endfn setOutputMode__Q33ipl3snd6SystemFQ33ipl3snd16EAudioOutputMode

# .text:0xDB0 | 0x8136C00C | size: 0x28
# ipl::snd::System::isSEActive(const char*)
.fn isSEActive__Q33ipl3snd6SystemFPCc, global
/* 8136C00C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136C010 | 7C 08 02 A6 */	mflr r0
/* 8136C014 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136C018 | 48 00 00 1D */	bl FIsSEActive__Q33ipl3snd6SystemFPCc
/* 8136C01C | 30 03 FF FF */	subic r0, r3, 0x1
/* 8136C020 | 7C 60 19 10 */	subfe r3, r0, r3
/* 8136C024 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136C028 | 7C 08 03 A6 */	mtlr r0
/* 8136C02C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136C030 | 4E 80 00 20 */	blr
.endfn isSEActive__Q33ipl3snd6SystemFPCc

# .text:0xDD8 | 0x8136C034 | size: 0x40
# ipl::snd::System::FIsSEActive(const char*)
.fn FIsSEActive__Q33ipl3snd6SystemFPCc, global
/* 8136C034 | 3C C0 81 09 */	lis r6, _seBlk__Q23ipl3snd@ha
/* 8136C038 | 38 00 00 10 */	li r0, 0x10
/* 8136C03C | 38 C6 98 54 */	addi r6, r6, _seBlk__Q23ipl3snd@l
/* 8136C040 | 38 A0 00 00 */	li r5, 0x0
/* 8136C044 | 7C 09 03 A6 */	mtctr r0
.L_8136C048:
/* 8136C048 | 7C 66 2A 14 */	add r3, r6, r5
/* 8136C04C | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8136C050 | 7C 04 00 40 */	cmplw r4, r0
/* 8136C054 | 40 82 00 10 */	bne .L_8136C064
/* 8136C058 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8136C05C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136C060 | 4C 82 00 20 */	bnelr
.L_8136C064:
/* 8136C064 | 38 A5 00 0C */	addi r5, r5, 0xc
/* 8136C068 | 42 00 FF E0 */	bdnz .L_8136C048
/* 8136C06C | 38 60 00 00 */	li r3, 0x0
/* 8136C070 | 4E 80 00 20 */	blr
.endfn FIsSEActive__Q33ipl3snd6SystemFPCc

# .text:0xE18 | 0x8136C074 | size: 0x40
# ipl::snd::System::FIsSEActive(unsigned long)
.fn FIsSEActive__Q33ipl3snd6SystemFUl, global
/* 8136C074 | 3C C0 81 09 */	lis r6, _seBlk__Q23ipl3snd@ha
/* 8136C078 | 38 00 00 10 */	li r0, 0x10
/* 8136C07C | 38 C6 98 54 */	addi r6, r6, _seBlk__Q23ipl3snd@l
/* 8136C080 | 38 A0 00 00 */	li r5, 0x0
/* 8136C084 | 7C 09 03 A6 */	mtctr r0
.L_8136C088:
/* 8136C088 | 7C 66 2A 14 */	add r3, r6, r5
/* 8136C08C | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 8136C090 | 7C 04 00 40 */	cmplw r4, r0
/* 8136C094 | 40 82 00 10 */	bne .L_8136C0A4
/* 8136C098 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8136C09C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136C0A0 | 4C 82 00 20 */	bnelr
.L_8136C0A4:
/* 8136C0A4 | 38 A5 00 0C */	addi r5, r5, 0xc
/* 8136C0A8 | 42 00 FF E0 */	bdnz .L_8136C088
/* 8136C0AC | 38 60 00 00 */	li r3, 0x0
/* 8136C0B0 | 4E 80 00 20 */	blr
.endfn FIsSEActive__Q33ipl3snd6SystemFUl

# .text:0xE58 | 0x8136C0B4 | size: 0x28
# ipl::snd::System::isSEActive(unsigned long)
.fn isSEActive__Q33ipl3snd6SystemFUl, global
/* 8136C0B4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136C0B8 | 7C 08 02 A6 */	mflr r0
/* 8136C0BC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136C0C0 | 4B FF FF B5 */	bl FIsSEActive__Q33ipl3snd6SystemFUl
/* 8136C0C4 | 30 03 FF FF */	subic r0, r3, 0x1
/* 8136C0C8 | 7C 60 19 10 */	subfe r3, r0, r3
/* 8136C0CC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136C0D0 | 7C 08 03 A6 */	mtlr r0
/* 8136C0D4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136C0D8 | 4E 80 00 20 */	blr
.endfn isSEActive__Q33ipl3snd6SystemFUl

# .text:0xE80 | 0x8136C0DC | size: 0xBC
# ipl::snd::System::getFreeSEBlock(bool)
.fn getFreeSEBlock__Q33ipl3snd6SystemFb, global
/* 8136C0DC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136C0E0 | 7C 08 02 A6 */	mflr r0
/* 8136C0E4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8136C0E8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136C0EC | 48 28 D3 D9 */	bl _savegpr_28
/* 8136C0F0 | 80 C3 06 20 */	lwz r6, 0x620(r3)
/* 8136C0F4 | 7C 9D 23 78 */	mr r29, r4
/* 8136C0F8 | 7C 7C 1B 78 */	mr r28, r3
/* 8136C0FC | 38 A0 00 00 */	li r5, 0x0
/* 8136C100 | 38 86 00 01 */	addi r4, r6, 0x1
/* 8136C104 | 38 C0 00 10 */	li r6, 0x10
/* 8136C108 | 48 00 01 0D */	bl clipGELT_S32__Q33ipl3snd6SystemFlll
/* 8136C10C | 3F E0 81 09 */	lis r31, _seBlk__Q23ipl3snd@ha
/* 8136C110 | 90 7C 06 20 */	stw r3, 0x620(r28)
/* 8136C114 | 3B FF 98 54 */	addi r31, r31, _seBlk__Q23ipl3snd@l
/* 8136C118 | 3B C0 00 00 */	li r30, 0x0
.L_8136C11C:
/* 8136C11C | 80 1C 06 20 */	lwz r0, 0x620(r28)
/* 8136C120 | 7F 83 E3 78 */	mr r3, r28
/* 8136C124 | 38 A0 00 00 */	li r5, 0x0
/* 8136C128 | 38 C0 00 10 */	li r6, 0x10
/* 8136C12C | 7C 80 F2 14 */	add r4, r0, r30
/* 8136C130 | 48 00 00 E5 */	bl clipGELT_S32__Q33ipl3snd6SystemFlll
/* 8136C134 | 1C 83 00 0C */	mulli r4, r3, 0xc
/* 8136C138 | 7C 1F 20 2E */	lwzx r0, r31, r4
/* 8136C13C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136C140 | 40 82 00 10 */	bne .L_8136C150
/* 8136C144 | 90 7C 06 20 */	stw r3, 0x620(r28)
/* 8136C148 | 7C 7F 22 14 */	add r3, r31, r4
/* 8136C14C | 48 00 00 34 */	b .L_8136C180
.L_8136C150:
/* 8136C150 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8136C154 | 2C 1E 00 10 */	cmpwi r30, 0x10
/* 8136C158 | 41 80 FF C4 */	blt .L_8136C11C
/* 8136C15C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8136C160 | 41 82 00 1C */	beq .L_8136C17C
/* 8136C164 | 80 1C 06 20 */	lwz r0, 0x620(r28)
/* 8136C168 | 3C 60 81 09 */	lis r3, _seBlk__Q23ipl3snd@ha
/* 8136C16C | 38 63 98 54 */	addi r3, r3, _seBlk__Q23ipl3snd@l
/* 8136C170 | 1C 00 00 0C */	mulli r0, r0, 0xc
/* 8136C174 | 7C 63 02 14 */	add r3, r3, r0
/* 8136C178 | 48 00 00 08 */	b .L_8136C180
.L_8136C17C:
/* 8136C17C | 38 60 00 00 */	li r3, 0x0
.L_8136C180:
/* 8136C180 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136C184 | 48 28 D3 8D */	bl _restgpr_28
/* 8136C188 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136C18C | 7C 08 03 A6 */	mtlr r0
/* 8136C190 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8136C194 | 4E 80 00 20 */	blr
.endfn getFreeSEBlock__Q33ipl3snd6SystemFb

# .text:0xF3C | 0x8136C198 | size: 0x60
# ipl::snd::System::startBannerSound(void*, unsigned long, bool)
.fn startBannerSound__Q33ipl3snd6SystemFPvUlb, global
/* 8136C198 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136C19C | 7C 08 02 A6 */	mflr r0
/* 8136C1A0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8136C1A4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136C1A8 | 48 28 D3 21 */	bl _savegpr_29
/* 8136C1AC | 3F E0 81 09 */	lis r31, sBannerSoundPlayer__Q23ipl3snd@ha
/* 8136C1B0 | 7C 9D 23 78 */	mr r29, r4
/* 8136C1B4 | 7C BE 2B 78 */	mr r30, r5
/* 8136C1B8 | 38 7F 9F 68 */	addi r3, r31, sBannerSoundPlayer__Q23ipl3snd@l
/* 8136C1BC | 48 0A 25 FD */	bl checkData__17BannerSoundPlayerFPvUlb
/* 8136C1C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136C1C4 | 40 82 00 0C */	bne .L_8136C1D0
/* 8136C1C8 | 38 60 00 00 */	li r3, 0x0
/* 8136C1CC | 48 00 00 14 */	b .L_8136C1E0
.L_8136C1D0:
/* 8136C1D0 | 7F A4 EB 78 */	mr r4, r29
/* 8136C1D4 | 7F C5 F3 78 */	mr r5, r30
/* 8136C1D8 | 38 7F 9F 68 */	addi r3, r31, sBannerSoundPlayer__Q23ipl3snd@l
/* 8136C1DC | 48 0A 26 25 */	bl start__17BannerSoundPlayerFPvUl
.L_8136C1E0:
/* 8136C1E0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136C1E4 | 48 28 D3 31 */	bl _restgpr_29
/* 8136C1E8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136C1EC | 7C 08 03 A6 */	mtlr r0
/* 8136C1F0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8136C1F4 | 4E 80 00 20 */	blr
.endfn startBannerSound__Q33ipl3snd6SystemFPvUlb

# .text:0xF9C | 0x8136C1F8 | size: 0xC
# ipl::snd::System::stopBannerSound(int)
.fn stopBannerSound__Q33ipl3snd6SystemFi, global
/* 8136C1F8 | 3C 60 81 09 */	lis r3, sBannerSoundPlayer__Q23ipl3snd@ha
/* 8136C1FC | 38 63 9F 68 */	addi r3, r3, sBannerSoundPlayer__Q23ipl3snd@l
/* 8136C200 | 48 0A 27 18 */	b stop__17BannerSoundPlayerFUl
.endfn stopBannerSound__Q33ipl3snd6SystemFi

# .text:0xFA8 | 0x8136C204 | size: 0x10
# ipl::snd::System::checkTmpSoundFile(void*, unsigned long)
.fn checkTmpSoundFile__Q33ipl3snd6SystemFPvUl, global
/* 8136C204 | 3C 60 81 09 */	lis r3, sBannerSoundPlayer__Q23ipl3snd@ha
/* 8136C208 | 38 C0 00 00 */	li r6, 0x0
/* 8136C20C | 38 63 9F 68 */	addi r3, r3, sBannerSoundPlayer__Q23ipl3snd@l
/* 8136C210 | 48 0A 25 A8 */	b checkData__17BannerSoundPlayerFPvUlb
.endfn checkTmpSoundFile__Q33ipl3snd6SystemFPvUl

# .text:0xFB8 | 0x8136C214 | size: 0x3C
# ipl::snd::System::clipGELT_S32(long, long, long)
.fn clipGELT_S32__Q33ipl3snd6SystemFlll, global
/* 8136C214 | 7C 05 30 51 */	subf. r0, r5, r6
/* 8136C218 | 40 80 00 14 */	bge .L_8136C22C
/* 8136C21C | 7C A0 2B 78 */	mr r0, r5
/* 8136C220 | 7C C5 33 78 */	mr r5, r6
/* 8136C224 | 7C 06 03 78 */	mr r6, r0
/* 8136C228 | 7C 05 00 50 */	subf r0, r5, r0
.L_8136C22C:
/* 8136C22C | 7C 04 28 00 */	cmpw r4, r5
/* 8136C230 | 40 80 00 0C */	bge .L_8136C23C
/* 8136C234 | 7C 84 02 14 */	add r4, r4, r0
/* 8136C238 | 48 00 00 10 */	b .L_8136C248
.L_8136C23C:
/* 8136C23C | 7C 04 30 00 */	cmpw r4, r6
/* 8136C240 | 41 80 00 08 */	blt .L_8136C248
/* 8136C244 | 7C 80 20 50 */	subf r4, r0, r4
.L_8136C248:
/* 8136C248 | 7C 83 23 78 */	mr r3, r4
/* 8136C24C | 4E 80 00 20 */	blr
.endfn clipGELT_S32__Q33ipl3snd6SystemFlll

# .text:0xFF4 | 0x8136C250 | size: 0x8
# EGG::SoundHeapMgr::getCurrentLevel()
.fn getCurrentLevel__Q23EGG12SoundHeapMgrFv, global
/* 8136C250 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8136C254 | 48 00 00 04 */	b GetCurrentLevel__Q34nw4r3snd9SoundHeapCFv
.endfn getCurrentLevel__Q23EGG12SoundHeapMgrFv

# .text:0xFFC | 0x8136C258 | size: 0x50
# nw4r::snd::SoundHeap::GetCurrentLevel() const
.fn GetCurrentLevel__Q34nw4r3snd9SoundHeapCFv, global
/* 8136C258 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136C25C | 7C 08 02 A6 */	mflr r0
/* 8136C260 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8136C264 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8136C268 | 7C 7F 1B 78 */	mr r31, r3
/* 8136C26C | 38 61 00 08 */	addi r3, r1, 0x8
/* 8136C270 | 38 9F 00 04 */	addi r4, r31, 0x4
/* 8136C274 | 48 00 00 35 */	bl "__ct__Q44nw4r2ut6detail18AutoLock<7OSMutex>FR7OSMutex"
/* 8136C278 | 38 7F 00 1C */	addi r3, r31, 0x1c
/* 8136C27C | 48 19 3A A5 */	bl GetCurrentLevel__Q44nw4r3snd6detail9FrameHeapCFv
/* 8136C280 | 7C 7F 1B 78 */	mr r31, r3
/* 8136C284 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8136C288 | 38 80 FF FF */	li r4, -0x1
/* 8136C28C | 48 00 00 55 */	bl "__dt__Q44nw4r2ut6detail18AutoLock<7OSMutex>Fv"
/* 8136C290 | 7F E3 FB 78 */	mr r3, r31
/* 8136C294 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8136C298 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136C29C | 7C 08 03 A6 */	mtlr r0
/* 8136C2A0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8136C2A4 | 4E 80 00 20 */	blr
.endfn GetCurrentLevel__Q34nw4r3snd9SoundHeapCFv

# .text:0x104C | 0x8136C2A8 | size: 0x38
# nw4r::ut::detail::AutoLock<OSMutex>::AutoLock(OSMutex&)
.fn "__ct__Q44nw4r2ut6detail18AutoLock<7OSMutex>FR7OSMutex", global
/* 8136C2A8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136C2AC | 7C 08 02 A6 */	mflr r0
/* 8136C2B0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136C2B4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136C2B8 | 7C 7F 1B 78 */	mr r31, r3
/* 8136C2BC | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8136C2C0 | 7C 83 23 78 */	mr r3, r4
/* 8136C2C4 | 48 1C 59 45 */	bl fn_81531C08
/* 8136C2C8 | 7F E3 FB 78 */	mr r3, r31
/* 8136C2CC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136C2D0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136C2D4 | 7C 08 03 A6 */	mtlr r0
/* 8136C2D8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136C2DC | 4E 80 00 20 */	blr
.endfn "__ct__Q44nw4r2ut6detail18AutoLock<7OSMutex>FR7OSMutex"

# .text:0x1084 | 0x8136C2E0 | size: 0x58
# nw4r::ut::detail::AutoLock<OSMutex>::~AutoLock()
.fn "__dt__Q44nw4r2ut6detail18AutoLock<7OSMutex>Fv", global
/* 8136C2E0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136C2E4 | 7C 08 02 A6 */	mflr r0
/* 8136C2E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136C2EC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136C2F0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136C2F4 | 7C 9F 23 78 */	mr r31, r4
/* 8136C2F8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8136C2FC | 7C 7E 1B 78 */	mr r30, r3
/* 8136C300 | 41 82 00 1C */	beq .L_8136C31C
/* 8136C304 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8136C308 | 48 1C 59 DD */	bl fn_81531CE4
/* 8136C30C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8136C310 | 40 81 00 0C */	ble .L_8136C31C
/* 8136C314 | 7F C3 F3 78 */	mr r3, r30
/* 8136C318 | 48 28 BD CD */	bl __dl__FPv
.L_8136C31C:
/* 8136C31C | 7F C3 F3 78 */	mr r3, r30
/* 8136C320 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136C324 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8136C328 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136C32C | 7C 08 03 A6 */	mtlr r0
/* 8136C330 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136C334 | 4E 80 00 20 */	blr
.endfn "__dt__Q44nw4r2ut6detail18AutoLock<7OSMutex>Fv"

# .text:0x10DC | 0x8136C338 | size: 0x7C
# EGG::SoundHeapMgr::loadState(long)
.fn loadState__Q23EGG12SoundHeapMgrFl, global
/* 8136C338 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136C33C | 7C 08 02 A6 */	mflr r0
/* 8136C340 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8136C344 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8136C348 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8136C34C | 7C 9F 23 78 */	mr r31, r4
/* 8136C350 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8136C354 | 7C 7E 1B 78 */	mr r30, r3
/* 8136C358 | 40 81 00 40 */	ble .L_8136C398
/* 8136C35C | 38 63 00 04 */	addi r3, r3, 0x4
/* 8136C360 | 4B FF FE F9 */	bl GetCurrentLevel__Q34nw4r3snd9SoundHeapCFv
/* 8136C364 | 7C 03 F8 00 */	cmpw r3, r31
/* 8136C368 | 41 80 00 30 */	blt .L_8136C398
/* 8136C36C | 38 61 00 08 */	addi r3, r1, 0x8
/* 8136C370 | 38 9E 00 08 */	addi r4, r30, 0x8
/* 8136C374 | 4B FF FF 35 */	bl "__ct__Q44nw4r2ut6detail18AutoLock<7OSMutex>FR7OSMutex"
/* 8136C378 | 7F E4 FB 78 */	mr r4, r31
/* 8136C37C | 38 7E 00 20 */	addi r3, r30, 0x20
/* 8136C380 | 48 19 37 7D */	bl LoadState__Q44nw4r3snd6detail9FrameHeapFi
/* 8136C384 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8136C388 | 38 80 FF FF */	li r4, -0x1
/* 8136C38C | 4B FF FF 55 */	bl "__dt__Q44nw4r2ut6detail18AutoLock<7OSMutex>Fv"
/* 8136C390 | 38 60 00 01 */	li r3, 0x1
/* 8136C394 | 48 00 00 08 */	b .L_8136C39C
.L_8136C398:
/* 8136C398 | 38 60 00 00 */	li r3, 0x0
.L_8136C39C:
/* 8136C39C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136C3A0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8136C3A4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8136C3A8 | 7C 08 03 A6 */	mtlr r0
/* 8136C3AC | 38 21 00 20 */	addi r1, r1, 0x20
/* 8136C3B0 | 4E 80 00 20 */	blr
.endfn loadState__Q23EGG12SoundHeapMgrFl

# .text:0x1158 | 0x8136C3B4 | size: 0x38
# EGG::ArcPlayer::holdSound(nw4r::snd::SoundHandle*, unsigned long)
.fn holdSound__Q23EGG9ArcPlayerFPQ34nw4r3snd11SoundHandleUl, global
/* 8136C3B4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136C3B8 | 7C 08 02 A6 */	mflr r0
/* 8136C3BC | 38 C0 00 00 */	li r6, 0x0
/* 8136C3C0 | 38 E0 00 00 */	li r7, 0x0
/* 8136C3C4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136C3C8 | 39 00 00 00 */	li r8, 0x0
/* 8136C3CC | 38 63 04 D0 */	addi r3, r3, 0x4d0
/* 8136C3D0 | 48 19 F8 D5 */	bl detail_HoldSound__Q34nw4r3snd14SoundStartableFPQ34nw4r3snd11SoundHandleUlPQ54nw4r3snd6detail10BasicSound14AmbientArgInfoPQ44nw4r3snd6detail19ExternalSoundPlayerPCQ44nw4r3snd14SoundStartable9StartInfo
/* 8136C3D4 | 7C 60 00 34 */	cntlzw r0, r3
/* 8136C3D8 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8136C3DC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136C3E0 | 7C 08 03 A6 */	mtlr r0
/* 8136C3E4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136C3E8 | 4E 80 00 20 */	blr
.endfn holdSound__Q23EGG9ArcPlayerFPQ34nw4r3snd11SoundHandleUl

# .text:0x1190 | 0x8136C3EC | size: 0x38
# EGG::ArcPlayer::holdSound(nw4r::snd::SoundHandle*, unsigned int)
.fn holdSound__Q23EGG9ArcPlayerFPQ34nw4r3snd11SoundHandleUi, global
/* 8136C3EC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136C3F0 | 7C 08 02 A6 */	mflr r0
/* 8136C3F4 | 38 C0 00 00 */	li r6, 0x0
/* 8136C3F8 | 38 E0 00 00 */	li r7, 0x0
/* 8136C3FC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136C400 | 39 00 00 00 */	li r8, 0x0
/* 8136C404 | 38 63 04 D0 */	addi r3, r3, 0x4d0
/* 8136C408 | 48 19 F8 9D */	bl detail_HoldSound__Q34nw4r3snd14SoundStartableFPQ34nw4r3snd11SoundHandleUlPQ54nw4r3snd6detail10BasicSound14AmbientArgInfoPQ44nw4r3snd6detail19ExternalSoundPlayerPCQ44nw4r3snd14SoundStartable9StartInfo
/* 8136C40C | 7C 60 00 34 */	cntlzw r0, r3
/* 8136C410 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8136C414 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136C418 | 7C 08 03 A6 */	mtlr r0
/* 8136C41C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136C420 | 4E 80 00 20 */	blr
.endfn holdSound__Q23EGG9ArcPlayerFPQ34nw4r3snd11SoundHandleUi

# .text:0x11C8 | 0x8136C424 | size: 0x38
# EGG::ArcPlayer::prepareSound(nw4r::snd::SoundHandle*, unsigned long)
.fn prepareSound__Q23EGG9ArcPlayerFPQ34nw4r3snd11SoundHandleUl, global
/* 8136C424 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136C428 | 7C 08 02 A6 */	mflr r0
/* 8136C42C | 38 C0 00 00 */	li r6, 0x0
/* 8136C430 | 38 E0 00 00 */	li r7, 0x0
/* 8136C434 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136C438 | 39 00 00 00 */	li r8, 0x0
/* 8136C43C | 38 63 04 D0 */	addi r3, r3, 0x4d0
/* 8136C440 | 48 19 F9 31 */	bl detail_PrepareSound__Q34nw4r3snd14SoundStartableFPQ34nw4r3snd11SoundHandleUlPQ54nw4r3snd6detail10BasicSound14AmbientArgInfoPQ44nw4r3snd6detail19ExternalSoundPlayerPCQ44nw4r3snd14SoundStartable9StartInfo
/* 8136C444 | 7C 60 00 34 */	cntlzw r0, r3
/* 8136C448 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8136C44C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136C450 | 7C 08 03 A6 */	mtlr r0
/* 8136C454 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136C458 | 4E 80 00 20 */	blr
.endfn prepareSound__Q23EGG9ArcPlayerFPQ34nw4r3snd11SoundHandleUl

# .text:0x1200 | 0x8136C45C | size: 0x38
# EGG::ArcPlayer::prepareSound(nw4r::snd::SoundHandle*, unsigned int)
.fn prepareSound__Q23EGG9ArcPlayerFPQ34nw4r3snd11SoundHandleUi, global
/* 8136C45C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136C460 | 7C 08 02 A6 */	mflr r0
/* 8136C464 | 38 C0 00 00 */	li r6, 0x0
/* 8136C468 | 38 E0 00 00 */	li r7, 0x0
/* 8136C46C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136C470 | 39 00 00 00 */	li r8, 0x0
/* 8136C474 | 38 63 04 D0 */	addi r3, r3, 0x4d0
/* 8136C478 | 48 19 F8 F9 */	bl detail_PrepareSound__Q34nw4r3snd14SoundStartableFPQ34nw4r3snd11SoundHandleUlPQ54nw4r3snd6detail10BasicSound14AmbientArgInfoPQ44nw4r3snd6detail19ExternalSoundPlayerPCQ44nw4r3snd14SoundStartable9StartInfo
/* 8136C47C | 7C 60 00 34 */	cntlzw r0, r3
/* 8136C480 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8136C484 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136C488 | 7C 08 03 A6 */	mtlr r0
/* 8136C48C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136C490 | 4E 80 00 20 */	blr
.endfn prepareSound__Q23EGG9ArcPlayerFPQ34nw4r3snd11SoundHandleUi

# .text:0x1238 | 0x8136C494 | size: 0x64
# EGG::ArcPlayer::prepareSound(nw4r::snd::SoundHandle*, const char*)
.fn prepareSound__Q23EGG9ArcPlayerFPQ34nw4r3snd11SoundHandlePCc, global
/* 8136C494 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136C498 | 7C 08 02 A6 */	mflr r0
/* 8136C49C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136C4A0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136C4A4 | 7C 9F 23 78 */	mr r31, r4
/* 8136C4A8 | 7C A4 2B 78 */	mr r4, r5
/* 8136C4AC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8136C4B0 | 7C 7E 1B 78 */	mr r30, r3
/* 8136C4B4 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 8136C4B8 | 48 19 9D 5D */	bl ConvertLabelStringToSoundId__Q34nw4r3snd12SoundArchiveCFPCc
/* 8136C4BC | 7C 65 1B 78 */	mr r5, r3
/* 8136C4C0 | 7F E4 FB 78 */	mr r4, r31
/* 8136C4C4 | 38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8136C4C8 | 38 C0 00 00 */	li r6, 0x0
/* 8136C4CC | 38 E0 00 00 */	li r7, 0x0
/* 8136C4D0 | 39 00 00 00 */	li r8, 0x0
/* 8136C4D4 | 48 19 F8 9D */	bl detail_PrepareSound__Q34nw4r3snd14SoundStartableFPQ34nw4r3snd11SoundHandleUlPQ54nw4r3snd6detail10BasicSound14AmbientArgInfoPQ44nw4r3snd6detail19ExternalSoundPlayerPCQ44nw4r3snd14SoundStartable9StartInfo
/* 8136C4D8 | 7C 60 00 34 */	cntlzw r0, r3
/* 8136C4DC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136C4E0 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8136C4E4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8136C4E8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136C4EC | 7C 08 03 A6 */	mtlr r0
/* 8136C4F0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136C4F4 | 4E 80 00 20 */	blr
.endfn prepareSound__Q23EGG9ArcPlayerFPQ34nw4r3snd11SoundHandlePCc

# .text:0x129C | 0x8136C4F8 | size: 0x38
# EGG::ArcPlayer::startSound(nw4r::snd::SoundHandle*, unsigned int)
.fn startSound__Q23EGG9ArcPlayerFPQ34nw4r3snd11SoundHandleUi, global
/* 8136C4F8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136C4FC | 7C 08 02 A6 */	mflr r0
/* 8136C500 | 38 C0 00 00 */	li r6, 0x0
/* 8136C504 | 38 E0 00 00 */	li r7, 0x0
/* 8136C508 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136C50C | 39 00 00 00 */	li r8, 0x0
/* 8136C510 | 38 63 04 D0 */	addi r3, r3, 0x4d0
/* 8136C514 | 48 19 F7 25 */	bl detail_StartSound__Q34nw4r3snd14SoundStartableFPQ34nw4r3snd11SoundHandleUlPQ54nw4r3snd6detail10BasicSound14AmbientArgInfoPQ44nw4r3snd6detail19ExternalSoundPlayerPCQ44nw4r3snd14SoundStartable9StartInfo
/* 8136C518 | 7C 60 00 34 */	cntlzw r0, r3
/* 8136C51C | 54 03 D9 7E */	srwi r3, r0, 5
/* 8136C520 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136C524 | 7C 08 03 A6 */	mtlr r0
/* 8136C528 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136C52C | 4E 80 00 20 */	blr
.endfn startSound__Q23EGG9ArcPlayerFPQ34nw4r3snd11SoundHandleUi

# .text:0x12D4 | 0x8136C530 | size: 0x58
# ipl::snd::System::~System()
.fn __dt__Q33ipl3snd6SystemFv, global
/* 8136C530 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136C534 | 7C 08 02 A6 */	mflr r0
/* 8136C538 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136C53C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136C540 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136C544 | 7C 9F 23 78 */	mr r31, r4
/* 8136C548 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8136C54C | 7C 7E 1B 78 */	mr r30, r3
/* 8136C550 | 41 82 00 1C */	beq .L_8136C56C
/* 8136C554 | 38 80 00 00 */	li r4, 0x0
/* 8136C558 | 48 28 9C 4D */	bl fn_815F61A4
/* 8136C55C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8136C560 | 40 81 00 0C */	ble .L_8136C56C
/* 8136C564 | 7F C3 F3 78 */	mr r3, r30
/* 8136C568 | 48 28 BB 7D */	bl __dl__FPv
.L_8136C56C:
/* 8136C56C | 7F C3 F3 78 */	mr r3, r30
/* 8136C570 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136C574 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8136C578 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136C57C | 7C 08 03 A6 */	mtlr r0
/* 8136C580 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136C584 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl3snd6SystemFv

# .text:0x132C | 0x8136C588 | size: 0xB4
.fn "__sinit_\\iplSound_cpp", local
/* 8136C588 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136C58C | 7C 08 02 A6 */	mflr r0
/* 8136C590 | 3C 80 81 37 */	lis r4, __ct__Q33ipl3snd10tagSSeInfoFv@ha
/* 8136C594 | 3C A0 81 37 */	lis r5, __ct__Q33ipl3snd11tagSBgmInfoFv@ha
/* 8136C598 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136C59C | 38 84 C6 3C */	addi r4, r4, __ct__Q33ipl3snd10tagSSeInfoFv@l
/* 8136C5A0 | 38 A5 C6 CC */	addi r5, r5, __ct__Q33ipl3snd11tagSBgmInfoFv@l
/* 8136C5A4 | 38 C0 00 0C */	li r6, 0xc
/* 8136C5A8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136C5AC | 3F E0 81 09 */	lis r31, unk__Q23ipl3snd@ha
/* 8136C5B0 | 3B FF 98 48 */	addi r31, r31, unk__Q23ipl3snd@l
/* 8136C5B4 | 38 E0 00 10 */	li r7, 0x10
/* 8136C5B8 | 38 7F 00 0C */	addi r3, r31, 0xc
/* 8136C5BC | 48 28 CC 45 */	bl __construct_array
/* 8136C5C0 | 3C 80 81 37 */	lis r4, iplSound_8136C724@ha
/* 8136C5C4 | 38 BF 00 00 */	addi r5, r31, 0x0
/* 8136C5C8 | 38 84 C7 24 */	addi r4, r4, iplSound_8136C724@l
/* 8136C5CC | 38 60 00 00 */	li r3, 0x0
/* 8136C5D0 | 48 28 CA 11 */	bl __register_global_object
/* 8136C5D4 | 38 6D A7 48 */	li r3, _bgmBlk__Q23ipl3snd@sda21
/* 8136C5D8 | 48 00 01 69 */	bl iplSound_8136C740
/* 8136C5DC | 3C 80 81 37 */	lis r4, __dt__Q33ipl3snd11tagSBgmInfoFv@ha
/* 8136C5E0 | 38 BF 00 CC */	addi r5, r31, 0xcc
/* 8136C5E4 | 38 84 C7 70 */	addi r4, r4, __dt__Q33ipl3snd11tagSBgmInfoFv@l
/* 8136C5E8 | 38 6D A7 48 */	li r3, _bgmBlk__Q23ipl3snd@sda21
/* 8136C5EC | 48 28 C9 F5 */	bl __register_global_object
/* 8136C5F0 | 38 7F 00 E4 */	addi r3, r31, 0xe4
/* 8136C5F4 | 48 00 01 D5 */	bl __ct__Q33ipl3snd6SystemFv
/* 8136C5F8 | 3C 80 81 37 */	lis r4, __dt__Q33ipl3snd6SystemFv@ha
/* 8136C5FC | 38 7F 00 E4 */	addi r3, r31, 0xe4
/* 8136C600 | 38 84 C5 30 */	addi r4, r4, __dt__Q33ipl3snd6SystemFv@l
/* 8136C604 | 38 BF 00 D8 */	addi r5, r31, 0xd8
/* 8136C608 | 48 28 C9 D9 */	bl __register_global_object
/* 8136C60C | 38 7F 07 20 */	addi r3, r31, 0x720
/* 8136C610 | 48 0A 20 2D */	bl __ct__17BannerSoundPlayerFv
/* 8136C614 | 3C 80 81 41 */	lis r4, __dt__17BannerSoundPlayerFv@ha
/* 8136C618 | 38 7F 07 20 */	addi r3, r31, 0x720
/* 8136C61C | 38 84 E6 9C */	addi r4, r4, __dt__17BannerSoundPlayerFv@l
/* 8136C620 | 38 BF 07 10 */	addi r5, r31, 0x710
/* 8136C624 | 48 28 C9 BD */	bl __register_global_object
/* 8136C628 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136C62C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136C630 | 7C 08 03 A6 */	mtlr r0
/* 8136C634 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136C638 | 4E 80 00 20 */	blr
.endfn "__sinit_\\iplSound_cpp"

# .text:0x13E0 | 0x8136C63C | size: 0x30
# ipl::snd::tagSSeInfo::tagSSeInfo()
.fn __ct__Q33ipl3snd10tagSSeInfoFv, global
/* 8136C63C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136C640 | 7C 08 02 A6 */	mflr r0
/* 8136C644 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136C648 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136C64C | 7C 7F 1B 78 */	mr r31, r3
/* 8136C650 | 48 00 00 1D */	bl __ct__Q34nw4r3snd11SoundHandleFv
/* 8136C654 | 7F E3 FB 78 */	mr r3, r31
/* 8136C658 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136C65C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136C660 | 7C 08 03 A6 */	mtlr r0
/* 8136C664 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136C668 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl3snd10tagSSeInfoFv

# .text:0x1410 | 0x8136C66C | size: 0xC
# nw4r::snd::SoundHandle::SoundHandle()
.fn __ct__Q34nw4r3snd11SoundHandleFv, global
/* 8136C66C | 38 00 00 00 */	li r0, 0x0
/* 8136C670 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 8136C674 | 4E 80 00 20 */	blr
.endfn __ct__Q34nw4r3snd11SoundHandleFv

# .text:0x141C | 0x8136C678 | size: 0x54
# nw4r::snd::SoundHandle::~SoundHandle()
.fn __dt__Q34nw4r3snd11SoundHandleFv, global
/* 8136C678 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136C67C | 7C 08 02 A6 */	mflr r0
/* 8136C680 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136C684 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136C688 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136C68C | 7C 9F 23 78 */	mr r31, r4
/* 8136C690 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8136C694 | 7C 7E 1B 78 */	mr r30, r3
/* 8136C698 | 41 82 00 18 */	beq .L_8136C6B0
/* 8136C69C | 48 19 E1 DD */	bl DetachSound__Q34nw4r3snd11SoundHandleFv
/* 8136C6A0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8136C6A4 | 40 81 00 0C */	ble .L_8136C6B0
/* 8136C6A8 | 7F C3 F3 78 */	mr r3, r30
/* 8136C6AC | 48 28 BA 39 */	bl __dl__FPv
.L_8136C6B0:
/* 8136C6B0 | 7F C3 F3 78 */	mr r3, r30
/* 8136C6B4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136C6B8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8136C6BC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136C6C0 | 7C 08 03 A6 */	mtlr r0
/* 8136C6C4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136C6C8 | 4E 80 00 20 */	blr
.endfn __dt__Q34nw4r3snd11SoundHandleFv

# .text:0x1470 | 0x8136C6CC | size: 0x58
# ipl::snd::tagSBgmInfo::tagSBgmInfo()
.fn __ct__Q33ipl3snd11tagSBgmInfoFv, global
/* 8136C6CC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136C6D0 | 7C 08 02 A6 */	mflr r0
/* 8136C6D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136C6D8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136C6DC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136C6E0 | 7C 9F 23 78 */	mr r31, r4
/* 8136C6E4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8136C6E8 | 7C 7E 1B 78 */	mr r30, r3
/* 8136C6EC | 41 82 00 1C */	beq .L_8136C708
/* 8136C6F0 | 38 80 FF FF */	li r4, -0x1
/* 8136C6F4 | 4B FF FF 85 */	bl __dt__Q34nw4r3snd11SoundHandleFv
/* 8136C6F8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8136C6FC | 40 81 00 0C */	ble .L_8136C708
/* 8136C700 | 7F C3 F3 78 */	mr r3, r30
/* 8136C704 | 48 28 B9 E1 */	bl __dl__FPv
.L_8136C708:
/* 8136C708 | 7F C3 F3 78 */	mr r3, r30
/* 8136C70C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136C710 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8136C714 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136C718 | 7C 08 03 A6 */	mtlr r0
/* 8136C71C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136C720 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl3snd11tagSBgmInfoFv

# .text:0x14C8 | 0x8136C724 | size: 0x1C
.fn iplSound_8136C724, local
/* 8136C724 | 3C 60 81 09 */	lis r3, _seBlk__Q23ipl3snd@ha
/* 8136C728 | 3C 80 81 37 */	lis r4, __ct__Q33ipl3snd11tagSBgmInfoFv@ha
/* 8136C72C | 38 63 98 54 */	addi r3, r3, _seBlk__Q23ipl3snd@l
/* 8136C730 | 38 A0 00 0C */	li r5, 0xc
/* 8136C734 | 38 84 C6 CC */	addi r4, r4, __ct__Q33ipl3snd11tagSBgmInfoFv@l
/* 8136C738 | 38 C0 00 10 */	li r6, 0x10
/* 8136C73C | 48 28 CB BC */	b __destroy_arr
.endfn iplSound_8136C724

# .text:0x14E4 | 0x8136C740 | size: 0x30
.fn iplSound_8136C740, local
/* 8136C740 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136C744 | 7C 08 02 A6 */	mflr r0
/* 8136C748 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136C74C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136C750 | 7C 7F 1B 78 */	mr r31, r3
/* 8136C754 | 4B FF FF 19 */	bl __ct__Q34nw4r3snd11SoundHandleFv
/* 8136C758 | 7F E3 FB 78 */	mr r3, r31
/* 8136C75C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136C760 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136C764 | 7C 08 03 A6 */	mtlr r0
/* 8136C768 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136C76C | 4E 80 00 20 */	blr
.endfn iplSound_8136C740

# .text:0x1514 | 0x8136C770 | size: 0x58
# ipl::snd::tagSBgmInfo::~tagSBgmInfo()
.fn __dt__Q33ipl3snd11tagSBgmInfoFv, global
/* 8136C770 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136C774 | 7C 08 02 A6 */	mflr r0
/* 8136C778 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136C77C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136C780 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136C784 | 7C 9F 23 78 */	mr r31, r4
/* 8136C788 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8136C78C | 7C 7E 1B 78 */	mr r30, r3
/* 8136C790 | 41 82 00 1C */	beq .L_8136C7AC
/* 8136C794 | 38 80 FF FF */	li r4, -0x1
/* 8136C798 | 4B FF FE E1 */	bl __dt__Q34nw4r3snd11SoundHandleFv
/* 8136C79C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8136C7A0 | 40 81 00 0C */	ble .L_8136C7AC
/* 8136C7A4 | 7F C3 F3 78 */	mr r3, r30
/* 8136C7A8 | 48 28 B9 3D */	bl __dl__FPv
.L_8136C7AC:
/* 8136C7AC | 7F C3 F3 78 */	mr r3, r30
/* 8136C7B0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136C7B4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8136C7B8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136C7BC | 7C 08 03 A6 */	mtlr r0
/* 8136C7C0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136C7C4 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl3snd11tagSBgmInfoFv

# .text:0x156C | 0x8136C7C8 | size: 0x4C
# ipl::snd::System::System()
.fn __ct__Q33ipl3snd6SystemFv, global
/* 8136C7C8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136C7CC | 7C 08 02 A6 */	mflr r0
/* 8136C7D0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136C7D4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136C7D8 | 7C 7F 1B 78 */	mr r31, r3
/* 8136C7DC | 48 28 99 75 */	bl fn_815F6150
/* 8136C7E0 | 3C A0 81 64 */	lis r5, __vt__Q33ipl3snd6System@ha
/* 8136C7E4 | 7F E3 FB 78 */	mr r3, r31
/* 8136C7E8 | 38 A5 29 48 */	addi r5, r5, __vt__Q33ipl3snd6System@l
/* 8136C7EC | 38 85 00 10 */	addi r4, r5, 0x10
/* 8136C7F0 | 90 BF 00 00 */	stw r5, 0x0(r31)
/* 8136C7F4 | 38 05 00 20 */	addi r0, r5, 0x20
/* 8136C7F8 | 90 9F 00 04 */	stw r4, 0x4(r31)
/* 8136C7FC | 90 1F 00 34 */	stw r0, 0x34(r31)
/* 8136C800 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136C804 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136C808 | 7C 08 03 A6 */	mtlr r0
/* 8136C80C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136C810 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl3snd6SystemFv

# .text:0x15B8 | 0x8136C814 | size: 0x8
# ipl::snd::System::@52@calc()
.fn "@52@calc__Q33ipl3snd6SystemFv", global
/* 8136C814 | 38 63 FF CC */	subi r3, r3, 0x34
/* 8136C818 | 4B FF EB 78 */	b calc__Q33ipl3snd6SystemFv
.endfn "@52@calc__Q33ipl3snd6SystemFv"

# .text:0x15C0 | 0x8136C81C | size: 0x8
.fn "@52@__dt__Q33ipl3snd6SystemFv", global
/* 8136C81C | 38 63 FF CC */	subi r3, r3, 0x34
/* 8136C820 | 4B FF FD 10 */	b __dt__Q33ipl3snd6SystemFv
.endfn "@52@__dt__Q33ipl3snd6SystemFv"

# 0x8160D1D8..0x8160D1DC | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte "__sinit_\\iplSound_cpp"

# 0x8160F048..0x8160F060 | size: 0x18
.rodata
.balign 8

# .rodata:0x0 | 0x8160F048 | size: 0x18
# ipl::snd::reverbHiParam
.obj reverbHiParam__Q23ipl3snd, local
	.4byte 0x00000000
	.4byte 0x40200000
	.4byte 0x3F000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x3F800000
.endobj reverbHiParam__Q23ipl3snd

# 0x81642948..0x816429C0 | size: 0x78
.data
.balign 8

# .data:0x0 | 0x81642948 | size: 0x78
# ipl::snd::System::__vtable
.obj __vt__Q33ipl3snd6System, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte fn_815F6278
	.4byte calc__Q33ipl3snd6SystemFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte loadState__Q23EGG12SoundHeapMgrFl
	.4byte getCurrentLevel__Q23EGG12SoundHeapMgrFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@52@__dt__Q33ipl3snd6SystemFv"
	.4byte fn_815F5C0C
	.4byte fn_815F5C74
	.4byte fn_815F5DCC
	.4byte fn_815F5F28
	.4byte fn_815F6024
	.4byte fn_815F60A8
	.4byte fn_815F60D8
	.4byte fn_815F6108
	.4byte "@52@calc__Q33ipl3snd6SystemFv"
	.4byte startSound__Q23EGG9ArcPlayerFPQ34nw4r3snd11SoundHandleUl
	.4byte startSound__Q23EGG9ArcPlayerFPQ34nw4r3snd11SoundHandleUi
	.4byte startSound__Q23EGG9ArcPlayerFPQ34nw4r3snd11SoundHandlePCc
	.4byte prepareSound__Q23EGG9ArcPlayerFPQ34nw4r3snd11SoundHandleUl
	.4byte prepareSound__Q23EGG9ArcPlayerFPQ34nw4r3snd11SoundHandleUi
	.4byte prepareSound__Q23EGG9ArcPlayerFPQ34nw4r3snd11SoundHandlePCc
	.4byte holdSound__Q23EGG9ArcPlayerFPQ34nw4r3snd11SoundHandleUl
	.4byte holdSound__Q23EGG9ArcPlayerFPQ34nw4r3snd11SoundHandleUi
	.4byte holdSound__Q23EGG9ArcPlayerFPQ34nw4r3snd11SoundHandlePCc
	.4byte __dt__Q33ipl3snd6SystemFv
.endobj __vt__Q33ipl3snd6System

# 0x816946A0..0x816946B8 | size: 0x18
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x816946A0 | size: 0x4
.obj lbl_816946A0, global
	.float 0.9
.endobj lbl_816946A0

# .sdata2:0x4 | 0x816946A4 | size: 0x4
.obj lbl_816946A4, global
	.float 0
.endobj lbl_816946A4

# .sdata2:0x8 | 0x816946A8 | size: 0x4
.obj lbl_816946A8, global
	.float 2
.endobj lbl_816946A8

# .sdata2:0xC | 0x816946AC | size: 0x4
.obj lbl_816946AC, global
	.float 1
.endobj lbl_816946AC

# .sdata2:0x10 | 0x816946B0 | size: 0x4
.obj lbl_816946B0, global
	.float 30
.endobj lbl_816946B0

# .sdata2:0x14 | 0x816946B4 | size: 0x4
.obj lbl_816946B4, global
	.float 60
.endobj lbl_816946B4

# 0x81698788..0x81698798 | size: 0x10
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698788 | size: 0x4
# ipl::snd::_bgmBlk
.obj _bgmBlk__Q23ipl3snd, global
	.skip 0x4
.endobj _bgmBlk__Q23ipl3snd

# .sbss:0x4 | 0x8169878C | size: 0x4
# ipl::snd::_mainBGMHandle
.obj _mainBGMHandle__Q23ipl3snd, global
	.skip 0x4
.endobj _mainBGMHandle__Q23ipl3snd

# .sbss:0x8 | 0x81698790 | size: 0x4
# ipl::snd::m_isLocked
.obj m_isLocked__Q23ipl3snd, global
	.skip 0x4
.endobj m_isLocked__Q23ipl3snd

# .sbss:0xC | 0x81698794 | size: 0x4
.obj gap_12_81698794_sbss, global
.hidden gap_12_81698794_sbss
	.skip 0x4
.endobj gap_12_81698794_sbss
