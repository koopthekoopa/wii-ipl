.include "macros.inc"
.file "iplFaceSelect.cpp"

# 0x813BB0A4..0x813BD5D8 | size: 0x2534
.text
.balign 4

# .text:0x0 | 0x813BB0A4 | size: 0xD8
# ipl::scene::FaceSelect::FaceSelect(EGG::Heap*, int)
.fn __ct__Q33ipl5scene10FaceSelectFPQ23EGG4Heapi, global
/* 813BB0A4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813BB0A8 | 7C 08 02 A6 */	mflr r0
/* 813BB0AC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813BB0B0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813BB0B4 | 7C BF 2B 78 */	mr r31, r5
/* 813BB0B8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813BB0BC | 7C 7E 1B 78 */	mr r30, r3
/* 813BB0C0 | 48 05 01 49 */	bl __ct__Q33ipl5scene14FaderSceneBaseFPQ23EGG4Heap
/* 813BB0C4 | 3C E0 81 65 */	lis r7, __vt__Q33ipl5scene10FaceSelect@ha
/* 813BB0C8 | 38 A0 00 00 */	li r5, 0x0
/* 813BB0CC | 38 E7 F7 B8 */	addi r7, r7, __vt__Q33ipl5scene10FaceSelect@l
/* 813BB0D0 | 38 80 FF FF */	li r4, -0x1
/* 813BB0D4 | 38 C7 00 1C */	addi r6, r7, 0x1c
/* 813BB0D8 | 38 00 00 0C */	li r0, 0xc
/* 813BB0DC | 7C A3 2B 78 */	mr r3, r5
/* 813BB0E0 | 90 FE 00 00 */	stw r7, 0x0(r30)
/* 813BB0E4 | 90 DE 00 14 */	stw r6, 0x14(r30)
/* 813BB0E8 | 90 BE 00 58 */	stw r5, 0x58(r30)
/* 813BB0EC | 90 BE 00 60 */	stw r5, 0x60(r30)
/* 813BB0F0 | 90 BE 00 64 */	stw r5, 0x64(r30)
/* 813BB0F4 | 90 BE 00 68 */	stw r5, 0x68(r30)
/* 813BB0F8 | 90 BE 00 6C */	stw r5, 0x6c(r30)
/* 813BB0FC | 90 BE 00 70 */	stw r5, 0x70(r30)
/* 813BB100 | 90 BE 00 74 */	stw r5, 0x74(r30)
/* 813BB104 | 90 BE 00 78 */	stw r5, 0x78(r30)
/* 813BB108 | 90 9E 02 3C */	stw r4, 0x23c(r30)
/* 813BB10C | 90 BE 02 40 */	stw r5, 0x240(r30)
/* 813BB110 | 98 BE 02 E5 */	stb r5, 0x2e5(r30)
/* 813BB114 | 98 BE 02 E6 */	stb r5, 0x2e6(r30)
/* 813BB118 | 93 FE 02 E8 */	stw r31, 0x2e8(r30)
/* 813BB11C | 7C 09 03 A6 */	mtctr r0
.L_813BB120:
/* 813BB120 | 7C 9E 1A 14 */	add r4, r30, r3
/* 813BB124 | 38 63 00 04 */	addi r3, r3, 0x4
/* 813BB128 | 90 A4 02 0C */	stw r5, 0x20c(r4)
/* 813BB12C | 42 00 FF F4 */	bdnz .L_813BB120
/* 813BB130 | 38 00 00 64 */	li r0, 0x64
/* 813BB134 | 38 60 00 00 */	li r3, 0x0
/* 813BB138 | 38 A0 FF FF */	li r5, -0x1
/* 813BB13C | 7C 09 03 A6 */	mtctr r0
.L_813BB140:
/* 813BB140 | 7C 9E 1A 14 */	add r4, r30, r3
/* 813BB144 | 38 63 00 04 */	addi r3, r3, 0x4
/* 813BB148 | 90 A4 00 7C */	stw r5, 0x7c(r4)
/* 813BB14C | 42 00 FF F4 */	bdnz .L_813BB140
/* 813BB150 | 38 7E 02 44 */	addi r3, r30, 0x244
/* 813BB154 | 38 80 00 00 */	li r4, 0x0
/* 813BB158 | 38 A0 00 A0 */	li r5, 0xa0
/* 813BB15C | 4B F7 51 D9 */	bl memset
/* 813BB160 | 7F C3 F3 78 */	mr r3, r30
/* 813BB164 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813BB168 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813BB16C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813BB170 | 7C 08 03 A6 */	mtlr r0
/* 813BB174 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813BB178 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene10FaceSelectFPQ23EGG4Heapi

# .text:0xD8 | 0x813BB17C | size: 0x70
# ipl::scene::FaceSelect::prepare()
.fn prepare__Q33ipl5scene10FaceSelectFv, global
/* 813BB17C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813BB180 | 7C 08 02 A6 */	mflr r0
/* 813BB184 | 3C A0 81 65 */	lis r5, lbl_8164F36C@ha
/* 813BB188 | 38 C0 00 00 */	li r6, 0x0
/* 813BB18C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813BB190 | 38 A5 F3 6C */	addi r5, r5, lbl_8164F36C@l
/* 813BB194 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813BB198 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813BB19C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813BB1A0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813BB1A4 | 7C 7E 1B 78 */	mr r30, r3
/* 813BB1A8 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813BB1AC | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813BB1B0 | 4B F8 27 05 */	bl readLayoutAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcb
/* 813BB1B4 | 90 7E 00 5C */	stw r3, 0x5c(r30)
/* 813BB1B8 | 3C A0 81 65 */	lis r5, lbl_8164F378@ha
/* 813BB1BC | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813BB1C0 | 38 A5 F3 78 */	addi r5, r5, lbl_8164F378@l
/* 813BB1C4 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813BB1C8 | 38 C0 00 00 */	li r6, 0x0
/* 813BB1CC | 4B F8 26 E9 */	bl readLayoutAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcb
/* 813BB1D0 | 90 7E 03 18 */	stw r3, 0x318(r30)
/* 813BB1D4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813BB1D8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813BB1DC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813BB1E0 | 7C 08 03 A6 */	mtlr r0
/* 813BB1E4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813BB1E8 | 4E 80 00 20 */	blr
.endfn prepare__Q33ipl5scene10FaceSelectFv

# .text:0x148 | 0x813BB1EC | size: 0x758
# ipl::scene::FaceSelect::create()
.fn create__Q33ipl5scene10FaceSelectFv, global
/* 813BB1EC | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 813BB1F0 | 7C 08 02 A6 */	mflr r0
/* 813BB1F4 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 813BB1F8 | DB E1 00 40 */	stfd f31, 0x40(r1)
/* 813BB1FC | F3 E1 00 48 */	psq_st f31, 0x48(r1), 0, qr0
/* 813BB200 | DB C1 00 30 */	stfd f30, 0x30(r1)
/* 813BB204 | F3 C1 00 38 */	psq_st f30, 0x38(r1), 0, qr0
/* 813BB208 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813BB20C | 48 23 E2 B1 */	bl _savegpr_26
/* 813BB210 | 3F E0 81 65 */	lis r31, lbl_8164F0B8@ha
/* 813BB214 | 7C 7E 1B 78 */	mr r30, r3
/* 813BB218 | 3B FF F0 B8 */	addi r31, r31, lbl_8164F0B8@l
/* 813BB21C | 38 60 05 80 */	li r3, 0x580
/* 813BB220 | 48 23 CE 7D */	bl __nw__FUl
/* 813BB224 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BB228 | 41 82 00 18 */	beq .L_813BB240
/* 813BB22C | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813BB230 | 38 FF 02 CC */	addi r7, r31, 0x2cc
/* 813BB234 | 80 BE 00 5C */	lwz r5, 0x5c(r30)
/* 813BB238 | 38 CD 8A CE */	li r6, lbl_81696B0E@sda21
/* 813BB23C | 4B FA ED E9 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813BB240:
/* 813BB240 | 80 1E 02 E8 */	lwz r0, 0x2e8(r30)
/* 813BB244 | 38 9F 02 E4 */	addi r4, r31, 0x2e4
/* 813BB248 | 90 7E 00 58 */	stw r3, 0x58(r30)
/* 813BB24C | 38 AD 8A D2 */	li r5, lbl_81696B12@sda21
/* 813BB250 | 7C 00 00 34 */	cntlzw r0, r0
/* 813BB254 | 38 C0 00 00 */	li r6, 0x0
/* 813BB258 | 54 07 D9 7E */	srwi r7, r0, 5
/* 813BB25C | 4B FA F2 85 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB260 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB264 | 38 9F 03 05 */	addi r4, r31, 0x305
/* 813BB268 | 38 AD 8A D2 */	li r5, lbl_81696B12@sda21
/* 813BB26C | 38 C0 00 00 */	li r6, 0x0
/* 813BB270 | 38 E0 00 00 */	li r7, 0x0
/* 813BB274 | 4B FA F2 6D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB278 | 80 DE 02 E8 */	lwz r6, 0x2e8(r30)
/* 813BB27C | 38 9F 03 27 */	addi r4, r31, 0x327
/* 813BB280 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB284 | 38 AD 8A D2 */	li r5, lbl_81696B12@sda21
/* 813BB288 | 38 06 FF FF */	subi r0, r6, 0x1
/* 813BB28C | 38 C0 00 00 */	li r6, 0x0
/* 813BB290 | 7C 00 00 34 */	cntlzw r0, r0
/* 813BB294 | 54 07 D9 7E */	srwi r7, r0, 5
/* 813BB298 | 4B FA F2 49 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB29C | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB2A0 | 38 9F 03 4A */	addi r4, r31, 0x34a
/* 813BB2A4 | 38 AD 8A D2 */	li r5, lbl_81696B12@sda21
/* 813BB2A8 | 38 C0 00 00 */	li r6, 0x0
/* 813BB2AC | 38 E0 00 00 */	li r7, 0x0
/* 813BB2B0 | 4B FA F2 31 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB2B4 | 80 DE 02 E8 */	lwz r6, 0x2e8(r30)
/* 813BB2B8 | 38 9F 03 6E */	addi r4, r31, 0x36e
/* 813BB2BC | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB2C0 | 38 AD 8A D2 */	li r5, lbl_81696B12@sda21
/* 813BB2C4 | 38 06 FF FE */	subi r0, r6, 0x2
/* 813BB2C8 | 38 C0 00 00 */	li r6, 0x0
/* 813BB2CC | 7C 00 00 34 */	cntlzw r0, r0
/* 813BB2D0 | 54 07 D9 7E */	srwi r7, r0, 5
/* 813BB2D4 | 4B FA F2 0D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB2D8 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB2DC | 38 9F 03 91 */	addi r4, r31, 0x391
/* 813BB2E0 | 38 AD 8A D2 */	li r5, lbl_81696B12@sda21
/* 813BB2E4 | 38 C0 00 00 */	li r6, 0x0
/* 813BB2E8 | 38 E0 00 00 */	li r7, 0x0
/* 813BB2EC | 4B FA F1 F5 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB2F0 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB2F4 | 38 9F 03 B5 */	addi r4, r31, 0x3b5
/* 813BB2F8 | 38 BF 03 DC */	addi r5, r31, 0x3dc
/* 813BB2FC | 38 C0 00 00 */	li r6, 0x0
/* 813BB300 | 38 E0 00 00 */	li r7, 0x0
/* 813BB304 | 4B FA F1 DD */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB308 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB30C | 38 9F 03 B5 */	addi r4, r31, 0x3b5
/* 813BB310 | 38 BF 03 E6 */	addi r5, r31, 0x3e6
/* 813BB314 | 38 C0 00 00 */	li r6, 0x0
/* 813BB318 | 38 E0 00 00 */	li r7, 0x0
/* 813BB31C | 4B FA F1 C5 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB320 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB324 | 38 9F 03 B5 */	addi r4, r31, 0x3b5
/* 813BB328 | 38 BF 03 F0 */	addi r5, r31, 0x3f0
/* 813BB32C | 38 C0 00 00 */	li r6, 0x0
/* 813BB330 | 38 E0 00 00 */	li r7, 0x0
/* 813BB334 | 4B FA F1 AD */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB338 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB33C | 38 9F 03 B5 */	addi r4, r31, 0x3b5
/* 813BB340 | 38 BF 03 FA */	addi r5, r31, 0x3fa
/* 813BB344 | 38 C0 00 00 */	li r6, 0x0
/* 813BB348 | 38 E0 00 00 */	li r7, 0x0
/* 813BB34C | 4B FA F1 95 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB350 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB354 | 38 9F 03 B5 */	addi r4, r31, 0x3b5
/* 813BB358 | 38 BF 04 04 */	addi r5, r31, 0x404
/* 813BB35C | 38 C0 00 00 */	li r6, 0x0
/* 813BB360 | 38 E0 00 00 */	li r7, 0x0
/* 813BB364 | 4B FA F1 7D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB368 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB36C | 38 9F 03 B5 */	addi r4, r31, 0x3b5
/* 813BB370 | 38 BF 04 0E */	addi r5, r31, 0x40e
/* 813BB374 | 38 C0 00 00 */	li r6, 0x0
/* 813BB378 | 38 E0 00 00 */	li r7, 0x0
/* 813BB37C | 4B FA F1 65 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB380 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB384 | 38 9F 03 B5 */	addi r4, r31, 0x3b5
/* 813BB388 | 38 BF 04 18 */	addi r5, r31, 0x418
/* 813BB38C | 38 C0 00 00 */	li r6, 0x0
/* 813BB390 | 38 E0 00 00 */	li r7, 0x0
/* 813BB394 | 4B FA F1 4D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB398 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB39C | 38 9F 03 B5 */	addi r4, r31, 0x3b5
/* 813BB3A0 | 38 BF 04 22 */	addi r5, r31, 0x422
/* 813BB3A4 | 38 C0 00 00 */	li r6, 0x0
/* 813BB3A8 | 38 E0 00 00 */	li r7, 0x0
/* 813BB3AC | 4B FA F1 35 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB3B0 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB3B4 | 38 9F 03 B5 */	addi r4, r31, 0x3b5
/* 813BB3B8 | 38 BF 04 2C */	addi r5, r31, 0x42c
/* 813BB3BC | 38 C0 00 00 */	li r6, 0x0
/* 813BB3C0 | 38 E0 00 00 */	li r7, 0x0
/* 813BB3C4 | 4B FA F1 1D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB3C8 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB3CC | 38 9F 03 B5 */	addi r4, r31, 0x3b5
/* 813BB3D0 | 38 BF 04 36 */	addi r5, r31, 0x436
/* 813BB3D4 | 38 C0 00 00 */	li r6, 0x0
/* 813BB3D8 | 38 E0 00 00 */	li r7, 0x0
/* 813BB3DC | 4B FA F1 05 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB3E0 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB3E4 | 38 9F 04 40 */	addi r4, r31, 0x440
/* 813BB3E8 | 38 BF 03 DC */	addi r5, r31, 0x3dc
/* 813BB3EC | 38 C0 00 00 */	li r6, 0x0
/* 813BB3F0 | 38 E0 00 00 */	li r7, 0x0
/* 813BB3F4 | 4B FA F0 ED */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB3F8 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB3FC | 38 9F 04 40 */	addi r4, r31, 0x440
/* 813BB400 | 38 BF 03 E6 */	addi r5, r31, 0x3e6
/* 813BB404 | 38 C0 00 00 */	li r6, 0x0
/* 813BB408 | 38 E0 00 00 */	li r7, 0x0
/* 813BB40C | 4B FA F0 D5 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB410 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB414 | 38 9F 04 40 */	addi r4, r31, 0x440
/* 813BB418 | 38 BF 03 F0 */	addi r5, r31, 0x3f0
/* 813BB41C | 38 C0 00 00 */	li r6, 0x0
/* 813BB420 | 38 E0 00 00 */	li r7, 0x0
/* 813BB424 | 4B FA F0 BD */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB428 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB42C | 38 9F 04 40 */	addi r4, r31, 0x440
/* 813BB430 | 38 BF 03 FA */	addi r5, r31, 0x3fa
/* 813BB434 | 38 C0 00 00 */	li r6, 0x0
/* 813BB438 | 38 E0 00 00 */	li r7, 0x0
/* 813BB43C | 4B FA F0 A5 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB440 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB444 | 38 9F 04 40 */	addi r4, r31, 0x440
/* 813BB448 | 38 BF 04 04 */	addi r5, r31, 0x404
/* 813BB44C | 38 C0 00 00 */	li r6, 0x0
/* 813BB450 | 38 E0 00 00 */	li r7, 0x0
/* 813BB454 | 4B FA F0 8D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB458 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB45C | 38 9F 04 40 */	addi r4, r31, 0x440
/* 813BB460 | 38 BF 04 0E */	addi r5, r31, 0x40e
/* 813BB464 | 38 C0 00 00 */	li r6, 0x0
/* 813BB468 | 38 E0 00 00 */	li r7, 0x0
/* 813BB46C | 4B FA F0 75 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB470 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB474 | 38 9F 04 40 */	addi r4, r31, 0x440
/* 813BB478 | 38 BF 04 18 */	addi r5, r31, 0x418
/* 813BB47C | 38 C0 00 00 */	li r6, 0x0
/* 813BB480 | 38 E0 00 00 */	li r7, 0x0
/* 813BB484 | 4B FA F0 5D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB488 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB48C | 38 9F 04 40 */	addi r4, r31, 0x440
/* 813BB490 | 38 BF 04 22 */	addi r5, r31, 0x422
/* 813BB494 | 38 C0 00 00 */	li r6, 0x0
/* 813BB498 | 38 E0 00 00 */	li r7, 0x0
/* 813BB49C | 4B FA F0 45 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB4A0 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB4A4 | 38 9F 04 40 */	addi r4, r31, 0x440
/* 813BB4A8 | 38 BF 04 2C */	addi r5, r31, 0x42c
/* 813BB4AC | 38 C0 00 00 */	li r6, 0x0
/* 813BB4B0 | 38 E0 00 00 */	li r7, 0x0
/* 813BB4B4 | 4B FA F0 2D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB4B8 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB4BC | 38 9F 04 40 */	addi r4, r31, 0x440
/* 813BB4C0 | 38 BF 04 36 */	addi r5, r31, 0x436
/* 813BB4C4 | 38 C0 00 00 */	li r6, 0x0
/* 813BB4C8 | 38 E0 00 00 */	li r7, 0x0
/* 813BB4CC | 4B FA F0 15 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB4D0 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB4D4 | 38 9F 04 68 */	addi r4, r31, 0x468
/* 813BB4D8 | 38 BF 04 8A */	addi r5, r31, 0x48a
/* 813BB4DC | 38 C0 00 00 */	li r6, 0x0
/* 813BB4E0 | 38 E0 00 00 */	li r7, 0x0
/* 813BB4E4 | 4B FA EF FD */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB4E8 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB4EC | 38 9F 04 96 */	addi r4, r31, 0x496
/* 813BB4F0 | 38 BF 04 8A */	addi r5, r31, 0x48a
/* 813BB4F4 | 38 C0 00 00 */	li r6, 0x0
/* 813BB4F8 | 38 E0 00 00 */	li r7, 0x0
/* 813BB4FC | 4B FA EF E5 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB500 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB504 | 38 9F 04 B8 */	addi r4, r31, 0x4b8
/* 813BB508 | 38 BF 04 D8 */	addi r5, r31, 0x4d8
/* 813BB50C | 38 C0 00 00 */	li r6, 0x0
/* 813BB510 | 38 E0 00 01 */	li r7, 0x1
/* 813BB514 | 4B FA EF CD */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB518 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB51C | 38 9F 04 E5 */	addi r4, r31, 0x4e5
/* 813BB520 | 38 BF 04 D8 */	addi r5, r31, 0x4d8
/* 813BB524 | 38 C0 00 00 */	li r6, 0x0
/* 813BB528 | 38 E0 00 00 */	li r7, 0x0
/* 813BB52C | 4B FA EF B5 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB530 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB534 | 38 9F 05 06 */	addi r4, r31, 0x506
/* 813BB538 | 38 BF 05 25 */	addi r5, r31, 0x525
/* 813BB53C | 38 C0 00 00 */	li r6, 0x0
/* 813BB540 | 38 E0 00 00 */	li r7, 0x0
/* 813BB544 | 4B FA EF 9D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB548 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB54C | 38 9F 05 2F */	addi r4, r31, 0x52f
/* 813BB550 | 38 BF 05 55 */	addi r5, r31, 0x555
/* 813BB554 | 38 C0 00 00 */	li r6, 0x0
/* 813BB558 | 38 E0 00 00 */	li r7, 0x0
/* 813BB55C | 4B FA EF 85 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB560 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB564 | 38 9F 05 61 */	addi r4, r31, 0x561
/* 813BB568 | 38 BF 05 55 */	addi r5, r31, 0x555
/* 813BB56C | 38 C0 00 00 */	li r6, 0x0
/* 813BB570 | 38 E0 00 00 */	li r7, 0x0
/* 813BB574 | 4B FA EF 6D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB578 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB57C | 38 9F 05 88 */	addi r4, r31, 0x588
/* 813BB580 | 38 BF 05 A7 */	addi r5, r31, 0x5a7
/* 813BB584 | 38 C0 00 00 */	li r6, 0x0
/* 813BB588 | 38 E0 00 01 */	li r7, 0x1
/* 813BB58C | 4B FA EF 55 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB590 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB594 | 38 9F 05 B2 */	addi r4, r31, 0x5b2
/* 813BB598 | 38 BF 05 A7 */	addi r5, r31, 0x5a7
/* 813BB59C | 38 C0 00 00 */	li r6, 0x0
/* 813BB5A0 | 38 E0 00 00 */	li r7, 0x0
/* 813BB5A4 | 4B FA EF 3D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB5A8 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB5AC | 38 9F 04 B8 */	addi r4, r31, 0x4b8
/* 813BB5B0 | 38 BF 05 CF */	addi r5, r31, 0x5cf
/* 813BB5B4 | 38 C0 00 00 */	li r6, 0x0
/* 813BB5B8 | 38 E0 00 01 */	li r7, 0x1
/* 813BB5BC | 4B FA EF 25 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB5C0 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB5C4 | 38 9F 04 E5 */	addi r4, r31, 0x4e5
/* 813BB5C8 | 38 BF 05 CF */	addi r5, r31, 0x5cf
/* 813BB5CC | 38 C0 00 00 */	li r6, 0x0
/* 813BB5D0 | 38 E0 00 00 */	li r7, 0x0
/* 813BB5D4 | 4B FA EF 0D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB5D8 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB5DC | 38 9F 05 06 */	addi r4, r31, 0x506
/* 813BB5E0 | 38 BF 05 DC */	addi r5, r31, 0x5dc
/* 813BB5E4 | 38 C0 00 00 */	li r6, 0x0
/* 813BB5E8 | 38 E0 00 00 */	li r7, 0x0
/* 813BB5EC | 4B FA EE F5 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB5F0 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB5F4 | 38 9F 05 2F */	addi r4, r31, 0x52f
/* 813BB5F8 | 38 BF 05 E6 */	addi r5, r31, 0x5e6
/* 813BB5FC | 38 C0 00 00 */	li r6, 0x0
/* 813BB600 | 38 E0 00 00 */	li r7, 0x0
/* 813BB604 | 4B FA EE DD */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB608 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB60C | 38 9F 05 61 */	addi r4, r31, 0x561
/* 813BB610 | 38 BF 05 E6 */	addi r5, r31, 0x5e6
/* 813BB614 | 38 C0 00 00 */	li r6, 0x0
/* 813BB618 | 38 E0 00 00 */	li r7, 0x0
/* 813BB61C | 4B FA EE C5 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB620 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB624 | 38 9F 05 88 */	addi r4, r31, 0x588
/* 813BB628 | 38 BF 05 F2 */	addi r5, r31, 0x5f2
/* 813BB62C | 38 C0 00 00 */	li r6, 0x0
/* 813BB630 | 38 E0 00 01 */	li r7, 0x1
/* 813BB634 | 4B FA EE AD */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB638 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB63C | 38 9F 05 B2 */	addi r4, r31, 0x5b2
/* 813BB640 | 38 BF 05 F2 */	addi r5, r31, 0x5f2
/* 813BB644 | 38 C0 00 00 */	li r6, 0x0
/* 813BB648 | 38 E0 00 00 */	li r7, 0x0
/* 813BB64C | 4B FA EE 95 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB650 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB654 | 38 9F 05 FD */	addi r4, r31, 0x5fd
/* 813BB658 | 38 BF 06 1A */	addi r5, r31, 0x61a
/* 813BB65C | 38 C0 00 00 */	li r6, 0x0
/* 813BB660 | 38 E0 00 00 */	li r7, 0x0
/* 813BB664 | 4B FA EE 7D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB668 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB66C | 38 9F 06 24 */	addi r4, r31, 0x624
/* 813BB670 | 38 AD 8A D8 */	li r5, lbl_81696B18@sda21
/* 813BB674 | 38 C0 00 00 */	li r6, 0x0
/* 813BB678 | 38 E0 00 00 */	li r7, 0x0
/* 813BB67C | 4B FA EE 65 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813BB680 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB684 | 4B FA EF B1 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813BB688 | 38 60 00 10 */	li r3, 0x10
/* 813BB68C | 48 23 CA 11 */	bl __nw__FUl
/* 813BB690 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BB694 | 41 82 00 1C */	beq .L_813BB6B0
/* 813BB698 | 38 00 00 00 */	li r0, 0x0
/* 813BB69C | 3C 80 81 65 */	lis r4, __vt__Q33ipl5scene15FaceSelectEvent@ha
/* 813BB6A0 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 813BB6A4 | 38 84 F7 A0 */	addi r4, r4, __vt__Q33ipl5scene15FaceSelectEvent@l
/* 813BB6A8 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813BB6AC | 93 C3 00 0C */	stw r30, 0xc(r3)
.L_813BB6B0:
/* 813BB6B0 | 90 7E 00 60 */	stw r3, 0x60(r30)
/* 813BB6B4 | 38 60 00 34 */	li r3, 0x34
/* 813BB6B8 | 48 23 C9 E5 */	bl __nw__FUl
/* 813BB6BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BB6C0 | 7C 7C 1B 78 */	mr r28, r3
/* 813BB6C4 | 41 82 00 8C */	beq .L_813BB750
/* 813BB6C8 | 80 BE 00 58 */	lwz r5, 0x58(r30)
/* 813BB6CC | 3C 80 81 64 */	lis r4, __vt__Q23gui7Manager@ha
/* 813BB6D0 | 80 DE 00 60 */	lwz r6, 0x60(r30)
/* 813BB6D4 | 38 84 27 E0 */	addi r4, r4, __vt__Q23gui7Manager@l
/* 813BB6D8 | 38 00 00 00 */	li r0, 0x0
/* 813BB6DC | 3B A5 02 98 */	addi r29, r5, 0x298
/* 813BB6E0 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813BB6E4 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 813BB6E8 | 90 C3 00 04 */	stw r6, 0x4(r3)
/* 813BB6EC | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813BB6F0 | 41 82 00 1C */	beq .L_813BB70C
/* 813BB6F4 | 81 86 00 00 */	lwz r12, 0x0(r6)
/* 813BB6F8 | 7C C3 33 78 */	mr r3, r6
/* 813BB6FC | 7F 84 E3 78 */	mr r4, r28
/* 813BB700 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813BB704 | 7D 89 03 A6 */	mtctr r12
/* 813BB708 | 4E 80 04 21 */	bctrl
.L_813BB70C:
/* 813BB70C | 38 7C 00 08 */	addi r3, r28, 0x8
/* 813BB710 | 38 80 00 08 */	li r4, 0x8
/* 813BB714 | 48 15 69 49 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813BB718 | 3C A0 81 64 */	lis r5, __vt__Q23gui11PaneManager@ha
/* 813BB71C | 38 7C 00 18 */	addi r3, r28, 0x18
/* 813BB720 | 38 A5 27 84 */	addi r5, r5, __vt__Q23gui11PaneManager@l
/* 813BB724 | 38 80 00 08 */	li r4, 0x8
/* 813BB728 | 90 BC 00 00 */	stw r5, 0x0(r28)
/* 813BB72C | 93 BC 00 24 */	stw r29, 0x24(r28)
/* 813BB730 | 48 15 69 2D */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813BB734 | 3C 80 81 63 */	lis r4, __vt__Q33ipl3gui11PaneManager@ha
/* 813BB738 | 38 60 00 00 */	li r3, 0x0
/* 813BB73C | 38 84 59 C4 */	addi r4, r4, __vt__Q33ipl3gui11PaneManager@l
/* 813BB740 | 38 00 00 01 */	li r0, 0x1
/* 813BB744 | 90 9C 00 00 */	stw r4, 0x0(r28)
/* 813BB748 | 90 7C 00 2C */	stw r3, 0x2c(r28)
/* 813BB74C | 98 1C 00 30 */	stb r0, 0x30(r28)
.L_813BB750:
/* 813BB750 | 93 9E 00 64 */	stw r28, 0x64(r30)
/* 813BB754 | 7F 83 E3 78 */	mr r3, r28
/* 813BB758 | 80 9E 00 58 */	lwz r4, 0x58(r30)
/* 813BB75C | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 813BB760 | 38 84 00 04 */	addi r4, r4, 0x4
/* 813BB764 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813BB768 | 7D 89 03 A6 */	mtctr r12
/* 813BB76C | 4E 80 04 21 */	bctrl
/* 813BB770 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 813BB774 | 38 80 00 00 */	li r4, 0x0
/* 813BB778 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BB77C | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813BB780 | 7D 89 03 A6 */	mtctr r12
/* 813BB784 | 4E 80 04 21 */	bctrl
/* 813BB788 | 3B 9F 00 84 */	addi r28, r31, 0x84
/* 813BB78C | 3B 60 00 00 */	li r27, 0x0
/* 813BB790 | 3B A0 00 00 */	li r29, 0x0
.L_813BB794:
/* 813BB794 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB798 | 38 A0 00 01 */	li r5, 0x1
/* 813BB79C | 7C 9C E8 2E */	lwzx r4, r28, r29
/* 813BB7A0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813BB7A4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BB7A8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813BB7AC | 7D 89 03 A6 */	mtctr r12
/* 813BB7B0 | 4E 80 04 21 */	bctrl
/* 813BB7B4 | 7C 64 1B 78 */	mr r4, r3
/* 813BB7B8 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 813BB7BC | 38 A0 00 01 */	li r5, 0x1
/* 813BB7C0 | 4B FA FA 0D */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 813BB7C4 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 813BB7C8 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 813BB7CC | 2C 1B 00 0C */	cmpwi r27, 0xc
/* 813BB7D0 | 41 80 FF C4 */	blt .L_813BB794
/* 813BB7D4 | 38 60 00 10 */	li r3, 0x10
/* 813BB7D8 | 48 23 C8 C5 */	bl __nw__FUl
/* 813BB7DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BB7E0 | 41 82 00 1C */	beq .L_813BB7FC
/* 813BB7E4 | 38 00 00 00 */	li r0, 0x0
/* 813BB7E8 | 3C 80 81 65 */	lis r4, __vt__Q33ipl5scene21FaceSelectButtonEvent@ha
/* 813BB7EC | 90 03 00 08 */	stw r0, 0x8(r3)
/* 813BB7F0 | 38 84 F7 84 */	addi r4, r4, __vt__Q33ipl5scene21FaceSelectButtonEvent@l
/* 813BB7F4 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813BB7F8 | 93 C3 00 0C */	stw r30, 0xc(r3)
.L_813BB7FC:
/* 813BB7FC | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 813BB800 | 90 7E 00 68 */	stw r3, 0x68(r30)
/* 813BB804 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 813BB808 | 3B 60 00 00 */	li r27, 0x0
.L_813BB80C:
/* 813BB80C | 80 7D 00 70 */	lwz r3, 0x70(r29)
/* 813BB810 | 57 64 04 3E */	clrlwi r4, r27, 16
/* 813BB814 | 4B F8 34 91 */	bl isAvalable__Q33ipl6nigaoe7ManagerFUs
/* 813BB818 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BB81C | 41 82 00 1C */	beq .L_813BB838
/* 813BB820 | 80 7E 00 78 */	lwz r3, 0x78(r30)
/* 813BB824 | 54 60 10 3A */	slwi r0, r3, 2
/* 813BB828 | 38 83 00 01 */	addi r4, r3, 0x1
/* 813BB82C | 7C 7E 02 14 */	add r3, r30, r0
/* 813BB830 | 93 63 00 7C */	stw r27, 0x7c(r3)
/* 813BB834 | 90 9E 00 78 */	stw r4, 0x78(r30)
.L_813BB838:
/* 813BB838 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 813BB83C | 2C 1B 00 64 */	cmpwi r27, 0x64
/* 813BB840 | 41 80 FF CC */	blt .L_813BB80C
/* 813BB844 | 7F C3 F3 78 */	mr r3, r30
/* 813BB848 | 48 00 19 E9 */	bl read_face__Q33ipl5scene10FaceSelectFv
/* 813BB84C | 7F C3 F3 78 */	mr r3, r30
/* 813BB850 | 48 00 15 BD */	bl reset_gui__Q33ipl5scene10FaceSelectFv
/* 813BB854 | 7F C3 F3 78 */	mr r3, r30
/* 813BB858 | 48 00 14 A9 */	bl set_page__Q33ipl5scene10FaceSelectFv
/* 813BB85C | 80 1E 02 E8 */	lwz r0, 0x2e8(r30)
/* 813BB860 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813BB864 | 41 82 00 20 */	beq .L_813BB884
/* 813BB868 | 40 80 00 28 */	bge .L_813BB890
/* 813BB86C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813BB870 | 40 80 00 08 */	bge .L_813BB878
/* 813BB874 | 48 00 00 1C */	b .L_813BB890
.L_813BB878:
/* 813BB878 | 38 00 00 02 */	li r0, 0x2
/* 813BB87C | 90 1E 02 EC */	stw r0, 0x2ec(r30)
/* 813BB880 | 48 00 00 18 */	b .L_813BB898
.L_813BB884:
/* 813BB884 | 38 00 00 04 */	li r0, 0x4
/* 813BB888 | 90 1E 02 EC */	stw r0, 0x2ec(r30)
/* 813BB88C | 48 00 00 0C */	b .L_813BB898
.L_813BB890:
/* 813BB890 | 38 00 00 00 */	li r0, 0x0
/* 813BB894 | 90 1E 02 EC */	stw r0, 0x2ec(r30)
.L_813BB898:
/* 813BB898 | 38 00 00 01 */	li r0, 0x1
/* 813BB89C | C3 E2 86 10 */	lfs f31, lbl_81694A10@sda21(r0)
/* 813BB8A0 | 98 1E 02 E4 */	stb r0, 0x2e4(r30)
/* 813BB8A4 | 3B 40 00 00 */	li r26, 0x0
/* 813BB8A8 | C3 C2 86 14 */	lfs f30, lbl_81694A14@sda21(r0)
/* 813BB8AC | 3B A0 00 00 */	li r29, 0x0
.L_813BB8B0:
/* 813BB8B0 | 38 60 00 3C */	li r3, 0x3c
/* 813BB8B4 | 48 23 C7 E9 */	bl __nw__FUl
/* 813BB8B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BB8BC | 7C 7C 1B 78 */	mr r28, r3
/* 813BB8C0 | 41 82 00 44 */	beq .L_813BB904
/* 813BB8C4 | C0 22 86 18 */	lfs f1, lbl_81694A18@sda21(r0)
/* 813BB8C8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813BB8CC | 83 7E 00 24 */	lwz r27, 0x24(r30)
/* 813BB8D0 | FC 40 08 90 */	fmr f2, f1
/* 813BB8D4 | FC 60 08 90 */	fmr f3, f1
/* 813BB8D8 | 4B FA 71 85 */	bl __ct__Q33ipl4math4VEC3Ffff
/* 813BB8DC | FC 20 F0 90 */	fmr f1, f30
/* 813BB8E0 | 7C 68 1B 78 */	mr r8, r3
/* 813BB8E4 | FC 40 F8 90 */	fmr f2, f31
/* 813BB8E8 | 80 BE 03 18 */	lwz r5, 0x318(r30)
/* 813BB8EC | 7F 83 E3 78 */	mr r3, r28
/* 813BB8F0 | 7F 64 DB 78 */	mr r4, r27
/* 813BB8F4 | 38 FF 06 47 */	addi r7, r31, 0x647
/* 813BB8F8 | 38 CD 8A CE */	li r6, lbl_81696B0E@sda21
/* 813BB8FC | 48 01 5B 11 */	bl __ct__Q33ipl5scene11TextBalloonFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCcRCQ33ipl4math4VEC3ff
/* 813BB900 | 7C 7C 1B 78 */	mr r28, r3
.L_813BB904:
/* 813BB904 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 813BB908 | 7C 7E EA 14 */	add r3, r30, r29
/* 813BB90C | 2C 1A 00 0A */	cmpwi r26, 0xa
/* 813BB910 | 93 83 02 F0 */	stw r28, 0x2f0(r3)
/* 813BB914 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 813BB918 | 41 80 FF 98 */	blt .L_813BB8B0
/* 813BB91C | E3 E1 00 48 */	psq_l f31, 0x48(r1), 0, qr0
/* 813BB920 | CB E1 00 40 */	lfd f31, 0x40(r1)
/* 813BB924 | E3 C1 00 38 */	psq_l f30, 0x38(r1), 0, qr0
/* 813BB928 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813BB92C | CB C1 00 30 */	lfd f30, 0x30(r1)
/* 813BB930 | 48 23 DB D9 */	bl _restgpr_26
/* 813BB934 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 813BB938 | 7C 08 03 A6 */	mtlr r0
/* 813BB93C | 38 21 00 50 */	addi r1, r1, 0x50
/* 813BB940 | 4E 80 00 20 */	blr
.endfn create__Q33ipl5scene10FaceSelectFv

