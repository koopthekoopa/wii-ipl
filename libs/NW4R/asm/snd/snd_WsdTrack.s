.include "macros.inc"
.file "snd_WsdTrack.cpp"

# 0x815116F4..0x8151205C | size: 0x968
.text
.balign 4

# .text:0x0 | 0x815116F4 | size: 0x88
# nw4r::snd::detail::WsdTrack::Init(nw4r::snd::detail::WsdPlayer*)
.fn Init__Q44nw4r3snd6detail8WsdTrackFPQ44nw4r3snd6detail9WsdPlayer, global
/* 815116F4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 815116F8 | 7C 08 02 A6 */	mflr r0
/* 815116FC | C0 02 90 18 */	lfs f0, lbl_81695418@sda21(r0)
/* 81511700 | 38 C0 00 40 */	li r6, 0x40
/* 81511704 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81511708 | 38 E0 FF FF */	li r7, -0x1
/* 8151170C | 38 A0 00 02 */	li r5, 0x2
/* 81511710 | 38 00 00 7F */	li r0, 0x7f
/* 81511714 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81511718 | 3B E0 00 00 */	li r31, 0x0
/* 8151171C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81511720 | 7C 7E 1B 78 */	mr r30, r3
/* 81511724 | 90 83 00 2C */	stw r4, 0x2c(r3)
/* 81511728 | 93 E3 00 00 */	stw r31, 0x0(r3)
/* 8151172C | 90 E3 00 04 */	stw r7, 0x4(r3)
/* 81511730 | 98 C3 00 1D */	stb r6, 0x1d(r3)
/* 81511734 | 98 A3 00 1C */	stb r5, 0x1c(r3)
/* 81511738 | D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8151173C | 98 C3 00 24 */	stb r6, 0x24(r3)
/* 81511740 | 9B E3 00 25 */	stb r31, 0x25(r3)
/* 81511744 | 9B E3 00 26 */	stb r31, 0x26(r3)
/* 81511748 | 9B E3 00 27 */	stb r31, 0x27(r3)
/* 8151174C | 9B E3 00 28 */	stb r31, 0x28(r3)
/* 81511750 | 98 03 00 29 */	stb r0, 0x29(r3)
/* 81511754 | 38 63 00 0C */	addi r3, r3, 0xc
/* 81511758 | 4B FE FD C5 */	bl Init__Q44nw4r3snd6detail8LfoParamFv
/* 8151175C | 93 FE 00 08 */	stw r31, 0x8(r30)
/* 81511760 | 93 FE 00 30 */	stw r31, 0x30(r30)
/* 81511764 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81511768 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8151176C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81511770 | 7C 08 03 A6 */	mtlr r0
/* 81511774 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81511778 | 4E 80 00 20 */	blr
.endfn Init__Q44nw4r3snd6detail8WsdTrackFPQ44nw4r3snd6detail9WsdPlayer

# .text:0x88 | 0x8151177C | size: 0xC
# nw4r::snd::detail::WsdTrack::Start(const void*, int)
.fn Start__Q44nw4r3snd6detail8WsdTrackFPCvi, global
/* 8151177C | 90 83 00 00 */	stw r4, 0x0(r3)
/* 81511780 | 90 A3 00 04 */	stw r5, 0x4(r3)
/* 81511784 | 4E 80 00 20 */	blr
.endfn Start__Q44nw4r3snd6detail8WsdTrackFPCvi

# .text:0x94 | 0x81511788 | size: 0x5C
# nw4r::snd::detail::WsdTrack::Close()
.fn Close__Q44nw4r3snd6detail8WsdTrackFv, global
/* 81511788 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8151178C | 7C 08 02 A6 */	mflr r0
/* 81511790 | 38 80 FF FF */	li r4, -0x1
/* 81511794 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81511798 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8151179C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 815117A0 | 7C 7E 1B 78 */	mr r30, r3
/* 815117A4 | 48 00 01 05 */	bl ReleaseAllChannel__Q44nw4r3snd6detail8WsdTrackFi
/* 815117A8 | 83 FE 00 30 */	lwz r31, 0x30(r30)
/* 815117AC | 48 00 00 10 */	b .L_815117BC
.L_815117B0:
/* 815117B0 | 7F E3 FB 78 */	mr r3, r31
/* 815117B4 | 4B FE CC 89 */	bl FreeChannel__Q44nw4r3snd6detail7ChannelFPQ44nw4r3snd6detail7Channel
/* 815117B8 | 83 FF 00 E4 */	lwz r31, 0xe4(r31)
.L_815117BC:
/* 815117BC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 815117C0 | 40 82 FF F0 */	bne .L_815117B0
/* 815117C4 | 38 00 00 00 */	li r0, 0x0
/* 815117C8 | 90 1E 00 30 */	stw r0, 0x30(r30)
/* 815117CC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 815117D0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 815117D4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 815117D8 | 7C 08 03 A6 */	mtlr r0
/* 815117DC | 38 21 00 10 */	addi r1, r1, 0x10
/* 815117E0 | 4E 80 00 20 */	blr
.endfn Close__Q44nw4r3snd6detail8WsdTrackFv

