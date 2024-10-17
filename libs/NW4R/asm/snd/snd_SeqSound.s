.include "macros.inc"
.file "snd_SeqSound.cpp"

# 0x81504DD4..0x815051C0 | size: 0x3EC
.text
.balign 4

# .text:0x0 | 0x81504DD4 | size: 0x64
.fn __ct__Q44nw4r3snd6detail8SeqSoundFPQ44nw4r3snd6detail49SoundInstanceManager, global
/* 81504DD4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81504DD8 | 7C 08 02 A6 */	mflr r0
/* 81504DDC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81504DE0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81504DE4 | 7C 9F 23 78 */	mr r31, r4
/* 81504DE8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81504DEC | 7C 7E 1B 78 */	mr r30, r3
/* 81504DF0 | 4B FF 77 35 */	bl __ct__Q44nw4r3snd6detail10BasicSoundFv
/* 81504DF4 | 3C 80 81 67 */	lis r4, __vt__Q44nw4r3snd6detail8SeqSound@ha
/* 81504DF8 | 38 7E 00 D8 */	addi r3, r30, 0xd8
/* 81504DFC | 38 84 F8 90 */	addi r4, r4, __vt__Q44nw4r3snd6detail8SeqSound@l
/* 81504E00 | 90 9E 00 00 */	stw r4, 0x0(r30)
/* 81504E04 | 4B FF EE 59 */	bl __ct__Q44nw4r3snd6detail9SeqPlayerFv
/* 81504E08 | 38 00 00 00 */	li r0, 0x0
/* 81504E0C | 93 FE 01 E4 */	stw r31, 0x1e4(r30)
/* 81504E10 | 7F C3 F3 78 */	mr r3, r30
/* 81504E14 | 90 1E 01 E0 */	stw r0, 0x1e0(r30)
/* 81504E18 | 98 1E 01 E8 */	stb r0, 0x1e8(r30)
/* 81504E1C | 90 1E 01 EC */	stw r0, 0x1ec(r30)
/* 81504E20 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81504E24 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81504E28 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81504E2C | 7C 08 03 A6 */	mtlr r0
/* 81504E30 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81504E34 | 4E 80 00 20 */	blr
.endfn __ct__Q44nw4r3snd6detail8SeqSoundFPQ44nw4r3snd6detail49SoundInstanceManager

# .text:0x64 | 0x81504E38 | size: 0x38
# nw4r::snd::detail::SeqSound::InitParam()
.fn InitParam__Q44nw4r3snd6detail8SeqSoundFv, global
/* 81504E38 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81504E3C | 7C 08 02 A6 */	mflr r0
/* 81504E40 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81504E44 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81504E48 | 7C 7F 1B 78 */	mr r31, r3
/* 81504E4C | 4B FF 77 6D */	bl InitParam__Q44nw4r3snd6detail10BasicSoundFv
/* 81504E50 | 38 00 00 00 */	li r0, 0x0
/* 81504E54 | 90 1F 01 EC */	stw r0, 0x1ec(r31)
/* 81504E58 | 90 1F 01 F0 */	stw r0, 0x1f0(r31)
/* 81504E5C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81504E60 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81504E64 | 7C 08 03 A6 */	mtlr r0
/* 81504E68 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81504E6C | 4E 80 00 20 */	blr
.endfn InitParam__Q44nw4r3snd6detail8SeqSoundFv

