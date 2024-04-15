.include "macros.inc"
.file "iplException.cpp"

# 0x8133E310 - 0x8133E6FC
.text
.balign 4

# ipl::exception_callback_(nw4r::db::detail::ConsoleHead*, void*)
.fn exception_callback___3iplFPQ44nw4r2db6detail11ConsoleHeadPv, global
/* 8133E310 0000C710  7C 60 1B 78 */	mr r0, r3
/* 8133E314 0000C714  7C 83 23 78 */	mr r3, r4
/* 8133E318 0000C718  7C 04 03 78 */	mr r4, r0
/* 8133E31C 0000C71C  48 00 01 D4 */	b exception_callback__Q23ipl9ExceptionFPQ44nw4r2db6detail11ConsoleHead
.endfn exception_callback___3iplFPQ44nw4r2db6detail11ConsoleHeadPv

# ipl::Exception::Exception(EGG::Heap*, const _GXRenderModeObj&)
.fn __ct__Q23ipl9ExceptionFPQ23EGG4HeapRC16_GXRenderModeObj, global
/* 8133E320 0000C720  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133E324 0000C724  7C 08 02 A6 */	mflr r0
/* 8133E328 0000C728  90 01 00 24 */	stw r0, 0x24(r1)
/* 8133E32C 0000C72C  39 61 00 20 */	addi r11, r1, 0x20
/* 8133E330 0000C730  48 2B B1 99 */	bl _savegpr_29
/* 8133E334 0000C734  38 00 00 00 */	li r0, 0x0
/* 8133E338 0000C738  7C 7D 1B 78 */	mr r29, r3
/* 8133E33C 0000C73C  90 03 00 00 */	stw r0, 0x0(r3)
/* 8133E340 0000C740  7C 9E 23 78 */	mr r30, r4
/* 8133E344 0000C744  7C BF 2B 78 */	mr r31, r5
/* 8133E348 0000C748  90 03 00 04 */	stw r0, 0x4(r3)
/* 8133E34C 0000C74C  90 03 00 08 */	stw r0, 0x8(r3)
/* 8133E350 0000C750  90 03 00 0C */	stw r0, 0xc(r3)
/* 8133E354 0000C754  48 1D F3 69 */	bl fn_8151D6BC
/* 8133E358 0000C758  48 1D E1 01 */	bl fn_8151C458
/* 8133E35C 0000C75C  7F C4 F3 78 */	mr r4, r30
/* 8133E360 0000C760  38 60 08 FC */	li r3, 0x8fc
/* 8133E364 0000C764  38 A0 00 04 */	li r5, 0x4
/* 8133E368 0000C768  48 2B 9D 6D */	bl fn_815F80D4
/* 8133E36C 0000C76C  90 7D 00 08 */	stw r3, 0x8(r29)
/* 8133E370 0000C770  38 80 00 2E */	li r4, 0x2e
/* 8133E374 0000C774  38 A0 00 30 */	li r5, 0x30
/* 8133E378 0000C778  38 C0 00 12 */	li r6, 0x12
/* 8133E37C 0000C77C  38 E0 00 00 */	li r7, 0x0
/* 8133E380 0000C780  39 00 00 04 */	li r8, 0x4
/* 8133E384 0000C784  48 1D EB 41 */	bl fn_8151CEC4
/* 8133E388 0000C788  90 7D 00 00 */	stw r3, 0x0(r29)
/* 8133E38C 0000C78C  7F A3 EB 78 */	mr r3, r29
/* 8133E390 0000C790  7F E4 FB 78 */	mr r4, r31
/* 8133E394 0000C794  48 00 00 31 */	bl setConsole__Q23ipl9ExceptionFRC16_GXRenderModeObj
/* 8133E398 0000C798  3C 60 81 34 */	lis r3, exception_callback___3iplFPQ44nw4r2db6detail11ConsoleHeadPv@ha
/* 8133E39C 0000C79C  7F A4 EB 78 */	mr r4, r29
/* 8133E3A0 0000C7A0  38 63 E3 10 */	addi r3, r3, exception_callback___3iplFPQ44nw4r2db6detail11ConsoleHeadPv@l
/* 8133E3A4 0000C7A4  48 1E 01 81 */	bl fn_8151E524
/* 8133E3A8 0000C7A8  39 61 00 20 */	addi r11, r1, 0x20
/* 8133E3AC 0000C7AC  7F A3 EB 78 */	mr r3, r29
/* 8133E3B0 0000C7B0  48 2B B1 65 */	bl _restgpr_29
/* 8133E3B4 0000C7B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8133E3B8 0000C7B8  7C 08 03 A6 */	mtlr r0
/* 8133E3BC 0000C7BC  38 21 00 20 */	addi r1, r1, 0x20
/* 8133E3C0 0000C7C0  4E 80 00 20 */	blr
.endfn __ct__Q23ipl9ExceptionFPQ23EGG4HeapRC16_GXRenderModeObj

