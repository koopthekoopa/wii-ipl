.include "macros.inc"
.file "iplUtility.cpp"

# 0x8136345C..0x81364B88 | size: 0x172C
.text
.balign 4

# .text:0x0 | 0x8136345C | size: 0x104
# ipl::utility::Calendar::setCalendarTime(OSCalendarTime*)
.fn setCalendarTime__Q33ipl7utility8CalendarFP14OSCalendarTime, global
/* 8136345C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81363460 | 7C 08 02 A6 */	mflr r0
/* 81363464 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81363468 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8136346C | 7C 7F 1B 78 */	mr r31, r3
/* 81363470 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81363474 | 48 20 6E 41 */	bl SCGetCounterBias
/* 81363478 | 7C 7E 1B 78 */	mr r30, r3
/* 8136347C | 38 61 00 08 */	addi r3, r1, 0x8
/* 81363480 | 48 1C F1 FD */	bl __OSGetRTC
/* 81363484 | 3C 60 80 00 */	lis r3, 0x8000
/* 81363488 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8136348C | 80 63 00 F8 */	lwz r3, 0xf8(r3)
/* 81363490 | 38 C0 00 00 */	li r6, 0x0
/* 81363494 | 7C A0 F2 14 */	add r5, r0, r30
/* 81363498 | 54 67 F0 BE */	srwi r7, r3, 2
/* 8136349C | 7C 67 28 16 */	mulhwu r3, r7, r5
/* 813634A0 | 7C 86 29 D6 */	mullw r4, r6, r5
/* 813634A4 | 7C 63 22 14 */	add r3, r3, r4
/* 813634A8 | 7C 07 31 D6 */	mullw r0, r7, r6
/* 813634AC | 7C 87 29 D6 */	mullw r4, r7, r5
/* 813634B0 | 7C 63 02 14 */	add r3, r3, r0
/* 813634B4 | 48 1D 28 01 */	bl fn_81535CB4
/* 813634B8 | 48 1C F8 39 */	bl fn_81532CF0
/* 813634BC | 93 C3 00 0C */	stw r30, 0xc(r3)
/* 813634C0 | 88 03 00 13 */	lbz r0, 0x13(r3)
/* 813634C4 | 60 00 00 20 */	ori r0, r0, 0x20
/* 813634C8 | 98 03 00 13 */	stb r0, 0x13(r3)
/* 813634CC | 38 60 00 01 */	li r3, 0x1
/* 813634D0 | 48 1C FB A1 */	bl fn_81533070
.L_813634D4:
/* 813634D4 | 48 1C FB AD */	bl __OSSyncSram
/* 813634D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813634DC | 41 82 FF F8 */	beq .L_813634D4
/* 813634E0 | 38 00 00 00 */	li r0, 0x0
/* 813634E4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813634E8 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 813634EC | 48 1C F1 91 */	bl __OSGetRTC
/* 813634F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813634F4 | 41 82 00 10 */	beq .L_81363504
/* 813634F8 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 813634FC | 54 00 00 01 */	clrrwi. r0, r0, 31
/* 81363500 | 41 82 00 0C */	beq .L_8136350C
.L_81363504:
/* 81363504 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 81363508 | 48 1C F3 A9 */	bl fn_815328B0
.L_8136350C:
/* 8136350C | 7F E3 FB 78 */	mr r3, r31
/* 81363510 | 48 1D 2C 1D */	bl OSCalendarTimeToTicks
/* 81363514 | 3C C0 80 00 */	lis r6, 0x8000
/* 81363518 | 38 A0 00 00 */	li r5, 0x0
/* 8136351C | 80 06 00 F8 */	lwz r0, 0xf8(r6)
/* 81363520 | 54 06 F0 BE */	srwi r6, r0, 2
/* 81363524 | 48 29 60 ED */	bl __div2i
/* 81363528 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8136352C | 7C 60 20 50 */	subf r3, r0, r4
/* 81363530 | 48 20 6D C5 */	bl fn_8156A2F4
/* 81363534 | 7F E3 FB 78 */	mr r3, r31
/* 81363538 | 48 1D 2B F5 */	bl OSCalendarTimeToTicks
/* 8136353C | 48 1D 27 79 */	bl fn_81535CB4
/* 81363540 | 38 60 00 00 */	li r3, 0x0
/* 81363544 | 48 14 B2 6D */	bl NWC24iSynchronizeRtcCounter
/* 81363548 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136354C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81363550 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81363554 | 7C 08 03 A6 */	mtlr r0
/* 81363558 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8136355C | 4E 80 00 20 */	blr
.endfn setCalendarTime__Q33ipl7utility8CalendarFP14OSCalendarTime

# .text:0x104 | 0x81363560 | size: 0x30
# ipl::utility::Language::getPath()
.fn getPath__Q33ipl7utility8LanguageFv, global
/* 81363560 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81363564 | 7C 08 02 A6 */	mflr r0
/* 81363568 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136356C | 4B FD 24 81 */	bl getLanguage__Q23ipl6SystemFv
/* 81363570 | 3C 80 81 64 */	lis r4, mLangPath__Q33ipl7utility8Language@ha
/* 81363574 | 54 60 10 3A */	slwi r0, r3, 2
/* 81363578 | 38 84 12 08 */	addi r4, r4, mLangPath__Q33ipl7utility8Language@l
/* 8136357C | 7C 64 00 2E */	lwzx r3, r4, r0
/* 81363580 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81363584 | 7C 08 03 A6 */	mtlr r0
/* 81363588 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136358C | 4E 80 00 20 */	blr
.endfn getPath__Q33ipl7utility8LanguageFv

# .text:0x134 | 0x81363590 | size: 0x3C
# ipl::utility::BScroller::BScroller()
.fn __ct__Q33ipl7utility9BScrollerFv, global
/* 81363590 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81363594 | 7C 08 02 A6 */	mflr r0
/* 81363598 | 3C 80 81 64 */	lis r4, __vt__Q33ipl7utility9BScroller@ha
/* 8136359C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813635A0 | 38 84 12 84 */	addi r4, r4, __vt__Q33ipl7utility9BScroller@l
/* 813635A4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813635A8 | 7C 7F 1B 78 */	mr r31, r3
/* 813635AC | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813635B0 | 48 00 00 1D */	bl init__Q33ipl7utility9BScrollerFv
/* 813635B4 | 7F E3 FB 78 */	mr r3, r31
/* 813635B8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813635BC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813635C0 | 7C 08 03 A6 */	mtlr r0
/* 813635C4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813635C8 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl7utility9BScrollerFv

# .text:0x170 | 0x813635CC | size: 0x28
# ipl::utility::BScroller::init()
.fn init__Q33ipl7utility9BScrollerFv, global
/* 813635CC | C0 02 82 00 */	lfs f0, lbl_81694600@sda21(r0)
/* 813635D0 | 38 00 FF FF */	li r0, -0x1
/* 813635D4 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 813635D8 | D0 03 00 08 */	stfs f0, 0x8(r3)
/* 813635DC | D0 03 00 0C */	stfs f0, 0xc(r3)
/* 813635E0 | D0 03 00 10 */	stfs f0, 0x10(r3)
/* 813635E4 | D0 03 00 14 */	stfs f0, 0x14(r3)
/* 813635E8 | D0 03 00 18 */	stfs f0, 0x18(r3)
/* 813635EC | D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 813635F0 | 4E 80 00 20 */	blr
.endfn init__Q33ipl7utility9BScrollerFv

# .text:0x198 | 0x813635F4 | size: 0x64
.fn iplUtility_813635F4, global
/* 813635F4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813635F8 | 7C 08 02 A6 */	mflr r0
/* 813635FC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81363600 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81363604 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81363608 | 7C 7E 1B 78 */	mr r30, r3
/* 8136360C | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 81363610 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81363614 | 41 80 00 24 */	blt .L_81363638
/* 81363618 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8136361C | 38 A0 00 00 */	li r5, 0x0
/* 81363620 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81363624 | 80 7F 00 B0 */	lwz r3, 0xb0(r31)
/* 81363628 | 4B FE 0E 51 */	bl setState__Q23ipl7PointerFii
/* 8136362C | 80 7F 00 B0 */	lwz r3, 0xb0(r31)
/* 81363630 | 38 00 FF FF */	li r0, -0x1
/* 81363634 | 90 03 00 28 */	stw r0, 0x28(r3)
.L_81363638:
/* 81363638 | 7F C3 F3 78 */	mr r3, r30
/* 8136363C | 4B FF FF 91 */	bl init__Q33ipl7utility9BScrollerFv
/* 81363640 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81363644 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81363648 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8136364C | 7C 08 03 A6 */	mtlr r0
/* 81363650 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81363654 | 4E 80 00 20 */	blr
.endfn iplUtility_813635F4

