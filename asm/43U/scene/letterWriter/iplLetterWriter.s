.include "macros.inc"
.file "iplLetterWriter.cpp"

# 0x813C02F8..0x813C1AC4 | size: 0x17CC
.text
.balign 4

# .text:0x0 | 0x813C02F8 | size: 0x80
# ipl::scene::LetterWriter::LetterWriter(EGG::Heap*, int)
.fn __ct__Q33ipl5scene12LetterWriterFPQ23EGG4Heapi, global
/* 813C02F8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C02FC | 7C 08 02 A6 */	mflr r0
/* 813C0300 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C0304 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C0308 | 7C BF 2B 78 */	mr r31, r5
/* 813C030C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813C0310 | 7C 7E 1B 78 */	mr r30, r3
/* 813C0314 | 48 04 B1 09 */	bl fn_8140B41C
/* 813C0318 | 3C 60 81 65 */	lis r3, __vt__Q33ipl5scene12LetterWriter@ha
/* 813C031C | 38 80 00 00 */	li r4, 0x0
/* 813C0320 | 38 63 04 F8 */	addi r3, r3, __vt__Q33ipl5scene12LetterWriter@l
/* 813C0324 | 38 00 00 03 */	li r0, 0x3
/* 813C0328 | 38 C3 00 1C */	addi r6, r3, 0x1c
/* 813C032C | 90 7E 00 00 */	stw r3, 0x0(r30)
/* 813C0330 | 38 A3 00 68 */	addi r5, r3, 0x68
/* 813C0334 | 7F C3 F3 78 */	mr r3, r30
/* 813C0338 | 90 DE 00 14 */	stw r6, 0x14(r30)
/* 813C033C | 90 BE 00 58 */	stw r5, 0x58(r30)
/* 813C0340 | 98 9E 01 E0 */	stb r4, 0x1e0(r30)
/* 813C0344 | 90 9E 01 E4 */	stw r4, 0x1e4(r30)
/* 813C0348 | 93 FE 01 E8 */	stw r31, 0x1e8(r30)
/* 813C034C | 90 9E 01 EC */	stw r4, 0x1ec(r30)
/* 813C0350 | 90 9E 01 F0 */	stw r4, 0x1f0(r30)
/* 813C0354 | 90 9E 01 F4 */	stw r4, 0x1f4(r30)
/* 813C0358 | 90 9E 01 F8 */	stw r4, 0x1f8(r30)
/* 813C035C | 90 1E 00 28 */	stw r0, 0x28(r30)
/* 813C0360 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C0364 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813C0368 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C036C | 7C 08 03 A6 */	mtlr r0
/* 813C0370 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C0374 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene12LetterWriterFPQ23EGG4Heapi

# .text:0x80 | 0x813C0378 | size: 0x58
# ipl::scene::LetterWriter::~LetterWriter()
.fn __dt__Q33ipl5scene12LetterWriterFv, global
/* 813C0378 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C037C | 7C 08 02 A6 */	mflr r0
/* 813C0380 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C0384 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C0388 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C038C | 7C 9F 23 78 */	mr r31, r4
/* 813C0390 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813C0394 | 7C 7E 1B 78 */	mr r30, r3
/* 813C0398 | 41 82 00 1C */	beq .L_813C03B4
/* 813C039C | 38 80 00 00 */	li r4, 0x0
/* 813C03A0 | 48 04 B0 F9 */	bl fn_8140B498
/* 813C03A4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813C03A8 | 40 81 00 0C */	ble .L_813C03B4
/* 813C03AC | 7F C3 F3 78 */	mr r3, r30
/* 813C03B0 | 48 23 7D 35 */	bl __dl__FPv
.L_813C03B4:
/* 813C03B4 | 7F C3 F3 78 */	mr r3, r30
/* 813C03B8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C03BC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813C03C0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C03C4 | 7C 08 03 A6 */	mtlr r0
/* 813C03C8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C03CC | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene12LetterWriterFv

# .text:0xD8 | 0x813C03D0 | size: 0xA8
# ipl::scene::LetterWriter::destroy()
.fn destroy__Q33ipl5scene12LetterWriterFv, global
/* 813C03D0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C03D4 | 7C 08 02 A6 */	mflr r0
/* 813C03D8 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813C03DC | 38 8D 8B 20 */	li r4, lbl_81696B60@sda21
/* 813C03E0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C03E4 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813C03E8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C03EC | 7C 7F 1B 78 */	mr r31, r3
/* 813C03F0 | 80 65 00 90 */	lwz r3, 0x90(r5)
/* 813C03F4 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813C03F8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C03FC | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 813C0400 | 7D 89 03 A6 */	mtctr r12
/* 813C0404 | 4E 80 04 21 */	bctrl
/* 813C0408 | 80 7F 01 EC */	lwz r3, 0x1ec(r31)
/* 813C040C | 48 23 7C D9 */	bl __dl__FPv
/* 813C0410 | 80 7F 01 F0 */	lwz r3, 0x1f0(r31)
/* 813C0414 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C0418 | 41 82 00 18 */	beq .L_813C0430
/* 813C041C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C0420 | 38 80 00 01 */	li r4, 0x1
/* 813C0424 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813C0428 | 7D 89 03 A6 */	mtctr r12
/* 813C042C | 4E 80 04 21 */	bctrl
.L_813C0430:
/* 813C0430 | 80 7F 01 F4 */	lwz r3, 0x1f4(r31)
/* 813C0434 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C0438 | 41 82 00 18 */	beq .L_813C0450
/* 813C043C | 81 83 00 10 */	lwz r12, 0x10(r3)
/* 813C0440 | 38 80 00 01 */	li r4, 0x1
/* 813C0444 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813C0448 | 7D 89 03 A6 */	mtctr r12
/* 813C044C | 4E 80 04 21 */	bctrl
.L_813C0450:
/* 813C0450 | 80 7F 00 70 */	lwz r3, 0x70(r31)
/* 813C0454 | 38 80 00 01 */	li r4, 0x1
/* 813C0458 | 4B F7 EA B9 */	bl __dt__Q33ipl6nigaoe6ObjectFv
/* 813C045C | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813C0460 | 48 23 7C 85 */	bl __dl__FPv
/* 813C0464 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C0468 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C046C | 7C 08 03 A6 */	mtlr r0
/* 813C0470 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C0474 | 4E 80 00 20 */	blr
.endfn destroy__Q33ipl5scene12LetterWriterFv

# .text:0x180 | 0x813C0478 | size: 0x38C
# ipl::scene::LetterWriter::create()
.fn create__Q33ipl5scene12LetterWriterFv, global
/* 813C0478 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813C047C | 7C 08 02 A6 */	mflr r0
/* 813C0480 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813C0484 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813C0488 | 48 23 90 3D */	bl _savegpr_28
/* 813C048C | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 813C0490 | 7C 7F 1B 78 */	mr r31, r3
/* 813C0494 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 813C0498 | 38 80 00 00 */	li r4, 0x0
/* 813C049C | 80 7D 00 90 */	lwz r3, 0x90(r29)
/* 813C04A0 | 38 A0 00 02 */	li r5, 0x2
/* 813C04A4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C04A8 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 813C04AC | 7D 89 03 A6 */	mtctr r12
/* 813C04B0 | 4E 80 04 21 */	bctrl
/* 813C04B4 | 80 7D 00 90 */	lwz r3, 0x90(r29)
/* 813C04B8 | 4B F9 5F 81 */	bl getZiSystemDic__Q33ipl8keyboard7ManagerFv
/* 813C04BC | 7C 7E 1B 78 */	mr r30, r3
/* 813C04C0 | 80 7D 00 90 */	lwz r3, 0x90(r29)
/* 813C04C4 | 4B F9 5F 81 */	bl getZiOemDic__Q33ipl8keyboard7ManagerFv
/* 813C04C8 | 7C 7C 1B 78 */	mr r28, r3
/* 813C04CC | 7F E3 FB 78 */	mr r3, r31
/* 813C04D0 | 48 04 C3 6D */	bl fn_8140C83C
/* 813C04D4 | 7C 7D 1B 78 */	mr r29, r3
/* 813C04D8 | 80 63 01 6C */	lwz r3, 0x16c(r3)
/* 813C04DC | 7F C4 F3 78 */	mr r4, r30
/* 813C04E0 | 7F 85 E3 78 */	mr r5, r28
/* 813C04E4 | 48 07 39 ED */	bl fn_81433ED0
/* 813C04E8 | 7F A3 EB 78 */	mr r3, r29
/* 813C04EC | 48 06 0C 89 */	bl fn_81421174
/* 813C04F0 | 7F A3 EB 78 */	mr r3, r29
/* 813C04F4 | 48 06 45 F9 */	bl fn_81424AEC
/* 813C04F8 | 38 60 08 00 */	li r3, 0x800
/* 813C04FC | 48 23 7B C5 */	bl __nwa__FUl
/* 813C0500 | 90 7F 00 80 */	stw r3, 0x80(r31)
/* 813C0504 | 38 60 00 08 */	li r3, 0x8
/* 813C0508 | 48 23 7B 95 */	bl __nw__FUl
/* 813C050C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C0510 | 41 82 00 14 */	beq .L_813C0524
/* 813C0514 | 3C 80 81 66 */	lis r4, lbl_81658B48@ha
/* 813C0518 | 38 84 8B 48 */	addi r4, r4, lbl_81658B48@l
/* 813C051C | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813C0520 | 93 E3 00 04 */	stw r31, 0x4(r3)
.L_813C0524:
/* 813C0524 | 90 7F 00 68 */	stw r3, 0x68(r31)
/* 813C0528 | 7F E3 FB 78 */	mr r3, r31
/* 813C052C | 48 04 C3 11 */	bl fn_8140C83C
/* 813C0530 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C0534 | 80 9F 00 68 */	lwz r4, 0x68(r31)
/* 813C0538 | 81 8C 02 94 */	lwz r12, 0x294(r12)
/* 813C053C | 7D 89 03 A6 */	mtctr r12
/* 813C0540 | 4E 80 04 21 */	bctrl
/* 813C0544 | 7F E3 FB 78 */	mr r3, r31
/* 813C0548 | 48 04 C2 F5 */	bl fn_8140C83C
/* 813C054C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C0550 | 38 8D 8B 20 */	li r4, lbl_81696B60@sda21
/* 813C0554 | 81 8C 02 60 */	lwz r12, 0x260(r12)
/* 813C0558 | 7D 89 03 A6 */	mtctr r12
/* 813C055C | 4E 80 04 21 */	bctrl
/* 813C0560 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 813C0564 | 38 80 00 8B */	li r4, 0x8b
/* 813C0568 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 813C056C | 80 7D 00 80 */	lwz r3, 0x80(r29)
/* 813C0570 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813C0574 | 4B F7 E2 49 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813C0578 | 7C 7E 1B 78 */	mr r30, r3
/* 813C057C | 7F E3 FB 78 */	mr r3, r31
/* 813C0580 | 48 04 C2 BD */	bl fn_8140C83C
/* 813C0584 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C0588 | 7F C4 F3 78 */	mr r4, r30
/* 813C058C | 81 8C 02 64 */	lwz r12, 0x264(r12)
/* 813C0590 | 7D 89 03 A6 */	mtctr r12
/* 813C0594 | 4E 80 04 21 */	bctrl
/* 813C0598 | 80 7D 00 80 */	lwz r3, 0x80(r29)
/* 813C059C | 38 80 00 8E */	li r4, 0x8e
/* 813C05A0 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813C05A4 | 4B F7 E2 19 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813C05A8 | 7C 7E 1B 78 */	mr r30, r3
/* 813C05AC | 7F E3 FB 78 */	mr r3, r31
/* 813C05B0 | 48 04 C2 8D */	bl fn_8140C83C
/* 813C05B4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C05B8 | 7F C4 F3 78 */	mr r4, r30
/* 813C05BC | 81 8C 02 68 */	lwz r12, 0x268(r12)
/* 813C05C0 | 7D 89 03 A6 */	mtctr r12
/* 813C05C4 | 4E 80 04 21 */	bctrl
/* 813C05C8 | 80 7D 00 90 */	lwz r3, 0x90(r29)
/* 813C05CC | 38 8D 8B 20 */	li r4, lbl_81696B60@sda21
/* 813C05D0 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813C05D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C05D8 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 813C05DC | 7D 89 03 A6 */	mtctr r12
/* 813C05E0 | 4E 80 04 21 */	bctrl
/* 813C05E4 | 7F E3 FB 78 */	mr r3, r31
/* 813C05E8 | 48 04 C2 55 */	bl fn_8140C83C
/* 813C05EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C05F0 | 81 8C 02 78 */	lwz r12, 0x278(r12)
/* 813C05F4 | 7D 89 03 A6 */	mtctr r12
/* 813C05F8 | 4E 80 04 21 */	bctrl
/* 813C05FC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813C0600 | 7F FD FB 78 */	mr r29, r31
/* 813C0604 | 41 82 00 08 */	beq .L_813C060C
/* 813C0608 | 3B BF 00 58 */	addi r29, r31, 0x58
.L_813C060C:
/* 813C060C | 7F E3 FB 78 */	mr r3, r31
/* 813C0610 | 48 04 C7 1D */	bl fn_8140CD2C
/* 813C0614 | 7F A4 EB 78 */	mr r4, r29
/* 813C0618 | 38 A0 00 00 */	li r5, 0x0
/* 813C061C | 4B FD C3 21 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 813C0620 | 7F E3 FB 78 */	mr r3, r31
/* 813C0624 | 48 04 C2 19 */	bl fn_8140C83C
/* 813C0628 | 3B A0 00 00 */	li r29, 0x0
/* 813C062C | 9B A3 03 F0 */	stb r29, 0x3f0(r3)
/* 813C0630 | 7F E3 FB 78 */	mr r3, r31
/* 813C0634 | 48 04 C2 09 */	bl fn_8140C83C
/* 813C0638 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C063C | 38 80 00 00 */	li r4, 0x0
/* 813C0640 | 81 8C 02 E4 */	lwz r12, 0x2e4(r12)
/* 813C0644 | 7D 89 03 A6 */	mtctr r12
/* 813C0648 | 4E 80 04 21 */	bctrl
/* 813C064C | 7F E3 FB 78 */	mr r3, r31
/* 813C0650 | 48 04 C1 ED */	bl fn_8140C83C
/* 813C0654 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C0658 | 80 9F 01 E8 */	lwz r4, 0x1e8(r31)
/* 813C065C | 81 8C 02 E8 */	lwz r12, 0x2e8(r12)
/* 813C0660 | 7D 89 03 A6 */	mtctr r12
/* 813C0664 | 4E 80 04 21 */	bctrl
/* 813C0668 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813C066C | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813C0670 | 80 7E 00 90 */	lwz r3, 0x90(r30)
/* 813C0674 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813C0678 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C067C | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 813C0680 | 7D 89 03 A6 */	mtctr r12
/* 813C0684 | 4E 80 04 21 */	bctrl
/* 813C0688 | 80 7E 00 90 */	lwz r3, 0x90(r30)
/* 813C068C | 38 80 FF FF */	li r4, -0x1
/* 813C0690 | 38 00 00 01 */	li r0, 0x1
/* 813C0694 | 9B A3 00 2C */	stb r29, 0x2c(r3)
/* 813C0698 | 38 60 00 14 */	li r3, 0x14
/* 813C069C | 90 9F 00 6C */	stw r4, 0x6c(r31)
/* 813C06A0 | 93 BF 00 70 */	stw r29, 0x70(r31)
/* 813C06A4 | 9B BF 00 7C */	stb r29, 0x7c(r31)
/* 813C06A8 | 98 1F 00 7D */	stb r0, 0x7d(r31)
/* 813C06AC | 93 BF 00 84 */	stw r29, 0x84(r31)
/* 813C06B0 | 9B BF 01 E0 */	stb r29, 0x1e0(r31)
/* 813C06B4 | 48 23 79 E9 */	bl __nw__FUl
/* 813C06B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C06BC | 41 82 00 10 */	beq .L_813C06CC
/* 813C06C0 | 80 9F 00 24 */	lwz r4, 0x24(r31)
/* 813C06C4 | 38 A0 00 04 */	li r5, 0x4
/* 813C06C8 | 48 23 53 B5 */	bl fn_815F5A7C
.L_813C06CC:
/* 813C06CC | 90 7F 01 F4 */	stw r3, 0x1f4(r31)
/* 813C06D0 | 38 60 20 00 */	li r3, 0x2000
/* 813C06D4 | 48 23 79 ED */	bl __nwa__FUl
/* 813C06D8 | 90 7F 01 EC */	stw r3, 0x1ec(r31)
/* 813C06DC | 38 60 00 18 */	li r3, 0x18
/* 813C06E0 | 48 23 79 BD */	bl __nw__FUl
/* 813C06E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C06E8 | 41 82 00 30 */	beq .L_813C0718
/* 813C06EC | 3C A0 81 66 */	lis r5, lbl_8165F5E8@ha
/* 813C06F0 | 38 80 04 00 */	li r4, 0x400
/* 813C06F4 | 38 A5 F5 E8 */	addi r5, r5, lbl_8165F5E8@l
/* 813C06F8 | 38 00 00 00 */	li r0, 0x0
/* 813C06FC | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 813C0700 | B0 83 00 04 */	sth r4, 0x4(r3)
/* 813C0704 | B0 03 00 06 */	sth r0, 0x6(r3)
/* 813C0708 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 813C070C | 90 03 00 0C */	stw r0, 0xc(r3)
/* 813C0710 | B0 03 00 10 */	sth r0, 0x10(r3)
/* 813C0714 | 90 03 00 14 */	stw r0, 0x14(r3)
.L_813C0718:
/* 813C0718 | 90 7F 01 F0 */	stw r3, 0x1f0(r31)
/* 813C071C | 80 9F 01 F4 */	lwz r4, 0x1f4(r31)
/* 813C0720 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C0724 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813C0728 | 7D 89 03 A6 */	mtctr r12
/* 813C072C | 4E 80 04 21 */	bctrl
/* 813C0730 | 7F E3 FB 78 */	mr r3, r31
/* 813C0734 | 48 04 C1 09 */	bl fn_8140C83C
/* 813C0738 | 38 00 00 00 */	li r0, 0x0
/* 813C073C | 98 03 03 F0 */	stb r0, 0x3f0(r3)
/* 813C0740 | 38 60 00 3C */	li r3, 0x3c
/* 813C0744 | 90 1F 01 F8 */	stw r0, 0x1f8(r31)
/* 813C0748 | 48 23 79 55 */	bl __nw__FUl
/* 813C074C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C0750 | 41 82 00 38 */	beq .L_813C0788
/* 813C0754 | C0 02 86 38 */	lfs f0, lbl_81694A38@sda21(r0)
/* 813C0758 | 3C E0 81 65 */	lis r7, lbl_81650380@ha
/* 813C075C | C0 42 86 30 */	lfs f2, lbl_81694A30@sda21(r0)
/* 813C0760 | 38 E7 03 80 */	addi r7, r7, lbl_81650380@l
/* 813C0764 | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 813C0768 | 39 01 00 08 */	addi r8, r1, 0x8
/* 813C076C | C0 22 86 34 */	lfs f1, lbl_81694A34@sda21(r0)
/* 813C0770 | 38 CD 8B 22 */	li r6, lbl_81696B62@sda21
/* 813C0774 | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 813C0778 | D0 01 00 10 */	stfs f0, 0x10(r1)
/* 813C077C | 80 9F 00 24 */	lwz r4, 0x24(r31)
/* 813C0780 | 80 BF 00 98 */	lwz r5, 0x98(r31)
/* 813C0784 | 48 01 0C 89 */	bl __ct__Q33ipl5scene11TextBalloonFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCcRCQ33ipl4math4VEC3ff
.L_813C0788:
/* 813C0788 | 90 7F 00 94 */	stw r3, 0x94(r31)
/* 813C078C | 38 60 00 20 */	li r3, 0x20
/* 813C0790 | 48 23 79 0D */	bl __nw__FUl
/* 813C0794 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C0798 | 7C 7D 1B 78 */	mr r29, r3
/* 813C079C | 41 82 00 14 */	beq .L_813C07B0
/* 813C07A0 | 4B FA 2D F1 */	bl __ct__Q33ipl7utility9BScrollerFv
/* 813C07A4 | 3C 60 81 64 */	lis r3, __vt__Q33ipl7utility14YoungBScroller@ha
/* 813C07A8 | 38 63 12 78 */	addi r3, r3, __vt__Q33ipl7utility14YoungBScroller@l
/* 813C07AC | 90 7D 00 00 */	stw r3, 0x0(r29)
.L_813C07B0:
/* 813C07B0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C07B4 | 93 BF 00 9C */	stw r29, 0x9c(r31)
/* 813C07B8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C07BC | 38 80 00 8F */	li r4, 0x8f
/* 813C07C0 | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 813C07C4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813C07C8 | 4B F7 DF F5 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813C07CC | 7C 7D 1B 78 */	mr r29, r3
/* 813C07D0 | 7F E3 FB 78 */	mr r3, r31
/* 813C07D4 | 48 04 C0 69 */	bl fn_8140C83C
/* 813C07D8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C07DC | 7F A4 EB 78 */	mr r4, r29
/* 813C07E0 | 81 8C 02 EC */	lwz r12, 0x2ec(r12)
/* 813C07E4 | 7D 89 03 A6 */	mtctr r12
/* 813C07E8 | 4E 80 04 21 */	bctrl
/* 813C07EC | 39 61 00 30 */	addi r11, r1, 0x30
/* 813C07F0 | 48 23 8D 21 */	bl _restgpr_28
/* 813C07F4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813C07F8 | 7C 08 03 A6 */	mtlr r0
/* 813C07FC | 38 21 00 30 */	addi r1, r1, 0x30
/* 813C0800 | 4E 80 00 20 */	blr
.endfn create__Q33ipl5scene12LetterWriterFv