# ipl::Exception::setConsole(const _GXRenderModeObj&)
.fn setConsole__Q23ipl9ExceptionFRC16_GXRenderModeObj, global
/* 8133E3C4 0000C7C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133E3C8 0000C7C8  7C 08 02 A6 */	mflr r0
/* 8133E3CC 0000C7CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8133E3D0 0000C7D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133E3D4 0000C7D4  7C 7F 1B 78 */	mr r31, r3
/* 8133E3D8 0000C7D8  80 63 00 00 */	lwz r3, 0x0(r3)
/* 8133E3DC 0000C7DC  48 1E 01 2D */	bl fn_8151E508
/* 8133E3E0 0000C7E0  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 8133E3E4 0000C7E4  38 A0 00 00 */	li r5, 0x0
/* 8133E3E8 0000C7E8  38 60 00 0E */	li r3, 0xe
/* 8133E3EC 0000C7EC  38 00 00 1E */	li r0, 0x1e
/* 8133E3F0 0000C7F0  98 A4 00 22 */	stb r5, 0x22(r4)
/* 8133E3F4 0000C7F4  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 8133E3F8 0000C7F8  B0 64 00 1C */	sth r3, 0x1c(r4)
/* 8133E3FC 0000C7FC  B0 04 00 1E */	sth r0, 0x1e(r4)
/* 8133E400 0000C800  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133E404 0000C804  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133E408 0000C808  7C 08 03 A6 */	mtlr r0
/* 8133E40C 0000C80C  38 21 00 10 */	addi r1, r1, 0x10
/* 8133E410 0000C810  4E 80 00 20 */	blr
.endfn setConsole__Q23ipl9ExceptionFRC16_GXRenderModeObj

