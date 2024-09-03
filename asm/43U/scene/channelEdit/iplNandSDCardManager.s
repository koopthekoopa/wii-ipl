.include "macros.inc"
.file "iplNandSDCardManager.cpp"

# 0x813A763C..0x813AA23C | size: 0x2C00
.text
.balign 4

# .text:0x0 | 0x813A763C | size: 0x218
# ipl::scene::NandSDCardManager::NandSDCardManager(ipl::scene::NandSDCardManager::Mode)
.fn __ct__Q33ipl5scene17NandSDCardManagerFQ43ipl5scene17NandSDCardManager4Mode, global
/* 813A763C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A7640 | 7C 08 02 A6 */	mflr r0
/* 813A7644 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A7648 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A764C | 48 25 1E 79 */	bl _savegpr_28
/* 813A7650 | 3B A0 00 00 */	li r29, 0x0
/* 813A7654 | 3C A0 81 3A */	lis r5, __dt__Q33ipl5scene9ThumbnailFv@ha
/* 813A7658 | 93 A3 00 00 */	stw r29, 0x0(r3)
/* 813A765C | 3C C0 81 3A */	lis r6, __ct__Q33ipl5scene9ThumbnailFv@ha
/* 813A7660 | 7C 7F 1B 78 */	mr r31, r3
/* 813A7664 | 38 A5 64 8C */	addi r5, r5, __dt__Q33ipl5scene9ThumbnailFv@l
/* 813A7668 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 813A766C | 38 86 78 54 */	addi r4, r6, __ct__Q33ipl5scene9ThumbnailFv@l
/* 813A7670 | 38 C0 06 28 */	li r6, 0x628
/* 813A7674 | 38 E0 00 0F */	li r7, 0xf
/* 813A7678 | 93 A3 00 08 */	stw r29, 0x8(r3)
/* 813A767C | 93 A3 00 0C */	stw r29, 0xc(r3)
/* 813A7680 | 93 A3 00 10 */	stw r29, 0x10(r3)
/* 813A7684 | 93 A3 00 14 */	stw r29, 0x14(r3)
/* 813A7688 | 93 A3 00 18 */	stw r29, 0x18(r3)
/* 813A768C | 38 63 00 38 */	addi r3, r3, 0x38
/* 813A7690 | 48 25 1B 71 */	bl __construct_array
/* 813A7694 | 3C 80 81 3A */	lis r4, __ct__Q33ipl5scene17WiiBannerFileInfoFv@ha
/* 813A7698 | 3C A0 81 3A */	lis r5, __dt__Q33ipl5scene17WiiBannerFileInfoFv@ha
/* 813A769C | 3C C0 00 01 */	lis r6, 0x1
/* 813A76A0 | 38 7F 5C 90 */	addi r3, r31, 0x5c90
/* 813A76A4 | 38 84 78 B8 */	addi r4, r4, __ct__Q33ipl5scene17WiiBannerFileInfoFv@l
/* 813A76A8 | 38 A5 79 C8 */	addi r5, r5, __dt__Q33ipl5scene17WiiBannerFileInfoFv@l
/* 813A76AC | 38 C6 F1 B0 */	subi r6, r6, 0xe50
/* 813A76B0 | 38 E0 00 0F */	li r7, 0xf
/* 813A76B4 | 48 25 1B 4D */	bl __construct_array
/* 813A76B8 | 3D 1F 00 0F */	addis r8, r31, 0xf
/* 813A76BC | 38 00 FF FF */	li r0, -0x1
/* 813A76C0 | 38 E0 00 04 */	li r7, 0x4
/* 813A76C4 | 38 C0 00 0F */	li r6, 0xf
/* 813A76C8 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813A76CC | 93 A8 85 E0 */	stw r29, -0x7a20(r8)
/* 813A76D0 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813A76D4 | 38 60 00 08 */	li r3, 0x8
/* 813A76D8 | 93 A8 85 E4 */	stw r29, -0x7a1c(r8)
/* 813A76DC | 38 A0 00 04 */	li r5, 0x4
/* 813A76E0 | 93 A8 85 E8 */	stw r29, -0x7a18(r8)
/* 813A76E4 | 93 A8 85 EC */	stw r29, -0x7a14(r8)
/* 813A76E8 | 90 E8 86 70 */	stw r7, -0x7990(r8)
/* 813A76EC | 93 A8 86 74 */	stw r29, -0x798c(r8)
/* 813A76F0 | 93 A8 86 78 */	stw r29, -0x7988(r8)
/* 813A76F4 | 93 A8 86 7C */	stw r29, -0x7984(r8)
/* 813A76F8 | 90 C8 87 70 */	stw r6, -0x7890(r8)
/* 813A76FC | 93 A8 87 74 */	stw r29, -0x788c(r8)
/* 813A7700 | 93 A8 87 78 */	stw r29, -0x7888(r8)
/* 813A7704 | 93 A8 87 7C */	stw r29, -0x7884(r8)
/* 813A7708 | 90 08 87 80 */	stw r0, -0x7880(r8)
/* 813A770C | 90 08 87 84 */	stw r0, -0x787c(r8)
/* 813A7710 | 9B A8 87 90 */	stb r29, -0x7870(r8)
/* 813A7714 | 93 A8 87 9C */	stw r29, -0x7864(r8)
/* 813A7718 | 93 A8 87 98 */	stw r29, -0x7868(r8)
/* 813A771C | 9B A8 87 A0 */	stb r29, -0x7860(r8)
/* 813A7720 | 80 84 00 28 */	lwz r4, 0x28(r4)
/* 813A7724 | 48 25 09 8D */	bl __nw__FUlPQ23EGG4Heapi
/* 813A7728 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A772C | 41 82 00 08 */	beq .L_813A7734
/* 813A7730 | 4B FA 0C BD */	bl __ct__Q23ipl12NandSDWorkerFv
.L_813A7734:
/* 813A7734 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 813A7738 | 90 7F 00 08 */	stw r3, 0x8(r31)
/* 813A773C | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 813A7740 | 3C 80 00 04 */	lis r4, 0x4
/* 813A7744 | 80 7D 00 28 */	lwz r3, 0x28(r29)
/* 813A7748 | 38 84 EA 60 */	subi r4, r4, 0x15a0
/* 813A774C | 38 A0 00 40 */	li r5, 0x40
/* 813A7750 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A7754 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813A7758 | 7D 89 03 A6 */	mtctr r12
/* 813A775C | 4E 80 04 21 */	bctrl
/* 813A7760 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 813A7764 | 90 7F 00 0C */	stw r3, 0xc(r31)
/* 813A7768 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813A776C | 40 82 00 40 */	bne .L_813A77AC
/* 813A7770 | 3C 60 00 02 */	lis r3, 0x2
/* 813A7774 | 38 80 00 60 */	li r4, 0x60
/* 813A7778 | 38 63 96 20 */	subi r3, r3, 0x69e0
/* 813A777C | 38 A0 00 20 */	li r5, 0x20
/* 813A7780 | 48 1B 3E 71 */	bl fn_8155B5F0
/* 813A7784 | 7C 64 1B 78 */	mr r4, r3
/* 813A7788 | 80 7D 00 28 */	lwz r3, 0x28(r29)
/* 813A778C | 3C 84 00 04 */	addis r4, r4, 0x4
/* 813A7790 | 38 A0 00 40 */	li r5, 0x40
/* 813A7794 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A7798 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813A779C | 7D 89 03 A6 */	mtctr r12
/* 813A77A0 | 4E 80 04 21 */	bctrl
/* 813A77A4 | 90 7F 00 10 */	stw r3, 0x10(r31)
/* 813A77A8 | 48 00 00 3C */	b .L_813A77E4
.L_813A77AC:
/* 813A77AC | 3C 60 00 01 */	lis r3, 0x1
/* 813A77B0 | 38 80 00 5A */	li r4, 0x5a
/* 813A77B4 | 38 63 F0 C0 */	subi r3, r3, 0xf40
/* 813A77B8 | 38 A0 00 20 */	li r5, 0x20
/* 813A77BC | 48 1B 3E 35 */	bl fn_8155B5F0
/* 813A77C0 | 7C 64 1B 78 */	mr r4, r3
/* 813A77C4 | 80 7D 00 28 */	lwz r3, 0x28(r29)
/* 813A77C8 | 3C 84 00 04 */	addis r4, r4, 0x4
/* 813A77CC | 38 A0 00 40 */	li r5, 0x40
/* 813A77D0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A77D4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813A77D8 | 7D 89 03 A6 */	mtctr r12
/* 813A77DC | 4E 80 04 21 */	bctrl
/* 813A77E0 | 90 7F 00 10 */	stw r3, 0x10(r31)
.L_813A77E4:
/* 813A77E4 | 38 7F 00 1C */	addi r3, r31, 0x1c
/* 813A77E8 | 38 80 00 0C */	li r4, 0xc
/* 813A77EC | 48 16 A8 71 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813A77F0 | 38 7F 00 28 */	addi r3, r31, 0x28
/* 813A77F4 | 38 80 00 0C */	li r4, 0xc
/* 813A77F8 | 48 16 A8 65 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813A77FC | 3C 60 00 01 */	lis r3, 0x1
/* 813A7800 | 3B 80 00 00 */	li r28, 0x0
/* 813A7804 | 3B A3 F1 B0 */	subi r29, r3, 0xe50
/* 813A7808 | 3B C0 00 00 */	li r30, 0x0
.L_813A780C:
/* 813A780C | 7C 7F F2 14 */	add r3, r31, r30
/* 813A7810 | 38 63 00 38 */	addi r3, r3, 0x38
/* 813A7814 | 48 00 2B 4D */	bl init__Q33ipl5scene9ThumbnailFv
/* 813A7818 | 7C 1C E9 D6 */	mullw r0, r28, r29
/* 813A781C | 7C 7F 02 14 */	add r3, r31, r0
/* 813A7820 | 38 63 5C 90 */	addi r3, r3, 0x5c90
/* 813A7824 | 48 02 20 A9 */	bl init__Q33ipl5scene17WiiBannerFileInfoFv
/* 813A7828 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813A782C | 3B DE 06 28 */	addi r30, r30, 0x628
/* 813A7830 | 2C 1C 00 0F */	cmpwi r28, 0xf
/* 813A7834 | 41 80 FF D8 */	blt .L_813A780C
/* 813A7838 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A783C | 7F E3 FB 78 */	mr r3, r31
/* 813A7840 | 48 25 1C D1 */	bl _restgpr_28
/* 813A7844 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A7848 | 7C 08 03 A6 */	mtlr r0
/* 813A784C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A7850 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene17NandSDCardManagerFQ43ipl5scene17NandSDCardManager4Mode

# .text:0x218 | 0x813A7854 | size: 0x64
# ipl::scene::Thumbnail::Thumbnail()
.fn __ct__Q33ipl5scene9ThumbnailFv, global
/* 813A7854 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A7858 | 7C 08 02 A6 */	mflr r0
/* 813A785C | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813A7860 | 3C C0 00 02 */	lis r6, 0x2
/* 813A7864 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A7868 | 38 00 00 00 */	li r0, 0x0
/* 813A786C | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813A7870 | 38 A0 00 20 */	li r5, 0x20
/* 813A7874 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A7878 | 7C 7F 1B 78 */	mr r31, r3
/* 813A787C | 90 03 00 00 */	stw r0, 0x0(r3)
/* 813A7880 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 813A7884 | 98 03 06 20 */	stb r0, 0x620(r3)
/* 813A7888 | 38 66 90 00 */	subi r3, r6, 0x7000
/* 813A788C | 80 84 00 28 */	lwz r4, 0x28(r4)
/* 813A7890 | 48 25 08 45 */	bl __nwa__FUlPQ23EGG4Heapi
/* 813A7894 | 90 7F 00 08 */	stw r3, 0x8(r31)
/* 813A7898 | 7F E3 FB 78 */	mr r3, r31
/* 813A789C | 48 00 2A C5 */	bl init__Q33ipl5scene9ThumbnailFv
/* 813A78A0 | 7F E3 FB 78 */	mr r3, r31
/* 813A78A4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A78A8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A78AC | 7C 08 03 A6 */	mtlr r0
/* 813A78B0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A78B4 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene9ThumbnailFv

# .text:0x27C | 0x813A78B8 | size: 0x110
# ipl::scene::WiiBannerFileInfo::WiiBannerFileInfo()
.fn __ct__Q33ipl5scene17WiiBannerFileInfoFv, global
/* 813A78B8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A78BC | 7C 08 02 A6 */	mflr r0
/* 813A78C0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A78C4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A78C8 | 48 25 1B F9 */	bl _savegpr_27
/* 813A78CC | 3B C0 00 00 */	li r30, 0x0
/* 813A78D0 | 3C C3 00 01 */	addis r6, r3, 0x1
/* 813A78D4 | 9B C3 00 00 */	stb r30, 0x0(r3)
/* 813A78D8 | 7C 7B 1B 78 */	mr r27, r3
/* 813A78DC | 38 80 00 00 */	li r4, 0x0
/* 813A78E0 | 38 A0 00 21 */	li r5, 0x21
/* 813A78E4 | B3 C3 00 02 */	sth r30, 0x2(r3)
/* 813A78E8 | 93 C3 00 04 */	stw r30, 0x4(r3)
/* 813A78EC | 9B C3 00 0C */	stb r30, 0xc(r3)
/* 813A78F0 | 9B C3 00 0D */	stb r30, 0xd(r3)
/* 813A78F4 | 9B C3 00 0E */	stb r30, 0xe(r3)
/* 813A78F8 | 9B C3 00 0F */	stb r30, 0xf(r3)
/* 813A78FC | 93 C3 01 04 */	stw r30, 0x104(r3)
/* 813A7900 | 38 63 00 10 */	addi r3, r3, 0x10
/* 813A7904 | 93 C6 F1 A8 */	stw r30, -0xe58(r6)
/* 813A7908 | 9B C6 F1 AC */	stb r30, -0xe54(r6)
/* 813A790C | 48 25 EB 5D */	bl fn_81606468
/* 813A7910 | 38 7B 00 52 */	addi r3, r27, 0x52
/* 813A7914 | 38 80 00 00 */	li r4, 0x0
/* 813A7918 | 38 A0 00 21 */	li r5, 0x21
/* 813A791C | 48 25 EB 4D */	bl fn_81606468
/* 813A7920 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813A7924 | 38 80 60 00 */	li r4, 0x6000
/* 813A7928 | 3B E3 90 08 */	addi r31, r3, smArg__Q23ipl6System@l
/* 813A792C | 38 A0 00 20 */	li r5, 0x20
/* 813A7930 | 80 7F 00 28 */	lwz r3, 0x28(r31)
/* 813A7934 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A7938 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813A793C | 7D 89 03 A6 */	mtctr r12
/* 813A7940 | 4E 80 04 21 */	bctrl
/* 813A7944 | 90 7B 00 94 */	stw r3, 0x94(r27)
/* 813A7948 | 38 80 00 00 */	li r4, 0x0
/* 813A794C | 38 A0 60 00 */	li r5, 0x6000
/* 813A7950 | 4B F8 89 E5 */	bl memset
/* 813A7954 | 3B 80 00 00 */	li r28, 0x0
.L_813A7958:
/* 813A7958 | 80 7F 00 28 */	lwz r3, 0x28(r31)
/* 813A795C | 7F BB F2 14 */	add r29, r27, r30
/* 813A7960 | 38 80 12 00 */	li r4, 0x1200
/* 813A7964 | 38 A0 00 20 */	li r5, 0x20
/* 813A7968 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A796C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813A7970 | 7D 89 03 A6 */	mtctr r12
/* 813A7974 | 4E 80 04 21 */	bctrl
/* 813A7978 | 90 7D 00 98 */	stw r3, 0x98(r29)
/* 813A797C | 38 80 00 00 */	li r4, 0x0
/* 813A7980 | 38 A0 12 00 */	li r5, 0x1200
/* 813A7984 | 4B F8 89 B1 */	bl memset
/* 813A7988 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813A798C | 3B DE 00 04 */	addi r30, r30, 0x4
/* 813A7990 | 2C 1C 00 08 */	cmpwi r28, 0x8
/* 813A7994 | 41 80 FF C4 */	blt .L_813A7958
/* 813A7998 | 3C 80 00 01 */	lis r4, 0x1
/* 813A799C | 38 7B 01 08 */	addi r3, r27, 0x108
/* 813A79A0 | 38 A4 F0 A0 */	subi r5, r4, 0xf60
/* 813A79A4 | 38 80 00 00 */	li r4, 0x0
/* 813A79A8 | 4B F8 89 8D */	bl memset
/* 813A79AC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A79B0 | 7F 63 DB 78 */	mr r3, r27
/* 813A79B4 | 48 25 1B 59 */	bl _restgpr_27
/* 813A79B8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A79BC | 7C 08 03 A6 */	mtlr r0
/* 813A79C0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A79C4 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene17WiiBannerFileInfoFv

# .text:0x38C | 0x813A79C8 | size: 0xAC
# ipl::scene::WiiBannerFileInfo::~WiiBannerFileInfo()
.fn __dt__Q33ipl5scene17WiiBannerFileInfoFv, global
/* 813A79C8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A79CC | 7C 08 02 A6 */	mflr r0
/* 813A79D0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A79D4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A79D8 | 48 25 1A E9 */	bl _savegpr_27
/* 813A79DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A79E0 | 7C 7B 1B 78 */	mr r27, r3
/* 813A79E4 | 7C 9C 23 78 */	mr r28, r4
/* 813A79E8 | 41 82 00 70 */	beq .L_813A7A58
/* 813A79EC | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813A79F0 | 3B A0 00 00 */	li r29, 0x0
/* 813A79F4 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813A79F8 | 3B E0 00 00 */	li r31, 0x0
.L_813A79FC:
/* 813A79FC | 80 7E 00 28 */	lwz r3, 0x28(r30)
/* 813A7A00 | 7C 9B FA 14 */	add r4, r27, r31
/* 813A7A04 | 80 84 00 98 */	lwz r4, 0x98(r4)
/* 813A7A08 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A7A0C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813A7A10 | 7D 89 03 A6 */	mtctr r12
/* 813A7A14 | 4E 80 04 21 */	bctrl
/* 813A7A18 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 813A7A1C | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813A7A20 | 2C 1D 00 08 */	cmpwi r29, 0x8
/* 813A7A24 | 41 80 FF D8 */	blt .L_813A79FC
/* 813A7A28 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813A7A2C | 80 9B 00 94 */	lwz r4, 0x94(r27)
/* 813A7A30 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813A7A34 | 80 63 00 28 */	lwz r3, 0x28(r3)
/* 813A7A38 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A7A3C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813A7A40 | 7D 89 03 A6 */	mtctr r12
/* 813A7A44 | 4E 80 04 21 */	bctrl
/* 813A7A48 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 813A7A4C | 40 81 00 0C */	ble .L_813A7A58
/* 813A7A50 | 7F 63 DB 78 */	mr r3, r27
/* 813A7A54 | 48 25 06 91 */	bl __dl__FPv
.L_813A7A58:
/* 813A7A58 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A7A5C | 7F 63 DB 78 */	mr r3, r27
/* 813A7A60 | 48 25 1A AD */	bl _restgpr_27
/* 813A7A64 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A7A68 | 7C 08 03 A6 */	mtlr r0
/* 813A7A6C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A7A70 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene17WiiBannerFileInfoFv

# .text:0x438 | 0x813A7A74 | size: 0x140
# ipl::scene::NandSDCardManager::~NandSDCardManager()
.fn __dt__Q33ipl5scene17NandSDCardManagerFv, global
/* 813A7A74 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A7A78 | 7C 08 02 A6 */	mflr r0
/* 813A7A7C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A7A80 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A7A84 | 48 25 1A 45 */	bl _savegpr_29
/* 813A7A88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A7A8C | 7C 7D 1B 78 */	mr r29, r3
/* 813A7A90 | 7C 9E 23 78 */	mr r30, r4
/* 813A7A94 | 41 82 01 04 */	beq .L_813A7B98
/* 813A7A98 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813A7A9C | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 813A7AA0 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813A7AA4 | 80 7F 00 28 */	lwz r3, 0x28(r31)
/* 813A7AA8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A7AAC | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813A7AB0 | 7D 89 03 A6 */	mtctr r12
/* 813A7AB4 | 4E 80 04 21 */	bctrl
/* 813A7AB8 | 80 7F 00 28 */	lwz r3, 0x28(r31)
/* 813A7ABC | 80 9D 00 10 */	lwz r4, 0x10(r29)
/* 813A7AC0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A7AC4 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813A7AC8 | 7D 89 03 A6 */	mtctr r12
/* 813A7ACC | 4E 80 04 21 */	bctrl
/* 813A7AD0 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 813A7AD4 | 38 80 00 01 */	li r4, 0x1
/* 813A7AD8 | 4B FA 09 21 */	bl __dt__Q23ipl12NandSDWorkerFv
/* 813A7ADC | 38 80 00 00 */	li r4, 0x0
/* 813A7AE0 | 48 00 00 24 */	b .L_813A7B04
.L_813A7AE4:
/* 813A7AE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A7AE8 | 41 82 00 30 */	beq .L_813A7B18
/* 813A7AEC | 7F E4 FB 78 */	mr r4, r31
/* 813A7AF0 | 38 7D 00 1C */	addi r3, r29, 0x1c
/* 813A7AF4 | 48 16 A7 7D */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813A7AF8 | 7F E3 FB 78 */	mr r3, r31
/* 813A7AFC | 48 25 05 E9 */	bl __dl__FPv
/* 813A7B00 | 38 80 00 00 */	li r4, 0x0
.L_813A7B04:
/* 813A7B04 | 38 7D 00 1C */	addi r3, r29, 0x1c
/* 813A7B08 | 48 16 A7 D5 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A7B0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A7B10 | 7C 7F 1B 78 */	mr r31, r3
/* 813A7B14 | 40 82 FF D0 */	bne .L_813A7AE4
.L_813A7B18:
/* 813A7B18 | 38 80 00 00 */	li r4, 0x0
/* 813A7B1C | 48 00 00 24 */	b .L_813A7B40
.L_813A7B20:
/* 813A7B20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A7B24 | 41 82 00 30 */	beq .L_813A7B54
/* 813A7B28 | 7F E4 FB 78 */	mr r4, r31
/* 813A7B2C | 38 7D 00 28 */	addi r3, r29, 0x28
/* 813A7B30 | 48 16 A7 41 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813A7B34 | 7F E3 FB 78 */	mr r3, r31
/* 813A7B38 | 48 25 05 AD */	bl __dl__FPv
/* 813A7B3C | 38 80 00 00 */	li r4, 0x0
.L_813A7B40:
/* 813A7B40 | 38 7D 00 28 */	addi r3, r29, 0x28
/* 813A7B44 | 48 16 A7 99 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A7B48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A7B4C | 7C 7F 1B 78 */	mr r31, r3
/* 813A7B50 | 40 82 FF D0 */	bne .L_813A7B20
.L_813A7B54:
/* 813A7B54 | 3C 80 81 3A */	lis r4, __dt__Q33ipl5scene17WiiBannerFileInfoFv@ha
/* 813A7B58 | 3C A0 00 01 */	lis r5, 0x1
/* 813A7B5C | 38 7D 5C 90 */	addi r3, r29, 0x5c90
/* 813A7B60 | 38 C0 00 0F */	li r6, 0xf
/* 813A7B64 | 38 84 79 C8 */	addi r4, r4, __dt__Q33ipl5scene17WiiBannerFileInfoFv@l
/* 813A7B68 | 38 A5 F1 B0 */	subi r5, r5, 0xe50
/* 813A7B6C | 48 25 17 8D */	bl __destroy_arr
/* 813A7B70 | 3C 80 81 3A */	lis r4, __dt__Q33ipl5scene9ThumbnailFv@ha
/* 813A7B74 | 38 7D 00 38 */	addi r3, r29, 0x38
/* 813A7B78 | 38 84 64 8C */	addi r4, r4, __dt__Q33ipl5scene9ThumbnailFv@l
/* 813A7B7C | 38 A0 06 28 */	li r5, 0x628
/* 813A7B80 | 38 C0 00 0F */	li r6, 0xf
/* 813A7B84 | 48 25 17 75 */	bl __destroy_arr
/* 813A7B88 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813A7B8C | 40 81 00 0C */	ble .L_813A7B98
/* 813A7B90 | 7F A3 EB 78 */	mr r3, r29
/* 813A7B94 | 48 25 05 51 */	bl __dl__FPv
.L_813A7B98:
/* 813A7B98 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A7B9C | 7F A3 EB 78 */	mr r3, r29
/* 813A7BA0 | 48 25 19 75 */	bl _restgpr_29
/* 813A7BA4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A7BA8 | 7C 08 03 A6 */	mtlr r0
/* 813A7BAC | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A7BB0 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene17NandSDCardManagerFv

# .text:0x578 | 0x813A7BB4 | size: 0x1C4
# ipl::scene::NandSDCardManager::calc()
.fn calc__Q33ipl5scene17NandSDCardManagerFv, global
/* 813A7BB4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A7BB8 | 7C 08 02 A6 */	mflr r0
/* 813A7BBC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A7BC0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A7BC4 | 7C 7F 1B 78 */	mr r31, r3
/* 813A7BC8 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 813A7BCC | 28 00 00 1E */	cmplwi r0, 0x1e
/* 813A7BD0 | 41 81 01 94 */	bgt .L_813A7D64
/* 813A7BD4 | 3C 80 81 65 */	lis r4, jumptable_8164D7C0@ha
/* 813A7BD8 | 54 00 10 3A */	slwi r0, r0, 2
/* 813A7BDC | 38 84 D7 C0 */	addi r4, r4, jumptable_8164D7C0@l
/* 813A7BE0 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 813A7BE4 | 7C 89 03 A6 */	mtctr r4
/* 813A7BE8 | 4E 80 04 20 */	bctr
.L_813A7BEC:
/* 813A7BEC | 48 00 02 0D */	bl on_init__Q33ipl5scene17NandSDCardManagerFv
/* 813A7BF0 | 48 00 01 74 */	b .L_813A7D64
.L_813A7BF4:
/* 813A7BF4 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A7BF8 | 4B FA 0C 11 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813A7BFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A7C00 | 40 82 01 64 */	bne .L_813A7D64
/* 813A7C04 | 38 00 00 08 */	li r0, 0x8
/* 813A7C08 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813A7C0C | 48 00 01 58 */	b .L_813A7D64
.L_813A7C10:
/* 813A7C10 | 48 00 02 6D */	bl on_startup__Q33ipl5scene17NandSDCardManagerFv
/* 813A7C14 | 48 00 01 50 */	b .L_813A7D64
.L_813A7C18:
/* 813A7C18 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A7C1C | 4B FA 0B ED */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813A7C20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A7C24 | 40 82 01 40 */	bne .L_813A7D64
/* 813A7C28 | 38 00 00 08 */	li r0, 0x8
/* 813A7C2C | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813A7C30 | 48 00 01 34 */	b .L_813A7D64
.L_813A7C34:
/* 813A7C34 | 48 00 02 F9 */	bl on_list_nandapp__Q33ipl5scene17NandSDCardManagerFv
/* 813A7C38 | 48 00 01 2C */	b .L_813A7D64
.L_813A7C3C:
/* 813A7C3C | 48 00 05 E9 */	bl on_list_sdapp__Q33ipl5scene17NandSDCardManagerFv
/* 813A7C40 | 48 00 01 24 */	b .L_813A7D64
.L_813A7C44:
/* 813A7C44 | 48 00 04 D5 */	bl on_get_nand_free__Q33ipl5scene17NandSDCardManagerFv
/* 813A7C48 | 48 00 01 1C */	b .L_813A7D64
.L_813A7C4C:
/* 813A7C4C | 48 00 05 5D */	bl on_get_sd_free__Q33ipl5scene17NandSDCardManagerFv
/* 813A7C50 | 48 00 01 14 */	b .L_813A7D64
.L_813A7C54:
/* 813A7C54 | 48 00 07 49 */	bl on_normal__Q33ipl5scene17NandSDCardManagerFv
/* 813A7C58 | 48 00 01 0C */	b .L_813A7D64
.L_813A7C5C:
/* 813A7C5C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A7C60 | 4B FA 0B 99 */	bl is_terminated__Q23ipl12NandSDWorkerFv
/* 813A7C64 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A7C68 | 41 82 00 FC */	beq .L_813A7D64
/* 813A7C6C | 38 00 00 1F */	li r0, 0x1f
/* 813A7C70 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813A7C74 | 48 00 00 F0 */	b .L_813A7D64
.L_813A7C78:
/* 813A7C78 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A7C7C | 4B FA 0B 8D */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813A7C80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A7C84 | 40 82 00 E0 */	bne .L_813A7D64
/* 813A7C88 | 38 00 00 08 */	li r0, 0x8
/* 813A7C8C | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813A7C90 | 48 00 00 D4 */	b .L_813A7D64
.L_813A7C94:
/* 813A7C94 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A7C98 | 4B FA 0B 71 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813A7C9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A7CA0 | 40 82 00 C4 */	bne .L_813A7D64
/* 813A7CA4 | 38 00 00 08 */	li r0, 0x8
/* 813A7CA8 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813A7CAC | 48 00 00 B8 */	b .L_813A7D64
.L_813A7CB0:
/* 813A7CB0 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A7CB4 | 4B FA 0B 55 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813A7CB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A7CBC | 40 82 00 A8 */	bne .L_813A7D64
/* 813A7CC0 | 38 00 00 08 */	li r0, 0x8
/* 813A7CC4 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813A7CC8 | 48 00 00 9C */	b .L_813A7D64
.L_813A7CCC:
/* 813A7CCC | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A7CD0 | 4B FA 0B 39 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813A7CD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A7CD8 | 40 82 00 8C */	bne .L_813A7D64
/* 813A7CDC | 38 00 00 08 */	li r0, 0x8
/* 813A7CE0 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813A7CE4 | 48 00 00 80 */	b .L_813A7D64
.L_813A7CE8:
/* 813A7CE8 | 48 00 0C 89 */	bl on_del_nandapp__Q33ipl5scene17NandSDCardManagerFv
/* 813A7CEC | 48 00 00 78 */	b .L_813A7D64
.L_813A7CF0:
/* 813A7CF0 | 48 00 0D 65 */	bl on_del_nandsave__Q33ipl5scene17NandSDCardManagerFv
/* 813A7CF4 | 48 00 00 70 */	b .L_813A7D64
.L_813A7CF8:
/* 813A7CF8 | 48 00 0E 09 */	bl on_del_sdsave__Q33ipl5scene17NandSDCardManagerFv
/* 813A7CFC | 48 00 00 68 */	b .L_813A7D64
.L_813A7D00:
/* 813A7D00 | 48 00 0E 9D */	bl on_del_sdapp__Q33ipl5scene17NandSDCardManagerFv
/* 813A7D04 | 48 00 00 60 */	b .L_813A7D64
.L_813A7D08:
/* 813A7D08 | 48 00 0F 31 */	bl on_get_thumbnail__Q33ipl5scene17NandSDCardManagerFv
/* 813A7D0C | 48 00 00 58 */	b .L_813A7D64
.L_813A7D10:
/* 813A7D10 | 48 00 10 B9 */	bl on_get_thumbnail_size__Q33ipl5scene17NandSDCardManagerFv
/* 813A7D14 | 48 00 00 50 */	b .L_813A7D64
.L_813A7D18:
/* 813A7D18 | 48 00 11 59 */	bl on_get_wiibanner__Q33ipl5scene17NandSDCardManagerFv
/* 813A7D1C | 48 00 00 48 */	b .L_813A7D64
.L_813A7D20:
/* 813A7D20 | 48 00 12 51 */	bl on_get_wiibanner_size__Q33ipl5scene17NandSDCardManagerFv
/* 813A7D24 | 48 00 00 40 */	b .L_813A7D64
.L_813A7D28:
/* 813A7D28 | 48 00 13 0D */	bl iplNandSDCardManager_813A9034
/* 813A7D2C | 48 00 00 38 */	b .L_813A7D64
.L_813A7D30:
/* 813A7D30 | 48 00 13 69 */	bl iplNandSDCardManager_813A9098
/* 813A7D34 | 48 00 00 30 */	b .L_813A7D64
.L_813A7D38:
/* 813A7D38 | 48 00 13 ED */	bl iplNandSDCardManager_813A9124
/* 813A7D3C | 48 00 00 28 */	b .L_813A7D64
.L_813A7D40:
/* 813A7D40 | 48 00 14 A1 */	bl iplNandSDCardManager_813A91E0
/* 813A7D44 | 48 00 00 20 */	b .L_813A7D64
.L_813A7D48:
/* 813A7D48 | 48 00 15 55 */	bl iplNandSDCardManager_813A929C
/* 813A7D4C | 48 00 00 18 */	b .L_813A7D64
.L_813A7D50:
/* 813A7D50 | 48 00 15 F9 */	bl iplNandSDCardManager_813A9348
/* 813A7D54 | 48 00 00 10 */	b .L_813A7D64
.L_813A7D58:
/* 813A7D58 | 48 00 16 AD */	bl iplNandSDCardManager_813A9404
/* 813A7D5C | 48 00 00 08 */	b .L_813A7D64
.L_813A7D60:
/* 813A7D60 | 48 00 14 19 */	bl iplNandSDCardManager_813A9178
.L_813A7D64:
/* 813A7D64 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A7D68 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A7D6C | 7C 08 03 A6 */	mtlr r0
/* 813A7D70 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A7D74 | 4E 80 00 20 */	blr
.endfn calc__Q33ipl5scene17NandSDCardManagerFv

