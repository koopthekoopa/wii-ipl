.include "macros.inc"
.file "BannerSoundPlayer.cpp"

# 0x8140E63C..0x8140EC60 | size: 0x624
.text
.balign 4

# .text:0x0 | 0x8140E63C | size: 0x60
# BannerSoundPlayer::BannerSoundPlayer()
.fn __ct__17BannerSoundPlayerFv, global
/* 8140E63C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140E640 | 7C 08 02 A6 */	mflr r0
/* 8140E644 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140E648 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8140E64C | 7C 7F 1B 78 */	mr r31, r3
/* 8140E650 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8140E654 | 48 00 05 61 */	bl __ct__15SndMoveValueF32Fv
/* 8140E658 | 38 7F 00 18 */	addi r3, r31, 0x18
/* 8140E65C | 4B FF EA 11 */	bl __ct__16SimpleWavePlayerFv
/* 8140E660 | C0 02 88 C0 */	lfs f0, lbl_81694CC0@sda21(r0)
/* 8140E664 | 38 00 00 00 */	li r0, 0x0
/* 8140E668 | 90 1F 05 00 */	stw r0, 0x500(r31)
/* 8140E66C | 7F E3 FB 78 */	mr r3, r31
/* 8140E670 | D0 1F 05 04 */	stfs f0, 0x504(r31)
/* 8140E674 | 90 1F 05 08 */	stw r0, 0x508(r31)
/* 8140E678 | 90 1F 05 0C */	stw r0, 0x50c(r31)
/* 8140E67C | 98 1F 05 10 */	stb r0, 0x510(r31)
/* 8140E680 | 98 1F 00 01 */	stb r0, 0x1(r31)
/* 8140E684 | D0 1F 05 14 */	stfs f0, 0x514(r31)
/* 8140E688 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8140E68C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140E690 | 7C 08 03 A6 */	mtlr r0
/* 8140E694 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140E698 | 4E 80 00 20 */	blr
.endfn __ct__17BannerSoundPlayerFv

# .text:0x60 | 0x8140E69C | size: 0x64
# BannerSoundPlayer::~BannerSoundPlayer()
.fn __dt__17BannerSoundPlayerFv, global
/* 8140E69C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140E6A0 | 7C 08 02 A6 */	mflr r0
/* 8140E6A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140E6A8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140E6AC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8140E6B0 | 7C 9F 23 78 */	mr r31, r4
/* 8140E6B4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8140E6B8 | 7C 7E 1B 78 */	mr r30, r3
/* 8140E6BC | 41 82 00 28 */	beq .L_8140E6E4
/* 8140E6C0 | 38 80 00 00 */	li r4, 0x0
/* 8140E6C4 | 48 00 02 55 */	bl stop__17BannerSoundPlayerFUl
/* 8140E6C8 | 38 7E 00 18 */	addi r3, r30, 0x18
/* 8140E6CC | 38 80 FF FF */	li r4, -0x1
/* 8140E6D0 | 4B FF EB 15 */	bl __dt__16SimpleWavePlayerFv
/* 8140E6D4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8140E6D8 | 40 81 00 0C */	ble .L_8140E6E4
/* 8140E6DC | 7F C3 F3 78 */	mr r3, r30
/* 8140E6E0 | 48 1E 9A 05 */	bl __dl__FPv
.L_8140E6E4:
/* 8140E6E4 | 7F C3 F3 78 */	mr r3, r30
/* 8140E6E8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8140E6EC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8140E6F0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140E6F4 | 7C 08 03 A6 */	mtlr r0
/* 8140E6F8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140E6FC | 4E 80 00 20 */	blr
.endfn __dt__17BannerSoundPlayerFv

