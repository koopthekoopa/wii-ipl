.include "macros.inc"
.file "snd_WavePlayer.cpp"

# 0x81110980..0x81110998 | size: 0x18
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x81110980 | size: 0xC
.obj lbl_81110980, global
	.skip 0xC
.endobj lbl_81110980

# .bss:0xC | 0x8111098C | size: 0xC
# nw4r::snd::@unnamed@snd_WavePlayer_cpp@::sPlayerList
.obj "sPlayerList__Q34nw4r3snd28@unnamed@snd_WavePlayer_cpp@", global
	.skip 0xC
.endobj "sPlayerList__Q34nw4r3snd28@unnamed@snd_WavePlayer_cpp@"

# 0x8150F720..0x81510500 | size: 0xDE0
.text
.balign 4

# .text:0x0 | 0x8150F720 | size: 0x88
# nw4r::snd::WavePlayer::WavePlayer()
.fn __ct__Q34nw4r3snd10WavePlayerFv, global
/* 8150F720 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150F724 | 7C 08 02 A6 */	mflr r0
/* 8150F728 | 3C 80 81 67 */	lis r4, __vt__Q34nw4r3snd10WavePlayer@ha
/* 8150F72C | 38 A3 00 08 */	addi r5, r3, 0x8
/* 8150F730 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150F734 | 38 00 00 00 */	li r0, 0x0
/* 8150F738 | 38 84 FB 08 */	addi r4, r4, __vt__Q34nw4r3snd10WavePlayer@l
/* 8150F73C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150F740 | 7C 7F 1B 78 */	mr r31, r3
/* 8150F744 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 8150F748 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 8150F74C | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8150F750 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 8150F754 | 90 A3 00 08 */	stw r5, 0x8(r3)
/* 8150F758 | 90 A3 00 0C */	stw r5, 0xc(r3)
/* 8150F75C | 90 03 00 10 */	stw r0, 0x10(r3)
/* 8150F760 | 90 03 00 18 */	stw r0, 0x18(r3)
/* 8150F764 | 98 03 00 1C */	stb r0, 0x1c(r3)
/* 8150F768 | 98 03 00 1D */	stb r0, 0x1d(r3)
/* 8150F76C | 98 03 00 1E */	stb r0, 0x1e(r3)
/* 8150F770 | 98 03 00 1F */	stb r0, 0x1f(r3)
/* 8150F774 | 90 03 00 2C */	stw r0, 0x2c(r3)
/* 8150F778 | 90 03 00 28 */	stw r0, 0x28(r3)
/* 8150F77C | 90 03 00 8C */	stw r0, 0x8c(r3)
/* 8150F780 | 90 03 00 90 */	stw r0, 0x90(r3)
/* 8150F784 | 90 03 00 94 */	stw r0, 0x94(r3)
/* 8150F788 | 90 03 00 98 */	stw r0, 0x98(r3)
/* 8150F78C | 48 00 00 C5 */	bl InitParam__Q34nw4r3snd10WavePlayerFv
/* 8150F790 | 7F E3 FB 78 */	mr r3, r31
/* 8150F794 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8150F798 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150F79C | 7C 08 03 A6 */	mtlr r0
/* 8150F7A0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150F7A4 | 4E 80 00 20 */	blr
.endfn __ct__Q34nw4r3snd10WavePlayerFv

# .text:0x88 | 0x8150F7A8 | size: 0xA8
# nw4r::snd::WavePlayer::~WavePlayer()
.fn __dt__Q34nw4r3snd10WavePlayerFv, global
/* 8150F7A8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150F7AC | 7C 08 02 A6 */	mflr r0
/* 8150F7B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150F7B4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8150F7B8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8150F7BC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8150F7C0 | 7C 9E 23 78 */	mr r30, r4
/* 8150F7C4 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8150F7C8 | 7C 7D 1B 78 */	mr r29, r3
/* 8150F7CC | 41 82 00 64 */	beq .L_8150F830
/* 8150F7D0 | 3C 80 81 67 */	lis r4, __vt__Q34nw4r3snd10WavePlayer@ha
/* 8150F7D4 | 38 84 FB 08 */	addi r4, r4, __vt__Q34nw4r3snd10WavePlayer@l
/* 8150F7D8 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8150F7DC | 48 02 10 A9 */	bl OSDisableInterrupts
/* 8150F7E0 | 7C 7F 1B 78 */	mr r31, r3
/* 8150F7E4 | 7F A3 EB 78 */	mr r3, r29
/* 8150F7E8 | 48 00 03 E5 */	bl Stop__Q34nw4r3snd10WavePlayerFv
/* 8150F7EC | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8150F7F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150F7F4 | 41 82 00 08 */	beq .L_8150F7FC
/* 8150F7F8 | 4B FE 98 65 */	bl Free__Q44nw4r3snd6detail7AxVoiceFv
.L_8150F7FC:
/* 8150F7FC | 38 00 00 00 */	li r0, 0x0
/* 8150F800 | 7F E3 FB 78 */	mr r3, r31
/* 8150F804 | 90 1D 00 18 */	stw r0, 0x18(r29)
/* 8150F808 | 90 1D 00 10 */	stw r0, 0x10(r29)
/* 8150F80C | 48 02 10 A1 */	bl OSRestoreInterrupts
/* 8150F810 | 34 7D 00 04 */	addic. r3, r29, 0x4
/* 8150F814 | 41 82 00 0C */	beq .L_8150F820
/* 8150F818 | 38 80 00 00 */	li r4, 0x0
/* 8150F81C | 48 00 2B 49 */	bl fn_81512364
.L_8150F820:
/* 8150F820 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8150F824 | 40 81 00 0C */	ble .L_8150F830
/* 8150F828 | 7F A3 EB 78 */	mr r3, r29
/* 8150F82C | 48 0E 88 B9 */	bl __dl__FPv
.L_8150F830:
/* 8150F830 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8150F834 | 7F A3 EB 78 */	mr r3, r29
/* 8150F838 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8150F83C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8150F840 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150F844 | 7C 08 03 A6 */	mtlr r0
/* 8150F848 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150F84C | 4E 80 00 20 */	blr
.endfn __dt__Q34nw4r3snd10WavePlayerFv

# .text:0x130 | 0x8150F850 | size: 0x6C
# nw4r::snd::WavePlayer::InitParam()
.fn InitParam__Q34nw4r3snd10WavePlayerFv, global
/* 8150F850 | C0 02 8F F4 */	lfs f0, lbl_816953F4@sda21(r0)
/* 8150F854 | 38 00 00 01 */	li r0, 0x1
/* 8150F858 | C0 22 8F F0 */	lfs f1, lbl_816953F0@sda21(r0)
/* 8150F85C | D0 03 00 34 */	stfs f0, 0x34(r3)
/* 8150F860 | D0 23 00 30 */	stfs f1, 0x30(r3)
/* 8150F864 | D0 23 00 3C */	stfs f1, 0x3c(r3)
/* 8150F868 | D0 03 00 38 */	stfs f0, 0x38(r3)
/* 8150F86C | D0 03 00 40 */	stfs f0, 0x40(r3)
/* 8150F870 | 90 03 00 44 */	stw r0, 0x44(r3)
/* 8150F874 | D0 23 00 48 */	stfs f1, 0x48(r3)
/* 8150F878 | D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 8150F87C | D0 03 00 60 */	stfs f0, 0x60(r3)
/* 8150F880 | D0 03 00 64 */	stfs f0, 0x64(r3)
/* 8150F884 | D0 03 00 68 */	stfs f0, 0x68(r3)
/* 8150F888 | D0 23 00 4C */	stfs f1, 0x4c(r3)
/* 8150F88C | D0 03 00 6C */	stfs f0, 0x6c(r3)
/* 8150F890 | D0 03 00 7C */	stfs f0, 0x7c(r3)
/* 8150F894 | D0 23 00 50 */	stfs f1, 0x50(r3)
/* 8150F898 | D0 03 00 70 */	stfs f0, 0x70(r3)
/* 8150F89C | D0 03 00 80 */	stfs f0, 0x80(r3)
/* 8150F8A0 | D0 23 00 54 */	stfs f1, 0x54(r3)
/* 8150F8A4 | D0 03 00 74 */	stfs f0, 0x74(r3)
/* 8150F8A8 | D0 03 00 84 */	stfs f0, 0x84(r3)
/* 8150F8AC | D0 23 00 58 */	stfs f1, 0x58(r3)
/* 8150F8B0 | D0 03 00 78 */	stfs f0, 0x78(r3)
/* 8150F8B4 | D0 03 00 88 */	stfs f0, 0x88(r3)
/* 8150F8B8 | 4E 80 00 20 */	blr
.endfn InitParam__Q34nw4r3snd10WavePlayerFv

