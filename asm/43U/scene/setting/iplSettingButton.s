.include "macros.inc"
.file "iplSettingButton.cpp"

# 0x81406ED0..0x81407AFC | size: 0xC2C
.text
.balign 4

# .text:0x0 | 0x81406ED0 | size: 0x9C
# ipl::scene::SettingButton::SettingButton(EGG::Heap*, int)
.fn __ct__Q33ipl5scene13SettingButtonFPQ23EGG4Heapi, global
/* 81406ED0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81406ED4 | 7C 08 02 A6 */	mflr r0
/* 81406ED8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81406EDC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81406EE0 | 7C BF 2B 78 */	mr r31, r5
/* 81406EE4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81406EE8 | 7C 7E 1B 78 */	mr r30, r3
/* 81406EEC | 48 00 43 1D */	bl __ct__Q33ipl5scene14FaderSceneBaseFPQ23EGG4Heap
/* 81406EF0 | 3C E0 81 66 */	lis r7, __vt__Q33ipl5scene13SettingButton@ha
/* 81406EF4 | 39 00 00 00 */	li r8, 0x0
/* 81406EF8 | 38 E7 80 FC */	addi r7, r7, __vt__Q33ipl5scene13SettingButton@l
/* 81406EFC | 38 80 00 40 */	li r4, 0x40
/* 81406F00 | 38 C7 00 1C */	addi r6, r7, 0x1c
/* 81406F04 | 38 00 00 01 */	li r0, 0x1
/* 81406F08 | 38 A7 00 68 */	addi r5, r7, 0x68
/* 81406F0C | 91 1E 00 60 */	stw r8, 0x60(r30)
/* 81406F10 | 7F C3 F3 78 */	mr r3, r30
/* 81406F14 | 90 FE 00 00 */	stw r7, 0x0(r30)
/* 81406F18 | 90 DE 00 14 */	stw r6, 0x14(r30)
/* 81406F1C | 90 BE 00 58 */	stw r5, 0x58(r30)
/* 81406F20 | 90 9E 02 64 */	stw r4, 0x264(r30)
/* 81406F24 | 91 1E 02 68 */	stw r8, 0x268(r30)
/* 81406F28 | 91 1E 02 6C */	stw r8, 0x26c(r30)
/* 81406F2C | 91 1E 02 70 */	stw r8, 0x270(r30)
/* 81406F30 | 93 FE 02 74 */	stw r31, 0x274(r30)
/* 81406F34 | 91 1E 02 78 */	stw r8, 0x278(r30)
/* 81406F38 | 91 1E 02 7C */	stw r8, 0x27c(r30)
/* 81406F3C | 91 1E 02 80 */	stw r8, 0x280(r30)
/* 81406F40 | 91 1E 02 84 */	stw r8, 0x284(r30)
/* 81406F44 | 91 1E 02 88 */	stw r8, 0x288(r30)
/* 81406F48 | 98 1E 02 8C */	stb r0, 0x28c(r30)
/* 81406F4C | 99 1E 02 8D */	stb r8, 0x28d(r30)
/* 81406F50 | 99 1E 02 8E */	stb r8, 0x28e(r30)
/* 81406F54 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81406F58 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81406F5C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81406F60 | 7C 08 03 A6 */	mtlr r0
/* 81406F64 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81406F68 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene13SettingButtonFPQ23EGG4Heapi

# .text:0x9C | 0x81406F6C | size: 0x4C
# ipl::scene::SettingButton::prepare()
.fn prepare__Q33ipl5scene13SettingButtonFv, global
/* 81406F6C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81406F70 | 7C 08 02 A6 */	mflr r0
/* 81406F74 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81406F78 | 3C A0 81 65 */	lis r5, lbl_81657F5E@ha
/* 81406F7C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81406F80 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81406F84 | 38 A5 7F 5E */	addi r5, r5, lbl_81657F5E@l
/* 81406F88 | 38 C0 00 00 */	li r6, 0x0
/* 81406F8C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81406F90 | 7C 7F 1B 78 */	mr r31, r3
/* 81406F94 | 80 64 00 6C */	lwz r3, 0x6c(r4)
/* 81406F98 | 80 9F 00 24 */	lwz r4, 0x24(r31)
/* 81406F9C | 4B F3 69 19 */	bl readLayoutAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcb
/* 81406FA0 | 90 7F 02 7C */	stw r3, 0x27c(r31)
/* 81406FA4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81406FA8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81406FAC | 7C 08 03 A6 */	mtlr r0
/* 81406FB0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81406FB4 | 4E 80 00 20 */	blr
.endfn prepare__Q33ipl5scene13SettingButtonFv

