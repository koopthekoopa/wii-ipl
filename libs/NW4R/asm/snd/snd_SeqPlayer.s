.include "macros.inc"
.file "snd_SeqPlayer.cpp"

# 0x81105F40..0x81105F80 | size: 0x40
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x81105F40 | size: 0xC
.obj lbl_81105F40, global
	.skip 0xC
.endobj lbl_81105F40

# .bss:0xC | 0x81105F4C | size: 0xC
# nw4r::snd::detail::@unnamed@snd_SeqPlayer_cpp@::sPlayerList
.obj "sPlayerList__Q44nw4r3snd6detail27@unnamed@snd_SeqPlayer_cpp@", global
	.skip 0xC
.endobj "sPlayerList__Q44nw4r3snd6detail27@unnamed@snd_SeqPlayer_cpp@"

# .bss:0x18 | 0x81105F58 | size: 0x28
# nw4r::snd::detail::SeqPlayer::mGlobalVariable
.obj mGlobalVariable__Q44nw4r3snd6detail9SeqPlayer, global
	.skip 0x28
.endobj mGlobalVariable__Q44nw4r3snd6detail9SeqPlayer

# 0x81503C5C..0x81504DD4 | size: 0x1178
.text
.balign 4

# .text:0x0 | 0x81503C5C | size: 0x38
# nw4r::snd::detail::SeqPlayer::SeqPlayer()
.fn __ct__Q44nw4r3snd6detail9SeqPlayerFv, global
/* 81503C5C | 3C 80 81 67 */	lis r4, __vt__Q44nw4r3snd6detail9SeqPlayer@ha
/* 81503C60 | 38 A0 00 00 */	li r5, 0x0
/* 81503C64 | 38 84 F7 D8 */	addi r4, r4, __vt__Q44nw4r3snd6detail9SeqPlayer@l
/* 81503C68 | 38 C0 FF FF */	li r6, -0x1
/* 81503C6C | 38 04 00 98 */	addi r0, r4, 0x98
/* 81503C70 | 90 C3 00 04 */	stw r6, 0x4(r3)
/* 81503C74 | 90 A3 00 08 */	stw r5, 0x8(r3)
/* 81503C78 | 90 A3 00 0C */	stw r5, 0xc(r3)
/* 81503C7C | 90 83 00 00 */	stw r4, 0x0(r3)
/* 81503C80 | 90 03 00 10 */	stw r0, 0x10(r3)
/* 81503C84 | 98 A3 00 15 */	stb r5, 0x15(r3)
/* 81503C88 | 90 A3 01 00 */	stw r5, 0x100(r3)
/* 81503C8C | 90 A3 01 04 */	stw r5, 0x104(r3)
/* 81503C90 | 4E 80 00 20 */	blr
.endfn __ct__Q44nw4r3snd6detail9SeqPlayerFv

# .text:0x38 | 0x81503C94 | size: 0x124
# nw4r::snd::detail::SeqPlayer::~SeqPlayer()
.fn __dt__Q44nw4r3snd6detail9SeqPlayerFv, global
/* 81503C94 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81503C98 | 7C 08 02 A6 */	mflr r0
/* 81503C9C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81503CA0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81503CA4 | 48 0F 58 1D */	bl _savegpr_27
/* 81503CA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81503CAC | 7C 7B 1B 78 */	mr r27, r3
/* 81503CB0 | 7C 9C 23 78 */	mr r28, r4
/* 81503CB4 | 41 82 00 E8 */	beq .L_81503D9C
/* 81503CB8 | 88 03 00 15 */	lbz r0, 0x15(r3)
/* 81503CBC | 3C A0 81 67 */	lis r5, __vt__Q44nw4r3snd6detail9SeqPlayer@ha
/* 81503CC0 | 38 A5 F7 D8 */	addi r5, r5, __vt__Q44nw4r3snd6detail9SeqPlayer@l
/* 81503CC4 | 38 85 00 98 */	addi r4, r5, 0x98
/* 81503CC8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81503CCC | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 81503CD0 | 90 83 00 10 */	stw r4, 0x10(r3)
/* 81503CD4 | 41 82 00 B8 */	beq .L_81503D8C
/* 81503CD8 | 48 02 CB AD */	bl OSDisableInterrupts
/* 81503CDC | 88 1B 00 17 */	lbz r0, 0x17(r27)
/* 81503CE0 | 7C 7F 1B 78 */	mr r31, r3
/* 81503CE4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81503CE8 | 41 82 00 14 */	beq .L_81503CFC
/* 81503CEC | 3C 60 81 10 */	lis r3, "sPlayerList__Q44nw4r3snd6detail27@unnamed@snd_SeqPlayer_cpp@"@ha
/* 81503CF0 | 38 9B 01 00 */	addi r4, r27, 0x100
/* 81503CF4 | 38 63 5F 4C */	addi r3, r3, "sPlayerList__Q44nw4r3snd6detail27@unnamed@snd_SeqPlayer_cpp@"@l
/* 81503CF8 | 48 00 E7 A9 */	bl fn_815124A0
.L_81503CFC:
/* 81503CFC | 88 1B 00 15 */	lbz r0, 0x15(r27)
/* 81503D00 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81503D04 | 41 82 00 20 */	beq .L_81503D24
/* 81503D08 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 81503D0C | 7F 7E DB 78 */	mr r30, r27
/* 81503D10 | 41 82 00 08 */	beq .L_81503D18
/* 81503D14 | 3B DB 00 08 */	addi r30, r27, 0x8
.L_81503D18:
/* 81503D18 | 4B FF A8 CD */	bl GetInstance__Q44nw4r3snd6detail22DisposeCallbackManagerFv
/* 81503D1C | 7F C4 F3 78 */	mr r4, r30
/* 81503D20 | 4B FF AA 0D */	bl UnregisterDisposeCallback__Q44nw4r3snd6detail22DisposeCallbackManagerFPQ44nw4r3snd6detail15DisposeCallback
.L_81503D24:
/* 81503D24 | 7F E3 FB 78 */	mr r3, r31
/* 81503D28 | 48 02 CB 85 */	bl OSRestoreInterrupts
/* 81503D2C | 7F 7D DB 78 */	mr r29, r27
/* 81503D30 | 3B C0 00 00 */	li r30, 0x0
/* 81503D34 | 3B E0 00 00 */	li r31, 0x0
.L_81503D38:
/* 81503D38 | 2C 1E 00 0F */	cmpwi r30, 0xf
/* 81503D3C | 40 81 00 0C */	ble .L_81503D48
/* 81503D40 | 38 60 00 00 */	li r3, 0x0
/* 81503D44 | 48 00 00 08 */	b .L_81503D4C
.L_81503D48:
/* 81503D48 | 80 7D 00 9C */	lwz r3, 0x9c(r29)
.L_81503D4C:
/* 81503D4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81503D50 | 41 82 00 24 */	beq .L_81503D74
/* 81503D54 | 48 00 16 21 */	bl Close__Q44nw4r3snd6detail8SeqTrackFv
/* 81503D58 | 80 7B 00 98 */	lwz r3, 0x98(r27)
/* 81503D5C | 80 9D 00 9C */	lwz r4, 0x9c(r29)
/* 81503D60 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81503D64 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81503D68 | 7D 89 03 A6 */	mtctr r12
/* 81503D6C | 4E 80 04 21 */	bctrl
/* 81503D70 | 93 FD 00 9C */	stw r31, 0x9c(r29)
.L_81503D74:
/* 81503D74 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81503D78 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 81503D7C | 2C 1E 00 10 */	cmpwi r30, 0x10
/* 81503D80 | 41 80 FF B8 */	blt .L_81503D38
/* 81503D84 | 38 00 00 00 */	li r0, 0x0
/* 81503D88 | 98 1B 00 15 */	stb r0, 0x15(r27)
.L_81503D8C:
/* 81503D8C | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81503D90 | 40 81 00 0C */	ble .L_81503D9C
/* 81503D94 | 7F 63 DB 78 */	mr r3, r27
/* 81503D98 | 48 0F 43 4D */	bl __dl__FPv
.L_81503D9C:
/* 81503D9C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81503DA0 | 7F 63 DB 78 */	mr r3, r27
/* 81503DA4 | 48 0F 57 69 */	bl _restgpr_27
/* 81503DA8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81503DAC | 7C 08 03 A6 */	mtlr r0
/* 81503DB0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81503DB4 | 4E 80 00 20 */	blr
.endfn __dt__Q44nw4r3snd6detail9SeqPlayerFv

# .text:0x15C | 0x81503DB8 | size: 0x138
# nw4r::snd::detail::SeqPlayer::InitParam(int, nw4r::snd::detail::NoteOnCallback*)
.fn InitParam__Q44nw4r3snd6detail9SeqPlayerFiPQ44nw4r3snd6detail14NoteOnCallback, global
/* 81503DB8 | C0 02 8F 4C */	lfs f0, lbl_8169534C@sda21(r0)
/* 81503DBC | 39 60 00 00 */	li r11, 0x0
/* 81503DC0 | C0 22 8F 48 */	lfs f1, lbl_81695348@sda21(r0)
/* 81503DC4 | 39 40 01 A0 */	li r10, 0x1a0
/* 81503DC8 | 39 20 00 01 */	li r9, 0x1
/* 81503DCC | 39 00 00 78 */	li r8, 0x78
/* 81503DD0 | 38 E0 00 7F */	li r7, 0x7f
/* 81503DD4 | 38 C0 00 40 */	li r6, 0x40
/* 81503DD8 | 99 63 00 16 */	stb r11, 0x16(r3)
/* 81503DDC | 38 00 FF FF */	li r0, -0x1
/* 81503DE0 | 99 63 00 17 */	stb r11, 0x17(r3)
/* 81503DE4 | 99 63 00 18 */	stb r11, 0x18(r3)
/* 81503DE8 | 99 63 00 19 */	stb r11, 0x19(r3)
/* 81503DEC | 99 63 00 14 */	stb r11, 0x14(r3)
/* 81503DF0 | D0 23 00 84 */	stfs f1, 0x84(r3)
/* 81503DF4 | B1 43 00 88 */	sth r10, 0x88(r3)
/* 81503DF8 | D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 81503DFC | D0 23 00 34 */	stfs f1, 0x34(r3)
/* 81503E00 | D0 03 00 20 */	stfs f0, 0x20(r3)
/* 81503E04 | D0 03 00 24 */	stfs f0, 0x24(r3)
/* 81503E08 | D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 81503E0C | D0 03 00 30 */	stfs f0, 0x30(r3)
/* 81503E10 | D0 23 00 28 */	stfs f1, 0x28(r3)
/* 81503E14 | D0 03 00 38 */	stfs f0, 0x38(r3)
/* 81503E18 | 91 23 00 3C */	stw r9, 0x3c(r3)
/* 81503E1C | D0 03 00 44 */	stfs f0, 0x44(r3)
/* 81503E20 | D0 23 00 40 */	stfs f1, 0x40(r3)
/* 81503E24 | D0 03 00 48 */	stfs f0, 0x48(r3)
/* 81503E28 | D0 03 00 4C */	stfs f0, 0x4c(r3)
/* 81503E2C | D0 03 00 50 */	stfs f0, 0x50(r3)
/* 81503E30 | D0 03 00 64 */	stfs f0, 0x64(r3)
/* 81503E34 | D0 03 00 74 */	stfs f0, 0x74(r3)
/* 81503E38 | D0 03 00 68 */	stfs f0, 0x68(r3)
/* 81503E3C | D0 03 00 78 */	stfs f0, 0x78(r3)
/* 81503E40 | D0 03 00 6C */	stfs f0, 0x6c(r3)
/* 81503E44 | D0 03 00 7C */	stfs f0, 0x7c(r3)
/* 81503E48 | D0 03 00 70 */	stfs f0, 0x70(r3)
/* 81503E4C | D0 03 00 80 */	stfs f0, 0x80(r3)
/* 81503E50 | 91 63 00 FC */	stw r11, 0xfc(r3)
/* 81503E54 | 90 83 00 8C */	stw r4, 0x8c(r3)
/* 81503E58 | B1 03 00 92 */	sth r8, 0x92(r3)
/* 81503E5C | 98 E3 00 90 */	stb r7, 0x90(r3)
/* 81503E60 | 98 C3 00 91 */	stb r6, 0x91(r3)
/* 81503E64 | 90 A3 00 94 */	stw r5, 0x94(r3)
/* 81503E68 | B0 03 00 DC */	sth r0, 0xdc(r3)
/* 81503E6C | B0 03 00 DE */	sth r0, 0xde(r3)
/* 81503E70 | B0 03 00 E0 */	sth r0, 0xe0(r3)
/* 81503E74 | B0 03 00 E2 */	sth r0, 0xe2(r3)
/* 81503E78 | B0 03 00 E4 */	sth r0, 0xe4(r3)
/* 81503E7C | B0 03 00 E6 */	sth r0, 0xe6(r3)
/* 81503E80 | B0 03 00 E8 */	sth r0, 0xe8(r3)
/* 81503E84 | B0 03 00 EA */	sth r0, 0xea(r3)
/* 81503E88 | B0 03 00 EC */	sth r0, 0xec(r3)
/* 81503E8C | B0 03 00 EE */	sth r0, 0xee(r3)
/* 81503E90 | B0 03 00 F0 */	sth r0, 0xf0(r3)
/* 81503E94 | B0 03 00 F2 */	sth r0, 0xf2(r3)
/* 81503E98 | B0 03 00 F4 */	sth r0, 0xf4(r3)
/* 81503E9C | B0 03 00 F6 */	sth r0, 0xf6(r3)
/* 81503EA0 | B0 03 00 F8 */	sth r0, 0xf8(r3)
/* 81503EA4 | B0 03 00 FA */	sth r0, 0xfa(r3)
/* 81503EA8 | 38 00 00 00 */	li r0, 0x0
/* 81503EAC | 90 03 00 9C */	stw r0, 0x9c(r3)
/* 81503EB0 | 90 03 00 A0 */	stw r0, 0xa0(r3)
/* 81503EB4 | 90 03 00 A4 */	stw r0, 0xa4(r3)
/* 81503EB8 | 90 03 00 A8 */	stw r0, 0xa8(r3)
/* 81503EBC | 90 03 00 AC */	stw r0, 0xac(r3)
/* 81503EC0 | 90 03 00 B0 */	stw r0, 0xb0(r3)
/* 81503EC4 | 90 03 00 B4 */	stw r0, 0xb4(r3)
/* 81503EC8 | 90 03 00 B8 */	stw r0, 0xb8(r3)
/* 81503ECC | 90 03 00 BC */	stw r0, 0xbc(r3)
/* 81503ED0 | 90 03 00 C0 */	stw r0, 0xc0(r3)
/* 81503ED4 | 90 03 00 C4 */	stw r0, 0xc4(r3)
/* 81503ED8 | 90 03 00 C8 */	stw r0, 0xc8(r3)
/* 81503EDC | 90 03 00 CC */	stw r0, 0xcc(r3)
/* 81503EE0 | 90 03 00 D0 */	stw r0, 0xd0(r3)
/* 81503EE4 | 90 03 00 D4 */	stw r0, 0xd4(r3)
/* 81503EE8 | 90 03 00 D8 */	stw r0, 0xd8(r3)
/* 81503EEC | 4E 80 00 20 */	blr
.endfn InitParam__Q44nw4r3snd6detail9SeqPlayerFiPQ44nw4r3snd6detail14NoteOnCallback

