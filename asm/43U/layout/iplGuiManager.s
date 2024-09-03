.include "macros.inc"
.file "iplGuiManager.cpp"

# 0x8136AF8C..0x8136B25C | size: 0x2D0
.text
.balign 4

# .text:0x0 | 0x8136AF8C | size: 0x54
# ipl::gui::PaneManager::update()
.fn update__Q33ipl3gui11PaneManagerFv, global
/* 8136AF8C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136AF90 | 7C 08 02 A6 */	mflr r0
/* 8136AF94 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136AF98 | 38 00 00 00 */	li r0, 0x0
/* 8136AF9C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136AFA0 | 3B E0 00 00 */	li r31, 0x0
/* 8136AFA4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8136AFA8 | 7C 7E 1B 78 */	mr r30, r3
/* 8136AFAC | 98 03 00 31 */	stb r0, 0x31(r3)
.L_8136AFB0:
/* 8136AFB0 | 7F C3 F3 78 */	mr r3, r30
/* 8136AFB4 | 7F E4 FB 78 */	mr r4, r31
/* 8136AFB8 | 48 00 00 29 */	bl update__Q33ipl3gui11PaneManagerFi
/* 8136AFBC | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8136AFC0 | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 8136AFC4 | 41 80 FF EC */	blt .L_8136AFB0
/* 8136AFC8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136AFCC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136AFD0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8136AFD4 | 7C 08 03 A6 */	mtlr r0
/* 8136AFD8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136AFDC | 4E 80 00 20 */	blr
.endfn update__Q33ipl3gui11PaneManagerFv

# .text:0x54 | 0x8136AFE0 | size: 0x1EC
# ipl::gui::PaneManager::update(int)
.fn update__Q33ipl3gui11PaneManagerFi, global
/* 8136AFE0 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8136AFE4 | 7C 08 02 A6 */	mflr r0
/* 8136AFE8 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 8136AFEC | 39 61 00 40 */	addi r11, r1, 0x40
/* 8136AFF0 | 48 28 E4 CD */	bl _savegpr_26
/* 8136AFF4 | 7C 9B 23 78 */	mr r27, r4
/* 8136AFF8 | 7C 7A 1B 78 */	mr r26, r3
/* 8136AFFC | 7F 63 DB 78 */	mr r3, r27
/* 8136B000 | 4B FC A9 C9 */	bl getController__Q23ipl6SystemFi
/* 8136B004 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8136B008 | 7C 7C 1B 78 */	mr r28, r3
/* 8136B00C | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8136B010 | 80 64 00 C4 */	lwz r3, 0xc4(r4)
/* 8136B014 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136B018 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8136B01C | 7D 89 03 A6 */	mtctr r12
/* 8136B020 | 4E 80 04 21 */	bctrl
/* 8136B024 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8136B028 | 40 82 01 8C */	bne .L_8136B1B4
/* 8136B02C | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 8136B030 | 41 82 01 60 */	beq .L_8136B190
/* 8136B034 | 88 1A 00 30 */	lbz r0, 0x30(r26)
/* 8136B038 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136B03C | 41 82 00 10 */	beq .L_8136B04C
/* 8136B040 | 88 1A 00 31 */	lbz r0, 0x31(r26)
/* 8136B044 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136B048 | 40 82 01 48 */	bne .L_8136B190
.L_8136B04C:
/* 8136B04C | C0 02 82 98 */	lfs f0, lbl_81694698@sda21(r0)
/* 8136B050 | 38 61 00 18 */	addi r3, r1, 0x18
/* 8136B054 | D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8136B058 | D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8136B05C | D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8136B060 | D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8136B064 | 4B FC A8 B5 */	bl getProjectionRect__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 8136B068 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 8136B06C | 7F 83 E3 78 */	mr r3, r28
/* 8136B070 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 8136B074 | 7D 89 03 A6 */	mtctr r12
/* 8136B078 | 4E 80 04 21 */	bctrl
/* 8136B07C | 90 61 00 10 */	stw r3, 0x10(r1)
/* 8136B080 | C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8136B084 | C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8136B088 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 8136B08C | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8136B090 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8136B094 | 90 81 00 14 */	stw r4, 0x14(r1)
/* 8136B098 | 41 81 00 2C */	bgt .L_8136B0C4
/* 8136B09C | C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8136B0A0 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8136B0A4 | 41 81 00 20 */	bgt .L_8136B0C4
/* 8136B0A8 | C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8136B0AC | C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8136B0B0 | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8136B0B4 | 40 81 00 1C */	ble .L_8136B0D0
/* 8136B0B8 | C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8136B0BC | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8136B0C0 | 40 81 00 10 */	ble .L_8136B0D0
.L_8136B0C4:
/* 8136B0C4 | C0 02 82 9C */	lfs f0, lbl_8169469C@sda21(r0)
/* 8136B0C8 | D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8136B0CC | D0 01 00 10 */	stfs f0, 0x10(r1)
.L_8136B0D0:
/* 8136B0D0 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 8136B0D4 | 7F 83 E3 78 */	mr r3, r28
/* 8136B0D8 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8136B0DC | 7D 89 03 A6 */	mtctr r12
/* 8136B0E0 | 4E 80 04 21 */	bctrl
/* 8136B0E4 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 8136B0E8 | 7C 7D 1B 78 */	mr r29, r3
/* 8136B0EC | 7F 83 E3 78 */	mr r3, r28
/* 8136B0F0 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 8136B0F4 | 7D 89 03 A6 */	mtctr r12
/* 8136B0F8 | 4E 80 04 21 */	bctrl
/* 8136B0FC | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 8136B100 | 7C 7D EB 78 */	or r29, r3, r29
/* 8136B104 | 7F 83 E3 78 */	mr r3, r28
/* 8136B108 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8136B10C | 7D 89 03 A6 */	mtctr r12
/* 8136B110 | 4E 80 04 21 */	bctrl
/* 8136B114 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 8136B118 | 7C 7E 1B 78 */	mr r30, r3
/* 8136B11C | 7F 83 E3 78 */	mr r3, r28
/* 8136B120 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8136B124 | 7D 89 03 A6 */	mtctr r12
/* 8136B128 | 4E 80 04 21 */	bctrl
/* 8136B12C | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 8136B130 | 7C 7E F3 78 */	or r30, r3, r30
/* 8136B134 | 7F 83 E3 78 */	mr r3, r28
/* 8136B138 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8136B13C | 7D 89 03 A6 */	mtctr r12
/* 8136B140 | 4E 80 04 21 */	bctrl
/* 8136B144 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 8136B148 | 7C 7F 1B 78 */	mr r31, r3
/* 8136B14C | 7F 83 E3 78 */	mr r3, r28
/* 8136B150 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8136B154 | 7D 89 03 A6 */	mtctr r12
/* 8136B158 | 4E 80 04 21 */	bctrl
/* 8136B15C | C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8136B160 | 7C 65 FB 78 */	or r5, r3, r31
/* 8136B164 | C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8136B168 | 7F 43 D3 78 */	mr r3, r26
/* 8136B16C | FC 40 00 50 */	fneg f2, f0
/* 8136B170 | 7F 64 DB 78 */	mr r4, r27
/* 8136B174 | 7F C6 F3 78 */	mr r6, r30
/* 8136B178 | 7F A7 EB 78 */	mr r7, r29
/* 8136B17C | 7F 88 E3 78 */	mr r8, r28
/* 8136B180 | 4B FF DD 25 */	bl update__Q23gui7ManagerFiffUlUlUlPv
/* 8136B184 | 38 00 00 01 */	li r0, 0x1
/* 8136B188 | 98 1A 00 31 */	stb r0, 0x31(r26)
/* 8136B18C | 48 00 00 28 */	b .L_8136B1B4
.L_8136B190:
/* 8136B190 | C0 22 82 9C */	lfs f1, lbl_8169469C@sda21(r0)
/* 8136B194 | 7F 43 D3 78 */	mr r3, r26
/* 8136B198 | 7F 64 DB 78 */	mr r4, r27
/* 8136B19C | 38 A0 00 00 */	li r5, 0x0
/* 8136B1A0 | FC 40 08 90 */	fmr f2, f1
/* 8136B1A4 | 38 C0 00 00 */	li r6, 0x0
/* 8136B1A8 | 38 E0 00 00 */	li r7, 0x0
/* 8136B1AC | 39 00 00 00 */	li r8, 0x0
/* 8136B1B0 | 4B FF DC F5 */	bl update__Q23gui7ManagerFiffUlUlUlPv
.L_8136B1B4:
/* 8136B1B4 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8136B1B8 | 48 28 E3 51 */	bl _restgpr_26
/* 8136B1BC | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8136B1C0 | 7C 08 03 A6 */	mtlr r0
/* 8136B1C4 | 38 21 00 40 */	addi r1, r1, 0x40
/* 8136B1C8 | 4E 80 00 20 */	blr
.endfn update__Q33ipl3gui11PaneManagerFi