# .text:0xE8 | 0x81406FB8 | size: 0x288
# ipl::scene::SettingButton::create()
.fn create__Q33ipl5scene13SettingButtonFv, global
/* 81406FB8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81406FBC | 7C 08 02 A6 */	mflr r0
/* 81406FC0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81406FC4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81406FC8 | 48 1F 24 FD */	bl _savegpr_28
/* 81406FCC | 3F C0 81 65 */	lis r30, lbl_81657F40@ha
/* 81406FD0 | 7C 7F 1B 78 */	mr r31, r3
/* 81406FD4 | 3B DE 7F 40 */	addi r30, r30, lbl_81657F40@l
/* 81406FD8 | 38 60 05 80 */	li r3, 0x580
/* 81406FDC | 48 1F 10 C1 */	bl __nw__FUl
/* 81406FE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81406FE4 | 41 82 00 18 */	beq .L_81406FFC
/* 81406FE8 | 80 9F 00 24 */	lwz r4, 0x24(r31)
/* 81406FEC | 38 FE 00 2B */	addi r7, r30, 0x2b
/* 81406FF0 | 80 BF 02 7C */	lwz r5, 0x27c(r31)
/* 81406FF4 | 38 CD 92 20 */	li r6, lbl_81697260@sda21
/* 81406FF8 | 4B F6 30 2D */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_81406FFC:
/* 81406FFC | 90 7F 02 78 */	stw r3, 0x278(r31)
/* 81407000 | 38 9E 00 3D */	addi r4, r30, 0x3d
/* 81407004 | 38 AD 92 24 */	li r5, lbl_81697264@sda21
/* 81407008 | 38 C0 00 00 */	li r6, 0x0
/* 8140700C | 38 E0 00 01 */	li r7, 0x1
/* 81407010 | 4B F6 34 D1 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407014 | 80 7F 02 78 */	lwz r3, 0x278(r31)
/* 81407018 | 38 9E 00 56 */	addi r4, r30, 0x56
/* 8140701C | 38 BE 00 74 */	addi r5, r30, 0x74
/* 81407020 | 38 C0 00 00 */	li r6, 0x0
/* 81407024 | 38 E0 00 00 */	li r7, 0x0
/* 81407028 | 4B F6 34 B9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8140702C | 80 7F 02 78 */	lwz r3, 0x278(r31)
/* 81407030 | 38 9E 00 80 */	addi r4, r30, 0x80
/* 81407034 | 38 BE 00 74 */	addi r5, r30, 0x74
/* 81407038 | 38 C0 00 00 */	li r6, 0x0
/* 8140703C | 38 E0 00 00 */	li r7, 0x0
/* 81407040 | 4B F6 34 A1 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407044 | 80 7F 02 78 */	lwz r3, 0x278(r31)
/* 81407048 | 38 9E 00 9F */	addi r4, r30, 0x9f
/* 8140704C | 38 BE 00 BA */	addi r5, r30, 0xba
/* 81407050 | 38 C0 00 00 */	li r6, 0x0
/* 81407054 | 38 E0 00 00 */	li r7, 0x0
/* 81407058 | 4B F6 34 89 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8140705C | 80 7F 02 78 */	lwz r3, 0x278(r31)
/* 81407060 | 38 9E 00 C7 */	addi r4, r30, 0xc7
/* 81407064 | 38 AD 92 2C */	li r5, lbl_8169726C@sda21
/* 81407068 | 38 C0 00 00 */	li r6, 0x0
/* 8140706C | 38 E0 00 00 */	li r7, 0x0
/* 81407070 | 4B F6 34 71 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407074 | 80 7F 02 78 */	lwz r3, 0x278(r31)
/* 81407078 | 38 9E 00 E3 */	addi r4, r30, 0xe3
/* 8140707C | 38 AD 92 2C */	li r5, lbl_8169726C@sda21
/* 81407080 | 38 C0 00 00 */	li r6, 0x0
/* 81407084 | 38 E0 00 01 */	li r7, 0x1
/* 81407088 | 4B F6 34 59 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8140708C | 80 7F 02 78 */	lwz r3, 0x278(r31)
/* 81407090 | 38 9E 00 FD */	addi r4, r30, 0xfd
/* 81407094 | 38 BE 00 74 */	addi r5, r30, 0x74
/* 81407098 | 38 C0 00 00 */	li r6, 0x0
/* 8140709C | 38 E0 00 00 */	li r7, 0x0
/* 814070A0 | 4B F6 34 41 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 814070A4 | 80 7F 02 78 */	lwz r3, 0x278(r31)
/* 814070A8 | 38 9E 01 16 */	addi r4, r30, 0x116
/* 814070AC | 38 BE 00 74 */	addi r5, r30, 0x74
/* 814070B0 | 38 C0 00 00 */	li r6, 0x0
/* 814070B4 | 38 E0 00 00 */	li r7, 0x0
/* 814070B8 | 4B F6 34 29 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 814070BC | 80 7F 02 78 */	lwz r3, 0x278(r31)
/* 814070C0 | 4B F6 35 75 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 814070C4 | 38 60 00 34 */	li r3, 0x34
/* 814070C8 | 48 1F 0F D5 */	bl __nw__FUl
/* 814070CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814070D0 | 7C 7D 1B 78 */	mr r29, r3
/* 814070D4 | 41 82 00 98 */	beq .L_8140716C
/* 814070D8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814070DC | 7F E6 FB 78 */	mr r6, r31
/* 814070E0 | 41 82 00 08 */	beq .L_814070E8
/* 814070E4 | 38 DF 00 58 */	addi r6, r31, 0x58
.L_814070E8:
/* 814070E8 | 80 BF 02 78 */	lwz r5, 0x278(r31)
/* 814070EC | 3C 80 81 64 */	lis r4, __vt__Q23gui7Manager@ha
/* 814070F0 | 38 84 27 E0 */	addi r4, r4, __vt__Q23gui7Manager@l
/* 814070F4 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814070F8 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 814070FC | 38 00 00 00 */	li r0, 0x0
/* 81407100 | 3B 85 02 98 */	addi r28, r5, 0x298
/* 81407104 | 90 C3 00 04 */	stw r6, 0x4(r3)
/* 81407108 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 8140710C | 41 82 00 1C */	beq .L_81407128
/* 81407110 | 81 86 00 00 */	lwz r12, 0x0(r6)
/* 81407114 | 7C C3 33 78 */	mr r3, r6
/* 81407118 | 7F A4 EB 78 */	mr r4, r29
/* 8140711C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81407120 | 7D 89 03 A6 */	mtctr r12
/* 81407124 | 4E 80 04 21 */	bctrl
.L_81407128:
/* 81407128 | 38 7D 00 08 */	addi r3, r29, 0x8
/* 8140712C | 38 80 00 08 */	li r4, 0x8
/* 81407130 | 48 10 AF 2D */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 81407134 | 3C A0 81 64 */	lis r5, __vt__Q23gui11PaneManager@ha
/* 81407138 | 38 7D 00 18 */	addi r3, r29, 0x18
/* 8140713C | 38 A5 27 84 */	addi r5, r5, __vt__Q23gui11PaneManager@l
/* 81407140 | 38 80 00 08 */	li r4, 0x8
/* 81407144 | 90 BD 00 00 */	stw r5, 0x0(r29)
/* 81407148 | 93 9D 00 24 */	stw r28, 0x24(r29)
/* 8140714C | 48 10 AF 11 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 81407150 | 3C 80 81 63 */	lis r4, __vt__Q33ipl3gui11PaneManager@ha
/* 81407154 | 38 60 00 00 */	li r3, 0x0
/* 81407158 | 38 84 59 C4 */	addi r4, r4, __vt__Q33ipl3gui11PaneManager@l
/* 8140715C | 38 00 00 01 */	li r0, 0x1
/* 81407160 | 90 9D 00 00 */	stw r4, 0x0(r29)
/* 81407164 | 90 7D 00 2C */	stw r3, 0x2c(r29)
/* 81407168 | 98 1D 00 30 */	stb r0, 0x30(r29)
.L_8140716C:
/* 8140716C | 93 BF 02 80 */	stw r29, 0x280(r31)
/* 81407170 | 7F A3 EB 78 */	mr r3, r29
/* 81407174 | 80 9F 02 78 */	lwz r4, 0x278(r31)
/* 81407178 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8140717C | 38 84 00 04 */	addi r4, r4, 0x4
/* 81407180 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 81407184 | 7D 89 03 A6 */	mtctr r12
/* 81407188 | 4E 80 04 21 */	bctrl
/* 8140718C | 80 7F 02 80 */	lwz r3, 0x280(r31)
/* 81407190 | 38 80 00 00 */	li r4, 0x0
/* 81407194 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81407198 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8140719C | 7D 89 03 A6 */	mtctr r12
/* 814071A0 | 4E 80 04 21 */	bctrl
/* 814071A4 | 80 7F 02 78 */	lwz r3, 0x278(r31)
/* 814071A8 | 38 9E 01 30 */	addi r4, r30, 0x130
/* 814071AC | 38 A0 00 01 */	li r5, 0x1
/* 814071B0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 814071B4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814071B8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 814071BC | 7D 89 03 A6 */	mtctr r12
/* 814071C0 | 4E 80 04 21 */	bctrl
/* 814071C4 | 7C 64 1B 78 */	mr r4, r3
/* 814071C8 | 80 7F 02 80 */	lwz r3, 0x280(r31)
/* 814071CC | 38 A0 00 01 */	li r5, 0x1
/* 814071D0 | 4B F6 3F FD */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 814071D4 | 7F E3 FB 78 */	mr r3, r31
/* 814071D8 | 38 80 01 3B */	li r4, 0x13b
/* 814071DC | 48 00 07 49 */	bl setText__Q33ipl5scene13SettingButtonFUl
/* 814071E0 | 80 1F 02 74 */	lwz r0, 0x274(r31)
/* 814071E4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814071E8 | 40 82 00 24 */	bne .L_8140720C
/* 814071EC | 80 7F 02 78 */	lwz r3, 0x278(r31)
/* 814071F0 | 38 00 00 00 */	li r0, 0x0
/* 814071F4 | 98 1F 02 8C */	stb r0, 0x28c(r31)
/* 814071F8 | 38 80 00 06 */	li r4, 0x6
/* 814071FC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81407200 | 48 10 B1 19 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81407204 | 4B F6 2A 21 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 81407208 | 48 00 00 20 */	b .L_81407228
.L_8140720C:
/* 8140720C | 80 7F 02 78 */	lwz r3, 0x278(r31)
/* 81407210 | 38 00 00 01 */	li r0, 0x1
/* 81407214 | 98 1F 02 8C */	stb r0, 0x28c(r31)
/* 81407218 | 38 80 00 07 */	li r4, 0x7
/* 8140721C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81407220 | 48 10 B0 F9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81407224 | 4B F6 2A 01 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
.L_81407228:
/* 81407228 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8140722C | 48 1F 22 E5 */	bl _restgpr_28
/* 81407230 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81407234 | 7C 08 03 A6 */	mtlr r0
/* 81407238 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8140723C | 4E 80 00 20 */	blr
.endfn create__Q33ipl5scene13SettingButtonFv