# .text:0x294 | 0x81503EF0 | size: 0x224
# nw4r::snd::detail::SeqPlayer::Setup(nw4r::snd::detail::SeqTrackAllocator*, unsigned long, int, nw4r::snd::detail::NoteOnCallback*)
.fn Setup__Q44nw4r3snd6detail9SeqPlayerFPQ44nw4r3snd6detail17SeqTrackAllocatorUliPQ44nw4r3snd6detail14NoteOnCallback, global
/* 81503EF0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81503EF4 | 7C 08 02 A6 */	mflr r0
/* 81503EF8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81503EFC | 39 61 00 30 */	addi r11, r1, 0x30
/* 81503F00 | 48 0F 55 B1 */	bl _savegpr_23
/* 81503F04 | 7C 7D 1B 78 */	mr r29, r3
/* 81503F08 | 7C 9E 23 78 */	mr r30, r4
/* 81503F0C | 7C BF 2B 78 */	mr r31, r5
/* 81503F10 | 7C D7 33 78 */	mr r23, r6
/* 81503F14 | 7C F8 3B 78 */	mr r24, r7
/* 81503F18 | 48 02 C9 6D */	bl OSDisableInterrupts
/* 81503F1C | 88 1D 00 15 */	lbz r0, 0x15(r29)
/* 81503F20 | 7C 7C 1B 78 */	mr r28, r3
/* 81503F24 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81503F28 | 41 82 00 B8 */	beq .L_81503FE0
/* 81503F2C | 48 02 C9 59 */	bl OSDisableInterrupts
/* 81503F30 | 88 1D 00 17 */	lbz r0, 0x17(r29)
/* 81503F34 | 7C 7B 1B 78 */	mr r27, r3
/* 81503F38 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81503F3C | 41 82 00 14 */	beq .L_81503F50
/* 81503F40 | 3C 60 81 10 */	lis r3, "sPlayerList__Q44nw4r3snd6detail27@unnamed@snd_SeqPlayer_cpp@"@ha
/* 81503F44 | 38 9D 01 00 */	addi r4, r29, 0x100
/* 81503F48 | 38 63 5F 4C */	addi r3, r3, "sPlayerList__Q44nw4r3snd6detail27@unnamed@snd_SeqPlayer_cpp@"@l
/* 81503F4C | 48 00 E5 55 */	bl fn_815124A0
.L_81503F50:
/* 81503F50 | 88 1D 00 15 */	lbz r0, 0x15(r29)
/* 81503F54 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81503F58 | 41 82 00 20 */	beq .L_81503F78
/* 81503F5C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81503F60 | 7F BA EB 78 */	mr r26, r29
/* 81503F64 | 41 82 00 08 */	beq .L_81503F6C
/* 81503F68 | 3B 5D 00 08 */	addi r26, r29, 0x8
.L_81503F6C:
/* 81503F6C | 4B FF A6 79 */	bl GetInstance__Q44nw4r3snd6detail22DisposeCallbackManagerFv
/* 81503F70 | 7F 44 D3 78 */	mr r4, r26
/* 81503F74 | 4B FF A7 B9 */	bl UnregisterDisposeCallback__Q44nw4r3snd6detail22DisposeCallbackManagerFPQ44nw4r3snd6detail15DisposeCallback
.L_81503F78:
/* 81503F78 | 7F 63 DB 78 */	mr r3, r27
/* 81503F7C | 48 02 C9 31 */	bl OSRestoreInterrupts
/* 81503F80 | 7F B9 EB 78 */	mr r25, r29
/* 81503F84 | 3B 40 00 00 */	li r26, 0x0
/* 81503F88 | 3B 60 00 00 */	li r27, 0x0
.L_81503F8C:
/* 81503F8C | 2C 1A 00 0F */	cmpwi r26, 0xf
/* 81503F90 | 40 81 00 0C */	ble .L_81503F9C
/* 81503F94 | 38 60 00 00 */	li r3, 0x0
/* 81503F98 | 48 00 00 08 */	b .L_81503FA0
.L_81503F9C:
/* 81503F9C | 80 79 00 9C */	lwz r3, 0x9c(r25)
.L_81503FA0:
/* 81503FA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81503FA4 | 41 82 00 24 */	beq .L_81503FC8
/* 81503FA8 | 48 00 13 CD */	bl Close__Q44nw4r3snd6detail8SeqTrackFv
/* 81503FAC | 80 7D 00 98 */	lwz r3, 0x98(r29)
/* 81503FB0 | 80 99 00 9C */	lwz r4, 0x9c(r25)
/* 81503FB4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81503FB8 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81503FBC | 7D 89 03 A6 */	mtctr r12
/* 81503FC0 | 4E 80 04 21 */	bctrl
/* 81503FC4 | 93 79 00 9C */	stw r27, 0x9c(r25)
.L_81503FC8:
/* 81503FC8 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 81503FCC | 3B 39 00 04 */	addi r25, r25, 0x4
/* 81503FD0 | 2C 1A 00 10 */	cmpwi r26, 0x10
/* 81503FD4 | 41 80 FF B8 */	blt .L_81503F8C
/* 81503FD8 | 38 00 00 00 */	li r0, 0x0
/* 81503FDC | 98 1D 00 15 */	stb r0, 0x15(r29)
.L_81503FE0:
/* 81503FE0 | 7F A3 EB 78 */	mr r3, r29
/* 81503FE4 | 7E E4 BB 78 */	mr r4, r23
/* 81503FE8 | 7F 05 C3 78 */	mr r5, r24
/* 81503FEC | 4B FF FD CD */	bl InitParam__Q44nw4r3snd6detail9SeqPlayerFiPQ44nw4r3snd6detail14NoteOnCallback
/* 81503FF0 | 7F F9 FB 78 */	mr r25, r31
/* 81503FF4 | 7F BA EB 78 */	mr r26, r29
/* 81503FF8 | 3B 60 00 01 */	li r27, 0x1
/* 81503FFC | 3B 00 00 00 */	li r24, 0x0
/* 81504000 | 48 00 00 54 */	b .L_81504054
.L_81504004:
/* 81504004 | 57 20 07 FF */	clrlwi. r0, r25, 31
/* 81504008 | 41 82 00 40 */	beq .L_81504048
/* 8150400C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81504010 | 7F C3 F3 78 */	mr r3, r30
/* 81504014 | 7F A4 EB 78 */	mr r4, r29
/* 81504018 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8150401C | 7D 89 03 A6 */	mtctr r12
/* 81504020 | 4E 80 04 21 */	bctrl
/* 81504024 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81504028 | 40 82 00 0C */	bne .L_81504034
/* 8150402C | 3B 60 00 00 */	li r27, 0x0
/* 81504030 | 48 00 00 2C */	b .L_8150405C
.L_81504034:
/* 81504034 | 2C 18 00 0F */	cmpwi r24, 0xf
/* 81504038 | 41 81 00 10 */	bgt .L_81504048
/* 8150403C | 90 7A 00 9C */	stw r3, 0x9c(r26)
/* 81504040 | 7F 04 C3 78 */	mr r4, r24
/* 81504044 | 48 00 11 B5 */	bl SetPlayerTrackNo__Q44nw4r3snd6detail8SeqTrackFi
.L_81504048:
/* 81504048 | 57 39 F8 7E */	srwi r25, r25, 1
/* 8150404C | 3B 5A 00 04 */	addi r26, r26, 0x4
/* 81504050 | 3B 18 00 01 */	addi r24, r24, 0x1
.L_81504054:
/* 81504054 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 81504058 | 40 82 FF AC */	bne .L_81504004
.L_8150405C:
/* 8150405C | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 81504060 | 40 82 00 68 */	bne .L_815040C8
/* 81504064 | 3B 00 00 00 */	li r24, 0x0
/* 81504068 | 48 00 00 48 */	b .L_815040B0
.L_8150406C:
/* 8150406C | 57 E0 07 FF */	clrlwi. r0, r31, 31
/* 81504070 | 41 82 00 34 */	beq .L_815040A4
/* 81504074 | 2C 18 00 0F */	cmpwi r24, 0xf
/* 81504078 | 40 81 00 0C */	ble .L_81504084
/* 8150407C | 38 80 00 00 */	li r4, 0x0
/* 81504080 | 48 00 00 08 */	b .L_81504088
.L_81504084:
/* 81504084 | 80 9D 00 9C */	lwz r4, 0x9c(r29)
.L_81504088:
/* 81504088 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8150408C | 41 82 00 18 */	beq .L_815040A4
/* 81504090 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81504094 | 7F C3 F3 78 */	mr r3, r30
/* 81504098 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8150409C | 7D 89 03 A6 */	mtctr r12
/* 815040A0 | 4E 80 04 21 */	bctrl
.L_815040A4:
/* 815040A4 | 57 FF F8 7E */	srwi r31, r31, 1
/* 815040A8 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 815040AC | 3B 18 00 01 */	addi r24, r24, 0x1
.L_815040B0:
/* 815040B0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 815040B4 | 40 82 FF B8 */	bne .L_8150406C
/* 815040B8 | 7F 83 E3 78 */	mr r3, r28
/* 815040BC | 48 02 C7 F1 */	bl OSRestoreInterrupts
/* 815040C0 | 38 60 00 01 */	li r3, 0x1
/* 815040C4 | 48 00 00 38 */	b .L_815040FC
.L_815040C8:
/* 815040C8 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 815040CC | 7F BA EB 78 */	mr r26, r29
/* 815040D0 | 41 82 00 08 */	beq .L_815040D8
/* 815040D4 | 3B 5D 00 08 */	addi r26, r29, 0x8
.L_815040D8:
/* 815040D8 | 4B FF A5 0D */	bl GetInstance__Q44nw4r3snd6detail22DisposeCallbackManagerFv
/* 815040DC | 7F 44 D3 78 */	mr r4, r26
/* 815040E0 | 4B FF A5 E9 */	bl RegisterDisposeCallback__Q44nw4r3snd6detail22DisposeCallbackManagerFPQ44nw4r3snd6detail15DisposeCallback
/* 815040E4 | 38 00 00 01 */	li r0, 0x1
/* 815040E8 | 93 DD 00 98 */	stw r30, 0x98(r29)
/* 815040EC | 7F 83 E3 78 */	mr r3, r28
/* 815040F0 | 98 1D 00 15 */	stb r0, 0x15(r29)
/* 815040F4 | 48 02 C7 B9 */	bl OSRestoreInterrupts
/* 815040F8 | 38 60 00 00 */	li r3, 0x0
.L_815040FC:
/* 815040FC | 39 61 00 30 */	addi r11, r1, 0x30
/* 81504100 | 48 0F 53 FD */	bl _restgpr_23
/* 81504104 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81504108 | 7C 08 03 A6 */	mtlr r0
/* 8150410C | 38 21 00 30 */	addi r1, r1, 0x30
/* 81504110 | 4E 80 00 20 */	blr
.endfn Setup__Q44nw4r3snd6detail9SeqPlayerFPQ44nw4r3snd6detail17SeqTrackAllocatorUliPQ44nw4r3snd6detail14NoteOnCallback