# .text:0x50C | 0x813C0804 | size: 0x8
# textinput::extend::memo::InputForm::setNigaoeEventObserver(textinput::extend::memo::NigaoeEventObserver*)
.fn setNigaoeEventObserver__Q49textinput6extend4memo9InputFormFPQ49textinput6extend4memo19NigaoeEventObserver, global
/* 813C0804 | 90 83 03 E0 */	stw r4, 0x3e0(r3)
/* 813C0808 | 4E 80 00 20 */	blr
.endfn setNigaoeEventObserver__Q49textinput6extend4memo9InputFormFPQ49textinput6extend4memo19NigaoeEventObserver

# .text:0x514 | 0x813C080C | size: 0x8
# textinput::extend::letter::InputForm::setPhotoDraw(bool)
.fn setPhotoDraw__Q49textinput6extend6letter9InputFormFb, global
/* 813C080C | 98 83 04 01 */	stb r4, 0x401(r3)
/* 813C0810 | 4E 80 00 20 */	blr
.endfn setPhotoDraw__Q49textinput6extend6letter9InputFormFb

# .text:0x51C | 0x813C0814 | size: 0x8
# textinput::extend::letter::InputForm::setType(textinput::extend::letter::InputForm::Type)
.fn setType__Q49textinput6extend6letter9InputFormFQ59textinput6extend6letter9InputForm4Type, global
/* 813C0814 | 90 83 04 04 */	stw r4, 0x404(r3)
/* 813C0818 | 4E 80 00 20 */	blr
.endfn setType__Q49textinput6extend6letter9InputFormFQ59textinput6extend6letter9InputForm4Type

# .text:0x524 | 0x813C081C | size: 0x4
# textinput::Manager::start()
.fn start__Q29textinput7ManagerFv, global
/* 813C081C | 4E 80 00 20 */	blr
.endfn start__Q29textinput7ManagerFv

# .text:0x528 | 0x813C0820 | size: 0x4
# ipl::scene::LetterWriter::calcFadein()
.fn calcFadein__Q33ipl5scene12LetterWriterFv, global
/* 813C0820 | 48 04 B1 38 */	b fn_8140B958
.endfn calcFadein__Q33ipl5scene12LetterWriterFv

# .text:0x52C | 0x813C0824 | size: 0x234
# ipl::scene::LetterWriter::initCalcNormal()
.fn initCalcNormal__Q33ipl5scene12LetterWriterFv, global
/* 813C0824 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 813C0828 | 7C 08 02 A6 */	mflr r0
/* 813C082C | 90 01 00 54 */	stw r0, 0x54(r1)
/* 813C0830 | DB E1 00 40 */	stfd f31, 0x40(r1)
/* 813C0834 | F3 E1 00 48 */	psq_st f31, 0x48(r1), 0, qr0
/* 813C0838 | DB C1 00 30 */	stfd f30, 0x30(r1)
/* 813C083C | F3 C1 00 38 */	psq_st f30, 0x38(r1), 0, qr0
/* 813C0840 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813C0844 | 48 23 8C 85 */	bl _savegpr_29
/* 813C0848 | 80 03 01 E8 */	lwz r0, 0x1e8(r3)
/* 813C084C | 7C 7F 1B 78 */	mr r31, r3
/* 813C0850 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813C0854 | 41 82 00 18 */	beq .L_813C086C
/* 813C0858 | 40 80 01 1C */	bge .L_813C0974
/* 813C085C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C0860 | 41 82 00 0C */	beq .L_813C086C
/* 813C0864 | 48 00 01 10 */	b .L_813C0974
/* 813C0868 | 48 00 01 0C */	b .L_813C0974
.L_813C086C:
/* 813C086C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813C0870 | 40 82 00 20 */	bne .L_813C0890
/* 813C0874 | 7F E3 FB 78 */	mr r3, r31
/* 813C0878 | 7F E5 FB 78 */	mr r5, r31
/* 813C087C | 38 80 00 14 */	li r4, 0x14
/* 813C0880 | 38 C0 00 00 */	li r6, 0x0
/* 813C0884 | 38 E0 00 02 */	li r7, 0x2
/* 813C0888 | 48 04 96 01 */	bl createChildScene__Q33ipl5scene4BaseFiPQ33ipl5scene4BasePQ33ipl5scene4BasePv
/* 813C088C | 48 00 00 1C */	b .L_813C08A8
.L_813C0890:
/* 813C0890 | 7F E3 FB 78 */	mr r3, r31
/* 813C0894 | 7F E5 FB 78 */	mr r5, r31
/* 813C0898 | 38 80 00 14 */	li r4, 0x14
/* 813C089C | 38 C0 00 00 */	li r6, 0x0
/* 813C08A0 | 38 E0 00 01 */	li r7, 0x1
/* 813C08A4 | 48 04 95 E5 */	bl createChildScene__Q33ipl5scene4BaseFiPQ33ipl5scene4BasePQ33ipl5scene4BasePv
.L_813C08A8:
/* 813C08A8 | 38 00 00 01 */	li r0, 0x1
/* 813C08AC | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813C08B0 | 90 1F 01 E4 */	stw r0, 0x1e4(r31)
/* 813C08B4 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813C08B8 | 38 00 00 00 */	li r0, 0x0
/* 813C08BC | 80 64 00 90 */	lwz r3, 0x90(r4)
/* 813C08C0 | 98 03 00 2C */	stb r0, 0x2c(r3)
/* 813C08C4 | 80 1F 01 E8 */	lwz r0, 0x1e8(r31)
/* 813C08C8 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813C08CC | 40 82 01 64 */	bne .L_813C0A30
/* 813C08D0 | 80 64 00 64 */	lwz r3, 0x64(r4)
/* 813C08D4 | 38 80 00 04 */	li r4, 0x4
/* 813C08D8 | 48 04 A8 61 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C08DC | 7C 7D 1B 78 */	mr r29, r3
/* 813C08E0 | 4B FD 2C C1 */	bl getPictureTexObj__Q33ipl5scene5BoardCFv
/* 813C08E4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813C08E8 | 7C 64 1B 78 */	mr r4, r3
/* 813C08EC | 7F E3 FB 78 */	mr r3, r31
/* 813C08F0 | 81 8C 00 B4 */	lwz r12, 0xb4(r12)
/* 813C08F4 | 7D 89 03 A6 */	mtctr r12
/* 813C08F8 | 4E 80 04 21 */	bctrl
/* 813C08FC | 7F A3 EB 78 */	mr r3, r29
/* 813C0900 | 4B FD 2C C9 */	bl getPictureHeight__Q33ipl5scene5BoardCFv
/* 813C0904 | 6C 60 80 00 */	xoris r0, r3, 0x8000
/* 813C0908 | 3F C0 43 30 */	lis r30, 0x4330
/* 813C090C | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813C0910 | 7F A3 EB 78 */	mr r3, r29
/* 813C0914 | C8 22 86 40 */	lfd f1, lbl_81694A40@sda21(r0)
/* 813C0918 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813C091C | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 813C0920 | EF C0 08 28 */	fsubs f30, f0, f1
/* 813C0924 | 4B FD 2C 99 */	bl getPictureWidth__Q33ipl5scene5BoardCFv
/* 813C0928 | 6C 60 80 00 */	xoris r0, r3, 0x8000
/* 813C092C | 93 C1 00 10 */	stw r30, 0x10(r1)
/* 813C0930 | C8 22 86 40 */	lfd f1, lbl_81694A40@sda21(r0)
/* 813C0934 | 7F E3 FB 78 */	mr r3, r31
/* 813C0938 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C093C | C8 01 00 10 */	lfd f0, 0x10(r1)
/* 813C0940 | EF E0 08 28 */	fsubs f31, f0, f1
/* 813C0944 | 48 04 BE F9 */	bl fn_8140C83C
/* 813C0948 | FC 20 F8 90 */	fmr f1, f31
/* 813C094C | FC 40 F0 90 */	fmr f2, f30
/* 813C0950 | 48 08 47 0D */	bl fn_8144505C
/* 813C0954 | 7F E3 FB 78 */	mr r3, r31
/* 813C0958 | 48 04 BE E5 */	bl fn_8140C83C
/* 813C095C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C0960 | 38 80 00 01 */	li r4, 0x1
/* 813C0964 | 81 8C 02 E4 */	lwz r12, 0x2e4(r12)
/* 813C0968 | 7D 89 03 A6 */	mtctr r12
/* 813C096C | 4E 80 04 21 */	bctrl
/* 813C0970 | 48 00 00 C0 */	b .L_813C0A30
.L_813C0974:
/* 813C0974 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813C0978 | 40 82 00 34 */	bne .L_813C09AC
/* 813C097C | 38 A0 00 00 */	li r5, 0x0
/* 813C0980 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813C0984 | 90 A3 01 F8 */	stw r5, 0x1f8(r3)
/* 813C0988 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813C098C | 38 00 00 03 */	li r0, 0x3
/* 813C0990 | 80 84 00 90 */	lwz r4, 0x90(r4)
/* 813C0994 | 98 A4 00 2C */	stb r5, 0x2c(r4)
/* 813C0998 | 98 A3 01 E0 */	stb r5, 0x1e0(r3)
/* 813C099C | 90 03 01 E4 */	stw r0, 0x1e4(r3)
/* 813C09A0 | 7F E3 FB 78 */	mr r3, r31
/* 813C09A4 | 48 04 B0 09 */	bl fn_8140B9AC
/* 813C09A8 | 48 00 00 88 */	b .L_813C0A30
.L_813C09AC:
/* 813C09AC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C09B0 | 38 80 00 14 */	li r4, 0x14
/* 813C09B4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C09B8 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813C09BC | 48 04 A7 7D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C09C0 | 7C 64 1B 78 */	mr r4, r3
/* 813C09C4 | 38 7F 00 A0 */	addi r3, r31, 0xa0
/* 813C09C8 | 80 04 00 C0 */	lwz r0, 0xc0(r4)
/* 813C09CC | 38 A0 01 40 */	li r5, 0x140
/* 813C09D0 | 80 84 02 74 */	lwz r4, 0x274(r4)
/* 813C09D4 | 1C 00 01 40 */	mulli r0, r0, 0x140
/* 813C09D8 | 7C 84 02 14 */	add r4, r4, r0
/* 813C09DC | 4B F6 F8 55 */	bl memcpy
/* 813C09E0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813C09E4 | 7F E3 FB 78 */	mr r3, r31
/* 813C09E8 | 38 9F 00 A8 */	addi r4, r31, 0xa8
/* 813C09EC | 81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 813C09F0 | 7D 89 03 A6 */	mtctr r12
/* 813C09F4 | 4E 80 04 21 */	bctrl
/* 813C09F8 | 7C 7E 1B 78 */	mr r30, r3
/* 813C09FC | 7F E3 FB 78 */	mr r3, r31
/* 813C0A00 | 48 04 BE 3D */	bl fn_8140C83C
/* 813C0A04 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C0A08 | 7F C4 F3 78 */	mr r4, r30
/* 813C0A0C | 81 8C 02 60 */	lwz r12, 0x260(r12)
/* 813C0A10 | 7D 89 03 A6 */	mtctr r12
/* 813C0A14 | 4E 80 04 21 */	bctrl
/* 813C0A18 | 38 60 00 01 */	li r3, 0x1
/* 813C0A1C | 38 00 00 00 */	li r0, 0x0
/* 813C0A20 | 98 7F 01 E0 */	stb r3, 0x1e0(r31)
/* 813C0A24 | 7F E3 FB 78 */	mr r3, r31
/* 813C0A28 | 90 1F 01 E4 */	stw r0, 0x1e4(r31)
/* 813C0A2C | 48 04 AF 81 */	bl fn_8140B9AC
.L_813C0A30:
/* 813C0A30 | E3 E1 00 48 */	psq_l f31, 0x48(r1), 0, qr0
/* 813C0A34 | CB E1 00 40 */	lfd f31, 0x40(r1)
/* 813C0A38 | E3 C1 00 38 */	psq_l f30, 0x38(r1), 0, qr0
/* 813C0A3C | 39 61 00 30 */	addi r11, r1, 0x30
/* 813C0A40 | CB C1 00 30 */	lfd f30, 0x30(r1)
/* 813C0A44 | 48 23 8A D1 */	bl _restgpr_29
/* 813C0A48 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 813C0A4C | 7C 08 03 A6 */	mtlr r0
/* 813C0A50 | 38 21 00 50 */	addi r1, r1, 0x50
/* 813C0A54 | 4E 80 00 20 */	blr
.endfn initCalcNormal__Q33ipl5scene12LetterWriterFv