# ipl::Exception::key_input()
.fn key_input__Q23ipl9ExceptionFv, global
/* 8133E414 0000C814  94 21 FD C0 */	stwu r1, -0x240(r1)
/* 8133E418 0000C818  7C 08 02 A6 */	mflr r0
/* 8133E41C 0000C81C  90 01 02 44 */	stw r0, 0x244(r1)
/* 8133E420 0000C820  39 61 02 40 */	addi r11, r1, 0x240
/* 8133E424 0000C824  48 2B B0 95 */	bl _savegpr_25
/* 8133E428 0000C828  7C 79 1B 78 */	mr r25, r3
/* 8133E42C 0000C82C  38 61 00 08 */	addi r3, r1, 0x8
/* 8133E430 0000C830  38 80 00 00 */	li r4, 0x0
/* 8133E434 0000C834  38 A0 02 10 */	li r5, 0x210
/* 8133E438 0000C838  4B FF 1E FD */	bl memset
/* 8133E43C 0000C83C  3B 60 00 00 */	li r27, 0x0
/* 8133E440 0000C840  48 1F 24 59 */	bl fn_81530898
/* 8133E444 0000C844  3F A0 81 61 */	lis r29, lbl_8160D600@ha
/* 8133E448 0000C848  3B 81 00 08 */	addi r28, r1, 0x8
/* 8133E44C 0000C84C  3B BD D6 00 */	addi r29, r29, lbl_8160D600@l
/* 8133E450 0000C850  3B E0 00 04 */	li r31, 0x4
/* 8133E454 0000C854  48 00 00 7C */	b .L_8133E4D0
.L_8133E458:
/* 8133E458 0000C858  3B 40 00 00 */	li r26, 0x0
/* 8133E45C 0000C85C  3B C0 00 00 */	li r30, 0x0
.L_8133E460:
/* 8133E460 0000C860  38 81 00 08 */	addi r4, r1, 0x8
/* 8133E464 0000C864  7F 43 D3 78 */	mr r3, r26
/* 8133E468 0000C868  7C 84 F2 14 */	add r4, r4, r30
/* 8133E46C 0000C86C  38 A0 00 01 */	li r5, 0x1
/* 8133E470 0000C870  48 24 95 15 */	bl fn_81587984
/* 8133E474 0000C874  3B 5A 00 01 */	addi r26, r26, 0x1
/* 8133E478 0000C878  3B DE 00 84 */	addi r30, r30, 0x84
/* 8133E47C 0000C87C  2C 1A 00 04 */	cmpwi r26, 0x4
/* 8133E480 0000C880  41 80 FF E0 */	blt .L_8133E460
/* 8133E484 0000C884  7F 23 CB 78 */	mr r3, r25
/* 8133E488 0000C888  38 80 00 32 */	li r4, 0x32
/* 8133E48C 0000C88C  48 00 01 ED */	bl wait__Q23ipl9ExceptionFUl
/* 8133E490 0000C890  38 60 00 00 */	li r3, 0x0
/* 8133E494 0000C894  7F E9 03 A6 */	mtctr r31
.L_8133E498:
/* 8133E498 0000C898  7C 9C 1A 14 */	add r4, r28, r3
/* 8133E49C 0000C89C  80 84 00 04 */	lwz r4, 0x4(r4)
/* 8133E4A0 0000C8A0  2C 04 00 00 */	cmpwi r4, 0x0
/* 8133E4A4 0000C8A4  41 82 00 24 */	beq .L_8133E4C8
/* 8133E4A8 0000C8A8  57 60 10 3A */	slwi r0, r27, 2
/* 8133E4AC 0000C8AC  7C 1D 00 2E */	lwzx r0, r29, r0
/* 8133E4B0 0000C8B0  7C 80 00 39 */	and. r0, r4, r0
/* 8133E4B4 0000C8B4  41 82 00 0C */	beq .L_8133E4C0
/* 8133E4B8 0000C8B8  3B 7B 00 01 */	addi r27, r27, 0x1
/* 8133E4BC 0000C8BC  48 00 00 14 */	b .L_8133E4D0
.L_8133E4C0:
/* 8133E4C0 0000C8C0  3B 60 00 00 */	li r27, 0x0
/* 8133E4C4 0000C8C4  48 00 00 0C */	b .L_8133E4D0
.L_8133E4C8:
/* 8133E4C8 0000C8C8  38 63 00 84 */	addi r3, r3, 0x84
/* 8133E4CC 0000C8CC  42 00 FF CC */	bdnz .L_8133E498
.L_8133E4D0:
/* 8133E4D0 0000C8D0  2C 1B 00 08 */	cmpwi r27, 0x8
/* 8133E4D4 0000C8D4  41 80 FF 84 */	blt .L_8133E458
/* 8133E4D8 0000C8D8  39 61 02 40 */	addi r11, r1, 0x240
/* 8133E4DC 0000C8DC  48 2B B0 29 */	bl _restgpr_25
/* 8133E4E0 0000C8E0  80 01 02 44 */	lwz r0, 0x244(r1)
/* 8133E4E4 0000C8E4  7C 08 03 A6 */	mtlr r0
/* 8133E4E8 0000C8E8  38 21 02 40 */	addi r1, r1, 0x240
/* 8133E4EC 0000C8EC  4E 80 00 20 */	blr
.endfn key_input__Q23ipl9ExceptionFv