# .text:0xF0 | 0x815117E4 | size: 0xC4
# nw4r::snd::detail::WsdTrack::ParseNextTick(const nw4r::snd::detail::WsdTrack::WsdCallback*, unsigned long, bool)
.fn ParseNextTick__Q44nw4r3snd6detail8WsdTrackFPCQ54nw4r3snd6detail8WsdTrack11WsdCallbackUlb, global
/* 815117E4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 815117E8 | 7C 08 02 A6 */	mflr r0
/* 815117EC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 815117F0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 815117F4 | 48 0E 7C CD */	bl _savegpr_27
/* 815117F8 | 83 E3 00 30 */	lwz r31, 0x30(r3)
/* 815117FC | 7C 7B 1B 78 */	mr r27, r3
/* 81511800 | 7C 9C 23 78 */	mr r28, r4
/* 81511804 | 7C BD 2B 78 */	mr r29, r5
/* 81511808 | 7C DE 33 78 */	mr r30, r6
/* 8151180C | 48 00 00 48 */	b .L_81511854
.L_81511810:
/* 81511810 | 80 7F 00 D4 */	lwz r3, 0xd4(r31)
/* 81511814 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81511818 | 40 81 00 38 */	ble .L_81511850
/* 8151181C | 38 03 FF FF */	subi r0, r3, 0x1
/* 81511820 | 90 1F 00 D4 */	stw r0, 0xd4(r31)
/* 81511824 | 88 1F 00 3C */	lbz r0, 0x3c(r31)
/* 81511828 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8151182C | 40 82 00 10 */	bne .L_8151183C
/* 81511830 | 7F E3 FB 78 */	mr r3, r31
/* 81511834 | 38 80 00 01 */	li r4, 0x1
/* 81511838 | 4B FE C9 25 */	bl UpdateSweep__Q44nw4r3snd6detail7ChannelFi
.L_8151183C:
/* 8151183C | 80 1F 00 D4 */	lwz r0, 0xd4(r31)
/* 81511840 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81511844 | 40 82 00 0C */	bne .L_81511850
/* 81511848 | 7F E3 FB 78 */	mr r3, r31
/* 8151184C | 4B FE C7 75 */	bl Release__Q44nw4r3snd6detail7ChannelFv
.L_81511850:
/* 81511850 | 83 FF 00 E4 */	lwz r31, 0xe4(r31)
.L_81511854:
/* 81511854 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81511858 | 40 82 FF B8 */	bne .L_81511810
/* 8151185C | 80 1B 00 08 */	lwz r0, 0x8(r27)
/* 81511860 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81511864 | 41 82 00 18 */	beq .L_8151187C
/* 81511868 | 80 1B 00 30 */	lwz r0, 0x30(r27)
/* 8151186C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81511870 | 40 82 00 0C */	bne .L_8151187C
/* 81511874 | 38 60 FF FF */	li r3, -0x1
/* 81511878 | 48 00 00 18 */	b .L_81511890
.L_8151187C:
/* 8151187C | 7F 63 DB 78 */	mr r3, r27
/* 81511880 | 7F 84 E3 78 */	mr r4, r28
/* 81511884 | 7F A5 EB 78 */	mr r5, r29
/* 81511888 | 7F C6 F3 78 */	mr r6, r30
/* 8151188C | 48 00 06 0D */	bl Parse__Q44nw4r3snd6detail8WsdTrackFPCQ54nw4r3snd6detail8WsdTrack11WsdCallbackUlb
.L_81511890:
/* 81511890 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81511894 | 48 0E 7C 79 */	bl _restgpr_27
/* 81511898 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8151189C | 7C 08 03 A6 */	mtlr r0
/* 815118A0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 815118A4 | 4E 80 00 20 */	blr
.endfn ParseNextTick__Q44nw4r3snd6detail8WsdTrackFPCQ54nw4r3snd6detail8WsdTrack11WsdCallbackUlb

# .text:0x1B4 | 0x815118A8 | size: 0x9C
# nw4r::snd::detail::WsdTrack::ReleaseAllChannel(int)
.fn ReleaseAllChannel__Q44nw4r3snd6detail8WsdTrackFi, global
/* 815118A8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 815118AC | 7C 08 02 A6 */	mflr r0
/* 815118B0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 815118B4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 815118B8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 815118BC | 7C 7E 1B 78 */	mr r30, r3
/* 815118C0 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 815118C4 | 7C 9D 23 78 */	mr r29, r4
/* 815118C8 | 48 00 00 F5 */	bl UpdateChannel__Q44nw4r3snd6detail8WsdTrackFv
/* 815118CC | 48 01 EF B9 */	bl OSDisableInterrupts
/* 815118D0 | 7C 7F 1B 78 */	mr r31, r3
/* 815118D4 | 4B FE 5C F9 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 815118D8 | 4B FE 67 7D */	bl LockUpdateVoicePriority__Q44nw4r3snd6detail9AxManagerFv
/* 815118DC | 83 DE 00 30 */	lwz r30, 0x30(r30)
/* 815118E0 | 48 00 00 30 */	b .L_81511910
.L_815118E4:
/* 815118E4 | 88 1E 00 3A */	lbz r0, 0x3a(r30)
/* 815118E8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 815118EC | 41 82 00 20 */	beq .L_8151190C
/* 815118F0 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 815118F4 | 41 80 00 10 */	blt .L_81511904
/* 815118F8 | 38 7E 00 08 */	addi r3, r30, 0x8
/* 815118FC | 57 A4 06 3E */	clrlwi r4, r29, 24
/* 81511900 | 4B FE DA 1D */	bl SetRelease__Q44nw4r3snd6detail12EnvGeneratorFi
.L_81511904:
/* 81511904 | 7F C3 F3 78 */	mr r3, r30
/* 81511908 | 4B FE C6 B9 */	bl Release__Q44nw4r3snd6detail7ChannelFv
.L_8151190C:
/* 8151190C | 83 DE 00 E4 */	lwz r30, 0xe4(r30)
.L_81511910:
/* 81511910 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81511914 | 40 82 FF D0 */	bne .L_815118E4
/* 81511918 | 4B FE 5C B5 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 8151191C | 4B FE 67 75 */	bl UnlockUpdateVoicePriority__Q44nw4r3snd6detail9AxManagerFv
/* 81511920 | 7F E3 FB 78 */	mr r3, r31
/* 81511924 | 48 01 EF 89 */	bl OSRestoreInterrupts
/* 81511928 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8151192C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81511930 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81511934 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81511938 | 7C 08 03 A6 */	mtlr r0
/* 8151193C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81511940 | 4E 80 00 20 */	blr
.endfn ReleaseAllChannel__Q44nw4r3snd6detail8WsdTrackFi

