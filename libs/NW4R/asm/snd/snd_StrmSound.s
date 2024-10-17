.include "macros.inc"
.file "snd_StrmSound.cpp"

# 0x8150E7C4..0x8150EAD8 | size: 0x314
.text
.balign 4

# .text:0x0 | 0x8150E7C4 | size: 0x5C
# nw4r::snd::detail::StrmSound::StrmSound(nw4r::snd::detail::SoundInstanceManager<nw4r::snd::detail::StrmSound>*)
.fn "__ct__Q44nw4r3snd6detail9StrmSoundFPQ44nw4r3snd6detail50SoundInstanceManager<Q44nw4r3snd6detail9StrmSound>", global
/* 8150E7C4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150E7C8 | 7C 08 02 A6 */	mflr r0
/* 8150E7CC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150E7D0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150E7D4 | 7C 9F 23 78 */	mr r31, r4
/* 8150E7D8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8150E7DC | 7C 7E 1B 78 */	mr r30, r3
/* 8150E7E0 | 4B FE DD 45 */	bl __ct__Q44nw4r3snd6detail10BasicSoundFv
/* 8150E7E4 | 3C 80 81 67 */	lis r4, __vt__Q44nw4r3snd6detail9StrmSound@ha
/* 8150E7E8 | 38 7E 00 D8 */	addi r3, r30, 0xd8
/* 8150E7EC | 38 84 FA A0 */	addi r4, r4, __vt__Q44nw4r3snd6detail9StrmSound@l
/* 8150E7F0 | 90 9E 00 00 */	stw r4, 0x0(r30)
/* 8150E7F4 | 4B FF E0 E5 */	bl __ct__Q44nw4r3snd6detail10StrmPlayerFv
/* 8150E7F8 | 38 00 00 00 */	li r0, 0x0
/* 8150E7FC | 93 FE 05 F8 */	stw r31, 0x5f8(r30)
/* 8150E800 | 7F C3 F3 78 */	mr r3, r30
/* 8150E804 | 90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 8150E808 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8150E80C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8150E810 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150E814 | 7C 08 03 A6 */	mtlr r0
/* 8150E818 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150E81C | 4E 80 00 20 */	blr
.endfn "__ct__Q44nw4r3snd6detail9StrmSoundFPQ44nw4r3snd6detail50SoundInstanceManager<Q44nw4r3snd6detail9StrmSound>"

# .text:0x5C | 0x8150E820 | size: 0x88
# nw4r::snd::detail::StrmSound::Prepare(nw4r::snd::detail::StrmBufferPool*, nw4r::snd::detail::StrmPlayer::StartOffsetType, long, int, nw4r::snd::detail::StrmPlayer::StrmCallback*, unsigned long)
.fn Prepare__Q44nw4r3snd6detail9StrmSoundFPQ44nw4r3snd6detail14StrmBufferPoolQ54nw4r3snd6detail10StrmPlayer15StartOffsetTypeliPQ54nw4r3snd6detail10StrmPlayer12StrmCallbackUl, global
/* 8150E820 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8150E824 | 7C 08 02 A6 */	mflr r0
/* 8150E828 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8150E82C | 39 61 00 30 */	addi r11, r1, 0x30
/* 8150E830 | 48 0E AC 89 */	bl _savegpr_25
/* 8150E834 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8150E838 | 7C 79 1B 78 */	mr r25, r3
/* 8150E83C | 7C 9A 23 78 */	mr r26, r4
/* 8150E840 | 7C BB 2B 78 */	mr r27, r5
/* 8150E844 | 7C DC 33 78 */	mr r28, r6
/* 8150E848 | 7C FD 3B 78 */	mr r29, r7
/* 8150E84C | 7D 1E 43 78 */	mr r30, r8
/* 8150E850 | 7D 3F 4B 78 */	mr r31, r9
/* 8150E854 | 40 82 00 0C */	bne .L_8150E860
/* 8150E858 | 38 60 00 00 */	li r3, 0x0
/* 8150E85C | 48 00 00 34 */	b .L_8150E890
.L_8150E860:
/* 8150E860 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150E864 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 8150E868 | 7D 89 03 A6 */	mtctr r12
/* 8150E86C | 4E 80 04 21 */	bctrl
/* 8150E870 | 7F 44 D3 78 */	mr r4, r26
/* 8150E874 | 7F 65 DB 78 */	mr r5, r27
/* 8150E878 | 7F 86 E3 78 */	mr r6, r28
/* 8150E87C | 7F A7 EB 78 */	mr r7, r29
/* 8150E880 | 7F C8 F3 78 */	mr r8, r30
/* 8150E884 | 7F E9 FB 78 */	mr r9, r31
/* 8150E888 | 38 79 00 D8 */	addi r3, r25, 0xd8
/* 8150E88C | 4B FF E1 9D */	bl Prepare__Q44nw4r3snd6detail10StrmPlayerFPQ44nw4r3snd6detail14StrmBufferPoolQ54nw4r3snd6detail10StrmPlayer15StartOffsetTypeliPQ54nw4r3snd6detail10StrmPlayer12StrmCallbackUl
.L_8150E890:
/* 8150E890 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8150E894 | 48 0E AC 71 */	bl _restgpr_25
/* 8150E898 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8150E89C | 7C 08 03 A6 */	mtlr r0
/* 8150E8A0 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8150E8A4 | 4E 80 00 20 */	blr
.endfn Prepare__Q44nw4r3snd6detail9StrmSoundFPQ44nw4r3snd6detail14StrmBufferPoolQ54nw4r3snd6detail10StrmPlayer15StartOffsetTypeliPQ54nw4r3snd6detail10StrmPlayer12StrmCallbackUl

