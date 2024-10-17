.include "macros.inc"
.file "snd_Lfo.cpp"

# 0x8150151C..0x8150170C | size: 0x1F0
.text
.balign 4

# .text:0x0 | 0x8150151C | size: 0x24
# nw4r::snd::detail::LfoParam::Init()
.fn Init__Q44nw4r3snd6detail8LfoParamFv, global
/* 8150151C | C0 22 8E F8 */	lfs f1, lbl_816952F8@sda21(r0)
/* 81501520 | 38 80 00 01 */	li r4, 0x1
/* 81501524 | C0 02 8E FC */	lfs f0, lbl_816952FC@sda21(r0)
/* 81501528 | 38 00 00 00 */	li r0, 0x0
/* 8150152C | D0 23 00 00 */	stfs f1, 0x0(r3)
/* 81501530 | 98 83 00 0C */	stb r4, 0xc(r3)
/* 81501534 | D0 03 00 04 */	stfs f0, 0x4(r3)
/* 81501538 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 8150153C | 4E 80 00 20 */	blr
.endfn Init__Q44nw4r3snd6detail8LfoParamFv

# .text:0x24 | 0x81501540 | size: 0x14
# nw4r::snd::detail::Lfo::Reset()
.fn Reset__Q44nw4r3snd6detail3LfoFv, global
/* 81501540 | C0 02 8E F8 */	lfs f0, lbl_816952F8@sda21(r0)
/* 81501544 | 38 00 00 00 */	li r0, 0x0
/* 81501548 | 90 03 00 10 */	stw r0, 0x10(r3)
/* 8150154C | D0 03 00 14 */	stfs f0, 0x14(r3)
/* 81501550 | 4E 80 00 20 */	blr
.endfn Reset__Q44nw4r3snd6detail3LfoFv

# .text:0x38 | 0x81501554 | size: 0x9C
# nw4r::snd::detail::Lfo::Update(int)
.fn Update__Q44nw4r3snd6detail3LfoFi, global
/* 81501554 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81501558 | 80 C3 00 08 */	lwz r6, 0x8(r3)
/* 8150155C | 80 A3 00 10 */	lwz r5, 0x10(r3)
/* 81501560 | 7C 05 30 40 */	cmplw r5, r6
/* 81501564 | 40 80 00 24 */	bge .L_81501588
/* 81501568 | 7C 05 22 14 */	add r0, r5, r4
/* 8150156C | 7C 00 30 40 */	cmplw r0, r6
/* 81501570 | 41 81 00 0C */	bgt .L_8150157C
/* 81501574 | 90 03 00 10 */	stw r0, 0x10(r3)
/* 81501578 | 48 00 00 70 */	b .L_815015E8
.L_8150157C:
/* 8150157C | 7C 05 30 50 */	subf r0, r5, r6
/* 81501580 | 90 C3 00 10 */	stw r6, 0x10(r3)
/* 81501584 | 7C 80 20 50 */	subf r4, r0, r4
.L_81501588:
/* 81501588 | 3C 00 43 30 */	lis r0, 0x4330
/* 8150158C | 6C 84 80 00 */	xoris r4, r4, 0x8000
/* 81501590 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 81501594 | C8 82 8F 08 */	lfd f4, lbl_81695308@sda21(r0)
/* 81501598 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8150159C | C0 43 00 04 */	lfs f2, 0x4(r3)
/* 815015A0 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 815015A4 | C0 22 8F 00 */	lfs f1, lbl_81695300@sda21(r0)
/* 815015A8 | EC 60 20 28 */	fsubs f3, f0, f4
/* 815015AC | C0 03 00 14 */	lfs f0, 0x14(r3)
/* 815015B0 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 815015B4 | EC 42 00 F2 */	fmuls f2, f2, f3
/* 815015B8 | EC 22 08 24 */	fdivs f1, f2, f1
/* 815015BC | EC 20 08 2A */	fadds f1, f0, f1
/* 815015C0 | FC 00 08 1E */	fctiwz f0, f1
/* 815015C4 | D0 23 00 14 */	stfs f1, 0x14(r3)
/* 815015C8 | D8 01 00 10 */	stfd f0, 0x10(r1)
/* 815015CC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 815015D0 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 815015D4 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 815015D8 | C8 01 00 18 */	lfd f0, 0x18(r1)
/* 815015DC | EC 00 20 28 */	fsubs f0, f0, f4
/* 815015E0 | EC 01 00 28 */	fsubs f0, f1, f0
/* 815015E4 | D0 03 00 14 */	stfs f0, 0x14(r3)
.L_815015E8:
/* 815015E8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 815015EC | 4E 80 00 20 */	blr
.endfn Update__Q44nw4r3snd6detail3LfoFi

