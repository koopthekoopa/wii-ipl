.include "macros.inc"
.file "iplSettingSelect.cpp"

# 0x81407AFC..0x81409BEC | size: 0x20F0
.text
.balign 4

# .text:0x0 | 0x81407AFC | size: 0x88
# ipl::scene::SettingSelect::SettingSelect(EGG::Heap*, int)
.fn __ct__Q33ipl5scene13SettingSelectFPQ23EGG4Heapi, global
/* 81407AFC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81407B00 | 7C 08 02 A6 */	mflr r0
/* 81407B04 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81407B08 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81407B0C | 7C BF 2B 78 */	mr r31, r5
/* 81407B10 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81407B14 | 7C 7E 1B 78 */	mr r30, r3
/* 81407B18 | 48 00 20 D5 */	bl fn_81409BEC
/* 81407B1C | 3C C0 81 66 */	lis r6, __vt__Q33ipl5scene13SettingSelect@ha
/* 81407B20 | 38 E0 00 00 */	li r7, 0x0
/* 81407B24 | 38 C6 86 E8 */	addi r6, r6, __vt__Q33ipl5scene13SettingSelect@l
/* 81407B28 | 38 00 00 03 */	li r0, 0x3
/* 81407B2C | 38 A6 00 1C */	addi r5, r6, 0x1c
/* 81407B30 | 90 FE 00 5C */	stw r7, 0x5c(r30)
/* 81407B34 | 38 86 00 4C */	addi r4, r6, 0x4c
/* 81407B38 | 7F C3 F3 78 */	mr r3, r30
/* 81407B3C | 90 DE 00 00 */	stw r6, 0x0(r30)
/* 81407B40 | 90 BE 00 14 */	stw r5, 0x14(r30)
/* 81407B44 | 90 9E 00 54 */	stw r4, 0x54(r30)
/* 81407B48 | 90 FE 00 60 */	stw r7, 0x60(r30)
/* 81407B4C | 90 FE 00 64 */	stw r7, 0x64(r30)
/* 81407B50 | 93 FE 00 68 */	stw r31, 0x68(r30)
/* 81407B54 | 90 FE 00 6C */	stw r7, 0x6c(r30)
/* 81407B58 | 90 FE 00 70 */	stw r7, 0x70(r30)
/* 81407B5C | 90 FE 00 74 */	stw r7, 0x74(r30)
/* 81407B60 | 90 FE 00 90 */	stw r7, 0x90(r30)
/* 81407B64 | 90 FE 00 94 */	stw r7, 0x94(r30)
/* 81407B68 | 90 1E 00 28 */	stw r0, 0x28(r30)
/* 81407B6C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81407B70 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81407B74 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81407B78 | 7C 08 03 A6 */	mtlr r0
/* 81407B7C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81407B80 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene13SettingSelectFPQ23EGG4Heapi

# .text:0x88 | 0x81407B84 | size: 0x4C
# ipl::scene::SettingSelect::prepare()
.fn prepare__Q33ipl5scene13SettingSelectFv, global
/* 81407B84 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81407B88 | 7C 08 02 A6 */	mflr r0
/* 81407B8C | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81407B90 | 3C A0 81 66 */	lis r5, lbl_8165821C@ha
/* 81407B94 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81407B98 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81407B9C | 38 A5 82 1C */	addi r5, r5, lbl_8165821C@l
/* 81407BA0 | 38 C0 00 00 */	li r6, 0x0
/* 81407BA4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81407BA8 | 7C 7F 1B 78 */	mr r31, r3
/* 81407BAC | 80 64 00 6C */	lwz r3, 0x6c(r4)
/* 81407BB0 | 80 9F 00 24 */	lwz r4, 0x24(r31)
/* 81407BB4 | 4B F3 5D 01 */	bl readLayoutAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcb
/* 81407BB8 | 90 7F 00 70 */	stw r3, 0x70(r31)
/* 81407BBC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81407BC0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81407BC4 | 7C 08 03 A6 */	mtlr r0
/* 81407BC8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81407BCC | 4E 80 00 20 */	blr
.endfn prepare__Q33ipl5scene13SettingSelectFv

# .text:0xD4 | 0x81407BD0 | size: 0x6C4
# ipl::scene::SettingSelect::create()
.fn create__Q33ipl5scene13SettingSelectFv, global
/* 81407BD0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81407BD4 | 7C 08 02 A6 */	mflr r0
/* 81407BD8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81407BDC | 39 61 00 20 */	addi r11, r1, 0x20
/* 81407BE0 | 48 1F 18 E5 */	bl _savegpr_28
/* 81407BE4 | 3F A0 81 66 */	lis r29, lbl_816581B8@ha
/* 81407BE8 | 7C 7F 1B 78 */	mr r31, r3
/* 81407BEC | 3B BD 81 B8 */	addi r29, r29, lbl_816581B8@l
/* 81407BF0 | 38 60 05 80 */	li r3, 0x580
/* 81407BF4 | 48 1F 04 A9 */	bl __nw__FUl
/* 81407BF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81407BFC | 41 82 00 18 */	beq .L_81407C14
/* 81407C00 | 80 9F 00 24 */	lwz r4, 0x24(r31)
/* 81407C04 | 38 FD 00 71 */	addi r7, r29, 0x71
/* 81407C08 | 80 BF 00 70 */	lwz r5, 0x70(r31)
/* 81407C0C | 38 CD 92 38 */	li r6, lbl_81697278@sda21
/* 81407C10 | 4B F6 24 15 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_81407C14:
/* 81407C14 | 90 7F 00 6C */	stw r3, 0x6c(r31)
/* 81407C18 | 38 9D 00 85 */	addi r4, r29, 0x85
/* 81407C1C | 38 BD 00 A1 */	addi r5, r29, 0xa1
/* 81407C20 | 38 C0 00 00 */	li r6, 0x0
/* 81407C24 | 38 E0 00 01 */	li r7, 0x1
/* 81407C28 | 4B F6 28 B9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407C2C | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81407C30 | 38 9D 00 B1 */	addi r4, r29, 0xb1
/* 81407C34 | 38 BD 00 A1 */	addi r5, r29, 0xa1
/* 81407C38 | 38 C0 00 00 */	li r6, 0x0
/* 81407C3C | 38 E0 00 00 */	li r7, 0x0
/* 81407C40 | 4B F6 28 A1 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407C44 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81407C48 | 38 9D 00 D3 */	addi r4, r29, 0xd3
/* 81407C4C | 38 BD 00 A1 */	addi r5, r29, 0xa1
/* 81407C50 | 38 C0 00 00 */	li r6, 0x0
/* 81407C54 | 38 E0 00 00 */	li r7, 0x0
/* 81407C58 | 4B F6 28 89 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407C5C | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81407C60 | 38 9D 00 F6 */	addi r4, r29, 0xf6
/* 81407C64 | 38 BD 00 A1 */	addi r5, r29, 0xa1
/* 81407C68 | 38 C0 00 00 */	li r6, 0x0
/* 81407C6C | 38 E0 00 00 */	li r7, 0x0
/* 81407C70 | 4B F6 28 71 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407C74 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81407C78 | 38 9D 00 F6 */	addi r4, r29, 0xf6
/* 81407C7C | 38 BD 01 1B */	addi r5, r29, 0x11b
/* 81407C80 | 38 C0 00 00 */	li r6, 0x0
/* 81407C84 | 38 E0 00 00 */	li r7, 0x0
/* 81407C88 | 4B F6 28 59 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407C8C | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81407C90 | 38 9D 01 2B */	addi r4, r29, 0x12b
/* 81407C94 | 38 BD 00 A1 */	addi r5, r29, 0xa1
/* 81407C98 | 38 C0 00 00 */	li r6, 0x0
/* 81407C9C | 38 E0 00 00 */	li r7, 0x0
/* 81407CA0 | 4B F6 28 41 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407CA4 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81407CA8 | 38 9D 01 48 */	addi r4, r29, 0x148
/* 81407CAC | 38 BD 00 A1 */	addi r5, r29, 0xa1
/* 81407CB0 | 38 C0 00 00 */	li r6, 0x0
/* 81407CB4 | 38 E0 00 00 */	li r7, 0x0
/* 81407CB8 | 4B F6 28 29 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407CBC | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81407CC0 | 38 9D 00 85 */	addi r4, r29, 0x85
/* 81407CC4 | 38 BD 01 66 */	addi r5, r29, 0x166
/* 81407CC8 | 38 C0 00 00 */	li r6, 0x0
/* 81407CCC | 38 E0 00 01 */	li r7, 0x1
/* 81407CD0 | 4B F6 28 11 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407CD4 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81407CD8 | 38 9D 00 B1 */	addi r4, r29, 0xb1
/* 81407CDC | 38 BD 01 66 */	addi r5, r29, 0x166
/* 81407CE0 | 38 C0 00 00 */	li r6, 0x0
/* 81407CE4 | 38 E0 00 00 */	li r7, 0x0
/* 81407CE8 | 4B F6 27 F9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407CEC | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81407CF0 | 38 9D 00 D3 */	addi r4, r29, 0xd3
/* 81407CF4 | 38 BD 01 66 */	addi r5, r29, 0x166
/* 81407CF8 | 38 C0 00 00 */	li r6, 0x0
/* 81407CFC | 38 E0 00 00 */	li r7, 0x0
/* 81407D00 | 4B F6 27 E1 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407D04 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81407D08 | 38 9D 00 F6 */	addi r4, r29, 0xf6
/* 81407D0C | 38 BD 01 66 */	addi r5, r29, 0x166
/* 81407D10 | 38 C0 00 00 */	li r6, 0x0
/* 81407D14 | 38 E0 00 00 */	li r7, 0x0
/* 81407D18 | 4B F6 27 C9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407D1C | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81407D20 | 38 9D 00 F6 */	addi r4, r29, 0xf6
/* 81407D24 | 38 BD 01 73 */	addi r5, r29, 0x173
/* 81407D28 | 38 C0 00 00 */	li r6, 0x0
/* 81407D2C | 38 E0 00 00 */	li r7, 0x0
/* 81407D30 | 4B F6 27 B1 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407D34 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81407D38 | 38 9D 01 2B */	addi r4, r29, 0x12b
/* 81407D3C | 38 BD 01 66 */	addi r5, r29, 0x166
/* 81407D40 | 38 C0 00 00 */	li r6, 0x0
/* 81407D44 | 38 E0 00 00 */	li r7, 0x0
/* 81407D48 | 4B F6 27 99 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407D4C | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81407D50 | 38 9D 01 48 */	addi r4, r29, 0x148
/* 81407D54 | 38 BD 01 66 */	addi r5, r29, 0x166
/* 81407D58 | 38 C0 00 00 */	li r6, 0x0
/* 81407D5C | 38 E0 00 00 */	li r7, 0x0
/* 81407D60 | 4B F6 27 81 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407D64 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81407D68 | 38 9D 01 80 */	addi r4, r29, 0x180
/* 81407D6C | 38 BD 01 A2 */	addi r5, r29, 0x1a2
/* 81407D70 | 38 C0 00 00 */	li r6, 0x0
/* 81407D74 | 38 E0 00 01 */	li r7, 0x1
/* 81407D78 | 4B F6 27 69 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407D7C | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81407D80 | 38 9D 01 B0 */	addi r4, r29, 0x1b0
/* 81407D84 | 38 BD 01 A2 */	addi r5, r29, 0x1a2
/* 81407D88 | 38 C0 00 00 */	li r6, 0x0
/* 81407D8C | 38 E0 00 00 */	li r7, 0x0
/* 81407D90 | 4B F6 27 51 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407D94 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81407D98 | 38 9D 01 D8 */	addi r4, r29, 0x1d8
/* 81407D9C | 38 BD 01 A2 */	addi r5, r29, 0x1a2
/* 81407DA0 | 38 C0 00 00 */	li r6, 0x0
/* 81407DA4 | 38 E0 00 00 */	li r7, 0x0
/* 81407DA8 | 4B F6 27 39 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407DAC | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81407DB0 | 38 9D 02 01 */	addi r4, r29, 0x201
/* 81407DB4 | 38 BD 01 A2 */	addi r5, r29, 0x1a2
/* 81407DB8 | 38 C0 00 00 */	li r6, 0x0
/* 81407DBC | 38 E0 00 00 */	li r7, 0x0
/* 81407DC0 | 4B F6 27 21 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407DC4 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81407DC8 | 38 9D 02 01 */	addi r4, r29, 0x201
/* 81407DCC | 38 BD 02 2C */	addi r5, r29, 0x22c
/* 81407DD0 | 38 C0 00 00 */	li r6, 0x0
/* 81407DD4 | 38 E0 00 00 */	li r7, 0x0
/* 81407DD8 | 4B F6 27 09 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407DDC | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81407DE0 | 38 9D 02 3A */	addi r4, r29, 0x23a
/* 81407DE4 | 38 BD 01 A2 */	addi r5, r29, 0x1a2
/* 81407DE8 | 38 C0 00 00 */	li r6, 0x0
/* 81407DEC | 38 E0 00 00 */	li r7, 0x0
/* 81407DF0 | 4B F6 26 F1 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407DF4 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81407DF8 | 38 9D 02 5D */	addi r4, r29, 0x25d
/* 81407DFC | 38 BD 01 A2 */	addi r5, r29, 0x1a2
/* 81407E00 | 38 C0 00 00 */	li r6, 0x0
/* 81407E04 | 38 E0 00 00 */	li r7, 0x0
/* 81407E08 | 4B F6 26 D9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407E0C | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81407E10 | 38 9D 01 80 */	addi r4, r29, 0x180
/* 81407E14 | 38 BD 02 81 */	addi r5, r29, 0x281
/* 81407E18 | 38 C0 00 00 */	li r6, 0x0
/* 81407E1C | 38 E0 00 01 */	li r7, 0x1
/* 81407E20 | 4B F6 26 C1 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407E24 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81407E28 | 38 9D 01 B0 */	addi r4, r29, 0x1b0
/* 81407E2C | 38 BD 02 81 */	addi r5, r29, 0x281
/* 81407E30 | 38 C0 00 00 */	li r6, 0x0
/* 81407E34 | 38 E0 00 00 */	li r7, 0x0
/* 81407E38 | 4B F6 26 A9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407E3C | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81407E40 | 38 9D 01 D8 */	addi r4, r29, 0x1d8
/* 81407E44 | 38 BD 02 81 */	addi r5, r29, 0x281
/* 81407E48 | 38 C0 00 00 */	li r6, 0x0
/* 81407E4C | 38 E0 00 00 */	li r7, 0x0
/* 81407E50 | 4B F6 26 91 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407E54 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81407E58 | 38 9D 02 01 */	addi r4, r29, 0x201
/* 81407E5C | 38 BD 02 81 */	addi r5, r29, 0x281
/* 81407E60 | 38 C0 00 00 */	li r6, 0x0
/* 81407E64 | 38 E0 00 00 */	li r7, 0x0
/* 81407E68 | 4B F6 26 79 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407E6C | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81407E70 | 38 9D 02 01 */	addi r4, r29, 0x201
/* 81407E74 | 38 BD 02 8E */	addi r5, r29, 0x28e
/* 81407E78 | 38 C0 00 00 */	li r6, 0x0
/* 81407E7C | 38 E0 00 00 */	li r7, 0x0
/* 81407E80 | 4B F6 26 61 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407E84 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81407E88 | 38 9D 02 3A */	addi r4, r29, 0x23a
/* 81407E8C | 38 BD 02 81 */	addi r5, r29, 0x281
/* 81407E90 | 38 C0 00 00 */	li r6, 0x0
/* 81407E94 | 38 E0 00 00 */	li r7, 0x0
/* 81407E98 | 4B F6 26 49 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407E9C | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81407EA0 | 38 9D 02 5D */	addi r4, r29, 0x25d
/* 81407EA4 | 38 BD 02 81 */	addi r5, r29, 0x281
/* 81407EA8 | 38 C0 00 00 */	li r6, 0x0
/* 81407EAC | 38 E0 00 00 */	li r7, 0x0
/* 81407EB0 | 4B F6 26 31 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407EB4 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81407EB8 | 38 9D 02 9B */	addi r4, r29, 0x29b
/* 81407EBC | 38 BD 02 BA */	addi r5, r29, 0x2ba
/* 81407EC0 | 38 C0 00 00 */	li r6, 0x0
/* 81407EC4 | 38 E0 00 01 */	li r7, 0x1
/* 81407EC8 | 4B F6 26 19 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407ECC | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81407ED0 | 38 9D 02 C3 */	addi r4, r29, 0x2c3
/* 81407ED4 | 38 BD 02 BA */	addi r5, r29, 0x2ba
/* 81407ED8 | 38 C0 00 00 */	li r6, 0x0
/* 81407EDC | 38 E0 00 00 */	li r7, 0x0
/* 81407EE0 | 4B F6 26 01 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407EE4 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81407EE8 | 38 9D 02 E8 */	addi r4, r29, 0x2e8
/* 81407EEC | 38 BD 02 BA */	addi r5, r29, 0x2ba
/* 81407EF0 | 38 C0 00 00 */	li r6, 0x0
/* 81407EF4 | 38 E0 00 00 */	li r7, 0x0
/* 81407EF8 | 4B F6 25 E9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407EFC | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81407F00 | 38 9D 03 0E */	addi r4, r29, 0x30e
/* 81407F04 | 38 BD 02 BA */	addi r5, r29, 0x2ba
/* 81407F08 | 38 C0 00 00 */	li r6, 0x0
/* 81407F0C | 38 E0 00 00 */	li r7, 0x0
/* 81407F10 | 4B F6 25 D1 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407F14 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81407F18 | 38 9D 03 0E */	addi r4, r29, 0x30e
/* 81407F1C | 38 BD 03 36 */	addi r5, r29, 0x336
/* 81407F20 | 38 C0 00 00 */	li r6, 0x0
/* 81407F24 | 38 E0 00 00 */	li r7, 0x0
/* 81407F28 | 4B F6 25 B9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407F2C | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81407F30 | 38 9D 03 3F */	addi r4, r29, 0x33f
/* 81407F34 | 38 BD 02 BA */	addi r5, r29, 0x2ba
/* 81407F38 | 38 C0 00 00 */	li r6, 0x0
/* 81407F3C | 38 E0 00 00 */	li r7, 0x0
/* 81407F40 | 4B F6 25 A1 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407F44 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81407F48 | 38 9D 03 5F */	addi r4, r29, 0x35f
/* 81407F4C | 38 BD 02 BA */	addi r5, r29, 0x2ba
/* 81407F50 | 38 C0 00 00 */	li r6, 0x0
/* 81407F54 | 38 E0 00 00 */	li r7, 0x0
/* 81407F58 | 4B F6 25 89 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407F5C | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81407F60 | 38 9D 02 9B */	addi r4, r29, 0x29b
/* 81407F64 | 38 BD 03 80 */	addi r5, r29, 0x380
/* 81407F68 | 38 C0 00 00 */	li r6, 0x0
/* 81407F6C | 38 E0 00 01 */	li r7, 0x1
/* 81407F70 | 4B F6 25 71 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407F74 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81407F78 | 38 9D 02 C3 */	addi r4, r29, 0x2c3
/* 81407F7C | 38 BD 03 80 */	addi r5, r29, 0x380
/* 81407F80 | 38 C0 00 00 */	li r6, 0x0
/* 81407F84 | 38 E0 00 00 */	li r7, 0x0
/* 81407F88 | 4B F6 25 59 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407F8C | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81407F90 | 38 9D 02 E8 */	addi r4, r29, 0x2e8
/* 81407F94 | 38 BD 03 80 */	addi r5, r29, 0x380
/* 81407F98 | 38 C0 00 00 */	li r6, 0x0
/* 81407F9C | 38 E0 00 00 */	li r7, 0x0
/* 81407FA0 | 4B F6 25 41 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407FA4 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81407FA8 | 38 9D 03 0E */	addi r4, r29, 0x30e
/* 81407FAC | 38 BD 03 80 */	addi r5, r29, 0x380
/* 81407FB0 | 38 C0 00 00 */	li r6, 0x0
/* 81407FB4 | 38 E0 00 00 */	li r7, 0x0
/* 81407FB8 | 4B F6 25 29 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407FBC | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81407FC0 | 38 9D 03 0E */	addi r4, r29, 0x30e
/* 81407FC4 | 38 BD 03 8A */	addi r5, r29, 0x38a
/* 81407FC8 | 38 C0 00 00 */	li r6, 0x0
/* 81407FCC | 38 E0 00 00 */	li r7, 0x0
/* 81407FD0 | 4B F6 25 11 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407FD4 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81407FD8 | 38 9D 03 3F */	addi r4, r29, 0x33f
/* 81407FDC | 38 BD 03 80 */	addi r5, r29, 0x380
/* 81407FE0 | 38 C0 00 00 */	li r6, 0x0
/* 81407FE4 | 38 E0 00 00 */	li r7, 0x0
/* 81407FE8 | 4B F6 24 F9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81407FEC | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81407FF0 | 38 9D 03 5F */	addi r4, r29, 0x35f
/* 81407FF4 | 38 BD 03 80 */	addi r5, r29, 0x380
/* 81407FF8 | 38 C0 00 00 */	li r6, 0x0
/* 81407FFC | 38 E0 00 00 */	li r7, 0x0
/* 81408000 | 4B F6 24 E1 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 81408004 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81408008 | 4B F6 26 2D */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 8140800C | 38 60 00 34 */	li r3, 0x34
/* 81408010 | 48 1F 00 8D */	bl __nw__FUl
/* 81408014 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81408018 | 7C 7E 1B 78 */	mr r30, r3
/* 8140801C | 41 82 00 98 */	beq .L_814080B4
/* 81408020 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81408024 | 7F E6 FB 78 */	mr r6, r31
/* 81408028 | 41 82 00 08 */	beq .L_81408030
/* 8140802C | 38 DF 00 54 */	addi r6, r31, 0x54
.L_81408030:
/* 81408030 | 80 BF 00 6C */	lwz r5, 0x6c(r31)
/* 81408034 | 3C 80 81 64 */	lis r4, __vt__Q23gui7Manager@ha
/* 81408038 | 38 84 27 E0 */	addi r4, r4, __vt__Q23gui7Manager@l
/* 8140803C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81408040 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 81408044 | 38 00 00 00 */	li r0, 0x0
/* 81408048 | 3B 85 02 98 */	addi r28, r5, 0x298
/* 8140804C | 90 C3 00 04 */	stw r6, 0x4(r3)
/* 81408050 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 81408054 | 41 82 00 1C */	beq .L_81408070
/* 81408058 | 81 86 00 00 */	lwz r12, 0x0(r6)
/* 8140805C | 7C C3 33 78 */	mr r3, r6
/* 81408060 | 7F C4 F3 78 */	mr r4, r30
/* 81408064 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81408068 | 7D 89 03 A6 */	mtctr r12
/* 8140806C | 4E 80 04 21 */	bctrl
.L_81408070:
/* 81408070 | 38 7E 00 08 */	addi r3, r30, 0x8
/* 81408074 | 38 80 00 08 */	li r4, 0x8
/* 81408078 | 48 10 9F E5 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 8140807C | 3C A0 81 64 */	lis r5, __vt__Q23gui11PaneManager@ha
/* 81408080 | 38 7E 00 18 */	addi r3, r30, 0x18
/* 81408084 | 38 A5 27 84 */	addi r5, r5, __vt__Q23gui11PaneManager@l
/* 81408088 | 38 80 00 08 */	li r4, 0x8
/* 8140808C | 90 BE 00 00 */	stw r5, 0x0(r30)
/* 81408090 | 93 9E 00 24 */	stw r28, 0x24(r30)
/* 81408094 | 48 10 9F C9 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 81408098 | 3C 80 81 63 */	lis r4, __vt__Q33ipl3gui11PaneManager@ha
/* 8140809C | 38 60 00 00 */	li r3, 0x0
/* 814080A0 | 38 84 59 C4 */	addi r4, r4, __vt__Q33ipl3gui11PaneManager@l
/* 814080A4 | 38 00 00 01 */	li r0, 0x1
/* 814080A8 | 90 9E 00 00 */	stw r4, 0x0(r30)
/* 814080AC | 90 7E 00 2C */	stw r3, 0x2c(r30)
/* 814080B0 | 98 1E 00 30 */	stb r0, 0x30(r30)
.L_814080B4:
/* 814080B4 | 93 DF 00 74 */	stw r30, 0x74(r31)
/* 814080B8 | 7F C3 F3 78 */	mr r3, r30
/* 814080BC | 80 9F 00 6C */	lwz r4, 0x6c(r31)
/* 814080C0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814080C4 | 38 84 00 04 */	addi r4, r4, 0x4
/* 814080C8 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 814080CC | 7D 89 03 A6 */	mtctr r12
/* 814080D0 | 4E 80 04 21 */	bctrl
/* 814080D4 | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 814080D8 | 38 80 00 00 */	li r4, 0x0
/* 814080DC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814080E0 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 814080E4 | 7D 89 03 A6 */	mtctr r12
/* 814080E8 | 4E 80 04 21 */	bctrl
/* 814080EC | 80 1F 00 68 */	lwz r0, 0x68(r31)
/* 814080F0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814080F4 | 40 82 00 6C */	bne .L_81408160
/* 814080F8 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 814080FC | 38 A0 00 01 */	li r5, 0x1
/* 81408100 | 80 9D 00 4C */	lwz r4, 0x4c(r29)
/* 81408104 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81408108 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140810C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81408110 | 7D 89 03 A6 */	mtctr r12
/* 81408114 | 4E 80 04 21 */	bctrl
/* 81408118 | 7C 64 1B 78 */	mr r4, r3
/* 8140811C | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 81408120 | 38 A0 00 01 */	li r5, 0x1
/* 81408124 | 4B F6 30 A9 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 81408128 | 80 DF 00 6C */	lwz r6, 0x6c(r31)
/* 8140812C | 38 7D 00 4C */	addi r3, r29, 0x4c
/* 81408130 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 81408134 | 38 A0 00 01 */	li r5, 0x1
/* 81408138 | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 8140813C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81408140 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81408144 | 7D 89 03 A6 */	mtctr r12
/* 81408148 | 4E 80 04 21 */	bctrl
/* 8140814C | 7C 64 1B 78 */	mr r4, r3
/* 81408150 | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 81408154 | 38 A0 00 01 */	li r5, 0x1
/* 81408158 | 4B F6 30 75 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 8140815C | 48 00 00 68 */	b .L_814081C4
.L_81408160:
/* 81408160 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81408164 | 3B DD 00 4C */	addi r30, r29, 0x4c
/* 81408168 | 80 9E 00 08 */	lwz r4, 0x8(r30)
/* 8140816C | 38 A0 00 01 */	li r5, 0x1
/* 81408170 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81408174 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81408178 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8140817C | 7D 89 03 A6 */	mtctr r12
/* 81408180 | 4E 80 04 21 */	bctrl
/* 81408184 | 7C 64 1B 78 */	mr r4, r3
/* 81408188 | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 8140818C | 38 A0 00 01 */	li r5, 0x1
/* 81408190 | 4B F6 30 3D */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 81408194 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81408198 | 38 A0 00 01 */	li r5, 0x1
/* 8140819C | 80 9E 00 0C */	lwz r4, 0xc(r30)
/* 814081A0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 814081A4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814081A8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 814081AC | 7D 89 03 A6 */	mtctr r12
/* 814081B0 | 4E 80 04 21 */	bctrl
/* 814081B4 | 7C 64 1B 78 */	mr r4, r3
/* 814081B8 | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 814081BC | 38 A0 00 01 */	li r5, 0x1
/* 814081C0 | 4B F6 30 0D */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
.L_814081C4:
/* 814081C4 | 7F E3 FB 78 */	mr r3, r31
/* 814081C8 | 38 9D 03 94 */	addi r4, r29, 0x394
/* 814081CC | 38 A0 00 FD */	li r5, 0xfd
/* 814081D0 | 48 00 0E 79 */	bl set_text__Q33ipl5scene13SettingSelectFPCcUl
/* 814081D4 | 7F E3 FB 78 */	mr r3, r31
/* 814081D8 | 38 9D 03 A5 */	addi r4, r29, 0x3a5
/* 814081DC | 38 A0 00 FD */	li r5, 0xfd
/* 814081E0 | 48 00 0E 69 */	bl set_text__Q33ipl5scene13SettingSelectFPCcUl
/* 814081E4 | 7F E3 FB 78 */	mr r3, r31
/* 814081E8 | 38 9D 03 B5 */	addi r4, r29, 0x3b5
/* 814081EC | 38 A0 01 3C */	li r5, 0x13c
/* 814081F0 | 48 00 0E 59 */	bl set_text__Q33ipl5scene13SettingSelectFPCcUl
/* 814081F4 | 7F E3 FB 78 */	mr r3, r31
/* 814081F8 | 38 9D 03 C2 */	addi r4, r29, 0x3c2
/* 814081FC | 38 A0 00 FE */	li r5, 0xfe
/* 81408200 | 48 00 0E 49 */	bl set_text__Q33ipl5scene13SettingSelectFPCcUl
/* 81408204 | 7F E3 FB 78 */	mr r3, r31
/* 81408208 | 38 9D 03 D0 */	addi r4, r29, 0x3d0
/* 8140820C | 38 A0 00 FE */	li r5, 0xfe
/* 81408210 | 48 00 0E 39 */	bl set_text__Q33ipl5scene13SettingSelectFPCcUl
/* 81408214 | 7F E3 FB 78 */	mr r3, r31
/* 81408218 | 38 9D 03 DE */	addi r4, r29, 0x3de
/* 8140821C | 38 A0 00 FF */	li r5, 0xff
/* 81408220 | 48 00 0E 29 */	bl set_text__Q33ipl5scene13SettingSelectFPCcUl
/* 81408224 | 7F E3 FB 78 */	mr r3, r31
/* 81408228 | 38 9D 03 EB */	addi r4, r29, 0x3eb
/* 8140822C | 38 A0 00 FF */	li r5, 0xff
/* 81408230 | 48 00 0E 19 */	bl set_text__Q33ipl5scene13SettingSelectFPCcUl
/* 81408234 | 7F E3 FB 78 */	mr r3, r31
/* 81408238 | 38 9D 03 F8 */	addi r4, r29, 0x3f8
/* 8140823C | 38 A0 01 00 */	li r5, 0x100
/* 81408240 | 48 00 0E 09 */	bl set_text__Q33ipl5scene13SettingSelectFPCcUl
/* 81408244 | 7F E3 FB 78 */	mr r3, r31
/* 81408248 | 38 9D 04 01 */	addi r4, r29, 0x401
/* 8140824C | 38 A0 01 00 */	li r5, 0x100
/* 81408250 | 48 00 0D F9 */	bl set_text__Q33ipl5scene13SettingSelectFPCcUl
/* 81408254 | 7F E3 FB 78 */	mr r3, r31
/* 81408258 | 38 9D 04 0A */	addi r4, r29, 0x40a
/* 8140825C | 38 A0 01 01 */	li r5, 0x101
/* 81408260 | 48 00 0D E9 */	bl set_text__Q33ipl5scene13SettingSelectFPCcUl
/* 81408264 | 7F E3 FB 78 */	mr r3, r31
/* 81408268 | 38 9D 04 14 */	addi r4, r29, 0x414
/* 8140826C | 38 A0 01 01 */	li r5, 0x101
/* 81408270 | 48 00 0D D9 */	bl set_text__Q33ipl5scene13SettingSelectFPCcUl
/* 81408274 | 7F E3 FB 78 */	mr r3, r31
/* 81408278 | 48 00 0D 9D */	bl reset_gui__Q33ipl5scene13SettingSelectFv
/* 8140827C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81408280 | 48 1F 12 91 */	bl _restgpr_28
/* 81408284 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81408288 | 7C 08 03 A6 */	mtlr r0
/* 8140828C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81408290 | 4E 80 00 20 */	blr
.endfn create__Q33ipl5scene13SettingSelectFv

