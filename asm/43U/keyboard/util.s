.include "macros.inc"
.file "util.cpp"

# 0x81439608..0x8143A3CC | size: 0xDC4
.text
.balign 4

# .text:0x0 | 0x81439608 | size: 0x78
# textinput::util::toWLower(wchar_t)
.fn toWLower__Q29textinput4utilFw, global
/* 81439608 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8143960C | 7C 08 02 A6 */	mflr r0
/* 81439610 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81439614 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81439618 | 3F E0 81 69 */	lis r31, lbl_81697408@ha
/* 8143961C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81439620 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81439624 | 7C 7D 1B 78 */	mr r29, r3
/* 81439628 | 38 7F 74 08 */	addi r3, r31, lbl_81697408@l
/* 8143962C | 83 C3 00 04 */	lwz r30, 0x4(r3)
/* 81439630 | 7F A4 EB 78 */	mr r4, r29
/* 81439634 | 7F C3 F3 78 */	mr r3, r30
/* 81439638 | 48 1C F1 A9 */	bl fn_816087E0
/* 8143963C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81439640 | 41 82 00 20 */	beq .L_81439660
/* 81439644 | 7C 7E 18 50 */	subf r3, r30, r3
/* 81439648 | 80 9F 74 08 */	lwz r4, lbl_81697408@l(r31)
/* 8143964C | 54 60 0F FE */	srwi r0, r3, 31
/* 81439650 | 7C 00 1A 14 */	add r0, r0, r3
/* 81439654 | 54 00 00 3C */	clrrwi r0, r0, 1
/* 81439658 | 7C 64 02 2E */	lhzx r3, r4, r0
/* 8143965C | 48 00 00 08 */	b .L_81439664
.L_81439660:
/* 81439660 | 7F A3 EB 78 */	mr r3, r29
.L_81439664:
/* 81439664 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81439668 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8143966C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81439670 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81439674 | 7C 08 03 A6 */	mtlr r0
/* 81439678 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8143967C | 4E 80 00 20 */	blr
.endfn toWLower__Q29textinput4utilFw

# .text:0x78 | 0x81439680 | size: 0x78
# textinput::util::toWUpper(wchar_t)
.fn toWUpper__Q29textinput4utilFw, global
/* 81439680 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81439684 | 7C 08 02 A6 */	mflr r0
/* 81439688 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8143968C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81439690 | 3F E0 81 69 */	lis r31, lbl_81697408@ha
/* 81439694 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81439698 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8143969C | 7C 7D 1B 78 */	mr r29, r3
/* 814396A0 | 7F A4 EB 78 */	mr r4, r29
/* 814396A4 | 83 DF 74 08 */	lwz r30, lbl_81697408@l(r31)
/* 814396A8 | 7F C3 F3 78 */	mr r3, r30
/* 814396AC | 48 1C F1 35 */	bl fn_816087E0
/* 814396B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814396B4 | 41 82 00 24 */	beq .L_814396D8
/* 814396B8 | 7C 7E 18 50 */	subf r3, r30, r3
/* 814396BC | 38 9F 74 08 */	addi r4, r31, lbl_81697408@l
/* 814396C0 | 54 60 0F FE */	srwi r0, r3, 31
/* 814396C4 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 814396C8 | 7C 00 1A 14 */	add r0, r0, r3
/* 814396CC | 54 00 00 3C */	clrrwi r0, r0, 1
/* 814396D0 | 7C 64 02 2E */	lhzx r3, r4, r0
/* 814396D4 | 48 00 00 08 */	b .L_814396DC
.L_814396D8:
/* 814396D8 | 7F A3 EB 78 */	mr r3, r29
.L_814396DC:
/* 814396DC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814396E0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814396E4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814396E8 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814396EC | 7C 08 03 A6 */	mtlr r0
/* 814396F0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814396F4 | 4E 80 00 20 */	blr
.endfn toWUpper__Q29textinput4utilFw

# .text:0xF0 | 0x814396F8 | size: 0xE4
# textinput::util::reverseLetterCaseW(wchar_t)
.fn reverseLetterCaseW__Q29textinput4utilFw, global
/* 814396F8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814396FC | 7C 08 02 A6 */	mflr r0
/* 81439700 | 28 03 00 61 */	cmplwi r3, 0x61
/* 81439704 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81439708 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8143970C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81439710 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81439714 | 7C 7D 1B 78 */	mr r29, r3
/* 81439718 | 41 80 00 50 */	blt .L_81439768
/* 8143971C | 28 03 00 7A */	cmplwi r3, 0x7a
/* 81439720 | 41 81 00 48 */	bgt .L_81439768
/* 81439724 | 3F E0 81 69 */	lis r31, lbl_81697408@ha
/* 81439728 | 7F A4 EB 78 */	mr r4, r29
/* 8143972C | 83 DF 74 08 */	lwz r30, lbl_81697408@l(r31)
/* 81439730 | 7F C3 F3 78 */	mr r3, r30
/* 81439734 | 48 1C F0 AD */	bl fn_816087E0
/* 81439738 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143973C | 41 82 00 24 */	beq .L_81439760
/* 81439740 | 7C 7E 18 50 */	subf r3, r30, r3
/* 81439744 | 38 9F 74 08 */	addi r4, r31, lbl_81697408@l
/* 81439748 | 54 60 0F FE */	srwi r0, r3, 31
/* 8143974C | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 81439750 | 7C 00 1A 14 */	add r0, r0, r3
/* 81439754 | 54 00 00 3C */	clrrwi r0, r0, 1
/* 81439758 | 7C 64 02 2E */	lhzx r3, r4, r0
/* 8143975C | 48 00 00 64 */	b .L_814397C0
.L_81439760:
/* 81439760 | 7F A3 EB 78 */	mr r3, r29
/* 81439764 | 48 00 00 5C */	b .L_814397C0
.L_81439768:
/* 81439768 | 28 03 00 41 */	cmplwi r3, 0x41
/* 8143976C | 41 80 00 50 */	blt .L_814397BC
/* 81439770 | 28 03 00 5A */	cmplwi r3, 0x5a
/* 81439774 | 41 81 00 48 */	bgt .L_814397BC
/* 81439778 | 3F E0 81 69 */	lis r31, lbl_81697408@ha
/* 8143977C | 7F A4 EB 78 */	mr r4, r29
/* 81439780 | 38 7F 74 08 */	addi r3, r31, lbl_81697408@l
/* 81439784 | 83 C3 00 04 */	lwz r30, 0x4(r3)
/* 81439788 | 7F C3 F3 78 */	mr r3, r30
/* 8143978C | 48 1C F0 55 */	bl fn_816087E0
/* 81439790 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81439794 | 41 82 00 20 */	beq .L_814397B4
/* 81439798 | 7C 7E 18 50 */	subf r3, r30, r3
/* 8143979C | 80 9F 74 08 */	lwz r4, lbl_81697408@l(r31)
/* 814397A0 | 54 60 0F FE */	srwi r0, r3, 31
/* 814397A4 | 7C 00 1A 14 */	add r0, r0, r3
/* 814397A8 | 54 00 00 3C */	clrrwi r0, r0, 1
/* 814397AC | 7C 64 02 2E */	lhzx r3, r4, r0
/* 814397B0 | 48 00 00 10 */	b .L_814397C0
.L_814397B4:
/* 814397B4 | 7F A3 EB 78 */	mr r3, r29
/* 814397B8 | 48 00 00 08 */	b .L_814397C0
.L_814397BC:
/* 814397BC | 7F A3 EB 78 */	mr r3, r29
.L_814397C0:
/* 814397C0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814397C4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814397C8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814397CC | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814397D0 | 7C 08 03 A6 */	mtlr r0
/* 814397D4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814397D8 | 4E 80 00 20 */	blr
.endfn reverseLetterCaseW__Q29textinput4utilFw

