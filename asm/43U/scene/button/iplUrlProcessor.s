.include "macros.inc"
.file "iplUrlProcessor.cpp"

# 0x81396370..0x81396D28 | size: 0x9B8
.text
.balign 4

# .text:0x0 | 0x81396370 | size: 0x50
# ipl::scene::UrlProcessor::UrlProcessor()
.fn __ct__Q33ipl5scene12UrlProcessorFv, global
/* 81396370 00064770  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81396374 00064774  7C 08 02 A6 */	mflr r0
/* 81396378 00064778  90 01 00 14 */	stw r0, 0x14(r1)
/* 8139637C 0006477C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81396380 00064780  7C 7F 1B 78 */	mr r31, r3
/* 81396384 00064784  48 17 C6 B1 */	bl fn_81512A34
/* 81396388 00064788  3C A0 81 65 */	lis r5, lbl_8164B6B8@ha
/* 8139638C 0006478C  38 7F 00 34 */	addi r3, r31, 0x34
/* 81396390 00064790  38 A5 B6 B8 */	addi r5, r5, lbl_8164B6B8@l
/* 81396394 00064794  38 80 00 0C */	li r4, 0xc
/* 81396398 00064798  90 BF 00 00 */	stw r5, 0x0(r31)
/* 8139639C 0006479C  48 17 BC C1 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813963A0 000647A0  7F E3 FB 78 */	mr r3, r31
/* 813963A4 000647A4  48 00 00 1D */	bl init__Q33ipl5scene12UrlProcessorFv
/* 813963A8 000647A8  7F E3 FB 78 */	mr r3, r31
/* 813963AC 000647AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813963B0 000647B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 813963B4 000647B4  7C 08 03 A6 */	mtlr r0
/* 813963B8 000647B8  38 21 00 10 */	addi r1, r1, 0x10
/* 813963BC 000647BC  4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene12UrlProcessorFv

# .text:0x50 | 0x813963C0 | size: 0x58
# ipl::scene::UrlProcessor::init()
.fn init__Q33ipl5scene12UrlProcessorFv, global
/* 813963C0 000647C0  C0 02 84 50 */	lfs f0, lbl_81694850@sda21(r0)
/* 813963C4 000647C4  38 E0 00 00 */	li r7, 0x0
/* 813963C8 000647C8  38 C0 00 01 */	li r6, 0x1
/* 813963CC 000647CC  38 A0 FF FF */	li r5, -0x1
/* 813963D0 000647D0  38 00 00 04 */	li r0, 0x4
/* 813963D4 000647D4  7C E4 3B 78 */	mr r4, r7
/* 813963D8 000647D8  98 E3 00 52 */	stb r7, 0x52(r3)
/* 813963DC 000647DC  98 E3 00 51 */	stb r7, 0x51(r3)
/* 813963E0 000647E0  98 E3 00 50 */	stb r7, 0x50(r3)
/* 813963E4 000647E4  98 C3 00 53 */	stb r6, 0x53(r3)
/* 813963E8 000647E8  D0 03 00 40 */	stfs f0, 0x40(r3)
/* 813963EC 000647EC  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 813963F0 000647F0  90 E3 00 48 */	stw r7, 0x48(r3)
/* 813963F4 000647F4  90 A3 00 4C */	stw r5, 0x4c(r3)
/* 813963F8 000647F8  7C 09 03 A6 */	mtctr r0
.L_813963FC:
/* 813963FC 000647FC  7C A3 22 14 */	add r5, r3, r4
/* 81396400 00064800  38 84 00 0C */	addi r4, r4, 0xc
/* 81396404 00064804  98 E5 00 0C */	stb r7, 0xc(r5)
/* 81396408 00064808  D0 05 00 04 */	stfs f0, 0x4(r5)
/* 8139640C 0006480C  D0 05 00 08 */	stfs f0, 0x8(r5)
/* 81396410 00064810  42 00 FF EC */	bdnz .L_813963FC
/* 81396414 00064814  48 00 00 DC */	b destroy__Q33ipl5scene12UrlProcessorFv
.endfn init__Q33ipl5scene12UrlProcessorFv

# .text:0xA8 | 0x81396418 | size: 0xD8
# ipl::scene::UrlProcessor::update()
.fn update__Q33ipl5scene12UrlProcessorFv, global
/* 81396418 00064818  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8139641C 0006481C  7C 08 02 A6 */	mflr r0
/* 81396420 00064820  90 01 00 44 */	stw r0, 0x44(r1)
/* 81396424 00064824  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 81396428 00064828  F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 8139642C 0006482C  39 61 00 30 */	addi r11, r1, 0x30
/* 81396430 00064830  48 26 30 8D */	bl _savegpr_26
/* 81396434 00064834  C3 E2 84 50 */	lfs f31, lbl_81694850@sda21(r0)
/* 81396438 00064838  7C 7A 1B 78 */	mr r26, r3
/* 8139643C 0006483C  3B 80 00 00 */	li r28, 0x0
/* 81396440 00064840  3B E0 00 00 */	li r31, 0x0
.L_81396444:
/* 81396444 00064844  7F 83 E3 78 */	mr r3, r28
/* 81396448 00064848  4B F9 F5 81 */	bl getController__Q23ipl6SystemFi
/* 8139644C 0006484C  2C 03 00 00 */	cmpwi r3, 0x0
/* 81396450 00064850  7C 7B 1B 78 */	mr r27, r3
/* 81396454 00064854  3B C0 00 00 */	li r30, 0x0
/* 81396458 00064858  41 82 00 20 */	beq .L_81396478
/* 8139645C 0006485C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 81396460 00064860  81 8C 00 70 */	lwz r12, 0x70(r12)
/* 81396464 00064864  7D 89 03 A6 */	mtctr r12
/* 81396468 00064868  4E 80 04 21 */	bctrl
/* 8139646C 0006486C  2C 03 00 00 */	cmpwi r3, 0x0
/* 81396470 00064870  41 82 00 08 */	beq .L_81396478
/* 81396474 00064874  3B C0 00 01 */	li r30, 0x1
.L_81396478:
/* 81396478 00064878  7F BA FA 14 */	add r29, r26, r31
/* 8139647C 0006487C  2C 1E 00 00 */	cmpwi r30, 0x0
/* 81396480 00064880  9B DD 00 0C */	stb r30, 0xc(r29)
/* 81396484 00064884  41 82 00 34 */	beq .L_813964B8
/* 81396488 00064888  81 9B 00 00 */	lwz r12, 0x0(r27)
/* 8139648C 0006488C  7F 63 DB 78 */	mr r3, r27
/* 81396490 00064890  81 8C 00 58 */	lwz r12, 0x58(r12)
/* 81396494 00064894  7D 89 03 A6 */	mtctr r12
/* 81396498 00064898  4E 80 04 21 */	bctrl
/* 8139649C 0006489C  90 61 00 08 */	stw r3, 0x8(r1)
/* 813964A0 000648A0  90 81 00 0C */	stw r4, 0xc(r1)
/* 813964A4 000648A4  C0 21 00 08 */	lfs f1, 0x8(r1)
/* 813964A8 000648A8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 813964AC 000648AC  D0 3D 00 04 */	stfs f1, 0x4(r29)
/* 813964B0 000648B0  D0 1D 00 08 */	stfs f0, 0x8(r29)
/* 813964B4 000648B4  48 00 00 0C */	b .L_813964C0
.L_813964B8:
/* 813964B8 000648B8  D3 FD 00 04 */	stfs f31, 0x4(r29)
/* 813964BC 000648BC  D3 FD 00 08 */	stfs f31, 0x8(r29)
.L_813964C0:
/* 813964C0 000648C0  3B 9C 00 01 */	addi r28, r28, 0x1
/* 813964C4 000648C4  3B FF 00 0C */	addi r31, r31, 0xc
/* 813964C8 000648C8  2C 1C 00 04 */	cmpwi r28, 0x4
/* 813964CC 000648CC  41 80 FF 78 */	blt .L_81396444
/* 813964D0 000648D0  E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 813964D4 000648D4  39 61 00 30 */	addi r11, r1, 0x30
/* 813964D8 000648D8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 813964DC 000648DC  48 26 30 2D */	bl _restgpr_26
/* 813964E0 000648E0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 813964E4 000648E4  7C 08 03 A6 */	mtlr r0
/* 813964E8 000648E8  38 21 00 40 */	addi r1, r1, 0x40
/* 813964EC 000648EC  4E 80 00 20 */	blr
.endfn update__Q33ipl5scene12UrlProcessorFv

