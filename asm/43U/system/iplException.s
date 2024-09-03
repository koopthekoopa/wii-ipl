.include "macros.inc"
.file "iplException.cpp"

# 0x8133E310..0x8133E6FC | size: 0x3EC
.text
.balign 4

# .text:0x0 | 0x8133E310 | size: 0x10
# ipl::exception_callback_(nw4r::db::detail::ConsoleHead*, void*)
.fn exception_callback___3iplFPQ44nw4r2db6detail11ConsoleHeadPv, global
/* 8133E310 | 7C 60 1B 78 */	mr r0, r3
/* 8133E314 | 7C 83 23 78 */	mr r3, r4
/* 8133E318 | 7C 04 03 78 */	mr r4, r0
/* 8133E31C | 48 00 01 D4 */	b exception_callback__Q23ipl9ExceptionFPQ44nw4r2db6detail11ConsoleHead
.endfn exception_callback___3iplFPQ44nw4r2db6detail11ConsoleHeadPv

# .text:0x10 | 0x8133E320 | size: 0xA4
# ipl::Exception::Exception(EGG::Heap*, const _GXRenderModeObj&)
.fn __ct__Q23ipl9ExceptionFPQ23EGG4HeapRC16_GXRenderModeObj, global
/* 8133E320 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133E324 | 7C 08 02 A6 */	mflr r0
/* 8133E328 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8133E32C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133E330 | 48 2B B1 99 */	bl _savegpr_29
/* 8133E334 | 38 00 00 00 */	li r0, 0x0
/* 8133E338 | 7C 7D 1B 78 */	mr r29, r3
/* 8133E33C | 90 03 00 00 */	stw r0, 0x0(r3)
/* 8133E340 | 7C 9E 23 78 */	mr r30, r4
/* 8133E344 | 7C BF 2B 78 */	mr r31, r5
/* 8133E348 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 8133E34C | 90 03 00 08 */	stw r0, 0x8(r3)
/* 8133E350 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 8133E354 | 48 1D F3 69 */	bl Exception_Init__Q24nw4r2dbFv
/* 8133E358 | 48 1D E1 01 */	bl fn_8151C458
/* 8133E35C | 7F C4 F3 78 */	mr r4, r30
/* 8133E360 | 38 60 08 FC */	li r3, 0x8fc
/* 8133E364 | 38 A0 00 04 */	li r5, 0x4
/* 8133E368 | 48 2B 9D 6D */	bl __nwa__FUlPQ23EGG4Heapi
/* 8133E36C | 90 7D 00 08 */	stw r3, 0x8(r29)
/* 8133E370 | 38 80 00 2E */	li r4, 0x2e
/* 8133E374 | 38 A0 00 30 */	li r5, 0x30
/* 8133E378 | 38 C0 00 12 */	li r6, 0x12
/* 8133E37C | 38 E0 00 00 */	li r7, 0x0
/* 8133E380 | 39 00 00 04 */	li r8, 0x4
/* 8133E384 | 48 1D EB 41 */	bl fn_8151CEC4
/* 8133E388 | 90 7D 00 00 */	stw r3, 0x0(r29)
/* 8133E38C | 7F A3 EB 78 */	mr r3, r29
/* 8133E390 | 7F E4 FB 78 */	mr r4, r31
/* 8133E394 | 48 00 00 31 */	bl setConsole__Q23ipl9ExceptionFRC16_GXRenderModeObj
/* 8133E398 | 3C 60 81 34 */	lis r3, exception_callback___3iplFPQ44nw4r2db6detail11ConsoleHeadPv@ha
/* 8133E39C | 7F A4 EB 78 */	mr r4, r29
/* 8133E3A0 | 38 63 E3 10 */	addi r3, r3, exception_callback___3iplFPQ44nw4r2db6detail11ConsoleHeadPv@l
/* 8133E3A4 | 48 1E 01 81 */	bl fn_8151E524
/* 8133E3A8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133E3AC | 7F A3 EB 78 */	mr r3, r29
/* 8133E3B0 | 48 2B B1 65 */	bl _restgpr_29
/* 8133E3B4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8133E3B8 | 7C 08 03 A6 */	mtlr r0
/* 8133E3BC | 38 21 00 20 */	addi r1, r1, 0x20
/* 8133E3C0 | 4E 80 00 20 */	blr
.endfn __ct__Q23ipl9ExceptionFPQ23EGG4HeapRC16_GXRenderModeObj