# .text:0x760 | 0x813C0A58 | size: 0x114
# ipl::scene::LetterWriter::getFriendInfo()
.fn getFriendInfo__Q33ipl5scene12LetterWriterFv, global
/* 813C0A58 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C0A5C | 7C 08 02 A6 */	mflr r0
/* 813C0A60 | 38 80 00 04 */	li r4, 0x4
/* 813C0A64 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C0A68 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C0A6C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813C0A70 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813C0A74 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813C0A78 | 7C 7E 1B 78 */	mr r30, r3
/* 813C0A7C | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813C0A80 | 48 04 A6 B9 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C0A84 | 38 9E 00 A0 */	addi r4, r30, 0xa0
/* 813C0A88 | 4B FD 29 11 */	bl getFriendInfo__Q33ipl5scene5BoardCFP15NWC24FriendInfo
/* 813C0A8C | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813C0A90 | 41 82 00 78 */	beq .L_813C0B08
/* 813C0A94 | 40 80 00 10 */	bge .L_813C0AA4
/* 813C0A98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C0A9C | 40 80 00 14 */	bge .L_813C0AB0
/* 813C0AA0 | 48 00 00 B0 */	b .L_813C0B50
.L_813C0AA4:
/* 813C0AA4 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 813C0AA8 | 40 80 00 A8 */	bge .L_813C0B50
/* 813C0AAC | 48 00 00 8C */	b .L_813C0B38
.L_813C0AB0:
/* 813C0AB0 | 38 C0 00 01 */	li r6, 0x1
/* 813C0AB4 | 38 00 00 00 */	li r0, 0x0
/* 813C0AB8 | 98 DE 01 E0 */	stb r6, 0x1e0(r30)
/* 813C0ABC | 7F C3 F3 78 */	mr r3, r30
/* 813C0AC0 | 38 9E 00 A8 */	addi r4, r30, 0xa8
/* 813C0AC4 | 90 1E 01 E4 */	stw r0, 0x1e4(r30)
/* 813C0AC8 | 80 BF 00 90 */	lwz r5, 0x90(r31)
/* 813C0ACC | 98 C5 00 2C */	stb r6, 0x2c(r5)
/* 813C0AD0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813C0AD4 | 81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 813C0AD8 | 7D 89 03 A6 */	mtctr r12
/* 813C0ADC | 4E 80 04 21 */	bctrl
/* 813C0AE0 | 7C 7F 1B 78 */	mr r31, r3
/* 813C0AE4 | 7F C3 F3 78 */	mr r3, r30
/* 813C0AE8 | 48 04 BD 55 */	bl fn_8140C83C
/* 813C0AEC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C0AF0 | 7F E4 FB 78 */	mr r4, r31
/* 813C0AF4 | 81 8C 02 60 */	lwz r12, 0x260(r12)
/* 813C0AF8 | 7D 89 03 A6 */	mtctr r12
/* 813C0AFC | 4E 80 04 21 */	bctrl
/* 813C0B00 | 38 60 00 01 */	li r3, 0x1
/* 813C0B04 | 48 00 00 50 */	b .L_813C0B54
.L_813C0B08:
/* 813C0B08 | 80 7E 01 F8 */	lwz r3, 0x1f8(r30)
/* 813C0B0C | 38 03 00 01 */	addi r0, r3, 0x1
/* 813C0B10 | 28 00 01 2C */	cmplwi r0, 0x12c
/* 813C0B14 | 90 1E 01 F8 */	stw r0, 0x1f8(r30)
/* 813C0B18 | 40 81 00 38 */	ble .L_813C0B50
/* 813C0B1C | 38 00 00 04 */	li r0, 0x4
/* 813C0B20 | 38 80 01 C6 */	li r4, 0x1c6
/* 813C0B24 | 90 1E 01 E4 */	stw r0, 0x1e4(r30)
/* 813C0B28 | 38 A0 00 2E */	li r5, 0x2e
/* 813C0B2C | 80 7F 00 AC */	lwz r3, 0xac(r31)
/* 813C0B30 | 4B F8 5B C9 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 813C0B34 | 48 00 00 1C */	b .L_813C0B50
.L_813C0B38:
/* 813C0B38 | 38 00 00 04 */	li r0, 0x4
/* 813C0B3C | 38 80 01 C8 */	li r4, 0x1c8
/* 813C0B40 | 90 1E 01 E4 */	stw r0, 0x1e4(r30)
/* 813C0B44 | 38 A0 00 2E */	li r5, 0x2e
/* 813C0B48 | 80 7F 00 AC */	lwz r3, 0xac(r31)
/* 813C0B4C | 4B F8 5B AD */	bl callBtn1__Q23ipl12DialogWindowFUlUl
.L_813C0B50:
/* 813C0B50 | 38 60 00 00 */	li r3, 0x0
.L_813C0B54:
/* 813C0B54 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C0B58 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C0B5C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813C0B60 | 7C 08 03 A6 */	mtlr r0
/* 813C0B64 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C0B68 | 4E 80 00 20 */	blr
.endfn getFriendInfo__Q33ipl5scene12LetterWriterFv

# .text:0x874 | 0x813C0B6C | size: 0xF0
# ipl::scene::LetterWriter::makeHeaderCaption(const wchar_t*)
.fn makeHeaderCaption__Q33ipl5scene12LetterWriterFPCw, global
/* 813C0B6C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813C0B70 | 7C 08 02 A6 */	mflr r0
/* 813C0B74 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813C0B78 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C0B7C | 48 23 89 4D */	bl _savegpr_29
/* 813C0B80 | 7C 7D 1B 78 */	mr r29, r3
/* 813C0B84 | 80 63 01 F0 */	lwz r3, 0x1f0(r3)
/* 813C0B88 | 7C 9E 23 78 */	mr r30, r4
/* 813C0B8C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C0B90 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813C0B94 | 7D 89 03 A6 */	mtctr r12
/* 813C0B98 | 4E 80 04 21 */	bctrl
/* 813C0B9C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C0BA0 | 38 80 00 8D */	li r4, 0x8d
/* 813C0BA4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C0BA8 | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 813C0BAC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813C0BB0 | 4B F7 DC 0D */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813C0BB4 | 7C 64 1B 78 */	mr r4, r3
/* 813C0BB8 | 80 7D 01 F0 */	lwz r3, 0x1f0(r29)
/* 813C0BBC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C0BC0 | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 813C0BC4 | 7D 89 03 A6 */	mtctr r12
/* 813C0BC8 | 4E 80 04 21 */	bctrl
/* 813C0BCC | 80 7D 01 F0 */	lwz r3, 0x1f0(r29)
/* 813C0BD0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C0BD4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813C0BD8 | 7D 89 03 A6 */	mtctr r12
/* 813C0BDC | 4E 80 04 21 */	bctrl
/* 813C0BE0 | 3C 80 81 65 */	lis r4, lbl_8165039A@ha
/* 813C0BE4 | 38 84 03 9A */	addi r4, r4, lbl_8165039A@l
/* 813C0BE8 | 48 24 7C 25 */	bl fn_8160880C
/* 813C0BEC | 7C 7F 1B 78 */	mr r31, r3
/* 813C0BF0 | 80 7D 01 F0 */	lwz r3, 0x1f0(r29)
/* 813C0BF4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C0BF8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813C0BFC | 7D 89 03 A6 */	mtctr r12
/* 813C0C00 | 4E 80 04 21 */	bctrl
/* 813C0C04 | 7C 03 F8 50 */	subf r0, r3, r31
/* 813C0C08 | 80 7D 01 F0 */	lwz r3, 0x1f0(r29)
/* 813C0C0C | 7C 00 0E 70 */	srawi r0, r0, 1
/* 813C0C10 | 7F C6 F3 78 */	mr r6, r30
/* 813C0C14 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C0C18 | 7C 00 01 94 */	addze r0, r0
/* 813C0C1C | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813C0C20 | 38 A0 00 0A */	li r5, 0xa
/* 813C0C24 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 813C0C28 | 7D 89 03 A6 */	mtctr r12
/* 813C0C2C | 4E 80 04 21 */	bctrl
/* 813C0C30 | 80 7D 01 F0 */	lwz r3, 0x1f0(r29)
/* 813C0C34 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C0C38 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813C0C3C | 7D 89 03 A6 */	mtctr r12
/* 813C0C40 | 4E 80 04 21 */	bctrl
/* 813C0C44 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C0C48 | 48 23 88 CD */	bl _restgpr_29
/* 813C0C4C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813C0C50 | 7C 08 03 A6 */	mtlr r0
/* 813C0C54 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813C0C58 | 4E 80 00 20 */	blr
.endfn makeHeaderCaption__Q33ipl5scene12LetterWriterFPCw

# .text:0x964 | 0x813C0C5C | size: 0x8
# textinput::tistring::StringBase::getWCString() const
.fn getWCString__Q39textinput8tistring10StringBaseCFv, global
/* 813C0C5C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813C0C60 | 4E 80 00 20 */	blr
.endfn getWCString__Q39textinput8tistring10StringBaseCFv