# .text:0x4B8 | 0x81504114 | size: 0x44
# nw4r::snd::detail::SeqPlayer::SetSeqData(const void*, long)
.fn SetSeqData__Q44nw4r3snd6detail9SeqPlayerFPCvl, global
/* 81504114 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81504118 | 7C 08 02 A6 */	mflr r0
/* 8150411C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81504120 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81504124 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81504128 | 7C 7F 1B 78 */	mr r31, r3
/* 8150412C | 80 03 00 9C */	lwz r0, 0x9c(r3)
/* 81504130 | 41 82 00 0C */	beq .L_8150413C
/* 81504134 | 7C 03 03 78 */	mr r3, r0
/* 81504138 | 48 00 12 2D */	bl SetSeqData__Q44nw4r3snd6detail8SeqTrackFPCvl
.L_8150413C:
/* 8150413C | 38 00 00 01 */	li r0, 0x1
/* 81504140 | 98 1F 00 16 */	stb r0, 0x16(r31)
/* 81504144 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81504148 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150414C | 7C 08 03 A6 */	mtlr r0
/* 81504150 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81504154 | 4E 80 00 20 */	blr
.endfn SetSeqData__Q44nw4r3snd6detail9SeqPlayerFPCvl

# .text:0x4FC | 0x81504158 | size: 0x74
# nw4r::snd::detail::SeqPlayer::Start()
.fn Start__Q44nw4r3snd6detail9SeqPlayerFv, global
/* 81504158 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150415C | 7C 08 02 A6 */	mflr r0
/* 81504160 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81504164 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81504168 | 7C 7F 1B 78 */	mr r31, r3
/* 8150416C | 88 03 00 16 */	lbz r0, 0x16(r3)
/* 81504170 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81504174 | 40 82 00 0C */	bne .L_81504180
/* 81504178 | 38 60 00 00 */	li r3, 0x0
/* 8150417C | 48 00 00 3C */	b .L_815041B8
.L_81504180:
/* 81504180 | 3C 60 81 10 */	lis r3, "sPlayerList__Q44nw4r3snd6detail27@unnamed@snd_SeqPlayer_cpp@"@ha
/* 81504184 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81504188 | 38 63 5F 4C */	addi r3, r3, "sPlayerList__Q44nw4r3snd6detail27@unnamed@snd_SeqPlayer_cpp@"@l
/* 8150418C | 38 BF 01 00 */	addi r5, r31, 0x100
/* 81504190 | 38 03 00 04 */	addi r0, r3, 0x4
/* 81504194 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81504198 | 48 00 E2 DD */	bl fn_81512474
/* 8150419C | 4B FF 34 31 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 815041A0 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 815041A4 | 38 00 00 01 */	li r0, 0x1
/* 815041A8 | 88 83 A2 32 */	lbz r4, -0x5dce(r3)
/* 815041AC | 38 60 00 01 */	li r3, 0x1
/* 815041B0 | 98 9F 00 14 */	stb r4, 0x14(r31)
/* 815041B4 | 98 1F 00 17 */	stb r0, 0x17(r31)
.L_815041B8:
/* 815041B8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 815041BC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 815041C0 | 7C 08 03 A6 */	mtlr r0
/* 815041C4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 815041C8 | 4E 80 00 20 */	blr
.endfn Start__Q44nw4r3snd6detail9SeqPlayerFv

# .text:0x570 | 0x815041CC | size: 0x100
# nw4r::snd::detail::SeqPlayer::Stop()
.fn Stop__Q44nw4r3snd6detail9SeqPlayerFv, global
/* 815041CC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 815041D0 | 7C 08 02 A6 */	mflr r0
/* 815041D4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 815041D8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 815041DC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 815041E0 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 815041E4 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 815041E8 | 7C 7C 1B 78 */	mr r28, r3
/* 815041EC | 88 03 00 15 */	lbz r0, 0x15(r3)
/* 815041F0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 815041F4 | 41 82 00 B8 */	beq .L_815042AC
/* 815041F8 | 48 02 C6 8D */	bl OSDisableInterrupts
/* 815041FC | 88 1C 00 17 */	lbz r0, 0x17(r28)
/* 81504200 | 7C 7F 1B 78 */	mr r31, r3
/* 81504204 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81504208 | 41 82 00 14 */	beq .L_8150421C
/* 8150420C | 3C 60 81 10 */	lis r3, "sPlayerList__Q44nw4r3snd6detail27@unnamed@snd_SeqPlayer_cpp@"@ha
/* 81504210 | 38 9C 01 00 */	addi r4, r28, 0x100
/* 81504214 | 38 63 5F 4C */	addi r3, r3, "sPlayerList__Q44nw4r3snd6detail27@unnamed@snd_SeqPlayer_cpp@"@l
/* 81504218 | 48 00 E2 89 */	bl fn_815124A0
.L_8150421C:
/* 8150421C | 88 1C 00 15 */	lbz r0, 0x15(r28)
/* 81504220 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81504224 | 41 82 00 20 */	beq .L_81504244
/* 81504228 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 8150422C | 7F 9E E3 78 */	mr r30, r28
/* 81504230 | 41 82 00 08 */	beq .L_81504238
/* 81504234 | 3B DC 00 08 */	addi r30, r28, 0x8
.L_81504238:
/* 81504238 | 4B FF A3 AD */	bl GetInstance__Q44nw4r3snd6detail22DisposeCallbackManagerFv
/* 8150423C | 7F C4 F3 78 */	mr r4, r30
/* 81504240 | 4B FF A4 ED */	bl UnregisterDisposeCallback__Q44nw4r3snd6detail22DisposeCallbackManagerFPQ44nw4r3snd6detail15DisposeCallback
.L_81504244:
/* 81504244 | 7F E3 FB 78 */	mr r3, r31
/* 81504248 | 48 02 C6 65 */	bl OSRestoreInterrupts
/* 8150424C | 7F 9D E3 78 */	mr r29, r28
/* 81504250 | 3B C0 00 00 */	li r30, 0x0
/* 81504254 | 3B E0 00 00 */	li r31, 0x0
.L_81504258:
/* 81504258 | 2C 1E 00 0F */	cmpwi r30, 0xf
/* 8150425C | 40 81 00 0C */	ble .L_81504268
/* 81504260 | 38 60 00 00 */	li r3, 0x0
/* 81504264 | 48 00 00 08 */	b .L_8150426C
.L_81504268:
/* 81504268 | 80 7D 00 9C */	lwz r3, 0x9c(r29)
.L_8150426C:
/* 8150426C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81504270 | 41 82 00 24 */	beq .L_81504294
/* 81504274 | 48 00 11 01 */	bl Close__Q44nw4r3snd6detail8SeqTrackFv
/* 81504278 | 80 7C 00 98 */	lwz r3, 0x98(r28)
/* 8150427C | 80 9D 00 9C */	lwz r4, 0x9c(r29)
/* 81504280 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81504284 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81504288 | 7D 89 03 A6 */	mtctr r12
/* 8150428C | 4E 80 04 21 */	bctrl
/* 81504290 | 93 FD 00 9C */	stw r31, 0x9c(r29)
.L_81504294:
/* 81504294 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81504298 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 8150429C | 2C 1E 00 10 */	cmpwi r30, 0x10
/* 815042A0 | 41 80 FF B8 */	blt .L_81504258
/* 815042A4 | 38 00 00 00 */	li r0, 0x0
/* 815042A8 | 98 1C 00 15 */	stb r0, 0x15(r28)
.L_815042AC:
/* 815042AC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 815042B0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 815042B4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 815042B8 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 815042BC | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 815042C0 | 7C 08 03 A6 */	mtlr r0
/* 815042C4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 815042C8 | 4E 80 00 20 */	blr
.endfn Stop__Q44nw4r3snd6detail9SeqPlayerFv

# .text:0x670 | 0x815042CC | size: 0x90
# nw4r::snd::detail::SeqPlayer::Pause(bool)
.fn Pause__Q44nw4r3snd6detail9SeqPlayerFb, global
/* 815042CC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 815042D0 | 7C 08 02 A6 */	mflr r0
/* 815042D4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 815042D8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 815042DC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 815042E0 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 815042E4 | 7C 9D 23 78 */	mr r29, r4
/* 815042E8 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 815042EC | 7C 7C 1B 78 */	mr r28, r3
/* 815042F0 | 48 02 C5 95 */	bl OSDisableInterrupts
/* 815042F4 | 9B BC 00 18 */	stb r29, 0x18(r28)
/* 815042F8 | 7C 7F 1B 78 */	mr r31, r3
/* 815042FC | 3B C0 00 00 */	li r30, 0x0
.L_81504300:
/* 81504300 | 2C 1E 00 0F */	cmpwi r30, 0xf
/* 81504304 | 40 81 00 0C */	ble .L_81504310
/* 81504308 | 38 60 00 00 */	li r3, 0x0
/* 8150430C | 48 00 00 08 */	b .L_81504314
.L_81504310:
/* 81504310 | 80 7C 00 9C */	lwz r3, 0x9c(r28)
.L_81504314:
/* 81504314 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81504318 | 41 82 00 0C */	beq .L_81504324
/* 8150431C | 7F A4 EB 78 */	mr r4, r29
/* 81504320 | 48 00 12 A5 */	bl PauseAllChannel__Q44nw4r3snd6detail8SeqTrackFb
.L_81504324:
/* 81504324 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81504328 | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 8150432C | 2C 1E 00 10 */	cmpwi r30, 0x10
/* 81504330 | 41 80 FF D0 */	blt .L_81504300
/* 81504334 | 7F E3 FB 78 */	mr r3, r31
/* 81504338 | 48 02 C5 75 */	bl OSRestoreInterrupts
/* 8150433C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81504340 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81504344 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81504348 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8150434C | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 81504350 | 7C 08 03 A6 */	mtlr r0
/* 81504354 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81504358 | 4E 80 00 20 */	blr
.endfn Pause__Q44nw4r3snd6detail9SeqPlayerFb

