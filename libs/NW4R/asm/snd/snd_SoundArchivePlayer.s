.include "macros.inc"
.file "snd_SoundArchivePlayer.cpp"

# 0x81105F80..0x81106198 | size: 0x218
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x81105F80 | size: 0x200
.obj buffer$7626, local
	.skip 0x200
.endobj buffer$7626

# .bss:0x200 | 0x81106180 | size: 0x18
.obj mutex$7628, local
	.skip 0x18
.endobj mutex$7628

# 0x81507E6C..0x8150A82C | size: 0x29C0
.text
.balign 4

# .text:0x0 | 0x81507E6C | size: 0x14C
# nw4r::snd::SoundArchivePlayer::SoundArchivePlayer()
.fn __ct__Q34nw4r3snd18SoundArchivePlayerFv, global
/* 81507E6C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81507E70 | 7C 08 02 A6 */	mflr r0
/* 81507E74 | 3C A0 81 67 */	lis r5, __vt__Q34nw4r3snd18SoundArchivePlayer@ha
/* 81507E78 | 3C 80 81 67 */	lis r4, __vt__Q44nw4r3snd18SoundArchivePlayer15SeqLoadCallback@ha
/* 81507E7C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81507E80 | 38 A5 F9 18 */	addi r5, r5, __vt__Q34nw4r3snd18SoundArchivePlayer@l
/* 81507E84 | 38 05 00 14 */	addi r0, r5, 0x14
/* 81507E88 | 38 84 F9 C0 */	addi r4, r4, __vt__Q44nw4r3snd18SoundArchivePlayer15SeqLoadCallback@l
/* 81507E8C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81507E90 | 3B E0 00 00 */	li r31, 0x0
/* 81507E94 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81507E98 | 7C 7E 1B 78 */	mr r30, r3
/* 81507E9C | 93 E3 00 00 */	stw r31, 0x0(r3)
/* 81507EA0 | 93 E3 00 04 */	stw r31, 0x4(r3)
/* 81507EA4 | 90 A3 00 08 */	stw r5, 0x8(r3)
/* 81507EA8 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 81507EAC | 93 E3 00 10 */	stw r31, 0x10(r3)
/* 81507EB0 | 93 E3 00 14 */	stw r31, 0x14(r3)
/* 81507EB4 | 90 83 00 18 */	stw r4, 0x18(r3)
/* 81507EB8 | 90 63 00 1C */	stw r3, 0x1c(r3)
/* 81507EBC | 38 63 00 20 */	addi r3, r3, 0x20
/* 81507EC0 | 48 02 9D 11 */	bl fn_81531BD0
/* 81507EC4 | 3C 60 81 67 */	lis r3, __vt__Q44nw4r3snd18SoundArchivePlayer17SeqNoteOnCallback@ha
/* 81507EC8 | 3C A0 81 67 */	lis r5, __vt__Q44nw4r3snd18SoundArchivePlayer11WsdCallback@ha
/* 81507ECC | 3C 80 81 67 */	lis r4, __vt__Q44nw4r3snd18SoundArchivePlayer12StrmCallback@ha
/* 81507ED0 | 93 DE 00 3C */	stw r30, 0x3c(r30)
/* 81507ED4 | 38 63 F9 B0 */	addi r3, r3, __vt__Q44nw4r3snd18SoundArchivePlayer17SeqNoteOnCallback@l
/* 81507ED8 | 38 A5 F9 88 */	addi r5, r5, __vt__Q44nw4r3snd18SoundArchivePlayer11WsdCallback@l
/* 81507EDC | 38 84 F9 98 */	addi r4, r4, __vt__Q44nw4r3snd18SoundArchivePlayer12StrmCallback@l
/* 81507EE0 | 90 7E 00 38 */	stw r3, 0x38(r30)
/* 81507EE4 | 38 7E 00 50 */	addi r3, r30, 0x50
/* 81507EE8 | 90 BE 00 40 */	stw r5, 0x40(r30)
/* 81507EEC | 93 DE 00 44 */	stw r30, 0x44(r30)
/* 81507EF0 | 90 9E 00 48 */	stw r4, 0x48(r30)
/* 81507EF4 | 93 DE 00 4C */	stw r30, 0x4c(r30)
/* 81507EF8 | 48 02 9C D9 */	bl fn_81531BD0
/* 81507EFC | 3C 80 81 67 */	lis r4, __vt__Q44nw4r3snd6detail9MmlParser@ha
/* 81507F00 | 3C 60 81 67 */	lis r3, __vt__Q44nw4r3snd6detail20MmlSeqTrackAllocator@ha
/* 81507F04 | 38 BE 00 C4 */	addi r5, r30, 0xc4
/* 81507F08 | 38 1E 00 C0 */	addi r0, r30, 0xc0
/* 81507F0C | 38 84 F7 20 */	addi r4, r4, __vt__Q44nw4r3snd6detail9MmlParser@l
/* 81507F10 | 38 63 F7 40 */	addi r3, r3, __vt__Q44nw4r3snd6detail20MmlSeqTrackAllocator@l
/* 81507F14 | 93 FE 00 80 */	stw r31, 0x80(r30)
/* 81507F18 | 38 DE 00 80 */	addi r6, r30, 0x80
/* 81507F1C | 38 FE 00 90 */	addi r7, r30, 0x90
/* 81507F20 | 39 1E 00 A0 */	addi r8, r30, 0xa0
/* 81507F24 | 93 FE 00 84 */	stw r31, 0x84(r30)
/* 81507F28 | 93 FE 00 90 */	stw r31, 0x90(r30)
/* 81507F2C | 93 FE 00 94 */	stw r31, 0x94(r30)
/* 81507F30 | 93 FE 00 A0 */	stw r31, 0xa0(r30)
/* 81507F34 | 93 FE 00 A4 */	stw r31, 0xa4(r30)
/* 81507F38 | 90 BE 00 68 */	stw r5, 0x68(r30)
/* 81507F3C | 93 FE 00 6C */	stw r31, 0x6c(r30)
/* 81507F40 | 93 FE 00 70 */	stw r31, 0x70(r30)
/* 81507F44 | 93 FE 00 74 */	stw r31, 0x74(r30)
/* 81507F48 | 93 FE 00 78 */	stw r31, 0x78(r30)
/* 81507F4C | 93 FE 00 7C */	stw r31, 0x7c(r30)
/* 81507F50 | 90 DE 00 80 */	stw r6, 0x80(r30)
/* 81507F54 | 90 DE 00 84 */	stw r6, 0x84(r30)
/* 81507F58 | 93 FE 00 88 */	stw r31, 0x88(r30)
/* 81507F5C | 93 FE 00 8C */	stw r31, 0x8c(r30)
/* 81507F60 | 90 FE 00 90 */	stw r7, 0x90(r30)
/* 81507F64 | 90 FE 00 94 */	stw r7, 0x94(r30)
/* 81507F68 | 93 FE 00 98 */	stw r31, 0x98(r30)
/* 81507F6C | 93 FE 00 9C */	stw r31, 0x9c(r30)
/* 81507F70 | 91 1E 00 A0 */	stw r8, 0xa0(r30)
/* 81507F74 | 91 1E 00 A4 */	stw r8, 0xa4(r30)
/* 81507F78 | 90 9E 00 C0 */	stw r4, 0xc0(r30)
/* 81507F7C | 90 7E 00 C4 */	stw r3, 0xc4(r30)
/* 81507F80 | 90 1E 00 C8 */	stw r0, 0xc8(r30)
/* 81507F84 | 93 FE 00 CC */	stw r31, 0xcc(r30)
/* 81507F88 | 93 FE 00 D0 */	stw r31, 0xd0(r30)
/* 81507F8C | 93 FE 00 D4 */	stw r31, 0xd4(r30)
/* 81507F90 | 4B FF 66 55 */	bl GetInstance__Q44nw4r3snd6detail22DisposeCallbackManagerFv
/* 81507F94 | 7F C4 F3 78 */	mr r4, r30
/* 81507F98 | 4B FF 67 31 */	bl RegisterDisposeCallback__Q44nw4r3snd6detail22DisposeCallbackManagerFPQ44nw4r3snd6detail15DisposeCallback
/* 81507F9C | 7F C3 F3 78 */	mr r3, r30
/* 81507FA0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81507FA4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81507FA8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81507FAC | 7C 08 03 A6 */	mtlr r0
/* 81507FB0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81507FB4 | 4E 80 00 20 */	blr
.endfn __ct__Q34nw4r3snd18SoundArchivePlayerFv

# .text:0x14C | 0x81507FB8 | size: 0x40
# nw4r::snd::SoundArchivePlayer::SeqLoadCallback::~SeqLoadCallback()
.fn __dt__Q44nw4r3snd18SoundArchivePlayer15SeqLoadCallbackFv, global
/* 81507FB8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81507FBC | 7C 08 02 A6 */	mflr r0
/* 81507FC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81507FC4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81507FC8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81507FCC | 7C 7F 1B 78 */	mr r31, r3
/* 81507FD0 | 41 82 00 10 */	beq .L_81507FE0
/* 81507FD4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81507FD8 | 40 81 00 08 */	ble .L_81507FE0
/* 81507FDC | 48 0F 01 09 */	bl __dl__FPv
.L_81507FE0:
/* 81507FE0 | 7F E3 FB 78 */	mr r3, r31
/* 81507FE4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81507FE8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81507FEC | 7C 08 03 A6 */	mtlr r0
/* 81507FF0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81507FF4 | 4E 80 00 20 */	blr
.endfn __dt__Q44nw4r3snd18SoundArchivePlayer15SeqLoadCallbackFv

# .text:0x18C | 0x81507FF8 | size: 0x40
# nw4r::snd::SoundArchivePlayer::SeqNoteOnCallback::~SeqNoteOnCallback()
.fn __dt__Q44nw4r3snd18SoundArchivePlayer17SeqNoteOnCallbackFv, global
/* 81507FF8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81507FFC | 7C 08 02 A6 */	mflr r0
/* 81508000 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81508004 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81508008 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150800C | 7C 7F 1B 78 */	mr r31, r3
/* 81508010 | 41 82 00 10 */	beq .L_81508020
/* 81508014 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81508018 | 40 81 00 08 */	ble .L_81508020
/* 8150801C | 48 0F 00 C9 */	bl __dl__FPv
.L_81508020:
/* 81508020 | 7F E3 FB 78 */	mr r3, r31
/* 81508024 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81508028 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150802C | 7C 08 03 A6 */	mtlr r0
/* 81508030 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81508034 | 4E 80 00 20 */	blr
.endfn __dt__Q44nw4r3snd18SoundArchivePlayer17SeqNoteOnCallbackFv

# .text:0x1CC | 0x81508038 | size: 0x40
# nw4r::snd::SoundArchivePlayer::WsdCallback::~WsdCallback()
.fn __dt__Q44nw4r3snd18SoundArchivePlayer11WsdCallbackFv, global
/* 81508038 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150803C | 7C 08 02 A6 */	mflr r0
/* 81508040 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81508044 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81508048 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150804C | 7C 7F 1B 78 */	mr r31, r3
/* 81508050 | 41 82 00 10 */	beq .L_81508060
/* 81508054 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81508058 | 40 81 00 08 */	ble .L_81508060
/* 8150805C | 48 0F 00 89 */	bl __dl__FPv
.L_81508060:
/* 81508060 | 7F E3 FB 78 */	mr r3, r31
/* 81508064 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81508068 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150806C | 7C 08 03 A6 */	mtlr r0
/* 81508070 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81508074 | 4E 80 00 20 */	blr
.endfn __dt__Q44nw4r3snd18SoundArchivePlayer11WsdCallbackFv

# .text:0x20C | 0x81508078 | size: 0x40
# nw4r::snd::SoundArchivePlayer::StrmCallback::~StrmCallback()
.fn __dt__Q44nw4r3snd18SoundArchivePlayer12StrmCallbackFv, global
/* 81508078 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150807C | 7C 08 02 A6 */	mflr r0
/* 81508080 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81508084 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81508088 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150808C | 7C 7F 1B 78 */	mr r31, r3
/* 81508090 | 41 82 00 10 */	beq .L_815080A0
/* 81508094 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81508098 | 40 81 00 08 */	ble .L_815080A0
/* 8150809C | 48 0F 00 49 */	bl __dl__FPv
.L_815080A0:
/* 815080A0 | 7F E3 FB 78 */	mr r3, r31
/* 815080A4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 815080A8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 815080AC | 7C 08 03 A6 */	mtlr r0
/* 815080B0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 815080B4 | 4E 80 00 20 */	blr
.endfn __dt__Q44nw4r3snd18SoundArchivePlayer12StrmCallbackFv

# .text:0x24C | 0x815080B8 | size: 0x20
# nw4r::ut::LinkList<nw4r::snd::detail::SeqSound, 184>::LinkList()
.fn "__ct__Q34nw4r2ut41LinkList<Q44nw4r3snd6detail8SeqSound,184>Fv", global
/* 815080B8 | 38 00 00 00 */	li r0, 0x0
/* 815080BC | 38 83 00 04 */	addi r4, r3, 0x4
/* 815080C0 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 815080C4 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 815080C8 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 815080CC | 90 83 00 04 */	stw r4, 0x4(r3)
/* 815080D0 | 90 83 00 08 */	stw r4, 0x8(r3)
/* 815080D4 | 4E 80 00 20 */	blr
.endfn "__ct__Q34nw4r2ut41LinkList<Q44nw4r3snd6detail8SeqSound,184>Fv"

# .text:0x26C | 0x815080D8 | size: 0x58
# nw4r::ut::LinkList<nw4r::snd::detail::SeqSound, 184>::~LinkList()
.fn "__dt__Q34nw4r2ut41LinkList<Q44nw4r3snd6detail8SeqSound,184>Fv", global
/* 815080D8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 815080DC | 7C 08 02 A6 */	mflr r0
/* 815080E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 815080E4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 815080E8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 815080EC | 7C 9F 23 78 */	mr r31, r4
/* 815080F0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 815080F4 | 7C 7E 1B 78 */	mr r30, r3
/* 815080F8 | 41 82 00 1C */	beq .L_81508114
/* 815080FC | 38 80 00 00 */	li r4, 0x0
/* 81508100 | 48 00 A2 65 */	bl fn_81512364
/* 81508104 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81508108 | 40 81 00 0C */	ble .L_81508114
/* 8150810C | 7F C3 F3 78 */	mr r3, r30
/* 81508110 | 48 0E FF D5 */	bl __dl__FPv
.L_81508114:
/* 81508114 | 7F C3 F3 78 */	mr r3, r30
/* 81508118 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8150811C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81508120 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81508124 | 7C 08 03 A6 */	mtlr r0
/* 81508128 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150812C | 4E 80 00 20 */	blr
.endfn "__dt__Q34nw4r2ut41LinkList<Q44nw4r3snd6detail8SeqSound,184>Fv"

# .text:0x2C4 | 0x81508130 | size: 0x20
# nw4r::ut::LinkList<nw4r::snd::detail::StrmSound, 184>::LinkList()
.fn "__ct__Q34nw4r2ut42LinkList<Q44nw4r3snd6detail9StrmSound,184>Fv", global
/* 81508130 | 38 00 00 00 */	li r0, 0x0
/* 81508134 | 38 83 00 04 */	addi r4, r3, 0x4
/* 81508138 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 8150813C | 90 03 00 08 */	stw r0, 0x8(r3)
/* 81508140 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 81508144 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 81508148 | 90 83 00 08 */	stw r4, 0x8(r3)
/* 8150814C | 4E 80 00 20 */	blr
.endfn "__ct__Q34nw4r2ut42LinkList<Q44nw4r3snd6detail9StrmSound,184>Fv"

# .text:0x2E4 | 0x81508150 | size: 0x58
# nw4r::ut::LinkList<nw4r::snd::detail::StrmSound, 184>::~LinkList()
.fn "__dt__Q34nw4r2ut42LinkList<Q44nw4r3snd6detail9StrmSound,184>Fv", global
/* 81508150 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81508154 | 7C 08 02 A6 */	mflr r0
/* 81508158 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150815C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81508160 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81508164 | 7C 9F 23 78 */	mr r31, r4
/* 81508168 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8150816C | 7C 7E 1B 78 */	mr r30, r3
/* 81508170 | 41 82 00 1C */	beq .L_8150818C
/* 81508174 | 38 80 00 00 */	li r4, 0x0
/* 81508178 | 48 00 A1 ED */	bl fn_81512364
/* 8150817C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81508180 | 40 81 00 0C */	ble .L_8150818C
/* 81508184 | 7F C3 F3 78 */	mr r3, r30
/* 81508188 | 48 0E FF 5D */	bl __dl__FPv
.L_8150818C:
/* 8150818C | 7F C3 F3 78 */	mr r3, r30
/* 81508190 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81508194 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81508198 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150819C | 7C 08 03 A6 */	mtlr r0
/* 815081A0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 815081A4 | 4E 80 00 20 */	blr
.endfn "__dt__Q34nw4r2ut42LinkList<Q44nw4r3snd6detail9StrmSound,184>Fv"

# .text:0x33C | 0x815081A8 | size: 0x20
# nw4r::ut::LinkList<nw4r::snd::detail::WaveSound, 184>::LinkList()
.fn "__ct__Q34nw4r2ut42LinkList<Q44nw4r3snd6detail9WaveSound,184>Fv", global
/* 815081A8 | 38 00 00 00 */	li r0, 0x0
/* 815081AC | 38 83 00 04 */	addi r4, r3, 0x4
/* 815081B0 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 815081B4 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 815081B8 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 815081BC | 90 83 00 04 */	stw r4, 0x4(r3)
/* 815081C0 | 90 83 00 08 */	stw r4, 0x8(r3)
/* 815081C4 | 4E 80 00 20 */	blr
.endfn "__ct__Q34nw4r2ut42LinkList<Q44nw4r3snd6detail9WaveSound,184>Fv"

# .text:0x35C | 0x815081C8 | size: 0x58
# nw4r::ut::LinkList<nw4r::snd::detail::WaveSound, 184>::~LinkList()
.fn "__dt__Q34nw4r2ut42LinkList<Q44nw4r3snd6detail9WaveSound,184>Fv", global
/* 815081C8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 815081CC | 7C 08 02 A6 */	mflr r0
/* 815081D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 815081D4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 815081D8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 815081DC | 7C 9F 23 78 */	mr r31, r4
/* 815081E0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 815081E4 | 7C 7E 1B 78 */	mr r30, r3
/* 815081E8 | 41 82 00 1C */	beq .L_81508204
/* 815081EC | 38 80 00 00 */	li r4, 0x0
/* 815081F0 | 48 00 A1 75 */	bl fn_81512364
/* 815081F4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 815081F8 | 40 81 00 0C */	ble .L_81508204
/* 815081FC | 7F C3 F3 78 */	mr r3, r30
/* 81508200 | 48 0E FE E5 */	bl __dl__FPv
.L_81508204:
/* 81508204 | 7F C3 F3 78 */	mr r3, r30
/* 81508208 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8150820C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81508210 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81508214 | 7C 08 03 A6 */	mtlr r0
/* 81508218 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150821C | 4E 80 00 20 */	blr
.endfn "__dt__Q34nw4r2ut42LinkList<Q44nw4r3snd6detail9WaveSound,184>Fv"

# .text:0x3B4 | 0x81508220 | size: 0xB8
# nw4r::snd::SoundArchivePlayer::~SoundArchivePlayer()
.fn __dt__Q34nw4r3snd18SoundArchivePlayerFv, global
/* 81508220 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81508224 | 7C 08 02 A6 */	mflr r0
/* 81508228 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150822C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81508230 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81508234 | 7C 9F 23 78 */	mr r31, r4
/* 81508238 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8150823C | 7C 7E 1B 78 */	mr r30, r3
/* 81508240 | 41 82 00 7C */	beq .L_815082BC
/* 81508244 | 3C 80 81 67 */	lis r4, __vt__Q34nw4r3snd18SoundArchivePlayer@ha
/* 81508248 | 38 84 F9 18 */	addi r4, r4, __vt__Q34nw4r3snd18SoundArchivePlayer@l
/* 8150824C | 38 04 00 14 */	addi r0, r4, 0x14
/* 81508250 | 90 83 00 08 */	stw r4, 0x8(r3)
/* 81508254 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 81508258 | 4B FF 63 8D */	bl GetInstance__Q44nw4r3snd6detail22DisposeCallbackManagerFv
/* 8150825C | 7F C4 F3 78 */	mr r4, r30
/* 81508260 | 4B FF 64 CD */	bl UnregisterDisposeCallback__Q44nw4r3snd6detail22DisposeCallbackManagerFPQ44nw4r3snd6detail15DisposeCallback
/* 81508264 | 34 1E 00 98 */	addic. r0, r30, 0x98
/* 81508268 | 41 82 00 14 */	beq .L_8150827C
/* 8150826C | 34 7E 00 9C */	addic. r3, r30, 0x9c
/* 81508270 | 41 82 00 0C */	beq .L_8150827C
/* 81508274 | 38 80 00 00 */	li r4, 0x0
/* 81508278 | 48 00 A0 ED */	bl fn_81512364
.L_8150827C:
/* 8150827C | 34 1E 00 88 */	addic. r0, r30, 0x88
/* 81508280 | 41 82 00 14 */	beq .L_81508294
/* 81508284 | 34 7E 00 8C */	addic. r3, r30, 0x8c
/* 81508288 | 41 82 00 0C */	beq .L_81508294
/* 8150828C | 38 80 00 00 */	li r4, 0x0
/* 81508290 | 48 00 A0 D5 */	bl fn_81512364
.L_81508294:
/* 81508294 | 34 1E 00 78 */	addic. r0, r30, 0x78
/* 81508298 | 41 82 00 14 */	beq .L_815082AC
/* 8150829C | 34 7E 00 7C */	addic. r3, r30, 0x7c
/* 815082A0 | 41 82 00 0C */	beq .L_815082AC
/* 815082A4 | 38 80 00 00 */	li r4, 0x0
/* 815082A8 | 48 00 A0 BD */	bl fn_81512364
.L_815082AC:
/* 815082AC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 815082B0 | 40 81 00 0C */	ble .L_815082BC
/* 815082B4 | 7F C3 F3 78 */	mr r3, r30
/* 815082B8 | 48 0E FE 2D */	bl __dl__FPv
.L_815082BC:
/* 815082BC | 7F C3 F3 78 */	mr r3, r30
/* 815082C0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 815082C4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 815082C8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 815082CC | 7C 08 03 A6 */	mtlr r0
/* 815082D0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 815082D4 | 4E 80 00 20 */	blr
.endfn __dt__Q34nw4r3snd18SoundArchivePlayerFv

# .text:0x46C | 0x815082D8 | size: 0xD0
# nw4r::snd::SoundArchivePlayer::Setup(const nw4r::snd::SoundArchive*, void*, unsigned long, void*, unsigned long)
.fn Setup__Q34nw4r3snd18SoundArchivePlayerFPCQ34nw4r3snd12SoundArchivePvUlPvUl, global
/* 815082D8 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 815082DC | 7C 08 02 A6 */	mflr r0
/* 815082E0 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 815082E4 | 39 61 00 60 */	addi r11, r1, 0x60
/* 815082E8 | 48 0F 11 D9 */	bl _savegpr_27
/* 815082EC | 7C 7B 1B 78 */	mr r27, r3
/* 815082F0 | 7C 9C 23 78 */	mr r28, r4
/* 815082F4 | 7C FD 3B 78 */	mr r29, r7
/* 815082F8 | 7D 1E 43 78 */	mr r30, r8
/* 815082FC | 48 00 02 FD */	bl SetupMram__Q34nw4r3snd18SoundArchivePlayerFPCQ34nw4r3snd12SoundArchivePvUl
/* 81508300 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81508304 | 40 82 00 0C */	bne .L_81508310
/* 81508308 | 38 60 00 00 */	li r3, 0x0
/* 8150830C | 48 00 00 84 */	b .L_81508390
.L_81508310:
/* 81508310 | 7F 83 E3 78 */	mr r3, r28
/* 81508314 | 38 81 00 24 */	addi r4, r1, 0x24
/* 81508318 | 3B E0 00 00 */	li r31, 0x0
/* 8150831C | 4B FF DF 49 */	bl ReadSoundArchivePlayerInfo__Q34nw4r3snd12SoundArchiveCFPQ44nw4r3snd12SoundArchive22SoundArchivePlayerInfo
/* 81508320 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81508324 | 41 82 00 08 */	beq .L_8150832C
/* 81508328 | 83 E1 00 34 */	lwz r31, 0x34(r1)
.L_8150832C:
/* 8150832C | 3C 60 00 01 */	lis r3, 0x1
/* 81508330 | 38 03 A0 00 */	subi r0, r3, 0x6000
/* 81508334 | 7C 1F 01 D6 */	mullw r0, r31, r0
/* 81508338 | 7C 1E 00 40 */	cmplw r30, r0
/* 8150833C | 40 80 00 0C */	bge .L_81508348
/* 81508340 | 38 00 00 00 */	li r0, 0x0
/* 81508344 | 48 00 00 38 */	b .L_8150837C
.L_81508348:
/* 81508348 | 7F 83 E3 78 */	mr r3, r28
/* 8150834C | 38 81 00 08 */	addi r4, r1, 0x8
/* 81508350 | 3B E0 00 00 */	li r31, 0x0
/* 81508354 | 4B FF DF 11 */	bl ReadSoundArchivePlayerInfo__Q34nw4r3snd12SoundArchiveCFPQ44nw4r3snd12SoundArchive22SoundArchivePlayerInfo
/* 81508358 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150835C | 41 82 00 08 */	beq .L_81508364
/* 81508360 | 83 E1 00 18 */	lwz r31, 0x18(r1)
.L_81508364:
/* 81508364 | 7F A4 EB 78 */	mr r4, r29
/* 81508368 | 7F C5 F3 78 */	mr r5, r30
/* 8150836C | 7F E6 FB 78 */	mr r6, r31
/* 81508370 | 38 7B 00 A8 */	addi r3, r27, 0xa8
/* 81508374 | 48 00 3F 1D */	bl Setup__Q44nw4r3snd6detail14StrmBufferPoolFPvUli
/* 81508378 | 38 00 00 01 */	li r0, 0x1
.L_8150837C:
/* 8150837C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81508380 | 40 82 00 0C */	bne .L_8150838C
/* 81508384 | 38 60 00 00 */	li r3, 0x0
/* 81508388 | 48 00 00 08 */	b .L_81508390
.L_8150838C:
/* 8150838C | 38 60 00 01 */	li r3, 0x1
.L_81508390:
/* 81508390 | 39 61 00 60 */	addi r11, r1, 0x60
/* 81508394 | 48 0F 11 79 */	bl _restgpr_27
/* 81508398 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 8150839C | 7C 08 03 A6 */	mtlr r0
/* 815083A0 | 38 21 00 60 */	addi r1, r1, 0x60
/* 815083A4 | 4E 80 00 20 */	blr
.endfn Setup__Q34nw4r3snd18SoundArchivePlayerFPCQ34nw4r3snd12SoundArchivePvUlPvUl