# .text:0x19C | 0x8150F8BC | size: 0x114
# nw4r::snd::WavePlayer::Setup(const nw4r::snd::WavePlayer::SetupParam&, void (*)(nw4r::snd::WavePlayer::WavePacketCallbackStatus, nw4r::snd::WavePlayer*, nw4r::snd::WavePlayer::WavePacket*, void*), void*)
.fn Setup__Q34nw4r3snd10WavePlayerFRCQ44nw4r3snd10WavePlayer10SetupParamPFQ44nw4r3snd10WavePlayer24WavePacketCallbackStatusPQ34nw4r3snd10WavePlayerPQ44nw4r3snd10WavePlayer10WavePacketPv_vPv, global
/* 8150F8BC | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8150F8C0 | 7C 08 02 A6 */	mflr r0
/* 8150F8C4 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8150F8C8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8150F8CC | 48 0E 9B ED */	bl _savegpr_25
/* 8150F8D0 | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 8150F8D4 | 7C 79 1B 78 */	mr r25, r3
/* 8150F8D8 | 7C 9A 23 78 */	mr r26, r4
/* 8150F8DC | 7C BB 2B 78 */	mr r27, r5
/* 8150F8E0 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8150F8E4 | 7C DC 33 78 */	mr r28, r6
/* 8150F8E8 | 40 81 00 0C */	ble .L_8150F8F4
/* 8150F8EC | 3B C0 00 02 */	li r30, 0x2
/* 8150F8F0 | 48 00 00 14 */	b .L_8150F904
.L_8150F8F4:
/* 8150F8F4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8150F8F8 | 3B C0 00 01 */	li r30, 0x1
/* 8150F8FC | 41 80 00 08 */	blt .L_8150F904
/* 8150F900 | 7C 1E 03 78 */	mr r30, r0
.L_8150F904:
/* 8150F904 | 80 04 00 10 */	lwz r0, 0x10(r4)
/* 8150F908 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 8150F90C | 40 81 00 0C */	ble .L_8150F918
/* 8150F910 | 3B A0 00 04 */	li r29, 0x4
/* 8150F914 | 48 00 00 14 */	b .L_8150F928
.L_8150F918:
/* 8150F918 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8150F91C | 3B A0 00 01 */	li r29, 0x1
/* 8150F920 | 41 80 00 08 */	blt .L_8150F928
/* 8150F924 | 7C 1D 03 78 */	mr r29, r0
.L_8150F928:
/* 8150F928 | 48 02 0F 5D */	bl OSDisableInterrupts
/* 8150F92C | 7C 7F 1B 78 */	mr r31, r3
/* 8150F930 | 7F 23 CB 78 */	mr r3, r25
/* 8150F934 | 48 00 02 99 */	bl Stop__Q34nw4r3snd10WavePlayerFv
/* 8150F938 | 80 79 00 18 */	lwz r3, 0x18(r25)
/* 8150F93C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150F940 | 41 82 00 08 */	beq .L_8150F948
/* 8150F944 | 4B FE 97 19 */	bl Free__Q44nw4r3snd6detail7AxVoiceFv
.L_8150F948:
/* 8150F948 | 38 00 00 00 */	li r0, 0x0
/* 8150F94C | 7F E3 FB 78 */	mr r3, r31
/* 8150F950 | 90 19 00 18 */	stw r0, 0x18(r25)
/* 8150F954 | 90 19 00 10 */	stw r0, 0x10(r25)
/* 8150F958 | 48 02 0F 55 */	bl OSRestoreInterrupts
/* 8150F95C | 4B FE 7C 71 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 8150F960 | 3C E0 81 51 */	lis r7, VoiceCallbackFunc__Q34nw4r3snd10WavePlayerFPQ44nw4r3snd6detail7AxVoiceQ54nw4r3snd6detail7AxVoice14CallbackStatusPv@ha
/* 8150F964 | 7F C4 F3 78 */	mr r4, r30
/* 8150F968 | 7F A5 EB 78 */	mr r5, r29
/* 8150F96C | 7F 28 CB 78 */	mr r8, r25
/* 8150F970 | 38 E7 FE 5C */	addi r7, r7, VoiceCallbackFunc__Q34nw4r3snd10WavePlayerFPQ44nw4r3snd6detail7AxVoiceQ54nw4r3snd6detail7AxVoice14CallbackStatusPv@l
/* 8150F974 | 38 C0 00 FF */	li r6, 0xff
/* 8150F978 | 4B FE 82 ED */	bl AllocVoice__Q44nw4r3snd6detail9AxManagerFiiiPFPQ44nw4r3snd6detail7AxVoiceQ54nw4r3snd6detail7AxVoice14CallbackStatusPv_vPv
/* 8150F97C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150F980 | 40 82 00 0C */	bne .L_8150F98C
/* 8150F984 | 38 60 00 00 */	li r3, 0x0
/* 8150F988 | 48 00 00 30 */	b .L_8150F9B8
.L_8150F98C:
/* 8150F98C | 80 9A 00 04 */	lwz r4, 0x4(r26)
/* 8150F990 | 80 1A 00 08 */	lwz r0, 0x8(r26)
/* 8150F994 | C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 8150F998 | 90 79 00 18 */	stw r3, 0x18(r25)
/* 8150F99C | 38 60 00 01 */	li r3, 0x1
/* 8150F9A0 | 93 D9 00 10 */	stw r30, 0x10(r25)
/* 8150F9A4 | 90 99 00 20 */	stw r4, 0x20(r25)
/* 8150F9A8 | 90 19 00 24 */	stw r0, 0x24(r25)
/* 8150F9AC | D0 19 00 14 */	stfs f0, 0x14(r25)
/* 8150F9B0 | 93 79 00 8C */	stw r27, 0x8c(r25)
/* 8150F9B4 | 93 99 00 90 */	stw r28, 0x90(r25)
.L_8150F9B8:
/* 8150F9B8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8150F9BC | 48 0E 9B 49 */	bl _restgpr_25
/* 8150F9C0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8150F9C4 | 7C 08 03 A6 */	mtlr r0
/* 8150F9C8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8150F9CC | 4E 80 00 20 */	blr
.endfn Setup__Q34nw4r3snd10WavePlayerFRCQ44nw4r3snd10WavePlayer10SetupParamPFQ44nw4r3snd10WavePlayer24WavePacketCallbackStatusPQ34nw4r3snd10WavePlayerPQ44nw4r3snd10WavePlayer10WavePacketPv_vPv

# .text:0x2B0 | 0x8150F9D0 | size: 0x10C
# nw4r::snd::WavePlayer::AppendWavePacket(nw4r::snd::WavePlayer::WavePacket*)
.fn AppendWavePacket__Q34nw4r3snd10WavePlayerFPQ44nw4r3snd10WavePlayer10WavePacket, global
/* 8150F9D0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8150F9D4 | 7C 08 02 A6 */	mflr r0
/* 8150F9D8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8150F9DC | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8150F9E0 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 8150F9E4 | 7C 9E 23 78 */	mr r30, r4
/* 8150F9E8 | 93 A1 00 24 */	stw r29, 0x24(r1)
/* 8150F9EC | 7C 7D 1B 78 */	mr r29, r3
/* 8150F9F0 | 88 04 00 14 */	lbz r0, 0x14(r4)
/* 8150F9F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150F9F8 | 41 82 00 0C */	beq .L_8150FA04
/* 8150F9FC | 38 60 00 00 */	li r3, 0x0
/* 8150FA00 | 48 00 00 C0 */	b .L_8150FAC0
.L_8150FA04:
/* 8150FA04 | 80 A4 00 04 */	lwz r5, 0x4(r4)
/* 8150FA08 | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 8150FA0C | 7C 05 00 00 */	cmpw r5, r0
/* 8150FA10 | 40 80 00 0C */	bge .L_8150FA1C
/* 8150FA14 | 38 60 00 00 */	li r3, 0x0
/* 8150FA18 | 48 00 00 A8 */	b .L_8150FAC0
.L_8150FA1C:
/* 8150FA1C | 80 03 00 20 */	lwz r0, 0x20(r3)
/* 8150FA20 | 80 84 00 10 */	lwz r4, 0x10(r4)
/* 8150FA24 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8150FA28 | 41 82 00 24 */	beq .L_8150FA4C
/* 8150FA2C | 40 80 00 18 */	bge .L_8150FA44
/* 8150FA30 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8150FA34 | 40 80 00 08 */	bge .L_8150FA3C
/* 8150FA38 | 48 00 00 0C */	b .L_8150FA44
.L_8150FA3C:
/* 8150FA3C | 54 84 F8 7E */	srwi r4, r4, 1
/* 8150FA40 | 48 00 00 0C */	b .L_8150FA4C
.L_8150FA44:
/* 8150FA44 | 38 60 00 00 */	li r3, 0x0
/* 8150FA48 | 48 00 00 78 */	b .L_8150FAC0
.L_8150FA4C:
/* 8150FA4C | 1C A4 03 E8 */	mulli r5, r4, 0x3e8
/* 8150FA50 | 3C 00 43 30 */	lis r0, 0x4330
/* 8150FA54 | 80 83 00 24 */	lwz r4, 0x24(r3)
/* 8150FA58 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 8150FA5C | 7C 05 23 96 */	divwu r0, r5, r4
/* 8150FA60 | C0 22 8F F8 */	lfs f1, lbl_816953F8@sda21(r0)
/* 8150FA64 | C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8150FA68 | C8 42 90 00 */	lfd f2, lbl_81695400@sda21(r0)
/* 8150FA6C | EC 01 00 32 */	fmuls f0, f1, f0
/* 8150FA70 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150FA74 | C8 21 00 10 */	lfd f1, 0x10(r1)
/* 8150FA78 | EC 21 10 28 */	fsubs f1, f1, f2
/* 8150FA7C | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8150FA80 | 40 80 00 0C */	bge .L_8150FA8C
/* 8150FA84 | 38 60 00 00 */	li r3, 0x0
/* 8150FA88 | 48 00 00 38 */	b .L_8150FAC0
.L_8150FA8C:
/* 8150FA8C | 48 02 0D F9 */	bl OSDisableInterrupts
/* 8150FA90 | 38 1D 00 08 */	addi r0, r29, 0x8
/* 8150FA94 | 7C 7F 1B 78 */	mr r31, r3
/* 8150FA98 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8150FA9C | 38 7D 00 04 */	addi r3, r29, 0x4
/* 8150FAA0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8150FAA4 | 38 BE 00 18 */	addi r5, r30, 0x18
/* 8150FAA8 | 48 00 29 CD */	bl fn_81512474
/* 8150FAAC | 38 00 00 01 */	li r0, 0x1
/* 8150FAB0 | 7F E3 FB 78 */	mr r3, r31
/* 8150FAB4 | 98 1E 00 14 */	stb r0, 0x14(r30)
/* 8150FAB8 | 48 02 0D F5 */	bl OSRestoreInterrupts
/* 8150FABC | 38 60 00 01 */	li r3, 0x1
.L_8150FAC0:
/* 8150FAC0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8150FAC4 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8150FAC8 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8150FACC | 83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8150FAD0 | 7C 08 03 A6 */	mtlr r0
/* 8150FAD4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8150FAD8 | 4E 80 00 20 */	blr
.endfn AppendWavePacket__Q34nw4r3snd10WavePlayerFPQ44nw4r3snd10WavePlayer10WavePacket