# .text:0x370 | 0x81407240 | size: 0xB0
# ipl::scene::SettingButton::calcFadein()
.fn calcFadein__Q33ipl5scene13SettingButtonFv, global
/* 81407240 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81407244 | 7C 08 02 A6 */	mflr r0
/* 81407248 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8140724C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81407250 | 48 1F 22 79 */	bl _savegpr_29
/* 81407254 | 88 03 02 8D */	lbz r0, 0x28d(r3)
/* 81407258 | 7C 7E 1B 78 */	mr r30, r3
/* 8140725C | 3B A0 00 00 */	li r29, 0x0
/* 81407260 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81407264 | 40 82 00 50 */	bne .L_814072B4
/* 81407268 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8140726C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81407270 | 80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 81407274 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81407278 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8140727C | 7D 89 03 A6 */	mtctr r12
/* 81407280 | 4E 80 04 21 */	bctrl
/* 81407284 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 81407288 | 40 82 00 4C */	bne .L_814072D4
/* 8140728C | 80 7E 02 78 */	lwz r3, 0x278(r30)
/* 81407290 | 3B E0 00 01 */	li r31, 0x1
/* 81407294 | 9B FE 02 8D */	stb r31, 0x28d(r30)
/* 81407298 | 38 80 00 00 */	li r4, 0x0
/* 8140729C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 814072A0 | 48 10 B0 79 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 814072A4 | 7C 7E 1B 78 */	mr r30, r3
/* 814072A8 | 4B F5 B5 C9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 814072AC | 93 FE 00 14 */	stw r31, 0x14(r30)
/* 814072B0 | 48 00 00 24 */	b .L_814072D4
.L_814072B4:
/* 814072B4 | 80 63 02 78 */	lwz r3, 0x278(r3)
/* 814072B8 | 38 80 00 00 */	li r4, 0x0
/* 814072BC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 814072C0 | 48 10 B0 59 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 814072C4 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 814072C8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814072CC | 41 82 00 08 */	beq .L_814072D4
/* 814072D0 | 3B A0 00 01 */	li r29, 0x1
.L_814072D4:
/* 814072D4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814072D8 | 7F A3 EB 78 */	mr r3, r29
/* 814072DC | 48 1F 22 39 */	bl _restgpr_29
/* 814072E0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814072E4 | 7C 08 03 A6 */	mtlr r0
/* 814072E8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814072EC | 4E 80 00 20 */	blr
.endfn calcFadein__Q33ipl5scene13SettingButtonFv

# .text:0x420 | 0x814072F0 | size: 0x124
# ipl::scene::SettingButton::calcNormal()
.fn calcNormal__Q33ipl5scene13SettingButtonFv, global
/* 814072F0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814072F4 | 7C 08 02 A6 */	mflr r0
/* 814072F8 | 38 80 00 06 */	li r4, 0x6
/* 814072FC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81407300 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81407304 | 7C 7F 1B 78 */	mr r31, r3
/* 81407308 | 80 A3 02 78 */	lwz r5, 0x278(r3)
/* 8140730C | 38 65 02 8C */	addi r3, r5, 0x28c
/* 81407310 | 48 10 B0 09 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81407314 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81407318 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8140731C | 41 82 00 E0 */	beq .L_814073FC
/* 81407320 | 80 7F 02 78 */	lwz r3, 0x278(r31)
/* 81407324 | 38 80 00 07 */	li r4, 0x7
/* 81407328 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8140732C | 48 10 AF ED */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81407330 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81407334 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81407338 | 41 82 00 C4 */	beq .L_814073FC
/* 8140733C | 80 7F 02 78 */	lwz r3, 0x278(r31)
/* 81407340 | 38 80 00 03 */	li r4, 0x3
/* 81407344 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81407348 | 48 10 AF D1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8140734C | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81407350 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81407354 | 41 82 00 A8 */	beq .L_814073FC
/* 81407358 | 80 1F 02 68 */	lwz r0, 0x268(r31)
/* 8140735C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81407360 | 41 82 00 9C */	beq .L_814073FC
/* 81407364 | 80 1F 02 6C */	lwz r0, 0x26c(r31)
/* 81407368 | 54 00 18 38 */	slwi r0, r0, 3
/* 8140736C | 7C 7F 02 14 */	add r3, r31, r0
/* 81407370 | 80 03 00 64 */	lwz r0, 0x64(r3)
/* 81407374 | 80 83 00 68 */	lwz r4, 0x68(r3)
/* 81407378 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8140737C | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81407380 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 81407384 | 41 82 00 2C */	beq .L_814073B0
/* 81407388 | 40 80 00 10 */	bge .L_81407398
/* 8140738C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81407390 | 40 80 00 14 */	bge .L_814073A4
/* 81407394 | 48 00 00 30 */	b .L_814073C4
.L_81407398:
/* 81407398 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 8140739C | 40 80 00 28 */	bge .L_814073C4
/* 814073A0 | 48 00 00 1C */	b .L_814073BC
.L_814073A4:
/* 814073A4 | 7F E3 FB 78 */	mr r3, r31
/* 814073A8 | 48 00 04 C9 */	bl showBtn__Q33ipl5scene13SettingButtonFv
/* 814073AC | 48 00 00 18 */	b .L_814073C4
.L_814073B0:
/* 814073B0 | 7F E3 FB 78 */	mr r3, r31
/* 814073B4 | 48 00 05 19 */	bl hideBtn__Q33ipl5scene13SettingButtonFv
/* 814073B8 | 48 00 00 0C */	b .L_814073C4
.L_814073BC:
/* 814073BC | 7F E3 FB 78 */	mr r3, r31
/* 814073C0 | 48 00 05 65 */	bl setText__Q33ipl5scene13SettingButtonFUl
.L_814073C4:
/* 814073C4 | 80 1F 02 68 */	lwz r0, 0x268(r31)
/* 814073C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814073CC | 41 82 00 30 */	beq .L_814073FC
/* 814073D0 | 80 7F 02 6C */	lwz r3, 0x26c(r31)
/* 814073D4 | 80 1F 02 64 */	lwz r0, 0x264(r31)
/* 814073D8 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814073DC | 7C 03 00 00 */	cmpw r3, r0
/* 814073E0 | 90 7F 02 6C */	stw r3, 0x26c(r31)
/* 814073E4 | 41 80 00 0C */	blt .L_814073F0
/* 814073E8 | 38 00 00 00 */	li r0, 0x0
/* 814073EC | 90 1F 02 6C */	stw r0, 0x26c(r31)
.L_814073F0:
/* 814073F0 | 80 7F 02 68 */	lwz r3, 0x268(r31)
/* 814073F4 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814073F8 | 90 1F 02 68 */	stw r0, 0x268(r31)
.L_814073FC:
/* 814073FC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81407400 | 38 60 00 00 */	li r3, 0x0
/* 81407404 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81407408 | 7C 08 03 A6 */	mtlr r0
/* 8140740C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81407410 | 4E 80 00 20 */	blr
.endfn calcNormal__Q33ipl5scene13SettingButtonFv