# .text:0x8A0 | 0x813BB944 | size: 0x120
# ipl::scene::FaceSelect::calcFadein()
.fn calcFadein__Q33ipl5scene10FaceSelectFv, global
/* 813BB944 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813BB948 | 7C 08 02 A6 */	mflr r0
/* 813BB94C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813BB950 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813BB954 | 48 23 DB 71 */	bl _savegpr_28
/* 813BB958 | 88 03 02 E4 */	lbz r0, 0x2e4(r3)
/* 813BB95C | 7C 7E 1B 78 */	mr r30, r3
/* 813BB960 | 3B E0 00 00 */	li r31, 0x0
/* 813BB964 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BB968 | 41 82 00 BC */	beq .L_813BBA24
/* 813BB96C | 80 83 02 40 */	lwz r4, 0x240(r3)
/* 813BB970 | 38 00 00 0A */	li r0, 0xa
/* 813BB974 | 39 00 00 01 */	li r8, 0x1
/* 813BB978 | 1C A4 00 50 */	mulli r5, r4, 0x50
/* 813BB97C | 38 80 00 00 */	li r4, 0x0
/* 813BB980 | 7C E3 2A 14 */	add r7, r3, r5
/* 813BB984 | 7C 09 03 A6 */	mtctr r0
.L_813BB988:
/* 813BB988 | 7C A7 22 14 */	add r5, r7, r4
/* 813BB98C | 38 C0 00 01 */	li r6, 0x1
/* 813BB990 | 88 05 02 44 */	lbz r0, 0x244(r5)
/* 813BB994 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BB998 | 41 82 00 14 */	beq .L_813BB9AC
/* 813BB99C | 88 05 02 45 */	lbz r0, 0x245(r5)
/* 813BB9A0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BB9A4 | 40 82 00 08 */	bne .L_813BB9AC
/* 813BB9A8 | 38 C0 00 00 */	li r6, 0x0
.L_813BB9AC:
/* 813BB9AC | 7D 05 30 38 */	and r5, r8, r6
/* 813BB9B0 | 38 84 00 08 */	addi r4, r4, 0x8
/* 813BB9B4 | 30 05 FF FF */	subic r0, r5, 0x1
/* 813BB9B8 | 7D 00 29 10 */	subfe r8, r0, r5
/* 813BB9BC | 42 00 FF CC */	bdnz .L_813BB988
/* 813BB9C0 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 813BB9C4 | 41 82 00 84 */	beq .L_813BBA48
/* 813BB9C8 | 38 00 00 00 */	li r0, 0x0
/* 813BB9CC | 3C 80 81 65 */	lis r4, lbl_8164F1DC@ha
/* 813BB9D0 | 98 03 02 E4 */	stb r0, 0x2e4(r3)
/* 813BB9D4 | 7F C3 F3 78 */	mr r3, r30
/* 813BB9D8 | 38 84 F1 DC */	addi r4, r4, lbl_8164F1DC@l
/* 813BB9DC | 48 00 15 0D */	bl set_face_pane__Q33ipl5scene10FaceSelectFPPCc
/* 813BB9E0 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BB9E4 | 80 1E 02 EC */	lwz r0, 0x2ec(r30)
/* 813BB9E8 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813BB9EC | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813BB9F0 | 48 15 69 29 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813BB9F4 | 7C 7C 1B 78 */	mr r28, r3
/* 813BB9F8 | 4B FA 6E 79 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813BB9FC | 3B A0 00 01 */	li r29, 0x1
/* 813BBA00 | 38 80 00 2A */	li r4, 0x2a
/* 813BBA04 | 93 BC 00 14 */	stw r29, 0x14(r28)
/* 813BBA08 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BBA0C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813BBA10 | 48 15 69 09 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813BBA14 | 7C 7C 1B 78 */	mr r28, r3
/* 813BBA18 | 4B FA 6E 59 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813BBA1C | 93 BC 00 14 */	stw r29, 0x14(r28)
/* 813BBA20 | 48 00 00 28 */	b .L_813BBA48
.L_813BBA24:
/* 813BBA24 | 80 63 00 58 */	lwz r3, 0x58(r3)
/* 813BBA28 | 80 1E 02 EC */	lwz r0, 0x2ec(r30)
/* 813BBA2C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813BBA30 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813BBA34 | 48 15 68 E5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813BBA38 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813BBA3C | 38 63 FF FF */	subi r3, r3, 0x1
/* 813BBA40 | 30 03 FF FF */	subic r0, r3, 0x1
/* 813BBA44 | 7F E0 19 10 */	subfe r31, r0, r3
.L_813BBA48:
/* 813BBA48 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813BBA4C | 7F E3 FB 78 */	mr r3, r31
/* 813BBA50 | 48 23 DA C1 */	bl _restgpr_28
/* 813BBA54 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813BBA58 | 7C 08 03 A6 */	mtlr r0
/* 813BBA5C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813BBA60 | 4E 80 00 20 */	blr
.endfn calcFadein__Q33ipl5scene10FaceSelectFv

# .text:0x9C0 | 0x813BBA64 | size: 0x8C
# ipl::scene::FaceSelect::initCalcNormal()
.fn initCalcNormal__Q33ipl5scene10FaceSelectFv, global
/* 813BBA64 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813BBA68 | 7C 08 02 A6 */	mflr r0
/* 813BBA6C | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813BBA70 | 38 80 00 05 */	li r4, 0x5
/* 813BBA74 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813BBA78 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813BBA7C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813BBA80 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813BBA84 | 7C 7E 1B 78 */	mr r30, r3
/* 813BBA88 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 813BBA8C | 48 04 F6 AD */	bl getScene__Q33ipl5scene7ManagerFi
/* 813BBA90 | 80 9E 00 68 */	lwz r4, 0x68(r30)
/* 813BBA94 | 38 A0 00 00 */	li r5, 0x0
/* 813BBA98 | 4B FE 0E A5 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 813BBA9C | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 813BBAA0 | 80 1E 00 78 */	lwz r0, 0x78(r30)
/* 813BBAA4 | 38 63 00 01 */	addi r3, r3, 0x1
/* 813BBAA8 | 1C 63 00 0A */	mulli r3, r3, 0xa
/* 813BBAAC | 7C 03 00 00 */	cmpw r3, r0
/* 813BBAB0 | 40 80 00 28 */	bge .L_813BBAD8
/* 813BBAB4 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BBAB8 | 38 80 00 28 */	li r4, 0x28
/* 813BBABC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813BBAC0 | 48 15 68 59 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813BBAC4 | 7C 7F 1B 78 */	mr r31, r3
/* 813BBAC8 | 4B FA 6D A9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813BBACC | 38 00 00 01 */	li r0, 0x1
/* 813BBAD0 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 813BBAD4 | 98 1E 02 E6 */	stb r0, 0x2e6(r30)
.L_813BBAD8:
/* 813BBAD8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813BBADC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813BBAE0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813BBAE4 | 7C 08 03 A6 */	mtlr r0
/* 813BBAE8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813BBAEC | 4E 80 00 20 */	blr
.endfn initCalcNormal__Q33ipl5scene10FaceSelectFv

# .text:0xA4C | 0x813BBAF0 | size: 0x8C
# ipl::scene::FaceSelect::calcNormal()
.fn calcNormal__Q33ipl5scene10FaceSelectFv, global
/* 813BBAF0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813BBAF4 | 7C 08 02 A6 */	mflr r0
/* 813BBAF8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813BBAFC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813BBB00 | 7C 7F 1B 78 */	mr r31, r3
/* 813BBB04 | 80 03 00 6C */	lwz r0, 0x6c(r3)
/* 813BBB08 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813BBB0C | 41 82 00 38 */	beq .L_813BBB44
/* 813BBB10 | 40 80 00 14 */	bge .L_813BBB24
/* 813BBB14 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BBB18 | 41 82 00 1C */	beq .L_813BBB34
/* 813BBB1C | 40 80 00 20 */	bge .L_813BBB3C
/* 813BBB20 | 48 00 00 38 */	b .L_813BBB58
.L_813BBB24:
/* 813BBB24 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813BBB28 | 41 82 00 2C */	beq .L_813BBB54
/* 813BBB2C | 40 80 00 2C */	bge .L_813BBB58
/* 813BBB30 | 48 00 00 1C */	b .L_813BBB4C
.L_813BBB34:
/* 813BBB34 | 48 00 04 E1 */	bl stt_normal__Q33ipl5scene10FaceSelectFv
/* 813BBB38 | 48 00 00 20 */	b .L_813BBB58
.L_813BBB3C:
/* 813BBB3C | 48 00 06 E5 */	bl stt_wait_lloaded__Q33ipl5scene10FaceSelectFv
/* 813BBB40 | 48 00 00 18 */	b .L_813BBB58
.L_813BBB44:
/* 813BBB44 | 48 00 07 89 */	bl stt_wait_rloaded__Q33ipl5scene10FaceSelectFv
/* 813BBB48 | 48 00 00 10 */	b .L_813BBB58
.L_813BBB4C:
/* 813BBB4C | 48 00 08 2D */	bl stt_wait_lscroll__Q33ipl5scene10FaceSelectFv
/* 813BBB50 | 48 00 00 08 */	b .L_813BBB58
.L_813BBB54:
/* 813BBB54 | 48 00 09 51 */	bl stt_wait_rscroll__Q33ipl5scene10FaceSelectFv
.L_813BBB58:
/* 813BBB58 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813BBB5C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813BBB60 | 38 03 FF FB */	subi r0, r3, 0x5
/* 813BBB64 | 7C 00 00 34 */	cntlzw r0, r0
/* 813BBB68 | 54 03 D9 7E */	srwi r3, r0, 5
/* 813BBB6C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813BBB70 | 7C 08 03 A6 */	mtlr r0
/* 813BBB74 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813BBB78 | 4E 80 00 20 */	blr
.endfn calcNormal__Q33ipl5scene10FaceSelectFv