# .text:0x250 | 0x81511944 | size: 0x78
# nw4r::snd::detail::WsdTrack::PauseAllChannel(bool)
.fn PauseAllChannel__Q44nw4r3snd6detail8WsdTrackFb, global
/* 81511944 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81511948 | 7C 08 02 A6 */	mflr r0
/* 8151194C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81511950 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81511954 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81511958 | 7C 9E 23 78 */	mr r30, r4
/* 8151195C | 83 E3 00 30 */	lwz r31, 0x30(r3)
/* 81511960 | 48 00 00 3C */	b .L_8151199C
.L_81511964:
/* 81511964 | 88 1F 00 3A */	lbz r0, 0x3a(r31)
/* 81511968 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8151196C | 41 82 00 2C */	beq .L_81511998
/* 81511970 | 88 7F 00 39 */	lbz r3, 0x39(r31)
/* 81511974 | 7C 03 00 D0 */	neg r0, r3
/* 81511978 | 7C 00 1B 78 */	or r0, r0, r3
/* 8151197C | 54 00 0F FE */	srwi r0, r0, 31
/* 81511980 | 7C 1E 00 40 */	cmplw r30, r0
/* 81511984 | 41 82 00 14 */	beq .L_81511998
/* 81511988 | 9B DF 00 39 */	stb r30, 0x39(r31)
/* 8151198C | 7F C4 F3 78 */	mr r4, r30
/* 81511990 | 80 7F 00 E0 */	lwz r3, 0xe0(r31)
/* 81511994 | 4B FE 7C 11 */	bl Pause__Q44nw4r3snd6detail7AxVoiceFb
.L_81511998:
/* 81511998 | 83 FF 00 E4 */	lwz r31, 0xe4(r31)
.L_8151199C:
/* 8151199C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 815119A0 | 40 82 FF C4 */	bne .L_81511964
/* 815119A4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 815119A8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 815119AC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 815119B0 | 7C 08 03 A6 */	mtlr r0
/* 815119B4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 815119B8 | 4E 80 00 20 */	blr
.endfn PauseAllChannel__Q44nw4r3snd6detail8WsdTrackFb

