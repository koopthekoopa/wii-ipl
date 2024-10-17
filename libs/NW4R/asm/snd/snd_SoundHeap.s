.include "macros.inc"
.file "snd_SoundHeap.cpp"

# 0x8150A8C8..0x8150AAC0 | size: 0x1F8
.text
.balign 4

# .text:0x0 | 0x8150A8C8 | size: 0x48
# nw4r::snd::SoundHeap::SoundHeap()
.fn __ct__Q34nw4r3snd9SoundHeapFv, global
/* 8150A8C8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150A8CC | 7C 08 02 A6 */	mflr r0
/* 8150A8D0 | 3C 80 81 67 */	lis r4, __vt__Q34nw4r3snd9SoundHeap@ha
/* 8150A8D4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150A8D8 | 38 84 F9 E8 */	addi r4, r4, __vt__Q34nw4r3snd9SoundHeap@l
/* 8150A8DC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150A8E0 | 7C 7F 1B 78 */	mr r31, r3
/* 8150A8E4 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8150A8E8 | 38 63 00 1C */	addi r3, r3, 0x1c
/* 8150A8EC | 4B FF 4B B1 */	bl __ct__Q44nw4r3snd6detail9FrameHeapFv
/* 8150A8F0 | 38 7F 00 04 */	addi r3, r31, 0x4
/* 8150A8F4 | 48 02 72 DD */	bl fn_81531BD0
/* 8150A8F8 | 7F E3 FB 78 */	mr r3, r31
/* 8150A8FC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8150A900 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150A904 | 7C 08 03 A6 */	mtlr r0
/* 8150A908 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150A90C | 4E 80 00 20 */	blr
.endfn __ct__Q34nw4r3snd9SoundHeapFv

# .text:0x48 | 0x8150A910 | size: 0x70
# nw4r::snd::SoundHeap::~SoundHeap()
.fn __dt__Q34nw4r3snd9SoundHeapFv, global
/* 8150A910 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150A914 | 7C 08 02 A6 */	mflr r0
/* 8150A918 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150A91C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150A920 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150A924 | 7C 9F 23 78 */	mr r31, r4
/* 8150A928 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8150A92C | 7C 7E 1B 78 */	mr r30, r3
/* 8150A930 | 41 82 00 34 */	beq .L_8150A964
/* 8150A934 | 3C 80 81 67 */	lis r4, __vt__Q34nw4r3snd9SoundHeap@ha
/* 8150A938 | 38 84 F9 E8 */	addi r4, r4, __vt__Q34nw4r3snd9SoundHeap@l
/* 8150A93C | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8150A940 | 38 63 00 1C */	addi r3, r3, 0x1c
/* 8150A944 | 4B FF 4E 2D */	bl Destroy__Q44nw4r3snd6detail9FrameHeapFv
/* 8150A948 | 38 7E 00 1C */	addi r3, r30, 0x1c
/* 8150A94C | 38 80 FF FF */	li r4, -0x1
/* 8150A950 | 4B FF 4B 71 */	bl __dt__Q44nw4r3snd6detail9FrameHeapFv
/* 8150A954 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8150A958 | 40 81 00 0C */	ble .L_8150A964
/* 8150A95C | 7F C3 F3 78 */	mr r3, r30
/* 8150A960 | 48 0E D7 85 */	bl __dl__FPv
.L_8150A964:
/* 8150A964 | 7F C3 F3 78 */	mr r3, r30
/* 8150A968 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8150A96C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8150A970 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150A974 | 7C 08 03 A6 */	mtlr r0
/* 8150A978 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150A97C | 4E 80 00 20 */	blr
.endfn __dt__Q34nw4r3snd9SoundHeapFv

# .text:0xB8 | 0x8150A980 | size: 0x8
# nw4r::snd::SoundHeap::Create(void*, unsigned long)
.fn Create__Q34nw4r3snd9SoundHeapFPvUl, global
/* 8150A980 | 38 63 00 1C */	addi r3, r3, 0x1c
/* 8150A984 | 4B FF 4C 50 */	b Create__Q44nw4r3snd6detail9FrameHeapFPvUl
.endfn Create__Q34nw4r3snd9SoundHeapFPvUl

# .text:0xC0 | 0x8150A988 | size: 0x8
# nw4r::snd::SoundHeap::Destroy()
.fn Destroy__Q34nw4r3snd9SoundHeapFv, global
/* 8150A988 | 38 63 00 1C */	addi r3, r3, 0x1c
/* 8150A98C | 4B FF 4D E4 */	b Destroy__Q44nw4r3snd6detail9FrameHeapFv
.endfn Destroy__Q34nw4r3snd9SoundHeapFv