# .text:0x96C | 0x813C0C64 | size: 0x248
# ipl::scene::LetterWriter::calcNormal()
.fn calcNormal__Q33ipl5scene12LetterWriterFv, global
/* 813C0C64 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813C0C68 | 7C 08 02 A6 */	mflr r0
/* 813C0C6C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813C0C70 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C0C74 | 48 23 88 55 */	bl _savegpr_29
/* 813C0C78 | 80 03 01 E4 */	lwz r0, 0x1e4(r3)
/* 813C0C7C | 7C 7F 1B 78 */	mr r31, r3
/* 813C0C80 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813C0C84 | 41 82 01 3C */	beq .L_813C0DC0
/* 813C0C88 | 40 80 00 14 */	bge .L_813C0C9C
/* 813C0C8C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C0C90 | 41 82 01 FC */	beq .L_813C0E8C
/* 813C0C94 | 40 80 00 F8 */	bge .L_813C0D8C
/* 813C0C98 | 48 00 01 F4 */	b .L_813C0E8C
.L_813C0C9C:
/* 813C0C9C | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813C0CA0 | 41 82 00 34 */	beq .L_813C0CD4
/* 813C0CA4 | 40 80 01 E8 */	bge .L_813C0E8C
/* 813C0CA8 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813C0CAC | 38 00 00 00 */	li r0, 0x0
/* 813C0CB0 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813C0CB4 | 80 84 00 90 */	lwz r4, 0x90(r4)
/* 813C0CB8 | 98 04 00 2C */	stb r0, 0x2c(r4)
/* 813C0CBC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C0CC0 | 81 8C 00 C4 */	lwz r12, 0xc4(r12)
/* 813C0CC4 | 7D 89 03 A6 */	mtctr r12
/* 813C0CC8 | 4E 80 04 21 */	bctrl
/* 813C0CCC | 38 60 00 00 */	li r3, 0x0
/* 813C0CD0 | 48 00 01 C4 */	b .L_813C0E94
.L_813C0CD4:
/* 813C0CD4 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813C0CD8 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813C0CDC | 80 9E 00 AC */	lwz r4, 0xac(r30)
/* 813C0CE0 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 813C0CE4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813C0CE8 | 40 82 00 9C */	bne .L_813C0D84
/* 813C0CEC | 80 9E 00 90 */	lwz r4, 0x90(r30)
/* 813C0CF0 | 38 00 00 00 */	li r0, 0x0
/* 813C0CF4 | 98 04 00 2C */	stb r0, 0x2c(r4)
/* 813C0CF8 | 90 03 01 E4 */	stw r0, 0x1e4(r3)
/* 813C0CFC | 48 04 C0 31 */	bl fn_8140CD2C
/* 813C0D00 | 7C 7D 1B 78 */	mr r29, r3
/* 813C0D04 | 38 80 00 10 */	li r4, 0x10
/* 813C0D08 | 4B FD C7 21 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 813C0D0C | 7F A3 EB 78 */	mr r3, r29
/* 813C0D10 | 38 80 00 00 */	li r4, 0x0
/* 813C0D14 | 38 A0 01 3B */	li r5, 0x13b
/* 813C0D18 | 4B FD C7 45 */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 813C0D1C | 7F A3 EB 78 */	mr r3, r29
/* 813C0D20 | 38 80 00 01 */	li r4, 0x1
/* 813C0D24 | 38 A0 00 43 */	li r5, 0x43
/* 813C0D28 | 4B FD C7 35 */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 813C0D2C | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 813C0D30 | 38 80 00 04 */	li r4, 0x4
/* 813C0D34 | 48 04 A4 05 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C0D38 | 4B FC F0 E5 */	bl isOptOut__Q33ipl5scene5BoardCFv
/* 813C0D3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C0D40 | 41 82 00 14 */	beq .L_813C0D54
/* 813C0D44 | 7F A3 EB 78 */	mr r3, r29
/* 813C0D48 | 38 80 00 24 */	li r4, 0x24
/* 813C0D4C | 4B FD C6 DD */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 813C0D50 | 48 00 00 10 */	b .L_813C0D60
.L_813C0D54:
/* 813C0D54 | 7F A3 EB 78 */	mr r3, r29
/* 813C0D58 | 38 80 00 11 */	li r4, 0x11
/* 813C0D5C | 4B FD C6 CD */	bl reserveAnm__Q33ipl5scene6ButtonFi
.L_813C0D60:
/* 813C0D60 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813C0D64 | 7F E4 FB 78 */	mr r4, r31
/* 813C0D68 | 41 82 00 08 */	beq .L_813C0D70
/* 813C0D6C | 38 9F 00 58 */	addi r4, r31, 0x58
.L_813C0D70:
/* 813C0D70 | 7F A3 EB 78 */	mr r3, r29
/* 813C0D74 | 38 A0 00 00 */	li r5, 0x0
/* 813C0D78 | 4B FD BB C5 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 813C0D7C | 38 00 00 06 */	li r0, 0x6
/* 813C0D80 | 90 1F 00 64 */	stw r0, 0x64(r31)
.L_813C0D84:
/* 813C0D84 | 38 60 00 00 */	li r3, 0x0
/* 813C0D88 | 48 00 01 0C */	b .L_813C0E94
.L_813C0D8C:
/* 813C0D8C | 38 00 00 02 */	li r0, 0x2
/* 813C0D90 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813C0D94 | 90 03 01 E4 */	stw r0, 0x1e4(r3)
/* 813C0D98 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813C0D9C | 38 00 00 00 */	li r0, 0x0
/* 813C0DA0 | 80 84 00 90 */	lwz r4, 0x90(r4)
/* 813C0DA4 | 98 04 00 2C */	stb r0, 0x2c(r4)
/* 813C0DA8 | 48 04 BF 85 */	bl fn_8140CD2C
/* 813C0DAC | 38 80 00 00 */	li r4, 0x0
/* 813C0DB0 | 38 A0 00 00 */	li r5, 0x0
/* 813C0DB4 | 4B FD BB 89 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 813C0DB8 | 38 60 00 00 */	li r3, 0x0
/* 813C0DBC | 48 00 00 D8 */	b .L_813C0E94
.L_813C0DC0:
/* 813C0DC0 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813C0DC4 | 38 80 00 14 */	li r4, 0x14
/* 813C0DC8 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813C0DCC | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 813C0DD0 | 48 04 A3 69 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C0DD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C0DD8 | 40 82 00 AC */	bne .L_813C0E84
/* 813C0DDC | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 813C0DE0 | 80 03 01 04 */	lwz r0, 0x104(r3)
/* 813C0DE4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C0DE8 | 40 82 00 9C */	bne .L_813C0E84
/* 813C0DEC | 38 60 00 00 */	li r3, 0x0
/* 813C0DF0 | 38 00 00 01 */	li r0, 0x1
/* 813C0DF4 | 90 7F 01 E4 */	stw r3, 0x1e4(r31)
/* 813C0DF8 | 7F E3 FB 78 */	mr r3, r31
/* 813C0DFC | 80 9E 00 90 */	lwz r4, 0x90(r30)
/* 813C0E00 | 98 04 00 2C */	stb r0, 0x2c(r4)
/* 813C0E04 | 48 04 BF 29 */	bl fn_8140CD2C
/* 813C0E08 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813C0E0C | 7F E4 FB 78 */	mr r4, r31
/* 813C0E10 | 41 82 00 08 */	beq .L_813C0E18
/* 813C0E14 | 38 9F 00 58 */	addi r4, r31, 0x58
.L_813C0E18:
/* 813C0E18 | 38 A0 00 00 */	li r5, 0x0
/* 813C0E1C | 4B FD BB 21 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 813C0E20 | 88 1F 01 E0 */	lbz r0, 0x1e0(r31)
/* 813C0E24 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C0E28 | 40 82 00 24 */	bne .L_813C0E4C
/* 813C0E2C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C0E30 | 38 80 00 00 */	li r4, 0x0
/* 813C0E34 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C0E38 | 38 00 00 06 */	li r0, 0x6
/* 813C0E3C | 80 63 00 90 */	lwz r3, 0x90(r3)
/* 813C0E40 | 98 83 00 2C */	stb r4, 0x2c(r3)
/* 813C0E44 | 90 1F 00 64 */	stw r0, 0x64(r31)
/* 813C0E48 | 48 00 00 3C */	b .L_813C0E84
.L_813C0E4C:
/* 813C0E4C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813C0E50 | 7F E3 FB 78 */	mr r3, r31
/* 813C0E54 | 38 9F 00 A8 */	addi r4, r31, 0xa8
/* 813C0E58 | 81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 813C0E5C | 7D 89 03 A6 */	mtctr r12
/* 813C0E60 | 4E 80 04 21 */	bctrl
/* 813C0E64 | 7C 7E 1B 78 */	mr r30, r3
/* 813C0E68 | 7F E3 FB 78 */	mr r3, r31
/* 813C0E6C | 48 04 B9 D1 */	bl fn_8140C83C
/* 813C0E70 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C0E74 | 7F C4 F3 78 */	mr r4, r30
/* 813C0E78 | 81 8C 02 60 */	lwz r12, 0x260(r12)
/* 813C0E7C | 7D 89 03 A6 */	mtctr r12
/* 813C0E80 | 4E 80 04 21 */	bctrl
.L_813C0E84:
/* 813C0E84 | 38 60 00 00 */	li r3, 0x0
/* 813C0E88 | 48 00 00 0C */	b .L_813C0E94
.L_813C0E8C:
/* 813C0E8C | 7F E3 FB 78 */	mr r3, r31
/* 813C0E90 | 48 04 AB 35 */	bl fn_8140B9C4
.L_813C0E94:
/* 813C0E94 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C0E98 | 48 23 86 7D */	bl _restgpr_29
/* 813C0E9C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813C0EA0 | 7C 08 03 A6 */	mtlr r0
/* 813C0EA4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813C0EA8 | 4E 80 00 20 */	blr
.endfn calcNormal__Q33ipl5scene12LetterWriterFv

# .text:0xBB4 | 0x813C0EAC | size: 0x84
# ipl::scene::LetterWriter::initCalcFadeout()
.fn initCalcFadeout__Q33ipl5scene12LetterWriterFv, global
/* 813C0EAC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C0EB0 | 7C 08 02 A6 */	mflr r0
/* 813C0EB4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C0EB8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C0EBC | 7C 7F 1B 78 */	mr r31, r3
/* 813C0EC0 | 48 04 BE 6D */	bl fn_8140CD2C
/* 813C0EC4 | 38 80 00 00 */	li r4, 0x0
/* 813C0EC8 | 38 A0 00 00 */	li r5, 0x0
/* 813C0ECC | 4B FD BA 71 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 813C0ED0 | 80 1F 01 E8 */	lwz r0, 0x1e8(r31)
/* 813C0ED4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C0ED8 | 41 82 00 08 */	beq .L_813C0EE0
/* 813C0EDC | 48 00 00 20 */	b .L_813C0EFC
.L_813C0EE0:
/* 813C0EE0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C0EE4 | 38 80 00 08 */	li r4, 0x8
/* 813C0EE8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C0EEC | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813C0EF0 | 48 04 A2 49 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C0EF4 | 88 9F 00 7C */	lbz r4, 0x7c(r31)
/* 813C0EF8 | 48 00 25 61 */	bl finishLetter__Q33ipl5scene17MailAddressSelectFb
.L_813C0EFC:
/* 813C0EFC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C0F00 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C0F04 | 80 63 00 90 */	lwz r3, 0x90(r3)
/* 813C0F08 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813C0F0C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C0F10 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 813C0F14 | 7D 89 03 A6 */	mtctr r12
/* 813C0F18 | 4E 80 04 21 */	bctrl
/* 813C0F1C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C0F20 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C0F24 | 7C 08 03 A6 */	mtlr r0
/* 813C0F28 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C0F2C | 4E 80 00 20 */	blr
.endfn initCalcFadeout__Q33ipl5scene12LetterWriterFv

# .text:0xC38 | 0x813C0F30 | size: 0x4
# textinput::Manager::end()
.fn end__Q29textinput7ManagerFv, global
/* 813C0F30 | 4E 80 00 20 */	blr
.endfn end__Q29textinput7ManagerFv

# .text:0xC3C | 0x813C0F34 | size: 0x4
# ipl::scene::LetterWriter::calcFadeout()
.fn calcFadeout__Q33ipl5scene12LetterWriterFv, global
/* 813C0F34 | 48 04 B2 F8 */	b fn_8140C22C
.endfn calcFadeout__Q33ipl5scene12LetterWriterFv