# .text:0x798 | 0x81408294 | size: 0xDC
# ipl::scene::SettingSelect::calc()
.fn calc__Q33ipl5scene13SettingSelectFv, global
/* 81408294 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81408298 | 7C 08 02 A6 */	mflr r0
/* 8140829C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814082A0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814082A4 | 7C 7F 1B 78 */	mr r31, r3
/* 814082A8 | 80 03 00 60 */	lwz r0, 0x60(r3)
/* 814082AC | 28 00 00 10 */	cmplwi r0, 0x10
/* 814082B0 | 41 81 00 90 */	bgt .L_81408340
/* 814082B4 | 3C 80 81 66 */	lis r4, jumptable_816585D8@ha
/* 814082B8 | 54 00 10 3A */	slwi r0, r0, 2
/* 814082BC | 38 84 85 D8 */	addi r4, r4, jumptable_816585D8@l
/* 814082C0 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 814082C4 | 7C 89 03 A6 */	mtctr r4
/* 814082C8 | 4E 80 04 20 */	bctr
.L_814082CC:
/* 814082CC | 48 00 00 A5 */	bl stt_wait_button_fadein__Q33ipl5scene13SettingSelectFv
/* 814082D0 | 48 00 00 70 */	b .L_81408340
.L_814082D4:
/* 814082D4 | 48 00 01 D1 */	bl stt_1st_fadein__Q33ipl5scene13SettingSelectFv
/* 814082D8 | 48 00 00 68 */	b .L_81408340
.L_814082DC:
/* 814082DC | 48 00 02 39 */	bl stt_1st_fadeout__Q33ipl5scene13SettingSelectFv
/* 814082E0 | 48 00 00 60 */	b .L_81408340
.L_814082E4:
/* 814082E4 | 48 00 03 C5 */	bl stt_2nd_fadein__Q33ipl5scene13SettingSelectFv
/* 814082E8 | 48 00 00 58 */	b .L_81408340
.L_814082EC:
/* 814082EC | 48 00 04 01 */	bl stt_2nd_fadeout__Q33ipl5scene13SettingSelectFv
/* 814082F0 | 48 00 00 50 */	b .L_81408340
.L_814082F4:
/* 814082F4 | 48 00 05 79 */	bl stt_3rd_fadein__Q33ipl5scene13SettingSelectFv
/* 814082F8 | 48 00 00 48 */	b .L_81408340
.L_814082FC:
/* 814082FC | 48 00 05 B5 */	bl stt_3rd_fadeout__Q33ipl5scene13SettingSelectFv
/* 81408300 | 48 00 00 40 */	b .L_81408340
.L_81408304:
/* 81408304 | 48 00 05 F9 */	bl stt_normal__Q33ipl5scene13SettingSelectFv
/* 81408308 | 48 00 00 38 */	b .L_81408340
.L_8140830C:
/* 8140830C | 48 00 06 69 */	bl stt_wait_2nd_back__Q33ipl5scene13SettingSelectFv
/* 81408310 | 48 00 00 30 */	b .L_81408340
.L_81408314:
/* 81408314 | 48 00 06 A5 */	bl stt_wait_3rd_back__Q33ipl5scene13SettingSelectFv
/* 81408318 | 48 00 00 28 */	b .L_81408340
.L_8140831C:
/* 8140831C | 48 00 06 E1 */	bl stt_wait_button_decided__Q33ipl5scene13SettingSelectFv
/* 81408320 | 48 00 00 20 */	b .L_81408340
.L_81408324:
/* 81408324 | 48 00 0A 79 */	bl stt_wait_blackout__Q33ipl5scene13SettingSelectFv
/* 81408328 | 48 00 00 18 */	b .L_81408340
.L_8140832C:
/* 8140832C | 48 00 0A D9 */	bl stt_wait_child__Q33ipl5scene13SettingSelectFv
/* 81408330 | 48 00 00 10 */	b .L_81408340
.L_81408334:
/* 81408334 | 48 00 0B E5 */	bl stt_wait_child_anm__Q33ipl5scene13SettingSelectFv
/* 81408338 | 48 00 00 08 */	b .L_81408340
.L_8140833C:
/* 8140833C | 48 00 15 29 */	bl iplSettingSelect_81409864__Q33ipl5scene13SettingSelectFv
.L_81408340:
/* 81408340 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81408344 | 4B F6 23 C1 */	bl calc__Q33ipl6layout6ObjectFv
/* 81408348 | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 8140834C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81408350 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81408354 | 7D 89 03 A6 */	mtctr r12
/* 81408358 | 4E 80 04 21 */	bctrl
/* 8140835C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81408360 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81408364 | 7C 08 03 A6 */	mtlr r0
/* 81408368 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140836C | 4E 80 00 20 */	blr
.endfn calc__Q33ipl5scene13SettingSelectFv

