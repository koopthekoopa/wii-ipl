.include "macros.inc"
.file "iplClock.cpp"

# 0x813B0910..0x813B1584 | size: 0xC74
.text
.balign 4

# .text:0x0 | 0x813B0910 | size: 0xC
# ipl::scene::clock::clock()
.fn __ct__Q33ipl5scene5clockFv, global
/* 813B0910 | 38 00 00 00 */	li r0, 0x0
/* 813B0914 | 90 03 00 2C */	stw r0, 0x2c(r3)
/* 813B0918 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene5clockFv

# .text:0xC | 0x813B091C | size: 0x3A8
# ipl::scene::clock::init(EGG::Heap*, ipl::nand::LayoutFile*)
.fn init__Q33ipl5scene5clockFPQ23EGG4HeapPQ33ipl4nand10LayoutFile, global
/* 813B091C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813B0920 | 7C 08 02 A6 */	mflr r0
/* 813B0924 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813B0928 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813B092C | 48 24 8B 99 */	bl _savegpr_28
/* 813B0930 | 3F A0 81 65 */	lis r29, lbl_8164E1D8@ha
/* 813B0934 | 7C 7F 1B 78 */	mr r31, r3
/* 813B0938 | 7C BE 2B 78 */	mr r30, r5
/* 813B093C | 7C 9C 23 78 */	mr r28, r4
/* 813B0940 | 3B BD E1 D8 */	addi r29, r29, lbl_8164E1D8@l
/* 813B0944 | 38 60 05 80 */	li r3, 0x580
/* 813B0948 | 38 A0 00 04 */	li r5, 0x4
/* 813B094C | 48 24 77 65 */	bl __nw__FUlPQ23EGG4Heapi
/* 813B0950 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B0954 | 41 82 00 18 */	beq .L_813B096C
/* 813B0958 | 7F 84 E3 78 */	mr r4, r28
/* 813B095C | 7F C5 F3 78 */	mr r5, r30
/* 813B0960 | 38 FD 00 28 */	addi r7, r29, 0x28
/* 813B0964 | 38 CD 88 F2 */	li r6, lbl_81696932@sda21
/* 813B0968 | 4B FB 96 BD */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813B096C:
/* 813B096C | 90 7F 00 2C */	stw r3, 0x2c(r31)
/* 813B0970 | 38 9D 00 39 */	addi r4, r29, 0x39
/* 813B0974 | 38 BD 00 51 */	addi r5, r29, 0x51
/* 813B0978 | 38 C0 00 00 */	li r6, 0x0
/* 813B097C | 38 E0 00 01 */	li r7, 0x1
/* 813B0980 | 4B FB 99 FD */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 813B0984 | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 813B0988 | 38 9D 00 39 */	addi r4, r29, 0x39
/* 813B098C | 38 AD 88 F6 */	li r5, lbl_81696936@sda21
/* 813B0990 | 38 C0 00 00 */	li r6, 0x0
/* 813B0994 | 38 E0 00 01 */	li r7, 0x1
/* 813B0998 | 4B FB 99 E5 */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 813B099C | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 813B09A0 | 38 9D 00 5B */	addi r4, r29, 0x5b
/* 813B09A4 | 38 BD 00 70 */	addi r5, r29, 0x70
/* 813B09A8 | 38 C0 00 00 */	li r6, 0x0
/* 813B09AC | 38 E0 00 01 */	li r7, 0x1
/* 813B09B0 | 4B FB 99 CD */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 813B09B4 | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 813B09B8 | 38 9D 00 79 */	addi r4, r29, 0x79
/* 813B09BC | 38 AD 88 FE */	li r5, lbl_8169693E@sda21
/* 813B09C0 | 38 C0 00 00 */	li r6, 0x0
/* 813B09C4 | 38 E0 00 00 */	li r7, 0x0
/* 813B09C8 | 4B FB 99 B5 */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 813B09CC | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 813B09D0 | 38 9D 00 79 */	addi r4, r29, 0x79
/* 813B09D4 | 38 AD 89 05 */	li r5, lbl_81696945@sda21
/* 813B09D8 | 38 C0 00 00 */	li r6, 0x0
/* 813B09DC | 38 E0 00 00 */	li r7, 0x0
/* 813B09E0 | 4B FB 99 9D */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 813B09E4 | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 813B09E8 | 38 9D 00 79 */	addi r4, r29, 0x79
/* 813B09EC | 38 AD 89 0C */	li r5, lbl_8169694C@sda21
/* 813B09F0 | 38 C0 00 00 */	li r6, 0x0
/* 813B09F4 | 38 E0 00 00 */	li r7, 0x0
/* 813B09F8 | 4B FB 99 85 */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 813B09FC | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 813B0A00 | 38 9D 00 79 */	addi r4, r29, 0x79
/* 813B0A04 | 38 AD 89 13 */	li r5, lbl_81696953@sda21
/* 813B0A08 | 38 C0 00 00 */	li r6, 0x0
/* 813B0A0C | 38 E0 00 00 */	li r7, 0x0
/* 813B0A10 | 4B FB 99 6D */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 813B0A14 | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 813B0A18 | 38 9D 00 79 */	addi r4, r29, 0x79
/* 813B0A1C | 38 AD 89 1A */	li r5, lbl_8169695A@sda21
/* 813B0A20 | 38 C0 00 00 */	li r6, 0x0
/* 813B0A24 | 38 E0 00 00 */	li r7, 0x0
/* 813B0A28 | 4B FB 99 55 */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 813B0A2C | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 813B0A30 | 38 9D 00 79 */	addi r4, r29, 0x79
/* 813B0A34 | 38 AD 89 20 */	li r5, lbl_81696960@sda21
/* 813B0A38 | 38 C0 00 00 */	li r6, 0x0
/* 813B0A3C | 38 E0 00 00 */	li r7, 0x0
/* 813B0A40 | 4B FB 99 3D */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 813B0A44 | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 813B0A48 | 38 9D 00 93 */	addi r4, r29, 0x93
/* 813B0A4C | 38 AD 88 FE */	li r5, lbl_8169693E@sda21
/* 813B0A50 | 38 C0 00 00 */	li r6, 0x0
/* 813B0A54 | 38 E0 00 01 */	li r7, 0x1
/* 813B0A58 | 4B FB 99 25 */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 813B0A5C | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 813B0A60 | 38 9D 00 93 */	addi r4, r29, 0x93
/* 813B0A64 | 38 AD 89 05 */	li r5, lbl_81696945@sda21
/* 813B0A68 | 38 C0 00 00 */	li r6, 0x0
/* 813B0A6C | 38 E0 00 01 */	li r7, 0x1
/* 813B0A70 | 4B FB 99 0D */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 813B0A74 | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 813B0A78 | 38 9D 00 93 */	addi r4, r29, 0x93
/* 813B0A7C | 38 AD 89 0C */	li r5, lbl_8169694C@sda21
/* 813B0A80 | 38 C0 00 00 */	li r6, 0x0
/* 813B0A84 | 38 E0 00 01 */	li r7, 0x1
/* 813B0A88 | 4B FB 98 F5 */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 813B0A8C | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 813B0A90 | 38 9D 00 93 */	addi r4, r29, 0x93
/* 813B0A94 | 38 AD 89 13 */	li r5, lbl_81696953@sda21
/* 813B0A98 | 38 C0 00 00 */	li r6, 0x0
/* 813B0A9C | 38 E0 00 01 */	li r7, 0x1
/* 813B0AA0 | 4B FB 98 DD */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 813B0AA4 | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 813B0AA8 | 38 9D 00 93 */	addi r4, r29, 0x93
/* 813B0AAC | 38 AD 89 1A */	li r5, lbl_8169695A@sda21
/* 813B0AB0 | 38 C0 00 00 */	li r6, 0x0
/* 813B0AB4 | 38 E0 00 01 */	li r7, 0x1
/* 813B0AB8 | 4B FB 98 C5 */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 813B0ABC | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 813B0AC0 | 38 9D 00 93 */	addi r4, r29, 0x93
/* 813B0AC4 | 38 AD 89 20 */	li r5, lbl_81696960@sda21
/* 813B0AC8 | 38 C0 00 00 */	li r6, 0x0
/* 813B0ACC | 38 E0 00 01 */	li r7, 0x1
/* 813B0AD0 | 4B FB 98 AD */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 813B0AD4 | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 813B0AD8 | 4B FB 9B 5D */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813B0ADC | 4B F8 4F B1 */	bl getRegion__Q23ipl6SystemFv
/* 813B0AE0 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813B0AE4 | 41 82 00 4C */	beq .L_813B0B30
/* 813B0AE8 | 40 80 00 10 */	bge .L_813B0AF8
/* 813B0AEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B0AF0 | 40 80 00 14 */	bge .L_813B0B04
/* 813B0AF4 | 48 00 00 68 */	b .L_813B0B5C
.L_813B0AF8:
/* 813B0AF8 | 2C 03 00 06 */	cmpwi r3, 0x6
/* 813B0AFC | 41 82 00 08 */	beq .L_813B0B04
/* 813B0B00 | 48 00 00 5C */	b .L_813B0B5C
.L_813B0B04:
/* 813B0B04 | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 813B0B08 | 38 8D 89 20 */	li r4, lbl_81696960@sda21
/* 813B0B0C | 38 A0 00 01 */	li r5, 0x1
/* 813B0B10 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813B0B14 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B0B18 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813B0B1C | 7D 89 03 A6 */	mtctr r12
/* 813B0B20 | 4E 80 04 21 */	bctrl
/* 813B0B24 | 38 80 00 00 */	li r4, 0x0
/* 813B0B28 | 4B F9 38 ED */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813B0B2C | 48 00 00 80 */	b .L_813B0BAC
.L_813B0B30:
/* 813B0B30 | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 813B0B34 | 38 8D 89 1A */	li r4, lbl_8169695A@sda21
/* 813B0B38 | 38 A0 00 01 */	li r5, 0x1
/* 813B0B3C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813B0B40 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B0B44 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813B0B48 | 7D 89 03 A6 */	mtctr r12
/* 813B0B4C | 4E 80 04 21 */	bctrl
/* 813B0B50 | 38 80 00 00 */	li r4, 0x0
/* 813B0B54 | 4B F9 38 C1 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813B0B58 | 48 00 00 54 */	b .L_813B0BAC
.L_813B0B5C:
/* 813B0B5C | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 813B0B60 | 38 8D 89 1A */	li r4, lbl_8169695A@sda21
/* 813B0B64 | 38 A0 00 01 */	li r5, 0x1
/* 813B0B68 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813B0B6C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B0B70 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813B0B74 | 7D 89 03 A6 */	mtctr r12
/* 813B0B78 | 4E 80 04 21 */	bctrl
/* 813B0B7C | 38 80 00 00 */	li r4, 0x0
/* 813B0B80 | 4B F9 38 95 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813B0B84 | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 813B0B88 | 38 8D 89 20 */	li r4, lbl_81696960@sda21
/* 813B0B8C | 38 A0 00 01 */	li r5, 0x1
/* 813B0B90 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813B0B94 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B0B98 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813B0B9C | 7D 89 03 A6 */	mtctr r12
/* 813B0BA0 | 4E 80 04 21 */	bctrl
/* 813B0BA4 | 38 80 00 00 */	li r4, 0x0
/* 813B0BA8 | 4B F9 38 6D */	bl SetVisible__Q34nw4r3lyt4PaneFb
.L_813B0BAC:
/* 813B0BAC | 7F E4 FB 78 */	mr r4, r31
/* 813B0BB0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813B0BB4 | 48 00 08 4D */	bl calc_tex__Q33ipl5scene5clockCFv
/* 813B0BB8 | 38 7F 00 14 */	addi r3, r31, 0x14
/* 813B0BBC | 38 81 00 08 */	addi r4, r1, 0x8
/* 813B0BC0 | 48 00 01 05 */	bl __as__Q43ipl5scene5clock8time_texFRCQ43ipl5scene5clock8time_tex
/* 813B0BC4 | 7C 64 1B 78 */	mr r4, r3
/* 813B0BC8 | 7F E3 FB 78 */	mr r3, r31
/* 813B0BCC | 48 00 00 F9 */	bl __as__Q43ipl5scene5clock8time_texFRCQ43ipl5scene5clock8time_tex
/* 813B0BD0 | 7F E3 FB 78 */	mr r3, r31
/* 813B0BD4 | 48 00 05 59 */	bl change_tex__Q33ipl5scene5clockFv
/* 813B0BD8 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813B0BDC | 38 7F 00 38 */	addi r3, r31, 0x38
/* 813B0BE0 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813B0BE4 | 38 9E 00 3C */	addi r4, r30, 0x3c
/* 813B0BE8 | 48 00 01 09 */	bl __as__14OSCalendarTimeFRC14OSCalendarTime
/* 813B0BEC | 80 7E 00 80 */	lwz r3, 0x80(r30)
/* 813B0BF0 | 38 80 00 10 */	li r4, 0x10
/* 813B0BF4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813B0BF8 | 4B F8 DB C5 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813B0BFC | 80 DF 00 2C */	lwz r6, 0x2c(r31)
/* 813B0C00 | 7C 7E 1B 78 */	mr r30, r3
/* 813B0C04 | 38 9D 00 51 */	addi r4, r29, 0x51
/* 813B0C08 | 38 A0 00 01 */	li r5, 0x1
/* 813B0C0C | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 813B0C10 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B0C14 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813B0C18 | 7D 89 03 A6 */	mtctr r12
/* 813B0C1C | 4E 80 04 21 */	bctrl
/* 813B0C20 | 7F C4 F3 78 */	mr r4, r30
/* 813B0C24 | 4B FB 38 C9 */	bl set_string__Q33ipl7utility6layoutFPQ34nw4r3lyt4PanePCw
/* 813B0C28 | 88 0D AB 20 */	lbz r0, m_already_shown_wii_menu__Q33ipl5scene5clock@sda21(r0)
/* 813B0C2C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B0C30 | 41 82 00 60 */	beq .L_813B0C90
/* 813B0C34 | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 813B0C38 | 38 80 00 00 */	li r4, 0x0
/* 813B0C3C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813B0C40 | 48 16 16 D9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813B0C44 | 3B C0 00 01 */	li r30, 0x1
/* 813B0C48 | 38 80 00 00 */	li r4, 0x0
/* 813B0C4C | 93 C3 00 18 */	stw r30, 0x18(r3)
/* 813B0C50 | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 813B0C54 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813B0C58 | 48 16 16 C1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813B0C5C | 4B FB 8F C9 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813B0C60 | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 813B0C64 | 38 80 00 01 */	li r4, 0x1
/* 813B0C68 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813B0C6C | 48 16 16 AD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813B0C70 | 93 C3 00 18 */	stw r30, 0x18(r3)
/* 813B0C74 | 38 80 00 01 */	li r4, 0x1
/* 813B0C78 | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 813B0C7C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813B0C80 | 48 16 16 99 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813B0C84 | 4B FB 8F A1 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813B0C88 | 93 DF 00 28 */	stw r30, 0x28(r31)
/* 813B0C8C | 48 00 00 20 */	b .L_813B0CAC
.L_813B0C90:
/* 813B0C90 | 38 00 00 01 */	li r0, 0x1
/* 813B0C94 | 38 7F 00 30 */	addi r3, r31, 0x30
/* 813B0C98 | 98 0D AB 20 */	stb r0, m_already_shown_wii_menu__Q33ipl5scene5clock@sda21(r0)
/* 813B0C9C | 38 80 0B B8 */	li r4, 0xbb8
/* 813B0CA0 | 4B FB 37 85 */	bl set_msec__Q33ipl7utility5timerFi
/* 813B0CA4 | 38 00 00 00 */	li r0, 0x0
/* 813B0CA8 | 90 1F 00 28 */	stw r0, 0x28(r31)
.L_813B0CAC:
/* 813B0CAC | 39 61 00 30 */	addi r11, r1, 0x30
/* 813B0CB0 | 48 24 88 61 */	bl _restgpr_28
/* 813B0CB4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813B0CB8 | 7C 08 03 A6 */	mtlr r0
/* 813B0CBC | 38 21 00 30 */	addi r1, r1, 0x30
/* 813B0CC0 | 4E 80 00 20 */	blr
.endfn init__Q33ipl5scene5clockFPQ23EGG4HeapPQ33ipl4nand10LayoutFile