# .text:0xB4 | 0x8133E3C4 | size: 0x50
# ipl::Exception::setConsole(const _GXRenderModeObj&)
.fn setConsole__Q23ipl9ExceptionFRC16_GXRenderModeObj, global
/* 8133E3C4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133E3C8 | 7C 08 02 A6 */	mflr r0
/* 8133E3CC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133E3D0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133E3D4 | 7C 7F 1B 78 */	mr r31, r3
/* 8133E3D8 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8133E3DC | 48 1E 01 2D */	bl fn_8151E508
/* 8133E3E0 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 8133E3E4 | 38 A0 00 00 */	li r5, 0x0
/* 8133E3E8 | 38 60 00 0E */	li r3, 0xe
/* 8133E3EC | 38 00 00 1E */	li r0, 0x1e
/* 8133E3F0 | 98 A4 00 22 */	stb r5, 0x22(r4)
/* 8133E3F4 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 8133E3F8 | B0 64 00 1C */	sth r3, 0x1c(r4)
/* 8133E3FC | B0 04 00 1E */	sth r0, 0x1e(r4)
/* 8133E400 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133E404 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133E408 | 7C 08 03 A6 */	mtlr r0
/* 8133E40C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133E410 | 4E 80 00 20 */	blr
.endfn setConsole__Q23ipl9ExceptionFRC16_GXRenderModeObj

# .text:0x104 | 0x8133E414 | size: 0xDC
# ipl::Exception::key_input()
.fn key_input__Q23ipl9ExceptionFv, global
/* 8133E414 | 94 21 FD C0 */	stwu r1, -0x240(r1)
/* 8133E418 | 7C 08 02 A6 */	mflr r0
/* 8133E41C | 90 01 02 44 */	stw r0, 0x244(r1)
/* 8133E420 | 39 61 02 40 */	addi r11, r1, 0x240
/* 8133E424 | 48 2B B0 95 */	bl _savegpr_25
/* 8133E428 | 7C 79 1B 78 */	mr r25, r3
/* 8133E42C | 38 61 00 08 */	addi r3, r1, 0x8
/* 8133E430 | 38 80 00 00 */	li r4, 0x0
/* 8133E434 | 38 A0 02 10 */	li r5, 0x210
/* 8133E438 | 4B FF 1E FD */	bl memset
/* 8133E43C | 3B 60 00 00 */	li r27, 0x0
/* 8133E440 | 48 1F 24 59 */	bl fn_81530898
/* 8133E444 | 3F A0 81 61 */	lis r29, lbl_8160D600@ha
/* 8133E448 | 3B 81 00 08 */	addi r28, r1, 0x8
/* 8133E44C | 3B BD D6 00 */	addi r29, r29, lbl_8160D600@l
/* 8133E450 | 3B E0 00 04 */	li r31, 0x4
/* 8133E454 | 48 00 00 7C */	b .L_8133E4D0
.L_8133E458:
/* 8133E458 | 3B 40 00 00 */	li r26, 0x0
/* 8133E45C | 3B C0 00 00 */	li r30, 0x0
.L_8133E460:
/* 8133E460 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8133E464 | 7F 43 D3 78 */	mr r3, r26
/* 8133E468 | 7C 84 F2 14 */	add r4, r4, r30
/* 8133E46C | 38 A0 00 01 */	li r5, 0x1
/* 8133E470 | 48 24 95 15 */	bl fn_81587984
/* 8133E474 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 8133E478 | 3B DE 00 84 */	addi r30, r30, 0x84
/* 8133E47C | 2C 1A 00 04 */	cmpwi r26, 0x4
/* 8133E480 | 41 80 FF E0 */	blt .L_8133E460
/* 8133E484 | 7F 23 CB 78 */	mr r3, r25
/* 8133E488 | 38 80 00 32 */	li r4, 0x32
/* 8133E48C | 48 00 01 ED */	bl wait__Q23ipl9ExceptionFUl
/* 8133E490 | 38 60 00 00 */	li r3, 0x0
/* 8133E494 | 7F E9 03 A6 */	mtctr r31
.L_8133E498:
/* 8133E498 | 7C 9C 1A 14 */	add r4, r28, r3
/* 8133E49C | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 8133E4A0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8133E4A4 | 41 82 00 24 */	beq .L_8133E4C8
/* 8133E4A8 | 57 60 10 3A */	slwi r0, r27, 2
/* 8133E4AC | 7C 1D 00 2E */	lwzx r0, r29, r0
/* 8133E4B0 | 7C 80 00 39 */	and. r0, r4, r0
/* 8133E4B4 | 41 82 00 0C */	beq .L_8133E4C0
/* 8133E4B8 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 8133E4BC | 48 00 00 14 */	b .L_8133E4D0
.L_8133E4C0:
/* 8133E4C0 | 3B 60 00 00 */	li r27, 0x0
/* 8133E4C4 | 48 00 00 0C */	b .L_8133E4D0
.L_8133E4C8:
/* 8133E4C8 | 38 63 00 84 */	addi r3, r3, 0x84
/* 8133E4CC | 42 00 FF CC */	bdnz .L_8133E498
.L_8133E4D0:
/* 8133E4D0 | 2C 1B 00 08 */	cmpwi r27, 0x8
/* 8133E4D4 | 41 80 FF 84 */	blt .L_8133E458
/* 8133E4D8 | 39 61 02 40 */	addi r11, r1, 0x240
/* 8133E4DC | 48 2B B0 29 */	bl _restgpr_25
/* 8133E4E0 | 80 01 02 44 */	lwz r0, 0x244(r1)
/* 8133E4E4 | 7C 08 03 A6 */	mtlr r0
/* 8133E4E8 | 38 21 02 40 */	addi r1, r1, 0x240
/* 8133E4EC | 4E 80 00 20 */	blr
.endfn key_input__Q23ipl9ExceptionFv