# .text:0x53C | 0x815083A8 | size: 0xD4
# nw4r::snd::SoundArchivePlayer::Shutdown()
.fn Shutdown__Q34nw4r3snd18SoundArchivePlayerFv, global
/* 815083A8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 815083AC | 7C 08 02 A6 */	mflr r0
/* 815083B0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 815083B4 | 38 00 00 00 */	li r0, 0x0
/* 815083B8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 815083BC | 3B E0 00 00 */	li r31, 0x0
/* 815083C0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 815083C4 | 3B C0 00 00 */	li r30, 0x0
/* 815083C8 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 815083CC | 7C 7D 1B 78 */	mr r29, r3
/* 815083D0 | 90 03 00 10 */	stw r0, 0x10(r3)
/* 815083D4 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 815083D8 | 90 03 00 6C */	stw r0, 0x6c(r3)
/* 815083DC | 48 00 00 1C */	b .L_815083F8
.L_815083E0:
/* 815083E0 | 80 1D 00 74 */	lwz r0, 0x74(r29)
/* 815083E4 | 38 80 FF FF */	li r4, -0x1
/* 815083E8 | 7C 60 FA 14 */	add r3, r0, r31
/* 815083EC | 48 00 27 D1 */	bl __dt__Q34nw4r3snd11SoundPlayerFv
/* 815083F0 | 3B FF 00 48 */	addi r31, r31, 0x48
/* 815083F4 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_815083F8:
/* 815083F8 | 80 1D 00 70 */	lwz r0, 0x70(r29)
/* 815083FC | 7C 1E 00 40 */	cmplw r30, r0
/* 81508400 | 41 80 FF E0 */	blt .L_815083E0
/* 81508404 | 3B E0 00 00 */	li r31, 0x0
/* 81508408 | 38 7D 00 A8 */	addi r3, r29, 0xa8
/* 8150840C | 93 FD 00 70 */	stw r31, 0x70(r29)
/* 81508410 | 93 FD 00 74 */	stw r31, 0x74(r29)
/* 81508414 | 48 00 3E FD */	bl Shutdown__Q44nw4r3snd6detail14StrmBufferPoolFv
/* 81508418 | 80 9D 00 D0 */	lwz r4, 0xd0(r29)
/* 8150841C | 38 7D 00 78 */	addi r3, r29, 0x78
/* 81508420 | 80 BD 00 D4 */	lwz r5, 0xd4(r29)
/* 81508424 | 4B FF 8F D5 */	bl DestroyImpl__Q44nw4r3snd6detail8PoolImplFPvUl
/* 81508428 | 80 9D 00 D0 */	lwz r4, 0xd0(r29)
/* 8150842C | 38 7D 00 88 */	addi r3, r29, 0x88
/* 81508430 | 80 BD 00 D4 */	lwz r5, 0xd4(r29)
/* 81508434 | 4B FF 8F C5 */	bl DestroyImpl__Q44nw4r3snd6detail8PoolImplFPvUl
/* 81508438 | 80 9D 00 D0 */	lwz r4, 0xd0(r29)
/* 8150843C | 38 7D 00 98 */	addi r3, r29, 0x98
/* 81508440 | 80 BD 00 D4 */	lwz r5, 0xd4(r29)
/* 81508444 | 4B FF 8F B5 */	bl DestroyImpl__Q44nw4r3snd6detail8PoolImplFPvUl
/* 81508448 | 80 9D 00 D0 */	lwz r4, 0xd0(r29)
/* 8150844C | 38 7D 00 C4 */	addi r3, r29, 0xc4
/* 81508450 | 80 BD 00 D4 */	lwz r5, 0xd4(r29)
/* 81508454 | 4B FF A8 51 */	bl Destroy__Q44nw4r3snd6detail20MmlSeqTrackAllocatorFPvUl
/* 81508458 | 93 FD 00 D0 */	stw r31, 0xd0(r29)
/* 8150845C | 93 FD 00 D4 */	stw r31, 0xd4(r29)
/* 81508460 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81508464 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81508468 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8150846C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81508470 | 7C 08 03 A6 */	mtlr r0
/* 81508474 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81508478 | 4E 80 00 20 */	blr
.endfn Shutdown__Q34nw4r3snd18SoundArchivePlayerFv

# .text:0x610 | 0x8150847C | size: 0x130
# nw4r::snd::SoundArchivePlayer::GetRequiredMemSize(const nw4r::snd::SoundArchive*)
.fn GetRequiredMemSize__Q34nw4r3snd18SoundArchivePlayerFPCQ34nw4r3snd12SoundArchive, global
/* 8150847C | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81508480 | 7C 08 02 A6 */	mflr r0
/* 81508484 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81508488 | 93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8150848C | 93 C1 00 38 */	stw r30, 0x38(r1)
/* 81508490 | 93 A1 00 34 */	stw r29, 0x34(r1)
/* 81508494 | 93 81 00 30 */	stw r28, 0x30(r1)
/* 81508498 | 7C 9C 23 78 */	mr r28, r4
/* 8150849C | 7F 83 E3 78 */	mr r3, r28
/* 815084A0 | 4B FF DD 65 */	bl GetPlayerCount__Q34nw4r3snd12SoundArchiveCFv
/* 815084A4 | 1C 83 00 48 */	mulli r4, r3, 0x48
/* 815084A8 | 7C 7E 1B 78 */	mr r30, r3
/* 815084AC | 3B A0 00 00 */	li r29, 0x0
/* 815084B0 | 38 04 00 03 */	addi r0, r4, 0x3
/* 815084B4 | 54 1F 00 3A */	clrrwi r31, r0, 2
/* 815084B8 | 48 00 00 4C */	b .L_81508504
.L_815084BC:
/* 815084BC | 7F 83 E3 78 */	mr r3, r28
/* 815084C0 | 7F A4 EB 78 */	mr r4, r29
/* 815084C4 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 815084C8 | 4B FF DD 95 */	bl ReadPlayerInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive10PlayerInfo
/* 815084CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 815084D0 | 41 82 00 30 */	beq .L_81508500
/* 815084D4 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 815084D8 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 815084DC | 38 03 00 3F */	addi r0, r3, 0x3f
/* 815084E0 | 54 00 00 3A */	clrrwi r0, r0, 2
/* 815084E4 | 7C 89 03 A6 */	mtctr r4
/* 815084E8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 815084EC | 40 81 00 14 */	ble .L_81508500
.L_815084F0:
/* 815084F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 815084F4 | 41 82 00 08 */	beq .L_815084FC
/* 815084F8 | 7F FF 02 14 */	add r31, r31, r0
.L_815084FC:
/* 815084FC | 42 00 FF F4 */	bdnz .L_815084F0
.L_81508500:
/* 81508500 | 3B BD 00 01 */	addi r29, r29, 0x1
.L_81508504:
/* 81508504 | 7C 1D F0 40 */	cmplw r29, r30
/* 81508508 | 41 80 FF B4 */	blt .L_815084BC
/* 8150850C | 7F 83 E3 78 */	mr r3, r28
/* 81508510 | 4B FF DC FD */	bl GetGroupCount__Q34nw4r3snd12SoundArchiveCFv
/* 81508514 | 54 64 18 38 */	slwi r4, r3, 3
/* 81508518 | 7F 83 E3 78 */	mr r3, r28
/* 8150851C | 38 04 00 07 */	addi r0, r4, 0x7
/* 81508520 | 54 00 00 3A */	clrrwi r0, r0, 2
/* 81508524 | 38 81 00 10 */	addi r4, r1, 0x10
/* 81508528 | 7F FF 02 14 */	add r31, r31, r0
/* 8150852C | 4B FF DD 39 */	bl ReadSoundArchivePlayerInfo__Q34nw4r3snd12SoundArchiveCFPQ44nw4r3snd12SoundArchive22SoundArchivePlayerInfo
/* 81508530 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81508534 | 41 82 00 54 */	beq .L_81508588
/* 81508538 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 8150853C | 80 81 00 18 */	lwz r4, 0x18(r1)
/* 81508540 | 1C C0 01 F4 */	mulli r6, r0, 0x1f4
/* 81508544 | 80 61 00 24 */	lwz r3, 0x24(r1)
/* 81508548 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150854C | 1C A4 06 14 */	mulli r5, r4, 0x614
/* 81508550 | 38 C6 00 03 */	addi r6, r6, 0x3
/* 81508554 | 1C 83 01 B4 */	mulli r4, r3, 0x1b4
/* 81508558 | 54 C3 00 3A */	clrrwi r3, r6, 2
/* 8150855C | 38 A5 00 03 */	addi r5, r5, 0x3
/* 81508560 | 7F FF 1A 14 */	add r31, r31, r3
/* 81508564 | 1C 60 00 D4 */	mulli r3, r0, 0xd4
/* 81508568 | 54 A5 00 3A */	clrrwi r5, r5, 2
/* 8150856C | 38 04 00 03 */	addi r0, r4, 0x3
/* 81508570 | 7F FF 2A 14 */	add r31, r31, r5
/* 81508574 | 54 04 00 3A */	clrrwi r4, r0, 2
/* 81508578 | 38 03 00 03 */	addi r0, r3, 0x3
/* 8150857C | 7F FF 22 14 */	add r31, r31, r4
/* 81508580 | 54 00 00 3A */	clrrwi r0, r0, 2
/* 81508584 | 7F FF 02 14 */	add r31, r31, r0
.L_81508588:
/* 81508588 | 7F E3 FB 78 */	mr r3, r31
/* 8150858C | 83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 81508590 | 83 C1 00 38 */	lwz r30, 0x38(r1)
/* 81508594 | 83 A1 00 34 */	lwz r29, 0x34(r1)
/* 81508598 | 83 81 00 30 */	lwz r28, 0x30(r1)
/* 8150859C | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 815085A0 | 7C 08 03 A6 */	mtlr r0
/* 815085A4 | 38 21 00 40 */	addi r1, r1, 0x40
/* 815085A8 | 4E 80 00 20 */	blr
.endfn GetRequiredMemSize__Q34nw4r3snd18SoundArchivePlayerFPCQ34nw4r3snd12SoundArchive

# .text:0x740 | 0x815085AC | size: 0x4C
# nw4r::snd::SoundArchivePlayer::GetRequiredStrmBufferSize(const nw4r::snd::SoundArchive*)
.fn GetRequiredStrmBufferSize__Q34nw4r3snd18SoundArchivePlayerFPCQ34nw4r3snd12SoundArchive, global
/* 815085AC | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 815085B0 | 7C 08 02 A6 */	mflr r0
/* 815085B4 | 7C 83 23 78 */	mr r3, r4
/* 815085B8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 815085BC | 38 81 00 08 */	addi r4, r1, 0x8
/* 815085C0 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 815085C4 | 3B E0 00 00 */	li r31, 0x0
/* 815085C8 | 4B FF DC 9D */	bl ReadSoundArchivePlayerInfo__Q34nw4r3snd12SoundArchiveCFPQ44nw4r3snd12SoundArchive22SoundArchivePlayerInfo
/* 815085CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 815085D0 | 41 82 00 08 */	beq .L_815085D8
/* 815085D4 | 83 E1 00 18 */	lwz r31, 0x18(r1)
.L_815085D8:
/* 815085D8 | 3C 60 00 01 */	lis r3, 0x1
/* 815085DC | 38 03 A0 00 */	subi r0, r3, 0x6000
/* 815085E0 | 7C 7F 01 D6 */	mullw r3, r31, r0
/* 815085E4 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 815085E8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 815085EC | 7C 08 03 A6 */	mtlr r0
/* 815085F0 | 38 21 00 30 */	addi r1, r1, 0x30
/* 815085F4 | 4E 80 00 20 */	blr
.endfn GetRequiredStrmBufferSize__Q34nw4r3snd18SoundArchivePlayerFPCQ34nw4r3snd12SoundArchive

# .text:0x78C | 0x815085F8 | size: 0x244
# nw4r::snd::SoundArchivePlayer::SetupMram(const nw4r::snd::SoundArchive*, void*, unsigned long)
.fn SetupMram__Q34nw4r3snd18SoundArchivePlayerFPCQ34nw4r3snd12SoundArchivePvUl, global
/* 815085F8 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 815085FC | 7C 08 02 A6 */	mflr r0
/* 81508600 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81508604 | 39 61 00 40 */	addi r11, r1, 0x40
/* 81508608 | 48 0F 0E B5 */	bl _savegpr_26
/* 8150860C | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 81508610 | 7F E5 32 14 */	add r31, r5, r6
/* 81508614 | 7C BD 2B 78 */	mr r29, r5
/* 81508618 | 7C DE 33 78 */	mr r30, r6
/* 8150861C | 7C 7B 1B 78 */	mr r27, r3
/* 81508620 | 7C 9C 23 78 */	mr r28, r4
/* 81508624 | 7F E6 FB 78 */	mr r6, r31
/* 81508628 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8150862C | 48 00 02 11 */	bl SetupSoundPlayer__Q34nw4r3snd18SoundArchivePlayerFPCQ34nw4r3snd12SoundArchivePPvPv
/* 81508630 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81508634 | 40 82 00 0C */	bne .L_81508640
/* 81508638 | 38 60 00 00 */	li r3, 0x0
/* 8150863C | 48 00 01 E8 */	b .L_81508824
.L_81508640:
/* 81508640 | 7F 83 E3 78 */	mr r3, r28
/* 81508644 | 4B FF DB C9 */	bl GetGroupCount__Q34nw4r3snd12SoundArchiveCFv
/* 81508648 | 54 63 18 38 */	slwi r3, r3, 3
/* 8150864C | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 81508650 | 38 03 00 04 */	addi r0, r3, 0x4
/* 81508654 | 7C 60 2A 14 */	add r3, r0, r5
/* 81508658 | 38 03 00 03 */	addi r0, r3, 0x3
/* 8150865C | 54 04 00 3A */	clrrwi r4, r0, 2
/* 81508660 | 7C 1F 20 51 */	subf. r0, r31, r4
/* 81508664 | 40 81 00 0C */	ble .L_81508670
/* 81508668 | 38 00 00 00 */	li r0, 0x0
/* 8150866C | 48 00 00 5C */	b .L_815086C8
.L_81508670:
/* 81508670 | 90 BB 00 14 */	stw r5, 0x14(r27)
/* 81508674 | 7F 83 E3 78 */	mr r3, r28
/* 81508678 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 8150867C | 4B FF DB 91 */	bl GetGroupCount__Q34nw4r3snd12SoundArchiveCFv
/* 81508680 | 80 BB 00 14 */	lwz r5, 0x14(r27)
/* 81508684 | 38 C0 00 00 */	li r6, 0x0
/* 81508688 | 38 E0 00 00 */	li r7, 0x0
/* 8150868C | 38 80 00 00 */	li r4, 0x0
/* 81508690 | 90 65 00 00 */	stw r3, 0x0(r5)
/* 81508694 | 48 00 00 20 */	b .L_815086B4
.L_81508698:
/* 81508698 | 7C 63 3A 14 */	add r3, r3, r7
/* 8150869C | 38 C6 00 01 */	addi r6, r6, 0x1
/* 815086A0 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 815086A4 | 80 1B 00 14 */	lwz r0, 0x14(r27)
/* 815086A8 | 7C 60 3A 14 */	add r3, r0, r7
/* 815086AC | 38 E7 00 08 */	addi r7, r7, 0x8
/* 815086B0 | 90 83 00 08 */	stw r4, 0x8(r3)
.L_815086B4:
/* 815086B4 | 80 7B 00 14 */	lwz r3, 0x14(r27)
/* 815086B8 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 815086BC | 7C 06 00 40 */	cmplw r6, r0
/* 815086C0 | 41 80 FF D8 */	blt .L_81508698
/* 815086C4 | 38 00 00 01 */	li r0, 0x1
.L_815086C8:
/* 815086C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 815086CC | 40 82 00 0C */	bne .L_815086D8
/* 815086D0 | 38 60 00 00 */	li r3, 0x0
/* 815086D4 | 48 00 01 50 */	b .L_81508824
.L_815086D8:
/* 815086D8 | 7F 83 E3 78 */	mr r3, r28
/* 815086DC | 38 81 00 0C */	addi r4, r1, 0xc
/* 815086E0 | 4B FF DB 85 */	bl ReadSoundArchivePlayerInfo__Q34nw4r3snd12SoundArchiveCFPQ44nw4r3snd12SoundArchive22SoundArchivePlayerInfo
/* 815086E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 815086E8 | 41 82 01 2C */	beq .L_81508814
/* 815086EC | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 815086F0 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 815086F4 | 1C A0 01 F4 */	mulli r5, r0, 0x1f4
/* 815086F8 | 7C 65 22 14 */	add r3, r5, r4
/* 815086FC | 38 03 00 03 */	addi r0, r3, 0x3
/* 81508700 | 54 1A 00 3A */	clrrwi r26, r0, 2
/* 81508704 | 7C 1F D0 51 */	subf. r0, r31, r26
/* 81508708 | 40 81 00 0C */	ble .L_81508714
/* 8150870C | 38 00 00 00 */	li r0, 0x0
/* 81508710 | 48 00 00 18 */	b .L_81508728
.L_81508714:
/* 81508714 | 38 7B 00 78 */	addi r3, r27, 0x78
/* 81508718 | 38 C0 01 F4 */	li r6, 0x1f4
/* 8150871C | 4B FF 8B 99 */	bl CreateImpl__Q44nw4r3snd6detail8PoolImplFPvUlUl
/* 81508720 | 93 41 00 08 */	stw r26, 0x8(r1)
/* 81508724 | 38 00 00 01 */	li r0, 0x1
.L_81508728:
/* 81508728 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150872C | 40 82 00 0C */	bne .L_81508738
/* 81508730 | 38 60 00 00 */	li r3, 0x0
/* 81508734 | 48 00 00 F0 */	b .L_81508824
.L_81508738:
/* 81508738 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150873C | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 81508740 | 1C A0 06 14 */	mulli r5, r0, 0x614
/* 81508744 | 7C 65 22 14 */	add r3, r5, r4
/* 81508748 | 38 03 00 03 */	addi r0, r3, 0x3
/* 8150874C | 54 1A 00 3A */	clrrwi r26, r0, 2
/* 81508750 | 7C 1F D0 51 */	subf. r0, r31, r26
/* 81508754 | 40 81 00 0C */	ble .L_81508760
/* 81508758 | 38 00 00 00 */	li r0, 0x0
/* 8150875C | 48 00 00 18 */	b .L_81508774
.L_81508760:
/* 81508760 | 38 7B 00 88 */	addi r3, r27, 0x88
/* 81508764 | 38 C0 06 14 */	li r6, 0x614
/* 81508768 | 4B FF 8B 4D */	bl CreateImpl__Q44nw4r3snd6detail8PoolImplFPvUlUl
/* 8150876C | 93 41 00 08 */	stw r26, 0x8(r1)
/* 81508770 | 38 00 00 01 */	li r0, 0x1
.L_81508774:
/* 81508774 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81508778 | 40 82 00 0C */	bne .L_81508784
/* 8150877C | 38 60 00 00 */	li r3, 0x0
/* 81508780 | 48 00 00 A4 */	b .L_81508824
.L_81508784:
/* 81508784 | 80 01 00 20 */	lwz r0, 0x20(r1)
/* 81508788 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 8150878C | 1C A0 01 B4 */	mulli r5, r0, 0x1b4
/* 81508790 | 7C 65 22 14 */	add r3, r5, r4
/* 81508794 | 38 03 00 03 */	addi r0, r3, 0x3
/* 81508798 | 54 1A 00 3A */	clrrwi r26, r0, 2
/* 8150879C | 7C 1F D0 51 */	subf. r0, r31, r26
/* 815087A0 | 40 81 00 0C */	ble .L_815087AC
/* 815087A4 | 38 00 00 00 */	li r0, 0x0
/* 815087A8 | 48 00 00 18 */	b .L_815087C0
.L_815087AC:
/* 815087AC | 38 7B 00 98 */	addi r3, r27, 0x98
/* 815087B0 | 38 C0 01 B4 */	li r6, 0x1b4
/* 815087B4 | 4B FF 8B 01 */	bl CreateImpl__Q44nw4r3snd6detail8PoolImplFPvUlUl
/* 815087B8 | 93 41 00 08 */	stw r26, 0x8(r1)
/* 815087BC | 38 00 00 01 */	li r0, 0x1
.L_815087C0:
/* 815087C0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 815087C4 | 40 82 00 0C */	bne .L_815087D0
/* 815087C8 | 38 60 00 00 */	li r3, 0x0
/* 815087CC | 48 00 00 58 */	b .L_81508824
.L_815087D0:
/* 815087D0 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 815087D4 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 815087D8 | 1C A0 00 D4 */	mulli r5, r0, 0xd4
/* 815087DC | 7C 65 22 14 */	add r3, r5, r4
/* 815087E0 | 38 03 00 03 */	addi r0, r3, 0x3
/* 815087E4 | 54 00 00 3A */	clrrwi r0, r0, 2
/* 815087E8 | 7C 1F 00 51 */	subf. r0, r31, r0
/* 815087EC | 40 81 00 0C */	ble .L_815087F8
/* 815087F0 | 38 00 00 00 */	li r0, 0x0
/* 815087F4 | 48 00 00 10 */	b .L_81508804
.L_815087F8:
/* 815087F8 | 38 7B 00 C4 */	addi r3, r27, 0xc4
/* 815087FC | 4B FF A4 9D */	bl Create__Q44nw4r3snd6detail20MmlSeqTrackAllocatorFPvUl
/* 81508800 | 38 00 00 01 */	li r0, 0x1
.L_81508804:
/* 81508804 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81508808 | 40 82 00 0C */	bne .L_81508814
/* 8150880C | 38 60 00 00 */	li r3, 0x0
/* 81508810 | 48 00 00 14 */	b .L_81508824
.L_81508814:
/* 81508814 | 93 9B 00 10 */	stw r28, 0x10(r27)
/* 81508818 | 38 60 00 01 */	li r3, 0x1
/* 8150881C | 93 BB 00 D0 */	stw r29, 0xd0(r27)
/* 81508820 | 93 DB 00 D4 */	stw r30, 0xd4(r27)
.L_81508824:
/* 81508824 | 39 61 00 40 */	addi r11, r1, 0x40
/* 81508828 | 48 0F 0C E1 */	bl _restgpr_26
/* 8150882C | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81508830 | 7C 08 03 A6 */	mtlr r0
/* 81508834 | 38 21 00 40 */	addi r1, r1, 0x40
/* 81508838 | 4E 80 00 20 */	blr
.endfn SetupMram__Q34nw4r3snd18SoundArchivePlayerFPCQ34nw4r3snd12SoundArchivePvUl

# .text:0x9D0 | 0x8150883C | size: 0x198
# nw4r::snd::SoundArchivePlayer::SetupSoundPlayer(const nw4r::snd::SoundArchive*, void**, void*)
.fn SetupSoundPlayer__Q34nw4r3snd18SoundArchivePlayerFPCQ34nw4r3snd12SoundArchivePPvPv, global
/* 8150883C | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81508840 | 7C 08 02 A6 */	mflr r0
/* 81508844 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81508848 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8150884C | 48 0F 0C 59 */	bl _savegpr_20
/* 81508850 | 7C 98 23 78 */	mr r24, r4
/* 81508854 | 7C 74 1B 78 */	mr r20, r3
/* 81508858 | 7C B9 2B 78 */	mr r25, r5
/* 8150885C | 7C DA 33 78 */	mr r26, r6
/* 81508860 | 7F 03 C3 78 */	mr r3, r24
/* 81508864 | 4B FF D9 A1 */	bl GetPlayerCount__Q34nw4r3snd12SoundArchiveCFv
/* 81508868 | 1C 03 00 48 */	mulli r0, r3, 0x48
/* 8150886C | 83 D9 00 00 */	lwz r30, 0x0(r25)
/* 81508870 | 7C 7F 1B 78 */	mr r31, r3
/* 81508874 | 7C 80 F2 14 */	add r4, r0, r30
/* 81508878 | 38 04 00 03 */	addi r0, r4, 0x3
/* 8150887C | 54 04 00 3A */	clrrwi r4, r0, 2
/* 81508880 | 7C 1A 20 51 */	subf. r0, r26, r4
/* 81508884 | 40 81 00 0C */	ble .L_81508890
/* 81508888 | 38 60 00 00 */	li r3, 0x0
/* 8150888C | 48 00 01 30 */	b .L_815089BC
.L_81508890:
/* 81508890 | 90 99 00 00 */	stw r4, 0x0(r25)
/* 81508894 | 3E C0 81 67 */	lis r22, __vt__Q44nw4r3snd6detail10PlayerHeap@ha
/* 81508898 | 3B A0 00 00 */	li r29, 0x0
/* 8150889C | 3A E0 00 00 */	li r23, 0x0
/* 815088A0 | 93 D4 00 74 */	stw r30, 0x74(r20)
/* 815088A4 | 3A D6 F9 D8 */	addi r22, r22, __vt__Q44nw4r3snd6detail10PlayerHeap@l
/* 815088A8 | 90 74 00 70 */	stw r3, 0x70(r20)
/* 815088AC | 48 00 01 04 */	b .L_815089B0
.L_815088B0:
/* 815088B0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 815088B4 | 7F DC F3 78 */	mr r28, r30
/* 815088B8 | 41 82 00 10 */	beq .L_815088C8
/* 815088BC | 7F C3 F3 78 */	mr r3, r30
/* 815088C0 | 48 00 22 01 */	bl __ct__Q34nw4r3snd11SoundPlayerFv
/* 815088C4 | 7C 7C 1B 78 */	mr r28, r3
.L_815088C8:
/* 815088C8 | 7F 03 C3 78 */	mr r3, r24
/* 815088CC | 7F A4 EB 78 */	mr r4, r29
/* 815088D0 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 815088D4 | 4B FF D9 89 */	bl ReadPlayerInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive10PlayerInfo
/* 815088D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 815088DC | 41 82 00 CC */	beq .L_815089A8
/* 815088E0 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 815088E4 | 7F 83 E3 78 */	mr r3, r28
/* 815088E8 | 48 00 30 C5 */	bl SetPlayableSoundCount__Q34nw4r3snd11SoundPlayerFi
/* 815088EC | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 815088F0 | 7F 83 E3 78 */	mr r3, r28
/* 815088F4 | 48 00 31 31 */	bl detail_SetPlayableSoundLimit__Q34nw4r3snd11SoundPlayerFi
/* 815088F8 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 815088FC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81508900 | 41 82 00 A8 */	beq .L_815089A8
/* 81508904 | 3B 60 00 00 */	li r27, 0x0
/* 81508908 | 48 00 00 94 */	b .L_8150899C
.L_8150890C:
/* 8150890C | 82 99 00 00 */	lwz r20, 0x0(r25)
/* 81508910 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 81508914 | 7C 74 02 14 */	add r3, r20, r0
/* 81508918 | 38 03 00 3F */	addi r0, r3, 0x3f
/* 8150891C | 54 03 00 3A */	clrrwi r3, r0, 2
/* 81508920 | 7C 1A 18 51 */	subf. r0, r26, r3
/* 81508924 | 40 81 00 0C */	ble .L_81508930
/* 81508928 | 38 60 00 00 */	li r3, 0x0
/* 8150892C | 48 00 00 90 */	b .L_815089BC
.L_81508930:
/* 81508930 | 90 79 00 00 */	stw r3, 0x0(r25)
/* 81508934 | 2C 14 00 00 */	cmpwi r20, 0x0
/* 81508938 | 82 A1 00 0C */	lwz r21, 0xc(r1)
/* 8150893C | 41 82 00 20 */	beq .L_8150895C
/* 81508940 | 7E 83 A3 78 */	mr r3, r20
/* 81508944 | 48 00 1F 85 */	bl __ct__Q34nw4r3snd9SoundHeapFv
/* 81508948 | 92 D4 00 00 */	stw r22, 0x0(r20)
/* 8150894C | 92 F4 00 2C */	stw r23, 0x2c(r20)
/* 81508950 | 92 F4 00 30 */	stw r23, 0x30(r20)
/* 81508954 | 92 F4 00 34 */	stw r23, 0x34(r20)
/* 81508958 | 92 F4 00 38 */	stw r23, 0x38(r20)
.L_8150895C:
/* 8150895C | 7E 83 A3 78 */	mr r3, r20
/* 81508960 | 7E A5 AB 78 */	mr r5, r21
/* 81508964 | 38 94 00 3C */	addi r4, r20, 0x3c
/* 81508968 | 48 00 20 19 */	bl Create__Q34nw4r3snd9SoundHeapFPvUl
/* 8150896C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81508970 | 41 82 00 08 */	beq .L_81508978
/* 81508974 | 48 00 00 08 */	b .L_8150897C
.L_81508978:
/* 81508978 | 3A 80 00 00 */	li r20, 0x0
.L_8150897C:
/* 8150897C | 2C 14 00 00 */	cmpwi r20, 0x0
/* 81508980 | 40 82 00 0C */	bne .L_8150898C
/* 81508984 | 38 60 00 00 */	li r3, 0x0
/* 81508988 | 48 00 00 34 */	b .L_815089BC
.L_8150898C:
/* 8150898C | 7F 83 E3 78 */	mr r3, r28
/* 81508990 | 7E 84 A3 78 */	mr r4, r20
/* 81508994 | 48 00 31 E9 */	bl detail_AppendPlayerHeap__Q34nw4r3snd11SoundPlayerFPQ44nw4r3snd6detail10PlayerHeap
/* 81508998 | 3B 7B 00 01 */	addi r27, r27, 0x1
.L_8150899C:
/* 8150899C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 815089A0 | 7C 1B 00 00 */	cmpw r27, r0
/* 815089A4 | 41 80 FF 68 */	blt .L_8150890C
.L_815089A8:
/* 815089A8 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 815089AC | 3B DE 00 48 */	addi r30, r30, 0x48
.L_815089B0:
/* 815089B0 | 7C 1D F8 40 */	cmplw r29, r31
/* 815089B4 | 41 80 FE FC */	blt .L_815088B0
/* 815089B8 | 38 60 00 01 */	li r3, 0x1
.L_815089BC:
/* 815089BC | 39 61 00 40 */	addi r11, r1, 0x40
/* 815089C0 | 48 0F 0B 31 */	bl _restgpr_20
/* 815089C4 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 815089C8 | 7C 08 03 A6 */	mtlr r0
/* 815089CC | 38 21 00 40 */	addi r1, r1, 0x40
/* 815089D0 | 4E 80 00 20 */	blr
.endfn SetupSoundPlayer__Q34nw4r3snd18SoundArchivePlayerFPCQ34nw4r3snd12SoundArchivePPvPv

