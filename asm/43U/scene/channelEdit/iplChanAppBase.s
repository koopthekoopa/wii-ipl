.include "macros.inc"
.file "iplChanAppBase.cpp"

# 0x813A3864..0x813A4710 | size: 0xEAC
.text
.balign 4

# .text:0x0 | 0x813A3864 | size: 0x574
# ipl::scene::ChanAppBase::ChanAppBase(EGG::Heap*, ipl::nand::LayoutFile*, const char*, const char*)
.fn __ct__Q33ipl5scene11ChanAppBaseFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc, global
/* 813A3864 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813A3868 | 7C 08 02 A6 */	mflr r0
/* 813A386C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813A3870 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813A3874 | 48 25 5C 45 */	bl _savegpr_25
/* 813A3878 | 3D 00 81 65 */	lis r8, __vt__Q33ipl5scene13AnmController@ha
/* 813A387C | 3B A0 00 00 */	li r29, 0x0
/* 813A3880 | 39 08 D0 F8 */	addi r8, r8, __vt__Q33ipl5scene13AnmController@l
/* 813A3884 | 3F E0 81 65 */	lis r31, lbl_8164CC68@ha
/* 813A3888 | 91 03 00 00 */	stw r8, 0x0(r3)
/* 813A388C | 7C 7E 1B 78 */	mr r30, r3
/* 813A3890 | 7C 99 23 78 */	mr r25, r4
/* 813A3894 | 7C BA 2B 78 */	mr r26, r5
/* 813A3898 | 90 83 00 24 */	stw r4, 0x24(r3)
/* 813A389C | 7C DB 33 78 */	mr r27, r6
/* 813A38A0 | 7C FC 3B 78 */	mr r28, r7
/* 813A38A4 | 3B FF CC 68 */	addi r31, r31, lbl_8164CC68@l
/* 813A38A8 | 93 A3 00 04 */	stw r29, 0x4(r3)
/* 813A38AC | 38 80 00 04 */	li r4, 0x4
/* 813A38B0 | 38 63 00 0C */	addi r3, r3, 0xc
/* 813A38B4 | 48 16 E7 A9 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813A38B8 | 38 7E 00 18 */	addi r3, r30, 0x18
/* 813A38BC | 38 80 00 00 */	li r4, 0x0
/* 813A38C0 | 48 16 E7 9D */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813A38C4 | 3C 60 81 65 */	lis r3, __vt__Q33ipl5scene11ChanAppBase@ha
/* 813A38C8 | 93 BE 00 30 */	stw r29, 0x30(r30)
/* 813A38CC | 38 63 D0 3C */	addi r3, r3, __vt__Q33ipl5scene11ChanAppBase@l
/* 813A38D0 | 7F 24 CB 78 */	mr r4, r25
/* 813A38D4 | 38 03 00 0C */	addi r0, r3, 0xc
/* 813A38D8 | 90 7E 00 00 */	stw r3, 0x0(r30)
/* 813A38DC | 38 60 05 80 */	li r3, 0x580
/* 813A38E0 | 38 A0 00 04 */	li r5, 0x4
/* 813A38E4 | 90 1E 00 28 */	stw r0, 0x28(r30)
/* 813A38E8 | 93 BE 00 34 */	stw r29, 0x34(r30)
/* 813A38EC | 48 25 47 C5 */	bl __nw__FUlPQ23EGG4Heapi
/* 813A38F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A38F4 | 41 82 00 18 */	beq .L_813A390C
/* 813A38F8 | 7F 24 CB 78 */	mr r4, r25
/* 813A38FC | 7F 45 D3 78 */	mr r5, r26
/* 813A3900 | 7F 66 DB 78 */	mr r6, r27
/* 813A3904 | 7F 87 E3 78 */	mr r7, r28
/* 813A3908 | 4B FC 67 1D */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813A390C:
/* 813A390C | 90 7E 00 04 */	stw r3, 0x4(r30)
/* 813A3910 | 7F C3 F3 78 */	mr r3, r30
/* 813A3914 | 38 9F 00 00 */	addi r4, r31, 0x0
/* 813A3918 | 38 BF 00 21 */	addi r5, r31, 0x21
/* 813A391C | 48 00 37 79 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A3920 | 7F C3 F3 78 */	mr r3, r30
/* 813A3924 | 38 9F 00 2B */	addi r4, r31, 0x2b
/* 813A3928 | 38 BF 00 21 */	addi r5, r31, 0x21
/* 813A392C | 48 00 37 69 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A3930 | 7F C3 F3 78 */	mr r3, r30
/* 813A3934 | 38 9F 00 4D */	addi r4, r31, 0x4d
/* 813A3938 | 38 BF 00 70 */	addi r5, r31, 0x70
/* 813A393C | 48 00 37 59 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A3940 | 7F C3 F3 78 */	mr r3, r30
/* 813A3944 | 38 9F 00 79 */	addi r4, r31, 0x79
/* 813A3948 | 38 BF 00 A5 */	addi r5, r31, 0xa5
/* 813A394C | 48 00 37 49 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A3950 | 7F C3 F3 78 */	mr r3, r30
/* 813A3954 | 38 9F 00 B1 */	addi r4, r31, 0xb1
/* 813A3958 | 38 BF 00 A5 */	addi r5, r31, 0xa5
/* 813A395C | 48 00 37 39 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A3960 | 7F C3 F3 78 */	mr r3, r30
/* 813A3964 | 38 9F 00 DE */	addi r4, r31, 0xde
/* 813A3968 | 38 BF 00 70 */	addi r5, r31, 0x70
/* 813A396C | 48 00 37 29 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A3970 | 7F C3 F3 78 */	mr r3, r30
/* 813A3974 | 38 9F 01 07 */	addi r4, r31, 0x107
/* 813A3978 | 38 BF 01 2C */	addi r5, r31, 0x12c
/* 813A397C | 48 00 37 19 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A3980 | 7F C3 F3 78 */	mr r3, r30
/* 813A3984 | 38 9F 01 37 */	addi r4, r31, 0x137
/* 813A3988 | 38 BF 01 2C */	addi r5, r31, 0x12c
/* 813A398C | 48 00 37 09 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A3990 | 7F C3 F3 78 */	mr r3, r30
/* 813A3994 | 38 9F 01 5D */	addi r4, r31, 0x15d
/* 813A3998 | 38 BF 00 70 */	addi r5, r31, 0x70
/* 813A399C | 48 00 36 F9 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A39A0 | 7F C3 F3 78 */	mr r3, r30
/* 813A39A4 | 38 9F 01 85 */	addi r4, r31, 0x185
/* 813A39A8 | 38 AD 87 E0 */	li r5, lbl_81696820@sda21
/* 813A39AC | 48 00 36 E9 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A39B0 | 7F C3 F3 78 */	mr r3, r30
/* 813A39B4 | 38 9F 01 A5 */	addi r4, r31, 0x1a5
/* 813A39B8 | 38 AD 87 E0 */	li r5, lbl_81696820@sda21
/* 813A39BC | 48 00 36 D9 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A39C0 | 7F C3 F3 78 */	mr r3, r30
/* 813A39C4 | 38 9F 01 C5 */	addi r4, r31, 0x1c5
/* 813A39C8 | 38 BF 01 E6 */	addi r5, r31, 0x1e6
/* 813A39CC | 48 00 36 C9 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A39D0 | 7F C3 F3 78 */	mr r3, r30
/* 813A39D4 | 38 9F 01 C5 */	addi r4, r31, 0x1c5
/* 813A39D8 | 38 BF 01 F0 */	addi r5, r31, 0x1f0
/* 813A39DC | 48 00 36 B9 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A39E0 | 7F C3 F3 78 */	mr r3, r30
/* 813A39E4 | 38 9F 01 FA */	addi r4, r31, 0x1fa
/* 813A39E8 | 38 BF 02 1C */	addi r5, r31, 0x21c
/* 813A39EC | 48 00 36 A9 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A39F0 | 7F C3 F3 78 */	mr r3, r30
/* 813A39F4 | 38 9F 01 FA */	addi r4, r31, 0x1fa
/* 813A39F8 | 38 BF 02 29 */	addi r5, r31, 0x229
/* 813A39FC | 48 00 36 99 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A3A00 | 7F C3 F3 78 */	mr r3, r30
/* 813A3A04 | 38 9F 02 36 */	addi r4, r31, 0x236
/* 813A3A08 | 38 BF 02 1C */	addi r5, r31, 0x21c
/* 813A3A0C | 48 00 36 89 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A3A10 | 7F C3 F3 78 */	mr r3, r30
/* 813A3A14 | 38 9F 02 36 */	addi r4, r31, 0x236
/* 813A3A18 | 38 BF 02 29 */	addi r5, r31, 0x229
/* 813A3A1C | 48 00 36 79 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A3A20 | 7F C3 F3 78 */	mr r3, r30
/* 813A3A24 | 38 9F 02 59 */	addi r4, r31, 0x259
/* 813A3A28 | 38 BF 02 78 */	addi r5, r31, 0x278
/* 813A3A2C | 48 00 36 69 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A3A30 | 7F C3 F3 78 */	mr r3, r30
/* 813A3A34 | 38 9F 02 82 */	addi r4, r31, 0x282
/* 813A3A38 | 38 BF 02 A3 */	addi r5, r31, 0x2a3
/* 813A3A3C | 48 00 36 59 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A3A40 | 7F C3 F3 78 */	mr r3, r30
/* 813A3A44 | 38 9F 02 82 */	addi r4, r31, 0x282
/* 813A3A48 | 38 BF 02 AE */	addi r5, r31, 0x2ae
/* 813A3A4C | 48 00 36 49 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A3A50 | 7F C3 F3 78 */	mr r3, r30
/* 813A3A54 | 38 9F 02 B9 */	addi r4, r31, 0x2b9
/* 813A3A58 | 38 BF 02 A3 */	addi r5, r31, 0x2a3
/* 813A3A5C | 48 00 36 39 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A3A60 | 7F C3 F3 78 */	mr r3, r30
/* 813A3A64 | 38 9F 02 B9 */	addi r4, r31, 0x2b9
/* 813A3A68 | 38 BF 02 AE */	addi r5, r31, 0x2ae
/* 813A3A6C | 48 00 36 29 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A3A70 | 7F C3 F3 78 */	mr r3, r30
/* 813A3A74 | 38 9F 02 D8 */	addi r4, r31, 0x2d8
/* 813A3A78 | 38 BF 02 FD */	addi r5, r31, 0x2fd
/* 813A3A7C | 48 00 36 19 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A3A80 | 7F C3 F3 78 */	mr r3, r30
/* 813A3A84 | 38 9F 03 08 */	addi r4, r31, 0x308
/* 813A3A88 | 38 BF 02 FD */	addi r5, r31, 0x2fd
/* 813A3A8C | 48 00 36 09 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813A3A90 | 7F C3 F3 78 */	mr r3, r30
/* 813A3A94 | 38 80 00 04 */	li r4, 0x4
/* 813A3A98 | 48 00 37 49 */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813A3A9C | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 813A3AA0 | 3B A0 00 01 */	li r29, 0x1
/* 813A3AA4 | 7F C3 F3 78 */	mr r3, r30
/* 813A3AA8 | 38 80 00 07 */	li r4, 0x7
/* 813A3AAC | 93 A5 00 18 */	stw r29, 0x18(r5)
/* 813A3AB0 | 48 00 37 31 */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813A3AB4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813A3AB8 | 93 A3 00 18 */	stw r29, 0x18(r3)
/* 813A3ABC | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813A3AC0 | 4B FC 6B 75 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813A3AC4 | 7F C3 F3 78 */	mr r3, r30
/* 813A3AC8 | 38 9F 03 2E */	addi r4, r31, 0x32e
/* 813A3ACC | 38 A0 01 3D */	li r5, 0x13d
/* 813A3AD0 | 48 00 38 A9 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcUl
/* 813A3AD4 | 7F C3 F3 78 */	mr r3, r30
/* 813A3AD8 | 38 9F 03 3D */	addi r4, r31, 0x33d
/* 813A3ADC | 38 A0 01 3D */	li r5, 0x13d
/* 813A3AE0 | 48 00 38 99 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcUl
/* 813A3AE4 | 7F C3 F3 78 */	mr r3, r30
/* 813A3AE8 | 38 9F 03 4C */	addi r4, r31, 0x34c
/* 813A3AEC | 38 A0 01 3E */	li r5, 0x13e
/* 813A3AF0 | 48 00 38 89 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcUl
/* 813A3AF4 | 7F C3 F3 78 */	mr r3, r30
/* 813A3AF8 | 38 9F 03 5A */	addi r4, r31, 0x35a
/* 813A3AFC | 38 A0 01 3E */	li r5, 0x13e
/* 813A3B00 | 48 00 38 79 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcUl
/* 813A3B04 | 7F C3 F3 78 */	mr r3, r30
/* 813A3B08 | 38 9F 03 68 */	addi r4, r31, 0x368
/* 813A3B0C | 38 AD 87 E6 */	li r5, lbl_81696826@sda21
/* 813A3B10 | 48 00 38 F1 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
/* 813A3B14 | 7F C3 F3 78 */	mr r3, r30
/* 813A3B18 | 38 8D 87 EA */	li r4, lbl_8169682A@sda21
/* 813A3B1C | 38 A0 00 00 */	li r5, 0x0
/* 813A3B20 | 48 00 39 B5 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A3B24 | 7F C3 F3 78 */	mr r3, r30
/* 813A3B28 | 38 8D 87 F1 */	li r4, lbl_81696831@sda21
/* 813A3B2C | 38 A0 00 00 */	li r5, 0x0
/* 813A3B30 | 48 00 39 A5 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A3B34 | 7F C3 F3 78 */	mr r3, r30
/* 813A3B38 | 38 9F 03 73 */	addi r4, r31, 0x373
/* 813A3B3C | 38 A0 00 00 */	li r5, 0x0
/* 813A3B40 | 48 00 39 95 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A3B44 | 7F C3 F3 78 */	mr r3, r30
/* 813A3B48 | 38 9F 03 7D */	addi r4, r31, 0x37d
/* 813A3B4C | 38 A0 00 00 */	li r5, 0x0
/* 813A3B50 | 48 00 39 85 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A3B54 | 7F 24 CB 78 */	mr r4, r25
/* 813A3B58 | 38 60 00 34 */	li r3, 0x34
/* 813A3B5C | 38 A0 00 04 */	li r5, 0x4
/* 813A3B60 | 48 25 45 51 */	bl __nw__FUlPQ23EGG4Heapi
/* 813A3B64 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A3B68 | 7C 7D 1B 78 */	mr r29, r3
/* 813A3B6C | 41 82 00 98 */	beq .L_813A3C04
/* 813A3B70 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813A3B74 | 7F C6 F3 78 */	mr r6, r30
/* 813A3B78 | 41 82 00 08 */	beq .L_813A3B80
/* 813A3B7C | 38 DE 00 28 */	addi r6, r30, 0x28
.L_813A3B80:
/* 813A3B80 | 80 BE 00 04 */	lwz r5, 0x4(r30)
/* 813A3B84 | 3C 80 81 64 */	lis r4, __vt__Q23gui7Manager@ha
/* 813A3B88 | 38 84 27 E0 */	addi r4, r4, __vt__Q23gui7Manager@l
/* 813A3B8C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 813A3B90 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813A3B94 | 38 00 00 00 */	li r0, 0x0
/* 813A3B98 | 3B 85 02 98 */	addi r28, r5, 0x298
/* 813A3B9C | 90 C3 00 04 */	stw r6, 0x4(r3)
/* 813A3BA0 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813A3BA4 | 41 82 00 1C */	beq .L_813A3BC0
/* 813A3BA8 | 81 86 00 00 */	lwz r12, 0x0(r6)
/* 813A3BAC | 7C C3 33 78 */	mr r3, r6
/* 813A3BB0 | 7F A4 EB 78 */	mr r4, r29
/* 813A3BB4 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813A3BB8 | 7D 89 03 A6 */	mtctr r12
/* 813A3BBC | 4E 80 04 21 */	bctrl
.L_813A3BC0:
/* 813A3BC0 | 38 7D 00 08 */	addi r3, r29, 0x8
/* 813A3BC4 | 38 80 00 08 */	li r4, 0x8
/* 813A3BC8 | 48 16 E4 95 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813A3BCC | 3C A0 81 64 */	lis r5, __vt__Q23gui11PaneManager@ha
/* 813A3BD0 | 38 7D 00 18 */	addi r3, r29, 0x18
/* 813A3BD4 | 38 A5 27 84 */	addi r5, r5, __vt__Q23gui11PaneManager@l
/* 813A3BD8 | 38 80 00 08 */	li r4, 0x8
/* 813A3BDC | 90 BD 00 00 */	stw r5, 0x0(r29)
/* 813A3BE0 | 93 9D 00 24 */	stw r28, 0x24(r29)
/* 813A3BE4 | 48 16 E4 79 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813A3BE8 | 3C 80 81 63 */	lis r4, __vt__Q33ipl3gui11PaneManager@ha
/* 813A3BEC | 38 60 00 00 */	li r3, 0x0
/* 813A3BF0 | 38 84 59 C4 */	addi r4, r4, __vt__Q33ipl3gui11PaneManager@l
/* 813A3BF4 | 38 00 00 01 */	li r0, 0x1
/* 813A3BF8 | 90 9D 00 00 */	stw r4, 0x0(r29)
/* 813A3BFC | 90 7D 00 2C */	stw r3, 0x2c(r29)
/* 813A3C00 | 98 1D 00 30 */	stb r0, 0x30(r29)
.L_813A3C04:
/* 813A3C04 | 93 BE 00 08 */	stw r29, 0x8(r30)
/* 813A3C08 | 7F A3 EB 78 */	mr r3, r29
/* 813A3C0C | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 813A3C10 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813A3C14 | 38 84 00 04 */	addi r4, r4, 0x4
/* 813A3C18 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813A3C1C | 7D 89 03 A6 */	mtctr r12
/* 813A3C20 | 4E 80 04 21 */	bctrl
/* 813A3C24 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813A3C28 | 38 80 00 00 */	li r4, 0x0
/* 813A3C2C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A3C30 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813A3C34 | 7D 89 03 A6 */	mtctr r12
/* 813A3C38 | 4E 80 04 21 */	bctrl
/* 813A3C3C | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813A3C40 | 38 8D 87 F8 */	li r4, lbl_81696838@sda21
/* 813A3C44 | 38 A0 00 01 */	li r5, 0x1
/* 813A3C48 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813A3C4C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A3C50 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813A3C54 | 7D 89 03 A6 */	mtctr r12
/* 813A3C58 | 4E 80 04 21 */	bctrl
/* 813A3C5C | 7C 64 1B 78 */	mr r4, r3
/* 813A3C60 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813A3C64 | 38 A0 00 01 */	li r5, 0x1
/* 813A3C68 | 4B FC 75 65 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 813A3C6C | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813A3C70 | 38 8D 87 FF */	li r4, lbl_8169683F@sda21
/* 813A3C74 | 38 A0 00 01 */	li r5, 0x1
/* 813A3C78 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813A3C7C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A3C80 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813A3C84 | 7D 89 03 A6 */	mtctr r12
/* 813A3C88 | 4E 80 04 21 */	bctrl
/* 813A3C8C | 7C 64 1B 78 */	mr r4, r3
/* 813A3C90 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813A3C94 | 38 A0 00 01 */	li r5, 0x1
/* 813A3C98 | 4B FC 75 35 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 813A3C9C | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813A3CA0 | 38 9F 03 87 */	addi r4, r31, 0x387
/* 813A3CA4 | 38 A0 00 01 */	li r5, 0x1
/* 813A3CA8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813A3CAC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A3CB0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813A3CB4 | 7D 89 03 A6 */	mtctr r12
/* 813A3CB8 | 4E 80 04 21 */	bctrl
/* 813A3CBC | 7C 64 1B 78 */	mr r4, r3
/* 813A3CC0 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813A3CC4 | 38 A0 00 01 */	li r5, 0x1
/* 813A3CC8 | 4B FC 75 05 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 813A3CCC | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813A3CD0 | 38 9F 03 96 */	addi r4, r31, 0x396
/* 813A3CD4 | 38 A0 00 01 */	li r5, 0x1
/* 813A3CD8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813A3CDC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A3CE0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813A3CE4 | 7D 89 03 A6 */	mtctr r12
/* 813A3CE8 | 4E 80 04 21 */	bctrl
/* 813A3CEC | 7C 64 1B 78 */	mr r4, r3
/* 813A3CF0 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813A3CF4 | 38 A0 00 01 */	li r5, 0x1
/* 813A3CF8 | 4B FC 74 D5 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 813A3CFC | 7F C3 F3 78 */	mr r3, r30
/* 813A3D00 | 38 80 00 0F */	li r4, 0xf
/* 813A3D04 | 48 00 34 DD */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813A3D08 | 7C 7D 1B 78 */	mr r29, r3
/* 813A3D0C | 7F C3 F3 78 */	mr r3, r30
/* 813A3D10 | 38 80 00 0D */	li r4, 0xd
/* 813A3D14 | 48 00 34 CD */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813A3D18 | 7C 65 1B 78 */	mr r5, r3
/* 813A3D1C | 7F C3 F3 78 */	mr r3, r30
/* 813A3D20 | 7F A6 EB 78 */	mr r6, r29
/* 813A3D24 | 38 8D 87 F8 */	li r4, lbl_81696838@sda21
/* 813A3D28 | 48 00 34 C5 */	bl add_anmpane__Q33ipl5scene13AnmControllerFPCcPQ33ipl5scene3AnmPQ33ipl5scene3Anm
/* 813A3D2C | 7F C3 F3 78 */	mr r3, r30
/* 813A3D30 | 38 80 00 10 */	li r4, 0x10
/* 813A3D34 | 48 00 34 AD */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813A3D38 | 7C 7D 1B 78 */	mr r29, r3
/* 813A3D3C | 7F C3 F3 78 */	mr r3, r30
/* 813A3D40 | 38 80 00 0E */	li r4, 0xe
/* 813A3D44 | 48 00 34 9D */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813A3D48 | 7C 65 1B 78 */	mr r5, r3
/* 813A3D4C | 7F C3 F3 78 */	mr r3, r30
/* 813A3D50 | 7F A6 EB 78 */	mr r6, r29
/* 813A3D54 | 38 8D 87 FF */	li r4, lbl_8169683F@sda21
/* 813A3D58 | 48 00 34 95 */	bl add_anmpane__Q33ipl5scene13AnmControllerFPCcPQ33ipl5scene3AnmPQ33ipl5scene3Anm
/* 813A3D5C | 7F C3 F3 78 */	mr r3, r30
/* 813A3D60 | 38 80 00 04 */	li r4, 0x4
/* 813A3D64 | 48 00 34 7D */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813A3D68 | 7C 7D 1B 78 */	mr r29, r3
/* 813A3D6C | 7F C3 F3 78 */	mr r3, r30
/* 813A3D70 | 38 80 00 03 */	li r4, 0x3
/* 813A3D74 | 48 00 34 6D */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813A3D78 | 7C 65 1B 78 */	mr r5, r3
/* 813A3D7C | 7F C3 F3 78 */	mr r3, r30
/* 813A3D80 | 7F A6 EB 78 */	mr r6, r29
/* 813A3D84 | 38 9F 03 87 */	addi r4, r31, 0x387
/* 813A3D88 | 48 00 34 65 */	bl add_anmpane__Q33ipl5scene13AnmControllerFPCcPQ33ipl5scene3AnmPQ33ipl5scene3Anm
/* 813A3D8C | 7F C3 F3 78 */	mr r3, r30
/* 813A3D90 | 38 80 00 07 */	li r4, 0x7
/* 813A3D94 | 48 00 34 4D */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813A3D98 | 7C 7D 1B 78 */	mr r29, r3
/* 813A3D9C | 7F C3 F3 78 */	mr r3, r30
/* 813A3DA0 | 38 80 00 06 */	li r4, 0x6
/* 813A3DA4 | 48 00 34 3D */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813A3DA8 | 7C 65 1B 78 */	mr r5, r3
/* 813A3DAC | 7F C3 F3 78 */	mr r3, r30
/* 813A3DB0 | 7F A6 EB 78 */	mr r6, r29
/* 813A3DB4 | 38 9F 03 96 */	addi r4, r31, 0x396
/* 813A3DB8 | 48 00 34 35 */	bl add_anmpane__Q33ipl5scene13AnmControllerFPCcPQ33ipl5scene3AnmPQ33ipl5scene3Anm
/* 813A3DBC | 39 61 00 30 */	addi r11, r1, 0x30
/* 813A3DC0 | 7F C3 F3 78 */	mr r3, r30
/* 813A3DC4 | 48 25 57 41 */	bl _restgpr_25
/* 813A3DC8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813A3DCC | 7C 08 03 A6 */	mtlr r0
/* 813A3DD0 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813A3DD4 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene11ChanAppBaseFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc

# .text:0x574 | 0x813A3DD8 | size: 0xE4
# ipl::scene::AnmController::~AnmController()
.fn __dt__Q33ipl5scene13AnmControllerFv, global
/* 813A3DD8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A3DDC | 7C 08 02 A6 */	mflr r0
/* 813A3DE0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A3DE4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A3DE8 | 48 25 56 E1 */	bl _savegpr_29
/* 813A3DEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A3DF0 | 7C 7D 1B 78 */	mr r29, r3
/* 813A3DF4 | 7C 9E 23 78 */	mr r30, r4
/* 813A3DF8 | 41 82 00 A8 */	beq .L_813A3EA0
/* 813A3DFC | 3C A0 81 65 */	lis r5, __vt__Q33ipl5scene13AnmController@ha
/* 813A3E00 | 38 80 00 00 */	li r4, 0x0
/* 813A3E04 | 38 A5 D0 F8 */	addi r5, r5, __vt__Q33ipl5scene13AnmController@l
/* 813A3E08 | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 813A3E0C | 38 63 00 0C */	addi r3, r3, 0xc
/* 813A3E10 | 48 16 E4 CD */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A3E14 | 7C 7F 1B 78 */	mr r31, r3
/* 813A3E18 | 48 00 00 30 */	b .L_813A3E48
.L_813A3E1C:
/* 813A3E1C | 7F E4 FB 78 */	mr r4, r31
/* 813A3E20 | 38 7D 00 0C */	addi r3, r29, 0xc
/* 813A3E24 | 48 16 E4 4D */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813A3E28 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813A3E2C | 41 82 00 0C */	beq .L_813A3E38
/* 813A3E30 | 7F E3 FB 78 */	mr r3, r31
/* 813A3E34 | 48 25 42 B1 */	bl __dl__FPv
.L_813A3E38:
/* 813A3E38 | 38 7D 00 0C */	addi r3, r29, 0xc
/* 813A3E3C | 38 80 00 00 */	li r4, 0x0
/* 813A3E40 | 48 16 E4 9D */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A3E44 | 7C 7F 1B 78 */	mr r31, r3
.L_813A3E48:
/* 813A3E48 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813A3E4C | 40 82 FF D0 */	bne .L_813A3E1C
/* 813A3E50 | 38 7D 00 18 */	addi r3, r29, 0x18
/* 813A3E54 | 38 80 00 00 */	li r4, 0x0
/* 813A3E58 | 48 16 E4 85 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A3E5C | 7C 7F 1B 78 */	mr r31, r3
/* 813A3E60 | 48 00 00 28 */	b .L_813A3E88
.L_813A3E64:
/* 813A3E64 | 7F E4 FB 78 */	mr r4, r31
/* 813A3E68 | 38 7D 00 18 */	addi r3, r29, 0x18
/* 813A3E6C | 48 16 E4 05 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813A3E70 | 7F E3 FB 78 */	mr r3, r31
/* 813A3E74 | 48 25 42 71 */	bl __dl__FPv
/* 813A3E78 | 38 7D 00 18 */	addi r3, r29, 0x18
/* 813A3E7C | 38 80 00 00 */	li r4, 0x0
/* 813A3E80 | 48 16 E4 5D */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A3E84 | 7C 7F 1B 78 */	mr r31, r3
.L_813A3E88:
/* 813A3E88 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813A3E8C | 40 82 FF D8 */	bne .L_813A3E64
/* 813A3E90 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813A3E94 | 40 81 00 0C */	ble .L_813A3EA0
/* 813A3E98 | 7F A3 EB 78 */	mr r3, r29
/* 813A3E9C | 48 25 42 49 */	bl __dl__FPv
.L_813A3EA0:
/* 813A3EA0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A3EA4 | 7F A3 EB 78 */	mr r3, r29
/* 813A3EA8 | 48 25 56 6D */	bl _restgpr_29
/* 813A3EAC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A3EB0 | 7C 08 03 A6 */	mtlr r0
/* 813A3EB4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A3EB8 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene13AnmControllerFv

# .text:0x658 | 0x813A3EBC | size: 0xB4
# ipl::scene::ChanAppBase::~ChanAppBase()
.fn __dt__Q33ipl5scene11ChanAppBaseFv, global
/* 813A3EBC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A3EC0 | 7C 08 02 A6 */	mflr r0
/* 813A3EC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A3EC8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A3ECC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A3ED0 | 7C 9F 23 78 */	mr r31, r4
/* 813A3ED4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813A3ED8 | 7C 7E 1B 78 */	mr r30, r3
/* 813A3EDC | 41 82 00 78 */	beq .L_813A3F54
/* 813A3EE0 | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 813A3EE4 | 3C 80 81 65 */	lis r4, __vt__Q33ipl5scene11ChanAppBase@ha
/* 813A3EE8 | 38 84 D0 3C */	addi r4, r4, __vt__Q33ipl5scene11ChanAppBase@l
/* 813A3EEC | 38 04 00 0C */	addi r0, r4, 0xc
/* 813A3EF0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813A3EF4 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813A3EF8 | 90 03 00 28 */	stw r0, 0x28(r3)
/* 813A3EFC | 41 82 00 1C */	beq .L_813A3F18
/* 813A3F00 | 81 85 00 00 */	lwz r12, 0x0(r5)
/* 813A3F04 | 7C A3 2B 78 */	mr r3, r5
/* 813A3F08 | 38 80 00 01 */	li r4, 0x1
/* 813A3F0C | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813A3F10 | 7D 89 03 A6 */	mtctr r12
/* 813A3F14 | 4E 80 04 21 */	bctrl
.L_813A3F18:
/* 813A3F18 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813A3F1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A3F20 | 41 82 00 18 */	beq .L_813A3F38
/* 813A3F24 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A3F28 | 38 80 00 01 */	li r4, 0x1
/* 813A3F2C | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813A3F30 | 7D 89 03 A6 */	mtctr r12
/* 813A3F34 | 4E 80 04 21 */	bctrl
.L_813A3F38:
/* 813A3F38 | 7F C3 F3 78 */	mr r3, r30
/* 813A3F3C | 38 80 00 00 */	li r4, 0x0
/* 813A3F40 | 4B FF FE 99 */	bl __dt__Q33ipl5scene13AnmControllerFv
/* 813A3F44 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813A3F48 | 40 81 00 0C */	ble .L_813A3F54
/* 813A3F4C | 7F C3 F3 78 */	mr r3, r30
/* 813A3F50 | 48 25 41 95 */	bl __dl__FPv
.L_813A3F54:
/* 813A3F54 | 7F C3 F3 78 */	mr r3, r30
/* 813A3F58 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A3F5C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813A3F60 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A3F64 | 7C 08 03 A6 */	mtlr r0
/* 813A3F68 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A3F6C | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene11ChanAppBaseFv

# .text:0x70C | 0x813A3F70 | size: 0x178
# ipl::scene::ChanAppBase::calc()
.fn calc__Q33ipl5scene11ChanAppBaseFv, global
/* 813A3F70 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A3F74 | 7C 08 02 A6 */	mflr r0
/* 813A3F78 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A3F7C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A3F80 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813A3F84 | 7C 7E 1B 78 */	mr r30, r3
/* 813A3F88 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813A3F8C | 4B FC 67 79 */	bl calc__Q33ipl6layout6ObjectFv
/* 813A3F90 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813A3F94 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A3F98 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813A3F9C | 7D 89 03 A6 */	mtctr r12
/* 813A3FA0 | 4E 80 04 21 */	bctrl
/* 813A3FA4 | 3B E0 00 00 */	li r31, 0x0
/* 813A3FA8 | 48 00 00 0C */	b .L_813A3FB4
.L_813A3FAC:
/* 813A3FAC | 7F E3 FB 78 */	mr r3, r31
/* 813A3FB0 | 48 00 2F 55 */	bl calc__Q33ipl5scene7AnmPaneFv
.L_813A3FB4:
/* 813A3FB4 | 7F E4 FB 78 */	mr r4, r31
/* 813A3FB8 | 38 7E 00 18 */	addi r3, r30, 0x18
/* 813A3FBC | 48 16 E3 21 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A3FC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A3FC4 | 7C 7F 1B 78 */	mr r31, r3
/* 813A3FC8 | 40 82 FF E4 */	bne .L_813A3FAC
/* 813A3FCC | 80 1E 00 34 */	lwz r0, 0x34(r30)
/* 813A3FD0 | 28 00 00 0B */	cmplwi r0, 0xb
/* 813A3FD4 | 41 81 00 FC */	bgt .L_813A40D0
/* 813A3FD8 | 3C 60 81 65 */	lis r3, jumptable_8164D00C@ha
/* 813A3FDC | 54 00 10 3A */	slwi r0, r0, 2
/* 813A3FE0 | 38 63 D0 0C */	addi r3, r3, jumptable_8164D00C@l
/* 813A3FE4 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813A3FE8 | 7C 69 03 A6 */	mtctr r3
/* 813A3FEC | 4E 80 04 20 */	bctr
.L_813A3FF0:
/* 813A3FF0 | 7F C3 F3 78 */	mr r3, r30
/* 813A3FF4 | 48 00 06 09 */	bl on_fadein1st__Q33ipl5scene11ChanAppBaseFv
/* 813A3FF8 | 48 00 00 D8 */	b .L_813A40D0
.L_813A3FFC:
/* 813A3FFC | 7F C3 F3 78 */	mr r3, r30
/* 813A4000 | 38 80 00 02 */	li r4, 0x2
/* 813A4004 | 48 00 31 A1 */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813A4008 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A400C | 40 82 00 C4 */	bne .L_813A40D0
/* 813A4010 | 38 00 00 00 */	li r0, 0x0
/* 813A4014 | 90 1E 00 34 */	stw r0, 0x34(r30)
/* 813A4018 | 48 00 00 B8 */	b .L_813A40D0
.L_813A401C:
/* 813A401C | 7F C3 F3 78 */	mr r3, r30
/* 813A4020 | 38 80 00 01 */	li r4, 0x1
/* 813A4024 | 48 00 31 81 */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813A4028 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A402C | 40 82 00 A4 */	bne .L_813A40D0
/* 813A4030 | 38 00 00 00 */	li r0, 0x0
/* 813A4034 | 90 1E 00 34 */	stw r0, 0x34(r30)
/* 813A4038 | 48 00 00 98 */	b .L_813A40D0
.L_813A403C:
/* 813A403C | 7F C3 F3 78 */	mr r3, r30
/* 813A4040 | 38 80 00 05 */	li r4, 0x5
/* 813A4044 | 48 00 31 61 */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813A4048 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A404C | 40 82 00 84 */	bne .L_813A40D0
/* 813A4050 | 38 00 00 00 */	li r0, 0x0
/* 813A4054 | 90 1E 00 34 */	stw r0, 0x34(r30)
/* 813A4058 | 48 00 00 78 */	b .L_813A40D0
.L_813A405C:
/* 813A405C | 7F C3 F3 78 */	mr r3, r30
/* 813A4060 | 38 80 00 08 */	li r4, 0x8
/* 813A4064 | 48 00 31 41 */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813A4068 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A406C | 40 82 00 64 */	bne .L_813A40D0
/* 813A4070 | 38 00 00 00 */	li r0, 0x0
/* 813A4074 | 90 1E 00 34 */	stw r0, 0x34(r30)
/* 813A4078 | 48 00 00 58 */	b .L_813A40D0
.L_813A407C:
/* 813A407C | 7F C3 F3 78 */	mr r3, r30
/* 813A4080 | 48 00 05 D1 */	bl on_scroll_r__Q33ipl5scene11ChanAppBaseFv
/* 813A4084 | 48 00 00 4C */	b .L_813A40D0
.L_813A4088:
/* 813A4088 | 7F C3 F3 78 */	mr r3, r30
/* 813A408C | 48 00 06 21 */	bl on_scroll_l__Q33ipl5scene11ChanAppBaseFv
/* 813A4090 | 48 00 00 40 */	b .L_813A40D0
.L_813A4094:
/* 813A4094 | 7F C3 F3 78 */	mr r3, r30
/* 813A4098 | 38 80 00 16 */	li r4, 0x16
/* 813A409C | 48 00 31 09 */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813A40A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A40A4 | 40 82 00 2C */	bne .L_813A40D0
/* 813A40A8 | 38 00 00 00 */	li r0, 0x0
/* 813A40AC | 90 1E 00 34 */	stw r0, 0x34(r30)
/* 813A40B0 | 48 00 00 20 */	b .L_813A40D0
.L_813A40B4:
/* 813A40B4 | 7F C3 F3 78 */	mr r3, r30
/* 813A40B8 | 38 80 00 17 */	li r4, 0x17
/* 813A40BC | 48 00 30 E9 */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813A40C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A40C4 | 40 82 00 0C */	bne .L_813A40D0
/* 813A40C8 | 38 00 00 00 */	li r0, 0x0
/* 813A40CC | 90 1E 00 34 */	stw r0, 0x34(r30)
.L_813A40D0:
/* 813A40D0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A40D4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A40D8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813A40DC | 7C 08 03 A6 */	mtlr r0
/* 813A40E0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A40E4 | 4E 80 00 20 */	blr
.endfn calc__Q33ipl5scene11ChanAppBaseFv

