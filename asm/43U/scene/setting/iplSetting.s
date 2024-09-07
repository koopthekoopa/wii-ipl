.include "macros.inc"
.file "iplSetting.cpp"

# 0x813F0774..0x813F9B70 | size: 0x93FC
.text
.balign 4

# .text:0x0 | 0x813F0774 | size: 0xF8
# ipl::scene::Setting::Setting(EGG::Heap*, int)
.fn __ct__Q33ipl5scene7SettingFPQ23EGG4Heapi, global
/* 813F0774 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813F0778 | 7C 08 02 A6 */	mflr r0
/* 813F077C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813F0780 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F0784 | 48 20 8D 45 */	bl _savegpr_29
/* 813F0788 | 7C 7D 1B 78 */	mr r29, r3
/* 813F078C | 7C BE 2B 78 */	mr r30, r5
/* 813F0790 | 48 01 AA 79 */	bl fn_8140B208
/* 813F0794 | 3C C0 81 65 */	lis r6, __vt__Q33ipl5scene7Setting@ha
/* 813F0798 | 3B E0 00 00 */	li r31, 0x0
/* 813F079C | 38 C6 77 9C */	addi r6, r6, __vt__Q33ipl5scene7Setting@l
/* 813F07A0 | 38 60 00 01 */	li r3, 0x1
/* 813F07A4 | 38 A6 00 1C */	addi r5, r6, 0x1c
/* 813F07A8 | 38 80 00 03 */	li r4, 0x3
/* 813F07AC | 38 00 FF FF */	li r0, -0x1
/* 813F07B0 | 90 DD 00 00 */	stw r6, 0x0(r29)
/* 813F07B4 | 90 BD 00 14 */	stw r5, 0x14(r29)
/* 813F07B8 | 9B FD 00 5C */	stb r31, 0x5c(r29)
/* 813F07BC | 93 FD 00 60 */	stw r31, 0x60(r29)
/* 813F07C0 | 93 FD 00 64 */	stw r31, 0x64(r29)
/* 813F07C4 | 93 FD 00 68 */	stw r31, 0x68(r29)
/* 813F07C8 | 93 FD 00 6C */	stw r31, 0x6c(r29)
/* 813F07CC | 93 FD 00 BC */	stw r31, 0xbc(r29)
/* 813F07D0 | 9B FD 0B 3B */	stb r31, 0xb3b(r29)
/* 813F07D4 | 90 9D 00 28 */	stw r4, 0x28(r29)
/* 813F07D8 | 93 FD 00 74 */	stw r31, 0x74(r29)
/* 813F07DC | 93 DD 0B 4C */	stw r30, 0xb4c(r29)
/* 813F07E0 | 90 7D 00 78 */	stw r3, 0x78(r29)
/* 813F07E4 | 90 7D 00 84 */	stw r3, 0x84(r29)
/* 813F07E8 | 93 FD 00 80 */	stw r31, 0x80(r29)
/* 813F07EC | 93 FD 00 58 */	stw r31, 0x58(r29)
/* 813F07F0 | 93 FD 09 14 */	stw r31, 0x914(r29)
/* 813F07F4 | 90 1D 09 18 */	stw r0, 0x918(r29)
/* 813F07F8 | 9B FD 09 1C */	stb r31, 0x91c(r29)
/* 813F07FC | 9B FD 09 1D */	stb r31, 0x91d(r29)
/* 813F0800 | 9B FD 09 1E */	stb r31, 0x91e(r29)
/* 813F0804 | 9B FD 09 1F */	stb r31, 0x91f(r29)
/* 813F0808 | 93 FD 00 7C */	stw r31, 0x7c(r29)
/* 813F080C | 93 FD 0B 9C */	stw r31, 0xb9c(r29)
/* 813F0810 | 9B FD 09 2C */	stb r31, 0x92c(r29)
/* 813F0814 | 93 FD 09 30 */	stw r31, 0x930(r29)
/* 813F0818 | 98 7D 0B 5C */	stb r3, 0xb5c(r29)
/* 813F081C | 93 FD 00 90 */	stw r31, 0x90(r29)
/* 813F0820 | 48 17 97 95 */	bl SCGetAspectRatio
/* 813F0824 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813F0828 | 90 1D 0B 50 */	stw r0, 0xb50(r29)
/* 813F082C | 48 17 99 65 */	bl fn_8156A190
/* 813F0830 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813F0834 | 90 1D 0B 54 */	stw r0, 0xb54(r29)
/* 813F0838 | 48 17 98 59 */	bl fn_8156A090
/* 813F083C | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813F0840 | 93 FD 0B 94 */	stw r31, 0xb94(r29)
/* 813F0844 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F0848 | 7F A3 EB 78 */	mr r3, r29
/* 813F084C | 90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 813F0850 | 9B FD 0B AC */	stb r31, 0xbac(r29)
/* 813F0854 | 93 FD 00 94 */	stw r31, 0x94(r29)
/* 813F0858 | 48 20 8C BD */	bl _restgpr_29
/* 813F085C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813F0860 | 7C 08 03 A6 */	mtlr r0
/* 813F0864 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813F0868 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene7SettingFPQ23EGG4Heapi

# .text:0xF8 | 0x813F086C | size: 0x3C
# ipl::scene::Setting::isAnimating()
.fn isAnimating__Q33ipl5scene7SettingFv, global
/* 813F086C | 80 83 00 D0 */	lwz r4, 0xd0(r3)
/* 813F0870 | 38 A0 00 00 */	li r5, 0x0
/* 813F0874 | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 813F0878 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813F087C | 41 82 00 20 */	beq .L_813F089C
/* 813F0880 | 80 83 00 CC */	lwz r4, 0xcc(r3)
/* 813F0884 | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 813F0888 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813F088C | 41 82 00 10 */	beq .L_813F089C
/* 813F0890 | 80 03 0B 98 */	lwz r0, 0xb98(r3)
/* 813F0894 | 2C 00 00 14 */	cmpwi r0, 0x14
/* 813F0898 | 41 82 00 08 */	beq .L_813F08A0
.L_813F089C:
/* 813F089C | 38 A0 00 01 */	li r5, 0x1
.L_813F08A0:
/* 813F08A0 | 7C A3 2B 78 */	mr r3, r5
/* 813F08A4 | 4E 80 00 20 */	blr
.endfn isAnimating__Q33ipl5scene7SettingFv

# .text:0x134 | 0x813F08A8 | size: 0x68
# ipl::scene::Setting::getFuncMsgQ()
.fn getFuncMsgQ__Q33ipl5scene7SettingFv, global
/* 813F08A8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813F08AC | 7C 08 02 A6 */	mflr r0
/* 813F08B0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813F08B4 | 38 00 00 00 */	li r0, 0x0
/* 813F08B8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813F08BC | 7C 7F 1B 78 */	mr r31, r3
/* 813F08C0 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 813F08C4 | 80 03 00 90 */	lwz r0, 0x90(r3)
/* 813F08C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F08CC | 40 82 00 30 */	bne .L_813F08FC
/* 813F08D0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813F08D4 | 38 A0 00 00 */	li r5, 0x0
/* 813F08D8 | 38 63 0B 60 */	addi r3, r3, 0xb60
/* 813F08DC | 48 14 08 6D */	bl OSReceiveMessage
/* 813F08E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F08E4 | 41 82 00 18 */	beq .L_813F08FC
/* 813F08E8 | 38 00 00 01 */	li r0, 0x1
/* 813F08EC | 80 7F 09 28 */	lwz r3, 0x928(r31)
/* 813F08F0 | 90 1F 00 90 */	stw r0, 0x90(r31)
/* 813F08F4 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 813F08F8 | 98 03 00 04 */	stb r0, 0x4(r3)
.L_813F08FC:
/* 813F08FC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813F0900 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813F0904 | 7C 08 03 A6 */	mtlr r0
/* 813F0908 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813F090C | 4E 80 00 20 */	blr
.endfn getFuncMsgQ__Q33ipl5scene7SettingFv

# .text:0x19C | 0x813F0910 | size: 0x14
# ipl::scene::Setting::resetFuncMsgQ()
.fn resetFuncMsgQ__Q33ipl5scene7SettingFv, global
/* 813F0910 | 80 83 09 28 */	lwz r4, 0x928(r3)
/* 813F0914 | 38 00 00 00 */	li r0, 0x0
/* 813F0918 | 98 04 00 04 */	stb r0, 0x4(r4)
/* 813F091C | 90 03 00 90 */	stw r0, 0x90(r3)
/* 813F0920 | 4E 80 00 20 */	blr
.endfn resetFuncMsgQ__Q33ipl5scene7SettingFv

# .text:0x1B0 | 0x813F0924 | size: 0x1BC
# ipl::scene::Setting::~Setting()
.fn __dt__Q33ipl5scene7SettingFv, global
/* 813F0924 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813F0928 | 7C 08 02 A6 */	mflr r0
/* 813F092C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813F0930 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F0934 | 48 20 8B 95 */	bl _savegpr_29
/* 813F0938 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F093C | 7C 7D 1B 78 */	mr r29, r3
/* 813F0940 | 7C 9E 23 78 */	mr r30, r4
/* 813F0944 | 41 82 01 80 */	beq .L_813F0AC4
/* 813F0948 | 3C A0 81 65 */	lis r5, __vt__Q33ipl5scene7Setting@ha
/* 813F094C | 3C 80 81 65 */	lis r4, lbl_81656BB8@ha
/* 813F0950 | 38 A5 77 9C */	addi r5, r5, __vt__Q33ipl5scene7Setting@l
/* 813F0954 | 38 05 00 1C */	addi r0, r5, 0x1c
/* 813F0958 | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 813F095C | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813F0960 | 38 64 6B B8 */	addi r3, r4, lbl_81656BB8@l
/* 813F0964 | 4C C6 31 82 */	crclr cr1eq
/* 813F0968 | 48 13 DD 39 */	bl OSReport
/* 813F096C | 83 ED AB A0 */	lwz r31, lbl_81698BE0@sda21(r0)
/* 813F0970 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813F0974 | 41 82 00 24 */	beq .L_813F0998
/* 813F0978 | 4B F4 24 BD */	bl createMem1AppHeap__Q23ipl6SystemFv
/* 813F097C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F0980 | 7F E4 FB 78 */	mr r4, r31
/* 813F0984 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813F0988 | 7D 89 03 A6 */	mtctr r12
/* 813F098C | 4E 80 04 21 */	bctrl
/* 813F0990 | 38 00 00 00 */	li r0, 0x0
/* 813F0994 | 90 0D AB A0 */	stw r0, lbl_81698BE0@sda21(r0)
.L_813F0998:
/* 813F0998 | 80 8D AB A4 */	lwz r4, lbl_81698BE4@sda21(r0)
/* 813F099C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813F09A0 | 41 82 00 28 */	beq .L_813F09C8
/* 813F09A4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F09A8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F09AC | 80 63 00 28 */	lwz r3, 0x28(r3)
/* 813F09B0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F09B4 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813F09B8 | 7D 89 03 A6 */	mtctr r12
/* 813F09BC | 4E 80 04 21 */	bctrl
/* 813F09C0 | 38 00 00 00 */	li r0, 0x0
/* 813F09C4 | 90 0D AB A4 */	stw r0, lbl_81698BE4@sda21(r0)
.L_813F09C8:
/* 813F09C8 | 80 7D 00 60 */	lwz r3, 0x60(r29)
/* 813F09CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F09D0 | 41 82 00 1C */	beq .L_813F09EC
/* 813F09D4 | 41 82 00 18 */	beq .L_813F09EC
/* 813F09D8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F09DC | 38 80 00 01 */	li r4, 0x1
/* 813F09E0 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813F09E4 | 7D 89 03 A6 */	mtctr r12
/* 813F09E8 | 4E 80 04 21 */	bctrl
.L_813F09EC:
/* 813F09EC | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 813F09F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F09F4 | 41 82 00 1C */	beq .L_813F0A10
/* 813F09F8 | 41 82 00 18 */	beq .L_813F0A10
/* 813F09FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F0A00 | 38 80 00 01 */	li r4, 0x1
/* 813F0A04 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813F0A08 | 7D 89 03 A6 */	mtctr r12
/* 813F0A0C | 4E 80 04 21 */	bctrl
.L_813F0A10:
/* 813F0A10 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 813F0A14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F0A18 | 41 82 00 1C */	beq .L_813F0A34
/* 813F0A1C | 41 82 00 18 */	beq .L_813F0A34
/* 813F0A20 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F0A24 | 38 80 00 01 */	li r4, 0x1
/* 813F0A28 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813F0A2C | 7D 89 03 A6 */	mtctr r12
/* 813F0A30 | 4E 80 04 21 */	bctrl
.L_813F0A34:
/* 813F0A34 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 813F0A38 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F0A3C | 41 82 00 1C */	beq .L_813F0A58
/* 813F0A40 | 41 82 00 18 */	beq .L_813F0A58
/* 813F0A44 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F0A48 | 38 80 00 01 */	li r4, 0x1
/* 813F0A4C | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813F0A50 | 7D 89 03 A6 */	mtctr r12
/* 813F0A54 | 4E 80 04 21 */	bctrl
.L_813F0A58:
/* 813F0A58 | 80 7D 00 70 */	lwz r3, 0x70(r29)
/* 813F0A5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F0A60 | 41 82 00 1C */	beq .L_813F0A7C
/* 813F0A64 | 41 82 00 18 */	beq .L_813F0A7C
/* 813F0A68 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F0A6C | 38 80 00 01 */	li r4, 0x1
/* 813F0A70 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813F0A74 | 7D 89 03 A6 */	mtctr r12
/* 813F0A78 | 4E 80 04 21 */	bctrl
.L_813F0A7C:
/* 813F0A7C | 4B F4 24 1D */	bl destroyMem1AppHeap__Q23ipl6SystemFv
/* 813F0A80 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F0A84 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F0A88 | 80 63 00 A8 */	lwz r3, 0xa8(r3)
/* 813F0A8C | 4B F7 00 61 */	bl restart__Q33ipl3bs27ManagerFv
/* 813F0A90 | 3C 60 81 65 */	lis r3, lbl_81656BC7@ha
/* 813F0A94 | 38 63 6B C7 */	addi r3, r3, lbl_81656BC7@l
/* 813F0A98 | 4C C6 31 82 */	crclr cr1eq
/* 813F0A9C | 48 13 DC 05 */	bl OSReport
/* 813F0AA0 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813F0AA4 | 41 82 00 10 */	beq .L_813F0AB4
/* 813F0AA8 | 7F A3 EB 78 */	mr r3, r29
/* 813F0AAC | 38 80 00 00 */	li r4, 0x0
/* 813F0AB0 | 48 01 91 B5 */	bl fn_81409C64
.L_813F0AB4:
/* 813F0AB4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813F0AB8 | 40 81 00 0C */	ble .L_813F0AC4
/* 813F0ABC | 7F A3 EB 78 */	mr r3, r29
/* 813F0AC0 | 48 20 76 25 */	bl __dl__FPv
.L_813F0AC4:
/* 813F0AC4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F0AC8 | 7F A3 EB 78 */	mr r3, r29
/* 813F0ACC | 48 20 8A 49 */	bl _restgpr_29
/* 813F0AD0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813F0AD4 | 7C 08 03 A6 */	mtlr r0
/* 813F0AD8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813F0ADC | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene7SettingFv

# .text:0x36C | 0x813F0AE0 | size: 0x6C
# ipl::scene::Setting::destroy()
.fn destroy__Q33ipl5scene7SettingFv, global
/* 813F0AE0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F0AE4 | 7C 08 02 A6 */	mflr r0
/* 813F0AE8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F0AEC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F0AF0 | 7C 7F 1B 78 */	mr r31, r3
/* 813F0AF4 | 80 03 00 E0 */	lwz r0, 0xe0(r3)
/* 813F0AF8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F0AFC | 41 82 00 1C */	beq .L_813F0B18
/* 813F0B00 | 7C 03 03 78 */	mr r3, r0
/* 813F0B04 | 38 80 00 01 */	li r4, 0x1
/* 813F0B08 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F0B0C | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813F0B10 | 7D 89 03 A6 */	mtctr r12
/* 813F0B14 | 4E 80 04 21 */	bctrl
.L_813F0B18:
/* 813F0B18 | 80 7F 00 E4 */	lwz r3, 0xe4(r31)
/* 813F0B1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F0B20 | 41 82 00 18 */	beq .L_813F0B38
/* 813F0B24 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F0B28 | 38 80 00 01 */	li r4, 0x1
/* 813F0B2C | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813F0B30 | 7D 89 03 A6 */	mtctr r12
/* 813F0B34 | 4E 80 04 21 */	bctrl
.L_813F0B38:
/* 813F0B38 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F0B3C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F0B40 | 7C 08 03 A6 */	mtlr r0
/* 813F0B44 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F0B48 | 4E 80 00 20 */	blr
.endfn destroy__Q33ipl5scene7SettingFv

# .text:0x3D8 | 0x813F0B4C | size: 0x2CC
# ipl::scene::Setting::prepare()
.fn prepare__Q33ipl5scene7SettingFv, global
/* 813F0B4C | 94 21 FF 80 */	stwu r1, -0x80(r1)
/* 813F0B50 | 7C 08 02 A6 */	mflr r0
/* 813F0B54 | 90 01 00 84 */	stw r0, 0x84(r1)
/* 813F0B58 | 39 61 00 80 */	addi r11, r1, 0x80
/* 813F0B5C | 48 20 89 69 */	bl _savegpr_28
/* 813F0B60 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813F0B64 | 3F A0 81 65 */	lis r29, lbl_816568E8@ha
/* 813F0B68 | 3B C4 90 08 */	addi r30, r4, smArg__Q23ipl6System@l
/* 813F0B6C | 7C 7C 1B 78 */	mr r28, r3
/* 813F0B70 | 80 7E 00 A8 */	lwz r3, 0xa8(r30)
/* 813F0B74 | 3B BD 68 E8 */	addi r29, r29, lbl_816568E8@l
/* 813F0B78 | 4B F6 FF 61 */	bl abort__Q33ipl3bs27ManagerFv
/* 813F0B7C | 48 00 00 0C */	b .L_813F0B88
.L_813F0B80:
/* 813F0B80 | 4B F6 FD 19 */	bl update__Q33ipl3bs27ManagerFv
/* 813F0B84 | 48 14 C4 65 */	bl VIWaitForRetrace
.L_813F0B88:
/* 813F0B88 | 80 7E 00 A8 */	lwz r3, 0xa8(r30)
/* 813F0B8C | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813F0B90 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 813F0B94 | 40 82 FF EC */	bne .L_813F0B80
/* 813F0B98 | 4B F4 31 8D */	bl getUsbEtherMacAddr__Q23ipl6SystemFv
/* 813F0B9C | 48 14 50 FD */	bl fn_81535C98
/* 813F0BA0 | 90 7C 00 A0 */	stw r3, 0xa0(r28)
/* 813F0BA4 | 83 DE 00 6C */	lwz r30, 0x6c(r30)
/* 813F0BA8 | 4B F4 22 8D */	bl createMem1AppHeap__Q23ipl6SystemFv
/* 813F0BAC | 38 00 00 00 */	li r0, 0x0
/* 813F0BB0 | 7C 64 1B 78 */	mr r4, r3
/* 813F0BB4 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 813F0BB8 | 7F C3 F3 78 */	mr r3, r30
/* 813F0BBC | 38 BD 02 FB */	addi r5, r29, 0x2fb
/* 813F0BC0 | 38 C0 00 02 */	li r6, 0x2
/* 813F0BC4 | 38 E0 00 00 */	li r7, 0x0
/* 813F0BC8 | 39 00 00 00 */	li r8, 0x0
/* 813F0BCC | 39 40 00 02 */	li r10, 0x2
/* 813F0BD0 | 39 20 00 01 */	li r9, 0x1
/* 813F0BD4 | 4B F4 CA C1 */	bl readSharedAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciiUlUxi
/* 813F0BD8 | 90 7C 00 60 */	stw r3, 0x60(r28)
/* 813F0BDC | 48 17 9E F1 */	bl SCGetProductArea
/* 813F0BE0 | 7C 60 07 74 */	extsb r0, r3
/* 813F0BE4 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813F0BE8 | 41 82 00 5C */	beq .L_813F0C44
/* 813F0BEC | 40 80 00 1C */	bge .L_813F0C08
/* 813F0BF0 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813F0BF4 | 41 82 00 E0 */	beq .L_813F0CD4
/* 813F0BF8 | 40 80 00 AC */	bge .L_813F0CA4
/* 813F0BFC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F0C00 | 40 80 00 14 */	bge .L_813F0C14
/* 813F0C04 | 48 00 00 D0 */	b .L_813F0CD4
.L_813F0C08:
/* 813F0C08 | 2C 00 00 0B */	cmpwi r0, 0xb
/* 813F0C0C | 41 82 00 68 */	beq .L_813F0C74
/* 813F0C10 | 48 00 00 C4 */	b .L_813F0CD4
.L_813F0C14:
/* 813F0C14 | 38 61 00 10 */	addi r3, r1, 0x10
/* 813F0C18 | 38 BD 03 0A */	addi r5, r29, 0x30a
/* 813F0C1C | 38 80 00 20 */	li r4, 0x20
/* 813F0C20 | 4C C6 31 82 */	crclr cr1eq
/* 813F0C24 | 48 20 FD 85 */	bl snprintf
/* 813F0C28 | 38 61 00 30 */	addi r3, r1, 0x30
/* 813F0C2C | 38 BD 03 1E */	addi r5, r29, 0x31e
/* 813F0C30 | 38 80 00 40 */	li r4, 0x40
/* 813F0C34 | 38 CD 90 A9 */	li r6, lbl_816970E9@sda21
/* 813F0C38 | 4C C6 31 82 */	crclr cr1eq
/* 813F0C3C | 48 20 FD 6D */	bl snprintf
/* 813F0C40 | 48 00 00 C0 */	b .L_813F0D00
.L_813F0C44:
/* 813F0C44 | 38 61 00 10 */	addi r3, r1, 0x10
/* 813F0C48 | 38 BD 03 36 */	addi r5, r29, 0x336
/* 813F0C4C | 38 80 00 20 */	li r4, 0x20
/* 813F0C50 | 4C C6 31 82 */	crclr cr1eq
/* 813F0C54 | 48 20 FD 55 */	bl snprintf
/* 813F0C58 | 38 61 00 30 */	addi r3, r1, 0x30
/* 813F0C5C | 38 BD 03 1E */	addi r5, r29, 0x31e
/* 813F0C60 | 38 80 00 40 */	li r4, 0x40
/* 813F0C64 | 38 CD 90 A9 */	li r6, lbl_816970E9@sda21
/* 813F0C68 | 4C C6 31 82 */	crclr cr1eq
/* 813F0C6C | 48 20 FD 3D */	bl snprintf
/* 813F0C70 | 48 00 00 90 */	b .L_813F0D00
.L_813F0C74:
/* 813F0C74 | 38 61 00 10 */	addi r3, r1, 0x10
/* 813F0C78 | 38 BD 03 50 */	addi r5, r29, 0x350
/* 813F0C7C | 38 80 00 20 */	li r4, 0x20
/* 813F0C80 | 4C C6 31 82 */	crclr cr1eq
/* 813F0C84 | 48 20 FD 25 */	bl snprintf
/* 813F0C88 | 38 61 00 30 */	addi r3, r1, 0x30
/* 813F0C8C | 38 BD 03 1E */	addi r5, r29, 0x31e
/* 813F0C90 | 38 80 00 40 */	li r4, 0x40
/* 813F0C94 | 38 CD 90 A9 */	li r6, lbl_816970E9@sda21
/* 813F0C98 | 4C C6 31 82 */	crclr cr1eq
/* 813F0C9C | 48 20 FD 0D */	bl snprintf
/* 813F0CA0 | 48 00 00 60 */	b .L_813F0D00
.L_813F0CA4:
/* 813F0CA4 | 38 61 00 10 */	addi r3, r1, 0x10
/* 813F0CA8 | 38 BD 03 0A */	addi r5, r29, 0x30a
/* 813F0CAC | 38 80 00 20 */	li r4, 0x20
/* 813F0CB0 | 4C C6 31 82 */	crclr cr1eq
/* 813F0CB4 | 48 20 FC F5 */	bl snprintf
/* 813F0CB8 | 38 61 00 30 */	addi r3, r1, 0x30
/* 813F0CBC | 38 BD 03 1E */	addi r5, r29, 0x31e
/* 813F0CC0 | 38 80 00 40 */	li r4, 0x40
/* 813F0CC4 | 38 CD 90 AD */	li r6, lbl_816970ED@sda21
/* 813F0CC8 | 4C C6 31 82 */	crclr cr1eq
/* 813F0CCC | 48 20 FC DD */	bl snprintf
/* 813F0CD0 | 48 00 00 30 */	b .L_813F0D00
.L_813F0CD4:
/* 813F0CD4 | 38 61 00 10 */	addi r3, r1, 0x10
/* 813F0CD8 | 38 BD 03 0A */	addi r5, r29, 0x30a
/* 813F0CDC | 38 80 00 20 */	li r4, 0x20
/* 813F0CE0 | 4C C6 31 82 */	crclr cr1eq
/* 813F0CE4 | 48 20 FC C5 */	bl snprintf
/* 813F0CE8 | 38 61 00 30 */	addi r3, r1, 0x30
/* 813F0CEC | 38 BD 03 1E */	addi r5, r29, 0x31e
/* 813F0CF0 | 38 80 00 40 */	li r4, 0x40
/* 813F0CF4 | 38 CD 90 A9 */	li r6, lbl_816970E9@sda21
/* 813F0CF8 | 4C C6 31 82 */	crclr cr1eq
/* 813F0CFC | 48 20 FC AD */	bl snprintf
.L_813F0D00:
/* 813F0D00 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813F0D04 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813F0D08 | 83 FE 00 6C */	lwz r31, 0x6c(r30)
/* 813F0D0C | 4B F4 21 29 */	bl createMem1AppHeap__Q23ipl6SystemFv
/* 813F0D10 | 7C 64 1B 78 */	mr r4, r3
/* 813F0D14 | 7F E3 FB 78 */	mr r3, r31
/* 813F0D18 | 38 A1 00 30 */	addi r5, r1, 0x30
/* 813F0D1C | 38 C0 00 00 */	li r6, 0x0
/* 813F0D20 | 38 E0 00 00 */	li r7, 0x0
/* 813F0D24 | 39 00 00 00 */	li r8, 0x0
/* 813F0D28 | 4B F4 C7 C1 */	bl readAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciUlb
/* 813F0D2C | 90 7C 00 64 */	stw r3, 0x64(r28)
/* 813F0D30 | 38 BD 03 63 */	addi r5, r29, 0x363
/* 813F0D34 | 38 C0 00 00 */	li r6, 0x0
/* 813F0D38 | 38 E0 00 00 */	li r7, 0x0
/* 813F0D3C | 80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 813F0D40 | 39 00 00 00 */	li r8, 0x0
/* 813F0D44 | 80 9E 00 28 */	lwz r4, 0x28(r30)
/* 813F0D48 | 4B F4 C7 A1 */	bl readAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciUlb
/* 813F0D4C | 90 7C 00 68 */	stw r3, 0x68(r28)
/* 813F0D50 | 3B E0 00 00 */	li r31, 0x0
/* 813F0D54 | 38 A1 00 10 */	addi r5, r1, 0x10
/* 813F0D58 | 38 C0 00 03 */	li r6, 0x3
/* 813F0D5C | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 813F0D60 | 38 E0 00 00 */	li r7, 0x0
/* 813F0D64 | 39 00 00 00 */	li r8, 0x0
/* 813F0D68 | 39 40 00 02 */	li r10, 0x2
/* 813F0D6C | 80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 813F0D70 | 39 20 00 01 */	li r9, 0x1
/* 813F0D74 | 80 9E 00 28 */	lwz r4, 0x28(r30)
/* 813F0D78 | 4B F4 C9 1D */	bl readSharedAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciiUlUxi
/* 813F0D7C | 90 7C 00 6C */	stw r3, 0x6c(r28)
/* 813F0D80 | 38 BD 03 6C */	addi r5, r29, 0x36c
/* 813F0D84 | 38 C0 00 00 */	li r6, 0x0
/* 813F0D88 | 38 E0 00 00 */	li r7, 0x0
/* 813F0D8C | 80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 813F0D90 | 39 00 00 00 */	li r8, 0x0
/* 813F0D94 | 80 9E 00 28 */	lwz r4, 0x28(r30)
/* 813F0D98 | 4B F4 C7 51 */	bl readAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciUlb
/* 813F0D9C | 90 7C 00 70 */	stw r3, 0x70(r28)
/* 813F0DA0 | 38 BD 03 7E */	addi r5, r29, 0x37e
/* 813F0DA4 | 80 9C 00 24 */	lwz r4, 0x24(r28)
/* 813F0DA8 | 38 C0 00 00 */	li r6, 0x0
/* 813F0DAC | 80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 813F0DB0 | 4B F4 CB 05 */	bl readLayoutAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcb
/* 813F0DB4 | 80 1C 0B 4C */	lwz r0, 0xb4c(r28)
/* 813F0DB8 | 90 7C 00 BC */	stw r3, 0xbc(r28)
/* 813F0DBC | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813F0DC0 | 40 82 00 24 */	bne .L_813F0DE4
/* 813F0DC4 | 38 7C 00 A4 */	addi r3, r28, 0xa4
/* 813F0DC8 | 38 80 00 00 */	li r4, 0x0
/* 813F0DCC | 38 A0 00 16 */	li r5, 0x16
/* 813F0DD0 | 4B F3 F5 65 */	bl memset
/* 813F0DD4 | 93 FC 0B 50 */	stw r31, 0xb50(r28)
/* 813F0DD8 | 38 60 00 01 */	li r3, 0x1
/* 813F0DDC | 4B F8 03 91 */	bl setInitSetupFlag__Q23www10wiisettingFUc
/* 813F0DE0 | 48 00 00 20 */	b .L_813F0E00
.L_813F0DE4:
/* 813F0DE4 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813F0DE8 | 40 82 00 10 */	bne .L_813F0DF8
/* 813F0DEC | 38 60 00 01 */	li r3, 0x1
/* 813F0DF0 | 4B F8 03 7D */	bl setInitSetupFlag__Q23www10wiisettingFUc
/* 813F0DF4 | 48 00 00 0C */	b .L_813F0E00
.L_813F0DF8:
/* 813F0DF8 | 38 60 00 00 */	li r3, 0x0
/* 813F0DFC | 4B F8 03 71 */	bl setInitSetupFlag__Q23www10wiisettingFUc
.L_813F0E00:
/* 813F0E00 | 39 61 00 80 */	addi r11, r1, 0x80
/* 813F0E04 | 48 20 87 0D */	bl _restgpr_28
/* 813F0E08 | 80 01 00 84 */	lwz r0, 0x84(r1)
/* 813F0E0C | 7C 08 03 A6 */	mtlr r0
/* 813F0E10 | 38 21 00 80 */	addi r1, r1, 0x80
/* 813F0E14 | 4E 80 00 20 */	blr
.endfn prepare__Q33ipl5scene7SettingFv

# .text:0x6A4 | 0x813F0E18 | size: 0x52C
# ipl::scene::Setting::create()
.fn create__Q33ipl5scene7SettingFv, global
/* 813F0E18 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813F0E1C | 7C 08 02 A6 */	mflr r0
/* 813F0E20 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813F0E24 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813F0E28 | 48 20 86 91 */	bl _savegpr_25
/* 813F0E2C | 80 E3 00 68 */	lwz r7, 0x68(r3)
/* 813F0E30 | 3F 40 81 09 */	lis r26, smArg__Q23ipl6System@ha
/* 813F0E34 | 3F E0 81 65 */	lis r31, lbl_816568E8@ha
/* 813F0E38 | 7C 7E 1B 78 */	mr r30, r3
/* 813F0E3C | 3B FF 68 E8 */	addi r31, r31, lbl_816568E8@l
/* 813F0E40 | 80 C7 00 A0 */	lwz r6, 0xa0(r7)
/* 813F0E44 | 3B 5A 90 08 */	addi r26, r26, smArg__Q23ipl6System@l
/* 813F0E48 | 80 83 00 24 */	lwz r4, 0x24(r3)
/* 813F0E4C | 80 7A 00 6C */	lwz r3, 0x6c(r26)
/* 813F0E50 | 38 BF 03 8A */	addi r5, r31, 0x38a
/* 813F0E54 | 80 E7 00 98 */	lwz r7, 0x98(r7)
/* 813F0E58 | 39 00 00 30 */	li r8, 0x30
/* 813F0E5C | 4B F4 CC 31 */	bl write__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcPvUlUc
/* 813F0E60 | 88 03 01 89 */	lbz r0, 0x189(r3)
/* 813F0E64 | 7C 7B 1B 78 */	mr r27, r3
/* 813F0E68 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F0E6C | 41 82 00 38 */	beq .L_813F0EA4
/* 813F0E70 | 80 7A 00 98 */	lwz r3, 0x98(r26)
/* 813F0E74 | 38 DF 03 97 */	addi r6, r31, 0x397
/* 813F0E78 | 38 8D 90 B1 */	li r4, lbl_816970F1@sda21
/* 813F0E7C | 38 A0 00 00 */	li r5, 0x0
/* 813F0E80 | 38 E0 01 78 */	li r7, 0x178
/* 813F0E84 | 4B F6 58 75 */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 813F0E88 | 80 7A 00 98 */	lwz r3, 0x98(r26)
/* 813F0E8C | 38 80 00 01 */	li r4, 0x1
/* 813F0E90 | 38 A0 00 02 */	li r5, 0x2
/* 813F0E94 | 38 C0 00 00 */	li r6, 0x0
/* 813F0E98 | 38 E0 00 00 */	li r7, 0x0
/* 813F0E9C | 39 00 FF FF */	li r8, -0x1
/* 813F0EA0 | 4B F6 56 75 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_813F0EA4:
/* 813F0EA4 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 813F0EA8 | 41 82 00 1C */	beq .L_813F0EC4
/* 813F0EAC | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 813F0EB0 | 7F 63 DB 78 */	mr r3, r27
/* 813F0EB4 | 38 80 00 01 */	li r4, 0x1
/* 813F0EB8 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813F0EBC | 7D 89 03 A6 */	mtctr r12
/* 813F0EC0 | 4E 80 04 21 */	bctrl
.L_813F0EC4:
/* 813F0EC4 | 38 60 05 80 */	li r3, 0x580
/* 813F0EC8 | 48 20 71 D5 */	bl __nw__FUl
/* 813F0ECC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F0ED0 | 41 82 00 18 */	beq .L_813F0EE8
/* 813F0ED4 | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813F0ED8 | 38 FF 03 A6 */	addi r7, r31, 0x3a6
/* 813F0EDC | 80 BE 00 BC */	lwz r5, 0xbc(r30)
/* 813F0EE0 | 38 CD 90 B6 */	li r6, lbl_816970F6@sda21
/* 813F0EE4 | 4B F7 91 41 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813F0EE8:
/* 813F0EE8 | 90 7E 00 C0 */	stw r3, 0xc0(r30)
/* 813F0EEC | 38 9F 03 BA */	addi r4, r31, 0x3ba
/* 813F0EF0 | 38 A0 00 01 */	li r5, 0x1
/* 813F0EF4 | 4B F7 94 79 */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813F0EF8 | 90 7E 00 CC */	stw r3, 0xcc(r30)
/* 813F0EFC | 38 9F 03 D4 */	addi r4, r31, 0x3d4
/* 813F0F00 | 80 7E 00 C0 */	lwz r3, 0xc0(r30)
/* 813F0F04 | 38 A0 00 01 */	li r5, 0x1
/* 813F0F08 | 4B F7 94 65 */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813F0F0C | 90 7E 00 D0 */	stw r3, 0xd0(r30)
/* 813F0F10 | 80 7E 00 C0 */	lwz r3, 0xc0(r30)
/* 813F0F14 | 4B F7 97 21 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813F0F18 | 38 60 05 80 */	li r3, 0x580
/* 813F0F1C | 48 20 71 81 */	bl __nw__FUl
/* 813F0F20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F0F24 | 41 82 00 18 */	beq .L_813F0F3C
/* 813F0F28 | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813F0F2C | 38 FF 03 ED */	addi r7, r31, 0x3ed
/* 813F0F30 | 80 BE 00 BC */	lwz r5, 0xbc(r30)
/* 813F0F34 | 38 CD 90 B6 */	li r6, lbl_816970F6@sda21
/* 813F0F38 | 4B F7 90 ED */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813F0F3C:
/* 813F0F3C | 3F 40 81 61 */	lis r26, lbl_81610948@ha
/* 813F0F40 | 90 7E 00 C4 */	stw r3, 0xc4(r30)
/* 813F0F44 | 3B 5A 09 48 */	addi r26, r26, lbl_81610948@l
/* 813F0F48 | 3B 7F 02 84 */	addi r27, r31, 0x284
/* 813F0F4C | 3B 9F 00 90 */	addi r28, r31, 0x90
/* 813F0F50 | 3B 20 00 00 */	li r25, 0x0
/* 813F0F54 | 3B A0 00 00 */	li r29, 0x0
.L_813F0F58:
/* 813F0F58 | 2C 19 00 14 */	cmpwi r25, 0x14
/* 813F0F5C | 38 E0 00 00 */	li r7, 0x0
/* 813F0F60 | 41 82 00 0C */	beq .L_813F0F6C
/* 813F0F64 | 2C 19 00 0A */	cmpwi r25, 0xa
/* 813F0F68 | 40 82 00 08 */	bne .L_813F0F70
.L_813F0F6C:
/* 813F0F6C | 38 E0 00 01 */	li r7, 0x1
.L_813F0F70:
/* 813F0F70 | 7C BA EA 14 */	add r5, r26, r29
/* 813F0F74 | 7C 9A EA 2E */	lhzx r4, r26, r29
/* 813F0F78 | A0 05 00 02 */	lhz r0, 0x2(r5)
/* 813F0F7C | 38 C0 00 00 */	li r6, 0x0
/* 813F0F80 | 54 84 10 3A */	slwi r4, r4, 2
/* 813F0F84 | 80 7E 00 C4 */	lwz r3, 0xc4(r30)
/* 813F0F88 | 54 00 10 3A */	slwi r0, r0, 2
/* 813F0F8C | 7C 9B 20 2E */	lwzx r4, r27, r4
/* 813F0F90 | 7C BC 00 2E */	lwzx r5, r28, r0
/* 813F0F94 | 4B F7 95 4D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813F0F98 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 813F0F9C | 3B BD 00 04 */	addi r29, r29, 0x4
/* 813F0FA0 | 2C 19 00 3A */	cmpwi r25, 0x3a
/* 813F0FA4 | 41 80 FF B4 */	blt .L_813F0F58
/* 813F0FA8 | 80 7E 00 C4 */	lwz r3, 0xc4(r30)
/* 813F0FAC | 4B F7 96 89 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813F0FB0 | 38 60 05 80 */	li r3, 0x580
/* 813F0FB4 | 48 20 70 E9 */	bl __nw__FUl
/* 813F0FB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F0FBC | 41 82 00 18 */	beq .L_813F0FD4
/* 813F0FC0 | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813F0FC4 | 38 FF 03 FB */	addi r7, r31, 0x3fb
/* 813F0FC8 | 80 BE 00 BC */	lwz r5, 0xbc(r30)
/* 813F0FCC | 38 CD 90 B6 */	li r6, lbl_816970F6@sda21
/* 813F0FD0 | 4B F7 90 55 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813F0FD4:
/* 813F0FD4 | 90 7E 00 C8 */	stw r3, 0xc8(r30)
/* 813F0FD8 | 38 9F 04 0E */	addi r4, r31, 0x40e
/* 813F0FDC | 38 AD 90 BA */	li r5, lbl_816970FA@sda21
/* 813F0FE0 | 38 C0 00 00 */	li r6, 0x0
/* 813F0FE4 | 38 E0 00 00 */	li r7, 0x0
/* 813F0FE8 | 4B F7 94 F9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813F0FEC | 80 7E 00 C8 */	lwz r3, 0xc8(r30)
/* 813F0FF0 | 4B F7 96 45 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813F0FF4 | 80 7E 00 C8 */	lwz r3, 0xc8(r30)
/* 813F0FF8 | 38 8D 90 C1 */	li r4, lbl_81697101@sda21
/* 813F0FFC | 38 A0 00 01 */	li r5, 0x1
/* 813F1000 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F1004 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F1008 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F100C | 7D 89 03 A6 */	mtctr r12
/* 813F1010 | 4E 80 04 21 */	bctrl
/* 813F1014 | 38 80 00 00 */	li r4, 0x0
/* 813F1018 | 4B F5 33 FD */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813F101C | 38 60 00 20 */	li r3, 0x20
/* 813F1020 | 48 20 70 7D */	bl __nw__FUl
/* 813F1024 | 90 7E 09 20 */	stw r3, 0x920(r30)
/* 813F1028 | 38 60 03 80 */	li r3, 0x380
/* 813F102C | 48 20 70 71 */	bl __nw__FUl
/* 813F1030 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F1034 | 41 82 00 08 */	beq .L_813F103C
/* 813F1038 | 48 00 B3 65 */	bl __ct__Q33ipl5scene12APScanThreadFv
.L_813F103C:
/* 813F103C | 90 7E 00 E8 */	stw r3, 0xe8(r30)
/* 813F1040 | 38 60 00 14 */	li r3, 0x14
/* 813F1044 | 48 20 70 59 */	bl __nw__FUl
/* 813F1048 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F104C | 41 82 00 08 */	beq .L_813F1054
/* 813F1050 | 48 00 B8 AD */	bl __ct__Q33ipl5scene11USBAPThreadFv
.L_813F1054:
/* 813F1054 | 90 7E 00 DC */	stw r3, 0xdc(r30)
/* 813F1058 | 48 00 8F 71 */	bl init__Q33ipl3ncd10NCDSettingFv
/* 813F105C | 48 00 A9 F9 */	bl init__Q33ipl8parental8ParentalFv
/* 813F1060 | 38 60 05 B0 */	li r3, 0x5b0
/* 813F1064 | 48 20 70 39 */	bl __nw__FUl
/* 813F1068 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F106C | 41 82 00 0C */	beq .L_813F1078
/* 813F1070 | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813F1074 | 48 00 B9 99 */	bl __ct__Q33ipl5scene10AOSSThreadFPQ23EGG4Heap
.L_813F1078:
/* 813F1078 | 38 00 00 00 */	li r0, 0x0
/* 813F107C | 90 7E 00 E0 */	stw r3, 0xe0(r30)
/* 813F1080 | 38 60 03 48 */	li r3, 0x348
/* 813F1084 | 90 1E 00 88 */	stw r0, 0x88(r30)
/* 813F1088 | 48 20 70 15 */	bl __nw__FUl
/* 813F108C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F1090 | 41 82 00 0C */	beq .L_813F109C
/* 813F1094 | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813F1098 | 48 00 C9 D9 */	bl __ct__Q33ipl5scene14RakuRakuThreadFPQ23EGG4Heap
.L_813F109C:
/* 813F109C | 3B 80 00 00 */	li r28, 0x0
/* 813F10A0 | 90 7E 00 E4 */	stw r3, 0xe4(r30)
/* 813F10A4 | 93 9E 00 8C */	stw r28, 0x8c(r30)
/* 813F10A8 | 4B F7 FE 0D */	bl initWiiSetting__Q23www10wiisettingFv
/* 813F10AC | 7F C3 F3 78 */	mr r3, r30
/* 813F10B0 | 48 00 2E A1 */	bl initWiiSettingData__Q33ipl5scene7SettingFv
/* 813F10B4 | 7F C3 F3 78 */	mr r3, r30
/* 813F10B8 | 48 00 07 75 */	bl initString__Q33ipl5scene7SettingFv
/* 813F10BC | 80 7E 09 34 */	lwz r3, 0x934(r30)
/* 813F10C0 | 4B F8 00 A5 */	bl setStringBuf__Q23www10wiisettingFPQ33www10wiisetting12SetStringBuf
/* 813F10C4 | 38 7E 0B 60 */	addi r3, r30, 0xb60
/* 813F10C8 | 38 9E 0B 80 */	addi r4, r30, 0xb80
/* 813F10CC | 38 A0 00 05 */	li r5, 0x5
/* 813F10D0 | 48 13 FF 51 */	bl OSInitMessageQueue
/* 813F10D4 | 38 7E 0B 60 */	addi r3, r30, 0xb60
/* 813F10D8 | 4B F8 01 11 */	bl setMsgQueue__Q23www10wiisettingFP14OSMessageQueue
/* 813F10DC | 80 7E 00 24 */	lwz r3, 0x24(r30)
/* 813F10E0 | 38 80 10 00 */	li r4, 0x1000
/* 813F10E4 | 38 A0 00 20 */	li r5, 0x20
/* 813F10E8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F10EC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813F10F0 | 7D 89 03 A6 */	mtctr r12
/* 813F10F4 | 4E 80 04 21 */	bctrl
/* 813F10F8 | 90 7E 09 04 */	stw r3, 0x904(r30)
/* 813F10FC | 38 80 08 00 */	li r4, 0x800
/* 813F1100 | 80 7E 00 24 */	lwz r3, 0x24(r30)
/* 813F1104 | 38 A0 00 04 */	li r5, 0x4
/* 813F1108 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F110C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813F1110 | 7D 89 03 A6 */	mtctr r12
/* 813F1114 | 4E 80 04 21 */	bctrl
/* 813F1118 | 90 7E 09 0C */	stw r3, 0x90c(r30)
/* 813F111C | 38 80 00 00 */	li r4, 0x0
/* 813F1120 | 38 A0 08 00 */	li r5, 0x800
/* 813F1124 | 4B F3 F2 11 */	bl memset
/* 813F1128 | 80 7E 00 24 */	lwz r3, 0x24(r30)
/* 813F112C | 38 80 00 79 */	li r4, 0x79
/* 813F1130 | 38 A0 00 04 */	li r5, 0x4
/* 813F1134 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F1138 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813F113C | 7D 89 03 A6 */	mtctr r12
/* 813F1140 | 4E 80 04 21 */	bctrl
/* 813F1144 | 90 7E 09 10 */	stw r3, 0x910(r30)
/* 813F1148 | 38 80 00 00 */	li r4, 0x0
/* 813F114C | 38 A0 00 79 */	li r5, 0x79
/* 813F1150 | 4B F3 F1 E5 */	bl memset
/* 813F1154 | 38 60 00 10 */	li r3, 0x10
/* 813F1158 | 48 20 6F 45 */	bl __nw__FUl
/* 813F115C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F1160 | 41 82 00 18 */	beq .L_813F1178
/* 813F1164 | 3C 80 81 65 */	lis r4, __vt__Q33ipl5scene7APEvent@ha
/* 813F1168 | 93 83 00 08 */	stw r28, 0x8(r3)
/* 813F116C | 38 84 77 84 */	addi r4, r4, __vt__Q33ipl5scene7APEvent@l
/* 813F1170 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813F1174 | 93 C3 00 0C */	stw r30, 0xc(r3)
.L_813F1178:
/* 813F1178 | 90 7E 00 D4 */	stw r3, 0xd4(r30)
/* 813F117C | 38 60 00 34 */	li r3, 0x34
/* 813F1180 | 48 20 6F 1D */	bl __nw__FUl
/* 813F1184 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F1188 | 7C 7A 1B 78 */	mr r26, r3
/* 813F118C | 41 82 00 8C */	beq .L_813F1218
/* 813F1190 | 80 BE 00 C4 */	lwz r5, 0xc4(r30)
/* 813F1194 | 3C 80 81 64 */	lis r4, __vt__Q23gui7Manager@ha
/* 813F1198 | 80 DE 00 D4 */	lwz r6, 0xd4(r30)
/* 813F119C | 38 84 27 E0 */	addi r4, r4, __vt__Q23gui7Manager@l
/* 813F11A0 | 38 00 00 00 */	li r0, 0x0
/* 813F11A4 | 3B 65 02 98 */	addi r27, r5, 0x298
/* 813F11A8 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813F11AC | 2C 06 00 00 */	cmpwi r6, 0x0
/* 813F11B0 | 90 C3 00 04 */	stw r6, 0x4(r3)
/* 813F11B4 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813F11B8 | 41 82 00 1C */	beq .L_813F11D4
/* 813F11BC | 81 86 00 00 */	lwz r12, 0x0(r6)
/* 813F11C0 | 7C C3 33 78 */	mr r3, r6
/* 813F11C4 | 7F 44 D3 78 */	mr r4, r26
/* 813F11C8 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813F11CC | 7D 89 03 A6 */	mtctr r12
/* 813F11D0 | 4E 80 04 21 */	bctrl
.L_813F11D4:
/* 813F11D4 | 38 7A 00 08 */	addi r3, r26, 0x8
/* 813F11D8 | 38 80 00 08 */	li r4, 0x8
/* 813F11DC | 48 12 0E 81 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813F11E0 | 3C A0 81 64 */	lis r5, __vt__Q23gui11PaneManager@ha
/* 813F11E4 | 38 7A 00 18 */	addi r3, r26, 0x18
/* 813F11E8 | 38 A5 27 84 */	addi r5, r5, __vt__Q23gui11PaneManager@l
/* 813F11EC | 38 80 00 08 */	li r4, 0x8
/* 813F11F0 | 90 BA 00 00 */	stw r5, 0x0(r26)
/* 813F11F4 | 93 7A 00 24 */	stw r27, 0x24(r26)
/* 813F11F8 | 48 12 0E 65 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813F11FC | 3C 80 81 63 */	lis r4, __vt__Q33ipl3gui11PaneManager@ha
/* 813F1200 | 38 60 00 00 */	li r3, 0x0
/* 813F1204 | 38 84 59 C4 */	addi r4, r4, __vt__Q33ipl3gui11PaneManager@l
/* 813F1208 | 38 00 00 01 */	li r0, 0x1
/* 813F120C | 90 9A 00 00 */	stw r4, 0x0(r26)
/* 813F1210 | 90 7A 00 2C */	stw r3, 0x2c(r26)
/* 813F1214 | 98 1A 00 30 */	stb r0, 0x30(r26)
.L_813F1218:
/* 813F1218 | 93 5E 00 D8 */	stw r26, 0xd8(r30)
/* 813F121C | 7F 43 D3 78 */	mr r3, r26
/* 813F1220 | 80 9E 00 C4 */	lwz r4, 0xc4(r30)
/* 813F1224 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 813F1228 | 38 84 00 04 */	addi r4, r4, 0x4
/* 813F122C | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813F1230 | 7D 89 03 A6 */	mtctr r12
/* 813F1234 | 4E 80 04 21 */	bctrl
/* 813F1238 | 80 7E 00 D8 */	lwz r3, 0xd8(r30)
/* 813F123C | 38 80 00 00 */	li r4, 0x0
/* 813F1240 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F1244 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813F1248 | 7D 89 03 A6 */	mtctr r12
/* 813F124C | 4E 80 04 21 */	bctrl
/* 813F1250 | 3B 9F 00 00 */	addi r28, r31, 0x0
/* 813F1254 | 3B 20 00 00 */	li r25, 0x0
/* 813F1258 | 3B A0 00 00 */	li r29, 0x0
.L_813F125C:
/* 813F125C | 80 7E 00 C4 */	lwz r3, 0xc4(r30)
/* 813F1260 | 38 A0 00 01 */	li r5, 0x1
/* 813F1264 | 7C 9C E8 2E */	lwzx r4, r28, r29
/* 813F1268 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F126C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F1270 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F1274 | 7D 89 03 A6 */	mtctr r12
/* 813F1278 | 4E 80 04 21 */	bctrl
/* 813F127C | 7C 64 1B 78 */	mr r4, r3
/* 813F1280 | 80 7E 00 D8 */	lwz r3, 0xd8(r30)
/* 813F1284 | 38 A0 00 01 */	li r5, 0x1
/* 813F1288 | 4B F7 9F 45 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 813F128C | 3B 39 00 01 */	addi r25, r25, 0x1
/* 813F1290 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 813F1294 | 2C 19 00 04 */	cmpwi r25, 0x4
/* 813F1298 | 41 80 FF C4 */	blt .L_813F125C
/* 813F129C | 3B 20 00 00 */	li r25, 0x0
/* 813F12A0 | 3B A0 00 00 */	li r29, 0x0
/* 813F12A4 | 3B 8D 8F D0 */	li r28, lbl_81697010@sda21
.L_813F12A8:
/* 813F12A8 | 80 7E 00 C4 */	lwz r3, 0xc4(r30)
/* 813F12AC | 38 A0 00 01 */	li r5, 0x1
/* 813F12B0 | 7C 9C E8 2E */	lwzx r4, r28, r29
/* 813F12B4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F12B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F12BC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F12C0 | 7D 89 03 A6 */	mtctr r12
/* 813F12C4 | 4E 80 04 21 */	bctrl
/* 813F12C8 | 7C 64 1B 78 */	mr r4, r3
/* 813F12CC | 80 7E 00 D8 */	lwz r3, 0xd8(r30)
/* 813F12D0 | 38 A0 00 01 */	li r5, 0x1
/* 813F12D4 | 4B F7 9E F9 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 813F12D8 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 813F12DC | 3B BD 00 04 */	addi r29, r29, 0x4
/* 813F12E0 | 2C 19 00 02 */	cmpwi r25, 0x2
/* 813F12E4 | 41 80 FF C4 */	blt .L_813F12A8
/* 813F12E8 | 80 7E 00 70 */	lwz r3, 0x70(r30)
/* 813F12EC | 80 63 00 A0 */	lwz r3, 0xa0(r3)
/* 813F12F0 | 48 1C AE B9 */	bl fn_815BC1A8
/* 813F12F4 | 48 14 49 A5 */	bl fn_81535C98
/* 813F12F8 | 3C 80 80 00 */	lis r4, 0x8000
/* 813F12FC | 80 BE 00 A0 */	lwz r5, 0xa0(r30)
/* 813F1300 | 80 84 00 F8 */	lwz r4, 0xf8(r4)
/* 813F1304 | 38 00 03 E8 */	li r0, 0x3e8
/* 813F1308 | 7C A5 18 50 */	subf r5, r5, r3
/* 813F130C | 38 7F 04 26 */	addi r3, r31, 0x426
/* 813F1310 | 54 84 F0 BE */	srwi r4, r4, 2
/* 813F1314 | 7C 04 03 96 */	divwu r0, r4, r0
/* 813F1318 | 7C 85 03 96 */	divwu r4, r5, r0
/* 813F131C | 4C C6 31 82 */	crclr cr1eq
/* 813F1320 | 48 13 D3 81 */	bl OSReport
/* 813F1324 | 48 14 49 75 */	bl fn_81535C98
/* 813F1328 | 90 7E 00 A0 */	stw r3, 0xa0(r30)
/* 813F132C | 39 61 00 30 */	addi r11, r1, 0x30
/* 813F1330 | 48 20 81 D5 */	bl _restgpr_25
/* 813F1334 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813F1338 | 7C 08 03 A6 */	mtlr r0
/* 813F133C | 38 21 00 30 */	addi r1, r1, 0x30
/* 813F1340 | 4E 80 00 20 */	blr
.endfn create__Q33ipl5scene7SettingFv

# .text:0xBD0 | 0x813F1344 | size: 0x4B4
# ipl::scene::Setting::createBrowser()
.fn createBrowser__Q33ipl5scene7SettingFv, global
/* 813F1344 | 94 21 FD F0 */	stwu r1, -0x210(r1)
/* 813F1348 | 7C 08 02 A6 */	mflr r0
/* 813F134C | 90 01 02 14 */	stw r0, 0x214(r1)
/* 813F1350 | 39 61 02 10 */	addi r11, r1, 0x210
/* 813F1354 | 48 20 81 55 */	bl _savegpr_21
/* 813F1358 | 3F C0 81 61 */	lis r30, lbl_81610948@ha
/* 813F135C | 3F E0 81 65 */	lis r31, lbl_816568E8@ha
/* 813F1360 | 7C 78 1B 78 */	mr r24, r3
/* 813F1364 | 3B DE 09 48 */	addi r30, r30, lbl_81610948@l
/* 813F1368 | 3B FF 68 E8 */	addi r31, r31, lbl_816568E8@l
/* 813F136C | 4B F4 1A C9 */	bl createMem1AppHeap__Q23ipl6SystemFv
/* 813F1370 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F1374 | 38 80 00 04 */	li r4, 0x4
/* 813F1378 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813F137C | 7D 89 03 A6 */	mtctr r12
/* 813F1380 | 4E 80 04 21 */	bctrl
/* 813F1384 | 3E C0 81 09 */	lis r22, smArg__Q23ipl6System@ha
/* 813F1388 | 7C 7D 1B 78 */	mr r29, r3
/* 813F138C | 3A D6 90 08 */	addi r22, r22, smArg__Q23ipl6System@l
/* 813F1390 | 38 80 00 04 */	li r4, 0x4
/* 813F1394 | 80 76 00 28 */	lwz r3, 0x28(r22)
/* 813F1398 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F139C | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813F13A0 | 7D 89 03 A6 */	mtctr r12
/* 813F13A4 | 4E 80 04 21 */	bctrl
/* 813F13A8 | 3C 63 FF F8 */	subis r3, r3, 0x8
/* 813F13AC | 3C 00 43 30 */	lis r0, 0x4330
/* 813F13B0 | 90 61 01 C4 */	stw r3, 0x1c4(r1)
/* 813F13B4 | C8 42 88 10 */	lfd f2, lbl_81694C10@sda21(r0)
/* 813F13B8 | 90 01 01 C0 */	stw r0, 0x1c0(r1)
/* 813F13BC | C8 02 88 08 */	lfd f0, lbl_81694C08@sda21(r0)
/* 813F13C0 | C8 21 01 C0 */	lfd f1, 0x1c0(r1)
/* 813F13C4 | FC 21 10 28 */	fsub f1, f1, f2
/* 813F13C8 | FC 21 00 28 */	fsub f1, f1, f0
/* 813F13CC | 48 20 7F CD */	bl __cvt_fp2unsigned
/* 813F13D0 | 7C 7C 1B 78 */	mr r28, r3
/* 813F13D4 | 4B F4 1A 61 */	bl createMem1AppHeap__Q23ipl6SystemFv
/* 813F13D8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F13DC | 7F A4 EB 78 */	mr r4, r29
/* 813F13E0 | 38 A0 00 04 */	li r5, 0x4
/* 813F13E4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813F13E8 | 7D 89 03 A6 */	mtctr r12
/* 813F13EC | 4E 80 04 21 */	bctrl
/* 813F13F0 | 90 6D AB A0 */	stw r3, lbl_81698BE0@sda21(r0)
/* 813F13F4 | 7F 84 E3 78 */	mr r4, r28
/* 813F13F8 | 80 76 00 28 */	lwz r3, 0x28(r22)
/* 813F13FC | 38 A0 00 04 */	li r5, 0x4
/* 813F1400 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F1404 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813F1408 | 7D 89 03 A6 */	mtctr r12
/* 813F140C | 4E 80 04 21 */	bctrl
/* 813F1410 | 90 6D AB A4 */	stw r3, lbl_81698BE4@sda21(r0)
/* 813F1414 | 7F A4 EB 78 */	mr r4, r29
/* 813F1418 | 7F 85 E3 78 */	mr r5, r28
/* 813F141C | 38 7F 05 39 */	addi r3, r31, 0x539
/* 813F1420 | 4C C6 31 82 */	crclr cr1eq
/* 813F1424 | 48 13 D2 7D */	bl OSReport
/* 813F1428 | 38 61 00 28 */	addi r3, r1, 0x28
/* 813F142C | 4B F4 4F FD */	bl __ct__Q34nw4r2ut4RectFv
/* 813F1430 | 38 61 00 18 */	addi r3, r1, 0x18
/* 813F1434 | 4B F4 4F F5 */	bl __ct__Q34nw4r2ut4RectFv
/* 813F1438 | 38 61 00 28 */	addi r3, r1, 0x28
/* 813F143C | 4B F4 45 35 */	bl getProjectionRect16x9__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813F1440 | 38 61 00 18 */	addi r3, r1, 0x18
/* 813F1444 | 4B F4 45 09 */	bl getProjectionRect4x3__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813F1448 | C0 61 00 20 */	lfs f3, 0x20(r1)
/* 813F144C | 38 7E 00 E8 */	addi r3, r30, 0xe8
/* 813F1450 | C0 41 00 18 */	lfs f2, 0x18(r1)
/* 813F1454 | 38 83 FF FC */	subi r4, r3, 0x4
/* 813F1458 | C0 21 00 24 */	lfs f1, 0x24(r1)
/* 813F145C | 38 00 00 03 */	li r0, 0x3
/* 813F1460 | C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 813F1464 | EC 43 10 28 */	fsubs f2, f3, f2
/* 813F1468 | 80 A2 88 00 */	lwz r5, lbl_81694C00@sda21(r0)
/* 813F146C | 38 C1 00 50 */	addi r6, r1, 0x50
/* 813F1470 | EC 01 00 28 */	fsubs f0, f1, f0
/* 813F1474 | 80 62 88 04 */	lwz r3, lbl_81694C04@sda21(r0)
/* 813F1478 | FC 20 10 1E */	fctiwz f1, f2
/* 813F147C | 90 A1 00 10 */	stw r5, 0x10(r1)
/* 813F1480 | FC 00 00 1E */	fctiwz f0, f0
/* 813F1484 | D8 21 01 C8 */	stfd f1, 0x1c8(r1)
/* 813F1488 | D8 01 01 D0 */	stfd f0, 0x1d0(r1)
/* 813F148C | 83 61 01 CC */	lwz r27, 0x1cc(r1)
/* 813F1490 | 90 61 00 14 */	stw r3, 0x14(r1)
/* 813F1494 | 83 41 01 D4 */	lwz r26, 0x1d4(r1)
/* 813F1498 | 7C 09 03 A6 */	mtctr r0
.L_813F149C:
/* 813F149C | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 813F14A0 | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 813F14A4 | 90 66 00 04 */	stw r3, 0x4(r6)
/* 813F14A8 | 94 06 00 08 */	stwu r0, 0x8(r6)
/* 813F14AC | 42 00 FF F0 */	bdnz .L_813F149C
/* 813F14B0 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 813F14B4 | 38 7E 01 04 */	addi r3, r30, 0x104
/* 813F14B8 | 38 00 00 06 */	li r0, 0x6
/* 813F14BC | 38 A1 00 C4 */	addi r5, r1, 0xc4
/* 813F14C0 | 90 86 00 04 */	stw r4, 0x4(r6)
/* 813F14C4 | 38 83 FF FC */	subi r4, r3, 0x4
/* 813F14C8 | 7C 09 03 A6 */	mtctr r0
.L_813F14CC:
/* 813F14CC | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 813F14D0 | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 813F14D4 | 90 65 00 04 */	stw r3, 0x4(r5)
/* 813F14D8 | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 813F14DC | 42 00 FF F0 */	bdnz .L_813F14CC
/* 813F14E0 | 38 7E 01 34 */	addi r3, r30, 0x134
/* 813F14E4 | 38 00 00 05 */	li r0, 0x5
/* 813F14E8 | 38 A1 00 9C */	addi r5, r1, 0x9c
/* 813F14EC | 38 83 FF FC */	subi r4, r3, 0x4
/* 813F14F0 | 7C 09 03 A6 */	mtctr r0
.L_813F14F4:
/* 813F14F4 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 813F14F8 | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 813F14FC | 90 65 00 04 */	stw r3, 0x4(r5)
/* 813F1500 | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 813F1504 | 42 00 FF F0 */	bdnz .L_813F14F4
/* 813F1508 | 38 7E 01 5C */	addi r3, r30, 0x15c
/* 813F150C | 38 00 00 06 */	li r0, 0x6
/* 813F1510 | 38 A1 00 6C */	addi r5, r1, 0x6c
/* 813F1514 | 38 83 FF FC */	subi r4, r3, 0x4
/* 813F1518 | 7C 09 03 A6 */	mtctr r0
.L_813F151C:
/* 813F151C | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 813F1520 | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 813F1524 | 90 65 00 04 */	stw r3, 0x4(r5)
/* 813F1528 | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 813F152C | 42 00 FF F0 */	bdnz .L_813F151C
/* 813F1530 | 38 61 01 5C */	addi r3, r1, 0x15c
/* 813F1534 | 38 80 00 00 */	li r4, 0x0
/* 813F1538 | 38 A0 00 64 */	li r5, 0x64
/* 813F153C | 4B F3 ED F9 */	bl memset
/* 813F1540 | 38 61 00 F8 */	addi r3, r1, 0xf8
/* 813F1544 | 38 80 00 00 */	li r4, 0x0
/* 813F1548 | 38 A0 00 64 */	li r5, 0x64
/* 813F154C | 4B F3 ED E9 */	bl memset
/* 813F1550 | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 813F1554 | 38 61 01 5C */	addi r3, r1, 0x15c
/* 813F1558 | 48 21 0D AD */	bl strcpy
/* 813F155C | 80 18 0B 4C */	lwz r0, 0xb4c(r24)
/* 813F1560 | 38 81 00 54 */	addi r4, r1, 0x54
/* 813F1564 | 38 61 01 5C */	addi r3, r1, 0x15c
/* 813F1568 | 54 00 10 3A */	slwi r0, r0, 2
/* 813F156C | 7C 84 00 2E */	lwzx r4, r4, r0
/* 813F1570 | 48 21 0E 99 */	bl strcat
/* 813F1574 | 48 17 95 59 */	bl SCGetProductArea
/* 813F1578 | 7C 79 07 74 */	extsb r25, r3
/* 813F157C | 2C 19 00 04 */	cmpwi r25, 0x4
/* 813F1580 | 41 82 00 3C */	beq .L_813F15BC
/* 813F1584 | 40 80 00 18 */	bge .L_813F159C
/* 813F1588 | 2C 19 00 03 */	cmpwi r25, 0x3
/* 813F158C | 40 80 00 28 */	bge .L_813F15B4
/* 813F1590 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 813F1594 | 40 80 00 2C */	bge .L_813F15C0
/* 813F1598 | 48 00 00 24 */	b .L_813F15BC
.L_813F159C:
/* 813F159C | 2C 19 00 0B */	cmpwi r25, 0xb
/* 813F15A0 | 41 82 00 20 */	beq .L_813F15C0
/* 813F15A4 | 40 80 00 18 */	bge .L_813F15BC
/* 813F15A8 | 2C 19 00 07 */	cmpwi r25, 0x7
/* 813F15AC | 40 80 00 10 */	bge .L_813F15BC
/* 813F15B0 | 48 00 00 10 */	b .L_813F15C0
.L_813F15B4:
/* 813F15B4 | 3B 20 00 02 */	li r25, 0x2
/* 813F15B8 | 48 00 00 08 */	b .L_813F15C0
.L_813F15BC:
/* 813F15BC | 3B 20 00 01 */	li r25, 0x1
.L_813F15C0:
/* 813F15C0 | 80 18 0B 4C */	lwz r0, 0xb4c(r24)
/* 813F15C4 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813F15C8 | 40 82 00 40 */	bne .L_813F1608
/* 813F15CC | 57 36 10 3A */	slwi r22, r25, 2
/* 813F15D0 | 4B F4 44 1D */	bl getLanguage__Q23ipl6SystemFv
/* 813F15D4 | 54 60 10 3A */	slwi r0, r3, 2
/* 813F15D8 | 38 A1 00 A0 */	addi r5, r1, 0xa0
/* 813F15DC | 38 61 00 C8 */	addi r3, r1, 0xc8
/* 813F15E0 | 38 81 00 70 */	addi r4, r1, 0x70
/* 813F15E4 | 7C C3 B0 2E */	lwzx r6, r3, r22
/* 813F15E8 | 38 61 00 F8 */	addi r3, r1, 0xf8
/* 813F15EC | 7C E5 00 2E */	lwzx r7, r5, r0
/* 813F15F0 | 38 A1 01 5C */	addi r5, r1, 0x15c
/* 813F15F4 | 7D 04 B0 2E */	lwzx r8, r4, r22
/* 813F15F8 | 38 80 00 64 */	li r4, 0x64
/* 813F15FC | 4C C6 31 82 */	crclr cr1eq
/* 813F1600 | 48 20 F3 A9 */	bl snprintf
/* 813F1604 | 48 00 01 20 */	b .L_813F1724
.L_813F1608:
/* 813F1608 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813F160C | 40 82 00 E8 */	bne .L_813F16F4
/* 813F1610 | 38 7E 01 8C */	addi r3, r30, 0x18c
/* 813F1614 | 38 00 00 03 */	li r0, 0x3
/* 813F1618 | 38 A1 00 34 */	addi r5, r1, 0x34
/* 813F161C | 38 83 FF FC */	subi r4, r3, 0x4
/* 813F1620 | 7C 09 03 A6 */	mtctr r0
.L_813F1624:
/* 813F1624 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 813F1628 | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 813F162C | 90 65 00 04 */	stw r3, 0x4(r5)
/* 813F1630 | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 813F1634 | 42 00 FF F0 */	bdnz .L_813F1624
/* 813F1638 | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 813F163C | 3A C1 00 38 */	addi r22, r1, 0x38
/* 813F1640 | 3A A0 00 00 */	li r21, 0x0
/* 813F1644 | 3A E0 00 00 */	li r23, 0x0
/* 813F1648 | 90 05 00 04 */	stw r0, 0x4(r5)
.L_813F164C:
/* 813F164C | 80 78 09 34 */	lwz r3, 0x934(r24)
/* 813F1650 | 7C 96 B8 2E */	lwzx r4, r22, r23
/* 813F1654 | 38 63 06 0E */	addi r3, r3, 0x60e
/* 813F1658 | 48 21 13 11 */	bl strstr
/* 813F165C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F1660 | 40 82 00 14 */	bne .L_813F1674
/* 813F1664 | 3A B5 00 01 */	addi r21, r21, 0x1
/* 813F1668 | 3A F7 00 04 */	addi r23, r23, 0x4
/* 813F166C | 2C 15 00 07 */	cmpwi r21, 0x7
/* 813F1670 | 41 80 FF DC */	blt .L_813F164C
.L_813F1674:
/* 813F1674 | 2C 15 00 06 */	cmpwi r21, 0x6
/* 813F1678 | 41 82 00 38 */	beq .L_813F16B0
/* 813F167C | 40 80 00 18 */	bge .L_813F1694
/* 813F1680 | 2C 15 00 03 */	cmpwi r21, 0x3
/* 813F1684 | 40 80 00 24 */	bge .L_813F16A8
/* 813F1688 | 2C 15 00 00 */	cmpwi r21, 0x0
/* 813F168C | 40 80 00 14 */	bge .L_813F16A0
/* 813F1690 | 48 00 00 2C */	b .L_813F16BC
.L_813F1694:
/* 813F1694 | 2C 15 00 08 */	cmpwi r21, 0x8
/* 813F1698 | 40 80 00 24 */	bge .L_813F16BC
/* 813F169C | 48 00 00 1C */	b .L_813F16B8
.L_813F16A0:
/* 813F16A0 | 3B DF 05 5C */	addi r30, r31, 0x55c
/* 813F16A4 | 48 00 00 18 */	b .L_813F16BC
.L_813F16A8:
/* 813F16A8 | 3B DF 05 69 */	addi r30, r31, 0x569
/* 813F16AC | 48 00 00 10 */	b .L_813F16BC
.L_813F16B0:
/* 813F16B0 | 3B DF 05 76 */	addi r30, r31, 0x576
/* 813F16B4 | 48 00 00 08 */	b .L_813F16BC
.L_813F16B8:
/* 813F16B8 | 3B DF 05 5C */	addi r30, r31, 0x55c
.L_813F16BC:
/* 813F16BC | 4B F4 43 31 */	bl getLanguage__Q23ipl6SystemFv
/* 813F16C0 | 54 65 10 3A */	slwi r5, r3, 2
/* 813F16C4 | 38 81 00 A0 */	addi r4, r1, 0xa0
/* 813F16C8 | 7C E4 28 2E */	lwzx r7, r4, r5
/* 813F16CC | 57 20 10 3A */	slwi r0, r25, 2
/* 813F16D0 | 38 61 00 C8 */	addi r3, r1, 0xc8
/* 813F16D4 | 7F C8 F3 78 */	mr r8, r30
/* 813F16D8 | 7C C3 00 2E */	lwzx r6, r3, r0
/* 813F16DC | 38 61 00 F8 */	addi r3, r1, 0xf8
/* 813F16E0 | 38 A1 01 5C */	addi r5, r1, 0x15c
/* 813F16E4 | 38 80 00 64 */	li r4, 0x64
/* 813F16E8 | 4C C6 31 82 */	crclr cr1eq
/* 813F16EC | 48 20 F2 BD */	bl snprintf
/* 813F16F0 | 48 00 00 34 */	b .L_813F1724
.L_813F16F4:
/* 813F16F4 | 4B F4 42 F9 */	bl getLanguage__Q23ipl6SystemFv
/* 813F16F8 | 54 65 10 3A */	slwi r5, r3, 2
/* 813F16FC | 38 81 00 A0 */	addi r4, r1, 0xa0
/* 813F1700 | 7C E4 28 2E */	lwzx r7, r4, r5
/* 813F1704 | 57 20 10 3A */	slwi r0, r25, 2
/* 813F1708 | 38 61 00 C8 */	addi r3, r1, 0xc8
/* 813F170C | 38 A1 01 5C */	addi r5, r1, 0x15c
/* 813F1710 | 7C C3 00 2E */	lwzx r6, r3, r0
/* 813F1714 | 38 61 00 F8 */	addi r3, r1, 0xf8
/* 813F1718 | 38 80 00 64 */	li r4, 0x64
/* 813F171C | 4C C6 31 82 */	crclr cr1eq
/* 813F1720 | 48 20 F2 89 */	bl snprintf
.L_813F1724:
/* 813F1724 | 38 7F 05 83 */	addi r3, r31, 0x583
/* 813F1728 | 4C C6 31 82 */	crclr cr1eq
/* 813F172C | 48 13 CF 75 */	bl OSReport
/* 813F1730 | 38 81 00 F8 */	addi r4, r1, 0xf8
/* 813F1734 | 38 6D 91 2A */	li r3, lbl_8169716A@sda21
/* 813F1738 | 4C C6 31 82 */	crclr cr1eq
/* 813F173C | 48 13 CF 65 */	bl OSReport
/* 813F1740 | 38 7F 05 83 */	addi r3, r31, 0x583
/* 813F1744 | 4C C6 31 82 */	crclr cr1eq
/* 813F1748 | 48 13 CF 59 */	bl OSReport
/* 813F174C | 80 98 00 60 */	lwz r4, 0x60(r24)
/* 813F1750 | 80 64 00 A0 */	lwz r3, 0xa0(r4)
/* 813F1754 | 80 84 00 98 */	lwz r4, 0x98(r4)
/* 813F1758 | 48 13 C2 95 */	bl fn_8152D9EC
/* 813F175C | 80 B8 00 60 */	lwz r5, 0x60(r24)
/* 813F1760 | 38 7F 05 A8 */	addi r3, r31, 0x5a8
/* 813F1764 | 80 85 00 A0 */	lwz r4, 0xa0(r5)
/* 813F1768 | 80 A5 00 98 */	lwz r5, 0x98(r5)
/* 813F176C | 4C C6 31 82 */	crclr cr1eq
/* 813F1770 | 48 13 CF 31 */	bl OSReport
/* 813F1774 | 80 B8 00 60 */	lwz r5, 0x60(r24)
/* 813F1778 | 38 01 00 F8 */	addi r0, r1, 0xf8
/* 813F177C | 7F 63 DB 78 */	mr r3, r27
/* 813F1780 | 7F 44 D3 78 */	mr r4, r26
/* 813F1784 | 80 E5 00 A0 */	lwz r7, 0xa0(r5)
/* 813F1788 | 7F 65 DB 78 */	mr r5, r27
/* 813F178C | 7F 46 D3 78 */	mr r6, r26
/* 813F1790 | 7F A8 EB 78 */	mr r8, r29
/* 813F1794 | 90 E1 00 08 */	stw r7, 0x8(r1)
/* 813F1798 | 7F 8A E3 78 */	mr r10, r28
/* 813F179C | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813F17A0 | 80 ED AB A0 */	lwz r7, lbl_81698BE0@sda21(r0)
/* 813F17A4 | 81 2D AB A4 */	lwz r9, lbl_81698BE4@sda21(r0)
/* 813F17A8 | 4B F7 C9 29 */	bl CreateManager__Q37ext_ead3www14SurfaceManagerFiiiiPvUlPvUlPvPCc
/* 813F17AC | 80 78 00 64 */	lwz r3, 0x64(r24)
/* 813F17B0 | 80 63 00 A0 */	lwz r3, 0xa0(r3)
/* 813F17B4 | 4B F7 CD C9 */	bl RegisterArcFile__Q37ext_ead3www14SurfaceManagerFPv
/* 813F17B8 | 80 98 00 68 */	lwz r4, 0x68(r24)
/* 813F17BC | 80 64 00 A0 */	lwz r3, 0xa0(r4)
/* 813F17C0 | 80 84 00 98 */	lwz r4, 0x98(r4)
/* 813F17C4 | 4B F7 CD D5 */	bl RegisterIniFile__Q37ext_ead3www14SurfaceManagerFPvUl
/* 813F17C8 | 80 B8 00 6C */	lwz r5, 0x6c(r24)
/* 813F17CC | 38 60 00 00 */	li r3, 0x0
/* 813F17D0 | 80 85 00 A0 */	lwz r4, 0xa0(r5)
/* 813F17D4 | 80 A5 00 98 */	lwz r5, 0x98(r5)
/* 813F17D8 | 4B F7 CD E5 */	bl RegisterFontFile__Q37ext_ead3www14SurfaceManagerFiPvUl
/* 813F17DC | 4B F7 CE 05 */	bl StartThread__Q37ext_ead3www14SurfaceManagerFv
/* 813F17E0 | 39 61 02 10 */	addi r11, r1, 0x210
/* 813F17E4 | 48 20 7D 11 */	bl _restgpr_21
/* 813F17E8 | 80 01 02 14 */	lwz r0, 0x214(r1)
/* 813F17EC | 7C 08 03 A6 */	mtlr r0
/* 813F17F0 | 38 21 02 10 */	addi r1, r1, 0x210
/* 813F17F4 | 4E 80 00 20 */	blr
.endfn createBrowser__Q33ipl5scene7SettingFv

# .text:0x1084 | 0x813F17F8 | size: 0x34
# ipl::scene::Setting::initDirectUrl()
.fn initDirectUrl__Q33ipl5scene7SettingFv, global
/* 813F17F8 | 80 03 0B 4C */	lwz r0, 0xb4c(r3)
/* 813F17FC | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813F1800 | 4C 82 00 20 */	bnelr
/* 813F1804 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813F1808 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813F180C | 80 84 02 28 */	lwz r4, 0x228(r4)
/* 813F1810 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813F1814 | 4D 82 00 20 */	beqlr
/* 813F1818 | 80 63 09 34 */	lwz r3, 0x934(r3)
/* 813F181C | 38 A0 00 80 */	li r5, 0x80
/* 813F1820 | 38 63 06 0E */	addi r3, r3, 0x60e
/* 813F1824 | 4B F3 EA 0C */	b memcpy
/* 813F1828 | 4E 80 00 20 */	blr
.endfn initDirectUrl__Q33ipl5scene7SettingFv

# .text:0x10B8 | 0x813F182C | size: 0xD4
# ipl::scene::Setting::initString()
.fn initString__Q33ipl5scene7SettingFv, global
/* 813F182C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F1830 | 7C 08 02 A6 */	mflr r0
/* 813F1834 | 38 80 06 4E */	li r4, 0x64e
/* 813F1838 | 38 A0 00 04 */	li r5, 0x4
/* 813F183C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F1840 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F1844 | 7C 7F 1B 78 */	mr r31, r3
/* 813F1848 | 80 63 00 24 */	lwz r3, 0x24(r3)
/* 813F184C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F1850 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813F1854 | 7D 89 03 A6 */	mtctr r12
/* 813F1858 | 4E 80 04 21 */	bctrl
/* 813F185C | 90 7F 09 34 */	stw r3, 0x934(r31)
/* 813F1860 | 3C 60 81 65 */	lis r3, lbl_81656EA5@ha
/* 813F1864 | 38 63 6E A5 */	addi r3, r3, lbl_81656EA5@l
/* 813F1868 | 38 80 06 4E */	li r4, 0x64e
/* 813F186C | 4C C6 31 82 */	crclr cr1eq
/* 813F1870 | 48 13 CE 31 */	bl OSReport
/* 813F1874 | 80 7F 09 34 */	lwz r3, 0x934(r31)
/* 813F1878 | 38 80 00 00 */	li r4, 0x0
/* 813F187C | 38 A0 06 4E */	li r5, 0x64e
/* 813F1880 | 4B F3 EA B5 */	bl memset
/* 813F1884 | 38 7F 09 38 */	addi r3, r31, 0x938
/* 813F1888 | 38 80 00 00 */	li r4, 0x0
/* 813F188C | 38 A0 02 02 */	li r5, 0x202
/* 813F1890 | 4B F3 EA A5 */	bl memset
/* 813F1894 | 7F E3 FB 78 */	mr r3, r31
/* 813F1898 | 48 00 34 E1 */	bl initNickName__Q33ipl5scene7SettingFv
/* 813F189C | 7F E3 FB 78 */	mr r3, r31
/* 813F18A0 | 48 00 35 69 */	bl initSecurityKey__Q33ipl5scene7SettingFv
/* 813F18A4 | 7F E3 FB 78 */	mr r3, r31
/* 813F18A8 | 48 00 36 39 */	bl initSSID__Q33ipl5scene7SettingFv
/* 813F18AC | 7F E3 FB 78 */	mr r3, r31
/* 813F18B0 | 48 00 36 B9 */	bl initIP__Q33ipl5scene7SettingFv
/* 813F18B4 | 7F E3 FB 78 */	mr r3, r31
/* 813F18B8 | 48 00 37 65 */	bl initDNS__Q33ipl5scene7SettingFv
/* 813F18BC | 7F E3 FB 78 */	mr r3, r31
/* 813F18C0 | 48 00 37 E5 */	bl initProxy__Q33ipl5scene7SettingFv
/* 813F18C4 | 7F E3 FB 78 */	mr r3, r31
/* 813F18C8 | 48 00 38 61 */	bl initBasic__Q33ipl5scene7SettingFv
/* 813F18CC | 7F E3 FB 78 */	mr r3, r31
/* 813F18D0 | 48 00 38 D9 */	bl initMTU__Q33ipl5scene7SettingFv
/* 813F18D4 | 7F E3 FB 78 */	mr r3, r31
/* 813F18D8 | 48 00 39 35 */	bl initSecA__Q33ipl5scene7SettingFv
/* 813F18DC | 7F E3 FB 78 */	mr r3, r31
/* 813F18E0 | 48 00 39 CD */	bl initVersion__Q33ipl5scene7SettingFv
/* 813F18E4 | 7F E3 FB 78 */	mr r3, r31
/* 813F18E8 | 4B FF FF 11 */	bl initDirectUrl__Q33ipl5scene7SettingFv
/* 813F18EC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F18F0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F18F4 | 7C 08 03 A6 */	mtlr r0
/* 813F18F8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F18FC | 4E 80 00 20 */	blr
.endfn initString__Q33ipl5scene7SettingFv

# .text:0x118C | 0x813F1900 | size: 0x148
# ipl::scene::Setting::calcFadein()
.fn calcFadein__Q33ipl5scene7SettingFv, global
/* 813F1900 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813F1904 | 7C 08 02 A6 */	mflr r0
/* 813F1908 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813F190C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F1910 | 48 20 7B B9 */	bl _savegpr_29
/* 813F1914 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813F1918 | 3F C0 81 65 */	lis r30, lbl_816568E8@ha
/* 813F191C | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813F1920 | 7C 7D 1B 78 */	mr r29, r3
/* 813F1924 | 88 04 02 B2 */	lbz r0, 0x2b2(r4)
/* 813F1928 | 3B DE 68 E8 */	addi r30, r30, lbl_816568E8@l
/* 813F192C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F1930 | 41 82 00 2C */	beq .L_813F195C
/* 813F1934 | 88 03 0B 3B */	lbz r0, 0xb3b(r3)
/* 813F1938 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F193C | 40 82 00 20 */	bne .L_813F195C
/* 813F1940 | 38 00 00 01 */	li r0, 0x1
/* 813F1944 | 98 03 0B 3B */	stb r0, 0xb3b(r3)
/* 813F1948 | 4B FF F9 FD */	bl createBrowser__Q33ipl5scene7SettingFv
/* 813F194C | 38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 813F1950 | 4C C6 31 82 */	crclr cr1eq
/* 813F1954 | 48 13 CD 4D */	bl OSReport
/* 813F1958 | 48 00 00 24 */	b .L_813F197C
.L_813F195C:
/* 813F195C | 88 03 0B 3B */	lbz r0, 0xb3b(r3)
/* 813F1960 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F1964 | 40 82 00 18 */	bne .L_813F197C
/* 813F1968 | 38 7E 05 F5 */	addi r3, r30, 0x5f5
/* 813F196C | 4C C6 31 82 */	crclr cr1eq
/* 813F1970 | 48 13 CD 31 */	bl OSReport
/* 813F1974 | 38 60 00 00 */	li r3, 0x0
/* 813F1978 | 48 00 00 B8 */	b .L_813F1A30
.L_813F197C:
/* 813F197C | 80 6D A9 3C */	lwz r3, ScrollState___Q23www9trasition@sda21(r0)
/* 813F1980 | 80 63 00 28 */	lwz r3, 0x28(r3)
/* 813F1984 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F1988 | 41 82 00 A4 */	beq .L_813F1A2C
/* 813F198C | 38 80 00 00 */	li r4, 0x0
/* 813F1990 | 38 A0 00 00 */	li r5, 0x0
/* 813F1994 | 4B F7 C0 0D */	bl GetTextureBuffer__Q37ext_ead3www13BrowserThreadFiPP7WWWRect
/* 813F1998 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F199C | 41 82 00 90 */	beq .L_813F1A2C
/* 813F19A0 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813F19A4 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813F19A8 | 88 1F 02 B2 */	lbz r0, 0x2b2(r31)
/* 813F19AC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F19B0 | 41 82 00 7C */	beq .L_813F1A2C
/* 813F19B4 | 80 7F 00 90 */	lwz r3, 0x90(r31)
/* 813F19B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F19BC | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813F19C0 | 7D 89 03 A6 */	mtctr r12
/* 813F19C4 | 4E 80 04 21 */	bctrl
/* 813F19C8 | 7C 64 1B 78 */	mr r4, r3
/* 813F19CC | 38 7D 0B 3C */	addi r3, r29, 0xb3c
/* 813F19D0 | 48 00 00 79 */	bl __as__Q43ipl8keyboard7Manager5StateFRCQ43ipl8keyboard7Manager5State
/* 813F19D4 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F19D8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F19DC | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813F19E0 | 7D 89 03 A6 */	mtctr r12
/* 813F19E4 | 4E 80 04 21 */	bctrl
/* 813F19E8 | 48 14 42 99 */	bl OSGetTime
/* 813F19EC | 90 9D 0B A4 */	stw r4, 0xba4(r29)
/* 813F19F0 | 90 7D 0B A0 */	stw r3, 0xba0(r29)
/* 813F19F4 | 48 14 42 A5 */	bl fn_81535C98
/* 813F19F8 | 3C 80 80 00 */	lis r4, 0x8000
/* 813F19FC | 80 BD 00 A0 */	lwz r5, 0xa0(r29)
/* 813F1A00 | 80 84 00 F8 */	lwz r4, 0xf8(r4)
/* 813F1A04 | 38 00 03 E8 */	li r0, 0x3e8
/* 813F1A08 | 7C A5 18 50 */	subf r5, r5, r3
/* 813F1A0C | 38 7E 06 06 */	addi r3, r30, 0x606
/* 813F1A10 | 54 84 F0 BE */	srwi r4, r4, 2
/* 813F1A14 | 7C 04 03 96 */	divwu r0, r4, r0
/* 813F1A18 | 7C 85 03 96 */	divwu r4, r5, r0
/* 813F1A1C | 4C C6 31 82 */	crclr cr1eq
/* 813F1A20 | 48 13 CC 81 */	bl OSReport
/* 813F1A24 | 38 60 00 01 */	li r3, 0x1
/* 813F1A28 | 48 00 00 08 */	b .L_813F1A30
.L_813F1A2C:
/* 813F1A2C | 38 60 00 00 */	li r3, 0x0
.L_813F1A30:
/* 813F1A30 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F1A34 | 48 20 7A E1 */	bl _restgpr_29
/* 813F1A38 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813F1A3C | 7C 08 03 A6 */	mtlr r0
/* 813F1A40 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813F1A44 | 4E 80 00 20 */	blr
.endfn calcFadein__Q33ipl5scene7SettingFv

# .text:0x12D4 | 0x813F1A48 | size: 0x2C
# ipl::keyboard::Manager::State::operator=(const ipl::keyboard::Manager::State&)
.fn __as__Q43ipl8keyboard7Manager5StateFRCQ43ipl8keyboard7Manager5State, global
/* 813F1A48 | 81 04 00 00 */	lwz r8, 0x0(r4)
/* 813F1A4C | 80 E4 00 04 */	lwz r7, 0x4(r4)
/* 813F1A50 | 88 C4 00 08 */	lbz r6, 0x8(r4)
/* 813F1A54 | 88 A4 00 09 */	lbz r5, 0x9(r4)
/* 813F1A58 | 80 04 00 0C */	lwz r0, 0xc(r4)
/* 813F1A5C | 91 03 00 00 */	stw r8, 0x0(r3)
/* 813F1A60 | 90 E3 00 04 */	stw r7, 0x4(r3)
/* 813F1A64 | 98 C3 00 08 */	stb r6, 0x8(r3)
/* 813F1A68 | 98 A3 00 09 */	stb r5, 0x9(r3)
/* 813F1A6C | 90 03 00 0C */	stw r0, 0xc(r3)
/* 813F1A70 | 4E 80 00 20 */	blr
.endfn __as__Q43ipl8keyboard7Manager5StateFRCQ43ipl8keyboard7Manager5State

# .text:0x1300 | 0x813F1A74 | size: 0x1F0
# ipl::scene::Setting::updateController_()
.fn updateController___Q33ipl5scene7SettingFv, global
/* 813F1A74 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 813F1A78 | 7C 08 02 A6 */	mflr r0
/* 813F1A7C | 90 01 00 64 */	stw r0, 0x64(r1)
/* 813F1A80 | 39 61 00 60 */	addi r11, r1, 0x60
/* 813F1A84 | 48 20 7A 3D */	bl _savegpr_27
/* 813F1A88 | 7C 7B 1B 78 */	mr r27, r3
/* 813F1A8C | 38 61 00 18 */	addi r3, r1, 0x18
/* 813F1A90 | 4B F4 49 99 */	bl __ct__Q34nw4r2ut4RectFv
/* 813F1A94 | 38 61 00 18 */	addi r3, r1, 0x18
/* 813F1A98 | 4B F4 3E B5 */	bl getProjectionRect4x3__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813F1A9C | 7F 63 DB 78 */	mr r3, r27
/* 813F1AA0 | 4B FF ED CD */	bl isAnimating__Q33ipl5scene7SettingFv
/* 813F1AA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F1AA8 | 40 82 01 A4 */	bne .L_813F1C4C
/* 813F1AAC | 4B F4 3F 0D */	bl getYoungController__Q23ipl6SystemFv
/* 813F1AB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F1AB4 | 7C 7F 1B 78 */	mr r31, r3
/* 813F1AB8 | 41 82 01 64 */	beq .L_813F1C1C
/* 813F1ABC | 80 1B 0B 9C */	lwz r0, 0xb9c(r27)
/* 813F1AC0 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 813F1AC4 | 41 80 00 14 */	blt .L_813F1AD8
/* 813F1AC8 | 80 9B 09 34 */	lwz r4, 0x934(r27)
/* 813F1ACC | 88 04 06 0E */	lbz r0, 0x60e(r4)
/* 813F1AD0 | 7C 00 07 75 */	extsb. r0, r0
/* 813F1AD4 | 41 82 00 24 */	beq .L_813F1AF8
.L_813F1AD8:
/* 813F1AD8 | C0 02 88 1C */	lfs f0, lbl_81694C1C@sda21(r0)
/* 813F1ADC | 38 00 00 00 */	li r0, 0x0
/* 813F1AE0 | 90 01 00 38 */	stw r0, 0x38(r1)
/* 813F1AE4 | D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 813F1AE8 | D0 01 00 30 */	stfs f0, 0x30(r1)
/* 813F1AEC | 90 01 00 3C */	stw r0, 0x3c(r1)
/* 813F1AF0 | 90 01 00 40 */	stw r0, 0x40(r1)
/* 813F1AF4 | 48 00 00 F4 */	b .L_813F1BE8
.L_813F1AF8:
/* 813F1AF8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F1AFC | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 813F1B00 | 7D 89 03 A6 */	mtctr r12
/* 813F1B04 | 4E 80 04 21 */	bctrl
/* 813F1B08 | 90 61 00 10 */	stw r3, 0x10(r1)
/* 813F1B0C | 7F E3 FB 78 */	mr r3, r31
/* 813F1B10 | C0 01 00 18 */	lfs f0, 0x18(r1)
/* 813F1B14 | C0 21 00 10 */	lfs f1, 0x10(r1)
/* 813F1B18 | 90 81 00 14 */	stw r4, 0x14(r1)
/* 813F1B1C | EC 01 00 28 */	fsubs f0, f1, f0
/* 813F1B20 | D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 813F1B24 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813F1B28 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 813F1B2C | 7D 89 03 A6 */	mtctr r12
/* 813F1B30 | 4E 80 04 21 */	bctrl
/* 813F1B34 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 813F1B38 | C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 813F1B3C | C0 21 00 0C */	lfs f1, 0xc(r1)
/* 813F1B40 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 813F1B44 | 7F E3 FB 78 */	mr r3, r31
/* 813F1B48 | EC 01 00 28 */	fsubs f0, f1, f0
/* 813F1B4C | D0 01 00 30 */	stfs f0, 0x30(r1)
/* 813F1B50 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813F1B54 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 813F1B58 | 7D 89 03 A6 */	mtctr r12
/* 813F1B5C | 4E 80 04 21 */	bctrl
/* 813F1B60 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813F1B64 | 54 7E 80 1E */	slwi r30, r3, 16
/* 813F1B68 | 7F E3 FB 78 */	mr r3, r31
/* 813F1B6C | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 813F1B70 | 7D 89 03 A6 */	mtctr r12
/* 813F1B74 | 4E 80 04 21 */	bctrl
/* 813F1B78 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813F1B7C | 54 7D 80 1E */	slwi r29, r3, 16
/* 813F1B80 | 7F E3 FB 78 */	mr r3, r31
/* 813F1B84 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 813F1B88 | 7D 89 03 A6 */	mtctr r12
/* 813F1B8C | 4E 80 04 21 */	bctrl
/* 813F1B90 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813F1B94 | 54 7C 80 1E */	slwi r28, r3, 16
/* 813F1B98 | 7F E3 FB 78 */	mr r3, r31
/* 813F1B9C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F1BA0 | 7D 89 03 A6 */	mtctr r12
/* 813F1BA4 | 4E 80 04 21 */	bctrl
/* 813F1BA8 | 7F C0 1B 78 */	or r0, r30, r3
/* 813F1BAC | 7F E3 FB 78 */	mr r3, r31
/* 813F1BB0 | 90 01 00 38 */	stw r0, 0x38(r1)
/* 813F1BB4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813F1BB8 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 813F1BBC | 7D 89 03 A6 */	mtctr r12
/* 813F1BC0 | 4E 80 04 21 */	bctrl
/* 813F1BC4 | 7F A0 1B 78 */	or r0, r29, r3
/* 813F1BC8 | 7F E3 FB 78 */	mr r3, r31
/* 813F1BCC | 90 01 00 3C */	stw r0, 0x3c(r1)
/* 813F1BD0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813F1BD4 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813F1BD8 | 7D 89 03 A6 */	mtctr r12
/* 813F1BDC | 4E 80 04 21 */	bctrl
/* 813F1BE0 | 7F 80 1B 78 */	or r0, r28, r3
/* 813F1BE4 | 90 01 00 40 */	stw r0, 0x40(r1)
.L_813F1BE8:
/* 813F1BE8 | 38 00 00 00 */	li r0, 0x0
/* 813F1BEC | 90 01 00 28 */	stw r0, 0x28(r1)
/* 813F1BF0 | 80 1B 0B 3C */	lwz r0, 0xb3c(r27)
/* 813F1BF4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F1BF8 | 40 82 00 54 */	bne .L_813F1C4C
/* 813F1BFC | 80 1B 00 74 */	lwz r0, 0x74(r27)
/* 813F1C00 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F1C04 | 40 82 00 48 */	bne .L_813F1C4C
/* 813F1C08 | 80 6D A9 3C */	lwz r3, ScrollState___Q23www9trasition@sda21(r0)
/* 813F1C0C | 38 81 00 28 */	addi r4, r1, 0x28
/* 813F1C10 | 80 63 00 28 */	lwz r3, 0x28(r3)
/* 813F1C14 | 4B F7 BC 95 */	bl SendUIEvent__Q37ext_ead3www13BrowserThreadFPQ47ext_ead3www13BrowserThread9CmdPacket
/* 813F1C18 | 48 00 00 34 */	b .L_813F1C4C
.L_813F1C1C:
/* 813F1C1C | C0 02 88 1C */	lfs f0, lbl_81694C1C@sda21(r0)
/* 813F1C20 | 38 00 00 00 */	li r0, 0x0
/* 813F1C24 | 90 01 00 28 */	stw r0, 0x28(r1)
/* 813F1C28 | 38 81 00 28 */	addi r4, r1, 0x28
/* 813F1C2C | 80 6D A9 3C */	lwz r3, ScrollState___Q23www9trasition@sda21(r0)
/* 813F1C30 | D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 813F1C34 | D0 01 00 30 */	stfs f0, 0x30(r1)
/* 813F1C38 | 90 01 00 38 */	stw r0, 0x38(r1)
/* 813F1C3C | 90 01 00 3C */	stw r0, 0x3c(r1)
/* 813F1C40 | 90 01 00 40 */	stw r0, 0x40(r1)
/* 813F1C44 | 80 63 00 28 */	lwz r3, 0x28(r3)
/* 813F1C48 | 4B F7 BC 61 */	bl SendUIEvent__Q37ext_ead3www13BrowserThreadFPQ47ext_ead3www13BrowserThread9CmdPacket
.L_813F1C4C:
/* 813F1C4C | 39 61 00 60 */	addi r11, r1, 0x60
/* 813F1C50 | 48 20 78 BD */	bl _restgpr_27
/* 813F1C54 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 813F1C58 | 7C 08 03 A6 */	mtlr r0
/* 813F1C5C | 38 21 00 60 */	addi r1, r1, 0x60
/* 813F1C60 | 4E 80 00 20 */	blr
.endfn updateController___Q33ipl5scene7SettingFv

# .text:0x14F0 | 0x813F1C64 | size: 0x138
# ipl::scene::Setting::changeVideoMode()
.fn changeVideoMode__Q33ipl5scene7SettingFv, global
/* 813F1C64 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813F1C68 | 7C 08 02 A6 */	mflr r0
/* 813F1C6C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813F1C70 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F1C74 | 48 20 78 51 */	bl _savegpr_28
/* 813F1C78 | 7C 7F 1B 78 */	mr r31, r3
/* 813F1C7C | 48 00 7B B9 */	bl setSE__Q33ipl5scene7SettingFv
/* 813F1C80 | 38 60 00 01 */	li r3, 0x1
/* 813F1C84 | 48 14 C4 A5 */	bl VISetBlack
/* 813F1C88 | 48 14 C3 19 */	bl VIFlush
/* 813F1C8C | 48 14 B3 5D */	bl VIWaitForRetrace
/* 813F1C90 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F1C94 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F1C98 | 80 63 00 74 */	lwz r3, 0x74(r3)
/* 813F1C9C | 4B F4 C2 BD */	bl resetRenderMode__Q23ipl9FrameworkFv
/* 813F1CA0 | 48 14 3F F9 */	bl fn_81535C98
/* 813F1CA4 | 7C 7C 1B 78 */	mr r28, r3
/* 813F1CA8 | 3F A0 80 00 */	lis r29, 0x8000
/* 813F1CAC | 3B C0 03 E8 */	li r30, 0x3e8
/* 813F1CB0 | 48 00 00 08 */	b .L_813F1CB8
.L_813F1CB4:
/* 813F1CB4 | 48 14 B3 35 */	bl VIWaitForRetrace
.L_813F1CB8:
/* 813F1CB8 | 48 14 3F E1 */	bl fn_81535C98
/* 813F1CBC | 80 1D 00 F8 */	lwz r0, 0xf8(r29)
/* 813F1CC0 | 7C 7C 18 50 */	subf r3, r28, r3
/* 813F1CC4 | 54 00 F0 BE */	srwi r0, r0, 2
/* 813F1CC8 | 7C 00 F3 96 */	divwu r0, r0, r30
/* 813F1CCC | 7C 03 03 96 */	divwu r0, r3, r0
/* 813F1CD0 | 28 00 06 7C */	cmplwi r0, 0x67c
/* 813F1CD4 | 41 80 FF E0 */	blt .L_813F1CB4
/* 813F1CD8 | 48 17 82 DD */	bl SCGetAspectRatio
/* 813F1CDC | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813F1CE0 | 90 1F 0B 50 */	stw r0, 0xb50(r31)
/* 813F1CE4 | 48 17 84 AD */	bl fn_8156A190
/* 813F1CE8 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813F1CEC | 90 1F 0B 54 */	stw r0, 0xb54(r31)
/* 813F1CF0 | 48 17 83 A1 */	bl fn_8156A090
/* 813F1CF4 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 813F1CF8 | 38 00 00 00 */	li r0, 0x0
/* 813F1CFC | 90 7F 0B 58 */	stw r3, 0xb58(r31)
/* 813F1D00 | 38 60 00 00 */	li r3, 0x0
/* 813F1D04 | 90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 813F1D08 | 48 14 C4 21 */	bl VISetBlack
/* 813F1D0C | 48 14 C2 95 */	bl VIFlush
/* 813F1D10 | 48 14 B2 D9 */	bl VIWaitForRetrace
/* 813F1D14 | 4B F4 3D 79 */	bl getRegion__Q23ipl6SystemFv
/* 813F1D18 | 28 03 00 02 */	cmplwi r3, 0x2
/* 813F1D1C | 40 82 00 38 */	bne .L_813F1D54
/* 813F1D20 | 80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 813F1D24 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F1D28 | 40 82 00 14 */	bne .L_813F1D3C
/* 813F1D2C | 38 00 00 01 */	li r0, 0x1
/* 813F1D30 | 3C 60 80 00 */	lis r3, 0x8000
/* 813F1D34 | 90 03 00 CC */	stw r0, 0xcc(r3)
/* 813F1D38 | 48 00 00 1C */	b .L_813F1D54
.L_813F1D3C:
/* 813F1D3C | 38 00 00 05 */	li r0, 0x5
/* 813F1D40 | 3C 60 80 00 */	lis r3, 0x8000
/* 813F1D44 | 90 03 00 CC */	stw r0, 0xcc(r3)
/* 813F1D48 | 48 00 00 0C */	b .L_813F1D54
.L_813F1D4C:
/* 813F1D4C | 80 7F 00 C0 */	lwz r3, 0xc0(r31)
/* 813F1D50 | 4B F7 89 B5 */	bl calc__Q33ipl6layout6ObjectFv
.L_813F1D54:
/* 813F1D54 | 80 7F 00 D0 */	lwz r3, 0xd0(r31)
/* 813F1D58 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813F1D5C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813F1D60 | 41 82 FF EC */	beq .L_813F1D4C
/* 813F1D64 | 80 7F 00 CC */	lwz r3, 0xcc(r31)
/* 813F1D68 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813F1D6C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813F1D70 | 41 82 FF DC */	beq .L_813F1D4C
/* 813F1D74 | 38 60 00 14 */	li r3, 0x14
/* 813F1D78 | 38 00 00 0A */	li r0, 0xa
/* 813F1D7C | 90 7F 0B 98 */	stw r3, 0xb98(r31)
/* 813F1D80 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F1D84 | 90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 813F1D88 | 48 20 77 89 */	bl _restgpr_28
/* 813F1D8C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813F1D90 | 7C 08 03 A6 */	mtlr r0
/* 813F1D94 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813F1D98 | 4E 80 00 20 */	blr
.endfn changeVideoMode__Q33ipl5scene7SettingFv

# .text:0x1628 | 0x813F1D9C | size: 0xEC
# ipl::scene::Setting::isInitialSequenceExit(const ipl::controller::Interface*)
.fn isInitialSequenceExit__Q33ipl5scene7SettingFPCQ33ipl10controller9Interface, global
/* 813F1D9C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813F1DA0 | 7C 08 02 A6 */	mflr r0
/* 813F1DA4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813F1DA8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F1DAC | 48 20 77 1D */	bl _savegpr_29
/* 813F1DB0 | 7C 7D 1B 78 */	mr r29, r3
/* 813F1DB4 | 7C 9E 23 78 */	mr r30, r4
/* 813F1DB8 | 4B F7 2D 61 */	bl getWpadConnectedMask__Q33ipl7utility4wpadFv
/* 813F1DBC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813F1DC0 | 3C 80 00 10 */	lis r4, 0x10
/* 813F1DC4 | 7C 7F 1B 78 */	mr r31, r3
/* 813F1DC8 | 7F C3 F3 78 */	mr r3, r30
/* 813F1DCC | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813F1DD0 | 38 84 08 00 */	addi r4, r4, 0x800
/* 813F1DD4 | 7D 89 03 A6 */	mtctr r12
/* 813F1DD8 | 4E 80 04 21 */	bctrl
/* 813F1DDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F1DE0 | 40 82 00 74 */	bne .L_813F1E54
/* 813F1DE4 | 48 14 3E 9D */	bl OSGetTime
/* 813F1DE8 | 3C A0 80 00 */	lis r5, 0x8000
/* 813F1DEC | 80 DD 0B A4 */	lwz r6, 0xba4(r29)
/* 813F1DF0 | 80 A5 00 F8 */	lwz r5, 0xf8(r5)
/* 813F1DF4 | 38 00 03 E8 */	li r0, 0x3e8
/* 813F1DF8 | 7C 86 20 10 */	subfc r4, r6, r4
/* 813F1DFC | 80 FD 0B A0 */	lwz r7, 0xba0(r29)
/* 813F1E00 | 54 A6 F0 BE */	srwi r6, r5, 2
/* 813F1E04 | 38 A0 00 00 */	li r5, 0x0
/* 813F1E08 | 7C C6 03 96 */	divwu r6, r6, r0
/* 813F1E0C | 7C 67 19 10 */	subfe r3, r7, r3
/* 813F1E10 | 48 20 78 01 */	bl __div2i
/* 813F1E14 | 38 A0 00 00 */	li r5, 0x0
/* 813F1E18 | 38 C0 01 F4 */	li r6, 0x1f4
/* 813F1E1C | 6C 60 80 00 */	xoris r0, r3, 0x8000
/* 813F1E20 | 6C A5 80 00 */	xoris r5, r5, 0x8000
/* 813F1E24 | 7C 66 20 10 */	subfc r3, r6, r4
/* 813F1E28 | 7C A5 01 10 */	subfe r5, r5, r0
/* 813F1E2C | 7C A0 01 10 */	subfe r5, r0, r0
/* 813F1E30 | 7C A5 00 D1 */	neg. r5, r5
/* 813F1E34 | 40 82 00 28 */	bne .L_813F1E5C
/* 813F1E38 | 80 7D 0B A8 */	lwz r3, 0xba8(r29)
/* 813F1E3C | 7C 1F 18 40 */	cmplw r31, r3
/* 813F1E40 | 41 82 00 1C */	beq .L_813F1E5C
/* 813F1E44 | 7F E4 FB 78 */	mr r4, r31
/* 813F1E48 | 4B F7 2C 99 */	bl isIncreaseConnectedWpad__Q33ipl7utility4wpadFUlUl
/* 813F1E4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F1E50 | 41 82 00 0C */	beq .L_813F1E5C
.L_813F1E54:
/* 813F1E54 | 38 60 00 01 */	li r3, 0x1
/* 813F1E58 | 48 00 00 18 */	b .L_813F1E70
.L_813F1E5C:
/* 813F1E5C | 80 1D 0B A8 */	lwz r0, 0xba8(r29)
/* 813F1E60 | 7C 1F 00 40 */	cmplw r31, r0
/* 813F1E64 | 41 82 00 08 */	beq .L_813F1E6C
/* 813F1E68 | 93 FD 0B A8 */	stw r31, 0xba8(r29)
.L_813F1E6C:
/* 813F1E6C | 38 60 00 00 */	li r3, 0x0
.L_813F1E70:
/* 813F1E70 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F1E74 | 48 20 76 A1 */	bl _restgpr_29
/* 813F1E78 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813F1E7C | 7C 08 03 A6 */	mtlr r0
/* 813F1E80 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813F1E84 | 4E 80 00 20 */	blr
.endfn isInitialSequenceExit__Q33ipl5scene7SettingFPCQ33ipl10controller9Interface

# .text:0x1714 | 0x813F1E88 | size: 0x224
# ipl::scene::Setting::updateScreenMode()
.fn updateScreenMode__Q33ipl5scene7SettingFv, global
/* 813F1E88 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F1E8C | 7C 08 02 A6 */	mflr r0
/* 813F1E90 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F1E94 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F1E98 | 7C 7F 1B 78 */	mr r31, r3
/* 813F1E9C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813F1EA0 | 88 03 09 1E */	lbz r0, 0x91e(r3)
/* 813F1EA4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F1EA8 | 41 82 00 90 */	beq .L_813F1F38
/* 813F1EAC | 80 83 0B 94 */	lwz r4, 0xb94(r3)
/* 813F1EB0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813F1EB4 | 41 82 00 08 */	beq .L_813F1EBC
/* 813F1EB8 | 48 00 00 CC */	b .L_813F1F84
.L_813F1EBC:
/* 813F1EBC | 48 17 81 D5 */	bl fn_8156A090
/* 813F1EC0 | 80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 813F1EC4 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 813F1EC8 | 7C 00 18 00 */	cmpw r0, r3
/* 813F1ECC | 41 82 00 10 */	beq .L_813F1EDC
/* 813F1ED0 | 38 00 00 03 */	li r0, 0x3
/* 813F1ED4 | 90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 813F1ED8 | 48 00 00 20 */	b .L_813F1EF8
.L_813F1EDC:
/* 813F1EDC | 48 17 82 B5 */	bl fn_8156A190
/* 813F1EE0 | 80 1F 0B 54 */	lwz r0, 0xb54(r31)
/* 813F1EE4 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 813F1EE8 | 7C 00 18 00 */	cmpw r0, r3
/* 813F1EEC | 41 82 00 0C */	beq .L_813F1EF8
/* 813F1EF0 | 38 00 00 02 */	li r0, 0x2
/* 813F1EF4 | 90 1F 0B 94 */	stw r0, 0xb94(r31)
.L_813F1EF8:
/* 813F1EF8 | 80 9F 0B 94 */	lwz r4, 0xb94(r31)
/* 813F1EFC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813F1F00 | 41 82 00 84 */	beq .L_813F1F84
/* 813F1F04 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 813F1F08 | 41 82 00 7C */	beq .L_813F1F84
/* 813F1F0C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F1F10 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F1F14 | 80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 813F1F18 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F1F1C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813F1F20 | 7D 89 03 A6 */	mtctr r12
/* 813F1F24 | 4E 80 04 21 */	bctrl
/* 813F1F28 | 38 00 00 00 */	li r0, 0x0
/* 813F1F2C | 38 60 00 01 */	li r3, 0x1
/* 813F1F30 | 90 1F 0B 98 */	stw r0, 0xb98(r31)
/* 813F1F34 | 48 00 01 60 */	b .L_813F2094
.L_813F1F38:
/* 813F1F38 | 80 83 0B 94 */	lwz r4, 0xb94(r3)
/* 813F1F3C | 2C 04 00 01 */	cmpwi r4, 0x1
/* 813F1F40 | 40 82 00 44 */	bne .L_813F1F84
/* 813F1F44 | 80 03 00 74 */	lwz r0, 0x74(r3)
/* 813F1F48 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 813F1F4C | 40 82 00 38 */	bne .L_813F1F84
/* 813F1F50 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F1F54 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F1F58 | 80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 813F1F5C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F1F60 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813F1F64 | 7D 89 03 A6 */	mtctr r12
/* 813F1F68 | 4E 80 04 21 */	bctrl
/* 813F1F6C | 38 00 00 00 */	li r0, 0x0
/* 813F1F70 | 38 60 00 01 */	li r3, 0x1
/* 813F1F74 | 90 1F 0B 98 */	stw r0, 0xb98(r31)
/* 813F1F78 | 98 1F 09 2C */	stb r0, 0x92c(r31)
/* 813F1F7C | 90 1F 00 74 */	stw r0, 0x74(r31)
/* 813F1F80 | 48 00 01 14 */	b .L_813F2094
.L_813F1F84:
/* 813F1F84 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 813F1F88 | 41 82 00 14 */	beq .L_813F1F9C
/* 813F1F8C | 41 80 01 04 */	blt .L_813F2090
/* 813F1F90 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 813F1F94 | 40 80 00 FC */	bge .L_813F2090
/* 813F1F98 | 48 00 00 A4 */	b .L_813F203C
.L_813F1F9C:
/* 813F1F9C | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813F1FA0 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813F1FA4 | 80 7E 00 C4 */	lwz r3, 0xc4(r30)
/* 813F1FA8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F1FAC | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813F1FB0 | 7D 89 03 A6 */	mtctr r12
/* 813F1FB4 | 4E 80 04 21 */	bctrl
/* 813F1FB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F1FBC | 40 82 00 70 */	bne .L_813F202C
/* 813F1FC0 | 80 7E 00 AC */	lwz r3, 0xac(r30)
/* 813F1FC4 | 4B F5 59 41 */	bl terminate__Q23ipl12DialogWindowFv
/* 813F1FC8 | 80 1F 0B 50 */	lwz r0, 0xb50(r31)
/* 813F1FCC | 54 03 06 3E */	clrlwi r3, r0, 24
/* 813F1FD0 | 48 17 80 39 */	bl fn_8156A008
/* 813F1FD4 | 48 17 79 79 */	bl fn_8156994C
/* 813F1FD8 | 80 7E 00 AC */	lwz r3, 0xac(r30)
/* 813F1FDC | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813F1FE0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F1FE4 | 41 80 00 38 */	blt .L_813F201C
/* 813F1FE8 | 7F E3 FB 78 */	mr r3, r31
/* 813F1FEC | 4B FF FC 79 */	bl changeVideoMode__Q33ipl5scene7SettingFv
/* 813F1FF0 | 80 7E 00 90 */	lwz r3, 0x90(r30)
/* 813F1FF4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F1FF8 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813F1FFC | 7D 89 03 A6 */	mtctr r12
/* 813F2000 | 4E 80 04 21 */	bctrl
/* 813F2004 | 80 7E 00 C4 */	lwz r3, 0xc4(r30)
/* 813F2008 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F200C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813F2010 | 7D 89 03 A6 */	mtctr r12
/* 813F2014 | 4E 80 04 21 */	bctrl
/* 813F2018 | 48 00 00 78 */	b .L_813F2090
.L_813F201C:
/* 813F201C | 38 00 00 00 */	li r0, 0x0
/* 813F2020 | 38 60 00 01 */	li r3, 0x1
/* 813F2024 | 90 1F 0B 98 */	stw r0, 0xb98(r31)
/* 813F2028 | 48 00 00 6C */	b .L_813F2094
.L_813F202C:
/* 813F202C | 38 00 00 00 */	li r0, 0x0
/* 813F2030 | 38 60 00 01 */	li r3, 0x1
/* 813F2034 | 90 1F 0B 98 */	stw r0, 0xb98(r31)
/* 813F2038 | 48 00 00 5C */	b .L_813F2094
.L_813F203C:
/* 813F203C | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813F2040 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813F2044 | 80 7E 00 C4 */	lwz r3, 0xc4(r30)
/* 813F2048 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F204C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813F2050 | 7D 89 03 A6 */	mtctr r12
/* 813F2054 | 4E 80 04 21 */	bctrl
/* 813F2058 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F205C | 40 82 00 24 */	bne .L_813F2080
/* 813F2060 | 7F E3 FB 78 */	mr r3, r31
/* 813F2064 | 4B FF FC 01 */	bl changeVideoMode__Q33ipl5scene7SettingFv
/* 813F2068 | 80 7E 00 C4 */	lwz r3, 0xc4(r30)
/* 813F206C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F2070 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813F2074 | 7D 89 03 A6 */	mtctr r12
/* 813F2078 | 4E 80 04 21 */	bctrl
/* 813F207C | 48 00 00 14 */	b .L_813F2090
.L_813F2080:
/* 813F2080 | 38 00 00 00 */	li r0, 0x0
/* 813F2084 | 38 60 00 01 */	li r3, 0x1
/* 813F2088 | 90 1F 0B 98 */	stw r0, 0xb98(r31)
/* 813F208C | 48 00 00 08 */	b .L_813F2094
.L_813F2090:
/* 813F2090 | 38 60 00 00 */	li r3, 0x0
.L_813F2094:
/* 813F2094 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F2098 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F209C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813F20A0 | 7C 08 03 A6 */	mtlr r0
/* 813F20A4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F20A8 | 4E 80 00 20 */	blr
.endfn updateScreenMode__Q33ipl5scene7SettingFv

# .text:0x1938 | 0x813F20AC | size: 0x1218
# ipl::scene::Setting::calcNormal()
.fn calcNormal__Q33ipl5scene7SettingFv, global
/* 813F20AC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813F20B0 | 7C 08 02 A6 */	mflr r0
/* 813F20B4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813F20B8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F20BC | 48 20 74 0D */	bl _savegpr_29
/* 813F20C0 | 88 03 00 5C */	lbz r0, 0x5c(r3)
/* 813F20C4 | 3F E0 81 65 */	lis r31, lbl_816568E8@ha
/* 813F20C8 | 7C 7D 1B 78 */	mr r29, r3
/* 813F20CC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F20D0 | 3B FF 68 E8 */	addi r31, r31, lbl_816568E8@l
/* 813F20D4 | 40 82 02 68 */	bne .L_813F233C
/* 813F20D8 | 4B FF E7 D1 */	bl getFuncMsgQ__Q33ipl5scene7SettingFv
/* 813F20DC | 4B F4 38 DD */	bl getYoungController__Q23ipl6SystemFv
/* 813F20E0 | 80 9D 0B 98 */	lwz r4, 0xb98(r29)
/* 813F20E4 | 7C 7E 1B 78 */	mr r30, r3
/* 813F20E8 | 38 04 00 01 */	addi r0, r4, 0x1
/* 813F20EC | 2C 00 00 14 */	cmpwi r0, 0x14
/* 813F20F0 | 90 1D 0B 98 */	stw r0, 0xb98(r29)
/* 813F20F4 | 40 81 00 0C */	ble .L_813F2100
/* 813F20F8 | 38 00 00 14 */	li r0, 0x14
/* 813F20FC | 90 1D 0B 98 */	stw r0, 0xb98(r29)
.L_813F2100:
/* 813F2100 | 80 7D 0B 9C */	lwz r3, 0xb9c(r29)
/* 813F2104 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F2108 | 40 81 00 0C */	ble .L_813F2114
/* 813F210C | 38 03 00 01 */	addi r0, r3, 0x1
/* 813F2110 | 90 1D 0B 9C */	stw r0, 0xb9c(r29)
.L_813F2114:
/* 813F2114 | 80 1D 0B 9C */	lwz r0, 0xb9c(r29)
/* 813F2118 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 813F211C | 40 81 00 0C */	ble .L_813F2128
/* 813F2120 | 38 00 00 0A */	li r0, 0xa
/* 813F2124 | 90 1D 0B 9C */	stw r0, 0xb9c(r29)
.L_813F2128:
/* 813F2128 | 7F A3 EB 78 */	mr r3, r29
/* 813F212C | 4B FF FD 5D */	bl updateScreenMode__Q33ipl5scene7SettingFv
/* 813F2130 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F2134 | 41 82 00 0C */	beq .L_813F2140
/* 813F2138 | 38 60 00 00 */	li r3, 0x0
/* 813F213C | 48 00 11 70 */	b .L_813F32AC
.L_813F2140:
/* 813F2140 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813F2144 | 41 82 00 C0 */	beq .L_813F2204
/* 813F2148 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813F214C | 3C 80 00 10 */	lis r4, 0x10
/* 813F2150 | 7F C3 F3 78 */	mr r3, r30
/* 813F2154 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813F2158 | 38 84 08 00 */	addi r4, r4, 0x800
/* 813F215C | 7D 89 03 A6 */	mtctr r12
/* 813F2160 | 4E 80 04 21 */	bctrl
/* 813F2164 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F2168 | 41 82 00 54 */	beq .L_813F21BC
/* 813F216C | 80 7D 09 24 */	lwz r3, 0x924(r29)
/* 813F2170 | 88 03 00 12 */	lbz r0, 0x12(r3)
/* 813F2174 | 28 00 00 1E */	cmplwi r0, 0x1e
/* 813F2178 | 40 82 00 44 */	bne .L_813F21BC
/* 813F217C | 88 1D 09 2C */	lbz r0, 0x92c(r29)
/* 813F2180 | 28 00 00 1E */	cmplwi r0, 0x1e
/* 813F2184 | 41 80 00 38 */	blt .L_813F21BC
/* 813F2188 | 28 00 00 78 */	cmplwi r0, 0x78
/* 813F218C | 40 80 00 30 */	bge .L_813F21BC
/* 813F2190 | 38 00 00 78 */	li r0, 0x78
/* 813F2194 | 38 60 00 01 */	li r3, 0x1
/* 813F2198 | 98 1D 09 2C */	stb r0, 0x92c(r29)
/* 813F219C | 4B F7 EF D9 */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F21A0 | 80 9D 09 24 */	lwz r4, 0x924(r29)
/* 813F21A4 | 38 00 00 01 */	li r0, 0x1
/* 813F21A8 | 7F A3 EB 78 */	mr r3, r29
/* 813F21AC | 98 04 00 37 */	stb r0, 0x37(r4)
/* 813F21B0 | 48 00 76 85 */	bl setSE__Q33ipl5scene7SettingFv
/* 813F21B4 | 38 00 00 00 */	li r0, 0x0
/* 813F21B8 | 90 1D 0B 9C */	stw r0, 0xb9c(r29)
.L_813F21BC:
/* 813F21BC | 7F A3 EB 78 */	mr r3, r29
/* 813F21C0 | 7F C4 F3 78 */	mr r4, r30
/* 813F21C4 | 4B FF FB D9 */	bl isInitialSequenceExit__Q33ipl5scene7SettingFPCQ33ipl10controller9Interface
/* 813F21C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F21CC | 41 82 00 38 */	beq .L_813F2204
/* 813F21D0 | 80 7D 09 24 */	lwz r3, 0x924(r29)
/* 813F21D4 | 88 03 00 12 */	lbz r0, 0x12(r3)
/* 813F21D8 | 28 00 00 1F */	cmplwi r0, 0x1f
/* 813F21DC | 40 82 00 28 */	bne .L_813F2204
/* 813F21E0 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813F21E4 | 38 9F 06 23 */	addi r4, r31, 0x623
/* 813F21E8 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813F21EC | 4B F7 92 81 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813F21F0 | 38 60 00 01 */	li r3, 0x1
/* 813F21F4 | 4B F7 EF 81 */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F21F8 | 80 7D 09 24 */	lwz r3, 0x924(r29)
/* 813F21FC | 38 00 00 00 */	li r0, 0x0
/* 813F2200 | 98 03 00 12 */	stb r0, 0x12(r3)
.L_813F2204:
/* 813F2204 | 88 1D 0B AC */	lbz r0, 0xbac(r29)
/* 813F2208 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F220C | 40 82 00 30 */	bne .L_813F223C
/* 813F2210 | 80 1D 0B 9C */	lwz r0, 0xb9c(r29)
/* 813F2214 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 813F2218 | 40 82 00 24 */	bne .L_813F223C
/* 813F221C | 80 7D 09 34 */	lwz r3, 0x934(r29)
/* 813F2220 | 88 03 06 0E */	lbz r0, 0x60e(r3)
/* 813F2224 | 7C 00 07 75 */	extsb. r0, r0
/* 813F2228 | 41 82 00 14 */	beq .L_813F223C
/* 813F222C | 38 60 00 01 */	li r3, 0x1
/* 813F2230 | 4B F7 EF 45 */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F2234 | 38 00 00 01 */	li r0, 0x1
/* 813F2238 | 98 1D 0B AC */	stb r0, 0xbac(r29)
.L_813F223C:
/* 813F223C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F2240 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F2244 | 80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 813F2248 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F224C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813F2250 | 7D 89 03 A6 */	mtctr r12
/* 813F2254 | 4E 80 04 21 */	bctrl
/* 813F2258 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813F225C | 40 82 00 0C */	bne .L_813F2268
/* 813F2260 | 7F A3 EB 78 */	mr r3, r29
/* 813F2264 | 4B FF F8 11 */	bl updateController___Q33ipl5scene7SettingFv
.L_813F2268:
/* 813F2268 | 80 6D A9 3C */	lwz r3, ScrollState___Q23www9trasition@sda21(r0)
/* 813F226C | 80 9D 09 20 */	lwz r4, 0x920(r29)
/* 813F2270 | 80 63 00 28 */	lwz r3, 0x28(r3)
/* 813F2274 | 4B F7 B8 CD */	bl ReceiveWindowEvent__Q37ext_ead3www13BrowserThreadFPQ37ext_ead3www7ImeData
/* 813F2278 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F227C | 41 82 00 C0 */	beq .L_813F233C
/* 813F2280 | 80 7D 09 20 */	lwz r3, 0x920(r29)
/* 813F2284 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 813F2288 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F228C | 40 82 00 A4 */	bne .L_813F2330
/* 813F2290 | 38 7F 06 32 */	addi r3, r31, 0x632
/* 813F2294 | 4C C6 31 82 */	crclr cr1eq
/* 813F2298 | 48 13 C4 09 */	bl OSReport
/* 813F229C | 80 7D 09 20 */	lwz r3, 0x920(r29)
/* 813F22A0 | 80 83 00 08 */	lwz r4, 0x8(r3)
/* 813F22A4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813F22A8 | 41 82 00 78 */	beq .L_813F2320
/* 813F22AC | 38 7F 06 3F */	addi r3, r31, 0x63f
/* 813F22B0 | 4C C6 31 82 */	crclr cr1eq
/* 813F22B4 | 48 13 C3 ED */	bl OSReport
/* 813F22B8 | 80 9D 09 24 */	lwz r4, 0x924(r29)
/* 813F22BC | 38 7F 06 50 */	addi r3, r31, 0x650
/* 813F22C0 | 88 84 00 11 */	lbz r4, 0x11(r4)
/* 813F22C4 | 4C C6 31 82 */	crclr cr1eq
/* 813F22C8 | 48 13 C3 D9 */	bl OSReport
/* 813F22CC | 80 7D 09 24 */	lwz r3, 0x924(r29)
/* 813F22D0 | 88 03 00 11 */	lbz r0, 0x11(r3)
/* 813F22D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F22D8 | 41 82 00 20 */	beq .L_813F22F8
/* 813F22DC | 38 00 00 01 */	li r0, 0x1
/* 813F22E0 | 80 9D 09 20 */	lwz r4, 0x920(r29)
/* 813F22E4 | 90 1D 00 74 */	stw r0, 0x74(r29)
/* 813F22E8 | 7F A3 EB 78 */	mr r3, r29
/* 813F22EC | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 813F22F0 | 48 00 1E A5 */	bl initKeyboard__Q33ipl5scene7SettingFPCc
/* 813F22F4 | 48 00 00 48 */	b .L_813F233C
.L_813F22F8:
/* 813F22F8 | 80 9D 09 20 */	lwz r4, 0x920(r29)
/* 813F22FC | 80 6D A9 3C */	lwz r3, ScrollState___Q23www9trasition@sda21(r0)
/* 813F2300 | 80 A4 00 08 */	lwz r5, 0x8(r4)
/* 813F2304 | 80 63 00 28 */	lwz r3, 0x28(r3)
/* 813F2308 | 4B F7 BA 0D */	bl CommitIme__Q37ext_ead3www13BrowserThreadFPQ37ext_ead3www7ImeDataPCc
/* 813F230C | 80 6D A9 3C */	lwz r3, ScrollState___Q23www9trasition@sda21(r0)
/* 813F2310 | 80 9D 09 20 */	lwz r4, 0x920(r29)
/* 813F2314 | 80 63 00 28 */	lwz r3, 0x28(r3)
/* 813F2318 | 4B F7 B9 F5 */	bl DisposeImeData__Q37ext_ead3www13BrowserThreadFPQ37ext_ead3www7ImeData
/* 813F231C | 48 00 00 20 */	b .L_813F233C
.L_813F2320:
/* 813F2320 | 38 7F 06 61 */	addi r3, r31, 0x661
/* 813F2324 | 4C C6 31 82 */	crclr cr1eq
/* 813F2328 | 48 13 C3 79 */	bl OSReport
/* 813F232C | 48 00 00 10 */	b .L_813F233C
.L_813F2330:
/* 813F2330 | 38 7F 06 6B */	addi r3, r31, 0x66b
/* 813F2334 | 4C C6 31 82 */	crclr cr1eq
/* 813F2338 | 48 13 C3 69 */	bl OSReport
.L_813F233C:
/* 813F233C | 80 1D 00 74 */	lwz r0, 0x74(r29)
/* 813F2340 | 28 00 00 11 */	cmplwi r0, 0x11
/* 813F2344 | 41 81 07 34 */	bgt .L_813F2A78
/* 813F2348 | 3C 60 81 65 */	lis r3, jumptable_81657100@ha
/* 813F234C | 54 00 10 3A */	slwi r0, r0, 2
/* 813F2350 | 38 63 71 00 */	addi r3, r3, jumptable_81657100@l
/* 813F2354 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813F2358 | 7C 69 03 A6 */	mtctr r3
/* 813F235C | 4E 80 04 20 */	bctr
.L_813F2360:
/* 813F2360 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F2364 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F2368 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813F236C | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813F2370 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F2374 | 41 80 07 04 */	blt .L_813F2A78
/* 813F2378 | 38 60 00 01 */	li r3, 0x1
/* 813F237C | 38 00 00 00 */	li r0, 0x0
/* 813F2380 | 90 7D 0B 9C */	stw r3, 0xb9c(r29)
/* 813F2384 | 90 1D 00 74 */	stw r0, 0x74(r29)
/* 813F2388 | 98 7D 0B 5C */	stb r3, 0xb5c(r29)
/* 813F238C | 48 00 06 EC */	b .L_813F2A78
.L_813F2390:
/* 813F2390 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F2394 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F2398 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813F239C | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813F23A0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813F23A4 | 40 82 00 3C */	bne .L_813F23E0
/* 813F23A8 | 80 1D 0B 9C */	lwz r0, 0xb9c(r29)
/* 813F23AC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F23B0 | 40 82 00 10 */	bne .L_813F23C0
/* 813F23B4 | 38 60 00 01 */	li r3, 0x1
/* 813F23B8 | 4B F7 ED BD */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F23BC | 48 00 00 18 */	b .L_813F23D4
.L_813F23C0:
/* 813F23C0 | 4B F7 ED F5 */	bl getFuncResult__Q23www10wiisettingFv
/* 813F23C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F23C8 | 40 82 00 0C */	bne .L_813F23D4
/* 813F23CC | 38 00 00 00 */	li r0, 0x0
/* 813F23D0 | 90 1D 00 74 */	stw r0, 0x74(r29)
.L_813F23D4:
/* 813F23D4 | 38 00 00 01 */	li r0, 0x1
/* 813F23D8 | 90 1D 0B 9C */	stw r0, 0xb9c(r29)
/* 813F23DC | 48 00 06 9C */	b .L_813F2A78
.L_813F23E0:
/* 813F23E0 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813F23E4 | 40 82 06 94 */	bne .L_813F2A78
/* 813F23E8 | 80 1D 0B 9C */	lwz r0, 0xb9c(r29)
/* 813F23EC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F23F0 | 40 82 00 10 */	bne .L_813F2400
/* 813F23F4 | 38 60 00 02 */	li r3, 0x2
/* 813F23F8 | 4B F7 ED 7D */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F23FC | 48 00 00 18 */	b .L_813F2414
.L_813F2400:
/* 813F2400 | 4B F7 ED B5 */	bl getFuncResult__Q23www10wiisettingFv
/* 813F2404 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F2408 | 40 82 00 0C */	bne .L_813F2414
/* 813F240C | 38 00 00 00 */	li r0, 0x0
/* 813F2410 | 90 1D 00 74 */	stw r0, 0x74(r29)
.L_813F2414:
/* 813F2414 | 38 00 00 01 */	li r0, 0x1
/* 813F2418 | 90 1D 0B 9C */	stw r0, 0xb9c(r29)
/* 813F241C | 48 00 06 5C */	b .L_813F2A78
.L_813F2420:
/* 813F2420 | 38 00 00 01 */	li r0, 0x1
/* 813F2424 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813F2428 | 98 1D 09 2C */	stb r0, 0x92c(r29)
/* 813F242C | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813F2430 | 80 7E 00 B4 */	lwz r3, 0xb4(r30)
/* 813F2434 | 4B F5 5E E5 */	bl disable__Q23ipl14HomeButtonMenuFv
/* 813F2438 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F243C | 41 82 06 3C */	beq .L_813F2A78
/* 813F2440 | 80 7E 00 AC */	lwz r3, 0xac(r30)
/* 813F2444 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813F2448 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F244C | 41 80 06 2C */	blt .L_813F2A78
/* 813F2450 | 38 00 00 00 */	li r0, 0x0
/* 813F2454 | 90 1D 00 74 */	stw r0, 0x74(r29)
/* 813F2458 | 48 00 06 20 */	b .L_813F2A78
.L_813F245C:
/* 813F245C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F2460 | 38 80 00 1B */	li r4, 0x1b
/* 813F2464 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F2468 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813F246C | 48 01 8C CD */	bl getScene__Q33ipl5scene7ManagerFi
/* 813F2470 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F2474 | 41 82 00 60 */	beq .L_813F24D4
/* 813F2478 | 38 00 00 01 */	li r0, 0x1
/* 813F247C | 98 1D 09 1F */	stb r0, 0x91f(r29)
/* 813F2480 | 80 03 00 70 */	lwz r0, 0x70(r3)
/* 813F2484 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813F2488 | 41 82 00 34 */	beq .L_813F24BC
/* 813F248C | 40 80 00 10 */	bge .L_813F249C
/* 813F2490 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813F2494 | 40 80 00 14 */	bge .L_813F24A8
/* 813F2498 | 48 00 05 E0 */	b .L_813F2A78
.L_813F249C:
/* 813F249C | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813F24A0 | 40 80 05 D8 */	bge .L_813F2A78
/* 813F24A4 | 48 00 00 24 */	b .L_813F24C8
.L_813F24A8:
/* 813F24A8 | 38 00 00 06 */	li r0, 0x6
/* 813F24AC | 38 60 00 01 */	li r3, 0x1
/* 813F24B0 | 90 1D 00 74 */	stw r0, 0x74(r29)
/* 813F24B4 | 4B F7 EC C1 */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F24B8 | 48 00 05 C0 */	b .L_813F2A78
.L_813F24BC:
/* 813F24BC | 38 60 00 02 */	li r3, 0x2
/* 813F24C0 | 4B F7 EC B5 */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F24C4 | 48 00 05 B4 */	b .L_813F2A78
.L_813F24C8:
/* 813F24C8 | 38 60 00 02 */	li r3, 0x2
/* 813F24CC | 4B F7 EC A9 */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F24D0 | 48 00 05 A8 */	b .L_813F2A78
.L_813F24D4:
/* 813F24D4 | 88 1D 09 1F */	lbz r0, 0x91f(r29)
/* 813F24D8 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813F24DC | 40 82 05 9C */	bne .L_813F2A78
/* 813F24E0 | 38 00 00 00 */	li r0, 0x0
/* 813F24E4 | 7F A3 EB 78 */	mr r3, r29
/* 813F24E8 | 90 1D 00 74 */	stw r0, 0x74(r29)
/* 813F24EC | 98 1D 09 1F */	stb r0, 0x91f(r29)
/* 813F24F0 | 4B FF E4 21 */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
/* 813F24F4 | 80 7D 09 28 */	lwz r3, 0x928(r29)
/* 813F24F8 | 88 03 00 04 */	lbz r0, 0x4(r3)
/* 813F24FC | 28 00 00 4F */	cmplwi r0, 0x4f
/* 813F2500 | 41 82 05 78 */	beq .L_813F2A78
/* 813F2504 | 38 00 00 01 */	li r0, 0x1
/* 813F2508 | 90 1D 0B 9C */	stw r0, 0xb9c(r29)
/* 813F250C | 48 00 05 6C */	b .L_813F2A78
.L_813F2510:
/* 813F2510 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813F2514 | 38 80 00 1B */	li r4, 0x1b
/* 813F2518 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813F251C | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813F2520 | 48 01 8C 19 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813F2524 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F2528 | 40 82 05 50 */	bne .L_813F2A78
/* 813F252C | 3B C0 00 00 */	li r30, 0x0
/* 813F2530 | 80 7D 09 28 */	lwz r3, 0x928(r29)
/* 813F2534 | 9B DD 09 1F */	stb r30, 0x91f(r29)
/* 813F2538 | 88 03 00 04 */	lbz r0, 0x4(r3)
/* 813F253C | 28 00 00 4F */	cmplwi r0, 0x4f
/* 813F2540 | 40 82 00 CC */	bne .L_813F260C
/* 813F2544 | 48 00 94 01 */	bl getEnableFlag__Q33ipl3ncd10NCDSettingFv
/* 813F2548 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F254C | 41 82 00 74 */	beq .L_813F25C0
/* 813F2550 | 48 17 82 8D */	bl fn_8156A7DC
/* 813F2554 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F2558 | 41 82 00 1C */	beq .L_813F2574
/* 813F255C | 38 60 00 06 */	li r3, 0x6
/* 813F2560 | 4B F7 EC 15 */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F2564 | 93 DD 00 74 */	stw r30, 0x74(r29)
/* 813F2568 | 7F A3 EB 78 */	mr r3, r29
/* 813F256C | 4B FF E3 A5 */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
/* 813F2570 | 48 00 05 08 */	b .L_813F2A78
.L_813F2574:
/* 813F2574 | 4B F4 35 19 */	bl getRegion__Q23ipl6SystemFv
/* 813F2578 | 28 03 00 02 */	cmplwi r3, 0x2
/* 813F257C | 41 82 00 20 */	beq .L_813F259C
/* 813F2580 | 80 7F 00 AC */	lwz r3, 0xac(r31)
/* 813F2584 | 38 80 01 72 */	li r4, 0x172
/* 813F2588 | 38 A0 00 2E */	li r5, 0x2e
/* 813F258C | 38 C0 00 25 */	li r6, 0x25
/* 813F2590 | 38 E0 00 00 */	li r7, 0x0
/* 813F2594 | 4B F5 45 41 */	bl callBtn2__Q23ipl12DialogWindowFUlUlUlb
/* 813F2598 | 48 00 00 1C */	b .L_813F25B4
.L_813F259C:
/* 813F259C | 80 7F 00 AC */	lwz r3, 0xac(r31)
/* 813F25A0 | 38 80 01 75 */	li r4, 0x175
/* 813F25A4 | 38 A0 00 2E */	li r5, 0x2e
/* 813F25A8 | 38 C0 00 25 */	li r6, 0x25
/* 813F25AC | 38 E0 00 00 */	li r7, 0x0
/* 813F25B0 | 4B F5 45 25 */	bl callBtn2__Q23ipl12DialogWindowFUlUlUlb
.L_813F25B4:
/* 813F25B4 | 38 00 00 0E */	li r0, 0xe
/* 813F25B8 | 90 1D 00 74 */	stw r0, 0x74(r29)
/* 813F25BC | 48 00 04 BC */	b .L_813F2A78
.L_813F25C0:
/* 813F25C0 | 4B F4 34 CD */	bl getRegion__Q23ipl6SystemFv
/* 813F25C4 | 28 03 00 02 */	cmplwi r3, 0x2
/* 813F25C8 | 41 82 00 20 */	beq .L_813F25E8
/* 813F25CC | 80 7F 00 AC */	lwz r3, 0xac(r31)
/* 813F25D0 | 38 80 01 70 */	li r4, 0x170
/* 813F25D4 | 38 A0 01 46 */	li r5, 0x146
/* 813F25D8 | 38 C0 00 25 */	li r6, 0x25
/* 813F25DC | 38 E0 00 00 */	li r7, 0x0
/* 813F25E0 | 4B F5 44 F5 */	bl callBtn2__Q23ipl12DialogWindowFUlUlUlb
/* 813F25E4 | 48 00 00 1C */	b .L_813F2600
.L_813F25E8:
/* 813F25E8 | 80 7F 00 AC */	lwz r3, 0xac(r31)
/* 813F25EC | 38 80 01 74 */	li r4, 0x174
/* 813F25F0 | 38 A0 01 46 */	li r5, 0x146
/* 813F25F4 | 38 C0 00 25 */	li r6, 0x25
/* 813F25F8 | 38 E0 00 00 */	li r7, 0x0
/* 813F25FC | 4B F5 44 D9 */	bl callBtn2__Q23ipl12DialogWindowFUlUlUlb
.L_813F2600:
/* 813F2600 | 38 00 00 09 */	li r0, 0x9
/* 813F2604 | 90 1D 00 74 */	stw r0, 0x74(r29)
/* 813F2608 | 48 00 04 70 */	b .L_813F2A78
.L_813F260C:
/* 813F260C | 93 DD 00 74 */	stw r30, 0x74(r29)
/* 813F2610 | 48 00 04 68 */	b .L_813F2A78
.L_813F2614:
/* 813F2614 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813F2618 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813F261C | 80 7E 00 AC */	lwz r3, 0xac(r30)
/* 813F2620 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813F2624 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813F2628 | 40 82 00 78 */	bne .L_813F26A0
/* 813F262C | 38 60 00 01 */	li r3, 0x1
/* 813F2630 | 4B F7 EB 45 */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F2634 | 48 17 81 ED */	bl fn_8156A820
/* 813F2638 | 54 63 00 3C */	clrrwi r3, r3, 1
/* 813F263C | 48 17 82 21 */	bl fn_8156A85C
/* 813F2640 | 38 00 00 00 */	li r0, 0x0
/* 813F2644 | 38 61 00 0C */	addi r3, r1, 0xc
/* 813F2648 | 98 01 00 0C */	stb r0, 0xc(r1)
/* 813F264C | 98 01 00 0D */	stb r0, 0xd(r1)
/* 813F2650 | 48 17 7A A9 */	bl fn_8156A0F8
/* 813F2654 | 88 1E 02 BC */	lbz r0, 0x2bc(r30)
/* 813F2658 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F265C | 41 82 00 0C */	beq .L_813F2668
/* 813F2660 | 38 60 00 00 */	li r3, 0x0
/* 813F2664 | 48 00 00 08 */	b .L_813F266C
.L_813F2668:
/* 813F2668 | 80 7E 00 8C */	lwz r3, 0x8c(r30)
.L_813F266C:
/* 813F266C | 38 80 00 01 */	li r4, 0x1
/* 813F2670 | 4B F4 FD F9 */	bl enableLedNotification__Q33ipl5nwc247ManagerFi
/* 813F2674 | 38 60 00 00 */	li r3, 0x0
/* 813F2678 | 48 17 81 A1 */	bl fn_8156A818
/* 813F267C | 48 00 93 0D */	bl adjustNWC24Flag__Q33ipl3ncd10NCDSettingFv
/* 813F2680 | 80 7D 09 24 */	lwz r3, 0x924(r29)
/* 813F2684 | 88 63 00 3C */	lbz r3, 0x3c(r3)
/* 813F2688 | 48 00 98 E9 */	bl setCountry__Q33ipl8parental8ParentalFUc
/* 813F268C | 48 00 9A 91 */	bl clear__Q33ipl8parental8ParentalFv
/* 813F2690 | 4B F4 16 CD */	bl reloadDownloadTask__Q23ipl6SystemFv
/* 813F2694 | 38 00 00 00 */	li r0, 0x0
/* 813F2698 | 90 1D 00 74 */	stw r0, 0x74(r29)
/* 813F269C | 48 00 03 DC */	b .L_813F2A78
.L_813F26A0:
/* 813F26A0 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813F26A4 | 40 82 03 D4 */	bne .L_813F2A78
/* 813F26A8 | 38 60 00 02 */	li r3, 0x2
/* 813F26AC | 4B F7 EA C9 */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F26B0 | 38 60 00 00 */	li r3, 0x0
/* 813F26B4 | 38 00 00 01 */	li r0, 0x1
/* 813F26B8 | 90 7D 00 74 */	stw r3, 0x74(r29)
/* 813F26BC | 90 1D 0B 9C */	stw r0, 0xb9c(r29)
/* 813F26C0 | 48 00 03 B8 */	b .L_813F2A78
.L_813F26C4:
/* 813F26C4 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813F26C8 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813F26CC | 80 7E 00 AC */	lwz r3, 0xac(r30)
/* 813F26D0 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813F26D4 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813F26D8 | 40 82 00 BC */	bne .L_813F2794
/* 813F26DC | 4B F4 33 B1 */	bl getRegion__Q23ipl6SystemFv
/* 813F26E0 | 28 03 00 02 */	cmplwi r3, 0x2
/* 813F26E4 | 41 82 00 18 */	beq .L_813F26FC
/* 813F26E8 | 80 7E 00 AC */	lwz r3, 0xac(r30)
/* 813F26EC | 38 80 01 72 */	li r4, 0x172
/* 813F26F0 | 38 A0 00 01 */	li r5, 0x1
/* 813F26F4 | 4B F5 40 05 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 813F26F8 | 48 00 00 14 */	b .L_813F270C
.L_813F26FC:
/* 813F26FC | 80 7E 00 AC */	lwz r3, 0xac(r30)
/* 813F2700 | 38 80 01 75 */	li r4, 0x175
/* 813F2704 | 38 A0 00 01 */	li r5, 0x1
/* 813F2708 | 4B F5 3F F1 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
.L_813F270C:
/* 813F270C | 38 00 00 0B */	li r0, 0xb
/* 813F2710 | 90 1D 00 74 */	stw r0, 0x74(r29)
/* 813F2714 | 48 17 81 0D */	bl fn_8156A820
/* 813F2718 | 54 63 00 3C */	clrrwi r3, r3, 1
/* 813F271C | 48 17 81 41 */	bl fn_8156A85C
/* 813F2720 | 38 00 00 00 */	li r0, 0x0
/* 813F2724 | 38 61 00 0A */	addi r3, r1, 0xa
/* 813F2728 | 98 01 00 0A */	stb r0, 0xa(r1)
/* 813F272C | 98 01 00 0B */	stb r0, 0xb(r1)
/* 813F2730 | 48 17 79 C9 */	bl fn_8156A0F8
/* 813F2734 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F2738 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F273C | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 813F2740 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F2744 | 41 82 00 0C */	beq .L_813F2750
/* 813F2748 | 38 60 00 00 */	li r3, 0x0
/* 813F274C | 48 00 00 08 */	b .L_813F2754
.L_813F2750:
/* 813F2750 | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_813F2754:
/* 813F2754 | 38 80 00 01 */	li r4, 0x1
/* 813F2758 | 4B F4 FD 11 */	bl enableLedNotification__Q33ipl5nwc247ManagerFi
/* 813F275C | 38 60 00 00 */	li r3, 0x0
/* 813F2760 | 48 17 80 B9 */	bl fn_8156A818
/* 813F2764 | 48 00 92 25 */	bl adjustNWC24Flag__Q33ipl3ncd10NCDSettingFv
/* 813F2768 | 80 1D 0B 4C */	lwz r0, 0xb4c(r29)
/* 813F276C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813F2770 | 41 82 00 0C */	beq .L_813F277C
/* 813F2774 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813F2778 | 40 82 00 14 */	bne .L_813F278C
.L_813F277C:
/* 813F277C | 38 60 00 01 */	li r3, 0x1
/* 813F2780 | 48 17 7F AD */	bl fn_8156A72C
/* 813F2784 | 38 60 00 01 */	li r3, 0x1
/* 813F2788 | 48 17 7F E9 */	bl fn_8156A770
.L_813F278C:
/* 813F278C | 48 17 71 C1 */	bl fn_8156994C
/* 813F2790 | 48 00 02 E8 */	b .L_813F2A78
.L_813F2794:
/* 813F2794 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813F2798 | 40 82 02 E0 */	bne .L_813F2A78
/* 813F279C | 38 60 00 00 */	li r3, 0x0
/* 813F27A0 | 38 00 00 01 */	li r0, 0x1
/* 813F27A4 | 90 7D 00 80 */	stw r3, 0x80(r29)
/* 813F27A8 | 90 1D 0B 9C */	stw r0, 0xb9c(r29)
/* 813F27AC | 90 7D 00 74 */	stw r3, 0x74(r29)
/* 813F27B0 | 48 00 02 C8 */	b .L_813F2A78
.L_813F27B4:
/* 813F27B4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F27B8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F27BC | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813F27C0 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813F27C4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F27C8 | 41 80 02 B0 */	blt .L_813F2A78
/* 813F27CC | 38 00 00 0A */	li r0, 0xa
/* 813F27D0 | 80 7D 09 28 */	lwz r3, 0x928(r29)
/* 813F27D4 | 90 1D 00 80 */	stw r0, 0x80(r29)
/* 813F27D8 | 38 80 00 54 */	li r4, 0x54
/* 813F27DC | 38 00 00 00 */	li r0, 0x0
/* 813F27E0 | 98 83 00 04 */	stb r4, 0x4(r3)
/* 813F27E4 | 90 1D 00 74 */	stw r0, 0x74(r29)
/* 813F27E8 | 48 00 02 90 */	b .L_813F2A78
.L_813F27EC:
/* 813F27EC | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813F27F0 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813F27F4 | 80 7E 00 AC */	lwz r3, 0xac(r30)
/* 813F27F8 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813F27FC | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813F2800 | 40 82 00 A0 */	bne .L_813F28A0
/* 813F2804 | 48 17 80 1D */	bl fn_8156A820
/* 813F2808 | 54 63 00 3C */	clrrwi r3, r3, 1
/* 813F280C | 48 17 80 51 */	bl fn_8156A85C
/* 813F2810 | 38 00 00 00 */	li r0, 0x0
/* 813F2814 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F2818 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 813F281C | 98 01 00 09 */	stb r0, 0x9(r1)
/* 813F2820 | 48 17 78 D9 */	bl fn_8156A0F8
/* 813F2824 | 88 1E 02 BC */	lbz r0, 0x2bc(r30)
/* 813F2828 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F282C | 41 82 00 0C */	beq .L_813F2838
/* 813F2830 | 38 60 00 00 */	li r3, 0x0
/* 813F2834 | 48 00 00 08 */	b .L_813F283C
.L_813F2838:
/* 813F2838 | 80 7E 00 8C */	lwz r3, 0x8c(r30)
.L_813F283C:
/* 813F283C | 38 80 00 01 */	li r4, 0x1
/* 813F2840 | 4B F4 FC 29 */	bl enableLedNotification__Q33ipl5nwc247ManagerFi
/* 813F2844 | 38 60 00 00 */	li r3, 0x0
/* 813F2848 | 48 17 7F D1 */	bl fn_8156A818
/* 813F284C | 48 00 91 3D */	bl adjustNWC24Flag__Q33ipl3ncd10NCDSettingFv
/* 813F2850 | 48 17 70 FD */	bl fn_8156994C
/* 813F2854 | 4B F4 32 39 */	bl getRegion__Q23ipl6SystemFv
/* 813F2858 | 28 03 00 02 */	cmplwi r3, 0x2
/* 813F285C | 41 82 00 20 */	beq .L_813F287C
/* 813F2860 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F2864 | 38 80 01 70 */	li r4, 0x170
/* 813F2868 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F286C | 38 A0 00 2E */	li r5, 0x2e
/* 813F2870 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813F2874 | 4B F5 3E 85 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 813F2878 | 48 00 00 1C */	b .L_813F2894
.L_813F287C:
/* 813F287C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F2880 | 38 80 01 74 */	li r4, 0x174
/* 813F2884 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F2888 | 38 A0 00 2E */	li r5, 0x2e
/* 813F288C | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813F2890 | 4B F5 3E 69 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
.L_813F2894:
/* 813F2894 | 38 00 00 09 */	li r0, 0x9
/* 813F2898 | 90 1D 00 74 */	stw r0, 0x74(r29)
/* 813F289C | 48 00 01 DC */	b .L_813F2A78
.L_813F28A0:
/* 813F28A0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813F28A4 | 40 82 01 D4 */	bne .L_813F2A78
/* 813F28A8 | 38 60 00 01 */	li r3, 0x1
/* 813F28AC | 38 00 00 00 */	li r0, 0x0
/* 813F28B0 | 90 7D 0B 9C */	stw r3, 0xb9c(r29)
/* 813F28B4 | 90 1D 00 74 */	stw r0, 0x74(r29)
/* 813F28B8 | 48 00 01 C0 */	b .L_813F2A78
.L_813F28BC:
/* 813F28BC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F28C0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F28C4 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813F28C8 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813F28CC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813F28D0 | 40 82 00 18 */	bne .L_813F28E8
/* 813F28D4 | 38 60 00 08 */	li r3, 0x8
/* 813F28D8 | 4B F7 E8 9D */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F28DC | 38 00 00 00 */	li r0, 0x0
/* 813F28E0 | 90 1D 00 74 */	stw r0, 0x74(r29)
/* 813F28E4 | 48 00 01 94 */	b .L_813F2A78
.L_813F28E8:
/* 813F28E8 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813F28EC | 40 82 01 8C */	bne .L_813F2A78
/* 813F28F0 | 38 60 00 07 */	li r3, 0x7
/* 813F28F4 | 4B F7 E8 81 */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F28F8 | 38 00 00 00 */	li r0, 0x0
/* 813F28FC | 90 1D 00 74 */	stw r0, 0x74(r29)
/* 813F2900 | 48 00 01 78 */	b .L_813F2A78
.L_813F2904:
/* 813F2904 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F2908 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F290C | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813F2910 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813F2914 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813F2918 | 40 82 00 1C */	bne .L_813F2934
/* 813F291C | 80 7D 09 28 */	lwz r3, 0x928(r29)
/* 813F2920 | 38 80 00 55 */	li r4, 0x55
/* 813F2924 | 38 00 00 00 */	li r0, 0x0
/* 813F2928 | 98 83 00 04 */	stb r4, 0x4(r3)
/* 813F292C | 90 1D 00 74 */	stw r0, 0x74(r29)
/* 813F2930 | 48 00 01 48 */	b .L_813F2A78
.L_813F2934:
/* 813F2934 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813F2938 | 40 82 01 40 */	bne .L_813F2A78
/* 813F293C | 80 1D 0B 9C */	lwz r0, 0xb9c(r29)
/* 813F2940 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F2944 | 40 82 00 10 */	bne .L_813F2954
/* 813F2948 | 38 60 00 02 */	li r3, 0x2
/* 813F294C | 4B F7 E8 29 */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F2950 | 48 00 00 20 */	b .L_813F2970
.L_813F2954:
/* 813F2954 | 4B F7 E8 61 */	bl getFuncResult__Q23www10wiisettingFv
/* 813F2958 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F295C | 40 82 00 14 */	bne .L_813F2970
/* 813F2960 | 7F A3 EB 78 */	mr r3, r29
/* 813F2964 | 4B FF DF AD */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
/* 813F2968 | 38 00 00 00 */	li r0, 0x0
/* 813F296C | 90 1D 00 74 */	stw r0, 0x74(r29)
.L_813F2970:
/* 813F2970 | 38 00 00 01 */	li r0, 0x1
/* 813F2974 | 90 1D 0B 9C */	stw r0, 0xb9c(r29)
/* 813F2978 | 48 00 01 00 */	b .L_813F2A78
.L_813F297C:
/* 813F297C | 7F A3 EB 78 */	mr r3, r29
/* 813F2980 | 48 00 1B 69 */	bl calcKeyboard__Q33ipl5scene7SettingFv
/* 813F2984 | 48 00 00 F4 */	b .L_813F2A78
.L_813F2988:
/* 813F2988 | 88 7D 09 2C */	lbz r3, 0x92c(r29)
/* 813F298C | 38 63 00 01 */	addi r3, r3, 0x1
/* 813F2990 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813F2994 | 98 7D 09 2C */	stb r3, 0x92c(r29)
/* 813F2998 | 28 00 00 B4 */	cmplwi r0, 0xb4
/* 813F299C | 40 82 00 DC */	bne .L_813F2A78
/* 813F29A0 | 38 60 00 01 */	li r3, 0x1
/* 813F29A4 | 38 00 00 00 */	li r0, 0x0
/* 813F29A8 | 90 7D 0B 94 */	stw r3, 0xb94(r29)
/* 813F29AC | 98 1D 09 2C */	stb r0, 0x92c(r29)
/* 813F29B0 | 48 00 00 C8 */	b .L_813F2A78
.L_813F29B4:
/* 813F29B4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F29B8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F29BC | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813F29C0 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813F29C4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813F29C8 | 40 82 00 3C */	bne .L_813F2A04
/* 813F29CC | 80 7D 09 28 */	lwz r3, 0x928(r29)
/* 813F29D0 | 88 03 00 04 */	lbz r0, 0x4(r3)
/* 813F29D4 | 28 00 00 4F */	cmplwi r0, 0x4f
/* 813F29D8 | 40 82 00 18 */	bne .L_813F29F0
/* 813F29DC | 38 60 00 05 */	li r3, 0x5
/* 813F29E0 | 4B F7 E7 95 */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F29E4 | 7F A3 EB 78 */	mr r3, r29
/* 813F29E8 | 4B FF DF 29 */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
/* 813F29EC | 48 00 00 0C */	b .L_813F29F8
.L_813F29F0:
/* 813F29F0 | 38 60 00 06 */	li r3, 0x6
/* 813F29F4 | 4B F7 E7 81 */	bl setFuncResult__Q23www10wiisettingFUc
.L_813F29F8:
/* 813F29F8 | 38 00 00 00 */	li r0, 0x0
/* 813F29FC | 90 1D 00 74 */	stw r0, 0x74(r29)
/* 813F2A00 | 48 00 00 78 */	b .L_813F2A78
.L_813F2A04:
/* 813F2A04 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813F2A08 | 40 82 00 70 */	bne .L_813F2A78
/* 813F2A0C | 80 7D 09 28 */	lwz r3, 0x928(r29)
/* 813F2A10 | 88 03 00 04 */	lbz r0, 0x4(r3)
/* 813F2A14 | 28 00 00 4F */	cmplwi r0, 0x4f
/* 813F2A18 | 40 82 00 44 */	bne .L_813F2A5C
/* 813F2A1C | 80 1D 0B 9C */	lwz r0, 0xb9c(r29)
/* 813F2A20 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F2A24 | 40 82 00 10 */	bne .L_813F2A34
/* 813F2A28 | 38 60 00 02 */	li r3, 0x2
/* 813F2A2C | 4B F7 E7 49 */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F2A30 | 48 00 00 20 */	b .L_813F2A50
.L_813F2A34:
/* 813F2A34 | 4B F7 E7 81 */	bl getFuncResult__Q23www10wiisettingFv
/* 813F2A38 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F2A3C | 40 82 00 14 */	bne .L_813F2A50
/* 813F2A40 | 38 00 00 00 */	li r0, 0x0
/* 813F2A44 | 7F A3 EB 78 */	mr r3, r29
/* 813F2A48 | 90 1D 00 74 */	stw r0, 0x74(r29)
/* 813F2A4C | 4B FF DE C5 */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
.L_813F2A50:
/* 813F2A50 | 38 00 00 01 */	li r0, 0x1
/* 813F2A54 | 90 1D 0B 9C */	stw r0, 0xb9c(r29)
/* 813F2A58 | 48 00 00 20 */	b .L_813F2A78
.L_813F2A5C:
/* 813F2A5C | 38 00 00 00 */	li r0, 0x0
/* 813F2A60 | 38 60 00 02 */	li r3, 0x2
/* 813F2A64 | 90 1D 00 74 */	stw r0, 0x74(r29)
/* 813F2A68 | 4B F7 E7 0D */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F2A6C | 48 00 00 0C */	b .L_813F2A78
.L_813F2A70:
/* 813F2A70 | 7F A3 EB 78 */	mr r3, r29
/* 813F2A74 | 48 00 3B 41 */	bl calcSafeMode__Q33ipl5scene7SettingFv
.L_813F2A78:
/* 813F2A78 | 80 7D 09 24 */	lwz r3, 0x924(r29)
/* 813F2A7C | 88 03 00 12 */	lbz r0, 0x12(r3)
/* 813F2A80 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F2A84 | 41 82 01 20 */	beq .L_813F2BA4
/* 813F2A88 | 28 00 00 1E */	cmplwi r0, 0x1e
/* 813F2A8C | 40 82 01 00 */	bne .L_813F2B8C
/* 813F2A90 | 88 7D 09 2C */	lbz r3, 0x92c(r29)
/* 813F2A94 | 38 03 00 01 */	addi r0, r3, 0x1
/* 813F2A98 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 813F2A9C | 98 1D 09 2C */	stb r0, 0x92c(r29)
/* 813F2AA0 | 28 03 00 01 */	cmplwi r3, 0x1
/* 813F2AA4 | 40 82 00 28 */	bne .L_813F2ACC
/* 813F2AA8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F2AAC | 38 80 01 BF */	li r4, 0x1bf
/* 813F2AB0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F2AB4 | 38 A0 00 2E */	li r5, 0x2e
/* 813F2AB8 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813F2ABC | 4B F5 3C 3D */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 813F2AC0 | 38 00 00 04 */	li r0, 0x4
/* 813F2AC4 | 90 1D 00 74 */	stw r0, 0x74(r29)
/* 813F2AC8 | 48 00 00 DC */	b .L_813F2BA4
.L_813F2ACC:
/* 813F2ACC | 28 03 00 03 */	cmplwi r3, 0x3
/* 813F2AD0 | 40 82 00 1C */	bne .L_813F2AEC
/* 813F2AD4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F2AD8 | 38 00 00 00 */	li r0, 0x0
/* 813F2ADC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F2AE0 | 80 63 00 B0 */	lwz r3, 0xb0(r3)
/* 813F2AE4 | 98 03 00 3D */	stb r0, 0x3d(r3)
/* 813F2AE8 | 48 00 00 BC */	b .L_813F2BA4
.L_813F2AEC:
/* 813F2AEC | 28 03 00 55 */	cmplwi r3, 0x55
/* 813F2AF0 | 40 82 00 20 */	bne .L_813F2B10
/* 813F2AF4 | 48 13 DD 91 */	bl OSDisableInterrupts
/* 813F2AF8 | 7C 7E 1B 78 */	mr r30, r3
/* 813F2AFC | 38 60 00 00 */	li r3, 0x0
/* 813F2B00 | 48 18 A8 C5 */	bl fn_8157D3C4
/* 813F2B04 | 7F C3 F3 78 */	mr r3, r30
/* 813F2B08 | 48 13 DD A5 */	bl OSRestoreInterrupts
/* 813F2B0C | 48 00 00 98 */	b .L_813F2BA4
.L_813F2B10:
/* 813F2B10 | 28 03 00 5A */	cmplwi r3, 0x5a
/* 813F2B14 | 40 82 00 28 */	bne .L_813F2B3C
/* 813F2B18 | 48 13 DD 6D */	bl OSDisableInterrupts
/* 813F2B1C | 7C 7E 1B 78 */	mr r30, r3
/* 813F2B20 | 38 60 00 01 */	li r3, 0x1
/* 813F2B24 | 48 18 A8 A1 */	bl fn_8157D3C4
/* 813F2B28 | 7F C3 F3 78 */	mr r3, r30
/* 813F2B2C | 48 13 DD 81 */	bl OSRestoreInterrupts
/* 813F2B30 | 38 00 00 1E */	li r0, 0x1e
/* 813F2B34 | 98 1D 09 2C */	stb r0, 0x92c(r29)
/* 813F2B38 | 48 00 00 6C */	b .L_813F2BA4
.L_813F2B3C:
/* 813F2B3C | 28 03 00 96 */	cmplwi r3, 0x96
/* 813F2B40 | 40 82 00 64 */	bne .L_813F2BA4
/* 813F2B44 | 48 13 DD 41 */	bl OSDisableInterrupts
/* 813F2B48 | 7C 7E 1B 78 */	mr r30, r3
/* 813F2B4C | 38 60 00 01 */	li r3, 0x1
/* 813F2B50 | 48 18 A8 75 */	bl fn_8157D3C4
/* 813F2B54 | 7F C3 F3 78 */	mr r3, r30
/* 813F2B58 | 48 13 DD 55 */	bl OSRestoreInterrupts
/* 813F2B5C | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813F2B60 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813F2B64 | 80 7E 00 B4 */	lwz r3, 0xb4(r30)
/* 813F2B68 | 4B F5 57 DD */	bl enable__Q23ipl14HomeButtonMenuFv
/* 813F2B6C | 80 7D 09 24 */	lwz r3, 0x924(r29)
/* 813F2B70 | 38 80 00 00 */	li r4, 0x0
/* 813F2B74 | 38 00 00 01 */	li r0, 0x1
/* 813F2B78 | 98 83 00 12 */	stb r4, 0x12(r3)
/* 813F2B7C | 80 7E 00 B0 */	lwz r3, 0xb0(r30)
/* 813F2B80 | 98 03 00 3D */	stb r0, 0x3d(r3)
/* 813F2B84 | 98 9D 09 2C */	stb r4, 0x92c(r29)
/* 813F2B88 | 48 00 00 1C */	b .L_813F2BA4
.L_813F2B8C:
/* 813F2B8C | 28 00 00 1F */	cmplwi r0, 0x1f
/* 813F2B90 | 40 80 00 14 */	bge .L_813F2BA4
/* 813F2B94 | 7F A3 EB 78 */	mr r3, r29
/* 813F2B98 | 48 00 14 41 */	bl initHTMLText__Q33ipl5scene7SettingFv
/* 813F2B9C | 7F A3 EB 78 */	mr r3, r29
/* 813F2BA0 | 48 00 15 A9 */	bl initMessage__Q33ipl5scene7SettingFv
.L_813F2BA4:
/* 813F2BA4 | 80 7D 09 24 */	lwz r3, 0x924(r29)
/* 813F2BA8 | 88 03 00 36 */	lbz r0, 0x36(r3)
/* 813F2BAC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F2BB0 | 41 82 00 0C */	beq .L_813F2BBC
/* 813F2BB4 | 7F A3 EB 78 */	mr r3, r29
/* 813F2BB8 | 48 00 1D B9 */	bl calcSetting__Q33ipl5scene7SettingFv
.L_813F2BBC:
/* 813F2BBC | 80 9D 09 28 */	lwz r4, 0x928(r29)
/* 813F2BC0 | 88 A4 00 04 */	lbz r5, 0x4(r4)
/* 813F2BC4 | 28 05 00 67 */	cmplwi r5, 0x67
/* 813F2BC8 | 41 81 06 68 */	bgt .L_813F3230
/* 813F2BCC | 3C 60 81 65 */	lis r3, jumptable_81656F60@ha
/* 813F2BD0 | 54 A0 10 3A */	slwi r0, r5, 2
/* 813F2BD4 | 38 63 6F 60 */	addi r3, r3, jumptable_81656F60@l
/* 813F2BD8 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813F2BDC | 7C 69 03 A6 */	mtctr r3
/* 813F2BE0 | 4E 80 04 20 */	bctr
.L_813F2BE4:
/* 813F2BE4 | 7F A3 EB 78 */	mr r3, r29
/* 813F2BE8 | 4B FF DD 29 */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
/* 813F2BEC | 7F A3 EB 78 */	mr r3, r29
/* 813F2BF0 | 48 00 6B 01 */	bl waitStart__Q33ipl5scene7SettingFv
/* 813F2BF4 | 7F A3 EB 78 */	mr r3, r29
/* 813F2BF8 | 7F A5 EB 78 */	mr r5, r29
/* 813F2BFC | 38 80 00 19 */	li r4, 0x19
/* 813F2C00 | 38 C0 00 00 */	li r6, 0x0
/* 813F2C04 | 38 E0 00 00 */	li r7, 0x0
/* 813F2C08 | 48 01 72 81 */	bl fn_81409E88
/* 813F2C0C | 48 00 06 24 */	b .L_813F3230
.L_813F2C10:
/* 813F2C10 | 7F A3 EB 78 */	mr r3, r29
/* 813F2C14 | 48 00 5A B5 */	bl setNUP__Q33ipl5scene7SettingFv
/* 813F2C18 | 48 00 06 18 */	b .L_813F3230
.L_813F2C1C:
/* 813F2C1C | 80 7D 09 0C */	lwz r3, 0x90c(r29)
/* 813F2C20 | 38 80 00 00 */	li r4, 0x0
/* 813F2C24 | 38 A0 08 00 */	li r5, 0x800
/* 813F2C28 | 4B F3 D7 0D */	bl memset
/* 813F2C2C | 80 7D 09 10 */	lwz r3, 0x910(r29)
/* 813F2C30 | 38 80 00 00 */	li r4, 0x0
/* 813F2C34 | 38 A0 00 79 */	li r5, 0x79
/* 813F2C38 | 4B F3 D6 FD */	bl memset
/* 813F2C3C | 80 7D 09 28 */	lwz r3, 0x928(r29)
/* 813F2C40 | 38 00 00 23 */	li r0, 0x23
/* 813F2C44 | 98 03 00 04 */	stb r0, 0x4(r3)
.L_813F2C48:
/* 813F2C48 | 7F A3 EB 78 */	mr r3, r29
/* 813F2C4C | 48 00 64 E5 */	bl setUSBAP__Q33ipl5scene7SettingFv
/* 813F2C50 | 48 00 05 E0 */	b .L_813F3230
.L_813F2C54:
/* 813F2C54 | 7F A3 EB 78 */	mr r3, r29
/* 813F2C58 | 48 00 65 BD */	bl cancelUSBAP__Q33ipl5scene7SettingFv
/* 813F2C5C | 48 00 05 D4 */	b .L_813F3230
.L_813F2C60:
/* 813F2C60 | 7F A3 EB 78 */	mr r3, r29
/* 813F2C64 | 48 00 66 45 */	bl AOSSProcess__Q33ipl5scene7SettingFv
/* 813F2C68 | 48 00 05 C8 */	b .L_813F3230
.L_813F2C6C:
/* 813F2C6C | 7F A3 EB 78 */	mr r3, r29
/* 813F2C70 | 48 00 68 1D */	bl RakuProcess__Q33ipl5scene7SettingFv
/* 813F2C74 | 48 00 05 BC */	b .L_813F3230
.L_813F2C78:
/* 813F2C78 | 4B F4 2D 41 */	bl getYoungController__Q23ipl6SystemFv
/* 813F2C7C | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813F2C80 | 7C 7F 1B 78 */	mr r31, r3
/* 813F2C84 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813F2C88 | 80 7E 00 9C */	lwz r3, 0x9c(r30)
/* 813F2C8C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813F2C90 | 30 03 FF FF */	subic r0, r3, 0x1
/* 813F2C94 | 7C 00 19 11 */	subfe. r0, r0, r3
/* 813F2C98 | 40 82 05 98 */	bne .L_813F3230
/* 813F2C9C | 80 7E 00 B4 */	lwz r3, 0xb4(r30)
/* 813F2CA0 | 4B F5 56 79 */	bl disable__Q23ipl14HomeButtonMenuFv
/* 813F2CA4 | 88 1D 00 5C */	lbz r0, 0x5c(r29)
/* 813F2CA8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F2CAC | 40 82 05 84 */	bne .L_813F3230
/* 813F2CB0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813F2CB4 | 41 82 05 7C */	beq .L_813F3230
/* 813F2CB8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813F2CBC | 3C 80 00 10 */	lis r4, 0x10
/* 813F2CC0 | 7F E3 FB 78 */	mr r3, r31
/* 813F2CC4 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813F2CC8 | 38 84 08 00 */	addi r4, r4, 0x800
/* 813F2CCC | 7D 89 03 A6 */	mtctr r12
/* 813F2CD0 | 4E 80 04 21 */	bctrl
/* 813F2CD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F2CD8 | 41 82 05 58 */	beq .L_813F3230
/* 813F2CDC | 7F A3 EB 78 */	mr r3, r29
/* 813F2CE0 | 4B FF DC 31 */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
/* 813F2CE4 | 80 7E 00 B4 */	lwz r3, 0xb4(r30)
/* 813F2CE8 | 4B F5 56 5D */	bl enable__Q23ipl14HomeButtonMenuFv
/* 813F2CEC | 38 60 00 05 */	li r3, 0x5
/* 813F2CF0 | 4B F7 E4 85 */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F2CF4 | 48 00 05 3C */	b .L_813F3230
.L_813F2CF8:
/* 813F2CF8 | 7F A3 EB 78 */	mr r3, r29
/* 813F2CFC | 48 00 39 B5 */	bl resetAP__Q33ipl5scene7SettingFv
/* 813F2D00 | 7F A3 EB 78 */	mr r3, r29
/* 813F2D04 | 48 00 39 91 */	bl initAP__Q33ipl5scene7SettingFv
/* 813F2D08 | 80 7D 09 28 */	lwz r3, 0x928(r29)
/* 813F2D0C | 38 00 00 02 */	li r0, 0x2
/* 813F2D10 | 98 03 00 04 */	stb r0, 0x4(r3)
.L_813F2D14:
/* 813F2D14 | 7F A3 EB 78 */	mr r3, r29
/* 813F2D18 | 48 00 3B 41 */	bl scanAP__Q33ipl5scene7SettingFv
/* 813F2D1C | 48 00 05 14 */	b .L_813F3230
.L_813F2D20:
/* 813F2D20 | 7F A3 EB 78 */	mr r3, r29
/* 813F2D24 | 48 00 39 8D */	bl resetAP__Q33ipl5scene7SettingFv
/* 813F2D28 | 48 00 05 08 */	b .L_813F3230
.L_813F2D2C:
/* 813F2D2C | 7F A3 EB 78 */	mr r3, r29
/* 813F2D30 | 48 00 3A 81 */	bl redrawAP__Q33ipl5scene7SettingFv
/* 813F2D34 | 48 00 04 FC */	b .L_813F3230
.L_813F2D38:
/* 813F2D38 | 7F A3 EB 78 */	mr r3, r29
/* 813F2D3C | 48 00 39 59 */	bl initAP__Q33ipl5scene7SettingFv
/* 813F2D40 | 7F A3 EB 78 */	mr r3, r29
/* 813F2D44 | 4B FF DB CD */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
/* 813F2D48 | 48 00 04 E8 */	b .L_813F3230
.L_813F2D4C:
/* 813F2D4C | 80 7D 09 24 */	lwz r3, 0x924(r29)
/* 813F2D50 | 80 1D 0B 50 */	lwz r0, 0xb50(r29)
/* 813F2D54 | 88 63 00 06 */	lbz r3, 0x6(r3)
/* 813F2D58 | 7C 00 18 00 */	cmpw r0, r3
/* 813F2D5C | 41 82 00 5C */	beq .L_813F2DB8
/* 813F2D60 | 28 03 00 01 */	cmplwi r3, 0x1
/* 813F2D64 | 90 7D 0B 50 */	stw r3, 0xb50(r29)
/* 813F2D68 | 40 82 00 24 */	bne .L_813F2D8C
/* 813F2D6C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F2D70 | 38 80 01 BD */	li r4, 0x1bd
/* 813F2D74 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F2D78 | 38 A0 00 00 */	li r5, 0x0
/* 813F2D7C | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813F2D80 | 38 C0 00 00 */	li r6, 0x0
/* 813F2D84 | 4B F5 36 C9 */	bl callBtn0__Q23ipl12DialogWindowFUlUlb
/* 813F2D88 | 48 00 00 28 */	b .L_813F2DB0
.L_813F2D8C:
/* 813F2D8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F2D90 | 40 82 00 20 */	bne .L_813F2DB0
/* 813F2D94 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F2D98 | 38 80 01 C9 */	li r4, 0x1c9
/* 813F2D9C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F2DA0 | 38 A0 00 00 */	li r5, 0x0
/* 813F2DA4 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813F2DA8 | 38 C0 00 00 */	li r6, 0x0
/* 813F2DAC | 4B F5 36 A1 */	bl callBtn0__Q23ipl12DialogWindowFUlUlb
.L_813F2DB0:
/* 813F2DB0 | 38 00 00 08 */	li r0, 0x8
/* 813F2DB4 | 90 1D 00 74 */	stw r0, 0x74(r29)
.L_813F2DB8:
/* 813F2DB8 | 7F A3 EB 78 */	mr r3, r29
/* 813F2DBC | 4B FF DB 55 */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
/* 813F2DC0 | 48 00 04 70 */	b .L_813F3230
.L_813F2DC4:
/* 813F2DC4 | 4B F4 2C C9 */	bl getRegion__Q23ipl6SystemFv
/* 813F2DC8 | 28 03 00 02 */	cmplwi r3, 0x2
/* 813F2DCC | 41 82 00 28 */	beq .L_813F2DF4
/* 813F2DD0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F2DD4 | 38 80 01 5F */	li r4, 0x15f
/* 813F2DD8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F2DDC | 38 A0 00 2E */	li r5, 0x2e
/* 813F2DE0 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813F2DE4 | 38 C0 01 3B */	li r6, 0x13b
/* 813F2DE8 | 38 E0 00 00 */	li r7, 0x0
/* 813F2DEC | 4B F5 3C E9 */	bl callBtn2__Q23ipl12DialogWindowFUlUlUlb
/* 813F2DF0 | 48 00 00 24 */	b .L_813F2E14
.L_813F2DF4:
/* 813F2DF4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F2DF8 | 38 80 01 60 */	li r4, 0x160
/* 813F2DFC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F2E00 | 38 A0 00 2E */	li r5, 0x2e
/* 813F2E04 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813F2E08 | 38 C0 01 3B */	li r6, 0x13b
/* 813F2E0C | 38 E0 00 00 */	li r7, 0x0
/* 813F2E10 | 4B F5 3C C5 */	bl callBtn2__Q23ipl12DialogWindowFUlUlUlb
.L_813F2E14:
/* 813F2E14 | 38 00 00 03 */	li r0, 0x3
/* 813F2E18 | 7F A3 EB 78 */	mr r3, r29
/* 813F2E1C | 90 1D 00 74 */	stw r0, 0x74(r29)
/* 813F2E20 | 4B FF DA F1 */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
/* 813F2E24 | 48 00 04 0C */	b .L_813F3230
.L_813F2E28:
/* 813F2E28 | 28 05 00 1D */	cmplwi r5, 0x1d
/* 813F2E2C | 41 82 00 14 */	beq .L_813F2E40
/* 813F2E30 | 7F A3 EB 78 */	mr r3, r29
/* 813F2E34 | 48 00 37 81 */	bl calcSafeMode__Q33ipl5scene7SettingFv
/* 813F2E38 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F2E3C | 41 82 03 F4 */	beq .L_813F3230
.L_813F2E40:
/* 813F2E40 | 48 00 8D 5D */	bl checkFlags__Q33ipl8parental8ParentalFv
/* 813F2E44 | 54 60 06 3F */	clrlwi. r0, r3, 24
/* 813F2E48 | 41 82 00 28 */	beq .L_813F2E70
/* 813F2E4C | 7F A3 EB 78 */	mr r3, r29
/* 813F2E50 | 7F A5 EB 78 */	mr r5, r29
/* 813F2E54 | 38 80 00 1B */	li r4, 0x1b
/* 813F2E58 | 38 C0 00 00 */	li r6, 0x0
/* 813F2E5C | 38 E0 00 01 */	li r7, 0x1
/* 813F2E60 | 48 01 70 29 */	bl fn_81409E88
/* 813F2E64 | 38 00 00 05 */	li r0, 0x5
/* 813F2E68 | 90 1D 00 74 */	stw r0, 0x74(r29)
/* 813F2E6C | 48 00 00 24 */	b .L_813F2E90
.L_813F2E70:
/* 813F2E70 | 38 60 00 01 */	li r3, 0x1
/* 813F2E74 | 4B F7 E3 01 */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F2E78 | 80 7D 09 28 */	lwz r3, 0x928(r29)
/* 813F2E7C | 88 03 00 04 */	lbz r0, 0x4(r3)
/* 813F2E80 | 28 00 00 4E */	cmplwi r0, 0x4e
/* 813F2E84 | 40 82 00 0C */	bne .L_813F2E90
/* 813F2E88 | 38 00 00 06 */	li r0, 0x6
/* 813F2E8C | 90 1D 00 74 */	stw r0, 0x74(r29)
.L_813F2E90:
/* 813F2E90 | 80 7D 09 28 */	lwz r3, 0x928(r29)
/* 813F2E94 | 88 03 00 04 */	lbz r0, 0x4(r3)
/* 813F2E98 | 28 00 00 1D */	cmplwi r0, 0x1d
/* 813F2E9C | 41 82 00 0C */	beq .L_813F2EA8
/* 813F2EA0 | 28 00 00 4D */	cmplwi r0, 0x4d
/* 813F2EA4 | 40 82 00 10 */	bne .L_813F2EB4
.L_813F2EA8:
/* 813F2EA8 | 7F A3 EB 78 */	mr r3, r29
/* 813F2EAC | 4B FF DA 65 */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
/* 813F2EB0 | 48 00 03 80 */	b .L_813F3230
.L_813F2EB4:
/* 813F2EB4 | 38 00 00 4F */	li r0, 0x4f
/* 813F2EB8 | 98 03 00 04 */	stb r0, 0x4(r3)
/* 813F2EBC | 48 00 03 74 */	b .L_813F3230
.L_813F2EC0:
/* 813F2EC0 | 80 7D 09 24 */	lwz r3, 0x924(r29)
/* 813F2EC4 | 88 63 00 30 */	lbz r3, 0x30(r3)
/* 813F2EC8 | 48 17 72 A9 */	bl fn_8156A170
/* 813F2ECC | 48 17 78 25 */	bl fn_8156A6F0
/* 813F2ED0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F2ED4 | 40 82 00 50 */	bne .L_813F2F24
/* 813F2ED8 | 48 17 78 5D */	bl fn_8156A734
/* 813F2EDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F2EE0 | 40 82 00 44 */	bne .L_813F2F24
/* 813F2EE4 | 4B F4 2B A9 */	bl getRegion__Q23ipl6SystemFv
/* 813F2EE8 | 28 03 00 02 */	cmplwi r3, 0x2
/* 813F2EEC | 40 82 00 38 */	bne .L_813F2F24
/* 813F2EF0 | 80 9D 09 24 */	lwz r4, 0x924(r29)
/* 813F2EF4 | 88 04 00 30 */	lbz r0, 0x30(r4)
/* 813F2EF8 | 28 00 00 03 */	cmplwi r0, 0x3
/* 813F2EFC | 41 82 00 18 */	beq .L_813F2F14
/* 813F2F00 | 38 00 00 40 */	li r0, 0x40
/* 813F2F04 | 38 60 00 40 */	li r3, 0x40
/* 813F2F08 | 98 04 00 3C */	stb r0, 0x3c(r4)
/* 813F2F0C | 48 00 90 65 */	bl setCountry__Q33ipl8parental8ParentalFUc
/* 813F2F10 | 48 00 00 14 */	b .L_813F2F24
.L_813F2F14:
/* 813F2F14 | 38 00 00 68 */	li r0, 0x68
/* 813F2F18 | 38 60 00 68 */	li r3, 0x68
/* 813F2F1C | 98 04 00 3C */	stb r0, 0x3c(r4)
/* 813F2F20 | 48 00 90 51 */	bl setCountry__Q33ipl8parental8ParentalFUc
.L_813F2F24:
/* 813F2F24 | 48 17 6A 29 */	bl fn_8156994C
/* 813F2F28 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813F2F2C | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813F2F30 | 83 FE 00 90 */	lwz r31, 0x90(r30)
/* 813F2F34 | 48 17 71 D1 */	bl SCGetLanguage
/* 813F2F38 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813F2F3C | 54 64 06 3E */	clrlwi r4, r3, 24
/* 813F2F40 | 7F E3 FB 78 */	mr r3, r31
/* 813F2F44 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F2F48 | 7D 89 03 A6 */	mtctr r12
/* 813F2F4C | 4E 80 04 21 */	bctrl
/* 813F2F50 | 80 7E 00 80 */	lwz r3, 0x80(r30)
/* 813F2F54 | 4B F4 B8 D1 */	bl initMessage__Q33ipl7message7ManagerFv
/* 813F2F58 | 4B F4 0E 05 */	bl reloadDownloadTask__Q23ipl6SystemFv
/* 813F2F5C | 7F A3 EB 78 */	mr r3, r29
/* 813F2F60 | 4B FF D9 B1 */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
/* 813F2F64 | 48 00 02 CC */	b .L_813F3230
.L_813F2F68:
/* 813F2F68 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813F2F6C | 38 80 00 5A */	li r4, 0x5a
/* 813F2F70 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813F2F74 | 4B F7 8D E5 */	bl muteOffBGM__Q33ipl3snd6SystemFi
/* 813F2F78 | 7F A3 EB 78 */	mr r3, r29
/* 813F2F7C | 4B FF D9 95 */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
/* 813F2F80 | 48 00 02 B0 */	b .L_813F3230
.L_813F2F84:
/* 813F2F84 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813F2F88 | 38 80 00 5A */	li r4, 0x5a
/* 813F2F8C | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813F2F90 | 4B F7 8D 95 */	bl muteOnBGM__Q33ipl3snd6SystemFi
/* 813F2F94 | 7F A3 EB 78 */	mr r3, r29
/* 813F2F98 | 4B FF D9 79 */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
/* 813F2F9C | 48 00 02 94 */	b .L_813F3230
.L_813F2FA0:
/* 813F2FA0 | 80 1D 0B 4C */	lwz r0, 0xb4c(r29)
/* 813F2FA4 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813F2FA8 | 41 82 00 0C */	beq .L_813F2FB4
/* 813F2FAC | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813F2FB0 | 40 82 00 20 */	bne .L_813F2FD0
.L_813F2FB4:
/* 813F2FB4 | 80 7D 09 24 */	lwz r3, 0x924(r29)
/* 813F2FB8 | 88 63 00 3C */	lbz r3, 0x3c(r3)
/* 813F2FBC | 48 00 8F B5 */	bl setCountry__Q33ipl8parental8ParentalFUc
/* 813F2FC0 | 48 00 91 5D */	bl clear__Q33ipl8parental8ParentalFv
/* 813F2FC4 | 38 60 00 01 */	li r3, 0x1
/* 813F2FC8 | 4B F7 E1 AD */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F2FCC | 48 00 00 50 */	b .L_813F301C
.L_813F2FD0:
/* 813F2FD0 | 48 00 8E 9D */	bl getCountry__Q33ipl8parental8ParentalFv
/* 813F2FD4 | 80 9D 09 24 */	lwz r4, 0x924(r29)
/* 813F2FD8 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 813F2FDC | 88 04 00 3C */	lbz r0, 0x3c(r4)
/* 813F2FE0 | 7C 00 18 40 */	cmplw r0, r3
/* 813F2FE4 | 40 82 00 10 */	bne .L_813F2FF4
/* 813F2FE8 | 38 60 00 01 */	li r3, 0x1
/* 813F2FEC | 4B F7 E1 89 */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F2FF0 | 48 00 00 2C */	b .L_813F301C
.L_813F2FF4:
/* 813F2FF4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F2FF8 | 38 80 01 C4 */	li r4, 0x1c4
/* 813F2FFC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F3000 | 38 A0 00 2E */	li r5, 0x2e
/* 813F3004 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813F3008 | 38 C0 01 3B */	li r6, 0x13b
/* 813F300C | 38 E0 00 00 */	li r7, 0x0
/* 813F3010 | 4B F5 3A C5 */	bl callBtn2__Q23ipl12DialogWindowFUlUlUlb
/* 813F3014 | 38 00 00 07 */	li r0, 0x7
/* 813F3018 | 90 1D 00 74 */	stw r0, 0x74(r29)
.L_813F301C:
/* 813F301C | 7F A3 EB 78 */	mr r3, r29
/* 813F3020 | 4B FF D8 F1 */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
/* 813F3024 | 48 00 02 0C */	b .L_813F3230
.L_813F3028:
/* 813F3028 | 7F A3 EB 78 */	mr r3, r29
/* 813F302C | 48 00 4F 4D */	bl setUpdate___Q33ipl5scene7SettingFv
/* 813F3030 | 48 00 02 00 */	b .L_813F3230
.L_813F3034:
/* 813F3034 | 80 1D 00 7C */	lwz r0, 0x7c(r29)
/* 813F3038 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F303C | 40 82 00 0C */	bne .L_813F3048
/* 813F3040 | 38 00 00 01 */	li r0, 0x1
/* 813F3044 | 90 1D 00 7C */	stw r0, 0x7c(r29)
.L_813F3048:
/* 813F3048 | 7F A3 EB 78 */	mr r3, r29
/* 813F304C | 48 00 4B 2D */	bl setUseEULA___Q33ipl5scene7SettingFv
/* 813F3050 | 48 00 01 E0 */	b .L_813F3230
.L_813F3054:
/* 813F3054 | 38 00 00 09 */	li r0, 0x9
/* 813F3058 | 7F A3 EB 78 */	mr r3, r29
/* 813F305C | 90 1D 00 80 */	stw r0, 0x80(r29)
/* 813F3060 | 48 00 4F 19 */	bl setUpdate___Q33ipl5scene7SettingFv
/* 813F3064 | 48 00 01 CC */	b .L_813F3230
.L_813F3068:
/* 813F3068 | 7F A3 EB 78 */	mr r3, r29
/* 813F306C | 48 00 4B 0D */	bl setUseEULA___Q33ipl5scene7SettingFv
/* 813F3070 | 48 00 01 C0 */	b .L_813F3230
.L_813F3074:
/* 813F3074 | 80 1D 00 7C */	lwz r0, 0x7c(r29)
/* 813F3078 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F307C | 40 82 00 0C */	bne .L_813F3088
/* 813F3080 | 38 00 00 02 */	li r0, 0x2
/* 813F3084 | 90 1D 00 7C */	stw r0, 0x7c(r29)
.L_813F3088:
/* 813F3088 | 7F A3 EB 78 */	mr r3, r29
/* 813F308C | 48 00 4A ED */	bl setUseEULA___Q33ipl5scene7SettingFv
/* 813F3090 | 48 00 01 A0 */	b .L_813F3230
.L_813F3094:
/* 813F3094 | 38 60 00 02 */	li r3, 0x2
/* 813F3098 | 38 00 00 54 */	li r0, 0x54
/* 813F309C | 90 7D 00 80 */	stw r3, 0x80(r29)
/* 813F30A0 | 98 04 00 04 */	stb r0, 0x4(r4)
/* 813F30A4 | 48 00 01 8C */	b .L_813F3230
.L_813F30A8:
/* 813F30A8 | 48 00 90 D5 */	bl clearMiss__Q33ipl8parental8ParentalFv
.L_813F30AC:
/* 813F30AC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F30B0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F30B4 | 80 63 00 B4 */	lwz r3, 0xb4(r3)
/* 813F30B8 | 4B F5 52 8D */	bl enable__Q23ipl14HomeButtonMenuFv
/* 813F30BC | 7F A3 EB 78 */	mr r3, r29
/* 813F30C0 | 4B FF D8 51 */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
/* 813F30C4 | 48 00 01 6C */	b .L_813F3230
.L_813F30C8:
/* 813F30C8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F30CC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F30D0 | 80 63 00 B4 */	lwz r3, 0xb4(r3)
/* 813F30D4 | 4B F5 52 45 */	bl disable__Q23ipl14HomeButtonMenuFv
/* 813F30D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F30DC | 41 82 01 54 */	beq .L_813F3230
/* 813F30E0 | 7F A3 EB 78 */	mr r3, r29
/* 813F30E4 | 4B FF D8 2D */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
/* 813F30E8 | 48 00 01 48 */	b .L_813F3230
.L_813F30EC:
/* 813F30EC | 38 00 00 01 */	li r0, 0x1
/* 813F30F0 | 7F A3 EB 78 */	mr r3, r29
/* 813F30F4 | 98 1D 0B 5C */	stb r0, 0xb5c(r29)
/* 813F30F8 | 4B FF D8 19 */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
/* 813F30FC | 48 00 01 34 */	b .L_813F3230
.L_813F3100:
/* 813F3100 | 48 00 81 75 */	bl write__Q33ipl3ncd10NCDSettingFv
.L_813F3104:
/* 813F3104 | 38 00 00 00 */	li r0, 0x0
/* 813F3108 | 7F A3 EB 78 */	mr r3, r29
/* 813F310C | 98 1D 0B 5C */	stb r0, 0xb5c(r29)
/* 813F3110 | 4B FF D8 01 */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
/* 813F3114 | 48 00 01 1C */	b .L_813F3230
.L_813F3118:
/* 813F3118 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F311C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F3120 | 80 63 00 B4 */	lwz r3, 0xb4(r3)
/* 813F3124 | 4B F5 52 21 */	bl enable__Q23ipl14HomeButtonMenuFv
/* 813F3128 | 38 00 00 01 */	li r0, 0x1
/* 813F312C | 7F A3 EB 78 */	mr r3, r29
/* 813F3130 | 98 1D 0B 5C */	stb r0, 0xb5c(r29)
/* 813F3134 | 4B FF D7 DD */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
/* 813F3138 | 48 00 00 F8 */	b .L_813F3230
.L_813F313C:
/* 813F313C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F3140 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F3144 | 80 63 00 B4 */	lwz r3, 0xb4(r3)
/* 813F3148 | 4B F5 51 D1 */	bl disable__Q23ipl14HomeButtonMenuFv
/* 813F314C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F3150 | 41 82 00 E0 */	beq .L_813F3230
/* 813F3154 | 38 00 00 00 */	li r0, 0x0
/* 813F3158 | 7F A3 EB 78 */	mr r3, r29
/* 813F315C | 98 1D 0B 5C */	stb r0, 0xb5c(r29)
/* 813F3160 | 4B FF D7 B1 */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
/* 813F3164 | 48 00 00 CC */	b .L_813F3230
.L_813F3168:
/* 813F3168 | 7F A3 EB 78 */	mr r3, r29
/* 813F316C | 7F A5 EB 78 */	mr r5, r29
/* 813F3170 | 38 80 00 1D */	li r4, 0x1d
/* 813F3174 | 38 C0 00 00 */	li r6, 0x0
/* 813F3178 | 38 E0 00 02 */	li r7, 0x2
/* 813F317C | 48 01 6D 0D */	bl fn_81409E88
/* 813F3180 | 7F A3 EB 78 */	mr r3, r29
/* 813F3184 | 4B FF D7 8D */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
/* 813F3188 | 7F A3 EB 78 */	mr r3, r29
/* 813F318C | 48 00 65 65 */	bl waitStart__Q33ipl5scene7SettingFv
/* 813F3190 | 48 00 00 A0 */	b .L_813F3230
.L_813F3194:
/* 813F3194 | 88 7D 09 2C */	lbz r3, 0x92c(r29)
/* 813F3198 | 38 00 00 0F */	li r0, 0xf
/* 813F319C | 90 1D 00 74 */	stw r0, 0x74(r29)
/* 813F31A0 | 38 63 00 01 */	addi r3, r3, 0x1
/* 813F31A4 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813F31A8 | 98 7D 09 2C */	stb r3, 0x92c(r29)
/* 813F31AC | 28 00 00 64 */	cmplwi r0, 0x64
/* 813F31B0 | 41 80 00 80 */	blt .L_813F3230
/* 813F31B4 | 38 00 00 01 */	li r0, 0x1
/* 813F31B8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F31BC | 98 1D 0B 5C */	stb r0, 0xb5c(r29)
/* 813F31C0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F31C4 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 813F31C8 | 4B F6 37 11 */	bl reset__Q23ipl12ResetHandlerFv
/* 813F31CC | 7F A3 EB 78 */	mr r3, r29
/* 813F31D0 | 4B FF D7 41 */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
/* 813F31D4 | 48 00 00 5C */	b .L_813F3230
.L_813F31D8:
/* 813F31D8 | 88 7D 09 2C */	lbz r3, 0x92c(r29)
/* 813F31DC | 38 00 00 10 */	li r0, 0x10
/* 813F31E0 | 90 1D 00 74 */	stw r0, 0x74(r29)
/* 813F31E4 | 38 63 00 01 */	addi r3, r3, 0x1
/* 813F31E8 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813F31EC | 98 7D 09 2C */	stb r3, 0x92c(r29)
/* 813F31F0 | 28 00 00 64 */	cmplwi r0, 0x64
/* 813F31F4 | 41 80 00 3C */	blt .L_813F3230
/* 813F31F8 | 38 00 00 01 */	li r0, 0x1
/* 813F31FC | 98 1D 0B 5C */	stb r0, 0xb5c(r29)
/* 813F3200 | 4B F6 36 B5 */	bl cbPowerOff__Q23ipl12ResetHandlerFv
/* 813F3204 | 7F A3 EB 78 */	mr r3, r29
/* 813F3208 | 4B FF D7 09 */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
/* 813F320C | 48 00 00 24 */	b .L_813F3230
.L_813F3210:
/* 813F3210 | 7F A3 EB 78 */	mr r3, r29
/* 813F3214 | 48 00 33 A1 */	bl calcSafeMode__Q33ipl5scene7SettingFv
/* 813F3218 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F321C | 41 82 00 14 */	beq .L_813F3230
/* 813F3220 | 38 60 00 01 */	li r3, 0x1
/* 813F3224 | 4B F7 DF 51 */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F3228 | 7F A3 EB 78 */	mr r3, r29
/* 813F322C | 4B FF D6 E5 */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
.L_813F3230:
/* 813F3230 | 80 7D 09 24 */	lwz r3, 0x924(r29)
/* 813F3234 | 88 03 00 37 */	lbz r0, 0x37(r3)
/* 813F3238 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F323C | 40 82 00 10 */	bne .L_813F324C
/* 813F3240 | 88 03 00 38 */	lbz r0, 0x38(r3)
/* 813F3244 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F3248 | 41 82 00 0C */	beq .L_813F3254
.L_813F324C:
/* 813F324C | 7F A3 EB 78 */	mr r3, r29
/* 813F3250 | 48 00 65 E5 */	bl setSE__Q33ipl5scene7SettingFv
.L_813F3254:
/* 813F3254 | 80 7D 09 24 */	lwz r3, 0x924(r29)
/* 813F3258 | 88 03 00 39 */	lbz r0, 0x39(r3)
/* 813F325C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F3260 | 41 82 00 28 */	beq .L_813F3288
/* 813F3264 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F3268 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F326C | 80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 813F3270 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F3274 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813F3278 | 7D 89 03 A6 */	mtctr r12
/* 813F327C | 4E 80 04 21 */	bctrl
/* 813F3280 | 38 60 00 01 */	li r3, 0x1
/* 813F3284 | 48 00 00 28 */	b .L_813F32AC
.L_813F3288:
/* 813F3288 | 80 7D 00 C0 */	lwz r3, 0xc0(r29)
/* 813F328C | 4B F7 74 79 */	bl calc__Q33ipl6layout6ObjectFv
/* 813F3290 | 80 7D 00 C4 */	lwz r3, 0xc4(r29)
/* 813F3294 | 4B F7 74 71 */	bl calc__Q33ipl6layout6ObjectFv
/* 813F3298 | 80 7D 00 C8 */	lwz r3, 0xc8(r29)
/* 813F329C | 4B F7 74 69 */	bl calc__Q33ipl6layout6ObjectFv
/* 813F32A0 | 38 00 00 00 */	li r0, 0x0
/* 813F32A4 | 38 60 00 00 */	li r3, 0x0
/* 813F32A8 | 98 1D 09 1E */	stb r0, 0x91e(r29)
.L_813F32AC:
/* 813F32AC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F32B0 | 48 20 62 65 */	bl _restgpr_29
/* 813F32B4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813F32B8 | 7C 08 03 A6 */	mtlr r0
/* 813F32BC | 38 21 00 20 */	addi r1, r1, 0x20
/* 813F32C0 | 4E 80 00 20 */	blr
.endfn calcNormal__Q33ipl5scene7SettingFv

# .text:0x2B50 | 0x813F32C4 | size: 0x298
# ipl::scene::Setting::calcFadeout()
.fn calcFadeout__Q33ipl5scene7SettingFv, global
/* 813F32C4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813F32C8 | 7C 08 02 A6 */	mflr r0
/* 813F32CC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813F32D0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F32D4 | 48 20 61 E9 */	bl _savegpr_26
/* 813F32D8 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813F32DC | 3F E0 81 65 */	lis r31, lbl_816568E8@ha
/* 813F32E0 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813F32E4 | 7C 7E 1B 78 */	mr r30, r3
/* 813F32E8 | 80 64 00 C4 */	lwz r3, 0xc4(r4)
/* 813F32EC | 3B FF 68 E8 */	addi r31, r31, lbl_816568E8@l
/* 813F32F0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F32F4 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813F32F8 | 7D 89 03 A6 */	mtctr r12
/* 813F32FC | 4E 80 04 21 */	bctrl
/* 813F3300 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F3304 | 40 82 02 3C */	bne .L_813F3540
/* 813F3308 | 88 7E 00 5C */	lbz r3, 0x5c(r30)
/* 813F330C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F3310 | 40 82 00 28 */	bne .L_813F3338
/* 813F3314 | 38 00 00 01 */	li r0, 0x1
/* 813F3318 | 98 1E 00 5C */	stb r0, 0x5c(r30)
/* 813F331C | 80 6D A9 3C */	lwz r3, ScrollState___Q23www9trasition@sda21(r0)
/* 813F3320 | 4B F7 B2 E5 */	bl StopThreadAsync__Q37ext_ead3www14SurfaceManagerFv
/* 813F3324 | 38 7F 08 60 */	addi r3, r31, 0x860
/* 813F3328 | 4C C6 31 82 */	crclr cr1eq
/* 813F332C | 48 13 B3 75 */	bl OSReport
/* 813F3330 | 48 17 66 1D */	bl fn_8156994C
/* 813F3334 | 48 00 02 0C */	b .L_813F3540
.L_813F3338:
/* 813F3338 | 41 82 01 6C */	beq .L_813F34A4
/* 813F333C | 80 1E 00 7C */	lwz r0, 0x7c(r30)
/* 813F3340 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813F3344 | 40 82 01 60 */	bne .L_813F34A4
/* 813F3348 | 80 1E 0B 4C */	lwz r0, 0xb4c(r30)
/* 813F334C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813F3350 | 41 82 00 0C */	beq .L_813F335C
/* 813F3354 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813F3358 | 40 82 00 20 */	bne .L_813F3378
.L_813F335C:
/* 813F335C | 38 60 00 01 */	li r3, 0x1
/* 813F3360 | 48 17 73 CD */	bl fn_8156A72C
/* 813F3364 | 38 60 00 01 */	li r3, 0x1
/* 813F3368 | 48 17 74 09 */	bl fn_8156A770
/* 813F336C | 38 60 00 00 */	li r3, 0x0
/* 813F3370 | 48 17 74 65 */	bl fn_8156A7D4
/* 813F3374 | 48 17 65 D9 */	bl fn_8156994C
.L_813F3378:
/* 813F3378 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F337C | 3F 60 81 09 */	lis r27, sSystem__Q23ipl3snd@ha
/* 813F3380 | 3B 43 90 08 */	addi r26, r3, smArg__Q23ipl6System@l
/* 813F3384 | 48 00 00 58 */	b .L_813F33DC
.L_813F3388:
/* 813F3388 | 38 7B 99 2C */	addi r3, r27, sSystem__Q23ipl3snd@l
/* 813F338C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F3390 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813F3394 | 7D 89 03 A6 */	mtctr r12
/* 813F3398 | 4E 80 04 21 */	bctrl
/* 813F339C | 80 7A 00 A8 */	lwz r3, 0xa8(r26)
/* 813F33A0 | 4B F6 D4 F9 */	bl update__Q33ipl3bs27ManagerFv
/* 813F33A4 | 48 14 9C 45 */	bl VIWaitForRetrace
/* 813F33A8 | 48 18 64 05 */	bl WPADGetStatus
/* 813F33AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F33B0 | 41 82 00 10 */	beq .L_813F33C0
/* 813F33B4 | 38 7F 08 86 */	addi r3, r31, 0x886
/* 813F33B8 | 4C C6 31 82 */	crclr cr1eq
/* 813F33BC | 48 13 B2 E5 */	bl OSReport
.L_813F33C0:
/* 813F33C0 | 80 7A 00 A8 */	lwz r3, 0xa8(r26)
/* 813F33C4 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813F33C8 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 813F33CC | 41 82 00 10 */	beq .L_813F33DC
/* 813F33D0 | 38 7F 08 95 */	addi r3, r31, 0x895
/* 813F33D4 | 4C C6 31 82 */	crclr cr1eq
/* 813F33D8 | 48 13 B2 C9 */	bl OSReport
.L_813F33DC:
/* 813F33DC | 48 18 63 D1 */	bl WPADGetStatus
/* 813F33E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F33E4 | 40 82 FF A4 */	bne .L_813F3388
/* 813F33E8 | 80 7A 00 A8 */	lwz r3, 0xa8(r26)
/* 813F33EC | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813F33F0 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 813F33F4 | 40 82 FF 94 */	bne .L_813F3388
/* 813F33F8 | 38 60 00 01 */	li r3, 0x1
/* 813F33FC | 48 14 AD 2D */	bl VISetBlack
/* 813F3400 | 48 14 AB A1 */	bl VIFlush
/* 813F3404 | 48 14 9B E5 */	bl VIWaitForRetrace
/* 813F3408 | 38 7F 08 A3 */	addi r3, r31, 0x8a3
/* 813F340C | 4C C6 31 82 */	crclr cr1eq
/* 813F3410 | 48 13 B2 91 */	bl OSReport
/* 813F3414 | 48 00 00 10 */	b .L_813F3424
.L_813F3418:
/* 813F3418 | 38 7F 08 AD */	addi r3, r31, 0x8ad
/* 813F341C | 4C C6 31 82 */	crclr cr1eq
/* 813F3420 | 48 13 B2 81 */	bl OSReport
.L_813F3424:
/* 813F3424 | 48 13 FC 5D */	bl __OSSyncSram
/* 813F3428 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F342C | 41 82 FF EC */	beq .L_813F3418
/* 813F3430 | 38 00 00 00 */	li r0, 0x0
/* 813F3434 | 3B 80 00 05 */	li r28, 0x5
/* 813F3438 | 7F A0 E1 D6 */	mullw r29, r0, r28
/* 813F343C | 3F 40 80 00 */	lis r26, 0x8000
/* 813F3440 | 3B 60 03 E8 */	li r27, 0x3e8
/* 813F3444 | 48 00 00 2C */	b .L_813F3470
.L_813F3448:
/* 813F3448 | 38 7F 08 B8 */	addi r3, r31, 0x8b8
/* 813F344C | 4C C6 31 82 */	crclr cr1eq
/* 813F3450 | 48 13 B2 51 */	bl OSReport
/* 813F3454 | 80 1A 00 F8 */	lwz r0, 0xf8(r26)
/* 813F3458 | 54 00 F0 BE */	srwi r0, r0, 2
/* 813F345C | 7C 60 DB 96 */	divwu r3, r0, r27
/* 813F3460 | 7C 03 E0 16 */	mulhwu r0, r3, r28
/* 813F3464 | 1C 83 00 05 */	mulli r4, r3, 0x5
/* 813F3468 | 7C 60 EA 14 */	add r3, r0, r29
/* 813F346C | 48 14 27 61 */	bl OSSleepTicks
.L_813F3470:
/* 813F3470 | 4B F4 09 5D */	bl isReceiveScheduleStopped__Q23ipl6SystemFv
/* 813F3474 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F3478 | 41 82 FF D0 */	beq .L_813F3448
/* 813F347C | 80 7E 00 98 */	lwz r3, 0x98(r30)
/* 813F3480 | 38 A0 00 00 */	li r5, 0x0
/* 813F3484 | 80 9E 00 9C */	lwz r4, 0x9c(r30)
/* 813F3488 | 38 C0 00 00 */	li r6, 0x0
/* 813F348C | 4C C6 31 82 */	crclr cr1eq
/* 813F3490 | 48 13 C4 A5 */	bl fn_8152F934
.L_813F3494:
/* 813F3494 | 38 6D 91 2E */	li r3, lbl_8169716E@sda21
/* 813F3498 | 4C C6 31 82 */	crclr cr1eq
/* 813F349C | 48 13 B2 05 */	bl OSReport
/* 813F34A0 | 4B FF FF F4 */	b .L_813F3494
.L_813F34A4:
/* 813F34A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F34A8 | 41 82 00 98 */	beq .L_813F3540
/* 813F34AC | 80 6D A9 3C */	lwz r3, ScrollState___Q23www9trasition@sda21(r0)
/* 813F34B0 | 4B F7 B1 69 */	bl IsThreadStopped__Q37ext_ead3www14SurfaceManagerFv
/* 813F34B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F34B8 | 41 82 00 88 */	beq .L_813F3540
/* 813F34BC | 38 7F 08 CE */	addi r3, r31, 0x8ce
/* 813F34C0 | 4C C6 31 82 */	crclr cr1eq
/* 813F34C4 | 48 13 B1 DD */	bl OSReport
/* 813F34C8 | 4B F7 AD 1D */	bl DisposeManager__Q37ext_ead3www14SurfaceManagerFv
/* 813F34CC | 38 7F 08 DF */	addi r3, r31, 0x8df
/* 813F34D0 | 4C C6 31 82 */	crclr cr1eq
/* 813F34D4 | 48 13 B1 CD */	bl OSReport
/* 813F34D8 | 80 1E 0B 4C */	lwz r0, 0xb4c(r30)
/* 813F34DC | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813F34E0 | 41 82 00 0C */	beq .L_813F34EC
/* 813F34E4 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813F34E8 | 40 82 00 34 */	bne .L_813F351C
.L_813F34EC:
/* 813F34EC | 38 60 00 01 */	li r3, 0x1
/* 813F34F0 | 48 17 72 3D */	bl fn_8156A72C
/* 813F34F4 | 38 60 00 01 */	li r3, 0x1
/* 813F34F8 | 48 17 72 79 */	bl fn_8156A770
/* 813F34FC | 38 60 00 00 */	li r3, 0x0
/* 813F3500 | 48 17 72 D5 */	bl fn_8156A7D4
/* 813F3504 | 48 17 64 49 */	bl fn_8156994C
/* 813F3508 | 7F C3 F3 78 */	mr r3, r30
/* 813F350C | 38 80 00 1A */	li r4, 0x1a
/* 813F3510 | 38 A0 00 00 */	li r5, 0x0
/* 813F3514 | 48 01 6A 81 */	bl fn_81409F94
/* 813F3518 | 48 00 00 18 */	b .L_813F3530
.L_813F351C:
/* 813F351C | 4B F4 08 41 */	bl reloadDownloadTask__Q23ipl6SystemFv
/* 813F3520 | 7F C3 F3 78 */	mr r3, r30
/* 813F3524 | 38 80 00 15 */	li r4, 0x15
/* 813F3528 | 38 A0 00 00 */	li r5, 0x0
/* 813F352C | 48 01 6A 69 */	bl fn_81409F94
.L_813F3530:
/* 813F3530 | 80 7E 09 20 */	lwz r3, 0x920(r30)
/* 813F3534 | 48 20 4B B1 */	bl __dl__FPv
/* 813F3538 | 38 60 00 01 */	li r3, 0x1
/* 813F353C | 48 00 00 08 */	b .L_813F3544
.L_813F3540:
/* 813F3540 | 38 60 00 00 */	li r3, 0x0
.L_813F3544:
/* 813F3544 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F3548 | 48 20 5F C1 */	bl _restgpr_26
/* 813F354C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813F3550 | 7C 08 03 A6 */	mtlr r0
/* 813F3554 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813F3558 | 4E 80 00 20 */	blr
.endfn calcFadeout__Q33ipl5scene7SettingFv

# .text:0x2DE8 | 0x813F355C | size: 0x9E0
# ipl::scene::Setting::draw()
.fn draw__Q33ipl5scene7SettingFv, global
/* 813F355C | 94 21 FE 60 */	stwu r1, -0x1a0(r1)
/* 813F3560 | 7C 08 02 A6 */	mflr r0
/* 813F3564 | 90 01 01 A4 */	stw r0, 0x1a4(r1)
/* 813F3568 | DB E1 01 90 */	stfd f31, 0x190(r1)
/* 813F356C | F3 E1 01 98 */	psq_st f31, 0x198(r1), 0, qr0
/* 813F3570 | DB C1 01 80 */	stfd f30, 0x180(r1)
/* 813F3574 | F3 C1 01 88 */	psq_st f30, 0x188(r1), 0, qr0
/* 813F3578 | 39 61 01 80 */	addi r11, r1, 0x180
/* 813F357C | 48 20 5F 45 */	bl _savegpr_27
/* 813F3580 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813F3584 | 3C 00 43 30 */	lis r0, 0x4330
/* 813F3588 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813F358C | 90 01 01 40 */	stw r0, 0x140(r1)
/* 813F3590 | 80 84 00 64 */	lwz r4, 0x64(r4)
/* 813F3594 | 7C 7D 1B 78 */	mr r29, r3
/* 813F3598 | 90 01 01 48 */	stw r0, 0x148(r1)
/* 813F359C | 80 04 01 00 */	lwz r0, 0x100(r4)
/* 813F35A0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813F35A4 | 40 82 09 70 */	bne .L_813F3F14
/* 813F35A8 | 88 03 0B 3B */	lbz r0, 0xb3b(r3)
/* 813F35AC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F35B0 | 40 82 00 54 */	bne .L_813F3604
/* 813F35B4 | 38 60 00 00 */	li r3, 0x0
/* 813F35B8 | 4B F6 F4 B5 */	bl setOrtho__Q33ipl7utility8GraphicsFUl
/* 813F35BC | C0 22 88 1C */	lfs f1, lbl_81694C1C@sda21(r0)
/* 813F35C0 | 38 61 00 94 */	addi r3, r1, 0x94
/* 813F35C4 | C0 62 88 2C */	lfs f3, lbl_81694C2C@sda21(r0)
/* 813F35C8 | FC 40 08 90 */	fmr f2, f1
/* 813F35CC | FC 80 18 90 */	fmr f4, f3
/* 813F35D0 | 48 00 09 6D */	bl __ct__Q34nw4r2ut4RectFffff
/* 813F35D4 | 88 E2 88 20 */	lbz r7, lbl_81694C20@sda21(r0)
/* 813F35D8 | 38 61 00 94 */	addi r3, r1, 0x94
/* 813F35DC | 88 C2 88 21 */	lbz r6, lbl_81694C21@sda21(r0)
/* 813F35E0 | 38 81 00 24 */	addi r4, r1, 0x24
/* 813F35E4 | 88 A2 88 22 */	lbz r5, lbl_81694C22@sda21(r0)
/* 813F35E8 | 88 02 88 23 */	lbz r0, lbl_81694C23@sda21(r0)
/* 813F35EC | 98 E1 00 24 */	stb r7, 0x24(r1)
/* 813F35F0 | 98 C1 00 25 */	stb r6, 0x25(r1)
/* 813F35F4 | 98 A1 00 26 */	stb r5, 0x26(r1)
/* 813F35F8 | 98 01 00 27 */	stb r0, 0x27(r1)
/* 813F35FC | 4B F6 F7 41 */	bl drawPolygon__Q33ipl7utility8GraphicsFRCQ34nw4r2ut4Rect8_GXColor
/* 813F3600 | 48 00 09 14 */	b .L_813F3F14
.L_813F3604:
/* 813F3604 | 80 6D A9 3C */	lwz r3, ScrollState___Q23www9trasition@sda21(r0)
/* 813F3608 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F360C | 41 82 09 08 */	beq .L_813F3F14
/* 813F3610 | 83 E3 00 28 */	lwz r31, 0x28(r3)
/* 813F3614 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813F3618 | 41 82 08 FC */	beq .L_813F3F14
/* 813F361C | 7F E3 FB 78 */	mr r3, r31
/* 813F3620 | 38 80 00 00 */	li r4, 0x0
/* 813F3624 | 38 A0 00 00 */	li r5, 0x0
/* 813F3628 | 4B F7 A3 79 */	bl GetTextureBuffer__Q37ext_ead3www13BrowserThreadFiPP7WWWRect
/* 813F362C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F3630 | 41 82 08 E4 */	beq .L_813F3F14
/* 813F3634 | 80 7F 06 80 */	lwz r3, 0x680(r31)
/* 813F3638 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F363C | 40 82 00 0C */	bne .L_813F3648
/* 813F3640 | 38 00 00 00 */	li r0, 0x0
/* 813F3644 | 48 00 00 08 */	b .L_813F364C
.L_813F3648:
/* 813F3648 | 88 03 02 C7 */	lbz r0, 0x2c7(r3)
.L_813F364C:
/* 813F364C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F3650 | 41 82 00 90 */	beq .L_813F36E0
/* 813F3654 | 38 60 00 01 */	li r3, 0x1
/* 813F3658 | 38 00 00 00 */	li r0, 0x0
/* 813F365C | 98 7D 09 1E */	stb r3, 0x91e(r29)
/* 813F3660 | 90 1D 0B 98 */	stw r0, 0xb98(r29)
/* 813F3664 | 80 7F 06 80 */	lwz r3, 0x680(r31)
/* 813F3668 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F366C | 41 82 00 08 */	beq .L_813F3674
/* 813F3670 | 98 03 02 C7 */	stb r0, 0x2c7(r3)
.L_813F3674:
/* 813F3674 | 4B F7 C3 49 */	bl GetScrollState__Q23www9trasitionFv
/* 813F3678 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813F367C | 40 82 00 10 */	bne .L_813F368C
/* 813F3680 | 38 00 00 01 */	li r0, 0x1
/* 813F3684 | 90 0D AB A8 */	stw r0, lbl_81698BE8@sda21(r0)
/* 813F3688 | 48 00 00 14 */	b .L_813F369C
.L_813F368C:
/* 813F368C | 38 03 FF FE */	subi r0, r3, 0x2
/* 813F3690 | 30 00 FF FF */	subic r0, r0, 0x1
/* 813F3694 | 7C 00 01 10 */	subfe r0, r0, r0
/* 813F3698 | 90 0D AB A8 */	stw r0, lbl_81698BE8@sda21(r0)
.L_813F369C:
/* 813F369C | 4B F7 C3 29 */	bl ResetScrollState__Q23www9trasitionFv
/* 813F36A0 | 7F E3 FB 78 */	mr r3, r31
/* 813F36A4 | 38 80 00 01 */	li r4, 0x1
/* 813F36A8 | 38 A0 00 00 */	li r5, 0x0
/* 813F36AC | 4B F7 A2 F5 */	bl GetTextureBuffer__Q37ext_ead3www13BrowserThreadFiPP7WWWRect
/* 813F36B0 | 7C 7C 1B 78 */	mr r28, r3
/* 813F36B4 | 7F E3 FB 78 */	mr r3, r31
/* 813F36B8 | 38 80 00 00 */	li r4, 0x0
/* 813F36BC | 38 A0 00 00 */	li r5, 0x0
/* 813F36C0 | 4B F7 A2 E1 */	bl GetTextureBuffer__Q37ext_ead3www13BrowserThreadFiPP7WWWRect
/* 813F36C4 | 3C C0 81 65 */	lis r6, lbl_816571DD@ha
/* 813F36C8 | 7C 64 1B 78 */	mr r4, r3
/* 813F36CC | 7F 85 E3 78 */	mr r5, r28
/* 813F36D0 | 38 66 71 DD */	addi r3, r6, lbl_816571DD@l
/* 813F36D4 | 4C C6 31 82 */	crclr cr1eq
/* 813F36D8 | 48 13 AF C9 */	bl OSReport
/* 813F36DC | 4B F7 A9 89 */	bl reportLeaHeap__Q37ext_ead3www4HeapFv
.L_813F36E0:
/* 813F36E0 | 80 7D 00 D0 */	lwz r3, 0xd0(r29)
/* 813F36E4 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813F36E8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813F36EC | 41 82 00 40 */	beq .L_813F372C
/* 813F36F0 | 80 7D 00 CC */	lwz r3, 0xcc(r29)
/* 813F36F4 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813F36F8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813F36FC | 41 82 00 30 */	beq .L_813F372C
/* 813F3700 | 80 7D 00 C0 */	lwz r3, 0xc0(r29)
/* 813F3704 | 38 8D 91 33 */	li r4, lbl_81697173@sda21
/* 813F3708 | 38 A0 00 01 */	li r5, 0x1
/* 813F370C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F3710 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F3714 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F3718 | 7D 89 03 A6 */	mtctr r12
/* 813F371C | 4E 80 04 21 */	bctrl
/* 813F3720 | 38 80 00 00 */	li r4, 0x0
/* 813F3724 | 4B F5 0C F1 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813F3728 | 48 00 00 2C */	b .L_813F3754
.L_813F372C:
/* 813F372C | 80 7D 00 C0 */	lwz r3, 0xc0(r29)
/* 813F3730 | 38 8D 91 33 */	li r4, lbl_81697173@sda21
/* 813F3734 | 38 A0 00 01 */	li r5, 0x1
/* 813F3738 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F373C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F3740 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F3744 | 7D 89 03 A6 */	mtctr r12
/* 813F3748 | 4E 80 04 21 */	bctrl
/* 813F374C | 38 80 00 01 */	li r4, 0x1
/* 813F3750 | 4B F5 0C C5 */	bl SetVisible__Q34nw4r3lyt4PaneFb
.L_813F3754:
/* 813F3754 | 7F E3 FB 78 */	mr r3, r31
/* 813F3758 | 38 A1 00 3C */	addi r5, r1, 0x3c
/* 813F375C | 38 80 00 01 */	li r4, 0x1
/* 813F3760 | 4B F7 A2 41 */	bl GetTextureBuffer__Q37ext_ead3www13BrowserThreadFiPP7WWWRect
/* 813F3764 | 7C 7E 1B 78 */	mr r30, r3
/* 813F3768 | 7F E3 FB 78 */	mr r3, r31
/* 813F376C | 38 A1 00 40 */	addi r5, r1, 0x40
/* 813F3770 | 38 80 00 00 */	li r4, 0x0
/* 813F3774 | 4B F7 A2 2D */	bl GetTextureBuffer__Q37ext_ead3www13BrowserThreadFiPP7WWWRect
/* 813F3778 | 7C 7F 1B 78 */	mr r31, r3
/* 813F377C | 38 61 00 84 */	addi r3, r1, 0x84
/* 813F3780 | 4B F4 2C A9 */	bl __ct__Q34nw4r2ut4RectFv
/* 813F3784 | 38 61 00 84 */	addi r3, r1, 0x84
/* 813F3788 | 4B F4 21 C5 */	bl getProjectionRect4x3__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813F378C | C0 21 00 8C */	lfs f1, 0x8c(r1)
/* 813F3790 | C0 01 00 84 */	lfs f0, 0x84(r1)
/* 813F3794 | EC 01 00 28 */	fsubs f0, f1, f0
/* 813F3798 | FC 00 00 1E */	fctiwz f0, f0
/* 813F379C | D8 01 01 50 */	stfd f0, 0x150(r1)
/* 813F37A0 | 80 61 01 54 */	lwz r3, 0x154(r1)
/* 813F37A4 | 48 20 98 75 */	bl abs
/* 813F37A8 | C0 21 00 90 */	lfs f1, 0x90(r1)
/* 813F37AC | 7C 7C 1B 78 */	mr r28, r3
/* 813F37B0 | C0 01 00 88 */	lfs f0, 0x88(r1)
/* 813F37B4 | EC 01 00 28 */	fsubs f0, f1, f0
/* 813F37B8 | FC 00 00 1E */	fctiwz f0, f0
/* 813F37BC | D8 01 01 58 */	stfd f0, 0x158(r1)
/* 813F37C0 | 80 61 01 5C */	lwz r3, 0x15c(r1)
/* 813F37C4 | 48 20 98 55 */	bl abs
/* 813F37C8 | 7C 9C 00 D0 */	neg r4, r28
/* 813F37CC | 7C 03 00 D0 */	neg r0, r3
/* 813F37D0 | 7C 84 0E 70 */	srawi r4, r4, 1
/* 813F37D4 | C8 82 88 30 */	lfd f4, lbl_81694C30@sda21(r0)
/* 813F37D8 | 7C 84 01 94 */	addze r4, r4
/* 813F37DC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813F37E0 | 7C 63 0E 70 */	srawi r3, r3, 1
/* 813F37E4 | 7C 63 01 94 */	addze r3, r3
/* 813F37E8 | 6C 85 80 00 */	xoris r5, r4, 0x8000
/* 813F37EC | 6C 64 80 00 */	xoris r4, r3, 0x8000
/* 813F37F0 | 90 A1 01 44 */	stw r5, 0x144(r1)
/* 813F37F4 | 7F 83 0E 70 */	srawi r3, r28, 1
/* 813F37F8 | 7C 63 01 94 */	addze r3, r3
/* 813F37FC | 90 81 01 4C */	stw r4, 0x14c(r1)
/* 813F3800 | 7C 00 0E 70 */	srawi r0, r0, 1
/* 813F3804 | C8 21 01 40 */	lfd f1, 0x140(r1)
/* 813F3808 | 7C 00 01 94 */	addze r0, r0
/* 813F380C | C8 01 01 48 */	lfd f0, 0x148(r1)
/* 813F3810 | 6C 63 80 00 */	xoris r3, r3, 0x8000
/* 813F3814 | EC 61 20 28 */	fsubs f3, f1, f4
/* 813F3818 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 813F381C | 90 61 01 44 */	stw r3, 0x144(r1)
/* 813F3820 | EC 40 20 28 */	fsubs f2, f0, f4
/* 813F3824 | 90 01 01 4C */	stw r0, 0x14c(r1)
/* 813F3828 | C8 21 01 40 */	lfd f1, 0x140(r1)
/* 813F382C | C8 01 01 48 */	lfd f0, 0x148(r1)
/* 813F3830 | EC 21 20 28 */	fsubs f1, f1, f4
/* 813F3834 | D0 61 00 74 */	stfs f3, 0x74(r1)
/* 813F3838 | EC 00 20 28 */	fsubs f0, f0, f4
/* 813F383C | D0 41 00 78 */	stfs f2, 0x78(r1)
/* 813F3840 | D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 813F3844 | D0 01 00 80 */	stfs f0, 0x80(r1)
/* 813F3848 | 41 82 05 B0 */	beq .L_813F3DF8
/* 813F384C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813F3850 | 41 82 05 A8 */	beq .L_813F3DF8
/* 813F3854 | 80 C1 00 3C */	lwz r6, 0x3c(r1)
/* 813F3858 | 7F C4 F3 78 */	mr r4, r30
/* 813F385C | 38 61 00 C4 */	addi r3, r1, 0xc4
/* 813F3860 | 38 E0 00 04 */	li r7, 0x4
/* 813F3864 | 80 A6 00 08 */	lwz r5, 0x8(r6)
/* 813F3868 | 39 00 00 00 */	li r8, 0x0
/* 813F386C | 80 06 00 0C */	lwz r0, 0xc(r6)
/* 813F3870 | 39 20 00 00 */	li r9, 0x0
/* 813F3874 | 54 A5 04 3E */	clrlwi r5, r5, 16
/* 813F3878 | 39 40 00 00 */	li r10, 0x0
/* 813F387C | 54 06 04 3E */	clrlwi r6, r0, 16
/* 813F3880 | 48 15 23 F1 */	bl GXInitTexObj
/* 813F3884 | 80 C1 00 40 */	lwz r6, 0x40(r1)
/* 813F3888 | 7F E4 FB 78 */	mr r4, r31
/* 813F388C | 38 61 00 E4 */	addi r3, r1, 0xe4
/* 813F3890 | 38 E0 00 04 */	li r7, 0x4
/* 813F3894 | 80 A6 00 08 */	lwz r5, 0x8(r6)
/* 813F3898 | 39 00 00 00 */	li r8, 0x0
/* 813F389C | 80 06 00 0C */	lwz r0, 0xc(r6)
/* 813F38A0 | 39 20 00 00 */	li r9, 0x0
/* 813F38A4 | 54 A5 04 3E */	clrlwi r5, r5, 16
/* 813F38A8 | 39 40 00 00 */	li r10, 0x0
/* 813F38AC | 54 06 04 3E */	clrlwi r6, r0, 16
/* 813F38B0 | 48 15 23 C1 */	bl GXInitTexObj
/* 813F38B4 | C0 22 88 18 */	lfs f1, lbl_81694C18@sda21(r0)
/* 813F38B8 | 38 61 00 C4 */	addi r3, r1, 0xc4
/* 813F38BC | 38 80 00 01 */	li r4, 0x1
/* 813F38C0 | 38 A0 00 01 */	li r5, 0x1
/* 813F38C4 | FC 40 08 90 */	fmr f2, f1
/* 813F38C8 | 38 C0 00 00 */	li r6, 0x0
/* 813F38CC | FC 60 08 90 */	fmr f3, f1
/* 813F38D0 | 38 E0 00 00 */	li r7, 0x0
/* 813F38D4 | 39 00 00 00 */	li r8, 0x0
/* 813F38D8 | 48 15 25 ED */	bl GXInitTexObjLOD
/* 813F38DC | C0 22 88 18 */	lfs f1, lbl_81694C18@sda21(r0)
/* 813F38E0 | 38 61 00 E4 */	addi r3, r1, 0xe4
/* 813F38E4 | 38 80 00 01 */	li r4, 0x1
/* 813F38E8 | 38 A0 00 01 */	li r5, 0x1
/* 813F38EC | FC 40 08 90 */	fmr f2, f1
/* 813F38F0 | 38 C0 00 00 */	li r6, 0x0
/* 813F38F4 | FC 60 08 90 */	fmr f3, f1
/* 813F38F8 | 38 E0 00 00 */	li r7, 0x0
/* 813F38FC | 39 00 00 00 */	li r8, 0x0
/* 813F3900 | 48 15 25 C5 */	bl GXInitTexObjLOD
/* 813F3904 | 80 7D 00 70 */	lwz r3, 0x70(r29)
/* 813F3908 | 38 81 00 A4 */	addi r4, r1, 0xa4
/* 813F390C | 38 A0 00 00 */	li r5, 0x0
/* 813F3910 | 80 63 00 A0 */	lwz r3, 0xa0(r3)
/* 813F3914 | 48 1C 89 C9 */	bl fn_815BC2DC
/* 813F3918 | 80 7D 00 70 */	lwz r3, 0x70(r29)
/* 813F391C | 38 80 00 00 */	li r4, 0x0
/* 813F3920 | 80 63 00 A0 */	lwz r3, 0xa0(r3)
/* 813F3924 | 48 1C 89 99 */	bl fn_815BC2BC
/* 813F3928 | 7C 7F 1B 78 */	mr r31, r3
/* 813F392C | 38 61 00 64 */	addi r3, r1, 0x64
/* 813F3930 | 4B F4 2A F9 */	bl __ct__Q34nw4r2ut4RectFv
/* 813F3934 | 38 61 00 64 */	addi r3, r1, 0x64
/* 813F3938 | 4B F4 20 39 */	bl getProjectionRect16x9__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813F393C | C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 813F3940 | C0 01 00 64 */	lfs f0, 0x64(r1)
/* 813F3944 | EC 01 00 28 */	fsubs f0, f1, f0
/* 813F3948 | FC 00 00 1E */	fctiwz f0, f0
/* 813F394C | D8 01 01 58 */	stfd f0, 0x158(r1)
/* 813F3950 | 80 61 01 5C */	lwz r3, 0x15c(r1)
/* 813F3954 | 48 20 96 C5 */	bl abs
/* 813F3958 | C0 21 00 70 */	lfs f1, 0x70(r1)
/* 813F395C | 7C 7C 1B 78 */	mr r28, r3
/* 813F3960 | C0 01 00 68 */	lfs f0, 0x68(r1)
/* 813F3964 | EC 01 00 28 */	fsubs f0, f1, f0
/* 813F3968 | FC 00 00 1E */	fctiwz f0, f0
/* 813F396C | D8 01 01 50 */	stfd f0, 0x150(r1)
/* 813F3970 | 80 61 01 54 */	lwz r3, 0x154(r1)
/* 813F3974 | 48 20 96 A5 */	bl abs
/* 813F3978 | 7C 1C 00 D0 */	neg r0, r28
/* 813F397C | 80 DF 00 00 */	lwz r6, 0x0(r31)
/* 813F3980 | 7C 00 0E 70 */	srawi r0, r0, 1
/* 813F3984 | C8 A2 88 30 */	lfd f5, lbl_81694C30@sda21(r0)
/* 813F3988 | 7C A0 01 94 */	addze r5, r0
/* 813F398C | A0 86 00 02 */	lhz r4, 0x2(r6)
/* 813F3990 | 7C 63 0E 70 */	srawi r3, r3, 1
/* 813F3994 | A0 06 00 00 */	lhz r0, 0x0(r6)
/* 813F3998 | 7C C3 01 94 */	addze r6, r3
/* 813F399C | C8 82 88 10 */	lfd f4, lbl_81694C10@sda21(r0)
/* 813F39A0 | 6C A3 80 00 */	xoris r3, r5, 0x8000
/* 813F39A4 | 90 61 01 44 */	stw r3, 0x144(r1)
/* 813F39A8 | 6C C6 80 00 */	xoris r6, r6, 0x8000
/* 813F39AC | 7F 83 0E 70 */	srawi r3, r28, 1
/* 813F39B0 | 90 C1 01 4C */	stw r6, 0x14c(r1)
/* 813F39B4 | 7C 63 01 94 */	addze r3, r3
/* 813F39B8 | C8 21 01 40 */	lfd f1, 0x140(r1)
/* 813F39BC | 6C 65 80 00 */	xoris r5, r3, 0x8000
/* 813F39C0 | C8 01 01 48 */	lfd f0, 0x148(r1)
/* 813F39C4 | 38 61 00 54 */	addi r3, r1, 0x54
/* 813F39C8 | 90 A1 01 44 */	stw r5, 0x144(r1)
/* 813F39CC | EC 21 28 28 */	fsubs f1, f1, f5
/* 813F39D0 | EC 40 28 28 */	fsubs f2, f0, f5
/* 813F39D4 | C8 61 01 40 */	lfd f3, 0x140(r1)
/* 813F39D8 | 90 C1 01 4C */	stw r6, 0x14c(r1)
/* 813F39DC | EF E3 28 28 */	fsubs f31, f3, f5
/* 813F39E0 | C8 01 01 48 */	lfd f0, 0x148(r1)
/* 813F39E4 | 90 81 01 44 */	stw r4, 0x144(r1)
/* 813F39E8 | EF C0 28 28 */	fsubs f30, f0, f5
/* 813F39EC | 90 01 01 4C */	stw r0, 0x14c(r1)
/* 813F39F0 | C8 61 01 40 */	lfd f3, 0x140(r1)
/* 813F39F4 | C8 01 01 48 */	lfd f0, 0x148(r1)
/* 813F39F8 | EC 63 20 28 */	fsubs f3, f3, f4
/* 813F39FC | EC 00 20 28 */	fsubs f0, f0, f4
/* 813F3A00 | EC 61 18 2A */	fadds f3, f1, f3
/* 813F3A04 | EC 82 00 28 */	fsubs f4, f2, f0
/* 813F3A08 | 48 00 05 35 */	bl __ct__Q34nw4r2ut4RectFffff
/* 813F3A0C | 80 BF 00 00 */	lwz r5, 0x0(r31)
/* 813F3A10 | FC 40 F0 90 */	fmr f2, f30
/* 813F3A14 | C8 82 88 10 */	lfd f4, lbl_81694C10@sda21(r0)
/* 813F3A18 | FC 60 F8 90 */	fmr f3, f31
/* 813F3A1C | A0 85 00 02 */	lhz r4, 0x2(r5)
/* 813F3A20 | 38 61 00 44 */	addi r3, r1, 0x44
/* 813F3A24 | A0 05 00 00 */	lhz r0, 0x0(r5)
/* 813F3A28 | 90 81 01 44 */	stw r4, 0x144(r1)
/* 813F3A2C | 90 01 01 4C */	stw r0, 0x14c(r1)
/* 813F3A30 | C8 21 01 40 */	lfd f1, 0x140(r1)
/* 813F3A34 | C8 01 01 48 */	lfd f0, 0x148(r1)
/* 813F3A38 | EC 21 20 28 */	fsubs f1, f1, f4
/* 813F3A3C | EC 00 20 28 */	fsubs f0, f0, f4
/* 813F3A40 | EC 3F 08 28 */	fsubs f1, f31, f1
/* 813F3A44 | EC 9E 00 28 */	fsubs f4, f30, f0
/* 813F3A48 | 48 00 04 F5 */	bl __ct__Q34nw4r2ut4RectFffff
/* 813F3A4C | 80 0D AB A8 */	lwz r0, lbl_81698BE8@sda21(r0)
/* 813F3A50 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F3A54 | 41 82 01 58 */	beq .L_813F3BAC
/* 813F3A58 | 80 7D 00 C0 */	lwz r3, 0xc0(r29)
/* 813F3A5C | 38 8D 91 33 */	li r4, lbl_81697173@sda21
/* 813F3A60 | 38 A0 00 01 */	li r5, 0x1
/* 813F3A64 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F3A68 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F3A6C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F3A70 | 7D 89 03 A6 */	mtctr r12
/* 813F3A74 | 4E 80 04 21 */	bctrl
/* 813F3A78 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F3A7C | 38 8D 91 3A */	li r4, lbl_8169717A@sda21
/* 813F3A80 | 38 A0 00 01 */	li r5, 0x1
/* 813F3A84 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 813F3A88 | 7D 89 03 A6 */	mtctr r12
/* 813F3A8C | 4E 80 04 21 */	bctrl
/* 813F3A90 | 80 DD 00 C0 */	lwz r6, 0xc0(r29)
/* 813F3A94 | 7C 7C 1B 78 */	mr r28, r3
/* 813F3A98 | 38 8D 91 33 */	li r4, lbl_81697173@sda21
/* 813F3A9C | 38 A0 00 01 */	li r5, 0x1
/* 813F3AA0 | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 813F3AA4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F3AA8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F3AAC | 7D 89 03 A6 */	mtctr r12
/* 813F3AB0 | 4E 80 04 21 */	bctrl
/* 813F3AB4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F3AB8 | 38 8D 91 3F */	li r4, lbl_8169717F@sda21
/* 813F3ABC | 38 A0 00 01 */	li r5, 0x1
/* 813F3AC0 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 813F3AC4 | 7D 89 03 A6 */	mtctr r12
/* 813F3AC8 | 4E 80 04 21 */	bctrl
/* 813F3ACC | 80 DD 00 C0 */	lwz r6, 0xc0(r29)
/* 813F3AD0 | 7C 7F 1B 78 */	mr r31, r3
/* 813F3AD4 | 38 8D 91 33 */	li r4, lbl_81697173@sda21
/* 813F3AD8 | 38 A0 00 01 */	li r5, 0x1
/* 813F3ADC | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 813F3AE0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F3AE4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F3AE8 | 7D 89 03 A6 */	mtctr r12
/* 813F3AEC | 4E 80 04 21 */	bctrl
/* 813F3AF0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F3AF4 | 38 8D 91 44 */	li r4, lbl_81697184@sda21
/* 813F3AF8 | 38 A0 00 01 */	li r5, 0x1
/* 813F3AFC | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 813F3B00 | 7D 89 03 A6 */	mtctr r12
/* 813F3B04 | 4E 80 04 21 */	bctrl
/* 813F3B08 | 7C 7B 1B 78 */	mr r27, r3
/* 813F3B0C | 7F 83 E3 78 */	mr r3, r28
/* 813F3B10 | 38 A1 00 C4 */	addi r5, r1, 0xc4
/* 813F3B14 | 38 80 00 00 */	li r4, 0x0
/* 813F3B18 | 48 13 43 05 */	bl fn_81527E1C
/* 813F3B1C | 7F E3 FB 78 */	mr r3, r31
/* 813F3B20 | 38 A1 00 E4 */	addi r5, r1, 0xe4
/* 813F3B24 | 38 80 00 00 */	li r4, 0x0
/* 813F3B28 | 48 13 42 F5 */	bl fn_81527E1C
/* 813F3B2C | 7F 63 DB 78 */	mr r3, r27
/* 813F3B30 | 38 A1 00 E4 */	addi r5, r1, 0xe4
/* 813F3B34 | 38 80 00 00 */	li r4, 0x0
/* 813F3B38 | 48 13 42 E5 */	bl fn_81527E1C
/* 813F3B3C | 80 7D 00 C0 */	lwz r3, 0xc0(r29)
/* 813F3B40 | 38 8D 91 33 */	li r4, lbl_81697173@sda21
/* 813F3B44 | 38 A0 00 01 */	li r5, 0x1
/* 813F3B48 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F3B4C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F3B50 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F3B54 | 7D 89 03 A6 */	mtctr r12
/* 813F3B58 | 4E 80 04 21 */	bctrl
/* 813F3B5C | 38 80 00 01 */	li r4, 0x1
/* 813F3B60 | 4B F5 08 B5 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813F3B64 | 80 0D AB A8 */	lwz r0, lbl_81698BE8@sda21(r0)
/* 813F3B68 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813F3B6C | 40 82 00 1C */	bne .L_813F3B88
/* 813F3B70 | 83 9D 00 D0 */	lwz r28, 0xd0(r29)
/* 813F3B74 | 7F 83 E3 78 */	mr r3, r28
/* 813F3B78 | 4B F6 EC F9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813F3B7C | 38 00 00 01 */	li r0, 0x1
/* 813F3B80 | 90 1C 00 14 */	stw r0, 0x14(r28)
/* 813F3B84 | 48 00 00 18 */	b .L_813F3B9C
.L_813F3B88:
/* 813F3B88 | 83 9D 00 CC */	lwz r28, 0xcc(r29)
/* 813F3B8C | 7F 83 E3 78 */	mr r3, r28
/* 813F3B90 | 4B F6 EC E1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813F3B94 | 38 00 00 01 */	li r0, 0x1
/* 813F3B98 | 90 1C 00 14 */	stw r0, 0x14(r28)
.L_813F3B9C:
/* 813F3B9C | 80 7D 00 C0 */	lwz r3, 0xc0(r29)
/* 813F3BA0 | 4B F7 6B 65 */	bl calc__Q33ipl6layout6ObjectFv
/* 813F3BA4 | 38 00 00 00 */	li r0, 0x0
/* 813F3BA8 | 90 0D AB A8 */	stw r0, lbl_81698BE8@sda21(r0)
.L_813F3BAC:
/* 813F3BAC | 80 1D 00 74 */	lwz r0, 0x74(r29)
/* 813F3BB0 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 813F3BB4 | 40 82 00 18 */	bne .L_813F3BCC
/* 813F3BB8 | 80 1D 0B 98 */	lwz r0, 0xb98(r29)
/* 813F3BBC | 2C 00 00 14 */	cmpwi r0, 0x14
/* 813F3BC0 | 41 82 00 0C */	beq .L_813F3BCC
/* 813F3BC4 | 38 00 00 00 */	li r0, 0x0
/* 813F3BC8 | 90 1D 0B 98 */	stw r0, 0xb98(r29)
.L_813F3BCC:
/* 813F3BCC | 38 60 00 00 */	li r3, 0x0
/* 813F3BD0 | 4B F6 EE 9D */	bl setOrtho__Q33ipl7utility8GraphicsFUl
/* 813F3BD4 | 80 9D 0B 98 */	lwz r4, 0xb98(r29)
/* 813F3BD8 | 38 00 00 14 */	li r0, 0x14
/* 813F3BDC | 8B 82 88 24 */	lbz r28, lbl_81694C24@sda21(r0)
/* 813F3BE0 | 38 61 00 74 */	addi r3, r1, 0x74
/* 813F3BE4 | 1C C4 00 FF */	mulli r6, r4, 0xff
/* 813F3BE8 | 8B E2 88 25 */	lbz r31, lbl_81694C25@sda21(r0)
/* 813F3BEC | 89 82 88 26 */	lbz r12, lbl_81694C26@sda21(r0)
/* 813F3BF0 | 38 81 00 C4 */	addi r4, r1, 0xc4
/* 813F3BF4 | 89 62 88 27 */	lbz r11, lbl_81694C27@sda21(r0)
/* 813F3BF8 | 38 A1 00 20 */	addi r5, r1, 0x20
/* 813F3BFC | 7C 06 03 D6 */	divw r0, r6, r0
/* 813F3C00 | 89 42 88 28 */	lbz r10, lbl_81694C28@sda21(r0)
/* 813F3C04 | 89 22 88 29 */	lbz r9, lbl_81694C29@sda21(r0)
/* 813F3C08 | 38 C0 00 01 */	li r6, 0x1
/* 813F3C0C | 89 02 88 2A */	lbz r8, lbl_81694C2A@sda21(r0)
/* 813F3C10 | 38 E0 00 00 */	li r7, 0x0
/* 813F3C14 | 9B 81 00 08 */	stb r28, 0x8(r1)
/* 813F3C18 | 9B E1 00 09 */	stb r31, 0x9(r1)
/* 813F3C1C | 99 81 00 0A */	stb r12, 0xa(r1)
/* 813F3C20 | 99 61 00 0B */	stb r11, 0xb(r1)
/* 813F3C24 | 99 41 00 38 */	stb r10, 0x38(r1)
/* 813F3C28 | 99 21 00 39 */	stb r9, 0x39(r1)
/* 813F3C2C | 99 01 00 3A */	stb r8, 0x3a(r1)
/* 813F3C30 | 98 01 00 3B */	stb r0, 0x3b(r1)
/* 813F3C34 | 9B 81 00 20 */	stb r28, 0x20(r1)
/* 813F3C38 | 9B E1 00 21 */	stb r31, 0x21(r1)
/* 813F3C3C | 99 81 00 22 */	stb r12, 0x22(r1)
/* 813F3C40 | 99 61 00 23 */	stb r11, 0x23(r1)
/* 813F3C44 | 4B F6 F3 79 */	bl drawTexture__Q33ipl7utility8GraphicsFRCQ34nw4r2ut4RectRC9_GXTexObj8_GXColorUcQ43ipl7utility8Graphics11Orientation
/* 813F3C48 | 80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 813F3C4C | 38 C0 00 00 */	li r6, 0x0
/* 813F3C50 | 38 60 00 00 */	li r3, 0x0
/* 813F3C54 | 80 85 00 08 */	lwz r4, 0x8(r5)
/* 813F3C58 | 80 05 00 0C */	lwz r0, 0xc(r5)
/* 813F3C5C | 7C 04 01 D6 */	mullw r0, r4, r0
/* 813F3C60 | 54 00 08 3C */	slwi r0, r0, 1
/* 813F3C64 | 7C 00 16 70 */	srawi r0, r0, 2
/* 813F3C68 | 7C 00 01 95 */	addze. r0, r0
/* 813F3C6C | 7C 09 03 A6 */	mtctr r0
/* 813F3C70 | 40 81 00 20 */	ble .L_813F3C90
.L_813F3C74:
/* 813F3C74 | 7C 1E 18 2E */	lwzx r0, r30, r3
/* 813F3C78 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F3C7C | 41 82 00 0C */	beq .L_813F3C88
/* 813F3C80 | 38 C0 00 01 */	li r6, 0x1
/* 813F3C84 | 48 00 00 0C */	b .L_813F3C90
.L_813F3C88:
/* 813F3C88 | 38 63 00 04 */	addi r3, r3, 0x4
/* 813F3C8C | 42 00 FF E8 */	bdnz .L_813F3C74
.L_813F3C90:
/* 813F3C90 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 813F3C94 | 41 82 00 74 */	beq .L_813F3D08
/* 813F3C98 | 88 E1 00 08 */	lbz r7, 0x8(r1)
/* 813F3C9C | 38 61 00 44 */	addi r3, r1, 0x44
/* 813F3CA0 | 89 21 00 09 */	lbz r9, 0x9(r1)
/* 813F3CA4 | 38 81 00 A4 */	addi r4, r1, 0xa4
/* 813F3CA8 | 89 01 00 0A */	lbz r8, 0xa(r1)
/* 813F3CAC | 38 A1 00 1C */	addi r5, r1, 0x1c
/* 813F3CB0 | 88 01 00 0B */	lbz r0, 0xb(r1)
/* 813F3CB4 | 38 C0 00 01 */	li r6, 0x1
/* 813F3CB8 | 98 E1 00 1C */	stb r7, 0x1c(r1)
/* 813F3CBC | 38 E0 00 00 */	li r7, 0x0
/* 813F3CC0 | 99 21 00 1D */	stb r9, 0x1d(r1)
/* 813F3CC4 | 99 01 00 1E */	stb r8, 0x1e(r1)
/* 813F3CC8 | 98 01 00 1F */	stb r0, 0x1f(r1)
/* 813F3CCC | 4B F6 F2 F1 */	bl drawTexture__Q33ipl7utility8GraphicsFRCQ34nw4r2ut4RectRC9_GXTexObj8_GXColorUcQ43ipl7utility8Graphics11Orientation
/* 813F3CD0 | 88 E1 00 08 */	lbz r7, 0x8(r1)
/* 813F3CD4 | 38 61 00 54 */	addi r3, r1, 0x54
/* 813F3CD8 | 89 21 00 09 */	lbz r9, 0x9(r1)
/* 813F3CDC | 38 81 00 A4 */	addi r4, r1, 0xa4
/* 813F3CE0 | 89 01 00 0A */	lbz r8, 0xa(r1)
/* 813F3CE4 | 38 A1 00 18 */	addi r5, r1, 0x18
/* 813F3CE8 | 88 01 00 0B */	lbz r0, 0xb(r1)
/* 813F3CEC | 38 C0 00 01 */	li r6, 0x1
/* 813F3CF0 | 98 E1 00 18 */	stb r7, 0x18(r1)
/* 813F3CF4 | 38 E0 00 00 */	li r7, 0x0
/* 813F3CF8 | 99 21 00 19 */	stb r9, 0x19(r1)
/* 813F3CFC | 99 01 00 1A */	stb r8, 0x1a(r1)
/* 813F3D00 | 98 01 00 1B */	stb r0, 0x1b(r1)
/* 813F3D04 | 4B F6 F2 B9 */	bl drawTexture__Q33ipl7utility8GraphicsFRCQ34nw4r2ut4RectRC9_GXTexObj8_GXColorUcQ43ipl7utility8Graphics11Orientation
.L_813F3D08:
/* 813F3D08 | 88 E1 00 38 */	lbz r7, 0x38(r1)
/* 813F3D0C | 38 61 00 74 */	addi r3, r1, 0x74
/* 813F3D10 | 89 21 00 39 */	lbz r9, 0x39(r1)
/* 813F3D14 | 38 81 00 E4 */	addi r4, r1, 0xe4
/* 813F3D18 | 89 01 00 3A */	lbz r8, 0x3a(r1)
/* 813F3D1C | 38 A1 00 14 */	addi r5, r1, 0x14
/* 813F3D20 | 88 01 00 3B */	lbz r0, 0x3b(r1)
/* 813F3D24 | 38 C0 00 01 */	li r6, 0x1
/* 813F3D28 | 98 E1 00 14 */	stb r7, 0x14(r1)
/* 813F3D2C | 38 E0 00 00 */	li r7, 0x0
/* 813F3D30 | 99 21 00 15 */	stb r9, 0x15(r1)
/* 813F3D34 | 99 01 00 16 */	stb r8, 0x16(r1)
/* 813F3D38 | 98 01 00 17 */	stb r0, 0x17(r1)
/* 813F3D3C | 4B F6 F2 81 */	bl drawTexture__Q33ipl7utility8GraphicsFRCQ34nw4r2ut4RectRC9_GXTexObj8_GXColorUcQ43ipl7utility8Graphics11Orientation
/* 813F3D40 | 88 E1 00 38 */	lbz r7, 0x38(r1)
/* 813F3D44 | 38 61 00 44 */	addi r3, r1, 0x44
/* 813F3D48 | 89 21 00 39 */	lbz r9, 0x39(r1)
/* 813F3D4C | 38 81 00 A4 */	addi r4, r1, 0xa4
/* 813F3D50 | 89 01 00 3A */	lbz r8, 0x3a(r1)
/* 813F3D54 | 38 A1 00 10 */	addi r5, r1, 0x10
/* 813F3D58 | 88 01 00 3B */	lbz r0, 0x3b(r1)
/* 813F3D5C | 38 C0 00 01 */	li r6, 0x1
/* 813F3D60 | 98 E1 00 10 */	stb r7, 0x10(r1)
/* 813F3D64 | 38 E0 00 00 */	li r7, 0x0
/* 813F3D68 | 99 21 00 11 */	stb r9, 0x11(r1)
/* 813F3D6C | 99 01 00 12 */	stb r8, 0x12(r1)
/* 813F3D70 | 98 01 00 13 */	stb r0, 0x13(r1)
/* 813F3D74 | 4B F6 F2 49 */	bl drawTexture__Q33ipl7utility8GraphicsFRCQ34nw4r2ut4RectRC9_GXTexObj8_GXColorUcQ43ipl7utility8Graphics11Orientation
/* 813F3D78 | 88 E1 00 38 */	lbz r7, 0x38(r1)
/* 813F3D7C | 38 61 00 54 */	addi r3, r1, 0x54
/* 813F3D80 | 89 21 00 39 */	lbz r9, 0x39(r1)
/* 813F3D84 | 38 81 00 A4 */	addi r4, r1, 0xa4
/* 813F3D88 | 89 01 00 3A */	lbz r8, 0x3a(r1)
/* 813F3D8C | 38 A1 00 0C */	addi r5, r1, 0xc
/* 813F3D90 | 88 01 00 3B */	lbz r0, 0x3b(r1)
/* 813F3D94 | 38 C0 00 01 */	li r6, 0x1
/* 813F3D98 | 98 E1 00 0C */	stb r7, 0xc(r1)
/* 813F3D9C | 38 E0 00 00 */	li r7, 0x0
/* 813F3DA0 | 99 21 00 0D */	stb r9, 0xd(r1)
/* 813F3DA4 | 99 01 00 0E */	stb r8, 0xe(r1)
/* 813F3DA8 | 98 01 00 0F */	stb r0, 0xf(r1)
/* 813F3DAC | 4B F6 F2 11 */	bl drawTexture__Q33ipl7utility8GraphicsFRCQ34nw4r2ut4RectRC9_GXTexObj8_GXColorUcQ43ipl7utility8Graphics11Orientation
/* 813F3DB0 | 80 7D 09 24 */	lwz r3, 0x924(r29)
/* 813F3DB4 | 88 03 00 12 */	lbz r0, 0x12(r3)
/* 813F3DB8 | 28 00 00 1E */	cmplwi r0, 0x1e
/* 813F3DBC | 40 82 00 18 */	bne .L_813F3DD4
/* 813F3DC0 | 88 1D 09 2C */	lbz r0, 0x92c(r29)
/* 813F3DC4 | 28 00 00 03 */	cmplwi r0, 0x3
/* 813F3DC8 | 40 81 00 0C */	ble .L_813F3DD4
/* 813F3DCC | 80 7D 00 70 */	lwz r3, 0x70(r29)
/* 813F3DD0 | 48 00 5D A1 */	bl draw__Q23ipl18SensitivityDrawingFPQ33ipl4nand4File
.L_813F3DD4:
/* 813F3DD4 | 80 7D 00 C0 */	lwz r3, 0xc0(r29)
/* 813F3DD8 | 4B F7 69 C5 */	bl draw__Q33ipl6layout6ObjectFv
/* 813F3DDC | 80 7D 00 C8 */	lwz r3, 0xc8(r29)
/* 813F3DE0 | 4B F7 69 BD */	bl draw__Q33ipl6layout6ObjectFv
/* 813F3DE4 | 80 1D 0B 98 */	lwz r0, 0xb98(r29)
/* 813F3DE8 | 2C 00 00 0C */	cmpwi r0, 0xc
/* 813F3DEC | 40 82 00 0C */	bne .L_813F3DF8
/* 813F3DF0 | 38 00 00 01 */	li r0, 0x1
/* 813F3DF4 | 90 1D 0B 9C */	stw r0, 0xb9c(r29)
.L_813F3DF8:
/* 813F3DF8 | 80 7D 09 28 */	lwz r3, 0x928(r29)
/* 813F3DFC | 88 03 00 04 */	lbz r0, 0x4(r3)
/* 813F3E00 | 28 00 00 02 */	cmplwi r0, 0x2
/* 813F3E04 | 41 80 01 10 */	blt .L_813F3F14
/* 813F3E08 | 28 00 00 07 */	cmplwi r0, 0x7
/* 813F3E0C | 41 81 01 08 */	bgt .L_813F3F14
/* 813F3E10 | 4B F4 1B 85 */	bl getRenderModeObj__Q23ipl6SystemFv
/* 813F3E14 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 813F3E18 | 38 00 00 0C */	li r0, 0xc
/* 813F3E1C | 38 C1 01 1D */	addi r6, r1, 0x11d
/* 813F3E20 | 38 A3 00 19 */	addi r5, r3, 0x19
/* 813F3E24 | 90 81 01 04 */	stw r4, 0x104(r1)
/* 813F3E28 | A0 83 00 04 */	lhz r4, 0x4(r3)
/* 813F3E2C | B0 81 01 08 */	sth r4, 0x108(r1)
/* 813F3E30 | A0 83 00 06 */	lhz r4, 0x6(r3)
/* 813F3E34 | B0 81 01 0A */	sth r4, 0x10a(r1)
/* 813F3E38 | A0 83 00 08 */	lhz r4, 0x8(r3)
/* 813F3E3C | B0 81 01 0C */	sth r4, 0x10c(r1)
/* 813F3E40 | A0 83 00 0A */	lhz r4, 0xa(r3)
/* 813F3E44 | B0 81 01 0E */	sth r4, 0x10e(r1)
/* 813F3E48 | A0 83 00 0C */	lhz r4, 0xc(r3)
/* 813F3E4C | B0 81 01 10 */	sth r4, 0x110(r1)
/* 813F3E50 | A0 83 00 0E */	lhz r4, 0xe(r3)
/* 813F3E54 | B0 81 01 12 */	sth r4, 0x112(r1)
/* 813F3E58 | A0 83 00 10 */	lhz r4, 0x10(r3)
/* 813F3E5C | B0 81 01 14 */	sth r4, 0x114(r1)
/* 813F3E60 | 80 83 00 14 */	lwz r4, 0x14(r3)
/* 813F3E64 | 90 81 01 18 */	stw r4, 0x118(r1)
/* 813F3E68 | 88 83 00 18 */	lbz r4, 0x18(r3)
/* 813F3E6C | 98 81 01 1C */	stb r4, 0x11c(r1)
/* 813F3E70 | 88 83 00 19 */	lbz r4, 0x19(r3)
/* 813F3E74 | 98 81 01 1D */	stb r4, 0x11d(r1)
/* 813F3E78 | 7C 09 03 A6 */	mtctr r0
.L_813F3E7C:
/* 813F3E7C | 88 85 00 01 */	lbz r4, 0x1(r5)
/* 813F3E80 | 8C 05 00 02 */	lbzu r0, 0x2(r5)
/* 813F3E84 | 98 86 00 01 */	stb r4, 0x1(r6)
/* 813F3E88 | 9C 06 00 02 */	stbu r0, 0x2(r6)
/* 813F3E8C | 42 00 FF F0 */	bdnz .L_813F3E7C
/* 813F3E90 | 88 03 00 32 */	lbz r0, 0x32(r3)
/* 813F3E94 | 38 81 00 30 */	addi r4, r1, 0x30
/* 813F3E98 | 38 A1 00 2C */	addi r5, r1, 0x2c
/* 813F3E9C | 38 C1 00 28 */	addi r6, r1, 0x28
/* 813F3EA0 | 98 01 01 36 */	stb r0, 0x136(r1)
/* 813F3EA4 | 88 03 00 33 */	lbz r0, 0x33(r3)
/* 813F3EA8 | 98 01 01 37 */	stb r0, 0x137(r1)
/* 813F3EAC | 88 03 00 34 */	lbz r0, 0x34(r3)
/* 813F3EB0 | 98 01 01 38 */	stb r0, 0x138(r1)
/* 813F3EB4 | 88 03 00 35 */	lbz r0, 0x35(r3)
/* 813F3EB8 | 98 01 01 39 */	stb r0, 0x139(r1)
/* 813F3EBC | 88 03 00 36 */	lbz r0, 0x36(r3)
/* 813F3EC0 | 98 01 01 3A */	stb r0, 0x13a(r1)
/* 813F3EC4 | 88 03 00 37 */	lbz r0, 0x37(r3)
/* 813F3EC8 | 98 01 01 3B */	stb r0, 0x13b(r1)
/* 813F3ECC | 88 03 00 38 */	lbz r0, 0x38(r3)
/* 813F3ED0 | 38 61 00 34 */	addi r3, r1, 0x34
/* 813F3ED4 | 98 01 01 3C */	stb r0, 0x13c(r1)
/* 813F3ED8 | 48 15 41 39 */	bl GXGetScissor
/* 813F3EDC | A0 01 01 0A */	lhz r0, 0x10a(r1)
/* 813F3EE0 | 38 60 00 00 */	li r3, 0x0
/* 813F3EE4 | A0 A1 01 08 */	lhz r5, 0x108(r1)
/* 813F3EE8 | 38 C0 01 32 */	li r6, 0x132
/* 813F3EEC | 54 04 F8 7E */	srwi r4, r0, 1
/* 813F3EF0 | 38 84 FF 5C */	subi r4, r4, 0xa4
/* 813F3EF4 | 48 15 40 B5 */	bl GXSetScissor
/* 813F3EF8 | 80 7D 00 C4 */	lwz r3, 0xc4(r29)
/* 813F3EFC | 4B F7 68 A1 */	bl draw__Q33ipl6layout6ObjectFv
/* 813F3F00 | 80 61 00 34 */	lwz r3, 0x34(r1)
/* 813F3F04 | 80 81 00 30 */	lwz r4, 0x30(r1)
/* 813F3F08 | 80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 813F3F0C | 80 C1 00 28 */	lwz r6, 0x28(r1)
/* 813F3F10 | 48 15 40 99 */	bl GXSetScissor
.L_813F3F14:
/* 813F3F14 | E3 E1 01 98 */	psq_l f31, 0x198(r1), 0, qr0
/* 813F3F18 | CB E1 01 90 */	lfd f31, 0x190(r1)
/* 813F3F1C | E3 C1 01 88 */	psq_l f30, 0x188(r1), 0, qr0
/* 813F3F20 | 39 61 01 80 */	addi r11, r1, 0x180
/* 813F3F24 | CB C1 01 80 */	lfd f30, 0x180(r1)
/* 813F3F28 | 48 20 55 E5 */	bl _restgpr_27
/* 813F3F2C | 80 01 01 A4 */	lwz r0, 0x1a4(r1)
/* 813F3F30 | 7C 08 03 A6 */	mtlr r0
/* 813F3F34 | 38 21 01 A0 */	addi r1, r1, 0x1a0
/* 813F3F38 | 4E 80 00 20 */	blr
.endfn draw__Q33ipl5scene7SettingFv

# .text:0x37C8 | 0x813F3F3C | size: 0x14
# nw4r::ut::Rect::Rect(float, float, float, float)
.fn __ct__Q34nw4r2ut4RectFffff, weak
/* 813F3F3C | D0 23 00 00 */	stfs f1, 0x0(r3)
/* 813F3F40 | D0 43 00 04 */	stfs f2, 0x4(r3)
/* 813F3F44 | D0 63 00 08 */	stfs f3, 0x8(r3)
/* 813F3F48 | D0 83 00 0C */	stfs f4, 0xc(r3)
/* 813F3F4C | 4E 80 00 20 */	blr
.endfn __ct__Q34nw4r2ut4RectFffff

# .text:0x37DC | 0x813F3F50 | size: 0x88
# ipl::scene::Setting::initWiiSettingData()
.fn initWiiSettingData__Q33ipl5scene7SettingFv, global
/* 813F3F50 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F3F54 | 7C 08 02 A6 */	mflr r0
/* 813F3F58 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F3F5C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F3F60 | 7C 7F 1B 78 */	mr r31, r3
/* 813F3F64 | 4B F7 D1 ED */	bl getWiiSettingData__Q23www10wiisettingFv
/* 813F3F68 | 90 7F 09 24 */	stw r3, 0x924(r31)
/* 813F3F6C | 4B F7 D1 F1 */	bl getWiiSettingFlag__Q23www10wiisettingFv
/* 813F3F70 | 90 7F 09 28 */	stw r3, 0x928(r31)
/* 813F3F74 | 48 00 7E F9 */	bl getCountry__Q33ipl8parental8ParentalFv
/* 813F3F78 | 80 9F 09 24 */	lwz r4, 0x924(r31)
/* 813F3F7C | 98 64 00 3C */	stb r3, 0x3c(r4)
/* 813F3F80 | 48 17 60 91 */	bl fn_8156A010
/* 813F3F84 | 38 03 00 10 */	addi r0, r3, 0x10
/* 813F3F88 | 80 7F 09 24 */	lwz r3, 0x924(r31)
/* 813F3F8C | 20 00 00 20 */	subfic r0, r0, 0x20
/* 813F3F90 | 98 03 00 07 */	stb r0, 0x7(r3)
/* 813F3F94 | 48 17 63 99 */	bl fn_8156A32C
/* 813F3F98 | 80 9F 09 24 */	lwz r4, 0x924(r31)
/* 813F3F9C | 98 64 00 0B */	stb r3, 0xb(r4)
/* 813F3FA0 | 48 17 60 15 */	bl SCGetAspectRatio
/* 813F3FA4 | 80 9F 09 24 */	lwz r4, 0x924(r31)
/* 813F3FA8 | 98 64 00 06 */	stb r3, 0x6(r4)
/* 813F3FAC | 48 17 61 59 */	bl SCGetLanguage
/* 813F3FB0 | 80 9F 09 24 */	lwz r4, 0x924(r31)
/* 813F3FB4 | 98 64 00 30 */	stb r3, 0x30(r4)
/* 813F3FB8 | 48 00 7C 01 */	bl checkRating__Q33ipl8parental8ParentalFv
/* 813F3FBC | 80 9F 09 24 */	lwz r4, 0x924(r31)
/* 813F3FC0 | 98 64 00 2D */	stb r3, 0x2d(r4)
/* 813F3FC4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F3FC8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F3FCC | 7C 08 03 A6 */	mtlr r0
/* 813F3FD0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F3FD4 | 4E 80 00 20 */	blr
.endfn initWiiSettingData__Q33ipl5scene7SettingFv

# .text:0x3864 | 0x813F3FD8 | size: 0x170
# ipl::scene::Setting::initHTMLText()
.fn initHTMLText__Q33ipl5scene7SettingFv, global
/* 813F3FD8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F3FDC | 7C 08 02 A6 */	mflr r0
/* 813F3FE0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F3FE4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F3FE8 | 7C 7F 1B 78 */	mr r31, r3
/* 813F3FEC | 3C 60 81 65 */	lis r3, lbl_816571EC@ha
/* 813F3FF0 | 80 9F 09 24 */	lwz r4, 0x924(r31)
/* 813F3FF4 | 38 63 71 EC */	addi r3, r3, lbl_816571EC@l
/* 813F3FF8 | 88 84 00 12 */	lbz r4, 0x12(r4)
/* 813F3FFC | 4C C6 31 82 */	crclr cr1eq
/* 813F4000 | 48 13 A6 A1 */	bl OSReport
/* 813F4004 | 38 7F 09 38 */	addi r3, r31, 0x938
/* 813F4008 | 38 80 00 00 */	li r4, 0x0
/* 813F400C | 38 A0 02 02 */	li r5, 0x202
/* 813F4010 | 4B F3 C3 25 */	bl memset
/* 813F4014 | 80 7F 09 24 */	lwz r3, 0x924(r31)
/* 813F4018 | 88 03 00 12 */	lbz r0, 0x12(r3)
/* 813F401C | 28 00 00 10 */	cmplwi r0, 0x10
/* 813F4020 | 41 81 01 14 */	bgt .L_813F4134
/* 813F4024 | 3C 60 81 65 */	lis r3, jumptable_81657204@ha
/* 813F4028 | 54 00 10 3A */	slwi r0, r0, 2
/* 813F402C | 38 63 72 04 */	addi r3, r3, jumptable_81657204@l
/* 813F4030 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813F4034 | 7C 69 03 A6 */	mtctr r3
/* 813F4038 | 4E 80 04 20 */	bctr
.L_813F403C:
/* 813F403C | 7F E3 FB 78 */	mr r3, r31
/* 813F4040 | 48 00 0D 39 */	bl initNickName__Q33ipl5scene7SettingFv
/* 813F4044 | 48 00 00 F0 */	b .L_813F4134
.L_813F4048:
/* 813F4048 | 7F E3 FB 78 */	mr r3, r31
/* 813F404C | 48 00 0D BD */	bl initSecurityKey__Q33ipl5scene7SettingFv
/* 813F4050 | 48 00 00 E4 */	b .L_813F4134
.L_813F4054:
/* 813F4054 | 7F E3 FB 78 */	mr r3, r31
/* 813F4058 | 48 00 0E 89 */	bl initSSID__Q33ipl5scene7SettingFv
/* 813F405C | 48 00 00 D8 */	b .L_813F4134
.L_813F4060:
/* 813F4060 | 7F E3 FB 78 */	mr r3, r31
/* 813F4064 | 48 00 0F 05 */	bl initIP__Q33ipl5scene7SettingFv
/* 813F4068 | 48 00 00 CC */	b .L_813F4134
.L_813F406C:
/* 813F406C | 7F E3 FB 78 */	mr r3, r31
/* 813F4070 | 48 00 0F AD */	bl initDNS__Q33ipl5scene7SettingFv
/* 813F4074 | 48 00 00 C0 */	b .L_813F4134
.L_813F4078:
/* 813F4078 | 7F E3 FB 78 */	mr r3, r31
/* 813F407C | 48 00 10 29 */	bl initProxy__Q33ipl5scene7SettingFv
/* 813F4080 | 48 00 00 B4 */	b .L_813F4134
.L_813F4084:
/* 813F4084 | 7F E3 FB 78 */	mr r3, r31
/* 813F4088 | 48 00 10 A1 */	bl initBasic__Q33ipl5scene7SettingFv
/* 813F408C | 48 00 00 A8 */	b .L_813F4134
.L_813F4090:
/* 813F4090 | 7F E3 FB 78 */	mr r3, r31
/* 813F4094 | 48 00 11 15 */	bl initMTU__Q33ipl5scene7SettingFv
/* 813F4098 | 48 00 00 9C */	b .L_813F4134
.L_813F409C:
/* 813F409C | 80 7F 09 34 */	lwz r3, 0x934(r31)
/* 813F40A0 | 38 80 00 00 */	li r4, 0x0
/* 813F40A4 | 38 A0 00 05 */	li r5, 0x5
/* 813F40A8 | 38 63 04 DF */	addi r3, r3, 0x4df
/* 813F40AC | 4B F3 C2 89 */	bl memset
/* 813F40B0 | 48 00 00 84 */	b .L_813F4134
.L_813F40B4:
/* 813F40B4 | 80 7F 09 34 */	lwz r3, 0x934(r31)
/* 813F40B8 | 38 80 00 00 */	li r4, 0x0
/* 813F40BC | 38 A0 00 05 */	li r5, 0x5
/* 813F40C0 | 38 63 04 E4 */	addi r3, r3, 0x4e4
/* 813F40C4 | 4B F3 C2 71 */	bl memset
/* 813F40C8 | 48 00 00 6C */	b .L_813F4134
.L_813F40CC:
/* 813F40CC | 80 7F 09 34 */	lwz r3, 0x934(r31)
/* 813F40D0 | 38 80 00 00 */	li r4, 0x0
/* 813F40D4 | 38 A0 00 05 */	li r5, 0x5
/* 813F40D8 | 38 63 04 E9 */	addi r3, r3, 0x4e9
/* 813F40DC | 4B F3 C2 59 */	bl memset
/* 813F40E0 | 48 00 00 54 */	b .L_813F4134
.L_813F40E4:
/* 813F40E4 | 7F E3 FB 78 */	mr r3, r31
/* 813F40E8 | 48 00 11 25 */	bl initSecA__Q33ipl5scene7SettingFv
/* 813F40EC | 48 00 00 48 */	b .L_813F4134
.L_813F40F0:
/* 813F40F0 | 80 7F 09 34 */	lwz r3, 0x934(r31)
/* 813F40F4 | 38 80 00 00 */	li r4, 0x0
/* 813F40F8 | 38 A0 00 64 */	li r5, 0x64
/* 813F40FC | 38 63 05 52 */	addi r3, r3, 0x552
/* 813F4100 | 4B F3 C2 35 */	bl memset
/* 813F4104 | 48 00 00 30 */	b .L_813F4134
.L_813F4108:
/* 813F4108 | 80 7F 09 34 */	lwz r3, 0x934(r31)
/* 813F410C | 38 80 00 00 */	li r4, 0x0
/* 813F4110 | 38 A0 00 06 */	li r5, 0x6
/* 813F4114 | 38 63 05 B6 */	addi r3, r3, 0x5b6
/* 813F4118 | 4B F3 C2 1D */	bl memset
/* 813F411C | 48 00 00 18 */	b .L_813F4134
.L_813F4120:
/* 813F4120 | 80 7F 09 34 */	lwz r3, 0x934(r31)
/* 813F4124 | 38 80 00 00 */	li r4, 0x0
/* 813F4128 | 38 A0 00 42 */	li r5, 0x42
/* 813F412C | 38 63 05 BC */	addi r3, r3, 0x5bc
/* 813F4130 | 4B F3 C2 05 */	bl memset
.L_813F4134:
/* 813F4134 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F4138 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F413C | 7C 08 03 A6 */	mtlr r0
/* 813F4140 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F4144 | 4E 80 00 20 */	blr
.endfn initHTMLText__Q33ipl5scene7SettingFv

# .text:0x39D4 | 0x813F4148 | size: 0x4C
# ipl::scene::Setting::initMessage()
.fn initMessage__Q33ipl5scene7SettingFv, global
/* 813F4148 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F414C | 7C 08 02 A6 */	mflr r0
/* 813F4150 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F4154 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F4158 | 7C 7F 1B 78 */	mr r31, r3
/* 813F415C | 3C 60 81 65 */	lis r3, lbl_81657248@ha
/* 813F4160 | 80 9F 09 24 */	lwz r4, 0x924(r31)
/* 813F4164 | 38 63 72 48 */	addi r3, r3, lbl_81657248@l
/* 813F4168 | 88 84 00 12 */	lbz r4, 0x12(r4)
/* 813F416C | 4C C6 31 82 */	crclr cr1eq
/* 813F4170 | 48 13 A5 31 */	bl OSReport
/* 813F4174 | 80 7F 09 24 */	lwz r3, 0x924(r31)
/* 813F4178 | 38 00 00 00 */	li r0, 0x0
/* 813F417C | 98 03 00 12 */	stb r0, 0x12(r3)
/* 813F4180 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F4184 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F4188 | 7C 08 03 A6 */	mtlr r0
/* 813F418C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F4190 | 4E 80 00 20 */	blr
.endfn initMessage__Q33ipl5scene7SettingFv

# .text:0x3A20 | 0x813F4194 | size: 0x354
# ipl::scene::Setting::initKeyboard(const char*)
.fn initKeyboard__Q33ipl5scene7SettingFPCc, global
/* 813F4194 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813F4198 | 7C 08 02 A6 */	mflr r0
/* 813F419C | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813F41A0 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813F41A4 | 48 20 53 11 */	bl _savegpr_24
/* 813F41A8 | 7C 7A 1B 78 */	mr r26, r3
/* 813F41AC | 3C 60 81 65 */	lis r3, lbl_8165725F@ha
/* 813F41B0 | 80 BA 09 24 */	lwz r5, 0x924(r26)
/* 813F41B4 | 7C 98 23 78 */	mr r24, r4
/* 813F41B8 | 38 63 72 5F */	addi r3, r3, lbl_8165725F@l
/* 813F41BC | 88 85 00 11 */	lbz r4, 0x11(r5)
/* 813F41C0 | 4C C6 31 82 */	crclr cr1eq
/* 813F41C4 | 48 13 A4 DD */	bl OSReport
/* 813F41C8 | 38 7A 09 38 */	addi r3, r26, 0x938
/* 813F41CC | 38 80 00 00 */	li r4, 0x0
/* 813F41D0 | 38 A0 02 02 */	li r5, 0x202
/* 813F41D4 | 4B F3 C1 61 */	bl memset
/* 813F41D8 | 3B C0 00 01 */	li r30, 0x1
/* 813F41DC | 3B 80 00 00 */	li r28, 0x0
/* 813F41E0 | 48 17 68 ED */	bl SCGetProductArea
/* 813F41E4 | 80 9A 09 24 */	lwz r4, 0x924(r26)
/* 813F41E8 | 7C 7B 07 74 */	extsb r27, r3
/* 813F41EC | 88 04 00 11 */	lbz r0, 0x11(r4)
/* 813F41F0 | 28 00 00 16 */	cmplwi r0, 0x16
/* 813F41F4 | 41 81 00 EC */	bgt .L_813F42E0
/* 813F41F8 | 3C 60 81 65 */	lis r3, jumptable_81657290@ha
/* 813F41FC | 54 00 10 3A */	slwi r0, r0, 2
/* 813F4200 | 38 63 72 90 */	addi r3, r3, jumptable_81657290@l
/* 813F4204 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813F4208 | 7C 69 03 A6 */	mtctr r3
/* 813F420C | 4E 80 04 20 */	bctr
.L_813F4210:
/* 813F4210 | 3B E0 00 0A */	li r31, 0xa
/* 813F4214 | 3B A0 00 06 */	li r29, 0x6
/* 813F4218 | 48 00 00 C8 */	b .L_813F42E0
.L_813F421C:
/* 813F421C | 3B E0 00 20 */	li r31, 0x20
/* 813F4220 | 3B C0 00 02 */	li r30, 0x2
/* 813F4224 | 3B A0 00 07 */	li r29, 0x7
/* 813F4228 | 48 00 00 B8 */	b .L_813F42E0
.L_813F422C:
/* 813F422C | 3B E0 00 FF */	li r31, 0xff
/* 813F4230 | 3B C0 00 10 */	li r30, 0x10
/* 813F4234 | 3B A0 00 07 */	li r29, 0x7
/* 813F4238 | 48 00 00 A8 */	b .L_813F42E0
.L_813F423C:
/* 813F423C | 3B E0 00 20 */	li r31, 0x20
/* 813F4240 | 3B C0 00 02 */	li r30, 0x2
/* 813F4244 | 3B A0 00 07 */	li r29, 0x7
/* 813F4248 | 48 00 00 98 */	b .L_813F42E0
.L_813F424C:
/* 813F424C | 2C 1B 00 0B */	cmpwi r27, 0xb
/* 813F4250 | 3B E0 00 20 */	li r31, 0x20
/* 813F4254 | 3B C0 00 02 */	li r30, 0x2
/* 813F4258 | 41 82 00 0C */	beq .L_813F4264
/* 813F425C | 2C 1B 00 06 */	cmpwi r27, 0x6
/* 813F4260 | 40 82 00 0C */	bne .L_813F426C
.L_813F4264:
/* 813F4264 | 3B A0 00 0D */	li r29, 0xd
/* 813F4268 | 48 00 00 78 */	b .L_813F42E0
.L_813F426C:
/* 813F426C | 3B A0 00 05 */	li r29, 0x5
/* 813F4270 | 48 00 00 70 */	b .L_813F42E0
.L_813F4274:
/* 813F4274 | 3B E0 00 0F */	li r31, 0xf
/* 813F4278 | 3B A0 00 0A */	li r29, 0xa
/* 813F427C | 48 00 00 64 */	b .L_813F42E0
.L_813F4280:
/* 813F4280 | 3B E0 00 05 */	li r31, 0x5
/* 813F4284 | 3B A0 00 03 */	li r29, 0x3
/* 813F4288 | 48 00 00 58 */	b .L_813F42E0
.L_813F428C:
/* 813F428C | 3B E0 00 04 */	li r31, 0x4
/* 813F4290 | 3B A0 00 03 */	li r29, 0x3
/* 813F4294 | 48 00 00 4C */	b .L_813F42E0
.L_813F4298:
/* 813F4298 | 48 00 72 D5 */	bl getPrivacyMode__Q33ipl3ncd10NCDSettingFv
/* 813F429C | 54 60 04 3E */	clrlwi r0, r3, 16
/* 813F42A0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813F42A4 | 40 82 00 10 */	bne .L_813F42B4
/* 813F42A8 | 3B E0 00 1A */	li r31, 0x1a
/* 813F42AC | 3B C0 00 02 */	li r30, 0x2
/* 813F42B0 | 48 00 00 0C */	b .L_813F42BC
.L_813F42B4:
/* 813F42B4 | 3B E0 00 40 */	li r31, 0x40
/* 813F42B8 | 3B C0 00 04 */	li r30, 0x4
.L_813F42BC:
/* 813F42BC | 3B A0 00 07 */	li r29, 0x7
/* 813F42C0 | 48 00 00 20 */	b .L_813F42E0
.L_813F42C4:
/* 813F42C4 | 3B E0 00 20 */	li r31, 0x20
/* 813F42C8 | 3B C0 00 02 */	li r30, 0x2
/* 813F42CC | 3B A0 00 07 */	li r29, 0x7
/* 813F42D0 | 48 00 00 10 */	b .L_813F42E0
.L_813F42D4:
/* 813F42D4 | 3B E0 00 40 */	li r31, 0x40
/* 813F42D8 | 3B C0 00 04 */	li r30, 0x4
/* 813F42DC | 3B A0 00 07 */	li r29, 0x7
.L_813F42E0:
/* 813F42E0 | 80 7A 09 24 */	lwz r3, 0x924(r26)
/* 813F42E4 | 88 03 00 11 */	lbz r0, 0x11(r3)
/* 813F42E8 | 28 00 00 0D */	cmplwi r0, 0xd
/* 813F42EC | 41 82 00 34 */	beq .L_813F4320
/* 813F42F0 | 28 00 00 02 */	cmplwi r0, 0x2
/* 813F42F4 | 41 82 00 2C */	beq .L_813F4320
/* 813F42F8 | 28 00 00 12 */	cmplwi r0, 0x12
/* 813F42FC | 41 82 00 24 */	beq .L_813F4320
/* 813F4300 | 28 00 00 13 */	cmplwi r0, 0x13
/* 813F4304 | 41 82 00 1C */	beq .L_813F4320
/* 813F4308 | 28 00 00 16 */	cmplwi r0, 0x16
/* 813F430C | 41 82 00 14 */	beq .L_813F4320
/* 813F4310 | 7F 04 C3 78 */	mr r4, r24
/* 813F4314 | 38 7A 09 38 */	addi r3, r26, 0x938
/* 813F4318 | 38 A0 01 01 */	li r5, 0x101
/* 813F431C | 4B F6 FD B5 */	bl UTF8ToUTF16__Q33ipl7utility13CharacterCodeFPwPCcl
.L_813F4320:
/* 813F4320 | 38 7A 09 38 */	addi r3, r26, 0x938
/* 813F4324 | 48 21 43 89 */	bl fn_816086AC
/* 813F4328 | 3D 00 81 65 */	lis r8, lbl_81657277@ha
/* 813F432C | 7C 67 1B 78 */	mr r7, r3
/* 813F4330 | 7F A4 EB 78 */	mr r4, r29
/* 813F4334 | 7F E5 FB 78 */	mr r5, r31
/* 813F4338 | 7F C6 F3 78 */	mr r6, r30
/* 813F433C | 38 68 72 77 */	addi r3, r8, lbl_81657277@l
/* 813F4340 | 4C C6 31 82 */	crclr cr1eq
/* 813F4344 | 48 13 A3 5D */	bl OSReport
/* 813F4348 | 57 E0 08 3C */	slwi r0, r31, 1
/* 813F434C | 38 80 00 00 */	li r4, 0x0
/* 813F4350 | 7C 7A 02 14 */	add r3, r26, r0
/* 813F4354 | B0 83 09 38 */	sth r4, 0x938(r3)
/* 813F4358 | 80 7A 09 24 */	lwz r3, 0x924(r26)
/* 813F435C | 88 03 00 11 */	lbz r0, 0x11(r3)
/* 813F4360 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 813F4364 | 41 82 00 54 */	beq .L_813F43B8
/* 813F4368 | 40 80 00 18 */	bge .L_813F4380
/* 813F436C | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813F4370 | 40 80 00 38 */	bge .L_813F43A8
/* 813F4374 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813F4378 | 40 80 00 1C */	bge .L_813F4394
/* 813F437C | 48 00 00 3C */	b .L_813F43B8
.L_813F4380:
/* 813F4380 | 2C 00 00 16 */	cmpwi r0, 0x16
/* 813F4384 | 41 82 00 10 */	beq .L_813F4394
/* 813F4388 | 40 80 00 30 */	bge .L_813F43B8
/* 813F438C | 2C 00 00 15 */	cmpwi r0, 0x15
/* 813F4390 | 40 80 00 28 */	bge .L_813F43B8
.L_813F4394:
/* 813F4394 | 7F 43 D3 78 */	mr r3, r26
/* 813F4398 | 38 9A 09 38 */	addi r4, r26, 0x938
/* 813F439C | 48 00 21 71 */	bl checkInputString__Q33ipl5scene7SettingFPCw
/* 813F43A0 | 7C 7C 1B 78 */	mr r28, r3
/* 813F43A4 | 48 00 00 14 */	b .L_813F43B8
.L_813F43A8:
/* 813F43A8 | 7F 43 D3 78 */	mr r3, r26
/* 813F43AC | 38 9A 09 38 */	addi r4, r26, 0x938
/* 813F43B0 | 48 00 21 6D */	bl checkIPString__Q33ipl5scene7SettingFPCw
/* 813F43B4 | 7C 7C 1B 78 */	mr r28, r3
.L_813F43B8:
/* 813F43B8 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 813F43BC | 41 82 00 14 */	beq .L_813F43D0
/* 813F43C0 | 38 7A 09 38 */	addi r3, r26, 0x938
/* 813F43C4 | 38 80 00 00 */	li r4, 0x0
/* 813F43C8 | 38 A0 02 02 */	li r5, 0x202
/* 813F43CC | 4B F3 BF 69 */	bl memset
.L_813F43D0:
/* 813F43D0 | 2C 1B 00 0B */	cmpwi r27, 0xb
/* 813F43D4 | 40 82 00 60 */	bne .L_813F4434
/* 813F43D8 | 3F 60 81 09 */	lis r27, smArg__Q23ipl6System@ha
/* 813F43DC | 3B 7B 90 08 */	addi r27, r27, smArg__Q23ipl6System@l
/* 813F43E0 | 80 7B 00 90 */	lwz r3, 0x90(r27)
/* 813F43E4 | 4B F6 20 55 */	bl getZiSystemDic__Q33ipl8keyboard7ManagerFv
/* 813F43E8 | 7C 79 1B 78 */	mr r25, r3
/* 813F43EC | 80 7B 00 90 */	lwz r3, 0x90(r27)
/* 813F43F0 | 4B F6 20 55 */	bl getZiOemDic__Q33ipl8keyboard7ManagerFv
/* 813F43F4 | 80 9B 00 90 */	lwz r4, 0x90(r27)
/* 813F43F8 | 7C 78 1B 78 */	mr r24, r3
/* 813F43FC | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 813F4400 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F4404 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 813F4408 | 7D 89 03 A6 */	mtctr r12
/* 813F440C | 4E 80 04 21 */	bctrl
/* 813F4410 | 7C 7B 1B 78 */	mr r27, r3
/* 813F4414 | 80 63 01 6C */	lwz r3, 0x16c(r3)
/* 813F4418 | 7F 24 CB 78 */	mr r4, r25
/* 813F441C | 7F 05 C3 78 */	mr r5, r24
/* 813F4420 | 48 03 FA B1 */	bl fn_81433ED0
/* 813F4424 | 7F 63 DB 78 */	mr r3, r27
/* 813F4428 | 48 02 CD 4D */	bl fn_81421174
/* 813F442C | 7F 63 DB 78 */	mr r3, r27
/* 813F4430 | 48 03 06 BD */	bl fn_81424AEC
.L_813F4434:
/* 813F4434 | 3F 60 81 09 */	lis r27, smArg__Q23ipl6System@ha
/* 813F4438 | 38 1A 09 38 */	addi r0, r26, 0x938
/* 813F443C | 3B 7B 90 08 */	addi r27, r27, smArg__Q23ipl6System@l
/* 813F4440 | 93 A1 00 08 */	stw r29, 0x8(r1)
/* 813F4444 | 80 7B 00 90 */	lwz r3, 0x90(r27)
/* 813F4448 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813F444C | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813F4450 | 38 80 00 00 */	li r4, 0x0
/* 813F4454 | 93 E1 00 10 */	stw r31, 0x10(r1)
/* 813F4458 | 93 C1 00 14 */	stw r30, 0x14(r1)
/* 813F445C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F4460 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813F4464 | 7D 89 03 A6 */	mtctr r12
/* 813F4468 | 4E 80 04 21 */	bctrl
/* 813F446C | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 813F4470 | 41 82 00 10 */	beq .L_813F4480
/* 813F4474 | 7F 43 D3 78 */	mr r3, r26
/* 813F4478 | 48 00 1B ED */	bl setDefaultBackString__Q33ipl5scene7SettingFv
/* 813F447C | 48 00 00 20 */	b .L_813F449C
.L_813F4480:
/* 813F4480 | 80 7B 00 90 */	lwz r3, 0x90(r27)
/* 813F4484 | 38 8D 91 4A */	li r4, lbl_8169718A@sda21
/* 813F4488 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813F448C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F4490 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 813F4494 | 7D 89 03 A6 */	mtctr r12
/* 813F4498 | 4E 80 04 21 */	bctrl
.L_813F449C:
/* 813F449C | 80 7A 09 24 */	lwz r3, 0x924(r26)
/* 813F44A0 | 88 03 00 11 */	lbz r0, 0x11(r3)
/* 813F44A4 | 28 00 00 11 */	cmplwi r0, 0x11
/* 813F44A8 | 40 82 00 28 */	bne .L_813F44D0
/* 813F44AC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F44B0 | 38 80 00 01 */	li r4, 0x1
/* 813F44B4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F44B8 | 80 63 00 90 */	lwz r3, 0x90(r3)
/* 813F44BC | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813F44C0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F44C4 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 813F44C8 | 7D 89 03 A6 */	mtctr r12
/* 813F44CC | 4E 80 04 21 */	bctrl
.L_813F44D0:
/* 813F44D0 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813F44D4 | 48 20 50 2D */	bl _restgpr_24
/* 813F44D8 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 813F44DC | 7C 08 03 A6 */	mtlr r0
/* 813F44E0 | 38 21 00 40 */	addi r1, r1, 0x40
/* 813F44E4 | 4E 80 00 20 */	blr
.endfn initKeyboard__Q33ipl5scene7SettingFPCc

# .text:0x3D74 | 0x813F44E8 | size: 0x488
# ipl::scene::Setting::calcKeyboard()
.fn calcKeyboard__Q33ipl5scene7SettingFv, global
/* 813F44E8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F44EC | 7C 08 02 A6 */	mflr r0
/* 813F44F0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F44F4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F44F8 | 7C 7F 1B 78 */	mr r31, r3
/* 813F44FC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813F4500 | 80 03 0B 40 */	lwz r0, 0xb40(r3)
/* 813F4504 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813F4508 | 41 82 00 28 */	beq .L_813F4530
/* 813F450C | 40 80 00 18 */	bge .L_813F4524
/* 813F4510 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813F4514 | 40 80 04 1C */	bge .L_813F4930
/* 813F4518 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F451C | 40 80 03 9C */	bge .L_813F48B8
/* 813F4520 | 48 00 04 10 */	b .L_813F4930
.L_813F4524:
/* 813F4524 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813F4528 | 40 80 04 08 */	bge .L_813F4930
/* 813F452C | 48 00 03 5C */	b .L_813F4888
.L_813F4530:
/* 813F4530 | 88 03 0B 44 */	lbz r0, 0xb44(r3)
/* 813F4534 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F4538 | 41 82 02 18 */	beq .L_813F4750
/* 813F453C | 48 00 05 59 */	bl onTextInputOK__Q33ipl5scene7SettingFv
/* 813F4540 | 80 7F 09 24 */	lwz r3, 0x924(r31)
/* 813F4544 | 88 83 00 11 */	lbz r4, 0x11(r3)
/* 813F4548 | 28 04 00 16 */	cmplwi r4, 0x16
/* 813F454C | 41 81 00 F8 */	bgt .L_813F4644
/* 813F4550 | 3C 60 81 65 */	lis r3, jumptable_81657358@ha
/* 813F4554 | 54 80 10 3A */	slwi r0, r4, 2
/* 813F4558 | 38 63 73 58 */	addi r3, r3, jumptable_81657358@l
/* 813F455C | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813F4560 | 7C 69 03 A6 */	mtctr r3
/* 813F4564 | 4E 80 04 20 */	bctr
.L_813F4568:
/* 813F4568 | 83 DF 09 34 */	lwz r30, 0x934(r31)
/* 813F456C | 48 00 00 D8 */	b .L_813F4644
.L_813F4570:
/* 813F4570 | 80 7F 09 34 */	lwz r3, 0x934(r31)
/* 813F4574 | 3B C3 00 1F */	addi r30, r3, 0x1f
/* 813F4578 | 48 00 00 CC */	b .L_813F4644
.L_813F457C:
/* 813F457C | 80 7F 09 34 */	lwz r3, 0x934(r31)
/* 813F4580 | 3B C3 00 60 */	addi r30, r3, 0x60
/* 813F4584 | 48 00 00 C0 */	b .L_813F4644
.L_813F4588:
/* 813F4588 | 80 7F 09 34 */	lwz r3, 0x934(r31)
/* 813F458C | 3B C3 00 C1 */	addi r30, r3, 0xc1
/* 813F4590 | 48 00 00 B4 */	b .L_813F4644
.L_813F4594:
/* 813F4594 | 80 7F 09 34 */	lwz r3, 0x934(r31)
/* 813F4598 | 3B C3 00 D1 */	addi r30, r3, 0xd1
/* 813F459C | 48 00 00 A8 */	b .L_813F4644
.L_813F45A0:
/* 813F45A0 | 80 7F 09 34 */	lwz r3, 0x934(r31)
/* 813F45A4 | 3B C3 00 E1 */	addi r30, r3, 0xe1
/* 813F45A8 | 48 00 00 9C */	b .L_813F4644
.L_813F45AC:
/* 813F45AC | 80 7F 09 34 */	lwz r3, 0x934(r31)
/* 813F45B0 | 3B C3 00 F1 */	addi r30, r3, 0xf1
/* 813F45B4 | 48 00 00 90 */	b .L_813F4644
.L_813F45B8:
/* 813F45B8 | 80 7F 09 34 */	lwz r3, 0x934(r31)
/* 813F45BC | 3B C3 01 01 */	addi r30, r3, 0x101
/* 813F45C0 | 48 00 00 84 */	b .L_813F4644
.L_813F45C4:
/* 813F45C4 | 80 7F 09 34 */	lwz r3, 0x934(r31)
/* 813F45C8 | 3B C3 01 11 */	addi r30, r3, 0x111
/* 813F45CC | 48 00 00 78 */	b .L_813F4644
.L_813F45D0:
/* 813F45D0 | 80 7F 09 34 */	lwz r3, 0x934(r31)
/* 813F45D4 | 3B C3 04 12 */	addi r30, r3, 0x412
/* 813F45D8 | 48 00 00 6C */	b .L_813F4644
.L_813F45DC:
/* 813F45DC | 80 7F 09 34 */	lwz r3, 0x934(r31)
/* 813F45E0 | 3B C3 04 18 */	addi r30, r3, 0x418
/* 813F45E4 | 48 00 00 60 */	b .L_813F4644
.L_813F45E8:
/* 813F45E8 | 80 7F 09 34 */	lwz r3, 0x934(r31)
/* 813F45EC | 3B C3 04 79 */	addi r30, r3, 0x479
/* 813F45F0 | 48 00 00 54 */	b .L_813F4644
.L_813F45F4:
/* 813F45F4 | 80 7F 09 34 */	lwz r3, 0x934(r31)
/* 813F45F8 | 3B C3 04 DF */	addi r30, r3, 0x4df
/* 813F45FC | 48 00 00 48 */	b .L_813F4644
.L_813F4600:
/* 813F4600 | 80 7F 09 34 */	lwz r3, 0x934(r31)
/* 813F4604 | 3B C3 04 E4 */	addi r30, r3, 0x4e4
/* 813F4608 | 48 00 00 3C */	b .L_813F4644
.L_813F460C:
/* 813F460C | 80 7F 09 34 */	lwz r3, 0x934(r31)
/* 813F4610 | 3B C3 04 E9 */	addi r30, r3, 0x4e9
/* 813F4614 | 48 00 00 30 */	b .L_813F4644
.L_813F4618:
/* 813F4618 | 80 7F 09 34 */	lwz r3, 0x934(r31)
/* 813F461C | 3B C3 04 EE */	addi r30, r3, 0x4ee
/* 813F4620 | 48 00 00 24 */	b .L_813F4644
.L_813F4624:
/* 813F4624 | 80 7F 09 34 */	lwz r3, 0x934(r31)
/* 813F4628 | 3B C3 05 52 */	addi r30, r3, 0x552
/* 813F462C | 48 00 00 18 */	b .L_813F4644
.L_813F4630:
/* 813F4630 | 80 7F 09 34 */	lwz r3, 0x934(r31)
/* 813F4634 | 3B C3 05 B6 */	addi r30, r3, 0x5b6
/* 813F4638 | 48 00 00 0C */	b .L_813F4644
.L_813F463C:
/* 813F463C | 80 7F 09 34 */	lwz r3, 0x934(r31)
/* 813F4640 | 3B C3 04 DA */	addi r30, r3, 0x4da
.L_813F4644:
/* 813F4644 | 3C 60 81 65 */	lis r3, lbl_816572EC@ha
/* 813F4648 | 7F C5 F3 78 */	mr r5, r30
/* 813F464C | 38 63 72 EC */	addi r3, r3, lbl_816572EC@l
/* 813F4650 | 4C C6 31 82 */	crclr cr1eq
/* 813F4654 | 48 13 A0 4D */	bl OSReport
/* 813F4658 | 7F C3 F3 78 */	mr r3, r30
/* 813F465C | 48 20 48 A1 */	bl strlen
/* 813F4660 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F4664 | 40 82 00 38 */	bne .L_813F469C
/* 813F4668 | 38 00 00 00 */	li r0, 0x0
/* 813F466C | 7F C5 F3 78 */	mr r5, r30
/* 813F4670 | 98 1E 00 00 */	stb r0, 0x0(r30)
/* 813F4674 | 80 6D A9 3C */	lwz r3, ScrollState___Q23www9trasition@sda21(r0)
/* 813F4678 | 80 9F 09 20 */	lwz r4, 0x920(r31)
/* 813F467C | 80 63 00 28 */	lwz r3, 0x28(r3)
/* 813F4680 | 4B F7 96 95 */	bl CommitIme__Q37ext_ead3www13BrowserThreadFPQ37ext_ead3www7ImeDataPCc
/* 813F4684 | 80 7F 09 34 */	lwz r3, 0x934(r31)
/* 813F4688 | 38 80 00 00 */	li r4, 0x0
/* 813F468C | 38 A0 00 42 */	li r5, 0x42
/* 813F4690 | 38 63 05 BC */	addi r3, r3, 0x5bc
/* 813F4694 | 4B F3 BC A1 */	bl memset
/* 813F4698 | 48 00 01 D0 */	b .L_813F4868
.L_813F469C:
/* 813F469C | 80 7F 09 24 */	lwz r3, 0x924(r31)
/* 813F46A0 | 88 03 00 11 */	lbz r0, 0x11(r3)
/* 813F46A4 | 28 00 00 02 */	cmplwi r0, 0x2
/* 813F46A8 | 41 82 00 0C */	beq .L_813F46B4
/* 813F46AC | 28 00 00 16 */	cmplwi r0, 0x16
/* 813F46B0 | 40 82 00 88 */	bne .L_813F4738
.L_813F46B4:
/* 813F46B4 | 80 9F 09 34 */	lwz r4, 0x934(r31)
/* 813F46B8 | 3B C0 00 00 */	li r30, 0x0
/* 813F46BC | 38 A0 00 41 */	li r5, 0x41
/* 813F46C0 | 38 64 05 BC */	addi r3, r4, 0x5bc
/* 813F46C4 | 38 84 00 1F */	addi r4, r4, 0x1f
/* 813F46C8 | 4B F3 BB 69 */	bl memcpy
/* 813F46CC | 80 9F 09 34 */	lwz r4, 0x934(r31)
/* 813F46D0 | 38 00 00 00 */	li r0, 0x0
/* 813F46D4 | 38 60 00 2A */	li r3, 0x2a
/* 813F46D8 | 98 04 05 FD */	stb r0, 0x5fd(r4)
/* 813F46DC | 48 00 00 0C */	b .L_813F46E8
.L_813F46E0:
/* 813F46E0 | 98 64 05 BC */	stb r3, 0x5bc(r4)
/* 813F46E4 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_813F46E8:
/* 813F46E8 | 80 BF 09 34 */	lwz r5, 0x934(r31)
/* 813F46EC | 7C 85 F2 14 */	add r4, r5, r30
/* 813F46F0 | 88 04 05 BC */	lbz r0, 0x5bc(r4)
/* 813F46F4 | 7C 00 07 75 */	extsb. r0, r0
/* 813F46F8 | 40 82 FF E8 */	bne .L_813F46E0
/* 813F46FC | 2C 1E 00 20 */	cmpwi r30, 0x20
/* 813F4700 | 40 81 00 1C */	ble .L_813F471C
/* 813F4704 | 38 00 00 0A */	li r0, 0xa
/* 813F4708 | 38 80 00 2A */	li r4, 0x2a
/* 813F470C | 98 05 05 DC */	stb r0, 0x5dc(r5)
/* 813F4710 | 80 1F 09 34 */	lwz r0, 0x934(r31)
/* 813F4714 | 7C 60 F2 14 */	add r3, r0, r30
/* 813F4718 | 98 83 05 BC */	stb r4, 0x5bc(r3)
.L_813F471C:
/* 813F471C | 80 6D A9 3C */	lwz r3, ScrollState___Q23www9trasition@sda21(r0)
/* 813F4720 | 80 BF 09 34 */	lwz r5, 0x934(r31)
/* 813F4724 | 80 63 00 28 */	lwz r3, 0x28(r3)
/* 813F4728 | 80 9F 09 20 */	lwz r4, 0x920(r31)
/* 813F472C | 38 A5 05 BC */	addi r5, r5, 0x5bc
/* 813F4730 | 4B F7 95 E5 */	bl CommitIme__Q37ext_ead3www13BrowserThreadFPQ37ext_ead3www7ImeDataPCc
/* 813F4734 | 48 00 01 34 */	b .L_813F4868
.L_813F4738:
/* 813F4738 | 80 6D A9 3C */	lwz r3, ScrollState___Q23www9trasition@sda21(r0)
/* 813F473C | 7F C5 F3 78 */	mr r5, r30
/* 813F4740 | 80 9F 09 20 */	lwz r4, 0x920(r31)
/* 813F4744 | 80 63 00 28 */	lwz r3, 0x28(r3)
/* 813F4748 | 4B F7 95 CD */	bl CommitIme__Q37ext_ead3www13BrowserThreadFPQ37ext_ead3www7ImeDataPCc
/* 813F474C | 48 00 01 1C */	b .L_813F4868
.L_813F4750:
/* 813F4750 | 80 83 09 24 */	lwz r4, 0x924(r3)
/* 813F4754 | 88 04 00 11 */	lbz r0, 0x11(r4)
/* 813F4758 | 28 00 00 16 */	cmplwi r0, 0x16
/* 813F475C | 41 81 00 F8 */	bgt .L_813F4854
/* 813F4760 | 3C 80 81 65 */	lis r4, jumptable_816572FC@ha
/* 813F4764 | 54 00 10 3A */	slwi r0, r0, 2
/* 813F4768 | 38 84 72 FC */	addi r4, r4, jumptable_816572FC@l
/* 813F476C | 7C 84 00 2E */	lwzx r4, r4, r0
/* 813F4770 | 7C 89 03 A6 */	mtctr r4
/* 813F4774 | 4E 80 04 20 */	bctr
.L_813F4778:
/* 813F4778 | 83 C3 09 34 */	lwz r30, 0x934(r3)
/* 813F477C | 48 00 00 D8 */	b .L_813F4854
.L_813F4780:
/* 813F4780 | 80 63 09 34 */	lwz r3, 0x934(r3)
/* 813F4784 | 3B C3 05 BC */	addi r30, r3, 0x5bc
/* 813F4788 | 48 00 00 CC */	b .L_813F4854
.L_813F478C:
/* 813F478C | 80 63 09 34 */	lwz r3, 0x934(r3)
/* 813F4790 | 3B C3 00 60 */	addi r30, r3, 0x60
/* 813F4794 | 48 00 00 C0 */	b .L_813F4854
.L_813F4798:
/* 813F4798 | 80 63 09 34 */	lwz r3, 0x934(r3)
/* 813F479C | 3B C3 00 C1 */	addi r30, r3, 0xc1
/* 813F47A0 | 48 00 00 B4 */	b .L_813F4854
.L_813F47A4:
/* 813F47A4 | 80 63 09 34 */	lwz r3, 0x934(r3)
/* 813F47A8 | 3B C3 00 D1 */	addi r30, r3, 0xd1
/* 813F47AC | 48 00 00 A8 */	b .L_813F4854
.L_813F47B0:
/* 813F47B0 | 80 63 09 34 */	lwz r3, 0x934(r3)
/* 813F47B4 | 3B C3 00 E1 */	addi r30, r3, 0xe1
/* 813F47B8 | 48 00 00 9C */	b .L_813F4854
.L_813F47BC:
/* 813F47BC | 80 63 09 34 */	lwz r3, 0x934(r3)
/* 813F47C0 | 3B C3 00 F1 */	addi r30, r3, 0xf1
/* 813F47C4 | 48 00 00 90 */	b .L_813F4854
.L_813F47C8:
/* 813F47C8 | 80 63 09 34 */	lwz r3, 0x934(r3)
/* 813F47CC | 3B C3 01 01 */	addi r30, r3, 0x101
/* 813F47D0 | 48 00 00 84 */	b .L_813F4854
.L_813F47D4:
/* 813F47D4 | 80 63 09 34 */	lwz r3, 0x934(r3)
/* 813F47D8 | 3B C3 01 11 */	addi r30, r3, 0x111
/* 813F47DC | 48 00 00 78 */	b .L_813F4854
.L_813F47E0:
/* 813F47E0 | 80 63 09 34 */	lwz r3, 0x934(r3)
/* 813F47E4 | 3B C3 04 12 */	addi r30, r3, 0x412
/* 813F47E8 | 48 00 00 6C */	b .L_813F4854
.L_813F47EC:
/* 813F47EC | 80 63 09 34 */	lwz r3, 0x934(r3)
/* 813F47F0 | 3B C3 04 18 */	addi r30, r3, 0x418
/* 813F47F4 | 48 00 00 60 */	b .L_813F4854
.L_813F47F8:
/* 813F47F8 | 80 63 09 34 */	lwz r3, 0x934(r3)
/* 813F47FC | 3B C3 04 79 */	addi r30, r3, 0x479
/* 813F4800 | 48 00 00 54 */	b .L_813F4854
.L_813F4804:
/* 813F4804 | 80 63 09 34 */	lwz r3, 0x934(r3)
/* 813F4808 | 3B C3 04 DF */	addi r30, r3, 0x4df
/* 813F480C | 48 00 00 48 */	b .L_813F4854
.L_813F4810:
/* 813F4810 | 80 63 09 34 */	lwz r3, 0x934(r3)
/* 813F4814 | 3B C3 04 E4 */	addi r30, r3, 0x4e4
/* 813F4818 | 48 00 00 3C */	b .L_813F4854
.L_813F481C:
/* 813F481C | 80 63 09 34 */	lwz r3, 0x934(r3)
/* 813F4820 | 3B C3 04 E9 */	addi r30, r3, 0x4e9
/* 813F4824 | 48 00 00 30 */	b .L_813F4854
.L_813F4828:
/* 813F4828 | 80 63 09 34 */	lwz r3, 0x934(r3)
/* 813F482C | 3B C3 04 EE */	addi r30, r3, 0x4ee
/* 813F4830 | 48 00 00 24 */	b .L_813F4854
.L_813F4834:
/* 813F4834 | 80 63 09 34 */	lwz r3, 0x934(r3)
/* 813F4838 | 3B C3 05 52 */	addi r30, r3, 0x552
/* 813F483C | 48 00 00 18 */	b .L_813F4854
.L_813F4840:
/* 813F4840 | 80 63 09 34 */	lwz r3, 0x934(r3)
/* 813F4844 | 3B C3 05 B6 */	addi r30, r3, 0x5b6
/* 813F4848 | 48 00 00 0C */	b .L_813F4854
.L_813F484C:
/* 813F484C | 80 63 09 34 */	lwz r3, 0x934(r3)
/* 813F4850 | 3B C3 04 DA */	addi r30, r3, 0x4da
.L_813F4854:
/* 813F4854 | 80 6D A9 3C */	lwz r3, ScrollState___Q23www9trasition@sda21(r0)
/* 813F4858 | 7F C5 F3 78 */	mr r5, r30
/* 813F485C | 80 9F 09 20 */	lwz r4, 0x920(r31)
/* 813F4860 | 80 63 00 28 */	lwz r3, 0x28(r3)
/* 813F4864 | 4B F7 94 B1 */	bl CommitIme__Q37ext_ead3www13BrowserThreadFPQ37ext_ead3www7ImeDataPCc
.L_813F4868:
/* 813F4868 | 80 7F 09 24 */	lwz r3, 0x924(r31)
/* 813F486C | 38 00 00 00 */	li r0, 0x0
/* 813F4870 | 98 03 00 11 */	stb r0, 0x11(r3)
/* 813F4874 | 80 6D A9 3C */	lwz r3, ScrollState___Q23www9trasition@sda21(r0)
/* 813F4878 | 80 9F 09 20 */	lwz r4, 0x920(r31)
/* 813F487C | 80 63 00 28 */	lwz r3, 0x28(r3)
/* 813F4880 | 4B F7 94 8D */	bl DisposeImeData__Q37ext_ead3www13BrowserThreadFPQ37ext_ead3www7ImeData
/* 813F4884 | 48 00 00 AC */	b .L_813F4930
.L_813F4888:
/* 813F4888 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F488C | 38 8D 91 4A */	li r4, lbl_8169718A@sda21
/* 813F4890 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F4894 | 80 63 00 90 */	lwz r3, 0x90(r3)
/* 813F4898 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813F489C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F48A0 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 813F48A4 | 7D 89 03 A6 */	mtctr r12
/* 813F48A8 | 4E 80 04 21 */	bctrl
/* 813F48AC | 38 00 00 00 */	li r0, 0x0
/* 813F48B0 | 90 1F 00 74 */	stw r0, 0x74(r31)
/* 813F48B4 | 48 00 00 7C */	b .L_813F4930
.L_813F48B8:
/* 813F48B8 | 80 63 09 24 */	lwz r3, 0x924(r3)
/* 813F48BC | 88 03 00 11 */	lbz r0, 0x11(r3)
/* 813F48C0 | 2C 00 00 15 */	cmpwi r0, 0x15
/* 813F48C4 | 41 82 00 6C */	beq .L_813F4930
/* 813F48C8 | 40 80 00 1C */	bge .L_813F48E4
/* 813F48CC | 2C 00 00 09 */	cmpwi r0, 0x9
/* 813F48D0 | 41 82 00 60 */	beq .L_813F4930
/* 813F48D4 | 40 80 00 18 */	bge .L_813F48EC
/* 813F48D8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813F48DC | 40 80 00 10 */	bge .L_813F48EC
/* 813F48E0 | 48 00 00 50 */	b .L_813F4930
.L_813F48E4:
/* 813F48E4 | 2C 00 00 17 */	cmpwi r0, 0x17
/* 813F48E8 | 40 80 00 48 */	bge .L_813F4930
.L_813F48EC:
/* 813F48EC | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813F48F0 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813F48F4 | 80 7E 00 90 */	lwz r3, 0x90(r30)
/* 813F48F8 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813F48FC | 48 04 48 15 */	bl fn_81439110
/* 813F4900 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F4904 | 41 82 00 10 */	beq .L_813F4914
/* 813F4908 | 7F E3 FB 78 */	mr r3, r31
/* 813F490C | 48 00 17 59 */	bl setDefaultBackString__Q33ipl5scene7SettingFv
/* 813F4910 | 48 00 00 20 */	b .L_813F4930
.L_813F4914:
/* 813F4914 | 80 7E 00 90 */	lwz r3, 0x90(r30)
/* 813F4918 | 38 8D 91 4A */	li r4, lbl_8169718A@sda21
/* 813F491C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813F4920 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F4924 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 813F4928 | 7D 89 03 A6 */	mtctr r12
/* 813F492C | 4E 80 04 21 */	bctrl
.L_813F4930:
/* 813F4930 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F4934 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F4938 | 80 63 00 90 */	lwz r3, 0x90(r3)
/* 813F493C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F4940 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813F4944 | 7D 89 03 A6 */	mtctr r12
/* 813F4948 | 4E 80 04 21 */	bctrl
/* 813F494C | 7C 64 1B 78 */	mr r4, r3
/* 813F4950 | 38 7F 0B 3C */	addi r3, r31, 0xb3c
/* 813F4954 | 4B FF D0 F5 */	bl __as__Q43ipl8keyboard7Manager5StateFRCQ43ipl8keyboard7Manager5State
/* 813F4958 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F495C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F4960 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813F4964 | 7C 08 03 A6 */	mtlr r0
/* 813F4968 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F496C | 4E 80 00 20 */	blr
.endfn calcKeyboard__Q33ipl5scene7SettingFv

# .text:0x41FC | 0x813F4970 | size: 0x124
# ipl::scene::Setting::calcSetting()
.fn calcSetting__Q33ipl5scene7SettingFv, global
/* 813F4970 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F4974 | 7C 08 02 A6 */	mflr r0
/* 813F4978 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F497C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F4980 | 7C 7F 1B 78 */	mr r31, r3
/* 813F4984 | 3C 60 81 65 */	lis r3, lbl_816573B4@ha
/* 813F4988 | 80 9F 09 24 */	lwz r4, 0x924(r31)
/* 813F498C | 38 63 73 B4 */	addi r3, r3, lbl_816573B4@l
/* 813F4990 | 88 84 00 36 */	lbz r4, 0x36(r4)
/* 813F4994 | 4C C6 31 82 */	crclr cr1eq
/* 813F4998 | 48 13 9D 09 */	bl OSReport
/* 813F499C | 80 7F 09 24 */	lwz r3, 0x924(r31)
/* 813F49A0 | 88 03 00 36 */	lbz r0, 0x36(r3)
/* 813F49A4 | 28 00 00 0F */	cmplwi r0, 0xf
/* 813F49A8 | 41 81 00 CC */	bgt .L_813F4A74
/* 813F49AC | 3C 60 81 65 */	lis r3, jumptable_816573C4@ha
/* 813F49B0 | 54 00 10 3A */	slwi r0, r0, 2
/* 813F49B4 | 38 63 73 C4 */	addi r3, r3, jumptable_816573C4@l
/* 813F49B8 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813F49BC | 7C 69 03 A6 */	mtctr r3
/* 813F49C0 | 4E 80 04 20 */	bctr
.L_813F49C4:
/* 813F49C4 | 7F E3 FB 78 */	mr r3, r31
/* 813F49C8 | 48 00 09 B9 */	bl setDisPos__Q33ipl5scene7SettingFv
/* 813F49CC | 48 00 00 A8 */	b .L_813F4A74
.L_813F49D0:
/* 813F49D0 | 7F E3 FB 78 */	mr r3, r31
/* 813F49D4 | 48 00 09 C5 */	bl setNickName__Q33ipl5scene7SettingFv
/* 813F49D8 | 48 00 00 9C */	b .L_813F4A74
.L_813F49DC:
/* 813F49DC | 7F E3 FB 78 */	mr r3, r31
/* 813F49E0 | 48 00 0A 4D */	bl setSecurityKey__Q33ipl5scene7SettingFv
/* 813F49E4 | 48 00 00 90 */	b .L_813F4A74
.L_813F49E8:
/* 813F49E8 | 7F E3 FB 78 */	mr r3, r31
/* 813F49EC | 48 00 0A E9 */	bl setSSID__Q33ipl5scene7SettingFv
/* 813F49F0 | 48 00 00 84 */	b .L_813F4A74
.L_813F49F4:
/* 813F49F4 | 7F E3 FB 78 */	mr r3, r31
/* 813F49F8 | 48 00 0B 3D */	bl setIP__Q33ipl5scene7SettingFv
/* 813F49FC | 48 00 00 78 */	b .L_813F4A74
.L_813F4A00:
/* 813F4A00 | 7F E3 FB 78 */	mr r3, r31
/* 813F4A04 | 48 00 0B AD */	bl setDNS__Q33ipl5scene7SettingFv
/* 813F4A08 | 48 00 00 6C */	b .L_813F4A74
.L_813F4A0C:
/* 813F4A0C | 7F E3 FB 78 */	mr r3, r31
/* 813F4A10 | 48 00 0C 09 */	bl setProxy__Q33ipl5scene7SettingFv
/* 813F4A14 | 48 00 00 60 */	b .L_813F4A74
.L_813F4A18:
/* 813F4A18 | 7F E3 FB 78 */	mr r3, r31
/* 813F4A1C | 48 00 0D 15 */	bl setBasic__Q33ipl5scene7SettingFv
/* 813F4A20 | 48 00 00 54 */	b .L_813F4A74
.L_813F4A24:
/* 813F4A24 | 7F E3 FB 78 */	mr r3, r31
/* 813F4A28 | 48 00 0D C9 */	bl setMTU__Q33ipl5scene7SettingFv
/* 813F4A2C | 48 00 00 48 */	b .L_813F4A74
.L_813F4A30:
/* 813F4A30 | 7F E3 FB 78 */	mr r3, r31
/* 813F4A34 | 48 00 0E 4D */	bl setParePass__Q33ipl5scene7SettingFv
/* 813F4A38 | 48 00 00 3C */	b .L_813F4A74
.L_813F4A3C:
/* 813F4A3C | 7F E3 FB 78 */	mr r3, r31
/* 813F4A40 | 48 00 0E BD */	bl setPareRePass__Q33ipl5scene7SettingFv
/* 813F4A44 | 48 00 00 30 */	b .L_813F4A74
.L_813F4A48:
/* 813F4A48 | 7F E3 FB 78 */	mr r3, r31
/* 813F4A4C | 48 00 0F 4D */	bl setPareJudgePass__Q33ipl5scene7SettingFv
/* 813F4A50 | 48 00 00 24 */	b .L_813F4A74
.L_813F4A54:
/* 813F4A54 | 7F E3 FB 78 */	mr r3, r31
/* 813F4A58 | 48 00 0F DD */	bl setSecA__Q33ipl5scene7SettingFv
/* 813F4A5C | 48 00 00 18 */	b .L_813F4A74
.L_813F4A60:
/* 813F4A60 | 7F E3 FB 78 */	mr r3, r31
/* 813F4A64 | 48 00 10 55 */	bl setReSecA__Q33ipl5scene7SettingFv
/* 813F4A68 | 48 00 00 0C */	b .L_813F4A74
.L_813F4A6C:
/* 813F4A6C | 7F E3 FB 78 */	mr r3, r31
/* 813F4A70 | 48 00 10 ED */	bl setMasterKey__Q33ipl5scene7SettingFv
.L_813F4A74:
/* 813F4A74 | 80 7F 09 24 */	lwz r3, 0x924(r31)
/* 813F4A78 | 38 00 00 00 */	li r0, 0x0
/* 813F4A7C | 98 03 00 36 */	stb r0, 0x36(r3)
/* 813F4A80 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F4A84 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F4A88 | 7C 08 03 A6 */	mtlr r0
/* 813F4A8C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F4A90 | 4E 80 00 20 */	blr
.endfn calcSetting__Q33ipl5scene7SettingFv

# .text:0x4320 | 0x813F4A94 | size: 0x2E4
# ipl::scene::Setting::onTextInputOK()
.fn onTextInputOK__Q33ipl5scene7SettingFv, global
/* 813F4A94 | 94 21 FC E0 */	stwu r1, -0x320(r1)
/* 813F4A98 | 7C 08 02 A6 */	mflr r0
/* 813F4A9C | 90 01 03 24 */	stw r0, 0x324(r1)
/* 813F4AA0 | 39 61 03 20 */	addi r11, r1, 0x320
/* 813F4AA4 | 48 20 4A 25 */	bl _savegpr_29
/* 813F4AA8 | 7C 7D 1B 78 */	mr r29, r3
/* 813F4AAC | 3C 60 81 65 */	lis r3, lbl_81657404@ha
/* 813F4AB0 | 80 9D 09 24 */	lwz r4, 0x924(r29)
/* 813F4AB4 | 38 63 74 04 */	addi r3, r3, lbl_81657404@l
/* 813F4AB8 | 88 84 00 11 */	lbz r4, 0x11(r4)
/* 813F4ABC | 4C C6 31 82 */	crclr cr1eq
/* 813F4AC0 | 48 13 9B E1 */	bl OSReport
/* 813F4AC4 | 80 7D 0B 48 */	lwz r3, 0xb48(r29)
/* 813F4AC8 | 48 21 3B E5 */	bl fn_816086AC
/* 813F4ACC | 38 7D 09 38 */	addi r3, r29, 0x938
/* 813F4AD0 | 38 80 00 00 */	li r4, 0x0
/* 813F4AD4 | 38 A0 02 02 */	li r5, 0x202
/* 813F4AD8 | 4B F3 B8 5D */	bl memset
/* 813F4ADC | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F4AE0 | 38 80 00 00 */	li r4, 0x0
/* 813F4AE4 | 38 A0 03 02 */	li r5, 0x302
/* 813F4AE8 | 4B F3 B8 4D */	bl memset
/* 813F4AEC | 80 9D 0B 48 */	lwz r4, 0xb48(r29)
/* 813F4AF0 | 38 7D 09 38 */	addi r3, r29, 0x938
/* 813F4AF4 | 38 A0 02 02 */	li r5, 0x202
/* 813F4AF8 | 4B F3 B7 39 */	bl memcpy
/* 813F4AFC | 80 7D 09 24 */	lwz r3, 0x924(r29)
/* 813F4B00 | 88 63 00 11 */	lbz r3, 0x11(r3)
/* 813F4B04 | 28 03 00 02 */	cmplwi r3, 0x2
/* 813F4B08 | 41 82 00 0C */	beq .L_813F4B14
/* 813F4B0C | 28 03 00 16 */	cmplwi r3, 0x16
/* 813F4B10 | 40 82 00 54 */	bne .L_813F4B64
.L_813F4B14:
/* 813F4B14 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F4B18 | 38 9D 09 38 */	addi r4, r29, 0x938
/* 813F4B1C | 38 A0 01 00 */	li r5, 0x100
/* 813F4B20 | 4B F6 F5 0D */	bl UTF16ToANSI__Q33ipl7utility13CharacterCodeFPUcPCwl
/* 813F4B24 | 38 7D 09 38 */	addi r3, r29, 0x938
/* 813F4B28 | 48 21 3B 85 */	bl fn_816086AC
/* 813F4B2C | 23 C3 01 00 */	subfic r30, r3, 0x100
/* 813F4B30 | 38 7D 09 38 */	addi r3, r29, 0x938
/* 813F4B34 | 48 21 3B 79 */	bl fn_816086AC
/* 813F4B38 | 3B E1 00 08 */	addi r31, r1, 0x8
/* 813F4B3C | 7F C5 F3 78 */	mr r5, r30
/* 813F4B40 | 7C 7F 1A 14 */	add r3, r31, r3
/* 813F4B44 | 38 80 00 00 */	li r4, 0x0
/* 813F4B48 | 4B F3 B7 ED */	bl memset
/* 813F4B4C | 80 7D 09 34 */	lwz r3, 0x934(r29)
/* 813F4B50 | 7F E4 FB 78 */	mr r4, r31
/* 813F4B54 | 38 A0 00 41 */	li r5, 0x41
/* 813F4B58 | 38 63 00 1F */	addi r3, r3, 0x1f
/* 813F4B5C | 4B F3 B6 D5 */	bl memcpy
/* 813F4B60 | 48 00 02 00 */	b .L_813F4D60
.L_813F4B64:
/* 813F4B64 | 38 03 00 EE */	addi r0, r3, 0xee
/* 813F4B68 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 813F4B6C | 28 00 00 01 */	cmplwi r0, 0x1
/* 813F4B70 | 41 81 00 10 */	bgt .L_813F4B80
/* 813F4B74 | 7F A3 EB 78 */	mr r3, r29
/* 813F4B78 | 38 9D 09 38 */	addi r4, r29, 0x938
/* 813F4B7C | 48 00 13 C5 */	bl adjustSecA__Q33ipl5scene7SettingFPw
.L_813F4B80:
/* 813F4B80 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F4B84 | 38 9D 09 38 */	addi r4, r29, 0x938
/* 813F4B88 | 38 A0 03 01 */	li r5, 0x301
/* 813F4B8C | 4B F6 F5 75 */	bl UTF16ToUTF8__Q33ipl7utility13CharacterCodeFPcPCwl
/* 813F4B90 | 80 7D 09 24 */	lwz r3, 0x924(r29)
/* 813F4B94 | 88 03 00 11 */	lbz r0, 0x11(r3)
/* 813F4B98 | 28 00 00 14 */	cmplwi r0, 0x14
/* 813F4B9C | 41 81 01 C4 */	bgt .L_813F4D60
/* 813F4BA0 | 3C 60 81 65 */	lis r3, jumptable_8165741C@ha
/* 813F4BA4 | 54 00 10 3A */	slwi r0, r0, 2
/* 813F4BA8 | 38 63 74 1C */	addi r3, r3, jumptable_8165741C@l
/* 813F4BAC | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813F4BB0 | 7C 69 03 A6 */	mtctr r3
/* 813F4BB4 | 4E 80 04 20 */	bctr
.L_813F4BB8:
/* 813F4BB8 | 80 7D 09 34 */	lwz r3, 0x934(r29)
/* 813F4BBC | 38 81 00 08 */	addi r4, r1, 0x8
/* 813F4BC0 | 38 A0 00 1F */	li r5, 0x1f
/* 813F4BC4 | 4B F3 B6 6D */	bl memcpy
/* 813F4BC8 | 48 00 01 98 */	b .L_813F4D60
.L_813F4BCC:
/* 813F4BCC | 80 7D 09 34 */	lwz r3, 0x934(r29)
/* 813F4BD0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813F4BD4 | 38 A0 00 61 */	li r5, 0x61
/* 813F4BD8 | 38 63 00 60 */	addi r3, r3, 0x60
/* 813F4BDC | 4B F3 B6 55 */	bl memcpy
/* 813F4BE0 | 48 00 01 80 */	b .L_813F4D60
.L_813F4BE4:
/* 813F4BE4 | 80 7D 09 34 */	lwz r3, 0x934(r29)
/* 813F4BE8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813F4BEC | 38 A0 00 10 */	li r5, 0x10
/* 813F4BF0 | 38 63 00 C1 */	addi r3, r3, 0xc1
/* 813F4BF4 | 4B F3 B6 3D */	bl memcpy
/* 813F4BF8 | 48 00 01 68 */	b .L_813F4D60
.L_813F4BFC:
/* 813F4BFC | 80 7D 09 34 */	lwz r3, 0x934(r29)
/* 813F4C00 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813F4C04 | 38 A0 00 10 */	li r5, 0x10
/* 813F4C08 | 38 63 00 D1 */	addi r3, r3, 0xd1
/* 813F4C0C | 4B F3 B6 25 */	bl memcpy
/* 813F4C10 | 48 00 01 50 */	b .L_813F4D60
.L_813F4C14:
/* 813F4C14 | 80 7D 09 34 */	lwz r3, 0x934(r29)
/* 813F4C18 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813F4C1C | 38 A0 00 10 */	li r5, 0x10
/* 813F4C20 | 38 63 00 E1 */	addi r3, r3, 0xe1
/* 813F4C24 | 4B F3 B6 0D */	bl memcpy
/* 813F4C28 | 48 00 01 38 */	b .L_813F4D60
.L_813F4C2C:
/* 813F4C2C | 80 7D 09 34 */	lwz r3, 0x934(r29)
/* 813F4C30 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813F4C34 | 38 A0 00 10 */	li r5, 0x10
/* 813F4C38 | 38 63 00 F1 */	addi r3, r3, 0xf1
/* 813F4C3C | 4B F3 B5 F5 */	bl memcpy
/* 813F4C40 | 48 00 01 20 */	b .L_813F4D60
.L_813F4C44:
/* 813F4C44 | 80 7D 09 34 */	lwz r3, 0x934(r29)
/* 813F4C48 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813F4C4C | 38 A0 00 10 */	li r5, 0x10
/* 813F4C50 | 38 63 01 01 */	addi r3, r3, 0x101
/* 813F4C54 | 4B F3 B5 DD */	bl memcpy
/* 813F4C58 | 48 00 01 08 */	b .L_813F4D60
.L_813F4C5C:
/* 813F4C5C | 80 7D 09 34 */	lwz r3, 0x934(r29)
/* 813F4C60 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813F4C64 | 38 A0 03 01 */	li r5, 0x301
/* 813F4C68 | 38 63 01 11 */	addi r3, r3, 0x111
/* 813F4C6C | 4B F3 B5 C5 */	bl memcpy
/* 813F4C70 | 48 00 00 F0 */	b .L_813F4D60
.L_813F4C74:
/* 813F4C74 | 80 7D 09 34 */	lwz r3, 0x934(r29)
/* 813F4C78 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813F4C7C | 38 A0 00 06 */	li r5, 0x6
/* 813F4C80 | 38 63 04 12 */	addi r3, r3, 0x412
/* 813F4C84 | 4B F3 B5 AD */	bl memcpy
/* 813F4C88 | 48 00 00 D8 */	b .L_813F4D60
.L_813F4C8C:
/* 813F4C8C | 80 7D 09 34 */	lwz r3, 0x934(r29)
/* 813F4C90 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813F4C94 | 38 A0 00 61 */	li r5, 0x61
/* 813F4C98 | 38 63 04 18 */	addi r3, r3, 0x418
/* 813F4C9C | 4B F3 B5 95 */	bl memcpy
/* 813F4CA0 | 48 00 00 C0 */	b .L_813F4D60
.L_813F4CA4:
/* 813F4CA4 | 80 7D 09 34 */	lwz r3, 0x934(r29)
/* 813F4CA8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813F4CAC | 38 A0 00 61 */	li r5, 0x61
/* 813F4CB0 | 38 63 04 79 */	addi r3, r3, 0x479
/* 813F4CB4 | 4B F3 B5 7D */	bl memcpy
/* 813F4CB8 | 48 00 00 A8 */	b .L_813F4D60
.L_813F4CBC:
/* 813F4CBC | 80 7D 09 34 */	lwz r3, 0x934(r29)
/* 813F4CC0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813F4CC4 | 38 A0 00 05 */	li r5, 0x5
/* 813F4CC8 | 38 63 04 DF */	addi r3, r3, 0x4df
/* 813F4CCC | 4B F3 B5 65 */	bl memcpy
/* 813F4CD0 | 48 00 00 90 */	b .L_813F4D60
.L_813F4CD4:
/* 813F4CD4 | 80 7D 09 34 */	lwz r3, 0x934(r29)
/* 813F4CD8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813F4CDC | 38 A0 00 05 */	li r5, 0x5
/* 813F4CE0 | 38 63 04 E4 */	addi r3, r3, 0x4e4
/* 813F4CE4 | 4B F3 B5 4D */	bl memcpy
/* 813F4CE8 | 48 00 00 78 */	b .L_813F4D60
.L_813F4CEC:
/* 813F4CEC | 80 7D 09 34 */	lwz r3, 0x934(r29)
/* 813F4CF0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813F4CF4 | 38 A0 00 05 */	li r5, 0x5
/* 813F4CF8 | 38 63 04 E9 */	addi r3, r3, 0x4e9
/* 813F4CFC | 4B F3 B5 35 */	bl memcpy
/* 813F4D00 | 48 00 00 60 */	b .L_813F4D60
.L_813F4D04:
/* 813F4D04 | 80 7D 09 34 */	lwz r3, 0x934(r29)
/* 813F4D08 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813F4D0C | 38 A0 00 64 */	li r5, 0x64
/* 813F4D10 | 38 63 04 EE */	addi r3, r3, 0x4ee
/* 813F4D14 | 4B F3 B5 1D */	bl memcpy
/* 813F4D18 | 48 00 00 48 */	b .L_813F4D60
.L_813F4D1C:
/* 813F4D1C | 80 7D 09 34 */	lwz r3, 0x934(r29)
/* 813F4D20 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813F4D24 | 38 A0 00 64 */	li r5, 0x64
/* 813F4D28 | 38 63 05 52 */	addi r3, r3, 0x552
/* 813F4D2C | 4B F3 B5 05 */	bl memcpy
/* 813F4D30 | 48 00 00 30 */	b .L_813F4D60
.L_813F4D34:
/* 813F4D34 | 80 7D 09 34 */	lwz r3, 0x934(r29)
/* 813F4D38 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813F4D3C | 38 A0 00 06 */	li r5, 0x6
/* 813F4D40 | 38 63 05 B6 */	addi r3, r3, 0x5b6
/* 813F4D44 | 4B F3 B4 ED */	bl memcpy
/* 813F4D48 | 48 00 00 18 */	b .L_813F4D60
.L_813F4D4C:
/* 813F4D4C | 80 7D 09 34 */	lwz r3, 0x934(r29)
/* 813F4D50 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813F4D54 | 38 A0 00 05 */	li r5, 0x5
/* 813F4D58 | 38 63 04 DA */	addi r3, r3, 0x4da
/* 813F4D5C | 4B F3 B4 D5 */	bl memcpy
.L_813F4D60:
/* 813F4D60 | 39 61 03 20 */	addi r11, r1, 0x320
/* 813F4D64 | 48 20 47 B1 */	bl _restgpr_29
/* 813F4D68 | 80 01 03 24 */	lwz r0, 0x324(r1)
/* 813F4D6C | 7C 08 03 A6 */	mtlr r0
/* 813F4D70 | 38 21 03 20 */	addi r1, r1, 0x320
/* 813F4D74 | 4E 80 00 20 */	blr
.endfn onTextInputOK__Q33ipl5scene7SettingFv

# .text:0x4604 | 0x813F4D78 | size: 0x90
# ipl::scene::Setting::initNickName()
.fn initNickName__Q33ipl5scene7SettingFv, global
/* 813F4D78 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F4D7C | 7C 08 02 A6 */	mflr r0
/* 813F4D80 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F4D84 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F4D88 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813F4D8C | 7C 7E 1B 78 */	mr r30, r3
/* 813F4D90 | 38 63 00 A4 */	addi r3, r3, 0xa4
/* 813F4D94 | 48 17 57 61 */	bl fn_8156A4F4
/* 813F4D98 | 30 03 FF FF */	subic r0, r3, 0x1
/* 813F4D9C | 3C A0 81 65 */	lis r5, lbl_81657470@ha
/* 813F4DA0 | 7F E0 19 10 */	subfe r31, r0, r3
/* 813F4DA4 | 7F E4 FB 78 */	mr r4, r31
/* 813F4DA8 | 38 65 74 70 */	addi r3, r5, lbl_81657470@l
/* 813F4DAC | 4C C6 31 82 */	crclr cr1eq
/* 813F4DB0 | 48 13 98 F1 */	bl OSReport
/* 813F4DB4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813F4DB8 | 41 82 00 18 */	beq .L_813F4DD0
/* 813F4DBC | A0 1E 00 B8 */	lhz r0, 0xb8(r30)
/* 813F4DC0 | 38 7E 09 38 */	addi r3, r30, 0x938
/* 813F4DC4 | 38 9E 00 A4 */	addi r4, r30, 0xa4
/* 813F4DC8 | 54 05 08 3C */	slwi r5, r0, 1
/* 813F4DCC | 4B F3 B4 65 */	bl memcpy
.L_813F4DD0:
/* 813F4DD0 | 80 7E 09 34 */	lwz r3, 0x934(r30)
/* 813F4DD4 | 38 80 00 00 */	li r4, 0x0
/* 813F4DD8 | 38 A0 00 1F */	li r5, 0x1f
/* 813F4DDC | 4B F3 B5 59 */	bl memset
/* 813F4DE0 | 80 7E 09 34 */	lwz r3, 0x934(r30)
/* 813F4DE4 | 38 9E 09 38 */	addi r4, r30, 0x938
/* 813F4DE8 | 38 A0 00 1F */	li r5, 0x1f
/* 813F4DEC | 4B F6 F3 15 */	bl UTF16ToUTF8__Q33ipl7utility13CharacterCodeFPcPCwl
/* 813F4DF0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F4DF4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F4DF8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813F4DFC | 7C 08 03 A6 */	mtlr r0
/* 813F4E00 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F4E04 | 4E 80 00 20 */	blr
.endfn initNickName__Q33ipl5scene7SettingFv

# .text:0x4694 | 0x813F4E08 | size: 0xD8
# ipl::scene::Setting::initSecurityKey()
.fn initSecurityKey__Q33ipl5scene7SettingFv, global
/* 813F4E08 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F4E0C | 7C 08 02 A6 */	mflr r0
/* 813F4E10 | 38 80 00 00 */	li r4, 0x0
/* 813F4E14 | 38 A0 00 41 */	li r5, 0x41
/* 813F4E18 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F4E1C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F4E20 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813F4E24 | 7C 7E 1B 78 */	mr r30, r3
/* 813F4E28 | 80 C3 09 34 */	lwz r6, 0x934(r3)
/* 813F4E2C | 38 66 00 1F */	addi r3, r6, 0x1f
/* 813F4E30 | 4B F3 B5 05 */	bl memset
/* 813F4E34 | 48 00 67 CD */	bl getNCDPrivacyMode__Q33ipl3ncd10NCDSettingFv
/* 813F4E38 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 813F4E3C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813F4E40 | 41 82 00 3C */	beq .L_813F4E7C
/* 813F4E44 | 40 80 00 14 */	bge .L_813F4E58
/* 813F4E48 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F4E4C | 41 82 00 20 */	beq .L_813F4E6C
/* 813F4E50 | 40 80 00 24 */	bge .L_813F4E74
/* 813F4E54 | 48 00 00 38 */	b .L_813F4E8C
.L_813F4E58:
/* 813F4E58 | 2C 00 00 07 */	cmpwi r0, 0x7
/* 813F4E5C | 40 80 00 30 */	bge .L_813F4E8C
/* 813F4E60 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813F4E64 | 40 80 00 20 */	bge .L_813F4E84
/* 813F4E68 | 48 00 00 24 */	b .L_813F4E8C
.L_813F4E6C:
/* 813F4E6C | 3B E0 00 00 */	li r31, 0x0
/* 813F4E70 | 48 00 00 20 */	b .L_813F4E90
.L_813F4E74:
/* 813F4E74 | 3B E0 00 05 */	li r31, 0x5
/* 813F4E78 | 48 00 00 18 */	b .L_813F4E90
.L_813F4E7C:
/* 813F4E7C | 3B E0 00 0D */	li r31, 0xd
/* 813F4E80 | 48 00 00 10 */	b .L_813F4E90
.L_813F4E84:
/* 813F4E84 | 3B E0 00 40 */	li r31, 0x40
/* 813F4E88 | 48 00 00 08 */	b .L_813F4E90
.L_813F4E8C:
/* 813F4E8C | 3B E0 00 00 */	li r31, 0x0
.L_813F4E90:
/* 813F4E90 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813F4E94 | 41 82 00 1C */	beq .L_813F4EB0
/* 813F4E98 | 48 00 67 AD */	bl getPrivacy__Q33ipl3ncd10NCDSettingFv
/* 813F4E9C | 80 DE 09 34 */	lwz r6, 0x934(r30)
/* 813F4EA0 | 7C 64 1B 78 */	mr r4, r3
/* 813F4EA4 | 7F E5 FB 78 */	mr r5, r31
/* 813F4EA8 | 38 66 00 1F */	addi r3, r6, 0x1f
/* 813F4EAC | 4B F3 B3 85 */	bl memcpy
.L_813F4EB0:
/* 813F4EB0 | 48 00 67 95 */	bl getPrivacy__Q33ipl3ncd10NCDSettingFv
/* 813F4EB4 | 3C A0 81 65 */	lis r5, lbl_81657487@ha
/* 813F4EB8 | 7C 64 1B 78 */	mr r4, r3
/* 813F4EBC | 38 65 74 87 */	addi r3, r5, lbl_81657487@l
/* 813F4EC0 | 4C C6 31 82 */	crclr cr1eq
/* 813F4EC4 | 48 13 97 DD */	bl OSReport
/* 813F4EC8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F4ECC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F4ED0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813F4ED4 | 7C 08 03 A6 */	mtlr r0
/* 813F4ED8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F4EDC | 4E 80 00 20 */	blr
.endfn initSecurityKey__Q33ipl5scene7SettingFv

# .text:0x476C | 0x813F4EE0 | size: 0x88
# ipl::scene::Setting::initSSID()
.fn initSSID__Q33ipl5scene7SettingFv, global
/* 813F4EE0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F4EE4 | 7C 08 02 A6 */	mflr r0
/* 813F4EE8 | 38 80 00 00 */	li r4, 0x0
/* 813F4EEC | 38 A0 00 61 */	li r5, 0x61
/* 813F4EF0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F4EF4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F4EF8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813F4EFC | 7C 7E 1B 78 */	mr r30, r3
/* 813F4F00 | 80 C3 09 34 */	lwz r6, 0x934(r3)
/* 813F4F04 | 38 66 00 60 */	addi r3, r6, 0x60
/* 813F4F08 | 4B F3 B4 2D */	bl memset
/* 813F4F0C | 48 00 65 CD */	bl getSSID__Q33ipl3ncd10NCDSettingFv
/* 813F4F10 | A3 E3 00 20 */	lhz r31, 0x20(r3)
/* 813F4F14 | 48 00 65 C5 */	bl getSSID__Q33ipl3ncd10NCDSettingFv
/* 813F4F18 | 80 DE 09 34 */	lwz r6, 0x934(r30)
/* 813F4F1C | 7C 64 1B 78 */	mr r4, r3
/* 813F4F20 | 7F E5 FB 78 */	mr r5, r31
/* 813F4F24 | 38 66 00 60 */	addi r3, r6, 0x60
/* 813F4F28 | 4B F6 F2 95 */	bl ANSIToUTF8__Q33ipl7utility13CharacterCodeFPcPCUci
/* 813F4F2C | 48 00 65 AD */	bl getSSID__Q33ipl3ncd10NCDSettingFv
/* 813F4F30 | A3 E3 00 20 */	lhz r31, 0x20(r3)
/* 813F4F34 | 48 00 65 A5 */	bl getSSID__Q33ipl3ncd10NCDSettingFv
/* 813F4F38 | 3C C0 81 65 */	lis r6, lbl_81657495@ha
/* 813F4F3C | 7C 64 1B 78 */	mr r4, r3
/* 813F4F40 | 7F E5 FB 78 */	mr r5, r31
/* 813F4F44 | 38 66 74 95 */	addi r3, r6, lbl_81657495@l
/* 813F4F48 | 4C C6 31 82 */	crclr cr1eq
/* 813F4F4C | 48 13 97 55 */	bl OSReport
/* 813F4F50 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F4F54 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F4F58 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813F4F5C | 7C 08 03 A6 */	mtlr r0
/* 813F4F60 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F4F64 | 4E 80 00 20 */	blr
.endfn initSSID__Q33ipl5scene7SettingFv

# .text:0x47F4 | 0x813F4F68 | size: 0xB4
# ipl::scene::Setting::initIP()
.fn initIP__Q33ipl5scene7SettingFv, global
/* 813F4F68 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F4F6C | 7C 08 02 A6 */	mflr r0
/* 813F4F70 | 38 80 00 00 */	li r4, 0x0
/* 813F4F74 | 38 A0 00 10 */	li r5, 0x10
/* 813F4F78 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F4F7C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F4F80 | 7C 7F 1B 78 */	mr r31, r3
/* 813F4F84 | 80 C3 09 34 */	lwz r6, 0x934(r3)
/* 813F4F88 | 38 66 00 C1 */	addi r3, r6, 0xc1
/* 813F4F8C | 4B F3 B3 A9 */	bl memset
/* 813F4F90 | 80 7F 09 34 */	lwz r3, 0x934(r31)
/* 813F4F94 | 38 80 00 00 */	li r4, 0x0
/* 813F4F98 | 38 A0 00 10 */	li r5, 0x10
/* 813F4F9C | 38 63 00 D1 */	addi r3, r3, 0xd1
/* 813F4FA0 | 4B F3 B3 95 */	bl memset
/* 813F4FA4 | 80 7F 09 34 */	lwz r3, 0x934(r31)
/* 813F4FA8 | 38 80 00 00 */	li r4, 0x0
/* 813F4FAC | 38 A0 00 10 */	li r5, 0x10
/* 813F4FB0 | 38 63 00 E1 */	addi r3, r3, 0xe1
/* 813F4FB4 | 4B F3 B3 81 */	bl memset
/* 813F4FB8 | 48 00 67 8D */	bl getIP__Q33ipl3ncd10NCDSettingFv
/* 813F4FBC | 80 9F 09 34 */	lwz r4, 0x934(r31)
/* 813F4FC0 | 7C 65 1B 78 */	mr r5, r3
/* 813F4FC4 | 7F E3 FB 78 */	mr r3, r31
/* 813F4FC8 | 38 84 00 C1 */	addi r4, r4, 0xc1
/* 813F4FCC | 48 00 0D F5 */	bl convertIP__Q33ipl5scene7SettingFPcPCUc
/* 813F4FD0 | 48 00 67 75 */	bl getIP__Q33ipl3ncd10NCDSettingFv
/* 813F4FD4 | 80 9F 09 34 */	lwz r4, 0x934(r31)
/* 813F4FD8 | 7C 65 1B 78 */	mr r5, r3
/* 813F4FDC | 7F E3 FB 78 */	mr r3, r31
/* 813F4FE0 | 38 84 00 D1 */	addi r4, r4, 0xd1
/* 813F4FE4 | 38 A5 00 04 */	addi r5, r5, 0x4
/* 813F4FE8 | 48 00 0D D9 */	bl convertIP__Q33ipl5scene7SettingFPcPCUc
/* 813F4FEC | 48 00 67 59 */	bl getIP__Q33ipl3ncd10NCDSettingFv
/* 813F4FF0 | 80 9F 09 34 */	lwz r4, 0x934(r31)
/* 813F4FF4 | 7C 65 1B 78 */	mr r5, r3
/* 813F4FF8 | 7F E3 FB 78 */	mr r3, r31
/* 813F4FFC | 38 84 00 E1 */	addi r4, r4, 0xe1
/* 813F5000 | 38 A5 00 08 */	addi r5, r5, 0x8
/* 813F5004 | 48 00 0D BD */	bl convertIP__Q33ipl5scene7SettingFPcPCUc
/* 813F5008 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F500C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F5010 | 7C 08 03 A6 */	mtlr r0
/* 813F5014 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F5018 | 4E 80 00 20 */	blr
.endfn initIP__Q33ipl5scene7SettingFv

# .text:0x48A8 | 0x813F501C | size: 0x88
# ipl::scene::Setting::initDNS()
.fn initDNS__Q33ipl5scene7SettingFv, global
/* 813F501C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F5020 | 7C 08 02 A6 */	mflr r0
/* 813F5024 | 38 80 00 00 */	li r4, 0x0
/* 813F5028 | 38 A0 00 10 */	li r5, 0x10
/* 813F502C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F5030 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F5034 | 7C 7F 1B 78 */	mr r31, r3
/* 813F5038 | 80 C3 09 34 */	lwz r6, 0x934(r3)
/* 813F503C | 38 66 00 F1 */	addi r3, r6, 0xf1
/* 813F5040 | 4B F3 B2 F5 */	bl memset
/* 813F5044 | 80 7F 09 34 */	lwz r3, 0x934(r31)
/* 813F5048 | 38 80 00 00 */	li r4, 0x0
/* 813F504C | 38 A0 00 10 */	li r5, 0x10
/* 813F5050 | 38 63 01 01 */	addi r3, r3, 0x101
/* 813F5054 | 4B F3 B2 E1 */	bl memset
/* 813F5058 | 48 00 66 ED */	bl getIP__Q33ipl3ncd10NCDSettingFv
/* 813F505C | 80 9F 09 34 */	lwz r4, 0x934(r31)
/* 813F5060 | 7C 65 1B 78 */	mr r5, r3
/* 813F5064 | 7F E3 FB 78 */	mr r3, r31
/* 813F5068 | 38 84 00 F1 */	addi r4, r4, 0xf1
/* 813F506C | 38 A5 00 0C */	addi r5, r5, 0xc
/* 813F5070 | 48 00 0D 51 */	bl convertIP__Q33ipl5scene7SettingFPcPCUc
/* 813F5074 | 48 00 66 D1 */	bl getIP__Q33ipl3ncd10NCDSettingFv
/* 813F5078 | 80 9F 09 34 */	lwz r4, 0x934(r31)
/* 813F507C | 7C 65 1B 78 */	mr r5, r3
/* 813F5080 | 7F E3 FB 78 */	mr r3, r31
/* 813F5084 | 38 84 01 01 */	addi r4, r4, 0x101
/* 813F5088 | 38 A5 00 10 */	addi r5, r5, 0x10
/* 813F508C | 48 00 0D 35 */	bl convertIP__Q33ipl5scene7SettingFPcPCUc
/* 813F5090 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F5094 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F5098 | 7C 08 03 A6 */	mtlr r0
/* 813F509C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F50A0 | 4E 80 00 20 */	blr
.endfn initDNS__Q33ipl5scene7SettingFv

# .text:0x4930 | 0x813F50A4 | size: 0x84
# ipl::scene::Setting::initProxy()
.fn initProxy__Q33ipl5scene7SettingFv, global
/* 813F50A4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F50A8 | 7C 08 02 A6 */	mflr r0
/* 813F50AC | 38 80 00 00 */	li r4, 0x0
/* 813F50B0 | 38 A0 03 01 */	li r5, 0x301
/* 813F50B4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F50B8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F50BC | 7C 7F 1B 78 */	mr r31, r3
/* 813F50C0 | 80 C3 09 34 */	lwz r6, 0x934(r3)
/* 813F50C4 | 38 66 01 11 */	addi r3, r6, 0x111
/* 813F50C8 | 4B F3 B2 6D */	bl memset
/* 813F50CC | 80 7F 09 34 */	lwz r3, 0x934(r31)
/* 813F50D0 | 38 80 00 00 */	li r4, 0x0
/* 813F50D4 | 38 A0 00 06 */	li r5, 0x6
/* 813F50D8 | 38 63 04 12 */	addi r3, r3, 0x412
/* 813F50DC | 4B F3 B2 59 */	bl memset
/* 813F50E0 | 48 00 67 C9 */	bl getProxy__Q33ipl3ncd10NCDSettingFv
/* 813F50E4 | 80 DF 09 34 */	lwz r6, 0x934(r31)
/* 813F50E8 | 38 83 00 04 */	addi r4, r3, 0x4
/* 813F50EC | 38 A0 01 00 */	li r5, 0x100
/* 813F50F0 | 38 66 01 11 */	addi r3, r6, 0x111
/* 813F50F4 | 4B F3 B1 3D */	bl memcpy
/* 813F50F8 | 48 00 67 B1 */	bl getProxy__Q33ipl3ncd10NCDSettingFv
/* 813F50FC | 80 DF 09 34 */	lwz r6, 0x934(r31)
/* 813F5100 | 38 8D 91 4C */	li r4, lbl_8169718C@sda21
/* 813F5104 | A0 A3 01 04 */	lhz r5, 0x104(r3)
/* 813F5108 | 38 66 04 12 */	addi r3, r6, 0x412
/* 813F510C | 4C C6 31 82 */	crclr cr1eq
/* 813F5110 | 48 20 B9 71 */	bl sprintf
/* 813F5114 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F5118 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F511C | 7C 08 03 A6 */	mtlr r0
/* 813F5120 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F5124 | 4E 80 00 20 */	blr
.endfn initProxy__Q33ipl5scene7SettingFv

# .text:0x49B4 | 0x813F5128 | size: 0x80
# ipl::scene::Setting::initBasic()
.fn initBasic__Q33ipl5scene7SettingFv, global
/* 813F5128 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F512C | 7C 08 02 A6 */	mflr r0
/* 813F5130 | 38 80 00 00 */	li r4, 0x0
/* 813F5134 | 38 A0 00 61 */	li r5, 0x61
/* 813F5138 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F513C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F5140 | 7C 7F 1B 78 */	mr r31, r3
/* 813F5144 | 80 C3 09 34 */	lwz r6, 0x934(r3)
/* 813F5148 | 38 66 04 18 */	addi r3, r6, 0x418
/* 813F514C | 4B F3 B1 E9 */	bl memset
/* 813F5150 | 80 7F 09 34 */	lwz r3, 0x934(r31)
/* 813F5154 | 38 80 00 00 */	li r4, 0x0
/* 813F5158 | 38 A0 00 61 */	li r5, 0x61
/* 813F515C | 38 63 04 79 */	addi r3, r3, 0x479
/* 813F5160 | 4B F3 B1 D5 */	bl memset
/* 813F5164 | 48 00 67 45 */	bl getProxy__Q33ipl3ncd10NCDSettingFv
/* 813F5168 | 80 DF 09 34 */	lwz r6, 0x934(r31)
/* 813F516C | 38 83 01 06 */	addi r4, r3, 0x106
/* 813F5170 | 38 A0 00 21 */	li r5, 0x21
/* 813F5174 | 38 66 04 18 */	addi r3, r6, 0x418
/* 813F5178 | 4B F3 B0 B9 */	bl memcpy
/* 813F517C | 48 00 67 2D */	bl getProxy__Q33ipl3ncd10NCDSettingFv
/* 813F5180 | 80 DF 09 34 */	lwz r6, 0x934(r31)
/* 813F5184 | 38 83 01 27 */	addi r4, r3, 0x127
/* 813F5188 | 38 A0 00 21 */	li r5, 0x21
/* 813F518C | 38 66 04 79 */	addi r3, r6, 0x479
/* 813F5190 | 4B F3 B0 A1 */	bl memcpy
/* 813F5194 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F5198 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F519C | 7C 08 03 A6 */	mtlr r0
/* 813F51A0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F51A4 | 4E 80 00 20 */	blr
.endfn initBasic__Q33ipl5scene7SettingFv

# .text:0x4A34 | 0x813F51A8 | size: 0x64
# ipl::scene::Setting::initMTU()
.fn initMTU__Q33ipl5scene7SettingFv, global
/* 813F51A8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813F51AC | 7C 08 02 A6 */	mflr r0
/* 813F51B0 | 38 80 00 00 */	li r4, 0x0
/* 813F51B4 | 38 A0 00 05 */	li r5, 0x5
/* 813F51B8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813F51BC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813F51C0 | 7C 7F 1B 78 */	mr r31, r3
/* 813F51C4 | 80 C3 09 34 */	lwz r6, 0x934(r3)
/* 813F51C8 | 38 66 04 DA */	addi r3, r6, 0x4da
/* 813F51CC | 4B F3 B1 69 */	bl memset
/* 813F51D0 | 48 00 66 F5 */	bl getMTU__Q33ipl3ncd10NCDSettingFv
/* 813F51D4 | 7C 65 1B 78 */	mr r5, r3
/* 813F51D8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F51DC | 38 8D 91 4C */	li r4, lbl_8169718C@sda21
/* 813F51E0 | 4C C6 31 82 */	crclr cr1eq
/* 813F51E4 | 48 20 B8 9D */	bl sprintf
/* 813F51E8 | 80 7F 09 34 */	lwz r3, 0x934(r31)
/* 813F51EC | 38 81 00 08 */	addi r4, r1, 0x8
/* 813F51F0 | 38 63 04 DA */	addi r3, r3, 0x4da
/* 813F51F4 | 4B F6 EF 3D */	bl ANSIToUTF8__Q33ipl7utility13CharacterCodeFPcPCUc
/* 813F51F8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813F51FC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813F5200 | 7C 08 03 A6 */	mtlr r0
/* 813F5204 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813F5208 | 4E 80 00 20 */	blr
.endfn initMTU__Q33ipl5scene7SettingFv

# .text:0x4A98 | 0x813F520C | size: 0xA0
# ipl::scene::Setting::initSecA()
.fn initSecA__Q33ipl5scene7SettingFv, global
/* 813F520C | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 813F5210 | 7C 08 02 A6 */	mflr r0
/* 813F5214 | 38 80 00 00 */	li r4, 0x0
/* 813F5218 | 38 A0 00 64 */	li r5, 0x64
/* 813F521C | 90 01 00 64 */	stw r0, 0x64(r1)
/* 813F5220 | 93 E1 00 5C */	stw r31, 0x5c(r1)
/* 813F5224 | 7C 7F 1B 78 */	mr r31, r3
/* 813F5228 | 80 C3 09 34 */	lwz r6, 0x934(r3)
/* 813F522C | 38 66 04 EE */	addi r3, r6, 0x4ee
/* 813F5230 | 4B F3 B1 05 */	bl memset
/* 813F5234 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F5238 | 38 80 00 00 */	li r4, 0x0
/* 813F523C | 38 A0 00 44 */	li r5, 0x44
/* 813F5240 | 4B F3 B0 F5 */	bl memset
/* 813F5244 | 48 00 6B D9 */	bl getSecA__Q33ipl8parental8ParentalFv
/* 813F5248 | 7C 64 1B 78 */	mr r4, r3
/* 813F524C | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F5250 | 38 A0 00 20 */	li r5, 0x20
/* 813F5254 | 48 21 34 91 */	bl fn_816086E4
/* 813F5258 | 38 7F 09 38 */	addi r3, r31, 0x938
/* 813F525C | 38 80 00 00 */	li r4, 0x0
/* 813F5260 | 38 A0 02 02 */	li r5, 0x202
/* 813F5264 | 4B F3 B0 D1 */	bl memset
/* 813F5268 | 38 7F 09 38 */	addi r3, r31, 0x938
/* 813F526C | 38 81 00 08 */	addi r4, r1, 0x8
/* 813F5270 | 38 A0 00 20 */	li r5, 0x20
/* 813F5274 | 48 21 34 71 */	bl fn_816086E4
/* 813F5278 | 7F E3 FB 78 */	mr r3, r31
/* 813F527C | 38 81 00 08 */	addi r4, r1, 0x8
/* 813F5280 | 48 00 0C C1 */	bl adjustSecA__Q33ipl5scene7SettingFPw
/* 813F5284 | 80 7F 09 34 */	lwz r3, 0x934(r31)
/* 813F5288 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813F528C | 38 A0 00 64 */	li r5, 0x64
/* 813F5290 | 38 63 04 EE */	addi r3, r3, 0x4ee
/* 813F5294 | 4B F6 EE 6D */	bl UTF16ToUTF8__Q33ipl7utility13CharacterCodeFPcPCwl
/* 813F5298 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 813F529C | 83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 813F52A0 | 7C 08 03 A6 */	mtlr r0
/* 813F52A4 | 38 21 00 60 */	addi r1, r1, 0x60
/* 813F52A8 | 4E 80 00 20 */	blr
.endfn initSecA__Q33ipl5scene7SettingFv

# .text:0x4B38 | 0x813F52AC | size: 0xD4
# ipl::scene::Setting::initVersion()
.fn initVersion__Q33ipl5scene7SettingFv, global
/* 813F52AC | 94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 813F52B0 | 7C 08 02 A6 */	mflr r0
/* 813F52B4 | 3C 80 81 61 */	lis r4, lbl_81610AF0@ha
/* 813F52B8 | 90 01 00 A4 */	stw r0, 0xa4(r1)
/* 813F52BC | 38 84 0A F0 */	addi r4, r4, lbl_81610AF0@l
/* 813F52C0 | 38 00 00 06 */	li r0, 0x6
/* 813F52C4 | 38 A1 00 04 */	addi r5, r1, 0x4
/* 813F52C8 | 93 E1 00 9C */	stw r31, 0x9c(r1)
/* 813F52CC | 7C 7F 1B 78 */	mr r31, r3
/* 813F52D0 | 38 84 FF FC */	subi r4, r4, 0x4
/* 813F52D4 | 93 C1 00 98 */	stw r30, 0x98(r1)
/* 813F52D8 | 7C 09 03 A6 */	mtctr r0
.L_813F52DC:
/* 813F52DC | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 813F52E0 | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 813F52E4 | 90 65 00 04 */	stw r3, 0x4(r5)
/* 813F52E8 | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 813F52EC | 42 00 FF F0 */	bdnz .L_813F52DC
/* 813F52F0 | 3C 60 81 61 */	lis r3, lbl_81610B20@ha
/* 813F52F4 | 38 00 00 0C */	li r0, 0xc
/* 813F52F8 | 38 63 0B 20 */	addi r3, r3, lbl_81610B20@l
/* 813F52FC | 38 A1 00 34 */	addi r5, r1, 0x34
/* 813F5300 | 38 83 FF FC */	subi r4, r3, 0x4
/* 813F5304 | 7C 09 03 A6 */	mtctr r0
.L_813F5308:
/* 813F5308 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 813F530C | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 813F5310 | 90 65 00 04 */	stw r3, 0x4(r5)
/* 813F5314 | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 813F5318 | 42 00 FF F0 */	bdnz .L_813F5308
/* 813F531C | 4B F4 07 71 */	bl getRegion__Q23ipl6SystemFv
/* 813F5320 | 7C 7E 1B 78 */	mr r30, r3
/* 813F5324 | 54 60 10 3A */	slwi r0, r3, 2
/* 813F5328 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F532C | 3C 80 81 65 */	lis r4, lbl_816574BB@ha
/* 813F5330 | 80 BF 09 34 */	lwz r5, 0x934(r31)
/* 813F5334 | 38 84 74 BB */	addi r4, r4, lbl_816574BB@l
/* 813F5338 | 7C E3 00 2E */	lwzx r7, r3, r0
/* 813F533C | 38 C0 00 03 */	li r6, 0x3
/* 813F5340 | 38 65 05 FE */	addi r3, r5, 0x5fe
/* 813F5344 | 38 A0 00 04 */	li r5, 0x4
/* 813F5348 | 4C C6 31 82 */	crclr cr1eq
/* 813F534C | 48 20 B7 35 */	bl sprintf
/* 813F5350 | 38 01 00 38 */	addi r0, r1, 0x38
/* 813F5354 | 57 C3 18 38 */	slwi r3, r30, 3
/* 813F5358 | 7C 03 00 6E */	lwzux r0, r3, r0
/* 813F535C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813F5360 | 90 7F 00 9C */	stw r3, 0x9c(r31)
/* 813F5364 | 90 1F 00 98 */	stw r0, 0x98(r31)
/* 813F5368 | 83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 813F536C | 83 C1 00 98 */	lwz r30, 0x98(r1)
/* 813F5370 | 80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 813F5374 | 7C 08 03 A6 */	mtlr r0
/* 813F5378 | 38 21 00 A0 */	addi r1, r1, 0xa0
/* 813F537C | 4E 80 00 20 */	blr
.endfn initVersion__Q33ipl5scene7SettingFv

# .text:0x4C0C | 0x813F5380 | size: 0x18
# ipl::scene::Setting::setDisPos()
.fn setDisPos__Q33ipl5scene7SettingFv, global
/* 813F5380 | 80 63 09 24 */	lwz r3, 0x924(r3)
/* 813F5384 | 38 80 00 00 */	li r4, 0x0
/* 813F5388 | 88 03 00 07 */	lbz r0, 0x7(r3)
/* 813F538C | 20 00 00 10 */	subfic r0, r0, 0x10
/* 813F5390 | 7C 03 07 74 */	extsb r3, r0
/* 813F5394 | 48 14 8F A0 */	b fn_8153E334
.endfn setDisPos__Q33ipl5scene7SettingFv

# .text:0x4C24 | 0x813F5398 | size: 0x94
# ipl::scene::Setting::setNickName()
.fn setNickName__Q33ipl5scene7SettingFv, global
/* 813F5398 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F539C | 7C 08 02 A6 */	mflr r0
/* 813F53A0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F53A4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F53A8 | 7C 7F 1B 78 */	mr r31, r3
/* 813F53AC | 38 63 09 38 */	addi r3, r3, 0x938
/* 813F53B0 | 48 21 32 FD */	bl fn_816086AC
/* 813F53B4 | B0 7F 00 B8 */	sth r3, 0xb8(r31)
/* 813F53B8 | 7F E3 FB 78 */	mr r3, r31
/* 813F53BC | 80 9F 09 34 */	lwz r4, 0x934(r31)
/* 813F53C0 | 48 00 08 3D */	bl checkTextNum__Q33ipl5scene7SettingFPCc
/* 813F53C4 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813F53C8 | 28 00 00 03 */	cmplwi r0, 0x3
/* 813F53CC | 40 82 00 4C */	bne .L_813F5418
/* 813F53D0 | 38 7F 00 A4 */	addi r3, r31, 0xa4
/* 813F53D4 | 38 80 00 00 */	li r4, 0x0
/* 813F53D8 | 38 A0 00 14 */	li r5, 0x14
/* 813F53DC | 4B F3 AF 59 */	bl memset
/* 813F53E0 | A0 1F 00 B8 */	lhz r0, 0xb8(r31)
/* 813F53E4 | 38 7F 00 A4 */	addi r3, r31, 0xa4
/* 813F53E8 | 38 9F 09 38 */	addi r4, r31, 0x938
/* 813F53EC | 54 05 08 3C */	slwi r5, r0, 1
/* 813F53F0 | 4B F3 AE 41 */	bl memcpy
/* 813F53F4 | 38 7F 00 A4 */	addi r3, r31, 0xa4
/* 813F53F8 | 48 17 51 09 */	bl fn_8156A500
/* 813F53FC | 30 03 FF FF */	subic r0, r3, 0x1
/* 813F5400 | 3C C0 81 65 */	lis r6, lbl_816574C8@ha
/* 813F5404 | 7C 80 19 10 */	subfe r4, r0, r3
/* 813F5408 | 38 BF 00 A4 */	addi r5, r31, 0xa4
/* 813F540C | 38 66 74 C8 */	addi r3, r6, lbl_816574C8@l
/* 813F5410 | 4C C6 31 82 */	crclr cr1eq
/* 813F5414 | 48 13 92 8D */	bl OSReport
.L_813F5418:
/* 813F5418 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F541C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F5420 | 7C 08 03 A6 */	mtlr r0
/* 813F5424 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F5428 | 4E 80 00 20 */	blr
.endfn setNickName__Q33ipl5scene7SettingFv

# .text:0x4CB8 | 0x813F542C | size: 0xA8
# ipl::scene::Setting::setSecurityKey()
.fn setSecurityKey__Q33ipl5scene7SettingFv, global
/* 813F542C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F5430 | 7C 08 02 A6 */	mflr r0
/* 813F5434 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F5438 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F543C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813F5440 | 7C 7E 1B 78 */	mr r30, r3
/* 813F5444 | 80 83 09 34 */	lwz r4, 0x934(r3)
/* 813F5448 | 38 64 00 1F */	addi r3, r4, 0x1f
/* 813F544C | 48 00 50 39 */	bl checkWEPKey__Q33ipl3ncd10NCDSettingFPc
/* 813F5450 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F5454 | 7C 7F 1B 78 */	mr r31, r3
/* 813F5458 | 41 80 00 38 */	blt .L_813F5490
/* 813F545C | 38 60 00 03 */	li r3, 0x3
/* 813F5460 | 4B F7 BD 15 */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F5464 | 80 7E 09 34 */	lwz r3, 0x934(r30)
/* 813F5468 | 7F E4 FB 78 */	mr r4, r31
/* 813F546C | 38 63 00 1F */	addi r3, r3, 0x1f
/* 813F5470 | 48 00 59 B5 */	bl setPrivacy__Q33ipl3ncd10NCDSettingFPUci
/* 813F5474 | 80 9E 09 34 */	lwz r4, 0x934(r30)
/* 813F5478 | 3C 60 81 65 */	lis r3, lbl_816574DE@ha
/* 813F547C | 38 63 74 DE */	addi r3, r3, lbl_816574DE@l
/* 813F5480 | 38 84 00 1F */	addi r4, r4, 0x1f
/* 813F5484 | 4C C6 31 82 */	crclr cr1eq
/* 813F5488 | 48 13 92 19 */	bl OSReport
/* 813F548C | 48 00 00 30 */	b .L_813F54BC
.L_813F5490:
/* 813F5490 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F5494 | 38 80 01 BE */	li r4, 0x1be
/* 813F5498 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F549C | 38 A0 00 B4 */	li r5, 0xb4
/* 813F54A0 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813F54A4 | 38 C0 00 00 */	li r6, 0x0
/* 813F54A8 | 4B F5 0F A5 */	bl callBtn0__Q23ipl12DialogWindowFUlUlb
/* 813F54AC | 38 00 00 02 */	li r0, 0x2
/* 813F54B0 | 38 60 00 04 */	li r3, 0x4
/* 813F54B4 | 90 1E 00 74 */	stw r0, 0x74(r30)
/* 813F54B8 | 4B F7 BC BD */	bl setFuncResult__Q23www10wiisettingFUc
.L_813F54BC:
/* 813F54BC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F54C0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F54C4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813F54C8 | 7C 08 03 A6 */	mtlr r0
/* 813F54CC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F54D0 | 4E 80 00 20 */	blr
.endfn setSecurityKey__Q33ipl5scene7SettingFv

# .text:0x4D60 | 0x813F54D4 | size: 0x60
# ipl::scene::Setting::setSSID()
.fn setSSID__Q33ipl5scene7SettingFv, global
/* 813F54D4 | 94 21 FF 80 */	stwu r1, -0x80(r1)
/* 813F54D8 | 7C 08 02 A6 */	mflr r0
/* 813F54DC | 38 80 00 00 */	li r4, 0x0
/* 813F54E0 | 38 A0 00 61 */	li r5, 0x61
/* 813F54E4 | 90 01 00 84 */	stw r0, 0x84(r1)
/* 813F54E8 | 93 E1 00 7C */	stw r31, 0x7c(r1)
/* 813F54EC | 7C 7F 1B 78 */	mr r31, r3
/* 813F54F0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F54F4 | 4B F3 AE 41 */	bl memset
/* 813F54F8 | 80 9F 09 34 */	lwz r4, 0x934(r31)
/* 813F54FC | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F5500 | 38 84 00 60 */	addi r4, r4, 0x60
/* 813F5504 | 4B F6 ED 51 */	bl UTF8ToANSI__Q33ipl7utility13CharacterCodeFPUcPCc
/* 813F5508 | 38 61 00 28 */	addi r3, r1, 0x28
/* 813F550C | 38 80 00 00 */	li r4, 0x0
/* 813F5510 | 38 A0 00 41 */	li r5, 0x41
/* 813F5514 | 4B F3 AE 21 */	bl memset
/* 813F5518 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F551C | 48 00 57 09 */	bl setSSID__Q33ipl3ncd10NCDSettingFPUc
/* 813F5520 | 80 01 00 84 */	lwz r0, 0x84(r1)
/* 813F5524 | 83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 813F5528 | 7C 08 03 A6 */	mtlr r0
/* 813F552C | 38 21 00 80 */	addi r1, r1, 0x80
/* 813F5530 | 4E 80 00 20 */	blr
.endfn setSSID__Q33ipl5scene7SettingFv

# .text:0x4DC0 | 0x813F5534 | size: 0x7C
# ipl::scene::Setting::setIP()
.fn setIP__Q33ipl5scene7SettingFv, global
/* 813F5534 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813F5538 | 7C 08 02 A6 */	mflr r0
/* 813F553C | 38 80 00 00 */	li r4, 0x0
/* 813F5540 | 38 A0 00 14 */	li r5, 0x14
/* 813F5544 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813F5548 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 813F554C | 7C 7F 1B 78 */	mr r31, r3
/* 813F5550 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F5554 | 4B F3 AD E1 */	bl memset
/* 813F5558 | 80 BF 09 34 */	lwz r5, 0x934(r31)
/* 813F555C | 7F E3 FB 78 */	mr r3, r31
/* 813F5560 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813F5564 | 38 A5 00 C1 */	addi r5, r5, 0xc1
/* 813F5568 | 48 00 08 B5 */	bl convertRevIP__Q33ipl5scene7SettingFPUcPCc
/* 813F556C | 80 BF 09 34 */	lwz r5, 0x934(r31)
/* 813F5570 | 7F E3 FB 78 */	mr r3, r31
/* 813F5574 | 38 81 00 0C */	addi r4, r1, 0xc
/* 813F5578 | 38 A5 00 D1 */	addi r5, r5, 0xd1
/* 813F557C | 48 00 08 A1 */	bl convertRevIP__Q33ipl5scene7SettingFPUcPCc
/* 813F5580 | 80 BF 09 34 */	lwz r5, 0x934(r31)
/* 813F5584 | 7F E3 FB 78 */	mr r3, r31
/* 813F5588 | 38 81 00 10 */	addi r4, r1, 0x10
/* 813F558C | 38 A5 00 E1 */	addi r5, r5, 0xe1
/* 813F5590 | 48 00 08 8D */	bl convertRevIP__Q33ipl5scene7SettingFPUcPCc
/* 813F5594 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F5598 | 48 00 5A 09 */	bl setIP__Q33ipl3ncd10NCDSettingFP12NCDIpProfile
/* 813F559C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813F55A0 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 813F55A4 | 7C 08 03 A6 */	mtlr r0
/* 813F55A8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813F55AC | 4E 80 00 20 */	blr
.endfn setIP__Q33ipl5scene7SettingFv

# .text:0x4E3C | 0x813F55B0 | size: 0x68
# ipl::scene::Setting::setDNS()
.fn setDNS__Q33ipl5scene7SettingFv, global
/* 813F55B0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813F55B4 | 7C 08 02 A6 */	mflr r0
/* 813F55B8 | 38 80 00 00 */	li r4, 0x0
/* 813F55BC | 38 A0 00 14 */	li r5, 0x14
/* 813F55C0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813F55C4 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 813F55C8 | 7C 7F 1B 78 */	mr r31, r3
/* 813F55CC | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F55D0 | 4B F3 AD 65 */	bl memset
/* 813F55D4 | 80 BF 09 34 */	lwz r5, 0x934(r31)
/* 813F55D8 | 7F E3 FB 78 */	mr r3, r31
/* 813F55DC | 38 81 00 14 */	addi r4, r1, 0x14
/* 813F55E0 | 38 A5 00 F1 */	addi r5, r5, 0xf1
/* 813F55E4 | 48 00 08 39 */	bl convertRevIP__Q33ipl5scene7SettingFPUcPCc
/* 813F55E8 | 80 BF 09 34 */	lwz r5, 0x934(r31)
/* 813F55EC | 7F E3 FB 78 */	mr r3, r31
/* 813F55F0 | 38 81 00 18 */	addi r4, r1, 0x18
/* 813F55F4 | 38 A5 01 01 */	addi r5, r5, 0x101
/* 813F55F8 | 48 00 08 25 */	bl convertRevIP__Q33ipl5scene7SettingFPUcPCc
/* 813F55FC | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F5600 | 48 00 5A 2D */	bl setDNS__Q33ipl3ncd10NCDSettingFP12NCDIpProfile
/* 813F5604 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813F5608 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 813F560C | 7C 08 03 A6 */	mtlr r0
/* 813F5610 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813F5614 | 4E 80 00 20 */	blr
.endfn setDNS__Q33ipl5scene7SettingFv

# .text:0x4EA4 | 0x813F5618 | size: 0x118
# ipl::scene::Setting::setProxy()
.fn setProxy__Q33ipl5scene7SettingFv, global
/* 813F5618 | 94 21 FE 90 */	stwu r1, -0x170(r1)
/* 813F561C | 7C 08 02 A6 */	mflr r0
/* 813F5620 | 38 80 00 00 */	li r4, 0x0
/* 813F5624 | 90 01 01 74 */	stw r0, 0x174(r1)
/* 813F5628 | 93 E1 01 6C */	stw r31, 0x16c(r1)
/* 813F562C | 93 C1 01 68 */	stw r30, 0x168(r1)
/* 813F5630 | 7C 7E 1B 78 */	mr r30, r3
/* 813F5634 | 80 A3 09 34 */	lwz r5, 0x934(r3)
/* 813F5638 | 38 61 00 0C */	addi r3, r1, 0xc
/* 813F563C | 3B E5 04 12 */	addi r31, r5, 0x412
/* 813F5640 | 38 A0 00 0C */	li r5, 0xc
/* 813F5644 | 4B F3 AC F1 */	bl memset
/* 813F5648 | 7F E4 FB 78 */	mr r4, r31
/* 813F564C | 38 61 00 0C */	addi r3, r1, 0xc
/* 813F5650 | 38 A0 00 06 */	li r5, 0x6
/* 813F5654 | 4B F6 EA 7D */	bl UTF8ToUTF16__Q33ipl7utility13CharacterCodeFPwPCcl
/* 813F5658 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F565C | 38 81 00 0C */	addi r4, r1, 0xc
/* 813F5660 | 4B F6 EC 85 */	bl UTF16ToU32__Q33ipl7utility13CharacterCodeFPUlPCw
/* 813F5664 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 813F5668 | 54 60 04 3F */	clrlwi. r0, r3, 16
/* 813F566C | B0 61 01 1C */	sth r3, 0x11c(r1)
/* 813F5670 | 40 82 00 34 */	bne .L_813F56A4
/* 813F5674 | 38 60 00 04 */	li r3, 0x4
/* 813F5678 | 4B F7 BA FD */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F567C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F5680 | 38 80 01 BE */	li r4, 0x1be
/* 813F5684 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F5688 | 38 A0 00 B4 */	li r5, 0xb4
/* 813F568C | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813F5690 | 38 C0 00 00 */	li r6, 0x0
/* 813F5694 | 4B F5 0D B9 */	bl callBtn0__Q23ipl12DialogWindowFUlUlb
/* 813F5698 | 38 00 00 02 */	li r0, 0x2
/* 813F569C | 90 1E 00 74 */	stw r0, 0x74(r30)
/* 813F56A0 | 48 00 00 78 */	b .L_813F5718
.L_813F56A4:
/* 813F56A4 | 80 7E 09 34 */	lwz r3, 0x934(r30)
/* 813F56A8 | 38 63 01 11 */	addi r3, r3, 0x111
/* 813F56AC | 48 00 4F A5 */	bl checkProxy__Q33ipl3ncd10NCDSettingFPc
/* 813F56B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F56B4 | 41 82 00 38 */	beq .L_813F56EC
/* 813F56B8 | 38 60 00 03 */	li r3, 0x3
/* 813F56BC | 4B F7 BA B9 */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F56C0 | 38 61 00 1C */	addi r3, r1, 0x1c
/* 813F56C4 | 38 80 00 00 */	li r4, 0x0
/* 813F56C8 | 38 A0 01 00 */	li r5, 0x100
/* 813F56CC | 4B F3 AC 69 */	bl memset
/* 813F56D0 | 80 9E 09 34 */	lwz r4, 0x934(r30)
/* 813F56D4 | 38 61 00 1C */	addi r3, r1, 0x1c
/* 813F56D8 | 38 84 01 11 */	addi r4, r4, 0x111
/* 813F56DC | 4B F6 EB 79 */	bl UTF8ToANSI__Q33ipl7utility13CharacterCodeFPUcPCc
/* 813F56E0 | 38 61 00 18 */	addi r3, r1, 0x18
/* 813F56E4 | 48 00 59 E1 */	bl setProxy__Q33ipl3ncd10NCDSettingFP21NCDProxyServerProfile
/* 813F56E8 | 48 00 00 30 */	b .L_813F5718
.L_813F56EC:
/* 813F56EC | 38 60 00 04 */	li r3, 0x4
/* 813F56F0 | 4B F7 BA 85 */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F56F4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F56F8 | 38 80 01 BE */	li r4, 0x1be
/* 813F56FC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F5700 | 38 A0 00 B4 */	li r5, 0xb4
/* 813F5704 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813F5708 | 38 C0 00 00 */	li r6, 0x0
/* 813F570C | 4B F5 0D 41 */	bl callBtn0__Q23ipl12DialogWindowFUlUlb
/* 813F5710 | 38 00 00 02 */	li r0, 0x2
/* 813F5714 | 90 1E 00 74 */	stw r0, 0x74(r30)
.L_813F5718:
/* 813F5718 | 80 01 01 74 */	lwz r0, 0x174(r1)
/* 813F571C | 83 E1 01 6C */	lwz r31, 0x16c(r1)
/* 813F5720 | 83 C1 01 68 */	lwz r30, 0x168(r1)
/* 813F5724 | 7C 08 03 A6 */	mtlr r0
/* 813F5728 | 38 21 01 70 */	addi r1, r1, 0x170
/* 813F572C | 4E 80 00 20 */	blr
.endfn setProxy__Q33ipl5scene7SettingFv

# .text:0x4FBC | 0x813F5730 | size: 0xC0
# ipl::scene::Setting::setBasic()
.fn setBasic__Q33ipl5scene7SettingFv, global
/* 813F5730 | 94 21 FE A0 */	stwu r1, -0x160(r1)
/* 813F5734 | 7C 08 02 A6 */	mflr r0
/* 813F5738 | 90 01 01 64 */	stw r0, 0x164(r1)
/* 813F573C | 93 E1 01 5C */	stw r31, 0x15c(r1)
/* 813F5740 | 7C 7F 1B 78 */	mr r31, r3
/* 813F5744 | 80 83 09 34 */	lwz r4, 0x934(r3)
/* 813F5748 | 38 64 04 18 */	addi r3, r4, 0x418
/* 813F574C | 48 00 4F F9 */	bl checkProxyBasic__Q33ipl3ncd10NCDSettingFPc
/* 813F5750 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F5754 | 41 82 00 5C */	beq .L_813F57B0
/* 813F5758 | 80 7F 09 34 */	lwz r3, 0x934(r31)
/* 813F575C | 38 63 04 79 */	addi r3, r3, 0x479
/* 813F5760 | 48 00 4F E5 */	bl checkProxyBasic__Q33ipl3ncd10NCDSettingFPc
/* 813F5764 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F5768 | 41 82 00 48 */	beq .L_813F57B0
/* 813F576C | 38 60 00 03 */	li r3, 0x3
/* 813F5770 | 4B F7 BA 05 */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F5774 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F5778 | 38 80 00 00 */	li r4, 0x0
/* 813F577C | 38 A0 01 48 */	li r5, 0x148
/* 813F5780 | 4B F3 AB B5 */	bl memset
/* 813F5784 | 80 9F 09 34 */	lwz r4, 0x934(r31)
/* 813F5788 | 38 61 01 0E */	addi r3, r1, 0x10e
/* 813F578C | 38 84 04 18 */	addi r4, r4, 0x418
/* 813F5790 | 4B F6 EA C5 */	bl UTF8ToANSI__Q33ipl7utility13CharacterCodeFPUcPCc
/* 813F5794 | 80 9F 09 34 */	lwz r4, 0x934(r31)
/* 813F5798 | 38 61 01 2F */	addi r3, r1, 0x12f
/* 813F579C | 38 84 04 79 */	addi r4, r4, 0x479
/* 813F57A0 | 4B F6 EA B5 */	bl UTF8ToANSI__Q33ipl7utility13CharacterCodeFPUcPCc
/* 813F57A4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F57A8 | 48 00 59 A9 */	bl setBasic__Q33ipl3ncd10NCDSettingFP21NCDProxyServerProfile
/* 813F57AC | 48 00 00 30 */	b .L_813F57DC
.L_813F57B0:
/* 813F57B0 | 38 60 00 04 */	li r3, 0x4
/* 813F57B4 | 4B F7 B9 C1 */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F57B8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F57BC | 38 80 01 BE */	li r4, 0x1be
/* 813F57C0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F57C4 | 38 A0 00 B4 */	li r5, 0xb4
/* 813F57C8 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813F57CC | 38 C0 00 00 */	li r6, 0x0
/* 813F57D0 | 4B F5 0C 7D */	bl callBtn0__Q23ipl12DialogWindowFUlUlb
/* 813F57D4 | 38 00 00 02 */	li r0, 0x2
/* 813F57D8 | 90 1F 00 74 */	stw r0, 0x74(r31)
.L_813F57DC:
/* 813F57DC | 80 01 01 64 */	lwz r0, 0x164(r1)
/* 813F57E0 | 83 E1 01 5C */	lwz r31, 0x15c(r1)
/* 813F57E4 | 7C 08 03 A6 */	mtlr r0
/* 813F57E8 | 38 21 01 60 */	addi r1, r1, 0x160
/* 813F57EC | 4E 80 00 20 */	blr
.endfn setBasic__Q33ipl5scene7SettingFv

# .text:0x507C | 0x813F57F0 | size: 0x90
# ipl::scene::Setting::setMTU()
.fn setMTU__Q33ipl5scene7SettingFv, global
/* 813F57F0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813F57F4 | 7C 08 02 A6 */	mflr r0
/* 813F57F8 | 38 80 00 00 */	li r4, 0x0
/* 813F57FC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813F5800 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813F5804 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 813F5808 | 7C 7E 1B 78 */	mr r30, r3
/* 813F580C | 80 A3 09 34 */	lwz r5, 0x934(r3)
/* 813F5810 | 38 61 00 0C */	addi r3, r1, 0xc
/* 813F5814 | 3B E5 04 DA */	addi r31, r5, 0x4da
/* 813F5818 | 38 A0 00 0C */	li r5, 0xc
/* 813F581C | 4B F3 AB 19 */	bl memset
/* 813F5820 | 7F E4 FB 78 */	mr r4, r31
/* 813F5824 | 38 61 00 0C */	addi r3, r1, 0xc
/* 813F5828 | 38 A0 00 06 */	li r5, 0x6
/* 813F582C | 4B F6 E8 A5 */	bl UTF8ToUTF16__Q33ipl7utility13CharacterCodeFPwPCcl
/* 813F5830 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F5834 | 38 81 00 0C */	addi r4, r1, 0xc
/* 813F5838 | 4B F6 EA AD */	bl UTF16ToU32__Q33ipl7utility13CharacterCodeFPUlPCw
/* 813F583C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 813F5840 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 813F5844 | 2C 03 02 40 */	cmpwi r3, 0x240
/* 813F5848 | 41 80 00 0C */	blt .L_813F5854
/* 813F584C | 2C 03 05 DC */	cmpwi r3, 0x5dc
/* 813F5850 | 40 81 00 08 */	ble .L_813F5858
.L_813F5854:
/* 813F5854 | 38 60 00 00 */	li r3, 0x0
.L_813F5858:
/* 813F5858 | 48 00 58 45 */	bl setMTU__Q33ipl3ncd10NCDSettingFl
/* 813F585C | 80 7E 09 24 */	lwz r3, 0x924(r30)
/* 813F5860 | 38 00 00 00 */	li r0, 0x0
/* 813F5864 | 98 03 00 36 */	stb r0, 0x36(r3)
/* 813F5868 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813F586C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 813F5870 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813F5874 | 7C 08 03 A6 */	mtlr r0
/* 813F5878 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813F587C | 4E 80 00 20 */	blr
.endfn setMTU__Q33ipl5scene7SettingFv

# .text:0x510C | 0x813F5880 | size: 0x7C
# ipl::scene::Setting::setParePass()
.fn setParePass__Q33ipl5scene7SettingFv, global
/* 813F5880 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813F5884 | 7C 08 02 A6 */	mflr r0
/* 813F5888 | 38 80 00 00 */	li r4, 0x0
/* 813F588C | 38 A0 00 05 */	li r5, 0x5
/* 813F5890 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813F5894 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813F5898 | 7C 7F 1B 78 */	mr r31, r3
/* 813F589C | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F58A0 | 4B F3 AA 95 */	bl memset
/* 813F58A4 | 80 9F 09 34 */	lwz r4, 0x934(r31)
/* 813F58A8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F58AC | 38 84 04 DF */	addi r4, r4, 0x4df
/* 813F58B0 | 4B F6 E9 A5 */	bl UTF8ToANSI__Q33ipl7utility13CharacterCodeFPUcPCc
/* 813F58B4 | 7F E3 FB 78 */	mr r3, r31
/* 813F58B8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813F58BC | 48 00 03 41 */	bl checkTextNum__Q33ipl5scene7SettingFPCc
/* 813F58C0 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813F58C4 | 28 00 00 03 */	cmplwi r0, 0x3
/* 813F58C8 | 40 82 00 0C */	bne .L_813F58D4
/* 813F58CC | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F58D0 | 48 00 66 2D */	bl setPass__Q33ipl8parental8ParentalFPCc
.L_813F58D4:
/* 813F58D4 | 80 7F 09 34 */	lwz r3, 0x934(r31)
/* 813F58D8 | 38 80 00 00 */	li r4, 0x0
/* 813F58DC | 38 A0 00 05 */	li r5, 0x5
/* 813F58E0 | 38 63 04 DF */	addi r3, r3, 0x4df
/* 813F58E4 | 4B F3 AA 51 */	bl memset
/* 813F58E8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813F58EC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813F58F0 | 7C 08 03 A6 */	mtlr r0
/* 813F58F4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813F58F8 | 4E 80 00 20 */	blr
.endfn setParePass__Q33ipl5scene7SettingFv

# .text:0x5188 | 0x813F58FC | size: 0x9C
# ipl::scene::Setting::setPareRePass()
.fn setPareRePass__Q33ipl5scene7SettingFv, global
/* 813F58FC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813F5900 | 7C 08 02 A6 */	mflr r0
/* 813F5904 | 38 80 00 00 */	li r4, 0x0
/* 813F5908 | 38 A0 00 05 */	li r5, 0x5
/* 813F590C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813F5910 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813F5914 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 813F5918 | 7C 7E 1B 78 */	mr r30, r3
/* 813F591C | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F5920 | 4B F3 AA 15 */	bl memset
/* 813F5924 | 80 9E 09 34 */	lwz r4, 0x934(r30)
/* 813F5928 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F592C | 3B E0 00 02 */	li r31, 0x2
/* 813F5930 | 38 84 04 E4 */	addi r4, r4, 0x4e4
/* 813F5934 | 4B F6 E9 21 */	bl UTF8ToANSI__Q33ipl7utility13CharacterCodeFPUcPCc
/* 813F5938 | 7F C3 F3 78 */	mr r3, r30
/* 813F593C | 38 81 00 08 */	addi r4, r1, 0x8
/* 813F5940 | 48 00 02 BD */	bl checkTextNum__Q33ipl5scene7SettingFPCc
/* 813F5944 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813F5948 | 28 00 00 03 */	cmplwi r0, 0x3
/* 813F594C | 40 82 00 20 */	bne .L_813F596C
/* 813F5950 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F5954 | 48 00 62 B9 */	bl checkPass__Q33ipl8parental8ParentalFPCc
/* 813F5958 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F595C | 41 82 00 08 */	beq .L_813F5964
/* 813F5960 | 3B E0 00 01 */	li r31, 0x1
.L_813F5964:
/* 813F5964 | 7F E3 FB 78 */	mr r3, r31
/* 813F5968 | 4B F7 B8 0D */	bl setFuncResult__Q23www10wiisettingFUc
.L_813F596C:
/* 813F596C | 80 7E 09 34 */	lwz r3, 0x934(r30)
/* 813F5970 | 38 80 00 00 */	li r4, 0x0
/* 813F5974 | 38 A0 00 05 */	li r5, 0x5
/* 813F5978 | 38 63 04 E4 */	addi r3, r3, 0x4e4
/* 813F597C | 4B F3 A9 B9 */	bl memset
/* 813F5980 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813F5984 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813F5988 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 813F598C | 7C 08 03 A6 */	mtlr r0
/* 813F5990 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813F5994 | 4E 80 00 20 */	blr
.endfn setPareRePass__Q33ipl5scene7SettingFv

# .text:0x5224 | 0x813F5998 | size: 0x9C
# ipl::scene::Setting::setPareJudgePass()
.fn setPareJudgePass__Q33ipl5scene7SettingFv, global
/* 813F5998 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813F599C | 7C 08 02 A6 */	mflr r0
/* 813F59A0 | 38 80 00 00 */	li r4, 0x0
/* 813F59A4 | 38 A0 00 05 */	li r5, 0x5
/* 813F59A8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813F59AC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813F59B0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 813F59B4 | 7C 7E 1B 78 */	mr r30, r3
/* 813F59B8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F59BC | 4B F3 A9 79 */	bl memset
/* 813F59C0 | 80 9E 09 34 */	lwz r4, 0x934(r30)
/* 813F59C4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F59C8 | 3B E0 00 02 */	li r31, 0x2
/* 813F59CC | 38 84 04 E9 */	addi r4, r4, 0x4e9
/* 813F59D0 | 4B F6 E8 85 */	bl UTF8ToANSI__Q33ipl7utility13CharacterCodeFPUcPCc
/* 813F59D4 | 7F C3 F3 78 */	mr r3, r30
/* 813F59D8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813F59DC | 48 00 02 21 */	bl checkTextNum__Q33ipl5scene7SettingFPCc
/* 813F59E0 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813F59E4 | 28 00 00 03 */	cmplwi r0, 0x3
/* 813F59E8 | 40 82 00 20 */	bne .L_813F5A08
/* 813F59EC | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F59F0 | 48 00 62 BD */	bl judgePass__Q33ipl8parental8ParentalFPCc
/* 813F59F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F59F8 | 41 82 00 08 */	beq .L_813F5A00
/* 813F59FC | 3B E0 00 01 */	li r31, 0x1
.L_813F5A00:
/* 813F5A00 | 7F E3 FB 78 */	mr r3, r31
/* 813F5A04 | 4B F7 B7 71 */	bl setFuncResult__Q23www10wiisettingFUc
.L_813F5A08:
/* 813F5A08 | 80 7E 09 34 */	lwz r3, 0x934(r30)
/* 813F5A0C | 38 80 00 00 */	li r4, 0x0
/* 813F5A10 | 38 A0 00 05 */	li r5, 0x5
/* 813F5A14 | 38 63 04 E9 */	addi r3, r3, 0x4e9
/* 813F5A18 | 4B F3 A9 1D */	bl memset
/* 813F5A1C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813F5A20 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813F5A24 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 813F5A28 | 7C 08 03 A6 */	mtlr r0
/* 813F5A2C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813F5A30 | 4E 80 00 20 */	blr
.endfn setPareJudgePass__Q33ipl5scene7SettingFv

# .text:0x52C0 | 0x813F5A34 | size: 0x84
# ipl::scene::Setting::setSecA()
.fn setSecA__Q33ipl5scene7SettingFv, global
/* 813F5A34 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F5A38 | 7C 08 02 A6 */	mflr r0
/* 813F5A3C | 38 80 00 00 */	li r4, 0x0
/* 813F5A40 | 38 A0 02 02 */	li r5, 0x202
/* 813F5A44 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F5A48 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F5A4C | 7C 7F 1B 78 */	mr r31, r3
/* 813F5A50 | 38 63 09 38 */	addi r3, r3, 0x938
/* 813F5A54 | 4B F3 A8 E1 */	bl memset
/* 813F5A58 | 80 9F 09 34 */	lwz r4, 0x934(r31)
/* 813F5A5C | 38 7F 09 38 */	addi r3, r31, 0x938
/* 813F5A60 | 38 A0 00 44 */	li r5, 0x44
/* 813F5A64 | 38 84 04 EE */	addi r4, r4, 0x4ee
/* 813F5A68 | 4B F6 E6 69 */	bl UTF8ToUTF16__Q33ipl7utility13CharacterCodeFPwPCcl
/* 813F5A6C | 7F E3 FB 78 */	mr r3, r31
/* 813F5A70 | 48 00 05 65 */	bl reAdjustSecA__Q33ipl5scene7SettingFv
/* 813F5A74 | 7F E3 FB 78 */	mr r3, r31
/* 813F5A78 | 38 80 00 00 */	li r4, 0x0
/* 813F5A7C | 48 00 01 81 */	bl checkTextNum__Q33ipl5scene7SettingFPCc
/* 813F5A80 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813F5A84 | 28 00 00 03 */	cmplwi r0, 0x3
/* 813F5A88 | 40 82 00 0C */	bne .L_813F5A94
/* 813F5A8C | 38 7F 09 38 */	addi r3, r31, 0x938
/* 813F5A90 | 48 00 64 8D */	bl setSecA__Q33ipl8parental8ParentalFPCw
.L_813F5A94:
/* 813F5A94 | 38 7F 09 38 */	addi r3, r31, 0x938
/* 813F5A98 | 38 80 00 00 */	li r4, 0x0
/* 813F5A9C | 38 A0 02 02 */	li r5, 0x202
/* 813F5AA0 | 4B F3 A8 95 */	bl memset
/* 813F5AA4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F5AA8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F5AAC | 7C 08 03 A6 */	mtlr r0
/* 813F5AB0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F5AB4 | 4E 80 00 20 */	blr
.endfn setSecA__Q33ipl5scene7SettingFv

# .text:0x5344 | 0x813F5AB8 | size: 0xA4
# ipl::scene::Setting::setReSecA()
.fn setReSecA__Q33ipl5scene7SettingFv, global
/* 813F5AB8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F5ABC | 7C 08 02 A6 */	mflr r0
/* 813F5AC0 | 38 80 00 00 */	li r4, 0x0
/* 813F5AC4 | 38 A0 02 02 */	li r5, 0x202
/* 813F5AC8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F5ACC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F5AD0 | 3B E0 00 02 */	li r31, 0x2
/* 813F5AD4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813F5AD8 | 7C 7E 1B 78 */	mr r30, r3
/* 813F5ADC | 38 63 09 38 */	addi r3, r3, 0x938
/* 813F5AE0 | 4B F3 A8 55 */	bl memset
/* 813F5AE4 | 80 9E 09 34 */	lwz r4, 0x934(r30)
/* 813F5AE8 | 38 7E 09 38 */	addi r3, r30, 0x938
/* 813F5AEC | 38 A0 00 44 */	li r5, 0x44
/* 813F5AF0 | 38 84 05 52 */	addi r4, r4, 0x552
/* 813F5AF4 | 4B F6 E5 DD */	bl UTF8ToUTF16__Q33ipl7utility13CharacterCodeFPwPCcl
/* 813F5AF8 | 7F C3 F3 78 */	mr r3, r30
/* 813F5AFC | 48 00 04 D9 */	bl reAdjustSecA__Q33ipl5scene7SettingFv
/* 813F5B00 | 7F C3 F3 78 */	mr r3, r30
/* 813F5B04 | 38 80 00 00 */	li r4, 0x0
/* 813F5B08 | 48 00 00 F5 */	bl checkTextNum__Q33ipl5scene7SettingFPCc
/* 813F5B0C | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813F5B10 | 28 00 00 03 */	cmplwi r0, 0x3
/* 813F5B14 | 40 82 00 20 */	bne .L_813F5B34
/* 813F5B18 | 38 7E 09 38 */	addi r3, r30, 0x938
/* 813F5B1C | 48 00 61 ED */	bl judgeSecA__Q33ipl8parental8ParentalFPCw
/* 813F5B20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F5B24 | 41 82 00 08 */	beq .L_813F5B2C
/* 813F5B28 | 3B E0 00 01 */	li r31, 0x1
.L_813F5B2C:
/* 813F5B2C | 7F E3 FB 78 */	mr r3, r31
/* 813F5B30 | 4B F7 B6 45 */	bl setFuncResult__Q23www10wiisettingFUc
.L_813F5B34:
/* 813F5B34 | 38 7E 09 38 */	addi r3, r30, 0x938
/* 813F5B38 | 38 80 00 00 */	li r4, 0x0
/* 813F5B3C | 38 A0 02 02 */	li r5, 0x202
/* 813F5B40 | 4B F3 A7 F5 */	bl memset
/* 813F5B44 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F5B48 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F5B4C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813F5B50 | 7C 08 03 A6 */	mtlr r0
/* 813F5B54 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F5B58 | 4E 80 00 20 */	blr
.endfn setReSecA__Q33ipl5scene7SettingFv

# .text:0x53E8 | 0x813F5B5C | size: 0xA0
# ipl::scene::Setting::setMasterKey()
.fn setMasterKey__Q33ipl5scene7SettingFv, global
/* 813F5B5C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813F5B60 | 7C 08 02 A6 */	mflr r0
/* 813F5B64 | 38 80 00 00 */	li r4, 0x0
/* 813F5B68 | 38 A0 00 06 */	li r5, 0x6
/* 813F5B6C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813F5B70 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813F5B74 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 813F5B78 | 7C 7E 1B 78 */	mr r30, r3
/* 813F5B7C | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F5B80 | 4B F3 A7 B5 */	bl memset
/* 813F5B84 | 80 9E 09 34 */	lwz r4, 0x934(r30)
/* 813F5B88 | 7F C3 F3 78 */	mr r3, r30
/* 813F5B8C | 3B E0 00 02 */	li r31, 0x2
/* 813F5B90 | 38 84 05 B6 */	addi r4, r4, 0x5b6
/* 813F5B94 | 48 00 00 69 */	bl checkTextNum__Q33ipl5scene7SettingFPCc
/* 813F5B98 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813F5B9C | 28 00 00 03 */	cmplwi r0, 0x3
/* 813F5BA0 | 40 82 00 30 */	bne .L_813F5BD0
/* 813F5BA4 | 80 9E 09 34 */	lwz r4, 0x934(r30)
/* 813F5BA8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F5BAC | 38 84 05 B6 */	addi r4, r4, 0x5b6
/* 813F5BB0 | 4B F6 E6 A5 */	bl UTF8ToANSI__Q33ipl7utility13CharacterCodeFPUcPCc
/* 813F5BB4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F5BB8 | 48 00 61 C9 */	bl judgeMaster__Q33ipl8parental8ParentalFPCc
/* 813F5BBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F5BC0 | 41 82 00 08 */	beq .L_813F5BC8
/* 813F5BC4 | 3B E0 00 01 */	li r31, 0x1
.L_813F5BC8:
/* 813F5BC8 | 7F E3 FB 78 */	mr r3, r31
/* 813F5BCC | 4B F7 B5 A9 */	bl setFuncResult__Q23www10wiisettingFUc
.L_813F5BD0:
/* 813F5BD0 | 80 7E 09 34 */	lwz r3, 0x934(r30)
/* 813F5BD4 | 38 80 00 00 */	li r4, 0x0
/* 813F5BD8 | 38 A0 00 06 */	li r5, 0x6
/* 813F5BDC | 38 63 05 B6 */	addi r3, r3, 0x5b6
/* 813F5BE0 | 4B F3 A7 55 */	bl memset
/* 813F5BE4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813F5BE8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813F5BEC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 813F5BF0 | 7C 08 03 A6 */	mtlr r0
/* 813F5BF4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813F5BF8 | 4E 80 00 20 */	blr
.endfn setMasterKey__Q33ipl5scene7SettingFv

# .text:0x5488 | 0x813F5BFC | size: 0x188
# ipl::scene::Setting::checkTextNum(const char*)
.fn checkTextNum__Q33ipl5scene7SettingFPCc, global
/* 813F5BFC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813F5C00 | 7C 08 02 A6 */	mflr r0
/* 813F5C04 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813F5C08 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F5C0C | 48 20 38 B9 */	bl _savegpr_28
/* 813F5C10 | 80 A3 09 24 */	lwz r5, 0x924(r3)
/* 813F5C14 | 7C 7C 1B 78 */	mr r28, r3
/* 813F5C18 | 3B E0 00 04 */	li r31, 0x4
/* 813F5C1C | 3B C0 00 00 */	li r30, 0x0
/* 813F5C20 | 88 05 00 36 */	lbz r0, 0x36(r5)
/* 813F5C24 | 2C 00 00 0D */	cmpwi r0, 0xd
/* 813F5C28 | 40 80 00 1C */	bge .L_813F5C44
/* 813F5C2C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813F5C30 | 41 82 00 24 */	beq .L_813F5C54
/* 813F5C34 | 41 80 01 00 */	blt .L_813F5D34
/* 813F5C38 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 813F5C3C | 40 80 00 50 */	bge .L_813F5C8C
/* 813F5C40 | 48 00 00 F4 */	b .L_813F5D34
.L_813F5C44:
/* 813F5C44 | 2C 00 00 0F */	cmpwi r0, 0xf
/* 813F5C48 | 41 82 00 D4 */	beq .L_813F5D1C
/* 813F5C4C | 40 80 00 E8 */	bge .L_813F5D34
/* 813F5C50 | 48 00 00 58 */	b .L_813F5CA8
.L_813F5C54:
/* 813F5C54 | 38 63 09 38 */	addi r3, r3, 0x938
/* 813F5C58 | 48 21 2A 55 */	bl fn_816086AC
/* 813F5C5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F5C60 | 41 82 00 24 */	beq .L_813F5C84
/* 813F5C64 | 7F 83 E3 78 */	mr r3, r28
/* 813F5C68 | 48 00 01 1D */	bl checkSpace__Q33ipl5scene7SettingFv
/* 813F5C6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F5C70 | 41 82 00 0C */	beq .L_813F5C7C
/* 813F5C74 | 3B E0 00 03 */	li r31, 0x3
/* 813F5C78 | 48 00 00 BC */	b .L_813F5D34
.L_813F5C7C:
/* 813F5C7C | 3B C0 01 C1 */	li r30, 0x1c1
/* 813F5C80 | 48 00 00 B4 */	b .L_813F5D34
.L_813F5C84:
/* 813F5C84 | 3B C0 01 C0 */	li r30, 0x1c0
/* 813F5C88 | 48 00 00 AC */	b .L_813F5D34
.L_813F5C8C:
/* 813F5C8C | 7C 83 23 78 */	mr r3, r4
/* 813F5C90 | 48 20 32 6D */	bl strlen
/* 813F5C94 | 28 03 00 04 */	cmplwi r3, 0x4
/* 813F5C98 | 40 82 00 08 */	bne .L_813F5CA0
/* 813F5C9C | 3B E0 00 03 */	li r31, 0x3
.L_813F5CA0:
/* 813F5CA0 | 3B C0 01 BA */	li r30, 0x1ba
/* 813F5CA4 | 48 00 00 90 */	b .L_813F5D34
.L_813F5CA8:
/* 813F5CA8 | 4B F3 FD E5 */	bl getRegion__Q23ipl6SystemFv
/* 813F5CAC | 2C 03 00 06 */	cmpwi r3, 0x6
/* 813F5CB0 | 41 82 00 28 */	beq .L_813F5CD8
/* 813F5CB4 | 40 80 00 10 */	bge .L_813F5CC4
/* 813F5CB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F5CBC | 41 82 00 14 */	beq .L_813F5CD0
/* 813F5CC0 | 48 00 00 20 */	b .L_813F5CE0
.L_813F5CC4:
/* 813F5CC4 | 2C 03 00 0B */	cmpwi r3, 0xb
/* 813F5CC8 | 41 82 00 08 */	beq .L_813F5CD0
/* 813F5CCC | 48 00 00 14 */	b .L_813F5CE0
.L_813F5CD0:
/* 813F5CD0 | 3B A0 00 03 */	li r29, 0x3
/* 813F5CD4 | 48 00 00 10 */	b .L_813F5CE4
.L_813F5CD8:
/* 813F5CD8 | 3B A0 00 02 */	li r29, 0x2
/* 813F5CDC | 48 00 00 08 */	b .L_813F5CE4
.L_813F5CE0:
/* 813F5CE0 | 3B A0 00 06 */	li r29, 0x6
.L_813F5CE4:
/* 813F5CE4 | 38 7C 09 38 */	addi r3, r28, 0x938
/* 813F5CE8 | 48 21 29 C5 */	bl fn_816086AC
/* 813F5CEC | 7C 03 E8 40 */	cmplw r3, r29
/* 813F5CF0 | 41 80 00 24 */	blt .L_813F5D14
/* 813F5CF4 | 7F 83 E3 78 */	mr r3, r28
/* 813F5CF8 | 48 00 00 8D */	bl checkSpace__Q33ipl5scene7SettingFv
/* 813F5CFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F5D00 | 41 82 00 0C */	beq .L_813F5D0C
/* 813F5D04 | 3B E0 00 03 */	li r31, 0x3
/* 813F5D08 | 48 00 00 2C */	b .L_813F5D34
.L_813F5D0C:
/* 813F5D0C | 3B C0 01 C1 */	li r30, 0x1c1
/* 813F5D10 | 48 00 00 24 */	b .L_813F5D34
.L_813F5D14:
/* 813F5D14 | 3B C0 01 BB */	li r30, 0x1bb
/* 813F5D18 | 48 00 00 1C */	b .L_813F5D34
.L_813F5D1C:
/* 813F5D1C | 7C 83 23 78 */	mr r3, r4
/* 813F5D20 | 48 20 31 DD */	bl strlen
/* 813F5D24 | 28 03 00 05 */	cmplwi r3, 0x5
/* 813F5D28 | 40 82 00 08 */	bne .L_813F5D30
/* 813F5D2C | 3B E0 00 03 */	li r31, 0x3
.L_813F5D30:
/* 813F5D30 | 3B C0 01 BC */	li r30, 0x1bc
.L_813F5D34:
/* 813F5D34 | 7F E3 FB 78 */	mr r3, r31
/* 813F5D38 | 4B F7 B4 3D */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F5D3C | 28 1F 00 04 */	cmplwi r31, 0x4
/* 813F5D40 | 40 82 00 28 */	bne .L_813F5D68
/* 813F5D44 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F5D48 | 7F C4 F3 78 */	mr r4, r30
/* 813F5D4C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F5D50 | 38 A0 00 B4 */	li r5, 0xb4
/* 813F5D54 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813F5D58 | 38 C0 00 00 */	li r6, 0x0
/* 813F5D5C | 4B F5 06 F1 */	bl callBtn0__Q23ipl12DialogWindowFUlUlb
/* 813F5D60 | 38 00 00 02 */	li r0, 0x2
/* 813F5D64 | 90 1C 00 74 */	stw r0, 0x74(r28)
.L_813F5D68:
/* 813F5D68 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F5D6C | 7F E3 FB 78 */	mr r3, r31
/* 813F5D70 | 48 20 37 A1 */	bl _restgpr_28
/* 813F5D74 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813F5D78 | 7C 08 03 A6 */	mtlr r0
/* 813F5D7C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813F5D80 | 4E 80 00 20 */	blr
.endfn checkTextNum__Q33ipl5scene7SettingFPCc

# .text:0x5610 | 0x813F5D84 | size: 0x3C
# ipl::scene::Setting::checkSpace()
.fn checkSpace__Q33ipl5scene7SettingFv, global
/* 813F5D84 | 38 80 00 00 */	li r4, 0x0
/* 813F5D88 | 48 00 00 20 */	b .L_813F5DA8
.L_813F5D8C:
/* 813F5D8C | 28 00 00 20 */	cmplwi r0, 0x20
/* 813F5D90 | 41 82 00 14 */	beq .L_813F5DA4
/* 813F5D94 | 28 00 30 00 */	cmplwi r0, 0x3000
/* 813F5D98 | 41 82 00 0C */	beq .L_813F5DA4
/* 813F5D9C | 38 60 00 01 */	li r3, 0x1
/* 813F5DA0 | 4E 80 00 20 */	blr
.L_813F5DA4:
/* 813F5DA4 | 38 84 00 02 */	addi r4, r4, 0x2
.L_813F5DA8:
/* 813F5DA8 | 7C A3 22 14 */	add r5, r3, r4
/* 813F5DAC | A0 05 09 38 */	lhz r0, 0x938(r5)
/* 813F5DB0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F5DB4 | 40 82 FF D8 */	bne .L_813F5D8C
/* 813F5DB8 | 38 60 00 00 */	li r3, 0x0
/* 813F5DBC | 4E 80 00 20 */	blr
.endfn checkSpace__Q33ipl5scene7SettingFv

# .text:0x564C | 0x813F5DC0 | size: 0x5C
# ipl::scene::Setting::convertIP(char*, const unsigned char*)
.fn convertIP__Q33ipl5scene7SettingFPcPCUc, global
/* 813F5DC0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813F5DC4 | 7C 08 02 A6 */	mflr r0
/* 813F5DC8 | 7C A3 2B 78 */	mr r3, r5
/* 813F5DCC | 88 A5 00 00 */	lbz r5, 0x0(r5)
/* 813F5DD0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813F5DD4 | 3D 20 81 65 */	lis r9, lbl_816574F1@ha
/* 813F5DD8 | 88 C3 00 01 */	lbz r6, 0x1(r3)
/* 813F5DDC | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 813F5DE0 | 7C 9F 23 78 */	mr r31, r4
/* 813F5DE4 | 88 E3 00 02 */	lbz r7, 0x2(r3)
/* 813F5DE8 | 38 89 74 F1 */	addi r4, r9, lbl_816574F1@l
/* 813F5DEC | 89 03 00 03 */	lbz r8, 0x3(r3)
/* 813F5DF0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F5DF4 | 4C C6 31 82 */	crclr cr1eq
/* 813F5DF8 | 48 20 AC 89 */	bl sprintf
/* 813F5DFC | 7F E3 FB 78 */	mr r3, r31
/* 813F5E00 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813F5E04 | 4B F6 E3 2D */	bl ANSIToUTF8__Q33ipl7utility13CharacterCodeFPcPCUc
/* 813F5E08 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813F5E0C | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 813F5E10 | 7C 08 03 A6 */	mtlr r0
/* 813F5E14 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813F5E18 | 4E 80 00 20 */	blr
.endfn convertIP__Q33ipl5scene7SettingFPcPCUc

# .text:0x56A8 | 0x813F5E1C | size: 0x124
# ipl::scene::Setting::convertRevIP(unsigned char*, const char*)
.fn convertRevIP__Q33ipl5scene7SettingFPUcPCc, global
/* 813F5E1C | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813F5E20 | 7C 08 02 A6 */	mflr r0
/* 813F5E24 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813F5E28 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813F5E2C | 48 20 36 91 */	bl _savegpr_26
/* 813F5E30 | 7C 9A 23 78 */	mr r26, r4
/* 813F5E34 | 7C BC 2B 78 */	mr r28, r5
/* 813F5E38 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F5E3C | 3B 60 00 00 */	li r27, 0x0
/* 813F5E40 | 38 80 00 00 */	li r4, 0x0
/* 813F5E44 | 38 A0 00 14 */	li r5, 0x14
/* 813F5E48 | 4B F3 A4 ED */	bl memset
/* 813F5E4C | 7F 84 E3 78 */	mr r4, r28
/* 813F5E50 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F5E54 | 4B F6 E4 01 */	bl UTF8ToANSI__Q33ipl7utility13CharacterCodeFPUcPCc
/* 813F5E58 | 3B A1 00 08 */	addi r29, r1, 0x8
/* 813F5E5C | 7F 5F D3 78 */	mr r31, r26
/* 813F5E60 | 3B 80 00 00 */	li r28, 0x0
/* 813F5E64 | 38 80 00 00 */	li r4, 0x0
/* 813F5E68 | 3B C0 00 00 */	li r30, 0x0
/* 813F5E6C | 48 00 00 B4 */	b .L_813F5F20
.L_813F5E70:
/* 813F5E70 | 7C 1D E0 AE */	lbzx r0, r29, r28
/* 813F5E74 | 2C 00 00 2E */	cmpwi r0, 0x2e
/* 813F5E78 | 41 82 00 0C */	beq .L_813F5E84
/* 813F5E7C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F5E80 | 40 82 00 9C */	bne .L_813F5F1C
.L_813F5E84:
/* 813F5E84 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F5E88 | 40 82 00 08 */	bne .L_813F5E90
/* 813F5E8C | 3B 80 00 10 */	li r28, 0x10
.L_813F5E90:
/* 813F5E90 | 7F A3 EB 78 */	mr r3, r29
/* 813F5E94 | 7F DD E1 AE */	stbx r30, r29, r28
/* 813F5E98 | 7C 63 22 14 */	add r3, r3, r4
/* 813F5E9C | 48 20 EB 15 */	bl atoi
/* 813F5EA0 | 28 03 00 FF */	cmplwi r3, 0xff
/* 813F5EA4 | 40 81 00 08 */	ble .L_813F5EAC
/* 813F5EA8 | 38 60 00 FF */	li r3, 0xff
.L_813F5EAC:
/* 813F5EAC | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 813F5EB0 | 40 82 00 0C */	bne .L_813F5EBC
/* 813F5EB4 | 98 7F 00 00 */	stb r3, 0x0(r31)
/* 813F5EB8 | 48 00 00 18 */	b .L_813F5ED0
.L_813F5EBC:
/* 813F5EBC | 88 9A 00 02 */	lbz r4, 0x2(r26)
/* 813F5EC0 | 88 1A 00 03 */	lbz r0, 0x3(r26)
/* 813F5EC4 | 98 9A 00 01 */	stb r4, 0x1(r26)
/* 813F5EC8 | 98 1A 00 02 */	stb r0, 0x2(r26)
/* 813F5ECC | 98 7A 00 03 */	stb r3, 0x3(r26)
.L_813F5ED0:
/* 813F5ED0 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 813F5ED4 | 38 9C 00 01 */	addi r4, r28, 0x1
/* 813F5ED8 | 2C 1B 00 03 */	cmpwi r27, 0x3
/* 813F5EDC | 3B FF 00 01 */	addi r31, r31, 0x1
/* 813F5EE0 | 40 82 00 3C */	bne .L_813F5F1C
/* 813F5EE4 | 2C 1C 00 10 */	cmpwi r28, 0x10
/* 813F5EE8 | 41 82 00 34 */	beq .L_813F5F1C
/* 813F5EEC | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F5EF0 | 7C 63 22 14 */	add r3, r3, r4
/* 813F5EF4 | 48 20 EA BD */	bl atoi
/* 813F5EF8 | 28 03 00 FF */	cmplwi r3, 0xff
/* 813F5EFC | 40 81 00 08 */	ble .L_813F5F04
/* 813F5F00 | 38 60 00 FF */	li r3, 0xff
.L_813F5F04:
/* 813F5F04 | 88 9A 00 02 */	lbz r4, 0x2(r26)
/* 813F5F08 | 88 1A 00 03 */	lbz r0, 0x3(r26)
/* 813F5F0C | 98 9A 00 01 */	stb r4, 0x1(r26)
/* 813F5F10 | 98 1A 00 02 */	stb r0, 0x2(r26)
/* 813F5F14 | 98 7A 00 03 */	stb r3, 0x3(r26)
/* 813F5F18 | 48 00 00 10 */	b .L_813F5F28
.L_813F5F1C:
/* 813F5F1C | 3B 9C 00 01 */	addi r28, r28, 0x1
.L_813F5F20:
/* 813F5F20 | 2C 1C 00 10 */	cmpwi r28, 0x10
/* 813F5F24 | 41 80 FF 4C */	blt .L_813F5E70
.L_813F5F28:
/* 813F5F28 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813F5F2C | 48 20 35 DD */	bl _restgpr_26
/* 813F5F30 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 813F5F34 | 7C 08 03 A6 */	mtlr r0
/* 813F5F38 | 38 21 00 40 */	addi r1, r1, 0x40
/* 813F5F3C | 4E 80 00 20 */	blr
.endfn convertRevIP__Q33ipl5scene7SettingFPUcPCc

# .text:0x57CC | 0x813F5F40 | size: 0x94
# ipl::scene::Setting::adjustSecA(wchar_t*)
.fn adjustSecA__Q33ipl5scene7SettingFPw, global
/* 813F5F40 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813F5F44 | 7C 08 02 A6 */	mflr r0
/* 813F5F48 | 38 A0 00 00 */	li r5, 0x0
/* 813F5F4C | 38 C0 00 00 */	li r6, 0x0
/* 813F5F50 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813F5F54 | 93 E1 00 3C */	stw r31, 0x3c(r1)
/* 813F5F58 | 7C 9F 23 78 */	mr r31, r4
/* 813F5F5C | 48 00 00 18 */	b .L_813F5F74
.L_813F5F60:
/* 813F5F60 | 28 00 00 7F */	cmplwi r0, 0x7f
/* 813F5F64 | 40 81 00 0C */	ble .L_813F5F70
/* 813F5F68 | 38 C0 00 01 */	li r6, 0x1
/* 813F5F6C | 48 00 00 14 */	b .L_813F5F80
.L_813F5F70:
/* 813F5F70 | 38 A5 00 02 */	addi r5, r5, 0x2
.L_813F5F74:
/* 813F5F74 | 7C 04 2A 2E */	lhzx r0, r4, r5
/* 813F5F78 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F5F7C | 40 82 FF E4 */	bne .L_813F5F60
.L_813F5F80:
/* 813F5F80 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 813F5F84 | 41 82 00 3C */	beq .L_813F5FC0
/* 813F5F88 | 38 63 09 38 */	addi r3, r3, 0x938
/* 813F5F8C | 48 21 27 21 */	bl fn_816086AC
/* 813F5F90 | 28 03 00 10 */	cmplwi r3, 0x10
/* 813F5F94 | 40 81 00 2C */	ble .L_813F5FC0
/* 813F5F98 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F5F9C | 38 9F 00 20 */	addi r4, r31, 0x20
/* 813F5FA0 | 38 A0 00 22 */	li r5, 0x22
/* 813F5FA4 | 4B F3 A2 8D */	bl memcpy
/* 813F5FA8 | 38 7F 00 22 */	addi r3, r31, 0x22
/* 813F5FAC | 38 81 00 08 */	addi r4, r1, 0x8
/* 813F5FB0 | 38 A0 00 22 */	li r5, 0x22
/* 813F5FB4 | 4B F3 A2 7D */	bl memcpy
/* 813F5FB8 | 38 00 00 0A */	li r0, 0xa
/* 813F5FBC | B0 1F 00 20 */	sth r0, 0x20(r31)
.L_813F5FC0:
/* 813F5FC0 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 813F5FC4 | 83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 813F5FC8 | 7C 08 03 A6 */	mtlr r0
/* 813F5FCC | 38 21 00 40 */	addi r1, r1, 0x40
/* 813F5FD0 | 4E 80 00 20 */	blr
.endfn adjustSecA__Q33ipl5scene7SettingFPw

# .text:0x5860 | 0x813F5FD4 | size: 0x90
# ipl::scene::Setting::reAdjustSecA()
.fn reAdjustSecA__Q33ipl5scene7SettingFv, global
/* 813F5FD4 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813F5FD8 | 7C 08 02 A6 */	mflr r0
/* 813F5FDC | 38 80 00 00 */	li r4, 0x0
/* 813F5FE0 | 38 C0 00 00 */	li r6, 0x0
/* 813F5FE4 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813F5FE8 | 93 E1 00 3C */	stw r31, 0x3c(r1)
/* 813F5FEC | 7C 7F 1B 78 */	mr r31, r3
/* 813F5FF0 | 48 00 00 18 */	b .L_813F6008
.L_813F5FF4:
/* 813F5FF4 | 28 00 00 7F */	cmplwi r0, 0x7f
/* 813F5FF8 | 40 81 00 0C */	ble .L_813F6004
/* 813F5FFC | 38 C0 00 01 */	li r6, 0x1
/* 813F6000 | 48 00 00 18 */	b .L_813F6018
.L_813F6004:
/* 813F6004 | 38 84 00 02 */	addi r4, r4, 0x2
.L_813F6008:
/* 813F6008 | 7C A3 22 14 */	add r5, r3, r4
/* 813F600C | A0 05 09 38 */	lhz r0, 0x938(r5)
/* 813F6010 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F6014 | 40 82 FF E0 */	bne .L_813F5FF4
.L_813F6018:
/* 813F6018 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 813F601C | 41 82 00 34 */	beq .L_813F6050
/* 813F6020 | 38 63 09 38 */	addi r3, r3, 0x938
/* 813F6024 | 48 21 26 89 */	bl fn_816086AC
/* 813F6028 | 28 03 00 10 */	cmplwi r3, 0x10
/* 813F602C | 40 81 00 24 */	ble .L_813F6050
/* 813F6030 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F6034 | 38 9F 09 5A */	addi r4, r31, 0x95a
/* 813F6038 | 38 A0 00 22 */	li r5, 0x22
/* 813F603C | 4B F3 A1 F5 */	bl memcpy
/* 813F6040 | 38 7F 09 58 */	addi r3, r31, 0x958
/* 813F6044 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813F6048 | 38 A0 00 22 */	li r5, 0x22
/* 813F604C | 4B F3 A1 E5 */	bl memcpy
.L_813F6050:
/* 813F6050 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 813F6054 | 83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 813F6058 | 7C 08 03 A6 */	mtlr r0
/* 813F605C | 38 21 00 40 */	addi r1, r1, 0x40
/* 813F6060 | 4E 80 00 20 */	blr
.endfn reAdjustSecA__Q33ipl5scene7SettingFv

# .text:0x58F0 | 0x813F6064 | size: 0x4A8
# ipl::scene::Setting::setDefaultBackString()
.fn setDefaultBackString__Q33ipl5scene7SettingFv, global
/* 813F6064 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F6068 | 7C 08 02 A6 */	mflr r0
/* 813F606C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F6070 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F6074 | 80 63 09 24 */	lwz r3, 0x924(r3)
/* 813F6078 | 88 03 00 11 */	lbz r0, 0x11(r3)
/* 813F607C | 28 00 00 16 */	cmplwi r0, 0x16
/* 813F6080 | 41 81 04 78 */	bgt .L_813F64F8
/* 813F6084 | 3C 60 81 65 */	lis r3, jumptable_81657508@ha
/* 813F6088 | 54 00 10 3A */	slwi r0, r0, 2
/* 813F608C | 38 63 75 08 */	addi r3, r3, jumptable_81657508@l
/* 813F6090 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813F6094 | 7C 69 03 A6 */	mtctr r3
/* 813F6098 | 4E 80 04 20 */	bctr
.L_813F609C:
/* 813F609C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813F60A0 | 38 80 01 5C */	li r4, 0x15c
/* 813F60A4 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813F60A8 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813F60AC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813F60B0 | 4B F4 87 0D */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813F60B4 | 80 BF 00 90 */	lwz r5, 0x90(r31)
/* 813F60B8 | 7C 64 1B 78 */	mr r4, r3
/* 813F60BC | 80 65 00 04 */	lwz r3, 0x4(r5)
/* 813F60C0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F60C4 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 813F60C8 | 7D 89 03 A6 */	mtctr r12
/* 813F60CC | 4E 80 04 21 */	bctrl
/* 813F60D0 | 48 00 04 28 */	b .L_813F64F8
.L_813F60D4:
/* 813F60D4 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813F60D8 | 38 80 01 53 */	li r4, 0x153
/* 813F60DC | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813F60E0 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813F60E4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813F60E8 | 4B F4 86 D5 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813F60EC | 80 BF 00 90 */	lwz r5, 0x90(r31)
/* 813F60F0 | 7C 64 1B 78 */	mr r4, r3
/* 813F60F4 | 80 65 00 04 */	lwz r3, 0x4(r5)
/* 813F60F8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F60FC | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 813F6100 | 7D 89 03 A6 */	mtctr r12
/* 813F6104 | 4E 80 04 21 */	bctrl
/* 813F6108 | 48 00 03 F0 */	b .L_813F64F8
.L_813F610C:
/* 813F610C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813F6110 | 38 80 01 52 */	li r4, 0x152
/* 813F6114 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813F6118 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813F611C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813F6120 | 4B F4 86 9D */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813F6124 | 80 BF 00 90 */	lwz r5, 0x90(r31)
/* 813F6128 | 7C 64 1B 78 */	mr r4, r3
/* 813F612C | 80 65 00 04 */	lwz r3, 0x4(r5)
/* 813F6130 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F6134 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 813F6138 | 7D 89 03 A6 */	mtctr r12
/* 813F613C | 4E 80 04 21 */	bctrl
/* 813F6140 | 48 00 03 B8 */	b .L_813F64F8
.L_813F6144:
/* 813F6144 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813F6148 | 38 80 01 4D */	li r4, 0x14d
/* 813F614C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813F6150 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813F6154 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813F6158 | 4B F4 86 65 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813F615C | 80 BF 00 90 */	lwz r5, 0x90(r31)
/* 813F6160 | 7C 64 1B 78 */	mr r4, r3
/* 813F6164 | 80 65 00 04 */	lwz r3, 0x4(r5)
/* 813F6168 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F616C | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 813F6170 | 7D 89 03 A6 */	mtctr r12
/* 813F6174 | 4E 80 04 21 */	bctrl
/* 813F6178 | 48 00 03 80 */	b .L_813F64F8
.L_813F617C:
/* 813F617C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813F6180 | 38 80 01 50 */	li r4, 0x150
/* 813F6184 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813F6188 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813F618C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813F6190 | 4B F4 86 2D */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813F6194 | 80 BF 00 90 */	lwz r5, 0x90(r31)
/* 813F6198 | 7C 64 1B 78 */	mr r4, r3
/* 813F619C | 80 65 00 04 */	lwz r3, 0x4(r5)
/* 813F61A0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F61A4 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 813F61A8 | 7D 89 03 A6 */	mtctr r12
/* 813F61AC | 4E 80 04 21 */	bctrl
/* 813F61B0 | 48 00 03 48 */	b .L_813F64F8
.L_813F61B4:
/* 813F61B4 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813F61B8 | 38 80 01 51 */	li r4, 0x151
/* 813F61BC | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813F61C0 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813F61C4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813F61C8 | 4B F4 85 F5 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813F61CC | 80 BF 00 90 */	lwz r5, 0x90(r31)
/* 813F61D0 | 7C 64 1B 78 */	mr r4, r3
/* 813F61D4 | 80 65 00 04 */	lwz r3, 0x4(r5)
/* 813F61D8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F61DC | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 813F61E0 | 7D 89 03 A6 */	mtctr r12
/* 813F61E4 | 4E 80 04 21 */	bctrl
/* 813F61E8 | 48 00 03 10 */	b .L_813F64F8
.L_813F61EC:
/* 813F61EC | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813F61F0 | 38 80 01 4E */	li r4, 0x14e
/* 813F61F4 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813F61F8 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813F61FC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813F6200 | 4B F4 85 BD */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813F6204 | 80 BF 00 90 */	lwz r5, 0x90(r31)
/* 813F6208 | 7C 64 1B 78 */	mr r4, r3
/* 813F620C | 80 65 00 04 */	lwz r3, 0x4(r5)
/* 813F6210 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F6214 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 813F6218 | 7D 89 03 A6 */	mtctr r12
/* 813F621C | 4E 80 04 21 */	bctrl
/* 813F6220 | 48 00 02 D8 */	b .L_813F64F8
.L_813F6224:
/* 813F6224 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813F6228 | 38 80 01 4F */	li r4, 0x14f
/* 813F622C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813F6230 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813F6234 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813F6238 | 4B F4 85 85 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813F623C | 80 BF 00 90 */	lwz r5, 0x90(r31)
/* 813F6240 | 7C 64 1B 78 */	mr r4, r3
/* 813F6244 | 80 65 00 04 */	lwz r3, 0x4(r5)
/* 813F6248 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F624C | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 813F6250 | 7D 89 03 A6 */	mtctr r12
/* 813F6254 | 4E 80 04 21 */	bctrl
/* 813F6258 | 48 00 02 A0 */	b .L_813F64F8
.L_813F625C:
/* 813F625C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813F6260 | 38 80 01 54 */	li r4, 0x154
/* 813F6264 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813F6268 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813F626C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813F6270 | 4B F4 85 4D */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813F6274 | 80 BF 00 90 */	lwz r5, 0x90(r31)
/* 813F6278 | 7C 64 1B 78 */	mr r4, r3
/* 813F627C | 80 65 00 04 */	lwz r3, 0x4(r5)
/* 813F6280 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F6284 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 813F6288 | 7D 89 03 A6 */	mtctr r12
/* 813F628C | 4E 80 04 21 */	bctrl
/* 813F6290 | 48 00 02 68 */	b .L_813F64F8
.L_813F6294:
/* 813F6294 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813F6298 | 38 80 01 55 */	li r4, 0x155
/* 813F629C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813F62A0 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813F62A4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813F62A8 | 4B F4 85 15 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813F62AC | 80 BF 00 90 */	lwz r5, 0x90(r31)
/* 813F62B0 | 7C 64 1B 78 */	mr r4, r3
/* 813F62B4 | 80 65 00 04 */	lwz r3, 0x4(r5)
/* 813F62B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F62BC | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 813F62C0 | 7D 89 03 A6 */	mtctr r12
/* 813F62C4 | 4E 80 04 21 */	bctrl
/* 813F62C8 | 48 00 02 30 */	b .L_813F64F8
.L_813F62CC:
/* 813F62CC | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813F62D0 | 38 80 01 56 */	li r4, 0x156
/* 813F62D4 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813F62D8 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813F62DC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813F62E0 | 4B F4 84 DD */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813F62E4 | 80 BF 00 90 */	lwz r5, 0x90(r31)
/* 813F62E8 | 7C 64 1B 78 */	mr r4, r3
/* 813F62EC | 80 65 00 04 */	lwz r3, 0x4(r5)
/* 813F62F0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F62F4 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 813F62F8 | 7D 89 03 A6 */	mtctr r12
/* 813F62FC | 4E 80 04 21 */	bctrl
/* 813F6300 | 48 00 01 F8 */	b .L_813F64F8
.L_813F6304:
/* 813F6304 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813F6308 | 38 80 01 57 */	li r4, 0x157
/* 813F630C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813F6310 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813F6314 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813F6318 | 4B F4 84 A5 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813F631C | 80 BF 00 90 */	lwz r5, 0x90(r31)
/* 813F6320 | 7C 64 1B 78 */	mr r4, r3
/* 813F6324 | 80 65 00 04 */	lwz r3, 0x4(r5)
/* 813F6328 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F632C | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 813F6330 | 7D 89 03 A6 */	mtctr r12
/* 813F6334 | 4E 80 04 21 */	bctrl
/* 813F6338 | 48 00 01 C0 */	b .L_813F64F8
.L_813F633C:
/* 813F633C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813F6340 | 38 80 01 58 */	li r4, 0x158
/* 813F6344 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813F6348 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813F634C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813F6350 | 4B F4 84 6D */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813F6354 | 80 BF 00 90 */	lwz r5, 0x90(r31)
/* 813F6358 | 7C 64 1B 78 */	mr r4, r3
/* 813F635C | 80 65 00 04 */	lwz r3, 0x4(r5)
/* 813F6360 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F6364 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 813F6368 | 7D 89 03 A6 */	mtctr r12
/* 813F636C | 4E 80 04 21 */	bctrl
/* 813F6370 | 48 00 01 88 */	b .L_813F64F8
.L_813F6374:
/* 813F6374 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813F6378 | 38 80 01 59 */	li r4, 0x159
/* 813F637C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813F6380 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813F6384 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813F6388 | 4B F4 84 35 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813F638C | 80 BF 00 90 */	lwz r5, 0x90(r31)
/* 813F6390 | 7C 64 1B 78 */	mr r4, r3
/* 813F6394 | 80 65 00 04 */	lwz r3, 0x4(r5)
/* 813F6398 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F639C | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 813F63A0 | 7D 89 03 A6 */	mtctr r12
/* 813F63A4 | 4E 80 04 21 */	bctrl
/* 813F63A8 | 48 00 01 50 */	b .L_813F64F8
.L_813F63AC:
/* 813F63AC | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813F63B0 | 38 80 01 59 */	li r4, 0x159
/* 813F63B4 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813F63B8 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813F63BC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813F63C0 | 4B F4 83 FD */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813F63C4 | 80 BF 00 90 */	lwz r5, 0x90(r31)
/* 813F63C8 | 7C 64 1B 78 */	mr r4, r3
/* 813F63CC | 80 65 00 04 */	lwz r3, 0x4(r5)
/* 813F63D0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F63D4 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 813F63D8 | 7D 89 03 A6 */	mtctr r12
/* 813F63DC | 4E 80 04 21 */	bctrl
/* 813F63E0 | 48 00 01 18 */	b .L_813F64F8
.L_813F63E4:
/* 813F63E4 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813F63E8 | 38 80 01 59 */	li r4, 0x159
/* 813F63EC | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813F63F0 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813F63F4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813F63F8 | 4B F4 83 C5 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813F63FC | 80 BF 00 90 */	lwz r5, 0x90(r31)
/* 813F6400 | 7C 64 1B 78 */	mr r4, r3
/* 813F6404 | 80 65 00 04 */	lwz r3, 0x4(r5)
/* 813F6408 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F640C | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 813F6410 | 7D 89 03 A6 */	mtctr r12
/* 813F6414 | 4E 80 04 21 */	bctrl
/* 813F6418 | 48 00 00 E0 */	b .L_813F64F8
.L_813F641C:
/* 813F641C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813F6420 | 38 80 01 5A */	li r4, 0x15a
/* 813F6424 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813F6428 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813F642C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813F6430 | 4B F4 83 8D */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813F6434 | 80 BF 00 90 */	lwz r5, 0x90(r31)
/* 813F6438 | 7C 64 1B 78 */	mr r4, r3
/* 813F643C | 80 65 00 04 */	lwz r3, 0x4(r5)
/* 813F6440 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F6444 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 813F6448 | 7D 89 03 A6 */	mtctr r12
/* 813F644C | 4E 80 04 21 */	bctrl
/* 813F6450 | 48 00 00 A8 */	b .L_813F64F8
.L_813F6454:
/* 813F6454 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813F6458 | 38 80 01 5A */	li r4, 0x15a
/* 813F645C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813F6460 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813F6464 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813F6468 | 4B F4 83 55 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813F646C | 80 BF 00 90 */	lwz r5, 0x90(r31)
/* 813F6470 | 7C 64 1B 78 */	mr r4, r3
/* 813F6474 | 80 65 00 04 */	lwz r3, 0x4(r5)
/* 813F6478 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F647C | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 813F6480 | 7D 89 03 A6 */	mtctr r12
/* 813F6484 | 4E 80 04 21 */	bctrl
/* 813F6488 | 48 00 00 70 */	b .L_813F64F8
.L_813F648C:
/* 813F648C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813F6490 | 38 80 01 5B */	li r4, 0x15b
/* 813F6494 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813F6498 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813F649C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813F64A0 | 4B F4 83 1D */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813F64A4 | 80 BF 00 90 */	lwz r5, 0x90(r31)
/* 813F64A8 | 7C 64 1B 78 */	mr r4, r3
/* 813F64AC | 80 65 00 04 */	lwz r3, 0x4(r5)
/* 813F64B0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F64B4 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 813F64B8 | 7D 89 03 A6 */	mtctr r12
/* 813F64BC | 4E 80 04 21 */	bctrl
/* 813F64C0 | 48 00 00 38 */	b .L_813F64F8
.L_813F64C4:
/* 813F64C4 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813F64C8 | 38 80 01 53 */	li r4, 0x153
/* 813F64CC | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813F64D0 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 813F64D4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813F64D8 | 4B F4 82 E5 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813F64DC | 80 BF 00 90 */	lwz r5, 0x90(r31)
/* 813F64E0 | 7C 64 1B 78 */	mr r4, r3
/* 813F64E4 | 80 65 00 04 */	lwz r3, 0x4(r5)
/* 813F64E8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F64EC | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 813F64F0 | 7D 89 03 A6 */	mtctr r12
/* 813F64F4 | 4E 80 04 21 */	bctrl
.L_813F64F8:
/* 813F64F8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F64FC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F6500 | 7C 08 03 A6 */	mtlr r0
/* 813F6504 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F6508 | 4E 80 00 20 */	blr
.endfn setDefaultBackString__Q33ipl5scene7SettingFv

# .text:0x5D98 | 0x813F650C | size: 0x10
# ipl::scene::Setting::checkInputString(const wchar_t*)
.fn checkInputString__Q33ipl5scene7SettingFPCw, global
/* 813F650C | A0 04 00 00 */	lhz r0, 0x0(r4)
/* 813F6510 | 7C 00 00 34 */	cntlzw r0, r0
/* 813F6514 | 54 03 D9 7E */	srwi r3, r0, 5
/* 813F6518 | 4E 80 00 20 */	blr
.endfn checkInputString__Q33ipl5scene7SettingFPCw

# .text:0x5DA8 | 0x813F651C | size: 0x98
# ipl::scene::Setting::checkIPString(const wchar_t*)
.fn checkIPString__Q33ipl5scene7SettingFPCw, global
/* 813F651C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813F6520 | 7C 08 02 A6 */	mflr r0
/* 813F6524 | 3C A0 81 61 */	lis r5, lbl_81610B80@ha
/* 813F6528 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813F652C | 38 00 00 08 */	li r0, 0x8
/* 813F6530 | 38 A5 0B 80 */	addi r5, r5, lbl_81610B80@l
/* 813F6534 | 38 C1 00 06 */	addi r6, r1, 0x6
/* 813F6538 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 813F653C | 7C 9F 23 78 */	mr r31, r4
/* 813F6540 | 38 85 FF FE */	subi r4, r5, 0x2
/* 813F6544 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 813F6548 | 7C 7E 1B 78 */	mr r30, r3
/* 813F654C | 7C 09 03 A6 */	mtctr r0
.L_813F6550:
/* 813F6550 | A0 64 00 02 */	lhz r3, 0x2(r4)
/* 813F6554 | A4 04 00 04 */	lhzu r0, 0x4(r4)
/* 813F6558 | B0 66 00 02 */	sth r3, 0x2(r6)
/* 813F655C | B4 06 00 04 */	sthu r0, 0x4(r6)
/* 813F6560 | 42 00 FF F0 */	bdnz .L_813F6550
/* 813F6564 | 7F E3 FB 78 */	mr r3, r31
/* 813F6568 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813F656C | 38 A0 00 20 */	li r5, 0x20
/* 813F6570 | 48 20 7C 65 */	bl memcmp
/* 813F6574 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F6578 | 41 82 00 18 */	beq .L_813F6590
/* 813F657C | 7F C3 F3 78 */	mr r3, r30
/* 813F6580 | 7F E4 FB 78 */	mr r4, r31
/* 813F6584 | 4B FF FF 89 */	bl checkInputString__Q33ipl5scene7SettingFPCw
/* 813F6588 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F658C | 41 82 00 0C */	beq .L_813F6598
.L_813F6590:
/* 813F6590 | 38 60 00 01 */	li r3, 0x1
/* 813F6594 | 48 00 00 08 */	b .L_813F659C
.L_813F6598:
/* 813F6598 | 38 60 00 00 */	li r3, 0x0
.L_813F659C:
/* 813F659C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813F65A0 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 813F65A4 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 813F65A8 | 7C 08 03 A6 */	mtlr r0
/* 813F65AC | 38 21 00 30 */	addi r1, r1, 0x30
/* 813F65B0 | 4E 80 00 20 */	blr
.endfn checkIPString__Q33ipl5scene7SettingFPCw

# .text:0x5E40 | 0x813F65B4 | size: 0xE0
# ipl::scene::Setting::calcSafeMode()
.fn calcSafeMode__Q33ipl5scene7SettingFv, global
/* 813F65B4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F65B8 | 7C 08 02 A6 */	mflr r0
/* 813F65BC | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813F65C0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F65C4 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813F65C8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F65CC | 7C 7F 1B 78 */	mr r31, r3
/* 813F65D0 | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 813F65D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F65D8 | 41 82 00 0C */	beq .L_813F65E4
/* 813F65DC | 38 00 00 00 */	li r0, 0x0
/* 813F65E0 | 48 00 00 08 */	b .L_813F65E8
.L_813F65E4:
/* 813F65E4 | 80 04 00 8C */	lwz r0, 0x8c(r4)
.L_813F65E8:
/* 813F65E8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F65EC | 41 82 00 0C */	beq .L_813F65F8
/* 813F65F0 | 38 60 00 01 */	li r3, 0x1
/* 813F65F4 | 48 00 00 8C */	b .L_813F6680
.L_813F65F8:
/* 813F65F8 | 80 03 00 94 */	lwz r0, 0x94(r3)
/* 813F65FC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813F6600 | 41 82 00 50 */	beq .L_813F6650
/* 813F6604 | 40 80 00 78 */	bge .L_813F667C
/* 813F6608 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F660C | 40 80 00 08 */	bge .L_813F6614
/* 813F6610 | 48 00 00 6C */	b .L_813F667C
.L_813F6614:
/* 813F6614 | 7F E3 FB 78 */	mr r3, r31
/* 813F6618 | 4B FF A2 F9 */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
/* 813F661C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F6620 | 38 80 00 21 */	li r4, 0x21
/* 813F6624 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F6628 | 38 A0 00 2E */	li r5, 0x2e
/* 813F662C | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813F6630 | 4B F5 00 C9 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 813F6634 | 38 60 00 02 */	li r3, 0x2
/* 813F6638 | 4B F7 AB 3D */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F663C | 38 60 00 11 */	li r3, 0x11
/* 813F6640 | 38 00 00 01 */	li r0, 0x1
/* 813F6644 | 90 7F 00 74 */	stw r3, 0x74(r31)
/* 813F6648 | 90 1F 00 94 */	stw r0, 0x94(r31)
/* 813F664C | 48 00 00 30 */	b .L_813F667C
.L_813F6650:
/* 813F6650 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813F6654 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813F6658 | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 813F665C | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 813F6660 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F6664 | 41 80 00 18 */	blt .L_813F667C
/* 813F6668 | 38 00 00 00 */	li r0, 0x0
/* 813F666C | 38 80 00 01 */	li r4, 0x1
/* 813F6670 | 90 83 0B 9C */	stw r4, 0xb9c(r3)
/* 813F6674 | 90 03 00 74 */	stw r0, 0x74(r3)
/* 813F6678 | 90 03 00 94 */	stw r0, 0x94(r3)
.L_813F667C:
/* 813F667C | 38 60 00 00 */	li r3, 0x0
.L_813F6680:
/* 813F6680 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F6684 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F6688 | 7C 08 03 A6 */	mtlr r0
/* 813F668C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F6690 | 4E 80 00 20 */	blr
.endfn calcSafeMode__Q33ipl5scene7SettingFv

# .text:0x5F20 | 0x813F6694 | size: 0x1C
# ipl::scene::Setting::initAP()
.fn initAP__Q33ipl5scene7SettingFv, global
/* 813F6694 | 38 A0 00 01 */	li r5, 0x1
/* 813F6698 | 38 80 00 00 */	li r4, 0x0
/* 813F669C | 38 00 FF FF */	li r0, -0x1
/* 813F66A0 | 90 A3 00 78 */	stw r5, 0x78(r3)
/* 813F66A4 | 90 83 09 14 */	stw r4, 0x914(r3)
/* 813F66A8 | 90 03 09 18 */	stw r0, 0x918(r3)
/* 813F66AC | 4E 80 00 20 */	blr
.endfn initAP__Q33ipl5scene7SettingFv

# .text:0x5F3C | 0x813F66B0 | size: 0x100
# ipl::scene::Setting::resetAP()
.fn resetAP__Q33ipl5scene7SettingFv, global
/* 813F66B0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813F66B4 | 7C 08 02 A6 */	mflr r0
/* 813F66B8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813F66BC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F66C0 | 48 20 2E 05 */	bl _savegpr_28
/* 813F66C4 | 80 A3 00 C4 */	lwz r5, 0xc4(r3)
/* 813F66C8 | 7C 7F 1B 78 */	mr r31, r3
/* 813F66CC | 38 80 00 15 */	li r4, 0x15
/* 813F66D0 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 813F66D4 | 48 11 BC 45 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F66D8 | 7C 7D 1B 78 */	mr r29, r3
/* 813F66DC | 4B F6 C1 95 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813F66E0 | 3B C0 00 01 */	li r30, 0x1
/* 813F66E4 | 93 DD 00 14 */	stw r30, 0x14(r29)
/* 813F66E8 | 80 1F 09 14 */	lwz r0, 0x914(r31)
/* 813F66EC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F66F0 | 41 82 00 20 */	beq .L_813F6710
/* 813F66F4 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F66F8 | 38 80 00 02 */	li r4, 0x2
/* 813F66FC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F6700 | 48 11 BC 19 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F6704 | 7C 7D 1B 78 */	mr r29, r3
/* 813F6708 | 4B F6 C1 69 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813F670C | 93 DD 00 14 */	stw r30, 0x14(r29)
.L_813F6710:
/* 813F6710 | 80 7F 09 14 */	lwz r3, 0x914(r31)
/* 813F6714 | A0 9F 01 00 */	lhz r4, 0x100(r31)
/* 813F6718 | 38 03 00 04 */	addi r0, r3, 0x4
/* 813F671C | 7C 04 00 00 */	cmpw r4, r0
/* 813F6720 | 41 82 00 24 */	beq .L_813F6744
/* 813F6724 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F6728 | 38 80 00 03 */	li r4, 0x3
/* 813F672C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F6730 | 48 11 BB E9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F6734 | 7C 7D 1B 78 */	mr r29, r3
/* 813F6738 | 4B F6 C1 39 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813F673C | 38 00 00 01 */	li r0, 0x1
/* 813F6740 | 90 1D 00 14 */	stw r0, 0x14(r29)
.L_813F6744:
/* 813F6744 | 3B 80 00 10 */	li r28, 0x10
/* 813F6748 | 3B C0 00 01 */	li r30, 0x1
.L_813F674C:
/* 813F674C | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F6750 | 57 84 04 3E */	clrlwi r4, r28, 16
/* 813F6754 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F6758 | 48 11 BB C1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F675C | 7C 7D 1B 78 */	mr r29, r3
/* 813F6760 | 4B F6 C1 11 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813F6764 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813F6768 | 93 DD 00 14 */	stw r30, 0x14(r29)
/* 813F676C | 2C 1C 00 13 */	cmpwi r28, 0x13
/* 813F6770 | 40 81 FF DC */	ble .L_813F674C
/* 813F6774 | 7F E3 FB 78 */	mr r3, r31
/* 813F6778 | 4B FF FF 1D */	bl initAP__Q33ipl5scene7SettingFv
/* 813F677C | 38 00 00 15 */	li r0, 0x15
/* 813F6780 | 80 7F 09 28 */	lwz r3, 0x928(r31)
/* 813F6784 | 90 1F 09 18 */	stw r0, 0x918(r31)
/* 813F6788 | 38 80 00 03 */	li r4, 0x3
/* 813F678C | 38 00 00 09 */	li r0, 0x9
/* 813F6790 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F6794 | 98 83 00 04 */	stb r4, 0x4(r3)
/* 813F6798 | 90 1F 00 78 */	stw r0, 0x78(r31)
/* 813F679C | 48 20 2D 75 */	bl _restgpr_28
/* 813F67A0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813F67A4 | 7C 08 03 A6 */	mtlr r0
/* 813F67A8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813F67AC | 4E 80 00 20 */	blr
.endfn resetAP__Q33ipl5scene7SettingFv

# .text:0x603C | 0x813F67B0 | size: 0xA8
# ipl::scene::Setting::redrawAP()
.fn redrawAP__Q33ipl5scene7SettingFv, global
/* 813F67B0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813F67B4 | 7C 08 02 A6 */	mflr r0
/* 813F67B8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813F67BC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F67C0 | 48 20 2D 05 */	bl _savegpr_28
/* 813F67C4 | 38 00 00 04 */	li r0, 0x4
/* 813F67C8 | 38 80 00 00 */	li r4, 0x0
/* 813F67CC | 38 C0 FF FF */	li r6, -0x1
/* 813F67D0 | 90 03 00 78 */	stw r0, 0x78(r3)
/* 813F67D4 | 80 A3 09 28 */	lwz r5, 0x928(r3)
/* 813F67D8 | 38 00 00 03 */	li r0, 0x3
/* 813F67DC | 90 83 09 14 */	stw r4, 0x914(r3)
/* 813F67E0 | 7C 7C 1B 78 */	mr r28, r3
/* 813F67E4 | 38 80 00 14 */	li r4, 0x14
/* 813F67E8 | 90 C3 09 18 */	stw r6, 0x918(r3)
/* 813F67EC | 98 05 00 04 */	stb r0, 0x4(r5)
/* 813F67F0 | 80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 813F67F4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F67F8 | 48 11 BB 21 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F67FC | 4B F6 C0 75 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813F6800 | 3B A0 00 10 */	li r29, 0x10
/* 813F6804 | 3B E0 00 01 */	li r31, 0x1
.L_813F6808:
/* 813F6808 | 80 7C 00 C4 */	lwz r3, 0xc4(r28)
/* 813F680C | 57 A4 04 3E */	clrlwi r4, r29, 16
/* 813F6810 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F6814 | 48 11 BB 05 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F6818 | 7C 7E 1B 78 */	mr r30, r3
/* 813F681C | 4B F6 C0 55 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813F6820 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 813F6824 | 93 FE 00 14 */	stw r31, 0x14(r30)
/* 813F6828 | 2C 1D 00 13 */	cmpwi r29, 0x13
/* 813F682C | 40 81 FF DC */	ble .L_813F6808
/* 813F6830 | 80 7C 00 C4 */	lwz r3, 0xc4(r28)
/* 813F6834 | 4B F7 3E D1 */	bl calc__Q33ipl6layout6ObjectFv
/* 813F6838 | 38 00 00 00 */	li r0, 0x0
/* 813F683C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F6840 | 98 1C 09 1E */	stb r0, 0x91e(r28)
/* 813F6844 | 48 20 2C CD */	bl _restgpr_28
/* 813F6848 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813F684C | 7C 08 03 A6 */	mtlr r0
/* 813F6850 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813F6854 | 4E 80 00 20 */	blr
.endfn redrawAP__Q33ipl5scene7SettingFv

# .text:0x60E4 | 0x813F6858 | size: 0x440
# ipl::scene::Setting::scanAP()
.fn scanAP__Q33ipl5scene7SettingFv, global
/* 813F6858 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F685C | 7C 08 02 A6 */	mflr r0
/* 813F6860 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F6864 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F6868 | 7C 7F 1B 78 */	mr r31, r3
/* 813F686C | 80 03 00 78 */	lwz r0, 0x78(r3)
/* 813F6870 | 28 00 00 09 */	cmplwi r0, 0x9
/* 813F6874 | 41 81 04 10 */	bgt .L_813F6C84
/* 813F6878 | 3C 80 81 65 */	lis r4, jumptable_81657564@ha
/* 813F687C | 54 00 10 3A */	slwi r0, r0, 2
/* 813F6880 | 38 84 75 64 */	addi r4, r4, jumptable_81657564@l
/* 813F6884 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 813F6888 | 7C 89 03 A6 */	mtctr r4
/* 813F688C | 4E 80 04 20 */	bctr
.L_813F6890:
/* 813F6890 | 38 80 00 00 */	li r4, 0x0
/* 813F6894 | 38 A0 08 00 */	li r5, 0x800
/* 813F6898 | 38 63 01 00 */	addi r3, r3, 0x100
/* 813F689C | 4B F3 9A 99 */	bl memset
/* 813F68A0 | 80 7F 00 E8 */	lwz r3, 0xe8(r31)
/* 813F68A4 | 38 9F 01 00 */	addi r4, r31, 0x100
/* 813F68A8 | 48 00 5B D5 */	bl setResultData__Q33ipl5scene12APScanThreadFPUs
/* 813F68AC | 80 7F 09 04 */	lwz r3, 0x904(r31)
/* 813F68B0 | 38 80 00 00 */	li r4, 0x0
/* 813F68B4 | 38 A0 10 00 */	li r5, 0x1000
/* 813F68B8 | 4B F3 9A 7D */	bl memset
/* 813F68BC | 80 7F 00 E8 */	lwz r3, 0xe8(r31)
/* 813F68C0 | 38 A0 10 00 */	li r5, 0x1000
/* 813F68C4 | 80 9F 09 04 */	lwz r4, 0x904(r31)
/* 813F68C8 | 38 C0 00 12 */	li r6, 0x12
/* 813F68CC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F68D0 | 38 E0 00 01 */	li r7, 0x1
/* 813F68D4 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813F68D8 | 7D 89 03 A6 */	mtctr r12
/* 813F68DC | 4E 80 04 21 */	bctrl
/* 813F68E0 | 38 60 00 02 */	li r3, 0x2
/* 813F68E4 | 38 00 00 00 */	li r0, 0x0
/* 813F68E8 | 90 7F 00 78 */	stw r3, 0x78(r31)
/* 813F68EC | 98 1F 09 1E */	stb r0, 0x91e(r31)
/* 813F68F0 | 48 00 03 94 */	b .L_813F6C84
.L_813F68F4:
/* 813F68F4 | 88 03 09 1E */	lbz r0, 0x91e(r3)
/* 813F68F8 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813F68FC | 40 82 00 08 */	bne .L_813F6904
/* 813F6900 | 48 00 2D F1 */	bl waitStart__Q33ipl5scene7SettingFv
.L_813F6904:
/* 813F6904 | 80 7F 00 E8 */	lwz r3, 0xe8(r31)
/* 813F6908 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F690C | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 813F6910 | 7D 89 03 A6 */	mtctr r12
/* 813F6914 | 4E 80 04 21 */	bctrl
/* 813F6918 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F691C | 41 82 03 68 */	beq .L_813F6C84
/* 813F6920 | 80 7F 00 E8 */	lwz r3, 0xe8(r31)
/* 813F6924 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F6928 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813F692C | 7D 89 03 A6 */	mtctr r12
/* 813F6930 | 4E 80 04 21 */	bctrl
/* 813F6934 | A0 1F 01 00 */	lhz r0, 0x100(r31)
/* 813F6938 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F693C | 41 82 00 20 */	beq .L_813F695C
/* 813F6940 | 38 60 00 01 */	li r3, 0x1
/* 813F6944 | 4B F7 A8 31 */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F6948 | 7F E3 FB 78 */	mr r3, r31
/* 813F694C | 48 00 0A 6D */	bl setAPDraw__Q33ipl5scene7SettingFv
/* 813F6950 | 38 00 00 03 */	li r0, 0x3
/* 813F6954 | 90 1F 00 78 */	stw r0, 0x78(r31)
/* 813F6958 | 48 00 00 50 */	b .L_813F69A8
.L_813F695C:
/* 813F695C | 38 60 00 02 */	li r3, 0x2
/* 813F6960 | 4B F7 A8 15 */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F6964 | 7F E3 FB 78 */	mr r3, r31
/* 813F6968 | 4B FF FD 2D */	bl initAP__Q33ipl5scene7SettingFv
/* 813F696C | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F6970 | 38 80 00 14 */	li r4, 0x14
/* 813F6974 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F6978 | 48 11 B9 A1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F697C | 4B F7 32 A9 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813F6980 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F6984 | 38 80 00 00 */	li r4, 0x0
/* 813F6988 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F698C | 48 11 B9 8D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F6990 | 4B F7 32 95 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813F6994 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F6998 | 38 80 00 01 */	li r4, 0x1
/* 813F699C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F69A0 | 48 11 B9 79 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F69A4 | 4B F7 32 81 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
.L_813F69A8:
/* 813F69A8 | 7F E3 FB 78 */	mr r3, r31
/* 813F69AC | 4B FF 9F 65 */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
/* 813F69B0 | 38 00 00 00 */	li r0, 0x0
/* 813F69B4 | 7F E3 FB 78 */	mr r3, r31
/* 813F69B8 | 90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 813F69BC | 48 00 2D C1 */	bl waitFinish__Q33ipl5scene7SettingFv
/* 813F69C0 | 48 00 02 C4 */	b .L_813F6C84
.L_813F69C4:
/* 813F69C4 | 80 83 09 28 */	lwz r4, 0x928(r3)
/* 813F69C8 | 88 04 00 04 */	lbz r0, 0x4(r4)
/* 813F69CC | 28 00 00 03 */	cmplwi r0, 0x3
/* 813F69D0 | 40 82 02 B4 */	bne .L_813F6C84
/* 813F69D4 | 38 80 00 04 */	li r4, 0x4
/* 813F69D8 | 38 00 00 00 */	li r0, 0x0
/* 813F69DC | 90 83 00 78 */	stw r4, 0x78(r3)
/* 813F69E0 | 98 03 09 1E */	stb r0, 0x91e(r3)
/* 813F69E4 | 48 00 02 A0 */	b .L_813F6C84
.L_813F69E8:
/* 813F69E8 | 48 00 02 B1 */	bl initScroll__Q33ipl5scene7SettingFv
/* 813F69EC | 7F E3 FB 78 */	mr r3, r31
/* 813F69F0 | 48 00 09 C9 */	bl setAPDraw__Q33ipl5scene7SettingFv
/* 813F69F4 | 80 7F 00 D8 */	lwz r3, 0xd8(r31)
/* 813F69F8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F69FC | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813F6A00 | 7D 89 03 A6 */	mtctr r12
/* 813F6A04 | 4E 80 04 21 */	bctrl
/* 813F6A08 | 48 00 02 7C */	b .L_813F6C84
.L_813F6A0C:
/* 813F6A0C | 80 63 00 D8 */	lwz r3, 0xd8(r3)
/* 813F6A10 | 4B F7 45 7D */	bl update__Q33ipl3gui11PaneManagerFv
/* 813F6A14 | 48 00 02 70 */	b .L_813F6C84
.L_813F6A18:
/* 813F6A18 | 80 83 09 18 */	lwz r4, 0x918(r3)
/* 813F6A1C | 38 00 00 01 */	li r0, 0x1
/* 813F6A20 | 80 A3 00 C4 */	lwz r5, 0xc4(r3)
/* 813F6A24 | 90 03 0B 9C */	stw r0, 0xb9c(r3)
/* 813F6A28 | 54 84 04 3E */	clrlwi r4, r4, 16
/* 813F6A2C | 38 65 02 8C */	addi r3, r5, 0x28c
/* 813F6A30 | 48 11 B8 E9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F6A34 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F6A38 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813F6A3C | 7C 00 00 34 */	cntlzw r0, r0
/* 813F6A40 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 813F6A44 | 40 82 02 40 */	bne .L_813F6C84
/* 813F6A48 | 38 00 00 05 */	li r0, 0x5
/* 813F6A4C | 7F E3 FB 78 */	mr r3, r31
/* 813F6A50 | 90 1F 00 78 */	stw r0, 0x78(r31)
/* 813F6A54 | 48 00 09 65 */	bl setAPDraw__Q33ipl5scene7SettingFv
/* 813F6A58 | 88 1F 09 1C */	lbz r0, 0x91c(r31)
/* 813F6A5C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F6A60 | 41 82 00 1C */	beq .L_813F6A7C
/* 813F6A64 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F6A68 | 38 80 00 0A */	li r4, 0xa
/* 813F6A6C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F6A70 | 48 11 B8 A9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F6A74 | 4B F7 31 B1 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813F6A78 | 48 00 00 18 */	b .L_813F6A90
.L_813F6A7C:
/* 813F6A7C | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F6A80 | 38 80 00 0B */	li r4, 0xb
/* 813F6A84 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F6A88 | 48 11 B8 91 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F6A8C | 4B F7 31 99 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
.L_813F6A90:
/* 813F6A90 | 80 1F 09 14 */	lwz r0, 0x914(r31)
/* 813F6A94 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F6A98 | 40 82 00 30 */	bne .L_813F6AC8
/* 813F6A9C | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F6AA0 | 38 8D 91 59 */	li r4, lbl_81697199@sda21
/* 813F6AA4 | 38 A0 00 01 */	li r5, 0x1
/* 813F6AA8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F6AAC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F6AB0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F6AB4 | 7D 89 03 A6 */	mtctr r12
/* 813F6AB8 | 4E 80 04 21 */	bctrl
/* 813F6ABC | 38 80 00 00 */	li r4, 0x0
/* 813F6AC0 | 4B F4 D9 55 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813F6AC4 | 48 00 00 34 */	b .L_813F6AF8
.L_813F6AC8:
/* 813F6AC8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813F6ACC | 40 82 00 2C */	bne .L_813F6AF8
/* 813F6AD0 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F6AD4 | 38 8D 91 59 */	li r4, lbl_81697199@sda21
/* 813F6AD8 | 38 A0 00 01 */	li r5, 0x1
/* 813F6ADC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F6AE0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F6AE4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F6AE8 | 7D 89 03 A6 */	mtctr r12
/* 813F6AEC | 4E 80 04 21 */	bctrl
/* 813F6AF0 | 38 80 00 01 */	li r4, 0x1
/* 813F6AF4 | 4B F4 D9 21 */	bl SetVisible__Q34nw4r3lyt4PaneFb
.L_813F6AF8:
/* 813F6AF8 | 80 7F 09 14 */	lwz r3, 0x914(r31)
/* 813F6AFC | A0 9F 01 00 */	lhz r4, 0x100(r31)
/* 813F6B00 | 38 03 00 04 */	addi r0, r3, 0x4
/* 813F6B04 | 7C 04 00 00 */	cmpw r4, r0
/* 813F6B08 | 40 82 00 30 */	bne .L_813F6B38
/* 813F6B0C | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F6B10 | 38 8D 91 5F */	li r4, lbl_8169719F@sda21
/* 813F6B14 | 38 A0 00 01 */	li r5, 0x1
/* 813F6B18 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F6B1C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F6B20 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F6B24 | 7D 89 03 A6 */	mtctr r12
/* 813F6B28 | 4E 80 04 21 */	bctrl
/* 813F6B2C | 38 80 00 00 */	li r4, 0x0
/* 813F6B30 | 4B F4 D8 E5 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813F6B34 | 48 00 00 38 */	b .L_813F6B6C
.L_813F6B38:
/* 813F6B38 | 38 03 00 05 */	addi r0, r3, 0x5
/* 813F6B3C | 7C 04 00 00 */	cmpw r4, r0
/* 813F6B40 | 40 82 00 2C */	bne .L_813F6B6C
/* 813F6B44 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F6B48 | 38 8D 91 5F */	li r4, lbl_8169719F@sda21
/* 813F6B4C | 38 A0 00 01 */	li r5, 0x1
/* 813F6B50 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F6B54 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F6B58 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F6B5C | 7D 89 03 A6 */	mtctr r12
/* 813F6B60 | 4E 80 04 21 */	bctrl
/* 813F6B64 | 38 80 00 01 */	li r4, 0x1
/* 813F6B68 | 4B F4 D8 AD */	bl SetVisible__Q34nw4r3lyt4PaneFb
.L_813F6B6C:
/* 813F6B6C | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F6B70 | 38 8D 91 65 */	li r4, lbl_816971A5@sda21
/* 813F6B74 | 38 A0 00 01 */	li r5, 0x1
/* 813F6B78 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F6B7C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F6B80 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F6B84 | 7D 89 03 A6 */	mtctr r12
/* 813F6B88 | 4E 80 04 21 */	bctrl
/* 813F6B8C | 38 80 00 01 */	li r4, 0x1
/* 813F6B90 | 4B F4 D8 85 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813F6B94 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F6B98 | 38 8D 91 6B */	li r4, lbl_816971AB@sda21
/* 813F6B9C | 38 A0 00 01 */	li r5, 0x1
/* 813F6BA0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F6BA4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F6BA8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F6BAC | 7D 89 03 A6 */	mtctr r12
/* 813F6BB0 | 4E 80 04 21 */	bctrl
/* 813F6BB4 | 38 80 00 01 */	li r4, 0x1
/* 813F6BB8 | 4B F4 D8 5D */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813F6BBC | 48 00 00 C8 */	b .L_813F6C84
.L_813F6BC0:
/* 813F6BC0 | 80 83 09 18 */	lwz r4, 0x918(r3)
/* 813F6BC4 | 38 00 00 01 */	li r0, 0x1
/* 813F6BC8 | 80 A3 00 C4 */	lwz r5, 0xc4(r3)
/* 813F6BCC | 90 03 0B 9C */	stw r0, 0xb9c(r3)
/* 813F6BD0 | 54 84 04 3E */	clrlwi r4, r4, 16
/* 813F6BD4 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 813F6BD8 | 48 11 B7 41 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F6BDC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F6BE0 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813F6BE4 | 7C 00 00 34 */	cntlzw r0, r0
/* 813F6BE8 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 813F6BEC | 40 82 00 98 */	bne .L_813F6C84
/* 813F6BF0 | 7F E3 FB 78 */	mr r3, r31
/* 813F6BF4 | 48 00 04 F9 */	bl updateScroll__Q33ipl5scene7SettingFv
/* 813F6BF8 | 38 00 00 06 */	li r0, 0x6
/* 813F6BFC | 90 1F 00 78 */	stw r0, 0x78(r31)
/* 813F6C00 | 48 00 00 84 */	b .L_813F6C84
.L_813F6C04:
/* 813F6C04 | 4B FF FA AD */	bl resetAP__Q33ipl5scene7SettingFv
/* 813F6C08 | 38 00 00 00 */	li r0, 0x0
/* 813F6C0C | 98 1F 09 1E */	stb r0, 0x91e(r31)
/* 813F6C10 | 48 00 00 74 */	b .L_813F6C84
.L_813F6C14:
/* 813F6C14 | 80 03 09 18 */	lwz r0, 0x918(r3)
/* 813F6C18 | 80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 813F6C1C | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813F6C20 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F6C24 | 48 11 B6 F5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F6C28 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F6C2C | 38 03 FF FF */	subi r0, r3, 0x1
/* 813F6C30 | 7C 00 00 34 */	cntlzw r0, r0
/* 813F6C34 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 813F6C38 | 40 82 00 4C */	bne .L_813F6C84
/* 813F6C3C | 7F E3 FB 78 */	mr r3, r31
/* 813F6C40 | 4B FF 9C D1 */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
/* 813F6C44 | 38 60 00 01 */	li r3, 0x1
/* 813F6C48 | 38 00 FF FF */	li r0, -0x1
/* 813F6C4C | 90 7F 00 78 */	stw r3, 0x78(r31)
/* 813F6C50 | 80 7F 00 D8 */	lwz r3, 0xd8(r31)
/* 813F6C54 | 90 1F 09 18 */	stw r0, 0x918(r31)
/* 813F6C58 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F6C5C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813F6C60 | 7D 89 03 A6 */	mtctr r12
/* 813F6C64 | 4E 80 04 21 */	bctrl
/* 813F6C68 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F6C6C | 38 80 00 14 */	li r4, 0x14
/* 813F6C70 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F6C74 | 48 11 B6 A5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F6C78 | 4B F6 BB F9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813F6C7C | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F6C80 | 4B F7 3A 85 */	bl calc__Q33ipl6layout6ObjectFv
.L_813F6C84:
/* 813F6C84 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F6C88 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F6C8C | 7C 08 03 A6 */	mtlr r0
/* 813F6C90 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F6C94 | 4E 80 00 20 */	blr
.endfn scanAP__Q33ipl5scene7SettingFv

# .text:0x6524 | 0x813F6C98 | size: 0x454
# ipl::scene::Setting::initScroll()
.fn initScroll__Q33ipl5scene7SettingFv, global
/* 813F6C98 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813F6C9C | 7C 08 02 A6 */	mflr r0
/* 813F6CA0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813F6CA4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F6CA8 | 48 20 28 1D */	bl _savegpr_28
/* 813F6CAC | 88 03 09 1E */	lbz r0, 0x91e(r3)
/* 813F6CB0 | 7C 7F 1B 78 */	mr r31, r3
/* 813F6CB4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F6CB8 | 41 82 04 1C */	beq .L_813F70D4
/* 813F6CBC | 80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 813F6CC0 | 38 8D 91 71 */	li r4, lbl_816971B1@sda21
/* 813F6CC4 | 38 A0 00 01 */	li r5, 0x1
/* 813F6CC8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F6CCC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F6CD0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F6CD4 | 7D 89 03 A6 */	mtctr r12
/* 813F6CD8 | 4E 80 04 21 */	bctrl
/* 813F6CDC | 38 80 00 01 */	li r4, 0x1
/* 813F6CE0 | 4B F4 D7 35 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813F6CE4 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F6CE8 | 38 8D 91 77 */	li r4, lbl_816971B7@sda21
/* 813F6CEC | 38 A0 00 01 */	li r5, 0x1
/* 813F6CF0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F6CF4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F6CF8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F6CFC | 7D 89 03 A6 */	mtctr r12
/* 813F6D00 | 4E 80 04 21 */	bctrl
/* 813F6D04 | 38 80 00 01 */	li r4, 0x1
/* 813F6D08 | 4B F4 D7 0D */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813F6D0C | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F6D10 | 38 8D 91 7D */	li r4, lbl_816971BD@sda21
/* 813F6D14 | 38 A0 00 01 */	li r5, 0x1
/* 813F6D18 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F6D1C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F6D20 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F6D24 | 7D 89 03 A6 */	mtctr r12
/* 813F6D28 | 4E 80 04 21 */	bctrl
/* 813F6D2C | 38 80 00 01 */	li r4, 0x1
/* 813F6D30 | 4B F4 D6 E5 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813F6D34 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F6D38 | 38 8D 91 83 */	li r4, lbl_816971C3@sda21
/* 813F6D3C | 38 A0 00 01 */	li r5, 0x1
/* 813F6D40 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F6D44 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F6D48 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F6D4C | 7D 89 03 A6 */	mtctr r12
/* 813F6D50 | 4E 80 04 21 */	bctrl
/* 813F6D54 | 38 80 00 01 */	li r4, 0x1
/* 813F6D58 | 4B F4 D6 BD */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813F6D5C | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F6D60 | 38 8D 91 5F */	li r4, lbl_8169719F@sda21
/* 813F6D64 | 38 A0 00 01 */	li r5, 0x1
/* 813F6D68 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F6D6C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F6D70 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F6D74 | 7D 89 03 A6 */	mtctr r12
/* 813F6D78 | 4E 80 04 21 */	bctrl
/* 813F6D7C | 38 80 00 01 */	li r4, 0x1
/* 813F6D80 | 4B F4 D6 95 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813F6D84 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F6D88 | 38 8D 91 6B */	li r4, lbl_816971AB@sda21
/* 813F6D8C | 38 A0 00 01 */	li r5, 0x1
/* 813F6D90 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F6D94 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F6D98 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F6D9C | 7D 89 03 A6 */	mtctr r12
/* 813F6DA0 | 4E 80 04 21 */	bctrl
/* 813F6DA4 | 38 80 00 01 */	li r4, 0x1
/* 813F6DA8 | 4B F4 D6 6D */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813F6DAC | A0 1F 01 00 */	lhz r0, 0x100(r31)
/* 813F6DB0 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813F6DB4 | 41 82 00 74 */	beq .L_813F6E28
/* 813F6DB8 | 40 80 00 14 */	bge .L_813F6DCC
/* 813F6DBC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F6DC0 | 41 82 00 18 */	beq .L_813F6DD8
/* 813F6DC4 | 40 80 00 3C */	bge .L_813F6E00
/* 813F6DC8 | 48 00 01 00 */	b .L_813F6EC8
.L_813F6DCC:
/* 813F6DCC | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813F6DD0 | 40 80 00 F8 */	bge .L_813F6EC8
/* 813F6DD4 | 48 00 00 7C */	b .L_813F6E50
.L_813F6DD8:
/* 813F6DD8 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F6DDC | 38 8D 91 71 */	li r4, lbl_816971B1@sda21
/* 813F6DE0 | 38 A0 00 01 */	li r5, 0x1
/* 813F6DE4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F6DE8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F6DEC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F6DF0 | 7D 89 03 A6 */	mtctr r12
/* 813F6DF4 | 4E 80 04 21 */	bctrl
/* 813F6DF8 | 38 80 00 00 */	li r4, 0x0
/* 813F6DFC | 4B F4 D6 19 */	bl SetVisible__Q34nw4r3lyt4PaneFb
.L_813F6E00:
/* 813F6E00 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F6E04 | 38 8D 91 77 */	li r4, lbl_816971B7@sda21
/* 813F6E08 | 38 A0 00 01 */	li r5, 0x1
/* 813F6E0C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F6E10 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F6E14 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F6E18 | 7D 89 03 A6 */	mtctr r12
/* 813F6E1C | 4E 80 04 21 */	bctrl
/* 813F6E20 | 38 80 00 00 */	li r4, 0x0
/* 813F6E24 | 4B F4 D5 F1 */	bl SetVisible__Q34nw4r3lyt4PaneFb
.L_813F6E28:
/* 813F6E28 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F6E2C | 38 8D 91 7D */	li r4, lbl_816971BD@sda21
/* 813F6E30 | 38 A0 00 01 */	li r5, 0x1
/* 813F6E34 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F6E38 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F6E3C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F6E40 | 7D 89 03 A6 */	mtctr r12
/* 813F6E44 | 4E 80 04 21 */	bctrl
/* 813F6E48 | 38 80 00 00 */	li r4, 0x0
/* 813F6E4C | 4B F4 D5 C9 */	bl SetVisible__Q34nw4r3lyt4PaneFb
.L_813F6E50:
/* 813F6E50 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F6E54 | 38 8D 91 83 */	li r4, lbl_816971C3@sda21
/* 813F6E58 | 38 A0 00 01 */	li r5, 0x1
/* 813F6E5C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F6E60 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F6E64 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F6E68 | 7D 89 03 A6 */	mtctr r12
/* 813F6E6C | 4E 80 04 21 */	bctrl
/* 813F6E70 | 38 80 00 00 */	li r4, 0x0
/* 813F6E74 | 4B F4 D5 A1 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813F6E78 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F6E7C | 38 8D 91 5F */	li r4, lbl_8169719F@sda21
/* 813F6E80 | 38 A0 00 01 */	li r5, 0x1
/* 813F6E84 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F6E88 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F6E8C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F6E90 | 7D 89 03 A6 */	mtctr r12
/* 813F6E94 | 4E 80 04 21 */	bctrl
/* 813F6E98 | 38 80 00 00 */	li r4, 0x0
/* 813F6E9C | 4B F4 D5 79 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813F6EA0 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F6EA4 | 38 8D 91 6B */	li r4, lbl_816971AB@sda21
/* 813F6EA8 | 38 A0 00 01 */	li r5, 0x1
/* 813F6EAC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F6EB0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F6EB4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F6EB8 | 7D 89 03 A6 */	mtctr r12
/* 813F6EBC | 4E 80 04 21 */	bctrl
/* 813F6EC0 | 38 80 00 00 */	li r4, 0x0
/* 813F6EC4 | 4B F4 D5 51 */	bl SetVisible__Q34nw4r3lyt4PaneFb
.L_813F6EC8:
/* 813F6EC8 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F6ECC | 38 80 00 14 */	li r4, 0x14
/* 813F6ED0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F6ED4 | 48 11 B4 45 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F6ED8 | 7C 7D 1B 78 */	mr r29, r3
/* 813F6EDC | 4B F6 B9 95 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813F6EE0 | 3B C0 00 01 */	li r30, 0x1
/* 813F6EE4 | 38 80 00 00 */	li r4, 0x0
/* 813F6EE8 | 93 DD 00 14 */	stw r30, 0x14(r29)
/* 813F6EEC | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F6EF0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F6EF4 | 48 11 B4 25 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F6EF8 | 4B F7 2D 2D */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813F6EFC | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F6F00 | 38 A0 00 01 */	li r5, 0x1
/* 813F6F04 | 80 8D 8F D0 */	lwz r4, lbl_81697010@sda21(r0)
/* 813F6F08 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F6F0C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F6F10 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F6F14 | 7D 89 03 A6 */	mtctr r12
/* 813F6F18 | 4E 80 04 21 */	bctrl
/* 813F6F1C | 38 80 00 00 */	li r4, 0x0
/* 813F6F20 | 4B F4 D4 F5 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813F6F24 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F6F28 | 3F A0 81 65 */	lis r29, lbl_81656910@ha
/* 813F6F2C | 80 9D 69 10 */	lwz r4, lbl_81656910@l(r29)
/* 813F6F30 | 38 A0 00 01 */	li r5, 0x1
/* 813F6F34 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F6F38 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F6F3C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F6F40 | 7D 89 03 A6 */	mtctr r12
/* 813F6F44 | 4E 80 04 21 */	bctrl
/* 813F6F48 | 38 80 00 00 */	li r4, 0x0
/* 813F6F4C | 4B F4 D4 C9 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813F6F50 | 80 7F 09 14 */	lwz r3, 0x914(r31)
/* 813F6F54 | A0 9F 01 00 */	lhz r4, 0x100(r31)
/* 813F6F58 | 38 03 00 04 */	addi r0, r3, 0x4
/* 813F6F5C | 7C 04 00 00 */	cmpw r4, r0
/* 813F6F60 | 41 81 00 A8 */	bgt .L_813F7008
/* 813F6F64 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F6F68 | 38 8D 91 89 */	li r4, lbl_816971C9@sda21
/* 813F6F6C | 38 A0 00 01 */	li r5, 0x1
/* 813F6F70 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F6F74 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F6F78 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F6F7C | 7D 89 03 A6 */	mtctr r12
/* 813F6F80 | 4E 80 04 21 */	bctrl
/* 813F6F84 | 38 80 00 00 */	li r4, 0x0
/* 813F6F88 | 4B F4 D4 8D */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813F6F8C | 80 DF 00 C4 */	lwz r6, 0xc4(r31)
/* 813F6F90 | 38 6D 8F D0 */	li r3, lbl_81697010@sda21
/* 813F6F94 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 813F6F98 | 38 A0 00 01 */	li r5, 0x1
/* 813F6F9C | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 813F6FA0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F6FA4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F6FA8 | 7D 89 03 A6 */	mtctr r12
/* 813F6FAC | 4E 80 04 21 */	bctrl
/* 813F6FB0 | 38 80 00 00 */	li r4, 0x0
/* 813F6FB4 | 4B F4 D4 61 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813F6FB8 | A0 7F 01 00 */	lhz r3, 0x100(r31)
/* 813F6FBC | 3B BD 69 10 */	addi r29, r29, lbl_81656910@l
/* 813F6FC0 | 3B 83 00 01 */	addi r28, r3, 0x1
/* 813F6FC4 | 57 9E 10 3A */	slwi r30, r28, 2
/* 813F6FC8 | 48 00 00 34 */	b .L_813F6FFC
.L_813F6FCC:
/* 813F6FCC | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F6FD0 | 38 A0 00 01 */	li r5, 0x1
/* 813F6FD4 | 7C 9D F0 2E */	lwzx r4, r29, r30
/* 813F6FD8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F6FDC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F6FE0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F6FE4 | 7D 89 03 A6 */	mtctr r12
/* 813F6FE8 | 4E 80 04 21 */	bctrl
/* 813F6FEC | 38 80 00 00 */	li r4, 0x0
/* 813F6FF0 | 4B F4 D4 25 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813F6FF4 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813F6FF8 | 3B DE 00 04 */	addi r30, r30, 0x4
.L_813F6FFC:
/* 813F6FFC | 2C 1C 00 06 */	cmpwi r28, 0x6
/* 813F7000 | 41 80 FF CC */	blt .L_813F6FCC
/* 813F7004 | 48 00 00 B8 */	b .L_813F70BC
.L_813F7008:
/* 813F7008 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F700C | 38 8D 91 89 */	li r4, lbl_816971C9@sda21
/* 813F7010 | 38 A0 00 01 */	li r5, 0x1
/* 813F7014 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F7018 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F701C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F7020 | 7D 89 03 A6 */	mtctr r12
/* 813F7024 | 4E 80 04 21 */	bctrl
/* 813F7028 | 38 80 00 01 */	li r4, 0x1
/* 813F702C | 4B F4 D3 E9 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813F7030 | 80 DF 00 C4 */	lwz r6, 0xc4(r31)
/* 813F7034 | 38 6D 8F D0 */	li r3, lbl_81697010@sda21
/* 813F7038 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 813F703C | 38 A0 00 01 */	li r5, 0x1
/* 813F7040 | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 813F7044 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F7048 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F704C | 7D 89 03 A6 */	mtctr r12
/* 813F7050 | 4E 80 04 21 */	bctrl
/* 813F7054 | 38 80 00 01 */	li r4, 0x1
/* 813F7058 | 4B F4 D3 BD */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813F705C | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F7060 | 38 80 00 01 */	li r4, 0x1
/* 813F7064 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F7068 | 48 11 B2 B1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F706C | 7C 7C 1B 78 */	mr r28, r3
/* 813F7070 | 4B F6 B8 01 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813F7074 | 93 DC 00 14 */	stw r30, 0x14(r28)
/* 813F7078 | 3B BD 69 10 */	addi r29, r29, lbl_81656910@l
/* 813F707C | 3B 80 00 01 */	li r28, 0x1
/* 813F7080 | 3B C0 00 04 */	li r30, 0x4
.L_813F7084:
/* 813F7084 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F7088 | 38 A0 00 01 */	li r5, 0x1
/* 813F708C | 7C 9D F0 2E */	lwzx r4, r29, r30
/* 813F7090 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F7094 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F7098 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F709C | 7D 89 03 A6 */	mtctr r12
/* 813F70A0 | 4E 80 04 21 */	bctrl
/* 813F70A4 | 38 80 00 01 */	li r4, 0x1
/* 813F70A8 | 4B F4 D3 6D */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813F70AC | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813F70B0 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 813F70B4 | 2C 1C 00 06 */	cmpwi r28, 0x6
/* 813F70B8 | 41 80 FF CC */	blt .L_813F7084
.L_813F70BC:
/* 813F70BC | 38 80 00 06 */	li r4, 0x6
/* 813F70C0 | 38 60 00 14 */	li r3, 0x14
/* 813F70C4 | 38 00 00 00 */	li r0, 0x0
/* 813F70C8 | 90 9F 00 78 */	stw r4, 0x78(r31)
/* 813F70CC | 90 7F 09 18 */	stw r3, 0x918(r31)
/* 813F70D0 | 98 1F 09 1E */	stb r0, 0x91e(r31)
.L_813F70D4:
/* 813F70D4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F70D8 | 48 20 24 39 */	bl _restgpr_28
/* 813F70DC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813F70E0 | 7C 08 03 A6 */	mtlr r0
/* 813F70E4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813F70E8 | 4E 80 00 20 */	blr
.endfn initScroll__Q33ipl5scene7SettingFv

# .text:0x6978 | 0x813F70EC | size: 0x2CC
# ipl::scene::Setting::updateScroll()
.fn updateScroll__Q33ipl5scene7SettingFv, global
/* 813F70EC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813F70F0 | 7C 08 02 A6 */	mflr r0
/* 813F70F4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813F70F8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F70FC | 48 20 23 CD */	bl _savegpr_29
/* 813F7100 | 88 03 09 1C */	lbz r0, 0x91c(r3)
/* 813F7104 | 7C 7F 1B 78 */	mr r31, r3
/* 813F7108 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F710C | 40 82 01 20 */	bne .L_813F722C
/* 813F7110 | 80 03 09 14 */	lwz r0, 0x914(r3)
/* 813F7114 | 34 00 FF FF */	subic. r0, r0, 0x1
/* 813F7118 | 90 03 09 14 */	stw r0, 0x914(r3)
/* 813F711C | 40 82 00 AC */	bne .L_813F71C8
/* 813F7120 | 80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 813F7124 | 38 80 00 02 */	li r4, 0x2
/* 813F7128 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F712C | 48 11 B1 ED */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F7130 | 7C 7E 1B 78 */	mr r30, r3
/* 813F7134 | 4B F6 B7 3D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813F7138 | 38 00 00 01 */	li r0, 0x1
/* 813F713C | 38 A0 00 01 */	li r5, 0x1
/* 813F7140 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 813F7144 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F7148 | 80 8D 8F D0 */	lwz r4, lbl_81697010@sda21(r0)
/* 813F714C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F7150 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F7154 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F7158 | 7D 89 03 A6 */	mtctr r12
/* 813F715C | 4E 80 04 21 */	bctrl
/* 813F7160 | 38 80 00 00 */	li r4, 0x0
/* 813F7164 | 4B F4 D2 B1 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813F7168 | 3B A0 00 00 */	li r29, 0x0
.L_813F716C:
/* 813F716C | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F7170 | 38 A0 00 01 */	li r5, 0x1
/* 813F7174 | 80 8D 8F D0 */	lwz r4, lbl_81697010@sda21(r0)
/* 813F7178 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F717C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F7180 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F7184 | 7D 89 03 A6 */	mtctr r12
/* 813F7188 | 4E 80 04 21 */	bctrl
/* 813F718C | 7C 64 1B 78 */	mr r4, r3
/* 813F7190 | 80 7F 00 D8 */	lwz r3, 0xd8(r31)
/* 813F7194 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F7198 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 813F719C | 7D 89 03 A6 */	mtctr r12
/* 813F71A0 | 4E 80 04 21 */	bctrl
/* 813F71A4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F71A8 | 7F A4 EB 78 */	mr r4, r29
/* 813F71AC | 38 A0 00 00 */	li r5, 0x0
/* 813F71B0 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 813F71B4 | 7D 89 03 A6 */	mtctr r12
/* 813F71B8 | 4E 80 04 21 */	bctrl
/* 813F71BC | 3B BD 00 01 */	addi r29, r29, 0x1
/* 813F71C0 | 2C 1D 00 08 */	cmpwi r29, 0x8
/* 813F71C4 | 41 80 FF A8 */	blt .L_813F716C
.L_813F71C8:
/* 813F71C8 | 80 7F 09 14 */	lwz r3, 0x914(r31)
/* 813F71CC | A0 9F 01 00 */	lhz r4, 0x100(r31)
/* 813F71D0 | 38 03 00 05 */	addi r0, r3, 0x5
/* 813F71D4 | 7C 04 00 00 */	cmpw r4, r0
/* 813F71D8 | 40 82 01 70 */	bne .L_813F7348
/* 813F71DC | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F71E0 | 38 80 00 01 */	li r4, 0x1
/* 813F71E4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F71E8 | 48 11 B1 31 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F71EC | 7C 7E 1B 78 */	mr r30, r3
/* 813F71F0 | 4B F6 B6 81 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813F71F4 | 38 00 00 01 */	li r0, 0x1
/* 813F71F8 | 38 6D 8F D0 */	li r3, lbl_81697010@sda21
/* 813F71FC | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 813F7200 | 38 A0 00 01 */	li r5, 0x1
/* 813F7204 | 80 DF 00 C4 */	lwz r6, 0xc4(r31)
/* 813F7208 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 813F720C | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 813F7210 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F7214 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F7218 | 7D 89 03 A6 */	mtctr r12
/* 813F721C | 4E 80 04 21 */	bctrl
/* 813F7220 | 38 80 00 01 */	li r4, 0x1
/* 813F7224 | 4B F4 D1 F1 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813F7228 | 48 00 01 20 */	b .L_813F7348
.L_813F722C:
/* 813F722C | 80 A3 09 14 */	lwz r5, 0x914(r3)
/* 813F7230 | A0 83 01 00 */	lhz r4, 0x100(r3)
/* 813F7234 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 813F7238 | 38 05 00 04 */	addi r0, r5, 0x4
/* 813F723C | 90 A3 09 14 */	stw r5, 0x914(r3)
/* 813F7240 | 7C 04 00 00 */	cmpw r4, r0
/* 813F7244 | 40 82 00 B0 */	bne .L_813F72F4
/* 813F7248 | 80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 813F724C | 38 80 00 03 */	li r4, 0x3
/* 813F7250 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F7254 | 48 11 B0 C5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F7258 | 7C 7D 1B 78 */	mr r29, r3
/* 813F725C | 4B F6 B6 15 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813F7260 | 38 00 00 01 */	li r0, 0x1
/* 813F7264 | 3B CD 8F D0 */	li r30, lbl_81697010@sda21
/* 813F7268 | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 813F726C | 38 A0 00 01 */	li r5, 0x1
/* 813F7270 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F7274 | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 813F7278 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F727C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F7280 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F7284 | 7D 89 03 A6 */	mtctr r12
/* 813F7288 | 4E 80 04 21 */	bctrl
/* 813F728C | 38 80 00 00 */	li r4, 0x0
/* 813F7290 | 4B F4 D1 85 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813F7294 | 3B A0 00 00 */	li r29, 0x0
.L_813F7298:
/* 813F7298 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F729C | 38 A0 00 01 */	li r5, 0x1
/* 813F72A0 | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 813F72A4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F72A8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F72AC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F72B0 | 7D 89 03 A6 */	mtctr r12
/* 813F72B4 | 4E 80 04 21 */	bctrl
/* 813F72B8 | 7C 64 1B 78 */	mr r4, r3
/* 813F72BC | 80 7F 00 D8 */	lwz r3, 0xd8(r31)
/* 813F72C0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F72C4 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 813F72C8 | 7D 89 03 A6 */	mtctr r12
/* 813F72CC | 4E 80 04 21 */	bctrl
/* 813F72D0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F72D4 | 7F A4 EB 78 */	mr r4, r29
/* 813F72D8 | 38 A0 00 00 */	li r5, 0x0
/* 813F72DC | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 813F72E0 | 7D 89 03 A6 */	mtctr r12
/* 813F72E4 | 4E 80 04 21 */	bctrl
/* 813F72E8 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 813F72EC | 2C 1D 00 08 */	cmpwi r29, 0x8
/* 813F72F0 | 41 80 FF A8 */	blt .L_813F7298
.L_813F72F4:
/* 813F72F4 | 80 1F 09 14 */	lwz r0, 0x914(r31)
/* 813F72F8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813F72FC | 40 82 00 4C */	bne .L_813F7348
/* 813F7300 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F7304 | 38 80 00 00 */	li r4, 0x0
/* 813F7308 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F730C | 48 11 B0 0D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F7310 | 7C 7D 1B 78 */	mr r29, r3
/* 813F7314 | 4B F6 B5 5D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813F7318 | 38 00 00 01 */	li r0, 0x1
/* 813F731C | 38 A0 00 01 */	li r5, 0x1
/* 813F7320 | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 813F7324 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F7328 | 80 8D 8F D0 */	lwz r4, lbl_81697010@sda21(r0)
/* 813F732C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F7330 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F7334 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F7338 | 7D 89 03 A6 */	mtctr r12
/* 813F733C | 4E 80 04 21 */	bctrl
/* 813F7340 | 38 80 00 01 */	li r4, 0x1
/* 813F7344 | 4B F4 D0 D1 */	bl SetVisible__Q34nw4r3lyt4PaneFb
.L_813F7348:
/* 813F7348 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F734C | 38 80 00 0A */	li r4, 0xa
/* 813F7350 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F7354 | 48 11 AF C5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F7358 | 3B C0 00 00 */	li r30, 0x0
/* 813F735C | 38 80 00 0B */	li r4, 0xb
/* 813F7360 | 93 C3 00 14 */	stw r30, 0x14(r3)
/* 813F7364 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813F7368 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F736C | 48 11 AF AD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F7370 | 93 C3 00 14 */	stw r30, 0x14(r3)
/* 813F7374 | 88 7F 09 1C */	lbz r3, 0x91c(r31)
/* 813F7378 | 80 9F 00 C4 */	lwz r4, 0xc4(r31)
/* 813F737C | 38 03 00 0A */	addi r0, r3, 0xa
/* 813F7380 | 90 1F 09 18 */	stw r0, 0x918(r31)
/* 813F7384 | 38 64 02 8C */	addi r3, r4, 0x28c
/* 813F7388 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813F738C | 48 11 AF 8D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F7390 | 7C 7D 1B 78 */	mr r29, r3
/* 813F7394 | 4B F6 B4 DD */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813F7398 | 38 00 00 01 */	li r0, 0x1
/* 813F739C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F73A0 | 90 1D 00 14 */	stw r0, 0x14(r29)
/* 813F73A4 | 48 20 21 71 */	bl _restgpr_29
/* 813F73A8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813F73AC | 7C 08 03 A6 */	mtlr r0
/* 813F73B0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813F73B4 | 4E 80 00 20 */	blr
.endfn updateScroll__Q33ipl5scene7SettingFv

# .text:0x6C44 | 0x813F73B8 | size: 0x2AC
# ipl::scene::Setting::setAPDraw()
.fn setAPDraw__Q33ipl5scene7SettingFv, global
/* 813F73B8 | 94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 813F73BC | 7C 08 02 A6 */	mflr r0
/* 813F73C0 | 90 01 00 A4 */	stw r0, 0xa4(r1)
/* 813F73C4 | 39 61 00 A0 */	addi r11, r1, 0xa0
/* 813F73C8 | 48 20 20 E5 */	bl _savegpr_22
/* 813F73CC | 38 03 01 02 */	addi r0, r3, 0x102
/* 813F73D0 | 3F C0 81 65 */	lis r30, lbl_816568F8@ha
/* 813F73D4 | 90 03 09 00 */	stw r0, 0x900(r3)
/* 813F73D8 | 7C 78 1B 78 */	mr r24, r3
/* 813F73DC | 3B DE 68 F8 */	addi r30, r30, lbl_816568F8@l
/* 813F73E0 | 3B 60 00 02 */	li r27, 0x2
/* 813F73E4 | 3B 40 00 00 */	li r26, 0x0
/* 813F73E8 | 3B A0 00 00 */	li r29, 0x0
/* 813F73EC | 3B E0 00 01 */	li r31, 0x1
/* 813F73F0 | 3B 8D AF 78 */	li r28, lbl_81698FB8@sda21
/* 813F73F4 | 48 00 02 4C */	b .L_813F7640
.L_813F73F8:
/* 813F73F8 | 80 78 09 00 */	lwz r3, 0x900(r24)
/* 813F73FC | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 813F7400 | 54 00 08 3C */	slwi r0, r0, 1
/* 813F7404 | 7F 7B 02 14 */	add r27, r27, r0
/* 813F7408 | 2C 1B 08 00 */	cmpwi r27, 0x800
/* 813F740C | 41 81 02 40 */	bgt .L_813F764C
/* 813F7410 | 80 78 00 C4 */	lwz r3, 0xc4(r24)
/* 813F7414 | 38 80 00 0A */	li r4, 0xa
/* 813F7418 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F741C | 48 11 AE FD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F7420 | 93 A3 00 14 */	stw r29, 0x14(r3)
/* 813F7424 | 38 80 00 0B */	li r4, 0xb
/* 813F7428 | 80 78 00 C4 */	lwz r3, 0xc4(r24)
/* 813F742C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F7430 | 48 11 AE E9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F7434 | 93 A3 00 14 */	stw r29, 0x14(r3)
/* 813F7438 | 80 78 09 00 */	lwz r3, 0x900(r24)
/* 813F743C | 48 0E 2C B5 */	bl fn_814DA0F0
/* 813F7440 | 80 98 09 00 */	lwz r4, 0x900(r24)
/* 813F7444 | 54 76 06 3E */	clrlwi r22, r3, 24
/* 813F7448 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F744C | 38 A0 00 20 */	li r5, 0x20
/* 813F7450 | 38 84 00 0C */	addi r4, r4, 0xc
/* 813F7454 | 4B F3 8D DD */	bl memcpy
/* 813F7458 | 9B A1 00 28 */	stb r29, 0x28(r1)
/* 813F745C | 38 61 00 2A */	addi r3, r1, 0x2a
/* 813F7460 | 38 80 00 00 */	li r4, 0x0
/* 813F7464 | 38 A0 00 42 */	li r5, 0x42
/* 813F7468 | 4B F3 8E CD */	bl memset
/* 813F746C | 80 78 09 14 */	lwz r3, 0x914(r24)
/* 813F7470 | 38 1A 00 01 */	addi r0, r26, 0x1
/* 813F7474 | 7F 23 00 51 */	subf. r25, r3, r0
/* 813F7478 | 41 80 01 B8 */	blt .L_813F7630
/* 813F747C | 2C 19 00 05 */	cmpwi r25, 0x5
/* 813F7480 | 41 81 01 B0 */	bgt .L_813F7630
/* 813F7484 | 80 78 00 C4 */	lwz r3, 0xc4(r24)
/* 813F7488 | 57 20 10 3A */	slwi r0, r25, 2
/* 813F748C | 7C 9E 00 2E */	lwzx r4, r30, r0
/* 813F7490 | 38 A0 00 01 */	li r5, 0x1
/* 813F7494 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F7498 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F749C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F74A0 | 7D 89 03 A6 */	mtctr r12
/* 813F74A4 | 4E 80 04 21 */	bctrl
/* 813F74A8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F74AC | 7C 77 1B 78 */	mr r23, r3
/* 813F74B0 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813F74B4 | 7D 89 03 A6 */	mtctr r12
/* 813F74B8 | 4E 80 04 21 */	bctrl
/* 813F74BC | 48 00 00 18 */	b .L_813F74D4
.L_813F74C0:
/* 813F74C0 | 7C 03 E0 40 */	cmplw r3, r28
/* 813F74C4 | 40 82 00 0C */	bne .L_813F74D0
/* 813F74C8 | 38 00 00 01 */	li r0, 0x1
/* 813F74CC | 48 00 00 14 */	b .L_813F74E0
.L_813F74D0:
/* 813F74D0 | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_813F74D4:
/* 813F74D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F74D8 | 40 82 FF E8 */	bne .L_813F74C0
/* 813F74DC | 38 00 00 00 */	li r0, 0x0
.L_813F74E0:
/* 813F74E0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F74E4 | 41 82 00 08 */	beq .L_813F74EC
/* 813F74E8 | 48 00 00 08 */	b .L_813F74F0
.L_813F74EC:
/* 813F74EC | 3A E0 00 00 */	li r23, 0x0
.L_813F74F0:
/* 813F74F0 | 38 61 00 2A */	addi r3, r1, 0x2a
/* 813F74F4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813F74F8 | 38 A0 00 21 */	li r5, 0x21
/* 813F74FC | 4B F6 CB D5 */	bl UTF8ToUTF16__Q33ipl7utility13CharacterCodeFPwPCcl
/* 813F7500 | 81 97 00 00 */	lwz r12, 0x0(r23)
/* 813F7504 | 7E E3 BB 78 */	mr r3, r23
/* 813F7508 | 38 81 00 2A */	addi r4, r1, 0x2a
/* 813F750C | 38 A0 00 00 */	li r5, 0x0
/* 813F7510 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813F7514 | 7D 89 03 A6 */	mtctr r12
/* 813F7518 | 4E 80 04 21 */	bctrl
/* 813F751C | 2C 16 00 00 */	cmpwi r22, 0x0
/* 813F7520 | 40 82 00 40 */	bne .L_813F7560
/* 813F7524 | 80 78 00 C4 */	lwz r3, 0xc4(r24)
/* 813F7528 | 38 19 00 2E */	addi r0, r25, 0x2e
/* 813F752C | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813F7530 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F7534 | 48 11 AD E5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F7538 | 7C 77 1B 78 */	mr r23, r3
/* 813F753C | 4B F6 B3 35 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813F7540 | 93 F7 00 14 */	stw r31, 0x14(r23)
/* 813F7544 | 38 19 00 34 */	addi r0, r25, 0x34
/* 813F7548 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813F754C | 80 78 00 C4 */	lwz r3, 0xc4(r24)
/* 813F7550 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F7554 | 48 11 AD C5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F7558 | 93 A3 00 14 */	stw r29, 0x14(r3)
/* 813F755C | 48 00 00 3C */	b .L_813F7598
.L_813F7560:
/* 813F7560 | 80 78 00 C4 */	lwz r3, 0xc4(r24)
/* 813F7564 | 38 19 00 34 */	addi r0, r25, 0x34
/* 813F7568 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813F756C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F7570 | 48 11 AD A9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F7574 | 7C 77 1B 78 */	mr r23, r3
/* 813F7578 | 4B F6 B2 F9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813F757C | 93 F7 00 14 */	stw r31, 0x14(r23)
/* 813F7580 | 38 19 00 2E */	addi r0, r25, 0x2e
/* 813F7584 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813F7588 | 80 78 00 C4 */	lwz r3, 0xc4(r24)
/* 813F758C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F7590 | 48 11 AD 89 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F7594 | 93 A3 00 14 */	stw r29, 0x14(r3)
.L_813F7598:
/* 813F7598 | 80 78 00 C4 */	lwz r3, 0xc4(r24)
/* 813F759C | 38 19 00 16 */	addi r0, r25, 0x16
/* 813F75A0 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813F75A4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F75A8 | 48 11 AD 71 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F75AC | 93 A3 00 14 */	stw r29, 0x14(r3)
/* 813F75B0 | 38 19 00 1C */	addi r0, r25, 0x1c
/* 813F75B4 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813F75B8 | 80 78 00 C4 */	lwz r3, 0xc4(r24)
/* 813F75BC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F75C0 | 48 11 AD 59 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F75C4 | 93 A3 00 14 */	stw r29, 0x14(r3)
/* 813F75C8 | 38 19 00 22 */	addi r0, r25, 0x22
/* 813F75CC | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813F75D0 | 80 78 00 C4 */	lwz r3, 0xc4(r24)
/* 813F75D4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F75D8 | 48 11 AD 41 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F75DC | 93 A3 00 14 */	stw r29, 0x14(r3)
/* 813F75E0 | 38 19 00 28 */	addi r0, r25, 0x28
/* 813F75E4 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813F75E8 | 80 78 00 C4 */	lwz r3, 0xc4(r24)
/* 813F75EC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F75F0 | 48 11 AD 29 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F75F4 | 93 A3 00 14 */	stw r29, 0x14(r3)
/* 813F75F8 | 7F 03 C3 78 */	mr r3, r24
/* 813F75FC | 80 98 09 00 */	lwz r4, 0x900(r24)
/* 813F7600 | 48 00 05 39 */	bl getRadioLevel__Q33ipl5scene7SettingFPC10WDBssDesc_
/* 813F7604 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813F7608 | 80 78 00 C4 */	lwz r3, 0xc4(r24)
/* 813F760C | 1C 00 00 06 */	mulli r0, r0, 0x6
/* 813F7610 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F7614 | 7C 99 02 14 */	add r4, r25, r0
/* 813F7618 | 38 04 00 16 */	addi r0, r4, 0x16
/* 813F761C | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813F7620 | 48 11 AC F9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F7624 | 7C 77 1B 78 */	mr r23, r3
/* 813F7628 | 4B F6 B2 49 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813F762C | 93 F7 00 14 */	stw r31, 0x14(r23)
.L_813F7630:
/* 813F7630 | 7C 78 DA 14 */	add r3, r24, r27
/* 813F7634 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 813F7638 | 38 03 01 00 */	addi r0, r3, 0x100
/* 813F763C | 90 18 09 00 */	stw r0, 0x900(r24)
.L_813F7640:
/* 813F7640 | A0 18 01 00 */	lhz r0, 0x100(r24)
/* 813F7644 | 7C 1A 00 00 */	cmpw r26, r0
/* 813F7648 | 40 81 FD B0 */	ble .L_813F73F8
.L_813F764C:
/* 813F764C | 39 61 00 A0 */	addi r11, r1, 0xa0
/* 813F7650 | 48 20 1E A9 */	bl _restgpr_22
/* 813F7654 | 80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 813F7658 | 7C 08 03 A6 */	mtlr r0
/* 813F765C | 38 21 00 A0 */	addi r1, r1, 0xa0
/* 813F7660 | 4E 80 00 20 */	blr
.endfn setAPDraw__Q33ipl5scene7SettingFv

# .text:0x6EF0 | 0x813F7664 | size: 0x70
# ipl::scene::Setting::get_arw_no(const char*)
.fn get_arw_no__Q33ipl5scene7SettingFPCc, global
/* 813F7664 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813F7668 | 7C 08 02 A6 */	mflr r0
/* 813F766C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813F7670 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F7674 | 48 20 1E 4D */	bl _savegpr_27
/* 813F7678 | 7C 9B 23 78 */	mr r27, r4
/* 813F767C | 3B A0 FF FF */	li r29, -0x1
/* 813F7680 | 3B 80 00 00 */	li r28, 0x0
/* 813F7684 | 3B E0 00 00 */	li r31, 0x0
/* 813F7688 | 3B CD 8F D0 */	li r30, lbl_81697010@sda21
.L_813F768C:
/* 813F768C | 7C 7E F8 2E */	lwzx r3, r30, r31
/* 813F7690 | 7F 64 DB 78 */	mr r4, r27
/* 813F7694 | 48 20 AD ED */	bl strcmp
/* 813F7698 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F769C | 40 82 00 0C */	bne .L_813F76A8
/* 813F76A0 | 7F 9D E3 78 */	mr r29, r28
/* 813F76A4 | 48 00 00 14 */	b .L_813F76B8
.L_813F76A8:
/* 813F76A8 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813F76AC | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813F76B0 | 2C 1C 00 02 */	cmpwi r28, 0x2
/* 813F76B4 | 41 80 FF D8 */	blt .L_813F768C
.L_813F76B8:
/* 813F76B8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F76BC | 7F A3 EB 78 */	mr r3, r29
/* 813F76C0 | 48 20 1E 4D */	bl _restgpr_27
/* 813F76C4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813F76C8 | 7C 08 03 A6 */	mtlr r0
/* 813F76CC | 38 21 00 20 */	addi r1, r1, 0x20
/* 813F76D0 | 4E 80 00 20 */	blr
.endfn get_arw_no__Q33ipl5scene7SettingFPCc

# .text:0x6F60 | 0x813F76D4 | size: 0x74
# ipl::scene::Setting::get_ap_no(const char*)
.fn get_ap_no__Q33ipl5scene7SettingFPCc, global
/* 813F76D4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813F76D8 | 7C 08 02 A6 */	mflr r0
/* 813F76DC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813F76E0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F76E4 | 48 20 1D DD */	bl _savegpr_27
/* 813F76E8 | 3F C0 81 65 */	lis r30, lbl_816568E8@ha
/* 813F76EC | 7C 9B 23 78 */	mr r27, r4
/* 813F76F0 | 3B DE 68 E8 */	addi r30, r30, lbl_816568E8@l
/* 813F76F4 | 3B A0 FF FF */	li r29, -0x1
/* 813F76F8 | 3B 80 00 00 */	li r28, 0x0
/* 813F76FC | 3B E0 00 00 */	li r31, 0x0
.L_813F7700:
/* 813F7700 | 7C 7E F8 2E */	lwzx r3, r30, r31
/* 813F7704 | 7F 64 DB 78 */	mr r4, r27
/* 813F7708 | 48 20 AD 79 */	bl strcmp
/* 813F770C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F7710 | 40 82 00 0C */	bne .L_813F771C
/* 813F7714 | 7F 9D E3 78 */	mr r29, r28
/* 813F7718 | 48 00 00 14 */	b .L_813F772C
.L_813F771C:
/* 813F771C | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813F7720 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813F7724 | 2C 1C 00 04 */	cmpwi r28, 0x4
/* 813F7728 | 41 80 FF D8 */	blt .L_813F7700
.L_813F772C:
/* 813F772C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F7730 | 7F A3 EB 78 */	mr r3, r29
/* 813F7734 | 48 20 1D D9 */	bl _restgpr_27
/* 813F7738 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813F773C | 7C 08 03 A6 */	mtlr r0
/* 813F7740 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813F7744 | 4E 80 00 20 */	blr
.endfn get_ap_no__Q33ipl5scene7SettingFPCc

# .text:0x6FD4 | 0x813F7748 | size: 0xF8
# ipl::scene::Setting::start_point_event(const char*)
.fn start_point_event__Q33ipl5scene7SettingFPCc, global
/* 813F7748 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813F774C | 7C 08 02 A6 */	mflr r0
/* 813F7750 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813F7754 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F7758 | 48 20 1D 6D */	bl _savegpr_28
/* 813F775C | 7C 7C 1B 78 */	mr r28, r3
/* 813F7760 | 7C 9D 23 78 */	mr r29, r4
/* 813F7764 | 4B FF FF 71 */	bl get_ap_no__Q33ipl5scene7SettingFPCc
/* 813F7768 | 80 BC 00 C4 */	lwz r5, 0xc4(r28)
/* 813F776C | 7C 7E 1B 78 */	mr r30, r3
/* 813F7770 | 38 80 00 0A */	li r4, 0xa
/* 813F7774 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 813F7778 | 48 11 AB A1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F777C | 3B E0 00 00 */	li r31, 0x0
/* 813F7780 | 38 80 00 0B */	li r4, 0xb
/* 813F7784 | 93 E3 00 14 */	stw r31, 0x14(r3)
/* 813F7788 | 80 7C 00 C4 */	lwz r3, 0xc4(r28)
/* 813F778C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F7790 | 48 11 AB 89 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F7794 | 2C 1E FF FF */	cmpwi r30, -0x1
/* 813F7798 | 93 E3 00 14 */	stw r31, 0x14(r3)
/* 813F779C | 41 82 00 40 */	beq .L_813F77DC
/* 813F77A0 | 80 7C 00 C4 */	lwz r3, 0xc4(r28)
/* 813F77A4 | 38 1E 00 0C */	addi r0, r30, 0xc
/* 813F77A8 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813F77AC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F77B0 | 48 11 AB 69 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F77B4 | 7C 7E 1B 78 */	mr r30, r3
/* 813F77B8 | 4B F6 B0 B9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813F77BC | 38 60 00 01 */	li r3, 0x1
/* 813F77C0 | 38 00 00 02 */	li r0, 0x2
/* 813F77C4 | 90 7E 00 14 */	stw r3, 0x14(r30)
/* 813F77C8 | 7F 83 E3 78 */	mr r3, r28
/* 813F77CC | 80 9C 09 24 */	lwz r4, 0x924(r28)
/* 813F77D0 | 98 04 00 37 */	stb r0, 0x37(r4)
/* 813F77D4 | 48 00 20 61 */	bl setSE__Q33ipl5scene7SettingFv
/* 813F77D8 | 48 00 00 50 */	b .L_813F7828
.L_813F77DC:
/* 813F77DC | 7F 83 E3 78 */	mr r3, r28
/* 813F77E0 | 7F A4 EB 78 */	mr r4, r29
/* 813F77E4 | 4B FF FE 81 */	bl get_arw_no__Q33ipl5scene7SettingFPCc
/* 813F77E8 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813F77EC | 41 82 00 3C */	beq .L_813F7828
/* 813F77F0 | 80 BC 00 C4 */	lwz r5, 0xc4(r28)
/* 813F77F4 | 38 03 00 04 */	addi r0, r3, 0x4
/* 813F77F8 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813F77FC | 38 65 02 8C */	addi r3, r5, 0x28c
/* 813F7800 | 48 11 AB 19 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F7804 | 7C 7E 1B 78 */	mr r30, r3
/* 813F7808 | 4B F6 B0 69 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813F780C | 38 60 00 01 */	li r3, 0x1
/* 813F7810 | 38 00 00 02 */	li r0, 0x2
/* 813F7814 | 90 7E 00 14 */	stw r3, 0x14(r30)
/* 813F7818 | 7F 83 E3 78 */	mr r3, r28
/* 813F781C | 80 9C 09 24 */	lwz r4, 0x924(r28)
/* 813F7820 | 98 04 00 37 */	stb r0, 0x37(r4)
/* 813F7824 | 48 00 20 11 */	bl setSE__Q33ipl5scene7SettingFv
.L_813F7828:
/* 813F7828 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F782C | 48 20 1C E5 */	bl _restgpr_28
/* 813F7830 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813F7834 | 7C 08 03 A6 */	mtlr r0
/* 813F7838 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813F783C | 4E 80 00 20 */	blr
.endfn start_point_event__Q33ipl5scene7SettingFPCc

# .text:0x70CC | 0x813F7840 | size: 0xA0
# ipl::scene::Setting::start_left_event(const char*)
.fn start_left_event__Q33ipl5scene7SettingFPCc, global
/* 813F7840 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F7844 | 7C 08 02 A6 */	mflr r0
/* 813F7848 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F784C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F7850 | 7C 9F 23 78 */	mr r31, r4
/* 813F7854 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813F7858 | 7C 7E 1B 78 */	mr r30, r3
/* 813F785C | 4B FF FE 79 */	bl get_ap_no__Q33ipl5scene7SettingFPCc
/* 813F7860 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813F7864 | 41 82 00 2C */	beq .L_813F7890
/* 813F7868 | 80 BE 00 C4 */	lwz r5, 0xc4(r30)
/* 813F786C | 38 03 00 10 */	addi r0, r3, 0x10
/* 813F7870 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813F7874 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 813F7878 | 48 11 AA A1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F787C | 7C 7F 1B 78 */	mr r31, r3
/* 813F7880 | 4B F6 AF F1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813F7884 | 38 00 00 01 */	li r0, 0x1
/* 813F7888 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 813F788C | 48 00 00 3C */	b .L_813F78C8
.L_813F7890:
/* 813F7890 | 7F C3 F3 78 */	mr r3, r30
/* 813F7894 | 7F E4 FB 78 */	mr r4, r31
/* 813F7898 | 4B FF FD CD */	bl get_arw_no__Q33ipl5scene7SettingFPCc
/* 813F789C | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813F78A0 | 41 82 00 28 */	beq .L_813F78C8
/* 813F78A4 | 80 BE 00 C4 */	lwz r5, 0xc4(r30)
/* 813F78A8 | 38 03 00 06 */	addi r0, r3, 0x6
/* 813F78AC | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813F78B0 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 813F78B4 | 48 11 AA 65 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F78B8 | 7C 7F 1B 78 */	mr r31, r3
/* 813F78BC | 4B F6 AF B5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813F78C0 | 38 00 00 01 */	li r0, 0x1
/* 813F78C4 | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_813F78C8:
/* 813F78C8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F78CC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F78D0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813F78D4 | 7C 08 03 A6 */	mtlr r0
/* 813F78D8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F78DC | 4E 80 00 20 */	blr
.endfn start_left_event__Q33ipl5scene7SettingFPCc

# .text:0x716C | 0x813F78E0 | size: 0x258
# ipl::scene::Setting::start_trig_event(const char*)
.fn start_trig_event__Q33ipl5scene7SettingFPCc, global
/* 813F78E0 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813F78E4 | 7C 08 02 A6 */	mflr r0
/* 813F78E8 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813F78EC | 39 61 00 40 */	addi r11, r1, 0x40
/* 813F78F0 | 48 20 1B D9 */	bl _savegpr_29
/* 813F78F4 | 7C 7E 1B 78 */	mr r30, r3
/* 813F78F8 | 7C 9D 23 78 */	mr r29, r4
/* 813F78FC | 4B FF FD D9 */	bl get_ap_no__Q33ipl5scene7SettingFPCc
/* 813F7900 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813F7904 | 38 C0 00 02 */	li r6, 0x2
/* 813F7908 | 41 82 01 2C */	beq .L_813F7A34
/* 813F790C | 3B E0 00 00 */	li r31, 0x0
/* 813F7910 | 48 00 01 04 */	b .L_813F7A14
.L_813F7914:
/* 813F7914 | 80 BE 09 00 */	lwz r5, 0x900(r30)
/* 813F7918 | A0 05 00 00 */	lhz r0, 0x0(r5)
/* 813F791C | 54 00 08 3C */	slwi r0, r0, 1
/* 813F7920 | 7C C6 02 14 */	add r6, r6, r0
/* 813F7924 | 2C 06 08 00 */	cmpwi r6, 0x800
/* 813F7928 | 41 81 00 F8 */	bgt .L_813F7A20
/* 813F792C | 80 1E 09 14 */	lwz r0, 0x914(r30)
/* 813F7930 | 7C 83 02 14 */	add r4, r3, r0
/* 813F7934 | 38 04 00 01 */	addi r0, r4, 0x1
/* 813F7938 | 7C 1F 00 00 */	cmpw r31, r0
/* 813F793C | 40 82 00 C8 */	bne .L_813F7A04
/* 813F7940 | 7C A3 2B 78 */	mr r3, r5
/* 813F7944 | 48 0E 27 AD */	bl fn_814DA0F0
/* 813F7948 | 80 9E 09 00 */	lwz r4, 0x900(r30)
/* 813F794C | 54 7D 06 3E */	clrlwi r29, r3, 24
/* 813F7950 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F7954 | 38 A0 00 20 */	li r5, 0x20
/* 813F7958 | 38 84 00 0C */	addi r4, r4, 0xc
/* 813F795C | 4B F3 88 D5 */	bl memcpy
/* 813F7960 | 38 00 00 00 */	li r0, 0x0
/* 813F7964 | 38 80 00 00 */	li r4, 0x0
/* 813F7968 | 98 01 00 28 */	stb r0, 0x28(r1)
/* 813F796C | 38 A0 00 41 */	li r5, 0x41
/* 813F7970 | 80 7E 09 34 */	lwz r3, 0x934(r30)
/* 813F7974 | 38 63 00 1F */	addi r3, r3, 0x1f
/* 813F7978 | 4B F3 89 BD */	bl memset
/* 813F797C | 80 7E 09 34 */	lwz r3, 0x934(r30)
/* 813F7980 | 38 80 00 00 */	li r4, 0x0
/* 813F7984 | 38 A0 00 61 */	li r5, 0x61
/* 813F7988 | 38 63 00 60 */	addi r3, r3, 0x60
/* 813F798C | 4B F3 89 A9 */	bl memset
/* 813F7990 | 80 7E 09 34 */	lwz r3, 0x934(r30)
/* 813F7994 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813F7998 | 38 A0 00 20 */	li r5, 0x20
/* 813F799C | 38 63 00 60 */	addi r3, r3, 0x60
/* 813F79A0 | 4B F6 C8 1D */	bl ANSIToUTF8__Q33ipl7utility13CharacterCodeFPcPCUci
/* 813F79A4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F79A8 | 48 00 32 7D */	bl setSSID__Q33ipl3ncd10NCDSettingFPUc
/* 813F79AC | 7F A3 EB 78 */	mr r3, r29
/* 813F79B0 | 48 00 33 B1 */	bl setWDPrivacyMode__Q33ipl3ncd10NCDSettingFUs
/* 813F79B4 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813F79B8 | 40 82 00 10 */	bne .L_813F79C8
/* 813F79BC | 38 60 00 02 */	li r3, 0x2
/* 813F79C0 | 4B F7 97 B5 */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F79C4 | 48 00 00 0C */	b .L_813F79D0
.L_813F79C8:
/* 813F79C8 | 38 60 00 01 */	li r3, 0x1
/* 813F79CC | 4B F7 97 A9 */	bl setFuncResult__Q23www10wiisettingFUc
.L_813F79D0:
/* 813F79D0 | 80 9E 09 24 */	lwz r4, 0x924(r30)
/* 813F79D4 | 38 00 00 03 */	li r0, 0x3
/* 813F79D8 | 7F C3 F3 78 */	mr r3, r30
/* 813F79DC | 98 04 00 37 */	stb r0, 0x37(r4)
/* 813F79E0 | 48 00 1E 55 */	bl setSE__Q33ipl5scene7SettingFv
/* 813F79E4 | 3C 60 81 65 */	lis r3, lbl_8165758C@ha
/* 813F79E8 | 7F E4 FB 78 */	mr r4, r31
/* 813F79EC | 7F A6 EB 78 */	mr r6, r29
/* 813F79F0 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813F79F4 | 38 63 75 8C */	addi r3, r3, lbl_8165758C@l
/* 813F79F8 | 4C C6 31 82 */	crclr cr1eq
/* 813F79FC | 48 13 6C A5 */	bl OSReport
/* 813F7A00 | 48 00 00 20 */	b .L_813F7A20
.L_813F7A04:
/* 813F7A04 | 7C 9E 32 14 */	add r4, r30, r6
/* 813F7A08 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 813F7A0C | 38 04 01 00 */	addi r0, r4, 0x100
/* 813F7A10 | 90 1E 09 00 */	stw r0, 0x900(r30)
.L_813F7A14:
/* 813F7A14 | A0 1E 01 00 */	lhz r0, 0x100(r30)
/* 813F7A18 | 7C 1F 00 00 */	cmpw r31, r0
/* 813F7A1C | 40 81 FE F8 */	ble .L_813F7914
.L_813F7A20:
/* 813F7A20 | 38 60 00 00 */	li r3, 0x0
/* 813F7A24 | 38 00 00 08 */	li r0, 0x8
/* 813F7A28 | 98 7E 09 1E */	stb r3, 0x91e(r30)
/* 813F7A2C | 90 1E 00 78 */	stw r0, 0x78(r30)
/* 813F7A30 | 48 00 00 F0 */	b .L_813F7B20
.L_813F7A34:
/* 813F7A34 | 7F C3 F3 78 */	mr r3, r30
/* 813F7A38 | 7F A4 EB 78 */	mr r4, r29
/* 813F7A3C | 4B FF FC 29 */	bl get_arw_no__Q33ipl5scene7SettingFPCc
/* 813F7A40 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813F7A44 | 7C 7F 1B 78 */	mr r31, r3
/* 813F7A48 | 41 82 00 D8 */	beq .L_813F7B20
/* 813F7A4C | 38 03 00 08 */	addi r0, r3, 0x8
/* 813F7A50 | 80 7E 00 C4 */	lwz r3, 0xc4(r30)
/* 813F7A54 | 90 1E 09 18 */	stw r0, 0x918(r30)
/* 813F7A58 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813F7A5C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F7A60 | 48 11 A8 B9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F7A64 | 7C 7D 1B 78 */	mr r29, r3
/* 813F7A68 | 4B F6 AE 09 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813F7A6C | 38 A0 00 01 */	li r5, 0x1
/* 813F7A70 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813F7A74 | 90 BD 00 14 */	stw r5, 0x14(r29)
/* 813F7A78 | 40 82 00 44 */	bne .L_813F7ABC
/* 813F7A7C | 80 1E 09 14 */	lwz r0, 0x914(r30)
/* 813F7A80 | 38 60 00 00 */	li r3, 0x0
/* 813F7A84 | 98 7E 09 1C */	stb r3, 0x91c(r30)
/* 813F7A88 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813F7A8C | 40 82 00 78 */	bne .L_813F7B04
/* 813F7A90 | 80 7E 00 C4 */	lwz r3, 0xc4(r30)
/* 813F7A94 | 38 8D 91 65 */	li r4, lbl_816971A5@sda21
/* 813F7A98 | 38 A0 00 01 */	li r5, 0x1
/* 813F7A9C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F7AA0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F7AA4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F7AA8 | 7D 89 03 A6 */	mtctr r12
/* 813F7AAC | 4E 80 04 21 */	bctrl
/* 813F7AB0 | 38 80 00 00 */	li r4, 0x0
/* 813F7AB4 | 4B F4 C9 61 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813F7AB8 | 48 00 00 4C */	b .L_813F7B04
.L_813F7ABC:
/* 813F7ABC | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 813F7AC0 | 40 82 00 44 */	bne .L_813F7B04
/* 813F7AC4 | 80 7E 09 14 */	lwz r3, 0x914(r30)
/* 813F7AC8 | A0 9E 01 00 */	lhz r4, 0x100(r30)
/* 813F7ACC | 38 03 00 05 */	addi r0, r3, 0x5
/* 813F7AD0 | 98 BE 09 1C */	stb r5, 0x91c(r30)
/* 813F7AD4 | 7C 04 00 00 */	cmpw r4, r0
/* 813F7AD8 | 40 82 00 2C */	bne .L_813F7B04
/* 813F7ADC | 80 7E 00 C4 */	lwz r3, 0xc4(r30)
/* 813F7AE0 | 38 8D 91 6B */	li r4, lbl_816971AB@sda21
/* 813F7AE4 | 38 A0 00 01 */	li r5, 0x1
/* 813F7AE8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F7AEC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F7AF0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F7AF4 | 7D 89 03 A6 */	mtctr r12
/* 813F7AF8 | 4E 80 04 21 */	bctrl
/* 813F7AFC | 38 80 00 00 */	li r4, 0x0
/* 813F7B00 | 4B F4 C9 15 */	bl SetVisible__Q34nw4r3lyt4PaneFb
.L_813F7B04:
/* 813F7B04 | 38 00 00 07 */	li r0, 0x7
/* 813F7B08 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813F7B0C | 3C 80 81 65 */	lis r4, lbl_816575A1@ha
/* 813F7B10 | 90 1E 00 78 */	stw r0, 0x78(r30)
/* 813F7B14 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813F7B18 | 38 84 75 A1 */	addi r4, r4, lbl_816575A1@l
/* 813F7B1C | 4B F7 39 51 */	bl startSE__Q33ipl3snd6SystemFPCc
.L_813F7B20:
/* 813F7B20 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813F7B24 | 48 20 19 F1 */	bl _restgpr_29
/* 813F7B28 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 813F7B2C | 7C 08 03 A6 */	mtlr r0
/* 813F7B30 | 38 21 00 40 */	addi r1, r1, 0x40
/* 813F7B34 | 4E 80 00 20 */	blr
.endfn start_trig_event__Q33ipl5scene7SettingFPCc

# .text:0x73C4 | 0x813F7B38 | size: 0x40
# ipl::scene::Setting::getRadioLevel(const WDBssDesc_*)
.fn getRadioLevel__Q33ipl5scene7SettingFPC10WDBssDesc_, global
/* 813F7B38 | A0 04 00 02 */	lhz r0, 0x2(r4)
/* 813F7B3C | 54 04 06 3E */	clrlwi r4, r0, 24
/* 813F7B40 | 28 04 00 C4 */	cmplwi r4, 0xc4
/* 813F7B44 | 41 80 00 0C */	blt .L_813F7B50
/* 813F7B48 | 38 60 00 03 */	li r3, 0x3
/* 813F7B4C | 4E 80 00 20 */	blr
.L_813F7B50:
/* 813F7B50 | 28 04 00 B5 */	cmplwi r4, 0xb5
/* 813F7B54 | 41 80 00 0C */	blt .L_813F7B60
/* 813F7B58 | 38 60 00 02 */	li r3, 0x2
/* 813F7B5C | 4E 80 00 20 */	blr
.L_813F7B60:
/* 813F7B60 | 38 00 00 AB */	li r0, 0xab
/* 813F7B64 | 38 60 FF FF */	li r3, -0x1
/* 813F7B68 | 7C 00 20 10 */	subfc r0, r0, r4
/* 813F7B6C | 7C 03 01 90 */	subfze r0, r3
/* 813F7B70 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 813F7B74 | 4E 80 00 20 */	blr
.endfn getRadioLevel__Q33ipl5scene7SettingFPC10WDBssDesc_

# .text:0x7404 | 0x813F7B78 | size: 0x9C
# ipl::scene::Setting::setUseEULA_()
.fn setUseEULA___Q33ipl5scene7SettingFv, global
/* 813F7B78 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F7B7C | 7C 08 02 A6 */	mflr r0
/* 813F7B80 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F7B84 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F7B88 | 7C 7F 1B 78 */	mr r31, r3
/* 813F7B8C | 80 03 00 7C */	lwz r0, 0x7c(r3)
/* 813F7B90 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813F7B94 | 41 82 00 38 */	beq .L_813F7BCC
/* 813F7B98 | 40 80 00 14 */	bge .L_813F7BAC
/* 813F7B9C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F7BA0 | 41 82 00 1C */	beq .L_813F7BBC
/* 813F7BA4 | 40 80 00 20 */	bge .L_813F7BC4
/* 813F7BA8 | 48 00 00 58 */	b .L_813F7C00
.L_813F7BAC:
/* 813F7BAC | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813F7BB0 | 41 82 00 4C */	beq .L_813F7BFC
/* 813F7BB4 | 40 80 00 4C */	bge .L_813F7C00
/* 813F7BB8 | 48 00 00 1C */	b .L_813F7BD4
.L_813F7BBC:
/* 813F7BBC | 48 00 00 59 */	bl setUseEULA_Init___Q33ipl5scene7SettingFv
/* 813F7BC0 | 48 00 00 40 */	b .L_813F7C00
.L_813F7BC4:
/* 813F7BC4 | 48 00 01 59 */	bl setUseEULA_Start___Q33ipl5scene7SettingFv
/* 813F7BC8 | 48 00 00 38 */	b .L_813F7C00
.L_813F7BCC:
/* 813F7BCC | 48 00 00 F1 */	bl setUseEULA_Cancel___Q33ipl5scene7SettingFv
/* 813F7BD0 | 48 00 00 30 */	b .L_813F7C00
.L_813F7BD4:
/* 813F7BD4 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813F7BD8 | 3C 80 81 65 */	lis r4, lbl_81656F0B@ha
/* 813F7BDC | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813F7BE0 | 38 84 6F 0B */	addi r4, r4, lbl_81656F0B@l
/* 813F7BE4 | 4B F7 44 29 */	bl isSEActive__Q33ipl3snd6SystemFPCc
/* 813F7BE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F7BEC | 40 82 00 14 */	bne .L_813F7C00
/* 813F7BF0 | 38 00 00 04 */	li r0, 0x4
/* 813F7BF4 | 90 1F 00 7C */	stw r0, 0x7c(r31)
/* 813F7BF8 | 48 00 00 08 */	b .L_813F7C00
.L_813F7BFC:
/* 813F7BFC | 48 00 01 A9 */	bl setUseEULA_WaitStopMotor___Q33ipl5scene7SettingFv
.L_813F7C00:
/* 813F7C00 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F7C04 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F7C08 | 7C 08 03 A6 */	mtlr r0
/* 813F7C0C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F7C10 | 4E 80 00 20 */	blr
.endfn setUseEULA___Q33ipl5scene7SettingFv

# .text:0x74A0 | 0x813F7C14 | size: 0xA8
# ipl::scene::Setting::setUseEULA_Init_()
.fn setUseEULA_Init___Q33ipl5scene7SettingFv, global
/* 813F7C14 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F7C18 | 7C 08 02 A6 */	mflr r0
/* 813F7C1C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F7C20 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F7C24 | 7C 7F 1B 78 */	mr r31, r3
/* 813F7C28 | 48 00 3D 1D */	bl getEnableFlag__Q33ipl3ncd10NCDSettingFv
/* 813F7C2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F7C30 | 41 82 00 10 */	beq .L_813F7C40
/* 813F7C34 | 38 00 00 01 */	li r0, 0x1
/* 813F7C38 | 90 1F 00 7C */	stw r0, 0x7c(r31)
/* 813F7C3C | 48 00 00 6C */	b .L_813F7CA8
.L_813F7C40:
/* 813F7C40 | 4B F3 DE 4D */	bl getRegion__Q23ipl6SystemFv
/* 813F7C44 | 28 03 00 02 */	cmplwi r3, 0x2
/* 813F7C48 | 41 82 00 28 */	beq .L_813F7C70
/* 813F7C4C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F7C50 | 38 80 01 70 */	li r4, 0x170
/* 813F7C54 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F7C58 | 38 A0 01 46 */	li r5, 0x146
/* 813F7C5C | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813F7C60 | 38 C0 00 25 */	li r6, 0x25
/* 813F7C64 | 38 E0 00 00 */	li r7, 0x0
/* 813F7C68 | 4B F4 EE 6D */	bl callBtn2__Q23ipl12DialogWindowFUlUlUlb
/* 813F7C6C | 48 00 00 24 */	b .L_813F7C90
.L_813F7C70:
/* 813F7C70 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F7C74 | 38 80 01 74 */	li r4, 0x174
/* 813F7C78 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F7C7C | 38 A0 01 46 */	li r5, 0x146
/* 813F7C80 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813F7C84 | 38 C0 00 25 */	li r6, 0x25
/* 813F7C88 | 38 E0 00 00 */	li r7, 0x0
/* 813F7C8C | 4B F4 EE 49 */	bl callBtn2__Q23ipl12DialogWindowFUlUlUlb
.L_813F7C90:
/* 813F7C90 | 38 60 00 09 */	li r3, 0x9
/* 813F7C94 | 38 00 00 00 */	li r0, 0x0
/* 813F7C98 | 90 7F 00 74 */	stw r3, 0x74(r31)
/* 813F7C9C | 7F E3 FB 78 */	mr r3, r31
/* 813F7CA0 | 90 1F 00 7C */	stw r0, 0x7c(r31)
/* 813F7CA4 | 4B FF 8C 6D */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
.L_813F7CA8:
/* 813F7CA8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F7CAC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F7CB0 | 7C 08 03 A6 */	mtlr r0
/* 813F7CB4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F7CB8 | 4E 80 00 20 */	blr
.endfn setUseEULA_Init___Q33ipl5scene7SettingFv

# .text:0x7548 | 0x813F7CBC | size: 0x60
# ipl::scene::Setting::setUseEULA_Cancel_()
.fn setUseEULA_Cancel___Q33ipl5scene7SettingFv, global
/* 813F7CBC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F7CC0 | 7C 08 02 A6 */	mflr r0
/* 813F7CC4 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813F7CC8 | 38 80 01 6F */	li r4, 0x16f
/* 813F7CCC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F7CD0 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813F7CD4 | 38 C0 01 41 */	li r6, 0x141
/* 813F7CD8 | 38 E0 00 01 */	li r7, 0x1
/* 813F7CDC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F7CE0 | 7C 7F 1B 78 */	mr r31, r3
/* 813F7CE4 | 80 65 00 AC */	lwz r3, 0xac(r5)
/* 813F7CE8 | 38 A0 01 42 */	li r5, 0x142
/* 813F7CEC | 4B F4 ED E9 */	bl callBtn2__Q23ipl12DialogWindowFUlUlUlb
/* 813F7CF0 | 38 60 00 0C */	li r3, 0xc
/* 813F7CF4 | 38 00 00 00 */	li r0, 0x0
/* 813F7CF8 | 90 7F 00 74 */	stw r3, 0x74(r31)
/* 813F7CFC | 7F E3 FB 78 */	mr r3, r31
/* 813F7D00 | 90 1F 00 7C */	stw r0, 0x7c(r31)
/* 813F7D04 | 4B FF 8C 0D */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
/* 813F7D08 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F7D0C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F7D10 | 7C 08 03 A6 */	mtlr r0
/* 813F7D14 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F7D18 | 4E 80 00 20 */	blr
.endfn setUseEULA_Cancel___Q33ipl5scene7SettingFv

# .text:0x75A8 | 0x813F7D1C | size: 0x88
# ipl::scene::Setting::setUseEULA_Start_()
.fn setUseEULA_Start___Q33ipl5scene7SettingFv, global
/* 813F7D1C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F7D20 | 7C 08 02 A6 */	mflr r0
/* 813F7D24 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F7D28 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F7D2C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813F7D30 | 7C 7E 1B 78 */	mr r30, r3
/* 813F7D34 | 48 00 00 CD */	bl validateEULA___Q33ipl5scene7SettingFv
/* 813F7D38 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F7D3C | 41 82 00 50 */	beq .L_813F7D8C
/* 813F7D40 | 3B E0 00 00 */	li r31, 0x0
.L_813F7D44:
/* 813F7D44 | 7F E3 FB 78 */	mr r3, r31
/* 813F7D48 | 4B F3 DC 81 */	bl getController__Q23ipl6SystemFi
/* 813F7D4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F7D50 | 41 82 00 14 */	beq .L_813F7D64
/* 813F7D54 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F7D58 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813F7D5C | 7D 89 03 A6 */	mtctr r12
/* 813F7D60 | 4E 80 04 21 */	bctrl
.L_813F7D64:
/* 813F7D64 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 813F7D68 | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 813F7D6C | 41 80 FF D8 */	blt .L_813F7D44
/* 813F7D70 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F7D74 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F7D78 | 80 63 00 A8 */	lwz r3, 0xa8(r3)
/* 813F7D7C | 4B F6 8D 5D */	bl abort__Q33ipl3bs27ManagerFv
/* 813F7D80 | 4B F3 BF 09 */	bl stopReceiveSchedule__Q23ipl6SystemFv
/* 813F7D84 | 38 00 00 03 */	li r0, 0x3
/* 813F7D88 | 90 1E 00 7C */	stw r0, 0x7c(r30)
.L_813F7D8C:
/* 813F7D8C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F7D90 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F7D94 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813F7D98 | 7C 08 03 A6 */	mtlr r0
/* 813F7D9C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F7DA0 | 4E 80 00 20 */	blr
.endfn setUseEULA_Start___Q33ipl5scene7SettingFv

# .text:0x7630 | 0x813F7DA4 | size: 0x5C
# ipl::scene::Setting::setUseEULA_WaitStopMotor_()
.fn setUseEULA_WaitStopMotor___Q33ipl5scene7SettingFv, global
/* 813F7DA4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F7DA8 | 7C 08 02 A6 */	mflr r0
/* 813F7DAC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F7DB0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F7DB4 | 7C 7F 1B 78 */	mr r31, r3
/* 813F7DB8 | 38 60 00 01 */	li r3, 0x1
/* 813F7DBC | 48 18 19 49 */	bl __WPADReconnect
/* 813F7DC0 | 80 BF 09 24 */	lwz r5, 0x924(r31)
/* 813F7DC4 | 38 00 00 01 */	li r0, 0x1
/* 813F7DC8 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813F7DCC | 38 80 00 14 */	li r4, 0x14
/* 813F7DD0 | 98 05 00 39 */	stb r0, 0x39(r5)
/* 813F7DD4 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813F7DD8 | 4B F7 3D 39 */	bl stopAllSound__Q33ipl3snd6SystemFi
/* 813F7DDC | 38 00 00 05 */	li r0, 0x5
/* 813F7DE0 | 7F E3 FB 78 */	mr r3, r31
/* 813F7DE4 | 90 1F 00 7C */	stw r0, 0x7c(r31)
/* 813F7DE8 | 4B FF 8B 29 */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
/* 813F7DEC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F7DF0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F7DF4 | 7C 08 03 A6 */	mtlr r0
/* 813F7DF8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F7DFC | 4E 80 00 20 */	blr
.endfn setUseEULA_WaitStopMotor___Q33ipl5scene7SettingFv

# .text:0x768C | 0x813F7E00 | size: 0x178
# ipl::scene::Setting::validateEULA_()
.fn validateEULA___Q33ipl5scene7SettingFv, global
/* 813F7E00 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813F7E04 | 7C 08 02 A6 */	mflr r0
/* 813F7E08 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813F7E0C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F7E10 | 48 20 16 B9 */	bl _savegpr_29
/* 813F7E14 | 3B C0 00 00 */	li r30, 0x0
/* 813F7E18 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813F7E1C | 93 C1 00 0C */	stw r30, 0xc(r1)
/* 813F7E20 | 7C 7D 1B 78 */	mr r29, r3
/* 813F7E24 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813F7E28 | 38 E1 00 0C */	addi r7, r1, 0xc
/* 813F7E2C | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 813F7E30 | 80 BD 00 98 */	lwz r5, 0x98(r29)
/* 813F7E34 | 80 DD 00 9C */	lwz r6, 0x9c(r29)
/* 813F7E38 | 4B F6 D8 CD */	bl GetTmdView__Q33ipl7utility6ESMiscFPQ23EGG4HeapUxPP9ESTmdView
/* 813F7E3C | 2C 03 FB FF */	cmpwi r3, -0x401
/* 813F7E40 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 813F7E44 | 7C 65 1B 78 */	mr r5, r3
/* 813F7E48 | 41 82 00 0C */	beq .L_813F7E54
/* 813F7E4C | 2C 03 FF 96 */	cmpwi r3, -0x6a
/* 813F7E50 | 40 82 00 40 */	bne .L_813F7E90
.L_813F7E54:
/* 813F7E54 | 38 60 00 00 */	li r3, 0x0
/* 813F7E58 | 38 00 00 0D */	li r0, 0xd
/* 813F7E5C | 90 7D 00 7C */	stw r3, 0x7c(r29)
/* 813F7E60 | 7F A3 EB 78 */	mr r3, r29
/* 813F7E64 | 90 1D 00 74 */	stw r0, 0x74(r29)
/* 813F7E68 | 4B FF 8A A9 */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
/* 813F7E6C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F7E70 | 38 80 01 80 */	li r4, 0x180
/* 813F7E74 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F7E78 | 38 A0 00 2E */	li r5, 0x2e
/* 813F7E7C | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813F7E80 | 38 C0 00 25 */	li r6, 0x25
/* 813F7E84 | 38 E0 00 00 */	li r7, 0x0
/* 813F7E88 | 4B F4 EC 4D */	bl callBtn2__Q23ipl12DialogWindowFUlUlUlb
/* 813F7E8C | 48 00 00 A8 */	b .L_813F7F34
.L_813F7E90:
/* 813F7E90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F7E94 | 41 82 00 3C */	beq .L_813F7ED0
/* 813F7E98 | 3C C0 81 65 */	lis r6, lbl_81656C7F@ha
/* 813F7E9C | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 813F7EA0 | 38 8D 91 90 */	li r4, lbl_816971D0@sda21
/* 813F7EA4 | 38 E0 10 F1 */	li r7, 0x10f1
/* 813F7EA8 | 38 C6 6C 7F */	addi r6, r6, lbl_81656C7F@l
/* 813F7EAC | 4B F5 E8 4D */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 813F7EB0 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 813F7EB4 | 38 80 00 01 */	li r4, 0x1
/* 813F7EB8 | 38 A0 00 02 */	li r5, 0x2
/* 813F7EBC | 38 C0 00 00 */	li r6, 0x0
/* 813F7EC0 | 38 E0 00 00 */	li r7, 0x0
/* 813F7EC4 | 39 00 FF FF */	li r8, -0x1
/* 813F7EC8 | 4B F5 E6 4D */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
/* 813F7ECC | 48 00 00 68 */	b .L_813F7F34
.L_813F7ED0:
/* 813F7ED0 | 38 00 00 00 */	li r0, 0x0
/* 813F7ED4 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 813F7ED8 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 813F7EDC | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813F7EE0 | 38 80 00 01 */	li r4, 0x1
/* 813F7EE4 | 4B F6 DB D9 */	bl ContentExist__Q33ipl7utility6ESMiscFP9ESTmdViewUlPl
/* 813F7EE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F7EEC | 40 82 00 44 */	bne .L_813F7F30
/* 813F7EF0 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 813F7EF4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813F7EF8 | 41 82 00 38 */	beq .L_813F7F30
/* 813F7EFC | 3C C0 81 65 */	lis r6, lbl_81656C7F@ha
/* 813F7F00 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 813F7F04 | 38 8D 91 90 */	li r4, lbl_816971D0@sda21
/* 813F7F08 | 38 E0 10 FC */	li r7, 0x10fc
/* 813F7F0C | 38 C6 6C 7F */	addi r6, r6, lbl_81656C7F@l
/* 813F7F10 | 4B F5 E7 E9 */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 813F7F14 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 813F7F18 | 38 80 00 01 */	li r4, 0x1
/* 813F7F1C | 38 A0 00 02 */	li r5, 0x2
/* 813F7F20 | 38 C0 00 00 */	li r6, 0x0
/* 813F7F24 | 38 E0 00 00 */	li r7, 0x0
/* 813F7F28 | 39 00 FF FF */	li r8, -0x1
/* 813F7F2C | 4B F5 E5 E9 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_813F7F30:
/* 813F7F30 | 3B C0 00 01 */	li r30, 0x1
.L_813F7F34:
/* 813F7F34 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 813F7F38 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813F7F3C | 41 82 00 20 */	beq .L_813F7F5C
/* 813F7F40 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F7F44 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F7F48 | 80 63 00 2C */	lwz r3, 0x2c(r3)
/* 813F7F4C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F7F50 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813F7F54 | 7D 89 03 A6 */	mtctr r12
/* 813F7F58 | 4E 80 04 21 */	bctrl
.L_813F7F5C:
/* 813F7F5C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F7F60 | 7F C3 F3 78 */	mr r3, r30
/* 813F7F64 | 48 20 15 B1 */	bl _restgpr_29
/* 813F7F68 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813F7F6C | 7C 08 03 A6 */	mtlr r0
/* 813F7F70 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813F7F74 | 4E 80 00 20 */	blr
.endfn validateEULA___Q33ipl5scene7SettingFv

# .text:0x7804 | 0x813F7F78 | size: 0xCC
# ipl::scene::Setting::setUpdate_()
.fn setUpdate___Q33ipl5scene7SettingFv, global
/* 813F7F78 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F7F7C | 7C 08 02 A6 */	mflr r0
/* 813F7F80 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F7F84 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F7F88 | 7C 7F 1B 78 */	mr r31, r3
/* 813F7F8C | 80 03 00 80 */	lwz r0, 0x80(r3)
/* 813F7F90 | 28 00 00 0A */	cmplwi r0, 0xa
/* 813F7F94 | 41 81 00 9C */	bgt .L_813F8030
/* 813F7F98 | 3C 80 81 65 */	lis r4, jumptable_816575B4@ha
/* 813F7F9C | 54 00 10 3A */	slwi r0, r0, 2
/* 813F7FA0 | 38 84 75 B4 */	addi r4, r4, jumptable_816575B4@l
/* 813F7FA4 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 813F7FA8 | 7C 89 03 A6 */	mtctr r4
/* 813F7FAC | 4E 80 04 20 */	bctr
.L_813F7FB0:
/* 813F7FB0 | 48 00 00 95 */	bl setUpdate_Init___Q33ipl5scene7SettingFv
/* 813F7FB4 | 48 00 00 7C */	b .L_813F8030
.L_813F7FB8:
/* 813F7FB8 | 48 00 01 45 */	bl setUpdate_WaitAcceptDialog___Q33ipl5scene7SettingFv
/* 813F7FBC | 48 00 00 74 */	b .L_813F8030
.L_813F7FC0:
/* 813F7FC0 | 48 00 01 61 */	bl setUpdate_ConnectTestStart___Q33ipl5scene7SettingFv
/* 813F7FC4 | 48 00 00 6C */	b .L_813F8030
.L_813F7FC8:
/* 813F7FC8 | 48 00 01 D1 */	bl setUpdate_ConnectTestCreateWait___Q33ipl5scene7SettingFv
/* 813F7FCC | 48 00 00 64 */	b .L_813F8030
.L_813F7FD0:
/* 813F7FD0 | 48 00 02 15 */	bl setUpdate_ConnectTestRun___Q33ipl5scene7SettingFv
/* 813F7FD4 | 48 00 00 5C */	b .L_813F8030
.L_813F7FD8:
/* 813F7FD8 | 48 00 02 A9 */	bl setUpdate_ConnectTestFailed___Q33ipl5scene7SettingFv
/* 813F7FDC | 48 00 00 54 */	b .L_813F8030
.L_813F7FE0:
/* 813F7FE0 | 48 00 03 1D */	bl setUpdate_SuccessDialog___Q33ipl5scene7SettingFv
/* 813F7FE4 | 48 00 00 4C */	b .L_813F8030
.L_813F7FE8:
/* 813F7FE8 | 48 00 03 69 */	bl setUpdate_NoUpdateDialog___Q33ipl5scene7SettingFv
/* 813F7FEC | 48 00 00 44 */	b .L_813F8030
.L_813F7FF0:
/* 813F7FF0 | 48 00 03 D9 */	bl setUpdate_EULAInit___Q33ipl5scene7SettingFv
/* 813F7FF4 | 48 00 00 3C */	b .L_813F8030
.L_813F7FF8:
/* 813F7FF8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F7FFC | 38 80 01 6F */	li r4, 0x16f
/* 813F8000 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F8004 | 38 A0 01 42 */	li r5, 0x142
/* 813F8008 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813F800C | 38 C0 01 41 */	li r6, 0x141
/* 813F8010 | 38 E0 00 01 */	li r7, 0x1
/* 813F8014 | 4B F4 EA C1 */	bl callBtn2__Q23ipl12DialogWindowFUlUlUlb
/* 813F8018 | 38 00 00 0A */	li r0, 0xa
/* 813F801C | 7F E3 FB 78 */	mr r3, r31
/* 813F8020 | 90 1F 00 74 */	stw r0, 0x74(r31)
/* 813F8024 | 4B FF 88 ED */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
/* 813F8028 | 48 00 00 08 */	b .L_813F8030
.L_813F802C:
/* 813F802C | 48 00 04 0D */	bl setUpdate_Reboot___Q33ipl5scene7SettingFv
.L_813F8030:
/* 813F8030 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F8034 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F8038 | 7C 08 03 A6 */	mtlr r0
/* 813F803C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F8040 | 4E 80 00 20 */	blr
.endfn setUpdate___Q33ipl5scene7SettingFv

# .text:0x78D0 | 0x813F8044 | size: 0xB8
# ipl::scene::Setting::setUpdate_Init_()
.fn setUpdate_Init___Q33ipl5scene7SettingFv, global
/* 813F8044 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F8048 | 7C 08 02 A6 */	mflr r0
/* 813F804C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F8050 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F8054 | 7C 7F 1B 78 */	mr r31, r3
/* 813F8058 | 48 00 38 ED */	bl getEnableFlag__Q33ipl3ncd10NCDSettingFv
/* 813F805C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F8060 | 41 82 00 58 */	beq .L_813F80B8
/* 813F8064 | 38 60 00 01 */	li r3, 0x1
/* 813F8068 | 4B F7 91 0D */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F806C | 4B F3 DA 21 */	bl getRegion__Q23ipl6SystemFv
/* 813F8070 | 28 03 00 02 */	cmplwi r3, 0x2
/* 813F8074 | 40 82 00 20 */	bne .L_813F8094
/* 813F8078 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F807C | 38 80 01 77 */	li r4, 0x177
/* 813F8080 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F8084 | 38 A0 01 79 */	li r5, 0x179
/* 813F8088 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813F808C | 4B F4 E7 8D */	bl callBtn1Sml__Q23ipl12DialogWindowFUlUl
/* 813F8090 | 48 00 00 1C */	b .L_813F80AC
.L_813F8094:
/* 813F8094 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F8098 | 38 80 01 76 */	li r4, 0x176
/* 813F809C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F80A0 | 38 A0 01 78 */	li r5, 0x178
/* 813F80A4 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813F80A8 | 4B F4 E7 71 */	bl callBtn1Sml__Q23ipl12DialogWindowFUlUl
.L_813F80AC:
/* 813F80AC | 38 00 00 01 */	li r0, 0x1
/* 813F80B0 | 90 1F 00 80 */	stw r0, 0x80(r31)
/* 813F80B4 | 48 00 00 34 */	b .L_813F80E8
.L_813F80B8:
/* 813F80B8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F80BC | 38 80 01 7F */	li r4, 0x17f
/* 813F80C0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F80C4 | 38 A0 01 46 */	li r5, 0x146
/* 813F80C8 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813F80CC | 38 C0 00 25 */	li r6, 0x25
/* 813F80D0 | 38 E0 00 00 */	li r7, 0x0
/* 813F80D4 | 4B F4 EA 01 */	bl callBtn2__Q23ipl12DialogWindowFUlUlUlb
/* 813F80D8 | 38 00 00 09 */	li r0, 0x9
/* 813F80DC | 7F E3 FB 78 */	mr r3, r31
/* 813F80E0 | 90 1F 00 74 */	stw r0, 0x74(r31)
/* 813F80E4 | 4B FF 88 2D */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
.L_813F80E8:
/* 813F80E8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F80EC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F80F0 | 7C 08 03 A6 */	mtlr r0
/* 813F80F4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F80F8 | 4E 80 00 20 */	blr
.endfn setUpdate_Init___Q33ipl5scene7SettingFv

# .text:0x7988 | 0x813F80FC | size: 0x24
# ipl::scene::Setting::setUpdate_WaitAcceptDialog_()
.fn setUpdate_WaitAcceptDialog___Q33ipl5scene7SettingFv, global
/* 813F80FC | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813F8100 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813F8104 | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 813F8108 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 813F810C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F8110 | 4D 80 00 20 */	bltlr
/* 813F8114 | 38 00 00 02 */	li r0, 0x2
/* 813F8118 | 90 03 00 80 */	stw r0, 0x80(r3)
/* 813F811C | 4E 80 00 20 */	blr
.endfn setUpdate_WaitAcceptDialog___Q33ipl5scene7SettingFv

# .text:0x79AC | 0x813F8120 | size: 0x78
# ipl::scene::Setting::setUpdate_ConnectTestStart_()
.fn setUpdate_ConnectTestStart___Q33ipl5scene7SettingFv, global
/* 813F8120 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F8124 | 7C 08 02 A6 */	mflr r0
/* 813F8128 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813F812C | 38 80 00 19 */	li r4, 0x19
/* 813F8130 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F8134 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813F8138 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F813C | 7C 7F 1B 78 */	mr r31, r3
/* 813F8140 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 813F8144 | 48 01 2F F5 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813F8148 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F814C | 40 82 00 38 */	bne .L_813F8184
/* 813F8150 | 4B F7 90 65 */	bl getFuncResult__Q23www10wiisettingFv
/* 813F8154 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F8158 | 40 82 00 2C */	bne .L_813F8184
/* 813F815C | 7F E3 FB 78 */	mr r3, r31
/* 813F8160 | 48 00 15 91 */	bl waitStart__Q33ipl5scene7SettingFv
/* 813F8164 | 7F E3 FB 78 */	mr r3, r31
/* 813F8168 | 7F E5 FB 78 */	mr r5, r31
/* 813F816C | 38 80 00 19 */	li r4, 0x19
/* 813F8170 | 38 C0 00 00 */	li r6, 0x0
/* 813F8174 | 38 E0 00 00 */	li r7, 0x0
/* 813F8178 | 48 01 1D 11 */	bl fn_81409E88
/* 813F817C | 38 00 00 03 */	li r0, 0x3
/* 813F8180 | 90 1F 00 80 */	stw r0, 0x80(r31)
.L_813F8184:
/* 813F8184 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F8188 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F818C | 7C 08 03 A6 */	mtlr r0
/* 813F8190 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F8194 | 4E 80 00 20 */	blr
.endfn setUpdate_ConnectTestStart___Q33ipl5scene7SettingFv

# .text:0x7A24 | 0x813F8198 | size: 0x4C
# ipl::scene::Setting::setUpdate_ConnectTestCreateWait_()
.fn setUpdate_ConnectTestCreateWait___Q33ipl5scene7SettingFv, global
/* 813F8198 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F819C | 7C 08 02 A6 */	mflr r0
/* 813F81A0 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813F81A4 | 38 80 00 19 */	li r4, 0x19
/* 813F81A8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F81AC | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813F81B0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F81B4 | 7C 7F 1B 78 */	mr r31, r3
/* 813F81B8 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 813F81BC | 48 01 2F 7D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813F81C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F81C4 | 41 82 00 0C */	beq .L_813F81D0
/* 813F81C8 | 38 00 00 04 */	li r0, 0x4
/* 813F81CC | 90 1F 00 80 */	stw r0, 0x80(r31)
.L_813F81D0:
/* 813F81D0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F81D4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F81D8 | 7C 08 03 A6 */	mtlr r0
/* 813F81DC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F81E0 | 4E 80 00 20 */	blr
.endfn setUpdate_ConnectTestCreateWait___Q33ipl5scene7SettingFv

# .text:0x7A70 | 0x813F81E4 | size: 0x9C
# ipl::scene::Setting::setUpdate_ConnectTestRun_()
.fn setUpdate_ConnectTestRun___Q33ipl5scene7SettingFv, global
/* 813F81E4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F81E8 | 7C 08 02 A6 */	mflr r0
/* 813F81EC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F81F0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F81F4 | 7C 7F 1B 78 */	mr r31, r3
/* 813F81F8 | 48 00 16 01 */	bl isWaitPlaying__Q33ipl5scene7SettingFv
/* 813F81FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F8200 | 40 82 00 6C */	bne .L_813F826C
/* 813F8204 | 80 9F 09 28 */	lwz r4, 0x928(r31)
/* 813F8208 | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 813F820C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F8210 | 40 82 00 18 */	bne .L_813F8228
/* 813F8214 | 38 60 00 09 */	li r3, 0x9
/* 813F8218 | 38 00 00 03 */	li r0, 0x3
/* 813F821C | 98 64 00 04 */	stb r3, 0x4(r4)
/* 813F8220 | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813F8224 | 48 00 00 48 */	b .L_813F826C
.L_813F8228:
/* 813F8228 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F822C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F8230 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813F8234 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813F8238 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813F823C | 40 82 00 10 */	bne .L_813F824C
/* 813F8240 | 38 00 00 02 */	li r0, 0x2
/* 813F8244 | 90 1F 00 80 */	stw r0, 0x80(r31)
/* 813F8248 | 48 00 00 24 */	b .L_813F826C
.L_813F824C:
/* 813F824C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813F8250 | 40 82 00 1C */	bne .L_813F826C
/* 813F8254 | 38 60 00 01 */	li r3, 0x1
/* 813F8258 | 4B F7 8F 1D */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F825C | 38 60 00 05 */	li r3, 0x5
/* 813F8260 | 38 00 00 00 */	li r0, 0x0
/* 813F8264 | 90 7F 00 80 */	stw r3, 0x80(r31)
/* 813F8268 | 98 1F 09 2C */	stb r0, 0x92c(r31)
.L_813F826C:
/* 813F826C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F8270 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F8274 | 7C 08 03 A6 */	mtlr r0
/* 813F8278 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F827C | 4E 80 00 20 */	blr
.endfn setUpdate_ConnectTestRun___Q33ipl5scene7SettingFv

# .text:0x7B0C | 0x813F8280 | size: 0x7C
# ipl::scene::Setting::setUpdate_ConnectTestFailed_()
.fn setUpdate_ConnectTestFailed___Q33ipl5scene7SettingFv, global
/* 813F8280 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F8284 | 7C 08 02 A6 */	mflr r0
/* 813F8288 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F828C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F8290 | 7C 7F 1B 78 */	mr r31, r3
/* 813F8294 | 88 03 09 2C */	lbz r0, 0x92c(r3)
/* 813F8298 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F829C | 40 82 00 2C */	bne .L_813F82C8
/* 813F82A0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F82A4 | 38 80 01 6C */	li r4, 0x16c
/* 813F82A8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F82AC | 38 A0 00 01 */	li r5, 0x1
/* 813F82B0 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813F82B4 | 4B F4 E4 45 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 813F82B8 | 88 7F 09 2C */	lbz r3, 0x92c(r31)
/* 813F82BC | 38 03 00 01 */	addi r0, r3, 0x1
/* 813F82C0 | 98 1F 09 2C */	stb r0, 0x92c(r31)
/* 813F82C4 | 48 00 00 24 */	b .L_813F82E8
.L_813F82C8:
/* 813F82C8 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813F82CC | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813F82D0 | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 813F82D4 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 813F82D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F82DC | 41 80 00 0C */	blt .L_813F82E8
/* 813F82E0 | 38 00 00 0A */	li r0, 0xa
/* 813F82E4 | 90 03 00 80 */	stw r0, 0x80(r3)
.L_813F82E8:
/* 813F82E8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F82EC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F82F0 | 7C 08 03 A6 */	mtlr r0
/* 813F82F4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F82F8 | 4E 80 00 20 */	blr
.endfn setUpdate_ConnectTestFailed___Q33ipl5scene7SettingFv

# .text:0x7B88 | 0x813F82FC | size: 0x54
# ipl::scene::Setting::setUpdate_SuccessDialog_()
.fn setUpdate_SuccessDialog___Q33ipl5scene7SettingFv, global
/* 813F82FC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F8300 | 7C 08 02 A6 */	mflr r0
/* 813F8304 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813F8308 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F830C | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813F8310 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F8314 | 7C 7F 1B 78 */	mr r31, r3
/* 813F8318 | 80 64 00 AC */	lwz r3, 0xac(r4)
/* 813F831C | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813F8320 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F8324 | 41 80 00 18 */	blt .L_813F833C
/* 813F8328 | 38 80 01 6A */	li r4, 0x16a
/* 813F832C | 38 A0 00 2E */	li r5, 0x2e
/* 813F8330 | 4B F4 E3 C9 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 813F8334 | 38 00 00 08 */	li r0, 0x8
/* 813F8338 | 90 1F 00 80 */	stw r0, 0x80(r31)
.L_813F833C:
/* 813F833C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F8340 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F8344 | 7C 08 03 A6 */	mtlr r0
/* 813F8348 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F834C | 4E 80 00 20 */	blr
.endfn setUpdate_SuccessDialog___Q33ipl5scene7SettingFv

# .text:0x7BDC | 0x813F8350 | size: 0x78
# ipl::scene::Setting::setUpdate_NoUpdateDialog_()
.fn setUpdate_NoUpdateDialog___Q33ipl5scene7SettingFv, global
/* 813F8350 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F8354 | 7C 08 02 A6 */	mflr r0
/* 813F8358 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813F835C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F8360 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813F8364 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F8368 | 7C 7F 1B 78 */	mr r31, r3
/* 813F836C | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 813F8370 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 813F8374 | 2C 80 00 00 */	cmpwi cr1, r0, 0x0
/* 813F8378 | 41 84 00 3C */	blt cr1, .L_813F83B4
/* 813F837C | 88 03 09 2C */	lbz r0, 0x92c(r3)
/* 813F8380 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F8384 | 40 82 00 24 */	bne .L_813F83A8
/* 813F8388 | 7C 83 23 78 */	mr r3, r4
/* 813F838C | 38 80 01 67 */	li r4, 0x167
/* 813F8390 | 38 A0 00 01 */	li r5, 0x1
/* 813F8394 | 4B F4 E3 65 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 813F8398 | 88 7F 09 2C */	lbz r3, 0x92c(r31)
/* 813F839C | 38 03 00 01 */	addi r0, r3, 0x1
/* 813F83A0 | 98 1F 09 2C */	stb r0, 0x92c(r31)
/* 813F83A4 | 48 00 00 10 */	b .L_813F83B4
.L_813F83A8:
/* 813F83A8 | 41 84 00 0C */	blt cr1, .L_813F83B4
/* 813F83AC | 38 00 00 0A */	li r0, 0xa
/* 813F83B0 | 90 03 00 80 */	stw r0, 0x80(r3)
.L_813F83B4:
/* 813F83B4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F83B8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F83BC | 7C 08 03 A6 */	mtlr r0
/* 813F83C0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F83C4 | 4E 80 00 20 */	blr
.endfn setUpdate_NoUpdateDialog___Q33ipl5scene7SettingFv

# .text:0x7C54 | 0x813F83C8 | size: 0x70
# ipl::scene::Setting::setUpdate_EULAInit_()
.fn setUpdate_EULAInit___Q33ipl5scene7SettingFv, global
/* 813F83C8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F83CC | 7C 08 02 A6 */	mflr r0
/* 813F83D0 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813F83D4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F83D8 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813F83DC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F83E0 | 7C 7F 1B 78 */	mr r31, r3
/* 813F83E4 | 80 64 00 AC */	lwz r3, 0xac(r4)
/* 813F83E8 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813F83EC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F83F0 | 41 80 00 34 */	blt .L_813F8424
/* 813F83F4 | 48 17 23 E9 */	bl fn_8156A7DC
/* 813F83F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F83FC | 41 82 00 10 */	beq .L_813F840C
/* 813F8400 | 38 00 00 0A */	li r0, 0xa
/* 813F8404 | 90 1F 00 80 */	stw r0, 0x80(r31)
/* 813F8408 | 48 00 00 1C */	b .L_813F8424
.L_813F840C:
/* 813F840C | 38 00 00 00 */	li r0, 0x0
/* 813F8410 | 38 60 00 01 */	li r3, 0x1
/* 813F8414 | 90 1F 00 80 */	stw r0, 0x80(r31)
/* 813F8418 | 4B F7 8D 5D */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F841C | 7F E3 FB 78 */	mr r3, r31
/* 813F8420 | 4B FF 84 F1 */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
.L_813F8424:
/* 813F8424 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F8428 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F842C | 7C 08 03 A6 */	mtlr r0
/* 813F8430 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F8434 | 4E 80 00 20 */	blr
.endfn setUpdate_EULAInit___Q33ipl5scene7SettingFv

# .text:0x7CC4 | 0x813F8438 | size: 0x80
# ipl::scene::Setting::setUpdate_Reboot_()
.fn setUpdate_Reboot___Q33ipl5scene7SettingFv, global
/* 813F8438 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F843C | 7C 08 02 A6 */	mflr r0
/* 813F8440 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F8444 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F8448 | 7C 7F 1B 78 */	mr r31, r3
/* 813F844C | 88 03 09 2C */	lbz r0, 0x92c(r3)
/* 813F8450 | 28 00 00 B4 */	cmplwi r0, 0xb4
/* 813F8454 | 40 82 00 44 */	bne .L_813F8498
/* 813F8458 | 80 03 0B 4C */	lwz r0, 0xb4c(r3)
/* 813F845C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813F8460 | 41 82 00 0C */	beq .L_813F846C
/* 813F8464 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813F8468 | 40 82 00 18 */	bne .L_813F8480
.L_813F846C:
/* 813F846C | 38 60 00 01 */	li r3, 0x1
/* 813F8470 | 48 17 22 BD */	bl fn_8156A72C
/* 813F8474 | 38 60 00 01 */	li r3, 0x1
/* 813F8478 | 48 17 22 F9 */	bl fn_8156A770
/* 813F847C | 48 17 14 D1 */	bl fn_8156994C
.L_813F8480:
/* 813F8480 | 38 00 00 01 */	li r0, 0x1
/* 813F8484 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F8488 | 98 1F 0B 5C */	stb r0, 0xb5c(r31)
/* 813F848C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F8490 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 813F8494 | 4B F5 E4 45 */	bl reset__Q23ipl12ResetHandlerFv
.L_813F8498:
/* 813F8498 | 88 7F 09 2C */	lbz r3, 0x92c(r31)
/* 813F849C | 38 03 00 01 */	addi r0, r3, 0x1
/* 813F84A0 | 98 1F 09 2C */	stb r0, 0x92c(r31)
/* 813F84A4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F84A8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F84AC | 7C 08 03 A6 */	mtlr r0
/* 813F84B0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F84B4 | 4E 80 00 20 */	blr
.endfn setUpdate_Reboot___Q33ipl5scene7SettingFv

# .text:0x7D44 | 0x813F84B8 | size: 0x60
# ipl::scene::Setting::getProfileID()
.fn getProfileID__Q33ipl5scene7SettingFv, global
/* 813F84B8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F84BC | 7C 08 02 A6 */	mflr r0
/* 813F84C0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F84C4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F84C8 | 80 03 00 80 */	lwz r0, 0x80(r3)
/* 813F84CC | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813F84D0 | 41 80 00 28 */	blt .L_813F84F8
/* 813F84D4 | 48 00 30 21 */	bl getUseProfileID__Q33ipl3ncd10NCDSettingFv
/* 813F84D8 | 7C 7F 1B 78 */	mr r31, r3
/* 813F84DC | 54 63 06 3E */	clrlwi r3, r3, 24
/* 813F84E0 | 48 00 1B 41 */	bl initSetID__Q33ipl3ncd10NCDSettingFUs
/* 813F84E4 | 57 E0 06 3E */	clrlwi r0, r31, 24
/* 813F84E8 | 28 00 00 03 */	cmplwi r0, 0x3
/* 813F84EC | 40 82 00 14 */	bne .L_813F8500
/* 813F84F0 | 3B E0 00 00 */	li r31, 0x0
/* 813F84F4 | 48 00 00 0C */	b .L_813F8500
.L_813F84F8:
/* 813F84F8 | 48 00 2F D5 */	bl getID__Q33ipl3ncd10NCDSettingFv
/* 813F84FC | 7C 7F 1B 78 */	mr r31, r3
.L_813F8500:
/* 813F8500 | 7F E3 FB 78 */	mr r3, r31
/* 813F8504 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F8508 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F850C | 7C 08 03 A6 */	mtlr r0
/* 813F8510 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F8514 | 4E 80 00 20 */	blr
.endfn getProfileID__Q33ipl5scene7SettingFv

# .text:0x7DA4 | 0x813F8518 | size: 0x8
# ipl::scene::Setting::getUpdateTiming()
.fn getUpdateTiming__Q33ipl5scene7SettingFv, global
/* 813F8518 | 80 63 00 58 */	lwz r3, 0x58(r3)
/* 813F851C | 4E 80 00 20 */	blr
.endfn getUpdateTiming__Q33ipl5scene7SettingFv

# .text:0x7DAC | 0x813F8520 | size: 0x1A8
# ipl::scene::Setting::setConnectTestResult(int, int, bool, int)
.fn setConnectTestResult__Q33ipl5scene7SettingFiibi, global
/* 813F8520 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813F8524 | 7C 08 02 A6 */	mflr r0
/* 813F8528 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813F852C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F8530 | 48 20 0F 99 */	bl _savegpr_29
/* 813F8534 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 813F8538 | 90 E3 09 30 */	stw r7, 0x930(r3)
/* 813F853C | 7C 7F 1B 78 */	mr r31, r3
/* 813F8540 | 7C 9D 23 78 */	mr r29, r4
/* 813F8544 | 7C BE 2B 78 */	mr r30, r5
/* 813F8548 | 40 82 00 24 */	bne .L_813F856C
/* 813F854C | 2C 04 00 03 */	cmpwi r4, 0x3
/* 813F8550 | 40 82 00 1C */	bne .L_813F856C
/* 813F8554 | 4B FF 83 BD */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
/* 813F8558 | 38 60 00 00 */	li r3, 0x0
/* 813F855C | 38 00 00 01 */	li r0, 0x1
/* 813F8560 | 90 7F 00 58 */	stw r3, 0x58(r31)
/* 813F8564 | 98 1F 0B 5C */	stb r0, 0xb5c(r31)
/* 813F8568 | 48 00 01 48 */	b .L_813F86B0
.L_813F856C:
/* 813F856C | 80 C3 09 28 */	lwz r6, 0x928(r3)
/* 813F8570 | 88 06 00 04 */	lbz r0, 0x4(r6)
/* 813F8574 | 28 00 00 09 */	cmplwi r0, 0x9
/* 813F8578 | 40 82 00 DC */	bne .L_813F8654
/* 813F857C | 2C 04 00 02 */	cmpwi r4, 0x2
/* 813F8580 | 41 82 00 60 */	beq .L_813F85E0
/* 813F8584 | 40 80 00 10 */	bge .L_813F8594
/* 813F8588 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 813F858C | 40 80 00 14 */	bge .L_813F85A0
/* 813F8590 | 48 00 01 20 */	b .L_813F86B0
.L_813F8594:
/* 813F8594 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 813F8598 | 40 80 01 18 */	bge .L_813F86B0
/* 813F859C | 48 00 00 68 */	b .L_813F8604
.L_813F85A0:
/* 813F85A0 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813F85A4 | 38 E0 00 64 */	li r7, 0x64
/* 813F85A8 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813F85AC | 38 80 00 06 */	li r4, 0x6
/* 813F85B0 | 80 C5 00 AC */	lwz r6, 0xac(r5)
/* 813F85B4 | 38 A0 00 00 */	li r5, 0x0
/* 813F85B8 | 38 00 00 54 */	li r0, 0x54
/* 813F85BC | 90 E6 00 3C */	stw r7, 0x3c(r6)
/* 813F85C0 | 90 83 00 80 */	stw r4, 0x80(r3)
/* 813F85C4 | 80 83 09 28 */	lwz r4, 0x928(r3)
/* 813F85C8 | 90 A3 00 58 */	stw r5, 0x58(r3)
/* 813F85CC | 38 60 00 02 */	li r3, 0x2
/* 813F85D0 | 98 04 00 04 */	stb r0, 0x4(r4)
/* 813F85D4 | 48 17 22 01 */	bl fn_8156A7D4
/* 813F85D8 | 48 17 13 75 */	bl fn_8156994C
/* 813F85DC | 48 00 00 D4 */	b .L_813F86B0
.L_813F85E0:
/* 813F85E0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F85E4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F85E8 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813F85EC | 4B F4 F3 19 */	bl terminate__Q23ipl12DialogWindowFv
/* 813F85F0 | 38 00 00 06 */	li r0, 0x6
/* 813F85F4 | 80 7F 09 28 */	lwz r3, 0x928(r31)
/* 813F85F8 | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813F85FC | 93 C3 00 00 */	stw r30, 0x0(r3)
/* 813F8600 | 48 00 00 B0 */	b .L_813F86B0
.L_813F8604:
/* 813F8604 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F8608 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F860C | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813F8610 | 4B F4 F2 F5 */	bl terminate__Q23ipl12DialogWindowFv
/* 813F8614 | 48 17 21 21 */	bl fn_8156A734
/* 813F8618 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F861C | 40 82 00 10 */	bne .L_813F862C
/* 813F8620 | 38 00 00 06 */	li r0, 0x6
/* 813F8624 | 90 1F 00 80 */	stw r0, 0x80(r31)
/* 813F8628 | 48 00 00 14 */	b .L_813F863C
.L_813F862C:
/* 813F862C | 38 60 00 07 */	li r3, 0x7
/* 813F8630 | 38 00 00 00 */	li r0, 0x0
/* 813F8634 | 90 7F 00 80 */	stw r3, 0x80(r31)
/* 813F8638 | 98 1F 09 2C */	stb r0, 0x92c(r31)
.L_813F863C:
/* 813F863C | 38 00 00 00 */	li r0, 0x0
/* 813F8640 | 80 7F 09 28 */	lwz r3, 0x928(r31)
/* 813F8644 | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813F8648 | 38 00 00 54 */	li r0, 0x54
/* 813F864C | 98 03 00 04 */	stb r0, 0x4(r3)
/* 813F8650 | 48 00 00 60 */	b .L_813F86B0
.L_813F8654:
/* 813F8654 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 813F8658 | 40 82 00 1C */	bne .L_813F8674
/* 813F865C | 38 00 00 00 */	li r0, 0x0
/* 813F8660 | 38 60 00 01 */	li r3, 0x1
/* 813F8664 | 90 06 00 00 */	stw r0, 0x0(r6)
/* 813F8668 | 48 00 22 C9 */	bl setConnectTestFlag__Q33ipl3ncd10NCDSettingFb
/* 813F866C | 4B F3 B6 F1 */	bl reloadDownloadTask__Q23ipl6SystemFv
/* 813F8670 | 48 00 00 30 */	b .L_813F86A0
.L_813F8674:
/* 813F8674 | 80 03 00 80 */	lwz r0, 0x80(r3)
/* 813F8678 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F867C | 40 82 00 0C */	bne .L_813F8688
/* 813F8680 | 38 00 00 02 */	li r0, 0x2
/* 813F8684 | 90 03 00 74 */	stw r0, 0x74(r3)
.L_813F8688:
/* 813F8688 | 80 83 09 28 */	lwz r4, 0x928(r3)
/* 813F868C | 7F E3 FB 78 */	mr r3, r31
/* 813F8690 | 90 A4 00 00 */	stw r5, 0x0(r4)
/* 813F8694 | 48 00 02 E1 */	bl makeErrorMessage__Q33ipl5scene7SettingFv
/* 813F8698 | 38 60 00 00 */	li r3, 0x0
/* 813F869C | 48 00 22 95 */	bl setConnectTestFlag__Q33ipl3ncd10NCDSettingFb
.L_813F86A0:
/* 813F86A0 | 7F E3 FB 78 */	mr r3, r31
/* 813F86A4 | 48 00 10 D9 */	bl waitFinish__Q33ipl5scene7SettingFv
/* 813F86A8 | 57 A3 06 3E */	clrlwi r3, r29, 24
/* 813F86AC | 4B F7 8A C9 */	bl setFuncResult__Q23www10wiisettingFUc
.L_813F86B0:
/* 813F86B0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F86B4 | 48 20 0E 61 */	bl _restgpr_29
/* 813F86B8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813F86BC | 7C 08 03 A6 */	mtlr r0
/* 813F86C0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813F86C4 | 4E 80 00 20 */	blr
.endfn setConnectTestResult__Q33ipl5scene7SettingFiibi

# .text:0x7F54 | 0x813F86C8 | size: 0x2AC
# ipl::scene::Setting::setNUP()
.fn setNUP__Q33ipl5scene7SettingFv, global
/* 813F86C8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F86CC | 7C 08 02 A6 */	mflr r0
/* 813F86D0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F86D4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F86D8 | 7C 7F 1B 78 */	mr r31, r3
/* 813F86DC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813F86E0 | 80 03 00 58 */	lwz r0, 0x58(r3)
/* 813F86E4 | 28 00 00 0B */	cmplwi r0, 0xb
/* 813F86E8 | 41 81 02 74 */	bgt .L_813F895C
/* 813F86EC | 3C 80 81 65 */	lis r4, jumptable_816575E0@ha
/* 813F86F0 | 54 00 10 3A */	slwi r0, r0, 2
/* 813F86F4 | 38 84 75 E0 */	addi r4, r4, jumptable_816575E0@l
/* 813F86F8 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 813F86FC | 7C 89 03 A6 */	mtctr r4
/* 813F8700 | 4E 80 04 20 */	bctr
.L_813F8704:
/* 813F8704 | 48 00 08 2D */	bl makeSupportCode__Q33ipl5scene7SettingFv
/* 813F8708 | 38 00 00 01 */	li r0, 0x1
/* 813F870C | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813F8710 | 48 00 02 4C */	b .L_813F895C
.L_813F8714:
/* 813F8714 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813F8718 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813F871C | 80 7E 00 AC */	lwz r3, 0xac(r30)
/* 813F8720 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813F8724 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813F8728 | 40 82 00 40 */	bne .L_813F8768
/* 813F872C | 4B F3 D3 61 */	bl getRegion__Q23ipl6SystemFv
/* 813F8730 | 28 03 00 02 */	cmplwi r3, 0x2
/* 813F8734 | 40 82 00 18 */	bne .L_813F874C
/* 813F8738 | 80 7E 00 AC */	lwz r3, 0xac(r30)
/* 813F873C | 38 80 01 77 */	li r4, 0x177
/* 813F8740 | 38 A0 01 79 */	li r5, 0x179
/* 813F8744 | 4B F4 E0 D5 */	bl callBtn1Sml__Q23ipl12DialogWindowFUlUl
/* 813F8748 | 48 00 00 14 */	b .L_813F875C
.L_813F874C:
/* 813F874C | 80 7E 00 AC */	lwz r3, 0xac(r30)
/* 813F8750 | 38 80 01 76 */	li r4, 0x176
/* 813F8754 | 38 A0 01 78 */	li r5, 0x178
/* 813F8758 | 4B F4 E0 C1 */	bl callBtn1Sml__Q23ipl12DialogWindowFUlUl
.L_813F875C:
/* 813F875C | 38 00 00 02 */	li r0, 0x2
/* 813F8760 | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813F8764 | 48 00 01 F8 */	b .L_813F895C
.L_813F8768:
/* 813F8768 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813F876C | 40 82 01 F0 */	bne .L_813F895C
/* 813F8770 | 38 60 00 02 */	li r3, 0x2
/* 813F8774 | 4B F7 8A 01 */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F8778 | 38 00 00 0A */	li r0, 0xa
/* 813F877C | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813F8780 | 48 00 01 DC */	b .L_813F895C
.L_813F8784:
/* 813F8784 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813F8788 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813F878C | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 813F8790 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 813F8794 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F8798 | 41 80 01 C4 */	blt .L_813F895C
/* 813F879C | 38 00 00 03 */	li r0, 0x3
/* 813F87A0 | 90 03 00 58 */	stw r0, 0x58(r3)
/* 813F87A4 | 48 00 01 B8 */	b .L_813F895C
.L_813F87A8:
/* 813F87A8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F87AC | 38 80 01 62 */	li r4, 0x162
/* 813F87B0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F87B4 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813F87B8 | 4B F4 E8 89 */	bl callBtnPrg__Q23ipl12DialogWindowFUl
/* 813F87BC | 38 00 00 04 */	li r0, 0x4
/* 813F87C0 | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813F87C4 | 48 00 01 98 */	b .L_813F895C
.L_813F87C8:
/* 813F87C8 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813F87CC | 38 80 00 19 */	li r4, 0x19
/* 813F87D0 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813F87D4 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813F87D8 | 48 01 29 61 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813F87DC | 81 03 2B 6C */	lwz r8, 0x2b6c(r3)
/* 813F87E0 | 38 80 00 64 */	li r4, 0x64
/* 813F87E4 | 80 E3 2B 68 */	lwz r7, 0x2b68(r3)
/* 813F87E8 | 7C 08 20 16 */	mulhwu r0, r8, r4
/* 813F87EC | 80 A3 2B 70 */	lwz r5, 0x2b70(r3)
/* 813F87F0 | 80 C3 2B 74 */	lwz r6, 0x2b74(r3)
/* 813F87F4 | 7C 67 21 D6 */	mullw r3, r7, r4
/* 813F87F8 | 1C 88 00 64 */	mulli r4, r8, 0x64
/* 813F87FC | 7C 60 1A 14 */	add r3, r0, r3
/* 813F8800 | 48 20 0D 25 */	bl __div2u
/* 813F8804 | 80 7F 00 AC */	lwz r3, 0xac(r31)
/* 813F8808 | 90 83 00 3C */	stw r4, 0x3c(r3)
/* 813F880C | 48 00 01 50 */	b .L_813F895C
.L_813F8810:
/* 813F8810 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F8814 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F8818 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813F881C | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813F8820 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F8824 | 41 80 01 38 */	blt .L_813F895C
/* 813F8828 | 38 80 01 63 */	li r4, 0x163
/* 813F882C | 38 A0 00 B4 */	li r5, 0xb4
/* 813F8830 | 38 C0 00 00 */	li r6, 0x0
/* 813F8834 | 4B F4 DC 19 */	bl callBtn0__Q23ipl12DialogWindowFUlUlb
/* 813F8838 | 38 00 00 08 */	li r0, 0x8
/* 813F883C | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813F8840 | 48 00 01 1C */	b .L_813F895C
.L_813F8844:
/* 813F8844 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813F8848 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813F884C | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 813F8850 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 813F8854 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F8858 | 41 80 01 04 */	blt .L_813F895C
/* 813F885C | 48 00 01 19 */	bl makeErrorMessage__Q33ipl5scene7SettingFv
/* 813F8860 | 38 00 00 0B */	li r0, 0xb
/* 813F8864 | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813F8868 | 48 00 00 F4 */	b .L_813F895C
.L_813F886C:
/* 813F886C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F8870 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F8874 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813F8878 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813F887C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F8880 | 41 80 00 DC */	blt .L_813F895C
/* 813F8884 | 38 80 01 67 */	li r4, 0x167
/* 813F8888 | 38 A0 00 01 */	li r5, 0x1
/* 813F888C | 4B F4 DE 6D */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 813F8890 | 38 00 00 08 */	li r0, 0x8
/* 813F8894 | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813F8898 | 48 00 00 C4 */	b .L_813F895C
.L_813F889C:
/* 813F889C | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813F88A0 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813F88A4 | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 813F88A8 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 813F88AC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F88B0 | 41 80 00 AC */	blt .L_813F895C
/* 813F88B4 | 80 A3 0B 4C */	lwz r5, 0xb4c(r3)
/* 813F88B8 | 38 80 00 09 */	li r4, 0x9
/* 813F88BC | 38 00 00 00 */	li r0, 0x0
/* 813F88C0 | 90 83 00 58 */	stw r4, 0x58(r3)
/* 813F88C4 | 2C 05 00 02 */	cmpwi r5, 0x2
/* 813F88C8 | 98 03 09 2C */	stb r0, 0x92c(r3)
/* 813F88CC | 41 82 00 0C */	beq .L_813F88D8
/* 813F88D0 | 2C 05 00 05 */	cmpwi r5, 0x5
/* 813F88D4 | 40 82 00 88 */	bne .L_813F895C
.L_813F88D8:
/* 813F88D8 | 38 60 00 01 */	li r3, 0x1
/* 813F88DC | 48 17 1E 51 */	bl fn_8156A72C
/* 813F88E0 | 38 60 00 01 */	li r3, 0x1
/* 813F88E4 | 48 17 1E 8D */	bl fn_8156A770
/* 813F88E8 | 48 17 10 65 */	bl fn_8156994C
/* 813F88EC | 48 00 00 70 */	b .L_813F895C
.L_813F88F0:
/* 813F88F0 | 88 03 09 2C */	lbz r0, 0x92c(r3)
/* 813F88F4 | 28 00 00 B4 */	cmplwi r0, 0xb4
/* 813F88F8 | 40 82 00 1C */	bne .L_813F8914
/* 813F88FC | 38 00 00 01 */	li r0, 0x1
/* 813F8900 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813F8904 | 98 03 0B 5C */	stb r0, 0xb5c(r3)
/* 813F8908 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813F890C | 80 64 00 9C */	lwz r3, 0x9c(r4)
/* 813F8910 | 4B F5 DF C9 */	bl reset__Q23ipl12ResetHandlerFv
.L_813F8914:
/* 813F8914 | 88 7F 09 2C */	lbz r3, 0x92c(r31)
/* 813F8918 | 38 03 00 01 */	addi r0, r3, 0x1
/* 813F891C | 98 1F 09 2C */	stb r0, 0x92c(r31)
/* 813F8920 | 48 00 00 3C */	b .L_813F895C
.L_813F8924:
/* 813F8924 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813F8928 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813F892C | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 813F8930 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 813F8934 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F8938 | 41 80 00 24 */	blt .L_813F895C
/* 813F893C | 38 00 00 05 */	li r0, 0x5
/* 813F8940 | 80 83 09 28 */	lwz r4, 0x928(r3)
/* 813F8944 | 90 03 00 80 */	stw r0, 0x80(r3)
/* 813F8948 | 38 A0 00 54 */	li r5, 0x54
/* 813F894C | 38 00 00 00 */	li r0, 0x0
/* 813F8950 | 98 A4 00 04 */	stb r5, 0x4(r4)
/* 813F8954 | 90 03 00 58 */	stw r0, 0x58(r3)
/* 813F8958 | 98 03 09 2C */	stb r0, 0x92c(r3)
.L_813F895C:
/* 813F895C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F8960 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F8964 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813F8968 | 7C 08 03 A6 */	mtlr r0
/* 813F896C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F8970 | 4E 80 00 20 */	blr
.endfn setNUP__Q33ipl5scene7SettingFv

# .text:0x8200 | 0x813F8974 | size: 0x214
# ipl::scene::Setting::makeErrorMessage()
.fn makeErrorMessage__Q33ipl5scene7SettingFv, global
/* 813F8974 | 94 21 FD 50 */	stwu r1, -0x2b0(r1)
/* 813F8978 | 7C 08 02 A6 */	mflr r0
/* 813F897C | 90 01 02 B4 */	stw r0, 0x2b4(r1)
/* 813F8980 | 39 61 02 B0 */	addi r11, r1, 0x2b0
/* 813F8984 | 48 20 0B 3D */	bl _savegpr_27
/* 813F8988 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 813F898C | 7C 7F 1B 78 */	mr r31, r3
/* 813F8990 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 813F8994 | 38 80 01 90 */	li r4, 0x190
/* 813F8998 | 80 7D 00 80 */	lwz r3, 0x80(r29)
/* 813F899C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813F89A0 | 4B F4 5E 1D */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813F89A4 | 7C 7E 1B 78 */	mr r30, r3
/* 813F89A8 | 7F E3 FB 78 */	mr r3, r31
/* 813F89AC | 48 00 01 DD */	bl getErrorNum__Q33ipl5scene7SettingFv
/* 813F89B0 | 80 BD 00 80 */	lwz r5, 0x80(r29)
/* 813F89B4 | 7C 64 1B 78 */	mr r4, r3
/* 813F89B8 | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 813F89BC | 4B F4 5E 01 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813F89C0 | 80 BF 09 28 */	lwz r5, 0x928(r31)
/* 813F89C4 | 3C 80 81 65 */	lis r4, lbl_81657610@ha
/* 813F89C8 | 7C 7C 1B 78 */	mr r28, r3
/* 813F89CC | 83 65 00 00 */	lwz r27, 0x0(r5)
/* 813F89D0 | 38 64 76 10 */	addi r3, r4, lbl_81657610@l
/* 813F89D4 | 7F 64 DB 78 */	mr r4, r27
/* 813F89D8 | 4C C6 31 82 */	crclr cr1eq
/* 813F89DC | 48 13 5C C5 */	bl OSReport
/* 813F89E0 | 7F 66 DB 78 */	mr r6, r27
/* 813F89E4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F89E8 | 38 80 00 08 */	li r4, 0x8
/* 813F89EC | 38 AD 91 94 */	li r5, lbl_816971D4@sda21
/* 813F89F0 | 4C C6 31 82 */	crclr cr1eq
/* 813F89F4 | 48 20 FB DD */	bl swprintf
/* 813F89F8 | 38 61 00 18 */	addi r3, r1, 0x18
/* 813F89FC | 38 80 00 00 */	li r4, 0x0
/* 813F8A00 | 38 A0 02 80 */	li r5, 0x280
/* 813F8A04 | 4B F3 79 31 */	bl memset
/* 813F8A08 | 7F C3 F3 78 */	mr r3, r30
/* 813F8A0C | 48 20 FC A1 */	bl fn_816086AC
/* 813F8A10 | 7C 7B 1B 78 */	mr r27, r3
/* 813F8A14 | 7F C4 F3 78 */	mr r4, r30
/* 813F8A18 | 7F 65 DB 78 */	mr r5, r27
/* 813F8A1C | 38 61 00 18 */	addi r3, r1, 0x18
/* 813F8A20 | 48 20 FD 35 */	bl fn_81608754
/* 813F8A24 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F8A28 | 48 20 FC 85 */	bl fn_816086AC
/* 813F8A2C | 7C 7E 1B 78 */	mr r30, r3
/* 813F8A30 | 57 60 08 3C */	slwi r0, r27, 1
/* 813F8A34 | 38 61 00 18 */	addi r3, r1, 0x18
/* 813F8A38 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813F8A3C | 7F C5 F3 78 */	mr r5, r30
/* 813F8A40 | 7C 63 02 14 */	add r3, r3, r0
/* 813F8A44 | 48 20 FD 11 */	bl fn_81608754
/* 813F8A48 | 7F 83 E3 78 */	mr r3, r28
/* 813F8A4C | 7F 7B F2 14 */	add r27, r27, r30
/* 813F8A50 | 48 20 FC 5D */	bl fn_816086AC
/* 813F8A54 | 7C 7E 1B 78 */	mr r30, r3
/* 813F8A58 | 57 60 08 3C */	slwi r0, r27, 1
/* 813F8A5C | 38 61 00 18 */	addi r3, r1, 0x18
/* 813F8A60 | 7F 84 E3 78 */	mr r4, r28
/* 813F8A64 | 7F C5 F3 78 */	mr r5, r30
/* 813F8A68 | 7C 63 02 14 */	add r3, r3, r0
/* 813F8A6C | 48 20 FC E9 */	bl fn_81608754
/* 813F8A70 | 7F 7B F2 14 */	add r27, r27, r30
/* 813F8A74 | 3B C1 00 18 */	addi r30, r1, 0x18
/* 813F8A78 | 57 60 08 3C */	slwi r0, r27, 1
/* 813F8A7C | 38 60 00 00 */	li r3, 0x0
/* 813F8A80 | 7C 7E 03 2E */	sthx r3, r30, r0
/* 813F8A84 | 80 7F 09 28 */	lwz r3, 0x928(r31)
/* 813F8A88 | 88 03 00 04 */	lbz r0, 0x4(r3)
/* 813F8A8C | 28 00 00 09 */	cmplwi r0, 0x9
/* 813F8A90 | 40 82 00 60 */	bne .L_813F8AF0
/* 813F8A94 | 4B F3 CF F9 */	bl getRegion__Q23ipl6SystemFv
/* 813F8A98 | 28 03 00 02 */	cmplwi r3, 0x2
/* 813F8A9C | 40 82 00 38 */	bne .L_813F8AD4
/* 813F8AA0 | 4B F3 CF 4D */	bl getLanguage__Q23ipl6SystemFv
/* 813F8AA4 | 28 03 00 02 */	cmplwi r3, 0x2
/* 813F8AA8 | 40 82 00 2C */	bne .L_813F8AD4
/* 813F8AAC | 7F E3 FB 78 */	mr r3, r31
/* 813F8AB0 | 48 00 00 D9 */	bl getErrorNum__Q33ipl5scene7SettingFv
/* 813F8AB4 | 28 03 01 B6 */	cmplwi r3, 0x1b6
/* 813F8AB8 | 40 82 00 1C */	bne .L_813F8AD4
/* 813F8ABC | 80 7D 00 AC */	lwz r3, 0xac(r29)
/* 813F8AC0 | 7F C4 F3 78 */	mr r4, r30
/* 813F8AC4 | C0 22 88 38 */	lfs f1, lbl_81694C38@sda21(r0)
/* 813F8AC8 | 38 A0 00 2E */	li r5, 0x2e
/* 813F8ACC | 4B F4 DE 6D */	bl iplDialogWindow_81346938
/* 813F8AD0 | 48 00 00 A0 */	b .L_813F8B70
.L_813F8AD4:
/* 813F8AD4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F8AD8 | 38 81 00 18 */	addi r4, r1, 0x18
/* 813F8ADC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F8AE0 | 38 A0 00 2E */	li r5, 0x2e
/* 813F8AE4 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813F8AE8 | 4B F4 DD BD */	bl callBtn1__Q23ipl12DialogWindowFPCwUl
/* 813F8AEC | 48 00 00 84 */	b .L_813F8B70
.L_813F8AF0:
/* 813F8AF0 | 80 1F 00 80 */	lwz r0, 0x80(r31)
/* 813F8AF4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F8AF8 | 40 82 00 60 */	bne .L_813F8B58
/* 813F8AFC | 4B F3 CF 91 */	bl getRegion__Q23ipl6SystemFv
/* 813F8B00 | 28 03 00 02 */	cmplwi r3, 0x2
/* 813F8B04 | 40 82 00 38 */	bne .L_813F8B3C
/* 813F8B08 | 4B F3 CE E5 */	bl getLanguage__Q23ipl6SystemFv
/* 813F8B0C | 28 03 00 02 */	cmplwi r3, 0x2
/* 813F8B10 | 40 82 00 2C */	bne .L_813F8B3C
/* 813F8B14 | 7F E3 FB 78 */	mr r3, r31
/* 813F8B18 | 48 00 00 71 */	bl getErrorNum__Q33ipl5scene7SettingFv
/* 813F8B1C | 28 03 01 B6 */	cmplwi r3, 0x1b6
/* 813F8B20 | 40 82 00 1C */	bne .L_813F8B3C
/* 813F8B24 | 80 7D 00 AC */	lwz r3, 0xac(r29)
/* 813F8B28 | 7F C4 F3 78 */	mr r4, r30
/* 813F8B2C | C0 22 88 38 */	lfs f1, lbl_81694C38@sda21(r0)
/* 813F8B30 | 38 A0 00 2E */	li r5, 0x2e
/* 813F8B34 | 4B F4 DE 05 */	bl iplDialogWindow_81346938
/* 813F8B38 | 48 00 00 38 */	b .L_813F8B70
.L_813F8B3C:
/* 813F8B3C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F8B40 | 38 81 00 18 */	addi r4, r1, 0x18
/* 813F8B44 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F8B48 | 38 A0 00 2E */	li r5, 0x2e
/* 813F8B4C | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813F8B50 | 4B F4 DD 55 */	bl callBtn1__Q23ipl12DialogWindowFPCwUl
/* 813F8B54 | 48 00 00 1C */	b .L_813F8B70
.L_813F8B58:
/* 813F8B58 | 80 7D 00 AC */	lwz r3, 0xac(r29)
/* 813F8B5C | 7F C4 F3 78 */	mr r4, r30
/* 813F8B60 | 38 A0 01 71 */	li r5, 0x171
/* 813F8B64 | 38 C0 00 25 */	li r6, 0x25
/* 813F8B68 | 38 E0 00 00 */	li r7, 0x0
/* 813F8B6C | 4B F4 E2 1D */	bl callBtn2__Q23ipl12DialogWindowFPCwUlUlb
.L_813F8B70:
/* 813F8B70 | 39 61 02 B0 */	addi r11, r1, 0x2b0
/* 813F8B74 | 48 20 09 99 */	bl _restgpr_27
/* 813F8B78 | 80 01 02 B4 */	lwz r0, 0x2b4(r1)
/* 813F8B7C | 7C 08 03 A6 */	mtlr r0
/* 813F8B80 | 38 21 02 B0 */	addi r1, r1, 0x2b0
/* 813F8B84 | 4E 80 00 20 */	blr
.endfn makeErrorMessage__Q33ipl5scene7SettingFv

# .text:0x8414 | 0x813F8B88 | size: 0x3A8
# ipl::scene::Setting::getErrorNum()
.fn getErrorNum__Q33ipl5scene7SettingFv, global
/* 813F8B88 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F8B8C | 7C 08 02 A6 */	mflr r0
/* 813F8B90 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F8B94 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F8B98 | 7C 7F 1B 78 */	mr r31, r3
/* 813F8B9C | 4B F3 CE F1 */	bl getRegion__Q23ipl6SystemFv
/* 813F8BA0 | 28 03 00 02 */	cmplwi r3, 0x2
/* 813F8BA4 | 41 82 01 C0 */	beq .L_813F8D64
/* 813F8BA8 | 80 9F 09 28 */	lwz r4, 0x928(r31)
/* 813F8BAC | 80 A4 00 00 */	lwz r5, 0x0(r4)
/* 813F8BB0 | 2C 05 7D 01 */	cmpwi r5, 0x7d01
/* 813F8BB4 | 40 82 00 0C */	bne .L_813F8BC0
/* 813F8BB8 | 38 60 01 91 */	li r3, 0x191
/* 813F8BBC | 48 00 03 60 */	b .L_813F8F1C
.L_813F8BC0:
/* 813F8BC0 | 2C 05 7D 02 */	cmpwi r5, 0x7d02
/* 813F8BC4 | 40 82 00 0C */	bne .L_813F8BD0
/* 813F8BC8 | 38 60 01 92 */	li r3, 0x192
/* 813F8BCC | 48 00 03 50 */	b .L_813F8F1C
.L_813F8BD0:
/* 813F8BD0 | 2C 05 7D 03 */	cmpwi r5, 0x7d03
/* 813F8BD4 | 40 82 00 0C */	bne .L_813F8BE0
/* 813F8BD8 | 38 60 01 93 */	li r3, 0x193
/* 813F8BDC | 48 00 03 40 */	b .L_813F8F1C
.L_813F8BE0:
/* 813F8BE0 | 3C 80 00 01 */	lis r4, 0x1
/* 813F8BE4 | 38 04 80 E8 */	subi r0, r4, 0x7f18
/* 813F8BE8 | 7C 05 00 00 */	cmpw r5, r0
/* 813F8BEC | 40 80 00 0C */	bge .L_813F8BF8
/* 813F8BF0 | 38 60 01 94 */	li r3, 0x194
/* 813F8BF4 | 48 00 03 28 */	b .L_813F8F1C
.L_813F8BF8:
/* 813F8BF8 | 38 04 C4 18 */	subi r0, r4, 0x3be8
/* 813F8BFC | 7C 05 00 00 */	cmpw r5, r0
/* 813F8C00 | 40 80 00 0C */	bge .L_813F8C0C
/* 813F8C04 | 38 60 01 95 */	li r3, 0x195
/* 813F8C08 | 48 00 03 14 */	b .L_813F8F1C
.L_813F8C0C:
/* 813F8C0C | 38 04 C4 7C */	subi r0, r4, 0x3b84
/* 813F8C10 | 7C 05 00 00 */	cmpw r5, r0
/* 813F8C14 | 40 80 00 0C */	bge .L_813F8C20
/* 813F8C18 | 38 60 01 96 */	li r3, 0x196
/* 813F8C1C | 48 00 03 00 */	b .L_813F8F1C
.L_813F8C20:
/* 813F8C20 | 38 04 C4 E0 */	subi r0, r4, 0x3b20
/* 813F8C24 | 7C 05 00 00 */	cmpw r5, r0
/* 813F8C28 | 40 80 00 0C */	bge .L_813F8C34
/* 813F8C2C | 38 60 01 97 */	li r3, 0x197
/* 813F8C30 | 48 00 02 EC */	b .L_813F8F1C
.L_813F8C34:
/* 813F8C34 | 38 04 C5 44 */	subi r0, r4, 0x3abc
/* 813F8C38 | 7C 05 00 00 */	cmpw r5, r0
/* 813F8C3C | 40 80 00 0C */	bge .L_813F8C48
/* 813F8C40 | 38 60 01 98 */	li r3, 0x198
/* 813F8C44 | 48 00 02 D8 */	b .L_813F8F1C
.L_813F8C48:
/* 813F8C48 | 38 04 C7 60 */	subi r0, r4, 0x38a0
/* 813F8C4C | 7C 05 00 00 */	cmpw r5, r0
/* 813F8C50 | 40 80 00 0C */	bge .L_813F8C5C
/* 813F8C54 | 38 60 01 99 */	li r3, 0x199
/* 813F8C58 | 48 00 02 C4 */	b .L_813F8F1C
.L_813F8C5C:
/* 813F8C5C | 38 04 C7 6A */	subi r0, r4, 0x3896
/* 813F8C60 | 7C 05 00 00 */	cmpw r5, r0
/* 813F8C64 | 40 80 00 0C */	bge .L_813F8C70
/* 813F8C68 | 38 60 01 A4 */	li r3, 0x1a4
/* 813F8C6C | 48 00 02 B0 */	b .L_813F8F1C
.L_813F8C70:
/* 813F8C70 | 38 04 C7 9C */	subi r0, r4, 0x3864
/* 813F8C74 | 7C 05 00 00 */	cmpw r5, r0
/* 813F8C78 | 40 80 00 0C */	bge .L_813F8C84
/* 813F8C7C | 38 60 01 99 */	li r3, 0x199
/* 813F8C80 | 48 00 02 9C */	b .L_813F8F1C
.L_813F8C84:
/* 813F8C84 | 38 04 C8 C8 */	subi r0, r4, 0x3738
/* 813F8C88 | 7C 05 00 00 */	cmpw r5, r0
/* 813F8C8C | 40 80 00 0C */	bge .L_813F8C98
/* 813F8C90 | 38 60 01 9A */	li r3, 0x19a
/* 813F8C94 | 48 00 02 88 */	b .L_813F8F1C
.L_813F8C98:
/* 813F8C98 | 38 04 C9 2C */	subi r0, r4, 0x36d4
/* 813F8C9C | 7C 05 00 00 */	cmpw r5, r0
/* 813F8CA0 | 40 80 00 0C */	bge .L_813F8CAC
/* 813F8CA4 | 38 60 01 9B */	li r3, 0x19b
/* 813F8CA8 | 48 00 02 74 */	b .L_813F8F1C
.L_813F8CAC:
/* 813F8CAC | 38 04 CB 84 */	subi r0, r4, 0x347c
/* 813F8CB0 | 7C 05 00 00 */	cmpw r5, r0
/* 813F8CB4 | 40 80 00 0C */	bge .L_813F8CC0
/* 813F8CB8 | 38 60 01 9C */	li r3, 0x19c
/* 813F8CBC | 48 00 02 60 */	b .L_813F8F1C
.L_813F8CC0:
/* 813F8CC0 | 38 04 CB E8 */	subi r0, r4, 0x3418
/* 813F8CC4 | 7C 05 00 00 */	cmpw r5, r0
/* 813F8CC8 | 40 80 00 0C */	bge .L_813F8CD4
/* 813F8CCC | 38 60 01 9D */	li r3, 0x19d
/* 813F8CD0 | 48 00 02 4C */	b .L_813F8F1C
.L_813F8CD4:
/* 813F8CD4 | 38 04 CC 4C */	subi r0, r4, 0x33b4
/* 813F8CD8 | 7C 05 00 00 */	cmpw r5, r0
/* 813F8CDC | 40 80 00 0C */	bge .L_813F8CE8
/* 813F8CE0 | 38 60 01 9E */	li r3, 0x19e
/* 813F8CE4 | 48 00 02 38 */	b .L_813F8F1C
.L_813F8CE8:
/* 813F8CE8 | 38 04 CD 14 */	subi r0, r4, 0x32ec
/* 813F8CEC | 7C 05 00 00 */	cmpw r5, r0
/* 813F8CF0 | 40 80 00 0C */	bge .L_813F8CFC
/* 813F8CF4 | 38 60 01 9F */	li r3, 0x19f
/* 813F8CF8 | 48 00 02 24 */	b .L_813F8F1C
.L_813F8CFC:
/* 813F8CFC | 38 04 CD 78 */	subi r0, r4, 0x3288
/* 813F8D00 | 7C 05 00 00 */	cmpw r5, r0
/* 813F8D04 | 40 80 00 0C */	bge .L_813F8D10
/* 813F8D08 | 38 60 01 A0 */	li r3, 0x1a0
/* 813F8D0C | 48 00 02 10 */	b .L_813F8F1C
.L_813F8D10:
/* 813F8D10 | 38 04 CD DC */	subi r0, r4, 0x3224
/* 813F8D14 | 7C 05 00 00 */	cmpw r5, r0
/* 813F8D18 | 40 80 00 0C */	bge .L_813F8D24
/* 813F8D1C | 38 60 01 A1 */	li r3, 0x1a1
/* 813F8D20 | 48 00 01 FC */	b .L_813F8F1C
.L_813F8D24:
/* 813F8D24 | 38 04 CE 40 */	subi r0, r4, 0x31c0
/* 813F8D28 | 7C 05 00 00 */	cmpw r5, r0
/* 813F8D2C | 40 80 00 0C */	bge .L_813F8D38
/* 813F8D30 | 38 60 01 A2 */	li r3, 0x1a2
/* 813F8D34 | 48 00 01 E8 */	b .L_813F8F1C
.L_813F8D38:
/* 813F8D38 | 38 04 D6 D8 */	subi r0, r4, 0x2928
/* 813F8D3C | 7C 05 00 00 */	cmpw r5, r0
/* 813F8D40 | 40 80 00 0C */	bge .L_813F8D4C
/* 813F8D44 | 38 60 01 A3 */	li r3, 0x1a3
/* 813F8D48 | 48 00 01 D4 */	b .L_813F8F1C
.L_813F8D4C:
/* 813F8D4C | 3C 80 00 02 */	lis r4, 0x2
/* 813F8D50 | 38 04 86 A0 */	subi r0, r4, 0x7960
/* 813F8D54 | 7C 05 00 00 */	cmpw r5, r0
/* 813F8D58 | 40 81 01 C4 */	ble .L_813F8F1C
/* 813F8D5C | 38 60 01 C5 */	li r3, 0x1c5
/* 813F8D60 | 48 00 01 BC */	b .L_813F8F1C
.L_813F8D64:
/* 813F8D64 | 80 9F 09 28 */	lwz r4, 0x928(r31)
/* 813F8D68 | 80 A4 00 00 */	lwz r5, 0x0(r4)
/* 813F8D6C | 2C 05 7D 01 */	cmpwi r5, 0x7d01
/* 813F8D70 | 40 82 00 0C */	bne .L_813F8D7C
/* 813F8D74 | 38 60 01 A5 */	li r3, 0x1a5
/* 813F8D78 | 48 00 01 A4 */	b .L_813F8F1C
.L_813F8D7C:
/* 813F8D7C | 2C 05 7D 02 */	cmpwi r5, 0x7d02
/* 813F8D80 | 40 82 00 0C */	bne .L_813F8D8C
/* 813F8D84 | 38 60 01 A6 */	li r3, 0x1a6
/* 813F8D88 | 48 00 01 94 */	b .L_813F8F1C
.L_813F8D8C:
/* 813F8D8C | 2C 05 7D 03 */	cmpwi r5, 0x7d03
/* 813F8D90 | 40 82 00 0C */	bne .L_813F8D9C
/* 813F8D94 | 38 60 01 A7 */	li r3, 0x1a7
/* 813F8D98 | 48 00 01 84 */	b .L_813F8F1C
.L_813F8D9C:
/* 813F8D9C | 3C 80 00 01 */	lis r4, 0x1
/* 813F8DA0 | 38 04 80 E8 */	subi r0, r4, 0x7f18
/* 813F8DA4 | 7C 05 00 00 */	cmpw r5, r0
/* 813F8DA8 | 40 80 00 0C */	bge .L_813F8DB4
/* 813F8DAC | 38 60 01 A8 */	li r3, 0x1a8
/* 813F8DB0 | 48 00 01 6C */	b .L_813F8F1C
.L_813F8DB4:
/* 813F8DB4 | 38 04 C4 18 */	subi r0, r4, 0x3be8
/* 813F8DB8 | 7C 05 00 00 */	cmpw r5, r0
/* 813F8DBC | 40 80 00 0C */	bge .L_813F8DC8
/* 813F8DC0 | 38 60 01 A9 */	li r3, 0x1a9
/* 813F8DC4 | 48 00 01 58 */	b .L_813F8F1C
.L_813F8DC8:
/* 813F8DC8 | 38 04 C4 7C */	subi r0, r4, 0x3b84
/* 813F8DCC | 7C 05 00 00 */	cmpw r5, r0
/* 813F8DD0 | 40 80 00 0C */	bge .L_813F8DDC
/* 813F8DD4 | 38 60 01 AA */	li r3, 0x1aa
/* 813F8DD8 | 48 00 01 44 */	b .L_813F8F1C
.L_813F8DDC:
/* 813F8DDC | 38 04 C4 E0 */	subi r0, r4, 0x3b20
/* 813F8DE0 | 7C 05 00 00 */	cmpw r5, r0
/* 813F8DE4 | 40 80 00 0C */	bge .L_813F8DF0
/* 813F8DE8 | 38 60 01 AB */	li r3, 0x1ab
/* 813F8DEC | 48 00 01 30 */	b .L_813F8F1C
.L_813F8DF0:
/* 813F8DF0 | 38 04 C5 44 */	subi r0, r4, 0x3abc
/* 813F8DF4 | 7C 05 00 00 */	cmpw r5, r0
/* 813F8DF8 | 40 80 00 0C */	bge .L_813F8E04
/* 813F8DFC | 38 60 01 AC */	li r3, 0x1ac
/* 813F8E00 | 48 00 01 1C */	b .L_813F8F1C
.L_813F8E04:
/* 813F8E04 | 38 04 C7 60 */	subi r0, r4, 0x38a0
/* 813F8E08 | 7C 05 00 00 */	cmpw r5, r0
/* 813F8E0C | 40 80 00 0C */	bge .L_813F8E18
/* 813F8E10 | 38 60 01 AD */	li r3, 0x1ad
/* 813F8E14 | 48 00 01 08 */	b .L_813F8F1C
.L_813F8E18:
/* 813F8E18 | 38 04 C7 6A */	subi r0, r4, 0x3896
/* 813F8E1C | 7C 05 00 00 */	cmpw r5, r0
/* 813F8E20 | 40 80 00 0C */	bge .L_813F8E2C
/* 813F8E24 | 38 60 01 B8 */	li r3, 0x1b8
/* 813F8E28 | 48 00 00 F4 */	b .L_813F8F1C
.L_813F8E2C:
/* 813F8E2C | 38 04 C7 9C */	subi r0, r4, 0x3864
/* 813F8E30 | 7C 05 00 00 */	cmpw r5, r0
/* 813F8E34 | 40 80 00 0C */	bge .L_813F8E40
/* 813F8E38 | 38 60 01 AD */	li r3, 0x1ad
/* 813F8E3C | 48 00 00 E0 */	b .L_813F8F1C
.L_813F8E40:
/* 813F8E40 | 38 04 C8 C8 */	subi r0, r4, 0x3738
/* 813F8E44 | 7C 05 00 00 */	cmpw r5, r0
/* 813F8E48 | 40 80 00 0C */	bge .L_813F8E54
/* 813F8E4C | 38 60 01 AE */	li r3, 0x1ae
/* 813F8E50 | 48 00 00 CC */	b .L_813F8F1C
.L_813F8E54:
/* 813F8E54 | 38 04 C9 2C */	subi r0, r4, 0x36d4
/* 813F8E58 | 7C 05 00 00 */	cmpw r5, r0
/* 813F8E5C | 40 80 00 0C */	bge .L_813F8E68
/* 813F8E60 | 38 60 01 AF */	li r3, 0x1af
/* 813F8E64 | 48 00 00 B8 */	b .L_813F8F1C
.L_813F8E68:
/* 813F8E68 | 38 04 CB 84 */	subi r0, r4, 0x347c
/* 813F8E6C | 7C 05 00 00 */	cmpw r5, r0
/* 813F8E70 | 40 80 00 0C */	bge .L_813F8E7C
/* 813F8E74 | 38 60 01 B0 */	li r3, 0x1b0
/* 813F8E78 | 48 00 00 A4 */	b .L_813F8F1C
.L_813F8E7C:
/* 813F8E7C | 38 04 CB E8 */	subi r0, r4, 0x3418
/* 813F8E80 | 7C 05 00 00 */	cmpw r5, r0
/* 813F8E84 | 40 80 00 0C */	bge .L_813F8E90
/* 813F8E88 | 38 60 01 B1 */	li r3, 0x1b1
/* 813F8E8C | 48 00 00 90 */	b .L_813F8F1C
.L_813F8E90:
/* 813F8E90 | 38 04 CC 4C */	subi r0, r4, 0x33b4
/* 813F8E94 | 7C 05 00 00 */	cmpw r5, r0
/* 813F8E98 | 40 80 00 0C */	bge .L_813F8EA4
/* 813F8E9C | 38 60 01 B2 */	li r3, 0x1b2
/* 813F8EA0 | 48 00 00 7C */	b .L_813F8F1C
.L_813F8EA4:
/* 813F8EA4 | 38 04 CD 14 */	subi r0, r4, 0x32ec
/* 813F8EA8 | 7C 05 00 00 */	cmpw r5, r0
/* 813F8EAC | 40 80 00 0C */	bge .L_813F8EB8
/* 813F8EB0 | 38 60 01 B3 */	li r3, 0x1b3
/* 813F8EB4 | 48 00 00 68 */	b .L_813F8F1C
.L_813F8EB8:
/* 813F8EB8 | 38 04 CD 78 */	subi r0, r4, 0x3288
/* 813F8EBC | 7C 05 00 00 */	cmpw r5, r0
/* 813F8EC0 | 40 80 00 0C */	bge .L_813F8ECC
/* 813F8EC4 | 38 60 01 B4 */	li r3, 0x1b4
/* 813F8EC8 | 48 00 00 54 */	b .L_813F8F1C
.L_813F8ECC:
/* 813F8ECC | 38 04 CD DC */	subi r0, r4, 0x3224
/* 813F8ED0 | 7C 05 00 00 */	cmpw r5, r0
/* 813F8ED4 | 40 80 00 0C */	bge .L_813F8EE0
/* 813F8ED8 | 38 60 01 B5 */	li r3, 0x1b5
/* 813F8EDC | 48 00 00 40 */	b .L_813F8F1C
.L_813F8EE0:
/* 813F8EE0 | 38 04 CE 40 */	subi r0, r4, 0x31c0
/* 813F8EE4 | 7C 05 00 00 */	cmpw r5, r0
/* 813F8EE8 | 40 80 00 0C */	bge .L_813F8EF4
/* 813F8EEC | 38 60 01 B6 */	li r3, 0x1b6
/* 813F8EF0 | 48 00 00 2C */	b .L_813F8F1C
.L_813F8EF4:
/* 813F8EF4 | 38 04 D6 D8 */	subi r0, r4, 0x2928
/* 813F8EF8 | 7C 05 00 00 */	cmpw r5, r0
/* 813F8EFC | 40 80 00 0C */	bge .L_813F8F08
/* 813F8F00 | 38 60 01 B7 */	li r3, 0x1b7
/* 813F8F04 | 48 00 00 18 */	b .L_813F8F1C
.L_813F8F08:
/* 813F8F08 | 3C 80 00 02 */	lis r4, 0x2
/* 813F8F0C | 38 04 86 A0 */	subi r0, r4, 0x7960
/* 813F8F10 | 7C 05 00 00 */	cmpw r5, r0
/* 813F8F14 | 40 81 00 08 */	ble .L_813F8F1C
/* 813F8F18 | 38 60 01 C5 */	li r3, 0x1c5
.L_813F8F1C:
/* 813F8F1C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F8F20 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F8F24 | 7C 08 03 A6 */	mtlr r0
/* 813F8F28 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F8F2C | 4E 80 00 20 */	blr
.endfn getErrorNum__Q33ipl5scene7SettingFv

# .text:0x87BC | 0x813F8F30 | size: 0x130
# ipl::scene::Setting::makeSupportCode()
.fn makeSupportCode__Q33ipl5scene7SettingFv, global
/* 813F8F30 | 94 21 FD C0 */	stwu r1, -0x240(r1)
/* 813F8F34 | 7C 08 02 A6 */	mflr r0
/* 813F8F38 | 90 01 02 44 */	stw r0, 0x244(r1)
/* 813F8F3C | 39 61 02 40 */	addi r11, r1, 0x240
/* 813F8F40 | 48 20 05 79 */	bl _savegpr_25
/* 813F8F44 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 813F8F48 | 7C 79 1B 78 */	mr r25, r3
/* 813F8F4C | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 813F8F50 | 38 80 01 6D */	li r4, 0x16d
/* 813F8F54 | 80 7D 00 80 */	lwz r3, 0x80(r29)
/* 813F8F58 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813F8F5C | 4B F4 58 61 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813F8F60 | 80 BD 00 80 */	lwz r5, 0x80(r29)
/* 813F8F64 | 7C 7E 1B 78 */	mr r30, r3
/* 813F8F68 | 38 80 01 B9 */	li r4, 0x1b9
/* 813F8F6C | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 813F8F70 | 4B F4 58 4D */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813F8F74 | 80 D9 09 30 */	lwz r6, 0x930(r25)
/* 813F8F78 | 7C 7C 1B 78 */	mr r28, r3
/* 813F8F7C | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F8F80 | 38 80 00 0C */	li r4, 0xc
/* 813F8F84 | 38 AD 91 94 */	li r5, lbl_816971D4@sda21
/* 813F8F88 | 4C C6 31 82 */	crclr cr1eq
/* 813F8F8C | 48 20 F6 45 */	bl swprintf
/* 813F8F90 | 38 61 00 20 */	addi r3, r1, 0x20
/* 813F8F94 | 38 80 00 00 */	li r4, 0x0
/* 813F8F98 | 38 A0 02 00 */	li r5, 0x200
/* 813F8F9C | 4B F3 73 99 */	bl memset
/* 813F8FA0 | 7F C3 F3 78 */	mr r3, r30
/* 813F8FA4 | 48 20 F7 09 */	bl fn_816086AC
/* 813F8FA8 | 7C 7A 1B 78 */	mr r26, r3
/* 813F8FAC | 7F C4 F3 78 */	mr r4, r30
/* 813F8FB0 | 7F 45 D3 78 */	mr r5, r26
/* 813F8FB4 | 38 61 00 20 */	addi r3, r1, 0x20
/* 813F8FB8 | 48 20 F7 9D */	bl fn_81608754
/* 813F8FBC | 57 43 08 3C */	slwi r3, r26, 1
/* 813F8FC0 | 3B C1 00 20 */	addi r30, r1, 0x20
/* 813F8FC4 | 38 80 00 0A */	li r4, 0xa
/* 813F8FC8 | 3B 3A 00 01 */	addi r25, r26, 0x1
/* 813F8FCC | 7C 9E 1B 2E */	sthx r4, r30, r3
/* 813F8FD0 | 57 20 08 3C */	slwi r0, r25, 1
/* 813F8FD4 | 3B E0 00 00 */	li r31, 0x0
/* 813F8FD8 | 7F 83 E3 78 */	mr r3, r28
/* 813F8FDC | 7F FE 03 2E */	sthx r31, r30, r0
/* 813F8FE0 | 7F 7E 02 14 */	add r27, r30, r0
/* 813F8FE4 | 48 20 F6 C9 */	bl fn_816086AC
/* 813F8FE8 | 7C 7A 1B 78 */	mr r26, r3
/* 813F8FEC | 7F 63 DB 78 */	mr r3, r27
/* 813F8FF0 | 7F 84 E3 78 */	mr r4, r28
/* 813F8FF4 | 7F 45 D3 78 */	mr r5, r26
/* 813F8FF8 | 48 20 F7 5D */	bl fn_81608754
/* 813F8FFC | 7F 39 D2 14 */	add r25, r25, r26
/* 813F9000 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813F9004 | 48 20 F6 A9 */	bl fn_816086AC
/* 813F9008 | 7C 7B 1B 78 */	mr r27, r3
/* 813F900C | 7F C3 F3 78 */	mr r3, r30
/* 813F9010 | 57 20 08 3C */	slwi r0, r25, 1
/* 813F9014 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813F9018 | 7F 65 DB 78 */	mr r5, r27
/* 813F901C | 7C 63 02 14 */	add r3, r3, r0
/* 813F9020 | 48 20 F7 35 */	bl fn_81608754
/* 813F9024 | 7F 39 DA 14 */	add r25, r25, r27
/* 813F9028 | 80 7D 00 AC */	lwz r3, 0xac(r29)
/* 813F902C | 57 20 08 3C */	slwi r0, r25, 1
/* 813F9030 | 7F C4 F3 78 */	mr r4, r30
/* 813F9034 | 7F FE 03 2E */	sthx r31, r30, r0
/* 813F9038 | 38 A0 01 42 */	li r5, 0x142
/* 813F903C | 38 C0 01 41 */	li r6, 0x141
/* 813F9040 | 38 E0 00 01 */	li r7, 0x1
/* 813F9044 | 4B F4 DD 45 */	bl callBtn2__Q23ipl12DialogWindowFPCwUlUlb
/* 813F9048 | 39 61 02 40 */	addi r11, r1, 0x240
/* 813F904C | 48 20 04 B9 */	bl _restgpr_25
/* 813F9050 | 80 01 02 44 */	lwz r0, 0x244(r1)
/* 813F9054 | 7C 08 03 A6 */	mtlr r0
/* 813F9058 | 38 21 02 40 */	addi r1, r1, 0x240
/* 813F905C | 4E 80 00 20 */	blr
.endfn makeSupportCode__Q33ipl5scene7SettingFv

# .text:0x88EC | 0x813F9060 | size: 0xD0
# ipl::scene::Setting::setInitializeResult(bool, int)
.fn setInitializeResult__Q33ipl5scene7SettingFbi, global
/* 813F9060 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F9064 | 7C 08 02 A6 */	mflr r0
/* 813F9068 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F906C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F9070 | 7C BF 2B 78 */	mr r31, r5
/* 813F9074 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813F9078 | 7C 9E 23 78 */	mr r30, r4
/* 813F907C | 48 00 07 01 */	bl waitFinish__Q33ipl5scene7SettingFv
/* 813F9080 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813F9084 | 41 82 00 10 */	beq .L_813F9094
/* 813F9088 | 38 60 00 01 */	li r3, 0x1
/* 813F908C | 4B F7 80 E9 */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F9090 | 48 00 00 88 */	b .L_813F9118
.L_813F9094:
/* 813F9094 | 2C 1F FF FE */	cmpwi r31, -0x2
/* 813F9098 | 41 82 00 3C */	beq .L_813F90D4
/* 813F909C | 40 80 00 7C */	bge .L_813F9118
/* 813F90A0 | 2C 1F FF FB */	cmpwi r31, -0x5
/* 813F90A4 | 41 82 00 08 */	beq .L_813F90AC
/* 813F90A8 | 48 00 00 70 */	b .L_813F9118
.L_813F90AC:
/* 813F90AC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F90B0 | 38 80 00 01 */	li r4, 0x1
/* 813F90B4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F90B8 | 38 A0 00 01 */	li r5, 0x1
/* 813F90BC | 80 63 00 98 */	lwz r3, 0x98(r3)
/* 813F90C0 | 38 C0 00 00 */	li r6, 0x0
/* 813F90C4 | 38 E0 00 00 */	li r7, 0x0
/* 813F90C8 | 39 00 FF FF */	li r8, -0x1
/* 813F90CC | 4B F5 D4 49 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
/* 813F90D0 | 48 00 00 48 */	b .L_813F9118
.L_813F90D4:
/* 813F90D4 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813F90D8 | 3C 80 81 65 */	lis r4, lbl_8165761A@ha
/* 813F90DC | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813F90E0 | 3C C0 81 65 */	lis r6, lbl_81656C7F@ha
/* 813F90E4 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 813F90E8 | 38 84 76 1A */	addi r4, r4, lbl_8165761A@l
/* 813F90EC | 38 C6 6C 7F */	addi r6, r6, lbl_81656C7F@l
/* 813F90F0 | 38 A0 FF FE */	li r5, -0x2
/* 813F90F4 | 38 E0 13 A7 */	li r7, 0x13a7
/* 813F90F8 | 4B F5 D6 01 */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 813F90FC | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 813F9100 | 38 80 00 01 */	li r4, 0x1
/* 813F9104 | 38 A0 00 02 */	li r5, 0x2
/* 813F9108 | 38 C0 00 00 */	li r6, 0x0
/* 813F910C | 38 E0 00 00 */	li r7, 0x0
/* 813F9110 | 39 00 FF FF */	li r8, -0x1
/* 813F9114 | 4B F5 D4 01 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_813F9118:
/* 813F9118 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F911C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F9120 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813F9124 | 7C 08 03 A6 */	mtlr r0
/* 813F9128 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F912C | 4E 80 00 20 */	blr
.endfn setInitializeResult__Q33ipl5scene7SettingFbi

# .text:0x89BC | 0x813F9130 | size: 0xE4
# ipl::scene::Setting::setUSBAP()
.fn setUSBAP__Q33ipl5scene7SettingFv, global
/* 813F9130 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F9134 | 7C 08 02 A6 */	mflr r0
/* 813F9138 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F913C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F9140 | 7C 7F 1B 78 */	mr r31, r3
/* 813F9144 | 80 03 00 84 */	lwz r0, 0x84(r3)
/* 813F9148 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813F914C | 41 82 00 88 */	beq .L_813F91D4
/* 813F9150 | 40 80 00 B0 */	bge .L_813F9200
/* 813F9154 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813F9158 | 40 80 00 08 */	bge .L_813F9160
/* 813F915C | 48 00 00 A4 */	b .L_813F9200
.L_813F9160:
/* 813F9160 | 80 63 00 DC */	lwz r3, 0xdc(r3)
/* 813F9164 | 48 00 38 61 */	bl is__Q33ipl5scene11USBAPThreadFv
/* 813F9168 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F916C | 41 82 00 94 */	beq .L_813F9200
/* 813F9170 | 38 7F 00 A4 */	addi r3, r31, 0xa4
/* 813F9174 | 48 17 13 81 */	bl fn_8156A4F4
/* 813F9178 | 30 03 FF FF */	subic r0, r3, 0x1
/* 813F917C | 7C 80 19 11 */	subfe. r4, r0, r3
/* 813F9180 | 41 82 00 40 */	beq .L_813F91C0
/* 813F9184 | 3C 60 81 65 */	lis r3, lbl_81657627@ha
/* 813F9188 | 38 63 76 27 */	addi r3, r3, lbl_81657627@l
/* 813F918C | 4C C6 31 82 */	crclr cr1eq
/* 813F9190 | 48 13 55 11 */	bl OSReport
/* 813F9194 | 80 7F 00 DC */	lwz r3, 0xdc(r31)
/* 813F9198 | 38 9F 00 A4 */	addi r4, r31, 0xa4
/* 813F919C | 38 BF 09 1D */	addi r5, r31, 0x91d
/* 813F91A0 | 48 00 38 29 */	bl setData__Q33ipl5scene11USBAPThreadFPCwPUc
/* 813F91A4 | 80 7F 00 DC */	lwz r3, 0xdc(r31)
/* 813F91A8 | 80 9F 09 0C */	lwz r4, 0x90c(r31)
/* 813F91AC | 80 BF 09 10 */	lwz r5, 0x910(r31)
/* 813F91B0 | 48 00 37 91 */	bl Init__Q33ipl5scene11USBAPThreadFPUsPUc
/* 813F91B4 | 38 00 00 02 */	li r0, 0x2
/* 813F91B8 | 90 1F 00 84 */	stw r0, 0x84(r31)
/* 813F91BC | 48 00 00 44 */	b .L_813F9200
.L_813F91C0:
/* 813F91C0 | 38 60 00 02 */	li r3, 0x2
/* 813F91C4 | 4B F7 7F B1 */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F91C8 | 7F E3 FB 78 */	mr r3, r31
/* 813F91CC | 4B FF 77 45 */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
/* 813F91D0 | 48 00 00 30 */	b .L_813F9200
.L_813F91D4:
/* 813F91D4 | 88 03 09 1D */	lbz r0, 0x91d(r3)
/* 813F91D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F91DC | 41 82 00 24 */	beq .L_813F9200
/* 813F91E0 | 88 63 09 1D */	lbz r3, 0x91d(r3)
/* 813F91E4 | 4B F7 7F 91 */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F91E8 | 38 60 00 01 */	li r3, 0x1
/* 813F91EC | 38 00 00 00 */	li r0, 0x0
/* 813F91F0 | 90 7F 00 84 */	stw r3, 0x84(r31)
/* 813F91F4 | 7F E3 FB 78 */	mr r3, r31
/* 813F91F8 | 98 1F 09 1D */	stb r0, 0x91d(r31)
/* 813F91FC | 4B FF 77 15 */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
.L_813F9200:
/* 813F9200 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F9204 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F9208 | 7C 08 03 A6 */	mtlr r0
/* 813F920C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F9210 | 4E 80 00 20 */	blr
.endfn setUSBAP__Q33ipl5scene7SettingFv

# .text:0x8AA0 | 0x813F9214 | size: 0x94
# ipl::scene::Setting::cancelUSBAP()
.fn cancelUSBAP__Q33ipl5scene7SettingFv, global
/* 813F9214 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F9218 | 7C 08 02 A6 */	mflr r0
/* 813F921C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F9220 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F9224 | 7C 7F 1B 78 */	mr r31, r3
/* 813F9228 | 80 03 00 84 */	lwz r0, 0x84(r3)
/* 813F922C | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813F9230 | 41 82 00 28 */	beq .L_813F9258
/* 813F9234 | 40 80 00 60 */	bge .L_813F9294
/* 813F9238 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813F923C | 40 80 00 08 */	bge .L_813F9244
/* 813F9240 | 48 00 00 54 */	b .L_813F9294
.L_813F9244:
/* 813F9244 | 80 63 00 DC */	lwz r3, 0xdc(r3)
/* 813F9248 | 48 00 37 79 */	bl cancel__Q33ipl5scene11USBAPThreadFv
/* 813F924C | 38 00 00 03 */	li r0, 0x3
/* 813F9250 | 90 1F 00 84 */	stw r0, 0x84(r31)
/* 813F9254 | 48 00 00 40 */	b .L_813F9294
.L_813F9258:
/* 813F9258 | 88 03 09 1D */	lbz r0, 0x91d(r3)
/* 813F925C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F9260 | 40 82 00 14 */	bne .L_813F9274
/* 813F9264 | 80 63 00 DC */	lwz r3, 0xdc(r3)
/* 813F9268 | 48 00 37 5D */	bl is__Q33ipl5scene11USBAPThreadFv
/* 813F926C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F9270 | 41 82 00 24 */	beq .L_813F9294
.L_813F9274:
/* 813F9274 | 38 60 00 05 */	li r3, 0x5
/* 813F9278 | 4B F7 7E FD */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F927C | 38 60 00 01 */	li r3, 0x1
/* 813F9280 | 38 00 00 00 */	li r0, 0x0
/* 813F9284 | 90 7F 00 84 */	stw r3, 0x84(r31)
/* 813F9288 | 7F E3 FB 78 */	mr r3, r31
/* 813F928C | 98 1F 09 1D */	stb r0, 0x91d(r31)
/* 813F9290 | 4B FF 76 81 */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
.L_813F9294:
/* 813F9294 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F9298 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F929C | 7C 08 03 A6 */	mtlr r0
/* 813F92A0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F92A4 | 4E 80 00 20 */	blr
.endfn cancelUSBAP__Q33ipl5scene7SettingFv

# .text:0x8B34 | 0x813F92A8 | size: 0x1E4
# ipl::scene::Setting::AOSSProcess()
.fn AOSSProcess__Q33ipl5scene7SettingFv, global
/* 813F92A8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813F92AC | 7C 08 02 A6 */	mflr r0
/* 813F92B0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813F92B4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F92B8 | 48 20 02 11 */	bl _savegpr_29
/* 813F92BC | 80 83 09 28 */	lwz r4, 0x928(r3)
/* 813F92C0 | 7C 7F 1B 78 */	mr r31, r3
/* 813F92C4 | 88 84 00 04 */	lbz r4, 0x4(r4)
/* 813F92C8 | 28 04 00 22 */	cmplwi r4, 0x22
/* 813F92CC | 40 82 00 70 */	bne .L_813F933C
/* 813F92D0 | 80 03 00 88 */	lwz r0, 0x88(r3)
/* 813F92D4 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813F92D8 | 41 82 00 30 */	beq .L_813F9308
/* 813F92DC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F92E0 | 38 80 01 C2 */	li r4, 0x1c2
/* 813F92E4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F92E8 | 38 A0 00 2E */	li r5, 0x2e
/* 813F92EC | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813F92F0 | 4B F4 D4 09 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 813F92F4 | 38 60 00 03 */	li r3, 0x3
/* 813F92F8 | 38 00 00 02 */	li r0, 0x2
/* 813F92FC | 90 7F 00 88 */	stw r3, 0x88(r31)
/* 813F9300 | 90 1F 00 74 */	stw r0, 0x74(r31)
/* 813F9304 | 48 00 01 70 */	b .L_813F9474
.L_813F9308:
/* 813F9308 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813F930C | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813F9310 | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 813F9314 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 813F9318 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F931C | 41 80 01 58 */	blt .L_813F9474
/* 813F9320 | 38 00 00 00 */	li r0, 0x0
/* 813F9324 | 90 03 00 88 */	stw r0, 0x88(r3)
/* 813F9328 | 38 60 00 0A */	li r3, 0xa
/* 813F932C | 4B F7 7E 49 */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F9330 | 7F E3 FB 78 */	mr r3, r31
/* 813F9334 | 4B FF 75 DD */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
/* 813F9338 | 48 00 01 3C */	b .L_813F9474
.L_813F933C:
/* 813F933C | 80 03 00 88 */	lwz r0, 0x88(r3)
/* 813F9340 | 38 84 FF DF */	subi r4, r4, 0x21
/* 813F9344 | 7C 84 00 34 */	cntlzw r4, r4
/* 813F9348 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F934C | 54 9D D9 7E */	srwi r29, r4, 5
/* 813F9350 | 41 82 00 14 */	beq .L_813F9364
/* 813F9354 | 41 80 01 20 */	blt .L_813F9474
/* 813F9358 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813F935C | 40 80 01 18 */	bge .L_813F9474
/* 813F9360 | 48 00 00 64 */	b .L_813F93C4
.L_813F9364:
/* 813F9364 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813F9368 | 3C 80 81 65 */	lis r4, lbl_81656F0B@ha
/* 813F936C | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813F9370 | 38 84 6F 0B */	addi r4, r4, lbl_81656F0B@l
/* 813F9374 | 4B F7 2C 99 */	bl isSEActive__Q33ipl3snd6SystemFPCc
/* 813F9378 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F937C | 40 82 00 F8 */	bne .L_813F9474
/* 813F9380 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813F9384 | 40 82 00 20 */	bne .L_813F93A4
/* 813F9388 | 80 7F 00 E0 */	lwz r3, 0xe0(r31)
/* 813F938C | 48 00 38 09 */	bl start__Q33ipl5scene10AOSSThreadFv
/* 813F9390 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F9394 | 41 82 00 10 */	beq .L_813F93A4
/* 813F9398 | 38 00 00 01 */	li r0, 0x1
/* 813F939C | 90 1F 00 88 */	stw r0, 0x88(r31)
/* 813F93A0 | 48 00 00 D4 */	b .L_813F9474
.L_813F93A4:
/* 813F93A4 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813F93A8 | 38 60 00 02 */	li r3, 0x2
/* 813F93AC | 41 82 00 08 */	beq .L_813F93B4
/* 813F93B0 | 38 60 00 05 */	li r3, 0x5
.L_813F93B4:
/* 813F93B4 | 4B F7 7D C1 */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F93B8 | 7F E3 FB 78 */	mr r3, r31
/* 813F93BC | 4B FF 75 55 */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
/* 813F93C0 | 48 00 00 B4 */	b .L_813F9474
.L_813F93C4:
/* 813F93C4 | 3F C0 81 0C */	lis r30, m_AOSSConfig__Q23ipl5scene@ha
/* 813F93C8 | 80 63 00 E0 */	lwz r3, 0xe0(r3)
/* 813F93CC | 38 9E 83 F0 */	addi r4, r30, m_AOSSConfig__Q23ipl5scene@l
/* 813F93D0 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813F93D4 | 48 00 3A 9D */	bl finish__Q33ipl5scene10AOSSThreadFP13NCDAossConfigPi
/* 813F93D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F93DC | 41 82 00 74 */	beq .L_813F9450
/* 813F93E0 | 38 00 00 00 */	li r0, 0x0
/* 813F93E4 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813F93E8 | 90 1F 00 88 */	stw r0, 0x88(r31)
/* 813F93EC | 41 82 00 10 */	beq .L_813F93FC
/* 813F93F0 | 38 60 00 05 */	li r3, 0x5
/* 813F93F4 | 4B F7 7D 81 */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F93F8 | 48 00 00 44 */	b .L_813F943C
.L_813F93FC:
/* 813F93FC | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 813F9400 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813F9404 | 41 82 00 20 */	beq .L_813F9424
/* 813F9408 | 3C 60 81 65 */	lis r3, lbl_81657642@ha
/* 813F940C | 38 63 76 42 */	addi r3, r3, lbl_81657642@l
/* 813F9410 | 4C C6 31 82 */	crclr cr1eq
/* 813F9414 | 48 13 52 8D */	bl OSReport
/* 813F9418 | 38 60 00 02 */	li r3, 0x2
/* 813F941C | 4B F7 7D 59 */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F9420 | 48 00 00 1C */	b .L_813F943C
.L_813F9424:
/* 813F9424 | 48 00 24 BD */	bl getData__Q33ipl3ncd10NCDSettingFv
/* 813F9428 | 48 00 20 A5 */	bl getID__Q33ipl3ncd10NCDSettingFv
/* 813F942C | 38 7E 83 F0 */	addi r3, r30, m_AOSSConfig__Q23ipl5scene@l
/* 813F9430 | 48 00 1F 7D */	bl setAOSSParams__Q33ipl3ncd10NCDSettingFRC13NCDAossConfig
/* 813F9434 | 38 60 00 01 */	li r3, 0x1
/* 813F9438 | 4B F7 7D 3D */	bl setFuncResult__Q23www10wiisettingFUc
.L_813F943C:
/* 813F943C | 38 00 00 00 */	li r0, 0x0
/* 813F9440 | 7F E3 FB 78 */	mr r3, r31
/* 813F9444 | 90 1F 00 88 */	stw r0, 0x88(r31)
/* 813F9448 | 4B FF 74 C9 */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
/* 813F944C | 48 00 00 28 */	b .L_813F9474
.L_813F9450:
/* 813F9450 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813F9454 | 41 82 00 20 */	beq .L_813F9474
/* 813F9458 | 80 1F 00 88 */	lwz r0, 0x88(r31)
/* 813F945C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813F9460 | 41 82 00 14 */	beq .L_813F9474
/* 813F9464 | 80 7F 00 E0 */	lwz r3, 0xe0(r31)
/* 813F9468 | 48 00 39 B9 */	bl cancel__Q33ipl5scene10AOSSThreadFv
/* 813F946C | 38 00 00 02 */	li r0, 0x2
/* 813F9470 | 90 1F 00 88 */	stw r0, 0x88(r31)
.L_813F9474:
/* 813F9474 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F9478 | 48 20 00 9D */	bl _restgpr_29
/* 813F947C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813F9480 | 7C 08 03 A6 */	mtlr r0
/* 813F9484 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813F9488 | 4E 80 00 20 */	blr
.endfn AOSSProcess__Q33ipl5scene7SettingFv

# .text:0x8D18 | 0x813F948C | size: 0x264
# ipl::scene::Setting::RakuProcess()
.fn RakuProcess__Q33ipl5scene7SettingFv, global
/* 813F948C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813F9490 | 7C 08 02 A6 */	mflr r0
/* 813F9494 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813F9498 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813F949C | 7C 7F 1B 78 */	mr r31, r3
/* 813F94A0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 813F94A4 | 80 83 09 28 */	lwz r4, 0x928(r3)
/* 813F94A8 | 88 84 00 04 */	lbz r4, 0x4(r4)
/* 813F94AC | 28 04 00 2C */	cmplwi r4, 0x2c
/* 813F94B0 | 40 82 00 70 */	bne .L_813F9520
/* 813F94B4 | 80 03 00 8C */	lwz r0, 0x8c(r3)
/* 813F94B8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813F94BC | 41 82 00 30 */	beq .L_813F94EC
/* 813F94C0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813F94C4 | 38 80 01 C3 */	li r4, 0x1c3
/* 813F94C8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813F94CC | 38 A0 00 2E */	li r5, 0x2e
/* 813F94D0 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813F94D4 | 4B F4 D2 25 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 813F94D8 | 38 60 00 01 */	li r3, 0x1
/* 813F94DC | 38 00 00 02 */	li r0, 0x2
/* 813F94E0 | 90 7F 00 8C */	stw r3, 0x8c(r31)
/* 813F94E4 | 90 1F 00 74 */	stw r0, 0x74(r31)
/* 813F94E8 | 48 00 01 F0 */	b .L_813F96D8
.L_813F94EC:
/* 813F94EC | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813F94F0 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813F94F4 | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 813F94F8 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 813F94FC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F9500 | 41 80 01 D8 */	blt .L_813F96D8
/* 813F9504 | 38 00 00 00 */	li r0, 0x0
/* 813F9508 | 90 03 00 8C */	stw r0, 0x8c(r3)
/* 813F950C | 38 60 00 0A */	li r3, 0xa
/* 813F9510 | 4B F7 7C 65 */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F9514 | 7F E3 FB 78 */	mr r3, r31
/* 813F9518 | 4B FF 73 F9 */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
/* 813F951C | 48 00 01 BC */	b .L_813F96D8
.L_813F9520:
/* 813F9520 | 38 04 FF D5 */	subi r0, r4, 0x2b
/* 813F9524 | 80 63 00 E4 */	lwz r3, 0xe4(r3)
/* 813F9528 | 7C 00 00 34 */	cntlzw r0, r0
/* 813F952C | 54 1E D9 7E */	srwi r30, r0, 5
/* 813F9530 | 48 00 49 F9 */	bl getState__Q33ipl5scene14RakuRakuThreadFv
/* 813F9534 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813F9538 | 41 82 00 58 */	beq .L_813F9590
/* 813F953C | 2C 03 00 06 */	cmpwi r3, 0x6
/* 813F9540 | 40 80 00 10 */	bge .L_813F9550
/* 813F9544 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F9548 | 41 82 00 10 */	beq .L_813F9558
/* 813F954C | 48 00 00 38 */	b .L_813F9584
.L_813F9550:
/* 813F9550 | 2C 03 00 08 */	cmpwi r3, 0x8
/* 813F9554 | 40 80 00 30 */	bge .L_813F9584
.L_813F9558:
/* 813F9558 | 80 7F 00 E4 */	lwz r3, 0xe4(r31)
/* 813F955C | 38 80 00 00 */	li r4, 0x0
/* 813F9560 | 38 A0 00 00 */	li r5, 0x0
/* 813F9564 | 48 00 4B 01 */	bl finish__Q33ipl5scene14RakuRakuThreadFP11NCDApConfigPi
/* 813F9568 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F956C | 41 82 01 6C */	beq .L_813F96D8
/* 813F9570 | 38 60 00 05 */	li r3, 0x5
/* 813F9574 | 4B F7 7C 01 */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F9578 | 7F E3 FB 78 */	mr r3, r31
/* 813F957C | 4B FF 73 95 */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
/* 813F9580 | 48 00 01 58 */	b .L_813F96D8
.L_813F9584:
/* 813F9584 | 80 7F 00 E4 */	lwz r3, 0xe4(r31)
/* 813F9588 | 48 00 4A C9 */	bl cancel__Q33ipl5scene14RakuRakuThreadFv
/* 813F958C | 48 00 01 4C */	b .L_813F96D8
.L_813F9590:
/* 813F9590 | 2C 03 00 05 */	cmpwi r3, 0x5
/* 813F9594 | 41 82 00 A0 */	beq .L_813F9634
/* 813F9598 | 40 80 00 1C */	bge .L_813F95B4
/* 813F959C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F95A0 | 41 82 00 24 */	beq .L_813F95C4
/* 813F95A4 | 41 80 01 34 */	blt .L_813F96D8
/* 813F95A8 | 2C 03 00 04 */	cmpwi r3, 0x4
/* 813F95AC | 40 80 00 64 */	bge .L_813F9610
/* 813F95B0 | 48 00 01 28 */	b .L_813F96D8
.L_813F95B4:
/* 813F95B4 | 2C 03 00 07 */	cmpwi r3, 0x7
/* 813F95B8 | 41 82 00 F8 */	beq .L_813F96B0
/* 813F95BC | 40 80 01 1C */	bge .L_813F96D8
/* 813F95C0 | 48 00 00 98 */	b .L_813F9658
.L_813F95C4:
/* 813F95C4 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813F95C8 | 3C 80 81 65 */	lis r4, lbl_81656F0B@ha
/* 813F95CC | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813F95D0 | 38 84 6F 0B */	addi r4, r4, lbl_81656F0B@l
/* 813F95D4 | 4B F7 2A 39 */	bl isSEActive__Q33ipl3snd6SystemFPCc
/* 813F95D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F95DC | 40 82 00 FC */	bne .L_813F96D8
/* 813F95E0 | 80 7F 00 E4 */	lwz r3, 0xe4(r31)
/* 813F95E4 | 48 00 46 E1 */	bl start__Q33ipl5scene14RakuRakuThreadFv
/* 813F95E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F95EC | 40 82 00 EC */	bne .L_813F96D8
/* 813F95F0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813F95F4 | 38 60 00 02 */	li r3, 0x2
/* 813F95F8 | 41 82 00 08 */	beq .L_813F9600
/* 813F95FC | 38 60 00 05 */	li r3, 0x5
.L_813F9600:
/* 813F9600 | 4B F7 7B 75 */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F9604 | 7F E3 FB 78 */	mr r3, r31
/* 813F9608 | 4B FF 73 09 */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
/* 813F960C | 48 00 00 CC */	b .L_813F96D8
.L_813F9610:
/* 813F9610 | 80 7F 09 28 */	lwz r3, 0x928(r31)
/* 813F9614 | 88 03 00 04 */	lbz r0, 0x4(r3)
/* 813F9618 | 28 00 00 28 */	cmplwi r0, 0x28
/* 813F961C | 40 82 00 BC */	bne .L_813F96D8
/* 813F9620 | 38 60 00 01 */	li r3, 0x1
/* 813F9624 | 4B F7 7B 51 */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F9628 | 7F E3 FB 78 */	mr r3, r31
/* 813F962C | 4B FF 72 E5 */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
/* 813F9630 | 48 00 00 A8 */	b .L_813F96D8
.L_813F9634:
/* 813F9634 | 80 7F 09 28 */	lwz r3, 0x928(r31)
/* 813F9638 | 88 03 00 04 */	lbz r0, 0x4(r3)
/* 813F963C | 28 00 00 29 */	cmplwi r0, 0x29
/* 813F9640 | 40 82 00 98 */	bne .L_813F96D8
/* 813F9644 | 38 60 00 01 */	li r3, 0x1
/* 813F9648 | 4B F7 7B 2D */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F964C | 7F E3 FB 78 */	mr r3, r31
/* 813F9650 | 4B FF 72 C1 */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
/* 813F9654 | 48 00 00 84 */	b .L_813F96D8
.L_813F9658:
/* 813F9658 | 3F C0 81 0C */	lis r30, m_RakuConfig__Q23ipl5scene@ha
/* 813F965C | 80 7F 00 E4 */	lwz r3, 0xe4(r31)
/* 813F9660 | 38 9E 85 48 */	addi r4, r30, m_RakuConfig__Q23ipl5scene@l
/* 813F9664 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813F9668 | 48 00 49 FD */	bl finish__Q33ipl5scene14RakuRakuThreadFP11NCDApConfigPi
/* 813F966C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F9670 | 41 82 00 68 */	beq .L_813F96D8
/* 813F9674 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 813F9678 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813F967C | 41 82 00 10 */	beq .L_813F968C
/* 813F9680 | 38 60 00 02 */	li r3, 0x2
/* 813F9684 | 4B F7 7A F1 */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F9688 | 48 00 00 1C */	b .L_813F96A4
.L_813F968C:
/* 813F968C | 48 00 22 55 */	bl getData__Q33ipl3ncd10NCDSettingFv
/* 813F9690 | 48 00 1E 3D */	bl getID__Q33ipl3ncd10NCDSettingFv
/* 813F9694 | 38 7E 85 48 */	addi r3, r30, m_RakuConfig__Q23ipl5scene@l
/* 813F9698 | 48 00 1D BD */	bl setRakuParams__Q33ipl3ncd10NCDSettingFRC11NCDApConfig
/* 813F969C | 38 60 00 01 */	li r3, 0x1
/* 813F96A0 | 4B F7 7A D5 */	bl setFuncResult__Q23www10wiisettingFUc
.L_813F96A4:
/* 813F96A4 | 7F E3 FB 78 */	mr r3, r31
/* 813F96A8 | 4B FF 72 69 */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
/* 813F96AC | 48 00 00 2C */	b .L_813F96D8
.L_813F96B0:
/* 813F96B0 | 80 7F 00 E4 */	lwz r3, 0xe4(r31)
/* 813F96B4 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813F96B8 | 38 80 00 00 */	li r4, 0x0
/* 813F96BC | 48 00 49 A9 */	bl finish__Q33ipl5scene14RakuRakuThreadFP11NCDApConfigPi
/* 813F96C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F96C4 | 41 82 00 14 */	beq .L_813F96D8
/* 813F96C8 | 38 60 00 02 */	li r3, 0x2
/* 813F96CC | 4B F7 7A A9 */	bl setFuncResult__Q23www10wiisettingFUc
/* 813F96D0 | 7F E3 FB 78 */	mr r3, r31
/* 813F96D4 | 4B FF 72 3D */	bl resetFuncMsgQ__Q33ipl5scene7SettingFv
.L_813F96D8:
/* 813F96D8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813F96DC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813F96E0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 813F96E4 | 7C 08 03 A6 */	mtlr r0
/* 813F96E8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813F96EC | 4E 80 00 20 */	blr
.endfn RakuProcess__Q33ipl5scene7SettingFv

# .text:0x8F7C | 0x813F96F0 | size: 0x8C
# ipl::scene::Setting::waitStart()
.fn waitStart__Q33ipl5scene7SettingFv, global
/* 813F96F0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F96F4 | 7C 08 02 A6 */	mflr r0
/* 813F96F8 | 38 80 00 00 */	li r4, 0x0
/* 813F96FC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F9700 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F9704 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813F9708 | 7C 7E 1B 78 */	mr r30, r3
/* 813F970C | 80 A3 00 C8 */	lwz r5, 0xc8(r3)
/* 813F9710 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 813F9714 | 48 11 8C 05 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F9718 | 7C 7F 1B 78 */	mr r31, r3
/* 813F971C | 4B F6 91 55 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813F9720 | 38 00 00 01 */	li r0, 0x1
/* 813F9724 | 38 8D 90 C1 */	li r4, lbl_81697101@sda21
/* 813F9728 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 813F972C | 38 A0 00 01 */	li r5, 0x1
/* 813F9730 | 80 7E 00 C8 */	lwz r3, 0xc8(r30)
/* 813F9734 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F9738 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F973C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F9740 | 7D 89 03 A6 */	mtctr r12
/* 813F9744 | 4E 80 04 21 */	bctrl
/* 813F9748 | 38 80 00 01 */	li r4, 0x1
/* 813F974C | 4B F4 AC C9 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813F9750 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813F9754 | 3C 80 81 65 */	lis r4, lbl_8165766C@ha
/* 813F9758 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813F975C | 38 84 76 6C */	addi r4, r4, lbl_8165766C@l
/* 813F9760 | 4B F7 1D 0D */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813F9764 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F9768 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F976C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813F9770 | 7C 08 03 A6 */	mtlr r0
/* 813F9774 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F9778 | 4E 80 00 20 */	blr
.endfn waitStart__Q33ipl5scene7SettingFv

# .text:0x9008 | 0x813F977C | size: 0x7C
# ipl::scene::Setting::waitFinish()
.fn waitFinish__Q33ipl5scene7SettingFv, global
/* 813F977C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F9780 | 7C 08 02 A6 */	mflr r0
/* 813F9784 | 38 80 00 00 */	li r4, 0x0
/* 813F9788 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F978C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F9790 | 7C 7F 1B 78 */	mr r31, r3
/* 813F9794 | 80 A3 00 C8 */	lwz r5, 0xc8(r3)
/* 813F9798 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 813F979C | 48 11 8B 7D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F97A0 | 38 00 00 00 */	li r0, 0x0
/* 813F97A4 | 38 8D 90 C1 */	li r4, lbl_81697101@sda21
/* 813F97A8 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813F97AC | 38 A0 00 01 */	li r5, 0x1
/* 813F97B0 | 80 7F 00 C8 */	lwz r3, 0xc8(r31)
/* 813F97B4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F97B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F97BC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813F97C0 | 7D 89 03 A6 */	mtctr r12
/* 813F97C4 | 4E 80 04 21 */	bctrl
/* 813F97C8 | 38 80 00 00 */	li r4, 0x0
/* 813F97CC | 4B F4 AC 49 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813F97D0 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813F97D4 | 3C 80 81 65 */	lis r4, lbl_8165767C@ha
/* 813F97D8 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813F97DC | 38 84 76 7C */	addi r4, r4, lbl_8165767C@l
/* 813F97E0 | 4B F7 1C 8D */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813F97E4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F97E8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813F97EC | 7C 08 03 A6 */	mtlr r0
/* 813F97F0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F97F4 | 4E 80 00 20 */	blr
.endfn waitFinish__Q33ipl5scene7SettingFv

# .text:0x9084 | 0x813F97F8 | size: 0x3C
# ipl::scene::Setting::isWaitPlaying()
.fn isWaitPlaying__Q33ipl5scene7SettingFv, global
/* 813F97F8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F97FC | 7C 08 02 A6 */	mflr r0
/* 813F9800 | 38 80 00 00 */	li r4, 0x0
/* 813F9804 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F9808 | 80 63 00 C8 */	lwz r3, 0xc8(r3)
/* 813F980C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813F9810 | 48 11 8B 09 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813F9814 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813F9818 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813F981C | 7C 00 00 34 */	cntlzw r0, r0
/* 813F9820 | 54 03 D9 7E */	srwi r3, r0, 5
/* 813F9824 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813F9828 | 7C 08 03 A6 */	mtlr r0
/* 813F982C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813F9830 | 4E 80 00 20 */	blr
.endfn isWaitPlaying__Q33ipl5scene7SettingFv

# .text:0x90C0 | 0x813F9834 | size: 0x258
# ipl::scene::Setting::setSE()
.fn setSE__Q33ipl5scene7SettingFv, global
/* 813F9834 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813F9838 | 7C 08 02 A6 */	mflr r0
/* 813F983C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813F9840 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F9844 | 48 1F FC 85 */	bl _savegpr_29
/* 813F9848 | 80 03 0B 9C */	lwz r0, 0xb9c(r3)
/* 813F984C | 3F A0 81 65 */	lis r29, lbl_816568E8@ha
/* 813F9850 | 7C 7F 1B 78 */	mr r31, r3
/* 813F9854 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 813F9858 | 3B BD 68 E8 */	addi r29, r29, lbl_816568E8@l
/* 813F985C | 40 80 00 1C */	bge .L_813F9878
/* 813F9860 | 80 83 09 24 */	lwz r4, 0x924(r3)
/* 813F9864 | 88 04 00 37 */	lbz r0, 0x37(r4)
/* 813F9868 | 28 00 00 02 */	cmplwi r0, 0x2
/* 813F986C | 40 82 00 0C */	bne .L_813F9878
/* 813F9870 | 38 00 00 00 */	li r0, 0x0
/* 813F9874 | 98 04 00 37 */	stb r0, 0x37(r4)
.L_813F9878:
/* 813F9878 | 80 83 09 24 */	lwz r4, 0x924(r3)
/* 813F987C | 88 04 00 37 */	lbz r0, 0x37(r4)
/* 813F9880 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F9884 | 41 82 00 0C */	beq .L_813F9890
/* 813F9888 | 28 00 00 02 */	cmplwi r0, 0x2
/* 813F988C | 40 82 00 14 */	bne .L_813F98A0
.L_813F9890:
/* 813F9890 | 88 04 00 38 */	lbz r0, 0x38(r4)
/* 813F9894 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F9898 | 41 82 00 08 */	beq .L_813F98A0
/* 813F989C | 98 04 00 37 */	stb r0, 0x37(r4)
.L_813F98A0:
/* 813F98A0 | 80 63 09 24 */	lwz r3, 0x924(r3)
/* 813F98A4 | 88 03 00 37 */	lbz r0, 0x37(r3)
/* 813F98A8 | 28 00 00 20 */	cmplwi r0, 0x20
/* 813F98AC | 41 81 01 50 */	bgt .L_813F99FC
/* 813F98B0 | 3C 60 81 65 */	lis r3, jumptable_81657700@ha
/* 813F98B4 | 54 00 10 3A */	slwi r0, r0, 2
/* 813F98B8 | 38 63 77 00 */	addi r3, r3, jumptable_81657700@l
/* 813F98BC | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813F98C0 | 7C 69 03 A6 */	mtctr r3
/* 813F98C4 | 4E 80 04 20 */	bctr
.L_813F98C8:
/* 813F98C8 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813F98CC | 38 9D 0C B9 */	addi r4, r29, 0xcb9
/* 813F98D0 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813F98D4 | 4B F7 1B 99 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813F98D8 | 48 00 01 24 */	b .L_813F99FC
.L_813F98DC:
/* 813F98DC | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813F98E0 | 38 9D 0D A8 */	addi r4, r29, 0xda8
/* 813F98E4 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813F98E8 | 4B F7 1B 85 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813F98EC | 48 00 01 10 */	b .L_813F99FC
.L_813F98F0:
/* 813F98F0 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813F98F4 | 38 9D 06 23 */	addi r4, r29, 0x623
/* 813F98F8 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813F98FC | 4B F7 1B 71 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813F9900 | 48 00 00 FC */	b .L_813F99FC
.L_813F9904:
/* 813F9904 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813F9908 | 38 9D 0D BE */	addi r4, r29, 0xdbe
/* 813F990C | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813F9910 | 4B F7 1B 5D */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813F9914 | 48 00 00 E8 */	b .L_813F99FC
.L_813F9918:
/* 813F9918 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813F991C | 38 9D 0D CD */	addi r4, r29, 0xdcd
/* 813F9920 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813F9924 | 4B F7 1B 49 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813F9928 | 48 00 00 D4 */	b .L_813F99FC
.L_813F992C:
/* 813F992C | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813F9930 | 38 9D 0D E0 */	addi r4, r29, 0xde0
/* 813F9934 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813F9938 | 4B F7 1B 35 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813F993C | 48 00 00 C0 */	b .L_813F99FC
.L_813F9940:
/* 813F9940 | 3F C0 81 09 */	lis r30, sSystem__Q23ipl3snd@ha
/* 813F9944 | 38 80 00 02 */	li r4, 0x2
/* 813F9948 | 38 7E 99 2C */	addi r3, r30, sSystem__Q23ipl3snd@l
/* 813F994C | 4B F7 26 51 */	bl setOutputMode__Q33ipl3snd6SystemFQ33ipl3snd16EAudioOutputMode
/* 813F9950 | 38 7E 99 2C */	addi r3, r30, sSystem__Q23ipl3snd@l
/* 813F9954 | 38 9D 0D FA */	addi r4, r29, 0xdfa
/* 813F9958 | 4B F7 1B 15 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813F995C | 48 00 00 A0 */	b .L_813F99FC
.L_813F9960:
/* 813F9960 | 3F C0 81 09 */	lis r30, sSystem__Q23ipl3snd@ha
/* 813F9964 | 38 80 00 00 */	li r4, 0x0
/* 813F9968 | 38 7E 99 2C */	addi r3, r30, sSystem__Q23ipl3snd@l
/* 813F996C | 4B F7 26 31 */	bl setOutputMode__Q33ipl3snd6SystemFQ33ipl3snd16EAudioOutputMode
/* 813F9970 | 38 7E 99 2C */	addi r3, r30, sSystem__Q23ipl3snd@l
/* 813F9974 | 38 9D 0D FA */	addi r4, r29, 0xdfa
/* 813F9978 | 4B F7 1A F5 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813F997C | 48 00 00 80 */	b .L_813F99FC
.L_813F9980:
/* 813F9980 | 3F C0 81 09 */	lis r30, sSystem__Q23ipl3snd@ha
/* 813F9984 | 38 80 00 01 */	li r4, 0x1
/* 813F9988 | 38 7E 99 2C */	addi r3, r30, sSystem__Q23ipl3snd@l
/* 813F998C | 4B F7 26 11 */	bl setOutputMode__Q33ipl3snd6SystemFQ33ipl3snd16EAudioOutputMode
/* 813F9990 | 38 7E 99 2C */	addi r3, r30, sSystem__Q23ipl3snd@l
/* 813F9994 | 38 9D 0D FA */	addi r4, r29, 0xdfa
/* 813F9998 | 4B F7 1A D5 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813F999C | 48 00 00 60 */	b .L_813F99FC
.L_813F99A0:
/* 813F99A0 | 3F C0 81 09 */	lis r30, sSystem__Q23ipl3snd@ha
/* 813F99A4 | 38 80 00 02 */	li r4, 0x2
/* 813F99A8 | 38 7E 99 2C */	addi r3, r30, sSystem__Q23ipl3snd@l
/* 813F99AC | 4B F7 25 F1 */	bl setOutputMode__Q33ipl3snd6SystemFQ33ipl3snd16EAudioOutputMode
/* 813F99B0 | 38 7E 99 2C */	addi r3, r30, sSystem__Q23ipl3snd@l
/* 813F99B4 | 38 9D 0D BE */	addi r4, r29, 0xdbe
/* 813F99B8 | 4B F7 1A B5 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813F99BC | 48 00 00 40 */	b .L_813F99FC
.L_813F99C0:
/* 813F99C0 | 3F C0 81 09 */	lis r30, sSystem__Q23ipl3snd@ha
/* 813F99C4 | 38 80 00 00 */	li r4, 0x0
/* 813F99C8 | 38 7E 99 2C */	addi r3, r30, sSystem__Q23ipl3snd@l
/* 813F99CC | 4B F7 25 D1 */	bl setOutputMode__Q33ipl3snd6SystemFQ33ipl3snd16EAudioOutputMode
/* 813F99D0 | 38 7E 99 2C */	addi r3, r30, sSystem__Q23ipl3snd@l
/* 813F99D4 | 38 9D 0D BE */	addi r4, r29, 0xdbe
/* 813F99D8 | 4B F7 1A 95 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813F99DC | 48 00 00 20 */	b .L_813F99FC
.L_813F99E0:
/* 813F99E0 | 3F C0 81 09 */	lis r30, sSystem__Q23ipl3snd@ha
/* 813F99E4 | 38 80 00 01 */	li r4, 0x1
/* 813F99E8 | 38 7E 99 2C */	addi r3, r30, sSystem__Q23ipl3snd@l
/* 813F99EC | 4B F7 25 B1 */	bl setOutputMode__Q33ipl3snd6SystemFQ33ipl3snd16EAudioOutputMode
/* 813F99F0 | 38 7E 99 2C */	addi r3, r30, sSystem__Q23ipl3snd@l
/* 813F99F4 | 38 9D 0D BE */	addi r4, r29, 0xdbe
/* 813F99F8 | 4B F7 1A 75 */	bl startSE__Q33ipl3snd6SystemFPCc
.L_813F99FC:
/* 813F99FC | 80 7F 09 24 */	lwz r3, 0x924(r31)
/* 813F9A00 | 88 83 00 37 */	lbz r4, 0x37(r3)
/* 813F9A04 | 28 04 00 02 */	cmplwi r4, 0x2
/* 813F9A08 | 41 82 00 30 */	beq .L_813F9A38
/* 813F9A0C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813F9A10 | 41 82 00 28 */	beq .L_813F9A38
/* 813F9A14 | 88 03 00 12 */	lbz r0, 0x12(r3)
/* 813F9A18 | 28 00 00 1E */	cmplwi r0, 0x1e
/* 813F9A1C | 41 82 00 1C */	beq .L_813F9A38
/* 813F9A20 | 88 03 00 38 */	lbz r0, 0x38(r3)
/* 813F9A24 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813F9A28 | 40 82 00 10 */	bne .L_813F9A38
/* 813F9A2C | 38 00 00 00 */	li r0, 0x0
/* 813F9A30 | 90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 813F9A34 | 48 00 00 2C */	b .L_813F9A60
.L_813F9A38:
/* 813F9A38 | 28 04 00 02 */	cmplwi r4, 0x2
/* 813F9A3C | 40 82 00 24 */	bne .L_813F9A60
/* 813F9A40 | 4B F3 BF 79 */	bl getYoungController__Q23ipl6SystemFv
/* 813F9A44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F9A48 | 41 82 00 18 */	beq .L_813F9A60
/* 813F9A4C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F9A50 | 38 80 00 00 */	li r4, 0x0
/* 813F9A54 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813F9A58 | 7D 89 03 A6 */	mtctr r12
/* 813F9A5C | 4E 80 04 21 */	bctrl
.L_813F9A60:
/* 813F9A60 | 80 7F 09 24 */	lwz r3, 0x924(r31)
/* 813F9A64 | 38 00 00 00 */	li r0, 0x0
/* 813F9A68 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F9A6C | 98 03 00 37 */	stb r0, 0x37(r3)
/* 813F9A70 | 80 7F 09 24 */	lwz r3, 0x924(r31)
/* 813F9A74 | 98 03 00 38 */	stb r0, 0x38(r3)
/* 813F9A78 | 48 1F FA 9D */	bl _restgpr_29
/* 813F9A7C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813F9A80 | 7C 08 03 A6 */	mtlr r0
/* 813F9A84 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813F9A88 | 4E 80 00 20 */	blr
.endfn setSE__Q33ipl5scene7SettingFv

# .text:0x9318 | 0x813F9A8C | size: 0xD4
# ipl::scene::APEvent::onEvent(unsigned long, unsigned long, void*)
.fn onEvent__Q33ipl5scene7APEventFUlUlPv, global
/* 813F9A8C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813F9A90 | 7C 08 02 A6 */	mflr r0
/* 813F9A94 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813F9A98 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F9A9C | 48 1F FA 29 */	bl _savegpr_28
/* 813F9AA0 | 7C 7C 1B 78 */	mr r28, r3
/* 813F9AA4 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813F9AA8 | 7C BD 2B 78 */	mr r29, r5
/* 813F9AAC | 7C DE 33 78 */	mr r30, r6
/* 813F9AB0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F9AB4 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813F9AB8 | 7D 89 03 A6 */	mtctr r12
/* 813F9ABC | 4E 80 04 21 */	bctrl
/* 813F9AC0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813F9AC4 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 813F9AC8 | 7D 89 03 A6 */	mtctr r12
/* 813F9ACC | 4E 80 04 21 */	bctrl
/* 813F9AD0 | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 813F9AD4 | 3B E3 00 B4 */	addi r31, r3, 0xb4
/* 813F9AD8 | 41 82 00 20 */	beq .L_813F9AF8
/* 813F9ADC | 40 80 00 10 */	bge .L_813F9AEC
/* 813F9AE0 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813F9AE4 | 40 80 00 34 */	bge .L_813F9B18
/* 813F9AE8 | 48 00 00 60 */	b .L_813F9B48
.L_813F9AEC:
/* 813F9AEC | 2C 1D 00 03 */	cmpwi r29, 0x3
/* 813F9AF0 | 40 80 00 58 */	bge .L_813F9B48
/* 813F9AF4 | 48 00 00 14 */	b .L_813F9B08
.L_813F9AF8:
/* 813F9AF8 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813F9AFC | 7F E4 FB 78 */	mr r4, r31
/* 813F9B00 | 4B FF DC 49 */	bl start_point_event__Q33ipl5scene7SettingFPCc
/* 813F9B04 | 48 00 00 44 */	b .L_813F9B48
.L_813F9B08:
/* 813F9B08 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813F9B0C | 7F E4 FB 78 */	mr r4, r31
/* 813F9B10 | 4B FF DD 31 */	bl start_left_event__Q33ipl5scene7SettingFPCc
/* 813F9B14 | 48 00 00 34 */	b .L_813F9B48
.L_813F9B18:
/* 813F9B18 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813F9B1C | 3C 80 00 10 */	lis r4, 0x10
/* 813F9B20 | 7F C3 F3 78 */	mr r3, r30
/* 813F9B24 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813F9B28 | 38 84 08 00 */	addi r4, r4, 0x800
/* 813F9B2C | 7D 89 03 A6 */	mtctr r12
/* 813F9B30 | 4E 80 04 21 */	bctrl
/* 813F9B34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813F9B38 | 41 82 00 10 */	beq .L_813F9B48
/* 813F9B3C | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813F9B40 | 7F E4 FB 78 */	mr r4, r31
/* 813F9B44 | 4B FF DD 9D */	bl start_trig_event__Q33ipl5scene7SettingFPCc
.L_813F9B48:
/* 813F9B48 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813F9B4C | 48 1F F9 C5 */	bl _restgpr_28
/* 813F9B50 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813F9B54 | 7C 08 03 A6 */	mtlr r0
/* 813F9B58 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813F9B5C | 4E 80 00 20 */	blr
.endfn onEvent__Q33ipl5scene7APEventFUlUlPv

# .text:0x93EC | 0x813F9B60 | size: 0x8
# ipl::scene::Setting::isResetAcceptable() const
.fn isResetAcceptable__Q33ipl5scene7SettingCFv, global
/* 813F9B60 | 88 63 0B 5C */	lbz r3, 0xb5c(r3)
/* 813F9B64 | 4E 80 00 20 */	blr
.endfn isResetAcceptable__Q33ipl5scene7SettingCFv

# .text:0x93F4 | 0x813F9B68 | size: 0x8
.fn "@20@__dt__Q33ipl5scene7SettingFv", global
/* 813F9B68 | 38 63 FF EC */	subi r3, r3, 0x14
/* 813F9B6C | 4B FF 6D B8 */	b __dt__Q33ipl5scene7SettingFv
.endfn "@20@__dt__Q33ipl5scene7SettingFv"

# 0x81610948..0x81610BC8 | size: 0x280
.rodata
.balign 8

# .rodata:0x0 | 0x81610948 | size: 0x1A8
.obj lbl_81610948, global
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00010002
	.4byte 0x00010003
	.4byte 0x00020002
	.4byte 0x00020003
	.4byte 0x00030002
	.4byte 0x00030003
	.4byte 0x00040002
	.4byte 0x00040003
	.4byte 0x00050000
	.4byte 0x00060000
	.4byte 0x00070008
	.4byte 0x00070009
	.4byte 0x0007000A
	.4byte 0x0007000B
	.4byte 0x00080008
	.4byte 0x00080009
	.4byte 0x0008000A
	.4byte 0x0008000B
	.4byte 0x00090001
	.4byte 0x000A0001
	.4byte 0x000B000E
	.4byte 0x000B000F
	.4byte 0x000B0010
	.4byte 0x000B0011
	.4byte 0x000B0012
	.4byte 0x000B0013
	.4byte 0x000C000E
	.4byte 0x000C000F
	.4byte 0x000C0010
	.4byte 0x000C0011
	.4byte 0x000C0012
	.4byte 0x000C0013
	.4byte 0x000D000E
	.4byte 0x000D000F
	.4byte 0x000D0010
	.4byte 0x000D0011
	.4byte 0x000D0012
	.4byte 0x000D0013
	.4byte 0x000E000E
	.4byte 0x000E000F
	.4byte 0x000E0010
	.4byte 0x000E0011
	.4byte 0x000E0012
	.4byte 0x000E0013
	.4byte 0x000F0014
	.4byte 0x000F0015
	.4byte 0x000F0016
	.4byte 0x000F0017
	.4byte 0x000F0018
	.4byte 0x000F0019
	.4byte 0x00100014
	.4byte 0x00100015
	.4byte 0x00100016
	.4byte 0x00100017
	.4byte 0x00100018
	.4byte 0x00100019
	.4byte lbl_81656D53
	.4byte lbl_81656D60
	.4byte lbl_81656D7D
	.4byte lbl_81656D97
	.4byte lbl_81656DB0
	.4byte lbl_81697108
	.4byte lbl_81697108
	.4byte lbl_8169710B
	.4byte lbl_81697111
	.4byte lbl_81697118
	.4byte lbl_8169711E
	.4byte lbl_8169711E
	.4byte lbl_8169711F
	.4byte lbl_81697125
	.4byte lbl_8169711E
	.4byte lbl_8169711E
	.4byte lbl_8169711E
	.4byte lbl_8169711E
	.4byte lbl_8169712B
	.4byte lbl_81697131
	.4byte lbl_81697135
	.4byte lbl_81697139
	.4byte lbl_8169713D
	.4byte lbl_81697141
	.4byte lbl_81697145
	.4byte lbl_81697149
	.4byte lbl_8169714D
	.4byte lbl_81697135
	.4byte lbl_81697151
	.4byte lbl_81656DBD
	.4byte lbl_81656DD3
	.4byte lbl_81656DBD
	.4byte lbl_81656DBD
	.4byte lbl_81656DBD
	.4byte lbl_81656DBD
	.4byte lbl_81656DBD
	.4byte lbl_81656DBD
	.4byte lbl_81656DBD
	.4byte lbl_81656DBD
	.4byte lbl_81656DBD
	.4byte lbl_81656DBD
	.4byte lbl_81656DF1
	.4byte lbl_81697155
	.4byte lbl_8169715D
	.4byte lbl_81656DFA
	.4byte lbl_81656E0B
	.4byte lbl_81656E14
	.4byte lbl_81697163
.endobj lbl_81610948

# .rodata:0x1A8 | 0x81610AF0 | size: 0x30
.obj lbl_81610AF0, global
	.4byte lbl_8169718F
	.4byte lbl_81697191
	.4byte lbl_81697193
	.4byte lbl_8169711E
	.4byte lbl_8169711E
	.4byte lbl_8169718F
	.4byte lbl_81697195
	.4byte lbl_8169711E
	.4byte lbl_8169711E
	.4byte lbl_8169711E
	.4byte lbl_8169711E
	.4byte lbl_81697197
.endobj lbl_81610AF0

# .rodata:0x1D8 | 0x81610B20 | size: 0x60
.obj lbl_81610B20, global
	.4byte 0x00010008
	.4byte 0x48414B4A
	.4byte 0x00010008
	.4byte 0x48414B45
	.4byte 0x00010008
	.4byte 0x48414B50
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010008
	.4byte 0x48414B4A
	.4byte 0x00010008
	.4byte 0x48414B4B
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010008
	.4byte 0x48414B43
.endobj lbl_81610B20

# .rodata:0x238 | 0x81610B80 | size: 0x48
.obj lbl_81610B80, global
	.2byte 0x0030
	.2byte 0x0030
	.2byte 0x0030
	.2byte 0x002E
	.2byte 0x0030
	.2byte 0x0030
	.2byte 0x0030
	.2byte 0x002E
	.2byte 0x0030
	.2byte 0x0030
	.2byte 0x0030
	.2byte 0x002E
	.2byte 0x0030
	.2byte 0x0030
	.2byte 0x0030
	.2byte 0x0000
	.2byte 0x0030
	.2byte 0x0031
	.2byte 0x0032
	.2byte 0x0033
	.2byte 0x0034
	.2byte 0x0035
	.2byte 0x0036
	.2byte 0x0037
	.2byte 0x0038
	.2byte 0x0039
	.2byte 0x0030
	.2byte 0x0031
	.2byte 0x0032
	.2byte 0x0033
	.2byte 0x0034
	.2byte 0x0035
	.2byte 0x0036
	.2byte 0x0037
	.2byte 0x0038
	.2byte 0x0039
.endobj lbl_81610B80

# 0x816568E8..0x81657898 | size: 0xFB0
.data
.balign 8

# .data:0x0 | 0x816568E8 | size: 0x10
.obj lbl_816568E8, global
	.4byte lbl_81696FE8
	.4byte lbl_81696FEE
	.4byte lbl_81696FF4
	.4byte lbl_81696FFA
.endobj lbl_816568E8

# .data:0x10 | 0x816568F8 | size: 0x18
.obj lbl_816568F8, global
	.4byte lbl_81697018
	.4byte lbl_81697020
	.4byte lbl_81697028
	.4byte lbl_81697030
	.4byte lbl_81697038
	.4byte lbl_81697040
.endobj lbl_816568F8

# .data:0x28 | 0x81656910 | size: 0x18
.obj lbl_81656910, global
	.4byte lbl_81697048
	.4byte lbl_8169704E
	.4byte lbl_81697054
	.4byte lbl_8169705A
	.4byte lbl_81697060
	.4byte lbl_81697066
.endobj lbl_81656910

# .data:0x40 | 0x81656928 | size: 0xD
.obj lbl_81656928, global
	.string "G_ListUpDown"
.endobj lbl_81656928

# .data:0x4D | 0x81656935 | size: 0xC
.obj lbl_81656935, global
	.string "G_ListInOut"
.endobj lbl_81656935

# .data:0x59 | 0x81656941 | size: 0x9
.obj lbl_81656941, global
	.string "G_Denpa1"
.endobj lbl_81656941

# .data:0x62 | 0x8165694A | size: 0x9
.obj lbl_8165694A, global
	.string "G_Denpa2"
.endobj lbl_8165694A

# .data:0x6B | 0x81656953 | size: 0x9
.obj lbl_81656953, global
	.string "G_Denpa3"
.endobj lbl_81656953

# .data:0x74 | 0x8165695C | size: 0x9
.obj lbl_8165695C, global
	.string "G_Denpa4"
.endobj lbl_8165695C

# .data:0x7D | 0x81656965 | size: 0x9
.obj lbl_81656965, global
	.string "G_Denpa5"
.endobj lbl_81656965

# .data:0x86 | 0x8165696E | size: 0x72
.obj lbl_8165696E, global
	.4byte 0x475F4465
	.4byte 0x6E706136
	.2byte 0x0000
	.4byte lbl_81656928
	.4byte lbl_81656935
	.4byte lbl_8169706C
	.4byte lbl_81697073
	.4byte lbl_8169707A
	.4byte lbl_81697082
	.4byte lbl_81697089
	.4byte lbl_8169708F
	.4byte lbl_81697095
	.4byte lbl_8169709B
	.4byte lbl_816970A1
	.4byte lbl_816970A7
	.4byte lbl_816970AD
	.4byte lbl_816970B3
	.4byte lbl_81656941
	.4byte lbl_8165694A
	.4byte lbl_81656953
	.4byte lbl_8165695C
	.4byte lbl_81656965
	.4byte lbl_8165696E
	.4byte lbl_816970B9
	.4byte lbl_816970C1
	.4byte lbl_816970C9
	.4byte lbl_816970D1
	.4byte lbl_816970D9
	.4byte lbl_816970E1
.endobj lbl_8165696E

# .data:0xF8 | 0x816569E0 | size: 0x18
.obj lbl_816569E0, global
	.string "my_AP_a_ArwAppear.brlan"
.endobj lbl_816569E0

# .data:0x110 | 0x816569F8 | size: 0x16
.obj lbl_816569F8, global
	.string "my_AP_a_ArwLost.brlan"
.endobj lbl_816569F8

# .data:0x126 | 0x81656A0E | size: 0x19
.obj lbl_81656A0E, global
	.string "my_AP_a_ArwFocusOn.brlan"
.endobj lbl_81656A0E

# .data:0x13F | 0x81656A27 | size: 0x1A
.obj lbl_81656A27, global
	.string "my_AP_a_ArwFocusOff.brlan"
.endobj lbl_81656A27

# .data:0x159 | 0x81656A41 | size: 0x18
.obj lbl_81656A41, global
	.string "my_AP_a_ArwSelect.brlan"
.endobj lbl_81656A41

# .data:0x171 | 0x81656A59 | size: 0x17
.obj lbl_81656A59, global
	.string "my_AP_a_ScrollUp.brlan"
.endobj lbl_81656A59

# .data:0x188 | 0x81656A70 | size: 0x19
.obj lbl_81656A70, global
	.string "my_AP_a_ScrollDown.brlan"
.endobj lbl_81656A70

# .data:0x1A1 | 0x81656A89 | size: 0x19
.obj lbl_81656A89, global
	.string "my_AP_a_BtnFocusOn.brlan"
.endobj lbl_81656A89

# .data:0x1BA | 0x81656AA2 | size: 0x1A
.obj lbl_81656AA2, global
	.string "my_AP_a_BtnFocusOff.brlan"
.endobj lbl_81656AA2

# .data:0x1D4 | 0x81656ABC | size: 0x19
.obj lbl_81656ABC, global
	.string "my_AP_a_ListAppear.brlan"
.endobj lbl_81656ABC

# .data:0x1ED | 0x81656AD5 | size: 0x17
.obj lbl_81656AD5, global
	.string "my_AP_a_ListLost.brlan"
.endobj lbl_81656AD5

# .data:0x204 | 0x81656AEC | size: 0x15
.obj lbl_81656AEC, global
	.string "my_AP_a_Denpa0.brlan"
.endobj lbl_81656AEC

# .data:0x219 | 0x81656B01 | size: 0x15
.obj lbl_81656B01, global
	.string "my_AP_a_Denpa1.brlan"
.endobj lbl_81656B01

# .data:0x22E | 0x81656B16 | size: 0x15
.obj lbl_81656B16, global
	.string "my_AP_a_Denpa2.brlan"
.endobj lbl_81656B16

# .data:0x243 | 0x81656B2B | size: 0x15
.obj lbl_81656B2B, global
	.string "my_AP_a_Denpa3.brlan"
.endobj lbl_81656B2B

# .data:0x258 | 0x81656B40 | size: 0x16
.obj lbl_81656B40, global
	.string "my_AP_a_LockOff.brlan"
.endobj lbl_81656B40

# .data:0x26E | 0x81656B56 | size: 0x62
.obj lbl_81656B56, global
	.4byte 0x6D795F41
	.4byte 0x505F615F
	.4byte 0x4C6F636B
	.4byte 0x4F6E2E62
	.4byte 0x726C616E
	.2byte 0x0000
	.4byte lbl_816569E0
	.4byte lbl_816569F8
	.4byte lbl_81656A0E
	.4byte lbl_81656A27
	.4byte lbl_81656A41
	.4byte lbl_81656A59
	.4byte lbl_81656A70
	.4byte lbl_81656A89
	.4byte lbl_81656AA2
	.4byte lbl_81656ABC
	.4byte lbl_81656AD5
	.4byte lbl_81656AEC
	.4byte lbl_81656B01
	.4byte lbl_81656B16
	.4byte lbl_81656B2B
	.4byte lbl_81656B40
	.4byte lbl_81656B56
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81656B56

# .data:0x2D0 | 0x81656BB8 | size: 0xF
.obj lbl_81656BB8, global
	.string "***Destruct!!\n"
.endobj lbl_81656BB8

# .data:0x2DF | 0x81656BC7 | size: 0xB8
.obj lbl_81656BC7, global
	.4byte 0x202E2E2E
	.4byte 0x20627332
	.4byte 0x206D616E
	.4byte 0x61676572
	.4byte 0x20726573
	.4byte 0x74617274
	.4byte 0x65640A00
	.4byte 0x7777776C
	.4byte 0x69622D72
	.4byte 0x766C2E6C
	.4byte 0x7A370057
	.4byte 0x69694E54
	.4byte 0x4C472D52
	.4byte 0x6567756C
	.4byte 0x61722E74
	.4byte 0x7463002F
	.4byte 0x68746D6C
	.4byte 0x2F25732F
	.4byte 0x69706C73
	.4byte 0x65747469
	.4byte 0x6E672E61
	.4byte 0x73680057
	.4byte 0x69692D6B
	.4byte 0x725F526F
	.4byte 0x756E6420
	.4byte 0x476F7468
	.4byte 0x69632042
	.4byte 0x2E747466
	.4byte 0x00576969
	.4byte 0x2D636E5F
	.4byte 0x48656954
	.4byte 0x6957352E
	.4byte 0x74746600
	.4byte 0x2F777777
	.4byte 0x2E617263
	.4byte 0x002F6874
	.4byte 0x6D6C2F42
	.4byte 0x475F3136
	.4byte 0x78392E74
	.4byte 0x706C0073
	.4byte 0x65747469
	.4byte 0x6E672E61
	.4byte 0x7368002F
	.4byte 0x746D702F
	.4byte 0x7777772E
	.4byte 0x61726300
.endobj lbl_81656BC7

# .data:0x397 | 0x81656C7F | size: 0xA8
.obj lbl_81656C7F, global
	.4byte 0x69706C53
	.4byte 0x65747469
	.4byte 0x6E672E63
	.4byte 0x70700053
	.4byte 0x6365656E
	.4byte 0x4368616E
	.4byte 0x67655F62
	.4byte 0x2E62726C
	.4byte 0x79740053
	.4byte 0x6365656E
	.4byte 0x4368616E
	.4byte 0x67655F62
	.4byte 0x5F526967
	.4byte 0x68742E62
	.4byte 0x726C616E
	.4byte 0x00536365
	.4byte 0x656E4368
	.4byte 0x616E6765
	.4byte 0x5F625F4C
	.4byte 0x6566742E
	.4byte 0x62726C61
	.4byte 0x6E006D79
	.4byte 0x5F41505F
	.4byte 0x612E6272
	.4byte 0x6C797400
	.4byte 0x69745F57
	.4byte 0x61697469
	.4byte 0x6E675F61
	.4byte 0x2E62726C
	.4byte 0x79740069
	.4byte 0x745F5761
	.4byte 0x6974696E
	.4byte 0x675F615F
	.4byte 0x57616974
	.4byte 0x2E62726C
	.4byte 0x616E002A
	.4byte 0x2A2A2070
	.4byte 0x72657061
	.4byte 0x72652063
	.4byte 0x6F737473
	.4byte 0x3A202564
	.4byte 0x6D730A00
.endobj lbl_81656C7F

# .data:0x43F | 0x81656D27 | size: 0xC
.obj lbl_81656D27, global
	.string "marc:%s/%s/"
.endobj lbl_81656D27

# .data:0x44B | 0x81656D33 | size: 0x20
.obj lbl_81656D33, global
	.string "file:dvd/html/IPLSetting/%s/%s/"
.endobj lbl_81656D33

# .data:0x46B | 0x81656D53 | size: 0xD
.obj lbl_81656D53, global
	.string "index01.html"
.endobj lbl_81656D53

# .data:0x478 | 0x81656D60 | size: 0x1D
.obj lbl_81656D60, global
	.string "Internet/Internet_index.html"
.endobj lbl_81656D60

# .data:0x495 | 0x81656D7D | size: 0x1A
.obj lbl_81656D7D, global
	.string "Setup/startup_index1.html"
.endobj lbl_81656D7D

# .data:0x4AF | 0x81656D97 | size: 0x19
.obj lbl_81656D97, global
	.string "Update/Update_index.html"
.endobj lbl_81656D97

# .data:0x4C8 | 0x81656DB0 | size: 0xD
.obj lbl_81656DB0, global
	.string "index02.html"
.endobj lbl_81656DB0

# .data:0x4D5 | 0x81656DBD | size: 0x16
.obj lbl_81656DBD, global
	.string "Setup/ScreenSave.html"
.endobj lbl_81656DBD

# .data:0x4EB | 0x81656DD3 | size: 0x1E
.obj lbl_81656DD3, global
	.string "Country/US_Country_flame.html"
.endobj lbl_81656DD3

# .data:0x509 | 0x81656DF1 | size: 0x9
.obj lbl_81656DF1, global
	.string "Calendar"
.endobj lbl_81656DF1

# .data:0x512 | 0x81656DFA | size: 0x11
.obj lbl_81656DFA, global
	.string "Parental_Control"
.endobj lbl_81656DFA

# .data:0x523 | 0x81656E0B | size: 0x9
.obj lbl_81656E0B, global
	.string "Internet"
.endobj lbl_81656E0B

# .data:0x52C | 0x81656E14 | size: 0x91
.obj lbl_81656E14, global
	.4byte 0x57696963
	.4byte 0x6F6E6E65
	.4byte 0x63743234
	.4byte 0x00536574
	.4byte 0x74696E67
	.4byte 0x20536365
	.4byte 0x6E653A20
	.4byte 0x6D656D31
	.4byte 0x3A202564
	.4byte 0x20206D65
	.4byte 0x6D323A20
	.4byte 0x25640A00
	.4byte 0x696E6465
	.4byte 0x7830312E
	.4byte 0x68746D6C
	.4byte 0x00696E64
	.4byte 0x65783032
	.4byte 0x2E68746D
	.4byte 0x6C00696E
	.4byte 0x64657830
	.4byte 0x332E6874
	.4byte 0x6D6C002A
	.4byte 0x2A2A2A2A
	.4byte 0x2A2A2A2A
	.4byte 0x2A2A2A2A
	.4byte 0x2A2A2A2A
	.4byte 0x2A2A2A2A
	.4byte 0x2A2A2A2A
	.4byte 0x2A2A2A2A
	.4byte 0x2A2A2A2A
	.4byte 0x2A2A0A00
	.4byte 0x2052534F
	.4byte 0x20504C41
	.4byte 0x43454420
	.4byte 0x3A202570
	.4byte 0x2025640A
	.byte 0x00
.endobj lbl_81656E14

# .data:0x5BD | 0x81656EA5 | size: 0x66
.obj lbl_81656EA5, global
	.4byte 0x48544D4C
	.4byte 0x20537472
	.4byte 0x696E6720
	.4byte 0x416C6C6F
	.4byte 0x63205369
	.4byte 0x7A653A25
	.4byte 0x640A002E
	.4byte 0x2E2E2E2E
	.4byte 0x2E2E2E2E
	.4byte 0x2E2E2E62
	.4byte 0x726F7773
	.4byte 0x65722063
	.4byte 0x72656174
	.4byte 0x65640A00
	.4byte 0x77616974
	.4byte 0x20666972
	.4byte 0x73742069
	.4byte 0x6E69740A
	.4byte 0x002A2A2A
	.4byte 0x20637265
	.4byte 0x61746520
	.4byte 0x70616765
	.4byte 0x20636F73
	.4byte 0x74733A20
	.4byte 0x25646D73
	.2byte 0x0A00
.endobj lbl_81656EA5

# .data:0x623 | 0x81656F0B | size: 0x55
.obj lbl_81656F0B, global
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x44454349
	.4byte 0x44450049
	.4byte 0x4D452043
	.4byte 0x72656174
	.4byte 0x65642000
	.4byte 0x696E6974
	.4byte 0x4B657962
	.4byte 0x6F617264
	.4byte 0x2025730A
	.4byte 0x00696E69
	.4byte 0x744B6579
	.4byte 0x626F6172
	.4byte 0x64202564
	.4byte 0x0A004E55
	.4byte 0x4C4C2070
	.4byte 0x74720A00
	.4byte 0x4F746865
	.4byte 0x72204576
	.4byte 0x656E740A
	.byte 0x00
.endobj lbl_81656F0B

# .data:0x678 | 0x81656F60 | size: 0x1A0
.obj jumptable_81656F60, local
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F2BE4
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F2D14
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F2D14
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F2CF8
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F2D20
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F2D38
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F2D2C
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F2C10
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F30A8
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3100
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F2DC4
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F2D4C
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F2E28
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F2C1C
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F2C54
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F2C60
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F2C60
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F2C60
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F2C48
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F2C6C
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F2C6C
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F2C6C
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F2C6C
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F2C6C
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F2C78
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F2E28
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F2E28
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F2EC0
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F2F68
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F2F84
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F2FA0
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3028
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3034
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3054
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3068
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3074
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3094
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F30AC
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F30C8
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F30EC
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3104
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3118
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F313C
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3230
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3168
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3194
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F31D8
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F3210
.endobj jumptable_81656F60

# .data:0x818 | 0x81657100 | size: 0x48
.obj jumptable_81657100, local
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F2A78
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F297C
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F2360
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F2390
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F2420
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F245C
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F2510
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F2614
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F2988
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F29B4
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F26C4
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F27B4
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F27EC
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F28BC
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F2904
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F2A78
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F2A78
	.rel calcNormal__Q33ipl5scene7SettingFv, .L_813F2A70
.endobj jumptable_81657100

# .data:0x860 | 0x81657148 | size: 0x95
.obj gap_08_81657148_data, global
.hidden gap_08_81657148_data
	.4byte 0x21212121
	.4byte 0x21212121
	.4byte 0x21212121
	.4byte 0x21205343
	.4byte 0x466C7573
	.4byte 0x68202121
	.4byte 0x21212121
	.4byte 0x21212121
	.4byte 0x21212121
	.4byte 0x0A007761
	.4byte 0x69742066
	.4byte 0x6F722057
	.4byte 0x5041440A
	.4byte 0x00776169
	.4byte 0x7420666F
	.4byte 0x72204253
	.4byte 0x320A0056
	.4byte 0x4920426C
	.4byte 0x61636B0A
	.4byte 0x0073796E
	.4byte 0x63207372
	.4byte 0x616D0A00
	.4byte 0x57616974
	.4byte 0x20536368
	.4byte 0x6564756C
	.4byte 0x6553746F
	.4byte 0x70706564
	.4byte 0x0A007265
	.4byte 0x73657276
	.4byte 0x65206465
	.4byte 0x7374726F
	.4byte 0x790A0072
	.4byte 0x65736572
	.4byte 0x76652064
	.4byte 0x65737472
	.4byte 0x6F792064
	.4byte 0x6F6E650A
	.byte 0x00
.endobj gap_08_81657148_data

# .data:0x8F5 | 0x816571DD | size: 0xF
.obj lbl_816571DD, global
	.string "changed %p %p\n"
.endobj lbl_816571DD

# .data:0x904 | 0x816571EC | size: 0x18
.obj lbl_816571EC, global
	.string "initHTMLText pageId:%d\n"
.endobj lbl_816571EC

# .data:0x91C | 0x81657204 | size: 0x44
.obj jumptable_81657204, local
	.rel initHTMLText__Q33ipl5scene7SettingFv, .L_813F4134
	.rel initHTMLText__Q33ipl5scene7SettingFv, .L_813F4134
	.rel initHTMLText__Q33ipl5scene7SettingFv, .L_813F403C
	.rel initHTMLText__Q33ipl5scene7SettingFv, .L_813F4048
	.rel initHTMLText__Q33ipl5scene7SettingFv, .L_813F4054
	.rel initHTMLText__Q33ipl5scene7SettingFv, .L_813F4060
	.rel initHTMLText__Q33ipl5scene7SettingFv, .L_813F406C
	.rel initHTMLText__Q33ipl5scene7SettingFv, .L_813F4078
	.rel initHTMLText__Q33ipl5scene7SettingFv, .L_813F4084
	.rel initHTMLText__Q33ipl5scene7SettingFv, .L_813F4090
	.rel initHTMLText__Q33ipl5scene7SettingFv, .L_813F409C
	.rel initHTMLText__Q33ipl5scene7SettingFv, .L_813F40B4
	.rel initHTMLText__Q33ipl5scene7SettingFv, .L_813F40CC
	.rel initHTMLText__Q33ipl5scene7SettingFv, .L_813F40E4
	.rel initHTMLText__Q33ipl5scene7SettingFv, .L_813F40F0
	.rel initHTMLText__Q33ipl5scene7SettingFv, .L_813F4108
	.rel initHTMLText__Q33ipl5scene7SettingFv, .L_813F4120
.endobj jumptable_81657204

# .data:0x960 | 0x81657248 | size: 0x17
.obj lbl_81657248, global
	.string "initMessage pageId:%d\n"
.endobj lbl_81657248

# .data:0x977 | 0x8165725F | size: 0x18
.obj lbl_8165725F, global
	.string "initKeyboard formId:%d\n"
.endobj lbl_8165725F

# .data:0x98F | 0x81657277 | size: 0x19
.obj lbl_81657277, global
	.4byte 0x834C815B
	.4byte 0x837B815B
	.4byte 0x83683A20
	.4byte 0x25642025
	.4byte 0x64202564
	.4byte 0x2025640A
	.byte 0x00
.endobj lbl_81657277

# .data:0x9A8 | 0x81657290 | size: 0x5C
.obj jumptable_81657290, local
	.rel initKeyboard__Q33ipl5scene7SettingFPCc, .L_813F42E0
	.rel initKeyboard__Q33ipl5scene7SettingFPCc, .L_813F4210
	.rel initKeyboard__Q33ipl5scene7SettingFPCc, .L_813F4298
	.rel initKeyboard__Q33ipl5scene7SettingFPCc, .L_813F421C
	.rel initKeyboard__Q33ipl5scene7SettingFPCc, .L_813F4274
	.rel initKeyboard__Q33ipl5scene7SettingFPCc, .L_813F4274
	.rel initKeyboard__Q33ipl5scene7SettingFPCc, .L_813F4274
	.rel initKeyboard__Q33ipl5scene7SettingFPCc, .L_813F4274
	.rel initKeyboard__Q33ipl5scene7SettingFPCc, .L_813F4274
	.rel initKeyboard__Q33ipl5scene7SettingFPCc, .L_813F42E0
	.rel initKeyboard__Q33ipl5scene7SettingFPCc, .L_813F422C
	.rel initKeyboard__Q33ipl5scene7SettingFPCc, .L_813F4280
	.rel initKeyboard__Q33ipl5scene7SettingFPCc, .L_813F423C
	.rel initKeyboard__Q33ipl5scene7SettingFPCc, .L_813F42C4
	.rel initKeyboard__Q33ipl5scene7SettingFPCc, .L_813F428C
	.rel initKeyboard__Q33ipl5scene7SettingFPCc, .L_813F428C
	.rel initKeyboard__Q33ipl5scene7SettingFPCc, .L_813F428C
	.rel initKeyboard__Q33ipl5scene7SettingFPCc, .L_813F428C
	.rel initKeyboard__Q33ipl5scene7SettingFPCc, .L_813F424C
	.rel initKeyboard__Q33ipl5scene7SettingFPCc, .L_813F424C
	.rel initKeyboard__Q33ipl5scene7SettingFPCc, .L_813F4280
	.rel initKeyboard__Q33ipl5scene7SettingFPCc, .L_813F42E0
	.rel initKeyboard__Q33ipl5scene7SettingFPCc, .L_813F42D4
.endobj jumptable_81657290

# .data:0xA04 | 0x816572EC | size: 0x10
.obj lbl_816572EC, global
	.4byte 0x666F726D
	.4byte 0x49443A25
	.4byte 0x64202573
	.4byte 0x0A000000
.endobj lbl_816572EC

# .data:0xA14 | 0x816572FC | size: 0x5C
.obj jumptable_816572FC, local
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F4854
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F4778
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F4780
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F478C
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F4798
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F47A4
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F47B0
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F47BC
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F47C8
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F4854
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F47D4
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F47E0
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F47EC
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F47F8
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F484C
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F4804
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F4810
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F481C
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F4828
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F4834
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F4840
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F4854
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F4780
.endobj jumptable_816572FC

# .data:0xA70 | 0x81657358 | size: 0x5C
.obj jumptable_81657358, local
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F4644
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F4568
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F4570
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F457C
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F4588
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F4594
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F45A0
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F45AC
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F45B8
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F4644
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F45C4
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F45D0
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F45DC
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F45E8
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F463C
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F45F4
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F4600
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F460C
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F4618
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F4624
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F4630
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F4644
	.rel calcKeyboard__Q33ipl5scene7SettingFv, .L_813F4570
.endobj jumptable_81657358

# .data:0xACC | 0x816573B4 | size: 0x10
.obj lbl_816573B4, global
	.4byte 0x73657473
	.4byte 0x7472696E
	.4byte 0x673A2564
	.4byte 0x0A000000
.endobj lbl_816573B4

# .data:0xADC | 0x816573C4 | size: 0x40
.obj jumptable_816573C4, local
	.rel calcSetting__Q33ipl5scene7SettingFv, .L_813F4A74
	.rel calcSetting__Q33ipl5scene7SettingFv, .L_813F49C4
	.rel calcSetting__Q33ipl5scene7SettingFv, .L_813F49D0
	.rel calcSetting__Q33ipl5scene7SettingFv, .L_813F49DC
	.rel calcSetting__Q33ipl5scene7SettingFv, .L_813F49E8
	.rel calcSetting__Q33ipl5scene7SettingFv, .L_813F49F4
	.rel calcSetting__Q33ipl5scene7SettingFv, .L_813F4A00
	.rel calcSetting__Q33ipl5scene7SettingFv, .L_813F4A0C
	.rel calcSetting__Q33ipl5scene7SettingFv, .L_813F4A18
	.rel calcSetting__Q33ipl5scene7SettingFv, .L_813F4A24
	.rel calcSetting__Q33ipl5scene7SettingFv, .L_813F4A30
	.rel calcSetting__Q33ipl5scene7SettingFv, .L_813F4A3C
	.rel calcSetting__Q33ipl5scene7SettingFv, .L_813F4A48
	.rel calcSetting__Q33ipl5scene7SettingFv, .L_813F4A54
	.rel calcSetting__Q33ipl5scene7SettingFv, .L_813F4A60
	.rel calcSetting__Q33ipl5scene7SettingFv, .L_813F4A6C
.endobj jumptable_816573C4

# .data:0xB1C | 0x81657404 | size: 0x18
.obj lbl_81657404, global
	.4byte 0x4B657962
	.4byte 0x6F617264
	.4byte 0x20436F6E
	.4byte 0x6669726D
	.4byte 0x3A25640A
	.4byte 0x00000000
.endobj lbl_81657404

# .data:0xB34 | 0x8165741C | size: 0x54
.obj jumptable_8165741C, local
	.rel onTextInputOK__Q33ipl5scene7SettingFv, .L_813F4D60
	.rel onTextInputOK__Q33ipl5scene7SettingFv, .L_813F4BB8
	.rel onTextInputOK__Q33ipl5scene7SettingFv, .L_813F4D60
	.rel onTextInputOK__Q33ipl5scene7SettingFv, .L_813F4BCC
	.rel onTextInputOK__Q33ipl5scene7SettingFv, .L_813F4BE4
	.rel onTextInputOK__Q33ipl5scene7SettingFv, .L_813F4BFC
	.rel onTextInputOK__Q33ipl5scene7SettingFv, .L_813F4C14
	.rel onTextInputOK__Q33ipl5scene7SettingFv, .L_813F4C2C
	.rel onTextInputOK__Q33ipl5scene7SettingFv, .L_813F4C44
	.rel onTextInputOK__Q33ipl5scene7SettingFv, .L_813F4D60
	.rel onTextInputOK__Q33ipl5scene7SettingFv, .L_813F4C5C
	.rel onTextInputOK__Q33ipl5scene7SettingFv, .L_813F4C74
	.rel onTextInputOK__Q33ipl5scene7SettingFv, .L_813F4C8C
	.rel onTextInputOK__Q33ipl5scene7SettingFv, .L_813F4CA4
	.rel onTextInputOK__Q33ipl5scene7SettingFv, .L_813F4D4C
	.rel onTextInputOK__Q33ipl5scene7SettingFv, .L_813F4CBC
	.rel onTextInputOK__Q33ipl5scene7SettingFv, .L_813F4CD4
	.rel onTextInputOK__Q33ipl5scene7SettingFv, .L_813F4CEC
	.rel onTextInputOK__Q33ipl5scene7SettingFv, .L_813F4D04
	.rel onTextInputOK__Q33ipl5scene7SettingFv, .L_813F4D1C
	.rel onTextInputOK__Q33ipl5scene7SettingFv, .L_813F4D34
.endobj jumptable_8165741C

# .data:0xB88 | 0x81657470 | size: 0x17
.obj lbl_81657470, global
	.string "SCGetOwnerNickName:%d\n"
.endobj lbl_81657470

# .data:0xB9F | 0x81657487 | size: 0xE
.obj lbl_81657487, global
	.string "privacy : %s\n"
.endobj lbl_81657487

# .data:0xBAD | 0x81657495 | size: 0x26
.obj lbl_81657495, global
	.string "initHTMLText initString:%s length:%d\n"
.endobj lbl_81657495

# .data:0xBD3 | 0x816574BB | size: 0xD
.obj lbl_816574BB, global
	.string "Ver. %d.%d%s"
.endobj lbl_816574BB

# .data:0xBE0 | 0x816574C8 | size: 0x16
.obj lbl_816574C8, global
	.string "nicknameFlag:1 %d %s\n"
.endobj lbl_816574C8

# .data:0xBF6 | 0x816574DE | size: 0x13
.obj lbl_816574DE, global
	.string "securityFlag:1 %s\n"
.endobj lbl_816574DE

# .data:0xC09 | 0x816574F1 | size: 0x17
.obj lbl_816574F1, global
	.4byte 0x25303364
	.4byte 0x2E253033
	.4byte 0x642E2530
	.4byte 0x33642E25
	.4byte 0x30336400
	.byte 0x00, 0x00, 0x00
.endobj lbl_816574F1

# .data:0xC20 | 0x81657508 | size: 0x5C
.obj jumptable_81657508, local
	.rel setDefaultBackString__Q33ipl5scene7SettingFv, .L_813F64F8
	.rel setDefaultBackString__Q33ipl5scene7SettingFv, .L_813F609C
	.rel setDefaultBackString__Q33ipl5scene7SettingFv, .L_813F60D4
	.rel setDefaultBackString__Q33ipl5scene7SettingFv, .L_813F610C
	.rel setDefaultBackString__Q33ipl5scene7SettingFv, .L_813F6144
	.rel setDefaultBackString__Q33ipl5scene7SettingFv, .L_813F617C
	.rel setDefaultBackString__Q33ipl5scene7SettingFv, .L_813F61B4
	.rel setDefaultBackString__Q33ipl5scene7SettingFv, .L_813F61EC
	.rel setDefaultBackString__Q33ipl5scene7SettingFv, .L_813F6224
	.rel setDefaultBackString__Q33ipl5scene7SettingFv, .L_813F64F8
	.rel setDefaultBackString__Q33ipl5scene7SettingFv, .L_813F625C
	.rel setDefaultBackString__Q33ipl5scene7SettingFv, .L_813F6294
	.rel setDefaultBackString__Q33ipl5scene7SettingFv, .L_813F62CC
	.rel setDefaultBackString__Q33ipl5scene7SettingFv, .L_813F6304
	.rel setDefaultBackString__Q33ipl5scene7SettingFv, .L_813F633C
	.rel setDefaultBackString__Q33ipl5scene7SettingFv, .L_813F6374
	.rel setDefaultBackString__Q33ipl5scene7SettingFv, .L_813F63AC
	.rel setDefaultBackString__Q33ipl5scene7SettingFv, .L_813F63E4
	.rel setDefaultBackString__Q33ipl5scene7SettingFv, .L_813F641C
	.rel setDefaultBackString__Q33ipl5scene7SettingFv, .L_813F6454
	.rel setDefaultBackString__Q33ipl5scene7SettingFv, .L_813F648C
	.rel setDefaultBackString__Q33ipl5scene7SettingFv, .L_813F64F8
	.rel setDefaultBackString__Q33ipl5scene7SettingFv, .L_813F64C4
.endobj jumptable_81657508

# .data:0xC7C | 0x81657564 | size: 0x28
.obj jumptable_81657564, local
	.rel scanAP__Q33ipl5scene7SettingFv, .L_813F6C84
	.rel scanAP__Q33ipl5scene7SettingFv, .L_813F6890
	.rel scanAP__Q33ipl5scene7SettingFv, .L_813F68F4
	.rel scanAP__Q33ipl5scene7SettingFv, .L_813F69C4
	.rel scanAP__Q33ipl5scene7SettingFv, .L_813F69E8
	.rel scanAP__Q33ipl5scene7SettingFv, .L_813F6A0C
	.rel scanAP__Q33ipl5scene7SettingFv, .L_813F6A18
	.rel scanAP__Q33ipl5scene7SettingFv, .L_813F6BC0
	.rel scanAP__Q33ipl5scene7SettingFv, .L_813F6C04
	.rel scanAP__Q33ipl5scene7SettingFv, .L_813F6C14
.endobj jumptable_81657564

# .data:0xCA4 | 0x8165758C | size: 0x15
.obj lbl_8165758C, global
	.string "SET DATA : %d %s %d\n"
.endobj lbl_8165758C

# .data:0xCB9 | 0x816575A1 | size: 0x13
.obj lbl_816575A1, global
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x42545F50
	.4byte 0x55534800
	.byte 0x00, 0x00, 0x00
.endobj lbl_816575A1

# .data:0xCCC | 0x816575B4 | size: 0x2C
.obj jumptable_816575B4, local
	.rel setUpdate___Q33ipl5scene7SettingFv, .L_813F7FB0
	.rel setUpdate___Q33ipl5scene7SettingFv, .L_813F7FB8
	.rel setUpdate___Q33ipl5scene7SettingFv, .L_813F7FC0
	.rel setUpdate___Q33ipl5scene7SettingFv, .L_813F7FC8
	.rel setUpdate___Q33ipl5scene7SettingFv, .L_813F7FD0
	.rel setUpdate___Q33ipl5scene7SettingFv, .L_813F7FD8
	.rel setUpdate___Q33ipl5scene7SettingFv, .L_813F7FE0
	.rel setUpdate___Q33ipl5scene7SettingFv, .L_813F7FE8
	.rel setUpdate___Q33ipl5scene7SettingFv, .L_813F7FF0
	.rel setUpdate___Q33ipl5scene7SettingFv, .L_813F7FF8
	.rel setUpdate___Q33ipl5scene7SettingFv, .L_813F802C
.endobj jumptable_816575B4

# .data:0xCF8 | 0x816575E0 | size: 0x30
.obj jumptable_816575E0, local
	.rel setNUP__Q33ipl5scene7SettingFv, .L_813F8704
	.rel setNUP__Q33ipl5scene7SettingFv, .L_813F8714
	.rel setNUP__Q33ipl5scene7SettingFv, .L_813F8784
	.rel setNUP__Q33ipl5scene7SettingFv, .L_813F87A8
	.rel setNUP__Q33ipl5scene7SettingFv, .L_813F87C8
	.rel setNUP__Q33ipl5scene7SettingFv, .L_813F8810
	.rel setNUP__Q33ipl5scene7SettingFv, .L_813F8844
	.rel setNUP__Q33ipl5scene7SettingFv, .L_813F886C
	.rel setNUP__Q33ipl5scene7SettingFv, .L_813F889C
	.rel setNUP__Q33ipl5scene7SettingFv, .L_813F88F0
	.rel setNUP__Q33ipl5scene7SettingFv, .L_813F895C
	.rel setNUP__Q33ipl5scene7SettingFv, .L_813F8924
.endobj jumptable_816575E0

# .data:0xD28 | 0x81657610 | size: 0xA
.obj lbl_81657610, global
	.string "error:%d\n"
.endobj lbl_81657610

# .data:0xD32 | 0x8165761A | size: 0xD
.obj lbl_8165761A, global
	.string "NandSDWorker"
.endobj lbl_8165761A

# .data:0xD3F | 0x81657627 | size: 0x1B
.obj lbl_81657627, global
	.string "USB SCGetOwnerNickName:%d\n"
.endobj lbl_81657627

# .data:0xD5A | 0x81657642 | size: 0x2A
.obj lbl_81657642, global
	.string "m_AOSSThread : Terminated with Error(%d)\n"
.endobj lbl_81657642

# .data:0xD84 | 0x8165766C | size: 0x10
.obj lbl_8165766C, global
	.string "WIPL_SE_COPYING"
.endobj lbl_8165766C

# .data:0xD94 | 0x8165767C | size: 0x84
.obj lbl_8165767C, global
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x434F5059
	.4byte 0x5F46494E
	.4byte 0x49534800
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x42545F54
	.4byte 0x41524745
	.4byte 0x5454494E
	.4byte 0x47005749
	.4byte 0x504C5F53
	.4byte 0x455F4341
	.4byte 0x4E43454C
	.4byte 0x00574950
	.4byte 0x4C5F5345
	.4byte 0x5F43484F
	.4byte 0x4943455F
	.4byte 0x43484700
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x43484152
	.4byte 0x5F44454C
	.4byte 0x4554455F
	.4byte 0x4552524F
	.4byte 0x52005749
	.4byte 0x504C5F53
	.4byte 0x455F4F55
	.4byte 0x54505554
	.4byte 0x5F4D4F44
	.4byte 0x455F5345
	.4byte 0x4C454354
	.4byte 0x00000000
.endobj lbl_8165767C

# .data:0xE18 | 0x81657700 | size: 0x84
.obj jumptable_81657700, local
	.rel setSE__Q33ipl5scene7SettingFv, .L_813F99FC
	.rel setSE__Q33ipl5scene7SettingFv, .L_813F98C8
	.rel setSE__Q33ipl5scene7SettingFv, .L_813F98DC
	.rel setSE__Q33ipl5scene7SettingFv, .L_813F98F0
	.rel setSE__Q33ipl5scene7SettingFv, .L_813F9904
	.rel setSE__Q33ipl5scene7SettingFv, .L_813F9918
	.rel setSE__Q33ipl5scene7SettingFv, .L_813F992C
	.rel setSE__Q33ipl5scene7SettingFv, .L_813F99FC
	.rel setSE__Q33ipl5scene7SettingFv, .L_813F99FC
	.rel setSE__Q33ipl5scene7SettingFv, .L_813F99FC
	.rel setSE__Q33ipl5scene7SettingFv, .L_813F9940
	.rel setSE__Q33ipl5scene7SettingFv, .L_813F9960
	.rel setSE__Q33ipl5scene7SettingFv, .L_813F9980
	.rel setSE__Q33ipl5scene7SettingFv, .L_813F99FC
	.rel setSE__Q33ipl5scene7SettingFv, .L_813F99FC
	.rel setSE__Q33ipl5scene7SettingFv, .L_813F99FC
	.rel setSE__Q33ipl5scene7SettingFv, .L_813F99FC
	.rel setSE__Q33ipl5scene7SettingFv, .L_813F99FC
	.rel setSE__Q33ipl5scene7SettingFv, .L_813F99FC
	.rel setSE__Q33ipl5scene7SettingFv, .L_813F99FC
	.rel setSE__Q33ipl5scene7SettingFv, .L_813F99FC
	.rel setSE__Q33ipl5scene7SettingFv, .L_813F99FC
	.rel setSE__Q33ipl5scene7SettingFv, .L_813F99FC
	.rel setSE__Q33ipl5scene7SettingFv, .L_813F99FC
	.rel setSE__Q33ipl5scene7SettingFv, .L_813F99FC
	.rel setSE__Q33ipl5scene7SettingFv, .L_813F99FC
	.rel setSE__Q33ipl5scene7SettingFv, .L_813F99FC
	.rel setSE__Q33ipl5scene7SettingFv, .L_813F99FC
	.rel setSE__Q33ipl5scene7SettingFv, .L_813F99FC
	.rel setSE__Q33ipl5scene7SettingFv, .L_813F99FC
	.rel setSE__Q33ipl5scene7SettingFv, .L_813F99A0
	.rel setSE__Q33ipl5scene7SettingFv, .L_813F99C0
	.rel setSE__Q33ipl5scene7SettingFv, .L_813F99E0
.endobj jumptable_81657700

# .data:0xE9C | 0x81657784 | size: 0x18
# ipl::scene::APEvent::__vtable
.obj __vt__Q33ipl5scene7APEvent, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte onEvent__Q33ipl5scene7APEventFUlUlPv
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
.endobj __vt__Q33ipl5scene7APEvent

# .data:0xEB4 | 0x8165779C | size: 0xFC
# ipl::scene::Setting::__vtable
.obj __vt__Q33ipl5scene7Setting, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene7SettingFv
	.4byte getParent__Q33ipl5scene4BaseFv
	.4byte getChild__Q33ipl5scene4BaseFv
	.4byte getNext__Q33ipl5scene4BaseFv
	.4byte getPrev__Q33ipl5scene4BaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@20@__dt__Q33ipl5scene7SettingFv"
	.4byte isReady__Q33ipl5scene4BaseCFv
	.4byte isResetAcceptable__Q33ipl5scene7SettingCFv
	.4byte startResetting__Q33ipl5scene4BaseFv
	.4byte isResetProcessDone__Q33ipl5scene4BaseFv
	.4byte prepare__Q33ipl5scene7SettingFv
	.4byte create__Q33ipl5scene7SettingFv
	.4byte fn_8140B254
	.4byte draw__Q33ipl5scene7SettingFv
	.4byte destroy__Q33ipl5scene7SettingFv
	.4byte initCalcNormal__Q33ipl5scene14FaderSceneBaseFv
	.4byte initCalcFadeout__Q33ipl5scene14FaderSceneBaseFv
	.4byte calcCommon__Q33ipl5scene14FaderSceneBaseFv
	.4byte calcFadein__Q33ipl5scene7SettingFv
	.4byte calcNormal__Q33ipl5scene7SettingFv
	.4byte calcFadeout__Q33ipl5scene7SettingFv
	.4byte calcCommonAfter__Q33ipl5scene14FaderSceneBaseFv
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
.endobj __vt__Q33ipl5scene7Setting

# 0x81694C00..0x81694C40 | size: 0x40
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694C00 | size: 0x4
.obj lbl_81694C00, global
	.4byte lbl_81656D27
.endobj lbl_81694C00

# .sdata2:0x4 | 0x81694C04 | size: 0x4
.obj lbl_81694C04, global
	.4byte lbl_81656D33
.endobj lbl_81694C04

# .sdata2:0x8 | 0x81694C08 | size: 0x8
.obj lbl_81694C08, global
	.double 2726297.6
.endobj lbl_81694C08

# .sdata2:0x10 | 0x81694C10 | size: 0x8
.obj lbl_81694C10, global
	.double 4503599627370496
.endobj lbl_81694C10

# .sdata2:0x18 | 0x81694C18 | size: 0x4
.obj lbl_81694C18, global
	.float 0
.endobj lbl_81694C18

# .sdata2:0x1C | 0x81694C1C | size: 0x4
.obj lbl_81694C1C, global
	.float -1000
.endobj lbl_81694C1C

# .sdata2:0x20 | 0x81694C20 | size: 0x1
.obj lbl_81694C20, global
	.byte 0x00
.endobj lbl_81694C20

# .sdata2:0x21 | 0x81694C21 | size: 0x1
.obj lbl_81694C21, global
	.byte 0x00
.endobj lbl_81694C21

# .sdata2:0x22 | 0x81694C22 | size: 0x1
.obj lbl_81694C22, global
	.byte 0x00
.endobj lbl_81694C22

# .sdata2:0x23 | 0x81694C23 | size: 0x1
.obj lbl_81694C23, global
	.byte 0xFF
.endobj lbl_81694C23

# .sdata2:0x24 | 0x81694C24 | size: 0x1
.obj lbl_81694C24, global
	.byte 0xFF
.endobj lbl_81694C24

# .sdata2:0x25 | 0x81694C25 | size: 0x1
.obj lbl_81694C25, global
	.byte 0xFF
.endobj lbl_81694C25

# .sdata2:0x26 | 0x81694C26 | size: 0x1
.obj lbl_81694C26, global
	.byte 0xFF
.endobj lbl_81694C26

# .sdata2:0x27 | 0x81694C27 | size: 0x1
.obj lbl_81694C27, global
	.byte 0xFF
.endobj lbl_81694C27

# .sdata2:0x28 | 0x81694C28 | size: 0x1
.obj lbl_81694C28, global
	.byte 0xFF
.endobj lbl_81694C28

# .sdata2:0x29 | 0x81694C29 | size: 0x1
.obj lbl_81694C29, global
	.byte 0xFF
.endobj lbl_81694C29

# .sdata2:0x2A | 0x81694C2A | size: 0x1
.obj lbl_81694C2A, global
	.byte 0xFF
.endobj lbl_81694C2A

# .sdata2:0x2B | 0x81694C2B | size: 0x1
.obj gap_09_81694C2B_sdata2, global
.hidden gap_09_81694C2B_sdata2
	.byte 0x00
.endobj gap_09_81694C2B_sdata2

# .sdata2:0x2C | 0x81694C2C | size: 0x4
.obj lbl_81694C2C, global
	.float 1000
.endobj lbl_81694C2C

# .sdata2:0x30 | 0x81694C30 | size: 0x8
.obj lbl_81694C30, global
	.double 4503601774854144
.endobj lbl_81694C30

# .sdata2:0x38 | 0x81694C38 | size: 0x8
.obj lbl_81694C38, global
	.float 78
	.float 0
.endobj lbl_81694C38

# 0x81696FE8..0x816971E0 | size: 0x1F8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696FE8 | size: 0x6
.obj lbl_81696FE8, global
	.string "B_AP2"
.endobj lbl_81696FE8

# .sdata:0x6 | 0x81696FEE | size: 0x6
.obj lbl_81696FEE, global
	.string "B_AP3"
.endobj lbl_81696FEE

# .sdata:0xC | 0x81696FF4 | size: 0x6
.obj lbl_81696FF4, global
	.string "B_AP4"
.endobj lbl_81696FF4

# .sdata:0x12 | 0x81696FFA | size: 0x6
.obj lbl_81696FFA, global
	.string "B_AP5"
.endobj lbl_81696FFA

# .sdata:0x18 | 0x81697000 | size: 0x7
.obj lbl_81697000, global
	.string "B_ArwA"
.endobj lbl_81697000

# .sdata:0x1F | 0x81697007 | size: 0x9
.obj lbl_81697007, global
	.4byte 0x425F4172
	.4byte 0x77420000
	.byte 0x00
.endobj lbl_81697007

# .sdata:0x28 | 0x81697010 | size: 0x8
.obj lbl_81697010, global
	.4byte lbl_81697000
	.4byte lbl_81697007
.endobj lbl_81697010

# .sdata:0x30 | 0x81697018 | size: 0x8
.obj lbl_81697018, global
	.string "T_Name1"
.endobj lbl_81697018

# .sdata:0x38 | 0x81697020 | size: 0x8
.obj lbl_81697020, global
	.string "T_Name2"
.endobj lbl_81697020

# .sdata:0x40 | 0x81697028 | size: 0x8
.obj lbl_81697028, global
	.string "T_Name3"
.endobj lbl_81697028

# .sdata:0x48 | 0x81697030 | size: 0x8
.obj lbl_81697030, global
	.string "T_Name4"
.endobj lbl_81697030

# .sdata:0x50 | 0x81697038 | size: 0x8
.obj lbl_81697038, global
	.string "T_Name5"
.endobj lbl_81697038

# .sdata:0x58 | 0x81697040 | size: 0x8
.obj lbl_81697040, global
	.string "T_Name6"
.endobj lbl_81697040

# .sdata:0x60 | 0x81697048 | size: 0x6
.obj lbl_81697048, global
	.string "N_AP1"
.endobj lbl_81697048

# .sdata:0x66 | 0x8169704E | size: 0x6
.obj lbl_8169704E, global
	.string "N_AP2"
.endobj lbl_8169704E

# .sdata:0x6C | 0x81697054 | size: 0x6
.obj lbl_81697054, global
	.string "N_AP3"
.endobj lbl_81697054

# .sdata:0x72 | 0x8169705A | size: 0x6
.obj lbl_8169705A, global
	.string "N_AP4"
.endobj lbl_8169705A

# .sdata:0x78 | 0x81697060 | size: 0x6
.obj lbl_81697060, global
	.string "N_AP5"
.endobj lbl_81697060

# .sdata:0x7E | 0x81697066 | size: 0x6
.obj lbl_81697066, global
	.string "N_AP6"
.endobj lbl_81697066

# .sdata:0x84 | 0x8169706C | size: 0x7
.obj lbl_8169706C, global
	.string "G_ArwA"
.endobj lbl_8169706C

# .sdata:0x8B | 0x81697073 | size: 0x7
.obj lbl_81697073, global
	.string "G_ArwB"
.endobj lbl_81697073

# .sdata:0x92 | 0x8169707A | size: 0x8
.obj lbl_8169707A, global
	.string "G_Denpa"
.endobj lbl_8169707A

# .sdata:0x9A | 0x81697082 | size: 0x7
.obj lbl_81697082, global
	.string "G_Lock"
.endobj lbl_81697082

# .sdata:0xA1 | 0x81697089 | size: 0x6
.obj lbl_81697089, global
	.string "G_AP0"
.endobj lbl_81697089

# .sdata:0xA7 | 0x8169708F | size: 0x6
.obj lbl_8169708F, global
	.string "G_AP1"
.endobj lbl_8169708F

# .sdata:0xAD | 0x81697095 | size: 0x6
.obj lbl_81697095, global
	.string "G_AP2"
.endobj lbl_81697095

# .sdata:0xB3 | 0x8169709B | size: 0x6
.obj lbl_8169709B, global
	.string "G_AP3"
.endobj lbl_8169709B

# .sdata:0xB9 | 0x816970A1 | size: 0x6
.obj lbl_816970A1, global
	.string "G_AP4"
.endobj lbl_816970A1

# .sdata:0xBF | 0x816970A7 | size: 0x6
.obj lbl_816970A7, global
	.string "G_AP5"
.endobj lbl_816970A7

# .sdata:0xC5 | 0x816970AD | size: 0x6
.obj lbl_816970AD, global
	.string "G_AP6"
.endobj lbl_816970AD

# .sdata:0xCB | 0x816970B3 | size: 0x6
.obj lbl_816970B3, global
	.string "G_AP7"
.endobj lbl_816970B3

# .sdata:0xD1 | 0x816970B9 | size: 0x8
.obj lbl_816970B9, global
	.string "G_Lock1"
.endobj lbl_816970B9

# .sdata:0xD9 | 0x816970C1 | size: 0x8
.obj lbl_816970C1, global
	.string "G_Lock2"
.endobj lbl_816970C1

# .sdata:0xE1 | 0x816970C9 | size: 0x8
.obj lbl_816970C9, global
	.string "G_Lock3"
.endobj lbl_816970C9

# .sdata:0xE9 | 0x816970D1 | size: 0x8
.obj lbl_816970D1, global
	.string "G_Lock4"
.endobj lbl_816970D1

# .sdata:0xF1 | 0x816970D9 | size: 0x8
.obj lbl_816970D9, global
	.string "G_Lock5"
.endobj lbl_816970D9

# .sdata:0xF9 | 0x816970E1 | size: 0x8
.obj lbl_816970E1, global
	.string "G_Lock6"
.endobj lbl_816970E1

# .sdata:0x101 | 0x816970E9 | size: 0x4
.obj lbl_816970E9, global
	.string "US2"
.endobj lbl_816970E9

# .sdata:0x105 | 0x816970ED | size: 0x4
.obj lbl_816970ED, global
	.string "TW2"
.endobj lbl_816970ED

# .sdata:0x109 | 0x816970F1 | size: 0x5
.obj lbl_816970F1, global
	.string "NAND"
.endobj lbl_816970F1

# .sdata:0x10E | 0x816970F6 | size: 0x4
.obj lbl_816970F6, global
	.string "arc"
.endobj lbl_816970F6

# .sdata:0x112 | 0x816970FA | size: 0x7
.obj lbl_816970FA, global
	.string "G_Wait"
.endobj lbl_816970FA

# .sdata:0x119 | 0x81697101 | size: 0x7
.obj lbl_81697101, global
	.string "N_Wait"
.endobj lbl_81697101

# .sdata:0x120 | 0x81697108 | size: 0x3
.obj lbl_81697108, global
	.string "%s"
.endobj lbl_81697108

# .sdata:0x123 | 0x8169710B | size: 0x6
.obj lbl_8169710B, global
	.string "JP/JP"
.endobj lbl_8169710B

# .sdata:0x129 | 0x81697111 | size: 0x7
.obj lbl_81697111, global
	.string "FIX/US"
.endobj lbl_81697111

# .sdata:0x130 | 0x81697118 | size: 0x6
.obj lbl_81697118, global
	.string "EU/EU"
.endobj lbl_81697118

# .sdata:0x136 | 0x8169711E | size: 0x1
.obj lbl_8169711E, global
	.byte 0x00
.endobj lbl_8169711E

# .sdata:0x137 | 0x8169711F | size: 0x6
.obj lbl_8169711F, global
	.string "TW/TW"
.endobj lbl_8169711F

# .sdata:0x13D | 0x81697125 | size: 0x6
.obj lbl_81697125, global
	.string "KR/KR"
.endobj lbl_81697125

# .sdata:0x143 | 0x8169712B | size: 0x6
.obj lbl_8169712B, global
	.string "CN/CN"
.endobj lbl_8169712B

# .sdata:0x149 | 0x81697131 | size: 0x4
.obj lbl_81697131, global
	.string "JPN"
.endobj lbl_81697131

# .sdata:0x14D | 0x81697135 | size: 0x4
.obj lbl_81697135, global
	.string "ENG"
.endobj lbl_81697135

# .sdata:0x151 | 0x81697139 | size: 0x4
.obj lbl_81697139, global
	.string "GER"
.endobj lbl_81697139

# .sdata:0x155 | 0x8169713D | size: 0x4
.obj lbl_8169713D, global
	.string "FRA"
.endobj lbl_8169713D

# .sdata:0x159 | 0x81697141 | size: 0x4
.obj lbl_81697141, global
	.string "SPA"
.endobj lbl_81697141

# .sdata:0x15D | 0x81697145 | size: 0x4
.obj lbl_81697145, global
	.string "ITA"
.endobj lbl_81697145

# .sdata:0x161 | 0x81697149 | size: 0x4
.obj lbl_81697149, global
	.string "DUT"
.endobj lbl_81697149

# .sdata:0x165 | 0x8169714D | size: 0x4
.obj lbl_8169714D, global
	.string "CHN"
.endobj lbl_8169714D

# .sdata:0x169 | 0x81697151 | size: 0x4
.obj lbl_81697151, global
	.string "KOR"
.endobj lbl_81697151

# .sdata:0x16D | 0x81697155 | size: 0x8
.obj lbl_81697155, global
	.string "Display"
.endobj lbl_81697155

# .sdata:0x175 | 0x8169715D | size: 0x6
.obj lbl_8169715D, global
	.string "Sound"
.endobj lbl_8169715D

# .sdata:0x17B | 0x81697163 | size: 0x7
.obj lbl_81697163, global
	.string "Update"
.endobj lbl_81697163

# .sdata:0x182 | 0x8169716A | size: 0x4
.obj lbl_8169716A, global
	.string "%s\n"
.endobj lbl_8169716A

# .sdata:0x186 | 0x8169716E | size: 0x5
.obj lbl_8169716E, global
	.string "hoge"
.endobj lbl_8169716E

# .sdata:0x18B | 0x81697173 | size: 0x7
.obj lbl_81697173, global
	.string "N_Tra0"
.endobj lbl_81697173

# .sdata:0x192 | 0x8169717A | size: 0x5
.obj lbl_8169717A, global
	.string "Tex0"
.endobj lbl_8169717A

# .sdata:0x197 | 0x8169717F | size: 0x5
.obj lbl_8169717F, global
	.string "Tex1"
.endobj lbl_8169717F

# .sdata:0x19C | 0x81697184 | size: 0x6
.obj lbl_81697184, global
	.4byte 0x54657832
	.2byte 0x0000
.endobj lbl_81697184

# .sdata:0x1A2 | 0x8169718A | size: 0x2
.obj lbl_8169718A, global
	.2byte 0x0000
.endobj lbl_8169718A

# .sdata:0x1A4 | 0x8169718C | size: 0x3
.obj lbl_8169718C, global
	.string "%d"
.endobj lbl_8169718C

# .sdata:0x1A7 | 0x8169718F | size: 0x2
.obj lbl_8169718F, global
	.string "J"
.endobj lbl_8169718F

# .sdata:0x1A9 | 0x81697191 | size: 0x2
.obj lbl_81697191, global
	.string "U"
.endobj lbl_81697191

# .sdata:0x1AB | 0x81697193 | size: 0x2
.obj lbl_81697193, global
	.string "E"
.endobj lbl_81697193

# .sdata:0x1AD | 0x81697195 | size: 0x2
.obj lbl_81697195, global
	.string "K"
.endobj lbl_81697195

# .sdata:0x1AF | 0x81697197 | size: 0x2
.obj lbl_81697197, global
	.string "C"
.endobj lbl_81697197

# .sdata:0x1B1 | 0x81697199 | size: 0x6
.obj lbl_81697199, global
	.string "N_AP1"
.endobj lbl_81697199

# .sdata:0x1B7 | 0x8169719F | size: 0x6
.obj lbl_8169719F, global
	.string "N_AP6"
.endobj lbl_8169719F

# .sdata:0x1BD | 0x816971A5 | size: 0x6
.obj lbl_816971A5, global
	.string "N_AP0"
.endobj lbl_816971A5

# .sdata:0x1C3 | 0x816971AB | size: 0x6
.obj lbl_816971AB, global
	.string "N_AP7"
.endobj lbl_816971AB

# .sdata:0x1C9 | 0x816971B1 | size: 0x6
.obj lbl_816971B1, global
	.string "N_AP2"
.endobj lbl_816971B1

# .sdata:0x1CF | 0x816971B7 | size: 0x6
.obj lbl_816971B7, global
	.string "N_AP3"
.endobj lbl_816971B7

# .sdata:0x1D5 | 0x816971BD | size: 0x6
.obj lbl_816971BD, global
	.string "N_AP4"
.endobj lbl_816971BD

# .sdata:0x1DB | 0x816971C3 | size: 0x6
.obj lbl_816971C3, global
	.string "N_AP5"
.endobj lbl_816971C3

# .sdata:0x1E1 | 0x816971C9 | size: 0x7
.obj lbl_816971C9, global
	.string "N_ArwB"
.endobj lbl_816971C9

# .sdata:0x1E8 | 0x816971D0 | size: 0x4
.obj lbl_816971D0, global
	.4byte 0x45530000
.endobj lbl_816971D0

# .sdata:0x1EC | 0x816971D4 | size: 0xC
.obj lbl_816971D4, global
	.4byte 0x00250064
	.4byte 0x000A0000
	.4byte 0x00000000
.endobj lbl_816971D4

# 0x81698BE0..0x81698BF0 | size: 0x10
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698BE0 | size: 0x4
.obj lbl_81698BE0, global
	.skip 0x4
.endobj lbl_81698BE0

# .sbss:0x4 | 0x81698BE4 | size: 0x4
.obj lbl_81698BE4, global
	.skip 0x4
.endobj lbl_81698BE4

# .sbss:0x8 | 0x81698BE8 | size: 0x8
.obj lbl_81698BE8, global
	.skip 0x8
.endobj lbl_81698BE8