# .text:0x3BC | 0x8150FADC | size: 0xF0
# nw4r::snd::WavePlayer::Start()
.fn Start__Q34nw4r3snd10WavePlayerFv, global
/* 8150FADC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150FAE0 | 7C 08 02 A6 */	mflr r0
/* 8150FAE4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8150FAE8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8150FAEC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8150FAF0 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8150FAF4 | 7C 7D 1B 78 */	mr r29, r3
/* 8150FAF8 | 48 02 0D 8D */	bl OSDisableInterrupts
/* 8150FAFC | 88 1D 00 1F */	lbz r0, 0x1f(r29)
/* 8150FB00 | 7C 7F 1B 78 */	mr r31, r3
/* 8150FB04 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150FB08 | 41 82 00 50 */	beq .L_8150FB58
/* 8150FB0C | 48 02 0D 79 */	bl OSDisableInterrupts
/* 8150FB10 | 88 1D 00 1C */	lbz r0, 0x1c(r29)
/* 8150FB14 | 7C 7E 1B 78 */	mr r30, r3
/* 8150FB18 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150FB1C | 40 82 00 0C */	bne .L_8150FB28
/* 8150FB20 | 48 02 0D 8D */	bl OSRestoreInterrupts
/* 8150FB24 | 48 00 00 34 */	b .L_8150FB58
.L_8150FB28:
/* 8150FB28 | 88 1D 00 1F */	lbz r0, 0x1f(r29)
/* 8150FB2C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150FB30 | 40 82 00 0C */	bne .L_8150FB3C
/* 8150FB34 | 48 02 0D 79 */	bl OSRestoreInterrupts
/* 8150FB38 | 48 00 00 20 */	b .L_8150FB58
.L_8150FB3C:
/* 8150FB3C | 38 00 00 00 */	li r0, 0x0
/* 8150FB40 | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8150FB44 | 98 1D 00 1F */	stb r0, 0x1f(r29)
/* 8150FB48 | 38 80 00 00 */	li r4, 0x0
/* 8150FB4C | 4B FE 9A 59 */	bl Pause__Q44nw4r3snd6detail7AxVoiceFb
/* 8150FB50 | 7F C3 F3 78 */	mr r3, r30
/* 8150FB54 | 48 02 0D 59 */	bl OSRestoreInterrupts
.L_8150FB58:
/* 8150FB58 | 88 1D 00 1C */	lbz r0, 0x1c(r29)
/* 8150FB5C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150FB60 | 40 82 00 28 */	bne .L_8150FB88
/* 8150FB64 | 3C 60 81 11 */	lis r3, "sPlayerList__Q34nw4r3snd28@unnamed@snd_WavePlayer_cpp@"@ha
/* 8150FB68 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8150FB6C | 38 63 09 8C */	addi r3, r3, "sPlayerList__Q34nw4r3snd28@unnamed@snd_WavePlayer_cpp@"@l
/* 8150FB70 | 38 BD 00 94 */	addi r5, r29, 0x94
/* 8150FB74 | 38 03 00 04 */	addi r0, r3, 0x4
/* 8150FB78 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8150FB7C | 48 00 28 F9 */	bl fn_81512474
/* 8150FB80 | 38 00 00 01 */	li r0, 0x1
/* 8150FB84 | 98 1D 00 1C */	stb r0, 0x1c(r29)
.L_8150FB88:
/* 8150FB88 | 80 1D 00 04 */	lwz r0, 0x4(r29)
/* 8150FB8C | 38 60 00 00 */	li r3, 0x0
/* 8150FB90 | 90 7D 00 2C */	stw r3, 0x2c(r29)
/* 8150FB94 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150FB98 | 90 7D 00 28 */	stw r3, 0x28(r29)
/* 8150FB9C | 41 82 00 0C */	beq .L_8150FBA8
/* 8150FBA0 | 7F A3 EB 78 */	mr r3, r29
/* 8150FBA4 | 48 00 01 99 */	bl StartVoice__Q34nw4r3snd10WavePlayerFv
.L_8150FBA8:
/* 8150FBA8 | 7F E3 FB 78 */	mr r3, r31
/* 8150FBAC | 48 02 0D 01 */	bl OSRestoreInterrupts
/* 8150FBB0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150FBB4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8150FBB8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8150FBBC | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8150FBC0 | 7C 08 03 A6 */	mtlr r0
/* 8150FBC4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150FBC8 | 4E 80 00 20 */	blr
.endfn Start__Q34nw4r3snd10WavePlayerFv