# .text:0x1E0 | 0x8133E4F0 | size: 0x188
# ipl::Exception::exception_callback(nw4r::db::detail::ConsoleHead*)
.fn exception_callback__Q23ipl9ExceptionFPQ44nw4r2db6detail11ConsoleHead, global
/* 8133E4F0 | 94 21 FD C0 */	stwu r1, -0x240(r1)
/* 8133E4F4 | 7C 08 02 A6 */	mflr r0
/* 8133E4F8 | 90 01 02 44 */	stw r0, 0x244(r1)
/* 8133E4FC | 39 61 02 40 */	addi r11, r1, 0x240
/* 8133E500 | 48 2B AF B1 */	bl _savegpr_23
/* 8133E504 | 38 00 00 01 */	li r0, 0x1
/* 8133E508 | 7C 7C 1B 78 */	mr r28, r3
/* 8133E50C | 98 04 00 22 */	stb r0, 0x22(r4)
/* 8133E510 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8133E514 | 83 43 00 14 */	lwz r26, 0x14(r3)
/* 8133E518 | 48 1D F1 29 */	bl fn_8151D640
/* 8133E51C | 3B C3 FF EE */	subi r30, r3, 0x12
/* 8133E520 | 7F 83 E3 78 */	mr r3, r28
/* 8133E524 | 4B FF FE F1 */	bl key_input__Q23ipl9ExceptionFv
/* 8133E528 | 48 00 00 24 */	b .L_8133E54C
.L_8133E52C:
/* 8133E52C | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8133E530 | 93 43 00 18 */	stw r26, 0x18(r3)
/* 8133E534 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8133E538 | 48 1D EC 69 */	bl fn_8151D1A0
/* 8133E53C | 7F 83 E3 78 */	mr r3, r28
/* 8133E540 | 38 80 00 FA */	li r4, 0xfa
/* 8133E544 | 48 00 01 35 */	bl wait__Q23ipl9ExceptionFUl
/* 8133E548 | 3B 5A 00 01 */	addi r26, r26, 0x1
.L_8133E54C:
/* 8133E54C | 7C 1A F0 00 */	cmpw r26, r30
/* 8133E550 | 40 81 FF DC */	ble .L_8133E52C
/* 8133E554 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8133E558 | 3B E0 00 00 */	li r31, 0x0
/* 8133E55C | 93 E3 00 18 */	stw r31, 0x18(r3)
/* 8133E560 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8133E564 | 48 1D EC 3D */	bl fn_8151D1A0
/* 8133E568 | 48 1F 23 31 */	bl fn_81530898
/* 8133E56C | 38 61 00 08 */	addi r3, r1, 0x8
/* 8133E570 | 38 80 00 00 */	li r4, 0x0
/* 8133E574 | 38 A0 02 10 */	li r5, 0x210
/* 8133E578 | 4B FF 1D BD */	bl memset
/* 8133E57C | 3B 60 00 04 */	li r27, 0x4
.L_8133E580:
/* 8133E580 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8133E584 | 7F F9 FB 78 */	mr r25, r31
/* 8133E588 | 3A E0 00 00 */	li r23, 0x0
/* 8133E58C | 3B 40 00 00 */	li r26, 0x0
/* 8133E590 | AB A3 00 1C */	lha r29, 0x1c(r3)
/* 8133E594 | 7F B8 EB 78 */	mr r24, r29
.L_8133E598:
/* 8133E598 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8133E59C | 7E E3 BB 78 */	mr r3, r23
/* 8133E5A0 | 7C 84 D2 14 */	add r4, r4, r26
/* 8133E5A4 | 38 A0 00 01 */	li r5, 0x1
/* 8133E5A8 | 48 24 93 DD */	bl fn_81587984
/* 8133E5AC | 3A F7 00 01 */	addi r23, r23, 0x1
/* 8133E5B0 | 3B 5A 00 84 */	addi r26, r26, 0x84
/* 8133E5B4 | 2C 17 00 04 */	cmpwi r23, 0x4
/* 8133E5B8 | 41 80 FF E0 */	blt .L_8133E598
/* 8133E5BC | 7F 83 E3 78 */	mr r3, r28
/* 8133E5C0 | 38 80 00 32 */	li r4, 0x32
/* 8133E5C4 | 48 00 00 B5 */	bl wait__Q23ipl9ExceptionFUl
/* 8133E5C8 | 38 60 00 00 */	li r3, 0x0
/* 8133E5CC | 7F 69 03 A6 */	mtctr r27
.L_8133E5D0:
/* 8133E5D0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8133E5D4 | 7C 84 1A 14 */	add r4, r4, r3
/* 8133E5D8 | 88 04 00 5D */	lbz r0, 0x5d(r4)
/* 8133E5DC | 7C 00 07 75 */	extsb. r0, r0
/* 8133E5E0 | 40 82 00 64 */	bne .L_8133E644
/* 8133E5E4 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 8133E5E8 | 54 80 07 39 */	rlwinm. r0, r4, 0, 28, 28
/* 8133E5EC | 41 82 00 14 */	beq .L_8133E600
/* 8133E5F0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8133E5F4 | 40 81 00 0C */	ble .L_8133E600
/* 8133E5F8 | 3B FF FF FF */	subi r31, r31, 0x1
/* 8133E5FC | 48 00 00 48 */	b .L_8133E644
.L_8133E600:
/* 8133E600 | 54 80 07 7B */	rlwinm. r0, r4, 0, 29, 29
/* 8133E604 | 41 82 00 14 */	beq .L_8133E618
/* 8133E608 | 7C 1F F0 00 */	cmpw r31, r30
/* 8133E60C | 40 80 00 0C */	bge .L_8133E618
/* 8133E610 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8133E614 | 48 00 00 30 */	b .L_8133E644
.L_8133E618:
/* 8133E618 | 54 80 07 BD */	rlwinm. r0, r4, 0, 30, 30
/* 8133E61C | 41 82 00 14 */	beq .L_8133E630
/* 8133E620 | 2C 1D 00 04 */	cmpwi r29, 0x4
/* 8133E624 | 40 81 00 0C */	ble .L_8133E630
/* 8133E628 | 3B BD FF FE */	subi r29, r29, 0x2
/* 8133E62C | 48 00 00 18 */	b .L_8133E644
.L_8133E630:
/* 8133E630 | 54 80 07 FF */	clrlwi. r0, r4, 31
/* 8133E634 | 41 82 00 10 */	beq .L_8133E644
/* 8133E638 | 2C 1D 00 18 */	cmpwi r29, 0x18
/* 8133E63C | 40 80 00 08 */	bge .L_8133E644
/* 8133E640 | 3B BD 00 02 */	addi r29, r29, 0x2
.L_8133E644:
/* 8133E644 | 38 63 00 84 */	addi r3, r3, 0x84
/* 8133E648 | 42 00 FF 88 */	bdnz .L_8133E5D0
/* 8133E64C | 7C 1F C8 00 */	cmpw r31, r25
/* 8133E650 | 40 82 00 0C */	bne .L_8133E65C
/* 8133E654 | 7C 1D C0 00 */	cmpw r29, r24
/* 8133E658 | 41 82 FF 28 */	beq .L_8133E580
.L_8133E65C:
/* 8133E65C | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8133E660 | B3 A3 00 1C */	sth r29, 0x1c(r3)
/* 8133E664 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8133E668 | 93 E3 00 18 */	stw r31, 0x18(r3)
/* 8133E66C | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8133E670 | 48 1D EB 31 */	bl fn_8151D1A0
/* 8133E674 | 4B FF FF 0C */	b .L_8133E580
.endfn exception_callback__Q23ipl9ExceptionFPQ44nw4r2db6detail11ConsoleHead

