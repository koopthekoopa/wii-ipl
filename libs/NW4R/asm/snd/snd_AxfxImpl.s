.include "macros.inc"
.file "snd_AxfxImpl.cpp"

# 0x814FBE00..0x814FBEF4 | size: 0xF4
.text
.balign 4

# .text:0x0 | 0x814FBE00 | size: 0x48
# nw4r::snd::detail::AxfxImpl::CreateHeap(void*, unsigned long)
.fn CreateHeap__Q44nw4r3snd6detail8AxfxImplFPvUl, global
/* 814FBE00 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814FBE04 | 7C 08 02 A6 */	mflr r0
/* 814FBE08 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814FBE0C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814FBE10 | 7C 7F 1B 78 */	mr r31, r3
/* 814FBE14 | 7C 83 23 78 */	mr r3, r4
/* 814FBE18 | 7C A4 2B 78 */	mr r4, r5
/* 814FBE1C | 38 A0 00 00 */	li r5, 0x0
/* 814FBE20 | 48 05 EF 79 */	bl fn_8155AD98
/* 814FBE24 | 7C 03 00 D0 */	neg r0, r3
/* 814FBE28 | 90 7F 00 04 */	stw r3, 0x4(r31)
/* 814FBE2C | 7C 00 1B 78 */	or r0, r0, r3
/* 814FBE30 | 54 03 0F FE */	srwi r3, r0, 31
/* 814FBE34 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814FBE38 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814FBE3C | 7C 08 03 A6 */	mtlr r0
/* 814FBE40 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814FBE44 | 4E 80 00 20 */	blr
.endfn CreateHeap__Q44nw4r3snd6detail8AxfxImplFPvUl

# .text:0x48 | 0x814FBE48 | size: 0x14
# nw4r::snd::detail::AxfxImpl::DestroyHeap()
.fn DestroyHeap__Q44nw4r3snd6detail8AxfxImplFv, global
/* 814FBE48 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 814FBE4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FBE50 | 4D 82 00 20 */	beqlr
/* 814FBE54 | 48 05 EF C8 */	b fn_8155AE1C
/* 814FBE58 | 4E 80 00 20 */	blr
.endfn DestroyHeap__Q44nw4r3snd6detail8AxfxImplFv

# .text:0x5C | 0x814FBE5C | size: 0x60
# nw4r::snd::detail::AxfxImpl::Alloc(unsigned long)
.fn Alloc__Q44nw4r3snd6detail8AxfxImplFUl, global
/* 814FBE5C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814FBE60 | 7C 08 02 A6 */	mflr r0
/* 814FBE64 | 38 A0 00 04 */	li r5, 0x4
/* 814FBE68 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814FBE6C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814FBE70 | 7C 7F 1B 78 */	mr r31, r3
/* 814FBE74 | 7F E4 FB 78 */	mr r4, r31
/* 814FBE78 | 80 CD AE 80 */	lwz r6, mCurrentFx__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
/* 814FBE7C | 80 66 00 04 */	lwz r3, 0x4(r6)
/* 814FBE80 | 48 05 EF CD */	bl fn_8155AE4C
/* 814FBE84 | 80 AD AE 80 */	lwz r5, mCurrentFx__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
/* 814FBE88 | 38 1F 00 03 */	addi r0, r31, 0x3
/* 814FBE8C | 54 00 00 3A */	clrrwi r0, r0, 2
/* 814FBE90 | 80 85 00 08 */	lwz r4, 0x8(r5)
/* 814FBE94 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814FBE98 | 90 85 00 08 */	stw r4, 0x8(r5)
/* 814FBE9C | 80 8D AE 84 */	lwz r4, mAllocatedSize__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
/* 814FBEA0 | 7C 04 02 14 */	add r0, r4, r0
/* 814FBEA4 | 90 0D AE 84 */	stw r0, mAllocatedSize__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
/* 814FBEA8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814FBEAC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814FBEB0 | 7C 08 03 A6 */	mtlr r0
/* 814FBEB4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814FBEB8 | 4E 80 00 20 */	blr
.endfn Alloc__Q44nw4r3snd6detail8AxfxImplFUl

# .text:0xBC | 0x814FBEBC | size: 0x38
# nw4r::snd::detail::AxfxImpl::Free(void*)
.fn Free__Q44nw4r3snd6detail8AxfxImplFPv, global
/* 814FBEBC | 80 8D AE 80 */	lwz r4, mCurrentFx__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
/* 814FBEC0 | 80 64 00 08 */	lwz r3, 0x8(r4)
/* 814FBEC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FBEC8 | 41 82 00 0C */	beq .L_814FBED4
/* 814FBECC | 38 03 FF FF */	subi r0, r3, 0x1
/* 814FBED0 | 90 04 00 08 */	stw r0, 0x8(r4)
.L_814FBED4:
/* 814FBED4 | 80 6D AE 80 */	lwz r3, mCurrentFx__Q44nw4r3snd6detail8AxfxImpl@sda21(r0)
/* 814FBED8 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814FBEDC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FBEE0 | 4C 82 00 20 */	bnelr
/* 814FBEE4 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 814FBEE8 | 38 80 00 03 */	li r4, 0x3
/* 814FBEEC | 48 05 F0 80 */	b fn_8155AF6C
/* 814FBEF0 | 4E 80 00 20 */	blr
.endfn Free__Q44nw4r3snd6detail8AxfxImplFPv

# 0x81698EC0..0x81698EC8 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698EC0 | size: 0x4
# nw4r::snd::detail::AxfxImpl::mCurrentFx
.obj mCurrentFx__Q44nw4r3snd6detail8AxfxImpl, global
	.skip 0x4
.endobj mCurrentFx__Q44nw4r3snd6detail8AxfxImpl

# .sbss:0x4 | 0x81698EC4 | size: 0x4
# nw4r::snd::detail::AxfxImpl::mAllocatedSize
.obj mAllocatedSize__Q44nw4r3snd6detail8AxfxImpl, global
	.skip 0x4
.endobj mAllocatedSize__Q44nw4r3snd6detail8AxfxImpl