# .text:0x1FC | 0x81363658 | size: 0x364
# ipl::utility::BScroller::calc()
.fn calc__Q33ipl7utility9BScrollerFv, global
/* 81363658 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8136365C | 7C 08 02 A6 */	mflr r0
/* 81363660 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 81363664 | DB E1 00 50 */	stfd f31, 0x50(r1)
/* 81363668 | F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 8136366C | 39 61 00 50 */	addi r11, r1, 0x50
/* 81363670 | 48 29 5E 55 */	bl _savegpr_28
/* 81363674 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81363678 | 7C 7C 1B 78 */	mr r28, r3
/* 8136367C | 3B C0 00 00 */	li r30, 0x0
/* 81363680 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81363684 | 40 80 01 68 */	bge .L_813637EC
/* 81363688 | 3B E0 00 00 */	li r31, 0x0
.L_8136368C:
/* 8136368C | 7F E3 FB 78 */	mr r3, r31
/* 81363690 | 4B FD 23 39 */	bl getController__Q23ipl6SystemFi
/* 81363694 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81363698 | 7C 7D 1B 78 */	mr r29, r3
/* 8136369C | 41 82 01 40 */	beq .L_813637DC
/* 813636A0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813636A4 | 38 80 04 00 */	li r4, 0x400
/* 813636A8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813636AC | 7D 89 03 A6 */	mtctr r12
/* 813636B0 | 4E 80 04 21 */	bctrl
/* 813636B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813636B8 | 41 82 01 24 */	beq .L_813637DC
/* 813636BC | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813636C0 | 7F A3 EB 78 */	mr r3, r29
/* 813636C4 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 813636C8 | 7D 89 03 A6 */	mtctr r12
/* 813636CC | 4E 80 04 21 */	bctrl
/* 813636D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813636D4 | 41 82 01 08 */	beq .L_813637DC
/* 813636D8 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 813636DC | 7F 83 E3 78 */	mr r3, r28
/* 813636E0 | 7F E4 FB 78 */	mr r4, r31
/* 813636E4 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813636E8 | 7D 89 03 A6 */	mtctr r12
/* 813636EC | 4E 80 04 21 */	bctrl
/* 813636F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813636F4 | 41 82 00 E8 */	beq .L_813637DC
/* 813636F8 | 93 FC 00 04 */	stw r31, 0x4(r28)
/* 813636FC | 7F A3 EB 78 */	mr r3, r29
/* 81363700 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81363704 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81363708 | 7D 89 03 A6 */	mtctr r12
/* 8136370C | 4E 80 04 21 */	bctrl
/* 81363710 | 90 81 00 34 */	stw r4, 0x34(r1)
/* 81363714 | 38 8D 82 34 */	li r4, lbl_81696274@sda21
/* 81363718 | 90 61 00 30 */	stw r3, 0x30(r1)
/* 8136371C | 38 61 00 30 */	addi r3, r1, 0x30
/* 81363720 | 4B FD 2F CD */	bl "abs_clamp<f>__Q23ipl4mathFRCfRCf_f"
/* 81363724 | D0 3C 00 08 */	stfs f1, 0x8(r28)
/* 81363728 | 7F A3 EB 78 */	mr r3, r29
/* 8136372C | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81363730 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81363734 | 7D 89 03 A6 */	mtctr r12
/* 81363738 | 4E 80 04 21 */	bctrl
/* 8136373C | 90 81 00 2C */	stw r4, 0x2c(r1)
/* 81363740 | 38 8D 82 38 */	li r4, lbl_81696278@sda21
/* 81363744 | 90 61 00 28 */	stw r3, 0x28(r1)
/* 81363748 | 38 61 00 2C */	addi r3, r1, 0x2c
/* 8136374C | 4B FD 2F A1 */	bl "abs_clamp<f>__Q23ipl4mathFRCfRCf_f"
/* 81363750 | D0 3C 00 0C */	stfs f1, 0xc(r28)
/* 81363754 | 38 7C 00 10 */	addi r3, r28, 0x10
/* 81363758 | 38 9C 00 08 */	addi r4, r28, 0x8
/* 8136375C | 4B FD 30 95 */	bl __as__Q33ipl4math4VEC2FRCQ33ipl4math4VEC2
/* 81363760 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81363764 | 80 9C 00 04 */	lwz r4, 0x4(r28)
/* 81363768 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8136376C | 38 A0 00 01 */	li r5, 0x1
/* 81363770 | 80 7F 00 B0 */	lwz r3, 0xb0(r31)
/* 81363774 | 4B FE 0D 05 */	bl setState__Q23ipl7PointerFii
/* 81363778 | 80 1C 00 04 */	lwz r0, 0x4(r28)
/* 8136377C | 7F A3 EB 78 */	mr r3, r29
/* 81363780 | 80 9F 00 B0 */	lwz r4, 0xb0(r31)
/* 81363784 | 90 04 00 28 */	stw r0, 0x28(r4)
/* 81363788 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8136378C | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 81363790 | 7D 89 03 A6 */	mtctr r12
/* 81363794 | 4E 80 04 21 */	bctrl
/* 81363798 | 90 61 00 18 */	stw r3, 0x18(r1)
/* 8136379C | 38 61 00 18 */	addi r3, r1, 0x18
/* 813637A0 | 90 81 00 1C */	stw r4, 0x1c(r1)
/* 813637A4 | 48 00 0E 51 */	bl get_cursor_pos__Q23ipl7utilityFRCQ33ipl4math4VEC2
/* 813637A8 | 80 BF 00 B0 */	lwz r5, 0xb0(r31)
/* 813637AC | 90 81 00 24 */	stw r4, 0x24(r1)
/* 813637B0 | 38 81 00 20 */	addi r4, r1, 0x20
/* 813637B4 | 90 61 00 20 */	stw r3, 0x20(r1)
/* 813637B8 | 38 65 00 2C */	addi r3, r5, 0x2c
/* 813637BC | 4B FD 30 35 */	bl __as__Q33ipl4math4VEC2FRCQ33ipl4math4VEC2
/* 813637C0 | 7F 83 E3 78 */	mr r3, r28
/* 813637C4 | 48 00 02 0D */	bl _get__Q33ipl7utility9BScrollerFv
/* 813637C8 | D0 3C 00 18 */	stfs f1, 0x18(r28)
/* 813637CC | 7F 83 E3 78 */	mr r3, r28
/* 813637D0 | 48 00 02 49 */	bl set_arw_param__Q33ipl7utility9BScrollerFv
/* 813637D4 | 3B C0 00 01 */	li r30, 0x1
/* 813637D8 | 48 00 01 70 */	b .L_81363948
.L_813637DC:
/* 813637DC | 3B FF 00 01 */	addi r31, r31, 0x1
/* 813637E0 | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 813637E4 | 41 80 FE A8 */	blt .L_8136368C
/* 813637E8 | 48 00 01 60 */	b .L_81363948
.L_813637EC:
/* 813637EC | 7C 03 03 78 */	mr r3, r0
/* 813637F0 | 4B FD 21 D9 */	bl getController__Q23ipl6SystemFi
/* 813637F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813637F8 | 7C 7D 1B 78 */	mr r29, r3
/* 813637FC | 41 82 00 40 */	beq .L_8136383C
/* 81363800 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81363804 | 38 80 04 00 */	li r4, 0x400
/* 81363808 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8136380C | 7D 89 03 A6 */	mtctr r12
/* 81363810 | 4E 80 04 21 */	bctrl
/* 81363814 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81363818 | 41 82 00 24 */	beq .L_8136383C
/* 8136381C | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81363820 | 7F 83 E3 78 */	mr r3, r28
/* 81363824 | 80 9C 00 04 */	lwz r4, 0x4(r28)
/* 81363828 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8136382C | 7D 89 03 A6 */	mtctr r12
/* 81363830 | 4E 80 04 21 */	bctrl
/* 81363834 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81363838 | 40 82 00 34 */	bne .L_8136386C
.L_8136383C:
/* 8136383C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81363840 | 80 9C 00 04 */	lwz r4, 0x4(r28)
/* 81363844 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81363848 | 38 A0 00 00 */	li r5, 0x0
/* 8136384C | 80 7F 00 B0 */	lwz r3, 0xb0(r31)
/* 81363850 | 4B FE 0C 29 */	bl setState__Q23ipl7PointerFii
/* 81363854 | 80 9F 00 B0 */	lwz r4, 0xb0(r31)
/* 81363858 | 38 00 FF FF */	li r0, -0x1
/* 8136385C | 7F 83 E3 78 */	mr r3, r28
/* 81363860 | 90 04 00 28 */	stw r0, 0x28(r4)
/* 81363864 | 4B FF FD 69 */	bl init__Q33ipl7utility9BScrollerFv
/* 81363868 | 48 00 00 E0 */	b .L_81363948
.L_8136386C:
/* 8136386C | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81363870 | 7F A3 EB 78 */	mr r3, r29
/* 81363874 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 81363878 | 7D 89 03 A6 */	mtctr r12
/* 8136387C | 4E 80 04 21 */	bctrl
/* 81363880 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81363884 | 41 82 00 74 */	beq .L_813638F8
/* 81363888 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8136388C | 7F A3 EB 78 */	mr r3, r29
/* 81363890 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81363894 | 7D 89 03 A6 */	mtctr r12
/* 81363898 | 4E 80 04 21 */	bctrl
/* 8136389C | 90 81 00 14 */	stw r4, 0x14(r1)
/* 813638A0 | 38 8D 82 3C */	li r4, lbl_8169627C@sda21
/* 813638A4 | 90 61 00 10 */	stw r3, 0x10(r1)
/* 813638A8 | 38 61 00 10 */	addi r3, r1, 0x10
/* 813638AC | 4B FD 2E 41 */	bl "abs_clamp<f>__Q23ipl4mathFRCfRCf_f"
/* 813638B0 | D0 3C 00 08 */	stfs f1, 0x8(r28)
/* 813638B4 | 7F A3 EB 78 */	mr r3, r29
/* 813638B8 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813638BC | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 813638C0 | 7D 89 03 A6 */	mtctr r12
/* 813638C4 | 4E 80 04 21 */	bctrl
/* 813638C8 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 813638CC | 38 8D 82 40 */	li r4, lbl_81696280@sda21
/* 813638D0 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 813638D4 | 38 61 00 0C */	addi r3, r1, 0xc
/* 813638D8 | 4B FD 2E 15 */	bl "abs_clamp<f>__Q23ipl4mathFRCfRCf_f"
/* 813638DC | D0 3C 00 0C */	stfs f1, 0xc(r28)
/* 813638E0 | 7F 83 E3 78 */	mr r3, r28
/* 813638E4 | 48 00 00 ED */	bl _get__Q33ipl7utility9BScrollerFv
/* 813638E8 | D0 3C 00 18 */	stfs f1, 0x18(r28)
/* 813638EC | 7F 83 E3 78 */	mr r3, r28
/* 813638F0 | 48 00 01 29 */	bl set_arw_param__Q33ipl7utility9BScrollerFv
/* 813638F4 | 48 00 00 54 */	b .L_81363948
.L_813638F8:
/* 813638F8 | 38 7C 00 0C */	addi r3, r28, 0xc
/* 813638FC | 48 00 00 C9 */	bl "abs<f>__Q23ipl4mathFRCf_f"
/* 81363900 | FF E0 08 90 */	fmr f31, f1
/* 81363904 | 38 7C 00 08 */	addi r3, r28, 0x8
/* 81363908 | 48 00 00 BD */	bl "abs<f>__Q23ipl4mathFRCf_f"
/* 8136390C | FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 81363910 | 40 80 00 38 */	bge .L_81363948
/* 81363914 | C0 3C 00 0C */	lfs f1, 0xc(r28)
/* 81363918 | C0 02 82 00 */	lfs f0, lbl_81694600@sda21(r0)
/* 8136391C | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81363920 | 40 80 00 0C */	bge .L_8136392C
/* 81363924 | C0 02 82 04 */	lfs f0, lbl_81694604@sda21(r0)
/* 81363928 | 48 00 00 08 */	b .L_81363930
.L_8136392C:
/* 8136392C | C0 02 82 08 */	lfs f0, lbl_81694608@sda21(r0)
.L_81363930:
/* 81363930 | D0 1C 00 0C */	stfs f0, 0xc(r28)
/* 81363934 | 7F 83 E3 78 */	mr r3, r28
/* 81363938 | 48 00 00 99 */	bl _get__Q33ipl7utility9BScrollerFv
/* 8136393C | D0 3C 00 18 */	stfs f1, 0x18(r28)
/* 81363940 | 7F 83 E3 78 */	mr r3, r28
/* 81363944 | 48 00 00 D5 */	bl set_arw_param__Q33ipl7utility9BScrollerFv
.L_81363948:
/* 81363948 | 38 7C 00 1C */	addi r3, r28, 0x1c
/* 8136394C | 48 00 00 79 */	bl "abs<f>__Q23ipl4mathFRCf_f"
/* 81363950 | C0 02 82 0C */	lfs f0, lbl_8169460C@sda21(r0)
/* 81363954 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81363958 | 40 81 00 40 */	ble .L_81363998
/* 8136395C | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81363960 | 3C 80 81 64 */	lis r4, lbl_81641230@ha
/* 81363964 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81363968 | 38 84 12 30 */	addi r4, r4, lbl_81641230@l
/* 8136396C | 48 00 7B 01 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81363970 | C0 3C 00 1C */	lfs f1, 0x1c(r28)
/* 81363974 | C0 02 82 00 */	lfs f0, lbl_81694600@sda21(r0)
/* 81363978 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8136397C | 40 81 00 10 */	ble .L_8136398C
/* 81363980 | C0 02 82 0C */	lfs f0, lbl_8169460C@sda21(r0)
/* 81363984 | EC 01 00 28 */	fsubs f0, f1, f0
/* 81363988 | 48 00 00 0C */	b .L_81363994
.L_8136398C:
/* 8136398C | C0 02 82 0C */	lfs f0, lbl_8169460C@sda21(r0)
/* 81363990 | EC 00 08 2A */	fadds f0, f0, f1
.L_81363994:
/* 81363994 | D0 1C 00 1C */	stfs f0, 0x1c(r28)
.L_81363998:
/* 81363998 | 7F C3 F3 78 */	mr r3, r30
/* 8136399C | E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 813639A0 | CB E1 00 50 */	lfd f31, 0x50(r1)
/* 813639A4 | 39 61 00 50 */	addi r11, r1, 0x50
/* 813639A8 | 48 29 5B 69 */	bl _restgpr_28
/* 813639AC | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 813639B0 | 7C 08 03 A6 */	mtlr r0
/* 813639B4 | 38 21 00 60 */	addi r1, r1, 0x60
/* 813639B8 | 4E 80 00 20 */	blr
.endfn calc__Q33ipl7utility9BScrollerFv

# .text:0x560 | 0x813639BC | size: 0x8
# ipl::utility::BScroller::isYoungController(int)
.fn isYoungController__Q33ipl7utility9BScrollerFi, global
/* 813639BC | 38 60 00 01 */	li r3, 0x1
/* 813639C0 | 4E 80 00 20 */	blr
.endfn isYoungController__Q33ipl7utility9BScrollerFi

# .text:0x568 | 0x813639C4 | size: 0xC
# float ipl::math::abs<float>(const float&)
.fn "abs<f>__Q23ipl4mathFRCf_f", global
/* 813639C4 | C0 03 00 00 */	lfs f0, 0x0(r3)
/* 813639C8 | FC 20 02 10 */	fabs f1, f0
/* 813639CC | 4E 80 00 20 */	blr
.endfn "abs<f>__Q23ipl4mathFRCf_f"

# .text:0x574 | 0x813639D0 | size: 0x48
# ipl::utility::BScroller::_get()
.fn _get__Q33ipl7utility9BScrollerFv, global
/* 813639D0 | C0 43 00 0C */	lfs f2, 0xc(r3)
/* 813639D4 | C0 23 00 14 */	lfs f1, 0x14(r3)
/* 813639D8 | C0 02 82 10 */	lfs f0, lbl_81694610@sda21(r0)
/* 813639DC | EC 42 08 28 */	fsubs f2, f2, f1
/* 813639E0 | C0 22 82 00 */	lfs f1, lbl_81694600@sda21(r0)
/* 813639E4 | FC 02 00 40 */	fcmpo cr0, f2, f0
/* 813639E8 | 40 80 00 14 */	bge .L_813639FC
/* 813639EC | EC 22 00 B2 */	fmuls f1, f2, f2
/* 813639F0 | C0 02 82 14 */	lfs f0, lbl_81694614@sda21(r0)
/* 813639F4 | EC 20 00 72 */	fmuls f1, f0, f1
/* 813639F8 | 4E 80 00 20 */	blr
.L_813639FC:
/* 813639FC | C0 02 82 1C */	lfs f0, lbl_8169461C@sda21(r0)
/* 81363A00 | FC 02 00 40 */	fcmpo cr0, f2, f0
/* 81363A04 | 4C 81 00 20 */	blelr
/* 81363A08 | EC 22 00 B2 */	fmuls f1, f2, f2
/* 81363A0C | C0 02 82 18 */	lfs f0, lbl_81694618@sda21(r0)
/* 81363A10 | EC 20 00 72 */	fmuls f1, f0, f1
/* 81363A14 | 4E 80 00 20 */	blr
.endfn _get__Q33ipl7utility9BScrollerFv

# .text:0x5BC | 0x81363A18 | size: 0xCC
# ipl::utility::BScroller::set_arw_param()
.fn set_arw_param__Q33ipl7utility9BScrollerFv, global
/* 81363A18 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81363A1C | 7C 08 02 A6 */	mflr r0
/* 81363A20 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81363A24 | DB E1 00 30 */	stfd f31, 0x30(r1)
/* 81363A28 | F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 81363A2C | C0 02 82 00 */	lfs f0, lbl_81694600@sda21(r0)
/* 81363A30 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 81363A34 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 81363A38 | 7C 7E 1B 78 */	mr r30, r3
/* 81363A3C | C0 23 00 18 */	lfs f1, 0x18(r3)
/* 81363A40 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81363A44 | 40 80 00 0C */	bge .L_81363A50
/* 81363A48 | 38 00 00 00 */	li r0, 0x0
/* 81363A4C | 48 00 00 08 */	b .L_81363A54
.L_81363A50:
/* 81363A50 | 38 00 00 01 */	li r0, 0x1
.L_81363A54:
/* 81363A54 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81363A58 | 38 61 00 0C */	addi r3, r1, 0xc
/* 81363A5C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81363A60 | 80 9F 00 B0 */	lwz r4, 0xb0(r31)
/* 81363A64 | 90 04 00 38 */	stw r0, 0x38(r4)
/* 81363A68 | 4B FD 29 C1 */	bl __ct__Q34nw4r2ut4RectFv
/* 81363A6C | 38 61 00 0C */	addi r3, r1, 0xc
/* 81363A70 | 4B FD 1E A9 */	bl getProjectionRect__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 81363A74 | C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 81363A78 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81363A7C | C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 81363A80 | C0 21 00 18 */	lfs f1, 0x18(r1)
/* 81363A84 | EC 42 00 28 */	fsubs f2, f2, f0
/* 81363A88 | C0 01 00 10 */	lfs f0, 0x10(r1)
/* 81363A8C | EF E1 00 28 */	fsubs f31, f1, f0
/* 81363A90 | D0 41 00 08 */	stfs f2, 0x8(r1)
/* 81363A94 | 4B FF FF 31 */	bl "abs<f>__Q23ipl4mathFRCf_f"
/* 81363A98 | EC 01 07 F2 */	fmuls f0, f1, f31
/* 81363A9C | 80 9F 00 B0 */	lwz r4, 0xb0(r31)
/* 81363AA0 | 38 7E 00 18 */	addi r3, r30, 0x18
/* 81363AA4 | D0 04 00 34 */	stfs f0, 0x34(r4)
/* 81363AA8 | 4B FF FF 1D */	bl "abs<f>__Q23ipl4mathFRCf_f"
/* 81363AAC | C0 02 82 00 */	lfs f0, lbl_81694600@sda21(r0)
/* 81363AB0 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81363AB4 | 7C 00 00 26 */	mfcr r0
/* 81363AB8 | 80 7F 00 B0 */	lwz r3, 0xb0(r31)
/* 81363ABC | 54 00 17 FE */	extrwi r0, r0, 1, 1
/* 81363AC0 | 98 03 00 3C */	stb r0, 0x3c(r3)
/* 81363AC4 | E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 81363AC8 | CB E1 00 30 */	lfd f31, 0x30(r1)
/* 81363ACC | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 81363AD0 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 81363AD4 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81363AD8 | 7C 08 03 A6 */	mtlr r0
/* 81363ADC | 38 21 00 40 */	addi r1, r1, 0x40
/* 81363AE0 | 4E 80 00 20 */	blr
.endfn set_arw_param__Q33ipl7utility9BScrollerFv

