.include "macros.inc"
.file "snd_WsdPlayer.cpp"

# 0x81110998..0x811109B0 | size: 0x18
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x81110998 | size: 0xC
.obj lbl_81110998, global
	.skip 0xC
.endobj lbl_81110998

# .bss:0xC | 0x811109A4 | size: 0xC
.obj playerList__Q44nw4r3snd6detail27, global
	.skip 0xC
.endobj playerList__Q44nw4r3snd6detail27

# 0x81510B74..0x815116F4 | size: 0xB80
.text
.balign 4

# .text:0x0 | 0x81510B74 | size: 0x74
# nw4r::snd::detail::WsdPlayer::WsdPlayer()
.fn __ct__Q44nw4r3snd6detail9WsdPlayerFv, global
/* 81510B74 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81510B78 | 7C 08 02 A6 */	mflr r0
/* 81510B7C | 3C 80 81 67 */	lis r4, __vt__Q44nw4r3snd6detail9WsdPlayer@ha
/* 81510B80 | 38 A0 FF FF */	li r5, -0x1
/* 81510B84 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81510B88 | 38 84 FB 88 */	addi r4, r4, __vt__Q44nw4r3snd6detail9WsdPlayer@l
/* 81510B8C | 38 04 00 98 */	addi r0, r4, 0x98
/* 81510B90 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81510B94 | 3B E0 00 00 */	li r31, 0x0
/* 81510B98 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81510B9C | 7C 7E 1B 78 */	mr r30, r3
/* 81510BA0 | 90 A3 00 04 */	stw r5, 0x4(r3)
/* 81510BA4 | 93 E3 00 08 */	stw r31, 0x8(r3)
/* 81510BA8 | 93 E3 00 0C */	stw r31, 0xc(r3)
/* 81510BAC | 90 83 00 00 */	stw r4, 0x0(r3)
/* 81510BB0 | 90 03 00 10 */	stw r0, 0x10(r3)
/* 81510BB4 | 93 E3 00 14 */	stw r31, 0x14(r3)
/* 81510BB8 | 93 E3 00 18 */	stw r31, 0x18(r3)
/* 81510BBC | 9B E3 00 1D */	stb r31, 0x1d(r3)
/* 81510BC0 | 38 63 00 A8 */	addi r3, r3, 0xa8
/* 81510BC4 | 4B FF 09 59 */	bl Init__Q44nw4r3snd6detail8LfoParamFv
/* 81510BC8 | 93 FE 00 C8 */	stw r31, 0xc8(r30)
/* 81510BCC | 7F C3 F3 78 */	mr r3, r30
/* 81510BD0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81510BD4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81510BD8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81510BDC | 7C 08 03 A6 */	mtlr r0
/* 81510BE0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81510BE4 | 4E 80 00 20 */	blr
.endfn __ct__Q44nw4r3snd6detail9WsdPlayerFv

# .text:0x74 | 0x81510BE8 | size: 0x98
# nw4r::snd::detail::WsdPlayer::InitParam(int, const nw4r::snd::detail::WsdTrack::WsdCallback*, unsigned long)
.fn InitParam__Q44nw4r3snd6detail9WsdPlayerFiPCQ54nw4r3snd6detail8WsdTrack11WsdCallbackUl, global
/* 81510BE8 | C0 02 90 14 */	lfs f0, lbl_81695414@sda21(r0)
/* 81510BEC | 39 00 00 00 */	li r8, 0x0
/* 81510BF0 | C0 22 90 10 */	lfs f1, lbl_81695410@sda21(r0)
/* 81510BF4 | 38 E0 00 01 */	li r7, 0x1
/* 81510BF8 | 38 00 00 40 */	li r0, 0x40
/* 81510BFC | 99 03 00 1E */	stb r8, 0x1e(r3)
/* 81510C00 | 99 03 00 1F */	stb r8, 0x1f(r3)
/* 81510C04 | 99 03 00 20 */	stb r8, 0x20(r3)
/* 81510C08 | 99 03 00 21 */	stb r8, 0x21(r3)
/* 81510C0C | 99 03 00 1C */	stb r8, 0x1c(r3)
/* 81510C10 | D0 23 00 24 */	stfs f1, 0x24(r3)
/* 81510C14 | D0 23 00 3C */	stfs f1, 0x3c(r3)
/* 81510C18 | D0 03 00 28 */	stfs f0, 0x28(r3)
/* 81510C1C | D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 81510C20 | D0 03 00 34 */	stfs f0, 0x34(r3)
/* 81510C24 | D0 03 00 38 */	stfs f0, 0x38(r3)
/* 81510C28 | D0 23 00 30 */	stfs f1, 0x30(r3)
/* 81510C2C | D0 03 00 40 */	stfs f0, 0x40(r3)
/* 81510C30 | 90 E3 00 44 */	stw r7, 0x44(r3)
/* 81510C34 | D0 23 00 48 */	stfs f1, 0x48(r3)
/* 81510C38 | D0 03 00 4C */	stfs f0, 0x4c(r3)
/* 81510C3C | D0 03 00 50 */	stfs f0, 0x50(r3)
/* 81510C40 | D0 03 00 54 */	stfs f0, 0x54(r3)
/* 81510C44 | D0 03 00 58 */	stfs f0, 0x58(r3)
/* 81510C48 | D0 03 00 6C */	stfs f0, 0x6c(r3)
/* 81510C4C | D0 03 00 7C */	stfs f0, 0x7c(r3)
/* 81510C50 | D0 03 00 70 */	stfs f0, 0x70(r3)
/* 81510C54 | D0 03 00 80 */	stfs f0, 0x80(r3)
/* 81510C58 | D0 03 00 74 */	stfs f0, 0x74(r3)
/* 81510C5C | D0 03 00 84 */	stfs f0, 0x84(r3)
/* 81510C60 | D0 03 00 78 */	stfs f0, 0x78(r3)
/* 81510C64 | D0 03 00 88 */	stfs f0, 0x88(r3)
/* 81510C68 | 91 03 00 D0 */	stw r8, 0xd0(r3)
/* 81510C6C | 90 83 00 8C */	stw r4, 0x8c(r3)
/* 81510C70 | 98 03 00 90 */	stb r0, 0x90(r3)
/* 81510C74 | 90 A3 00 94 */	stw r5, 0x94(r3)
/* 81510C78 | 90 C3 00 98 */	stw r6, 0x98(r3)
/* 81510C7C | 4E 80 00 20 */	blr
.endfn InitParam__Q44nw4r3snd6detail9WsdPlayerFiPCQ54nw4r3snd6detail8WsdTrack11WsdCallbackUl