# .text:0xE4 | 0x8150E8A8 | size: 0x94
# nw4r::snd::detail::StrmSound::Shutdown()
.fn Shutdown__Q44nw4r3snd6detail9StrmSoundFv, global
/* 8150E8A8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150E8AC | 7C 08 02 A6 */	mflr r0
/* 8150E8B0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8150E8B4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8150E8B8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8150E8BC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8150E8C0 | 7C 7D 1B 78 */	mr r29, r3
/* 8150E8C4 | 4B FE EA 19 */	bl Shutdown__Q44nw4r3snd6detail10BasicSoundFv
/* 8150E8C8 | 83 DD 05 F8 */	lwz r30, 0x5f8(r29)
/* 8150E8CC | 48 02 1F B9 */	bl OSDisableInterrupts
/* 8150E8D0 | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 8150E8D4 | 7C 7F 1B 78 */	mr r31, r3
/* 8150E8D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150E8DC | 40 82 00 0C */	bne .L_8150E8E8
/* 8150E8E0 | 48 02 1F CD */	bl OSRestoreInterrupts
/* 8150E8E4 | 48 00 00 3C */	b .L_8150E920
.L_8150E8E8:
/* 8150E8E8 | 38 7E 00 04 */	addi r3, r30, 0x4
/* 8150E8EC | 38 9D 00 B8 */	addi r4, r29, 0xb8
/* 8150E8F0 | 48 00 3B B1 */	bl fn_815124A0
/* 8150E8F4 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8150E8F8 | 7F A3 EB 78 */	mr r3, r29
/* 8150E8FC | 38 80 FF FF */	li r4, -0x1
/* 8150E900 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8150E904 | 7D 89 03 A6 */	mtctr r12
/* 8150E908 | 4E 80 04 21 */	bctrl
/* 8150E90C | 7F C3 F3 78 */	mr r3, r30
/* 8150E910 | 7F A4 EB 78 */	mr r4, r29
/* 8150E914 | 4B FF 2B C1 */	bl FreeImpl__Q44nw4r3snd6detail8PoolImplFPv
/* 8150E918 | 7F E3 FB 78 */	mr r3, r31
/* 8150E91C | 48 02 1F 91 */	bl OSRestoreInterrupts
.L_8150E920:
/* 8150E920 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150E924 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8150E928 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8150E92C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8150E930 | 7C 08 03 A6 */	mtlr r0
/* 8150E934 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150E938 | 4E 80 00 20 */	blr
.endfn Shutdown__Q44nw4r3snd6detail9StrmSoundFv