# .text:0x688 | 0x81363AE4 | size: 0x14
# ipl::utility::BScroller::isActive() const
.fn isActive__Q33ipl7utility9BScrollerCFv, global
/* 81363AE4 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81363AE8 | 38 63 00 01 */	addi r3, r3, 0x1
/* 81363AEC | 30 03 FF FF */	subic r0, r3, 0x1
/* 81363AF0 | 7C 60 19 10 */	subfe r3, r0, r3
/* 81363AF4 | 4E 80 00 20 */	blr
.endfn isActive__Q33ipl7utility9BScrollerCFv

# .text:0x69C | 0x81363AF8 | size: 0x18
# ipl::utility::BScroller::isUp() const
.fn isUp__Q33ipl7utility9BScrollerCFv, global
/* 81363AF8 | C0 23 00 18 */	lfs f1, 0x18(r3)
/* 81363AFC | C0 02 82 00 */	lfs f0, lbl_81694600@sda21(r0)
/* 81363B00 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81363B04 | 7C 60 00 26 */	mfcr r3
/* 81363B08 | 54 63 0F FE */	srwi r3, r3, 31
/* 81363B0C | 4E 80 00 20 */	blr
.endfn isUp__Q33ipl7utility9BScrollerCFv

# .text:0x6B4 | 0x81363B10 | size: 0x18
# ipl::utility::BScroller::isDown() const
.fn isDown__Q33ipl7utility9BScrollerCFv_81363B10, global
/* 81363B10 | C0 23 00 18 */	lfs f1, 0x18(r3)
/* 81363B14 | C0 02 82 00 */	lfs f0, lbl_81694600@sda21(r0)
/* 81363B18 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81363B1C | 7C 60 00 26 */	mfcr r3
/* 81363B20 | 54 63 17 FE */	extrwi r3, r3, 1, 1
/* 81363B24 | 4E 80 00 20 */	blr
.endfn isDown__Q33ipl7utility9BScrollerCFv_81363B10

# .text:0x6CC | 0x81363B28 | size: 0x58
# ipl::utility::YoungBScroller::isYoungController(int)
.fn isYoungController__Q33ipl7utility14YoungBScrollerFi, global
/* 81363B28 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81363B2C | 7C 08 02 A6 */	mflr r0
/* 81363B30 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81363B34 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81363B38 | 7C 9F 23 78 */	mr r31, r4
/* 81363B3C | 4B FD 1E 7D */	bl getYoungController__Q23ipl6SystemFv
/* 81363B40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81363B44 | 41 82 00 24 */	beq .L_81363B68
/* 81363B48 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81363B4C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81363B50 | 7D 89 03 A6 */	mtctr r12
/* 81363B54 | 4E 80 04 21 */	bctrl
/* 81363B58 | 7C 1F 18 00 */	cmpw r31, r3
/* 81363B5C | 40 82 00 0C */	bne .L_81363B68
/* 81363B60 | 38 60 00 01 */	li r3, 0x1
/* 81363B64 | 48 00 00 08 */	b .L_81363B6C
.L_81363B68:
/* 81363B68 | 38 60 00 00 */	li r3, 0x0
.L_81363B6C:
/* 81363B6C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81363B70 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81363B74 | 7C 08 03 A6 */	mtlr r0
/* 81363B78 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81363B7C | 4E 80 00 20 */	blr
.endfn isYoungController__Q33ipl7utility14YoungBScrollerFi

# .text:0x724 | 0x81363B80 | size: 0x80
# ipl::utility::Scroller::Scroller()
.fn __ct__Q33ipl7utility8ScrollerFv, global
/* 81363B80 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81363B84 | 7C 08 02 A6 */	mflr r0
/* 81363B88 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81363B8C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81363B90 | 7C 7F 1B 78 */	mr r31, r3
/* 81363B94 | 48 00 00 6D */	bl "__ct__Q33ipl4math14HermiteIntp<f>Fv"
/* 81363B98 | C0 42 82 00 */	lfs f2, lbl_81694600@sda21(r0)
/* 81363B9C | 38 00 00 00 */	li r0, 0x0
/* 81363BA0 | C0 22 82 08 */	lfs f1, lbl_81694608@sda21(r0)
/* 81363BA4 | 7F E3 FB 78 */	mr r3, r31
/* 81363BA8 | C0 A2 82 20 */	lfs f5, lbl_81694620@sda21(r0)
/* 81363BAC | FC 60 10 90 */	fmr f3, f2
/* 81363BB0 | C0 02 82 24 */	lfs f0, lbl_81694624@sda21(r0)
/* 81363BB4 | FC 80 08 90 */	fmr f4, f1
/* 81363BB8 | 90 1F 00 30 */	stw r0, 0x30(r31)
/* 81363BBC | 38 8D 82 44 */	li r4, lbl_81696284@sda21
/* 81363BC0 | 38 AD 82 48 */	li r5, lbl_81696288@sda21
/* 81363BC4 | D0 5F 00 34 */	stfs f2, 0x34(r31)
/* 81363BC8 | 38 C0 00 00 */	li r6, 0x0
/* 81363BCC | D0 5F 00 38 */	stfs f2, 0x38(r31)
/* 81363BD0 | D0 5F 00 3C */	stfs f2, 0x3c(r31)
/* 81363BD4 | D0 5F 00 40 */	stfs f2, 0x40(r31)
/* 81363BD8 | D0 5F 00 44 */	stfs f2, 0x44(r31)
/* 81363BDC | D0 BF 00 48 */	stfs f5, 0x48(r31)
/* 81363BE0 | D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 81363BE4 | 48 00 00 6D */	bl "init__Q33ipl4math14HermiteIntp<f>FRCfRCffffif"
/* 81363BE8 | 7F E3 FB 78 */	mr r3, r31
/* 81363BEC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81363BF0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81363BF4 | 7C 08 03 A6 */	mtlr r0
/* 81363BF8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81363BFC | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl7utility8ScrollerFv

# .text:0x7A4 | 0x81363C00 | size: 0x10
# ipl::math::HermiteIntp<float>::HermiteIntp()
.fn "__ct__Q33ipl4math14HermiteIntp<f>Fv", global
/* 81363C00 | 3C 80 81 64 */	lis r4, "__vt__Q33ipl4math14HermiteIntp<f>"@ha
/* 81363C04 | 38 84 12 68 */	addi r4, r4, "__vt__Q33ipl4math14HermiteIntp<f>"@l
/* 81363C08 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 81363C0C | 4E 80 00 20 */	blr
.endfn "__ct__Q33ipl4math14HermiteIntp<f>Fv"

# .text:0x7B4 | 0x81363C10 | size: 0x40
# ipl::math::HermiteIntp<float>::~HermiteIntp()
.fn "__dt__Q33ipl4math14HermiteIntp<f>Fv", global
/* 81363C10 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81363C14 | 7C 08 02 A6 */	mflr r0
/* 81363C18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81363C1C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81363C20 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81363C24 | 7C 7F 1B 78 */	mr r31, r3
/* 81363C28 | 41 82 00 10 */	beq .L_81363C38
/* 81363C2C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81363C30 | 40 81 00 08 */	ble .L_81363C38
/* 81363C34 | 48 29 44 B1 */	bl __dl__FPv
.L_81363C38:
/* 81363C38 | 7F E3 FB 78 */	mr r3, r31
/* 81363C3C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81363C40 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81363C44 | 7C 08 03 A6 */	mtlr r0
/* 81363C48 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81363C4C | 4E 80 00 20 */	blr
.endfn "__dt__Q33ipl4math14HermiteIntp<f>Fv"

# .text:0x7F4 | 0x81363C50 | size: 0x78
# ipl::math::HermiteIntp<float>::init(const float&, const float&, float, float, float, int, float)
.fn "init__Q33ipl4math14HermiteIntp<f>FRCfRCffffif", global
/* 81363C50 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81363C54 | 7C 08 02 A6 */	mflr r0
/* 81363C58 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81363C5C | DB E1 00 20 */	stfd f31, 0x20(r1)
/* 81363C60 | F3 E1 00 28 */	psq_st f31, 0x28(r1), 0, qr0
/* 81363C64 | DB C1 00 10 */	stfd f30, 0x10(r1)
/* 81363C68 | F3 C1 00 18 */	psq_st f30, 0x18(r1), 0, qr0
/* 81363C6C | FF C0 10 90 */	fmr f30, f2
/* 81363C70 | C0 A4 00 00 */	lfs f5, 0x0(r4)
/* 81363C74 | FF E0 18 90 */	fmr f31, f3
/* 81363C78 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81363C7C | FC 60 20 90 */	fmr f3, f4
/* 81363C80 | C0 05 00 00 */	lfs f0, 0x0(r5)
/* 81363C84 | D0 A3 00 20 */	stfs f5, 0x20(r3)
/* 81363C88 | 7C 7F 1B 78 */	mr r31, r3
/* 81363C8C | C0 42 82 00 */	lfs f2, lbl_81694600@sda21(r0)
/* 81363C90 | 7C C4 33 78 */	mr r4, r6
/* 81363C94 | D0 03 00 24 */	stfs f0, 0x24(r3)
/* 81363C98 | 4B FF EB B9 */	bl init__Q33ipl7utility15FrameControllerFifff
/* 81363C9C | D3 DF 00 28 */	stfs f30, 0x28(r31)
/* 81363CA0 | D3 FF 00 2C */	stfs f31, 0x2c(r31)
/* 81363CA4 | E3 E1 00 28 */	psq_l f31, 0x28(r1), 0, qr0
/* 81363CA8 | CB E1 00 20 */	lfd f31, 0x20(r1)
/* 81363CAC | E3 C1 00 18 */	psq_l f30, 0x18(r1), 0, qr0
/* 81363CB0 | CB C1 00 10 */	lfd f30, 0x10(r1)
/* 81363CB4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81363CB8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81363CBC | 7C 08 03 A6 */	mtlr r0
/* 81363CC0 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81363CC4 | 4E 80 00 20 */	blr
.endfn "init__Q33ipl4math14HermiteIntp<f>FRCfRCffffif"

# .text:0x86C | 0x81363CC8 | size: 0x30
# ipl::utility::Scroller::movable_pos(float) const
.fn movable_pos__Q33ipl7utility8ScrollerCFf, global
/* 81363CC8 | C0 63 00 40 */	lfs f3, 0x40(r3)
/* 81363CCC | C0 03 00 34 */	lfs f0, 0x34(r3)
/* 81363CD0 | EC 43 08 2A */	fadds f2, f3, f1
/* 81363CD4 | FC 02 00 40 */	fcmpo cr0, f2, f0
/* 81363CD8 | 40 81 00 0C */	ble .L_81363CE4
/* 81363CDC | EC 20 18 28 */	fsubs f1, f0, f3
/* 81363CE0 | 4E 80 00 20 */	blr
.L_81363CE4:
/* 81363CE4 | C0 03 00 38 */	lfs f0, 0x38(r3)
/* 81363CE8 | FC 02 00 40 */	fcmpo cr0, f2, f0
/* 81363CEC | 4C 80 00 20 */	bgelr
/* 81363CF0 | EC 20 18 28 */	fsubs f1, f0, f3
/* 81363CF4 | 4E 80 00 20 */	blr
.endfn movable_pos__Q33ipl7utility8ScrollerCFf

