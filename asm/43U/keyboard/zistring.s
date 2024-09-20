.include "macros.inc"
.file "zistring.cpp"

# 0x810C2580..0x810C8270 | size: 0x5CF0
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810C2580 | size: 0x4000
.obj lbl_810C2580, global
	.skip 0x4000
.endobj lbl_810C2580

# .bss:0x4000 | 0x810C6580 | size: 0x10
.obj lbl_810C6580, global
	.skip 0x10
.endobj lbl_810C6580

# .bss:0x4010 | 0x810C6590 | size: 0x60
.obj lbl_810C6590, global
	.skip 0x60
.endobj lbl_810C6590

# .bss:0x4070 | 0x810C65F0 | size: 0x200
# textinput::tistring::WithZi::ElementBuffer
.obj ElementBuffer__Q39textinput8tistring6WithZi, global
	.skip 0x200
.endobj ElementBuffer__Q39textinput8tistring6WithZi

# .bss:0x4270 | 0x810C67F0 | size: 0x600
# textinput::tistring::WithZi::CandidatesBuffer
.obj CandidatesBuffer__Q39textinput8tistring6WithZi, global
	.skip 0x600
.endobj CandidatesBuffer__Q39textinput8tistring6WithZi

# .bss:0x4870 | 0x810C6DF0 | size: 0x1400
# textinput::tistring::WithZi::CandidatedWord
.obj CandidatedWord__Q39textinput8tistring6WithZi, global
	.skip 0x1400
.endobj CandidatedWord__Q39textinput8tistring6WithZi

# .bss:0x5C70 | 0x810C81F0 | size: 0x80
# textinput::tistring::WithZi::LatestWord
.obj LatestWord__Q39textinput8tistring6WithZi, global
	.skip 0x80
.endobj LatestWord__Q39textinput8tistring6WithZi

# 0x81432618..0x81434FD0 | size: 0x29B8
.text
.balign 4

# .text:0x0 | 0x81432618 | size: 0x80
# textinput::tistring::StringBase::create(MEMAllocator*)
.fn create__Q39textinput8tistring10StringBaseFP12MEMAllocator, global
/* 81432618 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143261C | 7C 08 02 A6 */	mflr r0
/* 81432620 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81432624 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81432628 | 7C 9F 23 78 */	mr r31, r4
/* 8143262C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81432630 | 7C 7E 1B 78 */	mr r30, r3
/* 81432634 | A0 03 00 04 */	lhz r0, 0x4(r3)
/* 81432638 | 90 83 00 14 */	stw r4, 0x14(r3)
/* 8143263C | 7F E3 FB 78 */	mr r3, r31
/* 81432640 | 54 04 08 3C */	slwi r4, r0, 1
/* 81432644 | 48 12 90 25 */	bl fn_8155B668
/* 81432648 | 90 7E 00 08 */	stw r3, 0x8(r30)
/* 8143264C | 38 80 00 00 */	li r4, 0x0
/* 81432650 | A0 BE 00 04 */	lhz r5, 0x4(r30)
/* 81432654 | 48 1D 3E 15 */	bl fn_81606468
/* 81432658 | A0 1E 00 04 */	lhz r0, 0x4(r30)
/* 8143265C | 38 60 00 00 */	li r3, 0x0
/* 81432660 | B0 7E 00 06 */	sth r3, 0x6(r30)
/* 81432664 | 7F E3 FB 78 */	mr r3, r31
/* 81432668 | 54 04 08 3C */	slwi r4, r0, 1
/* 8143266C | 48 12 8F FD */	bl fn_8155B668
/* 81432670 | 90 7E 00 0C */	stw r3, 0xc(r30)
/* 81432674 | 38 80 00 00 */	li r4, 0x0
/* 81432678 | A0 BE 00 04 */	lhz r5, 0x4(r30)
/* 8143267C | 48 1D 3D ED */	bl fn_81606468
/* 81432680 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81432684 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81432688 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8143268C | 7C 08 03 A6 */	mtlr r0
/* 81432690 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81432694 | 4E 80 00 20 */	blr
.endfn create__Q39textinput8tistring10StringBaseFP12MEMAllocator

# .text:0x80 | 0x81432698 | size: 0x74
# textinput::tistring::StringBase::~StringBase()
.fn __dt__Q39textinput8tistring10StringBaseFv, global
/* 81432698 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143269C | 7C 08 02 A6 */	mflr r0
/* 814326A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814326A4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814326A8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814326AC | 7C 9F 23 78 */	mr r31, r4
/* 814326B0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814326B4 | 7C 7E 1B 78 */	mr r30, r3
/* 814326B8 | 41 82 00 38 */	beq .L_814326F0
/* 814326BC | 3C A0 81 66 */	lis r5, __vt__Q39textinput8tistring10StringBase@ha
/* 814326C0 | 80 9E 00 08 */	lwz r4, 0x8(r30)
/* 814326C4 | 38 A5 F5 E8 */	addi r5, r5, __vt__Q39textinput8tistring10StringBase@l
/* 814326C8 | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 814326CC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 814326D0 | 48 12 8F A9 */	bl fn_8155B678
/* 814326D4 | 80 7E 00 14 */	lwz r3, 0x14(r30)
/* 814326D8 | 80 9E 00 0C */	lwz r4, 0xc(r30)
/* 814326DC | 48 12 8F 9D */	bl fn_8155B678
/* 814326E0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814326E4 | 40 81 00 0C */	ble .L_814326F0
/* 814326E8 | 7F C3 F3 78 */	mr r3, r30
/* 814326EC | 48 1C 59 F9 */	bl __dl__FPv
.L_814326F0:
/* 814326F0 | 7F C3 F3 78 */	mr r3, r30
/* 814326F4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814326F8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814326FC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81432700 | 7C 08 03 A6 */	mtlr r0
/* 81432704 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81432708 | 4E 80 00 20 */	blr
.endfn __dt__Q39textinput8tistring10StringBaseFv

# .text:0xF4 | 0x8143270C | size: 0x58
# textinput::tistring::StringBase::pushBack(wchar_t)
.fn pushBack__Q39textinput8tistring10StringBaseFw, global
/* 8143270C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81432710 | 7C 08 02 A6 */	mflr r0
/* 81432714 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81432718 | 38 00 00 00 */	li r0, 0x0
/* 8143271C | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 81432720 | 7C 7F 1B 78 */	mr r31, r3
/* 81432724 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81432728 | B0 81 00 08 */	sth r4, 0x8(r1)
/* 8143272C | B0 01 00 0A */	sth r0, 0xa(r1)
/* 81432730 | 48 1D 5F 7D */	bl fn_816086AC
/* 81432734 | 7C 65 1B 78 */	mr r5, r3
/* 81432738 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8143273C | 38 81 00 08 */	addi r4, r1, 0x8
/* 81432740 | 48 1D 60 15 */	bl fn_81608754
/* 81432744 | A0 7F 00 06 */	lhz r3, 0x6(r31)
/* 81432748 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8143274C | B0 1F 00 06 */	sth r0, 0x6(r31)
/* 81432750 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 81432754 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81432758 | 7C 08 03 A6 */	mtlr r0
/* 8143275C | 38 21 00 30 */	addi r1, r1, 0x30
/* 81432760 | 4E 80 00 20 */	blr
.endfn pushBack__Q39textinput8tistring10StringBaseFw

# .text:0x14C | 0x81432764 | size: 0x2C
# textinput::tistring::StringBase::popBack()
.fn popBack__Q39textinput8tistring10StringBaseFv, global
/* 81432764 | A0 83 00 06 */	lhz r4, 0x6(r3)
/* 81432768 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8143276C | 41 82 00 0C */	beq .L_81432778
/* 81432770 | 38 04 FF FF */	subi r0, r4, 0x1
/* 81432774 | B0 03 00 06 */	sth r0, 0x6(r3)
.L_81432778:
/* 81432778 | A0 03 00 06 */	lhz r0, 0x6(r3)
/* 8143277C | 38 80 00 00 */	li r4, 0x0
/* 81432780 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 81432784 | 54 00 08 3C */	slwi r0, r0, 1
/* 81432788 | 7C 83 03 2E */	sthx r4, r3, r0
/* 8143278C | 4E 80 00 20 */	blr
.endfn popBack__Q39textinput8tistring10StringBaseFv

# .text:0x178 | 0x81432790 | size: 0xD0
# textinput::tistring::StringBase::append(const wchar_t*)
.fn append__Q39textinput8tistring10StringBaseFPCw, global
/* 81432790 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81432794 | 7C 08 02 A6 */	mflr r0
/* 81432798 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8143279C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814327A0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814327A4 | 7C 9E 23 78 */	mr r30, r4
/* 814327A8 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814327AC | 7C 7D 1B 78 */	mr r29, r3
/* 814327B0 | 7F C3 F3 78 */	mr r3, r30
/* 814327B4 | 48 1D 5E F9 */	bl fn_816086AC
/* 814327B8 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 814327BC | 7C 7F 1B 78 */	mr r31, r3
/* 814327C0 | 7F A3 EB 78 */	mr r3, r29
/* 814327C4 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 814327C8 | 7D 89 03 A6 */	mtctr r12
/* 814327CC | 4E 80 04 21 */	bctrl
/* 814327D0 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814327D4 | A0 1D 00 04 */	lhz r0, 0x4(r29)
/* 814327D8 | 7C 7F 1A 14 */	add r3, r31, r3
/* 814327DC | 7C 03 00 40 */	cmplw r3, r0
/* 814327E0 | 40 81 00 0C */	ble .L_814327EC
/* 814327E4 | 38 60 00 00 */	li r3, 0x0
/* 814327E8 | 48 00 00 5C */	b .L_81432844
.L_814327EC:
/* 814327EC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814327F0 | 40 82 00 30 */	bne .L_81432820
/* 814327F4 | 38 60 00 00 */	li r3, 0x0
/* 814327F8 | 48 00 00 4C */	b .L_81432844
/* 814327FC | 48 00 00 24 */	b .L_81432820
.L_81432800:
/* 81432800 | A0 1D 00 06 */	lhz r0, 0x6(r29)
/* 81432804 | 3B DE 00 02 */	addi r30, r30, 0x2
/* 81432808 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 8143280C | 54 00 08 3C */	slwi r0, r0, 1
/* 81432810 | 7C 83 03 2E */	sthx r4, r3, r0
/* 81432814 | A0 7D 00 06 */	lhz r3, 0x6(r29)
/* 81432818 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8143281C | B0 1D 00 06 */	sth r0, 0x6(r29)
.L_81432820:
/* 81432820 | A0 9E 00 00 */	lhz r4, 0x0(r30)
/* 81432824 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81432828 | 40 82 FF D8 */	bne .L_81432800
/* 8143282C | A0 1D 00 06 */	lhz r0, 0x6(r29)
/* 81432830 | 38 A0 00 00 */	li r5, 0x0
/* 81432834 | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 81432838 | 38 60 00 01 */	li r3, 0x1
/* 8143283C | 54 00 08 3C */	slwi r0, r0, 1
/* 81432840 | 7C A4 03 2E */	sthx r5, r4, r0
.L_81432844:
/* 81432844 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81432848 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8143284C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81432850 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81432854 | 7C 08 03 A6 */	mtlr r0
/* 81432858 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8143285C | 4E 80 00 20 */	blr
.endfn append__Q39textinput8tistring10StringBaseFPCw

# .text:0x248 | 0x81432860 | size: 0x13C
# textinput::tistring::StringBase::insert(unsigned short, const wchar_t*)
.fn insert__Q39textinput8tistring10StringBaseFUsPCw, global
/* 81432860 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81432864 | 7C 08 02 A6 */	mflr r0
/* 81432868 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8143286C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81432870 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81432874 | 7C BE 2B 78 */	mr r30, r5
/* 81432878 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8143287C | 7C 9D 23 78 */	mr r29, r4
/* 81432880 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 81432884 | 7C 7C 1B 78 */	mr r28, r3
/* 81432888 | 7F C3 F3 78 */	mr r3, r30
/* 8143288C | 48 1D 5E 21 */	bl fn_816086AC
/* 81432890 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81432894 | 7C 7F 1B 78 */	mr r31, r3
/* 81432898 | 7F 83 E3 78 */	mr r3, r28
/* 8143289C | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 814328A0 | 7D 89 03 A6 */	mtctr r12
/* 814328A4 | 4E 80 04 21 */	bctrl
/* 814328A8 | 54 64 04 3E */	clrlwi r4, r3, 16
/* 814328AC | 57 E3 04 3E */	clrlwi r3, r31, 16
/* 814328B0 | A0 1C 00 04 */	lhz r0, 0x4(r28)
/* 814328B4 | 7C 63 22 14 */	add r3, r3, r4
/* 814328B8 | 7C 03 00 00 */	cmpw r3, r0
/* 814328BC | 40 81 00 0C */	ble .L_814328C8
/* 814328C0 | 38 60 00 00 */	li r3, 0x0
/* 814328C4 | 48 00 00 B8 */	b .L_8143297C
.L_814328C8:
/* 814328C8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814328CC | 41 82 00 24 */	beq .L_814328F0
/* 814328D0 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 814328D4 | 7F 83 E3 78 */	mr r3, r28
/* 814328D8 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 814328DC | 7D 89 03 A6 */	mtctr r12
/* 814328E0 | 4E 80 04 21 */	bctrl
/* 814328E4 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 814328E8 | 7C 1D 00 40 */	cmplw r29, r0
/* 814328EC | 40 81 00 0C */	ble .L_814328F8
.L_814328F0:
/* 814328F0 | 38 60 00 00 */	li r3, 0x0
/* 814328F4 | 48 00 00 88 */	b .L_8143297C
.L_814328F8:
/* 814328F8 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 814328FC | 38 80 00 00 */	li r4, 0x0
/* 81432900 | A0 BC 00 04 */	lhz r5, 0x4(r28)
/* 81432904 | 48 1D 3B 65 */	bl fn_81606468
/* 81432908 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 8143290C | 7F 83 E3 78 */	mr r3, r28
/* 81432910 | 57 BF 0B FC */	clrlslwi r31, r29, 16, 1
/* 81432914 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81432918 | 7D 89 03 A6 */	mtctr r12
/* 8143291C | 4E 80 04 21 */	bctrl
/* 81432920 | 80 1C 00 08 */	lwz r0, 0x8(r28)
/* 81432924 | 54 64 04 3E */	clrlwi r4, r3, 16
/* 81432928 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 8143292C | 7C BD 20 50 */	subf r5, r29, r4
/* 81432930 | 7C 80 FA 14 */	add r4, r0, r31
/* 81432934 | 48 1D 5D B1 */	bl fn_816086E4
/* 81432938 | B3 BC 00 06 */	sth r29, 0x6(r28)
/* 8143293C | 38 00 00 00 */	li r0, 0x0
/* 81432940 | 80 BC 00 08 */	lwz r5, 0x8(r28)
/* 81432944 | 7F 83 E3 78 */	mr r3, r28
/* 81432948 | 7F C4 F3 78 */	mr r4, r30
/* 8143294C | 7C 05 FB 2E */	sthx r0, r5, r31
/* 81432950 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81432954 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 81432958 | 7D 89 03 A6 */	mtctr r12
/* 8143295C | 4E 80 04 21 */	bctrl
/* 81432960 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81432964 | 7F 83 E3 78 */	mr r3, r28
/* 81432968 | 80 9C 00 0C */	lwz r4, 0xc(r28)
/* 8143296C | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 81432970 | 7D 89 03 A6 */	mtctr r12
/* 81432974 | 4E 80 04 21 */	bctrl
/* 81432978 | 38 60 00 01 */	li r3, 0x1
.L_8143297C:
/* 8143297C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81432980 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81432984 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81432988 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8143298C | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 81432990 | 7C 08 03 A6 */	mtlr r0
/* 81432994 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81432998 | 4E 80 00 20 */	blr
.endfn insert__Q39textinput8tistring10StringBaseFUsPCw

# .text:0x384 | 0x8143299C | size: 0x134
# textinput::tistring::StringBase::remove(unsigned short, unsigned short)
.fn remove__Q39textinput8tistring10StringBaseFUsUs, global
/* 8143299C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814329A0 | 7C 08 02 A6 */	mflr r0
/* 814329A4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814329A8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814329AC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814329B0 | 7C BE 2B 78 */	mr r30, r5
/* 814329B4 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814329B8 | 7C 9D 23 78 */	mr r29, r4
/* 814329BC | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814329C0 | 7C 7C 1B 78 */	mr r28, r3
/* 814329C4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814329C8 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 814329CC | 7D 89 03 A6 */	mtctr r12
/* 814329D0 | 4E 80 04 21 */	bctrl
/* 814329D4 | 54 60 04 3F */	clrlwi. r0, r3, 16
/* 814329D8 | 41 82 00 D8 */	beq .L_81432AB0
/* 814329DC | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 814329E0 | 7F 83 E3 78 */	mr r3, r28
/* 814329E4 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 814329E8 | 7D 89 03 A6 */	mtctr r12
/* 814329EC | 4E 80 04 21 */	bctrl
/* 814329F0 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 814329F4 | 7C 1D 00 40 */	cmplw r29, r0
/* 814329F8 | 41 81 00 B8 */	bgt .L_81432AB0
/* 814329FC | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81432A00 | 7F 83 E3 78 */	mr r3, r28
/* 81432A04 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81432A08 | 7D 89 03 A6 */	mtctr r12
/* 81432A0C | 4E 80 04 21 */	bctrl
/* 81432A10 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81432A14 | 7C 1D F2 14 */	add r0, r29, r30
/* 81432A18 | 7C 00 18 00 */	cmpw r0, r3
/* 81432A1C | 41 80 00 20 */	blt .L_81432A3C
/* 81432A20 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81432A24 | 7F 83 E3 78 */	mr r3, r28
/* 81432A28 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81432A2C | 7D 89 03 A6 */	mtctr r12
/* 81432A30 | 4E 80 04 21 */	bctrl
/* 81432A34 | 7C 1D 18 50 */	subf r0, r29, r3
/* 81432A38 | 54 1E 04 3E */	clrlwi r30, r0, 16
.L_81432A3C:
/* 81432A3C | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 81432A40 | 38 80 00 00 */	li r4, 0x0
/* 81432A44 | A0 BC 00 04 */	lhz r5, 0x4(r28)
/* 81432A48 | 48 1D 3A 21 */	bl fn_81606468
/* 81432A4C | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81432A50 | 7F 83 E3 78 */	mr r3, r28
/* 81432A54 | 57 BF 0B FC */	clrlslwi r31, r29, 16, 1
/* 81432A58 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81432A5C | 7D 89 03 A6 */	mtctr r12
/* 81432A60 | 4E 80 04 21 */	bctrl
/* 81432A64 | 80 1C 00 08 */	lwz r0, 0x8(r28)
/* 81432A68 | 54 66 04 3E */	clrlwi r6, r3, 16
/* 81432A6C | 7C BD F2 14 */	add r5, r29, r30
/* 81432A70 | 57 C4 0B FC */	clrlslwi r4, r30, 16, 1
/* 81432A74 | 7C 00 FA 14 */	add r0, r0, r31
/* 81432A78 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 81432A7C | 7C A5 30 50 */	subf r5, r5, r6
/* 81432A80 | 7C 84 02 14 */	add r4, r4, r0
/* 81432A84 | 48 1D 5C 61 */	bl fn_816086E4
/* 81432A88 | B3 BC 00 06 */	sth r29, 0x6(r28)
/* 81432A8C | 38 00 00 00 */	li r0, 0x0
/* 81432A90 | 80 9C 00 08 */	lwz r4, 0x8(r28)
/* 81432A94 | 7F 83 E3 78 */	mr r3, r28
/* 81432A98 | 7C 04 FB 2E */	sthx r0, r4, r31
/* 81432A9C | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81432AA0 | 80 9C 00 0C */	lwz r4, 0xc(r28)
/* 81432AA4 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 81432AA8 | 7D 89 03 A6 */	mtctr r12
/* 81432AAC | 4E 80 04 21 */	bctrl
.L_81432AB0:
/* 81432AB0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81432AB4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81432AB8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81432ABC | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81432AC0 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 81432AC4 | 7C 08 03 A6 */	mtlr r0
/* 81432AC8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81432ACC | 4E 80 00 20 */	blr
.endfn remove__Q39textinput8tistring10StringBaseFUsUs

# .text:0x4B8 | 0x81432AD0 | size: 0xC0
# textinput::tistring::StringBase::replace(unsigned short, unsigned short, const wchar_t*)
.fn replace__Q39textinput8tistring10StringBaseFUsUsPCw, global
/* 81432AD0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81432AD4 | 7C 08 02 A6 */	mflr r0
/* 81432AD8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81432ADC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81432AE0 | 7C DF 33 78 */	mr r31, r6
/* 81432AE4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81432AE8 | 7C BE 2B 78 */	mr r30, r5
/* 81432AEC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81432AF0 | 7C 9D 23 78 */	mr r29, r4
/* 81432AF4 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 81432AF8 | 7C 7C 1B 78 */	mr r28, r3
/* 81432AFC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81432B00 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81432B04 | 7D 89 03 A6 */	mtctr r12
/* 81432B08 | 4E 80 04 21 */	bctrl
/* 81432B0C | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81432B10 | 7C 1D F2 14 */	add r0, r29, r30
/* 81432B14 | 7C 00 18 00 */	cmpw r0, r3
/* 81432B18 | 41 80 00 20 */	blt .L_81432B38
/* 81432B1C | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81432B20 | 7F 83 E3 78 */	mr r3, r28
/* 81432B24 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81432B28 | 7D 89 03 A6 */	mtctr r12
/* 81432B2C | 4E 80 04 21 */	bctrl
/* 81432B30 | 7C 1D 18 50 */	subf r0, r29, r3
/* 81432B34 | 54 1E 04 3E */	clrlwi r30, r0, 16
.L_81432B38:
/* 81432B38 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81432B3C | 7F 83 E3 78 */	mr r3, r28
/* 81432B40 | 7F A4 EB 78 */	mr r4, r29
/* 81432B44 | 7F C5 F3 78 */	mr r5, r30
/* 81432B48 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81432B4C | 7D 89 03 A6 */	mtctr r12
/* 81432B50 | 4E 80 04 21 */	bctrl
/* 81432B54 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81432B58 | 7F 83 E3 78 */	mr r3, r28
/* 81432B5C | 7F A4 EB 78 */	mr r4, r29
/* 81432B60 | 7F E5 FB 78 */	mr r5, r31
/* 81432B64 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 81432B68 | 7D 89 03 A6 */	mtctr r12
/* 81432B6C | 4E 80 04 21 */	bctrl
/* 81432B70 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81432B74 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81432B78 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81432B7C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81432B80 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 81432B84 | 7C 08 03 A6 */	mtlr r0
/* 81432B88 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81432B8C | 4E 80 00 20 */	blr
.endfn replace__Q39textinput8tistring10StringBaseFUsUsPCw

# .text:0x578 | 0x81432B90 | size: 0x5C
# textinput::tistring::StringBase::set(const wchar_t*)
.fn set__Q39textinput8tistring10StringBaseFPCw, global
/* 81432B90 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81432B94 | 7C 08 02 A6 */	mflr r0
/* 81432B98 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81432B9C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81432BA0 | 7C 9F 23 78 */	mr r31, r4
/* 81432BA4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81432BA8 | 7C 7E 1B 78 */	mr r30, r3
/* 81432BAC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81432BB0 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81432BB4 | 7D 89 03 A6 */	mtctr r12
/* 81432BB8 | 4E 80 04 21 */	bctrl
/* 81432BBC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81432BC0 | 7F C3 F3 78 */	mr r3, r30
/* 81432BC4 | 7F E4 FB 78 */	mr r4, r31
/* 81432BC8 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 81432BCC | 7D 89 03 A6 */	mtctr r12
/* 81432BD0 | 4E 80 04 21 */	bctrl
/* 81432BD4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81432BD8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81432BDC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81432BE0 | 7C 08 03 A6 */	mtlr r0
/* 81432BE4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81432BE8 | 4E 80 00 20 */	blr
.endfn set__Q39textinput8tistring10StringBaseFPCw

# .text:0x5D4 | 0x81432BEC | size: 0x1C
# textinput::tistring::StringBase::setAt(unsigned short, wchar_t)
.fn setAt__Q39textinput8tistring10StringBaseFUsw, global
/* 81432BEC | A0 03 00 04 */	lhz r0, 0x4(r3)
/* 81432BF0 | 7C 00 20 40 */	cmplw r0, r4
/* 81432BF4 | 4C 81 00 20 */	blelr
/* 81432BF8 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 81432BFC | 54 80 0B FC */	clrlslwi r0, r4, 16, 1
/* 81432C00 | 7C A3 03 2E */	sthx r5, r3, r0
/* 81432C04 | 4E 80 00 20 */	blr
.endfn setAt__Q39textinput8tistring10StringBaseFUsw

# .text:0x5F0 | 0x81432C08 | size: 0x78
# textinput::tistring::StringBase::setLength(unsigned short)
.fn setLength__Q39textinput8tistring10StringBaseFUs, global
/* 81432C08 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81432C0C | 7C 08 02 A6 */	mflr r0
/* 81432C10 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81432C14 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81432C18 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81432C1C | 7C 9E 23 78 */	mr r30, r4
/* 81432C20 | 7F DF F3 78 */	mr r31, r30
/* 81432C24 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81432C28 | 7C 7D 1B 78 */	mr r29, r3
/* 81432C2C | 48 00 00 24 */	b .L_81432C50
.L_81432C30:
/* 81432C30 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81432C34 | 7F A3 EB 78 */	mr r3, r29
/* 81432C38 | 57 E4 04 3E */	clrlwi r4, r31, 16
/* 81432C3C | 38 A0 00 00 */	li r5, 0x0
/* 81432C40 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81432C44 | 7D 89 03 A6 */	mtctr r12
/* 81432C48 | 4E 80 04 21 */	bctrl
/* 81432C4C | 3B FF 00 01 */	addi r31, r31, 0x1
.L_81432C50:
/* 81432C50 | A0 1D 00 06 */	lhz r0, 0x6(r29)
/* 81432C54 | 57 E3 04 3E */	clrlwi r3, r31, 16
/* 81432C58 | 7C 03 00 40 */	cmplw r3, r0
/* 81432C5C | 41 80 FF D4 */	blt .L_81432C30
/* 81432C60 | B3 DD 00 06 */	sth r30, 0x6(r29)
/* 81432C64 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81432C68 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81432C6C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81432C70 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81432C74 | 7C 08 03 A6 */	mtlr r0
/* 81432C78 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81432C7C | 4E 80 00 20 */	blr
.endfn setLength__Q39textinput8tistring10StringBaseFUs