# .text:0x73C | 0x813A7D78 | size: 0x40
# ipl::scene::NandSDCardManager::cmdGetThumbnail(ipl::scene::ChanAppBox*, int, bool)
.fn cmdGetThumbnail__Q33ipl5scene17NandSDCardManagerFPQ33ipl5scene10ChanAppBoxib, global
/* 813A7D78 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A7D7C | 7C 08 02 A6 */	mflr r0
/* 813A7D80 | 3C 63 00 0F */	addis r3, r3, 0xf
/* 813A7D84 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A7D88 | 38 00 00 00 */	li r0, 0x0
/* 813A7D8C | 38 63 86 80 */	subi r3, r3, 0x7980
/* 813A7D90 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 813A7D94 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813A7D98 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813A7D9C | 90 A1 00 10 */	stw r5, 0x10(r1)
/* 813A7DA0 | 98 C1 00 14 */	stb r6, 0x14(r1)
/* 813A7DA4 | 48 00 23 4D */	bl "push__Q33ipl7utility58Queue<Q43ipl5scene17NandSDCardManager15GetThumbnailCmd,15>FRCQ43ipl5scene17NandSDCardManager15GetThumbnailCmd"
/* 813A7DA8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A7DAC | 7C 08 03 A6 */	mtlr r0
/* 813A7DB0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A7DB4 | 4E 80 00 20 */	blr
.endfn cmdGetThumbnail__Q33ipl5scene17NandSDCardManagerFPQ33ipl5scene10ChanAppBoxib

# .text:0x77C | 0x813A7DB8 | size: 0x40
# ipl::scene::NandSDCardManager::cmdGetWiiBanner(ipl::scene::SavedataBox*, int, bool)
.fn cmdGetWiiBanner__Q33ipl5scene17NandSDCardManagerFPQ33ipl5scene11SavedataBoxib, global
/* 813A7DB8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A7DBC | 7C 08 02 A6 */	mflr r0
/* 813A7DC0 | 3C 63 00 0F */	addis r3, r3, 0xf
/* 813A7DC4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A7DC8 | 38 00 00 00 */	li r0, 0x0
/* 813A7DCC | 38 63 86 80 */	subi r3, r3, 0x7980
/* 813A7DD0 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 813A7DD4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813A7DD8 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 813A7DDC | 90 A1 00 10 */	stw r5, 0x10(r1)
/* 813A7DE0 | 98 C1 00 14 */	stb r6, 0x14(r1)
/* 813A7DE4 | 48 00 23 0D */	bl "push__Q33ipl7utility58Queue<Q43ipl5scene17NandSDCardManager15GetThumbnailCmd,15>FRCQ43ipl5scene17NandSDCardManager15GetThumbnailCmd"
/* 813A7DE8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A7DEC | 7C 08 03 A6 */	mtlr r0
/* 813A7DF0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A7DF4 | 4E 80 00 20 */	blr
.endfn cmdGetWiiBanner__Q33ipl5scene17NandSDCardManagerFPQ33ipl5scene11SavedataBoxib

# .text:0x7BC | 0x813A7DF8 | size: 0x84
# ipl::scene::NandSDCardManager::on_init()
.fn on_init__Q33ipl5scene17NandSDCardManagerFv, global
/* 813A7DF8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A7DFC | 7C 08 02 A6 */	mflr r0
/* 813A7E00 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A7E04 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A7E08 | 7C 7F 1B 78 */	mr r31, r3
/* 813A7E0C | 4B F8 BF C1 */	bl isReceiveScheduleStopped__Q23ipl6SystemFv
/* 813A7E10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A7E14 | 41 82 00 54 */	beq .L_813A7E68
/* 813A7E18 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 813A7E1C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813A7E20 | 40 82 00 20 */	bne .L_813A7E40
/* 813A7E24 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813A7E28 | 38 A0 00 00 */	li r5, 0x0
/* 813A7E2C | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 813A7E30 | 38 E0 00 12 */	li r7, 0x12
/* 813A7E34 | 80 DF 00 10 */	lwz r6, 0x10(r31)
/* 813A7E38 | 4B FA 06 01 */	bl create__Q23ipl12NandSDWorkerFPvPvPvi
/* 813A7E3C | 48 00 00 1C */	b .L_813A7E58
.L_813A7E40:
/* 813A7E40 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813A7E44 | 38 C0 00 00 */	li r6, 0x0
/* 813A7E48 | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 813A7E4C | 38 E0 00 12 */	li r7, 0x12
/* 813A7E50 | 80 BF 00 10 */	lwz r5, 0x10(r31)
/* 813A7E54 | 4B FA 05 E5 */	bl create__Q23ipl12NandSDWorkerFPvPvPvi
.L_813A7E58:
/* 813A7E58 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813A7E5C | 4B FA 0E 8D */	bl startup_async__Q23ipl12NandSDWorkerFv
/* 813A7E60 | 38 00 00 01 */	li r0, 0x1
/* 813A7E64 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_813A7E68:
/* 813A7E68 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A7E6C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A7E70 | 7C 08 03 A6 */	mtlr r0
/* 813A7E74 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A7E78 | 4E 80 00 20 */	blr
.endfn on_init__Q33ipl5scene17NandSDCardManagerFv

# .text:0x840 | 0x813A7E7C | size: 0xB0
# ipl::scene::NandSDCardManager::on_startup()
.fn on_startup__Q33ipl5scene17NandSDCardManagerFv, global
/* 813A7E7C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A7E80 | 7C 08 02 A6 */	mflr r0
/* 813A7E84 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A7E88 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A7E8C | 7C 7F 1B 78 */	mr r31, r3
/* 813A7E90 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A7E94 | 4B FA 09 75 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813A7E98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A7E9C | 40 82 00 7C */	bne .L_813A7F18
/* 813A7EA0 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 813A7EA4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813A7EA8 | 40 82 00 38 */	bne .L_813A7EE0
/* 813A7EAC | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813A7EB0 | 4B FA 09 ED */	bl get_nand_app_num__Q23ipl12NandSDWorkerFv
/* 813A7EB4 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813A7EB8 | 54 63 18 38 */	slwi r3, r3, 3
/* 813A7EBC | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813A7EC0 | 38 A0 00 04 */	li r5, 0x4
/* 813A7EC4 | 80 84 00 28 */	lwz r4, 0x28(r4)
/* 813A7EC8 | 48 25 02 0D */	bl __nwa__FUlPQ23EGG4Heapi
/* 813A7ECC | 7C 64 1B 78 */	mr r4, r3
/* 813A7ED0 | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 813A7ED4 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813A7ED8 | 4B FA 11 15 */	bl list_nand_app_async__Q23ipl12NandSDWorkerFPUx
/* 813A7EDC | 48 00 00 34 */	b .L_813A7F10
.L_813A7EE0:
/* 813A7EE0 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813A7EE4 | 4B FA 09 A9 */	bl get_nand_save_num__Q23ipl12NandSDWorkerFv
/* 813A7EE8 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813A7EEC | 54 63 18 38 */	slwi r3, r3, 3
/* 813A7EF0 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813A7EF4 | 38 A0 00 04 */	li r5, 0x4
/* 813A7EF8 | 80 84 00 28 */	lwz r4, 0x28(r4)
/* 813A7EFC | 48 25 01 D9 */	bl __nwa__FUlPQ23EGG4Heapi
/* 813A7F00 | 7C 64 1B 78 */	mr r4, r3
/* 813A7F04 | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 813A7F08 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813A7F0C | 4B FA 0E 35 */	bl list_nand_save_async__Q23ipl12NandSDWorkerFPUx
.L_813A7F10:
/* 813A7F10 | 38 00 00 04 */	li r0, 0x4
/* 813A7F14 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_813A7F18:
/* 813A7F18 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A7F1C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A7F20 | 7C 08 03 A6 */	mtlr r0
/* 813A7F24 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A7F28 | 4E 80 00 20 */	blr
.endfn on_startup__Q33ipl5scene17NandSDCardManagerFv

# .text:0x8F0 | 0x813A7F2C | size: 0x1EC
# ipl::scene::NandSDCardManager::on_list_nandapp()
.fn on_list_nandapp__Q33ipl5scene17NandSDCardManagerFv, global
/* 813A7F2C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A7F30 | 7C 08 02 A6 */	mflr r0
/* 813A7F34 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A7F38 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A7F3C | 48 25 15 85 */	bl _savegpr_27
/* 813A7F40 | 7C 7D 1B 78 */	mr r29, r3
/* 813A7F44 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A7F48 | 4B FA 08 C1 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813A7F4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A7F50 | 40 82 01 B0 */	bne .L_813A8100
/* 813A7F54 | 38 80 00 00 */	li r4, 0x0
/* 813A7F58 | 48 00 00 1C */	b .L_813A7F74
.L_813A7F5C:
/* 813A7F5C | 7F 64 DB 78 */	mr r4, r27
/* 813A7F60 | 38 7D 00 1C */	addi r3, r29, 0x1c
/* 813A7F64 | 48 16 A3 0D */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813A7F68 | 7F 63 DB 78 */	mr r3, r27
/* 813A7F6C | 48 25 01 79 */	bl __dl__FPv
/* 813A7F70 | 38 80 00 00 */	li r4, 0x0
.L_813A7F74:
/* 813A7F74 | 38 7D 00 1C */	addi r3, r29, 0x1c
/* 813A7F78 | 48 16 A3 65 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A7F7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A7F80 | 7C 7B 1B 78 */	mr r27, r3
/* 813A7F84 | 40 82 FF D8 */	bne .L_813A7F5C
/* 813A7F88 | 48 1C 29 0D */	bl fn_8156A894
/* 813A7F8C | 80 1D 00 04 */	lwz r0, 0x4(r29)
/* 813A7F90 | 3F FD 00 0F */	addis r31, r29, 0xf
/* 813A7F94 | 90 9F 87 9C */	stw r4, -0x7864(r31)
/* 813A7F98 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813A7F9C | 90 7F 87 98 */	stw r3, -0x7868(r31)
/* 813A7FA0 | 40 82 00 E0 */	bne .L_813A8080
/* 813A7FA4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813A7FA8 | 3B C0 00 00 */	li r30, 0x0
/* 813A7FAC | 3B 80 00 00 */	li r28, 0x0
/* 813A7FB0 | 3B 63 90 08 */	addi r27, r3, smArg__Q23ipl6System@l
/* 813A7FB4 | 48 00 00 B8 */	b .L_813A806C
.L_813A7FB8:
/* 813A7FB8 | 80 9F 87 98 */	lwz r4, -0x7868(r31)
/* 813A7FBC | 80 BF 87 9C */	lwz r5, -0x7864(r31)
/* 813A7FC0 | 7C A0 23 79 */	or. r0, r5, r4
/* 813A7FC4 | 41 82 00 64 */	beq .L_813A8028
/* 813A7FC8 | 80 1D 00 14 */	lwz r0, 0x14(r29)
/* 813A7FCC | 7C 60 E2 14 */	add r3, r0, r28
/* 813A7FD0 | 7C 1C 00 2E */	lwzx r0, r28, r0
/* 813A7FD4 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813A7FD8 | 7C 80 02 78 */	xor r0, r4, r0
/* 813A7FDC | 7C A3 1A 78 */	xor r3, r5, r3
/* 813A7FE0 | 7C 60 03 79 */	or. r0, r3, r0
/* 813A7FE4 | 40 82 00 44 */	bne .L_813A8028
/* 813A7FE8 | 80 9B 00 28 */	lwz r4, 0x28(r27)
/* 813A7FEC | 38 60 00 18 */	li r3, 0x18
/* 813A7FF0 | 38 A0 00 04 */	li r5, 0x4
/* 813A7FF4 | 48 25 00 BD */	bl __nw__FUlPQ23EGG4Heapi
/* 813A7FF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A7FFC | 41 82 00 1C */	beq .L_813A8018
/* 813A8000 | 80 1D 00 14 */	lwz r0, 0x14(r29)
/* 813A8004 | 7C 80 E2 14 */	add r4, r0, r28
/* 813A8008 | 7C 1C 00 2E */	lwzx r0, r28, r0
/* 813A800C | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 813A8010 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 813A8014 | 90 03 00 00 */	stw r0, 0x0(r3)
.L_813A8018:
/* 813A8018 | 7C 64 1B 78 */	mr r4, r3
/* 813A801C | 38 7D 00 1C */	addi r3, r29, 0x1c
/* 813A8020 | 48 16 A0 C5 */	bl List_Prepend__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813A8024 | 48 00 00 40 */	b .L_813A8064
.L_813A8028:
/* 813A8028 | 80 9B 00 28 */	lwz r4, 0x28(r27)
/* 813A802C | 38 60 00 18 */	li r3, 0x18
/* 813A8030 | 38 A0 00 04 */	li r5, 0x4
/* 813A8034 | 48 25 00 7D */	bl __nw__FUlPQ23EGG4Heapi
/* 813A8038 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A803C | 41 82 00 1C */	beq .L_813A8058
/* 813A8040 | 80 1D 00 14 */	lwz r0, 0x14(r29)
/* 813A8044 | 7C 80 E2 14 */	add r4, r0, r28
/* 813A8048 | 7C 1C 00 2E */	lwzx r0, r28, r0
/* 813A804C | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 813A8050 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 813A8054 | 90 03 00 00 */	stw r0, 0x0(r3)
.L_813A8058:
/* 813A8058 | 7C 64 1B 78 */	mr r4, r3
/* 813A805C | 38 7D 00 1C */	addi r3, r29, 0x1c
/* 813A8060 | 48 16 A0 15 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
.L_813A8064:
/* 813A8064 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 813A8068 | 3B 9C 00 08 */	addi r28, r28, 0x8
.L_813A806C:
/* 813A806C | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 813A8070 | 4B FA 08 2D */	bl get_nand_app_num__Q23ipl12NandSDWorkerFv
/* 813A8074 | 7C 1E 18 40 */	cmplw r30, r3
/* 813A8078 | 41 80 FF 40 */	blt .L_813A7FB8
/* 813A807C | 48 00 00 6C */	b .L_813A80E8
.L_813A8080:
/* 813A8080 | 3F 80 81 09 */	lis r28, smArg__Q23ipl6System@ha
/* 813A8084 | 3B 60 00 00 */	li r27, 0x0
/* 813A8088 | 3B 9C 90 08 */	addi r28, r28, smArg__Q23ipl6System@l
/* 813A808C | 3B C0 00 00 */	li r30, 0x0
/* 813A8090 | 48 00 00 48 */	b .L_813A80D8
.L_813A8094:
/* 813A8094 | 80 9C 00 28 */	lwz r4, 0x28(r28)
/* 813A8098 | 38 60 00 18 */	li r3, 0x18
/* 813A809C | 38 A0 00 04 */	li r5, 0x4
/* 813A80A0 | 48 25 00 11 */	bl __nw__FUlPQ23EGG4Heapi
/* 813A80A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A80A8 | 41 82 00 1C */	beq .L_813A80C4
/* 813A80AC | 80 1D 00 14 */	lwz r0, 0x14(r29)
/* 813A80B0 | 7C 80 F2 14 */	add r4, r0, r30
/* 813A80B4 | 7C 1E 00 2E */	lwzx r0, r30, r0
/* 813A80B8 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 813A80BC | 90 83 00 04 */	stw r4, 0x4(r3)
/* 813A80C0 | 90 03 00 00 */	stw r0, 0x0(r3)
.L_813A80C4:
/* 813A80C4 | 7C 64 1B 78 */	mr r4, r3
/* 813A80C8 | 38 7D 00 1C */	addi r3, r29, 0x1c
/* 813A80CC | 48 16 9F A9 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813A80D0 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 813A80D4 | 3B DE 00 08 */	addi r30, r30, 0x8
.L_813A80D8:
/* 813A80D8 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 813A80DC | 4B FA 07 B1 */	bl get_nand_save_num__Q23ipl12NandSDWorkerFv
/* 813A80E0 | 7C 1B 18 40 */	cmplw r27, r3
/* 813A80E4 | 41 80 FF B0 */	blt .L_813A8094
.L_813A80E8:
/* 813A80E8 | 80 7D 00 14 */	lwz r3, 0x14(r29)
/* 813A80EC | 48 25 00 01 */	bl __dla__FPv
/* 813A80F0 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 813A80F4 | 4B FA 0E A1 */	bl get_nand_user_free_area_async__Q23ipl12NandSDWorkerFv
/* 813A80F8 | 38 00 00 06 */	li r0, 0x6
/* 813A80FC | 90 1D 00 00 */	stw r0, 0x0(r29)
.L_813A8100:
/* 813A8100 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A8104 | 48 25 14 09 */	bl _restgpr_27
/* 813A8108 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A810C | 7C 08 03 A6 */	mtlr r0
/* 813A8110 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A8114 | 4E 80 00 20 */	blr
.endfn on_list_nandapp__Q33ipl5scene17NandSDCardManagerFv

# .text:0xADC | 0x813A8118 | size: 0x90
# ipl::scene::NandSDCardManager::on_get_nand_free()
.fn on_get_nand_free__Q33ipl5scene17NandSDCardManagerFv, global
/* 813A8118 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A811C | 7C 08 02 A6 */	mflr r0
/* 813A8120 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A8124 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813A8128 | 7C 7F 1B 78 */	mr r31, r3
/* 813A812C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A8130 | 4B FA 06 D9 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813A8134 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A8138 | 40 82 00 5C */	bne .L_813A8194
/* 813A813C | 7F E3 FB 78 */	mr r3, r31
/* 813A8140 | 48 00 14 1D */	bl getAsyncResult__Q33ipl5scene17NandSDCardManagerFv
/* 813A8144 | 6C 63 80 00 */	xoris r3, r3, 0x8000
/* 813A8148 | 3C 00 43 30 */	lis r0, 0x4330
/* 813A814C | 90 61 00 0C */	stw r3, 0xc(r1)
/* 813A8150 | C8 62 85 40 */	lfd f3, lbl_81694940@sda21(r0)
/* 813A8154 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 813A8158 | C0 22 85 38 */	lfs f1, lbl_81694938@sda21(r0)
/* 813A815C | C8 41 00 08 */	lfd f2, 0x8(r1)
/* 813A8160 | C0 02 85 3C */	lfs f0, lbl_8169493C@sda21(r0)
/* 813A8164 | EC 42 18 28 */	fsubs f2, f2, f3
/* 813A8168 | EC 22 00 72 */	fmuls f1, f2, f1
/* 813A816C | EC 21 00 32 */	fmuls f1, f1, f0
/* 813A8170 | 48 26 47 21 */	bl floor
/* 813A8174 | FC 00 08 18 */	frsp f0, f1
/* 813A8178 | 38 00 00 08 */	li r0, 0x8
/* 813A817C | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813A8180 | 3C 7F 00 0F */	addis r3, r31, 0xf
/* 813A8184 | FC 00 00 1E */	fctiwz f0, f0
/* 813A8188 | D8 01 00 10 */	stfd f0, 0x10(r1)
/* 813A818C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A8190 | 90 03 87 80 */	stw r0, -0x7880(r3)
.L_813A8194:
/* 813A8194 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A8198 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813A819C | 7C 08 03 A6 */	mtlr r0
/* 813A81A0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A81A4 | 4E 80 00 20 */	blr
.endfn on_get_nand_free__Q33ipl5scene17NandSDCardManagerFv