# .text:0x2C8 | 0x815119BC | size: 0x4DC
# nw4r::snd::detail::WsdTrack::UpdateChannel()
.fn UpdateChannel__Q44nw4r3snd6detail8WsdTrackFv, global
/* 815119BC | 94 21 FE E0 */	stwu r1, -0x120(r1)
/* 815119C0 | 7C 08 02 A6 */	mflr r0
/* 815119C4 | 90 01 01 24 */	stw r0, 0x124(r1)
/* 815119C8 | DB E1 01 10 */	stfd f31, 0x110(r1)
/* 815119CC | F3 E1 01 18 */	psq_st f31, 0x118(r1), 0, qr0
/* 815119D0 | DB C1 01 00 */	stfd f30, 0x100(r1)
/* 815119D4 | F3 C1 01 08 */	psq_st f30, 0x108(r1), 0, qr0
/* 815119D8 | DB A1 00 F0 */	stfd f29, 0xf0(r1)
/* 815119DC | F3 A1 00 F8 */	psq_st f29, 0xf8(r1), 0, qr0
/* 815119E0 | DB 81 00 E0 */	stfd f28, 0xe0(r1)
/* 815119E4 | F3 81 00 E8 */	psq_st f28, 0xe8(r1), 0, qr0
/* 815119E8 | DB 61 00 D0 */	stfd f27, 0xd0(r1)
/* 815119EC | F3 61 00 D8 */	psq_st f27, 0xd8(r1), 0, qr0
/* 815119F0 | DB 41 00 C0 */	stfd f26, 0xc0(r1)
/* 815119F4 | F3 41 00 C8 */	psq_st f26, 0xc8(r1), 0, qr0
/* 815119F8 | DB 21 00 B0 */	stfd f25, 0xb0(r1)
/* 815119FC | F3 21 00 B8 */	psq_st f25, 0xb8(r1), 0, qr0
/* 81511A00 | DB 01 00 A0 */	stfd f24, 0xa0(r1)
/* 81511A04 | F3 01 00 A8 */	psq_st f24, 0xa8(r1), 0, qr0
/* 81511A08 | DA E1 00 90 */	stfd f23, 0x90(r1)
/* 81511A0C | F2 E1 00 98 */	psq_st f23, 0x98(r1), 0, qr0
/* 81511A10 | DA C1 00 80 */	stfd f22, 0x80(r1)
/* 81511A14 | F2 C1 00 88 */	psq_st f22, 0x88(r1), 0, qr0
/* 81511A18 | DA A1 00 70 */	stfd f21, 0x70(r1)
/* 81511A1C | F2 A1 00 78 */	psq_st f21, 0x78(r1), 0, qr0
/* 81511A20 | 39 61 00 70 */	addi r11, r1, 0x70
/* 81511A24 | 48 0E 7A 95 */	bl _savegpr_25
/* 81511A28 | 7C 7F 1B 78 */	mr r31, r3
/* 81511A2C | 80 63 00 2C */	lwz r3, 0x2c(r3)
/* 81511A30 | 3C 00 43 30 */	lis r0, 0x4330
/* 81511A34 | C3 E2 90 18 */	lfs f31, lbl_81695418@sda21(r0)
/* 81511A38 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81511A3C | 90 01 00 40 */	stw r0, 0x40(r1)
/* 81511A40 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 81511A44 | 90 01 00 48 */	stw r0, 0x48(r1)
/* 81511A48 | 7D 89 03 A6 */	mtctr r12
/* 81511A4C | 4E 80 04 21 */	bctrl
/* 81511A50 | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 81511A54 | EF FF 00 72 */	fmuls f31, f31, f1
/* 81511A58 | C3 C2 90 18 */	lfs f30, lbl_81695418@sda21(r0)
/* 81511A5C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81511A60 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 81511A64 | 7D 89 03 A6 */	mtctr r12
/* 81511A68 | 4E 80 04 21 */	bctrl
/* 81511A6C | EF DE 00 72 */	fmuls f30, f30, f1
/* 81511A70 | C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 81511A74 | 88 7F 00 24 */	lbz r3, 0x24(r31)
/* 81511A78 | C3 A2 90 1C */	lfs f29, lbl_8169541C@sda21(r0)
/* 81511A7C | 28 03 00 01 */	cmplwi r3, 0x1
/* 81511A80 | EF DE 00 32 */	fmuls f30, f30, f0
/* 81511A84 | 41 81 00 2C */	bgt .L_81511AB0
/* 81511A88 | 38 03 FF C1 */	subi r0, r3, 0x3f
/* 81511A8C | C8 42 90 30 */	lfd f2, lbl_81695430@sda21(r0)
/* 81511A90 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 81511A94 | C0 02 90 20 */	lfs f0, lbl_81695420@sda21(r0)
/* 81511A98 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81511A9C | C8 21 00 40 */	lfd f1, 0x40(r1)
/* 81511AA0 | EC 21 10 28 */	fsubs f1, f1, f2
/* 81511AA4 | EC 01 00 24 */	fdivs f0, f1, f0
/* 81511AA8 | EF BD 00 2A */	fadds f29, f29, f0
/* 81511AAC | 48 00 00 28 */	b .L_81511AD4
.L_81511AB0:
/* 81511AB0 | 38 03 FF C0 */	subi r0, r3, 0x40
/* 81511AB4 | C8 42 90 30 */	lfd f2, lbl_81695430@sda21(r0)
/* 81511AB8 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 81511ABC | C0 02 90 20 */	lfs f0, lbl_81695420@sda21(r0)
/* 81511AC0 | 90 01 00 4C */	stw r0, 0x4c(r1)
/* 81511AC4 | C8 21 00 48 */	lfd f1, 0x48(r1)
/* 81511AC8 | EC 21 10 28 */	fsubs f1, f1, f2
/* 81511ACC | EC 01 00 24 */	fdivs f0, f1, f0
/* 81511AD0 | EF BD 00 2A */	fadds f29, f29, f0
.L_81511AD4:
/* 81511AD4 | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 81511AD8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81511ADC | C0 03 00 30 */	lfs f0, 0x30(r3)
/* 81511AE0 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 81511AE4 | EF BD 00 32 */	fmuls f29, f29, f0
/* 81511AE8 | 7D 89 03 A6 */	mtctr r12
/* 81511AEC | 4E 80 04 21 */	bctrl
/* 81511AF0 | 88 7F 00 25 */	lbz r3, 0x25(r31)
/* 81511AF4 | EF BD 08 2A */	fadds f29, f29, f1
/* 81511AF8 | C3 82 90 1C */	lfs f28, lbl_8169541C@sda21(r0)
/* 81511AFC | 28 03 00 01 */	cmplwi r3, 0x1
/* 81511B00 | 41 81 00 2C */	bgt .L_81511B2C
/* 81511B04 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81511B08 | C8 42 90 30 */	lfd f2, lbl_81695430@sda21(r0)
/* 81511B0C | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 81511B10 | C0 02 90 20 */	lfs f0, lbl_81695420@sda21(r0)
/* 81511B14 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81511B18 | C8 21 00 40 */	lfd f1, 0x40(r1)
/* 81511B1C | EC 21 10 28 */	fsubs f1, f1, f2
/* 81511B20 | EC 01 00 24 */	fdivs f0, f1, f0
/* 81511B24 | EF 9C 00 2A */	fadds f28, f28, f0
/* 81511B28 | 48 00 00 20 */	b .L_81511B48
.L_81511B2C:
/* 81511B2C | 90 61 00 4C */	stw r3, 0x4c(r1)
/* 81511B30 | C8 42 90 38 */	lfd f2, lbl_81695438@sda21(r0)
/* 81511B34 | C8 21 00 48 */	lfd f1, 0x48(r1)
/* 81511B38 | C0 02 90 20 */	lfs f0, lbl_81695420@sda21(r0)
/* 81511B3C | EC 21 10 28 */	fsubs f1, f1, f2
/* 81511B40 | EC 01 00 24 */	fdivs f0, f1, f0
/* 81511B44 | EF 9C 00 2A */	fadds f28, f28, f0
.L_81511B48:
/* 81511B48 | 90 61 00 44 */	stw r3, 0x44(r1)
/* 81511B4C | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 81511B50 | C8 22 90 38 */	lfd f1, lbl_81695438@sda21(r0)
/* 81511B54 | C8 01 00 40 */	lfd f0, 0x40(r1)
/* 81511B58 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81511B5C | EC 20 08 28 */	fsubs f1, f0, f1
/* 81511B60 | C0 02 90 24 */	lfs f0, lbl_81695424@sda21(r0)
/* 81511B64 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 81511B68 | EC 01 00 32 */	fmuls f0, f1, f0
/* 81511B6C | EF 9C 00 2A */	fadds f28, f28, f0
/* 81511B70 | 7D 89 03 A6 */	mtctr r12
/* 81511B74 | 4E 80 04 21 */	bctrl
/* 81511B78 | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 81511B7C | EF 9C 08 2A */	fadds f28, f28, f1
/* 81511B80 | C3 62 90 1C */	lfs f27, lbl_8169541C@sda21(r0)
/* 81511B84 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81511B88 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81511B8C | 7D 89 03 A6 */	mtctr r12
/* 81511B90 | 4E 80 04 21 */	bctrl
/* 81511B94 | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 81511B98 | EF 7B 08 2A */	fadds f27, f27, f1
/* 81511B9C | C3 42 90 1C */	lfs f26, lbl_8169541C@sda21(r0)
/* 81511BA0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81511BA4 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 81511BA8 | 7D 89 03 A6 */	mtctr r12
/* 81511BAC | 4E 80 04 21 */	bctrl
/* 81511BB0 | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 81511BB4 | EF 5A 08 2A */	fadds f26, f26, f1
/* 81511BB8 | C3 22 90 1C */	lfs f25, lbl_8169541C@sda21(r0)
/* 81511BBC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81511BC0 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 81511BC4 | 7D 89 03 A6 */	mtctr r12
/* 81511BC8 | 4E 80 04 21 */	bctrl
/* 81511BCC | 88 1F 00 29 */	lbz r0, 0x29(r31)
/* 81511BD0 | EF 39 08 2A */	fadds f25, f25, f1
/* 81511BD4 | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 81511BD8 | 90 01 00 4C */	stw r0, 0x4c(r1)
/* 81511BDC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81511BE0 | C8 42 90 38 */	lfd f2, lbl_81695438@sda21(r0)
/* 81511BE4 | C8 21 00 48 */	lfd f1, 0x48(r1)
/* 81511BE8 | C0 02 90 28 */	lfs f0, lbl_81695428@sda21(r0)
/* 81511BEC | EC 21 10 28 */	fsubs f1, f1, f2
/* 81511BF0 | C3 02 90 18 */	lfs f24, lbl_81695418@sda21(r0)
/* 81511BF4 | 81 8C 00 84 */	lwz r12, 0x84(r12)
/* 81511BF8 | EC 01 00 24 */	fdivs f0, f1, f0
/* 81511BFC | EC 00 C0 28 */	fsubs f0, f0, f24
/* 81511C00 | EF 18 00 2A */	fadds f24, f24, f0
/* 81511C04 | 7D 89 03 A6 */	mtctr r12
/* 81511C08 | 4E 80 04 21 */	bctrl
/* 81511C0C | 88 9F 00 26 */	lbz r4, 0x26(r31)
/* 81511C10 | EF 18 08 2A */	fadds f24, f24, f1
/* 81511C14 | 88 7F 00 27 */	lbz r3, 0x27(r31)
/* 81511C18 | 3B 61 00 30 */	addi r27, r1, 0x30
/* 81511C1C | 88 1F 00 28 */	lbz r0, 0x28(r31)
/* 81511C20 | 3B 81 00 08 */	addi r28, r1, 0x8
/* 81511C24 | 98 81 00 08 */	stb r4, 0x8(r1)
/* 81511C28 | C2 A2 90 1C */	lfs f21, lbl_8169541C@sda21(r0)
/* 81511C2C | 3B A0 00 00 */	li r29, 0x0
/* 81511C30 | 98 61 00 09 */	stb r3, 0x9(r1)
/* 81511C34 | CA C2 90 38 */	lfd f22, lbl_81695438@sda21(r0)
/* 81511C38 | 98 01 00 0A */	stb r0, 0xa(r1)
/* 81511C3C | C2 E2 90 28 */	lfs f23, lbl_81695428@sda21(r0)
.L_81511C40:
/* 81511C40 | 88 1C 00 00 */	lbz r0, 0x0(r28)
/* 81511C44 | 7F A4 EB 78 */	mr r4, r29
/* 81511C48 | D2 BB 00 00 */	stfs f21, 0x0(r27)
/* 81511C4C | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 81511C50 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81511C54 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81511C58 | C8 21 00 40 */	lfd f1, 0x40(r1)
/* 81511C5C | C0 1B 00 00 */	lfs f0, 0x0(r27)
/* 81511C60 | EC 21 B0 28 */	fsubs f1, f1, f22
/* 81511C64 | 81 8C 00 88 */	lwz r12, 0x88(r12)
/* 81511C68 | EC 21 B8 24 */	fdivs f1, f1, f23
/* 81511C6C | EC 00 08 2A */	fadds f0, f0, f1
/* 81511C70 | D0 1B 00 00 */	stfs f0, 0x0(r27)
/* 81511C74 | 7D 89 03 A6 */	mtctr r12
/* 81511C78 | 4E 80 04 21 */	bctrl
/* 81511C7C | C0 1B 00 00 */	lfs f0, 0x0(r27)
/* 81511C80 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 81511C84 | 2C 1D 00 03 */	cmpwi r29, 0x3
/* 81511C88 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 81511C8C | EC 00 08 2A */	fadds f0, f0, f1
/* 81511C90 | D0 1B 00 00 */	stfs f0, 0x0(r27)
/* 81511C94 | 3B 7B 00 04 */	addi r27, r27, 0x4
/* 81511C98 | 41 80 FF A8 */	blt .L_81511C40
/* 81511C9C | C2 E2 90 1C */	lfs f23, lbl_8169541C@sda21(r0)
/* 81511CA0 | 3B 61 00 20 */	addi r27, r1, 0x20
/* 81511CA4 | 3B 81 00 10 */	addi r28, r1, 0x10
/* 81511CA8 | 3B A0 00 00 */	li r29, 0x0
.L_81511CAC:
/* 81511CAC | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 81511CB0 | 7F A4 EB 78 */	mr r4, r29
/* 81511CB4 | D2 FB 00 00 */	stfs f23, 0x0(r27)
/* 81511CB8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81511CBC | 81 8C 00 90 */	lwz r12, 0x90(r12)
/* 81511CC0 | 7D 89 03 A6 */	mtctr r12
/* 81511CC4 | 4E 80 04 21 */	bctrl
/* 81511CC8 | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 81511CCC | 7F A4 EB 78 */	mr r4, r29
/* 81511CD0 | C0 1B 00 00 */	lfs f0, 0x0(r27)
/* 81511CD4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81511CD8 | EC 00 08 2A */	fadds f0, f0, f1
/* 81511CDC | D2 FC 00 00 */	stfs f23, 0x0(r28)
/* 81511CE0 | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 81511CE4 | D0 1B 00 00 */	stfs f0, 0x0(r27)
/* 81511CE8 | 7D 89 03 A6 */	mtctr r12
/* 81511CEC | 4E 80 04 21 */	bctrl
/* 81511CF0 | C0 1C 00 00 */	lfs f0, 0x0(r28)
/* 81511CF4 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 81511CF8 | 2C 1D 00 04 */	cmpwi r29, 0x4
/* 81511CFC | 3B 7B 00 04 */	addi r27, r27, 0x4
/* 81511D00 | EC 00 08 2A */	fadds f0, f0, f1
/* 81511D04 | D0 1C 00 00 */	stfs f0, 0x0(r28)
/* 81511D08 | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 81511D0C | 41 80 FF A0 */	blt .L_81511CAC
/* 81511D10 | 48 01 EB 75 */	bl OSDisableInterrupts
/* 81511D14 | 83 5F 00 30 */	lwz r26, 0x30(r31)
/* 81511D18 | 7C 7E 1B 78 */	mr r30, r3
/* 81511D1C | C2 A1 00 30 */	lfs f21, 0x30(r1)
/* 81511D20 | C2 E1 00 34 */	lfs f23, 0x34(r1)
/* 81511D24 | C2 C1 00 38 */	lfs f22, 0x38(r1)
/* 81511D28 | 48 00 00 F0 */	b .L_81511E18
.L_81511D2C:
/* 81511D2C | D3 FA 00 40 */	stfs f31, 0x40(r26)
/* 81511D30 | D3 DA 00 44 */	stfs f30, 0x44(r26)
/* 81511D34 | D3 BA 00 48 */	stfs f29, 0x48(r26)
/* 81511D38 | D3 9A 00 4C */	stfs f28, 0x4c(r26)
/* 81511D3C | D3 7A 00 50 */	stfs f27, 0x50(r26)
/* 81511D40 | D3 5A 00 54 */	stfs f26, 0x54(r26)
/* 81511D44 | D3 3A 00 58 */	stfs f25, 0x58(r26)
/* 81511D48 | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 81511D4C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81511D50 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 81511D54 | 7D 89 03 A6 */	mtctr r12
/* 81511D58 | 4E 80 04 21 */	bctrl
/* 81511D5C | 90 7A 00 5C */	stw r3, 0x5c(r26)
/* 81511D60 | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 81511D64 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81511D68 | 81 8C 00 80 */	lwz r12, 0x80(r12)
/* 81511D6C | 7D 89 03 A6 */	mtctr r12
/* 81511D70 | 4E 80 04 21 */	bctrl
/* 81511D74 | D0 3A 00 60 */	stfs f1, 0x60(r26)
/* 81511D78 | 7F 5D D3 78 */	mr r29, r26
/* 81511D7C | 3B 81 00 20 */	addi r28, r1, 0x20
/* 81511D80 | 3B 61 00 10 */	addi r27, r1, 0x10
/* 81511D84 | D3 1A 00 64 */	stfs f24, 0x64(r26)
/* 81511D88 | 3B 20 00 00 */	li r25, 0x0
/* 81511D8C | D2 BA 00 68 */	stfs f21, 0x68(r26)
/* 81511D90 | D2 FA 00 6C */	stfs f23, 0x6c(r26)
/* 81511D94 | D2 DA 00 70 */	stfs f22, 0x70(r26)
.L_81511D98:
/* 81511D98 | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 81511D9C | 7F 24 CB 78 */	mr r4, r25
/* 81511DA0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81511DA4 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 81511DA8 | 7D 89 03 A6 */	mtctr r12
/* 81511DAC | 4E 80 04 21 */	bctrl
/* 81511DB0 | C0 1C 00 00 */	lfs f0, 0x0(r28)
/* 81511DB4 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 81511DB8 | D0 3D 00 74 */	stfs f1, 0x74(r29)
/* 81511DBC | 2C 19 00 04 */	cmpwi r25, 0x4
/* 81511DC0 | C0 3B 00 00 */	lfs f1, 0x0(r27)
/* 81511DC4 | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 81511DC8 | D0 1D 00 84 */	stfs f0, 0x84(r29)
/* 81511DCC | 3B 7B 00 04 */	addi r27, r27, 0x4
/* 81511DD0 | D0 3D 00 94 */	stfs f1, 0x94(r29)
/* 81511DD4 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 81511DD8 | 41 80 FF C0 */	blt .L_81511D98
/* 81511DDC | C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 81511DE0 | D0 1A 00 20 */	stfs f0, 0x20(r26)
/* 81511DE4 | C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 81511DE8 | D0 1A 00 24 */	stfs f0, 0x24(r26)
/* 81511DEC | 80 1F 00 14 */	lwz r0, 0x14(r31)
/* 81511DF0 | 90 1A 00 28 */	stw r0, 0x28(r26)
/* 81511DF4 | 88 1F 00 18 */	lbz r0, 0x18(r31)
/* 81511DF8 | 98 1A 00 2C */	stb r0, 0x2c(r26)
/* 81511DFC | 88 1F 00 19 */	lbz r0, 0x19(r31)
/* 81511E00 | 98 1A 00 2D */	stb r0, 0x2d(r26)
/* 81511E04 | 88 1F 00 1A */	lbz r0, 0x1a(r31)
/* 81511E08 | 98 1A 00 2E */	stb r0, 0x2e(r26)
/* 81511E0C | 88 1F 00 1B */	lbz r0, 0x1b(r31)
/* 81511E10 | 98 1A 00 2F */	stb r0, 0x2f(r26)
/* 81511E14 | 83 5A 00 E4 */	lwz r26, 0xe4(r26)
.L_81511E18:
/* 81511E18 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 81511E1C | 40 82 FF 10 */	bne .L_81511D2C
/* 81511E20 | 7F C3 F3 78 */	mr r3, r30
/* 81511E24 | 48 01 EA 89 */	bl OSRestoreInterrupts
/* 81511E28 | E3 E1 01 18 */	psq_l f31, 0x118(r1), 0, qr0
/* 81511E2C | CB E1 01 10 */	lfd f31, 0x110(r1)
/* 81511E30 | E3 C1 01 08 */	psq_l f30, 0x108(r1), 0, qr0
/* 81511E34 | CB C1 01 00 */	lfd f30, 0x100(r1)
/* 81511E38 | E3 A1 00 F8 */	psq_l f29, 0xf8(r1), 0, qr0
/* 81511E3C | CB A1 00 F0 */	lfd f29, 0xf0(r1)
/* 81511E40 | E3 81 00 E8 */	psq_l f28, 0xe8(r1), 0, qr0
/* 81511E44 | CB 81 00 E0 */	lfd f28, 0xe0(r1)
/* 81511E48 | E3 61 00 D8 */	psq_l f27, 0xd8(r1), 0, qr0
/* 81511E4C | CB 61 00 D0 */	lfd f27, 0xd0(r1)
/* 81511E50 | E3 41 00 C8 */	psq_l f26, 0xc8(r1), 0, qr0
/* 81511E54 | CB 41 00 C0 */	lfd f26, 0xc0(r1)
/* 81511E58 | E3 21 00 B8 */	psq_l f25, 0xb8(r1), 0, qr0
/* 81511E5C | CB 21 00 B0 */	lfd f25, 0xb0(r1)
/* 81511E60 | E3 01 00 A8 */	psq_l f24, 0xa8(r1), 0, qr0
/* 81511E64 | CB 01 00 A0 */	lfd f24, 0xa0(r1)
/* 81511E68 | E2 E1 00 98 */	psq_l f23, 0x98(r1), 0, qr0
/* 81511E6C | CA E1 00 90 */	lfd f23, 0x90(r1)
/* 81511E70 | E2 C1 00 88 */	psq_l f22, 0x88(r1), 0, qr0
/* 81511E74 | CA C1 00 80 */	lfd f22, 0x80(r1)
/* 81511E78 | E2 A1 00 78 */	psq_l f21, 0x78(r1), 0, qr0
/* 81511E7C | 39 61 00 70 */	addi r11, r1, 0x70
/* 81511E80 | CA A1 00 70 */	lfd f21, 0x70(r1)
/* 81511E84 | 48 0E 76 81 */	bl _restgpr_25
/* 81511E88 | 80 01 01 24 */	lwz r0, 0x124(r1)
/* 81511E8C | 7C 08 03 A6 */	mtlr r0
/* 81511E90 | 38 21 01 20 */	addi r1, r1, 0x120
/* 81511E94 | 4E 80 00 20 */	blr
.endfn UpdateChannel__Q44nw4r3snd6detail8WsdTrackFv