# .text:0x3B4 | 0x813B0CC4 | size: 0x2C
# ipl::scene::clock::time_tex::operator=(const ipl::scene::clock::time_tex&)
.fn __as__Q43ipl5scene5clock8time_texFRCQ43ipl5scene5clock8time_tex, global
/* 813B0CC4 | 81 04 00 00 */	lwz r8, 0x0(r4)
/* 813B0CC8 | 80 E4 00 04 */	lwz r7, 0x4(r4)
/* 813B0CCC | 80 C4 00 08 */	lwz r6, 0x8(r4)
/* 813B0CD0 | 80 A4 00 0C */	lwz r5, 0xc(r4)
/* 813B0CD4 | 88 04 00 10 */	lbz r0, 0x10(r4)
/* 813B0CD8 | 91 03 00 00 */	stw r8, 0x0(r3)
/* 813B0CDC | 90 E3 00 04 */	stw r7, 0x4(r3)
/* 813B0CE0 | 90 C3 00 08 */	stw r6, 0x8(r3)
/* 813B0CE4 | 90 A3 00 0C */	stw r5, 0xc(r3)
/* 813B0CE8 | 98 03 00 10 */	stb r0, 0x10(r3)
/* 813B0CEC | 4E 80 00 20 */	blr
.endfn __as__Q43ipl5scene5clock8time_texFRCQ43ipl5scene5clock8time_tex