# .text:0xB6C | 0x813A81A8 | size: 0x7C
# ipl::scene::NandSDCardManager::on_get_sd_free()
.fn on_get_sd_free__Q33ipl5scene17NandSDCardManagerFv, global
/* 813A81A8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A81AC | 7C 08 02 A6 */	mflr r0
/* 813A81B0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A81B4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813A81B8 | 7C 7F 1B 78 */	mr r31, r3
/* 813A81BC | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A81C0 | 4B FA 06 49 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813A81C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A81C8 | 40 82 00 48 */	bne .L_813A8210
/* 813A81CC | 3C 9F 00 0F */	addis r4, r31, 0xf
/* 813A81D0 | 80 64 87 88 */	lwz r3, -0x7878(r4)
/* 813A81D4 | 80 84 87 8C */	lwz r4, -0x7874(r4)
/* 813A81D8 | 48 25 19 1D */	bl __cvt_ull_flt
/* 813A81DC | C0 42 85 38 */	lfs f2, lbl_81694938@sda21(r0)
/* 813A81E0 | C0 02 85 3C */	lfs f0, lbl_8169493C@sda21(r0)
/* 813A81E4 | EC 21 00 B2 */	fmuls f1, f1, f2
/* 813A81E8 | EC 21 00 32 */	fmuls f1, f1, f0
/* 813A81EC | 48 26 46 A5 */	bl floor
/* 813A81F0 | FC 00 08 18 */	frsp f0, f1
/* 813A81F4 | 38 00 00 08 */	li r0, 0x8
/* 813A81F8 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813A81FC | 3C 7F 00 0F */	addis r3, r31, 0xf
/* 813A8200 | FC 00 00 1E */	fctiwz f0, f0
/* 813A8204 | D8 01 00 08 */	stfd f0, 0x8(r1)
/* 813A8208 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 813A820C | 90 03 87 84 */	stw r0, -0x787c(r3)
.L_813A8210:
/* 813A8210 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A8214 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813A8218 | 7C 08 03 A6 */	mtlr r0
/* 813A821C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A8220 | 4E 80 00 20 */	blr
.endfn on_get_sd_free__Q33ipl5scene17NandSDCardManagerFv

# .text:0xBE8 | 0x813A8224 | size: 0x178
# ipl::scene::NandSDCardManager::on_list_sdapp()
.fn on_list_sdapp__Q33ipl5scene17NandSDCardManagerFv, global
/* 813A8224 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A8228 | 7C 08 02 A6 */	mflr r0
/* 813A822C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A8230 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A8234 | 48 25 12 91 */	bl _savegpr_28
/* 813A8238 | 7C 7C 1B 78 */	mr r28, r3
/* 813A823C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A8240 | 4B FA 05 C9 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813A8244 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A8248 | 40 82 01 3C */	bne .L_813A8384
/* 813A824C | 38 80 00 00 */	li r4, 0x0
/* 813A8250 | 48 00 00 1C */	b .L_813A826C
.L_813A8254:
/* 813A8254 | 7F C4 F3 78 */	mr r4, r30
/* 813A8258 | 38 7C 00 28 */	addi r3, r28, 0x28
/* 813A825C | 48 16 A0 15 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813A8260 | 7F C3 F3 78 */	mr r3, r30
/* 813A8264 | 48 24 FE 81 */	bl __dl__FPv
/* 813A8268 | 38 80 00 00 */	li r4, 0x0
.L_813A826C:
/* 813A826C | 38 7C 00 28 */	addi r3, r28, 0x28
/* 813A8270 | 48 16 A0 6D */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A8274 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A8278 | 7C 7E 1B 78 */	mr r30, r3
/* 813A827C | 40 82 FF D8 */	bne .L_813A8254
/* 813A8280 | 80 1C 00 04 */	lwz r0, 0x4(r28)
/* 813A8284 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813A8288 | 40 82 00 64 */	bne .L_813A82EC
/* 813A828C | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813A8290 | 3B A0 00 00 */	li r29, 0x0
/* 813A8294 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813A8298 | 3B E0 00 00 */	li r31, 0x0
/* 813A829C | 48 00 00 3C */	b .L_813A82D8
.L_813A82A0:
/* 813A82A0 | 80 9E 00 28 */	lwz r4, 0x28(r30)
/* 813A82A4 | 38 60 00 18 */	li r3, 0x18
/* 813A82A8 | 38 A0 00 04 */	li r5, 0x4
/* 813A82AC | 48 24 FE 05 */	bl __nw__FUlPQ23EGG4Heapi
/* 813A82B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A82B4 | 41 82 00 10 */	beq .L_813A82C4
/* 813A82B8 | 80 9C 00 18 */	lwz r4, 0x18(r28)
/* 813A82BC | 7C 04 F8 2E */	lwzx r0, r4, r31
/* 813A82C0 | 90 03 00 08 */	stw r0, 0x8(r3)
.L_813A82C4:
/* 813A82C4 | 7C 64 1B 78 */	mr r4, r3
/* 813A82C8 | 38 7C 00 28 */	addi r3, r28, 0x28
/* 813A82CC | 48 16 9D A9 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813A82D0 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 813A82D4 | 3B FF 00 04 */	addi r31, r31, 0x4
.L_813A82D8:
/* 813A82D8 | 80 7C 00 08 */	lwz r3, 0x8(r28)
/* 813A82DC | 4B FA 07 F1 */	bl get_sd_app_num__Q23ipl12NandSDWorkerFv
/* 813A82E0 | 7C 1D 18 00 */	cmpw r29, r3
/* 813A82E4 | 41 80 FF BC */	blt .L_813A82A0
/* 813A82E8 | 48 00 00 60 */	b .L_813A8348
.L_813A82EC:
/* 813A82EC | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813A82F0 | 3B A0 00 00 */	li r29, 0x0
/* 813A82F4 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813A82F8 | 3B E0 00 00 */	li r31, 0x0
/* 813A82FC | 48 00 00 3C */	b .L_813A8338
.L_813A8300:
/* 813A8300 | 80 9E 00 28 */	lwz r4, 0x28(r30)
/* 813A8304 | 38 60 00 18 */	li r3, 0x18
/* 813A8308 | 38 A0 00 04 */	li r5, 0x4
/* 813A830C | 48 24 FD A5 */	bl __nw__FUlPQ23EGG4Heapi
/* 813A8310 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A8314 | 41 82 00 10 */	beq .L_813A8324
/* 813A8318 | 80 9C 00 18 */	lwz r4, 0x18(r28)
/* 813A831C | 7C 04 F8 2E */	lwzx r0, r4, r31
/* 813A8320 | 90 03 00 08 */	stw r0, 0x8(r3)
.L_813A8324:
/* 813A8324 | 7C 64 1B 78 */	mr r4, r3
/* 813A8328 | 38 7C 00 28 */	addi r3, r28, 0x28
/* 813A832C | 48 16 9D 49 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813A8330 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 813A8334 | 3B FF 00 04 */	addi r31, r31, 0x4
.L_813A8338:
/* 813A8338 | 80 7C 00 08 */	lwz r3, 0x8(r28)
/* 813A833C | 4B FA 07 6D */	bl get_sd_save_num__Q23ipl12NandSDWorkerFv
/* 813A8340 | 7C 1D 18 00 */	cmpw r29, r3
/* 813A8344 | 41 80 FF BC */	blt .L_813A8300
.L_813A8348:
/* 813A8348 | 80 7C 00 18 */	lwz r3, 0x18(r28)
/* 813A834C | 48 24 FD A1 */	bl __dla__FPv
/* 813A8350 | 80 7C 00 08 */	lwz r3, 0x8(r28)
/* 813A8354 | 4B FA 05 31 */	bl get_sd_state__Q23ipl12NandSDWorkerFv
/* 813A8358 | 2C 03 00 06 */	cmpwi r3, 0x6
/* 813A835C | 40 82 00 20 */	bne .L_813A837C
/* 813A8360 | 3C 9C 00 0F */	addis r4, r28, 0xf
/* 813A8364 | 80 7C 00 08 */	lwz r3, 0x8(r28)
/* 813A8368 | 38 84 87 88 */	subi r4, r4, 0x7878
/* 813A836C | 4B FA 0C 6D */	bl get_sd_free_area_async__Q23ipl12NandSDWorkerFv
/* 813A8370 | 38 00 00 07 */	li r0, 0x7
/* 813A8374 | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 813A8378 | 48 00 00 0C */	b .L_813A8384
.L_813A837C:
/* 813A837C | 38 00 00 08 */	li r0, 0x8
/* 813A8380 | 90 1C 00 00 */	stw r0, 0x0(r28)
.L_813A8384:
/* 813A8384 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A8388 | 48 25 11 89 */	bl _restgpr_28
/* 813A838C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A8390 | 7C 08 03 A6 */	mtlr r0
/* 813A8394 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A8398 | 4E 80 00 20 */	blr
.endfn on_list_sdapp__Q33ipl5scene17NandSDCardManagerFv

# .text:0xD60 | 0x813A839C | size: 0x5D4
# ipl::scene::NandSDCardManager::on_normal()
.fn on_normal__Q33ipl5scene17NandSDCardManagerFv, global
/* 813A839C | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 813A83A0 | 7C 08 02 A6 */	mflr r0
/* 813A83A4 | 3C A3 00 0F */	addis r5, r3, 0xf
/* 813A83A8 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 813A83AC | 93 E1 00 5C */	stw r31, 0x5c(r1)
/* 813A83B0 | 7C 7F 1B 78 */	mr r31, r3
/* 813A83B4 | 80 05 86 74 */	lwz r0, -0x798c(r5)
/* 813A83B8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A83BC | 41 82 04 F4 */	beq .L_813A88B0
/* 813A83C0 | 80 85 86 78 */	lwz r4, -0x7988(r5)
/* 813A83C4 | 38 00 00 04 */	li r0, 0x4
/* 813A83C8 | 38 C1 00 34 */	addi r6, r1, 0x34
/* 813A83CC | 54 84 28 34 */	slwi r4, r4, 5
/* 813A83D0 | 7C 85 22 14 */	add r4, r5, r4
/* 813A83D4 | 38 A4 85 EC */	subi r5, r4, 0x7a14
/* 813A83D8 | 7C 09 03 A6 */	mtctr r0
.L_813A83DC:
/* 813A83DC | 80 85 00 04 */	lwz r4, 0x4(r5)
/* 813A83E0 | 84 05 00 08 */	lwzu r0, 0x8(r5)
/* 813A83E4 | 90 86 00 04 */	stw r4, 0x4(r6)
/* 813A83E8 | 94 06 00 08 */	stwu r0, 0x8(r6)
/* 813A83EC | 42 00 FF F0 */	bdnz .L_813A83DC
/* 813A83F0 | 80 01 00 38 */	lwz r0, 0x38(r1)
/* 813A83F4 | 28 00 00 19 */	cmplwi r0, 0x19
/* 813A83F8 | 41 81 04 74 */	bgt .L_813A886C
/* 813A83FC | 3C 80 81 65 */	lis r4, jumptable_8164D83C@ha
/* 813A8400 | 54 00 10 3A */	slwi r0, r0, 2
/* 813A8404 | 38 84 D8 3C */	addi r4, r4, jumptable_8164D83C@l
/* 813A8408 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 813A840C | 7C 89 03 A6 */	mtctr r4
/* 813A8410 | 4E 80 04 20 */	bctr
.L_813A8414:
/* 813A8414 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A8418 | 4B FA 08 D9 */	bl terminate_async__Q23ipl12NandSDWorkerFv
/* 813A841C | 38 00 00 09 */	li r0, 0x9
/* 813A8420 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813A8424 | 48 00 04 48 */	b .L_813A886C
.L_813A8428:
/* 813A8428 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A842C | 4B FA 09 0D */	bl mount_sd_async__Q23ipl12NandSDWorkerFv
/* 813A8430 | 38 00 00 03 */	li r0, 0x3
/* 813A8434 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813A8438 | 48 00 04 34 */	b .L_813A886C
.L_813A843C:
/* 813A843C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A8440 | 4B FA 0B 91 */	bl format_sd_async__Q23ipl12NandSDWorkerFv
/* 813A8444 | 38 00 00 02 */	li r0, 0x2
/* 813A8448 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813A844C | 48 00 04 20 */	b .L_813A886C
.L_813A8450:
/* 813A8450 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A8454 | 4B FA 0B 41 */	bl get_nand_user_free_area_async__Q23ipl12NandSDWorkerFv
/* 813A8458 | 38 00 00 06 */	li r0, 0x6
/* 813A845C | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813A8460 | 48 00 04 0C */	b .L_813A886C
.L_813A8464:
/* 813A8464 | 3C 9F 00 0F */	addis r4, r31, 0xf
/* 813A8468 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A846C | 38 84 87 88 */	subi r4, r4, 0x7878
/* 813A8470 | 4B FA 0B 69 */	bl get_sd_free_area_async__Q23ipl12NandSDWorkerFv
/* 813A8474 | 38 00 00 07 */	li r0, 0x7
/* 813A8478 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813A847C | 48 00 03 F0 */	b .L_813A886C
.L_813A8480:
/* 813A8480 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A8484 | 80 A1 00 48 */	lwz r5, 0x48(r1)
/* 813A8488 | 80 C1 00 4C */	lwz r6, 0x4c(r1)
/* 813A848C | 4B FA 0B 11 */	bl copy_nand_save_to_sd_async__Q23ipl12NandSDWorkerFUx
/* 813A8490 | 38 00 00 0A */	li r0, 0xa
/* 813A8494 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813A8498 | 48 00 03 D4 */	b .L_813A886C
.L_813A849C:
/* 813A849C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A84A0 | 80 81 00 50 */	lwz r4, 0x50(r1)
/* 813A84A4 | 4B FA 0B 11 */	bl copy_sd_save_to_nand_async__Q23ipl12NandSDWorkerFUl
/* 813A84A8 | 38 00 00 0B */	li r0, 0xb
/* 813A84AC | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813A84B0 | 48 00 03 BC */	b .L_813A886C
.L_813A84B4:
/* 813A84B4 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A84B8 | 80 A1 00 48 */	lwz r5, 0x48(r1)
/* 813A84BC | 80 C1 00 4C */	lwz r6, 0x4c(r1)
/* 813A84C0 | 4B FA 0B B9 */	bl copy_nand_app_to_sd_async__Q23ipl12NandSDWorkerFUx
/* 813A84C4 | 38 00 00 0D */	li r0, 0xd
/* 813A84C8 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813A84CC | 48 00 03 A0 */	b .L_813A886C
.L_813A84D0:
/* 813A84D0 | 3C A3 00 0F */	addis r5, r3, 0xf
/* 813A84D4 | 80 81 00 50 */	lwz r4, 0x50(r1)
/* 813A84D8 | 80 05 87 9C */	lwz r0, -0x7864(r5)
/* 813A84DC | 7C 04 00 40 */	cmplw r4, r0
/* 813A84E0 | 40 82 00 20 */	bne .L_813A8500
/* 813A84E4 | 38 00 00 00 */	li r0, 0x0
/* 813A84E8 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A84EC | 98 05 87 A0 */	stb r0, -0x7860(r5)
/* 813A84F0 | 4B FA 0D 41 */	bl iplNandSD_81349230
/* 813A84F4 | 38 00 00 1E */	li r0, 0x1e
/* 813A84F8 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813A84FC | 48 00 03 70 */	b .L_813A886C
.L_813A8500:
/* 813A8500 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A8504 | 38 A0 00 00 */	li r5, 0x0
/* 813A8508 | 4B FA 0B 91 */	bl copy_sd_app_to_nand_async__Q23ipl12NandSDWorkerFUl
/* 813A850C | 38 00 00 0E */	li r0, 0xe
/* 813A8510 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813A8514 | 48 00 03 58 */	b .L_813A886C
.L_813A8518:
/* 813A8518 | 80 A1 00 48 */	lwz r5, 0x48(r1)
/* 813A851C | 38 00 FF FF */	li r0, -0x1
/* 813A8520 | 80 C1 00 4C */	lwz r6, 0x4c(r1)
/* 813A8524 | 39 00 FF 00 */	li r8, -0x100
/* 813A8528 | 3C 80 48 41 */	lis r4, 0x4841
/* 813A852C | 7C A7 00 38 */	and r7, r5, r0
/* 813A8530 | 7C C8 40 38 */	and r8, r6, r8
/* 813A8534 | 38 04 5A 00 */	addi r0, r4, 0x5a00
/* 813A8538 | 7D 04 02 78 */	xor r4, r8, r0
/* 813A853C | 6C E0 00 01 */	xoris r0, r7, 0x1
/* 813A8540 | 7C 80 03 79 */	or. r0, r4, r0
/* 813A8544 | 41 82 00 20 */	beq .L_813A8564
/* 813A8548 | 3C E3 00 0F */	addis r7, r3, 0xf
/* 813A854C | 80 07 87 98 */	lwz r0, -0x7868(r7)
/* 813A8550 | 80 87 87 9C */	lwz r4, -0x7864(r7)
/* 813A8554 | 7C A0 02 78 */	xor r0, r5, r0
/* 813A8558 | 7C C4 22 78 */	xor r4, r6, r4
/* 813A855C | 7C 80 03 79 */	or. r0, r4, r0
/* 813A8560 | 40 82 00 28 */	bne .L_813A8588
.L_813A8564:
/* 813A8564 | 80 01 00 3C */	lwz r0, 0x3c(r1)
/* 813A8568 | 3C 83 00 0F */	addis r4, r3, 0xf
/* 813A856C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A8570 | 38 E0 00 01 */	li r7, 0x1
/* 813A8574 | 90 04 85 E0 */	stw r0, -0x7a20(r4)
/* 813A8578 | 4B FA 0A D9 */	bl delete_nand_app_async__Q23ipl12NandSDWorkerFUx
/* 813A857C | 38 00 00 0F */	li r0, 0xf
/* 813A8580 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813A8584 | 48 00 02 E8 */	b .L_813A886C
.L_813A8588:
/* 813A8588 | 80 01 00 3C */	lwz r0, 0x3c(r1)
/* 813A858C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A8590 | 90 07 85 E0 */	stw r0, -0x7a20(r7)
/* 813A8594 | 38 E0 00 00 */	li r7, 0x0
/* 813A8598 | 4B FA 0A B9 */	bl delete_nand_app_async__Q23ipl12NandSDWorkerFUx
/* 813A859C | 38 00 00 0F */	li r0, 0xf
/* 813A85A0 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813A85A4 | 48 00 02 C8 */	b .L_813A886C
.L_813A85A8:
/* 813A85A8 | 80 01 00 3C */	lwz r0, 0x3c(r1)
/* 813A85AC | 3C 83 00 0F */	addis r4, r3, 0xf
/* 813A85B0 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A85B4 | 90 04 85 E0 */	stw r0, -0x7a20(r4)
/* 813A85B8 | 80 81 00 50 */	lwz r4, 0x50(r1)
/* 813A85BC | 4B FA 09 B5 */	bl delete_sd_app_async__Q23ipl12NandSDWorkerFUl
/* 813A85C0 | 38 00 00 11 */	li r0, 0x11
/* 813A85C4 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813A85C8 | 48 00 02 A4 */	b .L_813A886C
.L_813A85CC:
/* 813A85CC | 80 01 00 40 */	lwz r0, 0x40(r1)
/* 813A85D0 | 3C 83 00 0F */	addis r4, r3, 0xf
/* 813A85D4 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A85D8 | 90 04 85 E8 */	stw r0, -0x7a18(r4)
/* 813A85DC | 80 A1 00 48 */	lwz r5, 0x48(r1)
/* 813A85E0 | 80 C1 00 4C */	lwz r6, 0x4c(r1)
/* 813A85E4 | 4B FA 09 21 */	bl delete_nand_save_async__Q23ipl12NandSDWorkerFUx
/* 813A85E8 | 38 00 00 10 */	li r0, 0x10
/* 813A85EC | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813A85F0 | 48 00 02 7C */	b .L_813A886C
.L_813A85F4:
/* 813A85F4 | 80 01 00 40 */	lwz r0, 0x40(r1)
/* 813A85F8 | 3C 83 00 0F */	addis r4, r3, 0xf
/* 813A85FC | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A8600 | 90 04 85 E8 */	stw r0, -0x7a18(r4)
/* 813A8604 | 80 81 00 50 */	lwz r4, 0x50(r1)
/* 813A8608 | 4B FA 09 4D */	bl delete_sd_save_async__Q23ipl12NandSDWorkerFUl
/* 813A860C | 38 00 00 12 */	li r0, 0x12
/* 813A8610 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813A8614 | 48 00 02 58 */	b .L_813A886C
.L_813A8618:
/* 813A8618 | 7F E3 FB 78 */	mr r3, r31
/* 813A861C | 48 00 0E 95 */	bl clean_command_queue__Q33ipl5scene17NandSDCardManagerFv
/* 813A8620 | 48 00 02 4C */	b .L_813A886C
.L_813A8624:
/* 813A8624 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813A8628 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813A862C | 40 82 00 40 */	bne .L_813A866C
/* 813A8630 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A8634 | 4B FA 02 69 */	bl get_nand_app_num__Q23ipl12NandSDWorkerFv
/* 813A8638 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813A863C | 54 63 18 38 */	slwi r3, r3, 3
/* 813A8640 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813A8644 | 38 A0 FF E0 */	li r5, -0x20
/* 813A8648 | 80 84 00 28 */	lwz r4, 0x28(r4)
/* 813A864C | 48 24 FA 89 */	bl __nwa__FUlPQ23EGG4Heapi
/* 813A8650 | 7C 64 1B 78 */	mr r4, r3
/* 813A8654 | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 813A8658 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813A865C | 4B FA 09 91 */	bl list_nand_app_async__Q23ipl12NandSDWorkerFPUx
/* 813A8660 | 38 00 00 04 */	li r0, 0x4
/* 813A8664 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813A8668 | 48 00 02 04 */	b .L_813A886C
.L_813A866C:
/* 813A866C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A8670 | 4B FA 02 1D */	bl get_nand_save_num__Q23ipl12NandSDWorkerFv
/* 813A8674 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813A8678 | 54 63 18 38 */	slwi r3, r3, 3
/* 813A867C | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813A8680 | 38 A0 FF E0 */	li r5, -0x20
/* 813A8684 | 80 84 00 28 */	lwz r4, 0x28(r4)
/* 813A8688 | 48 24 FA 4D */	bl __nwa__FUlPQ23EGG4Heapi
/* 813A868C | 7C 64 1B 78 */	mr r4, r3
/* 813A8690 | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 813A8694 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813A8698 | 4B FA 06 A9 */	bl list_nand_save_async__Q23ipl12NandSDWorkerFPUx
/* 813A869C | 38 00 00 04 */	li r0, 0x4
/* 813A86A0 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813A86A4 | 48 00 01 C8 */	b .L_813A886C
.L_813A86A8:
/* 813A86A8 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A86AC | 4B FA 01 D9 */	bl get_sd_state__Q23ipl12NandSDWorkerFv
/* 813A86B0 | 2C 03 00 06 */	cmpwi r3, 0x6
/* 813A86B4 | 40 82 00 88 */	bne .L_813A873C
/* 813A86B8 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 813A86BC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813A86C0 | 40 82 00 40 */	bne .L_813A8700
/* 813A86C4 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813A86C8 | 4B FA 04 05 */	bl get_sd_app_num__Q23ipl12NandSDWorkerFv
/* 813A86CC | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813A86D0 | 54 63 10 3A */	slwi r3, r3, 2
/* 813A86D4 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813A86D8 | 38 A0 FF E0 */	li r5, -0x20
/* 813A86DC | 80 84 00 28 */	lwz r4, 0x28(r4)
/* 813A86E0 | 48 24 F9 F5 */	bl __nwa__FUlPQ23EGG4Heapi
/* 813A86E4 | 7C 64 1B 78 */	mr r4, r3
/* 813A86E8 | 90 7F 00 18 */	stw r3, 0x18(r31)
/* 813A86EC | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813A86F0 | 4B FA 06 9D */	bl list_sd_app_async__Q23ipl12NandSDWorkerFPUl
/* 813A86F4 | 38 00 00 05 */	li r0, 0x5
/* 813A86F8 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813A86FC | 48 00 01 70 */	b .L_813A886C
.L_813A8700:
/* 813A8700 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813A8704 | 4B FA 03 A5 */	bl get_sd_save_num__Q23ipl12NandSDWorkerFv
/* 813A8708 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813A870C | 54 63 10 3A */	slwi r3, r3, 2
/* 813A8710 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813A8714 | 38 A0 FF E0 */	li r5, -0x20
/* 813A8718 | 80 84 00 28 */	lwz r4, 0x28(r4)
/* 813A871C | 48 24 F9 B9 */	bl __nwa__FUlPQ23EGG4Heapi
/* 813A8720 | 7C 64 1B 78 */	mr r4, r3
/* 813A8724 | 90 7F 00 18 */	stw r3, 0x18(r31)
/* 813A8728 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813A872C | 4B FA 06 4D */	bl list_sd_save_async__Q23ipl12NandSDWorkerFPUl
/* 813A8730 | 38 00 00 05 */	li r0, 0x5
/* 813A8734 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813A8738 | 48 00 01 34 */	b .L_813A886C
.L_813A873C:
/* 813A873C | 38 00 00 08 */	li r0, 0x8
/* 813A8740 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813A8744 | 48 00 01 28 */	b .L_813A886C
.L_813A8748:
/* 813A8748 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A874C | 80 81 00 50 */	lwz r4, 0x50(r1)
/* 813A8750 | 4B FA 09 DD */	bl sd_save_exist_async__Q23ipl12NandSDWorkerFUl
/* 813A8754 | 38 00 00 02 */	li r0, 0x2
/* 813A8758 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813A875C | 48 00 01 10 */	b .L_813A886C
.L_813A8760:
/* 813A8760 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A8764 | 80 81 00 50 */	lwz r4, 0x50(r1)
/* 813A8768 | 4B FA 09 91 */	bl nand_save_exist_lo_async__Q23ipl12NandSDWorkerFUl
/* 813A876C | 38 00 00 02 */	li r0, 0x2
/* 813A8770 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813A8774 | 48 00 00 F8 */	b .L_813A886C
.L_813A8778:
/* 813A8778 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A877C | 80 81 00 50 */	lwz r4, 0x50(r1)
/* 813A8780 | 4B FA 09 E5 */	bl iplNandSD_81349164
/* 813A8784 | 38 00 00 02 */	li r0, 0x2
/* 813A8788 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813A878C | 48 00 00 E0 */	b .L_813A886C
.L_813A8790:
/* 813A8790 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A8794 | 80 81 00 50 */	lwz r4, 0x50(r1)
/* 813A8798 | 4B FA 09 B1 */	bl sd_app_exist_async__Q23ipl12NandSDWorkerFUl
/* 813A879C | 38 00 00 02 */	li r0, 0x2
/* 813A87A0 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813A87A4 | 48 00 00 C8 */	b .L_813A886C
.L_813A87A8:
/* 813A87A8 | 80 01 00 3C */	lwz r0, 0x3c(r1)
/* 813A87AC | 3C 83 00 0F */	addis r4, r3, 0xf
/* 813A87B0 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A87B4 | 90 04 85 E0 */	stw r0, -0x7a20(r4)
/* 813A87B8 | 80 A1 00 48 */	lwz r5, 0x48(r1)
/* 813A87BC | 80 C1 00 4C */	lwz r6, 0x4c(r1)
/* 813A87C0 | 4B FA 09 F5 */	bl iplNandSD_813491B4
/* 813A87C4 | 38 00 00 1C */	li r0, 0x1c
/* 813A87C8 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813A87CC | 48 00 00 A0 */	b .L_813A886C
.L_813A87D0:
/* 813A87D0 | 3C C3 00 0F */	addis r6, r3, 0xf
/* 813A87D4 | 80 81 00 50 */	lwz r4, 0x50(r1)
/* 813A87D8 | 80 06 87 9C */	lwz r0, -0x7864(r6)
/* 813A87DC | 7C 04 00 40 */	cmplw r4, r0
/* 813A87E0 | 40 82 00 28 */	bne .L_813A8808
/* 813A87E4 | 80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 813A87E8 | 38 00 00 01 */	li r0, 0x1
/* 813A87EC | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A87F0 | 90 A6 85 E0 */	stw r5, -0x7a20(r6)
/* 813A87F4 | 98 06 87 A0 */	stb r0, -0x7860(r6)
/* 813A87F8 | 4B FA 0A 39 */	bl iplNandSD_81349230
/* 813A87FC | 38 00 00 1E */	li r0, 0x1e
/* 813A8800 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813A8804 | 48 00 00 68 */	b .L_813A886C
.L_813A8808:
/* 813A8808 | 80 01 00 3C */	lwz r0, 0x3c(r1)
/* 813A880C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A8810 | 90 06 85 E0 */	stw r0, -0x7a20(r6)
/* 813A8814 | 4B FA 09 B9 */	bl iplNandSD_813491CC
/* 813A8818 | 38 00 00 1D */	li r0, 0x1d
/* 813A881C | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813A8820 | 48 00 00 4C */	b .L_813A886C
.L_813A8824:
/* 813A8824 | 80 01 00 40 */	lwz r0, 0x40(r1)
/* 813A8828 | 3C 83 00 0F */	addis r4, r3, 0xf
/* 813A882C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A8830 | 90 04 85 E8 */	stw r0, -0x7a18(r4)
/* 813A8834 | 80 A1 00 48 */	lwz r5, 0x48(r1)
/* 813A8838 | 80 C1 00 4C */	lwz r6, 0x4c(r1)
/* 813A883C | 4B FA 09 AD */	bl iplNandSD_813491E8
/* 813A8840 | 38 00 00 1A */	li r0, 0x1a
/* 813A8844 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813A8848 | 48 00 00 24 */	b .L_813A886C
.L_813A884C:
/* 813A884C | 80 01 00 40 */	lwz r0, 0x40(r1)
/* 813A8850 | 3C 83 00 0F */	addis r4, r3, 0xf
/* 813A8854 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A8858 | 90 04 85 E8 */	stw r0, -0x7a18(r4)
/* 813A885C | 80 81 00 50 */	lwz r4, 0x50(r1)
/* 813A8860 | 4B FA 09 A1 */	bl iplNandSD_81349200
/* 813A8864 | 38 00 00 1B */	li r0, 0x1b
/* 813A8868 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_813A886C:
/* 813A886C | 3C 9F 00 0F */	addis r4, r31, 0xf
/* 813A8870 | 80 04 86 74 */	lwz r0, -0x798c(r4)
/* 813A8874 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A8878 | 41 82 00 E4 */	beq .L_813A895C
/* 813A887C | 80 64 86 78 */	lwz r3, -0x7988(r4)
/* 813A8880 | 80 04 86 70 */	lwz r0, -0x7990(r4)
/* 813A8884 | 38 63 00 01 */	addi r3, r3, 0x1
/* 813A8888 | 7C 03 00 00 */	cmpw r3, r0
/* 813A888C | 90 64 86 78 */	stw r3, -0x7988(r4)
/* 813A8890 | 41 80 00 0C */	blt .L_813A889C
/* 813A8894 | 38 00 00 00 */	li r0, 0x0
/* 813A8898 | 90 04 86 78 */	stw r0, -0x7988(r4)
.L_813A889C:
/* 813A889C | 3C 9F 00 0F */	addis r4, r31, 0xf
/* 813A88A0 | 80 64 86 74 */	lwz r3, -0x798c(r4)
/* 813A88A4 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813A88A8 | 90 04 86 74 */	stw r0, -0x798c(r4)
/* 813A88AC | 48 00 00 B0 */	b .L_813A895C
.L_813A88B0:
/* 813A88B0 | 80 05 87 74 */	lwz r0, -0x788c(r5)
/* 813A88B4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A88B8 | 41 82 00 A4 */	beq .L_813A895C
/* 813A88BC | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A88C0 | 4B F9 FF 49 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813A88C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A88C8 | 40 82 00 94 */	bne .L_813A895C
/* 813A88CC | 3C 9F 00 0F */	addis r4, r31, 0xf
/* 813A88D0 | 88 04 87 90 */	lbz r0, -0x7870(r4)
/* 813A88D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A88D8 | 40 82 00 84 */	bne .L_813A895C
/* 813A88DC | 80 64 87 78 */	lwz r3, -0x7888(r4)
/* 813A88E0 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 813A88E4 | 54 63 20 36 */	slwi r3, r3, 4
/* 813A88E8 | 7C 84 1A 14 */	add r4, r4, r3
/* 813A88EC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813A88F0 | 80 64 86 80 */	lwz r3, -0x7980(r4)
/* 813A88F4 | 80 C4 86 84 */	lwz r6, -0x797c(r4)
/* 813A88F8 | 80 A4 86 88 */	lwz r5, -0x7978(r4)
/* 813A88FC | 80 04 86 8C */	lwz r0, -0x7974(r4)
/* 813A8900 | 90 61 00 28 */	stw r3, 0x28(r1)
/* 813A8904 | 90 C1 00 2C */	stw r6, 0x2c(r1)
/* 813A8908 | 90 A1 00 30 */	stw r5, 0x30(r1)
/* 813A890C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813A8910 | 40 82 00 24 */	bne .L_813A8934
/* 813A8914 | 90 61 00 18 */	stw r3, 0x18(r1)
/* 813A8918 | 7F E3 FB 78 */	mr r3, r31
/* 813A891C | 38 81 00 18 */	addi r4, r1, 0x18
/* 813A8920 | 90 C1 00 1C */	stw r6, 0x1c(r1)
/* 813A8924 | 90 A1 00 20 */	stw r5, 0x20(r1)
/* 813A8928 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A892C | 48 00 0C E9 */	bl get_thumbnail__Q33ipl5scene17NandSDCardManagerFQ43ipl5scene17NandSDCardManager15GetThumbnailCmd
/* 813A8930 | 48 00 00 20 */	b .L_813A8950
.L_813A8934:
/* 813A8934 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 813A8938 | 7F E3 FB 78 */	mr r3, r31
/* 813A893C | 38 81 00 08 */	addi r4, r1, 0x8
/* 813A8940 | 90 C1 00 0C */	stw r6, 0xc(r1)
/* 813A8944 | 90 A1 00 10 */	stw r5, 0x10(r1)
/* 813A8948 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A894C | 48 00 0E 39 */	bl get_wiibanner__Q33ipl5scene17NandSDCardManagerFQ43ipl5scene17NandSDCardManager15GetThumbnailCmd
.L_813A8950:
/* 813A8950 | 3C 7F 00 0F */	addis r3, r31, 0xf
/* 813A8954 | 38 63 86 80 */	subi r3, r3, 0x7980
/* 813A8958 | 48 00 18 11 */	bl "pop__Q33ipl7utility58Queue<Q43ipl5scene17NandSDCardManager15GetThumbnailCmd,15>Fv"
.L_813A895C:
/* 813A895C | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 813A8960 | 83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 813A8964 | 7C 08 03 A6 */	mtlr r0
/* 813A8968 | 38 21 00 60 */	addi r1, r1, 0x60
/* 813A896C | 4E 80 00 20 */	blr
.endfn on_normal__Q33ipl5scene17NandSDCardManagerFv