# .text:0x180 | 0x813964F0 | size: 0x64
# ipl::scene::UrlProcessor::destroy()
.fn destroy__Q33ipl5scene12UrlProcessorFv, global
/* 813964F0 000648F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813964F4 000648F4  7C 08 02 A6 */	mflr r0
/* 813964F8 000648F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 813964FC 000648FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81396500 00064900  93 C1 00 08 */	stw r30, 0x8(r1)
/* 81396504 00064904  7C 7E 1B 78 */	mr r30, r3
/* 81396508 00064908  48 00 00 1C */	b .L_81396524
.L_8139650C:
/* 8139650C 0006490C  7F E4 FB 78 */	mr r4, r31
/* 81396510 00064910  38 7E 00 34 */	addi r3, r30, 0x34
/* 81396514 00064914  48 17 BD 5D */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 81396518 00064918  7F E3 FB 78 */	mr r3, r31
/* 8139651C 0006491C  38 80 00 01 */	li r4, 0x1
/* 81396520 00064920  48 00 07 31 */	bl __dt__Q43ipl5scene12UrlProcessor13url_collisionFv
.L_81396524:
/* 81396524 00064924  38 7E 00 34 */	addi r3, r30, 0x34
/* 81396528 00064928  38 80 00 00 */	li r4, 0x0
/* 8139652C 0006492C  48 17 BD B1 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81396530 00064930  2C 03 00 00 */	cmpwi r3, 0x0
/* 81396534 00064934  7C 7F 1B 78 */	mr r31, r3
/* 81396538 00064938  40 82 FF D4 */	bne .L_8139650C
/* 8139653C 0006493C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81396540 00064940  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81396544 00064944  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81396548 00064948  7C 08 03 A6 */	mtlr r0
/* 8139654C 0006494C  38 21 00 10 */	addi r1, r1, 0x10
/* 81396550 00064950  4E 80 00 20 */	blr
.endfn destroy__Q33ipl5scene12UrlProcessorFv

# .text:0x1E4 | 0x81396554 | size: 0x14
# ipl::scene::UrlProcessor::clear_prev_drawing()
.fn clear_prev_drawing__Q33ipl5scene12UrlProcessorFv, global
/* 81396554 00064954  38 00 00 00 */	li r0, 0x0
/* 81396558 00064958  90 03 00 48 */	stw r0, 0x48(r3)
/* 8139655C 0006495C  98 03 00 52 */	stb r0, 0x52(r3)
/* 81396560 00064960  98 03 00 51 */	stb r0, 0x51(r3)
/* 81396564 00064964  4E 80 00 20 */	blr
.endfn clear_prev_drawing__Q33ipl5scene12UrlProcessorFv

# .text:0x1F8 | 0x81396568 | size: 0x8C
# ipl::scene::UrlProcessor::Process(unsigned short, nw4r::ut::PrintContext<wchar_t>*)
.fn "Process__Q33ipl5scene12UrlProcessorFUsPQ34nw4r2ut15PrintContext<w>", global
/* 81396568 00064968  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8139656C 0006496C  7C 08 02 A6 */	mflr r0
/* 81396570 00064970  90 01 00 24 */	stw r0, 0x24(r1)
/* 81396574 00064974  39 61 00 20 */	addi r11, r1, 0x20
/* 81396578 00064978  48 26 2F 51 */	bl _savegpr_29
/* 8139657C 0006497C  28 04 00 1A */	cmplwi r4, 0x1a
/* 81396580 00064980  7C 7D 1B 78 */	mr r29, r3
/* 81396584 00064984  7C 9E 23 78 */	mr r30, r4
/* 81396588 00064988  7C BF 2B 78 */	mr r31, r5
/* 8139658C 0006498C  41 82 00 0C */	beq .L_81396598
/* 81396590 00064990  28 04 00 0A */	cmplwi r4, 0xa
/* 81396594 00064994  40 82 00 38 */	bne .L_813965CC
.L_81396598:
/* 81396598 00064998  88 03 00 50 */	lbz r0, 0x50(r3)
/* 8139659C 0006499C  2C 00 00 00 */	cmpwi r0, 0x0
/* 813965A0 000649A0  40 82 00 18 */	bne .L_813965B8
/* 813965A4 000649A4  7F A3 EB 78 */	mr r3, r29
/* 813965A8 000649A8  7F E4 FB 78 */	mr r4, r31
/* 813965AC 000649AC  7F C5 F3 78 */	mr r5, r30
/* 813965B0 000649B0  48 00 00 45 */	bl "make_collision__Q33ipl5scene12UrlProcessorFPQ34nw4r2ut15PrintContext<w>Us"
/* 813965B4 000649B4  48 00 00 18 */	b .L_813965CC
.L_813965B8:
/* 813965B8 000649B8  28 04 00 1A */	cmplwi r4, 0x1a
/* 813965BC 000649BC  40 82 00 10 */	bne .L_813965CC
/* 813965C0 000649C0  7F A3 EB 78 */	mr r3, r29
/* 813965C4 000649C4  7F E4 FB 78 */	mr r4, r31
/* 813965C8 000649C8  48 00 01 F9 */	bl "parse__Q33ipl5scene12UrlProcessorFPQ34nw4r2ut15PrintContext<w>"
.L_813965CC:
/* 813965CC 000649CC  7F A3 EB 78 */	mr r3, r29
/* 813965D0 000649D0  7F C4 F3 78 */	mr r4, r30
/* 813965D4 000649D4  7F E5 FB 78 */	mr r5, r31
/* 813965D8 000649D8  48 17 C4 AD */	bl fn_81512A84
/* 813965DC 000649DC  39 61 00 20 */	addi r11, r1, 0x20
/* 813965E0 000649E0  48 26 2F 35 */	bl _restgpr_29
/* 813965E4 000649E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 813965E8 000649E8  7C 08 03 A6 */	mtlr r0
/* 813965EC 000649EC  38 21 00 20 */	addi r1, r1, 0x20
/* 813965F0 000649F0  4E 80 00 20 */	blr
.endfn "Process__Q33ipl5scene12UrlProcessorFUsPQ34nw4r2ut15PrintContext<w>"