# .text:0x7A4 | 0x81511E98 | size: 0x144
# nw4r::snd::detail::WsdTrack::Parse(const nw4r::snd::detail::WsdTrack::WsdCallback*, unsigned long, bool)
.fn Parse__Q44nw4r3snd6detail8WsdTrackFPCQ54nw4r3snd6detail8WsdTrack11WsdCallbackUlb, global
/* 81511E98 | 94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 81511E9C | 7C 08 02 A6 */	mflr r0
/* 81511EA0 | 90 01 00 C4 */	stw r0, 0xc4(r1)
/* 81511EA4 | 93 E1 00 BC */	stw r31, 0xbc(r1)
/* 81511EA8 | 93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 81511EAC | 7C 7E 1B 78 */	mr r30, r3
/* 81511EB0 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 81511EB4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81511EB8 | 40 82 00 F4 */	bne .L_81511FAC
/* 81511EBC | 80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 81511EC0 | 7C AA 2B 78 */	mr r10, r5
/* 81511EC4 | 81 84 00 00 */	lwz r12, 0x0(r4)
/* 81511EC8 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81511ECC | 88 E3 00 1D */	lbz r7, 0x1d(r3)
/* 81511ED0 | 7C 83 23 78 */	mr r3, r4
/* 81511ED4 | 88 06 00 90 */	lbz r0, 0x90(r6)
/* 81511ED8 | 38 9E 00 20 */	addi r4, r30, 0x20
/* 81511EDC | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81511EE0 | 38 C1 00 18 */	addi r6, r1, 0x18
/* 81511EE4 | 7F E7 02 14 */	add r31, r7, r0
/* 81511EE8 | 80 FE 00 00 */	lwz r7, 0x0(r30)
/* 81511EEC | 81 1E 00 04 */	lwz r8, 0x4(r30)
/* 81511EF0 | 39 20 00 00 */	li r9, 0x0
/* 81511EF4 | 7D 89 03 A6 */	mtctr r12
/* 81511EF8 | 4E 80 04 21 */	bctrl
/* 81511EFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81511F00 | 40 82 00 0C */	bne .L_81511F0C
/* 81511F04 | 38 60 FF FF */	li r3, -0x1
/* 81511F08 | 48 00 00 BC */	b .L_81511FC4
.L_81511F0C:
/* 81511F0C | 88 01 00 1A */	lbz r0, 0x1a(r1)
/* 81511F10 | 38 60 00 02 */	li r3, 0x2
/* 81511F14 | 80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 81511F18 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81511F1C | 80 84 00 8C */	lwz r4, 0x8c(r4)
/* 81511F20 | 41 81 00 08 */	bgt .L_81511F28
/* 81511F24 | 7C 03 03 78 */	mr r3, r0
.L_81511F28:
/* 81511F28 | 3C C0 81 51 */	lis r6, ChannelCallbackFunc__Q44nw4r3snd6detail8WsdTrackFPQ44nw4r3snd6detail7ChannelQ54nw4r3snd6detail7Channel21ChannelCallbackStatusUl@ha
/* 81511F2C | 7F E5 FB 78 */	mr r5, r31
/* 81511F30 | 7F C7 F3 78 */	mr r7, r30
/* 81511F34 | 38 C6 1F DC */	addi r6, r6, ChannelCallbackFunc__Q44nw4r3snd6detail8WsdTrackFPQ44nw4r3snd6detail7ChannelQ54nw4r3snd6detail7Channel21ChannelCallbackStatusUl@l
/* 81511F38 | 4B FE C3 99 */	bl AllocChannel__Q44nw4r3snd6detail7ChannelFiiiPFPQ44nw4r3snd6detail7ChannelQ54nw4r3snd6detail7Channel21ChannelCallbackStatusUl_vUl
/* 81511F3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81511F40 | 7C 7F 1B 78 */	mr r31, r3
/* 81511F44 | 40 82 00 0C */	bne .L_81511F50
/* 81511F48 | 38 60 FF FF */	li r3, -0x1
/* 81511F4C | 48 00 00 78 */	b .L_81511FC4
.L_81511F50:
/* 81511F50 | 88 81 00 0C */	lbz r4, 0xc(r1)
/* 81511F54 | 38 63 00 08 */	addi r3, r3, 0x8
/* 81511F58 | 4B FE D3 05 */	bl SetAttack__Q44nw4r3snd6detail12EnvGeneratorFi
/* 81511F5C | 88 81 00 0D */	lbz r4, 0xd(r1)
/* 81511F60 | 38 7F 00 08 */	addi r3, r31, 0x8
/* 81511F64 | 4B FE D3 11 */	bl SetDecay__Q44nw4r3snd6detail12EnvGeneratorFi
/* 81511F68 | 88 81 00 0E */	lbz r4, 0xe(r1)
/* 81511F6C | 38 7F 00 08 */	addi r3, r31, 0x8
/* 81511F70 | 4B FE D3 A5 */	bl SetSustain__Q44nw4r3snd6detail12EnvGeneratorFi
/* 81511F74 | 88 81 00 0F */	lbz r4, 0xf(r1)
/* 81511F78 | 38 7F 00 08 */	addi r3, r31, 0x8
/* 81511F7C | 4B FE D3 A1 */	bl SetRelease__Q44nw4r3snd6detail12EnvGeneratorFi
/* 81511F80 | 7F E3 FB 78 */	mr r3, r31
/* 81511F84 | 38 81 00 18 */	addi r4, r1, 0x18
/* 81511F88 | 38 A0 FF FF */	li r5, -0x1
/* 81511F8C | 4B FE BF C9 */	bl Start__Q44nw4r3snd6detail7ChannelFRCQ44nw4r3snd6detail8WaveDatal
/* 81511F90 | 80 1E 00 30 */	lwz r0, 0x30(r30)
/* 81511F94 | 90 1F 00 E4 */	stw r0, 0xe4(r31)
/* 81511F98 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 81511F9C | 93 FE 00 30 */	stw r31, 0x30(r30)
/* 81511FA0 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81511FA4 | 90 1E 00 08 */	stw r0, 0x8(r30)
/* 81511FA8 | 48 00 00 18 */	b .L_81511FC0
.L_81511FAC:
/* 81511FAC | 80 03 00 30 */	lwz r0, 0x30(r3)
/* 81511FB0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81511FB4 | 40 82 00 0C */	bne .L_81511FC0
/* 81511FB8 | 38 60 FF FF */	li r3, -0x1
/* 81511FBC | 48 00 00 08 */	b .L_81511FC4
.L_81511FC0:
/* 81511FC0 | 38 60 00 00 */	li r3, 0x0
.L_81511FC4:
/* 81511FC4 | 80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 81511FC8 | 83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 81511FCC | 83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 81511FD0 | 7C 08 03 A6 */	mtlr r0
/* 81511FD4 | 38 21 00 C0 */	addi r1, r1, 0xc0
/* 81511FD8 | 4E 80 00 20 */	blr
.endfn Parse__Q44nw4r3snd6detail8WsdTrackFPCQ54nw4r3snd6detail8WsdTrack11WsdCallbackUlb