# .text:0x1334 | 0x813A8970 | size: 0xE4
# ipl::scene::NandSDCardManager::on_del_nandapp()
.fn on_del_nandapp__Q33ipl5scene17NandSDCardManagerFv, global
/* 813A8970 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A8974 | 7C 08 02 A6 */	mflr r0
/* 813A8978 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A897C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A8980 | 48 25 0B 49 */	bl _savegpr_29
/* 813A8984 | 7C 7D 1B 78 */	mr r29, r3
/* 813A8988 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A898C | 4B F9 FE 7D */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813A8990 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A8994 | 40 82 00 A8 */	bne .L_813A8A3C
/* 813A8998 | 3F FD 00 0F */	addis r31, r29, 0xf
/* 813A899C | 3B C0 00 00 */	li r30, 0x0
/* 813A89A0 | 48 00 00 44 */	b .L_813A89E4
.L_813A89A4:
/* 813A89A4 | 80 9F 85 E0 */	lwz r4, -0x7a20(r31)
/* 813A89A8 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 813A89AC | 80 A4 00 40 */	lwz r5, 0x40(r4)
/* 813A89B0 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813A89B4 | 80 85 06 10 */	lwz r4, 0x610(r5)
/* 813A89B8 | 80 A5 06 14 */	lwz r5, 0x614(r5)
/* 813A89BC | 7C 80 02 78 */	xor r0, r4, r0
/* 813A89C0 | 7C A3 1A 78 */	xor r3, r5, r3
/* 813A89C4 | 7C 60 03 79 */	or. r0, r3, r0
/* 813A89C8 | 40 82 00 1C */	bne .L_813A89E4
/* 813A89CC | 7F C4 F3 78 */	mr r4, r30
/* 813A89D0 | 38 7D 00 1C */	addi r3, r29, 0x1c
/* 813A89D4 | 48 16 98 9D */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813A89D8 | 7F C3 F3 78 */	mr r3, r30
/* 813A89DC | 48 24 F7 09 */	bl __dl__FPv
/* 813A89E0 | 48 00 00 1C */	b .L_813A89FC
.L_813A89E4:
/* 813A89E4 | 7F C4 F3 78 */	mr r4, r30
/* 813A89E8 | 38 7D 00 1C */	addi r3, r29, 0x1c
/* 813A89EC | 48 16 98 F1 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A89F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A89F4 | 7C 7E 1B 78 */	mr r30, r3
/* 813A89F8 | 40 82 FF AC */	bne .L_813A89A4
.L_813A89FC:
/* 813A89FC | 3C 7D 00 0F */	addis r3, r29, 0xf
/* 813A8A00 | 80 63 85 E0 */	lwz r3, -0x7a20(r3)
/* 813A8A04 | 80 63 00 40 */	lwz r3, 0x40(r3)
/* 813A8A08 | 88 03 06 21 */	lbz r0, 0x621(r3)
/* 813A8A0C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A8A10 | 41 82 00 24 */	beq .L_813A8A34
/* 813A8A14 | 38 80 00 00 */	li r4, 0x0
/* 813A8A18 | 38 60 00 00 */	li r3, 0x0
/* 813A8A1C | 48 1C 1E F1 */	bl fn_8156A90C
/* 813A8A20 | 38 60 00 00 */	li r3, 0x0
/* 813A8A24 | 48 1C 0F 99 */	bl fn_815699BC
/* 813A8A28 | 38 00 00 18 */	li r0, 0x18
/* 813A8A2C | 90 1D 00 00 */	stw r0, 0x0(r29)
/* 813A8A30 | 48 00 00 0C */	b .L_813A8A3C
.L_813A8A34:
/* 813A8A34 | 38 00 00 08 */	li r0, 0x8
/* 813A8A38 | 90 1D 00 00 */	stw r0, 0x0(r29)
.L_813A8A3C:
/* 813A8A3C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A8A40 | 48 25 0A D5 */	bl _restgpr_29
/* 813A8A44 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A8A48 | 7C 08 03 A6 */	mtlr r0
/* 813A8A4C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A8A50 | 4E 80 00 20 */	blr
.endfn on_del_nandapp__Q33ipl5scene17NandSDCardManagerFv

# .text:0x1418 | 0x813A8A54 | size: 0xAC
# ipl::scene::NandSDCardManager::on_del_nandsave()
.fn on_del_nandsave__Q33ipl5scene17NandSDCardManagerFv, global
/* 813A8A54 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A8A58 | 7C 08 02 A6 */	mflr r0
/* 813A8A5C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A8A60 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A8A64 | 48 25 0A 65 */	bl _savegpr_29
/* 813A8A68 | 7C 7D 1B 78 */	mr r29, r3
/* 813A8A6C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A8A70 | 4B F9 FD 99 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813A8A74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A8A78 | 40 82 00 70 */	bne .L_813A8AE8
/* 813A8A7C | 3F FD 00 0F */	addis r31, r29, 0xf
/* 813A8A80 | 3B C0 00 00 */	li r30, 0x0
/* 813A8A84 | 48 00 00 44 */	b .L_813A8AC8
.L_813A8A88:
/* 813A8A88 | 80 9F 85 E8 */	lwz r4, -0x7a18(r31)
/* 813A8A8C | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 813A8A90 | 80 A4 00 40 */	lwz r5, 0x40(r4)
/* 813A8A94 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813A8A98 | 80 85 00 F8 */	lwz r4, 0xf8(r5)
/* 813A8A9C | 80 A5 00 FC */	lwz r5, 0xfc(r5)
/* 813A8AA0 | 7C 80 02 78 */	xor r0, r4, r0
/* 813A8AA4 | 7C A3 1A 78 */	xor r3, r5, r3
/* 813A8AA8 | 7C 60 03 79 */	or. r0, r3, r0
/* 813A8AAC | 40 82 00 1C */	bne .L_813A8AC8
/* 813A8AB0 | 7F C4 F3 78 */	mr r4, r30
/* 813A8AB4 | 38 7D 00 1C */	addi r3, r29, 0x1c
/* 813A8AB8 | 48 16 97 B9 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813A8ABC | 7F C3 F3 78 */	mr r3, r30
/* 813A8AC0 | 48 24 F6 25 */	bl __dl__FPv
/* 813A8AC4 | 48 00 00 1C */	b .L_813A8AE0
.L_813A8AC8:
/* 813A8AC8 | 7F C4 F3 78 */	mr r4, r30
/* 813A8ACC | 38 7D 00 1C */	addi r3, r29, 0x1c
/* 813A8AD0 | 48 16 98 0D */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A8AD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A8AD8 | 7C 7E 1B 78 */	mr r30, r3
/* 813A8ADC | 40 82 FF AC */	bne .L_813A8A88
.L_813A8AE0:
/* 813A8AE0 | 38 00 00 08 */	li r0, 0x8
/* 813A8AE4 | 90 1D 00 00 */	stw r0, 0x0(r29)
.L_813A8AE8:
/* 813A8AE8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A8AEC | 48 25 0A 29 */	bl _restgpr_29
/* 813A8AF0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A8AF4 | 7C 08 03 A6 */	mtlr r0
/* 813A8AF8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A8AFC | 4E 80 00 20 */	blr
.endfn on_del_nandsave__Q33ipl5scene17NandSDCardManagerFv

# .text:0x14C4 | 0x813A8B00 | size: 0x9C
# ipl::scene::NandSDCardManager::on_del_sdsave()
.fn on_del_sdsave__Q33ipl5scene17NandSDCardManagerFv, global
/* 813A8B00 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A8B04 | 7C 08 02 A6 */	mflr r0
/* 813A8B08 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A8B0C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A8B10 | 48 25 09 B9 */	bl _savegpr_29
/* 813A8B14 | 7C 7D 1B 78 */	mr r29, r3
/* 813A8B18 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A8B1C | 4B F9 FC ED */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813A8B20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A8B24 | 40 82 00 60 */	bne .L_813A8B84
/* 813A8B28 | 3F FD 00 0F */	addis r31, r29, 0xf
/* 813A8B2C | 3B C0 00 00 */	li r30, 0x0
/* 813A8B30 | 48 00 00 34 */	b .L_813A8B64
.L_813A8B34:
/* 813A8B34 | 80 9F 85 E8 */	lwz r4, -0x7a18(r31)
/* 813A8B38 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 813A8B3C | 80 64 00 40 */	lwz r3, 0x40(r4)
/* 813A8B40 | 80 63 01 00 */	lwz r3, 0x100(r3)
/* 813A8B44 | 7C 03 00 40 */	cmplw r3, r0
/* 813A8B48 | 40 82 00 1C */	bne .L_813A8B64
/* 813A8B4C | 7F C4 F3 78 */	mr r4, r30
/* 813A8B50 | 38 7D 00 28 */	addi r3, r29, 0x28
/* 813A8B54 | 48 16 97 1D */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813A8B58 | 7F C3 F3 78 */	mr r3, r30
/* 813A8B5C | 48 24 F5 89 */	bl __dl__FPv
/* 813A8B60 | 48 00 00 1C */	b .L_813A8B7C
.L_813A8B64:
/* 813A8B64 | 7F C4 F3 78 */	mr r4, r30
/* 813A8B68 | 38 7D 00 28 */	addi r3, r29, 0x28
/* 813A8B6C | 48 16 97 71 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A8B70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A8B74 | 7C 7E 1B 78 */	mr r30, r3
/* 813A8B78 | 40 82 FF BC */	bne .L_813A8B34
.L_813A8B7C:
/* 813A8B7C | 38 00 00 08 */	li r0, 0x8
/* 813A8B80 | 90 1D 00 00 */	stw r0, 0x0(r29)
.L_813A8B84:
/* 813A8B84 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A8B88 | 48 25 09 8D */	bl _restgpr_29
/* 813A8B8C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A8B90 | 7C 08 03 A6 */	mtlr r0
/* 813A8B94 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A8B98 | 4E 80 00 20 */	blr
.endfn on_del_sdsave__Q33ipl5scene17NandSDCardManagerFv

# .text:0x1560 | 0x813A8B9C | size: 0x9C
# ipl::scene::NandSDCardManager::on_del_sdapp()
.fn on_del_sdapp__Q33ipl5scene17NandSDCardManagerFv, global
/* 813A8B9C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A8BA0 | 7C 08 02 A6 */	mflr r0
/* 813A8BA4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A8BA8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A8BAC | 48 25 09 1D */	bl _savegpr_29
/* 813A8BB0 | 7C 7D 1B 78 */	mr r29, r3
/* 813A8BB4 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A8BB8 | 4B F9 FC 51 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813A8BBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A8BC0 | 40 82 00 60 */	bne .L_813A8C20
/* 813A8BC4 | 3F FD 00 0F */	addis r31, r29, 0xf
/* 813A8BC8 | 3B C0 00 00 */	li r30, 0x0
/* 813A8BCC | 48 00 00 34 */	b .L_813A8C00
.L_813A8BD0:
/* 813A8BD0 | 80 9F 85 E0 */	lwz r4, -0x7a20(r31)
/* 813A8BD4 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 813A8BD8 | 80 64 00 40 */	lwz r3, 0x40(r4)
/* 813A8BDC | 80 63 06 18 */	lwz r3, 0x618(r3)
/* 813A8BE0 | 7C 03 00 40 */	cmplw r3, r0
/* 813A8BE4 | 40 82 00 1C */	bne .L_813A8C00
/* 813A8BE8 | 7F C4 F3 78 */	mr r4, r30
/* 813A8BEC | 38 7D 00 28 */	addi r3, r29, 0x28
/* 813A8BF0 | 48 16 96 81 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813A8BF4 | 7F C3 F3 78 */	mr r3, r30
/* 813A8BF8 | 48 24 F4 ED */	bl __dl__FPv
/* 813A8BFC | 48 00 00 1C */	b .L_813A8C18
.L_813A8C00:
/* 813A8C00 | 7F C4 F3 78 */	mr r4, r30
/* 813A8C04 | 38 7D 00 28 */	addi r3, r29, 0x28
/* 813A8C08 | 48 16 96 D5 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A8C0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A8C10 | 7C 7E 1B 78 */	mr r30, r3
/* 813A8C14 | 40 82 FF BC */	bne .L_813A8BD0
.L_813A8C18:
/* 813A8C18 | 38 00 00 08 */	li r0, 0x8
/* 813A8C1C | 90 1D 00 00 */	stw r0, 0x0(r29)
.L_813A8C20:
/* 813A8C20 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A8C24 | 48 25 08 F1 */	bl _restgpr_29
/* 813A8C28 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A8C2C | 7C 08 03 A6 */	mtlr r0
/* 813A8C30 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A8C34 | 4E 80 00 20 */	blr
.endfn on_del_sdapp__Q33ipl5scene17NandSDCardManagerFv

# .text:0x15FC | 0x813A8C38 | size: 0x190
# ipl::scene::NandSDCardManager::on_get_thumbnail()
.fn on_get_thumbnail__Q33ipl5scene17NandSDCardManagerFv, global
/* 813A8C38 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A8C3C | 7C 08 02 A6 */	mflr r0
/* 813A8C40 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A8C44 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A8C48 | 48 25 08 81 */	bl _savegpr_29
/* 813A8C4C | 7C 7F 1B 78 */	mr r31, r3
/* 813A8C50 | 3F C0 81 65 */	lis r30, jumptable_8164D7C0@ha
/* 813A8C54 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A8C58 | 3B DE D7 C0 */	addi r30, r30, jumptable_8164D7C0@l
/* 813A8C5C | 4B F9 FB AD */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813A8C60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A8C64 | 40 82 01 4C */	bne .L_813A8DB0
/* 813A8C68 | 7F E3 FB 78 */	mr r3, r31
/* 813A8C6C | 48 00 08 F1 */	bl getAsyncResult__Q33ipl5scene17NandSDCardManagerFv
/* 813A8C70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A8C74 | 41 81 00 14 */	bgt .L_813A8C88
/* 813A8C78 | 7F E3 FB 78 */	mr r3, r31
/* 813A8C7C | 48 00 08 E1 */	bl getAsyncResult__Q33ipl5scene17NandSDCardManagerFv
/* 813A8C80 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 813A8C84 | 40 82 01 0C */	bne .L_813A8D90
.L_813A8C88:
/* 813A8C88 | 7F E3 FB 78 */	mr r3, r31
/* 813A8C8C | 48 00 08 D1 */	bl getAsyncResult__Q33ipl5scene17NandSDCardManagerFv
/* 813A8C90 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 813A8C94 | 40 82 00 48 */	bne .L_813A8CDC
/* 813A8C98 | 3C 9F 00 0F */	addis r4, r31, 0xf
/* 813A8C9C | 38 00 00 01 */	li r0, 0x1
/* 813A8CA0 | 80 64 85 E4 */	lwz r3, -0x7a1c(r4)
/* 813A8CA4 | 98 03 06 20 */	stb r0, 0x620(r3)
/* 813A8CA8 | 80 64 85 E0 */	lwz r3, -0x7a20(r4)
/* 813A8CAC | 4B FF C7 AD */	bl get_channel_edit__Q33ipl5scene10ChanAppBoxFv
/* 813A8CB0 | 83 A3 00 60 */	lwz r29, 0x60(r3)
/* 813A8CB4 | 38 7E 00 E4 */	addi r3, r30, 0xe4
/* 813A8CB8 | 7F A4 EB 78 */	mr r4, r29
/* 813A8CBC | 4C C6 31 82 */	crclr cr1eq
/* 813A8CC0 | 48 18 59 E1 */	bl OSReport
/* 813A8CC4 | 3C 7F 00 0F */	addis r3, r31, 0xf
/* 813A8CC8 | 80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 813A8CCC | 80 63 85 E4 */	lwz r3, -0x7a1c(r3)
/* 813A8CD0 | 80 BD 00 98 */	lwz r5, 0x98(r29)
/* 813A8CD4 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A8CD8 | 4B F8 75 59 */	bl memcpy
.L_813A8CDC:
/* 813A8CDC | 3C 9F 00 0F */	addis r4, r31, 0xf
/* 813A8CE0 | 80 A4 85 E4 */	lwz r5, -0x7a1c(r4)
/* 813A8CE4 | 80 C5 06 10 */	lwz r6, 0x610(r5)
/* 813A8CE8 | 80 E5 06 14 */	lwz r7, 0x614(r5)
/* 813A8CEC | 7C E0 33 79 */	or. r0, r7, r6
/* 813A8CF0 | 41 82 00 64 */	beq .L_813A8D54
/* 813A8CF4 | 80 04 87 98 */	lwz r0, -0x7868(r4)
/* 813A8CF8 | 80 64 87 9C */	lwz r3, -0x7864(r4)
/* 813A8CFC | 7C C0 02 78 */	xor r0, r6, r0
/* 813A8D00 | 7C E3 1A 78 */	xor r3, r7, r3
/* 813A8D04 | 7C 60 03 79 */	or. r0, r3, r0
/* 813A8D08 | 40 82 00 4C */	bne .L_813A8D54
/* 813A8D0C | 38 00 00 01 */	li r0, 0x1
/* 813A8D10 | 98 05 06 21 */	stb r0, 0x621(r5)
/* 813A8D14 | 80 64 85 E0 */	lwz r3, -0x7a20(r4)
/* 813A8D18 | 4B FF C7 41 */	bl get_channel_edit__Q33ipl5scene10ChanAppBoxFv
/* 813A8D1C | 3C 9F 00 0F */	addis r4, r31, 0xf
/* 813A8D20 | 83 A3 00 64 */	lwz r29, 0x64(r3)
/* 813A8D24 | 80 84 85 E4 */	lwz r4, -0x7a1c(r4)
/* 813A8D28 | 38 7E 00 FD */	addi r3, r30, 0xfd
/* 813A8D2C | 80 A4 06 10 */	lwz r5, 0x610(r4)
/* 813A8D30 | 80 C4 06 14 */	lwz r6, 0x614(r4)
/* 813A8D34 | 4C C6 31 82 */	crclr cr1eq
/* 813A8D38 | 48 18 59 69 */	bl OSReport
/* 813A8D3C | 3C 7F 00 0F */	addis r3, r31, 0xf
/* 813A8D40 | 80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 813A8D44 | 80 63 85 E4 */	lwz r3, -0x7a1c(r3)
/* 813A8D48 | 80 BD 00 98 */	lwz r5, 0x98(r29)
/* 813A8D4C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A8D50 | 4B F8 74 E1 */	bl memcpy
.L_813A8D54:
/* 813A8D54 | 3C 7F 00 0F */	addis r3, r31, 0xf
/* 813A8D58 | 80 83 85 E4 */	lwz r4, -0x7a1c(r3)
/* 813A8D5C | 80 A4 06 10 */	lwz r5, 0x610(r4)
/* 813A8D60 | 80 C4 06 14 */	lwz r6, 0x614(r4)
/* 813A8D64 | 7C C0 2B 79 */	or. r0, r6, r5
/* 813A8D68 | 41 82 00 10 */	beq .L_813A8D78
/* 813A8D6C | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813A8D70 | 4B FA 01 7D */	bl get_nand_app_size_async__Q23ipl12NandSDWorkerFUx
/* 813A8D74 | 48 00 00 10 */	b .L_813A8D84
.L_813A8D78:
/* 813A8D78 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813A8D7C | 80 84 06 18 */	lwz r4, 0x618(r4)
/* 813A8D80 | 4B FA 01 B9 */	bl get_sd_app_size_async__Q23ipl12NandSDWorkerFUl
.L_813A8D84:
/* 813A8D84 | 38 00 00 14 */	li r0, 0x14
/* 813A8D88 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813A8D8C | 48 00 00 24 */	b .L_813A8DB0
.L_813A8D90:
/* 813A8D90 | 7F E3 FB 78 */	mr r3, r31
/* 813A8D94 | 48 00 07 C9 */	bl getAsyncResult__Q33ipl5scene17NandSDCardManagerFv
/* 813A8D98 | 7C 64 1B 78 */	mr r4, r3
/* 813A8D9C | 38 7E 01 27 */	addi r3, r30, 0x127
/* 813A8DA0 | 4C C6 31 82 */	crclr cr1eq
/* 813A8DA4 | 48 18 58 FD */	bl OSReport
/* 813A8DA8 | 38 00 00 08 */	li r0, 0x8
/* 813A8DAC | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_813A8DB0:
/* 813A8DB0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A8DB4 | 48 25 07 61 */	bl _restgpr_29
/* 813A8DB8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A8DBC | 7C 08 03 A6 */	mtlr r0
/* 813A8DC0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A8DC4 | 4E 80 00 20 */	blr
.endfn on_get_thumbnail__Q33ipl5scene17NandSDCardManagerFv