# .text:0x4AC | 0x8150FBCC | size: 0xEC
# nw4r::snd::WavePlayer::Stop()
.fn Stop__Q34nw4r3snd10WavePlayerFv, global
/* 8150FBCC | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8150FBD0 | 7C 08 02 A6 */	mflr r0
/* 8150FBD4 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8150FBD8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8150FBDC | 48 0E 98 E1 */	bl _savegpr_26
/* 8150FBE0 | 7C 7A 1B 78 */	mr r26, r3
/* 8150FBE4 | 48 02 0C A1 */	bl OSDisableInterrupts
/* 8150FBE8 | 88 1A 00 1C */	lbz r0, 0x1c(r26)
/* 8150FBEC | 7C 7F 1B 78 */	mr r31, r3
/* 8150FBF0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150FBF4 | 41 82 00 1C */	beq .L_8150FC10
/* 8150FBF8 | 3C 60 81 11 */	lis r3, "sPlayerList__Q34nw4r3snd28@unnamed@snd_WavePlayer_cpp@"@ha
/* 8150FBFC | 38 9A 00 94 */	addi r4, r26, 0x94
/* 8150FC00 | 38 63 09 8C */	addi r3, r3, "sPlayerList__Q34nw4r3snd28@unnamed@snd_WavePlayer_cpp@"@l
/* 8150FC04 | 48 00 28 9D */	bl fn_815124A0
/* 8150FC08 | 38 00 00 00 */	li r0, 0x0
/* 8150FC0C | 98 1A 00 1C */	stb r0, 0x1c(r26)
.L_8150FC10:
/* 8150FC10 | 48 02 0C 75 */	bl OSDisableInterrupts
/* 8150FC14 | 80 1A 00 18 */	lwz r0, 0x18(r26)
/* 8150FC18 | 7C 7E 1B 78 */	mr r30, r3
/* 8150FC1C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150FC20 | 41 82 00 0C */	beq .L_8150FC2C
/* 8150FC24 | 7C 03 03 78 */	mr r3, r0
/* 8150FC28 | 4B FE 98 8D */	bl Stop__Q44nw4r3snd6detail7AxVoiceFv
.L_8150FC2C:
/* 8150FC2C | 3B 60 00 00 */	li r27, 0x0
/* 8150FC30 | 7F C3 F3 78 */	mr r3, r30
/* 8150FC34 | 9B 7A 00 1D */	stb r27, 0x1d(r26)
/* 8150FC38 | 48 02 0C 75 */	bl OSRestoreInterrupts
/* 8150FC3C | 83 DA 00 08 */	lwz r30, 0x8(r26)
/* 8150FC40 | 3B BA 00 08 */	addi r29, r26, 0x8
/* 8150FC44 | 48 00 00 44 */	b .L_8150FC88
.L_8150FC48:
/* 8150FC48 | 7F DC F3 78 */	mr r28, r30
/* 8150FC4C | 83 DE 00 00 */	lwz r30, 0x0(r30)
/* 8150FC50 | 38 7A 00 04 */	addi r3, r26, 0x4
/* 8150FC54 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8150FC58 | 9B 7C FF FC */	stb r27, -0x4(r28)
/* 8150FC5C | 93 81 00 08 */	stw r28, 0x8(r1)
/* 8150FC60 | 48 00 27 89 */	bl fn_815123E8
/* 8150FC64 | 81 9A 00 8C */	lwz r12, 0x8c(r26)
/* 8150FC68 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 8150FC6C | 41 82 00 1C */	beq .L_8150FC88
/* 8150FC70 | 7F 44 D3 78 */	mr r4, r26
/* 8150FC74 | 38 BC FF E8 */	subi r5, r28, 0x18
/* 8150FC78 | 80 DA 00 90 */	lwz r6, 0x90(r26)
/* 8150FC7C | 38 60 00 01 */	li r3, 0x1
/* 8150FC80 | 7D 89 03 A6 */	mtctr r12
/* 8150FC84 | 4E 80 04 21 */	bctrl
.L_8150FC88:
/* 8150FC88 | 7C 1E E8 40 */	cmplw r30, r29
/* 8150FC8C | 40 82 FF BC */	bne .L_8150FC48
/* 8150FC90 | 38 00 00 00 */	li r0, 0x0
/* 8150FC94 | 7F E3 FB 78 */	mr r3, r31
/* 8150FC98 | 98 1A 00 1F */	stb r0, 0x1f(r26)
/* 8150FC9C | 48 02 0C 11 */	bl OSRestoreInterrupts
/* 8150FCA0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8150FCA4 | 48 0E 98 65 */	bl _restgpr_26
/* 8150FCA8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8150FCAC | 7C 08 03 A6 */	mtlr r0
/* 8150FCB0 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8150FCB4 | 4E 80 00 20 */	blr
.endfn Stop__Q34nw4r3snd10WavePlayerFv

# .text:0x598 | 0x8150FCB8 | size: 0x84
# nw4r::snd::WavePlayer::Pause(bool)
.fn Pause__Q34nw4r3snd10WavePlayerFb, global
/* 8150FCB8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150FCBC | 7C 08 02 A6 */	mflr r0
/* 8150FCC0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8150FCC4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8150FCC8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8150FCCC | 7C 9E 23 78 */	mr r30, r4
/* 8150FCD0 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8150FCD4 | 7C 7D 1B 78 */	mr r29, r3
/* 8150FCD8 | 48 02 0B AD */	bl OSDisableInterrupts
/* 8150FCDC | 88 1D 00 1C */	lbz r0, 0x1c(r29)
/* 8150FCE0 | 7C 7F 1B 78 */	mr r31, r3
/* 8150FCE4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150FCE8 | 40 82 00 0C */	bne .L_8150FCF4
/* 8150FCEC | 48 02 0B C1 */	bl OSRestoreInterrupts
/* 8150FCF0 | 48 00 00 30 */	b .L_8150FD20
.L_8150FCF4:
/* 8150FCF4 | 88 1D 00 1F */	lbz r0, 0x1f(r29)
/* 8150FCF8 | 7C 00 F0 40 */	cmplw r0, r30
/* 8150FCFC | 40 82 00 0C */	bne .L_8150FD08
/* 8150FD00 | 48 02 0B AD */	bl OSRestoreInterrupts
/* 8150FD04 | 48 00 00 1C */	b .L_8150FD20
.L_8150FD08:
/* 8150FD08 | 9B DD 00 1F */	stb r30, 0x1f(r29)
/* 8150FD0C | 57 C4 06 3E */	clrlwi r4, r30, 24
/* 8150FD10 | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8150FD14 | 4B FE 98 91 */	bl Pause__Q44nw4r3snd6detail7AxVoiceFb
/* 8150FD18 | 7F E3 FB 78 */	mr r3, r31
/* 8150FD1C | 48 02 0B 91 */	bl OSRestoreInterrupts
.L_8150FD20:
/* 8150FD20 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150FD24 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8150FD28 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8150FD2C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8150FD30 | 7C 08 03 A6 */	mtlr r0
/* 8150FD34 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150FD38 | 4E 80 00 20 */	blr
.endfn Pause__Q34nw4r3snd10WavePlayerFb

# .text:0x61C | 0x8150FD3C | size: 0x120
# nw4r::snd::WavePlayer::StartVoice()
.fn StartVoice__Q34nw4r3snd10WavePlayerFv, global
/* 8150FD3C | 94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8150FD40 | 7C 08 02 A6 */	mflr r0
/* 8150FD44 | 90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8150FD48 | 93 E1 00 AC */	stw r31, 0xac(r1)
/* 8150FD4C | 93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 8150FD50 | 93 A1 00 A4 */	stw r29, 0xa4(r1)
/* 8150FD54 | 7C 7D 1B 78 */	mr r29, r3
/* 8150FD58 | 48 02 0B 2D */	bl OSDisableInterrupts
/* 8150FD5C | 80 1D 00 20 */	lwz r0, 0x20(r29)
/* 8150FD60 | 7C 7F 1B 78 */	mr r31, r3
/* 8150FD64 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 8150FD68 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8150FD6C | 3B C3 FF E8 */	subi r30, r3, 0x18
/* 8150FD70 | 41 82 00 24 */	beq .L_8150FD94
/* 8150FD74 | 40 80 00 30 */	bge .L_8150FDA4
/* 8150FD78 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8150FD7C | 40 80 00 08 */	bge .L_8150FD84
/* 8150FD80 | 48 00 00 24 */	b .L_8150FDA4
.L_8150FD84:
/* 8150FD84 | 38 00 00 01 */	li r0, 0x1
/* 8150FD88 | 38 80 00 0A */	li r4, 0xa
/* 8150FD8C | 98 01 00 08 */	stb r0, 0x8(r1)
/* 8150FD90 | 48 00 00 20 */	b .L_8150FDB0
.L_8150FD94:
/* 8150FD94 | 38 00 00 00 */	li r0, 0x0
/* 8150FD98 | 38 80 00 19 */	li r4, 0x19
/* 8150FD9C | 98 01 00 08 */	stb r0, 0x8(r1)
/* 8150FDA0 | 48 00 00 10 */	b .L_8150FDB0
.L_8150FDA4:
/* 8150FDA4 | 7F E3 FB 78 */	mr r3, r31
/* 8150FDA8 | 48 02 0B 05 */	bl OSRestoreInterrupts
/* 8150FDAC | 48 00 00 94 */	b .L_8150FE40
.L_8150FDB0:
/* 8150FDB0 | 38 60 00 00 */	li r3, 0x0
/* 8150FDB4 | 98 61 00 09 */	stb r3, 0x9(r1)
/* 8150FDB8 | 80 1D 00 10 */	lwz r0, 0x10(r29)
/* 8150FDBC | 98 01 00 0A */	stb r0, 0xa(r1)
/* 8150FDC0 | 80 1D 00 24 */	lwz r0, 0x24(r29)
/* 8150FDC4 | 54 00 04 3E */	clrlwi r0, r0, 16
/* 8150FDC8 | 90 61 00 10 */	stw r3, 0x10(r1)
/* 8150FDCC | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8150FDD0 | 80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8150FDD4 | 4B FE B1 B1 */	bl GetSampleByByte__Q44nw4r3snd6detail7AxVoiceFUlQ54nw4r3snd6detail7AxVoice6Format
/* 8150FDD8 | 90 61 00 14 */	stw r3, 0x14(r1)
/* 8150FDDC | 38 61 00 08 */	addi r3, r1, 0x8
/* 8150FDE0 | 38 80 00 00 */	li r4, 0x0
/* 8150FDE4 | 48 00 00 18 */	b .L_8150FDFC
.L_8150FDE8:
/* 8150FDE8 | 80 1E 00 08 */	lwz r0, 0x8(r30)
/* 8150FDEC | 3B DE 00 04 */	addi r30, r30, 0x4
/* 8150FDF0 | 38 84 00 01 */	addi r4, r4, 0x1
/* 8150FDF4 | 90 03 00 10 */	stw r0, 0x10(r3)
/* 8150FDF8 | 38 63 00 44 */	addi r3, r3, 0x44
.L_8150FDFC:
/* 8150FDFC | 80 1D 00 10 */	lwz r0, 0x10(r29)
/* 8150FE00 | 7C 04 00 00 */	cmpw r4, r0
/* 8150FE04 | 41 80 FF E4 */	blt .L_8150FDE8
/* 8150FE08 | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8150FE0C | 38 81 00 08 */	addi r4, r1, 0x8
/* 8150FE10 | 4B FE 93 1D */	bl Setup__Q44nw4r3snd6detail7AxVoiceFRCQ44nw4r3snd6detail8WaveData
/* 8150FE14 | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8150FE18 | 4B FE 96 51 */	bl Start__Q44nw4r3snd6detail7AxVoiceFv
/* 8150FE1C | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8150FE20 | 88 9D 00 1F */	lbz r4, 0x1f(r29)
/* 8150FE24 | 4B FE 97 81 */	bl Pause__Q44nw4r3snd6detail7AxVoiceFb
/* 8150FE28 | 38 60 00 01 */	li r3, 0x1
/* 8150FE2C | 38 00 00 00 */	li r0, 0x0
/* 8150FE30 | 98 7D 00 1D */	stb r3, 0x1d(r29)
/* 8150FE34 | 7F E3 FB 78 */	mr r3, r31
/* 8150FE38 | 98 1D 00 1E */	stb r0, 0x1e(r29)
/* 8150FE3C | 48 02 0A 71 */	bl OSRestoreInterrupts
.L_8150FE40:
/* 8150FE40 | 80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8150FE44 | 83 E1 00 AC */	lwz r31, 0xac(r1)
/* 8150FE48 | 83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 8150FE4C | 83 A1 00 A4 */	lwz r29, 0xa4(r1)
/* 8150FE50 | 7C 08 03 A6 */	mtlr r0
/* 8150FE54 | 38 21 00 B0 */	addi r1, r1, 0xb0
/* 8150FE58 | 4E 80 00 20 */	blr
.endfn StartVoice__Q34nw4r3snd10WavePlayerFv