# .text:0x884 | 0x813A40E8 | size: 0x8
# ipl::scene::ChanAppBase::draw()
.fn draw__Q33ipl5scene11ChanAppBaseFv, global
/* 813A40E8 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813A40EC | 4B FC 66 B0 */	b draw__Q33ipl6layout6ObjectFv
.endfn draw__Q33ipl5scene11ChanAppBaseFv

# .text:0x88C | 0x813A40F0 | size: 0x8
# ipl::scene::ChanAppBase::update()
.fn update__Q33ipl5scene11ChanAppBaseFv, global
/* 813A40F0 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A40F4 | 4B FC 6E 98 */	b update__Q33ipl3gui11PaneManagerFv
.endfn update__Q33ipl5scene11ChanAppBaseFv

# .text:0x894 | 0x813A40F8 | size: 0x40
# ipl::scene::ChanAppBase::anmFadein()
.fn anmFadein__Q33ipl5scene11ChanAppBaseFv, global
/* 813A40F8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A40FC | 7C 08 02 A6 */	mflr r0
/* 813A4100 | 38 80 00 00 */	li r4, 0x0
/* 813A4104 | 38 A0 00 00 */	li r5, 0x0
/* 813A4108 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A410C | 38 C0 00 01 */	li r6, 0x1
/* 813A4110 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A4114 | 7C 7F 1B 78 */	mr r31, r3
/* 813A4118 | 48 00 2F E9 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813A411C | 38 00 00 01 */	li r0, 0x1
/* 813A4120 | 90 1F 00 34 */	stw r0, 0x34(r31)
/* 813A4124 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A4128 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A412C | 7C 08 03 A6 */	mtlr r0
/* 813A4130 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A4134 | 4E 80 00 20 */	blr
.endfn anmFadein__Q33ipl5scene11ChanAppBaseFv