# ipl::Exception::exception_callback(nw4r::db::detail::ConsoleHead*)
.fn exception_callback__Q23ipl9ExceptionFPQ44nw4r2db6detail11ConsoleHead, global
/* 8133E4F0 0000C8F0  94 21 FD C0 */	stwu r1, -0x240(r1)
/* 8133E4F4 0000C8F4  7C 08 02 A6 */	mflr r0
/* 8133E4F8 0000C8F8  90 01 02 44 */	stw r0, 0x244(r1)
/* 8133E4FC 0000C8FC  39 61 02 40 */	addi r11, r1, 0x240
/* 8133E500 0000C900  48 2B AF B1 */	bl _savegpr_23
/* 8133E504 0000C904  38 00 00 01 */	li r0, 0x1
/* 8133E508 0000C908  7C 7C 1B 78 */	mr r28, r3
/* 8133E50C 0000C90C  98 04 00 22 */	stb r0, 0x22(r4)
/* 8133E510 0000C910  80 63 00 00 */	lwz r3, 0x0(r3)
/* 8133E514 0000C914  83 43 00 14 */	lwz r26, 0x14(r3)
/* 8133E518 0000C918  48 1D F1 29 */	bl fn_8151D640
/* 8133E51C 0000C91C  3B C3 FF EE */	subi r30, r3, 0x12
/* 8133E520 0000C920  7F 83 E3 78 */	mr r3, r28
/* 8133E524 0000C924  4B FF FE F1 */	bl key_input__Q23ipl9ExceptionFv
/* 8133E528 0000C928  48 00 00 24 */	b .L_8133E54C
.L_8133E52C:
/* 8133E52C 0000C92C  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8133E530 0000C930  93 43 00 18 */	stw r26, 0x18(r3)
/* 8133E534 0000C934  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8133E538 0000C938  48 1D EC 69 */	bl fn_8151D1A0
/* 8133E53C 0000C93C  7F 83 E3 78 */	mr r3, r28
/* 8133E540 0000C940  38 80 00 FA */	li r4, 0xfa
/* 8133E544 0000C944  48 00 01 35 */	bl wait__Q23ipl9ExceptionFUl
/* 8133E548 0000C948  3B 5A 00 01 */	addi r26, r26, 0x1
.L_8133E54C:
/* 8133E54C 0000C94C  7C 1A F0 00 */	cmpw r26, r30
/* 8133E550 0000C950  40 81 FF DC */	ble .L_8133E52C
/* 8133E554 0000C954  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8133E558 0000C958  3B E0 00 00 */	li r31, 0x0
/* 8133E55C 0000C95C  93 E3 00 18 */	stw r31, 0x18(r3)
/* 8133E560 0000C960  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8133E564 0000C964  48 1D EC 3D */	bl fn_8151D1A0
/* 8133E568 0000C968  48 1F 23 31 */	bl fn_81530898
/* 8133E56C 0000C96C  38 61 00 08 */	addi r3, r1, 0x8
/* 8133E570 0000C970  38 80 00 00 */	li r4, 0x0
/* 8133E574 0000C974  38 A0 02 10 */	li r5, 0x210
/* 8133E578 0000C978  4B FF 1D BD */	bl memset
/* 8133E57C 0000C97C  3B 60 00 04 */	li r27, 0x4
.L_8133E580:
/* 8133E580 0000C980  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8133E584 0000C984  7F F9 FB 78 */	mr r25, r31
/* 8133E588 0000C988  3A E0 00 00 */	li r23, 0x0
/* 8133E58C 0000C98C  3B 40 00 00 */	li r26, 0x0
/* 8133E590 0000C990  AB A3 00 1C */	lha r29, 0x1c(r3)
/* 8133E594 0000C994  7F B8 EB 78 */	mr r24, r29
.L_8133E598:
/* 8133E598 0000C998  38 81 00 08 */	addi r4, r1, 0x8
/* 8133E59C 0000C99C  7E E3 BB 78 */	mr r3, r23
/* 8133E5A0 0000C9A0  7C 84 D2 14 */	add r4, r4, r26
/* 8133E5A4 0000C9A4  38 A0 00 01 */	li r5, 0x1
/* 8133E5A8 0000C9A8  48 24 93 DD */	bl fn_81587984
/* 8133E5AC 0000C9AC  3A F7 00 01 */	addi r23, r23, 0x1
/* 8133E5B0 0000C9B0  3B 5A 00 84 */	addi r26, r26, 0x84
/* 8133E5B4 0000C9B4  2C 17 00 04 */	cmpwi r23, 0x4
/* 8133E5B8 0000C9B8  41 80 FF E0 */	blt .L_8133E598
/* 8133E5BC 0000C9BC  7F 83 E3 78 */	mr r3, r28
/* 8133E5C0 0000C9C0  38 80 00 32 */	li r4, 0x32
/* 8133E5C4 0000C9C4  48 00 00 B5 */	bl wait__Q23ipl9ExceptionFUl
/* 8133E5C8 0000C9C8  38 60 00 00 */	li r3, 0x0
/* 8133E5CC 0000C9CC  7F 69 03 A6 */	mtctr r27
.L_8133E5D0:
/* 8133E5D0 0000C9D0  38 81 00 08 */	addi r4, r1, 0x8
/* 8133E5D4 0000C9D4  7C 84 1A 14 */	add r4, r4, r3
/* 8133E5D8 0000C9D8  88 04 00 5D */	lbz r0, 0x5d(r4)
/* 8133E5DC 0000C9DC  7C 00 07 75 */	extsb. r0, r0
/* 8133E5E0 0000C9E0  40 82 00 64 */	bne .L_8133E644
/* 8133E5E4 0000C9E4  80 84 00 00 */	lwz r4, 0x0(r4)
/* 8133E5E8 0000C9E8  54 80 07 39 */	rlwinm. r0, r4, 0, 28, 28
/* 8133E5EC 0000C9EC  41 82 00 14 */	beq .L_8133E600
/* 8133E5F0 0000C9F0  2C 1F 00 00 */	cmpwi r31, 0x0
/* 8133E5F4 0000C9F4  40 81 00 0C */	ble .L_8133E600
/* 8133E5F8 0000C9F8  3B FF FF FF */	subi r31, r31, 0x1
/* 8133E5FC 0000C9FC  48 00 00 48 */	b .L_8133E644
.L_8133E600:
/* 8133E600 0000CA00  54 80 07 7B */	rlwinm. r0, r4, 0, 29, 29
/* 8133E604 0000CA04  41 82 00 14 */	beq .L_8133E618
/* 8133E608 0000CA08  7C 1F F0 00 */	cmpw r31, r30
/* 8133E60C 0000CA0C  40 80 00 0C */	bge .L_8133E618
/* 8133E610 0000CA10  3B FF 00 01 */	addi r31, r31, 0x1
/* 8133E614 0000CA14  48 00 00 30 */	b .L_8133E644
.L_8133E618:
/* 8133E618 0000CA18  54 80 07 BD */	rlwinm. r0, r4, 0, 30, 30
/* 8133E61C 0000CA1C  41 82 00 14 */	beq .L_8133E630
/* 8133E620 0000CA20  2C 1D 00 04 */	cmpwi r29, 0x4
/* 8133E624 0000CA24  40 81 00 0C */	ble .L_8133E630
/* 8133E628 0000CA28  3B BD FF FE */	subi r29, r29, 0x2
/* 8133E62C 0000CA2C  48 00 00 18 */	b .L_8133E644
.L_8133E630:
/* 8133E630 0000CA30  54 80 07 FF */	clrlwi. r0, r4, 31
/* 8133E634 0000CA34  41 82 00 10 */	beq .L_8133E644
/* 8133E638 0000CA38  2C 1D 00 18 */	cmpwi r29, 0x18
/* 8133E63C 0000CA3C  40 80 00 08 */	bge .L_8133E644
/* 8133E640 0000CA40  3B BD 00 02 */	addi r29, r29, 0x2
.L_8133E644:
/* 8133E644 0000CA44  38 63 00 84 */	addi r3, r3, 0x84
/* 8133E648 0000CA48  42 00 FF 88 */	bdnz .L_8133E5D0
/* 8133E64C 0000CA4C  7C 1F C8 00 */	cmpw r31, r25
/* 8133E650 0000CA50  40 82 00 0C */	bne .L_8133E65C
/* 8133E654 0000CA54  7C 1D C0 00 */	cmpw r29, r24
/* 8133E658 0000CA58  41 82 FF 28 */	beq .L_8133E580
.L_8133E65C:
/* 8133E65C 0000CA5C  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8133E660 0000CA60  B3 A3 00 1C */	sth r29, 0x1c(r3)
/* 8133E664 0000CA64  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8133E668 0000CA68  93 E3 00 18 */	stw r31, 0x18(r3)
/* 8133E66C 0000CA6C  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8133E670 0000CA70  48 1D EB 31 */	bl fn_8151D1A0
/* 8133E674 0000CA74  4B FF FF 0C */	b .L_8133E580
.endfn exception_callback__Q23ipl9ExceptionFPQ44nw4r2db6detail11ConsoleHead

