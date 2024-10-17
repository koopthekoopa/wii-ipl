.include "macros.inc"
.file "iplCSRect.cpp"

# 0x8145D224..0x8145D5F8 | size: 0x3D4
.text
.balign 4

# .text:0x0 | 0x8145D224 | size: 0x78
# ipl::cs::rect::get_width(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn get_width__Q33ipl2cs4rectFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145D224 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145D228 | 7C 08 02 A6 */	mflr r0
/* 8145D22C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145D230 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145D234 | 48 19 C2 91 */	bl _savegpr_28
/* 8145D238 | 7C 9D 23 78 */	mr r29, r4
/* 8145D23C | 7C 7C 1B 78 */	mr r28, r3
/* 8145D240 | 7C BE 2B 78 */	mr r30, r5
/* 8145D244 | 3B E0 00 00 */	li r31, 0x0
/* 8145D248 | 7F A3 EB 78 */	mr r3, r29
/* 8145D24C | 4B FF F2 DD */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145D250 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145D254 | 41 82 00 2C */	beq .L_8145D280
/* 8145D258 | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8145D25C | 7F 83 E3 78 */	mr r3, r28
/* 8145D260 | 7F C4 F3 78 */	mr r4, r30
/* 8145D264 | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 8145D268 | C0 25 00 08 */	lfs f1, 0x8(r5)
/* 8145D26C | C0 05 00 00 */	lfs f0, 0x0(r5)
/* 8145D270 | EC 21 00 28 */	fsubs f1, f1, f0
/* 8145D274 | 4B FE E7 79 */	bl CHANSVmSetFloat
/* 8145D278 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145D27C | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145D280:
/* 8145D280 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145D284 | 7F E3 FB 78 */	mr r3, r31
/* 8145D288 | 48 19 C2 89 */	bl _restgpr_28
/* 8145D28C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145D290 | 7C 08 03 A6 */	mtlr r0
/* 8145D294 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145D298 | 4E 80 00 20 */	blr
.endfn get_width__Q33ipl2cs4rectFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x78 | 0x8145D29C | size: 0x78
# ipl::cs::rect::get_height(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn get_height__Q33ipl2cs4rectFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145D29C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145D2A0 | 7C 08 02 A6 */	mflr r0
/* 8145D2A4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145D2A8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145D2AC | 48 19 C2 19 */	bl _savegpr_28
/* 8145D2B0 | 7C 9D 23 78 */	mr r29, r4
/* 8145D2B4 | 7C 7C 1B 78 */	mr r28, r3
/* 8145D2B8 | 7C BE 2B 78 */	mr r30, r5
/* 8145D2BC | 3B E0 00 00 */	li r31, 0x0
/* 8145D2C0 | 7F A3 EB 78 */	mr r3, r29
/* 8145D2C4 | 4B FF F2 65 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145D2C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145D2CC | 41 82 00 2C */	beq .L_8145D2F8
/* 8145D2D0 | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8145D2D4 | 7F 83 E3 78 */	mr r3, r28
/* 8145D2D8 | 7F C4 F3 78 */	mr r4, r30
/* 8145D2DC | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 8145D2E0 | C0 25 00 0C */	lfs f1, 0xc(r5)
/* 8145D2E4 | C0 05 00 04 */	lfs f0, 0x4(r5)
/* 8145D2E8 | EC 21 00 28 */	fsubs f1, f1, f0
/* 8145D2EC | 4B FE E7 01 */	bl CHANSVmSetFloat
/* 8145D2F0 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145D2F4 | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145D2F8:
/* 8145D2F8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145D2FC | 7F E3 FB 78 */	mr r3, r31
/* 8145D300 | 48 19 C2 11 */	bl _restgpr_28
/* 8145D304 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145D308 | 7C 08 03 A6 */	mtlr r0
/* 8145D30C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145D310 | 4E 80 00 20 */	blr
.endfn get_height__Q33ipl2cs4rectFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0xF0 | 0x8145D314 | size: 0x7C
# ipl::cs::rect::set_width(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn set_width__Q33ipl2cs4rectFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145D314 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145D318 | 7C 08 02 A6 */	mflr r0
/* 8145D31C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145D320 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145D324 | 48 19 C1 A5 */	bl _savegpr_29
/* 8145D328 | 7C 9D 23 78 */	mr r29, r4
/* 8145D32C | 3B C0 00 00 */	li r30, 0x0
/* 8145D330 | 38 80 00 00 */	li r4, 0x0
/* 8145D334 | 4B FE F3 C9 */	bl CHANSVmGetArgFloat
/* 8145D338 | 7C 7F 1B 78 */	mr r31, r3
/* 8145D33C | 7F A3 EB 78 */	mr r3, r29
/* 8145D340 | 4B FF F1 E9 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145D344 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145D348 | 41 82 00 2C */	beq .L_8145D374
/* 8145D34C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145D350 | 41 82 00 24 */	beq .L_8145D374
/* 8145D354 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8145D358 | 3B C0 00 01 */	li r30, 0x1
/* 8145D35C | C8 3F 00 00 */	lfd f1, 0x0(r31)
/* 8145D360 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145D364 | FC 20 08 18 */	frsp f1, f1
/* 8145D368 | C0 03 00 00 */	lfs f0, 0x0(r3)
/* 8145D36C | EC 00 08 2A */	fadds f0, f0, f1
/* 8145D370 | D0 03 00 08 */	stfs f0, 0x8(r3)
.L_8145D374:
/* 8145D374 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145D378 | 7F C3 F3 78 */	mr r3, r30
/* 8145D37C | 48 19 C1 99 */	bl _restgpr_29
/* 8145D380 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145D384 | 7C 08 03 A6 */	mtlr r0
/* 8145D388 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145D38C | 4E 80 00 20 */	blr
.endfn set_width__Q33ipl2cs4rectFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x16C | 0x8145D390 | size: 0x7C
# ipl::cs::rect::set_height(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn set_height__Q33ipl2cs4rectFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145D390 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145D394 | 7C 08 02 A6 */	mflr r0
/* 8145D398 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145D39C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145D3A0 | 48 19 C1 29 */	bl _savegpr_29
/* 8145D3A4 | 7C 9D 23 78 */	mr r29, r4
/* 8145D3A8 | 3B C0 00 00 */	li r30, 0x0
/* 8145D3AC | 38 80 00 00 */	li r4, 0x0
/* 8145D3B0 | 4B FE F3 4D */	bl CHANSVmGetArgFloat
/* 8145D3B4 | 7C 7F 1B 78 */	mr r31, r3
/* 8145D3B8 | 7F A3 EB 78 */	mr r3, r29
/* 8145D3BC | 4B FF F1 6D */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145D3C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145D3C4 | 41 82 00 2C */	beq .L_8145D3F0
/* 8145D3C8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145D3CC | 41 82 00 24 */	beq .L_8145D3F0
/* 8145D3D0 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8145D3D4 | 3B C0 00 01 */	li r30, 0x1
/* 8145D3D8 | C8 3F 00 00 */	lfd f1, 0x0(r31)
/* 8145D3DC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145D3E0 | FC 20 08 18 */	frsp f1, f1
/* 8145D3E4 | C0 03 00 04 */	lfs f0, 0x4(r3)
/* 8145D3E8 | EC 00 08 2A */	fadds f0, f0, f1
/* 8145D3EC | D0 03 00 0C */	stfs f0, 0xc(r3)
.L_8145D3F0:
/* 8145D3F0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145D3F4 | 7F C3 F3 78 */	mr r3, r30
/* 8145D3F8 | 48 19 C1 1D */	bl _restgpr_29
/* 8145D3FC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145D400 | 7C 08 03 A6 */	mtlr r0
/* 8145D404 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145D408 | 4E 80 00 20 */	blr
.endfn set_height__Q33ipl2cs4rectFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x1E8 | 0x8145D40C | size: 0x58
# ipl::cs::rect::_ctor(CHANSVm*, CHANSVmObjHdr*)
.fn _ctor__Q33ipl2cs4rectFP7CHANSVmP13CHANSVmObjHdr, global
/* 8145D40C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8145D410 | 7C 08 02 A6 */	mflr r0
/* 8145D414 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8145D418 | 38 00 00 08 */	li r0, 0x8
/* 8145D41C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8145D420 | 3B E0 00 00 */	li r31, 0x0
/* 8145D424 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8145D428 | 7C 9E 23 78 */	mr r30, r4
/* 8145D42C | 98 04 00 08 */	stb r0, 0x8(r4)
/* 8145D430 | 38 8D 99 00 */	li r4, lbl_81697940@sda21
/* 8145D434 | 4B FE F3 41 */	bl CHANSVmFindNativeClass
/* 8145D438 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145D43C | 90 7E 00 0C */	stw r3, 0xc(r30)
/* 8145D440 | 41 82 00 08 */	beq .L_8145D448
/* 8145D444 | 3B E0 00 01 */	li r31, 0x1
.L_8145D448:
/* 8145D448 | 7F E3 FB 78 */	mr r3, r31
/* 8145D44C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8145D450 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8145D454 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8145D458 | 7C 08 03 A6 */	mtlr r0
/* 8145D45C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8145D460 | 4E 80 00 20 */	blr
.endfn _ctor__Q33ipl2cs4rectFP7CHANSVmP13CHANSVmObjHdr