# .text:0x3E0 | 0x813B0CF0 | size: 0x64
# OSCalendarTime::operator=(const OSCalendarTime&)
.fn __as__14OSCalendarTimeFRC14OSCalendarTime, global
/* 813B0CF0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B0CF4 | 81 84 00 04 */	lwz r12, 0x4(r4)
/* 813B0CF8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B0CFC | 83 E4 00 00 */	lwz r31, 0x0(r4)
/* 813B0D00 | 81 64 00 08 */	lwz r11, 0x8(r4)
/* 813B0D04 | 81 44 00 0C */	lwz r10, 0xc(r4)
/* 813B0D08 | 81 24 00 10 */	lwz r9, 0x10(r4)
/* 813B0D0C | 81 04 00 14 */	lwz r8, 0x14(r4)
/* 813B0D10 | 80 E4 00 18 */	lwz r7, 0x18(r4)
/* 813B0D14 | 80 C4 00 1C */	lwz r6, 0x1c(r4)
/* 813B0D18 | 80 A4 00 20 */	lwz r5, 0x20(r4)
/* 813B0D1C | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 813B0D20 | 93 E3 00 00 */	stw r31, 0x0(r3)
/* 813B0D24 | 91 83 00 04 */	stw r12, 0x4(r3)
/* 813B0D28 | 91 63 00 08 */	stw r11, 0x8(r3)
/* 813B0D2C | 91 43 00 0C */	stw r10, 0xc(r3)
/* 813B0D30 | 91 23 00 10 */	stw r9, 0x10(r3)
/* 813B0D34 | 91 03 00 14 */	stw r8, 0x14(r3)
/* 813B0D38 | 90 E3 00 18 */	stw r7, 0x18(r3)
/* 813B0D3C | 90 C3 00 1C */	stw r6, 0x1c(r3)
/* 813B0D40 | 90 A3 00 20 */	stw r5, 0x20(r3)
/* 813B0D44 | 90 03 00 24 */	stw r0, 0x24(r3)
/* 813B0D48 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B0D4C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B0D50 | 4E 80 00 20 */	blr
.endfn __as__14OSCalendarTimeFRC14OSCalendarTime

# .text:0x444 | 0x813B0D54 | size: 0x78
# ipl::scene::clock::calc()
.fn calc__Q33ipl5scene5clockFv, global
/* 813B0D54 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B0D58 | 7C 08 02 A6 */	mflr r0
/* 813B0D5C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B0D60 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B0D64 | 7C 7F 1B 78 */	mr r31, r3
/* 813B0D68 | 80 03 00 28 */	lwz r0, 0x28(r3)
/* 813B0D6C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813B0D70 | 41 82 00 34 */	beq .L_813B0DA4
/* 813B0D74 | 40 80 00 14 */	bge .L_813B0D88
/* 813B0D78 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B0D7C | 41 82 00 18 */	beq .L_813B0D94
/* 813B0D80 | 40 80 00 1C */	bge .L_813B0D9C
/* 813B0D84 | 48 00 00 2C */	b .L_813B0DB0
.L_813B0D88:
/* 813B0D88 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813B0D8C | 40 80 00 24 */	bge .L_813B0DB0
/* 813B0D90 | 48 00 00 1C */	b .L_813B0DAC
.L_813B0D94:
/* 813B0D94 | 48 00 01 05 */	bl stt_fadein__Q33ipl5scene5clockFv
/* 813B0D98 | 48 00 00 18 */	b .L_813B0DB0
.L_813B0D9C:
/* 813B0D9C | 48 00 01 C1 */	bl stt_normal__Q33ipl5scene5clockFv
/* 813B0DA0 | 48 00 00 10 */	b .L_813B0DB0
.L_813B0DA4:
/* 813B0DA4 | 48 00 02 A1 */	bl stt_wait_anm__Q33ipl5scene5clockFv
/* 813B0DA8 | 48 00 00 08 */	b .L_813B0DB0
.L_813B0DAC:
/* 813B0DAC | 48 00 03 21 */	bl stt_disappear__Q33ipl5scene5clockFv
.L_813B0DB0:
/* 813B0DB0 | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 813B0DB4 | 4B FB 99 51 */	bl calc__Q33ipl6layout6ObjectFv
/* 813B0DB8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B0DBC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B0DC0 | 7C 08 03 A6 */	mtlr r0
/* 813B0DC4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B0DC8 | 4E 80 00 20 */	blr
.endfn calc__Q33ipl5scene5clockFv