# .text:0x1D4 | 0x814397DC | size: 0xD4
# textinput::util::HankakuToZenkaku(wchar_t)
.fn HankakuToZenkaku__Q29textinput4utilFw, global
/* 814397DC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814397E0 | 7C 08 02 A6 */	mflr r0
/* 814397E4 | 28 03 00 61 */	cmplwi r3, 0x61
/* 814397E8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814397EC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814397F0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814397F4 | 7C 7E 1B 78 */	mr r30, r3
/* 814397F8 | 41 80 00 1C */	blt .L_81439814
/* 814397FC | 28 03 00 7A */	cmplwi r3, 0x7a
/* 81439800 | 41 81 00 14 */	bgt .L_81439814
/* 81439804 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 81439808 | 38 03 FE E0 */	subi r0, r3, 0x120
/* 8143980C | 54 03 04 3E */	clrlwi r3, r0, 16
/* 81439810 | 48 00 00 88 */	b .L_81439898
.L_81439814:
/* 81439814 | 28 03 00 41 */	cmplwi r3, 0x41
/* 81439818 | 41 80 00 1C */	blt .L_81439834
/* 8143981C | 28 03 00 5A */	cmplwi r3, 0x5a
/* 81439820 | 41 81 00 14 */	bgt .L_81439834
/* 81439824 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 81439828 | 38 03 FE E0 */	subi r0, r3, 0x120
/* 8143982C | 54 03 04 3E */	clrlwi r3, r0, 16
/* 81439830 | 48 00 00 68 */	b .L_81439898
.L_81439834:
/* 81439834 | 28 03 00 30 */	cmplwi r3, 0x30
/* 81439838 | 41 80 00 1C */	blt .L_81439854
/* 8143983C | 28 03 00 39 */	cmplwi r3, 0x39
/* 81439840 | 41 81 00 14 */	bgt .L_81439854
/* 81439844 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 81439848 | 38 03 FE E0 */	subi r0, r3, 0x120
/* 8143984C | 54 03 04 3E */	clrlwi r3, r0, 16
/* 81439850 | 48 00 00 48 */	b .L_81439898
.L_81439854:
/* 81439854 | 83 E2 8A 2C */	lwz r31, lbl_81694E2C@sda21(r0)
/* 81439858 | 7F C4 F3 78 */	mr r4, r30
/* 8143985C | 80 02 8A 28 */	lwz r0, lbl_81694E28@sda21(r0)
/* 81439860 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81439864 | 7F E3 FB 78 */	mr r3, r31
/* 81439868 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8143986C | 48 1C EF 75 */	bl fn_816087E0
/* 81439870 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81439874 | 41 82 00 20 */	beq .L_81439894
/* 81439878 | 7C 7F 18 50 */	subf r3, r31, r3
/* 8143987C | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 81439880 | 54 60 0F FE */	srwi r0, r3, 31
/* 81439884 | 7C 00 1A 14 */	add r0, r0, r3
/* 81439888 | 54 00 00 3C */	clrrwi r0, r0, 1
/* 8143988C | 7C 64 02 2E */	lhzx r3, r4, r0
/* 81439890 | 48 00 00 08 */	b .L_81439898
.L_81439894:
/* 81439894 | 7F C3 F3 78 */	mr r3, r30
.L_81439898:
/* 81439898 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8143989C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814398A0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814398A4 | 7C 08 03 A6 */	mtlr r0
/* 814398A8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814398AC | 4E 80 00 20 */	blr
.endfn HankakuToZenkaku__Q29textinput4utilFw