# .text:0x10C | 0x81510C80 | size: 0x120
# nw4r::snd::detail::WsdPlayer::Prepare(const void*, int, int, const nw4r::snd::detail::WsdTrack::WsdCallback*, unsigned long)
.fn Prepare__Q44nw4r3snd6detail9WsdPlayerFPCviiPCQ54nw4r3snd6detail8WsdTrack11WsdCallbackUl, global
/* 81510C80 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81510C84 | 7C 08 02 A6 */	mflr r0
/* 81510C88 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81510C8C | 39 61 00 30 */	addi r11, r1, 0x30
/* 81510C90 | 48 0E 88 21 */	bl _savegpr_23
/* 81510C94 | 7C 77 1B 78 */	mr r23, r3
/* 81510C98 | 7C 98 23 78 */	mr r24, r4
/* 81510C9C | 7C B9 2B 78 */	mr r25, r5
/* 81510CA0 | 7C DA 33 78 */	mr r26, r6
/* 81510CA4 | 7C FB 3B 78 */	mr r27, r7
/* 81510CA8 | 7D 1C 43 78 */	mr r28, r8
/* 81510CAC | 48 01 FB D9 */	bl OSDisableInterrupts
/* 81510CB0 | 88 17 00 1D */	lbz r0, 0x1d(r23)
/* 81510CB4 | 7C 7F 1B 78 */	mr r31, r3
/* 81510CB8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81510CBC | 41 82 00 68 */	beq .L_81510D24
/* 81510CC0 | 48 01 FB C5 */	bl OSDisableInterrupts
/* 81510CC4 | 88 17 00 1F */	lbz r0, 0x1f(r23)
/* 81510CC8 | 7C 7E 1B 78 */	mr r30, r3
/* 81510CCC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81510CD0 | 41 82 00 14 */	beq .L_81510CE4
/* 81510CD4 | 3C 60 81 11 */	lis r3, playerList__Q44nw4r3snd6detail27@ha
/* 81510CD8 | 38 97 00 14 */	addi r4, r23, 0x14
/* 81510CDC | 38 63 09 A4 */	addi r3, r3, playerList__Q44nw4r3snd6detail27@l
/* 81510CE0 | 48 00 17 C1 */	bl fn_815124A0
.L_81510CE4:
/* 81510CE4 | 88 17 00 1D */	lbz r0, 0x1d(r23)
/* 81510CE8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81510CEC | 41 82 00 20 */	beq .L_81510D0C
/* 81510CF0 | 2C 17 00 00 */	cmpwi r23, 0x0
/* 81510CF4 | 7E FD BB 78 */	mr r29, r23
/* 81510CF8 | 41 82 00 08 */	beq .L_81510D00
/* 81510CFC | 3B B7 00 08 */	addi r29, r23, 0x8
.L_81510D00:
/* 81510D00 | 4B FE D8 E5 */	bl GetInstance__Q44nw4r3snd6detail22DisposeCallbackManagerFv
/* 81510D04 | 7F A4 EB 78 */	mr r4, r29
/* 81510D08 | 4B FE DA 25 */	bl UnregisterDisposeCallback__Q44nw4r3snd6detail22DisposeCallbackManagerFPQ44nw4r3snd6detail15DisposeCallback
.L_81510D0C:
/* 81510D0C | 7F C3 F3 78 */	mr r3, r30
/* 81510D10 | 48 01 FB 9D */	bl OSRestoreInterrupts
/* 81510D14 | 38 77 00 9C */	addi r3, r23, 0x9c
/* 81510D18 | 48 00 0A 71 */	bl Close__Q44nw4r3snd6detail8WsdTrackFv
/* 81510D1C | 38 00 00 00 */	li r0, 0x0
/* 81510D20 | 98 17 00 1D */	stb r0, 0x1d(r23)
.L_81510D24:
/* 81510D24 | 7E E3 BB 78 */	mr r3, r23
/* 81510D28 | 7F 44 D3 78 */	mr r4, r26
/* 81510D2C | 7F 65 DB 78 */	mr r5, r27
/* 81510D30 | 7F 86 E3 78 */	mr r6, r28
/* 81510D34 | 4B FF FE B5 */	bl InitParam__Q44nw4r3snd6detail9WsdPlayerFiPCQ54nw4r3snd6detail8WsdTrack11WsdCallbackUl
/* 81510D38 | 7E E4 BB 78 */	mr r4, r23
/* 81510D3C | 38 77 00 9C */	addi r3, r23, 0x9c
/* 81510D40 | 48 00 09 B5 */	bl Init__Q44nw4r3snd6detail8WsdTrackFPQ44nw4r3snd6detail9WsdPlayer
/* 81510D44 | 7F 04 C3 78 */	mr r4, r24
/* 81510D48 | 7F 25 CB 78 */	mr r5, r25
/* 81510D4C | 38 77 00 9C */	addi r3, r23, 0x9c
/* 81510D50 | 48 00 0A 2D */	bl Start__Q44nw4r3snd6detail8WsdTrackFPCvi
/* 81510D54 | 2C 17 00 00 */	cmpwi r23, 0x0
/* 81510D58 | 7E FD BB 78 */	mr r29, r23
/* 81510D5C | 41 82 00 08 */	beq .L_81510D64
/* 81510D60 | 3B B7 00 08 */	addi r29, r23, 0x8
.L_81510D64:
/* 81510D64 | 4B FE D8 81 */	bl GetInstance__Q44nw4r3snd6detail22DisposeCallbackManagerFv
/* 81510D68 | 7F A4 EB 78 */	mr r4, r29
/* 81510D6C | 4B FE D9 5D */	bl RegisterDisposeCallback__Q44nw4r3snd6detail22DisposeCallbackManagerFPQ44nw4r3snd6detail15DisposeCallback
/* 81510D70 | 38 00 00 01 */	li r0, 0x1
/* 81510D74 | 7F E3 FB 78 */	mr r3, r31
/* 81510D78 | 98 17 00 1D */	stb r0, 0x1d(r23)
/* 81510D7C | 98 17 00 1E */	stb r0, 0x1e(r23)
/* 81510D80 | 48 01 FB 2D */	bl OSRestoreInterrupts
/* 81510D84 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81510D88 | 38 60 00 01 */	li r3, 0x1
/* 81510D8C | 48 0E 87 71 */	bl _restgpr_23
/* 81510D90 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81510D94 | 7C 08 03 A6 */	mtlr r0
/* 81510D98 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81510D9C | 4E 80 00 20 */	blr
.endfn Prepare__Q44nw4r3snd6detail9WsdPlayerFPCviiPCQ54nw4r3snd6detail8WsdTrack11WsdCallbackUl

# .text:0x22C | 0x81510DA0 | size: 0x74
# nw4r::snd::detail::WsdPlayer::Start()
.fn Start__Q44nw4r3snd6detail9WsdPlayerFv, global
/* 81510DA0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81510DA4 | 7C 08 02 A6 */	mflr r0
/* 81510DA8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81510DAC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81510DB0 | 7C 7F 1B 78 */	mr r31, r3
/* 81510DB4 | 88 03 00 1E */	lbz r0, 0x1e(r3)
/* 81510DB8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81510DBC | 40 82 00 0C */	bne .L_81510DC8
/* 81510DC0 | 38 60 00 00 */	li r3, 0x0
/* 81510DC4 | 48 00 00 3C */	b .L_81510E00
.L_81510DC8:
/* 81510DC8 | 3C 60 81 11 */	lis r3, playerList__Q44nw4r3snd6detail27@ha
/* 81510DCC | 38 81 00 08 */	addi r4, r1, 0x8
/* 81510DD0 | 38 63 09 A4 */	addi r3, r3, playerList__Q44nw4r3snd6detail27@l
/* 81510DD4 | 38 BF 00 14 */	addi r5, r31, 0x14
/* 81510DD8 | 38 03 00 04 */	addi r0, r3, 0x4
/* 81510DDC | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81510DE0 | 48 00 16 95 */	bl fn_81512474
/* 81510DE4 | 4B FE 67 E9 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 81510DE8 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 81510DEC | 38 00 00 01 */	li r0, 0x1
/* 81510DF0 | 88 83 A2 32 */	lbz r4, -0x5dce(r3)
/* 81510DF4 | 38 60 00 01 */	li r3, 0x1
/* 81510DF8 | 98 9F 00 1C */	stb r4, 0x1c(r31)
/* 81510DFC | 98 1F 00 1F */	stb r0, 0x1f(r31)
.L_81510E00:
/* 81510E00 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81510E04 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81510E08 | 7C 08 03 A6 */	mtlr r0
/* 81510E0C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81510E10 | 4E 80 00 20 */	blr
.endfn Start__Q44nw4r3snd6detail9WsdPlayerFv

# .text:0x2A0 | 0x81510E14 | size: 0xA8
# nw4r::snd::detail::WsdPlayer::Stop()
.fn Stop__Q44nw4r3snd6detail9WsdPlayerFv, global
/* 81510E14 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81510E18 | 7C 08 02 A6 */	mflr r0
/* 81510E1C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81510E20 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81510E24 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81510E28 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81510E2C | 7C 7D 1B 78 */	mr r29, r3
/* 81510E30 | 88 03 00 1D */	lbz r0, 0x1d(r3)
/* 81510E34 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81510E38 | 41 82 00 68 */	beq .L_81510EA0
/* 81510E3C | 48 01 FA 49 */	bl OSDisableInterrupts
/* 81510E40 | 88 1D 00 1F */	lbz r0, 0x1f(r29)
/* 81510E44 | 7C 7F 1B 78 */	mr r31, r3
/* 81510E48 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81510E4C | 41 82 00 14 */	beq .L_81510E60
/* 81510E50 | 3C 60 81 11 */	lis r3, playerList__Q44nw4r3snd6detail27@ha
/* 81510E54 | 38 9D 00 14 */	addi r4, r29, 0x14
/* 81510E58 | 38 63 09 A4 */	addi r3, r3, playerList__Q44nw4r3snd6detail27@l
/* 81510E5C | 48 00 16 45 */	bl fn_815124A0
.L_81510E60:
/* 81510E60 | 88 1D 00 1D */	lbz r0, 0x1d(r29)
/* 81510E64 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81510E68 | 41 82 00 20 */	beq .L_81510E88
/* 81510E6C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81510E70 | 7F BE EB 78 */	mr r30, r29
/* 81510E74 | 41 82 00 08 */	beq .L_81510E7C
/* 81510E78 | 3B DD 00 08 */	addi r30, r29, 0x8
.L_81510E7C:
/* 81510E7C | 4B FE D7 69 */	bl GetInstance__Q44nw4r3snd6detail22DisposeCallbackManagerFv
/* 81510E80 | 7F C4 F3 78 */	mr r4, r30
/* 81510E84 | 4B FE D8 A9 */	bl UnregisterDisposeCallback__Q44nw4r3snd6detail22DisposeCallbackManagerFPQ44nw4r3snd6detail15DisposeCallback
.L_81510E88:
/* 81510E88 | 7F E3 FB 78 */	mr r3, r31
/* 81510E8C | 48 01 FA 21 */	bl OSRestoreInterrupts
/* 81510E90 | 38 7D 00 9C */	addi r3, r29, 0x9c
/* 81510E94 | 48 00 08 F5 */	bl Close__Q44nw4r3snd6detail8WsdTrackFv
/* 81510E98 | 38 00 00 00 */	li r0, 0x0
/* 81510E9C | 98 1D 00 1D */	stb r0, 0x1d(r29)
.L_81510EA0:
/* 81510EA0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81510EA4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81510EA8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81510EAC | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81510EB0 | 7C 08 03 A6 */	mtlr r0
/* 81510EB4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81510EB8 | 4E 80 00 20 */	blr
.endfn Stop__Q44nw4r3snd6detail9WsdPlayerFv

