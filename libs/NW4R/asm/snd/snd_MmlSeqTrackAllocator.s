.include "macros.inc"
.file "snd_MmlSeqTrackAllocator.cpp"

# 0x81502BC8..0x81502CEC | size: 0x124
.text
.balign 4

# .text:0x0 | 0x81502BC8 | size: 0x68
# nw4r::snd::detail::MmlSeqTrackAllocator::AllocTrack(nw4r::snd::detail::SeqPlayer*)
.fn AllocTrack__Q44nw4r3snd6detail20MmlSeqTrackAllocatorFPQ44nw4r3snd6detail9SeqPlayer, global
/* 81502BC8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81502BCC | 7C 08 02 A6 */	mflr r0
/* 81502BD0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81502BD4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81502BD8 | 7C 9F 23 78 */	mr r31, r4
/* 81502BDC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81502BE0 | 7C 7E 1B 78 */	mr r30, r3
/* 81502BE4 | 38 63 00 08 */	addi r3, r3, 0x8
/* 81502BE8 | 4B FF E8 91 */	bl AllocImpl__Q44nw4r3snd6detail8PoolImplFv
/* 81502BEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81502BF0 | 40 82 00 0C */	bne .L_81502BFC
/* 81502BF4 | 38 60 00 00 */	li r3, 0x0
/* 81502BF8 | 48 00 00 0C */	b .L_81502C04
.L_81502BFC:
/* 81502BFC | 41 82 00 08 */	beq .L_81502C04
/* 81502C00 | 4B FF FE FD */	bl __ct__Q44nw4r3snd6detail11MmlSeqTrackFv
.L_81502C04:
/* 81502C04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81502C08 | 41 82 00 10 */	beq .L_81502C18
/* 81502C0C | 93 E3 00 B4 */	stw r31, 0xb4(r3)
/* 81502C10 | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 81502C14 | 90 03 00 BC */	stw r0, 0xbc(r3)
.L_81502C18:
/* 81502C18 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81502C1C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81502C20 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81502C24 | 7C 08 03 A6 */	mtlr r0
/* 81502C28 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81502C2C | 4E 80 00 20 */	blr
.endfn AllocTrack__Q44nw4r3snd6detail20MmlSeqTrackAllocatorFPQ44nw4r3snd6detail9SeqPlayer

# .text:0x68 | 0x81502C30 | size: 0x68
# nw4r::snd::detail::MmlSeqTrackAllocator::FreeTrack(nw4r::snd::detail::SeqTrack*)
.fn FreeTrack__Q44nw4r3snd6detail20MmlSeqTrackAllocatorFPQ44nw4r3snd6detail8SeqTrack, global
/* 81502C30 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81502C34 | 7C 08 02 A6 */	mflr r0
/* 81502C38 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81502C3C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81502C40 | 38 00 00 00 */	li r0, 0x0
/* 81502C44 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81502C48 | 7C 9F 23 78 */	mr r31, r4
/* 81502C4C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81502C50 | 7C 7E 1B 78 */	mr r30, r3
/* 81502C54 | 90 04 00 B4 */	stw r0, 0xb4(r4)
/* 81502C58 | 41 82 00 28 */	beq .L_81502C80
/* 81502C5C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81502C60 | 7F E3 FB 78 */	mr r3, r31
/* 81502C64 | 38 80 FF FF */	li r4, -0x1
/* 81502C68 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 81502C6C | 7D 89 03 A6 */	mtctr r12
/* 81502C70 | 4E 80 04 21 */	bctrl
/* 81502C74 | 7F E4 FB 78 */	mr r4, r31
/* 81502C78 | 38 7E 00 08 */	addi r3, r30, 0x8
/* 81502C7C | 4B FF E8 59 */	bl FreeImpl__Q44nw4r3snd6detail8PoolImplFPv
.L_81502C80:
/* 81502C80 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81502C84 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81502C88 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81502C8C | 7C 08 03 A6 */	mtlr r0
/* 81502C90 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81502C94 | 4E 80 00 20 */	blr
.endfn FreeTrack__Q44nw4r3snd6detail20MmlSeqTrackAllocatorFPQ44nw4r3snd6detail8SeqTrack

# .text:0xD0 | 0x81502C98 | size: 0xC
# nw4r::snd::detail::MmlSeqTrackAllocator::Create(void*, unsigned long)
.fn Create__Q44nw4r3snd6detail20MmlSeqTrackAllocatorFPvUl, global
/* 81502C98 | 38 C0 00 D4 */	li r6, 0xd4
/* 81502C9C | 38 63 00 08 */	addi r3, r3, 0x8
/* 81502CA0 | 4B FF E6 14 */	b CreateImpl__Q44nw4r3snd6detail8PoolImplFPvUlUl
.endfn Create__Q44nw4r3snd6detail20MmlSeqTrackAllocatorFPvUl

# .text:0xDC | 0x81502CA4 | size: 0x8
# nw4r::snd::detail::MmlSeqTrackAllocator::Destroy(void*, unsigned long)
.fn Destroy__Q44nw4r3snd6detail20MmlSeqTrackAllocatorFPvUl, global
/* 81502CA4 | 38 63 00 08 */	addi r3, r3, 0x8
/* 81502CA8 | 4B FF E7 50 */	b DestroyImpl__Q44nw4r3snd6detail8PoolImplFPvUl
.endfn Destroy__Q44nw4r3snd6detail20MmlSeqTrackAllocatorFPvUl

# .text:0xE4 | 0x81502CAC | size: 0x40
# nw4r::snd::detail::MmlSeqTrackAllocator::~MmlSeqTrackAllocator()
.fn __dt__Q44nw4r3snd6detail20MmlSeqTrackAllocatorFv, global
/* 81502CAC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81502CB0 | 7C 08 02 A6 */	mflr r0
/* 81502CB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81502CB8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81502CBC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81502CC0 | 7C 7F 1B 78 */	mr r31, r3
/* 81502CC4 | 41 82 00 10 */	beq .L_81502CD4
/* 81502CC8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81502CCC | 40 81 00 08 */	ble .L_81502CD4
/* 81502CD0 | 48 0F 54 15 */	bl __dl__FPv
.L_81502CD4:
/* 81502CD4 | 7F E3 FB 78 */	mr r3, r31
/* 81502CD8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81502CDC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81502CE0 | 7C 08 03 A6 */	mtlr r0
/* 81502CE4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81502CE8 | 4E 80 00 20 */	blr
.endfn __dt__Q44nw4r3snd6detail20MmlSeqTrackAllocatorFv

# 0x8166F740..0x8166F758 | size: 0x18
.data
.balign 8

# .data:0x0 | 0x8166F740 | size: 0x18
# nw4r::snd::detail::MmlSeqTrackAllocator::__vtable
.obj __vt__Q44nw4r3snd6detail20MmlSeqTrackAllocator, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q44nw4r3snd6detail20MmlSeqTrackAllocatorFv
	.4byte AllocTrack__Q44nw4r3snd6detail20MmlSeqTrackAllocatorFPQ44nw4r3snd6detail9SeqPlayer
	.4byte FreeTrack__Q44nw4r3snd6detail20MmlSeqTrackAllocatorFPQ44nw4r3snd6detail8SeqTrack
	.4byte 0x00000000
.endobj __vt__Q44nw4r3snd6detail20MmlSeqTrackAllocator