# .text:0xAD8 | 0x813BBB7C | size: 0x9C
# ipl::scene::FaceSelect::initCalcFadeout()
.fn initCalcFadeout__Q33ipl5scene10FaceSelectFv, global
/* 813BBB7C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813BBB80 | 7C 08 02 A6 */	mflr r0
/* 813BBB84 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813BBB88 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813BBB8C | 48 23 D9 3D */	bl _savegpr_29
/* 813BBB90 | 7C 7D 1B 78 */	mr r29, r3
/* 813BBB94 | 3B C0 00 00 */	li r30, 0x0
/* 813BBB98 | 3B E0 00 00 */	li r31, 0x0
.L_813BBB9C:
/* 813BBB9C | 7C 7D FA 14 */	add r3, r29, r31
/* 813BBBA0 | 80 63 02 F0 */	lwz r3, 0x2f0(r3)
/* 813BBBA4 | 48 01 5A 09 */	bl calc__Q33ipl5scene11TextBalloonFv
/* 813BBBA8 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 813BBBAC | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813BBBB0 | 2C 1E 00 0A */	cmpwi r30, 0xa
/* 813BBBB4 | 41 80 FF E8 */	blt .L_813BBB9C
/* 813BBBB8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813BBBBC | 38 80 00 05 */	li r4, 0x5
/* 813BBBC0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813BBBC4 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813BBBC8 | 48 04 F5 71 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813BBBCC | 38 80 00 00 */	li r4, 0x0
/* 813BBBD0 | 38 A0 00 00 */	li r5, 0x0
/* 813BBBD4 | 4B FE 0D 69 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 813BBBD8 | 80 7D 02 EC */	lwz r3, 0x2ec(r29)
/* 813BBBDC | 80 9D 00 58 */	lwz r4, 0x58(r29)
/* 813BBBE0 | 38 03 00 01 */	addi r0, r3, 0x1
/* 813BBBE4 | 38 64 02 8C */	addi r3, r4, 0x28c
/* 813BBBE8 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813BBBEC | 48 15 67 2D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813BBBF0 | 7C 7F 1B 78 */	mr r31, r3
/* 813BBBF4 | 4B FA 6C 7D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813BBBF8 | 38 00 00 01 */	li r0, 0x1
/* 813BBBFC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813BBC00 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 813BBC04 | 48 23 D9 11 */	bl _restgpr_29
/* 813BBC08 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813BBC0C | 7C 08 03 A6 */	mtlr r0
/* 813BBC10 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813BBC14 | 4E 80 00 20 */	blr
.endfn initCalcFadeout__Q33ipl5scene10FaceSelectFv

# .text:0xB74 | 0x813BBC18 | size: 0x7C
# ipl::scene::FaceSelect::calcFadeout()
.fn calcFadeout__Q33ipl5scene10FaceSelectFv, global
/* 813BBC18 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813BBC1C | 7C 08 02 A6 */	mflr r0
/* 813BBC20 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813BBC24 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813BBC28 | 48 23 D8 A1 */	bl _savegpr_29
/* 813BBC2C | 7C 7D 1B 78 */	mr r29, r3
/* 813BBC30 | 3B C0 00 00 */	li r30, 0x0
/* 813BBC34 | 3B E0 00 00 */	li r31, 0x0
.L_813BBC38:
/* 813BBC38 | 7C 7D FA 14 */	add r3, r29, r31
/* 813BBC3C | 80 63 02 F0 */	lwz r3, 0x2f0(r3)
/* 813BBC40 | 48 01 59 6D */	bl calc__Q33ipl5scene11TextBalloonFv
/* 813BBC44 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 813BBC48 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813BBC4C | 2C 1E 00 0A */	cmpwi r30, 0xa
/* 813BBC50 | 41 80 FF E8 */	blt .L_813BBC38
/* 813BBC54 | 80 7D 02 EC */	lwz r3, 0x2ec(r29)
/* 813BBC58 | 80 9D 00 58 */	lwz r4, 0x58(r29)
/* 813BBC5C | 38 03 00 01 */	addi r0, r3, 0x1
/* 813BBC60 | 38 64 02 8C */	addi r3, r4, 0x28c
/* 813BBC64 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813BBC68 | 48 15 66 B1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813BBC6C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813BBC70 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813BBC74 | 38 63 FF FF */	subi r3, r3, 0x1
/* 813BBC78 | 30 03 FF FF */	subic r0, r3, 0x1
/* 813BBC7C | 7C 60 19 10 */	subfe r3, r0, r3
/* 813BBC80 | 48 23 D8 95 */	bl _restgpr_29
/* 813BBC84 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813BBC88 | 7C 08 03 A6 */	mtlr r0
/* 813BBC8C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813BBC90 | 4E 80 00 20 */	blr
.endfn calcFadeout__Q33ipl5scene10FaceSelectFv

# .text:0xBF0 | 0x813BBC94 | size: 0x8
# ipl::scene::FaceSelect::calcCommonAfter()
.fn calcCommonAfter__Q33ipl5scene10FaceSelectFv, global
/* 813BBC94 | 80 63 00 58 */	lwz r3, 0x58(r3)
/* 813BBC98 | 4B FA EA 6C */	b calc__Q33ipl6layout6ObjectFv
.endfn calcCommonAfter__Q33ipl5scene10FaceSelectFv

# .text:0xBF8 | 0x813BBC9C | size: 0x84
# ipl::scene::FaceSelect::destroy()
.fn destroy__Q33ipl5scene10FaceSelectFv, global
/* 813BBC9C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813BBCA0 | 7C 08 02 A6 */	mflr r0
/* 813BBCA4 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813BBCA8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813BBCAC | 48 23 D8 09 */	bl _savegpr_24
/* 813BBCB0 | 7C 78 1B 78 */	mr r24, r3
/* 813BBCB4 | 3B 40 00 00 */	li r26, 0x0
/* 813BBCB8 | 3B E0 00 00 */	li r31, 0x0
/* 813BBCBC | 3B A0 00 00 */	li r29, 0x0
.L_813BBCC0:
/* 813BBCC0 | 7F 98 FA 14 */	add r28, r24, r31
/* 813BBCC4 | 3B 20 00 00 */	li r25, 0x0
/* 813BBCC8 | 3B C0 00 00 */	li r30, 0x0
.L_813BBCCC:
/* 813BBCCC | 7F 7C F2 14 */	add r27, r28, r30
/* 813BBCD0 | 80 7B 02 48 */	lwz r3, 0x248(r27)
/* 813BBCD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BBCD8 | 41 82 00 10 */	beq .L_813BBCE8
/* 813BBCDC | 38 80 00 01 */	li r4, 0x1
/* 813BBCE0 | 4B F8 32 31 */	bl __dt__Q33ipl6nigaoe6ObjectFv
/* 813BBCE4 | 93 BB 02 48 */	stw r29, 0x248(r27)
.L_813BBCE8:
/* 813BBCE8 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 813BBCEC | 3B DE 00 08 */	addi r30, r30, 0x8
/* 813BBCF0 | 2C 19 00 0A */	cmpwi r25, 0xa
/* 813BBCF4 | 41 80 FF D8 */	blt .L_813BBCCC
/* 813BBCF8 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 813BBCFC | 3B FF 00 50 */	addi r31, r31, 0x50
/* 813BBD00 | 2C 1A 00 02 */	cmpwi r26, 0x2
/* 813BBD04 | 41 80 FF BC */	blt .L_813BBCC0
/* 813BBD08 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813BBD0C | 48 23 D7 F5 */	bl _restgpr_24
/* 813BBD10 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813BBD14 | 7C 08 03 A6 */	mtlr r0
/* 813BBD18 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813BBD1C | 4E 80 00 20 */	blr
.endfn destroy__Q33ipl5scene10FaceSelectFv

# .text:0xC7C | 0x813BBD20 | size: 0x2F4
# ipl::scene::FaceSelect::draw()
.fn draw__Q33ipl5scene10FaceSelectFv, global
/* 813BBD20 | 94 21 FF 00 */	stwu r1, -0x100(r1)
/* 813BBD24 | 7C 08 02 A6 */	mflr r0
/* 813BBD28 | 90 01 01 04 */	stw r0, 0x104(r1)
/* 813BBD2C | DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 813BBD30 | F3 E1 00 F8 */	psq_st f31, 0xf8(r1), 0, qr0
/* 813BBD34 | DB C1 00 E0 */	stfd f30, 0xe0(r1)
/* 813BBD38 | F3 C1 00 E8 */	psq_st f30, 0xe8(r1), 0, qr0
/* 813BBD3C | 39 61 00 E0 */	addi r11, r1, 0xe0
/* 813BBD40 | 48 23 D7 89 */	bl _savegpr_29
/* 813BBD44 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813BBD48 | 7C 7F 1B 78 */	mr r31, r3
/* 813BBD4C | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813BBD50 | 80 64 00 64 */	lwz r3, 0x64(r4)
/* 813BBD54 | 80 03 01 00 */	lwz r0, 0x100(r3)
/* 813BBD58 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813BBD5C | 40 82 02 90 */	bne .L_813BBFEC
/* 813BBD60 | 38 60 00 00 */	li r3, 0x0
/* 813BBD64 | 4B FA 6D 09 */	bl setOrtho__Q33ipl7utility8GraphicsFUl
/* 813BBD68 | 38 61 00 14 */	addi r3, r1, 0x14
/* 813BBD6C | 38 81 00 10 */	addi r4, r1, 0x10
/* 813BBD70 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 813BBD74 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 813BBD78 | 48 18 C2 99 */	bl GXGetScissor
/* 813BBD7C | 4B F7 9C 19 */	bl getRenderModeObj__Q23ipl6SystemFv
/* 813BBD80 | 38 00 00 07 */	li r0, 0x7
/* 813BBD84 | 38 A1 00 7C */	addi r5, r1, 0x7c
/* 813BBD88 | 38 83 FF FC */	subi r4, r3, 0x4
/* 813BBD8C | 7C 09 03 A6 */	mtctr r0
.L_813BBD90:
/* 813BBD90 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 813BBD94 | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 813BBD98 | 90 65 00 04 */	stw r3, 0x4(r5)
/* 813BBD9C | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 813BBDA0 | 42 00 FF F0 */	bdnz .L_813BBD90
/* 813BBDA4 | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 813BBDA8 | 38 61 00 40 */	addi r3, r1, 0x40
/* 813BBDAC | C0 02 86 18 */	lfs f0, lbl_81694A18@sda21(r0)
/* 813BBDB0 | 90 05 00 04 */	stw r0, 0x4(r5)
/* 813BBDB4 | D0 01 00 40 */	stfs f0, 0x40(r1)
/* 813BBDB8 | D0 01 00 44 */	stfs f0, 0x44(r1)
/* 813BBDBC | D0 01 00 48 */	stfs f0, 0x48(r1)
/* 813BBDC0 | D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 813BBDC4 | 4B F7 9B 55 */	bl getProjectionRect__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813BBDC8 | A0 A1 00 84 */	lhz r5, 0x84(r1)
/* 813BBDCC | 3C 00 43 30 */	lis r0, 0x4330
/* 813BBDD0 | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 813BBDD4 | 3C 80 81 65 */	lis r4, lbl_8164F718@ha
/* 813BBDD8 | 90 A1 00 C4 */	stw r5, 0xc4(r1)
/* 813BBDDC | 38 84 F7 18 */	addi r4, r4, lbl_8164F718@l
/* 813BBDE0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813BBDE4 | 38 A0 00 01 */	li r5, 0x1
/* 813BBDE8 | 90 01 00 C0 */	stw r0, 0xc0(r1)
/* 813BBDEC | C0 61 00 48 */	lfs f3, 0x48(r1)
/* 813BBDF0 | C0 41 00 40 */	lfs f2, 0x40(r1)
/* 813BBDF4 | C8 22 86 20 */	lfd f1, lbl_81694A20@sda21(r0)
/* 813BBDF8 | C8 01 00 C0 */	lfd f0, 0xc0(r1)
/* 813BBDFC | EC 43 10 28 */	fsubs f2, f3, f2
/* 813BBE00 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BBE04 | EC 00 08 28 */	fsubs f0, f0, f1
/* 813BBE08 | C0 22 86 1C */	lfs f1, lbl_81694A1C@sda21(r0)
/* 813BBE0C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813BBE10 | EF E1 00 B2 */	fmuls f31, f1, f2
/* 813BBE14 | EF C0 10 24 */	fdivs f30, f0, f2
/* 813BBE18 | 7D 89 03 A6 */	mtctr r12
/* 813BBE1C | 4E 80 04 21 */	bctrl
/* 813BBE20 | 80 BF 00 58 */	lwz r5, 0x58(r31)
/* 813BBE24 | 7C 7E 1B 78 */	mr r30, r3
/* 813BBE28 | 7F C4 F3 78 */	mr r4, r30
/* 813BBE2C | 38 61 00 30 */	addi r3, r1, 0x30
/* 813BBE30 | 38 A5 02 98 */	addi r5, r5, 0x298
/* 813BBE34 | 48 16 30 31 */	bl fn_8151EE64
/* 813BBE38 | 38 00 00 06 */	li r0, 0x6
/* 813BBE3C | 38 A1 00 4C */	addi r5, r1, 0x4c
/* 813BBE40 | 38 9E 00 80 */	addi r4, r30, 0x80
/* 813BBE44 | 7C 09 03 A6 */	mtctr r0
.L_813BBE48:
/* 813BBE48 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 813BBE4C | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 813BBE50 | 90 65 00 04 */	stw r3, 0x4(r5)
/* 813BBE54 | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 813BBE58 | 42 00 FF F0 */	bdnz .L_813BBE48
/* 813BBE5C | C0 02 86 18 */	lfs f0, lbl_81694A18@sda21(r0)
/* 813BBE60 | 38 81 00 24 */	addi r4, r1, 0x24
/* 813BBE64 | C0 41 00 34 */	lfs f2, 0x34(r1)
/* 813BBE68 | 7C 85 23 78 */	mr r5, r4
/* 813BBE6C | C0 21 00 30 */	lfs f1, 0x30(r1)
/* 813BBE70 | 38 61 00 50 */	addi r3, r1, 0x50
/* 813BBE74 | C0 81 00 3C */	lfs f4, 0x3c(r1)
/* 813BBE78 | C0 61 00 38 */	lfs f3, 0x38(r1)
/* 813BBE7C | D0 21 00 24 */	stfs f1, 0x24(r1)
/* 813BBE80 | D0 41 00 28 */	stfs f2, 0x28(r1)
/* 813BBE84 | D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 813BBE88 | D0 61 00 18 */	stfs f3, 0x18(r1)
/* 813BBE8C | D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 813BBE90 | D0 01 00 20 */	stfs f0, 0x20(r1)
/* 813BBE94 | 48 18 56 29 */	bl fn_815414BC
/* 813BBE98 | 38 81 00 18 */	addi r4, r1, 0x18
/* 813BBE9C | 38 61 00 50 */	addi r3, r1, 0x50
/* 813BBEA0 | 7C 85 23 78 */	mr r5, r4
/* 813BBEA4 | 48 18 56 19 */	bl fn_815414BC
/* 813BBEA8 | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 813BBEAC | 38 8D 8A DF */	li r4, lbl_81696B1F@sda21
/* 813BBEB0 | 38 A0 00 01 */	li r5, 0x1
/* 813BBEB4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813BBEB8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BBEBC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813BBEC0 | 7D 89 03 A6 */	mtctr r12
/* 813BBEC4 | 4E 80 04 21 */	bctrl
/* 813BBEC8 | 38 80 00 01 */	li r4, 0x1
/* 813BBECC | 4B F8 85 49 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813BBED0 | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 813BBED4 | 38 8D 8A DF */	li r4, lbl_81696B1F@sda21
/* 813BBED8 | 4B FA E9 31 */	bl draw__Q33ipl6layout6ObjectFPCc
/* 813BBEDC | C0 41 00 18 */	lfs f2, 0x18(r1)
/* 813BBEE0 | C0 21 00 24 */	lfs f1, 0x24(r1)
/* 813BBEE4 | C0 02 86 1C */	lfs f0, lbl_81694A1C@sda21(r0)
/* 813BBEE8 | EC 22 08 28 */	fsubs f1, f2, f1
/* 813BBEEC | EC 3E 00 72 */	fmuls f1, f30, f1
/* 813BBEF0 | EC 21 00 28 */	fsubs f1, f1, f0
/* 813BBEF4 | 48 23 D4 A5 */	bl __cvt_fp2unsigned
/* 813BBEF8 | C0 21 00 24 */	lfs f1, 0x24(r1)
/* 813BBEFC | 7C 7E 1B 78 */	mr r30, r3
/* 813BBF00 | C0 02 86 1C */	lfs f0, lbl_81694A1C@sda21(r0)
/* 813BBF04 | EC 21 F8 2A */	fadds f1, f1, f31
/* 813BBF08 | EC 3E 00 72 */	fmuls f1, f30, f1
/* 813BBF0C | EC 20 08 2A */	fadds f1, f0, f1
/* 813BBF10 | 48 23 D4 89 */	bl __cvt_fp2unsigned
/* 813BBF14 | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 813BBF18 | 7F C5 F3 78 */	mr r5, r30
/* 813BBF1C | 80 C1 00 08 */	lwz r6, 0x8(r1)
/* 813BBF20 | 48 18 C0 89 */	bl GXSetScissor
/* 813BBF24 | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 813BBF28 | 38 8D 8A DF */	li r4, lbl_81696B1F@sda21
/* 813BBF2C | 38 A0 00 01 */	li r5, 0x1
/* 813BBF30 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813BBF34 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BBF38 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813BBF3C | 7D 89 03 A6 */	mtctr r12
/* 813BBF40 | 4E 80 04 21 */	bctrl
/* 813BBF44 | 38 80 00 00 */	li r4, 0x0
/* 813BBF48 | 4B F8 84 CD */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813BBF4C | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 813BBF50 | 3F C0 81 65 */	lis r30, lbl_8164F721@ha
/* 813BBF54 | 38 9E F7 21 */	addi r4, r30, lbl_8164F721@l
/* 813BBF58 | 38 A0 00 01 */	li r5, 0x1
/* 813BBF5C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813BBF60 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BBF64 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813BBF68 | 7D 89 03 A6 */	mtctr r12
/* 813BBF6C | 4E 80 04 21 */	bctrl
/* 813BBF70 | 38 80 00 00 */	li r4, 0x0
/* 813BBF74 | 4B F8 84 A1 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813BBF78 | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 813BBF7C | 4B FA E8 21 */	bl draw__Q33ipl6layout6ObjectFv
/* 813BBF80 | 80 61 00 14 */	lwz r3, 0x14(r1)
/* 813BBF84 | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 813BBF88 | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 813BBF8C | 80 C1 00 08 */	lwz r6, 0x8(r1)
/* 813BBF90 | 48 18 C0 19 */	bl GXSetScissor
/* 813BBF94 | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 813BBF98 | 38 9E F7 21 */	addi r4, r30, lbl_8164F721@l
/* 813BBF9C | 38 A0 00 01 */	li r5, 0x1
/* 813BBFA0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813BBFA4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BBFA8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813BBFAC | 7D 89 03 A6 */	mtctr r12
/* 813BBFB0 | 4E 80 04 21 */	bctrl
/* 813BBFB4 | 38 80 00 01 */	li r4, 0x1
/* 813BBFB8 | 4B F8 84 5D */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813BBFBC | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 813BBFC0 | 38 9E F7 21 */	addi r4, r30, lbl_8164F721@l
/* 813BBFC4 | 4B FA E8 45 */	bl draw__Q33ipl6layout6ObjectFPCc
/* 813BBFC8 | 3B A0 00 00 */	li r29, 0x0
/* 813BBFCC | 3B C0 00 00 */	li r30, 0x0
.L_813BBFD0:
/* 813BBFD0 | 7C 7F F2 14 */	add r3, r31, r30
/* 813BBFD4 | 80 63 02 F0 */	lwz r3, 0x2f0(r3)
/* 813BBFD8 | 48 01 56 21 */	bl draw__Q33ipl5scene11TextBalloonFv
/* 813BBFDC | 3B BD 00 01 */	addi r29, r29, 0x1
/* 813BBFE0 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 813BBFE4 | 2C 1D 00 0A */	cmpwi r29, 0xa
/* 813BBFE8 | 41 80 FF E8 */	blt .L_813BBFD0
.L_813BBFEC:
/* 813BBFEC | E3 E1 00 F8 */	psq_l f31, 0xf8(r1), 0, qr0
/* 813BBFF0 | CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 813BBFF4 | E3 C1 00 E8 */	psq_l f30, 0xe8(r1), 0, qr0
/* 813BBFF8 | 39 61 00 E0 */	addi r11, r1, 0xe0
/* 813BBFFC | CB C1 00 E0 */	lfd f30, 0xe0(r1)
/* 813BC000 | 48 23 D5 15 */	bl _restgpr_29
/* 813BC004 | 80 01 01 04 */	lwz r0, 0x104(r1)
/* 813BC008 | 7C 08 03 A6 */	mtlr r0
/* 813BC00C | 38 21 01 00 */	addi r1, r1, 0x100
/* 813BC010 | 4E 80 00 20 */	blr
.endfn draw__Q33ipl5scene10FaceSelectFv