# .text:0x89C | 0x81363CF8 | size: 0x2CC
# ipl::utility::Scroller::calc()
.fn calc__Q33ipl7utility8ScrollerFv, global
/* 81363CF8 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81363CFC | 7C 08 02 A6 */	mflr r0
/* 81363D00 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81363D04 | DB E1 00 30 */	stfd f31, 0x30(r1)
/* 81363D08 | F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 81363D0C | DB C1 00 20 */	stfd f30, 0x20(r1)
/* 81363D10 | F3 C1 00 28 */	psq_st f30, 0x28(r1), 0, qr0
/* 81363D14 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81363D18 | 7C 7F 1B 78 */	mr r31, r3
/* 81363D1C | 80 03 00 30 */	lwz r0, 0x30(r3)
/* 81363D20 | C3 E3 00 40 */	lfs f31, 0x40(r3)
/* 81363D24 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 81363D28 | 41 82 00 B0 */	beq .L_81363DD8
/* 81363D2C | 40 80 00 14 */	bge .L_81363D40
/* 81363D30 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81363D34 | 41 82 00 1C */	beq .L_81363D50
/* 81363D38 | 40 80 00 5C */	bge .L_81363D94
/* 81363D3C | 48 00 02 08 */	b .L_81363F44
.L_81363D40:
/* 81363D40 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 81363D44 | 41 82 01 14 */	beq .L_81363E58
/* 81363D48 | 40 80 01 FC */	bge .L_81363F44
/* 81363D4C | 48 00 00 CC */	b .L_81363E18
.L_81363D50:
/* 81363D50 | C0 43 00 3C */	lfs f2, 0x3c(r3)
/* 81363D54 | C0 03 00 48 */	lfs f0, 0x48(r3)
/* 81363D58 | C0 23 00 4C */	lfs f1, 0x4c(r3)
/* 81363D5C | EC 42 00 32 */	fmuls f2, f2, f0
/* 81363D60 | C0 02 82 00 */	lfs f0, lbl_81694600@sda21(r0)
/* 81363D64 | EC 22 08 28 */	fsubs f1, f2, f1
/* 81363D68 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81363D6C | D0 23 00 3C */	stfs f1, 0x3c(r3)
/* 81363D70 | 40 81 00 08 */	ble .L_81363D78
/* 81363D74 | D0 03 00 3C */	stfs f0, 0x3c(r3)
.L_81363D78:
/* 81363D78 | C0 23 00 40 */	lfs f1, 0x40(r3)
/* 81363D7C | 38 00 00 00 */	li r0, 0x0
/* 81363D80 | C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 81363D84 | 90 03 00 30 */	stw r0, 0x30(r3)
/* 81363D88 | EC 01 00 2A */	fadds f0, f1, f0
/* 81363D8C | D0 03 00 40 */	stfs f0, 0x40(r3)
/* 81363D90 | 48 00 01 B4 */	b .L_81363F44
.L_81363D94:
/* 81363D94 | C0 43 00 3C */	lfs f2, 0x3c(r3)
/* 81363D98 | C0 03 00 48 */	lfs f0, 0x48(r3)
/* 81363D9C | C0 23 00 4C */	lfs f1, 0x4c(r3)
/* 81363DA0 | EC 42 00 32 */	fmuls f2, f2, f0
/* 81363DA4 | C0 02 82 00 */	lfs f0, lbl_81694600@sda21(r0)
/* 81363DA8 | EC 22 08 2A */	fadds f1, f2, f1
/* 81363DAC | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81363DB0 | D0 23 00 3C */	stfs f1, 0x3c(r3)
/* 81363DB4 | 40 80 00 08 */	bge .L_81363DBC
/* 81363DB8 | D0 03 00 3C */	stfs f0, 0x3c(r3)
.L_81363DBC:
/* 81363DBC | C0 23 00 40 */	lfs f1, 0x40(r3)
/* 81363DC0 | 38 00 00 00 */	li r0, 0x0
/* 81363DC4 | C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 81363DC8 | 90 03 00 30 */	stw r0, 0x30(r3)
/* 81363DCC | EC 01 00 2A */	fadds f0, f1, f0
/* 81363DD0 | D0 03 00 40 */	stfs f0, 0x40(r3)
/* 81363DD4 | 48 00 01 70 */	b .L_81363F44
.L_81363DD8:
/* 81363DD8 | C0 42 82 00 */	lfs f2, lbl_81694600@sda21(r0)
/* 81363DDC | 38 8D 82 4C */	li r4, lbl_8169628C@sda21
/* 81363DE0 | D3 E3 00 44 */	stfs f31, 0x44(r3)
/* 81363DE4 | 38 AD 82 50 */	li r5, lbl_81696290@sda21
/* 81363DE8 | FC 60 10 90 */	fmr f3, f2
/* 81363DEC | C0 22 82 28 */	lfs f1, lbl_81694628@sda21(r0)
/* 81363DF0 | C0 82 82 08 */	lfs f4, lbl_81694608@sda21(r0)
/* 81363DF4 | 38 C0 00 00 */	li r6, 0x0
/* 81363DF8 | 4B FF FE 59 */	bl "init__Q33ipl4math14HermiteIntp<f>FRCfRCffffif"
/* 81363DFC | 7F E3 FB 78 */	mr r3, r31
/* 81363E00 | 4B FF EA 71 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81363E04 | 38 60 00 01 */	li r3, 0x1
/* 81363E08 | 38 00 00 05 */	li r0, 0x5
/* 81363E0C | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 81363E10 | 90 1F 00 30 */	stw r0, 0x30(r31)
/* 81363E14 | 48 00 01 30 */	b .L_81363F44
.L_81363E18:
/* 81363E18 | C0 42 82 00 */	lfs f2, lbl_81694600@sda21(r0)
/* 81363E1C | 38 8D 82 54 */	li r4, lbl_81696294@sda21
/* 81363E20 | D3 E3 00 44 */	stfs f31, 0x44(r3)
/* 81363E24 | 38 AD 82 58 */	li r5, lbl_81696298@sda21
/* 81363E28 | FC 60 10 90 */	fmr f3, f2
/* 81363E2C | C0 22 82 28 */	lfs f1, lbl_81694628@sda21(r0)
/* 81363E30 | C0 82 82 08 */	lfs f4, lbl_81694608@sda21(r0)
/* 81363E34 | 38 C0 00 00 */	li r6, 0x0
/* 81363E38 | 4B FF FE 19 */	bl "init__Q33ipl4math14HermiteIntp<f>FRCfRCffffif"
/* 81363E3C | 7F E3 FB 78 */	mr r3, r31
/* 81363E40 | 4B FF EA 31 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81363E44 | 38 60 00 01 */	li r3, 0x1
/* 81363E48 | 38 00 00 05 */	li r0, 0x5
/* 81363E4C | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 81363E50 | 90 1F 00 30 */	stw r0, 0x30(r31)
/* 81363E54 | 48 00 00 F0 */	b .L_81363F44
.L_81363E58:
/* 81363E58 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81363E5C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81363E60 | 7D 89 03 A6 */	mtctr r12
/* 81363E64 | 4E 80 04 21 */	bctrl
/* 81363E68 | C1 82 82 08 */	lfs f12, lbl_81694608@sda21(r0)
/* 81363E6C | C0 1F 00 04 */	lfs f0, 0x4(r31)
/* 81363E70 | C3 DF 00 0C */	lfs f30, 0xc(r31)
/* 81363E74 | ED AC 00 24 */	fdivs f13, f12, f0
/* 81363E78 | C0 22 82 2C */	lfs f1, lbl_8169462C@sda21(r0)
/* 81363E7C | C0 02 82 30 */	lfs f0, lbl_81694630@sda21(r0)
/* 81363E80 | 80 1F 00 14 */	lwz r0, 0x14(r31)
/* 81363E84 | C1 1F 00 20 */	lfs f8, 0x20(r31)
/* 81363E88 | C0 FF 00 24 */	lfs f7, 0x24(r31)
/* 81363E8C | EC 81 07 B2 */	fmuls f4, f1, f30
/* 81363E90 | C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 81363E94 | EC 40 07 B2 */	fmuls f2, f0, f30
/* 81363E98 | C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 81363E9C | EC DE 07 B2 */	fmuls f6, f30, f30
/* 81363EA0 | C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 81363EA4 | ED 64 07 B2 */	fmuls f11, f4, f30
/* 81363EA8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81363EAC | EC 82 07 B2 */	fmuls f4, f2, f30
/* 81363EB0 | EC 5E 01 B2 */	fmuls f2, f30, f6
/* 81363EB4 | EC BE 02 F2 */	fmuls f5, f30, f11
/* 81363EB8 | EC 8D 01 32 */	fmuls f4, f13, f4
/* 81363EBC | EC 4D 00 B2 */	fmuls f2, f13, f2
/* 81363EC0 | ED 4D 01 72 */	fmuls f10, f13, f5
/* 81363EC4 | ED 2D 01 32 */	fmuls f9, f13, f4
/* 81363EC8 | EC AD 00 B2 */	fmuls f5, f13, f2
/* 81363ECC | EC 8D 02 F2 */	fmuls f4, f13, f11
/* 81363ED0 | EC 4D 01 B2 */	fmuls f2, f13, f6
/* 81363ED4 | ED 4D 02 B2 */	fmuls f10, f13, f10
/* 81363ED8 | EC 85 20 28 */	fsubs f4, f5, f4
/* 81363EDC | EC 45 10 28 */	fsubs f2, f5, f2
/* 81363EE0 | EC CD 02 B2 */	fmuls f6, f13, f10
/* 81363EE4 | EC 9E 20 2A */	fadds f4, f30, f4
/* 81363EE8 | EC 21 00 B2 */	fmuls f1, f1, f2
/* 81363EEC | EC C6 48 28 */	fsubs f6, f6, f9
/* 81363EF0 | EC 43 01 32 */	fmuls f2, f3, f4
/* 81363EF4 | EC AC 30 2A */	fadds f5, f12, f6
/* 81363EF8 | EC 67 01 B2 */	fmuls f3, f7, f6
/* 81363EFC | EC 22 08 2A */	fadds f1, f2, f1
/* 81363F00 | EC 88 01 72 */	fmuls f4, f8, f5
/* 81363F04 | EC 44 18 28 */	fsubs f2, f4, f3
/* 81363F08 | EC 42 08 2A */	fadds f2, f2, f1
/* 81363F0C | EC 00 10 2A */	fadds f0, f0, f2
/* 81363F10 | D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 81363F14 | 41 82 00 30 */	beq .L_81363F44
/* 81363F18 | C0 02 82 00 */	lfs f0, lbl_81694600@sda21(r0)
/* 81363F1C | 7F E3 FB 78 */	mr r3, r31
/* 81363F20 | D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 81363F24 | 4B FF E9 4D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81363F28 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81363F2C | 7F E3 FB 78 */	mr r3, r31
/* 81363F30 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81363F34 | 7D 89 03 A6 */	mtctr r12
/* 81363F38 | 4E 80 04 21 */	bctrl
/* 81363F3C | 38 00 00 00 */	li r0, 0x0
/* 81363F40 | 90 1F 00 30 */	stw r0, 0x30(r31)
.L_81363F44:
/* 81363F44 | C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 81363F48 | C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 81363F4C | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81363F50 | 40 81 00 0C */	ble .L_81363F5C
/* 81363F54 | D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 81363F58 | 48 00 00 14 */	b .L_81363F6C
.L_81363F5C:
/* 81363F5C | C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 81363F60 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81363F64 | 40 80 00 08 */	bge .L_81363F6C
/* 81363F68 | D0 1F 00 40 */	stfs f0, 0x40(r31)
.L_81363F6C:
/* 81363F6C | C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 81363F70 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81363F74 | EC 1F 00 28 */	fsubs f0, f31, f0
/* 81363F78 | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 81363F7C | 4B FF FA 49 */	bl "abs<f>__Q23ipl4mathFRCf_f"
/* 81363F80 | C0 02 82 08 */	lfs f0, lbl_81694608@sda21(r0)
/* 81363F84 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81363F88 | 40 81 00 18 */	ble .L_81363FA0
/* 81363F8C | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81363F90 | 3C 80 81 64 */	lis r4, lbl_81641241@ha
/* 81363F94 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81363F98 | 38 84 12 41 */	addi r4, r4, lbl_81641241@l
/* 81363F9C | 48 00 78 05 */	bl holdSE__Q33ipl3snd6SystemFPCc
.L_81363FA0:
/* 81363FA0 | E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 81363FA4 | CB E1 00 30 */	lfd f31, 0x30(r1)
/* 81363FA8 | E3 C1 00 28 */	psq_l f30, 0x28(r1), 0, qr0
/* 81363FAC | CB C1 00 20 */	lfd f30, 0x20(r1)
/* 81363FB0 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81363FB4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81363FB8 | 7C 08 03 A6 */	mtlr r0
/* 81363FBC | 38 21 00 40 */	addi r1, r1, 0x40
/* 81363FC0 | 4E 80 00 20 */	blr
.endfn calc__Q33ipl7utility8ScrollerFv

# .text:0xB68 | 0x81363FC4 | size: 0x8
# ipl::utility::Scroller::get() const
.fn get__Q33ipl7utility8ScrollerCFv, global
/* 81363FC4 | C0 23 00 40 */	lfs f1, 0x40(r3)
/* 81363FC8 | 4E 80 00 20 */	blr
.endfn get__Q33ipl7utility8ScrollerCFv

# .text:0xB70 | 0x81363FCC | size: 0x30
# ipl::utility::CharacterCode::shiftJISToUTF16(wchar_t*, const unsigned char*, long)
.fn shiftJISToUTF16__Q33ipl7utility13CharacterCodeFPwPCUcl, global
/* 81363FCC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81363FD0 | 7C 08 02 A6 */	mflr r0
/* 81363FD4 | 38 C0 00 00 */	li r6, 0x0
/* 81363FD8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81363FDC | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 81363FE0 | 7C 85 23 78 */	mr r5, r4
/* 81363FE4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81363FE8 | 48 20 8A 29 */	bl fn_8156CA10
/* 81363FEC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81363FF0 | 7C 08 03 A6 */	mtlr r0
/* 81363FF4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81363FF8 | 4E 80 00 20 */	blr
.endfn shiftJISToUTF16__Q33ipl7utility13CharacterCodeFPwPCUcl

# .text:0xBA0 | 0x81363FFC | size: 0x30
# ipl::utility::CharacterCode::ANSIToUTF16(wchar_t*, const unsigned char*, long)
.fn ANSIToUTF16__Q33ipl7utility13CharacterCodeFPwPCUcl, global
/* 81363FFC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81364000 | 7C 08 02 A6 */	mflr r0
/* 81364004 | 38 C0 00 00 */	li r6, 0x0
/* 81364008 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136400C | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 81364010 | 7C 85 23 78 */	mr r5, r4
/* 81364014 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81364018 | 48 20 A4 79 */	bl fn_8156E490
/* 8136401C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81364020 | 7C 08 03 A6 */	mtlr r0
/* 81364024 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81364028 | 4E 80 00 20 */	blr
.endfn ANSIToUTF16__Q33ipl7utility13CharacterCodeFPwPCUcl