# .text:0x874 | 0x81408370 | size: 0x134
# ipl::scene::SettingSelect::stt_wait_button_fadein()
.fn stt_wait_button_fadein__Q33ipl5scene13SettingSelectFv, global
/* 81408370 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81408374 | 7C 08 02 A6 */	mflr r0
/* 81408378 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8140837C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81408380 | 48 1F 11 49 */	bl _savegpr_29
/* 81408384 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 81408388 | 7C 7F 1B 78 */	mr r31, r3
/* 8140838C | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 81408390 | 38 80 00 16 */	li r4, 0x16
/* 81408394 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 81408398 | 48 00 2D A1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8140839C | 7C 7E 1B 78 */	mr r30, r3
/* 814083A0 | 80 7D 00 C4 */	lwz r3, 0xc4(r29)
/* 814083A4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814083A8 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 814083AC | 7D 89 03 A6 */	mtctr r12
/* 814083B0 | 4E 80 04 21 */	bctrl
/* 814083B4 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 814083B8 | 40 82 00 D4 */	bne .L_8140848C
/* 814083BC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814083C0 | 41 82 00 CC */	beq .L_8140848C
/* 814083C4 | 80 1E 00 54 */	lwz r0, 0x54(r30)
/* 814083C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814083CC | 41 82 00 C0 */	beq .L_8140848C
/* 814083D0 | 80 1F 00 68 */	lwz r0, 0x68(r31)
/* 814083D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814083D8 | 40 82 00 50 */	bne .L_81408428
/* 814083DC | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 814083E0 | 38 80 00 00 */	li r4, 0x0
/* 814083E4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 814083E8 | 48 10 9F 31 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 814083EC | 7C 7D 1B 78 */	mr r29, r3
/* 814083F0 | 4B F5 A4 81 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 814083F4 | 3B C0 00 01 */	li r30, 0x1
/* 814083F8 | 38 80 00 07 */	li r4, 0x7
/* 814083FC | 93 DD 00 14 */	stw r30, 0x14(r29)
/* 81408400 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81408404 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81408408 | 48 10 9F 11 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8140840C | 7C 7D 1B 78 */	mr r29, r3
/* 81408410 | 4B F5 A4 61 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81408414 | 93 DD 00 14 */	stw r30, 0x14(r29)
/* 81408418 | 80 1F 00 60 */	lwz r0, 0x60(r31)
/* 8140841C | 90 1F 00 64 */	stw r0, 0x64(r31)
/* 81408420 | 93 DF 00 60 */	stw r30, 0x60(r31)
/* 81408424 | 48 00 00 68 */	b .L_8140848C
.L_81408428:
/* 81408428 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 8140842C | 38 80 00 03 */	li r4, 0x3
/* 81408430 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81408434 | 48 10 9E E5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81408438 | C0 23 00 04 */	lfs f1, 0x4(r3)
/* 8140843C | 4B F6 18 25 */	bl initAnmFrame__Q33ipl6layout8AnimatorFf
/* 81408440 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81408444 | 38 80 00 0E */	li r4, 0xe
/* 81408448 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8140844C | 48 10 9E CD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81408450 | 7C 7D 1B 78 */	mr r29, r3
/* 81408454 | 4B F5 A4 1D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81408458 | 3B C0 00 01 */	li r30, 0x1
/* 8140845C | 38 80 00 15 */	li r4, 0x15
/* 81408460 | 93 DD 00 14 */	stw r30, 0x14(r29)
/* 81408464 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81408468 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8140846C | 48 10 9E AD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81408470 | 7C 7D 1B 78 */	mr r29, r3
/* 81408474 | 4B F5 A3 FD */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81408478 | 93 DD 00 14 */	stw r30, 0x14(r29)
/* 8140847C | 38 00 00 04 */	li r0, 0x4
/* 81408480 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 81408484 | 90 7F 00 64 */	stw r3, 0x64(r31)
/* 81408488 | 90 1F 00 60 */	stw r0, 0x60(r31)
.L_8140848C:
/* 8140848C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81408490 | 48 1F 10 85 */	bl _restgpr_29
/* 81408494 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81408498 | 7C 08 03 A6 */	mtlr r0
/* 8140849C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814084A0 | 4E 80 00 20 */	blr
.endfn stt_wait_button_fadein__Q33ipl5scene13SettingSelectFv

# .text:0x9A8 | 0x814084A4 | size: 0x70
# ipl::scene::SettingSelect::stt_1st_fadein()
.fn stt_1st_fadein__Q33ipl5scene13SettingSelectFv, global
/* 814084A4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814084A8 | 7C 08 02 A6 */	mflr r0
/* 814084AC | 38 80 00 00 */	li r4, 0x0
/* 814084B0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814084B4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814084B8 | 7C 7F 1B 78 */	mr r31, r3
/* 814084BC | 80 A3 00 6C */	lwz r5, 0x6c(r3)
/* 814084C0 | 38 65 02 8C */	addi r3, r5, 0x28c
/* 814084C4 | 48 10 9E 55 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 814084C8 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 814084CC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814084D0 | 41 82 00 30 */	beq .L_81408500
/* 814084D4 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 814084D8 | 38 80 00 07 */	li r4, 0x7
/* 814084DC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 814084E0 | 48 10 9E 39 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 814084E4 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 814084E8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814084EC | 41 82 00 14 */	beq .L_81408500
/* 814084F0 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 814084F4 | 38 00 00 02 */	li r0, 0x2
/* 814084F8 | 90 7F 00 64 */	stw r3, 0x64(r31)
/* 814084FC | 90 1F 00 60 */	stw r0, 0x60(r31)
.L_81408500:
/* 81408500 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81408504 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81408508 | 7C 08 03 A6 */	mtlr r0
/* 8140850C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81408510 | 4E 80 00 20 */	blr
.endfn stt_1st_fadein__Q33ipl5scene13SettingSelectFv

# .text:0xA18 | 0x81408514 | size: 0x194
# ipl::scene::SettingSelect::stt_1st_fadeout()
.fn stt_1st_fadeout__Q33ipl5scene13SettingSelectFv, global
/* 81408514 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81408518 | 7C 08 02 A6 */	mflr r0
/* 8140851C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81408520 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81408524 | 48 1F 0F A5 */	bl _savegpr_29
/* 81408528 | 7C 7F 1B 78 */	mr r31, r3
/* 8140852C | 48 00 11 C9 */	bl is_stopped_all_anm__Q33ipl5scene13SettingSelectCFv
/* 81408530 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81408534 | 41 82 01 5C */	beq .L_81408690
/* 81408538 | 80 1F 00 90 */	lwz r0, 0x90(r31)
/* 8140853C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81408540 | 41 82 00 34 */	beq .L_81408574
/* 81408544 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81408548 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8140854C | 80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 81408550 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81408554 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81408558 | 7D 89 03 A6 */	mtctr r12
/* 8140855C | 4E 80 04 21 */	bctrl
/* 81408560 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 81408564 | 38 00 00 0D */	li r0, 0xd
/* 81408568 | 90 7F 00 64 */	stw r3, 0x64(r31)
/* 8140856C | 90 1F 00 60 */	stw r0, 0x60(r31)
/* 81408570 | 48 00 01 20 */	b .L_81408690
.L_81408574:
/* 81408574 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81408578 | 3F C0 81 66 */	lis r30, lbl_81658204@ha
/* 8140857C | 80 9E 82 04 */	lwz r4, lbl_81658204@l(r30)
/* 81408580 | 38 A0 00 01 */	li r5, 0x1
/* 81408584 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81408588 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140858C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81408590 | 7D 89 03 A6 */	mtctr r12
/* 81408594 | 4E 80 04 21 */	bctrl
/* 81408598 | 7C 64 1B 78 */	mr r4, r3
/* 8140859C | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 814085A0 | 38 A0 00 00 */	li r5, 0x0
/* 814085A4 | 4B F6 2C 29 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 814085A8 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 814085AC | 3B DE 82 04 */	addi r30, r30, lbl_81658204@l
/* 814085B0 | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 814085B4 | 38 A0 00 01 */	li r5, 0x1
/* 814085B8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 814085BC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814085C0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 814085C4 | 7D 89 03 A6 */	mtctr r12
/* 814085C8 | 4E 80 04 21 */	bctrl
/* 814085CC | 7C 64 1B 78 */	mr r4, r3
/* 814085D0 | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 814085D4 | 38 A0 00 00 */	li r5, 0x0
/* 814085D8 | 4B F6 2B F5 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 814085DC | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 814085E0 | 38 A0 00 01 */	li r5, 0x1
/* 814085E4 | 80 9E 00 08 */	lwz r4, 0x8(r30)
/* 814085E8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 814085EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814085F0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 814085F4 | 7D 89 03 A6 */	mtctr r12
/* 814085F8 | 4E 80 04 21 */	bctrl
/* 814085FC | 7C 64 1B 78 */	mr r4, r3
/* 81408600 | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 81408604 | 38 A0 00 01 */	li r5, 0x1
/* 81408608 | 4B F6 2B C5 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 8140860C | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81408610 | 38 A0 00 01 */	li r5, 0x1
/* 81408614 | 80 9E 00 0C */	lwz r4, 0xc(r30)
/* 81408618 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8140861C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81408620 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81408624 | 7D 89 03 A6 */	mtctr r12
/* 81408628 | 4E 80 04 21 */	bctrl
/* 8140862C | 7C 64 1B 78 */	mr r4, r3
/* 81408630 | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 81408634 | 38 A0 00 01 */	li r5, 0x1
/* 81408638 | 4B F6 2B 95 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 8140863C | 7F E3 FB 78 */	mr r3, r31
/* 81408640 | 48 00 09 D5 */	bl reset_gui__Q33ipl5scene13SettingSelectFv
/* 81408644 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81408648 | 38 80 00 0E */	li r4, 0xe
/* 8140864C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81408650 | 48 10 9C C9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81408654 | 7C 7D 1B 78 */	mr r29, r3
/* 81408658 | 4B F5 A2 19 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8140865C | 3B C0 00 01 */	li r30, 0x1
/* 81408660 | 38 80 00 15 */	li r4, 0x15
/* 81408664 | 93 DD 00 14 */	stw r30, 0x14(r29)
/* 81408668 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 8140866C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81408670 | 48 10 9C A9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81408674 | 7C 7D 1B 78 */	mr r29, r3
/* 81408678 | 4B F5 A1 F9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8140867C | 93 DD 00 14 */	stw r30, 0x14(r29)
/* 81408680 | 38 00 00 04 */	li r0, 0x4
/* 81408684 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 81408688 | 90 7F 00 64 */	stw r3, 0x64(r31)
/* 8140868C | 90 1F 00 60 */	stw r0, 0x60(r31)
.L_81408690:
/* 81408690 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81408694 | 48 1F 0E 81 */	bl _restgpr_29
/* 81408698 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8140869C | 7C 08 03 A6 */	mtlr r0
/* 814086A0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814086A4 | 4E 80 00 20 */	blr
.endfn stt_1st_fadeout__Q33ipl5scene13SettingSelectFv

# .text:0xBAC | 0x814086A8 | size: 0x44
# ipl::scene::SettingSelect::stt_2nd_fadein()
.fn stt_2nd_fadein__Q33ipl5scene13SettingSelectFv, global
/* 814086A8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814086AC | 7C 08 02 A6 */	mflr r0
/* 814086B0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814086B4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814086B8 | 7C 7F 1B 78 */	mr r31, r3
/* 814086BC | 48 00 10 39 */	bl is_stopped_all_anm__Q33ipl5scene13SettingSelectCFv
/* 814086C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814086C4 | 41 82 00 14 */	beq .L_814086D8
/* 814086C8 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 814086CC | 38 00 00 05 */	li r0, 0x5
/* 814086D0 | 90 7F 00 64 */	stw r3, 0x64(r31)
/* 814086D4 | 90 1F 00 60 */	stw r0, 0x60(r31)
.L_814086D8:
/* 814086D8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814086DC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814086E0 | 7C 08 03 A6 */	mtlr r0
/* 814086E4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814086E8 | 4E 80 00 20 */	blr
.endfn stt_2nd_fadein__Q33ipl5scene13SettingSelectFv

# .text:0xBF0 | 0x814086EC | size: 0x180
# ipl::scene::SettingSelect::stt_2nd_fadeout()
.fn stt_2nd_fadeout__Q33ipl5scene13SettingSelectFv, global
/* 814086EC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814086F0 | 7C 08 02 A6 */	mflr r0
/* 814086F4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814086F8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814086FC | 48 1F 0D CD */	bl _savegpr_29
/* 81408700 | 7C 7D 1B 78 */	mr r29, r3
/* 81408704 | 48 00 0F F1 */	bl is_stopped_all_anm__Q33ipl5scene13SettingSelectCFv
/* 81408708 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140870C | 41 82 01 48 */	beq .L_81408854
/* 81408710 | 80 1D 00 90 */	lwz r0, 0x90(r29)
/* 81408714 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81408718 | 41 82 00 20 */	beq .L_81408738
/* 8140871C | 80 9D 00 60 */	lwz r4, 0x60(r29)
/* 81408720 | 38 00 00 0E */	li r0, 0xe
/* 81408724 | 7F A3 EB 78 */	mr r3, r29
/* 81408728 | 90 9D 00 64 */	stw r4, 0x64(r29)
/* 8140872C | 90 1D 00 60 */	stw r0, 0x60(r29)
/* 81408730 | 48 00 08 E5 */	bl reset_gui__Q33ipl5scene13SettingSelectFv
/* 81408734 | 48 00 01 20 */	b .L_81408854
.L_81408738:
/* 81408738 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 8140873C | 3F E0 81 66 */	lis r31, lbl_81658204@ha
/* 81408740 | 3B FF 82 04 */	addi r31, r31, lbl_81658204@l
/* 81408744 | 38 A0 00 01 */	li r5, 0x1
/* 81408748 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8140874C | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 81408750 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81408754 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81408758 | 7D 89 03 A6 */	mtctr r12
/* 8140875C | 4E 80 04 21 */	bctrl
/* 81408760 | 7C 64 1B 78 */	mr r4, r3
/* 81408764 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 81408768 | 38 A0 00 00 */	li r5, 0x0
/* 8140876C | 4B F6 2A 61 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 81408770 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 81408774 | 38 A0 00 01 */	li r5, 0x1
/* 81408778 | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 8140877C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81408780 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81408784 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81408788 | 7D 89 03 A6 */	mtctr r12
/* 8140878C | 4E 80 04 21 */	bctrl
/* 81408790 | 7C 64 1B 78 */	mr r4, r3
/* 81408794 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 81408798 | 38 A0 00 00 */	li r5, 0x0
/* 8140879C | 4B F6 2A 31 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 814087A0 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 814087A4 | 38 A0 00 01 */	li r5, 0x1
/* 814087A8 | 80 9F 00 10 */	lwz r4, 0x10(r31)
/* 814087AC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 814087B0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814087B4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 814087B8 | 7D 89 03 A6 */	mtctr r12
/* 814087BC | 4E 80 04 21 */	bctrl
/* 814087C0 | 7C 64 1B 78 */	mr r4, r3
/* 814087C4 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 814087C8 | 38 A0 00 01 */	li r5, 0x1
/* 814087CC | 4B F6 2A 01 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 814087D0 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 814087D4 | 38 A0 00 01 */	li r5, 0x1
/* 814087D8 | 80 9F 00 14 */	lwz r4, 0x14(r31)
/* 814087DC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 814087E0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814087E4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 814087E8 | 7D 89 03 A6 */	mtctr r12
/* 814087EC | 4E 80 04 21 */	bctrl
/* 814087F0 | 7C 64 1B 78 */	mr r4, r3
/* 814087F4 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 814087F8 | 38 A0 00 01 */	li r5, 0x1
/* 814087FC | 4B F6 29 D1 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 81408800 | 7F A3 EB 78 */	mr r3, r29
/* 81408804 | 48 00 08 11 */	bl reset_gui__Q33ipl5scene13SettingSelectFv
/* 81408808 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 8140880C | 38 80 00 1C */	li r4, 0x1c
/* 81408810 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81408814 | 48 10 9B 05 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81408818 | 7C 7E 1B 78 */	mr r30, r3
/* 8140881C | 4B F5 A0 55 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81408820 | 3B E0 00 01 */	li r31, 0x1
/* 81408824 | 38 80 00 23 */	li r4, 0x23
/* 81408828 | 93 FE 00 14 */	stw r31, 0x14(r30)
/* 8140882C | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 81408830 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81408834 | 48 10 9A E5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81408838 | 7C 7E 1B 78 */	mr r30, r3
/* 8140883C | 4B F5 A0 35 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81408840 | 93 FE 00 14 */	stw r31, 0x14(r30)
/* 81408844 | 38 00 00 07 */	li r0, 0x7
/* 81408848 | 80 7D 00 60 */	lwz r3, 0x60(r29)
/* 8140884C | 90 7D 00 64 */	stw r3, 0x64(r29)
/* 81408850 | 90 1D 00 60 */	stw r0, 0x60(r29)
.L_81408854:
/* 81408854 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81408858 | 48 1F 0C BD */	bl _restgpr_29
/* 8140885C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81408860 | 7C 08 03 A6 */	mtlr r0
/* 81408864 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81408868 | 4E 80 00 20 */	blr
.endfn stt_2nd_fadeout__Q33ipl5scene13SettingSelectFv

# .text:0xD70 | 0x8140886C | size: 0x44
# ipl::scene::SettingSelect::stt_3rd_fadein()
.fn stt_3rd_fadein__Q33ipl5scene13SettingSelectFv, global
/* 8140886C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81408870 | 7C 08 02 A6 */	mflr r0
/* 81408874 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81408878 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8140887C | 7C 7F 1B 78 */	mr r31, r3
/* 81408880 | 48 00 0E 75 */	bl is_stopped_all_anm__Q33ipl5scene13SettingSelectCFv
/* 81408884 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81408888 | 41 82 00 14 */	beq .L_8140889C
/* 8140888C | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 81408890 | 38 00 00 08 */	li r0, 0x8
/* 81408894 | 90 7F 00 64 */	stw r3, 0x64(r31)
/* 81408898 | 90 1F 00 60 */	stw r0, 0x60(r31)
.L_8140889C:
/* 8140889C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814088A0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814088A4 | 7C 08 03 A6 */	mtlr r0
/* 814088A8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814088AC | 4E 80 00 20 */	blr
.endfn stt_3rd_fadein__Q33ipl5scene13SettingSelectFv