# .text:0x668 | 0x81432C80 | size: 0x40
# textinput::tistring::StringBase::clear()
.fn clear__Q39textinput8tistring10StringBaseFv, global
/* 81432C80 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81432C84 | 7C 08 02 A6 */	mflr r0
/* 81432C88 | 38 80 00 00 */	li r4, 0x0
/* 81432C8C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81432C90 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81432C94 | 7C 7F 1B 78 */	mr r31, r3
/* 81432C98 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 81432C9C | A0 BF 00 04 */	lhz r5, 0x4(r31)
/* 81432CA0 | 48 1D 37 C9 */	bl fn_81606468
/* 81432CA4 | 38 00 00 00 */	li r0, 0x0
/* 81432CA8 | B0 1F 00 06 */	sth r0, 0x6(r31)
/* 81432CAC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81432CB0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81432CB4 | 7C 08 03 A6 */	mtlr r0
/* 81432CB8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81432CBC | 4E 80 00 20 */	blr
.endfn clear__Q39textinput8tistring10StringBaseFv

# .text:0x6A8 | 0x81432CC0 | size: 0x24
# textinput::tistring::StringBase::getLastWChar()
.fn getLastWChar__Q39textinput8tistring10StringBaseFv, global
/* 81432CC0 | A0 83 00 06 */	lhz r4, 0x6(r3)
/* 81432CC4 | 34 04 FF FF */	subic. r0, r4, 0x1
/* 81432CC8 | 41 80 00 14 */	blt .L_81432CDC
/* 81432CCC | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 81432CD0 | 54 00 08 3C */	slwi r0, r0, 1
/* 81432CD4 | 7C 63 02 2E */	lhzx r3, r3, r0
/* 81432CD8 | 4E 80 00 20 */	blr
.L_81432CDC:
/* 81432CDC | 38 60 00 00 */	li r3, 0x0
/* 81432CE0 | 4E 80 00 20 */	blr
.endfn getLastWChar__Q39textinput8tistring10StringBaseFv

# .text:0x6CC | 0x81432CE4 | size: 0x220
# textinput::tistring::Decolated::inputChar(wchar_t)
.fn inputChar__Q39textinput8tistring9DecolatedFw, global
/* 81432CE4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81432CE8 | 7C 08 02 A6 */	mflr r0
/* 81432CEC | 28 04 FF FE */	cmplwi r4, 0xfffe
/* 81432CF0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81432CF4 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 81432CF8 | 7C 7F 1B 78 */	mr r31, r3
/* 81432CFC | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 81432D00 | 93 A1 00 24 */	stw r29, 0x24(r1)
/* 81432D04 | 93 81 00 20 */	stw r28, 0x20(r1)
/* 81432D08 | 7C 9C 23 78 */	mr r28, r4
/* 81432D0C | 41 82 01 D8 */	beq .L_81432EE4
/* 81432D10 | 38 A0 00 00 */	li r5, 0x0
/* 81432D14 | B0 A1 00 18 */	sth r5, 0x18(r1)
/* 81432D18 | B0 A1 00 16 */	sth r5, 0x16(r1)
/* 81432D1C | B0 A1 00 14 */	sth r5, 0x14(r1)
/* 81432D20 | B0 A1 00 12 */	sth r5, 0x12(r1)
/* 81432D24 | B0 A1 00 10 */	sth r5, 0x10(r1)
/* 81432D28 | 80 C3 00 24 */	lwz r6, 0x24(r3)
/* 81432D2C | 38 06 FF FF */	subi r0, r6, 0x1
/* 81432D30 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81432D34 | 41 81 00 B0 */	bgt .L_81432DE4
/* 81432D38 | 28 04 00 0A */	cmplwi r4, 0xa
/* 81432D3C | B0 A3 00 4A */	sth r5, 0x4a(r3)
/* 81432D40 | B0 A3 00 48 */	sth r5, 0x48(r3)
/* 81432D44 | B0 A3 00 46 */	sth r5, 0x46(r3)
/* 81432D48 | B0 A3 00 44 */	sth r5, 0x44(r3)
/* 81432D4C | B0 A3 00 42 */	sth r5, 0x42(r3)
/* 81432D50 | 40 82 00 38 */	bne .L_81432D88
/* 81432D54 | 38 80 00 00 */	li r4, 0x0
/* 81432D58 | 38 A0 00 00 */	li r5, 0x0
/* 81432D5C | 38 63 00 28 */	addi r3, r3, 0x28
/* 81432D60 | 48 1C 1F 85 */	bl fn_815F4CE4
/* 81432D64 | 54 60 06 3F */	clrlwi. r0, r3, 24
/* 81432D68 | 41 82 00 20 */	beq .L_81432D88
/* 81432D6C | 3C 80 00 01 */	lis r4, 0x1
/* 81432D70 | 38 7F 00 28 */	addi r3, r31, 0x28
/* 81432D74 | 38 04 FF FF */	subi r0, r4, 0x1
/* 81432D78 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81432D7C | 48 1C 1D B5 */	bl fn_815F4B30
/* 81432D80 | 54 7D 06 3E */	clrlwi r29, r3, 24
/* 81432D84 | 48 00 00 20 */	b .L_81432DA4
.L_81432D88:
/* 81432D88 | 7F 83 E3 78 */	mr r3, r28
/* 81432D8C | 48 00 68 7D */	bl toWLower__Q29textinput4utilFw
/* 81432D90 | 7C 60 1B 78 */	mr r0, r3
/* 81432D94 | 38 7F 00 28 */	addi r3, r31, 0x28
/* 81432D98 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81432D9C | 48 1C 1D 95 */	bl fn_815F4B30
/* 81432DA0 | 54 7D 06 3E */	clrlwi r29, r3, 24
.L_81432DA4:
/* 81432DA4 | 3B C1 00 10 */	addi r30, r1, 0x10
/* 81432DA8 | 3B 80 00 00 */	li r28, 0x0
/* 81432DAC | 48 00 00 18 */	b .L_81432DC4
.L_81432DB0:
/* 81432DB0 | 38 7F 00 28 */	addi r3, r31, 0x28
/* 81432DB4 | 48 1C 1E A5 */	bl fn_815F4C58
/* 81432DB8 | 57 80 0D FC */	clrlslwi r0, r28, 24, 1
/* 81432DBC | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 81432DC0 | 7C 7E 03 2E */	sthx r3, r30, r0
.L_81432DC4:
/* 81432DC4 | 57 80 06 3E */	clrlwi r0, r28, 24
/* 81432DC8 | 7C 00 E8 40 */	cmplw r0, r29
/* 81432DCC | 41 80 FF E4 */	blt .L_81432DB0
/* 81432DD0 | 38 7F 00 28 */	addi r3, r31, 0x28
/* 81432DD4 | 38 9F 00 42 */	addi r4, r31, 0x42
/* 81432DD8 | 38 A0 00 05 */	li r5, 0x5
/* 81432DDC | 48 1C 1F 09 */	bl fn_815F4CE4
/* 81432DE0 | 48 00 00 50 */	b .L_81432E30
.L_81432DE4:
/* 81432DE4 | 2C 06 00 03 */	cmpwi r6, 0x3
/* 81432DE8 | 40 82 00 3C */	bne .L_81432E24
/* 81432DEC | 38 C0 00 00 */	li r6, 0x0
/* 81432DF0 | B0 C1 00 10 */	sth r6, 0x10(r1)
/* 81432DF4 | 28 04 00 0A */	cmplwi r4, 0xa
/* 81432DF8 | 54 C0 08 3C */	slwi r0, r6, 1
/* 81432DFC | 38 A1 00 10 */	addi r5, r1, 0x10
/* 81432E00 | 7C 85 03 2E */	sthx r4, r5, r0
/* 81432E04 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 81432E08 | 7C A4 2B 78 */	mr r4, r5
/* 81432E0C | 38 A0 00 00 */	li r5, 0x0
/* 81432E10 | 54 C0 08 3C */	slwi r0, r6, 1
/* 81432E14 | 54 DD 04 3E */	clrlwi r29, r6, 16
/* 81432E18 | 7C A4 03 2E */	sthx r5, r4, r0
/* 81432E1C | B0 A3 00 42 */	sth r5, 0x42(r3)
/* 81432E20 | 48 00 00 10 */	b .L_81432E30
.L_81432E24:
/* 81432E24 | B0 81 00 10 */	sth r4, 0x10(r1)
/* 81432E28 | 3B A0 00 01 */	li r29, 0x1
/* 81432E2C | B0 A1 00 12 */	sth r5, 0x12(r1)
.L_81432E30:
/* 81432E30 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81432E34 | 7F E3 FB 78 */	mr r3, r31
/* 81432E38 | 38 80 00 00 */	li r4, 0x0
/* 81432E3C | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 81432E40 | 7D 89 03 A6 */	mtctr r12
/* 81432E44 | 4E 80 04 21 */	bctrl
/* 81432E48 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81432E4C | 7F E3 FB 78 */	mr r3, r31
/* 81432E50 | 38 81 00 0C */	addi r4, r1, 0xc
/* 81432E54 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81432E58 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 81432E5C | 7D 89 03 A6 */	mtctr r12
/* 81432E60 | 4E 80 04 21 */	bctrl
/* 81432E64 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 81432E68 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 81432E6C | 7C 04 00 40 */	cmplw r4, r0
/* 81432E70 | 40 82 00 38 */	bne .L_81432EA8
/* 81432E74 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81432E78 | 7F E3 FB 78 */	mr r3, r31
/* 81432E7C | 80 1F 00 18 */	lwz r0, 0x18(r31)
/* 81432E80 | 38 A1 00 10 */	addi r5, r1, 0x10
/* 81432E84 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 81432E88 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81432E8C | 7D 89 03 A6 */	mtctr r12
/* 81432E90 | 4E 80 04 21 */	bctrl
/* 81432E94 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 81432E98 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 81432E9C | 7C 03 02 14 */	add r0, r3, r0
/* 81432EA0 | 90 1F 00 18 */	stw r0, 0x18(r31)
/* 81432EA4 | 48 00 00 38 */	b .L_81432EDC
.L_81432EA8:
/* 81432EA8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81432EAC | 7C 04 00 50 */	subf r0, r4, r0
/* 81432EB0 | 7F E3 FB 78 */	mr r3, r31
/* 81432EB4 | 54 84 04 3E */	clrlwi r4, r4, 16
/* 81432EB8 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81432EBC | 54 05 04 3E */	clrlwi r5, r0, 16
/* 81432EC0 | 38 C1 00 10 */	addi r6, r1, 0x10
/* 81432EC4 | 7D 89 03 A6 */	mtctr r12
/* 81432EC8 | 4E 80 04 21 */	bctrl
/* 81432ECC | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 81432ED0 | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 81432ED4 | 7C 03 02 14 */	add r0, r3, r0
/* 81432ED8 | 90 1F 00 18 */	stw r0, 0x18(r31)
.L_81432EDC:
/* 81432EDC | 80 1F 00 18 */	lwz r0, 0x18(r31)
/* 81432EE0 | 90 1F 00 1C */	stw r0, 0x1c(r31)
.L_81432EE4:
/* 81432EE4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81432EE8 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 81432EEC | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 81432EF0 | 83 A1 00 24 */	lwz r29, 0x24(r1)
/* 81432EF4 | 83 81 00 20 */	lwz r28, 0x20(r1)
/* 81432EF8 | 7C 08 03 A6 */	mtlr r0
/* 81432EFC | 38 21 00 30 */	addi r1, r1, 0x30
/* 81432F00 | 4E 80 00 20 */	blr
.endfn inputChar__Q39textinput8tistring9DecolatedFw

# .text:0x8EC | 0x81432F04 | size: 0x14
# textinput::tistring::Decolated::confirmKana()
.fn confirmKana__Q39textinput8tistring9DecolatedFv, global
/* 81432F04 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81432F08 | 38 80 00 0A */	li r4, 0xa
/* 81432F0C | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 81432F10 | 7D 89 03 A6 */	mtctr r12
/* 81432F14 | 4E 80 04 20 */	bctr
.endfn confirmKana__Q39textinput8tistring9DecolatedFv

# .text:0x900 | 0x81432F18 | size: 0x38
# textinput::tistring::Decolated::clearKana()
.fn clearKana__Q39textinput8tistring9DecolatedFv, global
/* 81432F18 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81432F1C | 7C 08 02 A6 */	mflr r0
/* 81432F20 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81432F24 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81432F28 | 7C 7F 1B 78 */	mr r31, r3
/* 81432F2C | 38 63 00 28 */	addi r3, r3, 0x28
/* 81432F30 | 48 1C 1B D5 */	bl fn_815F4B04
/* 81432F34 | 38 00 00 00 */	li r0, 0x0
/* 81432F38 | B0 1F 00 42 */	sth r0, 0x42(r31)
/* 81432F3C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81432F40 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81432F44 | 7C 08 03 A6 */	mtlr r0
/* 81432F48 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81432F4C | 4E 80 00 20 */	blr
.endfn clearKana__Q39textinput8tistring9DecolatedFv

# .text:0x938 | 0x81432F50 | size: 0x64
# textinput::tistring::Decolated::inputString(const wchar_t*)
.fn inputString__Q39textinput8tistring9DecolatedFPCw, global
/* 81432F50 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81432F54 | 7C 08 02 A6 */	mflr r0
/* 81432F58 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81432F5C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81432F60 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81432F64 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81432F68 | 7C 7E 1B 78 */	mr r30, r3
/* 81432F6C | 41 82 00 30 */	beq .L_81432F9C
/* 81432F70 | 7C 9F 23 78 */	mr r31, r4
/* 81432F74 | 48 00 00 1C */	b .L_81432F90
.L_81432F78:
/* 81432F78 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81432F7C | 7F C3 F3 78 */	mr r3, r30
/* 81432F80 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 81432F84 | 7D 89 03 A6 */	mtctr r12
/* 81432F88 | 4E 80 04 21 */	bctrl
/* 81432F8C | 3B FF 00 02 */	addi r31, r31, 0x2
.L_81432F90:
/* 81432F90 | A0 9F 00 00 */	lhz r4, 0x0(r31)
/* 81432F94 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81432F98 | 40 82 FF E0 */	bne .L_81432F78
.L_81432F9C:
/* 81432F9C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81432FA0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81432FA4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81432FA8 | 7C 08 03 A6 */	mtlr r0
/* 81432FAC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81432FB0 | 4E 80 00 20 */	blr
.endfn inputString__Q39textinput8tistring9DecolatedFPCw

# .text:0x99C | 0x81432FB4 | size: 0x144
# textinput::tistring::Decolated::inputString(const wchar_t*, textinput::tistring::Decolated::TranslateMode)
.fn inputString__Q39textinput8tistring9DecolatedFPCwQ49textinput8tistring9Decolated13TranslateMode, global
/* 81432FB4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81432FB8 | 7C 08 02 A6 */	mflr r0
/* 81432FBC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81432FC0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81432FC4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81432FC8 | 7C BE 2B 78 */	mr r30, r5
/* 81432FCC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81432FD0 | 7C 9D 23 78 */	mr r29, r4
/* 81432FD4 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 81432FD8 | 7C 7C 1B 78 */	mr r28, r3
/* 81432FDC | 83 E3 00 24 */	lwz r31, 0x24(r3)
/* 81432FE0 | 7C 1F 28 00 */	cmpw r31, r5
/* 81432FE4 | 41 82 00 68 */	beq .L_8143304C
/* 81432FE8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81432FEC | 81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 81432FF0 | 7D 89 03 A6 */	mtctr r12
/* 81432FF4 | 4E 80 04 21 */	bctrl
/* 81432FF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81432FFC | 40 82 00 20 */	bne .L_8143301C
/* 81433000 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81433004 | 40 82 00 18 */	bne .L_8143301C
/* 81433008 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 8143300C | 7F 83 E3 78 */	mr r3, r28
/* 81433010 | 81 8C 00 C4 */	lwz r12, 0xc4(r12)
/* 81433014 | 7D 89 03 A6 */	mtctr r12
/* 81433018 | 4E 80 04 21 */	bctrl
.L_8143301C:
/* 8143301C | 2C 1E 00 02 */	cmpwi r30, 0x2
/* 81433020 | 93 DC 00 24 */	stw r30, 0x24(r28)
/* 81433024 | 41 82 00 20 */	beq .L_81433044
/* 81433028 | 40 80 00 24 */	bge .L_8143304C
/* 8143302C | 2C 1E 00 01 */	cmpwi r30, 0x1
/* 81433030 | 40 80 00 08 */	bge .L_81433038
/* 81433034 | 48 00 00 18 */	b .L_8143304C
.L_81433038:
/* 81433038 | 38 00 00 04 */	li r0, 0x4
/* 8143303C | 90 1C 00 34 */	stw r0, 0x34(r28)
/* 81433040 | 48 00 00 0C */	b .L_8143304C
.L_81433044:
/* 81433044 | 38 00 00 08 */	li r0, 0x8
/* 81433048 | 90 1C 00 34 */	stw r0, 0x34(r28)
.L_8143304C:
/* 8143304C | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81433050 | 7F 83 E3 78 */	mr r3, r28
/* 81433054 | 7F A4 EB 78 */	mr r4, r29
/* 81433058 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8143305C | 7D 89 03 A6 */	mtctr r12
/* 81433060 | 4E 80 04 21 */	bctrl
/* 81433064 | 80 1C 00 24 */	lwz r0, 0x24(r28)
/* 81433068 | 7C 00 F8 00 */	cmpw r0, r31
/* 8143306C | 41 82 00 6C */	beq .L_814330D8
/* 81433070 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81433074 | 7F 83 E3 78 */	mr r3, r28
/* 81433078 | 81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 8143307C | 7D 89 03 A6 */	mtctr r12
/* 81433080 | 4E 80 04 21 */	bctrl
/* 81433084 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81433088 | 40 82 00 20 */	bne .L_814330A8
/* 8143308C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81433090 | 40 82 00 18 */	bne .L_814330A8
/* 81433094 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81433098 | 7F 83 E3 78 */	mr r3, r28
/* 8143309C | 81 8C 00 C4 */	lwz r12, 0xc4(r12)
/* 814330A0 | 7D 89 03 A6 */	mtctr r12
/* 814330A4 | 4E 80 04 21 */	bctrl
.L_814330A8:
/* 814330A8 | 2C 1F 00 02 */	cmpwi r31, 0x2
/* 814330AC | 93 FC 00 24 */	stw r31, 0x24(r28)
/* 814330B0 | 41 82 00 20 */	beq .L_814330D0
/* 814330B4 | 40 80 00 24 */	bge .L_814330D8
/* 814330B8 | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 814330BC | 40 80 00 08 */	bge .L_814330C4
/* 814330C0 | 48 00 00 18 */	b .L_814330D8
.L_814330C4:
/* 814330C4 | 38 00 00 04 */	li r0, 0x4
/* 814330C8 | 90 1C 00 34 */	stw r0, 0x34(r28)
/* 814330CC | 48 00 00 0C */	b .L_814330D8
.L_814330D0:
/* 814330D0 | 38 00 00 08 */	li r0, 0x8
/* 814330D4 | 90 1C 00 34 */	stw r0, 0x34(r28)
.L_814330D8:
/* 814330D8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814330DC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814330E0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814330E4 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814330E8 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814330EC | 7C 08 03 A6 */	mtlr r0
/* 814330F0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814330F4 | 4E 80 00 20 */	blr
.endfn inputString__Q39textinput8tistring9DecolatedFPCwQ49textinput8tistring9Decolated13TranslateMode

# .text:0xAE0 | 0x814330F8 | size: 0x16C
# textinput::tistring::Decolated::backSpace()
.fn backSpace__Q39textinput8tistring9DecolatedFv, global
/* 814330F8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814330FC | 7C 08 02 A6 */	mflr r0
/* 81433100 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81433104 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81433108 | 7C 7F 1B 78 */	mr r31, r3
/* 8143310C | 80 83 00 24 */	lwz r4, 0x24(r3)
/* 81433110 | 38 04 FF FF */	subi r0, r4, 0x1
/* 81433114 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81433118 | 41 81 00 4C */	bgt .L_81433164
/* 8143311C | 38 80 00 00 */	li r4, 0x0
/* 81433120 | 38 A0 00 00 */	li r5, 0x0
/* 81433124 | 38 63 00 28 */	addi r3, r3, 0x28
/* 81433128 | 48 1C 1B BD */	bl fn_815F4CE4
/* 8143312C | 54 60 06 3F */	clrlwi. r0, r3, 24
/* 81433130 | 41 82 00 34 */	beq .L_81433164
/* 81433134 | 88 DF 00 39 */	lbz r6, 0x39(r31)
/* 81433138 | 38 7F 00 28 */	addi r3, r31, 0x28
/* 8143313C | 38 80 00 00 */	li r4, 0x0
/* 81433140 | 38 A0 00 00 */	li r5, 0x0
/* 81433144 | 38 06 FF FF */	subi r0, r6, 0x1
/* 81433148 | 98 1F 00 39 */	stb r0, 0x39(r31)
/* 8143314C | 48 1C 1B 99 */	bl fn_815F4CE4
/* 81433150 | 54 60 0D FC */	clrlslwi r0, r3, 24, 1
/* 81433154 | 38 80 00 00 */	li r4, 0x0
/* 81433158 | 7C 7F 02 14 */	add r3, r31, r0
/* 8143315C | B0 83 00 42 */	sth r4, 0x42(r3)
/* 81433160 | 48 00 00 F0 */	b .L_81433250
.L_81433164:
/* 81433164 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81433168 | 7F E3 FB 78 */	mr r3, r31
/* 8143316C | 38 81 00 10 */	addi r4, r1, 0x10
/* 81433170 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 81433174 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 81433178 | 7D 89 03 A6 */	mtctr r12
/* 8143317C | 4E 80 04 21 */	bctrl
/* 81433180 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 81433184 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 81433188 | 7C 00 20 40 */	cmplw r0, r4
/* 8143318C | 40 82 00 0C */	bne .L_81433198
/* 81433190 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81433194 | 41 82 00 BC */	beq .L_81433250
.L_81433198:
/* 81433198 | 7C 00 20 40 */	cmplw r0, r4
/* 8143319C | 40 82 00 74 */	bne .L_81433210
/* 814331A0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814331A4 | 7F E3 FB 78 */	mr r3, r31
/* 814331A8 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 814331AC | 7D 89 03 A6 */	mtctr r12
/* 814331B0 | 4E 80 04 21 */	bctrl
/* 814331B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814331B8 | 41 82 00 20 */	beq .L_814331D8
/* 814331BC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814331C0 | 7F E3 FB 78 */	mr r3, r31
/* 814331C4 | 38 80 00 00 */	li r4, 0x0
/* 814331C8 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 814331CC | 7D 89 03 A6 */	mtctr r12
/* 814331D0 | 4E 80 04 21 */	bctrl
/* 814331D4 | 48 00 00 74 */	b .L_81433248
.L_814331D8:
/* 814331D8 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 814331DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814331E0 | 41 82 00 0C */	beq .L_814331EC
/* 814331E4 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814331E8 | 90 1F 00 18 */	stw r0, 0x18(r31)
.L_814331EC:
/* 814331EC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814331F0 | 7F E3 FB 78 */	mr r3, r31
/* 814331F4 | 80 1F 00 18 */	lwz r0, 0x18(r31)
/* 814331F8 | 38 A0 00 01 */	li r5, 0x1
/* 814331FC | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81433200 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81433204 | 7D 89 03 A6 */	mtctr r12
/* 81433208 | 4E 80 04 21 */	bctrl
/* 8143320C | 48 00 00 3C */	b .L_81433248
.L_81433210:
/* 81433210 | 38 00 00 00 */	li r0, 0x0
/* 81433214 | 80 A1 00 10 */	lwz r5, 0x10(r1)
/* 81433218 | B0 01 00 08 */	sth r0, 0x8(r1)
/* 8143321C | 7F E3 FB 78 */	mr r3, r31
/* 81433220 | 7C 05 20 50 */	subf r0, r5, r4
/* 81433224 | 54 A4 04 3E */	clrlwi r4, r5, 16
/* 81433228 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143322C | 54 05 04 3E */	clrlwi r5, r0, 16
/* 81433230 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 81433234 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81433238 | 7D 89 03 A6 */	mtctr r12
/* 8143323C | 4E 80 04 21 */	bctrl
/* 81433240 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 81433244 | 90 1F 00 18 */	stw r0, 0x18(r31)
.L_81433248:
/* 81433248 | 80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8143324C | 90 1F 00 1C */	stw r0, 0x1c(r31)
.L_81433250:
/* 81433250 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81433254 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81433258 | 7C 08 03 A6 */	mtlr r0
/* 8143325C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81433260 | 4E 80 00 20 */	blr
.endfn backSpace__Q39textinput8tistring9DecolatedFv

# .text:0xC4C | 0x81433264 | size: 0x70
# textinput::tistring::Decolated::confirm(const wchar_t*)
.fn confirm__Q39textinput8tistring9DecolatedFPCw, global
/* 81433264 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81433268 | 7C 08 02 A6 */	mflr r0
/* 8143326C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81433270 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81433274 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81433278 | 7C 9F 23 78 */	mr r31, r4
/* 8143327C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81433280 | 7C 7E 1B 78 */	mr r30, r3
/* 81433284 | 41 82 00 38 */	beq .L_814332BC
/* 81433288 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143328C | 7F E5 FB 78 */	mr r5, r31
/* 81433290 | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 81433294 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 81433298 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 8143329C | 7D 89 03 A6 */	mtctr r12
/* 814332A0 | 4E 80 04 21 */	bctrl
/* 814332A4 | 7F E3 FB 78 */	mr r3, r31
/* 814332A8 | 48 1D 54 05 */	bl fn_816086AC
/* 814332AC | 80 1E 00 18 */	lwz r0, 0x18(r30)
/* 814332B0 | 7C 00 1A 14 */	add r0, r0, r3
/* 814332B4 | 90 1E 00 18 */	stw r0, 0x18(r30)
/* 814332B8 | 90 1E 00 1C */	stw r0, 0x1c(r30)
.L_814332BC:
/* 814332BC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814332C0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814332C4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814332C8 | 7C 08 03 A6 */	mtlr r0
/* 814332CC | 38 21 00 10 */	addi r1, r1, 0x10
/* 814332D0 | 4E 80 00 20 */	blr
.endfn confirm__Q39textinput8tistring9DecolatedFPCw