# .text:0x2A8 | 0x814398B0 | size: 0x464
# textinput::util::KBD_ConvertDakuten(wchar_t)
.fn KBD_ConvertDakuten__Q29textinput4utilFw, global
/* 814398B0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814398B4 | 7C 08 02 A6 */	mflr r0
/* 814398B8 | 28 03 30 00 */	cmplwi r3, 0x3000
/* 814398BC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814398C0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814398C4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814398C8 | 7C 7E 1B 78 */	mr r30, r3
/* 814398CC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814398D0 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814398D4 | 40 82 00 08 */	bne .L_814398DC
/* 814398D8 | 48 00 04 1C */	b .L_81439CF4
.L_814398DC:
/* 814398DC | 38 6D AC F0 */	li r3, lbl_81698D30@sda21
/* 814398E0 | 7F C4 F3 78 */	mr r4, r30
/* 814398E4 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 814398E8 | 48 1C EE F9 */	bl fn_816087E0
/* 814398EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814398F0 | 41 82 01 C0 */	beq .L_81439AB0
/* 814398F4 | 28 1E 30 00 */	cmplwi r30, 0x3000
/* 814398F8 | 40 82 00 0C */	bne .L_81439904
/* 814398FC | 7F DF F3 78 */	mr r31, r30
/* 81439900 | 48 00 01 24 */	b .L_81439A24
.L_81439904:
/* 81439904 | 38 6D AC E8 */	li r3, lbl_81698D28@sda21
/* 81439908 | 7F C4 F3 78 */	mr r4, r30
/* 8143990C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81439910 | 48 1C EE D1 */	bl fn_816087E0
/* 81439914 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81439918 | 41 82 00 9C */	beq .L_814399B4
/* 8143991C | 7F C3 F3 78 */	mr r3, r30
/* 81439920 | 4B FF FF 91 */	bl KBD_ConvertDakuten__Q29textinput4utilFw
/* 81439924 | 7C 7D 1B 78 */	mr r29, r3
/* 81439928 | 3B E0 00 00 */	li r31, 0x0
/* 8143992C | 3B 8D AC F0 */	li r28, lbl_81698D30@sda21
.L_81439930:
/* 81439930 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81439934 | 57 A4 04 3E */	clrlwi r4, r29, 16
/* 81439938 | 48 1C EE A9 */	bl fn_816087E0
/* 8143993C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81439940 | 41 82 00 44 */	beq .L_81439984
/* 81439944 | 38 8D AC F0 */	li r4, lbl_81698D30@sda21
/* 81439948 | 57 E0 10 3A */	slwi r0, r31, 2
/* 8143994C | 7C 04 00 2E */	lwzx r0, r4, r0
/* 81439950 | 20 BF 00 01 */	subfic r5, r31, 0x1
/* 81439954 | 54 A5 10 3A */	slwi r5, r5, 2
/* 81439958 | 7C 60 18 50 */	subf r3, r0, r3
/* 8143995C | 7C 84 28 2E */	lwzx r4, r4, r5
/* 81439960 | 54 60 0F FE */	srwi r0, r3, 31
/* 81439964 | 7C 00 1A 14 */	add r0, r0, r3
/* 81439968 | 54 00 00 3C */	clrrwi r0, r0, 1
/* 8143996C | 7F E4 02 2E */	lhzx r31, r4, r0
/* 81439970 | 28 1F 30 00 */	cmplwi r31, 0x3000
/* 81439974 | 41 82 00 08 */	beq .L_8143997C
/* 81439978 | 48 00 00 20 */	b .L_81439998
.L_8143997C:
/* 8143997C | 7F BF EB 78 */	mr r31, r29
/* 81439980 | 48 00 00 18 */	b .L_81439998
.L_81439984:
/* 81439984 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81439988 | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 8143998C | 2C 1F 00 02 */	cmpwi r31, 0x2
/* 81439990 | 41 80 FF A0 */	blt .L_81439930
/* 81439994 | 7F BF EB 78 */	mr r31, r29
.L_81439998:
/* 81439998 | 57 E3 04 3E */	clrlwi r3, r31, 16
/* 8143999C | 57 A0 04 3E */	clrlwi r0, r29, 16
/* 814399A0 | 7C 03 00 40 */	cmplw r3, r0
/* 814399A4 | 41 82 00 08 */	beq .L_814399AC
/* 814399A8 | 48 00 00 7C */	b .L_81439A24
.L_814399AC:
/* 814399AC | 7F DF F3 78 */	mr r31, r30
/* 814399B0 | 48 00 00 74 */	b .L_81439A24
.L_814399B4:
/* 814399B4 | 3B E0 00 00 */	li r31, 0x0
/* 814399B8 | 3B 8D AC F0 */	li r28, lbl_81698D30@sda21
.L_814399BC:
/* 814399BC | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 814399C0 | 7F C4 F3 78 */	mr r4, r30
/* 814399C4 | 48 1C EE 1D */	bl fn_816087E0
/* 814399C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814399CC | 41 82 00 44 */	beq .L_81439A10
/* 814399D0 | 38 8D AC F0 */	li r4, lbl_81698D30@sda21
/* 814399D4 | 57 E0 10 3A */	slwi r0, r31, 2
/* 814399D8 | 7C 04 00 2E */	lwzx r0, r4, r0
/* 814399DC | 20 BF 00 01 */	subfic r5, r31, 0x1
/* 814399E0 | 54 A5 10 3A */	slwi r5, r5, 2
/* 814399E4 | 7C 60 18 50 */	subf r3, r0, r3
/* 814399E8 | 7C 84 28 2E */	lwzx r4, r4, r5
/* 814399EC | 54 60 0F FE */	srwi r0, r3, 31
/* 814399F0 | 7C 00 1A 14 */	add r0, r0, r3
/* 814399F4 | 54 00 00 3C */	clrrwi r0, r0, 1
/* 814399F8 | 7F E4 02 2E */	lhzx r31, r4, r0
/* 814399FC | 28 1F 30 00 */	cmplwi r31, 0x3000
/* 81439A00 | 41 82 00 08 */	beq .L_81439A08
/* 81439A04 | 48 00 00 20 */	b .L_81439A24
.L_81439A08:
/* 81439A08 | 7F DF F3 78 */	mr r31, r30
/* 81439A0C | 48 00 00 18 */	b .L_81439A24
.L_81439A10:
/* 81439A10 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81439A14 | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 81439A18 | 2C 1F 00 02 */	cmpwi r31, 0x2
/* 81439A1C | 41 80 FF A0 */	blt .L_814399BC
/* 81439A20 | 7F DF F3 78 */	mr r31, r30
.L_81439A24:
/* 81439A24 | 3B A0 00 00 */	li r29, 0x0
/* 81439A28 | 3B 8D AC E8 */	li r28, lbl_81698D28@sda21
.L_81439A2C:
/* 81439A2C | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81439A30 | 57 E4 04 3E */	clrlwi r4, r31, 16
/* 81439A34 | 48 1C ED AD */	bl fn_816087E0
/* 81439A38 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81439A3C | 41 82 00 44 */	beq .L_81439A80
/* 81439A40 | 38 8D AC E8 */	li r4, lbl_81698D28@sda21
/* 81439A44 | 57 A0 10 3A */	slwi r0, r29, 2
/* 81439A48 | 7C 04 00 2E */	lwzx r0, r4, r0
/* 81439A4C | 20 BD 00 01 */	subfic r5, r29, 0x1
/* 81439A50 | 54 A5 10 3A */	slwi r5, r5, 2
/* 81439A54 | 7C 60 18 50 */	subf r3, r0, r3
/* 81439A58 | 7C 84 28 2E */	lwzx r4, r4, r5
/* 81439A5C | 54 60 0F FE */	srwi r0, r3, 31
/* 81439A60 | 7C 00 1A 14 */	add r0, r0, r3
/* 81439A64 | 54 00 00 3C */	clrrwi r0, r0, 1
/* 81439A68 | 7C 84 02 2E */	lhzx r4, r4, r0
/* 81439A6C | 28 04 30 00 */	cmplwi r4, 0x3000
/* 81439A70 | 41 82 00 08 */	beq .L_81439A78
/* 81439A74 | 48 00 00 20 */	b .L_81439A94
.L_81439A78:
/* 81439A78 | 7F E4 FB 78 */	mr r4, r31
/* 81439A7C | 48 00 00 18 */	b .L_81439A94
.L_81439A80:
/* 81439A80 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 81439A84 | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 81439A88 | 2C 1D 00 02 */	cmpwi r29, 0x2
/* 81439A8C | 41 80 FF A0 */	blt .L_81439A2C
/* 81439A90 | 7F E4 FB 78 */	mr r4, r31
.L_81439A94:
/* 81439A94 | 54 83 04 3E */	clrlwi r3, r4, 16
/* 81439A98 | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 81439A9C | 7C 03 00 40 */	cmplw r3, r0
/* 81439AA0 | 41 82 00 08 */	beq .L_81439AA8
/* 81439AA4 | 7C 9E 23 78 */	mr r30, r4
.L_81439AA8:
/* 81439AA8 | 7F C3 F3 78 */	mr r3, r30
/* 81439AAC | 48 00 02 48 */	b .L_81439CF4
.L_81439AB0:
/* 81439AB0 | 38 6D AC F8 */	li r3, lbl_81698D38@sda21
/* 81439AB4 | 7F C4 F3 78 */	mr r4, r30
/* 81439AB8 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81439ABC | 48 1C ED 25 */	bl fn_816087E0
/* 81439AC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81439AC4 | 41 82 01 C0 */	beq .L_81439C84
/* 81439AC8 | 28 1E 30 00 */	cmplwi r30, 0x3000
/* 81439ACC | 40 82 00 0C */	bne .L_81439AD8
/* 81439AD0 | 7F DF F3 78 */	mr r31, r30
/* 81439AD4 | 48 00 01 24 */	b .L_81439BF8
.L_81439AD8:
/* 81439AD8 | 38 6D AC E8 */	li r3, lbl_81698D28@sda21
/* 81439ADC | 7F C4 F3 78 */	mr r4, r30
/* 81439AE0 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81439AE4 | 48 1C EC FD */	bl fn_816087E0
/* 81439AE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81439AEC | 41 82 00 9C */	beq .L_81439B88
/* 81439AF0 | 7F C3 F3 78 */	mr r3, r30
/* 81439AF4 | 4B FF FD BD */	bl KBD_ConvertDakuten__Q29textinput4utilFw
/* 81439AF8 | 7C 7C 1B 78 */	mr r28, r3
/* 81439AFC | 3B A0 00 00 */	li r29, 0x0
/* 81439B00 | 3B ED AC F8 */	li r31, lbl_81698D38@sda21
.L_81439B04:
/* 81439B04 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 81439B08 | 57 84 04 3E */	clrlwi r4, r28, 16
/* 81439B0C | 48 1C EC D5 */	bl fn_816087E0
/* 81439B10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81439B14 | 41 82 00 44 */	beq .L_81439B58
/* 81439B18 | 38 8D AC F8 */	li r4, lbl_81698D38@sda21
/* 81439B1C | 57 A0 10 3A */	slwi r0, r29, 2
/* 81439B20 | 7C 04 00 2E */	lwzx r0, r4, r0
/* 81439B24 | 20 BD 00 01 */	subfic r5, r29, 0x1
/* 81439B28 | 54 A5 10 3A */	slwi r5, r5, 2
/* 81439B2C | 7C 60 18 50 */	subf r3, r0, r3
/* 81439B30 | 7C 84 28 2E */	lwzx r4, r4, r5
/* 81439B34 | 54 60 0F FE */	srwi r0, r3, 31
/* 81439B38 | 7C 00 1A 14 */	add r0, r0, r3
/* 81439B3C | 54 00 00 3C */	clrrwi r0, r0, 1
/* 81439B40 | 7F E4 02 2E */	lhzx r31, r4, r0
/* 81439B44 | 28 1F 30 00 */	cmplwi r31, 0x3000
/* 81439B48 | 41 82 00 08 */	beq .L_81439B50
/* 81439B4C | 48 00 00 20 */	b .L_81439B6C
.L_81439B50:
/* 81439B50 | 7F 9F E3 78 */	mr r31, r28
/* 81439B54 | 48 00 00 18 */	b .L_81439B6C
.L_81439B58:
/* 81439B58 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 81439B5C | 3B FF 00 04 */	addi r31, r31, 0x4
/* 81439B60 | 2C 1D 00 02 */	cmpwi r29, 0x2
/* 81439B64 | 41 80 FF A0 */	blt .L_81439B04
/* 81439B68 | 7F 9F E3 78 */	mr r31, r28
.L_81439B6C:
/* 81439B6C | 57 E3 04 3E */	clrlwi r3, r31, 16
/* 81439B70 | 57 80 04 3E */	clrlwi r0, r28, 16
/* 81439B74 | 7C 03 00 40 */	cmplw r3, r0
/* 81439B78 | 41 82 00 08 */	beq .L_81439B80
/* 81439B7C | 48 00 00 7C */	b .L_81439BF8
.L_81439B80:
/* 81439B80 | 7F DF F3 78 */	mr r31, r30
/* 81439B84 | 48 00 00 74 */	b .L_81439BF8
.L_81439B88:
/* 81439B88 | 3B A0 00 00 */	li r29, 0x0
/* 81439B8C | 3B 8D AC F8 */	li r28, lbl_81698D38@sda21
.L_81439B90:
/* 81439B90 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 81439B94 | 7F C4 F3 78 */	mr r4, r30
/* 81439B98 | 48 1C EC 49 */	bl fn_816087E0
/* 81439B9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81439BA0 | 41 82 00 44 */	beq .L_81439BE4
/* 81439BA4 | 38 8D AC F8 */	li r4, lbl_81698D38@sda21
/* 81439BA8 | 57 A0 10 3A */	slwi r0, r29, 2
/* 81439BAC | 7C 04 00 2E */	lwzx r0, r4, r0
/* 81439BB0 | 20 BD 00 01 */	subfic r5, r29, 0x1
/* 81439BB4 | 54 A5 10 3A */	slwi r5, r5, 2
/* 81439BB8 | 7C 60 18 50 */	subf r3, r0, r3
/* 81439BBC | 7C 84 28 2E */	lwzx r4, r4, r5
/* 81439BC0 | 54 60 0F FE */	srwi r0, r3, 31
/* 81439BC4 | 7C 00 1A 14 */	add r0, r0, r3
/* 81439BC8 | 54 00 00 3C */	clrrwi r0, r0, 1
/* 81439BCC | 7F E4 02 2E */	lhzx r31, r4, r0
/* 81439BD0 | 28 1F 30 00 */	cmplwi r31, 0x3000
/* 81439BD4 | 41 82 00 08 */	beq .L_81439BDC
/* 81439BD8 | 48 00 00 20 */	b .L_81439BF8
.L_81439BDC:
/* 81439BDC | 7F DF F3 78 */	mr r31, r30
/* 81439BE0 | 48 00 00 18 */	b .L_81439BF8
.L_81439BE4:
/* 81439BE4 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 81439BE8 | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 81439BEC | 2C 1D 00 02 */	cmpwi r29, 0x2
/* 81439BF0 | 41 80 FF A0 */	blt .L_81439B90
/* 81439BF4 | 7F DF F3 78 */	mr r31, r30
.L_81439BF8:
/* 81439BF8 | 3B 80 00 00 */	li r28, 0x0
/* 81439BFC | 3B AD AC E8 */	li r29, lbl_81698D28@sda21
.L_81439C00:
/* 81439C00 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 81439C04 | 57 E4 04 3E */	clrlwi r4, r31, 16
/* 81439C08 | 48 1C EB D9 */	bl fn_816087E0
/* 81439C0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81439C10 | 41 82 00 44 */	beq .L_81439C54
/* 81439C14 | 38 8D AC E8 */	li r4, lbl_81698D28@sda21
/* 81439C18 | 57 80 10 3A */	slwi r0, r28, 2
/* 81439C1C | 7C 04 00 2E */	lwzx r0, r4, r0
/* 81439C20 | 20 BC 00 01 */	subfic r5, r28, 0x1
/* 81439C24 | 54 A5 10 3A */	slwi r5, r5, 2
/* 81439C28 | 7C 60 18 50 */	subf r3, r0, r3
/* 81439C2C | 7C 84 28 2E */	lwzx r4, r4, r5
/* 81439C30 | 54 60 0F FE */	srwi r0, r3, 31
/* 81439C34 | 7C 00 1A 14 */	add r0, r0, r3
/* 81439C38 | 54 00 00 3C */	clrrwi r0, r0, 1
/* 81439C3C | 7C 84 02 2E */	lhzx r4, r4, r0
/* 81439C40 | 28 04 30 00 */	cmplwi r4, 0x3000
/* 81439C44 | 41 82 00 08 */	beq .L_81439C4C
/* 81439C48 | 48 00 00 20 */	b .L_81439C68
.L_81439C4C:
/* 81439C4C | 7F E4 FB 78 */	mr r4, r31
/* 81439C50 | 48 00 00 18 */	b .L_81439C68
.L_81439C54:
/* 81439C54 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 81439C58 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 81439C5C | 2C 1C 00 02 */	cmpwi r28, 0x2
/* 81439C60 | 41 80 FF A0 */	blt .L_81439C00
/* 81439C64 | 7F E4 FB 78 */	mr r4, r31
.L_81439C68:
/* 81439C68 | 54 83 04 3E */	clrlwi r3, r4, 16
/* 81439C6C | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 81439C70 | 7C 03 00 40 */	cmplw r3, r0
/* 81439C74 | 41 82 00 08 */	beq .L_81439C7C
/* 81439C78 | 7C 9E 23 78 */	mr r30, r4
.L_81439C7C:
/* 81439C7C | 7F C3 F3 78 */	mr r3, r30
/* 81439C80 | 48 00 00 74 */	b .L_81439CF4
.L_81439C84:
/* 81439C84 | 3B 80 00 00 */	li r28, 0x0
/* 81439C88 | 3B AD AC E8 */	li r29, lbl_81698D28@sda21
.L_81439C8C:
/* 81439C8C | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 81439C90 | 7F C4 F3 78 */	mr r4, r30
/* 81439C94 | 48 1C EB 4D */	bl fn_816087E0
/* 81439C98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81439C9C | 41 82 00 44 */	beq .L_81439CE0
/* 81439CA0 | 38 8D AC E8 */	li r4, lbl_81698D28@sda21
/* 81439CA4 | 57 80 10 3A */	slwi r0, r28, 2
/* 81439CA8 | 7C 04 00 2E */	lwzx r0, r4, r0
/* 81439CAC | 20 BC 00 01 */	subfic r5, r28, 0x1
/* 81439CB0 | 54 A5 10 3A */	slwi r5, r5, 2
/* 81439CB4 | 7C 60 18 50 */	subf r3, r0, r3
/* 81439CB8 | 7C 84 28 2E */	lwzx r4, r4, r5
/* 81439CBC | 54 60 0F FE */	srwi r0, r3, 31
/* 81439CC0 | 7C 00 1A 14 */	add r0, r0, r3
/* 81439CC4 | 54 00 00 3C */	clrrwi r0, r0, 1
/* 81439CC8 | 7C 64 02 2E */	lhzx r3, r4, r0
/* 81439CCC | 28 03 30 00 */	cmplwi r3, 0x3000
/* 81439CD0 | 41 82 00 08 */	beq .L_81439CD8
/* 81439CD4 | 48 00 00 20 */	b .L_81439CF4
.L_81439CD8:
/* 81439CD8 | 7F C3 F3 78 */	mr r3, r30
/* 81439CDC | 48 00 00 18 */	b .L_81439CF4
.L_81439CE0:
/* 81439CE0 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 81439CE4 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 81439CE8 | 2C 1C 00 02 */	cmpwi r28, 0x2
/* 81439CEC | 41 80 FF A0 */	blt .L_81439C8C
/* 81439CF0 | 7F C3 F3 78 */	mr r3, r30
.L_81439CF4:
/* 81439CF4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81439CF8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81439CFC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81439D00 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81439D04 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 81439D08 | 7C 08 03 A6 */	mtlr r0
/* 81439D0C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81439D10 | 4E 80 00 20 */	blr
.endfn KBD_ConvertDakuten__Q29textinput4utilFw