# .text:0x8D4 | 0x813A4138 | size: 0x68
# ipl::scene::ChanAppBase::anmFadeout(bool)
.fn anmFadeout__Q33ipl5scene11ChanAppBaseFb, global
/* 813A4138 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A413C | 7C 08 02 A6 */	mflr r0
/* 813A4140 | 38 A0 00 00 */	li r5, 0x0
/* 813A4144 | 38 C0 00 01 */	li r6, 0x1
/* 813A4148 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A414C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A4150 | 7C 9F 23 78 */	mr r31, r4
/* 813A4154 | 38 80 00 01 */	li r4, 0x1
/* 813A4158 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813A415C | 7C 7E 1B 78 */	mr r30, r3
/* 813A4160 | 48 00 2F A1 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813A4164 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813A4168 | 41 82 00 18 */	beq .L_813A4180
/* 813A416C | 7F C3 F3 78 */	mr r3, r30
/* 813A4170 | 38 80 00 17 */	li r4, 0x17
/* 813A4174 | 38 A0 00 00 */	li r5, 0x0
/* 813A4178 | 38 C0 00 01 */	li r6, 0x1
/* 813A417C | 48 00 2F 85 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
.L_813A4180:
/* 813A4180 | 38 00 00 03 */	li r0, 0x3
/* 813A4184 | 90 1E 00 34 */	stw r0, 0x34(r30)
/* 813A4188 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A418C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813A4190 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A4194 | 7C 08 03 A6 */	mtlr r0
/* 813A4198 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A419C | 4E 80 00 20 */	blr
.endfn anmFadeout__Q33ipl5scene11ChanAppBaseFb