# .text:0x544 | 0x81407414 | size: 0x44
# ipl::scene::SettingButton::calcCommonAfter()
.fn calcCommonAfter__Q33ipl5scene13SettingButtonFv, global
/* 81407414 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81407418 | 7C 08 02 A6 */	mflr r0
/* 8140741C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81407420 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81407424 | 7C 7F 1B 78 */	mr r31, r3
/* 81407428 | 80 63 02 78 */	lwz r3, 0x278(r3)
/* 8140742C | 4B F6 32 D9 */	bl calc__Q33ipl6layout6ObjectFv
/* 81407430 | 80 7F 02 80 */	lwz r3, 0x280(r31)
/* 81407434 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81407438 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8140743C | 7D 89 03 A6 */	mtctr r12
/* 81407440 | 4E 80 04 21 */	bctrl
/* 81407444 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81407448 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8140744C | 7C 08 03 A6 */	mtlr r0
/* 81407450 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81407454 | 4E 80 00 20 */	blr
.endfn calcCommonAfter__Q33ipl5scene13SettingButtonFv

# .text:0x588 | 0x81407458 | size: 0x50
# ipl::scene::SettingButton::draw()
.fn draw__Q33ipl5scene13SettingButtonFv, global
/* 81407458 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140745C | 7C 08 02 A6 */	mflr r0
/* 81407460 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81407464 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81407468 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8140746C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81407470 | 7C 7F 1B 78 */	mr r31, r3
/* 81407474 | 80 64 00 64 */	lwz r3, 0x64(r4)
/* 81407478 | 80 03 01 00 */	lwz r0, 0x100(r3)
/* 8140747C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81407480 | 40 82 00 14 */	bne .L_81407494
/* 81407484 | 38 60 00 00 */	li r3, 0x0
/* 81407488 | 4B F5 B5 E5 */	bl setOrtho__Q33ipl7utility8GraphicsFUl
/* 8140748C | 80 7F 02 78 */	lwz r3, 0x278(r31)
/* 81407490 | 4B F6 33 0D */	bl draw__Q33ipl6layout6ObjectFv
.L_81407494:
/* 81407494 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81407498 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8140749C | 7C 08 03 A6 */	mtlr r0
/* 814074A0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814074A4 | 4E 80 00 20 */	blr
.endfn draw__Q33ipl5scene13SettingButtonFv

# .text:0x5D8 | 0x814074A8 | size: 0xBC
# ipl::scene::SettingButton::start_point_event(const char*, ipl::controller::Interface*)
.fn start_point_event__Q33ipl5scene13SettingButtonFPCcPQ33ipl10controller9Interface, global
/* 814074A8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814074AC | 7C 08 02 A6 */	mflr r0
/* 814074B0 | 3C C0 81 66 */	lis r6, lbl_81658070@ha
/* 814074B4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814074B8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814074BC | 7C BF 2B 78 */	mr r31, r5
/* 814074C0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814074C4 | 7C 7E 1B 78 */	mr r30, r3
/* 814074C8 | 7C 83 23 78 */	mr r3, r4
/* 814074CC | 38 86 80 70 */	addi r4, r6, lbl_81658070@l
/* 814074D0 | 48 1F AF B1 */	bl strcmp
/* 814074D4 | 7C 60 00 34 */	cntlzw r0, r3
/* 814074D8 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 814074DC | 41 82 00 70 */	beq .L_8140754C
/* 814074E0 | 80 1E 02 84 */	lwz r0, 0x284(r30)
/* 814074E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814074E8 | 40 82 00 58 */	bne .L_81407540
/* 814074EC | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 814074F0 | 3C 80 81 66 */	lis r4, lbl_8165807C@ha
/* 814074F4 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 814074F8 | 38 84 80 7C */	addi r4, r4, lbl_8165807C@l
/* 814074FC | 4B F6 3F 71 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81407500 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81407504 | 41 82 00 1C */	beq .L_81407520
/* 81407508 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8140750C | 7F E3 FB 78 */	mr r3, r31
/* 81407510 | 38 80 00 00 */	li r4, 0x0
/* 81407514 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81407518 | 7D 89 03 A6 */	mtctr r12
/* 8140751C | 4E 80 04 21 */	bctrl
.L_81407520:
/* 81407520 | 80 7E 02 78 */	lwz r3, 0x278(r30)
/* 81407524 | 38 80 00 01 */	li r4, 0x1
/* 81407528 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8140752C | 48 10 AD ED */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81407530 | 7C 7F 1B 78 */	mr r31, r3
/* 81407534 | 4B F5 B3 3D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81407538 | 38 00 00 01 */	li r0, 0x1
/* 8140753C | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_81407540:
/* 81407540 | 80 7E 02 84 */	lwz r3, 0x284(r30)
/* 81407544 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81407548 | 90 1E 02 84 */	stw r0, 0x284(r30)
.L_8140754C:
/* 8140754C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81407550 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81407554 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81407558 | 7C 08 03 A6 */	mtlr r0
/* 8140755C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81407560 | 4E 80 00 20 */	blr
.endfn start_point_event__Q33ipl5scene13SettingButtonFPCcPQ33ipl10controller9Interface