# .text:0x9C | 0x81504E70 | size: 0x68
# nw4r::snd::detail::SeqSound::Setup(nw4r::snd::detail::SeqTrackAllocator*, unsigned long, int, nw4r::snd::detail::NoteOnCallback*)
.fn Setup__Q44nw4r3snd6detail8SeqSoundFPQ44nw4r3snd6detail17SeqTrackAllocatorUliPQ44nw4r3snd6detail14NoteOnCallback, global
/* 81504E70 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81504E74 | 7C 08 02 A6 */	mflr r0
/* 81504E78 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81504E7C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81504E80 | 48 0F 46 41 */	bl _savegpr_27
/* 81504E84 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81504E88 | 7C 7B 1B 78 */	mr r27, r3
/* 81504E8C | 7C 9C 23 78 */	mr r28, r4
/* 81504E90 | 7C BD 2B 78 */	mr r29, r5
/* 81504E94 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 81504E98 | 7C DE 33 78 */	mr r30, r6
/* 81504E9C | 7C FF 3B 78 */	mr r31, r7
/* 81504EA0 | 7D 89 03 A6 */	mtctr r12
/* 81504EA4 | 4E 80 04 21 */	bctrl
/* 81504EA8 | 7F 84 E3 78 */	mr r4, r28
/* 81504EAC | 7F A5 EB 78 */	mr r5, r29
/* 81504EB0 | 7F C6 F3 78 */	mr r6, r30
/* 81504EB4 | 7F E7 FB 78 */	mr r7, r31
/* 81504EB8 | 38 7B 00 D8 */	addi r3, r27, 0xd8
/* 81504EBC | 4B FF F0 35 */	bl Setup__Q44nw4r3snd6detail9SeqPlayerFPQ44nw4r3snd6detail17SeqTrackAllocatorUliPQ44nw4r3snd6detail14NoteOnCallback
/* 81504EC0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81504EC4 | 48 0F 46 49 */	bl _restgpr_27
/* 81504EC8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81504ECC | 7C 08 03 A6 */	mtlr r0
/* 81504ED0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81504ED4 | 4E 80 00 20 */	blr
.endfn Setup__Q44nw4r3snd6detail8SeqSoundFPQ44nw4r3snd6detail17SeqTrackAllocatorUliPQ44nw4r3snd6detail14NoteOnCallback

# .text:0x104 | 0x81504ED8 | size: 0x8
# nw4r::snd::detail::SeqSound::Prepare(const void*, long)
.fn Prepare__Q44nw4r3snd6detail8SeqSoundFPCvl, global
/* 81504ED8 | 38 63 00 D8 */	addi r3, r3, 0xd8
/* 81504EDC | 4B FF F2 38 */	b SetSeqData__Q44nw4r3snd6detail9SeqPlayerFPCvl
.endfn Prepare__Q44nw4r3snd6detail8SeqSoundFPCvl

# .text:0x10C | 0x81504EE0 | size: 0x7C
# nw4r::snd::detail::SeqSound::Prepare(const nw4r::snd::detail::SeqSound::SeqLoadCallback*, unsigned long)
.fn Prepare__Q44nw4r3snd6detail8SeqSoundFPCQ54nw4r3snd6detail8SeqSound15SeqLoadCallbackUl, global
/* 81504EE0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81504EE4 | 7C 08 02 A6 */	mflr r0
/* 81504EE8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81504EEC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81504EF0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81504EF4 | 7C BF 2B 78 */	mr r31, r5
/* 81504EF8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81504EFC | 7C 9E 23 78 */	mr r30, r4
/* 81504F00 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81504F04 | 7C 7D 1B 78 */	mr r29, r3
/* 81504F08 | 41 82 00 38 */	beq .L_81504F40
/* 81504F0C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81504F10 | 3C 80 81 50 */	lis r4, NotifyLoadAsyncEndSeqData__Q44nw4r3snd6detail8SeqSoundFbPCvlPv@ha
/* 81504F14 | 7F C3 F3 78 */	mr r3, r30
/* 81504F18 | 7F A5 EB 78 */	mr r5, r29
/* 81504F1C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81504F20 | 7F E6 FB 78 */	mr r6, r31
/* 81504F24 | 38 84 4F 5C */	addi r4, r4, NotifyLoadAsyncEndSeqData__Q44nw4r3snd6detail8SeqSoundFbPCvlPv@l
/* 81504F28 | 7D 89 03 A6 */	mtctr r12
/* 81504F2C | 4E 80 04 21 */	bctrl
/* 81504F30 | 38 00 00 01 */	li r0, 0x1
/* 81504F34 | 93 DD 01 EC */	stw r30, 0x1ec(r29)
/* 81504F38 | 93 FD 01 F0 */	stw r31, 0x1f0(r29)
/* 81504F3C | 98 1D 01 E8 */	stb r0, 0x1e8(r29)
.L_81504F40:
/* 81504F40 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81504F44 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81504F48 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81504F4C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81504F50 | 7C 08 03 A6 */	mtlr r0
/* 81504F54 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81504F58 | 4E 80 00 20 */	blr
.endfn Prepare__Q44nw4r3snd6detail8SeqSoundFPCQ54nw4r3snd6detail8SeqSound15SeqLoadCallbackUl

