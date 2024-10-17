.include "macros.inc"
.file "snd_SoundPlayer.cpp"

# 0x8150AAC0..0x8150BC38 | size: 0x1178
.text
.balign 4

# .text:0x0 | 0x8150AAC0 | size: 0x84
# nw4r::snd::SoundPlayer::SoundPlayer()
.fn __ct__Q34nw4r3snd11SoundPlayerFv, global
/* 8150AAC0 | 38 80 00 00 */	li r4, 0x0
/* 8150AAC4 | C0 02 8F 98 */	lfs f0, lbl_81695398@sda21(r0)
/* 8150AAC8 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 8150AACC | 38 00 00 01 */	li r0, 0x1
/* 8150AAD0 | 38 A3 00 04 */	addi r5, r3, 0x4
/* 8150AAD4 | 38 C3 00 10 */	addi r6, r3, 0x10
/* 8150AAD8 | 90 83 00 08 */	stw r4, 0x8(r3)
/* 8150AADC | 38 E3 00 1C */	addi r7, r3, 0x1c
/* 8150AAE0 | 90 83 00 10 */	stw r4, 0x10(r3)
/* 8150AAE4 | 90 83 00 14 */	stw r4, 0x14(r3)
/* 8150AAE8 | 90 83 00 1C */	stw r4, 0x1c(r3)
/* 8150AAEC | 90 83 00 20 */	stw r4, 0x20(r3)
/* 8150AAF0 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8150AAF4 | 90 A3 00 04 */	stw r5, 0x4(r3)
/* 8150AAF8 | 90 A3 00 08 */	stw r5, 0x8(r3)
/* 8150AAFC | 90 83 00 0C */	stw r4, 0xc(r3)
/* 8150AB00 | 90 C3 00 10 */	stw r6, 0x10(r3)
/* 8150AB04 | 90 C3 00 14 */	stw r6, 0x14(r3)
/* 8150AB08 | 90 83 00 18 */	stw r4, 0x18(r3)
/* 8150AB0C | 90 E3 00 1C */	stw r7, 0x1c(r3)
/* 8150AB10 | 90 E3 00 20 */	stw r7, 0x20(r3)
/* 8150AB14 | B0 03 00 24 */	sth r0, 0x24(r3)
/* 8150AB18 | B0 03 00 26 */	sth r0, 0x26(r3)
/* 8150AB1C | 98 83 00 2D */	stb r4, 0x2d(r3)
/* 8150AB20 | D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8150AB24 | 90 03 00 30 */	stw r0, 0x30(r3)
/* 8150AB28 | 98 83 00 2C */	stb r4, 0x2c(r3)
/* 8150AB2C | D0 03 00 34 */	stfs f0, 0x34(r3)
/* 8150AB30 | D0 03 00 38 */	stfs f0, 0x38(r3)
/* 8150AB34 | D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 8150AB38 | D0 03 00 40 */	stfs f0, 0x40(r3)
/* 8150AB3C | D0 03 00 44 */	stfs f0, 0x44(r3)
/* 8150AB40 | 4E 80 00 20 */	blr
.endfn __ct__Q34nw4r3snd11SoundPlayerFv

# .text:0x84 | 0x8150AB44 | size: 0x20
# nw4r::ut::LinkList<nw4r::snd::detail::BasicSound, 200>::LinkList()
.fn "__ct__Q34nw4r2ut44LinkList<Q44nw4r3snd6detail10BasicSound,200>Fv", global
/* 8150AB44 | 38 00 00 00 */	li r0, 0x0
/* 8150AB48 | 38 83 00 04 */	addi r4, r3, 0x4
/* 8150AB4C | 90 03 00 04 */	stw r0, 0x4(r3)
/* 8150AB50 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 8150AB54 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 8150AB58 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 8150AB5C | 90 83 00 08 */	stw r4, 0x8(r3)
/* 8150AB60 | 4E 80 00 20 */	blr
.endfn "__ct__Q34nw4r2ut44LinkList<Q44nw4r3snd6detail10BasicSound,200>Fv"

# .text:0xA4 | 0x8150AB64 | size: 0x58
# nw4r::ut::LinkList<nw4r::snd::detail::BasicSound, 200>::~LinkList()
.fn "__dt__Q34nw4r2ut44LinkList<Q44nw4r3snd6detail10BasicSound,200>Fv", global
/* 8150AB64 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150AB68 | 7C 08 02 A6 */	mflr r0
/* 8150AB6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150AB70 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150AB74 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150AB78 | 7C 9F 23 78 */	mr r31, r4
/* 8150AB7C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8150AB80 | 7C 7E 1B 78 */	mr r30, r3
/* 8150AB84 | 41 82 00 1C */	beq .L_8150ABA0
/* 8150AB88 | 38 80 00 00 */	li r4, 0x0
/* 8150AB8C | 48 00 77 D9 */	bl fn_81512364
/* 8150AB90 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8150AB94 | 40 81 00 0C */	ble .L_8150ABA0
/* 8150AB98 | 7F C3 F3 78 */	mr r3, r30
/* 8150AB9C | 48 0E D5 49 */	bl __dl__FPv
.L_8150ABA0:
/* 8150ABA0 | 7F C3 F3 78 */	mr r3, r30
/* 8150ABA4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8150ABA8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8150ABAC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150ABB0 | 7C 08 03 A6 */	mtlr r0
/* 8150ABB4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150ABB8 | 4E 80 00 20 */	blr
.endfn "__dt__Q34nw4r2ut44LinkList<Q44nw4r3snd6detail10BasicSound,200>Fv"

# .text:0xFC | 0x8150ABBC | size: 0xC4
# nw4r::snd::SoundPlayer::~SoundPlayer()
.fn __dt__Q34nw4r3snd11SoundPlayerFv, global
/* 8150ABBC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150ABC0 | 7C 08 02 A6 */	mflr r0
/* 8150ABC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150ABC8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8150ABCC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8150ABD0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8150ABD4 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8150ABD8 | 7C 9D 23 78 */	mr r29, r4
/* 8150ABDC | 93 81 00 10 */	stw r28, 0x10(r1)
/* 8150ABE0 | 7C 7C 1B 78 */	mr r28, r3
/* 8150ABE4 | 41 82 00 78 */	beq .L_8150AC5C
/* 8150ABE8 | 83 E3 00 04 */	lwz r31, 0x4(r3)
/* 8150ABEC | 3B C3 00 04 */	addi r30, r3, 0x4
/* 8150ABF0 | 48 00 00 20 */	b .L_8150AC10
.L_8150ABF4:
/* 8150ABF4 | 7F E3 FB 78 */	mr r3, r31
/* 8150ABF8 | 85 83 FF 40 */	lwzu r12, -0xc0(r3)
/* 8150ABFC | 83 FF 00 00 */	lwz r31, 0x0(r31)
/* 8150AC00 | 38 80 00 00 */	li r4, 0x0
/* 8150AC04 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8150AC08 | 7D 89 03 A6 */	mtctr r12
/* 8150AC0C | 4E 80 04 21 */	bctrl
.L_8150AC10:
/* 8150AC10 | 7C 1F F0 40 */	cmplw r31, r30
/* 8150AC14 | 40 82 FF E0 */	bne .L_8150ABF4
/* 8150AC18 | 34 7C 00 18 */	addic. r3, r28, 0x18
/* 8150AC1C | 41 82 00 0C */	beq .L_8150AC28
/* 8150AC20 | 38 80 00 00 */	li r4, 0x0
/* 8150AC24 | 48 00 77 41 */	bl fn_81512364
.L_8150AC28:
/* 8150AC28 | 34 7C 00 0C */	addic. r3, r28, 0xc
/* 8150AC2C | 41 82 00 0C */	beq .L_8150AC38
/* 8150AC30 | 38 80 00 00 */	li r4, 0x0
/* 8150AC34 | 48 00 77 31 */	bl fn_81512364
.L_8150AC38:
/* 8150AC38 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 8150AC3C | 41 82 00 10 */	beq .L_8150AC4C
/* 8150AC40 | 7F 83 E3 78 */	mr r3, r28
/* 8150AC44 | 38 80 00 00 */	li r4, 0x0
/* 8150AC48 | 48 00 77 1D */	bl fn_81512364
.L_8150AC4C:
/* 8150AC4C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8150AC50 | 40 81 00 0C */	ble .L_8150AC5C
/* 8150AC54 | 7F 83 E3 78 */	mr r3, r28
/* 8150AC58 | 48 0E D4 8D */	bl __dl__FPv
.L_8150AC5C:
/* 8150AC5C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8150AC60 | 7F 83 E3 78 */	mr r3, r28
/* 8150AC64 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8150AC68 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8150AC6C | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 8150AC70 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150AC74 | 7C 08 03 A6 */	mtlr r0
/* 8150AC78 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150AC7C | 4E 80 00 20 */	blr
.endfn __dt__Q34nw4r3snd11SoundPlayerFv

# .text:0x1C0 | 0x8150AC80 | size: 0x6C
# nw4r::snd::SoundPlayer::Update()
.fn Update__Q34nw4r3snd11SoundPlayerFv, global
/* 8150AC80 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150AC84 | 7C 08 02 A6 */	mflr r0
/* 8150AC88 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8150AC8C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8150AC90 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8150AC94 | 3B C3 00 04 */	addi r30, r3, 0x4
/* 8150AC98 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8150AC9C | 7C 7D 1B 78 */	mr r29, r3
/* 8150ACA0 | 83 E3 00 04 */	lwz r31, 0x4(r3)
/* 8150ACA4 | 48 00 00 1C */	b .L_8150ACC0
.L_8150ACA8:
/* 8150ACA8 | 7F E3 FB 78 */	mr r3, r31
/* 8150ACAC | 85 83 FF 40 */	lwzu r12, -0xc0(r3)
/* 8150ACB0 | 83 FF 00 00 */	lwz r31, 0x0(r31)
/* 8150ACB4 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8150ACB8 | 7D 89 03 A6 */	mtctr r12
/* 8150ACBC | 4E 80 04 21 */	bctrl
.L_8150ACC0:
/* 8150ACC0 | 7C 1F F0 40 */	cmplw r31, r30
/* 8150ACC4 | 40 82 FF E4 */	bne .L_8150ACA8
/* 8150ACC8 | 7F A3 EB 78 */	mr r3, r29
/* 8150ACCC | 48 00 01 91 */	bl detail_SortPriorityList__Q34nw4r3snd11SoundPlayerFv
/* 8150ACD0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150ACD4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8150ACD8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8150ACDC | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8150ACE0 | 7C 08 03 A6 */	mtlr r0
/* 8150ACE4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150ACE8 | 4E 80 00 20 */	blr
.endfn Update__Q34nw4r3snd11SoundPlayerFv

# .text:0x22C | 0x8150ACEC | size: 0x68
# nw4r::snd::SoundPlayer::StopAllSound(int)
.fn StopAllSound__Q34nw4r3snd11SoundPlayerFi, global
/* 8150ACEC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150ACF0 | 7C 08 02 A6 */	mflr r0
/* 8150ACF4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8150ACF8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8150ACFC | 3B E3 00 04 */	addi r31, r3, 0x4
/* 8150AD00 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8150AD04 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8150AD08 | 7C 9D 23 78 */	mr r29, r4
/* 8150AD0C | 83 C3 00 04 */	lwz r30, 0x4(r3)
/* 8150AD10 | 48 00 00 20 */	b .L_8150AD30
.L_8150AD14:
/* 8150AD14 | 38 7E FF 40 */	subi r3, r30, 0xc0
/* 8150AD18 | 7F A4 EB 78 */	mr r4, r29
/* 8150AD1C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150AD20 | 83 DE 00 00 */	lwz r30, 0x0(r30)
/* 8150AD24 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8150AD28 | 7D 89 03 A6 */	mtctr r12
/* 8150AD2C | 4E 80 04 21 */	bctrl
.L_8150AD30:
/* 8150AD30 | 7C 1E F8 40 */	cmplw r30, r31
/* 8150AD34 | 40 82 FF E0 */	bne .L_8150AD14
/* 8150AD38 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150AD3C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8150AD40 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8150AD44 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8150AD48 | 7C 08 03 A6 */	mtlr r0
/* 8150AD4C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150AD50 | 4E 80 00 20 */	blr
.endfn StopAllSound__Q34nw4r3snd11SoundPlayerFi

