.include "macros.inc"
.file "iplCSLayout.cpp"

# 0x814581D0..0x81458588 | size: 0x3B8
.text
.balign 4

# .text:0x0 | 0x814581D0 | size: 0xEC
# ipl::cs::layout::find_pane(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn find_pane__Q33ipl2cs6layoutFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 814581D0 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 814581D4 | 7C 08 02 A6 */	mflr r0
/* 814581D8 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 814581DC | 39 61 00 50 */	addi r11, r1, 0x50
/* 814581E0 | 48 1A 12 E5 */	bl _savegpr_28
/* 814581E4 | 7C 7C 1B 78 */	mr r28, r3
/* 814581E8 | 7C BD 2B 78 */	mr r29, r5
/* 814581EC | 3B C0 00 00 */	li r30, 0x0
/* 814581F0 | 38 80 00 00 */	li r4, 0x0
/* 814581F4 | 4B FF 45 45 */	bl CHANSVmGetArgString
/* 814581F8 | 7C 7F 1B 78 */	mr r31, r3
/* 814581FC | 48 00 43 2D */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 81458200 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81458204 | 41 82 00 9C */	beq .L_814582A0
/* 81458208 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8145820C | 38 80 00 00 */	li r4, 0x0
/* 81458210 | 38 A0 00 12 */	li r5, 0x12
/* 81458214 | 4B ED 81 21 */	bl memset
/* 81458218 | 38 61 00 1A */	addi r3, r1, 0x1a
/* 8145821C | 38 80 00 00 */	li r4, 0x0
/* 81458220 | 38 A0 00 24 */	li r5, 0x24
/* 81458224 | 4B ED 81 11 */	bl memset
/* 81458228 | 7F E6 FB 78 */	mr r6, r31
/* 8145822C | 38 61 00 08 */	addi r3, r1, 0x8
/* 81458230 | 38 81 00 1A */	addi r4, r1, 0x1a
/* 81458234 | 38 A0 00 10 */	li r5, 0x10
/* 81458238 | 48 00 43 B1 */	bl utf16_to_ascii__Q33ipl2cs4utilFPcPwiPC13CHANSVmObjHdr
/* 8145823C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81458240 | 3B E0 00 00 */	li r31, 0x0
/* 81458244 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81458248 | 9B E1 00 18 */	stb r31, 0x18(r1)
/* 8145824C | 80 63 00 88 */	lwz r3, 0x88(r3)
/* 81458250 | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 81458254 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81458258 | 41 82 00 48 */	beq .L_814582A0
/* 8145825C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81458260 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81458264 | 38 A0 00 01 */	li r5, 0x1
/* 81458268 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8145826C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81458270 | 7D 89 03 A6 */	mtctr r12
/* 81458274 | 4E 80 04 21 */	bctrl
/* 81458278 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145827C | 7C 65 1B 78 */	mr r5, r3
/* 81458280 | 41 82 00 18 */	beq .L_81458298
/* 81458284 | 7F 83 E3 78 */	mr r3, r28
/* 81458288 | 7F A4 EB 78 */	mr r4, r29
/* 8145828C | 48 00 18 C5 */	bl _ctor__Q33ipl2cs4paneFP7CHANSVmP13CHANSVmObjHdrUl
/* 81458290 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81458294 | 41 82 00 08 */	beq .L_8145829C
.L_81458298:
/* 81458298 | 3B E0 00 01 */	li r31, 0x1
.L_8145829C:
/* 8145829C | 7F FE FB 78 */	mr r30, r31
.L_814582A0:
/* 814582A0 | 39 61 00 50 */	addi r11, r1, 0x50
/* 814582A4 | 7F C3 F3 78 */	mr r3, r30
/* 814582A8 | 48 1A 12 69 */	bl _restgpr_28
/* 814582AC | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 814582B0 | 7C 08 03 A6 */	mtlr r0
/* 814582B4 | 38 21 00 50 */	addi r1, r1, 0x50
/* 814582B8 | 4E 80 00 20 */	blr
.endfn find_pane__Q33ipl2cs6layoutFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0xEC | 0x814582BC | size: 0xA4
# ipl::cs::layout::start_anm(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn start_anm__Q33ipl2cs6layoutFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 814582BC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814582C0 | 7C 08 02 A6 */	mflr r0
/* 814582C4 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 814582C8 | 38 80 00 00 */	li r4, 0x0
/* 814582CC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814582D0 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 814582D4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814582D8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814582DC | 3B C0 00 00 */	li r30, 0x0
/* 814582E0 | 80 A5 00 88 */	lwz r5, 0x88(r5)
/* 814582E4 | 83 E5 00 10 */	lwz r31, 0x10(r5)
/* 814582E8 | 4B FF 43 D9 */	bl CHANSVmGetArgInteger
/* 814582EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814582F0 | 41 82 00 54 */	beq .L_81458344
/* 814582F4 | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 814582F8 | 38 00 00 10 */	li r0, 0x10
/* 814582FC | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 81458300 | 38 60 00 00 */	li r3, 0x0
/* 81458304 | 7C 00 28 10 */	subfc r0, r0, r5
/* 81458308 | 7C 03 21 10 */	subfe r0, r3, r4
/* 8145830C | 7C 05 29 10 */	subfe r0, r5, r5
/* 81458310 | 7C 00 00 D1 */	neg. r0, r0
/* 81458314 | 41 82 00 30 */	beq .L_81458344
/* 81458318 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145831C | 41 82 00 28 */	beq .L_81458344
/* 81458320 | 54 A0 10 3A */	slwi r0, r5, 2
/* 81458324 | 7F FF 00 2E */	lwzx r31, r31, r0
/* 81458328 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145832C | 41 82 00 18 */	beq .L_81458344
/* 81458330 | 7F E3 FB 78 */	mr r3, r31
/* 81458334 | 4B F0 A5 3D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81458338 | 38 00 00 01 */	li r0, 0x1
/* 8145833C | 3B C0 00 01 */	li r30, 0x1
/* 81458340 | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_81458344:
/* 81458344 | 7F C3 F3 78 */	mr r3, r30
/* 81458348 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8145834C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81458350 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81458354 | 7C 08 03 A6 */	mtlr r0
/* 81458358 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8145835C | 4E 80 00 20 */	blr
.endfn start_anm__Q33ipl2cs6layoutFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x190 | 0x81458360 | size: 0xB4
# ipl::cs::layout::get_anm(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn get_anm__Q33ipl2cs6layoutFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 81458360 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81458364 | 7C 08 02 A6 */	mflr r0
/* 81458368 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145836C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81458370 | 48 1A 11 55 */	bl _savegpr_28
/* 81458374 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81458378 | 7C BD 2B 78 */	mr r29, r5
/* 8145837C | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81458380 | 7C 7C 1B 78 */	mr r28, r3
/* 81458384 | 80 A4 00 88 */	lwz r5, 0x88(r4)
/* 81458388 | 3B C0 00 00 */	li r30, 0x0
/* 8145838C | 38 80 00 00 */	li r4, 0x0
/* 81458390 | 83 E5 00 10 */	lwz r31, 0x10(r5)
/* 81458394 | 4B FF 43 2D */	bl CHANSVmGetArgInteger
/* 81458398 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145839C | 41 82 00 5C */	beq .L_814583F8
/* 814583A0 | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 814583A4 | 38 00 00 10 */	li r0, 0x10
/* 814583A8 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 814583AC | 38 60 00 00 */	li r3, 0x0
/* 814583B0 | 7C 00 28 10 */	subfc r0, r0, r5
/* 814583B4 | 7C 03 21 10 */	subfe r0, r3, r4
/* 814583B8 | 7C 05 29 10 */	subfe r0, r5, r5
/* 814583BC | 7C 00 00 D1 */	neg. r0, r0
/* 814583C0 | 41 82 00 38 */	beq .L_814583F8
/* 814583C4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814583C8 | 41 82 00 30 */	beq .L_814583F8
/* 814583CC | 54 A0 10 3A */	slwi r0, r5, 2
/* 814583D0 | 3B C0 00 01 */	li r30, 0x1
/* 814583D4 | 7C BF 00 2E */	lwzx r5, r31, r0
/* 814583D8 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814583DC | 41 82 00 1C */	beq .L_814583F8
/* 814583E0 | 7F 83 E3 78 */	mr r3, r28
/* 814583E4 | 7F A4 EB 78 */	mr r4, r29
/* 814583E8 | 48 00 69 31 */	bl _ctor__Q33ipl2cs4animFP7CHANSVmP13CHANSVmObjHdrUl
/* 814583EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814583F0 | 40 82 00 08 */	bne .L_814583F8
/* 814583F4 | 3B C0 00 00 */	li r30, 0x0
.L_814583F8:
/* 814583F8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814583FC | 7F C3 F3 78 */	mr r3, r30
/* 81458400 | 48 1A 11 11 */	bl _restgpr_28
/* 81458404 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81458408 | 7C 08 03 A6 */	mtlr r0
/* 8145840C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81458410 | 4E 80 00 20 */	blr
.endfn get_anm__Q33ipl2cs6layoutFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x244 | 0x81458414 | size: 0x8
# ipl::cs::layout::ctor(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn ctor__Q33ipl2cs6layoutFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 81458414 | 38 60 00 01 */	li r3, 0x1
/* 81458418 | 4E 80 00 20 */	blr
.endfn ctor__Q33ipl2cs6layoutFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x24C | 0x8145841C | size: 0x9C
# ipl::cs::layout::init(CHANSVm*)
.fn init__Q33ipl2cs6layoutFP7CHANSVm, global
/* 8145841C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81458420 | 7C 08 02 A6 */	mflr r0
/* 81458424 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81458428 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145842C | 48 1A 10 9D */	bl _savegpr_29
/* 81458430 | 3C A0 81 46 */	lis r5, ctor__Q33ipl2cs6layoutFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr@ha
/* 81458434 | 7C 7D 1B 78 */	mr r29, r3
/* 81458438 | 38 A5 84 14 */	addi r5, r5, ctor__Q33ipl2cs6layoutFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr@l
/* 8145843C | 3B E0 00 00 */	li r31, 0x0
/* 81458440 | 38 8D 97 B8 */	li r4, lbl_816977F8@sda21
/* 81458444 | 38 C0 00 00 */	li r6, 0x0
/* 81458448 | 4B FF 44 8D */	bl CHANSVmAddNativeClass
/* 8145844C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81458450 | 7C 7E 1B 78 */	mr r30, r3
/* 81458454 | 41 82 00 48 */	beq .L_8145849C
/* 81458458 | 3C A0 81 61 */	lis r5, scMethodList__Q33ipl2cs6layout@ha
/* 8145845C | 7F A3 EB 78 */	mr r3, r29
/* 81458460 | 7F C4 F3 78 */	mr r4, r30
/* 81458464 | 38 C0 00 03 */	li r6, 0x3
/* 81458468 | 38 A5 73 90 */	addi r5, r5, scMethodList__Q33ipl2cs6layout@l
/* 8145846C | 4B FF 46 05 */	bl CHANSVmAddNativeMethodList
/* 81458470 | 7C 60 00 34 */	cntlzw r0, r3
/* 81458474 | 3C A0 81 61 */	lis r5, scPropertyList__Q33ipl2cs4util@ha
/* 81458478 | 7F A3 EB 78 */	mr r3, r29
/* 8145847C | 7F C4 F3 78 */	mr r4, r30
/* 81458480 | 54 1F D9 7E */	srwi r31, r0, 5
/* 81458484 | 38 A5 73 A8 */	addi r5, r5, scPropertyList__Q33ipl2cs4util@l
/* 81458488 | 38 C0 00 06 */	li r6, 0x6
/* 8145848C | 4B FF 47 CD */	bl CHANSVmAddNativePropertyAccessorsList
/* 81458490 | 7C 60 00 34 */	cntlzw r0, r3
/* 81458494 | 54 00 D9 7E */	srwi r0, r0, 5
/* 81458498 | 7F FF 00 38 */	and r31, r31, r0
.L_8145849C:
/* 8145849C | 39 61 00 20 */	addi r11, r1, 0x20
/* 814584A0 | 7F E3 FB 78 */	mr r3, r31
/* 814584A4 | 48 1A 10 71 */	bl _restgpr_29
/* 814584A8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814584AC | 7C 08 03 A6 */	mtlr r0
/* 814584B0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814584B4 | 4E 80 00 20 */	blr
.endfn init__Q33ipl2cs6layoutFP7CHANSVm