# .text:0xD4 | 0x815015F0 | size: 0x11C
# nw4r::snd::detail::Lfo::GetValue() const
.fn GetValue__Q44nw4r3snd6detail3LfoCFv, global
/* 815015F0 | C0 22 8E F8 */	lfs f1, lbl_816952F8@sda21(r0)
/* 815015F4 | C0 03 00 00 */	lfs f0, 0x0(r3)
/* 815015F8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 815015FC | FC 01 00 00 */	fcmpu cr0, f1, f0
/* 81501600 | 40 82 00 08 */	bne .L_81501608
/* 81501604 | 48 00 01 00 */	b .L_81501704
.L_81501608:
/* 81501608 | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 8150160C | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 81501610 | 7C 04 00 40 */	cmplw r4, r0
/* 81501614 | 40 80 00 08 */	bge .L_8150161C
/* 81501618 | 48 00 00 EC */	b .L_81501704
.L_8150161C:
/* 8150161C | C0 42 8F 14 */	lfs f2, lbl_81695314@sda21(r0)
/* 81501620 | C0 23 00 14 */	lfs f1, 0x14(r3)
/* 81501624 | C0 02 8F 10 */	lfs f0, lbl_81695310@sda21(r0)
/* 81501628 | EC 22 00 72 */	fmuls f1, f2, f1
/* 8150162C | EC 00 00 72 */	fmuls f0, f0, f1
/* 81501630 | FC 00 00 1E */	fctiwz f0, f0
/* 81501634 | D8 01 00 08 */	stfd f0, 0x8(r1)
/* 81501638 | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8150163C | 2C 05 00 20 */	cmpwi r5, 0x20
/* 81501640 | 40 80 00 18 */	bge .L_81501658
/* 81501644 | 3C 80 81 62 */	lis r4, sinTable$544@ha
/* 81501648 | 38 84 E6 58 */	addi r4, r4, sinTable$544@l
/* 8150164C | 7C 04 28 AE */	lbzx r0, r4, r5
/* 81501650 | 7C 00 07 74 */	extsb r0, r0
/* 81501654 | 48 00 00 68 */	b .L_815016BC
.L_81501658:
/* 81501658 | 2C 05 00 40 */	cmpwi r5, 0x40
/* 8150165C | 40 80 00 20 */	bge .L_8150167C
/* 81501660 | 38 05 FF E0 */	subi r0, r5, 0x20
/* 81501664 | 3C 80 81 62 */	lis r4, sinTable$544@ha
/* 81501668 | 20 00 00 20 */	subfic r0, r0, 0x20
/* 8150166C | 38 84 E6 58 */	addi r4, r4, sinTable$544@l
/* 81501670 | 7C 04 00 AE */	lbzx r0, r4, r0
/* 81501674 | 7C 00 07 74 */	extsb r0, r0
/* 81501678 | 48 00 00 44 */	b .L_815016BC
.L_8150167C:
/* 8150167C | 2C 05 00 60 */	cmpwi r5, 0x60
/* 81501680 | 40 80 00 20 */	bge .L_815016A0
/* 81501684 | 3C 80 81 62 */	lis r4, sinTable$544@ha
/* 81501688 | 38 84 E6 58 */	addi r4, r4, sinTable$544@l
/* 8150168C | 7C 85 22 14 */	add r4, r5, r4
/* 81501690 | 88 04 FF C0 */	lbz r0, -0x40(r4)
/* 81501694 | 7C 00 00 D0 */	neg r0, r0
/* 81501698 | 7C 00 07 74 */	extsb r0, r0
/* 8150169C | 48 00 00 20 */	b .L_815016BC
.L_815016A0:
/* 815016A0 | 38 05 FF A0 */	subi r0, r5, 0x60
/* 815016A4 | 3C 80 81 62 */	lis r4, sinTable$544@ha
/* 815016A8 | 20 00 00 20 */	subfic r0, r0, 0x20
/* 815016AC | 38 84 E6 58 */	addi r4, r4, sinTable$544@l
/* 815016B0 | 7C 04 00 AE */	lbzx r0, r4, r0
/* 815016B4 | 7C 00 00 D0 */	neg r0, r0
/* 815016B8 | 7C 00 07 74 */	extsb r0, r0
.L_815016BC:
/* 815016BC | 3C 80 43 30 */	lis r4, 0x4330
/* 815016C0 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 815016C4 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 815016C8 | 88 03 00 0C */	lbz r0, 0xc(r3)
/* 815016CC | 90 81 00 08 */	stw r4, 0x8(r1)
/* 815016D0 | C8 42 8F 08 */	lfd f2, lbl_81695308@sda21(r0)
/* 815016D4 | C8 21 00 08 */	lfd f1, 0x8(r1)
/* 815016D8 | C0 02 8F 18 */	lfs f0, lbl_81695318@sda21(r0)
/* 815016DC | EC 21 10 28 */	fsubs f1, f1, f2
/* 815016E0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 815016E4 | C0 63 00 00 */	lfs f3, 0x0(r3)
/* 815016E8 | 90 81 00 10 */	stw r4, 0x10(r1)
/* 815016EC | EC 21 00 24 */	fdivs f1, f1, f0
/* 815016F0 | C8 42 8F 20 */	lfd f2, lbl_81695320@sda21(r0)
/* 815016F4 | C8 01 00 10 */	lfd f0, 0x10(r1)
/* 815016F8 | EC 21 00 F2 */	fmuls f1, f1, f3
/* 815016FC | EC 00 10 28 */	fsubs f0, f0, f2
/* 81501700 | EC 21 00 32 */	fmuls f1, f1, f0
.L_81501704:
/* 81501704 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81501708 | 4E 80 00 20 */	blr
.endfn GetValue__Q44nw4r3snd6detail3LfoCFv