# .text:0x348 | 0x81510EBC | size: 0x5C
# nw4r::snd::detail::WsdPlayer::Pause(bool)
.fn Pause__Q44nw4r3snd6detail9WsdPlayerFb, global
/* 81510EBC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81510EC0 | 7C 08 02 A6 */	mflr r0
/* 81510EC4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81510EC8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81510ECC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81510ED0 | 7C 9E 23 78 */	mr r30, r4
/* 81510ED4 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81510ED8 | 7C 7D 1B 78 */	mr r29, r3
/* 81510EDC | 48 01 F9 A9 */	bl OSDisableInterrupts
/* 81510EE0 | 9B DD 00 20 */	stb r30, 0x20(r29)
/* 81510EE4 | 7C 7F 1B 78 */	mr r31, r3
/* 81510EE8 | 7F C4 F3 78 */	mr r4, r30
/* 81510EEC | 38 7D 00 9C */	addi r3, r29, 0x9c
/* 81510EF0 | 48 00 0A 55 */	bl PauseAllChannel__Q44nw4r3snd6detail8WsdTrackFb
/* 81510EF4 | 7F E3 FB 78 */	mr r3, r31
/* 81510EF8 | 48 01 F9 B5 */	bl OSRestoreInterrupts
/* 81510EFC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81510F00 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81510F04 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81510F08 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81510F0C | 7C 08 03 A6 */	mtlr r0
/* 81510F10 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81510F14 | 4E 80 00 20 */	blr
.endfn Pause__Q44nw4r3snd6detail9WsdPlayerFb

# .text:0x3A4 | 0x81510F18 | size: 0x40
# nw4r::snd::detail::WsdPlayer::SetVolume(float)
.fn SetVolume__Q44nw4r3snd6detail9WsdPlayerFf, global
/* 81510F18 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81510F1C | 7C 08 02 A6 */	mflr r0
/* 81510F20 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81510F24 | DB E1 00 18 */	stfd f31, 0x18(r1)
/* 81510F28 | FF E0 08 90 */	fmr f31, f1
/* 81510F2C | 93 E1 00 14 */	stw r31, 0x14(r1)
/* 81510F30 | 7C 7F 1B 78 */	mr r31, r3
/* 81510F34 | 48 01 F9 51 */	bl OSDisableInterrupts
/* 81510F38 | D3 FF 00 24 */	stfs f31, 0x24(r31)
/* 81510F3C | 48 01 F9 71 */	bl OSRestoreInterrupts
/* 81510F40 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81510F44 | CB E1 00 18 */	lfd f31, 0x18(r1)
/* 81510F48 | 83 E1 00 14 */	lwz r31, 0x14(r1)
/* 81510F4C | 7C 08 03 A6 */	mtlr r0
/* 81510F50 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81510F54 | 4E 80 00 20 */	blr
.endfn SetVolume__Q44nw4r3snd6detail9WsdPlayerFf

# .text:0x3E4 | 0x81510F58 | size: 0x40
# nw4r::snd::detail::WsdPlayer::SetPitch(float)
.fn SetPitch__Q44nw4r3snd6detail9WsdPlayerFf, global
/* 81510F58 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81510F5C | 7C 08 02 A6 */	mflr r0
/* 81510F60 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81510F64 | DB E1 00 18 */	stfd f31, 0x18(r1)
/* 81510F68 | FF E0 08 90 */	fmr f31, f1
/* 81510F6C | 93 E1 00 14 */	stw r31, 0x14(r1)
/* 81510F70 | 7C 7F 1B 78 */	mr r31, r3
/* 81510F74 | 48 01 F9 11 */	bl OSDisableInterrupts
/* 81510F78 | D3 FF 00 3C */	stfs f31, 0x3c(r31)
/* 81510F7C | 48 01 F9 31 */	bl OSRestoreInterrupts
/* 81510F80 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81510F84 | CB E1 00 18 */	lfd f31, 0x18(r1)
/* 81510F88 | 83 E1 00 14 */	lwz r31, 0x14(r1)
/* 81510F8C | 7C 08 03 A6 */	mtlr r0
/* 81510F90 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81510F94 | 4E 80 00 20 */	blr
.endfn SetPitch__Q44nw4r3snd6detail9WsdPlayerFf

# .text:0x424 | 0x81510F98 | size: 0x40
# nw4r::snd::detail::WsdPlayer::SetPan(float)
.fn SetPan__Q44nw4r3snd6detail9WsdPlayerFf, global
/* 81510F98 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81510F9C | 7C 08 02 A6 */	mflr r0
/* 81510FA0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81510FA4 | DB E1 00 18 */	stfd f31, 0x18(r1)
/* 81510FA8 | FF E0 08 90 */	fmr f31, f1
/* 81510FAC | 93 E1 00 14 */	stw r31, 0x14(r1)
/* 81510FB0 | 7C 7F 1B 78 */	mr r31, r3
/* 81510FB4 | 48 01 F8 D1 */	bl OSDisableInterrupts
/* 81510FB8 | D3 FF 00 28 */	stfs f31, 0x28(r31)
/* 81510FBC | 48 01 F8 F1 */	bl OSRestoreInterrupts
/* 81510FC0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81510FC4 | CB E1 00 18 */	lfd f31, 0x18(r1)
/* 81510FC8 | 83 E1 00 14 */	lwz r31, 0x14(r1)
/* 81510FCC | 7C 08 03 A6 */	mtlr r0
/* 81510FD0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81510FD4 | 4E 80 00 20 */	blr
.endfn SetPan__Q44nw4r3snd6detail9WsdPlayerFf

# .text:0x464 | 0x81510FD8 | size: 0x40
# nw4r::snd::detail::WsdPlayer::SetSurroundPan(float)
.fn SetSurroundPan__Q44nw4r3snd6detail9WsdPlayerFf, global
/* 81510FD8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81510FDC | 7C 08 02 A6 */	mflr r0
/* 81510FE0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81510FE4 | DB E1 00 18 */	stfd f31, 0x18(r1)
/* 81510FE8 | FF E0 08 90 */	fmr f31, f1
/* 81510FEC | 93 E1 00 14 */	stw r31, 0x14(r1)
/* 81510FF0 | 7C 7F 1B 78 */	mr r31, r3
/* 81510FF4 | 48 01 F8 91 */	bl OSDisableInterrupts
/* 81510FF8 | D3 FF 00 2C */	stfs f31, 0x2c(r31)
/* 81510FFC | 48 01 F8 B1 */	bl OSRestoreInterrupts
/* 81511000 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81511004 | CB E1 00 18 */	lfd f31, 0x18(r1)
/* 81511008 | 83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8151100C | 7C 08 03 A6 */	mtlr r0
/* 81511010 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81511014 | 4E 80 00 20 */	blr
.endfn SetSurroundPan__Q44nw4r3snd6detail9WsdPlayerFf

# .text:0x4A4 | 0x81511018 | size: 0x40
# nw4r::snd::detail::WsdPlayer::SetPan2(float)
.fn SetPan2__Q44nw4r3snd6detail9WsdPlayerFf, global
/* 81511018 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8151101C | 7C 08 02 A6 */	mflr r0
/* 81511020 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81511024 | DB E1 00 18 */	stfd f31, 0x18(r1)
/* 81511028 | FF E0 08 90 */	fmr f31, f1
/* 8151102C | 93 E1 00 14 */	stw r31, 0x14(r1)
/* 81511030 | 7C 7F 1B 78 */	mr r31, r3
/* 81511034 | 48 01 F8 51 */	bl OSDisableInterrupts
/* 81511038 | D3 FF 00 34 */	stfs f31, 0x34(r31)
/* 8151103C | 48 01 F8 71 */	bl OSRestoreInterrupts
/* 81511040 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81511044 | CB E1 00 18 */	lfd f31, 0x18(r1)
/* 81511048 | 83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8151104C | 7C 08 03 A6 */	mtlr r0
/* 81511050 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81511054 | 4E 80 00 20 */	blr
.endfn SetPan2__Q44nw4r3snd6detail9WsdPlayerFf