# .text:0x240 | 0x8145D464 | size: 0x120
# ipl::cs::rect::ctor(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn ctor__Q33ipl2cs4rectFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145D464 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8145D468 | 7C 08 02 A6 */	mflr r0
/* 8145D46C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8145D470 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8145D474 | 48 19 C0 4D */	bl _savegpr_27
/* 8145D478 | 7C A4 2B 78 */	mr r4, r5
/* 8145D47C | 7C 7B 1B 78 */	mr r27, r3
/* 8145D480 | 3B A0 00 00 */	li r29, 0x0
/* 8145D484 | 38 A0 00 10 */	li r5, 0x10
/* 8145D488 | 4B FE D7 CD */	bl CHANSVmNewObjData
/* 8145D48C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145D490 | 7C 7C 1B 78 */	mr r28, r3
/* 8145D494 | 41 82 00 D4 */	beq .L_8145D568
/* 8145D498 | 7F 63 DB 78 */	mr r3, r27
/* 8145D49C | 38 80 00 00 */	li r4, 0x0
/* 8145D4A0 | 4B FE F2 5D */	bl CHANSVmGetArgFloat
/* 8145D4A4 | 7C 7D 1B 78 */	mr r29, r3
/* 8145D4A8 | 7F 63 DB 78 */	mr r3, r27
/* 8145D4AC | 38 80 00 01 */	li r4, 0x1
/* 8145D4B0 | 4B FE F2 4D */	bl CHANSVmGetArgFloat
/* 8145D4B4 | 7C 7E 1B 78 */	mr r30, r3
/* 8145D4B8 | 7F 63 DB 78 */	mr r3, r27
/* 8145D4BC | 38 80 00 02 */	li r4, 0x2
/* 8145D4C0 | 4B FE F2 3D */	bl CHANSVmGetArgFloat
/* 8145D4C4 | 7C 7F 1B 78 */	mr r31, r3
/* 8145D4C8 | 7F 63 DB 78 */	mr r3, r27
/* 8145D4CC | 38 80 00 03 */	li r4, 0x3
/* 8145D4D0 | 4B FE F2 2D */	bl CHANSVmGetArgFloat
/* 8145D4D4 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8145D4D8 | 41 82 00 10 */	beq .L_8145D4E8
/* 8145D4DC | C8 3D 00 00 */	lfd f1, 0x0(r29)
/* 8145D4E0 | FC 20 08 18 */	frsp f1, f1
/* 8145D4E4 | 48 00 00 08 */	b .L_8145D4EC
.L_8145D4E8:
/* 8145D4E8 | C0 22 8B E0 */	lfs f1, lbl_81694FE0@sda21(r0)
.L_8145D4EC:
/* 8145D4EC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8145D4F0 | 41 82 00 10 */	beq .L_8145D500
/* 8145D4F4 | C8 7E 00 00 */	lfd f3, 0x0(r30)
/* 8145D4F8 | FC 60 18 18 */	frsp f3, f3
/* 8145D4FC | 48 00 00 08 */	b .L_8145D504
.L_8145D500:
/* 8145D500 | C0 62 8B E0 */	lfs f3, lbl_81694FE0@sda21(r0)
.L_8145D504:
/* 8145D504 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145D508 | 41 82 00 10 */	beq .L_8145D518
/* 8145D50C | C8 9F 00 00 */	lfd f4, 0x0(r31)
/* 8145D510 | FC 80 20 18 */	frsp f4, f4
/* 8145D514 | 48 00 00 08 */	b .L_8145D51C
.L_8145D518:
/* 8145D518 | C0 82 8B E0 */	lfs f4, lbl_81694FE0@sda21(r0)
.L_8145D51C:
/* 8145D51C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145D520 | 41 82 00 10 */	beq .L_8145D530
/* 8145D524 | C8 A3 00 00 */	lfd f5, 0x0(r3)
/* 8145D528 | FC A0 28 18 */	frsp f5, f5
/* 8145D52C | 48 00 00 08 */	b .L_8145D534
.L_8145D530:
/* 8145D530 | C0 A2 8B E0 */	lfs f5, lbl_81694FE0@sda21(r0)
.L_8145D534:
/* 8145D534 | FC 00 08 18 */	frsp f0, f1
/* 8145D538 | D0 21 00 08 */	stfs f1, 0x8(r1)
/* 8145D53C | FC 40 18 18 */	frsp f2, f3
/* 8145D540 | 3B A0 00 01 */	li r29, 0x1
/* 8145D544 | FC 20 20 18 */	frsp f1, f4
/* 8145D548 | D0 61 00 0C */	stfs f3, 0xc(r1)
/* 8145D54C | D0 1C 00 00 */	stfs f0, 0x0(r28)
/* 8145D550 | FC 00 28 18 */	frsp f0, f5
/* 8145D554 | D0 5C 00 04 */	stfs f2, 0x4(r28)
/* 8145D558 | D0 3C 00 08 */	stfs f1, 0x8(r28)
/* 8145D55C | D0 81 00 10 */	stfs f4, 0x10(r1)
/* 8145D560 | D0 A1 00 14 */	stfs f5, 0x14(r1)
/* 8145D564 | D0 1C 00 0C */	stfs f0, 0xc(r28)
.L_8145D568:
/* 8145D568 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8145D56C | 7F A3 EB 78 */	mr r3, r29
/* 8145D570 | 48 19 BF 9D */	bl _restgpr_27
/* 8145D574 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8145D578 | 7C 08 03 A6 */	mtlr r0
/* 8145D57C | 38 21 00 30 */	addi r1, r1, 0x30
/* 8145D580 | 4E 80 00 20 */	blr
.endfn ctor__Q33ipl2cs4rectFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x360 | 0x8145D584 | size: 0x74
# ipl::cs::rect::init(CHANSVm*)
.fn init__Q33ipl2cs4rectFP7CHANSVm, global
/* 8145D584 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8145D588 | 7C 08 02 A6 */	mflr r0
/* 8145D58C | 3C A0 81 46 */	lis r5, ctor__Q33ipl2cs4rectFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr@ha
/* 8145D590 | 38 8D 99 00 */	li r4, lbl_81697940@sda21
/* 8145D594 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8145D598 | 38 A5 D4 64 */	addi r5, r5, ctor__Q33ipl2cs4rectFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr@l
/* 8145D59C | 38 C0 00 00 */	li r6, 0x0
/* 8145D5A0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8145D5A4 | 3B E0 00 00 */	li r31, 0x0
/* 8145D5A8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8145D5AC | 7C 7E 1B 78 */	mr r30, r3
/* 8145D5B0 | 4B FE F3 25 */	bl CHANSVmAddNativeClass
/* 8145D5B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145D5B8 | 7C 64 1B 78 */	mr r4, r3
/* 8145D5BC | 41 82 00 20 */	beq .L_8145D5DC
/* 8145D5C0 | 3C A0 81 61 */	lis r5, scMethodList__Q33ipl2cs4rect@ha
/* 8145D5C4 | 7F C3 F3 78 */	mr r3, r30
/* 8145D5C8 | 38 C0 00 04 */	li r6, 0x4
/* 8145D5CC | 38 A5 77 60 */	addi r5, r5, scMethodList__Q33ipl2cs4rect@l
/* 8145D5D0 | 4B FE F4 A1 */	bl CHANSVmAddNativeMethodList
/* 8145D5D4 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145D5D8 | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145D5DC:
/* 8145D5DC | 7F E3 FB 78 */	mr r3, r31
/* 8145D5E0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8145D5E4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8145D5E8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8145D5EC | 7C 08 03 A6 */	mtlr r0
/* 8145D5F0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8145D5F4 | 4E 80 00 20 */	blr
.endfn init__Q33ipl2cs4rectFP7CHANSVm