# .text:0x73C | 0x8150FE5C | size: 0x114
# nw4r::snd::WavePlayer::VoiceCallbackFunc(nw4r::snd::detail::AxVoice*, nw4r::snd::detail::AxVoice::CallbackStatus, void*)
.fn VoiceCallbackFunc__Q34nw4r3snd10WavePlayerFPQ44nw4r3snd6detail7AxVoiceQ54nw4r3snd6detail7AxVoice14CallbackStatusPv, global
/* 8150FE5C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150FE60 | 7C 08 02 A6 */	mflr r0
/* 8150FE64 | 2C 04 00 02 */	cmpwi r4, 0x2
/* 8150FE68 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8150FE6C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8150FE70 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8150FE74 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8150FE78 | 7C BD 2B 78 */	mr r29, r5
/* 8150FE7C | 40 80 00 10 */	bge .L_8150FE8C
/* 8150FE80 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8150FE84 | 40 80 00 14 */	bge .L_8150FE98
/* 8150FE88 | 48 00 00 CC */	b .L_8150FF54
.L_8150FE8C:
/* 8150FE8C | 2C 04 00 04 */	cmpwi r4, 0x4
/* 8150FE90 | 40 80 00 C4 */	bge .L_8150FF54
/* 8150FE94 | 48 00 00 84 */	b .L_8150FF18
.L_8150FE98:
/* 8150FE98 | 48 02 09 ED */	bl OSDisableInterrupts
/* 8150FE9C | 80 1D 00 18 */	lwz r0, 0x18(r29)
/* 8150FEA0 | 7C 7F 1B 78 */	mr r31, r3
/* 8150FEA4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150FEA8 | 41 82 00 0C */	beq .L_8150FEB4
/* 8150FEAC | 7C 03 03 78 */	mr r3, r0
/* 8150FEB0 | 4B FE 96 05 */	bl Stop__Q44nw4r3snd6detail7AxVoiceFv
.L_8150FEB4:
/* 8150FEB4 | 3B C0 00 00 */	li r30, 0x0
/* 8150FEB8 | 7F E3 FB 78 */	mr r3, r31
/* 8150FEBC | 9B DD 00 1D */	stb r30, 0x1d(r29)
/* 8150FEC0 | 48 02 09 ED */	bl OSRestoreInterrupts
/* 8150FEC4 | 80 1D 00 04 */	lwz r0, 0x4(r29)
/* 8150FEC8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150FECC | 41 82 00 88 */	beq .L_8150FF54
/* 8150FED0 | 80 BD 00 08 */	lwz r5, 0x8(r29)
/* 8150FED4 | 38 7D 00 04 */	addi r3, r29, 0x4
/* 8150FED8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8150FEDC | 9B C5 FF FC */	stb r30, -0x4(r5)
/* 8150FEE0 | 3B E5 FF E8 */	subi r31, r5, 0x18
/* 8150FEE4 | 80 1D 00 08 */	lwz r0, 0x8(r29)
/* 8150FEE8 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8150FEEC | 48 00 24 FD */	bl fn_815123E8
/* 8150FEF0 | 81 9D 00 8C */	lwz r12, 0x8c(r29)
/* 8150FEF4 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 8150FEF8 | 41 82 00 5C */	beq .L_8150FF54
/* 8150FEFC | 7F A4 EB 78 */	mr r4, r29
/* 8150FF00 | 7F E5 FB 78 */	mr r5, r31
/* 8150FF04 | 80 DD 00 90 */	lwz r6, 0x90(r29)
/* 8150FF08 | 38 60 00 00 */	li r3, 0x0
/* 8150FF0C | 7D 89 03 A6 */	mtctr r12
/* 8150FF10 | 4E 80 04 21 */	bctrl
/* 8150FF14 | 48 00 00 40 */	b .L_8150FF54
.L_8150FF18:
/* 8150FF18 | 38 00 00 00 */	li r0, 0x0
/* 8150FF1C | 90 05 00 18 */	stw r0, 0x18(r5)
/* 8150FF20 | 48 02 09 65 */	bl OSDisableInterrupts
/* 8150FF24 | 7C 7F 1B 78 */	mr r31, r3
/* 8150FF28 | 7F A3 EB 78 */	mr r3, r29
/* 8150FF2C | 4B FF FC A1 */	bl Stop__Q34nw4r3snd10WavePlayerFv
/* 8150FF30 | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8150FF34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150FF38 | 41 82 00 08 */	beq .L_8150FF40
/* 8150FF3C | 4B FE 91 21 */	bl Free__Q44nw4r3snd6detail7AxVoiceFv
.L_8150FF40:
/* 8150FF40 | 38 00 00 00 */	li r0, 0x0
/* 8150FF44 | 7F E3 FB 78 */	mr r3, r31
/* 8150FF48 | 90 1D 00 18 */	stw r0, 0x18(r29)
/* 8150FF4C | 90 1D 00 10 */	stw r0, 0x10(r29)
/* 8150FF50 | 48 02 09 5D */	bl OSRestoreInterrupts
.L_8150FF54:
/* 8150FF54 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150FF58 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8150FF5C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8150FF60 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8150FF64 | 7C 08 03 A6 */	mtlr r0
/* 8150FF68 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150FF6C | 4E 80 00 20 */	blr
.endfn VoiceCallbackFunc__Q34nw4r3snd10WavePlayerFPQ44nw4r3snd6detail7AxVoiceQ54nw4r3snd6detail7AxVoice14CallbackStatusPv