# .text:0x284 | 0x813965F4 | size: 0x1B8
# ipl::scene::UrlProcessor::make_collision(nw4r::ut::PrintContext<wchar_t>*, unsigned short)
.fn "make_collision__Q33ipl5scene12UrlProcessorFPQ34nw4r2ut15PrintContext<w>Us", global
/* 813965F4 000649F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813965F8 000649F8  7C 08 02 A6 */	mflr r0
/* 813965FC 000649FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 81396600 00064A00  39 61 00 20 */	addi r11, r1, 0x20
/* 81396604 00064A04  48 26 2E C1 */	bl _savegpr_28
/* 81396608 00064A08  28 05 00 1A */	cmplwi r5, 0x1a
/* 8139660C 00064A0C  7C 7C 1B 78 */	mr r28, r3
/* 81396610 00064A10  7C 9D 23 78 */	mr r29, r4
/* 81396614 00064A14  40 82 01 00 */	bne .L_81396714
/* 81396618 00064A18  88 03 00 51 */	lbz r0, 0x51(r3)
/* 8139661C 00064A1C  2C 00 00 00 */	cmpwi r0, 0x0
/* 81396620 00064A20  40 82 00 9C */	bne .L_813966BC
/* 81396624 00064A24  3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81396628 00064A28  38 60 00 20 */	li r3, 0x20
/* 8139662C 00064A2C  38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81396630 00064A30  38 A0 00 04 */	li r5, 0x4
/* 81396634 00064A34  80 84 00 28 */	lwz r4, 0x28(r4)
/* 81396638 00064A38  48 26 1A 79 */	bl __nw__FUlPQ23EGG4Heapi
/* 8139663C 00064A3C  2C 03 00 00 */	cmpwi r3, 0x0
/* 81396640 00064A40  7C 7F 1B 78 */	mr r31, r3
/* 81396644 00064A44  41 82 00 0C */	beq .L_81396650
/* 81396648 00064A48  48 00 05 C1 */	bl __ct__Q43ipl5scene12UrlProcessor13url_collisionFv
/* 8139664C 00064A4C  7C 7F 1B 78 */	mr r31, r3
.L_81396650:
/* 81396650 00064A50  3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81396654 00064A54  38 60 00 14 */	li r3, 0x14
/* 81396658 00064A58  38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8139665C 00064A5C  38 A0 00 04 */	li r5, 0x4
/* 81396660 00064A60  80 84 00 28 */	lwz r4, 0x28(r4)
/* 81396664 00064A64  48 26 1A 4D */	bl __nw__FUlPQ23EGG4Heapi
/* 81396668 00064A68  2C 03 00 00 */	cmpwi r3, 0x0
/* 8139666C 00064A6C  7C 7E 1B 78 */	mr r30, r3
/* 81396670 00064A70  41 82 00 0C */	beq .L_8139667C
/* 81396674 00064A74  48 00 01 39 */	bl __ct__Q43ipl5scene12UrlProcessor14line_collisionFv
/* 81396678 00064A78  7C 7E 1B 78 */	mr r30, r3
.L_8139667C:
/* 8139667C 00064A7C  80 1C 00 48 */	lwz r0, 0x48(r28)
/* 81396680 00064A80  90 1F 00 00 */	stw r0, 0x0(r31)
/* 81396684 00064A84  80 1D 00 04 */	lwz r0, 0x4(r29)
/* 81396688 00064A88  90 1F 00 04 */	stw r0, 0x4(r31)
/* 8139668C 00064A8C  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 81396690 00064A90  48 18 1A A5 */	bl fn_81518134
/* 81396694 00064A94  D0 3E 00 00 */	stfs f1, 0x0(r30)
/* 81396698 00064A98  7F C4 F3 78 */	mr r4, r30
/* 8139669C 00064A9C  38 7F 00 14 */	addi r3, r31, 0x14
/* 813966A0 00064AA0  48 17 B9 D5 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813966A4 00064AA4  7F E4 FB 78 */	mr r4, r31
/* 813966A8 00064AA8  38 7C 00 34 */	addi r3, r28, 0x34
/* 813966AC 00064AAC  48 17 B9 C9 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813966B0 00064AB0  38 00 00 01 */	li r0, 0x1
/* 813966B4 00064AB4  98 1C 00 51 */	stb r0, 0x51(r28)
/* 813966B8 00064AB8  48 00 00 DC */	b .L_81396794
.L_813966BC:
/* 813966BC 00064ABC  38 80 00 00 */	li r4, 0x0
/* 813966C0 00064AC0  38 63 00 34 */	addi r3, r3, 0x34
/* 813966C4 00064AC4  48 17 BC 39 */	bl fn_815122FC
/* 813966C8 00064AC8  7C 7E 1B 78 */	mr r30, r3
/* 813966CC 00064ACC  38 80 00 00 */	li r4, 0x0
/* 813966D0 00064AD0  38 63 00 14 */	addi r3, r3, 0x14
/* 813966D4 00064AD4  48 17 BC 29 */	bl fn_815122FC
/* 813966D8 00064AD8  7C 7F 1B 78 */	mr r31, r3
/* 813966DC 00064ADC  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 813966E0 00064AE0  48 18 1A 55 */	bl fn_81518134
/* 813966E4 00064AE4  D0 3F 00 04 */	stfs f1, 0x4(r31)
/* 813966E8 00064AE8  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 813966EC 00064AEC  48 18 1A 51 */	bl fn_8151813C
/* 813966F0 00064AF0  D0 3F 00 08 */	stfs f1, 0x8(r31)
/* 813966F4 00064AF4  38 00 00 00 */	li r0, 0x0
/* 813966F8 00064AF8  80 7D 00 04 */	lwz r3, 0x4(r29)
/* 813966FC 00064AFC  90 7E 00 08 */	stw r3, 0x8(r30)
/* 81396700 00064B00  80 7C 00 48 */	lwz r3, 0x48(r28)
/* 81396704 00064B04  98 1C 00 51 */	stb r0, 0x51(r28)
/* 81396708 00064B08  38 03 00 01 */	addi r0, r3, 0x1
/* 8139670C 00064B0C  90 1C 00 48 */	stw r0, 0x48(r28)
/* 81396710 00064B10  48 00 00 84 */	b .L_81396794
.L_81396714:
/* 81396714 00064B14  88 03 00 51 */	lbz r0, 0x51(r3)
/* 81396718 00064B18  2C 00 00 00 */	cmpwi r0, 0x0
/* 8139671C 00064B1C  41 82 00 78 */	beq .L_81396794
/* 81396720 00064B20  38 80 00 00 */	li r4, 0x0
/* 81396724 00064B24  38 63 00 34 */	addi r3, r3, 0x34
/* 81396728 00064B28  48 17 BB D5 */	bl fn_815122FC
/* 8139672C 00064B2C  7C 7E 1B 78 */	mr r30, r3
/* 81396730 00064B30  38 80 00 00 */	li r4, 0x0
/* 81396734 00064B34  38 63 00 14 */	addi r3, r3, 0x14
/* 81396738 00064B38  48 17 BB C5 */	bl fn_815122FC
/* 8139673C 00064B3C  7C 7F 1B 78 */	mr r31, r3
/* 81396740 00064B40  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 81396744 00064B44  48 18 19 F1 */	bl fn_81518134
/* 81396748 00064B48  D0 3F 00 04 */	stfs f1, 0x4(r31)
/* 8139674C 00064B4C  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 81396750 00064B50  48 18 19 ED */	bl fn_8151813C
/* 81396754 00064B54  3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81396758 00064B58  D0 3F 00 08 */	stfs f1, 0x8(r31)
/* 8139675C 00064B5C  38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81396760 00064B60  38 60 00 14 */	li r3, 0x14
/* 81396764 00064B64  80 84 00 28 */	lwz r4, 0x28(r4)
/* 81396768 00064B68  38 A0 00 04 */	li r5, 0x4
/* 8139676C 00064B6C  48 26 19 45 */	bl __nw__FUlPQ23EGG4Heapi
/* 81396770 00064B70  2C 03 00 00 */	cmpwi r3, 0x0
/* 81396774 00064B74  7C 64 1B 78 */	mr r4, r3
/* 81396778 00064B78  41 82 00 0C */	beq .L_81396784
/* 8139677C 00064B7C  48 00 00 31 */	bl __ct__Q43ipl5scene12UrlProcessor14line_collisionFv
/* 81396780 00064B80  7C 64 1B 78 */	mr r4, r3
.L_81396784:
/* 81396784 00064B84  C0 02 84 54 */	lfs f0, lbl_81694854@sda21(r0)
/* 81396788 00064B88  38 7E 00 14 */	addi r3, r30, 0x14
/* 8139678C 00064B8C  D0 04 00 00 */	stfs f0, 0x0(r4)
/* 81396790 00064B90  48 17 B8 E5 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
.L_81396794:
/* 81396794 00064B94  39 61 00 20 */	addi r11, r1, 0x20
/* 81396798 00064B98  48 26 2D 79 */	bl _restgpr_28
/* 8139679C 00064B9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 813967A0 00064BA0  7C 08 03 A6 */	mtlr r0
/* 813967A4 00064BA4  38 21 00 20 */	addi r1, r1, 0x20
/* 813967A8 00064BA8  4E 80 00 20 */	blr
.endfn "make_collision__Q33ipl5scene12UrlProcessorFPQ34nw4r2ut15PrintContext<w>Us"

