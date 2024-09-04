.include "macros.inc"
.file "iplSaveDataBase.cpp"

# 0x813C6E84..0x813C7C70 | size: 0xDEC
.text
.balign 4

# .text:0x0 | 0x813C6E84 | size: 0x598
# ipl::scene::SavedataBase::SavedataBase(EGG::Heap*, ipl::nand::LayoutFile*, const char*, const char*)
.fn __ct__Q33ipl5scene12SavedataBaseFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc, global
/* 813C6E84 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813C6E88 | 7C 08 02 A6 */	mflr r0
/* 813C6E8C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813C6E90 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813C6E94 | 48 23 26 25 */	bl _savegpr_25
/* 813C6E98 | 3D 00 81 65 */	lis r8, __vt__Q33ipl5scene13AnmController@ha
/* 813C6E9C | 3B A0 00 00 */	li r29, 0x0
/* 813C6EA0 | 39 08 D0 F8 */	addi r8, r8, __vt__Q33ipl5scene13AnmController@l
/* 813C6EA4 | 3F E0 81 65 */	lis r31, lbl_81651250@ha
/* 813C6EA8 | 91 03 00 00 */	stw r8, 0x0(r3)
/* 813C6EAC | 7C 7E 1B 78 */	mr r30, r3
/* 813C6EB0 | 7C 99 23 78 */	mr r25, r4
/* 813C6EB4 | 7C BA 2B 78 */	mr r26, r5
/* 813C6EB8 | 90 83 00 24 */	stw r4, 0x24(r3)
/* 813C6EBC | 7C DB 33 78 */	mr r27, r6
/* 813C6EC0 | 7C FC 3B 78 */	mr r28, r7
/* 813C6EC4 | 3B FF 12 50 */	addi r31, r31, lbl_81651250@l
/* 813C6EC8 | 93 A3 00 04 */	stw r29, 0x4(r3)
/* 813C6ECC | 38 80 00 04 */	li r4, 0x4
/* 813C6ED0 | 38 63 00 0C */	addi r3, r3, 0xc
/* 813C6ED4 | 48 14 B1 89 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813C6ED8 | 38 7E 00 18 */	addi r3, r30, 0x18
/* 813C6EDC | 38 80 00 00 */	li r4, 0x0
/* 813C6EE0 | 48 14 B1 7D */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813C6EE4 | 3C 60 81 65 */	lis r3, __vt__Q33ipl5scene12SavedataBase@ha
/* 813C6EE8 | 93 BE 00 30 */	stw r29, 0x30(r30)
/* 813C6EEC | 38 63 16 18 */	addi r3, r3, __vt__Q33ipl5scene12SavedataBase@l
/* 813C6EF0 | 7F 24 CB 78 */	mr r4, r25
/* 813C6EF4 | 38 03 00 0C */	addi r0, r3, 0xc
/* 813C6EF8 | 90 7E 00 00 */	stw r3, 0x0(r30)
/* 813C6EFC | 38 60 05 80 */	li r3, 0x580
/* 813C6F00 | 38 A0 00 04 */	li r5, 0x4
/* 813C6F04 | 90 1E 00 28 */	stw r0, 0x28(r30)
/* 813C6F08 | 93 BE 00 34 */	stw r29, 0x34(r30)
/* 813C6F0C | 48 23 11 A5 */	bl __nw__FUlPQ23EGG4Heapi
/* 813C6F10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C6F14 | 41 82 00 18 */	beq .L_813C6F2C
/* 813C6F18 | 7F 24 CB 78 */	mr r4, r25
/* 813C6F1C | 7F 45 D3 78 */	mr r5, r26
/* 813C6F20 | 7F 66 DB 78 */	mr r6, r27
/* 813C6F24 | 7F 87 E3 78 */	mr r7, r28
/* 813C6F28 | 4B FA 30 FD */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813C6F2C:
/* 813C6F2C | 90 7E 00 04 */	stw r3, 0x4(r30)
/* 813C6F30 | 7F C3 F3 78 */	mr r3, r30
/* 813C6F34 | 38 9F 00 00 */	addi r4, r31, 0x0
/* 813C6F38 | 38 BF 00 21 */	addi r5, r31, 0x21
/* 813C6F3C | 4B FE 01 59 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C6F40 | 7F C3 F3 78 */	mr r3, r30
/* 813C6F44 | 38 9F 00 2A */	addi r4, r31, 0x2a
/* 813C6F48 | 38 BF 00 48 */	addi r5, r31, 0x48
/* 813C6F4C | 4B FE 01 49 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C6F50 | 7F C3 F3 78 */	mr r3, r30
/* 813C6F54 | 38 9F 00 52 */	addi r4, r31, 0x52
/* 813C6F58 | 38 BF 00 48 */	addi r5, r31, 0x48
/* 813C6F5C | 4B FE 01 39 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C6F60 | 7F C3 F3 78 */	mr r3, r30
/* 813C6F64 | 38 9F 00 71 */	addi r4, r31, 0x71
/* 813C6F68 | 38 BF 00 91 */	addi r5, r31, 0x91
/* 813C6F6C | 4B FE 01 29 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C6F70 | 7F C3 F3 78 */	mr r3, r30
/* 813C6F74 | 38 9F 00 9A */	addi r4, r31, 0x9a
/* 813C6F78 | 38 BF 00 C3 */	addi r5, r31, 0xc3
/* 813C6F7C | 4B FE 01 19 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C6F80 | 7F C3 F3 78 */	mr r3, r30
/* 813C6F84 | 38 9F 00 CF */	addi r4, r31, 0xcf
/* 813C6F88 | 38 BF 00 C3 */	addi r5, r31, 0xc3
/* 813C6F8C | 4B FE 01 09 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C6F90 | 7F C3 F3 78 */	mr r3, r30
/* 813C6F94 | 38 9F 00 F9 */	addi r4, r31, 0xf9
/* 813C6F98 | 38 BF 00 91 */	addi r5, r31, 0x91
/* 813C6F9C | 4B FE 00 F9 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C6FA0 | 7F C3 F3 78 */	mr r3, r30
/* 813C6FA4 | 38 9F 01 1F */	addi r4, r31, 0x11f
/* 813C6FA8 | 38 BF 01 41 */	addi r5, r31, 0x141
/* 813C6FAC | 4B FE 00 E9 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C6FB0 | 7F C3 F3 78 */	mr r3, r30
/* 813C6FB4 | 38 9F 01 4C */	addi r4, r31, 0x14c
/* 813C6FB8 | 38 BF 01 41 */	addi r5, r31, 0x141
/* 813C6FBC | 4B FE 00 D9 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C6FC0 | 7F C3 F3 78 */	mr r3, r30
/* 813C6FC4 | 38 9F 01 6F */	addi r4, r31, 0x16f
/* 813C6FC8 | 38 BF 00 91 */	addi r5, r31, 0x91
/* 813C6FCC | 4B FE 00 C9 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C6FD0 | 7F C3 F3 78 */	mr r3, r30
/* 813C6FD4 | 38 9F 01 94 */	addi r4, r31, 0x194
/* 813C6FD8 | 38 AD 8B B8 */	li r5, lbl_81696BF8@sda21
/* 813C6FDC | 4B FE 00 B9 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C6FE0 | 7F C3 F3 78 */	mr r3, r30
/* 813C6FE4 | 38 9F 01 B1 */	addi r4, r31, 0x1b1
/* 813C6FE8 | 38 AD 8B B8 */	li r5, lbl_81696BF8@sda21
/* 813C6FEC | 4B FE 00 A9 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C6FF0 | 7F C3 F3 78 */	mr r3, r30
/* 813C6FF4 | 38 9F 01 CE */	addi r4, r31, 0x1ce
/* 813C6FF8 | 38 BF 01 EC */	addi r5, r31, 0x1ec
/* 813C6FFC | 4B FE 00 99 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C7000 | 7F C3 F3 78 */	mr r3, r30
/* 813C7004 | 38 9F 01 CE */	addi r4, r31, 0x1ce
/* 813C7008 | 38 BF 01 F6 */	addi r5, r31, 0x1f6
/* 813C700C | 4B FE 00 89 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C7010 | 7F C3 F3 78 */	mr r3, r30
/* 813C7014 | 38 9F 02 00 */	addi r4, r31, 0x200
/* 813C7018 | 38 BF 02 1F */	addi r5, r31, 0x21f
/* 813C701C | 4B FE 00 79 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C7020 | 7F C3 F3 78 */	mr r3, r30
/* 813C7024 | 38 9F 02 00 */	addi r4, r31, 0x200
/* 813C7028 | 38 BF 02 2C */	addi r5, r31, 0x22c
/* 813C702C | 4B FE 00 69 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C7030 | 7F C3 F3 78 */	mr r3, r30
/* 813C7034 | 38 9F 02 39 */	addi r4, r31, 0x239
/* 813C7038 | 38 BF 02 1F */	addi r5, r31, 0x21f
/* 813C703C | 4B FE 00 59 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C7040 | 7F C3 F3 78 */	mr r3, r30
/* 813C7044 | 38 9F 02 39 */	addi r4, r31, 0x239
/* 813C7048 | 38 BF 02 2C */	addi r5, r31, 0x22c
/* 813C704C | 4B FE 00 49 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C7050 | 7F C3 F3 78 */	mr r3, r30
/* 813C7054 | 38 9F 02 59 */	addi r4, r31, 0x259
/* 813C7058 | 38 BF 02 75 */	addi r5, r31, 0x275
/* 813C705C | 4B FE 00 39 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C7060 | 7F C3 F3 78 */	mr r3, r30
/* 813C7064 | 38 9F 02 7F */	addi r4, r31, 0x27f
/* 813C7068 | 38 BF 02 9D */	addi r5, r31, 0x29d
/* 813C706C | 4B FE 00 29 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C7070 | 7F C3 F3 78 */	mr r3, r30
/* 813C7074 | 38 9F 02 7F */	addi r4, r31, 0x27f
/* 813C7078 | 38 BF 02 A8 */	addi r5, r31, 0x2a8
/* 813C707C | 4B FE 00 19 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C7080 | 7F C3 F3 78 */	mr r3, r30
/* 813C7084 | 38 9F 02 B3 */	addi r4, r31, 0x2b3
/* 813C7088 | 38 BF 02 9D */	addi r5, r31, 0x29d
/* 813C708C | 4B FE 00 09 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C7090 | 7F C3 F3 78 */	mr r3, r30
/* 813C7094 | 38 9F 02 B3 */	addi r4, r31, 0x2b3
/* 813C7098 | 38 BF 02 A8 */	addi r5, r31, 0x2a8
/* 813C709C | 4B FD FF F9 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C70A0 | 7F C3 F3 78 */	mr r3, r30
/* 813C70A4 | 38 9F 02 CF */	addi r4, r31, 0x2cf
/* 813C70A8 | 38 BF 02 F1 */	addi r5, r31, 0x2f1
/* 813C70AC | 4B FD FF E9 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C70B0 | 7F C3 F3 78 */	mr r3, r30
/* 813C70B4 | 38 9F 02 FC */	addi r4, r31, 0x2fc
/* 813C70B8 | 38 BF 02 F1 */	addi r5, r31, 0x2f1
/* 813C70BC | 4B FD FF D9 */	bl add_animation__Q33ipl5scene13AnmControllerFPCcPCc
/* 813C70C0 | 7F C3 F3 78 */	mr r3, r30
/* 813C70C4 | 38 80 00 05 */	li r4, 0x5
/* 813C70C8 | 4B FE 01 19 */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813C70CC | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 813C70D0 | 3B A0 00 01 */	li r29, 0x1
/* 813C70D4 | 7F C3 F3 78 */	mr r3, r30
/* 813C70D8 | 38 80 00 08 */	li r4, 0x8
/* 813C70DC | 93 A5 00 18 */	stw r29, 0x18(r5)
/* 813C70E0 | 4B FE 01 01 */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813C70E4 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 813C70E8 | 7F C3 F3 78 */	mr r3, r30
/* 813C70EC | 38 80 00 00 */	li r4, 0x0
/* 813C70F0 | 38 C0 00 01 */	li r6, 0x1
/* 813C70F4 | 93 A5 00 18 */	stw r29, 0x18(r5)
/* 813C70F8 | 38 A0 00 00 */	li r5, 0x0
/* 813C70FC | 4B FE 00 05 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813C7100 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813C7104 | 4B FA 35 31 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813C7108 | 7F C3 F3 78 */	mr r3, r30
/* 813C710C | 38 9F 03 1F */	addi r4, r31, 0x31f
/* 813C7110 | 38 A0 01 3D */	li r5, 0x13d
/* 813C7114 | 4B FE 02 65 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcUl
/* 813C7118 | 7F C3 F3 78 */	mr r3, r30
/* 813C711C | 38 9F 03 2E */	addi r4, r31, 0x32e
/* 813C7120 | 38 A0 01 3D */	li r5, 0x13d
/* 813C7124 | 4B FE 02 55 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcUl
/* 813C7128 | 7F C3 F3 78 */	mr r3, r30
/* 813C712C | 38 9F 03 3D */	addi r4, r31, 0x33d
/* 813C7130 | 38 A0 01 3E */	li r5, 0x13e
/* 813C7134 | 4B FE 02 45 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcUl
/* 813C7138 | 7F C3 F3 78 */	mr r3, r30
/* 813C713C | 38 9F 03 4B */	addi r4, r31, 0x34b
/* 813C7140 | 38 A0 01 3E */	li r5, 0x13e
/* 813C7144 | 4B FE 02 35 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcUl
/* 813C7148 | 7F C3 F3 78 */	mr r3, r30
/* 813C714C | 38 9F 03 59 */	addi r4, r31, 0x359
/* 813C7150 | 38 AD 8B BE */	li r5, lbl_81696BFE@sda21
/* 813C7154 | 4B FE 02 AD */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
/* 813C7158 | 7F C3 F3 78 */	mr r3, r30
/* 813C715C | 38 8D 8B C2 */	li r4, lbl_81696C02@sda21
/* 813C7160 | 38 A0 00 00 */	li r5, 0x0
/* 813C7164 | 4B FE 03 71 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C7168 | 7F C3 F3 78 */	mr r3, r30
/* 813C716C | 38 8D 8B C9 */	li r4, lbl_81696C09@sda21
/* 813C7170 | 38 A0 00 00 */	li r5, 0x0
/* 813C7174 | 4B FE 03 61 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C7178 | 7F C3 F3 78 */	mr r3, r30
/* 813C717C | 38 9F 03 64 */	addi r4, r31, 0x364
/* 813C7180 | 38 A0 00 00 */	li r5, 0x0
/* 813C7184 | 4B FE 03 51 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C7188 | 7F C3 F3 78 */	mr r3, r30
/* 813C718C | 38 9F 03 6E */	addi r4, r31, 0x36e
/* 813C7190 | 38 A0 00 00 */	li r5, 0x0
/* 813C7194 | 4B FE 03 41 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C7198 | 7F 24 CB 78 */	mr r4, r25
/* 813C719C | 38 60 00 34 */	li r3, 0x34
/* 813C71A0 | 38 A0 00 04 */	li r5, 0x4
/* 813C71A4 | 48 23 0F 0D */	bl __nw__FUlPQ23EGG4Heapi
/* 813C71A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C71AC | 7C 7D 1B 78 */	mr r29, r3
/* 813C71B0 | 41 82 00 98 */	beq .L_813C7248
/* 813C71B4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813C71B8 | 7F C6 F3 78 */	mr r6, r30
/* 813C71BC | 41 82 00 08 */	beq .L_813C71C4
/* 813C71C0 | 38 DE 00 28 */	addi r6, r30, 0x28
.L_813C71C4:
/* 813C71C4 | 80 BE 00 04 */	lwz r5, 0x4(r30)
/* 813C71C8 | 3C 80 81 64 */	lis r4, __vt__Q23gui7Manager@ha
/* 813C71CC | 38 84 27 E0 */	addi r4, r4, __vt__Q23gui7Manager@l
/* 813C71D0 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 813C71D4 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813C71D8 | 38 00 00 00 */	li r0, 0x0
/* 813C71DC | 3B 85 02 98 */	addi r28, r5, 0x298
/* 813C71E0 | 90 C3 00 04 */	stw r6, 0x4(r3)
/* 813C71E4 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813C71E8 | 41 82 00 1C */	beq .L_813C7204
/* 813C71EC | 81 86 00 00 */	lwz r12, 0x0(r6)
/* 813C71F0 | 7C C3 33 78 */	mr r3, r6
/* 813C71F4 | 7F A4 EB 78 */	mr r4, r29
/* 813C71F8 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813C71FC | 7D 89 03 A6 */	mtctr r12
/* 813C7200 | 4E 80 04 21 */	bctrl
.L_813C7204:
/* 813C7204 | 38 7D 00 08 */	addi r3, r29, 0x8
/* 813C7208 | 38 80 00 08 */	li r4, 0x8
/* 813C720C | 48 14 AE 51 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813C7210 | 3C A0 81 64 */	lis r5, __vt__Q23gui11PaneManager@ha
/* 813C7214 | 38 7D 00 18 */	addi r3, r29, 0x18
/* 813C7218 | 38 A5 27 84 */	addi r5, r5, __vt__Q23gui11PaneManager@l
/* 813C721C | 38 80 00 08 */	li r4, 0x8
/* 813C7220 | 90 BD 00 00 */	stw r5, 0x0(r29)
/* 813C7224 | 93 9D 00 24 */	stw r28, 0x24(r29)
/* 813C7228 | 48 14 AE 35 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813C722C | 3C 80 81 63 */	lis r4, __vt__Q33ipl3gui11PaneManager@ha
/* 813C7230 | 38 60 00 00 */	li r3, 0x0
/* 813C7234 | 38 84 59 C4 */	addi r4, r4, __vt__Q33ipl3gui11PaneManager@l
/* 813C7238 | 38 00 00 01 */	li r0, 0x1
/* 813C723C | 90 9D 00 00 */	stw r4, 0x0(r29)
/* 813C7240 | 90 7D 00 2C */	stw r3, 0x2c(r29)
/* 813C7244 | 98 1D 00 30 */	stb r0, 0x30(r29)
.L_813C7248:
/* 813C7248 | 93 BE 00 08 */	stw r29, 0x8(r30)
/* 813C724C | 7F A3 EB 78 */	mr r3, r29
/* 813C7250 | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 813C7254 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813C7258 | 38 84 00 04 */	addi r4, r4, 0x4
/* 813C725C | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813C7260 | 7D 89 03 A6 */	mtctr r12
/* 813C7264 | 4E 80 04 21 */	bctrl
/* 813C7268 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813C726C | 38 80 00 00 */	li r4, 0x0
/* 813C7270 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C7274 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813C7278 | 7D 89 03 A6 */	mtctr r12
/* 813C727C | 4E 80 04 21 */	bctrl
/* 813C7280 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813C7284 | 38 8D 8B D0 */	li r4, lbl_81696C10@sda21
/* 813C7288 | 38 A0 00 01 */	li r5, 0x1
/* 813C728C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813C7290 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C7294 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813C7298 | 7D 89 03 A6 */	mtctr r12
/* 813C729C | 4E 80 04 21 */	bctrl
/* 813C72A0 | 7C 64 1B 78 */	mr r4, r3
/* 813C72A4 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813C72A8 | 38 A0 00 01 */	li r5, 0x1
/* 813C72AC | 4B FA 3F 21 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 813C72B0 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813C72B4 | 38 8D 8B D7 */	li r4, lbl_81696C17@sda21
/* 813C72B8 | 38 A0 00 01 */	li r5, 0x1
/* 813C72BC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813C72C0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C72C4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813C72C8 | 7D 89 03 A6 */	mtctr r12
/* 813C72CC | 4E 80 04 21 */	bctrl
/* 813C72D0 | 7C 64 1B 78 */	mr r4, r3
/* 813C72D4 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813C72D8 | 38 A0 00 01 */	li r5, 0x1
/* 813C72DC | 4B FA 3E F1 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 813C72E0 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813C72E4 | 38 9F 03 78 */	addi r4, r31, 0x378
/* 813C72E8 | 38 A0 00 01 */	li r5, 0x1
/* 813C72EC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813C72F0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C72F4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813C72F8 | 7D 89 03 A6 */	mtctr r12
/* 813C72FC | 4E 80 04 21 */	bctrl
/* 813C7300 | 7C 64 1B 78 */	mr r4, r3
/* 813C7304 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813C7308 | 38 A0 00 01 */	li r5, 0x1
/* 813C730C | 4B FA 3E C1 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 813C7310 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813C7314 | 38 9F 03 87 */	addi r4, r31, 0x387
/* 813C7318 | 38 A0 00 01 */	li r5, 0x1
/* 813C731C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813C7320 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C7324 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813C7328 | 7D 89 03 A6 */	mtctr r12
/* 813C732C | 4E 80 04 21 */	bctrl
/* 813C7330 | 7C 64 1B 78 */	mr r4, r3
/* 813C7334 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813C7338 | 38 A0 00 01 */	li r5, 0x1
/* 813C733C | 4B FA 3E 91 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 813C7340 | 7F C3 F3 78 */	mr r3, r30
/* 813C7344 | 38 80 00 10 */	li r4, 0x10
/* 813C7348 | 4B FD FE 99 */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813C734C | 7C 7D 1B 78 */	mr r29, r3
/* 813C7350 | 7F C3 F3 78 */	mr r3, r30
/* 813C7354 | 38 80 00 0E */	li r4, 0xe
/* 813C7358 | 4B FD FE 89 */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813C735C | 7C 65 1B 78 */	mr r5, r3
/* 813C7360 | 7F C3 F3 78 */	mr r3, r30
/* 813C7364 | 7F A6 EB 78 */	mr r6, r29
/* 813C7368 | 38 8D 8B D0 */	li r4, lbl_81696C10@sda21
/* 813C736C | 4B FD FE 81 */	bl add_anmpane__Q33ipl5scene13AnmControllerFPCcPQ33ipl5scene3AnmPQ33ipl5scene3Anm
/* 813C7370 | 7F C3 F3 78 */	mr r3, r30
/* 813C7374 | 38 80 00 11 */	li r4, 0x11
/* 813C7378 | 4B FD FE 69 */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813C737C | 7C 7D 1B 78 */	mr r29, r3
/* 813C7380 | 7F C3 F3 78 */	mr r3, r30
/* 813C7384 | 38 80 00 0F */	li r4, 0xf
/* 813C7388 | 4B FD FE 59 */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813C738C | 7C 65 1B 78 */	mr r5, r3
/* 813C7390 | 7F C3 F3 78 */	mr r3, r30
/* 813C7394 | 7F A6 EB 78 */	mr r6, r29
/* 813C7398 | 38 8D 8B D7 */	li r4, lbl_81696C17@sda21
/* 813C739C | 4B FD FE 51 */	bl add_anmpane__Q33ipl5scene13AnmControllerFPCcPQ33ipl5scene3AnmPQ33ipl5scene3Anm
/* 813C73A0 | 7F C3 F3 78 */	mr r3, r30
/* 813C73A4 | 38 80 00 05 */	li r4, 0x5
/* 813C73A8 | 4B FD FE 39 */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813C73AC | 7C 7D 1B 78 */	mr r29, r3
/* 813C73B0 | 7F C3 F3 78 */	mr r3, r30
/* 813C73B4 | 38 80 00 04 */	li r4, 0x4
/* 813C73B8 | 4B FD FE 29 */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813C73BC | 7C 65 1B 78 */	mr r5, r3
/* 813C73C0 | 7F C3 F3 78 */	mr r3, r30
/* 813C73C4 | 7F A6 EB 78 */	mr r6, r29
/* 813C73C8 | 38 9F 03 78 */	addi r4, r31, 0x378
/* 813C73CC | 4B FD FE 21 */	bl add_anmpane__Q33ipl5scene13AnmControllerFPCcPQ33ipl5scene3AnmPQ33ipl5scene3Anm
/* 813C73D0 | 7F C3 F3 78 */	mr r3, r30
/* 813C73D4 | 38 80 00 08 */	li r4, 0x8
/* 813C73D8 | 4B FD FE 09 */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813C73DC | 7C 7D 1B 78 */	mr r29, r3
/* 813C73E0 | 7F C3 F3 78 */	mr r3, r30
/* 813C73E4 | 38 80 00 07 */	li r4, 0x7
/* 813C73E8 | 4B FD FD F9 */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813C73EC | 7C 65 1B 78 */	mr r5, r3
/* 813C73F0 | 7F C3 F3 78 */	mr r3, r30
/* 813C73F4 | 7F A6 EB 78 */	mr r6, r29
/* 813C73F8 | 38 9F 03 87 */	addi r4, r31, 0x387
/* 813C73FC | 4B FD FD F1 */	bl add_anmpane__Q33ipl5scene13AnmControllerFPCcPQ33ipl5scene3AnmPQ33ipl5scene3Anm
/* 813C7400 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813C7404 | 7F C3 F3 78 */	mr r3, r30
/* 813C7408 | 48 23 20 FD */	bl _restgpr_25
/* 813C740C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813C7410 | 7C 08 03 A6 */	mtlr r0
/* 813C7414 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813C7418 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene12SavedataBaseFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc

# .text:0x598 | 0x813C741C | size: 0xB4
# ipl::scene::SavedataBase::~SavedataBase()
.fn __dt__Q33ipl5scene12SavedataBaseFv, global
/* 813C741C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C7420 | 7C 08 02 A6 */	mflr r0
/* 813C7424 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C7428 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C742C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C7430 | 7C 9F 23 78 */	mr r31, r4
/* 813C7434 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813C7438 | 7C 7E 1B 78 */	mr r30, r3
/* 813C743C | 41 82 00 78 */	beq .L_813C74B4
/* 813C7440 | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 813C7444 | 3C 80 81 65 */	lis r4, __vt__Q33ipl5scene12SavedataBase@ha
/* 813C7448 | 38 84 16 18 */	addi r4, r4, __vt__Q33ipl5scene12SavedataBase@l
/* 813C744C | 38 04 00 0C */	addi r0, r4, 0xc
/* 813C7450 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813C7454 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813C7458 | 90 03 00 28 */	stw r0, 0x28(r3)
/* 813C745C | 41 82 00 1C */	beq .L_813C7478
/* 813C7460 | 81 85 00 00 */	lwz r12, 0x0(r5)
/* 813C7464 | 7C A3 2B 78 */	mr r3, r5
/* 813C7468 | 38 80 00 01 */	li r4, 0x1
/* 813C746C | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813C7470 | 7D 89 03 A6 */	mtctr r12
/* 813C7474 | 4E 80 04 21 */	bctrl
.L_813C7478:
/* 813C7478 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813C747C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C7480 | 41 82 00 18 */	beq .L_813C7498
/* 813C7484 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C7488 | 38 80 00 01 */	li r4, 0x1
/* 813C748C | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813C7490 | 7D 89 03 A6 */	mtctr r12
/* 813C7494 | 4E 80 04 21 */	bctrl
.L_813C7498:
/* 813C7498 | 7F C3 F3 78 */	mr r3, r30
/* 813C749C | 38 80 00 00 */	li r4, 0x0
/* 813C74A0 | 4B FD C9 39 */	bl __dt__Q33ipl5scene13AnmControllerFv
/* 813C74A4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813C74A8 | 40 81 00 0C */	ble .L_813C74B4
/* 813C74AC | 7F C3 F3 78 */	mr r3, r30
/* 813C74B0 | 48 23 0C 35 */	bl __dl__FPv
.L_813C74B4:
/* 813C74B4 | 7F C3 F3 78 */	mr r3, r30
/* 813C74B8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C74BC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813C74C0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C74C4 | 7C 08 03 A6 */	mtlr r0
/* 813C74C8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C74CC | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene12SavedataBaseFv

# .text:0x64C | 0x813C74D0 | size: 0x178
# ipl::scene::SavedataBase::calc()
.fn calc__Q33ipl5scene12SavedataBaseFv, global
/* 813C74D0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C74D4 | 7C 08 02 A6 */	mflr r0
/* 813C74D8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C74DC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C74E0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813C74E4 | 7C 7E 1B 78 */	mr r30, r3
/* 813C74E8 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813C74EC | 4B FA 32 19 */	bl calc__Q33ipl6layout6ObjectFv
/* 813C74F0 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 813C74F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C74F8 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813C74FC | 7D 89 03 A6 */	mtctr r12
/* 813C7500 | 4E 80 04 21 */	bctrl
/* 813C7504 | 3B E0 00 00 */	li r31, 0x0
/* 813C7508 | 48 00 00 0C */	b .L_813C7514
.L_813C750C:
/* 813C750C | 7F E3 FB 78 */	mr r3, r31
/* 813C7510 | 4B FD F9 F5 */	bl calc__Q33ipl5scene7AnmPaneFv
.L_813C7514:
/* 813C7514 | 7F E4 FB 78 */	mr r4, r31
/* 813C7518 | 38 7E 00 18 */	addi r3, r30, 0x18
/* 813C751C | 48 14 AD C1 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813C7520 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C7524 | 7C 7F 1B 78 */	mr r31, r3
/* 813C7528 | 40 82 FF E4 */	bne .L_813C750C
/* 813C752C | 80 1E 00 34 */	lwz r0, 0x34(r30)
/* 813C7530 | 28 00 00 0B */	cmplwi r0, 0xb
/* 813C7534 | 41 81 00 FC */	bgt .L_813C7630
/* 813C7538 | 3C 60 81 65 */	lis r3, jumptable_816515E8@ha
/* 813C753C | 54 00 10 3A */	slwi r0, r0, 2
/* 813C7540 | 38 63 15 E8 */	addi r3, r3, jumptable_816515E8@l
/* 813C7544 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813C7548 | 7C 69 03 A6 */	mtctr r3
/* 813C754C | 4E 80 04 20 */	bctr
.L_813C7550:
/* 813C7550 | 7F C3 F3 78 */	mr r3, r30
/* 813C7554 | 48 00 06 09 */	bl on_fadein1st__Q33ipl5scene12SavedataBaseFv
/* 813C7558 | 48 00 00 D8 */	b .L_813C7630
.L_813C755C:
/* 813C755C | 7F C3 F3 78 */	mr r3, r30
/* 813C7560 | 38 80 00 03 */	li r4, 0x3
/* 813C7564 | 4B FD FC 41 */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813C7568 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C756C | 40 82 00 C4 */	bne .L_813C7630
/* 813C7570 | 38 00 00 00 */	li r0, 0x0
/* 813C7574 | 90 1E 00 34 */	stw r0, 0x34(r30)
/* 813C7578 | 48 00 00 B8 */	b .L_813C7630
.L_813C757C:
/* 813C757C | 7F C3 F3 78 */	mr r3, r30
/* 813C7580 | 38 80 00 02 */	li r4, 0x2
/* 813C7584 | 4B FD FC 21 */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813C7588 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C758C | 40 82 00 A4 */	bne .L_813C7630
/* 813C7590 | 38 00 00 00 */	li r0, 0x0
/* 813C7594 | 90 1E 00 34 */	stw r0, 0x34(r30)
/* 813C7598 | 48 00 00 98 */	b .L_813C7630
.L_813C759C:
/* 813C759C | 7F C3 F3 78 */	mr r3, r30
/* 813C75A0 | 38 80 00 06 */	li r4, 0x6
/* 813C75A4 | 4B FD FC 01 */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813C75A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C75AC | 40 82 00 84 */	bne .L_813C7630
/* 813C75B0 | 38 00 00 00 */	li r0, 0x0
/* 813C75B4 | 90 1E 00 34 */	stw r0, 0x34(r30)
/* 813C75B8 | 48 00 00 78 */	b .L_813C7630
.L_813C75BC:
/* 813C75BC | 7F C3 F3 78 */	mr r3, r30
/* 813C75C0 | 38 80 00 09 */	li r4, 0x9
/* 813C75C4 | 4B FD FB E1 */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813C75C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C75CC | 40 82 00 64 */	bne .L_813C7630
/* 813C75D0 | 38 00 00 00 */	li r0, 0x0
/* 813C75D4 | 90 1E 00 34 */	stw r0, 0x34(r30)
/* 813C75D8 | 48 00 00 58 */	b .L_813C7630
.L_813C75DC:
/* 813C75DC | 7F C3 F3 78 */	mr r3, r30
/* 813C75E0 | 48 00 05 D1 */	bl on_scroll_r__Q33ipl5scene12SavedataBaseFv
/* 813C75E4 | 48 00 00 4C */	b .L_813C7630
.L_813C75E8:
/* 813C75E8 | 7F C3 F3 78 */	mr r3, r30
/* 813C75EC | 48 00 06 21 */	bl on_scroll_l__Q33ipl5scene12SavedataBaseFv
/* 813C75F0 | 48 00 00 40 */	b .L_813C7630
.L_813C75F4:
/* 813C75F4 | 7F C3 F3 78 */	mr r3, r30
/* 813C75F8 | 38 80 00 17 */	li r4, 0x17
/* 813C75FC | 4B FD FB A9 */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813C7600 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C7604 | 40 82 00 2C */	bne .L_813C7630
/* 813C7608 | 38 00 00 00 */	li r0, 0x0
/* 813C760C | 90 1E 00 34 */	stw r0, 0x34(r30)
/* 813C7610 | 48 00 00 20 */	b .L_813C7630
.L_813C7614:
/* 813C7614 | 7F C3 F3 78 */	mr r3, r30
/* 813C7618 | 38 80 00 18 */	li r4, 0x18
/* 813C761C | 4B FD FB 89 */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813C7620 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C7624 | 40 82 00 0C */	bne .L_813C7630
/* 813C7628 | 38 00 00 00 */	li r0, 0x0
/* 813C762C | 90 1E 00 34 */	stw r0, 0x34(r30)
.L_813C7630:
/* 813C7630 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C7634 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C7638 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813C763C | 7C 08 03 A6 */	mtlr r0
/* 813C7640 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C7644 | 4E 80 00 20 */	blr
.endfn calc__Q33ipl5scene12SavedataBaseFv