# .text:0x70C | 0x81439D14 | size: 0x16C
# textinput::util::KBD_ConvertHandaku(wchar_t)
.fn KBD_ConvertHandaku__Q29textinput4utilFw, global
/* 81439D14 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81439D18 | 7C 08 02 A6 */	mflr r0
/* 81439D1C | 28 03 30 00 */	cmplwi r3, 0x3000
/* 81439D20 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81439D24 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81439D28 | 7C 7F 1B 78 */	mr r31, r3
/* 81439D2C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81439D30 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81439D34 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 81439D38 | 40 82 00 08 */	bne .L_81439D40
/* 81439D3C | 48 00 01 24 */	b .L_81439E60
.L_81439D40:
/* 81439D40 | 38 6D AC E8 */	li r3, lbl_81698D28@sda21
/* 81439D44 | 7F E4 FB 78 */	mr r4, r31
/* 81439D48 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81439D4C | 48 1C EA 95 */	bl fn_816087E0
/* 81439D50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81439D54 | 41 82 00 9C */	beq .L_81439DF0
/* 81439D58 | 7F E3 FB 78 */	mr r3, r31
/* 81439D5C | 4B FF FB 55 */	bl KBD_ConvertDakuten__Q29textinput4utilFw
/* 81439D60 | 7C 7C 1B 78 */	mr r28, r3
/* 81439D64 | 3B C0 00 00 */	li r30, 0x0
/* 81439D68 | 3B AD AC F0 */	li r29, lbl_81698D30@sda21
.L_81439D6C:
/* 81439D6C | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 81439D70 | 57 84 04 3E */	clrlwi r4, r28, 16
/* 81439D74 | 48 1C EA 6D */	bl fn_816087E0
/* 81439D78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81439D7C | 41 82 00 44 */	beq .L_81439DC0
/* 81439D80 | 38 8D AC F0 */	li r4, lbl_81698D30@sda21
/* 81439D84 | 57 C0 10 3A */	slwi r0, r30, 2
/* 81439D88 | 7C 04 00 2E */	lwzx r0, r4, r0
/* 81439D8C | 20 BE 00 01 */	subfic r5, r30, 0x1
/* 81439D90 | 54 A5 10 3A */	slwi r5, r5, 2
/* 81439D94 | 7C 60 18 50 */	subf r3, r0, r3
/* 81439D98 | 7C 84 28 2E */	lwzx r4, r4, r5
/* 81439D9C | 54 60 0F FE */	srwi r0, r3, 31
/* 81439DA0 | 7C 00 1A 14 */	add r0, r0, r3
/* 81439DA4 | 54 00 00 3C */	clrrwi r0, r0, 1
/* 81439DA8 | 7C 84 02 2E */	lhzx r4, r4, r0
/* 81439DAC | 28 04 30 00 */	cmplwi r4, 0x3000
/* 81439DB0 | 41 82 00 08 */	beq .L_81439DB8
/* 81439DB4 | 48 00 00 20 */	b .L_81439DD4
.L_81439DB8:
/* 81439DB8 | 7F 84 E3 78 */	mr r4, r28
/* 81439DBC | 48 00 00 18 */	b .L_81439DD4
.L_81439DC0:
/* 81439DC0 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81439DC4 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 81439DC8 | 2C 1E 00 02 */	cmpwi r30, 0x2
/* 81439DCC | 41 80 FF A0 */	blt .L_81439D6C
/* 81439DD0 | 7F 84 E3 78 */	mr r4, r28
.L_81439DD4:
/* 81439DD4 | 54 83 04 3E */	clrlwi r3, r4, 16
/* 81439DD8 | 57 80 04 3E */	clrlwi r0, r28, 16
/* 81439DDC | 7C 03 00 40 */	cmplw r3, r0
/* 81439DE0 | 41 82 00 08 */	beq .L_81439DE8
/* 81439DE4 | 7C 9F 23 78 */	mr r31, r4
.L_81439DE8:
/* 81439DE8 | 7F E3 FB 78 */	mr r3, r31
/* 81439DEC | 48 00 00 74 */	b .L_81439E60
.L_81439DF0:
/* 81439DF0 | 3B C0 00 00 */	li r30, 0x0
/* 81439DF4 | 3B AD AC F0 */	li r29, lbl_81698D30@sda21
.L_81439DF8:
/* 81439DF8 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 81439DFC | 7F E4 FB 78 */	mr r4, r31
/* 81439E00 | 48 1C E9 E1 */	bl fn_816087E0
/* 81439E04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81439E08 | 41 82 00 44 */	beq .L_81439E4C
/* 81439E0C | 38 8D AC F0 */	li r4, lbl_81698D30@sda21
/* 81439E10 | 57 C0 10 3A */	slwi r0, r30, 2
/* 81439E14 | 7C 04 00 2E */	lwzx r0, r4, r0
/* 81439E18 | 20 BE 00 01 */	subfic r5, r30, 0x1
/* 81439E1C | 54 A5 10 3A */	slwi r5, r5, 2
/* 81439E20 | 7C 60 18 50 */	subf r3, r0, r3
/* 81439E24 | 7C 84 28 2E */	lwzx r4, r4, r5
/* 81439E28 | 54 60 0F FE */	srwi r0, r3, 31
/* 81439E2C | 7C 00 1A 14 */	add r0, r0, r3
/* 81439E30 | 54 00 00 3C */	clrrwi r0, r0, 1
/* 81439E34 | 7C 64 02 2E */	lhzx r3, r4, r0
/* 81439E38 | 28 03 30 00 */	cmplwi r3, 0x3000
/* 81439E3C | 41 82 00 08 */	beq .L_81439E44
/* 81439E40 | 48 00 00 20 */	b .L_81439E60
.L_81439E44:
/* 81439E44 | 7F E3 FB 78 */	mr r3, r31
/* 81439E48 | 48 00 00 18 */	b .L_81439E60
.L_81439E4C:
/* 81439E4C | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81439E50 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 81439E54 | 2C 1E 00 02 */	cmpwi r30, 0x2
/* 81439E58 | 41 80 FF A0 */	blt .L_81439DF8
/* 81439E5C | 7F E3 FB 78 */	mr r3, r31
.L_81439E60:
/* 81439E60 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81439E64 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81439E68 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81439E6C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81439E70 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 81439E74 | 7C 08 03 A6 */	mtlr r0
/* 81439E78 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81439E7C | 4E 80 00 20 */	blr
.endfn KBD_ConvertHandaku__Q29textinput4utilFw