# .text:0x178C | 0x813A8DC8 | size: 0xA8
# ipl::scene::NandSDCardManager::on_get_thumbnail_size()
.fn on_get_thumbnail_size__Q33ipl5scene17NandSDCardManagerFv, global
/* 813A8DC8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A8DCC | 7C 08 02 A6 */	mflr r0
/* 813A8DD0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A8DD4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813A8DD8 | 7C 7F 1B 78 */	mr r31, r3
/* 813A8DDC | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A8DE0 | 4B F9 FA 29 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813A8DE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A8DE8 | 40 82 00 74 */	bne .L_813A8E5C
/* 813A8DEC | 3C 7F 00 0F */	addis r3, r31, 0xf
/* 813A8DF0 | 38 80 00 00 */	li r4, 0x0
/* 813A8DF4 | 80 63 85 E4 */	lwz r3, -0x7a1c(r3)
/* 813A8DF8 | 48 00 14 45 */	bl create__Q33ipl5scene9ThumbnailFPUc
/* 813A8DFC | 7F E3 FB 78 */	mr r3, r31
/* 813A8E00 | 48 00 07 5D */	bl getAsyncResult__Q33ipl5scene17NandSDCardManagerFv
/* 813A8E04 | 6C 63 80 00 */	xoris r3, r3, 0x8000
/* 813A8E08 | 3C 00 43 30 */	lis r0, 0x4330
/* 813A8E0C | 90 61 00 0C */	stw r3, 0xc(r1)
/* 813A8E10 | C8 62 85 40 */	lfd f3, lbl_81694940@sda21(r0)
/* 813A8E14 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 813A8E18 | C0 22 85 38 */	lfs f1, lbl_81694938@sda21(r0)
/* 813A8E1C | C8 41 00 08 */	lfd f2, 0x8(r1)
/* 813A8E20 | C0 02 85 3C */	lfs f0, lbl_8169493C@sda21(r0)
/* 813A8E24 | EC 42 18 28 */	fsubs f2, f2, f3
/* 813A8E28 | EC 22 00 72 */	fmuls f1, f2, f1
/* 813A8E2C | EC 21 00 32 */	fmuls f1, f1, f0
/* 813A8E30 | 48 26 38 21 */	bl ceil
/* 813A8E34 | FC 20 08 18 */	frsp f1, f1
/* 813A8E38 | 48 25 05 61 */	bl __cvt_fp2unsigned
/* 813A8E3C | 3C BF 00 0F */	addis r5, r31, 0xf
/* 813A8E40 | 38 00 00 08 */	li r0, 0x8
/* 813A8E44 | 80 85 85 E4 */	lwz r4, -0x7a1c(r5)
/* 813A8E48 | 90 64 06 1C */	stw r3, 0x61c(r4)
/* 813A8E4C | 80 85 85 E4 */	lwz r4, -0x7a1c(r5)
/* 813A8E50 | 80 65 85 E0 */	lwz r3, -0x7a20(r5)
/* 813A8E54 | 90 83 00 40 */	stw r4, 0x40(r3)
/* 813A8E58 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_813A8E5C:
/* 813A8E5C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A8E60 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813A8E64 | 7C 08 03 A6 */	mtlr r0
/* 813A8E68 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A8E6C | 4E 80 00 20 */	blr
.endfn on_get_thumbnail_size__Q33ipl5scene17NandSDCardManagerFv

# .text:0x1834 | 0x813A8E70 | size: 0x100
# ipl::scene::NandSDCardManager::on_get_wiibanner()
.fn on_get_wiibanner__Q33ipl5scene17NandSDCardManagerFv, global
/* 813A8E70 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A8E74 | 7C 08 02 A6 */	mflr r0
/* 813A8E78 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A8E7C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A8E80 | 7C 7F 1B 78 */	mr r31, r3
/* 813A8E84 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A8E88 | 4B F9 F9 81 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813A8E8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A8E90 | 40 82 00 CC */	bne .L_813A8F5C
/* 813A8E94 | 7F E3 FB 78 */	mr r3, r31
/* 813A8E98 | 48 00 06 C5 */	bl getAsyncResult__Q33ipl5scene17NandSDCardManagerFv
/* 813A8E9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A8EA0 | 40 82 00 54 */	bne .L_813A8EF4
/* 813A8EA4 | 3C 7F 00 0F */	addis r3, r31, 0xf
/* 813A8EA8 | 80 83 85 EC */	lwz r4, -0x7a14(r3)
/* 813A8EAC | 80 A4 00 F8 */	lwz r5, 0xf8(r4)
/* 813A8EB0 | 80 C4 00 FC */	lwz r6, 0xfc(r4)
/* 813A8EB4 | 7C C0 2B 79 */	or. r0, r6, r5
/* 813A8EB8 | 41 82 00 10 */	beq .L_813A8EC8
/* 813A8EBC | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813A8EC0 | 4B FA 00 15 */	bl get_nand_save_size_async__Q23ipl12NandSDWorkerFUx
/* 813A8EC4 | 48 00 00 10 */	b .L_813A8ED4
.L_813A8EC8:
/* 813A8EC8 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813A8ECC | 80 84 01 00 */	lwz r4, 0x100(r4)
/* 813A8ED0 | 4B FA 00 4D */	bl get_sd_save_size_async__Q23ipl12NandSDWorkerFUl
.L_813A8ED4:
/* 813A8ED4 | 3C 7F 00 0F */	addis r3, r31, 0xf
/* 813A8ED8 | 38 80 00 00 */	li r4, 0x0
/* 813A8EDC | 80 63 85 EC */	lwz r3, -0x7a14(r3)
/* 813A8EE0 | 38 00 00 16 */	li r0, 0x16
/* 813A8EE4 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813A8EE8 | 98 83 F1 AC */	stb r4, -0xe54(r3)
/* 813A8EEC | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813A8EF0 | 48 00 00 6C */	b .L_813A8F5C
.L_813A8EF4:
/* 813A8EF4 | 7F E3 FB 78 */	mr r3, r31
/* 813A8EF8 | 48 00 06 65 */	bl getAsyncResult__Q33ipl5scene17NandSDCardManagerFv
/* 813A8EFC | 2C 03 FF FD */	cmpwi r3, -0x3
/* 813A8F00 | 40 82 00 54 */	bne .L_813A8F54
/* 813A8F04 | 3C 7F 00 0F */	addis r3, r31, 0xf
/* 813A8F08 | 80 83 85 EC */	lwz r4, -0x7a14(r3)
/* 813A8F0C | 80 A4 00 F8 */	lwz r5, 0xf8(r4)
/* 813A8F10 | 80 C4 00 FC */	lwz r6, 0xfc(r4)
/* 813A8F14 | 7C C0 2B 79 */	or. r0, r6, r5
/* 813A8F18 | 41 82 00 10 */	beq .L_813A8F28
/* 813A8F1C | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813A8F20 | 4B F9 FF B5 */	bl get_nand_save_size_async__Q23ipl12NandSDWorkerFUx
/* 813A8F24 | 48 00 00 10 */	b .L_813A8F34
.L_813A8F28:
/* 813A8F28 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813A8F2C | 80 84 01 00 */	lwz r4, 0x100(r4)
/* 813A8F30 | 4B F9 FF ED */	bl get_sd_save_size_async__Q23ipl12NandSDWorkerFUl
.L_813A8F34:
/* 813A8F34 | 3C 7F 00 0F */	addis r3, r31, 0xf
/* 813A8F38 | 38 80 00 01 */	li r4, 0x1
/* 813A8F3C | 80 63 85 EC */	lwz r3, -0x7a14(r3)
/* 813A8F40 | 38 00 00 16 */	li r0, 0x16
/* 813A8F44 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813A8F48 | 98 83 F1 AC */	stb r4, -0xe54(r3)
/* 813A8F4C | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813A8F50 | 48 00 00 0C */	b .L_813A8F5C
.L_813A8F54:
/* 813A8F54 | 38 00 00 08 */	li r0, 0x8
/* 813A8F58 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_813A8F5C:
/* 813A8F5C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A8F60 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A8F64 | 7C 08 03 A6 */	mtlr r0
/* 813A8F68 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A8F6C | 4E 80 00 20 */	blr
.endfn on_get_wiibanner__Q33ipl5scene17NandSDCardManagerFv

# .text:0x1934 | 0x813A8F70 | size: 0xC4
# ipl::scene::NandSDCardManager::on_get_wiibanner_size()
.fn on_get_wiibanner_size__Q33ipl5scene17NandSDCardManagerFv, global
/* 813A8F70 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A8F74 | 7C 08 02 A6 */	mflr r0
/* 813A8F78 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A8F7C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813A8F80 | 7C 7F 1B 78 */	mr r31, r3
/* 813A8F84 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A8F88 | 4B F9 F8 81 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813A8F8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A8F90 | 40 82 00 90 */	bne .L_813A9020
/* 813A8F94 | 3C 7F 00 0F */	addis r3, r31, 0xf
/* 813A8F98 | 80 63 85 EC */	lwz r3, -0x7a14(r3)
/* 813A8F9C | 48 02 0A 0D */	bl create__Q33ipl5scene17WiiBannerFileInfoFv
/* 813A8FA0 | 7F E3 FB 78 */	mr r3, r31
/* 813A8FA4 | 48 00 05 B9 */	bl getAsyncResult__Q33ipl5scene17NandSDCardManagerFv
/* 813A8FA8 | 6C 63 80 00 */	xoris r3, r3, 0x8000
/* 813A8FAC | 3C 00 43 30 */	lis r0, 0x4330
/* 813A8FB0 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 813A8FB4 | C8 62 85 40 */	lfd f3, lbl_81694940@sda21(r0)
/* 813A8FB8 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 813A8FBC | C0 22 85 38 */	lfs f1, lbl_81694938@sda21(r0)
/* 813A8FC0 | C8 41 00 08 */	lfd f2, 0x8(r1)
/* 813A8FC4 | C0 02 85 3C */	lfs f0, lbl_8169493C@sda21(r0)
/* 813A8FC8 | EC 42 18 28 */	fsubs f2, f2, f3
/* 813A8FCC | EC 22 00 72 */	fmuls f1, f2, f1
/* 813A8FD0 | EC 21 00 32 */	fmuls f1, f1, f0
/* 813A8FD4 | 48 26 36 7D */	bl ceil
/* 813A8FD8 | FC 20 08 18 */	frsp f1, f1
/* 813A8FDC | 48 25 03 BD */	bl __cvt_fp2unsigned
/* 813A8FE0 | 3C BF 00 0F */	addis r5, r31, 0xf
/* 813A8FE4 | 80 85 85 EC */	lwz r4, -0x7a14(r5)
/* 813A8FE8 | 90 64 01 04 */	stw r3, 0x104(r4)
/* 813A8FEC | 80 85 85 EC */	lwz r4, -0x7a14(r5)
/* 813A8FF0 | 80 A4 00 F8 */	lwz r5, 0xf8(r4)
/* 813A8FF4 | 80 C4 00 FC */	lwz r6, 0xfc(r4)
/* 813A8FF8 | 7C C0 2B 79 */	or. r0, r6, r5
/* 813A8FFC | 41 82 00 10 */	beq .L_813A900C
/* 813A9000 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813A9004 | 4B FA 01 7D */	bl iplNandSD_81349180
/* 813A9008 | 48 00 00 10 */	b .L_813A9018
.L_813A900C:
/* 813A900C | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813A9010 | 80 84 01 00 */	lwz r4, 0x100(r4)
/* 813A9014 | 4B FA 01 85 */	bl iplNandSD_81349198
.L_813A9018:
/* 813A9018 | 38 00 00 17 */	li r0, 0x17
/* 813A901C | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_813A9020:
/* 813A9020 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A9024 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813A9028 | 7C 08 03 A6 */	mtlr r0
/* 813A902C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A9030 | 4E 80 00 20 */	blr
.endfn on_get_wiibanner_size__Q33ipl5scene17NandSDCardManagerFv

# .text:0x19F8 | 0x813A9034 | size: 0x64
.fn iplNandSDCardManager_813A9034, global
/* 813A9034 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A9038 | 7C 08 02 A6 */	mflr r0
/* 813A903C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A9040 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A9044 | 7C 7F 1B 78 */	mr r31, r3
/* 813A9048 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A904C | 4B F9 F7 BD */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813A9050 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A9054 | 40 82 00 30 */	bne .L_813A9084
/* 813A9058 | 7F E3 FB 78 */	mr r3, r31
/* 813A905C | 48 00 05 01 */	bl getAsyncResult__Q33ipl5scene17NandSDCardManagerFv
/* 813A9060 | 3C BF 00 0F */	addis r5, r31, 0xf
/* 813A9064 | 38 00 00 08 */	li r0, 0x8
/* 813A9068 | 80 85 85 EC */	lwz r4, -0x7a14(r5)
/* 813A906C | 3C 84 00 01 */	addis r4, r4, 0x1
/* 813A9070 | 90 64 F1 A8 */	stw r3, -0xe58(r4)
/* 813A9074 | 80 85 85 EC */	lwz r4, -0x7a14(r5)
/* 813A9078 | 80 65 85 E8 */	lwz r3, -0x7a18(r5)
/* 813A907C | 90 83 00 40 */	stw r4, 0x40(r3)
/* 813A9080 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_813A9084:
/* 813A9084 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A9088 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A908C | 7C 08 03 A6 */	mtlr r0
/* 813A9090 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A9094 | 4E 80 00 20 */	blr
.endfn iplNandSDCardManager_813A9034

# .text:0x1A5C | 0x813A9098 | size: 0x8C
.fn iplNandSDCardManager_813A9098, global
/* 813A9098 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A909C | 7C 08 02 A6 */	mflr r0
/* 813A90A0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A90A4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A90A8 | 7C 7F 1B 78 */	mr r31, r3
/* 813A90AC | 48 1B F2 99 */	bl fn_81568344
/* 813A90B0 | 28 03 00 01 */	cmplwi r3, 0x1
/* 813A90B4 | 41 82 00 5C */	beq .L_813A9110
/* 813A90B8 | 3C 9F 00 0F */	addis r4, r31, 0xf
/* 813A90BC | 38 00 00 00 */	li r0, 0x0
/* 813A90C0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813A90C4 | 90 04 87 9C */	stw r0, -0x7864(r4)
/* 813A90C8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813A90CC | 90 04 87 98 */	stw r0, -0x7868(r4)
/* 813A90D0 | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813A90D4 | 4B F8 EB 79 */	bl reserveRefresh__Q33ipl7channel7ManagerFv
/* 813A90D8 | 3C 7F 00 0F */	addis r3, r31, 0xf
/* 813A90DC | 88 03 87 A0 */	lbz r0, -0x7860(r3)
/* 813A90E0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A90E4 | 41 82 00 24 */	beq .L_813A9108
/* 813A90E8 | 80 83 85 E0 */	lwz r4, -0x7a20(r3)
/* 813A90EC | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813A90F0 | 80 84 00 40 */	lwz r4, 0x40(r4)
/* 813A90F4 | 80 84 06 18 */	lwz r4, 0x618(r4)
/* 813A90F8 | 4B F9 FE 79 */	bl delete_sd_app_async__Q23ipl12NandSDWorkerFUl
/* 813A90FC | 38 00 00 11 */	li r0, 0x11
/* 813A9100 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813A9104 | 48 00 00 0C */	b .L_813A9110
.L_813A9108:
/* 813A9108 | 38 00 00 08 */	li r0, 0x8
/* 813A910C | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_813A9110:
/* 813A9110 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A9114 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A9118 | 7C 08 03 A6 */	mtlr r0
/* 813A911C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A9120 | 4E 80 00 20 */	blr
.endfn iplNandSDCardManager_813A9098

# .text:0x1AE8 | 0x813A9124 | size: 0x54
.fn iplNandSDCardManager_813A9124, global
/* 813A9124 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A9128 | 7C 08 02 A6 */	mflr r0
/* 813A912C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A9130 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A9134 | 7C 7F 1B 78 */	mr r31, r3
/* 813A9138 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A913C | 4B F9 F6 CD */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813A9140 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A9144 | 40 82 00 20 */	bne .L_813A9164
/* 813A9148 | 38 80 00 00 */	li r4, 0x0
/* 813A914C | 38 60 00 00 */	li r3, 0x0
/* 813A9150 | 48 1C 17 BD */	bl fn_8156A90C
/* 813A9154 | 38 60 00 00 */	li r3, 0x0
/* 813A9158 | 48 1C 08 65 */	bl fn_815699BC
/* 813A915C | 38 00 00 18 */	li r0, 0x18
/* 813A9160 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_813A9164:
/* 813A9164 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A9168 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A916C | 7C 08 03 A6 */	mtlr r0
/* 813A9170 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A9174 | 4E 80 00 20 */	blr
.endfn iplNandSDCardManager_813A9124

# .text:0x1B3C | 0x813A9178 | size: 0x68
.fn iplNandSDCardManager_813A9178, global
/* 813A9178 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A917C | 7C 08 02 A6 */	mflr r0
/* 813A9180 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A9184 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A9188 | 7C 7F 1B 78 */	mr r31, r3
/* 813A918C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A9190 | 4B F9 F6 79 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813A9194 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A9198 | 40 82 00 34 */	bne .L_813A91CC
/* 813A919C | 7F E3 FB 78 */	mr r3, r31
/* 813A91A0 | 48 00 03 BD */	bl getAsyncResult__Q33ipl5scene17NandSDCardManagerFv
/* 813A91A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A91A8 | 40 82 00 1C */	bne .L_813A91C4
/* 813A91AC | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813A91B0 | 38 80 00 01 */	li r4, 0x1
/* 813A91B4 | 4B FA 00 69 */	bl iplNandSD_8134921C
/* 813A91B8 | 38 00 00 19 */	li r0, 0x19
/* 813A91BC | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813A91C0 | 48 00 00 0C */	b .L_813A91CC
.L_813A91C4:
/* 813A91C4 | 38 00 00 08 */	li r0, 0x8
/* 813A91C8 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_813A91CC:
/* 813A91CC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A91D0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A91D4 | 7C 08 03 A6 */	mtlr r0
/* 813A91D8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A91DC | 4E 80 00 20 */	blr
.endfn iplNandSDCardManager_813A9178

# .text:0x1BA4 | 0x813A91E0 | size: 0xBC
.fn iplNandSDCardManager_813A91E0, global
/* 813A91E0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A91E4 | 7C 08 02 A6 */	mflr r0
/* 813A91E8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A91EC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A91F0 | 48 25 02 D9 */	bl _savegpr_29
/* 813A91F4 | 7C 7D 1B 78 */	mr r29, r3
/* 813A91F8 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A91FC | 4B F9 F6 0D */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813A9200 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A9204 | 40 82 00 80 */	bne .L_813A9284
/* 813A9208 | 7F A3 EB 78 */	mr r3, r29
/* 813A920C | 48 00 03 51 */	bl getAsyncResult__Q33ipl5scene17NandSDCardManagerFv
/* 813A9210 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A9214 | 40 82 00 68 */	bne .L_813A927C
/* 813A9218 | 3F FD 00 0F */	addis r31, r29, 0xf
/* 813A921C | 3B C0 00 00 */	li r30, 0x0
/* 813A9220 | 48 00 00 44 */	b .L_813A9264
.L_813A9224:
/* 813A9224 | 80 9F 85 E0 */	lwz r4, -0x7a20(r31)
/* 813A9228 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 813A922C | 80 A4 00 40 */	lwz r5, 0x40(r4)
/* 813A9230 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813A9234 | 80 85 06 10 */	lwz r4, 0x610(r5)
/* 813A9238 | 80 A5 06 14 */	lwz r5, 0x614(r5)
/* 813A923C | 7C 80 02 78 */	xor r0, r4, r0
/* 813A9240 | 7C A3 1A 78 */	xor r3, r5, r3
/* 813A9244 | 7C 60 03 79 */	or. r0, r3, r0
/* 813A9248 | 40 82 00 1C */	bne .L_813A9264
/* 813A924C | 7F C4 F3 78 */	mr r4, r30
/* 813A9250 | 38 7D 00 1C */	addi r3, r29, 0x1c
/* 813A9254 | 48 16 90 1D */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813A9258 | 7F C3 F3 78 */	mr r3, r30
/* 813A925C | 48 24 EE 89 */	bl __dl__FPv
/* 813A9260 | 48 00 00 1C */	b .L_813A927C
.L_813A9264:
/* 813A9264 | 7F C4 F3 78 */	mr r4, r30
/* 813A9268 | 38 7D 00 1C */	addi r3, r29, 0x1c
/* 813A926C | 48 16 90 71 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A9270 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A9274 | 7C 7E 1B 78 */	mr r30, r3
/* 813A9278 | 40 82 FF AC */	bne .L_813A9224
.L_813A927C:
/* 813A927C | 38 00 00 08 */	li r0, 0x8
/* 813A9280 | 90 1D 00 00 */	stw r0, 0x0(r29)
.L_813A9284:
/* 813A9284 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A9288 | 48 25 02 8D */	bl _restgpr_29
/* 813A928C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A9290 | 7C 08 03 A6 */	mtlr r0
/* 813A9294 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A9298 | 4E 80 00 20 */	blr
.endfn iplNandSDCardManager_813A91E0

# .text:0x1C60 | 0x813A929C | size: 0xAC
.fn iplNandSDCardManager_813A929C, global
/* 813A929C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A92A0 | 7C 08 02 A6 */	mflr r0
/* 813A92A4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A92A8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A92AC | 48 25 02 1D */	bl _savegpr_29
/* 813A92B0 | 7C 7D 1B 78 */	mr r29, r3
/* 813A92B4 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A92B8 | 4B F9 F5 51 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813A92BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A92C0 | 40 82 00 70 */	bne .L_813A9330
/* 813A92C4 | 7F A3 EB 78 */	mr r3, r29
/* 813A92C8 | 48 00 02 95 */	bl getAsyncResult__Q33ipl5scene17NandSDCardManagerFv
/* 813A92CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A92D0 | 40 82 00 58 */	bne .L_813A9328
/* 813A92D4 | 3F FD 00 0F */	addis r31, r29, 0xf
/* 813A92D8 | 3B C0 00 00 */	li r30, 0x0
/* 813A92DC | 48 00 00 34 */	b .L_813A9310
.L_813A92E0:
/* 813A92E0 | 80 9F 85 E0 */	lwz r4, -0x7a20(r31)
/* 813A92E4 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 813A92E8 | 80 64 00 40 */	lwz r3, 0x40(r4)
/* 813A92EC | 80 63 06 18 */	lwz r3, 0x618(r3)
/* 813A92F0 | 7C 03 00 40 */	cmplw r3, r0
/* 813A92F4 | 40 82 00 1C */	bne .L_813A9310
/* 813A92F8 | 7F C4 F3 78 */	mr r4, r30
/* 813A92FC | 38 7D 00 28 */	addi r3, r29, 0x28
/* 813A9300 | 48 16 8F 71 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813A9304 | 7F C3 F3 78 */	mr r3, r30
/* 813A9308 | 48 24 ED DD */	bl __dl__FPv
/* 813A930C | 48 00 00 1C */	b .L_813A9328
.L_813A9310:
/* 813A9310 | 7F C4 F3 78 */	mr r4, r30
/* 813A9314 | 38 7D 00 28 */	addi r3, r29, 0x28
/* 813A9318 | 48 16 8F C5 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A931C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A9320 | 7C 7E 1B 78 */	mr r30, r3
/* 813A9324 | 40 82 FF BC */	bne .L_813A92E0
.L_813A9328:
/* 813A9328 | 38 00 00 08 */	li r0, 0x8
/* 813A932C | 90 1D 00 00 */	stw r0, 0x0(r29)
.L_813A9330:
/* 813A9330 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A9334 | 48 25 01 E1 */	bl _restgpr_29
/* 813A9338 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A933C | 7C 08 03 A6 */	mtlr r0
/* 813A9340 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A9344 | 4E 80 00 20 */	blr
.endfn iplNandSDCardManager_813A929C