# .text:0x7C4 | 0x813C7648 | size: 0x8
# ipl::scene::SavedataBase::draw()
.fn draw__Q33ipl5scene12SavedataBaseFv, global
/* 813C7648 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813C764C | 4B FA 31 50 */	b draw__Q33ipl6layout6ObjectFv
.endfn draw__Q33ipl5scene12SavedataBaseFv

# .text:0x7CC | 0x813C7650 | size: 0x8
# ipl::scene::SavedataBase::update()
.fn update__Q33ipl5scene12SavedataBaseFv, global
/* 813C7650 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813C7654 | 4B FA 39 38 */	b update__Q33ipl3gui11PaneManagerFv
.endfn update__Q33ipl5scene12SavedataBaseFv

# .text:0x7D4 | 0x813C7658 | size: 0x40
# ipl::scene::SavedataBase::anmFadein()
.fn anmFadein__Q33ipl5scene12SavedataBaseFv, global
/* 813C7658 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C765C | 7C 08 02 A6 */	mflr r0
/* 813C7660 | 38 80 00 01 */	li r4, 0x1
/* 813C7664 | 38 A0 00 00 */	li r5, 0x0
/* 813C7668 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C766C | 38 C0 00 01 */	li r6, 0x1
/* 813C7670 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C7674 | 7C 7F 1B 78 */	mr r31, r3
/* 813C7678 | 4B FD FA 89 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813C767C | 38 00 00 01 */	li r0, 0x1
/* 813C7680 | 90 1F 00 34 */	stw r0, 0x34(r31)
/* 813C7684 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C7688 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C768C | 7C 08 03 A6 */	mtlr r0
/* 813C7690 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C7694 | 4E 80 00 20 */	blr
.endfn anmFadein__Q33ipl5scene12SavedataBaseFv