# .text:0x700 | 0x8150435C | size: 0x40
# nw4r::snd::detail::SeqPlayer::SetVolume(float)
.fn SetVolume__Q44nw4r3snd6detail9SeqPlayerFf, global
/* 8150435C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81504360 | 7C 08 02 A6 */	mflr r0
/* 81504364 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81504368 | DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8150436C | FF E0 08 90 */	fmr f31, f1
/* 81504370 | 93 E1 00 14 */	stw r31, 0x14(r1)
/* 81504374 | 7C 7F 1B 78 */	mr r31, r3
/* 81504378 | 48 02 C5 0D */	bl OSDisableInterrupts
/* 8150437C | D3 FF 00 1C */	stfs f31, 0x1c(r31)
/* 81504380 | 48 02 C5 2D */	bl OSRestoreInterrupts
/* 81504384 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81504388 | CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8150438C | 83 E1 00 14 */	lwz r31, 0x14(r1)
/* 81504390 | 7C 08 03 A6 */	mtlr r0
/* 81504394 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81504398 | 4E 80 00 20 */	blr
.endfn SetVolume__Q44nw4r3snd6detail9SeqPlayerFf

# .text:0x740 | 0x8150439C | size: 0x40
# nw4r::snd::detail::SeqPlayer::SetPitch(float)
.fn SetPitch__Q44nw4r3snd6detail9SeqPlayerFf, global
/* 8150439C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 815043A0 | 7C 08 02 A6 */	mflr r0
/* 815043A4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 815043A8 | DB E1 00 18 */	stfd f31, 0x18(r1)
/* 815043AC | FF E0 08 90 */	fmr f31, f1
/* 815043B0 | 93 E1 00 14 */	stw r31, 0x14(r1)
/* 815043B4 | 7C 7F 1B 78 */	mr r31, r3
/* 815043B8 | 48 02 C4 CD */	bl OSDisableInterrupts
/* 815043BC | D3 FF 00 34 */	stfs f31, 0x34(r31)
/* 815043C0 | 48 02 C4 ED */	bl OSRestoreInterrupts
/* 815043C4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 815043C8 | CB E1 00 18 */	lfd f31, 0x18(r1)
/* 815043CC | 83 E1 00 14 */	lwz r31, 0x14(r1)
/* 815043D0 | 7C 08 03 A6 */	mtlr r0
/* 815043D4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 815043D8 | 4E 80 00 20 */	blr
.endfn SetPitch__Q44nw4r3snd6detail9SeqPlayerFf

# .text:0x780 | 0x815043DC | size: 0x40
# nw4r::snd::detail::SeqPlayer::SetPan(float)
.fn SetPan__Q44nw4r3snd6detail9SeqPlayerFf, global
/* 815043DC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 815043E0 | 7C 08 02 A6 */	mflr r0
/* 815043E4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 815043E8 | DB E1 00 18 */	stfd f31, 0x18(r1)
/* 815043EC | FF E0 08 90 */	fmr f31, f1
/* 815043F0 | 93 E1 00 14 */	stw r31, 0x14(r1)
/* 815043F4 | 7C 7F 1B 78 */	mr r31, r3
/* 815043F8 | 48 02 C4 8D */	bl OSDisableInterrupts
/* 815043FC | D3 FF 00 20 */	stfs f31, 0x20(r31)
/* 81504400 | 48 02 C4 AD */	bl OSRestoreInterrupts
/* 81504404 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81504408 | CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8150440C | 83 E1 00 14 */	lwz r31, 0x14(r1)
/* 81504410 | 7C 08 03 A6 */	mtlr r0
/* 81504414 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81504418 | 4E 80 00 20 */	blr
.endfn SetPan__Q44nw4r3snd6detail9SeqPlayerFf

# .text:0x7C0 | 0x8150441C | size: 0x40
# nw4r::snd::detail::SeqPlayer::SetSurroundPan(float)
.fn SetSurroundPan__Q44nw4r3snd6detail9SeqPlayerFf, global
/* 8150441C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81504420 | 7C 08 02 A6 */	mflr r0
/* 81504424 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81504428 | DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8150442C | FF E0 08 90 */	fmr f31, f1
/* 81504430 | 93 E1 00 14 */	stw r31, 0x14(r1)
/* 81504434 | 7C 7F 1B 78 */	mr r31, r3
/* 81504438 | 48 02 C4 4D */	bl OSDisableInterrupts
/* 8150443C | D3 FF 00 24 */	stfs f31, 0x24(r31)
/* 81504440 | 48 02 C4 6D */	bl OSRestoreInterrupts
/* 81504444 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81504448 | CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8150444C | 83 E1 00 14 */	lwz r31, 0x14(r1)
/* 81504450 | 7C 08 03 A6 */	mtlr r0
/* 81504454 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81504458 | 4E 80 00 20 */	blr
.endfn SetSurroundPan__Q44nw4r3snd6detail9SeqPlayerFf

# .text:0x800 | 0x8150445C | size: 0x40
# nw4r::snd::detail::SeqPlayer::SetPan2(float)
.fn SetPan2__Q44nw4r3snd6detail9SeqPlayerFf, global
/* 8150445C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81504460 | 7C 08 02 A6 */	mflr r0
/* 81504464 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81504468 | DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8150446C | FF E0 08 90 */	fmr f31, f1
/* 81504470 | 93 E1 00 14 */	stw r31, 0x14(r1)
/* 81504474 | 7C 7F 1B 78 */	mr r31, r3
/* 81504478 | 48 02 C4 0D */	bl OSDisableInterrupts
/* 8150447C | D3 FF 00 2C */	stfs f31, 0x2c(r31)
/* 81504480 | 48 02 C4 2D */	bl OSRestoreInterrupts
/* 81504484 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81504488 | CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8150448C | 83 E1 00 14 */	lwz r31, 0x14(r1)
/* 81504490 | 7C 08 03 A6 */	mtlr r0
/* 81504494 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81504498 | 4E 80 00 20 */	blr
.endfn SetPan2__Q44nw4r3snd6detail9SeqPlayerFf

# .text:0x840 | 0x8150449C | size: 0x40
# nw4r::snd::detail::SeqPlayer::SetSurroundPan2(float)
.fn SetSurroundPan2__Q44nw4r3snd6detail9SeqPlayerFf, global
/* 8150449C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 815044A0 | 7C 08 02 A6 */	mflr r0
/* 815044A4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 815044A8 | DB E1 00 18 */	stfd f31, 0x18(r1)
/* 815044AC | FF E0 08 90 */	fmr f31, f1
/* 815044B0 | 93 E1 00 14 */	stw r31, 0x14(r1)
/* 815044B4 | 7C 7F 1B 78 */	mr r31, r3
/* 815044B8 | 48 02 C3 CD */	bl OSDisableInterrupts
/* 815044BC | D3 FF 00 30 */	stfs f31, 0x30(r31)
/* 815044C0 | 48 02 C3 ED */	bl OSRestoreInterrupts
/* 815044C4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 815044C8 | CB E1 00 18 */	lfd f31, 0x18(r1)
/* 815044CC | 83 E1 00 14 */	lwz r31, 0x14(r1)
/* 815044D0 | 7C 08 03 A6 */	mtlr r0
/* 815044D4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 815044D8 | 4E 80 00 20 */	blr
.endfn SetSurroundPan2__Q44nw4r3snd6detail9SeqPlayerFf

# .text:0x880 | 0x815044DC | size: 0x40
# nw4r::snd::detail::SeqPlayer::SetLpfFreq(float)
.fn SetLpfFreq__Q44nw4r3snd6detail9SeqPlayerFf, global
/* 815044DC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 815044E0 | 7C 08 02 A6 */	mflr r0
/* 815044E4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 815044E8 | DB E1 00 18 */	stfd f31, 0x18(r1)
/* 815044EC | FF E0 08 90 */	fmr f31, f1
/* 815044F0 | 93 E1 00 14 */	stw r31, 0x14(r1)
/* 815044F4 | 7C 7F 1B 78 */	mr r31, r3
/* 815044F8 | 48 02 C3 8D */	bl OSDisableInterrupts
/* 815044FC | D3 FF 00 38 */	stfs f31, 0x38(r31)
/* 81504500 | 48 02 C3 AD */	bl OSRestoreInterrupts
/* 81504504 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81504508 | CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8150450C | 83 E1 00 14 */	lwz r31, 0x14(r1)
/* 81504510 | 7C 08 03 A6 */	mtlr r0
/* 81504514 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81504518 | 4E 80 00 20 */	blr
.endfn SetLpfFreq__Q44nw4r3snd6detail9SeqPlayerFf

# .text:0x8C0 | 0x8150451C | size: 0x40
# nw4r::snd::detail::SeqPlayer::SetMainOutVolume(float)
.fn SetMainOutVolume__Q44nw4r3snd6detail9SeqPlayerFf, global
/* 8150451C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81504520 | 7C 08 02 A6 */	mflr r0
/* 81504524 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81504528 | DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8150452C | FF E0 08 90 */	fmr f31, f1
/* 81504530 | 93 E1 00 14 */	stw r31, 0x14(r1)
/* 81504534 | 7C 7F 1B 78 */	mr r31, r3
/* 81504538 | 48 02 C3 4D */	bl OSDisableInterrupts
/* 8150453C | D3 FF 00 40 */	stfs f31, 0x40(r31)
/* 81504540 | 48 02 C3 6D */	bl OSRestoreInterrupts
/* 81504544 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81504548 | CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8150454C | 83 E1 00 14 */	lwz r31, 0x14(r1)
/* 81504550 | 7C 08 03 A6 */	mtlr r0
/* 81504554 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81504558 | 4E 80 00 20 */	blr
.endfn SetMainOutVolume__Q44nw4r3snd6detail9SeqPlayerFf

# .text:0x900 | 0x8150455C | size: 0x8
# nw4r::snd::detail::SeqPlayer::GetMainOutVolume() const
.fn GetMainOutVolume__Q44nw4r3snd6detail9SeqPlayerCFv, global
/* 8150455C | C0 23 00 40 */	lfs f1, 0x40(r3)
/* 81504560 | 4E 80 00 20 */	blr
.endfn GetMainOutVolume__Q44nw4r3snd6detail9SeqPlayerCFv

# .text:0x908 | 0x81504564 | size: 0x40
# nw4r::snd::detail::SeqPlayer::SetMainSend(float)
.fn SetMainSend__Q44nw4r3snd6detail9SeqPlayerFf, global
/* 81504564 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81504568 | 7C 08 02 A6 */	mflr r0
/* 8150456C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81504570 | DB E1 00 18 */	stfd f31, 0x18(r1)
/* 81504574 | FF E0 08 90 */	fmr f31, f1
/* 81504578 | 93 E1 00 14 */	stw r31, 0x14(r1)
/* 8150457C | 7C 7F 1B 78 */	mr r31, r3
/* 81504580 | 48 02 C3 05 */	bl OSDisableInterrupts
/* 81504584 | D3 FF 00 44 */	stfs f31, 0x44(r31)
/* 81504588 | 48 02 C3 25 */	bl OSRestoreInterrupts
/* 8150458C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81504590 | CB E1 00 18 */	lfd f31, 0x18(r1)
/* 81504594 | 83 E1 00 14 */	lwz r31, 0x14(r1)
/* 81504598 | 7C 08 03 A6 */	mtlr r0
/* 8150459C | 38 21 00 20 */	addi r1, r1, 0x20
/* 815045A0 | 4E 80 00 20 */	blr
.endfn SetMainSend__Q44nw4r3snd6detail9SeqPlayerFf

# .text:0x948 | 0x815045A4 | size: 0x8
# nw4r::snd::detail::SeqPlayer::GetMainSend() const
.fn GetMainSend__Q44nw4r3snd6detail9SeqPlayerCFv, global
/* 815045A4 | C0 23 00 44 */	lfs f1, 0x44(r3)
/* 815045A8 | 4E 80 00 20 */	blr
.endfn GetMainSend__Q44nw4r3snd6detail9SeqPlayerCFv