# .text:0xCBC | 0x814332D4 | size: 0x74
# textinput::tistring::Decolated::moveCursorRight()
.fn moveCursorRight__Q39textinput8tistring9DecolatedFv, global
/* 814332D4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814332D8 | 7C 08 02 A6 */	mflr r0
/* 814332DC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814332E0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814332E4 | 7C 7F 1B 78 */	mr r31, r3
/* 814332E8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814332EC | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 814332F0 | 7D 89 03 A6 */	mtctr r12
/* 814332F4 | 4E 80 04 21 */	bctrl
/* 814332F8 | 80 9F 00 18 */	lwz r4, 0x18(r31)
/* 814332FC | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81433300 | 7C 04 00 40 */	cmplw r4, r0
/* 81433304 | 41 80 00 14 */	blt .L_81433318
/* 81433308 | 88 1F 00 20 */	lbz r0, 0x20(r31)
/* 8143330C | 7C 00 00 34 */	cntlzw r0, r0
/* 81433310 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81433314 | 48 00 00 20 */	b .L_81433334
.L_81433318:
/* 81433318 | 88 1F 00 20 */	lbz r0, 0x20(r31)
/* 8143331C | 38 64 00 01 */	addi r3, r4, 0x1
/* 81433320 | 90 7F 00 18 */	stw r3, 0x18(r31)
/* 81433324 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81433328 | 40 82 00 08 */	bne .L_81433330
/* 8143332C | 90 7F 00 1C */	stw r3, 0x1c(r31)
.L_81433330:
/* 81433330 | 38 60 00 00 */	li r3, 0x0
.L_81433334:
/* 81433334 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81433338 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143333C | 7C 08 03 A6 */	mtlr r0
/* 81433340 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81433344 | 4E 80 00 20 */	blr
.endfn moveCursorRight__Q39textinput8tistring9DecolatedFv

# .text:0xD30 | 0x81433348 | size: 0x34
# textinput::tistring::Decolated::moveCursorLeft()
.fn moveCursorLeft__Q39textinput8tistring9DecolatedFv, global
/* 81433348 | 80 83 00 18 */	lwz r4, 0x18(r3)
/* 8143334C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81433350 | 40 82 00 0C */	bne .L_8143335C
/* 81433354 | 38 60 00 00 */	li r3, 0x0
/* 81433358 | 4E 80 00 20 */	blr
.L_8143335C:
/* 8143335C | 88 03 00 20 */	lbz r0, 0x20(r3)
/* 81433360 | 38 84 FF FF */	subi r4, r4, 0x1
/* 81433364 | 90 83 00 18 */	stw r4, 0x18(r3)
/* 81433368 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8143336C | 40 82 00 08 */	bne .L_81433374
/* 81433370 | 90 83 00 1C */	stw r4, 0x1c(r3)
.L_81433374:
/* 81433374 | 38 60 00 01 */	li r3, 0x1
/* 81433378 | 4E 80 00 20 */	blr
.endfn moveCursorLeft__Q39textinput8tistring9DecolatedFv

# .text:0xD64 | 0x8143337C | size: 0x18
# textinput::tistring::Decolated::setCursorPos(unsigned long)
.fn setCursorPos__Q39textinput8tistring9DecolatedFUl, global
/* 8143337C | 88 03 00 20 */	lbz r0, 0x20(r3)
/* 81433380 | 90 83 00 18 */	stw r4, 0x18(r3)
/* 81433384 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81433388 | 4C 82 00 20 */	bnelr
/* 8143338C | 90 83 00 1C */	stw r4, 0x1c(r3)
/* 81433390 | 4E 80 00 20 */	blr
.endfn setCursorPos__Q39textinput8tistring9DecolatedFUl

# .text:0xD7C | 0x81433394 | size: 0x14
# textinput::tistring::Decolated::onSustain()
.fn onSustain__Q39textinput8tistring9DecolatedFv, global
/* 81433394 | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 81433398 | 38 80 00 01 */	li r4, 0x1
/* 8143339C | 98 83 00 20 */	stb r4, 0x20(r3)
/* 814333A0 | 90 03 00 1C */	stw r0, 0x1c(r3)
/* 814333A4 | 4E 80 00 20 */	blr
.endfn onSustain__Q39textinput8tistring9DecolatedFv

# .text:0xD90 | 0x814333A8 | size: 0xC
# textinput::tistring::Decolated::offSustain()
.fn offSustain__Q39textinput8tistring9DecolatedFv, global
/* 814333A8 | 38 00 00 00 */	li r0, 0x0
/* 814333AC | 98 03 00 20 */	stb r0, 0x20(r3)
/* 814333B0 | 4E 80 00 20 */	blr
.endfn offSustain__Q39textinput8tistring9DecolatedFv

# .text:0xD9C | 0x814333B4 | size: 0x14
# textinput::tistring::Decolated::getCursorPos(unsigned long*, unsigned long*)
.fn getCursorPos__Q39textinput8tistring9DecolatedFPUlPUl, global
/* 814333B4 | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 814333B8 | 90 04 00 00 */	stw r0, 0x0(r4)
/* 814333BC | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 814333C0 | 90 05 00 00 */	stw r0, 0x0(r5)
/* 814333C4 | 4E 80 00 20 */	blr
.endfn getCursorPos__Q39textinput8tistring9DecolatedFPUlPUl

# .text:0xDB0 | 0x814333C8 | size: 0x64
# textinput::tistring::Decolated::canBackSpace()
.fn canBackSpace__Q39textinput8tistring9DecolatedFv, global
/* 814333C8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814333CC | 7C 08 02 A6 */	mflr r0
/* 814333D0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814333D4 | 80 83 00 18 */	lwz r4, 0x18(r3)
/* 814333D8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814333DC | 40 82 00 14 */	bne .L_814333F0
/* 814333E0 | 40 82 00 18 */	bne .L_814333F8
/* 814333E4 | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 814333E8 | 7C 04 00 40 */	cmplw r4, r0
/* 814333EC | 41 82 00 0C */	beq .L_814333F8
.L_814333F0:
/* 814333F0 | 38 60 00 01 */	li r3, 0x1
/* 814333F4 | 48 00 00 28 */	b .L_8143341C
.L_814333F8:
/* 814333F8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814333FC | 81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 81433400 | 7D 89 03 A6 */	mtctr r12
/* 81433404 | 4E 80 04 21 */	bctrl
/* 81433408 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143340C | 40 82 00 0C */	bne .L_81433418
/* 81433410 | 38 60 00 01 */	li r3, 0x1
/* 81433414 | 48 00 00 08 */	b .L_8143341C
.L_81433418:
/* 81433418 | 38 60 00 00 */	li r3, 0x0
.L_8143341C:
/* 8143341C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81433420 | 7C 08 03 A6 */	mtlr r0
/* 81433424 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81433428 | 4E 80 00 20 */	blr
.endfn canBackSpace__Q39textinput8tistring9DecolatedFv

# .text:0xE14 | 0x8143342C | size: 0x78
# textinput::tistring::Decolated::deleteForward()
.fn deleteForward__Q39textinput8tistring9DecolatedFv, global
/* 8143342C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81433430 | 7C 08 02 A6 */	mflr r0
/* 81433434 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81433438 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143343C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81433440 | 7C 7E 1B 78 */	mr r30, r3
/* 81433444 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81433448 | 83 E3 00 18 */	lwz r31, 0x18(r3)
/* 8143344C | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81433450 | 7D 89 03 A6 */	mtctr r12
/* 81433454 | 4E 80 04 21 */	bctrl
/* 81433458 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 8143345C | 7C 1F 00 40 */	cmplw r31, r0
/* 81433460 | 41 80 00 0C */	blt .L_8143346C
/* 81433464 | 38 60 00 00 */	li r3, 0x0
/* 81433468 | 48 00 00 24 */	b .L_8143348C
.L_8143346C:
/* 8143346C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81433470 | 7F C3 F3 78 */	mr r3, r30
/* 81433474 | 57 E4 04 3E */	clrlwi r4, r31, 16
/* 81433478 | 38 A0 00 01 */	li r5, 0x1
/* 8143347C | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81433480 | 7D 89 03 A6 */	mtctr r12
/* 81433484 | 4E 80 04 21 */	bctrl
/* 81433488 | 38 60 00 01 */	li r3, 0x1
.L_8143348C:
/* 8143348C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81433490 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81433494 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81433498 | 7C 08 03 A6 */	mtlr r0
/* 8143349C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814334A0 | 4E 80 00 20 */	blr
.endfn deleteForward__Q39textinput8tistring9DecolatedFv

# .text:0xE8C | 0x814334A4 | size: 0x30
# textinput::tistring::Decolated::getSelected(unsigned long&, unsigned long&)
.fn getSelected__Q39textinput8tistring9DecolatedFRUlRUl, global
/* 814334A4 | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 814334A8 | 80 C3 00 18 */	lwz r6, 0x18(r3)
/* 814334AC | 7C 06 00 40 */	cmplw r6, r0
/* 814334B0 | 40 81 00 14 */	ble .L_814334C4
/* 814334B4 | 90 04 00 00 */	stw r0, 0x0(r4)
/* 814334B8 | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 814334BC | 90 05 00 00 */	stw r0, 0x0(r5)
/* 814334C0 | 4E 80 00 20 */	blr
.L_814334C4:
/* 814334C4 | 90 C4 00 00 */	stw r6, 0x0(r4)
/* 814334C8 | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 814334CC | 90 05 00 00 */	stw r0, 0x0(r5)
/* 814334D0 | 4E 80 00 20 */	blr
.endfn getSelected__Q39textinput8tistring9DecolatedFRUlRUl

# .text:0xEBC | 0x814334D4 | size: 0x64
# textinput::tistring::Decolated::getWCharAtCursor()
.fn getWCharAtCursor__Q39textinput8tistring9DecolatedFv, global
/* 814334D4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814334D8 | 7C 08 02 A6 */	mflr r0
/* 814334DC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814334E0 | 38 81 00 0C */	addi r4, r1, 0xc
/* 814334E4 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814334E8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814334EC | 7C 7F 1B 78 */	mr r31, r3
/* 814334F0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814334F4 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 814334F8 | 7D 89 03 A6 */	mtctr r12
/* 814334FC | 4E 80 04 21 */	bctrl
/* 81433500 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 81433504 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81433508 | 40 82 00 0C */	bne .L_81433514
/* 8143350C | 38 60 00 00 */	li r3, 0x0
/* 81433510 | 48 00 00 14 */	b .L_81433524
.L_81433514:
/* 81433514 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 81433518 | 54 00 08 3C */	slwi r0, r0, 1
/* 8143351C | 7C 63 02 14 */	add r3, r3, r0
/* 81433520 | A0 63 FF FE */	lhz r3, -0x2(r3)
.L_81433524:
/* 81433524 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81433528 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8143352C | 7C 08 03 A6 */	mtlr r0
/* 81433530 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81433534 | 4E 80 00 20 */	blr
.endfn getWCharAtCursor__Q39textinput8tistring9DecolatedFv

# .text:0xF20 | 0x81433538 | size: 0x68
# textinput::tistring::Decolated::replaceAtCursor(wchar_t)
.fn replaceAtCursor__Q39textinput8tistring9DecolatedFw, global
/* 81433538 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8143353C | 7C 08 02 A6 */	mflr r0
/* 81433540 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81433544 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81433548 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8143354C | 7C 9F 23 78 */	mr r31, r4
/* 81433550 | 38 81 00 0C */	addi r4, r1, 0xc
/* 81433554 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81433558 | 7C 7E 1B 78 */	mr r30, r3
/* 8143355C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81433560 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 81433564 | 7D 89 03 A6 */	mtctr r12
/* 81433568 | 4E 80 04 21 */	bctrl
/* 8143356C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 81433570 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81433574 | 41 82 00 14 */	beq .L_81433588
/* 81433578 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 8143357C | 54 00 08 3C */	slwi r0, r0, 1
/* 81433580 | 7C 63 02 14 */	add r3, r3, r0
/* 81433584 | B3 E3 FF FE */	sth r31, -0x2(r3)
.L_81433588:
/* 81433588 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8143358C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81433590 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81433594 | 7C 08 03 A6 */	mtlr r0
/* 81433598 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8143359C | 4E 80 00 20 */	blr
.endfn replaceAtCursor__Q39textinput8tistring9DecolatedFw

# .text:0xF88 | 0x814335A0 | size: 0x40
# textinput::tistring::Decolated::isDakuten()
.fn isDakuten__Q39textinput8tistring9DecolatedFv, global
/* 814335A0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814335A4 | 7C 08 02 A6 */	mflr r0
/* 814335A8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814335AC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814335B0 | 81 8C 00 90 */	lwz r12, 0x90(r12)
/* 814335B4 | 7D 89 03 A6 */	mtctr r12
/* 814335B8 | 4E 80 04 21 */	bctrl
/* 814335BC | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814335C0 | 48 00 6B 8D */	bl KBD_IsDakuten__Q29textinput4utilFw
/* 814335C4 | 7C 03 00 D0 */	neg r0, r3
/* 814335C8 | 7C 00 1B 78 */	or r0, r0, r3
/* 814335CC | 54 03 0F FE */	srwi r3, r0, 31
/* 814335D0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814335D4 | 7C 08 03 A6 */	mtlr r0
/* 814335D8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814335DC | 4E 80 00 20 */	blr
.endfn isDakuten__Q39textinput8tistring9DecolatedFv

# .text:0xFC8 | 0x814335E0 | size: 0x5C
# textinput::tistring::Decolated::converDakuten()
.fn converDakuten__Q39textinput8tistring9DecolatedFv, global
/* 814335E0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814335E4 | 7C 08 02 A6 */	mflr r0
/* 814335E8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814335EC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814335F0 | 7C 7F 1B 78 */	mr r31, r3
/* 814335F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814335F8 | 81 8C 00 90 */	lwz r12, 0x90(r12)
/* 814335FC | 7D 89 03 A6 */	mtctr r12
/* 81433600 | 4E 80 04 21 */	bctrl
/* 81433604 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81433608 | 48 00 62 A9 */	bl KBD_ConvertDakuten__Q29textinput4utilFw
/* 8143360C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81433610 | 7C 60 1B 78 */	mr r0, r3
/* 81433614 | 7F E3 FB 78 */	mr r3, r31
/* 81433618 | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 8143361C | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81433620 | 7D 89 03 A6 */	mtctr r12
/* 81433624 | 4E 80 04 21 */	bctrl
/* 81433628 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143362C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81433630 | 7C 08 03 A6 */	mtlr r0
/* 81433634 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81433638 | 4E 80 00 20 */	blr
.endfn converDakuten__Q39textinput8tistring9DecolatedFv

# .text:0x1024 | 0x8143363C | size: 0x40
# textinput::tistring::Decolated::isHandaku()
.fn isHandaku__Q39textinput8tistring9DecolatedFv, global
/* 8143363C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81433640 | 7C 08 02 A6 */	mflr r0
/* 81433644 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81433648 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143364C | 81 8C 00 90 */	lwz r12, 0x90(r12)
/* 81433650 | 7D 89 03 A6 */	mtctr r12
/* 81433654 | 4E 80 04 21 */	bctrl
/* 81433658 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8143365C | 48 00 6B 29 */	bl KBD_IsHandaku__Q29textinput4utilFw
/* 81433660 | 7C 03 00 D0 */	neg r0, r3
/* 81433664 | 7C 00 1B 78 */	or r0, r0, r3
/* 81433668 | 54 03 0F FE */	srwi r3, r0, 31
/* 8143366C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81433670 | 7C 08 03 A6 */	mtlr r0
/* 81433674 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81433678 | 4E 80 00 20 */	blr
.endfn isHandaku__Q39textinput8tistring9DecolatedFv

# .text:0x1064 | 0x8143367C | size: 0x5C
# textinput::tistring::Decolated::converHandaku()
.fn converHandaku__Q39textinput8tistring9DecolatedFv, global
/* 8143367C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81433680 | 7C 08 02 A6 */	mflr r0
/* 81433684 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81433688 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143368C | 7C 7F 1B 78 */	mr r31, r3
/* 81433690 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81433694 | 81 8C 00 90 */	lwz r12, 0x90(r12)
/* 81433698 | 7D 89 03 A6 */	mtctr r12
/* 8143369C | 4E 80 04 21 */	bctrl
/* 814336A0 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814336A4 | 48 00 66 71 */	bl KBD_ConvertHandaku__Q29textinput4utilFw
/* 814336A8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814336AC | 7C 60 1B 78 */	mr r0, r3
/* 814336B0 | 7F E3 FB 78 */	mr r3, r31
/* 814336B4 | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 814336B8 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 814336BC | 7D 89 03 A6 */	mtctr r12
/* 814336C0 | 4E 80 04 21 */	bctrl
/* 814336C4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814336C8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814336CC | 7C 08 03 A6 */	mtlr r0
/* 814336D0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814336D4 | 4E 80 00 20 */	blr
.endfn converHandaku__Q39textinput8tistring9DecolatedFv

# .text:0x10C0 | 0x814336D8 | size: 0x5C
# textinput::tistring::Decolated::convertAll()
.fn convertAll__Q39textinput8tistring9DecolatedFv, global
/* 814336D8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814336DC | 7C 08 02 A6 */	mflr r0
/* 814336E0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814336E4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814336E8 | 7C 7F 1B 78 */	mr r31, r3
/* 814336EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814336F0 | 81 8C 00 90 */	lwz r12, 0x90(r12)
/* 814336F4 | 7D 89 03 A6 */	mtctr r12
/* 814336F8 | 4E 80 04 21 */	bctrl
/* 814336FC | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81433700 | 48 00 68 ED */	bl KBD_ConvertAll__Q29textinput4utilFw
/* 81433704 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81433708 | 7C 60 1B 78 */	mr r0, r3
/* 8143370C | 7F E3 FB 78 */	mr r3, r31
/* 81433710 | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 81433714 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81433718 | 7D 89 03 A6 */	mtctr r12
/* 8143371C | 4E 80 04 21 */	bctrl
/* 81433720 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81433724 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81433728 | 7C 08 03 A6 */	mtlr r0
/* 8143372C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81433730 | 4E 80 00 20 */	blr
.endfn convertAll__Q39textinput8tistring9DecolatedFv

# .text:0x111C | 0x81433734 | size: 0x40
# textinput::tistring::Decolated::isSmall()
.fn isSmall__Q39textinput8tistring9DecolatedFv, global
/* 81433734 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81433738 | 7C 08 02 A6 */	mflr r0
/* 8143373C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81433740 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81433744 | 81 8C 00 90 */	lwz r12, 0x90(r12)
/* 81433748 | 7D 89 03 A6 */	mtctr r12
/* 8143374C | 4E 80 04 21 */	bctrl
/* 81433750 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81433754 | 48 00 6A 69 */	bl KBD_IsSmall__Q29textinput4utilFw
/* 81433758 | 7C 03 00 D0 */	neg r0, r3
/* 8143375C | 7C 00 1B 78 */	or r0, r0, r3
/* 81433760 | 54 03 0F FE */	srwi r3, r0, 31
/* 81433764 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81433768 | 7C 08 03 A6 */	mtlr r0
/* 8143376C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81433770 | 4E 80 00 20 */	blr
.endfn isSmall__Q39textinput8tistring9DecolatedFv

# .text:0x115C | 0x81433774 | size: 0x5C
# textinput::tistring::Decolated::converSmall()
.fn converSmall__Q39textinput8tistring9DecolatedFv, global
/* 81433774 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81433778 | 7C 08 02 A6 */	mflr r0
/* 8143377C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81433780 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81433784 | 7C 7F 1B 78 */	mr r31, r3
/* 81433788 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143378C | 81 8C 00 90 */	lwz r12, 0x90(r12)
/* 81433790 | 7D 89 03 A6 */	mtctr r12
/* 81433794 | 4E 80 04 21 */	bctrl
/* 81433798 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8143379C | 48 00 66 E5 */	bl KBD_ConvertSmall__Q29textinput4utilFw
/* 814337A0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814337A4 | 7C 60 1B 78 */	mr r0, r3
/* 814337A8 | 7F E3 FB 78 */	mr r3, r31
/* 814337AC | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 814337B0 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 814337B4 | 7D 89 03 A6 */	mtctr r12
/* 814337B8 | 4E 80 04 21 */	bctrl
/* 814337BC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814337C0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814337C4 | 7C 08 03 A6 */	mtlr r0
/* 814337C8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814337CC | 4E 80 00 20 */	blr
.endfn converSmall__Q39textinput8tistring9DecolatedFv

# .text:0x11B8 | 0x814337D0 | size: 0xDC
# textinput::tistring::Decolated::atTheBeginningOfASentence()
.fn atTheBeginningOfASentence__Q39textinput8tistring9DecolatedFv, global
/* 814337D0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814337D4 | 7C 08 02 A6 */	mflr r0
/* 814337D8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814337DC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814337E0 | 7C 7F 1B 78 */	mr r31, r3
/* 814337E4 | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 814337E8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814337EC | 40 82 00 0C */	bne .L_814337F8
/* 814337F0 | 38 60 00 00 */	li r3, 0x0
/* 814337F4 | 48 00 00 A4 */	b .L_81433898
.L_814337F8:
/* 814337F8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814337FC | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81433800 | 7D 89 03 A6 */	mtctr r12
/* 81433804 | 4E 80 04 21 */	bctrl
/* 81433808 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 8143380C | 28 00 00 01 */	cmplwi r0, 0x1
/* 81433810 | 40 80 00 0C */	bge .L_8143381C
/* 81433814 | 38 60 00 00 */	li r3, 0x0
/* 81433818 | 48 00 00 80 */	b .L_81433898
.L_8143381C:
/* 8143381C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81433820 | 7F E3 FB 78 */	mr r3, r31
/* 81433824 | 38 81 00 0C */	addi r4, r1, 0xc
/* 81433828 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8143382C | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 81433830 | 7D 89 03 A6 */	mtctr r12
/* 81433834 | 4E 80 04 21 */	bctrl
/* 81433838 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 8143383C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 81433840 | 7C 03 00 40 */	cmplw r3, r0
/* 81433844 | 41 82 00 0C */	beq .L_81433850
/* 81433848 | 38 60 00 00 */	li r3, 0x0
/* 8143384C | 48 00 00 4C */	b .L_81433898
.L_81433850:
/* 81433850 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81433854 | 7F E3 FB 78 */	mr r3, r31
/* 81433858 | 81 8C 00 90 */	lwz r12, 0x90(r12)
/* 8143385C | 7D 89 03 A6 */	mtctr r12
/* 81433860 | 4E 80 04 21 */	bctrl
/* 81433864 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81433868 | 2C 00 00 2E */	cmpwi r0, 0x2e
/* 8143386C | 41 82 00 20 */	beq .L_8143388C
/* 81433870 | 40 80 00 10 */	bge .L_81433880
/* 81433874 | 2C 00 00 21 */	cmpwi r0, 0x21
/* 81433878 | 41 82 00 14 */	beq .L_8143388C
/* 8143387C | 48 00 00 18 */	b .L_81433894
.L_81433880:
/* 81433880 | 2C 00 00 3F */	cmpwi r0, 0x3f
/* 81433884 | 41 82 00 08 */	beq .L_8143388C
/* 81433888 | 48 00 00 0C */	b .L_81433894
.L_8143388C:
/* 8143388C | 38 60 00 01 */	li r3, 0x1
/* 81433890 | 48 00 00 08 */	b .L_81433898
.L_81433894:
/* 81433894 | 38 60 00 00 */	li r3, 0x0
.L_81433898:
/* 81433898 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8143389C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814338A0 | 7C 08 03 A6 */	mtlr r0
/* 814338A4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814338A8 | 4E 80 00 20 */	blr
.endfn atTheBeginningOfASentence__Q39textinput8tistring9DecolatedFv

# .text:0x1294 | 0x814338AC | size: 0xA4
# textinput::tistring::Decolated::setTranslateMode(textinput::tistring::Decolated::TranslateMode)
.fn setTranslateMode__Q39textinput8tistring9DecolatedFQ49textinput8tistring9Decolated13TranslateMode, global
/* 814338AC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814338B0 | 7C 08 02 A6 */	mflr r0
/* 814338B4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814338B8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814338BC | 7C 9F 23 78 */	mr r31, r4
/* 814338C0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814338C4 | 7C 7E 1B 78 */	mr r30, r3
/* 814338C8 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 814338CC | 7C 00 20 00 */	cmpw r0, r4
/* 814338D0 | 41 82 00 68 */	beq .L_81433938
/* 814338D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814338D8 | 81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 814338DC | 7D 89 03 A6 */	mtctr r12
/* 814338E0 | 4E 80 04 21 */	bctrl
/* 814338E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814338E8 | 40 82 00 20 */	bne .L_81433908
/* 814338EC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814338F0 | 40 82 00 18 */	bne .L_81433908
/* 814338F4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814338F8 | 7F C3 F3 78 */	mr r3, r30
/* 814338FC | 81 8C 00 C4 */	lwz r12, 0xc4(r12)
/* 81433900 | 7D 89 03 A6 */	mtctr r12
/* 81433904 | 4E 80 04 21 */	bctrl
.L_81433908:
/* 81433908 | 2C 1F 00 02 */	cmpwi r31, 0x2
/* 8143390C | 93 FE 00 24 */	stw r31, 0x24(r30)
/* 81433910 | 41 82 00 20 */	beq .L_81433930
/* 81433914 | 40 80 00 24 */	bge .L_81433938
/* 81433918 | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 8143391C | 40 80 00 08 */	bge .L_81433924
/* 81433920 | 48 00 00 18 */	b .L_81433938
.L_81433924:
/* 81433924 | 38 00 00 04 */	li r0, 0x4
/* 81433928 | 90 1E 00 34 */	stw r0, 0x34(r30)
/* 8143392C | 48 00 00 0C */	b .L_81433938
.L_81433930:
/* 81433930 | 38 00 00 08 */	li r0, 0x8
/* 81433934 | 90 1E 00 34 */	stw r0, 0x34(r30)
.L_81433938:
/* 81433938 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143393C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81433940 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81433944 | 7C 08 03 A6 */	mtlr r0
/* 81433948 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143394C | 4E 80 00 20 */	blr
.endfn setTranslateMode__Q39textinput8tistring9DecolatedFQ49textinput8tistring9Decolated13TranslateMode