# .text:0x694 | 0x81407564 | size: 0x84
# ipl::scene::SettingButton::start_left_event(const char*)
.fn start_left_event__Q33ipl5scene13SettingButtonFPCc, global
/* 81407564 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81407568 | 7C 08 02 A6 */	mflr r0
/* 8140756C | 3C A0 81 66 */	lis r5, lbl_81658070@ha
/* 81407570 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81407574 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81407578 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8140757C | 7C 7E 1B 78 */	mr r30, r3
/* 81407580 | 7C 83 23 78 */	mr r3, r4
/* 81407584 | 38 85 80 70 */	addi r4, r5, lbl_81658070@l
/* 81407588 | 48 1F AE F9 */	bl strcmp
/* 8140758C | 7C 60 00 34 */	cntlzw r0, r3
/* 81407590 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 81407594 | 41 82 00 3C */	beq .L_814075D0
/* 81407598 | 80 1E 02 84 */	lwz r0, 0x284(r30)
/* 8140759C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814075A0 | 40 82 00 24 */	bne .L_814075C4
/* 814075A4 | 80 7E 02 78 */	lwz r3, 0x278(r30)
/* 814075A8 | 38 80 00 02 */	li r4, 0x2
/* 814075AC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 814075B0 | 48 10 AD 69 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 814075B4 | 7C 7F 1B 78 */	mr r31, r3
/* 814075B8 | 4B F5 B2 B9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 814075BC | 38 00 00 01 */	li r0, 0x1
/* 814075C0 | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_814075C4:
/* 814075C4 | 80 7E 02 84 */	lwz r3, 0x284(r30)
/* 814075C8 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814075CC | 90 1E 02 84 */	stw r0, 0x284(r30)
.L_814075D0:
/* 814075D0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814075D4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814075D8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814075DC | 7C 08 03 A6 */	mtlr r0
/* 814075E0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814075E4 | 4E 80 00 20 */	blr
.endfn start_left_event__Q33ipl5scene13SettingButtonFPCc

# .text:0x718 | 0x814075E8 | size: 0xA8
# ipl::scene::SettingButton::start_trig_event(const char*)
.fn start_trig_event__Q33ipl5scene13SettingButtonFPCc, global
/* 814075E8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814075EC | 7C 08 02 A6 */	mflr r0
/* 814075F0 | 3C A0 81 66 */	lis r5, lbl_81658070@ha
/* 814075F4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814075F8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814075FC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81407600 | 7C 7E 1B 78 */	mr r30, r3
/* 81407604 | 7C 83 23 78 */	mr r3, r4
/* 81407608 | 38 85 80 70 */	addi r4, r5, lbl_81658070@l
/* 8140760C | 48 1F AE 75 */	bl strcmp
/* 81407610 | 7C 60 00 34 */	cntlzw r0, r3
/* 81407614 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 81407618 | 41 82 00 60 */	beq .L_81407678
/* 8140761C | 80 1E 02 88 */	lwz r0, 0x288(r30)
/* 81407620 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81407624 | 38 8D 92 18 */	li r4, lbl_81697258@sda21
/* 81407628 | 54 00 10 3A */	slwi r0, r0, 2
/* 8140762C | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81407630 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 81407634 | 4B F6 3E 39 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81407638 | 80 7E 02 78 */	lwz r3, 0x278(r30)
/* 8140763C | 38 80 00 03 */	li r4, 0x3
/* 81407640 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81407644 | 48 10 AC D5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81407648 | 7C 7F 1B 78 */	mr r31, r3
/* 8140764C | 4B F5 B2 25 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81407650 | 38 00 00 01 */	li r0, 0x1
/* 81407654 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 81407658 | 98 1E 02 8E */	stb r0, 0x28e(r30)
/* 8140765C | 80 7E 02 80 */	lwz r3, 0x280(r30)
/* 81407660 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81407664 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81407668 | 7D 89 03 A6 */	mtctr r12
/* 8140766C | 4E 80 04 21 */	bctrl
/* 81407670 | 38 00 00 00 */	li r0, 0x0
/* 81407674 | 90 1E 02 84 */	stw r0, 0x284(r30)
.L_81407678:
/* 81407678 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140767C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81407680 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81407684 | 7C 08 03 A6 */	mtlr r0
/* 81407688 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140768C | 4E 80 00 20 */	blr
.endfn start_trig_event__Q33ipl5scene13SettingButtonFPCc

# .text:0x7C0 | 0x81407690 | size: 0xD8
# ipl::scene::SettingButton::onEvent(unsigned long, unsigned long, void*)
.fn onEvent__Q33ipl5scene13SettingButtonFUlUlPv, global
/* 81407690 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81407694 | 7C 08 02 A6 */	mflr r0
/* 81407698 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8140769C | 39 61 00 20 */	addi r11, r1, 0x20
/* 814076A0 | 48 1F 1E 25 */	bl _savegpr_28
/* 814076A4 | 7C 7C 1B 78 */	mr r28, r3
/* 814076A8 | 80 63 00 5C */	lwz r3, 0x5c(r3)
/* 814076AC | 7C BD 2B 78 */	mr r29, r5
/* 814076B0 | 7C DE 33 78 */	mr r30, r6
/* 814076B4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814076B8 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 814076BC | 7D 89 03 A6 */	mtctr r12
/* 814076C0 | 4E 80 04 21 */	bctrl
/* 814076C4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814076C8 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 814076CC | 7D 89 03 A6 */	mtctr r12
/* 814076D0 | 4E 80 04 21 */	bctrl
/* 814076D4 | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 814076D8 | 3B E3 00 B4 */	addi r31, r3, 0xb4
/* 814076DC | 41 82 00 20 */	beq .L_814076FC
/* 814076E0 | 40 80 00 10 */	bge .L_814076F0
/* 814076E4 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814076E8 | 40 80 00 38 */	bge .L_81407720
/* 814076EC | 48 00 00 64 */	b .L_81407750
.L_814076F0:
/* 814076F0 | 2C 1D 00 03 */	cmpwi r29, 0x3
/* 814076F4 | 40 80 00 5C */	bge .L_81407750
/* 814076F8 | 48 00 00 18 */	b .L_81407710
.L_814076FC:
/* 814076FC | 7F 83 E3 78 */	mr r3, r28
/* 81407700 | 7F E4 FB 78 */	mr r4, r31
/* 81407704 | 7F C5 F3 78 */	mr r5, r30
/* 81407708 | 4B FF FD A1 */	bl start_point_event__Q33ipl5scene13SettingButtonFPCcPQ33ipl10controller9Interface
/* 8140770C | 48 00 00 44 */	b .L_81407750
.L_81407710:
/* 81407710 | 7F 83 E3 78 */	mr r3, r28
/* 81407714 | 7F E4 FB 78 */	mr r4, r31
/* 81407718 | 4B FF FE 4D */	bl start_left_event__Q33ipl5scene13SettingButtonFPCc
/* 8140771C | 48 00 00 34 */	b .L_81407750
.L_81407720:
/* 81407720 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81407724 | 3C 80 00 10 */	lis r4, 0x10
/* 81407728 | 7F C3 F3 78 */	mr r3, r30
/* 8140772C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81407730 | 38 84 08 00 */	addi r4, r4, 0x800
/* 81407734 | 7D 89 03 A6 */	mtctr r12
/* 81407738 | 4E 80 04 21 */	bctrl
/* 8140773C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81407740 | 41 82 00 10 */	beq .L_81407750
/* 81407744 | 7F 83 E3 78 */	mr r3, r28
/* 81407748 | 7F E4 FB 78 */	mr r4, r31
/* 8140774C | 4B FF FE 9D */	bl start_trig_event__Q33ipl5scene13SettingButtonFPCc
.L_81407750:
/* 81407750 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81407754 | 48 1F 1D BD */	bl _restgpr_28
/* 81407758 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8140775C | 7C 08 03 A6 */	mtlr r0
/* 81407760 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81407764 | 4E 80 00 20 */	blr
.endfn onEvent__Q33ipl5scene13SettingButtonFUlUlPv

