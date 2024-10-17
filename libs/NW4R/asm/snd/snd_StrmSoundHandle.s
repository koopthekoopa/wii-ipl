.include "macros.inc"
.file "snd_StrmSoundHandle.cpp"

# 0x8150EAD8..0x8150EB10 | size: 0x38
.text
.balign 4

# .text:0x0 | 0x8150EAD8 | size: 0x38
# nw4r::snd::StrmSoundHandle::DetachSound()
.fn DetachSound__Q34nw4r3snd15StrmSoundHandleFv, global
/* 8150EAD8 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 8150EADC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8150EAE0 | 41 82 00 18 */	beq .L_8150EAF8
/* 8150EAE4 | 80 04 05 F4 */	lwz r0, 0x5f4(r4)
/* 8150EAE8 | 7C 00 18 40 */	cmplw r0, r3
/* 8150EAEC | 40 82 00 0C */	bne .L_8150EAF8
/* 8150EAF0 | 38 00 00 00 */	li r0, 0x0
/* 8150EAF4 | 90 04 05 F4 */	stw r0, 0x5f4(r4)
.L_8150EAF8:
/* 8150EAF8 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8150EAFC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150EB00 | 4D 82 00 20 */	beqlr
/* 8150EB04 | 38 00 00 00 */	li r0, 0x0
/* 8150EB08 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 8150EB0C | 4E 80 00 20 */	blr
.endfn DetachSound__Q34nw4r3snd15StrmSoundHandleFv