# .text:0x294 | 0x8150AD54 | size: 0x8
# nw4r::snd::SoundPlayer::SetVolume(float)
.fn SetVolume__Q34nw4r3snd11SoundPlayerFf, global
/* 8150AD54 | D0 23 00 28 */	stfs f1, 0x28(r3)
/* 8150AD58 | 4E 80 00 20 */	blr
.endfn SetVolume__Q34nw4r3snd11SoundPlayerFf

# .text:0x29C | 0x8150AD5C | size: 0x8
# nw4r::snd::SoundPlayer::detail_GetOutputLine() const
.fn detail_GetOutputLine__Q34nw4r3snd11SoundPlayerCFv, global
/* 8150AD5C | 80 63 00 30 */	lwz r3, 0x30(r3)
/* 8150AD60 | 4E 80 00 20 */	blr
.endfn detail_GetOutputLine__Q34nw4r3snd11SoundPlayerCFv

# .text:0x2A4 | 0x8150AD64 | size: 0x8
# nw4r::snd::SoundPlayer::detail_IsEnabledOutputLine() const
.fn detail_IsEnabledOutputLine__Q34nw4r3snd11SoundPlayerCFv, global
/* 8150AD64 | 88 63 00 2C */	lbz r3, 0x2c(r3)
/* 8150AD68 | 4E 80 00 20 */	blr
.endfn detail_IsEnabledOutputLine__Q34nw4r3snd11SoundPlayerCFv

# .text:0x2AC | 0x8150AD6C | size: 0x10
# nw4r::snd::SoundPlayer::detail_GetRemoteOutVolume(int) const
.fn detail_GetRemoteOutVolume__Q34nw4r3snd11SoundPlayerCFi, global
/* 8150AD6C | 54 80 10 3A */	slwi r0, r4, 2
/* 8150AD70 | 7C 63 02 14 */	add r3, r3, r0
/* 8150AD74 | C0 23 00 38 */	lfs f1, 0x38(r3)
/* 8150AD78 | 4E 80 00 20 */	blr
.endfn detail_GetRemoteOutVolume__Q34nw4r3snd11SoundPlayerCFi

# .text:0x2BC | 0x8150AD7C | size: 0x38
# nw4r::snd::SoundPlayer::detail_RemoveSoundList(nw4r::snd::detail::BasicSound*)
.fn detail_RemoveSoundList__Q34nw4r3snd11SoundPlayerFPQ44nw4r3snd6detail10BasicSound, global
/* 8150AD7C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150AD80 | 7C 08 02 A6 */	mflr r0
/* 8150AD84 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150AD88 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150AD8C | 7C 9F 23 78 */	mr r31, r4
/* 8150AD90 | 38 84 00 C0 */	addi r4, r4, 0xc0
/* 8150AD94 | 48 00 77 0D */	bl fn_815124A0
/* 8150AD98 | 38 00 00 00 */	li r0, 0x0
/* 8150AD9C | 90 1F 00 10 */	stw r0, 0x10(r31)
/* 8150ADA0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8150ADA4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150ADA8 | 7C 08 03 A6 */	mtlr r0
/* 8150ADAC | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150ADB0 | 4E 80 00 20 */	blr
.endfn detail_RemoveSoundList__Q34nw4r3snd11SoundPlayerFPQ44nw4r3snd6detail10BasicSound

# .text:0x2F4 | 0x8150ADB4 | size: 0x9C
# nw4r::snd::SoundPlayer::detail_InsertPriorityList(nw4r::snd::detail::BasicSound*)
.fn detail_InsertPriorityList__Q34nw4r3snd11SoundPlayerFPQ44nw4r3snd6detail10BasicSound, global
/* 8150ADB4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150ADB8 | 7C 08 02 A6 */	mflr r0
/* 8150ADBC | 7C 89 23 78 */	mr r9, r4
/* 8150ADC0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150ADC4 | 38 03 00 10 */	addi r0, r3, 0x10
/* 8150ADC8 | 80 A3 00 10 */	lwz r5, 0x10(r3)
/* 8150ADCC | 48 00 00 58 */	b .L_8150AE24
.L_8150ADD0:
/* 8150ADD0 | 88 E5 FF AC */	lbz r7, -0x54(r5)
/* 8150ADD4 | 80 C5 FF 78 */	lwz r6, -0x88(r5)
/* 8150ADD8 | 7C E7 32 14 */	add r7, r7, r6
/* 8150ADDC | 2C 07 00 7F */	cmpwi r7, 0x7f
/* 8150ADE0 | 40 81 00 0C */	ble .L_8150ADEC
/* 8150ADE4 | 39 00 00 7F */	li r8, 0x7f
/* 8150ADE8 | 48 00 00 0C */	b .L_8150ADF4
.L_8150ADEC:
/* 8150ADEC | 7C E6 FE 70 */	srawi r6, r7, 31
/* 8150ADF0 | 7C E8 30 78 */	andc r8, r7, r6
.L_8150ADF4:
/* 8150ADF4 | 88 E4 00 74 */	lbz r7, 0x74(r4)
/* 8150ADF8 | 80 C4 00 40 */	lwz r6, 0x40(r4)
/* 8150ADFC | 7C E7 32 14 */	add r7, r7, r6
/* 8150AE00 | 2C 07 00 7F */	cmpwi r7, 0x7f
/* 8150AE04 | 40 81 00 0C */	ble .L_8150AE10
/* 8150AE08 | 38 C0 00 7F */	li r6, 0x7f
/* 8150AE0C | 48 00 00 0C */	b .L_8150AE18
.L_8150AE10:
/* 8150AE10 | 7C E6 FE 70 */	srawi r6, r7, 31
/* 8150AE14 | 7C E6 30 78 */	andc r6, r7, r6
.L_8150AE18:
/* 8150AE18 | 7C 06 40 00 */	cmpw r6, r8
/* 8150AE1C | 41 80 00 10 */	blt .L_8150AE2C
/* 8150AE20 | 80 A5 00 00 */	lwz r5, 0x0(r5)
.L_8150AE24:
/* 8150AE24 | 7C 05 00 40 */	cmplw r5, r0
/* 8150AE28 | 40 82 FF A8 */	bne .L_8150ADD0
.L_8150AE2C:
/* 8150AE2C | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 8150AE30 | 38 63 00 0C */	addi r3, r3, 0xc
/* 8150AE34 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8150AE38 | 38 A9 00 C8 */	addi r5, r9, 0xc8
/* 8150AE3C | 48 00 76 39 */	bl fn_81512474
/* 8150AE40 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150AE44 | 7C 08 03 A6 */	mtlr r0
/* 8150AE48 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150AE4C | 4E 80 00 20 */	blr
.endfn detail_InsertPriorityList__Q34nw4r3snd11SoundPlayerFPQ44nw4r3snd6detail10BasicSound

# .text:0x390 | 0x8150AE50 | size: 0xC
# nw4r::snd::SoundPlayer::detail_RemovePriorityList(nw4r::snd::detail::BasicSound*)
.fn detail_RemovePriorityList__Q34nw4r3snd11SoundPlayerFPQ44nw4r3snd6detail10BasicSound, global
/* 8150AE50 | 38 63 00 0C */	addi r3, r3, 0xc
/* 8150AE54 | 38 84 00 C8 */	addi r4, r4, 0xc8
/* 8150AE58 | 48 00 76 48 */	b fn_815124A0
.endfn detail_RemovePriorityList__Q34nw4r3snd11SoundPlayerFPQ44nw4r3snd6detail10BasicSound

# .text:0x39C | 0x8150AE5C | size: 0x130
# nw4r::snd::SoundPlayer::detail_SortPriorityList()
.fn detail_SortPriorityList__Q34nw4r3snd11SoundPlayerFv, global
/* 8150AE5C | 94 21 F9 D0 */	stwu r1, -0x630(r1)
/* 8150AE60 | 7C 08 02 A6 */	mflr r0
/* 8150AE64 | 90 01 06 34 */	stw r0, 0x634(r1)
/* 8150AE68 | 39 61 06 30 */	addi r11, r1, 0x630
/* 8150AE6C | 48 0E E6 55 */	bl _savegpr_27
/* 8150AE70 | 3C 80 81 51 */	lis r4, "__ct__Q34nw4r2ut44LinkList<Q44nw4r3snd6detail10BasicSound,200>Fv"@ha
/* 8150AE74 | 3C A0 81 51 */	lis r5, "__dt__Q34nw4r2ut44LinkList<Q44nw4r3snd6detail10BasicSound,200>Fv"@ha
/* 8150AE78 | 7C 7B 1B 78 */	mr r27, r3
/* 8150AE7C | 38 61 00 18 */	addi r3, r1, 0x18
/* 8150AE80 | 38 84 AB 44 */	addi r4, r4, "__ct__Q34nw4r2ut44LinkList<Q44nw4r3snd6detail10BasicSound,200>Fv"@l
/* 8150AE84 | 38 A5 AB 64 */	addi r5, r5, "__dt__Q34nw4r2ut44LinkList<Q44nw4r3snd6detail10BasicSound,200>Fv"@l
/* 8150AE88 | 38 C0 00 0C */	li r6, 0xc
/* 8150AE8C | 38 E0 00 80 */	li r7, 0x80
/* 8150AE90 | 48 0E E3 71 */	bl __construct_array
/* 8150AE94 | 48 00 00 5C */	b .L_8150AEF0
.L_8150AE98:
/* 8150AE98 | 83 DB 00 10 */	lwz r30, 0x10(r27)
/* 8150AE9C | 38 7B 00 0C */	addi r3, r27, 0xc
/* 8150AEA0 | 38 81 00 14 */	addi r4, r1, 0x14
/* 8150AEA4 | 93 C1 00 14 */	stw r30, 0x14(r1)
/* 8150AEA8 | 48 00 75 41 */	bl fn_815123E8
/* 8150AEAC | 88 7E FF AC */	lbz r3, -0x54(r30)
/* 8150AEB0 | 80 1E FF 78 */	lwz r0, -0x88(r30)
/* 8150AEB4 | 7C 63 02 14 */	add r3, r3, r0
/* 8150AEB8 | 2C 03 00 7F */	cmpwi r3, 0x7f
/* 8150AEBC | 40 81 00 0C */	ble .L_8150AEC8
/* 8150AEC0 | 38 00 00 7F */	li r0, 0x7f
/* 8150AEC4 | 48 00 00 0C */	b .L_8150AED0
.L_8150AEC8:
/* 8150AEC8 | 7C 60 FE 70 */	srawi r0, r3, 31
/* 8150AECC | 7C 60 00 78 */	andc r0, r3, r0
.L_8150AED0:
/* 8150AED0 | 1C 00 00 0C */	mulli r0, r0, 0xc
/* 8150AED4 | 38 61 00 18 */	addi r3, r1, 0x18
/* 8150AED8 | 7F C5 F3 78 */	mr r5, r30
/* 8150AEDC | 38 81 00 10 */	addi r4, r1, 0x10
/* 8150AEE0 | 7C 63 02 14 */	add r3, r3, r0
/* 8150AEE4 | 38 03 00 04 */	addi r0, r3, 0x4
/* 8150AEE8 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 8150AEEC | 48 00 75 89 */	bl fn_81512474
.L_8150AEF0:
/* 8150AEF0 | 80 1B 00 0C */	lwz r0, 0xc(r27)
/* 8150AEF4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150AEF8 | 40 82 FF A0 */	bne .L_8150AE98
/* 8150AEFC | 3B C1 00 18 */	addi r30, r1, 0x18
/* 8150AF00 | 3B FB 00 10 */	addi r31, r27, 0x10
/* 8150AF04 | 3B 80 00 00 */	li r28, 0x0
.L_8150AF08:
/* 8150AF08 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 8150AF0C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150AF10 | 41 82 00 3C */	beq .L_8150AF4C
/* 8150AF14 | 48 00 00 2C */	b .L_8150AF40
.L_8150AF18:
/* 8150AF18 | 83 BE 00 04 */	lwz r29, 0x4(r30)
/* 8150AF1C | 7F C3 F3 78 */	mr r3, r30
/* 8150AF20 | 38 81 00 0C */	addi r4, r1, 0xc
/* 8150AF24 | 93 A1 00 0C */	stw r29, 0xc(r1)
/* 8150AF28 | 48 00 74 C1 */	bl fn_815123E8
/* 8150AF2C | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 8150AF30 | 7F A5 EB 78 */	mr r5, r29
/* 8150AF34 | 38 7B 00 0C */	addi r3, r27, 0xc
/* 8150AF38 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8150AF3C | 48 00 75 39 */	bl fn_81512474
.L_8150AF40:
/* 8150AF40 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 8150AF44 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150AF48 | 40 82 FF D0 */	bne .L_8150AF18
.L_8150AF4C:
/* 8150AF4C | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 8150AF50 | 3B DE 00 0C */	addi r30, r30, 0xc
/* 8150AF54 | 2C 1C 00 80 */	cmpwi r28, 0x80
/* 8150AF58 | 41 80 FF B0 */	blt .L_8150AF08
/* 8150AF5C | 3C 80 81 51 */	lis r4, "__dt__Q34nw4r2ut44LinkList<Q44nw4r3snd6detail10BasicSound,200>Fv"@ha
/* 8150AF60 | 38 61 00 18 */	addi r3, r1, 0x18
/* 8150AF64 | 38 84 AB 64 */	addi r4, r4, "__dt__Q34nw4r2ut44LinkList<Q44nw4r3snd6detail10BasicSound,200>Fv"@l
/* 8150AF68 | 38 A0 00 0C */	li r5, 0xc
/* 8150AF6C | 38 C0 00 80 */	li r6, 0x80
/* 8150AF70 | 48 0E E3 89 */	bl __destroy_arr
/* 8150AF74 | 39 61 06 30 */	addi r11, r1, 0x630
/* 8150AF78 | 48 0E E5 95 */	bl _restgpr_27
/* 8150AF7C | 80 01 06 34 */	lwz r0, 0x634(r1)
/* 8150AF80 | 7C 08 03 A6 */	mtlr r0
/* 8150AF84 | 38 21 06 30 */	addi r1, r1, 0x630
/* 8150AF88 | 4E 80 00 20 */	blr
.endfn detail_SortPriorityList__Q34nw4r3snd11SoundPlayerFv