# .text:0xB68 | 0x815089D4 | size: 0x374
# nw4r::snd::SoundArchivePlayer::Update()
.fn Update__Q34nw4r3snd18SoundArchivePlayerFv, global
/* 815089D4 | 94 21 ED B0 */	stwu r1, -0x1250(r1)
/* 815089D8 | 7C 08 02 A6 */	mflr r0
/* 815089DC | 90 01 12 54 */	stw r0, 0x1254(r1)
/* 815089E0 | 39 61 12 50 */	addi r11, r1, 0x1250
/* 815089E4 | 48 0F 0A D9 */	bl _savegpr_26
/* 815089E8 | 7C 7E 1B 78 */	mr r30, r3
/* 815089EC | 48 00 34 AD */	bl GetInstance__Q44nw4r3snd6detail11SoundThreadFv
/* 815089F0 | 3B E3 23 20 */	addi r31, r3, 0x2320
/* 815089F4 | 7F E3 FB 78 */	mr r3, r31
/* 815089F8 | 48 02 92 11 */	bl fn_81531C08
/* 815089FC | 3B 40 00 00 */	li r26, 0x0
/* 81508A00 | 3B 60 00 00 */	li r27, 0x0
/* 81508A04 | 48 00 00 18 */	b .L_81508A1C
.L_81508A08:
/* 81508A08 | 80 1E 00 74 */	lwz r0, 0x74(r30)
/* 81508A0C | 7C 60 DA 14 */	add r3, r0, r27
/* 81508A10 | 48 00 22 71 */	bl Update__Q34nw4r3snd11SoundPlayerFv
/* 81508A14 | 3B 7B 00 48 */	addi r27, r27, 0x48
/* 81508A18 | 3B 5A 00 01 */	addi r26, r26, 0x1
.L_81508A1C:
/* 81508A1C | 80 1E 00 70 */	lwz r0, 0x70(r30)
/* 81508A20 | 7C 1A 00 40 */	cmplw r26, r0
/* 81508A24 | 41 80 FF E4 */	blt .L_81508A08
/* 81508A28 | 3C 80 81 51 */	lis r4, "__ct__Q34nw4r2ut41LinkList<Q44nw4r3snd6detail8SeqSound,184>Fv"@ha
/* 81508A2C | 3C A0 81 51 */	lis r5, "__dt__Q34nw4r2ut41LinkList<Q44nw4r3snd6detail8SeqSound,184>Fv"@ha
/* 81508A30 | 38 61 0C 38 */	addi r3, r1, 0xc38
/* 81508A34 | 38 C0 00 0C */	li r6, 0xc
/* 81508A38 | 38 84 80 B8 */	addi r4, r4, "__ct__Q34nw4r2ut41LinkList<Q44nw4r3snd6detail8SeqSound,184>Fv"@l
/* 81508A3C | 38 A5 80 D8 */	addi r5, r5, "__dt__Q34nw4r2ut41LinkList<Q44nw4r3snd6detail8SeqSound,184>Fv"@l
/* 81508A40 | 38 E0 00 80 */	li r7, 0x80
/* 81508A44 | 48 0F 07 BD */	bl __construct_array
/* 81508A48 | 48 00 00 5C */	b .L_81508AA4
.L_81508A4C:
/* 81508A4C | 83 7E 00 80 */	lwz r27, 0x80(r30)
/* 81508A50 | 38 7E 00 7C */	addi r3, r30, 0x7c
/* 81508A54 | 38 81 00 28 */	addi r4, r1, 0x28
/* 81508A58 | 93 61 00 28 */	stw r27, 0x28(r1)
/* 81508A5C | 48 00 99 8D */	bl fn_815123E8
/* 81508A60 | 88 7B FF BC */	lbz r3, -0x44(r27)
/* 81508A64 | 80 1B FF 88 */	lwz r0, -0x78(r27)
/* 81508A68 | 7C 63 02 14 */	add r3, r3, r0
/* 81508A6C | 2C 03 00 7F */	cmpwi r3, 0x7f
/* 81508A70 | 40 81 00 0C */	ble .L_81508A7C
/* 81508A74 | 38 00 00 7F */	li r0, 0x7f
/* 81508A78 | 48 00 00 0C */	b .L_81508A84
.L_81508A7C:
/* 81508A7C | 7C 60 FE 70 */	srawi r0, r3, 31
/* 81508A80 | 7C 60 00 78 */	andc r0, r3, r0
.L_81508A84:
/* 81508A84 | 1C 00 00 0C */	mulli r0, r0, 0xc
/* 81508A88 | 38 61 0C 38 */	addi r3, r1, 0xc38
/* 81508A8C | 7F 65 DB 78 */	mr r5, r27
/* 81508A90 | 38 81 00 2C */	addi r4, r1, 0x2c
/* 81508A94 | 7C 63 02 14 */	add r3, r3, r0
/* 81508A98 | 38 03 00 04 */	addi r0, r3, 0x4
/* 81508A9C | 90 01 00 2C */	stw r0, 0x2c(r1)
/* 81508AA0 | 48 00 99 D5 */	bl fn_81512474
.L_81508AA4:
/* 81508AA4 | 80 1E 00 7C */	lwz r0, 0x7c(r30)
/* 81508AA8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81508AAC | 40 82 FF A0 */	bne .L_81508A4C
/* 81508AB0 | 3B 61 0C 38 */	addi r27, r1, 0xc38
/* 81508AB4 | 3B BE 00 80 */	addi r29, r30, 0x80
/* 81508AB8 | 3B 80 00 00 */	li r28, 0x0
.L_81508ABC:
/* 81508ABC | 80 1B 00 00 */	lwz r0, 0x0(r27)
/* 81508AC0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81508AC4 | 41 82 00 3C */	beq .L_81508B00
/* 81508AC8 | 48 00 00 2C */	b .L_81508AF4
.L_81508ACC:
/* 81508ACC | 83 5B 00 04 */	lwz r26, 0x4(r27)
/* 81508AD0 | 7F 63 DB 78 */	mr r3, r27
/* 81508AD4 | 38 81 00 30 */	addi r4, r1, 0x30
/* 81508AD8 | 93 41 00 30 */	stw r26, 0x30(r1)
/* 81508ADC | 48 00 99 0D */	bl fn_815123E8
/* 81508AE0 | 93 A1 00 34 */	stw r29, 0x34(r1)
/* 81508AE4 | 7F 45 D3 78 */	mr r5, r26
/* 81508AE8 | 38 7E 00 7C */	addi r3, r30, 0x7c
/* 81508AEC | 38 81 00 34 */	addi r4, r1, 0x34
/* 81508AF0 | 48 00 99 85 */	bl fn_81512474
.L_81508AF4:
/* 81508AF4 | 80 1B 00 00 */	lwz r0, 0x0(r27)
/* 81508AF8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81508AFC | 40 82 FF D0 */	bne .L_81508ACC
.L_81508B00:
/* 81508B00 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 81508B04 | 3B 7B 00 0C */	addi r27, r27, 0xc
/* 81508B08 | 2C 1C 00 80 */	cmpwi r28, 0x80
/* 81508B0C | 41 80 FF B0 */	blt .L_81508ABC
/* 81508B10 | 3C 80 81 51 */	lis r4, "__dt__Q34nw4r2ut41LinkList<Q44nw4r3snd6detail8SeqSound,184>Fv"@ha
/* 81508B14 | 38 61 0C 38 */	addi r3, r1, 0xc38
/* 81508B18 | 38 84 80 D8 */	addi r4, r4, "__dt__Q34nw4r2ut41LinkList<Q44nw4r3snd6detail8SeqSound,184>Fv"@l
/* 81508B1C | 38 A0 00 0C */	li r5, 0xc
/* 81508B20 | 38 C0 00 80 */	li r6, 0x80
/* 81508B24 | 48 0F 07 D5 */	bl __destroy_arr
/* 81508B28 | 3C 80 81 51 */	lis r4, "__ct__Q34nw4r2ut42LinkList<Q44nw4r3snd6detail9StrmSound,184>Fv"@ha
/* 81508B2C | 3C A0 81 51 */	lis r5, "__dt__Q34nw4r2ut42LinkList<Q44nw4r3snd6detail9StrmSound,184>Fv"@ha
/* 81508B30 | 38 61 06 38 */	addi r3, r1, 0x638
/* 81508B34 | 38 C0 00 0C */	li r6, 0xc
/* 81508B38 | 38 84 81 30 */	addi r4, r4, "__ct__Q34nw4r2ut42LinkList<Q44nw4r3snd6detail9StrmSound,184>Fv"@l
/* 81508B3C | 38 A5 81 50 */	addi r5, r5, "__dt__Q34nw4r2ut42LinkList<Q44nw4r3snd6detail9StrmSound,184>Fv"@l
/* 81508B40 | 38 E0 00 80 */	li r7, 0x80
/* 81508B44 | 48 0F 06 BD */	bl __construct_array
/* 81508B48 | 48 00 00 5C */	b .L_81508BA4
.L_81508B4C:
/* 81508B4C | 83 5E 00 90 */	lwz r26, 0x90(r30)
/* 81508B50 | 38 7E 00 8C */	addi r3, r30, 0x8c
/* 81508B54 | 38 81 00 18 */	addi r4, r1, 0x18
/* 81508B58 | 93 41 00 18 */	stw r26, 0x18(r1)
/* 81508B5C | 48 00 98 8D */	bl fn_815123E8
/* 81508B60 | 88 7A FF BC */	lbz r3, -0x44(r26)
/* 81508B64 | 80 1A FF 88 */	lwz r0, -0x78(r26)
/* 81508B68 | 7C 63 02 14 */	add r3, r3, r0
/* 81508B6C | 2C 03 00 7F */	cmpwi r3, 0x7f
/* 81508B70 | 40 81 00 0C */	ble .L_81508B7C
/* 81508B74 | 38 00 00 7F */	li r0, 0x7f
/* 81508B78 | 48 00 00 0C */	b .L_81508B84
.L_81508B7C:
/* 81508B7C | 7C 60 FE 70 */	srawi r0, r3, 31
/* 81508B80 | 7C 60 00 78 */	andc r0, r3, r0
.L_81508B84:
/* 81508B84 | 1C 00 00 0C */	mulli r0, r0, 0xc
/* 81508B88 | 38 61 06 38 */	addi r3, r1, 0x638
/* 81508B8C | 7F 45 D3 78 */	mr r5, r26
/* 81508B90 | 38 81 00 1C */	addi r4, r1, 0x1c
/* 81508B94 | 7C 63 02 14 */	add r3, r3, r0
/* 81508B98 | 38 03 00 04 */	addi r0, r3, 0x4
/* 81508B9C | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 81508BA0 | 48 00 98 D5 */	bl fn_81512474
.L_81508BA4:
/* 81508BA4 | 80 1E 00 8C */	lwz r0, 0x8c(r30)
/* 81508BA8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81508BAC | 40 82 FF A0 */	bne .L_81508B4C
/* 81508BB0 | 3B 61 06 38 */	addi r27, r1, 0x638
/* 81508BB4 | 3B BE 00 90 */	addi r29, r30, 0x90
/* 81508BB8 | 3B 80 00 00 */	li r28, 0x0
.L_81508BBC:
/* 81508BBC | 80 1B 00 00 */	lwz r0, 0x0(r27)
/* 81508BC0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81508BC4 | 41 82 00 3C */	beq .L_81508C00
/* 81508BC8 | 48 00 00 2C */	b .L_81508BF4
.L_81508BCC:
/* 81508BCC | 83 5B 00 04 */	lwz r26, 0x4(r27)
/* 81508BD0 | 7F 63 DB 78 */	mr r3, r27
/* 81508BD4 | 38 81 00 20 */	addi r4, r1, 0x20
/* 81508BD8 | 93 41 00 20 */	stw r26, 0x20(r1)
/* 81508BDC | 48 00 98 0D */	bl fn_815123E8
/* 81508BE0 | 93 A1 00 24 */	stw r29, 0x24(r1)
/* 81508BE4 | 7F 45 D3 78 */	mr r5, r26
/* 81508BE8 | 38 7E 00 8C */	addi r3, r30, 0x8c
/* 81508BEC | 38 81 00 24 */	addi r4, r1, 0x24
/* 81508BF0 | 48 00 98 85 */	bl fn_81512474
.L_81508BF4:
/* 81508BF4 | 80 1B 00 00 */	lwz r0, 0x0(r27)
/* 81508BF8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81508BFC | 40 82 FF D0 */	bne .L_81508BCC
.L_81508C00:
/* 81508C00 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 81508C04 | 3B 7B 00 0C */	addi r27, r27, 0xc
/* 81508C08 | 2C 1C 00 80 */	cmpwi r28, 0x80
/* 81508C0C | 41 80 FF B0 */	blt .L_81508BBC
/* 81508C10 | 3C 80 81 51 */	lis r4, "__dt__Q34nw4r2ut42LinkList<Q44nw4r3snd6detail9StrmSound,184>Fv"@ha
/* 81508C14 | 38 61 06 38 */	addi r3, r1, 0x638
/* 81508C18 | 38 84 81 50 */	addi r4, r4, "__dt__Q34nw4r2ut42LinkList<Q44nw4r3snd6detail9StrmSound,184>Fv"@l
/* 81508C1C | 38 A0 00 0C */	li r5, 0xc
/* 81508C20 | 38 C0 00 80 */	li r6, 0x80
/* 81508C24 | 48 0F 06 D5 */	bl __destroy_arr
/* 81508C28 | 3C 80 81 51 */	lis r4, "__ct__Q34nw4r2ut42LinkList<Q44nw4r3snd6detail9WaveSound,184>Fv"@ha
/* 81508C2C | 3C A0 81 51 */	lis r5, "__dt__Q34nw4r2ut42LinkList<Q44nw4r3snd6detail9WaveSound,184>Fv"@ha
/* 81508C30 | 38 61 00 38 */	addi r3, r1, 0x38
/* 81508C34 | 38 C0 00 0C */	li r6, 0xc
/* 81508C38 | 38 84 81 A8 */	addi r4, r4, "__ct__Q34nw4r2ut42LinkList<Q44nw4r3snd6detail9WaveSound,184>Fv"@l
/* 81508C3C | 38 A5 81 C8 */	addi r5, r5, "__dt__Q34nw4r2ut42LinkList<Q44nw4r3snd6detail9WaveSound,184>Fv"@l
/* 81508C40 | 38 E0 00 80 */	li r7, 0x80
/* 81508C44 | 48 0F 05 BD */	bl __construct_array
/* 81508C48 | 48 00 00 5C */	b .L_81508CA4
.L_81508C4C:
/* 81508C4C | 83 5E 00 A0 */	lwz r26, 0xa0(r30)
/* 81508C50 | 38 7E 00 9C */	addi r3, r30, 0x9c
/* 81508C54 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81508C58 | 93 41 00 08 */	stw r26, 0x8(r1)
/* 81508C5C | 48 00 97 8D */	bl fn_815123E8
/* 81508C60 | 88 7A FF BC */	lbz r3, -0x44(r26)
/* 81508C64 | 80 1A FF 88 */	lwz r0, -0x78(r26)
/* 81508C68 | 7C 63 02 14 */	add r3, r3, r0
/* 81508C6C | 2C 03 00 7F */	cmpwi r3, 0x7f
/* 81508C70 | 40 81 00 0C */	ble .L_81508C7C
/* 81508C74 | 38 00 00 7F */	li r0, 0x7f
/* 81508C78 | 48 00 00 0C */	b .L_81508C84
.L_81508C7C:
/* 81508C7C | 7C 60 FE 70 */	srawi r0, r3, 31
/* 81508C80 | 7C 60 00 78 */	andc r0, r3, r0
.L_81508C84:
/* 81508C84 | 1C 00 00 0C */	mulli r0, r0, 0xc
/* 81508C88 | 38 61 00 38 */	addi r3, r1, 0x38
/* 81508C8C | 7F 45 D3 78 */	mr r5, r26
/* 81508C90 | 38 81 00 0C */	addi r4, r1, 0xc
/* 81508C94 | 7C 63 02 14 */	add r3, r3, r0
/* 81508C98 | 38 03 00 04 */	addi r0, r3, 0x4
/* 81508C9C | 90 01 00 0C */	stw r0, 0xc(r1)
/* 81508CA0 | 48 00 97 D5 */	bl fn_81512474
.L_81508CA4:
/* 81508CA4 | 80 1E 00 9C */	lwz r0, 0x9c(r30)
/* 81508CA8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81508CAC | 40 82 FF A0 */	bne .L_81508C4C
/* 81508CB0 | 3B 61 00 38 */	addi r27, r1, 0x38
/* 81508CB4 | 3B BE 00 A0 */	addi r29, r30, 0xa0
/* 81508CB8 | 3B 80 00 00 */	li r28, 0x0
.L_81508CBC:
/* 81508CBC | 80 1B 00 00 */	lwz r0, 0x0(r27)
/* 81508CC0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81508CC4 | 41 82 00 3C */	beq .L_81508D00
/* 81508CC8 | 48 00 00 2C */	b .L_81508CF4
.L_81508CCC:
/* 81508CCC | 83 5B 00 04 */	lwz r26, 0x4(r27)
/* 81508CD0 | 7F 63 DB 78 */	mr r3, r27
/* 81508CD4 | 38 81 00 10 */	addi r4, r1, 0x10
/* 81508CD8 | 93 41 00 10 */	stw r26, 0x10(r1)
/* 81508CDC | 48 00 97 0D */	bl fn_815123E8
/* 81508CE0 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81508CE4 | 7F 45 D3 78 */	mr r5, r26
/* 81508CE8 | 38 7E 00 9C */	addi r3, r30, 0x9c
/* 81508CEC | 38 81 00 14 */	addi r4, r1, 0x14
/* 81508CF0 | 48 00 97 85 */	bl fn_81512474
.L_81508CF4:
/* 81508CF4 | 80 1B 00 00 */	lwz r0, 0x0(r27)
/* 81508CF8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81508CFC | 40 82 FF D0 */	bne .L_81508CCC
.L_81508D00:
/* 81508D00 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 81508D04 | 3B 7B 00 0C */	addi r27, r27, 0xc
/* 81508D08 | 2C 1C 00 80 */	cmpwi r28, 0x80
/* 81508D0C | 41 80 FF B0 */	blt .L_81508CBC
/* 81508D10 | 3C 80 81 51 */	lis r4, "__dt__Q34nw4r2ut42LinkList<Q44nw4r3snd6detail9WaveSound,184>Fv"@ha
/* 81508D14 | 38 61 00 38 */	addi r3, r1, 0x38
/* 81508D18 | 38 84 81 C8 */	addi r4, r4, "__dt__Q34nw4r2ut42LinkList<Q44nw4r3snd6detail9WaveSound,184>Fv"@l
/* 81508D1C | 38 A0 00 0C */	li r5, 0xc
/* 81508D20 | 38 C0 00 80 */	li r6, 0x80
/* 81508D24 | 48 0F 05 D5 */	bl __destroy_arr
/* 81508D28 | 7F E3 FB 78 */	mr r3, r31
/* 81508D2C | 48 02 8F B9 */	bl fn_81531CE4
/* 81508D30 | 39 61 12 50 */	addi r11, r1, 0x1250
/* 81508D34 | 48 0F 07 D5 */	bl _restgpr_26
/* 81508D38 | 80 01 12 54 */	lwz r0, 0x1254(r1)
/* 81508D3C | 7C 08 03 A6 */	mtlr r0
/* 81508D40 | 38 21 12 50 */	addi r1, r1, 0x1250
/* 81508D44 | 4E 80 00 20 */	blr
.endfn Update__Q34nw4r3snd18SoundArchivePlayerFv

# .text:0xEDC | 0x81508D48 | size: 0x10
# nw4r::snd::SoundArchivePlayer::GetSoundPlayer(unsigned long)
.fn GetSoundPlayer__Q34nw4r3snd18SoundArchivePlayerFUl, global
/* 81508D48 | 1C 04 00 48 */	mulli r0, r4, 0x48
/* 81508D4C | 80 63 00 74 */	lwz r3, 0x74(r3)
/* 81508D50 | 7C 63 02 14 */	add r3, r3, r0
/* 81508D54 | 4E 80 00 20 */	blr
.endfn GetSoundPlayer__Q34nw4r3snd18SoundArchivePlayerFUl

# .text:0xEEC | 0x81508D58 | size: 0x14C
# nw4r::snd::SoundArchivePlayer::detail_GetFileAddress(unsigned long) const
.fn detail_GetFileAddress__Q34nw4r3snd18SoundArchivePlayerCFUl, global
/* 81508D58 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81508D5C | 7C 08 02 A6 */	mflr r0
/* 81508D60 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81508D64 | 93 E1 00 4C */	stw r31, 0x4c(r1)
/* 81508D68 | 93 C1 00 48 */	stw r30, 0x48(r1)
/* 81508D6C | 93 A1 00 44 */	stw r29, 0x44(r1)
/* 81508D70 | 7C 9D 23 78 */	mr r29, r4
/* 81508D74 | 93 81 00 40 */	stw r28, 0x40(r1)
/* 81508D78 | 7C 7C 1B 78 */	mr r28, r3
/* 81508D7C | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81508D80 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81508D84 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81508D88 | 7D 89 03 A6 */	mtctr r12
/* 81508D8C | 4E 80 04 21 */	bctrl
/* 81508D90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81508D94 | 41 82 00 08 */	beq .L_81508D9C
/* 81508D98 | 48 00 00 EC */	b .L_81508E84
.L_81508D9C:
/* 81508D9C | 80 7C 00 6C */	lwz r3, 0x6c(r28)
/* 81508DA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81508DA4 | 41 82 00 24 */	beq .L_81508DC8
/* 81508DA8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81508DAC | 7F A4 EB 78 */	mr r4, r29
/* 81508DB0 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 81508DB4 | 7D 89 03 A6 */	mtctr r12
/* 81508DB8 | 4E 80 04 21 */	bctrl
/* 81508DBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81508DC0 | 41 82 00 08 */	beq .L_81508DC8
/* 81508DC4 | 48 00 00 C0 */	b .L_81508E84
.L_81508DC8:
/* 81508DC8 | 80 7C 00 10 */	lwz r3, 0x10(r28)
/* 81508DCC | 7F A4 EB 78 */	mr r4, r29
/* 81508DD0 | 38 A1 00 10 */	addi r5, r1, 0x10
/* 81508DD4 | 4B FF D4 B1 */	bl detail_ReadFileInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive8FileInfo
/* 81508DD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81508DDC | 40 82 00 0C */	bne .L_81508DE8
/* 81508DE0 | 38 60 00 00 */	li r3, 0x0
/* 81508DE4 | 48 00 00 A0 */	b .L_81508E84
.L_81508DE8:
/* 81508DE8 | 3B C0 00 00 */	li r30, 0x0
/* 81508DEC | 48 00 00 88 */	b .L_81508E74
.L_81508DF0:
/* 81508DF0 | 80 7C 00 10 */	lwz r3, 0x10(r28)
/* 81508DF4 | 7F A4 EB 78 */	mr r4, r29
/* 81508DF8 | 7F C5 F3 78 */	mr r5, r30
/* 81508DFC | 38 C1 00 08 */	addi r6, r1, 0x8
/* 81508E00 | 4B FF D4 8D */	bl detail_ReadFilePos__Q34nw4r3snd12SoundArchiveCFUlUlPQ44nw4r3snd12SoundArchive7FilePos
/* 81508E04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81508E08 | 41 82 00 68 */	beq .L_81508E70
/* 81508E0C | 80 7C 00 14 */	lwz r3, 0x14(r28)
/* 81508E10 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 81508E14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81508E18 | 40 82 00 0C */	bne .L_81508E24
/* 81508E1C | 3B E0 00 00 */	li r31, 0x0
/* 81508E20 | 48 00 00 24 */	b .L_81508E44
.L_81508E24:
/* 81508E24 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81508E28 | 7C 04 00 40 */	cmplw r4, r0
/* 81508E2C | 41 80 00 0C */	blt .L_81508E38
/* 81508E30 | 3B E0 00 00 */	li r31, 0x0
/* 81508E34 | 48 00 00 10 */	b .L_81508E44
.L_81508E38:
/* 81508E38 | 54 80 18 38 */	slwi r0, r4, 3
/* 81508E3C | 7C 63 02 14 */	add r3, r3, r0
/* 81508E40 | 83 E3 00 04 */	lwz r31, 0x4(r3)
.L_81508E44:
/* 81508E44 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81508E48 | 41 82 00 28 */	beq .L_81508E70
/* 81508E4C | 80 7C 00 10 */	lwz r3, 0x10(r28)
/* 81508E50 | 38 C1 00 20 */	addi r6, r1, 0x20
/* 81508E54 | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 81508E58 | 4B FF D4 25 */	bl detail_ReadGroupItemInfo__Q34nw4r3snd12SoundArchiveCFUlUlPQ44nw4r3snd12SoundArchive13GroupItemInfo
/* 81508E5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81508E60 | 41 82 00 10 */	beq .L_81508E70
/* 81508E64 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81508E68 | 7C 7F 02 14 */	add r3, r31, r0
/* 81508E6C | 48 00 00 18 */	b .L_81508E84
.L_81508E70:
/* 81508E70 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_81508E74:
/* 81508E74 | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 81508E78 | 7C 1E 00 40 */	cmplw r30, r0
/* 81508E7C | 41 80 FF 74 */	blt .L_81508DF0
/* 81508E80 | 38 60 00 00 */	li r3, 0x0
.L_81508E84:
/* 81508E84 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 81508E88 | 83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 81508E8C | 83 C1 00 48 */	lwz r30, 0x48(r1)
/* 81508E90 | 83 A1 00 44 */	lwz r29, 0x44(r1)
/* 81508E94 | 83 81 00 40 */	lwz r28, 0x40(r1)
/* 81508E98 | 7C 08 03 A6 */	mtlr r0
/* 81508E9C | 38 21 00 50 */	addi r1, r1, 0x50
/* 81508EA0 | 4E 80 00 20 */	blr
.endfn detail_GetFileAddress__Q34nw4r3snd18SoundArchivePlayerCFUl