# .text:0xBD0 | 0x8136402C | size: 0xA4
# ipl::utility::CharacterCode::UTF16ToANSI(unsigned char*, const wchar_t*, long)
.fn UTF16ToANSI__Q33ipl7utility13CharacterCodeFPUcPCwl, global
/* 8136402C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81364030 | 7C 08 02 A6 */	mflr r0
/* 81364034 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81364038 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136403C | 48 29 54 89 */	bl _savegpr_28
/* 81364040 | 7C 9D 23 78 */	mr r29, r4
/* 81364044 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 81364048 | 7C BE 2B 78 */	mr r30, r5
/* 8136404C | 7C 7C 1B 78 */	mr r28, r3
/* 81364050 | 7F A5 EB 78 */	mr r5, r29
/* 81364054 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81364058 | 38 C0 00 00 */	li r6, 0x0
/* 8136405C | 48 20 A4 45 */	bl fn_8156E4A0
/* 81364060 | 3B E0 00 20 */	li r31, 0x20
/* 81364064 | 48 00 00 4C */	b .L_813640B0
.L_81364068:
/* 81364068 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 8136406C | 41 82 00 4C */	beq .L_813640B8
/* 81364070 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 81364074 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81364078 | 7F C3 F0 51 */	subf. r30, r3, r30
/* 8136407C | 54 00 08 3C */	slwi r0, r0, 1
/* 81364080 | 7F 9C 1A 14 */	add r28, r28, r3
/* 81364084 | 7F BD 02 14 */	add r29, r29, r0
/* 81364088 | 40 81 00 10 */	ble .L_81364098
/* 8136408C | 9B FC 00 00 */	stb r31, 0x0(r28)
/* 81364090 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 81364094 | 3B DE FF FF */	subi r30, r30, 0x1
.L_81364098:
/* 81364098 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8136409C | 7F 83 E3 78 */	mr r3, r28
/* 813640A0 | 7F A5 EB 78 */	mr r5, r29
/* 813640A4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813640A8 | 38 C0 00 00 */	li r6, 0x0
/* 813640AC | 48 20 A3 F5 */	bl fn_8156E4A0
.L_813640B0:
/* 813640B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813640B4 | 40 82 FF B4 */	bne .L_81364068
.L_813640B8:
/* 813640B8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813640BC | 48 29 54 55 */	bl _restgpr_28
/* 813640C0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813640C4 | 7C 08 03 A6 */	mtlr r0
/* 813640C8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813640CC | 4E 80 00 20 */	blr
.endfn UTF16ToANSI__Q33ipl7utility13CharacterCodeFPUcPCwl

# .text:0xC74 | 0x813640D0 | size: 0x30
# ipl::utility::CharacterCode::UTF8ToUTF16(wchar_t*, const char*, long)
.fn UTF8ToUTF16__Q33ipl7utility13CharacterCodeFPwPCcl, global
/* 813640D0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813640D4 | 7C 08 02 A6 */	mflr r0
/* 813640D8 | 38 C0 00 00 */	li r6, 0x0
/* 813640DC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813640E0 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 813640E4 | 7C 85 23 78 */	mr r5, r4
/* 813640E8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813640EC | 48 20 71 0D */	bl fn_8156B1F8
/* 813640F0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813640F4 | 7C 08 03 A6 */	mtlr r0
/* 813640F8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813640FC | 4E 80 00 20 */	blr
.endfn UTF8ToUTF16__Q33ipl7utility13CharacterCodeFPwPCcl

# .text:0xCA4 | 0x81364100 | size: 0x30
# ipl::utility::CharacterCode::UTF16ToUTF8(char*, const wchar_t*, long)
.fn UTF16ToUTF8__Q33ipl7utility13CharacterCodeFPcPCwl, global
/* 81364100 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81364104 | 7C 08 02 A6 */	mflr r0
/* 81364108 | 38 C0 00 00 */	li r6, 0x0
/* 8136410C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81364110 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 81364114 | 7C 85 23 78 */	mr r5, r4
/* 81364118 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8136411C | 48 20 70 D5 */	bl fn_8156B1F0
/* 81364120 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81364124 | 7C 08 03 A6 */	mtlr r0
/* 81364128 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136412C | 4E 80 00 20 */	blr
.endfn UTF16ToUTF8__Q33ipl7utility13CharacterCodeFPcPCwl

# .text:0xCD4 | 0x81364130 | size: 0x8C
# ipl::utility::CharacterCode::ANSIToUTF8(char*, const unsigned char*)
.fn ANSIToUTF8__Q33ipl7utility13CharacterCodeFPcPCUc, global
/* 81364130 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81364134 | 7C 08 02 A6 */	mflr r0
/* 81364138 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8136413C | 39 61 00 30 */	addi r11, r1, 0x30
/* 81364140 | 48 29 53 85 */	bl _savegpr_28
/* 81364144 | 7C 7D 1B 78 */	mr r29, r3
/* 81364148 | 7C 9C 23 78 */	mr r28, r4
/* 8136414C | 3B C0 00 01 */	li r30, 0x1
/* 81364150 | 3B E0 00 03 */	li r31, 0x3
/* 81364154 | 48 00 00 44 */	b .L_81364198
.L_81364158:
/* 81364158 | 93 C1 00 14 */	stw r30, 0x14(r1)
/* 8136415C | 7F 85 E3 78 */	mr r5, r28
/* 81364160 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81364164 | 38 81 00 14 */	addi r4, r1, 0x14
/* 81364168 | 93 C1 00 10 */	stw r30, 0x10(r1)
/* 8136416C | 38 C1 00 10 */	addi r6, r1, 0x10
/* 81364170 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81364174 | 48 20 A3 1D */	bl fn_8156E490
/* 81364178 | 7F A3 EB 78 */	mr r3, r29
/* 8136417C | 38 81 00 0C */	addi r4, r1, 0xc
/* 81364180 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81364184 | 38 C1 00 14 */	addi r6, r1, 0x14
/* 81364188 | 48 20 70 69 */	bl fn_8156B1F0
/* 8136418C | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 81364190 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 81364194 | 7F BD 02 14 */	add r29, r29, r0
.L_81364198:
/* 81364198 | 88 1C 00 00 */	lbz r0, 0x0(r28)
/* 8136419C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813641A0 | 40 82 FF B8 */	bne .L_81364158
/* 813641A4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813641A8 | 48 29 53 69 */	bl _restgpr_28
/* 813641AC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813641B0 | 7C 08 03 A6 */	mtlr r0
/* 813641B4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813641B8 | 4E 80 00 20 */	blr
.endfn ANSIToUTF8__Q33ipl7utility13CharacterCodeFPcPCUc

# .text:0xD60 | 0x813641BC | size: 0x98
# ipl::utility::CharacterCode::ANSIToUTF8(char*, const unsigned char*, int)
.fn ANSIToUTF8__Q33ipl7utility13CharacterCodeFPcPCUci, global
/* 813641BC | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813641C0 | 7C 08 02 A6 */	mflr r0
/* 813641C4 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813641C8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813641CC | 48 29 52 F1 */	bl _savegpr_26
/* 813641D0 | 7C 7D 1B 78 */	mr r29, r3
/* 813641D4 | 7C 9C 23 78 */	mr r28, r4
/* 813641D8 | 7C BA 2B 78 */	mr r26, r5
/* 813641DC | 3B 60 00 00 */	li r27, 0x0
/* 813641E0 | 3B C0 00 01 */	li r30, 0x1
/* 813641E4 | 3B E0 00 03 */	li r31, 0x3
/* 813641E8 | 48 00 00 4C */	b .L_81364234
.L_813641EC:
/* 813641EC | 93 C1 00 14 */	stw r30, 0x14(r1)
/* 813641F0 | 7F 85 E3 78 */	mr r5, r28
/* 813641F4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813641F8 | 38 81 00 14 */	addi r4, r1, 0x14
/* 813641FC | 93 C1 00 10 */	stw r30, 0x10(r1)
/* 81364200 | 38 C1 00 10 */	addi r6, r1, 0x10
/* 81364204 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81364208 | 48 20 A2 89 */	bl fn_8156E490
/* 8136420C | 7F A3 EB 78 */	mr r3, r29
/* 81364210 | 38 81 00 0C */	addi r4, r1, 0xc
/* 81364214 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81364218 | 38 C1 00 14 */	addi r6, r1, 0x14
/* 8136421C | 48 20 6F D5 */	bl fn_8156B1F0
/* 81364220 | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 81364224 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81364228 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8136422C | 7F 9C 1A 14 */	add r28, r28, r3
/* 81364230 | 7F BD 02 14 */	add r29, r29, r0
.L_81364234:
/* 81364234 | 7C 1B D0 00 */	cmpw r27, r26
/* 81364238 | 41 80 FF B4 */	blt .L_813641EC
/* 8136423C | 39 61 00 30 */	addi r11, r1, 0x30
/* 81364240 | 48 29 52 C9 */	bl _restgpr_26
/* 81364244 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81364248 | 7C 08 03 A6 */	mtlr r0
/* 8136424C | 38 21 00 30 */	addi r1, r1, 0x30
/* 81364250 | 4E 80 00 20 */	blr
.endfn ANSIToUTF8__Q33ipl7utility13CharacterCodeFPcPCUci

# .text:0xDF8 | 0x81364254 | size: 0x90
# ipl::utility::CharacterCode::UTF8ToANSI(unsigned char*, const char*)
.fn UTF8ToANSI__Q33ipl7utility13CharacterCodeFPUcPCc, global
/* 81364254 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81364258 | 7C 08 02 A6 */	mflr r0
/* 8136425C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81364260 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81364264 | 48 29 52 61 */	bl _savegpr_28
/* 81364268 | 7C 7D 1B 78 */	mr r29, r3
/* 8136426C | 7C 9C 23 78 */	mr r28, r4
/* 81364270 | 3B C0 00 01 */	li r30, 0x1
/* 81364274 | 3B E0 00 03 */	li r31, 0x3
/* 81364278 | 48 00 00 48 */	b .L_813642C0
.L_8136427C:
/* 8136427C | 93 C1 00 14 */	stw r30, 0x14(r1)
/* 81364280 | 7F 85 E3 78 */	mr r5, r28
/* 81364284 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81364288 | 38 81 00 14 */	addi r4, r1, 0x14
/* 8136428C | 93 C1 00 10 */	stw r30, 0x10(r1)
/* 81364290 | 38 C1 00 0C */	addi r6, r1, 0xc
/* 81364294 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81364298 | 48 20 6F 61 */	bl fn_8156B1F8
/* 8136429C | 7F A3 EB 78 */	mr r3, r29
/* 813642A0 | 38 81 00 10 */	addi r4, r1, 0x10
/* 813642A4 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813642A8 | 38 C1 00 14 */	addi r6, r1, 0x14
/* 813642AC | 48 20 A1 F5 */	bl fn_8156E4A0
/* 813642B0 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 813642B4 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 813642B8 | 7F 9C 1A 14 */	add r28, r28, r3
/* 813642BC | 7F BD 02 14 */	add r29, r29, r0
.L_813642C0:
/* 813642C0 | 88 1C 00 00 */	lbz r0, 0x0(r28)
/* 813642C4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813642C8 | 40 82 FF B4 */	bne .L_8136427C
/* 813642CC | 39 61 00 30 */	addi r11, r1, 0x30
/* 813642D0 | 48 29 52 41 */	bl _restgpr_28
/* 813642D4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813642D8 | 7C 08 03 A6 */	mtlr r0
/* 813642DC | 38 21 00 30 */	addi r1, r1, 0x30
/* 813642E0 | 4E 80 00 20 */	blr
.endfn UTF8ToANSI__Q33ipl7utility13CharacterCodeFPUcPCc

# .text:0xE88 | 0x813642E4 | size: 0xF4
# ipl::utility::CharacterCode::UTF16ToU32(unsigned long*, const wchar_t*)
.fn UTF16ToU32__Q33ipl7utility13CharacterCodeFPUlPCw, global
/* 813642E4 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 813642E8 | 7C 08 02 A6 */	mflr r0
/* 813642EC | 90 01 00 54 */	stw r0, 0x54(r1)
/* 813642F0 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813642F4 | DB E1 00 48 */	stfd f31, 0x48(r1)
/* 813642F8 | DB C1 00 40 */	stfd f30, 0x40(r1)
/* 813642FC | 48 29 51 BD */	bl _savegpr_25
/* 81364300 | 7C 9A 23 78 */	mr r26, r4
/* 81364304 | 7C 79 1B 78 */	mr r25, r3
/* 81364308 | 7F 43 D3 78 */	mr r3, r26
/* 8136430C | 3B A0 00 00 */	li r29, 0x0
/* 81364310 | 3B 80 00 00 */	li r28, 0x0
/* 81364314 | 48 00 00 0C */	b .L_81364320
.L_81364318:
/* 81364318 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 8136431C | 38 63 00 02 */	addi r3, r3, 0x2
.L_81364320:
/* 81364320 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 81364324 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81364328 | 40 82 FF F0 */	bne .L_81364318
/* 8136432C | CB C2 82 40 */	lfd f30, lbl_81694640@sda21(r0)
/* 81364330 | 3B 60 00 00 */	li r27, 0x0
/* 81364334 | CB E2 82 48 */	lfd f31, lbl_81694648@sda21(r0)
/* 81364338 | 3B E0 00 00 */	li r31, 0x0
/* 8136433C | 3F C0 43 30 */	lis r30, 0x4330
/* 81364340 | 48 00 00 6C */	b .L_813643AC
.L_81364344:
/* 81364344 | 7C 7B E0 50 */	subf r3, r27, r28
/* 81364348 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8136434C | 38 03 FF FF */	subi r0, r3, 0x1
/* 81364350 | C8 22 82 38 */	lfd f1, lbl_81694638@sda21(r0)
/* 81364354 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 81364358 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8136435C | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 81364360 | FC 40 F0 28 */	fsub f2, f0, f30
/* 81364364 | 48 2A 89 CD */	bl pow
/* 81364368 | 7C 7A FA 2E */	lhzx r3, r26, r31
/* 8136436C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81364370 | 38 03 FF D0 */	subi r0, r3, 0x30
/* 81364374 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 81364378 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8136437C | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 81364380 | C8 01 00 18 */	lfd f0, 0x18(r1)
/* 81364384 | 93 C1 00 10 */	stw r30, 0x10(r1)
/* 81364388 | FC 00 F0 28 */	fsub f0, f0, f30
/* 8136438C | C8 41 00 10 */	lfd f2, 0x10(r1)
/* 81364390 | FC 00 00 72 */	fmul f0, f0, f1
/* 81364394 | FC 22 F8 28 */	fsub f1, f2, f31
/* 81364398 | FC 21 00 2A */	fadd f1, f1, f0
/* 8136439C | 48 29 4F FD */	bl __cvt_fp2unsigned
/* 813643A0 | 7C 7D 1B 78 */	mr r29, r3
/* 813643A4 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 813643A8 | 3B FF 00 02 */	addi r31, r31, 0x2
.L_813643AC:
/* 813643AC | 7C 1B E0 00 */	cmpw r27, r28
/* 813643B0 | 41 80 FF 94 */	blt .L_81364344
/* 813643B4 | 93 B9 00 00 */	stw r29, 0x0(r25)
/* 813643B8 | CB E1 00 48 */	lfd f31, 0x48(r1)
/* 813643BC | CB C1 00 40 */	lfd f30, 0x40(r1)
/* 813643C0 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813643C4 | 48 29 51 41 */	bl _restgpr_25
/* 813643C8 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 813643CC | 7C 08 03 A6 */	mtlr r0
/* 813643D0 | 38 21 00 50 */	addi r1, r1, 0x50
/* 813643D4 | 4E 80 00 20 */	blr
.endfn UTF16ToU32__Q33ipl7utility13CharacterCodeFPUlPCw