# .text:0x2E8 | 0x814584B8 | size: 0x34
# int ipl::cs::util::get_int<0>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "get_int<0>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 814584B8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814584BC | 7C 08 02 A6 */	mflr r0
/* 814584C0 | 7C A4 2B 78 */	mr r4, r5
/* 814584C4 | 38 C0 00 00 */	li r6, 0x0
/* 814584C8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814584CC | 38 A0 00 00 */	li r5, 0x0
/* 814584D0 | 4B FF 34 C9 */	bl CHANSVmSetInteger
/* 814584D4 | 7C 60 00 34 */	cntlzw r0, r3
/* 814584D8 | 54 03 D9 7E */	srwi r3, r0, 5
/* 814584DC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814584E0 | 7C 08 03 A6 */	mtlr r0
/* 814584E4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814584E8 | 4E 80 00 20 */	blr
.endfn "get_int<0>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# .text:0x31C | 0x814584EC | size: 0x34
# int ipl::cs::util::get_int<1>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "get_int<1>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 814584EC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814584F0 | 7C 08 02 A6 */	mflr r0
/* 814584F4 | 7C A4 2B 78 */	mr r4, r5
/* 814584F8 | 38 C0 00 01 */	li r6, 0x1
/* 814584FC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81458500 | 38 A0 00 00 */	li r5, 0x0
/* 81458504 | 4B FF 34 95 */	bl CHANSVmSetInteger
/* 81458508 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145850C | 54 03 D9 7E */	srwi r3, r0, 5
/* 81458510 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81458514 | 7C 08 03 A6 */	mtlr r0
/* 81458518 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8145851C | 4E 80 00 20 */	blr
.endfn "get_int<1>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# .text:0x350 | 0x81458520 | size: 0x34
# int ipl::cs::util::get_int<2>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "get_int<2>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 81458520 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81458524 | 7C 08 02 A6 */	mflr r0
/* 81458528 | 7C A4 2B 78 */	mr r4, r5
/* 8145852C | 38 C0 00 02 */	li r6, 0x2
/* 81458530 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81458534 | 38 A0 00 00 */	li r5, 0x0
/* 81458538 | 4B FF 34 61 */	bl CHANSVmSetInteger
/* 8145853C | 7C 60 00 34 */	cntlzw r0, r3
/* 81458540 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81458544 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81458548 | 7C 08 03 A6 */	mtlr r0
/* 8145854C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81458550 | 4E 80 00 20 */	blr
.endfn "get_int<2>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# .text:0x384 | 0x81458554 | size: 0x34
# int ipl::cs::util::get_int<3>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "get_int<3>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 81458554 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81458558 | 7C 08 02 A6 */	mflr r0
/* 8145855C | 7C A4 2B 78 */	mr r4, r5
/* 81458560 | 38 C0 00 03 */	li r6, 0x3
/* 81458564 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81458568 | 38 A0 00 00 */	li r5, 0x0
/* 8145856C | 4B FF 34 2D */	bl CHANSVmSetInteger
/* 81458570 | 7C 60 00 34 */	cntlzw r0, r3
/* 81458574 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81458578 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8145857C | 7C 08 03 A6 */	mtlr r0
/* 81458580 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81458584 | 4E 80 00 20 */	blr
.endfn "get_int<3>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# 0x81617390..0x816173F0 | size: 0x60
.rodata
.balign 8