# .text:0x814 | 0x813C7698 | size: 0x68
# ipl::scene::SavedataBase::anmFadeout(bool)
.fn anmFadeout__Q33ipl5scene12SavedataBaseFb, global
/* 813C7698 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C769C | 7C 08 02 A6 */	mflr r0
/* 813C76A0 | 38 A0 00 00 */	li r5, 0x0
/* 813C76A4 | 38 C0 00 01 */	li r6, 0x1
/* 813C76A8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C76AC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C76B0 | 7C 9F 23 78 */	mr r31, r4
/* 813C76B4 | 38 80 00 02 */	li r4, 0x2
/* 813C76B8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813C76BC | 7C 7E 1B 78 */	mr r30, r3
/* 813C76C0 | 4B FD FA 41 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813C76C4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813C76C8 | 41 82 00 18 */	beq .L_813C76E0
/* 813C76CC | 7F C3 F3 78 */	mr r3, r30
/* 813C76D0 | 38 80 00 18 */	li r4, 0x18
/* 813C76D4 | 38 A0 00 00 */	li r5, 0x0
/* 813C76D8 | 38 C0 00 01 */	li r6, 0x1
/* 813C76DC | 4B FD FA 25 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
.L_813C76E0:
/* 813C76E0 | 38 00 00 03 */	li r0, 0x3
/* 813C76E4 | 90 1E 00 34 */	stw r0, 0x34(r30)
/* 813C76E8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C76EC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813C76F0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C76F4 | 7C 08 03 A6 */	mtlr r0
/* 813C76F8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C76FC | 4E 80 00 20 */	blr
.endfn anmFadeout__Q33ipl5scene12SavedataBaseFb