# .text:0xF70 | 0x813BC014 | size: 0x20C
# ipl::scene::FaceSelect::stt_normal()
.fn stt_normal__Q33ipl5scene10FaceSelectFv, global
/* 813BC014 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813BC018 | 7C 08 02 A6 */	mflr r0
/* 813BC01C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813BC020 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813BC024 | 48 23 D4 A5 */	bl _savegpr_29
/* 813BC028 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813BC02C | 7C 7F 1B 78 */	mr r31, r3
/* 813BC030 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813BC034 | 38 80 00 05 */	li r4, 0x5
/* 813BC038 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 813BC03C | 48 04 F0 FD */	bl getScene__Q33ipl5scene7ManagerFi
/* 813BC040 | 4B FE 08 D5 */	bl isActive__Q33ipl5scene6ButtonCFv
/* 813BC044 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BC048 | 41 82 00 14 */	beq .L_813BC05C
/* 813BC04C | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 813BC050 | 38 80 00 05 */	li r4, 0x5
/* 813BC054 | 48 04 F0 E5 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813BC058 | 4B FE 05 15 */	bl update__Q33ipl5scene6ButtonFv
.L_813BC05C:
/* 813BC05C | 80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 813BC060 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BC064 | 40 82 00 0C */	bne .L_813BC070
/* 813BC068 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813BC06C | 4B FA EF 21 */	bl update__Q33ipl3gui11PaneManagerFv
.L_813BC070:
/* 813BC070 | 4B F7 99 49 */	bl getYoungController__Q23ipl6SystemFv
/* 813BC074 | 80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 813BC078 | 7C 7E 1B 78 */	mr r30, r3
/* 813BC07C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BC080 | 40 82 01 64 */	bne .L_813BC1E4
/* 813BC084 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BC088 | 41 82 01 5C */	beq .L_813BC1E4
/* 813BC08C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BC090 | 3C 80 30 00 */	lis r4, 0x3000
/* 813BC094 | 38 84 10 00 */	addi r4, r4, 0x1000
/* 813BC098 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813BC09C | 7D 89 03 A6 */	mtctr r12
/* 813BC0A0 | 4E 80 04 21 */	bctrl
/* 813BC0A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BC0A8 | 41 82 00 2C */	beq .L_813BC0D4
/* 813BC0AC | 80 1F 00 74 */	lwz r0, 0x74(r31)
/* 813BC0B0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BC0B4 | 40 81 00 20 */	ble .L_813BC0D4
/* 813BC0B8 | 7F E3 FB 78 */	mr r3, r31
/* 813BC0BC | 48 00 05 15 */	bl start_lloaded__Q33ipl5scene10FaceSelectFv
/* 813BC0C0 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813BC0C4 | 38 00 00 01 */	li r0, 0x1
/* 813BC0C8 | 90 7F 00 70 */	stw r3, 0x70(r31)
/* 813BC0CC | 90 1F 00 6C */	stw r0, 0x6c(r31)
/* 813BC0D0 | 48 00 01 14 */	b .L_813BC1E4
.L_813BC0D4:
/* 813BC0D4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813BC0D8 | 3C 80 30 00 */	lis r4, 0x3000
/* 813BC0DC | 7F C3 F3 78 */	mr r3, r30
/* 813BC0E0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813BC0E4 | 38 84 10 00 */	addi r4, r4, 0x1000
/* 813BC0E8 | 7D 89 03 A6 */	mtctr r12
/* 813BC0EC | 4E 80 04 21 */	bctrl
/* 813BC0F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BC0F4 | 41 82 00 38 */	beq .L_813BC12C
/* 813BC0F8 | 80 1F 00 74 */	lwz r0, 0x74(r31)
/* 813BC0FC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BC100 | 40 81 00 2C */	ble .L_813BC12C
/* 813BC104 | 80 1F 00 70 */	lwz r0, 0x70(r31)
/* 813BC108 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813BC10C | 40 82 00 D8 */	bne .L_813BC1E4
/* 813BC110 | 7F E3 FB 78 */	mr r3, r31
/* 813BC114 | 48 00 04 BD */	bl start_lloaded__Q33ipl5scene10FaceSelectFv
/* 813BC118 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813BC11C | 38 00 00 01 */	li r0, 0x1
/* 813BC120 | 90 7F 00 70 */	stw r3, 0x70(r31)
/* 813BC124 | 90 1F 00 6C */	stw r0, 0x6c(r31)
/* 813BC128 | 48 00 00 BC */	b .L_813BC1E4
.L_813BC12C:
/* 813BC12C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813BC130 | 3C 80 06 00 */	lis r4, 0x600
/* 813BC134 | 7F C3 F3 78 */	mr r3, r30
/* 813BC138 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813BC13C | 38 84 00 10 */	addi r4, r4, 0x10
/* 813BC140 | 7D 89 03 A6 */	mtctr r12
/* 813BC144 | 4E 80 04 21 */	bctrl
/* 813BC148 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BC14C | 41 82 00 38 */	beq .L_813BC184
/* 813BC150 | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 813BC154 | 80 1F 00 78 */	lwz r0, 0x78(r31)
/* 813BC158 | 38 63 00 01 */	addi r3, r3, 0x1
/* 813BC15C | 1C 63 00 0A */	mulli r3, r3, 0xa
/* 813BC160 | 7C 03 00 00 */	cmpw r3, r0
/* 813BC164 | 40 80 00 20 */	bge .L_813BC184
/* 813BC168 | 7F E3 FB 78 */	mr r3, r31
/* 813BC16C | 48 00 05 19 */	bl start_rloaded__Q33ipl5scene10FaceSelectFv
/* 813BC170 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813BC174 | 38 00 00 02 */	li r0, 0x2
/* 813BC178 | 90 7F 00 70 */	stw r3, 0x70(r31)
/* 813BC17C | 90 1F 00 6C */	stw r0, 0x6c(r31)
/* 813BC180 | 48 00 00 64 */	b .L_813BC1E4
.L_813BC184:
/* 813BC184 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813BC188 | 3C 80 06 00 */	lis r4, 0x600
/* 813BC18C | 7F C3 F3 78 */	mr r3, r30
/* 813BC190 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813BC194 | 38 84 00 10 */	addi r4, r4, 0x10
/* 813BC198 | 7D 89 03 A6 */	mtctr r12
/* 813BC19C | 4E 80 04 21 */	bctrl
/* 813BC1A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BC1A4 | 41 82 00 40 */	beq .L_813BC1E4
/* 813BC1A8 | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 813BC1AC | 80 1F 00 78 */	lwz r0, 0x78(r31)
/* 813BC1B0 | 38 63 00 01 */	addi r3, r3, 0x1
/* 813BC1B4 | 1C 63 00 0A */	mulli r3, r3, 0xa
/* 813BC1B8 | 7C 03 00 00 */	cmpw r3, r0
/* 813BC1BC | 40 80 00 28 */	bge .L_813BC1E4
/* 813BC1C0 | 80 1F 00 70 */	lwz r0, 0x70(r31)
/* 813BC1C4 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813BC1C8 | 40 82 00 1C */	bne .L_813BC1E4
/* 813BC1CC | 7F E3 FB 78 */	mr r3, r31
/* 813BC1D0 | 48 00 04 B5 */	bl start_rloaded__Q33ipl5scene10FaceSelectFv
/* 813BC1D4 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813BC1D8 | 38 00 00 02 */	li r0, 0x2
/* 813BC1DC | 90 7F 00 70 */	stw r3, 0x70(r31)
/* 813BC1E0 | 90 1F 00 6C */	stw r0, 0x6c(r31)
.L_813BC1E4:
/* 813BC1E4 | 3B A0 00 00 */	li r29, 0x0
/* 813BC1E8 | 3B C0 00 00 */	li r30, 0x0
.L_813BC1EC:
/* 813BC1EC | 7C 7F F2 14 */	add r3, r31, r30
/* 813BC1F0 | 80 63 02 F0 */	lwz r3, 0x2f0(r3)
/* 813BC1F4 | 48 01 53 B9 */	bl calc__Q33ipl5scene11TextBalloonFv
/* 813BC1F8 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 813BC1FC | 3B DE 00 04 */	addi r30, r30, 0x4
/* 813BC200 | 2C 1D 00 0A */	cmpwi r29, 0xa
/* 813BC204 | 41 80 FF E8 */	blt .L_813BC1EC
/* 813BC208 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813BC20C | 48 23 D3 09 */	bl _restgpr_29
/* 813BC210 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813BC214 | 7C 08 03 A6 */	mtlr r0
/* 813BC218 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813BC21C | 4E 80 00 20 */	blr
.endfn stt_normal__Q33ipl5scene10FaceSelectFv

# .text:0x117C | 0x813BC220 | size: 0xAC
# ipl::scene::FaceSelect::stt_wait_lloaded()
.fn stt_wait_lloaded__Q33ipl5scene10FaceSelectFv, global
/* 813BC220 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813BC224 | 7C 08 02 A6 */	mflr r0
/* 813BC228 | 38 E0 00 01 */	li r7, 0x1
/* 813BC22C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813BC230 | 38 00 00 0A */	li r0, 0xa
/* 813BC234 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813BC238 | 7C 7F 1B 78 */	mr r31, r3
/* 813BC23C | 80 83 02 40 */	lwz r4, 0x240(r3)
/* 813BC240 | 1C A4 00 50 */	mulli r5, r4, 0x50
/* 813BC244 | 38 80 00 00 */	li r4, 0x0
/* 813BC248 | 7C C3 2A 14 */	add r6, r3, r5
/* 813BC24C | 7C 09 03 A6 */	mtctr r0
.L_813BC250:
/* 813BC250 | 7C 66 22 14 */	add r3, r6, r4
/* 813BC254 | 38 A0 00 01 */	li r5, 0x1
/* 813BC258 | 88 03 02 44 */	lbz r0, 0x244(r3)
/* 813BC25C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BC260 | 41 82 00 14 */	beq .L_813BC274
/* 813BC264 | 88 03 02 45 */	lbz r0, 0x245(r3)
/* 813BC268 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BC26C | 40 82 00 08 */	bne .L_813BC274
/* 813BC270 | 38 A0 00 00 */	li r5, 0x0
.L_813BC274:
/* 813BC274 | 7C E3 28 38 */	and r3, r7, r5
/* 813BC278 | 38 84 00 08 */	addi r4, r4, 0x8
/* 813BC27C | 30 03 FF FF */	subic r0, r3, 0x1
/* 813BC280 | 7C E0 19 10 */	subfe r7, r0, r3
/* 813BC284 | 42 00 FF CC */	bdnz .L_813BC250
/* 813BC288 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 813BC28C | 41 82 00 2C */	beq .L_813BC2B8
/* 813BC290 | 3C 80 81 65 */	lis r4, lbl_8164F290@ha
/* 813BC294 | 7F E3 FB 78 */	mr r3, r31
/* 813BC298 | 38 84 F2 90 */	addi r4, r4, lbl_8164F290@l
/* 813BC29C | 48 00 0C 4D */	bl set_face_pane__Q33ipl5scene10FaceSelectFPPCc
/* 813BC2A0 | 7F E3 FB 78 */	mr r3, r31
/* 813BC2A4 | 48 00 04 95 */	bl start_lscroll__Q33ipl5scene10FaceSelectFv
/* 813BC2A8 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813BC2AC | 38 00 00 03 */	li r0, 0x3
/* 813BC2B0 | 90 7F 00 70 */	stw r3, 0x70(r31)
/* 813BC2B4 | 90 1F 00 6C */	stw r0, 0x6c(r31)
.L_813BC2B8:
/* 813BC2B8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813BC2BC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813BC2C0 | 7C 08 03 A6 */	mtlr r0
/* 813BC2C4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813BC2C8 | 4E 80 00 20 */	blr
.endfn stt_wait_lloaded__Q33ipl5scene10FaceSelectFv

# .text:0x1228 | 0x813BC2CC | size: 0xAC
# ipl::scene::FaceSelect::stt_wait_rloaded()
.fn stt_wait_rloaded__Q33ipl5scene10FaceSelectFv, global
/* 813BC2CC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813BC2D0 | 7C 08 02 A6 */	mflr r0
/* 813BC2D4 | 38 E0 00 01 */	li r7, 0x1
/* 813BC2D8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813BC2DC | 38 00 00 0A */	li r0, 0xa
/* 813BC2E0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813BC2E4 | 7C 7F 1B 78 */	mr r31, r3
/* 813BC2E8 | 80 83 02 40 */	lwz r4, 0x240(r3)
/* 813BC2EC | 1C A4 00 50 */	mulli r5, r4, 0x50
/* 813BC2F0 | 38 80 00 00 */	li r4, 0x0
/* 813BC2F4 | 7C C3 2A 14 */	add r6, r3, r5
/* 813BC2F8 | 7C 09 03 A6 */	mtctr r0
.L_813BC2FC:
/* 813BC2FC | 7C 66 22 14 */	add r3, r6, r4
/* 813BC300 | 38 A0 00 01 */	li r5, 0x1
/* 813BC304 | 88 03 02 44 */	lbz r0, 0x244(r3)
/* 813BC308 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BC30C | 41 82 00 14 */	beq .L_813BC320
/* 813BC310 | 88 03 02 45 */	lbz r0, 0x245(r3)
/* 813BC314 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BC318 | 40 82 00 08 */	bne .L_813BC320
/* 813BC31C | 38 A0 00 00 */	li r5, 0x0
.L_813BC320:
/* 813BC320 | 7C E3 28 38 */	and r3, r7, r5
/* 813BC324 | 38 84 00 08 */	addi r4, r4, 0x8
/* 813BC328 | 30 03 FF FF */	subic r0, r3, 0x1
/* 813BC32C | 7C E0 19 10 */	subfe r7, r0, r3
/* 813BC330 | 42 00 FF CC */	bdnz .L_813BC2FC
/* 813BC334 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 813BC338 | 41 82 00 2C */	beq .L_813BC364
/* 813BC33C | 3C 80 81 65 */	lis r4, lbl_8164F344@ha
/* 813BC340 | 7F E3 FB 78 */	mr r3, r31
/* 813BC344 | 38 84 F3 44 */	addi r4, r4, lbl_8164F344@l
/* 813BC348 | 48 00 0B A1 */	bl set_face_pane__Q33ipl5scene10FaceSelectFPPCc
/* 813BC34C | 7F E3 FB 78 */	mr r3, r31
/* 813BC350 | 48 00 04 2D */	bl start_rscroll__Q33ipl5scene10FaceSelectFv
/* 813BC354 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813BC358 | 38 00 00 04 */	li r0, 0x4
/* 813BC35C | 90 7F 00 70 */	stw r3, 0x70(r31)
/* 813BC360 | 90 1F 00 6C */	stw r0, 0x6c(r31)
.L_813BC364:
/* 813BC364 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813BC368 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813BC36C | 7C 08 03 A6 */	mtlr r0
/* 813BC370 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813BC374 | 4E 80 00 20 */	blr
.endfn stt_wait_rloaded__Q33ipl5scene10FaceSelectFv

# .text:0x12D4 | 0x813BC378 | size: 0x12C
# ipl::scene::FaceSelect::stt_wait_lscroll()
.fn stt_wait_lscroll__Q33ipl5scene10FaceSelectFv, global
/* 813BC378 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813BC37C | 7C 08 02 A6 */	mflr r0
/* 813BC380 | 38 80 00 1A */	li r4, 0x1a
/* 813BC384 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813BC388 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813BC38C | 7C 7F 1B 78 */	mr r31, r3
/* 813BC390 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813BC394 | 3F C0 81 65 */	lis r30, lbl_8164F0B8@ha
/* 813BC398 | 3B DE F0 B8 */	addi r30, r30, lbl_8164F0B8@l
/* 813BC39C | 80 A3 00 58 */	lwz r5, 0x58(r3)
/* 813BC3A0 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 813BC3A4 | 48 15 5F 75 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813BC3A8 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813BC3AC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813BC3B0 | 41 82 00 DC */	beq .L_813BC48C
/* 813BC3B4 | 7F E3 FB 78 */	mr r3, r31
/* 813BC3B8 | 38 9E 01 24 */	addi r4, r30, 0x124
/* 813BC3BC | 48 00 0B 2D */	bl set_face_pane__Q33ipl5scene10FaceSelectFPPCc
/* 813BC3C0 | 7F E3 FB 78 */	mr r3, r31
/* 813BC3C4 | 38 9E 01 D8 */	addi r4, r30, 0x1d8
/* 813BC3C8 | 48 00 0C C1 */	bl clear_face_pane__Q33ipl5scene10FaceSelectFPPCc
/* 813BC3CC | 7F E3 FB 78 */	mr r3, r31
/* 813BC3D0 | 38 9E 02 8C */	addi r4, r30, 0x28c
/* 813BC3D4 | 48 00 0C B5 */	bl clear_face_pane__Q33ipl5scene10FaceSelectFPPCc
/* 813BC3D8 | 7F E3 FB 78 */	mr r3, r31
/* 813BC3DC | 48 00 0D 91 */	bl destroy_object__Q33ipl5scene10FaceSelectFv
/* 813BC3E0 | 80 1F 00 74 */	lwz r0, 0x74(r31)
/* 813BC3E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BC3E8 | 41 81 00 38 */	bgt .L_813BC420
/* 813BC3EC | 88 1F 02 E5 */	lbz r0, 0x2e5(r31)
/* 813BC3F0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813BC3F4 | 40 82 00 2C */	bne .L_813BC420
/* 813BC3F8 | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 813BC3FC | 38 80 00 22 */	li r4, 0x22
/* 813BC400 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813BC404 | 48 15 5F 15 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813BC408 | 7C 7E 1B 78 */	mr r30, r3
/* 813BC40C | 4B FA 64 65 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813BC410 | 38 60 00 01 */	li r3, 0x1
/* 813BC414 | 38 00 00 00 */	li r0, 0x0
/* 813BC418 | 90 7E 00 14 */	stw r3, 0x14(r30)
/* 813BC41C | 98 1F 02 E5 */	stb r0, 0x2e5(r31)
.L_813BC420:
/* 813BC420 | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 813BC424 | 80 1F 00 78 */	lwz r0, 0x78(r31)
/* 813BC428 | 38 63 00 01 */	addi r3, r3, 0x1
/* 813BC42C | 1C 63 00 0A */	mulli r3, r3, 0xa
/* 813BC430 | 7C 03 00 00 */	cmpw r3, r0
/* 813BC434 | 40 80 00 34 */	bge .L_813BC468
/* 813BC438 | 88 1F 02 E6 */	lbz r0, 0x2e6(r31)
/* 813BC43C | 28 00 00 01 */	cmplwi r0, 0x1
/* 813BC440 | 41 82 00 28 */	beq .L_813BC468
/* 813BC444 | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 813BC448 | 38 80 00 28 */	li r4, 0x28
/* 813BC44C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813BC450 | 48 15 5E C9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813BC454 | 7C 7E 1B 78 */	mr r30, r3
/* 813BC458 | 4B FA 64 19 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813BC45C | 38 00 00 01 */	li r0, 0x1
/* 813BC460 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 813BC464 | 98 1F 02 E6 */	stb r0, 0x2e6(r31)
.L_813BC468:
/* 813BC468 | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 813BC46C | 38 80 00 1A */	li r4, 0x1a
/* 813BC470 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813BC474 | 48 15 5E A5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813BC478 | 4B FA D7 AD */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813BC47C | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813BC480 | 38 00 00 00 */	li r0, 0x0
/* 813BC484 | 90 7F 00 70 */	stw r3, 0x70(r31)
/* 813BC488 | 90 1F 00 6C */	stw r0, 0x6c(r31)
.L_813BC48C:
/* 813BC48C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813BC490 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813BC494 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813BC498 | 7C 08 03 A6 */	mtlr r0
/* 813BC49C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813BC4A0 | 4E 80 00 20 */	blr
.endfn stt_wait_lscroll__Q33ipl5scene10FaceSelectFv

# .text:0x1400 | 0x813BC4A4 | size: 0x12C
# ipl::scene::FaceSelect::stt_wait_rscroll()
.fn stt_wait_rscroll__Q33ipl5scene10FaceSelectFv, global
/* 813BC4A4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813BC4A8 | 7C 08 02 A6 */	mflr r0
/* 813BC4AC | 38 80 00 1B */	li r4, 0x1b
/* 813BC4B0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813BC4B4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813BC4B8 | 7C 7F 1B 78 */	mr r31, r3
/* 813BC4BC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813BC4C0 | 3F C0 81 65 */	lis r30, lbl_8164F0B8@ha
/* 813BC4C4 | 3B DE F0 B8 */	addi r30, r30, lbl_8164F0B8@l
/* 813BC4C8 | 80 A3 00 58 */	lwz r5, 0x58(r3)
/* 813BC4CC | 38 65 02 8C */	addi r3, r5, 0x28c
/* 813BC4D0 | 48 15 5E 49 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813BC4D4 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813BC4D8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813BC4DC | 41 82 00 DC */	beq .L_813BC5B8
/* 813BC4E0 | 7F E3 FB 78 */	mr r3, r31
/* 813BC4E4 | 38 9E 01 24 */	addi r4, r30, 0x124
/* 813BC4E8 | 48 00 0A 01 */	bl set_face_pane__Q33ipl5scene10FaceSelectFPPCc
/* 813BC4EC | 7F E3 FB 78 */	mr r3, r31
/* 813BC4F0 | 38 9E 01 D8 */	addi r4, r30, 0x1d8
/* 813BC4F4 | 48 00 0B 95 */	bl clear_face_pane__Q33ipl5scene10FaceSelectFPPCc
/* 813BC4F8 | 7F E3 FB 78 */	mr r3, r31
/* 813BC4FC | 38 9E 02 8C */	addi r4, r30, 0x28c
/* 813BC500 | 48 00 0B 89 */	bl clear_face_pane__Q33ipl5scene10FaceSelectFPPCc
/* 813BC504 | 7F E3 FB 78 */	mr r3, r31
/* 813BC508 | 48 00 0C 65 */	bl destroy_object__Q33ipl5scene10FaceSelectFv
/* 813BC50C | 80 1F 00 74 */	lwz r0, 0x74(r31)
/* 813BC510 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BC514 | 40 81 00 34 */	ble .L_813BC548
/* 813BC518 | 88 1F 02 E5 */	lbz r0, 0x2e5(r31)
/* 813BC51C | 28 00 00 01 */	cmplwi r0, 0x1
/* 813BC520 | 41 82 00 28 */	beq .L_813BC548
/* 813BC524 | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 813BC528 | 38 80 00 21 */	li r4, 0x21
/* 813BC52C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813BC530 | 48 15 5D E9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813BC534 | 7C 7E 1B 78 */	mr r30, r3
/* 813BC538 | 4B FA 63 39 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813BC53C | 38 00 00 01 */	li r0, 0x1
/* 813BC540 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 813BC544 | 98 1F 02 E5 */	stb r0, 0x2e5(r31)
.L_813BC548:
/* 813BC548 | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 813BC54C | 80 1F 00 78 */	lwz r0, 0x78(r31)
/* 813BC550 | 38 63 00 01 */	addi r3, r3, 0x1
/* 813BC554 | 1C 63 00 0A */	mulli r3, r3, 0xa
/* 813BC558 | 7C 03 00 00 */	cmpw r3, r0
/* 813BC55C | 41 80 00 38 */	blt .L_813BC594
/* 813BC560 | 88 1F 02 E6 */	lbz r0, 0x2e6(r31)
/* 813BC564 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813BC568 | 40 82 00 2C */	bne .L_813BC594
/* 813BC56C | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 813BC570 | 38 80 00 29 */	li r4, 0x29
/* 813BC574 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813BC578 | 48 15 5D A1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813BC57C | 7C 7E 1B 78 */	mr r30, r3
/* 813BC580 | 4B FA 62 F1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813BC584 | 38 60 00 01 */	li r3, 0x1
/* 813BC588 | 38 00 00 00 */	li r0, 0x0
/* 813BC58C | 90 7E 00 14 */	stw r3, 0x14(r30)
/* 813BC590 | 98 1F 02 E6 */	stb r0, 0x2e6(r31)
.L_813BC594:
/* 813BC594 | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 813BC598 | 38 80 00 1A */	li r4, 0x1a
/* 813BC59C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813BC5A0 | 48 15 5D 79 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813BC5A4 | 4B FA D6 81 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813BC5A8 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813BC5AC | 38 00 00 00 */	li r0, 0x0
/* 813BC5B0 | 90 7F 00 70 */	stw r3, 0x70(r31)
/* 813BC5B4 | 90 1F 00 6C */	stw r0, 0x6c(r31)
.L_813BC5B8:
/* 813BC5B8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813BC5BC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813BC5C0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813BC5C4 | 7C 08 03 A6 */	mtlr r0
/* 813BC5C8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813BC5CC | 4E 80 00 20 */	blr
.endfn stt_wait_rscroll__Q33ipl5scene10FaceSelectFv

# .text:0x152C | 0x813BC5D0 | size: 0xB4
# ipl::scene::FaceSelect::start_lloaded()
.fn start_lloaded__Q33ipl5scene10FaceSelectFv, global
/* 813BC5D0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813BC5D4 | 7C 08 02 A6 */	mflr r0
/* 813BC5D8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813BC5DC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813BC5E0 | 48 23 CE E9 */	bl _savegpr_29
/* 813BC5E4 | 7C 7D 1B 78 */	mr r29, r3
/* 813BC5E8 | 48 00 08 25 */	bl reset_gui__Q33ipl5scene10FaceSelectFv
/* 813BC5EC | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813BC5F0 | 3C 80 81 65 */	lis r4, lbl_8164F72A@ha
/* 813BC5F4 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813BC5F8 | 38 84 F7 2A */	addi r4, r4, lbl_8164F72A@l
/* 813BC5FC | 4B FA EE 71 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813BC600 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 813BC604 | 38 80 00 2B */	li r4, 0x2b
/* 813BC608 | 80 1D 02 40 */	lwz r0, 0x240(r29)
/* 813BC60C | 38 A3 FF FF */	subi r5, r3, 0x1
/* 813BC610 | 80 7D 00 58 */	lwz r3, 0x58(r29)
/* 813BC614 | 20 00 00 01 */	subfic r0, r0, 0x1
/* 813BC618 | 90 BD 00 74 */	stw r5, 0x74(r29)
/* 813BC61C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813BC620 | 90 1D 02 40 */	stw r0, 0x240(r29)
/* 813BC624 | 48 15 5C F5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813BC628 | 7C 7F 1B 78 */	mr r31, r3
/* 813BC62C | 4B FA 62 45 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813BC630 | 38 00 00 01 */	li r0, 0x1
/* 813BC634 | 7F A3 EB 78 */	mr r3, r29
/* 813BC638 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 813BC63C | 48 00 06 C5 */	bl set_page__Q33ipl5scene10FaceSelectFv
/* 813BC640 | 7F A3 EB 78 */	mr r3, r29
/* 813BC644 | 48 00 0B ED */	bl read_face__Q33ipl5scene10FaceSelectFv
/* 813BC648 | 3B C0 00 00 */	li r30, 0x0
/* 813BC64C | 3B E0 00 00 */	li r31, 0x0
.L_813BC650:
/* 813BC650 | 7C 7D FA 14 */	add r3, r29, r31
/* 813BC654 | 80 63 02 F0 */	lwz r3, 0x2f0(r3)
/* 813BC658 | 48 01 53 55 */	bl fadeoutForce__Q33ipl5scene11TextBalloonFv
/* 813BC65C | 3B DE 00 01 */	addi r30, r30, 0x1
/* 813BC660 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813BC664 | 2C 1E 00 0A */	cmpwi r30, 0xa
/* 813BC668 | 41 80 FF E8 */	blt .L_813BC650
/* 813BC66C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813BC670 | 48 23 CE A5 */	bl _restgpr_29
/* 813BC674 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813BC678 | 7C 08 03 A6 */	mtlr r0
/* 813BC67C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813BC680 | 4E 80 00 20 */	blr
.endfn start_lloaded__Q33ipl5scene10FaceSelectFv

