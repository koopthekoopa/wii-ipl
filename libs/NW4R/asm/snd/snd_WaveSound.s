.include "macros.inc"
.file "snd_WaveSound.cpp"

# 0x81510500..0x815107F4 | size: 0x2F4
.text
.balign 4

# .text:0x0 | 0x81510500 | size: 0x5C
.fn __ct__Q44nw4r3snd6detail9WaveSoundFPQ44nw4r3snd6detail50SoundInstanceManager, global
/* 81510500 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81510504 | 7C 08 02 A6 */	mflr r0
/* 81510508 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8151050C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81510510 | 7C 9F 23 78 */	mr r31, r4
/* 81510514 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81510518 | 7C 7E 1B 78 */	mr r30, r3
/* 8151051C | 4B FE C0 09 */	bl __ct__Q44nw4r3snd6detail10BasicSoundFv
/* 81510520 | 3C 80 81 67 */	lis r4, __vt__Q44nw4r3snd6detail9WaveSound@ha
/* 81510524 | 38 7E 00 D8 */	addi r3, r30, 0xd8
/* 81510528 | 38 84 FB 20 */	addi r4, r4, __vt__Q44nw4r3snd6detail9WaveSound@l
/* 8151052C | 90 9E 00 00 */	stw r4, 0x0(r30)
/* 81510530 | 48 00 06 45 */	bl __ct__Q44nw4r3snd6detail9WsdPlayerFv
/* 81510534 | 38 00 00 00 */	li r0, 0x0
/* 81510538 | 93 FE 01 B0 */	stw r31, 0x1b0(r30)
/* 8151053C | 7F C3 F3 78 */	mr r3, r30
/* 81510540 | 90 1E 01 AC */	stw r0, 0x1ac(r30)
/* 81510544 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81510548 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8151054C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81510550 | 7C 08 03 A6 */	mtlr r0
/* 81510554 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81510558 | 4E 80 00 20 */	blr
.endfn __ct__Q44nw4r3snd6detail9WaveSoundFPQ44nw4r3snd6detail50SoundInstanceManager

# .text:0x5C | 0x8151055C | size: 0x40
# nw4r::snd::detail::WsdPlayer::~WsdPlayer()
.fn __dt__Q44nw4r3snd6detail9WsdPlayerFv, global
/* 8151055C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81510560 | 7C 08 02 A6 */	mflr r0
/* 81510564 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81510568 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8151056C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81510570 | 7C 7F 1B 78 */	mr r31, r3
/* 81510574 | 41 82 00 10 */	beq .L_81510584
/* 81510578 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8151057C | 40 81 00 08 */	ble .L_81510584
/* 81510580 | 48 0E 7B 65 */	bl __dl__FPv
.L_81510584:
/* 81510584 | 7F E3 FB 78 */	mr r3, r31
/* 81510588 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8151058C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81510590 | 7C 08 03 A6 */	mtlr r0
/* 81510594 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81510598 | 4E 80 00 20 */	blr
.endfn __dt__Q44nw4r3snd6detail9WsdPlayerFv