# .text:0x1038 | 0x81508EA4 | size: 0x14C
# nw4r::snd::SoundArchivePlayer::detail_GetFileWaveDataAddress(unsigned long) const
.fn detail_GetFileWaveDataAddress__Q34nw4r3snd18SoundArchivePlayerCFUl, global
/* 81508EA4 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81508EA8 | 7C 08 02 A6 */	mflr r0
/* 81508EAC | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81508EB0 | 93 E1 00 4C */	stw r31, 0x4c(r1)
/* 81508EB4 | 93 C1 00 48 */	stw r30, 0x48(r1)
/* 81508EB8 | 93 A1 00 44 */	stw r29, 0x44(r1)
/* 81508EBC | 7C 9D 23 78 */	mr r29, r4
/* 81508EC0 | 93 81 00 40 */	stw r28, 0x40(r1)
/* 81508EC4 | 7C 7C 1B 78 */	mr r28, r3
/* 81508EC8 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81508ECC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81508ED0 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81508ED4 | 7D 89 03 A6 */	mtctr r12
/* 81508ED8 | 4E 80 04 21 */	bctrl
/* 81508EDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81508EE0 | 41 82 00 08 */	beq .L_81508EE8
/* 81508EE4 | 48 00 00 EC */	b .L_81508FD0
.L_81508EE8:
/* 81508EE8 | 80 7C 00 6C */	lwz r3, 0x6c(r28)
/* 81508EEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81508EF0 | 41 82 00 24 */	beq .L_81508F14
/* 81508EF4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81508EF8 | 7F A4 EB 78 */	mr r4, r29
/* 81508EFC | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81508F00 | 7D 89 03 A6 */	mtctr r12
/* 81508F04 | 4E 80 04 21 */	bctrl
/* 81508F08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81508F0C | 41 82 00 08 */	beq .L_81508F14
/* 81508F10 | 48 00 00 C0 */	b .L_81508FD0
.L_81508F14:
/* 81508F14 | 80 7C 00 10 */	lwz r3, 0x10(r28)
/* 81508F18 | 7F A4 EB 78 */	mr r4, r29
/* 81508F1C | 38 A1 00 10 */	addi r5, r1, 0x10
/* 81508F20 | 4B FF D3 65 */	bl detail_ReadFileInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive8FileInfo
/* 81508F24 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81508F28 | 40 82 00 0C */	bne .L_81508F34
/* 81508F2C | 38 60 00 00 */	li r3, 0x0
/* 81508F30 | 48 00 00 A0 */	b .L_81508FD0
.L_81508F34:
/* 81508F34 | 3B C0 00 00 */	li r30, 0x0
/* 81508F38 | 48 00 00 88 */	b .L_81508FC0
.L_81508F3C:
/* 81508F3C | 80 7C 00 10 */	lwz r3, 0x10(r28)
/* 81508F40 | 7F A4 EB 78 */	mr r4, r29
/* 81508F44 | 7F C5 F3 78 */	mr r5, r30
/* 81508F48 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 81508F4C | 4B FF D3 41 */	bl detail_ReadFilePos__Q34nw4r3snd12SoundArchiveCFUlUlPQ44nw4r3snd12SoundArchive7FilePos
/* 81508F50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81508F54 | 41 82 00 68 */	beq .L_81508FBC
/* 81508F58 | 80 7C 00 14 */	lwz r3, 0x14(r28)
/* 81508F5C | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 81508F60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81508F64 | 40 82 00 0C */	bne .L_81508F70
/* 81508F68 | 3B E0 00 00 */	li r31, 0x0
/* 81508F6C | 48 00 00 24 */	b .L_81508F90
.L_81508F70:
/* 81508F70 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81508F74 | 7C 04 00 40 */	cmplw r4, r0
/* 81508F78 | 41 80 00 0C */	blt .L_81508F84
/* 81508F7C | 3B E0 00 00 */	li r31, 0x0
/* 81508F80 | 48 00 00 10 */	b .L_81508F90
.L_81508F84:
/* 81508F84 | 54 80 18 38 */	slwi r0, r4, 3
/* 81508F88 | 7C 63 02 14 */	add r3, r3, r0
/* 81508F8C | 83 E3 00 08 */	lwz r31, 0x8(r3)
.L_81508F90:
/* 81508F90 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81508F94 | 41 82 00 28 */	beq .L_81508FBC
/* 81508F98 | 80 7C 00 10 */	lwz r3, 0x10(r28)
/* 81508F9C | 38 C1 00 20 */	addi r6, r1, 0x20
/* 81508FA0 | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 81508FA4 | 4B FF D2 D9 */	bl detail_ReadGroupItemInfo__Q34nw4r3snd12SoundArchiveCFUlUlPQ44nw4r3snd12SoundArchive13GroupItemInfo
/* 81508FA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81508FAC | 41 82 00 10 */	beq .L_81508FBC
/* 81508FB0 | 80 01 00 2C */	lwz r0, 0x2c(r1)
/* 81508FB4 | 7C 7F 02 14 */	add r3, r31, r0
/* 81508FB8 | 48 00 00 18 */	b .L_81508FD0
.L_81508FBC:
/* 81508FBC | 3B DE 00 01 */	addi r30, r30, 0x1
.L_81508FC0:
/* 81508FC0 | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 81508FC4 | 7C 1E 00 40 */	cmplw r30, r0
/* 81508FC8 | 41 80 FF 74 */	blt .L_81508F3C
/* 81508FCC | 38 60 00 00 */	li r3, 0x0
.L_81508FD0:
/* 81508FD0 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 81508FD4 | 83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 81508FD8 | 83 C1 00 48 */	lwz r30, 0x48(r1)
/* 81508FDC | 83 A1 00 44 */	lwz r29, 0x44(r1)
/* 81508FE0 | 83 81 00 40 */	lwz r28, 0x40(r1)
/* 81508FE4 | 7C 08 03 A6 */	mtlr r0
/* 81508FE8 | 38 21 00 50 */	addi r1, r1, 0x50
/* 81508FEC | 4E 80 00 20 */	blr
.endfn detail_GetFileWaveDataAddress__Q34nw4r3snd18SoundArchivePlayerCFUl

# .text:0x1184 | 0x81508FF0 | size: 0x444
# nw4r::snd::SoundArchivePlayer::detail_SetupSound(nw4r::snd::SoundHandle*, unsigned long, nw4r::snd::detail::BasicSound::AmbientArgInfo*, nw4r::snd::detail::ExternalSoundPlayer*, bool, const nw4r::snd::SoundStartable::StartInfo*)
.fn detail_SetupSound__Q34nw4r3snd18SoundArchivePlayerFPQ34nw4r3snd11SoundHandleUlPQ54nw4r3snd6detail10BasicSound14AmbientArgInfoPQ44nw4r3snd6detail19ExternalSoundPlayerbPCQ44nw4r3snd14SoundStartable9StartInfo, global
/* 81508FF0 | 94 21 FD 90 */	stwu r1, -0x270(r1)
/* 81508FF4 | 7C 08 02 A6 */	mflr r0
/* 81508FF8 | 90 01 02 74 */	stw r0, 0x274(r1)
/* 81508FFC | 39 61 02 70 */	addi r11, r1, 0x270
/* 81509000 | 48 0F 04 A9 */	bl _savegpr_21
/* 81509004 | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 81509008 | 7C 7B 1B 78 */	mr r27, r3
/* 8150900C | 7C 9C 23 78 */	mr r28, r4
/* 81509010 | 7C BD 2B 78 */	mr r29, r5
/* 81509014 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81509018 | 7C DE 33 78 */	mr r30, r6
/* 8150901C | 7C FF 3B 78 */	mr r31, r7
/* 81509020 | 7D 1A 43 78 */	mr r26, r8
/* 81509024 | 7D 39 4B 78 */	mr r25, r9
/* 81509028 | 40 82 00 0C */	bne .L_81509034
/* 8150902C | 38 60 00 00 */	li r3, 0x0
/* 81509030 | 48 00 00 0C */	b .L_8150903C
.L_81509034:
/* 81509034 | 7C 03 03 78 */	mr r3, r0
/* 81509038 | 4B FF D1 99 */	bl IsAvailable__Q34nw4r3snd12SoundArchiveCFv
.L_8150903C:
/* 8150903C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81509040 | 40 82 00 0C */	bne .L_8150904C
/* 81509044 | 38 60 00 07 */	li r3, 0x7
/* 81509048 | 48 00 03 D4 */	b .L_8150941C
.L_8150904C:
/* 8150904C | 80 1C 00 00 */	lwz r0, 0x0(r28)
/* 81509050 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81509054 | 41 82 00 0C */	beq .L_81509060
/* 81509058 | 7F 83 E3 78 */	mr r3, r28
/* 8150905C | 48 00 18 1D */	bl DetachSound__Q34nw4r3snd11SoundHandleFv
.L_81509060:
/* 81509060 | 80 7B 00 10 */	lwz r3, 0x10(r27)
/* 81509064 | 7F A4 EB 78 */	mr r4, r29
/* 81509068 | 38 A1 00 28 */	addi r5, r1, 0x28
/* 8150906C | 4B FF D1 D1 */	bl ReadSoundInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive9SoundInfo
/* 81509070 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81509074 | 40 82 00 0C */	bne .L_81509080
/* 81509078 | 38 60 00 03 */	li r3, 0x3
/* 8150907C | 48 00 03 A0 */	b .L_8150941C
.L_81509080:
/* 81509080 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 81509084 | 80 81 00 2C */	lwz r4, 0x2c(r1)
/* 81509088 | 83 01 00 30 */	lwz r24, 0x30(r1)
/* 8150908C | 3A E0 00 01 */	li r23, 0x1
/* 81509090 | 3A C0 00 00 */	li r22, 0x0
/* 81509094 | 3A A0 00 01 */	li r21, 0x1
/* 81509098 | 41 82 00 34 */	beq .L_815090CC
/* 8150909C | 80 79 00 08 */	lwz r3, 0x8(r25)
/* 815090A0 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 815090A4 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 815090A8 | 41 82 00 08 */	beq .L_815090B0
/* 815090AC | 7C 64 1B 78 */	mr r4, r3
.L_815090B0:
/* 815090B0 | 80 19 00 0C */	lwz r0, 0xc(r25)
/* 815090B4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 815090B8 | 41 80 00 08 */	blt .L_815090C0
/* 815090BC | 7C 18 03 78 */	mr r24, r0
.L_815090C0:
/* 815090C0 | 82 F9 00 00 */	lwz r23, 0x0(r25)
/* 815090C4 | 82 D9 00 04 */	lwz r22, 0x4(r25)
/* 815090C8 | 82 B9 00 10 */	lwz r21, 0x10(r25)
.L_815090CC:
/* 815090CC | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 815090D0 | 7F 1A C3 78 */	mr r26, r24
/* 815090D4 | 41 82 00 08 */	beq .L_815090DC
/* 815090D8 | 3B 58 FF FF */	subi r26, r24, 0x1
.L_815090DC:
/* 815090DC | 1C 04 00 48 */	mulli r0, r4, 0x48
/* 815090E0 | 80 BB 00 74 */	lwz r5, 0x74(r27)
/* 815090E4 | 80 7B 00 10 */	lwz r3, 0x10(r27)
/* 815090E8 | 7F A4 EB 78 */	mr r4, r29
/* 815090EC | 7F 25 02 14 */	add r25, r5, r0
/* 815090F0 | 4B FF D1 45 */	bl GetSoundType__Q34nw4r3snd12SoundArchiveCFUl
/* 815090F4 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 815090F8 | 41 82 00 C0 */	beq .L_815091B8
/* 815090FC | 40 80 00 10 */	bge .L_8150910C
/* 81509100 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 81509104 | 40 80 00 14 */	bge .L_81509118
/* 81509108 | 48 00 02 FC */	b .L_81509404
.L_8150910C:
/* 8150910C | 2C 03 00 04 */	cmpwi r3, 0x4
/* 81509110 | 40 80 02 F4 */	bge .L_81509404
/* 81509114 | 48 00 01 D8 */	b .L_815092EC
.L_81509118:
/* 81509118 | 80 7B 00 10 */	lwz r3, 0x10(r27)
/* 8150911C | 7F A4 EB 78 */	mr r4, r29
/* 81509120 | 38 A1 00 18 */	addi r5, r1, 0x18
/* 81509124 | 4B FF D1 21 */	bl detail_ReadSeqSoundInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive12SeqSoundInfo
/* 81509128 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150912C | 40 82 00 0C */	bne .L_81509138
/* 81509130 | 38 60 00 03 */	li r3, 0x3
/* 81509134 | 48 00 02 E8 */	b .L_8150941C
.L_81509138:
/* 81509138 | 7F 23 CB 78 */	mr r3, r25
/* 8150913C | 7F 04 C3 78 */	mr r4, r24
/* 81509140 | 7F 45 D3 78 */	mr r5, r26
/* 81509144 | 7F C6 F3 78 */	mr r6, r30
/* 81509148 | 7F E7 FB 78 */	mr r7, r31
/* 8150914C | 7F A8 EB 78 */	mr r8, r29
/* 81509150 | 39 3B 00 78 */	addi r9, r27, 0x78
/* 81509154 | 48 00 1E 39 */	bl "detail_AllocSeqSound__Q34nw4r3snd11SoundPlayerFiiPQ54nw4r3snd6detail10BasicSound14AmbientArgInfoPQ44nw4r3snd6detail19ExternalSoundPlayerUlPQ44nw4r3snd6detail49SoundInstanceManager<Q44nw4r3snd6detail8SeqSound>"
/* 81509158 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150915C | 7C 78 1B 78 */	mr r24, r3
/* 81509160 | 40 82 00 0C */	bne .L_8150916C
/* 81509164 | 38 60 00 01 */	li r3, 0x1
/* 81509168 | 48 00 02 B4 */	b .L_8150941C
.L_8150916C:
/* 8150916C | 7F A4 EB 78 */	mr r4, r29
/* 81509170 | 4B FF 44 59 */	bl SetId__Q44nw4r3snd6detail10BasicSoundFUl
/* 81509174 | 7F 63 DB 78 */	mr r3, r27
/* 81509178 | 7F 04 C3 78 */	mr r4, r24
/* 8150917C | 7E A7 AB 78 */	mr r7, r21
/* 81509180 | 38 A1 00 28 */	addi r5, r1, 0x28
/* 81509184 | 38 C1 00 18 */	addi r6, r1, 0x18
/* 81509188 | 48 00 02 AD */	bl PrepareSeqImpl__Q34nw4r3snd18SoundArchivePlayerFPQ44nw4r3snd6detail8SeqSoundPCQ44nw4r3snd12SoundArchive9SoundInfoPCQ44nw4r3snd12SoundArchive12SeqSoundInfoi
/* 8150918C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81509190 | 7C 75 1B 78 */	mr r21, r3
/* 81509194 | 41 82 02 78 */	beq .L_8150940C
/* 81509198 | 81 98 00 00 */	lwz r12, 0x0(r24)
/* 8150919C | 7F 03 C3 78 */	mr r3, r24
/* 815091A0 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 815091A4 | 7D 89 03 A6 */	mtctr r12
/* 815091A8 | 4E 80 04 21 */	bctrl
/* 815091AC | 7E A3 AB 78 */	mr r3, r21
/* 815091B0 | 48 00 02 6C */	b .L_8150941C
/* 815091B4 | 48 00 02 58 */	b .L_8150940C
.L_815091B8:
/* 815091B8 | 80 7B 00 10 */	lwz r3, 0x10(r27)
/* 815091BC | 7F A4 EB 78 */	mr r4, r29
/* 815091C0 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 815091C4 | 4B FF D0 89 */	bl detail_ReadStrmSoundInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive13StrmSoundInfo
/* 815091C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 815091CC | 40 82 00 0C */	bne .L_815091D8
/* 815091D0 | 38 60 00 03 */	li r3, 0x3
/* 815091D4 | 48 00 02 48 */	b .L_8150941C
.L_815091D8:
/* 815091D8 | 80 7B 00 10 */	lwz r3, 0x10(r27)
/* 815091DC | 38 A1 00 38 */	addi r5, r1, 0x38
/* 815091E0 | 80 81 00 28 */	lwz r4, 0x28(r1)
/* 815091E4 | 38 C0 02 00 */	li r6, 0x200
/* 815091E8 | 4B FF D0 AD */	bl detail_OpenFileStream__Q34nw4r3snd12SoundArchiveCFUlPvi
/* 815091EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 815091F0 | 40 82 00 0C */	bne .L_815091FC
/* 815091F4 | 38 60 00 06 */	li r3, 0x6
/* 815091F8 | 48 00 02 24 */	b .L_8150941C
.L_815091FC:
/* 815091FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81509200 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81509204 | 7D 89 03 A6 */	mtctr r12
/* 81509208 | 4E 80 04 21 */	bctrl
/* 8150920C | 7F 23 CB 78 */	mr r3, r25
/* 81509210 | 7F 04 C3 78 */	mr r4, r24
/* 81509214 | 7F 45 D3 78 */	mr r5, r26
/* 81509218 | 7F C6 F3 78 */	mr r6, r30
/* 8150921C | 7F E7 FB 78 */	mr r7, r31
/* 81509220 | 7F A8 EB 78 */	mr r8, r29
/* 81509224 | 39 3B 00 88 */	addi r9, r27, 0x88
/* 81509228 | 48 00 20 C5 */	bl "detail_AllocStrmSound__Q34nw4r3snd11SoundPlayerFiiPQ54nw4r3snd6detail10BasicSound14AmbientArgInfoPQ44nw4r3snd6detail19ExternalSoundPlayerUlPQ44nw4r3snd6detail50SoundInstanceManager<Q44nw4r3snd6detail9StrmSound>"
/* 8150922C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81509230 | 7C 78 1B 78 */	mr r24, r3
/* 81509234 | 40 82 00 0C */	bne .L_81509240
/* 81509238 | 38 60 00 01 */	li r3, 0x1
/* 8150923C | 48 00 01 E0 */	b .L_8150941C
.L_81509240:
/* 81509240 | 7F A4 EB 78 */	mr r4, r29
/* 81509244 | 4B FF 43 85 */	bl SetId__Q44nw4r3snd6detail10BasicSoundFUl
/* 81509248 | 2C 17 00 01 */	cmpwi r23, 0x1
/* 8150924C | 38 A0 00 00 */	li r5, 0x0
/* 81509250 | 40 82 00 08 */	bne .L_81509258
/* 81509254 | 38 A0 00 01 */	li r5, 0x1
.L_81509258:
/* 81509258 | 81 21 00 28 */	lwz r9, 0x28(r1)
/* 8150925C | 7F 03 C3 78 */	mr r3, r24
/* 81509260 | 7E C6 B3 78 */	mr r6, r22
/* 81509264 | 7E A7 AB 78 */	mr r7, r21
/* 81509268 | 38 9B 00 A8 */	addi r4, r27, 0xa8
/* 8150926C | 39 1B 00 48 */	addi r8, r27, 0x48
/* 81509270 | 48 00 55 B1 */	bl Prepare__Q44nw4r3snd6detail9StrmSoundFPQ44nw4r3snd6detail14StrmBufferPoolQ54nw4r3snd6detail10StrmPlayer15StartOffsetTypeliPQ54nw4r3snd6detail10StrmPlayer12StrmCallbackUl
/* 81509274 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81509278 | 40 82 00 0C */	bne .L_81509284
/* 8150927C | 3B 40 00 FF */	li r26, 0xff
/* 81509280 | 48 00 00 44 */	b .L_815092C4
.L_81509284:
/* 81509284 | 80 81 00 34 */	lwz r4, 0x34(r1)
/* 81509288 | 3C 00 43 30 */	lis r0, 0x4330
/* 8150928C | 90 01 02 38 */	stw r0, 0x238(r1)
/* 81509290 | 7F 03 C3 78 */	mr r3, r24
/* 81509294 | 6C 80 80 00 */	xoris r0, r4, 0x8000
/* 81509298 | 81 98 00 00 */	lwz r12, 0x0(r24)
/* 8150929C | 90 01 02 3C */	stw r0, 0x23c(r1)
/* 815092A0 | C8 42 8F 90 */	lfd f2, lbl_81695390@sda21(r0)
/* 815092A4 | C8 21 02 38 */	lfd f1, 0x238(r1)
/* 815092A8 | C0 02 8F 88 */	lfs f0, lbl_81695388@sda21(r0)
/* 815092AC | EC 21 10 28 */	fsubs f1, f1, f2
/* 815092B0 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 815092B4 | EC 21 00 24 */	fdivs f1, f1, f0
/* 815092B8 | 7D 89 03 A6 */	mtctr r12
/* 815092BC | 4E 80 04 21 */	bctrl
/* 815092C0 | 3B 40 00 00 */	li r26, 0x0
.L_815092C4:
/* 815092C4 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 815092C8 | 41 82 01 44 */	beq .L_8150940C
/* 815092CC | 81 98 00 00 */	lwz r12, 0x0(r24)
/* 815092D0 | 7F 03 C3 78 */	mr r3, r24
/* 815092D4 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 815092D8 | 7D 89 03 A6 */	mtctr r12
/* 815092DC | 4E 80 04 21 */	bctrl
/* 815092E0 | 7F 43 D3 78 */	mr r3, r26
/* 815092E4 | 48 00 01 38 */	b .L_8150941C
/* 815092E8 | 48 00 01 24 */	b .L_8150940C
.L_815092EC:
/* 815092EC | 80 7B 00 10 */	lwz r3, 0x10(r27)
/* 815092F0 | 7F A4 EB 78 */	mr r4, r29
/* 815092F4 | 38 A1 00 10 */	addi r5, r1, 0x10
/* 815092F8 | 4B FF CF 5D */	bl detail_ReadWaveSoundInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive13WaveSoundInfo
/* 815092FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81509300 | 40 82 00 0C */	bne .L_8150930C
/* 81509304 | 38 60 00 03 */	li r3, 0x3
/* 81509308 | 48 00 01 14 */	b .L_8150941C
.L_8150930C:
/* 8150930C | 7F 23 CB 78 */	mr r3, r25
/* 81509310 | 7F 04 C3 78 */	mr r4, r24
/* 81509314 | 7F 45 D3 78 */	mr r5, r26
/* 81509318 | 7F C6 F3 78 */	mr r6, r30
/* 8150931C | 7F E7 FB 78 */	mr r7, r31
/* 81509320 | 7F A8 EB 78 */	mr r8, r29
/* 81509324 | 39 3B 00 98 */	addi r9, r27, 0x98
/* 81509328 | 48 00 23 25 */	bl "detail_AllocWaveSound__Q34nw4r3snd11SoundPlayerFiiPQ54nw4r3snd6detail10BasicSound14AmbientArgInfoPQ44nw4r3snd6detail19ExternalSoundPlayerUlPQ44nw4r3snd6detail50SoundInstanceManager<Q44nw4r3snd6detail9WaveSound>"
/* 8150932C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81509330 | 7C 78 1B 78 */	mr r24, r3
/* 81509334 | 40 82 00 0C */	bne .L_81509340
/* 81509338 | 38 60 00 01 */	li r3, 0x1
/* 8150933C | 48 00 00 E0 */	b .L_8150941C
.L_81509340:
/* 81509340 | 7F A4 EB 78 */	mr r4, r29
/* 81509344 | 4B FF 42 85 */	bl SetId__Q44nw4r3snd6detail10BasicSoundFUl
/* 81509348 | 80 81 00 28 */	lwz r4, 0x28(r1)
/* 8150934C | 7F 63 DB 78 */	mr r3, r27
/* 81509350 | 4B FF FA 09 */	bl detail_GetFileAddress__Q34nw4r3snd18SoundArchivePlayerCFUl
/* 81509354 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81509358 | 7C 64 1B 78 */	mr r4, r3
/* 8150935C | 40 82 00 0C */	bne .L_81509368
/* 81509360 | 3B 40 00 04 */	li r26, 0x4
/* 81509364 | 48 00 00 78 */	b .L_815093DC
.L_81509368:
/* 81509368 | 80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8150936C | 7F 03 C3 78 */	mr r3, r24
/* 81509370 | 81 01 00 28 */	lwz r8, 0x28(r1)
/* 81509374 | 7E A6 AB 78 */	mr r6, r21
/* 81509378 | 38 FB 00 40 */	addi r7, r27, 0x40
/* 8150937C | 48 00 72 21 */	bl Prepare__Q44nw4r3snd6detail9WaveSoundFPCvliPCQ54nw4r3snd6detail8WsdTrack11WsdCallbackUl
/* 81509380 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81509384 | 40 82 00 0C */	bne .L_81509390
/* 81509388 | 3B 40 00 FF */	li r26, 0xff
/* 8150938C | 48 00 00 50 */	b .L_815093DC
.L_81509390:
/* 81509390 | 80 81 00 34 */	lwz r4, 0x34(r1)
/* 81509394 | 3C 00 43 30 */	lis r0, 0x4330
/* 81509398 | 90 01 02 38 */	stw r0, 0x238(r1)
/* 8150939C | 7F 03 C3 78 */	mr r3, r24
/* 815093A0 | 6C 80 80 00 */	xoris r0, r4, 0x8000
/* 815093A4 | 81 98 00 00 */	lwz r12, 0x0(r24)
/* 815093A8 | 90 01 02 3C */	stw r0, 0x23c(r1)
/* 815093AC | C8 42 8F 90 */	lfd f2, lbl_81695390@sda21(r0)
/* 815093B0 | C8 21 02 38 */	lfd f1, 0x238(r1)
/* 815093B4 | C0 02 8F 88 */	lfs f0, lbl_81695388@sda21(r0)
/* 815093B8 | EC 21 10 28 */	fsubs f1, f1, f2
/* 815093BC | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 815093C0 | EC 21 00 24 */	fdivs f1, f1, f0
/* 815093C4 | 7D 89 03 A6 */	mtctr r12
/* 815093C8 | 4E 80 04 21 */	bctrl
/* 815093CC | 80 81 00 14 */	lwz r4, 0x14(r1)
/* 815093D0 | 7F 03 C3 78 */	mr r3, r24
/* 815093D4 | 48 00 73 0D */	bl SetChannelPriority__Q44nw4r3snd6detail9WaveSoundFi
/* 815093D8 | 3B 40 00 00 */	li r26, 0x0
.L_815093DC:
/* 815093DC | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 815093E0 | 41 82 00 2C */	beq .L_8150940C
/* 815093E4 | 81 98 00 00 */	lwz r12, 0x0(r24)
/* 815093E8 | 7F 03 C3 78 */	mr r3, r24
/* 815093EC | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 815093F0 | 7D 89 03 A6 */	mtctr r12
/* 815093F4 | 4E 80 04 21 */	bctrl
/* 815093F8 | 7F 43 D3 78 */	mr r3, r26
/* 815093FC | 48 00 00 20 */	b .L_8150941C
/* 81509400 | 48 00 00 0C */	b .L_8150940C
.L_81509404:
/* 81509404 | 38 60 00 03 */	li r3, 0x3
/* 81509408 | 48 00 00 14 */	b .L_8150941C
.L_8150940C:
/* 8150940C | 7F 83 E3 78 */	mr r3, r28
/* 81509410 | 7F 04 C3 78 */	mr r4, r24
/* 81509414 | 48 00 14 19 */	bl detail_AttachSound__Q34nw4r3snd11SoundHandleFPQ44nw4r3snd6detail10BasicSound
/* 81509418 | 38 60 00 00 */	li r3, 0x0
.L_8150941C:
/* 8150941C | 39 61 02 70 */	addi r11, r1, 0x270
/* 81509420 | 48 0F 00 D5 */	bl _restgpr_21
/* 81509424 | 80 01 02 74 */	lwz r0, 0x274(r1)
/* 81509428 | 7C 08 03 A6 */	mtlr r0
/* 8150942C | 38 21 02 70 */	addi r1, r1, 0x270
/* 81509430 | 4E 80 00 20 */	blr
.endfn detail_SetupSound__Q34nw4r3snd18SoundArchivePlayerFPQ34nw4r3snd11SoundHandleUlPQ54nw4r3snd6detail10BasicSound14AmbientArgInfoPQ44nw4r3snd6detail19ExternalSoundPlayerbPCQ44nw4r3snd14SoundStartable9StartInfo