# .text:0x93C | 0x813A41A0 | size: 0x40
# ipl::scene::ChanAppBase::anmChangeWiitoSD()
.fn anmChangeWiitoSD__Q33ipl5scene11ChanAppBaseFv, global
/* 813A41A0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A41A4 | 7C 08 02 A6 */	mflr r0
/* 813A41A8 | 38 80 00 08 */	li r4, 0x8
/* 813A41AC | 38 A0 00 00 */	li r5, 0x0
/* 813A41B0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A41B4 | 38 C0 00 01 */	li r6, 0x1
/* 813A41B8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A41BC | 7C 7F 1B 78 */	mr r31, r3
/* 813A41C0 | 48 00 2F 41 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813A41C4 | 38 00 00 05 */	li r0, 0x5
/* 813A41C8 | 90 1F 00 34 */	stw r0, 0x34(r31)
/* 813A41CC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A41D0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A41D4 | 7C 08 03 A6 */	mtlr r0
/* 813A41D8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A41DC | 4E 80 00 20 */	blr
.endfn anmChangeWiitoSD__Q33ipl5scene11ChanAppBaseFv

# .text:0x97C | 0x813A41E0 | size: 0x40
# ipl::scene::ChanAppBase::anmChangeSDtoWii()
.fn anmChangeSDtoWii__Q33ipl5scene11ChanAppBaseFv, global
/* 813A41E0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A41E4 | 7C 08 02 A6 */	mflr r0
/* 813A41E8 | 38 80 00 05 */	li r4, 0x5
/* 813A41EC | 38 A0 00 00 */	li r5, 0x0
/* 813A41F0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A41F4 | 38 C0 00 01 */	li r6, 0x1
/* 813A41F8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A41FC | 7C 7F 1B 78 */	mr r31, r3
/* 813A4200 | 48 00 2F 01 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813A4204 | 38 00 00 04 */	li r0, 0x4
/* 813A4208 | 90 1F 00 34 */	stw r0, 0x34(r31)
/* 813A420C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A4210 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A4214 | 7C 08 03 A6 */	mtlr r0
/* 813A4218 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A421C | 4E 80 00 20 */	blr
.endfn anmChangeSDtoWii__Q33ipl5scene11ChanAppBaseFv