# .text:0xF7C | 0x813643D8 | size: 0x1C
# ipl::utility::CharacterCode::WiiIdToUTF16(wchar_t*, unsigned long long)
.fn WiiIdToUTF16__Q33ipl7utility13CharacterCodeFPwUx, global
/* 813643D8 | 3D 20 81 64 */	lis r9, lbl_81641258@ha
/* 813643DC | 7C A7 2B 78 */	mr r7, r5
/* 813643E0 | 7C C8 33 78 */	mr r8, r6
/* 813643E4 | 38 80 00 11 */	li r4, 0x11
/* 813643E8 | 38 A9 12 58 */	addi r5, r9, lbl_81641258@l
/* 813643EC | 4C C6 31 82 */	crclr cr1eq
/* 813643F0 | 48 2A 41 E0 */	b swprintf
.endfn WiiIdToUTF16__Q33ipl7utility13CharacterCodeFPwUx

# .text:0xF98 | 0x813643F4 | size: 0x30
# ipl::utility::CharacterCode::changeEndian(wchar_t*, int)
.fn changeEndian__Q33ipl7utility13CharacterCodeFPwi, global
/* 813643F4 | 38 A0 00 00 */	li r5, 0x0
/* 813643F8 | 7C 89 03 A6 */	mtctr r4
/* 813643FC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81364400 | 4C 81 00 20 */	blelr
.L_81364404:
/* 81364404 | 7C 83 2A 14 */	add r4, r3, r5
/* 81364408 | 7C C3 28 AE */	lbzx r6, r3, r5
/* 8136440C | 88 04 00 01 */	lbz r0, 0x1(r4)
/* 81364410 | 7C 03 29 AE */	stbx r0, r3, r5
/* 81364414 | 38 A5 00 02 */	addi r5, r5, 0x2
/* 81364418 | 98 C4 00 01 */	stb r6, 0x1(r4)
/* 8136441C | 42 00 FF E8 */	bdnz .L_81364404
/* 81364420 | 4E 80 00 20 */	blr
.endfn changeEndian__Q33ipl7utility13CharacterCodeFPwi

# .text:0xFC8 | 0x81364424 | size: 0x7C
# ipl::utility::timer::set_msec(int)
.fn set_msec__Q33ipl7utility5timerFi, global
/* 81364424 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81364428 | 7C 08 02 A6 */	mflr r0
/* 8136442C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81364430 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81364434 | 7C 9F 23 78 */	mr r31, r4
/* 81364438 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8136443C | 7C 7E 1B 78 */	mr r30, r3
/* 81364440 | 48 1D 18 41 */	bl OSGetTime
/* 81364444 | 3C A0 80 00 */	lis r5, 0x8000
/* 81364448 | 38 C0 00 00 */	li r6, 0x0
/* 8136444C | 80 E5 00 F8 */	lwz r7, 0xf8(r5)
/* 81364450 | 38 A0 03 E8 */	li r5, 0x3e8
/* 81364454 | 7C C6 F9 D6 */	mullw r6, r6, r31
/* 81364458 | 7F E0 FE 70 */	srawi r0, r31, 31
/* 8136445C | 54 E7 F0 BE */	srwi r7, r7, 2
/* 81364460 | 7D 07 2B 96 */	divwu r8, r7, r5
/* 81364464 | 7C A8 F8 16 */	mulhwu r5, r8, r31
/* 81364468 | 7C E8 F9 D6 */	mullw r7, r8, r31
/* 8136446C | 7C C5 32 14 */	add r6, r5, r6
/* 81364470 | 7C A8 01 D6 */	mullw r5, r8, r0
/* 81364474 | 7C 07 20 14 */	addc r0, r7, r4
/* 81364478 | 90 1E 00 04 */	stw r0, 0x4(r30)
/* 8136447C | 7C C6 2A 14 */	add r6, r6, r5
/* 81364480 | 7C 06 19 14 */	adde r0, r6, r3
/* 81364484 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 81364488 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136448C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81364490 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81364494 | 7C 08 03 A6 */	mtlr r0
/* 81364498 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136449C | 4E 80 00 20 */	blr
.endfn set_msec__Q33ipl7utility5timerFi

# .text:0x1044 | 0x813644A0 | size: 0x4C
# ipl::utility::timer::operator()()
.fn __cl__Q33ipl7utility5timerFv, global
/* 813644A0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813644A4 | 7C 08 02 A6 */	mflr r0
/* 813644A8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813644AC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813644B0 | 7C 7F 1B 78 */	mr r31, r3
/* 813644B4 | 48 1D 17 CD */	bl OSGetTime
/* 813644B8 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 813644BC | 6C 65 80 00 */	xoris r5, r3, 0x8000
/* 813644C0 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 813644C4 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 813644C8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813644CC | 7C 64 18 10 */	subfc r3, r4, r3
/* 813644D0 | 7C A5 01 10 */	subfe r5, r5, r0
/* 813644D4 | 7C A0 01 10 */	subfe r5, r0, r0
/* 813644D8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813644DC | 7C 65 00 D0 */	neg r3, r5
/* 813644E0 | 7C 08 03 A6 */	mtlr r0
/* 813644E4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813644E8 | 4E 80 00 20 */	blr
.endfn __cl__Q33ipl7utility5timerFv

# .text:0x1090 | 0x813644EC | size: 0xB8
# ipl::utility::layout::set_string(nw4r::lyt::Pane*, const wchar_t*)
.fn set_string__Q33ipl7utility6layoutFPQ34nw4r3lyt4PanePCw, global
/* 813644EC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813644F0 | 7C 08 02 A6 */	mflr r0
/* 813644F4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813644F8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813644FC | 48 29 4F CD */	bl _savegpr_29
/* 81364500 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81364504 | 7C 7D 1B 78 */	mr r29, r3
/* 81364508 | 7C 9E 23 78 */	mr r30, r4
/* 8136450C | 3B ED AF 78 */	li r31, lbl_81698FB8@sda21
/* 81364510 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81364514 | 7D 89 03 A6 */	mtctr r12
/* 81364518 | 4E 80 04 21 */	bctrl
/* 8136451C | 48 00 00 18 */	b .L_81364534
.L_81364520:
/* 81364520 | 7C 03 F8 40 */	cmplw r3, r31
/* 81364524 | 40 82 00 0C */	bne .L_81364530
/* 81364528 | 38 00 00 01 */	li r0, 0x1
/* 8136452C | 48 00 00 14 */	b .L_81364540
.L_81364530:
/* 81364530 | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_81364534:
/* 81364534 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81364538 | 40 82 FF E8 */	bne .L_81364520
/* 8136453C | 38 00 00 00 */	li r0, 0x0
.L_81364540:
/* 81364540 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81364544 | 41 82 00 08 */	beq .L_8136454C
/* 81364548 | 48 00 00 08 */	b .L_81364550
.L_8136454C:
/* 8136454C | 3B A0 00 00 */	li r29, 0x0
.L_81364550:
/* 81364550 | 7F C3 F3 78 */	mr r3, r30
/* 81364554 | 48 2A 41 59 */	bl fn_816086AC
/* 81364558 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8136455C | 54 64 04 3E */	clrlwi r4, r3, 16
/* 81364560 | 7F A3 EB 78 */	mr r3, r29
/* 81364564 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 81364568 | 7D 89 03 A6 */	mtctr r12
/* 8136456C | 4E 80 04 21 */	bctrl
/* 81364570 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81364574 | 7F A3 EB 78 */	mr r3, r29
/* 81364578 | 7F C4 F3 78 */	mr r4, r30
/* 8136457C | 38 A0 00 00 */	li r5, 0x0
/* 81364580 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 81364584 | 7D 89 03 A6 */	mtctr r12
/* 81364588 | 4E 80 04 21 */	bctrl
/* 8136458C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81364590 | 48 29 4F 85 */	bl _restgpr_29
/* 81364594 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81364598 | 7C 08 03 A6 */	mtlr r0
/* 8136459C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813645A0 | 4E 80 00 20 */	blr
.endfn set_string__Q33ipl7utility6layoutFPQ34nw4r3lyt4PanePCw

# .text:0x1148 | 0x813645A4 | size: 0xC
# ipl::utility::layout::set_texture(nw4r::lyt::Material*, const _GXTexObj&)
.fn set_texture__Q33ipl7utility6layoutFPQ34nw4r3lyt8MaterialRC9_GXTexObj, global
/* 813645A4 | 7C 85 23 78 */	mr r5, r4
/* 813645A8 | 38 80 00 00 */	li r4, 0x0
/* 813645AC | 48 1C 38 70 */	b fn_81527E1C
.endfn set_texture__Q33ipl7utility6layoutFPQ34nw4r3lyt8MaterialRC9_GXTexObj

# .text:0x1154 | 0x813645B0 | size: 0x44
# ipl::utility::layout::set_texture(nw4r::lyt::Material*, const nw4r::lyt::Material*, unsigned char)
.fn set_texture__Q33ipl7utility6layoutFPQ34nw4r3lyt8MaterialPCQ34nw4r3lyt8MaterialUc, global
/* 813645B0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813645B4 | 7C 08 02 A6 */	mflr r0
/* 813645B8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813645BC | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 813645C0 | 7C 7F 1B 78 */	mr r31, r3
/* 813645C4 | 7C 83 23 78 */	mr r3, r4
/* 813645C8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813645CC | 48 1C 37 61 */	bl fn_81527D2C
/* 813645D0 | 7F E3 FB 78 */	mr r3, r31
/* 813645D4 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813645D8 | 38 80 00 00 */	li r4, 0x0
/* 813645DC | 48 1C 38 41 */	bl fn_81527E1C
/* 813645E0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813645E4 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 813645E8 | 7C 08 03 A6 */	mtlr r0
/* 813645EC | 38 21 00 30 */	addi r1, r1, 0x30
/* 813645F0 | 4E 80 00 20 */	blr
.endfn set_texture__Q33ipl7utility6layoutFPQ34nw4r3lyt8MaterialPCQ34nw4r3lyt8MaterialUc

# .text:0x1198 | 0x813645F4 | size: 0x8C
# ipl::utility::get_cursor_pos(const ipl::math::VEC2&)
.fn get_cursor_pos__Q23ipl7utilityFRCQ33ipl4math4VEC2, global
/* 813645F4 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813645F8 | 7C 08 02 A6 */	mflr r0
/* 813645FC | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81364600 | 93 E1 00 3C */	stw r31, 0x3c(r1)
/* 81364604 | 7C 7F 1B 78 */	mr r31, r3
/* 81364608 | 38 61 00 28 */	addi r3, r1, 0x28
/* 8136460C | 4B FD 1E 1D */	bl __ct__Q34nw4r2ut4RectFv
/* 81364610 | 38 61 00 28 */	addi r3, r1, 0x28
/* 81364614 | 4B FD 13 05 */	bl getProjectionRect__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 81364618 | 38 61 00 18 */	addi r3, r1, 0x18
/* 8136461C | 4B FD 1E 0D */	bl __ct__Q34nw4r2ut4RectFv
/* 81364620 | 38 61 00 18 */	addi r3, r1, 0x18
/* 81364624 | 4B FD 13 29 */	bl getProjectionRect4x3__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 81364628 | C0 61 00 30 */	lfs f3, 0x30(r1)
/* 8136462C | 38 61 00 08 */	addi r3, r1, 0x8
/* 81364630 | C0 01 00 28 */	lfs f0, 0x28(r1)
/* 81364634 | C0 41 00 20 */	lfs f2, 0x20(r1)
/* 81364638 | C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8136463C | EC 63 00 28 */	fsubs f3, f3, f0
/* 81364640 | C0 1F 00 04 */	lfs f0, 0x4(r31)
/* 81364644 | EC 82 08 28 */	fsubs f4, f2, f1
/* 81364648 | C0 3F 00 00 */	lfs f1, 0x0(r31)
/* 8136464C | FC 40 00 50 */	fneg f2, f0
/* 81364650 | EC 04 18 24 */	fdivs f0, f4, f3
/* 81364654 | EC 21 00 32 */	fmuls f1, f1, f0
/* 81364658 | 4B FD 1F 11 */	bl __ct__Q33ipl4math4VEC2Fff
/* 8136465C | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 81364660 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81364664 | 83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 81364668 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8136466C | 90 81 00 14 */	stw r4, 0x14(r1)
/* 81364670 | 90 61 00 10 */	stw r3, 0x10(r1)
/* 81364674 | 7C 08 03 A6 */	mtlr r0
/* 81364678 | 38 21 00 40 */	addi r1, r1, 0x40
/* 8136467C | 4E 80 00 20 */	blr
.endfn get_cursor_pos__Q23ipl7utilityFRCQ33ipl4math4VEC2