# .text:0x878 | 0x81439E80 | size: 0x16C
# textinput::util::KBD_ConvertSmall(wchar_t)
.fn KBD_ConvertSmall__Q29textinput4utilFw, global
/* 81439E80 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81439E84 | 7C 08 02 A6 */	mflr r0
/* 81439E88 | 28 03 30 00 */	cmplwi r3, 0x3000
/* 81439E8C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81439E90 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81439E94 | 7C 7F 1B 78 */	mr r31, r3
/* 81439E98 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81439E9C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81439EA0 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 81439EA4 | 40 82 00 08 */	bne .L_81439EAC
/* 81439EA8 | 48 00 01 24 */	b .L_81439FCC
.L_81439EAC:
/* 81439EAC | 38 6D AC E8 */	li r3, lbl_81698D28@sda21
/* 81439EB0 | 7F E4 FB 78 */	mr r4, r31
/* 81439EB4 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81439EB8 | 48 1C E9 29 */	bl fn_816087E0
/* 81439EBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81439EC0 | 41 82 00 9C */	beq .L_81439F5C
/* 81439EC4 | 7F E3 FB 78 */	mr r3, r31
/* 81439EC8 | 4B FF F9 E9 */	bl KBD_ConvertDakuten__Q29textinput4utilFw
/* 81439ECC | 7C 7C 1B 78 */	mr r28, r3
/* 81439ED0 | 3B C0 00 00 */	li r30, 0x0
/* 81439ED4 | 3B AD AC F8 */	li r29, lbl_81698D38@sda21
.L_81439ED8:
/* 81439ED8 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 81439EDC | 57 84 04 3E */	clrlwi r4, r28, 16
/* 81439EE0 | 48 1C E9 01 */	bl fn_816087E0
/* 81439EE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81439EE8 | 41 82 00 44 */	beq .L_81439F2C
/* 81439EEC | 38 8D AC F8 */	li r4, lbl_81698D38@sda21
/* 81439EF0 | 57 C0 10 3A */	slwi r0, r30, 2
/* 81439EF4 | 7C 04 00 2E */	lwzx r0, r4, r0
/* 81439EF8 | 20 BE 00 01 */	subfic r5, r30, 0x1
/* 81439EFC | 54 A5 10 3A */	slwi r5, r5, 2
/* 81439F00 | 7C 60 18 50 */	subf r3, r0, r3
/* 81439F04 | 7C 84 28 2E */	lwzx r4, r4, r5
/* 81439F08 | 54 60 0F FE */	srwi r0, r3, 31
/* 81439F0C | 7C 00 1A 14 */	add r0, r0, r3
/* 81439F10 | 54 00 00 3C */	clrrwi r0, r0, 1
/* 81439F14 | 7C 84 02 2E */	lhzx r4, r4, r0
/* 81439F18 | 28 04 30 00 */	cmplwi r4, 0x3000
/* 81439F1C | 41 82 00 08 */	beq .L_81439F24
/* 81439F20 | 48 00 00 20 */	b .L_81439F40
.L_81439F24:
/* 81439F24 | 7F 84 E3 78 */	mr r4, r28
/* 81439F28 | 48 00 00 18 */	b .L_81439F40
.L_81439F2C:
/* 81439F2C | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81439F30 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 81439F34 | 2C 1E 00 02 */	cmpwi r30, 0x2
/* 81439F38 | 41 80 FF A0 */	blt .L_81439ED8
/* 81439F3C | 7F 84 E3 78 */	mr r4, r28
.L_81439F40:
/* 81439F40 | 54 83 04 3E */	clrlwi r3, r4, 16
/* 81439F44 | 57 80 04 3E */	clrlwi r0, r28, 16
/* 81439F48 | 7C 03 00 40 */	cmplw r3, r0
/* 81439F4C | 41 82 00 08 */	beq .L_81439F54
/* 81439F50 | 7C 9F 23 78 */	mr r31, r4
.L_81439F54:
/* 81439F54 | 7F E3 FB 78 */	mr r3, r31
/* 81439F58 | 48 00 00 74 */	b .L_81439FCC
.L_81439F5C:
/* 81439F5C | 3B C0 00 00 */	li r30, 0x0
/* 81439F60 | 3B AD AC F8 */	li r29, lbl_81698D38@sda21
.L_81439F64:
/* 81439F64 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 81439F68 | 7F E4 FB 78 */	mr r4, r31
/* 81439F6C | 48 1C E8 75 */	bl fn_816087E0
/* 81439F70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81439F74 | 41 82 00 44 */	beq .L_81439FB8
/* 81439F78 | 38 8D AC F8 */	li r4, lbl_81698D38@sda21
/* 81439F7C | 57 C0 10 3A */	slwi r0, r30, 2
/* 81439F80 | 7C 04 00 2E */	lwzx r0, r4, r0
/* 81439F84 | 20 BE 00 01 */	subfic r5, r30, 0x1
/* 81439F88 | 54 A5 10 3A */	slwi r5, r5, 2
/* 81439F8C | 7C 60 18 50 */	subf r3, r0, r3
/* 81439F90 | 7C 84 28 2E */	lwzx r4, r4, r5
/* 81439F94 | 54 60 0F FE */	srwi r0, r3, 31
/* 81439F98 | 7C 00 1A 14 */	add r0, r0, r3
/* 81439F9C | 54 00 00 3C */	clrrwi r0, r0, 1
/* 81439FA0 | 7C 64 02 2E */	lhzx r3, r4, r0
/* 81439FA4 | 28 03 30 00 */	cmplwi r3, 0x3000
/* 81439FA8 | 41 82 00 08 */	beq .L_81439FB0
/* 81439FAC | 48 00 00 20 */	b .L_81439FCC
.L_81439FB0:
/* 81439FB0 | 7F E3 FB 78 */	mr r3, r31
/* 81439FB4 | 48 00 00 18 */	b .L_81439FCC
.L_81439FB8:
/* 81439FB8 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81439FBC | 3B BD 00 04 */	addi r29, r29, 0x4
/* 81439FC0 | 2C 1E 00 02 */	cmpwi r30, 0x2
/* 81439FC4 | 41 80 FF A0 */	blt .L_81439F64
/* 81439FC8 | 7F E3 FB 78 */	mr r3, r31
.L_81439FCC:
/* 81439FCC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81439FD0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81439FD4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81439FD8 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81439FDC | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 81439FE0 | 7C 08 03 A6 */	mtlr r0
/* 81439FE4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81439FE8 | 4E 80 00 20 */	blr
.endfn KBD_ConvertSmall__Q29textinput4utilFw