# .text:0x950 | 0x815045AC | size: 0x54
# nw4r::snd::detail::SeqPlayer::SetFxSend(nw4r::snd::AuxBus, float)
.fn SetFxSend__Q44nw4r3snd6detail9SeqPlayerFQ34nw4r3snd6AuxBusf, global
/* 815045AC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 815045B0 | 7C 08 02 A6 */	mflr r0
/* 815045B4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 815045B8 | DB E1 00 18 */	stfd f31, 0x18(r1)
/* 815045BC | FF E0 08 90 */	fmr f31, f1
/* 815045C0 | 93 E1 00 14 */	stw r31, 0x14(r1)
/* 815045C4 | 7C 9F 23 78 */	mr r31, r4
/* 815045C8 | 93 C1 00 10 */	stw r30, 0x10(r1)
/* 815045CC | 7C 7E 1B 78 */	mr r30, r3
/* 815045D0 | 48 02 C2 B5 */	bl OSDisableInterrupts
/* 815045D4 | 57 E0 10 3A */	slwi r0, r31, 2
/* 815045D8 | 7C 9E 02 14 */	add r4, r30, r0
/* 815045DC | D3 E4 00 48 */	stfs f31, 0x48(r4)
/* 815045E0 | 48 02 C2 CD */	bl OSRestoreInterrupts
/* 815045E4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 815045E8 | CB E1 00 18 */	lfd f31, 0x18(r1)
/* 815045EC | 83 E1 00 14 */	lwz r31, 0x14(r1)
/* 815045F0 | 83 C1 00 10 */	lwz r30, 0x10(r1)
/* 815045F4 | 7C 08 03 A6 */	mtlr r0
/* 815045F8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 815045FC | 4E 80 00 20 */	blr
.endfn SetFxSend__Q44nw4r3snd6detail9SeqPlayerFQ34nw4r3snd6AuxBusf

# .text:0x9A4 | 0x81504600 | size: 0x10
# nw4r::snd::detail::SeqPlayer::GetFxSend(nw4r::snd::AuxBus) const
.fn GetFxSend__Q44nw4r3snd6detail9SeqPlayerCFQ34nw4r3snd6AuxBus, global
/* 81504600 | 54 80 10 3A */	slwi r0, r4, 2
/* 81504604 | 7C 63 02 14 */	add r3, r3, r0
/* 81504608 | C0 23 00 48 */	lfs f1, 0x48(r3)
/* 8150460C | 4E 80 00 20 */	blr
.endfn GetFxSend__Q44nw4r3snd6detail9SeqPlayerCFQ34nw4r3snd6AuxBus

# .text:0x9B4 | 0x81504610 | size: 0x40
# nw4r::snd::detail::SeqPlayer::SetOutputLine(int)
.fn SetOutputLine__Q44nw4r3snd6detail9SeqPlayerFi, global
/* 81504610 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81504614 | 7C 08 02 A6 */	mflr r0
/* 81504618 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150461C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81504620 | 7C 9F 23 78 */	mr r31, r4
/* 81504624 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81504628 | 7C 7E 1B 78 */	mr r30, r3
/* 8150462C | 48 02 C2 59 */	bl OSDisableInterrupts
/* 81504630 | 93 FE 00 3C */	stw r31, 0x3c(r30)
/* 81504634 | 48 02 C2 79 */	bl OSRestoreInterrupts
/* 81504638 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150463C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81504640 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81504644 | 7C 08 03 A6 */	mtlr r0
/* 81504648 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150464C | 4E 80 00 20 */	blr
.endfn SetOutputLine__Q44nw4r3snd6detail9SeqPlayerFi

# .text:0x9F4 | 0x81504650 | size: 0x8
# nw4r::snd::detail::SeqPlayer::GetOutputLine() const
.fn GetOutputLine__Q44nw4r3snd6detail9SeqPlayerCFv, global
/* 81504650 | 80 63 00 3C */	lwz r3, 0x3c(r3)
/* 81504654 | 4E 80 00 20 */	blr
.endfn GetOutputLine__Q44nw4r3snd6detail9SeqPlayerCFv

# .text:0x9FC | 0x81504658 | size: 0x54
# nw4r::snd::detail::SeqPlayer::SetRemoteOutVolume(int, float)
.fn SetRemoteOutVolume__Q44nw4r3snd6detail9SeqPlayerFif, global
/* 81504658 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150465C | 7C 08 02 A6 */	mflr r0
/* 81504660 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81504664 | DB E1 00 18 */	stfd f31, 0x18(r1)
/* 81504668 | FF E0 08 90 */	fmr f31, f1
/* 8150466C | 93 E1 00 14 */	stw r31, 0x14(r1)
/* 81504670 | 7C 9F 23 78 */	mr r31, r4
/* 81504674 | 93 C1 00 10 */	stw r30, 0x10(r1)
/* 81504678 | 7C 7E 1B 78 */	mr r30, r3
/* 8150467C | 48 02 C2 09 */	bl OSDisableInterrupts
/* 81504680 | 57 E0 10 3A */	slwi r0, r31, 2
/* 81504684 | 7C 9E 02 14 */	add r4, r30, r0
/* 81504688 | D3 E4 00 54 */	stfs f31, 0x54(r4)
/* 8150468C | 48 02 C2 21 */	bl OSRestoreInterrupts
/* 81504690 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81504694 | CB E1 00 18 */	lfd f31, 0x18(r1)
/* 81504698 | 83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8150469C | 83 C1 00 10 */	lwz r30, 0x10(r1)
/* 815046A0 | 7C 08 03 A6 */	mtlr r0
/* 815046A4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 815046A8 | 4E 80 00 20 */	blr
.endfn SetRemoteOutVolume__Q44nw4r3snd6detail9SeqPlayerFif

# .text:0xA50 | 0x815046AC | size: 0x10
# nw4r::snd::detail::SeqPlayer::GetRemoteOutVolume(int) const
.fn GetRemoteOutVolume__Q44nw4r3snd6detail9SeqPlayerCFi, global
/* 815046AC | 54 80 10 3A */	slwi r0, r4, 2
/* 815046B0 | 7C 63 02 14 */	add r3, r3, r0
/* 815046B4 | C0 23 00 54 */	lfs f1, 0x54(r3)
/* 815046B8 | 4E 80 00 20 */	blr
.endfn GetRemoteOutVolume__Q44nw4r3snd6detail9SeqPlayerCFi

# .text:0xA60 | 0x815046BC | size: 0x54
# nw4r::snd::detail::SeqPlayer::SetRemoteSend(int, float)
.fn SetRemoteSend__Q44nw4r3snd6detail9SeqPlayerFif, global
/* 815046BC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 815046C0 | 7C 08 02 A6 */	mflr r0
/* 815046C4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 815046C8 | DB E1 00 18 */	stfd f31, 0x18(r1)
/* 815046CC | FF E0 08 90 */	fmr f31, f1
/* 815046D0 | 93 E1 00 14 */	stw r31, 0x14(r1)
/* 815046D4 | 7C 9F 23 78 */	mr r31, r4
/* 815046D8 | 93 C1 00 10 */	stw r30, 0x10(r1)
/* 815046DC | 7C 7E 1B 78 */	mr r30, r3
/* 815046E0 | 48 02 C1 A5 */	bl OSDisableInterrupts
/* 815046E4 | 57 E0 10 3A */	slwi r0, r31, 2
/* 815046E8 | 7C 9E 02 14 */	add r4, r30, r0
/* 815046EC | D3 E4 00 64 */	stfs f31, 0x64(r4)
/* 815046F0 | 48 02 C1 BD */	bl OSRestoreInterrupts
/* 815046F4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 815046F8 | CB E1 00 18 */	lfd f31, 0x18(r1)
/* 815046FC | 83 E1 00 14 */	lwz r31, 0x14(r1)
/* 81504700 | 83 C1 00 10 */	lwz r30, 0x10(r1)
/* 81504704 | 7C 08 03 A6 */	mtlr r0
/* 81504708 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150470C | 4E 80 00 20 */	blr
.endfn SetRemoteSend__Q44nw4r3snd6detail9SeqPlayerFif

# .text:0xAB4 | 0x81504710 | size: 0x10
# nw4r::snd::detail::SeqPlayer::GetRemoteSend(int) const
.fn GetRemoteSend__Q44nw4r3snd6detail9SeqPlayerCFi, global
/* 81504710 | 54 80 10 3A */	slwi r0, r4, 2
/* 81504714 | 7C 63 02 14 */	add r3, r3, r0
/* 81504718 | C0 23 00 64 */	lfs f1, 0x64(r3)
/* 8150471C | 4E 80 00 20 */	blr
.endfn GetRemoteSend__Q44nw4r3snd6detail9SeqPlayerCFi

# .text:0xAC4 | 0x81504720 | size: 0x54
# nw4r::snd::detail::SeqPlayer::SetRemoteFxSend(int, float)
.fn SetRemoteFxSend__Q44nw4r3snd6detail9SeqPlayerFif, global
/* 81504720 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81504724 | 7C 08 02 A6 */	mflr r0
/* 81504728 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8150472C | DB E1 00 18 */	stfd f31, 0x18(r1)
/* 81504730 | FF E0 08 90 */	fmr f31, f1
/* 81504734 | 93 E1 00 14 */	stw r31, 0x14(r1)
/* 81504738 | 7C 9F 23 78 */	mr r31, r4
/* 8150473C | 93 C1 00 10 */	stw r30, 0x10(r1)
/* 81504740 | 7C 7E 1B 78 */	mr r30, r3
/* 81504744 | 48 02 C1 41 */	bl OSDisableInterrupts
/* 81504748 | 57 E0 10 3A */	slwi r0, r31, 2
/* 8150474C | 7C 9E 02 14 */	add r4, r30, r0
/* 81504750 | D3 E4 00 74 */	stfs f31, 0x74(r4)
/* 81504754 | 48 02 C1 59 */	bl OSRestoreInterrupts
/* 81504758 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150475C | CB E1 00 18 */	lfd f31, 0x18(r1)
/* 81504760 | 83 E1 00 14 */	lwz r31, 0x14(r1)
/* 81504764 | 83 C1 00 10 */	lwz r30, 0x10(r1)
/* 81504768 | 7C 08 03 A6 */	mtlr r0
/* 8150476C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81504770 | 4E 80 00 20 */	blr
.endfn SetRemoteFxSend__Q44nw4r3snd6detail9SeqPlayerFif

# .text:0xB18 | 0x81504774 | size: 0x10
# nw4r::snd::detail::SeqPlayer::GetRemoteFxSend(int) const
.fn GetRemoteFxSend__Q44nw4r3snd6detail9SeqPlayerCFi, global
/* 81504774 | 54 80 10 3A */	slwi r0, r4, 2
/* 81504778 | 7C 63 02 14 */	add r3, r3, r0
/* 8150477C | C0 23 00 74 */	lfs f1, 0x74(r3)
/* 81504780 | 4E 80 00 20 */	blr
.endfn GetRemoteFxSend__Q44nw4r3snd6detail9SeqPlayerCFi

# .text:0xB28 | 0x81504784 | size: 0x40
# nw4r::snd::detail::SeqPlayer::SetChannelPriority(int)
.fn SetChannelPriority__Q44nw4r3snd6detail9SeqPlayerFi, global
/* 81504784 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81504788 | 7C 08 02 A6 */	mflr r0
/* 8150478C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81504790 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81504794 | 7C 9F 23 78 */	mr r31, r4
/* 81504798 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8150479C | 7C 7E 1B 78 */	mr r30, r3
/* 815047A0 | 48 02 C0 E5 */	bl OSDisableInterrupts
/* 815047A4 | 9B FE 00 91 */	stb r31, 0x91(r30)
/* 815047A8 | 48 02 C1 05 */	bl OSRestoreInterrupts
/* 815047AC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 815047B0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 815047B4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 815047B8 | 7C 08 03 A6 */	mtlr r0
/* 815047BC | 38 21 00 10 */	addi r1, r1, 0x10
/* 815047C0 | 4E 80 00 20 */	blr
.endfn SetChannelPriority__Q44nw4r3snd6detail9SeqPlayerFi