# .text:0x1224 | 0x81364680 | size: 0x118
# ipl::utility::tpl_validity::tpl_validity(TPLPalette*, unsigned long)
.fn __ct__Q33ipl7utility12tpl_validityFP10TPLPaletteUl, global
/* 81364680 | 38 00 00 00 */	li r0, 0x0
/* 81364684 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81364688 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8136468C | 90 03 00 04 */	stw r0, 0x4(r3)
/* 81364690 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 81364694 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 81364698 | 90 03 00 10 */	stw r0, 0x10(r3)
/* 8136469C | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813646A0 | 4D 82 00 20 */	beqlr
/* 813646A4 | 80 C4 00 00 */	lwz r6, 0x0(r4)
/* 813646A8 | 3C 06 FF E0 */	subis r0, r6, 0x20
/* 813646AC | 28 00 AF 30 */	cmplwi r0, 0xaf30
/* 813646B0 | 4C 82 00 20 */	bnelr
/* 813646B4 | 80 C4 00 08 */	lwz r6, 0x8(r4)
/* 813646B8 | 3C 00 80 00 */	lis r0, 0x8000
/* 813646BC | 7C 06 00 40 */	cmplw r6, r0
/* 813646C0 | 40 80 00 94 */	bge .L_81364754
/* 813646C4 | 7C 06 28 40 */	cmplw r6, r5
/* 813646C8 | 4C 80 00 20 */	bgelr
/* 813646CC | 7C C6 22 15 */	add. r6, r6, r4
/* 813646D0 | 90 C3 00 04 */	stw r6, 0x4(r3)
/* 813646D4 | 41 82 00 38 */	beq .L_8136470C
/* 813646D8 | 80 06 00 00 */	lwz r0, 0x0(r6)
/* 813646DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813646E0 | 41 82 00 2C */	beq .L_8136470C
/* 813646E4 | 7C 00 28 40 */	cmplw r0, r5
/* 813646E8 | 40 80 00 24 */	bge .L_8136470C
/* 813646EC | 7C C0 22 15 */	add. r6, r0, r4
/* 813646F0 | 90 C3 00 08 */	stw r6, 0x8(r3)
/* 813646F4 | 41 82 00 18 */	beq .L_8136470C
/* 813646F8 | 80 06 00 08 */	lwz r0, 0x8(r6)
/* 813646FC | 7C 00 28 40 */	cmplw r0, r5
/* 81364700 | 40 80 00 0C */	bge .L_8136470C
/* 81364704 | 7C 00 22 14 */	add r0, r0, r4
/* 81364708 | 90 03 00 10 */	stw r0, 0x10(r3)
.L_8136470C:
/* 8136470C | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 81364710 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81364714 | 4D 82 00 20 */	beqlr
/* 81364718 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 8136471C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81364720 | 4D 82 00 20 */	beqlr
/* 81364724 | 7C 04 28 40 */	cmplw r4, r5
/* 81364728 | 4C 80 00 20 */	bgelr
/* 8136472C | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81364730 | 7C 84 02 15 */	add. r4, r4, r0
/* 81364734 | 90 83 00 0C */	stw r4, 0xc(r3)
/* 81364738 | 4D 82 00 20 */	beqlr
/* 8136473C | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 81364740 | 7C 04 28 40 */	cmplw r4, r5
/* 81364744 | 4C 80 00 20 */	bgelr
/* 81364748 | 7C 04 02 14 */	add r0, r4, r0
/* 8136474C | 90 03 00 14 */	stw r0, 0x14(r3)
/* 81364750 | 4E 80 00 20 */	blr
.L_81364754:
/* 81364754 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81364758 | 90 C3 00 04 */	stw r6, 0x4(r3)
/* 8136475C | 4D 82 00 20 */	beqlr
/* 81364760 | 80 86 00 00 */	lwz r4, 0x0(r6)
/* 81364764 | 90 83 00 08 */	stw r4, 0x8(r3)
/* 81364768 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8136476C | 80 06 00 04 */	lwz r0, 0x4(r6)
/* 81364770 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 81364774 | 41 82 00 0C */	beq .L_81364780
/* 81364778 | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 8136477C | 90 03 00 10 */	stw r0, 0x10(r3)
.L_81364780:
/* 81364780 | 80 83 00 0C */	lwz r4, 0xc(r3)
/* 81364784 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81364788 | 4D 82 00 20 */	beqlr
/* 8136478C | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 81364790 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 81364794 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl7utility12tpl_validityFP10TPLPaletteUl

# .text:0x133C | 0x81364798 | size: 0x294
# ipl::utility::tpl_validity::is_valid_cmn()
.fn is_valid_cmn__Q33ipl7utility12tpl_validityFv, global
/* 81364798 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8136479C | 39 00 00 01 */	li r8, 0x1
/* 813647A0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813647A4 | 41 82 00 14 */	beq .L_813647B8
/* 813647A8 | 80 85 00 00 */	lwz r4, 0x0(r5)
/* 813647AC | 3C 04 FF E0 */	subis r0, r4, 0x20
/* 813647B0 | 28 00 AF 30 */	cmplwi r0, 0xaf30
/* 813647B4 | 41 82 00 0C */	beq .L_813647C0
.L_813647B8:
/* 813647B8 | 39 00 00 00 */	li r8, 0x0
/* 813647BC | 48 00 02 68 */	b .L_81364A24
.L_813647C0:
/* 813647C0 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813647C4 | 3D 25 00 10 */	addis r9, r5, 0x10
/* 813647C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813647CC | 41 82 00 10 */	beq .L_813647DC
/* 813647D0 | 80 E3 00 08 */	lwz r7, 0x8(r3)
/* 813647D4 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 813647D8 | 40 82 00 0C */	bne .L_813647E4
.L_813647DC:
/* 813647DC | 39 00 00 00 */	li r8, 0x0
/* 813647E0 | 48 00 02 44 */	b .L_81364A24
.L_813647E4:
/* 813647E4 | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 813647E8 | 54 80 06 FF */	clrlwi. r0, r4, 27
/* 813647EC | 41 82 00 0C */	beq .L_813647F8
/* 813647F0 | 39 00 00 00 */	li r8, 0x0
/* 813647F4 | 48 00 02 30 */	b .L_81364A24
.L_813647F8:
/* 813647F8 | 80 C3 00 14 */	lwz r6, 0x14(r3)
/* 813647FC | 54 C0 06 FF */	clrlwi. r0, r6, 27
/* 81364800 | 41 82 00 0C */	beq .L_8136480C
/* 81364804 | 39 00 00 00 */	li r8, 0x0
/* 81364808 | 48 00 02 1C */	b .L_81364A24
.L_8136480C:
/* 8136480C | 7C 04 28 40 */	cmplw r4, r5
/* 81364810 | 41 80 00 0C */	blt .L_8136481C
/* 81364814 | 7C 04 48 40 */	cmplw r4, r9
/* 81364818 | 40 81 00 0C */	ble .L_81364824
.L_8136481C:
/* 8136481C | 39 00 00 00 */	li r8, 0x0
/* 81364820 | 48 00 02 04 */	b .L_81364A24
.L_81364824:
/* 81364824 | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 81364828 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136482C | 41 82 00 1C */	beq .L_81364848
/* 81364830 | 7C 06 28 40 */	cmplw r6, r5
/* 81364834 | 41 80 00 0C */	blt .L_81364840
/* 81364838 | 7C 06 48 40 */	cmplw r6, r9
/* 8136483C | 40 81 00 0C */	ble .L_81364848
.L_81364840:
/* 81364840 | 39 00 00 00 */	li r8, 0x0
/* 81364844 | 48 00 01 E0 */	b .L_81364A24
.L_81364848:
/* 81364848 | A0 07 00 00 */	lhz r0, 0x0(r7)
/* 8136484C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81364850 | 41 82 00 10 */	beq .L_81364860
/* 81364854 | A0 07 00 02 */	lhz r0, 0x2(r7)
/* 81364858 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136485C | 40 82 00 0C */	bne .L_81364868
.L_81364860:
/* 81364860 | 39 00 00 00 */	li r8, 0x0
/* 81364864 | 48 00 01 C0 */	b .L_81364A24
.L_81364868:
/* 81364868 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136486C | 40 82 00 50 */	bne .L_813648BC
/* 81364870 | 80 07 00 04 */	lwz r0, 0x4(r7)
/* 81364874 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81364878 | 41 82 00 44 */	beq .L_813648BC
/* 8136487C | 28 00 00 01 */	cmplwi r0, 0x1
/* 81364880 | 41 82 00 3C */	beq .L_813648BC
/* 81364884 | 28 00 00 02 */	cmplwi r0, 0x2
/* 81364888 | 41 82 00 34 */	beq .L_813648BC
/* 8136488C | 28 00 00 03 */	cmplwi r0, 0x3
/* 81364890 | 41 82 00 2C */	beq .L_813648BC
/* 81364894 | 28 00 00 04 */	cmplwi r0, 0x4
/* 81364898 | 41 82 00 24 */	beq .L_813648BC
/* 8136489C | 28 00 00 05 */	cmplwi r0, 0x5
/* 813648A0 | 41 82 00 1C */	beq .L_813648BC
/* 813648A4 | 28 00 00 0E */	cmplwi r0, 0xe
/* 813648A8 | 41 82 00 14 */	beq .L_813648BC
/* 813648AC | 28 00 00 06 */	cmplwi r0, 0x6
/* 813648B0 | 41 82 00 0C */	beq .L_813648BC
/* 813648B4 | 39 00 00 00 */	li r8, 0x0
/* 813648B8 | 48 00 01 6C */	b .L_81364A24
.L_813648BC:
/* 813648BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813648C0 | 41 82 00 20 */	beq .L_813648E0
/* 813648C4 | 80 07 00 04 */	lwz r0, 0x4(r7)
/* 813648C8 | 28 00 00 08 */	cmplwi r0, 0x8
/* 813648CC | 41 82 00 14 */	beq .L_813648E0
/* 813648D0 | 28 00 00 09 */	cmplwi r0, 0x9
/* 813648D4 | 41 82 00 0C */	beq .L_813648E0
/* 813648D8 | 39 00 00 00 */	li r8, 0x0
/* 813648DC | 48 00 01 48 */	b .L_81364A24
.L_813648E0:
/* 813648E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813648E4 | 41 82 00 28 */	beq .L_8136490C
/* 813648E8 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813648EC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813648F0 | 41 82 00 1C */	beq .L_8136490C
/* 813648F4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813648F8 | 41 82 00 14 */	beq .L_8136490C
/* 813648FC | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81364900 | 41 82 00 0C */	beq .L_8136490C
/* 81364904 | 39 00 00 00 */	li r8, 0x0
/* 81364908 | 48 00 01 1C */	b .L_81364A24
.L_8136490C:
/* 8136490C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81364910 | 41 82 00 18 */	beq .L_81364928
/* 81364914 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 81364918 | 28 00 40 00 */	cmplwi r0, 0x4000
/* 8136491C | 40 81 00 0C */	ble .L_81364928
/* 81364920 | 39 00 00 00 */	li r8, 0x0
/* 81364924 | 48 00 01 00 */	b .L_81364A24
.L_81364928:
/* 81364928 | 80 07 00 0C */	lwz r0, 0xc(r7)
/* 8136492C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81364930 | 41 82 00 1C */	beq .L_8136494C
/* 81364934 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81364938 | 41 82 00 14 */	beq .L_8136494C
/* 8136493C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81364940 | 41 82 00 0C */	beq .L_8136494C
/* 81364944 | 39 00 00 00 */	li r8, 0x0
/* 81364948 | 48 00 00 DC */	b .L_81364A24
.L_8136494C:
/* 8136494C | 80 07 00 10 */	lwz r0, 0x10(r7)
/* 81364950 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81364954 | 41 82 00 1C */	beq .L_81364970
/* 81364958 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8136495C | 41 82 00 14 */	beq .L_81364970
/* 81364960 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81364964 | 41 82 00 0C */	beq .L_81364970
/* 81364968 | 39 00 00 00 */	li r8, 0x0
/* 8136496C | 48 00 00 B8 */	b .L_81364A24
.L_81364970:
/* 81364970 | 88 07 00 21 */	lbz r0, 0x21(r7)
/* 81364974 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81364978 | 40 82 00 10 */	bne .L_81364988
/* 8136497C | 88 07 00 22 */	lbz r0, 0x22(r7)
/* 81364980 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81364984 | 41 82 00 0C */	beq .L_81364990
.L_81364988:
/* 81364988 | 39 00 00 00 */	li r8, 0x0
/* 8136498C | 48 00 00 98 */	b .L_81364A24
.L_81364990:
/* 81364990 | 80 07 00 14 */	lwz r0, 0x14(r7)
/* 81364994 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81364998 | 41 82 00 34 */	beq .L_813649CC
/* 8136499C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813649A0 | 41 82 00 2C */	beq .L_813649CC
/* 813649A4 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813649A8 | 41 82 00 24 */	beq .L_813649CC
/* 813649AC | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813649B0 | 41 82 00 1C */	beq .L_813649CC
/* 813649B4 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813649B8 | 41 82 00 14 */	beq .L_813649CC
/* 813649BC | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813649C0 | 41 82 00 0C */	beq .L_813649CC
/* 813649C4 | 39 00 00 00 */	li r8, 0x0
/* 813649C8 | 48 00 00 5C */	b .L_81364A24
.L_813649CC:
/* 813649CC | 80 07 00 18 */	lwz r0, 0x18(r7)
/* 813649D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813649D4 | 41 82 00 14 */	beq .L_813649E8
/* 813649D8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813649DC | 41 82 00 0C */	beq .L_813649E8
/* 813649E0 | 39 00 00 00 */	li r8, 0x0
/* 813649E4 | 48 00 00 40 */	b .L_81364A24
.L_813649E8:
/* 813649E8 | C0 27 00 1C */	lfs f1, 0x1c(r7)
/* 813649EC | C0 02 82 50 */	lfs f0, lbl_81694650@sda21(r0)
/* 813649F0 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 813649F4 | 41 80 00 10 */	blt .L_81364A04
/* 813649F8 | C0 02 82 54 */	lfs f0, lbl_81694654@sda21(r0)
/* 813649FC | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81364A00 | 40 81 00 0C */	ble .L_81364A0C
.L_81364A04:
/* 81364A04 | 39 00 00 00 */	li r8, 0x0
/* 81364A08 | 48 00 00 1C */	b .L_81364A24
.L_81364A0C:
/* 81364A0C | 88 07 00 20 */	lbz r0, 0x20(r7)
/* 81364A10 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81364A14 | 41 82 00 10 */	beq .L_81364A24
/* 81364A18 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81364A1C | 41 82 00 08 */	beq .L_81364A24
/* 81364A20 | 39 00 00 00 */	li r8, 0x0
.L_81364A24:
/* 81364A24 | 7D 03 43 78 */	mr r3, r8
/* 81364A28 | 4E 80 00 20 */	blr
.endfn is_valid_cmn__Q33ipl7utility12tpl_validityFv

# .text:0x15D0 | 0x81364A2C | size: 0x4
# ipl::utility::tpl_validity::is_valid()
.fn is_valid__Q33ipl7utility12tpl_validityFv, global
/* 81364A2C | 4B FF FD 6C */	b is_valid_cmn__Q33ipl7utility12tpl_validityFv
.endfn is_valid__Q33ipl7utility12tpl_validityFv