# .rodata:0x0 | 0x81617390 | size: 0x18
# ipl::cs::layout::scMethodList
.obj scMethodList__Q33ipl2cs6layout, local
	.4byte lbl_8166A548
	.4byte find_pane__Q33ipl2cs6layoutFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A557
	.4byte start_anm__Q33ipl2cs6layoutFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_816977F0
	.4byte get_anm__Q33ipl2cs6layoutFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
.endobj scMethodList__Q33ipl2cs6layout

# .rodata:0x18 | 0x816173A8 | size: 0x48
# ipl::cs::util::scPropertyList
.obj scPropertyList__Q33ipl2cs4util, local
	.4byte lbl_8166A561
	.4byte "get_int<0>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte 0x00000000
	.4byte lbl_8166A571
	.4byte "get_int<1>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte 0x00000000
	.4byte lbl_8166A581
	.4byte "get_int<2>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte 0x00000000
	.4byte lbl_8166A591
	.4byte "get_int<3>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte 0x00000000
	.4byte lbl_8166A5A1
	.4byte "get_int<0>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte 0x00000000
	.4byte lbl_8166A5B0
	.4byte "get_int<1>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte 0x00000000
.endobj scPropertyList__Q33ipl2cs4util

# 0x8166A548..0x8166A5C8 | size: 0x80
.data
.balign 8

