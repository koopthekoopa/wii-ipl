.include "macros.inc"
.file "HBMBase.cpp"

# 0x8108A520..0x8108A530 | size: 0x10
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x8108A520 | size: 0x10
.obj lbl_8108A520, global
	.skip 0x10
.endobj lbl_8108A520

# 0x813715A8..0x813771E0 | size: 0x5C38
.text
.balign 4

# .text:0x0 | 0x813715A8 | size: 0xC
.fn HBMBase_813715A8, local
/* 813715A8 | 7C 64 1B 78 */	mr r4, r3
/* 813715AC | 80 6D 84 10 */	lwz r3, lbl_81696450@sda21(r0)
/* 813715B0 | 48 1E A0 B8 */	b fn_8155B668
.endfn HBMBase_813715A8

# .text:0xC | 0x813715B4 | size: 0xC
.fn HBMBase_813715B4, local
/* 813715B4 | 7C 64 1B 78 */	mr r4, r3
/* 813715B8 | 80 6D 84 10 */	lwz r3, lbl_81696450@sda21(r0)
/* 813715BC | 48 1E A0 BC */	b fn_8155B678
.endfn HBMBase_813715B4

# .text:0x18 | 0x813715C0 | size: 0x2C
# getAllocatorType(const HBMDataInfo*)
.fn getAllocatorType__FPC11HBMDataInfo, global
/* 813715C0 | 80 03 00 40 */	lwz r0, 0x40(r3)
/* 813715C4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813715C8 | 41 82 00 0C */	beq .L_813715D4
/* 813715CC | 38 60 00 00 */	li r3, 0x0
/* 813715D0 | 4E 80 00 20 */	blr
.L_813715D4:
/* 813715D4 | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 813715D8 | 38 60 00 02 */	li r3, 0x2
/* 813715DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813715E0 | 4D 82 00 20 */	beqlr
/* 813715E4 | 38 60 00 01 */	li r3, 0x1
/* 813715E8 | 4E 80 00 20 */	blr
.endfn getAllocatorType__FPC11HBMDataInfo

# .text:0x44 | 0x813715EC | size: 0xC8
.fn HBMCreate, global
/* 813715EC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813715F0 | 7C 08 02 A6 */	mflr r0
/* 813715F4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813715F8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813715FC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81371600 | 7C 7E 1B 78 */	mr r30, r3
/* 81371604 | 4B FF FF BD */	bl getAllocatorType__FPC11HBMDataInfo
/* 81371608 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8137160C | 40 82 00 30 */	bne .L_8137163C
/* 81371610 | 80 7E 00 18 */	lwz r3, 0x18(r30)
/* 81371614 | 38 A0 00 00 */	li r5, 0x0
/* 81371618 | 80 9E 00 30 */	lwz r4, 0x30(r30)
/* 8137161C | 48 1E 90 59 */	bl fn_8155A674
/* 81371620 | 3F E0 81 09 */	lis r31, lbl_8108A520@ha
/* 81371624 | 7C 64 1B 78 */	mr r4, r3
/* 81371628 | 38 7F A5 20 */	addi r3, r31, lbl_8108A520@l
/* 8137162C | 38 A0 00 20 */	li r5, 0x20
/* 81371630 | 48 1E A0 59 */	bl fn_8155B688
/* 81371634 | 38 1F A5 20 */	addi r0, r31, lbl_8108A520@l
/* 81371638 | 90 0D 84 10 */	stw r0, lbl_81696450@sda21(r0)
.L_8137163C:
/* 8137163C | 7F C3 F3 78 */	mr r3, r30
/* 81371640 | 4B FF FF 81 */	bl getAllocatorType__FPC11HBMDataInfo
/* 81371644 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 81371648 | 41 82 00 30 */	beq .L_81371678
/* 8137164C | 40 80 00 10 */	bge .L_8137165C
/* 81371650 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81371654 | 40 80 00 14 */	bge .L_81371668
/* 81371658 | 48 00 00 34 */	b .L_8137168C
.L_8137165C:
/* 8137165C | 2C 03 00 03 */	cmpwi r3, 0x3
/* 81371660 | 40 80 00 2C */	bge .L_8137168C
/* 81371664 | 48 00 00 20 */	b .L_81371684
.L_81371668:
/* 81371668 | 80 1E 00 40 */	lwz r0, 0x40(r30)
/* 8137166C | 90 0D AF 68 */	stw r0, lbl_81698FA8@sda21(r0)
/* 81371670 | 90 0D 84 10 */	stw r0, lbl_81696450@sda21(r0)
/* 81371674 | 48 00 00 18 */	b .L_8137168C
.L_81371678:
/* 81371678 | 80 0D 84 10 */	lwz r0, lbl_81696450@sda21(r0)
/* 8137167C | 90 0D AF 68 */	stw r0, lbl_81698FA8@sda21(r0)
/* 81371680 | 48 00 00 0C */	b .L_8137168C
.L_81371684:
/* 81371684 | 80 0D AF 68 */	lwz r0, lbl_81698FA8@sda21(r0)
/* 81371688 | 90 0D 84 10 */	stw r0, lbl_81696450@sda21(r0)
.L_8137168C:
/* 8137168C | 7F C3 F3 78 */	mr r3, r30
/* 81371690 | 48 00 04 5D */	bl createInstance__Q210homebutton10HomeButtonFPC11HBMDataInfo
/* 81371694 | 80 6D A9 70 */	lwz r3, lbl_816989B0@sda21(r0)
/* 81371698 | 48 00 05 5D */	bl create__Q210homebutton10HomeButtonFv
/* 8137169C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813716A0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813716A4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813716A8 | 7C 08 03 A6 */	mtlr r0
/* 813716AC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813716B0 | 4E 80 00 20 */	blr
.endfn HBMCreate

# .text:0x10C | 0x813716B4 | size: 0x54
.fn HBMDelete, global
/* 813716B4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813716B8 | 7C 08 02 A6 */	mflr r0
/* 813716BC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813716C0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813716C4 | 80 6D A9 70 */	lwz r3, lbl_816989B0@sda21(r0)
/* 813716C8 | 80 0D 84 10 */	lwz r0, lbl_81696450@sda21(r0)
/* 813716CC | 83 E3 00 04 */	lwz r31, 0x4(r3)
/* 813716D0 | 90 0D AF 68 */	stw r0, lbl_81698FA8@sda21(r0)
/* 813716D4 | 48 00 04 65 */	bl deleteInstance__Q210homebutton10HomeButtonFv
/* 813716D8 | 7F E3 FB 78 */	mr r3, r31
/* 813716DC | 4B FF FE E5 */	bl getAllocatorType__FPC11HBMDataInfo
/* 813716E0 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813716E4 | 40 82 00 10 */	bne .L_813716F4
/* 813716E8 | 80 6D 84 10 */	lwz r3, lbl_81696450@sda21(r0)
/* 813716EC | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813716F0 | 48 1E 90 35 */	bl fn_8155A724
.L_813716F4:
/* 813716F4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813716F8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813716FC | 7C 08 03 A6 */	mtlr r0
/* 81371700 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81371704 | 4E 80 00 20 */	blr
.endfn HBMDelete

# .text:0x160 | 0x81371708 | size: 0x8
.fn HBMInit, global
/* 81371708 | 80 6D A9 70 */	lwz r3, lbl_816989B0@sda21(r0)
/* 8137170C | 48 00 0F A8 */	b init__Q210homebutton10HomeButtonFv
.endfn HBMInit

# .text:0x168 | 0x81371710 | size: 0x30
.fn HBMCalc, global
/* 81371710 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81371714 | 7C 08 02 A6 */	mflr r0
/* 81371718 | 7C 64 1B 78 */	mr r4, r3
/* 8137171C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81371720 | 80 6D A9 70 */	lwz r3, lbl_816989B0@sda21(r0)
/* 81371724 | 48 00 17 79 */	bl calc__Q210homebutton10HomeButtonFPC17HBMControllerData
/* 81371728 | 80 6D A9 70 */	lwz r3, lbl_816989B0@sda21(r0)
/* 8137172C | 48 00 53 DD */	bl getSelectBtnNum__Q210homebutton10HomeButtonFv
/* 81371730 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81371734 | 7C 08 03 A6 */	mtlr r0
/* 81371738 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8137173C | 4E 80 00 20 */	blr
.endfn HBMCalc

# .text:0x198 | 0x81371740 | size: 0x8
.fn HBMDraw, global
/* 81371740 | 80 6D A9 70 */	lwz r3, lbl_816989B0@sda21(r0)
/* 81371744 | 48 00 28 B4 */	b draw__Q210homebutton10HomeButtonFv
.endfn HBMDraw

# .text:0x1A0 | 0x81371748 | size: 0x8
.fn HBMGetSelectBtnNum, global
/* 81371748 | 80 6D A9 70 */	lwz r3, lbl_816989B0@sda21(r0)
/* 8137174C | 48 00 53 BC */	b getSelectBtnNum__Q210homebutton10HomeButtonFv
.endfn HBMGetSelectBtnNum

# .text:0x1A8 | 0x81371750 | size: 0xC
.fn HBMSetAdjustFlag, global
/* 81371750 | 7C 64 1B 78 */	mr r4, r3
/* 81371754 | 80 6D A9 70 */	lwz r3, lbl_816989B0@sda21(r0)
/* 81371758 | 48 00 54 10 */	b setAdjustFlag__Q210homebutton10HomeButtonFi
.endfn HBMSetAdjustFlag

# .text:0x1B4 | 0x8137175C | size: 0xF4
# homebutton::HomeButton::HomeButton(const HBMDataInfo*)
.fn __ct__Q210homebutton10HomeButtonFPC11HBMDataInfo, global
/* 8137175C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81371760 | 7C 08 02 A6 */	mflr r0
/* 81371764 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81371768 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8137176C | 48 28 7D 5D */	bl _savegpr_29
/* 81371770 | 3B E0 00 00 */	li r31, 0x0
/* 81371774 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 81371778 | 7C 7D 1B 78 */	mr r29, r3
/* 8137177C | 93 E3 02 2C */	stw r31, 0x22c(r3)
/* 81371780 | 93 E3 02 44 */	stw r31, 0x244(r3)
/* 81371784 | 38 63 02 4C */	addi r3, r3, 0x24c
/* 81371788 | 48 1B 7A 21 */	bl fn_815291A8
/* 8137178C | 38 00 FF FF */	li r0, -0x1
/* 81371790 | 38 80 00 1E */	li r4, 0x1e
/* 81371794 | 38 60 00 02 */	li r3, 0x2
/* 81371798 | 93 FD 04 48 */	stw r31, 0x448(r29)
/* 8137179C | 3B C0 00 00 */	li r30, 0x0
/* 813717A0 | 90 9D 04 4C */	stw r4, 0x44c(r29)
/* 813717A4 | 93 FD 04 50 */	stw r31, 0x450(r29)
/* 813717A8 | 9B FD 04 54 */	stb r31, 0x454(r29)
/* 813717AC | 9B FD 04 55 */	stb r31, 0x455(r29)
/* 813717B0 | 9B FD 04 56 */	stb r31, 0x456(r29)
/* 813717B4 | 90 7D 00 10 */	stw r3, 0x10(r29)
/* 813717B8 | 90 1D 00 B0 */	stw r0, 0xb0(r29)
/* 813717BC | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 813717C0 | 93 FD 00 18 */	stw r31, 0x18(r29)
/* 813717C4 | 93 FD 00 00 */	stw r31, 0x0(r29)
/* 813717C8 | 93 FD 00 64 */	stw r31, 0x64(r29)
/* 813717CC | 9B FD 00 86 */	stb r31, 0x86(r29)
/* 813717D0 | 93 FD 00 68 */	stw r31, 0x68(r29)
/* 813717D4 | 93 FD 00 6C */	stw r31, 0x6c(r29)
/* 813717D8 | 93 FD 00 70 */	stw r31, 0x70(r29)
/* 813717DC | 93 FD 00 74 */	stw r31, 0x74(r29)
/* 813717E0 | 9B FD 00 87 */	stb r31, 0x87(r29)
/* 813717E4 | 9B FD 00 88 */	stb r31, 0x88(r29)
.L_813717E8:
/* 813717E8 | 7C 7D FA 14 */	add r3, r29, r31
/* 813717EC | 38 63 04 58 */	addi r3, r3, 0x458
/* 813717F0 | 48 1B B0 F5 */	bl OSCreateAlarm
/* 813717F4 | 7C 7D FA 14 */	add r3, r29, r31
/* 813717F8 | 38 63 05 18 */	addi r3, r3, 0x518
/* 813717FC | 48 1B B0 E9 */	bl OSCreateAlarm
/* 81371800 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81371804 | 3B FF 00 30 */	addi r31, r31, 0x30
/* 81371808 | 2C 1E 00 04 */	cmpwi r30, 0x4
/* 8137180C | 41 80 FF DC */	blt .L_813717E8
/* 81371810 | 38 7D 05 D8 */	addi r3, r29, 0x5d8
/* 81371814 | 48 1B B0 D1 */	bl OSCreateAlarm
/* 81371818 | 38 00 00 00 */	li r0, 0x0
/* 8137181C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81371820 | 90 1D 06 08 */	stw r0, 0x608(r29)
/* 81371824 | 7F A3 EB 78 */	mr r3, r29
/* 81371828 | 90 1D 06 0C */	stw r0, 0x60c(r29)
/* 8137182C | 90 1D 06 10 */	stw r0, 0x610(r29)
/* 81371830 | 90 1D 06 14 */	stw r0, 0x614(r29)
/* 81371834 | 90 1D 06 18 */	stw r0, 0x618(r29)
/* 81371838 | 90 1D 06 1C */	stw r0, 0x61c(r29)
/* 8137183C | 48 28 7C D9 */	bl _restgpr_29
/* 81371840 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81371844 | 7C 08 03 A6 */	mtlr r0
/* 81371848 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8137184C | 4E 80 00 20 */	blr
.endfn __ct__Q210homebutton10HomeButtonFPC11HBMDataInfo

# .text:0x2A8 | 0x81371850 | size: 0x29C
# homebutton::HomeButton::~HomeButton()
.fn __dt__Q210homebutton10HomeButtonFv, global
/* 81371850 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81371854 | 7C 08 02 A6 */	mflr r0
/* 81371858 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8137185C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81371860 | 48 28 7C 61 */	bl _savegpr_27
/* 81371864 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81371868 | 7C 7E 1B 78 */	mr r30, r3
/* 8137186C | 7C 9F 23 78 */	mr r31, r4
/* 81371870 | 41 82 02 60 */	beq .L_81371AD0
/* 81371874 | 80 63 02 40 */	lwz r3, 0x240(r3)
/* 81371878 | 38 80 FF FF */	li r4, -0x1
/* 8137187C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81371880 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 81371884 | 7D 89 03 A6 */	mtctr r12
/* 81371888 | 4E 80 04 21 */	bctrl
/* 8137188C | 80 6D 84 10 */	lwz r3, lbl_81696450@sda21(r0)
/* 81371890 | 80 9E 02 40 */	lwz r4, 0x240(r30)
/* 81371894 | 48 1E 9D E5 */	bl fn_8155B678
/* 81371898 | 80 7E 02 2C */	lwz r3, 0x22c(r30)
/* 8137189C | 38 80 FF FF */	li r4, -0x1
/* 813718A0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813718A4 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813718A8 | 7D 89 03 A6 */	mtctr r12
/* 813718AC | 4E 80 04 21 */	bctrl
/* 813718B0 | 80 6D 84 10 */	lwz r3, lbl_81696450@sda21(r0)
/* 813718B4 | 80 9E 02 2C */	lwz r4, 0x22c(r30)
/* 813718B8 | 48 1E 9D C1 */	bl fn_8155B678
/* 813718BC | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813718C0 | 80 03 00 28 */	lwz r0, 0x28(r3)
/* 813718C4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813718C8 | 40 82 00 44 */	bne .L_8137190C
/* 813718CC | 3B 60 00 00 */	li r27, 0x0
/* 813718D0 | 3B A0 00 00 */	li r29, 0x0
.L_813718D4:
/* 813718D4 | 7F 9E EA 14 */	add r28, r30, r29
/* 813718D8 | 38 80 FF FF */	li r4, -0x1
/* 813718DC | 80 7C 02 30 */	lwz r3, 0x230(r28)
/* 813718E0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813718E4 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813718E8 | 7D 89 03 A6 */	mtctr r12
/* 813718EC | 4E 80 04 21 */	bctrl
/* 813718F0 | 80 6D 84 10 */	lwz r3, lbl_81696450@sda21(r0)
/* 813718F4 | 80 9C 02 30 */	lwz r4, 0x230(r28)
/* 813718F8 | 48 1E 9D 81 */	bl fn_8155B678
/* 813718FC | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81371900 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 81371904 | 2C 1B 00 04 */	cmpwi r27, 0x4
/* 81371908 | 41 80 FF CC */	blt .L_813718D4
.L_8137190C:
/* 8137190C | 3B 60 00 00 */	li r27, 0x0
/* 81371910 | 3B A0 00 00 */	li r29, 0x0
/* 81371914 | 48 00 00 34 */	b .L_81371948
.L_81371918:
/* 81371918 | 7F 9E EA 14 */	add r28, r30, r29
/* 8137191C | 38 80 FF FF */	li r4, -0x1
/* 81371920 | 80 7C 02 B4 */	lwz r3, 0x2b4(r28)
/* 81371924 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81371928 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8137192C | 7D 89 03 A6 */	mtctr r12
/* 81371930 | 4E 80 04 21 */	bctrl
/* 81371934 | 80 6D 84 10 */	lwz r3, lbl_81696450@sda21(r0)
/* 81371938 | 80 9C 02 B4 */	lwz r4, 0x2b4(r28)
/* 8137193C | 48 1E 9D 3D */	bl fn_8155B678
/* 81371940 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81371944 | 3B BD 00 04 */	addi r29, r29, 0x4
.L_81371948:
/* 81371948 | 80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8137194C | 7C 1B 00 00 */	cmpw r27, r0
/* 81371950 | 41 80 FF C8 */	blt .L_81371918
/* 81371954 | 3B 60 00 00 */	li r27, 0x0
/* 81371958 | 3B A0 00 00 */	li r29, 0x0
.L_8137195C:
/* 8137195C | 7F 9E EA 14 */	add r28, r30, r29
/* 81371960 | 38 80 FF FF */	li r4, -0x1
/* 81371964 | 80 7C 04 0C */	lwz r3, 0x40c(r28)
/* 81371968 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8137196C | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 81371970 | 7D 89 03 A6 */	mtctr r12
/* 81371974 | 4E 80 04 21 */	bctrl
/* 81371978 | 80 6D 84 10 */	lwz r3, lbl_81696450@sda21(r0)
/* 8137197C | 80 9C 04 0C */	lwz r4, 0x40c(r28)
/* 81371980 | 48 1E 9C F9 */	bl fn_8155B678
/* 81371984 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81371988 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 8137198C | 2C 1B 00 0F */	cmpwi r27, 0xf
/* 81371990 | 41 80 FF CC */	blt .L_8137195C
/* 81371994 | 3B 60 00 00 */	li r27, 0x0
/* 81371998 | 3B A0 00 00 */	li r29, 0x0
.L_8137199C:
/* 8137199C | 7F 9E EA 14 */	add r28, r30, r29
/* 813719A0 | 38 80 FF FF */	li r4, -0x1
/* 813719A4 | 80 7C 02 E4 */	lwz r3, 0x2e4(r28)
/* 813719A8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813719AC | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813719B0 | 7D 89 03 A6 */	mtctr r12
/* 813719B4 | 4E 80 04 21 */	bctrl
/* 813719B8 | 80 6D 84 10 */	lwz r3, lbl_81696450@sda21(r0)
/* 813719BC | 80 9C 02 E4 */	lwz r4, 0x2e4(r28)
/* 813719C0 | 48 1E 9C B9 */	bl fn_8155B678
/* 813719C4 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 813719C8 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 813719CC | 2C 1B 00 4A */	cmpwi r27, 0x4a
/* 813719D0 | 41 80 FF CC */	blt .L_8137199C
/* 813719D4 | 80 6D 84 10 */	lwz r3, lbl_81696450@sda21(r0)
/* 813719D8 | 80 9E 02 48 */	lwz r4, 0x248(r30)
/* 813719DC | 48 1E 9C 9D */	bl fn_8155B678
/* 813719E0 | 80 7E 02 44 */	lwz r3, 0x244(r30)
/* 813719E4 | 38 80 FF FF */	li r4, -0x1
/* 813719E8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813719EC | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813719F0 | 7D 89 03 A6 */	mtctr r12
/* 813719F4 | 4E 80 04 21 */	bctrl
/* 813719F8 | 80 6D 84 10 */	lwz r3, lbl_81696450@sda21(r0)
/* 813719FC | 80 9E 02 44 */	lwz r4, 0x244(r30)
/* 81371A00 | 48 1E 9C 79 */	bl fn_8155B678
/* 81371A04 | 3B 60 00 00 */	li r27, 0x0
/* 81371A08 | 3B A0 00 00 */	li r29, 0x0
.L_81371A0C:
/* 81371A0C | 7F 9E EA 14 */	add r28, r30, r29
/* 81371A10 | 38 80 FF FF */	li r4, -0x1
/* 81371A14 | 80 7C 02 A0 */	lwz r3, 0x2a0(r28)
/* 81371A18 | 48 00 5B 4D */	bl __dt__Q210homebutton10ControllerFv
/* 81371A1C | 80 6D 84 10 */	lwz r3, lbl_81696450@sda21(r0)
/* 81371A20 | 80 9C 02 A0 */	lwz r4, 0x2a0(r28)
/* 81371A24 | 48 1E 9C 55 */	bl fn_8155B678
/* 81371A28 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81371A2C | 3B BD 00 04 */	addi r29, r29, 0x4
/* 81371A30 | 2C 1B 00 04 */	cmpwi r27, 0x4
/* 81371A34 | 41 80 FF D8 */	blt .L_81371A0C
/* 81371A38 | 80 7E 02 B0 */	lwz r3, 0x2b0(r30)
/* 81371A3C | 38 80 FF FF */	li r4, -0x1
/* 81371A40 | 81 83 01 F0 */	lwz r12, 0x1f0(r3)
/* 81371A44 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 81371A48 | 7D 89 03 A6 */	mtctr r12
/* 81371A4C | 4E 80 04 21 */	bctrl
/* 81371A50 | 80 6D 84 10 */	lwz r3, lbl_81696450@sda21(r0)
/* 81371A54 | 80 9E 02 B0 */	lwz r4, 0x2b0(r30)
/* 81371A58 | 48 1E 9C 21 */	bl fn_8155B678
/* 81371A5C | 38 00 00 00 */	li r0, 0x0
/* 81371A60 | 80 9E 00 A8 */	lwz r4, 0xa8(r30)
/* 81371A64 | 90 1E 02 B0 */	stw r0, 0x2b0(r30)
/* 81371A68 | 80 6D 84 10 */	lwz r3, lbl_81696450@sda21(r0)
/* 81371A6C | 48 1E 9C 0D */	bl fn_8155B678
/* 81371A70 | 80 6D 84 10 */	lwz r3, lbl_81696450@sda21(r0)
/* 81371A74 | 80 9E 00 AC */	lwz r4, 0xac(r30)
/* 81371A78 | 48 1E 9C 01 */	bl fn_8155B678
/* 81371A7C | 3B 60 00 00 */	li r27, 0x0
/* 81371A80 | 3B A0 00 00 */	li r29, 0x0
.L_81371A84:
/* 81371A84 | 7C 7E EA 14 */	add r3, r30, r29
/* 81371A88 | 38 63 04 58 */	addi r3, r3, 0x458
/* 81371A8C | 48 1B B1 AD */	bl fn_8152CC38
/* 81371A90 | 7C 7E EA 14 */	add r3, r30, r29
/* 81371A94 | 38 63 05 18 */	addi r3, r3, 0x518
/* 81371A98 | 48 1B B1 A1 */	bl fn_8152CC38
/* 81371A9C | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81371AA0 | 3B BD 00 30 */	addi r29, r29, 0x30
/* 81371AA4 | 2C 1B 00 04 */	cmpwi r27, 0x4
/* 81371AA8 | 41 80 FF DC */	blt .L_81371A84
/* 81371AAC | 38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 81371AB0 | 48 1B B1 89 */	bl fn_8152CC38
/* 81371AB4 | 38 7E 02 4C */	addi r3, r30, 0x24c
/* 81371AB8 | 38 80 FF FF */	li r4, -0x1
/* 81371ABC | 48 1B 77 61 */	bl fn_8152921C
/* 81371AC0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81371AC4 | 40 81 00 0C */	ble .L_81371AD0
/* 81371AC8 | 7F C3 F3 78 */	mr r3, r30
/* 81371ACC | 48 28 66 19 */	bl __dl__FPv
.L_81371AD0:
/* 81371AD0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81371AD4 | 7F C3 F3 78 */	mr r3, r30
/* 81371AD8 | 48 28 7A 35 */	bl _restgpr_27
/* 81371ADC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81371AE0 | 7C 08 03 A6 */	mtlr r0
/* 81371AE4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81371AE8 | 4E 80 00 20 */	blr
.endfn __dt__Q210homebutton10HomeButtonFv

# .text:0x544 | 0x81371AEC | size: 0x4C
# homebutton::HomeButton::createInstance(const HBMDataInfo*)
.fn createInstance__Q210homebutton10HomeButtonFPC11HBMDataInfo, global
/* 81371AEC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81371AF0 | 7C 08 02 A6 */	mflr r0
/* 81371AF4 | 38 80 07 A0 */	li r4, 0x7a0
/* 81371AF8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81371AFC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81371B00 | 7C 7F 1B 78 */	mr r31, r3
/* 81371B04 | 80 6D 84 10 */	lwz r3, lbl_81696450@sda21(r0)
/* 81371B08 | 48 1E 9B 61 */	bl fn_8155B668
/* 81371B0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81371B10 | 41 82 00 14 */	beq .L_81371B24
/* 81371B14 | 41 82 00 0C */	beq .L_81371B20
/* 81371B18 | 7F E4 FB 78 */	mr r4, r31
/* 81371B1C | 4B FF FC 41 */	bl __ct__Q210homebutton10HomeButtonFPC11HBMDataInfo
.L_81371B20:
/* 81371B20 | 90 6D A9 70 */	stw r3, lbl_816989B0@sda21(r0)
.L_81371B24:
/* 81371B24 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81371B28 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81371B2C | 7C 08 03 A6 */	mtlr r0
/* 81371B30 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81371B34 | 4E 80 00 20 */	blr
.endfn createInstance__Q210homebutton10HomeButtonFPC11HBMDataInfo

# .text:0x590 | 0x81371B38 | size: 0x3C
# homebutton::HomeButton::deleteInstance()
.fn deleteInstance__Q210homebutton10HomeButtonFv, global
/* 81371B38 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81371B3C | 7C 08 02 A6 */	mflr r0
/* 81371B40 | 38 80 FF FF */	li r4, -0x1
/* 81371B44 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81371B48 | 80 6D A9 70 */	lwz r3, lbl_816989B0@sda21(r0)
/* 81371B4C | 4B FF FD 05 */	bl __dt__Q210homebutton10HomeButtonFv
/* 81371B50 | 80 6D 84 10 */	lwz r3, lbl_81696450@sda21(r0)
/* 81371B54 | 80 8D A9 70 */	lwz r4, lbl_816989B0@sda21(r0)
/* 81371B58 | 48 1E 9B 21 */	bl fn_8155B678
/* 81371B5C | 38 00 00 00 */	li r0, 0x0
/* 81371B60 | 90 0D A9 70 */	stw r0, lbl_816989B0@sda21(r0)
/* 81371B64 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81371B68 | 7C 08 03 A6 */	mtlr r0
/* 81371B6C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81371B70 | 4E 80 00 20 */	blr
.endfn deleteInstance__Q210homebutton10HomeButtonFv

# .text:0x5CC | 0x81371B74 | size: 0x80
.fn HBMBase_81371B74, local
/* 81371B74 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81371B78 | 7C 08 02 A6 */	mflr r0
/* 81371B7C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81371B80 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81371B84 | 48 28 79 41 */	bl _savegpr_28
/* 81371B88 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81371B8C | 7C 7C 1B 78 */	mr r28, r3
/* 81371B90 | 7C 9D 23 78 */	mr r29, r4
/* 81371B94 | 7C BE 2B 78 */	mr r30, r5
/* 81371B98 | 41 82 00 44 */	beq .L_81371BDC
/* 81371B9C | 80 6D 84 10 */	lwz r3, lbl_81696450@sda21(r0)
/* 81371BA0 | 38 80 00 A4 */	li r4, 0xa4
/* 81371BA4 | 48 1E 9A C5 */	bl fn_8155B668
/* 81371BA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81371BAC | 7C 7F 1B 78 */	mr r31, r3
/* 81371BB0 | 41 82 00 10 */	beq .L_81371BC0
/* 81371BB4 | 38 00 00 00 */	li r0, 0x0
/* 81371BB8 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 81371BBC | 90 03 00 04 */	stw r0, 0x4(r3)
.L_81371BC0:
/* 81371BC0 | 7F E3 FB 78 */	mr r3, r31
/* 81371BC4 | 7F A4 EB 78 */	mr r4, r29
/* 81371BC8 | 7F C5 F3 78 */	mr r5, r30
/* 81371BCC | 48 1B 87 BD */	bl fn_8152A388
/* 81371BD0 | 7F 83 E3 78 */	mr r3, r28
/* 81371BD4 | 7F E4 FB 78 */	mr r4, r31
/* 81371BD8 | 48 1B 89 1D */	bl fn_8152A4F4
.L_81371BDC:
/* 81371BDC | 39 61 00 20 */	addi r11, r1, 0x20
/* 81371BE0 | 48 28 79 31 */	bl _restgpr_28
/* 81371BE4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81371BE8 | 7C 08 03 A6 */	mtlr r0
/* 81371BEC | 38 21 00 20 */	addi r1, r1, 0x20
/* 81371BF0 | 4E 80 00 20 */	blr
.endfn HBMBase_81371B74

# .text:0x64C | 0x81371BF4 | size: 0x890
# homebutton::HomeButton::create()
.fn create__Q210homebutton10HomeButtonFv, global
/* 81371BF4 | 94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 81371BF8 | 7C 08 02 A6 */	mflr r0
/* 81371BFC | 90 01 00 E4 */	stw r0, 0xe4(r1)
/* 81371C00 | DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 81371C04 | F3 E1 00 D8 */	psq_st f31, 0xd8(r1), 0, qr0
/* 81371C08 | 39 61 00 D0 */	addi r11, r1, 0xd0
/* 81371C0C | 48 28 78 99 */	bl _savegpr_20
/* 81371C10 | 38 00 00 00 */	li r0, 0x0
/* 81371C14 | 3F 80 81 64 */	lis r28, lbl_81644B40@ha
/* 81371C18 | 98 03 00 8B */	stb r0, 0x8b(r3)
/* 81371C1C | 7C 79 1B 78 */	mr r25, r3
/* 81371C20 | 3B 9C 4B 40 */	addi r28, r28, lbl_81644B40@l
/* 81371C24 | 98 03 00 8C */	stb r0, 0x8c(r3)
/* 81371C28 | 98 03 00 8D */	stb r0, 0x8d(r3)
/* 81371C2C | 48 00 08 ED */	bl set_config__Q210homebutton10HomeButtonFv
/* 81371C30 | 7F 23 CB 78 */	mr r3, r25
/* 81371C34 | 48 00 09 F5 */	bl set_text__Q210homebutton10HomeButtonFv
/* 81371C38 | 80 6D 84 10 */	lwz r3, lbl_81696450@sda21(r0)
/* 81371C3C | 38 80 00 1C */	li r4, 0x1c
/* 81371C40 | 48 1E 9A 29 */	bl fn_8155B668
/* 81371C44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81371C48 | 41 82 00 08 */	beq .L_81371C50
/* 81371C4C | 48 1B 87 A9 */	bl fn_8152A3F4
.L_81371C50:
/* 81371C50 | 90 79 02 40 */	stw r3, 0x240(r25)
/* 81371C54 | 38 AD 84 AC */	li r5, lbl_816964EC@sda21
/* 81371C58 | 80 99 00 04 */	lwz r4, 0x4(r25)
/* 81371C5C | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 81371C60 | 4B FF FF 15 */	bl HBMBase_81371B74
/* 81371C64 | 80 99 00 04 */	lwz r4, 0x4(r25)
/* 81371C68 | 38 AD 84 AC */	li r5, lbl_816964EC@sda21
/* 81371C6C | 80 79 02 40 */	lwz r3, 0x240(r25)
/* 81371C70 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 81371C74 | 4B FF FF 01 */	bl HBMBase_81371B74
/* 81371C78 | 80 6D 84 10 */	lwz r3, lbl_81696450@sda21(r0)
/* 81371C7C | 38 80 00 8C */	li r4, 0x8c
/* 81371C80 | 48 1E 99 E9 */	bl fn_8155B668
/* 81371C84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81371C88 | 7C 75 1B 78 */	mr r21, r3
/* 81371C8C | 41 82 00 0C */	beq .L_81371C98
/* 81371C90 | 48 1B 86 A5 */	bl fn_8152A334
/* 81371C94 | 7C 75 1B 78 */	mr r21, r3
.L_81371C98:
/* 81371C98 | 80 B9 00 04 */	lwz r5, 0x4(r25)
/* 81371C9C | 7E A3 AB 78 */	mr r3, r21
/* 81371CA0 | 38 9C 09 AC */	addi r4, r28, 0x9ac
/* 81371CA4 | 80 A5 00 08 */	lwz r5, 0x8(r5)
/* 81371CA8 | 48 1B 86 A1 */	bl fn_8152A348
/* 81371CAC | 80 79 02 40 */	lwz r3, 0x240(r25)
/* 81371CB0 | 7E A4 AB 78 */	mr r4, r21
/* 81371CB4 | 48 1B 88 ED */	bl fn_8152A5A0
/* 81371CB8 | 80 79 00 04 */	lwz r3, 0x4(r25)
/* 81371CBC | 80 03 00 28 */	lwz r0, 0x28(r3)
/* 81371CC0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81371CC4 | 40 82 00 84 */	bne .L_81371D48
/* 81371CC8 | 3A BC 00 34 */	addi r21, r28, 0x34
/* 81371CCC | 3A 80 00 00 */	li r20, 0x0
/* 81371CD0 | 3A E0 00 00 */	li r23, 0x0
.L_81371CD4:
/* 81371CD4 | 80 6D 84 10 */	lwz r3, lbl_81696450@sda21(r0)
/* 81371CD8 | 38 80 00 24 */	li r4, 0x24
/* 81371CDC | 48 1E 99 8D */	bl fn_8155B668
/* 81371CE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81371CE4 | 41 82 00 14 */	beq .L_81371CF8
/* 81371CE8 | 41 82 00 08 */	beq .L_81371CF0
/* 81371CEC | 48 1A E3 69 */	bl fn_81520054
.L_81371CF0:
/* 81371CF0 | 7C 99 BA 14 */	add r4, r25, r23
/* 81371CF4 | 90 64 02 30 */	stw r3, 0x230(r4)
.L_81371CF8:
/* 81371CF8 | 80 79 02 40 */	lwz r3, 0x240(r25)
/* 81371CFC | 38 80 00 00 */	li r4, 0x0
/* 81371D00 | 7C B5 B8 2E */	lwzx r5, r21, r23
/* 81371D04 | 38 C0 00 00 */	li r6, 0x0
/* 81371D08 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81371D0C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81371D10 | 7D 89 03 A6 */	mtctr r12
/* 81371D14 | 4E 80 04 21 */	bctrl
/* 81371D18 | 7C B9 BA 14 */	add r5, r25, r23
/* 81371D1C | 7C 64 1B 78 */	mr r4, r3
/* 81371D20 | 80 65 02 30 */	lwz r3, 0x230(r5)
/* 81371D24 | 80 B9 02 40 */	lwz r5, 0x240(r25)
/* 81371D28 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81371D2C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81371D30 | 7D 89 03 A6 */	mtctr r12
/* 81371D34 | 4E 80 04 21 */	bctrl
/* 81371D38 | 3A 94 00 01 */	addi r20, r20, 0x1
/* 81371D3C | 3A F7 00 04 */	addi r23, r23, 0x4
/* 81371D40 | 2C 14 00 04 */	cmpwi r20, 0x4
/* 81371D44 | 41 80 FF 90 */	blt .L_81371CD4
.L_81371D48:
/* 81371D48 | 80 6D 84 10 */	lwz r3, lbl_81696450@sda21(r0)
/* 81371D4C | 38 80 00 24 */	li r4, 0x24
/* 81371D50 | 48 1E 99 19 */	bl fn_8155B668
/* 81371D54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81371D58 | 41 82 00 10 */	beq .L_81371D68
/* 81371D5C | 41 82 00 08 */	beq .L_81371D64
/* 81371D60 | 48 1A E2 F5 */	bl fn_81520054
.L_81371D64:
/* 81371D64 | 90 79 02 2C */	stw r3, 0x22c(r25)
.L_81371D68:
/* 81371D68 | 80 79 02 40 */	lwz r3, 0x240(r25)
/* 81371D6C | 38 80 00 00 */	li r4, 0x0
/* 81371D70 | 80 B9 00 A8 */	lwz r5, 0xa8(r25)
/* 81371D74 | 38 C0 00 00 */	li r6, 0x0
/* 81371D78 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81371D7C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81371D80 | 7D 89 03 A6 */	mtctr r12
/* 81371D84 | 4E 80 04 21 */	bctrl
/* 81371D88 | 7C 64 1B 78 */	mr r4, r3
/* 81371D8C | 80 79 02 2C */	lwz r3, 0x22c(r25)
/* 81371D90 | 80 B9 02 40 */	lwz r5, 0x240(r25)
/* 81371D94 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81371D98 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81371D9C | 7D 89 03 A6 */	mtctr r12
/* 81371DA0 | 4E 80 04 21 */	bctrl
/* 81371DA4 | 3F E0 81 61 */	lis r31, scAnmTable__10homebutton@ha
/* 81371DA8 | CB E2 82 E0 */	lfd f31, lbl_816946E0@sda21(r0)
/* 81371DAC | 3B FF F3 78 */	addi r31, r31, scAnmTable__10homebutton@l
/* 81371DB0 | 3B DC 01 74 */	addi r30, r28, 0x174
/* 81371DB4 | 3B BC 01 1C */	addi r29, r28, 0x11c
/* 81371DB8 | 3B 40 00 00 */	li r26, 0x0
/* 81371DBC | 3A E0 00 00 */	li r23, 0x0
/* 81371DC0 | 3B 00 00 00 */	li r24, 0x0
/* 81371DC4 | 3E A0 43 30 */	lis r21, 0x4330
/* 81371DC8 | 48 00 01 60 */	b .L_81371F28
.L_81371DCC:
/* 81371DCC | 80 99 00 AC */	lwz r4, 0xac(r25)
/* 81371DD0 | 38 61 00 58 */	addi r3, r1, 0x58
/* 81371DD4 | 48 29 05 31 */	bl strcpy
/* 81371DD8 | 7E 9F BA 14 */	add r20, r31, r23
/* 81371DDC | 38 61 00 58 */	addi r3, r1, 0x58
/* 81371DE0 | 80 14 00 04 */	lwz r0, 0x4(r20)
/* 81371DE4 | 54 00 10 3A */	slwi r0, r0, 2
/* 81371DE8 | 7C 9E 00 2E */	lwzx r4, r30, r0
/* 81371DEC | 48 29 06 1D */	bl strcat
/* 81371DF0 | 80 79 02 40 */	lwz r3, 0x240(r25)
/* 81371DF4 | 38 A1 00 58 */	addi r5, r1, 0x58
/* 81371DF8 | 38 80 00 00 */	li r4, 0x0
/* 81371DFC | 38 C0 00 00 */	li r6, 0x0
/* 81371E00 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81371E04 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81371E08 | 7D 89 03 A6 */	mtctr r12
/* 81371E0C | 4E 80 04 21 */	bctrl
/* 81371E10 | 7C 76 1B 78 */	mr r22, r3
/* 81371E14 | 80 6D 84 10 */	lwz r3, lbl_81696450@sda21(r0)
/* 81371E18 | 38 80 00 28 */	li r4, 0x28
/* 81371E1C | 48 1E 98 4D */	bl fn_8155B668
/* 81371E20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81371E24 | 41 82 00 14 */	beq .L_81371E38
/* 81371E28 | 41 82 00 08 */	beq .L_81371E30
/* 81371E2C | 48 00 53 B5 */	bl __ct__Q210homebutton18GroupAnmControllerFv
.L_81371E30:
/* 81371E30 | 7C 99 C2 14 */	add r4, r25, r24
/* 81371E34 | 90 64 02 B4 */	stw r3, 0x2b4(r4)
.L_81371E38:
/* 81371E38 | 80 79 02 2C */	lwz r3, 0x22c(r25)
/* 81371E3C | 7E C4 B3 78 */	mr r4, r22
/* 81371E40 | 7F 79 C2 14 */	add r27, r25, r24
/* 81371E44 | 80 B9 02 40 */	lwz r5, 0x240(r25)
/* 81371E48 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81371E4C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81371E50 | 7D 89 03 A6 */	mtctr r12
/* 81371E54 | 4E 80 04 21 */	bctrl
/* 81371E58 | 80 9B 02 B4 */	lwz r4, 0x2b4(r27)
/* 81371E5C | 80 14 00 00 */	lwz r0, 0x0(r20)
/* 81371E60 | 90 64 00 24 */	stw r3, 0x24(r4)
/* 81371E64 | 54 00 10 3A */	slwi r0, r0, 2
/* 81371E68 | 80 79 02 2C */	lwz r3, 0x22c(r25)
/* 81371E6C | 7C 9D 00 2E */	lwzx r4, r29, r0
/* 81371E70 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81371E74 | 48 1A DF C9 */	bl fn_8151FE3C
/* 81371E78 | 80 9B 02 B4 */	lwz r4, 0x2b4(r27)
/* 81371E7C | 90 64 00 20 */	stw r3, 0x20(r4)
/* 81371E80 | 80 7B 02 B4 */	lwz r3, 0x2b4(r27)
/* 81371E84 | 80 63 00 20 */	lwz r3, 0x20(r3)
/* 81371E88 | 3A 83 00 0C */	addi r20, r3, 0xc
/* 81371E8C | 7E 83 A3 78 */	mr r3, r20
/* 81371E90 | 4B FF 7F A5 */	bl "GetBeginIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"
/* 81371E94 | 7C 76 1B 78 */	mr r22, r3
/* 81371E98 | 48 00 00 28 */	b .L_81371EC0
.L_81371E9C:
/* 81371E9C | 80 76 00 08 */	lwz r3, 0x8(r22)
/* 81371EA0 | 38 A0 00 00 */	li r5, 0x0
/* 81371EA4 | 80 9B 02 B4 */	lwz r4, 0x2b4(r27)
/* 81371EA8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81371EAC | 80 84 00 24 */	lwz r4, 0x24(r4)
/* 81371EB0 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 81371EB4 | 7D 89 03 A6 */	mtctr r12
/* 81371EB8 | 4E 80 04 21 */	bctrl
/* 81371EBC | 82 D6 00 00 */	lwz r22, 0x0(r22)
.L_81371EC0:
/* 81371EC0 | 7E 83 A3 78 */	mr r3, r20
/* 81371EC4 | 4B FF 7F 79 */	bl "GetEndIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"
/* 81371EC8 | 90 61 00 18 */	stw r3, 0x18(r1)
/* 81371ECC | 38 61 00 1C */	addi r3, r1, 0x1c
/* 81371ED0 | 38 81 00 18 */	addi r4, r1, 0x18
/* 81371ED4 | 92 C1 00 1C */	stw r22, 0x1c(r1)
/* 81371ED8 | 4B FF 7F 6D */	bl "__ne__Q24nw4r2utFQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8IteratorQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8Iterator"
/* 81371EDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81371EE0 | 40 82 FF BC */	bne .L_81371E9C
/* 81371EE4 | 80 7B 02 B4 */	lwz r3, 0x2b4(r27)
/* 81371EE8 | 80 63 00 24 */	lwz r3, 0x24(r3)
/* 81371EEC | 48 1B 78 61 */	bl fn_8152974C
/* 81371EF0 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81371EF4 | 80 B9 00 04 */	lwz r5, 0x4(r25)
/* 81371EF8 | 90 01 00 9C */	stw r0, 0x9c(r1)
/* 81371EFC | 38 80 00 00 */	li r4, 0x0
/* 81371F00 | 80 7B 02 B4 */	lwz r3, 0x2b4(r27)
/* 81371F04 | 92 A1 00 98 */	stw r21, 0x98(r1)
/* 81371F08 | C0 42 82 D8 */	lfs f2, lbl_816946D8@sda21(r0)
/* 81371F0C | C8 01 00 98 */	lfd f0, 0x98(r1)
/* 81371F10 | C0 65 00 34 */	lfs f3, 0x34(r5)
/* 81371F14 | EC 20 F8 28 */	fsubs f1, f0, f31
/* 81371F18 | 48 00 5C F9 */	bl init__Q210homebutton15FrameControllerFifff
/* 81371F1C | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 81371F20 | 3A F7 00 08 */	addi r23, r23, 0x8
/* 81371F24 | 3B 18 00 04 */	addi r24, r24, 0x4
.L_81371F28:
/* 81371F28 | 80 19 00 0C */	lwz r0, 0xc(r25)
/* 81371F2C | 7C 1A 00 00 */	cmpw r26, r0
/* 81371F30 | 41 80 FE 9C */	blt .L_81371DCC
/* 81371F34 | 3F A0 81 61 */	lis r29, scGroupAnmTable__10homebutton@ha
/* 81371F38 | CB E2 82 E0 */	lfd f31, lbl_816946E0@sda21(r0)
/* 81371F3C | 3B BD F3 D8 */	addi r29, r29, scGroupAnmTable__10homebutton@l
/* 81371F40 | 3B DC 05 88 */	addi r30, r28, 0x588
/* 81371F44 | 3B FC 07 1C */	addi r31, r28, 0x71c
/* 81371F48 | 3B 40 00 00 */	li r26, 0x0
/* 81371F4C | 3B 00 00 00 */	li r24, 0x0
/* 81371F50 | 3A E0 00 00 */	li r23, 0x0
/* 81371F54 | 3E A0 43 30 */	lis r21, 0x4330
.L_81371F58:
/* 81371F58 | 80 99 00 AC */	lwz r4, 0xac(r25)
/* 81371F5C | 38 61 00 58 */	addi r3, r1, 0x58
/* 81371F60 | 48 29 03 A5 */	bl strcpy
/* 81371F64 | 7E 9D C2 14 */	add r20, r29, r24
/* 81371F68 | 38 61 00 58 */	addi r3, r1, 0x58
/* 81371F6C | 80 14 00 04 */	lwz r0, 0x4(r20)
/* 81371F70 | 54 00 10 3A */	slwi r0, r0, 2
/* 81371F74 | 7C 9E 00 2E */	lwzx r4, r30, r0
/* 81371F78 | 48 29 04 91 */	bl strcat
/* 81371F7C | 80 79 02 40 */	lwz r3, 0x240(r25)
/* 81371F80 | 38 A1 00 58 */	addi r5, r1, 0x58
/* 81371F84 | 38 80 00 00 */	li r4, 0x0
/* 81371F88 | 38 C0 00 00 */	li r6, 0x0
/* 81371F8C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81371F90 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81371F94 | 7D 89 03 A6 */	mtctr r12
/* 81371F98 | 4E 80 04 21 */	bctrl
/* 81371F9C | 7C 76 1B 78 */	mr r22, r3
/* 81371FA0 | 80 6D 84 10 */	lwz r3, lbl_81696450@sda21(r0)
/* 81371FA4 | 38 80 00 28 */	li r4, 0x28
/* 81371FA8 | 48 1E 96 C1 */	bl fn_8155B668
/* 81371FAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81371FB0 | 41 82 00 14 */	beq .L_81371FC4
/* 81371FB4 | 41 82 00 08 */	beq .L_81371FBC
/* 81371FB8 | 48 00 52 29 */	bl __ct__Q210homebutton18GroupAnmControllerFv
.L_81371FBC:
/* 81371FBC | 7C 99 BA 14 */	add r4, r25, r23
/* 81371FC0 | 90 64 02 E4 */	stw r3, 0x2e4(r4)
.L_81371FC4:
/* 81371FC4 | 80 79 02 2C */	lwz r3, 0x22c(r25)
/* 81371FC8 | 7E C4 B3 78 */	mr r4, r22
/* 81371FCC | 7F 79 BA 14 */	add r27, r25, r23
/* 81371FD0 | 80 B9 02 40 */	lwz r5, 0x240(r25)
/* 81371FD4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81371FD8 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81371FDC | 7D 89 03 A6 */	mtctr r12
/* 81371FE0 | 4E 80 04 21 */	bctrl
/* 81371FE4 | 80 9B 02 E4 */	lwz r4, 0x2e4(r27)
/* 81371FE8 | 80 14 00 00 */	lwz r0, 0x0(r20)
/* 81371FEC | 90 64 00 24 */	stw r3, 0x24(r4)
/* 81371FF0 | 54 00 10 3A */	slwi r0, r0, 2
/* 81371FF4 | 80 79 02 2C */	lwz r3, 0x22c(r25)
/* 81371FF8 | 7C 9F 00 2E */	lwzx r4, r31, r0
/* 81371FFC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81372000 | 48 1A DE 3D */	bl fn_8151FE3C
/* 81372004 | 80 9B 02 E4 */	lwz r4, 0x2e4(r27)
/* 81372008 | 90 64 00 20 */	stw r3, 0x20(r4)
/* 8137200C | 80 7B 02 E4 */	lwz r3, 0x2e4(r27)
/* 81372010 | 80 63 00 20 */	lwz r3, 0x20(r3)
/* 81372014 | 3A 83 00 0C */	addi r20, r3, 0xc
/* 81372018 | 7E 83 A3 78 */	mr r3, r20
/* 8137201C | 4B FF 7E 19 */	bl "GetBeginIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"
/* 81372020 | 7C 76 1B 78 */	mr r22, r3
/* 81372024 | 48 00 00 28 */	b .L_8137204C
.L_81372028:
/* 81372028 | 80 76 00 08 */	lwz r3, 0x8(r22)
/* 8137202C | 38 A0 00 00 */	li r5, 0x0
/* 81372030 | 80 9B 02 E4 */	lwz r4, 0x2e4(r27)
/* 81372034 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81372038 | 80 84 00 24 */	lwz r4, 0x24(r4)
/* 8137203C | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 81372040 | 7D 89 03 A6 */	mtctr r12
/* 81372044 | 4E 80 04 21 */	bctrl
/* 81372048 | 82 D6 00 00 */	lwz r22, 0x0(r22)
.L_8137204C:
/* 8137204C | 7E 83 A3 78 */	mr r3, r20
/* 81372050 | 4B FF 7D ED */	bl "GetEndIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"
/* 81372054 | 90 61 00 10 */	stw r3, 0x10(r1)
/* 81372058 | 38 61 00 14 */	addi r3, r1, 0x14
/* 8137205C | 38 81 00 10 */	addi r4, r1, 0x10
/* 81372060 | 92 C1 00 14 */	stw r22, 0x14(r1)
/* 81372064 | 4B FF 7D E1 */	bl "__ne__Q24nw4r2utFQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8IteratorQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8Iterator"
/* 81372068 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8137206C | 40 82 FF BC */	bne .L_81372028
/* 81372070 | 80 7B 02 E4 */	lwz r3, 0x2e4(r27)
/* 81372074 | 80 63 00 24 */	lwz r3, 0x24(r3)
/* 81372078 | 48 1B 76 D5 */	bl fn_8152974C
/* 8137207C | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81372080 | 80 B9 00 04 */	lwz r5, 0x4(r25)
/* 81372084 | 90 01 00 9C */	stw r0, 0x9c(r1)
/* 81372088 | 38 80 00 00 */	li r4, 0x0
/* 8137208C | 80 7B 02 E4 */	lwz r3, 0x2e4(r27)
/* 81372090 | 92 A1 00 98 */	stw r21, 0x98(r1)
/* 81372094 | C0 42 82 D8 */	lfs f2, lbl_816946D8@sda21(r0)
/* 81372098 | C8 01 00 98 */	lfd f0, 0x98(r1)
/* 8137209C | C0 65 00 34 */	lfs f3, 0x34(r5)
/* 813720A0 | EC 20 F8 28 */	fsubs f1, f0, f31
/* 813720A4 | 48 00 5B 6D */	bl init__Q210homebutton15FrameControllerFifff
/* 813720A8 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 813720AC | 3A F7 00 04 */	addi r23, r23, 0x4
/* 813720B0 | 2C 1A 00 4A */	cmpwi r26, 0x4a
/* 813720B4 | 3B 18 00 08 */	addi r24, r24, 0x8
/* 813720B8 | 41 80 FE A0 */	blt .L_81371F58
/* 813720BC | CB E2 82 E0 */	lfd f31, lbl_816946E0@sda21(r0)
/* 813720C0 | 3B FC 02 A4 */	addi r31, r28, 0x2a4
/* 813720C4 | 3B 1C 03 9C */	addi r24, r28, 0x39c
/* 813720C8 | 3B 60 00 00 */	li r27, 0x0
/* 813720CC | 3B 40 00 00 */	li r26, 0x0
/* 813720D0 | 3E E0 43 30 */	lis r23, 0x4330
.L_813720D4:
/* 813720D4 | 80 99 00 AC */	lwz r4, 0xac(r25)
/* 813720D8 | 38 61 00 58 */	addi r3, r1, 0x58
/* 813720DC | 48 29 02 29 */	bl strcpy
/* 813720E0 | 7C 9F D0 2E */	lwzx r4, r31, r26
/* 813720E4 | 38 61 00 58 */	addi r3, r1, 0x58
/* 813720E8 | 48 29 03 21 */	bl strcat
/* 813720EC | 80 79 02 40 */	lwz r3, 0x240(r25)
/* 813720F0 | 38 A1 00 58 */	addi r5, r1, 0x58
/* 813720F4 | 38 80 00 00 */	li r4, 0x0
/* 813720F8 | 38 C0 00 00 */	li r6, 0x0
/* 813720FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81372100 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81372104 | 7D 89 03 A6 */	mtctr r12
/* 81372108 | 4E 80 04 21 */	bctrl
/* 8137210C | 7C 74 1B 78 */	mr r20, r3
/* 81372110 | 80 6D 84 10 */	lwz r3, lbl_81696450@sda21(r0)
/* 81372114 | 38 80 00 28 */	li r4, 0x28
/* 81372118 | 48 1E 95 51 */	bl fn_8155B668
/* 8137211C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81372120 | 41 82 00 14 */	beq .L_81372134
/* 81372124 | 41 82 00 08 */	beq .L_8137212C
/* 81372128 | 48 00 50 B9 */	bl __ct__Q210homebutton18GroupAnmControllerFv
.L_8137212C:
/* 8137212C | 7C 99 D2 14 */	add r4, r25, r26
/* 81372130 | 90 64 04 0C */	stw r3, 0x40c(r4)
.L_81372134:
/* 81372134 | 80 79 02 2C */	lwz r3, 0x22c(r25)
/* 81372138 | 7E 84 A3 78 */	mr r4, r20
/* 8137213C | 7E B9 D2 14 */	add r21, r25, r26
/* 81372140 | 80 B9 02 40 */	lwz r5, 0x240(r25)
/* 81372144 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81372148 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8137214C | 7D 89 03 A6 */	mtctr r12
/* 81372150 | 4E 80 04 21 */	bctrl
/* 81372154 | 80 95 04 0C */	lwz r4, 0x40c(r21)
/* 81372158 | 90 64 00 24 */	stw r3, 0x24(r4)
/* 8137215C | 80 79 02 2C */	lwz r3, 0x22c(r25)
/* 81372160 | 7C 98 D0 2E */	lwzx r4, r24, r26
/* 81372164 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81372168 | 48 1A DC D5 */	bl fn_8151FE3C
/* 8137216C | 80 95 04 0C */	lwz r4, 0x40c(r21)
/* 81372170 | 90 64 00 20 */	stw r3, 0x20(r4)
/* 81372174 | 80 75 04 0C */	lwz r3, 0x40c(r21)
/* 81372178 | 80 63 00 20 */	lwz r3, 0x20(r3)
/* 8137217C | 3A 83 00 0C */	addi r20, r3, 0xc
/* 81372180 | 7E 83 A3 78 */	mr r3, r20
/* 81372184 | 4B FF 7C B1 */	bl "GetBeginIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"
/* 81372188 | 7C 76 1B 78 */	mr r22, r3
/* 8137218C | 48 00 00 28 */	b .L_813721B4
.L_81372190:
/* 81372190 | 80 76 00 08 */	lwz r3, 0x8(r22)
/* 81372194 | 38 A0 00 00 */	li r5, 0x0
/* 81372198 | 80 95 04 0C */	lwz r4, 0x40c(r21)
/* 8137219C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813721A0 | 80 84 00 24 */	lwz r4, 0x24(r4)
/* 813721A4 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813721A8 | 7D 89 03 A6 */	mtctr r12
/* 813721AC | 4E 80 04 21 */	bctrl
/* 813721B0 | 82 D6 00 00 */	lwz r22, 0x0(r22)
.L_813721B4:
/* 813721B4 | 7E 83 A3 78 */	mr r3, r20
/* 813721B8 | 4B FF 7C 85 */	bl "GetEndIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"
/* 813721BC | 90 61 00 08 */	stw r3, 0x8(r1)
/* 813721C0 | 38 61 00 0C */	addi r3, r1, 0xc
/* 813721C4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813721C8 | 92 C1 00 0C */	stw r22, 0xc(r1)
/* 813721CC | 4B FF 7C 79 */	bl "__ne__Q24nw4r2utFQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8IteratorQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8Iterator"
/* 813721D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813721D4 | 40 82 FF BC */	bne .L_81372190
/* 813721D8 | 7E 99 D2 14 */	add r20, r25, r26
/* 813721DC | 80 74 04 0C */	lwz r3, 0x40c(r20)
/* 813721E0 | 80 63 00 24 */	lwz r3, 0x24(r3)
/* 813721E4 | 48 1B 75 69 */	bl fn_8152974C
/* 813721E8 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 813721EC | 80 B9 00 04 */	lwz r5, 0x4(r25)
/* 813721F0 | 90 01 00 9C */	stw r0, 0x9c(r1)
/* 813721F4 | 38 80 00 00 */	li r4, 0x0
/* 813721F8 | 80 74 04 0C */	lwz r3, 0x40c(r20)
/* 813721FC | 92 E1 00 98 */	stw r23, 0x98(r1)
/* 81372200 | C0 42 82 D8 */	lfs f2, lbl_816946D8@sda21(r0)
/* 81372204 | C8 01 00 98 */	lfd f0, 0x98(r1)
/* 81372208 | C0 65 00 34 */	lfs f3, 0x34(r5)
/* 8137220C | EC 20 F8 28 */	fsubs f1, f0, f31
/* 81372210 | 48 00 5A 01 */	bl init__Q210homebutton15FrameControllerFifff
/* 81372214 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81372218 | 3B 5A 00 04 */	addi r26, r26, 0x4
/* 8137221C | 2C 1B 00 0F */	cmpwi r27, 0xf
/* 81372220 | 41 80 FE B4 */	blt .L_813720D4
/* 81372224 | 80 6D 84 10 */	lwz r3, lbl_81696450@sda21(r0)
/* 81372228 | 38 80 00 0C */	li r4, 0xc
/* 8137222C | 48 1E 94 3D */	bl fn_8155B668
/* 81372230 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81372234 | 41 82 00 1C */	beq .L_81372250
/* 81372238 | 41 82 00 14 */	beq .L_8137224C
/* 8137223C | 3C 80 81 64 */	lis r4, __vt__Q210homebutton22HomeButtonEventHandler@ha
/* 81372240 | 38 84 55 E0 */	addi r4, r4, __vt__Q210homebutton22HomeButtonEventHandler@l
/* 81372244 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 81372248 | 93 23 00 08 */	stw r25, 0x8(r3)
.L_8137224C:
/* 8137224C | 90 79 02 48 */	stw r3, 0x248(r25)
.L_81372250:
/* 81372250 | 80 6D 84 10 */	lwz r3, lbl_81696450@sda21(r0)
/* 81372254 | 38 80 00 2C */	li r4, 0x2c
/* 81372258 | 48 1E 94 11 */	bl fn_8155B668
/* 8137225C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81372260 | 7C 75 1B 78 */	mr r21, r3
/* 81372264 | 41 82 00 74 */	beq .L_813722D8
/* 81372268 | 41 82 00 6C */	beq .L_813722D4
/* 8137226C | 80 19 02 48 */	lwz r0, 0x248(r25)
/* 81372270 | 3C 80 81 64 */	lis r4, __vt__Q310homebutton3gui7Manager@ha
/* 81372274 | 80 AD 84 10 */	lwz r5, lbl_81696450@sda21(r0)
/* 81372278 | 38 84 56 FC */	addi r4, r4, __vt__Q310homebutton3gui7Manager@l
/* 8137227C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81372280 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 81372284 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 81372288 | 90 A3 00 14 */	stw r5, 0x14(r3)
/* 8137228C | 41 82 00 1C */	beq .L_813722A8
/* 81372290 | 7C 03 03 78 */	mr r3, r0
/* 81372294 | 7E A4 AB 78 */	mr r4, r21
/* 81372298 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8137229C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813722A0 | 7D 89 03 A6 */	mtctr r12
/* 813722A4 | 4E 80 04 21 */	bctrl
.L_813722A8:
/* 813722A8 | 38 75 00 08 */	addi r3, r21, 0x8
/* 813722AC | 38 80 00 08 */	li r4, 0x8
/* 813722B0 | 48 19 FD AD */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813722B4 | 3C 80 81 64 */	lis r4, __vt__Q310homebutton3gui11PaneManager@ha
/* 813722B8 | 38 00 00 00 */	li r0, 0x0
/* 813722BC | 38 84 56 A8 */	addi r4, r4, __vt__Q310homebutton3gui11PaneManager@l
/* 813722C0 | 38 75 00 18 */	addi r3, r21, 0x18
/* 813722C4 | 90 95 00 00 */	stw r4, 0x0(r21)
/* 813722C8 | 38 80 00 08 */	li r4, 0x8
/* 813722CC | 90 15 00 24 */	stw r0, 0x24(r21)
/* 813722D0 | 48 19 FD 8D */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
.L_813722D4:
/* 813722D4 | 92 B9 02 44 */	stw r21, 0x244(r25)
.L_813722D8:
/* 813722D8 | 80 79 02 44 */	lwz r3, 0x244(r25)
/* 813722DC | 80 99 02 2C */	lwz r4, 0x22c(r25)
/* 813722E0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813722E4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813722E8 | 7D 89 03 A6 */	mtctr r12
/* 813722EC | 4E 80 04 21 */	bctrl
/* 813722F0 | 80 79 02 44 */	lwz r3, 0x244(r25)
/* 813722F4 | 38 80 00 00 */	li r4, 0x0
/* 813722F8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813722FC | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81372300 | 7D 89 03 A6 */	mtctr r12
/* 81372304 | 4E 80 04 21 */	bctrl
/* 81372308 | 3A DC 00 6C */	addi r22, r28, 0x6c
/* 8137230C | 3A 80 00 00 */	li r20, 0x0
/* 81372310 | 3B 40 00 00 */	li r26, 0x0
/* 81372314 | 48 00 00 58 */	b .L_8137236C
.L_81372318:
/* 81372318 | 80 79 02 2C */	lwz r3, 0x22c(r25)
/* 8137231C | 38 A0 00 01 */	li r5, 0x1
/* 81372320 | 7C 96 D0 2E */	lwzx r4, r22, r26
/* 81372324 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81372328 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8137232C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81372330 | 7D 89 03 A6 */	mtctr r12
/* 81372334 | 4E 80 04 21 */	bctrl
/* 81372338 | 7C 64 1B 78 */	mr r4, r3
/* 8137233C | 80 79 02 44 */	lwz r3, 0x244(r25)
/* 81372340 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81372344 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 81372348 | 7D 89 03 A6 */	mtctr r12
/* 8137234C | 4E 80 04 21 */	bctrl
/* 81372350 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81372354 | 38 80 00 01 */	li r4, 0x1
/* 81372358 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8137235C | 7D 89 03 A6 */	mtctr r12
/* 81372360 | 4E 80 04 21 */	bctrl
/* 81372364 | 3A 94 00 01 */	addi r20, r20, 0x1
/* 81372368 | 3B 5A 00 04 */	addi r26, r26, 0x4
.L_8137236C:
/* 8137236C | 80 19 00 08 */	lwz r0, 0x8(r25)
/* 81372370 | 7C 14 00 00 */	cmpw r20, r0
/* 81372374 | 41 80 FF A4 */	blt .L_81372318
/* 81372378 | 80 6D 84 10 */	lwz r3, lbl_81696450@sda21(r0)
/* 8137237C | 38 80 01 F8 */	li r4, 0x1f8
/* 81372380 | 48 1E 92 E9 */	bl fn_8155B668
/* 81372384 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81372388 | 41 82 00 18 */	beq .L_813723A0
/* 8137238C | 41 82 00 10 */	beq .L_8137239C
/* 81372390 | 80 99 00 04 */	lwz r4, 0x4(r25)
/* 81372394 | 80 84 00 0C */	lwz r4, 0xc(r4)
/* 81372398 | 48 00 6D B1 */	bl __ct__Q210homebutton9RemoteSpkFPv
.L_8137239C:
/* 8137239C | 90 79 02 B0 */	stw r3, 0x2b0(r25)
.L_813723A0:
/* 813723A0 | 3A 80 00 00 */	li r20, 0x0
/* 813723A4 | 3B 40 00 00 */	li r26, 0x0
.L_813723A8:
/* 813723A8 | 80 6D 84 10 */	lwz r3, lbl_81696450@sda21(r0)
/* 813723AC | 38 80 00 48 */	li r4, 0x48
/* 813723B0 | 48 1E 92 B9 */	bl fn_8155B668
/* 813723B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813723B8 | 41 82 00 1C */	beq .L_813723D4
/* 813723BC | 41 82 00 10 */	beq .L_813723CC
/* 813723C0 | 80 B9 02 B0 */	lwz r5, 0x2b0(r25)
/* 813723C4 | 7E 84 A3 78 */	mr r4, r20
/* 813723C8 | 48 00 50 D1 */	bl __ct__Q210homebutton10ControllerFiPQ210homebutton9RemoteSpk
.L_813723CC:
/* 813723CC | 7C 99 D2 14 */	add r4, r25, r26
/* 813723D0 | 90 64 02 A0 */	stw r3, 0x2a0(r4)
.L_813723D4:
/* 813723D4 | 3A 94 00 01 */	addi r20, r20, 0x1
/* 813723D8 | 3B 5A 00 04 */	addi r26, r26, 0x4
/* 813723DC | 2C 14 00 04 */	cmpwi r20, 0x4
/* 813723E0 | 41 80 FF C8 */	blt .L_813723A8
/* 813723E4 | 80 79 02 44 */	lwz r3, 0x244(r25)
/* 813723E8 | 38 99 02 4C */	addi r4, r25, 0x24c
/* 813723EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813723F0 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 813723F4 | 7D 89 03 A6 */	mtctr r12
/* 813723F8 | 4E 80 04 21 */	bctrl
/* 813723FC | 80 B9 00 04 */	lwz r5, 0x4(r25)
/* 81372400 | 38 79 02 90 */	addi r3, r25, 0x290
/* 81372404 | C0 22 82 DC */	lfs f1, lbl_816946DC@sda21(r0)
/* 81372408 | 38 81 00 20 */	addi r4, r1, 0x20
/* 8137240C | C0 05 00 38 */	lfs f0, 0x38(r5)
/* 81372410 | EC 01 00 24 */	fdivs f0, f1, f0
/* 81372414 | D0 21 00 24 */	stfs f1, 0x24(r1)
/* 81372418 | D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8137241C | 4B FF 89 BD */	bl __as__Q34nw4r4math4VEC2FRCQ34nw4r4math4VEC2
/* 81372420 | 88 99 00 87 */	lbz r4, 0x87(r25)
/* 81372424 | 38 61 00 28 */	addi r3, r1, 0x28
/* 81372428 | 88 19 02 9C */	lbz r0, 0x29c(r25)
/* 8137242C | 50 80 2E B4 */	rlwimi r0, r4, 5, 26, 26
/* 81372430 | 98 19 02 9C */	stb r0, 0x29c(r25)
/* 81372434 | 48 1C E9 FD */	bl fn_81540E30
/* 81372438 | 38 00 00 06 */	li r0, 0x6
/* 8137243C | 38 B9 02 4C */	addi r5, r25, 0x24c
/* 81372440 | 38 81 00 24 */	addi r4, r1, 0x24
/* 81372444 | 7C 09 03 A6 */	mtctr r0
.L_81372448:
/* 81372448 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 8137244C | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 81372450 | 90 65 00 04 */	stw r3, 0x4(r5)
/* 81372454 | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 81372458 | 42 00 FF F0 */	bdnz .L_81372448
/* 8137245C | 7F 23 CB 78 */	mr r3, r25
/* 81372460 | 48 00 04 C9 */	bl init_msg__Q210homebutton10HomeButtonFv
/* 81372464 | E3 E1 00 D8 */	psq_l f31, 0xd8(r1), 0, qr0
/* 81372468 | 39 61 00 D0 */	addi r11, r1, 0xd0
/* 8137246C | CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 81372470 | 48 28 70 81 */	bl _restgpr_20
/* 81372474 | 80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 81372478 | 7C 08 03 A6 */	mtlr r0
/* 8137247C | 38 21 00 E0 */	addi r1, r1, 0xe0
/* 81372480 | 4E 80 00 20 */	blr
.endfn create__Q210homebutton10HomeButtonFv

# .text:0xEDC | 0x81372484 | size: 0x40
# homebutton::gui::Interface::~Interface()
.fn __dt__Q310homebutton3gui9InterfaceFv, global
/* 81372484 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81372488 | 7C 08 02 A6 */	mflr r0
/* 8137248C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81372490 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81372494 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81372498 | 7C 7F 1B 78 */	mr r31, r3
/* 8137249C | 41 82 00 10 */	beq .L_813724AC
/* 813724A0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813724A4 | 40 81 00 08 */	ble .L_813724AC
/* 813724A8 | 48 28 5C 3D */	bl __dl__FPv
.L_813724AC:
/* 813724AC | 7F E3 FB 78 */	mr r3, r31
/* 813724B0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813724B4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813724B8 | 7C 08 03 A6 */	mtlr r0
/* 813724BC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813724C0 | 4E 80 00 20 */	blr
.endfn __dt__Q310homebutton3gui9InterfaceFv

# .text:0xF1C | 0x813724C4 | size: 0x8
# homebutton::gui::EventHandler::setManager(homebutton::gui::Manager*)
.fn setManager__Q310homebutton3gui12EventHandlerFPQ310homebutton3gui7Manager, global
/* 813724C4 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 813724C8 | 4E 80 00 20 */	blr
.endfn setManager__Q310homebutton3gui12EventHandlerFPQ310homebutton3gui7Manager

# .text:0xF24 | 0x813724CC | size: 0x8
# homebutton::gui::Component::setTriggerTarget(bool)
.fn setTriggerTarget__Q310homebutton3gui9ComponentFb, global
/* 813724CC | 98 83 00 24 */	stb r4, 0x24(r3)
/* 813724D0 | 4E 80 00 20 */	blr
.endfn setTriggerTarget__Q310homebutton3gui9ComponentFb

# .text:0xF2C | 0x813724D4 | size: 0x8
# homebutton::gui::PaneManager::setDrawInfo(const nw4r::lyt::DrawInfo*)
.fn setDrawInfo__Q310homebutton3gui11PaneManagerFPCQ34nw4r3lyt8DrawInfo, global
/* 813724D4 | 90 83 00 24 */	stw r4, 0x24(r3)
/* 813724D8 | 4E 80 00 20 */	blr
.endfn setDrawInfo__Q310homebutton3gui11PaneManagerFPCQ34nw4r3lyt8DrawInfo

# .text:0xF34 | 0x813724DC | size: 0xC
# nw4r::math::VEC2::VEC2(float, float)
.fn __ct__Q34nw4r4math4VEC2Fff, global
/* 813724DC | D0 23 00 00 */	stfs f1, 0x0(r3)
/* 813724E0 | D0 43 00 04 */	stfs f2, 0x4(r3)
/* 813724E4 | 4E 80 00 20 */	blr
.endfn __ct__Q34nw4r4math4VEC2Fff

# .text:0xF40 | 0x813724E8 | size: 0x30
# homebutton::get_comma_length(char*)
.fn get_comma_length__10homebuttonFPc, local
/* 813724E8 | 38 A0 00 00 */	li r5, 0x0
/* 813724EC | 48 00 00 18 */	b .L_81372504
.L_813724F0:
/* 813724F0 | 7C 80 07 74 */	extsb r0, r4
/* 813724F4 | 2C 00 00 2C */	cmpwi r0, 0x2c
/* 813724F8 | 41 82 00 18 */	beq .L_81372510
/* 813724FC | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81372500 | 38 63 00 01 */	addi r3, r3, 0x1
.L_81372504:
/* 81372504 | 88 83 00 00 */	lbz r4, 0x0(r3)
/* 81372508 | 7C 80 07 75 */	extsb. r0, r4
/* 8137250C | 40 82 FF E4 */	bne .L_813724F0
.L_81372510:
/* 81372510 | 7C A3 2B 78 */	mr r3, r5
/* 81372514 | 4E 80 00 20 */	blr
.endfn get_comma_length__10homebuttonFPc

# .text:0xF70 | 0x81372518 | size: 0x110
# homebutton::HomeButton::set_config()
.fn set_config__Q210homebutton10HomeButtonFv, global
/* 81372518 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8137251C | 7C 08 02 A6 */	mflr r0
/* 81372520 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81372524 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81372528 | 48 28 6F 9D */	bl _savegpr_28
/* 8137252C | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 81372530 | 7C 7E 1B 78 */	mr r30, r3
/* 81372534 | 83 E4 00 14 */	lwz r31, 0x14(r4)
/* 81372538 | 7F E3 FB 78 */	mr r3, r31
/* 8137253C | 4B FF FF AD */	bl get_comma_length__10homebuttonFPc
/* 81372540 | 7C 7C 1B 78 */	mr r28, r3
/* 81372544 | 80 6D 84 10 */	lwz r3, lbl_81696450@sda21(r0)
/* 81372548 | 38 9C 00 01 */	addi r4, r28, 0x1
/* 8137254C | 48 1E 91 1D */	bl fn_8155B668
/* 81372550 | 90 7E 00 A8 */	stw r3, 0xa8(r30)
/* 81372554 | 7F E4 FB 78 */	mr r4, r31
/* 81372558 | 7F 85 E3 78 */	mr r5, r28
/* 8137255C | 48 28 FE 69 */	bl strncpy
/* 81372560 | 80 9E 00 A8 */	lwz r4, 0xa8(r30)
/* 81372564 | 7C 7C FA 14 */	add r3, r28, r31
/* 81372568 | 3B A0 00 00 */	li r29, 0x0
/* 8137256C | 3B E3 00 01 */	addi r31, r3, 0x1
/* 81372570 | 7F A4 E1 AE */	stbx r29, r4, r28
/* 81372574 | 7F E3 FB 78 */	mr r3, r31
/* 81372578 | 4B FF FF 71 */	bl get_comma_length__10homebuttonFPc
/* 8137257C | 7C 7C 1B 78 */	mr r28, r3
/* 81372580 | 80 6D 84 10 */	lwz r3, lbl_81696450@sda21(r0)
/* 81372584 | 38 9C 00 01 */	addi r4, r28, 0x1
/* 81372588 | 48 1E 90 E1 */	bl fn_8155B668
/* 8137258C | 90 7E 00 AC */	stw r3, 0xac(r30)
/* 81372590 | 7F E4 FB 78 */	mr r4, r31
/* 81372594 | 7F 85 E3 78 */	mr r5, r28
/* 81372598 | 48 28 FE 2D */	bl strncpy
/* 8137259C | 80 9E 00 AC */	lwz r4, 0xac(r30)
/* 813725A0 | 7F A3 EB 78 */	mr r3, r29
/* 813725A4 | 7F FF E2 14 */	add r31, r31, r28
/* 813725A8 | 38 E0 00 00 */	li r7, 0x0
/* 813725AC | 7F A4 E1 AE */	stbx r29, r4, r28
/* 813725B0 | 39 00 00 00 */	li r8, 0x0
/* 813725B4 | 38 A0 00 01 */	li r5, 0x1
/* 813725B8 | 48 00 00 3C */	b .L_813725F4
.L_813725BC:
/* 813725BC | 7C C0 07 74 */	extsb r0, r6
/* 813725C0 | 2C 00 00 2C */	cmpwi r0, 0x2c
/* 813725C4 | 40 82 00 2C */	bne .L_813725F0
/* 813725C8 | 88 04 00 01 */	lbz r0, 0x1(r4)
/* 813725CC | 2C 00 00 31 */	cmpwi r0, 0x31
/* 813725D0 | 40 82 00 10 */	bne .L_813725E0
/* 813725D4 | 7C 9E 1A 14 */	add r4, r30, r3
/* 813725D8 | 90 A4 00 98 */	stw r5, 0x98(r4)
/* 813725DC | 48 00 00 0C */	b .L_813725E8
.L_813725E0:
/* 813725E0 | 7C 9E 1A 14 */	add r4, r30, r3
/* 813725E4 | 93 A4 00 98 */	stw r29, 0x98(r4)
.L_813725E8:
/* 813725E8 | 39 08 00 01 */	addi r8, r8, 0x1
/* 813725EC | 38 63 00 04 */	addi r3, r3, 0x4
.L_813725F0:
/* 813725F0 | 38 E7 00 01 */	addi r7, r7, 0x1
.L_813725F4:
/* 813725F4 | 7C DF 38 AE */	lbzx r6, r31, r7
/* 813725F8 | 7C 9F 3A 14 */	add r4, r31, r7
/* 813725FC | 7C C0 07 75 */	extsb. r0, r6
/* 81372600 | 40 82 FF BC */	bne .L_813725BC
/* 81372604 | 1C 08 00 03 */	mulli r0, r8, 0x3
/* 81372608 | 91 1E 00 08 */	stw r8, 0x8(r30)
/* 8137260C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81372610 | 90 1E 00 0C */	stw r0, 0xc(r30)
/* 81372614 | 48 28 6E FD */	bl _restgpr_28
/* 81372618 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8137261C | 7C 08 03 A6 */	mtlr r0
/* 81372620 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81372624 | 4E 80 00 20 */	blr
.endfn set_config__Q210homebutton10HomeButtonFv

# .text:0x1080 | 0x81372628 | size: 0x8C
# homebutton::HomeButton::set_text()
.fn set_text__Q210homebutton10HomeButtonFv, global
/* 81372628 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 8137262C | 39 20 00 00 */	li r9, 0x0
/* 81372630 | 7D 28 4B 78 */	mr r8, r9
/* 81372634 | 38 A0 00 00 */	li r5, 0x0
/* 81372638 | 81 84 00 10 */	lwz r12, 0x10(r4)
/* 8137263C | 39 40 00 00 */	li r10, 0x0
/* 81372640 | 38 80 00 00 */	li r4, 0x0
/* 81372644 | 39 60 00 00 */	li r11, 0x0
/* 81372648 | 48 00 00 5C */	b .L_813726A4
.L_8137264C:
/* 8137264C | 28 00 00 22 */	cmplwi r0, 0x22
/* 81372650 | 40 82 00 4C */	bne .L_8137269C
/* 81372654 | 2C 0B 00 00 */	cmpwi r11, 0x0
/* 81372658 | 7D 0C 2B 2E */	sthx r8, r12, r5
/* 8137265C | 40 82 00 3C */	bne .L_81372698
/* 81372660 | 1C 0A 00 18 */	mulli r0, r10, 0x18
/* 81372664 | 38 C9 00 01 */	addi r6, r9, 0x1
/* 81372668 | 39 4A 00 01 */	addi r10, r10, 0x1
/* 8137266C | 54 C6 08 3C */	slwi r6, r6, 1
/* 81372670 | 7C 03 02 14 */	add r0, r3, r0
/* 81372674 | 2C 0A 00 0A */	cmpwi r10, 0xa
/* 81372678 | 7C EC 32 14 */	add r7, r12, r6
/* 8137267C | 39 60 00 01 */	li r11, 0x1
/* 81372680 | 7C C4 02 14 */	add r6, r4, r0
/* 81372684 | 90 E6 00 B4 */	stw r7, 0xb4(r6)
/* 81372688 | 40 82 00 14 */	bne .L_8137269C
/* 8137268C | 39 40 00 00 */	li r10, 0x0
/* 81372690 | 38 84 00 04 */	addi r4, r4, 0x4
/* 81372694 | 48 00 00 08 */	b .L_8137269C
.L_81372698:
/* 81372698 | 39 60 00 00 */	li r11, 0x0
.L_8137269C:
/* 8137269C | 39 29 00 01 */	addi r9, r9, 0x1
/* 813726A0 | 38 A5 00 02 */	addi r5, r5, 0x2
.L_813726A4:
/* 813726A4 | 7C 0C 2A 2E */	lhzx r0, r12, r5
/* 813726A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813726AC | 40 82 FF A0 */	bne .L_8137264C
/* 813726B0 | 4E 80 00 20 */	blr
.endfn set_text__Q210homebutton10HomeButtonFv

# .text:0x110C | 0x813726B4 | size: 0x274
# homebutton::HomeButton::init()
.fn init__Q210homebutton10HomeButtonFv, global
/* 813726B4 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813726B8 | 7C 08 02 A6 */	mflr r0
/* 813726BC | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813726C0 | DB E1 00 30 */	stfd f31, 0x30(r1)
/* 813726C4 | F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 813726C8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813726CC | 48 28 6D F1 */	bl _savegpr_26
/* 813726D0 | 88 03 00 8B */	lbz r0, 0x8b(r3)
/* 813726D4 | 3F 80 81 64 */	lis r28, lbl_81644B40@ha
/* 813726D8 | 7C 7F 1B 78 */	mr r31, r3
/* 813726DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813726E0 | 3B 9C 4B 40 */	addi r28, r28, lbl_81644B40@l
/* 813726E4 | 40 82 02 24 */	bne .L_81372908
/* 813726E8 | 80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 813726EC | 38 80 00 00 */	li r4, 0x0
/* 813726F0 | 38 A0 00 01 */	li r5, 0x1
/* 813726F4 | 98 83 00 8C */	stb r4, 0x8c(r3)
/* 813726F8 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813726FC | 98 A3 00 8B */	stb r5, 0x8b(r3)
/* 81372700 | 98 83 00 8D */	stb r4, 0x8d(r3)
/* 81372704 | 98 83 00 8F */	stb r4, 0x8f(r3)
/* 81372708 | 41 82 00 08 */	beq .L_81372710
/* 8137270C | 98 83 00 8E */	stb r4, 0x8e(r3)
.L_81372710:
/* 81372710 | 38 60 00 00 */	li r3, 0x0
/* 81372714 | 48 1D 25 A9 */	bl GXSetCullMode
/* 81372718 | 38 00 00 0E */	li r0, 0xe
/* 8137271C | 38 A0 00 00 */	li r5, 0x0
/* 81372720 | 38 60 00 00 */	li r3, 0x0
/* 81372724 | 7C 09 03 A6 */	mtctr r0
.L_81372728:
/* 81372728 | 7C 9F 1A 14 */	add r4, r31, r3
/* 8137272C | 38 63 00 04 */	addi r3, r3, 0x4
/* 81372730 | 90 A4 00 1C */	stw r5, 0x1c(r4)
/* 81372734 | 42 00 FF F4 */	bdnz .L_81372728
/* 81372738 | 3B A0 00 00 */	li r29, 0x0
/* 8137273C | 7F E3 FB 78 */	mr r3, r31
/* 81372740 | 93 BF 00 10 */	stw r29, 0x10(r31)
/* 81372744 | 93 BF 00 00 */	stw r29, 0x0(r31)
/* 81372748 | 9B BF 00 88 */	stb r29, 0x88(r31)
/* 8137274C | 48 00 28 E9 */	bl updateTrigPane__Q210homebutton10HomeButtonFv
/* 81372750 | 80 7F 02 44 */	lwz r3, 0x244(r31)
/* 81372754 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81372758 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8137275C | 7D 89 03 A6 */	mtctr r12
/* 81372760 | 4E 80 04 21 */	bctrl
/* 81372764 | 7F E3 FB 78 */	mr r3, r31
/* 81372768 | 38 80 FF FF */	li r4, -0x1
/* 8137276C | 48 00 40 79 */	bl reset_guiManager__Q210homebutton10HomeButtonFi
/* 81372770 | C3 E2 82 D8 */	lfs f31, lbl_816946D8@sda21(r0)
/* 81372774 | 3B 40 00 00 */	li r26, 0x0
/* 81372778 | 3B C0 00 00 */	li r30, 0x0
.L_8137277C:
/* 8137277C | 2C 1A 00 04 */	cmpwi r26, 0x4
/* 81372780 | 40 80 00 44 */	bge .L_813727C4
/* 81372784 | 7F 7F F2 14 */	add r27, r31, r30
/* 81372788 | 93 BB 00 54 */	stw r29, 0x54(r27)
/* 8137278C | 80 7B 02 A0 */	lwz r3, 0x2a0(r27)
/* 81372790 | 48 00 50 C9 */	bl setInValidPos__Q210homebutton10ControllerFv
/* 81372794 | 80 7B 02 A0 */	lwz r3, 0x2a0(r27)
/* 81372798 | 48 00 50 AD */	bl clrKpadButton__Q210homebutton10ControllerFv
/* 8137279C | 80 7B 02 A0 */	lwz r3, 0x2a0(r27)
/* 813727A0 | 48 00 50 D9 */	bl disconnect__Q210homebutton10ControllerFv
/* 813727A4 | 80 7B 02 A0 */	lwz r3, 0x2a0(r27)
/* 813727A8 | 48 00 54 4D */	bl clrBatteryFlag__Q210homebutton10ControllerFv
/* 813727AC | 80 7B 02 A0 */	lwz r3, 0x2a0(r27)
/* 813727B0 | 48 00 4E 41 */	bl initCallback__Q210homebutton10ControllerFv
/* 813727B4 | 80 7B 02 A0 */	lwz r3, 0x2a0(r27)
/* 813727B8 | 48 00 51 C1 */	bl initSound__Q210homebutton10ControllerFv
/* 813727BC | D3 FB 02 08 */	stfs f31, 0x208(r27)
/* 813727C0 | D3 FB 02 18 */	stfs f31, 0x218(r27)
.L_813727C4:
/* 813727C4 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 813727C8 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 813727CC | 2C 1A 00 04 */	cmpwi r26, 0x4
/* 813727D0 | 41 80 FF AC */	blt .L_8137277C
/* 813727D4 | 80 9F 02 2C */	lwz r4, 0x22c(r31)
/* 813727D8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813727DC | 48 1A DF 3D */	bl fn_81520718
/* 813727E0 | C0 01 00 08 */	lfs f0, 0x8(r1)
/* 813727E4 | 38 A0 00 01 */	li r5, 0x1
/* 813727E8 | 80 7F 02 2C */	lwz r3, 0x22c(r31)
/* 813727EC | D0 1F 02 80 */	stfs f0, 0x280(r31)
/* 813727F0 | C0 01 00 0C */	lfs f0, 0xc(r1)
/* 813727F4 | D0 1F 02 84 */	stfs f0, 0x284(r31)
/* 813727F8 | C0 01 00 10 */	lfs f0, 0x10(r1)
/* 813727FC | D0 1F 02 88 */	stfs f0, 0x288(r31)
/* 81372800 | C0 01 00 14 */	lfs f0, 0x14(r1)
/* 81372804 | D0 1F 02 8C */	stfs f0, 0x28c(r31)
/* 81372808 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8137280C | 80 9C 07 DC */	lwz r4, 0x7dc(r28)
/* 81372810 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81372814 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81372818 | 7D 89 03 A6 */	mtctr r12
/* 8137281C | 4E 80 04 21 */	bctrl
/* 81372820 | 38 80 00 00 */	li r4, 0x0
/* 81372824 | 4B FD 1B F1 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 81372828 | 3B BC 08 4C */	addi r29, r28, 0x84c
/* 8137282C | 3B 60 00 02 */	li r27, 0x2
/* 81372830 | 3B C0 00 08 */	li r30, 0x8
.L_81372834:
/* 81372834 | 80 7F 02 2C */	lwz r3, 0x22c(r31)
/* 81372838 | 38 A0 00 01 */	li r5, 0x1
/* 8137283C | 7C 9D F0 2E */	lwzx r4, r29, r30
/* 81372840 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81372844 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81372848 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8137284C | 7D 89 03 A6 */	mtctr r12
/* 81372850 | 4E 80 04 21 */	bctrl
/* 81372854 | 38 80 00 00 */	li r4, 0x0
/* 81372858 | 4B FD 1B BD */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 8137285C | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81372860 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 81372864 | 2C 1B 00 07 */	cmpwi r27, 0x7
/* 81372868 | 41 80 FF CC */	blt .L_81372834
/* 8137286C | 3B BC 08 90 */	addi r29, r28, 0x890
/* 81372870 | 3B 60 00 00 */	li r27, 0x0
/* 81372874 | 3B C0 00 00 */	li r30, 0x0
.L_81372878:
/* 81372878 | 80 7F 02 2C */	lwz r3, 0x22c(r31)
/* 8137287C | 38 A0 00 01 */	li r5, 0x1
/* 81372880 | 7C 9D F0 2E */	lwzx r4, r29, r30
/* 81372884 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81372888 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8137288C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81372890 | 7D 89 03 A6 */	mtctr r12
/* 81372894 | 4E 80 04 21 */	bctrl
/* 81372898 | 38 80 00 00 */	li r4, 0x0
/* 8137289C | 4B FD 1B 79 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813728A0 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 813728A4 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 813728A8 | 2C 1B 00 03 */	cmpwi r27, 0x3
/* 813728AC | 41 80 FF CC */	blt .L_81372878
/* 813728B0 | 80 7F 02 B0 */	lwz r3, 0x2b0(r31)
/* 813728B4 | 48 00 69 D9 */	bl Start__Q210homebutton9RemoteSpkFv
/* 813728B8 | 80 1F 06 08 */	lwz r0, 0x608(r31)
/* 813728BC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813728C0 | 41 82 00 30 */	beq .L_813728F0
/* 813728C4 | 3B 60 00 00 */	li r27, 0x0
/* 813728C8 | 48 00 00 18 */	b .L_813728E0
.L_813728CC:
/* 813728CC | 7F 64 DB 78 */	mr r4, r27
/* 813728D0 | 48 19 64 79 */	bl fn_81508D48
/* 813728D4 | C0 22 82 DC */	lfs f1, lbl_816946DC@sda21(r0)
/* 813728D8 | 48 19 84 7D */	bl fn_8150AD54
/* 813728DC | 3B 7B 00 01 */	addi r27, r27, 0x1
.L_813728E0:
/* 813728E0 | 80 7F 06 08 */	lwz r3, 0x608(r31)
/* 813728E4 | 80 03 00 70 */	lwz r0, 0x70(r3)
/* 813728E8 | 7C 1B 00 40 */	cmplw r27, r0
/* 813728EC | 41 80 FF E0 */	blt .L_813728CC
.L_813728F0:
/* 813728F0 | 7F E3 FB 78 */	mr r3, r31
/* 813728F4 | 38 80 00 00 */	li r4, 0x0
/* 813728F8 | 48 00 05 A5 */	bl calc__Q210homebutton10HomeButtonFPC17HBMControllerData
/* 813728FC | 38 7F 04 48 */	addi r3, r31, 0x448
/* 81372900 | 38 80 00 1E */	li r4, 0x1e
/* 81372904 | 48 00 44 69 */	bl init__Q310homebutton10HomeButton10BlackFaderFi
.L_81372908:
/* 81372908 | E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 8137290C | 39 61 00 30 */	addi r11, r1, 0x30
/* 81372910 | CB E1 00 30 */	lfd f31, 0x30(r1)
/* 81372914 | 48 28 6B F5 */	bl _restgpr_26
/* 81372918 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8137291C | 7C 08 03 A6 */	mtlr r0
/* 81372920 | 38 21 00 40 */	addi r1, r1, 0x40
/* 81372924 | 4E 80 00 20 */	blr
.endfn init__Q210homebutton10HomeButtonFv

# .text:0x1380 | 0x81372928 | size: 0xA0
# homebutton::HomeButton::init_msg()
.fn init_msg__Q210homebutton10HomeButtonFv, global
/* 81372928 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8137292C | 7C 08 02 A6 */	mflr r0
/* 81372930 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81372934 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81372938 | 48 28 6B 8D */	bl _savegpr_28
/* 8137293C | 3F C0 81 64 */	lis r30, scFuncTextPaneName__Q210homebutton10HomeButton@ha
/* 81372940 | 7C 7C 1B 78 */	mr r28, r3
/* 81372944 | 3B DE 53 D0 */	addi r30, r30, scFuncTextPaneName__Q210homebutton10HomeButton@l
/* 81372948 | 3B A0 00 00 */	li r29, 0x0
/* 8137294C | 3B E0 00 00 */	li r31, 0x0
.L_81372950:
/* 81372950 | 80 7C 02 2C */	lwz r3, 0x22c(r28)
/* 81372954 | 38 A0 00 01 */	li r5, 0x1
/* 81372958 | 7C 9E F8 2E */	lwzx r4, r30, r31
/* 8137295C | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81372960 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81372964 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81372968 | 7D 89 03 A6 */	mtctr r12
/* 8137296C | 4E 80 04 21 */	bctrl
/* 81372970 | 4B FD 34 F5 */	bl "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"
/* 81372974 | 80 9C 00 04 */	lwz r4, 0x4(r28)
/* 81372978 | 7C 1F E2 14 */	add r0, r31, r28
/* 8137297C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81372980 | 38 A0 00 00 */	li r5, 0x0
/* 81372984 | 80 84 00 24 */	lwz r4, 0x24(r4)
/* 81372988 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8137298C | 1C 84 00 18 */	mulli r4, r4, 0x18
/* 81372990 | 7C 84 02 14 */	add r4, r4, r0
/* 81372994 | 80 84 00 B4 */	lwz r4, 0xb4(r4)
/* 81372998 | 7D 89 03 A6 */	mtctr r12
/* 8137299C | 4E 80 04 21 */	bctrl
/* 813729A0 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 813729A4 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813729A8 | 2C 1D 00 03 */	cmpwi r29, 0x3
/* 813729AC | 41 80 FF A4 */	blt .L_81372950
/* 813729B0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813729B4 | 48 28 6B 5D */	bl _restgpr_28
/* 813729B8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813729BC | 7C 08 03 A6 */	mtlr r0
/* 813729C0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813729C4 | 4E 80 00 20 */	blr
.endfn init_msg__Q210homebutton10HomeButtonFv

# .text:0x1420 | 0x813729C8 | size: 0x15C
# homebutton::HomeButton::init_volume()
.fn init_volume__Q210homebutton10HomeButtonFv, global
/* 813729C8 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 813729CC | 7C 08 02 A6 */	mflr r0
/* 813729D0 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 813729D4 | DB E1 00 40 */	stfd f31, 0x40(r1)
/* 813729D8 | F3 E1 00 48 */	psq_st f31, 0x48(r1), 0, qr0
/* 813729DC | DB C1 00 30 */	stfd f30, 0x30(r1)
/* 813729E0 | F3 C1 00 38 */	psq_st f30, 0x38(r1), 0, qr0
/* 813729E4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813729E8 | 48 28 6A D9 */	bl _savegpr_27
/* 813729EC | 7C 7F 1B 78 */	mr r31, r3
/* 813729F0 | 48 20 A5 49 */	bl fn_8157CF38
/* 813729F4 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813729F8 | 3F A0 43 30 */	lis r29, 0x4330
/* 813729FC | 90 01 00 0C */	stw r0, 0xc(r1)
/* 81372A00 | 38 60 00 7F */	li r3, 0x7f
/* 81372A04 | C8 62 82 E0 */	lfd f3, lbl_816946E0@sda21(r0)
/* 81372A08 | 93 A1 00 08 */	stw r29, 0x8(r1)
/* 81372A0C | C0 22 82 EC */	lfs f1, lbl_816946EC@sda21(r0)
/* 81372A10 | C8 41 00 08 */	lfd f2, 0x8(r1)
/* 81372A14 | C0 02 82 E8 */	lfs f0, lbl_816946E8@sda21(r0)
/* 81372A18 | EC 42 18 28 */	fsubs f2, f2, f3
/* 81372A1C | EC 21 00 B2 */	fmuls f1, f1, f2
/* 81372A20 | EC 00 08 2A */	fadds f0, f0, f1
/* 81372A24 | FC 00 00 1E */	fctiwz f0, f0
/* 81372A28 | D8 01 00 10 */	stfd f0, 0x10(r1)
/* 81372A2C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81372A30 | 90 1F 00 80 */	stw r0, 0x80(r31)
/* 81372A34 | 48 20 A5 39 */	bl fn_8157CF6C
/* 81372A38 | CB C2 82 F8 */	lfd f30, lbl_816946F8@sda21(r0)
/* 81372A3C | 3B 60 00 00 */	li r27, 0x0
/* 81372A40 | C3 E2 82 F0 */	lfs f31, lbl_816946F0@sda21(r0)
/* 81372A44 | 3B C0 00 00 */	li r30, 0x0
.L_81372A48:
/* 81372A48 | 80 1F 00 80 */	lwz r0, 0x80(r31)
/* 81372A4C | 7F 9F F2 14 */	add r28, r31, r30
/* 81372A50 | 93 A1 00 10 */	stw r29, 0x10(r1)
/* 81372A54 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 81372A58 | 80 7C 02 A0 */	lwz r3, 0x2a0(r28)
/* 81372A5C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81372A60 | C8 01 00 10 */	lfd f0, 0x10(r1)
/* 81372A64 | EC 00 F0 28 */	fsubs f0, f0, f30
/* 81372A68 | EC 20 F8 24 */	fdivs f1, f0, f31
/* 81372A6C | 48 00 4E 11 */	bl setSpeakerVol__Q210homebutton10ControllerFf
/* 81372A70 | 80 7C 02 A0 */	lwz r3, 0x2a0(r28)
/* 81372A74 | 48 00 4D F5 */	bl connect__Q210homebutton10ControllerFv
/* 81372A78 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81372A7C | 3B DE 00 04 */	addi r30, r30, 0x4
/* 81372A80 | 2C 1B 00 04 */	cmpwi r27, 0x4
/* 81372A84 | 41 80 FF C4 */	blt .L_81372A48
/* 81372A88 | 3B 80 00 00 */	li r28, 0x0
/* 81372A8C | 3B C0 00 01 */	li r30, 0x1
.L_81372A90:
/* 81372A90 | 80 1F 00 80 */	lwz r0, 0x80(r31)
/* 81372A94 | 7C 1C 00 00 */	cmpw r28, r0
/* 81372A98 | 40 80 00 30 */	bge .L_81372AC8
/* 81372A9C | 7F E3 FB 78 */	mr r3, r31
/* 81372AA0 | 38 9C 00 15 */	addi r4, r28, 0x15
/* 81372AA4 | 38 A0 00 0A */	li r5, 0xa
/* 81372AA8 | 48 00 40 19 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81372AAC | 54 60 10 3A */	slwi r0, r3, 2
/* 81372AB0 | 7C 7F 02 14 */	add r3, r31, r0
/* 81372AB4 | 83 A3 02 E4 */	lwz r29, 0x2e4(r3)
/* 81372AB8 | 7F A3 EB 78 */	mr r3, r29
/* 81372ABC | 48 00 51 75 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81372AC0 | 93 DD 00 14 */	stw r30, 0x14(r29)
/* 81372AC4 | 48 00 00 2C */	b .L_81372AF0
.L_81372AC8:
/* 81372AC8 | 7F E3 FB 78 */	mr r3, r31
/* 81372ACC | 38 9C 00 15 */	addi r4, r28, 0x15
/* 81372AD0 | 38 A0 00 09 */	li r5, 0x9
/* 81372AD4 | 48 00 3F ED */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81372AD8 | 54 60 10 3A */	slwi r0, r3, 2
/* 81372ADC | 7C 7F 02 14 */	add r3, r31, r0
/* 81372AE0 | 83 A3 02 E4 */	lwz r29, 0x2e4(r3)
/* 81372AE4 | 7F A3 EB 78 */	mr r3, r29
/* 81372AE8 | 48 00 51 49 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81372AEC | 93 DD 00 14 */	stw r30, 0x14(r29)
.L_81372AF0:
/* 81372AF0 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 81372AF4 | 2C 1C 00 0A */	cmpwi r28, 0xa
/* 81372AF8 | 41 80 FF 98 */	blt .L_81372A90
/* 81372AFC | E3 E1 00 48 */	psq_l f31, 0x48(r1), 0, qr0
/* 81372B00 | CB E1 00 40 */	lfd f31, 0x40(r1)
/* 81372B04 | E3 C1 00 38 */	psq_l f30, 0x38(r1), 0, qr0
/* 81372B08 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81372B0C | CB C1 00 30 */	lfd f30, 0x30(r1)
/* 81372B10 | 48 28 69 FD */	bl _restgpr_27
/* 81372B14 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 81372B18 | 7C 08 03 A6 */	mtlr r0
/* 81372B1C | 38 21 00 50 */	addi r1, r1, 0x50
/* 81372B20 | 4E 80 00 20 */	blr
.endfn init_volume__Q210homebutton10HomeButtonFv

# .text:0x157C | 0x81372B24 | size: 0xF4
# homebutton::HomeButton::init_vib()
.fn init_vib__Q210homebutton10HomeButtonFv, global
/* 81372B24 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81372B28 | 7C 08 02 A6 */	mflr r0
/* 81372B2C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81372B30 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81372B34 | 48 28 69 95 */	bl _savegpr_29
/* 81372B38 | 7C 7D 1B 78 */	mr r29, r3
/* 81372B3C | 48 20 85 1D */	bl fn_8157B058
/* 81372B40 | 30 03 FF FF */	subic r0, r3, 0x1
/* 81372B44 | 7C 60 19 10 */	subfe r3, r0, r3
/* 81372B48 | 54 60 06 3F */	clrlwi. r0, r3, 24
/* 81372B4C | 98 7D 00 84 */	stb r3, 0x84(r29)
/* 81372B50 | 41 82 00 5C */	beq .L_81372BAC
/* 81372B54 | 7F A3 EB 78 */	mr r3, r29
/* 81372B58 | 38 80 00 0D */	li r4, 0xd
/* 81372B5C | 38 A0 00 06 */	li r5, 0x6
/* 81372B60 | 48 00 3F 61 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81372B64 | 54 60 10 3A */	slwi r0, r3, 2
/* 81372B68 | 7C 7D 02 14 */	add r3, r29, r0
/* 81372B6C | 83 C3 02 E4 */	lwz r30, 0x2e4(r3)
/* 81372B70 | 7F C3 F3 78 */	mr r3, r30
/* 81372B74 | 48 00 50 BD */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81372B78 | 3B E0 00 01 */	li r31, 0x1
/* 81372B7C | 7F A3 EB 78 */	mr r3, r29
/* 81372B80 | 93 FE 00 14 */	stw r31, 0x14(r30)
/* 81372B84 | 38 80 00 0E */	li r4, 0xe
/* 81372B88 | 38 A0 00 08 */	li r5, 0x8
/* 81372B8C | 48 00 3F 35 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81372B90 | 54 60 10 3A */	slwi r0, r3, 2
/* 81372B94 | 7C 7D 02 14 */	add r3, r29, r0
/* 81372B98 | 83 C3 02 E4 */	lwz r30, 0x2e4(r3)
/* 81372B9C | 7F C3 F3 78 */	mr r3, r30
/* 81372BA0 | 48 00 50 91 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81372BA4 | 93 FE 00 14 */	stw r31, 0x14(r30)
/* 81372BA8 | 48 00 00 58 */	b .L_81372C00
.L_81372BAC:
/* 81372BAC | 7F A3 EB 78 */	mr r3, r29
/* 81372BB0 | 38 80 00 0D */	li r4, 0xd
/* 81372BB4 | 38 A0 00 08 */	li r5, 0x8
/* 81372BB8 | 48 00 3F 09 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81372BBC | 54 60 10 3A */	slwi r0, r3, 2
/* 81372BC0 | 7C 7D 02 14 */	add r3, r29, r0
/* 81372BC4 | 83 C3 02 E4 */	lwz r30, 0x2e4(r3)
/* 81372BC8 | 7F C3 F3 78 */	mr r3, r30
/* 81372BCC | 48 00 50 65 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81372BD0 | 3B E0 00 01 */	li r31, 0x1
/* 81372BD4 | 7F A3 EB 78 */	mr r3, r29
/* 81372BD8 | 93 FE 00 14 */	stw r31, 0x14(r30)
/* 81372BDC | 38 80 00 0E */	li r4, 0xe
/* 81372BE0 | 38 A0 00 06 */	li r5, 0x6
/* 81372BE4 | 48 00 3E DD */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81372BE8 | 54 60 10 3A */	slwi r0, r3, 2
/* 81372BEC | 7C 7D 02 14 */	add r3, r29, r0
/* 81372BF0 | 83 C3 02 E4 */	lwz r30, 0x2e4(r3)
/* 81372BF4 | 7F C3 F3 78 */	mr r3, r30
/* 81372BF8 | 48 00 50 39 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81372BFC | 93 FE 00 14 */	stw r31, 0x14(r30)
.L_81372C00:
/* 81372C00 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81372C04 | 48 28 69 11 */	bl _restgpr_29
/* 81372C08 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81372C0C | 7C 08 03 A6 */	mtlr r0
/* 81372C10 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81372C14 | 4E 80 00 20 */	blr
.endfn init_vib__Q210homebutton10HomeButtonFv

# .text:0x1670 | 0x81372C18 | size: 0x114
# homebutton::HomeButton::init_sound()
.fn init_sound__Q210homebutton10HomeButtonFv, global
/* 81372C18 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81372C1C | 7C 08 02 A6 */	mflr r0
/* 81372C20 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81372C24 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81372C28 | 7C 7F 1B 78 */	mr r31, r3
/* 81372C2C | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 81372C30 | 81 84 00 1C */	lwz r12, 0x1c(r4)
/* 81372C34 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 81372C38 | 41 82 00 14 */	beq .L_81372C4C
/* 81372C3C | 38 60 00 00 */	li r3, 0x0
/* 81372C40 | 38 80 00 00 */	li r4, 0x0
/* 81372C44 | 7D 89 03 A6 */	mtctr r12
/* 81372C48 | 4E 80 04 21 */	bctrl
.L_81372C4C:
/* 81372C4C | 48 1E 0B 65 */	bl fn_815537B0
/* 81372C50 | B0 7F 06 20 */	sth r3, 0x620(r31)
/* 81372C54 | 48 1E 0B 65 */	bl fn_815537B8
/* 81372C58 | B0 7F 06 22 */	sth r3, 0x622(r31)
/* 81372C5C | 48 1E 0B 65 */	bl fn_815537C0
/* 81372C60 | B0 7F 06 24 */	sth r3, 0x624(r31)
/* 81372C64 | 38 7F 06 28 */	addi r3, r31, 0x628
/* 81372C68 | 38 9F 06 2C */	addi r4, r31, 0x62c
/* 81372C6C | 48 1E 6F 39 */	bl fn_81559BA4
/* 81372C70 | 38 7F 07 90 */	addi r3, r31, 0x790
/* 81372C74 | 38 9F 07 94 */	addi r4, r31, 0x794
/* 81372C78 | 48 1E 00 E1 */	bl fn_81552D58
/* 81372C7C | 3C 60 81 37 */	lis r3, HBMBase_813715A8@ha
/* 81372C80 | 3C 80 81 37 */	lis r4, HBMBase_813715B4@ha
/* 81372C84 | 38 63 15 A8 */	addi r3, r3, HBMBase_813715A8@l
/* 81372C88 | 38 84 15 B4 */	addi r4, r4, HBMBase_813715B4@l
/* 81372C8C | 48 1E 6F 0D */	bl fn_81559B98
/* 81372C90 | C0 62 82 D8 */	lfs f3, lbl_816946D8@sda21(r0)
/* 81372C94 | 38 7F 06 30 */	addi r3, r31, 0x630
/* 81372C98 | C0 42 83 00 */	lfs f2, lbl_81694700@sda21(r0)
/* 81372C9C | C0 22 83 04 */	lfs f1, lbl_81694704@sda21(r0)
/* 81372CA0 | C0 02 82 DC */	lfs f0, lbl_816946DC@sda21(r0)
/* 81372CA4 | D0 7F 07 88 */	stfs f3, 0x788(r31)
/* 81372CA8 | D0 5F 07 80 */	stfs f2, 0x780(r31)
/* 81372CAC | D0 3F 07 78 */	stfs f1, 0x778(r31)
/* 81372CB0 | D0 7F 07 84 */	stfs f3, 0x784(r31)
/* 81372CB4 | D0 7F 07 8C */	stfs f3, 0x78c(r31)
/* 81372CB8 | D0 1F 07 7C */	stfs f0, 0x77c(r31)
/* 81372CBC | 48 1E 2D 99 */	bl fn_81555A54
/* 81372CC0 | 3C 60 81 55 */	lis r3, fn_81555B40@ha
/* 81372CC4 | 38 9F 06 30 */	addi r4, r31, 0x630
/* 81372CC8 | 38 63 5B 40 */	addi r3, r3, fn_81555B40@l
/* 81372CCC | 48 1D FF 61 */	bl fn_81552C2C
/* 81372CD0 | 3C 60 00 01 */	lis r3, 0x1
/* 81372CD4 | 38 03 80 00 */	addi r0, r3, -0x8000
/* 81372CD8 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 81372CDC | 48 1E 0A ED */	bl fn_815537C8
/* 81372CE0 | 38 60 00 00 */	li r3, 0x0
/* 81372CE4 | 48 1E 0A ED */	bl fn_815537D0
/* 81372CE8 | 38 60 00 00 */	li r3, 0x0
/* 81372CEC | 48 1E 0A ED */	bl fn_815537D8
/* 81372CF0 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 81372CF4 | 81 83 00 1C */	lwz r12, 0x1c(r3)
/* 81372CF8 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 81372CFC | 41 82 00 14 */	beq .L_81372D10
/* 81372D00 | 38 60 00 01 */	li r3, 0x1
/* 81372D04 | 38 80 00 00 */	li r4, 0x0
/* 81372D08 | 7D 89 03 A6 */	mtctr r12
/* 81372D0C | 4E 80 04 21 */	bctrl
.L_81372D10:
/* 81372D10 | 38 00 00 01 */	li r0, 0x1
/* 81372D14 | 98 1F 00 8E */	stb r0, 0x8e(r31)
/* 81372D18 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81372D1C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81372D20 | 7C 08 03 A6 */	mtlr r0
/* 81372D24 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81372D28 | 4E 80 00 20 */	blr
.endfn init_sound__Q210homebutton10HomeButtonFv

# .text:0x1784 | 0x81372D2C | size: 0x170
# homebutton::HomeButton::init_battery(const HBMControllerData*)
.fn init_battery__Q210homebutton10HomeButtonFPC17HBMControllerData, global
/* 81372D2C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81372D30 | 7C 08 02 A6 */	mflr r0
/* 81372D34 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81372D38 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81372D3C | 48 28 67 75 */	bl _savegpr_23
/* 81372D40 | 3B C0 00 00 */	li r30, 0x0
/* 81372D44 | 7C 7C 1B 78 */	mr r28, r3
/* 81372D48 | 7C 9D 23 78 */	mr r29, r4
/* 81372D4C | 3B 60 00 00 */	li r27, 0x0
/* 81372D50 | 7F D8 F3 78 */	mr r24, r30
/* 81372D54 | 3B 40 00 00 */	li r26, 0x0
/* 81372D58 | 3B 20 00 00 */	li r25, 0x0
/* 81372D5C | 3B E0 00 01 */	li r31, 0x1
.L_81372D60:
/* 81372D60 | 7C 1D D0 2E */	lwzx r0, r29, r26
/* 81372D64 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81372D68 | 41 82 00 88 */	beq .L_81372DF0
/* 81372D6C | 80 7C 00 04 */	lwz r3, 0x4(r28)
/* 81372D70 | 80 03 00 28 */	lwz r0, 0x28(r3)
/* 81372D74 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81372D78 | 40 82 00 30 */	bne .L_81372DA8
/* 81372D7C | 7C 7C CA 14 */	add r3, r28, r25
/* 81372D80 | 80 8D 84 1C */	lwz r4, lbl_8169645C@sda21(r0)
/* 81372D84 | 80 63 02 30 */	lwz r3, 0x230(r3)
/* 81372D88 | 38 A0 00 01 */	li r5, 0x1
/* 81372D8C | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81372D90 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81372D94 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81372D98 | 7D 89 03 A6 */	mtctr r12
/* 81372D9C | 4E 80 04 21 */	bctrl
/* 81372DA0 | 38 80 00 01 */	li r4, 0x1
/* 81372DA4 | 4B FD 16 71 */	bl SetVisible__Q34nw4r3lyt4PaneFb
.L_81372DA8:
/* 81372DA8 | 7F 83 E3 78 */	mr r3, r28
/* 81372DAC | 38 9E 00 1F */	addi r4, r30, 0x1f
/* 81372DB0 | 38 A0 00 11 */	li r5, 0x11
/* 81372DB4 | 48 00 3D 0D */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81372DB8 | 54 60 10 3A */	slwi r0, r3, 2
/* 81372DBC | 7C 7C 02 14 */	add r3, r28, r0
/* 81372DC0 | 82 E3 02 E4 */	lwz r23, 0x2e4(r3)
/* 81372DC4 | 7E E3 BB 78 */	mr r3, r23
/* 81372DC8 | 48 00 4E 69 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81372DCC | 93 F7 00 14 */	stw r31, 0x14(r23)
/* 81372DD0 | 7C 9C F2 14 */	add r4, r28, r30
/* 81372DD4 | 7C 7C DA 14 */	add r3, r28, r27
/* 81372DD8 | 7C BC CA 14 */	add r5, r28, r25
/* 81372DDC | 9B E4 00 7C */	stb r31, 0x7c(r4)
/* 81372DE0 | 38 83 01 A4 */	addi r4, r3, 0x1a4
/* 81372DE4 | 80 65 02 A0 */	lwz r3, 0x2a0(r5)
/* 81372DE8 | 48 00 4D 49 */	bl getInfoAsync__Q210homebutton10ControllerFP8WPADInfo
/* 81372DEC | 48 00 00 70 */	b .L_81372E5C
.L_81372DF0:
/* 81372DF0 | 80 7C 00 04 */	lwz r3, 0x4(r28)
/* 81372DF4 | 80 03 00 28 */	lwz r0, 0x28(r3)
/* 81372DF8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81372DFC | 40 82 00 30 */	bne .L_81372E2C
/* 81372E00 | 7C 7C CA 14 */	add r3, r28, r25
/* 81372E04 | 80 8D 84 1C */	lwz r4, lbl_8169645C@sda21(r0)
/* 81372E08 | 80 63 02 30 */	lwz r3, 0x230(r3)
/* 81372E0C | 38 A0 00 01 */	li r5, 0x1
/* 81372E10 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81372E14 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81372E18 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81372E1C | 7D 89 03 A6 */	mtctr r12
/* 81372E20 | 4E 80 04 21 */	bctrl
/* 81372E24 | 38 80 00 00 */	li r4, 0x0
/* 81372E28 | 4B FD 15 ED */	bl SetVisible__Q34nw4r3lyt4PaneFb
.L_81372E2C:
/* 81372E2C | 7F 83 E3 78 */	mr r3, r28
/* 81372E30 | 38 9E 00 1F */	addi r4, r30, 0x1f
/* 81372E34 | 38 A0 00 10 */	li r5, 0x10
/* 81372E38 | 48 00 3C 89 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81372E3C | 54 60 10 3A */	slwi r0, r3, 2
/* 81372E40 | 7C 7C 02 14 */	add r3, r28, r0
/* 81372E44 | 82 E3 02 E4 */	lwz r23, 0x2e4(r3)
/* 81372E48 | 7E E3 BB 78 */	mr r3, r23
/* 81372E4C | 48 00 4D E5 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81372E50 | 93 F7 00 14 */	stw r31, 0x14(r23)
/* 81372E54 | 7C 7C F2 14 */	add r3, r28, r30
/* 81372E58 | 9B 03 00 7C */	stb r24, 0x7c(r3)
.L_81372E5C:
/* 81372E5C | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81372E60 | 3B 5A 00 10 */	addi r26, r26, 0x10
/* 81372E64 | 2C 1E 00 04 */	cmpwi r30, 0x4
/* 81372E68 | 3B 39 00 04 */	addi r25, r25, 0x4
/* 81372E6C | 3B 7B 00 18 */	addi r27, r27, 0x18
/* 81372E70 | 41 80 FE F0 */	blt .L_81372D60
/* 81372E74 | 7F 83 E3 78 */	mr r3, r28
/* 81372E78 | 48 00 38 D9 */	bl reset_battery__Q210homebutton10HomeButtonFv
/* 81372E7C | 38 00 00 00 */	li r0, 0x0
/* 81372E80 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81372E84 | 90 1C 00 78 */	stw r0, 0x78(r28)
/* 81372E88 | 48 28 66 75 */	bl _restgpr_23
/* 81372E8C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81372E90 | 7C 08 03 A6 */	mtlr r0
/* 81372E94 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81372E98 | 4E 80 00 20 */	blr
.endfn init_battery__Q210homebutton10HomeButtonFPC17HBMControllerData

# .text:0x18F4 | 0x81372E9C | size: 0xE30
# homebutton::HomeButton::calc(const HBMControllerData*)
.fn calc__Q210homebutton10HomeButtonFPC17HBMControllerData, global
/* 81372E9C | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 81372EA0 | 7C 08 02 A6 */	mflr r0
/* 81372EA4 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 81372EA8 | DB E1 00 50 */	stfd f31, 0x50(r1)
/* 81372EAC | F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 81372EB0 | DB C1 00 40 */	stfd f30, 0x40(r1)
/* 81372EB4 | F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 81372EB8 | 39 61 00 40 */	addi r11, r1, 0x40
/* 81372EBC | 48 28 66 05 */	bl _savegpr_27
/* 81372EC0 | 7C 7E 1B 78 */	mr r30, r3
/* 81372EC4 | 80 63 02 44 */	lwz r3, 0x244(r3)
/* 81372EC8 | 3C 00 43 30 */	lis r0, 0x4330
/* 81372ECC | 7C 9F 23 78 */	mr r31, r4
/* 81372ED0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81372ED4 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 81372ED8 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81372EDC | 90 01 00 18 */	stw r0, 0x18(r1)
/* 81372EE0 | 7D 89 03 A6 */	mtctr r12
/* 81372EE4 | 4E 80 04 21 */	bctrl
/* 81372EE8 | 3B 60 00 00 */	li r27, 0x0
/* 81372EEC | 3B A0 00 00 */	li r29, 0x0
/* 81372EF0 | 48 00 00 18 */	b .L_81372F08
.L_81372EF4:
/* 81372EF4 | 7C 7E EA 14 */	add r3, r30, r29
/* 81372EF8 | 80 63 02 B4 */	lwz r3, 0x2b4(r3)
/* 81372EFC | 48 00 43 41 */	bl do_calc__Q210homebutton18GroupAnmControllerFv
/* 81372F00 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81372F04 | 3B BD 00 04 */	addi r29, r29, 0x4
.L_81372F08:
/* 81372F08 | 80 1E 00 0C */	lwz r0, 0xc(r30)
/* 81372F0C | 7C 1B 00 00 */	cmpw r27, r0
/* 81372F10 | 41 80 FF E4 */	blt .L_81372EF4
/* 81372F14 | 3B 60 00 00 */	li r27, 0x0
/* 81372F18 | 3B A0 00 00 */	li r29, 0x0
.L_81372F1C:
/* 81372F1C | 7C 7E EA 14 */	add r3, r30, r29
/* 81372F20 | 80 63 04 0C */	lwz r3, 0x40c(r3)
/* 81372F24 | 48 00 43 19 */	bl do_calc__Q210homebutton18GroupAnmControllerFv
/* 81372F28 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81372F2C | 3B BD 00 04 */	addi r29, r29, 0x4
/* 81372F30 | 2C 1B 00 0F */	cmpwi r27, 0xf
/* 81372F34 | 41 80 FF E8 */	blt .L_81372F1C
/* 81372F38 | 3B 60 00 00 */	li r27, 0x0
/* 81372F3C | 3B A0 00 00 */	li r29, 0x0
.L_81372F40:
/* 81372F40 | 7C 7E EA 14 */	add r3, r30, r29
/* 81372F44 | 80 63 02 E4 */	lwz r3, 0x2e4(r3)
/* 81372F48 | 48 00 42 F5 */	bl do_calc__Q210homebutton18GroupAnmControllerFv
/* 81372F4C | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81372F50 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 81372F54 | 2C 1B 00 4A */	cmpwi r27, 0x4a
/* 81372F58 | 41 80 FF E8 */	blt .L_81372F40
/* 81372F5C | C3 C2 82 D8 */	lfs f30, lbl_816946D8@sda21(r0)
/* 81372F60 | 3B 60 00 00 */	li r27, 0x0
/* 81372F64 | C3 E2 83 08 */	lfs f31, lbl_81694708@sda21(r0)
/* 81372F68 | 3B A0 00 00 */	li r29, 0x0
.L_81372F6C:
/* 81372F6C | 7F 9E EA 14 */	add r28, r30, r29
/* 81372F70 | C0 3C 02 08 */	lfs f1, 0x208(r28)
/* 81372F74 | FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 81372F78 | 40 81 00 80 */	ble .L_81372FF8
/* 81372F7C | 7C 7E DA 14 */	add r3, r30, r27
/* 81372F80 | 88 03 00 7C */	lbz r0, 0x7c(r3)
/* 81372F84 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81372F88 | 41 82 00 14 */	beq .L_81372F9C
/* 81372F8C | 80 7C 02 A0 */	lwz r3, 0x2a0(r28)
/* 81372F90 | 88 03 00 1C */	lbz r0, 0x1c(r3)
/* 81372F94 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81372F98 | 40 82 00 24 */	bne .L_81372FBC
.L_81372F9C:
/* 81372F9C | D3 DC 02 08 */	stfs f30, 0x208(r28)
/* 81372FA0 | D3 DC 02 18 */	stfs f30, 0x218(r28)
/* 81372FA4 | 80 7C 02 A0 */	lwz r3, 0x2a0(r28)
/* 81372FA8 | 88 03 00 1C */	lbz r0, 0x1c(r3)
/* 81372FAC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81372FB0 | 41 82 00 74 */	beq .L_81373024
/* 81372FB4 | 48 00 4B 4D */	bl stopMotor__Q210homebutton10ControllerFv
/* 81372FB8 | 48 00 00 6C */	b .L_81373024
.L_81372FBC:
/* 81372FBC | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 81372FC0 | C0 03 00 34 */	lfs f0, 0x34(r3)
/* 81372FC4 | EC 01 00 28 */	fsubs f0, f1, f0
/* 81372FC8 | FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 81372FCC | D0 1C 02 08 */	stfs f0, 0x208(r28)
/* 81372FD0 | 4C 40 13 82 */	cror eq, lt, eq
/* 81372FD4 | 41 82 00 10 */	beq .L_81372FE4
/* 81372FD8 | 80 1E 00 10 */	lwz r0, 0x10(r30)
/* 81372FDC | 2C 00 00 11 */	cmpwi r0, 0x11
/* 81372FE0 | 40 82 00 44 */	bne .L_81373024
.L_81372FE4:
/* 81372FE4 | 80 7C 02 A0 */	lwz r3, 0x2a0(r28)
/* 81372FE8 | 48 00 4B 19 */	bl stopMotor__Q210homebutton10ControllerFv
/* 81372FEC | D3 DC 02 08 */	stfs f30, 0x208(r28)
/* 81372FF0 | D3 FC 02 18 */	stfs f31, 0x218(r28)
/* 81372FF4 | 48 00 00 30 */	b .L_81373024
.L_81372FF8:
/* 81372FF8 | C0 3C 02 18 */	lfs f1, 0x218(r28)
/* 81372FFC | FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 81373000 | 40 81 00 24 */	ble .L_81373024
/* 81373004 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 81373008 | C0 03 00 34 */	lfs f0, 0x34(r3)
/* 8137300C | EC 01 00 28 */	fsubs f0, f1, f0
/* 81373010 | FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 81373014 | D0 1C 02 18 */	stfs f0, 0x218(r28)
/* 81373018 | 4C 40 13 82 */	cror eq, lt, eq
/* 8137301C | 40 82 00 08 */	bne .L_81373024
/* 81373020 | D3 DC 02 18 */	stfs f30, 0x218(r28)
.L_81373024:
/* 81373024 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81373028 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 8137302C | 2C 1B 00 04 */	cmpwi r27, 0x4
/* 81373030 | 41 80 FF 3C */	blt .L_81372F6C
/* 81373034 | 80 1E 00 10 */	lwz r0, 0x10(r30)
/* 81373038 | 28 00 00 13 */	cmplwi r0, 0x13
/* 8137303C | 41 81 0B 0C */	bgt .L_81373B48
/* 81373040 | 3C 60 81 64 */	lis r3, jumptable_81645518@ha
/* 81373044 | 54 00 10 3A */	slwi r0, r0, 2
/* 81373048 | 38 63 55 18 */	addi r3, r3, jumptable_81645518@l
/* 8137304C | 7C 63 00 2E */	lwzx r3, r3, r0
/* 81373050 | 7C 69 03 A6 */	mtctr r3
/* 81373054 | 4E 80 04 20 */	bctr
.L_81373058:
/* 81373058 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 8137305C | 80 03 00 20 */	lwz r0, 0x20(r3)
/* 81373060 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81373064 | 41 82 00 6C */	beq .L_813730D0
/* 81373068 | 7F C3 F3 78 */	mr r3, r30
/* 8137306C | 38 80 00 02 */	li r4, 0x2
/* 81373070 | 38 A0 00 00 */	li r5, 0x0
/* 81373074 | 48 00 3A 4D */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81373078 | 90 7E 00 14 */	stw r3, 0x14(r30)
/* 8137307C | 38 8D 84 B0 */	li r4, lbl_816964F0@sda21
/* 81373080 | 80 7E 02 2C */	lwz r3, 0x22c(r30)
/* 81373084 | 38 A0 00 01 */	li r5, 0x1
/* 81373088 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8137308C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81373090 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81373094 | 7D 89 03 A6 */	mtctr r12
/* 81373098 | 4E 80 04 21 */	bctrl
/* 8137309C | 38 80 00 00 */	li r4, 0x0
/* 813730A0 | 4B FD 13 75 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813730A4 | 80 7E 02 2C */	lwz r3, 0x22c(r30)
/* 813730A8 | 38 8D 84 B8 */	li r4, lbl_816964F8@sda21
/* 813730AC | 38 A0 00 01 */	li r5, 0x1
/* 813730B0 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 813730B4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813730B8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813730BC | 7D 89 03 A6 */	mtctr r12
/* 813730C0 | 4E 80 04 21 */	bctrl
/* 813730C4 | 38 80 00 01 */	li r4, 0x1
/* 813730C8 | 4B FD 13 4D */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813730CC | 48 00 00 68 */	b .L_81373134
.L_813730D0:
/* 813730D0 | 7F C3 F3 78 */	mr r3, r30
/* 813730D4 | 38 80 00 00 */	li r4, 0x0
/* 813730D8 | 38 A0 00 00 */	li r5, 0x0
/* 813730DC | 48 00 39 E5 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 813730E0 | 90 7E 00 14 */	stw r3, 0x14(r30)
/* 813730E4 | 38 8D 84 B0 */	li r4, lbl_816964F0@sda21
/* 813730E8 | 80 7E 02 2C */	lwz r3, 0x22c(r30)
/* 813730EC | 38 A0 00 01 */	li r5, 0x1
/* 813730F0 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 813730F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813730F8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813730FC | 7D 89 03 A6 */	mtctr r12
/* 81373100 | 4E 80 04 21 */	bctrl
/* 81373104 | 38 80 00 01 */	li r4, 0x1
/* 81373108 | 4B FD 13 0D */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 8137310C | 80 7E 02 2C */	lwz r3, 0x22c(r30)
/* 81373110 | 38 8D 84 B8 */	li r4, lbl_816964F8@sda21
/* 81373114 | 38 A0 00 01 */	li r5, 0x1
/* 81373118 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8137311C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81373120 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81373124 | 7D 89 03 A6 */	mtctr r12
/* 81373128 | 4E 80 04 21 */	bctrl
/* 8137312C | 38 80 00 00 */	li r4, 0x0
/* 81373130 | 4B FD 12 E5 */	bl SetVisible__Q34nw4r3lyt4PaneFb
.L_81373134:
/* 81373134 | 80 1E 00 14 */	lwz r0, 0x14(r30)
/* 81373138 | 54 00 10 3A */	slwi r0, r0, 2
/* 8137313C | 7C 7E 02 14 */	add r3, r30, r0
/* 81373140 | 83 83 02 E4 */	lwz r28, 0x2e4(r3)
/* 81373144 | 7F 83 E3 78 */	mr r3, r28
/* 81373148 | 48 00 4A E9 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 8137314C | 38 00 00 01 */	li r0, 0x1
/* 81373150 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81373154 | 90 1C 00 14 */	stw r0, 0x14(r28)
/* 81373158 | 41 82 09 F0 */	beq .L_81373B48
/* 8137315C | 90 1E 00 10 */	stw r0, 0x10(r30)
/* 81373160 | 7F C3 F3 78 */	mr r3, r30
/* 81373164 | 7F E4 FB 78 */	mr r4, r31
/* 81373168 | 4B FF FB C5 */	bl init_battery__Q210homebutton10HomeButtonFPC17HBMControllerData
/* 8137316C | 48 00 09 DC */	b .L_81373B48
.L_81373170:
/* 81373170 | 80 1E 00 14 */	lwz r0, 0x14(r30)
/* 81373174 | 54 00 10 3A */	slwi r0, r0, 2
/* 81373178 | 7C 7E 02 14 */	add r3, r30, r0
/* 8137317C | 80 63 02 E4 */	lwz r3, 0x2e4(r3)
/* 81373180 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81373184 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81373188 | 41 82 09 C0 */	beq .L_81373B48
/* 8137318C | 7F C3 F3 78 */	mr r3, r30
/* 81373190 | 4B FF F8 39 */	bl init_volume__Q210homebutton10HomeButtonFv
/* 81373194 | 7F C3 F3 78 */	mr r3, r30
/* 81373198 | 4B FF F9 8D */	bl init_vib__Q210homebutton10HomeButtonFv
/* 8137319C | 7F C3 F3 78 */	mr r3, r30
/* 813731A0 | 4B FF FA 79 */	bl init_sound__Q210homebutton10HomeButtonFv
/* 813731A4 | 7F C3 F3 78 */	mr r3, r30
/* 813731A8 | 38 80 00 00 */	li r4, 0x0
/* 813731AC | 48 00 3E D5 */	bl play_sound__Q210homebutton10HomeButtonFi
/* 813731B0 | 38 00 00 02 */	li r0, 0x2
/* 813731B4 | 90 1E 00 10 */	stw r0, 0x10(r30)
/* 813731B8 | 48 00 09 90 */	b .L_81373B48
.L_813731BC:
/* 813731BC | 7F C3 F3 78 */	mr r3, r30
/* 813731C0 | 48 00 0D 65 */	bl calc_letter__Q210homebutton10HomeButtonFv
/* 813731C4 | 48 00 09 84 */	b .L_81373B48
.L_813731C8:
/* 813731C8 | 80 9E 00 14 */	lwz r4, 0x14(r30)
/* 813731CC | 54 80 10 3A */	slwi r0, r4, 2
/* 813731D0 | 7C 7E 02 14 */	add r3, r30, r0
/* 813731D4 | 80 63 02 E4 */	lwz r3, 0x2e4(r3)
/* 813731D8 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813731DC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813731E0 | 41 82 00 30 */	beq .L_81373210
/* 813731E4 | 2C 04 00 05 */	cmpwi r4, 0x5
/* 813731E8 | 41 82 00 28 */	beq .L_81373210
/* 813731EC | 7F C3 F3 78 */	mr r3, r30
/* 813731F0 | 48 00 35 61 */	bl reset_battery__Q210homebutton10HomeButtonFv
/* 813731F4 | 38 00 00 05 */	li r0, 0x5
/* 813731F8 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 813731FC | 83 9E 04 20 */	lwz r28, 0x420(r30)
/* 81373200 | 7F 83 E3 78 */	mr r3, r28
/* 81373204 | 48 00 4A 2D */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81373208 | 38 00 00 01 */	li r0, 0x1
/* 8137320C | 90 1C 00 14 */	stw r0, 0x14(r28)
.L_81373210:
/* 81373210 | 80 7E 02 28 */	lwz r3, 0x228(r30)
/* 81373214 | 34 03 FF FF */	subic. r0, r3, 0x1
/* 81373218 | 90 1E 02 28 */	stw r0, 0x228(r30)
/* 8137321C | 41 81 09 2C */	bgt .L_81373B48
/* 81373220 | 3B 60 00 00 */	li r27, 0x0
.L_81373224:
/* 81373224 | 7F 63 DB 78 */	mr r3, r27
/* 81373228 | 48 20 77 39 */	bl fn_8157A960
/* 8137322C | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81373230 | 2C 1B 00 04 */	cmpwi r27, 0x4
/* 81373234 | 41 80 FF F0 */	blt .L_81373224
/* 81373238 | 38 00 00 04 */	li r0, 0x4
/* 8137323C | 90 1E 00 10 */	stw r0, 0x10(r30)
/* 81373240 | 48 00 09 08 */	b .L_81373B48
.L_81373244:
/* 81373244 | 80 1E 00 14 */	lwz r0, 0x14(r30)
/* 81373248 | 54 00 10 3A */	slwi r0, r0, 2
/* 8137324C | 7C 7E 02 14 */	add r3, r30, r0
/* 81373250 | 80 63 02 E4 */	lwz r3, 0x2e4(r3)
/* 81373254 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81373258 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8137325C | 41 82 08 EC */	beq .L_81373B48
/* 81373260 | 3B 60 00 00 */	li r27, 0x0
.L_81373264:
/* 81373264 | 7F 63 DB 78 */	mr r3, r27
/* 81373268 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8137326C | 48 20 77 B9 */	bl fn_8157AA24
/* 81373270 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 81373274 | 40 82 00 10 */	bne .L_81373284
/* 81373278 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 8137327C | 2C 1B 00 04 */	cmpwi r27, 0x4
/* 81373280 | 41 80 FF E4 */	blt .L_81373264
.L_81373284:
/* 81373284 | 2C 1B 00 04 */	cmpwi r27, 0x4
/* 81373288 | 41 80 08 C0 */	blt .L_81373B48
/* 8137328C | 3B 80 00 00 */	li r28, 0x0
/* 81373290 | 38 00 00 05 */	li r0, 0x5
/* 81373294 | 3C 60 81 37 */	lis r3, homebutton_8137423C@ha
/* 81373298 | 90 1E 00 10 */	stw r0, 0x10(r30)
/* 8137329C | 38 63 42 3C */	addi r3, r3, homebutton_8137423C@l
/* 813732A0 | 93 9E 00 18 */	stw r28, 0x18(r30)
/* 813732A4 | 93 9E 00 94 */	stw r28, 0x94(r30)
/* 813732A8 | 48 20 64 F9 */	bl fn_815797A0
/* 813732AC | 90 7E 02 04 */	stw r3, 0x204(r30)
/* 813732B0 | 9B 9E 00 8A */	stb r28, 0x8a(r30)
/* 813732B4 | 48 20 64 E5 */	bl fn_81579798
/* 813732B8 | 30 03 FF FF */	subic r0, r3, 0x1
/* 813732BC | 7C 60 19 10 */	subfe r3, r0, r3
/* 813732C0 | 54 60 06 3F */	clrlwi. r0, r3, 24
/* 813732C4 | 98 7E 00 89 */	stb r3, 0x89(r30)
/* 813732C8 | 40 82 08 80 */	bne .L_81373B48
/* 813732CC | 7F C3 F3 78 */	mr r3, r30
/* 813732D0 | 38 80 00 00 */	li r4, 0x0
/* 813732D4 | 48 00 0F 99 */	bl setSimpleSyncAlarm__Q210homebutton10HomeButtonFi
/* 813732D8 | 48 00 08 70 */	b .L_81373B48
.L_813732DC:
/* 813732DC | 88 1E 00 89 */	lbz r0, 0x89(r30)
/* 813732E0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813732E4 | 41 82 08 64 */	beq .L_81373B48
/* 813732E8 | 80 1E 00 14 */	lwz r0, 0x14(r30)
/* 813732EC | 54 00 10 3A */	slwi r0, r0, 2
/* 813732F0 | 7C 7E 02 14 */	add r3, r30, r0
/* 813732F4 | 80 63 04 0C */	lwz r3, 0x40c(r3)
/* 813732F8 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813732FC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81373300 | 41 82 08 48 */	beq .L_81373B48
/* 81373304 | 80 1E 00 18 */	lwz r0, 0x18(r30)
/* 81373308 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137330C | 40 82 00 34 */	bne .L_81373340
/* 81373310 | 7F C3 F3 78 */	mr r3, r30
/* 81373314 | 48 00 33 51 */	bl reset_control__Q210homebutton10HomeButtonFv
/* 81373318 | 7F C3 F3 78 */	mr r3, r30
/* 8137331C | 48 00 31 BD */	bl reset_btn__Q210homebutton10HomeButtonFv
/* 81373320 | 80 7E 04 44 */	lwz r3, 0x444(r30)
/* 81373324 | 38 00 00 02 */	li r0, 0x2
/* 81373328 | 90 03 00 18 */	stw r0, 0x18(r3)
/* 8137332C | 83 9E 04 44 */	lwz r28, 0x444(r30)
/* 81373330 | 7F 83 E3 78 */	mr r3, r28
/* 81373334 | 48 00 48 FD */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81373338 | 38 00 00 01 */	li r0, 0x1
/* 8137333C | 90 1C 00 14 */	stw r0, 0x14(r28)
.L_81373340:
/* 81373340 | 88 1E 00 7F */	lbz r0, 0x7f(r30)
/* 81373344 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81373348 | 41 82 00 7C */	beq .L_813733C4
/* 8137334C | 80 1E 00 10 */	lwz r0, 0x10(r30)
/* 81373350 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 81373354 | 41 82 00 50 */	beq .L_813733A4
/* 81373358 | 80 7E 02 AC */	lwz r3, 0x2ac(r30)
/* 8137335C | 38 80 00 05 */	li r4, 0x5
/* 81373360 | 48 00 45 B9 */	bl isPlayingSoundId__Q210homebutton10ControllerCFi
/* 81373364 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81373368 | 41 82 00 14 */	beq .L_8137337C
/* 8137336C | 38 60 00 06 */	li r3, 0x6
/* 81373370 | 38 00 0D F2 */	li r0, 0xdf2
/* 81373374 | 90 7E 00 10 */	stw r3, 0x10(r30)
/* 81373378 | 90 1E 00 18 */	stw r0, 0x18(r30)
.L_8137337C:
/* 8137337C | 80 7E 00 94 */	lwz r3, 0x94(r30)
/* 81373380 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81373384 | 2C 00 0D F2 */	cmpwi r0, 0xdf2
/* 81373388 | 90 1E 00 94 */	stw r0, 0x94(r30)
/* 8137338C | 40 81 07 BC */	ble .L_81373B48
/* 81373390 | 38 60 00 06 */	li r3, 0x6
/* 81373394 | 38 00 0D F2 */	li r0, 0xdf2
/* 81373398 | 90 7E 00 10 */	stw r3, 0x10(r30)
/* 8137339C | 90 1E 00 18 */	stw r0, 0x18(r30)
/* 813733A0 | 48 00 07 A8 */	b .L_81373B48
.L_813733A4:
/* 813733A4 | 80 7E 00 18 */	lwz r3, 0x18(r30)
/* 813733A8 | 38 03 00 01 */	addi r0, r3, 0x1
/* 813733AC | 2C 00 0E 10 */	cmpwi r0, 0xe10
/* 813733B0 | 90 1E 00 18 */	stw r0, 0x18(r30)
/* 813733B4 | 40 81 07 94 */	ble .L_81373B48
/* 813733B8 | 38 00 00 07 */	li r0, 0x7
/* 813733BC | 90 1E 00 10 */	stw r0, 0x10(r30)
/* 813733C0 | 48 00 07 88 */	b .L_81373B48
.L_813733C4:
/* 813733C4 | 80 7E 00 18 */	lwz r3, 0x18(r30)
/* 813733C8 | 38 03 00 01 */	addi r0, r3, 0x1
/* 813733CC | 2C 00 0E 10 */	cmpwi r0, 0xe10
/* 813733D0 | 90 1E 00 18 */	stw r0, 0x18(r30)
/* 813733D4 | 40 81 07 74 */	ble .L_81373B48
/* 813733D8 | 38 00 00 07 */	li r0, 0x7
/* 813733DC | 90 1E 00 10 */	stw r0, 0x10(r30)
/* 813733E0 | 48 20 63 BD */	bl fn_8157979C
/* 813733E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813733E8 | 40 82 07 60 */	bne .L_81373B48
/* 813733EC | 7F C3 F3 78 */	mr r3, r30
/* 813733F0 | 38 80 00 01 */	li r4, 0x1
/* 813733F4 | 48 00 0E 79 */	bl setSimpleSyncAlarm__Q210homebutton10HomeButtonFi
/* 813733F8 | 48 00 07 50 */	b .L_81373B48
.L_813733FC:
/* 813733FC | 88 1E 00 8A */	lbz r0, 0x8a(r30)
/* 81373400 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81373404 | 41 82 07 44 */	beq .L_81373B48
/* 81373408 | 80 7E 02 04 */	lwz r3, 0x204(r30)
/* 8137340C | 48 20 63 95 */	bl fn_815797A0
/* 81373410 | 3B 80 00 00 */	li r28, 0x0
/* 81373414 | 80 7E 02 B0 */	lwz r3, 0x2b0(r30)
/* 81373418 | 93 9E 02 04 */	stw r28, 0x204(r30)
/* 8137341C | 48 00 5D 05 */	bl ClearPcm__Q210homebutton9RemoteSpkFv
/* 81373420 | 7F C3 F3 78 */	mr r3, r30
/* 81373424 | 38 80 FF FF */	li r4, -0x1
/* 81373428 | 48 00 33 BD */	bl reset_guiManager__Q210homebutton10HomeButtonFi
/* 8137342C | 38 00 00 06 */	li r0, 0x6
/* 81373430 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 81373434 | 83 BE 04 24 */	lwz r29, 0x424(r30)
/* 81373438 | 7F A3 EB 78 */	mr r3, r29
/* 8137343C | 48 00 47 F5 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81373440 | 38 60 00 01 */	li r3, 0x1
/* 81373444 | 38 00 00 08 */	li r0, 0x8
/* 81373448 | 90 7D 00 14 */	stw r3, 0x14(r29)
/* 8137344C | 7F C3 F3 78 */	mr r3, r30
/* 81373450 | 38 80 00 15 */	li r4, 0x15
/* 81373454 | 90 1E 00 10 */	stw r0, 0x10(r30)
/* 81373458 | 80 BE 04 44 */	lwz r5, 0x444(r30)
/* 8137345C | 93 85 00 18 */	stw r28, 0x18(r5)
/* 81373460 | 48 00 3C 21 */	bl play_sound__Q210homebutton10HomeButtonFi
/* 81373464 | 48 00 06 E4 */	b .L_81373B48
.L_81373468:
/* 81373468 | 80 9E 00 14 */	lwz r4, 0x14(r30)
/* 8137346C | 54 80 10 3A */	slwi r0, r4, 2
/* 81373470 | 7C 7E 02 14 */	add r3, r30, r0
/* 81373474 | 80 63 04 0C */	lwz r3, 0x40c(r3)
/* 81373478 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8137347C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81373480 | 41 82 06 C8 */	beq .L_81373B48
/* 81373484 | 2C 04 00 0D */	cmpwi r4, 0xd
/* 81373488 | 40 82 00 40 */	bne .L_813734C8
/* 8137348C | 7F C3 F3 78 */	mr r3, r30
/* 81373490 | 48 00 32 41 */	bl reset_window__Q210homebutton10HomeButtonFv
/* 81373494 | 80 7E 02 2C */	lwz r3, 0x22c(r30)
/* 81373498 | 3C 80 81 64 */	lis r4, scFuncTextPaneName__Q210homebutton10HomeButton@ha
/* 8137349C | 38 84 53 D0 */	addi r4, r4, scFuncTextPaneName__Q210homebutton10HomeButton@l
/* 813734A0 | 38 A0 00 01 */	li r5, 0x1
/* 813734A4 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 813734A8 | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 813734AC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813734B0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813734B4 | 7D 89 03 A6 */	mtctr r12
/* 813734B8 | 4E 80 04 21 */	bctrl
/* 813734BC | 38 80 00 00 */	li r4, 0x0
/* 813734C0 | 4B FD 0F 55 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813734C4 | 48 00 00 64 */	b .L_81373528
.L_813734C8:
/* 813734C8 | 2C 04 00 06 */	cmpwi r4, 0x6
/* 813734CC | 40 82 00 5C */	bne .L_81373528
/* 813734D0 | 80 7E 02 2C */	lwz r3, 0x22c(r30)
/* 813734D4 | 3F 80 81 64 */	lis r28, scFuncTextPaneName__Q210homebutton10HomeButton@ha
/* 813734D8 | 80 9C 53 D0 */	lwz r4, scFuncTextPaneName__Q210homebutton10HomeButton@l(r28)
/* 813734DC | 38 A0 00 01 */	li r5, 0x1
/* 813734E0 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 813734E4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813734E8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813734EC | 7D 89 03 A6 */	mtctr r12
/* 813734F0 | 4E 80 04 21 */	bctrl
/* 813734F4 | 38 80 00 00 */	li r4, 0x0
/* 813734F8 | 4B FD 0F 1D */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813734FC | 80 DE 02 2C */	lwz r6, 0x22c(r30)
/* 81373500 | 38 7C 53 D0 */	addi r3, r28, scFuncTextPaneName__Q210homebutton10HomeButton@l
/* 81373504 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 81373508 | 38 A0 00 01 */	li r5, 0x1
/* 8137350C | 80 66 00 10 */	lwz r3, 0x10(r6)
/* 81373510 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81373514 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81373518 | 7D 89 03 A6 */	mtctr r12
/* 8137351C | 4E 80 04 21 */	bctrl
/* 81373520 | 38 80 00 00 */	li r4, 0x0
/* 81373524 | 4B FD 0E F1 */	bl SetVisible__Q34nw4r3lyt4PaneFb
.L_81373528:
/* 81373528 | 38 00 00 02 */	li r0, 0x2
/* 8137352C | 90 1E 00 10 */	stw r0, 0x10(r30)
/* 81373530 | 48 00 06 18 */	b .L_81373B48
.L_81373534:
/* 81373534 | 80 1E 00 14 */	lwz r0, 0x14(r30)
/* 81373538 | 54 00 10 3A */	slwi r0, r0, 2
/* 8137353C | 7C 7E 02 14 */	add r3, r30, r0
/* 81373540 | 80 63 02 E4 */	lwz r3, 0x2e4(r3)
/* 81373544 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81373548 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8137354C | 41 82 05 FC */	beq .L_81373B48
/* 81373550 | 88 1E 00 84 */	lbz r0, 0x84(r30)
/* 81373554 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81373558 | 41 82 00 28 */	beq .L_81373580
/* 8137355C | 3B 60 00 00 */	li r27, 0x0
/* 81373560 | 3B A0 00 00 */	li r29, 0x0
.L_81373564:
/* 81373564 | 7C 7E EA 14 */	add r3, r30, r29
/* 81373568 | 80 63 02 A0 */	lwz r3, 0x2a0(r3)
/* 8137356C | 48 00 45 95 */	bl stopMotor__Q210homebutton10ControllerFv
/* 81373570 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81373574 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 81373578 | 2C 1B 00 04 */	cmpwi r27, 0x4
/* 8137357C | 41 80 FF E8 */	blt .L_81373564
.L_81373580:
/* 81373580 | 38 00 00 02 */	li r0, 0x2
/* 81373584 | 90 1E 00 10 */	stw r0, 0x10(r30)
/* 81373588 | 48 00 05 C0 */	b .L_81373B48
.L_8137358C:
/* 8137358C | 80 1E 00 14 */	lwz r0, 0x14(r30)
/* 81373590 | 54 00 10 3A */	slwi r0, r0, 2
/* 81373594 | 7C 7E 02 14 */	add r3, r30, r0
/* 81373598 | 80 63 04 0C */	lwz r3, 0x40c(r3)
/* 8137359C | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813735A0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813735A4 | 41 82 05 A4 */	beq .L_81373B48
/* 813735A8 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 813735AC | 38 00 00 00 */	li r0, 0x0
/* 813735B0 | 90 1E 00 68 */	stw r0, 0x68(r30)
/* 813735B4 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813735B8 | 90 1E 00 6C */	stw r0, 0x6c(r30)
/* 813735BC | 90 1E 00 70 */	stw r0, 0x70(r30)
/* 813735C0 | 90 1E 00 74 */	stw r0, 0x74(r30)
/* 813735C4 | 41 82 00 58 */	beq .L_8137361C
/* 813735C8 | 3F 80 81 64 */	lis r28, scFuncTouchPaneName__Q210homebutton10HomeButton@ha
/* 813735CC | 3B 60 00 02 */	li r27, 0x2
/* 813735D0 | 3B 9C 53 8C */	addi r28, r28, scFuncTouchPaneName__Q210homebutton10HomeButton@l
/* 813735D4 | 3B A0 00 08 */	li r29, 0x8
.L_813735D8:
/* 813735D8 | 80 7E 02 2C */	lwz r3, 0x22c(r30)
/* 813735DC | 38 A0 00 01 */	li r5, 0x1
/* 813735E0 | 7C 9C E8 2E */	lwzx r4, r28, r29
/* 813735E4 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 813735E8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813735EC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813735F0 | 7D 89 03 A6 */	mtctr r12
/* 813735F4 | 4E 80 04 21 */	bctrl
/* 813735F8 | 38 80 00 00 */	li r4, 0x0
/* 813735FC | 4B FD 0E 19 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 81373600 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81373604 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 81373608 | 2C 1B 00 07 */	cmpwi r27, 0x7
/* 8137360C | 41 80 FF CC */	blt .L_813735D8
/* 81373610 | 38 00 00 02 */	li r0, 0x2
/* 81373614 | 90 1E 00 10 */	stw r0, 0x10(r30)
/* 81373618 | 48 00 00 3C */	b .L_81373654
.L_8137361C:
/* 8137361C | 40 82 00 38 */	bne .L_81373654
/* 81373620 | 38 00 00 0A */	li r0, 0xa
/* 81373624 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 81373628 | 83 9E 04 34 */	lwz r28, 0x434(r30)
/* 8137362C | 7F 83 E3 78 */	mr r3, r28
/* 81373630 | 48 00 46 01 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81373634 | 38 00 00 01 */	li r0, 0x1
/* 81373638 | 7F C3 F3 78 */	mr r3, r30
/* 8137363C | 90 1C 00 14 */	stw r0, 0x14(r28)
/* 81373640 | 38 80 00 07 */	li r4, 0x7
/* 81373644 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 81373648 | 48 00 3A 39 */	bl play_sound__Q210homebutton10HomeButtonFi
/* 8137364C | 38 00 00 08 */	li r0, 0x8
/* 81373650 | 90 1E 00 10 */	stw r0, 0x10(r30)
.L_81373654:
/* 81373654 | 7F C3 F3 78 */	mr r3, r30
/* 81373658 | 48 00 19 DD */	bl updateTrigPane__Q210homebutton10HomeButtonFv
/* 8137365C | 48 00 04 EC */	b .L_81373B48
.L_81373660:
/* 81373660 | 80 1E 00 14 */	lwz r0, 0x14(r30)
/* 81373664 | 54 00 10 3A */	slwi r0, r0, 2
/* 81373668 | 7C 7E 02 14 */	add r3, r30, r0
/* 8137366C | 80 63 02 B4 */	lwz r3, 0x2b4(r3)
/* 81373670 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81373674 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81373678 | 41 82 04 D0 */	beq .L_81373B48
/* 8137367C | 38 00 00 07 */	li r0, 0x7
/* 81373680 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 81373684 | 83 9E 04 28 */	lwz r28, 0x428(r30)
/* 81373688 | 7F 83 E3 78 */	mr r3, r28
/* 8137368C | 48 00 45 A5 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81373690 | 38 60 00 01 */	li r3, 0x1
/* 81373694 | 38 00 00 0C */	li r0, 0xc
/* 81373698 | 90 7C 00 14 */	stw r3, 0x14(r28)
/* 8137369C | 90 1E 00 10 */	stw r0, 0x10(r30)
/* 813736A0 | 48 00 04 A8 */	b .L_81373B48
.L_813736A4:
/* 813736A4 | 80 1E 00 14 */	lwz r0, 0x14(r30)
/* 813736A8 | 54 00 10 3A */	slwi r0, r0, 2
/* 813736AC | 7C 7E 02 14 */	add r3, r30, r0
/* 813736B0 | 80 63 04 0C */	lwz r3, 0x40c(r3)
/* 813736B4 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813736B8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813736BC | 41 82 04 8C */	beq .L_81373B48
/* 813736C0 | 7F C3 F3 78 */	mr r3, r30
/* 813736C4 | 48 00 19 71 */	bl updateTrigPane__Q210homebutton10HomeButtonFv
/* 813736C8 | 7F C3 F3 78 */	mr r3, r30
/* 813736CC | 48 00 2E 0D */	bl reset_btn__Q210homebutton10HomeButtonFv
/* 813736D0 | 38 00 00 02 */	li r0, 0x2
/* 813736D4 | 90 1E 00 10 */	stw r0, 0x10(r30)
/* 813736D8 | 48 00 04 70 */	b .L_81373B48
.L_813736DC:
/* 813736DC | 80 1E 00 14 */	lwz r0, 0x14(r30)
/* 813736E0 | 54 00 10 3A */	slwi r0, r0, 2
/* 813736E4 | 7C 7E 02 14 */	add r3, r30, r0
/* 813736E8 | 80 63 02 E4 */	lwz r3, 0x2e4(r3)
/* 813736EC | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813736F0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813736F4 | 41 82 04 54 */	beq .L_81373B48
/* 813736F8 | 80 BE 00 B0 */	lwz r5, 0xb0(r30)
/* 813736FC | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81373700 | 41 80 00 64 */	blt .L_81373764
/* 81373704 | 80 1E 04 4C */	lwz r0, 0x44c(r30)
/* 81373708 | 38 80 00 01 */	li r4, 0x1
/* 8137370C | 38 60 00 13 */	li r3, 0x13
/* 81373710 | C8 22 82 F8 */	lfd f1, lbl_816946F8@sda21(r0)
/* 81373714 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 81373718 | 2C 05 00 03 */	cmpwi r5, 0x3
/* 8137371C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81373720 | C8 01 00 10 */	lfd f0, 0x10(r1)
/* 81373724 | 90 9E 04 50 */	stw r4, 0x450(r30)
/* 81373728 | EC 00 08 28 */	fsubs f0, f0, f1
/* 8137372C | 90 7E 00 10 */	stw r3, 0x10(r30)
/* 81373730 | D0 1E 07 98 */	stfs f0, 0x798(r30)
/* 81373734 | 41 82 00 5C */	beq .L_81373790
/* 81373738 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 8137373C | 81 83 00 1C */	lwz r12, 0x1c(r3)
/* 81373740 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 81373744 | 41 82 00 4C */	beq .L_81373790
/* 81373748 | FC 00 00 1E */	fctiwz f0, f0
/* 8137374C | 38 60 00 03 */	li r3, 0x3
/* 81373750 | D8 01 00 20 */	stfd f0, 0x20(r1)
/* 81373754 | 80 81 00 24 */	lwz r4, 0x24(r1)
/* 81373758 | 7D 89 03 A6 */	mtctr r12
/* 8137375C | 4E 80 04 21 */	bctrl
/* 81373760 | 48 00 00 30 */	b .L_81373790
.L_81373764:
/* 81373764 | 7F C3 F3 78 */	mr r3, r30
/* 81373768 | 48 00 18 CD */	bl updateTrigPane__Q210homebutton10HomeButtonFv
/* 8137376C | 38 00 00 0D */	li r0, 0xd
/* 81373770 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 81373774 | 83 9E 04 40 */	lwz r28, 0x440(r30)
/* 81373778 | 7F 83 E3 78 */	mr r3, r28
/* 8137377C | 48 00 44 B5 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81373780 | 38 60 00 01 */	li r3, 0x1
/* 81373784 | 38 00 00 08 */	li r0, 0x8
/* 81373788 | 90 7C 00 14 */	stw r3, 0x14(r28)
/* 8137378C | 90 1E 00 10 */	stw r0, 0x10(r30)
.L_81373790:
/* 81373790 | 7F C3 F3 78 */	mr r3, r30
/* 81373794 | 38 80 FF FF */	li r4, -0x1
/* 81373798 | 48 00 30 4D */	bl reset_guiManager__Q210homebutton10HomeButtonFi
/* 8137379C | 48 00 03 AC */	b .L_81373B48
.L_813737A0:
/* 813737A0 | 80 1E 00 14 */	lwz r0, 0x14(r30)
/* 813737A4 | 54 00 10 3A */	slwi r0, r0, 2
/* 813737A8 | 7C 7E 02 14 */	add r3, r30, r0
/* 813737AC | 80 63 04 0C */	lwz r3, 0x40c(r3)
/* 813737B0 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813737B4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813737B8 | 41 82 03 90 */	beq .L_81373B48
/* 813737BC | 7F C3 F3 78 */	mr r3, r30
/* 813737C0 | 48 00 05 0D */	bl calc_fadeoutAnm__Q210homebutton10HomeButtonFv
/* 813737C4 | 48 00 03 84 */	b .L_81373B48
.L_813737C8:
/* 813737C8 | 80 1E 00 14 */	lwz r0, 0x14(r30)
/* 813737CC | 54 00 10 3A */	slwi r0, r0, 2
/* 813737D0 | 7C 7E 02 14 */	add r3, r30, r0
/* 813737D4 | 80 63 02 B4 */	lwz r3, 0x2b4(r3)
/* 813737D8 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813737DC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813737E0 | 41 82 03 68 */	beq .L_81373B48
/* 813737E4 | 80 7E 04 4C */	lwz r3, 0x44c(r30)
/* 813737E8 | 38 A0 00 01 */	li r5, 0x1
/* 813737EC | 80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 813737F0 | 38 80 00 13 */	li r4, 0x13
/* 813737F4 | 6C 63 80 00 */	xoris r3, r3, 0x8000
/* 813737F8 | C8 22 82 F8 */	lfd f1, lbl_816946F8@sda21(r0)
/* 813737FC | 90 61 00 1C */	stw r3, 0x1c(r1)
/* 81373800 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 81373804 | C8 01 00 18 */	lfd f0, 0x18(r1)
/* 81373808 | 90 BE 04 50 */	stw r5, 0x450(r30)
/* 8137380C | EC 00 08 28 */	fsubs f0, f0, f1
/* 81373810 | 90 9E 00 10 */	stw r4, 0x10(r30)
/* 81373814 | D0 1E 07 98 */	stfs f0, 0x798(r30)
/* 81373818 | 41 82 03 30 */	beq .L_81373B48
/* 8137381C | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 81373820 | 81 83 00 1C */	lwz r12, 0x1c(r3)
/* 81373824 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 81373828 | 41 82 03 20 */	beq .L_81373B48
/* 8137382C | FC 00 00 1E */	fctiwz f0, f0
/* 81373830 | 38 60 00 03 */	li r3, 0x3
/* 81373834 | D8 01 00 20 */	stfd f0, 0x20(r1)
/* 81373838 | 80 81 00 24 */	lwz r4, 0x24(r1)
/* 8137383C | 7D 89 03 A6 */	mtctr r12
/* 81373840 | 4E 80 04 21 */	bctrl
/* 81373844 | 48 00 03 04 */	b .L_81373B48
.L_81373848:
/* 81373848 | 80 1E 00 14 */	lwz r0, 0x14(r30)
/* 8137384C | 54 00 10 3A */	slwi r0, r0, 2
/* 81373850 | 7C 7E 02 14 */	add r3, r30, r0
/* 81373854 | 80 83 02 E4 */	lwz r4, 0x2e4(r3)
/* 81373858 | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 8137385C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81373860 | 41 82 00 1C */	beq .L_8137387C
/* 81373864 | 38 00 00 11 */	li r0, 0x11
/* 81373868 | C0 22 82 D8 */	lfs f1, lbl_816946D8@sda21(r0)
/* 8137386C | 90 1E 00 10 */	stw r0, 0x10(r30)
/* 81373870 | 7F C3 F3 78 */	mr r3, r30
/* 81373874 | 48 00 38 A5 */	bl fadeout_sound__Q210homebutton10HomeButtonFf
/* 81373878 | 48 00 02 D0 */	b .L_81373B48
.L_8137387C:
/* 8137387C | C0 24 00 0C */	lfs f1, 0xc(r4)
/* 81373880 | 7F C3 F3 78 */	mr r3, r30
/* 81373884 | C0 44 00 04 */	lfs f2, 0x4(r4)
/* 81373888 | C0 1E 07 98 */	lfs f0, 0x798(r30)
/* 8137388C | EC 22 08 28 */	fsubs f1, f2, f1
/* 81373890 | EC 21 00 24 */	fdivs f1, f1, f0
/* 81373894 | 48 00 38 85 */	bl fadeout_sound__Q210homebutton10HomeButtonFf
/* 81373898 | 48 00 02 B0 */	b .L_81373B48
.L_8137389C:
/* 8137389C | 80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 813738A0 | 38 60 00 12 */	li r3, 0x12
/* 813738A4 | 90 7E 00 10 */	stw r3, 0x10(r30)
/* 813738A8 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813738AC | 41 82 00 80 */	beq .L_8137392C
/* 813738B0 | 80 1E 06 08 */	lwz r0, 0x608(r30)
/* 813738B4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813738B8 | 41 82 00 30 */	beq .L_813738E8
/* 813738BC | 3B 80 00 00 */	li r28, 0x0
/* 813738C0 | 48 00 00 18 */	b .L_813738D8
.L_813738C4:
/* 813738C4 | 7F 84 E3 78 */	mr r4, r28
/* 813738C8 | 48 19 54 81 */	bl fn_81508D48
/* 813738CC | 38 80 00 00 */	li r4, 0x0
/* 813738D0 | 48 19 74 1D */	bl fn_8150ACEC
/* 813738D4 | 3B 9C 00 01 */	addi r28, r28, 0x1
.L_813738D8:
/* 813738D8 | 80 7E 06 08 */	lwz r3, 0x608(r30)
/* 813738DC | 80 03 00 70 */	lwz r0, 0x70(r3)
/* 813738E0 | 7C 1C 00 40 */	cmplw r28, r0
/* 813738E4 | 41 80 FF E0 */	blt .L_813738C4
.L_813738E8:
/* 813738E8 | 88 1E 00 8E */	lbz r0, 0x8e(r30)
/* 813738EC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813738F0 | 41 82 00 3C */	beq .L_8137392C
/* 813738F4 | 38 7E 06 30 */	addi r3, r30, 0x630
/* 813738F8 | 48 1E 21 C1 */	bl fn_81555AB8
/* 813738FC | 80 7E 07 90 */	lwz r3, 0x790(r30)
/* 81373900 | 80 9E 07 94 */	lwz r4, 0x794(r30)
/* 81373904 | 48 1D F3 29 */	bl fn_81552C2C
/* 81373908 | 80 7E 06 28 */	lwz r3, 0x628(r30)
/* 8137390C | 80 9E 06 2C */	lwz r4, 0x62c(r30)
/* 81373910 | 48 1E 62 89 */	bl fn_81559B98
/* 81373914 | A0 7E 06 20 */	lhz r3, 0x620(r30)
/* 81373918 | 48 1D FE B1 */	bl fn_815537C8
/* 8137391C | A0 7E 06 22 */	lhz r3, 0x622(r30)
/* 81373920 | 48 1D FE B1 */	bl fn_815537D0
/* 81373924 | A0 7E 06 24 */	lhz r3, 0x624(r30)
/* 81373928 | 48 1D FE B1 */	bl fn_815537D8
.L_8137392C:
/* 8137392C | 80 1E 00 80 */	lwz r0, 0x80(r30)
/* 81373930 | C8 42 82 F8 */	lfd f2, lbl_816946F8@sda21(r0)
/* 81373934 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 81373938 | C0 02 83 0C */	lfs f0, lbl_8169470C@sda21(r0)
/* 8137393C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81373940 | C8 21 00 10 */	lfd f1, 0x10(r1)
/* 81373944 | EC 21 10 28 */	fsubs f1, f1, f2
/* 81373948 | EC 00 00 72 */	fmuls f0, f0, f1
/* 8137394C | FC 00 00 1E */	fctiwz f0, f0
/* 81373950 | D8 01 00 20 */	stfd f0, 0x20(r1)
/* 81373954 | 80 61 00 24 */	lwz r3, 0x24(r1)
/* 81373958 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8137395C | 48 20 96 11 */	bl fn_8157CF6C
/* 81373960 | 38 60 00 00 */	li r3, 0x0
/* 81373964 | 48 20 79 11 */	bl fn_8157B274
/* 81373968 | 80 7E 02 B0 */	lwz r3, 0x2b0(r30)
/* 8137396C | 48 00 59 A9 */	bl Stop__Q210homebutton9RemoteSpkFv
/* 81373970 | 3B 60 00 00 */	li r27, 0x0
/* 81373974 | 3B A0 00 00 */	li r29, 0x0
.L_81373978:
/* 81373978 | 2C 1B 00 04 */	cmpwi r27, 0x4
/* 8137397C | 40 80 00 10 */	bge .L_8137398C
/* 81373980 | 7C 7E EA 14 */	add r3, r30, r29
/* 81373984 | 80 63 02 A0 */	lwz r3, 0x2a0(r3)
/* 81373988 | 48 00 3C F1 */	bl clearCallback__Q210homebutton10ControllerFv
.L_8137398C:
/* 8137398C | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81373990 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 81373994 | 2C 1B 00 04 */	cmpwi r27, 0x4
/* 81373998 | 41 80 FF E0 */	blt .L_81373978
/* 8137399C | 80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 813739A0 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813739A4 | 41 82 00 24 */	beq .L_813739C8
/* 813739A8 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813739AC | 81 83 00 1C */	lwz r12, 0x1c(r3)
/* 813739B0 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 813739B4 | 41 82 00 14 */	beq .L_813739C8
/* 813739B8 | 38 60 00 04 */	li r3, 0x4
/* 813739BC | 38 80 00 00 */	li r4, 0x0
/* 813739C0 | 7D 89 03 A6 */	mtctr r12
/* 813739C4 | 4E 80 04 21 */	bctrl
.L_813739C8:
/* 813739C8 | 38 00 00 00 */	li r0, 0x0
/* 813739CC | 98 1E 00 8B */	stb r0, 0x8b(r30)
/* 813739D0 | 48 00 01 78 */	b .L_81373B48
.L_813739D4:
/* 813739D4 | 38 00 00 02 */	li r0, 0x2
/* 813739D8 | 90 1E 00 10 */	stw r0, 0x10(r30)
/* 813739DC | 48 00 01 6C */	b .L_81373B48
.L_813739E0:
/* 813739E0 | 88 1E 00 8C */	lbz r0, 0x8c(r30)
/* 813739E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813739E8 | 41 82 00 18 */	beq .L_81373A00
/* 813739EC | 7F C3 F3 78 */	mr r3, r30
/* 813739F0 | 7F E4 FB 78 */	mr r4, r31
/* 813739F4 | 4B FF F3 39 */	bl init_battery__Q210homebutton10HomeButtonFPC17HBMControllerData
/* 813739F8 | 38 00 00 00 */	li r0, 0x0
/* 813739FC | 98 1E 00 8C */	stb r0, 0x8c(r30)
.L_81373A00:
/* 81373A00 | 88 1E 00 8D */	lbz r0, 0x8d(r30)
/* 81373A04 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81373A08 | 41 82 00 1C */	beq .L_81373A24
/* 81373A0C | 7F C3 F3 78 */	mr r3, r30
/* 81373A10 | 4B FF EF B9 */	bl init_volume__Q210homebutton10HomeButtonFv
/* 81373A14 | 7F C3 F3 78 */	mr r3, r30
/* 81373A18 | 4B FF F1 0D */	bl init_vib__Q210homebutton10HomeButtonFv
/* 81373A1C | 38 00 00 00 */	li r0, 0x0
/* 81373A20 | 98 1E 00 8D */	stb r0, 0x8d(r30)
.L_81373A24:
/* 81373A24 | 38 7E 04 48 */	addi r3, r30, 0x448
/* 81373A28 | 48 00 33 B5 */	bl isDone__Q310homebutton10HomeButton10BlackFaderFv
/* 81373A2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81373A30 | 41 82 00 E8 */	beq .L_81373B18
/* 81373A34 | 88 1E 00 8F */	lbz r0, 0x8f(r30)
/* 81373A38 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81373A3C | 41 82 00 24 */	beq .L_81373A60
/* 81373A40 | 88 1E 00 8A */	lbz r0, 0x8a(r30)
/* 81373A44 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81373A48 | 41 82 01 00 */	beq .L_81373B48
/* 81373A4C | 80 7E 02 04 */	lwz r3, 0x204(r30)
/* 81373A50 | 48 20 5D 51 */	bl fn_815797A0
/* 81373A54 | 38 00 00 00 */	li r0, 0x0
/* 81373A58 | 90 1E 02 04 */	stw r0, 0x204(r30)
/* 81373A5C | 98 1E 00 8F */	stb r0, 0x8f(r30)
.L_81373A60:
/* 81373A60 | 88 1E 00 90 */	lbz r0, 0x90(r30)
/* 81373A64 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81373A68 | 41 82 00 8C */	beq .L_81373AF4
/* 81373A6C | 80 7E 04 20 */	lwz r3, 0x420(r30)
/* 81373A70 | 48 00 41 C1 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81373A74 | 80 7E 04 20 */	lwz r3, 0x420(r30)
/* 81373A78 | 3B 80 00 00 */	li r28, 0x0
/* 81373A7C | 3F A0 81 64 */	lis r29, scFuncTextPaneName__Q210homebutton10HomeButton@ha
/* 81373A80 | 38 A0 00 01 */	li r5, 0x1
/* 81373A84 | 93 83 00 14 */	stw r28, 0x14(r3)
/* 81373A88 | 80 7E 02 2C */	lwz r3, 0x22c(r30)
/* 81373A8C | 80 9D 53 D0 */	lwz r4, scFuncTextPaneName__Q210homebutton10HomeButton@l(r29)
/* 81373A90 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81373A94 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81373A98 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81373A9C | 7D 89 03 A6 */	mtctr r12
/* 81373AA0 | 4E 80 04 21 */	bctrl
/* 81373AA4 | 38 80 00 00 */	li r4, 0x0
/* 81373AA8 | 4B FD 09 6D */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 81373AAC | 80 DE 02 2C */	lwz r6, 0x22c(r30)
/* 81373AB0 | 38 7D 53 D0 */	addi r3, r29, scFuncTextPaneName__Q210homebutton10HomeButton@l
/* 81373AB4 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 81373AB8 | 38 A0 00 01 */	li r5, 0x1
/* 81373ABC | 80 66 00 10 */	lwz r3, 0x10(r6)
/* 81373AC0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81373AC4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81373AC8 | 7D 89 03 A6 */	mtctr r12
/* 81373ACC | 4E 80 04 21 */	bctrl
/* 81373AD0 | 38 80 00 00 */	li r4, 0x0
/* 81373AD4 | 4B FD 09 41 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 81373AD8 | 80 7E 04 44 */	lwz r3, 0x444(r30)
/* 81373ADC | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81373AE0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81373AE4 | 40 82 00 10 */	bne .L_81373AF4
/* 81373AE8 | 48 00 41 49 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81373AEC | 80 7E 04 44 */	lwz r3, 0x444(r30)
/* 81373AF0 | 93 83 00 14 */	stw r28, 0x14(r3)
.L_81373AF4:
/* 81373AF4 | 38 00 00 11 */	li r0, 0x11
/* 81373AF8 | 38 60 00 01 */	li r3, 0x1
/* 81373AFC | 90 1E 00 10 */	stw r0, 0x10(r30)
/* 81373B00 | 48 1C A6 29 */	bl VISetBlack
/* 81373B04 | 48 1C A4 9D */	bl VIFlush
/* 81373B08 | C0 22 82 D8 */	lfs f1, lbl_816946D8@sda21(r0)
/* 81373B0C | 7F C3 F3 78 */	mr r3, r30
/* 81373B10 | 48 00 36 09 */	bl fadeout_sound__Q210homebutton10HomeButtonFf
/* 81373B14 | 48 00 00 34 */	b .L_81373B48
.L_81373B18:
/* 81373B18 | 80 9E 04 48 */	lwz r4, 0x448(r30)
/* 81373B1C | 7F C3 F3 78 */	mr r3, r30
/* 81373B20 | 80 1E 04 4C */	lwz r0, 0x44c(r30)
/* 81373B24 | C8 42 82 F8 */	lfd f2, lbl_816946F8@sda21(r0)
/* 81373B28 | 7C 04 00 50 */	subf r0, r4, r0
/* 81373B2C | C0 1E 07 98 */	lfs f0, 0x798(r30)
/* 81373B30 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 81373B34 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 81373B38 | C8 21 00 18 */	lfd f1, 0x18(r1)
/* 81373B3C | EC 21 10 28 */	fsubs f1, f1, f2
/* 81373B40 | EC 21 00 24 */	fdivs f1, f1, f0
/* 81373B44 | 48 00 35 D5 */	bl fadeout_sound__Q210homebutton10HomeButtonFf
.L_81373B48:
/* 81373B48 | 80 1E 00 68 */	lwz r0, 0x68(r30)
/* 81373B4C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81373B50 | 41 82 00 58 */	beq .L_81373BA8
/* 81373B54 | 7F C3 F3 78 */	mr r3, r30
/* 81373B58 | 48 00 2D 35 */	bl isUpBarActive__Q210homebutton10HomeButtonCFv
/* 81373B5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81373B60 | 41 82 00 48 */	beq .L_81373BA8
/* 81373B64 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 81373B68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81373B6C | 41 82 00 34 */	beq .L_81373BA0
/* 81373B70 | 80 1E 00 70 */	lwz r0, 0x70(r30)
/* 81373B74 | 7C 03 00 00 */	cmpw r3, r0
/* 81373B78 | 41 82 00 28 */	beq .L_81373BA0
/* 81373B7C | 54 60 10 3A */	slwi r0, r3, 2
/* 81373B80 | 7C 7E 02 14 */	add r3, r30, r0
/* 81373B84 | 83 83 04 0C */	lwz r28, 0x40c(r3)
/* 81373B88 | 7F 83 E3 78 */	mr r3, r28
/* 81373B8C | 48 00 40 A5 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81373B90 | 38 00 00 01 */	li r0, 0x1
/* 81373B94 | 90 1C 00 14 */	stw r0, 0x14(r28)
/* 81373B98 | 80 1E 00 68 */	lwz r0, 0x68(r30)
/* 81373B9C | 90 1E 00 70 */	stw r0, 0x70(r30)
.L_81373BA0:
/* 81373BA0 | 38 00 00 00 */	li r0, 0x0
/* 81373BA4 | 90 1E 00 68 */	stw r0, 0x68(r30)
.L_81373BA8:
/* 81373BA8 | 80 1E 00 6C */	lwz r0, 0x6c(r30)
/* 81373BAC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81373BB0 | 41 82 00 58 */	beq .L_81373C08
/* 81373BB4 | 7F C3 F3 78 */	mr r3, r30
/* 81373BB8 | 48 00 2D 11 */	bl isDownBarActive__Q210homebutton10HomeButtonFv
/* 81373BBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81373BC0 | 41 82 00 48 */	beq .L_81373C08
/* 81373BC4 | 80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 81373BC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81373BCC | 41 82 00 34 */	beq .L_81373C00
/* 81373BD0 | 80 1E 00 74 */	lwz r0, 0x74(r30)
/* 81373BD4 | 7C 03 00 00 */	cmpw r3, r0
/* 81373BD8 | 41 82 00 28 */	beq .L_81373C00
/* 81373BDC | 54 60 10 3A */	slwi r0, r3, 2
/* 81373BE0 | 7C 7E 02 14 */	add r3, r30, r0
/* 81373BE4 | 83 83 02 E4 */	lwz r28, 0x2e4(r3)
/* 81373BE8 | 7F 83 E3 78 */	mr r3, r28
/* 81373BEC | 48 00 40 45 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81373BF0 | 38 00 00 01 */	li r0, 0x1
/* 81373BF4 | 90 1C 00 14 */	stw r0, 0x14(r28)
/* 81373BF8 | 80 1E 00 6C */	lwz r0, 0x6c(r30)
/* 81373BFC | 90 1E 00 74 */	stw r0, 0x74(r30)
.L_81373C00:
/* 81373C00 | 38 00 00 00 */	li r0, 0x0
/* 81373C04 | 90 1E 00 6C */	stw r0, 0x6c(r30)
.L_81373C08:
/* 81373C08 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81373C0C | 41 82 00 10 */	beq .L_81373C1C
/* 81373C10 | 7F C3 F3 78 */	mr r3, r30
/* 81373C14 | 7F E4 FB 78 */	mr r4, r31
/* 81373C18 | 48 00 06 C9 */	bl update__Q210homebutton10HomeButtonFPC17HBMControllerData
.L_81373C1C:
/* 81373C1C | 80 7E 02 2C */	lwz r3, 0x22c(r30)
/* 81373C20 | 38 80 00 00 */	li r4, 0x0
/* 81373C24 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81373C28 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81373C2C | 7D 89 03 A6 */	mtctr r12
/* 81373C30 | 4E 80 04 21 */	bctrl
/* 81373C34 | 80 7E 02 2C */	lwz r3, 0x22c(r30)
/* 81373C38 | 38 9E 02 4C */	addi r4, r30, 0x24c
/* 81373C3C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81373C40 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 81373C44 | 7D 89 03 A6 */	mtctr r12
/* 81373C48 | 4E 80 04 21 */	bctrl
/* 81373C4C | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 81373C50 | 80 03 00 28 */	lwz r0, 0x28(r3)
/* 81373C54 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81373C58 | 40 82 00 38 */	bne .L_81373C90
/* 81373C5C | 3B 80 00 00 */	li r28, 0x0
/* 81373C60 | 3B E0 00 00 */	li r31, 0x0
.L_81373C64:
/* 81373C64 | 7C 7E FA 14 */	add r3, r30, r31
/* 81373C68 | 38 9E 02 4C */	addi r4, r30, 0x24c
/* 81373C6C | 80 63 02 30 */	lwz r3, 0x230(r3)
/* 81373C70 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81373C74 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 81373C78 | 7D 89 03 A6 */	mtctr r12
/* 81373C7C | 4E 80 04 21 */	bctrl
/* 81373C80 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 81373C84 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 81373C88 | 2C 1C 00 04 */	cmpwi r28, 0x4
/* 81373C8C | 41 80 FF D8 */	blt .L_81373C64
.L_81373C90:
/* 81373C90 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 81373C94 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 81373C98 | 41 81 00 0C */	bgt .L_81373CA4
/* 81373C9C | 38 03 00 01 */	addi r0, r3, 0x1
/* 81373CA0 | 90 1E 00 64 */	stw r0, 0x64(r30)
.L_81373CA4:
/* 81373CA4 | E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 81373CA8 | CB E1 00 50 */	lfd f31, 0x50(r1)
/* 81373CAC | E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 81373CB0 | 39 61 00 40 */	addi r11, r1, 0x40
/* 81373CB4 | CB C1 00 40 */	lfd f30, 0x40(r1)
/* 81373CB8 | 48 28 58 55 */	bl _restgpr_27
/* 81373CBC | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 81373CC0 | 7C 08 03 A6 */	mtlr r0
/* 81373CC4 | 38 21 00 60 */	addi r1, r1, 0x60
/* 81373CC8 | 4E 80 00 20 */	blr
.endfn calc__Q210homebutton10HomeButtonFPC17HBMControllerData

# .text:0x2724 | 0x81373CCC | size: 0x104
# homebutton::HomeButton::calc_fadeoutAnm()
.fn calc_fadeoutAnm__Q210homebutton10HomeButtonFv, global
/* 81373CCC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81373CD0 | 7C 08 02 A6 */	mflr r0
/* 81373CD4 | 3C 80 81 64 */	lis r4, scFuncTextPaneName__Q210homebutton10HomeButton@ha
/* 81373CD8 | 38 A0 00 01 */	li r5, 0x1
/* 81373CDC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81373CE0 | 38 84 53 D0 */	addi r4, r4, scFuncTextPaneName__Q210homebutton10HomeButton@l
/* 81373CE4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81373CE8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81373CEC | 7C 7E 1B 78 */	mr r30, r3
/* 81373CF0 | 80 C3 02 2C */	lwz r6, 0x22c(r3)
/* 81373CF4 | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 81373CF8 | 80 66 00 10 */	lwz r3, 0x10(r6)
/* 81373CFC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81373D00 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81373D04 | 7D 89 03 A6 */	mtctr r12
/* 81373D08 | 4E 80 04 21 */	bctrl
/* 81373D0C | 38 80 00 00 */	li r4, 0x0
/* 81373D10 | 4B FD 07 05 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 81373D14 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 81373D18 | 80 03 00 20 */	lwz r0, 0x20(r3)
/* 81373D1C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81373D20 | 41 82 00 1C */	beq .L_81373D3C
/* 81373D24 | 7F C3 F3 78 */	mr r3, r30
/* 81373D28 | 38 80 00 03 */	li r4, 0x3
/* 81373D2C | 38 A0 00 01 */	li r5, 0x1
/* 81373D30 | 48 00 2D 91 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81373D34 | 90 7E 00 14 */	stw r3, 0x14(r30)
/* 81373D38 | 48 00 00 18 */	b .L_81373D50
.L_81373D3C:
/* 81373D3C | 7F C3 F3 78 */	mr r3, r30
/* 81373D40 | 38 80 00 01 */	li r4, 0x1
/* 81373D44 | 38 A0 00 01 */	li r5, 0x1
/* 81373D48 | 48 00 2D 79 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81373D4C | 90 7E 00 14 */	stw r3, 0x14(r30)
.L_81373D50:
/* 81373D50 | 80 1E 00 14 */	lwz r0, 0x14(r30)
/* 81373D54 | 54 00 10 3A */	slwi r0, r0, 2
/* 81373D58 | 7C 7E 02 14 */	add r3, r30, r0
/* 81373D5C | 83 E3 02 E4 */	lwz r31, 0x2e4(r3)
/* 81373D60 | 7F E3 FB 78 */	mr r3, r31
/* 81373D64 | 48 00 3E CD */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81373D68 | 38 00 00 01 */	li r0, 0x1
/* 81373D6C | 38 60 00 10 */	li r3, 0x10
/* 81373D70 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 81373D74 | 80 1E 00 14 */	lwz r0, 0x14(r30)
/* 81373D78 | 90 7E 00 10 */	stw r3, 0x10(r30)
/* 81373D7C | 54 00 10 3A */	slwi r0, r0, 2
/* 81373D80 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 81373D84 | 7C 9E 02 14 */	add r4, r30, r0
/* 81373D88 | 80 84 02 E4 */	lwz r4, 0x2e4(r4)
/* 81373D8C | C0 04 00 04 */	lfs f0, 0x4(r4)
/* 81373D90 | D0 1E 07 98 */	stfs f0, 0x798(r30)
/* 81373D94 | 81 83 00 1C */	lwz r12, 0x1c(r3)
/* 81373D98 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 81373D9C | 41 82 00 1C */	beq .L_81373DB8
/* 81373DA0 | FC 00 00 1E */	fctiwz f0, f0
/* 81373DA4 | 38 60 00 02 */	li r3, 0x2
/* 81373DA8 | D8 01 00 08 */	stfd f0, 0x8(r1)
/* 81373DAC | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 81373DB0 | 7D 89 03 A6 */	mtctr r12
/* 81373DB4 | 4E 80 04 21 */	bctrl
.L_81373DB8:
/* 81373DB8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81373DBC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81373DC0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81373DC4 | 7C 08 03 A6 */	mtlr r0
/* 81373DC8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81373DCC | 4E 80 00 20 */	blr
.endfn calc_fadeoutAnm__Q210homebutton10HomeButtonFv

# .text:0x2828 | 0x81373DD0 | size: 0x154
# homebutton::HomeButton::calc_battery(int)
.fn calc_battery__Q210homebutton10HomeButtonFi, global
/* 81373DD0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81373DD4 | 7C 08 02 A6 */	mflr r0
/* 81373DD8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81373DDC | 39 61 00 30 */	addi r11, r1, 0x30
/* 81373DE0 | 48 28 56 D9 */	bl _savegpr_25
/* 81373DE4 | 1F 44 00 18 */	mulli r26, r4, 0x18
/* 81373DE8 | 3C A0 81 64 */	lis r5, scBatteryPaneName__Q210homebutton10HomeButton@ha
/* 81373DEC | 54 80 20 36 */	slwi r0, r4, 4
/* 81373DF0 | 38 A5 54 AC */	addi r5, r5, scBatteryPaneName__Q210homebutton10HomeButton@l
/* 81373DF4 | 7C 7E 1B 78 */	mr r30, r3
/* 81373DF8 | 7C 9F 23 78 */	mr r31, r4
/* 81373DFC | 7F 83 D2 14 */	add r28, r3, r26
/* 81373E00 | 7F 65 02 14 */	add r27, r5, r0
/* 81373E04 | 3B 20 00 00 */	li r25, 0x0
/* 81373E08 | 3B A0 00 00 */	li r29, 0x0
.L_81373E0C:
/* 81373E0C | 88 1C 01 B8 */	lbz r0, 0x1b8(r28)
/* 81373E10 | 7C 19 00 00 */	cmpw r25, r0
/* 81373E14 | 40 80 00 30 */	bge .L_81373E44
/* 81373E18 | 80 7E 02 2C */	lwz r3, 0x22c(r30)
/* 81373E1C | 38 A0 00 01 */	li r5, 0x1
/* 81373E20 | 7C 9B E8 2E */	lwzx r4, r27, r29
/* 81373E24 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81373E28 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81373E2C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81373E30 | 7D 89 03 A6 */	mtctr r12
/* 81373E34 | 4E 80 04 21 */	bctrl
/* 81373E38 | 38 80 00 01 */	li r4, 0x1
/* 81373E3C | 4B FD 05 D9 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 81373E40 | 48 00 00 2C */	b .L_81373E6C
.L_81373E44:
/* 81373E44 | 80 7E 02 2C */	lwz r3, 0x22c(r30)
/* 81373E48 | 38 A0 00 01 */	li r5, 0x1
/* 81373E4C | 7C 9B E8 2E */	lwzx r4, r27, r29
/* 81373E50 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81373E54 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81373E58 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81373E5C | 7D 89 03 A6 */	mtctr r12
/* 81373E60 | 4E 80 04 21 */	bctrl
/* 81373E64 | 38 80 00 00 */	li r4, 0x0
/* 81373E68 | 4B FD 05 AD */	bl SetVisible__Q34nw4r3lyt4PaneFb
.L_81373E6C:
/* 81373E6C | 3B 39 00 01 */	addi r25, r25, 0x1
/* 81373E70 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 81373E74 | 2C 19 00 04 */	cmpwi r25, 0x4
/* 81373E78 | 41 80 FF 94 */	blt .L_81373E0C
/* 81373E7C | 7C 7E D2 14 */	add r3, r30, r26
/* 81373E80 | 88 03 01 B8 */	lbz r0, 0x1b8(r3)
/* 81373E84 | 28 00 00 02 */	cmplwi r0, 0x2
/* 81373E88 | 40 80 00 34 */	bge .L_81373EBC
/* 81373E8C | 7F C3 F3 78 */	mr r3, r30
/* 81373E90 | 38 9F 00 1F */	addi r4, r31, 0x1f
/* 81373E94 | 38 A0 00 15 */	li r5, 0x15
/* 81373E98 | 48 00 2C 29 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81373E9C | 54 60 10 3A */	slwi r0, r3, 2
/* 81373EA0 | 7C 7E 02 14 */	add r3, r30, r0
/* 81373EA4 | 83 A3 02 E4 */	lwz r29, 0x2e4(r3)
/* 81373EA8 | 7F A3 EB 78 */	mr r3, r29
/* 81373EAC | 48 00 3D 85 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81373EB0 | 38 00 00 01 */	li r0, 0x1
/* 81373EB4 | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 81373EB8 | 48 00 00 30 */	b .L_81373EE8
.L_81373EBC:
/* 81373EBC | 7F C3 F3 78 */	mr r3, r30
/* 81373EC0 | 38 9F 00 1F */	addi r4, r31, 0x1f
/* 81373EC4 | 38 A0 00 11 */	li r5, 0x11
/* 81373EC8 | 48 00 2B F9 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81373ECC | 54 60 10 3A */	slwi r0, r3, 2
/* 81373ED0 | 7C 7E 02 14 */	add r3, r30, r0
/* 81373ED4 | 83 A3 02 E4 */	lwz r29, 0x2e4(r3)
/* 81373ED8 | 7F A3 EB 78 */	mr r3, r29
/* 81373EDC | 48 00 3D 55 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81373EE0 | 38 00 00 01 */	li r0, 0x1
/* 81373EE4 | 90 1D 00 14 */	stw r0, 0x14(r29)
.L_81373EE8:
/* 81373EE8 | 80 1E 00 78 */	lwz r0, 0x78(r30)
/* 81373EEC | 2C 00 00 64 */	cmpwi r0, 0x64
/* 81373EF0 | 40 80 00 0C */	bge .L_81373EFC
/* 81373EF4 | 38 00 00 00 */	li r0, 0x0
/* 81373EF8 | 90 1E 00 78 */	stw r0, 0x78(r30)
.L_81373EFC:
/* 81373EFC | 57 E0 10 3A */	slwi r0, r31, 2
/* 81373F00 | 7C 7E 02 14 */	add r3, r30, r0
/* 81373F04 | 80 63 02 A0 */	lwz r3, 0x2a0(r3)
/* 81373F08 | 48 00 3C ED */	bl clrBatteryFlag__Q210homebutton10ControllerFv
/* 81373F0C | 39 61 00 30 */	addi r11, r1, 0x30
/* 81373F10 | 48 28 55 F5 */	bl _restgpr_25
/* 81373F14 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81373F18 | 7C 08 03 A6 */	mtlr r0
/* 81373F1C | 38 21 00 30 */	addi r1, r1, 0x30
/* 81373F20 | 4E 80 00 20 */	blr
.endfn calc_battery__Q210homebutton10HomeButtonFi

# .text:0x297C | 0x81373F24 | size: 0xD4
# homebutton::HomeButton::calc_letter()
.fn calc_letter__Q210homebutton10HomeButtonFv, global
/* 81373F24 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81373F28 | 7C 08 02 A6 */	mflr r0
/* 81373F2C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81373F30 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81373F34 | 7C 7F 1B 78 */	mr r31, r3
/* 81373F38 | 88 A3 00 86 */	lbz r5, 0x86(r3)
/* 81373F3C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81373F40 | 41 82 00 64 */	beq .L_81373FA4
/* 81373F44 | 80 83 04 0C */	lwz r4, 0x40c(r3)
/* 81373F48 | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 81373F4C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81373F50 | 41 82 00 54 */	beq .L_81373FA4
/* 81373F54 | 80 C3 02 2C */	lwz r6, 0x22c(r3)
/* 81373F58 | 3C 60 81 64 */	lis r3, scFuncPaneName__Q210homebutton10HomeButton@ha
/* 81373F5C | 80 83 53 1C */	lwz r4, scFuncPaneName__Q210homebutton10HomeButton@l(r3)
/* 81373F60 | 38 A0 00 01 */	li r5, 0x1
/* 81373F64 | 80 66 00 10 */	lwz r3, 0x10(r6)
/* 81373F68 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81373F6C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81373F70 | 7D 89 03 A6 */	mtctr r12
/* 81373F74 | 4E 80 04 21 */	bctrl
/* 81373F78 | 38 80 00 01 */	li r4, 0x1
/* 81373F7C | 4B FD 04 99 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 81373F80 | 80 7F 04 0C */	lwz r3, 0x40c(r31)
/* 81373F84 | 38 00 00 02 */	li r0, 0x2
/* 81373F88 | 90 03 00 18 */	stw r0, 0x18(r3)
/* 81373F8C | 83 FF 04 0C */	lwz r31, 0x40c(r31)
/* 81373F90 | 7F E3 FB 78 */	mr r3, r31
/* 81373F94 | 48 00 3C 9D */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81373F98 | 38 00 00 01 */	li r0, 0x1
/* 81373F9C | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 81373FA0 | 48 00 00 44 */	b .L_81373FE4
.L_81373FA4:
/* 81373FA4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81373FA8 | 40 82 00 3C */	bne .L_81373FE4
/* 81373FAC | 80 C3 02 2C */	lwz r6, 0x22c(r3)
/* 81373FB0 | 3C 60 81 64 */	lis r3, scFuncPaneName__Q210homebutton10HomeButton@ha
/* 81373FB4 | 80 83 53 1C */	lwz r4, scFuncPaneName__Q210homebutton10HomeButton@l(r3)
/* 81373FB8 | 38 A0 00 01 */	li r5, 0x1
/* 81373FBC | 80 66 00 10 */	lwz r3, 0x10(r6)
/* 81373FC0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81373FC4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81373FC8 | 7D 89 03 A6 */	mtctr r12
/* 81373FCC | 4E 80 04 21 */	bctrl
/* 81373FD0 | 38 80 00 00 */	li r4, 0x0
/* 81373FD4 | 4B FD 04 41 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 81373FD8 | 80 7F 04 0C */	lwz r3, 0x40c(r31)
/* 81373FDC | 38 00 00 00 */	li r0, 0x0
/* 81373FE0 | 90 03 00 14 */	stw r0, 0x14(r3)
.L_81373FE4:
/* 81373FE4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81373FE8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81373FEC | 7C 08 03 A6 */	mtlr r0
/* 81373FF0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81373FF4 | 4E 80 00 20 */	blr
.endfn calc_letter__Q210homebutton10HomeButtonFv

# .text:0x2A50 | 0x81373FF8 | size: 0x90
# homebutton::HomeButton::draw()
.fn draw__Q210homebutton10HomeButtonFv, global
/* 81373FF8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81373FFC | 7C 08 02 A6 */	mflr r0
/* 81374000 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81374004 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81374008 | 48 28 54 C1 */	bl _savegpr_29
/* 8137400C | 7C 7D 1B 78 */	mr r29, r3
/* 81374010 | 80 63 02 2C */	lwz r3, 0x22c(r3)
/* 81374014 | 38 9D 02 4C */	addi r4, r29, 0x24c
/* 81374018 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8137401C | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81374020 | 7D 89 03 A6 */	mtctr r12
/* 81374024 | 4E 80 04 21 */	bctrl
/* 81374028 | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 8137402C | 80 03 00 28 */	lwz r0, 0x28(r3)
/* 81374030 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81374034 | 40 82 00 34 */	bne .L_81374068
/* 81374038 | 3B C0 00 03 */	li r30, 0x3
/* 8137403C | 3B E0 00 0C */	li r31, 0xc
.L_81374040:
/* 81374040 | 7C 7D FA 14 */	add r3, r29, r31
/* 81374044 | 38 9D 02 4C */	addi r4, r29, 0x24c
/* 81374048 | 80 63 02 30 */	lwz r3, 0x230(r3)
/* 8137404C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81374050 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81374054 | 7D 89 03 A6 */	mtctr r12
/* 81374058 | 4E 80 04 21 */	bctrl
/* 8137405C | 37 DE FF FF */	subic. r30, r30, 0x1
/* 81374060 | 3B FF FF FC */	subi r31, r31, 0x4
/* 81374064 | 40 80 FF DC */	bge .L_81374040
.L_81374068:
/* 81374068 | 38 7D 04 48 */	addi r3, r29, 0x448
/* 8137406C | 48 00 2D B9 */	bl draw__Q310homebutton10HomeButton10BlackFaderFv
/* 81374070 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81374074 | 48 28 54 A1 */	bl _restgpr_29
/* 81374078 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8137407C | 7C 08 03 A6 */	mtlr r0
/* 81374080 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81374084 | 4E 80 00 20 */	blr
.endfn draw__Q210homebutton10HomeButtonFv

# .text:0x2AE0 | 0x81374088 | size: 0x88
# homebutton::SpeakerCallback(OSAlarm*, OSContext*)
.fn SpeakerCallback__10homebuttonFP7OSAlarmP9OSContext, local
/* 81374088 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8137408C | 7C 08 02 A6 */	mflr r0
/* 81374090 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81374094 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81374098 | 48 28 54 2D */	bl _savegpr_28
/* 8137409C | 48 1B 8F CD */	bl fn_8152D068
/* 813740A0 | 54 7D 84 3E */	srwi r29, r3, 16
/* 813740A4 | 83 CD A9 70 */	lwz r30, lbl_816989B0@sda21(r0)
/* 813740A8 | 54 7C 04 3E */	clrlwi r28, r3, 16
/* 813740AC | 7F A3 EB 78 */	mr r3, r29
/* 813740B0 | 48 20 78 29 */	bl fn_8157B8D8
/* 813740B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813740B8 | 41 82 00 1C */	beq .L_813740D4
/* 813740BC | 57 A0 10 3A */	slwi r0, r29, 2
/* 813740C0 | 7F FE 02 14 */	add r31, r30, r0
/* 813740C4 | 80 7F 02 A0 */	lwz r3, 0x2a0(r31)
/* 813740C8 | 48 00 39 CD */	bl isPlayReady__Q210homebutton10ControllerCFv
/* 813740CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813740D0 | 40 82 00 18 */	bne .L_813740E8
.L_813740D4:
/* 813740D4 | 7F C3 F3 78 */	mr r3, r30
/* 813740D8 | 7F A4 EB 78 */	mr r4, r29
/* 813740DC | 38 A0 00 32 */	li r5, 0x32
/* 813740E0 | 48 00 00 55 */	bl setSpeakerAlarm__Q210homebutton10HomeButtonFii
/* 813740E4 | 48 00 00 14 */	b .L_813740F8
.L_813740E8:
/* 813740E8 | 80 7F 02 A0 */	lwz r3, 0x2a0(r31)
/* 813740EC | 7F 85 E3 78 */	mr r5, r28
/* 813740F0 | 80 9E 06 08 */	lwz r4, 0x608(r30)
/* 813740F4 | 48 00 37 91 */	bl playSound__Q210homebutton10ControllerFPQ34nw4r3snd18SoundArchivePlayeri
.L_813740F8:
/* 813740F8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813740FC | 48 28 54 15 */	bl _restgpr_28
/* 81374100 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81374104 | 7C 08 03 A6 */	mtlr r0
/* 81374108 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8137410C | 4E 80 00 20 */	blr
.endfn SpeakerCallback__10homebuttonFP7OSAlarmP9OSContext

# .text:0x2B68 | 0x81374110 | size: 0x24
# homebutton::MotorCallback(OSAlarm*, OSContext*)
.fn MotorCallback__10homebuttonFP7OSAlarmP9OSContext, local
/* 81374110 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81374114 | 7C 08 02 A6 */	mflr r0
/* 81374118 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8137411C | 48 1B 8F 4D */	bl fn_8152D068
/* 81374120 | 48 00 39 E1 */	bl stopMotor__Q210homebutton10ControllerFv
/* 81374124 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81374128 | 7C 08 03 A6 */	mtlr r0
/* 8137412C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81374130 | 4E 80 00 20 */	blr
.endfn MotorCallback__10homebuttonFP7OSAlarmP9OSContext

# .text:0x2B8C | 0x81374134 | size: 0x84
# homebutton::HomeButton::setSpeakerAlarm(int, int)
.fn setSpeakerAlarm__Q210homebutton10HomeButtonFii, global
/* 81374134 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81374138 | 7C 08 02 A6 */	mflr r0
/* 8137413C | 1C E4 00 30 */	mulli r7, r4, 0x30
/* 81374140 | 54 86 80 1E */	slwi r6, r4, 16
/* 81374144 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81374148 | 38 04 00 02 */	addi r0, r4, 0x2
/* 8137414C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81374150 | 7C 63 3A 14 */	add r3, r3, r7
/* 81374154 | 3B E3 05 18 */	addi r31, r3, 0x518
/* 81374158 | 7C C4 03 78 */	or r4, r6, r0
/* 8137415C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81374160 | 7C BE 2B 78 */	mr r30, r5
/* 81374164 | 7F E3 FB 78 */	mr r3, r31
/* 81374168 | 48 1B 8E F9 */	bl fn_8152D060
/* 8137416C | 7F E3 FB 78 */	mr r3, r31
/* 81374170 | 48 1B 8A C9 */	bl fn_8152CC38
/* 81374174 | 3C 60 80 00 */	lis r3, 0x8000
/* 81374178 | 3C E0 81 37 */	lis r7, SpeakerCallback__10homebuttonFP7OSAlarmP9OSContext@ha
/* 8137417C | 80 83 00 F8 */	lwz r4, 0xf8(r3)
/* 81374180 | 38 00 03 E8 */	li r0, 0x3e8
/* 81374184 | 7F E3 FB 78 */	mr r3, r31
/* 81374188 | 38 E7 40 88 */	addi r7, r7, SpeakerCallback__10homebuttonFP7OSAlarmP9OSContext@l
/* 8137418C | 54 84 F0 BE */	srwi r4, r4, 2
/* 81374190 | 38 A0 00 00 */	li r5, 0x0
/* 81374194 | 7C 04 03 96 */	divwu r0, r4, r0
/* 81374198 | 7C DE 01 D6 */	mullw r6, r30, r0
/* 8137419C | 48 1B 89 A9 */	bl OSSetAlarm
/* 813741A0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813741A4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813741A8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813741AC | 7C 08 03 A6 */	mtlr r0
/* 813741B0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813741B4 | 4E 80 00 20 */	blr
.endfn setSpeakerAlarm__Q210homebutton10HomeButtonFii

# .text:0x2C10 | 0x813741B8 | size: 0x84
.fn homebutton_813741B8, local
/* 813741B8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813741BC | 7C 08 02 A6 */	mflr r0
/* 813741C0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813741C4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813741C8 | 48 28 53 01 */	bl _savegpr_29
/* 813741CC | 83 ED A9 70 */	lwz r31, lbl_816989B0@sda21(r0)
/* 813741D0 | 48 1B 8E 99 */	bl fn_8152D068
/* 813741D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813741D8 | 7C 7E 1B 78 */	mr r30, r3
/* 813741DC | 3B A0 00 00 */	li r29, 0x0
/* 813741E0 | 40 82 00 20 */	bne .L_81374200
/* 813741E4 | 48 20 55 B5 */	bl fn_81579798
/* 813741E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813741EC | 41 82 00 24 */	beq .L_81374210
/* 813741F0 | 38 00 00 01 */	li r0, 0x1
/* 813741F4 | 3B A0 00 01 */	li r29, 0x1
/* 813741F8 | 98 1F 00 89 */	stb r0, 0x89(r31)
/* 813741FC | 48 00 00 14 */	b .L_81374210
.L_81374200:
/* 81374200 | 48 20 55 9D */	bl fn_8157979C
/* 81374204 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81374208 | 41 82 00 08 */	beq .L_81374210
/* 8137420C | 3B A0 00 01 */	li r29, 0x1
.L_81374210:
/* 81374210 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81374214 | 40 82 00 10 */	bne .L_81374224
/* 81374218 | 7F E3 FB 78 */	mr r3, r31
/* 8137421C | 7F C4 F3 78 */	mr r4, r30
/* 81374220 | 48 00 00 4D */	bl setSimpleSyncAlarm__Q210homebutton10HomeButtonFi
.L_81374224:
/* 81374224 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81374228 | 48 28 52 ED */	bl _restgpr_29
/* 8137422C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81374230 | 7C 08 03 A6 */	mtlr r0
/* 81374234 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81374238 | 4E 80 00 20 */	blr
.endfn homebutton_813741B8

# .text:0x2C94 | 0x8137423C | size: 0x30
.fn homebutton_8137423C, local
/* 8137423C | 2C 03 00 01 */	cmpwi r3, 0x1
/* 81374240 | 40 82 00 10 */	bne .L_81374250
/* 81374244 | 80 AD A9 70 */	lwz r5, lbl_816989B0@sda21(r0)
/* 81374248 | 38 00 00 01 */	li r0, 0x1
/* 8137424C | 98 05 00 8A */	stb r0, 0x8a(r5)
.L_81374250:
/* 81374250 | 80 AD A9 70 */	lwz r5, lbl_816989B0@sda21(r0)
/* 81374254 | 81 85 02 04 */	lwz r12, 0x204(r5)
/* 81374258 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 8137425C | 4D 82 00 20 */	beqlr
/* 81374260 | 7D 89 03 A6 */	mtctr r12
/* 81374264 | 4E 80 04 20 */	bctr
/* 81374268 | 4E 80 00 20 */	blr
.endfn homebutton_8137423C

# .text:0x2CC4 | 0x8137426C | size: 0x74
# homebutton::HomeButton::setSimpleSyncAlarm(int)
.fn setSimpleSyncAlarm__Q210homebutton10HomeButtonFi, global
/* 8137426C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81374270 | 7C 08 02 A6 */	mflr r0
/* 81374274 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81374278 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8137427C | 7C 9F 23 78 */	mr r31, r4
/* 81374280 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81374284 | 7C 7E 1B 78 */	mr r30, r3
/* 81374288 | 38 63 05 D8 */	addi r3, r3, 0x5d8
/* 8137428C | 48 1B 89 AD */	bl fn_8152CC38
/* 81374290 | 7F E4 FB 78 */	mr r4, r31
/* 81374294 | 38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 81374298 | 48 1B 8D C9 */	bl fn_8152D060
/* 8137429C | 3C 60 80 00 */	lis r3, 0x8000
/* 813742A0 | 3C E0 81 37 */	lis r7, homebutton_813741B8@ha
/* 813742A4 | 80 83 00 F8 */	lwz r4, 0xf8(r3)
/* 813742A8 | 38 00 03 E8 */	li r0, 0x3e8
/* 813742AC | 38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 813742B0 | 38 E7 41 B8 */	addi r7, r7, homebutton_813741B8@l
/* 813742B4 | 54 84 F0 BE */	srwi r4, r4, 2
/* 813742B8 | 38 A0 00 00 */	li r5, 0x0
/* 813742BC | 7C 04 03 96 */	divwu r0, r4, r0
/* 813742C0 | 1C C0 00 64 */	mulli r6, r0, 0x64
/* 813742C4 | 48 1B 88 81 */	bl OSSetAlarm
/* 813742C8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813742CC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813742D0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813742D4 | 7C 08 03 A6 */	mtlr r0
/* 813742D8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813742DC | 4E 80 00 20 */	blr
.endfn setSimpleSyncAlarm__Q210homebutton10HomeButtonFi

# .text:0x2D38 | 0x813742E0 | size: 0x5A4
# homebutton::HomeButton::update(const HBMControllerData*)
.fn update__Q210homebutton10HomeButtonFPC17HBMControllerData, global
/* 813742E0 | 94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 813742E4 | 7C 08 02 A6 */	mflr r0
/* 813742E8 | 90 01 00 A4 */	stw r0, 0xa4(r1)
/* 813742EC | DB E1 00 90 */	stfd f31, 0x90(r1)
/* 813742F0 | F3 E1 00 98 */	psq_st f31, 0x98(r1), 0, qr0
/* 813742F4 | DB C1 00 80 */	stfd f30, 0x80(r1)
/* 813742F8 | F3 C1 00 88 */	psq_st f30, 0x88(r1), 0, qr0
/* 813742FC | 39 61 00 80 */	addi r11, r1, 0x80
/* 81374300 | 48 28 51 91 */	bl _savegpr_15
/* 81374304 | 7C 7E 1B 78 */	mr r30, r3
/* 81374308 | 7C 9F 23 78 */	mr r31, r4
/* 8137430C | 38 63 04 48 */	addi r3, r3, 0x448
/* 81374310 | 48 00 2A 71 */	bl calc__Q310homebutton10HomeButton10BlackFaderFv
/* 81374314 | 3F 20 81 64 */	lis r25, scBatteryPaneName__Q210homebutton10HomeButton@ha
/* 81374318 | C3 C2 83 14 */	lfs f30, lbl_81694714@sda21(r0)
/* 8137431C | C3 E2 82 D8 */	lfs f31, lbl_816946D8@sda21(r0)
/* 81374320 | 3B 39 54 AC */	addi r25, r25, scBatteryPaneName__Q210homebutton10HomeButton@l
/* 81374324 | 3A 20 00 00 */	li r17, 0x0
/* 81374328 | 3B A0 00 00 */	li r29, 0x0
/* 8137432C | 3B 80 00 00 */	li r28, 0x0
/* 81374330 | 3B 60 00 00 */	li r27, 0x0
/* 81374334 | 3B 40 00 00 */	li r26, 0x0
/* 81374338 | 3A 80 00 01 */	li r20, 0x1
/* 8137433C | 3A A0 00 00 */	li r21, 0x0
/* 81374340 | 3E C0 80 00 */	lis r22, 0x8000
/* 81374344 | 3A E0 03 E8 */	li r23, 0x3e8
/* 81374348 | 3F 00 81 37 */	lis r24, MotorCallback__10homebuttonFP7OSAlarmP9OSContext@ha
.L_8137434C:
/* 8137434C | 7C 9F D8 2E */	lwzx r4, r31, r27
/* 81374350 | 7E 7F DA 14 */	add r19, r31, r27
/* 81374354 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81374358 | 41 82 03 B8 */	beq .L_81374710
/* 8137435C | 88 04 00 5D */	lbz r0, 0x5d(r4)
/* 81374360 | 7C 03 07 74 */	extsb r3, r0
/* 81374364 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 81374368 | 41 82 01 14 */	beq .L_8137447C
/* 8137436C | 7E 5E D2 14 */	add r18, r30, r26
/* 81374370 | 80 12 00 54 */	lwz r0, 0x54(r18)
/* 81374374 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 81374378 | 40 81 00 8C */	ble .L_81374404
/* 8137437C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81374380 | 40 82 00 A0 */	bne .L_81374420
/* 81374384 | 80 13 00 0C */	lwz r0, 0xc(r19)
/* 81374388 | 28 00 00 02 */	cmplwi r0, 0x2
/* 8137438C | 41 82 00 2C */	beq .L_813743B8
/* 81374390 | 88 04 00 5C */	lbz r0, 0x5c(r4)
/* 81374394 | 28 00 00 02 */	cmplwi r0, 0x2
/* 81374398 | 41 82 00 20 */	beq .L_813743B8
/* 8137439C | 88 04 00 5E */	lbz r0, 0x5e(r4)
/* 813743A0 | 7C 00 07 75 */	extsb. r0, r0
/* 813743A4 | 40 81 00 0C */	ble .L_813743B0
/* 813743A8 | 38 A0 00 01 */	li r5, 0x1
/* 813743AC | 48 00 00 10 */	b .L_813743BC
.L_813743B0:
/* 813743B0 | 38 A0 00 00 */	li r5, 0x0
/* 813743B4 | 48 00 00 08 */	b .L_813743BC
.L_813743B8:
/* 813743B8 | 38 A0 00 01 */	li r5, 0x1
.L_813743BC:
/* 813743BC | 80 72 02 A0 */	lwz r3, 0x2a0(r18)
/* 813743C0 | 7C 9F DA 14 */	add r4, r31, r27
/* 813743C4 | 48 00 33 09 */	bl setKpad__Q210homebutton10ControllerFPC11HBMKPadDatab
/* 813743C8 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813743CC | 80 03 00 28 */	lwz r0, 0x28(r3)
/* 813743D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813743D4 | 40 82 00 4C */	bne .L_81374420
/* 813743D8 | 80 72 02 30 */	lwz r3, 0x230(r18)
/* 813743DC | 38 A0 00 01 */	li r5, 0x1
/* 813743E0 | 80 8D 84 1C */	lwz r4, lbl_8169645C@sda21(r0)
/* 813743E4 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 813743E8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813743EC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813743F0 | 7D 89 03 A6 */	mtctr r12
/* 813743F4 | 4E 80 04 21 */	bctrl
/* 813743F8 | 38 80 00 01 */	li r4, 0x1
/* 813743FC | 4B FD 00 19 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 81374400 | 48 00 00 20 */	b .L_81374420
.L_81374404:
/* 81374404 | 80 72 02 A0 */	lwz r3, 0x2a0(r18)
/* 81374408 | 7E 64 9B 78 */	mr r4, r19
/* 8137440C | 38 A0 00 00 */	li r5, 0x0
/* 81374410 | 48 00 32 BD */	bl setKpad__Q210homebutton10ControllerFPC11HBMKPadDatab
/* 81374414 | 80 72 00 54 */	lwz r3, 0x54(r18)
/* 81374418 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8137441C | 90 12 00 54 */	stw r0, 0x54(r18)
.L_81374420:
/* 81374420 | 80 13 00 0C */	lwz r0, 0xc(r19)
/* 81374424 | 28 00 00 02 */	cmplwi r0, 0x2
/* 81374428 | 41 82 00 98 */	beq .L_813744C0
/* 8137442C | 80 73 00 00 */	lwz r3, 0x0(r19)
/* 81374430 | 88 03 00 5C */	lbz r0, 0x5c(r3)
/* 81374434 | 28 00 00 02 */	cmplwi r0, 0x2
/* 81374438 | 41 82 00 88 */	beq .L_813744C0
/* 8137443C | 88 03 00 5E */	lbz r0, 0x5e(r3)
/* 81374440 | 7C 00 07 75 */	extsb. r0, r0
/* 81374444 | 41 81 00 7C */	bgt .L_813744C0
/* 81374448 | 7E 23 8B 78 */	mr r3, r17
/* 8137444C | 38 81 00 08 */	addi r4, r1, 0x8
/* 81374450 | 48 20 65 D5 */	bl fn_8157AA24
/* 81374454 | 80 93 00 00 */	lwz r4, 0x0(r19)
/* 81374458 | 88 04 00 5D */	lbz r0, 0x5d(r4)
/* 8137445C | 7C 00 07 74 */	extsb r0, r0
/* 81374460 | 2C 00 FF FE */	cmpwi r0, -0x2
/* 81374464 | 41 82 00 5C */	beq .L_813744C0
/* 81374468 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 8137446C | 41 82 00 54 */	beq .L_813744C0
/* 81374470 | 80 72 02 A0 */	lwz r3, 0x2a0(r18)
/* 81374474 | 48 00 33 E5 */	bl setInValidPos__Q210homebutton10ControllerFv
/* 81374478 | 48 00 00 48 */	b .L_813744C0
.L_8137447C:
/* 8137447C | 7E 5E D2 14 */	add r18, r30, r26
/* 81374480 | 80 72 02 A0 */	lwz r3, 0x2a0(r18)
/* 81374484 | 48 00 33 D5 */	bl setInValidPos__Q210homebutton10ControllerFv
/* 81374488 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 8137448C | 80 03 00 28 */	lwz r0, 0x28(r3)
/* 81374490 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81374494 | 40 82 00 2C */	bne .L_813744C0
/* 81374498 | 80 72 02 30 */	lwz r3, 0x230(r18)
/* 8137449C | 38 A0 00 01 */	li r5, 0x1
/* 813744A0 | 80 8D 84 1C */	lwz r4, lbl_8169645C@sda21(r0)
/* 813744A4 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 813744A8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813744AC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813744B0 | 7D 89 03 A6 */	mtctr r12
/* 813744B4 | 4E 80 04 21 */	bctrl
/* 813744B8 | 38 80 00 00 */	li r4, 0x0
/* 813744BC | 4B FC FF 59 */	bl SetVisible__Q34nw4r3lyt4PaneFb
.L_813744C0:
/* 813744C0 | 7C 7E 8A 14 */	add r3, r30, r17
/* 813744C4 | 88 03 00 7C */	lbz r0, 0x7c(r3)
/* 813744C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813744CC | 40 82 00 F0 */	bne .L_813745BC
/* 813744D0 | 9A 83 00 7C */	stb r20, 0x7c(r3)
/* 813744D4 | 7C 7E E2 14 */	add r3, r30, r28
/* 813744D8 | 38 83 01 A4 */	addi r4, r3, 0x1a4
/* 813744DC | 80 72 02 A0 */	lwz r3, 0x2a0(r18)
/* 813744E0 | 48 00 36 51 */	bl getInfoAsync__Q210homebutton10ControllerFP8WPADInfo
/* 813744E4 | 7F C3 F3 78 */	mr r3, r30
/* 813744E8 | 38 91 00 1F */	addi r4, r17, 0x1f
/* 813744EC | 38 A0 00 11 */	li r5, 0x11
/* 813744F0 | 48 00 25 D1 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 813744F4 | 54 60 10 3A */	slwi r0, r3, 2
/* 813744F8 | 7C 7E 02 14 */	add r3, r30, r0
/* 813744FC | 81 E3 02 E4 */	lwz r15, 0x2e4(r3)
/* 81374500 | 7D E3 7B 78 */	mr r3, r15
/* 81374504 | 48 00 37 2D */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81374508 | 92 8F 00 14 */	stw r20, 0x14(r15)
/* 8137450C | 7F C3 F3 78 */	mr r3, r30
/* 81374510 | 38 91 00 1F */	addi r4, r17, 0x1f
/* 81374514 | 38 A0 00 12 */	li r5, 0x12
/* 81374518 | 48 00 25 A9 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 8137451C | 54 60 10 3A */	slwi r0, r3, 2
/* 81374520 | 7F C3 F3 78 */	mr r3, r30
/* 81374524 | 7C BE 02 14 */	add r5, r30, r0
/* 81374528 | 38 91 00 1F */	addi r4, r17, 0x1f
/* 8137452C | 80 C5 02 E4 */	lwz r6, 0x2e4(r5)
/* 81374530 | 38 A0 00 0F */	li r5, 0xf
/* 81374534 | 92 A6 00 14 */	stw r21, 0x14(r6)
/* 81374538 | 48 00 25 89 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 8137453C | 54 60 10 3A */	slwi r0, r3, 2
/* 81374540 | 7C 7E 02 14 */	add r3, r30, r0
/* 81374544 | 81 E3 02 E4 */	lwz r15, 0x2e4(r3)
/* 81374548 | 7D E3 7B 78 */	mr r3, r15
/* 8137454C | 48 00 36 E5 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81374550 | 92 8F 00 14 */	stw r20, 0x14(r15)
/* 81374554 | 7F C3 F3 78 */	mr r3, r30
/* 81374558 | 38 91 00 11 */	addi r4, r17, 0x11
/* 8137455C | 48 00 2B 25 */	bl play_sound__Q210homebutton10HomeButtonFi
/* 81374560 | 80 72 02 A0 */	lwz r3, 0x2a0(r18)
/* 81374564 | 48 00 33 05 */	bl connect__Q210homebutton10ControllerFv
/* 81374568 | 80 72 02 A0 */	lwz r3, 0x2a0(r18)
/* 8137456C | 48 00 35 3D */	bl startMotor__Q210homebutton10ControllerFv
/* 81374570 | 7C 7E EA 14 */	add r3, r30, r29
/* 81374574 | 80 92 02 A0 */	lwz r4, 0x2a0(r18)
/* 81374578 | 39 E3 04 58 */	addi r15, r3, 0x458
/* 8137457C | 7D E3 7B 78 */	mr r3, r15
/* 81374580 | 48 1B 8A E1 */	bl fn_8152D060
/* 81374584 | 7D E3 7B 78 */	mr r3, r15
/* 81374588 | 48 1B 86 B1 */	bl fn_8152CC38
/* 8137458C | 80 16 00 F8 */	lwz r0, 0xf8(r22)
/* 81374590 | 7D E3 7B 78 */	mr r3, r15
/* 81374594 | 38 F8 41 10 */	addi r7, r24, MotorCallback__10homebuttonFP7OSAlarmP9OSContext@l
/* 81374598 | 38 A0 00 00 */	li r5, 0x0
/* 8137459C | 54 00 F0 BE */	srwi r0, r0, 2
/* 813745A0 | 7C 00 BB 96 */	divwu r0, r0, r23
/* 813745A4 | 1C C0 01 2C */	mulli r6, r0, 0x12c
/* 813745A8 | 48 1B 85 9D */	bl OSSetAlarm
/* 813745AC | 7F C3 F3 78 */	mr r3, r30
/* 813745B0 | 7E 24 8B 78 */	mr r4, r17
/* 813745B4 | 38 A0 01 90 */	li r5, 0x190
/* 813745B8 | 4B FF FB 7D */	bl setSpeakerAlarm__Q210homebutton10HomeButtonFii
.L_813745BC:
/* 813745BC | 80 73 00 00 */	lwz r3, 0x0(r19)
/* 813745C0 | 88 03 00 5D */	lbz r0, 0x5d(r3)
/* 813745C4 | 7C 00 07 75 */	extsb. r0, r0
/* 813745C8 | 40 82 01 28 */	bne .L_813746F0
/* 813745CC | 80 13 00 0C */	lwz r0, 0xc(r19)
/* 813745D0 | 28 00 00 02 */	cmplwi r0, 0x2
/* 813745D4 | 40 82 00 34 */	bne .L_81374608
/* 813745D8 | 88 03 00 5C */	lbz r0, 0x5c(r3)
/* 813745DC | 28 00 00 02 */	cmplwi r0, 0x2
/* 813745E0 | 40 82 00 28 */	bne .L_81374608
/* 813745E4 | C0 22 82 D8 */	lfs f1, lbl_816946D8@sda21(r0)
/* 813745E8 | 38 61 00 20 */	addi r3, r1, 0x20
/* 813745EC | C0 62 83 10 */	lfs f3, lbl_81694710@sda21(r0)
/* 813745F0 | FC 40 08 90 */	fmr f2, f1
/* 813745F4 | 48 00 02 91 */	bl __ct__Q34nw4r4math4VEC3Ffff
/* 813745F8 | 7C 64 1B 78 */	mr r4, r3
/* 813745FC | 38 61 00 2C */	addi r3, r1, 0x2c
/* 81374600 | 4B FD 00 85 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 81374604 | 48 00 00 40 */	b .L_81374644
.L_81374608:
/* 81374608 | 80 03 00 38 */	lwz r0, 0x38(r3)
/* 8137460C | 80 63 00 34 */	lwz r3, 0x34(r3)
/* 81374610 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 81374614 | C0 01 00 10 */	lfs f0, 0x10(r1)
/* 81374618 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 8137461C | FC 20 00 50 */	fneg f1, f0
/* 81374620 | C0 41 00 0C */	lfs f2, 0xc(r1)
/* 81374624 | 48 1A A0 59 */	bl Atan2FIdx__Q24nw4r4mathFff
/* 81374628 | EC 1E 00 72 */	fmuls f0, f30, f1
/* 8137462C | D3 E1 00 14 */	stfs f31, 0x14(r1)
/* 81374630 | 38 61 00 2C */	addi r3, r1, 0x2c
/* 81374634 | 38 81 00 14 */	addi r4, r1, 0x14
/* 81374638 | D3 E1 00 18 */	stfs f31, 0x18(r1)
/* 8137463C | D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 81374640 | 4B FD 00 45 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
.L_81374644:
/* 81374644 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 81374648 | 80 03 00 28 */	lwz r0, 0x28(r3)
/* 8137464C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81374650 | 40 82 00 5C */	bne .L_813746AC
/* 81374654 | 80 72 02 30 */	lwz r3, 0x230(r18)
/* 81374658 | 38 A0 00 01 */	li r5, 0x1
/* 8137465C | 80 8D 84 28 */	lwz r4, lbl_81696468@sda21(r0)
/* 81374660 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81374664 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81374668 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8137466C | 7D 89 03 A6 */	mtctr r12
/* 81374670 | 4E 80 04 21 */	bctrl
/* 81374674 | 38 63 00 38 */	addi r3, r3, 0x38
/* 81374678 | 38 81 00 2C */	addi r4, r1, 0x2c
/* 8137467C | 4B FD 00 09 */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 81374680 | 80 72 02 30 */	lwz r3, 0x230(r18)
/* 81374684 | 38 A0 00 01 */	li r5, 0x1
/* 81374688 | 80 8D 84 34 */	lwz r4, lbl_81696474@sda21(r0)
/* 8137468C | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81374690 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81374694 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81374698 | 7D 89 03 A6 */	mtctr r12
/* 8137469C | 4E 80 04 21 */	bctrl
/* 813746A0 | 38 63 00 38 */	addi r3, r3, 0x38
/* 813746A4 | 38 81 00 2C */	addi r4, r1, 0x2c
/* 813746A8 | 4B FC FF DD */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
.L_813746AC:
/* 813746AC | 80 1E 00 78 */	lwz r0, 0x78(r30)
/* 813746B0 | 2C 00 00 64 */	cmpwi r0, 0x64
/* 813746B4 | 40 81 00 14 */	ble .L_813746C8
/* 813746B8 | 7C 9E E2 14 */	add r4, r30, r28
/* 813746BC | 80 72 02 A0 */	lwz r3, 0x2a0(r18)
/* 813746C0 | 38 84 01 A4 */	addi r4, r4, 0x1a4
/* 813746C4 | 48 00 34 6D */	bl getInfoAsync__Q210homebutton10ControllerFP8WPADInfo
.L_813746C8:
/* 813746C8 | 7F C3 F3 78 */	mr r3, r30
/* 813746CC | 7E 24 8B 78 */	mr r4, r17
/* 813746D0 | 48 00 01 C5 */	bl update_controller__Q210homebutton10HomeButtonFi
/* 813746D4 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813746D8 | 80 03 00 28 */	lwz r0, 0x28(r3)
/* 813746DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813746E0 | 40 82 00 10 */	bne .L_813746F0
/* 813746E4 | 7F C3 F3 78 */	mr r3, r30
/* 813746E8 | 7E 24 8B 78 */	mr r4, r17
/* 813746EC | 48 00 07 C9 */	bl update_posController__Q210homebutton10HomeButtonFi
.L_813746F0:
/* 813746F0 | 80 72 02 A0 */	lwz r3, 0x2a0(r18)
/* 813746F4 | 48 00 34 E1 */	bl getBatteryFlag__Q210homebutton10ControllerCFv
/* 813746F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813746FC | 41 82 01 24 */	beq .L_81374820
/* 81374700 | 7F C3 F3 78 */	mr r3, r30
/* 81374704 | 7E 24 8B 78 */	mr r4, r17
/* 81374708 | 4B FF F6 C9 */	bl calc_battery__Q210homebutton10HomeButtonFi
/* 8137470C | 48 00 01 14 */	b .L_81374820
.L_81374710:
/* 81374710 | 7E 5E 8A 14 */	add r18, r30, r17
/* 81374714 | 88 12 00 7C */	lbz r0, 0x7c(r18)
/* 81374718 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137471C | 41 82 00 F8 */	beq .L_81374814
/* 81374720 | 7F C3 F3 78 */	mr r3, r30
/* 81374724 | 38 91 00 1F */	addi r4, r17, 0x1f
/* 81374728 | 38 A0 00 11 */	li r5, 0x11
/* 8137472C | 48 00 23 95 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81374730 | 54 60 10 3A */	slwi r0, r3, 2
/* 81374734 | 7C 7E 02 14 */	add r3, r30, r0
/* 81374738 | 81 E3 02 E4 */	lwz r15, 0x2e4(r3)
/* 8137473C | 7D E3 7B 78 */	mr r3, r15
/* 81374740 | 48 00 34 F1 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81374744 | 92 8F 00 14 */	stw r20, 0x14(r15)
/* 81374748 | 7F C3 F3 78 */	mr r3, r30
/* 8137474C | 38 91 00 1F */	addi r4, r17, 0x1f
/* 81374750 | 38 A0 00 12 */	li r5, 0x12
/* 81374754 | 48 00 23 6D */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81374758 | 54 60 10 3A */	slwi r0, r3, 2
/* 8137475C | 7C 7E 02 14 */	add r3, r30, r0
/* 81374760 | 81 E3 02 E4 */	lwz r15, 0x2e4(r3)
/* 81374764 | 7D E3 7B 78 */	mr r3, r15
/* 81374768 | 48 00 34 C9 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 8137476C | 92 8F 00 14 */	stw r20, 0x14(r15)
/* 81374770 | 7E 79 DA 14 */	add r19, r25, r27
/* 81374774 | 3A 00 00 00 */	li r16, 0x0
/* 81374778 | 39 E0 00 00 */	li r15, 0x0
.L_8137477C:
/* 8137477C | 80 7E 02 2C */	lwz r3, 0x22c(r30)
/* 81374780 | 38 A0 00 01 */	li r5, 0x1
/* 81374784 | 7C 93 78 2E */	lwzx r4, r19, r15
/* 81374788 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8137478C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81374790 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81374794 | 7D 89 03 A6 */	mtctr r12
/* 81374798 | 4E 80 04 21 */	bctrl
/* 8137479C | 38 80 00 00 */	li r4, 0x0
/* 813747A0 | 4B FC FC 75 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813747A4 | 3A 10 00 01 */	addi r16, r16, 0x1
/* 813747A8 | 39 EF 00 04 */	addi r15, r15, 0x4
/* 813747AC | 2C 10 00 04 */	cmpwi r16, 0x4
/* 813747B0 | 41 80 FF CC */	blt .L_8137477C
/* 813747B4 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813747B8 | 80 03 00 28 */	lwz r0, 0x28(r3)
/* 813747BC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813747C0 | 40 82 00 30 */	bne .L_813747F0
/* 813747C4 | 7C 7E D2 14 */	add r3, r30, r26
/* 813747C8 | 80 8D 84 1C */	lwz r4, lbl_8169645C@sda21(r0)
/* 813747CC | 80 63 02 30 */	lwz r3, 0x230(r3)
/* 813747D0 | 38 A0 00 01 */	li r5, 0x1
/* 813747D4 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 813747D8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813747DC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813747E0 | 7D 89 03 A6 */	mtctr r12
/* 813747E4 | 4E 80 04 21 */	bctrl
/* 813747E8 | 38 80 00 00 */	li r4, 0x0
/* 813747EC | 4B FC FC 29 */	bl SetVisible__Q34nw4r3lyt4PaneFb
.L_813747F0:
/* 813747F0 | 7D FE D2 14 */	add r15, r30, r26
/* 813747F4 | 92 AF 00 54 */	stw r21, 0x54(r15)
/* 813747F8 | 9A B2 00 7C */	stb r21, 0x7c(r18)
/* 813747FC | 80 6F 02 A0 */	lwz r3, 0x2a0(r15)
/* 81374800 | 48 00 30 59 */	bl setInValidPos__Q210homebutton10ControllerFv
/* 81374804 | 80 6F 02 A0 */	lwz r3, 0x2a0(r15)
/* 81374808 | 48 00 30 3D */	bl clrKpadButton__Q210homebutton10ControllerFv
/* 8137480C | 80 6F 02 A0 */	lwz r3, 0x2a0(r15)
/* 81374810 | 48 00 30 69 */	bl disconnect__Q210homebutton10ControllerFv
.L_81374814:
/* 81374814 | 7F C3 F3 78 */	mr r3, r30
/* 81374818 | 7E 24 8B 78 */	mr r4, r17
/* 8137481C | 48 00 1F C9 */	bl reset_guiManager__Q210homebutton10HomeButtonFi
.L_81374820:
/* 81374820 | 3A 31 00 01 */	addi r17, r17, 0x1
/* 81374824 | 3B 9C 00 18 */	addi r28, r28, 0x18
/* 81374828 | 2C 11 00 04 */	cmpwi r17, 0x4
/* 8137482C | 3B 7B 00 10 */	addi r27, r27, 0x10
/* 81374830 | 3B 5A 00 04 */	addi r26, r26, 0x4
/* 81374834 | 3B BD 00 30 */	addi r29, r29, 0x30
/* 81374838 | 41 80 FB 14 */	blt .L_8137434C
/* 8137483C | 80 7E 00 78 */	lwz r3, 0x78(r30)
/* 81374840 | 2C 03 00 64 */	cmpwi r3, 0x64
/* 81374844 | 40 81 00 10 */	ble .L_81374854
/* 81374848 | 38 00 00 00 */	li r0, 0x0
/* 8137484C | 90 1E 00 78 */	stw r0, 0x78(r30)
/* 81374850 | 48 00 00 0C */	b .L_8137485C
.L_81374854:
/* 81374854 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81374858 | 90 1E 00 78 */	stw r0, 0x78(r30)
.L_8137485C:
/* 8137485C | E3 E1 00 98 */	psq_l f31, 0x98(r1), 0, qr0
/* 81374860 | CB E1 00 90 */	lfd f31, 0x90(r1)
/* 81374864 | E3 C1 00 88 */	psq_l f30, 0x88(r1), 0, qr0
/* 81374868 | 39 61 00 80 */	addi r11, r1, 0x80
/* 8137486C | CB C1 00 80 */	lfd f30, 0x80(r1)
/* 81374870 | 48 28 4C 6D */	bl _restgpr_15
/* 81374874 | 80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 81374878 | 7C 08 03 A6 */	mtlr r0
/* 8137487C | 38 21 00 A0 */	addi r1, r1, 0xa0
/* 81374880 | 4E 80 00 20 */	blr
.endfn update__Q210homebutton10HomeButtonFPC17HBMControllerData

# .text:0x32DC | 0x81374884 | size: 0x10
# nw4r::math::VEC3::VEC3(float, float, float)
.fn __ct__Q34nw4r4math4VEC3Ffff, global
/* 81374884 | D0 23 00 00 */	stfs f1, 0x0(r3)
/* 81374888 | D0 43 00 04 */	stfs f2, 0x4(r3)
/* 8137488C | D0 63 00 08 */	stfs f3, 0x8(r3)
/* 81374890 | 4E 80 00 20 */	blr
.endfn __ct__Q34nw4r4math4VEC3Ffff

# .text:0x32EC | 0x81374894 | size: 0x620
# homebutton::HomeButton::update_controller(int)
.fn update_controller__Q210homebutton10HomeButtonFi, global
/* 81374894 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 81374898 | 7C 08 02 A6 */	mflr r0
/* 8137489C | 90 01 00 74 */	stw r0, 0x74(r1)
/* 813748A0 | DB E1 00 60 */	stfd f31, 0x60(r1)
/* 813748A4 | F3 E1 00 68 */	psq_st f31, 0x68(r1), 0, qr0
/* 813748A8 | DB C1 00 50 */	stfd f30, 0x50(r1)
/* 813748AC | F3 C1 00 58 */	psq_st f30, 0x58(r1), 0, qr0
/* 813748B0 | 39 61 00 50 */	addi r11, r1, 0x50
/* 813748B4 | 48 28 4C 11 */	bl _savegpr_28
/* 813748B8 | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 813748BC | 3C A0 43 30 */	lis r5, 0x4330
/* 813748C0 | 90 A1 00 28 */	stw r5, 0x28(r1)
/* 813748C4 | 7C 7F 1B 78 */	mr r31, r3
/* 813748C8 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813748CC | 7C 9D 23 78 */	mr r29, r4
/* 813748D0 | 90 A1 00 30 */	stw r5, 0x30(r1)
/* 813748D4 | 40 82 05 60 */	bne .L_81374E34
/* 813748D8 | 54 80 10 3A */	slwi r0, r4, 2
/* 813748DC | 7C 63 02 14 */	add r3, r3, r0
/* 813748E0 | 80 63 02 A0 */	lwz r3, 0x2a0(r3)
/* 813748E4 | 48 00 31 C1 */	bl getController__Q210homebutton10ControllerFv
/* 813748E8 | C0 03 00 08 */	lfs f0, 0x8(r3)
/* 813748EC | 7C 7C 1B 78 */	mr r28, r3
/* 813748F0 | C0 82 83 18 */	lfs f4, lbl_81694718@sda21(r0)
/* 813748F4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813748F8 | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 813748FC | 38 A1 00 18 */	addi r5, r1, 0x18
/* 81374900 | C0 62 83 1C */	lfs f3, lbl_8169471C@sda21(r0)
/* 81374904 | C0 23 00 0C */	lfs f1, 0xc(r3)
/* 81374908 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8137490C | C0 42 83 20 */	lfs f2, lbl_81694720@sda21(r0)
/* 81374910 | C0 02 83 24 */	lfs f0, lbl_81694724@sda21(r0)
/* 81374914 | D0 21 00 0C */	stfs f1, 0xc(r1)
/* 81374918 | C0 22 83 28 */	lfs f1, lbl_81694728@sda21(r0)
/* 8137491C | D0 81 00 18 */	stfs f4, 0x18(r1)
/* 81374920 | D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 81374924 | D0 41 00 20 */	stfs f2, 0x20(r1)
/* 81374928 | D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8137492C | 48 21 0F 75 */	bl fn_815858A0
/* 81374930 | 48 1F 56 85 */	bl SCGetAspectRatio
/* 81374934 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81374938 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8137493C | 40 82 00 20 */	bne .L_8137495C
/* 81374940 | C0 21 00 10 */	lfs f1, 0x10(r1)
/* 81374944 | C0 42 83 2C */	lfs f2, lbl_8169472C@sda21(r0)
/* 81374948 | C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8137494C | EC 21 00 B2 */	fmuls f1, f1, f2
/* 81374950 | EC 00 00 B2 */	fmuls f0, f0, f2
/* 81374954 | D0 21 00 10 */	stfs f1, 0x10(r1)
/* 81374958 | D0 01 00 14 */	stfs f0, 0x14(r1)
.L_8137495C:
/* 8137495C | C0 02 83 30 */	lfs f0, lbl_81694730@sda21(r0)
/* 81374960 | C0 21 00 10 */	lfs f1, 0x10(r1)
/* 81374964 | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 81374968 | 40 81 00 0C */	ble .L_81374974
/* 8137496C | D0 01 00 10 */	stfs f0, 0x10(r1)
/* 81374970 | 48 00 00 40 */	b .L_813749B0
.L_81374974:
/* 81374974 | C0 02 83 34 */	lfs f0, lbl_81694734@sda21(r0)
/* 81374978 | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8137497C | 40 80 00 0C */	bge .L_81374988
/* 81374980 | D0 01 00 10 */	stfs f0, 0x10(r1)
/* 81374984 | 48 00 00 2C */	b .L_813749B0
.L_81374988:
/* 81374988 | C0 02 83 38 */	lfs f0, lbl_81694738@sda21(r0)
/* 8137498C | C0 21 00 14 */	lfs f1, 0x14(r1)
/* 81374990 | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 81374994 | 40 81 00 0C */	ble .L_813749A0
/* 81374998 | D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8137499C | 48 00 00 14 */	b .L_813749B0
.L_813749A0:
/* 813749A0 | C0 02 83 3C */	lfs f0, lbl_8169473C@sda21(r0)
/* 813749A4 | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 813749A8 | 40 80 00 08 */	bge .L_813749B0
/* 813749AC | D0 01 00 14 */	stfs f0, 0x14(r1)
.L_813749B0:
/* 813749B0 | 80 7F 02 44 */	lwz r3, 0x244(r31)
/* 813749B4 | 7F A4 EB 78 */	mr r4, r29
/* 813749B8 | C0 01 00 14 */	lfs f0, 0x14(r1)
/* 813749BC | 7F 88 E3 78 */	mr r8, r28
/* 813749C0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813749C4 | FC 40 00 50 */	fneg f2, f0
/* 813749C8 | C0 21 00 10 */	lfs f1, 0x10(r1)
/* 813749CC | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 813749D0 | 80 BC 00 10 */	lwz r5, 0x10(r28)
/* 813749D4 | 80 DC 00 14 */	lwz r6, 0x14(r28)
/* 813749D8 | 80 FC 00 18 */	lwz r7, 0x18(r28)
/* 813749DC | 7D 89 03 A6 */	mtctr r12
/* 813749E0 | 4E 80 04 21 */	bctrl
/* 813749E4 | 80 7C 00 10 */	lwz r3, 0x10(r28)
/* 813749E8 | 54 60 00 C6 */	rlwinm r0, r3, 0, 3, 3
/* 813749EC | 50 60 04 21 */	rlwimi. r0, r3, 0, 16, 16
/* 813749F0 | 41 82 01 24 */	beq .L_81374B14
/* 813749F4 | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 813749F8 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813749FC | 40 82 01 18 */	bne .L_81374B14
/* 81374A00 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 81374A04 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81374A08 | 40 82 00 98 */	bne .L_81374AA0
/* 81374A0C | 80 7F 02 44 */	lwz r3, 0x244(r31)
/* 81374A10 | 7F A4 EB 78 */	mr r4, r29
/* 81374A14 | C0 22 82 D8 */	lfs f1, lbl_816946D8@sda21(r0)
/* 81374A18 | 38 A0 00 00 */	li r5, 0x0
/* 81374A1C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81374A20 | 38 C0 00 00 */	li r6, 0x0
/* 81374A24 | C0 42 83 40 */	lfs f2, lbl_81694740@sda21(r0)
/* 81374A28 | 38 E0 00 00 */	li r7, 0x0
/* 81374A2C | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81374A30 | 39 00 00 00 */	li r8, 0x0
/* 81374A34 | 7D 89 03 A6 */	mtctr r12
/* 81374A38 | 4E 80 04 21 */	bctrl
/* 81374A3C | 38 00 00 04 */	li r0, 0x4
/* 81374A40 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 81374A44 | 83 DF 04 1C */	lwz r30, 0x41c(r31)
/* 81374A48 | 7F C3 F3 78 */	mr r3, r30
/* 81374A4C | 48 00 31 E5 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81374A50 | 3B A0 00 01 */	li r29, 0x1
/* 81374A54 | 38 00 00 02 */	li r0, 0x2
/* 81374A58 | 93 BE 00 14 */	stw r29, 0x14(r30)
/* 81374A5C | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 81374A60 | 83 DF 04 14 */	lwz r30, 0x414(r31)
/* 81374A64 | 7F C3 F3 78 */	mr r3, r30
/* 81374A68 | 48 00 31 C9 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81374A6C | 93 BE 00 14 */	stw r29, 0x14(r30)
/* 81374A70 | 83 DF 04 38 */	lwz r30, 0x438(r31)
/* 81374A74 | 7F C3 F3 78 */	mr r3, r30
/* 81374A78 | 48 00 31 B9 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81374A7C | 93 BE 00 14 */	stw r29, 0x14(r30)
/* 81374A80 | 38 60 00 0A */	li r3, 0xa
/* 81374A84 | 38 00 00 00 */	li r0, 0x0
/* 81374A88 | 38 80 00 08 */	li r4, 0x8
/* 81374A8C | 90 7F 00 10 */	stw r3, 0x10(r31)
/* 81374A90 | 7F E3 FB 78 */	mr r3, r31
/* 81374A94 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 81374A98 | 48 00 25 E9 */	bl play_sound__Q210homebutton10HomeButtonFi
/* 81374A9C | 48 00 03 F0 */	b .L_81374E8C
.L_81374AA0:
/* 81374AA0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81374AA4 | 40 82 03 E8 */	bne .L_81374E8C
/* 81374AA8 | 80 7F 04 18 */	lwz r3, 0x418(r31)
/* 81374AAC | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81374AB0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81374AB4 | 40 82 00 0C */	bne .L_81374AC0
/* 81374AB8 | 38 00 00 00 */	li r0, 0x0
/* 81374ABC | 90 03 00 14 */	stw r0, 0x14(r3)
.L_81374AC0:
/* 81374AC0 | 80 7F 04 3C */	lwz r3, 0x43c(r31)
/* 81374AC4 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81374AC8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81374ACC | 40 82 00 0C */	bne .L_81374AD8
/* 81374AD0 | 38 00 00 00 */	li r0, 0x0
/* 81374AD4 | 90 03 00 14 */	stw r0, 0x14(r3)
.L_81374AD8:
/* 81374AD8 | 38 60 00 00 */	li r3, 0x0
/* 81374ADC | 38 00 00 04 */	li r0, 0x4
/* 81374AE0 | 90 7F 00 B0 */	stw r3, 0xb0(r31)
/* 81374AE4 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 81374AE8 | 83 BF 04 1C */	lwz r29, 0x41c(r31)
/* 81374AEC | 7F A3 EB 78 */	mr r3, r29
/* 81374AF0 | 48 00 31 41 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81374AF4 | 38 60 00 01 */	li r3, 0x1
/* 81374AF8 | 38 00 00 0E */	li r0, 0xe
/* 81374AFC | 90 7D 00 14 */	stw r3, 0x14(r29)
/* 81374B00 | 7F E3 FB 78 */	mr r3, r31
/* 81374B04 | 38 80 00 01 */	li r4, 0x1
/* 81374B08 | 90 1F 00 10 */	stw r0, 0x10(r31)
/* 81374B0C | 48 00 25 75 */	bl play_sound__Q210homebutton10HomeButtonFi
/* 81374B10 | 48 00 03 7C */	b .L_81374E8C
.L_81374B14:
/* 81374B14 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 81374B18 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81374B1C | 40 82 03 70 */	bne .L_81374E8C
/* 81374B20 | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 81374B24 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81374B28 | 40 82 03 64 */	bne .L_81374E8C
/* 81374B2C | 54 60 04 E7 */	rlwinm. r0, r3, 0, 19, 19
/* 81374B30 | 40 82 00 0C */	bne .L_81374B3C
/* 81374B34 | 54 60 03 DF */	rlwinm. r0, r3, 0, 15, 15
/* 81374B38 | 41 82 01 74 */	beq .L_81374CAC
.L_81374B3C:
/* 81374B3C | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 81374B40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81374B44 | 40 81 01 58 */	ble .L_81374C9C
/* 81374B48 | 38 83 FF FF */	subi r4, r3, 0x1
/* 81374B4C | 7F E3 FB 78 */	mr r3, r31
/* 81374B50 | 90 9F 00 80 */	stw r4, 0x80(r31)
/* 81374B54 | 38 84 00 15 */	addi r4, r4, 0x15
/* 81374B58 | 38 A0 00 0A */	li r5, 0xa
/* 81374B5C | 48 00 1F 65 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81374B60 | 54 60 10 3A */	slwi r0, r3, 2
/* 81374B64 | 3B A0 00 00 */	li r29, 0x0
/* 81374B68 | 7C 9F 02 14 */	add r4, r31, r0
/* 81374B6C | 7F E3 FB 78 */	mr r3, r31
/* 81374B70 | 80 84 02 E4 */	lwz r4, 0x2e4(r4)
/* 81374B74 | 38 A0 00 09 */	li r5, 0x9
/* 81374B78 | 93 A4 00 14 */	stw r29, 0x14(r4)
/* 81374B7C | 80 9F 00 80 */	lwz r4, 0x80(r31)
/* 81374B80 | 38 84 00 15 */	addi r4, r4, 0x15
/* 81374B84 | 48 00 1F 3D */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81374B88 | 54 60 10 3A */	slwi r0, r3, 2
/* 81374B8C | 7C 7F 02 14 */	add r3, r31, r0
/* 81374B90 | 83 83 02 E4 */	lwz r28, 0x2e4(r3)
/* 81374B94 | 7F 83 E3 78 */	mr r3, r28
/* 81374B98 | 48 00 30 99 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81374B9C | 3B C0 00 01 */	li r30, 0x1
/* 81374BA0 | 7F E3 FB 78 */	mr r3, r31
/* 81374BA4 | 93 DC 00 14 */	stw r30, 0x14(r28)
/* 81374BA8 | 38 80 00 0B */	li r4, 0xb
/* 81374BAC | 38 A0 00 05 */	li r5, 0x5
/* 81374BB0 | 48 00 1F 11 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81374BB4 | 54 60 10 3A */	slwi r0, r3, 2
/* 81374BB8 | 7C 7F 02 14 */	add r3, r31, r0
/* 81374BBC | 83 83 02 E4 */	lwz r28, 0x2e4(r3)
/* 81374BC0 | 7F 83 E3 78 */	mr r3, r28
/* 81374BC4 | 48 00 30 6D */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81374BC8 | 93 DC 00 14 */	stw r30, 0x14(r28)
/* 81374BCC | 80 1F 00 80 */	lwz r0, 0x80(r31)
/* 81374BD0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81374BD4 | 40 82 00 64 */	bne .L_81374C38
/* 81374BD8 | 7F E3 FB 78 */	mr r3, r31
/* 81374BDC | 38 80 00 0C */	li r4, 0xc
/* 81374BE0 | 48 00 24 A1 */	bl play_sound__Q210homebutton10HomeButtonFi
/* 81374BE4 | CB E2 82 F8 */	lfd f31, lbl_816946F8@sda21(r0)
/* 81374BE8 | 3B C0 00 00 */	li r30, 0x0
/* 81374BEC | C3 C2 82 F0 */	lfs f30, lbl_816946F0@sda21(r0)
.L_81374BF0:
/* 81374BF0 | 80 1F 00 80 */	lwz r0, 0x80(r31)
/* 81374BF4 | 7F 9F EA 14 */	add r28, r31, r29
/* 81374BF8 | 80 7C 02 A0 */	lwz r3, 0x2a0(r28)
/* 81374BFC | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 81374C00 | 90 01 00 2C */	stw r0, 0x2c(r1)
/* 81374C04 | C8 01 00 28 */	lfd f0, 0x28(r1)
/* 81374C08 | EC 00 F8 28 */	fsubs f0, f0, f31
/* 81374C0C | EC 20 F0 24 */	fdivs f1, f0, f30
/* 81374C10 | 48 00 2C 6D */	bl setSpeakerVol__Q210homebutton10ControllerFf
/* 81374C14 | 80 7C 02 A0 */	lwz r3, 0x2a0(r28)
/* 81374C18 | 38 A0 00 01 */	li r5, 0x1
/* 81374C1C | 80 9F 06 08 */	lwz r4, 0x608(r31)
/* 81374C20 | 48 00 2C 65 */	bl playSound__Q210homebutton10ControllerFPQ34nw4r3snd18SoundArchivePlayeri
/* 81374C24 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81374C28 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 81374C2C | 2C 1E 00 04 */	cmpwi r30, 0x4
/* 81374C30 | 41 80 FF C0 */	blt .L_81374BF0
/* 81374C34 | 48 00 02 58 */	b .L_81374E8C
.L_81374C38:
/* 81374C38 | 7F E3 FB 78 */	mr r3, r31
/* 81374C3C | 38 80 00 0A */	li r4, 0xa
/* 81374C40 | 48 00 24 41 */	bl play_sound__Q210homebutton10HomeButtonFi
/* 81374C44 | CB E2 82 F8 */	lfd f31, lbl_816946F8@sda21(r0)
/* 81374C48 | 3B A0 00 00 */	li r29, 0x0
/* 81374C4C | C3 C2 82 F0 */	lfs f30, lbl_816946F0@sda21(r0)
/* 81374C50 | 3B C0 00 00 */	li r30, 0x0
.L_81374C54:
/* 81374C54 | 80 1F 00 80 */	lwz r0, 0x80(r31)
/* 81374C58 | 7F 9F F2 14 */	add r28, r31, r30
/* 81374C5C | 80 7C 02 A0 */	lwz r3, 0x2a0(r28)
/* 81374C60 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 81374C64 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81374C68 | C8 01 00 30 */	lfd f0, 0x30(r1)
/* 81374C6C | EC 00 F8 28 */	fsubs f0, f0, f31
/* 81374C70 | EC 20 F0 24 */	fdivs f1, f0, f30
/* 81374C74 | 48 00 2C 09 */	bl setSpeakerVol__Q210homebutton10ControllerFf
/* 81374C78 | 80 7C 02 A0 */	lwz r3, 0x2a0(r28)
/* 81374C7C | 38 A0 00 01 */	li r5, 0x1
/* 81374C80 | 80 9F 06 08 */	lwz r4, 0x608(r31)
/* 81374C84 | 48 00 2C 01 */	bl playSound__Q210homebutton10ControllerFPQ34nw4r3snd18SoundArchivePlayeri
/* 81374C88 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 81374C8C | 3B DE 00 04 */	addi r30, r30, 0x4
/* 81374C90 | 2C 1D 00 04 */	cmpwi r29, 0x4
/* 81374C94 | 41 80 FF C0 */	blt .L_81374C54
/* 81374C98 | 48 00 01 F4 */	b .L_81374E8C
.L_81374C9C:
/* 81374C9C | 7F E3 FB 78 */	mr r3, r31
/* 81374CA0 | 38 80 00 0D */	li r4, 0xd
/* 81374CA4 | 48 00 23 DD */	bl play_sound__Q210homebutton10HomeButtonFi
/* 81374CA8 | 48 00 01 E4 */	b .L_81374E8C
.L_81374CAC:
/* 81374CAC | 54 60 06 F7 */	rlwinm. r0, r3, 0, 27, 27
/* 81374CB0 | 40 82 00 0C */	bne .L_81374CBC
/* 81374CB4 | 54 60 03 9D */	rlwinm. r0, r3, 0, 14, 14
/* 81374CB8 | 41 82 01 D4 */	beq .L_81374E8C
.L_81374CBC:
/* 81374CBC | 80 9F 00 80 */	lwz r4, 0x80(r31)
/* 81374CC0 | 2C 04 00 0A */	cmpwi r4, 0xa
/* 81374CC4 | 40 80 01 60 */	bge .L_81374E24
/* 81374CC8 | 7F E3 FB 78 */	mr r3, r31
/* 81374CCC | 38 84 00 15 */	addi r4, r4, 0x15
/* 81374CD0 | 38 A0 00 09 */	li r5, 0x9
/* 81374CD4 | 48 00 1D ED */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81374CD8 | 54 60 10 3A */	slwi r0, r3, 2
/* 81374CDC | 38 C0 00 00 */	li r6, 0x0
/* 81374CE0 | 7C 9F 02 14 */	add r4, r31, r0
/* 81374CE4 | 7F E3 FB 78 */	mr r3, r31
/* 81374CE8 | 80 84 02 E4 */	lwz r4, 0x2e4(r4)
/* 81374CEC | 38 A0 00 0A */	li r5, 0xa
/* 81374CF0 | 90 C4 00 14 */	stw r6, 0x14(r4)
/* 81374CF4 | 80 9F 00 80 */	lwz r4, 0x80(r31)
/* 81374CF8 | 38 84 00 15 */	addi r4, r4, 0x15
/* 81374CFC | 48 00 1D C5 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81374D00 | 54 60 10 3A */	slwi r0, r3, 2
/* 81374D04 | 7C 7F 02 14 */	add r3, r31, r0
/* 81374D08 | 83 83 02 E4 */	lwz r28, 0x2e4(r3)
/* 81374D0C | 7F 83 E3 78 */	mr r3, r28
/* 81374D10 | 48 00 2F 21 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81374D14 | 3B C0 00 01 */	li r30, 0x1
/* 81374D18 | 7F E3 FB 78 */	mr r3, r31
/* 81374D1C | 93 DC 00 14 */	stw r30, 0x14(r28)
/* 81374D20 | 38 80 00 0C */	li r4, 0xc
/* 81374D24 | 38 A0 00 05 */	li r5, 0x5
/* 81374D28 | 80 DF 00 80 */	lwz r6, 0x80(r31)
/* 81374D2C | 38 06 00 01 */	addi r0, r6, 0x1
/* 81374D30 | 90 1F 00 80 */	stw r0, 0x80(r31)
/* 81374D34 | 48 00 1D 8D */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81374D38 | 54 60 10 3A */	slwi r0, r3, 2
/* 81374D3C | 7C 7F 02 14 */	add r3, r31, r0
/* 81374D40 | 83 83 02 E4 */	lwz r28, 0x2e4(r3)
/* 81374D44 | 7F 83 E3 78 */	mr r3, r28
/* 81374D48 | 48 00 2E E9 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81374D4C | 93 DC 00 14 */	stw r30, 0x14(r28)
/* 81374D50 | 80 1F 00 80 */	lwz r0, 0x80(r31)
/* 81374D54 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 81374D58 | 40 82 00 68 */	bne .L_81374DC0
/* 81374D5C | 7F E3 FB 78 */	mr r3, r31
/* 81374D60 | 38 80 00 0B */	li r4, 0xb
/* 81374D64 | 48 00 23 1D */	bl play_sound__Q210homebutton10HomeButtonFi
/* 81374D68 | CB E2 82 F8 */	lfd f31, lbl_816946F8@sda21(r0)
/* 81374D6C | 3B A0 00 00 */	li r29, 0x0
/* 81374D70 | C3 C2 82 F0 */	lfs f30, lbl_816946F0@sda21(r0)
/* 81374D74 | 3B C0 00 00 */	li r30, 0x0
.L_81374D78:
/* 81374D78 | 80 1F 00 80 */	lwz r0, 0x80(r31)
/* 81374D7C | 7F 9F F2 14 */	add r28, r31, r30
/* 81374D80 | 80 7C 02 A0 */	lwz r3, 0x2a0(r28)
/* 81374D84 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 81374D88 | 90 01 00 2C */	stw r0, 0x2c(r1)
/* 81374D8C | C8 01 00 28 */	lfd f0, 0x28(r1)
/* 81374D90 | EC 00 F8 28 */	fsubs f0, f0, f31
/* 81374D94 | EC 20 F0 24 */	fdivs f1, f0, f30
/* 81374D98 | 48 00 2A E5 */	bl setSpeakerVol__Q210homebutton10ControllerFf
/* 81374D9C | 80 7C 02 A0 */	lwz r3, 0x2a0(r28)
/* 81374DA0 | 38 A0 00 01 */	li r5, 0x1
/* 81374DA4 | 80 9F 06 08 */	lwz r4, 0x608(r31)
/* 81374DA8 | 48 00 2A DD */	bl playSound__Q210homebutton10ControllerFPQ34nw4r3snd18SoundArchivePlayeri
/* 81374DAC | 3B BD 00 01 */	addi r29, r29, 0x1
/* 81374DB0 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 81374DB4 | 2C 1D 00 04 */	cmpwi r29, 0x4
/* 81374DB8 | 41 80 FF C0 */	blt .L_81374D78
/* 81374DBC | 48 00 00 D0 */	b .L_81374E8C
.L_81374DC0:
/* 81374DC0 | 7F E3 FB 78 */	mr r3, r31
/* 81374DC4 | 38 80 00 09 */	li r4, 0x9
/* 81374DC8 | 48 00 22 B9 */	bl play_sound__Q210homebutton10HomeButtonFi
/* 81374DCC | CB C2 82 F8 */	lfd f30, lbl_816946F8@sda21(r0)
/* 81374DD0 | 3B A0 00 00 */	li r29, 0x0
/* 81374DD4 | C3 E2 82 F0 */	lfs f31, lbl_816946F0@sda21(r0)
/* 81374DD8 | 3B C0 00 00 */	li r30, 0x0
.L_81374DDC:
/* 81374DDC | 80 1F 00 80 */	lwz r0, 0x80(r31)
/* 81374DE0 | 7F 9F F2 14 */	add r28, r31, r30
/* 81374DE4 | 80 7C 02 A0 */	lwz r3, 0x2a0(r28)
/* 81374DE8 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 81374DEC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81374DF0 | C8 01 00 30 */	lfd f0, 0x30(r1)
/* 81374DF4 | EC 00 F0 28 */	fsubs f0, f0, f30
/* 81374DF8 | EC 20 F8 24 */	fdivs f1, f0, f31
/* 81374DFC | 48 00 2A 81 */	bl setSpeakerVol__Q210homebutton10ControllerFf
/* 81374E00 | 80 7C 02 A0 */	lwz r3, 0x2a0(r28)
/* 81374E04 | 38 A0 00 01 */	li r5, 0x1
/* 81374E08 | 80 9F 06 08 */	lwz r4, 0x608(r31)
/* 81374E0C | 48 00 2A 79 */	bl playSound__Q210homebutton10ControllerFPQ34nw4r3snd18SoundArchivePlayeri
/* 81374E10 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 81374E14 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 81374E18 | 2C 1D 00 04 */	cmpwi r29, 0x4
/* 81374E1C | 41 80 FF C0 */	blt .L_81374DDC
/* 81374E20 | 48 00 00 6C */	b .L_81374E8C
.L_81374E24:
/* 81374E24 | 7F E3 FB 78 */	mr r3, r31
/* 81374E28 | 38 80 00 0D */	li r4, 0xd
/* 81374E2C | 48 00 22 55 */	bl play_sound__Q210homebutton10HomeButtonFi
/* 81374E30 | 48 00 00 5C */	b .L_81374E8C
.L_81374E34:
/* 81374E34 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81374E38 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81374E3C | 40 82 00 50 */	bne .L_81374E8C
/* 81374E40 | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 81374E44 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 81374E48 | 40 82 00 44 */	bne .L_81374E8C
/* 81374E4C | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81374E50 | 54 00 10 3A */	slwi r0, r0, 2
/* 81374E54 | 7C A3 02 14 */	add r5, r3, r0
/* 81374E58 | 80 A5 04 0C */	lwz r5, 0x40c(r5)
/* 81374E5C | 80 05 00 14 */	lwz r0, 0x14(r5)
/* 81374E60 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81374E64 | 41 82 00 28 */	beq .L_81374E8C
/* 81374E68 | 54 80 10 3A */	slwi r0, r4, 2
/* 81374E6C | 7C 63 02 14 */	add r3, r3, r0
/* 81374E70 | 80 63 02 A0 */	lwz r3, 0x2a0(r3)
/* 81374E74 | 48 00 2C 31 */	bl getController__Q210homebutton10ControllerFv
/* 81374E78 | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 81374E7C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81374E80 | 41 82 00 0C */	beq .L_81374E8C
/* 81374E84 | 38 00 0E 10 */	li r0, 0xe10
/* 81374E88 | 90 1F 00 18 */	stw r0, 0x18(r31)
.L_81374E8C:
/* 81374E8C | E3 E1 00 68 */	psq_l f31, 0x68(r1), 0, qr0
/* 81374E90 | CB E1 00 60 */	lfd f31, 0x60(r1)
/* 81374E94 | E3 C1 00 58 */	psq_l f30, 0x58(r1), 0, qr0
/* 81374E98 | 39 61 00 50 */	addi r11, r1, 0x50
/* 81374E9C | CB C1 00 50 */	lfd f30, 0x50(r1)
/* 81374EA0 | 48 28 46 71 */	bl _restgpr_28
/* 81374EA4 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 81374EA8 | 7C 08 03 A6 */	mtlr r0
/* 81374EAC | 38 21 00 70 */	addi r1, r1, 0x70
/* 81374EB0 | 4E 80 00 20 */	blr
.endfn update_controller__Q210homebutton10HomeButtonFi

# .text:0x390C | 0x81374EB4 | size: 0x180
# homebutton::HomeButton::update_posController(int)
.fn update_posController__Q210homebutton10HomeButtonFi, global
/* 81374EB4 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81374EB8 | 7C 08 02 A6 */	mflr r0
/* 81374EBC | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81374EC0 | 93 E1 00 4C */	stw r31, 0x4c(r1)
/* 81374EC4 | 54 9F 10 3A */	slwi r31, r4, 2
/* 81374EC8 | 93 C1 00 48 */	stw r30, 0x48(r1)
/* 81374ECC | 7C 7E 1B 78 */	mr r30, r3
/* 81374ED0 | 7C 63 FA 14 */	add r3, r3, r31
/* 81374ED4 | 80 63 02 A0 */	lwz r3, 0x2a0(r3)
/* 81374ED8 | 48 00 2B CD */	bl getController__Q210homebutton10ControllerFv
/* 81374EDC | C0 03 00 08 */	lfs f0, 0x8(r3)
/* 81374EE0 | 38 81 00 10 */	addi r4, r1, 0x10
/* 81374EE4 | C0 82 83 18 */	lfs f4, lbl_81694718@sda21(r0)
/* 81374EE8 | 38 A1 00 2C */	addi r5, r1, 0x2c
/* 81374EEC | D0 01 00 10 */	stfs f0, 0x10(r1)
/* 81374EF0 | C0 62 83 1C */	lfs f3, lbl_8169471C@sda21(r0)
/* 81374EF4 | C0 23 00 0C */	lfs f1, 0xc(r3)
/* 81374EF8 | 38 61 00 18 */	addi r3, r1, 0x18
/* 81374EFC | C0 42 83 20 */	lfs f2, lbl_81694720@sda21(r0)
/* 81374F00 | C0 02 83 24 */	lfs f0, lbl_81694724@sda21(r0)
/* 81374F04 | D0 21 00 14 */	stfs f1, 0x14(r1)
/* 81374F08 | C0 22 83 28 */	lfs f1, lbl_81694728@sda21(r0)
/* 81374F0C | D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 81374F10 | D0 61 00 30 */	stfs f3, 0x30(r1)
/* 81374F14 | D0 41 00 34 */	stfs f2, 0x34(r1)
/* 81374F18 | D0 01 00 38 */	stfs f0, 0x38(r1)
/* 81374F1C | 48 21 09 85 */	bl fn_815858A0
/* 81374F20 | 48 1F 50 95 */	bl SCGetAspectRatio
/* 81374F24 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 81374F28 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81374F2C | 40 82 00 20 */	bne .L_81374F4C
/* 81374F30 | C0 21 00 18 */	lfs f1, 0x18(r1)
/* 81374F34 | C0 42 83 2C */	lfs f2, lbl_8169472C@sda21(r0)
/* 81374F38 | C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 81374F3C | EC 21 00 B2 */	fmuls f1, f1, f2
/* 81374F40 | EC 00 00 B2 */	fmuls f0, f0, f2
/* 81374F44 | D0 21 00 18 */	stfs f1, 0x18(r1)
/* 81374F48 | D0 01 00 1C */	stfs f0, 0x1c(r1)
.L_81374F4C:
/* 81374F4C | C0 02 83 30 */	lfs f0, lbl_81694730@sda21(r0)
/* 81374F50 | C0 21 00 18 */	lfs f1, 0x18(r1)
/* 81374F54 | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 81374F58 | 40 81 00 0C */	ble .L_81374F64
/* 81374F5C | D0 01 00 18 */	stfs f0, 0x18(r1)
/* 81374F60 | 48 00 00 40 */	b .L_81374FA0
.L_81374F64:
/* 81374F64 | C0 02 83 34 */	lfs f0, lbl_81694734@sda21(r0)
/* 81374F68 | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 81374F6C | 40 80 00 0C */	bge .L_81374F78
/* 81374F70 | D0 01 00 18 */	stfs f0, 0x18(r1)
/* 81374F74 | 48 00 00 2C */	b .L_81374FA0
.L_81374F78:
/* 81374F78 | C0 02 83 38 */	lfs f0, lbl_81694738@sda21(r0)
/* 81374F7C | C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 81374F80 | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 81374F84 | 40 81 00 0C */	ble .L_81374F90
/* 81374F88 | D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 81374F8C | 48 00 00 14 */	b .L_81374FA0
.L_81374F90:
/* 81374F90 | C0 02 83 3C */	lfs f0, lbl_8169473C@sda21(r0)
/* 81374F94 | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 81374F98 | 40 80 00 08 */	bge .L_81374FA0
/* 81374F9C | D0 01 00 1C */	stfs f0, 0x1c(r1)
.L_81374FA0:
/* 81374FA0 | C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 81374FA4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81374FA8 | C0 21 00 18 */	lfs f1, 0x18(r1)
/* 81374FAC | FC 40 00 50 */	fneg f2, f0
/* 81374FB0 | 4B FF D5 2D */	bl __ct__Q34nw4r4math4VEC2Fff
/* 81374FB4 | 88 1E 00 87 */	lbz r0, 0x87(r30)
/* 81374FB8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81374FBC | 41 82 00 18 */	beq .L_81374FD4
/* 81374FC0 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 81374FC4 | C0 21 00 08 */	lfs f1, 0x8(r1)
/* 81374FC8 | C0 03 00 38 */	lfs f0, 0x38(r3)
/* 81374FCC | EC 01 00 24 */	fdivs f0, f1, f0
/* 81374FD0 | D0 01 00 08 */	stfs f0, 0x8(r1)
.L_81374FD4:
/* 81374FD4 | 7C 7E FA 14 */	add r3, r30, r31
/* 81374FD8 | 80 8D 84 1C */	lwz r4, lbl_8169645C@sda21(r0)
/* 81374FDC | 80 63 02 30 */	lwz r3, 0x230(r3)
/* 81374FE0 | 38 A0 00 01 */	li r5, 0x1
/* 81374FE4 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81374FE8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81374FEC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81374FF0 | 7D 89 03 A6 */	mtctr r12
/* 81374FF4 | 4E 80 04 21 */	bctrl
/* 81374FF8 | C0 21 00 08 */	lfs f1, 0x8(r1)
/* 81374FFC | 7C 7F 1B 78 */	mr r31, r3
/* 81375000 | C0 41 00 0C */	lfs f2, 0xc(r1)
/* 81375004 | 38 61 00 20 */	addi r3, r1, 0x20
/* 81375008 | C0 62 82 D8 */	lfs f3, lbl_816946D8@sda21(r0)
/* 8137500C | 4B FF F8 79 */	bl __ct__Q34nw4r4math4VEC3Ffff
/* 81375010 | 38 7F 00 2C */	addi r3, r31, 0x2c
/* 81375014 | 38 81 00 20 */	addi r4, r1, 0x20
/* 81375018 | 4B FC F6 6D */	bl __as__Q34nw4r4math4VEC3FRCQ34nw4r4math4VEC3
/* 8137501C | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 81375020 | 83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 81375024 | 83 C1 00 48 */	lwz r30, 0x48(r1)
/* 81375028 | 7C 08 03 A6 */	mtlr r0
/* 8137502C | 38 21 00 50 */	addi r1, r1, 0x50
/* 81375030 | 4E 80 00 20 */	blr
.endfn update_posController__Q210homebutton10HomeButtonFi

# .text:0x3A8C | 0x81375034 | size: 0x2CC
# homebutton::HomeButton::updateTrigPane()
.fn updateTrigPane__Q210homebutton10HomeButtonFv, global
/* 81375034 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81375038 | 7C 08 02 A6 */	mflr r0
/* 8137503C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81375040 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81375044 | 48 28 44 81 */	bl _savegpr_28
/* 81375048 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8137504C | 7C 7F 1B 78 */	mr r31, r3
/* 81375050 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81375054 | 41 82 00 F0 */	beq .L_81375144
/* 81375058 | 40 80 00 10 */	bge .L_81375068
/* 8137505C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81375060 | 40 80 00 14 */	bge .L_81375074
/* 81375064 | 48 00 02 84 */	b .L_813752E8
.L_81375068:
/* 81375068 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 8137506C | 40 80 02 7C */	bge .L_813752E8
/* 81375070 | 48 00 01 AC */	b .L_8137521C
.L_81375074:
/* 81375074 | 3C 60 81 64 */	lis r3, scFuncTouchPaneName__Q210homebutton10HomeButton@ha
/* 81375078 | 3B 80 00 00 */	li r28, 0x0
/* 8137507C | 3B C0 00 00 */	li r30, 0x0
/* 81375080 | 3B A3 53 8C */	addi r29, r3, scFuncTouchPaneName__Q210homebutton10HomeButton@l
.L_81375084:
/* 81375084 | 2C 1C 00 02 */	cmpwi r28, 0x2
/* 81375088 | 41 80 00 0C */	blt .L_81375094
/* 8137508C | 2C 1C 00 09 */	cmpwi r28, 0x9
/* 81375090 | 40 82 00 54 */	bne .L_813750E4
.L_81375094:
/* 81375094 | 80 7F 02 2C */	lwz r3, 0x22c(r31)
/* 81375098 | 38 A0 00 01 */	li r5, 0x1
/* 8137509C | 7C 9D F0 2E */	lwzx r4, r29, r30
/* 813750A0 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 813750A4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813750A8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813750AC | 7D 89 03 A6 */	mtctr r12
/* 813750B0 | 4E 80 04 21 */	bctrl
/* 813750B4 | 7C 64 1B 78 */	mr r4, r3
/* 813750B8 | 80 7F 02 44 */	lwz r3, 0x244(r31)
/* 813750BC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813750C0 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 813750C4 | 7D 89 03 A6 */	mtctr r12
/* 813750C8 | 4E 80 04 21 */	bctrl
/* 813750CC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813750D0 | 38 80 00 01 */	li r4, 0x1
/* 813750D4 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 813750D8 | 7D 89 03 A6 */	mtctr r12
/* 813750DC | 4E 80 04 21 */	bctrl
/* 813750E0 | 48 00 00 50 */	b .L_81375130
.L_813750E4:
/* 813750E4 | 80 7F 02 2C */	lwz r3, 0x22c(r31)
/* 813750E8 | 38 A0 00 01 */	li r5, 0x1
/* 813750EC | 7C 9D F0 2E */	lwzx r4, r29, r30
/* 813750F0 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 813750F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813750F8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813750FC | 7D 89 03 A6 */	mtctr r12
/* 81375100 | 4E 80 04 21 */	bctrl
/* 81375104 | 7C 64 1B 78 */	mr r4, r3
/* 81375108 | 80 7F 02 44 */	lwz r3, 0x244(r31)
/* 8137510C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81375110 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 81375114 | 7D 89 03 A6 */	mtctr r12
/* 81375118 | 4E 80 04 21 */	bctrl
/* 8137511C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81375120 | 38 80 00 00 */	li r4, 0x0
/* 81375124 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 81375128 | 7D 89 03 A6 */	mtctr r12
/* 8137512C | 4E 80 04 21 */	bctrl
.L_81375130:
/* 81375130 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 81375134 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 81375138 | 2C 1C 00 0A */	cmpwi r28, 0xa
/* 8137513C | 41 80 FF 48 */	blt .L_81375084
/* 81375140 | 48 00 01 A8 */	b .L_813752E8
.L_81375144:
/* 81375144 | 3C 60 81 64 */	lis r3, scFuncTouchPaneName__Q210homebutton10HomeButton@ha
/* 81375148 | 3B 80 00 00 */	li r28, 0x0
/* 8137514C | 3B C0 00 00 */	li r30, 0x0
/* 81375150 | 3B A3 53 8C */	addi r29, r3, scFuncTouchPaneName__Q210homebutton10HomeButton@l
.L_81375154:
/* 81375154 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81375158 | 40 81 00 0C */	ble .L_81375164
/* 8137515C | 2C 1C 00 07 */	cmpwi r28, 0x7
/* 81375160 | 41 80 00 0C */	blt .L_8137516C
.L_81375164:
/* 81375164 | 2C 1C 00 09 */	cmpwi r28, 0x9
/* 81375168 | 40 82 00 54 */	bne .L_813751BC
.L_8137516C:
/* 8137516C | 80 7F 02 2C */	lwz r3, 0x22c(r31)
/* 81375170 | 38 A0 00 01 */	li r5, 0x1
/* 81375174 | 7C 9D F0 2E */	lwzx r4, r29, r30
/* 81375178 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8137517C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81375180 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81375184 | 7D 89 03 A6 */	mtctr r12
/* 81375188 | 4E 80 04 21 */	bctrl
/* 8137518C | 7C 64 1B 78 */	mr r4, r3
/* 81375190 | 80 7F 02 44 */	lwz r3, 0x244(r31)
/* 81375194 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81375198 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8137519C | 7D 89 03 A6 */	mtctr r12
/* 813751A0 | 4E 80 04 21 */	bctrl
/* 813751A4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813751A8 | 38 80 00 01 */	li r4, 0x1
/* 813751AC | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 813751B0 | 7D 89 03 A6 */	mtctr r12
/* 813751B4 | 4E 80 04 21 */	bctrl
/* 813751B8 | 48 00 00 50 */	b .L_81375208
.L_813751BC:
/* 813751BC | 80 7F 02 2C */	lwz r3, 0x22c(r31)
/* 813751C0 | 38 A0 00 01 */	li r5, 0x1
/* 813751C4 | 7C 9D F0 2E */	lwzx r4, r29, r30
/* 813751C8 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 813751CC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813751D0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813751D4 | 7D 89 03 A6 */	mtctr r12
/* 813751D8 | 4E 80 04 21 */	bctrl
/* 813751DC | 7C 64 1B 78 */	mr r4, r3
/* 813751E0 | 80 7F 02 44 */	lwz r3, 0x244(r31)
/* 813751E4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813751E8 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 813751EC | 7D 89 03 A6 */	mtctr r12
/* 813751F0 | 4E 80 04 21 */	bctrl
/* 813751F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813751F8 | 38 80 00 00 */	li r4, 0x0
/* 813751FC | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 81375200 | 7D 89 03 A6 */	mtctr r12
/* 81375204 | 4E 80 04 21 */	bctrl
.L_81375208:
/* 81375208 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 8137520C | 3B DE 00 04 */	addi r30, r30, 0x4
/* 81375210 | 2C 1C 00 0A */	cmpwi r28, 0xa
/* 81375214 | 41 80 FF 40 */	blt .L_81375154
/* 81375218 | 48 00 00 D0 */	b .L_813752E8
.L_8137521C:
/* 8137521C | 3C 60 81 64 */	lis r3, scFuncTouchPaneName__Q210homebutton10HomeButton@ha
/* 81375220 | 3B 80 00 00 */	li r28, 0x0
/* 81375224 | 3B C0 00 00 */	li r30, 0x0
/* 81375228 | 3B A3 53 8C */	addi r29, r3, scFuncTouchPaneName__Q210homebutton10HomeButton@l
.L_8137522C:
/* 8137522C | 2C 1C 00 07 */	cmpwi r28, 0x7
/* 81375230 | 41 80 00 0C */	blt .L_8137523C
/* 81375234 | 2C 1C 00 09 */	cmpwi r28, 0x9
/* 81375238 | 40 82 00 54 */	bne .L_8137528C
.L_8137523C:
/* 8137523C | 80 7F 02 2C */	lwz r3, 0x22c(r31)
/* 81375240 | 38 A0 00 01 */	li r5, 0x1
/* 81375244 | 7C 9D F0 2E */	lwzx r4, r29, r30
/* 81375248 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8137524C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81375250 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81375254 | 7D 89 03 A6 */	mtctr r12
/* 81375258 | 4E 80 04 21 */	bctrl
/* 8137525C | 7C 64 1B 78 */	mr r4, r3
/* 81375260 | 80 7F 02 44 */	lwz r3, 0x244(r31)
/* 81375264 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81375268 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8137526C | 7D 89 03 A6 */	mtctr r12
/* 81375270 | 4E 80 04 21 */	bctrl
/* 81375274 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81375278 | 38 80 00 00 */	li r4, 0x0
/* 8137527C | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 81375280 | 7D 89 03 A6 */	mtctr r12
/* 81375284 | 4E 80 04 21 */	bctrl
/* 81375288 | 48 00 00 50 */	b .L_813752D8
.L_8137528C:
/* 8137528C | 80 7F 02 2C */	lwz r3, 0x22c(r31)
/* 81375290 | 38 A0 00 01 */	li r5, 0x1
/* 81375294 | 7C 9D F0 2E */	lwzx r4, r29, r30
/* 81375298 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8137529C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813752A0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813752A4 | 7D 89 03 A6 */	mtctr r12
/* 813752A8 | 4E 80 04 21 */	bctrl
/* 813752AC | 7C 64 1B 78 */	mr r4, r3
/* 813752B0 | 80 7F 02 44 */	lwz r3, 0x244(r31)
/* 813752B4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813752B8 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 813752BC | 7D 89 03 A6 */	mtctr r12
/* 813752C0 | 4E 80 04 21 */	bctrl
/* 813752C4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813752C8 | 38 80 00 01 */	li r4, 0x1
/* 813752CC | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 813752D0 | 7D 89 03 A6 */	mtctr r12
/* 813752D4 | 4E 80 04 21 */	bctrl
.L_813752D8:
/* 813752D8 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813752DC | 3B DE 00 04 */	addi r30, r30, 0x4
/* 813752E0 | 2C 1C 00 0A */	cmpwi r28, 0xa
/* 813752E4 | 41 80 FF 48 */	blt .L_8137522C
.L_813752E8:
/* 813752E8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813752EC | 48 28 42 25 */	bl _restgpr_28
/* 813752F0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813752F4 | 7C 08 03 A6 */	mtlr r0
/* 813752F8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813752FC | 4E 80 00 20 */	blr
.endfn updateTrigPane__Q210homebutton10HomeButtonFv

# .text:0x3D58 | 0x81375300 | size: 0x4B8
# homebutton::HomeButton::startPointEvent(const char*, void*)
.fn startPointEvent__Q210homebutton10HomeButtonFPCcPv, global
/* 81375300 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81375304 | 7C 08 02 A6 */	mflr r0
/* 81375308 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8137530C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81375310 | 48 28 41 B1 */	bl _savegpr_27
/* 81375314 | 7C 7C 1B 78 */	mr r28, r3
/* 81375318 | 7C BD 2B 78 */	mr r29, r5
/* 8137531C | 48 00 16 9D */	bl getPaneNo__Q210homebutton10HomeButtonFPCc
/* 81375320 | 80 1C 00 10 */	lwz r0, 0x10(r28)
/* 81375324 | 7C 7F 1B 78 */	mr r31, r3
/* 81375328 | 3B C0 00 00 */	li r30, 0x0
/* 8137532C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81375330 | 40 82 03 B0 */	bne .L_813756E0
/* 81375334 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 81375338 | 41 82 03 A8 */	beq .L_813756E0
/* 8137533C | 54 60 10 3A */	slwi r0, r3, 2
/* 81375340 | 7C 9C 02 14 */	add r4, r28, r0
/* 81375344 | 80 04 00 1C */	lwz r0, 0x1c(r4)
/* 81375348 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137534C | 40 82 03 94 */	bne .L_813756E0
/* 81375350 | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 81375354 | 2C 04 00 02 */	cmpwi r4, 0x2
/* 81375358 | 41 82 00 58 */	beq .L_813753B0
/* 8137535C | 80 1C 00 08 */	lwz r0, 0x8(r28)
/* 81375360 | 7C 03 00 00 */	cmpw r3, r0
/* 81375364 | 40 80 00 4C */	bge .L_813753B0
/* 81375368 | 7F 83 E3 78 */	mr r3, r28
/* 8137536C | 7F E4 FB 78 */	mr r4, r31
/* 81375370 | 38 A0 00 00 */	li r5, 0x0
/* 81375374 | 48 00 16 FD */	bl findAnimator__Q210homebutton10HomeButtonFii
/* 81375378 | 54 60 10 3A */	slwi r0, r3, 2
/* 8137537C | 7C 7C 02 14 */	add r3, r28, r0
/* 81375380 | 83 63 02 B4 */	lwz r27, 0x2b4(r3)
/* 81375384 | 7F 63 DB 78 */	mr r3, r27
/* 81375388 | 48 00 28 A9 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 8137538C | 38 00 00 01 */	li r0, 0x1
/* 81375390 | 90 1B 00 14 */	stw r0, 0x14(r27)
/* 81375394 | 80 1C 00 00 */	lwz r0, 0x0(r28)
/* 81375398 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137539C | 40 82 03 44 */	bne .L_813756E0
/* 813753A0 | 7F 83 E3 78 */	mr r3, r28
/* 813753A4 | 48 00 17 81 */	bl setForcusSE__Q210homebutton10HomeButtonFv
/* 813753A8 | 3B C0 00 01 */	li r30, 0x1
/* 813753AC | 48 00 03 34 */	b .L_813756E0
.L_813753B0:
/* 813753B0 | 80 1C 00 08 */	lwz r0, 0x8(r28)
/* 813753B4 | 7C 00 18 50 */	subf r0, r0, r3
/* 813753B8 | 28 00 00 09 */	cmplwi r0, 0x9
/* 813753BC | 41 81 03 24 */	bgt .L_813756E0
/* 813753C0 | 3C 60 81 64 */	lis r3, jumptable_81645568@ha
/* 813753C4 | 54 00 10 3A */	slwi r0, r0, 2
/* 813753C8 | 38 63 55 68 */	addi r3, r3, jumptable_81645568@l
/* 813753CC | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813753D0 | 7C 69 03 A6 */	mtctr r3
/* 813753D4 | 4E 80 04 20 */	bctr
.L_813753D8:
/* 813753D8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813753DC | 40 82 03 04 */	bne .L_813756E0
/* 813753E0 | 7F 83 E3 78 */	mr r3, r28
/* 813753E4 | 48 00 14 A9 */	bl isUpBarActive__Q210homebutton10HomeButtonCFv
/* 813753E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813753EC | 41 82 00 38 */	beq .L_81375424
/* 813753F0 | 83 7C 04 18 */	lwz r27, 0x418(r28)
/* 813753F4 | 7F 63 DB 78 */	mr r3, r27
/* 813753F8 | 48 00 28 39 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 813753FC | 38 00 00 01 */	li r0, 0x1
/* 81375400 | 38 80 00 03 */	li r4, 0x3
/* 81375404 | 90 1B 00 14 */	stw r0, 0x14(r27)
/* 81375408 | 38 00 00 00 */	li r0, 0x0
/* 8137540C | 7F 83 E3 78 */	mr r3, r28
/* 81375410 | 90 9C 00 70 */	stw r4, 0x70(r28)
/* 81375414 | 90 1C 00 68 */	stw r0, 0x68(r28)
/* 81375418 | 48 00 17 0D */	bl setForcusSE__Q210homebutton10HomeButtonFv
/* 8137541C | 3B C0 00 01 */	li r30, 0x1
/* 81375420 | 48 00 02 C0 */	b .L_813756E0
.L_81375424:
/* 81375424 | 38 00 00 03 */	li r0, 0x3
/* 81375428 | 90 1C 00 68 */	stw r0, 0x68(r28)
/* 8137542C | 48 00 02 B4 */	b .L_813756E0
.L_81375430:
/* 81375430 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81375434 | 40 82 00 68 */	bne .L_8137549C
/* 81375438 | 7F 83 E3 78 */	mr r3, r28
/* 8137543C | 38 80 00 04 */	li r4, 0x4
/* 81375440 | 38 A0 00 02 */	li r5, 0x2
/* 81375444 | 48 00 16 7D */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81375448 | 7C 7B 1B 78 */	mr r27, r3
/* 8137544C | 7F 83 E3 78 */	mr r3, r28
/* 81375450 | 48 00 14 79 */	bl isDownBarActive__Q210homebutton10HomeButtonFv
/* 81375454 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81375458 | 41 82 00 3C */	beq .L_81375494
/* 8137545C | 57 60 10 3A */	slwi r0, r27, 2
/* 81375460 | 7C 7C 02 14 */	add r3, r28, r0
/* 81375464 | 83 C3 02 E4 */	lwz r30, 0x2e4(r3)
/* 81375468 | 7F C3 F3 78 */	mr r3, r30
/* 8137546C | 48 00 27 C5 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81375470 | 38 60 00 01 */	li r3, 0x1
/* 81375474 | 38 00 00 00 */	li r0, 0x0
/* 81375478 | 90 7E 00 14 */	stw r3, 0x14(r30)
/* 8137547C | 7F 83 E3 78 */	mr r3, r28
/* 81375480 | 93 7C 00 74 */	stw r27, 0x74(r28)
/* 81375484 | 90 1C 00 6C */	stw r0, 0x6c(r28)
/* 81375488 | 48 00 16 9D */	bl setForcusSE__Q210homebutton10HomeButtonFv
/* 8137548C | 3B C0 00 01 */	li r30, 0x1
/* 81375490 | 48 00 02 50 */	b .L_813756E0
.L_81375494:
/* 81375494 | 93 7C 00 6C */	stw r27, 0x6c(r28)
/* 81375498 | 48 00 02 48 */	b .L_813756E0
.L_8137549C:
/* 8137549C | 2C 04 00 01 */	cmpwi r4, 0x1
/* 813754A0 | 40 82 02 40 */	bne .L_813756E0
/* 813754A4 | 7F 83 E3 78 */	mr r3, r28
/* 813754A8 | 38 80 00 04 */	li r4, 0x4
/* 813754AC | 38 A0 00 13 */	li r5, 0x13
/* 813754B0 | 48 00 16 11 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 813754B4 | 7C 7B 1B 78 */	mr r27, r3
/* 813754B8 | 7F 83 E3 78 */	mr r3, r28
/* 813754BC | 48 00 14 0D */	bl isDownBarActive__Q210homebutton10HomeButtonFv
/* 813754C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813754C4 | 41 82 00 3C */	beq .L_81375500
/* 813754C8 | 57 60 10 3A */	slwi r0, r27, 2
/* 813754CC | 7C 7C 02 14 */	add r3, r28, r0
/* 813754D0 | 83 C3 02 E4 */	lwz r30, 0x2e4(r3)
/* 813754D4 | 7F C3 F3 78 */	mr r3, r30
/* 813754D8 | 48 00 27 59 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 813754DC | 38 60 00 01 */	li r3, 0x1
/* 813754E0 | 38 00 00 00 */	li r0, 0x0
/* 813754E4 | 90 7E 00 14 */	stw r3, 0x14(r30)
/* 813754E8 | 7F 83 E3 78 */	mr r3, r28
/* 813754EC | 93 7C 00 74 */	stw r27, 0x74(r28)
/* 813754F0 | 90 1C 00 6C */	stw r0, 0x6c(r28)
/* 813754F4 | 48 00 16 31 */	bl setForcusSE__Q210homebutton10HomeButtonFv
/* 813754F8 | 3B C0 00 01 */	li r30, 0x1
/* 813754FC | 48 00 01 E4 */	b .L_813756E0
.L_81375500:
/* 81375500 | 93 7C 00 6C */	stw r27, 0x6c(r28)
/* 81375504 | 48 00 01 DC */	b .L_813756E0
.L_81375508:
/* 81375508 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 8137550C | 40 82 01 D4 */	bne .L_813756E0
/* 81375510 | 7F 83 E3 78 */	mr r3, r28
/* 81375514 | 38 80 00 06 */	li r4, 0x6
/* 81375518 | 38 A0 00 04 */	li r5, 0x4
/* 8137551C | 48 00 15 A5 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81375520 | 54 60 10 3A */	slwi r0, r3, 2
/* 81375524 | 7C 7C 02 14 */	add r3, r28, r0
/* 81375528 | 83 63 02 E4 */	lwz r27, 0x2e4(r3)
/* 8137552C | 7F 63 DB 78 */	mr r3, r27
/* 81375530 | 48 00 27 01 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81375534 | 38 00 00 01 */	li r0, 0x1
/* 81375538 | 7F 83 E3 78 */	mr r3, r28
/* 8137553C | 90 1B 00 14 */	stw r0, 0x14(r27)
/* 81375540 | 48 00 15 E5 */	bl setForcusSE__Q210homebutton10HomeButtonFv
/* 81375544 | 3B C0 00 01 */	li r30, 0x1
/* 81375548 | 48 00 01 98 */	b .L_813756E0
.L_8137554C:
/* 8137554C | 2C 04 00 01 */	cmpwi r4, 0x1
/* 81375550 | 40 82 01 90 */	bne .L_813756E0
/* 81375554 | 7F 83 E3 78 */	mr r3, r28
/* 81375558 | 38 80 00 07 */	li r4, 0x7
/* 8137555C | 38 A0 00 04 */	li r5, 0x4
/* 81375560 | 48 00 15 61 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81375564 | 54 60 10 3A */	slwi r0, r3, 2
/* 81375568 | 7C 7C 02 14 */	add r3, r28, r0
/* 8137556C | 83 63 02 E4 */	lwz r27, 0x2e4(r3)
/* 81375570 | 7F 63 DB 78 */	mr r3, r27
/* 81375574 | 48 00 26 BD */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81375578 | 38 00 00 01 */	li r0, 0x1
/* 8137557C | 7F 83 E3 78 */	mr r3, r28
/* 81375580 | 90 1B 00 14 */	stw r0, 0x14(r27)
/* 81375584 | 48 00 15 A1 */	bl setForcusSE__Q210homebutton10HomeButtonFv
/* 81375588 | 3B C0 00 01 */	li r30, 0x1
/* 8137558C | 48 00 01 54 */	b .L_813756E0
.L_81375590:
/* 81375590 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 81375594 | 40 82 01 4C */	bne .L_813756E0
/* 81375598 | 7F 83 E3 78 */	mr r3, r28
/* 8137559C | 38 80 00 08 */	li r4, 0x8
/* 813755A0 | 38 A0 00 04 */	li r5, 0x4
/* 813755A4 | 48 00 15 1D */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 813755A8 | 54 60 10 3A */	slwi r0, r3, 2
/* 813755AC | 7C 7C 02 14 */	add r3, r28, r0
/* 813755B0 | 83 63 02 E4 */	lwz r27, 0x2e4(r3)
/* 813755B4 | 7F 63 DB 78 */	mr r3, r27
/* 813755B8 | 48 00 26 79 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 813755BC | 38 00 00 01 */	li r0, 0x1
/* 813755C0 | 7F 83 E3 78 */	mr r3, r28
/* 813755C4 | 90 1B 00 14 */	stw r0, 0x14(r27)
/* 813755C8 | 48 00 15 5D */	bl setForcusSE__Q210homebutton10HomeButtonFv
/* 813755CC | 3B C0 00 01 */	li r30, 0x1
/* 813755D0 | 48 00 01 10 */	b .L_813756E0
.L_813755D4:
/* 813755D4 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 813755D8 | 40 82 01 08 */	bne .L_813756E0
/* 813755DC | 7F 83 E3 78 */	mr r3, r28
/* 813755E0 | 38 80 00 09 */	li r4, 0x9
/* 813755E4 | 38 A0 00 04 */	li r5, 0x4
/* 813755E8 | 48 00 14 D9 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 813755EC | 54 60 10 3A */	slwi r0, r3, 2
/* 813755F0 | 7C 7C 02 14 */	add r3, r28, r0
/* 813755F4 | 83 63 02 E4 */	lwz r27, 0x2e4(r3)
/* 813755F8 | 7F 63 DB 78 */	mr r3, r27
/* 813755FC | 48 00 26 35 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81375600 | 38 00 00 01 */	li r0, 0x1
/* 81375604 | 7F 83 E3 78 */	mr r3, r28
/* 81375608 | 90 1B 00 14 */	stw r0, 0x14(r27)
/* 8137560C | 48 00 15 19 */	bl setForcusSE__Q210homebutton10HomeButtonFv
/* 81375610 | 3B C0 00 01 */	li r30, 0x1
/* 81375614 | 48 00 00 CC */	b .L_813756E0
.L_81375618:
/* 81375618 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 8137561C | 40 82 00 C4 */	bne .L_813756E0
/* 81375620 | 7F 83 E3 78 */	mr r3, r28
/* 81375624 | 38 80 00 0A */	li r4, 0xa
/* 81375628 | 38 A0 00 04 */	li r5, 0x4
/* 8137562C | 48 00 14 95 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81375630 | 54 60 10 3A */	slwi r0, r3, 2
/* 81375634 | 7C 7C 02 14 */	add r3, r28, r0
/* 81375638 | 83 63 02 E4 */	lwz r27, 0x2e4(r3)
/* 8137563C | 7F 63 DB 78 */	mr r3, r27
/* 81375640 | 48 00 25 F1 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81375644 | 38 00 00 01 */	li r0, 0x1
/* 81375648 | 7F 83 E3 78 */	mr r3, r28
/* 8137564C | 90 1B 00 14 */	stw r0, 0x14(r27)
/* 81375650 | 48 00 14 D5 */	bl setForcusSE__Q210homebutton10HomeButtonFv
/* 81375654 | 3B C0 00 01 */	li r30, 0x1
/* 81375658 | 48 00 00 88 */	b .L_813756E0
.L_8137565C:
/* 8137565C | 2C 04 00 02 */	cmpwi r4, 0x2
/* 81375660 | 40 82 00 80 */	bne .L_813756E0
/* 81375664 | 7F 83 E3 78 */	mr r3, r28
/* 81375668 | 38 80 00 11 */	li r4, 0x11
/* 8137566C | 38 A0 00 0B */	li r5, 0xb
/* 81375670 | 48 00 14 51 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81375674 | 54 60 10 3A */	slwi r0, r3, 2
/* 81375678 | 7C 7C 02 14 */	add r3, r28, r0
/* 8137567C | 83 63 02 E4 */	lwz r27, 0x2e4(r3)
/* 81375680 | 7F 63 DB 78 */	mr r3, r27
/* 81375684 | 48 00 25 AD */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81375688 | 38 00 00 01 */	li r0, 0x1
/* 8137568C | 7F 83 E3 78 */	mr r3, r28
/* 81375690 | 90 1B 00 14 */	stw r0, 0x14(r27)
/* 81375694 | 48 00 14 91 */	bl setForcusSE__Q210homebutton10HomeButtonFv
/* 81375698 | 3B C0 00 01 */	li r30, 0x1
/* 8137569C | 48 00 00 44 */	b .L_813756E0
.L_813756A0:
/* 813756A0 | 2C 04 00 02 */	cmpwi r4, 0x2
/* 813756A4 | 40 82 00 3C */	bne .L_813756E0
/* 813756A8 | 7F 83 E3 78 */	mr r3, r28
/* 813756AC | 38 80 00 12 */	li r4, 0x12
/* 813756B0 | 38 A0 00 0B */	li r5, 0xb
/* 813756B4 | 48 00 14 0D */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 813756B8 | 54 60 10 3A */	slwi r0, r3, 2
/* 813756BC | 7C 7C 02 14 */	add r3, r28, r0
/* 813756C0 | 83 63 02 E4 */	lwz r27, 0x2e4(r3)
/* 813756C4 | 7F 63 DB 78 */	mr r3, r27
/* 813756C8 | 48 00 25 69 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 813756CC | 38 00 00 01 */	li r0, 0x1
/* 813756D0 | 7F 83 E3 78 */	mr r3, r28
/* 813756D4 | 90 1B 00 14 */	stw r0, 0x14(r27)
/* 813756D8 | 48 00 14 4D */	bl setForcusSE__Q210homebutton10HomeButtonFv
/* 813756DC | 3B C0 00 01 */	li r30, 0x1
.L_813756E0:
/* 813756E0 | 80 7C 00 08 */	lwz r3, 0x8(r28)
/* 813756E4 | 38 83 00 01 */	addi r4, r3, 0x1
/* 813756E8 | 7C 1F 20 00 */	cmpw r31, r4
/* 813756EC | 41 82 00 10 */	beq .L_813756FC
/* 813756F0 | 38 03 00 09 */	addi r0, r3, 0x9
/* 813756F4 | 7C 1F 00 00 */	cmpw r31, r0
/* 813756F8 | 40 82 00 38 */	bne .L_81375730
.L_813756FC:
/* 813756FC | 54 80 10 3A */	slwi r0, r4, 2
/* 81375700 | 7C 9C 02 14 */	add r4, r28, r0
/* 81375704 | 80 64 00 1C */	lwz r3, 0x1c(r4)
/* 81375708 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8137570C | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 81375710 | 80 7C 00 08 */	lwz r3, 0x8(r28)
/* 81375714 | 38 03 00 09 */	addi r0, r3, 0x9
/* 81375718 | 54 00 10 3A */	slwi r0, r0, 2
/* 8137571C | 7C 9C 02 14 */	add r4, r28, r0
/* 81375720 | 80 64 00 1C */	lwz r3, 0x1c(r4)
/* 81375724 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81375728 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 8137572C | 48 00 00 18 */	b .L_81375744
.L_81375730:
/* 81375730 | 57 E0 10 3A */	slwi r0, r31, 2
/* 81375734 | 7C 9C 02 14 */	add r4, r28, r0
/* 81375738 | 80 64 00 1C */	lwz r3, 0x1c(r4)
/* 8137573C | 38 03 00 01 */	addi r0, r3, 0x1
/* 81375740 | 90 04 00 1C */	stw r0, 0x1c(r4)
.L_81375744:
/* 81375744 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81375748 | 41 82 00 58 */	beq .L_813757A0
/* 8137574C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81375750 | 41 82 00 50 */	beq .L_813757A0
/* 81375754 | 80 1D 00 00 */	lwz r0, 0x0(r29)
/* 81375758 | 54 00 10 3A */	slwi r0, r0, 2
/* 8137575C | 7C 9C 02 14 */	add r4, r28, r0
/* 81375760 | 80 64 02 A0 */	lwz r3, 0x2a0(r4)
/* 81375764 | 88 03 00 1C */	lbz r0, 0x1c(r3)
/* 81375768 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137576C | 40 82 00 34 */	bne .L_813757A0
/* 81375770 | C0 24 02 18 */	lfs f1, 0x218(r4)
/* 81375774 | C0 02 82 D8 */	lfs f0, lbl_816946D8@sda21(r0)
/* 81375778 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8137577C | 4C 40 13 82 */	cror eq, lt, eq
/* 81375780 | 40 82 00 20 */	bne .L_813757A0
/* 81375784 | C0 02 83 44 */	lfs f0, lbl_81694744@sda21(r0)
/* 81375788 | D0 04 02 08 */	stfs f0, 0x208(r4)
/* 8137578C | 80 1D 00 00 */	lwz r0, 0x0(r29)
/* 81375790 | 54 00 10 3A */	slwi r0, r0, 2
/* 81375794 | 7C 7C 02 14 */	add r3, r28, r0
/* 81375798 | 80 63 02 A0 */	lwz r3, 0x2a0(r3)
/* 8137579C | 48 00 23 0D */	bl startMotor__Q210homebutton10ControllerFv
.L_813757A0:
/* 813757A0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813757A4 | 48 28 3D 69 */	bl _restgpr_27
/* 813757A8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813757AC | 7C 08 03 A6 */	mtlr r0
/* 813757B0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813757B4 | 4E 80 00 20 */	blr
.endfn startPointEvent__Q210homebutton10HomeButtonFPCcPv

# .text:0x4210 | 0x813757B8 | size: 0x3C0
# homebutton::HomeButton::startLeftEvent(const char*)
.fn startLeftEvent__Q210homebutton10HomeButtonFPCc, global
/* 813757B8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813757BC | 7C 08 02 A6 */	mflr r0
/* 813757C0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813757C4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813757C8 | 48 28 3D 01 */	bl _savegpr_29
/* 813757CC | 7C 7F 1B 78 */	mr r31, r3
/* 813757D0 | 48 00 11 E9 */	bl getPaneNo__Q210homebutton10HomeButtonFPCc
/* 813757D4 | 54 60 10 3A */	slwi r0, r3, 2
/* 813757D8 | 7C 64 1B 78 */	mr r4, r3
/* 813757DC | 7C FF 02 14 */	add r7, r31, r0
/* 813757E0 | 80 A7 00 1C */	lwz r5, 0x1c(r7)
/* 813757E4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813757E8 | 40 81 00 5C */	ble .L_81375844
/* 813757EC | 80 DF 00 08 */	lwz r6, 0x8(r31)
/* 813757F0 | 39 06 00 01 */	addi r8, r6, 0x1
/* 813757F4 | 7C 03 40 00 */	cmpw r3, r8
/* 813757F8 | 41 82 00 10 */	beq .L_81375808
/* 813757FC | 38 06 00 09 */	addi r0, r6, 0x9
/* 81375800 | 7C 03 00 00 */	cmpw r3, r0
/* 81375804 | 40 82 00 38 */	bne .L_8137583C
.L_81375808:
/* 81375808 | 55 00 10 3A */	slwi r0, r8, 2
/* 8137580C | 7C DF 02 14 */	add r6, r31, r0
/* 81375810 | 80 A6 00 1C */	lwz r5, 0x1c(r6)
/* 81375814 | 38 05 FF FF */	subi r0, r5, 0x1
/* 81375818 | 90 06 00 1C */	stw r0, 0x1c(r6)
/* 8137581C | 80 BF 00 08 */	lwz r5, 0x8(r31)
/* 81375820 | 38 05 00 09 */	addi r0, r5, 0x9
/* 81375824 | 54 00 10 3A */	slwi r0, r0, 2
/* 81375828 | 7C DF 02 14 */	add r6, r31, r0
/* 8137582C | 80 A6 00 1C */	lwz r5, 0x1c(r6)
/* 81375830 | 38 05 FF FF */	subi r0, r5, 0x1
/* 81375834 | 90 06 00 1C */	stw r0, 0x1c(r6)
/* 81375838 | 48 00 00 0C */	b .L_81375844
.L_8137583C:
/* 8137583C | 38 05 FF FF */	subi r0, r5, 0x1
/* 81375840 | 90 07 00 1C */	stw r0, 0x1c(r7)
.L_81375844:
/* 81375844 | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 81375848 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8137584C | 40 82 03 14 */	bne .L_81375B60
/* 81375850 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 81375854 | 41 82 03 0C */	beq .L_81375B60
/* 81375858 | 80 07 00 1C */	lwz r0, 0x1c(r7)
/* 8137585C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81375860 | 40 82 03 00 */	bne .L_81375B60
/* 81375864 | 80 BF 00 00 */	lwz r5, 0x0(r31)
/* 81375868 | 2C 05 00 02 */	cmpwi r5, 0x2
/* 8137586C | 41 82 00 3C */	beq .L_813758A8
/* 81375870 | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 81375874 | 7C 03 00 00 */	cmpw r3, r0
/* 81375878 | 40 80 00 30 */	bge .L_813758A8
/* 8137587C | 7F E3 FB 78 */	mr r3, r31
/* 81375880 | 38 A0 00 02 */	li r5, 0x2
/* 81375884 | 48 00 11 ED */	bl findAnimator__Q210homebutton10HomeButtonFii
/* 81375888 | 54 60 10 3A */	slwi r0, r3, 2
/* 8137588C | 7C 7F 02 14 */	add r3, r31, r0
/* 81375890 | 83 C3 02 B4 */	lwz r30, 0x2b4(r3)
/* 81375894 | 7F C3 F3 78 */	mr r3, r30
/* 81375898 | 48 00 23 99 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 8137589C | 38 00 00 01 */	li r0, 0x1
/* 813758A0 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 813758A4 | 48 00 02 BC */	b .L_81375B60
.L_813758A8:
/* 813758A8 | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 813758AC | 7C 00 18 50 */	subf r0, r0, r3
/* 813758B0 | 28 00 00 09 */	cmplwi r0, 0x9
/* 813758B4 | 41 81 02 AC */	bgt .L_81375B60
/* 813758B8 | 3C 60 81 64 */	lis r3, jumptable_81645590@ha
/* 813758BC | 54 00 10 3A */	slwi r0, r0, 2
/* 813758C0 | 38 63 55 90 */	addi r3, r3, jumptable_81645590@l
/* 813758C4 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813758C8 | 7C 69 03 A6 */	mtctr r3
/* 813758CC | 4E 80 04 20 */	bctr
.L_813758D0:
/* 813758D0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813758D4 | 40 82 02 8C */	bne .L_81375B60
/* 813758D8 | 7F E3 FB 78 */	mr r3, r31
/* 813758DC | 48 00 0F B1 */	bl isUpBarActive__Q210homebutton10HomeButtonCFv
/* 813758E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813758E4 | 41 82 00 2C */	beq .L_81375910
/* 813758E8 | 83 DF 04 3C */	lwz r30, 0x43c(r31)
/* 813758EC | 7F C3 F3 78 */	mr r3, r30
/* 813758F0 | 48 00 23 41 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 813758F4 | 38 00 00 01 */	li r0, 0x1
/* 813758F8 | 38 60 00 0C */	li r3, 0xc
/* 813758FC | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 81375900 | 38 00 00 00 */	li r0, 0x0
/* 81375904 | 90 7F 00 70 */	stw r3, 0x70(r31)
/* 81375908 | 90 1F 00 68 */	stw r0, 0x68(r31)
/* 8137590C | 48 00 02 54 */	b .L_81375B60
.L_81375910:
/* 81375910 | 38 00 00 0C */	li r0, 0xc
/* 81375914 | 90 1F 00 68 */	stw r0, 0x68(r31)
/* 81375918 | 48 00 02 48 */	b .L_81375B60
.L_8137591C:
/* 8137591C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81375920 | 40 82 00 5C */	bne .L_8137597C
/* 81375924 | 7F E3 FB 78 */	mr r3, r31
/* 81375928 | 38 80 00 05 */	li r4, 0x5
/* 8137592C | 38 A0 00 03 */	li r5, 0x3
/* 81375930 | 48 00 11 91 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81375934 | 7C 7E 1B 78 */	mr r30, r3
/* 81375938 | 7F E3 FB 78 */	mr r3, r31
/* 8137593C | 48 00 0F 8D */	bl isDownBarActive__Q210homebutton10HomeButtonFv
/* 81375940 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81375944 | 41 82 00 30 */	beq .L_81375974
/* 81375948 | 57 C0 10 3A */	slwi r0, r30, 2
/* 8137594C | 7C 7F 02 14 */	add r3, r31, r0
/* 81375950 | 83 A3 02 E4 */	lwz r29, 0x2e4(r3)
/* 81375954 | 7F A3 EB 78 */	mr r3, r29
/* 81375958 | 48 00 22 D9 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 8137595C | 38 60 00 01 */	li r3, 0x1
/* 81375960 | 38 00 00 00 */	li r0, 0x0
/* 81375964 | 90 7D 00 14 */	stw r3, 0x14(r29)
/* 81375968 | 93 DF 00 74 */	stw r30, 0x74(r31)
/* 8137596C | 90 1F 00 6C */	stw r0, 0x6c(r31)
/* 81375970 | 48 00 01 F0 */	b .L_81375B60
.L_81375974:
/* 81375974 | 93 DF 00 6C */	stw r30, 0x6c(r31)
/* 81375978 | 48 00 01 E8 */	b .L_81375B60
.L_8137597C:
/* 8137597C | 2C 05 00 01 */	cmpwi r5, 0x1
/* 81375980 | 40 82 01 E0 */	bne .L_81375B60
/* 81375984 | 7F E3 FB 78 */	mr r3, r31
/* 81375988 | 38 80 00 05 */	li r4, 0x5
/* 8137598C | 38 A0 00 14 */	li r5, 0x14
/* 81375990 | 48 00 11 31 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81375994 | 7C 7E 1B 78 */	mr r30, r3
/* 81375998 | 7F E3 FB 78 */	mr r3, r31
/* 8137599C | 48 00 0F 2D */	bl isDownBarActive__Q210homebutton10HomeButtonFv
/* 813759A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813759A4 | 41 82 00 30 */	beq .L_813759D4
/* 813759A8 | 57 C0 10 3A */	slwi r0, r30, 2
/* 813759AC | 7C 7F 02 14 */	add r3, r31, r0
/* 813759B0 | 83 A3 02 E4 */	lwz r29, 0x2e4(r3)
/* 813759B4 | 7F A3 EB 78 */	mr r3, r29
/* 813759B8 | 48 00 22 79 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 813759BC | 38 60 00 01 */	li r3, 0x1
/* 813759C0 | 38 00 00 00 */	li r0, 0x0
/* 813759C4 | 90 7D 00 14 */	stw r3, 0x14(r29)
/* 813759C8 | 93 DF 00 74 */	stw r30, 0x74(r31)
/* 813759CC | 90 1F 00 6C */	stw r0, 0x6c(r31)
/* 813759D0 | 48 00 01 90 */	b .L_81375B60
.L_813759D4:
/* 813759D4 | 93 DF 00 6C */	stw r30, 0x6c(r31)
/* 813759D8 | 48 00 01 88 */	b .L_81375B60
.L_813759DC:
/* 813759DC | 2C 05 00 01 */	cmpwi r5, 0x1
/* 813759E0 | 40 82 01 80 */	bne .L_81375B60
/* 813759E4 | 7F E3 FB 78 */	mr r3, r31
/* 813759E8 | 38 80 00 06 */	li r4, 0x6
/* 813759EC | 38 A0 00 07 */	li r5, 0x7
/* 813759F0 | 48 00 10 D1 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 813759F4 | 54 60 10 3A */	slwi r0, r3, 2
/* 813759F8 | 7C 7F 02 14 */	add r3, r31, r0
/* 813759FC | 83 A3 02 E4 */	lwz r29, 0x2e4(r3)
/* 81375A00 | 7F A3 EB 78 */	mr r3, r29
/* 81375A04 | 48 00 22 2D */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81375A08 | 38 00 00 01 */	li r0, 0x1
/* 81375A0C | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 81375A10 | 48 00 01 50 */	b .L_81375B60
.L_81375A14:
/* 81375A14 | 2C 05 00 01 */	cmpwi r5, 0x1
/* 81375A18 | 40 82 01 48 */	bne .L_81375B60
/* 81375A1C | 7F E3 FB 78 */	mr r3, r31
/* 81375A20 | 38 80 00 07 */	li r4, 0x7
/* 81375A24 | 38 A0 00 07 */	li r5, 0x7
/* 81375A28 | 48 00 10 99 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81375A2C | 54 60 10 3A */	slwi r0, r3, 2
/* 81375A30 | 7C 7F 02 14 */	add r3, r31, r0
/* 81375A34 | 83 A3 02 E4 */	lwz r29, 0x2e4(r3)
/* 81375A38 | 7F A3 EB 78 */	mr r3, r29
/* 81375A3C | 48 00 21 F5 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81375A40 | 38 00 00 01 */	li r0, 0x1
/* 81375A44 | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 81375A48 | 48 00 01 18 */	b .L_81375B60
.L_81375A4C:
/* 81375A4C | 2C 05 00 01 */	cmpwi r5, 0x1
/* 81375A50 | 40 82 01 10 */	bne .L_81375B60
/* 81375A54 | 7F E3 FB 78 */	mr r3, r31
/* 81375A58 | 38 80 00 08 */	li r4, 0x8
/* 81375A5C | 38 A0 00 07 */	li r5, 0x7
/* 81375A60 | 48 00 10 61 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81375A64 | 54 60 10 3A */	slwi r0, r3, 2
/* 81375A68 | 7C 7F 02 14 */	add r3, r31, r0
/* 81375A6C | 83 A3 02 E4 */	lwz r29, 0x2e4(r3)
/* 81375A70 | 7F A3 EB 78 */	mr r3, r29
/* 81375A74 | 48 00 21 BD */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81375A78 | 38 00 00 01 */	li r0, 0x1
/* 81375A7C | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 81375A80 | 48 00 00 E0 */	b .L_81375B60
.L_81375A84:
/* 81375A84 | 2C 05 00 01 */	cmpwi r5, 0x1
/* 81375A88 | 40 82 00 D8 */	bne .L_81375B60
/* 81375A8C | 7F E3 FB 78 */	mr r3, r31
/* 81375A90 | 38 80 00 09 */	li r4, 0x9
/* 81375A94 | 38 A0 00 07 */	li r5, 0x7
/* 81375A98 | 48 00 10 29 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81375A9C | 54 60 10 3A */	slwi r0, r3, 2
/* 81375AA0 | 7C 7F 02 14 */	add r3, r31, r0
/* 81375AA4 | 83 A3 02 E4 */	lwz r29, 0x2e4(r3)
/* 81375AA8 | 7F A3 EB 78 */	mr r3, r29
/* 81375AAC | 48 00 21 85 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81375AB0 | 38 00 00 01 */	li r0, 0x1
/* 81375AB4 | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 81375AB8 | 48 00 00 A8 */	b .L_81375B60
.L_81375ABC:
/* 81375ABC | 2C 05 00 01 */	cmpwi r5, 0x1
/* 81375AC0 | 40 82 00 A0 */	bne .L_81375B60
/* 81375AC4 | 7F E3 FB 78 */	mr r3, r31
/* 81375AC8 | 38 80 00 0A */	li r4, 0xa
/* 81375ACC | 38 A0 00 07 */	li r5, 0x7
/* 81375AD0 | 48 00 0F F1 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81375AD4 | 54 60 10 3A */	slwi r0, r3, 2
/* 81375AD8 | 7C 7F 02 14 */	add r3, r31, r0
/* 81375ADC | 83 A3 02 E4 */	lwz r29, 0x2e4(r3)
/* 81375AE0 | 7F A3 EB 78 */	mr r3, r29
/* 81375AE4 | 48 00 21 4D */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81375AE8 | 38 00 00 01 */	li r0, 0x1
/* 81375AEC | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 81375AF0 | 48 00 00 70 */	b .L_81375B60
.L_81375AF4:
/* 81375AF4 | 2C 05 00 02 */	cmpwi r5, 0x2
/* 81375AF8 | 40 82 00 68 */	bne .L_81375B60
/* 81375AFC | 7F E3 FB 78 */	mr r3, r31
/* 81375B00 | 38 80 00 11 */	li r4, 0x11
/* 81375B04 | 38 A0 00 0C */	li r5, 0xc
/* 81375B08 | 48 00 0F B9 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81375B0C | 54 60 10 3A */	slwi r0, r3, 2
/* 81375B10 | 7C 7F 02 14 */	add r3, r31, r0
/* 81375B14 | 83 A3 02 E4 */	lwz r29, 0x2e4(r3)
/* 81375B18 | 7F A3 EB 78 */	mr r3, r29
/* 81375B1C | 48 00 21 15 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81375B20 | 38 00 00 01 */	li r0, 0x1
/* 81375B24 | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 81375B28 | 48 00 00 38 */	b .L_81375B60
.L_81375B2C:
/* 81375B2C | 2C 05 00 02 */	cmpwi r5, 0x2
/* 81375B30 | 40 82 00 30 */	bne .L_81375B60
/* 81375B34 | 7F E3 FB 78 */	mr r3, r31
/* 81375B38 | 38 80 00 12 */	li r4, 0x12
/* 81375B3C | 38 A0 00 0C */	li r5, 0xc
/* 81375B40 | 48 00 0F 81 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81375B44 | 54 60 10 3A */	slwi r0, r3, 2
/* 81375B48 | 7C 7F 02 14 */	add r3, r31, r0
/* 81375B4C | 83 A3 02 E4 */	lwz r29, 0x2e4(r3)
/* 81375B50 | 7F A3 EB 78 */	mr r3, r29
/* 81375B54 | 48 00 20 DD */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81375B58 | 38 00 00 01 */	li r0, 0x1
/* 81375B5C | 90 1D 00 14 */	stw r0, 0x14(r29)
.L_81375B60:
/* 81375B60 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81375B64 | 48 28 39 B1 */	bl _restgpr_29
/* 81375B68 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81375B6C | 7C 08 03 A6 */	mtlr r0
/* 81375B70 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81375B74 | 4E 80 00 20 */	blr
.endfn startLeftEvent__Q210homebutton10HomeButtonFPCc

# .text:0x45D0 | 0x81375B78 | size: 0x960
# homebutton::HomeButton::startTrigEvent(const char*)
.fn startTrigEvent__Q210homebutton10HomeButtonFPCc, global
/* 81375B78 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81375B7C | 7C 08 02 A6 */	mflr r0
/* 81375B80 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81375B84 | DB E1 00 40 */	stfd f31, 0x40(r1)
/* 81375B88 | F3 E1 00 48 */	psq_st f31, 0x48(r1), 0, qr0
/* 81375B8C | DB C1 00 30 */	stfd f30, 0x30(r1)
/* 81375B90 | F3 C1 00 38 */	psq_st f30, 0x38(r1), 0, qr0
/* 81375B94 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81375B98 | 48 28 39 2D */	bl _savegpr_28
/* 81375B9C | 3C 00 43 30 */	lis r0, 0x4330
/* 81375BA0 | 7C 7F 1B 78 */	mr r31, r3
/* 81375BA4 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81375BA8 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 81375BAC | 48 00 0E 0D */	bl getPaneNo__Q210homebutton10HomeButtonFPCc
/* 81375BB0 | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 81375BB4 | 7C 7E 1B 78 */	mr r30, r3
/* 81375BB8 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81375BBC | 40 82 08 F4 */	bne .L_813764B0
/* 81375BC0 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 81375BC4 | 41 82 08 EC */	beq .L_813764B0
/* 81375BC8 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 81375BCC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81375BD0 | 40 82 01 10 */	bne .L_81375CE0
/* 81375BD4 | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 81375BD8 | 7C 03 00 00 */	cmpw r3, r0
/* 81375BDC | 40 80 01 04 */	bge .L_81375CE0
/* 81375BE0 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81375BE4 | 7F E3 FB 78 */	mr r3, r31
/* 81375BE8 | 90 1F 00 B0 */	stw r0, 0xb0(r31)
/* 81375BEC | 38 9E 00 04 */	addi r4, r30, 0x4
/* 81375BF0 | 38 A0 00 01 */	li r5, 0x1
/* 81375BF4 | 48 00 0E 7D */	bl findAnimator__Q210homebutton10HomeButtonFii
/* 81375BF8 | 54 60 10 3A */	slwi r0, r3, 2
/* 81375BFC | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 81375C00 | 7C 7F 02 14 */	add r3, r31, r0
/* 81375C04 | 83 A3 02 B4 */	lwz r29, 0x2b4(r3)
/* 81375C08 | 7F A3 EB 78 */	mr r3, r29
/* 81375C0C | 48 00 20 25 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81375C10 | 38 00 00 01 */	li r0, 0x1
/* 81375C14 | 7F E3 FB 78 */	mr r3, r31
/* 81375C18 | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 81375C1C | 38 80 00 05 */	li r4, 0x5
/* 81375C20 | 48 00 14 61 */	bl play_sound__Q210homebutton10HomeButtonFi
/* 81375C24 | 57 C0 10 3A */	slwi r0, r30, 2
/* 81375C28 | 7C 7F 02 14 */	add r3, r31, r0
/* 81375C2C | 80 03 00 98 */	lwz r0, 0x98(r3)
/* 81375C30 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81375C34 | 41 82 00 A0 */	beq .L_81375CD4
/* 81375C38 | 38 60 00 0B */	li r3, 0xb
/* 81375C3C | 38 00 00 02 */	li r0, 0x2
/* 81375C40 | 90 7F 00 10 */	stw r3, 0x10(r31)
/* 81375C44 | 3F A0 81 64 */	lis r29, scFuncTextPaneName__Q210homebutton10HomeButton@ha
/* 81375C48 | 80 7F 02 2C */	lwz r3, 0x22c(r31)
/* 81375C4C | 3B BD 53 D0 */	addi r29, r29, scFuncTextPaneName__Q210homebutton10HomeButton@l
/* 81375C50 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 81375C54 | 38 A0 00 01 */	li r5, 0x1
/* 81375C58 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81375C5C | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 81375C60 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81375C64 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81375C68 | 7D 89 03 A6 */	mtctr r12
/* 81375C6C | 4E 80 04 21 */	bctrl
/* 81375C70 | 4B FD 01 F5 */	bl "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"
/* 81375C74 | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 81375C78 | 38 1E 00 02 */	addi r0, r30, 0x2
/* 81375C7C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81375C80 | 54 00 10 3A */	slwi r0, r0, 2
/* 81375C84 | 80 84 00 24 */	lwz r4, 0x24(r4)
/* 81375C88 | 38 A0 00 00 */	li r5, 0x0
/* 81375C8C | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 81375C90 | 1C 84 00 18 */	mulli r4, r4, 0x18
/* 81375C94 | 7C 9F 22 14 */	add r4, r31, r4
/* 81375C98 | 7C 84 02 14 */	add r4, r4, r0
/* 81375C9C | 80 84 00 B4 */	lwz r4, 0xb4(r4)
/* 81375CA0 | 7D 89 03 A6 */	mtctr r12
/* 81375CA4 | 4E 80 04 21 */	bctrl
/* 81375CA8 | 80 7F 02 2C */	lwz r3, 0x22c(r31)
/* 81375CAC | 38 A0 00 01 */	li r5, 0x1
/* 81375CB0 | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 81375CB4 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81375CB8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81375CBC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81375CC0 | 7D 89 03 A6 */	mtctr r12
/* 81375CC4 | 4E 80 04 21 */	bctrl
/* 81375CC8 | 38 80 00 01 */	li r4, 0x1
/* 81375CCC | 4B FC E7 49 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 81375CD0 | 48 00 07 E0 */	b .L_813764B0
.L_81375CD4:
/* 81375CD4 | 38 00 00 0F */	li r0, 0xf
/* 81375CD8 | 90 1F 00 10 */	stw r0, 0x10(r31)
/* 81375CDC | 48 00 07 D4 */	b .L_813764B0
.L_81375CE0:
/* 81375CE0 | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 81375CE4 | 7C 00 18 50 */	subf r0, r0, r3
/* 81375CE8 | 28 00 00 09 */	cmplwi r0, 0x9
/* 81375CEC | 41 81 07 C4 */	bgt .L_813764B0
/* 81375CF0 | 3C 60 81 64 */	lis r3, jumptable_816455B8@ha
/* 81375CF4 | 54 00 10 3A */	slwi r0, r0, 2
/* 81375CF8 | 38 63 55 B8 */	addi r3, r3, jumptable_816455B8@l
/* 81375CFC | 7C 63 00 2E */	lwzx r3, r3, r0
/* 81375D00 | 7C 69 03 A6 */	mtctr r3
/* 81375D04 | 4E 80 04 20 */	bctr
.L_81375D08:
/* 81375D08 | 80 7F 04 3C */	lwz r3, 0x43c(r31)
/* 81375D0C | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81375D10 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81375D14 | 40 82 00 0C */	bne .L_81375D20
/* 81375D18 | 38 00 00 00 */	li r0, 0x0
/* 81375D1C | 90 03 00 14 */	stw r0, 0x14(r3)
.L_81375D20:
/* 81375D20 | 80 7F 04 18 */	lwz r3, 0x418(r31)
/* 81375D24 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81375D28 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81375D2C | 40 82 00 0C */	bne .L_81375D38
/* 81375D30 | 38 00 00 00 */	li r0, 0x0
/* 81375D34 | 90 03 00 14 */	stw r0, 0x14(r3)
.L_81375D38:
/* 81375D38 | 38 60 00 00 */	li r3, 0x0
/* 81375D3C | 38 00 00 04 */	li r0, 0x4
/* 81375D40 | 90 7F 00 B0 */	stw r3, 0xb0(r31)
/* 81375D44 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 81375D48 | 83 BF 04 1C */	lwz r29, 0x41c(r31)
/* 81375D4C | 7F A3 EB 78 */	mr r3, r29
/* 81375D50 | 48 00 1E E1 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81375D54 | 38 60 00 01 */	li r3, 0x1
/* 81375D58 | 38 00 00 0E */	li r0, 0xe
/* 81375D5C | 90 7D 00 14 */	stw r3, 0x14(r29)
/* 81375D60 | 7F E3 FB 78 */	mr r3, r31
/* 81375D64 | 38 80 00 01 */	li r4, 0x1
/* 81375D68 | 90 1F 00 10 */	stw r0, 0x10(r31)
/* 81375D6C | 48 00 13 15 */	bl play_sound__Q210homebutton10HomeButtonFi
/* 81375D70 | 48 00 07 40 */	b .L_813764B0
.L_81375D74:
/* 81375D74 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 81375D78 | 40 82 00 68 */	bne .L_81375DE0
/* 81375D7C | 38 00 00 04 */	li r0, 0x4
/* 81375D80 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 81375D84 | 83 DF 04 1C */	lwz r30, 0x41c(r31)
/* 81375D88 | 7F C3 F3 78 */	mr r3, r30
/* 81375D8C | 48 00 1E A5 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81375D90 | 3B A0 00 01 */	li r29, 0x1
/* 81375D94 | 38 00 00 02 */	li r0, 0x2
/* 81375D98 | 93 BE 00 14 */	stw r29, 0x14(r30)
/* 81375D9C | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 81375DA0 | 83 DF 04 14 */	lwz r30, 0x414(r31)
/* 81375DA4 | 7F C3 F3 78 */	mr r3, r30
/* 81375DA8 | 48 00 1E 89 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81375DAC | 93 BE 00 14 */	stw r29, 0x14(r30)
/* 81375DB0 | 83 DF 04 38 */	lwz r30, 0x438(r31)
/* 81375DB4 | 7F C3 F3 78 */	mr r3, r30
/* 81375DB8 | 48 00 1E 79 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81375DBC | 93 BE 00 14 */	stw r29, 0x14(r30)
/* 81375DC0 | 38 60 00 0A */	li r3, 0xa
/* 81375DC4 | 38 00 00 00 */	li r0, 0x0
/* 81375DC8 | 38 80 00 08 */	li r4, 0x8
/* 81375DCC | 90 7F 00 10 */	stw r3, 0x10(r31)
/* 81375DD0 | 7F E3 FB 78 */	mr r3, r31
/* 81375DD4 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 81375DD8 | 48 00 12 A9 */	bl play_sound__Q210homebutton10HomeButtonFi
/* 81375DDC | 48 00 06 D4 */	b .L_813764B0
.L_81375DE0:
/* 81375DE0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81375DE4 | 40 82 06 CC */	bne .L_813764B0
/* 81375DE8 | 83 DF 04 10 */	lwz r30, 0x410(r31)
/* 81375DEC | 7F C3 F3 78 */	mr r3, r30
/* 81375DF0 | 48 00 1E 41 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81375DF4 | 3B A0 00 01 */	li r29, 0x1
/* 81375DF8 | 38 00 00 09 */	li r0, 0x9
/* 81375DFC | 93 BE 00 14 */	stw r29, 0x14(r30)
/* 81375E00 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 81375E04 | 83 DF 04 30 */	lwz r30, 0x430(r31)
/* 81375E08 | 7F C3 F3 78 */	mr r3, r30
/* 81375E0C | 48 00 1E 25 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81375E10 | 93 BE 00 14 */	stw r29, 0x14(r30)
/* 81375E14 | 38 00 00 0A */	li r0, 0xa
/* 81375E18 | 3F A0 81 64 */	lis r29, scFuncTouchPaneName__Q210homebutton10HomeButton@ha
/* 81375E1C | 3B 80 00 02 */	li r28, 0x2
/* 81375E20 | 90 1F 00 10 */	stw r0, 0x10(r31)
/* 81375E24 | 3B BD 53 8C */	addi r29, r29, scFuncTouchPaneName__Q210homebutton10HomeButton@l
/* 81375E28 | 3B C0 00 08 */	li r30, 0x8
.L_81375E2C:
/* 81375E2C | 80 7F 02 2C */	lwz r3, 0x22c(r31)
/* 81375E30 | 38 A0 00 01 */	li r5, 0x1
/* 81375E34 | 7C 9D F0 2E */	lwzx r4, r29, r30
/* 81375E38 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81375E3C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81375E40 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81375E44 | 7D 89 03 A6 */	mtctr r12
/* 81375E48 | 4E 80 04 21 */	bctrl
/* 81375E4C | 38 80 00 01 */	li r4, 0x1
/* 81375E50 | 4B FC E5 C5 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 81375E54 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 81375E58 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 81375E5C | 2C 1C 00 07 */	cmpwi r28, 0x7
/* 81375E60 | 41 80 FF CC */	blt .L_81375E2C
/* 81375E64 | 38 00 00 01 */	li r0, 0x1
/* 81375E68 | 7F E3 FB 78 */	mr r3, r31
/* 81375E6C | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 81375E70 | 38 80 00 05 */	li r4, 0x5
/* 81375E74 | 48 00 12 0D */	bl play_sound__Q210homebutton10HomeButtonFi
/* 81375E78 | 48 00 06 38 */	b .L_813764B0
.L_81375E7C:
/* 81375E7C | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 81375E80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81375E84 | 40 81 01 60 */	ble .L_81375FE4
/* 81375E88 | 38 83 FF FF */	subi r4, r3, 0x1
/* 81375E8C | 7F E3 FB 78 */	mr r3, r31
/* 81375E90 | 90 9F 00 80 */	stw r4, 0x80(r31)
/* 81375E94 | 38 84 00 15 */	addi r4, r4, 0x15
/* 81375E98 | 38 A0 00 0A */	li r5, 0xa
/* 81375E9C | 48 00 0C 25 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81375EA0 | 54 60 10 3A */	slwi r0, r3, 2
/* 81375EA4 | 38 C0 00 00 */	li r6, 0x0
/* 81375EA8 | 7C 9F 02 14 */	add r4, r31, r0
/* 81375EAC | 7F E3 FB 78 */	mr r3, r31
/* 81375EB0 | 80 84 02 E4 */	lwz r4, 0x2e4(r4)
/* 81375EB4 | 38 A0 00 09 */	li r5, 0x9
/* 81375EB8 | 90 C4 00 14 */	stw r6, 0x14(r4)
/* 81375EBC | 80 9F 00 80 */	lwz r4, 0x80(r31)
/* 81375EC0 | 38 84 00 15 */	addi r4, r4, 0x15
/* 81375EC4 | 48 00 0B FD */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81375EC8 | 54 60 10 3A */	slwi r0, r3, 2
/* 81375ECC | 7C 7F 02 14 */	add r3, r31, r0
/* 81375ED0 | 83 A3 02 E4 */	lwz r29, 0x2e4(r3)
/* 81375ED4 | 7F A3 EB 78 */	mr r3, r29
/* 81375ED8 | 48 00 1D 59 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81375EDC | 38 00 00 01 */	li r0, 0x1
/* 81375EE0 | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 81375EE4 | 80 1F 00 80 */	lwz r0, 0x80(r31)
/* 81375EE8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81375EEC | 40 82 00 68 */	bne .L_81375F54
/* 81375EF0 | 7F E3 FB 78 */	mr r3, r31
/* 81375EF4 | 38 80 00 0C */	li r4, 0xc
/* 81375EF8 | 48 00 11 89 */	bl play_sound__Q210homebutton10HomeButtonFi
/* 81375EFC | CB E2 82 F8 */	lfd f31, lbl_816946F8@sda21(r0)
/* 81375F00 | 3B 80 00 00 */	li r28, 0x0
/* 81375F04 | C3 C2 82 F0 */	lfs f30, lbl_816946F0@sda21(r0)
/* 81375F08 | 3B C0 00 00 */	li r30, 0x0
.L_81375F0C:
/* 81375F0C | 80 1F 00 80 */	lwz r0, 0x80(r31)
/* 81375F10 | 7F BF F2 14 */	add r29, r31, r30
/* 81375F14 | 80 7D 02 A0 */	lwz r3, 0x2a0(r29)
/* 81375F18 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 81375F1C | 90 01 00 0C */	stw r0, 0xc(r1)
/* 81375F20 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 81375F24 | EC 00 F8 28 */	fsubs f0, f0, f31
/* 81375F28 | EC 20 F0 24 */	fdivs f1, f0, f30
/* 81375F2C | 48 00 19 51 */	bl setSpeakerVol__Q210homebutton10ControllerFf
/* 81375F30 | 80 7D 02 A0 */	lwz r3, 0x2a0(r29)
/* 81375F34 | 38 A0 00 01 */	li r5, 0x1
/* 81375F38 | 80 9F 06 08 */	lwz r4, 0x608(r31)
/* 81375F3C | 48 00 19 49 */	bl playSound__Q210homebutton10ControllerFPQ34nw4r3snd18SoundArchivePlayeri
/* 81375F40 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 81375F44 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 81375F48 | 2C 1C 00 04 */	cmpwi r28, 0x4
/* 81375F4C | 41 80 FF C0 */	blt .L_81375F0C
/* 81375F50 | 48 00 00 64 */	b .L_81375FB4
.L_81375F54:
/* 81375F54 | 7F E3 FB 78 */	mr r3, r31
/* 81375F58 | 38 80 00 0A */	li r4, 0xa
/* 81375F5C | 48 00 11 25 */	bl play_sound__Q210homebutton10HomeButtonFi
/* 81375F60 | CB E2 82 F8 */	lfd f31, lbl_816946F8@sda21(r0)
/* 81375F64 | 3B 80 00 00 */	li r28, 0x0
/* 81375F68 | C3 C2 82 F0 */	lfs f30, lbl_816946F0@sda21(r0)
/* 81375F6C | 3B C0 00 00 */	li r30, 0x0
.L_81375F70:
/* 81375F70 | 80 1F 00 80 */	lwz r0, 0x80(r31)
/* 81375F74 | 7F BF F2 14 */	add r29, r31, r30
/* 81375F78 | 80 7D 02 A0 */	lwz r3, 0x2a0(r29)
/* 81375F7C | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 81375F80 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81375F84 | C8 01 00 10 */	lfd f0, 0x10(r1)
/* 81375F88 | EC 00 F8 28 */	fsubs f0, f0, f31
/* 81375F8C | EC 20 F0 24 */	fdivs f1, f0, f30
/* 81375F90 | 48 00 18 ED */	bl setSpeakerVol__Q210homebutton10ControllerFf
/* 81375F94 | 80 7D 02 A0 */	lwz r3, 0x2a0(r29)
/* 81375F98 | 38 A0 00 01 */	li r5, 0x1
/* 81375F9C | 80 9F 06 08 */	lwz r4, 0x608(r31)
/* 81375FA0 | 48 00 18 E5 */	bl playSound__Q210homebutton10ControllerFPQ34nw4r3snd18SoundArchivePlayeri
/* 81375FA4 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 81375FA8 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 81375FAC | 2C 1C 00 04 */	cmpwi r28, 0x4
/* 81375FB0 | 41 80 FF C0 */	blt .L_81375F70
.L_81375FB4:
/* 81375FB4 | 7F E3 FB 78 */	mr r3, r31
/* 81375FB8 | 38 80 00 0B */	li r4, 0xb
/* 81375FBC | 38 A0 00 05 */	li r5, 0x5
/* 81375FC0 | 48 00 0B 01 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81375FC4 | 54 60 10 3A */	slwi r0, r3, 2
/* 81375FC8 | 7C 7F 02 14 */	add r3, r31, r0
/* 81375FCC | 83 A3 02 E4 */	lwz r29, 0x2e4(r3)
/* 81375FD0 | 7F A3 EB 78 */	mr r3, r29
/* 81375FD4 | 48 00 1C 5D */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81375FD8 | 38 00 00 01 */	li r0, 0x1
/* 81375FDC | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 81375FE0 | 48 00 04 D0 */	b .L_813764B0
.L_81375FE4:
/* 81375FE4 | 7F E3 FB 78 */	mr r3, r31
/* 81375FE8 | 38 80 00 0D */	li r4, 0xd
/* 81375FEC | 48 00 10 95 */	bl play_sound__Q210homebutton10HomeButtonFi
/* 81375FF0 | 48 00 04 C0 */	b .L_813764B0
.L_81375FF4:
/* 81375FF4 | 80 9F 00 80 */	lwz r4, 0x80(r31)
/* 81375FF8 | 2C 04 00 0A */	cmpwi r4, 0xa
/* 81375FFC | 40 80 01 60 */	bge .L_8137615C
/* 81376000 | 7F E3 FB 78 */	mr r3, r31
/* 81376004 | 38 84 00 15 */	addi r4, r4, 0x15
/* 81376008 | 38 A0 00 09 */	li r5, 0x9
/* 8137600C | 48 00 0A B5 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81376010 | 54 60 10 3A */	slwi r0, r3, 2
/* 81376014 | 38 C0 00 00 */	li r6, 0x0
/* 81376018 | 7C 9F 02 14 */	add r4, r31, r0
/* 8137601C | 7F E3 FB 78 */	mr r3, r31
/* 81376020 | 80 84 02 E4 */	lwz r4, 0x2e4(r4)
/* 81376024 | 38 A0 00 0A */	li r5, 0xa
/* 81376028 | 90 C4 00 14 */	stw r6, 0x14(r4)
/* 8137602C | 80 9F 00 80 */	lwz r4, 0x80(r31)
/* 81376030 | 38 84 00 15 */	addi r4, r4, 0x15
/* 81376034 | 48 00 0A 8D */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81376038 | 54 60 10 3A */	slwi r0, r3, 2
/* 8137603C | 7C 7F 02 14 */	add r3, r31, r0
/* 81376040 | 83 A3 02 E4 */	lwz r29, 0x2e4(r3)
/* 81376044 | 7F A3 EB 78 */	mr r3, r29
/* 81376048 | 48 00 1B E9 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 8137604C | 38 00 00 01 */	li r0, 0x1
/* 81376050 | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 81376054 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 81376058 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8137605C | 2C 00 00 0A */	cmpwi r0, 0xa
/* 81376060 | 90 1F 00 80 */	stw r0, 0x80(r31)
/* 81376064 | 40 82 00 68 */	bne .L_813760CC
/* 81376068 | 7F E3 FB 78 */	mr r3, r31
/* 8137606C | 38 80 00 0B */	li r4, 0xb
/* 81376070 | 48 00 10 11 */	bl play_sound__Q210homebutton10HomeButtonFi
/* 81376074 | CB E2 82 F8 */	lfd f31, lbl_816946F8@sda21(r0)
/* 81376078 | 3B 80 00 00 */	li r28, 0x0
/* 8137607C | C3 C2 82 F0 */	lfs f30, lbl_816946F0@sda21(r0)
/* 81376080 | 3B C0 00 00 */	li r30, 0x0
.L_81376084:
/* 81376084 | 80 1F 00 80 */	lwz r0, 0x80(r31)
/* 81376088 | 7F BF F2 14 */	add r29, r31, r30
/* 8137608C | 80 7D 02 A0 */	lwz r3, 0x2a0(r29)
/* 81376090 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 81376094 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 81376098 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 8137609C | EC 00 F8 28 */	fsubs f0, f0, f31
/* 813760A0 | EC 20 F0 24 */	fdivs f1, f0, f30
/* 813760A4 | 48 00 17 D9 */	bl setSpeakerVol__Q210homebutton10ControllerFf
/* 813760A8 | 80 7D 02 A0 */	lwz r3, 0x2a0(r29)
/* 813760AC | 38 A0 00 01 */	li r5, 0x1
/* 813760B0 | 80 9F 06 08 */	lwz r4, 0x608(r31)
/* 813760B4 | 48 00 17 D1 */	bl playSound__Q210homebutton10ControllerFPQ34nw4r3snd18SoundArchivePlayeri
/* 813760B8 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813760BC | 3B DE 00 04 */	addi r30, r30, 0x4
/* 813760C0 | 2C 1C 00 04 */	cmpwi r28, 0x4
/* 813760C4 | 41 80 FF C0 */	blt .L_81376084
/* 813760C8 | 48 00 00 64 */	b .L_8137612C
.L_813760CC:
/* 813760CC | 7F E3 FB 78 */	mr r3, r31
/* 813760D0 | 38 80 00 09 */	li r4, 0x9
/* 813760D4 | 48 00 0F AD */	bl play_sound__Q210homebutton10HomeButtonFi
/* 813760D8 | CB C2 82 F8 */	lfd f30, lbl_816946F8@sda21(r0)
/* 813760DC | 3B 80 00 00 */	li r28, 0x0
/* 813760E0 | C3 E2 82 F0 */	lfs f31, lbl_816946F0@sda21(r0)
/* 813760E4 | 3B C0 00 00 */	li r30, 0x0
.L_813760E8:
/* 813760E8 | 80 1F 00 80 */	lwz r0, 0x80(r31)
/* 813760EC | 7F BF F2 14 */	add r29, r31, r30
/* 813760F0 | 80 7D 02 A0 */	lwz r3, 0x2a0(r29)
/* 813760F4 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 813760F8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813760FC | C8 01 00 10 */	lfd f0, 0x10(r1)
/* 81376100 | EC 00 F0 28 */	fsubs f0, f0, f30
/* 81376104 | EC 20 F8 24 */	fdivs f1, f0, f31
/* 81376108 | 48 00 17 75 */	bl setSpeakerVol__Q210homebutton10ControllerFf
/* 8137610C | 80 7D 02 A0 */	lwz r3, 0x2a0(r29)
/* 81376110 | 38 A0 00 01 */	li r5, 0x1
/* 81376114 | 80 9F 06 08 */	lwz r4, 0x608(r31)
/* 81376118 | 48 00 17 6D */	bl playSound__Q210homebutton10ControllerFPQ34nw4r3snd18SoundArchivePlayeri
/* 8137611C | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 81376120 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 81376124 | 2C 1C 00 04 */	cmpwi r28, 0x4
/* 81376128 | 41 80 FF C0 */	blt .L_813760E8
.L_8137612C:
/* 8137612C | 7F E3 FB 78 */	mr r3, r31
/* 81376130 | 38 80 00 0C */	li r4, 0xc
/* 81376134 | 38 A0 00 05 */	li r5, 0x5
/* 81376138 | 48 00 09 89 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 8137613C | 54 60 10 3A */	slwi r0, r3, 2
/* 81376140 | 7C 7F 02 14 */	add r3, r31, r0
/* 81376144 | 83 A3 02 E4 */	lwz r29, 0x2e4(r3)
/* 81376148 | 7F A3 EB 78 */	mr r3, r29
/* 8137614C | 48 00 1A E5 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81376150 | 38 00 00 01 */	li r0, 0x1
/* 81376154 | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 81376158 | 48 00 03 58 */	b .L_813764B0
.L_8137615C:
/* 8137615C | 7F E3 FB 78 */	mr r3, r31
/* 81376160 | 38 80 00 0D */	li r4, 0xd
/* 81376164 | 48 00 0F 1D */	bl play_sound__Q210homebutton10HomeButtonFi
/* 81376168 | 48 00 03 48 */	b .L_813764B0
.L_8137616C:
/* 8137616C | 88 1F 00 84 */	lbz r0, 0x84(r31)
/* 81376170 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81376174 | 40 82 00 78 */	bne .L_813761EC
/* 81376178 | 3B C0 00 01 */	li r30, 0x1
/* 8137617C | 38 60 00 01 */	li r3, 0x1
/* 81376180 | 9B DF 00 84 */	stb r30, 0x84(r31)
/* 81376184 | 48 20 4E A1 */	bl fn_8157B024
/* 81376188 | 7F E3 FB 78 */	mr r3, r31
/* 8137618C | 38 80 00 0E */	li r4, 0xe
/* 81376190 | 38 A0 00 08 */	li r5, 0x8
/* 81376194 | 48 00 09 2D */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81376198 | 54 60 10 3A */	slwi r0, r3, 2
/* 8137619C | 7C 7F 02 14 */	add r3, r31, r0
/* 813761A0 | 83 A3 02 E4 */	lwz r29, 0x2e4(r3)
/* 813761A4 | 7F A3 EB 78 */	mr r3, r29
/* 813761A8 | 48 00 1A 89 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 813761AC | 93 DD 00 14 */	stw r30, 0x14(r29)
/* 813761B0 | 7F E3 FB 78 */	mr r3, r31
/* 813761B4 | 38 80 00 10 */	li r4, 0x10
/* 813761B8 | 38 A0 00 06 */	li r5, 0x6
/* 813761BC | 48 00 09 05 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 813761C0 | 54 60 10 3A */	slwi r0, r3, 2
/* 813761C4 | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 813761C8 | 7C 7F 02 14 */	add r3, r31, r0
/* 813761CC | 83 A3 02 E4 */	lwz r29, 0x2e4(r3)
/* 813761D0 | 7F A3 EB 78 */	mr r3, r29
/* 813761D4 | 48 00 1A 5D */	bl initFrame__Q210homebutton15FrameControllerFv
/* 813761D8 | 93 DD 00 14 */	stw r30, 0x14(r29)
/* 813761DC | 7F E3 FB 78 */	mr r3, r31
/* 813761E0 | 38 80 00 0E */	li r4, 0xe
/* 813761E4 | 48 00 0E 9D */	bl play_sound__Q210homebutton10HomeButtonFi
/* 813761E8 | 48 00 00 40 */	b .L_81376228
.L_813761EC:
/* 813761EC | 7F E3 FB 78 */	mr r3, r31
/* 813761F0 | 38 80 00 10 */	li r4, 0x10
/* 813761F4 | 38 A0 00 0E */	li r5, 0xe
/* 813761F8 | 48 00 08 C9 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 813761FC | 54 60 10 3A */	slwi r0, r3, 2
/* 81376200 | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 81376204 | 7C 7F 02 14 */	add r3, r31, r0
/* 81376208 | 83 A3 02 E4 */	lwz r29, 0x2e4(r3)
/* 8137620C | 7F A3 EB 78 */	mr r3, r29
/* 81376210 | 48 00 1A 21 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81376214 | 38 00 00 01 */	li r0, 0x1
/* 81376218 | 7F E3 FB 78 */	mr r3, r31
/* 8137621C | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 81376220 | 38 80 00 0D */	li r4, 0xd
/* 81376224 | 48 00 0E 5D */	bl play_sound__Q210homebutton10HomeButtonFi
.L_81376228:
/* 81376228 | C3 E2 82 D8 */	lfs f31, lbl_816946D8@sda21(r0)
/* 8137622C | 3B 80 00 00 */	li r28, 0x0
/* 81376230 | 3B C0 00 00 */	li r30, 0x0
.L_81376234:
/* 81376234 | 7F BF F2 14 */	add r29, r31, r30
/* 81376238 | 80 7D 02 A0 */	lwz r3, 0x2a0(r29)
/* 8137623C | 48 00 18 6D */	bl startMotor__Q210homebutton10ControllerFv
/* 81376240 | D3 FD 02 08 */	stfs f31, 0x208(r29)
/* 81376244 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 81376248 | 2C 1C 00 04 */	cmpwi r28, 0x4
/* 8137624C | 3B DE 00 04 */	addi r30, r30, 0x4
/* 81376250 | D3 FD 02 18 */	stfs f31, 0x218(r29)
/* 81376254 | 41 80 FF E0 */	blt .L_81376234
/* 81376258 | 38 00 00 09 */	li r0, 0x9
/* 8137625C | 90 1F 00 10 */	stw r0, 0x10(r31)
/* 81376260 | 48 00 02 50 */	b .L_813764B0
.L_81376264:
/* 81376264 | 88 1F 00 84 */	lbz r0, 0x84(r31)
/* 81376268 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137626C | 41 82 00 7C */	beq .L_813762E8
/* 81376270 | 38 00 00 00 */	li r0, 0x0
/* 81376274 | 38 60 00 00 */	li r3, 0x0
/* 81376278 | 98 1F 00 84 */	stb r0, 0x84(r31)
/* 8137627C | 48 20 4D A9 */	bl fn_8157B024
/* 81376280 | 7F E3 FB 78 */	mr r3, r31
/* 81376284 | 38 80 00 0E */	li r4, 0xe
/* 81376288 | 38 A0 00 06 */	li r5, 0x6
/* 8137628C | 48 00 08 35 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81376290 | 54 60 10 3A */	slwi r0, r3, 2
/* 81376294 | 7C 7F 02 14 */	add r3, r31, r0
/* 81376298 | 83 A3 02 E4 */	lwz r29, 0x2e4(r3)
/* 8137629C | 7F A3 EB 78 */	mr r3, r29
/* 813762A0 | 48 00 19 91 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 813762A4 | 3B C0 00 01 */	li r30, 0x1
/* 813762A8 | 7F E3 FB 78 */	mr r3, r31
/* 813762AC | 93 DD 00 14 */	stw r30, 0x14(r29)
/* 813762B0 | 38 80 00 0D */	li r4, 0xd
/* 813762B4 | 38 A0 00 08 */	li r5, 0x8
/* 813762B8 | 48 00 08 09 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 813762BC | 54 60 10 3A */	slwi r0, r3, 2
/* 813762C0 | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 813762C4 | 7C 7F 02 14 */	add r3, r31, r0
/* 813762C8 | 83 A3 02 E4 */	lwz r29, 0x2e4(r3)
/* 813762CC | 7F A3 EB 78 */	mr r3, r29
/* 813762D0 | 48 00 19 61 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 813762D4 | 93 DD 00 14 */	stw r30, 0x14(r29)
/* 813762D8 | 7F E3 FB 78 */	mr r3, r31
/* 813762DC | 38 80 00 0F */	li r4, 0xf
/* 813762E0 | 48 00 0D A1 */	bl play_sound__Q210homebutton10HomeButtonFi
/* 813762E4 | 48 00 00 10 */	b .L_813762F4
.L_813762E8:
/* 813762E8 | 7F E3 FB 78 */	mr r3, r31
/* 813762EC | 38 80 00 0D */	li r4, 0xd
/* 813762F0 | 48 00 0D 91 */	bl play_sound__Q210homebutton10HomeButtonFi
.L_813762F4:
/* 813762F4 | 38 00 00 09 */	li r0, 0x9
/* 813762F8 | 90 1F 00 10 */	stw r0, 0x10(r31)
/* 813762FC | 48 00 01 B4 */	b .L_813764B0
.L_81376300:
/* 81376300 | 7F E3 FB 78 */	mr r3, r31
/* 81376304 | 38 80 00 0F */	li r4, 0xf
/* 81376308 | 38 A0 00 05 */	li r5, 0x5
/* 8137630C | 48 00 07 B5 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81376310 | 54 60 10 3A */	slwi r0, r3, 2
/* 81376314 | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 81376318 | 7C 7F 02 14 */	add r3, r31, r0
/* 8137631C | 83 A3 02 E4 */	lwz r29, 0x2e4(r3)
/* 81376320 | 7F A3 EB 78 */	mr r3, r29
/* 81376324 | 48 00 19 0D */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81376328 | 38 60 00 01 */	li r3, 0x1
/* 8137632C | 38 00 00 03 */	li r0, 0x3
/* 81376330 | 90 7D 00 14 */	stw r3, 0x14(r29)
/* 81376334 | 3B 80 00 00 */	li r28, 0x0
/* 81376338 | C3 E2 82 D8 */	lfs f31, lbl_816946D8@sda21(r0)
/* 8137633C | 3B C0 00 00 */	li r30, 0x0
/* 81376340 | 90 1F 00 10 */	stw r0, 0x10(r31)
/* 81376344 | 98 7F 00 88 */	stb r3, 0x88(r31)
.L_81376348:
/* 81376348 | 7C 7F F2 14 */	add r3, r31, r30
/* 8137634C | D3 E3 02 08 */	stfs f31, 0x208(r3)
/* 81376350 | D3 E3 02 18 */	stfs f31, 0x218(r3)
/* 81376354 | 80 63 02 A0 */	lwz r3, 0x2a0(r3)
/* 81376358 | 48 00 17 A9 */	bl stopMotor__Q210homebutton10ControllerFv
/* 8137635C | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 81376360 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 81376364 | 2C 1C 00 04 */	cmpwi r28, 0x4
/* 81376368 | 41 80 FF E0 */	blt .L_81376348
/* 8137636C | 38 00 00 1E */	li r0, 0x1e
/* 81376370 | 80 7F 02 2C */	lwz r3, 0x22c(r31)
/* 81376374 | 90 1F 02 28 */	stw r0, 0x228(r31)
/* 81376378 | 3F C0 81 64 */	lis r30, scFuncTextPaneName__Q210homebutton10HomeButton@ha
/* 8137637C | 38 A0 00 01 */	li r5, 0x1
/* 81376380 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81376384 | 80 9E 53 D0 */	lwz r4, scFuncTextPaneName__Q210homebutton10HomeButton@l(r30)
/* 81376388 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8137638C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81376390 | 7D 89 03 A6 */	mtctr r12
/* 81376394 | 4E 80 04 21 */	bctrl
/* 81376398 | 38 80 00 01 */	li r4, 0x1
/* 8137639C | 4B FC E0 79 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813763A0 | 80 DF 02 2C */	lwz r6, 0x22c(r31)
/* 813763A4 | 38 7E 53 D0 */	addi r3, r30, scFuncTextPaneName__Q210homebutton10HomeButton@l
/* 813763A8 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 813763AC | 38 A0 00 01 */	li r5, 0x1
/* 813763B0 | 80 66 00 10 */	lwz r3, 0x10(r6)
/* 813763B4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813763B8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813763BC | 7D 89 03 A6 */	mtctr r12
/* 813763C0 | 4E 80 04 21 */	bctrl
/* 813763C4 | 38 80 00 01 */	li r4, 0x1
/* 813763C8 | 4B FC E0 4D */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813763CC | 7F E3 FB 78 */	mr r3, r31
/* 813763D0 | 38 80 00 05 */	li r4, 0x5
/* 813763D4 | 48 00 0C AD */	bl play_sound__Q210homebutton10HomeButtonFi
/* 813763D8 | 7F E3 FB 78 */	mr r3, r31
/* 813763DC | 38 80 00 10 */	li r4, 0x10
/* 813763E0 | 48 00 0C A1 */	bl play_sound__Q210homebutton10HomeButtonFi
/* 813763E4 | 48 00 00 CC */	b .L_813764B0
.L_813763E8:
/* 813763E8 | 7F E3 FB 78 */	mr r3, r31
/* 813763EC | 38 80 00 13 */	li r4, 0x13
/* 813763F0 | 38 A0 00 0D */	li r5, 0xd
/* 813763F4 | 48 00 06 CD */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 813763F8 | 54 60 10 3A */	slwi r0, r3, 2
/* 813763FC | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 81376400 | 7C 7F 02 14 */	add r3, r31, r0
/* 81376404 | 83 A3 02 E4 */	lwz r29, 0x2e4(r3)
/* 81376408 | 7F A3 EB 78 */	mr r3, r29
/* 8137640C | 48 00 18 25 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81376410 | 38 00 00 01 */	li r0, 0x1
/* 81376414 | 38 60 00 0D */	li r3, 0xd
/* 81376418 | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 8137641C | 38 00 00 00 */	li r0, 0x0
/* 81376420 | 80 9F 00 B0 */	lwz r4, 0xb0(r31)
/* 81376424 | 90 7F 00 10 */	stw r3, 0x10(r31)
/* 81376428 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 8137642C | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 81376430 | 40 82 00 14 */	bne .L_81376444
/* 81376434 | 7F E3 FB 78 */	mr r3, r31
/* 81376438 | 38 80 00 02 */	li r4, 0x2
/* 8137643C | 48 00 0C 45 */	bl play_sound__Q210homebutton10HomeButtonFi
/* 81376440 | 48 00 00 70 */	b .L_813764B0
.L_81376444:
/* 81376444 | 2C 04 00 02 */	cmpwi r4, 0x2
/* 81376448 | 40 82 00 68 */	bne .L_813764B0
/* 8137644C | 7F E3 FB 78 */	mr r3, r31
/* 81376450 | 38 80 00 03 */	li r4, 0x3
/* 81376454 | 48 00 0C 2D */	bl play_sound__Q210homebutton10HomeButtonFi
/* 81376458 | 48 00 00 58 */	b .L_813764B0
.L_8137645C:
/* 8137645C | 7F E3 FB 78 */	mr r3, r31
/* 81376460 | 38 80 00 14 */	li r4, 0x14
/* 81376464 | 38 A0 00 0D */	li r5, 0xd
/* 81376468 | 48 00 06 59 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 8137646C | 54 60 10 3A */	slwi r0, r3, 2
/* 81376470 | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 81376474 | 7C 7F 02 14 */	add r3, r31, r0
/* 81376478 | 83 A3 02 E4 */	lwz r29, 0x2e4(r3)
/* 8137647C | 7F A3 EB 78 */	mr r3, r29
/* 81376480 | 48 00 17 B1 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81376484 | 38 00 00 01 */	li r0, 0x1
/* 81376488 | 38 80 00 0D */	li r4, 0xd
/* 8137648C | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 81376490 | 38 A0 FF FF */	li r5, -0x1
/* 81376494 | 38 00 00 00 */	li r0, 0x0
/* 81376498 | 7F E3 FB 78 */	mr r3, r31
/* 8137649C | 90 9F 00 10 */	stw r4, 0x10(r31)
/* 813764A0 | 38 80 00 06 */	li r4, 0x6
/* 813764A4 | 90 BF 00 B0 */	stw r5, 0xb0(r31)
/* 813764A8 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813764AC | 48 00 0B D5 */	bl play_sound__Q210homebutton10HomeButtonFi
.L_813764B0:
/* 813764B0 | E3 E1 00 48 */	psq_l f31, 0x48(r1), 0, qr0
/* 813764B4 | CB E1 00 40 */	lfd f31, 0x40(r1)
/* 813764B8 | E3 C1 00 38 */	psq_l f30, 0x38(r1), 0, qr0
/* 813764BC | 39 61 00 30 */	addi r11, r1, 0x30
/* 813764C0 | CB C1 00 30 */	lfd f30, 0x30(r1)
/* 813764C4 | 48 28 30 4D */	bl _restgpr_28
/* 813764C8 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 813764CC | 7C 08 03 A6 */	mtlr r0
/* 813764D0 | 38 21 00 50 */	addi r1, r1, 0x50
/* 813764D4 | 4E 80 00 20 */	blr
.endfn startTrigEvent__Q210homebutton10HomeButtonFPCc

# .text:0x4F30 | 0x813764D8 | size: 0x18C
# homebutton::HomeButton::reset_btn()
.fn reset_btn__Q210homebutton10HomeButtonFv, global
/* 813764D8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813764DC | 7C 08 02 A6 */	mflr r0
/* 813764E0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813764E4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813764E8 | 48 28 2F D1 */	bl _savegpr_25
/* 813764EC | 3B 20 00 00 */	li r25, 0x0
/* 813764F0 | 7C 7F 1B 78 */	mr r31, r3
/* 813764F4 | 7F 3D CB 78 */	mr r29, r25
/* 813764F8 | 3B C0 00 00 */	li r30, 0x0
/* 813764FC | 3B 80 00 01 */	li r28, 0x1
/* 81376500 | 48 00 00 48 */	b .L_81376548
.L_81376504:
/* 81376504 | 7F 5F F2 14 */	add r26, r31, r30
/* 81376508 | 80 1A 00 1C */	lwz r0, 0x1c(r26)
/* 8137650C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81376510 | 41 82 00 30 */	beq .L_81376540
/* 81376514 | 7F E3 FB 78 */	mr r3, r31
/* 81376518 | 7F 24 CB 78 */	mr r4, r25
/* 8137651C | 38 A0 00 02 */	li r5, 0x2
/* 81376520 | 48 00 05 51 */	bl findAnimator__Q210homebutton10HomeButtonFii
/* 81376524 | 54 60 10 3A */	slwi r0, r3, 2
/* 81376528 | 7C 7F 02 14 */	add r3, r31, r0
/* 8137652C | 83 63 02 B4 */	lwz r27, 0x2b4(r3)
/* 81376530 | 7F 63 DB 78 */	mr r3, r27
/* 81376534 | 48 00 16 FD */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81376538 | 93 9B 00 14 */	stw r28, 0x14(r27)
/* 8137653C | 93 BA 00 1C */	stw r29, 0x1c(r26)
.L_81376540:
/* 81376540 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 81376544 | 3B DE 00 04 */	addi r30, r30, 0x4
.L_81376548:
/* 81376548 | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 8137654C | 7C 19 00 00 */	cmpw r25, r0
/* 81376550 | 41 80 FF B4 */	blt .L_81376504
/* 81376554 | 54 00 10 3A */	slwi r0, r0, 2
/* 81376558 | 7C 7F 02 14 */	add r3, r31, r0
/* 8137655C | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 81376560 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81376564 | 41 82 00 30 */	beq .L_81376594
/* 81376568 | 83 7F 04 3C */	lwz r27, 0x43c(r31)
/* 8137656C | 7F 63 DB 78 */	mr r3, r27
/* 81376570 | 48 00 16 C1 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81376574 | 38 00 00 01 */	li r0, 0x1
/* 81376578 | 38 80 00 00 */	li r4, 0x0
/* 8137657C | 90 1B 00 14 */	stw r0, 0x14(r27)
/* 81376580 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 81376584 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81376588 | 54 00 10 3A */	slwi r0, r0, 2
/* 8137658C | 7C 7F 02 14 */	add r3, r31, r0
/* 81376590 | 90 83 00 1C */	stw r4, 0x1c(r3)
.L_81376594:
/* 81376594 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 81376598 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8137659C | 54 00 10 3A */	slwi r0, r0, 2
/* 813765A0 | 7C 7F 02 14 */	add r3, r31, r0
/* 813765A4 | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 813765A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813765AC | 41 82 00 A0 */	beq .L_8137664C
/* 813765B0 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 813765B4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813765B8 | 40 82 00 54 */	bne .L_8137660C
/* 813765BC | 80 1F 00 18 */	lwz r0, 0x18(r31)
/* 813765C0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813765C4 | 40 82 00 88 */	bne .L_8137664C
/* 813765C8 | 7F E3 FB 78 */	mr r3, r31
/* 813765CC | 38 80 00 05 */	li r4, 0x5
/* 813765D0 | 38 A0 00 14 */	li r5, 0x14
/* 813765D4 | 48 00 04 ED */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 813765D8 | 54 60 10 3A */	slwi r0, r3, 2
/* 813765DC | 7C 7F 02 14 */	add r3, r31, r0
/* 813765E0 | 83 63 02 E4 */	lwz r27, 0x2e4(r3)
/* 813765E4 | 7F 63 DB 78 */	mr r3, r27
/* 813765E8 | 48 00 16 49 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 813765EC | 38 00 00 01 */	li r0, 0x1
/* 813765F0 | 38 80 00 00 */	li r4, 0x0
/* 813765F4 | 90 1B 00 14 */	stw r0, 0x14(r27)
/* 813765F8 | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 813765FC | 54 00 10 3A */	slwi r0, r0, 2
/* 81376600 | 7C 7F 02 14 */	add r3, r31, r0
/* 81376604 | 90 83 00 1C */	stw r4, 0x1c(r3)
/* 81376608 | 48 00 00 44 */	b .L_8137664C
.L_8137660C:
/* 8137660C | 7F E3 FB 78 */	mr r3, r31
/* 81376610 | 38 80 00 05 */	li r4, 0x5
/* 81376614 | 38 A0 00 03 */	li r5, 0x3
/* 81376618 | 48 00 04 A9 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 8137661C | 54 60 10 3A */	slwi r0, r3, 2
/* 81376620 | 7C 7F 02 14 */	add r3, r31, r0
/* 81376624 | 83 63 02 E4 */	lwz r27, 0x2e4(r3)
/* 81376628 | 7F 63 DB 78 */	mr r3, r27
/* 8137662C | 48 00 16 05 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81376630 | 38 00 00 01 */	li r0, 0x1
/* 81376634 | 38 80 00 00 */	li r4, 0x0
/* 81376638 | 90 1B 00 14 */	stw r0, 0x14(r27)
/* 8137663C | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 81376640 | 54 00 10 3A */	slwi r0, r0, 2
/* 81376644 | 7C 7F 02 14 */	add r3, r31, r0
/* 81376648 | 90 83 00 1C */	stw r4, 0x1c(r3)
.L_8137664C:
/* 8137664C | 39 61 00 30 */	addi r11, r1, 0x30
/* 81376650 | 48 28 2E B5 */	bl _restgpr_25
/* 81376654 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81376658 | 7C 08 03 A6 */	mtlr r0
/* 8137665C | 38 21 00 30 */	addi r1, r1, 0x30
/* 81376660 | 4E 80 00 20 */	blr
.endfn reset_btn__Q210homebutton10HomeButtonFv

# .text:0x50BC | 0x81376664 | size: 0x6C
# homebutton::HomeButton::reset_control()
.fn reset_control__Q210homebutton10HomeButtonFv, global
/* 81376664 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81376668 | 7C 08 02 A6 */	mflr r0
/* 8137666C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81376670 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81376674 | 48 28 2E 51 */	bl _savegpr_28
/* 81376678 | 7C 7C 1B 78 */	mr r28, r3
/* 8137667C | 3B A0 00 00 */	li r29, 0x0
/* 81376680 | 3B E0 00 01 */	li r31, 0x1
.L_81376684:
/* 81376684 | 7F 83 E3 78 */	mr r3, r28
/* 81376688 | 38 9D 00 06 */	addi r4, r29, 0x6
/* 8137668C | 38 A0 00 07 */	li r5, 0x7
/* 81376690 | 48 00 04 31 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81376694 | 54 60 10 3A */	slwi r0, r3, 2
/* 81376698 | 7C 7C 02 14 */	add r3, r28, r0
/* 8137669C | 83 C3 02 E4 */	lwz r30, 0x2e4(r3)
/* 813766A0 | 7F C3 F3 78 */	mr r3, r30
/* 813766A4 | 48 00 15 8D */	bl initFrame__Q210homebutton15FrameControllerFv
/* 813766A8 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 813766AC | 93 FE 00 14 */	stw r31, 0x14(r30)
/* 813766B0 | 2C 1D 00 05 */	cmpwi r29, 0x5
/* 813766B4 | 41 80 FF D0 */	blt .L_81376684
/* 813766B8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813766BC | 48 28 2E 55 */	bl _restgpr_28
/* 813766C0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813766C4 | 7C 08 03 A6 */	mtlr r0
/* 813766C8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813766CC | 4E 80 00 20 */	blr
.endfn reset_control__Q210homebutton10HomeButtonFv

# .text:0x5128 | 0x813766D0 | size: 0x80
# homebutton::HomeButton::reset_window()
.fn reset_window__Q210homebutton10HomeButtonFv, global
/* 813766D0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813766D4 | 7C 08 02 A6 */	mflr r0
/* 813766D8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813766DC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813766E0 | 48 28 2D E9 */	bl _savegpr_29
/* 813766E4 | 7C 7D 1B 78 */	mr r29, r3
/* 813766E8 | 38 80 00 11 */	li r4, 0x11
/* 813766EC | 38 A0 00 0C */	li r5, 0xc
/* 813766F0 | 48 00 03 D1 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 813766F4 | 54 60 10 3A */	slwi r0, r3, 2
/* 813766F8 | 7C 7D 02 14 */	add r3, r29, r0
/* 813766FC | 83 C3 02 E4 */	lwz r30, 0x2e4(r3)
/* 81376700 | 7F C3 F3 78 */	mr r3, r30
/* 81376704 | 48 00 15 2D */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81376708 | 3B E0 00 01 */	li r31, 0x1
/* 8137670C | 7F A3 EB 78 */	mr r3, r29
/* 81376710 | 93 FE 00 14 */	stw r31, 0x14(r30)
/* 81376714 | 38 80 00 12 */	li r4, 0x12
/* 81376718 | 38 A0 00 0C */	li r5, 0xc
/* 8137671C | 48 00 03 A5 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81376720 | 54 60 10 3A */	slwi r0, r3, 2
/* 81376724 | 7C 7D 02 14 */	add r3, r29, r0
/* 81376728 | 83 C3 02 E4 */	lwz r30, 0x2e4(r3)
/* 8137672C | 7F C3 F3 78 */	mr r3, r30
/* 81376730 | 48 00 15 01 */	bl initFrame__Q210homebutton15FrameControllerFv
/* 81376734 | 93 FE 00 14 */	stw r31, 0x14(r30)
/* 81376738 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8137673C | 48 28 2D D9 */	bl _restgpr_29
/* 81376740 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81376744 | 7C 08 03 A6 */	mtlr r0
/* 81376748 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8137674C | 4E 80 00 20 */	blr
.endfn reset_window__Q210homebutton10HomeButtonFv

# .text:0x51A8 | 0x81376750 | size: 0x94
# homebutton::HomeButton::reset_battery()
.fn reset_battery__Q210homebutton10HomeButtonFv, global
/* 81376750 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81376754 | 7C 08 02 A6 */	mflr r0
/* 81376758 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8137675C | 39 61 00 30 */	addi r11, r1, 0x30
/* 81376760 | 48 28 2D 59 */	bl _savegpr_25
/* 81376764 | 3F A0 81 64 */	lis r29, scBatteryPaneName__Q210homebutton10HomeButton@ha
/* 81376768 | 7C 79 1B 78 */	mr r25, r3
/* 8137676C | 3B BD 54 AC */	addi r29, r29, scBatteryPaneName__Q210homebutton10HomeButton@l
/* 81376770 | 3B 60 00 00 */	li r27, 0x0
/* 81376774 | 3B E0 00 00 */	li r31, 0x0
.L_81376778:
/* 81376778 | 7F 9D FA 14 */	add r28, r29, r31
/* 8137677C | 3B 40 00 00 */	li r26, 0x0
/* 81376780 | 3B C0 00 00 */	li r30, 0x0
.L_81376784:
/* 81376784 | 80 79 02 2C */	lwz r3, 0x22c(r25)
/* 81376788 | 38 A0 00 01 */	li r5, 0x1
/* 8137678C | 7C 9C F0 2E */	lwzx r4, r28, r30
/* 81376790 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81376794 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81376798 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8137679C | 7D 89 03 A6 */	mtctr r12
/* 813767A0 | 4E 80 04 21 */	bctrl
/* 813767A4 | 38 80 00 00 */	li r4, 0x0
/* 813767A8 | 4B FC DC 6D */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813767AC | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 813767B0 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 813767B4 | 2C 1A 00 04 */	cmpwi r26, 0x4
/* 813767B8 | 41 80 FF CC */	blt .L_81376784
/* 813767BC | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 813767C0 | 3B FF 00 10 */	addi r31, r31, 0x10
/* 813767C4 | 2C 1B 00 04 */	cmpwi r27, 0x4
/* 813767C8 | 41 80 FF B0 */	blt .L_81376778
/* 813767CC | 39 61 00 30 */	addi r11, r1, 0x30
/* 813767D0 | 48 28 2D 35 */	bl _restgpr_25
/* 813767D4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813767D8 | 7C 08 03 A6 */	mtlr r0
/* 813767DC | 38 21 00 30 */	addi r1, r1, 0x30
/* 813767E0 | 4E 80 00 20 */	blr
.endfn reset_battery__Q210homebutton10HomeButtonFv

# .text:0x523C | 0x813767E4 | size: 0xA8
# homebutton::HomeButton::reset_guiManager(int)
.fn reset_guiManager__Q210homebutton10HomeButtonFi, global
/* 813767E4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813767E8 | 7C 08 02 A6 */	mflr r0
/* 813767EC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813767F0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813767F4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813767F8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813767FC | 7C 7E 1B 78 */	mr r30, r3
/* 81376800 | 40 80 00 48 */	bge .L_81376848
/* 81376804 | 3B E0 00 00 */	li r31, 0x0
.L_81376808:
/* 81376808 | 80 7E 02 44 */	lwz r3, 0x244(r30)
/* 8137680C | 7F E4 FB 78 */	mr r4, r31
/* 81376810 | C0 22 83 48 */	lfs f1, lbl_81694748@sda21(r0)
/* 81376814 | 38 A0 00 00 */	li r5, 0x0
/* 81376818 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8137681C | 38 C0 00 00 */	li r6, 0x0
/* 81376820 | FC 40 08 90 */	fmr f2, f1
/* 81376824 | 38 E0 00 00 */	li r7, 0x0
/* 81376828 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8137682C | 39 00 00 00 */	li r8, 0x0
/* 81376830 | 7D 89 03 A6 */	mtctr r12
/* 81376834 | 4E 80 04 21 */	bctrl
/* 81376838 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8137683C | 2C 1F 00 08 */	cmpwi r31, 0x8
/* 81376840 | 41 80 FF C8 */	blt .L_81376808
/* 81376844 | 48 00 00 30 */	b .L_81376874
.L_81376848:
/* 81376848 | 80 63 02 44 */	lwz r3, 0x244(r3)
/* 8137684C | 38 A0 00 00 */	li r5, 0x0
/* 81376850 | C0 22 83 48 */	lfs f1, lbl_81694748@sda21(r0)
/* 81376854 | 38 C0 00 00 */	li r6, 0x0
/* 81376858 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8137685C | 38 E0 00 00 */	li r7, 0x0
/* 81376860 | FC 40 08 90 */	fmr f2, f1
/* 81376864 | 39 00 00 00 */	li r8, 0x0
/* 81376868 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8137686C | 7D 89 03 A6 */	mtctr r12
/* 81376870 | 4E 80 04 21 */	bctrl
.L_81376874:
/* 81376874 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81376878 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8137687C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81376880 | 7C 08 03 A6 */	mtlr r0
/* 81376884 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81376888 | 4E 80 00 20 */	blr
.endfn reset_guiManager__Q210homebutton10HomeButtonFi

# .text:0x52E4 | 0x8137688C | size: 0x3C
# homebutton::HomeButton::isUpBarActive() const
.fn isUpBarActive__Q210homebutton10HomeButtonCFv, global
/* 8137688C | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 81376890 | 38 A0 00 01 */	li r5, 0x1
/* 81376894 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81376898 | 40 82 00 24 */	bne .L_813768BC
/* 8137689C | 80 83 04 3C */	lwz r4, 0x43c(r3)
/* 813768A0 | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 813768A4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813768A8 | 41 82 00 14 */	beq .L_813768BC
/* 813768AC | 80 63 04 18 */	lwz r3, 0x418(r3)
/* 813768B0 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813768B4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813768B8 | 40 82 00 08 */	bne .L_813768C0
.L_813768BC:
/* 813768BC | 38 A0 00 00 */	li r5, 0x0
.L_813768C0:
/* 813768C0 | 7C A3 2B 78 */	mr r3, r5
/* 813768C4 | 4E 80 00 20 */	blr
.endfn isUpBarActive__Q210homebutton10HomeButtonCFv

# .text:0x5320 | 0x813768C8 | size: 0xF0
# homebutton::HomeButton::isDownBarActive()
.fn isDownBarActive__Q210homebutton10HomeButtonFv, global
/* 813768C8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813768CC | 7C 08 02 A6 */	mflr r0
/* 813768D0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813768D4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813768D8 | 48 28 2B E9 */	bl _savegpr_27
/* 813768DC | 7C 7E 1B 78 */	mr r30, r3
/* 813768E0 | 3B E0 00 01 */	li r31, 0x1
/* 813768E4 | 38 80 00 04 */	li r4, 0x4
/* 813768E8 | 38 A0 00 02 */	li r5, 0x2
/* 813768EC | 48 00 01 D5 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 813768F0 | 7C 7B 1B 78 */	mr r27, r3
/* 813768F4 | 7F C3 F3 78 */	mr r3, r30
/* 813768F8 | 38 80 00 05 */	li r4, 0x5
/* 813768FC | 38 A0 00 03 */	li r5, 0x3
/* 81376900 | 48 00 01 C1 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81376904 | 7C 7C 1B 78 */	mr r28, r3
/* 81376908 | 7F C3 F3 78 */	mr r3, r30
/* 8137690C | 38 80 00 04 */	li r4, 0x4
/* 81376910 | 38 A0 00 13 */	li r5, 0x13
/* 81376914 | 48 00 01 AD */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 81376918 | 7C 7D 1B 78 */	mr r29, r3
/* 8137691C | 7F C3 F3 78 */	mr r3, r30
/* 81376920 | 38 80 00 05 */	li r4, 0x5
/* 81376924 | 38 A0 00 14 */	li r5, 0x14
/* 81376928 | 48 00 01 99 */	bl findGroupAnimator__Q210homebutton10HomeButtonFii
/* 8137692C | 80 1E 00 10 */	lwz r0, 0x10(r30)
/* 81376930 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81376934 | 40 82 00 64 */	bne .L_81376998
/* 81376938 | 57 60 10 3A */	slwi r0, r27, 2
/* 8137693C | 7C 9E 02 14 */	add r4, r30, r0
/* 81376940 | 80 84 02 E4 */	lwz r4, 0x2e4(r4)
/* 81376944 | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 81376948 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8137694C | 41 82 00 4C */	beq .L_81376998
/* 81376950 | 57 80 10 3A */	slwi r0, r28, 2
/* 81376954 | 7C 9E 02 14 */	add r4, r30, r0
/* 81376958 | 80 84 02 E4 */	lwz r4, 0x2e4(r4)
/* 8137695C | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 81376960 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81376964 | 41 82 00 34 */	beq .L_81376998
/* 81376968 | 57 A0 10 3A */	slwi r0, r29, 2
/* 8137696C | 7C 9E 02 14 */	add r4, r30, r0
/* 81376970 | 80 84 02 E4 */	lwz r4, 0x2e4(r4)
/* 81376974 | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 81376978 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8137697C | 41 82 00 1C */	beq .L_81376998
/* 81376980 | 54 60 10 3A */	slwi r0, r3, 2
/* 81376984 | 7C 7E 02 14 */	add r3, r30, r0
/* 81376988 | 80 63 02 E4 */	lwz r3, 0x2e4(r3)
/* 8137698C | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81376990 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81376994 | 40 82 00 08 */	bne .L_8137699C
.L_81376998:
/* 81376998 | 3B E0 00 00 */	li r31, 0x0
.L_8137699C:
/* 8137699C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813769A0 | 7F E3 FB 78 */	mr r3, r31
/* 813769A4 | 48 28 2B 69 */	bl _restgpr_27
/* 813769A8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813769AC | 7C 08 03 A6 */	mtlr r0
/* 813769B0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813769B4 | 4E 80 00 20 */	blr
.endfn isDownBarActive__Q210homebutton10HomeButtonFv

# .text:0x5410 | 0x813769B8 | size: 0xB8
# homebutton::HomeButton::getPaneNo(const char*)
.fn getPaneNo__Q210homebutton10HomeButtonFPCc, global
/* 813769B8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813769BC | 7C 08 02 A6 */	mflr r0
/* 813769C0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813769C4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813769C8 | 48 28 2A F5 */	bl _savegpr_26
/* 813769CC | 3F C0 81 64 */	lis r30, scBtnName__Q210homebutton10HomeButton@ha
/* 813769D0 | 83 A3 00 08 */	lwz r29, 0x8(r3)
/* 813769D4 | 7C 9A 23 78 */	mr r26, r4
/* 813769D8 | 3B 80 FF FF */	li r28, -0x1
/* 813769DC | 3B DE 4B AC */	addi r30, r30, scBtnName__Q210homebutton10HomeButton@l
/* 813769E0 | 3B 60 00 00 */	li r27, 0x0
/* 813769E4 | 3B E0 00 00 */	li r31, 0x0
/* 813769E8 | 48 00 00 28 */	b .L_81376A10
.L_813769EC:
/* 813769EC | 7C 9E F8 2E */	lwzx r4, r30, r31
/* 813769F0 | 7F 43 D3 78 */	mr r3, r26
/* 813769F4 | 48 28 BA 8D */	bl strcmp
/* 813769F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813769FC | 40 82 00 0C */	bne .L_81376A08
/* 81376A00 | 7F 7C DB 78 */	mr r28, r27
/* 81376A04 | 48 00 00 14 */	b .L_81376A18
.L_81376A08:
/* 81376A08 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81376A0C | 3B FF 00 04 */	addi r31, r31, 0x4
.L_81376A10:
/* 81376A10 | 7C 1B E8 00 */	cmpw r27, r29
/* 81376A14 | 41 80 FF D8 */	blt .L_813769EC
.L_81376A18:
/* 81376A18 | 3F C0 81 64 */	lis r30, scFuncTouchPaneName__Q210homebutton10HomeButton@ha
/* 81376A1C | 3B 60 00 00 */	li r27, 0x0
/* 81376A20 | 3B DE 53 8C */	addi r30, r30, scFuncTouchPaneName__Q210homebutton10HomeButton@l
/* 81376A24 | 3B E0 00 00 */	li r31, 0x0
.L_81376A28:
/* 81376A28 | 7C 9E F8 2E */	lwzx r4, r30, r31
/* 81376A2C | 7F 43 D3 78 */	mr r3, r26
/* 81376A30 | 48 28 BA 51 */	bl strcmp
/* 81376A34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81376A38 | 40 82 00 0C */	bne .L_81376A44
/* 81376A3C | 7F 9B EA 14 */	add r28, r27, r29
/* 81376A40 | 48 00 00 14 */	b .L_81376A54
.L_81376A44:
/* 81376A44 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81376A48 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 81376A4C | 2C 1B 00 0A */	cmpwi r27, 0xa
/* 81376A50 | 41 80 FF D8 */	blt .L_81376A28
.L_81376A54:
/* 81376A54 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81376A58 | 7F 83 E3 78 */	mr r3, r28
/* 81376A5C | 48 28 2A AD */	bl _restgpr_26
/* 81376A60 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81376A64 | 7C 08 03 A6 */	mtlr r0
/* 81376A68 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81376A6C | 4E 80 00 20 */	blr
.endfn getPaneNo__Q210homebutton10HomeButtonFPCc

# .text:0x54C8 | 0x81376A70 | size: 0x50
# homebutton::HomeButton::findAnimator(int, int)
.fn findAnimator__Q210homebutton10HomeButtonFii, global
/* 81376A70 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 81376A74 | 3C E0 81 61 */	lis r7, scAnmTable__10homebutton@ha
/* 81376A78 | 38 E7 F3 78 */	addi r7, r7, scAnmTable__10homebutton@l
/* 81376A7C | 38 60 00 00 */	li r3, 0x0
/* 81376A80 | 38 C0 00 00 */	li r6, 0x0
/* 81376A84 | 7C 09 03 A6 */	mtctr r0
/* 81376A88 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81376A8C | 40 81 00 2C */	ble .L_81376AB8
.L_81376A90:
/* 81376A90 | 7C 07 30 2E */	lwzx r0, r7, r6
/* 81376A94 | 7D 07 32 14 */	add r8, r7, r6
/* 81376A98 | 7C 04 00 00 */	cmpw r4, r0
/* 81376A9C | 40 82 00 10 */	bne .L_81376AAC
/* 81376AA0 | 80 08 00 04 */	lwz r0, 0x4(r8)
/* 81376AA4 | 7C 05 00 00 */	cmpw r5, r0
/* 81376AA8 | 4D 82 00 20 */	beqlr
.L_81376AAC:
/* 81376AAC | 38 63 00 01 */	addi r3, r3, 0x1
/* 81376AB0 | 38 C6 00 08 */	addi r6, r6, 0x8
/* 81376AB4 | 42 00 FF DC */	bdnz .L_81376A90
.L_81376AB8:
/* 81376AB8 | 38 60 FF FF */	li r3, -0x1
/* 81376ABC | 4E 80 00 20 */	blr
.endfn findAnimator__Q210homebutton10HomeButtonFii

# .text:0x5518 | 0x81376AC0 | size: 0x48
# homebutton::HomeButton::findGroupAnimator(int, int)
.fn findGroupAnimator__Q210homebutton10HomeButtonFii, global
/* 81376AC0 | 3C E0 81 61 */	lis r7, scGroupAnmTable__10homebutton@ha
/* 81376AC4 | 38 00 00 4A */	li r0, 0x4a
/* 81376AC8 | 38 E7 F3 D8 */	addi r7, r7, scGroupAnmTable__10homebutton@l
/* 81376ACC | 38 60 00 00 */	li r3, 0x0
/* 81376AD0 | 38 C0 00 00 */	li r6, 0x0
/* 81376AD4 | 7C 09 03 A6 */	mtctr r0
.L_81376AD8:
/* 81376AD8 | 7C 07 30 2E */	lwzx r0, r7, r6
/* 81376ADC | 7D 07 32 14 */	add r8, r7, r6
/* 81376AE0 | 7C 04 00 00 */	cmpw r4, r0
/* 81376AE4 | 40 82 00 10 */	bne .L_81376AF4
/* 81376AE8 | 80 08 00 04 */	lwz r0, 0x4(r8)
/* 81376AEC | 7C 05 00 00 */	cmpw r5, r0
/* 81376AF0 | 4D 82 00 20 */	beqlr
.L_81376AF4:
/* 81376AF4 | 38 63 00 01 */	addi r3, r3, 0x1
/* 81376AF8 | 38 C6 00 08 */	addi r6, r6, 0x8
/* 81376AFC | 42 00 FF DC */	bdnz .L_81376AD8
/* 81376B00 | 38 60 FF FF */	li r3, -0x1
/* 81376B04 | 4E 80 00 20 */	blr
.endfn findGroupAnimator__Q210homebutton10HomeButtonFii

# .text:0x5560 | 0x81376B08 | size: 0x1C
# homebutton::HomeButton::getSelectBtnNum()
.fn getSelectBtnNum__Q210homebutton10HomeButtonFv, global
/* 81376B08 | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 81376B0C | 2C 00 00 12 */	cmpwi r0, 0x12
/* 81376B10 | 41 82 00 0C */	beq .L_81376B1C
/* 81376B14 | 38 60 FF FF */	li r3, -0x1
/* 81376B18 | 4E 80 00 20 */	blr
.L_81376B1C:
/* 81376B1C | 80 63 00 B0 */	lwz r3, 0xb0(r3)
/* 81376B20 | 4E 80 00 20 */	blr
.endfn getSelectBtnNum__Q210homebutton10HomeButtonFv

# .text:0x557C | 0x81376B24 | size: 0x44
# homebutton::HomeButton::setForcusSE()
.fn setForcusSE__Q210homebutton10HomeButtonFv, global
/* 81376B24 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81376B28 | 7C 08 02 A6 */	mflr r0
/* 81376B2C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81376B30 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81376B34 | 7C 7F 1B 78 */	mr r31, r3
/* 81376B38 | 80 03 00 64 */	lwz r0, 0x64(r3)
/* 81376B3C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81376B40 | 40 81 00 14 */	ble .L_81376B54
/* 81376B44 | 38 80 00 04 */	li r4, 0x4
/* 81376B48 | 48 00 05 39 */	bl play_sound__Q210homebutton10HomeButtonFi
/* 81376B4C | 38 00 00 00 */	li r0, 0x0
/* 81376B50 | 90 1F 00 64 */	stw r0, 0x64(r31)
.L_81376B54:
/* 81376B54 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81376B58 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81376B5C | 7C 08 03 A6 */	mtlr r0
/* 81376B60 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81376B64 | 4E 80 00 20 */	blr
.endfn setForcusSE__Q210homebutton10HomeButtonFv

# .text:0x55C0 | 0x81376B68 | size: 0x13C
# homebutton::HomeButton::setAdjustFlag(int)
.fn setAdjustFlag__Q210homebutton10HomeButtonFi, global
/* 81376B68 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81376B6C | 7C 08 02 A6 */	mflr r0
/* 81376B70 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81376B74 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81376B78 | 48 28 29 51 */	bl _savegpr_29
/* 81376B7C | 30 04 FF FF */	subic r0, r4, 0x1
/* 81376B80 | 88 A3 02 9C */	lbz r5, 0x29c(r3)
/* 81376B84 | 7C 80 21 10 */	subfe r4, r0, r4
/* 81376B88 | 7C 7F 1B 78 */	mr r31, r3
/* 81376B8C | 50 85 2E B4 */	rlwimi r5, r4, 5, 26, 26
/* 81376B90 | 98 83 00 87 */	stb r4, 0x87(r3)
/* 81376B94 | 54 80 06 3F */	clrlwi. r0, r4, 24
/* 81376B98 | 98 A3 02 9C */	stb r5, 0x29c(r3)
/* 81376B9C | 41 82 00 80 */	beq .L_81376C1C
/* 81376BA0 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 81376BA4 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81376BA8 | C0 24 00 38 */	lfs f1, 0x38(r4)
/* 81376BAC | C0 44 00 3C */	lfs f2, 0x3c(r4)
/* 81376BB0 | 4B FF B9 2D */	bl __ct__Q34nw4r4math4VEC2Fff
/* 81376BB4 | C0 21 00 10 */	lfs f1, 0x10(r1)
/* 81376BB8 | 38 81 00 18 */	addi r4, r1, 0x18
/* 81376BBC | C0 01 00 14 */	lfs f0, 0x14(r1)
/* 81376BC0 | D0 21 00 18 */	stfs f1, 0x18(r1)
/* 81376BC4 | D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 81376BC8 | 80 7F 02 2C */	lwz r3, 0x22c(r31)
/* 81376BCC | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81376BD0 | 38 63 00 44 */	addi r3, r3, 0x44
/* 81376BD4 | 4B FF 42 05 */	bl __as__Q34nw4r4math4VEC2FRCQ34nw4r4math4VEC2
/* 81376BD8 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 81376BDC | 80 03 00 28 */	lwz r0, 0x28(r3)
/* 81376BE0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81376BE4 | 40 82 00 A0 */	bne .L_81376C84
/* 81376BE8 | 3B A0 00 00 */	li r29, 0x0
/* 81376BEC | 3B C0 00 00 */	li r30, 0x0
.L_81376BF0:
/* 81376BF0 | 7C 7F F2 14 */	add r3, r31, r30
/* 81376BF4 | 38 81 00 18 */	addi r4, r1, 0x18
/* 81376BF8 | 80 63 02 30 */	lwz r3, 0x230(r3)
/* 81376BFC | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81376C00 | 38 63 00 44 */	addi r3, r3, 0x44
/* 81376C04 | 4B FF 41 D5 */	bl __as__Q34nw4r4math4VEC2FRCQ34nw4r4math4VEC2
/* 81376C08 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 81376C0C | 3B DE 00 04 */	addi r30, r30, 0x4
/* 81376C10 | 2C 1D 00 04 */	cmpwi r29, 0x4
/* 81376C14 | 41 80 FF DC */	blt .L_81376BF0
/* 81376C18 | 48 00 00 6C */	b .L_81376C84
.L_81376C1C:
/* 81376C1C | C0 02 82 DC */	lfs f0, lbl_816946DC@sda21(r0)
/* 81376C20 | 38 81 00 18 */	addi r4, r1, 0x18
/* 81376C24 | D0 01 00 18 */	stfs f0, 0x18(r1)
/* 81376C28 | D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 81376C2C | 80 63 02 2C */	lwz r3, 0x22c(r3)
/* 81376C30 | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 81376C34 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81376C38 | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 81376C3C | 38 63 00 44 */	addi r3, r3, 0x44
/* 81376C40 | 4B FF 41 99 */	bl __as__Q34nw4r4math4VEC2FRCQ34nw4r4math4VEC2
/* 81376C44 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 81376C48 | 80 03 00 28 */	lwz r0, 0x28(r3)
/* 81376C4C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81376C50 | 40 82 00 34 */	bne .L_81376C84
/* 81376C54 | 3B A0 00 00 */	li r29, 0x0
/* 81376C58 | 3B C0 00 00 */	li r30, 0x0
.L_81376C5C:
/* 81376C5C | 7C 7F F2 14 */	add r3, r31, r30
/* 81376C60 | 38 81 00 18 */	addi r4, r1, 0x18
/* 81376C64 | 80 63 02 30 */	lwz r3, 0x230(r3)
/* 81376C68 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81376C6C | 38 63 00 44 */	addi r3, r3, 0x44
/* 81376C70 | 4B FF 41 69 */	bl __as__Q34nw4r4math4VEC2FRCQ34nw4r4math4VEC2
/* 81376C74 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 81376C78 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 81376C7C | 2C 1D 00 04 */	cmpwi r29, 0x4
/* 81376C80 | 41 80 FF DC */	blt .L_81376C5C
.L_81376C84:
/* 81376C84 | 38 60 00 00 */	li r3, 0x0
/* 81376C88 | 48 1C E0 35 */	bl GXSetCullMode
/* 81376C8C | 39 61 00 30 */	addi r11, r1, 0x30
/* 81376C90 | 48 28 28 85 */	bl _restgpr_29
/* 81376C94 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81376C98 | 7C 08 03 A6 */	mtlr r0
/* 81376C9C | 38 21 00 30 */	addi r1, r1, 0x30
/* 81376CA0 | 4E 80 00 20 */	blr
.endfn setAdjustFlag__Q210homebutton10HomeButtonFi

# .text:0x56FC | 0x81376CA4 | size: 0xC0
# homebutton::HomeButtonEventHandler::onEvent(unsigned long, unsigned long, void*)
.fn onEvent__Q210homebutton22HomeButtonEventHandlerFUlUlPv, global
/* 81376CA4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81376CA8 | 7C 08 02 A6 */	mflr r0
/* 81376CAC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81376CB0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81376CB4 | 48 28 28 15 */	bl _savegpr_29
/* 81376CB8 | 7C 7D 1B 78 */	mr r29, r3
/* 81376CBC | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81376CC0 | 7C BE 2B 78 */	mr r30, r5
/* 81376CC4 | 7C DF 33 78 */	mr r31, r6
/* 81376CC8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81376CCC | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 81376CD0 | 7D 89 03 A6 */	mtctr r12
/* 81376CD4 | 4E 80 04 21 */	bctrl
/* 81376CD8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81376CDC | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 81376CE0 | 7D 89 03 A6 */	mtctr r12
/* 81376CE4 | 4E 80 04 21 */	bctrl
/* 81376CE8 | 2C 1E 00 01 */	cmpwi r30, 0x1
/* 81376CEC | 80 BD 00 08 */	lwz r5, 0x8(r29)
/* 81376CF0 | 38 83 00 B4 */	addi r4, r3, 0xb4
/* 81376CF4 | 41 82 00 20 */	beq .L_81376D14
/* 81376CF8 | 40 80 00 10 */	bge .L_81376D08
/* 81376CFC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81376D00 | 40 80 00 30 */	bge .L_81376D30
/* 81376D04 | 48 00 00 48 */	b .L_81376D4C
.L_81376D08:
/* 81376D08 | 2C 1E 00 03 */	cmpwi r30, 0x3
/* 81376D0C | 40 80 00 40 */	bge .L_81376D4C
/* 81376D10 | 48 00 00 14 */	b .L_81376D24
.L_81376D14:
/* 81376D14 | 7C A3 2B 78 */	mr r3, r5
/* 81376D18 | 7F E5 FB 78 */	mr r5, r31
/* 81376D1C | 4B FF E5 E5 */	bl startPointEvent__Q210homebutton10HomeButtonFPCcPv
/* 81376D20 | 48 00 00 2C */	b .L_81376D4C
.L_81376D24:
/* 81376D24 | 7C A3 2B 78 */	mr r3, r5
/* 81376D28 | 4B FF EA 91 */	bl startLeftEvent__Q210homebutton10HomeButtonFPCc
/* 81376D2C | 48 00 00 20 */	b .L_81376D4C
.L_81376D30:
/* 81376D30 | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 81376D34 | 54 60 05 29 */	rlwinm. r0, r3, 0, 20, 20
/* 81376D38 | 40 82 00 0C */	bne .L_81376D44
/* 81376D3C | 54 60 01 CF */	rlwinm. r0, r3, 0, 7, 7
/* 81376D40 | 41 82 00 0C */	beq .L_81376D4C
.L_81376D44:
/* 81376D44 | 7C A3 2B 78 */	mr r3, r5
/* 81376D48 | 4B FF EE 31 */	bl startTrigEvent__Q210homebutton10HomeButtonFPCc
.L_81376D4C:
/* 81376D4C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81376D50 | 48 28 27 C5 */	bl _restgpr_29
/* 81376D54 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81376D58 | 7C 08 03 A6 */	mtlr r0
/* 81376D5C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81376D60 | 4E 80 00 20 */	blr
.endfn onEvent__Q210homebutton22HomeButtonEventHandlerFUlUlPv

# .text:0x57BC | 0x81376D64 | size: 0x8
# homebutton::gui::PaneComponent::getPane()
.fn getPane__Q310homebutton3gui13PaneComponentFv, global
/* 81376D64 | 80 63 00 2C */	lwz r3, 0x2c(r3)
/* 81376D68 | 4E 80 00 20 */	blr
.endfn getPane__Q310homebutton3gui13PaneComponentFv

# .text:0x57C4 | 0x81376D6C | size: 0x14
# homebutton::HomeButton::BlackFader::init(int)
.fn init__Q310homebutton10HomeButton10BlackFaderFi, global
/* 81376D6C | 38 00 00 00 */	li r0, 0x0
/* 81376D70 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 81376D74 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 81376D78 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 81376D7C | 4E 80 00 20 */	blr
.endfn init__Q310homebutton10HomeButton10BlackFaderFi

# .text:0x57D8 | 0x81376D80 | size: 0x5C
# homebutton::HomeButton::BlackFader::calc()
.fn calc__Q310homebutton10HomeButton10BlackFaderFv, global
/* 81376D80 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 81376D84 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81376D88 | 40 82 00 14 */	bne .L_81376D9C
/* 81376D8C | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 81376D90 | 38 04 00 01 */	addi r0, r4, 0x1
/* 81376D94 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 81376D98 | 48 00 00 18 */	b .L_81376DB0
.L_81376D9C:
/* 81376D9C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81376DA0 | 40 82 00 10 */	bne .L_81376DB0
/* 81376DA4 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 81376DA8 | 38 04 FF FF */	subi r0, r4, 0x1
/* 81376DAC | 90 03 00 00 */	stw r0, 0x0(r3)
.L_81376DB0:
/* 81376DB0 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81376DB4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81376DB8 | 40 80 00 10 */	bge .L_81376DC8
/* 81376DBC | 38 00 00 00 */	li r0, 0x0
/* 81376DC0 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 81376DC4 | 4E 80 00 20 */	blr
.L_81376DC8:
/* 81376DC8 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 81376DCC | 7C 00 20 00 */	cmpw r0, r4
/* 81376DD0 | 4C 81 00 20 */	blelr
/* 81376DD4 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 81376DD8 | 4E 80 00 20 */	blr
.endfn calc__Q310homebutton10HomeButton10BlackFaderFv

# .text:0x5834 | 0x81376DDC | size: 0x48
# homebutton::HomeButton::BlackFader::isDone()
.fn isDone__Q310homebutton10HomeButton10BlackFaderFv, global
/* 81376DDC | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 81376DE0 | 2C 05 00 01 */	cmpwi r5, 0x1
/* 81376DE4 | 40 82 00 1C */	bne .L_81376E00
/* 81376DE8 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 81376DEC | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81376DF0 | 7C 04 00 00 */	cmpw r4, r0
/* 81376DF4 | 40 82 00 0C */	bne .L_81376E00
/* 81376DF8 | 38 60 00 01 */	li r3, 0x1
/* 81376DFC | 4E 80 00 20 */	blr
.L_81376E00:
/* 81376E00 | 2C 05 00 02 */	cmpwi r5, 0x2
/* 81376E04 | 40 82 00 18 */	bne .L_81376E1C
/* 81376E08 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81376E0C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81376E10 | 40 82 00 0C */	bne .L_81376E1C
/* 81376E14 | 38 60 00 01 */	li r3, 0x1
/* 81376E18 | 4E 80 00 20 */	blr
.L_81376E1C:
/* 81376E1C | 38 60 00 00 */	li r3, 0x0
/* 81376E20 | 4E 80 00 20 */	blr
.endfn isDone__Q310homebutton10HomeButton10BlackFaderFv

# .text:0x587C | 0x81376E24 | size: 0x25C
# homebutton::HomeButton::BlackFader::draw()
.fn draw__Q310homebutton10HomeButton10BlackFaderFv, global
/* 81376E24 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81376E28 | 7C 08 02 A6 */	mflr r0
/* 81376E2C | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81376E30 | 93 E1 00 4C */	stw r31, 0x4c(r1)
/* 81376E34 | 93 C1 00 48 */	stw r30, 0x48(r1)
/* 81376E38 | 7C 7E 1B 78 */	mr r30, r3
/* 81376E3C | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 81376E40 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81376E44 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81376E48 | 1C 84 00 FF */	mulli r4, r4, 0xff
/* 81376E4C | 7C 04 03 D6 */	divw r0, r4, r0
/* 81376E50 | 54 1F 06 3E */	clrlwi r31, r0, 24
/* 81376E54 | 48 1C 9F DD */	bl fn_81540E30
/* 81376E58 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81376E5C | 38 80 00 00 */	li r4, 0x0
/* 81376E60 | 48 1D 0E C1 */	bl GXLoadPosMtxImm
/* 81376E64 | 38 60 00 00 */	li r3, 0x0
/* 81376E68 | 48 1D 0F 61 */	bl GXSetCurrentMtx
/* 81376E6C | 48 1C CA 61 */	bl GXClearVtxDesc
/* 81376E70 | 38 60 00 09 */	li r3, 0x9
/* 81376E74 | 38 80 00 01 */	li r4, 0x1
/* 81376E78 | 48 1C C6 15 */	bl GXSetVtxDesc
/* 81376E7C | 38 60 00 00 */	li r3, 0x0
/* 81376E80 | 38 80 00 09 */	li r4, 0x9
/* 81376E84 | 38 A0 00 00 */	li r5, 0x0
/* 81376E88 | 38 C0 00 04 */	li r6, 0x4
/* 81376E8C | 38 E0 00 00 */	li r7, 0x0
/* 81376E90 | 48 1C CA 71 */	bl GXSetVtxAttrFmt
/* 81376E94 | 38 60 00 01 */	li r3, 0x1
/* 81376E98 | 48 1C EB 2D */	bl GXSetNumChans
/* 81376E9C | 38 60 00 04 */	li r3, 0x4
/* 81376EA0 | 38 80 00 00 */	li r4, 0x0
/* 81376EA4 | 38 A0 00 00 */	li r5, 0x0
/* 81376EA8 | 38 C0 00 00 */	li r6, 0x0
/* 81376EAC | 38 E0 00 00 */	li r7, 0x0
/* 81376EB0 | 39 00 00 00 */	li r8, 0x0
/* 81376EB4 | 39 20 00 02 */	li r9, 0x2
/* 81376EB8 | 48 1C EB 31 */	bl GXSetChanCtrl
/* 81376EBC | 38 60 00 05 */	li r3, 0x5
/* 81376EC0 | 38 80 00 00 */	li r4, 0x0
/* 81376EC4 | 38 A0 00 00 */	li r5, 0x0
/* 81376EC8 | 38 C0 00 00 */	li r6, 0x0
/* 81376ECC | 38 E0 00 00 */	li r7, 0x0
/* 81376ED0 | 39 00 00 00 */	li r8, 0x0
/* 81376ED4 | 39 20 00 02 */	li r9, 0x2
/* 81376ED8 | 48 1C EB 11 */	bl GXSetChanCtrl
/* 81376EDC | 38 60 00 00 */	li r3, 0x0
/* 81376EE0 | 48 1C D0 7D */	bl GXSetNumTexGens
/* 81376EE4 | 38 60 00 01 */	li r3, 0x1
/* 81376EE8 | 48 1D 05 0D */	bl GXSetNumTevStages
/* 81376EEC | 38 60 00 00 */	li r3, 0x0
/* 81376EF0 | 38 80 00 FF */	li r4, 0xff
/* 81376EF4 | 38 A0 00 FF */	li r5, 0xff
/* 81376EF8 | 38 C0 00 FF */	li r6, 0xff
/* 81376EFC | 48 1D 03 9D */	bl GXSetTevOrder
/* 81376F00 | 38 60 00 00 */	li r3, 0x0
/* 81376F04 | 38 80 00 0F */	li r4, 0xf
/* 81376F08 | 38 A0 00 0F */	li r5, 0xf
/* 81376F0C | 38 C0 00 0F */	li r6, 0xf
/* 81376F10 | 38 E0 00 02 */	li r7, 0x2
/* 81376F14 | 48 1C FF 19 */	bl GXSetTevColorIn
/* 81376F18 | 38 60 00 00 */	li r3, 0x0
/* 81376F1C | 38 80 00 00 */	li r4, 0x0
/* 81376F20 | 38 A0 00 00 */	li r5, 0x0
/* 81376F24 | 38 C0 00 00 */	li r6, 0x0
/* 81376F28 | 38 E0 00 01 */	li r7, 0x1
/* 81376F2C | 39 00 00 00 */	li r8, 0x0
/* 81376F30 | 48 1C FF 7D */	bl GXSetTevColorOp
/* 81376F34 | 38 60 00 00 */	li r3, 0x0
/* 81376F38 | 38 80 00 07 */	li r4, 0x7
/* 81376F3C | 38 A0 00 07 */	li r5, 0x7
/* 81376F40 | 38 C0 00 07 */	li r6, 0x7
/* 81376F44 | 38 E0 00 01 */	li r7, 0x1
/* 81376F48 | 48 1C FF 25 */	bl GXSetTevAlphaIn
/* 81376F4C | 38 60 00 00 */	li r3, 0x0
/* 81376F50 | 38 80 00 00 */	li r4, 0x0
/* 81376F54 | 38 A0 00 00 */	li r5, 0x0
/* 81376F58 | 38 C0 00 00 */	li r6, 0x0
/* 81376F5C | 38 E0 00 01 */	li r7, 0x1
/* 81376F60 | 39 00 00 00 */	li r8, 0x0
/* 81376F64 | 48 1C FF A1 */	bl GXSetTevAlphaOp
/* 81376F68 | 38 60 00 07 */	li r3, 0x7
/* 81376F6C | 38 80 00 00 */	li r4, 0x0
/* 81376F70 | 38 A0 00 01 */	li r5, 0x1
/* 81376F74 | 38 C0 00 07 */	li r6, 0x7
/* 81376F78 | 38 E0 00 00 */	li r7, 0x0
/* 81376F7C | 48 1D 02 59 */	bl GXSetAlphaCompare
/* 81376F80 | 38 60 00 01 */	li r3, 0x1
/* 81376F84 | 38 80 00 04 */	li r4, 0x4
/* 81376F88 | 38 A0 00 05 */	li r5, 0x5
/* 81376F8C | 38 C0 00 05 */	li r6, 0x5
/* 81376F90 | 48 1D 07 D9 */	bl GXSetBlendMode
/* 81376F94 | 38 60 00 00 */	li r3, 0x0
/* 81376F98 | 48 1D 08 4D */	bl GXSetAlphaUpdate
/* 81376F9C | 38 60 00 00 */	li r3, 0x0
/* 81376FA0 | 38 80 00 07 */	li r4, 0x7
/* 81376FA4 | 38 A0 00 00 */	li r5, 0x0
/* 81376FA8 | 48 1D 08 69 */	bl GXSetZMode
/* 81376FAC | 38 60 00 00 */	li r3, 0x0
/* 81376FB0 | 48 1C FD 29 */	bl GXSetNumIndStages
/* 81376FB4 | 38 60 00 00 */	li r3, 0x0
/* 81376FB8 | 38 80 00 00 */	li r4, 0x0
/* 81376FBC | 38 A0 00 01 */	li r5, 0x1
/* 81376FC0 | 38 C0 00 02 */	li r6, 0x2
/* 81376FC4 | 38 E0 00 03 */	li r7, 0x3
/* 81376FC8 | 48 1D 01 91 */	bl GXSetTevSwapModeTableGXSetAlphaCompare
/* 81376FCC | 38 60 00 00 */	li r3, 0x0
/* 81376FD0 | 38 80 00 00 */	li r4, 0x0
/* 81376FD4 | 38 A0 00 00 */	li r5, 0x0
/* 81376FD8 | 48 1D 01 45 */	bl GXSetTevSwapMode
/* 81376FDC | 88 DE 00 0C */	lbz r6, 0xc(r30)
/* 81376FE0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81376FE4 | 88 BE 00 0D */	lbz r5, 0xd(r30)
/* 81376FE8 | 38 60 00 01 */	li r3, 0x1
/* 81376FEC | 88 1E 00 0E */	lbz r0, 0xe(r30)
/* 81376FF0 | 98 C1 00 0C */	stb r6, 0xc(r1)
/* 81376FF4 | 98 A1 00 0D */	stb r5, 0xd(r1)
/* 81376FF8 | 98 01 00 0E */	stb r0, 0xe(r1)
/* 81376FFC | 9B E1 00 0F */	stb r31, 0xf(r1)
/* 81377000 | 98 C1 00 08 */	stb r6, 0x8(r1)
/* 81377004 | 98 A1 00 09 */	stb r5, 0x9(r1)
/* 81377008 | 98 01 00 0A */	stb r0, 0xa(r1)
/* 8137700C | 9B E1 00 0B */	stb r31, 0xb(r1)
/* 81377010 | 48 1C FF 4D */	bl GXSetTevColor
/* 81377014 | 38 60 00 80 */	li r3, 0x80
/* 81377018 | 38 80 00 00 */	li r4, 0x0
/* 8137701C | 38 A0 00 04 */	li r5, 0x4
/* 81377020 | 48 1C D9 D5 */	bl GXBegin
/* 81377024 | C0 02 83 4C */	lfs f0, lbl_8169474C@sda21(r0)
/* 81377028 | 3C 60 CC 01 */	lis r3, 0xcc01
/* 8137702C | D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 81377030 | C0 02 83 4C */	lfs f0, lbl_8169474C@sda21(r0)
/* 81377034 | D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 81377038 | C0 02 83 4C */	lfs f0, lbl_8169474C@sda21(r0)
/* 8137703C | D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 81377040 | C0 02 83 50 */	lfs f0, lbl_81694750@sda21(r0)
/* 81377044 | D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 81377048 | C0 02 83 50 */	lfs f0, lbl_81694750@sda21(r0)
/* 8137704C | D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 81377050 | C0 02 83 50 */	lfs f0, lbl_81694750@sda21(r0)
/* 81377054 | D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 81377058 | C0 02 83 50 */	lfs f0, lbl_81694750@sda21(r0)
/* 8137705C | D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 81377060 | C0 02 83 4C */	lfs f0, lbl_8169474C@sda21(r0)
/* 81377064 | D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 81377068 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 8137706C | 83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 81377070 | 83 C1 00 48 */	lwz r30, 0x48(r1)
/* 81377074 | 7C 08 03 A6 */	mtlr r0
/* 81377078 | 38 21 00 50 */	addi r1, r1, 0x50
/* 8137707C | 4E 80 00 20 */	blr
.endfn draw__Q310homebutton10HomeButton10BlackFaderFv

# .text:0x5AD8 | 0x81377080 | size: 0x98
# homebutton::HomeButton::play_sound(int)
.fn play_sound__Q210homebutton10HomeButtonFi, global
/* 81377080 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81377084 | 7C 08 02 A6 */	mflr r0
/* 81377088 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8137708C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81377090 | 7C 9F 23 78 */	mr r31, r4
/* 81377094 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81377098 | 7C 7E 1B 78 */	mr r30, r3
/* 8137709C | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 813770A0 | 38 60 00 00 */	li r3, 0x0
/* 813770A4 | 81 85 00 1C */	lwz r12, 0x1c(r5)
/* 813770A8 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 813770AC | 41 82 00 10 */	beq .L_813770BC
/* 813770B0 | 38 60 00 05 */	li r3, 0x5
/* 813770B4 | 7D 89 03 A6 */	mtctr r12
/* 813770B8 | 4E 80 04 21 */	bctrl
.L_813770BC:
/* 813770BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813770C0 | 40 82 00 40 */	bne .L_81377100
/* 813770C4 | 80 1E 06 08 */	lwz r0, 0x608(r30)
/* 813770C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813770CC | 41 82 00 34 */	beq .L_81377100
/* 813770D0 | 80 7E 06 1C */	lwz r3, 0x61c(r30)
/* 813770D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813770D8 | 41 82 00 28 */	beq .L_81377100
/* 813770DC | 48 19 37 9D */	bl fn_8150A878
/* 813770E0 | 80 7E 06 08 */	lwz r3, 0x608(r30)
/* 813770E4 | 7F E5 FB 78 */	mr r5, r31
/* 813770E8 | 80 9E 06 1C */	lwz r4, 0x61c(r30)
/* 813770EC | 38 C0 00 00 */	li r6, 0x0
/* 813770F0 | 38 63 00 0C */	addi r3, r3, 0xc
/* 813770F4 | 38 E0 00 00 */	li r7, 0x0
/* 813770F8 | 39 00 00 00 */	li r8, 0x0
/* 813770FC | 48 19 4B 3D */	bl fn_8150BC38
.L_81377100:
/* 81377100 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81377104 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81377108 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8137710C | 7C 08 03 A6 */	mtlr r0
/* 81377110 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81377114 | 4E 80 00 20 */	blr
.endfn play_sound__Q210homebutton10HomeButtonFi

# .text:0x5B70 | 0x81377118 | size: 0xB0
# homebutton::HomeButton::fadeout_sound(float)
.fn fadeout_sound__Q210homebutton10HomeButtonFf, global
/* 81377118 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8137711C | 7C 08 02 A6 */	mflr r0
/* 81377120 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81377124 | DB E1 00 20 */	stfd f31, 0x20(r1)
/* 81377128 | F3 E1 00 28 */	psq_st f31, 0x28(r1), 0, qr0
/* 8137712C | FF E0 08 90 */	fmr f31, f1
/* 81377130 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81377134 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81377138 | 7C 7E 1B 78 */	mr r30, r3
/* 8137713C | 80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 81377140 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 81377144 | 41 82 00 64 */	beq .L_813771A8
/* 81377148 | 88 03 00 8E */	lbz r0, 0x8e(r3)
/* 8137714C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81377150 | 41 82 00 20 */	beq .L_81377170
/* 81377154 | C0 02 83 54 */	lfs f0, lbl_81694754@sda21(r0)
/* 81377158 | EC 00 00 72 */	fmuls f0, f0, f1
/* 8137715C | FC 00 00 1E */	fctiwz f0, f0
/* 81377160 | D8 01 00 08 */	stfd f0, 0x8(r1)
/* 81377164 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 81377168 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8137716C | 48 1D C6 5D */	bl fn_815537C8
.L_81377170:
/* 81377170 | 80 1E 06 08 */	lwz r0, 0x608(r30)
/* 81377174 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81377178 | 41 82 00 30 */	beq .L_813771A8
/* 8137717C | 3B E0 00 00 */	li r31, 0x0
/* 81377180 | 48 00 00 18 */	b .L_81377198
.L_81377184:
/* 81377184 | 7F E4 FB 78 */	mr r4, r31
/* 81377188 | 48 19 1B C1 */	bl fn_81508D48
/* 8137718C | FC 20 F8 90 */	fmr f1, f31
/* 81377190 | 48 19 3B C5 */	bl fn_8150AD54
/* 81377194 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_81377198:
/* 81377198 | 80 7E 06 08 */	lwz r3, 0x608(r30)
/* 8137719C | 80 03 00 70 */	lwz r0, 0x70(r3)
/* 813771A0 | 7C 1F 00 40 */	cmplw r31, r0
/* 813771A4 | 41 80 FF E0 */	blt .L_81377184
.L_813771A8:
/* 813771A8 | E3 E1 00 28 */	psq_l f31, 0x28(r1), 0, qr0
/* 813771AC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813771B0 | CB E1 00 20 */	lfd f31, 0x20(r1)
/* 813771B4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813771B8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 813771BC | 7C 08 03 A6 */	mtlr r0
/* 813771C0 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813771C4 | 4E 80 00 20 */	blr
.endfn fadeout_sound__Q210homebutton10HomeButtonFf

# .text:0x5C20 | 0x813771C8 | size: 0x4
# homebutton::gui::EventHandler::onEvent(unsigned long, unsigned long, void*)
.fn onEvent__Q310homebutton3gui12EventHandlerFUlUlPv, global
/* 813771C8 | 4E 80 00 20 */	blr
.endfn onEvent__Q310homebutton3gui12EventHandlerFUlUlPv

# .text:0x5C24 | 0x813771CC | size: 0x4
# homebutton::gui::Interface::draw(float(&)[3][4])
.fn draw__Q310homebutton3gui9InterfaceFRA3_A4_f, global
/* 813771CC | 4E 80 00 20 */	blr
.endfn draw__Q310homebutton3gui9InterfaceFRA3_A4_f

# .text:0x5C28 | 0x813771D0 | size: 0x4
# homebutton::gui::Interface::draw()
.fn draw__Q310homebutton3gui9InterfaceFv, global
/* 813771D0 | 4E 80 00 20 */	blr
.endfn draw__Q310homebutton3gui9InterfaceFv

# .text:0x5C2C | 0x813771D4 | size: 0x4
# homebutton::gui::Interface::calc()
.fn calc__Q310homebutton3gui9InterfaceFv, global
/* 813771D4 | 4E 80 00 20 */	blr
.endfn calc__Q310homebutton3gui9InterfaceFv

# .text:0x5C30 | 0x813771D8 | size: 0x4
# homebutton::gui::Interface::init()
.fn init__Q310homebutton3gui9InterfaceFv, global
/* 813771D8 | 4E 80 00 20 */	blr
.endfn init__Q310homebutton3gui9InterfaceFv

# .text:0x5C34 | 0x813771DC | size: 0x4
# homebutton::gui::Interface::create()
.fn create__Q310homebutton3gui9InterfaceFv, global
/* 813771DC | 4E 80 00 20 */	blr
.endfn create__Q310homebutton3gui9InterfaceFv

# 0x8160F378..0x8160F628 | size: 0x2B0
.rodata
.balign 8

# .rodata:0x0 | 0x8160F378 | size: 0x60
# homebutton::scAnmTable
.obj scAnmTable__10homebutton, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000004
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000006
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x00000007
	.4byte 0x00000001
.endobj scAnmTable__10homebutton

# .rodata:0x60 | 0x8160F3D8 | size: 0x250
# homebutton::scGroupAnmTable
.obj scGroupAnmTable__10homebutton, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0x00000002
	.4byte 0x00000004
	.4byte 0x00000013
	.4byte 0x00000005
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000014
	.4byte 0x00000006
	.4byte 0x00000004
	.4byte 0x00000006
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000008
	.4byte 0x00000004
	.4byte 0x00000008
	.4byte 0x00000007
	.4byte 0x00000009
	.4byte 0x00000004
	.4byte 0x00000009
	.4byte 0x00000007
	.4byte 0x0000000A
	.4byte 0x00000004
	.4byte 0x0000000A
	.4byte 0x00000007
	.4byte 0x0000000B
	.4byte 0x00000005
	.4byte 0x0000000C
	.4byte 0x00000005
	.4byte 0x0000000D
	.4byte 0x00000006
	.4byte 0x0000000D
	.4byte 0x00000008
	.4byte 0x0000000E
	.4byte 0x0000000E
	.4byte 0x0000000E
	.4byte 0x00000006
	.4byte 0x0000000E
	.4byte 0x00000008
	.4byte 0x0000000F
	.4byte 0x00000005
	.4byte 0x00000010
	.4byte 0x00000006
	.4byte 0x00000010
	.4byte 0x0000000E
	.4byte 0x00000011
	.4byte 0x0000000B
	.4byte 0x00000011
	.4byte 0x0000000C
	.4byte 0x00000012
	.4byte 0x0000000B
	.4byte 0x00000012
	.4byte 0x0000000C
	.4byte 0x00000013
	.4byte 0x0000000D
	.4byte 0x00000014
	.4byte 0x0000000D
	.4byte 0x00000015
	.4byte 0x00000009
	.4byte 0x00000015
	.4byte 0x0000000A
	.4byte 0x00000016
	.4byte 0x00000009
	.4byte 0x00000016
	.4byte 0x0000000A
	.4byte 0x00000017
	.4byte 0x00000009
	.4byte 0x00000017
	.4byte 0x0000000A
	.4byte 0x00000018
	.4byte 0x00000009
	.4byte 0x00000018
	.4byte 0x0000000A
	.4byte 0x00000019
	.4byte 0x00000009
	.4byte 0x00000019
	.4byte 0x0000000A
	.4byte 0x0000001A
	.4byte 0x00000009
	.4byte 0x0000001A
	.4byte 0x0000000A
	.4byte 0x0000001B
	.4byte 0x00000009
	.4byte 0x0000001B
	.4byte 0x0000000A
	.4byte 0x0000001C
	.4byte 0x00000009
	.4byte 0x0000001C
	.4byte 0x0000000A
	.4byte 0x0000001D
	.4byte 0x00000009
	.4byte 0x0000001D
	.4byte 0x0000000A
	.4byte 0x0000001E
	.4byte 0x00000009
	.4byte 0x0000001E
	.4byte 0x0000000A
	.4byte 0x0000001F
	.4byte 0x0000000F
	.4byte 0x0000001F
	.4byte 0x00000010
	.4byte 0x0000001F
	.4byte 0x00000011
	.4byte 0x0000001F
	.4byte 0x00000012
	.4byte 0x0000001F
	.4byte 0x00000015
	.4byte 0x00000020
	.4byte 0x0000000F
	.4byte 0x00000020
	.4byte 0x00000010
	.4byte 0x00000020
	.4byte 0x00000011
	.4byte 0x00000020
	.4byte 0x00000012
	.4byte 0x00000020
	.4byte 0x00000015
	.4byte 0x00000021
	.4byte 0x0000000F
	.4byte 0x00000021
	.4byte 0x00000010
	.4byte 0x00000021
	.4byte 0x00000011
	.4byte 0x00000021
	.4byte 0x00000012
	.4byte 0x00000021
	.4byte 0x00000015
	.4byte 0x00000022
	.4byte 0x0000000F
	.4byte 0x00000022
	.4byte 0x00000010
	.4byte 0x00000022
	.4byte 0x00000011
	.4byte 0x00000022
	.4byte 0x00000012
	.4byte 0x00000022
	.4byte 0x00000015
.endobj scGroupAnmTable__10homebutton

# 0x81644B40..0x81645620 | size: 0xAE0
.data
.balign 8

# .data:0x0 | 0x81644B40 | size: 0xD
.obj lbl_81644B40, global
	.string "P1_Def.brlyt"
.endobj lbl_81644B40

# .data:0xD | 0x81644B4D | size: 0xD
.obj lbl_81644B4D, global
	.string "P2_Def.brlyt"
.endobj lbl_81644B4D

# .data:0x1A | 0x81644B5A | size: 0xD
.obj lbl_81644B5A, global
	.string "P3_Def.brlyt"
.endobj lbl_81644B5A

# .data:0x27 | 0x81644B67 | size: 0xD
.obj lbl_81644B67, global
	.string "P4_Def.brlyt"
.endobj lbl_81644B67

# .data:0x34 | 0x81644B74 | size: 0x10
# homebutton::HomeButton::scCursorLytName
.obj scCursorLytName__Q210homebutton10HomeButton, global
	.4byte lbl_81644B40
	.4byte lbl_81644B4D
	.4byte lbl_81644B5A
	.4byte lbl_81644B67
.endobj scCursorLytName__Q210homebutton10HomeButton

# .data:0x44 | 0x81644B84 | size: 0xA
.obj lbl_81644B84, global
	.string "B_btnL_00"
.endobj lbl_81644B84

# .data:0x4E | 0x81644B8E | size: 0xA
.obj lbl_81644B8E, global
	.string "B_btnL_01"
.endobj lbl_81644B8E

# .data:0x58 | 0x81644B98 | size: 0xA
.obj lbl_81644B98, global
	.string "B_btnL_10"
.endobj lbl_81644B98

# .data:0x62 | 0x81644BA2 | size: 0xA
.obj lbl_81644BA2, global
	.string "B_btnL_11"
.endobj lbl_81644BA2

# .data:0x6C | 0x81644BAC | size: 0x10
# homebutton::HomeButton::scBtnName
.obj scBtnName__Q210homebutton10HomeButton, global
	.4byte lbl_81644B84
	.4byte lbl_81644B8E
	.4byte lbl_81644B98
	.4byte lbl_81644BA2
.endobj scBtnName__Q210homebutton10HomeButton

# .data:0x7C | 0x81644BBC | size: 0xA
.obj lbl_81644BBC, global
	.string "T_btnL_00"
.endobj lbl_81644BBC

# .data:0x86 | 0x81644BC6 | size: 0xA
.obj lbl_81644BC6, global
	.string "T_btnL_01"
.endobj lbl_81644BC6

# .data:0x90 | 0x81644BD0 | size: 0xA
.obj lbl_81644BD0, global
	.string "T_btnL_10"
.endobj lbl_81644BD0

# .data:0x9A | 0x81644BDA | size: 0xA
.obj lbl_81644BDA, global
	.string "T_btnL_11"
.endobj lbl_81644BDA

# .data:0xA4 | 0x81644BE4 | size: 0x10
# homebutton::HomeButton::scTxtName
.obj scTxtName__Q210homebutton10HomeButton, global
	.4byte lbl_81644BBC
	.4byte lbl_81644BC6
	.4byte lbl_81644BD0
	.4byte lbl_81644BDA
.endobj scTxtName__Q210homebutton10HomeButton

# .data:0xB4 | 0x81644BF4 | size: 0xE
.obj lbl_81644BF4, global
	.string "btnL_00_inOut"
.endobj lbl_81644BF4

# .data:0xC2 | 0x81644C02 | size: 0xE
.obj lbl_81644C02, global
	.string "btnL_01_inOut"
.endobj lbl_81644C02

# .data:0xD0 | 0x81644C10 | size: 0xE
.obj lbl_81644C10, global
	.string "btnL_10_inOut"
.endobj lbl_81644C10

# .data:0xDE | 0x81644C1E | size: 0xE
.obj lbl_81644C1E, global
	.string "btnL_11_inOut"
.endobj lbl_81644C1E

# .data:0xEC | 0x81644C2C | size: 0xC
.obj lbl_81644C2C, global
	.string "btnL_00_psh"
.endobj lbl_81644C2C

# .data:0xF8 | 0x81644C38 | size: 0xC
.obj lbl_81644C38, global
	.string "btnL_01_psh"
.endobj lbl_81644C38

# .data:0x104 | 0x81644C44 | size: 0xC
.obj lbl_81644C44, global
	.string "btnL_10_psh"
.endobj lbl_81644C44

# .data:0x110 | 0x81644C50 | size: 0xC
.obj lbl_81644C50, global
	.string "btnL_11_psh"
.endobj lbl_81644C50

# .data:0x11C | 0x81644C5C | size: 0x20
# homebutton::HomeButton::scGrName
.obj scGrName__Q210homebutton10HomeButton, global
	.4byte lbl_81644BF4
	.4byte lbl_81644C02
	.4byte lbl_81644C10
	.4byte lbl_81644C1E
	.4byte lbl_81644C2C
	.4byte lbl_81644C38
	.4byte lbl_81644C44
	.4byte lbl_81644C50
.endobj scGrName__Q210homebutton10HomeButton

# .data:0x13C | 0x81644C7C | size: 0x11
.obj lbl_81644C7C, global
	.string "_cntBtn_in.brlan"
.endobj lbl_81644C7C

# .data:0x14D | 0x81644C8D | size: 0x12
.obj lbl_81644C8D, global
	.string "_cntBtn_psh.brlan"
.endobj lbl_81644C8D

# .data:0x15F | 0x81644C9F | size: 0x3
.obj pad_81644C9F, global
	.byte 0x5F, 0x63, 0x6E
.endobj pad_81644C9F

# .data:0x162 | 0x81644CA2 | size: 0x12
.obj gap_08_81644CA2_data, global
.hidden gap_08_81644CA2_data
	.4byte 0x7442746E
	.4byte 0x5F6F7574
	.4byte 0x2E62726C
	.4byte 0x616E0000
	.2byte 0x0000
.endobj gap_08_81644CA2_data

# .data:0x174 | 0x81644CB4 | size: 0xC
# homebutton::HomeButton::scAnimName
.obj scAnimName__Q210homebutton10HomeButton, global
	.4byte lbl_81644C7C
	.4byte lbl_81644C8D
	.4byte pad_81644C9F
.endobj scAnimName__Q210homebutton10HomeButton

# .data:0x180 | 0x81644CC0 | size: 0x11
.obj lbl_81644CC0, global
	.string "_ltrIcn_on.brlan"
.endobj lbl_81644CC0

# .data:0x191 | 0x81644CD1 | size: 0x14
.obj lbl_81644CD1, global
	.string "_optn_bar_psh.brlan"
.endobj lbl_81644CD1

# .data:0x1A5 | 0x81644CE5 | size: 0x15
.obj lbl_81644CE5, global
	.string "_close_bar_psh.brlan"
.endobj lbl_81644CE5

# .data:0x1BA | 0x81644CFA | size: 0x15
.obj lbl_81644CFA, global
	.string "_hmMenu_bar_in.brlan"
.endobj lbl_81644CFA

# .data:0x1CF | 0x81644D0F | size: 0x16
.obj lbl_81644D0F, global
	.string "_hmMenu_bar_psh.brlan"
.endobj lbl_81644D0F

# .data:0x1E5 | 0x81644D25 | size: 0x13
.obj lbl_81644D25, global
	.string "_link_msg_in.brlan"
.endobj lbl_81644D25

# .data:0x1F8 | 0x81644D38 | size: 0x14
.obj lbl_81644D38, global
	.string "_link_msg_out.brlan"
.endobj lbl_81644D38

# .data:0x20C | 0x81644D4C | size: 0x12
.obj lbl_81644D4C, global
	.string "_cmn_msg_in.brlan"
.endobj lbl_81644D4C

# .data:0x21E | 0x81644D5E | size: 0x13
.obj lbl_81644D5E, global
	.string "_cmn_msg_out.brlan"
.endobj lbl_81644D5E

# .data:0x231 | 0x81644D71 | size: 0x10
.obj lbl_81644D71, global
	.string "_cntrl_up.brlan"
.endobj lbl_81644D71

# .data:0x241 | 0x81644D81 | size: 0x16
.obj lbl_81644D81, global
	.string "_cntrl_wndw_opn.brlan"
.endobj lbl_81644D81

# .data:0x257 | 0x81644D97 | size: 0x11
.obj lbl_81644D97, global
	.string "_cntrl_dwn.brlan"
.endobj lbl_81644D97

# .data:0x268 | 0x81644DA8 | size: 0x16
.obj lbl_81644DA8, global
	.string "_hmMenu_bar_out.brlan"
.endobj lbl_81644DA8

# .data:0x27E | 0x81644DBE | size: 0x14
.obj lbl_81644DBE, global
	.string "_cmn_msg_rtrn.brlan"
.endobj lbl_81644DBE

# .data:0x292 | 0x81644DD2 | size: 0x12
.obj lbl_81644DD2, global
	.string "_12btn_on.brlan\000\000"
.endobj lbl_81644DD2

# .data:0x2A4 | 0x81644DE4 | size: 0x3C
# homebutton::HomeButton::scPairGroupAnimName
.obj scPairGroupAnimName__Q210homebutton10HomeButton, global
	.4byte lbl_81644CC0
	.4byte lbl_81644CD1
	.4byte lbl_81644CE5
	.4byte lbl_81644CFA
	.4byte lbl_81644D0F
	.4byte lbl_81644D25
	.4byte lbl_81644D38
	.4byte lbl_81644D4C
	.4byte lbl_81644D5E
	.4byte lbl_81644D71
	.4byte lbl_81644D81
	.4byte lbl_81644D97
	.4byte lbl_81644DA8
	.4byte lbl_81644DBE
	.4byte lbl_81644DD2
.endobj scPairGroupAnimName__Q210homebutton10HomeButton

# .data:0x2E0 | 0x81644E20 | size: 0xA
.obj lbl_81644E20, global
	.string "ltrIcn_on"
.endobj lbl_81644E20

# .data:0x2EA | 0x81644E2A | size: 0xD
.obj lbl_81644E2A, global
	.string "optn_bar_psh"
.endobj lbl_81644E2A

# .data:0x2F7 | 0x81644E37 | size: 0xE
.obj lbl_81644E37, global
	.string "close_bar_psh"
.endobj lbl_81644E37

# .data:0x305 | 0x81644E45 | size: 0xE
.obj lbl_81644E45, global
	.string "hmMenu_bar_in"
.endobj lbl_81644E45

# .data:0x313 | 0x81644E53 | size: 0xF
.obj lbl_81644E53, global
	.string "hmMenu_bar_psh"
.endobj lbl_81644E53

# .data:0x322 | 0x81644E62 | size: 0xC
.obj lbl_81644E62, global
	.string "link_msg_in"
.endobj lbl_81644E62

# .data:0x32E | 0x81644E6E | size: 0xD
.obj lbl_81644E6E, global
	.string "link_msg_out"
.endobj lbl_81644E6E

# .data:0x33B | 0x81644E7B | size: 0xB
.obj lbl_81644E7B, global
	.string "cmn_msg_in"
.endobj lbl_81644E7B

# .data:0x346 | 0x81644E86 | size: 0xC
.obj lbl_81644E86, global
	.string "cmn_msg_out"
.endobj lbl_81644E86

# .data:0x352 | 0x81644E92 | size: 0x9
.obj lbl_81644E92, global
	.string "cntrl_up"
.endobj lbl_81644E92

# .data:0x35B | 0x81644E9B | size: 0xF
.obj lbl_81644E9B, global
	.string "cntrl_wndw_opn"
.endobj lbl_81644E9B

# .data:0x36A | 0x81644EAA | size: 0xA
.obj lbl_81644EAA, global
	.string "cntrl_dwn"
.endobj lbl_81644EAA

# .data:0x374 | 0x81644EB4 | size: 0xF
.obj lbl_81644EB4, global
	.string "hmMenu_bar_out"
.endobj lbl_81644EB4

# .data:0x383 | 0x81644EC3 | size: 0xD
.obj lbl_81644EC3, global
	.string "cmn_msg_rtrn"
.endobj lbl_81644EC3

# .data:0x390 | 0x81644ED0 | size: 0xC
.obj lbl_81644ED0, global
	.string "12btn_on\000\000\000"
.endobj lbl_81644ED0

# .data:0x39C | 0x81644EDC | size: 0x3C
# homebutton::HomeButton::scPairGroupName
.obj scPairGroupName__Q210homebutton10HomeButton, global
	.4byte lbl_81644E20
	.4byte lbl_81644E2A
	.4byte lbl_81644E37
	.4byte lbl_81644E45
	.4byte lbl_81644E53
	.4byte lbl_81644E62
	.4byte lbl_81644E6E
	.4byte lbl_81644E7B
	.4byte lbl_81644E86
	.4byte lbl_81644E92
	.4byte lbl_81644E9B
	.4byte lbl_81644EAA
	.4byte lbl_81644EB4
	.4byte lbl_81644EC3
	.4byte lbl_81644ED0
.endobj scPairGroupName__Q210homebutton10HomeButton

# .data:0x3D8 | 0x81644F18 | size: 0x13
.obj lbl_81644F18, global
	.string "_hmMenu_strt.brlan"
.endobj lbl_81644F18

# .data:0x3EB | 0x81644F2B | size: 0x13
.obj lbl_81644F2B, global
	.string "_hmMenu_fnsh.brlan"
.endobj lbl_81644F2B

# .data:0x3FE | 0x81644F3E | size: 0x13
.obj lbl_81644F3E, global
	.string "_optn_bar_in.brlan"
.endobj lbl_81644F3E

# .data:0x411 | 0x81644F51 | size: 0x14
.obj lbl_81644F51, global
	.string "_optn_bar_out.brlan"
.endobj lbl_81644F51

# .data:0x425 | 0x81644F65 | size: 0x13
.obj lbl_81644F65, global
	.string "_optn_btn_in.brlan"
.endobj lbl_81644F65

# .data:0x438 | 0x81644F78 | size: 0x14
.obj lbl_81644F78, global
	.string "_optn_btn_psh.brlan"
.endobj lbl_81644F78

# .data:0x44C | 0x81644F8C | size: 0x16
.obj lbl_81644F8C, global
	.string "_vb_btn_wht_psh.brlan"
.endobj lbl_81644F8C

# .data:0x462 | 0x81644FA2 | size: 0x14
.obj lbl_81644FA2, global
	.string "_optn_btn_out.brlan"
.endobj lbl_81644FA2

# .data:0x476 | 0x81644FB6 | size: 0x16
.obj lbl_81644FB6, global
	.string "_vb_btn_ylw_psh.brlan"
.endobj lbl_81644FB6

# .data:0x48C | 0x81644FCC | size: 0x11
.obj lbl_81644FCC, global
	.string "_sound_gry.brlan"
.endobj lbl_81644FCC

# .data:0x49D | 0x81644FDD | size: 0x11
.obj lbl_81644FDD, global
	.string "_sound_ylw.brlan"
.endobj lbl_81644FDD

# .data:0x4AE | 0x81644FEE | size: 0x16
.obj lbl_81644FEE, global
	.string "_cmn_msg_btn_in.brlan"
.endobj lbl_81644FEE

# .data:0x4C4 | 0x81645004 | size: 0x17
.obj lbl_81645004, global
	.string "_cmn_msg_btn_out.brlan"
.endobj lbl_81645004

# .data:0x4DB | 0x8164501B | size: 0x17
.obj lbl_8164501B, global
	.string "_cmn_msg_btn_psh.brlan"
.endobj lbl_8164501B

# .data:0x4F2 | 0x81645032 | size: 0x16
.obj lbl_81645032, global
	.string "_vb_btn_ylw_ylw.brlan"
.endobj lbl_81645032

# .data:0x508 | 0x81645048 | size: 0x11
.obj lbl_81645048, global
	.string "_btry_wink.brlan"
.endobj lbl_81645048

# .data:0x519 | 0x81645059 | size: 0x10
.obj lbl_81645059, global
	.string "_btry_gry.brlan"
.endobj lbl_81645059

# .data:0x529 | 0x81645069 | size: 0x10
.obj lbl_81645069, global
	.string "_btry_wht.brlan"
.endobj lbl_81645069

# .data:0x539 | 0x81645079 | size: 0x15
.obj lbl_81645079, global
	.string "_btry_wink_gry.brlan"
.endobj lbl_81645079

# .data:0x54E | 0x8164508E | size: 0x14
.obj lbl_8164508E, global
	.string "_close_bar_in.brlan"
.endobj lbl_8164508E

# .data:0x562 | 0x816450A2 | size: 0x15
.obj lbl_816450A2, global
	.string "_close_bar_out.brlan"
.endobj lbl_816450A2

# .data:0x577 | 0x816450B7 | size: 0x11
.obj lbl_816450B7, global
	.string "_btry_red.brlan\000"
.endobj lbl_816450B7

# .data:0x588 | 0x816450C8 | size: 0x58
# homebutton::HomeButton::scGroupAnimName
.obj scGroupAnimName__Q210homebutton10HomeButton, global
	.4byte lbl_81644F18
	.4byte lbl_81644F2B
	.4byte lbl_81644F3E
	.4byte lbl_81644F51
	.4byte lbl_81644F65
	.4byte lbl_81644F78
	.4byte lbl_81644F8C
	.4byte lbl_81644FA2
	.4byte lbl_81644FB6
	.4byte lbl_81644FCC
	.4byte lbl_81644FDD
	.4byte lbl_81644FEE
	.4byte lbl_81645004
	.4byte lbl_8164501B
	.4byte lbl_81645032
	.4byte lbl_81645048
	.4byte lbl_81645059
	.4byte lbl_81645069
	.4byte lbl_81645079
	.4byte lbl_8164508E
	.4byte lbl_816450A2
	.4byte lbl_816450B7
.endobj scGroupAnimName__Q210homebutton10HomeButton

# .data:0x5E0 | 0x81645120 | size: 0xC
.obj lbl_81645120, global
	.string "hmMenu_strt"
.endobj lbl_81645120

# .data:0x5EC | 0x8164512C | size: 0xC
.obj lbl_8164512C, global
	.string "hmMenu_fnsh"
.endobj lbl_8164512C

# .data:0x5F8 | 0x81645138 | size: 0xF
.obj lbl_81645138, global
	.string "hmMenuBck_strt"
.endobj lbl_81645138

# .data:0x607 | 0x81645147 | size: 0xF
.obj lbl_81645147, global
	.string "hmMenuBck_fnsh"
.endobj lbl_81645147

# .data:0x616 | 0x81645156 | size: 0xC
.obj lbl_81645156, global
	.string "optn_bar_in"
.endobj lbl_81645156

# .data:0x622 | 0x81645162 | size: 0xD
.obj lbl_81645162, global
	.string "optn_bar_out"
.endobj lbl_81645162

# .data:0x62F | 0x8164516F | size: 0x11
.obj lbl_8164516F, global
	.string "optnBtn_00_inOut"
.endobj lbl_8164516F

# .data:0x640 | 0x81645180 | size: 0x11
.obj lbl_81645180, global
	.string "optnBtn_01_inOut"
.endobj lbl_81645180

# .data:0x651 | 0x81645191 | size: 0x11
.obj lbl_81645191, global
	.string "optnBtn_10_inOut"
.endobj lbl_81645191

# .data:0x662 | 0x816451A2 | size: 0x11
.obj lbl_816451A2, global
	.string "optnBtn_11_inOut"
.endobj lbl_816451A2

# .data:0x673 | 0x816451B3 | size: 0x11
.obj lbl_816451B3, global
	.string "optnBtn_20_inOut"
.endobj lbl_816451B3

# .data:0x684 | 0x816451C4 | size: 0xF
.obj lbl_816451C4, global
	.string "optnBtn_00_psh"
.endobj lbl_816451C4

# .data:0x693 | 0x816451D3 | size: 0xF
.obj lbl_816451D3, global
	.string "optnBtn_01_psh"
.endobj lbl_816451D3

# .data:0x6A2 | 0x816451E2 | size: 0xF
.obj lbl_816451E2, global
	.string "optnBtn_10_psh"
.endobj lbl_816451E2

# .data:0x6B1 | 0x816451F1 | size: 0xF
.obj lbl_816451F1, global
	.string "optnBtn_11_psh"
.endobj lbl_816451F1

# .data:0x6C0 | 0x81645200 | size: 0xF
.obj lbl_81645200, global
	.string "optnBtn_20_psh"
.endobj lbl_81645200

# .data:0x6CF | 0x8164520F | size: 0x11
.obj lbl_8164520F, global
	.string "optnBtn_10_cntrl"
.endobj lbl_8164520F

# .data:0x6E0 | 0x81645220 | size: 0x10
.obj lbl_81645220, global
	.string "msgBtn_00_inOut"
.endobj lbl_81645220

# .data:0x6F0 | 0x81645230 | size: 0x10
.obj lbl_81645230, global
	.string "msgBtn_01_inOut"
.endobj lbl_81645230

# .data:0x700 | 0x81645240 | size: 0xE
.obj lbl_81645240, global
	.string "msgBtn_00_psh"
.endobj lbl_81645240

# .data:0x70E | 0x8164524E | size: 0xE
.obj lbl_8164524E, global
	.string "msgBtn_01_psh"
.endobj lbl_8164524E

# .data:0x71C | 0x8164525C | size: 0x8C
# homebutton::HomeButton::scGroupName
.obj scGroupName__Q210homebutton10HomeButton, global
	.4byte lbl_81645120
	.4byte lbl_8164512C
	.4byte lbl_81645138
	.4byte lbl_81645147
	.4byte lbl_81645156
	.4byte lbl_81645162
	.4byte lbl_8164516F
	.4byte lbl_81645180
	.4byte lbl_81645191
	.4byte lbl_816451A2
	.4byte lbl_816451B3
	.4byte lbl_816451C4
	.4byte lbl_816451D3
	.4byte lbl_816451E2
	.4byte lbl_816451F1
	.4byte lbl_81645200
	.4byte lbl_8164520F
	.4byte lbl_81645220
	.4byte lbl_81645230
	.4byte lbl_81645240
	.4byte lbl_8164524E
	.4byte lbl_81696478
	.4byte lbl_8169647F
	.4byte lbl_81696486
	.4byte lbl_8169648D
	.4byte lbl_81696494
	.4byte lbl_8169649B
	.4byte lbl_816964A2
	.4byte lbl_816964A9
	.4byte lbl_816964B0
	.4byte lbl_816964B7
	.4byte lbl_816964BE
	.4byte lbl_816964C6
	.4byte lbl_816964CE
	.4byte lbl_816964D6
.endobj scGroupName__Q210homebutton10HomeButton

# .data:0x7A8 | 0x816452E8 | size: 0xB
.obj lbl_816452E8, global
	.string "let_icn_00"
.endobj lbl_816452E8

# .data:0x7B3 | 0x816452F3 | size: 0xA
.obj lbl_816452F3, global
	.string "N_plyr_00"
.endobj lbl_816452F3

# .data:0x7BD | 0x816452FD | size: 0xA
.obj lbl_816452FD, global
	.string "N_plyr_01"
.endobj lbl_816452FD

# .data:0x7C7 | 0x81645307 | size: 0xA
.obj lbl_81645307, global
	.string "N_plyr_02"
.endobj lbl_81645307

# .data:0x7D1 | 0x81645311 | size: 0xB
.obj lbl_81645311, global
	.string "N_plyr_03\000"
.endobj lbl_81645311

# .data:0x7DC | 0x8164531C | size: 0x14
# homebutton::HomeButton::scFuncPaneName
.obj scFuncPaneName__Q210homebutton10HomeButton, global
	.4byte lbl_816452E8
	.4byte lbl_816452F3
	.4byte lbl_816452FD
	.4byte lbl_81645307
	.4byte lbl_81645311
.endobj scFuncPaneName__Q210homebutton10HomeButton

# .data:0x7F0 | 0x81645330 | size: 0x9
.obj lbl_81645330, global
	.string "B_btn_00"
.endobj lbl_81645330

# .data:0x7F9 | 0x81645339 | size: 0x9
.obj lbl_81645339, global
	.string "B_bar_10"
.endobj lbl_81645339

# .data:0x802 | 0x81645342 | size: 0xD
.obj lbl_81645342, global
	.string "B_optnBtn_00"
.endobj lbl_81645342

# .data:0x80F | 0x8164534F | size: 0xD
.obj lbl_8164534F, global
	.string "B_optnBtn_01"
.endobj lbl_8164534F

# .data:0x81C | 0x8164535C | size: 0xD
.obj lbl_8164535C, global
	.string "B_optnBtn_10"
.endobj lbl_8164535C

# .data:0x829 | 0x81645369 | size: 0xD
.obj lbl_81645369, global
	.string "B_optnBtn_11"
.endobj lbl_81645369

# .data:0x836 | 0x81645376 | size: 0xD
.obj lbl_81645376, global
	.string "B_optnBtn_20"
.endobj lbl_81645376

# .data:0x843 | 0x81645383 | size: 0x9
.obj lbl_81645383, global
	.string "cntrl_00"
.endobj lbl_81645383

# .data:0x84C | 0x8164538C | size: 0x28
# homebutton::HomeButton::scFuncTouchPaneName
.obj scFuncTouchPaneName__Q210homebutton10HomeButton, global
	.4byte lbl_81645330
	.4byte lbl_81645339
	.4byte lbl_81645342
	.4byte lbl_8164534F
	.4byte lbl_8164535C
	.4byte lbl_81645369
	.4byte lbl_81645376
	.4byte lbl_816964DE
	.4byte lbl_816964E5
	.4byte lbl_81645383
.endobj scFuncTouchPaneName__Q210homebutton10HomeButton

# .data:0x874 | 0x816453B4 | size: 0x9
.obj lbl_816453B4, global
	.string "T_msg_00"
.endobj lbl_816453B4

# .data:0x87D | 0x816453BD | size: 0x9
.obj lbl_816453BD, global
	.string "T_msg_01"
.endobj lbl_816453BD

# .data:0x886 | 0x816453C6 | size: 0xA
.obj lbl_816453C6, global
	.string "T_Dialog\000"
.endobj lbl_816453C6

# .data:0x890 | 0x816453D0 | size: 0xC
# homebutton::HomeButton::scFuncTextPaneName
.obj scFuncTextPaneName__Q210homebutton10HomeButton, global
	.4byte lbl_816453B4
	.4byte lbl_816453BD
	.4byte lbl_816453C6
.endobj scFuncTextPaneName__Q210homebutton10HomeButton

# .data:0x89C | 0x816453DC | size: 0xD
.obj lbl_816453DC, global
	.string "btryPwr_00_0"
.endobj lbl_816453DC

# .data:0x8A9 | 0x816453E9 | size: 0xD
.obj lbl_816453E9, global
	.string "btryPwr_00_1"
.endobj lbl_816453E9

# .data:0x8B6 | 0x816453F6 | size: 0xD
.obj lbl_816453F6, global
	.string "btryPwr_00_2"
.endobj lbl_816453F6

# .data:0x8C3 | 0x81645403 | size: 0xD
.obj lbl_81645403, global
	.string "btryPwr_00_3"
.endobj lbl_81645403

# .data:0x8D0 | 0x81645410 | size: 0xD
.obj lbl_81645410, global
	.string "btryPwr_01_0"
.endobj lbl_81645410

# .data:0x8DD | 0x8164541D | size: 0xD
.obj lbl_8164541D, global
	.string "btryPwr_01_1"
.endobj lbl_8164541D

# .data:0x8EA | 0x8164542A | size: 0xD
.obj lbl_8164542A, global
	.string "btryPwr_01_2"
.endobj lbl_8164542A

# .data:0x8F7 | 0x81645437 | size: 0xD
.obj lbl_81645437, global
	.string "btryPwr_01_3"
.endobj lbl_81645437

# .data:0x904 | 0x81645444 | size: 0xD
.obj lbl_81645444, global
	.string "btryPwr_02_0"
.endobj lbl_81645444

# .data:0x911 | 0x81645451 | size: 0xD
.obj lbl_81645451, global
	.string "btryPwr_02_1"
.endobj lbl_81645451

# .data:0x91E | 0x8164545E | size: 0xD
.obj lbl_8164545E, global
	.string "btryPwr_02_2"
.endobj lbl_8164545E

# .data:0x92B | 0x8164546B | size: 0xD
.obj lbl_8164546B, global
	.string "btryPwr_02_3"
.endobj lbl_8164546B

# .data:0x938 | 0x81645478 | size: 0xD
.obj lbl_81645478, global
	.string "btryPwr_03_0"
.endobj lbl_81645478

# .data:0x945 | 0x81645485 | size: 0xD
.obj lbl_81645485, global
	.string "btryPwr_03_1"
.endobj lbl_81645485

# .data:0x952 | 0x81645492 | size: 0xD
.obj lbl_81645492, global
	.string "btryPwr_03_2"
.endobj lbl_81645492

# .data:0x95F | 0x8164549F | size: 0xD
.obj lbl_8164549F, global
	.string "btryPwr_03_3"
.endobj lbl_8164549F

# .data:0x96C | 0x816454AC | size: 0x6C
# homebutton::HomeButton::scBatteryPaneName
.obj scBatteryPaneName__Q210homebutton10HomeButton, global
	.4byte lbl_816453DC
	.4byte lbl_816453E9
	.4byte lbl_816453F6
	.4byte lbl_81645403
	.4byte lbl_81645410
	.4byte lbl_8164541D
	.4byte lbl_8164542A
	.4byte lbl_81645437
	.4byte lbl_81645444
	.4byte lbl_81645451
	.4byte lbl_8164545E
	.4byte lbl_8164546B
	.4byte lbl_81645478
	.4byte lbl_81645485
	.4byte lbl_81645492
	.4byte lbl_8164549F
	.4byte 0x5265766F
	.4byte 0x49706C5F
	.4byte 0x55747269
	.4byte 0x6C6C6F50
	.4byte 0x726F4772
	.4byte 0x65636F53
	.4byte 0x74645F4D
	.4byte 0x5F33325F
	.4byte 0x49342E62
	.4byte 0x72666E74
	.4byte 0x00000000
.endobj scBatteryPaneName__Q210homebutton10HomeButton

# .data:0x9D8 | 0x81645518 | size: 0x50
.obj jumptable_81645518, local
	.rel calc__Q210homebutton10HomeButtonFPC17HBMControllerData, .L_81373058
	.rel calc__Q210homebutton10HomeButtonFPC17HBMControllerData, .L_81373170
	.rel calc__Q210homebutton10HomeButtonFPC17HBMControllerData, .L_813731BC
	.rel calc__Q210homebutton10HomeButtonFPC17HBMControllerData, .L_813731C8
	.rel calc__Q210homebutton10HomeButtonFPC17HBMControllerData, .L_81373244
	.rel calc__Q210homebutton10HomeButtonFPC17HBMControllerData, .L_813732DC
	.rel calc__Q210homebutton10HomeButtonFPC17HBMControllerData, .L_813732DC
	.rel calc__Q210homebutton10HomeButtonFPC17HBMControllerData, .L_813733FC
	.rel calc__Q210homebutton10HomeButtonFPC17HBMControllerData, .L_81373468
	.rel calc__Q210homebutton10HomeButtonFPC17HBMControllerData, .L_81373534
	.rel calc__Q210homebutton10HomeButtonFPC17HBMControllerData, .L_8137358C
	.rel calc__Q210homebutton10HomeButtonFPC17HBMControllerData, .L_81373660
	.rel calc__Q210homebutton10HomeButtonFPC17HBMControllerData, .L_813736A4
	.rel calc__Q210homebutton10HomeButtonFPC17HBMControllerData, .L_813736DC
	.rel calc__Q210homebutton10HomeButtonFPC17HBMControllerData, .L_813737A0
	.rel calc__Q210homebutton10HomeButtonFPC17HBMControllerData, .L_813737C8
	.rel calc__Q210homebutton10HomeButtonFPC17HBMControllerData, .L_81373848
	.rel calc__Q210homebutton10HomeButtonFPC17HBMControllerData, .L_8137389C
	.rel calc__Q210homebutton10HomeButtonFPC17HBMControllerData, .L_813739D4
	.rel calc__Q210homebutton10HomeButtonFPC17HBMControllerData, .L_813739E0
.endobj jumptable_81645518

# .data:0xA28 | 0x81645568 | size: 0x28
.obj jumptable_81645568, local
	.rel startPointEvent__Q210homebutton10HomeButtonFPCcPv, .L_813753D8
	.rel startPointEvent__Q210homebutton10HomeButtonFPCcPv, .L_81375430
	.rel startPointEvent__Q210homebutton10HomeButtonFPCcPv, .L_81375508
	.rel startPointEvent__Q210homebutton10HomeButtonFPCcPv, .L_8137554C
	.rel startPointEvent__Q210homebutton10HomeButtonFPCcPv, .L_81375590
	.rel startPointEvent__Q210homebutton10HomeButtonFPCcPv, .L_813755D4
	.rel startPointEvent__Q210homebutton10HomeButtonFPCcPv, .L_81375618
	.rel startPointEvent__Q210homebutton10HomeButtonFPCcPv, .L_8137565C
	.rel startPointEvent__Q210homebutton10HomeButtonFPCcPv, .L_813756A0
	.rel startPointEvent__Q210homebutton10HomeButtonFPCcPv, .L_81375430
.endobj jumptable_81645568

# .data:0xA50 | 0x81645590 | size: 0x28
.obj jumptable_81645590, local
	.rel startLeftEvent__Q210homebutton10HomeButtonFPCc, .L_813758D0
	.rel startLeftEvent__Q210homebutton10HomeButtonFPCc, .L_8137591C
	.rel startLeftEvent__Q210homebutton10HomeButtonFPCc, .L_813759DC
	.rel startLeftEvent__Q210homebutton10HomeButtonFPCc, .L_81375A14
	.rel startLeftEvent__Q210homebutton10HomeButtonFPCc, .L_81375A4C
	.rel startLeftEvent__Q210homebutton10HomeButtonFPCc, .L_81375A84
	.rel startLeftEvent__Q210homebutton10HomeButtonFPCc, .L_81375ABC
	.rel startLeftEvent__Q210homebutton10HomeButtonFPCc, .L_81375AF4
	.rel startLeftEvent__Q210homebutton10HomeButtonFPCc, .L_81375B2C
	.rel startLeftEvent__Q210homebutton10HomeButtonFPCc, .L_8137591C
.endobj jumptable_81645590

# .data:0xA78 | 0x816455B8 | size: 0x28
.obj jumptable_816455B8, local
	.rel startTrigEvent__Q210homebutton10HomeButtonFPCc, .L_81375D08
	.rel startTrigEvent__Q210homebutton10HomeButtonFPCc, .L_81375D74
	.rel startTrigEvent__Q210homebutton10HomeButtonFPCc, .L_81375E7C
	.rel startTrigEvent__Q210homebutton10HomeButtonFPCc, .L_81375FF4
	.rel startTrigEvent__Q210homebutton10HomeButtonFPCc, .L_8137616C
	.rel startTrigEvent__Q210homebutton10HomeButtonFPCc, .L_81376264
	.rel startTrigEvent__Q210homebutton10HomeButtonFPCc, .L_81376300
	.rel startTrigEvent__Q210homebutton10HomeButtonFPCc, .L_813763E8
	.rel startTrigEvent__Q210homebutton10HomeButtonFPCc, .L_8137645C
	.rel startTrigEvent__Q210homebutton10HomeButtonFPCc, .L_81375D74
.endobj jumptable_816455B8

# .data:0xAA0 | 0x816455E0 | size: 0x10
# homebutton::HomeButtonEventHandler::__vtable
.obj __vt__Q210homebutton22HomeButtonEventHandler, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte onEvent__Q210homebutton22HomeButtonEventHandlerFUlUlPv
	.4byte setManager__Q310homebutton3gui12EventHandlerFPQ310homebutton3gui7Manager
.endobj __vt__Q210homebutton22HomeButtonEventHandler

# .data:0xAB0 | 0x816455F0 | size: 0x10
# homebutton::gui::EventHandler::__vtable
.obj __vt__Q310homebutton3gui12EventHandler, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte onEvent__Q310homebutton3gui12EventHandlerFUlUlPv
	.4byte setManager__Q310homebutton3gui12EventHandlerFPQ310homebutton3gui7Manager
.endobj __vt__Q310homebutton3gui12EventHandler

# .data:0xAC0 | 0x81645600 | size: 0x20
# homebutton::gui::Interface::__vtable
.obj __vt__Q310homebutton3gui9Interface, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte create__Q310homebutton3gui9InterfaceFv
	.4byte init__Q310homebutton3gui9InterfaceFv
	.4byte calc__Q310homebutton3gui9InterfaceFv
	.4byte draw__Q310homebutton3gui9InterfaceFRA3_A4_f
	.4byte draw__Q310homebutton3gui9InterfaceFv
	.4byte __dt__Q310homebutton3gui9InterfaceFv
.endobj __vt__Q310homebutton3gui9Interface

# 0x816946D8..0x81694758 | size: 0x80
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x816946D8 | size: 0x4
.obj lbl_816946D8, global
	.float 0
.endobj lbl_816946D8

# .sdata2:0x4 | 0x816946DC | size: 0x4
.obj lbl_816946DC, global
	.float 1
.endobj lbl_816946DC

# .sdata2:0x8 | 0x816946E0 | size: 0x8
.obj lbl_816946E0, global
	.double 4503599627370496
.endobj lbl_816946E0

# .sdata2:0x10 | 0x816946E8 | size: 0x4
.obj lbl_816946E8, global
	.float 0.9
.endobj lbl_816946E8

# .sdata2:0x14 | 0x816946EC | size: 0x4
.obj lbl_816946EC, global
	.float 0.07874016
.endobj lbl_816946EC

# .sdata2:0x18 | 0x816946F0 | size: 0x4
.obj lbl_816946F0, global
	.float 10
.endobj lbl_816946F0

# .sdata2:0x1C | 0x816946F4 | size: 0x4
.obj gap_09_816946F4_sdata2, global
.hidden gap_09_816946F4_sdata2
	.4byte 0x00000000
.endobj gap_09_816946F4_sdata2

# .sdata2:0x20 | 0x816946F8 | size: 0x8
.obj lbl_816946F8, global
	.double 4503601774854144
.endobj lbl_816946F8

# .sdata2:0x28 | 0x81694700 | size: 0x4
.obj lbl_81694700, global
	.float 2.5
.endobj lbl_81694700

# .sdata2:0x2C | 0x81694704 | size: 0x4
.obj lbl_81694704, global
	.float 0.5
.endobj lbl_81694704

# .sdata2:0x30 | 0x81694708 | size: 0x4
.obj lbl_81694708, global
	.float 9
.endobj lbl_81694708

# .sdata2:0x34 | 0x8169470C | size: 0x4
.obj lbl_8169470C, global
	.float 12.7
.endobj lbl_8169470C

# .sdata2:0x38 | 0x81694710 | size: 0x4
.obj lbl_81694710, global
	.float 15
.endobj lbl_81694710

# .sdata2:0x3C | 0x81694714 | size: 0x4
.obj lbl_81694714, global
	.float 1.40625
.endobj lbl_81694714

# .sdata2:0x40 | 0x81694718 | size: 0x4
.obj lbl_81694718, global
	.float -416
.endobj lbl_81694718

# .sdata2:0x44 | 0x8169471C | size: 0x4
.obj lbl_8169471C, global
	.float -228
.endobj lbl_8169471C

# .sdata2:0x48 | 0x81694720 | size: 0x4
.obj lbl_81694720, global
	.float 416
.endobj lbl_81694720

# .sdata2:0x4C | 0x81694724 | size: 0x4
.obj lbl_81694724, global
	.float 228
.endobj lbl_81694724

# .sdata2:0x50 | 0x81694728 | size: 0x4
.obj lbl_81694728, global
	.float 1.10132
.endobj lbl_81694728

# .sdata2:0x54 | 0x8169472C | size: 0x4
.obj lbl_8169472C, global
	.float 1.15
.endobj lbl_8169472C

# .sdata2:0x58 | 0x81694730 | size: 0x4
.obj lbl_81694730, global
	.float -516
.endobj lbl_81694730

# .sdata2:0x5C | 0x81694734 | size: 0x4
.obj lbl_81694734, global
	.float 516
.endobj lbl_81694734

# .sdata2:0x60 | 0x81694738 | size: 0x4
.obj lbl_81694738, global
	.float -328
.endobj lbl_81694738

# .sdata2:0x64 | 0x8169473C | size: 0x4
.obj lbl_8169473C, global
	.float 328
.endobj lbl_8169473C

# .sdata2:0x68 | 0x81694740 | size: 0x4
.obj lbl_81694740, global
	.float -180
.endobj lbl_81694740

# .sdata2:0x6C | 0x81694744 | size: 0x4
.obj lbl_81694744, global
	.float 3
.endobj lbl_81694744

# .sdata2:0x70 | 0x81694748 | size: 0x4
.obj lbl_81694748, global
	.float -10000
.endobj lbl_81694748

# .sdata2:0x74 | 0x8169474C | size: 0x4
.obj lbl_8169474C, global
	.float -1000
.endobj lbl_8169474C

# .sdata2:0x78 | 0x81694750 | size: 0x4
.obj lbl_81694750, global
	.float 1000
.endobj lbl_81694750

# .sdata2:0x7C | 0x81694754 | size: 0x4
.obj lbl_81694754, global
	.float 32768
.endobj lbl_81694754

# 0x81696450..0x81696500 | size: 0xB0
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696450 | size: 0x4
.obj lbl_81696450, global
	.4byte lbl_8108A520
.endobj lbl_81696450

# .sdata:0x4 | 0x81696454 | size: 0x8
.obj lbl_81696454, global
	.string "N_Trans"
.endobj lbl_81696454

# .sdata:0xC | 0x8169645C | size: 0x4
.obj lbl_8169645C, global
	.4byte lbl_81696454
.endobj lbl_8169645C

# .sdata:0x10 | 0x81696460 | size: 0x8
.obj lbl_81696460, global
	.4byte 0x4E5F526F
	.4byte 0x74000000
.endobj lbl_81696460

# .sdata:0x18 | 0x81696468 | size: 0x4
.obj lbl_81696468, global
	.4byte lbl_81696460
.endobj lbl_81696468

# .sdata:0x1C | 0x8169646C | size: 0x8
.obj lbl_8169646C, global
	.4byte 0x4E5F5352
	.4byte 0x6F740000
.endobj lbl_8169646C

# .sdata:0x24 | 0x81696474 | size: 0x4
.obj lbl_81696474, global
	.4byte lbl_8169646C
.endobj lbl_81696474

# .sdata:0x28 | 0x81696478 | size: 0x7
.obj lbl_81696478, global
	.string "vol_00"
.endobj lbl_81696478

# .sdata:0x2F | 0x8169647F | size: 0x7
.obj lbl_8169647F, global
	.string "vol_01"
.endobj lbl_8169647F

# .sdata:0x36 | 0x81696486 | size: 0x7
.obj lbl_81696486, global
	.string "vol_02"
.endobj lbl_81696486

# .sdata:0x3D | 0x8169648D | size: 0x7
.obj lbl_8169648D, global
	.string "vol_03"
.endobj lbl_8169648D

# .sdata:0x44 | 0x81696494 | size: 0x7
.obj lbl_81696494, global
	.string "vol_04"
.endobj lbl_81696494

# .sdata:0x4B | 0x8169649B | size: 0x7
.obj lbl_8169649B, global
	.string "vol_05"
.endobj lbl_8169649B

# .sdata:0x52 | 0x816964A2 | size: 0x7
.obj lbl_816964A2, global
	.string "vol_06"
.endobj lbl_816964A2

# .sdata:0x59 | 0x816964A9 | size: 0x7
.obj lbl_816964A9, global
	.string "vol_07"
.endobj lbl_816964A9

# .sdata:0x60 | 0x816964B0 | size: 0x7
.obj lbl_816964B0, global
	.string "vol_08"
.endobj lbl_816964B0

# .sdata:0x67 | 0x816964B7 | size: 0x7
.obj lbl_816964B7, global
	.string "vol_09"
.endobj lbl_816964B7

# .sdata:0x6E | 0x816964BE | size: 0x8
.obj lbl_816964BE, global
	.string "plyr_00"
.endobj lbl_816964BE

# .sdata:0x76 | 0x816964C6 | size: 0x8
.obj lbl_816964C6, global
	.string "plyr_01"
.endobj lbl_816964C6

# .sdata:0x7E | 0x816964CE | size: 0x8
.obj lbl_816964CE, global
	.string "plyr_02"
.endobj lbl_816964CE

# .sdata:0x86 | 0x816964D6 | size: 0x8
.obj lbl_816964D6, global
	.string "plyr_03"
.endobj lbl_816964D6

# .sdata:0x8E | 0x816964DE | size: 0x7
.obj lbl_816964DE, global
	.string "B_BtnA"
.endobj lbl_816964DE

# .sdata:0x95 | 0x816964E5 | size: 0x7
.obj lbl_816964E5, global
	.string "B_BtnB"
.endobj lbl_816964E5

# .sdata:0x9C | 0x816964EC | size: 0x4
.obj lbl_816964EC, global
	.string "arc"
.endobj lbl_816964EC

# .sdata:0xA0 | 0x816964F0 | size: 0x8
.obj lbl_816964F0, global
	.string "back_00"
.endobj lbl_816964F0

# .sdata:0xA8 | 0x816964F8 | size: 0x8
.obj lbl_816964F8, global
	.string "back_02"
.endobj lbl_816964F8

# 0x816989B0..0x816989B8 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x816989B0 | size: 0x8
.obj lbl_816989B0, global
	.skip 0x8
.endobj lbl_816989B0