# .text:0x368 | 0x8133E678 | size: 0x60
# ipl::Exception::wait(unsigned long)
.fn wait__Q23ipl9ExceptionFUl, global
/* 8133E678 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133E67C | 7C 08 02 A6 */	mflr r0
/* 8133E680 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8133E684 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133E688 | 48 2B AE 3D */	bl _savegpr_28
/* 8133E68C | 7C 9C 23 78 */	mr r28, r4
/* 8133E690 | 48 1F 76 09 */	bl fn_81535C98
/* 8133E694 | 7C 7D 1B 78 */	mr r29, r3
/* 8133E698 | 3F C0 80 00 */	lis r30, 0x8000
/* 8133E69C | 3B E0 03 E8 */	li r31, 0x3e8
.L_8133E6A0:
/* 8133E6A0 | 48 1F 75 F9 */	bl fn_81535C98
/* 8133E6A4 | 80 1E 00 F8 */	lwz r0, 0xf8(r30)
/* 8133E6A8 | 7C 7D 18 50 */	subf r3, r29, r3
/* 8133E6AC | 54 00 F0 BE */	srwi r0, r0, 2
/* 8133E6B0 | 7C 00 FB 96 */	divwu r0, r0, r31
/* 8133E6B4 | 7C 03 03 96 */	divwu r0, r3, r0
/* 8133E6B8 | 7C 00 E0 40 */	cmplw r0, r28
/* 8133E6BC | 41 80 FF E4 */	blt .L_8133E6A0
/* 8133E6C0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133E6C4 | 48 2B AE 4D */	bl _restgpr_28
/* 8133E6C8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8133E6CC | 7C 08 03 A6 */	mtlr r0
/* 8133E6D0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8133E6D4 | 4E 80 00 20 */	blr
.endfn wait__Q23ipl9ExceptionFUl