# .text:0x850 | 0x8150FF70 | size: 0xD8
# nw4r::snd::WavePlayer::IsNextWavePacket() const
.fn IsNextWavePacket__Q34nw4r3snd10WavePlayerCFv, global
/* 8150FF70 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150FF74 | 7C 08 02 A6 */	mflr r0
/* 8150FF78 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8150FF7C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8150FF80 | 48 0E 95 41 */	bl _savegpr_27
/* 8150FF84 | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 8150FF88 | 7C 7B 1B 78 */	mr r27, r3
/* 8150FF8C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150FF90 | 40 82 00 0C */	bne .L_8150FF9C
/* 8150FF94 | 38 60 00 00 */	li r3, 0x0
/* 8150FF98 | 48 00 00 98 */	b .L_81510030
.L_8150FF9C:
/* 8150FF9C | 7C 03 03 78 */	mr r3, r0
/* 8150FFA0 | 4B FE 9B 8D */	bl IsPlayFinished__Q44nw4r3snd6detail7AxVoiceCFv
/* 8150FFA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150FFA8 | 41 82 00 0C */	beq .L_8150FFB4
/* 8150FFAC | 38 60 00 00 */	li r3, 0x0
/* 8150FFB0 | 48 00 00 80 */	b .L_81510030
.L_8150FFB4:
/* 8150FFB4 | 80 1B 00 04 */	lwz r0, 0x4(r27)
/* 8150FFB8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150FFBC | 40 82 00 0C */	bne .L_8150FFC8
/* 8150FFC0 | 38 60 00 00 */	li r3, 0x0
/* 8150FFC4 | 48 00 00 6C */	b .L_81510030
.L_8150FFC8:
/* 8150FFC8 | 83 BB 00 08 */	lwz r29, 0x8(r27)
/* 8150FFCC | 80 7B 00 18 */	lwz r3, 0x18(r27)
/* 8150FFD0 | 4B FE 9A A9 */	bl GetCurrentPlayingDspAddress__Q44nw4r3snd6detail7AxVoiceCFv
/* 8150FFD4 | 80 9B 00 18 */	lwz r4, 0x18(r27)
/* 8150FFD8 | 7C 7E 1B 78 */	mr r30, r3
/* 8150FFDC | 80 7D FF F8 */	lwz r3, -0x8(r29)
/* 8150FFE0 | 83 84 01 18 */	lwz r28, 0x118(r4)
/* 8150FFE4 | 7F 84 E3 78 */	mr r4, r28
/* 8150FFE8 | 4B FE AF 9D */	bl GetSampleByByte__Q44nw4r3snd6detail7AxVoiceFUlQ54nw4r3snd6detail7AxVoice6Format
/* 8150FFEC | 7C 7B 1B 78 */	mr r27, r3
/* 8150FFF0 | 80 7D FF F0 */	lwz r3, -0x10(r29)
/* 8150FFF4 | 7F 85 E3 78 */	mr r5, r28
/* 8150FFF8 | 38 80 00 00 */	li r4, 0x0
/* 8150FFFC | 4B FE AE 95 */	bl GetDspAddressBySample__Q44nw4r3snd6detail7AxVoiceFPCvUlQ54nw4r3snd6detail7AxVoice6Format
/* 81510000 | 7C 7F 1B 78 */	mr r31, r3
/* 81510004 | 80 7D FF F0 */	lwz r3, -0x10(r29)
/* 81510008 | 7F 64 DB 78 */	mr r4, r27
/* 8151000C | 7F 85 E3 78 */	mr r5, r28
/* 81510010 | 4B FE AE 81 */	bl GetDspAddressBySample__Q44nw4r3snd6detail7AxVoiceFPCvUlQ54nw4r3snd6detail7AxVoice6Format
/* 81510014 | 7C 1E F8 40 */	cmplw r30, r31
/* 81510018 | 41 80 00 0C */	blt .L_81510024
/* 8151001C | 7C 03 F0 40 */	cmplw r3, r30
/* 81510020 | 41 81 00 0C */	bgt .L_8151002C
.L_81510024:
/* 81510024 | 38 60 00 01 */	li r3, 0x1
/* 81510028 | 48 00 00 08 */	b .L_81510030
.L_8151002C:
/* 8151002C | 38 60 00 00 */	li r3, 0x0
.L_81510030:
/* 81510030 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81510034 | 48 0E 94 D9 */	bl _restgpr_27
/* 81510038 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8151003C | 7C 08 03 A6 */	mtlr r0
/* 81510040 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81510044 | 4E 80 00 20 */	blr
.endfn IsNextWavePacket__Q34nw4r3snd10WavePlayerCFv

# .text:0x928 | 0x81510048 | size: 0x128
# nw4r::snd::WavePlayer::UpdateWavePacket()
.fn UpdateWavePacket__Q34nw4r3snd10WavePlayerFv, global
/* 81510048 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8151004C | 7C 08 02 A6 */	mflr r0
/* 81510050 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81510054 | 38 00 00 00 */	li r0, 0x0
/* 81510058 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8151005C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81510060 | 7C 7F 1B 78 */	mr r31, r3
/* 81510064 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81510068 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8151006C | 93 81 00 10 */	stw r28, 0x10(r1)
/* 81510070 | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 81510074 | 98 05 FF FC */	stb r0, -0x4(r5)
/* 81510078 | 3B C5 FF E8 */	subi r30, r5, 0x18
/* 8151007C | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 81510080 | 38 63 00 04 */	addi r3, r3, 0x4
/* 81510084 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81510088 | 48 00 23 61 */	bl fn_815123E8
/* 8151008C | 80 1F 00 20 */	lwz r0, 0x20(r31)
/* 81510090 | 80 9E 00 10 */	lwz r4, 0x10(r30)
/* 81510094 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81510098 | 40 82 00 08 */	bne .L_815100A0
/* 8151009C | 54 84 F8 7E */	srwi r4, r4, 1
.L_815100A0:
/* 815100A0 | 80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 815100A4 | 38 60 00 00 */	li r3, 0x0
/* 815100A8 | 81 9F 00 8C */	lwz r12, 0x8c(r31)
/* 815100AC | 7C 00 20 14 */	addc r0, r0, r4
/* 815100B0 | 80 9F 00 28 */	lwz r4, 0x28(r31)
/* 815100B4 | 90 1F 00 2C */	stw r0, 0x2c(r31)
/* 815100B8 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 815100BC | 7C 04 19 14 */	adde r0, r4, r3
/* 815100C0 | 90 1F 00 28 */	stw r0, 0x28(r31)
/* 815100C4 | 41 82 00 1C */	beq .L_815100E0
/* 815100C8 | 7F E4 FB 78 */	mr r4, r31
/* 815100CC | 7F C5 F3 78 */	mr r5, r30
/* 815100D0 | 80 DF 00 90 */	lwz r6, 0x90(r31)
/* 815100D4 | 38 60 00 00 */	li r3, 0x0
/* 815100D8 | 7D 89 03 A6 */	mtctr r12
/* 815100DC | 4E 80 04 21 */	bctrl
.L_815100E0:
/* 815100E0 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 815100E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 815100E8 | 41 82 00 60 */	beq .L_81510148
/* 815100EC | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 815100F0 | 80 9F 00 18 */	lwz r4, 0x18(r31)
/* 815100F4 | 3B C3 FF E8 */	subi r30, r3, 0x18
/* 815100F8 | 80 63 FF F8 */	lwz r3, -0x8(r3)
/* 815100FC | 80 84 01 18 */	lwz r4, 0x118(r4)
/* 81510100 | 4B FE AE 85 */	bl GetSampleByByte__Q44nw4r3snd6detail7AxVoiceFUlQ54nw4r3snd6detail7AxVoice6Format
/* 81510104 | 7C 7D 1B 78 */	mr r29, r3
/* 81510108 | 3B 80 00 00 */	li r28, 0x0
/* 8151010C | 48 00 00 30 */	b .L_8151013C
.L_81510110:
/* 81510110 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 81510114 | 7F 84 E3 78 */	mr r4, r28
/* 81510118 | 80 BE 00 08 */	lwz r5, 0x8(r30)
/* 8151011C | 4B FE 99 BD */	bl SetBaseAddress__Q44nw4r3snd6detail7AxVoiceFiPCv
/* 81510120 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 81510124 | 7F 84 E3 78 */	mr r4, r28
/* 81510128 | 80 BE 00 08 */	lwz r5, 0x8(r30)
/* 8151012C | 7F A6 EB 78 */	mr r6, r29
/* 81510130 | 4B FE A2 69 */	bl StopAtPoint__Q44nw4r3snd6detail7AxVoiceFiPCvUl
/* 81510134 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 81510138 | 3B 9C 00 01 */	addi r28, r28, 0x1
.L_8151013C:
/* 8151013C | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 81510140 | 7C 1C 00 00 */	cmpw r28, r0
/* 81510144 | 41 80 FF CC */	blt .L_81510110
.L_81510148:
/* 81510148 | 38 00 00 00 */	li r0, 0x0
/* 8151014C | 98 1F 00 1E */	stb r0, 0x1e(r31)
/* 81510150 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81510154 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81510158 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8151015C | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 81510160 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81510164 | 7C 08 03 A6 */	mtlr r0
/* 81510168 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8151016C | 4E 80 00 20 */	blr
.endfn UpdateWavePacket__Q34nw4r3snd10WavePlayerFv