# .text:0x4E4 | 0x81511058 | size: 0x40
# nw4r::snd::detail::WsdPlayer::SetSurroundPan2(float)
.fn SetSurroundPan2__Q44nw4r3snd6detail9WsdPlayerFf, global
/* 81511058 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8151105C | 7C 08 02 A6 */	mflr r0
/* 81511060 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81511064 | DB E1 00 18 */	stfd f31, 0x18(r1)
/* 81511068 | FF E0 08 90 */	fmr f31, f1
/* 8151106C | 93 E1 00 14 */	stw r31, 0x14(r1)
/* 81511070 | 7C 7F 1B 78 */	mr r31, r3
/* 81511074 | 48 01 F8 11 */	bl OSDisableInterrupts
/* 81511078 | D3 FF 00 38 */	stfs f31, 0x38(r31)
/* 8151107C | 48 01 F8 31 */	bl OSRestoreInterrupts
/* 81511080 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81511084 | CB E1 00 18 */	lfd f31, 0x18(r1)
/* 81511088 | 83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8151108C | 7C 08 03 A6 */	mtlr r0
/* 81511090 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81511094 | 4E 80 00 20 */	blr
.endfn SetSurroundPan2__Q44nw4r3snd6detail9WsdPlayerFf

# .text:0x524 | 0x81511098 | size: 0x40
# nw4r::snd::detail::WsdPlayer::SetLpfFreq(float)
.fn SetLpfFreq__Q44nw4r3snd6detail9WsdPlayerFf, global
/* 81511098 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8151109C | 7C 08 02 A6 */	mflr r0
/* 815110A0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 815110A4 | DB E1 00 18 */	stfd f31, 0x18(r1)
/* 815110A8 | FF E0 08 90 */	fmr f31, f1
/* 815110AC | 93 E1 00 14 */	stw r31, 0x14(r1)
/* 815110B0 | 7C 7F 1B 78 */	mr r31, r3
/* 815110B4 | 48 01 F7 D1 */	bl OSDisableInterrupts
/* 815110B8 | D3 FF 00 40 */	stfs f31, 0x40(r31)
/* 815110BC | 48 01 F7 F1 */	bl OSRestoreInterrupts
/* 815110C0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 815110C4 | CB E1 00 18 */	lfd f31, 0x18(r1)
/* 815110C8 | 83 E1 00 14 */	lwz r31, 0x14(r1)
/* 815110CC | 7C 08 03 A6 */	mtlr r0
/* 815110D0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 815110D4 | 4E 80 00 20 */	blr
.endfn SetLpfFreq__Q44nw4r3snd6detail9WsdPlayerFf

# .text:0x564 | 0x815110D8 | size: 0x40
# nw4r::snd::detail::WsdPlayer::SetMainSend(float)
.fn SetMainSend__Q44nw4r3snd6detail9WsdPlayerFf, global
/* 815110D8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 815110DC | 7C 08 02 A6 */	mflr r0
/* 815110E0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 815110E4 | DB E1 00 18 */	stfd f31, 0x18(r1)
/* 815110E8 | FF E0 08 90 */	fmr f31, f1
/* 815110EC | 93 E1 00 14 */	stw r31, 0x14(r1)
/* 815110F0 | 7C 7F 1B 78 */	mr r31, r3
/* 815110F4 | 48 01 F7 91 */	bl OSDisableInterrupts
/* 815110F8 | D3 FF 00 4C */	stfs f31, 0x4c(r31)
/* 815110FC | 48 01 F7 B1 */	bl OSRestoreInterrupts
/* 81511100 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81511104 | CB E1 00 18 */	lfd f31, 0x18(r1)
/* 81511108 | 83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8151110C | 7C 08 03 A6 */	mtlr r0
/* 81511110 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81511114 | 4E 80 00 20 */	blr
.endfn SetMainSend__Q44nw4r3snd6detail9WsdPlayerFf

# .text:0x5A4 | 0x81511118 | size: 0x8
# nw4r::snd::detail::WsdPlayer::GetMainSend() const
.fn GetMainSend__Q44nw4r3snd6detail9WsdPlayerCFv, global
/* 81511118 | C0 23 00 4C */	lfs f1, 0x4c(r3)
/* 8151111C | 4E 80 00 20 */	blr
.endfn GetMainSend__Q44nw4r3snd6detail9WsdPlayerCFv

# .text:0x5AC | 0x81511120 | size: 0x10
# nw4r::snd::detail::WsdPlayer::SetFxSend(nw4r::snd::AuxBus, float)
.fn SetFxSend__Q44nw4r3snd6detail9WsdPlayerFQ34nw4r3snd6AuxBusf, global
/* 81511120 | 54 80 10 3A */	slwi r0, r4, 2
/* 81511124 | 7C 63 02 14 */	add r3, r3, r0
/* 81511128 | D0 23 00 50 */	stfs f1, 0x50(r3)
/* 8151112C | 4E 80 00 20 */	blr
.endfn SetFxSend__Q44nw4r3snd6detail9WsdPlayerFQ34nw4r3snd6AuxBusf

# .text:0x5BC | 0x81511130 | size: 0x10
# nw4r::snd::detail::WsdPlayer::GetFxSend(nw4r::snd::AuxBus) const
.fn GetFxSend__Q44nw4r3snd6detail9WsdPlayerCFQ34nw4r3snd6AuxBus, global
/* 81511130 | 54 80 10 3A */	slwi r0, r4, 2
/* 81511134 | 7C 63 02 14 */	add r3, r3, r0
/* 81511138 | C0 23 00 50 */	lfs f1, 0x50(r3)
/* 8151113C | 4E 80 00 20 */	blr
.endfn GetFxSend__Q44nw4r3snd6detail9WsdPlayerCFQ34nw4r3snd6AuxBus

# .text:0x5CC | 0x81511140 | size: 0x40
# nw4r::snd::detail::WsdPlayer::SetOutputLine(int)
.fn SetOutputLine__Q44nw4r3snd6detail9WsdPlayerFi, global
/* 81511140 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81511144 | 7C 08 02 A6 */	mflr r0
/* 81511148 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8151114C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81511150 | 7C 9F 23 78 */	mr r31, r4
/* 81511154 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81511158 | 7C 7E 1B 78 */	mr r30, r3
/* 8151115C | 48 01 F7 29 */	bl OSDisableInterrupts
/* 81511160 | 93 FE 00 44 */	stw r31, 0x44(r30)
/* 81511164 | 48 01 F7 49 */	bl OSRestoreInterrupts
/* 81511168 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8151116C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81511170 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81511174 | 7C 08 03 A6 */	mtlr r0
/* 81511178 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8151117C | 4E 80 00 20 */	blr
.endfn SetOutputLine__Q44nw4r3snd6detail9WsdPlayerFi

# .text:0x60C | 0x81511180 | size: 0x8
# nw4r::snd::detail::WsdPlayer::GetOutputLine() const
.fn GetOutputLine__Q44nw4r3snd6detail9WsdPlayerCFv, global
/* 81511180 | 80 63 00 44 */	lwz r3, 0x44(r3)
/* 81511184 | 4E 80 00 20 */	blr
.endfn GetOutputLine__Q44nw4r3snd6detail9WsdPlayerCFv

# .text:0x614 | 0x81511188 | size: 0x54
# nw4r::snd::detail::WsdPlayer::SetRemoteOutVolume(int, float)
.fn SetRemoteOutVolume__Q44nw4r3snd6detail9WsdPlayerFif, global
/* 81511188 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8151118C | 7C 08 02 A6 */	mflr r0
/* 81511190 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81511194 | DB E1 00 18 */	stfd f31, 0x18(r1)
/* 81511198 | FF E0 08 90 */	fmr f31, f1
/* 8151119C | 93 E1 00 14 */	stw r31, 0x14(r1)
/* 815111A0 | 7C 9F 23 78 */	mr r31, r4
/* 815111A4 | 93 C1 00 10 */	stw r30, 0x10(r1)
/* 815111A8 | 7C 7E 1B 78 */	mr r30, r3
/* 815111AC | 48 01 F6 D9 */	bl OSDisableInterrupts
/* 815111B0 | 57 E0 10 3A */	slwi r0, r31, 2
/* 815111B4 | 7C 9E 02 14 */	add r4, r30, r0
/* 815111B8 | D3 E4 00 5C */	stfs f31, 0x5c(r4)
/* 815111BC | 48 01 F6 F1 */	bl OSRestoreInterrupts
/* 815111C0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 815111C4 | CB E1 00 18 */	lfd f31, 0x18(r1)
/* 815111C8 | 83 E1 00 14 */	lwz r31, 0x14(r1)
/* 815111CC | 83 C1 00 10 */	lwz r30, 0x10(r1)
/* 815111D0 | 7C 08 03 A6 */	mtlr r0
/* 815111D4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 815111D8 | 4E 80 00 20 */	blr
.endfn SetRemoteOutVolume__Q44nw4r3snd6detail9WsdPlayerFif

# .text:0x668 | 0x815111DC | size: 0x10
# nw4r::snd::detail::WsdPlayer::GetRemoteOutVolume(int) const
.fn GetRemoteOutVolume__Q44nw4r3snd6detail9WsdPlayerCFi, global
/* 815111DC | 54 80 10 3A */	slwi r0, r4, 2
/* 815111E0 | 7C 63 02 14 */	add r3, r3, r0
/* 815111E4 | C0 23 00 5C */	lfs f1, 0x5c(r3)
/* 815111E8 | 4E 80 00 20 */	blr
.endfn GetRemoteOutVolume__Q44nw4r3snd6detail9WsdPlayerCFi