# .text:0x178 | 0x8150E93C | size: 0x90
# nw4r::snd::detail::StrmSound::~StrmSound()
.fn __dt__Q44nw4r3snd6detail9StrmSoundFv, global
/* 8150E93C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150E940 | 7C 08 02 A6 */	mflr r0
/* 8150E944 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150E948 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150E94C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150E950 | 7C 9F 23 78 */	mr r31, r4
/* 8150E954 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8150E958 | 7C 7E 1B 78 */	mr r30, r3
/* 8150E95C | 41 82 00 54 */	beq .L_8150E9B0
/* 8150E960 | 34 03 00 D8 */	addic. r0, r3, 0xd8
/* 8150E964 | 41 82 00 3C */	beq .L_8150E9A0
/* 8150E968 | 3C 80 81 51 */	lis r4, __dt__Q54nw4r3snd6detail10StrmPlayer11LoadCommandFv@ha
/* 8150E96C | 38 A0 00 1C */	li r5, 0x1c
/* 8150E970 | 38 84 C9 E8 */	addi r4, r4, __dt__Q54nw4r3snd6detail10StrmPlayer11LoadCommandFv@l
/* 8150E974 | 38 C0 00 20 */	li r6, 0x20
/* 8150E978 | 38 63 01 84 */	addi r3, r3, 0x184
/* 8150E97C | 48 0E A9 7D */	bl __destroy_arr
/* 8150E980 | 34 7E 01 78 */	addic. r3, r30, 0x178
/* 8150E984 | 41 82 00 0C */	beq .L_8150E990
/* 8150E988 | 38 80 00 00 */	li r4, 0x0
/* 8150E98C | 48 00 39 D9 */	bl fn_81512364
.L_8150E990:
/* 8150E990 | 34 7E 01 6C */	addic. r3, r30, 0x16c
/* 8150E994 | 41 82 00 0C */	beq .L_8150E9A0
/* 8150E998 | 38 80 00 00 */	li r4, 0x0
/* 8150E99C | 48 00 39 C9 */	bl fn_81512364
.L_8150E9A0:
/* 8150E9A0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8150E9A4 | 40 81 00 0C */	ble .L_8150E9B0
/* 8150E9A8 | 7F C3 F3 78 */	mr r3, r30
/* 8150E9AC | 48 0E 97 39 */	bl __dl__FPv
.L_8150E9B0:
/* 8150E9B0 | 7F C3 F3 78 */	mr r3, r30
/* 8150E9B4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8150E9B8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8150E9BC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150E9C0 | 7C 08 03 A6 */	mtlr r0
/* 8150E9C4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150E9C8 | 4E 80 00 20 */	blr
.endfn __dt__Q44nw4r3snd6detail9StrmSoundFv

# .text:0x208 | 0x8150E9CC | size: 0xCC
# nw4r::snd::detail::StrmSound::SetPlayerPriority(int)
.fn SetPlayerPriority__Q44nw4r3snd6detail9StrmSoundFi, global
/* 8150E9CC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150E9D0 | 7C 08 02 A6 */	mflr r0
/* 8150E9D4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8150E9D8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8150E9DC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8150E9E0 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8150E9E4 | 7C 7D 1B 78 */	mr r29, r3
/* 8150E9E8 | 4B FE EA 75 */	bl SetPlayerPriority__Q44nw4r3snd6detail10BasicSoundFi
/* 8150E9EC | 88 7D 00 74 */	lbz r3, 0x74(r29)
/* 8150E9F0 | 80 1D 00 40 */	lwz r0, 0x40(r29)
/* 8150E9F4 | 7C 63 02 14 */	add r3, r3, r0
/* 8150E9F8 | 2C 03 00 7F */	cmpwi r3, 0x7f
/* 8150E9FC | 40 81 00 0C */	ble .L_8150EA08
/* 8150EA00 | 3B C0 00 7F */	li r30, 0x7f
/* 8150EA04 | 48 00 00 0C */	b .L_8150EA10
.L_8150EA08:
/* 8150EA08 | 7C 60 FE 70 */	srawi r0, r3, 31
/* 8150EA0C | 7C 7E 00 78 */	andc r30, r3, r0
.L_8150EA10:
/* 8150EA10 | 83 FD 05 F8 */	lwz r31, 0x5f8(r29)
/* 8150EA14 | 3B BD 00 B8 */	addi r29, r29, 0xb8
/* 8150EA18 | 7F A4 EB 78 */	mr r4, r29
/* 8150EA1C | 38 7F 00 04 */	addi r3, r31, 0x4
/* 8150EA20 | 48 00 3A 81 */	bl fn_815124A0
/* 8150EA24 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8150EA28 | 38 1F 00 08 */	addi r0, r31, 0x8
/* 8150EA2C | 48 00 00 34 */	b .L_8150EA60
.L_8150EA30:
/* 8150EA30 | 88 A3 FF BC */	lbz r5, -0x44(r3)
/* 8150EA34 | 80 83 FF 88 */	lwz r4, -0x78(r3)
/* 8150EA38 | 7C A5 22 14 */	add r5, r5, r4
/* 8150EA3C | 2C 05 00 7F */	cmpwi r5, 0x7f
/* 8150EA40 | 40 81 00 0C */	ble .L_8150EA4C
/* 8150EA44 | 38 80 00 7F */	li r4, 0x7f
/* 8150EA48 | 48 00 00 0C */	b .L_8150EA54
.L_8150EA4C:
/* 8150EA4C | 7C A4 FE 70 */	srawi r4, r5, 31
/* 8150EA50 | 7C A4 20 78 */	andc r4, r5, r4
.L_8150EA54:
/* 8150EA54 | 7C 1E 20 00 */	cmpw r30, r4
/* 8150EA58 | 41 80 00 10 */	blt .L_8150EA68
/* 8150EA5C | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_8150EA60:
/* 8150EA60 | 7C 03 00 40 */	cmplw r3, r0
/* 8150EA64 | 40 82 FF CC */	bne .L_8150EA30
.L_8150EA68:
/* 8150EA68 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8150EA6C | 7F A5 EB 78 */	mr r5, r29
/* 8150EA70 | 38 7F 00 04 */	addi r3, r31, 0x4
/* 8150EA74 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8150EA78 | 48 00 39 FD */	bl fn_81512474
/* 8150EA7C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150EA80 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8150EA84 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8150EA88 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8150EA8C | 7C 08 03 A6 */	mtlr r0
/* 8150EA90 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150EA94 | 4E 80 00 20 */	blr
.endfn SetPlayerPriority__Q44nw4r3snd6detail9StrmSoundFi