# .text:0x15E0 | 0x813BC684 | size: 0xB4
# ipl::scene::FaceSelect::start_rloaded()
.fn start_rloaded__Q33ipl5scene10FaceSelectFv, global
/* 813BC684 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813BC688 | 7C 08 02 A6 */	mflr r0
/* 813BC68C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813BC690 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813BC694 | 48 23 CE 35 */	bl _savegpr_29
/* 813BC698 | 7C 7D 1B 78 */	mr r29, r3
/* 813BC69C | 48 00 07 71 */	bl reset_gui__Q33ipl5scene10FaceSelectFv
/* 813BC6A0 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813BC6A4 | 3C 80 81 65 */	lis r4, lbl_8164F72A@ha
/* 813BC6A8 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813BC6AC | 38 84 F7 2A */	addi r4, r4, lbl_8164F72A@l
/* 813BC6B0 | 4B FA ED BD */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813BC6B4 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 813BC6B8 | 38 80 00 2B */	li r4, 0x2b
/* 813BC6BC | 80 1D 02 40 */	lwz r0, 0x240(r29)
/* 813BC6C0 | 38 A3 00 01 */	addi r5, r3, 0x1
/* 813BC6C4 | 80 7D 00 58 */	lwz r3, 0x58(r29)
/* 813BC6C8 | 20 00 00 01 */	subfic r0, r0, 0x1
/* 813BC6CC | 90 BD 00 74 */	stw r5, 0x74(r29)
/* 813BC6D0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813BC6D4 | 90 1D 02 40 */	stw r0, 0x240(r29)
/* 813BC6D8 | 48 15 5C 41 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813BC6DC | 7C 7F 1B 78 */	mr r31, r3
/* 813BC6E0 | 4B FA 61 91 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813BC6E4 | 38 00 00 01 */	li r0, 0x1
/* 813BC6E8 | 7F A3 EB 78 */	mr r3, r29
/* 813BC6EC | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 813BC6F0 | 48 00 06 11 */	bl set_page__Q33ipl5scene10FaceSelectFv
/* 813BC6F4 | 7F A3 EB 78 */	mr r3, r29
/* 813BC6F8 | 48 00 0B 39 */	bl read_face__Q33ipl5scene10FaceSelectFv
/* 813BC6FC | 3B C0 00 00 */	li r30, 0x0
/* 813BC700 | 3B E0 00 00 */	li r31, 0x0
.L_813BC704:
/* 813BC704 | 7C 7D FA 14 */	add r3, r29, r31
/* 813BC708 | 80 63 02 F0 */	lwz r3, 0x2f0(r3)
/* 813BC70C | 48 01 52 A1 */	bl fadeoutForce__Q33ipl5scene11TextBalloonFv
/* 813BC710 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 813BC714 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813BC718 | 2C 1E 00 0A */	cmpwi r30, 0xa
/* 813BC71C | 41 80 FF E8 */	blt .L_813BC704
/* 813BC720 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813BC724 | 48 23 CD F1 */	bl _restgpr_29
/* 813BC728 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813BC72C | 7C 08 03 A6 */	mtlr r0
/* 813BC730 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813BC734 | 4E 80 00 20 */	blr
.endfn start_rloaded__Q33ipl5scene10FaceSelectFv

# .text:0x1694 | 0x813BC738 | size: 0x44
# ipl::scene::FaceSelect::start_lscroll()
.fn start_lscroll__Q33ipl5scene10FaceSelectFv, global
/* 813BC738 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813BC73C | 7C 08 02 A6 */	mflr r0
/* 813BC740 | 38 80 00 1A */	li r4, 0x1a
/* 813BC744 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813BC748 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813BC74C | 80 63 00 58 */	lwz r3, 0x58(r3)
/* 813BC750 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813BC754 | 48 15 5B C5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813BC758 | 7C 7F 1B 78 */	mr r31, r3
/* 813BC75C | 4B FA 61 15 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813BC760 | 38 00 00 01 */	li r0, 0x1
/* 813BC764 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 813BC768 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813BC76C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813BC770 | 7C 08 03 A6 */	mtlr r0
/* 813BC774 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813BC778 | 4E 80 00 20 */	blr
.endfn start_lscroll__Q33ipl5scene10FaceSelectFv

# .text:0x16D8 | 0x813BC77C | size: 0x44
# ipl::scene::FaceSelect::start_rscroll()
.fn start_rscroll__Q33ipl5scene10FaceSelectFv, global
/* 813BC77C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813BC780 | 7C 08 02 A6 */	mflr r0
/* 813BC784 | 38 80 00 1B */	li r4, 0x1b
/* 813BC788 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813BC78C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813BC790 | 80 63 00 58 */	lwz r3, 0x58(r3)
/* 813BC794 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813BC798 | 48 15 5B 81 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813BC79C | 7C 7F 1B 78 */	mr r31, r3
/* 813BC7A0 | 4B FA 60 D1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813BC7A4 | 38 00 00 01 */	li r0, 0x1
/* 813BC7A8 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 813BC7AC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813BC7B0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813BC7B4 | 7C 08 03 A6 */	mtlr r0
/* 813BC7B8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813BC7BC | 4E 80 00 20 */	blr
.endfn start_rscroll__Q33ipl5scene10FaceSelectFv

# .text:0x171C | 0x813BC7C0 | size: 0x194
# ipl::scene::FaceSelect::start_point_event(const char*, ipl::controller::Interface*)
.fn start_point_event__Q33ipl5scene10FaceSelectFPCcPQ33ipl10controller9Interface, global
/* 813BC7C0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813BC7C4 | 7C 08 02 A6 */	mflr r0
/* 813BC7C8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813BC7CC | 39 61 00 30 */	addi r11, r1, 0x30
/* 813BC7D0 | 48 23 CC ED */	bl _savegpr_26
/* 813BC7D4 | 7C 7A 1B 78 */	mr r26, r3
/* 813BC7D8 | 7C 9C 23 78 */	mr r28, r4
/* 813BC7DC | 7C BB 2B 78 */	mr r27, r5
/* 813BC7E0 | 48 00 04 61 */	bl get_button_no__Q33ipl5scene10FaceSelectFPCc
/* 813BC7E4 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813BC7E8 | 7C 7D 1B 78 */	mr r29, r3
/* 813BC7EC | 41 82 01 50 */	beq .L_813BC93C
/* 813BC7F0 | 2C 03 00 0A */	cmpwi r3, 0xa
/* 813BC7F4 | 41 82 00 20 */	beq .L_813BC814
/* 813BC7F8 | 2C 03 00 0B */	cmpwi r3, 0xb
/* 813BC7FC | 41 82 00 18 */	beq .L_813BC814
/* 813BC800 | 7F 43 D3 78 */	mr r3, r26
/* 813BC804 | 7F A4 EB 78 */	mr r4, r29
/* 813BC808 | 48 00 04 AD */	bl is_exist__Q33ipl5scene10FaceSelectCFi
/* 813BC80C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BC810 | 41 82 01 18 */	beq .L_813BC928
.L_813BC814:
/* 813BC814 | 57 BE 10 3A */	slwi r30, r29, 2
/* 813BC818 | 7C 7A F2 14 */	add r3, r26, r30
/* 813BC81C | 80 03 02 0C */	lwz r0, 0x20c(r3)
/* 813BC820 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BC824 | 40 82 01 04 */	bne .L_813BC928
/* 813BC828 | 2C 1D 00 0B */	cmpwi r29, 0xb
/* 813BC82C | 41 82 00 1C */	beq .L_813BC848
/* 813BC830 | 40 80 00 20 */	bge .L_813BC850
/* 813BC834 | 2C 1D 00 0A */	cmpwi r29, 0xa
/* 813BC838 | 40 80 00 08 */	bge .L_813BC840
/* 813BC83C | 48 00 00 14 */	b .L_813BC850
.L_813BC840:
/* 813BC840 | 3B 80 00 1C */	li r28, 0x1c
/* 813BC844 | 48 00 00 88 */	b .L_813BC8CC
.L_813BC848:
/* 813BC848 | 3B 80 00 23 */	li r28, 0x23
/* 813BC84C | 48 00 00 80 */	b .L_813BC8CC
.L_813BC850:
/* 813BC850 | 80 7A 00 58 */	lwz r3, 0x58(r26)
/* 813BC854 | 7F 84 E3 78 */	mr r4, r28
/* 813BC858 | 3B 9D 00 06 */	addi r28, r29, 0x6
/* 813BC85C | 38 A0 00 01 */	li r5, 0x1
/* 813BC860 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813BC864 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BC868 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813BC86C | 7D 89 03 A6 */	mtctr r12
/* 813BC870 | 4E 80 04 21 */	bctrl
/* 813BC874 | C0 22 86 18 */	lfs f1, lbl_81694A18@sda21(r0)
/* 813BC878 | 7C 7F 1B 78 */	mr r31, r3
/* 813BC87C | 38 61 00 08 */	addi r3, r1, 0x8
/* 813BC880 | FC 40 08 90 */	fmr f2, f1
/* 813BC884 | FC 60 08 90 */	fmr f3, f1
/* 813BC888 | 4B FA 61 D5 */	bl __ct__Q33ipl4math4VEC3Ffff
/* 813BC88C | 38 81 00 08 */	addi r4, r1, 0x8
/* 813BC890 | 38 7F 00 84 */	addi r3, r31, 0x84
/* 813BC894 | 7C 85 23 78 */	mr r5, r4
/* 813BC898 | 48 18 4C 25 */	bl fn_815414BC
/* 813BC89C | C0 22 86 28 */	lfs f1, lbl_81694A28@sda21(r0)
/* 813BC8A0 | 7F FA F2 14 */	add r31, r26, r30
/* 813BC8A4 | C0 01 00 0C */	lfs f0, 0xc(r1)
/* 813BC8A8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813BC8AC | 38 A0 00 00 */	li r5, 0x0
/* 813BC8B0 | 38 C0 00 00 */	li r6, 0x0
/* 813BC8B4 | EC 00 08 2A */	fadds f0, f0, f1
/* 813BC8B8 | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 813BC8BC | 80 7F 02 F0 */	lwz r3, 0x2f0(r31)
/* 813BC8C0 | 48 01 4F 0D */	bl setPos__Q33ipl5scene11TextBalloonFRCQ33ipl4math4VEC3bi
/* 813BC8C4 | 80 7F 02 F0 */	lwz r3, 0x2f0(r31)
/* 813BC8C8 | 48 01 4E 51 */	bl fadein__Q33ipl5scene11TextBalloonFv
.L_813BC8CC:
/* 813BC8CC | 2C 1C FF FF */	cmpwi r28, -0x1
/* 813BC8D0 | 41 82 00 58 */	beq .L_813BC928
/* 813BC8D4 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813BC8D8 | 3C 80 81 65 */	lis r4, lbl_8164F742@ha
/* 813BC8DC | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813BC8E0 | 38 84 F7 42 */	addi r4, r4, lbl_8164F742@l
/* 813BC8E4 | 4B FA EB 89 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813BC8E8 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 813BC8EC | 41 82 00 1C */	beq .L_813BC908
/* 813BC8F0 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 813BC8F4 | 7F 63 DB 78 */	mr r3, r27
/* 813BC8F8 | 38 80 00 00 */	li r4, 0x0
/* 813BC8FC | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813BC900 | 7D 89 03 A6 */	mtctr r12
/* 813BC904 | 4E 80 04 21 */	bctrl
.L_813BC908:
/* 813BC908 | 80 7A 00 58 */	lwz r3, 0x58(r26)
/* 813BC90C | 57 84 04 3E */	clrlwi r4, r28, 16
/* 813BC910 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813BC914 | 48 15 5A 05 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813BC918 | 7C 7F 1B 78 */	mr r31, r3
/* 813BC91C | 4B FA 5F 55 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813BC920 | 38 00 00 01 */	li r0, 0x1
/* 813BC924 | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_813BC928:
/* 813BC928 | 57 A0 10 3A */	slwi r0, r29, 2
/* 813BC92C | 7C 9A 02 14 */	add r4, r26, r0
/* 813BC930 | 80 64 02 0C */	lwz r3, 0x20c(r4)
/* 813BC934 | 38 03 00 01 */	addi r0, r3, 0x1
/* 813BC938 | 90 04 02 0C */	stw r0, 0x20c(r4)
.L_813BC93C:
/* 813BC93C | 39 61 00 30 */	addi r11, r1, 0x30
/* 813BC940 | 48 23 CB C9 */	bl _restgpr_26
/* 813BC944 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813BC948 | 7C 08 03 A6 */	mtlr r0
/* 813BC94C | 38 21 00 30 */	addi r1, r1, 0x30
/* 813BC950 | 4E 80 00 20 */	blr
.endfn start_point_event__Q33ipl5scene10FaceSelectFPCcPQ33ipl10controller9Interface

# .text:0x18B0 | 0x813BC954 | size: 0xEC
# ipl::scene::FaceSelect::start_left_event(const char*)
.fn start_left_event__Q33ipl5scene10FaceSelectFPCc, global
/* 813BC954 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813BC958 | 7C 08 02 A6 */	mflr r0
/* 813BC95C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813BC960 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813BC964 | 48 23 CB 65 */	bl _savegpr_29
/* 813BC968 | 7C 7D 1B 78 */	mr r29, r3
/* 813BC96C | 48 00 02 D5 */	bl get_button_no__Q33ipl5scene10FaceSelectFPCc
/* 813BC970 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813BC974 | 7C 7E 1B 78 */	mr r30, r3
/* 813BC978 | 41 82 00 B0 */	beq .L_813BCA28
/* 813BC97C | 2C 03 00 0A */	cmpwi r3, 0xa
/* 813BC980 | 41 82 00 20 */	beq .L_813BC9A0
/* 813BC984 | 2C 03 00 0B */	cmpwi r3, 0xb
/* 813BC988 | 41 82 00 18 */	beq .L_813BC9A0
/* 813BC98C | 7F A3 EB 78 */	mr r3, r29
/* 813BC990 | 7F C4 F3 78 */	mr r4, r30
/* 813BC994 | 48 00 03 21 */	bl is_exist__Q33ipl5scene10FaceSelectCFi
/* 813BC998 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BC99C | 41 82 00 78 */	beq .L_813BCA14
.L_813BC9A0:
/* 813BC9A0 | 57 C4 10 3A */	slwi r4, r30, 2
/* 813BC9A4 | 7C 7D 22 14 */	add r3, r29, r4
/* 813BC9A8 | 80 03 02 0C */	lwz r0, 0x20c(r3)
/* 813BC9AC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813BC9B0 | 40 82 00 64 */	bne .L_813BCA14
/* 813BC9B4 | 2C 1E 00 0B */	cmpwi r30, 0xb
/* 813BC9B8 | 41 82 00 1C */	beq .L_813BC9D4
/* 813BC9BC | 40 80 00 20 */	bge .L_813BC9DC
/* 813BC9C0 | 2C 1E 00 0A */	cmpwi r30, 0xa
/* 813BC9C4 | 40 80 00 08 */	bge .L_813BC9CC
/* 813BC9C8 | 48 00 00 14 */	b .L_813BC9DC
.L_813BC9CC:
/* 813BC9CC | 3B E0 00 1D */	li r31, 0x1d
/* 813BC9D0 | 48 00 00 1C */	b .L_813BC9EC
.L_813BC9D4:
/* 813BC9D4 | 3B E0 00 24 */	li r31, 0x24
/* 813BC9D8 | 48 00 00 14 */	b .L_813BC9EC
.L_813BC9DC:
/* 813BC9DC | 7C 7D 22 14 */	add r3, r29, r4
/* 813BC9E0 | 3B FE 00 10 */	addi r31, r30, 0x10
/* 813BC9E4 | 80 63 02 F0 */	lwz r3, 0x2f0(r3)
/* 813BC9E8 | 48 01 4F C5 */	bl fadeoutForce__Q33ipl5scene11TextBalloonFv
.L_813BC9EC:
/* 813BC9EC | 2C 1F FF FF */	cmpwi r31, -0x1
/* 813BC9F0 | 41 82 00 24 */	beq .L_813BCA14
/* 813BC9F4 | 80 7D 00 58 */	lwz r3, 0x58(r29)
/* 813BC9F8 | 57 E4 04 3E */	clrlwi r4, r31, 16
/* 813BC9FC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813BCA00 | 48 15 59 19 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813BCA04 | 7C 7F 1B 78 */	mr r31, r3
/* 813BCA08 | 4B FA 5E 69 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813BCA0C | 38 00 00 01 */	li r0, 0x1
/* 813BCA10 | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_813BCA14:
/* 813BCA14 | 57 C0 10 3A */	slwi r0, r30, 2
/* 813BCA18 | 7C 9D 02 14 */	add r4, r29, r0
/* 813BCA1C | 80 64 02 0C */	lwz r3, 0x20c(r4)
/* 813BCA20 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813BCA24 | 90 04 02 0C */	stw r0, 0x20c(r4)
.L_813BCA28:
/* 813BCA28 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813BCA2C | 48 23 CA E9 */	bl _restgpr_29
/* 813BCA30 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813BCA34 | 7C 08 03 A6 */	mtlr r0
/* 813BCA38 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813BCA3C | 4E 80 00 20 */	blr
.endfn start_left_event__Q33ipl5scene10FaceSelectFPCc

# .text:0x199C | 0x813BCA40 | size: 0x200
# ipl::scene::FaceSelect::start_trig_event(const char*)
.fn start_trig_event__Q33ipl5scene10FaceSelectFPCc, global
/* 813BCA40 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813BCA44 | 7C 08 02 A6 */	mflr r0
/* 813BCA48 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813BCA4C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813BCA50 | 48 23 CA 75 */	bl _savegpr_28
/* 813BCA54 | 7C 7E 1B 78 */	mr r30, r3
/* 813BCA58 | 48 00 01 E9 */	bl get_button_no__Q33ipl5scene10FaceSelectFPCc
/* 813BCA5C | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813BCA60 | 7C 7F 1B 78 */	mr r31, r3
/* 813BCA64 | 41 82 01 C4 */	beq .L_813BCC28
/* 813BCA68 | 2C 03 00 0A */	cmpwi r3, 0xa
/* 813BCA6C | 40 82 00 48 */	bne .L_813BCAB4
/* 813BCA70 | 80 1E 00 74 */	lwz r0, 0x74(r30)
/* 813BCA74 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BCA78 | 40 81 00 3C */	ble .L_813BCAB4
/* 813BCA7C | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BCA80 | 38 80 00 1E */	li r4, 0x1e
/* 813BCA84 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813BCA88 | 48 15 58 91 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813BCA8C | 7C 7F 1B 78 */	mr r31, r3
/* 813BCA90 | 4B FA 5D E1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813BCA94 | 3B A0 00 01 */	li r29, 0x1
/* 813BCA98 | 7F C3 F3 78 */	mr r3, r30
/* 813BCA9C | 93 BF 00 14 */	stw r29, 0x14(r31)
/* 813BCAA0 | 4B FF FB 31 */	bl start_lloaded__Q33ipl5scene10FaceSelectFv
/* 813BCAA4 | 80 1E 00 6C */	lwz r0, 0x6c(r30)
/* 813BCAA8 | 90 1E 00 70 */	stw r0, 0x70(r30)
/* 813BCAAC | 93 BE 00 6C */	stw r29, 0x6c(r30)
/* 813BCAB0 | 48 00 01 78 */	b .L_813BCC28
.L_813BCAB4:
/* 813BCAB4 | 2C 03 00 0B */	cmpwi r3, 0xb
/* 813BCAB8 | 40 82 00 58 */	bne .L_813BCB10
/* 813BCABC | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 813BCAC0 | 80 1E 00 78 */	lwz r0, 0x78(r30)
/* 813BCAC4 | 38 63 00 01 */	addi r3, r3, 0x1
/* 813BCAC8 | 1C 63 00 0A */	mulli r3, r3, 0xa
/* 813BCACC | 7C 03 00 00 */	cmpw r3, r0
/* 813BCAD0 | 40 80 00 40 */	bge .L_813BCB10
/* 813BCAD4 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BCAD8 | 38 80 00 25 */	li r4, 0x25
/* 813BCADC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813BCAE0 | 48 15 58 39 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813BCAE4 | 7C 7D 1B 78 */	mr r29, r3
/* 813BCAE8 | 4B FA 5D 89 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813BCAEC | 38 00 00 01 */	li r0, 0x1
/* 813BCAF0 | 7F C3 F3 78 */	mr r3, r30
/* 813BCAF4 | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 813BCAF8 | 4B FF FB 8D */	bl start_rloaded__Q33ipl5scene10FaceSelectFv
/* 813BCAFC | 80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 813BCB00 | 38 00 00 02 */	li r0, 0x2
/* 813BCB04 | 90 7E 00 70 */	stw r3, 0x70(r30)
/* 813BCB08 | 90 1E 00 6C */	stw r0, 0x6c(r30)
/* 813BCB0C | 48 00 01 1C */	b .L_813BCC28
.L_813BCB10:
/* 813BCB10 | 7F C3 F3 78 */	mr r3, r30
/* 813BCB14 | 7F E4 FB 78 */	mr r4, r31
/* 813BCB18 | 48 00 01 9D */	bl is_exist__Q33ipl5scene10FaceSelectCFi
/* 813BCB1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BCB20 | 41 82 01 08 */	beq .L_813BCC28
/* 813BCB24 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813BCB28 | 38 80 00 05 */	li r4, 0x5
/* 813BCB2C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813BCB30 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813BCB34 | 48 04 E6 05 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813BCB38 | 7C 7D 1B 78 */	mr r29, r3
/* 813BCB3C | 38 80 00 0C */	li r4, 0xc
/* 813BCB40 | 4B FE 00 19 */	bl iplButton_8139CB58
/* 813BCB44 | 80 1E 02 E8 */	lwz r0, 0x2e8(r30)
/* 813BCB48 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813BCB4C | 40 82 00 14 */	bne .L_813BCB60
/* 813BCB50 | 7F A3 EB 78 */	mr r3, r29
/* 813BCB54 | 38 80 00 0B */	li r4, 0xb
/* 813BCB58 | 4B FE 08 D1 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 813BCB5C | 48 00 00 10 */	b .L_813BCB6C
.L_813BCB60:
/* 813BCB60 | 7F A3 EB 78 */	mr r3, r29
/* 813BCB64 | 38 80 00 0F */	li r4, 0xf
/* 813BCB68 | 4B FE 08 C1 */	bl reserveAnm__Q33ipl5scene6ButtonFi
.L_813BCB6C:
/* 813BCB6C | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813BCB70 | 3C 80 81 65 */	lis r4, lbl_8164F758@ha
/* 813BCB74 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813BCB78 | 38 84 F7 58 */	addi r4, r4, lbl_8164F758@l
/* 813BCB7C | 4B FA E8 F1 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813BCB80 | 88 1E 02 E6 */	lbz r0, 0x2e6(r30)
/* 813BCB84 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BCB88 | 41 82 00 24 */	beq .L_813BCBAC
/* 813BCB8C | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BCB90 | 38 80 00 29 */	li r4, 0x29
/* 813BCB94 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813BCB98 | 48 15 57 81 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813BCB9C | 7C 7D 1B 78 */	mr r29, r3
/* 813BCBA0 | 4B FA 5C D1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813BCBA4 | 38 00 00 01 */	li r0, 0x1
/* 813BCBA8 | 90 1D 00 14 */	stw r0, 0x14(r29)
.L_813BCBAC:
/* 813BCBAC | 88 1E 02 E5 */	lbz r0, 0x2e5(r30)
/* 813BCBB0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BCBB4 | 41 82 00 24 */	beq .L_813BCBD8
/* 813BCBB8 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813BCBBC | 38 80 00 22 */	li r4, 0x22
/* 813BCBC0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813BCBC4 | 48 15 57 55 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813BCBC8 | 7C 7D 1B 78 */	mr r29, r3
/* 813BCBCC | 4B FA 5C A5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813BCBD0 | 38 00 00 01 */	li r0, 0x1
/* 813BCBD4 | 90 1D 00 14 */	stw r0, 0x14(r29)
.L_813BCBD8:
/* 813BCBD8 | 80 9E 00 74 */	lwz r4, 0x74(r30)
/* 813BCBDC | 38 00 00 05 */	li r0, 0x5
/* 813BCBE0 | 80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 813BCBE4 | 3B 80 00 00 */	li r28, 0x0
/* 813BCBE8 | 1C 84 00 0A */	mulli r4, r4, 0xa
/* 813BCBEC | 3B A0 00 00 */	li r29, 0x0
/* 813BCBF0 | 7C 9F 22 14 */	add r4, r31, r4
/* 813BCBF4 | 54 84 10 3A */	slwi r4, r4, 2
/* 813BCBF8 | 7C 9E 22 14 */	add r4, r30, r4
/* 813BCBFC | 80 84 00 7C */	lwz r4, 0x7c(r4)
/* 813BCC00 | 90 9E 02 3C */	stw r4, 0x23c(r30)
/* 813BCC04 | 90 7E 00 70 */	stw r3, 0x70(r30)
/* 813BCC08 | 90 1E 00 6C */	stw r0, 0x6c(r30)
.L_813BCC0C:
/* 813BCC0C | 7C 7E EA 14 */	add r3, r30, r29
/* 813BCC10 | 80 63 02 F0 */	lwz r3, 0x2f0(r3)
/* 813BCC14 | 48 01 4A 55 */	bl terminate__Q33ipl5scene11TextBalloonFv
/* 813BCC18 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813BCC1C | 3B BD 00 04 */	addi r29, r29, 0x4
/* 813BCC20 | 2C 1C 00 0A */	cmpwi r28, 0xa
/* 813BCC24 | 41 80 FF E8 */	blt .L_813BCC0C
.L_813BCC28:
/* 813BCC28 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813BCC2C | 48 23 C8 E5 */	bl _restgpr_28
/* 813BCC30 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813BCC34 | 7C 08 03 A6 */	mtlr r0
/* 813BCC38 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813BCC3C | 4E 80 00 20 */	blr
.endfn start_trig_event__Q33ipl5scene10FaceSelectFPCc