# .data:0x0 | 0x8166A548 | size: 0xF
.obj lbl_8166A548, global
	.string "FindPaneByName"
.endobj lbl_8166A548

# .data:0xF | 0x8166A557 | size: 0xA
.obj lbl_8166A557, global
	.string "startAnim"
.endobj lbl_8166A557

# .data:0x19 | 0x8166A561 | size: 0x10
.obj lbl_8166A561, global
	.string "*VERTEXCOLOR_LT"
.endobj lbl_8166A561

# .data:0x29 | 0x8166A571 | size: 0x10
.obj lbl_8166A571, global
	.string "*VERTEXCOLOR_RT"
.endobj lbl_8166A571

# .data:0x39 | 0x8166A581 | size: 0x10
.obj lbl_8166A581, global
	.string "*VERTEXCOLOR_LB"
.endobj lbl_8166A581

# .data:0x49 | 0x8166A591 | size: 0x10
.obj lbl_8166A591, global
	.string "*VERTEXCOLOR_RB"
.endobj lbl_8166A591

# .data:0x59 | 0x8166A5A1 | size: 0xF
.obj lbl_8166A5A1, global
	.string "*TEXTCOLOR_TOP"
.endobj lbl_8166A5A1

# .data:0x68 | 0x8166A5B0 | size: 0x14
.obj lbl_8166A5B0, global
	.string "*TEXTCOLOR_BOTTOM\000\000"
.endobj lbl_8166A5B0

# .data:0x7C | 0x8166A5C4 | size: 0x4
.obj gap_08_8166A5C4_data, global
.hidden gap_08_8166A5C4_data
	.4byte 0x00000000
.endobj gap_08_8166A5C4_data

# 0x816977F0..0x81697800 | size: 0x10
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x816977F0 | size: 0x8
.obj lbl_816977F0, global
	.string "getAnim"
.endobj lbl_816977F0

# .sdata:0x8 | 0x816977F8 | size: 0x8
.obj lbl_816977F8, global
	.string "Layout\000"
.endobj lbl_816977F8