# .text:0x2D4 | 0x8150EA98 | size: 0x14
# nw4r::snd::detail::StrmSound::IsAttachedTempSpecialHandle()
.fn IsAttachedTempSpecialHandle__Q44nw4r3snd6detail9StrmSoundFv, global
/* 8150EA98 | 80 63 05 F4 */	lwz r3, 0x5f4(r3)
/* 8150EA9C | 7C 03 00 D0 */	neg r0, r3
/* 8150EAA0 | 7C 00 1B 78 */	or r0, r0, r3
/* 8150EAA4 | 54 03 0F FE */	srwi r3, r0, 31
/* 8150EAA8 | 4E 80 00 20 */	blr
.endfn IsAttachedTempSpecialHandle__Q44nw4r3snd6detail9StrmSoundFv

# .text:0x2E8 | 0x8150EAAC | size: 0x8
# nw4r::snd::detail::StrmSound::DetachTempSpecialHandle()
.fn DetachTempSpecialHandle__Q44nw4r3snd6detail9StrmSoundFv, global
/* 8150EAAC | 80 63 05 F4 */	lwz r3, 0x5f4(r3)
/* 8150EAB0 | 48 00 00 28 */	b DetachSound__Q34nw4r3snd15StrmSoundHandleFv
.endfn DetachTempSpecialHandle__Q44nw4r3snd6detail9StrmSoundFv

# .text:0x2F0 | 0x8150EAB4 | size: 0x8
# nw4r::snd::detail::StrmSound::GetBasicPlayer()
.fn GetBasicPlayer__Q44nw4r3snd6detail9StrmSoundFv, global
/* 8150EAB4 | 38 63 00 D8 */	addi r3, r3, 0xd8
/* 8150EAB8 | 4E 80 00 20 */	blr
.endfn GetBasicPlayer__Q44nw4r3snd6detail9StrmSoundFv

# .text:0x2F8 | 0x8150EABC | size: 0x8
# nw4r::snd::detail::StrmSound::GetBasicPlayer() const
.fn GetBasicPlayer__Q44nw4r3snd6detail9StrmSoundCFv, global
/* 8150EABC | 38 63 00 D8 */	addi r3, r3, 0xd8
/* 8150EAC0 | 4E 80 00 20 */	blr
.endfn GetBasicPlayer__Q44nw4r3snd6detail9StrmSoundCFv