# .text:0x1338 | 0x81433950 | size: 0x74
# textinput::tistring::Decolated::initKanaConverter()
.fn initKanaConverter__Q39textinput8tistring9DecolatedFv, global
/* 81433950 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81433954 | 7C 08 02 A6 */	mflr r0
/* 81433958 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143395C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81433960 | 7C 7F 1B 78 */	mr r31, r3
/* 81433964 | 38 63 00 28 */	addi r3, r3, 0x28
/* 81433968 | 48 1C 11 41 */	bl fn_815F4AA8
/* 8143396C | 38 7F 00 28 */	addi r3, r31, 0x28
/* 81433970 | 38 80 00 00 */	li r4, 0x0
/* 81433974 | 48 1C 11 A5 */	bl fn_815F4B18
/* 81433978 | 80 1F 00 24 */	lwz r0, 0x24(r31)
/* 8143397C | 38 60 00 00 */	li r3, 0x0
/* 81433980 | B0 7F 00 42 */	sth r3, 0x42(r31)
/* 81433984 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81433988 | 41 82 00 20 */	beq .L_814339A8
/* 8143398C | 40 80 00 24 */	bge .L_814339B0
/* 81433990 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81433994 | 40 80 00 08 */	bge .L_8143399C
/* 81433998 | 48 00 00 18 */	b .L_814339B0
.L_8143399C:
/* 8143399C | 38 00 00 04 */	li r0, 0x4
/* 814339A0 | 90 1F 00 34 */	stw r0, 0x34(r31)
/* 814339A4 | 48 00 00 0C */	b .L_814339B0
.L_814339A8:
/* 814339A8 | 38 00 00 08 */	li r0, 0x8
/* 814339AC | 90 1F 00 34 */	stw r0, 0x34(r31)
.L_814339B0:
/* 814339B0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814339B4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814339B8 | 7C 08 03 A6 */	mtlr r0
/* 814339BC | 38 21 00 10 */	addi r1, r1, 0x10
/* 814339C0 | 4E 80 00 20 */	blr
.endfn initKanaConverter__Q39textinput8tistring9DecolatedFv

# .text:0x13AC | 0x814339C4 | size: 0x8C
# textinput::tistring::Decolated::setLength(unsigned short)
.fn setLength__Q39textinput8tistring9DecolatedFUs, global
/* 814339C4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814339C8 | 7C 08 02 A6 */	mflr r0
/* 814339CC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814339D0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814339D4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814339D8 | 7C 9E 23 78 */	mr r30, r4
/* 814339DC | 7F DF F3 78 */	mr r31, r30
/* 814339E0 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814339E4 | 7C 7D 1B 78 */	mr r29, r3
/* 814339E8 | 48 00 00 24 */	b .L_81433A0C
.L_814339EC:
/* 814339EC | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 814339F0 | 7F A3 EB 78 */	mr r3, r29
/* 814339F4 | 57 E4 04 3E */	clrlwi r4, r31, 16
/* 814339F8 | 38 A0 00 00 */	li r5, 0x0
/* 814339FC | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81433A00 | 7D 89 03 A6 */	mtctr r12
/* 81433A04 | 4E 80 04 21 */	bctrl
/* 81433A08 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_81433A0C:
/* 81433A0C | A0 1D 00 06 */	lhz r0, 0x6(r29)
/* 81433A10 | 57 E3 04 3E */	clrlwi r3, r31, 16
/* 81433A14 | 7C 03 00 40 */	cmplw r3, r0
/* 81433A18 | 41 80 FF D4 */	blt .L_814339EC
/* 81433A1C | 80 1D 00 18 */	lwz r0, 0x18(r29)
/* 81433A20 | B3 DD 00 06 */	sth r30, 0x6(r29)
/* 81433A24 | 7C 00 F0 40 */	cmplw r0, r30
/* 81433A28 | 40 81 00 0C */	ble .L_81433A34
/* 81433A2C | 93 DD 00 1C */	stw r30, 0x1c(r29)
/* 81433A30 | 93 DD 00 18 */	stw r30, 0x18(r29)
.L_81433A34:
/* 81433A34 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81433A38 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81433A3C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81433A40 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81433A44 | 7C 08 03 A6 */	mtlr r0
/* 81433A48 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81433A4C | 4E 80 00 20 */	blr
.endfn setLength__Q39textinput8tistring9DecolatedFUs

# .text:0x1438 | 0x81433A50 | size: 0x88
# textinput::tistring::SearchOEMDictionary(unsigned short, unsigned short*, unsigned char, void*)
.fn SearchOEMDictionary__Q29textinput8tistringFUsPUsUcPv, local
/* 81433A50 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81433A54 | 7C 08 02 A6 */	mflr r0
/* 81433A58 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81433A5C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81433A60 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81433A64 | 7C BE 2B 78 */	mr r30, r5
/* 81433A68 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81433A6C | 7C 9D 23 78 */	mr r29, r4
/* 81433A70 | 80 06 00 00 */	lwz r0, 0x0(r6)
/* 81433A74 | 7C 03 00 00 */	cmpw r3, r0
/* 81433A78 | 41 80 00 0C */	blt .L_81433A84
/* 81433A7C | 38 60 00 00 */	li r3, 0x0
/* 81433A80 | 48 00 00 3C */	b .L_81433ABC
.L_81433A84:
/* 81433A84 | 54 60 13 BA */	clrlslwi r0, r3, 16, 2
/* 81433A88 | 7C 66 02 14 */	add r3, r6, r0
/* 81433A8C | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81433A90 | 7F E6 02 14 */	add r31, r6, r0
/* 81433A94 | 7F E3 FB 78 */	mr r3, r31
/* 81433A98 | 48 1D 4C 15 */	bl fn_816086AC
/* 81433A9C | 7C 1E 18 40 */	cmplw r30, r3
/* 81433AA0 | 41 81 00 0C */	bgt .L_81433AAC
/* 81433AA4 | 38 60 00 00 */	li r3, 0x0
/* 81433AA8 | 48 00 00 14 */	b .L_81433ABC
.L_81433AAC:
/* 81433AAC | 7F A3 EB 78 */	mr r3, r29
/* 81433AB0 | 7F E4 FB 78 */	mr r4, r31
/* 81433AB4 | 48 1D 4C 15 */	bl fn_816086C8
/* 81433AB8 | 38 60 00 01 */	li r3, 0x1
.L_81433ABC:
/* 81433ABC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81433AC0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81433AC4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81433AC8 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81433ACC | 7C 08 03 A6 */	mtlr r0
/* 81433AD0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81433AD4 | 4E 80 00 20 */	blr
.endfn SearchOEMDictionary__Q29textinput8tistringFUsPUsUcPv

# .text:0x14C0 | 0x81433AD8 | size: 0x13C
# textinput::tistring::WithZi::ChangeDictionaryLanguage(unsigned char)
.fn ChangeDictionaryLanguage__Q39textinput8tistring6WithZiFUc, global
/* 81433AD8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81433ADC | 7C 08 02 A6 */	mflr r0
/* 81433AE0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81433AE4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81433AE8 | 7C 9F 23 78 */	mr r31, r4
/* 81433AEC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81433AF0 | 7C 7E 1B 78 */	mr r30, r3
/* 81433AF4 | 88 03 00 94 */	lbz r0, 0x94(r3)
/* 81433AF8 | 7C 00 20 40 */	cmplw r0, r4
/* 81433AFC | 41 82 01 00 */	beq .L_81433BFC
/* 81433B00 | 80 03 00 90 */	lwz r0, 0x90(r3)
/* 81433B04 | 98 83 00 94 */	stb r4, 0x94(r3)
/* 81433B08 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81433B0C | 41 82 00 10 */	beq .L_81433B1C
/* 81433B10 | 80 9E 00 84 */	lwz r4, 0x84(r30)
/* 81433B14 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81433B18 | 48 02 B5 41 */	bl EZTXDetachOEMDict
.L_81433B1C:
/* 81433B1C | 80 9E 00 80 */	lwz r4, 0x80(r30)
/* 81433B20 | 38 00 00 02 */	li r0, 0x2
/* 81433B24 | 38 A0 FF FF */	li r5, -0x1
/* 81433B28 | 38 C0 00 00 */	li r6, 0x0
/* 81433B2C | 7C 83 23 78 */	mr r3, r4
/* 81433B30 | 7C 09 03 A6 */	mtctr r0
.L_81433B34:
/* 81433B34 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 81433B38 | 7C 1F 00 40 */	cmplw r31, r0
/* 81433B3C | 40 82 00 08 */	bne .L_81433B44
/* 81433B40 | 7C C5 33 78 */	mr r5, r6
.L_81433B44:
/* 81433B44 | 88 03 00 08 */	lbz r0, 0x8(r3)
/* 81433B48 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 81433B4C | 7C 1F 00 40 */	cmplw r31, r0
/* 81433B50 | 40 82 00 08 */	bne .L_81433B58
/* 81433B54 | 7C C5 33 78 */	mr r5, r6
.L_81433B58:
/* 81433B58 | 88 03 00 10 */	lbz r0, 0x10(r3)
/* 81433B5C | 38 C6 00 01 */	addi r6, r6, 0x1
/* 81433B60 | 7C 1F 00 40 */	cmplw r31, r0
/* 81433B64 | 40 82 00 08 */	bne .L_81433B6C
/* 81433B68 | 7C C5 33 78 */	mr r5, r6
.L_81433B6C:
/* 81433B6C | 88 03 00 18 */	lbz r0, 0x18(r3)
/* 81433B70 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 81433B74 | 7C 1F 00 40 */	cmplw r31, r0
/* 81433B78 | 40 82 00 08 */	bne .L_81433B80
/* 81433B7C | 7C C5 33 78 */	mr r5, r6
.L_81433B80:
/* 81433B80 | 88 03 00 20 */	lbz r0, 0x20(r3)
/* 81433B84 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 81433B88 | 7C 1F 00 40 */	cmplw r31, r0
/* 81433B8C | 40 82 00 08 */	bne .L_81433B94
/* 81433B90 | 7C C5 33 78 */	mr r5, r6
.L_81433B94:
/* 81433B94 | 88 03 00 28 */	lbz r0, 0x28(r3)
/* 81433B98 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 81433B9C | 7C 1F 00 40 */	cmplw r31, r0
/* 81433BA0 | 40 82 00 08 */	bne .L_81433BA8
/* 81433BA4 | 7C C5 33 78 */	mr r5, r6
.L_81433BA8:
/* 81433BA8 | 38 63 00 30 */	addi r3, r3, 0x30
/* 81433BAC | 38 C6 00 01 */	addi r6, r6, 0x1
/* 81433BB0 | 42 00 FF 84 */	bdnz .L_81433B34
/* 81433BB4 | 2C 05 FF FF */	cmpwi r5, -0x1
/* 81433BB8 | 41 82 00 44 */	beq .L_81433BFC
/* 81433BBC | 54 A0 18 38 */	slwi r0, r5, 3
/* 81433BC0 | 7C 64 02 14 */	add r3, r4, r0
/* 81433BC4 | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 81433BC8 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81433BCC | 41 82 00 28 */	beq .L_81433BF4
/* 81433BD0 | 80 05 00 00 */	lwz r0, 0x0(r5)
/* 81433BD4 | 3C 60 81 43 */	lis r3, SearchOEMDictionary__Q29textinput8tistringFUsPUsUcPv@ha
/* 81433BD8 | 80 DE 00 84 */	lwz r6, 0x84(r30)
/* 81433BDC | 38 63 3A 50 */	addi r3, r3, SearchOEMDictionary__Q29textinput8tistringFUsPUsUcPv@l
/* 81433BE0 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81433BE4 | 48 02 B4 71 */	bl EZTXAttachOEMDict
/* 81433BE8 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81433BEC | 90 1E 00 90 */	stw r0, 0x90(r30)
/* 81433BF0 | 48 00 00 0C */	b .L_81433BFC
.L_81433BF4:
/* 81433BF4 | 38 00 00 00 */	li r0, 0x0
/* 81433BF8 | 90 1E 00 90 */	stw r0, 0x90(r30)
.L_81433BFC:
/* 81433BFC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81433C00 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81433C04 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81433C08 | 7C 08 03 A6 */	mtlr r0
/* 81433C0C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81433C10 | 4E 80 00 20 */	blr
.endfn ChangeDictionaryLanguage__Q39textinput8tistring6WithZiFUc

# .text:0x15FC | 0x81433C14 | size: 0x7C
# textinput::tistring::WithZi::~WithZi()
.fn __dt__Q39textinput8tistring6WithZiFv, global
/* 81433C14 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81433C18 | 7C 08 02 A6 */	mflr r0
/* 81433C1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81433C20 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81433C24 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81433C28 | 7C 9F 23 78 */	mr r31, r4
/* 81433C2C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81433C30 | 7C 7E 1B 78 */	mr r30, r3
/* 81433C34 | 41 82 00 40 */	beq .L_81433C74
/* 81433C38 | 3C A0 81 66 */	lis r5, __vt__Q39textinput8tistring6WithZi@ha
/* 81433C3C | 80 9E 00 84 */	lwz r4, 0x84(r30)
/* 81433C40 | 38 A5 F6 78 */	addi r5, r5, __vt__Q39textinput8tistring6WithZi@l
/* 81433C44 | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 81433C48 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81433C4C | 48 12 7A 2D */	bl fn_8155B678
/* 81433C50 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81433C54 | 41 82 00 10 */	beq .L_81433C64
/* 81433C58 | 7F C3 F3 78 */	mr r3, r30
/* 81433C5C | 38 80 00 00 */	li r4, 0x0
/* 81433C60 | 4B FF EA 39 */	bl __dt__Q39textinput8tistring10StringBaseFv
.L_81433C64:
/* 81433C64 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81433C68 | 40 81 00 0C */	ble .L_81433C74
/* 81433C6C | 7F C3 F3 78 */	mr r3, r30
/* 81433C70 | 48 1C 44 75 */	bl __dl__FPv
.L_81433C74:
/* 81433C74 | 7F C3 F3 78 */	mr r3, r30
/* 81433C78 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81433C7C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81433C80 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81433C84 | 7C 08 03 A6 */	mtlr r0
/* 81433C88 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81433C8C | 4E 80 00 20 */	blr
.endfn __dt__Q39textinput8tistring6WithZiFv

# .text:0x1678 | 0x81433C90 | size: 0x70
# textinput::tistring::WithZi::create(MEMAllocator*)
.fn create__Q39textinput8tistring6WithZiFP12MEMAllocator, global
/* 81433C90 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81433C94 | 7C 08 02 A6 */	mflr r0
/* 81433C98 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81433C9C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81433CA0 | 7C 9F 23 78 */	mr r31, r4
/* 81433CA4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81433CA8 | 7C 7E 1B 78 */	mr r30, r3
/* 81433CAC | 4B FF E9 6D */	bl create__Q39textinput8tistring10StringBaseFP12MEMAllocator
/* 81433CB0 | 48 02 B3 25 */	bl EZTXGetGlobalDataSize
/* 81433CB4 | 54 64 04 3E */	clrlwi r4, r3, 16
/* 81433CB8 | 7F E3 FB 78 */	mr r3, r31
/* 81433CBC | 48 12 79 AD */	bl fn_8155B668
/* 81433CC0 | 7C 7F 1B 78 */	mr r31, r3
/* 81433CC4 | 48 02 B3 11 */	bl EZTXGetGlobalDataSize
/* 81433CC8 | 38 00 00 00 */	li r0, 0x0
/* 81433CCC | 93 FE 00 84 */	stw r31, 0x84(r30)
/* 81433CD0 | 7F C3 F3 78 */	mr r3, r30
/* 81433CD4 | 90 1E 00 90 */	stw r0, 0x90(r30)
/* 81433CD8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81433CDC | 81 8C 00 D0 */	lwz r12, 0xd0(r12)
/* 81433CE0 | 7D 89 03 A6 */	mtctr r12
/* 81433CE4 | 4E 80 04 21 */	bctrl
/* 81433CE8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81433CEC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81433CF0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81433CF4 | 7C 08 03 A6 */	mtlr r0
/* 81433CF8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81433CFC | 4E 80 00 20 */	blr
.endfn create__Q39textinput8tistring6WithZiFP12MEMAllocator

# .text:0x16E8 | 0x81433D00 | size: 0x8C
# textinput::tistring::WithZi::init()
.fn init__Q39textinput8tistring6WithZiFv, global
/* 81433D00 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81433D04 | 7C 08 02 A6 */	mflr r0
/* 81433D08 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81433D0C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81433D10 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81433D14 | 7C 7E 1B 78 */	mr r30, r3
/* 81433D18 | 88 03 00 78 */	lbz r0, 0x78(r3)
/* 81433D1C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81433D20 | 41 82 00 54 */	beq .L_81433D74
/* 81433D24 | 38 00 00 00 */	li r0, 0x0
/* 81433D28 | 98 03 00 79 */	stb r0, 0x79(r3)
/* 81433D2C | 48 00 00 61 */	bl clearCandidates__Q39textinput8tistring6WithZiFv
/* 81433D30 | 3F E0 81 0D */	lis r31, LatestWord__Q39textinput8tistring6WithZi@ha
/* 81433D34 | 38 80 00 00 */	li r4, 0x0
/* 81433D38 | 38 7F 81 F0 */	addi r3, r31, LatestWord__Q39textinput8tistring6WithZi@l
/* 81433D3C | 38 A0 00 80 */	li r5, 0x80
/* 81433D40 | 4B EF C5 F5 */	bl memset
/* 81433D44 | 38 00 00 20 */	li r0, 0x20
/* 81433D48 | 7F C3 F3 78 */	mr r3, r30
/* 81433D4C | B0 1F 81 F0 */	sth r0, LatestWord__Q39textinput8tistring6WithZi@l(r31)
/* 81433D50 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81433D54 | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 81433D58 | 7D 89 03 A6 */	mtctr r12
/* 81433D5C | 4E 80 04 21 */	bctrl
/* 81433D60 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81433D64 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81433D68 | 40 82 00 0C */	bne .L_81433D74
/* 81433D6C | 7F C3 F3 78 */	mr r3, r30
/* 81433D70 | 48 00 07 55 */	bl update__Q39textinput8tistring6WithZiFv
.L_81433D74:
/* 81433D74 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81433D78 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81433D7C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81433D80 | 7C 08 03 A6 */	mtlr r0
/* 81433D84 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81433D88 | 4E 80 00 20 */	blr
.endfn init__Q39textinput8tistring6WithZiFv

# .text:0x1774 | 0x81433D8C | size: 0x144
# textinput::tistring::WithZi::clearCandidates()
.fn clearCandidates__Q39textinput8tistring6WithZiFv, global
/* 81433D8C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81433D90 | 7C 08 02 A6 */	mflr r0
/* 81433D94 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81433D98 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81433D9C | 3F E0 81 0C */	lis r31, ElementBuffer__Q39textinput8tistring6WithZi@ha
/* 81433DA0 | 3B FF 65 F0 */	addi r31, r31, ElementBuffer__Q39textinput8tistring6WithZi@l
/* 81433DA4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81433DA8 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81433DAC | 7C 7D 1B 78 */	mr r29, r3
/* 81433DB0 | 88 03 00 78 */	lbz r0, 0x78(r3)
/* 81433DB4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81433DB8 | 41 82 00 FC */	beq .L_81433EB4
/* 81433DBC | 3B C0 00 00 */	li r30, 0x0
/* 81433DC0 | 38 80 00 00 */	li r4, 0x0
/* 81433DC4 | B3 C3 00 88 */	sth r30, 0x88(r3)
/* 81433DC8 | 38 A0 01 FE */	li r5, 0x1fe
/* 81433DCC | 93 C3 00 8C */	stw r30, 0x8c(r3)
/* 81433DD0 | 38 7F 00 00 */	addi r3, r31, 0x0
/* 81433DD4 | 4B EF C5 61 */	bl memset
/* 81433DD8 | 38 7F 02 00 */	addi r3, r31, 0x200
/* 81433DDC | 38 80 00 00 */	li r4, 0x0
/* 81433DE0 | 38 A0 02 00 */	li r5, 0x200
/* 81433DE4 | 4B EF C5 51 */	bl memset
/* 81433DE8 | 38 7F 04 00 */	addi r3, r31, 0x400
/* 81433DEC | 38 80 00 00 */	li r4, 0x0
/* 81433DF0 | 38 A0 01 FE */	li r5, 0x1fe
/* 81433DF4 | 4B EF C5 41 */	bl memset
/* 81433DF8 | 38 7F 06 00 */	addi r3, r31, 0x600
/* 81433DFC | 38 80 00 00 */	li r4, 0x0
/* 81433E00 | 38 A0 02 00 */	li r5, 0x200
/* 81433E04 | 4B EF C5 31 */	bl memset
/* 81433E08 | 38 7F 08 00 */	addi r3, r31, 0x800
/* 81433E0C | 38 80 00 00 */	li r4, 0x0
/* 81433E10 | 38 A0 14 00 */	li r5, 0x1400
/* 81433E14 | 4B EF C5 21 */	bl memset
/* 81433E18 | 38 7D 00 4C */	addi r3, r29, 0x4c
/* 81433E1C | 38 80 00 00 */	li r4, 0x0
/* 81433E20 | 38 A0 00 2C */	li r5, 0x2c
/* 81433E24 | 4B EF C5 11 */	bl memset
/* 81433E28 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81433E2C | 7F A3 EB 78 */	mr r3, r29
/* 81433E30 | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 81433E34 | 7D 89 03 A6 */	mtctr r12
/* 81433E38 | 4E 80 04 21 */	bctrl
/* 81433E3C | 38 BF 00 00 */	addi r5, r31, 0x0
/* 81433E40 | 38 9F 06 00 */	addi r4, r31, 0x600
/* 81433E44 | 38 E0 00 07 */	li r7, 0x7
/* 81433E48 | 3B E0 00 01 */	li r31, 0x1
/* 81433E4C | 38 C0 00 81 */	li r6, 0x81
/* 81433E50 | 38 00 00 28 */	li r0, 0x28
/* 81433E54 | 98 7D 00 4C */	stb r3, 0x4c(r29)
/* 81433E58 | 7F A3 EB 78 */	mr r3, r29
/* 81433E5C | 98 FD 00 4E */	stb r7, 0x4e(r29)
/* 81433E60 | 9B DD 00 4D */	stb r30, 0x4d(r29)
/* 81433E64 | 9B FD 00 4F */	stb r31, 0x4f(r29)
/* 81433E68 | 98 DD 00 50 */	stb r6, 0x50(r29)
/* 81433E6C | 90 BD 00 54 */	stw r5, 0x54(r29)
/* 81433E70 | 90 9D 00 64 */	stw r4, 0x64(r29)
/* 81433E74 | 98 1D 00 68 */	stb r0, 0x68(r29)
/* 81433E78 | 9B DD 00 58 */	stb r30, 0x58(r29)
/* 81433E7C | B3 DD 00 6A */	sth r30, 0x6a(r29)
/* 81433E80 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81433E84 | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 81433E88 | 7D 89 03 A6 */	mtctr r12
/* 81433E8C | 4E 80 04 21 */	bctrl
/* 81433E90 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81433E94 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81433E98 | 40 82 00 10 */	bne .L_81433EA8
/* 81433E9C | 38 00 00 10 */	li r0, 0x10
/* 81433EA0 | 9B FD 00 4D */	stb r31, 0x4d(r29)
/* 81433EA4 | 98 1D 00 4F */	stb r0, 0x4f(r29)
.L_81433EA8:
/* 81433EA8 | 80 9D 00 84 */	lwz r4, 0x84(r29)
/* 81433EAC | 38 7D 00 4C */	addi r3, r29, 0x4c
/* 81433EB0 | 48 02 B1 9D */	bl EZTXGetCandidates
.L_81433EB4:
/* 81433EB4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81433EB8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81433EBC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81433EC0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81433EC4 | 7C 08 03 A6 */	mtlr r0
/* 81433EC8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81433ECC | 4E 80 00 20 */	blr
.endfn clearCandidates__Q39textinput8tistring6WithZiFv

# .text:0x18B8 | 0x81433ED0 | size: 0x68
# textinput::tistring::WithZi::openDictionary(void*, void*)
.fn openDictionary__Q39textinput8tistring6WithZiFPvPv, global
/* 81433ED0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81433ED4 | 7C 08 02 A6 */	mflr r0
/* 81433ED8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81433EDC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81433EE0 | 7C BF 2B 78 */	mr r31, r5
/* 81433EE4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81433EE8 | 7C 7E 1B 78 */	mr r30, r3
/* 81433EEC | 7C 83 23 78 */	mr r3, r4
/* 81433EF0 | 80 9E 00 84 */	lwz r4, 0x84(r30)
/* 81433EF4 | 48 02 B0 E5 */	bl EZTXInitialize
/* 81433EF8 | 38 00 00 01 */	li r0, 0x1
/* 81433EFC | 3C 60 81 66 */	lis r3, lbl_8165F638@ha
/* 81433F00 | 98 1E 00 78 */	stb r0, 0x78(r30)
/* 81433F04 | 38 63 F6 38 */	addi r3, r3, lbl_8165F638@l
/* 81433F08 | 80 BE 00 84 */	lwz r5, 0x84(r30)
/* 81433F0C | 38 80 00 0A */	li r4, 0xa
/* 81433F10 | 93 FE 00 80 */	stw r31, 0x80(r30)
/* 81433F14 | 48 02 B1 15 */	bl EZTXSetLatinSearchOrder
/* 81433F18 | 38 00 00 00 */	li r0, 0x0
/* 81433F1C | 90 1E 00 90 */	stw r0, 0x90(r30)
/* 81433F20 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81433F24 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81433F28 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81433F2C | 7C 08 03 A6 */	mtlr r0
/* 81433F30 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81433F34 | 4E 80 00 20 */	blr
.endfn openDictionary__Q39textinput8tistring6WithZiFPvPv

# .text:0x1920 | 0x81433F38 | size: 0x4
# textinput::tistring::WithZi::pushBack(wchar_t)
.fn pushBack__Q39textinput8tistring6WithZiFw, global
/* 81433F38 | 4E 80 00 20 */	blr
.endfn pushBack__Q39textinput8tistring6WithZiFw