# .text:0xC4 | 0x8140E700 | size: 0x74
# BannerSoundPlayer::init(long)
.fn init__17BannerSoundPlayerFl, global
/* 8140E700 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140E704 | 7C 08 02 A6 */	mflr r0
/* 8140E708 | 38 A0 00 00 */	li r5, 0x0
/* 8140E70C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8140E710 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140E714 | 38 00 00 03 */	li r0, 0x3
/* 8140E718 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8140E71C | 7C 7F 1B 78 */	mr r31, r3
/* 8140E720 | 98 A3 00 00 */	stb r5, 0x0(r3)
/* 8140E724 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 8140E728 | 41 80 00 18 */	blt .L_8140E740
/* 8140E72C | 3C A0 81 0C */	lis r5, lbl_810C2580@ha
/* 8140E730 | 38 C0 40 00 */	li r6, 0x4000
/* 8140E734 | 38 A5 25 80 */	addi r5, r5, lbl_810C2580@l
/* 8140E738 | 38 63 00 18 */	addi r3, r3, 0x18
/* 8140E73C | 4B FF F1 65 */	bl makeThread__16SimpleWavePlayerFlPvUl
.L_8140E740:
/* 8140E740 | 80 8D AC B0 */	lwz r4, pBSWaveBuffer@sda21(r0)
/* 8140E744 | 38 7F 00 18 */	addi r3, r31, 0x18
/* 8140E748 | 38 A0 30 00 */	li r5, 0x3000
/* 8140E74C | 4B FF EB 25 */	bl setBuffer__16SimpleWavePlayerFPsUl
/* 8140E750 | 38 7F 05 00 */	addi r3, r31, 0x500
/* 8140E754 | 4B FF F6 C9 */	bl init__19AxAdpcmSimplePlayerFv
/* 8140E758 | 38 00 00 01 */	li r0, 0x1
/* 8140E75C | 98 1F 00 01 */	stb r0, 0x1(r31)
/* 8140E760 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8140E764 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140E768 | 7C 08 03 A6 */	mtlr r0
/* 8140E76C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140E770 | 4E 80 00 20 */	blr
.endfn init__17BannerSoundPlayerFl

# .text:0x138 | 0x8140E774 | size: 0x44
# BannerSoundPlayer::checkHeader(void*, unsigned long)
.fn checkHeader__17BannerSoundPlayerFPvUl, global
/* 8140E774 | 80 64 00 00 */	lwz r3, 0x0(r4)
/* 8140E778 | 3C 03 AD B7 */	subis r0, r3, 0x5249
/* 8140E77C | 28 00 46 46 */	cmplwi r0, 0x4646
/* 8140E780 | 40 82 00 0C */	bne .L_8140E78C
/* 8140E784 | 38 60 00 00 */	li r3, 0x0
/* 8140E788 | 4E 80 00 20 */	blr
.L_8140E78C:
/* 8140E78C | 3C 03 B9 B1 */	subis r0, r3, 0x464f
/* 8140E790 | 28 00 52 4D */	cmplwi r0, 0x524d
/* 8140E794 | 40 82 00 0C */	bne .L_8140E7A0
/* 8140E798 | 38 60 00 01 */	li r3, 0x1
/* 8140E79C | 4E 80 00 20 */	blr
.L_8140E7A0:
/* 8140E7A0 | 3C 03 BD B2 */	subis r0, r3, 0x424e
/* 8140E7A4 | 38 60 00 04 */	li r3, 0x4
/* 8140E7A8 | 28 00 53 20 */	cmplwi r0, 0x5320
/* 8140E7AC | 4C 82 00 20 */	bnelr
/* 8140E7B0 | 38 60 00 02 */	li r3, 0x2
/* 8140E7B4 | 4E 80 00 20 */	blr
.endfn checkHeader__17BannerSoundPlayerFPvUl