# .text:0x4BC | 0x813B0DCC | size: 0xCC
# ipl::scene::clock::draw(nw4r::lyt::Pane*)
.fn draw__Q33ipl5scene5clockFPQ34nw4r3lyt4Pane, global
/* 813B0DCC | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 813B0DD0 | 7C 08 02 A6 */	mflr r0
/* 813B0DD4 | 38 A4 00 80 */	addi r5, r4, 0x80
/* 813B0DD8 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 813B0DDC | 38 00 00 06 */	li r0, 0x6
/* 813B0DE0 | 38 C1 00 18 */	addi r6, r1, 0x18
/* 813B0DE4 | 93 E1 00 5C */	stw r31, 0x5c(r1)
/* 813B0DE8 | 93 C1 00 58 */	stw r30, 0x58(r1)
/* 813B0DEC | 7C 7E 1B 78 */	mr r30, r3
/* 813B0DF0 | 7C 09 03 A6 */	mtctr r0
.L_813B0DF4:
/* 813B0DF4 | 80 85 00 04 */	lwz r4, 0x4(r5)
/* 813B0DF8 | 84 05 00 08 */	lwzu r0, 0x8(r5)
/* 813B0DFC | 90 86 00 04 */	stw r4, 0x4(r6)
/* 813B0E00 | 94 06 00 08 */	stwu r0, 0x8(r6)
/* 813B0E04 | 42 00 FF F0 */	bdnz .L_813B0DF4
/* 813B0E08 | 80 63 00 2C */	lwz r3, 0x2c(r3)
/* 813B0E0C | 3C 80 81 65 */	lis r4, lbl_8164E284@ha
/* 813B0E10 | 38 84 E2 84 */	addi r4, r4, lbl_8164E284@l
/* 813B0E14 | 38 A0 00 01 */	li r5, 0x1
/* 813B0E18 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813B0E1C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B0E20 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813B0E24 | 7D 89 03 A6 */	mtctr r12
/* 813B0E28 | 4E 80 04 21 */	bctrl
/* 813B0E2C | C0 41 00 38 */	lfs f2, 0x38(r1)
/* 813B0E30 | 7C 7F 1B 78 */	mr r31, r3
/* 813B0E34 | C0 21 00 28 */	lfs f1, 0x28(r1)
/* 813B0E38 | C0 02 85 A0 */	lfs f0, lbl_816949A0@sda21(r0)
/* 813B0E3C | D0 23 00 2C */	stfs f1, 0x2c(r3)
/* 813B0E40 | D0 43 00 30 */	stfs f2, 0x30(r3)
/* 813B0E44 | D0 03 00 34 */	stfs f0, 0x34(r3)
/* 813B0E48 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B0E4C | 80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 813B0E50 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813B0E54 | D0 21 00 08 */	stfs f1, 0x8(r1)
/* 813B0E58 | 38 84 02 98 */	addi r4, r4, 0x298
/* 813B0E5C | D0 41 00 0C */	stfs f2, 0xc(r1)
/* 813B0E60 | D0 21 00 10 */	stfs f1, 0x10(r1)
/* 813B0E64 | D0 41 00 14 */	stfs f2, 0x14(r1)
/* 813B0E68 | D0 01 00 18 */	stfs f0, 0x18(r1)
/* 813B0E6C | 7D 89 03 A6 */	mtctr r12
/* 813B0E70 | 4E 80 04 21 */	bctrl
/* 813B0E74 | 80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 813B0E78 | 7F E4 FB 78 */	mr r4, r31
/* 813B0E7C | 4B FB 9A 11 */	bl draw__Q33ipl6layout6ObjectFPQ34nw4r3lyt4Pane
/* 813B0E80 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 813B0E84 | 83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 813B0E88 | 83 C1 00 58 */	lwz r30, 0x58(r1)
/* 813B0E8C | 7C 08 03 A6 */	mtlr r0
/* 813B0E90 | 38 21 00 60 */	addi r1, r1, 0x60
/* 813B0E94 | 4E 80 00 20 */	blr
.endfn draw__Q33ipl5scene5clockFPQ34nw4r3lyt4Pane

# .text:0x588 | 0x813B0E98 | size: 0xC4
# ipl::scene::clock::stt_fadein()
.fn stt_fadein__Q33ipl5scene5clockFv, global
/* 813B0E98 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813B0E9C | 7C 08 02 A6 */	mflr r0
/* 813B0EA0 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813B0EA4 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813B0EA8 | 48 24 86 21 */	bl _savegpr_29
/* 813B0EAC | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813B0EB0 | 38 00 00 05 */	li r0, 0x5
/* 813B0EB4 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813B0EB8 | 7C 7D 1B 78 */	mr r29, r3
/* 813B0EBC | 38 C1 00 04 */	addi r6, r1, 0x4
/* 813B0EC0 | 38 A4 00 38 */	addi r5, r4, 0x38
/* 813B0EC4 | 7C 09 03 A6 */	mtctr r0
.L_813B0EC8:
/* 813B0EC8 | 80 85 00 04 */	lwz r4, 0x4(r5)
/* 813B0ECC | 84 05 00 08 */	lwzu r0, 0x8(r5)
/* 813B0ED0 | 90 86 00 04 */	stw r4, 0x4(r6)
/* 813B0ED4 | 94 06 00 08 */	stwu r0, 0x8(r6)
/* 813B0ED8 | 42 00 FF F0 */	bdnz .L_813B0EC8
/* 813B0EDC | 38 63 00 30 */	addi r3, r3, 0x30
/* 813B0EE0 | 4B FB 35 C1 */	bl __cl__Q33ipl7utility5timerFv
/* 813B0EE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B0EE8 | 41 82 00 5C */	beq .L_813B0F44
/* 813B0EEC | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 813B0EF0 | 54 03 0F FE */	srwi r3, r0, 31
/* 813B0EF4 | 54 00 07 FE */	clrlwi r0, r0, 31
/* 813B0EF8 | 7C 00 1A 78 */	xor r0, r0, r3
/* 813B0EFC | 7C 03 00 51 */	subf. r0, r3, r0
/* 813B0F00 | 41 82 00 44 */	beq .L_813B0F44
/* 813B0F04 | 80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 813B0F08 | 38 80 00 00 */	li r4, 0x0
/* 813B0F0C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813B0F10 | 48 16 14 09 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813B0F14 | 7C 7E 1B 78 */	mr r30, r3
/* 813B0F18 | 4B FB 19 59 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B0F1C | 3B E0 00 01 */	li r31, 0x1
/* 813B0F20 | 38 80 00 01 */	li r4, 0x1
/* 813B0F24 | 93 FE 00 14 */	stw r31, 0x14(r30)
/* 813B0F28 | 80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 813B0F2C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813B0F30 | 48 16 13 E9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813B0F34 | 7C 7E 1B 78 */	mr r30, r3
/* 813B0F38 | 4B FB 19 39 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B0F3C | 93 FE 00 14 */	stw r31, 0x14(r30)
/* 813B0F40 | 93 FD 00 28 */	stw r31, 0x28(r29)
.L_813B0F44:
/* 813B0F44 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813B0F48 | 48 24 85 CD */	bl _restgpr_29
/* 813B0F4C | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 813B0F50 | 7C 08 03 A6 */	mtlr r0
/* 813B0F54 | 38 21 00 40 */	addi r1, r1, 0x40
/* 813B0F58 | 4E 80 00 20 */	blr
.endfn stt_fadein__Q33ipl5scene5clockFv

# .text:0x64C | 0x813B0F5C | size: 0xE8
# ipl::scene::clock::stt_normal()
.fn stt_normal__Q33ipl5scene5clockFv, global
/* 813B0F5C | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 813B0F60 | 7C 08 02 A6 */	mflr r0
/* 813B0F64 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813B0F68 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 813B0F6C | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813B0F70 | 38 00 00 05 */	li r0, 0x5
/* 813B0F74 | 38 A1 00 18 */	addi r5, r1, 0x18
/* 813B0F78 | 93 E1 00 4C */	stw r31, 0x4c(r1)
/* 813B0F7C | 38 84 00 38 */	addi r4, r4, 0x38
/* 813B0F80 | 93 C1 00 48 */	stw r30, 0x48(r1)
/* 813B0F84 | 7C 7E 1B 78 */	mr r30, r3
/* 813B0F88 | 7C 09 03 A6 */	mtctr r0
.L_813B0F8C:
/* 813B0F8C | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 813B0F90 | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 813B0F94 | 90 65 00 04 */	stw r3, 0x4(r5)
/* 813B0F98 | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 813B0F9C | 42 00 FF F0 */	bdnz .L_813B0F8C
/* 813B0FA0 | 7F C3 F3 78 */	mr r3, r30
/* 813B0FA4 | 38 9E 00 38 */	addi r4, r30, 0x38
/* 813B0FA8 | 38 A1 00 1C */	addi r5, r1, 0x1c
/* 813B0FAC | 48 00 05 9D */	bl is_same_hms__Q33ipl5scene5clockCFRC14OSCalendarTimeRC14OSCalendarTime
/* 813B0FB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B0FB4 | 40 82 00 38 */	bne .L_813B0FEC
/* 813B0FB8 | 7F C4 F3 78 */	mr r4, r30
/* 813B0FBC | 38 61 00 08 */	addi r3, r1, 0x8
/* 813B0FC0 | 48 00 04 41 */	bl calc_tex__Q33ipl5scene5clockCFv
/* 813B0FC4 | 7F C3 F3 78 */	mr r3, r30
/* 813B0FC8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813B0FCC | 4B FF FC F9 */	bl __as__Q43ipl5scene5clock8time_texFRCQ43ipl5scene5clock8time_tex
/* 813B0FD0 | 7F C3 F3 78 */	mr r3, r30
/* 813B0FD4 | 48 00 01 59 */	bl change_tex__Q33ipl5scene5clockFv
/* 813B0FD8 | 38 00 00 02 */	li r0, 0x2
/* 813B0FDC | 38 7E 00 38 */	addi r3, r30, 0x38
/* 813B0FE0 | 90 1E 00 28 */	stw r0, 0x28(r30)
/* 813B0FE4 | 38 81 00 1C */	addi r4, r1, 0x1c
/* 813B0FE8 | 4B FF FD 09 */	bl __as__14OSCalendarTimeFRC14OSCalendarTime
.L_813B0FEC:
/* 813B0FEC | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 813B0FF0 | 54 03 0F FE */	srwi r3, r0, 31
/* 813B0FF4 | 54 00 07 FE */	clrlwi r0, r0, 31
/* 813B0FF8 | 7C 00 1A 78 */	xor r0, r0, r3
/* 813B0FFC | 7C 03 00 51 */	subf. r0, r3, r0
/* 813B1000 | 40 82 00 2C */	bne .L_813B102C
/* 813B1004 | 80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 813B1008 | 38 80 00 02 */	li r4, 0x2
/* 813B100C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813B1010 | 48 16 13 09 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813B1014 | 7C 7F 1B 78 */	mr r31, r3
/* 813B1018 | 4B FB 18 59 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B101C | 38 60 00 01 */	li r3, 0x1
/* 813B1020 | 38 00 00 02 */	li r0, 0x2
/* 813B1024 | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 813B1028 | 90 1E 00 28 */	stw r0, 0x28(r30)
.L_813B102C:
/* 813B102C | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 813B1030 | 83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 813B1034 | 83 C1 00 48 */	lwz r30, 0x48(r1)
/* 813B1038 | 7C 08 03 A6 */	mtlr r0
/* 813B103C | 38 21 00 50 */	addi r1, r1, 0x50
/* 813B1040 | 4E 80 00 20 */	blr
.endfn stt_normal__Q33ipl5scene5clockFv