# .text:0x4CC | 0x8150AF8C | size: 0x360
# nw4r::snd::SoundPlayer::detail_AllocSeqSound(int, int, nw4r::snd::detail::BasicSound::AmbientArgInfo*, nw4r::snd::detail::ExternalSoundPlayer*, unsigned long, nw4r::snd::detail::SoundInstanceManager<nw4r::snd::detail::SeqSound>*)
.fn "detail_AllocSeqSound__Q34nw4r3snd11SoundPlayerFiiPQ54nw4r3snd6detail10BasicSound14AmbientArgInfoPQ44nw4r3snd6detail19ExternalSoundPlayerUlPQ44nw4r3snd6detail49SoundInstanceManager<Q44nw4r3snd6detail8SeqSound>", global
/* 8150AF8C | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8150AF90 | 7C 08 02 A6 */	mflr r0
/* 8150AF94 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 8150AF98 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8150AF9C | 48 0E E5 15 */	bl _savegpr_23
/* 8150AFA0 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 8150AFA4 | 7C 78 1B 78 */	mr r24, r3
/* 8150AFA8 | 7C 99 23 78 */	mr r25, r4
/* 8150AFAC | 7C B7 2B 78 */	mr r23, r5
/* 8150AFB0 | 7C DA 33 78 */	mr r26, r6
/* 8150AFB4 | 7C FB 3B 78 */	mr r27, r7
/* 8150AFB8 | 7D 3C 4B 78 */	mr r28, r9
/* 8150AFBC | 40 82 00 0C */	bne .L_8150AFC8
/* 8150AFC0 | 38 60 00 00 */	li r3, 0x0
/* 8150AFC4 | 48 00 03 10 */	b .L_8150B2D4
.L_8150AFC8:
/* 8150AFC8 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8150AFCC | 3B E0 00 00 */	li r31, 0x0
/* 8150AFD0 | 41 82 00 30 */	beq .L_8150B000
/* 8150AFD4 | 80 66 00 00 */	lwz r3, 0x0(r6)
/* 8150AFD8 | 7D 05 43 78 */	mr r5, r8
/* 8150AFDC | 38 81 00 18 */	addi r4, r1, 0x18
/* 8150AFE0 | 80 FA 00 0C */	lwz r7, 0xc(r26)
/* 8150AFE4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150AFE8 | 38 C0 00 00 */	li r6, 0x0
/* 8150AFEC | 39 00 00 08 */	li r8, 0x8
/* 8150AFF0 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8150AFF4 | 7D 89 03 A6 */	mtctr r12
/* 8150AFF8 | 4E 80 04 21 */	bctrl
/* 8150AFFC | 83 E1 00 30 */	lwz r31, 0x30(r1)
.L_8150B000:
/* 8150B000 | 7C 7F B8 50 */	subf r3, r31, r23
/* 8150B004 | 2C 03 00 7F */	cmpwi r3, 0x7f
/* 8150B008 | 40 81 00 0C */	ble .L_8150B014
/* 8150B00C | 3B C0 00 7F */	li r30, 0x7f
/* 8150B010 | 48 00 00 0C */	b .L_8150B01C
.L_8150B014:
/* 8150B014 | 7C 60 FE 70 */	srawi r0, r3, 31
/* 8150B018 | 7C 7E 00 78 */	andc r30, r3, r0
.L_8150B01C:
/* 8150B01C | 7F 03 C3 78 */	mr r3, r24
/* 8150B020 | 7F C4 F3 78 */	mr r4, r30
/* 8150B024 | 7F 65 DB 78 */	mr r5, r27
/* 8150B028 | 48 00 0A 05 */	bl CheckPlayableSoundCount__Q34nw4r3snd11SoundPlayerFiPQ44nw4r3snd6detail19ExternalSoundPlayer
/* 8150B02C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150B030 | 40 82 00 0C */	bne .L_8150B03C
/* 8150B034 | 38 60 00 00 */	li r3, 0x0
/* 8150B038 | 48 00 02 9C */	b .L_8150B2D4
.L_8150B03C:
/* 8150B03C | 48 02 58 49 */	bl OSDisableInterrupts
/* 8150B040 | 7C 77 1B 78 */	mr r23, r3
/* 8150B044 | 7F 83 E3 78 */	mr r3, r28
/* 8150B048 | 4B FF 64 31 */	bl AllocImpl__Q44nw4r3snd6detail8PoolImplFv
/* 8150B04C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150B050 | 41 82 00 1C */	beq .L_8150B06C
/* 8150B054 | 7C 7D 1B 78 */	mr r29, r3
/* 8150B058 | 41 82 00 B8 */	beq .L_8150B110
/* 8150B05C | 7F 84 E3 78 */	mr r4, r28
/* 8150B060 | 4B FF 9D 75 */	bl __ct__Q44nw4r3snd6detail8SeqSoundFPQ44nw4r3snd6detail49SoundInstanceManager
/* 8150B064 | 7C 7D 1B 78 */	mr r29, r3
/* 8150B068 | 48 00 00 A8 */	b .L_8150B110
.L_8150B06C:
/* 8150B06C | 80 1C 00 04 */	lwz r0, 0x4(r28)
/* 8150B070 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150B074 | 40 82 00 14 */	bne .L_8150B088
/* 8150B078 | 7E E3 BB 78 */	mr r3, r23
/* 8150B07C | 48 02 58 31 */	bl OSRestoreInterrupts
/* 8150B080 | 3B A0 00 00 */	li r29, 0x0
/* 8150B084 | 48 00 00 EC */	b .L_8150B170
.L_8150B088:
/* 8150B088 | 80 1C 00 08 */	lwz r0, 0x8(r28)
/* 8150B08C | 34 60 FF 48 */	subic. r3, r0, 0xb8
/* 8150B090 | 40 82 00 14 */	bne .L_8150B0A4
/* 8150B094 | 7E E3 BB 78 */	mr r3, r23
/* 8150B098 | 48 02 58 15 */	bl OSRestoreInterrupts
/* 8150B09C | 3B A0 00 00 */	li r29, 0x0
/* 8150B0A0 | 48 00 00 D0 */	b .L_8150B170
.L_8150B0A4:
/* 8150B0A4 | 88 83 00 74 */	lbz r4, 0x74(r3)
/* 8150B0A8 | 80 03 00 40 */	lwz r0, 0x40(r3)
/* 8150B0AC | 7C 84 02 14 */	add r4, r4, r0
/* 8150B0B0 | 2C 04 00 7F */	cmpwi r4, 0x7f
/* 8150B0B4 | 40 81 00 0C */	ble .L_8150B0C0
/* 8150B0B8 | 38 00 00 7F */	li r0, 0x7f
/* 8150B0BC | 48 00 00 0C */	b .L_8150B0C8
.L_8150B0C0:
/* 8150B0C0 | 7C 80 FE 70 */	srawi r0, r4, 31
/* 8150B0C4 | 7C 80 00 78 */	andc r0, r4, r0
.L_8150B0C8:
/* 8150B0C8 | 7C 1E 00 00 */	cmpw r30, r0
/* 8150B0CC | 40 80 00 14 */	bge .L_8150B0E0
/* 8150B0D0 | 7E E3 BB 78 */	mr r3, r23
/* 8150B0D4 | 48 02 57 D9 */	bl OSRestoreInterrupts
/* 8150B0D8 | 3B A0 00 00 */	li r29, 0x0
/* 8150B0DC | 48 00 00 94 */	b .L_8150B170
.L_8150B0E0:
/* 8150B0E0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150B0E4 | 38 80 00 00 */	li r4, 0x0
/* 8150B0E8 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8150B0EC | 7D 89 03 A6 */	mtctr r12
/* 8150B0F0 | 4E 80 04 21 */	bctrl
/* 8150B0F4 | 7F 83 E3 78 */	mr r3, r28
/* 8150B0F8 | 4B FF 63 81 */	bl AllocImpl__Q44nw4r3snd6detail8PoolImplFv
/* 8150B0FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150B100 | 41 82 00 0C */	beq .L_8150B10C
/* 8150B104 | 7F 84 E3 78 */	mr r4, r28
/* 8150B108 | 4B FF 9C CD */	bl __ct__Q44nw4r3snd6detail8SeqSoundFPQ44nw4r3snd6detail49SoundInstanceManager
.L_8150B10C:
/* 8150B10C | 7C 7D 1B 78 */	mr r29, r3
.L_8150B110:
/* 8150B110 | 80 7C 00 08 */	lwz r3, 0x8(r28)
/* 8150B114 | 38 1C 00 08 */	addi r0, r28, 0x8
/* 8150B118 | 48 00 00 34 */	b .L_8150B14C
.L_8150B11C:
/* 8150B11C | 88 A3 FF BC */	lbz r5, -0x44(r3)
/* 8150B120 | 80 83 FF 88 */	lwz r4, -0x78(r3)
/* 8150B124 | 7C A5 22 14 */	add r5, r5, r4
/* 8150B128 | 2C 05 00 7F */	cmpwi r5, 0x7f
/* 8150B12C | 40 81 00 0C */	ble .L_8150B138
/* 8150B130 | 38 80 00 7F */	li r4, 0x7f
/* 8150B134 | 48 00 00 0C */	b .L_8150B140
.L_8150B138:
/* 8150B138 | 7C A4 FE 70 */	srawi r4, r5, 31
/* 8150B13C | 7C A4 20 78 */	andc r4, r5, r4
.L_8150B140:
/* 8150B140 | 7C 1E 20 00 */	cmpw r30, r4
/* 8150B144 | 41 80 00 10 */	blt .L_8150B154
/* 8150B148 | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_8150B14C:
/* 8150B14C | 7C 03 00 40 */	cmplw r3, r0
/* 8150B150 | 40 82 FF CC */	bne .L_8150B11C
.L_8150B154:
/* 8150B154 | 90 61 00 14 */	stw r3, 0x14(r1)
/* 8150B158 | 38 7C 00 04 */	addi r3, r28, 0x4
/* 8150B15C | 38 81 00 14 */	addi r4, r1, 0x14
/* 8150B160 | 38 BD 00 B8 */	addi r5, r29, 0xb8
/* 8150B164 | 48 00 73 11 */	bl fn_81512474
/* 8150B168 | 7E E3 BB 78 */	mr r3, r23
/* 8150B16C | 48 02 57 41 */	bl OSRestoreInterrupts
.L_8150B170:
/* 8150B170 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8150B174 | 40 82 00 0C */	bne .L_8150B180
/* 8150B178 | 38 60 00 00 */	li r3, 0x0
/* 8150B17C | 48 00 01 58 */	b .L_8150B2D4
.L_8150B180:
/* 8150B180 | 80 18 00 18 */	lwz r0, 0x18(r24)
/* 8150B184 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150B188 | 41 82 00 40 */	beq .L_8150B1C8
/* 8150B18C | 80 B8 00 1C */	lwz r5, 0x1c(r24)
/* 8150B190 | 38 78 00 18 */	addi r3, r24, 0x18
/* 8150B194 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8150B198 | 90 A1 00 10 */	stw r5, 0x10(r1)
/* 8150B19C | 3B 85 FF D4 */	subi r28, r5, 0x2c
/* 8150B1A0 | 48 00 72 49 */	bl fn_815123E8
/* 8150B1A4 | 93 BC 00 34 */	stw r29, 0x34(r28)
/* 8150B1A8 | 3A FC 00 04 */	addi r23, r28, 0x4
/* 8150B1AC | 7E E3 BB 78 */	mr r3, r23
/* 8150B1B0 | 93 9D 00 04 */	stw r28, 0x4(r29)
/* 8150B1B4 | 48 02 6A 55 */	bl fn_81531C08
/* 8150B1B8 | 38 7C 00 1C */	addi r3, r28, 0x1c
/* 8150B1BC | 4B FF 46 A5 */	bl Clear__Q44nw4r3snd6detail9FrameHeapFv
/* 8150B1C0 | 7E E3 BB 78 */	mr r3, r23
/* 8150B1C4 | 48 02 6B 21 */	bl fn_81531CE4
.L_8150B1C8:
/* 8150B1C8 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 8150B1CC | 41 82 00 50 */	beq .L_8150B21C
/* 8150B1D0 | 41 82 00 4C */	beq .L_8150B21C
/* 8150B1D4 | 80 7A 00 08 */	lwz r3, 0x8(r26)
/* 8150B1D8 | 80 9A 00 10 */	lwz r4, 0x10(r26)
/* 8150B1DC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150B1E0 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8150B1E4 | 7D 89 03 A6 */	mtctr r12
/* 8150B1E8 | 4E 80 04 21 */	bctrl
/* 8150B1EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150B1F0 | 7C 77 1B 78 */	mr r23, r3
/* 8150B1F4 | 41 82 00 28 */	beq .L_8150B21C
/* 8150B1F8 | 80 9A 00 0C */	lwz r4, 0xc(r26)
/* 8150B1FC | 80 BA 00 10 */	lwz r5, 0x10(r26)
/* 8150B200 | 4B E2 50 31 */	bl memcpy
/* 8150B204 | 80 9A 00 00 */	lwz r4, 0x0(r26)
/* 8150B208 | 7F A3 EB 78 */	mr r3, r29
/* 8150B20C | 80 BA 00 04 */	lwz r5, 0x4(r26)
/* 8150B210 | 7E E7 BB 78 */	mr r7, r23
/* 8150B214 | 80 DA 00 08 */	lwz r6, 0x8(r26)
/* 8150B218 | 4B FF 23 81 */	bl SetAmbientParamCallback__Q44nw4r3snd6detail10BasicSoundFPQ54nw4r3snd6detail10BasicSound26AmbientParamUpdateCallbackPQ54nw4r3snd6detail10BasicSound24AmbientArgUpdateCallbackPQ54nw4r3snd6detail10BasicSound27AmbientArgAllocaterCallbackPv
.L_8150B21C:
/* 8150B21C | 9B 3D 00 74 */	stb r25, 0x74(r29)
/* 8150B220 | 38 18 00 04 */	addi r0, r24, 0x4
/* 8150B224 | 7F 03 C3 78 */	mr r3, r24
/* 8150B228 | 38 81 00 0C */	addi r4, r1, 0xc
/* 8150B22C | 93 FD 00 40 */	stw r31, 0x40(r29)
/* 8150B230 | 38 BD 00 C0 */	addi r5, r29, 0xc0
/* 8150B234 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8150B238 | 48 00 72 3D */	bl fn_81512474
/* 8150B23C | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8150B240 | 93 1D 00 10 */	stw r24, 0x10(r29)
/* 8150B244 | 41 82 00 10 */	beq .L_8150B254
/* 8150B248 | 7F 63 DB 78 */	mr r3, r27
/* 8150B24C | 7F A4 EB 78 */	mr r4, r29
/* 8150B250 | 4B FF 41 6D */	bl InsertSoundList__Q44nw4r3snd6detail19ExternalSoundPlayerFPQ44nw4r3snd6detail10BasicSound
.L_8150B254:
/* 8150B254 | 80 78 00 10 */	lwz r3, 0x10(r24)
/* 8150B258 | 38 18 00 10 */	addi r0, r24, 0x10
/* 8150B25C | 48 00 00 58 */	b .L_8150B2B4
.L_8150B260:
/* 8150B260 | 88 A3 FF AC */	lbz r5, -0x54(r3)
/* 8150B264 | 80 83 FF 78 */	lwz r4, -0x88(r3)
/* 8150B268 | 7C A5 22 14 */	add r5, r5, r4
/* 8150B26C | 2C 05 00 7F */	cmpwi r5, 0x7f
/* 8150B270 | 40 81 00 0C */	ble .L_8150B27C
/* 8150B274 | 38 C0 00 7F */	li r6, 0x7f
/* 8150B278 | 48 00 00 0C */	b .L_8150B284
.L_8150B27C:
/* 8150B27C | 7C A4 FE 70 */	srawi r4, r5, 31
/* 8150B280 | 7C A6 20 78 */	andc r6, r5, r4
.L_8150B284:
/* 8150B284 | 88 BD 00 74 */	lbz r5, 0x74(r29)
/* 8150B288 | 80 9D 00 40 */	lwz r4, 0x40(r29)
/* 8150B28C | 7C A5 22 14 */	add r5, r5, r4
/* 8150B290 | 2C 05 00 7F */	cmpwi r5, 0x7f
/* 8150B294 | 40 81 00 0C */	ble .L_8150B2A0
/* 8150B298 | 38 80 00 7F */	li r4, 0x7f
/* 8150B29C | 48 00 00 0C */	b .L_8150B2A8
.L_8150B2A0:
/* 8150B2A0 | 7C A4 FE 70 */	srawi r4, r5, 31
/* 8150B2A4 | 7C A4 20 78 */	andc r4, r5, r4
.L_8150B2A8:
/* 8150B2A8 | 7C 04 30 00 */	cmpw r4, r6
/* 8150B2AC | 41 80 00 10 */	blt .L_8150B2BC
/* 8150B2B0 | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_8150B2B4:
/* 8150B2B4 | 7C 03 00 40 */	cmplw r3, r0
/* 8150B2B8 | 40 82 FF A8 */	bne .L_8150B260
.L_8150B2BC:
/* 8150B2BC | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8150B2C0 | 38 78 00 0C */	addi r3, r24, 0xc
/* 8150B2C4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8150B2C8 | 38 BD 00 C8 */	addi r5, r29, 0xc8
/* 8150B2CC | 48 00 71 A9 */	bl fn_81512474
/* 8150B2D0 | 7F A3 EB 78 */	mr r3, r29
.L_8150B2D4:
/* 8150B2D4 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8150B2D8 | 48 0E E2 25 */	bl _restgpr_23
/* 8150B2DC | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 8150B2E0 | 7C 08 03 A6 */	mtlr r0
/* 8150B2E4 | 38 21 00 60 */	addi r1, r1, 0x60
/* 8150B2E8 | 4E 80 00 20 */	blr
.endfn "detail_AllocSeqSound__Q34nw4r3snd11SoundPlayerFiiPQ54nw4r3snd6detail10BasicSound14AmbientArgInfoPQ44nw4r3snd6detail19ExternalSoundPlayerUlPQ44nw4r3snd6detail49SoundInstanceManager<Q44nw4r3snd6detail8SeqSound>"

