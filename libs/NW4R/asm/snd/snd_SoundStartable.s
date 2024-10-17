.include "macros.inc"
.file "snd_SoundStartable.cpp"

# 0x8150BC38..0x8150BD88 | size: 0x150
.text
.balign 4

# .text:0x0 | 0x8150BC38 | size: 0x6C
# nw4r::snd::SoundStartable::detail_StartSound(nw4r::snd::SoundHandle*, unsigned long, nw4r::snd::detail::BasicSound::AmbientArgInfo*, nw4r::snd::detail::ExternalSoundPlayer*, const nw4r::snd::SoundStartable::StartInfo*)
.fn detail_StartSound__Q34nw4r3snd14SoundStartableFPQ34nw4r3snd11SoundHandleUlPQ54nw4r3snd6detail10BasicSound14AmbientArgInfoPQ44nw4r3snd6detail19ExternalSoundPlayerPCQ44nw4r3snd14SoundStartable9StartInfo, global
/* 8150BC38 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150BC3C | 7C 08 02 A6 */	mflr r0
/* 8150BC40 | 7D 09 43 78 */	mr r9, r8
/* 8150BC44 | 39 00 00 00 */	li r8, 0x0
/* 8150BC48 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150BC4C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150BC50 | 7C 9F 23 78 */	mr r31, r4
/* 8150BC54 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150BC58 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8150BC5C | 7D 89 03 A6 */	mtctr r12
/* 8150BC60 | 4E 80 04 21 */	bctrl
/* 8150BC64 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150BC68 | 41 82 00 08 */	beq .L_8150BC70
/* 8150BC6C | 48 00 00 24 */	b .L_8150BC90
.L_8150BC70:
/* 8150BC70 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8150BC74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150BC78 | 41 82 00 14 */	beq .L_8150BC8C
/* 8150BC7C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150BC80 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8150BC84 | 7D 89 03 A6 */	mtctr r12
/* 8150BC88 | 4E 80 04 21 */	bctrl
.L_8150BC8C:
/* 8150BC8C | 38 60 00 00 */	li r3, 0x0
.L_8150BC90:
/* 8150BC90 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150BC94 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8150BC98 | 7C 08 03 A6 */	mtlr r0
/* 8150BC9C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150BCA0 | 4E 80 00 20 */	blr
.endfn detail_StartSound__Q34nw4r3snd14SoundStartableFPQ34nw4r3snd11SoundHandleUlPQ54nw4r3snd6detail10BasicSound14AmbientArgInfoPQ44nw4r3snd6detail19ExternalSoundPlayerPCQ44nw4r3snd14SoundStartable9StartInfo

