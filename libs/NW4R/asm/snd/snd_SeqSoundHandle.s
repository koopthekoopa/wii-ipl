.include "macros.inc"
.file "snd_SeqSoundHandle.cpp"

# 0x815051C0..0x815051F8 | size: 0x38
.text
.balign 4

# .text:0x0 | 0x815051C0 | size: 0x38
# nw4r::snd::SeqSoundHandle::DetachSound()
.fn DetachSound__Q34nw4r3snd14SeqSoundHandleFv, global
/* 815051C0 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 815051C4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 815051C8 | 41 82 00 18 */	beq .L_815051E0
/* 815051CC | 80 04 01 E0 */	lwz r0, 0x1e0(r4)
/* 815051D0 | 7C 00 18 40 */	cmplw r0, r3
/* 815051D4 | 40 82 00 0C */	bne .L_815051E0
/* 815051D8 | 38 00 00 00 */	li r0, 0x0
/* 815051DC | 90 04 01 E0 */	stw r0, 0x1e0(r4)
.L_815051E0:
/* 815051E0 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 815051E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 815051E8 | 4D 82 00 20 */	beqlr
/* 815051EC | 38 00 00 00 */	li r0, 0x0
/* 815051F0 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 815051F4 | 4E 80 00 20 */	blr
.endfn DetachSound__Q34nw4r3snd14SeqSoundHandleFv