# .text:0x1924 | 0x81433F3C | size: 0x4
# textinput::tistring::WithZi::popBack()
.fn popBack__Q39textinput8tistring6WithZiFv, global
/* 81433F3C | 4E 80 00 20 */	blr
.endfn popBack__Q39textinput8tistring6WithZiFv

# .text:0x1928 | 0x81433F40 | size: 0xB0
# textinput::tistring::WithZi::inputChar(wchar_t)
.fn inputChar__Q39textinput8tistring6WithZiFw, global
/* 81433F40 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81433F44 | 7C 08 02 A6 */	mflr r0
/* 81433F48 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81433F4C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81433F50 | 7C 9F 23 78 */	mr r31, r4
/* 81433F54 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81433F58 | 7C 7E 1B 78 */	mr r30, r3
/* 81433F5C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81433F60 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 81433F64 | 7D 89 03 A6 */	mtctr r12
/* 81433F68 | 4E 80 04 21 */	bctrl
/* 81433F6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81433F70 | 41 82 00 34 */	beq .L_81433FA4
/* 81433F74 | A0 7E 00 88 */	lhz r3, 0x88(r30)
/* 81433F78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81433F7C | 41 82 00 20 */	beq .L_81433F9C
/* 81433F80 | 38 03 FF FF */	subi r0, r3, 0x1
/* 81433F84 | 3C 60 81 0C */	lis r3, CandidatesBuffer__Q39textinput8tistring6WithZi@ha
/* 81433F88 | B0 1E 00 88 */	sth r0, 0x88(r30)
/* 81433F8C | 54 00 0B FC */	clrlslwi r0, r0, 16, 1
/* 81433F90 | 38 63 67 F0 */	addi r3, r3, CandidatesBuffer__Q39textinput8tistring6WithZi@l
/* 81433F94 | 38 80 00 00 */	li r4, 0x0
/* 81433F98 | 7C 83 03 2E */	sthx r4, r3, r0
.L_81433F9C:
/* 81433F9C | 38 00 00 00 */	li r0, 0x0
/* 81433FA0 | B0 1E 00 10 */	sth r0, 0x10(r30)
.L_81433FA4:
/* 81433FA4 | A0 1E 00 88 */	lhz r0, 0x88(r30)
/* 81433FA8 | 3C C0 81 0C */	lis r6, CandidatesBuffer__Q39textinput8tistring6WithZi@ha
/* 81433FAC | 38 C6 67 F0 */	addi r6, r6, CandidatesBuffer__Q39textinput8tistring6WithZi@l
/* 81433FB0 | 38 80 00 00 */	li r4, 0x0
/* 81433FB4 | 54 00 08 3C */	slwi r0, r0, 1
/* 81433FB8 | 7F C3 F3 78 */	mr r3, r30
/* 81433FBC | 7F E6 03 2E */	sthx r31, r6, r0
/* 81433FC0 | A0 BE 00 88 */	lhz r5, 0x88(r30)
/* 81433FC4 | 38 05 00 01 */	addi r0, r5, 0x1
/* 81433FC8 | B0 1E 00 88 */	sth r0, 0x88(r30)
/* 81433FCC | 54 00 0B FC */	clrlslwi r0, r0, 16, 1
/* 81433FD0 | 7C 86 03 2E */	sthx r4, r6, r0
/* 81433FD4 | 48 00 04 F1 */	bl update__Q39textinput8tistring6WithZiFv
/* 81433FD8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81433FDC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81433FE0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81433FE4 | 7C 08 03 A6 */	mtlr r0
/* 81433FE8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81433FEC | 4E 80 00 20 */	blr
.endfn inputChar__Q39textinput8tistring6WithZiFw

# .text:0x19D8 | 0x81433FF0 | size: 0x98
# textinput::tistring::WithZi::setInputting(wchar_t)
.fn setInputting__Q39textinput8tistring6WithZiFw, global
/* 81433FF0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81433FF4 | 7C 08 02 A6 */	mflr r0
/* 81433FF8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81433FFC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81434000 | 7C 9F 23 78 */	mr r31, r4
/* 81434004 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81434008 | 7C 7E 1B 78 */	mr r30, r3
/* 8143400C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81434010 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 81434014 | 7D 89 03 A6 */	mtctr r12
/* 81434018 | 4E 80 04 21 */	bctrl
/* 8143401C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81434020 | 41 82 00 34 */	beq .L_81434054
/* 81434024 | A0 7E 00 88 */	lhz r3, 0x88(r30)
/* 81434028 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143402C | 41 82 00 20 */	beq .L_8143404C
/* 81434030 | 38 03 FF FF */	subi r0, r3, 0x1
/* 81434034 | 3C 60 81 0C */	lis r3, CandidatesBuffer__Q39textinput8tistring6WithZi@ha
/* 81434038 | B0 1E 00 88 */	sth r0, 0x88(r30)
/* 8143403C | 54 00 0B FC */	clrlslwi r0, r0, 16, 1
/* 81434040 | 38 63 67 F0 */	addi r3, r3, CandidatesBuffer__Q39textinput8tistring6WithZi@l
/* 81434044 | 38 80 00 00 */	li r4, 0x0
/* 81434048 | 7C 83 03 2E */	sthx r4, r3, r0
.L_8143404C:
/* 8143404C | 38 00 00 00 */	li r0, 0x0
/* 81434050 | B0 1E 00 10 */	sth r0, 0x10(r30)
.L_81434054:
/* 81434054 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81434058 | 7F C3 F3 78 */	mr r3, r30
/* 8143405C | 7F E4 FB 78 */	mr r4, r31
/* 81434060 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 81434064 | 7D 89 03 A6 */	mtctr r12
/* 81434068 | 4E 80 04 21 */	bctrl
/* 8143406C | B3 FE 00 10 */	sth r31, 0x10(r30)
/* 81434070 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81434074 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81434078 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143407C | 7C 08 03 A6 */	mtlr r0
/* 81434080 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81434084 | 4E 80 00 20 */	blr
.endfn setInputting__Q39textinput8tistring6WithZiFw

# .text:0x1A70 | 0x81434088 | size: 0xA4
# textinput::tistring::WithZi::backSpace()
.fn backSpace__Q39textinput8tistring6WithZiFv, global
/* 81434088 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143408C | 7C 08 02 A6 */	mflr r0
/* 81434090 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81434094 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81434098 | 7C 7F 1B 78 */	mr r31, r3
/* 8143409C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814340A0 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 814340A4 | 7D 89 03 A6 */	mtctr r12
/* 814340A8 | 4E 80 04 21 */	bctrl
/* 814340AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814340B0 | 41 82 00 38 */	beq .L_814340E8
/* 814340B4 | A0 7F 00 88 */	lhz r3, 0x88(r31)
/* 814340B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814340BC | 41 82 00 20 */	beq .L_814340DC
/* 814340C0 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814340C4 | 3C 60 81 0C */	lis r3, CandidatesBuffer__Q39textinput8tistring6WithZi@ha
/* 814340C8 | B0 1F 00 88 */	sth r0, 0x88(r31)
/* 814340CC | 54 00 0B FC */	clrlslwi r0, r0, 16, 1
/* 814340D0 | 38 63 67 F0 */	addi r3, r3, CandidatesBuffer__Q39textinput8tistring6WithZi@l
/* 814340D4 | 38 80 00 00 */	li r4, 0x0
/* 814340D8 | 7C 83 03 2E */	sthx r4, r3, r0
.L_814340DC:
/* 814340DC | 38 00 00 00 */	li r0, 0x0
/* 814340E0 | B0 1F 00 10 */	sth r0, 0x10(r31)
/* 814340E4 | 48 00 00 34 */	b .L_81434118
.L_814340E8:
/* 814340E8 | A0 7F 00 88 */	lhz r3, 0x88(r31)
/* 814340EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814340F0 | 41 82 00 28 */	beq .L_81434118
/* 814340F4 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814340F8 | 3C 60 81 0C */	lis r3, CandidatesBuffer__Q39textinput8tistring6WithZi@ha
/* 814340FC | B0 1F 00 88 */	sth r0, 0x88(r31)
/* 81434100 | 54 00 0B FC */	clrlslwi r0, r0, 16, 1
/* 81434104 | 38 63 67 F0 */	addi r3, r3, CandidatesBuffer__Q39textinput8tistring6WithZi@l
/* 81434108 | 38 80 00 00 */	li r4, 0x0
/* 8143410C | 7C 83 03 2E */	sthx r4, r3, r0
/* 81434110 | 7F E3 FB 78 */	mr r3, r31
/* 81434114 | 48 00 03 B1 */	bl update__Q39textinput8tistring6WithZiFv
.L_81434118:
/* 81434118 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143411C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81434120 | 7C 08 03 A6 */	mtlr r0
/* 81434124 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81434128 | 4E 80 00 20 */	blr
.endfn backSpace__Q39textinput8tistring6WithZiFv

# .text:0x1B14 | 0x8143412C | size: 0x4
# textinput::tistring::WithZi::confirm(const wchar_t*)
.fn confirm__Q39textinput8tistring6WithZiFPCw, global
/* 8143412C | 48 00 03 98 */	b update__Q39textinput8tistring6WithZiFv
.endfn confirm__Q39textinput8tistring6WithZiFPCw

# .text:0x1B18 | 0x81434130 | size: 0x8
# textinput::tistring::WithZi::moveCursorRight()
.fn moveCursorRight__Q39textinput8tistring6WithZiFv, global
/* 81434130 | 38 60 00 00 */	li r3, 0x0
/* 81434134 | 4E 80 00 20 */	blr
.endfn moveCursorRight__Q39textinput8tistring6WithZiFv

# .text:0x1B20 | 0x81434138 | size: 0x8
# textinput::tistring::WithZi::moveCursorLeft()
.fn moveCursorLeft__Q39textinput8tistring6WithZiFv, global
/* 81434138 | 38 60 00 00 */	li r3, 0x0
/* 8143413C | 4E 80 00 20 */	blr
.endfn moveCursorLeft__Q39textinput8tistring6WithZiFv

# .text:0x1B28 | 0x81434140 | size: 0x48
# textinput::tistring::WithZi::getPredicted(int, wchar_t*)
.fn getPredicted__Q39textinput8tistring6WithZiFiPw, global
/* 81434140 | 3C 60 81 0C */	lis r3, CandidatedWord__Q39textinput8tistring6WithZi@ha
/* 81434144 | 54 80 38 30 */	slwi r0, r4, 7
/* 81434148 | 38 63 6D F0 */	addi r3, r3, CandidatedWord__Q39textinput8tistring6WithZi@l
/* 8143414C | 7C A6 2B 78 */	mr r6, r5
/* 81434150 | 38 80 00 00 */	li r4, 0x0
/* 81434154 | 7C 63 02 14 */	add r3, r3, r0
/* 81434158 | 48 00 00 14 */	b .L_8143416C
.L_8143415C:
/* 8143415C | B0 06 00 00 */	sth r0, 0x0(r6)
/* 81434160 | 38 63 00 02 */	addi r3, r3, 0x2
/* 81434164 | 38 C6 00 02 */	addi r6, r6, 0x2
/* 81434168 | 38 84 00 01 */	addi r4, r4, 0x1
.L_8143416C:
/* 8143416C | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 81434170 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81434174 | 40 82 FF E8 */	bne .L_8143415C
/* 81434178 | 54 80 08 3C */	slwi r0, r4, 1
/* 8143417C | 38 60 00 00 */	li r3, 0x0
/* 81434180 | 7C 65 03 2E */	sthx r3, r5, r0
/* 81434184 | 4E 80 00 20 */	blr
.endfn getPredicted__Q39textinput8tistring6WithZiFiPw

# .text:0x1B70 | 0x81434188 | size: 0x30
# textinput::tistring::WithZi::getCurrentSelected()
.fn getCurrentSelected__Q39textinput8tistring6WithZiFv, global
/* 81434188 | 80 03 00 98 */	lwz r0, 0x98(r3)
/* 8143418C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81434190 | 41 80 00 0C */	blt .L_8143419C
/* 81434194 | 2C 00 00 28 */	cmpwi r0, 0x28
/* 81434198 | 41 80 00 0C */	blt .L_814341A4
.L_8143419C:
/* 8143419C | 38 60 00 00 */	li r3, 0x0
/* 814341A0 | 4E 80 00 20 */	blr
.L_814341A4:
/* 814341A4 | 3C 60 81 0C */	lis r3, CandidatedWord__Q39textinput8tistring6WithZi@ha
/* 814341A8 | 54 00 38 30 */	slwi r0, r0, 7
/* 814341AC | 38 63 6D F0 */	addi r3, r3, CandidatedWord__Q39textinput8tistring6WithZi@l
/* 814341B0 | 7C 63 02 14 */	add r3, r3, r0
/* 814341B4 | 4E 80 00 20 */	blr
.endfn getCurrentSelected__Q39textinput8tistring6WithZiFv

# .text:0x1BA0 | 0x814341B8 | size: 0xB4
# textinput::tistring::WithZi::getCurrentInput(wchar_t*, unsigned long)
.fn getCurrentInput__Q39textinput8tistring6WithZiFPwUl, global
/* 814341B8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814341BC | 7C 08 02 A6 */	mflr r0
/* 814341C0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814341C4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814341C8 | 48 1C 52 F1 */	bl _savegpr_25
/* 814341CC | 28 05 01 00 */	cmplwi r5, 0x100
/* 814341D0 | 7C 79 1B 78 */	mr r25, r3
/* 814341D4 | 7C 9A 23 78 */	mr r26, r4
/* 814341D8 | 7C BB 2B 78 */	mr r27, r5
/* 814341DC | 3B A0 00 00 */	li r29, 0x0
/* 814341E0 | 40 81 00 08 */	ble .L_814341E8
/* 814341E4 | 3B 60 01 00 */	li r27, 0x100
.L_814341E8:
/* 814341E8 | 3F E0 81 0C */	lis r31, CandidatesBuffer__Q39textinput8tistring6WithZi@ha
/* 814341EC | 7F 5E D3 78 */	mr r30, r26
/* 814341F0 | 3B FF 67 F0 */	addi r31, r31, CandidatesBuffer__Q39textinput8tistring6WithZi@l
/* 814341F4 | 3B 80 00 00 */	li r28, 0x0
/* 814341F8 | 48 00 00 38 */	b .L_81434230
.L_814341FC:
/* 814341FC | A0 7F 00 00 */	lhz r3, 0x0(r31)
/* 81434200 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81434204 | B0 7E 00 00 */	sth r3, 0x0(r30)
/* 81434208 | 41 82 00 30 */	beq .L_81434238
/* 8143420C | 80 19 00 A0 */	lwz r0, 0xa0(r25)
/* 81434210 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81434214 | 40 82 00 0C */	bne .L_81434220
/* 81434218 | 48 00 54 69 */	bl toWUpper__Q29textinput4utilFw
/* 8143421C | B0 7E 00 00 */	sth r3, 0x0(r30)
.L_81434220:
/* 81434220 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 81434224 | 3B FF 00 02 */	addi r31, r31, 0x2
/* 81434228 | 3B DE 00 02 */	addi r30, r30, 0x2
/* 8143422C | 3B 9C 00 01 */	addi r28, r28, 0x1
.L_81434230:
/* 81434230 | 7C 1C D8 40 */	cmplw r28, r27
/* 81434234 | 41 80 FF C8 */	blt .L_814341FC
.L_81434238:
/* 81434238 | 80 19 00 A0 */	lwz r0, 0xa0(r25)
/* 8143423C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81434240 | 40 82 00 10 */	bne .L_81434250
/* 81434244 | A0 7A 00 00 */	lhz r3, 0x0(r26)
/* 81434248 | 48 00 54 39 */	bl toWUpper__Q29textinput4utilFw
/* 8143424C | B0 7A 00 00 */	sth r3, 0x0(r26)
.L_81434250:
/* 81434250 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81434254 | 7F A3 EB 78 */	mr r3, r29
/* 81434258 | 48 1C 52 AD */	bl _restgpr_25
/* 8143425C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81434260 | 7C 08 03 A6 */	mtlr r0
/* 81434264 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81434268 | 4E 80 00 20 */	blr
.endfn getCurrentInput__Q39textinput8tistring6WithZiFPwUl

# .text:0x1C54 | 0x8143426C | size: 0xC
# textinput::tistring::WithZi::getCurrentInput()
.fn getCurrentInput__Q39textinput8tistring6WithZiFv, global
/* 8143426C | 3C 60 81 0C */	lis r3, CandidatesBuffer__Q39textinput8tistring6WithZi@ha
/* 81434270 | 38 63 67 F0 */	addi r3, r3, CandidatesBuffer__Q39textinput8tistring6WithZi@l
/* 81434274 | 4E 80 00 20 */	blr
.endfn getCurrentInput__Q39textinput8tistring6WithZiFv

# .text:0x1C60 | 0x81434278 | size: 0x24C
# textinput::tistring::WithZi::partialConfirmForKR()
.fn partialConfirmForKR__Q39textinput8tistring6WithZiFv, global
/* 81434278 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143427C | 7C 08 02 A6 */	mflr r0
/* 81434280 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81434284 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81434288 | 7C 7F 1B 78 */	mr r31, r3
/* 8143428C | A0 83 00 88 */	lhz r4, 0x88(r3)
/* 81434290 | 28 04 00 01 */	cmplwi r4, 0x1
/* 81434294 | 40 81 02 1C */	ble .L_814344B0
/* 81434298 | 38 04 FF FF */	subi r0, r4, 0x1
/* 8143429C | 3C 60 81 0C */	lis r3, CandidatesBuffer__Q39textinput8tistring6WithZi@ha
/* 814342A0 | 54 00 08 3C */	slwi r0, r0, 1
/* 814342A4 | 38 63 67 F0 */	addi r3, r3, CandidatesBuffer__Q39textinput8tistring6WithZi@l
/* 814342A8 | 7C 63 02 2E */	lhzx r3, r3, r0
/* 814342AC | 48 00 53 5D */	bl toWLower__Q29textinput4utilFw
/* 814342B0 | 3C A0 81 61 */	lis r5, lbl_81615E50@ha
/* 814342B4 | 38 00 00 02 */	li r0, 0x2
/* 814342B8 | 38 A5 5E 50 */	addi r5, r5, lbl_81615E50@l
/* 814342BC | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814342C0 | 38 80 00 00 */	li r4, 0x0
/* 814342C4 | 7C 09 03 A6 */	mtctr r0
.L_814342C8:
/* 814342C8 | A0 05 00 00 */	lhz r0, 0x0(r5)
/* 814342CC | 7C 03 00 40 */	cmplw r3, r0
/* 814342D0 | 40 82 00 0C */	bne .L_814342DC
/* 814342D4 | 38 00 00 01 */	li r0, 0x1
/* 814342D8 | 48 00 00 78 */	b .L_81434350
.L_814342DC:
/* 814342DC | A0 05 00 02 */	lhz r0, 0x2(r5)
/* 814342E0 | 7C 03 00 40 */	cmplw r3, r0
/* 814342E4 | 40 82 00 0C */	bne .L_814342F0
/* 814342E8 | 38 00 00 01 */	li r0, 0x1
/* 814342EC | 48 00 00 64 */	b .L_81434350
.L_814342F0:
/* 814342F0 | A0 05 00 04 */	lhz r0, 0x4(r5)
/* 814342F4 | 7C 03 00 40 */	cmplw r3, r0
/* 814342F8 | 40 82 00 0C */	bne .L_81434304
/* 814342FC | 38 00 00 01 */	li r0, 0x1
/* 81434300 | 48 00 00 50 */	b .L_81434350
.L_81434304:
/* 81434304 | A0 05 00 06 */	lhz r0, 0x6(r5)
/* 81434308 | 7C 03 00 40 */	cmplw r3, r0
/* 8143430C | 40 82 00 0C */	bne .L_81434318
/* 81434310 | 38 00 00 01 */	li r0, 0x1
/* 81434314 | 48 00 00 3C */	b .L_81434350
.L_81434318:
/* 81434318 | A0 05 00 08 */	lhz r0, 0x8(r5)
/* 8143431C | 7C 03 00 40 */	cmplw r3, r0
/* 81434320 | 40 82 00 0C */	bne .L_8143432C
/* 81434324 | 38 00 00 01 */	li r0, 0x1
/* 81434328 | 48 00 00 28 */	b .L_81434350
.L_8143432C:
/* 8143432C | A0 05 00 0A */	lhz r0, 0xa(r5)
/* 81434330 | 7C 03 00 40 */	cmplw r3, r0
/* 81434334 | 40 82 00 0C */	bne .L_81434340
/* 81434338 | 38 00 00 01 */	li r0, 0x1
/* 8143433C | 48 00 00 14 */	b .L_81434350
.L_81434340:
/* 81434340 | 38 A5 00 0C */	addi r5, r5, 0xc
/* 81434344 | 38 84 00 05 */	addi r4, r4, 0x5
/* 81434348 | 42 00 FF 80 */	bdnz .L_814342C8
/* 8143434C | 38 00 00 00 */	li r0, 0x0
.L_81434350:
/* 81434350 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81434354 | 41 82 01 18 */	beq .L_8143446C
/* 81434358 | A0 9F 00 88 */	lhz r4, 0x88(r31)
/* 8143435C | 3C 60 81 0C */	lis r3, CandidatesBuffer__Q39textinput8tistring6WithZi@ha
/* 81434360 | 38 63 67 F0 */	addi r3, r3, CandidatesBuffer__Q39textinput8tistring6WithZi@l
/* 81434364 | 38 04 FF FE */	subi r0, r4, 0x2
/* 81434368 | 54 00 08 3C */	slwi r0, r0, 1
/* 8143436C | 7C 63 02 2E */	lhzx r3, r3, r0
/* 81434370 | 48 00 52 99 */	bl toWLower__Q29textinput4utilFw
/* 81434374 | 3C A0 81 61 */	lis r5, lbl_81615E68@ha
/* 81434378 | 38 00 00 02 */	li r0, 0x2
/* 8143437C | 38 A5 5E 68 */	addi r5, r5, lbl_81615E68@l
/* 81434380 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 81434384 | 38 80 00 00 */	li r4, 0x0
/* 81434388 | 7C 09 03 A6 */	mtctr r0
.L_8143438C:
/* 8143438C | A0 05 00 00 */	lhz r0, 0x0(r5)
/* 81434390 | 7C 03 00 40 */	cmplw r3, r0
/* 81434394 | 40 82 00 0C */	bne .L_814343A0
/* 81434398 | 38 00 00 01 */	li r0, 0x1
/* 8143439C | 48 00 00 8C */	b .L_81434428
.L_814343A0:
/* 814343A0 | A0 05 00 02 */	lhz r0, 0x2(r5)
/* 814343A4 | 7C 03 00 40 */	cmplw r3, r0
/* 814343A8 | 40 82 00 0C */	bne .L_814343B4
/* 814343AC | 38 00 00 01 */	li r0, 0x1
/* 814343B0 | 48 00 00 78 */	b .L_81434428
.L_814343B4:
/* 814343B4 | A0 05 00 04 */	lhz r0, 0x4(r5)
/* 814343B8 | 7C 03 00 40 */	cmplw r3, r0
/* 814343BC | 40 82 00 0C */	bne .L_814343C8
/* 814343C0 | 38 00 00 01 */	li r0, 0x1
/* 814343C4 | 48 00 00 64 */	b .L_81434428
.L_814343C8:
/* 814343C8 | A0 05 00 06 */	lhz r0, 0x6(r5)
/* 814343CC | 7C 03 00 40 */	cmplw r3, r0
/* 814343D0 | 40 82 00 0C */	bne .L_814343DC
/* 814343D4 | 38 00 00 01 */	li r0, 0x1
/* 814343D8 | 48 00 00 50 */	b .L_81434428
.L_814343DC:
/* 814343DC | A0 05 00 08 */	lhz r0, 0x8(r5)
/* 814343E0 | 7C 03 00 40 */	cmplw r3, r0
/* 814343E4 | 40 82 00 0C */	bne .L_814343F0
/* 814343E8 | 38 00 00 01 */	li r0, 0x1
/* 814343EC | 48 00 00 3C */	b .L_81434428
.L_814343F0:
/* 814343F0 | A0 05 00 0A */	lhz r0, 0xa(r5)
/* 814343F4 | 7C 03 00 40 */	cmplw r3, r0
/* 814343F8 | 40 82 00 0C */	bne .L_81434404
/* 814343FC | 38 00 00 01 */	li r0, 0x1
/* 81434400 | 48 00 00 28 */	b .L_81434428
.L_81434404:
/* 81434404 | A0 05 00 0C */	lhz r0, 0xc(r5)
/* 81434408 | 7C 03 00 40 */	cmplw r3, r0
/* 8143440C | 40 82 00 0C */	bne .L_81434418
/* 81434410 | 38 00 00 01 */	li r0, 0x1
/* 81434414 | 48 00 00 14 */	b .L_81434428
.L_81434418:
/* 81434418 | 38 A5 00 0E */	addi r5, r5, 0xe
/* 8143441C | 38 84 00 06 */	addi r4, r4, 0x6
/* 81434420 | 42 00 FF 6C */	bdnz .L_8143438C
/* 81434424 | 38 00 00 00 */	li r0, 0x0
.L_81434428:
/* 81434428 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8143442C | 41 82 00 40 */	beq .L_8143446C
/* 81434430 | A0 7F 00 88 */	lhz r3, 0x88(r31)
/* 81434434 | 3C A0 81 0C */	lis r5, CandidatesBuffer__Q39textinput8tistring6WithZi@ha
/* 81434438 | 38 85 67 F0 */	addi r4, r5, CandidatesBuffer__Q39textinput8tistring6WithZi@l
/* 8143443C | 38 00 00 02 */	li r0, 0x2
/* 81434440 | 38 63 FF FE */	subi r3, r3, 0x2
/* 81434444 | 54 63 08 3C */	slwi r3, r3, 1
/* 81434448 | 7C 64 1A 2E */	lhzx r3, r4, r3
/* 8143444C | B0 65 67 F0 */	sth r3, CandidatesBuffer__Q39textinput8tistring6WithZi@l(r5)
/* 81434450 | A0 7F 00 88 */	lhz r3, 0x88(r31)
/* 81434454 | 38 63 FF FF */	subi r3, r3, 0x1
/* 81434458 | 54 63 08 3C */	slwi r3, r3, 1
/* 8143445C | 7C 64 1A 2E */	lhzx r3, r4, r3
/* 81434460 | B0 64 00 02 */	sth r3, 0x2(r4)
/* 81434464 | B0 1F 00 88 */	sth r0, 0x88(r31)
/* 81434468 | 48 00 00 28 */	b .L_81434490
.L_8143446C:
/* 8143446C | A0 BF 00 88 */	lhz r5, 0x88(r31)
/* 81434470 | 3C 80 81 0C */	lis r4, CandidatesBuffer__Q39textinput8tistring6WithZi@ha
/* 81434474 | 38 64 67 F0 */	addi r3, r4, CandidatesBuffer__Q39textinput8tistring6WithZi@l
/* 81434478 | 38 00 00 01 */	li r0, 0x1
/* 8143447C | 38 A5 FF FF */	subi r5, r5, 0x1
/* 81434480 | 54 A5 08 3C */	slwi r5, r5, 1
/* 81434484 | 7C 63 2A 2E */	lhzx r3, r3, r5
/* 81434488 | B0 64 67 F0 */	sth r3, CandidatesBuffer__Q39textinput8tistring6WithZi@l(r4)
/* 8143448C | B0 1F 00 88 */	sth r0, 0x88(r31)
.L_81434490:
/* 81434490 | A0 1F 00 88 */	lhz r0, 0x88(r31)
/* 81434494 | 3C 80 81 0C */	lis r4, CandidatesBuffer__Q39textinput8tistring6WithZi@ha
/* 81434498 | 38 84 67 F0 */	addi r4, r4, CandidatesBuffer__Q39textinput8tistring6WithZi@l
/* 8143449C | 38 A0 00 00 */	li r5, 0x0
/* 814344A0 | 54 00 08 3C */	slwi r0, r0, 1
/* 814344A4 | 7F E3 FB 78 */	mr r3, r31
/* 814344A8 | 7C A4 03 2E */	sthx r5, r4, r0
/* 814344AC | 48 00 00 19 */	bl update__Q39textinput8tistring6WithZiFv
.L_814344B0:
/* 814344B0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814344B4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814344B8 | 7C 08 03 A6 */	mtlr r0
/* 814344BC | 38 21 00 10 */	addi r1, r1, 0x10
/* 814344C0 | 4E 80 00 20 */	blr
.endfn partialConfirmForKR__Q39textinput8tistring6WithZiFv