# .text:0x734 | 0x813B1044 | size: 0x88
# ipl::scene::clock::stt_wait_anm()
.fn stt_wait_anm__Q33ipl5scene5clockFv, global
/* 813B1044 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813B1048 | 7C 08 02 A6 */	mflr r0
/* 813B104C | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813B1050 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813B1054 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813B1058 | 38 00 00 05 */	li r0, 0x5
/* 813B105C | 38 C1 00 04 */	addi r6, r1, 0x4
/* 813B1060 | 93 E1 00 3C */	stw r31, 0x3c(r1)
/* 813B1064 | 7C 7F 1B 78 */	mr r31, r3
/* 813B1068 | 38 A4 00 38 */	addi r5, r4, 0x38
/* 813B106C | 7C 09 03 A6 */	mtctr r0
.L_813B1070:
/* 813B1070 | 80 85 00 04 */	lwz r4, 0x4(r5)
/* 813B1074 | 84 05 00 08 */	lwzu r0, 0x8(r5)
/* 813B1078 | 90 86 00 04 */	stw r4, 0x4(r6)
/* 813B107C | 94 06 00 08 */	stwu r0, 0x8(r6)
/* 813B1080 | 42 00 FF F0 */	bdnz .L_813B1070
/* 813B1084 | 80 63 00 2C */	lwz r3, 0x2c(r3)
/* 813B1088 | 38 80 FF FF */	li r4, -0x1
/* 813B108C | 4B FB 9A 45 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813B1090 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B1094 | 40 82 00 24 */	bne .L_813B10B8
/* 813B1098 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 813B109C | 54 03 0F FE */	srwi r3, r0, 31
/* 813B10A0 | 54 00 07 FE */	clrlwi r0, r0, 31
/* 813B10A4 | 7C 00 1A 78 */	xor r0, r0, r3
/* 813B10A8 | 7C 03 00 51 */	subf. r0, r3, r0
/* 813B10AC | 41 82 00 0C */	beq .L_813B10B8
/* 813B10B0 | 38 00 00 01 */	li r0, 0x1
/* 813B10B4 | 90 1F 00 28 */	stw r0, 0x28(r31)
.L_813B10B8:
/* 813B10B8 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 813B10BC | 83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 813B10C0 | 7C 08 03 A6 */	mtlr r0
/* 813B10C4 | 38 21 00 40 */	addi r1, r1, 0x40
/* 813B10C8 | 4E 80 00 20 */	blr
.endfn stt_wait_anm__Q33ipl5scene5clockFv

# .text:0x7BC | 0x813B10CC | size: 0x60
# ipl::scene::clock::stt_disappear()
.fn stt_disappear__Q33ipl5scene5clockFv, global
/* 813B10CC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B10D0 | 7C 08 02 A6 */	mflr r0
/* 813B10D4 | 38 80 FF FF */	li r4, -0x1
/* 813B10D8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B10DC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B10E0 | 7C 7F 1B 78 */	mr r31, r3
/* 813B10E4 | 80 63 00 2C */	lwz r3, 0x2c(r3)
/* 813B10E8 | 4B FB 99 E9 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813B10EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B10F0 | 40 82 00 28 */	bne .L_813B1118
/* 813B10F4 | 7F E3 FB 78 */	mr r3, r31
/* 813B10F8 | 48 00 00 35 */	bl change_tex__Q33ipl5scene5clockFv
/* 813B10FC | 7F E3 FB 78 */	mr r3, r31
/* 813B1100 | 48 00 01 C5 */	bl appear__Q33ipl5scene5clockFv
/* 813B1104 | 38 00 00 02 */	li r0, 0x2
/* 813B1108 | 7F E4 FB 78 */	mr r4, r31
/* 813B110C | 90 1F 00 28 */	stw r0, 0x28(r31)
/* 813B1110 | 38 7F 00 14 */	addi r3, r31, 0x14
/* 813B1114 | 4B FF FB B1 */	bl __as__Q43ipl5scene5clock8time_texFRCQ43ipl5scene5clock8time_tex
.L_813B1118:
/* 813B1118 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B111C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B1120 | 7C 08 03 A6 */	mtlr r0
/* 813B1124 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B1128 | 4E 80 00 20 */	blr
.endfn stt_disappear__Q33ipl5scene5clockFv