# .text:0x15D4 | 0x81364A30 | size: 0x94
# ipl::utility::tpl_validity::is_valid_for_ltx()
.fn is_valid_for_ltx__Q33ipl7utility12tpl_validityFv, global
/* 81364A30 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81364A34 | 7C 08 02 A6 */	mflr r0
/* 81364A38 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81364A3C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81364A40 | 7C 7F 1B 78 */	mr r31, r3
/* 81364A44 | 4B FF FD 55 */	bl is_valid_cmn__Q33ipl7utility12tpl_validityFv
/* 81364A48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81364A4C | 41 82 00 64 */	beq .L_81364AB0
/* 81364A50 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 81364A54 | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 81364A58 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81364A5C | 41 82 00 0C */	beq .L_81364A68
/* 81364A60 | 38 60 00 00 */	li r3, 0x0
/* 81364A64 | 48 00 00 4C */	b .L_81364AB0
.L_81364A68:
/* 81364A68 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 81364A6C | A0 04 00 00 */	lhz r0, 0x0(r4)
/* 81364A70 | 28 00 01 00 */	cmplwi r0, 0x100
/* 81364A74 | 40 81 00 0C */	ble .L_81364A80
/* 81364A78 | 38 60 00 00 */	li r3, 0x0
/* 81364A7C | 48 00 00 34 */	b .L_81364AB0
.L_81364A80:
/* 81364A80 | A0 04 00 02 */	lhz r0, 0x2(r4)
/* 81364A84 | 28 00 02 00 */	cmplwi r0, 0x200
/* 81364A88 | 40 81 00 0C */	ble .L_81364A94
/* 81364A8C | 38 60 00 00 */	li r3, 0x0
/* 81364A90 | 48 00 00 20 */	b .L_81364AB0
.L_81364A94:
/* 81364A94 | 80 1F 00 0C */	lwz r0, 0xc(r31)
/* 81364A98 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81364A9C | 40 82 00 14 */	bne .L_81364AB0
/* 81364AA0 | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 81364AA4 | 28 00 00 06 */	cmplwi r0, 0x6
/* 81364AA8 | 40 82 00 08 */	bne .L_81364AB0
/* 81364AAC | 38 60 00 00 */	li r3, 0x0
.L_81364AB0:
/* 81364AB0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81364AB4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81364AB8 | 7C 08 03 A6 */	mtlr r0
/* 81364ABC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81364AC0 | 4E 80 00 20 */	blr
.endfn is_valid_for_ltx__Q33ipl7utility12tpl_validityFv

# .text:0x1668 | 0x81364AC4 | size: 0x1C
# ipl::utility::memcpy_s(void*, unsigned long, const void*, unsigned long)
.fn memcpy_s__Q23ipl7utilityFPvUlPCvUl, global
/* 81364AC4 | 7C 80 23 78 */	mr r0, r4
/* 81364AC8 | 7C A4 2B 78 */	mr r4, r5
/* 81364ACC | 7C 00 30 40 */	cmplw r0, r6
/* 81364AD0 | 40 80 00 08 */	bge .L_81364AD8
/* 81364AD4 | 7C 06 03 78 */	mr r6, r0
.L_81364AD8:
/* 81364AD8 | 7C C5 33 78 */	mr r5, r6
/* 81364ADC | 4B FC B7 54 */	b memcpy
.endfn memcpy_s__Q23ipl7utilityFPvUlPCvUl

# .text:0x1684 | 0x81364AE0 | size: 0x38
# ipl::utility::wpad::isIncreaseConnectedWpad(unsigned long, unsigned long)
.fn isIncreaseConnectedWpad__Q33ipl7utility4wpadFUlUl, global
/* 81364AE0 | 38 00 00 04 */	li r0, 0x4
/* 81364AE4 | 7C 09 03 A6 */	mtctr r0
.L_81364AE8:
/* 81364AE8 | 54 60 07 FF */	clrlwi. r0, r3, 31
/* 81364AEC | 40 82 00 18 */	bne .L_81364B04
/* 81364AF0 | 54 80 07 FE */	clrlwi r0, r4, 31
/* 81364AF4 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81364AF8 | 40 82 00 0C */	bne .L_81364B04
/* 81364AFC | 38 60 00 01 */	li r3, 0x1
/* 81364B00 | 4E 80 00 20 */	blr
.L_81364B04:
/* 81364B04 | 54 63 F8 7E */	srwi r3, r3, 1
/* 81364B08 | 54 84 F8 7E */	srwi r4, r4, 1
/* 81364B0C | 42 00 FF DC */	bdnz .L_81364AE8
/* 81364B10 | 38 60 00 00 */	li r3, 0x0
/* 81364B14 | 4E 80 00 20 */	blr
.endfn isIncreaseConnectedWpad__Q33ipl7utility4wpadFUlUl

# .text:0x16BC | 0x81364B18 | size: 0x70
# ipl::utility::wpad::getWpadConnectedMask()
.fn getWpadConnectedMask__Q33ipl7utility4wpadFv, global
/* 81364B18 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81364B1C | 7C 08 02 A6 */	mflr r0
/* 81364B20 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81364B24 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81364B28 | 48 29 49 A1 */	bl _savegpr_29
/* 81364B2C | 3B C0 00 00 */	li r30, 0x0
/* 81364B30 | 3B A0 00 00 */	li r29, 0x0
/* 81364B34 | 3B E0 00 01 */	li r31, 0x1
.L_81364B38:
/* 81364B38 | 7F A3 EB 78 */	mr r3, r29
/* 81364B3C | 38 81 00 08 */	addi r4, r1, 0x8
/* 81364B40 | 48 21 5E E5 */	bl fn_8157AA24
/* 81364B44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81364B48 | 40 82 00 18 */	bne .L_81364B60
/* 81364B4C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 81364B50 | 28 00 00 FD */	cmplwi r0, 0xfd
/* 81364B54 | 41 82 00 0C */	beq .L_81364B60
/* 81364B58 | 7F E0 E8 30 */	slw r0, r31, r29
/* 81364B5C | 7F DE 03 78 */	or r30, r30, r0
.L_81364B60:
/* 81364B60 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 81364B64 | 2C 1D 00 04 */	cmpwi r29, 0x4
/* 81364B68 | 41 80 FF D0 */	blt .L_81364B38
/* 81364B6C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81364B70 | 7F C3 F3 78 */	mr r3, r30
/* 81364B74 | 48 29 49 A1 */	bl _restgpr_29
/* 81364B78 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81364B7C | 7C 08 03 A6 */	mtlr r0
/* 81364B80 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81364B84 | 4E 80 00 20 */	blr
.endfn getWpadConnectedMask__Q33ipl7utility4wpadFv

# 0x81641208..0x81641290 | size: 0x88
.data
.balign 8

# .data:0x0 | 0x81641208 | size: 0x28
# ipl::utility::Language::mLangPath
.obj mLangPath__Q33ipl7utility8Language, global
	.4byte lbl_81696250
	.4byte lbl_81696254
	.4byte lbl_81696258
	.4byte lbl_8169625C
	.4byte lbl_81696260
	.4byte lbl_81696264
	.4byte lbl_81696268
	.4byte lbl_8169626C
	.4byte lbl_81696254
	.4byte lbl_81696270
.endobj mLangPath__Q33ipl7utility8Language

# .data:0x28 | 0x81641230 | size: 0x11
.obj lbl_81641230, global
	.string "WIPL_SE_B_SCROLL"
.endobj lbl_81641230

# .data:0x39 | 0x81641241 | size: 0x17
.obj lbl_81641241, global
	.string "WIPL_SE_MESSAGE_SCROLL"
.endobj lbl_81641241

# .data:0x50 | 0x81641258 | size: 0x10
.obj lbl_81641258, global
	.string16 "%016llu"
.endobj lbl_81641258

# .data:0x60 | 0x81641268 | size: 0x10
# ipl::math::HermiteIntp<float>::__vtable
.obj "__vt__Q33ipl4math14HermiteIntp<f>", global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "__dt__Q33ipl4math14HermiteIntp<f>Fv"
	.4byte calc__Q33ipl7utility15FrameControllerFv
.endobj "__vt__Q33ipl4math14HermiteIntp<f>"

# .data:0x70 | 0x81641278 | size: 0xC
# ipl::utility::YoungBScroller::__vtable
.obj __vt__Q33ipl7utility14YoungBScroller, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte isYoungController__Q33ipl7utility14YoungBScrollerFi
.endobj __vt__Q33ipl7utility14YoungBScroller

# .data:0x7C | 0x81641284 | size: 0xC
# ipl::utility::BScroller::__vtable
.obj __vt__Q33ipl7utility9BScroller, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte isYoungController__Q33ipl7utility9BScrollerFi
.endobj __vt__Q33ipl7utility9BScroller

# 0x81694600..0x81694658 | size: 0x58
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694600 | size: 0x4
.obj lbl_81694600, global
	.float 0
.endobj lbl_81694600

# .sdata2:0x4 | 0x81694604 | size: 0x4
.obj lbl_81694604, global
	.float -1
.endobj lbl_81694604

# .sdata2:0x8 | 0x81694608 | size: 0x4
.obj lbl_81694608, global
	.float 1
.endobj lbl_81694608

# .sdata2:0xC | 0x8169460C | size: 0x4
.obj lbl_8169460C, global
	.float 128
.endobj lbl_8169460C

# .sdata2:0x10 | 0x81694610 | size: 0x4
.obj lbl_81694610, global
	.float -0.01
.endobj lbl_81694610

# .sdata2:0x14 | 0x81694614 | size: 0x4
.obj lbl_81694614, global
	.float -10
.endobj lbl_81694614

# .sdata2:0x18 | 0x81694618 | size: 0x4
.obj lbl_81694618, global
	.float 10
.endobj lbl_81694618

# .sdata2:0x1C | 0x8169461C | size: 0x4
.obj lbl_8169461C, global
	.float 0.01
.endobj lbl_8169461C

# .sdata2:0x20 | 0x81694620 | size: 0x4
.obj lbl_81694620, global
	.float 0.6
.endobj lbl_81694620

# .sdata2:0x24 | 0x81694624 | size: 0x4
.obj lbl_81694624, global
	.float 1.5
.endobj lbl_81694624

# .sdata2:0x28 | 0x81694628 | size: 0x4
.obj lbl_81694628, global
	.float 20
.endobj lbl_81694628

# .sdata2:0x2C | 0x8169462C | size: 0x4
.obj lbl_8169462C, global
	.float 2
.endobj lbl_8169462C

# .sdata2:0x30 | 0x81694630 | size: 0x4
.obj lbl_81694630, global
	.float 3
.endobj lbl_81694630

# .sdata2:0x34 | 0x81694634 | size: 0x4
.obj gap_09_81694634_sdata2, global
.hidden gap_09_81694634_sdata2
	.4byte 0x00000000
.endobj gap_09_81694634_sdata2

# .sdata2:0x38 | 0x81694638 | size: 0x8
.obj lbl_81694638, global
	.double 10
.endobj lbl_81694638

# .sdata2:0x40 | 0x81694640 | size: 0x8
.obj lbl_81694640, global
	.double 4503601774854144
.endobj lbl_81694640

# .sdata2:0x48 | 0x81694648 | size: 0x8
.obj lbl_81694648, global
	.double 4503599627370496
.endobj lbl_81694648

# .sdata2:0x50 | 0x81694650 | size: 0x4
.obj lbl_81694650, global
	.float -100
.endobj lbl_81694650

# .sdata2:0x54 | 0x81694654 | size: 0x4
.obj lbl_81694654, global
	.float 100
.endobj lbl_81694654

# 0x81696250..0x816962A0 | size: 0x50
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696250 | size: 0x4
.obj lbl_81696250, global
	.string "jpn"
.endobj lbl_81696250

# .sdata:0x4 | 0x81696254 | size: 0x4
.obj lbl_81696254, global
	.string "eng"
.endobj lbl_81696254

# .sdata:0x8 | 0x81696258 | size: 0x4
.obj lbl_81696258, global
	.string "ger"
.endobj lbl_81696258

# .sdata:0xC | 0x8169625C | size: 0x4
.obj lbl_8169625C, global
	.string "fra"
.endobj lbl_8169625C

# .sdata:0x10 | 0x81696260 | size: 0x4
.obj lbl_81696260, global
	.string "spa"
.endobj lbl_81696260

# .sdata:0x14 | 0x81696264 | size: 0x4
.obj lbl_81696264, global
	.string "ita"
.endobj lbl_81696264

# .sdata:0x18 | 0x81696268 | size: 0x4
.obj lbl_81696268, global
	.string "ned"
.endobj lbl_81696268

# .sdata:0x1C | 0x8169626C | size: 0x4
.obj lbl_8169626C, global
	.string "chn"
.endobj lbl_8169626C

# .sdata:0x20 | 0x81696270 | size: 0x4
.obj lbl_81696270, global
	.string "kor"
.endobj lbl_81696270

# .sdata:0x24 | 0x81696274 | size: 0x4
.obj lbl_81696274, global
	.4byte 0x3F800000
.endobj lbl_81696274

# .sdata:0x28 | 0x81696278 | size: 0x4
.obj lbl_81696278, global
	.4byte 0x3F800000
.endobj lbl_81696278

# .sdata:0x2C | 0x8169627C | size: 0x4
.obj lbl_8169627C, global
	.4byte 0x3F800000
.endobj lbl_8169627C

# .sdata:0x30 | 0x81696280 | size: 0x4
.obj lbl_81696280, global
	.4byte 0x3F800000
.endobj lbl_81696280

# .sdata:0x34 | 0x81696284 | size: 0x4
.obj lbl_81696284, global
	.4byte 0x00000000
.endobj lbl_81696284

# .sdata:0x38 | 0x81696288 | size: 0x4
.obj lbl_81696288, global
	.4byte 0x3F800000
.endobj lbl_81696288

# .sdata:0x3C | 0x8169628C | size: 0x4
.obj lbl_8169628C, global
	.4byte 0x00000000
.endobj lbl_8169628C

# .sdata:0x40 | 0x81696290 | size: 0x4
.obj lbl_81696290, global
	.4byte 0xC3960000
.endobj lbl_81696290

# .sdata:0x44 | 0x81696294 | size: 0x4
.obj lbl_81696294, global
	.4byte 0x00000000
.endobj lbl_81696294

# .sdata:0x48 | 0x81696298 | size: 0x8
.obj lbl_81696298, global
	.4byte 0x43960000
	.4byte 0x00000000
.endobj lbl_81696298