# .text:0x43C | 0x813967AC | size: 0x14
# ipl::scene::UrlProcessor::line_collision::line_collision()
.fn __ct__Q43ipl5scene12UrlProcessor14line_collisionFv, global
/* 813967AC 00064BAC  C0 02 84 50 */	lfs f0, lbl_81694850@sda21(r0)
/* 813967B0 00064BB0  D0 03 00 00 */	stfs f0, 0x0(r3)
/* 813967B4 00064BB4  D0 03 00 04 */	stfs f0, 0x4(r3)
/* 813967B8 00064BB8  D0 03 00 08 */	stfs f0, 0x8(r3)
/* 813967BC 00064BBC  4E 80 00 20 */	blr
.endfn __ct__Q43ipl5scene12UrlProcessor14line_collisionFv

# .text:0x450 | 0x813967C0 | size: 0x14C
# ipl::scene::UrlProcessor::parse(nw4r::ut::PrintContext<wchar_t>*)
.fn "parse__Q33ipl5scene12UrlProcessorFPQ34nw4r2ut15PrintContext<w>", global
/* 813967C0 00064BC0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813967C4 00064BC4  7C 08 02 A6 */	mflr r0
/* 813967C8 00064BC8  90 01 00 34 */	stw r0, 0x34(r1)
/* 813967CC 00064BCC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 813967D0 00064BD0  F3 E1 00 28 */	psq_st f31, 0x28(r1), 0, qr0
/* 813967D4 00064BD4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813967D8 00064BD8  7C 7F 1B 78 */	mr r31, r3
/* 813967DC 00064BDC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 813967E0 00064BE0  7C 9E 23 78 */	mr r30, r4
/* 813967E4 00064BE4  80 64 00 00 */	lwz r3, 0x0(r4)
/* 813967E8 00064BE8  48 18 19 55 */	bl fn_8151813C
/* 813967EC 00064BEC  88 1F 00 51 */	lbz r0, 0x51(r31)
/* 813967F0 00064BF0  FF E0 08 90 */	fmr f31, f1
/* 813967F4 00064BF4  2C 00 00 00 */	cmpwi r0, 0x0
/* 813967F8 00064BF8  40 82 00 A4 */	bne .L_8139689C
/* 813967FC 00064BFC  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 81396800 00064C00  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 81396804 00064C04  7C 03 00 00 */	cmpw r3, r0
/* 81396808 00064C08  40 82 00 20 */	bne .L_81396828
/* 8139680C 00064C0C  3C 60 FF E6 */	lis r3, 0xffe6
/* 81396810 00064C10  38 81 00 14 */	addi r4, r1, 0x14
/* 81396814 00064C14  38 03 64 FF */	addi r0, r3, 0x64ff
/* 81396818 00064C18  90 01 00 14 */	stw r0, 0x14(r1)
/* 8139681C 00064C1C  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 81396820 00064C20  48 18 12 01 */	bl fn_81517A20
/* 81396824 00064C24  48 00 00 6C */	b .L_81396890
.L_81396828:
/* 81396828 00064C28  88 1F 00 53 */	lbz r0, 0x53(r31)
/* 8139682C 00064C2C  2C 00 00 00 */	cmpwi r0, 0x0
/* 81396830 00064C30  41 82 00 48 */	beq .L_81396878
/* 81396834 00064C34  7F E3 FB 78 */	mr r3, r31
/* 81396838 00064C38  48 00 00 D5 */	bl is_focused__Q33ipl5scene12UrlProcessorCFv
/* 8139683C 00064C3C  2C 03 00 00 */	cmpwi r3, 0x0
/* 81396840 00064C40  41 82 00 38 */	beq .L_81396878
/* 81396844 00064C44  C0 02 84 58 */	lfs f0, lbl_81694858@sda21(r0)
/* 81396848 00064C48  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8139684C 00064C4C  EC 3F 00 28 */	fsubs f1, f31, f0
/* 81396850 00064C50  48 18 18 BD */	bl fn_8151810C
/* 81396854 00064C54  3C 60 F0 6E */	lis r3, 0xf06e
/* 81396858 00064C58  38 81 00 10 */	addi r4, r1, 0x10
/* 8139685C 00064C5C  38 03 28 FF */	addi r0, r3, 0x28ff
/* 81396860 00064C60  90 01 00 10 */	stw r0, 0x10(r1)
/* 81396864 00064C64  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 81396868 00064C68  48 18 11 B9 */	bl fn_81517A20
/* 8139686C 00064C6C  38 00 00 01 */	li r0, 0x1
/* 81396870 00064C70  98 1F 00 52 */	stb r0, 0x52(r31)
/* 81396874 00064C74  48 00 00 1C */	b .L_81396890
.L_81396878:
/* 81396878 00064C78  3C 60 34 BF */	lis r3, 0x34bf
/* 8139687C 00064C7C  38 81 00 0C */	addi r4, r1, 0xc
/* 81396880 00064C80  38 03 ED FF */	subi r0, r3, 0x1201
/* 81396884 00064C84  90 01 00 0C */	stw r0, 0xc(r1)
/* 81396888 00064C88  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8139688C 00064C8C  48 18 11 95 */	bl fn_81517A20
.L_81396890:
/* 81396890 00064C90  38 00 00 01 */	li r0, 0x1
/* 81396894 00064C94  98 1F 00 51 */	stb r0, 0x51(r31)
/* 81396898 00064C98  48 00 00 54 */	b .L_813968EC
.L_8139689C:
/* 8139689C 00064C9C  88 1F 00 52 */	lbz r0, 0x52(r31)
/* 813968A0 00064CA0  2C 00 00 00 */	cmpwi r0, 0x0
/* 813968A4 00064CA4  41 82 00 1C */	beq .L_813968C0
/* 813968A8 00064CA8  C0 02 84 58 */	lfs f0, lbl_81694858@sda21(r0)
/* 813968AC 00064CAC  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 813968B0 00064CB0  EC 20 08 2A */	fadds f1, f0, f1
/* 813968B4 00064CB4  48 18 18 59 */	bl fn_8151810C
/* 813968B8 00064CB8  38 00 00 00 */	li r0, 0x0
/* 813968BC 00064CBC  98 1F 00 52 */	stb r0, 0x52(r31)
.L_813968C0:
/* 813968C0 00064CC0  3C 60 64 64 */	lis r3, 0x6464
/* 813968C4 00064CC4  38 81 00 08 */	addi r4, r1, 0x8
/* 813968C8 00064CC8  38 03 64 FF */	addi r0, r3, 0x64ff
/* 813968CC 00064CCC  90 01 00 08 */	stw r0, 0x8(r1)
/* 813968D0 00064CD0  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 813968D4 00064CD4  48 18 11 4D */	bl fn_81517A20
/* 813968D8 00064CD8  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 813968DC 00064CDC  38 00 00 00 */	li r0, 0x0
/* 813968E0 00064CE0  98 1F 00 51 */	stb r0, 0x51(r31)
/* 813968E4 00064CE4  38 03 00 01 */	addi r0, r3, 0x1
/* 813968E8 00064CE8  90 1F 00 48 */	stw r0, 0x48(r31)
.L_813968EC:
/* 813968EC 00064CEC  E3 E1 00 28 */	psq_l f31, 0x28(r1), 0, qr0
/* 813968F0 00064CF0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 813968F4 00064CF4  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 813968F8 00064CF8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813968FC 00064CFC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81396900 00064D00  7C 08 03 A6 */	mtlr r0
/* 81396904 00064D04  38 21 00 30 */	addi r1, r1, 0x30
/* 81396908 00064D08  4E 80 00 20 */	blr
.endfn "parse__Q33ipl5scene12UrlProcessorFPQ34nw4r2ut15PrintContext<w>"