# .text:0x81C | 0x813B112C | size: 0x198
# ipl::scene::clock::change_tex()
.fn change_tex__Q33ipl5scene5clockFv, global
/* 813B112C | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 813B1130 | 7C 08 02 A6 */	mflr r0
/* 813B1134 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 813B1138 | 39 61 00 60 */	addi r11, r1, 0x60
/* 813B113C | 48 24 83 7D */	bl _savegpr_25
/* 813B1140 | 3C 80 81 61 */	lis r4, lbl_8160FFB8@ha
/* 813B1144 | 38 00 00 03 */	li r0, 0x3
/* 813B1148 | 38 84 FF B8 */	addi r4, r4, lbl_8160FFB8@l
/* 813B114C | 7C 7F 1B 78 */	mr r31, r3
/* 813B1150 | 38 C1 00 1C */	addi r6, r1, 0x1c
/* 813B1154 | 38 A4 FF FC */	subi r5, r4, 0x4
/* 813B1158 | 7C 09 03 A6 */	mtctr r0
.L_813B115C:
/* 813B115C | 80 85 00 04 */	lwz r4, 0x4(r5)
/* 813B1160 | 84 05 00 08 */	lwzu r0, 0x8(r5)
/* 813B1164 | 90 86 00 04 */	stw r4, 0x4(r6)
/* 813B1168 | 94 06 00 08 */	stwu r0, 0x8(r6)
/* 813B116C | 42 00 FF F0 */	bdnz .L_813B115C
/* 813B1170 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 813B1174 | 3C E0 81 65 */	lis r7, lbl_8164E1D8@ha
/* 813B1178 | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 813B117C | 38 E7 E1 D8 */	addi r7, r7, lbl_8164E1D8@l
/* 813B1180 | 54 06 10 3A */	slwi r6, r0, 2
/* 813B1184 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 813B1188 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 813B118C | 54 A5 10 3A */	slwi r5, r5, 2
/* 813B1190 | 89 03 00 10 */	lbz r8, 0x10(r3)
/* 813B1194 | 54 84 10 3A */	slwi r4, r4, 2
/* 813B1198 | 54 03 10 3A */	slwi r3, r0, 2
/* 813B119C | 7C C7 30 2E */	lwzx r6, r7, r6
/* 813B11A0 | 7C A7 28 2E */	lwzx r5, r7, r5
/* 813B11A4 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 813B11A8 | 7C 87 20 2E */	lwzx r4, r7, r4
/* 813B11AC | 38 0D 89 55 */	li r0, lbl_81696995@sda21
/* 813B11B0 | 7C 67 18 2E */	lwzx r3, r7, r3
/* 813B11B4 | 90 C1 00 08 */	stw r6, 0x8(r1)
/* 813B11B8 | 90 A1 00 0C */	stw r5, 0xc(r1)
/* 813B11BC | 90 81 00 10 */	stw r4, 0x10(r1)
/* 813B11C0 | 90 61 00 14 */	stw r3, 0x14(r1)
/* 813B11C4 | 41 82 00 08 */	beq .L_813B11CC
/* 813B11C8 | 38 0D 89 52 */	li r0, lbl_81696992@sda21
.L_813B11CC:
/* 813B11CC | 2C 08 00 00 */	cmpwi r8, 0x0
/* 813B11D0 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 813B11D4 | 38 0D 89 55 */	li r0, lbl_81696995@sda21
/* 813B11D8 | 41 82 00 08 */	beq .L_813B11E0
/* 813B11DC | 38 0D 89 52 */	li r0, lbl_81696992@sda21
.L_813B11E0:
/* 813B11E0 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 813B11E4 | 3B 61 00 20 */	addi r27, r1, 0x20
/* 813B11E8 | 3B 81 00 08 */	addi r28, r1, 0x8
/* 813B11EC | 3B 20 00 00 */	li r25, 0x0
/* 813B11F0 | 3B C0 00 00 */	li r30, 0x0
.L_813B11F4:
/* 813B11F4 | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 813B11F8 | 38 A0 00 01 */	li r5, 0x1
/* 813B11FC | 7C 9B F0 2E */	lwzx r4, r27, r30
/* 813B1200 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813B1204 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B1208 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813B120C | 7D 89 03 A6 */	mtctr r12
/* 813B1210 | 4E 80 04 21 */	bctrl
/* 813B1214 | 80 DF 00 2C */	lwz r6, 0x2c(r31)
/* 813B1218 | 7C 7A 1B 78 */	mr r26, r3
/* 813B121C | 7C 9C F0 2E */	lwzx r4, r28, r30
/* 813B1220 | 38 A0 00 01 */	li r5, 0x1
/* 813B1224 | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 813B1228 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B122C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813B1230 | 7D 89 03 A6 */	mtctr r12
/* 813B1234 | 4E 80 04 21 */	bctrl
/* 813B1238 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B123C | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 813B1240 | 7D 89 03 A6 */	mtctr r12
/* 813B1244 | 4E 80 04 21 */	bctrl
/* 813B1248 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 813B124C | 7C 7D 1B 78 */	mr r29, r3
/* 813B1250 | 7F 43 D3 78 */	mr r3, r26
/* 813B1254 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 813B1258 | 7D 89 03 A6 */	mtctr r12
/* 813B125C | 4E 80 04 21 */	bctrl
/* 813B1260 | 7F A4 EB 78 */	mr r4, r29
/* 813B1264 | 38 A0 00 00 */	li r5, 0x0
/* 813B1268 | 4B FB 33 49 */	bl set_texture__Q33ipl7utility6layoutFPQ34nw4r3lyt8MaterialPCQ34nw4r3lyt8MaterialUc
/* 813B126C | 3B 39 00 01 */	addi r25, r25, 0x1
/* 813B1270 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 813B1274 | 2C 19 00 06 */	cmpwi r25, 0x6
/* 813B1278 | 41 80 FF 7C */	blt .L_813B11F4
/* 813B127C | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 813B1280 | 38 8D 89 13 */	li r4, lbl_81696953@sda21
/* 813B1284 | 38 A0 00 01 */	li r5, 0x1
/* 813B1288 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813B128C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B1290 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813B1294 | 7D 89 03 A6 */	mtctr r12
/* 813B1298 | 4E 80 04 21 */	bctrl
/* 813B129C | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 813B12A0 | 30 04 FF FF */	subic r0, r4, 0x1
/* 813B12A4 | 7C 80 21 10 */	subfe r4, r0, r4
/* 813B12A8 | 4B F9 31 6D */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813B12AC | 39 61 00 60 */	addi r11, r1, 0x60
/* 813B12B0 | 48 24 82 55 */	bl _restgpr_25
/* 813B12B4 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 813B12B8 | 7C 08 03 A6 */	mtlr r0
/* 813B12BC | 38 21 00 60 */	addi r1, r1, 0x60
/* 813B12C0 | 4E 80 00 20 */	blr
.endfn change_tex__Q33ipl5scene5clockFv

# .text:0x9B4 | 0x813B12C4 | size: 0x13C
# ipl::scene::clock::appear()
.fn appear__Q33ipl5scene5clockFv, global
/* 813B12C4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813B12C8 | 7C 08 02 A6 */	mflr r0
/* 813B12CC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813B12D0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813B12D4 | 48 24 81 F5 */	bl _savegpr_29
/* 813B12D8 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 813B12DC | 7C 7F 1B 78 */	mr r31, r3
/* 813B12E0 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813B12E4 | 7C 04 00 00 */	cmpw r4, r0
/* 813B12E8 | 41 82 00 24 */	beq .L_813B130C
/* 813B12EC | 80 63 00 2C */	lwz r3, 0x2c(r3)
/* 813B12F0 | 38 80 00 06 */	li r4, 0x6
/* 813B12F4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813B12F8 | 48 16 10 21 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813B12FC | 7C 7E 1B 78 */	mr r30, r3
/* 813B1300 | 4B FB 15 71 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B1304 | 38 00 00 01 */	li r0, 0x1
/* 813B1308 | 90 1E 00 14 */	stw r0, 0x14(r30)
.L_813B130C:
/* 813B130C | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 813B1310 | 80 1F 00 18 */	lwz r0, 0x18(r31)
/* 813B1314 | 7C 03 00 00 */	cmpw r3, r0
/* 813B1318 | 41 82 00 24 */	beq .L_813B133C
/* 813B131C | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 813B1320 | 38 80 00 05 */	li r4, 0x5
/* 813B1324 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813B1328 | 48 16 0F F1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813B132C | 7C 7E 1B 78 */	mr r30, r3
/* 813B1330 | 4B FB 15 41 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B1334 | 38 00 00 01 */	li r0, 0x1
/* 813B1338 | 90 1E 00 14 */	stw r0, 0x14(r30)
.L_813B133C:
/* 813B133C | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813B1340 | 80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 813B1344 | 7C 03 00 00 */	cmpw r3, r0
/* 813B1348 | 41 82 00 24 */	beq .L_813B136C
/* 813B134C | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 813B1350 | 38 80 00 04 */	li r4, 0x4
/* 813B1354 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813B1358 | 48 16 0F C1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813B135C | 7C 7E 1B 78 */	mr r30, r3
/* 813B1360 | 4B FB 15 11 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B1364 | 38 00 00 01 */	li r0, 0x1
/* 813B1368 | 90 1E 00 14 */	stw r0, 0x14(r30)
.L_813B136C:
/* 813B136C | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 813B1370 | 80 1F 00 20 */	lwz r0, 0x20(r31)
/* 813B1374 | 7C 03 00 00 */	cmpw r3, r0
/* 813B1378 | 41 82 00 24 */	beq .L_813B139C
/* 813B137C | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 813B1380 | 38 80 00 03 */	li r4, 0x3
/* 813B1384 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813B1388 | 48 16 0F 91 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813B138C | 7C 7E 1B 78 */	mr r30, r3
/* 813B1390 | 4B FB 14 E1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B1394 | 38 00 00 01 */	li r0, 0x1
/* 813B1398 | 90 1E 00 14 */	stw r0, 0x14(r30)
.L_813B139C:
/* 813B139C | 88 7F 00 10 */	lbz r3, 0x10(r31)
/* 813B13A0 | 88 1F 00 24 */	lbz r0, 0x24(r31)
/* 813B13A4 | 7C 03 00 40 */	cmplw r3, r0
/* 813B13A8 | 41 82 00 40 */	beq .L_813B13E8
/* 813B13AC | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 813B13B0 | 38 80 00 07 */	li r4, 0x7
/* 813B13B4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813B13B8 | 48 16 0F 61 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813B13BC | 7C 7D 1B 78 */	mr r29, r3
/* 813B13C0 | 4B FB 14 B1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B13C4 | 3B C0 00 01 */	li r30, 0x1
/* 813B13C8 | 38 80 00 08 */	li r4, 0x8
/* 813B13CC | 93 DD 00 14 */	stw r30, 0x14(r29)
/* 813B13D0 | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 813B13D4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813B13D8 | 48 16 0F 41 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813B13DC | 7C 7D 1B 78 */	mr r29, r3
/* 813B13E0 | 4B FB 14 91 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B13E4 | 93 DD 00 14 */	stw r30, 0x14(r29)
.L_813B13E8:
/* 813B13E8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813B13EC | 48 24 81 29 */	bl _restgpr_29
/* 813B13F0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813B13F4 | 7C 08 03 A6 */	mtlr r0
/* 813B13F8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813B13FC | 4E 80 00 20 */	blr
.endfn appear__Q33ipl5scene5clockFv