# .text:0xA50 | 0x81510170 | size: 0x10C
# nw4r::snd::WavePlayer::detail_UpdateBufferAllPlayers()
.fn detail_UpdateBufferAllPlayers__Q34nw4r3snd10WavePlayerFv, global
/* 81510170 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81510174 | 7C 08 02 A6 */	mflr r0
/* 81510178 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8151017C | 39 61 00 30 */	addi r11, r1, 0x30
/* 81510180 | 48 0E 93 39 */	bl _savegpr_25
/* 81510184 | 3C 60 81 11 */	lis r3, "sPlayerList__Q34nw4r3snd28@unnamed@snd_WavePlayer_cpp@"@ha
/* 81510188 | 3B A0 00 01 */	li r29, 0x1
/* 8151018C | 38 63 09 8C */	addi r3, r3, "sPlayerList__Q34nw4r3snd28@unnamed@snd_WavePlayer_cpp@"@l
/* 81510190 | 83 E3 00 04 */	lwz r31, 0x4(r3)
/* 81510194 | 3B C3 00 04 */	addi r30, r3, 0x4
/* 81510198 | 48 00 00 C4 */	b .L_8151025C
.L_8151019C:
/* 8151019C | 7F E3 FB 78 */	mr r3, r31
/* 815101A0 | 83 FF 00 00 */	lwz r31, 0x0(r31)
/* 815101A4 | 88 03 FF 89 */	lbz r0, -0x77(r3)
/* 815101A8 | 3B 63 FF 6C */	subi r27, r3, 0x94
/* 815101AC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 815101B0 | 41 82 00 98 */	beq .L_81510248
/* 815101B4 | 7F 63 DB 78 */	mr r3, r27
/* 815101B8 | 4B FF FD B9 */	bl IsNextWavePacket__Q34nw4r3snd10WavePlayerCFv
/* 815101BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 815101C0 | 41 82 00 0C */	beq .L_815101CC
/* 815101C4 | 7F 63 DB 78 */	mr r3, r27
/* 815101C8 | 4B FF FE 81 */	bl UpdateWavePacket__Q34nw4r3snd10WavePlayerFv
.L_815101CC:
/* 815101CC | 88 1B 00 1E */	lbz r0, 0x1e(r27)
/* 815101D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 815101D4 | 40 82 00 88 */	bne .L_8151025C
/* 815101D8 | 80 1B 00 04 */	lwz r0, 0x4(r27)
/* 815101DC | 28 00 00 02 */	cmplwi r0, 0x2
/* 815101E0 | 41 80 00 7C */	blt .L_8151025C
/* 815101E4 | 80 1B 00 10 */	lwz r0, 0x10(r27)
/* 815101E8 | 3B 80 00 00 */	li r28, 0x0
/* 815101EC | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 815101F0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 815101F4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 815101F8 | 40 81 00 3C */	ble .L_81510234
/* 815101FC | 3B 23 FF E8 */	subi r25, r3, 0x18
/* 81510200 | 3B 40 00 00 */	li r26, 0x0
/* 81510204 | 48 00 00 24 */	b .L_81510228
.L_81510208:
/* 81510208 | 7C 99 D2 14 */	add r4, r25, r26
/* 8151020C | 80 7B 00 18 */	lwz r3, 0x18(r27)
/* 81510210 | 80 A4 00 08 */	lwz r5, 0x8(r4)
/* 81510214 | 7F 84 E3 78 */	mr r4, r28
/* 81510218 | 38 C0 00 00 */	li r6, 0x0
/* 8151021C | 4B FE 9E 81 */	bl SetLoopStart__Q44nw4r3snd6detail7AxVoiceFiPCvUl
/* 81510220 | 3B 5A 00 04 */	addi r26, r26, 0x4
/* 81510224 | 3B 9C 00 01 */	addi r28, r28, 0x1
.L_81510228:
/* 81510228 | 80 1B 00 10 */	lwz r0, 0x10(r27)
/* 8151022C | 7C 1C 00 00 */	cmpw r28, r0
/* 81510230 | 41 80 FF D8 */	blt .L_81510208
.L_81510234:
/* 81510234 | 80 7B 00 18 */	lwz r3, 0x18(r27)
/* 81510238 | 38 80 00 01 */	li r4, 0x1
/* 8151023C | 4B FE A0 B5 */	bl SetLoopFlag__Q44nw4r3snd6detail7AxVoiceFb
/* 81510240 | 9B BB 00 1E */	stb r29, 0x1e(r27)
/* 81510244 | 48 00 00 18 */	b .L_8151025C
.L_81510248:
/* 81510248 | 80 1B 00 04 */	lwz r0, 0x4(r27)
/* 8151024C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81510250 | 41 82 00 0C */	beq .L_8151025C
/* 81510254 | 7F 63 DB 78 */	mr r3, r27
/* 81510258 | 4B FF FA E5 */	bl StartVoice__Q34nw4r3snd10WavePlayerFv
.L_8151025C:
/* 8151025C | 7C 1F F0 40 */	cmplw r31, r30
/* 81510260 | 40 82 FF 3C */	bne .L_8151019C
/* 81510264 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81510268 | 48 0E 92 9D */	bl _restgpr_25
/* 8151026C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81510270 | 7C 08 03 A6 */	mtlr r0
/* 81510274 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81510278 | 4E 80 00 20 */	blr
.endfn detail_UpdateBufferAllPlayers__Q34nw4r3snd10WavePlayerFv

# .text:0xB5C | 0x8151027C | size: 0x11C
# nw4r::snd::WavePlayer::detail_Update()
.fn detail_Update__Q34nw4r3snd10WavePlayerFv, global
/* 8151027C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81510280 | 7C 08 02 A6 */	mflr r0
/* 81510284 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81510288 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8151028C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81510290 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81510294 | 7C 7D 1B 78 */	mr r29, r3
/* 81510298 | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 8151029C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 815102A0 | 41 82 00 DC */	beq .L_8151037C
/* 815102A4 | C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 815102A8 | 7C 03 03 78 */	mr r3, r0
/* 815102AC | 4B FE 93 59 */	bl SetVolume__Q44nw4r3snd6detail7AxVoiceFf
/* 815102B0 | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 815102B4 | C0 3D 00 3C */	lfs f1, 0x3c(r29)
/* 815102B8 | 4B FE 94 59 */	bl SetPitch__Q44nw4r3snd6detail7AxVoiceFf
/* 815102BC | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 815102C0 | C0 3D 00 34 */	lfs f1, 0x34(r29)
/* 815102C4 | 4B FE 94 6D */	bl SetPan__Q44nw4r3snd6detail7AxVoiceFf
/* 815102C8 | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 815102CC | C0 3D 00 38 */	lfs f1, 0x38(r29)
/* 815102D0 | 4B FE 94 A5 */	bl SetSurroundPan__Q44nw4r3snd6detail7AxVoiceFf
/* 815102D4 | C0 22 8F F0 */	lfs f1, lbl_816953F0@sda21(r0)
/* 815102D8 | C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 815102DC | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 815102E0 | EC 21 00 2A */	fadds f1, f1, f0
/* 815102E4 | 4B FE 95 39 */	bl SetLpfFreq__Q44nw4r3snd6detail7AxVoiceFf
/* 815102E8 | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 815102EC | 80 9D 00 44 */	lwz r4, 0x44(r29)
/* 815102F0 | 4B FE 95 71 */	bl SetOutputLine__Q44nw4r3snd6detail7AxVoiceFi
/* 815102F4 | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 815102F8 | C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 815102FC | 4B FE 95 85 */	bl SetMainOutVolume__Q44nw4r3snd6detail7AxVoiceFf
/* 81510300 | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 81510304 | C0 3D 00 5C */	lfs f1, 0x5c(r29)
/* 81510308 | 4B FE 96 09 */	bl SetMainSend__Q44nw4r3snd6detail7AxVoiceFf
/* 8151030C | 7F BF EB 78 */	mr r31, r29
/* 81510310 | 3B C0 00 00 */	li r30, 0x0
.L_81510314:
/* 81510314 | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 81510318 | 7F C4 F3 78 */	mr r4, r30
/* 8151031C | C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 81510320 | 4B FE 96 39 */	bl SetFxSend__Q44nw4r3snd6detail7AxVoiceFQ34nw4r3snd6AuxBusf
/* 81510324 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81510328 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 8151032C | 2C 1E 00 03 */	cmpwi r30, 0x3
/* 81510330 | 41 80 FF E4 */	blt .L_81510314
/* 81510334 | 7F BF EB 78 */	mr r31, r29
/* 81510338 | 3B C0 00 00 */	li r30, 0x0
.L_8151033C:
/* 8151033C | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 81510340 | 7F C4 F3 78 */	mr r4, r30
/* 81510344 | C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 81510348 | 4B FE 95 7D */	bl SetRemoteOutVolume__Q44nw4r3snd6detail7AxVoiceFif
/* 8151034C | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 81510350 | 7F C4 F3 78 */	mr r4, r30
/* 81510354 | C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 81510358 | 4B FE 96 4D */	bl SetRemoteSend__Q44nw4r3snd6detail7AxVoiceFif
/* 8151035C | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 81510360 | 7F C4 F3 78 */	mr r4, r30
/* 81510364 | C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 81510368 | 4B FE 96 8D */	bl SetRemoteFxSend__Q44nw4r3snd6detail7AxVoiceFif
/* 8151036C | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81510370 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 81510374 | 2C 1E 00 04 */	cmpwi r30, 0x4
/* 81510378 | 41 80 FF C4 */	blt .L_8151033C
.L_8151037C:
/* 8151037C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81510380 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81510384 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81510388 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8151038C | 7C 08 03 A6 */	mtlr r0
/* 81510390 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81510394 | 4E 80 00 20 */	blr
.endfn detail_Update__Q34nw4r3snd10WavePlayerFv