# .text:0x8E8 | 0x81511FDC | size: 0x80
# nw4r::snd::detail::WsdTrack::ChannelCallbackFunc(nw4r::snd::detail::Channel*, nw4r::snd::detail::Channel::ChannelCallbackStatus, unsigned long)
.fn ChannelCallbackFunc__Q44nw4r3snd6detail8WsdTrackFPQ44nw4r3snd6detail7ChannelQ54nw4r3snd6detail7Channel21ChannelCallbackStatusUl, global
/* 81511FDC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81511FE0 | 7C 08 02 A6 */	mflr r0
/* 81511FE4 | 2C 04 00 02 */	cmpwi r4, 0x2
/* 81511FE8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81511FEC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81511FF0 | 7C BF 2B 78 */	mr r31, r5
/* 81511FF4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81511FF8 | 7C 7E 1B 78 */	mr r30, r3
/* 81511FFC | 40 82 00 08 */	bne .L_81512004
/* 81512000 | 4B FE C4 3D */	bl FreeChannel__Q44nw4r3snd6detail7ChannelFPQ44nw4r3snd6detail7Channel
.L_81512004:
/* 81512004 | 80 7F 00 30 */	lwz r3, 0x30(r31)
/* 81512008 | 7C 03 F0 40 */	cmplw r3, r30
/* 8151200C | 40 82 00 2C */	bne .L_81512038
/* 81512010 | 80 1E 00 E4 */	lwz r0, 0xe4(r30)
/* 81512014 | 90 1F 00 30 */	stw r0, 0x30(r31)
/* 81512018 | 48 00 00 2C */	b .L_81512044
/* 8151201C | 48 00 00 1C */	b .L_81512038
.L_81512020:
/* 81512020 | 7C 00 F0 40 */	cmplw r0, r30
/* 81512024 | 40 82 00 10 */	bne .L_81512034
/* 81512028 | 80 1E 00 E4 */	lwz r0, 0xe4(r30)
/* 8151202C | 90 03 00 E4 */	stw r0, 0xe4(r3)
/* 81512030 | 48 00 00 14 */	b .L_81512044
.L_81512034:
/* 81512034 | 7C 03 03 78 */	mr r3, r0
.L_81512038:
/* 81512038 | 80 03 00 E4 */	lwz r0, 0xe4(r3)
/* 8151203C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81512040 | 40 82 FF E0 */	bne .L_81512020
.L_81512044:
/* 81512044 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81512048 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8151204C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81512050 | 7C 08 03 A6 */	mtlr r0
/* 81512054 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81512058 | 4E 80 00 20 */	blr
.endfn ChannelCallbackFunc__Q44nw4r3snd6detail8WsdTrackFPQ44nw4r3snd6detail7ChannelQ54nw4r3snd6detail7Channel21ChannelCallbackStatusUl