# .text:0x240 | 0x8136B1CC | size: 0x4C
# ipl::gui::PaneManager::setTriggerTarget(nw4r::lyt::Pane*, bool)
.fn setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb, global
/* 8136B1CC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136B1D0 | 7C 08 02 A6 */	mflr r0
/* 8136B1D4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136B1D8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136B1DC | 7C BF 2B 78 */	mr r31, r5
/* 8136B1E0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136B1E4 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8136B1E8 | 7D 89 03 A6 */	mtctr r12
/* 8136B1EC | 4E 80 04 21 */	bctrl
/* 8136B1F0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136B1F4 | 7F E4 FB 78 */	mr r4, r31
/* 8136B1F8 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8136B1FC | 7D 89 03 A6 */	mtctr r12
/* 8136B200 | 4E 80 04 21 */	bctrl
/* 8136B204 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136B208 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136B20C | 7C 08 03 A6 */	mtlr r0
/* 8136B210 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136B214 | 4E 80 00 20 */	blr
.endfn setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb

# .text:0x28C | 0x8136B218 | size: 0x44
# ipl::gui::PaneManager::initPane(nw4r::lyt::Pane*)
.fn initPane__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Pane, global
/* 8136B218 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136B21C | 7C 08 02 A6 */	mflr r0
/* 8136B220 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136B224 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136B228 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8136B22C | 7D 89 03 A6 */	mtctr r12
/* 8136B230 | 4E 80 04 21 */	bctrl
/* 8136B234 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136B238 | 41 82 00 14 */	beq .L_8136B24C
/* 8136B23C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136B240 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8136B244 | 7D 89 03 A6 */	mtctr r12
/* 8136B248 | 4E 80 04 21 */	bctrl
.L_8136B24C:
/* 8136B24C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136B250 | 7C 08 03 A6 */	mtlr r0
/* 8136B254 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136B258 | 4E 80 00 20 */	blr
.endfn initPane__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Pane

# 0x81694698..0x816946A0 | size: 0x8
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694698 | size: 0x4
.obj lbl_81694698, global
	.float 0
.endobj lbl_81694698

# .sdata2:0x4 | 0x8169469C | size: 0x4
.obj lbl_8169469C, global
	.float inf
.endobj lbl_8169469C