# .text:0x1B9C | 0x813BCC40 | size: 0x74
# ipl::scene::FaceSelect::get_button_no(const char*)
.fn get_button_no__Q33ipl5scene10FaceSelectFPCc, global
/* 813BCC40 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813BCC44 | 7C 08 02 A6 */	mflr r0
/* 813BCC48 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813BCC4C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813BCC50 | 48 23 C8 71 */	bl _savegpr_27
/* 813BCC54 | 3F C0 81 65 */	lis r30, lbl_8164F13C@ha
/* 813BCC58 | 7C 9B 23 78 */	mr r27, r4
/* 813BCC5C | 3B DE F1 3C */	addi r30, r30, lbl_8164F13C@l
/* 813BCC60 | 3B A0 FF FF */	li r29, -0x1
/* 813BCC64 | 3B 80 00 00 */	li r28, 0x0
/* 813BCC68 | 3B E0 00 00 */	li r31, 0x0
.L_813BCC6C:
/* 813BCC6C | 7C 7E F8 2E */	lwzx r3, r30, r31
/* 813BCC70 | 7F 64 DB 78 */	mr r4, r27
/* 813BCC74 | 48 24 58 0D */	bl strcmp
/* 813BCC78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BCC7C | 40 82 00 0C */	bne .L_813BCC88
/* 813BCC80 | 7F 9D E3 78 */	mr r29, r28
/* 813BCC84 | 48 00 00 14 */	b .L_813BCC98
.L_813BCC88:
/* 813BCC88 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813BCC8C | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813BCC90 | 2C 1C 00 0C */	cmpwi r28, 0xc
/* 813BCC94 | 41 80 FF D8 */	blt .L_813BCC6C
.L_813BCC98:
/* 813BCC98 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813BCC9C | 7F A3 EB 78 */	mr r3, r29
/* 813BCCA0 | 48 23 C8 6D */	bl _restgpr_27
/* 813BCCA4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813BCCA8 | 7C 08 03 A6 */	mtlr r0
/* 813BCCAC | 38 21 00 20 */	addi r1, r1, 0x20
/* 813BCCB0 | 4E 80 00 20 */	blr
.endfn get_button_no__Q33ipl5scene10FaceSelectFPCc

# .text:0x1C10 | 0x813BCCB4 | size: 0x3C
# ipl::scene::FaceSelect::is_exist(int) const
.fn is_exist__Q33ipl5scene10FaceSelectCFi, global
/* 813BCCB4 | 2C 04 00 0A */	cmpwi r4, 0xa
/* 813BCCB8 | 38 00 00 00 */	li r0, 0x0
/* 813BCCBC | 41 82 00 2C */	beq .L_813BCCE8
/* 813BCCC0 | 2C 04 00 0B */	cmpwi r4, 0xb
/* 813BCCC4 | 41 82 00 24 */	beq .L_813BCCE8
/* 813BCCC8 | 80 03 00 74 */	lwz r0, 0x74(r3)
/* 813BCCCC | 1C 00 00 0A */	mulli r0, r0, 0xa
/* 813BCCD0 | 7C 04 02 14 */	add r0, r4, r0
/* 813BCCD4 | 54 00 10 3A */	slwi r0, r0, 2
/* 813BCCD8 | 7C 63 02 14 */	add r3, r3, r0
/* 813BCCDC | 80 03 00 7C */	lwz r0, 0x7c(r3)
/* 813BCCE0 | 54 00 0F FE */	srwi r0, r0, 31
/* 813BCCE4 | 68 00 00 01 */	xori r0, r0, 0x1
.L_813BCCE8:
/* 813BCCE8 | 7C 03 03 78 */	mr r3, r0
/* 813BCCEC | 4E 80 00 20 */	blr
.endfn is_exist__Q33ipl5scene10FaceSelectCFi

# .text:0x1C4C | 0x813BCCF0 | size: 0x10
# ipl::scene::FaceSelect::change_state(int)
.fn change_state__Q33ipl5scene10FaceSelectFi, global
/* 813BCCF0 | 80 03 00 6C */	lwz r0, 0x6c(r3)
/* 813BCCF4 | 90 03 00 70 */	stw r0, 0x70(r3)
/* 813BCCF8 | 90 83 00 6C */	stw r4, 0x6c(r3)
/* 813BCCFC | 4E 80 00 20 */	blr
.endfn change_state__Q33ipl5scene10FaceSelectFi

# .text:0x1C5C | 0x813BCD00 | size: 0x10C
# ipl::scene::FaceSelect::set_page()
.fn set_page__Q33ipl5scene10FaceSelectFv, global
/* 813BCD00 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813BCD04 | 7C 08 02 A6 */	mflr r0
/* 813BCD08 | 3C 80 81 61 */	lis r4, lbl_81610310@ha
/* 813BCD0C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813BCD10 | 38 84 03 10 */	addi r4, r4, lbl_81610310@l
/* 813BCD14 | 38 00 00 05 */	li r0, 0x5
/* 813BCD18 | 38 C1 00 0C */	addi r6, r1, 0xc
/* 813BCD1C | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 813BCD20 | 38 A4 FF FE */	subi r5, r4, 0x2
/* 813BCD24 | 7C 09 03 A6 */	mtctr r0
.L_813BCD28:
/* 813BCD28 | A0 85 00 02 */	lhz r4, 0x2(r5)
/* 813BCD2C | A4 05 00 04 */	lhzu r0, 0x4(r5)
/* 813BCD30 | B0 86 00 02 */	sth r4, 0x2(r6)
/* 813BCD34 | B4 06 00 04 */	sthu r0, 0x4(r6)
/* 813BCD38 | 42 00 FF F0 */	bdnz .L_813BCD28
/* 813BCD3C | 38 00 00 00 */	li r0, 0x0
/* 813BCD40 | 39 20 00 00 */	li r9, 0x0
/* 813BCD44 | B0 01 00 08 */	sth r0, 0x8(r1)
/* 813BCD48 | B0 01 00 0A */	sth r0, 0xa(r1)
/* 813BCD4C | B0 01 00 0C */	sth r0, 0xc(r1)
/* 813BCD50 | 80 83 00 74 */	lwz r4, 0x74(r3)
/* 813BCD54 | 39 44 00 01 */	addi r10, r4, 0x1
/* 813BCD58 | 2C 0A 00 0A */	cmpwi r10, 0xa
/* 813BCD5C | 41 80 00 2C */	blt .L_813BCD88
/* 813BCD60 | 38 C0 00 0A */	li r6, 0xa
/* 813BCD64 | 38 81 00 0E */	addi r4, r1, 0xe
/* 813BCD68 | 7C AA 33 D6 */	divw r5, r10, r6
/* 813BCD6C | 39 20 00 01 */	li r9, 0x1
/* 813BCD70 | 7C 05 33 D6 */	divw r0, r5, r6
/* 813BCD74 | 7C 00 31 D6 */	mullw r0, r0, r6
/* 813BCD78 | 7C 00 28 50 */	subf r0, r0, r5
/* 813BCD7C | 54 00 08 3C */	slwi r0, r0, 1
/* 813BCD80 | 7C 04 02 2E */	lhzx r0, r4, r0
/* 813BCD84 | B0 01 00 08 */	sth r0, 0x8(r1)
.L_813BCD88:
/* 813BCD88 | 38 A0 00 0A */	li r5, 0xa
/* 813BCD8C | 55 27 08 3C */	slwi r7, r9, 1
/* 813BCD90 | 7C 8A 2B D6 */	divw r4, r10, r5
/* 813BCD94 | 39 29 00 01 */	addi r9, r9, 0x1
/* 813BCD98 | 39 01 00 0E */	addi r8, r1, 0xe
/* 813BCD9C | 55 20 08 3C */	slwi r0, r9, 1
/* 813BCDA0 | 3B E1 00 08 */	addi r31, r1, 0x8
/* 813BCDA4 | 38 C0 00 00 */	li r6, 0x0
/* 813BCDA8 | 7D 24 29 D6 */	mullw r9, r4, r5
/* 813BCDAC | 38 8D 8A E7 */	li r4, lbl_81696B27@sda21
/* 813BCDB0 | 38 A0 00 01 */	li r5, 0x1
/* 813BCDB4 | 7D 29 50 50 */	subf r9, r9, r10
/* 813BCDB8 | 55 29 08 3C */	slwi r9, r9, 1
/* 813BCDBC | 7D 08 4A 2E */	lhzx r8, r8, r9
/* 813BCDC0 | 7D 1F 3B 2E */	sthx r8, r31, r7
/* 813BCDC4 | 7C DF 03 2E */	sthx r6, r31, r0
/* 813BCDC8 | 80 63 00 58 */	lwz r3, 0x58(r3)
/* 813BCDCC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813BCDD0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BCDD4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813BCDD8 | 7D 89 03 A6 */	mtctr r12
/* 813BCDDC | 4E 80 04 21 */	bctrl
/* 813BCDE0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BCDE4 | 7F E4 FB 78 */	mr r4, r31
/* 813BCDE8 | 38 A0 00 00 */	li r5, 0x0
/* 813BCDEC | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813BCDF0 | 7D 89 03 A6 */	mtctr r12
/* 813BCDF4 | 4E 80 04 21 */	bctrl
/* 813BCDF8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813BCDFC | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 813BCE00 | 7C 08 03 A6 */	mtlr r0
/* 813BCE04 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813BCE08 | 4E 80 00 20 */	blr
.endfn set_page__Q33ipl5scene10FaceSelectFv

# .text:0x1D68 | 0x813BCE0C | size: 0xCC
# ipl::scene::FaceSelect::reset_gui()
.fn reset_gui__Q33ipl5scene10FaceSelectFv, global
/* 813BCE0C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813BCE10 | 7C 08 02 A6 */	mflr r0
/* 813BCE14 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813BCE18 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813BCE1C | 48 23 C6 99 */	bl _savegpr_24
/* 813BCE20 | 3B 20 00 00 */	li r25, 0x0
/* 813BCE24 | 3F 80 81 65 */	lis r28, lbl_8164F13C@ha
/* 813BCE28 | 7C 78 1B 78 */	mr r24, r3
/* 813BCE2C | 3B E0 00 00 */	li r31, 0x0
/* 813BCE30 | 7F 3E CB 78 */	mr r30, r25
/* 813BCE34 | 3B 9C F1 3C */	addi r28, r28, lbl_8164F13C@l
/* 813BCE38 | 3B A0 00 01 */	li r29, 0x1
.L_813BCE3C:
/* 813BCE3C | 80 78 00 58 */	lwz r3, 0x58(r24)
/* 813BCE40 | 38 A0 00 01 */	li r5, 0x1
/* 813BCE44 | 7C 9C F8 2E */	lwzx r4, r28, r31
/* 813BCE48 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813BCE4C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BCE50 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813BCE54 | 7D 89 03 A6 */	mtctr r12
/* 813BCE58 | 4E 80 04 21 */	bctrl
/* 813BCE5C | 7C 64 1B 78 */	mr r4, r3
/* 813BCE60 | 80 78 00 64 */	lwz r3, 0x64(r24)
/* 813BCE64 | 4B FA E3 B5 */	bl initPane__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Pane
/* 813BCE68 | 7F 58 FA 14 */	add r26, r24, r31
/* 813BCE6C | 80 1A 02 0C */	lwz r0, 0x20c(r26)
/* 813BCE70 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BCE74 | 41 82 00 3C */	beq .L_813BCEB0
/* 813BCE78 | 7F 03 C3 78 */	mr r3, r24
/* 813BCE7C | 7F 24 CB 78 */	mr r4, r25
/* 813BCE80 | 4B FF FE 35 */	bl is_exist__Q33ipl5scene10FaceSelectCFi
/* 813BCE84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BCE88 | 41 82 00 24 */	beq .L_813BCEAC
/* 813BCE8C | 80 78 00 58 */	lwz r3, 0x58(r24)
/* 813BCE90 | 38 19 00 10 */	addi r0, r25, 0x10
/* 813BCE94 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813BCE98 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813BCE9C | 48 15 54 7D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813BCEA0 | 7C 7B 1B 78 */	mr r27, r3
/* 813BCEA4 | 4B FA 59 CD */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813BCEA8 | 93 BB 00 14 */	stw r29, 0x14(r27)
.L_813BCEAC:
/* 813BCEAC | 93 DA 02 0C */	stw r30, 0x20c(r26)
.L_813BCEB0:
/* 813BCEB0 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 813BCEB4 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813BCEB8 | 2C 19 00 0A */	cmpwi r25, 0xa
/* 813BCEBC | 41 80 FF 80 */	blt .L_813BCE3C
/* 813BCEC0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813BCEC4 | 48 23 C6 3D */	bl _restgpr_24
/* 813BCEC8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813BCECC | 7C 08 03 A6 */	mtlr r0
/* 813BCED0 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813BCED4 | 4E 80 00 20 */	blr
.endfn reset_gui__Q33ipl5scene10FaceSelectFv

# .text:0x1E34 | 0x813BCED8 | size: 0x10
# ipl::scene::nigaoe_make_icon_cb_(ipl::nigaoe::Object*, void*)
.fn nigaoe_make_icon_cb___Q23ipl5sceneFPQ33ipl6nigaoe6ObjectPv, global
/* 813BCED8 | 38 00 00 01 */	li r0, 0x1
/* 813BCEDC | 90 64 00 04 */	stw r3, 0x4(r4)
/* 813BCEE0 | 98 04 00 01 */	stb r0, 0x1(r4)
/* 813BCEE4 | 4E 80 00 20 */	blr
.endfn nigaoe_make_icon_cb___Q23ipl5sceneFPQ33ipl6nigaoe6ObjectPv

# .text:0x1E44 | 0x813BCEE8 | size: 0x1A0
# ipl::scene::FaceSelect::set_face_pane(const char**)
.fn set_face_pane__Q33ipl5scene10FaceSelectFPPCc, global
/* 813BCEE8 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 813BCEEC | 7C 08 02 A6 */	mflr r0
/* 813BCEF0 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 813BCEF4 | 39 61 00 50 */	addi r11, r1, 0x50
/* 813BCEF8 | 48 23 C5 BD */	bl _savegpr_24
/* 813BCEFC | 7C 7D 1B 78 */	mr r29, r3
/* 813BCF00 | 7C 9E 23 78 */	mr r30, r4
/* 813BCF04 | 3B E0 00 00 */	li r31, 0x0
/* 813BCF08 | 3B 80 00 00 */	li r28, 0x0
/* 813BCF0C | 3B 60 00 00 */	li r27, 0x0
/* 813BCF10 | 3F 40 81 65 */	lis r26, lbl_8164F767@ha
.L_813BCF14:
/* 813BCF14 | 80 7D 00 58 */	lwz r3, 0x58(r29)
/* 813BCF18 | 38 A0 00 01 */	li r5, 0x1
/* 813BCF1C | 7C 9E D8 2E */	lwzx r4, r30, r27
/* 813BCF20 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813BCF24 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BCF28 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813BCF2C | 7D 89 03 A6 */	mtctr r12
/* 813BCF30 | 4E 80 04 21 */	bctrl
/* 813BCF34 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BCF38 | 7C 79 1B 78 */	mr r25, r3
/* 813BCF3C | 7C 9E D8 2E */	lwzx r4, r30, r27
/* 813BCF40 | 38 A0 00 01 */	li r5, 0x1
/* 813BCF44 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 813BCF48 | 7D 89 03 A6 */	mtctr r12
/* 813BCF4C | 4E 80 04 21 */	bctrl
/* 813BCF50 | 80 1D 02 40 */	lwz r0, 0x240(r29)
/* 813BCF54 | 7C BC EA 14 */	add r5, r28, r29
/* 813BCF58 | 7C 78 1B 78 */	mr r24, r3
/* 813BCF5C | 1C 00 00 50 */	mulli r0, r0, 0x50
/* 813BCF60 | 7C 80 2A 14 */	add r4, r0, r5
/* 813BCF64 | 80 04 02 48 */	lwz r0, 0x248(r4)
/* 813BCF68 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BCF6C | 41 82 00 34 */	beq .L_813BCFA0
/* 813BCF70 | 88 19 00 CF */	lbz r0, 0xcf(r25)
/* 813BCF74 | 38 80 00 00 */	li r4, 0x0
/* 813BCF78 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 813BCF7C | 60 00 00 01 */	ori r0, r0, 0x1
/* 813BCF80 | 98 19 00 CF */	stb r0, 0xcf(r25)
/* 813BCF84 | 80 1D 02 40 */	lwz r0, 0x240(r29)
/* 813BCF88 | 1C 00 00 50 */	mulli r0, r0, 0x50
/* 813BCF8C | 7C A0 2A 14 */	add r5, r0, r5
/* 813BCF90 | 80 A5 02 48 */	lwz r5, 0x248(r5)
/* 813BCF94 | 38 A5 00 18 */	addi r5, r5, 0x18
/* 813BCF98 | 48 16 AE 85 */	bl fn_81527E1C
/* 813BCF9C | 48 00 00 64 */	b .L_813BD000
.L_813BCFA0:
/* 813BCFA0 | 7F 23 CB 78 */	mr r3, r25
/* 813BCFA4 | 38 80 00 00 */	li r4, 0x0
/* 813BCFA8 | 4B F8 74 6D */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813BCFAC | 80 7D 00 58 */	lwz r3, 0x58(r29)
/* 813BCFB0 | 38 9A F7 67 */	addi r4, r26, lbl_8164F767@l
/* 813BCFB4 | 38 A0 00 01 */	li r5, 0x1
/* 813BCFB8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813BCFBC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BCFC0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813BCFC4 | 7D 89 03 A6 */	mtctr r12
/* 813BCFC8 | 4E 80 04 21 */	bctrl
/* 813BCFCC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BCFD0 | 38 9A F7 67 */	addi r4, r26, lbl_8164F767@l
/* 813BCFD4 | 38 A0 00 01 */	li r5, 0x1
/* 813BCFD8 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 813BCFDC | 7D 89 03 A6 */	mtctr r12
/* 813BCFE0 | 4E 80 04 21 */	bctrl
/* 813BCFE4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813BCFE8 | 38 A0 00 00 */	li r5, 0x0
/* 813BCFEC | 48 16 AD 41 */	bl fn_81527D2C
/* 813BCFF0 | 7F 03 C3 78 */	mr r3, r24
/* 813BCFF4 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813BCFF8 | 38 80 00 00 */	li r4, 0x0
/* 813BCFFC | 48 16 AE 21 */	bl fn_81527E1C
.L_813BD000:
/* 813BD000 | 80 7D 02 40 */	lwz r3, 0x240(r29)
/* 813BD004 | 7C 1C EA 14 */	add r0, r28, r29
/* 813BD008 | 1C 63 00 50 */	mulli r3, r3, 0x50
/* 813BD00C | 7C 63 02 14 */	add r3, r3, r0
/* 813BD010 | 80 63 02 48 */	lwz r3, 0x248(r3)
/* 813BD014 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BD018 | 41 82 00 38 */	beq .L_813BD050
/* 813BD01C | 80 03 00 3C */	lwz r0, 0x3c(r3)
/* 813BD020 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BD024 | 41 80 00 14 */	blt .L_813BD038
/* 813BD028 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 813BD02C | 48 12 87 09 */	bl RFLiGetCharData
/* 813BD030 | 38 83 00 02 */	addi r4, r3, 0x2
/* 813BD034 | 48 00 00 08 */	b .L_813BD03C
.L_813BD038:
/* 813BD038 | 38 80 00 00 */	li r4, 0x0
.L_813BD03C:
/* 813BD03C | 7C 7D DA 14 */	add r3, r29, r27
/* 813BD040 | 38 A0 00 0A */	li r5, 0xa
/* 813BD044 | 80 63 02 F0 */	lwz r3, 0x2f0(r3)
/* 813BD048 | 48 01 45 B9 */	bl init__Q33ipl5scene11TextBalloonFPCwUl
/* 813BD04C | 48 00 00 10 */	b .L_813BD05C
.L_813BD050:
/* 813BD050 | 7C 7D DA 14 */	add r3, r29, r27
/* 813BD054 | 80 63 02 F0 */	lwz r3, 0x2f0(r3)
/* 813BD058 | 48 01 46 11 */	bl terminate__Q33ipl5scene11TextBalloonFv
.L_813BD05C:
/* 813BD05C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 813BD060 | 3B 7B 00 04 */	addi r27, r27, 0x4
/* 813BD064 | 2C 1F 00 0A */	cmpwi r31, 0xa
/* 813BD068 | 3B 9C 00 08 */	addi r28, r28, 0x8
/* 813BD06C | 41 80 FE A8 */	blt .L_813BCF14
/* 813BD070 | 39 61 00 50 */	addi r11, r1, 0x50
/* 813BD074 | 48 23 C4 8D */	bl _restgpr_24
/* 813BD078 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 813BD07C | 7C 08 03 A6 */	mtlr r0
/* 813BD080 | 38 21 00 50 */	addi r1, r1, 0x50
/* 813BD084 | 4E 80 00 20 */	blr
.endfn set_face_pane__Q33ipl5scene10FaceSelectFPPCc