# .text:0xDB4 | 0x814088B0 | size: 0x4C
# ipl::scene::SettingSelect::stt_3rd_fadeout()
.fn stt_3rd_fadeout__Q33ipl5scene13SettingSelectFv, global
/* 814088B0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814088B4 | 7C 08 02 A6 */	mflr r0
/* 814088B8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814088BC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814088C0 | 7C 7F 1B 78 */	mr r31, r3
/* 814088C4 | 48 00 0E 31 */	bl is_stopped_all_anm__Q33ipl5scene13SettingSelectCFv
/* 814088C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814088CC | 41 82 00 1C */	beq .L_814088E8
/* 814088D0 | 80 9F 00 60 */	lwz r4, 0x60(r31)
/* 814088D4 | 38 00 00 0E */	li r0, 0xe
/* 814088D8 | 7F E3 FB 78 */	mr r3, r31
/* 814088DC | 90 9F 00 64 */	stw r4, 0x64(r31)
/* 814088E0 | 90 1F 00 60 */	stw r0, 0x60(r31)
/* 814088E4 | 48 00 07 31 */	bl reset_gui__Q33ipl5scene13SettingSelectFv
.L_814088E8:
/* 814088E8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814088EC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814088F0 | 7C 08 03 A6 */	mtlr r0
/* 814088F4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814088F8 | 4E 80 00 20 */	blr
.endfn stt_3rd_fadeout__Q33ipl5scene13SettingSelectFv

# .text:0xE00 | 0x814088FC | size: 0x78
# ipl::scene::SettingSelect::stt_normal()
.fn stt_normal__Q33ipl5scene13SettingSelectFv, global
/* 814088FC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81408900 | 7C 08 02 A6 */	mflr r0
/* 81408904 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81408908 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8140890C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81408910 | 7C 7E 1B 78 */	mr r30, r3
/* 81408914 | 83 E3 00 60 */	lwz r31, 0x60(r3)
/* 81408918 | 80 63 00 74 */	lwz r3, 0x74(r3)
/* 8140891C | 4B F6 26 71 */	bl update__Q33ipl3gui11PaneManagerFv
/* 81408920 | 80 1E 00 60 */	lwz r0, 0x60(r30)
/* 81408924 | 7C 1F 00 00 */	cmpw r31, r0
/* 81408928 | 40 82 00 34 */	bne .L_8140895C
/* 8140892C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81408930 | 38 80 00 16 */	li r4, 0x16
/* 81408934 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81408938 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 8140893C | 48 00 27 FD */	bl getScene__Q33ipl5scene7ManagerFi
/* 81408940 | 4B FF EE 29 */	bl update__Q33ipl5scene13SettingButtonFv
/* 81408944 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81408948 | 41 82 00 14 */	beq .L_8140895C
/* 8140894C | 80 7E 00 60 */	lwz r3, 0x60(r30)
/* 81408950 | 38 00 00 0C */	li r0, 0xc
/* 81408954 | 90 7E 00 64 */	stw r3, 0x64(r30)
/* 81408958 | 90 1E 00 60 */	stw r0, 0x60(r30)
.L_8140895C:
/* 8140895C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81408960 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81408964 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81408968 | 7C 08 03 A6 */	mtlr r0
/* 8140896C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81408970 | 4E 80 00 20 */	blr
.endfn stt_normal__Q33ipl5scene13SettingSelectFv

# .text:0xE78 | 0x81408974 | size: 0x44
# ipl::scene::SettingSelect::stt_wait_2nd_back()
.fn stt_wait_2nd_back__Q33ipl5scene13SettingSelectFv, global
/* 81408974 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81408978 | 7C 08 02 A6 */	mflr r0
/* 8140897C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81408980 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81408984 | 7C 7F 1B 78 */	mr r31, r3
/* 81408988 | 48 00 0D 6D */	bl is_stopped_all_anm__Q33ipl5scene13SettingSelectCFv
/* 8140898C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81408990 | 41 82 00 14 */	beq .L_814089A4
/* 81408994 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 81408998 | 38 00 00 02 */	li r0, 0x2
/* 8140899C | 90 7F 00 64 */	stw r3, 0x64(r31)
/* 814089A0 | 90 1F 00 60 */	stw r0, 0x60(r31)
.L_814089A4:
/* 814089A4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814089A8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814089AC | 7C 08 03 A6 */	mtlr r0
/* 814089B0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814089B4 | 4E 80 00 20 */	blr
.endfn stt_wait_2nd_back__Q33ipl5scene13SettingSelectFv

# .text:0xEBC | 0x814089B8 | size: 0x44
# ipl::scene::SettingSelect::stt_wait_3rd_back()
.fn stt_wait_3rd_back__Q33ipl5scene13SettingSelectFv, global
/* 814089B8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814089BC | 7C 08 02 A6 */	mflr r0
/* 814089C0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814089C4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814089C8 | 7C 7F 1B 78 */	mr r31, r3
/* 814089CC | 48 00 0D 29 */	bl is_stopped_all_anm__Q33ipl5scene13SettingSelectCFv
/* 814089D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814089D4 | 41 82 00 14 */	beq .L_814089E8
/* 814089D8 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 814089DC | 38 00 00 05 */	li r0, 0x5
/* 814089E0 | 90 7F 00 64 */	stw r3, 0x64(r31)
/* 814089E4 | 90 1F 00 60 */	stw r0, 0x60(r31)
.L_814089E8:
/* 814089E8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814089EC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814089F0 | 7C 08 03 A6 */	mtlr r0
/* 814089F4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814089F8 | 4E 80 00 20 */	blr
.endfn stt_wait_3rd_back__Q33ipl5scene13SettingSelectFv

# .text:0xF00 | 0x814089FC | size: 0x3A0
# ipl::scene::SettingSelect::stt_wait_button_decided()
.fn stt_wait_button_decided__Q33ipl5scene13SettingSelectFv, global
/* 814089FC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81408A00 | 7C 08 02 A6 */	mflr r0
/* 81408A04 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81408A08 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81408A0C | 48 1F 0A B9 */	bl _savegpr_28
/* 81408A10 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 81408A14 | 7C 7F 1B 78 */	mr r31, r3
/* 81408A18 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 81408A1C | 38 80 00 16 */	li r4, 0x16
/* 81408A20 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 81408A24 | 48 00 27 15 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81408A28 | 4B FF F0 25 */	bl isPlaying__Q33ipl5scene13SettingButtonCFv
/* 81408A2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81408A30 | 40 82 03 54 */	bne .L_81408D84
/* 81408A34 | 80 1F 00 64 */	lwz r0, 0x64(r31)
/* 81408A38 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 81408A3C | 41 82 00 68 */	beq .L_81408AA4
/* 81408A40 | 40 80 00 10 */	bge .L_81408A50
/* 81408A44 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81408A48 | 41 82 00 14 */	beq .L_81408A5C
/* 81408A4C | 48 00 03 38 */	b .L_81408D84
.L_81408A50:
/* 81408A50 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 81408A54 | 41 82 01 C8 */	beq .L_81408C1C
/* 81408A58 | 48 00 03 2C */	b .L_81408D84
.L_81408A5C:
/* 81408A5C | 80 7D 00 84 */	lwz r3, 0x84(r29)
/* 81408A60 | 4B F2 F2 05 */	bl refreshAsync__Q33ipl7channel7ManagerFv
/* 81408A64 | 80 7D 00 C4 */	lwz r3, 0xc4(r29)
/* 81408A68 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81408A6C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81408A70 | 7D 89 03 A6 */	mtctr r12
/* 81408A74 | 4E 80 04 21 */	bctrl
/* 81408A78 | 38 00 00 04 */	li r0, 0x4
/* 81408A7C | 7F E3 FB 78 */	mr r3, r31
/* 81408A80 | 90 1F 00 90 */	stw r0, 0x90(r31)
/* 81408A84 | 38 80 00 04 */	li r4, 0x4
/* 81408A88 | 38 A0 00 00 */	li r5, 0x0
/* 81408A8C | 48 00 15 09 */	bl fn_81409F94
/* 81408A90 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 81408A94 | 38 00 00 0D */	li r0, 0xd
/* 81408A98 | 90 7F 00 64 */	stw r3, 0x64(r31)
/* 81408A9C | 90 1F 00 60 */	stw r0, 0x60(r31)
/* 81408AA0 | 48 00 02 E4 */	b .L_81408D84
.L_81408AA4:
/* 81408AA4 | 88 1D 02 C8 */	lbz r0, 0x2c8(r29)
/* 81408AA8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81408AAC | 41 82 00 20 */	beq .L_81408ACC
/* 81408AB0 | 80 7D 00 84 */	lwz r3, 0x84(r29)
/* 81408AB4 | 4B F2 F1 B1 */	bl refreshAsync__Q33ipl7channel7ManagerFv
/* 81408AB8 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 81408ABC | 38 00 00 10 */	li r0, 0x10
/* 81408AC0 | 90 7F 00 64 */	stw r3, 0x64(r31)
/* 81408AC4 | 90 1F 00 60 */	stw r0, 0x60(r31)
/* 81408AC8 | 48 00 02 BC */	b .L_81408D84
.L_81408ACC:
/* 81408ACC | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81408AD0 | 38 80 00 06 */	li r4, 0x6
/* 81408AD4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81408AD8 | 48 10 98 41 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81408ADC | 7C 7E 1B 78 */	mr r30, r3
/* 81408AE0 | 4B F5 9D 91 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81408AE4 | 3B A0 00 01 */	li r29, 0x1
/* 81408AE8 | 38 80 00 07 */	li r4, 0x7
/* 81408AEC | 93 BE 00 14 */	stw r29, 0x14(r30)
/* 81408AF0 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81408AF4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81408AF8 | 48 10 98 21 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81408AFC | 7C 7E 1B 78 */	mr r30, r3
/* 81408B00 | 4B F5 9D 71 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81408B04 | 93 BE 00 14 */	stw r29, 0x14(r30)
/* 81408B08 | 38 80 00 13 */	li r4, 0x13
/* 81408B0C | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81408B10 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81408B14 | 48 10 98 05 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81408B18 | 7C 7E 1B 78 */	mr r30, r3
/* 81408B1C | 4B F5 9D 55 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81408B20 | 93 BE 00 14 */	stw r29, 0x14(r30)
/* 81408B24 | 38 80 00 1A */	li r4, 0x1a
/* 81408B28 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81408B2C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81408B30 | 48 10 97 E9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81408B34 | 7C 7E 1B 78 */	mr r30, r3
/* 81408B38 | 4B F5 9D 39 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81408B3C | 93 BE 00 14 */	stw r29, 0x14(r30)
/* 81408B40 | 3F A0 81 66 */	lis r29, lbl_81658204@ha
/* 81408B44 | 3B DD 82 04 */	addi r30, r29, lbl_81658204@l
/* 81408B48 | 38 A0 00 01 */	li r5, 0x1
/* 81408B4C | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81408B50 | 80 9E 00 08 */	lwz r4, 0x8(r30)
/* 81408B54 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81408B58 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81408B5C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81408B60 | 7D 89 03 A6 */	mtctr r12
/* 81408B64 | 4E 80 04 21 */	bctrl
/* 81408B68 | 7C 64 1B 78 */	mr r4, r3
/* 81408B6C | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 81408B70 | 38 A0 00 00 */	li r5, 0x0
/* 81408B74 | 4B F6 26 59 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 81408B78 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81408B7C | 38 A0 00 01 */	li r5, 0x1
/* 81408B80 | 80 9E 00 0C */	lwz r4, 0xc(r30)
/* 81408B84 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81408B88 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81408B8C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81408B90 | 7D 89 03 A6 */	mtctr r12
/* 81408B94 | 4E 80 04 21 */	bctrl
/* 81408B98 | 7C 64 1B 78 */	mr r4, r3
/* 81408B9C | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 81408BA0 | 38 A0 00 00 */	li r5, 0x0
/* 81408BA4 | 4B F6 26 29 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 81408BA8 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81408BAC | 38 A0 00 01 */	li r5, 0x1
/* 81408BB0 | 80 9D 82 04 */	lwz r4, lbl_81658204@l(r29)
/* 81408BB4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81408BB8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81408BBC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81408BC0 | 7D 89 03 A6 */	mtctr r12
/* 81408BC4 | 4E 80 04 21 */	bctrl
/* 81408BC8 | 7C 64 1B 78 */	mr r4, r3
/* 81408BCC | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 81408BD0 | 38 A0 00 01 */	li r5, 0x1
/* 81408BD4 | 4B F6 25 F9 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 81408BD8 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81408BDC | 38 A0 00 01 */	li r5, 0x1
/* 81408BE0 | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 81408BE4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81408BE8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81408BEC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81408BF0 | 7D 89 03 A6 */	mtctr r12
/* 81408BF4 | 4E 80 04 21 */	bctrl
/* 81408BF8 | 7C 64 1B 78 */	mr r4, r3
/* 81408BFC | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 81408C00 | 38 A0 00 01 */	li r5, 0x1
/* 81408C04 | 4B F6 25 C9 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 81408C08 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 81408C0C | 38 00 00 0A */	li r0, 0xa
/* 81408C10 | 90 7F 00 64 */	stw r3, 0x64(r31)
/* 81408C14 | 90 1F 00 60 */	stw r0, 0x60(r31)
/* 81408C18 | 48 00 01 6C */	b .L_81408D84
.L_81408C1C:
/* 81408C1C | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81408C20 | 38 80 00 14 */	li r4, 0x14
/* 81408C24 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81408C28 | 48 10 96 F1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81408C2C | 7C 7C 1B 78 */	mr r28, r3
/* 81408C30 | 4B F5 9C 41 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81408C34 | 3B C0 00 01 */	li r30, 0x1
/* 81408C38 | 38 80 00 15 */	li r4, 0x15
/* 81408C3C | 93 DC 00 14 */	stw r30, 0x14(r28)
/* 81408C40 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81408C44 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81408C48 | 48 10 96 D1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81408C4C | 7C 7C 1B 78 */	mr r28, r3
/* 81408C50 | 4B F5 9C 21 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81408C54 | 93 DC 00 14 */	stw r30, 0x14(r28)
/* 81408C58 | 38 80 00 21 */	li r4, 0x21
/* 81408C5C | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81408C60 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81408C64 | 48 10 96 B5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81408C68 | 7C 7C 1B 78 */	mr r28, r3
/* 81408C6C | 4B F5 9C 05 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81408C70 | 93 DC 00 14 */	stw r30, 0x14(r28)
/* 81408C74 | 38 80 00 28 */	li r4, 0x28
/* 81408C78 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81408C7C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81408C80 | 48 10 96 99 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81408C84 | 7C 7C 1B 78 */	mr r28, r3
/* 81408C88 | 4B F5 9B E9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81408C8C | 93 DC 00 14 */	stw r30, 0x14(r28)
/* 81408C90 | 3F C0 81 66 */	lis r30, lbl_81658204@ha
/* 81408C94 | 3B DE 82 04 */	addi r30, r30, lbl_81658204@l
/* 81408C98 | 38 A0 00 01 */	li r5, 0x1
/* 81408C9C | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81408CA0 | 80 9E 00 10 */	lwz r4, 0x10(r30)
/* 81408CA4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81408CA8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81408CAC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81408CB0 | 7D 89 03 A6 */	mtctr r12
/* 81408CB4 | 4E 80 04 21 */	bctrl
/* 81408CB8 | 7C 64 1B 78 */	mr r4, r3
/* 81408CBC | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 81408CC0 | 38 A0 00 00 */	li r5, 0x0
/* 81408CC4 | 4B F6 25 09 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 81408CC8 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81408CCC | 38 A0 00 01 */	li r5, 0x1
/* 81408CD0 | 80 9E 00 14 */	lwz r4, 0x14(r30)
/* 81408CD4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81408CD8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81408CDC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81408CE0 | 7D 89 03 A6 */	mtctr r12
/* 81408CE4 | 4E 80 04 21 */	bctrl
/* 81408CE8 | 7C 64 1B 78 */	mr r4, r3
/* 81408CEC | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 81408CF0 | 38 A0 00 00 */	li r5, 0x0
/* 81408CF4 | 4B F6 24 D9 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 81408CF8 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81408CFC | 38 A0 00 01 */	li r5, 0x1
/* 81408D00 | 80 9E 00 08 */	lwz r4, 0x8(r30)
/* 81408D04 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81408D08 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81408D0C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81408D10 | 7D 89 03 A6 */	mtctr r12
/* 81408D14 | 4E 80 04 21 */	bctrl
/* 81408D18 | 7C 64 1B 78 */	mr r4, r3
/* 81408D1C | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 81408D20 | 38 A0 00 01 */	li r5, 0x1
/* 81408D24 | 4B F6 24 A9 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 81408D28 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81408D2C | 38 A0 00 01 */	li r5, 0x1
/* 81408D30 | 80 9E 00 0C */	lwz r4, 0xc(r30)
/* 81408D34 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81408D38 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81408D3C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81408D40 | 7D 89 03 A6 */	mtctr r12
/* 81408D44 | 4E 80 04 21 */	bctrl
/* 81408D48 | 7C 64 1B 78 */	mr r4, r3
/* 81408D4C | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 81408D50 | 38 A0 00 01 */	li r5, 0x1
/* 81408D54 | 4B F6 24 79 */	bl setTriggerTarget__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Paneb
/* 81408D58 | 80 1F 00 68 */	lwz r0, 0x68(r31)
/* 81408D5C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81408D60 | 40 82 00 14 */	bne .L_81408D74
/* 81408D64 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 81408D68 | 38 80 00 16 */	li r4, 0x16
/* 81408D6C | 48 00 23 CD */	bl getScene__Q33ipl5scene7ManagerFi
/* 81408D70 | 4B FF EB 5D */	bl hideBtn__Q33ipl5scene13SettingButtonFv
.L_81408D74:
/* 81408D74 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 81408D78 | 38 00 00 0B */	li r0, 0xb
/* 81408D7C | 90 7F 00 64 */	stw r3, 0x64(r31)
/* 81408D80 | 90 1F 00 60 */	stw r0, 0x60(r31)
.L_81408D84:
/* 81408D84 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81408D88 | 48 1F 07 89 */	bl _restgpr_28
/* 81408D8C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81408D90 | 7C 08 03 A6 */	mtlr r0
/* 81408D94 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81408D98 | 4E 80 00 20 */	blr
.endfn stt_wait_button_decided__Q33ipl5scene13SettingSelectFv

