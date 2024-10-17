.include "macros.inc"
.file "snd_MmlSeqTrack.cpp"

# 0x81502AFC..0x81502BC8 | size: 0xCC
.text
.balign 4

# .text:0x0 | 0x81502AFC | size: 0x78
# nw4r::snd::detail::MmlSeqTrack::MmlSeqTrack()
.fn __ct__Q44nw4r3snd6detail11MmlSeqTrackFv, global
/* 81502AFC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81502B00 | 7C 08 02 A6 */	mflr r0
/* 81502B04 | 3C 80 81 67 */	lis r4, __vt__Q44nw4r3snd6detail8SeqTrack@ha
/* 81502B08 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81502B0C | 38 84 F4 F0 */	addi r4, r4, __vt__Q44nw4r3snd6detail8SeqTrack@l
/* 81502B10 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81502B14 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81502B18 | 7C 7E 1B 78 */	mr r30, r3
/* 81502B1C | 90 83 00 00 */	stw r4, 0x0(r3)
/* 81502B20 | 38 63 00 68 */	addi r3, r3, 0x68
/* 81502B24 | 4B FF E9 F9 */	bl Init__Q44nw4r3snd6detail8LfoParamFv
/* 81502B28 | 3B E0 00 00 */	li r31, 0x0
/* 81502B2C | 7F C3 F3 78 */	mr r3, r30
/* 81502B30 | 93 FE 00 B4 */	stw r31, 0xb4(r30)
/* 81502B34 | 48 00 26 CD */	bl InitParam__Q44nw4r3snd6detail8SeqTrackFv
/* 81502B38 | 3C 80 81 67 */	lis r4, __vt__Q44nw4r3snd6detail11MmlSeqTrack@ha
/* 81502B3C | 38 00 00 01 */	li r0, 0x1
/* 81502B40 | 38 84 F7 30 */	addi r4, r4, __vt__Q44nw4r3snd6detail11MmlSeqTrack@l
/* 81502B44 | 98 1E 00 C1 */	stb r0, 0xc1(r30)
/* 81502B48 | 7F C3 F3 78 */	mr r3, r30
/* 81502B4C | 90 9E 00 00 */	stw r4, 0x0(r30)
/* 81502B50 | 9B FE 00 C2 */	stb r31, 0xc2(r30)
/* 81502B54 | 98 1E 00 C0 */	stb r0, 0xc0(r30)
/* 81502B58 | 9B FE 00 C6 */	stb r31, 0xc6(r30)
/* 81502B5C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81502B60 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81502B64 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81502B68 | 7C 08 03 A6 */	mtlr r0
/* 81502B6C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81502B70 | 4E 80 00 20 */	blr
.endfn __ct__Q44nw4r3snd6detail11MmlSeqTrackFv

# .text:0x78 | 0x81502B74 | size: 0x14
# nw4r::snd::detail::MmlSeqTrack::Parse(bool)
.fn Parse__Q44nw4r3snd6detail11MmlSeqTrackFb, global
/* 81502B74 | 7C 60 1B 78 */	mr r0, r3
/* 81502B78 | 80 63 00 BC */	lwz r3, 0xbc(r3)
/* 81502B7C | 7C 85 23 78 */	mr r5, r4
/* 81502B80 | 7C 04 03 78 */	mr r4, r0
/* 81502B84 | 4B FF F0 B0 */	b Parse__Q44nw4r3snd6detail9MmlParserCFPQ44nw4r3snd6detail11MmlSeqTrackb
.endfn Parse__Q44nw4r3snd6detail11MmlSeqTrackFb

# .text:0x8C | 0x81502B88 | size: 0x40
# nw4r::snd::detail::MmlSeqTrack::~MmlSeqTrack()
.fn __dt__Q44nw4r3snd6detail11MmlSeqTrackFv, global
/* 81502B88 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81502B8C | 7C 08 02 A6 */	mflr r0
/* 81502B90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81502B94 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81502B98 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81502B9C | 7C 7F 1B 78 */	mr r31, r3
/* 81502BA0 | 41 82 00 10 */	beq .L_81502BB0
/* 81502BA4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81502BA8 | 40 81 00 08 */	ble .L_81502BB0
/* 81502BAC | 48 0F 55 39 */	bl __dl__FPv
.L_81502BB0:
/* 81502BB0 | 7F E3 FB 78 */	mr r3, r31
/* 81502BB4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81502BB8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81502BBC | 7C 08 03 A6 */	mtlr r0
/* 81502BC0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81502BC4 | 4E 80 00 20 */	blr
.endfn __dt__Q44nw4r3snd6detail11MmlSeqTrackFv

# 0x8166F730..0x8166F740 | size: 0x10
.data
.balign 8

# .data:0x0 | 0x8166F730 | size: 0x10
# nw4r::snd::detail::MmlSeqTrack::__vtable
.obj __vt__Q44nw4r3snd6detail11MmlSeqTrack, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q44nw4r3snd6detail11MmlSeqTrackFv
	.4byte Parse__Q44nw4r3snd6detail11MmlSeqTrackFb
.endobj __vt__Q44nw4r3snd6detail11MmlSeqTrack