# .text:0x678 | 0x815111EC | size: 0x54
# nw4r::snd::detail::WsdPlayer::SetRemoteSend(int, float)
.fn SetRemoteSend__Q44nw4r3snd6detail9WsdPlayerFif, global
/* 815111EC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 815111F0 | 7C 08 02 A6 */	mflr r0
/* 815111F4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 815111F8 | DB E1 00 18 */	stfd f31, 0x18(r1)
/* 815111FC | FF E0 08 90 */	fmr f31, f1
/* 81511200 | 93 E1 00 14 */	stw r31, 0x14(r1)
/* 81511204 | 7C 9F 23 78 */	mr r31, r4
/* 81511208 | 93 C1 00 10 */	stw r30, 0x10(r1)
/* 8151120C | 7C 7E 1B 78 */	mr r30, r3
/* 81511210 | 48 01 F6 75 */	bl OSDisableInterrupts
/* 81511214 | 57 E0 10 3A */	slwi r0, r31, 2
/* 81511218 | 7C 9E 02 14 */	add r4, r30, r0
/* 8151121C | D3 E4 00 6C */	stfs f31, 0x6c(r4)
/* 81511220 | 48 01 F6 8D */	bl OSRestoreInterrupts
/* 81511224 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81511228 | CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8151122C | 83 E1 00 14 */	lwz r31, 0x14(r1)
/* 81511230 | 83 C1 00 10 */	lwz r30, 0x10(r1)
/* 81511234 | 7C 08 03 A6 */	mtlr r0
/* 81511238 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8151123C | 4E 80 00 20 */	blr
.endfn SetRemoteSend__Q44nw4r3snd6detail9WsdPlayerFif

# .text:0x6CC | 0x81511240 | size: 0x10
# nw4r::snd::detail::WsdPlayer::GetRemoteSend(int) const
.fn GetRemoteSend__Q44nw4r3snd6detail9WsdPlayerCFi, global
/* 81511240 | 54 80 10 3A */	slwi r0, r4, 2
/* 81511244 | 7C 63 02 14 */	add r3, r3, r0
/* 81511248 | C0 23 00 6C */	lfs f1, 0x6c(r3)
/* 8151124C | 4E 80 00 20 */	blr
.endfn GetRemoteSend__Q44nw4r3snd6detail9WsdPlayerCFi

# .text:0x6DC | 0x81511250 | size: 0x54
# nw4r::snd::detail::WsdPlayer::SetRemoteFxSend(int, float)
.fn SetRemoteFxSend__Q44nw4r3snd6detail9WsdPlayerFif, global
/* 81511250 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81511254 | 7C 08 02 A6 */	mflr r0
/* 81511258 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8151125C | DB E1 00 18 */	stfd f31, 0x18(r1)
/* 81511260 | FF E0 08 90 */	fmr f31, f1
/* 81511264 | 93 E1 00 14 */	stw r31, 0x14(r1)
/* 81511268 | 7C 9F 23 78 */	mr r31, r4
/* 8151126C | 93 C1 00 10 */	stw r30, 0x10(r1)
/* 81511270 | 7C 7E 1B 78 */	mr r30, r3
/* 81511274 | 48 01 F6 11 */	bl OSDisableInterrupts
/* 81511278 | 57 E0 10 3A */	slwi r0, r31, 2
/* 8151127C | 7C 9E 02 14 */	add r4, r30, r0
/* 81511280 | D3 E4 00 7C */	stfs f31, 0x7c(r4)
/* 81511284 | 48 01 F6 29 */	bl OSRestoreInterrupts
/* 81511288 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8151128C | CB E1 00 18 */	lfd f31, 0x18(r1)
/* 81511290 | 83 E1 00 14 */	lwz r31, 0x14(r1)
/* 81511294 | 83 C1 00 10 */	lwz r30, 0x10(r1)
/* 81511298 | 7C 08 03 A6 */	mtlr r0
/* 8151129C | 38 21 00 20 */	addi r1, r1, 0x20
/* 815112A0 | 4E 80 00 20 */	blr
.endfn SetRemoteFxSend__Q44nw4r3snd6detail9WsdPlayerFif

# .text:0x730 | 0x815112A4 | size: 0x10
# nw4r::snd::detail::WsdPlayer::GetRemoteFxSend(int) const
.fn GetRemoteFxSend__Q44nw4r3snd6detail9WsdPlayerCFi, global
/* 815112A4 | 54 80 10 3A */	slwi r0, r4, 2
/* 815112A8 | 7C 63 02 14 */	add r3, r3, r0
/* 815112AC | C0 23 00 7C */	lfs f1, 0x7c(r3)
/* 815112B0 | 4E 80 00 20 */	blr
.endfn GetRemoteFxSend__Q44nw4r3snd6detail9WsdPlayerCFi

# .text:0x740 | 0x815112B4 | size: 0x40
# nw4r::snd::detail::WsdPlayer::SetMainOutVolume(float)
.fn SetMainOutVolume__Q44nw4r3snd6detail9WsdPlayerFf, global
/* 815112B4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 815112B8 | 7C 08 02 A6 */	mflr r0
/* 815112BC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 815112C0 | DB E1 00 18 */	stfd f31, 0x18(r1)
/* 815112C4 | FF E0 08 90 */	fmr f31, f1
/* 815112C8 | 93 E1 00 14 */	stw r31, 0x14(r1)
/* 815112CC | 7C 7F 1B 78 */	mr r31, r3
/* 815112D0 | 48 01 F5 B5 */	bl OSDisableInterrupts
/* 815112D4 | D3 FF 00 48 */	stfs f31, 0x48(r31)
/* 815112D8 | 48 01 F5 D5 */	bl OSRestoreInterrupts
/* 815112DC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 815112E0 | CB E1 00 18 */	lfd f31, 0x18(r1)
/* 815112E4 | 83 E1 00 14 */	lwz r31, 0x14(r1)
/* 815112E8 | 7C 08 03 A6 */	mtlr r0
/* 815112EC | 38 21 00 20 */	addi r1, r1, 0x20
/* 815112F0 | 4E 80 00 20 */	blr
.endfn SetMainOutVolume__Q44nw4r3snd6detail9WsdPlayerFf

# .text:0x780 | 0x815112F4 | size: 0x8
# nw4r::snd::detail::WsdPlayer::GetMainOutVolume() const
.fn GetMainOutVolume__Q44nw4r3snd6detail9WsdPlayerCFv, global
/* 815112F4 | C0 23 00 48 */	lfs f1, 0x48(r3)
/* 815112F8 | 4E 80 00 20 */	blr
.endfn GetMainOutVolume__Q44nw4r3snd6detail9WsdPlayerCFv

# .text:0x788 | 0x815112FC | size: 0x40
# nw4r::snd::detail::WsdPlayer::SetChannelPriority(int)
.fn SetChannelPriority__Q44nw4r3snd6detail9WsdPlayerFi, global
/* 815112FC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81511300 | 7C 08 02 A6 */	mflr r0
/* 81511304 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81511308 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8151130C | 7C 9F 23 78 */	mr r31, r4
/* 81511310 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81511314 | 7C 7E 1B 78 */	mr r30, r3
/* 81511318 | 48 01 F5 6D */	bl OSDisableInterrupts
/* 8151131C | 9B FE 00 90 */	stb r31, 0x90(r30)
/* 81511320 | 48 01 F5 8D */	bl OSRestoreInterrupts
/* 81511324 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81511328 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8151132C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81511330 | 7C 08 03 A6 */	mtlr r0
/* 81511334 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81511338 | 4E 80 00 20 */	blr
.endfn SetChannelPriority__Q44nw4r3snd6detail9WsdPlayerFi