# .text:0x12A0 | 0x81408D9C | size: 0x68
# ipl::scene::SettingSelect::stt_wait_blackout()
.fn stt_wait_blackout__Q33ipl5scene13SettingSelectFv, global
/* 81408D9C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81408DA0 | 7C 08 02 A6 */	mflr r0
/* 81408DA4 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81408DA8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81408DAC | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81408DB0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81408DB4 | 7C 7F 1B 78 */	mr r31, r3
/* 81408DB8 | 80 64 00 C4 */	lwz r3, 0xc4(r4)
/* 81408DBC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81408DC0 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81408DC4 | 7D 89 03 A6 */	mtctr r12
/* 81408DC8 | 4E 80 04 21 */	bctrl
/* 81408DCC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81408DD0 | 40 82 00 20 */	bne .L_81408DF0
/* 81408DD4 | 80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 81408DD8 | 38 00 00 11 */	li r0, 0x11
/* 81408DDC | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 81408DE0 | 60 84 00 02 */	ori r4, r4, 0x2
/* 81408DE4 | 90 9F 00 2C */	stw r4, 0x2c(r31)
/* 81408DE8 | 90 7F 00 64 */	stw r3, 0x64(r31)
/* 81408DEC | 90 1F 00 60 */	stw r0, 0x60(r31)
.L_81408DF0:
/* 81408DF0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81408DF4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81408DF8 | 7C 08 03 A6 */	mtlr r0
/* 81408DFC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81408E00 | 4E 80 00 20 */	blr
.endfn stt_wait_blackout__Q33ipl5scene13SettingSelectFv

# .text:0x1308 | 0x81408E04 | size: 0x114
# ipl::scene::SettingSelect::stt_wait_child()
.fn stt_wait_child__Q33ipl5scene13SettingSelectFv, global
/* 81408E04 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81408E08 | 7C 08 02 A6 */	mflr r0
/* 81408E0C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81408E10 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81408E14 | 48 1F 06 B1 */	bl _savegpr_28
/* 81408E18 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81408E1C | 7C 7C 1B 78 */	mr r28, r3
/* 81408E20 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81408E24 | 7D 89 03 A6 */	mtctr r12
/* 81408E28 | 4E 80 04 21 */	bctrl
/* 81408E2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81408E30 | 40 82 00 D0 */	bne .L_81408F00
/* 81408E34 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81408E38 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81408E3C | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 81408E40 | 80 03 01 04 */	lwz r0, 0x104(r3)
/* 81408E44 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81408E48 | 40 82 00 B8 */	bne .L_81408F00
/* 81408E4C | 80 1C 00 90 */	lwz r0, 0x90(r28)
/* 81408E50 | 3B C0 FF FF */	li r30, -0x1
/* 81408E54 | 3B A0 FF FF */	li r29, -0x1
/* 81408E58 | 2C 00 00 0D */	cmpwi r0, 0xd
/* 81408E5C | 41 82 00 20 */	beq .L_81408E7C
/* 81408E60 | 40 80 00 10 */	bge .L_81408E70
/* 81408E64 | 2C 00 00 0C */	cmpwi r0, 0xc
/* 81408E68 | 40 80 00 2C */	bge .L_81408E94
/* 81408E6C | 48 00 00 48 */	b .L_81408EB4
.L_81408E70:
/* 81408E70 | 2C 00 00 0F */	cmpwi r0, 0xf
/* 81408E74 | 40 80 00 40 */	bge .L_81408EB4
/* 81408E78 | 48 00 00 10 */	b .L_81408E88
.L_81408E7C:
/* 81408E7C | 3B C0 00 22 */	li r30, 0x22
/* 81408E80 | 3B A0 00 23 */	li r29, 0x23
/* 81408E84 | 48 00 00 30 */	b .L_81408EB4
.L_81408E88:
/* 81408E88 | 3B C0 00 29 */	li r30, 0x29
/* 81408E8C | 3B A0 00 1C */	li r29, 0x1c
/* 81408E90 | 48 00 00 24 */	b .L_81408EB4
.L_81408E94:
/* 81408E94 | 80 1C 00 68 */	lwz r0, 0x68(r28)
/* 81408E98 | 3B C0 00 1B */	li r30, 0x1b
/* 81408E9C | 3B A0 00 0E */	li r29, 0xe
/* 81408EA0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81408EA4 | 40 82 00 10 */	bne .L_81408EB4
/* 81408EA8 | 38 80 00 16 */	li r4, 0x16
/* 81408EAC | 48 00 22 8D */	bl getScene__Q33ipl5scene7ManagerFi
/* 81408EB0 | 4B FF EA 1D */	bl hideBtn__Q33ipl5scene13SettingButtonFv
.L_81408EB4:
/* 81408EB4 | 80 7C 00 6C */	lwz r3, 0x6c(r28)
/* 81408EB8 | 57 C4 04 3E */	clrlwi r4, r30, 16
/* 81408EBC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81408EC0 | 48 10 94 59 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81408EC4 | 7C 7E 1B 78 */	mr r30, r3
/* 81408EC8 | 4B F5 99 A9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81408ECC | 3B E0 00 01 */	li r31, 0x1
/* 81408ED0 | 57 A4 04 3E */	clrlwi r4, r29, 16
/* 81408ED4 | 93 FE 00 14 */	stw r31, 0x14(r30)
/* 81408ED8 | 80 7C 00 6C */	lwz r3, 0x6c(r28)
/* 81408EDC | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81408EE0 | 48 10 94 39 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81408EE4 | 7C 7E 1B 78 */	mr r30, r3
/* 81408EE8 | 4B F5 99 89 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81408EEC | 93 FE 00 14 */	stw r31, 0x14(r30)
/* 81408EF0 | 38 00 00 0F */	li r0, 0xf
/* 81408EF4 | 80 7C 00 60 */	lwz r3, 0x60(r28)
/* 81408EF8 | 90 7C 00 64 */	stw r3, 0x64(r28)
/* 81408EFC | 90 1C 00 60 */	stw r0, 0x60(r28)
.L_81408F00:
/* 81408F00 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81408F04 | 48 1F 06 0D */	bl _restgpr_28
/* 81408F08 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81408F0C | 7C 08 03 A6 */	mtlr r0
/* 81408F10 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81408F14 | 4E 80 00 20 */	blr
.endfn stt_wait_child__Q33ipl5scene13SettingSelectFv

# .text:0x141C | 0x81408F18 | size: 0xAC
# ipl::scene::SettingSelect::stt_wait_child_anm()
.fn stt_wait_child_anm__Q33ipl5scene13SettingSelectFv, global
/* 81408F18 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81408F1C | 7C 08 02 A6 */	mflr r0
/* 81408F20 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81408F24 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81408F28 | 7C 7F 1B 78 */	mr r31, r3
/* 81408F2C | 48 00 07 C9 */	bl is_stopped_all_anm__Q33ipl5scene13SettingSelectCFv
/* 81408F30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81408F34 | 41 82 00 7C */	beq .L_81408FB0
/* 81408F38 | 80 1F 00 90 */	lwz r0, 0x90(r31)
/* 81408F3C | 2C 00 00 0C */	cmpwi r0, 0xc
/* 81408F40 | 41 82 00 14 */	beq .L_81408F54
/* 81408F44 | 41 80 00 64 */	blt .L_81408FA8
/* 81408F48 | 2C 00 00 0F */	cmpwi r0, 0xf
/* 81408F4C | 40 80 00 5C */	bge .L_81408FA8
/* 81408F50 | 48 00 00 30 */	b .L_81408F80
.L_81408F54:
/* 81408F54 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81408F58 | 38 80 00 16 */	li r4, 0x16
/* 81408F5C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81408F60 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 81408F64 | 48 00 21 D5 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81408F68 | 4B FF E8 81 */	bl showWii__Q33ipl5scene13SettingButtonFv
/* 81408F6C | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 81408F70 | 38 00 00 05 */	li r0, 0x5
/* 81408F74 | 90 7F 00 64 */	stw r3, 0x64(r31)
/* 81408F78 | 90 1F 00 60 */	stw r0, 0x60(r31)
/* 81408F7C | 48 00 00 2C */	b .L_81408FA8
.L_81408F80:
/* 81408F80 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81408F84 | 38 80 00 16 */	li r4, 0x16
/* 81408F88 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81408F8C | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 81408F90 | 48 00 21 A9 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81408F94 | 4B FF E8 55 */	bl showWii__Q33ipl5scene13SettingButtonFv
/* 81408F98 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 81408F9C | 38 00 00 08 */	li r0, 0x8
/* 81408FA0 | 90 7F 00 64 */	stw r3, 0x64(r31)
/* 81408FA4 | 90 1F 00 60 */	stw r0, 0x60(r31)
.L_81408FA8:
/* 81408FA8 | 38 00 00 00 */	li r0, 0x0
/* 81408FAC | 90 1F 00 90 */	stw r0, 0x90(r31)
.L_81408FB0:
/* 81408FB0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81408FB4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81408FB8 | 7C 08 03 A6 */	mtlr r0
/* 81408FBC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81408FC0 | 4E 80 00 20 */	blr
.endfn stt_wait_child_anm__Q33ipl5scene13SettingSelectFv

# .text:0x14C8 | 0x81408FC4 | size: 0x50
# ipl::scene::SettingSelect::draw()
.fn draw__Q33ipl5scene13SettingSelectFv, global
/* 81408FC4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81408FC8 | 7C 08 02 A6 */	mflr r0
/* 81408FCC | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81408FD0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81408FD4 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81408FD8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81408FDC | 7C 7F 1B 78 */	mr r31, r3
/* 81408FE0 | 80 64 00 64 */	lwz r3, 0x64(r4)
/* 81408FE4 | 80 03 01 00 */	lwz r0, 0x100(r3)
/* 81408FE8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81408FEC | 40 82 00 14 */	bne .L_81409000
/* 81408FF0 | 38 60 00 00 */	li r3, 0x0
/* 81408FF4 | 4B F5 9A 79 */	bl setOrtho__Q33ipl7utility8GraphicsFUl
/* 81408FF8 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 81408FFC | 4B F6 17 A1 */	bl draw__Q33ipl6layout6ObjectFv
.L_81409000:
/* 81409000 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81409004 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81409008 | 7C 08 03 A6 */	mtlr r0
/* 8140900C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81409010 | 4E 80 00 20 */	blr
.endfn draw__Q33ipl5scene13SettingSelectFv

# .text:0x1518 | 0x81409014 | size: 0x34
# ipl::scene::SettingSelect::reset_gui()
.fn reset_gui__Q33ipl5scene13SettingSelectFv, global
/* 81409014 | 38 00 00 06 */	li r0, 0x6
/* 81409018 | 38 C0 00 00 */	li r6, 0x0
/* 8140901C | 38 80 00 00 */	li r4, 0x0
/* 81409020 | 7C 09 03 A6 */	mtctr r0
.L_81409024:
/* 81409024 | 7C A3 22 14 */	add r5, r3, r4
/* 81409028 | 38 84 00 04 */	addi r4, r4, 0x4
/* 8140902C | 90 C5 00 78 */	stw r6, 0x78(r5)
/* 81409030 | 42 00 FF F4 */	bdnz .L_81409024
/* 81409034 | 80 63 00 74 */	lwz r3, 0x74(r3)
/* 81409038 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140903C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81409040 | 7D 89 03 A6 */	mtctr r12
/* 81409044 | 4E 80 04 20 */	bctr
.endfn reset_gui__Q33ipl5scene13SettingSelectFv

# .text:0x154C | 0x81409048 | size: 0xCC
# ipl::scene::SettingSelect::set_text(const char*, unsigned long)
.fn set_text__Q33ipl5scene13SettingSelectFPCcUl, global
/* 81409048 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8140904C | 7C 08 02 A6 */	mflr r0
/* 81409050 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81409054 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81409058 | 48 1F 04 71 */	bl _savegpr_29
/* 8140905C | 80 63 00 6C */	lwz r3, 0x6c(r3)
/* 81409060 | 7C BD 2B 78 */	mr r29, r5
/* 81409064 | 38 A0 00 01 */	li r5, 0x1
/* 81409068 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8140906C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81409070 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81409074 | 7D 89 03 A6 */	mtctr r12
/* 81409078 | 4E 80 04 21 */	bctrl
/* 8140907C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81409080 | 7C 7E 1B 78 */	mr r30, r3
/* 81409084 | 3B ED AF 78 */	li r31, lbl_81698FB8@sda21
/* 81409088 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8140908C | 7D 89 03 A6 */	mtctr r12
/* 81409090 | 4E 80 04 21 */	bctrl
/* 81409094 | 48 00 00 18 */	b .L_814090AC
.L_81409098:
/* 81409098 | 7C 03 F8 40 */	cmplw r3, r31
/* 8140909C | 40 82 00 0C */	bne .L_814090A8
/* 814090A0 | 38 00 00 01 */	li r0, 0x1
/* 814090A4 | 48 00 00 14 */	b .L_814090B8
.L_814090A8:
/* 814090A8 | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_814090AC:
/* 814090AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814090B0 | 40 82 FF E8 */	bne .L_81409098
/* 814090B4 | 38 00 00 00 */	li r0, 0x0
.L_814090B8:
/* 814090B8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814090BC | 41 82 00 08 */	beq .L_814090C4
/* 814090C0 | 48 00 00 08 */	b .L_814090C8
.L_814090C4:
/* 814090C4 | 3B C0 00 00 */	li r30, 0x0
.L_814090C8:
/* 814090C8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 814090CC | 7F A4 EB 78 */	mr r4, r29
/* 814090D0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 814090D4 | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 814090D8 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814090DC | 4B F3 56 E1 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 814090E0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814090E4 | 7C 64 1B 78 */	mr r4, r3
/* 814090E8 | 7F C3 F3 78 */	mr r3, r30
/* 814090EC | 38 A0 00 00 */	li r5, 0x0
/* 814090F0 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 814090F4 | 7D 89 03 A6 */	mtctr r12
/* 814090F8 | 4E 80 04 21 */	bctrl
/* 814090FC | 39 61 00 20 */	addi r11, r1, 0x20
/* 81409100 | 48 1F 04 15 */	bl _restgpr_29
/* 81409104 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81409108 | 7C 08 03 A6 */	mtlr r0
/* 8140910C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81409110 | 4E 80 00 20 */	blr
.endfn set_text__Q33ipl5scene13SettingSelectFPCcUl

# .text:0x1618 | 0x81409114 | size: 0x80
# ipl::scene::SettingSelect::start_point_event(const char*, ipl::controller::Interface*)
.fn start_point_event__Q33ipl5scene13SettingSelectFPCcPQ33ipl10controller9Interface, global
/* 81409114 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81409118 | 7C 08 02 A6 */	mflr r0
/* 8140911C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81409120 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81409124 | 48 1F 03 A1 */	bl _savegpr_28
/* 81409128 | 7C 7C 1B 78 */	mr r28, r3
/* 8140912C | 7C BD 2B 78 */	mr r29, r5
/* 81409130 | 48 00 00 DD */	bl get_button_no__Q33ipl5scene13SettingSelectFPCc
/* 81409134 | 7C 7E 1B 78 */	mr r30, r3
/* 81409138 | 7F 83 E3 78 */	mr r3, r28
/* 8140913C | 7F C4 F3 78 */	mr r4, r30
/* 81409140 | 48 00 01 41 */	bl condition__Q33ipl5scene13SettingSelectFi
/* 81409144 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81409148 | 41 82 00 34 */	beq .L_8140917C
/* 8140914C | 57 C0 10 3A */	slwi r0, r30, 2
/* 81409150 | 7F FC 02 14 */	add r31, r28, r0
/* 81409154 | 80 1F 00 78 */	lwz r0, 0x78(r31)
/* 81409158 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140915C | 40 82 00 14 */	bne .L_81409170
/* 81409160 | 7F 83 E3 78 */	mr r3, r28
/* 81409164 | 7F C4 F3 78 */	mr r4, r30
/* 81409168 | 7F A5 EB 78 */	mr r5, r29
/* 8140916C | 48 00 01 71 */	bl start_focusin_anm__Q33ipl5scene13SettingSelectFiPQ33ipl10controller9Interface
.L_81409170:
/* 81409170 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 81409174 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81409178 | 90 1F 00 78 */	stw r0, 0x78(r31)
.L_8140917C:
/* 8140917C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81409180 | 48 1F 03 91 */	bl _restgpr_28
/* 81409184 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81409188 | 7C 08 03 A6 */	mtlr r0
/* 8140918C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81409190 | 4E 80 00 20 */	blr
.endfn start_point_event__Q33ipl5scene13SettingSelectFPCcPQ33ipl10controller9Interface

# .text:0x1698 | 0x81409194 | size: 0x78
# ipl::scene::SettingSelect::start_left_event(const char*)
.fn start_left_event__Q33ipl5scene13SettingSelectFPCc, global
/* 81409194 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81409198 | 7C 08 02 A6 */	mflr r0
/* 8140919C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814091A0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814091A4 | 48 1F 03 25 */	bl _savegpr_29
/* 814091A8 | 7C 7D 1B 78 */	mr r29, r3
/* 814091AC | 48 00 00 61 */	bl get_button_no__Q33ipl5scene13SettingSelectFPCc
/* 814091B0 | 7C 7E 1B 78 */	mr r30, r3
/* 814091B4 | 7F A3 EB 78 */	mr r3, r29
/* 814091B8 | 7F C4 F3 78 */	mr r4, r30
/* 814091BC | 48 00 00 C5 */	bl condition__Q33ipl5scene13SettingSelectFi
/* 814091C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814091C4 | 41 82 00 30 */	beq .L_814091F4
/* 814091C8 | 57 C0 10 3A */	slwi r0, r30, 2
/* 814091CC | 7F FD 02 14 */	add r31, r29, r0
/* 814091D0 | 80 1F 00 78 */	lwz r0, 0x78(r31)
/* 814091D4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814091D8 | 40 82 00 10 */	bne .L_814091E8
/* 814091DC | 7F A3 EB 78 */	mr r3, r29
/* 814091E0 | 7F C4 F3 78 */	mr r4, r30
/* 814091E4 | 48 00 01 ED */	bl start_focusout_anm__Q33ipl5scene13SettingSelectFi
.L_814091E8:
/* 814091E8 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 814091EC | 38 03 FF FF */	subi r0, r3, 0x1
/* 814091F0 | 90 1F 00 78 */	stw r0, 0x78(r31)
.L_814091F4:
/* 814091F4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814091F8 | 48 1F 03 1D */	bl _restgpr_29
/* 814091FC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81409200 | 7C 08 03 A6 */	mtlr r0
/* 81409204 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81409208 | 4E 80 00 20 */	blr
.endfn start_left_event__Q33ipl5scene13SettingSelectFPCc