# .text:0x9C | 0x8151059C | size: 0x70
# nw4r::snd::detail::WaveSound::Prepare(const void*, long, int, const nw4r::snd::detail::WsdTrack::WsdCallback*, unsigned long)
.fn Prepare__Q44nw4r3snd6detail9WaveSoundFPCvliPCQ54nw4r3snd6detail8WsdTrack11WsdCallbackUl, global
/* 8151059C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 815105A0 | 7C 08 02 A6 */	mflr r0
/* 815105A4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 815105A8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 815105AC | 48 0E 8F 11 */	bl _savegpr_26
/* 815105B0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 815105B4 | 7C 7A 1B 78 */	mr r26, r3
/* 815105B8 | 7C 9B 23 78 */	mr r27, r4
/* 815105BC | 7C BC 2B 78 */	mr r28, r5
/* 815105C0 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 815105C4 | 7C DD 33 78 */	mr r29, r6
/* 815105C8 | 7C FE 3B 78 */	mr r30, r7
/* 815105CC | 7D 1F 43 78 */	mr r31, r8
/* 815105D0 | 7D 89 03 A6 */	mtctr r12
/* 815105D4 | 4E 80 04 21 */	bctrl
/* 815105D8 | 7F 64 DB 78 */	mr r4, r27
/* 815105DC | 7F 85 E3 78 */	mr r5, r28
/* 815105E0 | 7F A6 EB 78 */	mr r6, r29
/* 815105E4 | 7F C7 F3 78 */	mr r7, r30
/* 815105E8 | 7F E8 FB 78 */	mr r8, r31
/* 815105EC | 38 7A 00 D8 */	addi r3, r26, 0xd8
/* 815105F0 | 48 00 06 91 */	bl Prepare__Q44nw4r3snd6detail9WsdPlayerFPCviiPCQ54nw4r3snd6detail8WsdTrack11WsdCallbackUl
/* 815105F4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 815105F8 | 48 0E 8F 11 */	bl _restgpr_26
/* 815105FC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81510600 | 7C 08 03 A6 */	mtlr r0
/* 81510604 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81510608 | 4E 80 00 20 */	blr
.endfn Prepare__Q44nw4r3snd6detail9WaveSoundFPCvliPCQ54nw4r3snd6detail8WsdTrack11WsdCallbackUl

# .text:0x10C | 0x8151060C | size: 0x94
# nw4r::snd::detail::WaveSound::Shutdown()
.fn Shutdown__Q44nw4r3snd6detail9WaveSoundFv, global
/* 8151060C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81510610 | 7C 08 02 A6 */	mflr r0
/* 81510614 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81510618 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8151061C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81510620 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81510624 | 7C 7D 1B 78 */	mr r29, r3
/* 81510628 | 4B FE CC B5 */	bl Shutdown__Q44nw4r3snd6detail10BasicSoundFv
/* 8151062C | 83 DD 01 B0 */	lwz r30, 0x1b0(r29)
/* 81510630 | 48 02 02 55 */	bl OSDisableInterrupts
/* 81510634 | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 81510638 | 7C 7F 1B 78 */	mr r31, r3
/* 8151063C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81510640 | 40 82 00 0C */	bne .L_8151064C
/* 81510644 | 48 02 02 69 */	bl OSRestoreInterrupts
/* 81510648 | 48 00 00 3C */	b .L_81510684
.L_8151064C:
/* 8151064C | 38 7E 00 04 */	addi r3, r30, 0x4
/* 81510650 | 38 9D 00 B8 */	addi r4, r29, 0xb8
/* 81510654 | 48 00 1E 4D */	bl fn_815124A0
/* 81510658 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8151065C | 7F A3 EB 78 */	mr r3, r29
/* 81510660 | 38 80 FF FF */	li r4, -0x1
/* 81510664 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81510668 | 7D 89 03 A6 */	mtctr r12
/* 8151066C | 4E 80 04 21 */	bctrl
/* 81510670 | 7F C3 F3 78 */	mr r3, r30
/* 81510674 | 7F A4 EB 78 */	mr r4, r29
/* 81510678 | 4B FF 0E 5D */	bl FreeImpl__Q44nw4r3snd6detail8PoolImplFPv
/* 8151067C | 7F E3 FB 78 */	mr r3, r31
/* 81510680 | 48 02 02 2D */	bl OSRestoreInterrupts
.L_81510684:
/* 81510684 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81510688 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8151068C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81510690 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81510694 | 7C 08 03 A6 */	mtlr r0
/* 81510698 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8151069C | 4E 80 00 20 */	blr
.endfn Shutdown__Q44nw4r3snd6detail9WaveSoundFv