# .text:0x1EAC | 0x814344C4 | size: 0x6F8
# textinput::tistring::WithZi::update()
.fn update__Q39textinput8tistring6WithZiFv, global
/* 814344C4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814344C8 | 7C 08 02 A6 */	mflr r0
/* 814344CC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814344D0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814344D4 | 48 1C 4F E1 */	bl _savegpr_24
/* 814344D8 | 88 03 00 78 */	lbz r0, 0x78(r3)
/* 814344DC | 3F E0 81 0C */	lis r31, ElementBuffer__Q39textinput8tistring6WithZi@ha
/* 814344E0 | 7C 7C 1B 78 */	mr r28, r3
/* 814344E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814344E8 | 3B FF 65 F0 */	addi r31, r31, ElementBuffer__Q39textinput8tistring6WithZi@l
/* 814344EC | 41 82 06 B8 */	beq .L_81434BA4
/* 814344F0 | 3B C0 00 00 */	li r30, 0x0
/* 814344F4 | 93 C3 00 98 */	stw r30, 0x98(r3)
/* 814344F8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814344FC | 81 8C 01 00 */	lwz r12, 0x100(r12)
/* 81434500 | 7D 89 03 A6 */	mtctr r12
/* 81434504 | 4E 80 04 21 */	bctrl
/* 81434508 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 8143450C | 54 7D 04 3E */	clrlwi r29, r3, 16
/* 81434510 | 7F 83 E3 78 */	mr r3, r28
/* 81434514 | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 81434518 | 7D 89 03 A6 */	mtctr r12
/* 8143451C | 4E 80 04 21 */	bctrl
/* 81434520 | 38 BF 00 00 */	addi r5, r31, 0x0
/* 81434524 | 38 9F 06 00 */	addi r4, r31, 0x600
/* 81434528 | 38 E0 00 07 */	li r7, 0x7
/* 8143452C | 3B 60 00 01 */	li r27, 0x1
/* 81434530 | 38 C0 00 81 */	li r6, 0x81
/* 81434534 | 38 00 00 28 */	li r0, 0x28
/* 81434538 | 98 7C 00 4C */	stb r3, 0x4c(r28)
/* 8143453C | 7F 83 E3 78 */	mr r3, r28
/* 81434540 | 98 FC 00 4E */	stb r7, 0x4e(r28)
/* 81434544 | 9B DC 00 4D */	stb r30, 0x4d(r28)
/* 81434548 | 9B 7C 00 4F */	stb r27, 0x4f(r28)
/* 8143454C | 98 DC 00 50 */	stb r6, 0x50(r28)
/* 81434550 | 90 BC 00 54 */	stw r5, 0x54(r28)
/* 81434554 | 90 9C 00 64 */	stw r4, 0x64(r28)
/* 81434558 | 98 1C 00 68 */	stb r0, 0x68(r28)
/* 8143455C | 9B BC 00 58 */	stb r29, 0x58(r28)
/* 81434560 | B3 DC 00 6A */	sth r30, 0x6a(r28)
/* 81434564 | 93 DC 00 5C */	stw r30, 0x5c(r28)
/* 81434568 | 9B DC 00 60 */	stb r30, 0x60(r28)
/* 8143456C | 9B DC 00 6C */	stb r30, 0x6c(r28)
/* 81434570 | 9B DC 00 6D */	stb r30, 0x6d(r28)
/* 81434574 | 9B DC 00 6E */	stb r30, 0x6e(r28)
/* 81434578 | 93 DC 00 70 */	stw r30, 0x70(r28)
/* 8143457C | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81434580 | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 81434584 | 7D 89 03 A6 */	mtctr r12
/* 81434588 | 4E 80 04 21 */	bctrl
/* 8143458C | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81434590 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81434594 | 40 82 00 40 */	bne .L_814345D4
/* 81434598 | 88 1C 00 A8 */	lbz r0, 0xa8(r28)
/* 8143459C | 38 60 00 11 */	li r3, 0x11
/* 814345A0 | 9B 7C 00 4D */	stb r27, 0x4d(r28)
/* 814345A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814345A8 | 98 7C 00 4F */	stb r3, 0x4f(r28)
/* 814345AC | 41 82 00 18 */	beq .L_814345C4
/* 814345B0 | 88 1C 00 50 */	lbz r0, 0x50(r28)
/* 814345B4 | 60 63 00 20 */	ori r3, r3, 0x20
/* 814345B8 | 98 7C 00 4F */	stb r3, 0x4f(r28)
/* 814345BC | 60 00 00 10 */	ori r0, r0, 0x10
/* 814345C0 | 98 1C 00 50 */	stb r0, 0x50(r28)
.L_814345C4:
/* 814345C4 | 38 7F 1C 00 */	addi r3, r31, 0x1c00
/* 814345C8 | 90 7C 00 5C */	stw r3, 0x5c(r28)
/* 814345CC | 48 1D 40 E1 */	bl fn_816086AC
/* 814345D0 | 98 7C 00 60 */	stb r3, 0x60(r28)
.L_814345D4:
/* 814345D4 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814345D8 | 40 82 00 28 */	bne .L_81434600
/* 814345DC | 88 1C 00 60 */	lbz r0, 0x60(r28)
/* 814345E0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814345E4 | 40 82 00 1C */	bne .L_81434600
/* 814345E8 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 814345EC | 7F 83 E3 78 */	mr r3, r28
/* 814345F0 | 81 8C 00 D0 */	lwz r12, 0xd0(r12)
/* 814345F4 | 7D 89 03 A6 */	mtctr r12
/* 814345F8 | 4E 80 04 21 */	bctrl
/* 814345FC | 48 00 05 A8 */	b .L_81434BA4
.L_81434600:
/* 81434600 | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 81434604 | 40 82 01 6C */	bne .L_81434770
/* 81434608 | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 8143460C | 28 00 EF F1 */	cmplwi r0, 0xeff1
/* 81434610 | 41 80 01 60 */	blt .L_81434770
/* 81434614 | 28 00 EF F9 */	cmplwi r0, 0xeff9
/* 81434618 | 41 81 01 58 */	bgt .L_81434770
/* 8143461C | 80 1C 00 A4 */	lwz r0, 0xa4(r28)
/* 81434620 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81434624 | 41 82 01 4C */	beq .L_81434770
/* 81434628 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 8143462C | 7F 83 E3 78 */	mr r3, r28
/* 81434630 | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 81434634 | 7D 89 03 A6 */	mtctr r12
/* 81434638 | 4E 80 04 21 */	bctrl
/* 8143463C | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81434640 | 28 00 00 12 */	cmplwi r0, 0x12
/* 81434644 | 41 82 01 2C */	beq .L_81434770
/* 81434648 | 38 9F 08 00 */	addi r4, r31, 0x800
/* 8143464C | 38 00 00 3E */	li r0, 0x3e
/* 81434650 | 38 A0 00 00 */	li r5, 0x0
/* 81434654 | B0 1F 08 00 */	sth r0, 0x800(r31)
/* 81434658 | 38 60 00 01 */	li r3, 0x1
/* 8143465C | 38 00 00 03 */	li r0, 0x3
/* 81434660 | B0 A4 00 02 */	sth r5, 0x2(r4)
/* 81434664 | 38 C4 00 80 */	addi r6, r4, 0x80
/* 81434668 | 38 E0 00 01 */	li r7, 0x1
/* 8143466C | 38 80 00 02 */	li r4, 0x2
/* 81434670 | 90 7C 00 8C */	stw r3, 0x8c(r28)
/* 81434674 | 7C 09 03 A6 */	mtctr r0
.L_81434678:
/* 81434678 | 80 1C 00 A4 */	lwz r0, 0xa4(r28)
/* 8143467C | 7C 60 22 14 */	add r3, r0, r4
/* 81434680 | A0 03 00 12 */	lhz r0, 0x12(r3)
/* 81434684 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81434688 | 41 82 00 18 */	beq .L_814346A0
/* 8143468C | B0 06 00 00 */	sth r0, 0x0(r6)
/* 81434690 | B0 A6 00 02 */	sth r5, 0x2(r6)
/* 81434694 | 80 7C 00 8C */	lwz r3, 0x8c(r28)
/* 81434698 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8143469C | 90 1C 00 8C */	stw r0, 0x8c(r28)
.L_814346A0:
/* 814346A0 | 80 1C 00 A4 */	lwz r0, 0xa4(r28)
/* 814346A4 | 38 84 00 02 */	addi r4, r4, 0x2
/* 814346A8 | 7C 60 22 14 */	add r3, r0, r4
/* 814346AC | A0 03 00 12 */	lhz r0, 0x12(r3)
/* 814346B0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814346B4 | 41 82 00 18 */	beq .L_814346CC
/* 814346B8 | B0 06 00 80 */	sth r0, 0x80(r6)
/* 814346BC | B0 A6 00 82 */	sth r5, 0x82(r6)
/* 814346C0 | 80 7C 00 8C */	lwz r3, 0x8c(r28)
/* 814346C4 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814346C8 | 90 1C 00 8C */	stw r0, 0x8c(r28)
.L_814346CC:
/* 814346CC | 80 1C 00 A4 */	lwz r0, 0xa4(r28)
/* 814346D0 | 38 84 00 02 */	addi r4, r4, 0x2
/* 814346D4 | 7C 60 22 14 */	add r3, r0, r4
/* 814346D8 | A0 03 00 12 */	lhz r0, 0x12(r3)
/* 814346DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814346E0 | 41 82 00 18 */	beq .L_814346F8
/* 814346E4 | B0 06 01 00 */	sth r0, 0x100(r6)
/* 814346E8 | B0 A6 01 02 */	sth r5, 0x102(r6)
/* 814346EC | 80 7C 00 8C */	lwz r3, 0x8c(r28)
/* 814346F0 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814346F4 | 90 1C 00 8C */	stw r0, 0x8c(r28)
.L_814346F8:
/* 814346F8 | 80 1C 00 A4 */	lwz r0, 0xa4(r28)
/* 814346FC | 38 84 00 02 */	addi r4, r4, 0x2
/* 81434700 | 7C 60 22 14 */	add r3, r0, r4
/* 81434704 | A0 03 00 12 */	lhz r0, 0x12(r3)
/* 81434708 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8143470C | 41 82 00 18 */	beq .L_81434724
/* 81434710 | B0 06 01 80 */	sth r0, 0x180(r6)
/* 81434714 | B0 A6 01 82 */	sth r5, 0x182(r6)
/* 81434718 | 80 7C 00 8C */	lwz r3, 0x8c(r28)
/* 8143471C | 38 03 00 01 */	addi r0, r3, 0x1
/* 81434720 | 90 1C 00 8C */	stw r0, 0x8c(r28)
.L_81434724:
/* 81434724 | 80 1C 00 A4 */	lwz r0, 0xa4(r28)
/* 81434728 | 38 84 00 02 */	addi r4, r4, 0x2
/* 8143472C | 7C 60 22 14 */	add r3, r0, r4
/* 81434730 | A0 03 00 12 */	lhz r0, 0x12(r3)
/* 81434734 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81434738 | 41 82 00 18 */	beq .L_81434750
/* 8143473C | B0 06 02 00 */	sth r0, 0x200(r6)
/* 81434740 | B0 A6 02 02 */	sth r5, 0x202(r6)
/* 81434744 | 80 7C 00 8C */	lwz r3, 0x8c(r28)
/* 81434748 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8143474C | 90 1C 00 8C */	stw r0, 0x8c(r28)
.L_81434750:
/* 81434750 | 38 84 00 02 */	addi r4, r4, 0x2
/* 81434754 | 38 C6 02 80 */	addi r6, r6, 0x280
/* 81434758 | 38 E7 00 04 */	addi r7, r7, 0x4
/* 8143475C | 42 00 FF 1C */	bdnz .L_81434678
/* 81434760 | 80 9C 00 84 */	lwz r4, 0x84(r28)
/* 81434764 | 38 7C 00 4C */	addi r3, r28, 0x4c
/* 81434768 | 48 02 A8 E5 */	bl EZTXGetCandidates
/* 8143476C | 48 00 04 38 */	b .L_81434BA4
.L_81434770:
/* 81434770 | 38 7F 06 00 */	addi r3, r31, 0x600
/* 81434774 | 38 9F 02 00 */	addi r4, r31, 0x200
/* 81434778 | 38 A0 02 00 */	li r5, 0x200
/* 8143477C | 4B EF BA B5 */	bl memcpy
/* 81434780 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81434784 | 7F 83 E3 78 */	mr r3, r28
/* 81434788 | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 8143478C | 7D 89 03 A6 */	mtctr r12
/* 81434790 | 4E 80 04 21 */	bctrl
/* 81434794 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81434798 | 7C 60 1B 78 */	mr r0, r3
/* 8143479C | 7F 83 E3 78 */	mr r3, r28
/* 814347A0 | 81 8C 00 F8 */	lwz r12, 0xf8(r12)
/* 814347A4 | 54 04 06 3E */	clrlwi r4, r0, 24
/* 814347A8 | 7D 89 03 A6 */	mtctr r12
/* 814347AC | 4E 80 04 21 */	bctrl
/* 814347B0 | 80 9C 00 84 */	lwz r4, 0x84(r28)
/* 814347B4 | 38 7C 00 4C */	addi r3, r28, 0x4c
/* 814347B8 | 48 02 A8 95 */	bl EZTXGetCandidates
/* 814347BC | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 814347C0 | 54 7E 06 3E */	clrlwi r30, r3, 24
/* 814347C4 | 7F 83 E3 78 */	mr r3, r28
/* 814347C8 | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 814347CC | 7D 89 03 A6 */	mtctr r12
/* 814347D0 | 4E 80 04 21 */	bctrl
/* 814347D4 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 814347D8 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814347DC | 40 82 00 48 */	bne .L_81434824
/* 814347E0 | 28 1E 00 61 */	cmplwi r30, 0x61
/* 814347E4 | 40 82 00 40 */	bne .L_81434824
/* 814347E8 | 3B 7F 06 00 */	addi r27, r31, 0x600
/* 814347EC | 38 60 00 61 */	li r3, 0x61
/* 814347F0 | 38 BB 01 84 */	addi r5, r27, 0x184
/* 814347F4 | 38 00 00 C7 */	li r0, 0xc7
/* 814347F8 | B0 7C 00 6A */	sth r3, 0x6a(r28)
/* 814347FC | 38 7C 00 4C */	addi r3, r28, 0x4c
/* 81434800 | 80 9C 00 84 */	lwz r4, 0x84(r28)
/* 81434804 | 90 BC 00 64 */	stw r5, 0x64(r28)
/* 81434808 | 98 1C 00 68 */	stb r0, 0x68(r28)
/* 8143480C | 48 02 A8 41 */	bl EZTXGetCandidates
/* 81434810 | 38 00 00 00 */	li r0, 0x0
/* 81434814 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81434818 | B0 1C 00 6A */	sth r0, 0x6a(r28)
/* 8143481C | 7F DE 1A 14 */	add r30, r30, r3
/* 81434820 | 93 7C 00 64 */	stw r27, 0x64(r28)
.L_81434824:
/* 81434824 | 2C 1E 00 28 */	cmpwi r30, 0x28
/* 81434828 | 40 81 00 08 */	ble .L_81434830
/* 8143482C | 3B C0 00 28 */	li r30, 0x28
.L_81434830:
/* 81434830 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81434834 | 7F 83 E3 78 */	mr r3, r28
/* 81434838 | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 8143483C | 7D 89 03 A6 */	mtctr r12
/* 81434840 | 4E 80 04 21 */	bctrl
/* 81434844 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81434848 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8143484C | 40 82 01 2C */	bne .L_81434978
/* 81434850 | 88 1C 00 79 */	lbz r0, 0x79(r28)
/* 81434854 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81434858 | 41 82 01 20 */	beq .L_81434978
/* 8143485C | 88 1C 00 6C */	lbz r0, 0x6c(r28)
/* 81434860 | 38 60 00 00 */	li r3, 0x0
/* 81434864 | 98 7C 00 79 */	stb r3, 0x79(r28)
/* 81434868 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8143486C | 40 82 01 0C */	bne .L_81434978
/* 81434870 | 83 DC 00 7C */	lwz r30, 0x7c(r28)
/* 81434874 | 38 7F 1C 00 */	addi r3, r31, 0x1c00
/* 81434878 | 48 1D 3E 35 */	bl fn_816086AC
/* 8143487C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81434880 | 54 64 06 3E */	clrlwi r4, r3, 24
/* 81434884 | 38 A0 00 00 */	li r5, 0x0
/* 81434888 | 41 82 00 C8 */	beq .L_81434950
/* 8143488C | 28 1E 00 08 */	cmplwi r30, 0x8
/* 81434890 | 38 DE FF F8 */	subi r6, r30, 0x8
/* 81434894 | 40 81 00 78 */	ble .L_8143490C
/* 81434898 | 7C 7E 20 50 */	subf r3, r30, r4
/* 8143489C | 38 06 00 07 */	addi r0, r6, 0x7
/* 814348A0 | 38 FF 1C 00 */	addi r7, r31, 0x1c00
/* 814348A4 | 54 63 08 3C */	slwi r3, r3, 1
/* 814348A8 | 54 00 E8 FE */	srwi r0, r0, 3
/* 814348AC | 7C 67 1A 14 */	add r3, r7, r3
/* 814348B0 | 7C 09 03 A6 */	mtctr r0
/* 814348B4 | 28 06 00 00 */	cmplwi r6, 0x0
/* 814348B8 | 40 81 00 54 */	ble .L_8143490C
.L_814348BC:
/* 814348BC | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 814348C0 | 38 A5 00 08 */	addi r5, r5, 0x8
/* 814348C4 | B0 07 00 00 */	sth r0, 0x0(r7)
/* 814348C8 | A0 03 00 02 */	lhz r0, 0x2(r3)
/* 814348CC | B0 07 00 02 */	sth r0, 0x2(r7)
/* 814348D0 | A0 03 00 04 */	lhz r0, 0x4(r3)
/* 814348D4 | B0 07 00 04 */	sth r0, 0x4(r7)
/* 814348D8 | A0 03 00 06 */	lhz r0, 0x6(r3)
/* 814348DC | B0 07 00 06 */	sth r0, 0x6(r7)
/* 814348E0 | A0 03 00 08 */	lhz r0, 0x8(r3)
/* 814348E4 | B0 07 00 08 */	sth r0, 0x8(r7)
/* 814348E8 | A0 03 00 0A */	lhz r0, 0xa(r3)
/* 814348EC | B0 07 00 0A */	sth r0, 0xa(r7)
/* 814348F0 | A0 03 00 0C */	lhz r0, 0xc(r3)
/* 814348F4 | B0 07 00 0C */	sth r0, 0xc(r7)
/* 814348F8 | A0 03 00 0E */	lhz r0, 0xe(r3)
/* 814348FC | 38 63 00 10 */	addi r3, r3, 0x10
/* 81434900 | B0 07 00 0E */	sth r0, 0xe(r7)
/* 81434904 | 38 E7 00 10 */	addi r7, r7, 0x10
/* 81434908 | 42 00 FF B4 */	bdnz .L_814348BC
.L_8143490C:
/* 8143490C | 7C 1E 20 50 */	subf r0, r30, r4
/* 81434910 | 54 A6 08 3C */	slwi r6, r5, 1
/* 81434914 | 54 00 08 3C */	slwi r0, r0, 1
/* 81434918 | 38 9F 1C 00 */	addi r4, r31, 0x1c00
/* 8143491C | 7C 66 02 14 */	add r3, r6, r0
/* 81434920 | 7C 64 1A 14 */	add r3, r4, r3
/* 81434924 | 7C 05 F0 50 */	subf r0, r5, r30
/* 81434928 | 7C 84 32 14 */	add r4, r4, r6
/* 8143492C | 7C 09 03 A6 */	mtctr r0
/* 81434930 | 7C 05 F0 40 */	cmplw r5, r30
/* 81434934 | 40 80 00 1C */	bge .L_81434950
.L_81434938:
/* 81434938 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 8143493C | 38 63 00 02 */	addi r3, r3, 0x2
/* 81434940 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81434944 | B0 04 00 00 */	sth r0, 0x0(r4)
/* 81434948 | 38 84 00 02 */	addi r4, r4, 0x2
/* 8143494C | 42 00 FF EC */	bdnz .L_81434938
.L_81434950:
/* 81434950 | 38 7F 1C 00 */	addi r3, r31, 0x1c00
/* 81434954 | 54 A0 08 3C */	slwi r0, r5, 1
/* 81434958 | 38 80 00 00 */	li r4, 0x0
/* 8143495C | 7C 83 03 2E */	sthx r4, r3, r0
/* 81434960 | 48 1D 3D 4D */	bl fn_816086AC
/* 81434964 | 98 7C 00 60 */	stb r3, 0x60(r28)
/* 81434968 | 38 7C 00 4C */	addi r3, r28, 0x4c
/* 8143496C | 80 9C 00 84 */	lwz r4, 0x84(r28)
/* 81434970 | 48 02 A6 DD */	bl EZTXGetCandidates
/* 81434974 | 54 7E 06 3E */	clrlwi r30, r3, 24
.L_81434978:
/* 81434978 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8143497C | 40 82 00 74 */	bne .L_814349F0
/* 81434980 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81434984 | 7F 83 E3 78 */	mr r3, r28
/* 81434988 | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 8143498C | 7D 89 03 A6 */	mtctr r12
/* 81434990 | 4E 80 04 21 */	bctrl
/* 81434994 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81434998 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8143499C | 41 82 00 4C */	beq .L_814349E8
/* 814349A0 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 814349A4 | 7F 83 E3 78 */	mr r3, r28
/* 814349A8 | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 814349AC | 7D 89 03 A6 */	mtctr r12
/* 814349B0 | 4E 80 04 21 */	bctrl
/* 814349B4 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 814349B8 | 28 00 00 12 */	cmplwi r0, 0x12
/* 814349BC | 40 82 00 1C */	bne .L_814349D8
/* 814349C0 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 814349C4 | 7F 83 E3 78 */	mr r3, r28
/* 814349C8 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 814349CC | 7D 89 03 A6 */	mtctr r12
/* 814349D0 | 4E 80 04 21 */	bctrl
/* 814349D4 | 48 00 01 D0 */	b .L_81434BA4
.L_814349D8:
/* 814349D8 | 7F 83 E3 78 */	mr r3, r28
/* 814349DC | 7F A4 EB 78 */	mr r4, r29
/* 814349E0 | 48 00 01 DD */	bl complementsCandidates___Q39textinput8tistring6WithZiFl
/* 814349E4 | 7C 7E 1B 78 */	mr r30, r3
.L_814349E8:
/* 814349E8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814349EC | 41 82 01 B8 */	beq .L_81434BA4
.L_814349F0:
/* 814349F0 | 38 7F 08 00 */	addi r3, r31, 0x800
/* 814349F4 | 38 80 00 00 */	li r4, 0x0
/* 814349F8 | 38 A0 14 00 */	li r5, 0x1400
/* 814349FC | 4B EF B9 39 */	bl memset
/* 81434A00 | 38 00 00 00 */	li r0, 0x0
/* 81434A04 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81434A08 | 90 1C 00 8C */	stw r0, 0x8c(r28)
/* 81434A0C | 40 82 00 10 */	bne .L_81434A1C
/* 81434A10 | 88 1C 00 60 */	lbz r0, 0x60(r28)
/* 81434A14 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81434A18 | 41 82 01 8C */	beq .L_81434BA4
.L_81434A1C:
/* 81434A1C | 83 BC 00 64 */	lwz r29, 0x64(r28)
/* 81434A20 | 3B 5F 08 00 */	addi r26, r31, 0x800
/* 81434A24 | 3B E0 00 00 */	li r31, 0x0
/* 81434A28 | 3B 60 00 00 */	li r27, 0x0
/* 81434A2C | 48 00 01 70 */	b .L_81434B9C
.L_81434A30:
/* 81434A30 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81434A34 | 7F 83 E3 78 */	mr r3, r28
/* 81434A38 | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 81434A3C | 7D 89 03 A6 */	mtctr r12
/* 81434A40 | 4E 80 04 21 */	bctrl
/* 81434A44 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81434A48 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81434A4C | 40 82 00 44 */	bne .L_81434A90
/* 81434A50 | 7F 43 D3 78 */	mr r3, r26
/* 81434A54 | 38 80 00 00 */	li r4, 0x0
/* 81434A58 | 48 00 00 14 */	b .L_81434A6C
.L_81434A5C:
/* 81434A5C | B0 03 00 00 */	sth r0, 0x0(r3)
/* 81434A60 | 38 63 00 02 */	addi r3, r3, 0x2
/* 81434A64 | 38 84 00 01 */	addi r4, r4, 0x1
/* 81434A68 | 3B BD 00 02 */	addi r29, r29, 0x2
.L_81434A6C:
/* 81434A6C | A0 1D 00 00 */	lhz r0, 0x0(r29)
/* 81434A70 | 28 00 00 20 */	cmplwi r0, 0x20
/* 81434A74 | 41 82 00 0C */	beq .L_81434A80
/* 81434A78 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81434A7C | 40 82 FF E0 */	bne .L_81434A5C
.L_81434A80:
/* 81434A80 | 54 80 08 3C */	slwi r0, r4, 1
/* 81434A84 | 3B BD 00 02 */	addi r29, r29, 0x2
/* 81434A88 | 7F 7A 03 2E */	sthx r27, r26, r0
/* 81434A8C | 48 00 00 84 */	b .L_81434B10
.L_81434A90:
/* 81434A90 | 80 1C 00 9C */	lwz r0, 0x9c(r28)
/* 81434A94 | 2C 00 00 0B */	cmpwi r0, 0xb
/* 81434A98 | 40 82 00 18 */	bne .L_81434AB0
/* 81434A9C | A0 1D 00 00 */	lhz r0, 0x0(r29)
/* 81434AA0 | 3B BD 00 02 */	addi r29, r29, 0x2
/* 81434AA4 | B0 1A 00 00 */	sth r0, 0x0(r26)
/* 81434AA8 | B3 7A 00 02 */	sth r27, 0x2(r26)
/* 81434AAC | 48 00 00 64 */	b .L_81434B10
.L_81434AB0:
/* 81434AB0 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 81434AB4 | 7F 83 E3 78 */	mr r3, r28
/* 81434AB8 | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 81434ABC | 7D 89 03 A6 */	mtctr r12
/* 81434AC0 | 4E 80 04 21 */	bctrl
/* 81434AC4 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81434AC8 | 28 00 00 12 */	cmplwi r0, 0x12
/* 81434ACC | 40 82 00 28 */	bne .L_81434AF4
/* 81434AD0 | 7F 43 D3 78 */	mr r3, r26
/* 81434AD4 | 48 00 00 10 */	b .L_81434AE4
.L_81434AD8:
/* 81434AD8 | B0 03 00 00 */	sth r0, 0x0(r3)
/* 81434ADC | 38 63 00 02 */	addi r3, r3, 0x2
/* 81434AE0 | 3B BD 00 02 */	addi r29, r29, 0x2
.L_81434AE4:
/* 81434AE4 | A0 1D 00 00 */	lhz r0, 0x0(r29)
/* 81434AE8 | 28 00 01 00 */	cmplwi r0, 0x100
/* 81434AEC | 40 80 FF EC */	bge .L_81434AD8
/* 81434AF0 | 48 00 00 20 */	b .L_81434B10
.L_81434AF4:
/* 81434AF4 | 80 DC 00 84 */	lwz r6, 0x84(r28)
/* 81434AF8 | 7F 43 D3 78 */	mr r3, r26
/* 81434AFC | 38 9C 00 4C */	addi r4, r28, 0x4c
/* 81434B00 | 57 E5 06 3E */	clrlwi r5, r31, 24
/* 81434B04 | 48 02 A5 4D */	bl EZTXCopy
/* 81434B08 | 54 60 06 3F */	clrlwi. r0, r3, 24
/* 81434B0C | 41 82 00 88 */	beq .L_81434B94
.L_81434B10:
/* 81434B10 | 80 7C 00 8C */	lwz r3, 0x8c(r28)
/* 81434B14 | 7F 59 D3 78 */	mr r25, r26
/* 81434B18 | 3B 00 00 00 */	li r24, 0x0
/* 81434B1C | 38 03 00 01 */	addi r0, r3, 0x1
/* 81434B20 | 90 1C 00 8C */	stw r0, 0x8c(r28)
/* 81434B24 | 48 00 00 64 */	b .L_81434B88
.L_81434B28:
/* 81434B28 | 80 1C 00 A0 */	lwz r0, 0xa0(r28)
/* 81434B2C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81434B30 | 41 82 00 28 */	beq .L_81434B58
/* 81434B34 | 40 80 00 4C */	bge .L_81434B80
/* 81434B38 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81434B3C | 41 82 00 28 */	beq .L_81434B64
/* 81434B40 | 40 80 00 0C */	bge .L_81434B4C
/* 81434B44 | 48 00 00 3C */	b .L_81434B80
/* 81434B48 | 48 00 00 38 */	b .L_81434B80
.L_81434B4C:
/* 81434B4C | 48 00 4A BD */	bl toWLower__Q29textinput4utilFw
/* 81434B50 | B0 79 00 00 */	sth r3, 0x0(r25)
/* 81434B54 | 48 00 00 2C */	b .L_81434B80
.L_81434B58:
/* 81434B58 | 48 00 4B 29 */	bl toWUpper__Q29textinput4utilFw
/* 81434B5C | B0 79 00 00 */	sth r3, 0x0(r25)
/* 81434B60 | 48 00 00 20 */	b .L_81434B80
.L_81434B64:
/* 81434B64 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 81434B68 | 40 82 00 10 */	bne .L_81434B78
/* 81434B6C | 48 00 4B 15 */	bl toWUpper__Q29textinput4utilFw
/* 81434B70 | B0 79 00 00 */	sth r3, 0x0(r25)
/* 81434B74 | 48 00 00 0C */	b .L_81434B80
.L_81434B78:
/* 81434B78 | 48 00 4A 91 */	bl toWLower__Q29textinput4utilFw
/* 81434B7C | B0 79 00 00 */	sth r3, 0x0(r25)
.L_81434B80:
/* 81434B80 | 3B 39 00 02 */	addi r25, r25, 0x2
/* 81434B84 | 3B 18 00 01 */	addi r24, r24, 0x1
.L_81434B88:
/* 81434B88 | A0 79 00 00 */	lhz r3, 0x0(r25)
/* 81434B8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81434B90 | 40 82 FF 98 */	bne .L_81434B28
.L_81434B94:
/* 81434B94 | 3B 5A 00 80 */	addi r26, r26, 0x80
/* 81434B98 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_81434B9C:
/* 81434B9C | 7C 1F F0 00 */	cmpw r31, r30
/* 81434BA0 | 41 80 FE 90 */	blt .L_81434A30
.L_81434BA4:
/* 81434BA4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81434BA8 | 48 1C 49 59 */	bl _restgpr_24
/* 81434BAC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81434BB0 | 7C 08 03 A6 */	mtlr r0
/* 81434BB4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81434BB8 | 4E 80 00 20 */	blr
.endfn update__Q39textinput8tistring6WithZiFv