# .text:0x9BC | 0x813A4220 | size: 0x68
# ipl::scene::ChanAppBase::anmScrollR(bool)
.fn anmScrollR__Q33ipl5scene11ChanAppBaseFb, global
/* 813A4220 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A4224 | 7C 08 02 A6 */	mflr r0
/* 813A4228 | 38 A0 00 00 */	li r5, 0x0
/* 813A422C | 38 C0 00 01 */	li r6, 0x1
/* 813A4230 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A4234 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A4238 | 7C 9F 23 78 */	mr r31, r4
/* 813A423C | 38 80 00 09 */	li r4, 0x9
/* 813A4240 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813A4244 | 7C 7E 1B 78 */	mr r30, r3
/* 813A4248 | 48 00 2E B9 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813A424C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813A4250 | 41 82 00 18 */	beq .L_813A4268
/* 813A4254 | 7F C3 F3 78 */	mr r3, r30
/* 813A4258 | 38 80 00 0B */	li r4, 0xb
/* 813A425C | 38 A0 00 00 */	li r5, 0x0
/* 813A4260 | 38 C0 00 01 */	li r6, 0x1
/* 813A4264 | 48 00 2E 9D */	bl do_animation__Q33ipl5scene13AnmControllerFiib
.L_813A4268:
/* 813A4268 | 38 00 00 08 */	li r0, 0x8
/* 813A426C | 90 1E 00 34 */	stw r0, 0x34(r30)
/* 813A4270 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A4274 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813A4278 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A427C | 7C 08 03 A6 */	mtlr r0
/* 813A4280 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A4284 | 4E 80 00 20 */	blr
.endfn anmScrollR__Q33ipl5scene11ChanAppBaseFb

# .text:0xA24 | 0x813A4288 | size: 0x68
# ipl::scene::ChanAppBase::anmScrollL(bool)
.fn anmScrollL__Q33ipl5scene11ChanAppBaseFb, global
/* 813A4288 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A428C | 7C 08 02 A6 */	mflr r0
/* 813A4290 | 38 A0 00 00 */	li r5, 0x0
/* 813A4294 | 38 C0 00 01 */	li r6, 0x1
/* 813A4298 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A429C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A42A0 | 7C 9F 23 78 */	mr r31, r4
/* 813A42A4 | 38 80 00 0A */	li r4, 0xa
/* 813A42A8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813A42AC | 7C 7E 1B 78 */	mr r30, r3
/* 813A42B0 | 48 00 2E 51 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813A42B4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813A42B8 | 41 82 00 18 */	beq .L_813A42D0
/* 813A42BC | 7F C3 F3 78 */	mr r3, r30
/* 813A42C0 | 38 80 00 0C */	li r4, 0xc
/* 813A42C4 | 38 A0 00 00 */	li r5, 0x0
/* 813A42C8 | 38 C0 00 01 */	li r6, 0x1
/* 813A42CC | 48 00 2E 35 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
.L_813A42D0:
/* 813A42D0 | 38 00 00 09 */	li r0, 0x9
/* 813A42D4 | 90 1E 00 34 */	stw r0, 0x34(r30)
/* 813A42D8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A42DC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813A42E0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A42E4 | 7C 08 03 A6 */	mtlr r0
/* 813A42E8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A42EC | 4E 80 00 20 */	blr
.endfn anmScrollL__Q33ipl5scene11ChanAppBaseFb