# .text:0x7C8 | 0x8151133C | size: 0xDC
# nw4r::snd::detail::WsdPlayer::InvalidateData(const void*, const void*)
.fn InvalidateData__Q44nw4r3snd6detail9WsdPlayerFPCvPCv, global
/* 8151133C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81511340 | 7C 08 02 A6 */	mflr r0
/* 81511344 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81511348 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8151134C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81511350 | 7C 9E 23 78 */	mr r30, r4
/* 81511354 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81511358 | 7C BD 2B 78 */	mr r29, r5
/* 8151135C | 93 81 00 10 */	stw r28, 0x10(r1)
/* 81511360 | 7C 7C 1B 78 */	mr r28, r3
/* 81511364 | 48 01 F5 21 */	bl OSDisableInterrupts
/* 81511368 | 88 1C 00 1D */	lbz r0, 0x1d(r28)
/* 8151136C | 7C 7F 1B 78 */	mr r31, r3
/* 81511370 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81511374 | 41 82 00 7C */	beq .L_815113F0
/* 81511378 | 80 1C 00 9C */	lwz r0, 0x9c(r28)
/* 8151137C | 7C 1E 00 40 */	cmplw r30, r0
/* 81511380 | 41 81 00 70 */	bgt .L_815113F0
/* 81511384 | 7C 00 E8 40 */	cmplw r0, r29
/* 81511388 | 41 81 00 68 */	bgt .L_815113F0
/* 8151138C | 48 01 F4 F9 */	bl OSDisableInterrupts
/* 81511390 | 88 1C 00 1F */	lbz r0, 0x1f(r28)
/* 81511394 | 7C 7E 1B 78 */	mr r30, r3
/* 81511398 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8151139C | 41 82 00 14 */	beq .L_815113B0
/* 815113A0 | 3C 60 81 11 */	lis r3, playerList__Q44nw4r3snd6detail27@ha
/* 815113A4 | 38 9C 00 14 */	addi r4, r28, 0x14
/* 815113A8 | 38 63 09 A4 */	addi r3, r3, playerList__Q44nw4r3snd6detail27@l
/* 815113AC | 48 00 10 F5 */	bl fn_815124A0
.L_815113B0:
/* 815113B0 | 88 1C 00 1D */	lbz r0, 0x1d(r28)
/* 815113B4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 815113B8 | 41 82 00 20 */	beq .L_815113D8
/* 815113BC | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 815113C0 | 7F 9D E3 78 */	mr r29, r28
/* 815113C4 | 41 82 00 08 */	beq .L_815113CC
/* 815113C8 | 3B BC 00 08 */	addi r29, r28, 0x8
.L_815113CC:
/* 815113CC | 4B FE D2 19 */	bl GetInstance__Q44nw4r3snd6detail22DisposeCallbackManagerFv
/* 815113D0 | 7F A4 EB 78 */	mr r4, r29
/* 815113D4 | 4B FE D3 59 */	bl UnregisterDisposeCallback__Q44nw4r3snd6detail22DisposeCallbackManagerFPQ44nw4r3snd6detail15DisposeCallback
.L_815113D8:
/* 815113D8 | 7F C3 F3 78 */	mr r3, r30
/* 815113DC | 48 01 F4 D1 */	bl OSRestoreInterrupts
/* 815113E0 | 38 7C 00 9C */	addi r3, r28, 0x9c
/* 815113E4 | 48 00 03 A5 */	bl Close__Q44nw4r3snd6detail8WsdTrackFv
/* 815113E8 | 38 00 00 00 */	li r0, 0x0
/* 815113EC | 98 1C 00 1D */	stb r0, 0x1d(r28)
.L_815113F0:
/* 815113F0 | 7F E3 FB 78 */	mr r3, r31
/* 815113F4 | 48 01 F4 B9 */	bl OSRestoreInterrupts
/* 815113F8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 815113FC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81511400 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81511404 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81511408 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 8151140C | 7C 08 03 A6 */	mtlr r0
/* 81511410 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81511414 | 4E 80 00 20 */	blr
.endfn InvalidateData__Q44nw4r3snd6detail9WsdPlayerFPCvPCv

# .text:0x8A4 | 0x81511418 | size: 0x148
# nw4r::snd::detail::WsdPlayer::UpdateAllPlayers()
.fn UpdateAllPlayers__Q44nw4r3snd6detail9WsdPlayerFv, global
/* 81511418 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8151141C | 7C 08 02 A6 */	mflr r0
/* 81511420 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81511424 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81511428 | 48 0E 80 91 */	bl _savegpr_25
/* 8151142C | 3F 60 81 11 */	lis r27, playerList__Q44nw4r3snd6detail27@ha
/* 81511430 | 3B 80 00 00 */	li r28, 0x0
/* 81511434 | 38 7B 09 A4 */	addi r3, r27, playerList__Q44nw4r3snd6detail27@l
/* 81511438 | 83 E3 00 04 */	lwz r31, 0x4(r3)
/* 8151143C | 3B C3 00 04 */	addi r30, r3, 0x4
/* 81511440 | 48 00 01 00 */	b .L_81511540
.L_81511444:
/* 81511444 | 7F E3 FB 78 */	mr r3, r31
/* 81511448 | 83 FF 00 00 */	lwz r31, 0x0(r31)
/* 8151144C | 88 03 00 09 */	lbz r0, 0x9(r3)
/* 81511450 | 3B 43 FF EC */	subi r26, r3, 0x14
/* 81511454 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81511458 | 41 82 00 E8 */	beq .L_81511540
/* 8151145C | 88 1A 00 1F */	lbz r0, 0x1f(r26)
/* 81511460 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81511464 | 41 82 00 DC */	beq .L_81511540
/* 81511468 | 88 1A 00 20 */	lbz r0, 0x20(r26)
/* 8151146C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81511470 | 40 82 00 C8 */	bne .L_81511538
/* 81511474 | 88 1A 00 21 */	lbz r0, 0x21(r26)
/* 81511478 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8151147C | 40 82 00 BC */	bne .L_81511538
/* 81511480 | 88 1A 00 1C */	lbz r0, 0x1c(r26)
/* 81511484 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81511488 | 40 82 00 18 */	bne .L_815114A0
/* 8151148C | 4B FE 61 41 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 81511490 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 81511494 | 88 03 A2 32 */	lbz r0, -0x5dce(r3)
/* 81511498 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8151149C | 40 82 00 9C */	bne .L_81511538
.L_815114A0:
/* 815114A0 | 80 9A 00 94 */	lwz r4, 0x94(r26)
/* 815114A4 | 38 7A 00 9C */	addi r3, r26, 0x9c
/* 815114A8 | 80 BA 00 98 */	lwz r5, 0x98(r26)
/* 815114AC | 3B A0 00 00 */	li r29, 0x0
/* 815114B0 | 38 C0 00 01 */	li r6, 0x1
/* 815114B4 | 48 00 03 31 */	bl ParseNextTick__Q44nw4r3snd6detail8WsdTrackFPCQ54nw4r3snd6detail8WsdTrack11WsdCallbackUlb
/* 815114B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 815114BC | 41 80 00 0C */	blt .L_815114C8
/* 815114C0 | 3B A0 00 01 */	li r29, 0x1
/* 815114C4 | 48 00 00 0C */	b .L_815114D0
.L_815114C8:
/* 815114C8 | 38 7A 00 9C */	addi r3, r26, 0x9c
/* 815114CC | 48 00 02 BD */	bl Close__Q44nw4r3snd6detail8WsdTrackFv
.L_815114D0:
/* 815114D0 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 815114D4 | 40 82 00 64 */	bne .L_81511538
/* 815114D8 | 48 01 F3 AD */	bl OSDisableInterrupts
/* 815114DC | 88 1A 00 1F */	lbz r0, 0x1f(r26)
/* 815114E0 | 7C 7D 1B 78 */	mr r29, r3
/* 815114E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 815114E8 | 41 82 00 10 */	beq .L_815114F8
/* 815114EC | 38 7B 09 A4 */	addi r3, r27, playerList__Q44nw4r3snd6detail27@l
/* 815114F0 | 38 9A 00 14 */	addi r4, r26, 0x14
/* 815114F4 | 48 00 0F AD */	bl fn_815124A0
.L_815114F8:
/* 815114F8 | 88 1A 00 1D */	lbz r0, 0x1d(r26)
/* 815114FC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81511500 | 41 82 00 20 */	beq .L_81511520
/* 81511504 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 81511508 | 7F 59 D3 78 */	mr r25, r26
/* 8151150C | 41 82 00 08 */	beq .L_81511514
/* 81511510 | 3B 3A 00 08 */	addi r25, r26, 0x8
.L_81511514:
/* 81511514 | 4B FE D0 D1 */	bl GetInstance__Q44nw4r3snd6detail22DisposeCallbackManagerFv
/* 81511518 | 7F 24 CB 78 */	mr r4, r25
/* 8151151C | 4B FE D2 11 */	bl UnregisterDisposeCallback__Q44nw4r3snd6detail22DisposeCallbackManagerFPQ44nw4r3snd6detail15DisposeCallback
.L_81511520:
/* 81511520 | 7F A3 EB 78 */	mr r3, r29
/* 81511524 | 48 01 F3 89 */	bl OSRestoreInterrupts
/* 81511528 | 38 7A 00 9C */	addi r3, r26, 0x9c
/* 8151152C | 48 00 02 5D */	bl Close__Q44nw4r3snd6detail8WsdTrackFv
/* 81511530 | 9B 9A 00 1D */	stb r28, 0x1d(r26)
/* 81511534 | 48 00 00 0C */	b .L_81511540
.L_81511538:
/* 81511538 | 38 7A 00 9C */	addi r3, r26, 0x9c
/* 8151153C | 48 00 04 81 */	bl UpdateChannel__Q44nw4r3snd6detail8WsdTrackFv
.L_81511540:
/* 81511540 | 7C 1F F0 40 */	cmplw r31, r30
/* 81511544 | 40 82 FF 00 */	bne .L_81511444
/* 81511548 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8151154C | 48 0E 7F B9 */	bl _restgpr_25
/* 81511550 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81511554 | 7C 08 03 A6 */	mtlr r0
/* 81511558 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8151155C | 4E 80 00 20 */	blr
.endfn UpdateAllPlayers__Q44nw4r3snd6detail9WsdPlayerFv