# .text:0x82C | 0x8150B2EC | size: 0x360
# nw4r::snd::SoundPlayer::detail_AllocStrmSound(int, int, nw4r::snd::detail::BasicSound::AmbientArgInfo*, nw4r::snd::detail::ExternalSoundPlayer*, unsigned long, nw4r::snd::detail::SoundInstanceManager<nw4r::snd::detail::StrmSound>*)
.fn "detail_AllocStrmSound__Q34nw4r3snd11SoundPlayerFiiPQ54nw4r3snd6detail10BasicSound14AmbientArgInfoPQ44nw4r3snd6detail19ExternalSoundPlayerUlPQ44nw4r3snd6detail50SoundInstanceManager<Q44nw4r3snd6detail9StrmSound>", global
/* 8150B2EC | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8150B2F0 | 7C 08 02 A6 */	mflr r0
/* 8150B2F4 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 8150B2F8 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8150B2FC | 48 0E E1 B5 */	bl _savegpr_23
/* 8150B300 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 8150B304 | 7C 78 1B 78 */	mr r24, r3
/* 8150B308 | 7C 99 23 78 */	mr r25, r4
/* 8150B30C | 7C B7 2B 78 */	mr r23, r5
/* 8150B310 | 7C DA 33 78 */	mr r26, r6
/* 8150B314 | 7C FB 3B 78 */	mr r27, r7
/* 8150B318 | 7D 3C 4B 78 */	mr r28, r9
/* 8150B31C | 40 82 00 0C */	bne .L_8150B328
/* 8150B320 | 38 60 00 00 */	li r3, 0x0
/* 8150B324 | 48 00 03 10 */	b .L_8150B634
.L_8150B328:
/* 8150B328 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8150B32C | 3B E0 00 00 */	li r31, 0x0
/* 8150B330 | 41 82 00 30 */	beq .L_8150B360
/* 8150B334 | 80 66 00 00 */	lwz r3, 0x0(r6)
/* 8150B338 | 7D 05 43 78 */	mr r5, r8
/* 8150B33C | 38 81 00 18 */	addi r4, r1, 0x18
/* 8150B340 | 80 FA 00 0C */	lwz r7, 0xc(r26)
/* 8150B344 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150B348 | 38 C0 00 00 */	li r6, 0x0
/* 8150B34C | 39 00 00 08 */	li r8, 0x8
/* 8150B350 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8150B354 | 7D 89 03 A6 */	mtctr r12
/* 8150B358 | 4E 80 04 21 */	bctrl
/* 8150B35C | 83 E1 00 30 */	lwz r31, 0x30(r1)
.L_8150B360:
/* 8150B360 | 7C 7F B8 50 */	subf r3, r31, r23
/* 8150B364 | 2C 03 00 7F */	cmpwi r3, 0x7f
/* 8150B368 | 40 81 00 0C */	ble .L_8150B374
/* 8150B36C | 3B C0 00 7F */	li r30, 0x7f
/* 8150B370 | 48 00 00 0C */	b .L_8150B37C
.L_8150B374:
/* 8150B374 | 7C 60 FE 70 */	srawi r0, r3, 31
/* 8150B378 | 7C 7E 00 78 */	andc r30, r3, r0
.L_8150B37C:
/* 8150B37C | 7F 03 C3 78 */	mr r3, r24
/* 8150B380 | 7F C4 F3 78 */	mr r4, r30
/* 8150B384 | 7F 65 DB 78 */	mr r5, r27
/* 8150B388 | 48 00 06 A5 */	bl CheckPlayableSoundCount__Q34nw4r3snd11SoundPlayerFiPQ44nw4r3snd6detail19ExternalSoundPlayer
/* 8150B38C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150B390 | 40 82 00 0C */	bne .L_8150B39C
/* 8150B394 | 38 60 00 00 */	li r3, 0x0
/* 8150B398 | 48 00 02 9C */	b .L_8150B634
.L_8150B39C:
/* 8150B39C | 48 02 54 E9 */	bl OSDisableInterrupts
/* 8150B3A0 | 7C 77 1B 78 */	mr r23, r3
/* 8150B3A4 | 7F 83 E3 78 */	mr r3, r28
/* 8150B3A8 | 4B FF 60 D1 */	bl AllocImpl__Q44nw4r3snd6detail8PoolImplFv
/* 8150B3AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150B3B0 | 41 82 00 1C */	beq .L_8150B3CC
/* 8150B3B4 | 7C 7D 1B 78 */	mr r29, r3
/* 8150B3B8 | 41 82 00 B8 */	beq .L_8150B470
/* 8150B3BC | 7F 84 E3 78 */	mr r4, r28
/* 8150B3C0 | 48 00 34 05 */	bl "__ct__Q44nw4r3snd6detail9StrmSoundFPQ44nw4r3snd6detail50SoundInstanceManager<Q44nw4r3snd6detail9StrmSound>"
/* 8150B3C4 | 7C 7D 1B 78 */	mr r29, r3
/* 8150B3C8 | 48 00 00 A8 */	b .L_8150B470
.L_8150B3CC:
/* 8150B3CC | 80 1C 00 04 */	lwz r0, 0x4(r28)
/* 8150B3D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150B3D4 | 40 82 00 14 */	bne .L_8150B3E8
/* 8150B3D8 | 7E E3 BB 78 */	mr r3, r23
/* 8150B3DC | 48 02 54 D1 */	bl OSRestoreInterrupts
/* 8150B3E0 | 3B A0 00 00 */	li r29, 0x0
/* 8150B3E4 | 48 00 00 EC */	b .L_8150B4D0
.L_8150B3E8:
/* 8150B3E8 | 80 1C 00 08 */	lwz r0, 0x8(r28)
/* 8150B3EC | 34 60 FF 48 */	subic. r3, r0, 0xb8
/* 8150B3F0 | 40 82 00 14 */	bne .L_8150B404
/* 8150B3F4 | 7E E3 BB 78 */	mr r3, r23
/* 8150B3F8 | 48 02 54 B5 */	bl OSRestoreInterrupts
/* 8150B3FC | 3B A0 00 00 */	li r29, 0x0
/* 8150B400 | 48 00 00 D0 */	b .L_8150B4D0
.L_8150B404:
/* 8150B404 | 88 83 00 74 */	lbz r4, 0x74(r3)
/* 8150B408 | 80 03 00 40 */	lwz r0, 0x40(r3)
/* 8150B40C | 7C 84 02 14 */	add r4, r4, r0
/* 8150B410 | 2C 04 00 7F */	cmpwi r4, 0x7f
/* 8150B414 | 40 81 00 0C */	ble .L_8150B420
/* 8150B418 | 38 00 00 7F */	li r0, 0x7f
/* 8150B41C | 48 00 00 0C */	b .L_8150B428
.L_8150B420:
/* 8150B420 | 7C 80 FE 70 */	srawi r0, r4, 31
/* 8150B424 | 7C 80 00 78 */	andc r0, r4, r0
.L_8150B428:
/* 8150B428 | 7C 1E 00 00 */	cmpw r30, r0
/* 8150B42C | 40 80 00 14 */	bge .L_8150B440
/* 8150B430 | 7E E3 BB 78 */	mr r3, r23
/* 8150B434 | 48 02 54 79 */	bl OSRestoreInterrupts
/* 8150B438 | 3B A0 00 00 */	li r29, 0x0
/* 8150B43C | 48 00 00 94 */	b .L_8150B4D0
.L_8150B440:
/* 8150B440 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150B444 | 38 80 00 00 */	li r4, 0x0
/* 8150B448 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8150B44C | 7D 89 03 A6 */	mtctr r12
/* 8150B450 | 4E 80 04 21 */	bctrl
/* 8150B454 | 7F 83 E3 78 */	mr r3, r28
/* 8150B458 | 4B FF 60 21 */	bl AllocImpl__Q44nw4r3snd6detail8PoolImplFv
/* 8150B45C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150B460 | 41 82 00 0C */	beq .L_8150B46C
/* 8150B464 | 7F 84 E3 78 */	mr r4, r28
/* 8150B468 | 48 00 33 5D */	bl "__ct__Q44nw4r3snd6detail9StrmSoundFPQ44nw4r3snd6detail50SoundInstanceManager<Q44nw4r3snd6detail9StrmSound>"
.L_8150B46C:
/* 8150B46C | 7C 7D 1B 78 */	mr r29, r3
.L_8150B470:
/* 8150B470 | 80 7C 00 08 */	lwz r3, 0x8(r28)
/* 8150B474 | 38 1C 00 08 */	addi r0, r28, 0x8
/* 8150B478 | 48 00 00 34 */	b .L_8150B4AC
.L_8150B47C:
/* 8150B47C | 88 A3 FF BC */	lbz r5, -0x44(r3)
/* 8150B480 | 80 83 FF 88 */	lwz r4, -0x78(r3)
/* 8150B484 | 7C A5 22 14 */	add r5, r5, r4
/* 8150B488 | 2C 05 00 7F */	cmpwi r5, 0x7f
/* 8150B48C | 40 81 00 0C */	ble .L_8150B498
/* 8150B490 | 38 80 00 7F */	li r4, 0x7f
/* 8150B494 | 48 00 00 0C */	b .L_8150B4A0
.L_8150B498:
/* 8150B498 | 7C A4 FE 70 */	srawi r4, r5, 31
/* 8150B49C | 7C A4 20 78 */	andc r4, r5, r4
.L_8150B4A0:
/* 8150B4A0 | 7C 1E 20 00 */	cmpw r30, r4
/* 8150B4A4 | 41 80 00 10 */	blt .L_8150B4B4
/* 8150B4A8 | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_8150B4AC:
/* 8150B4AC | 7C 03 00 40 */	cmplw r3, r0
/* 8150B4B0 | 40 82 FF CC */	bne .L_8150B47C
.L_8150B4B4:
/* 8150B4B4 | 90 61 00 14 */	stw r3, 0x14(r1)
/* 8150B4B8 | 38 7C 00 04 */	addi r3, r28, 0x4
/* 8150B4BC | 38 81 00 14 */	addi r4, r1, 0x14
/* 8150B4C0 | 38 BD 00 B8 */	addi r5, r29, 0xb8
/* 8150B4C4 | 48 00 6F B1 */	bl fn_81512474
/* 8150B4C8 | 7E E3 BB 78 */	mr r3, r23
/* 8150B4CC | 48 02 53 E1 */	bl OSRestoreInterrupts
.L_8150B4D0:
/* 8150B4D0 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8150B4D4 | 40 82 00 0C */	bne .L_8150B4E0
/* 8150B4D8 | 38 60 00 00 */	li r3, 0x0
/* 8150B4DC | 48 00 01 58 */	b .L_8150B634
.L_8150B4E0:
/* 8150B4E0 | 80 18 00 18 */	lwz r0, 0x18(r24)
/* 8150B4E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150B4E8 | 41 82 00 40 */	beq .L_8150B528
/* 8150B4EC | 80 B8 00 1C */	lwz r5, 0x1c(r24)
/* 8150B4F0 | 38 78 00 18 */	addi r3, r24, 0x18
/* 8150B4F4 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8150B4F8 | 90 A1 00 10 */	stw r5, 0x10(r1)
/* 8150B4FC | 3B 85 FF D4 */	subi r28, r5, 0x2c
/* 8150B500 | 48 00 6E E9 */	bl fn_815123E8
/* 8150B504 | 93 BC 00 34 */	stw r29, 0x34(r28)
/* 8150B508 | 3A FC 00 04 */	addi r23, r28, 0x4
/* 8150B50C | 7E E3 BB 78 */	mr r3, r23
/* 8150B510 | 93 9D 00 04 */	stw r28, 0x4(r29)
/* 8150B514 | 48 02 66 F5 */	bl fn_81531C08
/* 8150B518 | 38 7C 00 1C */	addi r3, r28, 0x1c
/* 8150B51C | 4B FF 43 45 */	bl Clear__Q44nw4r3snd6detail9FrameHeapFv
/* 8150B520 | 7E E3 BB 78 */	mr r3, r23
/* 8150B524 | 48 02 67 C1 */	bl fn_81531CE4
.L_8150B528:
/* 8150B528 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 8150B52C | 41 82 00 50 */	beq .L_8150B57C
/* 8150B530 | 41 82 00 4C */	beq .L_8150B57C
/* 8150B534 | 80 7A 00 08 */	lwz r3, 0x8(r26)
/* 8150B538 | 80 9A 00 10 */	lwz r4, 0x10(r26)
/* 8150B53C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150B540 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8150B544 | 7D 89 03 A6 */	mtctr r12
/* 8150B548 | 4E 80 04 21 */	bctrl
/* 8150B54C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150B550 | 7C 77 1B 78 */	mr r23, r3
/* 8150B554 | 41 82 00 28 */	beq .L_8150B57C
/* 8150B558 | 80 9A 00 0C */	lwz r4, 0xc(r26)
/* 8150B55C | 80 BA 00 10 */	lwz r5, 0x10(r26)
/* 8150B560 | 4B E2 4C D1 */	bl memcpy
/* 8150B564 | 80 9A 00 00 */	lwz r4, 0x0(r26)
/* 8150B568 | 7F A3 EB 78 */	mr r3, r29
/* 8150B56C | 80 BA 00 04 */	lwz r5, 0x4(r26)
/* 8150B570 | 7E E7 BB 78 */	mr r7, r23
/* 8150B574 | 80 DA 00 08 */	lwz r6, 0x8(r26)
/* 8150B578 | 4B FF 20 21 */	bl SetAmbientParamCallback__Q44nw4r3snd6detail10BasicSoundFPQ54nw4r3snd6detail10BasicSound26AmbientParamUpdateCallbackPQ54nw4r3snd6detail10BasicSound24AmbientArgUpdateCallbackPQ54nw4r3snd6detail10BasicSound27AmbientArgAllocaterCallbackPv
.L_8150B57C:
/* 8150B57C | 9B 3D 00 74 */	stb r25, 0x74(r29)
/* 8150B580 | 38 18 00 04 */	addi r0, r24, 0x4
/* 8150B584 | 7F 03 C3 78 */	mr r3, r24
/* 8150B588 | 38 81 00 0C */	addi r4, r1, 0xc
/* 8150B58C | 93 FD 00 40 */	stw r31, 0x40(r29)
/* 8150B590 | 38 BD 00 C0 */	addi r5, r29, 0xc0
/* 8150B594 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8150B598 | 48 00 6E DD */	bl fn_81512474
/* 8150B59C | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8150B5A0 | 93 1D 00 10 */	stw r24, 0x10(r29)
/* 8150B5A4 | 41 82 00 10 */	beq .L_8150B5B4
/* 8150B5A8 | 7F 63 DB 78 */	mr r3, r27
/* 8150B5AC | 7F A4 EB 78 */	mr r4, r29
/* 8150B5B0 | 4B FF 3E 0D */	bl InsertSoundList__Q44nw4r3snd6detail19ExternalSoundPlayerFPQ44nw4r3snd6detail10BasicSound
.L_8150B5B4:
/* 8150B5B4 | 80 78 00 10 */	lwz r3, 0x10(r24)
/* 8150B5B8 | 38 18 00 10 */	addi r0, r24, 0x10
/* 8150B5BC | 48 00 00 58 */	b .L_8150B614
.L_8150B5C0:
/* 8150B5C0 | 88 A3 FF AC */	lbz r5, -0x54(r3)
/* 8150B5C4 | 80 83 FF 78 */	lwz r4, -0x88(r3)
/* 8150B5C8 | 7C A5 22 14 */	add r5, r5, r4
/* 8150B5CC | 2C 05 00 7F */	cmpwi r5, 0x7f
/* 8150B5D0 | 40 81 00 0C */	ble .L_8150B5DC
/* 8150B5D4 | 38 C0 00 7F */	li r6, 0x7f
/* 8150B5D8 | 48 00 00 0C */	b .L_8150B5E4
.L_8150B5DC:
/* 8150B5DC | 7C A4 FE 70 */	srawi r4, r5, 31
/* 8150B5E0 | 7C A6 20 78 */	andc r6, r5, r4
.L_8150B5E4:
/* 8150B5E4 | 88 BD 00 74 */	lbz r5, 0x74(r29)
/* 8150B5E8 | 80 9D 00 40 */	lwz r4, 0x40(r29)
/* 8150B5EC | 7C A5 22 14 */	add r5, r5, r4
/* 8150B5F0 | 2C 05 00 7F */	cmpwi r5, 0x7f
/* 8150B5F4 | 40 81 00 0C */	ble .L_8150B600
/* 8150B5F8 | 38 80 00 7F */	li r4, 0x7f
/* 8150B5FC | 48 00 00 0C */	b .L_8150B608
.L_8150B600:
/* 8150B600 | 7C A4 FE 70 */	srawi r4, r5, 31
/* 8150B604 | 7C A4 20 78 */	andc r4, r5, r4
.L_8150B608:
/* 8150B608 | 7C 04 30 00 */	cmpw r4, r6
/* 8150B60C | 41 80 00 10 */	blt .L_8150B61C
/* 8150B610 | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_8150B614:
/* 8150B614 | 7C 03 00 40 */	cmplw r3, r0
/* 8150B618 | 40 82 FF A8 */	bne .L_8150B5C0
.L_8150B61C:
/* 8150B61C | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8150B620 | 38 78 00 0C */	addi r3, r24, 0xc
/* 8150B624 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8150B628 | 38 BD 00 C8 */	addi r5, r29, 0xc8
/* 8150B62C | 48 00 6E 49 */	bl fn_81512474
/* 8150B630 | 7F A3 EB 78 */	mr r3, r29
.L_8150B634:
/* 8150B634 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8150B638 | 48 0E DE C5 */	bl _restgpr_23
/* 8150B63C | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 8150B640 | 7C 08 03 A6 */	mtlr r0
/* 8150B644 | 38 21 00 60 */	addi r1, r1, 0x60
/* 8150B648 | 4E 80 00 20 */	blr
.endfn "detail_AllocStrmSound__Q34nw4r3snd11SoundPlayerFiiPQ54nw4r3snd6detail10BasicSound14AmbientArgInfoPQ44nw4r3snd6detail19ExternalSoundPlayerUlPQ44nw4r3snd6detail50SoundInstanceManager<Q44nw4r3snd6detail9StrmSound>"