# .text:0xC78 | 0x81510398 | size: 0x58
# nw4r::snd::WavePlayer::detail_UpdateAllPlayers()
.fn detail_UpdateAllPlayers__Q34nw4r3snd10WavePlayerFv, global
/* 81510398 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8151039C | 7C 08 02 A6 */	mflr r0
/* 815103A0 | 3C 60 81 11 */	lis r3, "sPlayerList__Q34nw4r3snd28@unnamed@snd_WavePlayer_cpp@"@ha
/* 815103A4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 815103A8 | 38 63 09 8C */	addi r3, r3, "sPlayerList__Q34nw4r3snd28@unnamed@snd_WavePlayer_cpp@"@l
/* 815103AC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 815103B0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 815103B4 | 3B C3 00 04 */	addi r30, r3, 0x4
/* 815103B8 | 83 E3 00 04 */	lwz r31, 0x4(r3)
/* 815103BC | 48 00 00 14 */	b .L_815103D0
.L_815103C0:
/* 815103C0 | 7F E3 FB 78 */	mr r3, r31
/* 815103C4 | 83 FF 00 00 */	lwz r31, 0x0(r31)
/* 815103C8 | 38 63 FF 6C */	subi r3, r3, 0x94
/* 815103CC | 4B FF FE B1 */	bl detail_Update__Q34nw4r3snd10WavePlayerFv
.L_815103D0:
/* 815103D0 | 7C 1F F0 40 */	cmplw r31, r30
/* 815103D4 | 40 82 FF EC */	bne .L_815103C0
/* 815103D8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 815103DC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 815103E0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 815103E4 | 7C 08 03 A6 */	mtlr r0
/* 815103E8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 815103EC | 4E 80 00 20 */	blr
.endfn detail_UpdateAllPlayers__Q34nw4r3snd10WavePlayerFv

# .text:0xCD0 | 0x815103F0 | size: 0x58
# nw4r::snd::WavePlayer::detail_StopAllPlayers()
.fn detail_StopAllPlayers__Q34nw4r3snd10WavePlayerFv, global
/* 815103F0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 815103F4 | 7C 08 02 A6 */	mflr r0
/* 815103F8 | 3C 60 81 11 */	lis r3, "sPlayerList__Q34nw4r3snd28@unnamed@snd_WavePlayer_cpp@"@ha
/* 815103FC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81510400 | 38 63 09 8C */	addi r3, r3, "sPlayerList__Q34nw4r3snd28@unnamed@snd_WavePlayer_cpp@"@l
/* 81510404 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81510408 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8151040C | 3B C3 00 04 */	addi r30, r3, 0x4
/* 81510410 | 83 E3 00 04 */	lwz r31, 0x4(r3)
/* 81510414 | 48 00 00 14 */	b .L_81510428
.L_81510418:
/* 81510418 | 7F E3 FB 78 */	mr r3, r31
/* 8151041C | 83 FF 00 00 */	lwz r31, 0x0(r31)
/* 81510420 | 38 63 FF 6C */	subi r3, r3, 0x94
/* 81510424 | 4B FF F7 A9 */	bl Stop__Q34nw4r3snd10WavePlayerFv
.L_81510428:
/* 81510428 | 7C 1F F0 40 */	cmplw r31, r30
/* 8151042C | 40 82 FF EC */	bne .L_81510418
/* 81510430 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81510434 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81510438 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8151043C | 7C 08 03 A6 */	mtlr r0
/* 81510440 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81510444 | 4E 80 00 20 */	blr
.endfn detail_StopAllPlayers__Q34nw4r3snd10WavePlayerFv

# .text:0xD28 | 0x81510448 | size: 0x28
# nw4r::snd::WavePlayer::WavePacket::WavePacket()
.fn __ct__Q44nw4r3snd10WavePlayer10WavePacketFv, global
/* 81510448 | 3C 80 81 67 */	lis r4, __vt__Q44nw4r3snd10WavePlayer10WavePacket@ha
/* 8151044C | 38 00 00 00 */	li r0, 0x0
/* 81510450 | 38 84 FB 14 */	addi r4, r4, __vt__Q44nw4r3snd10WavePlayer10WavePacket@l
/* 81510454 | 98 03 00 14 */	stb r0, 0x14(r3)
/* 81510458 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8151045C | 90 03 00 18 */	stw r0, 0x18(r3)
/* 81510460 | 90 03 00 1C */	stw r0, 0x1c(r3)
/* 81510464 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 81510468 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 8151046C | 4E 80 00 20 */	blr
.endfn __ct__Q44nw4r3snd10WavePlayer10WavePacketFv

# .text:0xD50 | 0x81510470 | size: 0x38
# nw4r::ut::LinkList<nw4r::snd::WavePlayer, 148>::~LinkList()
.fn "__dt__Q34nw4r2ut37LinkList<Q34nw4r3snd10WavePlayer,148>Fv", global
/* 81510470 | 3C C0 81 11 */	lis r6, "sPlayerList__Q34nw4r3snd28@unnamed@snd_WavePlayer_cpp@"@ha
/* 81510474 | 38 00 00 00 */	li r0, 0x0
/* 81510478 | 38 66 09 8C */	addi r3, r6, "sPlayerList__Q34nw4r3snd28@unnamed@snd_WavePlayer_cpp@"@l
/* 8151047C | 3C 80 81 51 */	lis r4, "__sinit_\\snd_WavePlayer_cpp"@ha
/* 81510480 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 81510484 | 38 E3 00 04 */	addi r7, r3, 0x4
/* 81510488 | 3C A0 81 11 */	lis r5, lbl_81110980@ha
/* 8151048C | 38 84 04 A8 */	addi r4, r4, "__sinit_\\snd_WavePlayer_cpp"@l
/* 81510490 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 81510494 | 38 A5 09 80 */	addi r5, r5, lbl_81110980@l
/* 81510498 | 90 06 09 8C */	stw r0, "sPlayerList__Q34nw4r3snd28@unnamed@snd_WavePlayer_cpp@"@l(r6)
/* 8151049C | 90 E3 00 04 */	stw r7, 0x4(r3)
/* 815104A0 | 90 E3 00 08 */	stw r7, 0x8(r3)
/* 815104A4 | 48 0E 8B 3C */	b __register_global_object
.endfn "__dt__Q34nw4r2ut37LinkList<Q34nw4r3snd10WavePlayer,148>Fv"

# .text:0xD88 | 0x815104A8 | size: 0x58
.fn "__sinit_\\snd_WavePlayer_cpp", weak
/* 815104A8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 815104AC | 7C 08 02 A6 */	mflr r0
/* 815104B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 815104B4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 815104B8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 815104BC | 7C 9F 23 78 */	mr r31, r4
/* 815104C0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 815104C4 | 7C 7E 1B 78 */	mr r30, r3
/* 815104C8 | 41 82 00 1C */	beq .L_815104E4
/* 815104CC | 38 80 00 00 */	li r4, 0x0
/* 815104D0 | 48 00 1E 95 */	bl fn_81512364
/* 815104D4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 815104D8 | 40 81 00 0C */	ble .L_815104E4
/* 815104DC | 7F C3 F3 78 */	mr r3, r30
/* 815104E0 | 48 0E 7C 05 */	bl __dl__FPv
.L_815104E4:
/* 815104E4 | 7F C3 F3 78 */	mr r3, r30
/* 815104E8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 815104EC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 815104F0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 815104F4 | 7C 08 03 A6 */	mtlr r0
/* 815104F8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 815104FC | 4E 80 00 20 */	blr
.endfn "__sinit_\\snd_WavePlayer_cpp"

# 0x8160D23C..0x8160D240 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte "__dt__Q34nw4r2ut37LinkList<Q34nw4r3snd10WavePlayer,148>Fv"

# 0x8166FB08..0x8166FB20 | size: 0x18
.data
.balign 8

# .data:0x0 | 0x8166FB08 | size: 0xC
# nw4r::snd::WavePlayer::__vtable
.obj __vt__Q34nw4r3snd10WavePlayer, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q34nw4r3snd10WavePlayerFv
.endobj __vt__Q34nw4r3snd10WavePlayer

# .data:0xC | 0x8166FB14 | size: 0xC
# nw4r::snd::WavePlayer::WavePacket::__vtable
.obj __vt__Q44nw4r3snd10WavePlayer10WavePacket, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q44nw4r3snd10WavePlayer10WavePacketFv
.endobj __vt__Q44nw4r3snd10WavePlayer10WavePacket

# 0x816953F0..0x81695408 | size: 0x18
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x816953F0 | size: 0x4
.obj lbl_816953F0, global
	.float 1
.endobj lbl_816953F0

# .sdata2:0x4 | 0x816953F4 | size: 0x4
.obj lbl_816953F4, global
	.float 0
.endobj lbl_816953F4

# .sdata2:0x8 | 0x816953F8 | size: 0x4
.obj lbl_816953F8, global
	.float 6
.endobj lbl_816953F8

# .sdata2:0xC | 0x816953FC | size: 0x4
.obj gap_09_816953FC_sdata2, global
.hidden gap_09_816953FC_sdata2
	.4byte 0x00000000
.endobj gap_09_816953FC_sdata2

# .sdata2:0x10 | 0x81695400 | size: 0x8
.obj lbl_81695400, global
	.double 4503599627370496
.endobj lbl_81695400