# .text:0xC40 | 0x813C0F38 | size: 0x314
# ipl::scene::LetterWriter::onEventDerived(unsigned long, unsigned long, const ipl::controller::Interface*)
.fn onEventDerived__Q33ipl5scene12LetterWriterFUlUlPCQ33ipl10controller9Interface, global
/* 813C0F38 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813C0F3C | 7C 08 02 A6 */	mflr r0
/* 813C0F40 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813C0F44 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C0F48 | 48 23 85 7D */	bl _savegpr_28
/* 813C0F4C | 80 03 00 64 */	lwz r0, 0x64(r3)
/* 813C0F50 | 7C 7F 1B 78 */	mr r31, r3
/* 813C0F54 | 7C 9E 23 78 */	mr r30, r4
/* 813C0F58 | 7C BD 2B 78 */	mr r29, r5
/* 813C0F5C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813C0F60 | 7C DC 33 78 */	mr r28, r6
/* 813C0F64 | 41 82 02 D0 */	beq .L_813C1234
/* 813C0F68 | 48 04 B8 C1 */	bl fn_8140C828
/* 813C0F6C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C0F70 | 81 8C 00 E0 */	lwz r12, 0xe0(r12)
/* 813C0F74 | 7D 89 03 A6 */	mtctr r12
/* 813C0F78 | 4E 80 04 21 */	bctrl
/* 813C0F7C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C0F80 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813C0F84 | 7D 89 03 A6 */	mtctr r12
/* 813C0F88 | 4E 80 04 21 */	bctrl
/* 813C0F8C | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813C0F90 | 41 82 02 A4 */	beq .L_813C1234
/* 813C0F94 | 80 1F 01 E4 */	lwz r0, 0x1e4(r31)
/* 813C0F98 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C0F9C | 40 82 02 98 */	bne .L_813C1234
/* 813C0FA0 | 80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 813C0FA4 | 7F C4 F3 78 */	mr r4, r30
/* 813C0FA8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C0FAC | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813C0FB0 | 7D 89 03 A6 */	mtctr r12
/* 813C0FB4 | 4E 80 04 21 */	bctrl
/* 813C0FB8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C0FBC | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 813C0FC0 | 7D 89 03 A6 */	mtctr r12
/* 813C0FC4 | 4E 80 04 21 */	bctrl
/* 813C0FC8 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813C0FCC | 3B A3 00 B4 */	addi r29, r3, 0xb4
/* 813C0FD0 | 41 82 00 08 */	beq .L_813C0FD8
/* 813C0FD4 | 48 00 02 60 */	b .L_813C1234
.L_813C0FD8:
/* 813C0FD8 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 813C0FDC | 3C 80 00 10 */	lis r4, 0x10
/* 813C0FE0 | 7F 83 E3 78 */	mr r3, r28
/* 813C0FE4 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813C0FE8 | 38 84 08 00 */	addi r4, r4, 0x800
/* 813C0FEC | 7D 89 03 A6 */	mtctr r12
/* 813C0FF0 | 4E 80 04 21 */	bctrl
/* 813C0FF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C0FF8 | 41 82 02 3C */	beq .L_813C1234
/* 813C0FFC | 7F E3 FB 78 */	mr r3, r31
/* 813C1000 | 48 04 BD 2D */	bl fn_8140CD2C
/* 813C1004 | 3F C0 81 65 */	lis r30, mscButtonName__Q33ipl5scene6Button@ha
/* 813C1008 | 7C 7C 1B 78 */	mr r28, r3
/* 813C100C | 3B DE BF 5C */	addi r30, r30, mscButtonName__Q33ipl5scene6Button@l
/* 813C1010 | 7F A3 EB 78 */	mr r3, r29
/* 813C1014 | 80 9E 00 14 */	lwz r4, 0x14(r30)
/* 813C1018 | 48 24 14 69 */	bl strcmp
/* 813C101C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C1020 | 40 82 01 98 */	bne .L_813C11B8
/* 813C1024 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813C1028 | 3C 80 81 65 */	lis r4, lbl_816503B0@ha
/* 813C102C | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813C1030 | 38 84 03 B0 */	addi r4, r4, lbl_816503B0@l
/* 813C1034 | 4B FA A4 39 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813C1038 | 7F 83 E3 78 */	mr r3, r28
/* 813C103C | 38 80 00 1B */	li r4, 0x1b
/* 813C1040 | 4B FD BB 19 */	bl iplButton_8139CB58
/* 813C1044 | 80 1F 01 E8 */	lwz r0, 0x1e8(r31)
/* 813C1048 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813C104C | 41 82 00 24 */	beq .L_813C1070
/* 813C1050 | 40 80 00 14 */	bge .L_813C1064
/* 813C1054 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C1058 | 41 82 00 FC */	beq .L_813C1154
/* 813C105C | 40 80 00 BC */	bge .L_813C1118
/* 813C1060 | 48 00 00 F4 */	b .L_813C1154
.L_813C1064:
/* 813C1064 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813C1068 | 40 80 00 EC */	bge .L_813C1154
/* 813C106C | 48 00 00 40 */	b .L_813C10AC
.L_813C1070:
/* 813C1070 | 7F 83 E3 78 */	mr r3, r28
/* 813C1074 | 38 80 00 10 */	li r4, 0x10
/* 813C1078 | 4B FD C3 B1 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 813C107C | 7F 83 E3 78 */	mr r3, r28
/* 813C1080 | 38 80 00 00 */	li r4, 0x0
/* 813C1084 | 38 A0 01 3B */	li r5, 0x13b
/* 813C1088 | 4B FD C3 D5 */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 813C108C | 7F 83 E3 78 */	mr r3, r28
/* 813C1090 | 38 80 00 01 */	li r4, 0x1
/* 813C1094 | 38 A0 00 27 */	li r5, 0x27
/* 813C1098 | 4B FD C3 C5 */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 813C109C | 7F 83 E3 78 */	mr r3, r28
/* 813C10A0 | 38 80 00 0F */	li r4, 0xf
/* 813C10A4 | 4B FD C3 85 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 813C10A8 | 48 00 00 D4 */	b .L_813C117C
.L_813C10AC:
/* 813C10AC | 7F 83 E3 78 */	mr r3, r28
/* 813C10B0 | 38 80 00 10 */	li r4, 0x10
/* 813C10B4 | 4B FD C3 75 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 813C10B8 | 7F 83 E3 78 */	mr r3, r28
/* 813C10BC | 38 80 00 00 */	li r4, 0x0
/* 813C10C0 | 38 A0 01 3B */	li r5, 0x13b
/* 813C10C4 | 4B FD C3 99 */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 813C10C8 | 7F 83 E3 78 */	mr r3, r28
/* 813C10CC | 38 80 00 01 */	li r4, 0x1
/* 813C10D0 | 38 A0 00 43 */	li r5, 0x43
/* 813C10D4 | 4B FD C3 89 */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 813C10D8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C10DC | 38 80 00 04 */	li r4, 0x4
/* 813C10E0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C10E4 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813C10E8 | 48 04 A0 51 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C10EC | 4B FC ED 31 */	bl isOptOut__Q33ipl5scene5BoardCFv
/* 813C10F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C10F4 | 41 82 00 14 */	beq .L_813C1108
/* 813C10F8 | 7F 83 E3 78 */	mr r3, r28
/* 813C10FC | 38 80 00 24 */	li r4, 0x24
/* 813C1100 | 4B FD C3 29 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 813C1104 | 48 00 00 78 */	b .L_813C117C
.L_813C1108:
/* 813C1108 | 7F 83 E3 78 */	mr r3, r28
/* 813C110C | 38 80 00 11 */	li r4, 0x11
/* 813C1110 | 4B FD C3 19 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 813C1114 | 48 00 00 68 */	b .L_813C117C
.L_813C1118:
/* 813C1118 | 7F 83 E3 78 */	mr r3, r28
/* 813C111C | 38 80 00 10 */	li r4, 0x10
/* 813C1120 | 4B FD C3 09 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 813C1124 | 7F 83 E3 78 */	mr r3, r28
/* 813C1128 | 38 80 00 00 */	li r4, 0x0
/* 813C112C | 38 A0 00 23 */	li r5, 0x23
/* 813C1130 | 4B FD C3 2D */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 813C1134 | 7F 83 E3 78 */	mr r3, r28
/* 813C1138 | 38 80 00 01 */	li r4, 0x1
/* 813C113C | 38 A0 00 29 */	li r5, 0x29
/* 813C1140 | 4B FD C3 1D */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 813C1144 | 7F 83 E3 78 */	mr r3, r28
/* 813C1148 | 38 80 00 0F */	li r4, 0xf
/* 813C114C | 4B FD C2 DD */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 813C1150 | 48 00 00 2C */	b .L_813C117C
.L_813C1154:
/* 813C1154 | 7F 83 E3 78 */	mr r3, r28
/* 813C1158 | 38 80 00 10 */	li r4, 0x10
/* 813C115C | 4B FD C2 CD */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 813C1160 | 7F 83 E3 78 */	mr r3, r28
/* 813C1164 | 38 80 00 00 */	li r4, 0x0
/* 813C1168 | 38 A0 00 23 */	li r5, 0x23
/* 813C116C | 4B FD C2 F1 */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 813C1170 | 7F 83 E3 78 */	mr r3, r28
/* 813C1174 | 38 80 00 0B */	li r4, 0xb
/* 813C1178 | 4B FD C2 B1 */	bl reserveAnm__Q33ipl5scene6ButtonFi
.L_813C117C:
/* 813C117C | 7F 83 E3 78 */	mr r3, r28
/* 813C1180 | 38 80 00 00 */	li r4, 0x0
/* 813C1184 | 38 A0 00 00 */	li r5, 0x0
/* 813C1188 | 4B FD B7 B5 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 813C118C | 38 00 00 00 */	li r0, 0x0
/* 813C1190 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813C1194 | 98 1F 00 7C */	stb r0, 0x7c(r31)
/* 813C1198 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813C119C | 80 64 00 90 */	lwz r3, 0x90(r4)
/* 813C11A0 | 98 03 00 2C */	stb r0, 0x2c(r3)
/* 813C11A4 | 80 64 00 90 */	lwz r3, 0x90(r4)
/* 813C11A8 | 4B F9 52 65 */	bl sendRelease__Q33ipl8keyboard7ManagerFv
/* 813C11AC | 38 00 00 06 */	li r0, 0x6
/* 813C11B0 | 90 1F 00 64 */	stw r0, 0x64(r31)
/* 813C11B4 | 48 00 00 80 */	b .L_813C1234
.L_813C11B8:
/* 813C11B8 | 80 9E 00 1C */	lwz r4, 0x1c(r30)
/* 813C11BC | 7F A3 EB 78 */	mr r3, r29
/* 813C11C0 | 48 24 12 C1 */	bl strcmp
/* 813C11C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C11C8 | 40 82 00 6C */	bne .L_813C1234
/* 813C11CC | 7F 83 E3 78 */	mr r3, r28
/* 813C11D0 | 38 80 00 1D */	li r4, 0x1d
/* 813C11D4 | 4B FD B9 85 */	bl iplButton_8139CB58
/* 813C11D8 | 7F 83 E3 78 */	mr r3, r28
/* 813C11DC | 38 80 00 00 */	li r4, 0x0
/* 813C11E0 | 38 A0 00 00 */	li r5, 0x0
/* 813C11E4 | 4B FD B7 59 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 813C11E8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C11EC | 38 00 00 00 */	li r0, 0x0
/* 813C11F0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C11F4 | 80 63 00 90 */	lwz r3, 0x90(r3)
/* 813C11F8 | 98 03 00 2C */	stb r0, 0x2c(r3)
/* 813C11FC | 80 1F 01 E8 */	lwz r0, 0x1e8(r31)
/* 813C1200 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813C1204 | 41 82 00 1C */	beq .L_813C1220
/* 813C1208 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813C120C | 7F E3 FB 78 */	mr r3, r31
/* 813C1210 | 81 8C 00 A0 */	lwz r12, 0xa0(r12)
/* 813C1214 | 7D 89 03 A6 */	mtctr r12
/* 813C1218 | 4E 80 04 21 */	bctrl
/* 813C121C | 48 00 00 18 */	b .L_813C1234
.L_813C1220:
/* 813C1220 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813C1224 | 7F E3 FB 78 */	mr r3, r31
/* 813C1228 | 81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 813C122C | 7D 89 03 A6 */	mtctr r12
/* 813C1230 | 4E 80 04 21 */	bctrl
.L_813C1234:
/* 813C1234 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C1238 | 48 23 82 D9 */	bl _restgpr_28
/* 813C123C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813C1240 | 7C 08 03 A6 */	mtlr r0
/* 813C1244 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813C1248 | 4E 80 00 20 */	blr
.endfn onEventDerived__Q33ipl5scene12LetterWriterFUlUlPCQ33ipl10controller9Interface