# .text:0x87C | 0x813C7700 | size: 0x40
# ipl::scene::SavedataBase::anmChangeWiitoSD()
.fn anmChangeWiitoSD__Q33ipl5scene12SavedataBaseFv, global
/* 813C7700 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C7704 | 7C 08 02 A6 */	mflr r0
/* 813C7708 | 38 80 00 09 */	li r4, 0x9
/* 813C770C | 38 A0 00 00 */	li r5, 0x0
/* 813C7710 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C7714 | 38 C0 00 01 */	li r6, 0x1
/* 813C7718 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C771C | 7C 7F 1B 78 */	mr r31, r3
/* 813C7720 | 4B FD F9 E1 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813C7724 | 38 00 00 05 */	li r0, 0x5
/* 813C7728 | 90 1F 00 34 */	stw r0, 0x34(r31)
/* 813C772C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C7730 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C7734 | 7C 08 03 A6 */	mtlr r0
/* 813C7738 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C773C | 4E 80 00 20 */	blr
.endfn anmChangeWiitoSD__Q33ipl5scene12SavedataBaseFv

# .text:0x8BC | 0x813C7740 | size: 0x40
# ipl::scene::SavedataBase::anmChangeSDtoWii()
.fn anmChangeSDtoWii__Q33ipl5scene12SavedataBaseFv, global
/* 813C7740 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C7744 | 7C 08 02 A6 */	mflr r0
/* 813C7748 | 38 80 00 06 */	li r4, 0x6
/* 813C774C | 38 A0 00 00 */	li r5, 0x0
/* 813C7750 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C7754 | 38 C0 00 01 */	li r6, 0x1
/* 813C7758 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C775C | 7C 7F 1B 78 */	mr r31, r3
/* 813C7760 | 4B FD F9 A1 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813C7764 | 38 00 00 04 */	li r0, 0x4
/* 813C7768 | 90 1F 00 34 */	stw r0, 0x34(r31)
/* 813C776C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C7770 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C7774 | 7C 08 03 A6 */	mtlr r0
/* 813C7778 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C777C | 4E 80 00 20 */	blr
.endfn anmChangeSDtoWii__Q33ipl5scene12SavedataBaseFv