# .text:0x17C | 0x8140E7B8 | size: 0x48
# BannerSoundPlayer::checkData(void*, unsigned long, bool)
.fn checkData__17BannerSoundPlayerFPvUlb, global
/* 8140E7B8 | 80 E4 00 00 */	lwz r7, 0x0(r4)
/* 8140E7BC | 3C 07 AD B7 */	subis r0, r7, 0x5249
/* 8140E7C0 | 28 00 46 46 */	cmplwi r0, 0x4646
/* 8140E7C4 | 40 82 00 0C */	bne .L_8140E7D0
/* 8140E7C8 | 38 63 01 00 */	addi r3, r3, 0x100
/* 8140E7CC | 48 00 15 8C */	b checkFile__11WaveFileWavFPCvUlb
.L_8140E7D0:
/* 8140E7D0 | 3C 07 B9 B1 */	subis r0, r7, 0x464f
/* 8140E7D4 | 28 00 52 4D */	cmplwi r0, 0x524d
/* 8140E7D8 | 40 82 00 0C */	bne .L_8140E7E4
/* 8140E7DC | 38 63 00 D0 */	addi r3, r3, 0xd0
/* 8140E7E0 | 48 00 0B A8 */	b checkFile__12WaveFileAiffFPCvUlb
.L_8140E7E4:
/* 8140E7E4 | 3C 07 BD B2 */	subis r0, r7, 0x424e
/* 8140E7E8 | 28 00 53 20 */	cmplwi r0, 0x5320
/* 8140E7EC | 40 82 00 0C */	bne .L_8140E7F8
/* 8140E7F0 | 38 63 05 00 */	addi r3, r3, 0x500
/* 8140E7F4 | 4B FF F4 B4 */	b checkFile__19AxAdpcmSimplePlayerFPvUl
.L_8140E7F8:
/* 8140E7F8 | 38 60 00 00 */	li r3, 0x0
/* 8140E7FC | 4E 80 00 20 */	blr
.endfn checkData__17BannerSoundPlayerFPvUlb