# 0x81695418..0x81695440 | size: 0x28
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81695418 | size: 0x4
.obj lbl_81695418, global
	.float 1
.endobj lbl_81695418

# .sdata2:0x4 | 0x8169541C | size: 0x4
.obj lbl_8169541C, global
	.float 0
.endobj lbl_8169541C

# .sdata2:0x8 | 0x81695420 | size: 0x4
.obj lbl_81695420, global
	.float 63
.endobj lbl_81695420

# .sdata2:0xC | 0x81695424 | size: 0x4
.obj lbl_81695424, global
	.float 0.015625
.endobj lbl_81695424

# .sdata2:0x10 | 0x81695428 | size: 0x4
.obj lbl_81695428, global
	.float 127
.endobj lbl_81695428

# .sdata2:0x14 | 0x8169542C | size: 0x4
.obj gap_09_8169542C_sdata2, global
.hidden gap_09_8169542C_sdata2
	.4byte 0x00000000
.endobj gap_09_8169542C_sdata2

# .sdata2:0x18 | 0x81695430 | size: 0x8
.obj lbl_81695430, global
	.double 4503601774854144
.endobj lbl_81695430

# .sdata2:0x20 | 0x81695438 | size: 0x8
.obj lbl_81695438, global
	.double 4503599627370496
.endobj lbl_81695438
