.include "macros.inc"
.file "snd_WaveSoundHandle.cpp"

# 0x815107F4..0x8151082C | size: 0x38
.text
.balign 4

# .text:0x0 | 0x815107F4 | size: 0x38
# nw4r::snd::WaveSoundHandle::DetachSound()
.fn DetachSound__Q34nw4r3snd15WaveSoundHandleFv, global
/* 815107F4 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 815107F8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 815107FC | 41 82 00 18 */	beq .L_81510814
/* 81510800 | 80 04 01 AC */	lwz r0, 0x1ac(r4)
/* 81510804 | 7C 00 18 40 */	cmplw r0, r3
/* 81510808 | 40 82 00 0C */	bne .L_81510814
/* 8151080C | 38 00 00 00 */	li r0, 0x0
/* 81510810 | 90 04 01 AC */	stw r0, 0x1ac(r4)
.L_81510814:
/* 81510814 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81510818 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8151081C | 4D 82 00 20 */	beqlr
/* 81510820 | 38 00 00 00 */	li r0, 0x0
/* 81510824 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 81510828 | 4E 80 00 20 */	blr
.endfn DetachSound__Q34nw4r3snd15WaveSoundHandleFv