# 0x81617760..0x81617780 | size: 0x20
.rodata
.balign 8

# .rodata:0x0 | 0x81617760 | size: 0x20
# ipl::cs::rect::scMethodList
.obj scMethodList__Q33ipl2cs4rect, local
	.4byte lbl_8166A920
	.4byte get_width__Q33ipl2cs4rectFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A929
	.4byte get_height__Q33ipl2cs4rectFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A933
	.4byte set_width__Q33ipl2cs4rectFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A93C
	.4byte set_height__Q33ipl2cs4rectFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
.endobj scMethodList__Q33ipl2cs4rect

# 0x8166A920..0x8166A948 | size: 0x28
.data
.balign 8

# .data:0x0 | 0x8166A920 | size: 0x9
.obj lbl_8166A920, global
	.string "GetWidth"
.endobj lbl_8166A920

# .data:0x9 | 0x8166A929 | size: 0xA
.obj lbl_8166A929, global
	.string "GetHeight"
.endobj lbl_8166A929

# .data:0x13 | 0x8166A933 | size: 0x9
.obj lbl_8166A933, global
	.string "SetWidth"
.endobj lbl_8166A933

# .data:0x1C | 0x8166A93C | size: 0xA
.obj lbl_8166A93C, global
	.string "SetHeight"
.endobj lbl_8166A93C

# .data:0x26 | 0x8166A946 | size: 0x2
.obj gap_08_8166A946_data, global
.hidden gap_08_8166A946_data
	.2byte 0x0000
.endobj gap_08_8166A946_data

# 0x81694FE0..0x81694FE8 | size: 0x8
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694FE0 | size: 0x4
.obj lbl_81694FE0, global
	.float 0
.endobj lbl_81694FE0

# .sdata2:0x4 | 0x81694FE4 | size: 0x4
.obj gap_09_81694FE4_sdata2, global
.hidden gap_09_81694FE4_sdata2
	.4byte 0x00000000
.endobj gap_09_81694FE4_sdata2

# 0x81697940..0x81697948 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697940 | size: 0x5
.obj lbl_81697940, global
	.string "Rect"
.endobj lbl_81697940

# .sdata:0x5 | 0x81697945 | size: 0x3
.obj gap_11_81697945_sdata, global
.hidden gap_11_81697945_sdata
	.byte 0x00, 0x00, 0x00
.endobj gap_11_81697945_sdata
