.include "macros.inc"
.file "iplThumbnail.cpp"

# 0x813AA23C..0x813AA4CC | size: 0x290
.text
.balign 4

# .text:0x0 | 0x813AA23C | size: 0xFC
# ipl::scene::Thumbnail::create(unsigned char*)
.fn create__Q33ipl5scene9ThumbnailFPUc, global
/* 813AA23C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813AA240 | 7C 08 02 A6 */	mflr r0
/* 813AA244 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813AA248 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813AA24C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813AA250 | 3F E0 81 65 */	lis r31, lbl_8164D950@ha
/* 813AA254 | 3B FF D9 50 */	addi r31, r31, lbl_8164D950@l
/* 813AA258 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813AA25C | 7C 7E 1B 78 */	mr r30, r3
/* 813AA260 | 41 82 00 14 */	beq .L_813AA274
/* 813AA264 | 3C A0 00 02 */	lis r5, 0x2
/* 813AA268 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813AA26C | 38 A5 90 00 */	subi r5, r5, 0x7000
/* 813AA270 | 4B F8 5F C1 */	bl memcpy
.L_813AA274:
/* 813AA274 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813AA278 | 3C 80 00 02 */	lis r4, 0x2
/* 813AA27C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813AA280 | 80 BE 00 08 */	lwz r5, 0x8(r30)
/* 813AA284 | 80 63 00 28 */	lwz r3, 0x28(r3)
/* 813AA288 | 38 84 90 00 */	subi r4, r4, 0x7000
/* 813AA28C | 38 FF 00 00 */	addi r7, r31, 0x0
/* 813AA290 | 38 CD 88 68 */	li r6, lbl_816968A8@sda21
/* 813AA294 | 4B FC 0B FD */	bl create__Q33ipl6layout6ObjectFPQ23EGG4HeapUlPvPCcPCc
/* 813AA298 | 90 7E 00 00 */	stw r3, 0x0(r30)
/* 813AA29C | 48 00 82 25 */	bl setLangPane__Q33ipl5scene10ChannelObjFPCQ33ipl6layout6Object
/* 813AA2A0 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 813AA2A4 | 38 9F 00 0B */	addi r4, r31, 0xb
/* 813AA2A8 | 4B FC 04 1D */	bl searchFile__Q33ipl6layout6ObjectFPCc
/* 813AA2AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AA2B0 | 41 82 00 2C */	beq .L_813AA2DC
/* 813AA2B4 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 813AA2B8 | 38 9F 00 0B */	addi r4, r31, 0xb
/* 813AA2BC | 38 A0 00 01 */	li r5, 0x1
/* 813AA2C0 | 4B FC 00 AD */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813AA2C4 | 90 7E 00 04 */	stw r3, 0x4(r30)
/* 813AA2C8 | 7C 7F 1B 78 */	mr r31, r3
/* 813AA2CC | 4B FB 85 A5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813AA2D0 | 38 00 00 01 */	li r0, 0x1
/* 813AA2D4 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 813AA2D8 | 48 00 00 48 */	b .L_813AA320
.L_813AA2DC:
/* 813AA2DC | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 813AA2E0 | 38 9F 00 16 */	addi r4, r31, 0x16
/* 813AA2E4 | 4B FC 03 E1 */	bl searchFile__Q33ipl6layout6ObjectFPCc
/* 813AA2E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AA2EC | 41 82 00 2C */	beq .L_813AA318
/* 813AA2F0 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 813AA2F4 | 38 9F 00 16 */	addi r4, r31, 0x16
/* 813AA2F8 | 38 A0 00 01 */	li r5, 0x1
/* 813AA2FC | 4B FC 00 71 */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813AA300 | 90 7E 00 04 */	stw r3, 0x4(r30)
/* 813AA304 | 7C 7F 1B 78 */	mr r31, r3
/* 813AA308 | 4B FB 85 69 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813AA30C | 38 00 00 01 */	li r0, 0x1
/* 813AA310 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 813AA314 | 48 00 00 0C */	b .L_813AA320
.L_813AA318:
/* 813AA318 | 38 00 00 00 */	li r0, 0x0
/* 813AA31C | 90 1E 00 04 */	stw r0, 0x4(r30)
.L_813AA320:
/* 813AA320 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813AA324 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813AA328 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813AA32C | 7C 08 03 A6 */	mtlr r0
/* 813AA330 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813AA334 | 4E 80 00 20 */	blr
.endfn create__Q33ipl5scene9ThumbnailFPUc