# .text:0x188 | 0x81504F5C | size: 0x30
# nw4r::snd::detail::SeqSound::NotifyLoadAsyncEndSeqData(bool, const void*, long, void*)
.fn NotifyLoadAsyncEndSeqData__Q44nw4r3snd6detail8SeqSoundFbPCvlPv, global
/* 81504F5C | 38 00 00 00 */	li r0, 0x0
/* 81504F60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81504F64 | 98 06 01 E8 */	stb r0, 0x1e8(r6)
/* 81504F68 | 40 82 00 1C */	bne .L_81504F84
/* 81504F6C | 81 86 00 00 */	lwz r12, 0x0(r6)
/* 81504F70 | 7C C3 33 78 */	mr r3, r6
/* 81504F74 | 38 80 00 00 */	li r4, 0x0
/* 81504F78 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81504F7C | 7D 89 03 A6 */	mtctr r12
/* 81504F80 | 4E 80 04 20 */	bctr
.L_81504F84:
/* 81504F84 | 38 66 00 D8 */	addi r3, r6, 0xd8
/* 81504F88 | 4B FF F1 8C */	b SetSeqData__Q44nw4r3snd6detail9SeqPlayerFPCvl
.endfn NotifyLoadAsyncEndSeqData__Q44nw4r3snd6detail8SeqSoundFbPCvlPv

# .text:0x1B8 | 0x81504F8C | size: 0xC4
# nw4r::snd::detail::SeqSound::Shutdown()
.fn Shutdown__Q44nw4r3snd6detail8SeqSoundFv, global
/* 81504F8C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81504F90 | 7C 08 02 A6 */	mflr r0
/* 81504F94 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81504F98 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81504F9C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81504FA0 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81504FA4 | 7C 7D 1B 78 */	mr r29, r3
/* 81504FA8 | 88 03 01 E8 */	lbz r0, 0x1e8(r3)
/* 81504FAC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81504FB0 | 41 82 00 24 */	beq .L_81504FD4
/* 81504FB4 | 80 63 01 EC */	lwz r3, 0x1ec(r3)
/* 81504FB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81504FBC | 41 82 00 18 */	beq .L_81504FD4
/* 81504FC0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81504FC4 | 80 9D 01 F0 */	lwz r4, 0x1f0(r29)
/* 81504FC8 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81504FCC | 7D 89 03 A6 */	mtctr r12
/* 81504FD0 | 4E 80 04 21 */	bctrl
.L_81504FD4:
/* 81504FD4 | 7F A3 EB 78 */	mr r3, r29
/* 81504FD8 | 4B FF 83 05 */	bl Shutdown__Q44nw4r3snd6detail10BasicSoundFv
/* 81504FDC | 83 DD 01 E4 */	lwz r30, 0x1e4(r29)
/* 81504FE0 | 48 02 B8 A5 */	bl OSDisableInterrupts
/* 81504FE4 | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 81504FE8 | 7C 7F 1B 78 */	mr r31, r3
/* 81504FEC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81504FF0 | 40 82 00 0C */	bne .L_81504FFC
/* 81504FF4 | 48 02 B8 B9 */	bl OSRestoreInterrupts
/* 81504FF8 | 48 00 00 3C */	b .L_81505034
.L_81504FFC:
/* 81504FFC | 38 7E 00 04 */	addi r3, r30, 0x4
/* 81505000 | 38 9D 00 B8 */	addi r4, r29, 0xb8
/* 81505004 | 48 00 D4 9D */	bl fn_815124A0
/* 81505008 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8150500C | 7F A3 EB 78 */	mr r3, r29
/* 81505010 | 38 80 FF FF */	li r4, -0x1
/* 81505014 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81505018 | 7D 89 03 A6 */	mtctr r12
/* 8150501C | 4E 80 04 21 */	bctrl
/* 81505020 | 7F C3 F3 78 */	mr r3, r30
/* 81505024 | 7F A4 EB 78 */	mr r4, r29
/* 81505028 | 4B FF C4 AD */	bl FreeImpl__Q44nw4r3snd6detail8PoolImplFPv
/* 8150502C | 7F E3 FB 78 */	mr r3, r31
/* 81505030 | 48 02 B8 7D */	bl OSRestoreInterrupts
.L_81505034:
/* 81505034 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81505038 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8150503C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81505040 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81505044 | 7C 08 03 A6 */	mtlr r0
/* 81505048 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150504C | 4E 80 00 20 */	blr
.endfn Shutdown__Q44nw4r3snd6detail8SeqSoundFv