# .text:0x1A0 | 0x815106A0 | size: 0x40
# nw4r::snd::detail::WaveSound::~WaveSound()
.fn __dt__Q44nw4r3snd6detail9WaveSoundFv, global
/* 815106A0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 815106A4 | 7C 08 02 A6 */	mflr r0
/* 815106A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 815106AC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 815106B0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 815106B4 | 7C 7F 1B 78 */	mr r31, r3
/* 815106B8 | 41 82 00 10 */	beq .L_815106C8
/* 815106BC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 815106C0 | 40 81 00 08 */	ble .L_815106C8
/* 815106C4 | 48 0E 7A 21 */	bl __dl__FPv
.L_815106C8:
/* 815106C8 | 7F E3 FB 78 */	mr r3, r31
/* 815106CC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 815106D0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 815106D4 | 7C 08 03 A6 */	mtlr r0
/* 815106D8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 815106DC | 4E 80 00 20 */	blr
.endfn __dt__Q44nw4r3snd6detail9WaveSoundFv

# .text:0x1E0 | 0x815106E0 | size: 0x8
# nw4r::snd::detail::WaveSound::SetChannelPriority(int)
.fn SetChannelPriority__Q44nw4r3snd6detail9WaveSoundFi, global
/* 815106E0 | 38 63 00 D8 */	addi r3, r3, 0xd8
/* 815106E4 | 48 00 0C 18 */	b SetChannelPriority__Q44nw4r3snd6detail9WsdPlayerFi
.endfn SetChannelPriority__Q44nw4r3snd6detail9WaveSoundFi

# .text:0x1E8 | 0x815106E8 | size: 0xCC
# nw4r::snd::detail::WaveSound::SetPlayerPriority(int)
.fn SetPlayerPriority__Q44nw4r3snd6detail9WaveSoundFi, global
/* 815106E8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 815106EC | 7C 08 02 A6 */	mflr r0
/* 815106F0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 815106F4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 815106F8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 815106FC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81510700 | 7C 7D 1B 78 */	mr r29, r3
/* 81510704 | 4B FE CD 59 */	bl SetPlayerPriority__Q44nw4r3snd6detail10BasicSoundFi
/* 81510708 | 88 7D 00 74 */	lbz r3, 0x74(r29)
/* 8151070C | 80 1D 00 40 */	lwz r0, 0x40(r29)
/* 81510710 | 7C 63 02 14 */	add r3, r3, r0
/* 81510714 | 2C 03 00 7F */	cmpwi r3, 0x7f
/* 81510718 | 40 81 00 0C */	ble .L_81510724
/* 8151071C | 3B C0 00 7F */	li r30, 0x7f
/* 81510720 | 48 00 00 0C */	b .L_8151072C
.L_81510724:
/* 81510724 | 7C 60 FE 70 */	srawi r0, r3, 31
/* 81510728 | 7C 7E 00 78 */	andc r30, r3, r0
.L_8151072C:
/* 8151072C | 83 FD 01 B0 */	lwz r31, 0x1b0(r29)
/* 81510730 | 3B BD 00 B8 */	addi r29, r29, 0xb8
/* 81510734 | 7F A4 EB 78 */	mr r4, r29
/* 81510738 | 38 7F 00 04 */	addi r3, r31, 0x4
/* 8151073C | 48 00 1D 65 */	bl fn_815124A0
/* 81510740 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 81510744 | 38 1F 00 08 */	addi r0, r31, 0x8
/* 81510748 | 48 00 00 34 */	b .L_8151077C
.L_8151074C:
/* 8151074C | 88 A3 FF BC */	lbz r5, -0x44(r3)
/* 81510750 | 80 83 FF 88 */	lwz r4, -0x78(r3)
/* 81510754 | 7C A5 22 14 */	add r5, r5, r4
/* 81510758 | 2C 05 00 7F */	cmpwi r5, 0x7f
/* 8151075C | 40 81 00 0C */	ble .L_81510768
/* 81510760 | 38 80 00 7F */	li r4, 0x7f
/* 81510764 | 48 00 00 0C */	b .L_81510770
.L_81510768:
/* 81510768 | 7C A4 FE 70 */	srawi r4, r5, 31
/* 8151076C | 7C A4 20 78 */	andc r4, r5, r4
.L_81510770:
/* 81510770 | 7C 1E 20 00 */	cmpw r30, r4
/* 81510774 | 41 80 00 10 */	blt .L_81510784
/* 81510778 | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_8151077C:
/* 8151077C | 7C 03 00 40 */	cmplw r3, r0
/* 81510780 | 40 82 FF CC */	bne .L_8151074C
.L_81510784:
/* 81510784 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 81510788 | 7F A5 EB 78 */	mr r5, r29
/* 8151078C | 38 7F 00 04 */	addi r3, r31, 0x4
/* 81510790 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81510794 | 48 00 1C E1 */	bl fn_81512474
/* 81510798 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8151079C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 815107A0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 815107A4 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 815107A8 | 7C 08 03 A6 */	mtlr r0
/* 815107AC | 38 21 00 20 */	addi r1, r1, 0x20
/* 815107B0 | 4E 80 00 20 */	blr
.endfn SetPlayerPriority__Q44nw4r3snd6detail9WaveSoundFi