# .text:0x8FC | 0x813C7780 | size: 0x68
# ipl::scene::SavedataBase::anmScrollR(bool)
.fn anmScrollR__Q33ipl5scene12SavedataBaseFb, global
/* 813C7780 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C7784 | 7C 08 02 A6 */	mflr r0
/* 813C7788 | 38 A0 00 00 */	li r5, 0x0
/* 813C778C | 38 C0 00 01 */	li r6, 0x1
/* 813C7790 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C7794 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C7798 | 7C 9F 23 78 */	mr r31, r4
/* 813C779C | 38 80 00 0A */	li r4, 0xa
/* 813C77A0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813C77A4 | 7C 7E 1B 78 */	mr r30, r3
/* 813C77A8 | 4B FD F9 59 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813C77AC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813C77B0 | 41 82 00 18 */	beq .L_813C77C8
/* 813C77B4 | 7F C3 F3 78 */	mr r3, r30
/* 813C77B8 | 38 80 00 0C */	li r4, 0xc
/* 813C77BC | 38 A0 00 00 */	li r5, 0x0
/* 813C77C0 | 38 C0 00 01 */	li r6, 0x1
/* 813C77C4 | 4B FD F9 3D */	bl do_animation__Q33ipl5scene13AnmControllerFiib
.L_813C77C8:
/* 813C77C8 | 38 00 00 08 */	li r0, 0x8
/* 813C77CC | 90 1E 00 34 */	stw r0, 0x34(r30)
/* 813C77D0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C77D4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813C77D8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C77DC | 7C 08 03 A6 */	mtlr r0
/* 813C77E0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C77E4 | 4E 80 00 20 */	blr
.endfn anmScrollR__Q33ipl5scene12SavedataBaseFb

# .text:0x964 | 0x813C77E8 | size: 0x68
# ipl::scene::SavedataBase::anmScrollL(bool)
.fn anmScrollL__Q33ipl5scene12SavedataBaseFb, global
/* 813C77E8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C77EC | 7C 08 02 A6 */	mflr r0
/* 813C77F0 | 38 A0 00 00 */	li r5, 0x0
/* 813C77F4 | 38 C0 00 01 */	li r6, 0x1
/* 813C77F8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C77FC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C7800 | 7C 9F 23 78 */	mr r31, r4
/* 813C7804 | 38 80 00 0B */	li r4, 0xb
/* 813C7808 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813C780C | 7C 7E 1B 78 */	mr r30, r3
/* 813C7810 | 4B FD F8 F1 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813C7814 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813C7818 | 41 82 00 18 */	beq .L_813C7830
/* 813C781C | 7F C3 F3 78 */	mr r3, r30
/* 813C7820 | 38 80 00 0D */	li r4, 0xd
/* 813C7824 | 38 A0 00 00 */	li r5, 0x0
/* 813C7828 | 38 C0 00 01 */	li r6, 0x1
/* 813C782C | 4B FD F8 D5 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
.L_813C7830:
/* 813C7830 | 38 00 00 09 */	li r0, 0x9
/* 813C7834 | 90 1E 00 34 */	stw r0, 0x34(r30)
/* 813C7838 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C783C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813C7840 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C7844 | 7C 08 03 A6 */	mtlr r0
/* 813C7848 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C784C | 4E 80 00 20 */	blr
.endfn anmScrollL__Q33ipl5scene12SavedataBaseFb

# .text:0x9CC | 0x813C7850 | size: 0x54
# ipl::scene::SavedataBase::anmTextFadein(unsigned long)
.fn anmTextFadein__Q33ipl5scene12SavedataBaseFUl, global
/* 813C7850 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C7854 | 7C 08 02 A6 */	mflr r0
/* 813C7858 | 3C C0 81 65 */	lis r6, lbl_816515A9@ha
/* 813C785C | 7C 85 23 78 */	mr r5, r4
/* 813C7860 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C7864 | 38 86 15 A9 */	addi r4, r6, lbl_816515A9@l
/* 813C7868 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C786C | 7C 7F 1B 78 */	mr r31, r3
/* 813C7870 | 4B FD FB 09 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcUl
/* 813C7874 | 7F E3 FB 78 */	mr r3, r31
/* 813C7878 | 38 80 00 17 */	li r4, 0x17
/* 813C787C | 38 A0 00 00 */	li r5, 0x0
/* 813C7880 | 38 C0 00 01 */	li r6, 0x1
/* 813C7884 | 4B FD F8 7D */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813C7888 | 38 00 00 0A */	li r0, 0xa
/* 813C788C | 90 1F 00 34 */	stw r0, 0x34(r31)
/* 813C7890 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C7894 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C7898 | 7C 08 03 A6 */	mtlr r0
/* 813C789C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C78A0 | 4E 80 00 20 */	blr
.endfn anmTextFadein__Q33ipl5scene12SavedataBaseFUl

