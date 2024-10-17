.include "macros.inc"
.file "snd_SoundHandle.cpp"

# 0x8150A82C..0x8150A8C8 | size: 0x9C
.text
.balign 4

# .text:0x0 | 0x8150A82C | size: 0x4C
# nw4r::snd::SoundHandle::detail_AttachSound(nw4r::snd::detail::BasicSound*)
.fn detail_AttachSound__Q34nw4r3snd11SoundHandleFPQ44nw4r3snd6detail10BasicSound, global
/* 8150A82C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150A830 | 7C 08 02 A6 */	mflr r0
/* 8150A834 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150A838 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150A83C | 7C 7F 1B 78 */	mr r31, r3
/* 8150A840 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8150A844 | 7C 83 23 78 */	mr r3, r4
/* 8150A848 | 4B FF 2D 65 */	bl IsAttachedGeneralHandle__Q44nw4r3snd6detail10BasicSoundFv
/* 8150A84C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150A850 | 41 82 00 0C */	beq .L_8150A85C
/* 8150A854 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8150A858 | 4B FF 2D 69 */	bl DetachGeneralHandle__Q44nw4r3snd6detail10BasicSoundFv
.L_8150A85C:
/* 8150A85C | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8150A860 | 93 E3 00 08 */	stw r31, 0x8(r3)
/* 8150A864 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8150A868 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150A86C | 7C 08 03 A6 */	mtlr r0
/* 8150A870 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150A874 | 4E 80 00 20 */	blr
.endfn detail_AttachSound__Q34nw4r3snd11SoundHandleFPQ44nw4r3snd6detail10BasicSound

# .text:0x4C | 0x8150A878 | size: 0x50
# nw4r::snd::SoundHandle::DetachSound()
.fn DetachSound__Q34nw4r3snd11SoundHandleFv, global
/* 8150A878 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 8150A87C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8150A880 | 41 82 00 30 */	beq .L_8150A8B0
/* 8150A884 | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 8150A888 | 7C 00 18 40 */	cmplw r0, r3
/* 8150A88C | 40 82 00 0C */	bne .L_8150A898
/* 8150A890 | 38 00 00 00 */	li r0, 0x0
/* 8150A894 | 90 04 00 08 */	stw r0, 0x8(r4)
.L_8150A898:
/* 8150A898 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 8150A89C | 80 04 00 0C */	lwz r0, 0xc(r4)
/* 8150A8A0 | 7C 00 18 40 */	cmplw r0, r3
/* 8150A8A4 | 40 82 00 0C */	bne .L_8150A8B0
/* 8150A8A8 | 38 00 00 00 */	li r0, 0x0
/* 8150A8AC | 90 04 00 0C */	stw r0, 0xc(r4)
.L_8150A8B0:
/* 8150A8B0 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8150A8B4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150A8B8 | 4D 82 00 20 */	beqlr
/* 8150A8BC | 38 00 00 00 */	li r0, 0x0
/* 8150A8C0 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 8150A8C4 | 4E 80 00 20 */	blr
.endfn DetachSound__Q34nw4r3snd11SoundHandleFv