# .text:0xB68 | 0x815047C4 | size: 0x158
# nw4r::snd::detail::SeqPlayer::InvalidateData(const void*, const void*)
.fn InvalidateData__Q44nw4r3snd6detail9SeqPlayerFPCvPCv, global
/* 815047C4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 815047C8 | 7C 08 02 A6 */	mflr r0
/* 815047CC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 815047D0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 815047D4 | 48 0F 4C ED */	bl _savegpr_27
/* 815047D8 | 7C 7F 1B 78 */	mr r31, r3
/* 815047DC | 7C 9C 23 78 */	mr r28, r4
/* 815047E0 | 7C BB 2B 78 */	mr r27, r5
/* 815047E4 | 48 02 C0 A1 */	bl OSDisableInterrupts
/* 815047E8 | 88 1F 00 15 */	lbz r0, 0x15(r31)
/* 815047EC | 7C 7E 1B 78 */	mr r30, r3
/* 815047F0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 815047F4 | 41 82 01 08 */	beq .L_815048FC
/* 815047F8 | 38 00 00 10 */	li r0, 0x10
/* 815047FC | 7F E4 FB 78 */	mr r4, r31
/* 81504800 | 38 A0 00 00 */	li r5, 0x0
/* 81504804 | 7C 09 03 A6 */	mtctr r0
.L_81504808:
/* 81504808 | 2C 05 00 0F */	cmpwi r5, 0xf
/* 8150480C | 40 81 00 0C */	ble .L_81504818
/* 81504810 | 38 60 00 00 */	li r3, 0x0
/* 81504814 | 48 00 00 08 */	b .L_8150481C
.L_81504818:
/* 81504818 | 80 64 00 9C */	lwz r3, 0x9c(r4)
.L_8150481C:
/* 8150481C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81504820 | 41 82 00 D0 */	beq .L_815048F0
/* 81504824 | 80 03 00 50 */	lwz r0, 0x50(r3)
/* 81504828 | 7C 1C 00 40 */	cmplw r28, r0
/* 8150482C | 41 81 00 C4 */	bgt .L_815048F0
/* 81504830 | 7C 00 D8 40 */	cmplw r0, r27
/* 81504834 | 41 81 00 BC */	bgt .L_815048F0
/* 81504838 | 48 02 C0 4D */	bl OSDisableInterrupts
/* 8150483C | 88 1F 00 17 */	lbz r0, 0x17(r31)
/* 81504840 | 7C 7D 1B 78 */	mr r29, r3
/* 81504844 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81504848 | 41 82 00 14 */	beq .L_8150485C
/* 8150484C | 3C 60 81 10 */	lis r3, "sPlayerList__Q44nw4r3snd6detail27@unnamed@snd_SeqPlayer_cpp@"@ha
/* 81504850 | 38 9F 01 00 */	addi r4, r31, 0x100
/* 81504854 | 38 63 5F 4C */	addi r3, r3, "sPlayerList__Q44nw4r3snd6detail27@unnamed@snd_SeqPlayer_cpp@"@l
/* 81504858 | 48 00 DC 49 */	bl fn_815124A0
.L_8150485C:
/* 8150485C | 88 1F 00 15 */	lbz r0, 0x15(r31)
/* 81504860 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81504864 | 41 82 00 20 */	beq .L_81504884
/* 81504868 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8150486C | 7F FC FB 78 */	mr r28, r31
/* 81504870 | 41 82 00 08 */	beq .L_81504878
/* 81504874 | 3B 9F 00 08 */	addi r28, r31, 0x8
.L_81504878:
/* 81504878 | 4B FF 9D 6D */	bl GetInstance__Q44nw4r3snd6detail22DisposeCallbackManagerFv
/* 8150487C | 7F 84 E3 78 */	mr r4, r28
/* 81504880 | 4B FF 9E AD */	bl UnregisterDisposeCallback__Q44nw4r3snd6detail22DisposeCallbackManagerFPQ44nw4r3snd6detail15DisposeCallback
.L_81504884:
/* 81504884 | 7F A3 EB 78 */	mr r3, r29
/* 81504888 | 48 02 C0 25 */	bl OSRestoreInterrupts
/* 8150488C | 7F FB FB 78 */	mr r27, r31
/* 81504890 | 3B 80 00 00 */	li r28, 0x0
/* 81504894 | 3B A0 00 00 */	li r29, 0x0
.L_81504898:
/* 81504898 | 2C 1C 00 0F */	cmpwi r28, 0xf
/* 8150489C | 40 81 00 0C */	ble .L_815048A8
/* 815048A0 | 38 60 00 00 */	li r3, 0x0
/* 815048A4 | 48 00 00 08 */	b .L_815048AC
.L_815048A8:
/* 815048A8 | 80 7B 00 9C */	lwz r3, 0x9c(r27)
.L_815048AC:
/* 815048AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 815048B0 | 41 82 00 24 */	beq .L_815048D4
/* 815048B4 | 48 00 0A C1 */	bl Close__Q44nw4r3snd6detail8SeqTrackFv
/* 815048B8 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 815048BC | 80 9B 00 9C */	lwz r4, 0x9c(r27)
/* 815048C0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 815048C4 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 815048C8 | 7D 89 03 A6 */	mtctr r12
/* 815048CC | 4E 80 04 21 */	bctrl
/* 815048D0 | 93 BB 00 9C */	stw r29, 0x9c(r27)
.L_815048D4:
/* 815048D4 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 815048D8 | 3B 7B 00 04 */	addi r27, r27, 0x4
/* 815048DC | 2C 1C 00 10 */	cmpwi r28, 0x10
/* 815048E0 | 41 80 FF B8 */	blt .L_81504898
/* 815048E4 | 38 00 00 00 */	li r0, 0x0
/* 815048E8 | 98 1F 00 15 */	stb r0, 0x15(r31)
/* 815048EC | 48 00 00 10 */	b .L_815048FC
.L_815048F0:
/* 815048F0 | 38 84 00 04 */	addi r4, r4, 0x4
/* 815048F4 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 815048F8 | 42 00 FF 10 */	bdnz .L_81504808
.L_815048FC:
/* 815048FC | 7F C3 F3 78 */	mr r3, r30
/* 81504900 | 48 02 BF AD */	bl OSRestoreInterrupts
/* 81504904 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81504908 | 48 0F 4C 05 */	bl _restgpr_27
/* 8150490C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81504910 | 7C 08 03 A6 */	mtlr r0
/* 81504914 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81504918 | 4E 80 00 20 */	blr
.endfn InvalidateData__Q44nw4r3snd6detail9SeqPlayerFPCvPCv

# .text:0xCC0 | 0x8150491C | size: 0x20
# nw4r::snd::detail::SeqPlayer::GetPlayerTrack(int)
.fn GetPlayerTrack__Q44nw4r3snd6detail9SeqPlayerFi, global
/* 8150491C | 2C 04 00 0F */	cmpwi r4, 0xf
/* 81504920 | 40 81 00 0C */	ble .L_8150492C
/* 81504924 | 38 60 00 00 */	li r3, 0x0
/* 81504928 | 4E 80 00 20 */	blr
.L_8150492C:
/* 8150492C | 54 80 10 3A */	slwi r0, r4, 2
/* 81504930 | 7C 63 02 14 */	add r3, r3, r0
/* 81504934 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 81504938 | 4E 80 00 20 */	blr
.endfn GetPlayerTrack__Q44nw4r3snd6detail9SeqPlayerFi

# .text:0xCE0 | 0x8150493C | size: 0xD8
# nw4r::snd::detail::SeqPlayer::ParseNextTick(bool)
.fn ParseNextTick__Q44nw4r3snd6detail9SeqPlayerFb, global
/* 8150493C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81504940 | 7C 08 02 A6 */	mflr r0
/* 81504944 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81504948 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8150494C | 48 0F 4B 6D */	bl _savegpr_25
/* 81504950 | 7C 79 1B 78 */	mr r25, r3
/* 81504954 | 7C 9A 23 78 */	mr r26, r4
/* 81504958 | 7F 3D CB 78 */	mr r29, r25
/* 8150495C | 3B 80 00 00 */	li r28, 0x0
/* 81504960 | 3B 60 00 00 */	li r27, 0x0
/* 81504964 | 3B E0 00 00 */	li r31, 0x0
.L_81504968:
/* 81504968 | 2C 1B 00 0F */	cmpwi r27, 0xf
/* 8150496C | 40 81 00 0C */	ble .L_81504978
/* 81504970 | 3B C0 00 00 */	li r30, 0x0
/* 81504974 | 48 00 00 08 */	b .L_8150497C
.L_81504978:
/* 81504978 | 83 DD 00 9C */	lwz r30, 0x9c(r29)
.L_8150497C:
/* 8150497C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81504980 | 41 82 00 64 */	beq .L_815049E4
/* 81504984 | 7F C3 F3 78 */	mr r3, r30
/* 81504988 | 48 00 0A 61 */	bl UpdateChannelLength__Q44nw4r3snd6detail8SeqTrackFv
/* 8150498C | 7F C3 F3 78 */	mr r3, r30
/* 81504990 | 7F 44 D3 78 */	mr r4, r26
/* 81504994 | 48 00 0A C5 */	bl ParseNextTick__Q44nw4r3snd6detail8SeqTrackFb
/* 81504998 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150499C | 40 82 00 0C */	bne .L_815049A8
/* 815049A0 | 3B 80 00 01 */	li r28, 0x1
/* 815049A4 | 48 00 00 40 */	b .L_815049E4
.L_815049A8:
/* 815049A8 | 2C 1B 00 0F */	cmpwi r27, 0xf
/* 815049AC | 40 81 00 0C */	ble .L_815049B8
/* 815049B0 | 38 60 00 00 */	li r3, 0x0
/* 815049B4 | 48 00 00 08 */	b .L_815049BC
.L_815049B8:
/* 815049B8 | 80 7D 00 9C */	lwz r3, 0x9c(r29)
.L_815049BC:
/* 815049BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 815049C0 | 41 82 00 24 */	beq .L_815049E4
/* 815049C4 | 48 00 09 B1 */	bl Close__Q44nw4r3snd6detail8SeqTrackFv
/* 815049C8 | 80 79 00 98 */	lwz r3, 0x98(r25)
/* 815049CC | 80 9D 00 9C */	lwz r4, 0x9c(r29)
/* 815049D0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 815049D4 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 815049D8 | 7D 89 03 A6 */	mtctr r12
/* 815049DC | 4E 80 04 21 */	bctrl
/* 815049E0 | 93 FD 00 9C */	stw r31, 0x9c(r29)
.L_815049E4:
/* 815049E4 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 815049E8 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 815049EC | 2C 1B 00 10 */	cmpwi r27, 0x10
/* 815049F0 | 41 80 FF 78 */	blt .L_81504968
/* 815049F4 | 7F 80 00 34 */	cntlzw r0, r28
/* 815049F8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 815049FC | 54 03 D9 7E */	srwi r3, r0, 5
/* 81504A00 | 48 0F 4B 05 */	bl _restgpr_25
/* 81504A04 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81504A08 | 7C 08 03 A6 */	mtlr r0
/* 81504A0C | 38 21 00 30 */	addi r1, r1, 0x30
/* 81504A10 | 4E 80 00 20 */	blr
.endfn ParseNextTick__Q44nw4r3snd6detail9SeqPlayerFb

# .text:0xDB8 | 0x81504A14 | size: 0x3C
# nw4r::snd::detail::SeqPlayer::GetVariablePtr(int)
.fn GetVariablePtr__Q44nw4r3snd6detail9SeqPlayerFi, global
/* 81504A14 | 2C 04 00 10 */	cmpwi r4, 0x10
/* 81504A18 | 40 80 00 14 */	bge .L_81504A2C
/* 81504A1C | 54 80 08 3C */	slwi r0, r4, 1
/* 81504A20 | 7C 63 02 14 */	add r3, r3, r0
/* 81504A24 | 38 63 00 DC */	addi r3, r3, 0xdc
/* 81504A28 | 4E 80 00 20 */	blr
.L_81504A2C:
/* 81504A2C | 2C 04 00 20 */	cmpwi r4, 0x20
/* 81504A30 | 38 60 00 00 */	li r3, 0x0
/* 81504A34 | 4C 80 00 20 */	bgelr
/* 81504A38 | 38 04 FF F0 */	subi r0, r4, 0x10
/* 81504A3C | 3C 60 81 10 */	lis r3, mGlobalVariable__Q44nw4r3snd6detail9SeqPlayer@ha
/* 81504A40 | 54 00 08 3C */	slwi r0, r0, 1
/* 81504A44 | 38 63 5F 58 */	addi r3, r3, mGlobalVariable__Q44nw4r3snd6detail9SeqPlayer@l
/* 81504A48 | 7C 63 02 14 */	add r3, r3, r0
/* 81504A4C | 4E 80 00 20 */	blr
.endfn GetVariablePtr__Q44nw4r3snd6detail9SeqPlayerFi