# .text:0x59C | 0x8139690C | size: 0x64
# ipl::scene::UrlProcessor::is_focused() const
.fn is_focused__Q33ipl5scene12UrlProcessorCFv, global
/* 8139690C 00064D0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81396910 00064D10  7C 08 02 A6 */	mflr r0
/* 81396914 00064D14  90 01 00 14 */	stw r0, 0x14(r1)
/* 81396918 00064D18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139691C 00064D1C  3B E0 00 00 */	li r31, 0x0
/* 81396920 00064D20  93 C1 00 08 */	stw r30, 0x8(r1)
/* 81396924 00064D24  7C 7E 1B 78 */	mr r30, r3
.L_81396928:
/* 81396928 00064D28  7F C3 F3 78 */	mr r3, r30
/* 8139692C 00064D2C  7F E4 FB 78 */	mr r4, r31
/* 81396930 00064D30  48 00 00 49 */	bl get_focused_tagno__Q33ipl5scene12UrlProcessorCFi
/* 81396934 00064D34  80 1E 00 48 */	lwz r0, 0x48(r30)
/* 81396938 00064D38  7C 00 18 00 */	cmpw r0, r3
/* 8139693C 00064D3C  40 82 00 0C */	bne .L_81396948
/* 81396940 00064D40  38 60 00 01 */	li r3, 0x1
/* 81396944 00064D44  48 00 00 14 */	b .L_81396958
.L_81396948:
/* 81396948 00064D48  3B FF 00 01 */	addi r31, r31, 0x1
/* 8139694C 00064D4C  2C 1F 00 04 */	cmpwi r31, 0x4
/* 81396950 00064D50  41 80 FF D8 */	blt .L_81396928
/* 81396954 00064D54  38 60 00 00 */	li r3, 0x0
.L_81396958:
/* 81396958 00064D58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139695C 00064D5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81396960 00064D60  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81396964 00064D64  7C 08 03 A6 */	mtlr r0
/* 81396968 00064D68  38 21 00 10 */	addi r1, r1, 0x10
/* 8139696C 00064D6C  4E 80 00 20 */	blr
.endfn is_focused__Q33ipl5scene12UrlProcessorCFv

# .text:0x600 | 0x81396970 | size: 0x8
# ipl::scene::UrlProcessor::select(int)
.fn select__Q33ipl5scene12UrlProcessorFi, global
/* 81396970 00064D70  90 83 00 4C */	stw r4, 0x4c(r3)
/* 81396974 00064D74  4E 80 00 20 */	blr
.endfn select__Q33ipl5scene12UrlProcessorFi