# .text:0xF54 | 0x813C124C | size: 0x2C8
# ipl::scene::LetterWriter::onSend()
.fn onSend__Q33ipl5scene12LetterWriterFv, global
/* 813C124C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813C1250 | 7C 08 02 A6 */	mflr r0
/* 813C1254 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813C1258 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813C125C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 813C1260 | 7C 7E 1B 78 */	mr r30, r3
/* 813C1264 | 48 04 BA C9 */	bl fn_8140CD2C
/* 813C1268 | 3C 80 81 65 */	lis r4, lbl_816503BF@ha
/* 813C126C | 3C A0 81 09 */	lis r5, sSystem__Q23ipl3snd@ha
/* 813C1270 | 7C 7F 1B 78 */	mr r31, r3
/* 813C1274 | 38 65 99 2C */	addi r3, r5, sSystem__Q23ipl3snd@l
/* 813C1278 | 38 84 03 BF */	addi r4, r4, lbl_816503BF@l
/* 813C127C | 4B FA A1 F1 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813C1280 | 38 00 00 00 */	li r0, 0x0
/* 813C1284 | 7F C3 F3 78 */	mr r3, r30
/* 813C1288 | 98 1E 00 7D */	stb r0, 0x7d(r30)
/* 813C128C | 48 04 B5 B1 */	bl fn_8140C83C
/* 813C1290 | 80 63 03 E8 */	lwz r3, 0x3e8(r3)
/* 813C1294 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C1298 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813C129C | 7D 89 03 A6 */	mtctr r12
/* 813C12A0 | 4E 80 04 21 */	bctrl
/* 813C12A4 | 7C 64 1B 78 */	mr r4, r3
/* 813C12A8 | 80 7E 00 80 */	lwz r3, 0x80(r30)
/* 813C12AC | 38 A0 04 00 */	li r5, 0x400
/* 813C12B0 | 48 24 51 B1 */	bl fn_81606460
/* 813C12B4 | 88 1E 01 E0 */	lbz r0, 0x1e0(r30)
/* 813C12B8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C12BC | 41 82 00 18 */	beq .L_813C12D4
/* 813C12C0 | 80 1E 00 E0 */	lwz r0, 0xe0(r30)
/* 813C12C4 | 80 7E 00 E4 */	lwz r3, 0xe4(r30)
/* 813C12C8 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 813C12CC | 90 01 00 08 */	stw r0, 0x8(r1)
/* 813C12D0 | 48 00 00 1C */	b .L_813C12EC
.L_813C12D4:
/* 813C12D4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813C12D8 | 7F C3 F3 78 */	mr r3, r30
/* 813C12DC | 38 81 00 08 */	addi r4, r1, 0x8
/* 813C12E0 | 81 8C 00 AC */	lwz r12, 0xac(r12)
/* 813C12E4 | 7D 89 03 A6 */	mtctr r12
/* 813C12E8 | 4E 80 04 21 */	bctrl
.L_813C12EC:
/* 813C12EC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813C12F0 | 7F C3 F3 78 */	mr r3, r30
/* 813C12F4 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 813C12F8 | 81 8C 00 A4 */	lwz r12, 0xa4(r12)
/* 813C12FC | 80 C1 00 0C */	lwz r6, 0xc(r1)
/* 813C1300 | 80 FE 00 80 */	lwz r7, 0x80(r30)
/* 813C1304 | 7D 89 03 A6 */	mtctr r12
/* 813C1308 | 4E 80 04 21 */	bctrl
/* 813C130C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C1310 | 41 82 00 18 */	beq .L_813C1328
/* 813C1314 | 3C 60 81 65 */	lis r3, lbl_816503CE@ha
/* 813C1318 | 38 63 03 CE */	addi r3, r3, lbl_816503CE@l
/* 813C131C | 4C C6 31 82 */	crclr cr1eq
/* 813C1320 | 48 16 D3 81 */	bl OSReport
/* 813C1324 | 48 00 00 24 */	b .L_813C1348
.L_813C1328:
/* 813C1328 | 38 7E 00 A8 */	addi r3, r30, 0xa8
/* 813C132C | 4B F7 F5 B1 */	bl sendMsgLog__Q23ipl11PlayTimeLogFPCw
/* 813C1330 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C1334 | 38 80 00 04 */	li r4, 0x4
/* 813C1338 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C133C | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813C1340 | 48 04 9D F9 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C1344 | 4B FD 26 2D */	bl reopen_log__Q33ipl5scene5BoardFv
.L_813C1348:
/* 813C1348 | 80 1E 01 E8 */	lwz r0, 0x1e8(r30)
/* 813C134C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813C1350 | 41 82 00 18 */	beq .L_813C1368
/* 813C1354 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813C1358 | 7F C3 F3 78 */	mr r3, r30
/* 813C135C | 81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 813C1360 | 7D 89 03 A6 */	mtctr r12
/* 813C1364 | 4E 80 04 21 */	bctrl
.L_813C1368:
/* 813C1368 | 38 00 00 01 */	li r0, 0x1
/* 813C136C | 7F E3 FB 78 */	mr r3, r31
/* 813C1370 | 98 1E 00 7D */	stb r0, 0x7d(r30)
/* 813C1374 | 38 80 00 1D */	li r4, 0x1d
/* 813C1378 | 4B FD B7 E1 */	bl iplButton_8139CB58
/* 813C137C | 80 1E 01 E8 */	lwz r0, 0x1e8(r30)
/* 813C1380 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813C1384 | 41 82 00 24 */	beq .L_813C13A8
/* 813C1388 | 40 80 00 14 */	bge .L_813C139C
/* 813C138C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C1390 | 41 82 00 FC */	beq .L_813C148C
/* 813C1394 | 40 80 00 BC */	bge .L_813C1450
/* 813C1398 | 48 00 00 F4 */	b .L_813C148C
.L_813C139C:
/* 813C139C | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813C13A0 | 40 80 00 EC */	bge .L_813C148C
/* 813C13A4 | 48 00 00 40 */	b .L_813C13E4
.L_813C13A8:
/* 813C13A8 | 7F E3 FB 78 */	mr r3, r31
/* 813C13AC | 38 80 00 10 */	li r4, 0x10
/* 813C13B0 | 4B FD C0 79 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 813C13B4 | 7F E3 FB 78 */	mr r3, r31
/* 813C13B8 | 38 80 00 00 */	li r4, 0x0
/* 813C13BC | 38 A0 01 3B */	li r5, 0x13b
/* 813C13C0 | 4B FD C0 9D */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 813C13C4 | 7F E3 FB 78 */	mr r3, r31
/* 813C13C8 | 38 80 00 01 */	li r4, 0x1
/* 813C13CC | 38 A0 00 27 */	li r5, 0x27
/* 813C13D0 | 4B FD C0 8D */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 813C13D4 | 7F E3 FB 78 */	mr r3, r31
/* 813C13D8 | 38 80 00 0F */	li r4, 0xf
/* 813C13DC | 4B FD C0 4D */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 813C13E0 | 48 00 00 D4 */	b .L_813C14B4
.L_813C13E4:
/* 813C13E4 | 7F E3 FB 78 */	mr r3, r31
/* 813C13E8 | 38 80 00 10 */	li r4, 0x10
/* 813C13EC | 4B FD C0 3D */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 813C13F0 | 7F E3 FB 78 */	mr r3, r31
/* 813C13F4 | 38 80 00 00 */	li r4, 0x0
/* 813C13F8 | 38 A0 01 3B */	li r5, 0x13b
/* 813C13FC | 4B FD C0 61 */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 813C1400 | 7F E3 FB 78 */	mr r3, r31
/* 813C1404 | 38 80 00 01 */	li r4, 0x1
/* 813C1408 | 38 A0 00 43 */	li r5, 0x43
/* 813C140C | 4B FD C0 51 */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 813C1410 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C1414 | 38 80 00 04 */	li r4, 0x4
/* 813C1418 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C141C | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813C1420 | 48 04 9D 19 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C1424 | 4B FC E9 F9 */	bl isOptOut__Q33ipl5scene5BoardCFv
/* 813C1428 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C142C | 41 82 00 14 */	beq .L_813C1440
/* 813C1430 | 7F E3 FB 78 */	mr r3, r31
/* 813C1434 | 38 80 00 24 */	li r4, 0x24
/* 813C1438 | 4B FD BF F1 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 813C143C | 48 00 00 78 */	b .L_813C14B4
.L_813C1440:
/* 813C1440 | 7F E3 FB 78 */	mr r3, r31
/* 813C1444 | 38 80 00 11 */	li r4, 0x11
/* 813C1448 | 4B FD BF E1 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 813C144C | 48 00 00 68 */	b .L_813C14B4
.L_813C1450:
/* 813C1450 | 7F E3 FB 78 */	mr r3, r31
/* 813C1454 | 38 80 00 10 */	li r4, 0x10
/* 813C1458 | 4B FD BF D1 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 813C145C | 7F E3 FB 78 */	mr r3, r31
/* 813C1460 | 38 80 00 00 */	li r4, 0x0
/* 813C1464 | 38 A0 00 23 */	li r5, 0x23
/* 813C1468 | 4B FD BF F5 */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 813C146C | 7F E3 FB 78 */	mr r3, r31
/* 813C1470 | 38 80 00 01 */	li r4, 0x1
/* 813C1474 | 38 A0 00 29 */	li r5, 0x29
/* 813C1478 | 4B FD BF E5 */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 813C147C | 7F E3 FB 78 */	mr r3, r31
/* 813C1480 | 38 80 00 0F */	li r4, 0xf
/* 813C1484 | 4B FD BF A5 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 813C1488 | 48 00 00 2C */	b .L_813C14B4
.L_813C148C:
/* 813C148C | 7F E3 FB 78 */	mr r3, r31
/* 813C1490 | 38 80 00 10 */	li r4, 0x10
/* 813C1494 | 4B FD BF 95 */	bl reserveAnm__Q33ipl5scene6ButtonFi
/* 813C1498 | 7F E3 FB 78 */	mr r3, r31
/* 813C149C | 38 80 00 00 */	li r4, 0x0
/* 813C14A0 | 38 A0 00 23 */	li r5, 0x23
/* 813C14A4 | 4B FD BF B9 */	bl reserveText__Q33ipl5scene6ButtonFiUl
/* 813C14A8 | 7F E3 FB 78 */	mr r3, r31
/* 813C14AC | 38 80 00 0A */	li r4, 0xa
/* 813C14B0 | 4B FD BF 79 */	bl reserveAnm__Q33ipl5scene6ButtonFi
.L_813C14B4:
/* 813C14B4 | 7F E3 FB 78 */	mr r3, r31
/* 813C14B8 | 38 80 00 00 */	li r4, 0x0
/* 813C14BC | 38 A0 00 00 */	li r5, 0x0
/* 813C14C0 | 4B FD B4 7D */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 813C14C4 | 3B E0 00 01 */	li r31, 0x1
/* 813C14C8 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813C14CC | 9B FE 00 7C */	stb r31, 0x7c(r30)
/* 813C14D0 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813C14D4 | 38 00 00 00 */	li r0, 0x0
/* 813C14D8 | 80 64 00 90 */	lwz r3, 0x90(r4)
/* 813C14DC | 98 03 00 2C */	stb r0, 0x2c(r3)
/* 813C14E0 | 80 64 00 90 */	lwz r3, 0x90(r4)
/* 813C14E4 | 4B F9 4F 29 */	bl sendRelease__Q33ipl8keyboard7ManagerFv
/* 813C14E8 | 7F C3 F3 78 */	mr r3, r30
/* 813C14EC | 48 04 B3 51 */	bl fn_8140C83C
/* 813C14F0 | 9B E3 03 F0 */	stb r31, 0x3f0(r3)
/* 813C14F4 | 38 00 00 06 */	li r0, 0x6
/* 813C14F8 | 90 1E 00 64 */	stw r0, 0x64(r30)
/* 813C14FC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813C1500 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 813C1504 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813C1508 | 7C 08 03 A6 */	mtlr r0
/* 813C150C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813C1510 | 4E 80 00 20 */	blr
.endfn onSend__Q33ipl5scene12LetterWriterFv

# .text:0x121C | 0x813C1514 | size: 0x38
# ipl::scene::LetterWriter::sendMessageByNWC24(unsigned long long, const wchar_t*)
.fn sendMessageByNWC24__Q33ipl5scene12LetterWriterFUxPCw, global
/* 813C1514 | 88 03 01 E0 */	lbz r0, 0x1e0(r3)
/* 813C1518 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C151C | 41 82 00 20 */	beq .L_813C153C
/* 813C1520 | 80 03 00 A0 */	lwz r0, 0xa0(r3)
/* 813C1524 | 28 00 00 02 */	cmplwi r0, 0x2
/* 813C1528 | 40 82 00 14 */	bne .L_813C153C
/* 813C152C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C1530 | 81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 813C1534 | 7D 89 03 A6 */	mtctr r12
/* 813C1538 | 4E 80 04 20 */	bctr
.L_813C153C:
/* 813C153C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C1540 | 81 8C 00 B8 */	lwz r12, 0xb8(r12)
/* 813C1544 | 7D 89 03 A6 */	mtctr r12
/* 813C1548 | 4E 80 04 20 */	bctr
.endfn sendMessageByNWC24__Q33ipl5scene12LetterWriterFUxPCw