# .text:0x27C | 0x81505050 | size: 0x5C
# nw4r::snd::detail::SeqSound::~SeqSound()
.fn __dt__Q44nw4r3snd6detail8SeqSoundFv, global
/* 81505050 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81505054 | 7C 08 02 A6 */	mflr r0
/* 81505058 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150505C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81505060 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81505064 | 7C 9F 23 78 */	mr r31, r4
/* 81505068 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8150506C | 7C 7E 1B 78 */	mr r30, r3
/* 81505070 | 41 82 00 20 */	beq .L_81505090
/* 81505074 | 38 80 FF FF */	li r4, -0x1
/* 81505078 | 38 63 00 D8 */	addi r3, r3, 0xd8
/* 8150507C | 4B FF EC 19 */	bl __dt__Q44nw4r3snd6detail9SeqPlayerFv
/* 81505080 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81505084 | 40 81 00 0C */	ble .L_81505090
/* 81505088 | 7F C3 F3 78 */	mr r3, r30
/* 8150508C | 48 0F 30 59 */	bl __dl__FPv
.L_81505090:
/* 81505090 | 7F C3 F3 78 */	mr r3, r30
/* 81505094 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81505098 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8150509C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 815050A0 | 7C 08 03 A6 */	mtlr r0
/* 815050A4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 815050A8 | 4E 80 00 20 */	blr
.endfn __dt__Q44nw4r3snd6detail8SeqSoundFv

# .text:0x2D8 | 0x815050AC | size: 0x8
# nw4r::snd::detail::SeqSound::SetChannelPriority(int)
.fn SetChannelPriority__Q44nw4r3snd6detail8SeqSoundFi, global
/* 815050AC | 38 63 00 D8 */	addi r3, r3, 0xd8
/* 815050B0 | 4B FF F6 D4 */	b SetChannelPriority__Q44nw4r3snd6detail9SeqPlayerFi
.endfn SetChannelPriority__Q44nw4r3snd6detail8SeqSoundFi