# .text:0x1C4 | 0x8140E800 | size: 0x118
# BannerSoundPlayer::start(void*, unsigned long)
.fn start__17BannerSoundPlayerFPvUl, global
/* 8140E800 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8140E804 | 7C 08 02 A6 */	mflr r0
/* 8140E808 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8140E80C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8140E810 | 48 1E AC B5 */	bl _savegpr_28
/* 8140E814 | 7C 9D 23 78 */	mr r29, r4
/* 8140E818 | 7C 7C 1B 78 */	mr r28, r3
/* 8140E81C | 7C BE 2B 78 */	mr r30, r5
/* 8140E820 | 3B E0 00 00 */	li r31, 0x0
/* 8140E824 | 38 80 00 00 */	li r4, 0x0
/* 8140E828 | 48 00 00 F1 */	bl stop__17BannerSoundPlayerFUl
/* 8140E82C | 7F 83 E3 78 */	mr r3, r28
/* 8140E830 | 7F A4 EB 78 */	mr r4, r29
/* 8140E834 | 7F C5 F3 78 */	mr r5, r30
/* 8140E838 | 4B FF FF 3D */	bl checkHeader__17BannerSoundPlayerFPvUl
/* 8140E83C | C0 02 88 C0 */	lfs f0, lbl_81694CC0@sda21(r0)
/* 8140E840 | 38 00 00 00 */	li r0, 0x0
/* 8140E844 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 8140E848 | 90 7C 00 14 */	stw r3, 0x14(r28)
/* 8140E84C | 90 1C 00 04 */	stw r0, 0x4(r28)
/* 8140E850 | D0 1C 00 0C */	stfs f0, 0xc(r28)
/* 8140E854 | 41 82 00 74 */	beq .L_8140E8C8
/* 8140E858 | 40 80 00 14 */	bge .L_8140E86C
/* 8140E85C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140E860 | 41 82 00 18 */	beq .L_8140E878
/* 8140E864 | 40 80 00 3C */	bge .L_8140E8A0
/* 8140E868 | 48 00 00 90 */	b .L_8140E8F8
.L_8140E86C:
/* 8140E86C | 2C 03 00 04 */	cmpwi r3, 0x4
/* 8140E870 | 41 82 00 88 */	beq .L_8140E8F8
/* 8140E874 | 48 00 00 84 */	b .L_8140E8F8
.L_8140E878:
/* 8140E878 | C0 1C 05 14 */	lfs f0, 0x514(r28)
/* 8140E87C | 7F A4 EB 78 */	mr r4, r29
/* 8140E880 | 7F C5 F3 78 */	mr r5, r30
/* 8140E884 | 38 7C 00 18 */	addi r3, r28, 0x18
/* 8140E888 | D0 1C 00 48 */	stfs f0, 0x48(r28)
/* 8140E88C | 4B FF EA 6D */	bl setWavData__16SimpleWavePlayerFPvUl
/* 8140E890 | 38 7C 00 18 */	addi r3, r28, 0x18
/* 8140E894 | 4B FF EE 49 */	bl start__16SimpleWavePlayerFv
/* 8140E898 | 7C 7F 1B 78 */	mr r31, r3
/* 8140E89C | 48 00 00 5C */	b .L_8140E8F8
.L_8140E8A0:
/* 8140E8A0 | C0 1C 05 14 */	lfs f0, 0x514(r28)
/* 8140E8A4 | 7F A4 EB 78 */	mr r4, r29
/* 8140E8A8 | 7F C5 F3 78 */	mr r5, r30
/* 8140E8AC | 38 7C 00 18 */	addi r3, r28, 0x18
/* 8140E8B0 | D0 1C 00 48 */	stfs f0, 0x48(r28)
/* 8140E8B4 | 4B FF EC 59 */	bl setAiffData__16SimpleWavePlayerFPvUl
/* 8140E8B8 | 38 7C 00 18 */	addi r3, r28, 0x18
/* 8140E8BC | 4B FF EE 21 */	bl start__16SimpleWavePlayerFv
/* 8140E8C0 | 7C 7F 1B 78 */	mr r31, r3
/* 8140E8C4 | 48 00 00 34 */	b .L_8140E8F8
.L_8140E8C8:
/* 8140E8C8 | C0 3C 05 14 */	lfs f1, 0x514(r28)
/* 8140E8CC | 38 7C 05 00 */	addi r3, r28, 0x500
/* 8140E8D0 | 38 9C 05 08 */	addi r4, r28, 0x508
/* 8140E8D4 | 4B FF FC 95 */	bl setVolume__19AxAdpcmSimplePlayerFP13AxAdpcmHandlef
/* 8140E8D8 | 7F A4 EB 78 */	mr r4, r29
/* 8140E8DC | 7F C5 F3 78 */	mr r5, r30
/* 8140E8E0 | 38 7C 05 00 */	addi r3, r28, 0x500
/* 8140E8E4 | 38 DC 05 08 */	addi r6, r28, 0x508
/* 8140E8E8 | 4B FF F5 A1 */	bl start__19AxAdpcmSimplePlayerFPvUlP13AxAdpcmHandle
/* 8140E8EC | 7C 03 00 D0 */	neg r0, r3
/* 8140E8F0 | 7C 00 18 78 */	andc r0, r0, r3
/* 8140E8F4 | 54 1F 0F FE */	srwi r31, r0, 31
.L_8140E8F8:
/* 8140E8F8 | 9B FC 00 00 */	stb r31, 0x0(r28)
/* 8140E8FC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8140E900 | 7F E3 FB 78 */	mr r3, r31
/* 8140E904 | 48 1E AC 0D */	bl _restgpr_28
/* 8140E908 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8140E90C | 7C 08 03 A6 */	mtlr r0
/* 8140E910 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8140E914 | 4E 80 00 20 */	blr
.endfn start__17BannerSoundPlayerFPvUl