# .text:0x300 | 0x8150EAC4 | size: 0x8
# nw4r::snd::detail::StrmSound::GetRuntimeTypeInfo() const
.fn GetRuntimeTypeInfo__Q44nw4r3snd6detail9StrmSoundCFv, global
/* 8150EAC4 | 38 6D AE E8 */	li r3, typeInfo__Q44nw4r3snd6detail9StrmSound@sda21
/* 8150EAC8 | 4E 80 00 20 */	blr
.endfn GetRuntimeTypeInfo__Q44nw4r3snd6detail9StrmSoundCFv

# .text:0x308 | 0x8150EACC | size: 0xC
.fn "__sinit_\\snd_StrmSound_cpp", weak
/* 8150EACC | 38 0D AE 88 */	li r0, typeInfo__Q44nw4r3snd6detail10BasicSound@sda21
/* 8150EAD0 | 90 0D AE E8 */	stw r0, typeInfo__Q44nw4r3snd6detail9StrmSound@sda21(r0)
/* 8150EAD4 | 4E 80 00 20 */	blr
.endfn "__sinit_\\snd_StrmSound_cpp"

# 0x8160D238..0x8160D23C | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte "__sinit_\\snd_StrmSound_cpp"

# 0x8166FAA0..0x8166FB08 | size: 0x68
.data
.balign 8

# .data:0x0 | 0x8166FAA0 | size: 0x64
# nw4r::snd::detail::StrmSound::__vtable
.obj __vt__Q44nw4r3snd6detail9StrmSound, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte GetRuntimeTypeInfo__Q44nw4r3snd6detail9StrmSoundCFv
	.4byte __dt__Q44nw4r3snd6detail9StrmSoundFv
	.4byte Update__Q44nw4r3snd6detail10BasicSoundFv
	.4byte StartPrepared__Q44nw4r3snd6detail10BasicSoundFv
	.4byte Stop__Q44nw4r3snd6detail10BasicSoundFi
	.4byte Pause__Q44nw4r3snd6detail10BasicSoundFbi
	.4byte SetAutoStopCounter__Q44nw4r3snd6detail10BasicSoundFi
	.4byte FadeIn__Q44nw4r3snd6detail10BasicSoundFi
	.4byte Shutdown__Q44nw4r3snd6detail9StrmSoundFv
	.4byte IsPrepared__Q44nw4r3snd6detail10BasicSoundCFv
	.4byte IsPause__Q44nw4r3snd6detail10BasicSoundCFv
	.4byte SetInitialVolume__Q44nw4r3snd6detail10BasicSoundFf
	.4byte SetVolume__Q44nw4r3snd6detail10BasicSoundFfi
	.4byte SetPitch__Q44nw4r3snd6detail10BasicSoundFf
	.4byte SetPan__Q44nw4r3snd6detail10BasicSoundFf
	.4byte SetSurroundPan__Q44nw4r3snd6detail10BasicSoundFf
	.4byte SetLpfFreq__Q44nw4r3snd6detail10BasicSoundFf
	.4byte SetPlayerPriority__Q44nw4r3snd6detail9StrmSoundFi
	.4byte IsAttachedTempSpecialHandle__Q44nw4r3snd6detail9StrmSoundFv
	.4byte DetachTempSpecialHandle__Q44nw4r3snd6detail9StrmSoundFv
	.4byte InitParam__Q44nw4r3snd6detail10BasicSoundFv
	.4byte GetBasicPlayer__Q44nw4r3snd6detail9StrmSoundFv
	.4byte GetBasicPlayer__Q44nw4r3snd6detail9StrmSoundCFv
.endobj __vt__Q44nw4r3snd6detail9StrmSound

# .data:0x64 | 0x8166FB04 | size: 0x4
.obj gap_08_8166FB04_data, global
.hidden gap_08_8166FB04_data
	.4byte 0x00000000
.endobj gap_08_8166FB04_data

# 0x81698F28..0x81698F30 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698F28 | size: 0x4
# nw4r::snd::detail::StrmSound::typeInfo
.obj typeInfo__Q44nw4r3snd6detail9StrmSound, global
	.skip 0x4
.endobj typeInfo__Q44nw4r3snd6detail9StrmSound

# .sbss:0x4 | 0x81698F2C | size: 0x4
.obj gap_12_81698F2C_sbss, global
.hidden gap_12_81698F2C_sbss
	.skip 0x4
.endobj gap_12_81698F2C_sbss
