.include "macros.inc"
.file "snd_ExternalSoundPlayer.cpp"

# 0x814FF3BC..0x814FF49C | size: 0xE0
.text
.balign 4

# .text:0x0 | 0x814FF3BC | size: 0x4C
# nw4r::snd::detail::ExternalSoundPlayer::InsertSoundList(nw4r::snd::detail::BasicSound*)
.fn InsertSoundList__Q44nw4r3snd6detail19ExternalSoundPlayerFPQ44nw4r3snd6detail10BasicSound, global
/* 814FF3BC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814FF3C0 | 7C 08 02 A6 */	mflr r0
/* 814FF3C4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814FF3C8 | 38 03 00 04 */	addi r0, r3, 0x4
/* 814FF3CC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814FF3D0 | 7C 9F 23 78 */	mr r31, r4
/* 814FF3D4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814FF3D8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814FF3DC | 7C 7E 1B 78 */	mr r30, r3
/* 814FF3E0 | 38 BF 00 D0 */	addi r5, r31, 0xd0
/* 814FF3E4 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814FF3E8 | 48 01 30 8D */	bl fn_81512474
/* 814FF3EC | 93 DF 00 14 */	stw r30, 0x14(r31)
/* 814FF3F0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814FF3F4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814FF3F8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814FF3FC | 7C 08 03 A6 */	mtlr r0
/* 814FF400 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814FF404 | 4E 80 00 20 */	blr
.endfn InsertSoundList__Q44nw4r3snd6detail19ExternalSoundPlayerFPQ44nw4r3snd6detail10BasicSound

# .text:0x4C | 0x814FF408 | size: 0x38
# nw4r::snd::detail::ExternalSoundPlayer::RemoveSoundList(nw4r::snd::detail::BasicSound*)
.fn RemoveSoundList__Q44nw4r3snd6detail19ExternalSoundPlayerFPQ44nw4r3snd6detail10BasicSound, global
/* 814FF408 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814FF40C | 7C 08 02 A6 */	mflr r0
/* 814FF410 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814FF414 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814FF418 | 7C 9F 23 78 */	mr r31, r4
/* 814FF41C | 38 84 00 D0 */	addi r4, r4, 0xd0
/* 814FF420 | 48 01 30 81 */	bl fn_815124A0
/* 814FF424 | 38 00 00 00 */	li r0, 0x0
/* 814FF428 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 814FF42C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814FF430 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814FF434 | 7C 08 03 A6 */	mtlr r0
/* 814FF438 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814FF43C | 4E 80 00 20 */	blr
.endfn RemoveSoundList__Q44nw4r3snd6detail19ExternalSoundPlayerFPQ44nw4r3snd6detail10BasicSound

# .text:0x84 | 0x814FF440 | size: 0x5C
# nw4r::snd::detail::ExternalSoundPlayer::GetLowestPrioritySound()
.fn GetLowestPrioritySound__Q44nw4r3snd6detail19ExternalSoundPlayerFv, global
/* 814FF440 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 814FF444 | 38 03 00 04 */	addi r0, r3, 0x4
/* 814FF448 | 39 00 00 80 */	li r8, 0x80
/* 814FF44C | 38 60 00 00 */	li r3, 0x0
/* 814FF450 | 48 00 00 40 */	b .L_814FF490
.L_814FF454:
/* 814FF454 | 88 C4 FF A4 */	lbz r6, -0x5c(r4)
/* 814FF458 | 38 E4 FF 30 */	subi r7, r4, 0xd0
/* 814FF45C | 80 A4 FF 70 */	lwz r5, -0x90(r4)
/* 814FF460 | 7C C6 2A 14 */	add r6, r6, r5
/* 814FF464 | 2C 06 00 7F */	cmpwi r6, 0x7f
/* 814FF468 | 40 81 00 0C */	ble .L_814FF474
/* 814FF46C | 38 A0 00 7F */	li r5, 0x7f
/* 814FF470 | 48 00 00 0C */	b .L_814FF47C
.L_814FF474:
/* 814FF474 | 7C C5 FE 70 */	srawi r5, r6, 31
/* 814FF478 | 7C C5 28 78 */	andc r5, r6, r5
.L_814FF47C:
/* 814FF47C | 7C 08 28 00 */	cmpw r8, r5
/* 814FF480 | 40 81 00 0C */	ble .L_814FF48C
/* 814FF484 | 7C E3 3B 78 */	mr r3, r7
/* 814FF488 | 7C A8 2B 78 */	mr r8, r5
.L_814FF48C:
/* 814FF48C | 80 84 00 00 */	lwz r4, 0x0(r4)
.L_814FF490:
/* 814FF490 | 7C 04 00 40 */	cmplw r4, r0
/* 814FF494 | 40 82 FF C0 */	bne .L_814FF454
/* 814FF498 | 4E 80 00 20 */	blr
.endfn GetLowestPrioritySound__Q44nw4r3snd6detail19ExternalSoundPlayerFv