# .text:0x2DC | 0x8140E918 | size: 0xB0
# BannerSoundPlayer::stop(unsigned long)
.fn stop__17BannerSoundPlayerFUl, global
/* 8140E918 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140E91C | 7C 08 02 A6 */	mflr r0
/* 8140E920 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140E924 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8140E928 | 7C 7F 1B 78 */	mr r31, r3
/* 8140E92C | 80 A3 00 14 */	lwz r5, 0x14(r3)
/* 8140E930 | 2C 05 00 04 */	cmpwi r5, 0x4
/* 8140E934 | 41 82 00 80 */	beq .L_8140E9B4
/* 8140E938 | 2C 85 00 03 */	cmpwi cr1, r5, 0x3
/* 8140E93C | 41 86 00 78 */	beq cr1, .L_8140E9B4
/* 8140E940 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 8140E944 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140E948 | 40 82 00 08 */	bne .L_8140E950
/* 8140E94C | 48 00 00 68 */	b .L_8140E9B4
.L_8140E950:
/* 8140E950 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8140E954 | 40 82 00 54 */	bne .L_8140E9A8
/* 8140E958 | 2C 05 00 01 */	cmpwi r5, 0x1
/* 8140E95C | 41 82 00 28 */	beq .L_8140E984
/* 8140E960 | 40 80 00 10 */	bge .L_8140E970
/* 8140E964 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8140E968 | 40 80 00 10 */	bge .L_8140E978
/* 8140E96C | 48 00 00 30 */	b .L_8140E99C
.L_8140E970:
/* 8140E970 | 40 84 00 2C */	bge cr1, .L_8140E99C
/* 8140E974 | 48 00 00 1C */	b .L_8140E990
.L_8140E978:
/* 8140E978 | 38 63 00 18 */	addi r3, r3, 0x18
/* 8140E97C | 4B FF EE 2D */	bl stop__16SimpleWavePlayerFv
/* 8140E980 | 48 00 00 1C */	b .L_8140E99C
.L_8140E984:
/* 8140E984 | 38 63 00 18 */	addi r3, r3, 0x18
/* 8140E988 | 4B FF EE 21 */	bl stop__16SimpleWavePlayerFv
/* 8140E98C | 48 00 00 10 */	b .L_8140E99C
.L_8140E990:
/* 8140E990 | 38 63 05 00 */	addi r3, r3, 0x500
/* 8140E994 | 38 9F 05 08 */	addi r4, r31, 0x508
/* 8140E998 | 4B FF FA F1 */	bl stop__19AxAdpcmSimplePlayerFP13AxAdpcmHandle
.L_8140E99C:
/* 8140E99C | 38 00 00 00 */	li r0, 0x0
/* 8140E9A0 | 98 1F 00 00 */	stb r0, 0x0(r31)
/* 8140E9A4 | 48 00 00 10 */	b .L_8140E9B4
.L_8140E9A8:
/* 8140E9A8 | C0 22 88 C4 */	lfs f1, lbl_81694CC4@sda21(r0)
/* 8140E9AC | 38 63 00 04 */	addi r3, r3, 0x4
/* 8140E9B0 | 48 00 02 21 */	bl moveValue__15SndMoveValueF32FfUl
.L_8140E9B4:
/* 8140E9B4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140E9B8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8140E9BC | 7C 08 03 A6 */	mtlr r0
/* 8140E9C0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140E9C4 | 4E 80 00 20 */	blr
.endfn stop__17BannerSoundPlayerFUl

# .text:0x38C | 0x8140E9C8 | size: 0x60
# BannerSoundPlayer::pause(bool)
.fn pause__17BannerSoundPlayerFb, global
/* 8140E9C8 | 80 A3 00 14 */	lwz r5, 0x14(r3)
/* 8140E9CC | 2C 05 00 04 */	cmpwi r5, 0x4
/* 8140E9D0 | 4D 82 00 20 */	beqlr
/* 8140E9D4 | 2C 85 00 03 */	cmpwi cr1, r5, 0x3
/* 8140E9D8 | 4D 86 00 20 */	beqlr cr1
/* 8140E9DC | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 8140E9E0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140E9E4 | 40 82 00 08 */	bne .L_8140E9EC
/* 8140E9E8 | 4E 80 00 20 */	blr
.L_8140E9EC:
/* 8140E9EC | 2C 05 00 01 */	cmpwi r5, 0x1
/* 8140E9F0 | 41 82 00 24 */	beq .L_8140EA14
/* 8140E9F4 | 40 80 00 10 */	bge .L_8140EA04
/* 8140E9F8 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8140E9FC | 40 80 00 10 */	bge .L_8140EA0C
/* 8140EA00 | 4E 80 00 20 */	blr
.L_8140EA04:
/* 8140EA04 | 4C 84 00 20 */	bgelr cr1
/* 8140EA08 | 48 00 00 14 */	b .L_8140EA1C
.L_8140EA0C:
/* 8140EA0C | 38 63 00 18 */	addi r3, r3, 0x18
/* 8140EA10 | 48 10 12 A8 */	b Pause__Q34nw4r3snd10WavePlayerFb
.L_8140EA14:
/* 8140EA14 | 38 63 00 18 */	addi r3, r3, 0x18
/* 8140EA18 | 48 10 12 A0 */	b Pause__Q34nw4r3snd10WavePlayerFb
.L_8140EA1C:
/* 8140EA1C | 38 63 05 00 */	addi r3, r3, 0x500
/* 8140EA20 | 4B FF FB 04 */	b pause__19AxAdpcmSimplePlayerFb
/* 8140EA24 | 4E 80 00 20 */	blr
.endfn pause__17BannerSoundPlayerFb