# .text:0xB8C | 0x8150B64C | size: 0x360
# nw4r::snd::SoundPlayer::detail_AllocWaveSound(int, int, nw4r::snd::detail::BasicSound::AmbientArgInfo*, nw4r::snd::detail::ExternalSoundPlayer*, unsigned long, nw4r::snd::detail::SoundInstanceManager<nw4r::snd::detail::WaveSound>*)
.fn "detail_AllocWaveSound__Q34nw4r3snd11SoundPlayerFiiPQ54nw4r3snd6detail10BasicSound14AmbientArgInfoPQ44nw4r3snd6detail19ExternalSoundPlayerUlPQ44nw4r3snd6detail50SoundInstanceManager<Q44nw4r3snd6detail9WaveSound>", global
/* 8150B64C | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8150B650 | 7C 08 02 A6 */	mflr r0
/* 8150B654 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 8150B658 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8150B65C | 48 0E DE 55 */	bl _savegpr_23
/* 8150B660 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 8150B664 | 7C 78 1B 78 */	mr r24, r3
/* 8150B668 | 7C 99 23 78 */	mr r25, r4
/* 8150B66C | 7C B7 2B 78 */	mr r23, r5
/* 8150B670 | 7C DA 33 78 */	mr r26, r6
/* 8150B674 | 7C FB 3B 78 */	mr r27, r7
/* 8150B678 | 7D 3C 4B 78 */	mr r28, r9
/* 8150B67C | 40 82 00 0C */	bne .L_8150B688
/* 8150B680 | 38 60 00 00 */	li r3, 0x0
/* 8150B684 | 48 00 03 10 */	b .L_8150B994
.L_8150B688:
/* 8150B688 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8150B68C | 3B E0 00 00 */	li r31, 0x0
/* 8150B690 | 41 82 00 30 */	beq .L_8150B6C0
/* 8150B694 | 80 66 00 00 */	lwz r3, 0x0(r6)
/* 8150B698 | 7D 05 43 78 */	mr r5, r8
/* 8150B69C | 38 81 00 18 */	addi r4, r1, 0x18
/* 8150B6A0 | 80 FA 00 0C */	lwz r7, 0xc(r26)
/* 8150B6A4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150B6A8 | 38 C0 00 00 */	li r6, 0x0
/* 8150B6AC | 39 00 00 08 */	li r8, 0x8
/* 8150B6B0 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8150B6B4 | 7D 89 03 A6 */	mtctr r12
/* 8150B6B8 | 4E 80 04 21 */	bctrl
/* 8150B6BC | 83 E1 00 30 */	lwz r31, 0x30(r1)
.L_8150B6C0:
/* 8150B6C0 | 7C 7F B8 50 */	subf r3, r31, r23
/* 8150B6C4 | 2C 03 00 7F */	cmpwi r3, 0x7f
/* 8150B6C8 | 40 81 00 0C */	ble .L_8150B6D4
/* 8150B6CC | 3B C0 00 7F */	li r30, 0x7f
/* 8150B6D0 | 48 00 00 0C */	b .L_8150B6DC
.L_8150B6D4:
/* 8150B6D4 | 7C 60 FE 70 */	srawi r0, r3, 31
/* 8150B6D8 | 7C 7E 00 78 */	andc r30, r3, r0
.L_8150B6DC:
/* 8150B6DC | 7F 03 C3 78 */	mr r3, r24
/* 8150B6E0 | 7F C4 F3 78 */	mr r4, r30
/* 8150B6E4 | 7F 65 DB 78 */	mr r5, r27
/* 8150B6E8 | 48 00 03 45 */	bl CheckPlayableSoundCount__Q34nw4r3snd11SoundPlayerFiPQ44nw4r3snd6detail19ExternalSoundPlayer
/* 8150B6EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150B6F0 | 40 82 00 0C */	bne .L_8150B6FC
/* 8150B6F4 | 38 60 00 00 */	li r3, 0x0
/* 8150B6F8 | 48 00 02 9C */	b .L_8150B994
.L_8150B6FC:
/* 8150B6FC | 48 02 51 89 */	bl OSDisableInterrupts
/* 8150B700 | 7C 77 1B 78 */	mr r23, r3
/* 8150B704 | 7F 83 E3 78 */	mr r3, r28
/* 8150B708 | 4B FF 5D 71 */	bl AllocImpl__Q44nw4r3snd6detail8PoolImplFv
/* 8150B70C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150B710 | 41 82 00 1C */	beq .L_8150B72C
/* 8150B714 | 7C 7D 1B 78 */	mr r29, r3
/* 8150B718 | 41 82 00 B8 */	beq .L_8150B7D0
/* 8150B71C | 7F 84 E3 78 */	mr r4, r28
/* 8150B720 | 48 00 4D E1 */	bl __ct__Q44nw4r3snd6detail9WaveSoundFPQ44nw4r3snd6detail50SoundInstanceManager
/* 8150B724 | 7C 7D 1B 78 */	mr r29, r3
/* 8150B728 | 48 00 00 A8 */	b .L_8150B7D0
.L_8150B72C:
/* 8150B72C | 80 1C 00 04 */	lwz r0, 0x4(r28)
/* 8150B730 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150B734 | 40 82 00 14 */	bne .L_8150B748
/* 8150B738 | 7E E3 BB 78 */	mr r3, r23
/* 8150B73C | 48 02 51 71 */	bl OSRestoreInterrupts
/* 8150B740 | 3B A0 00 00 */	li r29, 0x0
/* 8150B744 | 48 00 00 EC */	b .L_8150B830
.L_8150B748:
/* 8150B748 | 80 1C 00 08 */	lwz r0, 0x8(r28)
/* 8150B74C | 34 60 FF 48 */	subic. r3, r0, 0xb8
/* 8150B750 | 40 82 00 14 */	bne .L_8150B764
/* 8150B754 | 7E E3 BB 78 */	mr r3, r23
/* 8150B758 | 48 02 51 55 */	bl OSRestoreInterrupts
/* 8150B75C | 3B A0 00 00 */	li r29, 0x0
/* 8150B760 | 48 00 00 D0 */	b .L_8150B830
.L_8150B764:
/* 8150B764 | 88 83 00 74 */	lbz r4, 0x74(r3)
/* 8150B768 | 80 03 00 40 */	lwz r0, 0x40(r3)
/* 8150B76C | 7C 84 02 14 */	add r4, r4, r0
/* 8150B770 | 2C 04 00 7F */	cmpwi r4, 0x7f
/* 8150B774 | 40 81 00 0C */	ble .L_8150B780
/* 8150B778 | 38 00 00 7F */	li r0, 0x7f
/* 8150B77C | 48 00 00 0C */	b .L_8150B788
.L_8150B780:
/* 8150B780 | 7C 80 FE 70 */	srawi r0, r4, 31
/* 8150B784 | 7C 80 00 78 */	andc r0, r4, r0
.L_8150B788:
/* 8150B788 | 7C 1E 00 00 */	cmpw r30, r0
/* 8150B78C | 40 80 00 14 */	bge .L_8150B7A0
/* 8150B790 | 7E E3 BB 78 */	mr r3, r23
/* 8150B794 | 48 02 51 19 */	bl OSRestoreInterrupts
/* 8150B798 | 3B A0 00 00 */	li r29, 0x0
/* 8150B79C | 48 00 00 94 */	b .L_8150B830
.L_8150B7A0:
/* 8150B7A0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150B7A4 | 38 80 00 00 */	li r4, 0x0
/* 8150B7A8 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8150B7AC | 7D 89 03 A6 */	mtctr r12
/* 8150B7B0 | 4E 80 04 21 */	bctrl
/* 8150B7B4 | 7F 83 E3 78 */	mr r3, r28
/* 8150B7B8 | 4B FF 5C C1 */	bl AllocImpl__Q44nw4r3snd6detail8PoolImplFv
/* 8150B7BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150B7C0 | 41 82 00 0C */	beq .L_8150B7CC
/* 8150B7C4 | 7F 84 E3 78 */	mr r4, r28
/* 8150B7C8 | 48 00 4D 39 */	bl __ct__Q44nw4r3snd6detail9WaveSoundFPQ44nw4r3snd6detail50SoundInstanceManager
.L_8150B7CC:
/* 8150B7CC | 7C 7D 1B 78 */	mr r29, r3
.L_8150B7D0:
/* 8150B7D0 | 80 7C 00 08 */	lwz r3, 0x8(r28)
/* 8150B7D4 | 38 1C 00 08 */	addi r0, r28, 0x8
/* 8150B7D8 | 48 00 00 34 */	b .L_8150B80C
.L_8150B7DC:
/* 8150B7DC | 88 A3 FF BC */	lbz r5, -0x44(r3)
/* 8150B7E0 | 80 83 FF 88 */	lwz r4, -0x78(r3)
/* 8150B7E4 | 7C A5 22 14 */	add r5, r5, r4
/* 8150B7E8 | 2C 05 00 7F */	cmpwi r5, 0x7f
/* 8150B7EC | 40 81 00 0C */	ble .L_8150B7F8
/* 8150B7F0 | 38 80 00 7F */	li r4, 0x7f
/* 8150B7F4 | 48 00 00 0C */	b .L_8150B800
.L_8150B7F8:
/* 8150B7F8 | 7C A4 FE 70 */	srawi r4, r5, 31
/* 8150B7FC | 7C A4 20 78 */	andc r4, r5, r4
.L_8150B800:
/* 8150B800 | 7C 1E 20 00 */	cmpw r30, r4
/* 8150B804 | 41 80 00 10 */	blt .L_8150B814
/* 8150B808 | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_8150B80C:
/* 8150B80C | 7C 03 00 40 */	cmplw r3, r0
/* 8150B810 | 40 82 FF CC */	bne .L_8150B7DC
.L_8150B814:
/* 8150B814 | 90 61 00 14 */	stw r3, 0x14(r1)
/* 8150B818 | 38 7C 00 04 */	addi r3, r28, 0x4
/* 8150B81C | 38 81 00 14 */	addi r4, r1, 0x14
/* 8150B820 | 38 BD 00 B8 */	addi r5, r29, 0xb8
/* 8150B824 | 48 00 6C 51 */	bl fn_81512474
/* 8150B828 | 7E E3 BB 78 */	mr r3, r23
/* 8150B82C | 48 02 50 81 */	bl OSRestoreInterrupts
.L_8150B830:
/* 8150B830 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8150B834 | 40 82 00 0C */	bne .L_8150B840
/* 8150B838 | 38 60 00 00 */	li r3, 0x0
/* 8150B83C | 48 00 01 58 */	b .L_8150B994
.L_8150B840:
/* 8150B840 | 80 18 00 18 */	lwz r0, 0x18(r24)
/* 8150B844 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150B848 | 41 82 00 40 */	beq .L_8150B888
/* 8150B84C | 80 B8 00 1C */	lwz r5, 0x1c(r24)
/* 8150B850 | 38 78 00 18 */	addi r3, r24, 0x18
/* 8150B854 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8150B858 | 90 A1 00 10 */	stw r5, 0x10(r1)
/* 8150B85C | 3B 85 FF D4 */	subi r28, r5, 0x2c
/* 8150B860 | 48 00 6B 89 */	bl fn_815123E8
/* 8150B864 | 93 BC 00 34 */	stw r29, 0x34(r28)
/* 8150B868 | 3A FC 00 04 */	addi r23, r28, 0x4
/* 8150B86C | 7E E3 BB 78 */	mr r3, r23
/* 8150B870 | 93 9D 00 04 */	stw r28, 0x4(r29)
/* 8150B874 | 48 02 63 95 */	bl fn_81531C08
/* 8150B878 | 38 7C 00 1C */	addi r3, r28, 0x1c
/* 8150B87C | 4B FF 3F E5 */	bl Clear__Q44nw4r3snd6detail9FrameHeapFv
/* 8150B880 | 7E E3 BB 78 */	mr r3, r23
/* 8150B884 | 48 02 64 61 */	bl fn_81531CE4
.L_8150B888:
/* 8150B888 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 8150B88C | 41 82 00 50 */	beq .L_8150B8DC
/* 8150B890 | 41 82 00 4C */	beq .L_8150B8DC
/* 8150B894 | 80 7A 00 08 */	lwz r3, 0x8(r26)
/* 8150B898 | 80 9A 00 10 */	lwz r4, 0x10(r26)
/* 8150B89C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150B8A0 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8150B8A4 | 7D 89 03 A6 */	mtctr r12
/* 8150B8A8 | 4E 80 04 21 */	bctrl
/* 8150B8AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150B8B0 | 7C 77 1B 78 */	mr r23, r3
/* 8150B8B4 | 41 82 00 28 */	beq .L_8150B8DC
/* 8150B8B8 | 80 9A 00 0C */	lwz r4, 0xc(r26)
/* 8150B8BC | 80 BA 00 10 */	lwz r5, 0x10(r26)
/* 8150B8C0 | 4B E2 49 71 */	bl memcpy
/* 8150B8C4 | 80 9A 00 00 */	lwz r4, 0x0(r26)
/* 8150B8C8 | 7F A3 EB 78 */	mr r3, r29
/* 8150B8CC | 80 BA 00 04 */	lwz r5, 0x4(r26)
/* 8150B8D0 | 7E E7 BB 78 */	mr r7, r23
/* 8150B8D4 | 80 DA 00 08 */	lwz r6, 0x8(r26)
/* 8150B8D8 | 4B FF 1C C1 */	bl SetAmbientParamCallback__Q44nw4r3snd6detail10BasicSoundFPQ54nw4r3snd6detail10BasicSound26AmbientParamUpdateCallbackPQ54nw4r3snd6detail10BasicSound24AmbientArgUpdateCallbackPQ54nw4r3snd6detail10BasicSound27AmbientArgAllocaterCallbackPv
.L_8150B8DC:
/* 8150B8DC | 9B 3D 00 74 */	stb r25, 0x74(r29)
/* 8150B8E0 | 38 18 00 04 */	addi r0, r24, 0x4
/* 8150B8E4 | 7F 03 C3 78 */	mr r3, r24
/* 8150B8E8 | 38 81 00 0C */	addi r4, r1, 0xc
/* 8150B8EC | 93 FD 00 40 */	stw r31, 0x40(r29)
/* 8150B8F0 | 38 BD 00 C0 */	addi r5, r29, 0xc0
/* 8150B8F4 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8150B8F8 | 48 00 6B 7D */	bl fn_81512474
/* 8150B8FC | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8150B900 | 93 1D 00 10 */	stw r24, 0x10(r29)
/* 8150B904 | 41 82 00 10 */	beq .L_8150B914
/* 8150B908 | 7F 63 DB 78 */	mr r3, r27
/* 8150B90C | 7F A4 EB 78 */	mr r4, r29
/* 8150B910 | 4B FF 3A AD */	bl InsertSoundList__Q44nw4r3snd6detail19ExternalSoundPlayerFPQ44nw4r3snd6detail10BasicSound
.L_8150B914:
/* 8150B914 | 80 78 00 10 */	lwz r3, 0x10(r24)
/* 8150B918 | 38 18 00 10 */	addi r0, r24, 0x10
/* 8150B91C | 48 00 00 58 */	b .L_8150B974
.L_8150B920:
/* 8150B920 | 88 A3 FF AC */	lbz r5, -0x54(r3)
/* 8150B924 | 80 83 FF 78 */	lwz r4, -0x88(r3)
/* 8150B928 | 7C A5 22 14 */	add r5, r5, r4
/* 8150B92C | 2C 05 00 7F */	cmpwi r5, 0x7f
/* 8150B930 | 40 81 00 0C */	ble .L_8150B93C
/* 8150B934 | 38 C0 00 7F */	li r6, 0x7f
/* 8150B938 | 48 00 00 0C */	b .L_8150B944
.L_8150B93C:
/* 8150B93C | 7C A4 FE 70 */	srawi r4, r5, 31
/* 8150B940 | 7C A6 20 78 */	andc r6, r5, r4
.L_8150B944:
/* 8150B944 | 88 BD 00 74 */	lbz r5, 0x74(r29)
/* 8150B948 | 80 9D 00 40 */	lwz r4, 0x40(r29)
/* 8150B94C | 7C A5 22 14 */	add r5, r5, r4
/* 8150B950 | 2C 05 00 7F */	cmpwi r5, 0x7f
/* 8150B954 | 40 81 00 0C */	ble .L_8150B960
/* 8150B958 | 38 80 00 7F */	li r4, 0x7f
/* 8150B95C | 48 00 00 0C */	b .L_8150B968
.L_8150B960:
/* 8150B960 | 7C A4 FE 70 */	srawi r4, r5, 31
/* 8150B964 | 7C A4 20 78 */	andc r4, r5, r4
.L_8150B968:
/* 8150B968 | 7C 04 30 00 */	cmpw r4, r6
/* 8150B96C | 41 80 00 10 */	blt .L_8150B97C
/* 8150B970 | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_8150B974:
/* 8150B974 | 7C 03 00 40 */	cmplw r3, r0
/* 8150B978 | 40 82 FF A8 */	bne .L_8150B920
.L_8150B97C:
/* 8150B97C | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8150B980 | 38 78 00 0C */	addi r3, r24, 0xc
/* 8150B984 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8150B988 | 38 BD 00 C8 */	addi r5, r29, 0xc8
/* 8150B98C | 48 00 6A E9 */	bl fn_81512474
/* 8150B990 | 7F A3 EB 78 */	mr r3, r29
.L_8150B994:
/* 8150B994 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8150B998 | 48 0E DB 65 */	bl _restgpr_23
/* 8150B99C | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 8150B9A0 | 7C 08 03 A6 */	mtlr r0
/* 8150B9A4 | 38 21 00 60 */	addi r1, r1, 0x60
/* 8150B9A8 | 4E 80 00 20 */	blr
.endfn "detail_AllocWaveSound__Q34nw4r3snd11SoundPlayerFiiPQ54nw4r3snd6detail10BasicSound14AmbientArgInfoPQ44nw4r3snd6detail19ExternalSoundPlayerUlPQ44nw4r3snd6detail50SoundInstanceManager<Q44nw4r3snd6detail9WaveSound>"