# .text:0x1254 | 0x813C154C | size: 0x344
# ipl::scene::LetterWriter::sendToWii(unsigned long long, const wchar_t*)
.fn sendToWii__Q33ipl5scene12LetterWriterFUxPCw, global
/* 813C154C | 94 21 FE 80 */	stwu r1, -0x180(r1)
/* 813C1550 | 7C 08 02 A6 */	mflr r0
/* 813C1554 | 90 01 01 84 */	stw r0, 0x184(r1)
/* 813C1558 | 39 61 01 80 */	addi r11, r1, 0x180
/* 813C155C | 48 23 7F 65 */	bl _savegpr_27
/* 813C1560 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813C1564 | 3F E0 81 65 */	lis r31, lbl_81650380@ha
/* 813C1568 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813C156C | 7C 7E 1B 78 */	mr r30, r3
/* 813C1570 | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 813C1574 | 7C BD 2B 78 */	mr r29, r5
/* 813C1578 | 7C DB 33 78 */	mr r27, r6
/* 813C157C | 7C FC 3B 78 */	mr r28, r7
/* 813C1580 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C1584 | 3B FF 03 80 */	addi r31, r31, lbl_81650380@l
/* 813C1588 | 41 82 00 0C */	beq .L_813C1594
/* 813C158C | 38 60 00 00 */	li r3, 0x0
/* 813C1590 | 48 00 00 08 */	b .L_813C1598
.L_813C1594:
/* 813C1594 | 80 64 00 8C */	lwz r3, 0x8c(r4)
.L_813C1598:
/* 813C1598 | 38 81 00 5C */	addi r4, r1, 0x5c
/* 813C159C | 38 A0 00 02 */	li r5, 0x2
/* 813C15A0 | 4B F8 05 69 */	bl initMsgObj__Q33ipl5nwc247ManagerFP11NWC24MsgObj12NWC24MsgType
/* 813C15A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C15A8 | 40 82 00 18 */	bne .L_813C15C0
/* 813C15AC | 38 7F 00 58 */	addi r3, r31, 0x58
/* 813C15B0 | 4C C6 31 82 */	crclr cr1eq
/* 813C15B4 | 48 16 D0 ED */	bl OSReport
/* 813C15B8 | 38 60 FF FF */	li r3, -0x1
/* 813C15BC | 48 00 02 BC */	b .L_813C1878
.L_813C15C0:
/* 813C15C0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C15C4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C15C8 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 813C15CC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C15D0 | 41 82 00 0C */	beq .L_813C15DC
/* 813C15D4 | 38 60 00 00 */	li r3, 0x0
/* 813C15D8 | 48 00 00 08 */	b .L_813C15E0
.L_813C15DC:
/* 813C15DC | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_813C15E0:
/* 813C15E0 | 7F 66 DB 78 */	mr r6, r27
/* 813C15E4 | 7F A5 EB 78 */	mr r5, r29
/* 813C15E8 | 38 81 00 5C */	addi r4, r1, 0x5c
/* 813C15EC | 4B F8 05 61 */	bl setMsgToId__Q33ipl5nwc247ManagerFP11NWC24MsgObjUx
/* 813C15F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C15F4 | 40 82 00 18 */	bne .L_813C160C
/* 813C15F8 | 38 7F 00 6D */	addi r3, r31, 0x6d
/* 813C15FC | 4C C6 31 82 */	crclr cr1eq
/* 813C1600 | 48 16 D0 A1 */	bl OSReport
/* 813C1604 | 38 60 FF FF */	li r3, -0x1
/* 813C1608 | 48 00 02 70 */	b .L_813C1878
.L_813C160C:
/* 813C160C | 7F 66 DB 78 */	mr r6, r27
/* 813C1610 | 7F A5 EB 78 */	mr r5, r29
/* 813C1614 | 38 7F 00 82 */	addi r3, r31, 0x82
/* 813C1618 | 4C C6 31 82 */	crclr cr1eq
/* 813C161C | 48 16 D0 85 */	bl OSReport
/* 813C1620 | A0 1C 00 00 */	lhz r0, 0x0(r28)
/* 813C1624 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C1628 | 41 82 00 68 */	beq .L_813C1690
/* 813C162C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C1630 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C1634 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 813C1638 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C163C | 41 82 00 0C */	beq .L_813C1648
/* 813C1640 | 3B A0 00 00 */	li r29, 0x0
/* 813C1644 | 48 00 00 08 */	b .L_813C164C
.L_813C1648:
/* 813C1648 | 83 A3 00 8C */	lwz r29, 0x8c(r3)
.L_813C164C:
/* 813C164C | 7F 83 E3 78 */	mr r3, r28
/* 813C1650 | 48 24 70 5D */	bl fn_816086AC
/* 813C1654 | 3C E0 00 01 */	lis r7, 0x1
/* 813C1658 | 54 66 08 3C */	slwi r6, r3, 1
/* 813C165C | 7F A3 EB 78 */	mr r3, r29
/* 813C1660 | 7F 85 E3 78 */	mr r5, r28
/* 813C1664 | 38 81 00 5C */	addi r4, r1, 0x5c
/* 813C1668 | 38 E7 00 10 */	addi r7, r7, 0x10
/* 813C166C | 39 00 00 02 */	li r8, 0x2
/* 813C1670 | 4B F8 05 65 */	bl setMsgText__Q33ipl5nwc247ManagerFP11NWC24MsgObjPCcUl12NWC24Charset13NWC24Encoding
/* 813C1674 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C1678 | 40 82 00 8C */	bne .L_813C1704
/* 813C167C | 38 7F 00 91 */	addi r3, r31, 0x91
/* 813C1680 | 4C C6 31 82 */	crclr cr1eq
/* 813C1684 | 48 16 D0 1D */	bl OSReport
/* 813C1688 | 38 60 FF FF */	li r3, -0x1
/* 813C168C | 48 00 01 EC */	b .L_813C1878
.L_813C1690:
/* 813C1690 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C1694 | 38 A0 00 20 */	li r5, 0x20
/* 813C1698 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C169C | 38 80 00 00 */	li r4, 0x0
/* 813C16A0 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 813C16A4 | B0 A1 00 0C */	sth r5, 0xc(r1)
/* 813C16A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C16AC | B0 81 00 0E */	sth r4, 0xe(r1)
/* 813C16B0 | 41 82 00 0C */	beq .L_813C16BC
/* 813C16B4 | 3B A0 00 00 */	li r29, 0x0
/* 813C16B8 | 48 00 00 08 */	b .L_813C16C0
.L_813C16BC:
/* 813C16BC | 83 A3 00 8C */	lwz r29, 0x8c(r3)
.L_813C16C0:
/* 813C16C0 | 38 61 00 0C */	addi r3, r1, 0xc
/* 813C16C4 | 48 24 6F E9 */	bl fn_816086AC
/* 813C16C8 | 3C E0 00 01 */	lis r7, 0x1
/* 813C16CC | 54 66 08 3C */	slwi r6, r3, 1
/* 813C16D0 | 7F A3 EB 78 */	mr r3, r29
/* 813C16D4 | 38 81 00 5C */	addi r4, r1, 0x5c
/* 813C16D8 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 813C16DC | 38 E7 00 10 */	addi r7, r7, 0x10
/* 813C16E0 | 39 00 00 02 */	li r8, 0x2
/* 813C16E4 | 4B F8 04 F1 */	bl setMsgText__Q33ipl5nwc247ManagerFP11NWC24MsgObjPCcUl12NWC24Charset13NWC24Encoding
/* 813C16E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C16EC | 40 82 00 18 */	bne .L_813C1704
/* 813C16F0 | 38 7F 00 91 */	addi r3, r31, 0x91
/* 813C16F4 | 4C C6 31 82 */	crclr cr1eq
/* 813C16F8 | 48 16 CF A9 */	bl OSReport
/* 813C16FC | 38 60 FF FF */	li r3, -0x1
/* 813C1700 | 48 00 01 78 */	b .L_813C1878
.L_813C1704:
/* 813C1704 | 80 1E 00 6C */	lwz r0, 0x6c(r30)
/* 813C1708 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 813C170C | 41 82 00 34 */	beq .L_813C1740
/* 813C1710 | 38 61 00 5C */	addi r3, r1, 0x5c
/* 813C1714 | 38 81 00 10 */	addi r4, r1, 0x10
/* 813C1718 | 54 05 04 3E */	clrlwi r5, r0, 16
/* 813C171C | 48 12 7C B5 */	bl RFLiSetOfficial2NWC24Msg
/* 813C1720 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C1724 | 41 82 00 1C */	beq .L_813C1740
/* 813C1728 | 7C 64 1B 78 */	mr r4, r3
/* 813C172C | 38 7F 00 A6 */	addi r3, r31, 0xa6
/* 813C1730 | 4C C6 31 82 */	crclr cr1eq
/* 813C1734 | 48 16 CF 6D */	bl OSReport
/* 813C1738 | 38 60 00 01 */	li r3, 0x1
/* 813C173C | 48 00 01 3C */	b .L_813C1878
.L_813C1740:
/* 813C1740 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C1744 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C1748 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 813C174C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C1750 | 41 82 00 0C */	beq .L_813C175C
/* 813C1754 | 38 60 00 00 */	li r3, 0x0
/* 813C1758 | 48 00 00 08 */	b .L_813C1760
.L_813C175C:
/* 813C175C | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_813C1760:
/* 813C1760 | 38 81 00 5C */	addi r4, r1, 0x5c
/* 813C1764 | 38 A0 00 00 */	li r5, 0x0
/* 813C1768 | 4B F8 05 25 */	bl setMsgMBNoReply__Q33ipl5nwc247ManagerFP11NWC24MsgObji
/* 813C176C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C1770 | 40 82 00 18 */	bne .L_813C1788
/* 813C1774 | 38 7F 00 C8 */	addi r3, r31, 0xc8
/* 813C1778 | 4C C6 31 82 */	crclr cr1eq
/* 813C177C | 48 16 CF 25 */	bl OSReport
/* 813C1780 | 38 60 FF FF */	li r3, -0x1
/* 813C1784 | 48 00 00 F4 */	b .L_813C1878
.L_813C1788:
/* 813C1788 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C178C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C1790 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 813C1794 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C1798 | 41 82 00 0C */	beq .L_813C17A4
/* 813C179C | 38 60 00 00 */	li r3, 0x0
/* 813C17A0 | 48 00 00 08 */	b .L_813C17A8
.L_813C17A4:
/* 813C17A4 | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_813C17A8:
/* 813C17A8 | 38 81 00 5C */	addi r4, r1, 0x5c
/* 813C17AC | 4B F8 0C 79 */	bl setLedPattern__Q33ipl5nwc247ManagerFP11NWC24MsgObj
/* 813C17B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C17B4 | 40 82 00 18 */	bne .L_813C17CC
/* 813C17B8 | 38 7F 00 E2 */	addi r3, r31, 0xe2
/* 813C17BC | 4C C6 31 82 */	crclr cr1eq
/* 813C17C0 | 48 16 CE E1 */	bl OSReport
/* 813C17C4 | 38 60 FF FF */	li r3, -0x1
/* 813C17C8 | 48 00 00 B0 */	b .L_813C1878
.L_813C17CC:
/* 813C17CC | 80 1E 01 E8 */	lwz r0, 0x1e8(r30)
/* 813C17D0 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813C17D4 | 40 82 00 5C */	bne .L_813C1830
/* 813C17D8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C17DC | 38 80 00 04 */	li r4, 0x4
/* 813C17E0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C17E4 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813C17E8 | 48 04 99 51 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C17EC | 38 00 00 00 */	li r0, 0x0
/* 813C17F0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813C17F4 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 813C17F8 | 4B FD 1D B5 */	bl getPicture__Q33ipl5scene5BoardCFPUl
/* 813C17FC | 3C C0 00 02 */	lis r6, 0x2
/* 813C1800 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 813C1804 | 7C 64 1B 78 */	mr r4, r3
/* 813C1808 | 38 61 00 5C */	addi r3, r1, 0x5c
/* 813C180C | 38 C6 00 01 */	addi r6, r6, 0x1
/* 813C1810 | 48 0D FB 5D */	bl fn_814A136C
/* 813C1814 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C1818 | 41 82 00 18 */	beq .L_813C1830
/* 813C181C | 38 7F 00 F5 */	addi r3, r31, 0xf5
/* 813C1820 | 4C C6 31 82 */	crclr cr1eq
/* 813C1824 | 48 16 CE 7D */	bl OSReport
/* 813C1828 | 38 60 FF FF */	li r3, -0x1
/* 813C182C | 48 00 00 4C */	b .L_813C1878
.L_813C1830:
/* 813C1830 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C1834 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C1838 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 813C183C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C1840 | 41 82 00 0C */	beq .L_813C184C
/* 813C1844 | 38 60 00 00 */	li r3, 0x0
/* 813C1848 | 48 00 00 08 */	b .L_813C1850
.L_813C184C:
/* 813C184C | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_813C1850:
/* 813C1850 | 38 81 00 5C */	addi r4, r1, 0x5c
/* 813C1854 | 4B F8 05 0D */	bl commitMsg__Q33ipl5nwc247ManagerFP11NWC24MsgObj
/* 813C1858 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C185C | 40 82 00 18 */	bne .L_813C1874
/* 813C1860 | 38 7F 01 0E */	addi r3, r31, 0x10e
/* 813C1864 | 4C C6 31 82 */	crclr cr1eq
/* 813C1868 | 48 16 CE 39 */	bl OSReport
/* 813C186C | 38 60 FF FF */	li r3, -0x1
/* 813C1870 | 48 00 00 08 */	b .L_813C1878
.L_813C1874:
/* 813C1874 | 38 60 00 00 */	li r3, 0x0
.L_813C1878:
/* 813C1878 | 39 61 01 80 */	addi r11, r1, 0x180
/* 813C187C | 48 23 7C 91 */	bl _restgpr_27
/* 813C1880 | 80 01 01 84 */	lwz r0, 0x184(r1)
/* 813C1884 | 7C 08 03 A6 */	mtlr r0
/* 813C1888 | 38 21 01 80 */	addi r1, r1, 0x180
/* 813C188C | 4E 80 00 20 */	blr
.endfn sendToWii__Q33ipl5scene12LetterWriterFUxPCw

# .text:0x1598 | 0x813C1890 | size: 0x1BC
# ipl::scene::LetterWriter::sendToPC(unsigned long long, const wchar_t*)
.fn sendToPC__Q33ipl5scene12LetterWriterFUxPCw, global
/* 813C1890 | 94 21 FE E0 */	stwu r1, -0x120(r1)
/* 813C1894 | 7C 08 02 A6 */	mflr r0
/* 813C1898 | 90 01 01 24 */	stw r0, 0x124(r1)
/* 813C189C | 39 61 01 20 */	addi r11, r1, 0x120
/* 813C18A0 | 48 23 7C 1D */	bl _savegpr_26
/* 813C18A4 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813C18A8 | 3F C0 81 65 */	lis r30, lbl_81650380@ha
/* 813C18AC | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813C18B0 | 7C 7A 1B 78 */	mr r26, r3
/* 813C18B4 | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 813C18B8 | 7C FB 3B 78 */	mr r27, r7
/* 813C18BC | 3B DE 03 80 */	addi r30, r30, lbl_81650380@l
/* 813C18C0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C18C4 | 41 82 00 0C */	beq .L_813C18D0
/* 813C18C8 | 38 60 00 00 */	li r3, 0x0
/* 813C18CC | 48 00 00 08 */	b .L_813C18D4
.L_813C18D0:
/* 813C18D0 | 80 64 00 8C */	lwz r3, 0x8c(r4)
.L_813C18D4:
/* 813C18D4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813C18D8 | 38 A0 00 04 */	li r5, 0x4
/* 813C18DC | 4B F8 02 2D */	bl initMsgObj__Q33ipl5nwc247ManagerFP11NWC24MsgObj12NWC24MsgType
/* 813C18E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C18E4 | 40 82 00 18 */	bne .L_813C18FC
/* 813C18E8 | 38 7E 00 58 */	addi r3, r30, 0x58
/* 813C18EC | 4C C6 31 82 */	crclr cr1eq
/* 813C18F0 | 48 16 CD B1 */	bl OSReport
/* 813C18F4 | 38 60 FF FF */	li r3, -0x1
/* 813C18F8 | 48 00 01 3C */	b .L_813C1A34
.L_813C18FC:
/* 813C18FC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C1900 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C1904 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 813C1908 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C190C | 41 82 00 0C */	beq .L_813C1918
/* 813C1910 | 3B E0 00 00 */	li r31, 0x0
/* 813C1914 | 48 00 00 08 */	b .L_813C191C
.L_813C1918:
/* 813C1918 | 83 E3 00 8C */	lwz r31, 0x8c(r3)
.L_813C191C:
/* 813C191C | 38 7A 00 E0 */	addi r3, r26, 0xe0
/* 813C1920 | 48 23 75 DD */	bl strlen
/* 813C1924 | 7C 66 1B 78 */	mr r6, r3
/* 813C1928 | 7F E3 FB 78 */	mr r3, r31
/* 813C192C | 38 81 00 08 */	addi r4, r1, 0x8
/* 813C1930 | 38 BA 00 E0 */	addi r5, r26, 0xe0
/* 813C1934 | 4B F8 02 59 */	bl setMsgToAddr__Q33ipl5nwc247ManagerFP11NWC24MsgObjPCcUl
/* 813C1938 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C193C | 40 82 00 18 */	bne .L_813C1954
/* 813C1940 | 38 7E 01 22 */	addi r3, r30, 0x122
/* 813C1944 | 4C C6 31 82 */	crclr cr1eq
/* 813C1948 | 48 16 CD 59 */	bl OSReport
/* 813C194C | 38 60 FF FF */	li r3, -0x1
/* 813C1950 | 48 00 00 E4 */	b .L_813C1A34
.L_813C1954:
/* 813C1954 | 38 7E 01 39 */	addi r3, r30, 0x139
/* 813C1958 | 38 9A 00 E0 */	addi r4, r26, 0xe0
/* 813C195C | 4C C6 31 82 */	crclr cr1eq
/* 813C1960 | 48 16 CD 41 */	bl OSReport
/* 813C1964 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813C1968 | 38 80 01 83 */	li r4, 0x183
/* 813C196C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813C1970 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813C1974 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813C1978 | 4B F7 CE 45 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813C197C | 88 1F 02 BC */	lbz r0, 0x2bc(r31)
/* 813C1980 | 7C 7D 1B 78 */	mr r29, r3
/* 813C1984 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C1988 | 41 82 00 0C */	beq .L_813C1994
/* 813C198C | 3B 80 00 00 */	li r28, 0x0
/* 813C1990 | 48 00 00 08 */	b .L_813C1998
.L_813C1994:
/* 813C1994 | 83 9F 00 8C */	lwz r28, 0x8c(r31)
.L_813C1998:
/* 813C1998 | 7F 63 DB 78 */	mr r3, r27
/* 813C199C | 48 24 6D 11 */	bl fn_816086AC
/* 813C19A0 | 7C 7F 1B 78 */	mr r31, r3
/* 813C19A4 | 7F A3 EB 78 */	mr r3, r29
/* 813C19A8 | 48 24 6D 05 */	bl fn_816086AC
/* 813C19AC | 81 3A 01 EC */	lwz r9, 0x1ec(r26)
/* 813C19B0 | 7C 66 1B 78 */	mr r6, r3
/* 813C19B4 | 7F 83 E3 78 */	mr r3, r28
/* 813C19B8 | 7F A5 EB 78 */	mr r5, r29
/* 813C19BC | 7F 67 DB 78 */	mr r7, r27
/* 813C19C0 | 7F E8 FB 78 */	mr r8, r31
/* 813C19C4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813C19C8 | 39 40 20 00 */	li r10, 0x2000
/* 813C19CC | 4B F8 02 59 */	bl setMsgSubjectAndTextPublic__Q33ipl5nwc247ManagerFP11NWC24MsgObjPCUsUlPCUsUlPUcUl
/* 813C19D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C19D4 | 40 82 00 18 */	bne .L_813C19EC
/* 813C19D8 | 38 7E 01 55 */	addi r3, r30, 0x155
/* 813C19DC | 4C C6 31 82 */	crclr cr1eq
/* 813C19E0 | 48 16 CC C1 */	bl OSReport
/* 813C19E4 | 38 60 FF FF */	li r3, -0x1
/* 813C19E8 | 48 00 00 4C */	b .L_813C1A34
.L_813C19EC:
/* 813C19EC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C19F0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C19F4 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 813C19F8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C19FC | 41 82 00 0C */	beq .L_813C1A08
/* 813C1A00 | 38 60 00 00 */	li r3, 0x0
/* 813C1A04 | 48 00 00 08 */	b .L_813C1A0C
.L_813C1A08:
/* 813C1A08 | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_813C1A0C:
/* 813C1A0C | 38 81 00 08 */	addi r4, r1, 0x8
/* 813C1A10 | 4B F8 03 51 */	bl commitMsg__Q33ipl5nwc247ManagerFP11NWC24MsgObj
/* 813C1A14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C1A18 | 40 82 00 18 */	bne .L_813C1A30
/* 813C1A1C | 38 7E 01 0E */	addi r3, r30, 0x10e
/* 813C1A20 | 4C C6 31 82 */	crclr cr1eq
/* 813C1A24 | 48 16 CC 7D */	bl OSReport
/* 813C1A28 | 38 60 FF FF */	li r3, -0x1
/* 813C1A2C | 48 00 00 08 */	b .L_813C1A34
.L_813C1A30:
/* 813C1A30 | 38 60 00 00 */	li r3, 0x0
.L_813C1A34:
/* 813C1A34 | 39 61 01 20 */	addi r11, r1, 0x120
/* 813C1A38 | 48 23 7A D1 */	bl _restgpr_26
/* 813C1A3C | 80 01 01 24 */	lwz r0, 0x124(r1)
/* 813C1A40 | 7C 08 03 A6 */	mtlr r0
/* 813C1A44 | 38 21 01 20 */	addi r1, r1, 0x120
/* 813C1A48 | 4E 80 00 20 */	blr
.endfn sendToPC__Q33ipl5scene12LetterWriterFUxPCw