# ipl::Exception::wait(unsigned long)
.fn wait__Q23ipl9ExceptionFUl, global
/* 8133E678 0000CA78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133E67C 0000CA7C  7C 08 02 A6 */	mflr r0
/* 8133E680 0000CA80  90 01 00 24 */	stw r0, 0x24(r1)
/* 8133E684 0000CA84  39 61 00 20 */	addi r11, r1, 0x20
/* 8133E688 0000CA88  48 2B AE 3D */	bl _savegpr_28
/* 8133E68C 0000CA8C  7C 9C 23 78 */	mr r28, r4
/* 8133E690 0000CA90  48 1F 76 09 */	bl fn_81535C98
/* 8133E694 0000CA94  7C 7D 1B 78 */	mr r29, r3
/* 8133E698 0000CA98  3F C0 80 00 */	lis r30, 0x8000
/* 8133E69C 0000CA9C  3B E0 03 E8 */	li r31, 0x3e8
.L_8133E6A0:
/* 8133E6A0 0000CAA0  48 1F 75 F9 */	bl fn_81535C98
/* 8133E6A4 0000CAA4  80 1E 00 F8 */	lwz r0, 0xf8(r30)
/* 8133E6A8 0000CAA8  7C 7D 18 50 */	subf r3, r29, r3
/* 8133E6AC 0000CAAC  54 00 F0 BE */	srwi r0, r0, 2
/* 8133E6B0 0000CAB0  7C 00 FB 96 */	divwu r0, r0, r31
/* 8133E6B4 0000CAB4  7C 03 03 96 */	divwu r0, r3, r0
/* 8133E6B8 0000CAB8  7C 00 E0 40 */	cmplw r0, r28
/* 8133E6BC 0000CABC  41 80 FF E4 */	blt .L_8133E6A0
/* 8133E6C0 0000CAC0  39 61 00 20 */	addi r11, r1, 0x20
/* 8133E6C4 0000CAC4  48 2B AE 4D */	bl _restgpr_28
/* 8133E6C8 0000CAC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8133E6CC 0000CACC  7C 08 03 A6 */	mtlr r0
/* 8133E6D0 0000CAD0  38 21 00 20 */	addi r1, r1, 0x20
/* 8133E6D4 0000CAD4  4E 80 00 20 */	blr
.endfn wait__Q23ipl9ExceptionFUl