# .text:0xDF4 | 0x81504A50 | size: 0x208
# nw4r::snd::detail::SeqPlayer::Update()
.fn Update__Q44nw4r3snd6detail9SeqPlayerFv, global
/* 81504A50 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81504A54 | 7C 08 02 A6 */	mflr r0
/* 81504A58 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81504A5C | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 81504A60 | 7C 7F 1B 78 */	mr r31, r3
/* 81504A64 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 81504A68 | 93 A1 00 24 */	stw r29, 0x24(r1)
/* 81504A6C | 93 81 00 20 */	stw r28, 0x20(r1)
/* 81504A70 | 88 03 00 15 */	lbz r0, 0x15(r3)
/* 81504A74 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81504A78 | 41 82 01 C0 */	beq .L_81504C38
/* 81504A7C | 88 03 00 17 */	lbz r0, 0x17(r3)
/* 81504A80 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81504A84 | 41 82 01 B4 */	beq .L_81504C38
/* 81504A88 | 88 03 00 18 */	lbz r0, 0x18(r3)
/* 81504A8C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81504A90 | 40 82 01 74 */	bne .L_81504C04
/* 81504A94 | 88 03 00 19 */	lbz r0, 0x19(r3)
/* 81504A98 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81504A9C | 40 82 01 68 */	bne .L_81504C04
/* 81504AA0 | 88 03 00 14 */	lbz r0, 0x14(r3)
/* 81504AA4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81504AA8 | 40 82 00 18 */	bne .L_81504AC0
/* 81504AAC | 4B FF 2B 21 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 81504AB0 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 81504AB4 | 88 03 A2 32 */	lbz r0, -0x5dce(r3)
/* 81504AB8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81504ABC | 40 82 01 48 */	bne .L_81504C04
.L_81504AC0:
/* 81504AC0 | 3B 80 00 00 */	li r28, 0x0
/* 81504AC4 | 48 00 00 14 */	b .L_81504AD8
.L_81504AC8:
/* 81504AC8 | A0 7F 00 88 */	lhz r3, 0x88(r31)
/* 81504ACC | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 81504AD0 | 38 03 FE 60 */	subi r0, r3, 0x1a0
/* 81504AD4 | B0 1F 00 88 */	sth r0, 0x88(r31)
.L_81504AD8:
/* 81504AD8 | A0 9F 00 88 */	lhz r4, 0x88(r31)
/* 81504ADC | 28 04 01 A0 */	cmplwi r4, 0x1a0
/* 81504AE0 | 40 80 FF E8 */	bge .L_81504AC8
/* 81504AE4 | A0 7F 00 92 */	lhz r3, 0x92(r31)
/* 81504AE8 | 3C 00 43 30 */	lis r0, 0x4330
/* 81504AEC | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81504AF0 | C8 42 8F 50 */	lfd f2, lbl_81695350@sda21(r0)
/* 81504AF4 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 81504AF8 | C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 81504AFC | C8 21 00 08 */	lfd f1, 0x8(r1)
/* 81504B00 | EC 21 10 28 */	fsubs f1, f1, f2
/* 81504B04 | EC 21 00 32 */	fmuls f1, f1, f0
/* 81504B08 | FC 00 08 1E */	fctiwz f0, f1
/* 81504B0C | D8 01 00 10 */	stfd f0, 0x10(r1)
/* 81504B10 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81504B14 | 7C 04 02 14 */	add r0, r4, r0
/* 81504B18 | B0 1F 00 88 */	sth r0, 0x88(r31)
/* 81504B1C | 48 00 00 E0 */	b .L_81504BFC
.L_81504B20:
/* 81504B20 | 7F E3 FB 78 */	mr r3, r31
/* 81504B24 | 38 80 00 01 */	li r4, 0x1
/* 81504B28 | 4B FF FE 15 */	bl ParseNextTick__Q44nw4r3snd6detail9SeqPlayerFb
/* 81504B2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81504B30 | 41 82 00 BC */	beq .L_81504BEC
/* 81504B34 | 48 02 BD 51 */	bl OSDisableInterrupts
/* 81504B38 | 88 1F 00 17 */	lbz r0, 0x17(r31)
/* 81504B3C | 7C 7E 1B 78 */	mr r30, r3
/* 81504B40 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81504B44 | 41 82 00 14 */	beq .L_81504B58
/* 81504B48 | 3C 60 81 10 */	lis r3, "sPlayerList__Q44nw4r3snd6detail27@unnamed@snd_SeqPlayer_cpp@"@ha
/* 81504B4C | 38 9F 01 00 */	addi r4, r31, 0x100
/* 81504B50 | 38 63 5F 4C */	addi r3, r3, "sPlayerList__Q44nw4r3snd6detail27@unnamed@snd_SeqPlayer_cpp@"@l
/* 81504B54 | 48 00 D9 4D */	bl fn_815124A0
.L_81504B58:
/* 81504B58 | 88 1F 00 15 */	lbz r0, 0x15(r31)
/* 81504B5C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81504B60 | 41 82 00 20 */	beq .L_81504B80
/* 81504B64 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81504B68 | 7F FD FB 78 */	mr r29, r31
/* 81504B6C | 41 82 00 08 */	beq .L_81504B74
/* 81504B70 | 3B BF 00 08 */	addi r29, r31, 0x8
.L_81504B74:
/* 81504B74 | 4B FF 9A 71 */	bl GetInstance__Q44nw4r3snd6detail22DisposeCallbackManagerFv
/* 81504B78 | 7F A4 EB 78 */	mr r4, r29
/* 81504B7C | 4B FF 9B B1 */	bl UnregisterDisposeCallback__Q44nw4r3snd6detail22DisposeCallbackManagerFPQ44nw4r3snd6detail15DisposeCallback
.L_81504B80:
/* 81504B80 | 7F C3 F3 78 */	mr r3, r30
/* 81504B84 | 48 02 BD 29 */	bl OSRestoreInterrupts
/* 81504B88 | 7F FC FB 78 */	mr r28, r31
/* 81504B8C | 3B A0 00 00 */	li r29, 0x0
/* 81504B90 | 3B C0 00 00 */	li r30, 0x0
.L_81504B94:
/* 81504B94 | 2C 1D 00 0F */	cmpwi r29, 0xf
/* 81504B98 | 40 81 00 0C */	ble .L_81504BA4
/* 81504B9C | 38 60 00 00 */	li r3, 0x0
/* 81504BA0 | 48 00 00 08 */	b .L_81504BA8
.L_81504BA4:
/* 81504BA4 | 80 7C 00 9C */	lwz r3, 0x9c(r28)
.L_81504BA8:
/* 81504BA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81504BAC | 41 82 00 24 */	beq .L_81504BD0
/* 81504BB0 | 48 00 07 C5 */	bl Close__Q44nw4r3snd6detail8SeqTrackFv
/* 81504BB4 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 81504BB8 | 80 9C 00 9C */	lwz r4, 0x9c(r28)
/* 81504BBC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81504BC0 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81504BC4 | 7D 89 03 A6 */	mtctr r12
/* 81504BC8 | 4E 80 04 21 */	bctrl
/* 81504BCC | 93 DC 00 9C */	stw r30, 0x9c(r28)
.L_81504BD0:
/* 81504BD0 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 81504BD4 | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 81504BD8 | 2C 1D 00 10 */	cmpwi r29, 0x10
/* 81504BDC | 41 80 FF B8 */	blt .L_81504B94
/* 81504BE0 | 38 00 00 00 */	li r0, 0x0
/* 81504BE4 | 98 1F 00 15 */	stb r0, 0x15(r31)
/* 81504BE8 | 48 00 00 1C */	b .L_81504C04
.L_81504BEC:
/* 81504BEC | 80 7F 00 FC */	lwz r3, 0xfc(r31)
/* 81504BF0 | 3B 9C FF FF */	subi r28, r28, 0x1
/* 81504BF4 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81504BF8 | 90 1F 00 FC */	stw r0, 0xfc(r31)
.L_81504BFC:
/* 81504BFC | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81504C00 | 41 81 FF 20 */	bgt .L_81504B20
.L_81504C04:
/* 81504C04 | 3B A0 00 00 */	li r29, 0x0
.L_81504C08:
/* 81504C08 | 2C 1D 00 0F */	cmpwi r29, 0xf
/* 81504C0C | 40 81 00 0C */	ble .L_81504C18
/* 81504C10 | 38 60 00 00 */	li r3, 0x0
/* 81504C14 | 48 00 00 08 */	b .L_81504C1C
.L_81504C18:
/* 81504C18 | 80 7F 00 9C */	lwz r3, 0x9c(r31)
.L_81504C1C:
/* 81504C1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81504C20 | 41 82 00 08 */	beq .L_81504C28
/* 81504C24 | 48 00 0A 35 */	bl UpdateChannelParam__Q44nw4r3snd6detail8SeqTrackFv
.L_81504C28:
/* 81504C28 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 81504C2C | 3B FF 00 04 */	addi r31, r31, 0x4
/* 81504C30 | 2C 1D 00 10 */	cmpwi r29, 0x10
/* 81504C34 | 41 80 FF D4 */	blt .L_81504C08
.L_81504C38:
/* 81504C38 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81504C3C | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 81504C40 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 81504C44 | 83 A1 00 24 */	lwz r29, 0x24(r1)
/* 81504C48 | 83 81 00 20 */	lwz r28, 0x20(r1)
/* 81504C4C | 7C 08 03 A6 */	mtlr r0
/* 81504C50 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81504C54 | 4E 80 00 20 */	blr
.endfn Update__Q44nw4r3snd6detail9SeqPlayerFv

# .text:0xFFC | 0x81504C58 | size: 0x58
# nw4r::snd::detail::SeqPlayer::UpdateAllPlayers()
.fn UpdateAllPlayers__Q44nw4r3snd6detail9SeqPlayerFv, global
/* 81504C58 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81504C5C | 7C 08 02 A6 */	mflr r0
/* 81504C60 | 3C 60 81 10 */	lis r3, "sPlayerList__Q44nw4r3snd6detail27@unnamed@snd_SeqPlayer_cpp@"@ha
/* 81504C64 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81504C68 | 38 63 5F 4C */	addi r3, r3, "sPlayerList__Q44nw4r3snd6detail27@unnamed@snd_SeqPlayer_cpp@"@l
/* 81504C6C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81504C70 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81504C74 | 3B C3 00 04 */	addi r30, r3, 0x4
/* 81504C78 | 83 E3 00 04 */	lwz r31, 0x4(r3)
/* 81504C7C | 48 00 00 14 */	b .L_81504C90
.L_81504C80:
/* 81504C80 | 7F E3 FB 78 */	mr r3, r31
/* 81504C84 | 83 FF 00 00 */	lwz r31, 0x0(r31)
/* 81504C88 | 38 63 FF 00 */	subi r3, r3, 0x100
/* 81504C8C | 4B FF FD C5 */	bl Update__Q44nw4r3snd6detail9SeqPlayerFv
.L_81504C90:
/* 81504C90 | 7C 1F F0 40 */	cmplw r31, r30
/* 81504C94 | 40 82 FF EC */	bne .L_81504C80
/* 81504C98 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81504C9C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81504CA0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81504CA4 | 7C 08 03 A6 */	mtlr r0
/* 81504CA8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81504CAC | 4E 80 00 20 */	blr
.endfn UpdateAllPlayers__Q44nw4r3snd6detail9SeqPlayerFv