# .text:0xA8C | 0x813A42F0 | size: 0x54
# ipl::scene::ChanAppBase::anmTextFadein(unsigned long)
.fn anmTextFadein__Q33ipl5scene11ChanAppBaseFUl, global
/* 813A42F0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A42F4 | 7C 08 02 A6 */	mflr r0
/* 813A42F8 | 3C C0 81 65 */	lis r6, lbl_8164CFD0@ha
/* 813A42FC | 7C 85 23 78 */	mr r5, r4
/* 813A4300 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A4304 | 38 86 CF D0 */	addi r4, r6, lbl_8164CFD0@l
/* 813A4308 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A430C | 7C 7F 1B 78 */	mr r31, r3
/* 813A4310 | 48 00 30 69 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcUl
/* 813A4314 | 7F E3 FB 78 */	mr r3, r31
/* 813A4318 | 38 80 00 16 */	li r4, 0x16
/* 813A431C | 38 A0 00 00 */	li r5, 0x0
/* 813A4320 | 38 C0 00 01 */	li r6, 0x1
/* 813A4324 | 48 00 2D DD */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813A4328 | 38 00 00 0A */	li r0, 0xa
/* 813A432C | 90 1F 00 34 */	stw r0, 0x34(r31)
/* 813A4330 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A4334 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A4338 | 7C 08 03 A6 */	mtlr r0
/* 813A433C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A4340 | 4E 80 00 20 */	blr
.endfn anmTextFadein__Q33ipl5scene11ChanAppBaseFUl

# .text:0xAE0 | 0x813A4344 | size: 0x40
# ipl::scene::ChanAppBase::anmTextFadeout()
.fn anmTextFadeout__Q33ipl5scene11ChanAppBaseFv, global
/* 813A4344 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A4348 | 7C 08 02 A6 */	mflr r0
/* 813A434C | 38 80 00 17 */	li r4, 0x17
/* 813A4350 | 38 A0 00 00 */	li r5, 0x0
/* 813A4354 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A4358 | 38 C0 00 01 */	li r6, 0x1
/* 813A435C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A4360 | 7C 7F 1B 78 */	mr r31, r3
/* 813A4364 | 48 00 2D 9D */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813A4368 | 38 00 00 0B */	li r0, 0xb
/* 813A436C | 90 1F 00 34 */	stw r0, 0x34(r31)
/* 813A4370 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A4374 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A4378 | 7C 08 03 A6 */	mtlr r0
/* 813A437C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A4380 | 4E 80 00 20 */	blr
.endfn anmTextFadeout__Q33ipl5scene11ChanAppBaseFv

# .text:0xB20 | 0x813A4384 | size: 0xC4
# ipl::scene::ChanAppBase::anmArwAppear(bool, bool)
.fn anmArwAppear__Q33ipl5scene11ChanAppBaseFbb, global
/* 813A4384 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A4388 | 7C 08 02 A6 */	mflr r0
/* 813A438C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813A4390 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A4394 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A4398 | 7C BF 2B 78 */	mr r31, r5
/* 813A439C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813A43A0 | 7C 7E 1B 78 */	mr r30, r3
/* 813A43A4 | 41 82 00 38 */	beq .L_813A43DC
/* 813A43A8 | 38 8D 87 EA */	li r4, lbl_8169682A@sda21
/* 813A43AC | 38 A0 00 01 */	li r5, 0x1
/* 813A43B0 | 48 00 31 25 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A43B4 | 7F C3 F3 78 */	mr r3, r30
/* 813A43B8 | 38 80 00 0F */	li r4, 0xf
/* 813A43BC | 38 A0 00 00 */	li r5, 0x0
/* 813A43C0 | 38 C0 00 00 */	li r6, 0x0
/* 813A43C4 | 48 00 2D 3D */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813A43C8 | 7F C3 F3 78 */	mr r3, r30
/* 813A43CC | 38 80 00 12 */	li r4, 0x12
/* 813A43D0 | 38 A0 00 00 */	li r5, 0x0
/* 813A43D4 | 38 C0 00 00 */	li r6, 0x0
/* 813A43D8 | 48 00 2D 29 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
.L_813A43DC:
/* 813A43DC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813A43E0 | 41 82 00 3C */	beq .L_813A441C
/* 813A43E4 | 7F C3 F3 78 */	mr r3, r30
/* 813A43E8 | 38 8D 87 F1 */	li r4, lbl_81696831@sda21
/* 813A43EC | 38 A0 00 01 */	li r5, 0x1
/* 813A43F0 | 48 00 30 E5 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813A43F4 | 7F C3 F3 78 */	mr r3, r30
/* 813A43F8 | 38 80 00 10 */	li r4, 0x10
/* 813A43FC | 38 A0 00 00 */	li r5, 0x0
/* 813A4400 | 38 C0 00 00 */	li r6, 0x0
/* 813A4404 | 48 00 2C FD */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813A4408 | 7F C3 F3 78 */	mr r3, r30
/* 813A440C | 38 80 00 13 */	li r4, 0x13
/* 813A4410 | 38 A0 00 00 */	li r5, 0x0
/* 813A4414 | 38 C0 00 00 */	li r6, 0x0
/* 813A4418 | 48 00 2C E9 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
.L_813A441C:
/* 813A441C | 7F C3 F3 78 */	mr r3, r30
/* 813A4420 | 38 80 00 11 */	li r4, 0x11
/* 813A4424 | 38 A0 00 02 */	li r5, 0x2
/* 813A4428 | 38 C0 00 01 */	li r6, 0x1
/* 813A442C | 48 00 2C D5 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813A4430 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A4434 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A4438 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813A443C | 7C 08 03 A6 */	mtlr r0
/* 813A4440 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A4444 | 4E 80 00 20 */	blr
.endfn anmArwAppear__Q33ipl5scene11ChanAppBaseFbb

# .text:0xBE4 | 0x813A4448 | size: 0x68
# ipl::scene::ChanAppBase::anmArwDisappear(bool, bool)
.fn anmArwDisappear__Q33ipl5scene11ChanAppBaseFbb, global
/* 813A4448 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A444C | 7C 08 02 A6 */	mflr r0
/* 813A4450 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813A4454 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A4458 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A445C | 7C BF 2B 78 */	mr r31, r5
/* 813A4460 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813A4464 | 7C 7E 1B 78 */	mr r30, r3
/* 813A4468 | 41 82 00 14 */	beq .L_813A447C
/* 813A446C | 38 80 00 14 */	li r4, 0x14
/* 813A4470 | 38 A0 00 00 */	li r5, 0x0
/* 813A4474 | 38 C0 00 00 */	li r6, 0x0
/* 813A4478 | 48 00 2C 89 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
.L_813A447C:
/* 813A447C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813A4480 | 41 82 00 18 */	beq .L_813A4498
/* 813A4484 | 7F C3 F3 78 */	mr r3, r30
/* 813A4488 | 38 80 00 15 */	li r4, 0x15
/* 813A448C | 38 A0 00 00 */	li r5, 0x0
/* 813A4490 | 38 C0 00 00 */	li r6, 0x0
/* 813A4494 | 48 00 2C 6D */	bl do_animation__Q33ipl5scene13AnmControllerFiib
.L_813A4498:
/* 813A4498 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A449C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A44A0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813A44A4 | 7C 08 03 A6 */	mtlr r0
/* 813A44A8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A44AC | 4E 80 00 20 */	blr
.endfn anmArwDisappear__Q33ipl5scene11ChanAppBaseFbb