# .text:0x9E4 | 0x81439FEC | size: 0x160
# textinput::util::KBD_ConvertAll(wchar_t)
.fn KBD_ConvertAll__Q29textinput4utilFw, global
/* 81439FEC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81439FF0 | 7C 08 02 A6 */	mflr r0
/* 81439FF4 | 28 03 30 00 */	cmplwi r3, 0x3000
/* 81439FF8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81439FFC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8143A000 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8143A004 | 7C 7E 1B 78 */	mr r30, r3
/* 8143A008 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8143A00C | 93 81 00 10 */	stw r28, 0x10(r1)
/* 8143A010 | 40 82 00 08 */	bne .L_8143A018
/* 8143A014 | 48 00 01 18 */	b .L_8143A12C
.L_8143A018:
/* 8143A018 | 3F A0 81 66 */	lis r29, s_all_map__Q29textinput4util@ha
/* 8143A01C | 3B E0 00 00 */	li r31, 0x0
/* 8143A020 | 3B BD 05 88 */	addi r29, r29, s_all_map__Q29textinput4util@l
.L_8143A024:
/* 8143A024 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8143A028 | 7F C4 F3 78 */	mr r4, r30
/* 8143A02C | 48 1C E7 B5 */	bl fn_816087E0
/* 8143A030 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143A034 | 41 82 00 28 */	beq .L_8143A05C
/* 8143A038 | 3C 80 81 66 */	lis r4, s_all_map__Q29textinput4util@ha
/* 8143A03C | 57 E0 10 3A */	slwi r0, r31, 2
/* 8143A040 | 38 84 05 88 */	addi r4, r4, s_all_map__Q29textinput4util@l
/* 8143A044 | 7C 04 00 2E */	lwzx r0, r4, r0
/* 8143A048 | 7C 60 18 50 */	subf r3, r0, r3
/* 8143A04C | 54 60 0F FE */	srwi r0, r3, 31
/* 8143A050 | 7C 00 1A 14 */	add r0, r0, r3
/* 8143A054 | 7C 1C 0E 70 */	srawi r28, r0, 1
/* 8143A058 | 48 00 00 14 */	b .L_8143A06C
.L_8143A05C:
/* 8143A05C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8143A060 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 8143A064 | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 8143A068 | 41 80 FF BC */	blt .L_8143A024
.L_8143A06C:
/* 8143A06C | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 8143A070 | 40 80 00 B0 */	bge .L_8143A120
/* 8143A074 | 38 7F 00 01 */	addi r3, r31, 0x1
/* 8143A078 | 3C 80 81 66 */	lis r4, s_all_map__Q29textinput4util@ha
/* 8143A07C | 54 60 F0 02 */	slwi r0, r3, 30
/* 8143A080 | 57 85 08 3C */	slwi r5, r28, 1
/* 8143A084 | 54 63 0F FE */	srwi r3, r3, 31
/* 8143A088 | 38 84 05 88 */	addi r4, r4, s_all_map__Q29textinput4util@l
/* 8143A08C | 7C 03 00 50 */	subf r0, r3, r0
/* 8143A090 | 54 00 10 3E */	rotlwi r0, r0, 2
/* 8143A094 | 7C 00 1A 14 */	add r0, r0, r3
/* 8143A098 | 54 00 10 3A */	slwi r0, r0, 2
/* 8143A09C | 7C 64 00 2E */	lwzx r3, r4, r0
/* 8143A0A0 | 7C 05 1A 2E */	lhzx r0, r5, r3
/* 8143A0A4 | 28 00 30 00 */	cmplwi r0, 0x3000
/* 8143A0A8 | 41 82 00 0C */	beq .L_8143A0B4
/* 8143A0AC | 7C 63 2A 2E */	lhzx r3, r3, r5
/* 8143A0B0 | 48 00 00 7C */	b .L_8143A12C
.L_8143A0B4:
/* 8143A0B4 | 38 7F 00 02 */	addi r3, r31, 0x2
/* 8143A0B8 | 54 60 F0 02 */	slwi r0, r3, 30
/* 8143A0BC | 54 63 0F FE */	srwi r3, r3, 31
/* 8143A0C0 | 7C 03 00 50 */	subf r0, r3, r0
/* 8143A0C4 | 54 00 10 3E */	rotlwi r0, r0, 2
/* 8143A0C8 | 7C 00 1A 14 */	add r0, r0, r3
/* 8143A0CC | 54 00 10 3A */	slwi r0, r0, 2
/* 8143A0D0 | 7C 64 00 2E */	lwzx r3, r4, r0
/* 8143A0D4 | 7C 05 1A 2E */	lhzx r0, r5, r3
/* 8143A0D8 | 28 00 30 00 */	cmplwi r0, 0x3000
/* 8143A0DC | 41 82 00 0C */	beq .L_8143A0E8
/* 8143A0E0 | 7C 63 2A 2E */	lhzx r3, r3, r5
/* 8143A0E4 | 48 00 00 48 */	b .L_8143A12C
.L_8143A0E8:
/* 8143A0E8 | 38 7F 00 03 */	addi r3, r31, 0x3
/* 8143A0EC | 54 60 F0 02 */	slwi r0, r3, 30
/* 8143A0F0 | 54 63 0F FE */	srwi r3, r3, 31
/* 8143A0F4 | 7C 03 00 50 */	subf r0, r3, r0
/* 8143A0F8 | 54 00 10 3E */	rotlwi r0, r0, 2
/* 8143A0FC | 7C 00 1A 14 */	add r0, r0, r3
/* 8143A100 | 54 00 10 3A */	slwi r0, r0, 2
/* 8143A104 | 7C 64 00 2E */	lwzx r3, r4, r0
/* 8143A108 | 7C 05 1A 2E */	lhzx r0, r5, r3
/* 8143A10C | 28 00 30 00 */	cmplwi r0, 0x3000
/* 8143A110 | 41 82 00 18 */	beq .L_8143A128
/* 8143A114 | 7C 63 2A 2E */	lhzx r3, r3, r5
/* 8143A118 | 48 00 00 14 */	b .L_8143A12C
/* 8143A11C | 48 00 00 0C */	b .L_8143A128
.L_8143A120:
/* 8143A120 | 7F C3 F3 78 */	mr r3, r30
/* 8143A124 | 48 00 00 08 */	b .L_8143A12C
.L_8143A128:
/* 8143A128 | 7F C3 F3 78 */	mr r3, r30
.L_8143A12C:
/* 8143A12C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8143A130 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8143A134 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8143A138 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8143A13C | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 8143A140 | 7C 08 03 A6 */	mtlr r0
/* 8143A144 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8143A148 | 4E 80 00 20 */	blr
.endfn KBD_ConvertAll__Q29textinput4utilFw

# .text:0xB44 | 0x8143A14C | size: 0x38
# textinput::util::KBD_IsDakuten(wchar_t)
.fn KBD_IsDakuten__Q29textinput4utilFw, global
/* 8143A14C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143A150 | 7C 08 02 A6 */	mflr r0
/* 8143A154 | 38 AD AC E8 */	li r5, lbl_81698D28@sda21
/* 8143A158 | 7C 64 1B 78 */	mr r4, r3
/* 8143A15C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143A160 | 80 65 00 04 */	lwz r3, 0x4(r5)
/* 8143A164 | 48 1C E6 7D */	bl fn_816087E0
/* 8143A168 | 7C 03 00 D0 */	neg r0, r3
/* 8143A16C | 7C 00 1B 78 */	or r0, r0, r3
/* 8143A170 | 54 03 0F FE */	srwi r3, r0, 31
/* 8143A174 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143A178 | 7C 08 03 A6 */	mtlr r0
/* 8143A17C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143A180 | 4E 80 00 20 */	blr
.endfn KBD_IsDakuten__Q29textinput4utilFw

# .text:0xB7C | 0x8143A184 | size: 0x38
# textinput::util::KBD_IsHandaku(wchar_t)
.fn KBD_IsHandaku__Q29textinput4utilFw, global
/* 8143A184 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143A188 | 7C 08 02 A6 */	mflr r0
/* 8143A18C | 38 AD AC F0 */	li r5, lbl_81698D30@sda21
/* 8143A190 | 7C 64 1B 78 */	mr r4, r3
/* 8143A194 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143A198 | 80 65 00 04 */	lwz r3, 0x4(r5)
/* 8143A19C | 48 1C E6 45 */	bl fn_816087E0
/* 8143A1A0 | 7C 03 00 D0 */	neg r0, r3
/* 8143A1A4 | 7C 00 1B 78 */	or r0, r0, r3
/* 8143A1A8 | 54 03 0F FE */	srwi r3, r0, 31
/* 8143A1AC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143A1B0 | 7C 08 03 A6 */	mtlr r0
/* 8143A1B4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143A1B8 | 4E 80 00 20 */	blr
.endfn KBD_IsHandaku__Q29textinput4utilFw

# .text:0xBB4 | 0x8143A1BC | size: 0x38
# textinput::util::KBD_IsSmall(wchar_t)
.fn KBD_IsSmall__Q29textinput4utilFw, global
/* 8143A1BC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143A1C0 | 7C 08 02 A6 */	mflr r0
/* 8143A1C4 | 38 AD AC F8 */	li r5, lbl_81698D38@sda21
/* 8143A1C8 | 7C 64 1B 78 */	mr r4, r3
/* 8143A1CC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143A1D0 | 80 65 00 04 */	lwz r3, 0x4(r5)
/* 8143A1D4 | 48 1C E6 0D */	bl fn_816087E0
/* 8143A1D8 | 7C 03 00 D0 */	neg r0, r3
/* 8143A1DC | 7C 00 1B 78 */	or r0, r0, r3
/* 8143A1E0 | 54 03 0F FE */	srwi r3, r0, 31
/* 8143A1E4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143A1E8 | 7C 08 03 A6 */	mtlr r0
/* 8143A1EC | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143A1F0 | 4E 80 00 20 */	blr
.endfn KBD_IsSmall__Q29textinput4utilFw