# .text:0x15C8 | 0x81509434 | size: 0x1BC
# nw4r::snd::SoundArchivePlayer::PrepareSeqImpl(nw4r::snd::detail::SeqSound*, const nw4r::snd::SoundArchive::SoundInfo*, const nw4r::snd::SoundArchive::SeqSoundInfo*, int)
.fn PrepareSeqImpl__Q34nw4r3snd18SoundArchivePlayerFPQ44nw4r3snd6detail8SeqSoundPCQ44nw4r3snd12SoundArchive9SoundInfoPCQ44nw4r3snd12SoundArchive12SeqSoundInfoi, global
/* 81509434 | 94 21 FD C0 */	stwu r1, -0x240(r1)
/* 81509438 | 7C 08 02 A6 */	mflr r0
/* 8150943C | 90 01 02 44 */	stw r0, 0x244(r1)
/* 81509440 | 39 61 02 40 */	addi r11, r1, 0x240
/* 81509444 | 48 0F 00 6D */	bl _savegpr_23
/* 81509448 | 7C 98 23 78 */	mr r24, r4
/* 8150944C | 80 85 00 00 */	lwz r4, 0x0(r5)
/* 81509450 | 7C 77 1B 78 */	mr r23, r3
/* 81509454 | 7C B9 2B 78 */	mr r25, r5
/* 81509458 | 7C DA 33 78 */	mr r26, r6
/* 8150945C | 7C FB 3B 78 */	mr r27, r7
/* 81509460 | 4B FF F8 F9 */	bl detail_GetFileAddress__Q34nw4r3snd18SoundArchivePlayerCFUl
/* 81509464 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81509468 | 7C 7C 1B 78 */	mr r28, r3
/* 8150946C | 40 82 00 AC */	bne .L_81509518
/* 81509470 | 83 D8 00 04 */	lwz r30, 0x4(r24)
/* 81509474 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81509478 | 40 82 00 0C */	bne .L_81509484
/* 8150947C | 38 60 00 04 */	li r3, 0x4
/* 81509480 | 48 00 01 58 */	b .L_815095D8
.L_81509484:
/* 81509484 | 80 77 00 10 */	lwz r3, 0x10(r23)
/* 81509488 | 38 A1 00 10 */	addi r5, r1, 0x10
/* 8150948C | 80 99 00 00 */	lwz r4, 0x0(r25)
/* 81509490 | 38 C0 02 00 */	li r6, 0x200
/* 81509494 | 4B FF CE 01 */	bl detail_OpenFileStream__Q34nw4r3snd12SoundArchiveCFUlPvi
/* 81509498 | 3B BE 00 04 */	addi r29, r30, 0x4
/* 8150949C | 7C 7F 1B 78 */	mr r31, r3
/* 815094A0 | 7F A3 EB 78 */	mr r3, r29
/* 815094A4 | 48 02 87 65 */	bl fn_81531C08
/* 815094A8 | 38 7E 00 1C */	addi r3, r30, 0x1c
/* 815094AC | 4B FF 68 81 */	bl GetFreeSize__Q44nw4r3snd6detail9FrameHeapCFv
/* 815094B0 | 7C 7E 1B 78 */	mr r30, r3
/* 815094B4 | 7F A3 EB 78 */	mr r3, r29
/* 815094B8 | 48 02 88 2D */	bl fn_81531CE4
/* 815094BC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 815094C0 | 7F E3 FB 78 */	mr r3, r31
/* 815094C4 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 815094C8 | 7D 89 03 A6 */	mtctr r12
/* 815094CC | 4E 80 04 21 */	bctrl
/* 815094D0 | 7C 1E 18 40 */	cmplw r30, r3
/* 815094D4 | 40 80 00 28 */	bge .L_815094FC
/* 815094D8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 815094DC | 41 82 00 18 */	beq .L_815094F4
/* 815094E0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 815094E4 | 7F E3 FB 78 */	mr r3, r31
/* 815094E8 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 815094EC | 7D 89 03 A6 */	mtctr r12
/* 815094F0 | 4E 80 04 21 */	bctrl
.L_815094F4:
/* 815094F4 | 38 60 00 05 */	li r3, 0x5
/* 815094F8 | 48 00 00 E0 */	b .L_815095D8
.L_815094FC:
/* 815094FC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81509500 | 41 82 00 18 */	beq .L_81509518
/* 81509504 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81509508 | 7F E3 FB 78 */	mr r3, r31
/* 8150950C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81509510 | 7D 89 03 A6 */	mtctr r12
/* 81509514 | 4E 80 04 21 */	bctrl
.L_81509518:
/* 81509518 | 80 97 00 68 */	lwz r4, 0x68(r23)
/* 8150951C | 7F 03 C3 78 */	mr r3, r24
/* 81509520 | 80 BA 00 08 */	lwz r5, 0x8(r26)
/* 81509524 | 7F 66 DB 78 */	mr r6, r27
/* 81509528 | 38 F7 00 38 */	addi r7, r23, 0x38
/* 8150952C | 4B FF B9 45 */	bl Setup__Q44nw4r3snd6detail8SeqSoundFPQ44nw4r3snd6detail17SeqTrackAllocatorUliPQ44nw4r3snd6detail14NoteOnCallback
/* 81509530 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81509534 | 41 82 00 18 */	beq .L_8150954C
/* 81509538 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8150953C | 38 60 00 FF */	li r3, 0xff
/* 81509540 | 40 82 00 98 */	bne .L_815095D8
/* 81509544 | 38 60 00 08 */	li r3, 0x8
/* 81509548 | 48 00 00 90 */	b .L_815095D8
.L_8150954C:
/* 8150954C | 80 99 00 0C */	lwz r4, 0xc(r25)
/* 81509550 | 3C 00 43 30 */	lis r0, 0x4330
/* 81509554 | 90 01 02 10 */	stw r0, 0x210(r1)
/* 81509558 | 7F 03 C3 78 */	mr r3, r24
/* 8150955C | 6C 80 80 00 */	xoris r0, r4, 0x8000
/* 81509560 | 81 98 00 00 */	lwz r12, 0x0(r24)
/* 81509564 | 90 01 02 14 */	stw r0, 0x214(r1)
/* 81509568 | C8 42 8F 90 */	lfd f2, lbl_81695390@sda21(r0)
/* 8150956C | C8 21 02 10 */	lfd f1, 0x210(r1)
/* 81509570 | C0 02 8F 88 */	lfs f0, lbl_81695388@sda21(r0)
/* 81509574 | EC 21 10 28 */	fsubs f1, f1, f2
/* 81509578 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8150957C | EC 21 00 24 */	fdivs f1, f1, f0
/* 81509580 | 7D 89 03 A6 */	mtctr r12
/* 81509584 | 4E 80 04 21 */	bctrl
/* 81509588 | 80 9A 00 0C */	lwz r4, 0xc(r26)
/* 8150958C | 7F 03 C3 78 */	mr r3, r24
/* 81509590 | 4B FF BB 1D */	bl SetChannelPriority__Q44nw4r3snd6detail8SeqSoundFi
/* 81509594 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81509598 | 41 82 00 2C */	beq .L_815095C4
/* 8150959C | 7F 84 E3 78 */	mr r4, r28
/* 815095A0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 815095A4 | 4B FF A6 3D */	bl __ct__Q44nw4r3snd6detail13SeqFileReaderFPCv
/* 815095A8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 815095AC | 4B FF A6 A1 */	bl GetBaseAddress__Q44nw4r3snd6detail13SeqFileReaderCFv
/* 815095B0 | 80 BA 00 00 */	lwz r5, 0x0(r26)
/* 815095B4 | 7C 64 1B 78 */	mr r4, r3
/* 815095B8 | 7F 03 C3 78 */	mr r3, r24
/* 815095BC | 4B FF B9 1D */	bl Prepare__Q44nw4r3snd6detail8SeqSoundFPCvl
/* 815095C0 | 48 00 00 14 */	b .L_815095D4
.L_815095C4:
/* 815095C4 | 7F 03 C3 78 */	mr r3, r24
/* 815095C8 | 7F 05 C3 78 */	mr r5, r24
/* 815095CC | 38 97 00 18 */	addi r4, r23, 0x18
/* 815095D0 | 4B FF B9 11 */	bl Prepare__Q44nw4r3snd6detail8SeqSoundFPCQ54nw4r3snd6detail8SeqSound15SeqLoadCallbackUl
.L_815095D4:
/* 815095D4 | 38 60 00 00 */	li r3, 0x0
.L_815095D8:
/* 815095D8 | 39 61 02 40 */	addi r11, r1, 0x240
/* 815095DC | 48 0E FF 21 */	bl _restgpr_23
/* 815095E0 | 80 01 02 44 */	lwz r0, 0x244(r1)
/* 815095E4 | 7C 08 03 A6 */	mtlr r0
/* 815095E8 | 38 21 02 40 */	addi r1, r1, 0x240
/* 815095EC | 4E 80 00 20 */	blr
.endfn PrepareSeqImpl__Q34nw4r3snd18SoundArchivePlayerFPQ44nw4r3snd6detail8SeqSoundPCQ44nw4r3snd12SoundArchive9SoundInfoPCQ44nw4r3snd12SoundArchive12SeqSoundInfoi

# .text:0x1784 | 0x815095F0 | size: 0x168
# nw4r::snd::SoundArchivePlayer::LoadGroup(unsigned long, nw4r::snd::SoundMemoryAllocatable*, unsigned long)
.fn LoadGroup__Q34nw4r3snd18SoundArchivePlayerFUlPQ34nw4r3snd22SoundMemoryAllocatableUl, global
/* 815095F0 | 94 21 FD C0 */	stwu r1, -0x240(r1)
/* 815095F4 | 7C 08 02 A6 */	mflr r0
/* 815095F8 | 90 01 02 44 */	stw r0, 0x244(r1)
/* 815095FC | 93 E1 02 3C */	stw r31, 0x23c(r1)
/* 81509600 | 7C DF 33 78 */	mr r31, r6
/* 81509604 | 93 C1 02 38 */	stw r30, 0x238(r1)
/* 81509608 | 7C BE 2B 78 */	mr r30, r5
/* 8150960C | 93 A1 02 34 */	stw r29, 0x234(r1)
/* 81509610 | 7C 9D 23 78 */	mr r29, r4
/* 81509614 | 93 81 02 30 */	stw r28, 0x230(r1)
/* 81509618 | 7C 7C 1B 78 */	mr r28, r3
/* 8150961C | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 81509620 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81509624 | 40 82 00 0C */	bne .L_81509630
/* 81509628 | 38 60 00 00 */	li r3, 0x0
/* 8150962C | 48 00 00 0C */	b .L_81509638
.L_81509630:
/* 81509630 | 7C 03 03 78 */	mr r3, r0
/* 81509634 | 4B FF CB 9D */	bl IsAvailable__Q34nw4r3snd12SoundArchiveCFv
.L_81509638:
/* 81509638 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150963C | 40 82 00 0C */	bne .L_81509648
/* 81509640 | 38 60 00 00 */	li r3, 0x0
/* 81509644 | 48 00 00 F4 */	b .L_81509738
.L_81509648:
/* 81509648 | 80 7C 00 10 */	lwz r3, 0x10(r28)
/* 8150964C | 4B FF CB C1 */	bl GetGroupCount__Q34nw4r3snd12SoundArchiveCFv
/* 81509650 | 7C 1D 18 40 */	cmplw r29, r3
/* 81509654 | 41 80 00 0C */	blt .L_81509660
/* 81509658 | 38 60 00 00 */	li r3, 0x0
/* 8150965C | 48 00 00 DC */	b .L_81509738
.L_81509660:
/* 81509660 | 80 7C 00 14 */	lwz r3, 0x14(r28)
/* 81509664 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81509668 | 40 82 00 0C */	bne .L_81509674
/* 8150966C | 38 00 00 00 */	li r0, 0x0
/* 81509670 | 48 00 00 24 */	b .L_81509694
.L_81509674:
/* 81509674 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81509678 | 7C 1D 00 40 */	cmplw r29, r0
/* 8150967C | 41 80 00 0C */	blt .L_81509688
/* 81509680 | 38 00 00 00 */	li r0, 0x0
/* 81509684 | 48 00 00 10 */	b .L_81509694
.L_81509688:
/* 81509688 | 57 A0 18 38 */	slwi r0, r29, 3
/* 8150968C | 7C 63 02 14 */	add r3, r3, r0
/* 81509690 | 80 03 00 04 */	lwz r0, 0x4(r3)
.L_81509694:
/* 81509694 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81509698 | 41 82 00 0C */	beq .L_815096A4
/* 8150969C | 38 60 00 01 */	li r3, 0x1
/* 815096A0 | 48 00 00 98 */	b .L_81509738
.L_815096A4:
/* 815096A4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 815096A8 | 40 82 00 0C */	bne .L_815096B4
/* 815096AC | 38 60 00 00 */	li r3, 0x0
/* 815096B0 | 48 00 00 88 */	b .L_81509738
.L_815096B4:
/* 815096B4 | 80 9C 00 10 */	lwz r4, 0x10(r28)
/* 815096B8 | 38 61 00 10 */	addi r3, r1, 0x10
/* 815096BC | 4B FF DE 59 */	bl __ct__Q44nw4r3snd6detail18SoundArchiveLoaderFRCQ34nw4r3snd12SoundArchive
/* 815096C0 | 7F A4 EB 78 */	mr r4, r29
/* 815096C4 | 7F C5 F3 78 */	mr r5, r30
/* 815096C8 | 7F E7 FB 78 */	mr r7, r31
/* 815096CC | 38 61 00 10 */	addi r3, r1, 0x10
/* 815096D0 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 815096D4 | 4B FF DE BD */	bl LoadGroup__Q44nw4r3snd6detail18SoundArchiveLoaderFUlPQ34nw4r3snd22SoundMemoryAllocatablePPvUl
/* 815096D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 815096DC | 40 82 00 18 */	bne .L_815096F4
/* 815096E0 | 38 61 00 10 */	addi r3, r1, 0x10
/* 815096E4 | 38 80 FF FF */	li r4, -0x1
/* 815096E8 | 4B FF DE 69 */	bl __dt__Q44nw4r3snd6detail18SoundArchiveLoaderFv
/* 815096EC | 38 60 00 00 */	li r3, 0x0
/* 815096F0 | 48 00 00 48 */	b .L_81509738
.L_815096F4:
/* 815096F4 | 80 9C 00 14 */	lwz r4, 0x14(r28)
/* 815096F8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 815096FC | 41 82 00 10 */	beq .L_8150970C
/* 81509700 | 57 A0 18 38 */	slwi r0, r29, 3
/* 81509704 | 7C 84 02 14 */	add r4, r4, r0
/* 81509708 | 90 64 00 04 */	stw r3, 0x4(r4)
.L_8150970C:
/* 8150970C | 80 7C 00 14 */	lwz r3, 0x14(r28)
/* 81509710 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 81509714 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81509718 | 41 82 00 10 */	beq .L_81509728
/* 8150971C | 57 A0 18 38 */	slwi r0, r29, 3
/* 81509720 | 7C 63 02 14 */	add r3, r3, r0
/* 81509724 | 90 83 00 08 */	stw r4, 0x8(r3)
.L_81509728:
/* 81509728 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8150972C | 38 80 FF FF */	li r4, -0x1
/* 81509730 | 4B FF DE 21 */	bl __dt__Q44nw4r3snd6detail18SoundArchiveLoaderFv
/* 81509734 | 38 60 00 01 */	li r3, 0x1
.L_81509738:
/* 81509738 | 80 01 02 44 */	lwz r0, 0x244(r1)
/* 8150973C | 83 E1 02 3C */	lwz r31, 0x23c(r1)
/* 81509740 | 83 C1 02 38 */	lwz r30, 0x238(r1)
/* 81509744 | 83 A1 02 34 */	lwz r29, 0x234(r1)
/* 81509748 | 83 81 02 30 */	lwz r28, 0x230(r1)
/* 8150974C | 7C 08 03 A6 */	mtlr r0
/* 81509750 | 38 21 02 40 */	addi r1, r1, 0x240
/* 81509754 | 4E 80 00 20 */	blr
.endfn LoadGroup__Q34nw4r3snd18SoundArchivePlayerFUlPQ34nw4r3snd22SoundMemoryAllocatableUl

# .text:0x18EC | 0x81509758 | size: 0x70
# nw4r::snd::SoundArchivePlayer::LoadGroup(const char*, nw4r::snd::SoundMemoryAllocatable*, unsigned long)
.fn LoadGroup__Q34nw4r3snd18SoundArchivePlayerFPCcPQ34nw4r3snd22SoundMemoryAllocatableUl, global
/* 81509758 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150975C | 7C 08 02 A6 */	mflr r0
/* 81509760 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81509764 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81509768 | 7C DF 33 78 */	mr r31, r6
/* 8150976C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81509770 | 7C BE 2B 78 */	mr r30, r5
/* 81509774 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81509778 | 7C 7D 1B 78 */	mr r29, r3
/* 8150977C | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81509780 | 4B FF CA A5 */	bl ConvertLabelStringToGroupId__Q34nw4r3snd12SoundArchiveCFPCc
/* 81509784 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 81509788 | 7C 64 1B 78 */	mr r4, r3
/* 8150978C | 28 00 FF FF */	cmplwi r0, 0xffff
/* 81509790 | 40 82 00 0C */	bne .L_8150979C
/* 81509794 | 38 60 00 00 */	li r3, 0x0
/* 81509798 | 48 00 00 14 */	b .L_815097AC
.L_8150979C:
/* 8150979C | 7F A3 EB 78 */	mr r3, r29
/* 815097A0 | 7F C5 F3 78 */	mr r5, r30
/* 815097A4 | 7F E6 FB 78 */	mr r6, r31
/* 815097A8 | 4B FF FE 49 */	bl LoadGroup__Q34nw4r3snd18SoundArchivePlayerFUlPQ34nw4r3snd22SoundMemoryAllocatableUl
.L_815097AC:
/* 815097AC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 815097B0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 815097B4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 815097B8 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 815097BC | 7C 08 03 A6 */	mtlr r0
/* 815097C0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 815097C4 | 4E 80 00 20 */	blr
.endfn LoadGroup__Q34nw4r3snd18SoundArchivePlayerFPCcPQ34nw4r3snd22SoundMemoryAllocatableUl

# .text:0x195C | 0x815097C8 | size: 0x54
# nw4r::snd::SoundArchivePlayer::InvalidateData(const void*, const void*)
.fn InvalidateData__Q34nw4r3snd18SoundArchivePlayerFPCvPCv, global
/* 815097C8 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 815097CC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 815097D0 | 4D 82 00 20 */	beqlr
/* 815097D4 | 39 20 00 00 */	li r9, 0x0
/* 815097D8 | 38 E0 00 00 */	li r7, 0x0
/* 815097DC | 38 C0 00 00 */	li r6, 0x0
/* 815097E0 | 48 00 00 28 */	b .L_81509808
.L_815097E4:
/* 815097E4 | 7D 08 3A 14 */	add r8, r8, r7
/* 815097E8 | 80 08 00 04 */	lwz r0, 0x4(r8)
/* 815097EC | 7C 04 00 40 */	cmplw r4, r0
/* 815097F0 | 41 81 00 10 */	bgt .L_81509800
/* 815097F4 | 7C 00 28 40 */	cmplw r0, r5
/* 815097F8 | 41 81 00 08 */	bgt .L_81509800
/* 815097FC | 90 C8 00 04 */	stw r6, 0x4(r8)
.L_81509800:
/* 81509800 | 38 E7 00 08 */	addi r7, r7, 0x8
/* 81509804 | 39 29 00 01 */	addi r9, r9, 0x1
.L_81509808:
/* 81509808 | 81 03 00 14 */	lwz r8, 0x14(r3)
/* 8150980C | 80 08 00 00 */	lwz r0, 0x0(r8)
/* 81509810 | 7C 09 00 40 */	cmplw r9, r0
/* 81509814 | 41 80 FF D0 */	blt .L_815097E4
/* 81509818 | 4E 80 00 20 */	blr
.endfn InvalidateData__Q34nw4r3snd18SoundArchivePlayerFPCvPCv

# .text:0x19B0 | 0x8150981C | size: 0x54
# nw4r::snd::SoundArchivePlayer::InvalidateWaveData(const void*, const void*)
.fn InvalidateWaveData__Q34nw4r3snd18SoundArchivePlayerFPCvPCv, global
/* 8150981C | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81509820 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81509824 | 4D 82 00 20 */	beqlr
/* 81509828 | 39 20 00 00 */	li r9, 0x0
/* 8150982C | 38 E0 00 00 */	li r7, 0x0
/* 81509830 | 38 C0 00 00 */	li r6, 0x0
/* 81509834 | 48 00 00 28 */	b .L_8150985C
.L_81509838:
/* 81509838 | 7D 08 3A 14 */	add r8, r8, r7
/* 8150983C | 80 08 00 08 */	lwz r0, 0x8(r8)
/* 81509840 | 7C 04 00 40 */	cmplw r4, r0
/* 81509844 | 41 81 00 10 */	bgt .L_81509854
/* 81509848 | 7C 00 28 40 */	cmplw r0, r5
/* 8150984C | 41 81 00 08 */	bgt .L_81509854
/* 81509850 | 90 C8 00 08 */	stw r6, 0x8(r8)
.L_81509854:
/* 81509854 | 38 E7 00 08 */	addi r7, r7, 0x8
/* 81509858 | 39 29 00 01 */	addi r9, r9, 0x1
.L_8150985C:
/* 8150985C | 81 03 00 14 */	lwz r8, 0x14(r3)
/* 81509860 | 80 08 00 00 */	lwz r0, 0x0(r8)
/* 81509864 | 7C 09 00 40 */	cmplw r9, r0
/* 81509868 | 41 80 FF D0 */	blt .L_81509838
/* 8150986C | 4E 80 00 20 */	blr
.endfn InvalidateWaveData__Q34nw4r3snd18SoundArchivePlayerFPCvPCv

# .text:0x1A04 | 0x81509870 | size: 0x13C
# nw4r::snd::SoundArchivePlayer::SeqLoadCallback::LoadData(void (*)(bool, const void*, long, void*), void*, unsigned long) const
.fn LoadData__Q44nw4r3snd18SoundArchivePlayer15SeqLoadCallbackCFPFbPCvlPv_vPvUl, global
/* 81509870 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81509874 | 7C 08 02 A6 */	mflr r0
/* 81509878 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 8150987C | 39 61 00 50 */	addi r11, r1, 0x50
/* 81509880 | 48 0E FC 39 */	bl _savegpr_25
/* 81509884 | 80 E3 00 04 */	lwz r7, 0x4(r3)
/* 81509888 | 7C 79 1B 78 */	mr r25, r3
/* 8150988C | 7C 9A 23 78 */	mr r26, r4
/* 81509890 | 7C BB 2B 78 */	mr r27, r5
/* 81509894 | 80 67 00 10 */	lwz r3, 0x10(r7)
/* 81509898 | 7C DC 33 78 */	mr r28, r6
/* 8150989C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 815098A0 | 40 82 00 0C */	bne .L_815098AC
/* 815098A4 | 38 60 00 00 */	li r3, 0x0
/* 815098A8 | 48 00 00 08 */	b .L_815098B0
.L_815098AC:
/* 815098AC | 4B FF C9 25 */	bl IsAvailable__Q34nw4r3snd12SoundArchiveCFv
.L_815098B0:
/* 815098B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 815098B4 | 40 82 00 0C */	bne .L_815098C0
/* 815098B8 | 38 60 00 01 */	li r3, 0x1
/* 815098BC | 48 00 00 D8 */	b .L_81509994
.L_815098C0:
/* 815098C0 | 80 79 00 04 */	lwz r3, 0x4(r25)
/* 815098C4 | 38 A1 00 18 */	addi r5, r1, 0x18
/* 815098C8 | 83 FC 00 78 */	lwz r31, 0x78(r28)
/* 815098CC | 83 C3 00 10 */	lwz r30, 0x10(r3)
/* 815098D0 | 7F E4 FB 78 */	mr r4, r31
/* 815098D4 | 7F C3 F3 78 */	mr r3, r30
/* 815098D8 | 4B FF C9 65 */	bl ReadSoundInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive9SoundInfo
/* 815098DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 815098E0 | 40 82 00 0C */	bne .L_815098EC
/* 815098E4 | 38 60 00 01 */	li r3, 0x1
/* 815098E8 | 48 00 00 AC */	b .L_81509994
.L_815098EC:
/* 815098EC | 7F C3 F3 78 */	mr r3, r30
/* 815098F0 | 7F E4 FB 78 */	mr r4, r31
/* 815098F4 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 815098F8 | 4B FF C9 4D */	bl detail_ReadSeqSoundInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive12SeqSoundInfo
/* 815098FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81509900 | 40 82 00 0C */	bne .L_8150990C
/* 81509904 | 38 60 00 01 */	li r3, 0x1
/* 81509908 | 48 00 00 8C */	b .L_81509994
.L_8150990C:
/* 8150990C | 83 BC 00 04 */	lwz r29, 0x4(r28)
/* 81509910 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81509914 | 40 82 00 0C */	bne .L_81509920
/* 81509918 | 38 60 00 01 */	li r3, 0x1
/* 8150991C | 48 00 00 78 */	b .L_81509994
.L_81509920:
/* 81509920 | 48 00 51 F1 */	bl GetInstance__Q44nw4r3snd6detail11TaskManagerFv
/* 81509924 | 48 00 53 7D */	bl Alloc__Q44nw4r3snd6detail11TaskManagerFv
/* 81509928 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150992C | 7C 7F 1B 78 */	mr r31, r3
/* 81509930 | 41 82 00 48 */	beq .L_81509978
/* 81509934 | 80 E1 00 08 */	lwz r7, 0x8(r1)
/* 81509938 | 3C 80 81 67 */	lis r4, __vt__Q44nw4r3snd18SoundArchivePlayer11SeqLoadTask@ha
/* 8150993C | 80 C1 00 18 */	lwz r6, 0x18(r1)
/* 81509940 | 38 A0 00 00 */	li r5, 0x0
/* 81509944 | 38 84 F9 70 */	addi r4, r4, __vt__Q44nw4r3snd18SoundArchivePlayer11SeqLoadTask@l
/* 81509948 | 38 19 00 08 */	addi r0, r25, 0x8
/* 8150994C | 90 A3 00 04 */	stw r5, 0x4(r3)
/* 81509950 | 90 A3 00 08 */	stw r5, 0x8(r3)
/* 81509954 | 93 83 00 0C */	stw r28, 0xc(r3)
/* 81509958 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8150995C | 93 C3 00 14 */	stw r30, 0x14(r3)
/* 81509960 | 90 C3 00 18 */	stw r6, 0x18(r3)
/* 81509964 | 90 E3 00 1C */	stw r7, 0x1c(r3)
/* 81509968 | 93 A3 00 20 */	stw r29, 0x20(r3)
/* 8150996C | 93 43 00 24 */	stw r26, 0x24(r3)
/* 81509970 | 93 63 00 28 */	stw r27, 0x28(r3)
/* 81509974 | 90 03 00 2C */	stw r0, 0x2c(r3)
.L_81509978:
/* 81509978 | 48 00 51 99 */	bl GetInstance__Q44nw4r3snd6detail11TaskManagerFv
/* 8150997C | 7F E4 FB 78 */	mr r4, r31
/* 81509980 | 38 A0 00 01 */	li r5, 0x1
/* 81509984 | 48 00 53 95 */	bl AppendTask__Q44nw4r3snd6detail11TaskManagerFPQ44nw4r3snd6detail4TaskQ54nw4r3snd6detail11TaskManager12TaskPriority
/* 81509988 | 48 00 56 91 */	bl GetInstance__Q44nw4r3snd6detail10TaskThreadFv
/* 8150998C | 48 00 57 85 */	bl SendWakeupMessage__Q44nw4r3snd6detail10TaskThreadFv
/* 81509990 | 38 60 00 03 */	li r3, 0x3
.L_81509994:
/* 81509994 | 39 61 00 50 */	addi r11, r1, 0x50
/* 81509998 | 48 0E FB 6D */	bl _restgpr_25
/* 8150999C | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 815099A0 | 7C 08 03 A6 */	mtlr r0
/* 815099A4 | 38 21 00 50 */	addi r1, r1, 0x50
/* 815099A8 | 4E 80 00 20 */	blr
.endfn LoadData__Q44nw4r3snd18SoundArchivePlayer15SeqLoadCallbackCFPFbPCvlPv_vPvUl