# .text:0x3EC | 0x8140EA28 | size: 0x120
# BannerSoundPlayer::calc()
.fn calc__17BannerSoundPlayerFv, global
/* 8140EA28 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140EA2C | 7C 08 02 A6 */	mflr r0
/* 8140EA30 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140EA34 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8140EA38 | 7C 7F 1B 78 */	mr r31, r3
/* 8140EA3C | 38 63 00 04 */	addi r3, r3, 0x4
/* 8140EA40 | 48 00 01 DD */	bl update__15SndMoveValueF32Fv
/* 8140EA44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140EA48 | 41 82 00 84 */	beq .L_8140EACC
/* 8140EA4C | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 8140EA50 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140EA54 | 40 82 00 14 */	bne .L_8140EA68
/* 8140EA58 | 7F E3 FB 78 */	mr r3, r31
/* 8140EA5C | 38 80 00 00 */	li r4, 0x0
/* 8140EA60 | 4B FF FE B9 */	bl stop__17BannerSoundPlayerFUl
/* 8140EA64 | 48 00 00 68 */	b .L_8140EACC
.L_8140EA68:
/* 8140EA68 | 80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8140EA6C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8140EA70 | 41 82 00 34 */	beq .L_8140EAA4
/* 8140EA74 | 40 80 00 10 */	bge .L_8140EA84
/* 8140EA78 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140EA7C | 40 80 00 14 */	bge .L_8140EA90
/* 8140EA80 | 48 00 00 4C */	b .L_8140EACC
.L_8140EA84:
/* 8140EA84 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 8140EA88 | 40 80 00 44 */	bge .L_8140EACC
/* 8140EA8C | 48 00 00 2C */	b .L_8140EAB8
.L_8140EA90:
/* 8140EA90 | C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8140EA94 | C0 1F 05 14 */	lfs f0, 0x514(r31)
/* 8140EA98 | EC 00 00 72 */	fmuls f0, f0, f1
/* 8140EA9C | D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 8140EAA0 | 48 00 00 2C */	b .L_8140EACC
.L_8140EAA4:
/* 8140EAA4 | C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8140EAA8 | C0 1F 05 14 */	lfs f0, 0x514(r31)
/* 8140EAAC | EC 00 00 72 */	fmuls f0, f0, f1
/* 8140EAB0 | D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 8140EAB4 | 48 00 00 18 */	b .L_8140EACC
.L_8140EAB8:
/* 8140EAB8 | C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8140EABC | 38 7F 05 08 */	addi r3, r31, 0x508
/* 8140EAC0 | C0 1F 05 14 */	lfs f0, 0x514(r31)
/* 8140EAC4 | EC 20 00 72 */	fmuls f1, f0, f1
/* 8140EAC8 | 4B FF F8 B1 */	bl setVolume__13AxAdpcmHandleFf
.L_8140EACC:
/* 8140EACC | 38 7F 05 00 */	addi r3, r31, 0x500
/* 8140EAD0 | 4B FF FA E1 */	bl calc__19AxAdpcmSimplePlayerFv
/* 8140EAD4 | 38 7F 00 18 */	addi r3, r31, 0x18
/* 8140EAD8 | 4B FF EC DD */	bl update__16SimpleWavePlayerFv
/* 8140EADC | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 8140EAE0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140EAE4 | 41 82 00 50 */	beq .L_8140EB34
/* 8140EAE8 | 80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8140EAEC | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8140EAF0 | 41 82 00 20 */	beq .L_8140EB10
/* 8140EAF4 | 40 80 00 40 */	bge .L_8140EB34
/* 8140EAF8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140EAFC | 40 80 00 08 */	bge .L_8140EB04
/* 8140EB00 | 48 00 00 34 */	b .L_8140EB34
.L_8140EB04:
/* 8140EB04 | 88 1F 00 CA */	lbz r0, 0xca(r31)
/* 8140EB08 | 98 1F 00 00 */	stb r0, 0x0(r31)
/* 8140EB0C | 48 00 00 28 */	b .L_8140EB34
.L_8140EB10:
/* 8140EB10 | 80 7F 05 08 */	lwz r3, 0x508(r31)
/* 8140EB14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140EB18 | 40 82 00 0C */	bne .L_8140EB24
/* 8140EB1C | 38 00 00 00 */	li r0, 0x0
/* 8140EB20 | 48 00 00 10 */	b .L_8140EB30
.L_8140EB24:
/* 8140EB24 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8140EB28 | 30 03 FF FF */	subic r0, r3, 0x1
/* 8140EB2C | 7C 00 19 10 */	subfe r0, r0, r3
.L_8140EB30:
/* 8140EB30 | 98 1F 00 00 */	stb r0, 0x0(r31)
.L_8140EB34:
/* 8140EB34 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140EB38 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8140EB3C | 7C 08 03 A6 */	mtlr r0
/* 8140EB40 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140EB44 | 4E 80 00 20 */	blr
.endfn calc__17BannerSoundPlayerFv