# .text:0xA20 | 0x813C78A4 | size: 0x40
# ipl::scene::SavedataBase::anmTextFadeout()
.fn anmTextFadeout__Q33ipl5scene12SavedataBaseFv, global
/* 813C78A4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C78A8 | 7C 08 02 A6 */	mflr r0
/* 813C78AC | 38 80 00 18 */	li r4, 0x18
/* 813C78B0 | 38 A0 00 00 */	li r5, 0x0
/* 813C78B4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C78B8 | 38 C0 00 01 */	li r6, 0x1
/* 813C78BC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C78C0 | 7C 7F 1B 78 */	mr r31, r3
/* 813C78C4 | 4B FD F8 3D */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813C78C8 | 38 00 00 0B */	li r0, 0xb
/* 813C78CC | 90 1F 00 34 */	stw r0, 0x34(r31)
/* 813C78D0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C78D4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C78D8 | 7C 08 03 A6 */	mtlr r0
/* 813C78DC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C78E0 | 4E 80 00 20 */	blr
.endfn anmTextFadeout__Q33ipl5scene12SavedataBaseFv

# .text:0xA60 | 0x813C78E4 | size: 0xC4
# ipl::scene::SavedataBase::anmArwAppear(bool, bool)
.fn anmArwAppear__Q33ipl5scene12SavedataBaseFbb, global
/* 813C78E4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C78E8 | 7C 08 02 A6 */	mflr r0
/* 813C78EC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813C78F0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C78F4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C78F8 | 7C BF 2B 78 */	mr r31, r5
/* 813C78FC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813C7900 | 7C 7E 1B 78 */	mr r30, r3
/* 813C7904 | 41 82 00 38 */	beq .L_813C793C
/* 813C7908 | 38 8D 8B C2 */	li r4, lbl_81696C02@sda21
/* 813C790C | 38 A0 00 01 */	li r5, 0x1
/* 813C7910 | 4B FD FB C5 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C7914 | 7F C3 F3 78 */	mr r3, r30
/* 813C7918 | 38 80 00 10 */	li r4, 0x10
/* 813C791C | 38 A0 00 00 */	li r5, 0x0
/* 813C7920 | 38 C0 00 00 */	li r6, 0x0
/* 813C7924 | 4B FD F7 DD */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813C7928 | 7F C3 F3 78 */	mr r3, r30
/* 813C792C | 38 80 00 13 */	li r4, 0x13
/* 813C7930 | 38 A0 00 00 */	li r5, 0x0
/* 813C7934 | 38 C0 00 00 */	li r6, 0x0
/* 813C7938 | 4B FD F7 C9 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
.L_813C793C:
/* 813C793C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813C7940 | 41 82 00 3C */	beq .L_813C797C
/* 813C7944 | 7F C3 F3 78 */	mr r3, r30
/* 813C7948 | 38 8D 8B C9 */	li r4, lbl_81696C09@sda21
/* 813C794C | 38 A0 00 01 */	li r5, 0x1
/* 813C7950 | 4B FD FB 85 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C7954 | 7F C3 F3 78 */	mr r3, r30
/* 813C7958 | 38 80 00 11 */	li r4, 0x11
/* 813C795C | 38 A0 00 00 */	li r5, 0x0
/* 813C7960 | 38 C0 00 00 */	li r6, 0x0
/* 813C7964 | 4B FD F7 9D */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813C7968 | 7F C3 F3 78 */	mr r3, r30
/* 813C796C | 38 80 00 14 */	li r4, 0x14
/* 813C7970 | 38 A0 00 00 */	li r5, 0x0
/* 813C7974 | 38 C0 00 00 */	li r6, 0x0
/* 813C7978 | 4B FD F7 89 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
.L_813C797C:
/* 813C797C | 7F C3 F3 78 */	mr r3, r30
/* 813C7980 | 38 80 00 12 */	li r4, 0x12
/* 813C7984 | 38 A0 00 02 */	li r5, 0x2
/* 813C7988 | 38 C0 00 01 */	li r6, 0x1
/* 813C798C | 4B FD F7 75 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813C7990 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C7994 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C7998 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813C799C | 7C 08 03 A6 */	mtlr r0
/* 813C79A0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C79A4 | 4E 80 00 20 */	blr
.endfn anmArwAppear__Q33ipl5scene12SavedataBaseFbb

# .text:0xB24 | 0x813C79A8 | size: 0x68
# ipl::scene::SavedataBase::anmArwDisappear(bool, bool)
.fn anmArwDisappear__Q33ipl5scene12SavedataBaseFbb, global
/* 813C79A8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C79AC | 7C 08 02 A6 */	mflr r0
/* 813C79B0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813C79B4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C79B8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C79BC | 7C BF 2B 78 */	mr r31, r5
/* 813C79C0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813C79C4 | 7C 7E 1B 78 */	mr r30, r3
/* 813C79C8 | 41 82 00 14 */	beq .L_813C79DC
/* 813C79CC | 38 80 00 15 */	li r4, 0x15
/* 813C79D0 | 38 A0 00 00 */	li r5, 0x0
/* 813C79D4 | 38 C0 00 01 */	li r6, 0x1
/* 813C79D8 | 4B FD F7 29 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
.L_813C79DC:
/* 813C79DC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813C79E0 | 41 82 00 18 */	beq .L_813C79F8
/* 813C79E4 | 7F C3 F3 78 */	mr r3, r30
/* 813C79E8 | 38 80 00 16 */	li r4, 0x16
/* 813C79EC | 38 A0 00 00 */	li r5, 0x0
/* 813C79F0 | 38 C0 00 01 */	li r6, 0x1
/* 813C79F4 | 4B FD F7 0D */	bl do_animation__Q33ipl5scene13AnmControllerFiib
.L_813C79F8:
/* 813C79F8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C79FC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C7A00 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813C7A04 | 7C 08 03 A6 */	mtlr r0
/* 813C7A08 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C7A0C | 4E 80 00 20 */	blr
.endfn anmArwDisappear__Q33ipl5scene12SavedataBaseFbb

# .text:0xB8C | 0x813C7A10 | size: 0x14C
# ipl::scene::SavedataBase::onEvent(unsigned long, unsigned long, void*)
.fn onEvent__Q33ipl5scene12SavedataBaseFUlUlPv, global
/* 813C7A10 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813C7A14 | 7C 08 02 A6 */	mflr r0
/* 813C7A18 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813C7A1C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C7A20 | 48 23 1A A5 */	bl _savegpr_28
/* 813C7A24 | 7C 7C 1B 78 */	mr r28, r3
/* 813C7A28 | 80 63 00 2C */	lwz r3, 0x2c(r3)
/* 813C7A2C | 7C BD 2B 78 */	mr r29, r5
/* 813C7A30 | 7C DE 33 78 */	mr r30, r6
/* 813C7A34 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C7A38 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813C7A3C | 7D 89 03 A6 */	mtctr r12
/* 813C7A40 | 4E 80 04 21 */	bctrl
/* 813C7A44 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C7A48 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 813C7A4C | 7D 89 03 A6 */	mtctr r12
/* 813C7A50 | 4E 80 04 21 */	bctrl
/* 813C7A54 | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 813C7A58 | 3B E3 00 B4 */	addi r31, r3, 0xb4
/* 813C7A5C | 41 82 00 20 */	beq .L_813C7A7C
/* 813C7A60 | 40 80 00 10 */	bge .L_813C7A70
/* 813C7A64 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813C7A68 | 40 80 00 84 */	bge .L_813C7AEC
/* 813C7A6C | 48 00 00 D8 */	b .L_813C7B44
.L_813C7A70:
/* 813C7A70 | 2C 1D 00 03 */	cmpwi r29, 0x3
/* 813C7A74 | 40 80 00 D0 */	bge .L_813C7B44
/* 813C7A78 | 48 00 00 3C */	b .L_813C7AB4
.L_813C7A7C:
/* 813C7A7C | 7F 83 E3 78 */	mr r3, r28
/* 813C7A80 | 7F E4 FB 78 */	mr r4, r31
/* 813C7A84 | 4B FD F7 ED */	bl get_anmpane__Q33ipl5scene13AnmControllerFPCc
/* 813C7A88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C7A8C | 7C 7F 1B 78 */	mr r31, r3
/* 813C7A90 | 41 82 00 B4 */	beq .L_813C7B44
/* 813C7A94 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C7A98 | 38 80 00 0D */	li r4, 0xd
/* 813C7A9C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C7AA0 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813C7AA4 | 48 04 36 95 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C7AA8 | 7F E4 FB 78 */	mr r4, r31
/* 813C7AAC | 4B FF D5 A1 */	bl onPoint__Q33ipl5scene6MemoryFPQ33ipl5scene7AnmPane
/* 813C7AB0 | 48 00 00 94 */	b .L_813C7B44
.L_813C7AB4:
/* 813C7AB4 | 7F 83 E3 78 */	mr r3, r28
/* 813C7AB8 | 7F E4 FB 78 */	mr r4, r31
/* 813C7ABC | 4B FD F7 B5 */	bl get_anmpane__Q33ipl5scene13AnmControllerFPCc
/* 813C7AC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C7AC4 | 7C 7F 1B 78 */	mr r31, r3
/* 813C7AC8 | 41 82 00 7C */	beq .L_813C7B44
/* 813C7ACC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C7AD0 | 38 80 00 0D */	li r4, 0xd
/* 813C7AD4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C7AD8 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813C7ADC | 48 04 36 5D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C7AE0 | 7F E4 FB 78 */	mr r4, r31
/* 813C7AE4 | 4B FF D6 29 */	bl onLeft__Q33ipl5scene6MemoryFPQ33ipl5scene7AnmPane
/* 813C7AE8 | 48 00 00 5C */	b .L_813C7B44
.L_813C7AEC:
/* 813C7AEC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813C7AF0 | 3C 80 00 10 */	lis r4, 0x10
/* 813C7AF4 | 7F C3 F3 78 */	mr r3, r30
/* 813C7AF8 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813C7AFC | 38 84 08 00 */	addi r4, r4, 0x800
/* 813C7B00 | 7D 89 03 A6 */	mtctr r12
/* 813C7B04 | 4E 80 04 21 */	bctrl
/* 813C7B08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C7B0C | 41 82 00 38 */	beq .L_813C7B44
/* 813C7B10 | 7F 83 E3 78 */	mr r3, r28
/* 813C7B14 | 7F E4 FB 78 */	mr r4, r31
/* 813C7B18 | 4B FD F7 59 */	bl get_anmpane__Q33ipl5scene13AnmControllerFPCc
/* 813C7B1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C7B20 | 7C 7F 1B 78 */	mr r31, r3
/* 813C7B24 | 41 82 00 20 */	beq .L_813C7B44
/* 813C7B28 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C7B2C | 38 80 00 0D */	li r4, 0xd
/* 813C7B30 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C7B34 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813C7B38 | 48 04 36 01 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C7B3C | 7F E4 FB 78 */	mr r4, r31
/* 813C7B40 | 4B FF D6 5D */	bl onTrig__Q33ipl5scene6MemoryFPQ33ipl5scene7AnmPane
.L_813C7B44:
/* 813C7B44 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C7B48 | 48 23 19 C9 */	bl _restgpr_28
/* 813C7B4C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813C7B50 | 7C 08 03 A6 */	mtlr r0
/* 813C7B54 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813C7B58 | 4E 80 00 20 */	blr
.endfn onEvent__Q33ipl5scene12SavedataBaseFUlUlPv