# .text:0x1B40 | 0x815099AC | size: 0x34
# nw4r::snd::SoundArchivePlayer::SeqLoadCallback::CancelLoading(unsigned long) const
.fn CancelLoading__Q44nw4r3snd18SoundArchivePlayer15SeqLoadCallbackCFUl, global
/* 815099AC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 815099B0 | 7C 08 02 A6 */	mflr r0
/* 815099B4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 815099B8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 815099BC | 7C 9F 23 78 */	mr r31, r4
/* 815099C0 | 48 00 51 51 */	bl GetInstance__Q44nw4r3snd6detail11TaskManagerFv
/* 815099C4 | 7F E4 FB 78 */	mr r4, r31
/* 815099C8 | 48 00 55 71 */	bl CancelByTaskId__Q44nw4r3snd6detail11TaskManagerFUl
/* 815099CC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 815099D0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 815099D4 | 7C 08 03 A6 */	mtlr r0
/* 815099D8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 815099DC | 4E 80 00 20 */	blr
.endfn CancelLoading__Q44nw4r3snd18SoundArchivePlayer15SeqLoadCallbackCFUl

# .text:0x1B74 | 0x815099E0 | size: 0x128
# nw4r::snd::SoundArchivePlayer::SeqNoteOnCallback::NoteOn(nw4r::snd::detail::SeqPlayer*, int, const nw4r::snd::detail::NoteOnInfo&)
.fn NoteOn__Q44nw4r3snd18SoundArchivePlayer17SeqNoteOnCallbackFPQ44nw4r3snd6detail9SeqPlayeriRCQ44nw4r3snd6detail10NoteOnInfo, global
/* 815099E0 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 815099E4 | 7C 08 02 A6 */	mflr r0
/* 815099E8 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 815099EC | 93 E1 00 3C */	stw r31, 0x3c(r1)
/* 815099F0 | 7C 9F 23 78 */	mr r31, r4
/* 815099F4 | 93 C1 00 38 */	stw r30, 0x38(r1)
/* 815099F8 | 7C DE 33 78 */	mr r30, r6
/* 815099FC | 93 A1 00 34 */	stw r29, 0x34(r1)
/* 81509A00 | 7C 7D 1B 78 */	mr r29, r3
/* 81509A04 | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 81509A08 | 80 65 00 10 */	lwz r3, 0x10(r5)
/* 81509A0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81509A10 | 40 82 00 0C */	bne .L_81509A1C
/* 81509A14 | 38 60 00 00 */	li r3, 0x0
/* 81509A18 | 48 00 00 08 */	b .L_81509A20
.L_81509A1C:
/* 81509A1C | 4B FF C7 B5 */	bl IsAvailable__Q34nw4r3snd12SoundArchiveCFv
.L_81509A20:
/* 81509A20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81509A24 | 40 82 00 0C */	bne .L_81509A30
/* 81509A28 | 38 60 00 00 */	li r3, 0x0
/* 81509A2C | 48 00 00 C0 */	b .L_81509AEC
.L_81509A30:
/* 81509A30 | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 81509A34 | 38 A1 00 20 */	addi r5, r1, 0x20
/* 81509A38 | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 81509A3C | 83 E3 00 10 */	lwz r31, 0x10(r3)
/* 81509A40 | 7F E3 FB 78 */	mr r3, r31
/* 81509A44 | 4B FF C8 01 */	bl detail_ReadSeqSoundInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive12SeqSoundInfo
/* 81509A48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81509A4C | 40 82 00 0C */	bne .L_81509A58
/* 81509A50 | 38 60 00 00 */	li r3, 0x0
/* 81509A54 | 48 00 00 98 */	b .L_81509AEC
.L_81509A58:
/* 81509A58 | 80 81 00 24 */	lwz r4, 0x24(r1)
/* 81509A5C | 7F E3 FB 78 */	mr r3, r31
/* 81509A60 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81509A64 | 4B FF C8 09 */	bl detail_ReadBankInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive8BankInfo
/* 81509A68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81509A6C | 40 82 00 0C */	bne .L_81509A78
/* 81509A70 | 38 60 00 00 */	li r3, 0x0
/* 81509A74 | 48 00 00 78 */	b .L_81509AEC
.L_81509A78:
/* 81509A78 | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 81509A7C | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 81509A80 | 4B FF F2 D9 */	bl detail_GetFileAddress__Q34nw4r3snd18SoundArchivePlayerCFUl
/* 81509A84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81509A88 | 40 82 00 0C */	bne .L_81509A94
/* 81509A8C | 38 60 00 00 */	li r3, 0x0
/* 81509A90 | 48 00 00 5C */	b .L_81509AEC
.L_81509A94:
/* 81509A94 | 7C 64 1B 78 */	mr r4, r3
/* 81509A98 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81509A9C | 4B FF 24 59 */	bl __ct__Q44nw4r3snd6detail4BankFPCv
/* 81509AA0 | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 81509AA4 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 81509AA8 | 4B FF F3 FD */	bl detail_GetFileWaveDataAddress__Q34nw4r3snd18SoundArchivePlayerCFUl
/* 81509AAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81509AB0 | 40 82 00 18 */	bne .L_81509AC8
/* 81509AB4 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81509AB8 | 38 80 FF FF */	li r4, -0x1
/* 81509ABC | 4B FF 24 71 */	bl __dt__Q44nw4r3snd6detail4BankFv
/* 81509AC0 | 38 60 00 00 */	li r3, 0x0
/* 81509AC4 | 48 00 00 28 */	b .L_81509AEC
.L_81509AC8:
/* 81509AC8 | 90 61 00 1C */	stw r3, 0x1c(r1)
/* 81509ACC | 7F C4 F3 78 */	mr r4, r30
/* 81509AD0 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81509AD4 | 4B FF 24 99 */	bl NoteOn__Q44nw4r3snd6detail4BankCFRCQ44nw4r3snd6detail10NoteOnInfo
/* 81509AD8 | 7C 7F 1B 78 */	mr r31, r3
/* 81509ADC | 38 61 00 10 */	addi r3, r1, 0x10
/* 81509AE0 | 38 80 FF FF */	li r4, -0x1
/* 81509AE4 | 4B FF 24 49 */	bl __dt__Q44nw4r3snd6detail4BankFv
/* 81509AE8 | 7F E3 FB 78 */	mr r3, r31
.L_81509AEC:
/* 81509AEC | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81509AF0 | 83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 81509AF4 | 83 C1 00 38 */	lwz r30, 0x38(r1)
/* 81509AF8 | 83 A1 00 34 */	lwz r29, 0x34(r1)
/* 81509AFC | 7C 08 03 A6 */	mtlr r0
/* 81509B00 | 38 21 00 40 */	addi r1, r1, 0x40
/* 81509B04 | 4E 80 00 20 */	blr
.endfn NoteOn__Q44nw4r3snd18SoundArchivePlayer17SeqNoteOnCallbackFPQ44nw4r3snd6detail9SeqPlayeriRCQ44nw4r3snd6detail10NoteOnInfo

# .text:0x1C9C | 0x81509B08 | size: 0xFC
# nw4r::snd::SoundArchivePlayer::WsdCallback::GetWaveSoundData(nw4r::snd::detail::WaveSoundInfo*, nw4r::snd::detail::WaveSoundNoteInfo*, nw4r::snd::detail::WaveData*, const void*, int, int, unsigned long) const
.fn GetWaveSoundData__Q44nw4r3snd18SoundArchivePlayer11WsdCallbackCFPQ44nw4r3snd6detail13WaveSoundInfoPQ44nw4r3snd6detail17WaveSoundNoteInfoPQ44nw4r3snd6detail8WaveDataPCviiUl, global
/* 81509B08 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81509B0C | 7C 08 02 A6 */	mflr r0
/* 81509B10 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81509B14 | 39 61 00 40 */	addi r11, r1, 0x40
/* 81509B18 | 48 0E F9 9D */	bl _savegpr_24
/* 81509B1C | 81 63 00 04 */	lwz r11, 0x4(r3)
/* 81509B20 | 7C 78 1B 78 */	mr r24, r3
/* 81509B24 | 7C 99 23 78 */	mr r25, r4
/* 81509B28 | 7C BA 2B 78 */	mr r26, r5
/* 81509B2C | 80 6B 00 10 */	lwz r3, 0x10(r11)
/* 81509B30 | 7C DB 33 78 */	mr r27, r6
/* 81509B34 | 7C FC 3B 78 */	mr r28, r7
/* 81509B38 | 7D 1D 43 78 */	mr r29, r8
/* 81509B3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81509B40 | 7D 3E 4B 78 */	mr r30, r9
/* 81509B44 | 7D 5F 53 78 */	mr r31, r10
/* 81509B48 | 40 82 00 0C */	bne .L_81509B54
/* 81509B4C | 38 60 00 00 */	li r3, 0x0
/* 81509B50 | 48 00 00 08 */	b .L_81509B58
.L_81509B54:
/* 81509B54 | 4B FF C6 7D */	bl IsAvailable__Q34nw4r3snd12SoundArchiveCFv
.L_81509B58:
/* 81509B58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81509B5C | 40 82 00 0C */	bne .L_81509B68
/* 81509B60 | 38 60 00 00 */	li r3, 0x0
/* 81509B64 | 48 00 00 88 */	b .L_81509BEC
.L_81509B68:
/* 81509B68 | 80 78 00 04 */	lwz r3, 0x4(r24)
/* 81509B6C | 7F E4 FB 78 */	mr r4, r31
/* 81509B70 | 4B FF F3 35 */	bl detail_GetFileWaveDataAddress__Q34nw4r3snd18SoundArchivePlayerCFUl
/* 81509B74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81509B78 | 7C 7F 1B 78 */	mr r31, r3
/* 81509B7C | 40 82 00 0C */	bne .L_81509B88
/* 81509B80 | 38 60 00 00 */	li r3, 0x0
/* 81509B84 | 48 00 00 68 */	b .L_81509BEC
.L_81509B88:
/* 81509B88 | 7F 84 E3 78 */	mr r4, r28
/* 81509B8C | 38 61 00 08 */	addi r3, r1, 0x8
/* 81509B90 | 48 00 6C 9D */	bl __ct__Q44nw4r3snd6detail13WsdFileReaderFPCv
/* 81509B94 | 7F 24 CB 78 */	mr r4, r25
/* 81509B98 | 7F A5 EB 78 */	mr r5, r29
/* 81509B9C | 38 61 00 08 */	addi r3, r1, 0x8
/* 81509BA0 | 48 00 6D 09 */	bl ReadWaveSoundInfo__Q44nw4r3snd6detail13WsdFileReaderCFPQ44nw4r3snd6detail13WaveSoundInfoi
/* 81509BA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81509BA8 | 40 82 00 0C */	bne .L_81509BB4
/* 81509BAC | 38 60 00 00 */	li r3, 0x0
/* 81509BB0 | 48 00 00 3C */	b .L_81509BEC
.L_81509BB4:
/* 81509BB4 | 7F 44 D3 78 */	mr r4, r26
/* 81509BB8 | 7F A5 EB 78 */	mr r5, r29
/* 81509BBC | 7F C6 F3 78 */	mr r6, r30
/* 81509BC0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81509BC4 | 48 00 6E 05 */	bl ReadWaveSoundNoteInfo__Q44nw4r3snd6detail13WsdFileReaderCFPQ44nw4r3snd6detail17WaveSoundNoteInfoii
/* 81509BC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81509BCC | 40 82 00 0C */	bne .L_81509BD8
/* 81509BD0 | 38 60 00 00 */	li r3, 0x0
/* 81509BD4 | 48 00 00 18 */	b .L_81509BEC
.L_81509BD8:
/* 81509BD8 | 80 9A 00 00 */	lwz r4, 0x0(r26)
/* 81509BDC | 7F 65 DB 78 */	mr r5, r27
/* 81509BE0 | 7F E6 FB 78 */	mr r6, r31
/* 81509BE4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81509BE8 | 48 00 6E F1 */	bl ReadWaveParam__Q44nw4r3snd6detail13WsdFileReaderCFiPQ44nw4r3snd6detail8WaveDataPCv
.L_81509BEC:
/* 81509BEC | 39 61 00 40 */	addi r11, r1, 0x40
/* 81509BF0 | 48 0E F9 11 */	bl _restgpr_24
/* 81509BF4 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81509BF8 | 7C 08 03 A6 */	mtlr r0
/* 81509BFC | 38 21 00 40 */	addi r1, r1, 0x40
/* 81509C00 | 4E 80 00 20 */	blr
.endfn GetWaveSoundData__Q44nw4r3snd18SoundArchivePlayer11WsdCallbackCFPQ44nw4r3snd6detail13WaveSoundInfoPQ44nw4r3snd6detail17WaveSoundNoteInfoPQ44nw4r3snd6detail8WaveDataPCviiUl

# .text:0x1D98 | 0x81509C04 | size: 0xDC
# nw4r::snd::SoundArchivePlayer::StrmCallback::LoadHeader(void (*)(bool, const nw4r::snd::detail::StrmPlayer::StrmHeader*, void*), void*, unsigned long, unsigned long) const
.fn LoadHeader__Q44nw4r3snd18SoundArchivePlayer12StrmCallbackCFPFbPCQ54nw4r3snd6detail10StrmPlayer10StrmHeaderPv_vPvUlUl, global
/* 81509C04 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81509C08 | 7C 08 02 A6 */	mflr r0
/* 81509C0C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81509C10 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81509C14 | 48 0E F8 A9 */	bl _savegpr_26
/* 81509C18 | 81 03 00 04 */	lwz r8, 0x4(r3)
/* 81509C1C | 7C 7A 1B 78 */	mr r26, r3
/* 81509C20 | 7C 9B 23 78 */	mr r27, r4
/* 81509C24 | 7C BC 2B 78 */	mr r28, r5
/* 81509C28 | 80 68 00 10 */	lwz r3, 0x10(r8)
/* 81509C2C | 7C DD 33 78 */	mr r29, r6
/* 81509C30 | 7C FE 3B 78 */	mr r30, r7
/* 81509C34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81509C38 | 40 82 00 0C */	bne .L_81509C44
/* 81509C3C | 38 60 00 00 */	li r3, 0x0
/* 81509C40 | 48 00 00 08 */	b .L_81509C48
.L_81509C44:
/* 81509C44 | 4B FF C5 8D */	bl IsAvailable__Q34nw4r3snd12SoundArchiveCFv
.L_81509C48:
/* 81509C48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81509C4C | 40 82 00 0C */	bne .L_81509C58
/* 81509C50 | 38 60 00 01 */	li r3, 0x1
/* 81509C54 | 48 00 00 74 */	b .L_81509CC8
.L_81509C58:
/* 81509C58 | 48 00 4E B9 */	bl GetInstance__Q44nw4r3snd6detail11TaskManagerFv
/* 81509C5C | 48 00 50 45 */	bl Alloc__Q44nw4r3snd6detail11TaskManagerFv
/* 81509C60 | 80 9A 00 04 */	lwz r4, 0x4(r26)
/* 81509C64 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81509C68 | 7C 7F 1B 78 */	mr r31, r3
/* 81509C6C | 80 C4 00 10 */	lwz r6, 0x10(r4)
/* 81509C70 | 41 82 00 3C */	beq .L_81509CAC
/* 81509C74 | 38 A0 00 00 */	li r5, 0x0
/* 81509C78 | 3C 80 81 67 */	lis r4, __vt__Q44nw4r3snd18SoundArchivePlayer18StrmHeaderLoadTask@ha
/* 81509C7C | 90 A3 00 04 */	stw r5, 0x4(r3)
/* 81509C80 | 38 84 F9 5C */	addi r4, r4, __vt__Q44nw4r3snd18SoundArchivePlayer18StrmHeaderLoadTask@l
/* 81509C84 | 38 1A 00 08 */	addi r0, r26, 0x8
/* 81509C88 | 90 A3 00 08 */	stw r5, 0x8(r3)
/* 81509C8C | 93 A3 00 0C */	stw r29, 0xc(r3)
/* 81509C90 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 81509C94 | 90 A3 00 10 */	stw r5, 0x10(r3)
/* 81509C98 | 90 C3 00 14 */	stw r6, 0x14(r3)
/* 81509C9C | 93 C3 00 18 */	stw r30, 0x18(r3)
/* 81509CA0 | 93 63 00 1C */	stw r27, 0x1c(r3)
/* 81509CA4 | 93 83 00 20 */	stw r28, 0x20(r3)
/* 81509CA8 | 90 03 00 24 */	stw r0, 0x24(r3)
.L_81509CAC:
/* 81509CAC | 48 00 4E 65 */	bl GetInstance__Q44nw4r3snd6detail11TaskManagerFv
/* 81509CB0 | 7F E4 FB 78 */	mr r4, r31
/* 81509CB4 | 38 A0 00 01 */	li r5, 0x1
/* 81509CB8 | 48 00 50 61 */	bl AppendTask__Q44nw4r3snd6detail11TaskManagerFPQ44nw4r3snd6detail4TaskQ54nw4r3snd6detail11TaskManager12TaskPriority
/* 81509CBC | 48 00 53 5D */	bl GetInstance__Q44nw4r3snd6detail10TaskThreadFv
/* 81509CC0 | 48 00 54 51 */	bl SendWakeupMessage__Q44nw4r3snd6detail10TaskThreadFv
/* 81509CC4 | 38 60 00 03 */	li r3, 0x3
.L_81509CC8:
/* 81509CC8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81509CCC | 48 0E F8 3D */	bl _restgpr_26
/* 81509CD0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81509CD4 | 7C 08 03 A6 */	mtlr r0
/* 81509CD8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81509CDC | 4E 80 00 20 */	blr
.endfn LoadHeader__Q44nw4r3snd18SoundArchivePlayer12StrmCallbackCFPFbPCQ54nw4r3snd6detail10StrmPlayer10StrmHeaderPv_vPvUlUl

# .text:0x1E74 | 0x81509CE0 | size: 0xF8
# nw4r::snd::SoundArchivePlayer::StrmCallback::LoadStream(void*, unsigned long, long, int, unsigned long, long, bool, nw4r::snd::detail::StrmPlayer::LoadCommand&, unsigned long, unsigned long) const
.fn LoadStream__Q44nw4r3snd18SoundArchivePlayer12StrmCallbackCFPvUlliUllbRQ54nw4r3snd6detail10StrmPlayer11LoadCommandUlUl, global
/* 81509CE0 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 81509CE4 | 7C 08 02 A6 */	mflr r0
/* 81509CE8 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 81509CEC | 39 61 00 60 */	addi r11, r1, 0x60
/* 81509CF0 | 48 0E F7 B1 */	bl _savegpr_19
/* 81509CF4 | 81 63 00 04 */	lwz r11, 0x4(r3)
/* 81509CF8 | 7C 73 1B 78 */	mr r19, r3
/* 81509CFC | 83 61 00 68 */	lwz r27, 0x68(r1)
/* 81509D00 | 7C 94 23 78 */	mr r20, r4
/* 81509D04 | 80 6B 00 10 */	lwz r3, 0x10(r11)
/* 81509D08 | 7C B5 2B 78 */	mr r21, r5
/* 81509D0C | 83 81 00 6C */	lwz r28, 0x6c(r1)
/* 81509D10 | 7C D6 33 78 */	mr r22, r6
/* 81509D14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81509D18 | 83 A1 00 70 */	lwz r29, 0x70(r1)
/* 81509D1C | 7C F7 3B 78 */	mr r23, r7
/* 81509D20 | 7D 18 43 78 */	mr r24, r8
/* 81509D24 | 7D 39 4B 78 */	mr r25, r9
/* 81509D28 | 7D 5A 53 78 */	mr r26, r10
/* 81509D2C | 40 82 00 0C */	bne .L_81509D38
/* 81509D30 | 38 60 00 00 */	li r3, 0x0
/* 81509D34 | 48 00 00 08 */	b .L_81509D3C
.L_81509D38:
/* 81509D38 | 4B FF C4 99 */	bl IsAvailable__Q34nw4r3snd12SoundArchiveCFv
.L_81509D3C:
/* 81509D3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81509D40 | 40 82 00 0C */	bne .L_81509D4C
/* 81509D44 | 38 60 00 01 */	li r3, 0x1
/* 81509D48 | 48 00 00 78 */	b .L_81509DC0
.L_81509D4C:
/* 81509D4C | 80 73 00 04 */	lwz r3, 0x4(r19)
/* 81509D50 | 83 E3 00 10 */	lwz r31, 0x10(r3)
/* 81509D54 | 48 00 4D BD */	bl GetInstance__Q44nw4r3snd6detail11TaskManagerFv
/* 81509D58 | 48 00 4F 49 */	bl Alloc__Q44nw4r3snd6detail11TaskManagerFv
/* 81509D5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81509D60 | 7C 7E 1B 78 */	mr r30, r3
/* 81509D64 | 41 82 00 40 */	beq .L_81509DA4
/* 81509D68 | 93 61 00 08 */	stw r27, 0x8(r1)
/* 81509D6C | 38 13 00 08 */	addi r0, r19, 0x8
/* 81509D70 | 7E 84 A3 78 */	mr r4, r20
/* 81509D74 | 7E A5 AB 78 */	mr r5, r21
/* 81509D78 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81509D7C | 7E C6 B3 78 */	mr r6, r22
/* 81509D80 | 7E E7 BB 78 */	mr r7, r23
/* 81509D84 | 7F 08 C3 78 */	mr r8, r24
/* 81509D88 | 93 A1 00 10 */	stw r29, 0x10(r1)
/* 81509D8C | 7F 29 CB 78 */	mr r9, r25
/* 81509D90 | 7F 4A D3 78 */	mr r10, r26
/* 81509D94 | 93 81 00 14 */	stw r28, 0x14(r1)
/* 81509D98 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 81509D9C | 48 00 05 11 */	bl __ct__Q44nw4r3snd18SoundArchivePlayer16StrmDataLoadTaskFPvUlliUllbRQ54nw4r3snd6detail10StrmPlayer11LoadCommandRCQ34nw4r3snd12SoundArchiveUlUlR7OSMutex
/* 81509DA0 | 7C 7E 1B 78 */	mr r30, r3
.L_81509DA4:
/* 81509DA4 | 48 00 4D 6D */	bl GetInstance__Q44nw4r3snd6detail11TaskManagerFv
/* 81509DA8 | 7F C4 F3 78 */	mr r4, r30
/* 81509DAC | 38 A0 00 02 */	li r5, 0x2
/* 81509DB0 | 48 00 4F 69 */	bl AppendTask__Q44nw4r3snd6detail11TaskManagerFPQ44nw4r3snd6detail4TaskQ54nw4r3snd6detail11TaskManager12TaskPriority
/* 81509DB4 | 48 00 52 65 */	bl GetInstance__Q44nw4r3snd6detail10TaskThreadFv
/* 81509DB8 | 48 00 53 59 */	bl SendWakeupMessage__Q44nw4r3snd6detail10TaskThreadFv
/* 81509DBC | 38 60 00 03 */	li r3, 0x3
.L_81509DC0:
/* 81509DC0 | 39 61 00 60 */	addi r11, r1, 0x60
/* 81509DC4 | 48 0E F7 29 */	bl _restgpr_19
/* 81509DC8 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 81509DCC | 7C 08 03 A6 */	mtlr r0
/* 81509DD0 | 38 21 00 60 */	addi r1, r1, 0x60
/* 81509DD4 | 4E 80 00 20 */	blr
.endfn LoadStream__Q44nw4r3snd18SoundArchivePlayer12StrmCallbackCFPvUlliUllbRQ54nw4r3snd6detail10StrmPlayer11LoadCommandUlUl

# .text:0x1F6C | 0x81509DD8 | size: 0x34
# nw4r::snd::SoundArchivePlayer::StrmCallback::CancelLoading(unsigned long, unsigned long) const
.fn CancelLoading__Q44nw4r3snd18SoundArchivePlayer12StrmCallbackCFUlUl, global
/* 81509DD8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81509DDC | 7C 08 02 A6 */	mflr r0
/* 81509DE0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81509DE4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81509DE8 | 7C 9F 23 78 */	mr r31, r4
/* 81509DEC | 48 00 4D 25 */	bl GetInstance__Q44nw4r3snd6detail11TaskManagerFv
/* 81509DF0 | 7F E4 FB 78 */	mr r4, r31
/* 81509DF4 | 48 00 51 45 */	bl CancelByTaskId__Q44nw4r3snd6detail11TaskManagerFUl
/* 81509DF8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81509DFC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81509E00 | 7C 08 03 A6 */	mtlr r0
/* 81509E04 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81509E08 | 4E 80 00 20 */	blr
.endfn CancelLoading__Q44nw4r3snd18SoundArchivePlayer12StrmCallbackCFUlUl