# .text:0x2B4 | 0x815107B4 | size: 0x14
# nw4r::snd::detail::WaveSound::IsAttachedTempSpecialHandle()
.fn IsAttachedTempSpecialHandle__Q44nw4r3snd6detail9WaveSoundFv, global
/* 815107B4 | 80 63 01 AC */	lwz r3, 0x1ac(r3)
/* 815107B8 | 7C 03 00 D0 */	neg r0, r3
/* 815107BC | 7C 00 1B 78 */	or r0, r0, r3
/* 815107C0 | 54 03 0F FE */	srwi r3, r0, 31
/* 815107C4 | 4E 80 00 20 */	blr
.endfn IsAttachedTempSpecialHandle__Q44nw4r3snd6detail9WaveSoundFv

# .text:0x2C8 | 0x815107C8 | size: 0x8
# nw4r::snd::detail::WaveSound::DetachTempSpecialHandle()
.fn DetachTempSpecialHandle__Q44nw4r3snd6detail9WaveSoundFv, global
/* 815107C8 | 80 63 01 AC */	lwz r3, 0x1ac(r3)
/* 815107CC | 48 00 00 28 */	b DetachSound__Q34nw4r3snd15WaveSoundHandleFv
.endfn DetachTempSpecialHandle__Q44nw4r3snd6detail9WaveSoundFv

# .text:0x2D0 | 0x815107D0 | size: 0x8
# nw4r::snd::detail::WaveSound::GetBasicPlayer()
.fn GetBasicPlayer__Q44nw4r3snd6detail9WaveSoundFv, global
/* 815107D0 | 38 63 00 D8 */	addi r3, r3, 0xd8
/* 815107D4 | 4E 80 00 20 */	blr
.endfn GetBasicPlayer__Q44nw4r3snd6detail9WaveSoundFv

# .text:0x2D8 | 0x815107D8 | size: 0x8
# nw4r::snd::detail::WaveSound::GetBasicPlayer() const
.fn GetBasicPlayer__Q44nw4r3snd6detail9WaveSoundCFv, global
/* 815107D8 | 38 63 00 D8 */	addi r3, r3, 0xd8
/* 815107DC | 4E 80 00 20 */	blr
.endfn GetBasicPlayer__Q44nw4r3snd6detail9WaveSoundCFv

# .text:0x2E0 | 0x815107E0 | size: 0x8
# nw4r::snd::detail::WaveSound::GetRuntimeTypeInfo() const
.fn GetRuntimeTypeInfo__Q44nw4r3snd6detail9WaveSoundCFv, global
/* 815107E0 | 38 6D AF 00 */	li r3, typeInfo__Q44nw4r3snd6detail9WaveSound@sda21
/* 815107E4 | 4E 80 00 20 */	blr
.endfn GetRuntimeTypeInfo__Q44nw4r3snd6detail9WaveSoundCFv