# .text:0x608 | 0x81396978 | size: 0x15C
# ipl::scene::UrlProcessor::get_focused_tagno(int) const
.fn get_focused_tagno__Q33ipl5scene12UrlProcessorCFi, global
/* 81396978 00064D78  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8139697C 00064D7C  7C 08 02 A6 */	mflr r0
/* 81396980 00064D80  90 01 00 64 */	stw r0, 0x64(r1)
/* 81396984 00064D84  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 81396988 00064D88  F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 8139698C 00064D8C  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 81396990 00064D90  F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 81396994 00064D94  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 81396998 00064D98  F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 8139699C 00064D9C  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 813969A0 00064DA0  F3 81 00 28 */	psq_st f28, 0x28(r1), 0, qr0
/* 813969A4 00064DA4  39 61 00 20 */	addi r11, r1, 0x20
/* 813969A8 00064DA8  48 26 2B 21 */	bl _savegpr_29
/* 813969AC 00064DAC  1C 04 00 0C */	mulli r0, r4, 0xc
/* 813969B0 00064DB0  7C 7D 1B 78 */	mr r29, r3
/* 813969B4 00064DB4  7C 83 02 14 */	add r4, r3, r0
/* 813969B8 00064DB8  88 04 00 0C */	lbz r0, 0xc(r4)
/* 813969BC 00064DBC  2C 00 00 00 */	cmpwi r0, 0x0
/* 813969C0 00064DC0  41 82 00 D8 */	beq .L_81396A98
/* 813969C4 00064DC4  80 64 00 04 */	lwz r3, 0x4(r4)
/* 813969C8 00064DC8  3B E0 00 00 */	li r31, 0x0
/* 813969CC 00064DCC  80 04 00 08 */	lwz r0, 0x8(r4)
/* 813969D0 00064DD0  3B C0 00 00 */	li r30, 0x0
/* 813969D4 00064DD4  90 61 00 08 */	stw r3, 0x8(r1)
/* 813969D8 00064DD8  C3 82 84 5C */	lfs f28, lbl_8169485C@sda21(r0)
/* 813969DC 00064DDC  90 01 00 0C */	stw r0, 0xc(r1)
/* 813969E0 00064DE0  C3 A2 84 60 */	lfs f29, lbl_81694860@sda21(r0)
/* 813969E4 00064DE4  C3 C2 84 64 */	lfs f30, lbl_81694864@sda21(r0)
/* 813969E8 00064DE8  C3 E1 00 08 */	lfs f31, 0x8(r1)
/* 813969EC 00064DEC  48 00 00 94 */	b .L_81396A80
/* 813969F0 00064DF0  48 00 00 78 */	b .L_81396A68
.L_813969F4:
/* 813969F4 00064DF4  C0 3D 00 44 */	lfs f1, 0x44(r29)
/* 813969F8 00064DF8  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 813969FC 00064DFC  C0 43 00 00 */	lfs f2, 0x0(r3)
/* 81396A00 00064E00  EC 21 00 2A */	fadds f1, f1, f0
/* 81396A04 00064E04  C0 03 00 08 */	lfs f0, 0x8(r3)
/* 81396A08 00064E08  EC 62 E0 28 */	fsubs f3, f2, f28
/* 81396A0C 00064E0C  C0 43 00 04 */	lfs f2, 0x4(r3)
/* 81396A10 00064E10  EC 01 00 28 */	fsubs f0, f1, f0
/* 81396A14 00064E14  FC 03 F8 40 */	fcmpo cr0, f3, f31
/* 81396A18 00064E18  EC 5C 10 2A */	fadds f2, f28, f2
/* 81396A1C 00064E1C  EC 3D 00 2A */	fadds f1, f29, f0
/* 81396A20 00064E20  EC 1E 00 2A */	fadds f0, f30, f0
/* 81396A24 00064E24  EC 21 E0 28 */	fsubs f1, f1, f28
/* 81396A28 00064E28  EC 7C 00 2A */	fadds f3, f28, f0
/* 81396A2C 00064E2C  4C 40 13 82 */	cror eq, lt, eq
/* 81396A30 00064E30  40 82 00 38 */	bne .L_81396A68
/* 81396A34 00064E34  FC 1F 10 40 */	fcmpo cr0, f31, f2
/* 81396A38 00064E38  4C 40 13 82 */	cror eq, lt, eq
/* 81396A3C 00064E3C  40 82 00 2C */	bne .L_81396A68
/* 81396A40 00064E40  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 81396A44 00064E44  FC 00 00 50 */	fneg f0, f0
/* 81396A48 00064E48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81396A4C 00064E4C  4C 40 13 82 */	cror eq, lt, eq
/* 81396A50 00064E50  40 82 00 18 */	bne .L_81396A68
/* 81396A54 00064E54  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 81396A58 00064E58  4C 40 13 82 */	cror eq, lt, eq
/* 81396A5C 00064E5C  40 82 00 0C */	bne .L_81396A68
/* 81396A60 00064E60  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 81396A64 00064E64  48 00 00 38 */	b .L_81396A9C
.L_81396A68:
/* 81396A68 00064E68  7F C4 F3 78 */	mr r4, r30
/* 81396A6C 00064E6C  38 7F 00 14 */	addi r3, r31, 0x14
/* 81396A70 00064E70  48 17 B8 6D */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81396A74 00064E74  2C 03 00 00 */	cmpwi r3, 0x0
/* 81396A78 00064E78  7C 7E 1B 78 */	mr r30, r3
/* 81396A7C 00064E7C  40 82 FF 78 */	bne .L_813969F4
.L_81396A80:
/* 81396A80 00064E80  7F E4 FB 78 */	mr r4, r31
/* 81396A84 00064E84  38 7D 00 34 */	addi r3, r29, 0x34
/* 81396A88 00064E88  48 17 B8 55 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81396A8C 00064E8C  2C 03 00 00 */	cmpwi r3, 0x0
/* 81396A90 00064E90  7C 7F 1B 78 */	mr r31, r3
/* 81396A94 00064E94  40 82 FF D4 */	bne .L_81396A68
.L_81396A98:
/* 81396A98 00064E98  38 60 FF FF */	li r3, -0x1
.L_81396A9C:
/* 81396A9C 00064E9C  E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 81396AA0 00064EA0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 81396AA4 00064EA4  E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 81396AA8 00064EA8  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 81396AAC 00064EAC  E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 81396AB0 00064EB0  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 81396AB4 00064EB4  E3 81 00 28 */	psq_l f28, 0x28(r1), 0, qr0
/* 81396AB8 00064EB8  39 61 00 20 */	addi r11, r1, 0x20
/* 81396ABC 00064EBC  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 81396AC0 00064EC0  48 26 2A 55 */	bl _restgpr_29
/* 81396AC4 00064EC4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 81396AC8 00064EC8  7C 08 03 A6 */	mtlr r0
/* 81396ACC 00064ECC  38 21 00 60 */	addi r1, r1, 0x60
/* 81396AD0 00064ED0  4E 80 00 20 */	blr
.endfn get_focused_tagno__Q33ipl5scene12UrlProcessorCFi