# .text:0x2E0 | 0x815050B4 | size: 0xCC
# nw4r::snd::detail::SeqSound::SetPlayerPriority(int)
.fn SetPlayerPriority__Q44nw4r3snd6detail8SeqSoundFi, global
/* 815050B4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 815050B8 | 7C 08 02 A6 */	mflr r0
/* 815050BC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 815050C0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 815050C4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 815050C8 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 815050CC | 7C 7D 1B 78 */	mr r29, r3
/* 815050D0 | 4B FF 83 8D */	bl SetPlayerPriority__Q44nw4r3snd6detail10BasicSoundFi
/* 815050D4 | 88 7D 00 74 */	lbz r3, 0x74(r29)
/* 815050D8 | 80 1D 00 40 */	lwz r0, 0x40(r29)
/* 815050DC | 7C 63 02 14 */	add r3, r3, r0
/* 815050E0 | 2C 03 00 7F */	cmpwi r3, 0x7f
/* 815050E4 | 40 81 00 0C */	ble .L_815050F0
/* 815050E8 | 3B C0 00 7F */	li r30, 0x7f
/* 815050EC | 48 00 00 0C */	b .L_815050F8
.L_815050F0:
/* 815050F0 | 7C 60 FE 70 */	srawi r0, r3, 31
/* 815050F4 | 7C 7E 00 78 */	andc r30, r3, r0
.L_815050F8:
/* 815050F8 | 83 FD 01 E4 */	lwz r31, 0x1e4(r29)
/* 815050FC | 3B BD 00 B8 */	addi r29, r29, 0xb8
/* 81505100 | 7F A4 EB 78 */	mr r4, r29
/* 81505104 | 38 7F 00 04 */	addi r3, r31, 0x4
/* 81505108 | 48 00 D3 99 */	bl fn_815124A0
/* 8150510C | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 81505110 | 38 1F 00 08 */	addi r0, r31, 0x8
/* 81505114 | 48 00 00 34 */	b .L_81505148
.L_81505118:
/* 81505118 | 88 A3 FF BC */	lbz r5, -0x44(r3)
/* 8150511C | 80 83 FF 88 */	lwz r4, -0x78(r3)
/* 81505120 | 7C A5 22 14 */	add r5, r5, r4
/* 81505124 | 2C 05 00 7F */	cmpwi r5, 0x7f
/* 81505128 | 40 81 00 0C */	ble .L_81505134
/* 8150512C | 38 80 00 7F */	li r4, 0x7f
/* 81505130 | 48 00 00 0C */	b .L_8150513C
.L_81505134:
/* 81505134 | 7C A4 FE 70 */	srawi r4, r5, 31
/* 81505138 | 7C A4 20 78 */	andc r4, r5, r4
.L_8150513C:
/* 8150513C | 7C 1E 20 00 */	cmpw r30, r4
/* 81505140 | 41 80 00 10 */	blt .L_81505150
/* 81505144 | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_81505148:
/* 81505148 | 7C 03 00 40 */	cmplw r3, r0
/* 8150514C | 40 82 FF CC */	bne .L_81505118
.L_81505150:
/* 81505150 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 81505154 | 7F A5 EB 78 */	mr r5, r29
/* 81505158 | 38 7F 00 04 */	addi r3, r31, 0x4
/* 8150515C | 38 81 00 08 */	addi r4, r1, 0x8
/* 81505160 | 48 00 D3 15 */	bl fn_81512474
/* 81505164 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81505168 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8150516C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81505170 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81505174 | 7C 08 03 A6 */	mtlr r0
/* 81505178 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150517C | 4E 80 00 20 */	blr
.endfn SetPlayerPriority__Q44nw4r3snd6detail8SeqSoundFi

# .text:0x3AC | 0x81505180 | size: 0x14
# nw4r::snd::detail::SeqSound::IsAttachedTempSpecialHandle()
.fn IsAttachedTempSpecialHandle__Q44nw4r3snd6detail8SeqSoundFv, global
/* 81505180 | 80 63 01 E0 */	lwz r3, 0x1e0(r3)
/* 81505184 | 7C 03 00 D0 */	neg r0, r3
/* 81505188 | 7C 00 1B 78 */	or r0, r0, r3
/* 8150518C | 54 03 0F FE */	srwi r3, r0, 31
/* 81505190 | 4E 80 00 20 */	blr
.endfn IsAttachedTempSpecialHandle__Q44nw4r3snd6detail8SeqSoundFv

# .text:0x3C0 | 0x81505194 | size: 0x8
# nw4r::snd::detail::SeqSound::DetachTempSpecialHandle()
.fn DetachTempSpecialHandle__Q44nw4r3snd6detail8SeqSoundFv, global
/* 81505194 | 80 63 01 E0 */	lwz r3, 0x1e0(r3)
/* 81505198 | 48 00 00 28 */	b DetachSound__Q34nw4r3snd14SeqSoundHandleFv
.endfn DetachTempSpecialHandle__Q44nw4r3snd6detail8SeqSoundFv

# .text:0x3C8 | 0x8150519C | size: 0x8
# nw4r::snd::detail::SeqSound::GetBasicPlayer()
.fn GetBasicPlayer__Q44nw4r3snd6detail8SeqSoundFv, global
/* 8150519C | 38 63 00 D8 */	addi r3, r3, 0xd8
/* 815051A0 | 4E 80 00 20 */	blr
.endfn GetBasicPlayer__Q44nw4r3snd6detail8SeqSoundFv

# .text:0x3D0 | 0x815051A4 | size: 0x8
# nw4r::snd::detail::SeqSound::GetBasicPlayer() const
.fn GetBasicPlayer__Q44nw4r3snd6detail8SeqSoundCFv, global
/* 815051A4 | 38 63 00 D8 */	addi r3, r3, 0xd8
/* 815051A8 | 4E 80 00 20 */	blr
.endfn GetBasicPlayer__Q44nw4r3snd6detail8SeqSoundCFv