# .text:0xBEC | 0x8143A1F4 | size: 0x68
# textinput::util::strcmp(const char*, const char*)
.fn strcmp__Q29textinput4utilFPCcPCc, global
/* 8143A1F4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143A1F8 | 7C 08 02 A6 */	mflr r0
/* 8143A1FC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143A200 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143A204 | 7C 9F 23 78 */	mr r31, r4
/* 8143A208 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8143A20C | 7C 7E 1B 78 */	mr r30, r3
/* 8143A210 | 48 1B EC ED */	bl strlen
/* 8143A214 | 28 03 00 10 */	cmplwi r3, 0x10
/* 8143A218 | 7C 65 1B 78 */	mr r5, r3
/* 8143A21C | 41 80 00 08 */	blt .L_8143A224
/* 8143A220 | 38 A0 00 10 */	li r5, 0x10
.L_8143A224:
/* 8143A224 | 7F C3 F3 78 */	mr r3, r30
/* 8143A228 | 7F E4 FB 78 */	mr r4, r31
/* 8143A22C | 48 1C 83 71 */	bl strncmp
/* 8143A230 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143A234 | 40 82 00 0C */	bne .L_8143A240
/* 8143A238 | 38 60 00 01 */	li r3, 0x1
/* 8143A23C | 48 00 00 08 */	b .L_8143A244
.L_8143A240:
/* 8143A240 | 38 60 00 00 */	li r3, 0x0
.L_8143A244:
/* 8143A244 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143A248 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143A24C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8143A250 | 7C 08 03 A6 */	mtlr r0
/* 8143A254 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143A258 | 4E 80 00 20 */	blr
.endfn strcmp__Q29textinput4utilFPCcPCc

# .text:0xC54 | 0x8143A25C | size: 0x60
# textinput::util::replaceChar(char*, unsigned long, const char*, int, char)
.fn replaceChar__Q29textinput4utilFPcUlPCcic, global
/* 8143A25C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8143A260 | 7C 08 02 A6 */	mflr r0
/* 8143A264 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8143A268 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8143A26C | 48 1B F2 55 */	bl _savegpr_27
/* 8143A270 | 7C 9C 23 78 */	mr r28, r4
/* 8143A274 | 7C BD 2B 78 */	mr r29, r5
/* 8143A278 | 7C 7B 1B 78 */	mr r27, r3
/* 8143A27C | 7C DE 33 78 */	mr r30, r6
/* 8143A280 | 7C FF 3B 78 */	mr r31, r7
/* 8143A284 | 7F 85 E3 78 */	mr r5, r28
/* 8143A288 | 38 80 00 00 */	li r4, 0x0
/* 8143A28C | 4B EF 60 A9 */	bl memset
/* 8143A290 | 7F 63 DB 78 */	mr r3, r27
/* 8143A294 | 7F A4 EB 78 */	mr r4, r29
/* 8143A298 | 7F 85 E3 78 */	mr r5, r28
/* 8143A29C | 48 1C 81 29 */	bl strncpy
/* 8143A2A0 | 7F FB F1 AE */	stbx r31, r27, r30
/* 8143A2A4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8143A2A8 | 48 1B F2 65 */	bl _restgpr_27
/* 8143A2AC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8143A2B0 | 7C 08 03 A6 */	mtlr r0
/* 8143A2B4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8143A2B8 | 4E 80 00 20 */	blr
.endfn replaceChar__Q29textinput4utilFPcUlPCcic

# .text:0xCB4 | 0x8143A2BC | size: 0x38
# textinput::util::isAlphabet(wchar_t)
.fn isAlphabet__Q29textinput4utilFw, global
/* 8143A2BC | 28 03 00 61 */	cmplwi r3, 0x61
/* 8143A2C0 | 41 80 00 14 */	blt .L_8143A2D4
/* 8143A2C4 | 28 03 00 7A */	cmplwi r3, 0x7a
/* 8143A2C8 | 41 81 00 0C */	bgt .L_8143A2D4
/* 8143A2CC | 38 60 00 01 */	li r3, 0x1
/* 8143A2D0 | 4E 80 00 20 */	blr
.L_8143A2D4:
/* 8143A2D4 | 28 03 00 41 */	cmplwi r3, 0x41
/* 8143A2D8 | 41 80 00 14 */	blt .L_8143A2EC
/* 8143A2DC | 28 03 00 5A */	cmplwi r3, 0x5a
/* 8143A2E0 | 41 81 00 0C */	bgt .L_8143A2EC
/* 8143A2E4 | 38 60 00 01 */	li r3, 0x1
/* 8143A2E8 | 4E 80 00 20 */	blr
.L_8143A2EC:
/* 8143A2EC | 38 60 00 00 */	li r3, 0x0
/* 8143A2F0 | 4E 80 00 20 */	blr
.endfn isAlphabet__Q29textinput4utilFw

# .text:0xCEC | 0x8143A2F4 | size: 0x50
# textinput::util::hermiteInterporation(float, float, float, float, float, float, float)
.fn hermiteInterporation__Q29textinput4utilFfffffff, global
/* 8143A2F4 | ED 01 10 28 */	fsubs f8, f1, f2
/* 8143A2F8 | EC 05 10 28 */	fsubs f0, f5, f2
/* 8143A2FC | EC C3 30 28 */	fsubs f6, f3, f6
/* 8143A300 | EC 28 00 24 */	fdivs f1, f8, f0
/* 8143A304 | ED 21 00 72 */	fmuls f9, f1, f1
/* 8143A308 | EC A1 08 2A */	fadds f5, f1, f1
/* 8143A30C | EC 01 01 32 */	fmuls f0, f1, f4
/* 8143A310 | EC 29 08 28 */	fsubs f1, f9, f1
/* 8143A314 | EC 44 00 72 */	fmuls f2, f4, f1
/* 8143A318 | EC A5 00 72 */	fmuls f5, f5, f1
/* 8143A31C | EC 27 00 72 */	fmuls f1, f7, f1
/* 8143A320 | EC 44 10 2A */	fadds f2, f4, f2
/* 8143A324 | EC 85 48 28 */	fsubs f4, f5, f9
/* 8143A328 | EC 42 08 2A */	fadds f2, f2, f1
/* 8143A32C | EC 24 01 B2 */	fmuls f1, f4, f6
/* 8143A330 | EC 00 10 28 */	fsubs f0, f0, f2
/* 8143A334 | EC 23 08 2A */	fadds f1, f3, f1
/* 8143A338 | EC 08 00 32 */	fmuls f0, f8, f0
/* 8143A33C | EC 21 00 28 */	fsubs f1, f1, f0
/* 8143A340 | 4E 80 00 20 */	blr
.endfn hermiteInterporation__Q29textinput4utilFfffffff

# .text:0xD3C | 0x8143A344 | size: 0x24
# textinput::util::getProjectionRect4x3(nw4r::ut::Rect*)
.fn getProjectionRect4x3__Q29textinput4utilFPQ34nw4r2ut4Rect, global
/* 8143A344 | C0 62 8A 30 */	lfs f3, lbl_81694E30@sda21(r0)
/* 8143A348 | C0 42 8A 34 */	lfs f2, lbl_81694E34@sda21(r0)
/* 8143A34C | C0 22 8A 38 */	lfs f1, lbl_81694E38@sda21(r0)
/* 8143A350 | C0 02 8A 3C */	lfs f0, lbl_81694E3C@sda21(r0)
/* 8143A354 | D0 63 00 00 */	stfs f3, 0x0(r3)
/* 8143A358 | D0 43 00 08 */	stfs f2, 0x8(r3)
/* 8143A35C | D0 23 00 0C */	stfs f1, 0xc(r3)
/* 8143A360 | D0 03 00 04 */	stfs f0, 0x4(r3)
/* 8143A364 | 4E 80 00 20 */	blr
.endfn getProjectionRect4x3__Q29textinput4utilFPQ34nw4r2ut4Rect

# .text:0xD60 | 0x8143A368 | size: 0x24
# textinput::util::getProjectionRect16x9(nw4r::ut::Rect*)
.fn getProjectionRect16x9__Q29textinput4utilFPQ34nw4r2ut4Rect, global
/* 8143A368 | C0 62 8A 40 */	lfs f3, lbl_81694E40@sda21(r0)
/* 8143A36C | C0 42 8A 44 */	lfs f2, lbl_81694E44@sda21(r0)
/* 8143A370 | C0 22 8A 38 */	lfs f1, lbl_81694E38@sda21(r0)
/* 8143A374 | C0 02 8A 3C */	lfs f0, lbl_81694E3C@sda21(r0)
/* 8143A378 | D0 63 00 00 */	stfs f3, 0x0(r3)
/* 8143A37C | D0 43 00 08 */	stfs f2, 0x8(r3)
/* 8143A380 | D0 23 00 0C */	stfs f1, 0xc(r3)
/* 8143A384 | D0 03 00 04 */	stfs f0, 0x4(r3)
/* 8143A388 | 4E 80 00 20 */	blr
.endfn getProjectionRect16x9__Q29textinput4utilFPQ34nw4r2ut4Rect