# .text:0xAF0 | 0x813B1400 | size: 0x148
# ipl::scene::clock::calc_tex() const
.fn calc_tex__Q33ipl5scene5clockCFv, global
/* 813B1400 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 813B1404 | 7C 08 02 A6 */	mflr r0
/* 813B1408 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813B140C | 90 01 00 54 */	stw r0, 0x54(r1)
/* 813B1410 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813B1414 | 38 00 00 05 */	li r0, 0x5
/* 813B1418 | 38 A1 00 18 */	addi r5, r1, 0x18
/* 813B141C | 93 E1 00 4C */	stw r31, 0x4c(r1)
/* 813B1420 | 7C 7F 1B 78 */	mr r31, r3
/* 813B1424 | 38 84 00 38 */	addi r4, r4, 0x38
/* 813B1428 | 93 C1 00 48 */	stw r30, 0x48(r1)
/* 813B142C | 7C 09 03 A6 */	mtctr r0
.L_813B1430:
/* 813B1430 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 813B1434 | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 813B1438 | 90 65 00 04 */	stw r3, 0x4(r5)
/* 813B143C | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 813B1440 | 42 00 FF F0 */	bdnz .L_813B1430
/* 813B1444 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813B1448 | 3B C0 00 0C */	li r30, 0xc
/* 813B144C | 38 60 00 00 */	li r3, 0x0
/* 813B1450 | 7C 04 FE 70 */	srawi r4, r0, 31
/* 813B1454 | 7C 1E 00 10 */	subfc r0, r30, r0
/* 813B1458 | 7C 04 19 14 */	adde r0, r4, r3
/* 813B145C | 98 01 00 18 */	stb r0, 0x18(r1)
/* 813B1460 | 4B F8 46 2D */	bl getRegion__Q23ipl6SystemFv
/* 813B1464 | 28 03 00 02 */	cmplwi r3, 0x2
/* 813B1468 | 41 82 00 50 */	beq .L_813B14B8
/* 813B146C | 4B F8 46 21 */	bl getRegion__Q23ipl6SystemFv
/* 813B1470 | 28 03 00 0B */	cmplwi r3, 0xb
/* 813B1474 | 41 82 00 44 */	beq .L_813B14B8
/* 813B1478 | 80 61 00 24 */	lwz r3, 0x24(r1)
/* 813B147C | 7C 03 F3 D6 */	divw r0, r3, r30
/* 813B1480 | 7C 00 F1 D6 */	mullw r0, r0, r30
/* 813B1484 | 7C 00 18 50 */	subf r0, r0, r3
/* 813B1488 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813B148C | 4B F8 46 01 */	bl getRegion__Q23ipl6SystemFv
/* 813B1490 | 28 03 00 01 */	cmplwi r3, 0x1
/* 813B1494 | 41 82 00 10 */	beq .L_813B14A4
/* 813B1498 | 4B F8 45 F5 */	bl getRegion__Q23ipl6SystemFv
/* 813B149C | 28 03 00 06 */	cmplwi r3, 0x6
/* 813B14A0 | 40 82 00 18 */	bne .L_813B14B8
.L_813B14A4:
/* 813B14A4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813B14A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B14AC | 40 82 00 0C */	bne .L_813B14B8
/* 813B14B0 | 38 00 00 0C */	li r0, 0xc
/* 813B14B4 | 90 01 00 24 */	stw r0, 0x24(r1)
.L_813B14B8:
/* 813B14B8 | 81 61 00 24 */	lwz r11, 0x24(r1)
/* 813B14BC | 39 40 00 0A */	li r10, 0xa
/* 813B14C0 | 81 81 00 20 */	lwz r12, 0x20(r1)
/* 813B14C4 | 38 00 00 02 */	li r0, 0x2
/* 813B14C8 | 7D 2B 53 D6 */	divw r9, r11, r10
/* 813B14CC | 38 BF FF FC */	subi r5, r31, 0x4
/* 813B14D0 | 38 81 00 04 */	addi r4, r1, 0x4
/* 813B14D4 | 7C EC 53 D6 */	divw r7, r12, r10
/* 813B14D8 | 7C C9 53 D6 */	divw r6, r9, r10
/* 813B14DC | 7C C6 51 D6 */	mullw r6, r6, r10
/* 813B14E0 | 7C C6 48 50 */	subf r6, r6, r9
/* 813B14E4 | 7C 67 53 D6 */	divw r3, r7, r10
/* 813B14E8 | 90 C1 00 08 */	stw r6, 0x8(r1)
/* 813B14EC | 7C C3 51 D6 */	mullw r6, r3, r10
/* 813B14F0 | 7D 09 51 D6 */	mullw r8, r9, r10
/* 813B14F4 | 7C C6 38 50 */	subf r6, r6, r7
/* 813B14F8 | 90 C1 00 10 */	stw r6, 0x10(r1)
/* 813B14FC | 7C 68 58 50 */	subf r3, r8, r11
/* 813B1500 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 813B1504 | 7C 67 51 D6 */	mullw r3, r7, r10
/* 813B1508 | 7C 63 60 50 */	subf r3, r3, r12
/* 813B150C | 90 61 00 14 */	stw r3, 0x14(r1)
/* 813B1510 | 7C 09 03 A6 */	mtctr r0
.L_813B1514:
/* 813B1514 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 813B1518 | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 813B151C | 90 65 00 04 */	stw r3, 0x4(r5)
/* 813B1520 | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 813B1524 | 42 00 FF F0 */	bdnz .L_813B1514
/* 813B1528 | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 813B152C | 90 05 00 04 */	stw r0, 0x4(r5)
/* 813B1530 | 83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 813B1534 | 83 C1 00 48 */	lwz r30, 0x48(r1)
/* 813B1538 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 813B153C | 7C 08 03 A6 */	mtlr r0
/* 813B1540 | 38 21 00 50 */	addi r1, r1, 0x50
/* 813B1544 | 4E 80 00 20 */	blr
.endfn calc_tex__Q33ipl5scene5clockCFv