# .text:0x6C | 0x8150BCA4 | size: 0xCC
# nw4r::snd::SoundStartable::detail_HoldSound(nw4r::snd::SoundHandle*, unsigned long, nw4r::snd::detail::BasicSound::AmbientArgInfo*, nw4r::snd::detail::ExternalSoundPlayer*, const nw4r::snd::SoundStartable::StartInfo*)
.fn detail_HoldSound__Q34nw4r3snd14SoundStartableFPQ34nw4r3snd11SoundHandleUlPQ54nw4r3snd6detail10BasicSound14AmbientArgInfoPQ44nw4r3snd6detail19ExternalSoundPlayerPCQ44nw4r3snd14SoundStartable9StartInfo, global
/* 8150BCA4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150BCA8 | 7C 08 02 A6 */	mflr r0
/* 8150BCAC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150BCB0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150BCB4 | 7C 9F 23 78 */	mr r31, r4
/* 8150BCB8 | 81 24 00 00 */	lwz r9, 0x0(r4)
/* 8150BCBC | 2C 09 00 00 */	cmpwi r9, 0x0
/* 8150BCC0 | 41 82 00 3C */	beq .L_8150BCFC
/* 8150BCC4 | 41 82 00 0C */	beq .L_8150BCD0
/* 8150BCC8 | 80 09 00 78 */	lwz r0, 0x78(r9)
/* 8150BCCC | 48 00 00 08 */	b .L_8150BCD4
.L_8150BCD0:
/* 8150BCD0 | 38 00 FF FF */	li r0, -0x1
.L_8150BCD4:
/* 8150BCD4 | 7C 05 00 40 */	cmplw r5, r0
/* 8150BCD8 | 40 82 00 24 */	bne .L_8150BCFC
/* 8150BCDC | 81 89 00 00 */	lwz r12, 0x0(r9)
/* 8150BCE0 | 7D 23 4B 78 */	mr r3, r9
/* 8150BCE4 | 38 80 00 01 */	li r4, 0x1
/* 8150BCE8 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8150BCEC | 7D 89 03 A6 */	mtctr r12
/* 8150BCF0 | 4E 80 04 21 */	bctrl
/* 8150BCF4 | 38 60 00 00 */	li r3, 0x0
/* 8150BCF8 | 48 00 00 64 */	b .L_8150BD5C
.L_8150BCFC:
/* 8150BCFC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150BD00 | 7D 09 43 78 */	mr r9, r8
/* 8150BD04 | 7F E4 FB 78 */	mr r4, r31
/* 8150BD08 | 39 00 00 01 */	li r8, 0x1
/* 8150BD0C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8150BD10 | 7D 89 03 A6 */	mtctr r12
/* 8150BD14 | 4E 80 04 21 */	bctrl
/* 8150BD18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150BD1C | 41 82 00 08 */	beq .L_8150BD24
/* 8150BD20 | 48 00 00 3C */	b .L_8150BD5C
.L_8150BD24:
/* 8150BD24 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8150BD28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150BD2C | 41 82 00 14 */	beq .L_8150BD40
/* 8150BD30 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150BD34 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8150BD38 | 7D 89 03 A6 */	mtctr r12
/* 8150BD3C | 4E 80 04 21 */	bctrl
.L_8150BD40:
/* 8150BD40 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8150BD44 | 38 80 00 01 */	li r4, 0x1
/* 8150BD48 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150BD4C | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8150BD50 | 7D 89 03 A6 */	mtctr r12
/* 8150BD54 | 4E 80 04 21 */	bctrl
/* 8150BD58 | 38 60 00 00 */	li r3, 0x0
.L_8150BD5C:
/* 8150BD5C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150BD60 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8150BD64 | 7C 08 03 A6 */	mtlr r0
/* 8150BD68 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150BD6C | 4E 80 00 20 */	blr
.endfn detail_HoldSound__Q34nw4r3snd14SoundStartableFPQ34nw4r3snd11SoundHandleUlPQ54nw4r3snd6detail10BasicSound14AmbientArgInfoPQ44nw4r3snd6detail19ExternalSoundPlayerPCQ44nw4r3snd14SoundStartable9StartInfo

# .text:0x138 | 0x8150BD70 | size: 0x18
# nw4r::snd::SoundStartable::detail_PrepareSound(nw4r::snd::SoundHandle*, unsigned long, nw4r::snd::detail::BasicSound::AmbientArgInfo*, nw4r::snd::detail::ExternalSoundPlayer*, const nw4r::snd::SoundStartable::StartInfo*)
.fn detail_PrepareSound__Q34nw4r3snd14SoundStartableFPQ34nw4r3snd11SoundHandleUlPQ54nw4r3snd6detail10BasicSound14AmbientArgInfoPQ44nw4r3snd6detail19ExternalSoundPlayerPCQ44nw4r3snd14SoundStartable9StartInfo, global
/* 8150BD70 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150BD74 | 7D 09 43 78 */	mr r9, r8
/* 8150BD78 | 39 00 00 00 */	li r8, 0x0
/* 8150BD7C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8150BD80 | 7D 89 03 A6 */	mtctr r12
/* 8150BD84 | 4E 80 04 20 */	bctr
.endfn detail_PrepareSound__Q34nw4r3snd14SoundStartableFPQ34nw4r3snd11SoundHandleUlPQ54nw4r3snd6detail10BasicSound14AmbientArgInfoPQ44nw4r3snd6detail19ExternalSoundPlayerPCQ44nw4r3snd14SoundStartable9StartInfo