# .text:0x764 | 0x81396AD4 | size: 0x6C
# ipl::scene::UrlProcessor::get_selected_col()
.fn get_selected_col__Q33ipl5scene12UrlProcessorFv, global
/* 81396AD4 00064ED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81396AD8 00064ED8  7C 08 02 A6 */	mflr r0
/* 81396ADC 00064EDC  38 80 00 00 */	li r4, 0x0
/* 81396AE0 00064EE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 81396AE4 00064EE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81396AE8 00064EE8  3B E0 00 00 */	li r31, 0x0
/* 81396AEC 00064EEC  93 C1 00 08 */	stw r30, 0x8(r1)
/* 81396AF0 00064EF0  7C 7E 1B 78 */	mr r30, r3
/* 81396AF4 00064EF4  48 00 00 1C */	b .L_81396B10
.L_81396AF8:
/* 81396AF8 00064EF8  80 63 00 00 */	lwz r3, 0x0(r3)
/* 81396AFC 00064EFC  80 1E 00 4C */	lwz r0, 0x4c(r30)
/* 81396B00 00064F00  7C 03 00 00 */	cmpw r3, r0
/* 81396B04 00064F04  40 82 00 0C */	bne .L_81396B10
/* 81396B08 00064F08  7C 9F 23 78 */	mr r31, r4
/* 81396B0C 00064F0C  48 00 00 18 */	b .L_81396B24
.L_81396B10:
/* 81396B10 00064F10  38 7E 00 34 */	addi r3, r30, 0x34
/* 81396B14 00064F14  48 17 B7 C9 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81396B18 00064F18  2C 03 00 00 */	cmpwi r3, 0x0
/* 81396B1C 00064F1C  7C 64 1B 78 */	mr r4, r3
/* 81396B20 00064F20  40 82 FF D8 */	bne .L_81396AF8
.L_81396B24:
/* 81396B24 00064F24  7F E3 FB 78 */	mr r3, r31
/* 81396B28 00064F28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81396B2C 00064F2C  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81396B30 00064F30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81396B34 00064F34  7C 08 03 A6 */	mtlr r0
/* 81396B38 00064F38  38 21 00 10 */	addi r1, r1, 0x10
/* 81396B3C 00064F3C  4E 80 00 20 */	blr
.endfn get_selected_col__Q33ipl5scene12UrlProcessorFv

# .text:0x7D0 | 0x81396B40 | size: 0xC8
# ipl::scene::UrlProcessor::get_url(char*, unsigned long)
.fn get_url__Q33ipl5scene12UrlProcessorFPcUl, global
/* 81396B40 00064F40  94 21 FB E0 */	stwu r1, -0x420(r1)
/* 81396B44 00064F44  7C 08 02 A6 */	mflr r0
/* 81396B48 00064F48  90 01 04 24 */	stw r0, 0x424(r1)
/* 81396B4C 00064F4C  39 61 04 20 */	addi r11, r1, 0x420
/* 81396B50 00064F50  48 26 29 79 */	bl _savegpr_29
/* 81396B54 00064F54  7C 9D 23 78 */	mr r29, r4
/* 81396B58 00064F58  7C BE 2B 78 */	mr r30, r5
/* 81396B5C 00064F5C  4B FF FF 79 */	bl get_selected_col__Q33ipl5scene12UrlProcessorFv
/* 81396B60 00064F60  2C 03 00 00 */	cmpwi r3, 0x0
/* 81396B64 00064F64  7C 7F 1B 78 */	mr r31, r3
/* 81396B68 00064F68  41 82 00 88 */	beq .L_81396BF0
/* 81396B6C 00064F6C  38 61 00 08 */	addi r3, r1, 0x8
/* 81396B70 00064F70  38 80 00 00 */	li r4, 0x0
/* 81396B74 00064F74  38 A0 04 04 */	li r5, 0x404
/* 81396B78 00064F78  4B F9 97 BD */	bl memset
/* 81396B7C 00064F7C  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 81396B80 00064F80  38 A1 00 08 */	addi r5, r1, 0x8
/* 81396B84 00064F84  80 1F 00 08 */	lwz r0, 0x8(r31)
/* 81396B88 00064F88  38 E0 00 00 */	li r7, 0x0
/* 81396B8C 00064F8C  38 60 00 00 */	li r3, 0x0
/* 81396B90 00064F90  7C 04 00 50 */	subf r0, r4, r0
/* 81396B94 00064F94  38 80 00 00 */	li r4, 0x0
/* 81396B98 00064F98  54 00 F8 7E */	srwi r0, r0, 1
/* 81396B9C 00064F9C  7C 09 03 A6 */	mtctr r0
/* 81396BA0 00064FA0  28 00 00 00 */	cmplwi r0, 0x0
/* 81396BA4 00064FA4  40 81 00 30 */	ble .L_81396BD4
.L_81396BA8:
/* 81396BA8 00064FA8  80 DF 00 04 */	lwz r6, 0x4(r31)
/* 81396BAC 00064FAC  7C 06 22 2E */	lhzx r0, r6, r4
/* 81396BB0 00064FB0  28 00 00 1A */	cmplwi r0, 0x1a
/* 81396BB4 00064FB4  41 82 00 18 */	beq .L_81396BCC
/* 81396BB8 00064FB8  2C 07 02 00 */	cmpwi r7, 0x200
/* 81396BBC 00064FBC  40 80 00 10 */	bge .L_81396BCC
/* 81396BC0 00064FC0  7C 05 1B 2E */	sthx r0, r5, r3
/* 81396BC4 00064FC4  38 E7 00 01 */	addi r7, r7, 0x1
/* 81396BC8 00064FC8  38 63 00 02 */	addi r3, r3, 0x2
.L_81396BCC:
/* 81396BCC 00064FCC  38 84 00 02 */	addi r4, r4, 0x2
/* 81396BD0 00064FD0  42 00 FF D8 */	bdnz .L_81396BA8
.L_81396BD4:
/* 81396BD4 00064FD4  7F A3 EB 78 */	mr r3, r29
/* 81396BD8 00064FD8  7F C5 F3 78 */	mr r5, r30
/* 81396BDC 00064FDC  38 81 00 08 */	addi r4, r1, 0x8
/* 81396BE0 00064FE0  4B FC D5 21 */	bl UTF16ToUTF8__Q33ipl7utility13CharacterCodeFPcPCwl
/* 81396BE4 00064FE4  7C 7D F2 14 */	add r3, r29, r30
/* 81396BE8 00064FE8  38 00 00 00 */	li r0, 0x0
/* 81396BEC 00064FEC  98 03 FF FF */	stb r0, -0x1(r3)
.L_81396BF0:
/* 81396BF0 00064FF0  39 61 04 20 */	addi r11, r1, 0x420
/* 81396BF4 00064FF4  48 26 29 21 */	bl _restgpr_29
/* 81396BF8 00064FF8  80 01 04 24 */	lwz r0, 0x424(r1)
/* 81396BFC 00064FFC  7C 08 03 A6 */	mtlr r0
/* 81396C00 00065000  38 21 04 20 */	addi r1, r1, 0x420
/* 81396C04 00065004  4E 80 00 20 */	blr
.endfn get_url__Q33ipl5scene12UrlProcessorFPcUl