# .text:0x25A4 | 0x81434BBC | size: 0x178
# textinput::tistring::WithZi::complementsCandidates_(long)
.fn complementsCandidates___Q39textinput8tistring6WithZiFl, global
/* 81434BBC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81434BC0 | 7C 08 02 A6 */	mflr r0
/* 81434BC4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81434BC8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81434BCC | 48 1C 48 F5 */	bl _savegpr_27
/* 81434BD0 | 3C 80 81 0C */	lis r4, ElementBuffer__Q39textinput8tistring6WithZi@ha
/* 81434BD4 | 7C 7F 1B 78 */	mr r31, r3
/* 81434BD8 | 38 84 65 F0 */	addi r4, r4, ElementBuffer__Q39textinput8tistring6WithZi@l
/* 81434BDC | 48 00 00 20 */	b .L_81434BFC
.L_81434BE0:
/* 81434BE0 | 28 00 EF F1 */	cmplwi r0, 0xeff1
/* 81434BE4 | 41 80 00 14 */	blt .L_81434BF8
/* 81434BE8 | 28 00 EF F9 */	cmplwi r0, 0xeff9
/* 81434BEC | 41 81 00 0C */	bgt .L_81434BF8
/* 81434BF0 | 38 00 00 01 */	li r0, 0x1
/* 81434BF4 | 48 00 00 18 */	b .L_81434C0C
.L_81434BF8:
/* 81434BF8 | 38 84 00 02 */	addi r4, r4, 0x2
.L_81434BFC:
/* 81434BFC | A0 04 00 00 */	lhz r0, 0x0(r4)
/* 81434C00 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81434C04 | 40 82 FF DC */	bne .L_81434BE0
/* 81434C08 | 38 00 00 00 */	li r0, 0x0
.L_81434C0C:
/* 81434C0C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81434C10 | 41 82 00 38 */	beq .L_81434C48
/* 81434C14 | A0 C3 00 88 */	lhz r6, 0x88(r3)
/* 81434C18 | 3C A0 81 0C */	lis r5, CandidatedWord__Q39textinput8tistring6WithZi@ha
/* 81434C1C | 3C E0 00 01 */	lis r7, 0x1
/* 81434C20 | 38 80 00 00 */	li r4, 0x0
/* 81434C24 | 38 06 FF FF */	subi r0, r6, 0x1
/* 81434C28 | 38 A5 6D F0 */	addi r5, r5, CandidatedWord__Q39textinput8tistring6WithZi@l
/* 81434C2C | 38 C7 FF FE */	subi r6, r7, 0x2
/* 81434C30 | 54 00 08 3C */	slwi r0, r0, 1
/* 81434C34 | 7C C5 03 2E */	sthx r6, r5, r0
/* 81434C38 | A0 03 00 88 */	lhz r0, 0x88(r3)
/* 81434C3C | 54 00 08 3C */	slwi r0, r0, 1
/* 81434C40 | 7C 85 03 2E */	sthx r4, r5, r0
/* 81434C44 | 48 00 00 CC */	b .L_81434D10
.L_81434C48:
/* 81434C48 | 3F 60 81 0C */	lis r27, ElementBuffer__Q39textinput8tistring6WithZi@ha
/* 81434C4C | 3F A0 81 0C */	lis r29, CandidatedWord__Q39textinput8tistring6WithZi@ha
/* 81434C50 | 3B 7B 65 F0 */	addi r27, r27, ElementBuffer__Q39textinput8tistring6WithZi@l
/* 81434C54 | 3B 80 00 00 */	li r28, 0x0
/* 81434C58 | 7F 7E DB 78 */	mr r30, r27
/* 81434C5C | 3B BD 6D F0 */	addi r29, r29, CandidatedWord__Q39textinput8tistring6WithZi@l
/* 81434C60 | 48 00 00 90 */	b .L_81434CF0
.L_81434C64:
/* 81434C64 | 80 1F 00 A0 */	lwz r0, 0xa0(r31)
/* 81434C68 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81434C6C | 41 82 00 34 */	beq .L_81434CA0
/* 81434C70 | 40 80 00 14 */	bge .L_81434C84
/* 81434C74 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81434C78 | 41 82 00 38 */	beq .L_81434CB0
/* 81434C7C | 40 80 00 14 */	bge .L_81434C90
/* 81434C80 | 48 00 00 60 */	b .L_81434CE0
.L_81434C84:
/* 81434C84 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 81434C88 | 40 80 00 58 */	bge .L_81434CE0
/* 81434C8C | 48 00 00 4C */	b .L_81434CD8
.L_81434C90:
/* 81434C90 | A0 7E 00 00 */	lhz r3, 0x0(r30)
/* 81434C94 | 48 00 49 75 */	bl toWLower__Q29textinput4utilFw
/* 81434C98 | B0 7D 00 00 */	sth r3, 0x0(r29)
/* 81434C9C | 48 00 00 44 */	b .L_81434CE0
.L_81434CA0:
/* 81434CA0 | A0 7E 00 00 */	lhz r3, 0x0(r30)
/* 81434CA4 | 48 00 49 DD */	bl toWUpper__Q29textinput4utilFw
/* 81434CA8 | B0 7D 00 00 */	sth r3, 0x0(r29)
/* 81434CAC | 48 00 00 34 */	b .L_81434CE0
.L_81434CB0:
/* 81434CB0 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81434CB4 | 40 82 00 14 */	bne .L_81434CC8
/* 81434CB8 | A0 7E 00 00 */	lhz r3, 0x0(r30)
/* 81434CBC | 48 00 49 C5 */	bl toWUpper__Q29textinput4utilFw
/* 81434CC0 | B0 7D 00 00 */	sth r3, 0x0(r29)
/* 81434CC4 | 48 00 00 1C */	b .L_81434CE0
.L_81434CC8:
/* 81434CC8 | A0 7E 00 00 */	lhz r3, 0x0(r30)
/* 81434CCC | 48 00 49 3D */	bl toWLower__Q29textinput4utilFw
/* 81434CD0 | B0 7D 00 00 */	sth r3, 0x0(r29)
/* 81434CD4 | 48 00 00 0C */	b .L_81434CE0
.L_81434CD8:
/* 81434CD8 | A0 1E 00 00 */	lhz r0, 0x0(r30)
/* 81434CDC | B0 1D 00 00 */	sth r0, 0x0(r29)
.L_81434CE0:
/* 81434CE0 | 3B 7B 00 02 */	addi r27, r27, 0x2
/* 81434CE4 | 3B DE 00 02 */	addi r30, r30, 0x2
/* 81434CE8 | 3B BD 00 02 */	addi r29, r29, 0x2
/* 81434CEC | 3B 9C 00 01 */	addi r28, r28, 0x1
.L_81434CF0:
/* 81434CF0 | A0 1B 00 00 */	lhz r0, 0x0(r27)
/* 81434CF4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81434CF8 | 40 82 FF 6C */	bne .L_81434C64
/* 81434CFC | 3C 60 81 0C */	lis r3, CandidatedWord__Q39textinput8tistring6WithZi@ha
/* 81434D00 | 57 80 08 3C */	slwi r0, r28, 1
/* 81434D04 | 38 63 6D F0 */	addi r3, r3, CandidatedWord__Q39textinput8tistring6WithZi@l
/* 81434D08 | 38 80 00 00 */	li r4, 0x0
/* 81434D0C | 7C 83 03 2E */	sthx r4, r3, r0
.L_81434D10:
/* 81434D10 | 38 00 00 01 */	li r0, 0x1
/* 81434D14 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81434D18 | 90 1F 00 8C */	stw r0, 0x8c(r31)
/* 81434D1C | 38 60 00 00 */	li r3, 0x0
/* 81434D20 | 48 1C 47 ED */	bl _restgpr_27
/* 81434D24 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81434D28 | 7C 08 03 A6 */	mtlr r0
/* 81434D2C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81434D30 | 4E 80 00 20 */	blr
.endfn complementsCandidates___Q39textinput8tistring6WithZiFl

# .text:0x271C | 0x81434D34 | size: 0x104
# textinput::tistring::WithZi::setElementBuffer()
.fn setElementBuffer__Q39textinput8tistring6WithZiFv, global
/* 81434D34 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81434D38 | 7C 08 02 A6 */	mflr r0
/* 81434D3C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81434D40 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81434D44 | 48 1C 47 7D */	bl _savegpr_27
/* 81434D48 | 3F E0 81 0C */	lis r31, ElementBuffer__Q39textinput8tistring6WithZi@ha
/* 81434D4C | 7C 7B 1B 78 */	mr r27, r3
/* 81434D50 | 3B FF 65 F0 */	addi r31, r31, ElementBuffer__Q39textinput8tistring6WithZi@l
/* 81434D54 | 3B 80 00 00 */	li r28, 0x0
/* 81434D58 | 38 7F 00 00 */	addi r3, r31, 0x0
/* 81434D5C | 38 80 00 00 */	li r4, 0x0
/* 81434D60 | 38 A0 01 FE */	li r5, 0x1fe
/* 81434D64 | 4B EF B5 D1 */	bl memset
/* 81434D68 | 38 7F 04 00 */	addi r3, r31, 0x400
/* 81434D6C | 38 80 00 00 */	li r4, 0x0
/* 81434D70 | 38 A0 01 FE */	li r5, 0x1fe
/* 81434D74 | 4B EF B5 C1 */	bl memset
/* 81434D78 | 3B DF 00 00 */	addi r30, r31, 0x0
/* 81434D7C | 3B FF 02 00 */	addi r31, r31, 0x200
/* 81434D80 | 48 00 00 80 */	b .L_81434E00
.L_81434D84:
/* 81434D84 | 7C 7E EB 2E */	sthx r3, r30, r29
/* 81434D88 | 7F 63 DB 78 */	mr r3, r27
/* 81434D8C | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 81434D90 | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 81434D94 | 7D 89 03 A6 */	mtctr r12
/* 81434D98 | 4E 80 04 21 */	bctrl
/* 81434D9C | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81434DA0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81434DA4 | 40 82 00 58 */	bne .L_81434DFC
/* 81434DA8 | 7C 7E EA 2E */	lhzx r3, r30, r29
/* 81434DAC | 2C 03 00 30 */	cmpwi r3, 0x30
/* 81434DB0 | 41 80 00 1C */	blt .L_81434DCC
/* 81434DB4 | 2C 03 00 39 */	cmpwi r3, 0x39
/* 81434DB8 | 41 81 00 14 */	bgt .L_81434DCC
/* 81434DBC | 3C 63 00 01 */	addis r3, r3, 0x1
/* 81434DC0 | 38 03 F3 00 */	subi r0, r3, 0xd00
/* 81434DC4 | 7C 1E EB 2E */	sthx r0, r30, r29
/* 81434DC8 | 48 00 00 34 */	b .L_81434DFC
.L_81434DCC:
/* 81434DCC | 2C 03 00 61 */	cmpwi r3, 0x61
/* 81434DD0 | 41 80 00 0C */	blt .L_81434DDC
/* 81434DD4 | 2C 03 00 7A */	cmpwi r3, 0x7a
/* 81434DD8 | 40 81 00 14 */	ble .L_81434DEC
.L_81434DDC:
/* 81434DDC | 2C 03 00 41 */	cmpwi r3, 0x41
/* 81434DE0 | 41 80 00 1C */	blt .L_81434DFC
/* 81434DE4 | 2C 03 00 5A */	cmpwi r3, 0x5a
/* 81434DE8 | 41 81 00 14 */	bgt .L_81434DFC
.L_81434DEC:
/* 81434DEC | 7C 7E EA 2E */	lhzx r3, r30, r29
/* 81434DF0 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 81434DF4 | 38 03 F3 00 */	subi r0, r3, 0xd00
/* 81434DF8 | 7C 1E EB 2E */	sthx r0, r30, r29
.L_81434DFC:
/* 81434DFC | 3B 9C 00 01 */	addi r28, r28, 0x1
.L_81434E00:
/* 81434E00 | 57 9D 0B FC */	clrlslwi r29, r28, 16, 1
/* 81434E04 | 7C 7F EA 2E */	lhzx r3, r31, r29
/* 81434E08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81434E0C | 41 82 00 10 */	beq .L_81434E1C
/* 81434E10 | 57 80 04 3E */	clrlwi r0, r28, 16
/* 81434E14 | 28 00 00 FF */	cmplwi r0, 0xff
/* 81434E18 | 41 80 FF 6C */	blt .L_81434D84
.L_81434E1C:
/* 81434E1C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81434E20 | 7F 83 E3 78 */	mr r3, r28
/* 81434E24 | 48 1C 46 E9 */	bl _restgpr_27
/* 81434E28 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81434E2C | 7C 08 03 A6 */	mtlr r0
/* 81434E30 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81434E34 | 4E 80 00 20 */	blr
.endfn setElementBuffer__Q39textinput8tistring6WithZiFv

# .text:0x2820 | 0x81434E38 | size: 0x10
# textinput::tistring::WithZi::isFix()
.fn isFix__Q39textinput8tistring6WithZiFv, global
/* 81434E38 | A0 03 00 88 */	lhz r0, 0x88(r3)
/* 81434E3C | 7C 00 00 34 */	cntlzw r0, r0
/* 81434E40 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81434E44 | 4E 80 00 20 */	blr
.endfn isFix__Q39textinput8tistring6WithZiFv

# .text:0x2830 | 0x81434E48 | size: 0x8C
# textinput::tistring::WithZi::getPredictLanguage()
.fn getPredictLanguage__Q39textinput8tistring6WithZiFv, global
/* 81434E48 | 80 03 00 9C */	lwz r0, 0x9c(r3)
/* 81434E4C | 28 00 00 0B */	cmplwi r0, 0xb
/* 81434E50 | 41 81 00 7C */	bgt .L_81434ECC
/* 81434E54 | 3C 60 81 66 */	lis r3, jumptable_8165F644@ha
/* 81434E58 | 54 00 10 3A */	slwi r0, r0, 2
/* 81434E5C | 38 63 F6 44 */	addi r3, r3, jumptable_8165F644@l
/* 81434E60 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 81434E64 | 7C 69 03 A6 */	mtctr r3
/* 81434E68 | 4E 80 04 20 */	bctr
.L_81434E6C:
/* 81434E6C | 38 60 00 3B */	li r3, 0x3b
/* 81434E70 | 4E 80 00 20 */	blr
.L_81434E74:
/* 81434E74 | 38 60 00 40 */	li r3, 0x40
/* 81434E78 | 4E 80 00 20 */	blr
.L_81434E7C:
/* 81434E7C | 38 60 00 41 */	li r3, 0x41
/* 81434E80 | 4E 80 00 20 */	blr
.L_81434E84:
/* 81434E84 | 38 60 00 3A */	li r3, 0x3a
/* 81434E88 | 4E 80 00 20 */	blr
.L_81434E8C:
/* 81434E8C | 38 60 00 05 */	li r3, 0x5
/* 81434E90 | 4E 80 00 20 */	blr
.L_81434E94:
/* 81434E94 | 38 60 00 3F */	li r3, 0x3f
/* 81434E98 | 4E 80 00 20 */	blr
.L_81434E9C:
/* 81434E9C | 38 60 00 42 */	li r3, 0x42
/* 81434EA0 | 4E 80 00 20 */	blr
.L_81434EA4:
/* 81434EA4 | 38 60 00 2F */	li r3, 0x2f
/* 81434EA8 | 4E 80 00 20 */	blr
.L_81434EAC:
/* 81434EAC | 38 60 00 0D */	li r3, 0xd
/* 81434EB0 | 4E 80 00 20 */	blr
.L_81434EB4:
/* 81434EB4 | 38 60 00 01 */	li r3, 0x1
/* 81434EB8 | 4E 80 00 20 */	blr
.L_81434EBC:
/* 81434EBC | 38 60 00 12 */	li r3, 0x12
/* 81434EC0 | 4E 80 00 20 */	blr
.L_81434EC4:
/* 81434EC4 | 38 60 00 12 */	li r3, 0x12
/* 81434EC8 | 4E 80 00 20 */	blr
.L_81434ECC:
/* 81434ECC | 38 60 00 3B */	li r3, 0x3b
/* 81434ED0 | 4E 80 00 20 */	blr
.endfn getPredictLanguage__Q39textinput8tistring6WithZiFv

# .text:0x28BC | 0x81434ED4 | size: 0xE0
# textinput::tistring::WithZi::setCurrentWord(const wchar_t*)
.fn setCurrentWord__Q39textinput8tistring6WithZiFPCw, global
/* 81434ED4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81434ED8 | 40 82 00 20 */	bne .L_81434EF8
/* 81434EDC | 3C 80 81 0D */	lis r4, LatestWord__Q39textinput8tistring6WithZi@ha
/* 81434EE0 | 38 A0 00 20 */	li r5, 0x20
/* 81434EE4 | 38 64 81 F0 */	addi r3, r4, LatestWord__Q39textinput8tistring6WithZi@l
/* 81434EE8 | 38 00 00 00 */	li r0, 0x0
/* 81434EEC | B0 A4 81 F0 */	sth r5, LatestWord__Q39textinput8tistring6WithZi@l(r4)
/* 81434EF0 | B0 03 00 02 */	sth r0, 0x2(r3)
/* 81434EF4 | 4E 80 00 20 */	blr
.L_81434EF8:
/* 81434EF8 | 38 00 00 01 */	li r0, 0x1
/* 81434EFC | 3C A0 81 0D */	lis r5, LatestWord__Q39textinput8tistring6WithZi@ha
/* 81434F00 | 98 03 00 79 */	stb r0, 0x79(r3)
/* 81434F04 | 38 A5 81 F0 */	addi r5, r5, LatestWord__Q39textinput8tistring6WithZi@l
/* 81434F08 | 39 20 00 00 */	li r9, 0x0
/* 81434F0C | 48 00 00 2C */	b .L_81434F38
.L_81434F10:
/* 81434F10 | 28 09 00 3F */	cmplwi r9, 0x3f
/* 81434F14 | 40 82 00 1C */	bne .L_81434F30
/* 81434F18 | 3C 60 81 0D */	lis r3, LatestWord__Q39textinput8tistring6WithZi@ha
/* 81434F1C | 55 20 08 3C */	slwi r0, r9, 1
/* 81434F20 | 38 63 81 F0 */	addi r3, r3, LatestWord__Q39textinput8tistring6WithZi@l
/* 81434F24 | 38 80 00 00 */	li r4, 0x0
/* 81434F28 | 7C 83 03 2E */	sthx r4, r3, r0
/* 81434F2C | 4E 80 00 20 */	blr
.L_81434F30:
/* 81434F30 | 38 A5 00 02 */	addi r5, r5, 0x2
/* 81434F34 | 39 29 00 01 */	addi r9, r9, 0x1
.L_81434F38:
/* 81434F38 | A0 05 00 00 */	lhz r0, 0x0(r5)
/* 81434F3C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81434F40 | 41 82 00 0C */	beq .L_81434F4C
/* 81434F44 | 28 00 00 20 */	cmplwi r0, 0x20
/* 81434F48 | 40 82 FF C8 */	bne .L_81434F10
.L_81434F4C:
/* 81434F4C | 3C E0 81 0D */	lis r7, LatestWord__Q39textinput8tistring6WithZi@ha
/* 81434F50 | 7C 88 23 78 */	mr r8, r4
/* 81434F54 | 38 E7 81 F0 */	addi r7, r7, LatestWord__Q39textinput8tistring6WithZi@l
/* 81434F58 | 55 26 08 3C */	slwi r6, r9, 1
/* 81434F5C | 39 40 00 00 */	li r10, 0x0
/* 81434F60 | 38 A0 00 00 */	li r5, 0x0
/* 81434F64 | 48 00 00 20 */	b .L_81434F84
.L_81434F68:
/* 81434F68 | 7C 04 2A 2E */	lhzx r0, r4, r5
/* 81434F6C | 39 29 00 01 */	addi r9, r9, 0x1
/* 81434F70 | 39 08 00 02 */	addi r8, r8, 0x2
/* 81434F74 | 39 4A 00 01 */	addi r10, r10, 0x1
/* 81434F78 | 7C 07 33 2E */	sthx r0, r7, r6
/* 81434F7C | 38 C6 00 02 */	addi r6, r6, 0x2
/* 81434F80 | 38 A5 00 02 */	addi r5, r5, 0x2
.L_81434F84:
/* 81434F84 | A0 08 00 00 */	lhz r0, 0x0(r8)
/* 81434F88 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81434F8C | 41 82 00 0C */	beq .L_81434F98
/* 81434F90 | 28 09 00 3F */	cmplwi r9, 0x3f
/* 81434F94 | 41 80 FF D4 */	blt .L_81434F68
.L_81434F98:
/* 81434F98 | 3C 80 81 0D */	lis r4, LatestWord__Q39textinput8tistring6WithZi@ha
/* 81434F9C | 55 20 08 3C */	slwi r0, r9, 1
/* 81434FA0 | 38 84 81 F0 */	addi r4, r4, LatestWord__Q39textinput8tistring6WithZi@l
/* 81434FA4 | 38 A0 00 00 */	li r5, 0x0
/* 81434FA8 | 7C A4 03 2E */	sthx r5, r4, r0
/* 81434FAC | 91 43 00 7C */	stw r10, 0x7c(r3)
/* 81434FB0 | 4E 80 00 20 */	blr
.endfn setCurrentWord__Q39textinput8tistring6WithZiFPCw