# .text:0x50C | 0x8140EB48 | size: 0x6C
# BannerSoundPlayer::setMasterVolume(float)
.fn setMasterVolume__17BannerSoundPlayerFf, global
/* 8140EB48 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8140EB4C | D0 23 05 14 */	stfs f1, 0x514(r3)
/* 8140EB50 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8140EB54 | 41 82 00 34 */	beq .L_8140EB88
/* 8140EB58 | 40 80 00 10 */	bge .L_8140EB68
/* 8140EB5C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140EB60 | 40 80 00 14 */	bge .L_8140EB74
/* 8140EB64 | 4E 80 00 20 */	blr
.L_8140EB68:
/* 8140EB68 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 8140EB6C | 4C 80 00 20 */	bgelr
/* 8140EB70 | 48 00 00 2C */	b .L_8140EB9C
.L_8140EB74:
/* 8140EB74 | FC 00 08 18 */	frsp f0, f1
/* 8140EB78 | C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8140EB7C | EC 00 00 72 */	fmuls f0, f0, f1
/* 8140EB80 | D0 03 00 48 */	stfs f0, 0x48(r3)
/* 8140EB84 | 4E 80 00 20 */	blr
.L_8140EB88:
/* 8140EB88 | FC 00 08 18 */	frsp f0, f1
/* 8140EB8C | C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8140EB90 | EC 00 00 72 */	fmuls f0, f0, f1
/* 8140EB94 | D0 03 00 48 */	stfs f0, 0x48(r3)
/* 8140EB98 | 4E 80 00 20 */	blr
.L_8140EB9C:
/* 8140EB9C | FC 00 08 18 */	frsp f0, f1
/* 8140EBA0 | C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8140EBA4 | 38 63 05 08 */	addi r3, r3, 0x508
/* 8140EBA8 | EC 20 00 72 */	fmuls f1, f0, f1
/* 8140EBAC | 4B FF F7 CC */	b setVolume__13AxAdpcmHandleFf
/* 8140EBB0 | 4E 80 00 20 */	blr
.endfn setMasterVolume__17BannerSoundPlayerFf

# .text:0x578 | 0x8140EBB4 | size: 0x1C
# SndMoveValueF32::SndMoveValueF32()
.fn __ct__15SndMoveValueF32Fv, global
/* 8140EBB4 | C0 02 88 C0 */	lfs f0, lbl_81694CC0@sda21(r0)
/* 8140EBB8 | 38 00 00 00 */	li r0, 0x0
/* 8140EBBC | 90 03 00 00 */	stw r0, 0x0(r3)
/* 8140EBC0 | D0 03 00 04 */	stfs f0, 0x4(r3)
/* 8140EBC4 | D0 03 00 08 */	stfs f0, 0x8(r3)
/* 8140EBC8 | D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8140EBCC | 4E 80 00 20 */	blr
.endfn __ct__15SndMoveValueF32Fv