# .text:0xEEC | 0x8150B9AC | size: 0x78
# nw4r::snd::SoundPlayer::SetPlayableSoundCount(int)
.fn SetPlayableSoundCount__Q34nw4r3snd11SoundPlayerFi, global
/* 8150B9AC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150B9B0 | 7C 08 02 A6 */	mflr r0
/* 8150B9B4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150B9B8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150B9BC | 7C 7F 1B 78 */	mr r31, r3
/* 8150B9C0 | 88 03 00 2D */	lbz r0, 0x2d(r3)
/* 8150B9C4 | B0 83 00 24 */	sth r4, 0x24(r3)
/* 8150B9C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150B9CC | 41 82 00 34 */	beq .L_8150BA00
/* 8150B9D0 | A0 A3 00 26 */	lhz r5, 0x26(r3)
/* 8150B9D4 | 54 80 04 3E */	clrlwi r0, r4, 16
/* 8150B9D8 | 7C 00 28 40 */	cmplw r0, r5
/* 8150B9DC | 40 81 00 08 */	ble .L_8150B9E4
/* 8150B9E0 | 7C A0 2B 78 */	mr r0, r5
.L_8150B9E4:
/* 8150B9E4 | B0 03 00 24 */	sth r0, 0x24(r3)
/* 8150B9E8 | 48 00 00 18 */	b .L_8150BA00
.L_8150B9EC:
/* 8150B9EC | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8150B9F0 | 85 83 FF 38 */	lwzu r12, -0xc8(r3)
/* 8150B9F4 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8150B9F8 | 7D 89 03 A6 */	mtctr r12
/* 8150B9FC | 4E 80 04 21 */	bctrl
.L_8150BA00:
/* 8150BA00 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8150BA04 | A0 1F 00 24 */	lhz r0, 0x24(r31)
/* 8150BA08 | 7C 03 00 00 */	cmpw r3, r0
/* 8150BA0C | 41 81 FF E0 */	bgt .L_8150B9EC
/* 8150BA10 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150BA14 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8150BA18 | 7C 08 03 A6 */	mtlr r0
/* 8150BA1C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150BA20 | 4E 80 00 20 */	blr
.endfn SetPlayableSoundCount__Q34nw4r3snd11SoundPlayerFi