# .text:0xC4C | 0x813A44B0 | size: 0x14C
# ipl::scene::ChanAppBase::onEvent(unsigned long, unsigned long, void*)
.fn onEvent__Q33ipl5scene11ChanAppBaseFUlUlPv, global
/* 813A44B0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A44B4 | 7C 08 02 A6 */	mflr r0
/* 813A44B8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A44BC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A44C0 | 48 25 50 05 */	bl _savegpr_28
/* 813A44C4 | 7C 7C 1B 78 */	mr r28, r3
/* 813A44C8 | 80 63 00 2C */	lwz r3, 0x2c(r3)
/* 813A44CC | 7C BD 2B 78 */	mr r29, r5
/* 813A44D0 | 7C DE 33 78 */	mr r30, r6
/* 813A44D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A44D8 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813A44DC | 7D 89 03 A6 */	mtctr r12
/* 813A44E0 | 4E 80 04 21 */	bctrl
/* 813A44E4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A44E8 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 813A44EC | 7D 89 03 A6 */	mtctr r12
/* 813A44F0 | 4E 80 04 21 */	bctrl
/* 813A44F4 | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 813A44F8 | 3B E3 00 B4 */	addi r31, r3, 0xb4
/* 813A44FC | 41 82 00 20 */	beq .L_813A451C
/* 813A4500 | 40 80 00 10 */	bge .L_813A4510
/* 813A4504 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813A4508 | 40 80 00 84 */	bge .L_813A458C
/* 813A450C | 48 00 00 D8 */	b .L_813A45E4
.L_813A4510:
/* 813A4510 | 2C 1D 00 03 */	cmpwi r29, 0x3
/* 813A4514 | 40 80 00 D0 */	bge .L_813A45E4
/* 813A4518 | 48 00 00 3C */	b .L_813A4554
.L_813A451C:
/* 813A451C | 7F 83 E3 78 */	mr r3, r28
/* 813A4520 | 7F E4 FB 78 */	mr r4, r31
/* 813A4524 | 48 00 2D 4D */	bl get_anmpane__Q33ipl5scene13AnmControllerFPCc
/* 813A4528 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A452C | 7C 7F 1B 78 */	mr r31, r3
/* 813A4530 | 41 82 00 B4 */	beq .L_813A45E4
/* 813A4534 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813A4538 | 38 80 00 0C */	li r4, 0xc
/* 813A453C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813A4540 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813A4544 | 48 06 6B F5 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813A4548 | 7F E4 FB 78 */	mr r4, r31
/* 813A454C | 4B FF D3 85 */	bl onPoint__Q33ipl5scene11ChannelEditFPQ33ipl5scene7AnmPane
/* 813A4550 | 48 00 00 94 */	b .L_813A45E4
.L_813A4554:
/* 813A4554 | 7F 83 E3 78 */	mr r3, r28
/* 813A4558 | 7F E4 FB 78 */	mr r4, r31
/* 813A455C | 48 00 2D 15 */	bl get_anmpane__Q33ipl5scene13AnmControllerFPCc
/* 813A4560 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A4564 | 7C 7F 1B 78 */	mr r31, r3
/* 813A4568 | 41 82 00 7C */	beq .L_813A45E4
/* 813A456C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813A4570 | 38 80 00 0C */	li r4, 0xc
/* 813A4574 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813A4578 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813A457C | 48 06 6B BD */	bl getScene__Q33ipl5scene7ManagerFi
/* 813A4580 | 7F E4 FB 78 */	mr r4, r31
/* 813A4584 | 4B FF D4 0D */	bl onLeft__Q33ipl5scene11ChannelEditFPQ33ipl5scene7AnmPane
/* 813A4588 | 48 00 00 5C */	b .L_813A45E4
.L_813A458C:
/* 813A458C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813A4590 | 3C 80 00 10 */	lis r4, 0x10
/* 813A4594 | 7F C3 F3 78 */	mr r3, r30
/* 813A4598 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813A459C | 38 84 08 00 */	addi r4, r4, 0x800
/* 813A45A0 | 7D 89 03 A6 */	mtctr r12
/* 813A45A4 | 4E 80 04 21 */	bctrl
/* 813A45A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A45AC | 41 82 00 38 */	beq .L_813A45E4
/* 813A45B0 | 7F 83 E3 78 */	mr r3, r28
/* 813A45B4 | 7F E4 FB 78 */	mr r4, r31
/* 813A45B8 | 48 00 2C B9 */	bl get_anmpane__Q33ipl5scene13AnmControllerFPCc
/* 813A45BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A45C0 | 7C 7F 1B 78 */	mr r31, r3
/* 813A45C4 | 41 82 00 20 */	beq .L_813A45E4
/* 813A45C8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813A45CC | 38 80 00 0C */	li r4, 0xc
/* 813A45D0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813A45D4 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813A45D8 | 48 06 6B 61 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813A45DC | 7F E4 FB 78 */	mr r4, r31
/* 813A45E0 | 4B FF D4 41 */	bl onTrig__Q33ipl5scene11ChannelEditFPQ33ipl5scene7AnmPane
.L_813A45E4:
/* 813A45E4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A45E8 | 48 25 4F 29 */	bl _restgpr_28
/* 813A45EC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A45F0 | 7C 08 03 A6 */	mtlr r0
/* 813A45F4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A45F8 | 4E 80 00 20 */	blr
.endfn onEvent__Q33ipl5scene11ChanAppBaseFUlUlPv

# .text:0xD98 | 0x813A45FC | size: 0x54
# ipl::scene::ChanAppBase::on_fadein1st()
.fn on_fadein1st__Q33ipl5scene11ChanAppBaseFv, global
/* 813A45FC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A4600 | 7C 08 02 A6 */	mflr r0
/* 813A4604 | 38 80 00 00 */	li r4, 0x0
/* 813A4608 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A460C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A4610 | 7C 7F 1B 78 */	mr r31, r3
/* 813A4614 | 48 00 2B 91 */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813A4618 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A461C | 40 82 00 20 */	bne .L_813A463C
/* 813A4620 | 7F E3 FB 78 */	mr r3, r31
/* 813A4624 | 38 80 00 02 */	li r4, 0x2
/* 813A4628 | 38 A0 00 00 */	li r5, 0x0
/* 813A462C | 38 C0 00 01 */	li r6, 0x1
/* 813A4630 | 48 00 2A D1 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813A4634 | 38 00 00 02 */	li r0, 0x2
/* 813A4638 | 90 1F 00 34 */	stw r0, 0x34(r31)
.L_813A463C:
/* 813A463C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A4640 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A4644 | 7C 08 03 A6 */	mtlr r0
/* 813A4648 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A464C | 4E 80 00 20 */	blr
.endfn on_fadein1st__Q33ipl5scene11ChanAppBaseFv

# .text:0xDEC | 0x813A4650 | size: 0x5C
# ipl::scene::ChanAppBase::on_scroll_r()
.fn on_scroll_r__Q33ipl5scene11ChanAppBaseFv, global
/* 813A4650 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A4654 | 7C 08 02 A6 */	mflr r0
/* 813A4658 | 38 80 00 09 */	li r4, 0x9
/* 813A465C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A4660 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A4664 | 7C 7F 1B 78 */	mr r31, r3
/* 813A4668 | 48 00 2B 3D */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813A466C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A4670 | 40 82 00 28 */	bne .L_813A4698
/* 813A4674 | 7F E3 FB 78 */	mr r3, r31
/* 813A4678 | 38 80 00 09 */	li r4, 0x9
/* 813A467C | 48 00 2B 65 */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813A4680 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813A4684 | 4B FC 55 A1 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813A4688 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 813A468C | 4B FC 60 79 */	bl calc__Q33ipl6layout6ObjectFv
/* 813A4690 | 38 00 00 00 */	li r0, 0x0
/* 813A4694 | 90 1F 00 34 */	stw r0, 0x34(r31)
.L_813A4698:
/* 813A4698 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A469C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A46A0 | 7C 08 03 A6 */	mtlr r0
/* 813A46A4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A46A8 | 4E 80 00 20 */	blr
.endfn on_scroll_r__Q33ipl5scene11ChanAppBaseFv

# .text:0xE48 | 0x813A46AC | size: 0x5C
# ipl::scene::ChanAppBase::on_scroll_l()
.fn on_scroll_l__Q33ipl5scene11ChanAppBaseFv, global
/* 813A46AC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A46B0 | 7C 08 02 A6 */	mflr r0
/* 813A46B4 | 38 80 00 0A */	li r4, 0xa
/* 813A46B8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A46BC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A46C0 | 7C 7F 1B 78 */	mr r31, r3
/* 813A46C4 | 48 00 2A E1 */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813A46C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A46CC | 40 82 00 28 */	bne .L_813A46F4
/* 813A46D0 | 7F E3 FB 78 */	mr r3, r31
/* 813A46D4 | 38 80 00 09 */	li r4, 0x9
/* 813A46D8 | 48 00 2B 09 */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813A46DC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813A46E0 | 4B FC 55 45 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813A46E4 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 813A46E8 | 4B FC 60 1D */	bl calc__Q33ipl6layout6ObjectFv
/* 813A46EC | 38 00 00 00 */	li r0, 0x0
/* 813A46F0 | 90 1F 00 34 */	stw r0, 0x34(r31)
.L_813A46F4:
/* 813A46F4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A46F8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A46FC | 7C 08 03 A6 */	mtlr r0
/* 813A4700 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A4704 | 4E 80 00 20 */	blr
.endfn on_scroll_l__Q33ipl5scene11ChanAppBaseFv

# .text:0xEA4 | 0x813A4708 | size: 0x8
# ipl::scene::ChanAppBase::@40@onEvent(unsigned long, unsigned long, void*)
.fn "@40@onEvent__Q33ipl5scene11ChanAppBaseFUlUlPv", global
/* 813A4708 | 38 63 FF D8 */	subi r3, r3, 0x28
/* 813A470C | 4B FF FD A4 */	b onEvent__Q33ipl5scene11ChanAppBaseFUlUlPv
.endfn "@40@onEvent__Q33ipl5scene11ChanAppBaseFUlUlPv"

# 0x8164CC68..0x8164D108 | size: 0x4A0
.data
.balign 8

