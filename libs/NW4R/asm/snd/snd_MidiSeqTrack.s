.include "macros.inc"
.file "snd_MidiSeqTrack.cpp"

# 0x81501BF4..0x81501C34 | size: 0x40
.text
.balign 4

# .text:0x0 | 0x81501BF4 | size: 0x40
# nw4r::snd::detail::SeqTrack::~SeqTrack()
.fn __dt__Q44nw4r3snd6detail8SeqTrackFv, global
/* 81501BF4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81501BF8 | 7C 08 02 A6 */	mflr r0
/* 81501BFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81501C00 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81501C04 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81501C08 | 7C 7F 1B 78 */	mr r31, r3
/* 81501C0C | 41 82 00 10 */	beq .L_81501C1C
/* 81501C10 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81501C14 | 40 81 00 08 */	ble .L_81501C1C
/* 81501C18 | 48 0F 64 CD */	bl __dl__FPv
.L_81501C1C:
/* 81501C1C | 7F E3 FB 78 */	mr r3, r31
/* 81501C20 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81501C24 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81501C28 | 7C 08 03 A6 */	mtlr r0
/* 81501C2C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81501C30 | 4E 80 00 20 */	blr
.endfn __dt__Q44nw4r3snd6detail8SeqTrackFv

# 0x8166F4F0..0x8166F500 | size: 0x10
.data
.balign 8

# .data:0x0 | 0x8166F4F0 | size: 0x10
# nw4r::snd::detail::SeqTrack::__vtable
.obj __vt__Q44nw4r3snd6detail8SeqTrack, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q44nw4r3snd6detail8SeqTrackFv
	.4byte 0x00000000
.endobj __vt__Q44nw4r3snd6detail8SeqTrack