# .text:0x1D0C | 0x813A9348 | size: 0xBC
.fn iplNandSDCardManager_813A9348, global
/* 813A9348 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A934C | 7C 08 02 A6 */	mflr r0
/* 813A9350 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A9354 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A9358 | 48 25 01 71 */	bl _savegpr_29
/* 813A935C | 7C 7D 1B 78 */	mr r29, r3
/* 813A9360 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A9364 | 4B F9 F4 A5 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813A9368 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A936C | 40 82 00 80 */	bne .L_813A93EC
/* 813A9370 | 7F A3 EB 78 */	mr r3, r29
/* 813A9374 | 48 00 01 E9 */	bl getAsyncResult__Q33ipl5scene17NandSDCardManagerFv
/* 813A9378 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A937C | 40 82 00 68 */	bne .L_813A93E4
/* 813A9380 | 3F FD 00 0F */	addis r31, r29, 0xf
/* 813A9384 | 3B C0 00 00 */	li r30, 0x0
/* 813A9388 | 48 00 00 44 */	b .L_813A93CC
.L_813A938C:
/* 813A938C | 80 9F 85 E8 */	lwz r4, -0x7a18(r31)
/* 813A9390 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 813A9394 | 80 A4 00 40 */	lwz r5, 0x40(r4)
/* 813A9398 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813A939C | 80 85 00 F8 */	lwz r4, 0xf8(r5)
/* 813A93A0 | 80 A5 00 FC */	lwz r5, 0xfc(r5)
/* 813A93A4 | 7C 80 02 78 */	xor r0, r4, r0
/* 813A93A8 | 7C A3 1A 78 */	xor r3, r5, r3
/* 813A93AC | 7C 60 03 79 */	or. r0, r3, r0
/* 813A93B0 | 40 82 00 1C */	bne .L_813A93CC
/* 813A93B4 | 7F C4 F3 78 */	mr r4, r30
/* 813A93B8 | 38 7D 00 1C */	addi r3, r29, 0x1c
/* 813A93BC | 48 16 8E B5 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813A93C0 | 7F C3 F3 78 */	mr r3, r30
/* 813A93C4 | 48 24 ED 21 */	bl __dl__FPv
/* 813A93C8 | 48 00 00 1C */	b .L_813A93E4
.L_813A93CC:
/* 813A93CC | 7F C4 F3 78 */	mr r4, r30
/* 813A93D0 | 38 7D 00 1C */	addi r3, r29, 0x1c
/* 813A93D4 | 48 16 8F 09 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A93D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A93DC | 7C 7E 1B 78 */	mr r30, r3
/* 813A93E0 | 40 82 FF AC */	bne .L_813A938C
.L_813A93E4:
/* 813A93E4 | 38 00 00 08 */	li r0, 0x8
/* 813A93E8 | 90 1D 00 00 */	stw r0, 0x0(r29)
.L_813A93EC:
/* 813A93EC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A93F0 | 48 25 01 25 */	bl _restgpr_29
/* 813A93F4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A93F8 | 7C 08 03 A6 */	mtlr r0
/* 813A93FC | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A9400 | 4E 80 00 20 */	blr
.endfn iplNandSDCardManager_813A9348

# .text:0x1DC8 | 0x813A9404 | size: 0xAC
.fn iplNandSDCardManager_813A9404, global
/* 813A9404 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A9408 | 7C 08 02 A6 */	mflr r0
/* 813A940C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A9410 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A9414 | 48 25 00 B5 */	bl _savegpr_29
/* 813A9418 | 7C 7D 1B 78 */	mr r29, r3
/* 813A941C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A9420 | 4B F9 F3 E9 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813A9424 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A9428 | 40 82 00 70 */	bne .L_813A9498
/* 813A942C | 7F A3 EB 78 */	mr r3, r29
/* 813A9430 | 48 00 01 2D */	bl getAsyncResult__Q33ipl5scene17NandSDCardManagerFv
/* 813A9434 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A9438 | 40 82 00 58 */	bne .L_813A9490
/* 813A943C | 3F FD 00 0F */	addis r31, r29, 0xf
/* 813A9440 | 3B C0 00 00 */	li r30, 0x0
/* 813A9444 | 48 00 00 34 */	b .L_813A9478
.L_813A9448:
/* 813A9448 | 80 9F 85 E8 */	lwz r4, -0x7a18(r31)
/* 813A944C | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 813A9450 | 80 64 00 40 */	lwz r3, 0x40(r4)
/* 813A9454 | 80 63 01 00 */	lwz r3, 0x100(r3)
/* 813A9458 | 7C 03 00 40 */	cmplw r3, r0
/* 813A945C | 40 82 00 1C */	bne .L_813A9478
/* 813A9460 | 7F C4 F3 78 */	mr r4, r30
/* 813A9464 | 38 7D 00 28 */	addi r3, r29, 0x28
/* 813A9468 | 48 16 8E 09 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813A946C | 7F C3 F3 78 */	mr r3, r30
/* 813A9470 | 48 24 EC 75 */	bl __dl__FPv
/* 813A9474 | 48 00 00 1C */	b .L_813A9490
.L_813A9478:
/* 813A9478 | 7F C4 F3 78 */	mr r4, r30
/* 813A947C | 38 7D 00 28 */	addi r3, r29, 0x28
/* 813A9480 | 48 16 8E 5D */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A9484 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A9488 | 7C 7E 1B 78 */	mr r30, r3
/* 813A948C | 40 82 FF BC */	bne .L_813A9448
.L_813A9490:
/* 813A9490 | 38 00 00 08 */	li r0, 0x8
/* 813A9494 | 90 1D 00 00 */	stw r0, 0x0(r29)
.L_813A9498:
/* 813A9498 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A949C | 48 25 00 79 */	bl _restgpr_29
/* 813A94A0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A94A4 | 7C 08 03 A6 */	mtlr r0
/* 813A94A8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A94AC | 4E 80 00 20 */	blr
.endfn iplNandSDCardManager_813A9404

# .text:0x1E74 | 0x813A94B0 | size: 0xAC
# ipl::scene::NandSDCardManager::clean_command_queue()
.fn clean_command_queue__Q33ipl5scene17NandSDCardManagerFv, global
/* 813A94B0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A94B4 | 7C 08 02 A6 */	mflr r0
/* 813A94B8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A94BC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A94C0 | 48 25 00 01 */	bl _savegpr_27
/* 813A94C4 | 3C 80 81 65 */	lis r4, lbl_8164D902@ha
/* 813A94C8 | 7C 7B 1B 78 */	mr r27, r3
/* 813A94CC | 38 64 D9 02 */	addi r3, r4, lbl_8164D902@l
/* 813A94D0 | 4C C6 31 82 */	crclr cr1eq
/* 813A94D4 | 48 18 51 CD */	bl OSReport
/* 813A94D8 | 3F BB 00 0F */	addis r29, r27, 0xf
/* 813A94DC | 48 00 00 10 */	b .L_813A94EC
.L_813A94E0:
/* 813A94E0 | 3C 7B 00 0F */	addis r3, r27, 0xf
/* 813A94E4 | 38 63 86 80 */	subi r3, r3, 0x7980
/* 813A94E8 | 48 00 0C 81 */	bl "pop__Q33ipl7utility58Queue<Q43ipl5scene17NandSDCardManager15GetThumbnailCmd,15>Fv"
.L_813A94EC:
/* 813A94EC | 80 1D 87 74 */	lwz r0, -0x788c(r29)
/* 813A94F0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A94F4 | 41 81 FF EC */	bgt .L_813A94E0
/* 813A94F8 | 3B C0 00 00 */	li r30, 0x0
/* 813A94FC | 3C 60 00 01 */	lis r3, 0x1
/* 813A9500 | 93 DD 85 E0 */	stw r30, -0x7a20(r29)
/* 813A9504 | 3B E3 F1 B0 */	subi r31, r3, 0xe50
/* 813A9508 | 3B 80 00 00 */	li r28, 0x0
/* 813A950C | 93 DD 85 E4 */	stw r30, -0x7a1c(r29)
/* 813A9510 | 93 DD 85 E8 */	stw r30, -0x7a18(r29)
/* 813A9514 | 93 DD 85 EC */	stw r30, -0x7a14(r29)
.L_813A9518:
/* 813A9518 | 7C 7B F2 14 */	add r3, r27, r30
/* 813A951C | 38 63 00 38 */	addi r3, r3, 0x38
/* 813A9520 | 48 00 0E 41 */	bl init__Q33ipl5scene9ThumbnailFv
/* 813A9524 | 7C 1C F9 D6 */	mullw r0, r28, r31
/* 813A9528 | 7C 7B 02 14 */	add r3, r27, r0
/* 813A952C | 38 63 5C 90 */	addi r3, r3, 0x5c90
/* 813A9530 | 48 02 03 9D */	bl init__Q33ipl5scene17WiiBannerFileInfoFv
/* 813A9534 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813A9538 | 3B DE 06 28 */	addi r30, r30, 0x628
/* 813A953C | 2C 1C 00 0F */	cmpwi r28, 0xf
/* 813A9540 | 41 80 FF D8 */	blt .L_813A9518
/* 813A9544 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A9548 | 48 24 FF C5 */	bl _restgpr_27
/* 813A954C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A9550 | 7C 08 03 A6 */	mtlr r0
/* 813A9554 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A9558 | 4E 80 00 20 */	blr
.endfn clean_command_queue__Q33ipl5scene17NandSDCardManagerFv

# .text:0x1F20 | 0x813A955C | size: 0xB8
# ipl::scene::NandSDCardManager::getAsyncResult()
.fn getAsyncResult__Q33ipl5scene17NandSDCardManagerFv, global
/* 813A955C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A9560 | 7C 08 02 A6 */	mflr r0
/* 813A9564 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A9568 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A956C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813A9570 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A9574 | 4B F9 F2 C1 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813A9578 | 2C 03 FF F8 */	cmpwi r3, -0x8
/* 813A957C | 7C 7E 1B 78 */	mr r30, r3
/* 813A9580 | 40 82 00 4C */	bne .L_813A95CC
/* 813A9584 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813A9588 | 3C 80 81 65 */	lis r4, lbl_8164D928@ha
/* 813A958C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813A9590 | 3C C0 81 65 */	lis r6, lbl_8164D935@ha
/* 813A9594 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 813A9598 | 38 84 D9 28 */	addi r4, r4, lbl_8164D928@l
/* 813A959C | 38 C6 D9 35 */	addi r6, r6, lbl_8164D935@l
/* 813A95A0 | 38 A0 FF F8 */	li r5, -0x8
/* 813A95A4 | 38 E0 04 B9 */	li r7, 0x4b9
/* 813A95A8 | 4B FA D1 51 */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 813A95AC | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 813A95B0 | 38 80 00 01 */	li r4, 0x1
/* 813A95B4 | 38 A0 00 02 */	li r5, 0x2
/* 813A95B8 | 38 C0 00 00 */	li r6, 0x0
/* 813A95BC | 38 E0 00 00 */	li r7, 0x0
/* 813A95C0 | 39 00 FF FF */	li r8, -0x1
/* 813A95C4 | 4B FA CF 51 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
/* 813A95C8 | 48 00 00 30 */	b .L_813A95F8
.L_813A95CC:
/* 813A95CC | 2C 03 FF FB */	cmpwi r3, -0x5
/* 813A95D0 | 40 82 00 28 */	bne .L_813A95F8
/* 813A95D4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813A95D8 | 38 80 00 01 */	li r4, 0x1
/* 813A95DC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813A95E0 | 38 A0 00 01 */	li r5, 0x1
/* 813A95E4 | 80 63 00 98 */	lwz r3, 0x98(r3)
/* 813A95E8 | 38 C0 00 00 */	li r6, 0x0
/* 813A95EC | 38 E0 00 00 */	li r7, 0x0
/* 813A95F0 | 39 00 FF FF */	li r8, -0x1
/* 813A95F4 | 4B FA CF 21 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_813A95F8:
/* 813A95F8 | 7F C3 F3 78 */	mr r3, r30
/* 813A95FC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A9600 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813A9604 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A9608 | 7C 08 03 A6 */	mtlr r0
/* 813A960C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A9610 | 4E 80 00 20 */	blr
.endfn getAsyncResult__Q33ipl5scene17NandSDCardManagerFv

# .text:0x1FD8 | 0x813A9614 | size: 0x170
# ipl::scene::NandSDCardManager::get_thumbnail(ipl::scene::NandSDCardManager::GetThumbnailCmd)
.fn get_thumbnail__Q33ipl5scene17NandSDCardManagerFQ43ipl5scene17NandSDCardManager15GetThumbnailCmd, global
/* 813A9614 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A9618 | 7C 08 02 A6 */	mflr r0
/* 813A961C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A9620 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A9624 | 48 24 FE A5 */	bl _savegpr_29
/* 813A9628 | 88 04 00 0C */	lbz r0, 0xc(r4)
/* 813A962C | 7C 7D 1B 78 */	mr r29, r3
/* 813A9630 | 7C 9E 23 78 */	mr r30, r4
/* 813A9634 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A9638 | 41 82 00 A0 */	beq .L_813A96D8
/* 813A963C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A9640 | 4B F9 F2 5D */	bl get_nand_app_num__Q23ipl12NandSDWorkerFv
/* 813A9644 | 80 1E 00 08 */	lwz r0, 0x8(r30)
/* 813A9648 | 7C 00 18 40 */	cmplw r0, r3
/* 813A964C | 41 80 00 14 */	blt .L_813A9660
/* 813A9650 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 813A9654 | 38 00 00 00 */	li r0, 0x0
/* 813A9658 | 90 03 00 40 */	stw r0, 0x40(r3)
/* 813A965C | 48 00 01 10 */	b .L_813A976C
.L_813A9660:
/* 813A9660 | 7F A3 EB 78 */	mr r3, r29
/* 813A9664 | 48 00 09 F9 */	bl get_free_thumbnail__Q33ipl5scene17NandSDCardManagerFv
/* 813A9668 | 80 1E 00 08 */	lwz r0, 0x8(r30)
/* 813A966C | 7C 7F 1B 78 */	mr r31, r3
/* 813A9670 | 38 7D 00 1C */	addi r3, r29, 0x1c
/* 813A9674 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813A9678 | 48 16 8C A1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813A967C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A9680 | 40 82 00 14 */	bne .L_813A9694
/* 813A9684 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 813A9688 | 38 00 00 00 */	li r0, 0x0
/* 813A968C | 90 03 00 40 */	stw r0, 0x40(r3)
/* 813A9690 | 48 00 00 DC */	b .L_813A976C
.L_813A9694:
/* 813A9694 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 813A9698 | 38 00 00 00 */	li r0, 0x0
/* 813A969C | 80 C3 00 04 */	lwz r6, 0x4(r3)
/* 813A96A0 | 39 1F 00 0C */	addi r8, r31, 0xc
/* 813A96A4 | 90 DF 06 14 */	stw r6, 0x614(r31)
/* 813A96A8 | 90 BF 06 10 */	stw r5, 0x610(r31)
/* 813A96AC | 90 1F 06 18 */	stw r0, 0x618(r31)
/* 813A96B0 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 813A96B4 | 80 FF 00 08 */	lwz r7, 0x8(r31)
/* 813A96B8 | 4B F9 F9 69 */	bl get_nand_app_thumbnail_async__Q23ipl12NandSDWorkerFUxPvPQ33ipl7channel18SChanMgrMetaHeader
/* 813A96BC | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 813A96C0 | 3C 7D 00 0F */	addis r3, r29, 0xf
/* 813A96C4 | 38 00 00 13 */	li r0, 0x13
/* 813A96C8 | 93 E3 85 E4 */	stw r31, -0x7a1c(r3)
/* 813A96CC | 90 83 85 E0 */	stw r4, -0x7a20(r3)
/* 813A96D0 | 90 1D 00 00 */	stw r0, 0x0(r29)
/* 813A96D4 | 48 00 00 98 */	b .L_813A976C
.L_813A96D8:
/* 813A96D8 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A96DC | 4B F9 F3 F1 */	bl get_sd_app_num__Q23ipl12NandSDWorkerFv
/* 813A96E0 | 80 1E 00 08 */	lwz r0, 0x8(r30)
/* 813A96E4 | 7C 00 18 00 */	cmpw r0, r3
/* 813A96E8 | 41 80 00 14 */	blt .L_813A96FC
/* 813A96EC | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 813A96F0 | 38 00 00 00 */	li r0, 0x0
/* 813A96F4 | 90 03 00 40 */	stw r0, 0x40(r3)
/* 813A96F8 | 48 00 00 74 */	b .L_813A976C
.L_813A96FC:
/* 813A96FC | 7F A3 EB 78 */	mr r3, r29
/* 813A9700 | 48 00 09 5D */	bl get_free_thumbnail__Q33ipl5scene17NandSDCardManagerFv
/* 813A9704 | 80 1E 00 08 */	lwz r0, 0x8(r30)
/* 813A9708 | 7C 7F 1B 78 */	mr r31, r3
/* 813A970C | 38 7D 00 28 */	addi r3, r29, 0x28
/* 813A9710 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813A9714 | 48 16 8C 05 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813A9718 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A971C | 40 82 00 14 */	bne .L_813A9730
/* 813A9720 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 813A9724 | 38 00 00 00 */	li r0, 0x0
/* 813A9728 | 90 03 00 40 */	stw r0, 0x40(r3)
/* 813A972C | 48 00 00 40 */	b .L_813A976C
.L_813A9730:
/* 813A9730 | 38 00 00 00 */	li r0, 0x0
/* 813A9734 | 38 DF 00 0C */	addi r6, r31, 0xc
/* 813A9738 | 90 1F 06 14 */	stw r0, 0x614(r31)
/* 813A973C | 90 1F 06 10 */	stw r0, 0x610(r31)
/* 813A9740 | 80 83 00 08 */	lwz r4, 0x8(r3)
/* 813A9744 | 90 9F 06 18 */	stw r4, 0x618(r31)
/* 813A9748 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 813A974C | 80 BF 00 08 */	lwz r5, 0x8(r31)
/* 813A9750 | 4B F9 F6 79 */	bl get_sd_app_thumbnail_async__Q23ipl12NandSDWorkerFUlPUcPQ33ipl7channel18SChanMgrMetaHeader
/* 813A9754 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 813A9758 | 3C 7D 00 0F */	addis r3, r29, 0xf
/* 813A975C | 38 00 00 13 */	li r0, 0x13
/* 813A9760 | 93 E3 85 E4 */	stw r31, -0x7a1c(r3)
/* 813A9764 | 90 83 85 E0 */	stw r4, -0x7a20(r3)
/* 813A9768 | 90 1D 00 00 */	stw r0, 0x0(r29)
.L_813A976C:
/* 813A976C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A9770 | 48 24 FD A5 */	bl _restgpr_29
/* 813A9774 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A9778 | 7C 08 03 A6 */	mtlr r0
/* 813A977C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A9780 | 4E 80 00 20 */	blr
.endfn get_thumbnail__Q33ipl5scene17NandSDCardManagerFQ43ipl5scene17NandSDCardManager15GetThumbnailCmd

# .text:0x2148 | 0x813A9784 | size: 0x168
# ipl::scene::NandSDCardManager::get_wiibanner(ipl::scene::NandSDCardManager::GetThumbnailCmd)
.fn get_wiibanner__Q33ipl5scene17NandSDCardManagerFQ43ipl5scene17NandSDCardManager15GetThumbnailCmd, global
/* 813A9784 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A9788 | 7C 08 02 A6 */	mflr r0
/* 813A978C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A9790 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A9794 | 48 24 FD 35 */	bl _savegpr_29
/* 813A9798 | 88 04 00 0C */	lbz r0, 0xc(r4)
/* 813A979C | 7C 7D 1B 78 */	mr r29, r3
/* 813A97A0 | 7C 9E 23 78 */	mr r30, r4
/* 813A97A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A97A8 | 41 82 00 9C */	beq .L_813A9844
/* 813A97AC | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A97B0 | 4B F9 F0 DD */	bl get_nand_save_num__Q23ipl12NandSDWorkerFv
/* 813A97B4 | 80 1E 00 08 */	lwz r0, 0x8(r30)
/* 813A97B8 | 7C 00 18 40 */	cmplw r0, r3
/* 813A97BC | 41 80 00 14 */	blt .L_813A97D0
/* 813A97C0 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813A97C4 | 38 00 00 00 */	li r0, 0x0
/* 813A97C8 | 90 03 00 40 */	stw r0, 0x40(r3)
/* 813A97CC | 48 00 01 08 */	b .L_813A98D4
.L_813A97D0:
/* 813A97D0 | 7F A3 EB 78 */	mr r3, r29
/* 813A97D4 | 48 00 08 CD */	bl get_free_banner__Q33ipl5scene17NandSDCardManagerFv
/* 813A97D8 | 80 1E 00 08 */	lwz r0, 0x8(r30)
/* 813A97DC | 7C 7F 1B 78 */	mr r31, r3
/* 813A97E0 | 38 7D 00 1C */	addi r3, r29, 0x1c
/* 813A97E4 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813A97E8 | 48 16 8B 31 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813A97EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A97F0 | 40 82 00 14 */	bne .L_813A9804
/* 813A97F4 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813A97F8 | 38 00 00 00 */	li r0, 0x0
/* 813A97FC | 90 03 00 40 */	stw r0, 0x40(r3)
/* 813A9800 | 48 00 00 D4 */	b .L_813A98D4
.L_813A9804:
/* 813A9804 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 813A9808 | 38 00 00 00 */	li r0, 0x0
/* 813A980C | 80 C3 00 04 */	lwz r6, 0x4(r3)
/* 813A9810 | 38 FF 01 08 */	addi r7, r31, 0x108
/* 813A9814 | 90 DF 00 FC */	stw r6, 0xfc(r31)
/* 813A9818 | 90 BF 00 F8 */	stw r5, 0xf8(r31)
/* 813A981C | 90 1F 01 00 */	stw r0, 0x100(r31)
/* 813A9820 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 813A9824 | 4B F9 F5 31 */	bl get_nand_save_banner_async__Q23ipl12NandSDWorkerFUxP17WIISaveBannerFile
/* 813A9828 | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 813A982C | 3C 7D 00 0F */	addis r3, r29, 0xf
/* 813A9830 | 38 00 00 15 */	li r0, 0x15
/* 813A9834 | 93 E3 85 EC */	stw r31, -0x7a14(r3)
/* 813A9838 | 90 83 85 E8 */	stw r4, -0x7a18(r3)
/* 813A983C | 90 1D 00 00 */	stw r0, 0x0(r29)
/* 813A9840 | 48 00 00 94 */	b .L_813A98D4
.L_813A9844:
/* 813A9844 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813A9848 | 4B F9 F2 61 */	bl get_sd_save_num__Q23ipl12NandSDWorkerFv
/* 813A984C | 80 1E 00 08 */	lwz r0, 0x8(r30)
/* 813A9850 | 7C 00 18 00 */	cmpw r0, r3
/* 813A9854 | 41 80 00 14 */	blt .L_813A9868
/* 813A9858 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813A985C | 38 00 00 00 */	li r0, 0x0
/* 813A9860 | 90 03 00 40 */	stw r0, 0x40(r3)
/* 813A9864 | 48 00 00 70 */	b .L_813A98D4
.L_813A9868:
/* 813A9868 | 7F A3 EB 78 */	mr r3, r29
/* 813A986C | 48 00 08 35 */	bl get_free_banner__Q33ipl5scene17NandSDCardManagerFv
/* 813A9870 | 80 1E 00 08 */	lwz r0, 0x8(r30)
/* 813A9874 | 7C 7F 1B 78 */	mr r31, r3
/* 813A9878 | 38 7D 00 28 */	addi r3, r29, 0x28
/* 813A987C | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813A9880 | 48 16 8A 99 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813A9884 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A9888 | 40 82 00 14 */	bne .L_813A989C
/* 813A988C | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813A9890 | 38 00 00 00 */	li r0, 0x0
/* 813A9894 | 90 03 00 40 */	stw r0, 0x40(r3)
/* 813A9898 | 48 00 00 3C */	b .L_813A98D4
.L_813A989C:
/* 813A989C | 38 00 00 00 */	li r0, 0x0
/* 813A98A0 | 38 BF 01 08 */	addi r5, r31, 0x108
/* 813A98A4 | 90 1F 00 FC */	stw r0, 0xfc(r31)
/* 813A98A8 | 90 1F 00 F8 */	stw r0, 0xf8(r31)
/* 813A98AC | 80 83 00 08 */	lwz r4, 0x8(r3)
/* 813A98B0 | 90 9F 01 00 */	stw r4, 0x100(r31)
/* 813A98B4 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 813A98B8 | 4B F9 F4 E9 */	bl get_sd_save_banner_async__Q23ipl12NandSDWorkerFUlP17WIISaveBannerFile
/* 813A98BC | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 813A98C0 | 3C 7D 00 0F */	addis r3, r29, 0xf
/* 813A98C4 | 38 00 00 15 */	li r0, 0x15
/* 813A98C8 | 93 E3 85 EC */	stw r31, -0x7a14(r3)
/* 813A98CC | 90 83 85 E8 */	stw r4, -0x7a18(r3)
/* 813A98D0 | 90 1D 00 00 */	stw r0, 0x0(r29)
.L_813A98D4:
/* 813A98D4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A98D8 | 48 24 FC 3D */	bl _restgpr_29
/* 813A98DC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A98E0 | 7C 08 03 A6 */	mtlr r0
/* 813A98E4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A98E8 | 4E 80 00 20 */	blr
.endfn get_wiibanner__Q33ipl5scene17NandSDCardManagerFQ43ipl5scene17NandSDCardManager15GetThumbnailCmd

# .text:0x22B0 | 0x813A98EC | size: 0x4C
# ipl::scene::NandSDCardManager::cmdTerminate()
.fn cmdTerminate__Q33ipl5scene17NandSDCardManagerFv, global
/* 813A98EC | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813A98F0 | 7C 08 02 A6 */	mflr r0
/* 813A98F4 | 3C 63 00 0F */	addis r3, r3, 0xf
/* 813A98F8 | 38 80 00 01 */	li r4, 0x1
/* 813A98FC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813A9900 | 38 00 00 00 */	li r0, 0x0
/* 813A9904 | 38 63 85 F0 */	subi r3, r3, 0x7a10
/* 813A9908 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 813A990C | 38 81 00 08 */	addi r4, r1, 0x8
/* 813A9910 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813A9914 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813A9918 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 813A991C | 90 01 00 18 */	stw r0, 0x18(r1)
/* 813A9920 | 90 01 00 20 */	stw r0, 0x20(r1)
/* 813A9924 | 48 00 08 91 */	bl "push__Q33ipl7utility48Queue<Q43ipl5scene17NandSDCardManager7Command,4>FRCQ43ipl5scene17NandSDCardManager7Command"
/* 813A9928 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813A992C | 7C 08 03 A6 */	mtlr r0
/* 813A9930 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813A9934 | 4E 80 00 20 */	blr
.endfn cmdTerminate__Q33ipl5scene17NandSDCardManagerFv

# .text:0x22FC | 0x813A9938 | size: 0x4C
# ipl::scene::NandSDCardManager::cmdSDMount()
.fn cmdSDMount__Q33ipl5scene17NandSDCardManagerFv, global
/* 813A9938 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813A993C | 7C 08 02 A6 */	mflr r0
/* 813A9940 | 3C 63 00 0F */	addis r3, r3, 0xf
/* 813A9944 | 38 80 00 02 */	li r4, 0x2
/* 813A9948 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813A994C | 38 00 00 00 */	li r0, 0x0
/* 813A9950 | 38 63 85 F0 */	subi r3, r3, 0x7a10
/* 813A9954 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 813A9958 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813A995C | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813A9960 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813A9964 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 813A9968 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 813A996C | 90 01 00 20 */	stw r0, 0x20(r1)
/* 813A9970 | 48 00 08 45 */	bl "push__Q33ipl7utility48Queue<Q43ipl5scene17NandSDCardManager7Command,4>FRCQ43ipl5scene17NandSDCardManager7Command"
/* 813A9974 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813A9978 | 7C 08 03 A6 */	mtlr r0
/* 813A997C | 38 21 00 30 */	addi r1, r1, 0x30
/* 813A9980 | 4E 80 00 20 */	blr
.endfn cmdSDMount__Q33ipl5scene17NandSDCardManagerFv