# .data:0x0 | 0x8164CC68 | size: 0x368
.obj lbl_8164CC68, global
	.4byte 0x69745F4F
	.4byte 0x626A4368
	.4byte 0x616E6E65
	.4byte 0x6C456469
	.4byte 0x745F615F
	.4byte 0x44617461
	.4byte 0x496E2E62
	.4byte 0x726C616E
	.4byte 0x00475F44
	.4byte 0x61746141
	.4byte 0x6C6C0069
	.4byte 0x745F4F62
	.4byte 0x6A436861
	.4byte 0x6E6E656C
	.4byte 0x45646974
	.4byte 0x5F615F44
	.4byte 0x6174614F
	.4byte 0x75742E62
	.4byte 0x726C616E
	.4byte 0x0069745F
	.4byte 0x4F626A43
	.4byte 0x68616E6E
	.4byte 0x656C4564
	.4byte 0x69745F61
	.4byte 0x5F53656C
	.4byte 0x65637449
	.4byte 0x6E2E6272
	.4byte 0x6C616E00
	.4byte 0x475F5365
	.4byte 0x6C656374
	.4byte 0x0069745F
	.4byte 0x4F626A43
	.4byte 0x68616E6E
	.4byte 0x656C4564
	.4byte 0x69745F61
	.4byte 0x5F53656C
	.4byte 0x65637457
	.4byte 0x6969466F
	.4byte 0x75637573
	.4byte 0x496E2E62
	.4byte 0x726C616E
	.4byte 0x00475F53
	.4byte 0x656C6563
	.4byte 0x74576969
	.4byte 0x0069745F
	.4byte 0x4F626A43
	.4byte 0x68616E6E
	.4byte 0x656C4564
	.4byte 0x69745F61
	.4byte 0x5F53656C
	.4byte 0x65637457
	.4byte 0x6969466F
	.4byte 0x75637573
	.4byte 0x4F75742E
	.4byte 0x62726C61
	.4byte 0x6E006974
	.4byte 0x5F4F626A
	.4byte 0x4368616E
	.4byte 0x6E656C45
	.4byte 0x6469745F
	.4byte 0x615F5365
	.4byte 0x6C656374
	.4byte 0x57696946
	.4byte 0x6C617368
	.4byte 0x2E62726C
	.4byte 0x616E0069
	.4byte 0x745F4F62
	.4byte 0x6A436861
	.4byte 0x6E6E656C
	.4byte 0x45646974
	.4byte 0x5F615F53
	.4byte 0x656C6563
	.4byte 0x74536449
	.4byte 0x6E2E6272
	.4byte 0x6C616E00
	.4byte 0x475F5365
	.4byte 0x6C656374
	.4byte 0x53640069
	.4byte 0x745F4F62
	.4byte 0x6A436861
	.4byte 0x6E6E656C
	.4byte 0x45646974
	.4byte 0x5F615F53
	.4byte 0x656C6563
	.4byte 0x7453644F
	.4byte 0x75742E62
	.4byte 0x726C616E
	.4byte 0x0069745F
	.4byte 0x4F626A43
	.4byte 0x68616E6E
	.4byte 0x656C4564
	.4byte 0x69745F61
	.4byte 0x5F53656C
	.4byte 0x65637453
	.4byte 0x64466C61
	.4byte 0x73682E62
	.4byte 0x726C616E
	.4byte 0x0069745F
	.4byte 0x4F626A43
	.4byte 0x68616E6E
	.4byte 0x656C4564
	.4byte 0x69745F61
	.4byte 0x5F417277
	.4byte 0x4C312E62
	.4byte 0x726C616E
	.4byte 0x0069745F
	.4byte 0x4F626A43
	.4byte 0x68616E6E
	.4byte 0x656C4564
	.4byte 0x69745F61
	.4byte 0x5F417772
	.4byte 0x52312E62
	.4byte 0x726C616E
	.4byte 0x0069745F
	.4byte 0x4F626A43
	.4byte 0x68616E6E
	.4byte 0x656C4564
	.4byte 0x69745F61
	.4byte 0x5F53656C
	.4byte 0x6563742E
	.4byte 0x62726C61
	.4byte 0x6E00475F
	.4byte 0x41727752
	.4byte 0x5F416300
	.4byte 0x475F4172
	.4byte 0x774C5F41
	.4byte 0x63006974
	.4byte 0x5F4F626A
	.4byte 0x4368616E
	.4byte 0x6E656C45
	.4byte 0x6469745F
	.4byte 0x615F466F
	.4byte 0x6375734F
	.4byte 0x6E2E6272
	.4byte 0x6C616E00
	.4byte 0x475F4172
	.4byte 0x77525F46
	.4byte 0x6F637573
	.4byte 0x00475F41
	.4byte 0x72774C5F
	.4byte 0x466F6375
	.4byte 0x73006974
	.4byte 0x5F4F626A
	.4byte 0x4368616E
	.4byte 0x6E656C45
	.4byte 0x6469745F
	.4byte 0x615F466F
	.4byte 0x6375734F
	.4byte 0x66662E62
	.4byte 0x726C616E
	.4byte 0x0069745F
	.4byte 0x4F626A43
	.4byte 0x68616E6E
	.4byte 0x656C4564
	.4byte 0x69745F61
	.4byte 0x5F4C6F6F
	.4byte 0x702E6272
	.4byte 0x6C616E00
	.4byte 0x475F4172
	.4byte 0x77526F6F
	.4byte 0x70006974
	.4byte 0x5F4F626A
	.4byte 0x4368616E
	.4byte 0x6E656C45
	.4byte 0x6469745F
	.4byte 0x615F4170
	.4byte 0x70656172
	.4byte 0x2E62726C
	.4byte 0x616E0047
	.4byte 0x5F417277
	.4byte 0x525F456E
	.4byte 0x6400475F
	.4byte 0x4172774C
	.4byte 0x5F456E64
	.4byte 0x0069745F
	.4byte 0x4F626A43
	.4byte 0x68616E6E
	.4byte 0x656C4564
	.4byte 0x69745F61
	.4byte 0x5F4C6F73
	.4byte 0x742E6272
	.4byte 0x6C616E00
	.4byte 0x69745F4F
	.4byte 0x626A4368
	.4byte 0x616E6E65
	.4byte 0x6C456469
	.4byte 0x745F615F
	.4byte 0x4572726F
	.4byte 0x72547874
	.4byte 0x496E2E62
	.4byte 0x726C616E
	.4byte 0x00475F45
	.4byte 0x72726F72
	.4byte 0x54787400
	.4byte 0x69745F4F
	.4byte 0x626A4368
	.4byte 0x616E6E65
	.4byte 0x6C456469
	.4byte 0x745F615F
	.4byte 0x4572726F
	.4byte 0x72547874
	.4byte 0x4F75742E
	.4byte 0x62726C61
	.4byte 0x6E00545F
	.4byte 0x53656C65
	.4byte 0x63745769
	.4byte 0x695F3030
	.4byte 0x00545F53
	.4byte 0x656C6563
	.4byte 0x74576969
	.4byte 0x5F303100
	.4byte 0x545F5365
	.4byte 0x6C656374
	.4byte 0x53645F30
	.4byte 0x3000545F
	.4byte 0x53656C65
	.4byte 0x63745364
	.4byte 0x5F303100
.endobj lbl_8164CC68

# .data:0x368 | 0x8164CFD0 | size: 0x3C
.obj lbl_8164CFD0, global
	.4byte 0x545F4572
	.4byte 0x726F725F
	.4byte 0x3030004E
	.4byte 0x5F436170
	.4byte 0x615F3030
	.4byte 0x00545F43
	.4byte 0x6170615F
	.4byte 0x30300042
	.4byte 0x5F53656C
	.4byte 0x65637457
	.4byte 0x69695F30
	.4byte 0x3000425F
	.4byte 0x53656C65
	.4byte 0x63745364
	.4byte 0x5F303000
.endobj lbl_8164CFD0

# .data:0x3A4 | 0x8164D00C | size: 0x30
.obj jumptable_8164D00C, local
	.rel calc__Q33ipl5scene11ChanAppBaseFv, .L_813A40D0
	.rel calc__Q33ipl5scene11ChanAppBaseFv, .L_813A3FF0
	.rel calc__Q33ipl5scene11ChanAppBaseFv, .L_813A3FFC
	.rel calc__Q33ipl5scene11ChanAppBaseFv, .L_813A401C
	.rel calc__Q33ipl5scene11ChanAppBaseFv, .L_813A403C
	.rel calc__Q33ipl5scene11ChanAppBaseFv, .L_813A405C
	.rel calc__Q33ipl5scene11ChanAppBaseFv, .L_813A40D0
	.rel calc__Q33ipl5scene11ChanAppBaseFv, .L_813A40D0
	.rel calc__Q33ipl5scene11ChanAppBaseFv, .L_813A407C
	.rel calc__Q33ipl5scene11ChanAppBaseFv, .L_813A4088
	.rel calc__Q33ipl5scene11ChanAppBaseFv, .L_813A4094
	.rel calc__Q33ipl5scene11ChanAppBaseFv, .L_813A40B4
.endobj jumptable_8164D00C

# .data:0x3D4 | 0x8164D03C | size: 0xBC
# ipl::scene::ChanAppBase::__vtable
.obj __vt__Q33ipl5scene11ChanAppBase, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene11ChanAppBaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@40@onEvent__Q33ipl5scene11ChanAppBaseFUlUlPv"
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
	.4byte onEvent__Q33ipl5scene11ChanAppBaseFUlUlPv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj __vt__Q33ipl5scene11ChanAppBase

# .data:0x490 | 0x8164D0F8 | size: 0x10
# ipl::scene::AnmController::__vtable
.obj __vt__Q33ipl5scene13AnmController, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene13AnmControllerFv
	.4byte 0x00000000
.endobj __vt__Q33ipl5scene13AnmController

# 0x81696820..0x81696848 | size: 0x28
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696820 | size: 0x6
.obj lbl_81696820, global
	.string "G_Arw"
.endobj lbl_81696820

# .sdata:0x6 | 0x81696826 | size: 0x4
.obj lbl_81696826, global
	.string16 " "
.endobj lbl_81696826

# .sdata:0xA | 0x8169682A | size: 0x7
.obj lbl_8169682A, global
	.string "N_ArwR"
.endobj lbl_8169682A

# .sdata:0x11 | 0x81696831 | size: 0x7
.obj lbl_81696831, global
	.string "N_ArwL"
.endobj lbl_81696831

# .sdata:0x18 | 0x81696838 | size: 0x7
.obj lbl_81696838, global
	.string "B_ArwR"
.endobj lbl_81696838

# .sdata:0x1F | 0x8169683F | size: 0x9
.obj lbl_8169683F, global
	.4byte 0x425F4172
	.4byte 0x774C0000
	.byte 0x00
.endobj lbl_8169683F