# .text:0x3C8 | 0x8133E6D8 | size: 0x24
# nw4r::ut::Color::operator=(const nw4r::ut::Color&)
.fn __as__Q34nw4r2ut5ColorFRCQ34nw4r2ut5Color_8133E6D8, global
/* 8133E6D8 | 88 E4 00 00 */	lbz r7, 0x0(r4)
/* 8133E6DC | 88 C4 00 01 */	lbz r6, 0x1(r4)
/* 8133E6E0 | 88 A4 00 02 */	lbz r5, 0x2(r4)
/* 8133E6E4 | 88 04 00 03 */	lbz r0, 0x3(r4)
/* 8133E6E8 | 98 E3 00 00 */	stb r7, 0x0(r3)
/* 8133E6EC | 98 C3 00 01 */	stb r6, 0x1(r3)
/* 8133E6F0 | 98 A3 00 02 */	stb r5, 0x2(r3)
/* 8133E6F4 | 98 03 00 03 */	stb r0, 0x3(r3)
/* 8133E6F8 | 4E 80 00 20 */	blr
.endfn __as__Q34nw4r2ut5ColorFRCQ34nw4r2ut5Color_8133E6D8

# 0x8160D600..0x8160D620 | size: 0x20
.rodata
.balign 8

# .rodata:0x0 | 0x8160D600 | size: 0x20
.obj lbl_8160D600, global
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0x00000004
	.4byte 0x00000200
	.4byte 0x00001000
	.4byte 0x00000100
	.4byte 0x00000010
	.4byte 0x00000004
.endobj lbl_8160D600