# .text:0x898 | 0x81407768 | size: 0x80
# ipl::scene::SettingButton::update()
.fn update__Q33ipl5scene13SettingButtonFv, global
/* 81407768 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140776C | 7C 08 02 A6 */	mflr r0
/* 81407770 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81407774 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81407778 | 3B E0 00 00 */	li r31, 0x0
/* 8140777C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81407780 | 7C 7E 1B 78 */	mr r30, r3
/* 81407784 | 80 03 00 54 */	lwz r0, 0x54(r3)
/* 81407788 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8140778C | 40 82 00 40 */	bne .L_814077CC
/* 81407790 | 88 03 02 8C */	lbz r0, 0x28c(r3)
/* 81407794 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81407798 | 41 82 00 34 */	beq .L_814077CC
/* 8140779C | 80 63 02 78 */	lwz r3, 0x278(r3)
/* 814077A0 | 38 80 00 06 */	li r4, 0x6
/* 814077A4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 814077A8 | 48 10 AB 71 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 814077AC | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 814077B0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814077B4 | 41 82 00 18 */	beq .L_814077CC
/* 814077B8 | 80 7E 02 80 */	lwz r3, 0x280(r30)
/* 814077BC | 4B F6 37 D1 */	bl update__Q33ipl3gui11PaneManagerFv
/* 814077C0 | 8B FE 02 8E */	lbz r31, 0x28e(r30)
/* 814077C4 | 38 00 00 00 */	li r0, 0x0
/* 814077C8 | 98 1E 02 8E */	stb r0, 0x28e(r30)
.L_814077CC:
/* 814077CC | 7F E3 FB 78 */	mr r3, r31
/* 814077D0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814077D4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814077D8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814077DC | 7C 08 03 A6 */	mtlr r0
/* 814077E0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814077E4 | 4E 80 00 20 */	blr
.endfn update__Q33ipl5scene13SettingButtonFv

# .text:0x918 | 0x814077E8 | size: 0x44
# ipl::scene::SettingButton::showWii()
.fn showWii__Q33ipl5scene13SettingButtonFv, global
/* 814077E8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814077EC | 7C 08 02 A6 */	mflr r0
/* 814077F0 | 38 80 00 04 */	li r4, 0x4
/* 814077F4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814077F8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814077FC | 80 63 02 78 */	lwz r3, 0x278(r3)
/* 81407800 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81407804 | 48 10 AB 15 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81407808 | 7C 7F 1B 78 */	mr r31, r3
/* 8140780C | 4B F5 B0 65 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81407810 | 38 00 00 01 */	li r0, 0x1
/* 81407814 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 81407818 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8140781C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81407820 | 7C 08 03 A6 */	mtlr r0
/* 81407824 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81407828 | 4E 80 00 20 */	blr
.endfn showWii__Q33ipl5scene13SettingButtonFv

# .text:0x95C | 0x8140782C | size: 0x44
# ipl::scene::SettingButton::hideWii()
.fn hideWii__Q33ipl5scene13SettingButtonFv, global
/* 8140782C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81407830 | 7C 08 02 A6 */	mflr r0
/* 81407834 | 38 80 00 05 */	li r4, 0x5
/* 81407838 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140783C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81407840 | 80 63 02 78 */	lwz r3, 0x278(r3)
/* 81407844 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81407848 | 48 10 AA D1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8140784C | 7C 7F 1B 78 */	mr r31, r3
/* 81407850 | 4B F5 B0 21 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81407854 | 38 00 00 01 */	li r0, 0x1
/* 81407858 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 8140785C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81407860 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81407864 | 7C 08 03 A6 */	mtlr r0
/* 81407868 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140786C | 4E 80 00 20 */	blr
.endfn hideWii__Q33ipl5scene13SettingButtonFv

# .text:0x9A0 | 0x81407870 | size: 0x5C
# ipl::scene::SettingButton::showBtn()
.fn showBtn__Q33ipl5scene13SettingButtonFv, global
/* 81407870 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81407874 | 7C 08 02 A6 */	mflr r0
/* 81407878 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140787C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81407880 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81407884 | 88 03 02 8C */	lbz r0, 0x28c(r3)
/* 81407888 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140788C | 40 82 00 28 */	bne .L_814078B4
/* 81407890 | 3B E0 00 01 */	li r31, 0x1
/* 81407894 | 80 A3 02 78 */	lwz r5, 0x278(r3)
/* 81407898 | 9B E3 02 8C */	stb r31, 0x28c(r3)
/* 8140789C | 38 80 00 06 */	li r4, 0x6
/* 814078A0 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 814078A4 | 48 10 AA 75 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 814078A8 | 7C 7E 1B 78 */	mr r30, r3
/* 814078AC | 4B F5 AF C5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 814078B0 | 93 FE 00 14 */	stw r31, 0x14(r30)
.L_814078B4:
/* 814078B4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814078B8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814078BC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814078C0 | 7C 08 03 A6 */	mtlr r0
/* 814078C4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814078C8 | 4E 80 00 20 */	blr
.endfn showBtn__Q33ipl5scene13SettingButtonFv

# .text:0x9FC | 0x814078CC | size: 0x58
# ipl::scene::SettingButton::hideBtn()
.fn hideBtn__Q33ipl5scene13SettingButtonFv, global
/* 814078CC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814078D0 | 7C 08 02 A6 */	mflr r0
/* 814078D4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814078D8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814078DC | 88 03 02 8C */	lbz r0, 0x28c(r3)
/* 814078E0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814078E4 | 40 82 00 2C */	bne .L_81407910
/* 814078E8 | 38 00 00 00 */	li r0, 0x0
/* 814078EC | 80 A3 02 78 */	lwz r5, 0x278(r3)
/* 814078F0 | 98 03 02 8C */	stb r0, 0x28c(r3)
/* 814078F4 | 38 80 00 07 */	li r4, 0x7
/* 814078F8 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 814078FC | 48 10 AA 1D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81407900 | 7C 7F 1B 78 */	mr r31, r3
/* 81407904 | 4B F5 AF 6D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81407908 | 38 00 00 01 */	li r0, 0x1
/* 8140790C | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_81407910:
/* 81407910 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81407914 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81407918 | 7C 08 03 A6 */	mtlr r0
/* 8140791C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81407920 | 4E 80 00 20 */	blr
.endfn hideBtn__Q33ipl5scene13SettingButtonFv