# .text:0xCD8 | 0x813C7B5C | size: 0x54
# ipl::scene::SavedataBase::on_fadein1st()
.fn on_fadein1st__Q33ipl5scene12SavedataBaseFv, global
/* 813C7B5C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C7B60 | 7C 08 02 A6 */	mflr r0
/* 813C7B64 | 38 80 00 01 */	li r4, 0x1
/* 813C7B68 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C7B6C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C7B70 | 7C 7F 1B 78 */	mr r31, r3
/* 813C7B74 | 4B FD F6 31 */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813C7B78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C7B7C | 40 82 00 20 */	bne .L_813C7B9C
/* 813C7B80 | 7F E3 FB 78 */	mr r3, r31
/* 813C7B84 | 38 80 00 03 */	li r4, 0x3
/* 813C7B88 | 38 A0 00 00 */	li r5, 0x0
/* 813C7B8C | 38 C0 00 01 */	li r6, 0x1
/* 813C7B90 | 4B FD F5 71 */	bl do_animation__Q33ipl5scene13AnmControllerFiib
/* 813C7B94 | 38 00 00 02 */	li r0, 0x2
/* 813C7B98 | 90 1F 00 34 */	stw r0, 0x34(r31)
.L_813C7B9C:
/* 813C7B9C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C7BA0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C7BA4 | 7C 08 03 A6 */	mtlr r0
/* 813C7BA8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C7BAC | 4E 80 00 20 */	blr
.endfn on_fadein1st__Q33ipl5scene12SavedataBaseFv

# .text:0xD2C | 0x813C7BB0 | size: 0x5C
# ipl::scene::SavedataBase::on_scroll_r()
.fn on_scroll_r__Q33ipl5scene12SavedataBaseFv, global
/* 813C7BB0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C7BB4 | 7C 08 02 A6 */	mflr r0
/* 813C7BB8 | 38 80 00 0A */	li r4, 0xa
/* 813C7BBC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C7BC0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C7BC4 | 7C 7F 1B 78 */	mr r31, r3
/* 813C7BC8 | 4B FD F5 DD */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813C7BCC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C7BD0 | 40 82 00 28 */	bne .L_813C7BF8
/* 813C7BD4 | 7F E3 FB 78 */	mr r3, r31
/* 813C7BD8 | 38 80 00 0A */	li r4, 0xa
/* 813C7BDC | 4B FD F6 05 */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813C7BE0 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813C7BE4 | 4B FA 20 41 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813C7BE8 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 813C7BEC | 4B FA 2B 19 */	bl calc__Q33ipl6layout6ObjectFv
/* 813C7BF0 | 38 00 00 00 */	li r0, 0x0
/* 813C7BF4 | 90 1F 00 34 */	stw r0, 0x34(r31)
.L_813C7BF8:
/* 813C7BF8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C7BFC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C7C00 | 7C 08 03 A6 */	mtlr r0
/* 813C7C04 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C7C08 | 4E 80 00 20 */	blr
.endfn on_scroll_r__Q33ipl5scene12SavedataBaseFv

# .text:0xD88 | 0x813C7C0C | size: 0x5C
# ipl::scene::SavedataBase::on_scroll_l()
.fn on_scroll_l__Q33ipl5scene12SavedataBaseFv, global
/* 813C7C0C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C7C10 | 7C 08 02 A6 */	mflr r0
/* 813C7C14 | 38 80 00 0B */	li r4, 0xb
/* 813C7C18 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C7C1C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C7C20 | 7C 7F 1B 78 */	mr r31, r3
/* 813C7C24 | 4B FD F5 81 */	bl is_animation__Q33ipl5scene13AnmControllerFi
/* 813C7C28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C7C2C | 40 82 00 28 */	bne .L_813C7C54
/* 813C7C30 | 7F E3 FB 78 */	mr r3, r31
/* 813C7C34 | 38 80 00 0A */	li r4, 0xa
/* 813C7C38 | 4B FD F5 A9 */	bl get_animation__Q33ipl5scene13AnmControllerFi
/* 813C7C3C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813C7C40 | 4B FA 1F E5 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813C7C44 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 813C7C48 | 4B FA 2A BD */	bl calc__Q33ipl6layout6ObjectFv
/* 813C7C4C | 38 00 00 00 */	li r0, 0x0
/* 813C7C50 | 90 1F 00 34 */	stw r0, 0x34(r31)
.L_813C7C54:
/* 813C7C54 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C7C58 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C7C5C | 7C 08 03 A6 */	mtlr r0
/* 813C7C60 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C7C64 | 4E 80 00 20 */	blr
.endfn on_scroll_l__Q33ipl5scene12SavedataBaseFv

# .text:0xDE4 | 0x813C7C68 | size: 0x8
# ipl::scene::SavedataBase::@40@onEvent(unsigned long, unsigned long, void*)
.fn "@40@onEvent__Q33ipl5scene12SavedataBaseFUlUlPv", global
/* 813C7C68 | 38 63 FF D8 */	subi r3, r3, 0x28
/* 813C7C6C | 4B FF FD A4 */	b onEvent__Q33ipl5scene12SavedataBaseFUlUlPv
.endfn "@40@onEvent__Q33ipl5scene12SavedataBaseFUlUlPv"

# 0x81651250..0x816516E0 | size: 0x490
.data
.balign 8