# .text:0x1710 | 0x8140920C | size: 0x74
# ipl::scene::SettingSelect::get_button_no(const char*)
.fn get_button_no__Q33ipl5scene13SettingSelectFPCc, global
/* 8140920C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81409210 | 7C 08 02 A6 */	mflr r0
/* 81409214 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81409218 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8140921C | 48 1F 02 A5 */	bl _savegpr_27
/* 81409220 | 3F C0 81 66 */	lis r30, lbl_81658204@ha
/* 81409224 | 7C 9B 23 78 */	mr r27, r4
/* 81409228 | 3B DE 82 04 */	addi r30, r30, lbl_81658204@l
/* 8140922C | 3B A0 FF FF */	li r29, -0x1
/* 81409230 | 3B 80 00 00 */	li r28, 0x0
/* 81409234 | 3B E0 00 00 */	li r31, 0x0
.L_81409238:
/* 81409238 | 7C 9E F8 2E */	lwzx r4, r30, r31
/* 8140923C | 7F 63 DB 78 */	mr r3, r27
/* 81409240 | 48 1F 92 41 */	bl strcmp
/* 81409244 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81409248 | 40 82 00 0C */	bne .L_81409254
/* 8140924C | 7F 9D E3 78 */	mr r29, r28
/* 81409250 | 48 00 00 14 */	b .L_81409264
.L_81409254:
/* 81409254 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 81409258 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 8140925C | 2C 1C 00 06 */	cmpwi r28, 0x6
/* 81409260 | 41 80 FF D8 */	blt .L_81409238
.L_81409264:
/* 81409264 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81409268 | 7F A3 EB 78 */	mr r3, r29
/* 8140926C | 48 1F 02 A1 */	bl _restgpr_27
/* 81409270 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81409274 | 7C 08 03 A6 */	mtlr r0
/* 81409278 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8140927C | 4E 80 00 20 */	blr
.endfn get_button_no__Q33ipl5scene13SettingSelectFPCc

# .text:0x1784 | 0x81409280 | size: 0x5C
# ipl::scene::SettingSelect::condition(int)
.fn condition__Q33ipl5scene13SettingSelectFi, global
/* 81409280 | 2C 04 FF FF */	cmpwi r4, -0x1
/* 81409284 | 38 A0 00 00 */	li r5, 0x0
/* 81409288 | 41 82 00 4C */	beq .L_814092D4
/* 8140928C | 28 04 00 01 */	cmplwi r4, 0x1
/* 81409290 | 41 81 00 10 */	bgt .L_814092A0
/* 81409294 | 80 03 00 60 */	lwz r0, 0x60(r3)
/* 81409298 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8140929C | 41 82 00 34 */	beq .L_814092D0
.L_814092A0:
/* 814092A0 | 38 04 FF FE */	subi r0, r4, 0x2
/* 814092A4 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814092A8 | 41 81 00 10 */	bgt .L_814092B8
/* 814092AC | 80 03 00 60 */	lwz r0, 0x60(r3)
/* 814092B0 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 814092B4 | 41 82 00 1C */	beq .L_814092D0
.L_814092B8:
/* 814092B8 | 38 04 FF FC */	subi r0, r4, 0x4
/* 814092BC | 28 00 00 01 */	cmplwi r0, 0x1
/* 814092C0 | 41 81 00 14 */	bgt .L_814092D4
/* 814092C4 | 80 03 00 60 */	lwz r0, 0x60(r3)
/* 814092C8 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 814092CC | 40 82 00 08 */	bne .L_814092D4
.L_814092D0:
/* 814092D0 | 38 A0 00 01 */	li r5, 0x1
.L_814092D4:
/* 814092D4 | 7C A3 2B 78 */	mr r3, r5
/* 814092D8 | 4E 80 00 20 */	blr
.endfn condition__Q33ipl5scene13SettingSelectFi

# .text:0x17E0 | 0x814092DC | size: 0xF4
# ipl::scene::SettingSelect::start_focusin_anm(int, ipl::controller::Interface*)
.fn start_focusin_anm__Q33ipl5scene13SettingSelectFiPQ33ipl10controller9Interface, global
/* 814092DC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814092E0 | 7C 08 02 A6 */	mflr r0
/* 814092E4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814092E8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814092EC | 48 1F 01 DD */	bl _savegpr_29
/* 814092F0 | 2C 04 00 03 */	cmpwi r4, 0x3
/* 814092F4 | 7C 7D 1B 78 */	mr r29, r3
/* 814092F8 | 7C BE 2B 78 */	mr r30, r5
/* 814092FC | 3B E0 FF FF */	li r31, -0x1
/* 81409300 | 41 82 00 48 */	beq .L_81409348
/* 81409304 | 40 80 00 1C */	bge .L_81409320
/* 81409308 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 8140930C | 41 82 00 2C */	beq .L_81409338
/* 81409310 | 40 80 00 30 */	bge .L_81409340
/* 81409314 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81409318 | 40 80 00 18 */	bge .L_81409330
/* 8140931C | 48 00 00 40 */	b .L_8140935C
.L_81409320:
/* 81409320 | 2C 04 00 05 */	cmpwi r4, 0x5
/* 81409324 | 41 82 00 34 */	beq .L_81409358
/* 81409328 | 40 80 00 34 */	bge .L_8140935C
/* 8140932C | 48 00 00 24 */	b .L_81409350
.L_81409330:
/* 81409330 | 3B E0 00 01 */	li r31, 0x1
/* 81409334 | 48 00 00 28 */	b .L_8140935C
.L_81409338:
/* 81409338 | 3B E0 00 08 */	li r31, 0x8
/* 8140933C | 48 00 00 20 */	b .L_8140935C
.L_81409340:
/* 81409340 | 3B E0 00 0F */	li r31, 0xf
/* 81409344 | 48 00 00 18 */	b .L_8140935C
.L_81409348:
/* 81409348 | 3B E0 00 16 */	li r31, 0x16
/* 8140934C | 48 00 00 10 */	b .L_8140935C
.L_81409350:
/* 81409350 | 3B E0 00 1D */	li r31, 0x1d
/* 81409354 | 48 00 00 08 */	b .L_8140935C
.L_81409358:
/* 81409358 | 3B E0 00 24 */	li r31, 0x24
.L_8140935C:
/* 8140935C | 2C 1F FF FF */	cmpwi r31, -0x1
/* 81409360 | 41 82 00 58 */	beq .L_814093B8
/* 81409364 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81409368 | 3C 80 81 66 */	lis r4, lbl_8165861C@ha
/* 8140936C | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81409370 | 38 84 86 1C */	addi r4, r4, lbl_8165861C@l
/* 81409374 | 4B F6 20 F9 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81409378 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8140937C | 41 82 00 1C */	beq .L_81409398
/* 81409380 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81409384 | 7F C3 F3 78 */	mr r3, r30
/* 81409388 | 38 80 00 00 */	li r4, 0x0
/* 8140938C | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81409390 | 7D 89 03 A6 */	mtctr r12
/* 81409394 | 4E 80 04 21 */	bctrl
.L_81409398:
/* 81409398 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 8140939C | 57 E4 04 3E */	clrlwi r4, r31, 16
/* 814093A0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 814093A4 | 48 10 8F 75 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 814093A8 | 7C 7F 1B 78 */	mr r31, r3
/* 814093AC | 4B F5 94 C5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 814093B0 | 38 00 00 01 */	li r0, 0x1
/* 814093B4 | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_814093B8:
/* 814093B8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814093BC | 48 1F 01 59 */	bl _restgpr_29
/* 814093C0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814093C4 | 7C 08 03 A6 */	mtlr r0
/* 814093C8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814093CC | 4E 80 00 20 */	blr
.endfn start_focusin_anm__Q33ipl5scene13SettingSelectFiPQ33ipl10controller9Interface

# .text:0x18D4 | 0x814093D0 | size: 0xB0
# ipl::scene::SettingSelect::start_focusout_anm(int)
.fn start_focusout_anm__Q33ipl5scene13SettingSelectFi, global
/* 814093D0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814093D4 | 7C 08 02 A6 */	mflr r0
/* 814093D8 | 2C 04 00 03 */	cmpwi r4, 0x3
/* 814093DC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814093E0 | 38 00 FF FF */	li r0, -0x1
/* 814093E4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814093E8 | 41 82 00 48 */	beq .L_81409430
/* 814093EC | 40 80 00 1C */	bge .L_81409408
/* 814093F0 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 814093F4 | 41 82 00 2C */	beq .L_81409420
/* 814093F8 | 40 80 00 30 */	bge .L_81409428
/* 814093FC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81409400 | 40 80 00 18 */	bge .L_81409418
/* 81409404 | 48 00 00 40 */	b .L_81409444
.L_81409408:
/* 81409408 | 2C 04 00 05 */	cmpwi r4, 0x5
/* 8140940C | 41 82 00 34 */	beq .L_81409440
/* 81409410 | 40 80 00 34 */	bge .L_81409444
/* 81409414 | 48 00 00 24 */	b .L_81409438
.L_81409418:
/* 81409418 | 38 00 00 02 */	li r0, 0x2
/* 8140941C | 48 00 00 28 */	b .L_81409444
.L_81409420:
/* 81409420 | 38 00 00 09 */	li r0, 0x9
/* 81409424 | 48 00 00 20 */	b .L_81409444
.L_81409428:
/* 81409428 | 38 00 00 10 */	li r0, 0x10
/* 8140942C | 48 00 00 18 */	b .L_81409444
.L_81409430:
/* 81409430 | 38 00 00 17 */	li r0, 0x17
/* 81409434 | 48 00 00 10 */	b .L_81409444
.L_81409438:
/* 81409438 | 38 00 00 1E */	li r0, 0x1e
/* 8140943C | 48 00 00 08 */	b .L_81409444
.L_81409440:
/* 81409440 | 38 00 00 25 */	li r0, 0x25
.L_81409444:
/* 81409444 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 81409448 | 41 82 00 24 */	beq .L_8140946C
/* 8140944C | 80 63 00 6C */	lwz r3, 0x6c(r3)
/* 81409450 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81409454 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81409458 | 48 10 8E C1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8140945C | 7C 7F 1B 78 */	mr r31, r3
/* 81409460 | 4B F5 94 11 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81409464 | 38 00 00 01 */	li r0, 0x1
/* 81409468 | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_8140946C:
/* 8140946C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81409470 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81409474 | 7C 08 03 A6 */	mtlr r0
/* 81409478 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140947C | 4E 80 00 20 */	blr
.endfn start_focusout_anm__Q33ipl5scene13SettingSelectFi

# .text:0x1984 | 0x81409480 | size: 0x274
# ipl::scene::SettingSelect::start_selected_anm(int)
.fn start_selected_anm__Q33ipl5scene13SettingSelectFi, global
/* 81409480 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81409484 | 7C 08 02 A6 */	mflr r0
/* 81409488 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8140948C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81409490 | 48 1F 00 31 */	bl _savegpr_27
/* 81409494 | 2C 04 00 03 */	cmpwi r4, 0x3
/* 81409498 | 7C 7D 1B 78 */	mr r29, r3
/* 8140949C | 3B E0 FF FF */	li r31, -0x1
/* 814094A0 | 3B C0 FF FF */	li r30, -0x1
/* 814094A4 | 41 82 00 B8 */	beq .L_8140955C
/* 814094A8 | 40 80 00 1C */	bge .L_814094C4
/* 814094AC | 2C 04 00 01 */	cmpwi r4, 0x1
/* 814094B0 | 41 82 00 3C */	beq .L_814094EC
/* 814094B4 | 40 80 00 68 */	bge .L_8140951C
/* 814094B8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814094BC | 40 80 00 18 */	bge .L_814094D4
/* 814094C0 | 48 00 01 A4 */	b .L_81409664
.L_814094C4:
/* 814094C4 | 2C 04 00 05 */	cmpwi r4, 0x5
/* 814094C8 | 41 82 01 50 */	beq .L_81409618
/* 814094CC | 40 80 01 98 */	bge .L_81409664
/* 814094D0 | 48 00 00 F8 */	b .L_814095C8
.L_814094D4:
/* 814094D4 | 80 03 00 60 */	lwz r0, 0x60(r3)
/* 814094D8 | 3B E0 00 03 */	li r31, 0x3
/* 814094DC | 3B C0 00 0C */	li r30, 0xc
/* 814094E0 | 90 03 00 64 */	stw r0, 0x64(r3)
/* 814094E4 | 93 E3 00 60 */	stw r31, 0x60(r3)
/* 814094E8 | 48 00 01 7C */	b .L_81409664
.L_814094EC:
/* 814094EC | 38 00 00 12 */	li r0, 0x12
/* 814094F0 | 3B E0 00 0A */	li r31, 0xa
/* 814094F4 | 90 03 00 90 */	stw r0, 0x90(r3)
/* 814094F8 | 3B C0 00 05 */	li r30, 0x5
/* 814094FC | 38 80 00 12 */	li r4, 0x12
/* 81409500 | 38 A0 00 00 */	li r5, 0x0
/* 81409504 | 48 00 0A 91 */	bl fn_81409F94
/* 81409508 | 80 7D 00 60 */	lwz r3, 0x60(r29)
/* 8140950C | 38 00 00 03 */	li r0, 0x3
/* 81409510 | 90 7D 00 64 */	stw r3, 0x64(r29)
/* 81409514 | 90 1D 00 60 */	stw r0, 0x60(r29)
/* 81409518 | 48 00 01 4C */	b .L_81409664
.L_8140951C:
/* 8140951C | 80 03 00 68 */	lwz r0, 0x68(r3)
/* 81409520 | 38 80 00 06 */	li r4, 0x6
/* 81409524 | 80 A3 00 60 */	lwz r5, 0x60(r3)
/* 81409528 | 3B E0 00 11 */	li r31, 0x11
/* 8140952C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81409530 | 3B C0 00 1A */	li r30, 0x1a
/* 81409534 | 90 A3 00 64 */	stw r5, 0x64(r3)
/* 81409538 | 90 83 00 60 */	stw r4, 0x60(r3)
/* 8140953C | 40 82 01 28 */	bne .L_81409664
/* 81409540 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81409544 | 38 80 00 16 */	li r4, 0x16
/* 81409548 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8140954C | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 81409550 | 48 00 1B E9 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81409554 | 4B FF E3 1D */	bl showBtn__Q33ipl5scene13SettingButtonFv
/* 81409558 | 48 00 01 0C */	b .L_81409664
.L_8140955C:
/* 8140955C | 38 00 00 0C */	li r0, 0xc
/* 81409560 | 7F A5 EB 78 */	mr r5, r29
/* 81409564 | 90 03 00 90 */	stw r0, 0x90(r3)
/* 81409568 | 3B E0 00 18 */	li r31, 0x18
/* 8140956C | 3B C0 00 13 */	li r30, 0x13
/* 81409570 | 38 80 00 0C */	li r4, 0xc
/* 81409574 | 38 C0 00 00 */	li r6, 0x0
/* 81409578 | 38 E0 00 00 */	li r7, 0x0
/* 8140957C | 48 00 09 0D */	bl fn_81409E88
/* 81409580 | 80 7D 00 60 */	lwz r3, 0x60(r29)
/* 81409584 | 38 00 00 06 */	li r0, 0x6
/* 81409588 | 3F 80 81 09 */	lis r28, smArg__Q23ipl6System@ha
/* 8140958C | 38 80 00 16 */	li r4, 0x16
/* 81409590 | 90 7D 00 64 */	stw r3, 0x64(r29)
/* 81409594 | 3B 9C 90 08 */	addi r28, r28, smArg__Q23ipl6System@l
/* 81409598 | 90 1D 00 60 */	stw r0, 0x60(r29)
/* 8140959C | 80 7C 00 64 */	lwz r3, 0x64(r28)
/* 814095A0 | 48 00 1B 99 */	bl getScene__Q33ipl5scene7ManagerFi
/* 814095A4 | 4B FF E2 89 */	bl hideWii__Q33ipl5scene13SettingButtonFv
/* 814095A8 | 80 1D 00 68 */	lwz r0, 0x68(r29)
/* 814095AC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814095B0 | 40 82 00 B4 */	bne .L_81409664
/* 814095B4 | 80 7C 00 64 */	lwz r3, 0x64(r28)
/* 814095B8 | 38 80 00 16 */	li r4, 0x16
/* 814095BC | 48 00 1B 7D */	bl getScene__Q33ipl5scene7ManagerFi
/* 814095C0 | 4B FF E2 B1 */	bl showBtn__Q33ipl5scene13SettingButtonFv
/* 814095C4 | 48 00 00 A0 */	b .L_81409664
.L_814095C8:
/* 814095C8 | 38 00 00 0D */	li r0, 0xd
/* 814095CC | 7F A5 EB 78 */	mr r5, r29
/* 814095D0 | 90 03 00 90 */	stw r0, 0x90(r3)
/* 814095D4 | 3B E0 00 1F */	li r31, 0x1f
/* 814095D8 | 3B C0 00 28 */	li r30, 0x28
/* 814095DC | 38 80 00 0D */	li r4, 0xd
/* 814095E0 | 38 C0 00 00 */	li r6, 0x0
/* 814095E4 | 38 E0 00 00 */	li r7, 0x0
/* 814095E8 | 48 00 08 A1 */	bl fn_81409E88
/* 814095EC | 80 BD 00 60 */	lwz r5, 0x60(r29)
/* 814095F0 | 38 00 00 09 */	li r0, 0x9
/* 814095F4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 814095F8 | 38 80 00 16 */	li r4, 0x16
/* 814095FC | 90 BD 00 64 */	stw r5, 0x64(r29)
/* 81409600 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81409604 | 90 1D 00 60 */	stw r0, 0x60(r29)
/* 81409608 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 8140960C | 48 00 1B 2D */	bl getScene__Q33ipl5scene7ManagerFi
/* 81409610 | 4B FF E2 1D */	bl hideWii__Q33ipl5scene13SettingButtonFv
/* 81409614 | 48 00 00 50 */	b .L_81409664
.L_81409618:
/* 81409618 | 38 00 00 0E */	li r0, 0xe
/* 8140961C | 7F A5 EB 78 */	mr r5, r29
/* 81409620 | 90 03 00 90 */	stw r0, 0x90(r3)
/* 81409624 | 3B E0 00 26 */	li r31, 0x26
/* 81409628 | 3B C0 00 21 */	li r30, 0x21
/* 8140962C | 38 80 00 0E */	li r4, 0xe
/* 81409630 | 38 C0 00 00 */	li r6, 0x0
/* 81409634 | 38 E0 00 00 */	li r7, 0x0
/* 81409638 | 48 00 08 51 */	bl fn_81409E88
/* 8140963C | 80 BD 00 60 */	lwz r5, 0x60(r29)
/* 81409640 | 38 00 00 09 */	li r0, 0x9
/* 81409644 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81409648 | 38 80 00 16 */	li r4, 0x16
/* 8140964C | 90 BD 00 64 */	stw r5, 0x64(r29)
/* 81409650 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81409654 | 90 1D 00 60 */	stw r0, 0x60(r29)
/* 81409658 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 8140965C | 48 00 1A DD */	bl getScene__Q33ipl5scene7ManagerFi
/* 81409660 | 4B FF E1 CD */	bl hideWii__Q33ipl5scene13SettingButtonFv
.L_81409664:
/* 81409664 | 2C 1F FF FF */	cmpwi r31, -0x1
/* 81409668 | 41 82 00 74 */	beq .L_814096DC
/* 8140966C | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 81409670 | 57 E4 04 3E */	clrlwi r4, r31, 16
/* 81409674 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81409678 | 48 10 8C A1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8140967C | 7C 7B 1B 78 */	mr r27, r3
/* 81409680 | 4B F5 91 F1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81409684 | 3B 80 00 01 */	li r28, 0x1
/* 81409688 | 38 1F 00 01 */	addi r0, r31, 0x1
/* 8140968C | 93 9B 00 14 */	stw r28, 0x14(r27)
/* 81409690 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 81409694 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 81409698 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 8140969C | 48 10 8C 7D */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 814096A0 | 7C 7B 1B 78 */	mr r27, r3
/* 814096A4 | 4B F5 91 CD */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 814096A8 | 93 9B 00 14 */	stw r28, 0x14(r27)
/* 814096AC | 57 C4 04 3E */	clrlwi r4, r30, 16
/* 814096B0 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 814096B4 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 814096B8 | 48 10 8C 61 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 814096BC | 7C 7B 1B 78 */	mr r27, r3
/* 814096C0 | 4B F5 91 B1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 814096C4 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 814096C8 | 3C 80 81 66 */	lis r4, lbl_81658632@ha
/* 814096CC | 93 9B 00 14 */	stw r28, 0x14(r27)
/* 814096D0 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 814096D4 | 38 84 86 32 */	addi r4, r4, lbl_81658632@l
/* 814096D8 | 4B F6 1D 95 */	bl startSE__Q33ipl3snd6SystemFPCc
.L_814096DC:
/* 814096DC | 39 61 00 20 */	addi r11, r1, 0x20
/* 814096E0 | 48 1E FE 2D */	bl _restgpr_27
/* 814096E4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814096E8 | 7C 08 03 A6 */	mtlr r0
/* 814096EC | 38 21 00 20 */	addi r1, r1, 0x20
/* 814096F0 | 4E 80 00 20 */	blr
.endfn start_selected_anm__Q33ipl5scene13SettingSelectFi