# .text:0xD84 | 0x8143A38C | size: 0x40
.fn "__sinit_\\util_cpp", global
/* 8143A38C | 3C 60 81 66 */	lis r3, s_all_map__Q29textinput4util@ha
/* 8143A390 | 38 CD AC E8 */	li r6, lbl_81698D28@sda21
/* 8143A394 | 39 03 05 88 */	addi r8, r3, s_all_map__Q29textinput4util@l
/* 8143A398 | 81 23 05 88 */	lwz r9, s_all_map__Q29textinput4util@l(r3)
/* 8143A39C | 80 E8 00 04 */	lwz r7, 0x4(r8)
/* 8143A3A0 | 38 8D AC F0 */	li r4, lbl_81698D30@sda21
/* 8143A3A4 | 80 A8 00 08 */	lwz r5, 0x8(r8)
/* 8143A3A8 | 38 6D AC F8 */	li r3, lbl_81698D38@sda21
/* 8143A3AC | 80 08 00 0C */	lwz r0, 0xc(r8)
/* 8143A3B0 | 91 2D AC E8 */	stw r9, lbl_81698D28@sda21(r0)
/* 8143A3B4 | 90 E6 00 04 */	stw r7, 0x4(r6)
/* 8143A3B8 | 91 2D AC F0 */	stw r9, lbl_81698D30@sda21(r0)
/* 8143A3BC | 90 A4 00 04 */	stw r5, 0x4(r4)
/* 8143A3C0 | 91 2D AC F8 */	stw r9, lbl_81698D38@sda21(r0)
/* 8143A3C4 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 8143A3C8 | 4E 80 00 20 */	blr
.endfn "__sinit_\\util_cpp"

# 0x8160D20C..0x8160D210 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte "__sinit_\\util_cpp"

# 0x81660378..0x81660598 | size: 0x220
.data
.balign 8

# .data:0x0 | 0x81660378 | size: 0x18
.obj lbl_81660378, global
	.4byte 0xFF0CFF0E
	.4byte 0xFF01FF1F
	.4byte 0xFF1A3000
	.4byte 0xFF20FF0F
	.4byte 0xFF3FFF0D
	.4byte 0x00000000
.endobj lbl_81660378

# .data:0x18 | 0x81660390 | size: 0x18
.obj lbl_81660390, global
	.4byte 0x002C002E
	.4byte 0x0021003F
	.4byte 0x003A0020
	.4byte 0x0040002F
	.4byte 0x005F002D
	.4byte 0x00000000
.endobj lbl_81660390

# .data:0x30 | 0x816603A8 | size: 0x78
.obj lbl_816603A8, global
	.4byte 0x30423044
	.4byte 0x30463048
	.4byte 0x304A304B
	.4byte 0x304D304F
	.4byte 0x30513053
	.4byte 0x30553057
	.4byte 0x3059305B
	.4byte 0x305D305F
	.4byte 0x30613064
	.4byte 0x30663068
	.4byte 0x306F3072
	.4byte 0x30753078
	.4byte 0x307B3084
	.4byte 0x30863088
	.4byte 0x308F30A2
	.4byte 0x30A430A6
	.4byte 0x30A830AA
	.4byte 0x30AB30AD
	.4byte 0x30AF30B1
	.4byte 0x30B330B5
	.4byte 0x30B730B9
	.4byte 0x30BB30BD
	.4byte 0x30BF30C1
	.4byte 0x30C430C6
	.4byte 0x30C830CF
	.4byte 0x30D230D5
	.4byte 0x30D830DB
	.4byte 0x30E430E6
	.4byte 0x30E830EF
	.4byte 0x00000000
.endobj lbl_816603A8

# .data:0xA8 | 0x81660420 | size: 0x78
.obj lbl_81660420, global
	.4byte 0x30003000
	.4byte 0x30003000
	.4byte 0x3000304C
	.4byte 0x304E3050
	.4byte 0x30523054
	.4byte 0x30563058
	.4byte 0x305A305C
	.4byte 0x305E3060
	.4byte 0x30623065
	.4byte 0x30673069
	.4byte 0x30703073
	.4byte 0x30763079
	.4byte 0x307C3000
	.4byte 0x30003000
	.4byte 0x30003000
	.4byte 0x300030F4
	.4byte 0x30003000
	.4byte 0x30AC30AE
	.4byte 0x30B030B2
	.4byte 0x30B430B6
	.4byte 0x30B830BA
	.4byte 0x30BC30BE
	.4byte 0x30C030C2
	.4byte 0x30C530C7
	.4byte 0x30C930D0
	.4byte 0x30D330D6
	.4byte 0x30D930DC
	.4byte 0x30003000
	.4byte 0x30003000
	.4byte 0x00000000
.endobj lbl_81660420

# .data:0x120 | 0x81660498 | size: 0x78
.obj lbl_81660498, global
	.4byte 0x30003000
	.4byte 0x30003000
	.4byte 0x30003000
	.4byte 0x30003000
	.4byte 0x30003000
	.4byte 0x30003000
	.4byte 0x30003000
	.4byte 0x30003000
	.4byte 0x30003000
	.4byte 0x30003000
	.4byte 0x30713074
	.4byte 0x3077307A
	.4byte 0x307D3000
	.4byte 0x30003000
	.4byte 0x30003000
	.4byte 0x30003000
	.4byte 0x30003000
	.4byte 0x30003000
	.4byte 0x30003000
	.4byte 0x30003000
	.4byte 0x30003000
	.4byte 0x30003000
	.4byte 0x30003000
	.4byte 0x30003000
	.4byte 0x300030D1
	.4byte 0x30D430D7
	.4byte 0x30DA30DD
	.4byte 0x30003000
	.4byte 0x30003000
	.4byte 0x00000000
.endobj lbl_81660498

# .data:0x198 | 0x81660510 | size: 0x78
.obj lbl_81660510, global
	.4byte 0x30413043
	.4byte 0x30453047
	.4byte 0x30493000
	.4byte 0x30003000
	.4byte 0x30003000
	.4byte 0x30003000
	.4byte 0x30003000
	.4byte 0x30003000
	.4byte 0x30003063
	.4byte 0x30003000
	.4byte 0x30003000
	.4byte 0x30003000
	.4byte 0x30003083
	.4byte 0x30853087
	.4byte 0x308E30A1
	.4byte 0x30A330A5
	.4byte 0x30A730A9
	.4byte 0x30F53000
	.4byte 0x300030F6
	.4byte 0x30003000
	.4byte 0x30003000
	.4byte 0x30003000
	.4byte 0x30003000
	.4byte 0x30C33000
	.4byte 0x30003000
	.4byte 0x30003000
	.4byte 0x30003000
	.4byte 0x30E330E5
	.4byte 0x30E730EE
	.4byte 0x00000000
.endobj lbl_81660510

# .data:0x210 | 0x81660588 | size: 0x10
# textinput::util::s_all_map
.obj s_all_map__Q29textinput4util, local
	.4byte lbl_816603A8
	.4byte lbl_81660420
	.4byte lbl_81660498
	.4byte lbl_81660510
.endobj s_all_map__Q29textinput4util

# 0x81694E28..0x81694E58 | size: 0x30
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694E28 | size: 0x4
.obj lbl_81694E28, global
	.4byte lbl_81660378
.endobj lbl_81694E28

# .sdata2:0x4 | 0x81694E2C | size: 0x4
.obj lbl_81694E2C, global
	.4byte lbl_81660390
.endobj lbl_81694E2C

# .sdata2:0x8 | 0x81694E30 | size: 0x4
.obj lbl_81694E30, global
	.float -304
.endobj lbl_81694E30

# .sdata2:0xC | 0x81694E34 | size: 0x4
.obj lbl_81694E34, global
	.float 304
.endobj lbl_81694E34

# .sdata2:0x10 | 0x81694E38 | size: 0x4
.obj lbl_81694E38, global
	.float 228
.endobj lbl_81694E38

# .sdata2:0x14 | 0x81694E3C | size: 0x4
.obj lbl_81694E3C, global
	.float -228
.endobj lbl_81694E3C

# .sdata2:0x18 | 0x81694E40 | size: 0x4
.obj lbl_81694E40, global
	.float -416
.endobj lbl_81694E40

# .sdata2:0x1C | 0x81694E44 | size: 0x4
.obj lbl_81694E44, global
	.float 416
.endobj lbl_81694E44

# .sdata2:0x20 | 0x81694E48 | size: 0x8
.obj lbl_81694E48, global
	.4byte 0xE0570030
	.4byte 0x00000000
.endobj lbl_81694E48

# .sdata2:0x28 | 0x81694E50 | size: 0x8
.obj lbl_81694E50, global
	.4byte 0xE0570000
	.4byte 0x00000000
.endobj lbl_81694E50

# 0x81697408..0x81697410 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697408 | size: 0x8
.obj lbl_81697408, global
	.4byte lbl_81660598
	.4byte lbl_8166060C
.endobj lbl_81697408

# 0x81698D28..0x81698D40 | size: 0x18
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698D28 | size: 0x8
.obj lbl_81698D28, global
	.skip 0x8
.endobj lbl_81698D28

# .sbss:0x8 | 0x81698D30 | size: 0x8
.obj lbl_81698D30, global
	.skip 0x8
.endobj lbl_81698D30

# .sbss:0x10 | 0x81698D38 | size: 0x8
.obj lbl_81698D38, global
	.skip 0x8
.endobj lbl_81698D38