# .data:0x0 | 0x81651250 | size: 0x359
.obj lbl_81651250, global
	.4byte 0x69745F4F
	.4byte 0x626A4375
	.4byte 0x62654564
	.4byte 0x69745F61
	.4byte 0x5F576969
	.4byte 0x53776974
	.4byte 0x63682E62
	.4byte 0x726C616E
	.4byte 0x00475F53
	.4byte 0x77697463
	.4byte 0x68006974
	.4byte 0x5F4F626A
	.4byte 0x43756265
	.4byte 0x45646974
	.4byte 0x5F615F44
	.4byte 0x61746149
	.4byte 0x6E2E6272
	.4byte 0x6C616E00
	.4byte 0x475F4461
	.4byte 0x7461416C
	.4byte 0x6C006974
	.4byte 0x5F4F626A
	.4byte 0x43756265
	.4byte 0x45646974
	.4byte 0x5F615F44
	.4byte 0x6174614F
	.4byte 0x75742E62
	.4byte 0x726C616E
	.4byte 0x0069745F
	.4byte 0x4F626A43
	.4byte 0x75626545
	.4byte 0x6469745F
	.4byte 0x615F5365
	.4byte 0x6C656374
	.4byte 0x496E2E62
	.4byte 0x726C616E
	.4byte 0x00475F53
	.4byte 0x656C6563
	.4byte 0x74006974
	.4byte 0x5F4F626A
	.4byte 0x43756265
	.4byte 0x45646974
	.4byte 0x5F615F53
	.4byte 0x656C6563
	.4byte 0x74576969
	.4byte 0x466F7563
	.4byte 0x7573496E
	.4byte 0x2E62726C
	.4byte 0x616E0047
	.4byte 0x5F53656C
	.4byte 0x65637457
	.4byte 0x69690069
	.4byte 0x745F4F62
	.4byte 0x6A437562
	.4byte 0x65456469
	.4byte 0x745F615F
	.4byte 0x53656C65
	.4byte 0x63745769
	.4byte 0x69466F75
	.4byte 0x6375734F
	.4byte 0x75742E62
	.4byte 0x726C616E
	.4byte 0x0069745F
	.4byte 0x4F626A43
	.4byte 0x75626545
	.4byte 0x6469745F
	.4byte 0x615F5365
	.4byte 0x6C656374
	.4byte 0x57696946
	.4byte 0x6C617368
	.4byte 0x2E62726C
	.4byte 0x616E0069
	.4byte 0x745F4F62
	.4byte 0x6A437562
	.4byte 0x65456469
	.4byte 0x745F615F
	.4byte 0x53656C65
	.4byte 0x63745364
	.4byte 0x496E2E62
	.4byte 0x726C616E
	.4byte 0x00475F53
	.4byte 0x656C6563
	.4byte 0x74536400
	.4byte 0x69745F4F
	.4byte 0x626A4375
	.4byte 0x62654564
	.4byte 0x69745F61
	.4byte 0x5F53656C
	.4byte 0x65637453
	.4byte 0x644F7574
	.4byte 0x2E62726C
	.4byte 0x616E0069
	.4byte 0x745F4F62
	.4byte 0x6A437562
	.4byte 0x65456469
	.4byte 0x745F615F
	.4byte 0x53656C65
	.4byte 0x63745364
	.4byte 0x466C6173
	.4byte 0x682E6272
	.4byte 0x6C616E00
	.4byte 0x69745F4F
	.4byte 0x626A4375
	.4byte 0x62654564
	.4byte 0x69745F61
	.4byte 0x5F417277
	.4byte 0x4C312E62
	.4byte 0x726C616E
	.4byte 0x0069745F
	.4byte 0x4F626A43
	.4byte 0x75626545
	.4byte 0x6469745F
	.4byte 0x615F4177
	.4byte 0x7252312E
	.4byte 0x62726C61
	.4byte 0x6E006974
	.4byte 0x5F4F626A
	.4byte 0x43756265
	.4byte 0x45646974
	.4byte 0x5F615F53
	.4byte 0x656C6563
	.4byte 0x742E6272
	.4byte 0x6C616E00
	.4byte 0x475F4172
	.4byte 0x77525F41
	.4byte 0x6300475F
	.4byte 0x4172774C
	.4byte 0x5F416300
	.4byte 0x69745F4F
	.4byte 0x626A4375
	.4byte 0x62654564
	.4byte 0x69745F61
	.4byte 0x5F466F63
	.4byte 0x75734F6E
	.4byte 0x2E62726C
	.4byte 0x616E0047
	.4byte 0x5F417277
	.4byte 0x525F466F
	.4byte 0x63757300
	.4byte 0x475F4172
	.4byte 0x774C5F46
	.4byte 0x6F637573
	.4byte 0x0069745F
	.4byte 0x4F626A43
	.4byte 0x75626545
	.4byte 0x6469745F
	.4byte 0x615F466F
	.4byte 0x6375734F
	.4byte 0x66662E62
	.4byte 0x726C616E
	.4byte 0x0069745F
	.4byte 0x4F626A43
	.4byte 0x75626545
	.4byte 0x6469745F
	.4byte 0x615F4C6F
	.4byte 0x6F702E62
	.4byte 0x726C616E
	.4byte 0x00475F41
	.4byte 0x7277526F
	.4byte 0x6F700069
	.4byte 0x745F4F62
	.4byte 0x6A437562
	.4byte 0x65456469
	.4byte 0x745F615F
	.4byte 0x41707065
	.4byte 0x61722E62
	.4byte 0x726C616E
	.4byte 0x00475F41
	.4byte 0x7277525F
	.4byte 0x456E6400
	.4byte 0x475F4172
	.4byte 0x774C5F45
	.4byte 0x6E640069
	.4byte 0x745F4F62
	.4byte 0x6A437562
	.4byte 0x65456469
	.4byte 0x745F615F
	.4byte 0x4C6F7374
	.4byte 0x2E62726C
	.4byte 0x616E0069
	.4byte 0x745F4F62
	.4byte 0x6A437562
	.4byte 0x65456469
	.4byte 0x745F615F
	.4byte 0x4572726F
	.4byte 0x72547874
	.4byte 0x496E2E62
	.4byte 0x726C616E
	.4byte 0x00475F45
	.4byte 0x72726F72
	.4byte 0x54787400
	.4byte 0x69745F4F
	.4byte 0x626A4375
	.4byte 0x62654564
	.4byte 0x69745F61
	.4byte 0x5F457272
	.4byte 0x6F725478
	.4byte 0x744F7574
	.4byte 0x2E62726C
	.4byte 0x616E0054
	.4byte 0x5F53656C
	.4byte 0x65637457
	.4byte 0x69695F30
	.4byte 0x3000545F
	.4byte 0x53656C65
	.4byte 0x63745769
	.4byte 0x695F3031
	.4byte 0x00545F53
	.4byte 0x656C6563
	.4byte 0x7453645F
	.4byte 0x30300054
	.4byte 0x5F53656C
	.4byte 0x65637453
	.4byte 0x645F3031
	.byte 0x00
.endobj lbl_81651250

# .data:0x359 | 0x816515A9 | size: 0x3F
.obj lbl_816515A9, global
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
	.byte 0x00, 0x00, 0x00
.endobj lbl_816515A9

# .data:0x398 | 0x816515E8 | size: 0x30
.obj jumptable_816515E8, local
	.rel calc__Q33ipl5scene12SavedataBaseFv, .L_813C7630
	.rel calc__Q33ipl5scene12SavedataBaseFv, .L_813C7550
	.rel calc__Q33ipl5scene12SavedataBaseFv, .L_813C755C
	.rel calc__Q33ipl5scene12SavedataBaseFv, .L_813C757C
	.rel calc__Q33ipl5scene12SavedataBaseFv, .L_813C759C
	.rel calc__Q33ipl5scene12SavedataBaseFv, .L_813C75BC
	.rel calc__Q33ipl5scene12SavedataBaseFv, .L_813C7630
	.rel calc__Q33ipl5scene12SavedataBaseFv, .L_813C7630
	.rel calc__Q33ipl5scene12SavedataBaseFv, .L_813C75DC
	.rel calc__Q33ipl5scene12SavedataBaseFv, .L_813C75E8
	.rel calc__Q33ipl5scene12SavedataBaseFv, .L_813C75F4
	.rel calc__Q33ipl5scene12SavedataBaseFv, .L_813C7614
.endobj jumptable_816515E8

# .data:0x3C8 | 0x81651618 | size: 0xC8
# ipl::scene::SavedataBase::__vtable
.obj __vt__Q33ipl5scene12SavedataBase, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene12SavedataBaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@40@onEvent__Q33ipl5scene12SavedataBaseFUlUlPv"
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
	.4byte onEvent__Q33ipl5scene12SavedataBaseFUlUlPv
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj __vt__Q33ipl5scene12SavedataBase

# 0x81696BF8..0x81696C20 | size: 0x28
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696BF8 | size: 0x6
.obj lbl_81696BF8, global
	.string "G_Arw"
.endobj lbl_81696BF8

# .sdata:0x6 | 0x81696BFE | size: 0x4
.obj lbl_81696BFE, global
	.string16 " "
.endobj lbl_81696BFE

# .sdata:0xA | 0x81696C02 | size: 0x7
.obj lbl_81696C02, global
	.string "N_ArwR"
.endobj lbl_81696C02

# .sdata:0x11 | 0x81696C09 | size: 0x7
.obj lbl_81696C09, global
	.string "N_ArwL"
.endobj lbl_81696C09

# .sdata:0x18 | 0x81696C10 | size: 0x7
.obj lbl_81696C10, global
	.string "B_ArwR"
.endobj lbl_81696C10

# .sdata:0x1F | 0x81696C17 | size: 0x9
.obj lbl_81696C17, global
	.4byte 0x425F4172
	.4byte 0x774C0000
	.byte 0x00
.endobj lbl_81696C17