# .text:0x2E8 | 0x815107E8 | size: 0xC
.fn "__sinit_\\snd_WaveSound_cpp", weak
/* 815107E8 | 38 0D AE 88 */	li r0, typeInfo__Q44nw4r3snd6detail10BasicSound@sda21
/* 815107EC | 90 0D AF 00 */	stw r0, typeInfo__Q44nw4r3snd6detail9WaveSound@sda21(r0)
/* 815107F0 | 4E 80 00 20 */	blr
.endfn "__sinit_\\snd_WaveSound_cpp"

# 0x8160D240..0x8160D244 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte "__sinit_\\snd_WaveSound_cpp"

# 0x8166FB20..0x8166FB88 | size: 0x68
.data
.balign 8

# .data:0x0 | 0x8166FB20 | size: 0x68
# nw4r::snd::detail::WaveSound::__vtable
.obj __vt__Q44nw4r3snd6detail9WaveSound, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte GetRuntimeTypeInfo__Q44nw4r3snd6detail9WaveSoundCFv
	.4byte __dt__Q44nw4r3snd6detail9WaveSoundFv
	.4byte Update__Q44nw4r3snd6detail10BasicSoundFv
	.4byte StartPrepared__Q44nw4r3snd6detail10BasicSoundFv
	.4byte Stop__Q44nw4r3snd6detail10BasicSoundFi
	.4byte Pause__Q44nw4r3snd6detail10BasicSoundFbi
	.4byte SetAutoStopCounter__Q44nw4r3snd6detail10BasicSoundFi
	.4byte FadeIn__Q44nw4r3snd6detail10BasicSoundFi
	.4byte Shutdown__Q44nw4r3snd6detail9WaveSoundFv
	.4byte IsPrepared__Q44nw4r3snd6detail10BasicSoundCFv
	.4byte IsPause__Q44nw4r3snd6detail10BasicSoundCFv
	.4byte SetInitialVolume__Q44nw4r3snd6detail10BasicSoundFf
	.4byte SetVolume__Q44nw4r3snd6detail10BasicSoundFfi
	.4byte SetPitch__Q44nw4r3snd6detail10BasicSoundFf
	.4byte SetPan__Q44nw4r3snd6detail10BasicSoundFf
	.4byte SetSurroundPan__Q44nw4r3snd6detail10BasicSoundFf
	.4byte SetLpfFreq__Q44nw4r3snd6detail10BasicSoundFf
	.4byte SetPlayerPriority__Q44nw4r3snd6detail9WaveSoundFi
	.4byte IsAttachedTempSpecialHandle__Q44nw4r3snd6detail9WaveSoundFv
	.4byte DetachTempSpecialHandle__Q44nw4r3snd6detail9WaveSoundFv
	.4byte InitParam__Q44nw4r3snd6detail10BasicSoundFv
	.4byte GetBasicPlayer__Q44nw4r3snd6detail9WaveSoundFv
	.4byte GetBasicPlayer__Q44nw4r3snd6detail9WaveSoundCFv
	.4byte 0x00000000
.endobj __vt__Q44nw4r3snd6detail9WaveSound

# 0x81698F40..0x81698F48 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698F40 | size: 0x4
# nw4r::snd::detail::WaveSound::typeInfo
.obj typeInfo__Q44nw4r3snd6detail9WaveSound, global
	.skip 0x4
.endobj typeInfo__Q44nw4r3snd6detail9WaveSound

# .sbss:0x4 | 0x81698F44 | size: 0x4
.obj gap_12_81698F44_sbss, global
.hidden gap_12_81698F44_sbss
	.skip 0x4
.endobj gap_12_81698F44_sbss