# .text:0x1FA0 | 0x81509E0C | size: 0x110
# nw4r::snd::SoundArchivePlayer::SeqLoadTask::Execute()
.fn Execute__Q44nw4r3snd18SoundArchivePlayer11SeqLoadTaskFv, global
/* 81509E0C | 94 21 FD C0 */	stwu r1, -0x240(r1)
/* 81509E10 | 7C 08 02 A6 */	mflr r0
/* 81509E14 | 90 01 02 44 */	stw r0, 0x244(r1)
/* 81509E18 | 93 E1 02 3C */	stw r31, 0x23c(r1)
/* 81509E1C | 93 C1 02 38 */	stw r30, 0x238(r1)
/* 81509E20 | 93 A1 02 34 */	stw r29, 0x234(r1)
/* 81509E24 | 7C 7D 1B 78 */	mr r29, r3
/* 81509E28 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81509E2C | 80 9D 00 14 */	lwz r4, 0x14(r29)
/* 81509E30 | 4B FF D6 E5 */	bl __ct__Q44nw4r3snd6detail18SoundArchiveLoaderFRCQ34nw4r3snd12SoundArchive
/* 81509E34 | 83 DD 00 2C */	lwz r30, 0x2c(r29)
/* 81509E38 | 7F C3 F3 78 */	mr r3, r30
/* 81509E3C | 48 02 7D CD */	bl fn_81531C08
/* 81509E40 | 3B E1 00 10 */	addi r31, r1, 0x10
/* 81509E44 | 7F C3 F3 78 */	mr r3, r30
/* 81509E48 | 93 FD 00 10 */	stw r31, 0x10(r29)
/* 81509E4C | 48 02 7E 99 */	bl fn_81531CE4
/* 81509E50 | 80 9D 00 18 */	lwz r4, 0x18(r29)
/* 81509E54 | 7F E3 FB 78 */	mr r3, r31
/* 81509E58 | 80 BD 00 20 */	lwz r5, 0x20(r29)
/* 81509E5C | 4B FF DE 95 */	bl LoadFile__Q44nw4r3snd6detail18SoundArchiveLoaderFUlPQ34nw4r3snd22SoundMemoryAllocatable
/* 81509E60 | 83 DD 00 2C */	lwz r30, 0x2c(r29)
/* 81509E64 | 7C 7F 1B 78 */	mr r31, r3
/* 81509E68 | 7F C3 F3 78 */	mr r3, r30
/* 81509E6C | 48 02 7D 9D */	bl fn_81531C08
/* 81509E70 | 38 00 00 00 */	li r0, 0x0
/* 81509E74 | 7F C3 F3 78 */	mr r3, r30
/* 81509E78 | 90 1D 00 10 */	stw r0, 0x10(r29)
/* 81509E7C | 48 02 7E 69 */	bl fn_81531CE4
/* 81509E80 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81509E84 | 40 82 00 38 */	bne .L_81509EBC
/* 81509E88 | 81 9D 00 24 */	lwz r12, 0x24(r29)
/* 81509E8C | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 81509E90 | 41 82 00 1C */	beq .L_81509EAC
/* 81509E94 | 80 DD 00 28 */	lwz r6, 0x28(r29)
/* 81509E98 | 38 60 00 00 */	li r3, 0x0
/* 81509E9C | 38 80 00 00 */	li r4, 0x0
/* 81509EA0 | 38 A0 00 00 */	li r5, 0x0
/* 81509EA4 | 7D 89 03 A6 */	mtctr r12
/* 81509EA8 | 4E 80 04 21 */	bctrl
.L_81509EAC:
/* 81509EAC | 38 61 00 10 */	addi r3, r1, 0x10
/* 81509EB0 | 38 80 FF FF */	li r4, -0x1
/* 81509EB4 | 4B FF D6 9D */	bl __dt__Q44nw4r3snd6detail18SoundArchiveLoaderFv
/* 81509EB8 | 48 00 00 48 */	b .L_81509F00
.L_81509EBC:
/* 81509EBC | 7F E4 FB 78 */	mr r4, r31
/* 81509EC0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81509EC4 | 4B FF 9D 1D */	bl __ct__Q44nw4r3snd6detail13SeqFileReaderFPCv
/* 81509EC8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81509ECC | 4B FF 9D 81 */	bl GetBaseAddress__Q44nw4r3snd6detail13SeqFileReaderCFv
/* 81509ED0 | 81 9D 00 24 */	lwz r12, 0x24(r29)
/* 81509ED4 | 80 BD 00 1C */	lwz r5, 0x1c(r29)
/* 81509ED8 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 81509EDC | 41 82 00 18 */	beq .L_81509EF4
/* 81509EE0 | 7C 64 1B 78 */	mr r4, r3
/* 81509EE4 | 80 DD 00 28 */	lwz r6, 0x28(r29)
/* 81509EE8 | 38 60 00 01 */	li r3, 0x1
/* 81509EEC | 7D 89 03 A6 */	mtctr r12
/* 81509EF0 | 4E 80 04 21 */	bctrl
.L_81509EF4:
/* 81509EF4 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81509EF8 | 38 80 FF FF */	li r4, -0x1
/* 81509EFC | 4B FF D6 55 */	bl __dt__Q44nw4r3snd6detail18SoundArchiveLoaderFv
.L_81509F00:
/* 81509F00 | 80 01 02 44 */	lwz r0, 0x244(r1)
/* 81509F04 | 83 E1 02 3C */	lwz r31, 0x23c(r1)
/* 81509F08 | 83 C1 02 38 */	lwz r30, 0x238(r1)
/* 81509F0C | 83 A1 02 34 */	lwz r29, 0x234(r1)
/* 81509F10 | 7C 08 03 A6 */	mtlr r0
/* 81509F14 | 38 21 02 40 */	addi r1, r1, 0x240
/* 81509F18 | 4E 80 00 20 */	blr
.endfn Execute__Q44nw4r3snd18SoundArchivePlayer11SeqLoadTaskFv

# .text:0x20B0 | 0x81509F1C | size: 0x54
# nw4r::snd::SoundArchivePlayer::SeqLoadTask::Cancel()
.fn Cancel__Q44nw4r3snd18SoundArchivePlayer11SeqLoadTaskFv, global
/* 81509F1C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81509F20 | 7C 08 02 A6 */	mflr r0
/* 81509F24 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81509F28 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81509F2C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81509F30 | 7C 7E 1B 78 */	mr r30, r3
/* 81509F34 | 83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 81509F38 | 7F E3 FB 78 */	mr r3, r31
/* 81509F3C | 48 02 7C CD */	bl fn_81531C08
/* 81509F40 | 80 7E 00 10 */	lwz r3, 0x10(r30)
/* 81509F44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81509F48 | 41 82 00 08 */	beq .L_81509F50
/* 81509F4C | 4B FF DE 81 */	bl Cancel__Q44nw4r3snd6detail18SoundArchiveLoaderFv
.L_81509F50:
/* 81509F50 | 7F E3 FB 78 */	mr r3, r31
/* 81509F54 | 48 02 7D 91 */	bl fn_81531CE4
/* 81509F58 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81509F5C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81509F60 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81509F64 | 7C 08 03 A6 */	mtlr r0
/* 81509F68 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81509F6C | 4E 80 00 20 */	blr
.endfn Cancel__Q44nw4r3snd18SoundArchivePlayer11SeqLoadTaskFv

# .text:0x2104 | 0x81509F70 | size: 0x27C
# nw4r::snd::SoundArchivePlayer::StrmHeaderLoadTask::Execute()
.fn Execute__Q44nw4r3snd18SoundArchivePlayer18StrmHeaderLoadTaskFv, global
/* 81509F70 | 94 21 FC 20 */	stwu r1, -0x3e0(r1)
/* 81509F74 | 7C 08 02 A6 */	mflr r0
/* 81509F78 | 90 01 03 E4 */	stw r0, 0x3e4(r1)
/* 81509F7C | 93 E1 03 DC */	stw r31, 0x3dc(r1)
/* 81509F80 | 7C 7F 1B 78 */	mr r31, r3
/* 81509F84 | 93 C1 03 D8 */	stw r30, 0x3d8(r1)
/* 81509F88 | 93 A1 03 D4 */	stw r29, 0x3d4(r1)
/* 81509F8C | 93 81 03 D0 */	stw r28, 0x3d0(r1)
/* 81509F90 | 83 A3 00 24 */	lwz r29, 0x24(r3)
/* 81509F94 | 7F A3 EB 78 */	mr r3, r29
/* 81509F98 | 48 02 7C 71 */	bl fn_81531C08
/* 81509F9C | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 81509FA0 | 38 A1 01 D0 */	addi r5, r1, 0x1d0
/* 81509FA4 | 80 9F 00 18 */	lwz r4, 0x18(r31)
/* 81509FA8 | 38 C0 02 00 */	li r6, 0x200
/* 81509FAC | 4B FF C2 E9 */	bl detail_OpenFileStream__Q34nw4r3snd12SoundArchiveCFUlPvi
/* 81509FB0 | 90 7F 00 10 */	stw r3, 0x10(r31)
/* 81509FB4 | 7F A3 EB 78 */	mr r3, r29
/* 81509FB8 | 48 02 7D 2D */	bl fn_81531CE4
/* 81509FBC | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 81509FC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81509FC4 | 40 82 00 28 */	bne .L_81509FEC
/* 81509FC8 | 81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 81509FCC | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 81509FD0 | 41 82 01 FC */	beq .L_8150A1CC
/* 81509FD4 | 80 BF 00 20 */	lwz r5, 0x20(r31)
/* 81509FD8 | 38 60 00 00 */	li r3, 0x0
/* 81509FDC | 38 80 00 00 */	li r4, 0x0
/* 81509FE0 | 7D 89 03 A6 */	mtctr r12
/* 81509FE4 | 4E 80 04 21 */	bctrl
/* 81509FE8 | 48 00 01 E4 */	b .L_8150A1CC
.L_81509FEC:
/* 81509FEC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81509FF0 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 81509FF4 | 7D 89 03 A6 */	mtctr r12
/* 81509FF8 | 4E 80 04 21 */	bctrl
/* 81509FFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150A000 | 41 82 00 20 */	beq .L_8150A020
/* 8150A004 | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8150A008 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150A00C | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8150A010 | 7D 89 03 A6 */	mtctr r12
/* 8150A014 | 4E 80 04 21 */	bctrl
/* 8150A018 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150A01C | 40 82 00 44 */	bne .L_8150A060
.L_8150A020:
/* 8150A020 | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8150A024 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150A028 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8150A02C | 7D 89 03 A6 */	mtctr r12
/* 8150A030 | 4E 80 04 21 */	bctrl
/* 8150A034 | 81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 8150A038 | 38 00 00 00 */	li r0, 0x0
/* 8150A03C | 90 1F 00 10 */	stw r0, 0x10(r31)
/* 8150A040 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 8150A044 | 41 82 01 88 */	beq .L_8150A1CC
/* 8150A048 | 80 BF 00 20 */	lwz r5, 0x20(r31)
/* 8150A04C | 38 60 00 00 */	li r3, 0x0
/* 8150A050 | 38 80 00 00 */	li r4, 0x0
/* 8150A054 | 7D 89 03 A6 */	mtctr r12
/* 8150A058 | 4E 80 04 21 */	bctrl
/* 8150A05C | 48 00 01 70 */	b .L_8150A1CC
.L_8150A060:
/* 8150A060 | 88 0D AE D0 */	lbz r0, initFlag$7545@sda21(r0)
/* 8150A064 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150A068 | 40 82 00 18 */	bne .L_8150A080
/* 8150A06C | 3C 60 81 10 */	lis r3, mutex$7628@ha
/* 8150A070 | 38 63 61 80 */	addi r3, r3, mutex$7628@l
/* 8150A074 | 48 02 7B 5D */	bl fn_81531BD0
/* 8150A078 | 38 00 00 01 */	li r0, 0x1
/* 8150A07C | 98 0D AE D0 */	stb r0, initFlag$7545@sda21(r0)
.L_8150A080:
/* 8150A080 | 3F A0 81 10 */	lis r29, mutex$7628@ha
/* 8150A084 | 3B BD 61 80 */	addi r29, r29, mutex$7628@l
/* 8150A088 | 7F A3 EB 78 */	mr r3, r29
/* 8150A08C | 48 02 7B 7D */	bl fn_81531C08
/* 8150A090 | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 8150A094 | 38 61 00 0C */	addi r3, r1, 0xc
/* 8150A098 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8150A09C | 48 00 24 15 */	bl __ct__Q44nw4r3snd6detail14StrmFileReaderFv
/* 8150A0A0 | 3C 80 81 10 */	lis r4, buffer$7626@ha
/* 8150A0A4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8150A0A8 | 38 84 5F 80 */	addi r4, r4, buffer$7626@l
/* 8150A0AC | 38 A0 02 00 */	li r5, 0x200
/* 8150A0B0 | 48 00 26 65 */	bl LoadFileHeader__Q44nw4r3snd6detail14StrmFileLoaderFPvUl
/* 8150A0B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150A0B8 | 40 82 00 4C */	bne .L_8150A104
/* 8150A0BC | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8150A0C0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150A0C4 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8150A0C8 | 7D 89 03 A6 */	mtctr r12
/* 8150A0CC | 4E 80 04 21 */	bctrl
/* 8150A0D0 | 81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 8150A0D4 | 38 00 00 00 */	li r0, 0x0
/* 8150A0D8 | 90 1F 00 10 */	stw r0, 0x10(r31)
/* 8150A0DC | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 8150A0E0 | 41 82 00 18 */	beq .L_8150A0F8
/* 8150A0E4 | 80 BF 00 20 */	lwz r5, 0x20(r31)
/* 8150A0E8 | 38 60 00 00 */	li r3, 0x0
/* 8150A0EC | 38 80 00 00 */	li r4, 0x0
/* 8150A0F0 | 7D 89 03 A6 */	mtctr r12
/* 8150A0F4 | 4E 80 04 21 */	bctrl
.L_8150A0F8:
/* 8150A0F8 | 7F A3 EB 78 */	mr r3, r29
/* 8150A0FC | 48 02 7B E9 */	bl fn_81531CE4
/* 8150A100 | 48 00 00 CC */	b .L_8150A1CC
.L_8150A104:
/* 8150A104 | 83 DF 00 24 */	lwz r30, 0x24(r31)
/* 8150A108 | 7F C3 F3 78 */	mr r3, r30
/* 8150A10C | 48 02 7A FD */	bl fn_81531C08
/* 8150A110 | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8150A114 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150A118 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8150A11C | 7D 89 03 A6 */	mtctr r12
/* 8150A120 | 4E 80 04 21 */	bctrl
/* 8150A124 | 38 00 00 00 */	li r0, 0x0
/* 8150A128 | 7F C3 F3 78 */	mr r3, r30
/* 8150A12C | 90 1F 00 10 */	stw r0, 0x10(r31)
/* 8150A130 | 48 02 7B B5 */	bl fn_81531CE4
/* 8150A134 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 8150A138 | 7C 03 00 D0 */	neg r0, r3
/* 8150A13C | 7C 00 1B 78 */	or r0, r0, r3
/* 8150A140 | 54 00 0F FF */	srwi. r0, r0, 31
/* 8150A144 | 40 82 00 08 */	bne .L_8150A14C
/* 8150A148 | 48 00 00 10 */	b .L_8150A158
.L_8150A14C:
/* 8150A14C | 38 61 00 0C */	addi r3, r1, 0xc
/* 8150A150 | 38 81 00 18 */	addi r4, r1, 0x18
/* 8150A154 | 48 00 23 6D */	bl ReadStrmInfo__Q44nw4r3snd6detail14StrmFileReaderCFPQ44nw4r3snd6detail8StrmInfo
.L_8150A158:
/* 8150A158 | 3B 80 00 00 */	li r28, 0x0
/* 8150A15C | 3B C0 00 00 */	li r30, 0x0
/* 8150A160 | 48 00 00 38 */	b .L_8150A198
.L_8150A164:
/* 8150A164 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 8150A168 | 7C 03 00 D0 */	neg r0, r3
/* 8150A16C | 7C 00 1B 78 */	or r0, r0, r3
/* 8150A170 | 54 00 0F FF */	srwi. r0, r0, 31
/* 8150A174 | 40 82 00 08 */	bne .L_8150A17C
/* 8150A178 | 48 00 00 18 */	b .L_8150A190
.L_8150A17C:
/* 8150A17C | 38 81 00 50 */	addi r4, r1, 0x50
/* 8150A180 | 7F 85 E3 78 */	mr r5, r28
/* 8150A184 | 38 61 00 0C */	addi r3, r1, 0xc
/* 8150A188 | 7C 84 F2 14 */	add r4, r4, r30
/* 8150A18C | 48 00 24 01 */	bl ReadAdpcmInfo__Q44nw4r3snd6detail14StrmFileReaderCFPQ44nw4r3snd6detail9AdpcmInfoi
.L_8150A190:
/* 8150A190 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 8150A194 | 3B DE 00 30 */	addi r30, r30, 0x30
.L_8150A198:
/* 8150A198 | 88 01 00 1A */	lbz r0, 0x1a(r1)
/* 8150A19C | 7C 1C 00 00 */	cmpw r28, r0
/* 8150A1A0 | 41 80 FF C4 */	blt .L_8150A164
/* 8150A1A4 | 81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 8150A1A8 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 8150A1AC | 41 82 00 18 */	beq .L_8150A1C4
/* 8150A1B0 | 38 81 00 18 */	addi r4, r1, 0x18
/* 8150A1B4 | 80 BF 00 20 */	lwz r5, 0x20(r31)
/* 8150A1B8 | 38 60 00 01 */	li r3, 0x1
/* 8150A1BC | 7D 89 03 A6 */	mtctr r12
/* 8150A1C0 | 4E 80 04 21 */	bctrl
.L_8150A1C4:
/* 8150A1C4 | 7F A3 EB 78 */	mr r3, r29
/* 8150A1C8 | 48 02 7B 1D */	bl fn_81531CE4
.L_8150A1CC:
/* 8150A1CC | 80 01 03 E4 */	lwz r0, 0x3e4(r1)
/* 8150A1D0 | 83 E1 03 DC */	lwz r31, 0x3dc(r1)
/* 8150A1D4 | 83 C1 03 D8 */	lwz r30, 0x3d8(r1)
/* 8150A1D8 | 83 A1 03 D4 */	lwz r29, 0x3d4(r1)
/* 8150A1DC | 83 81 03 D0 */	lwz r28, 0x3d0(r1)
/* 8150A1E0 | 7C 08 03 A6 */	mtlr r0
/* 8150A1E4 | 38 21 03 E0 */	addi r1, r1, 0x3e0
/* 8150A1E8 | 4E 80 00 20 */	blr
.endfn Execute__Q44nw4r3snd18SoundArchivePlayer18StrmHeaderLoadTaskFv

# .text:0x2380 | 0x8150A1EC | size: 0xC0
# nw4r::snd::SoundArchivePlayer::StrmHeaderLoadTask::Cancel()
.fn Cancel__Q44nw4r3snd18SoundArchivePlayer18StrmHeaderLoadTaskFv, global
/* 8150A1EC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150A1F0 | 7C 08 02 A6 */	mflr r0
/* 8150A1F4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150A1F8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150A1FC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8150A200 | 7C 7E 1B 78 */	mr r30, r3
/* 8150A204 | 83 E3 00 24 */	lwz r31, 0x24(r3)
/* 8150A208 | 7F E3 FB 78 */	mr r3, r31
/* 8150A20C | 48 02 79 FD */	bl fn_81531C08
/* 8150A210 | 80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8150A214 | 38 00 00 00 */	li r0, 0x0
/* 8150A218 | 90 1E 00 1C */	stw r0, 0x1c(r30)
/* 8150A21C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150A220 | 41 82 00 6C */	beq .L_8150A28C
/* 8150A224 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150A228 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8150A22C | 7D 89 03 A6 */	mtctr r12
/* 8150A230 | 4E 80 04 21 */	bctrl
/* 8150A234 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150A238 | 41 82 00 54 */	beq .L_8150A28C
/* 8150A23C | 80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8150A240 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150A244 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8150A248 | 7D 89 03 A6 */	mtctr r12
/* 8150A24C | 4E 80 04 21 */	bctrl
/* 8150A250 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150A254 | 41 82 00 24 */	beq .L_8150A278
/* 8150A258 | 80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8150A25C | 38 80 00 00 */	li r4, 0x0
/* 8150A260 | 38 A0 00 00 */	li r5, 0x0
/* 8150A264 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150A268 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8150A26C | 7D 89 03 A6 */	mtctr r12
/* 8150A270 | 4E 80 04 21 */	bctrl
/* 8150A274 | 48 00 00 18 */	b .L_8150A28C
.L_8150A278:
/* 8150A278 | 80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8150A27C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150A280 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8150A284 | 7D 89 03 A6 */	mtctr r12
/* 8150A288 | 4E 80 04 21 */	bctrl
.L_8150A28C:
/* 8150A28C | 7F E3 FB 78 */	mr r3, r31
/* 8150A290 | 48 02 7A 55 */	bl fn_81531CE4
/* 8150A294 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150A298 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8150A29C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8150A2A0 | 7C 08 03 A6 */	mtlr r0
/* 8150A2A4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150A2A8 | 4E 80 00 20 */	blr
.endfn Cancel__Q44nw4r3snd18SoundArchivePlayer18StrmHeaderLoadTaskFv

# .text:0x2440 | 0x8150A2AC | size: 0x8C
# nw4r::snd::SoundArchivePlayer::StrmDataLoadTask::StrmDataLoadTask(void*, unsigned long, long, int, unsigned long, long, bool, nw4r::snd::detail::StrmPlayer::LoadCommand&, const nw4r::snd::SoundArchive&, unsigned long, unsigned long, OSMutex&)
.fn __ct__Q44nw4r3snd18SoundArchivePlayer16StrmDataLoadTaskFPvUlliUllbRQ54nw4r3snd6detail10StrmPlayer11LoadCommandRCQ34nw4r3snd12SoundArchiveUlUlR7OSMutex, global
/* 8150A2AC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150A2B0 | 3D 60 81 67 */	lis r11, __vt__Q44nw4r3snd18SoundArchivePlayer16StrmDataLoadTask@ha
/* 8150A2B4 | 38 00 00 00 */	li r0, 0x0
/* 8150A2B8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8150A2BC | 39 6B F9 48 */	addi r11, r11, __vt__Q44nw4r3snd18SoundArchivePlayer16StrmDataLoadTask@l
/* 8150A2C0 | 83 E1 00 34 */	lwz r31, 0x34(r1)
/* 8150A2C4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8150A2C8 | 83 C1 00 30 */	lwz r30, 0x30(r1)
/* 8150A2CC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8150A2D0 | 83 A1 00 2C */	lwz r29, 0x2c(r1)
/* 8150A2D4 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 8150A2D8 | 83 81 00 28 */	lwz r28, 0x28(r1)
/* 8150A2DC | 81 81 00 38 */	lwz r12, 0x38(r1)
/* 8150A2E0 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 8150A2E4 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 8150A2E8 | 93 E3 00 0C */	stw r31, 0xc(r3)
/* 8150A2EC | 91 63 00 00 */	stw r11, 0x0(r3)
/* 8150A2F0 | 93 83 00 10 */	stw r28, 0x10(r3)
/* 8150A2F4 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 8150A2F8 | 93 A3 00 18 */	stw r29, 0x18(r3)
/* 8150A2FC | 93 C3 00 1C */	stw r30, 0x1c(r3)
/* 8150A300 | 90 83 00 20 */	stw r4, 0x20(r3)
/* 8150A304 | 90 A3 00 24 */	stw r5, 0x24(r3)
/* 8150A308 | 90 C3 00 28 */	stw r6, 0x28(r3)
/* 8150A30C | 90 E3 00 2C */	stw r7, 0x2c(r3)
/* 8150A310 | 91 03 00 30 */	stw r8, 0x30(r3)
/* 8150A314 | 91 23 00 34 */	stw r9, 0x34(r3)
/* 8150A318 | 99 43 00 38 */	stb r10, 0x38(r3)
/* 8150A31C | 91 83 00 3C */	stw r12, 0x3c(r3)
/* 8150A320 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8150A324 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8150A328 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8150A32C | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 8150A330 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150A334 | 4E 80 00 20 */	blr
.endfn __ct__Q44nw4r3snd18SoundArchivePlayer16StrmDataLoadTaskFPvUlliUllbRQ54nw4r3snd6detail10StrmPlayer11LoadCommandRCQ34nw4r3snd12SoundArchiveUlUlR7OSMutex