# .text:0x1BF8 | 0x814096F4 | size: 0x74
# ipl::scene::SettingSelect::is_stopped_all_anm() const
.fn is_stopped_all_anm__Q33ipl5scene13SettingSelectCFv, global
/* 814096F4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814096F8 | 7C 08 02 A6 */	mflr r0
/* 814096FC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81409700 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81409704 | 48 1E FD C5 */	bl _savegpr_29
/* 81409708 | 7C 7D 1B 78 */	mr r29, r3
/* 8140970C | 3B E0 00 01 */	li r31, 0x1
/* 81409710 | 3B C0 00 00 */	li r30, 0x0
.L_81409714:
/* 81409714 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 81409718 | 57 C4 04 3E */	clrlwi r4, r30, 16
/* 8140971C | 38 63 02 8C */	addi r3, r3, 0x28c
/* 81409720 | 48 10 8B F9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 81409724 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81409728 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8140972C | 2C 1E 00 2A */	cmpwi r30, 0x2a
/* 81409730 | 38 63 FF FF */	subi r3, r3, 0x1
/* 81409734 | 30 03 FF FF */	subic r0, r3, 0x1
/* 81409738 | 7C 00 19 10 */	subfe r0, r0, r3
/* 8140973C | 7F E3 00 38 */	and r3, r31, r0
/* 81409740 | 30 03 FF FF */	subic r0, r3, 0x1
/* 81409744 | 7F E0 19 10 */	subfe r31, r0, r3
/* 81409748 | 41 80 FF CC */	blt .L_81409714
/* 8140974C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81409750 | 7F E3 FB 78 */	mr r3, r31
/* 81409754 | 48 1E FD C1 */	bl _restgpr_29
/* 81409758 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8140975C | 7C 08 03 A6 */	mtlr r0
/* 81409760 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81409764 | 4E 80 00 20 */	blr
.endfn is_stopped_all_anm__Q33ipl5scene13SettingSelectCFv

# .text:0x1C6C | 0x81409768 | size: 0xFC
# ipl::scene::SettingSelect::onEvent(unsigned long, unsigned long, void*)
.fn onEvent__Q33ipl5scene13SettingSelectFUlUlPv, global
/* 81409768 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8140976C | 7C 08 02 A6 */	mflr r0
/* 81409770 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81409774 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81409778 | 48 1E FD 4D */	bl _savegpr_28
/* 8140977C | 7C 7C 1B 78 */	mr r28, r3
/* 81409780 | 80 63 00 58 */	lwz r3, 0x58(r3)
/* 81409784 | 7C BD 2B 78 */	mr r29, r5
/* 81409788 | 7C DE 33 78 */	mr r30, r6
/* 8140978C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81409790 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 81409794 | 7D 89 03 A6 */	mtctr r12
/* 81409798 | 4E 80 04 21 */	bctrl
/* 8140979C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814097A0 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 814097A4 | 7D 89 03 A6 */	mtctr r12
/* 814097A8 | 4E 80 04 21 */	bctrl
/* 814097AC | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 814097B0 | 3B E3 00 B4 */	addi r31, r3, 0xb4
/* 814097B4 | 41 82 00 20 */	beq .L_814097D4
/* 814097B8 | 40 80 00 10 */	bge .L_814097C8
/* 814097BC | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814097C0 | 40 80 00 38 */	bge .L_814097F8
/* 814097C4 | 48 00 00 88 */	b .L_8140984C
.L_814097C8:
/* 814097C8 | 2C 1D 00 03 */	cmpwi r29, 0x3
/* 814097CC | 40 80 00 80 */	bge .L_8140984C
/* 814097D0 | 48 00 00 18 */	b .L_814097E8
.L_814097D4:
/* 814097D4 | 7F 83 E3 78 */	mr r3, r28
/* 814097D8 | 7F E4 FB 78 */	mr r4, r31
/* 814097DC | 7F C5 F3 78 */	mr r5, r30
/* 814097E0 | 4B FF F9 35 */	bl start_point_event__Q33ipl5scene13SettingSelectFPCcPQ33ipl10controller9Interface
/* 814097E4 | 48 00 00 68 */	b .L_8140984C
.L_814097E8:
/* 814097E8 | 7F 83 E3 78 */	mr r3, r28
/* 814097EC | 7F E4 FB 78 */	mr r4, r31
/* 814097F0 | 4B FF F9 A5 */	bl start_left_event__Q33ipl5scene13SettingSelectFPCc
/* 814097F4 | 48 00 00 58 */	b .L_8140984C
.L_814097F8:
/* 814097F8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 814097FC | 3C 80 00 10 */	lis r4, 0x10
/* 81409800 | 7F C3 F3 78 */	mr r3, r30
/* 81409804 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81409808 | 38 84 08 00 */	addi r4, r4, 0x800
/* 8140980C | 7D 89 03 A6 */	mtctr r12
/* 81409810 | 4E 80 04 21 */	bctrl
/* 81409814 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81409818 | 41 82 00 34 */	beq .L_8140984C
/* 8140981C | 7F 83 E3 78 */	mr r3, r28
/* 81409820 | 7F E4 FB 78 */	mr r4, r31
/* 81409824 | 4B FF F9 E9 */	bl get_button_no__Q33ipl5scene13SettingSelectFPCc
/* 81409828 | 7C 7F 1B 78 */	mr r31, r3
/* 8140982C | 7F 83 E3 78 */	mr r3, r28
/* 81409830 | 7F E4 FB 78 */	mr r4, r31
/* 81409834 | 4B FF FA 4D */	bl condition__Q33ipl5scene13SettingSelectFi
/* 81409838 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140983C | 41 82 00 10 */	beq .L_8140984C
/* 81409840 | 7F 83 E3 78 */	mr r3, r28
/* 81409844 | 7F E4 FB 78 */	mr r4, r31
/* 81409848 | 4B FF FC 39 */	bl start_selected_anm__Q33ipl5scene13SettingSelectFi
.L_8140984C:
/* 8140984C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81409850 | 48 1E FC C1 */	bl _restgpr_28
/* 81409854 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81409858 | 7C 08 03 A6 */	mtlr r0
/* 8140985C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81409860 | 4E 80 00 20 */	blr
.endfn onEvent__Q33ipl5scene13SettingSelectFUlUlPv

# .text:0x1D68 | 0x81409864 | size: 0x90
# ipl::scene::SettingSelect::iplSettingSelect_81409864()
.fn iplSettingSelect_81409864__Q33ipl5scene13SettingSelectFv, global
/* 81409864 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81409868 | 7C 08 02 A6 */	mflr r0
/* 8140986C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81409870 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81409874 | 7C 7F 1B 78 */	mr r31, r3
/* 81409878 | 80 03 00 94 */	lwz r0, 0x94(r3)
/* 8140987C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81409880 | 41 82 00 54 */	beq .L_814098D4
/* 81409884 | 40 80 00 14 */	bge .L_81409898
/* 81409888 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140988C | 41 82 00 18 */	beq .L_814098A4
/* 81409890 | 40 80 00 1C */	bge .L_814098AC
/* 81409894 | 48 00 00 4C */	b .L_814098E0
.L_81409898:
/* 81409898 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 8140989C | 40 80 00 44 */	bge .L_814098E0
/* 814098A0 | 48 00 00 3C */	b .L_814098DC
.L_814098A4:
/* 814098A4 | 48 00 00 51 */	bl iplSettingSelect_814098F4__Q33ipl5scene13SettingSelectFv
/* 814098A8 | 48 00 00 38 */	b .L_814098E0
.L_814098AC:
/* 814098AC | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 814098B0 | 3C 80 81 66 */	lis r4, lbl_81658632@ha
/* 814098B4 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 814098B8 | 38 84 86 32 */	addi r4, r4, lbl_81658632@l
/* 814098BC | 4B F6 27 51 */	bl isSEActive__Q33ipl3snd6SystemFPCc
/* 814098C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814098C4 | 40 82 00 1C */	bne .L_814098E0
/* 814098C8 | 38 00 00 02 */	li r0, 0x2
/* 814098CC | 90 1F 00 94 */	stw r0, 0x94(r31)
/* 814098D0 | 48 00 00 10 */	b .L_814098E0
.L_814098D4:
/* 814098D4 | 48 00 00 B5 */	bl iplSettingSelect_81409988__Q33ipl5scene13SettingSelectFv
/* 814098D8 | 48 00 00 08 */	b .L_814098E0
.L_814098DC:
/* 814098DC | 48 00 01 11 */	bl iplSettingSelect_814099EC__Q33ipl5scene13SettingSelectFv
.L_814098E0:
/* 814098E0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814098E4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814098E8 | 7C 08 03 A6 */	mtlr r0
/* 814098EC | 38 21 00 10 */	addi r1, r1, 0x10
/* 814098F0 | 4E 80 00 20 */	blr
.endfn iplSettingSelect_81409864__Q33ipl5scene13SettingSelectFv

# .text:0x1DF8 | 0x814098F4 | size: 0x94
# ipl::scene::SettingSelect::iplSettingSelect_814098F4()
.fn iplSettingSelect_814098F4__Q33ipl5scene13SettingSelectFv, global
/* 814098F4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814098F8 | 7C 08 02 A6 */	mflr r0
/* 814098FC | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81409900 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81409904 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81409908 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8140990C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81409910 | 7C 7E 1B 78 */	mr r30, r3
/* 81409914 | 80 64 00 84 */	lwz r3, 0x84(r4)
/* 81409918 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 8140991C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81409920 | 40 82 00 50 */	bne .L_81409970
/* 81409924 | 3B E0 00 00 */	li r31, 0x0
.L_81409928:
/* 81409928 | 7F E3 FB 78 */	mr r3, r31
/* 8140992C | 4B F2 C0 9D */	bl getController__Q23ipl6SystemFi
/* 81409930 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81409934 | 41 82 00 14 */	beq .L_81409948
/* 81409938 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140993C | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 81409940 | 7D 89 03 A6 */	mtctr r12
/* 81409944 | 4E 80 04 21 */	bctrl
.L_81409948:
/* 81409948 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8140994C | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 81409950 | 41 80 FF D8 */	blt .L_81409928
/* 81409954 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81409958 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8140995C | 80 63 00 A8 */	lwz r3, 0xa8(r3)
/* 81409960 | 4B F5 71 79 */	bl abort__Q33ipl3bs27ManagerFv
/* 81409964 | 4B F2 A3 25 */	bl stopReceiveSchedule__Q23ipl6SystemFv
/* 81409968 | 38 00 00 01 */	li r0, 0x1
/* 8140996C | 90 1E 00 94 */	stw r0, 0x94(r30)
.L_81409970:
/* 81409970 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81409974 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81409978 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8140997C | 7C 08 03 A6 */	mtlr r0
/* 81409980 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81409984 | 4E 80 00 20 */	blr
.endfn iplSettingSelect_814098F4__Q33ipl5scene13SettingSelectFv

# .text:0x1E8C | 0x81409988 | size: 0x64
# ipl::scene::SettingSelect::iplSettingSelect_81409988()
.fn iplSettingSelect_81409988__Q33ipl5scene13SettingSelectFv, global
/* 81409988 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140998C | 7C 08 02 A6 */	mflr r0
/* 81409990 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81409994 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81409998 | 7C 7F 1B 78 */	mr r31, r3
/* 8140999C | 38 60 00 01 */	li r3, 0x1
/* 814099A0 | 48 16 FD 65 */	bl __WPADReconnect
/* 814099A4 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 814099A8 | 38 80 00 14 */	li r4, 0x14
/* 814099AC | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 814099B0 | 4B F6 21 61 */	bl stopAllSound__Q33ipl3snd6SystemFi
/* 814099B4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 814099B8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 814099BC | 80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 814099C0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814099C4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 814099C8 | 7D 89 03 A6 */	mtctr r12
/* 814099CC | 4E 80 04 21 */	bctrl
/* 814099D0 | 38 00 00 03 */	li r0, 0x3
/* 814099D4 | 90 1F 00 94 */	stw r0, 0x94(r31)
/* 814099D8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814099DC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814099E0 | 7C 08 03 A6 */	mtlr r0
/* 814099E4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814099E8 | 4E 80 00 20 */	blr
.endfn iplSettingSelect_81409988__Q33ipl5scene13SettingSelectFv

# .text:0x1EF0 | 0x814099EC | size: 0x198
# ipl::scene::SettingSelect::iplSettingSelect_814099EC()
.fn iplSettingSelect_814099EC__Q33ipl5scene13SettingSelectFv, global
/* 814099EC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814099F0 | 7C 08 02 A6 */	mflr r0
/* 814099F4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814099F8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814099FC | 48 1E FA C5 */	bl _savegpr_27
/* 81409A00 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81409A04 | 3F 60 81 66 */	lis r27, lbl_816581B8@ha
/* 81409A08 | 3B A3 90 08 */	addi r29, r3, smArg__Q23ipl6System@l
/* 81409A0C | 80 7D 00 C4 */	lwz r3, 0xc4(r29)
/* 81409A10 | 3B 7B 81 B8 */	addi r27, r27, lbl_816581B8@l
/* 81409A14 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81409A18 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81409A1C | 7D 89 03 A6 */	mtctr r12
/* 81409A20 | 4E 80 04 21 */	bctrl
/* 81409A24 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81409A28 | 40 82 01 44 */	bne .L_81409B6C
/* 81409A2C | 3F 80 81 09 */	lis r28, sSystem__Q23ipl3snd@ha
/* 81409A30 | 48 00 00 58 */	b .L_81409A88
.L_81409A34:
/* 81409A34 | 38 7C 99 2C */	addi r3, r28, sSystem__Q23ipl3snd@l
/* 81409A38 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81409A3C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81409A40 | 7D 89 03 A6 */	mtctr r12
/* 81409A44 | 4E 80 04 21 */	bctrl
/* 81409A48 | 80 7D 00 A8 */	lwz r3, 0xa8(r29)
/* 81409A4C | 4B F5 6E 4D */	bl update__Q33ipl3bs27ManagerFv
/* 81409A50 | 48 13 35 99 */	bl VIWaitForRetrace
/* 81409A54 | 48 16 FD 59 */	bl WPADGetStatus
/* 81409A58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81409A5C | 41 82 00 10 */	beq .L_81409A6C
/* 81409A60 | 38 7B 04 89 */	addi r3, r27, 0x489
/* 81409A64 | 4C C6 31 82 */	crclr cr1eq
/* 81409A68 | 48 12 4C 39 */	bl OSReport
.L_81409A6C:
/* 81409A6C | 80 7D 00 A8 */	lwz r3, 0xa8(r29)
/* 81409A70 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81409A74 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 81409A78 | 41 82 00 10 */	beq .L_81409A88
/* 81409A7C | 38 7B 04 98 */	addi r3, r27, 0x498
/* 81409A80 | 4C C6 31 82 */	crclr cr1eq
/* 81409A84 | 48 12 4C 1D */	bl OSReport
.L_81409A88:
/* 81409A88 | 48 16 FD 25 */	bl WPADGetStatus
/* 81409A8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81409A90 | 40 82 FF A4 */	bne .L_81409A34
/* 81409A94 | 80 7D 00 A8 */	lwz r3, 0xa8(r29)
/* 81409A98 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81409A9C | 2C 00 00 08 */	cmpwi r0, 0x8
/* 81409AA0 | 40 82 FF 94 */	bne .L_81409A34
/* 81409AA4 | 38 60 00 01 */	li r3, 0x1
/* 81409AA8 | 48 13 46 81 */	bl VISetBlack
/* 81409AAC | 48 13 44 F5 */	bl VIFlush
/* 81409AB0 | 48 13 35 39 */	bl VIWaitForRetrace
/* 81409AB4 | 38 7B 04 A6 */	addi r3, r27, 0x4a6
/* 81409AB8 | 4C C6 31 82 */	crclr cr1eq
/* 81409ABC | 48 12 4B E5 */	bl OSReport
/* 81409AC0 | 48 00 00 10 */	b .L_81409AD0
.L_81409AC4:
/* 81409AC4 | 38 7B 04 B0 */	addi r3, r27, 0x4b0
/* 81409AC8 | 4C C6 31 82 */	crclr cr1eq
/* 81409ACC | 48 12 4B D5 */	bl OSReport
.L_81409AD0:
/* 81409AD0 | 48 12 95 B1 */	bl __OSSyncSram
/* 81409AD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81409AD8 | 41 82 FF EC */	beq .L_81409AC4
/* 81409ADC | 38 00 00 00 */	li r0, 0x0
/* 81409AE0 | 3B C0 00 05 */	li r30, 0x5
/* 81409AE4 | 7F E0 F1 D6 */	mullw r31, r0, r30
/* 81409AE8 | 3F 80 80 00 */	lis r28, 0x8000
/* 81409AEC | 3B A0 03 E8 */	li r29, 0x3e8
/* 81409AF0 | 48 00 00 2C */	b .L_81409B1C
.L_81409AF4:
/* 81409AF4 | 38 7B 04 BB */	addi r3, r27, 0x4bb
/* 81409AF8 | 4C C6 31 82 */	crclr cr1eq
/* 81409AFC | 48 12 4B A5 */	bl OSReport
/* 81409B00 | 80 1C 00 F8 */	lwz r0, 0xf8(r28)
/* 81409B04 | 54 00 F0 BE */	srwi r0, r0, 2
/* 81409B08 | 7C 60 EB 96 */	divwu r3, r0, r29
/* 81409B0C | 7C 03 F0 16 */	mulhwu r0, r3, r30
/* 81409B10 | 1C 83 00 05 */	mulli r4, r3, 0x5
/* 81409B14 | 7C 60 FA 14 */	add r3, r0, r31
/* 81409B18 | 48 12 C0 B5 */	bl OSSleepTicks
.L_81409B1C:
/* 81409B1C | 4B F2 A2 B1 */	bl isReceiveScheduleStopped__Q23ipl6SystemFv
/* 81409B20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81409B24 | 41 82 FF D0 */	beq .L_81409AF4
/* 81409B28 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81409B2C | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81409B30 | 80 C4 02 2C */	lwz r6, 0x22c(r4)
/* 81409B34 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81409B38 | 41 82 00 20 */	beq .L_81409B58
/* 81409B3C | 80 64 02 D0 */	lwz r3, 0x2d0(r4)
/* 81409B40 | 38 A0 00 05 */	li r5, 0x5
/* 81409B44 | 80 84 02 D4 */	lwz r4, 0x2d4(r4)
/* 81409B48 | 38 E0 00 00 */	li r7, 0x0
/* 81409B4C | 4C C6 31 82 */	crclr cr1eq
/* 81409B50 | 48 12 5D E5 */	bl fn_8152F934
/* 81409B54 | 48 00 00 08 */	b .L_81409B5C
.L_81409B58:
/* 81409B58 | 4B F7 69 E5 */	bl OSRebootSystem
.L_81409B5C:
/* 81409B5C | 38 6D 92 3C */	li r3, lbl_8169727C@sda21
/* 81409B60 | 4C C6 31 82 */	crclr cr1eq
/* 81409B64 | 48 12 4B 3D */	bl OSReport
/* 81409B68 | 4B FF FF F4 */	b .L_81409B5C
.L_81409B6C:
/* 81409B6C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81409B70 | 48 1E F9 9D */	bl _restgpr_27
/* 81409B74 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81409B78 | 7C 08 03 A6 */	mtlr r0
/* 81409B7C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81409B80 | 4E 80 00 20 */	blr
.endfn iplSettingSelect_814099EC__Q33ipl5scene13SettingSelectFv