# .text:0x1FE4 | 0x813BD088 | size: 0xE4
# ipl::scene::FaceSelect::clear_face_pane(const char**)
.fn clear_face_pane__Q33ipl5scene10FaceSelectFPPCc, global
/* 813BD088 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 813BD08C | 7C 08 02 A6 */	mflr r0
/* 813BD090 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 813BD094 | 39 61 00 50 */	addi r11, r1, 0x50
/* 813BD098 | 48 23 C4 21 */	bl _savegpr_25
/* 813BD09C | 3F C0 81 65 */	lis r30, lbl_8164F767@ha
/* 813BD0A0 | 7C 79 1B 78 */	mr r25, r3
/* 813BD0A4 | 7C 9A 23 78 */	mr r26, r4
/* 813BD0A8 | 3B 80 00 00 */	li r28, 0x0
/* 813BD0AC | 3B BE F7 67 */	addi r29, r30, lbl_8164F767@l
/* 813BD0B0 | 3B E0 00 00 */	li r31, 0x0
.L_813BD0B4:
/* 813BD0B4 | 80 79 00 58 */	lwz r3, 0x58(r25)
/* 813BD0B8 | 38 A0 00 01 */	li r5, 0x1
/* 813BD0BC | 7C 9A F8 2E */	lwzx r4, r26, r31
/* 813BD0C0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813BD0C4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BD0C8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813BD0CC | 7D 89 03 A6 */	mtctr r12
/* 813BD0D0 | 4E 80 04 21 */	bctrl
/* 813BD0D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BD0D8 | 38 A0 00 01 */	li r5, 0x1
/* 813BD0DC | 7C 9A F8 2E */	lwzx r4, r26, r31
/* 813BD0E0 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 813BD0E4 | 7D 89 03 A6 */	mtctr r12
/* 813BD0E8 | 4E 80 04 21 */	bctrl
/* 813BD0EC | 80 D9 00 58 */	lwz r6, 0x58(r25)
/* 813BD0F0 | 7C 7B 1B 78 */	mr r27, r3
/* 813BD0F4 | 7F A4 EB 78 */	mr r4, r29
/* 813BD0F8 | 38 A0 00 01 */	li r5, 0x1
/* 813BD0FC | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 813BD100 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BD104 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813BD108 | 7D 89 03 A6 */	mtctr r12
/* 813BD10C | 4E 80 04 21 */	bctrl
/* 813BD110 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BD114 | 38 9E F7 67 */	addi r4, r30, lbl_8164F767@l
/* 813BD118 | 38 A0 00 01 */	li r5, 0x1
/* 813BD11C | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 813BD120 | 7D 89 03 A6 */	mtctr r12
/* 813BD124 | 4E 80 04 21 */	bctrl
/* 813BD128 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813BD12C | 38 A0 00 00 */	li r5, 0x0
/* 813BD130 | 48 16 AB FD */	bl fn_81527D2C
/* 813BD134 | 7F 63 DB 78 */	mr r3, r27
/* 813BD138 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813BD13C | 38 80 00 00 */	li r4, 0x0
/* 813BD140 | 48 16 AC DD */	bl fn_81527E1C
/* 813BD144 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813BD148 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813BD14C | 2C 1C 00 0A */	cmpwi r28, 0xa
/* 813BD150 | 41 80 FF 64 */	blt .L_813BD0B4
/* 813BD154 | 39 61 00 50 */	addi r11, r1, 0x50
/* 813BD158 | 48 23 C3 AD */	bl _restgpr_25
/* 813BD15C | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 813BD160 | 7C 08 03 A6 */	mtlr r0
/* 813BD164 | 38 21 00 50 */	addi r1, r1, 0x50
/* 813BD168 | 4E 80 00 20 */	blr
.endfn clear_face_pane__Q33ipl5scene10FaceSelectFPPCc

# .text:0x20C8 | 0x813BD16C | size: 0xC4
# ipl::scene::FaceSelect::destroy_object()
.fn destroy_object__Q33ipl5scene10FaceSelectFv, global
/* 813BD16C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813BD170 | 7C 08 02 A6 */	mflr r0
/* 813BD174 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813BD178 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813BD17C | 48 23 C3 49 */	bl _savegpr_28
/* 813BD180 | 3B C0 00 00 */	li r30, 0x0
/* 813BD184 | 7C 7D 1B 78 */	mr r29, r3
/* 813BD188 | 7F DF F3 78 */	mr r31, r30
/* 813BD18C | 3B 80 00 00 */	li r28, 0x0
.L_813BD190:
/* 813BD190 | 80 7D 02 40 */	lwz r3, 0x240(r29)
/* 813BD194 | 7C 1C EA 14 */	add r0, r28, r29
/* 813BD198 | 7C 63 00 34 */	cntlzw r3, r3
/* 813BD19C | 54 63 D9 7E */	srwi r3, r3, 5
/* 813BD1A0 | 1C 63 00 50 */	mulli r3, r3, 0x50
/* 813BD1A4 | 7C 63 02 14 */	add r3, r3, r0
/* 813BD1A8 | 80 63 02 48 */	lwz r3, 0x248(r3)
/* 813BD1AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BD1B0 | 41 82 00 58 */	beq .L_813BD208
/* 813BD1B4 | 38 80 00 01 */	li r4, 0x1
/* 813BD1B8 | 4B F8 1D 59 */	bl __dt__Q33ipl6nigaoe6ObjectFv
/* 813BD1BC | 80 1D 02 40 */	lwz r0, 0x240(r29)
/* 813BD1C0 | 7C 9C EA 14 */	add r4, r28, r29
/* 813BD1C4 | 7C 00 00 34 */	cntlzw r0, r0
/* 813BD1C8 | 54 00 D9 7E */	srwi r0, r0, 5
/* 813BD1CC | 1C 00 00 50 */	mulli r0, r0, 0x50
/* 813BD1D0 | 7C 60 22 14 */	add r3, r0, r4
/* 813BD1D4 | 93 E3 02 48 */	stw r31, 0x248(r3)
/* 813BD1D8 | 80 1D 02 40 */	lwz r0, 0x240(r29)
/* 813BD1DC | 7C 00 00 34 */	cntlzw r0, r0
/* 813BD1E0 | 54 00 D9 7E */	srwi r0, r0, 5
/* 813BD1E4 | 1C 00 00 50 */	mulli r0, r0, 0x50
/* 813BD1E8 | 7C 60 22 14 */	add r3, r0, r4
/* 813BD1EC | 9B E3 02 45 */	stb r31, 0x245(r3)
/* 813BD1F0 | 80 1D 02 40 */	lwz r0, 0x240(r29)
/* 813BD1F4 | 7C 00 00 34 */	cntlzw r0, r0
/* 813BD1F8 | 54 00 D9 7E */	srwi r0, r0, 5
/* 813BD1FC | 1C 00 00 50 */	mulli r0, r0, 0x50
/* 813BD200 | 7C 60 22 14 */	add r3, r0, r4
/* 813BD204 | 9B E3 02 44 */	stb r31, 0x244(r3)
.L_813BD208:
/* 813BD208 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 813BD20C | 3B 9C 00 08 */	addi r28, r28, 0x8
/* 813BD210 | 2C 1E 00 0A */	cmpwi r30, 0xa
/* 813BD214 | 41 80 FF 7C */	blt .L_813BD190
/* 813BD218 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813BD21C | 48 23 C2 F5 */	bl _restgpr_28
/* 813BD220 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813BD224 | 7C 08 03 A6 */	mtlr r0
/* 813BD228 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813BD22C | 4E 80 00 20 */	blr
.endfn destroy_object__Q33ipl5scene10FaceSelectFv

# .text:0x218C | 0x813BD230 | size: 0x100
# ipl::scene::FaceSelect::read_face()
.fn read_face__Q33ipl5scene10FaceSelectFv, global
/* 813BD230 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813BD234 | 7C 08 02 A6 */	mflr r0
/* 813BD238 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813BD23C | 39 61 00 30 */	addi r11, r1, 0x30
/* 813BD240 | 48 23 C2 71 */	bl _savegpr_23
/* 813BD244 | 3B 60 00 00 */	li r27, 0x0
/* 813BD248 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 813BD24C | 7C 7A 1B 78 */	mr r26, r3
/* 813BD250 | 3B 20 00 00 */	li r25, 0x0
/* 813BD254 | 7F 7F DB 78 */	mr r31, r27
/* 813BD258 | 7F 78 DB 78 */	mr r24, r27
/* 813BD25C | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 813BD260 | 3B C0 00 01 */	li r30, 0x1
/* 813BD264 | 3E E0 81 3C */	lis r23, nigaoe_make_icon_cb___Q23ipl5sceneFPQ33ipl6nigaoe6ObjectPv@ha
.L_813BD268:
/* 813BD268 | 80 1A 00 74 */	lwz r0, 0x74(r26)
/* 813BD26C | 1C 00 00 0A */	mulli r0, r0, 0xa
/* 813BD270 | 7C 1B 02 14 */	add r0, r27, r0
/* 813BD274 | 54 00 10 3A */	slwi r0, r0, 2
/* 813BD278 | 7F 9A 02 14 */	add r28, r26, r0
/* 813BD27C | 80 1C 00 7C */	lwz r0, 0x7c(r28)
/* 813BD280 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BD284 | 41 80 00 70 */	blt .L_813BD2F4
/* 813BD288 | 80 7D 00 70 */	lwz r3, 0x70(r29)
/* 813BD28C | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813BD290 | 4B F8 1A 15 */	bl isAvalable__Q33ipl6nigaoe7ManagerFUs
/* 813BD294 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BD298 | 41 82 00 5C */	beq .L_813BD2F4
/* 813BD29C | 80 1A 02 40 */	lwz r0, 0x240(r26)
/* 813BD2A0 | 7C 99 D2 14 */	add r4, r25, r26
/* 813BD2A4 | 39 17 CE D8 */	addi r8, r23, nigaoe_make_icon_cb___Q23ipl5sceneFPQ33ipl6nigaoe6ObjectPv@l
/* 813BD2A8 | 38 A0 00 4C */	li r5, 0x4c
/* 813BD2AC | 1C 00 00 50 */	mulli r0, r0, 0x50
/* 813BD2B0 | 38 C0 00 4C */	li r6, 0x4c
/* 813BD2B4 | 7C 60 22 14 */	add r3, r0, r4
/* 813BD2B8 | 9B C3 02 44 */	stb r30, 0x244(r3)
/* 813BD2BC | 80 1A 02 40 */	lwz r0, 0x240(r26)
/* 813BD2C0 | 1C 00 00 50 */	mulli r0, r0, 0x50
/* 813BD2C4 | 7C 60 22 14 */	add r3, r0, r4
/* 813BD2C8 | 9B E3 02 45 */	stb r31, 0x245(r3)
/* 813BD2CC | 80 1A 02 40 */	lwz r0, 0x240(r26)
/* 813BD2D0 | 80 7D 00 70 */	lwz r3, 0x70(r29)
/* 813BD2D4 | 1C 00 00 50 */	mulli r0, r0, 0x50
/* 813BD2D8 | 80 9D 00 28 */	lwz r4, 0x28(r29)
/* 813BD2DC | 80 FC 00 7C */	lwz r7, 0x7c(r28)
/* 813BD2E0 | 7C 1A 02 14 */	add r0, r26, r0
/* 813BD2E4 | 7D 20 CA 14 */	add r9, r0, r25
/* 813BD2E8 | 39 29 02 44 */	addi r9, r9, 0x244
/* 813BD2EC | 4B F8 17 A9 */	bl create__Q33ipl6nigaoe7ManagerFPQ23EGG4HeapiiiPFPQ33ipl6nigaoe6ObjectPv_vPv
/* 813BD2F0 | 48 00 00 18 */	b .L_813BD308
.L_813BD2F4:
/* 813BD2F4 | 80 1A 02 40 */	lwz r0, 0x240(r26)
/* 813BD2F8 | 1C 00 00 50 */	mulli r0, r0, 0x50
/* 813BD2FC | 7C 1A 02 14 */	add r0, r26, r0
/* 813BD300 | 7C 79 02 14 */	add r3, r25, r0
/* 813BD304 | 9B 03 02 44 */	stb r24, 0x244(r3)
.L_813BD308:
/* 813BD308 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 813BD30C | 3B 39 00 08 */	addi r25, r25, 0x8
/* 813BD310 | 2C 1B 00 0A */	cmpwi r27, 0xa
/* 813BD314 | 41 80 FF 54 */	blt .L_813BD268
/* 813BD318 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813BD31C | 48 23 C1 E1 */	bl _restgpr_23
/* 813BD320 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813BD324 | 7C 08 03 A6 */	mtlr r0
/* 813BD328 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813BD32C | 4E 80 00 20 */	blr
.endfn read_face__Q33ipl5scene10FaceSelectFv

# .text:0x228C | 0x813BD330 | size: 0xE4
# ipl::scene::FaceSelectEvent::onEvent(unsigned long, unsigned long, void*)
.fn onEvent__Q33ipl5scene15FaceSelectEventFUlUlPv, global
/* 813BD330 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813BD334 | 7C 08 02 A6 */	mflr r0
/* 813BD338 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813BD33C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813BD340 | 48 23 C1 85 */	bl _savegpr_28
/* 813BD344 | 7C 7C 1B 78 */	mr r28, r3
/* 813BD348 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813BD34C | 7C BD 2B 78 */	mr r29, r5
/* 813BD350 | 7C DE 33 78 */	mr r30, r6
/* 813BD354 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BD358 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813BD35C | 7D 89 03 A6 */	mtctr r12
/* 813BD360 | 4E 80 04 21 */	bctrl
/* 813BD364 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BD368 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 813BD36C | 7D 89 03 A6 */	mtctr r12
/* 813BD370 | 4E 80 04 21 */	bctrl
/* 813BD374 | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 813BD378 | 3B E3 00 B4 */	addi r31, r3, 0xb4
/* 813BD37C | 41 82 00 20 */	beq .L_813BD39C
/* 813BD380 | 40 80 00 10 */	bge .L_813BD390
/* 813BD384 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813BD388 | 40 80 00 38 */	bge .L_813BD3C0
/* 813BD38C | 48 00 00 70 */	b .L_813BD3FC
.L_813BD390:
/* 813BD390 | 2C 1D 00 03 */	cmpwi r29, 0x3
/* 813BD394 | 40 80 00 68 */	bge .L_813BD3FC
/* 813BD398 | 48 00 00 18 */	b .L_813BD3B0
.L_813BD39C:
/* 813BD39C | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813BD3A0 | 7F E4 FB 78 */	mr r4, r31
/* 813BD3A4 | 7F C5 F3 78 */	mr r5, r30
/* 813BD3A8 | 4B FF F4 19 */	bl start_point_event__Q33ipl5scene10FaceSelectFPCcPQ33ipl10controller9Interface
/* 813BD3AC | 48 00 00 50 */	b .L_813BD3FC
.L_813BD3B0:
/* 813BD3B0 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813BD3B4 | 7F E4 FB 78 */	mr r4, r31
/* 813BD3B8 | 4B FF F5 9D */	bl start_left_event__Q33ipl5scene10FaceSelectFPCc
/* 813BD3BC | 48 00 00 40 */	b .L_813BD3FC
.L_813BD3C0:
/* 813BD3C0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813BD3C4 | 3C 80 00 10 */	lis r4, 0x10
/* 813BD3C8 | 7F C3 F3 78 */	mr r3, r30
/* 813BD3CC | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813BD3D0 | 38 84 08 00 */	addi r4, r4, 0x800
/* 813BD3D4 | 7D 89 03 A6 */	mtctr r12
/* 813BD3D8 | 4E 80 04 21 */	bctrl
/* 813BD3DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BD3E0 | 41 82 00 1C */	beq .L_813BD3FC
/* 813BD3E4 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813BD3E8 | 80 03 00 6C */	lwz r0, 0x6c(r3)
/* 813BD3EC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BD3F0 | 40 82 00 0C */	bne .L_813BD3FC
/* 813BD3F4 | 7F E4 FB 78 */	mr r4, r31
/* 813BD3F8 | 4B FF F6 49 */	bl start_trig_event__Q33ipl5scene10FaceSelectFPCc
.L_813BD3FC:
/* 813BD3FC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813BD400 | 48 23 C1 11 */	bl _restgpr_28
/* 813BD404 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813BD408 | 7C 08 03 A6 */	mtlr r0
/* 813BD40C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813BD410 | 4E 80 00 20 */	blr
.endfn onEvent__Q33ipl5scene15FaceSelectEventFUlUlPv

# .text:0x2370 | 0x813BD414 | size: 0x160
# ipl::scene::FaceSelectButtonEvent::onEventDerived(unsigned long, unsigned long, const ipl::controller::Interface*)
.fn onEventDerived__Q33ipl5scene21FaceSelectButtonEventFUlUlPCQ33ipl10controller9Interface, global
/* 813BD414 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813BD418 | 7C 08 02 A6 */	mflr r0
/* 813BD41C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813BD420 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813BD424 | 48 23 C0 A5 */	bl _savegpr_29
/* 813BD428 | 7C 7D 1B 78 */	mr r29, r3
/* 813BD42C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813BD430 | 7C BF 2B 78 */	mr r31, r5
/* 813BD434 | 7C DE 33 78 */	mr r30, r6
/* 813BD438 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BD43C | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813BD440 | 7D 89 03 A6 */	mtctr r12
/* 813BD444 | 4E 80 04 21 */	bctrl
/* 813BD448 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BD44C | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 813BD450 | 7D 89 03 A6 */	mtctr r12
/* 813BD454 | 4E 80 04 21 */	bctrl
/* 813BD458 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813BD45C | 3B E3 00 B4 */	addi r31, r3, 0xb4
/* 813BD460 | 41 82 00 08 */	beq .L_813BD468
/* 813BD464 | 48 00 00 F8 */	b .L_813BD55C
.L_813BD468:
/* 813BD468 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813BD46C | 3C 80 00 10 */	lis r4, 0x10
/* 813BD470 | 7F C3 F3 78 */	mr r3, r30
/* 813BD474 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813BD478 | 38 84 08 00 */	addi r4, r4, 0x800
/* 813BD47C | 7D 89 03 A6 */	mtctr r12
/* 813BD480 | 4E 80 04 21 */	bctrl
/* 813BD484 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BD488 | 41 82 00 D4 */	beq .L_813BD55C
/* 813BD48C | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 813BD490 | 80 03 00 6C */	lwz r0, 0x6c(r3)
/* 813BD494 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BD498 | 40 82 00 C4 */	bne .L_813BD55C
/* 813BD49C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813BD4A0 | 38 80 00 05 */	li r4, 0x5
/* 813BD4A4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813BD4A8 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813BD4AC | 48 04 DC 8D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813BD4B0 | 3C 80 81 65 */	lis r4, mscButtonName__Q33ipl5scene6Button@ha
/* 813BD4B4 | 7C 7E 1B 78 */	mr r30, r3
/* 813BD4B8 | 38 84 BF 5C */	addi r4, r4, mscButtonName__Q33ipl5scene6Button@l
/* 813BD4BC | 7F E3 FB 78 */	mr r3, r31
/* 813BD4C0 | 80 84 00 14 */	lwz r4, 0x14(r4)
/* 813BD4C4 | 48 24 4F BD */	bl strcmp
/* 813BD4C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BD4CC | 40 82 00 90 */	bne .L_813BD55C
/* 813BD4D0 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813BD4D4 | 3C 80 81 65 */	lis r4, lbl_8164F772@ha
/* 813BD4D8 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813BD4DC | 38 84 F7 72 */	addi r4, r4, lbl_8164F772@l
/* 813BD4E0 | 4B FA DF 8D */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813BD4E4 | 7F C3 F3 78 */	mr r3, r30
/* 813BD4E8 | 38 80 00 1B */	li r4, 0x1b
/* 813BD4EC | 4B FD F6 6D */	bl iplButton_8139CB58
/* 813BD4F0 | 7F C3 F3 78 */	mr r3, r30
/* 813BD4F4 | 38 80 00 0C */	li r4, 0xc
/* 813BD4F8 | 4B FD FF 31 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 813BD4FC | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 813BD500 | 80 03 02 E8 */	lwz r0, 0x2e8(r3)
/* 813BD504 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813BD508 | 40 82 00 14 */	bne .L_813BD51C
/* 813BD50C | 7F C3 F3 78 */	mr r3, r30
/* 813BD510 | 38 80 00 0B */	li r4, 0xb
/* 813BD514 | 4B FD FF 15 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 813BD518 | 48 00 00 10 */	b .L_813BD528
.L_813BD51C:
/* 813BD51C | 7F C3 F3 78 */	mr r3, r30
/* 813BD520 | 38 80 00 0F */	li r4, 0xf
/* 813BD524 | 4B FD FF 05 */	bl reserveAnm__Q33ipl5scene6ButtonFi
.L_813BD528:
/* 813BD528 | 3B C0 00 00 */	li r30, 0x0
/* 813BD52C | 3B E0 00 00 */	li r31, 0x0
.L_813BD530:
/* 813BD530 | 80 1D 00 0C */	lwz r0, 0xc(r29)
/* 813BD534 | 7C 60 FA 14 */	add r3, r0, r31
/* 813BD538 | 80 63 02 F0 */	lwz r3, 0x2f0(r3)
/* 813BD53C | 48 01 44 71 */	bl fadeoutForce__Q33ipl5scene11TextBalloonFv
/* 813BD540 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 813BD544 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813BD548 | 2C 1E 00 0A */	cmpwi r30, 0xa
/* 813BD54C | 41 80 FF E4 */	blt .L_813BD530
/* 813BD550 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 813BD554 | 38 80 00 05 */	li r4, 0x5
/* 813BD558 | 4B FF F7 99 */	bl change_state__Q33ipl5scene10FaceSelectFi
.L_813BD55C:
/* 813BD55C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813BD560 | 48 23 BF B5 */	bl _restgpr_29
/* 813BD564 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813BD568 | 7C 08 03 A6 */	mtlr r0
/* 813BD56C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813BD570 | 4E 80 00 20 */	blr
.endfn onEventDerived__Q33ipl5scene21FaceSelectButtonEventFUlUlPCQ33ipl10controller9Interface

# .text:0x24D0 | 0x813BD574 | size: 0x5C
# ipl::scene::FaceSelect::~FaceSelect()
.fn __dt__Q33ipl5scene10FaceSelectFv, global
/* 813BD574 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813BD578 | 7C 08 02 A6 */	mflr r0
/* 813BD57C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BD580 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813BD584 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813BD588 | 7C 9F 23 78 */	mr r31, r4
/* 813BD58C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813BD590 | 7C 7E 1B 78 */	mr r30, r3
/* 813BD594 | 41 82 00 20 */	beq .L_813BD5B4
/* 813BD598 | 41 82 00 0C */	beq .L_813BD5A4
/* 813BD59C | 38 80 00 00 */	li r4, 0x0
/* 813BD5A0 | 48 04 C6 C5 */	bl __dt__Q33ipl5scene4BaseFv
.L_813BD5A4:
/* 813BD5A4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813BD5A8 | 40 81 00 0C */	ble .L_813BD5B4
/* 813BD5AC | 7F C3 F3 78 */	mr r3, r30
/* 813BD5B0 | 48 23 AB 35 */	bl __dl__FPv
.L_813BD5B4:
/* 813BD5B4 | 7F C3 F3 78 */	mr r3, r30
/* 813BD5B8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813BD5BC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813BD5C0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813BD5C4 | 7C 08 03 A6 */	mtlr r0
/* 813BD5C8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813BD5CC | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene10FaceSelectFv

# .text:0x252C | 0x813BD5D0 | size: 0x8
.fn "@20@__dt__Q33ipl5scene10FaceSelectFv", global
/* 813BD5D0 | 38 63 FF EC */	subi r3, r3, 0x14
/* 813BD5D4 | 4B FF FF A0 */	b __dt__Q33ipl5scene10FaceSelectFv
.endfn "@20@__dt__Q33ipl5scene10FaceSelectFv"