# .text:0xC8 | 0x8150A990 | size: 0x70
# nw4r::snd::SoundHeap::Alloc(unsigned long)
.fn Alloc__Q34nw4r3snd9SoundHeapFUl, global
/* 8150A990 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150A994 | 7C 08 02 A6 */	mflr r0
/* 8150A998 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8150A99C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8150A9A0 | 3B E3 00 04 */	addi r31, r3, 0x4
/* 8150A9A4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8150A9A8 | 7C 9E 23 78 */	mr r30, r4
/* 8150A9AC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8150A9B0 | 7C 7D 1B 78 */	mr r29, r3
/* 8150A9B4 | 7F E3 FB 78 */	mr r3, r31
/* 8150A9B8 | 48 02 72 51 */	bl fn_81531C08
/* 8150A9BC | 3C A0 81 51 */	lis r5, DisposeCallbackFunc__Q34nw4r3snd9SoundHeapFPvUlPv@ha
/* 8150A9C0 | 7F C4 F3 78 */	mr r4, r30
/* 8150A9C4 | 38 7D 00 1C */	addi r3, r29, 0x1c
/* 8150A9C8 | 38 C0 00 00 */	li r6, 0x0
/* 8150A9CC | 38 A5 AA 6C */	addi r5, r5, DisposeCallbackFunc__Q34nw4r3snd9SoundHeapFPvUlPv@l
/* 8150A9D0 | 4B FF 4F BD */	bl Alloc__Q44nw4r3snd6detail9FrameHeapFUlPFPvUlPv_vPv
/* 8150A9D4 | 7C 7E 1B 78 */	mr r30, r3
/* 8150A9D8 | 7F E3 FB 78 */	mr r3, r31
/* 8150A9DC | 48 02 73 09 */	bl fn_81531CE4
/* 8150A9E0 | 7F C3 F3 78 */	mr r3, r30
/* 8150A9E4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8150A9E8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8150A9EC | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8150A9F0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150A9F4 | 7C 08 03 A6 */	mtlr r0
/* 8150A9F8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150A9FC | 4E 80 00 20 */	blr
.endfn Alloc__Q34nw4r3snd9SoundHeapFUl

# .text:0x138 | 0x8150AA00 | size: 0x6C
# nw4r::snd::SoundHeap::Alloc(unsigned long, void (*)(void*, unsigned long, void*), void*)
.fn Alloc__Q34nw4r3snd9SoundHeapFUlPFPvUlPv_vPv, global
/* 8150AA00 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150AA04 | 7C 08 02 A6 */	mflr r0
/* 8150AA08 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8150AA0C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8150AA10 | 48 0E EA B1 */	bl _savegpr_27
/* 8150AA14 | 3B E3 00 04 */	addi r31, r3, 0x4
/* 8150AA18 | 7C 7B 1B 78 */	mr r27, r3
/* 8150AA1C | 7C 9C 23 78 */	mr r28, r4
/* 8150AA20 | 7C BD 2B 78 */	mr r29, r5
/* 8150AA24 | 7C DE 33 78 */	mr r30, r6
/* 8150AA28 | 7F E3 FB 78 */	mr r3, r31
/* 8150AA2C | 48 02 71 DD */	bl fn_81531C08
/* 8150AA30 | 7F 84 E3 78 */	mr r4, r28
/* 8150AA34 | 7F A5 EB 78 */	mr r5, r29
/* 8150AA38 | 7F C6 F3 78 */	mr r6, r30
/* 8150AA3C | 38 7B 00 1C */	addi r3, r27, 0x1c
/* 8150AA40 | 4B FF 4F 4D */	bl Alloc__Q44nw4r3snd6detail9FrameHeapFUlPFPvUlPv_vPv
/* 8150AA44 | 7C 7E 1B 78 */	mr r30, r3
/* 8150AA48 | 7F E3 FB 78 */	mr r3, r31
/* 8150AA4C | 48 02 72 99 */	bl fn_81531CE4
/* 8150AA50 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8150AA54 | 7F C3 F3 78 */	mr r3, r30
/* 8150AA58 | 48 0E EA B5 */	bl _restgpr_27
/* 8150AA5C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150AA60 | 7C 08 03 A6 */	mtlr r0
/* 8150AA64 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150AA68 | 4E 80 00 20 */	blr
.endfn Alloc__Q34nw4r3snd9SoundHeapFUlPFPvUlPv_vPv

# .text:0x1A4 | 0x8150AA6C | size: 0x54
# nw4r::snd::SoundHeap::DisposeCallbackFunc(void*, unsigned long, void*)
.fn DisposeCallbackFunc__Q34nw4r3snd9SoundHeapFPvUlPv, global
/* 8150AA6C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150AA70 | 7C 08 02 A6 */	mflr r0
/* 8150AA74 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8150AA78 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8150AA7C | 7C BF 2B 78 */	mr r31, r5
/* 8150AA80 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8150AA84 | 7C 9E 23 78 */	mr r30, r4
/* 8150AA88 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8150AA8C | 7C 7D 1B 78 */	mr r29, r3
/* 8150AA90 | 4B FF 3C F5 */	bl Dispose__Q44nw4r3snd6detail22DisposeCallbackManagerFPvUlPv
/* 8150AA94 | 7F A3 EB 78 */	mr r3, r29
/* 8150AA98 | 7F C4 F3 78 */	mr r4, r30
/* 8150AA9C | 7F E5 FB 78 */	mr r5, r31
/* 8150AAA0 | 4B FF 3E 19 */	bl DisposeWave__Q44nw4r3snd6detail22DisposeCallbackManagerFPvUlPv
/* 8150AAA4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150AAA8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8150AAAC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8150AAB0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8150AAB4 | 7C 08 03 A6 */	mtlr r0
/* 8150AAB8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150AABC | 4E 80 00 20 */	blr
.endfn DisposeCallbackFunc__Q34nw4r3snd9SoundHeapFPvUlPv

# 0x8166F9E8..0x8166F9F8 | size: 0x10
.data
.balign 8

# .data:0x0 | 0x8166F9E8 | size: 0x10
# nw4r::snd::SoundHeap::__vtable
.obj __vt__Q34nw4r3snd9SoundHeap, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q34nw4r3snd9SoundHeapFv
	.4byte Alloc__Q34nw4r3snd9SoundHeapFUl
.endobj __vt__Q34nw4r3snd9SoundHeap