# .text:0xA54 | 0x81407924 | size: 0xD4
# ipl::scene::SettingButton::setText(unsigned long)
.fn setText__Q33ipl5scene13SettingButtonFUl, global
/* 81407924 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81407928 | 7C 08 02 A6 */	mflr r0
/* 8140792C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81407930 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81407934 | 48 1F 1B 95 */	bl _savegpr_29
/* 81407938 | 80 63 02 78 */	lwz r3, 0x278(r3)
/* 8140793C | 3C C0 81 66 */	lis r6, lbl_81658092@ha
/* 81407940 | 7C 9D 23 78 */	mr r29, r4
/* 81407944 | 38 A0 00 01 */	li r5, 0x1
/* 81407948 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8140794C | 38 86 80 92 */	addi r4, r6, lbl_81658092@l
/* 81407950 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81407954 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81407958 | 7D 89 03 A6 */	mtctr r12
/* 8140795C | 4E 80 04 21 */	bctrl
/* 81407960 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81407964 | 7C 7E 1B 78 */	mr r30, r3
/* 81407968 | 3B ED AF 78 */	li r31, lbl_81698FB8@sda21
/* 8140796C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81407970 | 7D 89 03 A6 */	mtctr r12
/* 81407974 | 4E 80 04 21 */	bctrl
/* 81407978 | 48 00 00 18 */	b .L_81407990
.L_8140797C:
/* 8140797C | 7C 03 F8 40 */	cmplw r3, r31
/* 81407980 | 40 82 00 0C */	bne .L_8140798C
/* 81407984 | 38 00 00 01 */	li r0, 0x1
/* 81407988 | 48 00 00 14 */	b .L_8140799C
.L_8140798C:
/* 8140798C | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_81407990:
/* 81407990 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81407994 | 40 82 FF E8 */	bne .L_8140797C
/* 81407998 | 38 00 00 00 */	li r0, 0x0
.L_8140799C:
/* 8140799C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814079A0 | 41 82 00 08 */	beq .L_814079A8
/* 814079A4 | 48 00 00 08 */	b .L_814079AC
.L_814079A8:
/* 814079A8 | 3B C0 00 00 */	li r30, 0x0
.L_814079AC:
/* 814079AC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 814079B0 | 7F A4 EB 78 */	mr r4, r29
/* 814079B4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 814079B8 | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 814079BC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814079C0 | 4B F3 6D FD */	bl getMessage__Q33ipl7message7MessageCFUl
/* 814079C4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814079C8 | 7C 64 1B 78 */	mr r4, r3
/* 814079CC | 7F C3 F3 78 */	mr r3, r30
/* 814079D0 | 38 A0 00 00 */	li r5, 0x0
/* 814079D4 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 814079D8 | 7D 89 03 A6 */	mtctr r12
/* 814079DC | 4E 80 04 21 */	bctrl
/* 814079E0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814079E4 | 48 1F 1B 31 */	bl _restgpr_29
/* 814079E8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814079EC | 7C 08 03 A6 */	mtlr r0
/* 814079F0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814079F4 | 4E 80 00 20 */	blr
.endfn setText__Q33ipl5scene13SettingButtonFUl

# .text:0xB28 | 0x814079F8 | size: 0x54
# ipl::scene::SettingButton::reserve(int, unsigned long)
.fn reserve__Q33ipl5scene13SettingButtonFiUl, global
/* 814079F8 | 80 C3 02 64 */	lwz r6, 0x264(r3)
/* 814079FC | 80 03 02 68 */	lwz r0, 0x268(r3)
/* 81407A00 | 7C 06 00 00 */	cmpw r6, r0
/* 81407A04 | 4D 82 00 20 */	beqlr
/* 81407A08 | 80 03 02 70 */	lwz r0, 0x270(r3)
/* 81407A0C | 54 00 18 38 */	slwi r0, r0, 3
/* 81407A10 | 7C C3 02 14 */	add r6, r3, r0
/* 81407A14 | 90 86 00 64 */	stw r4, 0x64(r6)
/* 81407A18 | 90 A6 00 68 */	stw r5, 0x68(r6)
/* 81407A1C | 80 83 02 70 */	lwz r4, 0x270(r3)
/* 81407A20 | 80 03 02 64 */	lwz r0, 0x264(r3)
/* 81407A24 | 38 84 00 01 */	addi r4, r4, 0x1
/* 81407A28 | 7C 04 00 00 */	cmpw r4, r0
/* 81407A2C | 90 83 02 70 */	stw r4, 0x270(r3)
/* 81407A30 | 41 80 00 0C */	blt .L_81407A3C
/* 81407A34 | 38 00 00 00 */	li r0, 0x0
/* 81407A38 | 90 03 02 70 */	stw r0, 0x270(r3)
.L_81407A3C:
/* 81407A3C | 80 83 02 68 */	lwz r4, 0x268(r3)
/* 81407A40 | 38 04 00 01 */	addi r0, r4, 0x1
/* 81407A44 | 90 03 02 68 */	stw r0, 0x268(r3)
/* 81407A48 | 4E 80 00 20 */	blr
.endfn reserve__Q33ipl5scene13SettingButtonFiUl

# .text:0xB7C | 0x81407A4C | size: 0x3C
# ipl::scene::SettingButton::isPlaying() const
.fn isPlaying__Q33ipl5scene13SettingButtonCFv, global
/* 81407A4C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81407A50 | 7C 08 02 A6 */	mflr r0
/* 81407A54 | 80 63 02 78 */	lwz r3, 0x278(r3)
/* 81407A58 | 38 80 00 03 */	li r4, 0x3
/* 81407A5C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81407A60 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81407A64 | 48 10 A8 B5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81407A68 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81407A6C | 38 03 FF FF */	subi r0, r3, 0x1
/* 81407A70 | 7C 00 00 34 */	cntlzw r0, r0
/* 81407A74 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81407A78 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81407A7C | 7C 08 03 A6 */	mtlr r0
/* 81407A80 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81407A84 | 4E 80 00 20 */	blr
.endfn isPlaying__Q33ipl5scene13SettingButtonCFv

# .text:0xBB8 | 0x81407A88 | size: 0x8
# ipl::scene::FaderSceneBase::calcFadeout()
.fn calcFadeout__Q33ipl5scene14FaderSceneBaseFv, global
/* 81407A88 | 38 60 00 01 */	li r3, 0x1
/* 81407A8C | 4E 80 00 20 */	blr
.endfn calcFadeout__Q33ipl5scene14FaderSceneBaseFv

# .text:0xBC0 | 0x81407A90 | size: 0x5C
# ipl::scene::SettingButton::~SettingButton()
.fn __dt__Q33ipl5scene13SettingButtonFv, global
/* 81407A90 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81407A94 | 7C 08 02 A6 */	mflr r0
/* 81407A98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81407A9C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81407AA0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81407AA4 | 7C 9F 23 78 */	mr r31, r4
/* 81407AA8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81407AAC | 7C 7E 1B 78 */	mr r30, r3
/* 81407AB0 | 41 82 00 20 */	beq .L_81407AD0
/* 81407AB4 | 41 82 00 0C */	beq .L_81407AC0
/* 81407AB8 | 38 80 00 00 */	li r4, 0x0
/* 81407ABC | 48 00 21 A9 */	bl __dt__Q33ipl5scene4BaseFv
.L_81407AC0:
/* 81407AC0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81407AC4 | 40 81 00 0C */	ble .L_81407AD0
/* 81407AC8 | 7F C3 F3 78 */	mr r3, r30
/* 81407ACC | 48 1F 06 19 */	bl __dl__FPv
.L_81407AD0:
/* 81407AD0 | 7F C3 F3 78 */	mr r3, r30
/* 81407AD4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81407AD8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81407ADC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81407AE0 | 7C 08 03 A6 */	mtlr r0
/* 81407AE4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81407AE8 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene13SettingButtonFv

# .text:0xC1C | 0x81407AEC | size: 0x8
.fn "@20@__dt__Q33ipl5scene13SettingButtonFv", global
/* 81407AEC | 38 63 FF EC */	subi r3, r3, 0x14
/* 81407AF0 | 4B FF FF A0 */	b __dt__Q33ipl5scene13SettingButtonFv
.endfn "@20@__dt__Q33ipl5scene13SettingButtonFv"