# .text:0x299C | 0x81434FB4 | size: 0x4
# textinput::tistring::WithZi::EnableKSXFilter(bool)
.fn EnableKSXFilter__Q39textinput8tistring6WithZiFb, global
/* 81434FB4 | 4E 80 00 20 */	blr
.endfn EnableKSXFilter__Q39textinput8tistring6WithZiFb

# .text:0x29A0 | 0x81434FB8 | size: 0x14
# textinput::tistring::WithZi::canBackSpace()
.fn canBackSpace__Q39textinput8tistring6WithZiFv, global
/* 81434FB8 | A0 63 00 88 */	lhz r3, 0x88(r3)
/* 81434FBC | 7C 03 00 D0 */	neg r0, r3
/* 81434FC0 | 7C 00 1B 78 */	or r0, r0, r3
/* 81434FC4 | 54 03 0F FE */	srwi r3, r0, 31
/* 81434FC8 | 4E 80 00 20 */	blr
.endfn canBackSpace__Q39textinput8tistring6WithZiFv

# .text:0x29B4 | 0x81434FCC | size: 0x4
# textinput::tistring::WithZi::clear()
.fn clear__Q39textinput8tistring6WithZiFv, global
/* 81434FCC | 4E 80 00 20 */	blr
.endfn clear__Q39textinput8tistring6WithZiFv

# 0x81615E50..0x816163B0 | size: 0x560
.rodata
.balign 8

# .rodata:0x0 | 0x81615E50 | size: 0x18
.obj lbl_81615E50, global
	.2byte 0x0079
	.2byte 0x0075
	.2byte 0x0069
	.2byte 0x006F
	.2byte 0x0070
	.2byte 0x0068
	.2byte 0x006A
	.2byte 0x006B
	.2byte 0x006C
	.2byte 0x0062
	.2byte 0x006E
	.2byte 0x006D
.endobj lbl_81615E50

# .rodata:0x18 | 0x81615E68 | size: 0x20
.obj lbl_81615E68, global
	.2byte 0x0071
	.2byte 0x0077
	.2byte 0x0065
	.2byte 0x0072
	.2byte 0x0074
	.2byte 0x0061
	.2byte 0x0073
	.2byte 0x0064
	.2byte 0x0066
	.2byte 0x0067
	.2byte 0x007A
	.2byte 0x0078
	.2byte 0x0063
	.2byte 0x0076
	.2byte 0x0000
	.2byte 0x0000
.endobj lbl_81615E68

# .rodata:0x38 | 0x81615E88 | size: 0x2C
.obj lbl_81615E88, global
	.4byte csAlphabetKeyABCUS__Q39textinput8keyboard13cellphonetype
	.4byte 0x00410062
	.4byte 0x00630000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000C
	.4byte 0x00010000
.endobj lbl_81615E88

# .rodata:0x64 | 0x81615EB4 | size: 0x2C
.obj lbl_81615EB4, global
	.4byte csAlphabetKeyABCUS__Q39textinput8keyboard13cellphonetype
	.4byte 0x00410042
	.4byte 0x00430000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000C
	.4byte 0x00000000
.endobj lbl_81615EB4

# .rodata:0x90 | 0x81615EE0 | size: 0x2C
.obj lbl_81615EE0, global
	.4byte csAlphabetKeyabcUS__Q39textinput8keyboard13cellphonetype
	.4byte 0x00610062
	.4byte 0x00630000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000C
	.4byte 0x00020000
.endobj lbl_81615EE0

# .rodata:0xBC | 0x81615F0C | size: 0x2C
.obj lbl_81615F0C, global
	.4byte csAlphabetKeyABCUK__Q39textinput8keyboard13cellphonetype
	.4byte 0x00410062
	.4byte 0x00630000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000C
	.4byte 0x00010000
.endobj lbl_81615F0C

# .rodata:0xE8 | 0x81615F38 | size: 0x2C
.obj lbl_81615F38, global
	.4byte csAlphabetKeyABCUK__Q39textinput8keyboard13cellphonetype
	.4byte 0x00410042
	.4byte 0x00430000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000C
	.4byte 0x00000000
.endobj lbl_81615F38

# .rodata:0x114 | 0x81615F64 | size: 0x2C
.obj lbl_81615F64, global
	.4byte csAlphabetKeyabcUK__Q39textinput8keyboard13cellphonetype
	.4byte 0x00610062
	.4byte 0x00630000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000C
	.4byte 0x00020000
.endobj lbl_81615F64

# .rodata:0x140 | 0x81615F90 | size: 0x2C
.obj lbl_81615F90, global
	.4byte csAlphabetKeyABCDE__Q39textinput8keyboard13cellphonetype
	.4byte 0x00410062
	.4byte 0x00630000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000C
	.4byte 0x00010000
.endobj lbl_81615F90

# .rodata:0x16C | 0x81615FBC | size: 0x2C
.obj lbl_81615FBC, global
	.4byte csAlphabetKeyABCDE__Q39textinput8keyboard13cellphonetype
	.4byte 0x00410042
	.4byte 0x00430000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000C
	.4byte 0x00000000
.endobj lbl_81615FBC

# .rodata:0x198 | 0x81615FE8 | size: 0x2C
.obj lbl_81615FE8, global
	.4byte csAlphabetKeyabcDE__Q39textinput8keyboard13cellphonetype
	.4byte 0x00610062
	.4byte 0x00630000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000C
	.4byte 0x00000000
.endobj lbl_81615FE8

# .rodata:0x1C4 | 0x81616014 | size: 0x2C
.obj lbl_81616014, global
	.4byte csAlphabetKeyABCIT__Q39textinput8keyboard13cellphonetype
	.4byte 0x00410062
	.4byte 0x00630000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000C
	.4byte 0x00010000
.endobj lbl_81616014

# .rodata:0x1F0 | 0x81616040 | size: 0x2C
.obj lbl_81616040, global
	.4byte csAlphabetKeyABCIT__Q39textinput8keyboard13cellphonetype
	.4byte 0x00410042
	.4byte 0x00430000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000C
	.4byte 0x00000000
.endobj lbl_81616040

# .rodata:0x21C | 0x8161606C | size: 0x2C
.obj lbl_8161606C, global
	.4byte csAlphabetKeyabcIT__Q39textinput8keyboard13cellphonetype
	.4byte 0x00610062
	.4byte 0x00630000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000C
	.4byte 0x00000000
.endobj lbl_8161606C

# .rodata:0x248 | 0x81616098 | size: 0x2C
.obj lbl_81616098, global
	.4byte csAlphabetKeyABCNL__Q39textinput8keyboard13cellphonetype
	.4byte 0x00410062
	.4byte 0x00630000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000C
	.4byte 0x00010000
.endobj lbl_81616098

# .rodata:0x274 | 0x816160C4 | size: 0x2C
.obj lbl_816160C4, global
	.4byte csAlphabetKeyABCNL__Q39textinput8keyboard13cellphonetype
	.4byte 0x00410042
	.4byte 0x00430000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000C
	.4byte 0x00000000
.endobj lbl_816160C4

# .rodata:0x2A0 | 0x816160F0 | size: 0x2C
.obj lbl_816160F0, global
	.4byte csAlphabetKeyabcNL__Q39textinput8keyboard13cellphonetype
	.4byte 0x00610062
	.4byte 0x00630000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000C
	.4byte 0x00020000
.endobj lbl_816160F0

# .rodata:0x2CC | 0x8161611C | size: 0x2C
.obj lbl_8161611C, global
	.4byte csAlphabetKeyABCSP__Q39textinput8keyboard13cellphonetype
	.4byte 0x00410062
	.4byte 0x00630000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000C
	.4byte 0x00010000
.endobj lbl_8161611C

# .rodata:0x2F8 | 0x81616148 | size: 0x2C
.obj lbl_81616148, global
	.4byte csAlphabetKeyABCSP__Q39textinput8keyboard13cellphonetype
	.4byte 0x00410042
	.4byte 0x00430000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000C
	.4byte 0x00000000
.endobj lbl_81616148

# .rodata:0x324 | 0x81616174 | size: 0x2C
.obj lbl_81616174, global
	.4byte csAlphabetKeyabcSP__Q39textinput8keyboard13cellphonetype
	.4byte 0x00610062
	.4byte 0x00630000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000C
	.4byte 0x00000000
.endobj lbl_81616174

# .rodata:0x350 | 0x816161A0 | size: 0x2C
.obj lbl_816161A0, global
	.4byte csAlphabetKeyABCFR__Q39textinput8keyboard13cellphonetype
	.4byte 0x00410062
	.4byte 0x00630000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000C
	.4byte 0x00010000
.endobj lbl_816161A0

# .rodata:0x37C | 0x816161CC | size: 0x2C
.obj lbl_816161CC, global
	.4byte csAlphabetKeyABCFR__Q39textinput8keyboard13cellphonetype
	.4byte 0x00410042
	.4byte 0x00430000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000C
	.4byte 0x00000000
.endobj lbl_816161CC

# .rodata:0x3A8 | 0x816161F8 | size: 0x2C
.obj lbl_816161F8, global
	.4byte csAlphabetKeyabcFR__Q39textinput8keyboard13cellphonetype
	.4byte 0x00610062
	.4byte 0x00630000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000C
	.4byte 0x00000000
.endobj lbl_816161F8

# .rodata:0x3D4 | 0x81616224 | size: 0x2C
.obj lbl_81616224, global
	.4byte csAlphabetKeyAIUJP__Q39textinput8keyboard13cellphonetype
	.4byte 0x30423044
	.4byte 0x30460000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000C
	.4byte 0x00000000
.endobj lbl_81616224

# .rodata:0x400 | 0x81616250 | size: 0x2C
.obj lbl_81616250, global
	.4byte csAlphabetKeyaiuJP__Q39textinput8keyboard13cellphonetype
	.4byte 0x30A230A4
	.4byte 0x30A60000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000C
	.4byte 0x00000000
.endobj lbl_81616250

# .rodata:0x42C | 0x8161627C | size: 0x2C
.obj lbl_8161627C, global
	.4byte csAlphabetKeyABCJP__Q39textinput8keyboard13cellphonetype
	.4byte 0x00410062
	.4byte 0x00630000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000C
	.4byte 0x00000000
.endobj lbl_8161627C

# .rodata:0x458 | 0x816162A8 | size: 0x2C
.obj lbl_816162A8, global
	.4byte csAlphabetKeyabcJP__Q39textinput8keyboard13cellphonetype
	.4byte 0x00410062
	.4byte 0x00630000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000C
	.4byte 0x00000000
.endobj lbl_816162A8

# .rodata:0x484 | 0x816162D4 | size: 0x2C
.obj lbl_816162D4, global
	.4byte csNumberKey__Q39textinput8keyboard13cellphonetype
	.4byte 0x00310032
	.4byte 0x00330000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000C
	.4byte 0x00030000
.endobj lbl_816162D4

# .rodata:0x4B0 | 0x81616300 | size: 0x2C
.obj lbl_81616300, global
	.4byte csAlphabetKeyABCCN__Q39textinput8keyboard13cellphonetype
	.4byte 0x00410042
	.4byte 0x00430000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000C
	.4byte 0x00000000
.endobj lbl_81616300

# .rodata:0x4DC | 0x8161632C | size: 0x2C
.obj lbl_8161632C, global
	.4byte csAlphabetKeyabcCN__Q39textinput8keyboard13cellphonetype
	.4byte 0x00610062
	.4byte 0x00630000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000C
	.4byte 0x00020000
.endobj lbl_8161632C

# .rodata:0x508 | 0x81616358 | size: 0x2C
.obj lbl_81616358, global
	.4byte csAlphabetKeyPinyinCN__Q39textinput8keyboard13cellphonetype
	.4byte 0x62FC97F3
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000C
	.4byte 0x00040000
.endobj lbl_81616358

# .rodata:0x534 | 0x81616384 | size: 0x2C
.obj lbl_81616384, global
	.4byte csHangulKey__Q39textinput8keyboard13cellphonetype
	.4byte 0xAC00B098
	.4byte 0xB2E40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000C
	.4byte 0x00050000
.endobj lbl_81616384

# 0x8165F518..0x8165F780 | size: 0x268
.data
.balign 8

# .data:0x0 | 0x8165F518 | size: 0xD0
# textinput::tistring::Decolated::__vtable
.obj __vt__Q39textinput8tistring9Decolated, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q39textinput8tistring9DecolatedFv
	.4byte create__Q39textinput8tistring10StringBaseFP12MEMAllocator
	.4byte pushBack__Q39textinput8tistring10StringBaseFw
	.4byte popBack__Q39textinput8tistring10StringBaseFv
	.4byte clear__Q39textinput8tistring9DecolatedFv
	.4byte getLength__Q39textinput8tistring10StringBaseCFv
	.4byte append__Q39textinput8tistring10StringBaseFPCw
	.4byte insert__Q39textinput8tistring10StringBaseFUsPCw
	.4byte remove__Q39textinput8tistring10StringBaseFUsUs
	.4byte replace__Q39textinput8tistring10StringBaseFUsUsPCw
	.4byte set__Q39textinput8tistring9DecolatedFPCw
	.4byte setAt__Q39textinput8tistring10StringBaseFUsw
	.4byte setLength__Q39textinput8tistring9DecolatedFUs
	.4byte getWCString__Q39textinput8tistring10StringBaseCFv
	.4byte setCandidate__Q39textinput8tistring10StringBaseFw
	.4byte getCandidate__Q39textinput8tistring10StringBaseCFv
	.4byte hasCandidate__Q39textinput8tistring10StringBaseCFv
	.4byte getLastWChar__Q39textinput8tistring10StringBaseFv
	.4byte inputChar__Q39textinput8tistring9DecolatedFw
	.4byte inputString__Q39textinput8tistring9DecolatedFPCw
	.4byte deleteChar__Q39textinput8tistring9DecolatedFv
	.4byte backSpace__Q39textinput8tistring9DecolatedFv
	.4byte confirm__Q39textinput8tistring9DecolatedFPCw
	.4byte moveCursorRight__Q39textinput8tistring9DecolatedFv
	.4byte moveCursorLeft__Q39textinput8tistring9DecolatedFv
	.4byte setCursorPos__Q39textinput8tistring9DecolatedFUl
	.4byte onSustain__Q39textinput8tistring9DecolatedFv
	.4byte offSustain__Q39textinput8tistring9DecolatedFv
	.4byte isOnSustain__Q39textinput8tistring9DecolatedFv
	.4byte getCursorPos__Q39textinput8tistring9DecolatedCFv
	.4byte getCursorPos__Q39textinput8tistring9DecolatedFPUlPUl
	.4byte canBackSpace__Q39textinput8tistring9DecolatedFv
	.4byte deleteForward__Q39textinput8tistring9DecolatedFv
	.4byte getSelected__Q39textinput8tistring9DecolatedFRUlRUl
	.4byte getWCharAtCursor__Q39textinput8tistring9DecolatedFv
	.4byte replaceAtCursor__Q39textinput8tistring9DecolatedFw
	.4byte isDakuten__Q39textinput8tistring9DecolatedFv
	.4byte converDakuten__Q39textinput8tistring9DecolatedFv
	.4byte isHandaku__Q39textinput8tistring9DecolatedFv
	.4byte converHandaku__Q39textinput8tistring9DecolatedFv
	.4byte convertAll__Q39textinput8tistring9DecolatedFv
	.4byte isSmall__Q39textinput8tistring9DecolatedFv
	.4byte converSmall__Q39textinput8tistring9DecolatedFv
	.4byte atTheBeginningOfASentence__Q39textinput8tistring9DecolatedFv
	.4byte initKanaConverter__Q39textinput8tistring9DecolatedFv
	.4byte getKanaBuffer__Q39textinput8tistring9DecolatedFv
	.4byte isKanaFix__Q39textinput8tistring9DecolatedCFv
	.4byte confirmKana__Q39textinput8tistring9DecolatedFv
	.4byte clearKana__Q39textinput8tistring9DecolatedFv
	.4byte EnableKSXFilter__Q39textinput8tistring9DecolatedFb
.endobj __vt__Q39textinput8tistring9Decolated

# .data:0xD0 | 0x8165F5E8 | size: 0x50
# textinput::tistring::StringBase::__vtable
.obj __vt__Q39textinput8tistring10StringBase, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q39textinput8tistring10StringBaseFv
	.4byte create__Q39textinput8tistring10StringBaseFP12MEMAllocator
	.4byte pushBack__Q39textinput8tistring10StringBaseFw
	.4byte popBack__Q39textinput8tistring10StringBaseFv
	.4byte clear__Q39textinput8tistring10StringBaseFv
	.4byte getLength__Q39textinput8tistring10StringBaseCFv
	.4byte append__Q39textinput8tistring10StringBaseFPCw
	.4byte insert__Q39textinput8tistring10StringBaseFUsPCw
	.4byte remove__Q39textinput8tistring10StringBaseFUsUs
	.4byte replace__Q39textinput8tistring10StringBaseFUsUsPCw
	.4byte set__Q39textinput8tistring10StringBaseFPCw
	.4byte setAt__Q39textinput8tistring10StringBaseFUsw
	.4byte setLength__Q39textinput8tistring10StringBaseFUs
	.4byte getWCString__Q39textinput8tistring10StringBaseCFv
	.4byte setCandidate__Q39textinput8tistring10StringBaseFw
	.4byte getCandidate__Q39textinput8tistring10StringBaseCFv
	.4byte hasCandidate__Q39textinput8tistring10StringBaseCFv
	.4byte getLastWChar__Q39textinput8tistring10StringBaseFv
.endobj __vt__Q39textinput8tistring10StringBase

# .data:0x120 | 0x8165F638 | size: 0xC
.obj lbl_8165F638, global
	.4byte 0x03030201
	.4byte 0x04070605
	.4byte 0x08000000
.endobj lbl_8165F638

# .data:0x12C | 0x8165F644 | size: 0x30
.obj jumptable_8165F644, local
	.rel getPredictLanguage__Q39textinput8tistring6WithZiFv, .L_81434E6C
	.rel getPredictLanguage__Q39textinput8tistring6WithZiFv, .L_81434E74
	.rel getPredictLanguage__Q39textinput8tistring6WithZiFv, .L_81434E7C
	.rel getPredictLanguage__Q39textinput8tistring6WithZiFv, .L_81434E84
	.rel getPredictLanguage__Q39textinput8tistring6WithZiFv, .L_81434E8C
	.rel getPredictLanguage__Q39textinput8tistring6WithZiFv, .L_81434E94
	.rel getPredictLanguage__Q39textinput8tistring6WithZiFv, .L_81434E9C
	.rel getPredictLanguage__Q39textinput8tistring6WithZiFv, .L_81434EA4
	.rel getPredictLanguage__Q39textinput8tistring6WithZiFv, .L_81434EAC
	.rel getPredictLanguage__Q39textinput8tistring6WithZiFv, .L_81434EB4
	.rel getPredictLanguage__Q39textinput8tistring6WithZiFv, .L_81434EBC
	.rel getPredictLanguage__Q39textinput8tistring6WithZiFv, .L_81434EC4
.endobj jumptable_8165F644

# .data:0x15C | 0x8165F674 | size: 0x4
.obj gap_08_8165F674_data, global
.hidden gap_08_8165F674_data
	.4byte 0x00000000
.endobj gap_08_8165F674_data

# .data:0x160 | 0x8165F678 | size: 0x108
# textinput::tistring::WithZi::__vtable
.obj __vt__Q39textinput8tistring6WithZi, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q39textinput8tistring6WithZiFv
	.4byte create__Q39textinput8tistring6WithZiFP12MEMAllocator
	.4byte pushBack__Q39textinput8tistring6WithZiFw
	.4byte popBack__Q39textinput8tistring6WithZiFv
	.4byte clear__Q39textinput8tistring6WithZiFv
	.4byte getLength__Q39textinput8tistring10StringBaseCFv
	.4byte append__Q39textinput8tistring10StringBaseFPCw
	.4byte insert__Q39textinput8tistring10StringBaseFUsPCw
	.4byte remove__Q39textinput8tistring10StringBaseFUsUs
	.4byte replace__Q39textinput8tistring10StringBaseFUsUsPCw
	.4byte set__Q39textinput8tistring9DecolatedFPCw
	.4byte setAt__Q39textinput8tistring10StringBaseFUsw
	.4byte setLength__Q39textinput8tistring9DecolatedFUs
	.4byte getWCString__Q39textinput8tistring10StringBaseCFv
	.4byte setCandidate__Q39textinput8tistring10StringBaseFw
	.4byte getCandidate__Q39textinput8tistring10StringBaseCFv
	.4byte hasCandidate__Q39textinput8tistring10StringBaseCFv
	.4byte getLastWChar__Q39textinput8tistring10StringBaseFv
	.4byte inputChar__Q39textinput8tistring6WithZiFw
	.4byte inputString__Q39textinput8tistring9DecolatedFPCw
	.4byte deleteChar__Q39textinput8tistring9DecolatedFv
	.4byte backSpace__Q39textinput8tistring6WithZiFv
	.4byte confirm__Q39textinput8tistring6WithZiFPCw
	.4byte moveCursorRight__Q39textinput8tistring6WithZiFv
	.4byte moveCursorLeft__Q39textinput8tistring6WithZiFv
	.4byte setCursorPos__Q39textinput8tistring9DecolatedFUl
	.4byte onSustain__Q39textinput8tistring9DecolatedFv
	.4byte offSustain__Q39textinput8tistring9DecolatedFv
	.4byte isOnSustain__Q39textinput8tistring9DecolatedFv
	.4byte getCursorPos__Q39textinput8tistring9DecolatedCFv
	.4byte getCursorPos__Q39textinput8tistring9DecolatedFPUlPUl
	.4byte canBackSpace__Q39textinput8tistring6WithZiFv
	.4byte deleteForward__Q39textinput8tistring9DecolatedFv
	.4byte getSelected__Q39textinput8tistring9DecolatedFRUlRUl
	.4byte getWCharAtCursor__Q39textinput8tistring9DecolatedFv
	.4byte replaceAtCursor__Q39textinput8tistring9DecolatedFw
	.4byte isDakuten__Q39textinput8tistring9DecolatedFv
	.4byte converDakuten__Q39textinput8tistring9DecolatedFv
	.4byte isHandaku__Q39textinput8tistring9DecolatedFv
	.4byte converHandaku__Q39textinput8tistring9DecolatedFv
	.4byte convertAll__Q39textinput8tistring9DecolatedFv
	.4byte isSmall__Q39textinput8tistring9DecolatedFv
	.4byte converSmall__Q39textinput8tistring9DecolatedFv
	.4byte atTheBeginningOfASentence__Q39textinput8tistring9DecolatedFv
	.4byte initKanaConverter__Q39textinput8tistring9DecolatedFv
	.4byte getKanaBuffer__Q39textinput8tistring9DecolatedFv
	.4byte isKanaFix__Q39textinput8tistring9DecolatedCFv
	.4byte confirmKana__Q39textinput8tistring9DecolatedFv
	.4byte clearKana__Q39textinput8tistring9DecolatedFv
	.4byte EnableKSXFilter__Q39textinput8tistring6WithZiFb
	.4byte init__Q39textinput8tistring6WithZiFv
	.4byte setInputting__Q39textinput8tistring6WithZiFw
	.4byte getCurrentNumPredicted__Q39textinput8tistring6WithZiFv
	.4byte getPredicted__Q39textinput8tistring6WithZiFiPw
	.4byte getCurrentSelected__Q39textinput8tistring6WithZiFv
	.4byte getInputStringLength__Q39textinput8tistring6WithZiFv
	.4byte setSelectedCandidate__Q39textinput8tistring6WithZiFl
	.4byte isFix__Q39textinput8tistring6WithZiFv
	.4byte setPredictLaunguage__Q39textinput8tistring6WithZiFQ49textinput8tistring6WithZi15PredictLanguage
	.4byte changeLetterMode__Q39textinput8tistring6WithZiFQ49textinput8tistring6WithZi10LetterMode
	.4byte ChangeDictionaryLanguage__Q39textinput8tistring6WithZiFUc
	.4byte setCellPhoneHoldingkey__Q39textinput8tistring6WithZiFPv
	.4byte setElementBuffer__Q39textinput8tistring6WithZiFv
	.4byte getPredictLanguage__Q39textinput8tistring6WithZiFv
.endobj __vt__Q39textinput8tistring6WithZi