# .text:0xF64 | 0x8150BA24 | size: 0x8
# nw4r::snd::SoundPlayer::detail_SetPlayableSoundLimit(int)
.fn detail_SetPlayableSoundLimit__Q34nw4r3snd11SoundPlayerFi, global
/* 8150BA24 | B0 83 00 26 */	sth r4, 0x26(r3)
/* 8150BA28 | 4E 80 00 20 */	blr
.endfn detail_SetPlayableSoundLimit__Q34nw4r3snd11SoundPlayerFi

# .text:0xF6C | 0x8150BA2C | size: 0x150
# nw4r::snd::SoundPlayer::CheckPlayableSoundCount(int, nw4r::snd::detail::ExternalSoundPlayer*)
.fn CheckPlayableSoundCount__Q34nw4r3snd11SoundPlayerFiPQ44nw4r3snd6detail19ExternalSoundPlayer, global
/* 8150BA2C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150BA30 | 7C 08 02 A6 */	mflr r0
/* 8150BA34 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8150BA38 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8150BA3C | 7C BF 2B 78 */	mr r31, r5
/* 8150BA40 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8150BA44 | 7C 9E 23 78 */	mr r30, r4
/* 8150BA48 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8150BA4C | 7C 7D 1B 78 */	mr r29, r3
/* 8150BA50 | A0 03 00 24 */	lhz r0, 0x24(r3)
/* 8150BA54 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150BA58 | 40 82 00 68 */	bne .L_8150BAC0
/* 8150BA5C | 38 60 00 00 */	li r3, 0x0
/* 8150BA60 | 48 00 01 00 */	b .L_8150BB60
/* 8150BA64 | 48 00 00 5C */	b .L_8150BAC0
.L_8150BA68:
/* 8150BA68 | 80 1D 00 10 */	lwz r0, 0x10(r29)
/* 8150BA6C | 34 60 FF 38 */	subic. r3, r0, 0xc8
/* 8150BA70 | 40 82 00 0C */	bne .L_8150BA7C
/* 8150BA74 | 38 60 00 00 */	li r3, 0x0
/* 8150BA78 | 48 00 00 E8 */	b .L_8150BB60
.L_8150BA7C:
/* 8150BA7C | 88 83 00 74 */	lbz r4, 0x74(r3)
/* 8150BA80 | 80 03 00 40 */	lwz r0, 0x40(r3)
/* 8150BA84 | 7C 84 02 14 */	add r4, r4, r0
/* 8150BA88 | 2C 04 00 7F */	cmpwi r4, 0x7f
/* 8150BA8C | 40 81 00 0C */	ble .L_8150BA98
/* 8150BA90 | 38 00 00 7F */	li r0, 0x7f
/* 8150BA94 | 48 00 00 0C */	b .L_8150BAA0
.L_8150BA98:
/* 8150BA98 | 7C 80 FE 70 */	srawi r0, r4, 31
/* 8150BA9C | 7C 80 00 78 */	andc r0, r4, r0
.L_8150BAA0:
/* 8150BAA0 | 7C 1E 00 00 */	cmpw r30, r0
/* 8150BAA4 | 40 80 00 0C */	bge .L_8150BAB0
/* 8150BAA8 | 38 60 00 00 */	li r3, 0x0
/* 8150BAAC | 48 00 00 B4 */	b .L_8150BB60
.L_8150BAB0:
/* 8150BAB0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150BAB4 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8150BAB8 | 7D 89 03 A6 */	mtctr r12
/* 8150BABC | 4E 80 04 21 */	bctrl
.L_8150BAC0:
/* 8150BAC0 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8150BAC4 | A0 1D 00 24 */	lhz r0, 0x24(r29)
/* 8150BAC8 | 7C 03 00 00 */	cmpw r3, r0
/* 8150BACC | 40 80 FF 9C */	bge .L_8150BA68
/* 8150BAD0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8150BAD4 | 41 82 00 88 */	beq .L_8150BB5C
/* 8150BAD8 | A0 1F 00 0C */	lhz r0, 0xc(r31)
/* 8150BADC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150BAE0 | 40 82 00 6C */	bne .L_8150BB4C
/* 8150BAE4 | 38 60 00 00 */	li r3, 0x0
/* 8150BAE8 | 48 00 00 78 */	b .L_8150BB60
/* 8150BAEC | 48 00 00 60 */	b .L_8150BB4C
.L_8150BAF0:
/* 8150BAF0 | 7F E3 FB 78 */	mr r3, r31
/* 8150BAF4 | 4B FF 39 4D */	bl GetLowestPrioritySound__Q44nw4r3snd6detail19ExternalSoundPlayerFv
/* 8150BAF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150BAFC | 40 82 00 0C */	bne .L_8150BB08
/* 8150BB00 | 38 60 00 00 */	li r3, 0x0
/* 8150BB04 | 48 00 00 5C */	b .L_8150BB60
.L_8150BB08:
/* 8150BB08 | 88 83 00 74 */	lbz r4, 0x74(r3)
/* 8150BB0C | 80 03 00 40 */	lwz r0, 0x40(r3)
/* 8150BB10 | 7C 84 02 14 */	add r4, r4, r0
/* 8150BB14 | 2C 04 00 7F */	cmpwi r4, 0x7f
/* 8150BB18 | 40 81 00 0C */	ble .L_8150BB24
/* 8150BB1C | 38 00 00 7F */	li r0, 0x7f
/* 8150BB20 | 48 00 00 0C */	b .L_8150BB2C
.L_8150BB24:
/* 8150BB24 | 7C 80 FE 70 */	srawi r0, r4, 31
/* 8150BB28 | 7C 80 00 78 */	andc r0, r4, r0
.L_8150BB2C:
/* 8150BB2C | 7C 1E 00 00 */	cmpw r30, r0
/* 8150BB30 | 40 80 00 0C */	bge .L_8150BB3C
/* 8150BB34 | 38 60 00 00 */	li r3, 0x0
/* 8150BB38 | 48 00 00 28 */	b .L_8150BB60
.L_8150BB3C:
/* 8150BB3C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150BB40 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8150BB44 | 7D 89 03 A6 */	mtctr r12
/* 8150BB48 | 4E 80 04 21 */	bctrl
.L_8150BB4C:
/* 8150BB4C | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8150BB50 | A0 1F 00 0C */	lhz r0, 0xc(r31)
/* 8150BB54 | 7C 03 00 00 */	cmpw r3, r0
/* 8150BB58 | 40 80 FF 98 */	bge .L_8150BAF0
.L_8150BB5C:
/* 8150BB5C | 38 60 00 01 */	li r3, 0x1
.L_8150BB60:
/* 8150BB60 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150BB64 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8150BB68 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8150BB6C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8150BB70 | 7C 08 03 A6 */	mtlr r0
/* 8150BB74 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150BB78 | 4E 80 00 20 */	blr
.endfn CheckPlayableSoundCount__Q34nw4r3snd11SoundPlayerFiPQ44nw4r3snd6detail19ExternalSoundPlayer