# .text:0x1754 | 0x813C1A4C | size: 0x48
# ipl::scene::LetterWriter::setPhoto(const _GXTexObj&)
.fn setPhoto__Q33ipl5scene12LetterWriterFRC9_GXTexObj, global
/* 813C1A4C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C1A50 | 7C 08 02 A6 */	mflr r0
/* 813C1A54 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C1A58 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C1A5C | 7C 9F 23 78 */	mr r31, r4
/* 813C1A60 | 48 04 AD DD */	bl fn_8140C83C
/* 813C1A64 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C1A68 | 81 8C 02 D0 */	lwz r12, 0x2d0(r12)
/* 813C1A6C | 7D 89 03 A6 */	mtctr r12
/* 813C1A70 | 4E 80 04 21 */	bctrl
/* 813C1A74 | 7F E5 FB 78 */	mr r5, r31
/* 813C1A78 | 38 80 00 00 */	li r4, 0x0
/* 813C1A7C | 48 16 63 A1 */	bl fn_81527E1C
/* 813C1A80 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C1A84 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C1A88 | 7C 08 03 A6 */	mtlr r0
/* 813C1A8C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C1A90 | 4E 80 00 20 */	blr
.endfn setPhoto__Q33ipl5scene12LetterWriterFRC9_GXTexObj

# .text:0x179C | 0x813C1A94 | size: 0x8
# ipl::scene::TextWriter::isResetAcceptable() const
.fn isResetAcceptable__Q33ipl5scene10TextWriterCFv, global
/* 813C1A94 | 88 63 00 7D */	lbz r3, 0x7d(r3)
/* 813C1A98 | 4E 80 00 20 */	blr
.endfn isResetAcceptable__Q33ipl5scene10TextWriterCFv

# .text:0x17A4 | 0x813C1A9C | size: 0x4
# ipl::scene::LetterWriter::calcCommon()
.fn calcCommon__Q33ipl5scene12LetterWriterFv, global
/* 813C1A9C | 4E 80 00 20 */	blr
.endfn calcCommon__Q33ipl5scene12LetterWriterFv

# .text:0x17A8 | 0x813C1AA0 | size: 0x4
# textinput::extend::memo::NigaoeEventObserver::moveNigaoeButton()
.fn moveNigaoeButton__Q49textinput6extend4memo19NigaoeEventObserverFv, global
/* 813C1AA0 | 4E 80 00 20 */	blr
.endfn moveNigaoeButton__Q49textinput6extend4memo19NigaoeEventObserverFv

# .text:0x17AC | 0x813C1AA4 | size: 0x4
# textinput::extend::memo::NigaoeEventObserver::leftNigaoeButton()
.fn leftNigaoeButton__Q49textinput6extend4memo19NigaoeEventObserverFv, global
/* 813C1AA4 | 4E 80 00 20 */	blr
.endfn leftNigaoeButton__Q49textinput6extend4memo19NigaoeEventObserverFv

# .text:0x17B0 | 0x813C1AA8 | size: 0x4
# textinput::extend::memo::NigaoeEventObserver::pointNigaoeButton()
.fn pointNigaoeButton__Q49textinput6extend4memo19NigaoeEventObserverFv, global
/* 813C1AA8 | 4E 80 00 20 */	blr
.endfn pointNigaoeButton__Q49textinput6extend4memo19NigaoeEventObserverFv

# .text:0x17B4 | 0x813C1AAC | size: 0x8
# textinput::extend::memo::NigaoeEventObserver::onNigaoeButton()
.fn onNigaoeButton__Q49textinput6extend4memo19NigaoeEventObserverFv, global
/* 813C1AAC | 38 60 00 00 */	li r3, 0x0
/* 813C1AB0 | 4E 80 00 20 */	blr
.endfn onNigaoeButton__Q49textinput6extend4memo19NigaoeEventObserverFv

# .text:0x17BC | 0x813C1AB4 | size: 0x8
.fn "@20@__dt__Q33ipl5scene12LetterWriterFv", global
/* 813C1AB4 | 38 63 FF EC */	subi r3, r3, 0x14
/* 813C1AB8 | 4B FF E8 C0 */	b __dt__Q33ipl5scene12LetterWriterFv
.endfn "@20@__dt__Q33ipl5scene12LetterWriterFv"

# .text:0x17C4 | 0x813C1ABC | size: 0x8
# ipl::scene::LetterWriter::@88@onEventDerived(unsigned long, unsigned long, const ipl::controller::Interface*)
.fn "@88@onEventDerived__Q33ipl5scene12LetterWriterFUlUlPCQ33ipl10controller9Interface", global
/* 813C1ABC | 38 63 FF A8 */	subi r3, r3, 0x58
/* 813C1AC0 | 4B FF F4 78 */	b onEventDerived__Q33ipl5scene12LetterWriterFUlUlPCQ33ipl10controller9Interface
.endfn "@88@onEventDerived__Q33ipl5scene12LetterWriterFUlUlPCQ33ipl10controller9Interface"

# 0x81650380..0x816505D8 | size: 0x258
.data
.balign 8

# .data:0x0 | 0x81650380 | size: 0x1A
.obj lbl_81650380, global
	.4byte 0x6D795F49
	.4byte 0x706C546F
	.4byte 0x7042616C
	.4byte 0x6C6F6F6E
	.4byte 0x5F612E62
	.4byte 0x726C7974
	.2byte 0x0000
.endobj lbl_81650380

# .data:0x1A | 0x8165039A | size: 0x16
.obj lbl_8165039A, global
	.string16 "xxxxxxxxxx"
.endobj lbl_8165039A

# .data:0x30 | 0x816503B0 | size: 0xF
.obj lbl_816503B0, global
	.string "WIPL_SE_CANCEL"
.endobj lbl_816503B0

# .data:0x3F | 0x816503BF | size: 0xF
.obj lbl_816503BF, global
	.string "WIPL_SE_DECIDE"
.endobj lbl_816503BF

# .data:0x4E | 0x816503CE | size: 0x12A
.obj lbl_816503CE, global
	.4byte 0x9197904D
	.4byte 0x8EB89473
	.4byte 0x0A004E57
	.4byte 0x43323449
	.4byte 0x6E69744D
	.4byte 0x73674F62
	.4byte 0x6A206572
	.4byte 0x720A004E
	.4byte 0x57433234
	.4byte 0x5365744D
	.4byte 0x7367546F
	.4byte 0x49642065
	.4byte 0x72720A00
	.4byte 0x5B746F5D
	.4byte 0x3A202530
	.4byte 0x31366C6C
	.4byte 0x750A004E
	.4byte 0x57433234
	.4byte 0x5365744D
	.4byte 0x73675465
	.4byte 0x78742065
	.4byte 0x72720A00
	.4byte 0x52464C53
	.4byte 0x65744F66
	.4byte 0x66696369
	.4byte 0x616C324E
	.4byte 0x57433234
	.4byte 0x4D736720
	.4byte 0x65727220
	.4byte 0x3D202564
	.4byte 0x0A004E57
	.4byte 0x43323453
	.4byte 0x65744D73
	.4byte 0x674D424E
	.4byte 0x6F526570
	.4byte 0x6C792065
	.4byte 0x72720A00
	.4byte 0x7365744D
	.4byte 0x7367436F
	.4byte 0x6D6D616E
	.4byte 0x64206572
	.4byte 0x720A004E
	.4byte 0x57433234
	.4byte 0x5365744D
	.4byte 0x73674174
	.4byte 0x74616368
	.4byte 0x65642065
	.4byte 0x72720A00
	.4byte 0x4E574332
	.4byte 0x34436F6D
	.4byte 0x6D69744D
	.4byte 0x73672065
	.4byte 0x72720A00
	.4byte 0x4E574332
	.4byte 0x34536574
	.4byte 0x4D736754
	.4byte 0x6F416464
	.4byte 0x72206572
	.4byte 0x720A005B
	.4byte 0x4C657474
	.4byte 0x65725772
	.4byte 0x69746572
	.4byte 0x5D3A2073
	.4byte 0x656E6420
	.4byte 0x746F2025
	.4byte 0x730A0073
	.4byte 0x65744D73
	.4byte 0x67537562
	.4byte 0x6A656374
	.4byte 0x416E6454
	.4byte 0x65787450
	.4byte 0x75626C69
	.4byte 0x63206572
	.4byte 0x720A0000
	.2byte 0x0000
.endobj lbl_816503CE

# .data:0x178 | 0x816504F8 | size: 0xC8
# ipl::scene::LetterWriter::__vtable
.obj __vt__Q33ipl5scene12LetterWriter, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene12LetterWriterFv
	.4byte getParent__Q33ipl5scene4BaseFv
	.4byte getChild__Q33ipl5scene4BaseFv
	.4byte getNext__Q33ipl5scene4BaseFv
	.4byte getPrev__Q33ipl5scene4BaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@20@__dt__Q33ipl5scene12LetterWriterFv"
	.4byte isReady__Q33ipl5scene4BaseCFv
	.4byte isResetAcceptable__Q33ipl5scene10TextWriterCFv
	.4byte startResetting__Q33ipl5scene4BaseFv
	.4byte isResetProcessDone__Q33ipl5scene4BaseFv
	.4byte fn_8140B554
	.4byte create__Q33ipl5scene12LetterWriterFv
	.4byte calc__Q33ipl5scene14FaderSceneBaseFv
	.4byte fn_8140B8FC
	.4byte destroy__Q33ipl5scene12LetterWriterFv
	.4byte initCalcNormal__Q33ipl5scene12LetterWriterFv
	.4byte initCalcFadeout__Q33ipl5scene12LetterWriterFv
	.4byte calcCommon__Q33ipl5scene12LetterWriterFv
	.4byte calcFadein__Q33ipl5scene12LetterWriterFv
	.4byte calcNormal__Q33ipl5scene12LetterWriterFv
	.4byte calcFadeout__Q33ipl5scene12LetterWriterFv
	.4byte calcCommonAfter__Q33ipl5scene14FaderSceneBaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte onEvent__Q33ipl5scene22ButtonEventHandlerBaseFUlUlPv
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
	.4byte "@88@onEventDerived__Q33ipl5scene12LetterWriterFUlUlPCQ33ipl10controller9Interface"
	.4byte fn_8140C368
	.4byte fn_8140CBE8
	.4byte fn_8140C288
	.4byte fn_8140C2A0
	.4byte fn_8140C2B8
	.4byte onEventDerived__Q33ipl5scene12LetterWriterFUlUlPCQ33ipl10controller9Interface
	.4byte onSend__Q33ipl5scene12LetterWriterFv
	.4byte fn_8140C85C
	.4byte sendMessageByNWC24__Q33ipl5scene12LetterWriterFUxPCw
	.4byte fn_8140CBBC
	.4byte fn_8140CBE0
	.4byte setFriendInfo__Q33ipl5scene12LetterWriterFRC15NWC24FriendInfo
	.4byte setPhoto__Q33ipl5scene12LetterWriterFRC9_GXTexObj
	.4byte sendToWii__Q33ipl5scene12LetterWriterFUxPCw
	.4byte sendToPC__Q33ipl5scene12LetterWriterFUxPCw
	.4byte makeHeaderCaption__Q33ipl5scene12LetterWriterFPCw
	.4byte getFriendInfo__Q33ipl5scene12LetterWriterFv
.endobj __vt__Q33ipl5scene12LetterWriter

# .data:0x240 | 0x816505C0 | size: 0x18
# textinput::extend::memo::NigaoeEventObserver::__vtable
.obj __vt__Q49textinput6extend4memo19NigaoeEventObserver, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte onNigaoeButton__Q49textinput6extend4memo19NigaoeEventObserverFv
	.4byte pointNigaoeButton__Q49textinput6extend4memo19NigaoeEventObserverFv
	.4byte leftNigaoeButton__Q49textinput6extend4memo19NigaoeEventObserverFv
	.4byte moveNigaoeButton__Q49textinput6extend4memo19NigaoeEventObserverFv
.endobj __vt__Q49textinput6extend4memo19NigaoeEventObserver

# 0x81694A30..0x81694A48 | size: 0x18
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694A30 | size: 0x4
.obj lbl_81694A30, global
	.float 30
.endobj lbl_81694A30

# .sdata2:0x4 | 0x81694A34 | size: 0x4
.obj lbl_81694A34, global
	.float 120
.endobj lbl_81694A34

# .sdata2:0x8 | 0x81694A38 | size: 0x4
.obj lbl_81694A38, global
	.float 0
.endobj lbl_81694A38

# .sdata2:0xC | 0x81694A3C | size: 0x4
.obj gap_09_81694A3C_sdata2, global
.hidden gap_09_81694A3C_sdata2
	.4byte 0x00000000
.endobj gap_09_81694A3C_sdata2

# .sdata2:0x10 | 0x81694A40 | size: 0x8
.obj lbl_81694A40, global
	.double 4503601774854144
.endobj lbl_81694A40

# 0x81696B60..0x81696B68 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696B60 | size: 0x2
.obj lbl_81696B60, global
	.2byte 0x0000
.endobj lbl_81696B60

# .sdata:0x2 | 0x81696B62 | size: 0x6
.obj lbl_81696B62, global
	.4byte 0x61726300
	.2byte 0x0000
.endobj lbl_81696B62