# .text:0xFC | 0x813AA338 | size: 0x14
# ipl::scene::Thumbnail::calc()
.fn calc__Q33ipl5scene9ThumbnailFv, global
/* 813AA338 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813AA33C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AA340 | 4D 82 00 20 */	beqlr
/* 813AA344 | 4B FC 03 C0 */	b calc__Q33ipl6layout6ObjectFv
/* 813AA348 | 4E 80 00 20 */	blr
.endfn calc__Q33ipl5scene9ThumbnailFv

# .text:0x110 | 0x813AA34C | size: 0x14
# ipl::scene::Thumbnail::draw()
.fn draw__Q33ipl5scene9ThumbnailFv, global
/* 813AA34C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813AA350 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813AA354 | 4D 82 00 20 */	beqlr
/* 813AA358 | 4B FC 04 44 */	b draw__Q33ipl6layout6ObjectFv
/* 813AA35C | 4E 80 00 20 */	blr
.endfn draw__Q33ipl5scene9ThumbnailFv

# .text:0x124 | 0x813AA360 | size: 0x90
# ipl::scene::Thumbnail::init()
.fn init__Q33ipl5scene9ThumbnailFv, global
/* 813AA360 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813AA364 | 7C 08 02 A6 */	mflr r0
/* 813AA368 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813AA36C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813AA370 | 3B E0 00 00 */	li r31, 0x0
/* 813AA374 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813AA378 | 7C 7E 1B 78 */	mr r30, r3
/* 813AA37C | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 813AA380 | 93 E3 06 14 */	stw r31, 0x614(r3)
/* 813AA384 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AA388 | 93 E3 06 10 */	stw r31, 0x610(r3)
/* 813AA38C | 93 E3 06 18 */	stw r31, 0x618(r3)
/* 813AA390 | 93 E3 06 1C */	stw r31, 0x61c(r3)
/* 813AA394 | 41 82 00 10 */	beq .L_813AA3A4
/* 813AA398 | 7C 03 03 78 */	mr r3, r0
/* 813AA39C | 4B FC 0A 65 */	bl destroyHeap__Q33ipl6layout6ObjectFv
/* 813AA3A0 | 93 FE 00 00 */	stw r31, 0x0(r30)
.L_813AA3A4:
/* 813AA3A4 | 3B E0 00 00 */	li r31, 0x0
/* 813AA3A8 | 3C 60 00 02 */	lis r3, 0x2
/* 813AA3AC | 38 A3 90 00 */	subi r5, r3, 0x7000
/* 813AA3B0 | 93 FE 00 04 */	stw r31, 0x4(r30)
/* 813AA3B4 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813AA3B8 | 38 80 00 00 */	li r4, 0x0
/* 813AA3BC | 4B F8 5F 79 */	bl memset
/* 813AA3C0 | 38 7E 00 0C */	addi r3, r30, 0xc
/* 813AA3C4 | 38 80 00 00 */	li r4, 0x0
/* 813AA3C8 | 38 A0 06 00 */	li r5, 0x600
/* 813AA3CC | 4B F8 5F 69 */	bl memset
/* 813AA3D0 | 9B FE 06 20 */	stb r31, 0x620(r30)
/* 813AA3D4 | 9B FE 06 21 */	stb r31, 0x621(r30)
/* 813AA3D8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813AA3DC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813AA3E0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813AA3E4 | 7C 08 03 A6 */	mtlr r0
/* 813AA3E8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813AA3EC | 4E 80 00 20 */	blr
.endfn init__Q33ipl5scene9ThumbnailFv