# .text:0x594 | 0x8140EBD0 | size: 0x4C
# SndMoveValueF32::moveValue(float, unsigned long)
.fn moveValue__15SndMoveValueF32FfUl, global
/* 8140EBD0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140EBD4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8140EBD8 | D0 23 00 04 */	stfs f1, 0x4(r3)
/* 8140EBDC | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8140EBE0 | 40 82 00 0C */	bne .L_8140EBEC
/* 8140EBE4 | D0 23 00 08 */	stfs f1, 0x8(r3)
/* 8140EBE8 | 48 00 00 2C */	b .L_8140EC14
.L_8140EBEC:
/* 8140EBEC | 3C 00 43 30 */	lis r0, 0x4330
/* 8140EBF0 | C0 03 00 08 */	lfs f0, 0x8(r3)
/* 8140EBF4 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 8140EBF8 | C8 42 88 C8 */	lfd f2, lbl_81694CC8@sda21(r0)
/* 8140EBFC | EC 20 08 28 */	fsubs f1, f0, f1
/* 8140EC00 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8140EC04 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 8140EC08 | EC 00 10 28 */	fsubs f0, f0, f2
/* 8140EC0C | EC 01 00 24 */	fdivs f0, f1, f0
/* 8140EC10 | D0 03 00 0C */	stfs f0, 0xc(r3)
.L_8140EC14:
/* 8140EC14 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140EC18 | 4E 80 00 20 */	blr
.endfn moveValue__15SndMoveValueF32FfUl

# .text:0x5E0 | 0x8140EC1C | size: 0x44
# SndMoveValueF32::update()
.fn update__15SndMoveValueF32Fv, global
/* 8140EC1C | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8140EC20 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140EC24 | 41 82 00 34 */	beq .L_8140EC58
/* 8140EC28 | 34 00 FF FF */	subic. r0, r0, 0x1
/* 8140EC2C | 90 03 00 00 */	stw r0, 0x0(r3)
/* 8140EC30 | 41 82 00 18 */	beq .L_8140EC48
/* 8140EC34 | C0 23 00 08 */	lfs f1, 0x8(r3)
/* 8140EC38 | C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8140EC3C | EC 01 00 28 */	fsubs f0, f1, f0
/* 8140EC40 | D0 03 00 08 */	stfs f0, 0x8(r3)
/* 8140EC44 | 48 00 00 0C */	b .L_8140EC50
.L_8140EC48:
/* 8140EC48 | C0 03 00 04 */	lfs f0, 0x4(r3)
/* 8140EC4C | D0 03 00 08 */	stfs f0, 0x8(r3)
.L_8140EC50:
/* 8140EC50 | 38 60 00 01 */	li r3, 0x1
/* 8140EC54 | 4E 80 00 20 */	blr
.L_8140EC58:
/* 8140EC58 | 38 60 00 00 */	li r3, 0x0
/* 8140EC5C | 4E 80 00 20 */	blr
.endfn update__15SndMoveValueF32Fv

# 0x81694CC0..0x81694CD0 | size: 0x10
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694CC0 | size: 0x4
.obj lbl_81694CC0, global
	.float 1
.endobj lbl_81694CC0

# .sdata2:0x4 | 0x81694CC4 | size: 0x4
.obj lbl_81694CC4, global
	.float 0
.endobj lbl_81694CC4

# .sdata2:0x8 | 0x81694CC8 | size: 0x8
.obj lbl_81694CC8, global
	.double 4503599627370496
.endobj lbl_81694CC8

# 0x81698CF0..0x81698CF8 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698CF0 | size: 0x4
.obj pBSWaveBuffer, global
	.skip 0x4
.endobj pBSWaveBuffer

# .sbss:0x4 | 0x81698CF4 | size: 0x4
.obj gap_12_81698CF4_sbss, global
.hidden gap_12_81698CF4_sbss
	.skip 0x4
.endobj gap_12_81698CF4_sbss