# .text:0x898 | 0x81396C08 | size: 0x48
# ipl::scene::UrlProcessor::url_collision::url_collision()
.fn __ct__Q43ipl5scene12UrlProcessor13url_collisionFv, global
/* 81396C08 00065008  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81396C0C 0006500C  7C 08 02 A6 */	mflr r0
/* 81396C10 00065010  38 80 00 0C */	li r4, 0xc
/* 81396C14 00065014  90 01 00 14 */	stw r0, 0x14(r1)
/* 81396C18 00065018  38 00 00 00 */	li r0, 0x0
/* 81396C1C 0006501C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81396C20 00065020  7C 7F 1B 78 */	mr r31, r3
/* 81396C24 00065024  90 03 00 00 */	stw r0, 0x0(r3)
/* 81396C28 00065028  90 03 00 04 */	stw r0, 0x4(r3)
/* 81396C2C 0006502C  90 03 00 08 */	stw r0, 0x8(r3)
/* 81396C30 00065030  38 63 00 14 */	addi r3, r3, 0x14
/* 81396C34 00065034  48 17 B4 29 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 81396C38 00065038  7F E3 FB 78 */	mr r3, r31
/* 81396C3C 0006503C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81396C40 00065040  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81396C44 00065044  7C 08 03 A6 */	mtlr r0
/* 81396C48 00065048  38 21 00 10 */	addi r1, r1, 0x10
/* 81396C4C 0006504C  4E 80 00 20 */	blr
.endfn __ct__Q43ipl5scene12UrlProcessor13url_collisionFv

# .text:0x8E0 | 0x81396C50 | size: 0x80
# ipl::scene::UrlProcessor::url_collision::~url_collision()
.fn __dt__Q43ipl5scene12UrlProcessor13url_collisionFv, global
/* 81396C50 00065050  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81396C54 00065054  7C 08 02 A6 */	mflr r0
/* 81396C58 00065058  90 01 00 24 */	stw r0, 0x24(r1)
/* 81396C5C 0006505C  39 61 00 20 */	addi r11, r1, 0x20
/* 81396C60 00065060  48 26 28 69 */	bl _savegpr_29
/* 81396C64 00065064  2C 03 00 00 */	cmpwi r3, 0x0
/* 81396C68 00065068  7C 7D 1B 78 */	mr r29, r3
/* 81396C6C 0006506C  7C 9E 23 78 */	mr r30, r4
/* 81396C70 00065070  41 82 00 44 */	beq .L_81396CB4
/* 81396C74 00065074  48 00 00 18 */	b .L_81396C8C
.L_81396C78:
/* 81396C78 00065078  7F E4 FB 78 */	mr r4, r31
/* 81396C7C 0006507C  38 7D 00 14 */	addi r3, r29, 0x14
/* 81396C80 00065080  48 17 B5 F1 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 81396C84 00065084  7F E3 FB 78 */	mr r3, r31
/* 81396C88 00065088  48 26 14 5D */	bl __dl__FPv
.L_81396C8C:
/* 81396C8C 0006508C  38 7D 00 14 */	addi r3, r29, 0x14
/* 81396C90 00065090  38 80 00 00 */	li r4, 0x0
/* 81396C94 00065094  48 17 B6 49 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 81396C98 00065098  2C 03 00 00 */	cmpwi r3, 0x0
/* 81396C9C 0006509C  7C 7F 1B 78 */	mr r31, r3
/* 81396CA0 000650A0  40 82 FF D8 */	bne .L_81396C78
/* 81396CA4 000650A4  2C 1E 00 00 */	cmpwi r30, 0x0
/* 81396CA8 000650A8  40 81 00 0C */	ble .L_81396CB4
/* 81396CAC 000650AC  7F A3 EB 78 */	mr r3, r29
/* 81396CB0 000650B0  48 26 14 35 */	bl __dl__FPv
.L_81396CB4:
/* 81396CB4 000650B4  39 61 00 20 */	addi r11, r1, 0x20
/* 81396CB8 000650B8  7F A3 EB 78 */	mr r3, r29
/* 81396CBC 000650BC  48 26 28 59 */	bl _restgpr_29
/* 81396CC0 000650C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 81396CC4 000650C4  7C 08 03 A6 */	mtlr r0
/* 81396CC8 000650C8  38 21 00 20 */	addi r1, r1, 0x20
/* 81396CCC 000650CC  4E 80 00 20 */	blr
.endfn __dt__Q43ipl5scene12UrlProcessor13url_collisionFv

# .text:0x960 | 0x81396CD0 | size: 0x58
# ipl::scene::UrlProcessor::~UrlProcessor()
.fn __dt__Q33ipl5scene12UrlProcessorFv, global
/* 81396CD0 000650D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81396CD4 000650D4  7C 08 02 A6 */	mflr r0
/* 81396CD8 000650D8  2C 03 00 00 */	cmpwi r3, 0x0
/* 81396CDC 000650DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 81396CE0 000650E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81396CE4 000650E4  7C 9F 23 78 */	mr r31, r4
/* 81396CE8 000650E8  93 C1 00 08 */	stw r30, 0x8(r1)
/* 81396CEC 000650EC  7C 7E 1B 78 */	mr r30, r3
/* 81396CF0 000650F0  41 82 00 1C */	beq .L_81396D0C
/* 81396CF4 000650F4  38 80 00 00 */	li r4, 0x0
/* 81396CF8 000650F8  48 17 BD 4D */	bl fn_81512A44
/* 81396CFC 000650FC  2C 1F 00 00 */	cmpwi r31, 0x0
/* 81396D00 00065100  40 81 00 0C */	ble .L_81396D0C
/* 81396D04 00065104  7F C3 F3 78 */	mr r3, r30
/* 81396D08 00065108  48 26 13 DD */	bl __dl__FPv
.L_81396D0C:
/* 81396D0C 0006510C  7F C3 F3 78 */	mr r3, r30
/* 81396D10 00065110  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81396D14 00065114  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81396D18 00065118  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81396D1C 0006511C  7C 08 03 A6 */	mtlr r0
/* 81396D20 00065120  38 21 00 10 */	addi r1, r1, 0x10
/* 81396D24 00065124  4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene12UrlProcessorFv

# 0x8164B6B8..0x8164B6D0 | size: 0x18
.data
.balign 8

# .data:0x0 | 0x8164B6B8 | size: 0x18
.obj lbl_8164B6B8, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene12UrlProcessorFv
	.4byte "Process__Q33ipl5scene12UrlProcessorFUsPQ34nw4r2ut15PrintContext<w>"
	.4byte fn_81512BE0
	.4byte 0x00000000
.endobj lbl_8164B6B8

# 0x81694850..0x81694868 | size: 0x18
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694850 | size: 0x4
.obj lbl_81694850, global
	.float 0
.endobj lbl_81694850

# .sdata2:0x4 | 0x81694854 | size: 0x4
.obj lbl_81694854, global
	.float -208
.endobj lbl_81694854

# .sdata2:0x8 | 0x81694858 | size: 0x4
.obj lbl_81694858, global
	.float 2
.endobj lbl_81694858

# .sdata2:0xC | 0x8169485C | size: 0x4
.obj lbl_8169485C, global
	.float 6
.endobj lbl_8169485C

# .sdata2:0x10 | 0x81694860 | size: 0x4
.obj lbl_81694860, global
	.float 25
.endobj lbl_81694860

# .sdata2:0x14 | 0x81694864 | size: 0x4
.obj lbl_81694864, global
	.float 50
.endobj lbl_81694864