# .text:0x2088 | 0x81409B84 | size: 0x58
# ipl::scene::SettingSelect::~SettingSelect()
.fn __dt__Q33ipl5scene13SettingSelectFv, global
/* 81409B84 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81409B88 | 7C 08 02 A6 */	mflr r0
/* 81409B8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81409B90 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81409B94 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81409B98 | 7C 9F 23 78 */	mr r31, r4
/* 81409B9C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81409BA0 | 7C 7E 1B 78 */	mr r30, r3
/* 81409BA4 | 41 82 00 1C */	beq .L_81409BC0
/* 81409BA8 | 38 80 00 00 */	li r4, 0x0
/* 81409BAC | 48 00 00 B9 */	bl fn_81409C64
/* 81409BB0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81409BB4 | 40 81 00 0C */	ble .L_81409BC0
/* 81409BB8 | 7F C3 F3 78 */	mr r3, r30
/* 81409BBC | 48 1E E5 29 */	bl __dl__FPv
.L_81409BC0:
/* 81409BC0 | 7F C3 F3 78 */	mr r3, r30
/* 81409BC4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81409BC8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81409BCC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81409BD0 | 7C 08 03 A6 */	mtlr r0
/* 81409BD4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81409BD8 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene13SettingSelectFv

# .text:0x20E0 | 0x81409BDC | size: 0x8
.fn "@20@__dt__Q33ipl5scene13SettingSelectFv", global
/* 81409BDC | 38 63 FF EC */	subi r3, r3, 0x14
/* 81409BE0 | 4B FF FF A4 */	b __dt__Q33ipl5scene13SettingSelectFv
.endfn "@20@__dt__Q33ipl5scene13SettingSelectFv"

# .text:0x20E8 | 0x81409BE4 | size: 0x8
# ipl::scene::SettingSelect::@84@onEvent(unsigned long, unsigned long, void*)
.fn "@84@onEvent__Q33ipl5scene13SettingSelectFUlUlPv", global
/* 81409BE4 | 38 63 FF AC */	subi r3, r3, 0x54
/* 81409BE8 | 4B FF FB 80 */	b onEvent__Q33ipl5scene13SettingSelectFUlUlPv
.endfn "@84@onEvent__Q33ipl5scene13SettingSelectFUlUlPv"

# 0x816581B8..0x81658788 | size: 0x5D0
.data
.balign 8

# .data:0x0 | 0x816581B8 | size: 0x10
.obj lbl_816581B8, global
	.string "B_DataManage_00"
.endobj lbl_816581B8

# .data:0x10 | 0x816581C8 | size: 0xD
.obj lbl_816581C8, global
	.string "B_Setting_00"
.endobj lbl_816581C8

# .data:0x1D | 0x816581D5 | size: 0xE
.obj lbl_816581D5, global
	.string "B_SaveData_00"
.endobj lbl_816581D5

# .data:0x2B | 0x816581E3 | size: 0xD
.obj lbl_816581E3, global
	.string "B_Channel_00"
.endobj lbl_816581E3

# .data:0x38 | 0x816581F0 | size: 0x9
.obj lbl_816581F0, global
	.string "B_Wii_00"
.endobj lbl_816581F0

# .data:0x41 | 0x816581F9 | size: 0xB
.obj lbl_816581F9, global
	.4byte 0x425F4375
	.4byte 0x62655F30
	.byte 0x30, 0x00, 0x00
.endobj lbl_816581F9

# .data:0x4C | 0x81658204 | size: 0x18
.obj lbl_81658204, global
	.4byte lbl_816581B8
	.4byte lbl_816581C8
	.4byte lbl_816581D5
	.4byte lbl_816581E3
	.4byte lbl_816581F0
	.4byte lbl_816581F9
.endobj lbl_81658204

# .data:0x64 | 0x8165821C | size: 0x3BC
.obj lbl_8165821C, global
	.4byte 0x73657475
	.4byte 0x7053656C
	.4byte 0x2E617368
	.4byte 0x0069745F
	.4byte 0x4F626A53
	.4byte 0x65745570
	.4byte 0x5F612E62
	.4byte 0x726C7974
	.4byte 0x0069745F
	.4byte 0x4F626A53
	.4byte 0x65745570
	.4byte 0x5F615F53
	.4byte 0x65745570
	.4byte 0x496E2E62
	.4byte 0x726C616E
	.4byte 0x00475F44
	.4byte 0x6174614D
	.4byte 0x616E6167
	.4byte 0x655F3030
	.4byte 0x0069745F
	.4byte 0x4F626A53
	.4byte 0x65745570
	.4byte 0x5F615F53
	.4byte 0x65745570
	.4byte 0x466F7563
	.4byte 0x7573496E
	.4byte 0x2E62726C
	.4byte 0x616E0069
	.4byte 0x745F4F62
	.4byte 0x6A536574
	.4byte 0x55705F61
	.4byte 0x5F536574
	.4byte 0x5570466F
	.4byte 0x75637573
	.4byte 0x4F75742E
	.4byte 0x62726C61
	.4byte 0x6E006974
	.4byte 0x5F4F626A
	.4byte 0x53657455
	.4byte 0x705F615F
	.4byte 0x53657455
	.4byte 0x70466F75
	.4byte 0x63757346
	.4byte 0x6C617368
	.4byte 0x2E62726C
	.4byte 0x616E0047
	.4byte 0x5F446174
	.4byte 0x614D616E
	.4byte 0x6167655F
	.4byte 0x30310069
	.4byte 0x745F4F62
	.4byte 0x6A536574
	.4byte 0x55705F61
	.4byte 0x5F536574
	.4byte 0x55704F75
	.4byte 0x742E6272
	.4byte 0x6C616E00
	.4byte 0x69745F4F
	.4byte 0x626A5365
	.4byte 0x7455705F
	.4byte 0x615F5365
	.4byte 0x74557042
	.4byte 0x61636B2E
	.4byte 0x62726C61
	.4byte 0x6E00475F
	.4byte 0x53657474
	.4byte 0x696E675F
	.4byte 0x30300047
	.4byte 0x5F536574
	.4byte 0x74696E67
	.4byte 0x5F303100
	.4byte 0x69745F4F
	.4byte 0x626A5365
	.4byte 0x7455705F
	.4byte 0x615F4461
	.4byte 0x74614368
	.4byte 0x616E6E65
	.4byte 0x6C496E2E
	.4byte 0x62726C61
	.4byte 0x6E00475F
	.4byte 0x53617665
	.4byte 0x44617461
	.4byte 0x5F303000
	.4byte 0x69745F4F
	.4byte 0x626A5365
	.4byte 0x7455705F
	.4byte 0x615F4461
	.4byte 0x74614368
	.4byte 0x616E6E65
	.4byte 0x6C466F75
	.4byte 0x63757349
	.4byte 0x6E2E6272
	.4byte 0x6C616E00
	.4byte 0x69745F4F
	.4byte 0x626A5365
	.4byte 0x7455705F
	.4byte 0x615F4461
	.4byte 0x74614368
	.4byte 0x616E6E65
	.4byte 0x6C466F75
	.4byte 0x6375734F
	.4byte 0x75742E62
	.4byte 0x726C616E
	.4byte 0x0069745F
	.4byte 0x4F626A53
	.4byte 0x65745570
	.4byte 0x5F615F44
	.4byte 0x61746143
	.4byte 0x68616E6E
	.4byte 0x656C466F
	.4byte 0x75637573
	.4byte 0x466C6173
	.4byte 0x682E6272
	.4byte 0x6C616E00
	.4byte 0x475F5361
	.4byte 0x76654461
	.4byte 0x74615F30
	.4byte 0x31006974
	.4byte 0x5F4F626A
	.4byte 0x53657455
	.4byte 0x705F615F
	.4byte 0x44617461
	.4byte 0x4368616E
	.4byte 0x6E656C4F
	.4byte 0x75742E62
	.4byte 0x726C616E
	.4byte 0x0069745F
	.4byte 0x4F626A53
	.4byte 0x65745570
	.4byte 0x5F615F44
	.4byte 0x61746143
	.4byte 0x68616E6E
	.4byte 0x656C4261
	.4byte 0x636B2E62
	.4byte 0x726C616E
	.4byte 0x00475F43
	.4byte 0x68616E6E
	.4byte 0x656C5F30
	.4byte 0x3000475F
	.4byte 0x4368616E
	.4byte 0x6E656C5F
	.4byte 0x30310069
	.4byte 0x745F4F62
	.4byte 0x6A536574
	.4byte 0x55705F61
	.4byte 0x5F536176
	.4byte 0x65446174
	.4byte 0x61496E2E
	.4byte 0x62726C61
	.4byte 0x6E00475F
	.4byte 0x5769695F
	.4byte 0x30300069
	.4byte 0x745F4F62
	.4byte 0x6A536574
	.4byte 0x55705F61
	.4byte 0x5F536176
	.4byte 0x65446174
	.4byte 0x61466F75
	.4byte 0x63757349
	.4byte 0x6E2E6272
	.4byte 0x6C616E00
	.4byte 0x69745F4F
	.4byte 0x626A5365
	.4byte 0x7455705F
	.4byte 0x615F5361
	.4byte 0x76654461
	.4byte 0x7461466F
	.4byte 0x75637573
	.4byte 0x4F75742E
	.4byte 0x62726C61
	.4byte 0x6E006974
	.4byte 0x5F4F626A
	.4byte 0x53657455
	.4byte 0x705F615F
	.4byte 0x53617665
	.4byte 0x44617461
	.4byte 0x466F7563
	.4byte 0x7573466C
	.4byte 0x6173682E
	.4byte 0x62726C61
	.4byte 0x6E00475F
	.4byte 0x5769695F
	.4byte 0x30310069
	.4byte 0x745F4F62
	.4byte 0x6A536574
	.4byte 0x55705F61
	.4byte 0x5F536176
	.4byte 0x65446174
	.4byte 0x614F7574
	.4byte 0x2E62726C
	.4byte 0x616E0069
	.4byte 0x745F4F62
	.4byte 0x6A536574
	.4byte 0x55705F61
	.4byte 0x5F536176
	.4byte 0x65446174
	.4byte 0x61426163
	.4byte 0x6B2E6272
	.4byte 0x6C616E00
	.4byte 0x475F4375
	.4byte 0x62655F30
	.4byte 0x3000475F
	.4byte 0x43756265
	.4byte 0x5F303100
	.4byte 0x545F4461
	.4byte 0x74616D61
	.4byte 0x6E616765
	.4byte 0x305F3030
	.4byte 0x00545F44
	.4byte 0x6174614D
	.4byte 0x616E6167
	.4byte 0x655F3031
	.4byte 0x00545F53
	.4byte 0x65747469
	.4byte 0x6E675F30
	.4byte 0x3000545F
	.4byte 0x53617665
	.4byte 0x44617461
	.4byte 0x5F303000
	.4byte 0x545F5361
	.4byte 0x76654461
	.4byte 0x74615F30
	.4byte 0x3100545F
	.4byte 0x4368616E
	.4byte 0x6E656C5F
	.4byte 0x30300054
	.4byte 0x5F436861
	.4byte 0x6E6E656C
	.4byte 0x5F303100
	.4byte 0x545F5769
	.4byte 0x695F3030
	.4byte 0x00545F57
	.4byte 0x69695F30
	.4byte 0x3100545F
	.4byte 0x43756265
	.4byte 0x5F303000
	.4byte 0x545F4375
	.4byte 0x62655F30
	.4byte 0x31000000
.endobj lbl_8165821C

# .data:0x420 | 0x816585D8 | size: 0x44
.obj jumptable_816585D8, local
	.rel calc__Q33ipl5scene13SettingSelectFv, .L_814082CC
	.rel calc__Q33ipl5scene13SettingSelectFv, .L_814082D4
	.rel calc__Q33ipl5scene13SettingSelectFv, .L_81408304
	.rel calc__Q33ipl5scene13SettingSelectFv, .L_814082DC
	.rel calc__Q33ipl5scene13SettingSelectFv, .L_814082E4
	.rel calc__Q33ipl5scene13SettingSelectFv, .L_81408304
	.rel calc__Q33ipl5scene13SettingSelectFv, .L_814082EC
	.rel calc__Q33ipl5scene13SettingSelectFv, .L_814082F4
	.rel calc__Q33ipl5scene13SettingSelectFv, .L_81408304
	.rel calc__Q33ipl5scene13SettingSelectFv, .L_814082FC
	.rel calc__Q33ipl5scene13SettingSelectFv, .L_8140830C
	.rel calc__Q33ipl5scene13SettingSelectFv, .L_81408314
	.rel calc__Q33ipl5scene13SettingSelectFv, .L_8140831C
	.rel calc__Q33ipl5scene13SettingSelectFv, .L_81408324
	.rel calc__Q33ipl5scene13SettingSelectFv, .L_8140832C
	.rel calc__Q33ipl5scene13SettingSelectFv, .L_81408334
	.rel calc__Q33ipl5scene13SettingSelectFv, .L_8140833C
.endobj jumptable_816585D8

# .data:0x464 | 0x8165861C | size: 0x16
.obj lbl_8165861C, global
	.string "WIPL_SE_BT_TARGETTING"
.endobj lbl_8165861C

# .data:0x47A | 0x81658632 | size: 0xB6
.obj lbl_81658632, global
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x44454349
	.4byte 0x44450077
	.4byte 0x61697420
	.4byte 0x666F7220
	.4byte 0x57504144
	.4byte 0x0A007761
	.4byte 0x69742066
	.4byte 0x6F722042
	.4byte 0x53320A00
	.4byte 0x56492042
	.4byte 0x6C61636B
	.4byte 0x0A007379
	.4byte 0x6E632073
	.4byte 0x72616D0A
	.4byte 0x00576169
	.4byte 0x74205363
	.4byte 0x68656475
	.4byte 0x6C655374
	.4byte 0x6F707065
	.4byte 0x640A0000
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
.endobj lbl_81658632

# .data:0x530 | 0x816586E8 | size: 0xA0
# ipl::scene::SettingSelect::__vtable
.obj __vt__Q33ipl5scene13SettingSelect, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene13SettingSelectFv
	.4byte getParent__Q33ipl5scene4BaseFv
	.4byte getChild__Q33ipl5scene4BaseFv
	.4byte getNext__Q33ipl5scene4BaseFv
	.4byte getPrev__Q33ipl5scene4BaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@20@__dt__Q33ipl5scene13SettingSelectFv"
	.4byte isReady__Q33ipl5scene4BaseCFv
	.4byte isResetAcceptable__Q33ipl5scene4BaseCFv
	.4byte startResetting__Q33ipl5scene4BaseFv
	.4byte isResetProcessDone__Q33ipl5scene4BaseFv
	.4byte prepare__Q33ipl5scene13SettingSelectFv
	.4byte create__Q33ipl5scene13SettingSelectFv
	.4byte calc__Q33ipl5scene13SettingSelectFv
	.4byte draw__Q33ipl5scene13SettingSelectFv
	.4byte destroy__Q33ipl5scene4BaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@84@onEvent__Q33ipl5scene13SettingSelectFUlUlPv"
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
	.4byte onEvent__Q33ipl5scene13SettingSelectFUlUlPv
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
.endobj __vt__Q33ipl5scene13SettingSelect

# 0x81697278..0x81697288 | size: 0x10
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697278 | size: 0x4
.obj lbl_81697278, global
	.string "arc"
.endobj lbl_81697278

# .sdata:0x4 | 0x8169727C | size: 0xC
.obj lbl_8169727C, global
	.4byte 0x686F6765
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_8169727C