# .text:0x2348 | 0x813A9984 | size: 0x4C
# ipl::scene::NandSDCardManager::cmdSDFormat()
.fn cmdSDFormat__Q33ipl5scene17NandSDCardManagerFv, global
/* 813A9984 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813A9988 | 7C 08 02 A6 */	mflr r0
/* 813A998C | 3C 63 00 0F */	addis r3, r3, 0xf
/* 813A9990 | 38 80 00 03 */	li r4, 0x3
/* 813A9994 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813A9998 | 38 00 00 00 */	li r0, 0x0
/* 813A999C | 38 63 85 F0 */	subi r3, r3, 0x7a10
/* 813A99A0 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 813A99A4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813A99A8 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813A99AC | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813A99B0 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 813A99B4 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 813A99B8 | 90 01 00 20 */	stw r0, 0x20(r1)
/* 813A99BC | 48 00 07 F9 */	bl "push__Q33ipl7utility48Queue<Q43ipl5scene17NandSDCardManager7Command,4>FRCQ43ipl5scene17NandSDCardManager7Command"
/* 813A99C0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813A99C4 | 7C 08 03 A6 */	mtlr r0
/* 813A99C8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813A99CC | 4E 80 00 20 */	blr
.endfn cmdSDFormat__Q33ipl5scene17NandSDCardManagerFv

# .text:0x2394 | 0x813A99D0 | size: 0x4C
# ipl::scene::NandSDCardManager::cmdGetNandFree()
.fn cmdGetNandFree__Q33ipl5scene17NandSDCardManagerFv, global
/* 813A99D0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813A99D4 | 7C 08 02 A6 */	mflr r0
/* 813A99D8 | 3C 63 00 0F */	addis r3, r3, 0xf
/* 813A99DC | 38 80 00 04 */	li r4, 0x4
/* 813A99E0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813A99E4 | 38 00 00 00 */	li r0, 0x0
/* 813A99E8 | 38 63 85 F0 */	subi r3, r3, 0x7a10
/* 813A99EC | 90 81 00 08 */	stw r4, 0x8(r1)
/* 813A99F0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813A99F4 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813A99F8 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813A99FC | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 813A9A00 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 813A9A04 | 90 01 00 20 */	stw r0, 0x20(r1)
/* 813A9A08 | 48 00 07 AD */	bl "push__Q33ipl7utility48Queue<Q43ipl5scene17NandSDCardManager7Command,4>FRCQ43ipl5scene17NandSDCardManager7Command"
/* 813A9A0C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813A9A10 | 7C 08 03 A6 */	mtlr r0
/* 813A9A14 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813A9A18 | 4E 80 00 20 */	blr
.endfn cmdGetNandFree__Q33ipl5scene17NandSDCardManagerFv

# .text:0x23E0 | 0x813A9A1C | size: 0x4C
# ipl::scene::NandSDCardManager::cmdGetSDFree()
.fn cmdGetSDFree__Q33ipl5scene17NandSDCardManagerFv, global
/* 813A9A1C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813A9A20 | 7C 08 02 A6 */	mflr r0
/* 813A9A24 | 3C 63 00 0F */	addis r3, r3, 0xf
/* 813A9A28 | 38 80 00 05 */	li r4, 0x5
/* 813A9A2C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813A9A30 | 38 00 00 00 */	li r0, 0x0
/* 813A9A34 | 38 63 85 F0 */	subi r3, r3, 0x7a10
/* 813A9A38 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 813A9A3C | 38 81 00 08 */	addi r4, r1, 0x8
/* 813A9A40 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813A9A44 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813A9A48 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 813A9A4C | 90 01 00 18 */	stw r0, 0x18(r1)
/* 813A9A50 | 90 01 00 20 */	stw r0, 0x20(r1)
/* 813A9A54 | 48 00 07 61 */	bl "push__Q33ipl7utility48Queue<Q43ipl5scene17NandSDCardManager7Command,4>FRCQ43ipl5scene17NandSDCardManager7Command"
/* 813A9A58 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813A9A5C | 7C 08 03 A6 */	mtlr r0
/* 813A9A60 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813A9A64 | 4E 80 00 20 */	blr
.endfn cmdGetSDFree__Q33ipl5scene17NandSDCardManagerFv

# .text:0x242C | 0x813A9A68 | size: 0x4C
# ipl::scene::NandSDCardManager::cmdCopySaveNandToSD(unsigned long long)
.fn cmdCopySaveNandToSD__Q33ipl5scene17NandSDCardManagerFUx, global
/* 813A9A68 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813A9A6C | 7C 08 02 A6 */	mflr r0
/* 813A9A70 | 3C 63 00 0F */	addis r3, r3, 0xf
/* 813A9A74 | 38 80 00 07 */	li r4, 0x7
/* 813A9A78 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813A9A7C | 38 00 00 00 */	li r0, 0x0
/* 813A9A80 | 38 63 85 F0 */	subi r3, r3, 0x7a10
/* 813A9A84 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 813A9A88 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813A9A8C | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813A9A90 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813A9A94 | 90 C1 00 1C */	stw r6, 0x1c(r1)
/* 813A9A98 | 90 A1 00 18 */	stw r5, 0x18(r1)
/* 813A9A9C | 90 01 00 20 */	stw r0, 0x20(r1)
/* 813A9AA0 | 48 00 07 15 */	bl "push__Q33ipl7utility48Queue<Q43ipl5scene17NandSDCardManager7Command,4>FRCQ43ipl5scene17NandSDCardManager7Command"
/* 813A9AA4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813A9AA8 | 7C 08 03 A6 */	mtlr r0
/* 813A9AAC | 38 21 00 30 */	addi r1, r1, 0x30
/* 813A9AB0 | 4E 80 00 20 */	blr
.endfn cmdCopySaveNandToSD__Q33ipl5scene17NandSDCardManagerFUx

# .text:0x2478 | 0x813A9AB4 | size: 0x4C
# ipl::scene::NandSDCardManager::cmdCopySaveSDToNand(unsigned long)
.fn cmdCopySaveSDToNand__Q33ipl5scene17NandSDCardManagerFUl, global
/* 813A9AB4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813A9AB8 | 7C 08 02 A6 */	mflr r0
/* 813A9ABC | 3C 63 00 0F */	addis r3, r3, 0xf
/* 813A9AC0 | 38 A0 00 08 */	li r5, 0x8
/* 813A9AC4 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813A9AC8 | 38 00 00 00 */	li r0, 0x0
/* 813A9ACC | 38 63 85 F0 */	subi r3, r3, 0x7a10
/* 813A9AD0 | 90 81 00 20 */	stw r4, 0x20(r1)
/* 813A9AD4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813A9AD8 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 813A9ADC | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813A9AE0 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813A9AE4 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 813A9AE8 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 813A9AEC | 48 00 06 C9 */	bl "push__Q33ipl7utility48Queue<Q43ipl5scene17NandSDCardManager7Command,4>FRCQ43ipl5scene17NandSDCardManager7Command"
/* 813A9AF0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813A9AF4 | 7C 08 03 A6 */	mtlr r0
/* 813A9AF8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813A9AFC | 4E 80 00 20 */	blr
.endfn cmdCopySaveSDToNand__Q33ipl5scene17NandSDCardManagerFUl

# .text:0x24C4 | 0x813A9B00 | size: 0x4C
# ipl::scene::NandSDCardManager::cmdCopyAppNandToSD(unsigned long long)
.fn cmdCopyAppNandToSD__Q33ipl5scene17NandSDCardManagerFUx, global
/* 813A9B00 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813A9B04 | 7C 08 02 A6 */	mflr r0
/* 813A9B08 | 3C 63 00 0F */	addis r3, r3, 0xf
/* 813A9B0C | 38 80 00 0A */	li r4, 0xa
/* 813A9B10 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813A9B14 | 38 00 00 00 */	li r0, 0x0
/* 813A9B18 | 38 63 85 F0 */	subi r3, r3, 0x7a10
/* 813A9B1C | 90 81 00 08 */	stw r4, 0x8(r1)
/* 813A9B20 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813A9B24 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813A9B28 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813A9B2C | 90 C1 00 1C */	stw r6, 0x1c(r1)
/* 813A9B30 | 90 A1 00 18 */	stw r5, 0x18(r1)
/* 813A9B34 | 90 01 00 20 */	stw r0, 0x20(r1)
/* 813A9B38 | 48 00 06 7D */	bl "push__Q33ipl7utility48Queue<Q43ipl5scene17NandSDCardManager7Command,4>FRCQ43ipl5scene17NandSDCardManager7Command"
/* 813A9B3C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813A9B40 | 7C 08 03 A6 */	mtlr r0
/* 813A9B44 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813A9B48 | 4E 80 00 20 */	blr
.endfn cmdCopyAppNandToSD__Q33ipl5scene17NandSDCardManagerFUx

# .text:0x2510 | 0x813A9B4C | size: 0x4C
# ipl::scene::NandSDCardManager::cmdCopyAppSDToNand(unsigned long)
.fn cmdCopyAppSDToNand__Q33ipl5scene17NandSDCardManagerFUl, global
/* 813A9B4C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813A9B50 | 7C 08 02 A6 */	mflr r0
/* 813A9B54 | 3C 63 00 0F */	addis r3, r3, 0xf
/* 813A9B58 | 38 A0 00 09 */	li r5, 0x9
/* 813A9B5C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813A9B60 | 38 00 00 00 */	li r0, 0x0
/* 813A9B64 | 38 63 85 F0 */	subi r3, r3, 0x7a10
/* 813A9B68 | 90 81 00 20 */	stw r4, 0x20(r1)
/* 813A9B6C | 38 81 00 08 */	addi r4, r1, 0x8
/* 813A9B70 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 813A9B74 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813A9B78 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813A9B7C | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 813A9B80 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 813A9B84 | 48 00 06 31 */	bl "push__Q33ipl7utility48Queue<Q43ipl5scene17NandSDCardManager7Command,4>FRCQ43ipl5scene17NandSDCardManager7Command"
/* 813A9B88 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813A9B8C | 7C 08 03 A6 */	mtlr r0
/* 813A9B90 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813A9B94 | 4E 80 00 20 */	blr
.endfn cmdCopyAppSDToNand__Q33ipl5scene17NandSDCardManagerFUl

# .text:0x255C | 0x813A9B98 | size: 0x58
# ipl::scene::NandSDCardManager::cmdDelNandApp(ipl::scene::ChanAppBox*)
.fn cmdDelNandApp__Q33ipl5scene17NandSDCardManagerFPQ33ipl5scene10ChanAppBox, global
/* 813A9B98 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813A9B9C | 7C 08 02 A6 */	mflr r0
/* 813A9BA0 | 3C 63 00 0F */	addis r3, r3, 0xf
/* 813A9BA4 | 38 C0 00 00 */	li r6, 0x0
/* 813A9BA8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813A9BAC | 38 00 00 0B */	li r0, 0xb
/* 813A9BB0 | 38 63 85 F0 */	subi r3, r3, 0x7a10
/* 813A9BB4 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 813A9BB8 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 813A9BBC | 90 C1 00 10 */	stw r6, 0x10(r1)
/* 813A9BC0 | 80 A4 00 40 */	lwz r5, 0x40(r4)
/* 813A9BC4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813A9BC8 | 80 05 06 10 */	lwz r0, 0x610(r5)
/* 813A9BCC | 80 A5 06 14 */	lwz r5, 0x614(r5)
/* 813A9BD0 | 90 A1 00 1C */	stw r5, 0x1c(r1)
/* 813A9BD4 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 813A9BD8 | 90 C1 00 20 */	stw r6, 0x20(r1)
/* 813A9BDC | 48 00 05 D9 */	bl "push__Q33ipl7utility48Queue<Q43ipl5scene17NandSDCardManager7Command,4>FRCQ43ipl5scene17NandSDCardManager7Command"
/* 813A9BE0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813A9BE4 | 7C 08 03 A6 */	mtlr r0
/* 813A9BE8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813A9BEC | 4E 80 00 20 */	blr
.endfn cmdDelNandApp__Q33ipl5scene17NandSDCardManagerFPQ33ipl5scene10ChanAppBox

# .text:0x25B4 | 0x813A9BF0 | size: 0x54
# ipl::scene::NandSDCardManager::cmdDelSDApp(ipl::scene::ChanAppBox*)
.fn cmdDelSDApp__Q33ipl5scene17NandSDCardManagerFPQ33ipl5scene10ChanAppBox, global
/* 813A9BF0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813A9BF4 | 7C 08 02 A6 */	mflr r0
/* 813A9BF8 | 3C 63 00 0F */	addis r3, r3, 0xf
/* 813A9BFC | 38 A0 00 0D */	li r5, 0xd
/* 813A9C00 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813A9C04 | 38 00 00 00 */	li r0, 0x0
/* 813A9C08 | 38 63 85 F0 */	subi r3, r3, 0x7a10
/* 813A9C0C | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 813A9C10 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 813A9C14 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813A9C18 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 813A9C1C | 90 01 00 18 */	stw r0, 0x18(r1)
/* 813A9C20 | 80 A4 00 40 */	lwz r5, 0x40(r4)
/* 813A9C24 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813A9C28 | 80 05 06 18 */	lwz r0, 0x618(r5)
/* 813A9C2C | 90 01 00 20 */	stw r0, 0x20(r1)
/* 813A9C30 | 48 00 05 85 */	bl "push__Q33ipl7utility48Queue<Q43ipl5scene17NandSDCardManager7Command,4>FRCQ43ipl5scene17NandSDCardManager7Command"
/* 813A9C34 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813A9C38 | 7C 08 03 A6 */	mtlr r0
/* 813A9C3C | 38 21 00 30 */	addi r1, r1, 0x30
/* 813A9C40 | 4E 80 00 20 */	blr
.endfn cmdDelSDApp__Q33ipl5scene17NandSDCardManagerFPQ33ipl5scene10ChanAppBox

# .text:0x2608 | 0x813A9C44 | size: 0x58
# ipl::scene::NandSDCardManager::cmdDelNandSave(ipl::scene::SavedataBox*)
.fn cmdDelNandSave__Q33ipl5scene17NandSDCardManagerFPQ33ipl5scene11SavedataBox, global
/* 813A9C44 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813A9C48 | 7C 08 02 A6 */	mflr r0
/* 813A9C4C | 3C 63 00 0F */	addis r3, r3, 0xf
/* 813A9C50 | 38 C0 00 00 */	li r6, 0x0
/* 813A9C54 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813A9C58 | 38 00 00 0C */	li r0, 0xc
/* 813A9C5C | 38 63 85 F0 */	subi r3, r3, 0x7a10
/* 813A9C60 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 813A9C64 | 90 C1 00 0C */	stw r6, 0xc(r1)
/* 813A9C68 | 90 81 00 10 */	stw r4, 0x10(r1)
/* 813A9C6C | 80 A4 00 40 */	lwz r5, 0x40(r4)
/* 813A9C70 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813A9C74 | 80 05 00 F8 */	lwz r0, 0xf8(r5)
/* 813A9C78 | 80 A5 00 FC */	lwz r5, 0xfc(r5)
/* 813A9C7C | 90 A1 00 1C */	stw r5, 0x1c(r1)
/* 813A9C80 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 813A9C84 | 90 C1 00 20 */	stw r6, 0x20(r1)
/* 813A9C88 | 48 00 05 2D */	bl "push__Q33ipl7utility48Queue<Q43ipl5scene17NandSDCardManager7Command,4>FRCQ43ipl5scene17NandSDCardManager7Command"
/* 813A9C8C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813A9C90 | 7C 08 03 A6 */	mtlr r0
/* 813A9C94 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813A9C98 | 4E 80 00 20 */	blr
.endfn cmdDelNandSave__Q33ipl5scene17NandSDCardManagerFPQ33ipl5scene11SavedataBox

# .text:0x2660 | 0x813A9C9C | size: 0x54
# ipl::scene::NandSDCardManager::cmdDelSDSave(ipl::scene::SavedataBox*)
.fn cmdDelSDSave__Q33ipl5scene17NandSDCardManagerFPQ33ipl5scene11SavedataBox, global
/* 813A9C9C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813A9CA0 | 7C 08 02 A6 */	mflr r0
/* 813A9CA4 | 3C 63 00 0F */	addis r3, r3, 0xf
/* 813A9CA8 | 38 A0 00 0E */	li r5, 0xe
/* 813A9CAC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813A9CB0 | 38 00 00 00 */	li r0, 0x0
/* 813A9CB4 | 38 63 85 F0 */	subi r3, r3, 0x7a10
/* 813A9CB8 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 813A9CBC | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813A9CC0 | 90 81 00 10 */	stw r4, 0x10(r1)
/* 813A9CC4 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 813A9CC8 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 813A9CCC | 80 A4 00 40 */	lwz r5, 0x40(r4)
/* 813A9CD0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813A9CD4 | 80 05 01 00 */	lwz r0, 0x100(r5)
/* 813A9CD8 | 90 01 00 20 */	stw r0, 0x20(r1)
/* 813A9CDC | 48 00 04 D9 */	bl "push__Q33ipl7utility48Queue<Q43ipl5scene17NandSDCardManager7Command,4>FRCQ43ipl5scene17NandSDCardManager7Command"
/* 813A9CE0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813A9CE4 | 7C 08 03 A6 */	mtlr r0
/* 813A9CE8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813A9CEC | 4E 80 00 20 */	blr
.endfn cmdDelSDSave__Q33ipl5scene17NandSDCardManagerFPQ33ipl5scene11SavedataBox

# .text:0x26B4 | 0x813A9CF0 | size: 0x4C
# ipl::scene::NandSDCardManager::cmdCleanQueue()
.fn cmdCleanQueue__Q33ipl5scene17NandSDCardManagerFv, global
/* 813A9CF0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813A9CF4 | 7C 08 02 A6 */	mflr r0
/* 813A9CF8 | 3C 63 00 0F */	addis r3, r3, 0xf
/* 813A9CFC | 38 80 00 0F */	li r4, 0xf
/* 813A9D00 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813A9D04 | 38 00 00 00 */	li r0, 0x0
/* 813A9D08 | 38 63 85 F0 */	subi r3, r3, 0x7a10
/* 813A9D0C | 90 81 00 08 */	stw r4, 0x8(r1)
/* 813A9D10 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813A9D14 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813A9D18 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813A9D1C | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 813A9D20 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 813A9D24 | 90 01 00 20 */	stw r0, 0x20(r1)
/* 813A9D28 | 48 00 04 8D */	bl "push__Q33ipl7utility48Queue<Q43ipl5scene17NandSDCardManager7Command,4>FRCQ43ipl5scene17NandSDCardManager7Command"
/* 813A9D2C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813A9D30 | 7C 08 03 A6 */	mtlr r0
/* 813A9D34 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813A9D38 | 4E 80 00 20 */	blr
.endfn cmdCleanQueue__Q33ipl5scene17NandSDCardManagerFv

# .text:0x2700 | 0x813A9D3C | size: 0x4C
# ipl::scene::NandSDCardManager::cmdListNand()
.fn cmdListNand__Q33ipl5scene17NandSDCardManagerFv, global
/* 813A9D3C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813A9D40 | 7C 08 02 A6 */	mflr r0
/* 813A9D44 | 3C 63 00 0F */	addis r3, r3, 0xf
/* 813A9D48 | 38 80 00 10 */	li r4, 0x10
/* 813A9D4C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813A9D50 | 38 00 00 00 */	li r0, 0x0
/* 813A9D54 | 38 63 85 F0 */	subi r3, r3, 0x7a10
/* 813A9D58 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 813A9D5C | 38 81 00 08 */	addi r4, r1, 0x8
/* 813A9D60 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813A9D64 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813A9D68 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 813A9D6C | 90 01 00 18 */	stw r0, 0x18(r1)
/* 813A9D70 | 90 01 00 20 */	stw r0, 0x20(r1)
/* 813A9D74 | 48 00 04 41 */	bl "push__Q33ipl7utility48Queue<Q43ipl5scene17NandSDCardManager7Command,4>FRCQ43ipl5scene17NandSDCardManager7Command"
/* 813A9D78 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813A9D7C | 7C 08 03 A6 */	mtlr r0
/* 813A9D80 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813A9D84 | 4E 80 00 20 */	blr
.endfn cmdListNand__Q33ipl5scene17NandSDCardManagerFv

# .text:0x274C | 0x813A9D88 | size: 0x4C
# ipl::scene::NandSDCardManager::cmdListSD()
.fn cmdListSD__Q33ipl5scene17NandSDCardManagerFv, global
/* 813A9D88 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813A9D8C | 7C 08 02 A6 */	mflr r0
/* 813A9D90 | 3C 63 00 0F */	addis r3, r3, 0xf
/* 813A9D94 | 38 80 00 11 */	li r4, 0x11
/* 813A9D98 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813A9D9C | 38 00 00 00 */	li r0, 0x0
/* 813A9DA0 | 38 63 85 F0 */	subi r3, r3, 0x7a10
/* 813A9DA4 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 813A9DA8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813A9DAC | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813A9DB0 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813A9DB4 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 813A9DB8 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 813A9DBC | 90 01 00 20 */	stw r0, 0x20(r1)
/* 813A9DC0 | 48 00 03 F5 */	bl "push__Q33ipl7utility48Queue<Q43ipl5scene17NandSDCardManager7Command,4>FRCQ43ipl5scene17NandSDCardManager7Command"
/* 813A9DC4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813A9DC8 | 7C 08 03 A6 */	mtlr r0
/* 813A9DCC | 38 21 00 30 */	addi r1, r1, 0x30
/* 813A9DD0 | 4E 80 00 20 */	blr
.endfn cmdListSD__Q33ipl5scene17NandSDCardManagerFv

# .text:0x2798 | 0x813A9DD4 | size: 0x4C
# ipl::scene::NandSDCardManager::cmdExistNandApp(unsigned long long)
.fn cmdExistNandApp__Q33ipl5scene17NandSDCardManagerFUx, global
/* 813A9DD4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813A9DD8 | 7C 08 02 A6 */	mflr r0
/* 813A9DDC | 3C 63 00 0F */	addis r3, r3, 0xf
/* 813A9DE0 | 38 A0 00 12 */	li r5, 0x12
/* 813A9DE4 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813A9DE8 | 38 00 00 00 */	li r0, 0x0
/* 813A9DEC | 38 63 85 F0 */	subi r3, r3, 0x7a10
/* 813A9DF0 | 90 81 00 20 */	stw r4, 0x20(r1)
/* 813A9DF4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813A9DF8 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 813A9DFC | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813A9E00 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813A9E04 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 813A9E08 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 813A9E0C | 48 00 03 A9 */	bl "push__Q33ipl7utility48Queue<Q43ipl5scene17NandSDCardManager7Command,4>FRCQ43ipl5scene17NandSDCardManager7Command"
/* 813A9E10 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813A9E14 | 7C 08 03 A6 */	mtlr r0
/* 813A9E18 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813A9E1C | 4E 80 00 20 */	blr
.endfn cmdExistNandApp__Q33ipl5scene17NandSDCardManagerFUx

# .text:0x27E4 | 0x813A9E20 | size: 0x4C
# ipl::scene::NandSDCardManager::cmdExistNandSave(unsigned long)
.fn cmdExistNandSave__Q33ipl5scene17NandSDCardManagerFUl, global
/* 813A9E20 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813A9E24 | 7C 08 02 A6 */	mflr r0
/* 813A9E28 | 3C 63 00 0F */	addis r3, r3, 0xf
/* 813A9E2C | 38 A0 00 13 */	li r5, 0x13
/* 813A9E30 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813A9E34 | 38 00 00 00 */	li r0, 0x0
/* 813A9E38 | 38 63 85 F0 */	subi r3, r3, 0x7a10
/* 813A9E3C | 90 81 00 20 */	stw r4, 0x20(r1)
/* 813A9E40 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813A9E44 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 813A9E48 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813A9E4C | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813A9E50 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 813A9E54 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 813A9E58 | 48 00 03 5D */	bl "push__Q33ipl7utility48Queue<Q43ipl5scene17NandSDCardManager7Command,4>FRCQ43ipl5scene17NandSDCardManager7Command"
/* 813A9E5C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813A9E60 | 7C 08 03 A6 */	mtlr r0
/* 813A9E64 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813A9E68 | 4E 80 00 20 */	blr
.endfn cmdExistNandSave__Q33ipl5scene17NandSDCardManagerFUl

# .text:0x2830 | 0x813A9E6C | size: 0x4C
# ipl::scene::NandSDCardManager::cmdExistSDApp(unsigned long)
.fn cmdExistSDApp__Q33ipl5scene17NandSDCardManagerFUl, global
/* 813A9E6C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813A9E70 | 7C 08 02 A6 */	mflr r0
/* 813A9E74 | 3C 63 00 0F */	addis r3, r3, 0xf
/* 813A9E78 | 38 A0 00 14 */	li r5, 0x14
/* 813A9E7C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813A9E80 | 38 00 00 00 */	li r0, 0x0
/* 813A9E84 | 38 63 85 F0 */	subi r3, r3, 0x7a10
/* 813A9E88 | 90 81 00 20 */	stw r4, 0x20(r1)
/* 813A9E8C | 38 81 00 08 */	addi r4, r1, 0x8
/* 813A9E90 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 813A9E94 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813A9E98 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813A9E9C | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 813A9EA0 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 813A9EA4 | 48 00 03 11 */	bl "push__Q33ipl7utility48Queue<Q43ipl5scene17NandSDCardManager7Command,4>FRCQ43ipl5scene17NandSDCardManager7Command"
/* 813A9EA8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813A9EAC | 7C 08 03 A6 */	mtlr r0
/* 813A9EB0 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813A9EB4 | 4E 80 00 20 */	blr
.endfn cmdExistSDApp__Q33ipl5scene17NandSDCardManagerFUl

# .text:0x287C | 0x813A9EB8 | size: 0x4C
# ipl::scene::NandSDCardManager::cmdExistSDSave(unsigned long)
.fn cmdExistSDSave__Q33ipl5scene17NandSDCardManagerFUl, global
/* 813A9EB8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813A9EBC | 7C 08 02 A6 */	mflr r0
/* 813A9EC0 | 3C 63 00 0F */	addis r3, r3, 0xf
/* 813A9EC4 | 38 A0 00 15 */	li r5, 0x15
/* 813A9EC8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813A9ECC | 38 00 00 00 */	li r0, 0x0
/* 813A9ED0 | 38 63 85 F0 */	subi r3, r3, 0x7a10
/* 813A9ED4 | 90 81 00 20 */	stw r4, 0x20(r1)
/* 813A9ED8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813A9EDC | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 813A9EE0 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813A9EE4 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813A9EE8 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 813A9EEC | 90 01 00 18 */	stw r0, 0x18(r1)
/* 813A9EF0 | 48 00 02 C5 */	bl "push__Q33ipl7utility48Queue<Q43ipl5scene17NandSDCardManager7Command,4>FRCQ43ipl5scene17NandSDCardManager7Command"
/* 813A9EF4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813A9EF8 | 7C 08 03 A6 */	mtlr r0
/* 813A9EFC | 38 21 00 30 */	addi r1, r1, 0x30
/* 813A9F00 | 4E 80 00 20 */	blr
.endfn cmdExistSDSave__Q33ipl5scene17NandSDCardManagerFUl