# .text:0x3D8 | 0x815051AC | size: 0x8
# nw4r::snd::detail::SeqSound::GetRuntimeTypeInfo() const
.fn GetRuntimeTypeInfo__Q44nw4r3snd6detail8SeqSoundCFv, global
/* 815051AC | 38 6D AE C0 */	li r3, typeInfo__Q44nw4r3snd6detail8SeqSound@sda21
/* 815051B0 | 4E 80 00 20 */	blr
.endfn GetRuntimeTypeInfo__Q44nw4r3snd6detail8SeqSoundCFv

# .text:0x3E0 | 0x815051B4 | size: 0xC
.fn "__sinit_\\snd_SeqSound_cpp", weak
/* 815051B4 | 38 0D AE 88 */	li r0, typeInfo__Q44nw4r3snd6detail10BasicSound@sda21
/* 815051B8 | 90 0D AE C0 */	stw r0, typeInfo__Q44nw4r3snd6detail8SeqSound@sda21(r0)
/* 815051BC | 4E 80 00 20 */	blr
.endfn "__sinit_\\snd_SeqSound_cpp"

# 0x8160D230..0x8160D234 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte "__sinit_\\snd_SeqSound_cpp"

# 0x8166F890..0x8166F8F8 | size: 0x68
.data
.balign 8

# .data:0x0 | 0x8166F890 | size: 0x64
# nw4r::snd::detail::SeqSound::__vtable
.obj __vt__Q44nw4r3snd6detail8SeqSound, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte GetRuntimeTypeInfo__Q44nw4r3snd6detail8SeqSoundCFv
	.4byte __dt__Q44nw4r3snd6detail8SeqSoundFv
	.4byte Update__Q44nw4r3snd6detail10BasicSoundFv
	.4byte StartPrepared__Q44nw4r3snd6detail10BasicSoundFv
	.4byte Stop__Q44nw4r3snd6detail10BasicSoundFi
	.4byte Pause__Q44nw4r3snd6detail10BasicSoundFbi
	.4byte SetAutoStopCounter__Q44nw4r3snd6detail10BasicSoundFi
	.4byte FadeIn__Q44nw4r3snd6detail10BasicSoundFi
	.4byte Shutdown__Q44nw4r3snd6detail8SeqSoundFv
	.4byte IsPrepared__Q44nw4r3snd6detail10BasicSoundCFv
	.4byte IsPause__Q44nw4r3snd6detail10BasicSoundCFv
	.4byte SetInitialVolume__Q44nw4r3snd6detail10BasicSoundFf
	.4byte SetVolume__Q44nw4r3snd6detail10BasicSoundFfi
	.4byte SetPitch__Q44nw4r3snd6detail10BasicSoundFf
	.4byte SetPan__Q44nw4r3snd6detail10BasicSoundFf
	.4byte SetSurroundPan__Q44nw4r3snd6detail10BasicSoundFf
	.4byte SetLpfFreq__Q44nw4r3snd6detail10BasicSoundFf
	.4byte SetPlayerPriority__Q44nw4r3snd6detail8SeqSoundFi
	.4byte IsAttachedTempSpecialHandle__Q44nw4r3snd6detail8SeqSoundFv
	.4byte DetachTempSpecialHandle__Q44nw4r3snd6detail8SeqSoundFv
	.4byte InitParam__Q44nw4r3snd6detail8SeqSoundFv
	.4byte GetBasicPlayer__Q44nw4r3snd6detail8SeqSoundFv
	.4byte GetBasicPlayer__Q44nw4r3snd6detail8SeqSoundCFv
.endobj __vt__Q44nw4r3snd6detail8SeqSound

# .data:0x64 | 0x8166F8F4 | size: 0x4
.obj gap_08_8166F8F4_data, global
.hidden gap_08_8166F8F4_data
	.4byte 0x00000000
.endobj gap_08_8166F8F4_data

# 0x81698F00..0x81698F08 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698F00 | size: 0x8
# nw4r::snd::detail::SeqSound::typeInfo
.obj typeInfo__Q44nw4r3snd6detail8SeqSound, global
	.skip 0x8
.endobj typeInfo__Q44nw4r3snd6detail8SeqSound