# 0x8161E658..0x8161E680 | size: 0x28
.rodata
.balign 8

# .rodata:0x0 | 0x8161E658 | size: 0x21
.obj sinTable$544, local
	.4byte 0x00060C13
	.4byte 0x191F252B
	.4byte 0x31363C41
	.4byte 0x474C5155
	.4byte 0x5A5E6266
	.4byte 0x6A6D7073
	.4byte 0x75787A7B
	.4byte 0x7D7E7E7F
	.byte 0x7F
.endobj sinTable$544

# .rodata:0x21 | 0x8161E679 | size: 0x7
.obj gap_07_8161E679_rodata, global
.hidden gap_07_8161E679_rodata
	.4byte 0x00000000
	.byte 0x00, 0x00, 0x00
.endobj gap_07_8161E679_rodata

# 0x816952F8..0x81695328 | size: 0x30
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x816952F8 | size: 0x4
.obj lbl_816952F8, global
	.float 0
.endobj lbl_816952F8

# .sdata2:0x4 | 0x816952FC | size: 0x4
.obj lbl_816952FC, global
	.float 6.25
.endobj lbl_816952FC

# .sdata2:0x8 | 0x81695300 | size: 0x4
.obj lbl_81695300, global
	.float 1000
.endobj lbl_81695300

# .sdata2:0xC | 0x81695304 | size: 0x4
.obj gap_09_81695304_sdata2, global
.hidden gap_09_81695304_sdata2
	.4byte 0x00000000
.endobj gap_09_81695304_sdata2

# .sdata2:0x10 | 0x81695308 | size: 0x8
.obj lbl_81695308, global
	.double 4503601774854144
.endobj lbl_81695308

# .sdata2:0x18 | 0x81695310 | size: 0x4
.obj lbl_81695310, global
	.float 4
.endobj lbl_81695310

# .sdata2:0x1C | 0x81695314 | size: 0x4
.obj lbl_81695314, global
	.float 32
.endobj lbl_81695314

# .sdata2:0x20 | 0x81695318 | size: 0x4
.obj lbl_81695318, global
	.float 127
.endobj lbl_81695318

# .sdata2:0x24 | 0x8169531C | size: 0x4
.obj gap_09_8169531C_sdata2, global
.hidden gap_09_8169531C_sdata2
	.4byte 0x00000000
.endobj gap_09_8169531C_sdata2

# .sdata2:0x28 | 0x81695320 | size: 0x8
.obj lbl_81695320, global
	.double 4503599627370496
.endobj lbl_81695320