# 0x81610310..0x81610328 | size: 0x18
.rodata
.balign 8

# .rodata:0x0 | 0x81610310 | size: 0x18
.obj lbl_81610310, global
	.2byte 0x0030
	.2byte 0x0031
	.2byte 0x0032
	.2byte 0x0033
	.2byte 0x0034
	.2byte 0x0035
	.2byte 0x0036
	.2byte 0x0037
	.2byte 0x0038
	.2byte 0x0039
	.2byte 0x0000
	.2byte 0x0000
.endobj lbl_81610310

# 0x8164F0B8..0x8164F8B8 | size: 0x800
.data
.balign 8

# .data:0x0 | 0x8164F0B8 | size: 0xD
.obj lbl_8164F0B8, global
	.string "B_NigaoeSel0"
.endobj lbl_8164F0B8

# .data:0xD | 0x8164F0C5 | size: 0xD
.obj lbl_8164F0C5, global
	.string "B_NigaoeSel1"
.endobj lbl_8164F0C5

# .data:0x1A | 0x8164F0D2 | size: 0xD
.obj lbl_8164F0D2, global
	.string "B_NigaoeSel2"
.endobj lbl_8164F0D2

# .data:0x27 | 0x8164F0DF | size: 0xD
.obj lbl_8164F0DF, global
	.string "B_NigaoeSel3"
.endobj lbl_8164F0DF

# .data:0x34 | 0x8164F0EC | size: 0xD
.obj lbl_8164F0EC, global
	.string "B_NigaoeSel4"
.endobj lbl_8164F0EC

# .data:0x41 | 0x8164F0F9 | size: 0xD
.obj lbl_8164F0F9, global
	.string "B_NigaoeSel5"
.endobj lbl_8164F0F9

# .data:0x4E | 0x8164F106 | size: 0xD
.obj lbl_8164F106, global
	.string "B_NigaoeSel6"
.endobj lbl_8164F106

# .data:0x5B | 0x8164F113 | size: 0xD
.obj lbl_8164F113, global
	.string "B_NigaoeSel7"
.endobj lbl_8164F113

# .data:0x68 | 0x8164F120 | size: 0xD
.obj lbl_8164F120, global
	.string "B_NigaoeSel8"
.endobj lbl_8164F120

# .data:0x75 | 0x8164F12D | size: 0xF
.obj lbl_8164F12D, global
	.4byte 0x425F4E69
	.4byte 0x67616F65
	.4byte 0x53656C39
	.byte 0x00, 0x00, 0x00
.endobj lbl_8164F12D

# .data:0x84 | 0x8164F13C | size: 0x30
.obj lbl_8164F13C, global
	.4byte lbl_8164F0B8
	.4byte lbl_8164F0C5
	.4byte lbl_8164F0D2
	.4byte lbl_8164F0DF
	.4byte lbl_8164F0EC
	.4byte lbl_8164F0F9
	.4byte lbl_8164F106
	.4byte lbl_8164F113
	.4byte lbl_8164F120
	.4byte lbl_8164F12D
	.4byte lbl_81696B00
	.4byte lbl_81696B07
.endobj lbl_8164F13C

# .data:0xB4 | 0x8164F16C | size: 0xB
.obj lbl_8164F16C, global
	.string "NigaoeSel0"
.endobj lbl_8164F16C

# .data:0xBF | 0x8164F177 | size: 0xB
.obj lbl_8164F177, global
	.string "NigaoeSel1"
.endobj lbl_8164F177

# .data:0xCA | 0x8164F182 | size: 0xB
.obj lbl_8164F182, global
	.string "NigaoeSel2"
.endobj lbl_8164F182

# .data:0xD5 | 0x8164F18D | size: 0xB
.obj lbl_8164F18D, global
	.string "NigaoeSel3"
.endobj lbl_8164F18D

# .data:0xE0 | 0x8164F198 | size: 0xB
.obj lbl_8164F198, global
	.string "NigaoeSel4"
.endobj lbl_8164F198

# .data:0xEB | 0x8164F1A3 | size: 0xB
.obj lbl_8164F1A3, global
	.string "NigaoeSel5"
.endobj lbl_8164F1A3

# .data:0xF6 | 0x8164F1AE | size: 0xB
.obj lbl_8164F1AE, global
	.string "NigaoeSel6"
.endobj lbl_8164F1AE

# .data:0x101 | 0x8164F1B9 | size: 0xB
.obj lbl_8164F1B9, global
	.string "NigaoeSel7"
.endobj lbl_8164F1B9

# .data:0x10C | 0x8164F1C4 | size: 0xB
.obj lbl_8164F1C4, global
	.string "NigaoeSel8"
.endobj lbl_8164F1C4

# .data:0x117 | 0x8164F1CF | size: 0xD
.obj lbl_8164F1CF, global
	.4byte 0x4E696761
	.4byte 0x6F655365
	.4byte 0x6C390000
	.byte 0x00
.endobj lbl_8164F1CF

# .data:0x124 | 0x8164F1DC | size: 0x28
.obj lbl_8164F1DC, global
	.4byte lbl_8164F16C
	.4byte lbl_8164F177
	.4byte lbl_8164F182
	.4byte lbl_8164F18D
	.4byte lbl_8164F198
	.4byte lbl_8164F1A3
	.4byte lbl_8164F1AE
	.4byte lbl_8164F1B9
	.4byte lbl_8164F1C4
	.4byte lbl_8164F1CF
.endobj lbl_8164F1DC

# .data:0x14C | 0x8164F204 | size: 0xE
.obj lbl_8164F204, global
	.string "NigaoeSel0_01"
.endobj lbl_8164F204

# .data:0x15A | 0x8164F212 | size: 0xE
.obj lbl_8164F212, global
	.string "NigaoeSel1_01"
.endobj lbl_8164F212

# .data:0x168 | 0x8164F220 | size: 0xE
.obj lbl_8164F220, global
	.string "NigaoeSel2_01"
.endobj lbl_8164F220

# .data:0x176 | 0x8164F22E | size: 0xE
.obj lbl_8164F22E, global
	.string "NigaoeSel3_01"
.endobj lbl_8164F22E

# .data:0x184 | 0x8164F23C | size: 0xE
.obj lbl_8164F23C, global
	.string "NigaoeSel4_01"
.endobj lbl_8164F23C

# .data:0x192 | 0x8164F24A | size: 0xE
.obj lbl_8164F24A, global
	.string "NigaoeSel5_01"
.endobj lbl_8164F24A

# .data:0x1A0 | 0x8164F258 | size: 0xE
.obj lbl_8164F258, global
	.string "NigaoeSel6_01"
.endobj lbl_8164F258

# .data:0x1AE | 0x8164F266 | size: 0xE
.obj lbl_8164F266, global
	.string "NigaoeSel7_01"
.endobj lbl_8164F266

# .data:0x1BC | 0x8164F274 | size: 0xE
.obj lbl_8164F274, global
	.string "NigaoeSel8_01"
.endobj lbl_8164F274

# .data:0x1CA | 0x8164F282 | size: 0xE
.obj lbl_8164F282, global
	.string "NigaoeSel9_01"
.endobj lbl_8164F282

# .data:0x1D8 | 0x8164F290 | size: 0x28
.obj lbl_8164F290, global
	.4byte lbl_8164F204
	.4byte lbl_8164F212
	.4byte lbl_8164F220
	.4byte lbl_8164F22E
	.4byte lbl_8164F23C
	.4byte lbl_8164F24A
	.4byte lbl_8164F258
	.4byte lbl_8164F266
	.4byte lbl_8164F274
	.4byte lbl_8164F282
.endobj lbl_8164F290

# .data:0x200 | 0x8164F2B8 | size: 0xE
.obj lbl_8164F2B8, global
	.string "NigaoeSel0_02"
.endobj lbl_8164F2B8

# .data:0x20E | 0x8164F2C6 | size: 0xE
.obj lbl_8164F2C6, global
	.string "NigaoeSel1_02"
.endobj lbl_8164F2C6

# .data:0x21C | 0x8164F2D4 | size: 0xE
.obj lbl_8164F2D4, global
	.string "NigaoeSel2_02"
.endobj lbl_8164F2D4

# .data:0x22A | 0x8164F2E2 | size: 0xE
.obj lbl_8164F2E2, global
	.string "NigaoeSel3_02"
.endobj lbl_8164F2E2

# .data:0x238 | 0x8164F2F0 | size: 0xE
.obj lbl_8164F2F0, global
	.string "NigaoeSel4_02"
.endobj lbl_8164F2F0

# .data:0x246 | 0x8164F2FE | size: 0xE
.obj lbl_8164F2FE, global
	.string "NigaoeSel5_02"
.endobj lbl_8164F2FE

# .data:0x254 | 0x8164F30C | size: 0xE
.obj lbl_8164F30C, global
	.string "NigaoeSel6_02"
.endobj lbl_8164F30C

# .data:0x262 | 0x8164F31A | size: 0xE
.obj lbl_8164F31A, global
	.string "NigaoeSel7_02"
.endobj lbl_8164F31A

# .data:0x270 | 0x8164F328 | size: 0xE
.obj lbl_8164F328, global
	.string "NigaoeSel8_02"
.endobj lbl_8164F328

# .data:0x27E | 0x8164F336 | size: 0xE
.obj lbl_8164F336, global
	.string "NigaoeSel9_02"
.endobj lbl_8164F336

# .data:0x28C | 0x8164F344 | size: 0x28
.obj lbl_8164F344, global
	.4byte lbl_8164F2B8
	.4byte lbl_8164F2C6
	.4byte lbl_8164F2D4
	.4byte lbl_8164F2E2
	.4byte lbl_8164F2F0
	.4byte lbl_8164F2FE
	.4byte lbl_8164F30C
	.4byte lbl_8164F31A
	.4byte lbl_8164F328
	.4byte lbl_8164F336
.endobj lbl_8164F344

# .data:0x2B4 | 0x8164F36C | size: 0xC
.obj lbl_8164F36C, global
	.string "faceSel.ash"
.endobj lbl_8164F36C

# .data:0x2C0 | 0x8164F378 | size: 0x3A0
.obj lbl_8164F378, global
	.4byte 0x62616C6C
	.4byte 0x6F6F6E2E
	.4byte 0x61736800
	.4byte 0x6D795F73
	.4byte 0x656C6563
	.4byte 0x744E6967
	.4byte 0x616F655F
	.4byte 0x612E6272
	.4byte 0x6C797400
	.4byte 0x6D795F73
	.4byte 0x656C6563
	.4byte 0x744E6967
	.4byte 0x616F655F
	.4byte 0x615F4E69
	.4byte 0x67616F65
	.4byte 0x496E2E62
	.4byte 0x726C616E
	.4byte 0x006D795F
	.4byte 0x73656C65
	.4byte 0x63744E69
	.4byte 0x67616F65
	.4byte 0x5F615F4E
	.4byte 0x6967616F
	.4byte 0x654F7574
	.4byte 0x2E62726C
	.4byte 0x616E006D
	.4byte 0x795F7365
	.4byte 0x6C656374
	.4byte 0x4E696761
	.4byte 0x6F655F61
	.4byte 0x5F4E6967
	.4byte 0x616F6549
	.4byte 0x6E5F612E
	.4byte 0x62726C61
	.4byte 0x6E006D79
	.4byte 0x5F73656C
	.4byte 0x6563744E
	.4byte 0x6967616F
	.4byte 0x655F615F
	.4byte 0x4E696761
	.4byte 0x6F654F75
	.4byte 0x745F612E
	.4byte 0x62726C61
	.4byte 0x6E006D79
	.4byte 0x5F73656C
	.4byte 0x6563744E
	.4byte 0x6967616F
	.4byte 0x655F615F
	.4byte 0x4E696761
	.4byte 0x6F65496E
	.4byte 0x5F622E62
	.4byte 0x726C616E
	.4byte 0x006D795F
	.4byte 0x73656C65
	.4byte 0x63744E69
	.4byte 0x67616F65
	.4byte 0x5F615F4E
	.4byte 0x6967616F
	.4byte 0x654F7574
	.4byte 0x5F622E62
	.4byte 0x726C616E
	.4byte 0x006D795F
	.4byte 0x73656C65
	.4byte 0x63744E69
	.4byte 0x67616F65
	.4byte 0x5F615F4E
	.4byte 0x6967616F
	.4byte 0x65466F75
	.4byte 0x63757349
	.4byte 0x6E2E6272
	.4byte 0x6C616E00
	.4byte 0x475F466F
	.4byte 0x75637573
	.4byte 0x3000475F
	.4byte 0x466F7563
	.4byte 0x75733100
	.4byte 0x475F466F
	.4byte 0x75637573
	.4byte 0x3200475F
	.4byte 0x466F7563
	.4byte 0x75733300
	.4byte 0x475F466F
	.4byte 0x75637573
	.4byte 0x3400475F
	.4byte 0x466F7563
	.4byte 0x75733500
	.4byte 0x475F466F
	.4byte 0x75637573
	.4byte 0x3600475F
	.4byte 0x466F7563
	.4byte 0x75733700
	.4byte 0x475F466F
	.4byte 0x75637573
	.4byte 0x3800475F
	.4byte 0x466F7563
	.4byte 0x75733900
	.4byte 0x6D795F73
	.4byte 0x656C6563
	.4byte 0x744E6967
	.4byte 0x616F655F
	.4byte 0x615F4E69
	.4byte 0x67616F65
	.4byte 0x466F7563
	.4byte 0x75734F75
	.4byte 0x742E6272
	.4byte 0x6C616E00
	.4byte 0x6D795F73
	.4byte 0x656C6563
	.4byte 0x744E6967
	.4byte 0x616F655F
	.4byte 0x615F4D6F
	.4byte 0x76654172
	.4byte 0x7752312E
	.4byte 0x62726C61
	.4byte 0x6E00475F
	.4byte 0x4E696761
	.4byte 0x6F65416C
	.4byte 0x6C006D79
	.4byte 0x5F73656C
	.4byte 0x6563744E
	.4byte 0x6967616F
	.4byte 0x655F615F
	.4byte 0x4D6F7665
	.4byte 0x4172774C
	.4byte 0x312E6272
	.4byte 0x6C616E00
	.4byte 0x6D795F73
	.4byte 0x656C6563
	.4byte 0x744E6967
	.4byte 0x616F655F
	.4byte 0x615F466F
	.4byte 0x6375734F
	.4byte 0x6E2E6272
	.4byte 0x6C616E00
	.4byte 0x475F4172
	.4byte 0x774C5F46
	.4byte 0x6F637573
	.4byte 0x006D795F
	.4byte 0x73656C65
	.4byte 0x63744E69
	.4byte 0x67616F65
	.4byte 0x5F615F46
	.4byte 0x6F637573
	.4byte 0x4F66662E
	.4byte 0x62726C61
	.4byte 0x6E006D79
	.4byte 0x5F73656C
	.4byte 0x6563744E
	.4byte 0x6967616F
	.4byte 0x655F615F
	.4byte 0x53656C65
	.4byte 0x63742E62
	.4byte 0x726C616E
	.4byte 0x00475F41
	.4byte 0x72774C5F
	.4byte 0x4163006D
	.4byte 0x795F7365
	.4byte 0x6C656374
	.4byte 0x4E696761
	.4byte 0x6F655F61
	.4byte 0x5F484441
	.4byte 0x6374696F
	.4byte 0x6E537461
	.4byte 0x72742E62
	.4byte 0x726C616E
	.4byte 0x00475F41
	.4byte 0x72774C5F
	.4byte 0x48444163
	.4byte 0x006D795F
	.4byte 0x73656C65
	.4byte 0x63744E69
	.4byte 0x67616F65
	.4byte 0x5F615F48
	.4byte 0x44416374
	.4byte 0x696F6E52
	.4byte 0x65706561
	.4byte 0x742E6272
	.4byte 0x6C616E00
	.4byte 0x6D795F73
	.4byte 0x656C6563
	.4byte 0x744E6967
	.4byte 0x616F655F
	.4byte 0x615F4170
	.4byte 0x70656172
	.4byte 0x2E62726C
	.4byte 0x616E0047
	.4byte 0x5F417277
	.4byte 0x4C5F456E
	.4byte 0x64006D79
	.4byte 0x5F73656C
	.4byte 0x6563744E
	.4byte 0x6967616F
	.4byte 0x655F615F
	.4byte 0x4C6F7374
	.4byte 0x2E62726C
	.4byte 0x616E0047
	.4byte 0x5F417277
	.4byte 0x525F466F
	.4byte 0x63757300
	.4byte 0x475F4172
	.4byte 0x77525F41
	.4byte 0x6300475F
	.4byte 0x41727752
	.4byte 0x5F484441
	.4byte 0x6300475F
	.4byte 0x41727752
	.4byte 0x5F456E64
	.4byte 0x006D795F
	.4byte 0x73656C65
	.4byte 0x63744E69
	.4byte 0x67616F65
	.4byte 0x5F615F4C
	.4byte 0x6F6F702E
	.4byte 0x62726C61
	.4byte 0x6E00475F
	.4byte 0x41727752
	.4byte 0x6F6F7000
	.4byte 0x6D795F73
	.4byte 0x656C6563
	.4byte 0x744E6967
	.4byte 0x616F655F
	.4byte 0x615F5061
	.4byte 0x67655377
	.4byte 0x69746368
	.4byte 0x2E62726C
	.4byte 0x616E006D
	.4byte 0x795F4970
	.4byte 0x6C546F70
	.4byte 0x42616C6C
	.4byte 0x6F6F6E5F
	.4byte 0x612E6272
	.4byte 0x6C797400
.endobj lbl_8164F378

# .data:0x660 | 0x8164F718 | size: 0x9
.obj lbl_8164F718, global
	.string "N_Cut_00"
.endobj lbl_8164F718

# .data:0x669 | 0x8164F721 | size: 0x9
.obj lbl_8164F721, global
	.string "N_TopBtn"
.endobj lbl_8164F721

# .data:0x672 | 0x8164F72A | size: 0x18
.obj lbl_8164F72A, global
	.string "WIPL_SE_CALENDAR_SCROLL"
.endobj lbl_8164F72A

# .data:0x68A | 0x8164F742 | size: 0x16
.obj lbl_8164F742, global
	.string "WIPL_SE_BT_TARGETTING"
.endobj lbl_8164F742

# .data:0x6A0 | 0x8164F758 | size: 0xF
.obj lbl_8164F758, global
	.string "WIPL_SE_DECIDE"
.endobj lbl_8164F758

# .data:0x6AF | 0x8164F767 | size: 0xB
.obj lbl_8164F767, global
	.string "NigaoeD_00"
.endobj lbl_8164F767

# .data:0x6BA | 0x8164F772 | size: 0x12
.obj lbl_8164F772, global
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x43414E43
	.4byte 0x454C0000
	.2byte 0x0000
.endobj lbl_8164F772

# .data:0x6CC | 0x8164F784 | size: 0x1C
# ipl::scene::FaceSelectButtonEvent::__vtable
.obj __vt__Q33ipl5scene21FaceSelectButtonEvent, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte onEvent__Q33ipl5scene22ButtonEventHandlerBaseFUlUlPv
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
	.4byte onEventDerived__Q33ipl5scene21FaceSelectButtonEventFUlUlPCQ33ipl10controller9Interface
.endobj __vt__Q33ipl5scene21FaceSelectButtonEvent

# .data:0x6E8 | 0x8164F7A0 | size: 0x18
# ipl::scene::FaceSelectEvent::__vtable
.obj __vt__Q33ipl5scene15FaceSelectEvent, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte onEvent__Q33ipl5scene15FaceSelectEventFUlUlPv
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
.endobj __vt__Q33ipl5scene15FaceSelectEvent

# .data:0x700 | 0x8164F7B8 | size: 0x100
# ipl::scene::FaceSelect::__vtable
.obj __vt__Q33ipl5scene10FaceSelect, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene10FaceSelectFv
	.4byte getParent__Q33ipl5scene4BaseFv
	.4byte getChild__Q33ipl5scene4BaseFv
	.4byte getNext__Q33ipl5scene4BaseFv
	.4byte getPrev__Q33ipl5scene4BaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@20@__dt__Q33ipl5scene10FaceSelectFv"
	.4byte isReady__Q33ipl5scene4BaseCFv
	.4byte isResetAcceptable__Q33ipl5scene4BaseCFv
	.4byte startResetting__Q33ipl5scene4BaseFv
	.4byte isResetProcessDone__Q33ipl5scene4BaseFv
	.4byte prepare__Q33ipl5scene10FaceSelectFv
	.4byte create__Q33ipl5scene10FaceSelectFv
	.4byte calc__Q33ipl5scene14FaderSceneBaseFv
	.4byte draw__Q33ipl5scene10FaceSelectFv
	.4byte destroy__Q33ipl5scene10FaceSelectFv
	.4byte initCalcNormal__Q33ipl5scene10FaceSelectFv
	.4byte initCalcFadeout__Q33ipl5scene10FaceSelectFv
	.4byte calcCommon__Q33ipl5scene14FaderSceneBaseFv
	.4byte calcFadein__Q33ipl5scene10FaceSelectFv
	.4byte calcNormal__Q33ipl5scene10FaceSelectFv
	.4byte calcFadeout__Q33ipl5scene10FaceSelectFv
	.4byte calcCommonAfter__Q33ipl5scene10FaceSelectFv
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj __vt__Q33ipl5scene10FaceSelect

# 0x81694A10..0x81694A30 | size: 0x20
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694A10 | size: 0x4
.obj lbl_81694A10, global
	.float 30
.endobj lbl_81694A10

# .sdata2:0x4 | 0x81694A14 | size: 0x4
.obj lbl_81694A14, global
	.float 120
.endobj lbl_81694A14

# .sdata2:0x8 | 0x81694A18 | size: 0x4
.obj lbl_81694A18, global
	.float 0
.endobj lbl_81694A18

# .sdata2:0xC | 0x81694A1C | size: 0x4
.obj lbl_81694A1C, global
	.float 0.5
.endobj lbl_81694A1C

# .sdata2:0x10 | 0x81694A20 | size: 0x8
.obj lbl_81694A20, global
	.double 4503599627370496
.endobj lbl_81694A20

# .sdata2:0x18 | 0x81694A28 | size: 0x8
.obj lbl_81694A28, global
	.float 50
	.float 0
.endobj lbl_81694A28

# 0x81696B00..0x81696B30 | size: 0x30
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696B00 | size: 0x7
.obj lbl_81696B00, global
	.string "B_ArwL"
.endobj lbl_81696B00

# .sdata:0x7 | 0x81696B07 | size: 0x7
.obj lbl_81696B07, global
	.string "B_ArwR"
.endobj lbl_81696B07

# .sdata:0xE | 0x81696B0E | size: 0x4
.obj lbl_81696B0E, global
	.string "arc"
.endobj lbl_81696B0E

# .sdata:0x12 | 0x81696B12 | size: 0x6
.obj lbl_81696B12, global
	.string "G_All"
.endobj lbl_81696B12

# .sdata:0x18 | 0x81696B18 | size: 0x7
.obj lbl_81696B18, global
	.string "G_Page"
.endobj lbl_81696B18

# .sdata:0x1F | 0x81696B1F | size: 0x8
.obj lbl_81696B1F, global
	.string "Mask_00"
.endobj lbl_81696B1F

# .sdata:0x27 | 0x81696B27 | size: 0x9
.obj lbl_81696B27, global
	.4byte 0x545F5061
	.4byte 0x67650000
	.byte 0x00
.endobj lbl_81696B27