# .text:0x1054 | 0x81504CB0 | size: 0x60
# nw4r::snd::detail::SeqPlayer::StopAllPlayers()
.fn StopAllPlayers__Q44nw4r3snd6detail9SeqPlayerFv, global
/* 81504CB0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81504CB4 | 7C 08 02 A6 */	mflr r0
/* 81504CB8 | 3C 60 81 10 */	lis r3, "sPlayerList__Q44nw4r3snd6detail27@unnamed@snd_SeqPlayer_cpp@"@ha
/* 81504CBC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81504CC0 | 38 63 5F 4C */	addi r3, r3, "sPlayerList__Q44nw4r3snd6detail27@unnamed@snd_SeqPlayer_cpp@"@l
/* 81504CC4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81504CC8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81504CCC | 3B C3 00 04 */	addi r30, r3, 0x4
/* 81504CD0 | 83 E3 00 04 */	lwz r31, 0x4(r3)
/* 81504CD4 | 48 00 00 1C */	b .L_81504CF0
.L_81504CD8:
/* 81504CD8 | 7F E3 FB 78 */	mr r3, r31
/* 81504CDC | 85 83 FF 00 */	lwzu r12, -0x100(r3)
/* 81504CE0 | 83 FF 00 00 */	lwz r31, 0x0(r31)
/* 81504CE4 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81504CE8 | 7D 89 03 A6 */	mtctr r12
/* 81504CEC | 4E 80 04 21 */	bctrl
.L_81504CF0:
/* 81504CF0 | 7C 1F F0 40 */	cmplw r31, r30
/* 81504CF4 | 40 82 FF E4 */	bne .L_81504CD8
/* 81504CF8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81504CFC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81504D00 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81504D04 | 7C 08 03 A6 */	mtlr r0
/* 81504D08 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81504D0C | 4E 80 00 20 */	blr
.endfn StopAllPlayers__Q44nw4r3snd6detail9SeqPlayerFv

# .text:0x10B4 | 0x81504D10 | size: 0x28
# nw4r::snd::detail::SeqPlayer::NoteOn(int, const nw4r::snd::detail::NoteOnInfo&)
.fn NoteOn__Q44nw4r3snd6detail9SeqPlayerFiRCQ44nw4r3snd6detail10NoteOnInfo, global
/* 81504D10 | 7C 67 1B 78 */	mr r7, r3
/* 81504D14 | 80 63 00 94 */	lwz r3, 0x94(r3)
/* 81504D18 | 7C 80 23 78 */	mr r0, r4
/* 81504D1C | 7C A6 2B 78 */	mr r6, r5
/* 81504D20 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81504D24 | 7C E4 3B 78 */	mr r4, r7
/* 81504D28 | 7C 05 03 78 */	mr r5, r0
/* 81504D2C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81504D30 | 7D 89 03 A6 */	mtctr r12
/* 81504D34 | 4E 80 04 20 */	bctr
.endfn NoteOn__Q44nw4r3snd6detail9SeqPlayerFiRCQ44nw4r3snd6detail10NoteOnInfo

# .text:0x10DC | 0x81504D38 | size: 0x4
# nw4r::snd::detail::SeqPlayer::ChannelCallback(nw4r::snd::detail::Channel*)
.fn ChannelCallback__Q44nw4r3snd6detail9SeqPlayerFPQ44nw4r3snd6detail7Channel, global
/* 81504D38 | 4E 80 00 20 */	blr
.endfn ChannelCallback__Q44nw4r3snd6detail9SeqPlayerFPQ44nw4r3snd6detail7Channel

# .text:0x10E0 | 0x81504D3C | size: 0x38
.fn "__sinit_\\snd_SeqPlayer_cpp", weak
/* 81504D3C | 3C C0 81 10 */	lis r6, "sPlayerList__Q44nw4r3snd6detail27@unnamed@snd_SeqPlayer_cpp@"@ha
/* 81504D40 | 38 00 00 00 */	li r0, 0x0
/* 81504D44 | 38 66 5F 4C */	addi r3, r6, "sPlayerList__Q44nw4r3snd6detail27@unnamed@snd_SeqPlayer_cpp@"@l
/* 81504D48 | 3C 80 81 50 */	lis r4, "__dt__Q34nw4r2ut42LinkList<Q44nw4r3snd6detail9SeqPlayer,256>Fv"@ha
/* 81504D4C | 90 03 00 04 */	stw r0, 0x4(r3)
/* 81504D50 | 38 E3 00 04 */	addi r7, r3, 0x4
/* 81504D54 | 3C A0 81 10 */	lis r5, lbl_81105F40@ha
/* 81504D58 | 38 84 4D 74 */	addi r4, r4, "__dt__Q34nw4r2ut42LinkList<Q44nw4r3snd6detail9SeqPlayer,256>Fv"@l
/* 81504D5C | 90 03 00 08 */	stw r0, 0x8(r3)
/* 81504D60 | 38 A5 5F 40 */	addi r5, r5, lbl_81105F40@l
/* 81504D64 | 90 06 5F 4C */	stw r0, "sPlayerList__Q44nw4r3snd6detail27@unnamed@snd_SeqPlayer_cpp@"@l(r6)
/* 81504D68 | 90 E3 00 04 */	stw r7, 0x4(r3)
/* 81504D6C | 90 E3 00 08 */	stw r7, 0x8(r3)
/* 81504D70 | 48 0F 42 70 */	b __register_global_object
.endfn "__sinit_\\snd_SeqPlayer_cpp"

# .text:0x1118 | 0x81504D74 | size: 0x58
# nw4r::ut::LinkList<nw4r::snd::detail::SeqPlayer, 256>::~LinkList()
.fn "__dt__Q34nw4r2ut42LinkList<Q44nw4r3snd6detail9SeqPlayer,256>Fv", weak
/* 81504D74 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81504D78 | 7C 08 02 A6 */	mflr r0
/* 81504D7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81504D80 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81504D84 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81504D88 | 7C 9F 23 78 */	mr r31, r4
/* 81504D8C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81504D90 | 7C 7E 1B 78 */	mr r30, r3
/* 81504D94 | 41 82 00 1C */	beq .L_81504DB0
/* 81504D98 | 38 80 00 00 */	li r4, 0x0
/* 81504D9C | 48 00 D5 C9 */	bl fn_81512364
/* 81504DA0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81504DA4 | 40 81 00 0C */	ble .L_81504DB0
/* 81504DA8 | 7F C3 F3 78 */	mr r3, r30
/* 81504DAC | 48 0F 33 39 */	bl __dl__FPv
.L_81504DB0:
/* 81504DB0 | 7F C3 F3 78 */	mr r3, r30
/* 81504DB4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81504DB8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81504DBC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81504DC0 | 7C 08 03 A6 */	mtlr r0
/* 81504DC4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81504DC8 | 4E 80 00 20 */	blr
.endfn "__dt__Q34nw4r2ut42LinkList<Q44nw4r3snd6detail9SeqPlayer,256>Fv"

# .text:0x1170 | 0x81504DCC | size: 0x8
.fn "@8@__dt__Q44nw4r3snd6detail9SeqPlayerFv", weak
/* 81504DCC | 38 63 FF F8 */	subi r3, r3, 0x8
/* 81504DD0 | 4B FF EE C4 */	b __dt__Q44nw4r3snd6detail9SeqPlayerFv
.endfn "@8@__dt__Q44nw4r3snd6detail9SeqPlayerFv"

# 0x8160D22C..0x8160D230 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte "__sinit_\\snd_SeqPlayer_cpp"

# 0x8166F7D8..0x8166F890 | size: 0xB8
.data
.balign 8

# .data:0x0 | 0x8166F7D8 | size: 0xB8
# nw4r::snd::detail::SeqPlayer::__vtable
.obj __vt__Q44nw4r3snd6detail9SeqPlayer, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q44nw4r3snd6detail9SeqPlayerFv
	.4byte Start__Q44nw4r3snd6detail9SeqPlayerFv
	.4byte Stop__Q44nw4r3snd6detail9SeqPlayerFv
	.4byte Pause__Q44nw4r3snd6detail9SeqPlayerFb
	.4byte IsActive__Q44nw4r3snd6detail9SeqPlayerCFv
	.4byte IsPrepared__Q44nw4r3snd6detail9SeqPlayerCFv
	.4byte IsStarted__Q44nw4r3snd6detail9SeqPlayerCFv
	.4byte IsPause__Q44nw4r3snd6detail9SeqPlayerCFv
	.4byte SetVolume__Q44nw4r3snd6detail9SeqPlayerFf
	.4byte SetPitch__Q44nw4r3snd6detail9SeqPlayerFf
	.4byte SetPan__Q44nw4r3snd6detail9SeqPlayerFf
	.4byte SetSurroundPan__Q44nw4r3snd6detail9SeqPlayerFf
	.4byte SetPan2__Q44nw4r3snd6detail9SeqPlayerFf
	.4byte SetSurroundPan2__Q44nw4r3snd6detail9SeqPlayerFf
	.4byte SetLpfFreq__Q44nw4r3snd6detail9SeqPlayerFf
	.4byte GetVolume__Q44nw4r3snd6detail9SeqPlayerCFv
	.4byte GetPitch__Q44nw4r3snd6detail9SeqPlayerCFv
	.4byte GetPan__Q44nw4r3snd6detail9SeqPlayerCFv
	.4byte GetSurroundPan__Q44nw4r3snd6detail9SeqPlayerCFv
	.4byte GetPan2__Q44nw4r3snd6detail9SeqPlayerCFv
	.4byte GetSurroundPan2__Q44nw4r3snd6detail9SeqPlayerCFv
	.4byte GetLpfFreq__Q44nw4r3snd6detail9SeqPlayerCFv
	.4byte SetOutputLine__Q44nw4r3snd6detail9SeqPlayerFi
	.4byte SetMainOutVolume__Q44nw4r3snd6detail9SeqPlayerFf
	.4byte SetMainSend__Q44nw4r3snd6detail9SeqPlayerFf
	.4byte SetFxSend__Q44nw4r3snd6detail9SeqPlayerFQ34nw4r3snd6AuxBusf
	.4byte SetRemoteOutVolume__Q44nw4r3snd6detail9SeqPlayerFif
	.4byte SetRemoteSend__Q44nw4r3snd6detail9SeqPlayerFif
	.4byte SetRemoteFxSend__Q44nw4r3snd6detail9SeqPlayerFif
	.4byte GetOutputLine__Q44nw4r3snd6detail9SeqPlayerCFv
	.4byte GetMainOutVolume__Q44nw4r3snd6detail9SeqPlayerCFv
	.4byte GetMainSend__Q44nw4r3snd6detail9SeqPlayerCFv
	.4byte GetFxSend__Q44nw4r3snd6detail9SeqPlayerCFQ34nw4r3snd6AuxBus
	.4byte GetRemoteOutVolume__Q44nw4r3snd6detail9SeqPlayerCFi
	.4byte GetRemoteSend__Q44nw4r3snd6detail9SeqPlayerCFi
	.4byte GetRemoteFxSend__Q44nw4r3snd6detail9SeqPlayerCFi
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@8@__dt__Q44nw4r3snd6detail9SeqPlayerFv"
	.4byte "@8@InvalidateData__Q44nw4r3snd6detail9SeqPlayerFPCvPCv"
	.4byte "@8@InvalidateWaveData__Q44nw4r3snd6detail9SeqPlayerFPCvPCv"
	.4byte InvalidateData__Q44nw4r3snd6detail9SeqPlayerFPCvPCv
	.4byte InvalidateWaveData__Q44nw4r3snd6detail9SeqPlayerFPCvPCv
	.4byte ChannelCallback__Q44nw4r3snd6detail9SeqPlayerFPQ44nw4r3snd6detail7Channel
.endobj __vt__Q44nw4r3snd6detail9SeqPlayer

# 0x81695348..0x81695358 | size: 0x10
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81695348 | size: 0x4
.obj lbl_81695348, global
	.float 1
.endobj lbl_81695348

# .sdata2:0x4 | 0x8169534C | size: 0x4
.obj lbl_8169534C, global
	.float 0
.endobj lbl_8169534C

# .sdata2:0x8 | 0x81695350 | size: 0x8
.obj lbl_81695350, global
	.double 4503599627370496
.endobj lbl_81695350