# .text:0x24CC | 0x8150A338 | size: 0x2FC
# nw4r::snd::SoundArchivePlayer::StrmDataLoadTask::Execute()
.fn Execute__Q44nw4r3snd18SoundArchivePlayer16StrmDataLoadTaskFv, global
/* 8150A338 | 94 21 FD D0 */	stwu r1, -0x230(r1)
/* 8150A33C | 7C 08 02 A6 */	mflr r0
/* 8150A340 | 90 01 02 34 */	stw r0, 0x234(r1)
/* 8150A344 | 39 61 02 30 */	addi r11, r1, 0x230
/* 8150A348 | 48 0E F1 71 */	bl _savegpr_25
/* 8150A34C | 7C 7C 1B 78 */	mr r28, r3
/* 8150A350 | 80 63 00 20 */	lwz r3, 0x20(r3)
/* 8150A354 | 80 9C 00 24 */	lwz r4, 0x24(r28)
/* 8150A358 | 48 02 35 B1 */	bl DCInvalidateRange
/* 8150A35C | 83 BC 00 3C */	lwz r29, 0x3c(r28)
/* 8150A360 | 7F A3 EB 78 */	mr r3, r29
/* 8150A364 | 48 02 78 A5 */	bl fn_81531C08
/* 8150A368 | 80 7C 00 18 */	lwz r3, 0x18(r28)
/* 8150A36C | 38 A1 00 10 */	addi r5, r1, 0x10
/* 8150A370 | 80 9C 00 1C */	lwz r4, 0x1c(r28)
/* 8150A374 | 38 C0 02 00 */	li r6, 0x200
/* 8150A378 | 4B FF BF 1D */	bl detail_OpenFileStream__Q34nw4r3snd12SoundArchiveCFUlPvi
/* 8150A37C | 90 7C 00 14 */	stw r3, 0x14(r28)
/* 8150A380 | 7F A3 EB 78 */	mr r3, r29
/* 8150A384 | 48 02 79 61 */	bl fn_81531CE4
/* 8150A388 | 80 7C 00 14 */	lwz r3, 0x14(r28)
/* 8150A38C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150A390 | 40 82 00 28 */	bne .L_8150A3B8
/* 8150A394 | 80 7C 00 10 */	lwz r3, 0x10(r28)
/* 8150A398 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150A39C | 41 82 02 80 */	beq .L_8150A61C
/* 8150A3A0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150A3A4 | 38 80 00 00 */	li r4, 0x0
/* 8150A3A8 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8150A3AC | 7D 89 03 A6 */	mtctr r12
/* 8150A3B0 | 4E 80 04 21 */	bctrl
/* 8150A3B4 | 48 00 02 68 */	b .L_8150A61C
.L_8150A3B8:
/* 8150A3B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150A3BC | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8150A3C0 | 7D 89 03 A6 */	mtctr r12
/* 8150A3C4 | 4E 80 04 21 */	bctrl
/* 8150A3C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150A3CC | 41 82 00 20 */	beq .L_8150A3EC
/* 8150A3D0 | 80 7C 00 14 */	lwz r3, 0x14(r28)
/* 8150A3D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150A3D8 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8150A3DC | 7D 89 03 A6 */	mtctr r12
/* 8150A3E0 | 4E 80 04 21 */	bctrl
/* 8150A3E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150A3E8 | 40 82 00 44 */	bne .L_8150A42C
.L_8150A3EC:
/* 8150A3EC | 80 7C 00 14 */	lwz r3, 0x14(r28)
/* 8150A3F0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150A3F4 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8150A3F8 | 7D 89 03 A6 */	mtctr r12
/* 8150A3FC | 4E 80 04 21 */	bctrl
/* 8150A400 | 80 7C 00 10 */	lwz r3, 0x10(r28)
/* 8150A404 | 38 00 00 00 */	li r0, 0x0
/* 8150A408 | 90 1C 00 14 */	stw r0, 0x14(r28)
/* 8150A40C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150A410 | 41 82 02 0C */	beq .L_8150A61C
/* 8150A414 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150A418 | 38 80 00 00 */	li r4, 0x0
/* 8150A41C | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8150A420 | 7D 89 03 A6 */	mtctr r12
/* 8150A424 | 4E 80 04 21 */	bctrl
/* 8150A428 | 48 00 01 F4 */	b .L_8150A61C
.L_8150A42C:
/* 8150A42C | 83 BC 00 14 */	lwz r29, 0x14(r28)
/* 8150A430 | 3B CD AF 18 */	li r30, lbl_81698F58@sda21
/* 8150A434 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8150A438 | 7F A3 EB 78 */	mr r3, r29
/* 8150A43C | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8150A440 | 7D 89 03 A6 */	mtctr r12
/* 8150A444 | 4E 80 04 21 */	bctrl
/* 8150A448 | 48 00 00 18 */	b .L_8150A460
.L_8150A44C:
/* 8150A44C | 7C 03 F0 40 */	cmplw r3, r30
/* 8150A450 | 40 82 00 0C */	bne .L_8150A45C
/* 8150A454 | 38 00 00 01 */	li r0, 0x1
/* 8150A458 | 48 00 00 14 */	b .L_8150A46C
.L_8150A45C:
/* 8150A45C | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_8150A460:
/* 8150A460 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150A464 | 40 82 FF E8 */	bne .L_8150A44C
/* 8150A468 | 38 00 00 00 */	li r0, 0x0
.L_8150A46C:
/* 8150A46C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150A470 | 41 82 00 08 */	beq .L_8150A478
/* 8150A474 | 48 00 00 08 */	b .L_8150A47C
.L_8150A478:
/* 8150A478 | 3B A0 00 00 */	li r29, 0x0
.L_8150A47C:
/* 8150A47C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8150A480 | 41 82 00 0C */	beq .L_8150A48C
/* 8150A484 | 38 00 00 01 */	li r0, 0x1
/* 8150A488 | 90 1D 00 68 */	stw r0, 0x68(r29)
.L_8150A48C:
/* 8150A48C | 80 7C 00 14 */	lwz r3, 0x14(r28)
/* 8150A490 | 38 A0 00 00 */	li r5, 0x0
/* 8150A494 | 80 9C 00 28 */	lwz r4, 0x28(r28)
/* 8150A498 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150A49C | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 8150A4A0 | 7D 89 03 A6 */	mtctr r12
/* 8150A4A4 | 4E 80 04 21 */	bctrl
/* 8150A4A8 | 80 7C 00 14 */	lwz r3, 0x14(r28)
/* 8150A4AC | 80 9C 00 20 */	lwz r4, 0x20(r28)
/* 8150A4B0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150A4B4 | 80 BC 00 24 */	lwz r5, 0x24(r28)
/* 8150A4B8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8150A4BC | 7D 89 03 A6 */	mtctr r12
/* 8150A4C0 | 4E 80 04 21 */	bctrl
/* 8150A4C4 | 83 DC 00 3C */	lwz r30, 0x3c(r28)
/* 8150A4C8 | 7C 7D 1B 78 */	mr r29, r3
/* 8150A4CC | 7F C3 F3 78 */	mr r3, r30
/* 8150A4D0 | 48 02 77 39 */	bl fn_81531C08
/* 8150A4D4 | 80 7C 00 14 */	lwz r3, 0x14(r28)
/* 8150A4D8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150A4DC | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8150A4E0 | 7D 89 03 A6 */	mtctr r12
/* 8150A4E4 | 4E 80 04 21 */	bctrl
/* 8150A4E8 | 38 00 00 00 */	li r0, 0x0
/* 8150A4EC | 7F C3 F3 78 */	mr r3, r30
/* 8150A4F0 | 90 1C 00 14 */	stw r0, 0x14(r28)
/* 8150A4F4 | 48 02 77 F1 */	bl fn_81531CE4
/* 8150A4F8 | 2C 1D FF FD */	cmpwi r29, -0x3
/* 8150A4FC | 41 82 01 20 */	beq .L_8150A61C
/* 8150A500 | 80 1C 00 24 */	lwz r0, 0x24(r28)
/* 8150A504 | 7C 1D 00 40 */	cmplw r29, r0
/* 8150A508 | 41 82 00 34 */	beq .L_8150A53C
/* 8150A50C | 48 00 46 05 */	bl GetInstance__Q44nw4r3snd6detail11TaskManagerFv
/* 8150A510 | 80 9C 00 0C */	lwz r4, 0xc(r28)
/* 8150A514 | 48 00 4A 25 */	bl CancelByTaskId__Q44nw4r3snd6detail11TaskManagerFUl
/* 8150A518 | 80 7C 00 10 */	lwz r3, 0x10(r28)
/* 8150A51C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150A520 | 41 82 00 FC */	beq .L_8150A61C
/* 8150A524 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150A528 | 38 80 00 00 */	li r4, 0x0
/* 8150A52C | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8150A530 | 7D 89 03 A6 */	mtctr r12
/* 8150A534 | 4E 80 04 21 */	bctrl
/* 8150A538 | 48 00 00 E4 */	b .L_8150A61C
.L_8150A53C:
/* 8150A53C | 83 DC 00 20 */	lwz r30, 0x20(r28)
/* 8150A540 | 3B E1 00 08 */	addi r31, r1, 0x8
/* 8150A544 | 3B A0 00 00 */	li r29, 0x0
/* 8150A548 | 48 00 00 88 */	b .L_8150A5D0
.L_8150A54C:
/* 8150A54C | 88 1C 00 38 */	lbz r0, 0x38(r28)
/* 8150A550 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150A554 | 41 82 00 24 */	beq .L_8150A578
/* 8150A558 | 80 7C 00 30 */	lwz r3, 0x30(r28)
/* 8150A55C | 80 9C 00 34 */	lwz r4, 0x34(r28)
/* 8150A560 | 38 03 00 1F */	addi r0, r3, 0x1f
/* 8150A564 | 54 03 00 34 */	clrrwi r3, r0, 5
/* 8150A568 | 7C 7D 19 D6 */	mullw r3, r29, r3
/* 8150A56C | 7C 1E 22 14 */	add r0, r30, r4
/* 8150A570 | 7C 03 00 AE */	lbzx r0, r3, r0
/* 8150A574 | B0 1F 00 00 */	sth r0, 0x0(r31)
.L_8150A578:
/* 8150A578 | 80 7C 00 10 */	lwz r3, 0x10(r28)
/* 8150A57C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150A580 | 41 82 00 48 */	beq .L_8150A5C8
/* 8150A584 | 80 BC 00 30 */	lwz r5, 0x30(r28)
/* 8150A588 | 7F A4 EB 78 */	mr r4, r29
/* 8150A58C | 80 DC 00 20 */	lwz r6, 0x20(r28)
/* 8150A590 | 38 A5 00 1F */	addi r5, r5, 0x1f
/* 8150A594 | 80 1C 00 34 */	lwz r0, 0x34(r28)
/* 8150A598 | 54 BA 00 34 */	clrrwi r26, r5, 5
/* 8150A59C | 7C BD D1 D6 */	mullw r5, r29, r26
/* 8150A5A0 | 7C 06 02 14 */	add r0, r6, r0
/* 8150A5A4 | 7F 65 02 14 */	add r27, r5, r0
/* 8150A5A8 | 48 00 40 0D */	bl GetBuffer__Q54nw4r3snd6detail10StrmPlayer11LoadCommandFi
/* 8150A5AC | 7C 79 1B 78 */	mr r25, r3
/* 8150A5B0 | 7F 64 DB 78 */	mr r4, r27
/* 8150A5B4 | 7F 45 D3 78 */	mr r5, r26
/* 8150A5B8 | 4B E2 5C 79 */	bl memcpy
/* 8150A5BC | 7F 23 CB 78 */	mr r3, r25
/* 8150A5C0 | 7F 44 D3 78 */	mr r4, r26
/* 8150A5C4 | 48 02 33 71 */	bl DCFlushRange
.L_8150A5C8:
/* 8150A5C8 | 3B FF 00 02 */	addi r31, r31, 0x2
/* 8150A5CC | 3B BD 00 01 */	addi r29, r29, 0x1
.L_8150A5D0:
/* 8150A5D0 | 80 9C 00 2C */	lwz r4, 0x2c(r28)
/* 8150A5D4 | 7C 1D 20 00 */	cmpw r29, r4
/* 8150A5D8 | 41 80 FF 74 */	blt .L_8150A54C
/* 8150A5DC | 88 1C 00 38 */	lbz r0, 0x38(r28)
/* 8150A5E0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150A5E4 | 41 82 00 18 */	beq .L_8150A5FC
/* 8150A5E8 | 80 7C 00 10 */	lwz r3, 0x10(r28)
/* 8150A5EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150A5F0 | 41 82 00 0C */	beq .L_8150A5FC
/* 8150A5F4 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8150A5F8 | 48 00 3F 65 */	bl SetAdpcmLoopContext__Q54nw4r3snd6detail10StrmPlayer11LoadCommandFiPUs
.L_8150A5FC:
/* 8150A5FC | 80 7C 00 10 */	lwz r3, 0x10(r28)
/* 8150A600 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150A604 | 41 82 00 18 */	beq .L_8150A61C
/* 8150A608 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150A60C | 38 80 00 01 */	li r4, 0x1
/* 8150A610 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8150A614 | 7D 89 03 A6 */	mtctr r12
/* 8150A618 | 4E 80 04 21 */	bctrl
.L_8150A61C:
/* 8150A61C | 39 61 02 30 */	addi r11, r1, 0x230
/* 8150A620 | 48 0E EE E5 */	bl _restgpr_25
/* 8150A624 | 80 01 02 34 */	lwz r0, 0x234(r1)
/* 8150A628 | 7C 08 03 A6 */	mtlr r0
/* 8150A62C | 38 21 02 30 */	addi r1, r1, 0x230
/* 8150A630 | 4E 80 00 20 */	blr
.endfn Execute__Q44nw4r3snd18SoundArchivePlayer16StrmDataLoadTaskFv

# .text:0x27C8 | 0x8150A634 | size: 0xC0
# nw4r::snd::SoundArchivePlayer::StrmDataLoadTask::Cancel()
.fn Cancel__Q44nw4r3snd18SoundArchivePlayer16StrmDataLoadTaskFv, global
/* 8150A634 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150A638 | 7C 08 02 A6 */	mflr r0
/* 8150A63C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150A640 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150A644 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8150A648 | 7C 7E 1B 78 */	mr r30, r3
/* 8150A64C | 83 E3 00 3C */	lwz r31, 0x3c(r3)
/* 8150A650 | 7F E3 FB 78 */	mr r3, r31
/* 8150A654 | 48 02 75 B5 */	bl fn_81531C08
/* 8150A658 | 80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8150A65C | 38 00 00 00 */	li r0, 0x0
/* 8150A660 | 90 1E 00 10 */	stw r0, 0x10(r30)
/* 8150A664 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150A668 | 41 82 00 6C */	beq .L_8150A6D4
/* 8150A66C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150A670 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8150A674 | 7D 89 03 A6 */	mtctr r12
/* 8150A678 | 4E 80 04 21 */	bctrl
/* 8150A67C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150A680 | 41 82 00 54 */	beq .L_8150A6D4
/* 8150A684 | 80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8150A688 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150A68C | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8150A690 | 7D 89 03 A6 */	mtctr r12
/* 8150A694 | 4E 80 04 21 */	bctrl
/* 8150A698 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150A69C | 41 82 00 24 */	beq .L_8150A6C0
/* 8150A6A0 | 80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8150A6A4 | 38 80 00 00 */	li r4, 0x0
/* 8150A6A8 | 38 A0 00 00 */	li r5, 0x0
/* 8150A6AC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150A6B0 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8150A6B4 | 7D 89 03 A6 */	mtctr r12
/* 8150A6B8 | 4E 80 04 21 */	bctrl
/* 8150A6BC | 48 00 00 18 */	b .L_8150A6D4
.L_8150A6C0:
/* 8150A6C0 | 80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8150A6C4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150A6C8 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8150A6CC | 7D 89 03 A6 */	mtctr r12
/* 8150A6D0 | 4E 80 04 21 */	bctrl
.L_8150A6D4:
/* 8150A6D4 | 7F E3 FB 78 */	mr r3, r31
/* 8150A6D8 | 48 02 76 0D */	bl fn_81531CE4
/* 8150A6DC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150A6E0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8150A6E4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8150A6E8 | 7C 08 03 A6 */	mtlr r0
/* 8150A6EC | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150A6F0 | 4E 80 00 20 */	blr
.endfn Cancel__Q44nw4r3snd18SoundArchivePlayer16StrmDataLoadTaskFv

# .text:0x2888 | 0x8150A6F4 | size: 0x8
# nw4r::snd::SoundArchivePlayer::detail_ConvertLabelStringToSoundId(const char*)
.fn detail_ConvertLabelStringToSoundId__Q34nw4r3snd18SoundArchivePlayerFPCc, global
/* 8150A6F4 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8150A6F8 | 4B FF BB 1C */	b ConvertLabelStringToSoundId__Q34nw4r3snd12SoundArchiveCFPCc
.endfn detail_ConvertLabelStringToSoundId__Q34nw4r3snd18SoundArchivePlayerFPCc

# .text:0x2890 | 0x8150A6FC | size: 0x58
# nw4r::snd::detail::PlayerHeap::~PlayerHeap()
.fn __dt__Q44nw4r3snd6detail10PlayerHeapFv, global
/* 8150A6FC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150A700 | 7C 08 02 A6 */	mflr r0
/* 8150A704 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150A708 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150A70C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150A710 | 7C 9F 23 78 */	mr r31, r4
/* 8150A714 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8150A718 | 7C 7E 1B 78 */	mr r30, r3
/* 8150A71C | 41 82 00 1C */	beq .L_8150A738
/* 8150A720 | 38 80 00 00 */	li r4, 0x0
/* 8150A724 | 48 00 01 ED */	bl __dt__Q34nw4r3snd9SoundHeapFv
/* 8150A728 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8150A72C | 40 81 00 0C */	ble .L_8150A738
/* 8150A730 | 7F C3 F3 78 */	mr r3, r30
/* 8150A734 | 48 0E D9 B1 */	bl __dl__FPv
.L_8150A738:
/* 8150A738 | 7F C3 F3 78 */	mr r3, r30
/* 8150A73C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8150A740 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8150A744 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150A748 | 7C 08 03 A6 */	mtlr r0
/* 8150A74C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150A750 | 4E 80 00 20 */	blr
.endfn __dt__Q44nw4r3snd6detail10PlayerHeapFv

# .text:0x28E8 | 0x8150A754 | size: 0x40
# nw4r::snd::SoundArchivePlayer::SeqLoadTask::~SeqLoadTask()
.fn __dt__Q44nw4r3snd18SoundArchivePlayer11SeqLoadTaskFv, global
/* 8150A754 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150A758 | 7C 08 02 A6 */	mflr r0
/* 8150A75C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150A760 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150A764 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150A768 | 7C 7F 1B 78 */	mr r31, r3
/* 8150A76C | 41 82 00 10 */	beq .L_8150A77C
/* 8150A770 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8150A774 | 40 81 00 08 */	ble .L_8150A77C
/* 8150A778 | 48 0E D9 6D */	bl __dl__FPv
.L_8150A77C:
/* 8150A77C | 7F E3 FB 78 */	mr r3, r31
/* 8150A780 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8150A784 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150A788 | 7C 08 03 A6 */	mtlr r0
/* 8150A78C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150A790 | 4E 80 00 20 */	blr
.endfn __dt__Q44nw4r3snd18SoundArchivePlayer11SeqLoadTaskFv

# .text:0x2928 | 0x8150A794 | size: 0x40
# nw4r::snd::SoundArchivePlayer::StrmHeaderLoadTask::~StrmHeaderLoadTask()
.fn __dt__Q44nw4r3snd18SoundArchivePlayer18StrmHeaderLoadTaskFv, global
/* 8150A794 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150A798 | 7C 08 02 A6 */	mflr r0
/* 8150A79C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150A7A0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150A7A4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150A7A8 | 7C 7F 1B 78 */	mr r31, r3
/* 8150A7AC | 41 82 00 10 */	beq .L_8150A7BC
/* 8150A7B0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8150A7B4 | 40 81 00 08 */	ble .L_8150A7BC
/* 8150A7B8 | 48 0E D9 2D */	bl __dl__FPv
.L_8150A7BC:
/* 8150A7BC | 7F E3 FB 78 */	mr r3, r31
/* 8150A7C0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8150A7C4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150A7C8 | 7C 08 03 A6 */	mtlr r0
/* 8150A7CC | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150A7D0 | 4E 80 00 20 */	blr
.endfn __dt__Q44nw4r3snd18SoundArchivePlayer18StrmHeaderLoadTaskFv

# .text:0x2968 | 0x8150A7D4 | size: 0x40
# nw4r::snd::SoundArchivePlayer::StrmDataLoadTask::~StrmDataLoadTask()
.fn __dt__Q44nw4r3snd18SoundArchivePlayer16StrmDataLoadTaskFv, global
/* 8150A7D4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150A7D8 | 7C 08 02 A6 */	mflr r0
/* 8150A7DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150A7E0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150A7E4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150A7E8 | 7C 7F 1B 78 */	mr r31, r3
/* 8150A7EC | 41 82 00 10 */	beq .L_8150A7FC
/* 8150A7F0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8150A7F4 | 40 81 00 08 */	ble .L_8150A7FC
/* 8150A7F8 | 48 0E D8 ED */	bl __dl__FPv
.L_8150A7FC:
/* 8150A7FC | 7F E3 FB 78 */	mr r3, r31
/* 8150A800 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8150A804 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150A808 | 7C 08 03 A6 */	mtlr r0
/* 8150A80C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150A810 | 4E 80 00 20 */	blr
.endfn __dt__Q44nw4r3snd18SoundArchivePlayer16StrmDataLoadTaskFv

# .text:0x29A8 | 0x8150A814 | size: 0x8
# nw4r::snd::SoundArchivePlayer::@12@detail_ConvertLabelStringToSoundId(const char*)
.fn "@12@detail_ConvertLabelStringToSoundId__Q34nw4r3snd18SoundArchivePlayerFPCc", global
/* 8150A814 | 38 63 FF F4 */	subi r3, r3, 0xc
/* 8150A818 | 4B FF FE DC */	b detail_ConvertLabelStringToSoundId__Q34nw4r3snd18SoundArchivePlayerFPCc
.endfn "@12@detail_ConvertLabelStringToSoundId__Q34nw4r3snd18SoundArchivePlayerFPCc"

# .text:0x29B0 | 0x8150A81C | size: 0x8
# nw4r::snd::SoundArchivePlayer::@12@detail_SetupSound(nw4r::snd::SoundHandle*, unsigned long, nw4r::snd::detail::BasicSound::AmbientArgInfo*, nw4r::snd::detail::ExternalSoundPlayer*, bool, const nw4r::snd::SoundStartable::StartInfo*)
.fn "@12@detail_SetupSound__Q34nw4r3snd18SoundArchivePlayerFPQ34nw4r3snd11SoundHandleUlPQ54nw4r3snd6detail10BasicSound14AmbientArgInfoPQ44nw4r3snd6detail19ExternalSoundPlayerbPCQ44nw4r3snd14SoundStartable9StartInfo", global
/* 8150A81C | 38 63 FF F4 */	subi r3, r3, 0xc
/* 8150A820 | 4B FF E7 D0 */	b detail_SetupSound__Q34nw4r3snd18SoundArchivePlayerFPQ34nw4r3snd11SoundHandleUlPQ54nw4r3snd6detail10BasicSound14AmbientArgInfoPQ44nw4r3snd6detail19ExternalSoundPlayerbPCQ44nw4r3snd14SoundStartable9StartInfo
.endfn "@12@detail_SetupSound__Q34nw4r3snd18SoundArchivePlayerFPQ34nw4r3snd11SoundHandleUlPQ54nw4r3snd6detail10BasicSound14AmbientArgInfoPQ44nw4r3snd6detail19ExternalSoundPlayerbPCQ44nw4r3snd14SoundStartable9StartInfo"

# .text:0x29B8 | 0x8150A824 | size: 0x8
.fn "@12@__dt__Q34nw4r3snd18SoundArchivePlayerFv", global
/* 8150A824 | 38 63 FF F4 */	subi r3, r3, 0xc
/* 8150A828 | 4B FF D9 F8 */	b __dt__Q34nw4r3snd18SoundArchivePlayerFv
.endfn "@12@__dt__Q34nw4r3snd18SoundArchivePlayerFv"

# 0x8166F918..0x8166F9E8 | size: 0xD0
.data
.balign 8

# .data:0x0 | 0x8166F918 | size: 0x30
# nw4r::snd::SoundArchivePlayer::__vtable
.obj __vt__Q34nw4r3snd18SoundArchivePlayer, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q34nw4r3snd18SoundArchivePlayerFv
	.4byte InvalidateData__Q34nw4r3snd18SoundArchivePlayerFPCvPCv
	.4byte InvalidateWaveData__Q34nw4r3snd18SoundArchivePlayerFPCvPCv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@12@__dt__Q34nw4r3snd18SoundArchivePlayerFv"
	.4byte "@12@detail_SetupSound__Q34nw4r3snd18SoundArchivePlayerFPQ34nw4r3snd11SoundHandleUlPQ54nw4r3snd6detail10BasicSound14AmbientArgInfoPQ44nw4r3snd6detail19ExternalSoundPlayerbPCQ44nw4r3snd14SoundStartable9StartInfo"
	.4byte "@12@detail_ConvertLabelStringToSoundId__Q34nw4r3snd18SoundArchivePlayerFPCc"
	.4byte detail_SetupSound__Q34nw4r3snd18SoundArchivePlayerFPQ34nw4r3snd11SoundHandleUlPQ54nw4r3snd6detail10BasicSound14AmbientArgInfoPQ44nw4r3snd6detail19ExternalSoundPlayerbPCQ44nw4r3snd14SoundStartable9StartInfo
	.4byte detail_ConvertLabelStringToSoundId__Q34nw4r3snd18SoundArchivePlayerFPCc
.endobj __vt__Q34nw4r3snd18SoundArchivePlayer

# .data:0x30 | 0x8166F948 | size: 0x14
# nw4r::snd::SoundArchivePlayer::StrmDataLoadTask::__vtable
.obj __vt__Q44nw4r3snd18SoundArchivePlayer16StrmDataLoadTask, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q44nw4r3snd18SoundArchivePlayer16StrmDataLoadTaskFv
	.4byte Execute__Q44nw4r3snd18SoundArchivePlayer16StrmDataLoadTaskFv
	.4byte Cancel__Q44nw4r3snd18SoundArchivePlayer16StrmDataLoadTaskFv
.endobj __vt__Q44nw4r3snd18SoundArchivePlayer16StrmDataLoadTask

# .data:0x44 | 0x8166F95C | size: 0x14
# nw4r::snd::SoundArchivePlayer::StrmHeaderLoadTask::__vtable
.obj __vt__Q44nw4r3snd18SoundArchivePlayer18StrmHeaderLoadTask, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q44nw4r3snd18SoundArchivePlayer18StrmHeaderLoadTaskFv
	.4byte Execute__Q44nw4r3snd18SoundArchivePlayer18StrmHeaderLoadTaskFv
	.4byte Cancel__Q44nw4r3snd18SoundArchivePlayer18StrmHeaderLoadTaskFv
.endobj __vt__Q44nw4r3snd18SoundArchivePlayer18StrmHeaderLoadTask

# .data:0x58 | 0x8166F970 | size: 0x18
# nw4r::snd::SoundArchivePlayer::SeqLoadTask::__vtable
.obj __vt__Q44nw4r3snd18SoundArchivePlayer11SeqLoadTask, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q44nw4r3snd18SoundArchivePlayer11SeqLoadTaskFv
	.4byte Execute__Q44nw4r3snd18SoundArchivePlayer11SeqLoadTaskFv
	.4byte Cancel__Q44nw4r3snd18SoundArchivePlayer11SeqLoadTaskFv
	.4byte 0x00000000
.endobj __vt__Q44nw4r3snd18SoundArchivePlayer11SeqLoadTask

# .data:0x70 | 0x8166F988 | size: 0x10
# nw4r::snd::SoundArchivePlayer::WsdCallback::__vtable
.obj __vt__Q44nw4r3snd18SoundArchivePlayer11WsdCallback, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q44nw4r3snd18SoundArchivePlayer11WsdCallbackFv
	.4byte GetWaveSoundData__Q44nw4r3snd18SoundArchivePlayer11WsdCallbackCFPQ44nw4r3snd6detail13WaveSoundInfoPQ44nw4r3snd6detail17WaveSoundNoteInfoPQ44nw4r3snd6detail8WaveDataPCviiUl
.endobj __vt__Q44nw4r3snd18SoundArchivePlayer11WsdCallback

# .data:0x80 | 0x8166F998 | size: 0x18
# nw4r::snd::SoundArchivePlayer::StrmCallback::__vtable
.obj __vt__Q44nw4r3snd18SoundArchivePlayer12StrmCallback, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q44nw4r3snd18SoundArchivePlayer12StrmCallbackFv
	.4byte LoadHeader__Q44nw4r3snd18SoundArchivePlayer12StrmCallbackCFPFbPCQ54nw4r3snd6detail10StrmPlayer10StrmHeaderPv_vPvUlUl
	.4byte LoadStream__Q44nw4r3snd18SoundArchivePlayer12StrmCallbackCFPvUlliUllbRQ54nw4r3snd6detail10StrmPlayer11LoadCommandUlUl
	.4byte CancelLoading__Q44nw4r3snd18SoundArchivePlayer12StrmCallbackCFUlUl
.endobj __vt__Q44nw4r3snd18SoundArchivePlayer12StrmCallback

# .data:0x98 | 0x8166F9B0 | size: 0x10
# nw4r::snd::SoundArchivePlayer::SeqNoteOnCallback::__vtable
.obj __vt__Q44nw4r3snd18SoundArchivePlayer17SeqNoteOnCallback, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q44nw4r3snd18SoundArchivePlayer17SeqNoteOnCallbackFv
	.4byte NoteOn__Q44nw4r3snd18SoundArchivePlayer17SeqNoteOnCallbackFPQ44nw4r3snd6detail9SeqPlayeriRCQ44nw4r3snd6detail10NoteOnInfo
.endobj __vt__Q44nw4r3snd18SoundArchivePlayer17SeqNoteOnCallback

# .data:0xA8 | 0x8166F9C0 | size: 0x18
# nw4r::snd::SoundArchivePlayer::SeqLoadCallback::__vtable
.obj __vt__Q44nw4r3snd18SoundArchivePlayer15SeqLoadCallback, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q44nw4r3snd18SoundArchivePlayer15SeqLoadCallbackFv
	.4byte LoadData__Q44nw4r3snd18SoundArchivePlayer15SeqLoadCallbackCFPFbPCvlPv_vPvUl
	.4byte CancelLoading__Q44nw4r3snd18SoundArchivePlayer15SeqLoadCallbackCFUl
	.4byte 0x00000000
.endobj __vt__Q44nw4r3snd18SoundArchivePlayer15SeqLoadCallback

# .data:0xC0 | 0x8166F9D8 | size: 0x10
# nw4r::snd::detail::PlayerHeap::__vtable
.obj __vt__Q44nw4r3snd6detail10PlayerHeap, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q44nw4r3snd6detail10PlayerHeapFv
	.4byte Alloc__Q34nw4r3snd9SoundHeapFUl
.endobj __vt__Q44nw4r3snd6detail10PlayerHeap

# 0x81695388..0x81695398 | size: 0x10
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81695388 | size: 0x4
.obj lbl_81695388, global
	.float 127
.endobj lbl_81695388

# .sdata2:0x4 | 0x8169538C | size: 0x4
.obj gap_09_8169538C_sdata2, global
.hidden gap_09_8169538C_sdata2
	.4byte 0x00000000
.endobj gap_09_8169538C_sdata2

# .sdata2:0x8 | 0x81695390 | size: 0x8
.obj lbl_81695390, global
	.double 4503601774854144
.endobj lbl_81695390

# 0x81698F10..0x81698F18 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698F10 | size: 0x1
.obj initFlag$7545, local
	.skip 0x1
.endobj initFlag$7545

# .sbss:0x1 | 0x81698F11 | size: 0x7
.obj gap_12_81698F11_sbss, global
.hidden gap_12_81698F11_sbss
	.skip 0x7
.endobj gap_12_81698F11_sbss