# .text:0x9EC | 0x81511560 | size: 0x60
# nw4r::snd::detail::WsdPlayer::StopAllPlayers()
.fn StopAllPlayers__Q44nw4r3snd6detail9WsdPlayerFv, global
/* 81511560 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81511564 | 7C 08 02 A6 */	mflr r0
/* 81511568 | 3C 60 81 11 */	lis r3, playerList__Q44nw4r3snd6detail27@ha
/* 8151156C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81511570 | 38 63 09 A4 */	addi r3, r3, playerList__Q44nw4r3snd6detail27@l
/* 81511574 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81511578 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8151157C | 3B C3 00 04 */	addi r30, r3, 0x4
/* 81511580 | 83 E3 00 04 */	lwz r31, 0x4(r3)
/* 81511584 | 48 00 00 1C */	b .L_815115A0
.L_81511588:
/* 81511588 | 7F E3 FB 78 */	mr r3, r31
/* 8151158C | 85 83 FF EC */	lwzu r12, -0x14(r3)
/* 81511590 | 83 FF 00 00 */	lwz r31, 0x0(r31)
/* 81511594 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81511598 | 7D 89 03 A6 */	mtctr r12
/* 8151159C | 4E 80 04 21 */	bctrl
.L_815115A0:
/* 815115A0 | 7C 1F F0 40 */	cmplw r31, r30
/* 815115A4 | 40 82 FF E4 */	bne .L_81511588
/* 815115A8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 815115AC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 815115B0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 815115B4 | 7C 08 03 A6 */	mtlr r0
/* 815115B8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 815115BC | 4E 80 00 20 */	blr
.endfn StopAllPlayers__Q44nw4r3snd6detail9WsdPlayerFv

# .text:0xA4C | 0x815115C0 | size: 0x4
# nw4r::snd::detail::WsdPlayer::InvalidateWaveData(const void*, const void*)
.fn InvalidateWaveData__Q44nw4r3snd6detail9WsdPlayerFPCvPCv, global
/* 815115C0 | 4E 80 00 20 */	blr
.endfn InvalidateWaveData__Q44nw4r3snd6detail9WsdPlayerFPCvPCv

# .text:0xA50 | 0x815115C4 | size: 0x8
# nw4r::snd::detail::WsdPlayer::GetLpfFreq() const
.fn GetLpfFreq__Q44nw4r3snd6detail9WsdPlayerCFv, global
/* 815115C4 | C0 23 00 40 */	lfs f1, 0x40(r3)
/* 815115C8 | 4E 80 00 20 */	blr
.endfn GetLpfFreq__Q44nw4r3snd6detail9WsdPlayerCFv

# .text:0xA58 | 0x815115CC | size: 0x8
# nw4r::snd::detail::WsdPlayer::GetSurroundPan2() const
.fn GetSurroundPan2__Q44nw4r3snd6detail9WsdPlayerCFv, global
/* 815115CC | C0 23 00 38 */	lfs f1, 0x38(r3)
/* 815115D0 | 4E 80 00 20 */	blr
.endfn GetSurroundPan2__Q44nw4r3snd6detail9WsdPlayerCFv

# .text:0xA60 | 0x815115D4 | size: 0x8
# nw4r::snd::detail::WsdPlayer::GetPan2() const
.fn GetPan2__Q44nw4r3snd6detail9WsdPlayerCFv, global
/* 815115D4 | C0 23 00 34 */	lfs f1, 0x34(r3)
/* 815115D8 | 4E 80 00 20 */	blr
.endfn GetPan2__Q44nw4r3snd6detail9WsdPlayerCFv

# .text:0xA68 | 0x815115DC | size: 0x8
# nw4r::snd::detail::WsdPlayer::GetSurroundPan() const
.fn GetSurroundPan__Q44nw4r3snd6detail9WsdPlayerCFv, global
/* 815115DC | C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 815115E0 | 4E 80 00 20 */	blr
.endfn GetSurroundPan__Q44nw4r3snd6detail9WsdPlayerCFv

# .text:0xA70 | 0x815115E4 | size: 0x8
# nw4r::snd::detail::WsdPlayer::GetPan() const
.fn GetPan__Q44nw4r3snd6detail9WsdPlayerCFv, global
/* 815115E4 | C0 23 00 28 */	lfs f1, 0x28(r3)
/* 815115E8 | 4E 80 00 20 */	blr
.endfn GetPan__Q44nw4r3snd6detail9WsdPlayerCFv

# .text:0xA78 | 0x815115EC | size: 0x8
# nw4r::snd::detail::WsdPlayer::GetPitch() const
.fn GetPitch__Q44nw4r3snd6detail9WsdPlayerCFv, global
/* 815115EC | C0 23 00 3C */	lfs f1, 0x3c(r3)
/* 815115F0 | 4E 80 00 20 */	blr
.endfn GetPitch__Q44nw4r3snd6detail9WsdPlayerCFv

# .text:0xA80 | 0x815115F4 | size: 0x8
# nw4r::snd::detail::WsdPlayer::GetVolume() const
.fn GetVolume__Q44nw4r3snd6detail9WsdPlayerCFv, global
/* 815115F4 | C0 23 00 24 */	lfs f1, 0x24(r3)
/* 815115F8 | 4E 80 00 20 */	blr
.endfn GetVolume__Q44nw4r3snd6detail9WsdPlayerCFv

# .text:0xA88 | 0x815115FC | size: 0x14
# nw4r::snd::detail::WsdPlayer::IsPause() const
.fn IsPause__Q44nw4r3snd6detail9WsdPlayerCFv, global
/* 815115FC | 88 63 00 20 */	lbz r3, 0x20(r3)
/* 81511600 | 7C 03 00 D0 */	neg r0, r3
/* 81511604 | 7C 00 1B 78 */	or r0, r0, r3
/* 81511608 | 54 03 0F FE */	srwi r3, r0, 31
/* 8151160C | 4E 80 00 20 */	blr
.endfn IsPause__Q44nw4r3snd6detail9WsdPlayerCFv

# .text:0xA9C | 0x81511610 | size: 0x14
# nw4r::snd::detail::WsdPlayer::IsPrepared() const
.fn IsPrepared__Q44nw4r3snd6detail9WsdPlayerCFv, global
/* 81511610 | 88 63 00 1E */	lbz r3, 0x1e(r3)
/* 81511614 | 7C 03 00 D0 */	neg r0, r3
/* 81511618 | 7C 00 1B 78 */	or r0, r0, r3
/* 8151161C | 54 03 0F FE */	srwi r3, r0, 31
/* 81511620 | 4E 80 00 20 */	blr
.endfn IsPrepared__Q44nw4r3snd6detail9WsdPlayerCFv

# .text:0xAB0 | 0x81511624 | size: 0x14
# nw4r::snd::detail::WsdPlayer::IsStarted() const
.fn IsStarted__Q44nw4r3snd6detail9WsdPlayerCFv, global
/* 81511624 | 88 63 00 1F */	lbz r3, 0x1f(r3)
/* 81511628 | 7C 03 00 D0 */	neg r0, r3
/* 8151162C | 7C 00 1B 78 */	or r0, r0, r3
/* 81511630 | 54 03 0F FE */	srwi r3, r0, 31
/* 81511634 | 4E 80 00 20 */	blr
.endfn IsStarted__Q44nw4r3snd6detail9WsdPlayerCFv

# .text:0xAC4 | 0x81511638 | size: 0x14
# nw4r::snd::detail::WsdPlayer::IsActive() const
.fn IsActive__Q44nw4r3snd6detail9WsdPlayerCFv, global
/* 81511638 | 88 63 00 1D */	lbz r3, 0x1d(r3)
/* 8151163C | 7C 03 00 D0 */	neg r0, r3
/* 81511640 | 7C 00 1B 78 */	or r0, r0, r3
/* 81511644 | 54 03 0F FE */	srwi r3, r0, 31
/* 81511648 | 4E 80 00 20 */	blr
.endfn IsActive__Q44nw4r3snd6detail9WsdPlayerCFv