# nw4r::ut::Color::operator=(const nw4r::ut::Color&)
.fn __as__Q34nw4r2ut5ColorFRCQ34nw4r2ut5Color_8133E6D8, global
/* 8133E6D8 0000CAD8  88 E4 00 00 */	lbz r7, 0x0(r4)
/* 8133E6DC 0000CADC  88 C4 00 01 */	lbz r6, 0x1(r4)
/* 8133E6E0 0000CAE0  88 A4 00 02 */	lbz r5, 0x2(r4)
/* 8133E6E4 0000CAE4  88 04 00 03 */	lbz r0, 0x3(r4)
/* 8133E6E8 0000CAE8  98 E3 00 00 */	stb r7, 0x0(r3)
/* 8133E6EC 0000CAEC  98 C3 00 01 */	stb r6, 0x1(r3)
/* 8133E6F0 0000CAF0  98 A3 00 02 */	stb r5, 0x2(r3)
/* 8133E6F4 0000CAF4  98 03 00 03 */	stb r0, 0x3(r3)
/* 8133E6F8 0000CAF8  4E 80 00 20 */	blr
.endfn __as__Q34nw4r2ut5ColorFRCQ34nw4r2ut5Color_8133E6D8

# 0x8160D600 - 0x8160D620
.rodata
.balign 8

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