# .text:0x10BC | 0x8150BB7C | size: 0x50
# nw4r::snd::SoundPlayer::detail_AppendPlayerHeap(nw4r::snd::detail::PlayerHeap*)
.fn detail_AppendPlayerHeap__Q34nw4r3snd11SoundPlayerFPQ44nw4r3snd6detail10PlayerHeap, global
/* 8150BB7C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150BB80 | 7C 08 02 A6 */	mflr r0
/* 8150BB84 | 7C 85 23 78 */	mr r5, r4
/* 8150BB88 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8150BB8C | 38 03 00 1C */	addi r0, r3, 0x1c
/* 8150BB90 | 38 A5 00 2C */	addi r5, r5, 0x2c
/* 8150BB94 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8150BB98 | 7C 7F 1B 78 */	mr r31, r3
/* 8150BB9C | 90 64 00 38 */	stw r3, 0x38(r4)
/* 8150BBA0 | 38 63 00 18 */	addi r3, r3, 0x18
/* 8150BBA4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8150BBA8 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8150BBAC | 48 00 68 C9 */	bl fn_81512474
/* 8150BBB0 | 38 00 00 01 */	li r0, 0x1
/* 8150BBB4 | 98 1F 00 2D */	stb r0, 0x2d(r31)
/* 8150BBB8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8150BBBC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150BBC0 | 7C 08 03 A6 */	mtlr r0
/* 8150BBC4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150BBC8 | 4E 80 00 20 */	blr
.endfn detail_AppendPlayerHeap__Q34nw4r3snd11SoundPlayerFPQ44nw4r3snd6detail10PlayerHeap

# .text:0x110C | 0x8150BBCC | size: 0x6C
# nw4r::snd::SoundPlayer::detail_FreePlayerHeap(nw4r::snd::detail::BasicSound*)
.fn detail_FreePlayerHeap__Q34nw4r3snd11SoundPlayerFPQ44nw4r3snd6detail10BasicSound, global
/* 8150BBCC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150BBD0 | 7C 08 02 A6 */	mflr r0
/* 8150BBD4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8150BBD8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8150BBDC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8150BBE0 | 7C 9E 23 78 */	mr r30, r4
/* 8150BBE4 | 83 E4 00 04 */	lwz r31, 0x4(r4)
/* 8150BBE8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8150BBEC | 41 82 00 1C */	beq .L_8150BC08
/* 8150BBF0 | 38 03 00 1C */	addi r0, r3, 0x1c
/* 8150BBF4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8150BBF8 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8150BBFC | 38 BF 00 2C */	addi r5, r31, 0x2c
/* 8150BC00 | 38 63 00 18 */	addi r3, r3, 0x18
/* 8150BC04 | 48 00 68 71 */	bl fn_81512474
.L_8150BC08:
/* 8150BC08 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8150BC0C | 41 82 00 0C */	beq .L_8150BC18
/* 8150BC10 | 38 00 00 00 */	li r0, 0x0
/* 8150BC14 | 90 1F 00 34 */	stw r0, 0x34(r31)
.L_8150BC18:
/* 8150BC18 | 38 00 00 00 */	li r0, 0x0
/* 8150BC1C | 90 1E 00 04 */	stw r0, 0x4(r30)
/* 8150BC20 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8150BC24 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8150BC28 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150BC2C | 7C 08 03 A6 */	mtlr r0
/* 8150BC30 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150BC34 | 4E 80 00 20 */	blr
.endfn detail_FreePlayerHeap__Q34nw4r3snd11SoundPlayerFPQ44nw4r3snd6detail10BasicSound

# 0x81695398..0x816953A0 | size: 0x8
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81695398 | size: 0x4
.obj lbl_81695398, global
	.float 1
.endobj lbl_81695398

# .sdata2:0x4 | 0x8169539C | size: 0x4
.obj gap_09_8169539C_sdata2, global
.hidden gap_09_8169539C_sdata2
	.4byte 0x00000000
.endobj gap_09_8169539C_sdata2