# .text:0xC24 | 0x81407AF4 | size: 0x8
# ipl::scene::SettingButton::@88@onEvent(unsigned long, unsigned long, void*)
.fn "@88@onEvent__Q33ipl5scene13SettingButtonFUlUlPv", global
/* 81407AF4 | 38 63 FF A8 */	subi r3, r3, 0x58
/* 81407AF8 | 4B FF FB 98 */	b onEvent__Q33ipl5scene13SettingButtonFUlUlPv
.endfn "@88@onEvent__Q33ipl5scene13SettingButtonFUlUlPv"

# 0x81657F40..0x816581B8 | size: 0x278
.data
.balign 8

# .data:0x0 | 0x81657F40 | size: 0xF
.obj lbl_81657F40, global
	.string "WIPL_SE_CANCEL"
.endobj lbl_81657F40

# .data:0xF | 0x81657F4F | size: 0xF
.obj lbl_81657F4F, global
	.string "WIPL_SE_DECIDE"
.endobj lbl_81657F4F

# .data:0x1E | 0x81657F5E | size: 0x112
.obj lbl_81657F5E, global
	.4byte 0x73657475
	.4byte 0x7042746E
	.4byte 0x2E617368
	.4byte 0x0069745F
	.4byte 0x42757474
	.4byte 0x6F6E5F61
	.4byte 0x2E62726C
	.4byte 0x79740069
	.4byte 0x745F4275
	.4byte 0x74746F6E
	.4byte 0x5F615F53
	.4byte 0x65656E49
	.4byte 0x6E2E6272
	.4byte 0x6C616E00
	.4byte 0x69745F42
	.4byte 0x7574746F
	.4byte 0x6E5F615F
	.4byte 0x42746E46
	.4byte 0x6F756375
	.4byte 0x73496E2E
	.4byte 0x62726C61
	.4byte 0x6E00475F
	.4byte 0x466F6375
	.4byte 0x7342746E
	.4byte 0x41006974
	.4byte 0x5F427574
	.4byte 0x746F6E5F
	.4byte 0x615F4274
	.4byte 0x6E466F75
	.4byte 0x6375734F
	.4byte 0x75742E62
	.4byte 0x726C616E
	.4byte 0x0069745F
	.4byte 0x42757474
	.4byte 0x6F6E5F61
	.4byte 0x5F42746E
	.4byte 0x466C6173
	.4byte 0x682E6272
	.4byte 0x6C616E00
	.4byte 0x475F5365
	.4byte 0x6C656374
	.4byte 0x42746E41
	.4byte 0x0069745F
	.4byte 0x42757474
	.4byte 0x6F6E5F61
	.4byte 0x5F576969
	.4byte 0x41707065
	.4byte 0x61722E62
	.4byte 0x726C616E
	.4byte 0x0069745F
	.4byte 0x42757474
	.4byte 0x6F6E5F61
	.4byte 0x5F576969
	.4byte 0x4C6F7374
	.4byte 0x2E62726C
	.4byte 0x616E0069
	.4byte 0x745F4275
	.4byte 0x74746F6E
	.4byte 0x5F615F41
	.4byte 0x6C706849
	.4byte 0x6E2E6272
	.4byte 0x6C616E00
	.4byte 0x69745F42
	.4byte 0x7574746F
	.4byte 0x6E5F615F
	.4byte 0x416C7068
	.4byte 0x4F75742E
	.4byte 0x62726C61
	.2byte 0x6E00
.endobj lbl_81657F5E

# .data:0x130 | 0x81658070 | size: 0xC
.obj lbl_81658070, global
	.string "B_Button_00"
.endobj lbl_81658070

# .data:0x13C | 0x8165807C | size: 0x16
.obj lbl_8165807C, global
	.string "WIPL_SE_BT_TARGETTING"
.endobj lbl_8165807C

# .data:0x152 | 0x81658092 | size: 0x6A
.obj lbl_81658092, global
	.4byte 0x545F4275
	.4byte 0x74746F6E
	.4byte 0x5F303000
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
	.2byte 0x0000
.endobj lbl_81658092

# .data:0x1BC | 0x816580FC | size: 0x6A
# ipl::scene::SettingButton::__vtable
.obj __vt__Q33ipl5scene13SettingButton, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene13SettingButtonFv
	.4byte getParent__Q33ipl5scene4BaseFv
	.4byte getChild__Q33ipl5scene4BaseFv
	.4byte getNext__Q33ipl5scene4BaseFv
	.4byte getPrev__Q33ipl5scene4BaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@20@__dt__Q33ipl5scene13SettingButtonFv"
	.4byte isReady__Q33ipl5scene4BaseCFv
	.4byte isResetAcceptable__Q33ipl5scene4BaseCFv
	.4byte startResetting__Q33ipl5scene4BaseFv
	.4byte isResetProcessDone__Q33ipl5scene4BaseFv
	.4byte prepare__Q33ipl5scene13SettingButtonFv
	.4byte create__Q33ipl5scene13SettingButtonFv
	.4byte calc__Q33ipl5scene14FaderSceneBaseFv
	.4byte draw__Q33ipl5scene13SettingButtonFv
	.4byte destroy__Q33ipl5scene4BaseFv
	.4byte initCalcNormal__Q33ipl5scene14FaderSceneBaseFv
	.4byte initCalcFadeout__Q33ipl5scene14FaderSceneBaseFv
	.4byte calcCommon__Q33ipl5scene14FaderSceneBaseFv
	.4byte calcFadein__Q33ipl5scene13SettingButtonFv
	.4byte calcNormal__Q33ipl5scene13SettingButtonFv
	.4byte calcFadeout__Q33ipl5scene14FaderSceneBaseFv
	.4byte calcCommonAfter__Q33ipl5scene13SettingButtonFv
	.2byte 0x0000
.endobj __vt__Q33ipl5scene13SettingButton

# .data:0x226 | 0x81658166 | size: 0x52
.obj lbl_81658166, global
	.4byte 0x00000000
	.2byte 0x0000
	.4byte "@88@onEvent__Q33ipl5scene13SettingButtonFUlUlPv"
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
	.4byte onEvent__Q33ipl5scene13SettingButtonFUlUlPv
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
.endobj lbl_81658166

# 0x81697258..0x81697278 | size: 0x20
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697258 | size: 0x8
.obj lbl_81697258, global
	.4byte lbl_81657F40
	.4byte lbl_81657F4F
.endobj lbl_81697258

# .sdata:0x8 | 0x81697260 | size: 0x4
.obj lbl_81697260, global
	.string "arc"
.endobj lbl_81697260

# .sdata:0xC | 0x81697264 | size: 0x8
.obj lbl_81697264, global
	.string "G_BarIn"
.endobj lbl_81697264

# .sdata:0x14 | 0x8169726C | size: 0x6
.obj lbl_8169726C, global
	.string "G_Wii"
.endobj lbl_8169726C

# .sdata:0x1A | 0x81697272 | size: 0x6
.obj gap_11_81697272_sdata, global
.hidden gap_11_81697272_sdata
	.4byte 0x00000000
	.2byte 0x0000
.endobj gap_11_81697272_sdata