# .text:0xC38 | 0x813B1548 | size: 0x3C
# ipl::scene::clock::is_same_hms(const OSCalendarTime&, const OSCalendarTime&) const
.fn is_same_hms__Q33ipl5scene5clockCFRC14OSCalendarTimeRC14OSCalendarTime, global
/* 813B1548 | 80 C4 00 08 */	lwz r6, 0x8(r4)
/* 813B154C | 38 60 00 00 */	li r3, 0x0
/* 813B1550 | 80 05 00 08 */	lwz r0, 0x8(r5)
/* 813B1554 | 7C 06 00 00 */	cmpw r6, r0
/* 813B1558 | 4C 82 00 20 */	bnelr
/* 813B155C | 80 C4 00 04 */	lwz r6, 0x4(r4)
/* 813B1560 | 80 05 00 04 */	lwz r0, 0x4(r5)
/* 813B1564 | 7C 06 00 00 */	cmpw r6, r0
/* 813B1568 | 4C 82 00 20 */	bnelr
/* 813B156C | 80 84 00 0C */	lwz r4, 0xc(r4)
/* 813B1570 | 80 05 00 0C */	lwz r0, 0xc(r5)
/* 813B1574 | 7C 04 00 00 */	cmpw r4, r0
/* 813B1578 | 4C 82 00 20 */	bnelr
/* 813B157C | 38 60 00 01 */	li r3, 0x1
/* 813B1580 | 4E 80 00 20 */	blr
.endfn is_same_hms__Q33ipl5scene5clockCFRC14OSCalendarTimeRC14OSCalendarTime

# 0x8160FFB8..0x8160FFD0 | size: 0x18
.rodata
.balign 8

# .rodata:0x0 | 0x8160FFB8 | size: 0x18
.obj lbl_8160FFB8, global
	.4byte lbl_81696968
	.4byte lbl_8169696F
	.4byte lbl_81696976
	.4byte lbl_8169697D
	.4byte lbl_81696984
	.4byte lbl_8169698A
.endobj lbl_8160FFB8

# 0x8164E1D8..0x8164E290 | size: 0xB8
.data
.balign 8

# .data:0x0 | 0x8164E1D8 | size: 0xAC
.obj lbl_8164E1D8, global
	.4byte lbl_81696900
	.4byte lbl_81696905
	.4byte lbl_8169690A
	.4byte lbl_8169690F
	.4byte lbl_81696914
	.4byte lbl_81696919
	.4byte lbl_8169691E
	.4byte lbl_81696923
	.4byte lbl_81696928
	.4byte lbl_8169692D
	.4byte 0x6D795F43
	.4byte 0x6C6F636B
	.4byte 0x5F612E62
	.4byte 0x726C7974
	.4byte 0x006D795F
	.4byte 0x436C6F63
	.4byte 0x6B5F615F
	.4byte 0x4368616E
	.4byte 0x67652E62
	.4byte 0x726C616E
	.4byte 0x00545F57
	.4byte 0x69694D65
	.4byte 0x6E75006D
	.4byte 0x795F436C
	.4byte 0x6F636B5F
	.4byte 0x615F4D69
	.4byte 0x6E2E6272
	.4byte 0x6C616E00
	.4byte 0x436C6F63
	.4byte 0x6B54656E
	.4byte 0x006D795F
	.4byte 0x436C6F63
	.4byte 0x6B5F615F
	.4byte 0x4E756D41
	.4byte 0x70656172
	.4byte 0x2E62726C
	.4byte 0x616E006D
	.4byte 0x795F436C
	.4byte 0x6F636B5F
	.4byte 0x615F4E75
	.4byte 0x6D4C6F73
	.4byte 0x742E6272
	.4byte 0x6C616E00
.endobj lbl_8164E1D8

# .data:0xAC | 0x8164E284 | size: 0xC
.obj lbl_8164E284, global
	.4byte 0x4E5F5769
	.4byte 0x694D656E
	.4byte 0x75000000
.endobj lbl_8164E284

# 0x816949A0..0x816949A8 | size: 0x8
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x816949A0 | size: 0x8
.obj lbl_816949A0, global
	.float 0
	.float 0
.endobj lbl_816949A0

# 0x81696900..0x81696998 | size: 0x98
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696900 | size: 0x5
.obj lbl_81696900, global
	.string "Num0"
.endobj lbl_81696900

# .sdata:0x5 | 0x81696905 | size: 0x5
.obj lbl_81696905, global
	.string "Num1"
.endobj lbl_81696905

# .sdata:0xA | 0x8169690A | size: 0x5
.obj lbl_8169690A, global
	.string "Num2"
.endobj lbl_8169690A

# .sdata:0xF | 0x8169690F | size: 0x5
.obj lbl_8169690F, global
	.string "Num3"
.endobj lbl_8169690F

# .sdata:0x14 | 0x81696914 | size: 0x5
.obj lbl_81696914, global
	.string "Num4"
.endobj lbl_81696914

# .sdata:0x19 | 0x81696919 | size: 0x5
.obj lbl_81696919, global
	.string "Num5"
.endobj lbl_81696919

# .sdata:0x1E | 0x8169691E | size: 0x5
.obj lbl_8169691E, global
	.string "Num6"
.endobj lbl_8169691E

# .sdata:0x23 | 0x81696923 | size: 0x5
.obj lbl_81696923, global
	.string "Num7"
.endobj lbl_81696923

# .sdata:0x28 | 0x81696928 | size: 0x5
.obj lbl_81696928, global
	.string "Num8"
.endobj lbl_81696928

# .sdata:0x2D | 0x8169692D | size: 0x5
.obj lbl_8169692D, global
	.string "Num9"
.endobj lbl_8169692D

# .sdata:0x32 | 0x81696932 | size: 0x4
.obj lbl_81696932, global
	.string "arc"
.endobj lbl_81696932

# .sdata:0x36 | 0x81696936 | size: 0x8
.obj lbl_81696936, global
	.string "N_Clock"
.endobj lbl_81696936

# .sdata:0x3E | 0x8169693E | size: 0x7
.obj lbl_8169693E, global
	.string "Clock0"
.endobj lbl_8169693E

# .sdata:0x45 | 0x81696945 | size: 0x7
.obj lbl_81696945, global
	.string "Clock1"
.endobj lbl_81696945

# .sdata:0x4C | 0x8169694C | size: 0x7
.obj lbl_8169694C, global
	.string "Clock2"
.endobj lbl_8169694C

# .sdata:0x53 | 0x81696953 | size: 0x7
.obj lbl_81696953, global
	.string "Clock3"
.endobj lbl_81696953

# .sdata:0x5A | 0x8169695A | size: 0x6
.obj lbl_8169695A, global
	.string "AM_PM"
.endobj lbl_8169695A

# .sdata:0x60 | 0x81696960 | size: 0x8
.obj lbl_81696960, global
	.string "AM_PM_R"
.endobj lbl_81696960

# .sdata:0x68 | 0x81696968 | size: 0x7
.obj lbl_81696968, global
	.string "Clock0"
.endobj lbl_81696968

# .sdata:0x6F | 0x8169696F | size: 0x7
.obj lbl_8169696F, global
	.string "Clock1"
.endobj lbl_8169696F

# .sdata:0x76 | 0x81696976 | size: 0x7
.obj lbl_81696976, global
	.string "Clock2"
.endobj lbl_81696976

# .sdata:0x7D | 0x8169697D | size: 0x7
.obj lbl_8169697D, global
	.string "Clock3"
.endobj lbl_8169697D

# .sdata:0x84 | 0x81696984 | size: 0x6
.obj lbl_81696984, global
	.string "AM_PM"
.endobj lbl_81696984

# .sdata:0x8A | 0x8169698A | size: 0x8
.obj lbl_8169698A, global
	.string "AM_PM_R"
.endobj lbl_8169698A

# .sdata:0x92 | 0x81696992 | size: 0x3
.obj lbl_81696992, global
	.string "PM"
.endobj lbl_81696992

# .sdata:0x95 | 0x81696995 | size: 0x3
.obj lbl_81696995, global
	.string "AM"
.endobj lbl_81696995