# .text:0x28C8 | 0x813A9F04 | size: 0x58
.fn iplNandSDCardManager_813A9F04, global
/* 813A9F04 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813A9F08 | 7C 08 02 A6 */	mflr r0
/* 813A9F0C | 3C 63 00 0F */	addis r3, r3, 0xf
/* 813A9F10 | 38 C0 00 00 */	li r6, 0x0
/* 813A9F14 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813A9F18 | 38 00 00 18 */	li r0, 0x18
/* 813A9F1C | 38 63 85 F0 */	subi r3, r3, 0x7a10
/* 813A9F20 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 813A9F24 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 813A9F28 | 90 C1 00 10 */	stw r6, 0x10(r1)
/* 813A9F2C | 80 A4 00 40 */	lwz r5, 0x40(r4)
/* 813A9F30 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813A9F34 | 80 05 06 10 */	lwz r0, 0x610(r5)
/* 813A9F38 | 80 A5 06 14 */	lwz r5, 0x614(r5)
/* 813A9F3C | 90 A1 00 1C */	stw r5, 0x1c(r1)
/* 813A9F40 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 813A9F44 | 90 C1 00 20 */	stw r6, 0x20(r1)
/* 813A9F48 | 48 00 02 6D */	bl "push__Q33ipl7utility48Queue<Q43ipl5scene17NandSDCardManager7Command,4>FRCQ43ipl5scene17NandSDCardManager7Command"
/* 813A9F4C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813A9F50 | 7C 08 03 A6 */	mtlr r0
/* 813A9F54 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813A9F58 | 4E 80 00 20 */	blr
.endfn iplNandSDCardManager_813A9F04

# .text:0x2920 | 0x813A9F5C | size: 0x54
.fn iplNandSDCardManager_813A9F5C, global
/* 813A9F5C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813A9F60 | 7C 08 02 A6 */	mflr r0
/* 813A9F64 | 3C 63 00 0F */	addis r3, r3, 0xf
/* 813A9F68 | 38 A0 00 19 */	li r5, 0x19
/* 813A9F6C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813A9F70 | 38 00 00 00 */	li r0, 0x0
/* 813A9F74 | 38 63 85 F0 */	subi r3, r3, 0x7a10
/* 813A9F78 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 813A9F7C | 90 81 00 0C */	stw r4, 0xc(r1)
/* 813A9F80 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813A9F84 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 813A9F88 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 813A9F8C | 80 A4 00 40 */	lwz r5, 0x40(r4)
/* 813A9F90 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813A9F94 | 80 05 06 18 */	lwz r0, 0x618(r5)
/* 813A9F98 | 90 01 00 20 */	stw r0, 0x20(r1)
/* 813A9F9C | 48 00 02 19 */	bl "push__Q33ipl7utility48Queue<Q43ipl5scene17NandSDCardManager7Command,4>FRCQ43ipl5scene17NandSDCardManager7Command"
/* 813A9FA0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813A9FA4 | 7C 08 03 A6 */	mtlr r0
/* 813A9FA8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813A9FAC | 4E 80 00 20 */	blr
.endfn iplNandSDCardManager_813A9F5C

# .text:0x2974 | 0x813A9FB0 | size: 0x58
.fn iplNandSDCardManager_813A9FB0, global
/* 813A9FB0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813A9FB4 | 7C 08 02 A6 */	mflr r0
/* 813A9FB8 | 3C 63 00 0F */	addis r3, r3, 0xf
/* 813A9FBC | 38 C0 00 00 */	li r6, 0x0
/* 813A9FC0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813A9FC4 | 38 00 00 16 */	li r0, 0x16
/* 813A9FC8 | 38 63 85 F0 */	subi r3, r3, 0x7a10
/* 813A9FCC | 90 01 00 08 */	stw r0, 0x8(r1)
/* 813A9FD0 | 90 C1 00 0C */	stw r6, 0xc(r1)
/* 813A9FD4 | 90 81 00 10 */	stw r4, 0x10(r1)
/* 813A9FD8 | 80 A4 00 40 */	lwz r5, 0x40(r4)
/* 813A9FDC | 38 81 00 08 */	addi r4, r1, 0x8
/* 813A9FE0 | 80 05 00 F8 */	lwz r0, 0xf8(r5)
/* 813A9FE4 | 80 A5 00 FC */	lwz r5, 0xfc(r5)
/* 813A9FE8 | 90 A1 00 1C */	stw r5, 0x1c(r1)
/* 813A9FEC | 90 01 00 18 */	stw r0, 0x18(r1)
/* 813A9FF0 | 90 C1 00 20 */	stw r6, 0x20(r1)
/* 813A9FF4 | 48 00 01 C1 */	bl "push__Q33ipl7utility48Queue<Q43ipl5scene17NandSDCardManager7Command,4>FRCQ43ipl5scene17NandSDCardManager7Command"
/* 813A9FF8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813A9FFC | 7C 08 03 A6 */	mtlr r0
/* 813AA000 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813AA004 | 4E 80 00 20 */	blr
.endfn iplNandSDCardManager_813A9FB0

# .text:0x29CC | 0x813AA008 | size: 0x54
.fn iplNandSDCardManager_813AA008, global
/* 813AA008 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813AA00C | 7C 08 02 A6 */	mflr r0
/* 813AA010 | 3C 63 00 0F */	addis r3, r3, 0xf
/* 813AA014 | 38 A0 00 17 */	li r5, 0x17
/* 813AA018 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813AA01C | 38 00 00 00 */	li r0, 0x0
/* 813AA020 | 38 63 85 F0 */	subi r3, r3, 0x7a10
/* 813AA024 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 813AA028 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813AA02C | 90 81 00 10 */	stw r4, 0x10(r1)
/* 813AA030 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 813AA034 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 813AA038 | 80 A4 00 40 */	lwz r5, 0x40(r4)
/* 813AA03C | 38 81 00 08 */	addi r4, r1, 0x8
/* 813AA040 | 80 05 01 00 */	lwz r0, 0x100(r5)
/* 813AA044 | 90 01 00 20 */	stw r0, 0x20(r1)
/* 813AA048 | 48 00 01 6D */	bl "push__Q33ipl7utility48Queue<Q43ipl5scene17NandSDCardManager7Command,4>FRCQ43ipl5scene17NandSDCardManager7Command"
/* 813AA04C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813AA050 | 7C 08 03 A6 */	mtlr r0
/* 813AA054 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813AA058 | 4E 80 00 20 */	blr
.endfn iplNandSDCardManager_813AA008

# .text:0x2A20 | 0x813AA05C | size: 0x44
# ipl::scene::NandSDCardManager::get_free_thumbnail()
.fn get_free_thumbnail__Q33ipl5scene17NandSDCardManagerFv, global
/* 813AA05C | 38 00 00 0F */	li r0, 0xf
/* 813AA060 | 38 80 00 00 */	li r4, 0x0
/* 813AA064 | 7C 09 03 A6 */	mtctr r0
.L_813AA068:
/* 813AA068 | 7C C3 22 14 */	add r6, r3, r4
/* 813AA06C | 80 06 06 48 */	lwz r0, 0x648(r6)
/* 813AA070 | 80 A6 06 4C */	lwz r5, 0x64c(r6)
/* 813AA074 | 7C A0 03 79 */	or. r0, r5, r0
/* 813AA078 | 40 82 00 18 */	bne .L_813AA090
/* 813AA07C | 80 06 06 50 */	lwz r0, 0x650(r6)
/* 813AA080 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AA084 | 40 82 00 0C */	bne .L_813AA090
/* 813AA088 | 38 66 00 38 */	addi r3, r6, 0x38
/* 813AA08C | 4E 80 00 20 */	blr
.L_813AA090:
/* 813AA090 | 38 84 06 28 */	addi r4, r4, 0x628
/* 813AA094 | 42 00 FF D4 */	bdnz .L_813AA068
/* 813AA098 | 38 60 00 00 */	li r3, 0x0
/* 813AA09C | 4E 80 00 20 */	blr
.endfn get_free_thumbnail__Q33ipl5scene17NandSDCardManagerFv

# .text:0x2A64 | 0x813AA0A0 | size: 0x50
# ipl::scene::NandSDCardManager::get_free_banner()
.fn get_free_banner__Q33ipl5scene17NandSDCardManagerFv, global
/* 813AA0A0 | 3C 80 00 01 */	lis r4, 0x1
/* 813AA0A4 | 38 00 00 0F */	li r0, 0xf
/* 813AA0A8 | 38 A4 F1 B0 */	subi r5, r4, 0xe50
/* 813AA0AC | 38 E0 00 00 */	li r7, 0x0
/* 813AA0B0 | 7C 09 03 A6 */	mtctr r0
.L_813AA0B4:
/* 813AA0B4 | 7C 07 29 D6 */	mullw r0, r7, r5
/* 813AA0B8 | 7C C3 02 14 */	add r6, r3, r0
/* 813AA0BC | 80 06 5D 88 */	lwz r0, 0x5d88(r6)
/* 813AA0C0 | 80 86 5D 8C */	lwz r4, 0x5d8c(r6)
/* 813AA0C4 | 7C 80 03 79 */	or. r0, r4, r0
/* 813AA0C8 | 40 82 00 18 */	bne .L_813AA0E0
/* 813AA0CC | 80 06 5D 90 */	lwz r0, 0x5d90(r6)
/* 813AA0D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AA0D4 | 40 82 00 0C */	bne .L_813AA0E0
/* 813AA0D8 | 38 66 5C 90 */	addi r3, r6, 0x5c90
/* 813AA0DC | 4E 80 00 20 */	blr
.L_813AA0E0:
/* 813AA0E0 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 813AA0E4 | 42 00 FF D0 */	bdnz .L_813AA0B4
/* 813AA0E8 | 38 60 00 00 */	li r3, 0x0
/* 813AA0EC | 4E 80 00 20 */	blr
.endfn get_free_banner__Q33ipl5scene17NandSDCardManagerFv

# .text:0x2AB4 | 0x813AA0F0 | size: 0x78
# ipl::utility::Queue<ipl::scene::NandSDCardManager::GetThumbnailCmd, 15>::push(const ipl::scene::NandSDCardManager::GetThumbnailCmd&)
.fn "push__Q33ipl7utility58Queue<Q43ipl5scene17NandSDCardManager15GetThumbnailCmd,15>FRCQ43ipl5scene17NandSDCardManager15GetThumbnailCmd", global
/* 813AA0F0 | 80 A3 00 F0 */	lwz r5, 0xf0(r3)
/* 813AA0F4 | 80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 813AA0F8 | 7C 05 00 00 */	cmpw r5, r0
/* 813AA0FC | 40 82 00 0C */	bne .L_813AA108
/* 813AA100 | 38 60 00 00 */	li r3, 0x0
/* 813AA104 | 4E 80 00 20 */	blr
.L_813AA108:
/* 813AA108 | 80 A3 00 FC */	lwz r5, 0xfc(r3)
/* 813AA10C | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 813AA110 | 54 A5 20 36 */	slwi r5, r5, 4
/* 813AA114 | 80 C4 00 04 */	lwz r6, 0x4(r4)
/* 813AA118 | 7C E3 2A 14 */	add r7, r3, r5
/* 813AA11C | 80 A4 00 08 */	lwz r5, 0x8(r4)
/* 813AA120 | 90 07 00 00 */	stw r0, 0x0(r7)
/* 813AA124 | 88 04 00 0C */	lbz r0, 0xc(r4)
/* 813AA128 | 90 C7 00 04 */	stw r6, 0x4(r7)
/* 813AA12C | 90 A7 00 08 */	stw r5, 0x8(r7)
/* 813AA130 | 98 07 00 0C */	stb r0, 0xc(r7)
/* 813AA134 | 80 83 00 FC */	lwz r4, 0xfc(r3)
/* 813AA138 | 80 03 00 F0 */	lwz r0, 0xf0(r3)
/* 813AA13C | 38 84 00 01 */	addi r4, r4, 0x1
/* 813AA140 | 7C 04 00 00 */	cmpw r4, r0
/* 813AA144 | 90 83 00 FC */	stw r4, 0xfc(r3)
/* 813AA148 | 41 80 00 0C */	blt .L_813AA154
/* 813AA14C | 38 00 00 00 */	li r0, 0x0
/* 813AA150 | 90 03 00 FC */	stw r0, 0xfc(r3)
.L_813AA154:
/* 813AA154 | 80 83 00 F4 */	lwz r4, 0xf4(r3)
/* 813AA158 | 38 04 00 01 */	addi r0, r4, 0x1
/* 813AA15C | 90 03 00 F4 */	stw r0, 0xf4(r3)
/* 813AA160 | 38 60 00 01 */	li r3, 0x1
/* 813AA164 | 4E 80 00 20 */	blr
.endfn "push__Q33ipl7utility58Queue<Q43ipl5scene17NandSDCardManager15GetThumbnailCmd,15>FRCQ43ipl5scene17NandSDCardManager15GetThumbnailCmd"

# .text:0x2B2C | 0x813AA168 | size: 0x4C
# ipl::utility::Queue<ipl::scene::NandSDCardManager::GetThumbnailCmd, 15>::pop()
.fn "pop__Q33ipl7utility58Queue<Q43ipl5scene17NandSDCardManager15GetThumbnailCmd,15>Fv", global
/* 813AA168 | 80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 813AA16C | 38 A0 00 01 */	li r5, 0x1
/* 813AA170 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813AA174 | 40 82 00 0C */	bne .L_813AA180
/* 813AA178 | 38 A0 00 00 */	li r5, 0x0
/* 813AA17C | 48 00 00 30 */	b .L_813AA1AC
.L_813AA180:
/* 813AA180 | 80 83 00 F8 */	lwz r4, 0xf8(r3)
/* 813AA184 | 80 03 00 F0 */	lwz r0, 0xf0(r3)
/* 813AA188 | 38 84 00 01 */	addi r4, r4, 0x1
/* 813AA18C | 7C 04 00 00 */	cmpw r4, r0
/* 813AA190 | 90 83 00 F8 */	stw r4, 0xf8(r3)
/* 813AA194 | 41 80 00 0C */	blt .L_813AA1A0
/* 813AA198 | 38 00 00 00 */	li r0, 0x0
/* 813AA19C | 90 03 00 F8 */	stw r0, 0xf8(r3)
.L_813AA1A0:
/* 813AA1A0 | 80 83 00 F4 */	lwz r4, 0xf4(r3)
/* 813AA1A4 | 38 04 FF FF */	subi r0, r4, 0x1
/* 813AA1A8 | 90 03 00 F4 */	stw r0, 0xf4(r3)
.L_813AA1AC:
/* 813AA1AC | 7C A3 2B 78 */	mr r3, r5
/* 813AA1B0 | 4E 80 00 20 */	blr
.endfn "pop__Q33ipl7utility58Queue<Q43ipl5scene17NandSDCardManager15GetThumbnailCmd,15>Fv"

# .text:0x2B78 | 0x813AA1B4 | size: 0x88
# ipl::utility::Queue<ipl::scene::NandSDCardManager::Command, 4>::push(const ipl::scene::NandSDCardManager::Command&)
.fn "push__Q33ipl7utility48Queue<Q43ipl5scene17NandSDCardManager7Command,4>FRCQ43ipl5scene17NandSDCardManager7Command", global
/* 813AA1B4 | 80 A3 00 80 */	lwz r5, 0x80(r3)
/* 813AA1B8 | 80 03 00 84 */	lwz r0, 0x84(r3)
/* 813AA1BC | 7C 05 00 00 */	cmpw r5, r0
/* 813AA1C0 | 40 82 00 0C */	bne .L_813AA1CC
/* 813AA1C4 | 38 60 00 00 */	li r3, 0x0
/* 813AA1C8 | 4E 80 00 20 */	blr
.L_813AA1CC:
/* 813AA1CC | 80 03 00 8C */	lwz r0, 0x8c(r3)
/* 813AA1D0 | 80 C4 00 00 */	lwz r6, 0x0(r4)
/* 813AA1D4 | 54 00 28 34 */	slwi r0, r0, 5
/* 813AA1D8 | 80 A4 00 04 */	lwz r5, 0x4(r4)
/* 813AA1DC | 7C E3 02 14 */	add r7, r3, r0
/* 813AA1E0 | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 813AA1E4 | 90 C7 00 00 */	stw r6, 0x0(r7)
/* 813AA1E8 | 80 C4 00 14 */	lwz r6, 0x14(r4)
/* 813AA1EC | 90 A7 00 04 */	stw r5, 0x4(r7)
/* 813AA1F0 | 80 A4 00 10 */	lwz r5, 0x10(r4)
/* 813AA1F4 | 90 07 00 08 */	stw r0, 0x8(r7)
/* 813AA1F8 | 80 04 00 18 */	lwz r0, 0x18(r4)
/* 813AA1FC | 90 C7 00 14 */	stw r6, 0x14(r7)
/* 813AA200 | 90 A7 00 10 */	stw r5, 0x10(r7)
/* 813AA204 | 90 07 00 18 */	stw r0, 0x18(r7)
/* 813AA208 | 80 83 00 8C */	lwz r4, 0x8c(r3)
/* 813AA20C | 80 03 00 80 */	lwz r0, 0x80(r3)
/* 813AA210 | 38 84 00 01 */	addi r4, r4, 0x1
/* 813AA214 | 7C 04 00 00 */	cmpw r4, r0
/* 813AA218 | 90 83 00 8C */	stw r4, 0x8c(r3)
/* 813AA21C | 41 80 00 0C */	blt .L_813AA228
/* 813AA220 | 38 00 00 00 */	li r0, 0x0
/* 813AA224 | 90 03 00 8C */	stw r0, 0x8c(r3)
.L_813AA228:
/* 813AA228 | 80 83 00 84 */	lwz r4, 0x84(r3)
/* 813AA22C | 38 04 00 01 */	addi r0, r4, 0x1
/* 813AA230 | 90 03 00 84 */	stw r0, 0x84(r3)
/* 813AA234 | 38 60 00 01 */	li r3, 0x1
/* 813AA238 | 4E 80 00 20 */	blr
.endfn "push__Q33ipl7utility48Queue<Q43ipl5scene17NandSDCardManager7Command,4>FRCQ43ipl5scene17NandSDCardManager7Command"

# 0x8164D7C0..0x8164D950 | size: 0x190
.data
.balign 8

# .data:0x0 | 0x8164D7C0 | size: 0x7C
.obj jumptable_8164D7C0, local
	.rel calc__Q33ipl5scene17NandSDCardManagerFv, .L_813A7BEC
	.rel calc__Q33ipl5scene17NandSDCardManagerFv, .L_813A7C10
	.rel calc__Q33ipl5scene17NandSDCardManagerFv, .L_813A7BF4
	.rel calc__Q33ipl5scene17NandSDCardManagerFv, .L_813A7C18
	.rel calc__Q33ipl5scene17NandSDCardManagerFv, .L_813A7C34
	.rel calc__Q33ipl5scene17NandSDCardManagerFv, .L_813A7C3C
	.rel calc__Q33ipl5scene17NandSDCardManagerFv, .L_813A7C44
	.rel calc__Q33ipl5scene17NandSDCardManagerFv, .L_813A7C4C
	.rel calc__Q33ipl5scene17NandSDCardManagerFv, .L_813A7C54
	.rel calc__Q33ipl5scene17NandSDCardManagerFv, .L_813A7C5C
	.rel calc__Q33ipl5scene17NandSDCardManagerFv, .L_813A7C78
	.rel calc__Q33ipl5scene17NandSDCardManagerFv, .L_813A7C94
	.rel calc__Q33ipl5scene17NandSDCardManagerFv, .L_813A7D64
	.rel calc__Q33ipl5scene17NandSDCardManagerFv, .L_813A7CB0
	.rel calc__Q33ipl5scene17NandSDCardManagerFv, .L_813A7CCC
	.rel calc__Q33ipl5scene17NandSDCardManagerFv, .L_813A7CE8
	.rel calc__Q33ipl5scene17NandSDCardManagerFv, .L_813A7CF0
	.rel calc__Q33ipl5scene17NandSDCardManagerFv, .L_813A7D00
	.rel calc__Q33ipl5scene17NandSDCardManagerFv, .L_813A7CF8
	.rel calc__Q33ipl5scene17NandSDCardManagerFv, .L_813A7D08
	.rel calc__Q33ipl5scene17NandSDCardManagerFv, .L_813A7D10
	.rel calc__Q33ipl5scene17NandSDCardManagerFv, .L_813A7D18
	.rel calc__Q33ipl5scene17NandSDCardManagerFv, .L_813A7D20
	.rel calc__Q33ipl5scene17NandSDCardManagerFv, .L_813A7D28
	.rel calc__Q33ipl5scene17NandSDCardManagerFv, .L_813A7D30
	.rel calc__Q33ipl5scene17NandSDCardManagerFv, .L_813A7D38
	.rel calc__Q33ipl5scene17NandSDCardManagerFv, .L_813A7D50
	.rel calc__Q33ipl5scene17NandSDCardManagerFv, .L_813A7D58
	.rel calc__Q33ipl5scene17NandSDCardManagerFv, .L_813A7D40
	.rel calc__Q33ipl5scene17NandSDCardManagerFv, .L_813A7D48
	.rel calc__Q33ipl5scene17NandSDCardManagerFv, .L_813A7D60
.endobj jumptable_8164D7C0

# .data:0x7C | 0x8164D83C | size: 0x68
.obj jumptable_8164D83C, local
	.rel on_normal__Q33ipl5scene17NandSDCardManagerFv, .L_813A886C
	.rel on_normal__Q33ipl5scene17NandSDCardManagerFv, .L_813A8414
	.rel on_normal__Q33ipl5scene17NandSDCardManagerFv, .L_813A8428
	.rel on_normal__Q33ipl5scene17NandSDCardManagerFv, .L_813A843C
	.rel on_normal__Q33ipl5scene17NandSDCardManagerFv, .L_813A8450
	.rel on_normal__Q33ipl5scene17NandSDCardManagerFv, .L_813A8464
	.rel on_normal__Q33ipl5scene17NandSDCardManagerFv, .L_813A886C
	.rel on_normal__Q33ipl5scene17NandSDCardManagerFv, .L_813A8480
	.rel on_normal__Q33ipl5scene17NandSDCardManagerFv, .L_813A849C
	.rel on_normal__Q33ipl5scene17NandSDCardManagerFv, .L_813A84D0
	.rel on_normal__Q33ipl5scene17NandSDCardManagerFv, .L_813A84B4
	.rel on_normal__Q33ipl5scene17NandSDCardManagerFv, .L_813A8518
	.rel on_normal__Q33ipl5scene17NandSDCardManagerFv, .L_813A85CC
	.rel on_normal__Q33ipl5scene17NandSDCardManagerFv, .L_813A85A8
	.rel on_normal__Q33ipl5scene17NandSDCardManagerFv, .L_813A85F4
	.rel on_normal__Q33ipl5scene17NandSDCardManagerFv, .L_813A8618
	.rel on_normal__Q33ipl5scene17NandSDCardManagerFv, .L_813A8624
	.rel on_normal__Q33ipl5scene17NandSDCardManagerFv, .L_813A86A8
	.rel on_normal__Q33ipl5scene17NandSDCardManagerFv, .L_813A8748
	.rel on_normal__Q33ipl5scene17NandSDCardManagerFv, .L_813A8760
	.rel on_normal__Q33ipl5scene17NandSDCardManagerFv, .L_813A8778
	.rel on_normal__Q33ipl5scene17NandSDCardManagerFv, .L_813A8790
	.rel on_normal__Q33ipl5scene17NandSDCardManagerFv, .L_813A8824
	.rel on_normal__Q33ipl5scene17NandSDCardManagerFv, .L_813A884C
	.rel on_normal__Q33ipl5scene17NandSDCardManagerFv, .L_813A87A8
	.rel on_normal__Q33ipl5scene17NandSDCardManagerFv, .L_813A87D0
.endobj jumptable_8164D83C

# .data:0xE4 | 0x8164D8A4 | size: 0x5E
.obj gap_08_8164D8A4_data, global
.hidden gap_08_8164D8A4_data
	.4byte 0x5B53534B
	.4byte 0x5D204861
	.4byte 0x74656E61
	.4byte 0x4C61796F
	.4byte 0x7574202D
	.4byte 0x2025700A
	.4byte 0x004E616E
	.4byte 0x64534443
	.4byte 0x6172644D
	.4byte 0x616E6167
	.4byte 0x65723A20
	.4byte 0x25303136
	.4byte 0x6C6C7820
	.4byte 0x69732074
	.4byte 0x6D702074
	.4byte 0x69746C65
	.4byte 0x2E0A0083
	.4byte 0x54838083
	.4byte 0x6C834383
	.4byte 0x8B82CC8E
	.4byte 0xE693BE82
	.4byte 0xC98EB894
	.4byte 0x73202564
	.2byte 0x0A00
.endobj gap_08_8164D8A4_data

# .data:0x142 | 0x8164D902 | size: 0x26
.obj lbl_8164D902, global
	.string "NandSDCardManager: Clear command que\n"
.endobj lbl_8164D902

# .data:0x168 | 0x8164D928 | size: 0xD
.obj lbl_8164D928, global
	.string "NandSDWorker"
.endobj lbl_8164D928

# .data:0x175 | 0x8164D935 | size: 0x1B
.obj lbl_8164D935, global
	.4byte 0x69706C4E
	.4byte 0x616E6453
	.4byte 0x44436172
	.4byte 0x644D616E
	.4byte 0x61676572
	.4byte 0x2E637070
	.byte 0x00, 0x00, 0x00
.endobj lbl_8164D935

# 0x81694938..0x81694948 | size: 0x10
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694938 | size: 0x4
.obj lbl_81694938, global
	.float 0.0078125
.endobj lbl_81694938

# .sdata2:0x4 | 0x8169493C | size: 0x4
.obj lbl_8169493C, global
	.float 0.0009765625
.endobj lbl_8169493C

# .sdata2:0x8 | 0x81694940 | size: 0x8
.obj lbl_81694940, global
	.double 4503601774854144
.endobj lbl_81694940