# .text:0xAD8 | 0x8151164C | size: 0x38
# nw4r::ut::LinkList<nw4r::snd::detail::WsdPlayer, 20>::~LinkList()
.fn "__dt__Q34nw4r2ut41LinkList<Q44nw4r3snd6detail9WsdPlayer,20>Fv", global
/* 8151164C | 3C C0 81 11 */	lis r6, playerList__Q44nw4r3snd6detail27@ha
/* 81511650 | 38 00 00 00 */	li r0, 0x0
/* 81511654 | 38 66 09 A4 */	addi r3, r6, playerList__Q44nw4r3snd6detail27@l
/* 81511658 | 3C 80 81 51 */	lis r4, "__sinit_\\snd_WsdPlayer_cpp"@ha
/* 8151165C | 90 03 00 04 */	stw r0, 0x4(r3)
/* 81511660 | 38 E3 00 04 */	addi r7, r3, 0x4
/* 81511664 | 3C A0 81 11 */	lis r5, lbl_81110998@ha
/* 81511668 | 38 84 16 84 */	addi r4, r4, "__sinit_\\snd_WsdPlayer_cpp"@l
/* 8151166C | 90 03 00 08 */	stw r0, 0x8(r3)
/* 81511670 | 38 A5 09 98 */	addi r5, r5, lbl_81110998@l
/* 81511674 | 90 06 09 A4 */	stw r0, playerList__Q44nw4r3snd6detail27@l(r6)
/* 81511678 | 90 E3 00 04 */	stw r7, 0x4(r3)
/* 8151167C | 90 E3 00 08 */	stw r7, 0x8(r3)
/* 81511680 | 48 0E 79 60 */	b __register_global_object
.endfn "__dt__Q34nw4r2ut41LinkList<Q44nw4r3snd6detail9WsdPlayer,20>Fv"

# .text:0xB10 | 0x81511684 | size: 0x58
.fn "__sinit_\\snd_WsdPlayer_cpp", weak
/* 81511684 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81511688 | 7C 08 02 A6 */	mflr r0
/* 8151168C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81511690 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81511694 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81511698 | 7C 9F 23 78 */	mr r31, r4
/* 8151169C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 815116A0 | 7C 7E 1B 78 */	mr r30, r3
/* 815116A4 | 41 82 00 1C */	beq .L_815116C0
/* 815116A8 | 38 80 00 00 */	li r4, 0x0
/* 815116AC | 48 00 0C B9 */	bl fn_81512364
/* 815116B0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 815116B4 | 40 81 00 0C */	ble .L_815116C0
/* 815116B8 | 7F C3 F3 78 */	mr r3, r30
/* 815116BC | 48 0E 6A 29 */	bl __dl__FPv
.L_815116C0:
/* 815116C0 | 7F C3 F3 78 */	mr r3, r30
/* 815116C4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 815116C8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 815116CC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 815116D0 | 7C 08 03 A6 */	mtlr r0
/* 815116D4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 815116D8 | 4E 80 00 20 */	blr
.endfn "__sinit_\\snd_WsdPlayer_cpp"

# .text:0xB68 | 0x815116DC | size: 0x8
# nw4r::snd::detail::WsdPlayer::@8@InvalidateWaveData(const void*, const void*)
.fn "@8@InvalidateWaveData__Q44nw4r3snd6detail9WsdPlayerFPCvPCv", global
/* 815116DC | 38 63 FF F8 */	subi r3, r3, 0x8
/* 815116E0 | 4B FF FE E0 */	b InvalidateWaveData__Q44nw4r3snd6detail9WsdPlayerFPCvPCv
.endfn "@8@InvalidateWaveData__Q44nw4r3snd6detail9WsdPlayerFPCvPCv"

# .text:0xB70 | 0x815116E4 | size: 0x8
# nw4r::snd::detail::WsdPlayer::@8@InvalidateData(const void*, const void*)
.fn "@8@InvalidateData__Q44nw4r3snd6detail9WsdPlayerFPCvPCv", global
/* 815116E4 | 38 63 FF F8 */	subi r3, r3, 0x8
/* 815116E8 | 4B FF FC 54 */	b InvalidateData__Q44nw4r3snd6detail9WsdPlayerFPCvPCv
.endfn "@8@InvalidateData__Q44nw4r3snd6detail9WsdPlayerFPCvPCv"

# .text:0xB78 | 0x815116EC | size: 0x8
.fn "@8@__dt__Q44nw4r3snd6detail9WsdPlayerFv", global
/* 815116EC | 38 63 FF F8 */	subi r3, r3, 0x8
/* 815116F0 | 4B FF EE 6C */	b __dt__Q44nw4r3snd6detail9WsdPlayerFv
.endfn "@8@__dt__Q44nw4r3snd6detail9WsdPlayerFv"

# 0x8160D244..0x8160D248 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte "__dt__Q34nw4r2ut41LinkList<Q44nw4r3snd6detail9WsdPlayer,20>Fv"

# 0x8166FB88..0x8166FC40 | size: 0xB8
.data
.balign 8

# .data:0x0 | 0x8166FB88 | size: 0xB8
# nw4r::snd::detail::WsdPlayer::__vtable
.obj __vt__Q44nw4r3snd6detail9WsdPlayer, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q44nw4r3snd6detail9WsdPlayerFv
	.4byte Start__Q44nw4r3snd6detail9WsdPlayerFv
	.4byte Stop__Q44nw4r3snd6detail9WsdPlayerFv
	.4byte Pause__Q44nw4r3snd6detail9WsdPlayerFb
	.4byte IsActive__Q44nw4r3snd6detail9WsdPlayerCFv
	.4byte IsPrepared__Q44nw4r3snd6detail9WsdPlayerCFv
	.4byte IsStarted__Q44nw4r3snd6detail9WsdPlayerCFv
	.4byte IsPause__Q44nw4r3snd6detail9WsdPlayerCFv
	.4byte SetVolume__Q44nw4r3snd6detail9WsdPlayerFf
	.4byte SetPitch__Q44nw4r3snd6detail9WsdPlayerFf
	.4byte SetPan__Q44nw4r3snd6detail9WsdPlayerFf
	.4byte SetSurroundPan__Q44nw4r3snd6detail9WsdPlayerFf
	.4byte SetPan2__Q44nw4r3snd6detail9WsdPlayerFf
	.4byte SetSurroundPan2__Q44nw4r3snd6detail9WsdPlayerFf
	.4byte SetLpfFreq__Q44nw4r3snd6detail9WsdPlayerFf
	.4byte GetVolume__Q44nw4r3snd6detail9WsdPlayerCFv
	.4byte GetPitch__Q44nw4r3snd6detail9WsdPlayerCFv
	.4byte GetPan__Q44nw4r3snd6detail9WsdPlayerCFv
	.4byte GetSurroundPan__Q44nw4r3snd6detail9WsdPlayerCFv
	.4byte GetPan2__Q44nw4r3snd6detail9WsdPlayerCFv
	.4byte GetSurroundPan2__Q44nw4r3snd6detail9WsdPlayerCFv
	.4byte GetLpfFreq__Q44nw4r3snd6detail9WsdPlayerCFv
	.4byte SetOutputLine__Q44nw4r3snd6detail9WsdPlayerFi
	.4byte SetMainOutVolume__Q44nw4r3snd6detail9WsdPlayerFf
	.4byte SetMainSend__Q44nw4r3snd6detail9WsdPlayerFf
	.4byte SetFxSend__Q44nw4r3snd6detail9WsdPlayerFQ34nw4r3snd6AuxBusf
	.4byte SetRemoteOutVolume__Q44nw4r3snd6detail9WsdPlayerFif
	.4byte SetRemoteSend__Q44nw4r3snd6detail9WsdPlayerFif
	.4byte SetRemoteFxSend__Q44nw4r3snd6detail9WsdPlayerFif
	.4byte GetOutputLine__Q44nw4r3snd6detail9WsdPlayerCFv
	.4byte GetMainOutVolume__Q44nw4r3snd6detail9WsdPlayerCFv
	.4byte GetMainSend__Q44nw4r3snd6detail9WsdPlayerCFv
	.4byte GetFxSend__Q44nw4r3snd6detail9WsdPlayerCFQ34nw4r3snd6AuxBus
	.4byte GetRemoteOutVolume__Q44nw4r3snd6detail9WsdPlayerCFi
	.4byte GetRemoteSend__Q44nw4r3snd6detail9WsdPlayerCFi
	.4byte GetRemoteFxSend__Q44nw4r3snd6detail9WsdPlayerCFi
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@8@__dt__Q44nw4r3snd6detail9WsdPlayerFv"
	.4byte "@8@InvalidateData__Q44nw4r3snd6detail9WsdPlayerFPCvPCv"
	.4byte "@8@InvalidateWaveData__Q44nw4r3snd6detail9WsdPlayerFPCvPCv"
	.4byte InvalidateData__Q44nw4r3snd6detail9WsdPlayerFPCvPCv
	.4byte InvalidateWaveData__Q44nw4r3snd6detail9WsdPlayerFPCvPCv
	.4byte 0x00000000
.endobj __vt__Q44nw4r3snd6detail9WsdPlayer

# 0x81695410..0x81695418 | size: 0x8
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81695410 | size: 0x4
.obj lbl_81695410, global
	.float 1
.endobj lbl_81695410

# .sdata2:0x4 | 0x81695414 | size: 0x4
.obj lbl_81695414, global
	.float 0
.endobj lbl_81695414