# .text:0x1B4 | 0x813AA3F0 | size: 0xDC
# ipl::scene::Thumbnail::getTitle(int)
.fn getTitle__Q33ipl5scene9ThumbnailFi, global
/* 813AA3F0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813AA3F4 | 7C 08 02 A6 */	mflr r0
/* 813AA3F8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813AA3FC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813AA400 | 1F E4 00 2A */	mulli r31, r4, 0x2a
/* 813AA404 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813AA408 | 7C 7E 1B 78 */	mr r30, r3
/* 813AA40C | 4B F8 B5 E1 */	bl getLanguage__Q23ipl6SystemFv
/* 813AA410 | 1C 03 00 54 */	mulli r0, r3, 0x54
/* 813AA414 | 7C 1E 02 14 */	add r0, r30, r0
/* 813AA418 | 7C 60 FA 14 */	add r3, r0, r31
/* 813AA41C | A0 03 00 68 */	lhz r0, 0x68(r3)
/* 813AA420 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AA424 | 41 82 00 1C */	beq .L_813AA440
/* 813AA428 | 4B F8 B5 C5 */	bl getLanguage__Q23ipl6SystemFv
/* 813AA42C | 1C 03 00 54 */	mulli r0, r3, 0x54
/* 813AA430 | 7C 1E 02 14 */	add r0, r30, r0
/* 813AA434 | 7C 60 FA 14 */	add r3, r0, r31
/* 813AA438 | 38 63 00 68 */	addi r3, r3, 0x68
/* 813AA43C | 48 00 00 78 */	b .L_813AA4B4
.L_813AA440:
/* 813AA440 | 4B F8 B6 4D */	bl getRegion__Q23ipl6SystemFv
/* 813AA444 | 3C 80 81 61 */	lis r4, lbl_8160FCA8@ha
/* 813AA448 | 54 63 30 32 */	slwi r3, r3, 6
/* 813AA44C | 38 84 FC A8 */	addi r4, r4, lbl_8160FCA8@l
/* 813AA450 | 38 00 00 10 */	li r0, 0x10
/* 813AA454 | 7D 04 1A 14 */	add r8, r4, r3
/* 813AA458 | 7C DE FA 14 */	add r6, r30, r31
/* 813AA45C | 38 60 00 00 */	li r3, 0x0
/* 813AA460 | 7C 09 03 A6 */	mtctr r0
.L_813AA464:
/* 813AA464 | 7C E8 18 2E */	lwzx r7, r8, r3
/* 813AA468 | 1C A7 00 54 */	mulli r5, r7, 0x54
/* 813AA46C | 7C 86 2A 14 */	add r4, r6, r5
/* 813AA470 | A0 04 00 68 */	lhz r0, 0x68(r4)
/* 813AA474 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AA478 | 41 82 00 14 */	beq .L_813AA48C
/* 813AA47C | 7C 1E 2A 14 */	add r0, r30, r5
/* 813AA480 | 7C 60 FA 14 */	add r3, r0, r31
/* 813AA484 | 38 63 00 68 */	addi r3, r3, 0x68
/* 813AA488 | 48 00 00 2C */	b .L_813AA4B4
.L_813AA48C:
/* 813AA48C | 3C 07 00 01 */	addis r0, r7, 0x1
/* 813AA490 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 813AA494 | 41 82 00 0C */	beq .L_813AA4A0
/* 813AA498 | 38 63 00 04 */	addi r3, r3, 0x4
/* 813AA49C | 42 00 FF C8 */	bdnz .L_813AA464
.L_813AA4A0:
/* 813AA4A0 | 80 08 00 00 */	lwz r0, 0x0(r8)
/* 813AA4A4 | 1C 00 00 54 */	mulli r0, r0, 0x54
/* 813AA4A8 | 7C 1E 02 14 */	add r0, r30, r0
/* 813AA4AC | 7C 60 FA 14 */	add r3, r0, r31
/* 813AA4B0 | 38 63 00 68 */	addi r3, r3, 0x68
.L_813AA4B4:
/* 813AA4B4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813AA4B8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813AA4BC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813AA4C0 | 7C 08 03 A6 */	mtlr r0
/* 813AA4C4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813AA4C8 | 4E 80 00 20 */	blr
.endfn getTitle__Q33ipl5scene9ThumbnailFi

# 0x8160FCA8..0x8160FFA8 | size: 0x300
.rodata
.balign 8

# .rodata:0x0 | 0x8160FCA8 | size: 0x300
.obj lbl_8160FCA8, global
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000009
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_8160FCA8

# 0x8164D950..0x8164D978 | size: 0x28
.data
.balign 8

# .data:0x0 | 0x8164D950 | size: 0x28
.obj lbl_8164D950, global
	.4byte 0x69636F6E
	.4byte 0x2E62726C
	.4byte 0x79740069
	.4byte 0x636F6E2E
	.4byte 0x62726C61
	.4byte 0x6E006963
	.4byte 0x6F6E5F57
	.4byte 0x686F6C65
	.4byte 0x2E62726C
	.4byte 0x616E0000
.endobj lbl_8164D950

# 0x816968A8..0x816968B0 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x816968A8 | size: 0x8
.obj lbl_816968A8, global
	.4byte 0x61726300
	.4byte 0x00000000
.endobj lbl_816968A8
