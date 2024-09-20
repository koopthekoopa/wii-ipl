.include "macros.inc"
.file "iplKeyboard.cpp"

# 0x81354CD0..0x81356458 | size: 0x1788
.text
.balign 4

# .text:0x0 | 0x81354CD0 | size: 0x50
.fn iplKeyboardMgr_81354CD0, global
/* 81354CD0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81354CD4 | 7C 08 02 A6 */	mflr r0
/* 81354CD8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81354CDC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81354CE0 | 3B E0 00 00 */	li r31, 0x0
.L_81354CE4:
/* 81354CE4 | 7F E3 FB 78 */	mr r3, r31
/* 81354CE8 | 4B FE 0C E1 */	bl getController__Q23ipl6SystemFi
/* 81354CEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81354CF0 | 41 82 00 0C */	beq .L_81354CFC
/* 81354CF4 | 7F E3 FB 78 */	mr r3, r31
/* 81354CF8 | 48 00 00 14 */	b .L_81354D0C
.L_81354CFC:
/* 81354CFC | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81354D00 | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 81354D04 | 41 80 FF E0 */	blt .L_81354CE4
/* 81354D08 | 38 60 00 00 */	li r3, 0x0
.L_81354D0C:
/* 81354D0C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81354D10 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81354D14 | 7C 08 03 A6 */	mtlr r0
/* 81354D18 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81354D1C | 4E 80 00 20 */	blr
.endfn iplKeyboardMgr_81354CD0

# .text:0x50 | 0x81354D20 | size: 0x34
# ipl::keyboard::EventObserver::onCommand(textinput::CommandReceiver::INPUT_COMMAND, void*)
.fn onCommand__Q33ipl8keyboard13EventObserverFQ39textinput15CommandReceiver13INPUT_COMMANDPv, global
/* 81354D20 | 2C 04 00 25 */	cmpwi r4, 0x25
/* 81354D24 | 4C 82 00 20 */	bnelr
/* 81354D28 | 80 05 00 00 */	lwz r0, 0x0(r5)
/* 81354D2C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81354D30 | 4C 82 00 20 */	bnelr
/* 81354D34 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81354D38 | 80 85 00 04 */	lwz r4, 0x4(r5)
/* 81354D3C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81354D40 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 81354D44 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 81354D48 | 7D 89 03 A6 */	mtctr r12
/* 81354D4C | 4E 80 04 20 */	bctr
/* 81354D50 | 4E 80 00 20 */	blr
.endfn onCommand__Q33ipl8keyboard13EventObserverFQ39textinput15CommandReceiver13INPUT_COMMANDPv

# .text:0x84 | 0x81354D54 | size: 0x218
# ipl::keyboard::EventObserver::onSE(textinput::sound::SE)
.fn onSE__Q33ipl8keyboard13EventObserverFQ39textinput5sound2SE, global
/* 81354D54 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81354D58 | 7C 08 02 A6 */	mflr r0
/* 81354D5C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81354D60 | 38 04 FF FD */	subi r0, r4, 0x3
/* 81354D64 | 28 00 00 17 */	cmplwi r0, 0x17
/* 81354D68 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81354D6C | 3F E0 81 64 */	lis r31, lbl_816389E8@ha
/* 81354D70 | 3B FF 89 E8 */	addi r31, r31, lbl_816389E8@l
/* 81354D74 | 41 81 01 E4 */	bgt .L_81354F58
/* 81354D78 | 3C 80 81 64 */	lis r4, jumptable_81638C40@ha
/* 81354D7C | 54 00 10 3A */	slwi r0, r0, 2
/* 81354D80 | 38 84 8C 40 */	addi r4, r4, jumptable_81638C40@l
/* 81354D84 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 81354D88 | 7C 89 03 A6 */	mtctr r4
/* 81354D8C | 4E 80 04 20 */	bctr
.L_81354D90:
/* 81354D90 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81354D94 | 38 9F 00 B0 */	addi r4, r31, 0xb0
/* 81354D98 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81354D9C | 48 01 66 D1 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81354DA0 | 48 00 01 B8 */	b .L_81354F58
.L_81354DA4:
/* 81354DA4 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81354DA8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81354DAC | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 81354DB0 | 7D 89 03 A6 */	mtctr r12
/* 81354DB4 | 4E 80 04 21 */	bctrl
/* 81354DB8 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81354DBC | 38 9F 00 C8 */	addi r4, r31, 0xc8
/* 81354DC0 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81354DC4 | 48 01 66 A9 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81354DC8 | 48 00 01 90 */	b .L_81354F58
.L_81354DCC:
/* 81354DCC | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81354DD0 | 38 9F 00 DB */	addi r4, r31, 0xdb
/* 81354DD4 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81354DD8 | 48 01 66 95 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81354DDC | 48 00 01 7C */	b .L_81354F58
.L_81354DE0:
/* 81354DE0 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81354DE4 | 38 9F 00 EF */	addi r4, r31, 0xef
/* 81354DE8 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81354DEC | 48 01 66 81 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81354DF0 | 48 00 01 68 */	b .L_81354F58
.L_81354DF4:
/* 81354DF4 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81354DF8 | 38 9F 01 09 */	addi r4, r31, 0x109
/* 81354DFC | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81354E00 | 48 01 66 6D */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81354E04 | 48 00 01 54 */	b .L_81354F58
.L_81354E08:
/* 81354E08 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81354E0C | 38 9F 01 1D */	addi r4, r31, 0x11d
/* 81354E10 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81354E14 | 48 01 66 59 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81354E18 | 48 00 01 40 */	b .L_81354F58
.L_81354E1C:
/* 81354E1C | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81354E20 | 38 9F 01 30 */	addi r4, r31, 0x130
/* 81354E24 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81354E28 | 48 01 66 45 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81354E2C | 48 00 01 2C */	b .L_81354F58
.L_81354E30:
/* 81354E30 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81354E34 | 38 9F 01 44 */	addi r4, r31, 0x144
/* 81354E38 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81354E3C | 48 01 66 31 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81354E40 | 48 00 01 18 */	b .L_81354F58
.L_81354E44:
/* 81354E44 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81354E48 | 38 9F 01 58 */	addi r4, r31, 0x158
/* 81354E4C | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81354E50 | 48 01 66 1D */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81354E54 | 48 00 01 04 */	b .L_81354F58
.L_81354E58:
/* 81354E58 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81354E5C | 38 9F 00 B0 */	addi r4, r31, 0xb0
/* 81354E60 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81354E64 | 48 01 66 09 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81354E68 | 48 00 00 F0 */	b .L_81354F58
.L_81354E6C:
/* 81354E6C | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81354E70 | 38 9F 01 70 */	addi r4, r31, 0x170
/* 81354E74 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81354E78 | 48 01 65 F5 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81354E7C | 48 00 00 DC */	b .L_81354F58
.L_81354E80:
/* 81354E80 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81354E84 | 38 9F 01 89 */	addi r4, r31, 0x189
/* 81354E88 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81354E8C | 48 01 65 E1 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81354E90 | 48 00 00 C8 */	b .L_81354F58
.L_81354E94:
/* 81354E94 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81354E98 | 38 9F 01 94 */	addi r4, r31, 0x194
/* 81354E9C | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81354EA0 | 48 01 65 CD */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81354EA4 | 48 00 00 B4 */	b .L_81354F58
.L_81354EA8:
/* 81354EA8 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81354EAC | 38 9F 01 AA */	addi r4, r31, 0x1aa
/* 81354EB0 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81354EB4 | 48 01 65 B9 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81354EB8 | 48 00 00 A0 */	b .L_81354F58
.L_81354EBC:
/* 81354EBC | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81354EC0 | 38 9F 01 C1 */	addi r4, r31, 0x1c1
/* 81354EC4 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81354EC8 | 48 01 65 A5 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81354ECC | 48 00 00 8C */	b .L_81354F58
.L_81354ED0:
/* 81354ED0 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81354ED4 | 38 9F 01 D5 */	addi r4, r31, 0x1d5
/* 81354ED8 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81354EDC | 48 01 65 91 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81354EE0 | 48 00 00 78 */	b .L_81354F58
.L_81354EE4:
/* 81354EE4 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81354EE8 | 38 9F 01 E8 */	addi r4, r31, 0x1e8
/* 81354EEC | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81354EF0 | 48 01 65 7D */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81354EF4 | 48 00 00 64 */	b .L_81354F58
.L_81354EF8:
/* 81354EF8 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81354EFC | 38 9F 02 00 */	addi r4, r31, 0x200
/* 81354F00 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81354F04 | 48 01 65 69 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81354F08 | 48 00 00 50 */	b .L_81354F58
.L_81354F0C:
/* 81354F0C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81354F10 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81354F14 | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 81354F18 | 7D 89 03 A6 */	mtctr r12
/* 81354F1C | 4E 80 04 21 */	bctrl
/* 81354F20 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81354F24 | 38 9F 02 1B */	addi r4, r31, 0x21b
/* 81354F28 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81354F2C | 48 01 65 41 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81354F30 | 48 00 00 28 */	b .L_81354F58
.L_81354F34:
/* 81354F34 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81354F38 | 38 9F 02 31 */	addi r4, r31, 0x231
/* 81354F3C | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81354F40 | 48 01 65 2D */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81354F44 | 48 00 00 14 */	b .L_81354F58
.L_81354F48:
/* 81354F48 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81354F4C | 38 9F 02 40 */	addi r4, r31, 0x240
/* 81354F50 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81354F54 | 48 01 68 4D */	bl holdSE__Q33ipl3snd6SystemFPCc
.L_81354F58:
/* 81354F58 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81354F5C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81354F60 | 7C 08 03 A6 */	mtlr r0
/* 81354F64 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81354F68 | 4E 80 00 20 */	blr
.endfn onSE__Q33ipl8keyboard13EventObserverFQ39textinput5sound2SE

# .text:0x29C | 0x81354F6C | size: 0x14
# ipl::keyboard::EventObserver::onOK()
.fn onOK__Q33ipl8keyboard13EventObserverFv, global
/* 81354F6C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81354F70 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81354F74 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81354F78 | 7D 89 03 A6 */	mtctr r12
/* 81354F7C | 4E 80 04 20 */	bctr
.endfn onOK__Q33ipl8keyboard13EventObserverFv

# .text:0x2B0 | 0x81354F80 | size: 0x14
# ipl::keyboard::EventObserver::onCancel()
.fn onCancel__Q33ipl8keyboard13EventObserverFv, global
/* 81354F80 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81354F84 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81354F88 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81354F8C | 7D 89 03 A6 */	mtctr r12
/* 81354F90 | 4E 80 04 20 */	bctr
.endfn onCancel__Q33ipl8keyboard13EventObserverFv

# .text:0x2C4 | 0x81354F94 | size: 0x4F8
# ipl::keyboard::Manager::create(ipl::nand::File*, EGG::Heap*)
.fn create__Q33ipl8keyboard7ManagerFPQ33ipl4nand4FilePQ23EGG4Heap, global
/* 81354F94 | 94 21 FD 90 */	stwu r1, -0x270(r1)
/* 81354F98 | 7C 08 02 A6 */	mflr r0
/* 81354F9C | 90 01 02 74 */	stw r0, 0x274(r1)
/* 81354FA0 | 39 61 02 70 */	addi r11, r1, 0x270
/* 81354FA4 | 48 2A 45 19 */	bl _savegpr_26
/* 81354FA8 | 7C BC 2B 78 */	mr r28, r5
/* 81354FAC | 83 A4 00 A0 */	lwz r29, 0xa0(r4)
/* 81354FB0 | 3F E0 81 64 */	lis r31, lbl_816389E8@ha
/* 81354FB4 | 7C 7B 1B 78 */	mr r27, r3
/* 81354FB8 | 7F 84 E3 78 */	mr r4, r28
/* 81354FBC | 38 60 00 A4 */	li r3, 0xa4
/* 81354FC0 | 3B FF 89 E8 */	addi r31, r31, lbl_816389E8@l
/* 81354FC4 | 38 A0 00 04 */	li r5, 0x4
/* 81354FC8 | 48 2A 30 E9 */	bl __nw__FUlPQ23EGG4Heapi
/* 81354FCC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81354FD0 | 41 82 00 10 */	beq .L_81354FE0
/* 81354FD4 | 38 00 00 00 */	li r0, 0x0
/* 81354FD8 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 81354FDC | 90 03 00 04 */	stw r0, 0x4(r3)
.L_81354FE0:
/* 81354FE0 | 7C 7A 1B 78 */	mr r26, r3
/* 81354FE4 | 7F A4 EB 78 */	mr r4, r29
/* 81354FE8 | 38 AD 81 B8 */	li r5, lbl_816961F8@sda21
/* 81354FEC | 48 1D 53 9D */	bl fn_8152A388
/* 81354FF0 | 7F 84 E3 78 */	mr r4, r28
/* 81354FF4 | 38 60 00 1C */	li r3, 0x1c
/* 81354FF8 | 38 A0 00 04 */	li r5, 0x4
/* 81354FFC | 48 2A 30 B5 */	bl __nw__FUlPQ23EGG4Heapi
/* 81355000 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81355004 | 7C 7E 1B 78 */	mr r30, r3
/* 81355008 | 41 82 00 0C */	beq .L_81355014
/* 8135500C | 48 1D 53 E9 */	bl fn_8152A3F4
/* 81355010 | 7C 7E 1B 78 */	mr r30, r3
.L_81355014:
/* 81355014 | 7F C3 F3 78 */	mr r3, r30
/* 81355018 | 7F 44 D3 78 */	mr r4, r26
/* 8135501C | 48 1D 54 D9 */	bl fn_8152A4F4
/* 81355020 | 38 61 01 CC */	addi r3, r1, 0x1cc
/* 81355024 | 48 1D 53 11 */	bl fn_8152A334
/* 81355028 | 38 61 01 40 */	addi r3, r1, 0x140
/* 8135502C | 48 1D 53 09 */	bl fn_8152A334
/* 81355030 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 81355034 | 38 61 01 CC */	addi r3, r1, 0x1cc
/* 81355038 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 8135503C | 38 9F 02 B8 */	addi r4, r31, 0x2b8
/* 81355040 | 80 BD 00 DC */	lwz r5, 0xdc(r29)
/* 81355044 | 48 1D 53 05 */	bl fn_8152A348
/* 81355048 | 7F C3 F3 78 */	mr r3, r30
/* 8135504C | 38 81 01 CC */	addi r4, r1, 0x1cc
/* 81355050 | 48 1D 55 51 */	bl fn_8152A5A0
/* 81355054 | 80 BD 00 DC */	lwz r5, 0xdc(r29)
/* 81355058 | 38 61 01 40 */	addi r3, r1, 0x140
/* 8135505C | 38 9F 02 D1 */	addi r4, r31, 0x2d1
/* 81355060 | 48 1D 52 E9 */	bl fn_8152A348
/* 81355064 | 7F C3 F3 78 */	mr r3, r30
/* 81355068 | 38 81 01 40 */	addi r4, r1, 0x140
/* 8135506C | 48 1D 55 35 */	bl fn_8152A5A0
/* 81355070 | 38 61 00 B4 */	addi r3, r1, 0xb4
/* 81355074 | 48 1D 52 C1 */	bl fn_8152A334
/* 81355078 | 38 61 00 28 */	addi r3, r1, 0x28
/* 8135507C | 48 1D 52 B9 */	bl fn_8152A334
/* 81355080 | 80 BD 00 E4 */	lwz r5, 0xe4(r29)
/* 81355084 | 38 61 00 B4 */	addi r3, r1, 0xb4
/* 81355088 | 38 9F 02 F5 */	addi r4, r31, 0x2f5
/* 8135508C | 48 1D 52 BD */	bl fn_8152A348
/* 81355090 | 7F C3 F3 78 */	mr r3, r30
/* 81355094 | 38 81 00 B4 */	addi r4, r1, 0xb4
/* 81355098 | 48 1D 55 09 */	bl fn_8152A5A0
/* 8135509C | 80 BD 00 E4 */	lwz r5, 0xe4(r29)
/* 813550A0 | 38 61 00 28 */	addi r3, r1, 0x28
/* 813550A4 | 38 9F 03 0E */	addi r4, r31, 0x30e
/* 813550A8 | 48 1D 52 A1 */	bl fn_8152A348
/* 813550AC | 7F C3 F3 78 */	mr r3, r30
/* 813550B0 | 38 81 00 28 */	addi r4, r1, 0x28
/* 813550B4 | 48 1D 54 ED */	bl fn_8152A5A0
/* 813550B8 | 7F 84 E3 78 */	mr r4, r28
/* 813550BC | 38 60 00 14 */	li r3, 0x14
/* 813550C0 | 38 A0 00 04 */	li r5, 0x4
/* 813550C4 | 48 2A 2F ED */	bl __nw__FUlPQ23EGG4Heapi
/* 813550C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813550CC | 41 82 00 10 */	beq .L_813550DC
/* 813550D0 | 7F 84 E3 78 */	mr r4, r28
/* 813550D4 | 38 A0 00 04 */	li r5, 0x4
/* 813550D8 | 48 2A 09 A5 */	bl fn_815F5A7C
.L_813550DC:
/* 813550DC | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813550E0 | 38 00 00 0A */	li r0, 0xa
/* 813550E4 | 7C 7D 1B 78 */	mr r29, r3
/* 813550E8 | 90 6D AF 68 */	stw r3, lbl_81698FA8@sda21(r0)
/* 813550EC | 38 A4 90 08 */	addi r5, r4, smArg__Q23ipl6System@l
/* 813550F0 | 39 40 00 00 */	li r10, 0x0
/* 813550F4 | 39 60 00 00 */	li r11, 0x0
/* 813550F8 | 38 C0 00 00 */	li r6, 0x0
/* 813550FC | 38 60 00 00 */	li r3, 0x0
/* 81355100 | 7C 09 03 A6 */	mtctr r0
.L_81355104:
/* 81355104 | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 81355108 | 40 82 00 18 */	bne .L_81355120
/* 8135510C | 7C 85 1A 14 */	add r4, r5, r3
/* 81355110 | 80 04 01 90 */	lwz r0, 0x190(r4)
/* 81355114 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81355118 | 41 82 00 08 */	beq .L_81355120
/* 8135511C | 7C 0A 03 78 */	mr r10, r0
.L_81355120:
/* 81355120 | 2C 0B 00 00 */	cmpwi r11, 0x0
/* 81355124 | 40 82 00 24 */	bne .L_81355148
/* 81355128 | 7C 85 1A 14 */	add r4, r5, r3
/* 8135512C | 80 04 01 90 */	lwz r0, 0x190(r4)
/* 81355130 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81355134 | 41 82 00 14 */	beq .L_81355148
/* 81355138 | 38 06 00 0A */	addi r0, r6, 0xa
/* 8135513C | 54 00 10 3A */	slwi r0, r0, 2
/* 81355140 | 7C 85 02 14 */	add r4, r5, r0
/* 81355144 | 81 64 01 90 */	lwz r11, 0x190(r4)
.L_81355148:
/* 81355148 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 8135514C | 38 63 00 04 */	addi r3, r3, 0x4
/* 81355150 | 42 00 FF B4 */	bdnz .L_81355104
/* 81355154 | 3D 20 81 09 */	lis r9, smArg__Q23ipl6System@ha
/* 81355158 | 38 00 00 0A */	li r0, 0xa
/* 8135515C | 39 29 90 08 */	addi r9, r9, smArg__Q23ipl6System@l
/* 81355160 | 39 1F 00 00 */	addi r8, r31, 0x0
/* 81355164 | 38 DF 00 58 */	addi r6, r31, 0x58
/* 81355168 | 39 80 00 00 */	li r12, 0x0
/* 8135516C | 38 60 00 00 */	li r3, 0x0
/* 81355170 | 38 80 00 00 */	li r4, 0x0
/* 81355174 | 7C 09 03 A6 */	mtctr r0
.L_81355178:
/* 81355178 | 7C A9 22 14 */	add r5, r9, r4
/* 8135517C | 38 0C 00 0A */	addi r0, r12, 0xa
/* 81355180 | 83 45 01 90 */	lwz r26, 0x190(r5)
/* 81355184 | 54 00 10 3A */	slwi r0, r0, 2
/* 81355188 | 7C A9 02 14 */	add r5, r9, r0
/* 8135518C | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 81355190 | 80 05 01 90 */	lwz r0, 0x190(r5)
/* 81355194 | 40 82 00 08 */	bne .L_8135519C
/* 81355198 | 7D 5A 53 78 */	mr r26, r10
.L_8135519C:
/* 8135519C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813551A0 | 40 82 00 08 */	bne .L_813551A8
/* 813551A4 | 7D 60 5B 78 */	mr r0, r11
.L_813551A8:
/* 813551A8 | 7C E8 1A 14 */	add r7, r8, r3
/* 813551AC | 7C A6 1A 14 */	add r5, r6, r3
/* 813551B0 | 93 47 00 04 */	stw r26, 0x4(r7)
/* 813551B4 | 39 8C 00 01 */	addi r12, r12, 0x1
/* 813551B8 | 38 63 00 08 */	addi r3, r3, 0x8
/* 813551BC | 38 84 00 04 */	addi r4, r4, 0x4
/* 813551C0 | 90 05 00 04 */	stw r0, 0x4(r5)
/* 813551C4 | 42 00 FF B4 */	bdnz .L_81355178
/* 813551C8 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813551CC | 38 81 00 20 */	addi r4, r1, 0x20
/* 813551D0 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813551D4 | 38 7B 00 2E */	addi r3, r27, 0x2e
/* 813551D8 | 81 85 00 94 */	lwz r12, 0x94(r5)
/* 813551DC | 89 6C 03 30 */	lbz r11, 0x330(r12)
/* 813551E0 | 89 4C 03 31 */	lbz r10, 0x331(r12)
/* 813551E4 | 89 2C 03 32 */	lbz r9, 0x332(r12)
/* 813551E8 | 89 0C 03 33 */	lbz r8, 0x333(r12)
/* 813551EC | 88 EC 03 34 */	lbz r7, 0x334(r12)
/* 813551F0 | 88 CC 03 35 */	lbz r6, 0x335(r12)
/* 813551F4 | 88 AC 03 36 */	lbz r5, 0x336(r12)
/* 813551F8 | 88 0C 03 37 */	lbz r0, 0x337(r12)
/* 813551FC | 99 61 00 10 */	stb r11, 0x10(r1)
/* 81355200 | 99 41 00 11 */	stb r10, 0x11(r1)
/* 81355204 | 99 21 00 12 */	stb r9, 0x12(r1)
/* 81355208 | 99 01 00 13 */	stb r8, 0x13(r1)
/* 8135520C | 98 E1 00 14 */	stb r7, 0x14(r1)
/* 81355210 | 98 C1 00 15 */	stb r6, 0x15(r1)
/* 81355214 | 98 A1 00 16 */	stb r5, 0x16(r1)
/* 81355218 | 98 01 00 17 */	stb r0, 0x17(r1)
/* 8135521C | 99 61 00 08 */	stb r11, 0x8(r1)
/* 81355220 | 99 41 00 09 */	stb r10, 0x9(r1)
/* 81355224 | 99 21 00 0A */	stb r9, 0xa(r1)
/* 81355228 | 99 01 00 0B */	stb r8, 0xb(r1)
/* 8135522C | 98 E1 00 0C */	stb r7, 0xc(r1)
/* 81355230 | 98 C1 00 0D */	stb r6, 0xd(r1)
/* 81355234 | 98 A1 00 0E */	stb r5, 0xe(r1)
/* 81355238 | 98 01 00 0F */	stb r0, 0xf(r1)
/* 8135523C | 99 61 00 20 */	stb r11, 0x20(r1)
/* 81355240 | 99 41 00 21 */	stb r10, 0x21(r1)
/* 81355244 | 99 21 00 22 */	stb r9, 0x22(r1)
/* 81355248 | 99 01 00 23 */	stb r8, 0x23(r1)
/* 8135524C | 98 E1 00 24 */	stb r7, 0x24(r1)
/* 81355250 | 98 C1 00 25 */	stb r6, 0x25(r1)
/* 81355254 | 98 A1 00 26 */	stb r5, 0x26(r1)
/* 81355258 | 98 01 00 27 */	stb r0, 0x27(r1)
/* 8135525C | 48 00 02 31 */	bl __as__Q49textinput6extend8savedata11MemoSettingFRCQ49textinput6extend8savedata11MemoSetting
/* 81355260 | 7F 84 E3 78 */	mr r4, r28
/* 81355264 | 38 60 00 7C */	li r3, 0x7c
/* 81355268 | 38 A0 00 04 */	li r5, 0x4
/* 8135526C | 48 2A 2E 45 */	bl __nw__FUlPQ23EGG4Heapi
/* 81355270 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81355274 | 7C 7C 1B 78 */	mr r28, r3
/* 81355278 | 41 82 00 5C */	beq .L_813552D4
/* 8135527C | 7F A4 EB 78 */	mr r4, r29
/* 81355280 | 7F C5 F3 78 */	mr r5, r30
/* 81355284 | 38 DB 00 08 */	addi r6, r27, 0x8
/* 81355288 | 48 0E 22 D1 */	bl __ct__Q29textinput7ManagerFP12MEMAllocatorPQ34nw4r3lyt24MultiArcResourceAccessorPQ29textinput13EventObserver
/* 8135528C | 3C 80 81 67 */	lis r4, __vt__Q49textinput6extend4memo7Manager@ha
/* 81355290 | 38 60 00 00 */	li r3, 0x0
/* 81355294 | 38 84 80 A8 */	addi r4, r4, __vt__Q49textinput6extend4memo7Manager@l
/* 81355298 | 38 00 00 01 */	li r0, 0x1
/* 8135529C | 90 9C 00 00 */	stw r4, 0x0(r28)
/* 813552A0 | 90 7C 00 40 */	stw r3, 0x40(r28)
/* 813552A4 | 90 1C 00 44 */	stw r0, 0x44(r28)
/* 813552A8 | 90 7C 00 50 */	stw r3, 0x50(r28)
/* 813552AC | 90 7C 00 54 */	stw r3, 0x54(r28)
/* 813552B0 | 90 7C 00 58 */	stw r3, 0x58(r28)
/* 813552B4 | 90 7C 00 5C */	stw r3, 0x5c(r28)
/* 813552B8 | 90 7C 00 60 */	stw r3, 0x60(r28)
/* 813552BC | 90 7C 00 64 */	stw r3, 0x64(r28)
/* 813552C0 | 90 7C 00 68 */	stw r3, 0x68(r28)
/* 813552C4 | 90 7C 00 6C */	stw r3, 0x6c(r28)
/* 813552C8 | 90 7C 00 70 */	stw r3, 0x70(r28)
/* 813552CC | 90 7C 00 74 */	stw r3, 0x74(r28)
/* 813552D0 | 90 7C 00 78 */	stw r3, 0x78(r28)
.L_813552D4:
/* 813552D4 | 93 9B 00 04 */	stw r28, 0x4(r27)
/* 813552D8 | 38 81 00 18 */	addi r4, r1, 0x18
/* 813552DC | 88 7B 00 2E */	lbz r3, 0x2e(r27)
/* 813552E0 | 88 1B 00 2F */	lbz r0, 0x2f(r27)
/* 813552E4 | 98 61 00 18 */	stb r3, 0x18(r1)
/* 813552E8 | 98 01 00 19 */	stb r0, 0x19(r1)
/* 813552EC | 88 7B 00 30 */	lbz r3, 0x30(r27)
/* 813552F0 | 88 1B 00 31 */	lbz r0, 0x31(r27)
/* 813552F4 | 98 61 00 1A */	stb r3, 0x1a(r1)
/* 813552F8 | 98 01 00 1B */	stb r0, 0x1b(r1)
/* 813552FC | 88 7B 00 32 */	lbz r3, 0x32(r27)
/* 81355300 | 88 1B 00 33 */	lbz r0, 0x33(r27)
/* 81355304 | 98 61 00 1C */	stb r3, 0x1c(r1)
/* 81355308 | 98 01 00 1D */	stb r0, 0x1d(r1)
/* 8135530C | 88 7B 00 34 */	lbz r3, 0x34(r27)
/* 81355310 | 88 1B 00 35 */	lbz r0, 0x35(r27)
/* 81355314 | 98 61 00 1E */	stb r3, 0x1e(r1)
/* 81355318 | 98 01 00 1F */	stb r0, 0x1f(r1)
/* 8135531C | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 81355320 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81355324 | 81 8C 00 D4 */	lwz r12, 0xd4(r12)
/* 81355328 | 7D 89 03 A6 */	mtctr r12
/* 8135532C | 4E 80 04 21 */	bctrl
/* 81355330 | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 81355334 | 38 80 00 00 */	li r4, 0x0
/* 81355338 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8135533C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81355340 | 7D 89 03 A6 */	mtctr r12
/* 81355344 | 4E 80 04 21 */	bctrl
/* 81355348 | 81 9B 00 08 */	lwz r12, 0x8(r27)
/* 8135534C | 38 7B 00 08 */	addi r3, r27, 0x8
/* 81355350 | 7F 64 DB 78 */	mr r4, r27
/* 81355354 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 81355358 | 7D 89 03 A6 */	mtctr r12
/* 8135535C | 4E 80 04 21 */	bctrl
/* 81355360 | 4B FE 07 2D */	bl getRegion__Q23ipl6SystemFv
/* 81355364 | 28 03 00 0B */	cmplwi r3, 0xb
/* 81355368 | 41 81 00 A8 */	bgt .L_81355410
/* 8135536C | 3C 80 81 64 */	lis r4, jumptable_81638D20@ha
/* 81355370 | 54 60 10 3A */	slwi r0, r3, 2
/* 81355374 | 38 84 8D 20 */	addi r4, r4, jumptable_81638D20@l
/* 81355378 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 8135537C | 7C 89 03 A6 */	mtctr r4
/* 81355380 | 4E 80 04 20 */	bctr
.L_81355384:
/* 81355384 | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 81355388 | 38 80 00 00 */	li r4, 0x0
/* 8135538C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81355390 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 81355394 | 7D 89 03 A6 */	mtctr r12
/* 81355398 | 4E 80 04 21 */	bctrl
/* 8135539C | 48 00 00 8C */	b .L_81355428
.L_813553A0:
/* 813553A0 | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813553A4 | 38 80 00 01 */	li r4, 0x1
/* 813553A8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813553AC | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813553B0 | 7D 89 03 A6 */	mtctr r12
/* 813553B4 | 4E 80 04 21 */	bctrl
/* 813553B8 | 48 00 00 70 */	b .L_81355428
.L_813553BC:
/* 813553BC | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813553C0 | 38 80 00 02 */	li r4, 0x2
/* 813553C4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813553C8 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813553CC | 7D 89 03 A6 */	mtctr r12
/* 813553D0 | 4E 80 04 21 */	bctrl
/* 813553D4 | 48 00 00 54 */	b .L_81355428
.L_813553D8:
/* 813553D8 | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813553DC | 38 80 00 03 */	li r4, 0x3
/* 813553E0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813553E4 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813553E8 | 7D 89 03 A6 */	mtctr r12
/* 813553EC | 4E 80 04 21 */	bctrl
/* 813553F0 | 48 00 00 38 */	b .L_81355428
.L_813553F4:
/* 813553F4 | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813553F8 | 38 80 00 04 */	li r4, 0x4
/* 813553FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81355400 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 81355404 | 7D 89 03 A6 */	mtctr r12
/* 81355408 | 4E 80 04 21 */	bctrl
/* 8135540C | 48 00 00 1C */	b .L_81355428
.L_81355410:
/* 81355410 | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 81355414 | 38 80 00 01 */	li r4, 0x1
/* 81355418 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8135541C | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 81355420 | 7D 89 03 A6 */	mtctr r12
/* 81355424 | 4E 80 04 21 */	bctrl
.L_81355428:
/* 81355428 | 4B FE 05 C5 */	bl getLanguage__Q23ipl6SystemFv
/* 8135542C | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 81355430 | 7C 64 1B 78 */	mr r4, r3
/* 81355434 | 7F 63 DB 78 */	mr r3, r27
/* 81355438 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8135543C | 7D 89 03 A6 */	mtctr r12
/* 81355440 | 4E 80 04 21 */	bctrl
/* 81355444 | 38 61 00 28 */	addi r3, r1, 0x28
/* 81355448 | 38 80 FF FF */	li r4, -0x1
/* 8135544C | 48 00 00 95 */	bl __dt__Q34nw4r3lyt11FontRefLinkFv
/* 81355450 | 38 61 00 B4 */	addi r3, r1, 0xb4
/* 81355454 | 38 80 FF FF */	li r4, -0x1
/* 81355458 | 48 00 00 89 */	bl __dt__Q34nw4r3lyt11FontRefLinkFv
/* 8135545C | 38 61 01 40 */	addi r3, r1, 0x140
/* 81355460 | 38 80 FF FF */	li r4, -0x1
/* 81355464 | 48 00 00 7D */	bl __dt__Q34nw4r3lyt11FontRefLinkFv
/* 81355468 | 38 61 01 CC */	addi r3, r1, 0x1cc
/* 8135546C | 38 80 FF FF */	li r4, -0x1
/* 81355470 | 48 00 00 71 */	bl __dt__Q34nw4r3lyt11FontRefLinkFv
/* 81355474 | 39 61 02 70 */	addi r11, r1, 0x270
/* 81355478 | 48 2A 40 91 */	bl _restgpr_26
/* 8135547C | 80 01 02 74 */	lwz r0, 0x274(r1)
/* 81355480 | 7C 08 03 A6 */	mtlr r0
/* 81355484 | 38 21 02 70 */	addi r1, r1, 0x270
/* 81355488 | 4E 80 00 20 */	blr
.endfn create__Q33ipl8keyboard7ManagerFPQ33ipl4nand4FilePQ23EGG4Heap

# .text:0x7BC | 0x8135548C | size: 0x44
# textinput::extend::savedata::MemoSetting::operator=(const textinput::extend::savedata::MemoSetting&)
.fn __as__Q49textinput6extend8savedata11MemoSettingFRCQ49textinput6extend8savedata11MemoSetting, global
/* 8135548C | 89 64 00 00 */	lbz r11, 0x0(r4)
/* 81355490 | 89 44 00 01 */	lbz r10, 0x1(r4)
/* 81355494 | 89 24 00 02 */	lbz r9, 0x2(r4)
/* 81355498 | 89 04 00 03 */	lbz r8, 0x3(r4)
/* 8135549C | 88 E4 00 04 */	lbz r7, 0x4(r4)
/* 813554A0 | 88 C4 00 05 */	lbz r6, 0x5(r4)
/* 813554A4 | 88 A4 00 06 */	lbz r5, 0x6(r4)
/* 813554A8 | 88 04 00 07 */	lbz r0, 0x7(r4)
/* 813554AC | 99 63 00 00 */	stb r11, 0x0(r3)
/* 813554B0 | 99 43 00 01 */	stb r10, 0x1(r3)
/* 813554B4 | 99 23 00 02 */	stb r9, 0x2(r3)
/* 813554B8 | 99 03 00 03 */	stb r8, 0x3(r3)
/* 813554BC | 98 E3 00 04 */	stb r7, 0x4(r3)
/* 813554C0 | 98 C3 00 05 */	stb r6, 0x5(r3)
/* 813554C4 | 98 A3 00 06 */	stb r5, 0x6(r3)
/* 813554C8 | 98 03 00 07 */	stb r0, 0x7(r3)
/* 813554CC | 4E 80 00 20 */	blr
.endfn __as__Q49textinput6extend8savedata11MemoSettingFRCQ49textinput6extend8savedata11MemoSetting

# .text:0x800 | 0x813554D0 | size: 0x8
# textinput::extend::memo::Manager::setSaveData(textinput::extend::savedata::MemoSetting)
.fn setSaveData__Q49textinput6extend4memo7ManagerFQ49textinput6extend8savedata11MemoSetting, global
/* 813554D0 | 38 63 00 48 */	addi r3, r3, 0x48
/* 813554D4 | 4B FF FF B8 */	b __as__Q49textinput6extend8savedata11MemoSettingFRCQ49textinput6extend8savedata11MemoSetting
.endfn setSaveData__Q49textinput6extend4memo7ManagerFQ49textinput6extend8savedata11MemoSetting

# .text:0x808 | 0x813554D8 | size: 0x8
# ipl::keyboard::EventObserver::setManager(ipl::keyboard::Manager*)
.fn setManager__Q33ipl8keyboard13EventObserverFPQ33ipl8keyboard7Manager, global
/* 813554D8 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 813554DC | 4E 80 00 20 */	blr
.endfn setManager__Q33ipl8keyboard13EventObserverFPQ33ipl8keyboard7Manager

# .text:0x810 | 0x813554E0 | size: 0x40
# nw4r::lyt::FontRefLink::~FontRefLink()
.fn __dt__Q34nw4r3lyt11FontRefLinkFv, global
/* 813554E0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813554E4 | 7C 08 02 A6 */	mflr r0
/* 813554E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813554EC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813554F0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813554F4 | 7C 7F 1B 78 */	mr r31, r3
/* 813554F8 | 41 82 00 10 */	beq .L_81355508
/* 813554FC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81355500 | 40 81 00 08 */	ble .L_81355508
/* 81355504 | 48 2A 2B E1 */	bl __dl__FPv
.L_81355508:
/* 81355508 | 7F E3 FB 78 */	mr r3, r31
/* 8135550C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81355510 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81355514 | 7C 08 03 A6 */	mtlr r0
/* 81355518 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8135551C | 4E 80 00 20 */	blr
.endfn __dt__Q34nw4r3lyt11FontRefLinkFv

# .text:0x850 | 0x81355520 | size: 0x6C
# ipl::keyboard::Manager::init()
.fn init__Q33ipl8keyboard7ManagerFv, global
/* 81355520 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81355524 | 7C 08 02 A6 */	mflr r0
/* 81355528 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8135552C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81355530 | 7C 7F 1B 78 */	mr r31, r3
/* 81355534 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81355538 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8135553C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81355540 | 7D 89 03 A6 */	mtctr r12
/* 81355544 | 4E 80 04 21 */	bctrl
/* 81355548 | 38 00 00 00 */	li r0, 0x0
/* 8135554C | 7F E3 FB 78 */	mr r3, r31
/* 81355550 | 90 1F 00 10 */	stw r0, 0x10(r31)
/* 81355554 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 81355558 | 90 1F 00 1C */	stw r0, 0x1c(r31)
/* 8135555C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81355560 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81355564 | 7D 89 03 A6 */	mtctr r12
/* 81355568 | 4E 80 04 21 */	bctrl
/* 8135556C | 3C 60 81 0D */	lis r3, sInstance__Q39textinput5input10HKBManager@ha
/* 81355570 | 38 63 88 44 */	addi r3, r3, sInstance__Q39textinput5input10HKBManager@l
/* 81355574 | 48 0F 21 D1 */	bl Initialize__Q39textinput5input10HKBManagerFv
/* 81355578 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135557C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81355580 | 7C 08 03 A6 */	mtlr r0
/* 81355584 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81355588 | 4E 80 00 20 */	blr
.endfn init__Q33ipl8keyboard7ManagerFv

# .text:0x8BC | 0x8135558C | size: 0xB0
# ipl::keyboard::Manager::changeAspectRatio()
.fn changeAspectRatio__Q33ipl8keyboard7ManagerFv, global
/* 8135558C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81355590 | 7C 08 02 A6 */	mflr r0
/* 81355594 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81355598 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8135559C | 7C 7F 1B 78 */	mr r31, r3
/* 813555A0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813555A4 | 4B FE 0E 85 */	bl __ct__Q34nw4r2ut4RectFv
/* 813555A8 | 48 21 4A 0D */	bl SCGetAspectRatio
/* 813555AC | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813555B0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813555B4 | 40 82 00 28 */	bne .L_813555DC
/* 813555B8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813555BC | 4B FE 03 B5 */	bl getProjectionRect16x9__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813555C0 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 813555C4 | 38 80 00 00 */	li r4, 0x0
/* 813555C8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813555CC | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 813555D0 | 7D 89 03 A6 */	mtctr r12
/* 813555D4 | 4E 80 04 21 */	bctrl
/* 813555D8 | 48 00 00 24 */	b .L_813555FC
.L_813555DC:
/* 813555DC | 38 61 00 08 */	addi r3, r1, 0x8
/* 813555E0 | 4B FE 03 6D */	bl getProjectionRect4x3__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813555E4 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 813555E8 | 38 80 00 01 */	li r4, 0x1
/* 813555EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813555F0 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 813555F4 | 7D 89 03 A6 */	mtctr r12
/* 813555F8 | 4E 80 04 21 */	bctrl
.L_813555FC:
/* 813555FC | C0 21 00 10 */	lfs f1, 0x10(r1)
/* 81355600 | C0 01 00 08 */	lfs f0, 0x8(r1)
/* 81355604 | C0 42 81 90 */	lfs f2, lbl_81694590@sda21(r0)
/* 81355608 | EC 01 00 28 */	fsubs f0, f1, f0
/* 8135560C | EC 00 00 B2 */	fmuls f0, f0, f2
/* 81355610 | D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 81355614 | C0 21 00 14 */	lfs f1, 0x14(r1)
/* 81355618 | C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8135561C | EC 01 00 28 */	fsubs f0, f1, f0
/* 81355620 | EC 00 00 B2 */	fmuls f0, f0, f2
/* 81355624 | D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 81355628 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8135562C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81355630 | 7C 08 03 A6 */	mtlr r0
/* 81355634 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81355638 | 4E 80 00 20 */	blr
.endfn changeAspectRatio__Q33ipl8keyboard7ManagerFv

# .text:0x96C | 0x8135563C | size: 0x524
# ipl::keyboard::Manager::calc()
.fn calc__Q33ipl8keyboard7ManagerFv, global
/* 8135563C | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81355640 | 7C 08 02 A6 */	mflr r0
/* 81355644 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81355648 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8135564C | 48 2A 3E 71 */	bl _savegpr_26
/* 81355650 | 80 83 00 38 */	lwz r4, 0x38(r3)
/* 81355654 | 7C 7B 1B 78 */	mr r27, r3
/* 81355658 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8135565C | 41 82 00 44 */	beq .L_813556A0
/* 81355660 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81355664 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81355668 | 80 63 00 94 */	lwz r3, 0x94(r3)
/* 8135566C | 48 00 28 71 */	bl isFinished__Q33ipl8savedata7ManagerFPQ33ipl4nand4File
/* 81355670 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81355674 | 41 82 00 2C */	beq .L_813556A0
/* 81355678 | 80 7B 00 38 */	lwz r3, 0x38(r27)
/* 8135567C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81355680 | 41 82 00 18 */	beq .L_81355698
/* 81355684 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81355688 | 38 80 00 01 */	li r4, 0x1
/* 8135568C | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 81355690 | 7D 89 03 A6 */	mtctr r12
/* 81355694 | 4E 80 04 21 */	bctrl
.L_81355698:
/* 81355698 | 38 00 00 00 */	li r0, 0x0
/* 8135569C | 90 1B 00 38 */	stw r0, 0x38(r27)
.L_813556A0:
/* 813556A0 | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813556A4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813556A8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813556AC | 7D 89 03 A6 */	mtctr r12
/* 813556B0 | 4E 80 04 21 */	bctrl
/* 813556B4 | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813556B8 | 83 9B 00 10 */	lwz r28, 0x10(r27)
/* 813556BC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813556C0 | 81 8C 00 E0 */	lwz r12, 0xe0(r12)
/* 813556C4 | 7D 89 03 A6 */	mtctr r12
/* 813556C8 | 4E 80 04 21 */	bctrl
/* 813556CC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813556D0 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813556D4 | 7D 89 03 A6 */	mtctr r12
/* 813556D8 | 4E 80 04 21 */	bctrl
/* 813556DC | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 813556E0 | 90 7B 00 10 */	stw r3, 0x10(r27)
/* 813556E4 | 40 82 00 20 */	bne .L_81355704
/* 813556E8 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813556EC | 40 82 00 18 */	bne .L_81355704
/* 813556F0 | 38 60 00 01 */	li r3, 0x1
/* 813556F4 | 38 00 00 00 */	li r0, 0x0
/* 813556F8 | 90 7B 00 14 */	stw r3, 0x14(r27)
/* 813556FC | 98 1B 00 18 */	stb r0, 0x18(r27)
/* 81355700 | 48 00 00 74 */	b .L_81355774
.L_81355704:
/* 81355704 | 2C 1C 00 01 */	cmpwi r28, 0x1
/* 81355708 | 40 82 00 24 */	bne .L_8135572C
/* 8135570C | 80 1B 00 10 */	lwz r0, 0x10(r27)
/* 81355710 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81355714 | 40 82 00 18 */	bne .L_8135572C
/* 81355718 | 38 60 00 02 */	li r3, 0x2
/* 8135571C | 38 00 00 00 */	li r0, 0x0
/* 81355720 | 90 7B 00 14 */	stw r3, 0x14(r27)
/* 81355724 | 98 1B 00 18 */	stb r0, 0x18(r27)
/* 81355728 | 48 00 00 4C */	b .L_81355774
.L_8135572C:
/* 8135572C | 2C 1C 00 02 */	cmpwi r28, 0x2
/* 81355730 | 40 82 00 1C */	bne .L_8135574C
/* 81355734 | 80 1B 00 10 */	lwz r0, 0x10(r27)
/* 81355738 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 8135573C | 40 82 00 10 */	bne .L_8135574C
/* 81355740 | 38 00 00 03 */	li r0, 0x3
/* 81355744 | 90 1B 00 14 */	stw r0, 0x14(r27)
/* 81355748 | 48 00 00 2C */	b .L_81355774
.L_8135574C:
/* 8135574C | 2C 1C 00 03 */	cmpwi r28, 0x3
/* 81355750 | 40 82 00 1C */	bne .L_8135576C
/* 81355754 | 80 1B 00 10 */	lwz r0, 0x10(r27)
/* 81355758 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135575C | 40 82 00 10 */	bne .L_8135576C
/* 81355760 | 38 00 00 04 */	li r0, 0x4
/* 81355764 | 90 1B 00 14 */	stw r0, 0x14(r27)
/* 81355768 | 48 00 00 0C */	b .L_81355774
.L_8135576C:
/* 8135576C | 38 00 00 00 */	li r0, 0x0
/* 81355770 | 90 1B 00 14 */	stw r0, 0x14(r27)
.L_81355774:
/* 81355774 | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 81355778 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8135577C | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81355780 | 7D 89 03 A6 */	mtctr r12
/* 81355784 | 4E 80 04 21 */	bctrl
/* 81355788 | 88 1B 00 2C */	lbz r0, 0x2c(r27)
/* 8135578C | 90 7B 00 1C */	stw r3, 0x1c(r27)
/* 81355790 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81355794 | 41 82 03 B4 */	beq .L_81355B48
/* 81355798 | 3F 80 81 0D */	lis r28, sInstance__Q39textinput5input10HKBManager@ha
/* 8135579C | 38 7C 88 44 */	addi r3, r28, sInstance__Q39textinput5input10HKBManager@l
/* 813557A0 | 48 0F 22 D9 */	bl Update__Q39textinput5input10HKBManagerFv
/* 813557A4 | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813557A8 | 38 9C 88 44 */	addi r4, r28, sInstance__Q39textinput5input10HKBManager@l
/* 813557AC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813557B0 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 813557B4 | 7D 89 03 A6 */	mtctr r12
/* 813557B8 | 4E 80 04 21 */	bctrl
/* 813557BC | 4B FF F5 15 */	bl iplKeyboardMgr_81354CD0
/* 813557C0 | 90 7B 00 20 */	stw r3, 0x20(r27)
/* 813557C4 | 4B FE 02 05 */	bl getController__Q23ipl6SystemFi
/* 813557C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813557CC | 7C 7E 1B 78 */	mr r30, r3
/* 813557D0 | 40 82 00 34 */	bne .L_81355804
/* 813557D4 | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 813557D8 | 38 80 00 00 */	li r4, 0x0
/* 813557DC | C0 22 81 94 */	lfs f1, lbl_81694594@sda21(r0)
/* 813557E0 | 38 A0 00 00 */	li r5, 0x0
/* 813557E4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813557E8 | 38 C0 00 00 */	li r6, 0x0
/* 813557EC | FC 40 08 90 */	fmr f2, f1
/* 813557F0 | 38 E0 00 00 */	li r7, 0x0
/* 813557F4 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813557F8 | 7D 89 03 A6 */	mtctr r12
/* 813557FC | 4E 80 04 21 */	bctrl
/* 81355800 | 48 00 03 48 */	b .L_81355B48
.L_81355804:
/* 81355804 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81355808 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8135580C | 7D 89 03 A6 */	mtctr r12
/* 81355810 | 4E 80 04 21 */	bctrl
/* 81355814 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81355818 | 7C 7F 1B 78 */	mr r31, r3
/* 8135581C | 7F C3 F3 78 */	mr r3, r30
/* 81355820 | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 81355824 | 7D 89 03 A6 */	mtctr r12
/* 81355828 | 4E 80 04 21 */	bctrl
/* 8135582C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81355830 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 81355834 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 81355838 | 90 61 00 10 */	stw r3, 0x10(r1)
/* 8135583C | 7F C3 F3 78 */	mr r3, r30
/* 81355840 | 83 BF 00 04 */	lwz r29, 0x4(r31)
/* 81355844 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 81355848 | 90 81 00 14 */	stw r4, 0x14(r1)
/* 8135584C | 7D 89 03 A6 */	mtctr r12
/* 81355850 | 4E 80 04 21 */	bctrl
/* 81355854 | 54 60 06 F7 */	rlwinm. r0, r3, 0, 27, 27
/* 81355858 | 41 82 00 08 */	beq .L_81355860
/* 8135585C | 63 BD 08 00 */	ori r29, r29, 0x800
.L_81355860:
/* 81355860 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81355864 | 7F C3 F3 78 */	mr r3, r30
/* 81355868 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8135586C | 7D 89 03 A6 */	mtctr r12
/* 81355870 | 4E 80 04 21 */	bctrl
/* 81355874 | 54 60 07 FF */	clrlwi. r0, r3, 31
/* 81355878 | 41 82 00 08 */	beq .L_81355880
/* 8135587C | 63 BD 00 08 */	ori r29, r29, 0x8
.L_81355880:
/* 81355880 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81355884 | 7F C3 F3 78 */	mr r3, r30
/* 81355888 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8135588C | 7D 89 03 A6 */	mtctr r12
/* 81355890 | 4E 80 04 21 */	bctrl
/* 81355894 | 54 60 04 63 */	rlwinm. r0, r3, 0, 17, 17
/* 81355898 | 41 82 00 08 */	beq .L_813558A0
/* 8135589C | 63 BD 00 04 */	ori r29, r29, 0x4
.L_813558A0:
/* 813558A0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813558A4 | 7F C3 F3 78 */	mr r3, r30
/* 813558A8 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 813558AC | 7D 89 03 A6 */	mtctr r12
/* 813558B0 | 4E 80 04 21 */	bctrl
/* 813558B4 | 54 60 07 BD */	rlwinm. r0, r3, 0, 30, 30
/* 813558B8 | 41 82 00 08 */	beq .L_813558C0
/* 813558BC | 63 BD 00 01 */	ori r29, r29, 0x1
.L_813558C0:
/* 813558C0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813558C4 | 7F C3 F3 78 */	mr r3, r30
/* 813558C8 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 813558CC | 7D 89 03 A6 */	mtctr r12
/* 813558D0 | 4E 80 04 21 */	bctrl
/* 813558D4 | 54 60 04 21 */	rlwinm. r0, r3, 0, 16, 16
/* 813558D8 | 41 82 00 08 */	beq .L_813558E0
/* 813558DC | 63 BD 00 02 */	ori r29, r29, 0x2
.L_813558E0:
/* 813558E0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813558E4 | 7F C3 F3 78 */	mr r3, r30
/* 813558E8 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 813558EC | 7D 89 03 A6 */	mtctr r12
/* 813558F0 | 4E 80 04 21 */	bctrl
/* 813558F4 | 54 60 04 E7 */	rlwinm. r0, r3, 0, 19, 19
/* 813558F8 | 41 82 00 08 */	beq .L_81355900
/* 813558FC | 63 BD 10 00 */	ori r29, r29, 0x1000
.L_81355900:
/* 81355900 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81355904 | 7F C3 F3 78 */	mr r3, r30
/* 81355908 | 83 9F 00 00 */	lwz r28, 0x0(r31)
/* 8135590C | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 81355910 | 7D 89 03 A6 */	mtctr r12
/* 81355914 | 4E 80 04 21 */	bctrl
/* 81355918 | 54 60 06 F7 */	rlwinm. r0, r3, 0, 27, 27
/* 8135591C | 41 82 00 08 */	beq .L_81355924
/* 81355920 | 63 9C 08 00 */	ori r28, r28, 0x800
.L_81355924:
/* 81355924 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81355928 | 7F C3 F3 78 */	mr r3, r30
/* 8135592C | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 81355930 | 7D 89 03 A6 */	mtctr r12
/* 81355934 | 4E 80 04 21 */	bctrl
/* 81355938 | 54 60 07 FF */	clrlwi. r0, r3, 31
/* 8135593C | 41 82 00 08 */	beq .L_81355944
/* 81355940 | 63 9C 00 08 */	ori r28, r28, 0x8
.L_81355944:
/* 81355944 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81355948 | 7F C3 F3 78 */	mr r3, r30
/* 8135594C | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 81355950 | 7D 89 03 A6 */	mtctr r12
/* 81355954 | 4E 80 04 21 */	bctrl
/* 81355958 | 54 60 04 63 */	rlwinm. r0, r3, 0, 17, 17
/* 8135595C | 41 82 00 08 */	beq .L_81355964
/* 81355960 | 63 9C 00 04 */	ori r28, r28, 0x4
.L_81355964:
/* 81355964 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81355968 | 7F C3 F3 78 */	mr r3, r30
/* 8135596C | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 81355970 | 7D 89 03 A6 */	mtctr r12
/* 81355974 | 4E 80 04 21 */	bctrl
/* 81355978 | 54 60 07 BD */	rlwinm. r0, r3, 0, 30, 30
/* 8135597C | 41 82 00 08 */	beq .L_81355984
/* 81355980 | 63 9C 00 01 */	ori r28, r28, 0x1
.L_81355984:
/* 81355984 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81355988 | 7F C3 F3 78 */	mr r3, r30
/* 8135598C | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 81355990 | 7D 89 03 A6 */	mtctr r12
/* 81355994 | 4E 80 04 21 */	bctrl
/* 81355998 | 54 60 04 21 */	rlwinm. r0, r3, 0, 16, 16
/* 8135599C | 41 82 00 08 */	beq .L_813559A4
/* 813559A0 | 63 9C 00 02 */	ori r28, r28, 0x2
.L_813559A4:
/* 813559A4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813559A8 | 7F C3 F3 78 */	mr r3, r30
/* 813559AC | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 813559B0 | 7D 89 03 A6 */	mtctr r12
/* 813559B4 | 4E 80 04 21 */	bctrl
/* 813559B8 | 54 60 04 E7 */	rlwinm. r0, r3, 0, 19, 19
/* 813559BC | 41 82 00 08 */	beq .L_813559C4
/* 813559C0 | 63 9C 10 00 */	ori r28, r28, 0x1000
.L_813559C4:
/* 813559C4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813559C8 | 7F C3 F3 78 */	mr r3, r30
/* 813559CC | 83 5F 00 08 */	lwz r26, 0x8(r31)
/* 813559D0 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 813559D4 | 7D 89 03 A6 */	mtctr r12
/* 813559D8 | 4E 80 04 21 */	bctrl
/* 813559DC | 54 60 06 F7 */	rlwinm. r0, r3, 0, 27, 27
/* 813559E0 | 41 82 00 08 */	beq .L_813559E8
/* 813559E4 | 63 5A 08 00 */	ori r26, r26, 0x800
.L_813559E8:
/* 813559E8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813559EC | 7F C3 F3 78 */	mr r3, r30
/* 813559F0 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 813559F4 | 7D 89 03 A6 */	mtctr r12
/* 813559F8 | 4E 80 04 21 */	bctrl
/* 813559FC | 54 60 07 FF */	clrlwi. r0, r3, 31
/* 81355A00 | 41 82 00 08 */	beq .L_81355A08
/* 81355A04 | 63 5A 00 08 */	ori r26, r26, 0x8
.L_81355A08:
/* 81355A08 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81355A0C | 7F C3 F3 78 */	mr r3, r30
/* 81355A10 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 81355A14 | 7D 89 03 A6 */	mtctr r12
/* 81355A18 | 4E 80 04 21 */	bctrl
/* 81355A1C | 54 60 04 63 */	rlwinm. r0, r3, 0, 17, 17
/* 81355A20 | 41 82 00 08 */	beq .L_81355A28
/* 81355A24 | 63 5A 00 04 */	ori r26, r26, 0x4
.L_81355A28:
/* 81355A28 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81355A2C | 7F C3 F3 78 */	mr r3, r30
/* 81355A30 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 81355A34 | 7D 89 03 A6 */	mtctr r12
/* 81355A38 | 4E 80 04 21 */	bctrl
/* 81355A3C | 54 60 07 BD */	rlwinm. r0, r3, 0, 30, 30
/* 81355A40 | 41 82 00 08 */	beq .L_81355A48
/* 81355A44 | 63 5A 00 01 */	ori r26, r26, 0x1
.L_81355A48:
/* 81355A48 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81355A4C | 7F C3 F3 78 */	mr r3, r30
/* 81355A50 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 81355A54 | 7D 89 03 A6 */	mtctr r12
/* 81355A58 | 4E 80 04 21 */	bctrl
/* 81355A5C | 54 60 04 21 */	rlwinm. r0, r3, 0, 16, 16
/* 81355A60 | 41 82 00 08 */	beq .L_81355A68
/* 81355A64 | 63 5A 00 02 */	ori r26, r26, 0x2
.L_81355A68:
/* 81355A68 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81355A6C | 7F C3 F3 78 */	mr r3, r30
/* 81355A70 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 81355A74 | 7D 89 03 A6 */	mtctr r12
/* 81355A78 | 4E 80 04 21 */	bctrl
/* 81355A7C | 54 60 04 E7 */	rlwinm. r0, r3, 0, 19, 19
/* 81355A80 | 41 82 00 08 */	beq .L_81355A88
/* 81355A84 | 63 5A 10 00 */	ori r26, r26, 0x1000
.L_81355A88:
/* 81355A88 | 38 61 00 18 */	addi r3, r1, 0x18
/* 81355A8C | 4B FE 09 9D */	bl __ct__Q34nw4r2ut4RectFv
/* 81355A90 | 38 61 00 18 */	addi r3, r1, 0x18
/* 81355A94 | 4B FD FE 85 */	bl getProjectionRect__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 81355A98 | C0 01 00 18 */	lfs f0, 0x18(r1)
/* 81355A9C | C0 21 00 10 */	lfs f1, 0x10(r1)
/* 81355AA0 | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 81355AA4 | 41 81 00 2C */	bgt .L_81355AD0
/* 81355AA8 | C0 01 00 20 */	lfs f0, 0x20(r1)
/* 81355AAC | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81355AB0 | 41 81 00 20 */	bgt .L_81355AD0
/* 81355AB4 | C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 81355AB8 | C0 21 00 14 */	lfs f1, 0x14(r1)
/* 81355ABC | FC 00 08 40 */	fcmpo cr0, f0, f1
/* 81355AC0 | 40 81 00 1C */	ble .L_81355ADC
/* 81355AC4 | C0 01 00 24 */	lfs f0, 0x24(r1)
/* 81355AC8 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81355ACC | 40 81 00 10 */	ble .L_81355ADC
.L_81355AD0:
/* 81355AD0 | C0 02 81 94 */	lfs f0, lbl_81694594@sda21(r0)
/* 81355AD4 | D0 01 00 14 */	stfs f0, 0x14(r1)
/* 81355AD8 | D0 01 00 10 */	stfs f0, 0x10(r1)
.L_81355ADC:
/* 81355ADC | 88 1F 00 5D */	lbz r0, 0x5d(r31)
/* 81355AE0 | 7C 00 07 75 */	extsb. r0, r0
/* 81355AE4 | 40 82 00 38 */	bne .L_81355B1C
/* 81355AE8 | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 81355AEC | 7F A5 EB 78 */	mr r5, r29
/* 81355AF0 | C0 01 00 14 */	lfs f0, 0x14(r1)
/* 81355AF4 | 7F 86 E3 78 */	mr r6, r28
/* 81355AF8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81355AFC | 7F 47 D3 78 */	mr r7, r26
/* 81355B00 | FC 40 00 50 */	fneg f2, f0
/* 81355B04 | C0 21 00 10 */	lfs f1, 0x10(r1)
/* 81355B08 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81355B0C | 38 80 00 00 */	li r4, 0x0
/* 81355B10 | 7D 89 03 A6 */	mtctr r12
/* 81355B14 | 4E 80 04 21 */	bctrl
/* 81355B18 | 48 00 00 30 */	b .L_81355B48
.L_81355B1C:
/* 81355B1C | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 81355B20 | 7F A5 EB 78 */	mr r5, r29
/* 81355B24 | C0 22 81 94 */	lfs f1, lbl_81694594@sda21(r0)
/* 81355B28 | 7F 86 E3 78 */	mr r6, r28
/* 81355B2C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81355B30 | 7F 47 D3 78 */	mr r7, r26
/* 81355B34 | FC 40 08 90 */	fmr f2, f1
/* 81355B38 | 38 80 00 00 */	li r4, 0x0
/* 81355B3C | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81355B40 | 7D 89 03 A6 */	mtctr r12
/* 81355B44 | 4E 80 04 21 */	bctrl
.L_81355B48:
/* 81355B48 | 39 61 00 40 */	addi r11, r1, 0x40
/* 81355B4C | 48 2A 39 BD */	bl _restgpr_26
/* 81355B50 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81355B54 | 7C 08 03 A6 */	mtlr r0
/* 81355B58 | 38 21 00 40 */	addi r1, r1, 0x40
/* 81355B5C | 4E 80 00 20 */	blr
.endfn calc__Q33ipl8keyboard7ManagerFv

# .text:0xE90 | 0x81355B60 | size: 0x8
# textinput::extend::memo::Manager::getState()
.fn getState__Q49textinput6extend4memo7ManagerFv, global
/* 81355B60 | 80 63 00 40 */	lwz r3, 0x40(r3)
/* 81355B64 | 4E 80 00 20 */	blr
.endfn getState__Q49textinput6extend4memo7ManagerFv

# .text:0xE98 | 0x81355B68 | size: 0x40
# ipl::keyboard::Manager::draw()
.fn draw__Q33ipl8keyboard7ManagerFv, global
/* 81355B68 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81355B6C | 7C 08 02 A6 */	mflr r0
/* 81355B70 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81355B74 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81355B78 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81355B7C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81355B80 | 7D 89 03 A6 */	mtctr r12
/* 81355B84 | 4E 80 04 21 */	bctrl
/* 81355B88 | 38 60 00 01 */	li r3, 0x1
/* 81355B8C | 38 80 00 07 */	li r4, 0x7
/* 81355B90 | 38 A0 00 01 */	li r5, 0x1
/* 81355B94 | 48 1F 1C 7D */	bl GXSetZMode
/* 81355B98 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81355B9C | 7C 08 03 A6 */	mtlr r0
/* 81355BA0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81355BA4 | 4E 80 00 20 */	blr
.endfn draw__Q33ipl8keyboard7ManagerFv

# .text:0xED8 | 0x81355BA8 | size: 0x14
# ipl::keyboard::Manager::memoDraw()
.fn memoDraw__Q33ipl8keyboard7ManagerFv, global
/* 81355BA8 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81355BAC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81355BB0 | 81 8C 00 D0 */	lwz r12, 0xd0(r12)
/* 81355BB4 | 7D 89 03 A6 */	mtctr r12
/* 81355BB8 | 4E 80 04 20 */	bctr
.endfn memoDraw__Q33ipl8keyboard7ManagerFv

# .text:0xEEC | 0x81355BBC | size: 0x58
# ipl::keyboard::Manager::setKeyboardType(int, ipl::keyboard::Manager::KeyboardType)
.fn setKeyboardType__Q33ipl8keyboard7ManagerFiQ43ipl8keyboard7Manager12KeyboardType, global
/* 81355BBC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81355BC0 | 7C 08 02 A6 */	mflr r0
/* 81355BC4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81355BC8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81355BCC | 7C BF 2B 78 */	mr r31, r5
/* 81355BD0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81355BD4 | 7C 7E 1B 78 */	mr r30, r3
/* 81355BD8 | 90 83 00 20 */	stw r4, 0x20(r3)
/* 81355BDC | 4B FF F0 F5 */	bl iplKeyboardMgr_81354CD0
/* 81355BE0 | 90 7E 00 20 */	stw r3, 0x20(r30)
/* 81355BE4 | 7F C3 F3 78 */	mr r3, r30
/* 81355BE8 | 7F E4 FB 78 */	mr r4, r31
/* 81355BEC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81355BF0 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 81355BF4 | 7D 89 03 A6 */	mtctr r12
/* 81355BF8 | 4E 80 04 21 */	bctrl
/* 81355BFC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81355C00 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81355C04 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81355C08 | 7C 08 03 A6 */	mtlr r0
/* 81355C0C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81355C10 | 4E 80 00 20 */	blr
.endfn setKeyboardType__Q33ipl8keyboard7ManagerFiQ43ipl8keyboard7Manager12KeyboardType

# .text:0xF44 | 0x81355C14 | size: 0x100
# ipl::keyboard::Manager::start(int, const ipl::keyboard::Manager::KeyboardSetting&)
.fn start__Q33ipl8keyboard7ManagerFiRCQ43ipl8keyboard7Manager15KeyboardSetting, global
/* 81355C14 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81355C18 | 7C 08 02 A6 */	mflr r0
/* 81355C1C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81355C20 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81355C24 | 7C BF 2B 78 */	mr r31, r5
/* 81355C28 | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 81355C2C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81355C30 | 7C 7E 1B 78 */	mr r30, r3
/* 81355C34 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81355C38 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 81355C3C | 7D 89 03 A6 */	mtctr r12
/* 81355C40 | 4E 80 04 21 */	bctrl
/* 81355C44 | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 81355C48 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81355C4C | 40 82 00 20 */	bne .L_81355C6C
/* 81355C50 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 81355C54 | 38 8D 81 BC */	li r4, lbl_816961FC@sda21
/* 81355C58 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81355C5C | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81355C60 | 7D 89 03 A6 */	mtctr r12
/* 81355C64 | 4E 80 04 21 */	bctrl
/* 81355C68 | 48 00 00 18 */	b .L_81355C80
.L_81355C6C:
/* 81355C6C | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 81355C70 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81355C74 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81355C78 | 7D 89 03 A6 */	mtctr r12
/* 81355C7C | 4E 80 04 21 */	bctrl
.L_81355C80:
/* 81355C80 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 81355C84 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 81355C88 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81355C8C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81355C90 | 7D 89 03 A6 */	mtctr r12
/* 81355C94 | 4E 80 04 21 */	bctrl
/* 81355C98 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 81355C9C | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 81355CA0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81355CA4 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 81355CA8 | 7D 89 03 A6 */	mtctr r12
/* 81355CAC | 4E 80 04 21 */	bctrl
/* 81355CB0 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 81355CB4 | 38 8D 81 BC */	li r4, lbl_816961FC@sda21
/* 81355CB8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81355CBC | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 81355CC0 | 7D 89 03 A6 */	mtctr r12
/* 81355CC4 | 4E 80 04 21 */	bctrl
/* 81355CC8 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 81355CCC | 38 80 00 01 */	li r4, 0x1
/* 81355CD0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81355CD4 | 81 8C 00 DC */	lwz r12, 0xdc(r12)
/* 81355CD8 | 7D 89 03 A6 */	mtctr r12
/* 81355CDC | 4E 80 04 21 */	bctrl
/* 81355CE0 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81355CE4 | 3C 80 81 64 */	lis r4, lbl_81638D50@ha
/* 81355CE8 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81355CEC | 38 84 8D 50 */	addi r4, r4, lbl_81638D50@l
/* 81355CF0 | 48 01 57 7D */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81355CF4 | 38 00 00 01 */	li r0, 0x1
/* 81355CF8 | 98 1E 00 2C */	stb r0, 0x2c(r30)
/* 81355CFC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81355D00 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81355D04 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81355D08 | 7C 08 03 A6 */	mtlr r0
/* 81355D0C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81355D10 | 4E 80 00 20 */	blr
.endfn start__Q33ipl8keyboard7ManagerFiRCQ43ipl8keyboard7Manager15KeyboardSetting

# .text:0x1044 | 0x81355D14 | size: 0xA8
# ipl::keyboard::Manager::ok()
.fn ok__Q33ipl8keyboard7ManagerFv, global
/* 81355D14 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81355D18 | 7C 08 02 A6 */	mflr r0
/* 81355D1C | 38 80 00 01 */	li r4, 0x1
/* 81355D20 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81355D24 | 38 00 00 01 */	li r0, 0x1
/* 81355D28 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81355D2C | 7C 7F 1B 78 */	mr r31, r3
/* 81355D30 | 98 03 00 18 */	stb r0, 0x18(r3)
/* 81355D34 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81355D38 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81355D3C | 81 8C 00 DC */	lwz r12, 0xdc(r12)
/* 81355D40 | 7D 89 03 A6 */	mtctr r12
/* 81355D44 | 4E 80 04 21 */	bctrl
/* 81355D48 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81355D4C | 3C 80 81 64 */	lis r4, lbl_81638D60@ha
/* 81355D50 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81355D54 | 38 84 8D 60 */	addi r4, r4, lbl_81638D60@l
/* 81355D58 | 48 01 57 15 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81355D5C | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 81355D60 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81355D64 | 81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 81355D68 | 7D 89 03 A6 */	mtctr r12
/* 81355D6C | 4E 80 04 21 */	bctrl
/* 81355D70 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 81355D74 | 41 82 00 20 */	beq .L_81355D94
/* 81355D78 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 81355D7C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81355D80 | 81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 81355D84 | 7D 89 03 A6 */	mtctr r12
/* 81355D88 | 4E 80 04 21 */	bctrl
/* 81355D8C | 2C 03 00 02 */	cmpwi r3, 0x2
/* 81355D90 | 40 82 00 18 */	bne .L_81355DA8
.L_81355D94:
/* 81355D94 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81355D98 | 7F E3 FB 78 */	mr r3, r31
/* 81355D9C | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 81355DA0 | 7D 89 03 A6 */	mtctr r12
/* 81355DA4 | 4E 80 04 21 */	bctrl
.L_81355DA8:
/* 81355DA8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81355DAC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81355DB0 | 7C 08 03 A6 */	mtlr r0
/* 81355DB4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81355DB8 | 4E 80 00 20 */	blr
.endfn ok__Q33ipl8keyboard7ManagerFv

# .text:0x10EC | 0x81355DBC | size: 0x8
# textinput::extend::memo::Manager::getConfigType()
.fn getConfigType__Q49textinput6extend4memo7ManagerFv, global
/* 81355DBC | 80 63 00 44 */	lwz r3, 0x44(r3)
/* 81355DC0 | 4E 80 00 20 */	blr
.endfn getConfigType__Q49textinput6extend4memo7ManagerFv

# .text:0x10F4 | 0x81355DC4 | size: 0xA8
# ipl::keyboard::Manager::cancel()
.fn cancel__Q33ipl8keyboard7ManagerFv, global
/* 81355DC4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81355DC8 | 7C 08 02 A6 */	mflr r0
/* 81355DCC | 38 80 00 01 */	li r4, 0x1
/* 81355DD0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81355DD4 | 38 00 00 00 */	li r0, 0x0
/* 81355DD8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81355DDC | 7C 7F 1B 78 */	mr r31, r3
/* 81355DE0 | 98 03 00 18 */	stb r0, 0x18(r3)
/* 81355DE4 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81355DE8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81355DEC | 81 8C 00 DC */	lwz r12, 0xdc(r12)
/* 81355DF0 | 7D 89 03 A6 */	mtctr r12
/* 81355DF4 | 4E 80 04 21 */	bctrl
/* 81355DF8 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81355DFC | 3C 80 81 64 */	lis r4, lbl_81638D78@ha
/* 81355E00 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81355E04 | 38 84 8D 78 */	addi r4, r4, lbl_81638D78@l
/* 81355E08 | 48 01 56 65 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 81355E0C | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 81355E10 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81355E14 | 81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 81355E18 | 7D 89 03 A6 */	mtctr r12
/* 81355E1C | 4E 80 04 21 */	bctrl
/* 81355E20 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 81355E24 | 41 82 00 20 */	beq .L_81355E44
/* 81355E28 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 81355E2C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81355E30 | 81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 81355E34 | 7D 89 03 A6 */	mtctr r12
/* 81355E38 | 4E 80 04 21 */	bctrl
/* 81355E3C | 2C 03 00 02 */	cmpwi r3, 0x2
/* 81355E40 | 40 82 00 18 */	bne .L_81355E58
.L_81355E44:
/* 81355E44 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81355E48 | 7F E3 FB 78 */	mr r3, r31
/* 81355E4C | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 81355E50 | 7D 89 03 A6 */	mtctr r12
/* 81355E54 | 4E 80 04 21 */	bctrl
.L_81355E58:
/* 81355E58 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81355E5C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81355E60 | 7C 08 03 A6 */	mtlr r0
/* 81355E64 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81355E68 | 4E 80 00 20 */	blr
.endfn cancel__Q33ipl8keyboard7ManagerFv

# .text:0x119C | 0x81355E6C | size: 0x40
# ipl::keyboard::Manager::doRumble()
.fn doRumble__Q33ipl8keyboard7ManagerFv, global
/* 81355E6C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81355E70 | 7C 08 02 A6 */	mflr r0
/* 81355E74 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81355E78 | 80 63 00 20 */	lwz r3, 0x20(r3)
/* 81355E7C | 4B FD FB 4D */	bl getController__Q23ipl6SystemFi
/* 81355E80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81355E84 | 41 82 00 18 */	beq .L_81355E9C
/* 81355E88 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81355E8C | 38 80 00 01 */	li r4, 0x1
/* 81355E90 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81355E94 | 7D 89 03 A6 */	mtctr r12
/* 81355E98 | 4E 80 04 21 */	bctrl
.L_81355E9C:
/* 81355E9C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81355EA0 | 7C 08 03 A6 */	mtlr r0
/* 81355EA4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81355EA8 | 4E 80 00 20 */	blr
.endfn doRumble__Q33ipl8keyboard7ManagerFv

# .text:0x11DC | 0x81355EAC | size: 0x20
# ipl::keyboard::Manager::setWCString(const wchar_t*)
.fn setWCString__Q33ipl8keyboard7ManagerFPCw, global
/* 81355EAC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81355EB0 | 4D 82 00 20 */	beqlr
/* 81355EB4 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81355EB8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81355EBC | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 81355EC0 | 7D 89 03 A6 */	mtctr r12
/* 81355EC4 | 4E 80 04 20 */	bctr
/* 81355EC8 | 4E 80 00 20 */	blr
.endfn setWCString__Q33ipl8keyboard7ManagerFPCw

# .text:0x11FC | 0x81355ECC | size: 0x184
# ipl::keyboard::Manager::setLanguage(unsigned long)
.fn setLanguage__Q33ipl8keyboard7ManagerFUl, global
/* 81355ECC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81355ED0 | 7C 08 02 A6 */	mflr r0
/* 81355ED4 | 28 04 00 09 */	cmplwi r4, 0x9
/* 81355ED8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81355EDC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81355EE0 | 7C 7F 1B 78 */	mr r31, r3
/* 81355EE4 | 41 81 01 40 */	bgt .L_81356024
/* 81355EE8 | 3C A0 81 64 */	lis r5, jumptable_81638D90@ha
/* 81355EEC | 54 80 10 3A */	slwi r0, r4, 2
/* 81355EF0 | 38 A5 8D 90 */	addi r5, r5, jumptable_81638D90@l
/* 81355EF4 | 7C A5 00 2E */	lwzx r5, r5, r0
/* 81355EF8 | 7C A9 03 A6 */	mtctr r5
/* 81355EFC | 4E 80 04 20 */	bctr
.L_81355F00:
/* 81355F00 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81355F04 | 38 80 00 00 */	li r4, 0x0
/* 81355F08 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81355F0C | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 81355F10 | 7D 89 03 A6 */	mtctr r12
/* 81355F14 | 4E 80 04 21 */	bctrl
/* 81355F18 | 48 00 01 24 */	b .L_8135603C
.L_81355F1C:
/* 81355F1C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81355F20 | 38 80 00 04 */	li r4, 0x4
/* 81355F24 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81355F28 | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 81355F2C | 7D 89 03 A6 */	mtctr r12
/* 81355F30 | 4E 80 04 21 */	bctrl
/* 81355F34 | 48 00 01 08 */	b .L_8135603C
.L_81355F38:
/* 81355F38 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81355F3C | 38 80 00 03 */	li r4, 0x3
/* 81355F40 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81355F44 | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 81355F48 | 7D 89 03 A6 */	mtctr r12
/* 81355F4C | 4E 80 04 21 */	bctrl
/* 81355F50 | 48 00 00 EC */	b .L_8135603C
.L_81355F54:
/* 81355F54 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81355F58 | 38 80 00 06 */	li r4, 0x6
/* 81355F5C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81355F60 | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 81355F64 | 7D 89 03 A6 */	mtctr r12
/* 81355F68 | 4E 80 04 21 */	bctrl
/* 81355F6C | 48 00 00 D0 */	b .L_8135603C
.L_81355F70:
/* 81355F70 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81355F74 | 38 80 00 05 */	li r4, 0x5
/* 81355F78 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81355F7C | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 81355F80 | 7D 89 03 A6 */	mtctr r12
/* 81355F84 | 4E 80 04 21 */	bctrl
/* 81355F88 | 48 00 00 B4 */	b .L_8135603C
.L_81355F8C:
/* 81355F8C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81355F90 | 38 80 00 07 */	li r4, 0x7
/* 81355F94 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81355F98 | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 81355F9C | 7D 89 03 A6 */	mtctr r12
/* 81355FA0 | 4E 80 04 21 */	bctrl
/* 81355FA4 | 48 00 00 98 */	b .L_8135603C
.L_81355FA8:
/* 81355FA8 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81355FAC | 38 80 00 08 */	li r4, 0x8
/* 81355FB0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81355FB4 | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 81355FB8 | 7D 89 03 A6 */	mtctr r12
/* 81355FBC | 4E 80 04 21 */	bctrl
/* 81355FC0 | 48 00 00 7C */	b .L_8135603C
.L_81355FC4:
/* 81355FC4 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81355FC8 | 38 80 00 09 */	li r4, 0x9
/* 81355FCC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81355FD0 | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 81355FD4 | 7D 89 03 A6 */	mtctr r12
/* 81355FD8 | 4E 80 04 21 */	bctrl
/* 81355FDC | 48 00 00 60 */	b .L_8135603C
.L_81355FE0:
/* 81355FE0 | 4B FD FA AD */	bl getRegion__Q23ipl6SystemFv
/* 81355FE4 | 28 03 00 02 */	cmplwi r3, 0x2
/* 81355FE8 | 40 82 00 20 */	bne .L_81356008
/* 81355FEC | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 81355FF0 | 38 80 00 02 */	li r4, 0x2
/* 81355FF4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81355FF8 | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 81355FFC | 7D 89 03 A6 */	mtctr r12
/* 81356000 | 4E 80 04 21 */	bctrl
/* 81356004 | 48 00 00 38 */	b .L_8135603C
.L_81356008:
/* 81356008 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 8135600C | 38 80 00 01 */	li r4, 0x1
/* 81356010 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81356014 | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 81356018 | 7D 89 03 A6 */	mtctr r12
/* 8135601C | 4E 80 04 21 */	bctrl
/* 81356020 | 48 00 00 1C */	b .L_8135603C
.L_81356024:
/* 81356024 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81356028 | 38 80 00 01 */	li r4, 0x1
/* 8135602C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81356030 | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 81356034 | 7D 89 03 A6 */	mtctr r12
/* 81356038 | 4E 80 04 21 */	bctrl
.L_8135603C:
/* 8135603C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81356040 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81356044 | 7C 08 03 A6 */	mtlr r0
/* 81356048 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8135604C | 4E 80 00 20 */	blr
.endfn setLanguage__Q33ipl8keyboard7ManagerFUl

# .text:0x1380 | 0x81356050 | size: 0x1C4
# ipl::keyboard::Manager::setConfigure(ipl::keyboard::Manager::KeyboardType)
.fn setConfigure__Q33ipl8keyboard7ManagerFQ43ipl8keyboard7Manager12KeyboardType, global
/* 81356050 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81356054 | 7C 08 02 A6 */	mflr r0
/* 81356058 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8135605C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81356060 | 7C 9F 23 78 */	mr r31, r4
/* 81356064 | 38 80 00 01 */	li r4, 0x1
/* 81356068 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8135606C | 7C 7E 1B 78 */	mr r30, r3
/* 81356070 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81356074 | 48 0E 30 2D */	bl enableCompatibleFilter__Q29textinput7ManagerFb
/* 81356078 | 28 1F 00 0D */	cmplwi r31, 0xd
/* 8135607C | 41 81 01 6C */	bgt .L_813561E8
/* 81356080 | 3C 60 81 64 */	lis r3, jumptable_81638DB8@ha
/* 81356084 | 57 E0 10 3A */	slwi r0, r31, 2
/* 81356088 | 38 63 8D B8 */	addi r3, r3, jumptable_81638DB8@l
/* 8135608C | 7C 63 00 2E */	lwzx r3, r3, r0
/* 81356090 | 7C 69 03 A6 */	mtctr r3
/* 81356094 | 4E 80 04 20 */	bctr
.L_81356098:
/* 81356098 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 8135609C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813560A0 | 81 8C 00 F4 */	lwz r12, 0xf4(r12)
/* 813560A4 | 7D 89 03 A6 */	mtctr r12
/* 813560A8 | 4E 80 04 21 */	bctrl
/* 813560AC | 48 00 01 50 */	b .L_813561FC
.L_813560B0:
/* 813560B0 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813560B4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813560B8 | 81 8C 00 F8 */	lwz r12, 0xf8(r12)
/* 813560BC | 7D 89 03 A6 */	mtctr r12
/* 813560C0 | 4E 80 04 21 */	bctrl
/* 813560C4 | 48 00 01 38 */	b .L_813561FC
.L_813560C8:
/* 813560C8 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813560CC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813560D0 | 81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 813560D4 | 7D 89 03 A6 */	mtctr r12
/* 813560D8 | 4E 80 04 21 */	bctrl
/* 813560DC | 48 00 01 20 */	b .L_813561FC
.L_813560E0:
/* 813560E0 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813560E4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813560E8 | 81 8C 01 00 */	lwz r12, 0x100(r12)
/* 813560EC | 7D 89 03 A6 */	mtctr r12
/* 813560F0 | 4E 80 04 21 */	bctrl
/* 813560F4 | 48 00 01 08 */	b .L_813561FC
.L_813560F8:
/* 813560F8 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813560FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81356100 | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 81356104 | 7D 89 03 A6 */	mtctr r12
/* 81356108 | 4E 80 04 21 */	bctrl
/* 8135610C | 48 00 00 F0 */	b .L_813561FC
.L_81356110:
/* 81356110 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 81356114 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81356118 | 81 8C 01 24 */	lwz r12, 0x124(r12)
/* 8135611C | 7D 89 03 A6 */	mtctr r12
/* 81356120 | 4E 80 04 21 */	bctrl
/* 81356124 | 48 00 00 D8 */	b .L_813561FC
.L_81356128:
/* 81356128 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 8135612C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81356130 | 81 8C 01 08 */	lwz r12, 0x108(r12)
/* 81356134 | 7D 89 03 A6 */	mtctr r12
/* 81356138 | 4E 80 04 21 */	bctrl
/* 8135613C | 48 00 00 C0 */	b .L_813561FC
.L_81356140:
/* 81356140 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 81356144 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81356148 | 81 8C 01 0C */	lwz r12, 0x10c(r12)
/* 8135614C | 7D 89 03 A6 */	mtctr r12
/* 81356150 | 4E 80 04 21 */	bctrl
/* 81356154 | 48 00 00 A8 */	b .L_813561FC
.L_81356158:
/* 81356158 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 8135615C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81356160 | 81 8C 01 10 */	lwz r12, 0x110(r12)
/* 81356164 | 7D 89 03 A6 */	mtctr r12
/* 81356168 | 4E 80 04 21 */	bctrl
/* 8135616C | 48 00 00 90 */	b .L_813561FC
.L_81356170:
/* 81356170 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 81356174 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81356178 | 81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8135617C | 7D 89 03 A6 */	mtctr r12
/* 81356180 | 4E 80 04 21 */	bctrl
/* 81356184 | 48 00 00 78 */	b .L_813561FC
.L_81356188:
/* 81356188 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 8135618C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81356190 | 81 8C 01 18 */	lwz r12, 0x118(r12)
/* 81356194 | 7D 89 03 A6 */	mtctr r12
/* 81356198 | 4E 80 04 21 */	bctrl
/* 8135619C | 48 00 00 60 */	b .L_813561FC
.L_813561A0:
/* 813561A0 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813561A4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813561A8 | 81 8C 01 1C */	lwz r12, 0x11c(r12)
/* 813561AC | 7D 89 03 A6 */	mtctr r12
/* 813561B0 | 4E 80 04 21 */	bctrl
/* 813561B4 | 48 00 00 48 */	b .L_813561FC
.L_813561B8:
/* 813561B8 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813561BC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813561C0 | 81 8C 01 20 */	lwz r12, 0x120(r12)
/* 813561C4 | 7D 89 03 A6 */	mtctr r12
/* 813561C8 | 4E 80 04 21 */	bctrl
/* 813561CC | 48 00 00 30 */	b .L_813561FC
.L_813561D0:
/* 813561D0 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813561D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813561D8 | 81 8C 01 28 */	lwz r12, 0x128(r12)
/* 813561DC | 7D 89 03 A6 */	mtctr r12
/* 813561E0 | 4E 80 04 21 */	bctrl
/* 813561E4 | 48 00 00 18 */	b .L_813561FC
.L_813561E8:
/* 813561E8 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813561EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813561F0 | 81 8C 00 F4 */	lwz r12, 0xf4(r12)
/* 813561F4 | 7D 89 03 A6 */	mtctr r12
/* 813561F8 | 4E 80 04 21 */	bctrl
.L_813561FC:
/* 813561FC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81356200 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81356204 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81356208 | 7C 08 03 A6 */	mtlr r0
/* 8135620C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81356210 | 4E 80 00 20 */	blr
.endfn setConfigure__Q33ipl8keyboard7ManagerFQ43ipl8keyboard7Manager12KeyboardType

# .text:0x1544 | 0x81356214 | size: 0x154
# ipl::keyboard::Manager::doSave()
.fn doSave__Q33ipl8keyboard7ManagerFv, global
/* 81356214 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81356218 | 7C 08 02 A6 */	mflr r0
/* 8135621C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81356220 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 81356224 | 7C 7F 1B 78 */	mr r31, r3
/* 81356228 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 8135622C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81356230 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81356234 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 81356238 | 7D 89 03 A6 */	mtctr r12
/* 8135623C | 4E 80 04 21 */	bctrl
/* 81356240 | 54 8A 46 3E */	srwi r10, r4, 24
/* 81356244 | 54 69 46 3E */	srwi r9, r3, 24
/* 81356248 | 99 41 00 1C */	stb r10, 0x1c(r1)
/* 8135624C | 54 8A 86 3E */	extrwi r10, r4, 8, 8
/* 81356250 | 38 A0 00 08 */	li r5, 0x8
/* 81356254 | 99 21 00 18 */	stb r9, 0x18(r1)
/* 81356258 | 54 69 86 3E */	extrwi r9, r3, 8, 8
/* 8135625C | 88 C1 00 1C */	lbz r6, 0x1c(r1)
/* 81356260 | 99 41 00 1D */	stb r10, 0x1d(r1)
/* 81356264 | 54 8A C6 3E */	extrwi r10, r4, 8, 16
/* 81356268 | 89 01 00 18 */	lbz r8, 0x18(r1)
/* 8135626C | 99 21 00 19 */	stb r9, 0x19(r1)
/* 81356270 | 54 69 C6 3E */	extrwi r9, r3, 8, 16
/* 81356274 | 88 01 00 1D */	lbz r0, 0x1d(r1)
/* 81356278 | 88 E1 00 19 */	lbz r7, 0x19(r1)
/* 8135627C | 99 41 00 1E */	stb r10, 0x1e(r1)
/* 81356280 | 98 81 00 1F */	stb r4, 0x1f(r1)
/* 81356284 | 98 81 00 0F */	stb r4, 0xf(r1)
/* 81356288 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8135628C | 99 21 00 1A */	stb r9, 0x1a(r1)
/* 81356290 | 98 61 00 1B */	stb r3, 0x1b(r1)
/* 81356294 | 98 61 00 0B */	stb r3, 0xb(r1)
/* 81356298 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8135629C | 99 01 00 08 */	stb r8, 0x8(r1)
/* 813562A0 | 98 E1 00 09 */	stb r7, 0x9(r1)
/* 813562A4 | 99 21 00 0A */	stb r9, 0xa(r1)
/* 813562A8 | 98 C1 00 0C */	stb r6, 0xc(r1)
/* 813562AC | 98 01 00 0D */	stb r0, 0xd(r1)
/* 813562B0 | 99 41 00 0E */	stb r10, 0xe(r1)
/* 813562B4 | 88 DF 00 2E */	lbz r6, 0x2e(r31)
/* 813562B8 | 88 1F 00 2F */	lbz r0, 0x2f(r31)
/* 813562BC | 98 C1 00 10 */	stb r6, 0x10(r1)
/* 813562C0 | 98 01 00 11 */	stb r0, 0x11(r1)
/* 813562C4 | 88 DF 00 30 */	lbz r6, 0x30(r31)
/* 813562C8 | 88 1F 00 31 */	lbz r0, 0x31(r31)
/* 813562CC | 98 C1 00 12 */	stb r6, 0x12(r1)
/* 813562D0 | 98 01 00 13 */	stb r0, 0x13(r1)
/* 813562D4 | 88 DF 00 32 */	lbz r6, 0x32(r31)
/* 813562D8 | 88 1F 00 33 */	lbz r0, 0x33(r31)
/* 813562DC | 98 C1 00 14 */	stb r6, 0x14(r1)
/* 813562E0 | 98 01 00 15 */	stb r0, 0x15(r1)
/* 813562E4 | 88 DF 00 34 */	lbz r6, 0x34(r31)
/* 813562E8 | 88 1F 00 35 */	lbz r0, 0x35(r31)
/* 813562EC | 98 C1 00 16 */	stb r6, 0x16(r1)
/* 813562F0 | 98 01 00 17 */	stb r0, 0x17(r1)
/* 813562F4 | 48 2A 7E E1 */	bl memcmp
/* 813562F8 | 7C 60 00 34 */	cntlzw r0, r3
/* 813562FC | 38 60 00 00 */	li r3, 0x0
/* 81356300 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 81356304 | 40 82 00 14 */	bne .L_81356318
/* 81356308 | 80 1F 00 38 */	lwz r0, 0x38(r31)
/* 8135630C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81356310 | 40 82 00 08 */	bne .L_81356318
/* 81356314 | 38 60 00 01 */	li r3, 0x1
.L_81356318:
/* 81356318 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135631C | 41 82 00 34 */	beq .L_81356350
/* 81356320 | 38 7F 00 2E */	addi r3, r31, 0x2e
/* 81356324 | 38 81 00 18 */	addi r4, r1, 0x18
/* 81356328 | 4B FF F1 65 */	bl __as__Q49textinput6extend8savedata11MemoSettingFRCQ49textinput6extend8savedata11MemoSetting
/* 8135632C | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 81356330 | 38 9F 00 2E */	addi r4, r31, 0x2e
/* 81356334 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 81356338 | 80 7E 00 94 */	lwz r3, 0x94(r30)
/* 8135633C | 48 00 1A B5 */	bl setMemoSetting__Q33ipl8savedata7ManagerFRCQ49textinput6extend8savedata11MemoSetting
/* 81356340 | 80 7E 00 94 */	lwz r3, 0x94(r30)
/* 81356344 | 80 9E 00 28 */	lwz r4, 0x28(r30)
/* 81356348 | 48 00 1A ED */	bl flushAsync__Q33ipl8savedata7ManagerFPQ23EGG4Heap
/* 8135634C | 90 7F 00 38 */	stw r3, 0x38(r31)
.L_81356350:
/* 81356350 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81356354 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 81356358 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8135635C | 7C 08 03 A6 */	mtlr r0
/* 81356360 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81356364 | 4E 80 00 20 */	blr
.endfn doSave__Q33ipl8keyboard7ManagerFv

# .text:0x1698 | 0x81356368 | size: 0x48
# textinput::extend::memo::Manager::getSaveData()
.fn getSaveData__Q49textinput6extend4memo7ManagerFv, global
/* 81356368 | 88 03 00 4C */	lbz r0, 0x4c(r3)
/* 8135636C | 7C 66 1B 78 */	mr r6, r3
/* 81356370 | 88 A3 00 48 */	lbz r5, 0x48(r3)
/* 81356374 | 54 04 C0 0E */	slwi r4, r0, 24
/* 81356378 | 88 06 00 4D */	lbz r0, 0x4d(r6)
/* 8135637C | 54 A3 C0 0E */	slwi r3, r5, 24
/* 81356380 | 88 A6 00 49 */	lbz r5, 0x49(r6)
/* 81356384 | 50 04 82 1E */	rlwimi r4, r0, 16, 8, 15
/* 81356388 | 88 06 00 4E */	lbz r0, 0x4e(r6)
/* 8135638C | 50 A3 82 1E */	rlwimi r3, r5, 16, 8, 15
/* 81356390 | 88 A6 00 4A */	lbz r5, 0x4a(r6)
/* 81356394 | 50 04 44 2E */	rlwimi r4, r0, 8, 16, 23
/* 81356398 | 88 06 00 4F */	lbz r0, 0x4f(r6)
/* 8135639C | 50 A3 44 2E */	rlwimi r3, r5, 8, 16, 23
/* 813563A0 | 88 A6 00 4B */	lbz r5, 0x4b(r6)
/* 813563A4 | 50 04 06 3E */	rlwimi r4, r0, 0, 24, 31
/* 813563A8 | 50 A3 06 3E */	rlwimi r3, r5, 0, 24, 31
/* 813563AC | 4E 80 00 20 */	blr
.endfn getSaveData__Q49textinput6extend4memo7ManagerFv

# .text:0x16E0 | 0x813563B0 | size: 0x5C
# ipl::keyboard::Manager::touchFormInDisp(int)
.fn touchFormInDisp__Q33ipl8keyboard7ManagerFi, global
/* 813563B0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813563B4 | 7C 08 02 A6 */	mflr r0
/* 813563B8 | 38 80 00 01 */	li r4, 0x1
/* 813563BC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813563C0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813563C4 | 7C 7F 1B 78 */	mr r31, r3
/* 813563C8 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813563CC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813563D0 | 81 8C 00 DC */	lwz r12, 0xdc(r12)
/* 813563D4 | 7D 89 03 A6 */	mtctr r12
/* 813563D8 | 4E 80 04 21 */	bctrl
/* 813563DC | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813563E0 | 3C 80 81 64 */	lis r4, lbl_81638D50@ha
/* 813563E4 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813563E8 | 38 84 8D 50 */	addi r4, r4, lbl_81638D50@l
/* 813563EC | 48 01 50 81 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813563F0 | 38 00 00 01 */	li r0, 0x1
/* 813563F4 | 98 1F 00 2C */	stb r0, 0x2c(r31)
/* 813563F8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813563FC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81356400 | 7C 08 03 A6 */	mtlr r0
/* 81356404 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81356408 | 4E 80 00 20 */	blr
.endfn touchFormInDisp__Q33ipl8keyboard7ManagerFi

# .text:0x173C | 0x8135640C | size: 0x2C
# ipl::keyboard::Manager::sendRelease()
.fn sendRelease__Q33ipl8keyboard7ManagerFv, global
/* 8135640C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81356410 | 38 80 00 00 */	li r4, 0x0
/* 81356414 | C0 22 81 94 */	lfs f1, lbl_81694594@sda21(r0)
/* 81356418 | 38 A0 00 00 */	li r5, 0x0
/* 8135641C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81356420 | 38 C0 00 00 */	li r6, 0x0
/* 81356424 | FC 40 08 90 */	fmr f2, f1
/* 81356428 | 38 E0 00 00 */	li r7, 0x0
/* 8135642C | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81356430 | 7D 89 03 A6 */	mtctr r12
/* 81356434 | 4E 80 04 20 */	bctr
.endfn sendRelease__Q33ipl8keyboard7ManagerFv

# .text:0x1768 | 0x81356438 | size: 0xC
# ipl::keyboard::Manager::getZiSystemDic()
.fn getZiSystemDic__Q33ipl8keyboard7ManagerFv, global
/* 81356438 | 3C 60 81 64 */	lis r3, lbl_816389E8@ha
/* 8135643C | 38 63 89 E8 */	addi r3, r3, lbl_816389E8@l
/* 81356440 | 4E 80 00 20 */	blr
.endfn getZiSystemDic__Q33ipl8keyboard7ManagerFv

# .text:0x1774 | 0x81356444 | size: 0xC
# ipl::keyboard::Manager::getZiOemDic()
.fn getZiOemDic__Q33ipl8keyboard7ManagerFv, global
/* 81356444 | 3C 60 81 64 */	lis r3, lbl_81638A40@ha
/* 81356448 | 38 63 8A 40 */	addi r3, r3, lbl_81638A40@l
/* 8135644C | 4E 80 00 20 */	blr
.endfn getZiOemDic__Q33ipl8keyboard7ManagerFv

# .text:0x1780 | 0x81356450 | size: 0x8
# ipl::keyboard::Manager::getState()
.fn getState__Q33ipl8keyboard7ManagerFv, global
/* 81356450 | 38 63 00 10 */	addi r3, r3, 0x10
/* 81356454 | 4E 80 00 20 */	blr
.endfn getState__Q33ipl8keyboard7ManagerFv

# 0x816389E8..0x81638E78 | size: 0x490
.data
.balign 8

# .data:0x0 | 0x816389E8 | size: 0x58
.obj lbl_816389E8, global
	.4byte 0x3B000000
	.4byte 0x00000000
	.4byte 0x3A000000
	.4byte 0x00000000
	.4byte 0x3F000000
	.4byte 0x00000000
	.4byte 0x05000000
	.4byte 0x00000000
	.4byte 0x2F000000
	.4byte 0x00000000
	.4byte 0x42000000
	.4byte 0x00000000
	.4byte 0x41000000
	.4byte 0x00000000
	.4byte 0x40000000
	.4byte 0x00000000
	.4byte 0x0D000000
	.4byte 0x00000000
	.4byte 0x01000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_816389E8

# .data:0x58 | 0x81638A40 | size: 0x172
.obj lbl_81638A40, global
	.4byte 0x3B000000
	.4byte 0x00000000
	.4byte 0x3A000000
	.4byte 0x00000000
	.4byte 0x3F000000
	.4byte 0x00000000
	.4byte 0x05000000
	.4byte 0x00000000
	.4byte 0x2F000000
	.4byte 0x00000000
	.4byte 0x42000000
	.4byte 0x00000000
	.4byte 0x41000000
	.4byte 0x00000000
	.4byte 0x40000000
	.4byte 0x00000000
	.4byte 0x0D000000
	.4byte 0x00000000
	.4byte 0x01000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x534B5F53
	.4byte 0x57495443
	.4byte 0x48494E47
	.4byte 0x5F303200
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x43484152
	.4byte 0x5F464F43
	.4byte 0x55530057
	.4byte 0x49504C5F
	.4byte 0x53455F43
	.4byte 0x4841525F
	.4byte 0x44454C45
	.4byte 0x54450057
	.4byte 0x49504C5F
	.4byte 0x53455F43
	.4byte 0x4841525F
	.4byte 0x44454C45
	.4byte 0x54455F45
	.4byte 0x52524F52
	.4byte 0x00574950
	.4byte 0x4C5F5345
	.4byte 0x5F434841
	.4byte 0x525F4445
	.4byte 0x43494445
	.4byte 0x00574950
	.4byte 0x4C5F5345
	.4byte 0x5F434841
	.4byte 0x525F494E
	.4byte 0x50555400
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x4C494E45
	.4byte 0x5F534352
	.4byte 0x4F4C4C00
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x43484152
	.4byte 0x5F435552
	.4byte 0x534F5200
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x43484152
	.4byte 0x5F435552
	.4byte 0x534F525F
	.4byte 0x46495800
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x53594D42
	.4byte 0x4F4C5F50
	.4byte 0x4147455F
	.4byte 0x4F50454E
	.4byte 0x00575344
	.4byte 0x5F53454C
	.4byte 0x45435400
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x534B5F50
	.4byte 0x52454449
	.4byte 0x43545F4F
	.4byte 0x4E005749
	.4byte 0x504C5F53
	.4byte 0x455F534B
	.4byte 0x5F505245
	.4byte 0x44494354
	.4byte 0x5F4F4646
	.4byte 0x00574950
	.4byte 0x4C5F5345
	.2byte 0x5F43
.endobj lbl_81638A40

# .data:0x1CA | 0x81638BB2 | size: 0x8E
.obj lbl_81638BB2, global
	.4byte 0x4841525F
	.4byte 0x4C415247
	.4byte 0x45520057
	.4byte 0x49504C5F
	.4byte 0x53455F43
	.4byte 0x4841525F
	.4byte 0x4C4F5745
	.4byte 0x52005749
	.4byte 0x504C5F53
	.4byte 0x455F534B
	.4byte 0x5F535749
	.4byte 0x54434849
	.4byte 0x4E475F30
	.4byte 0x31005749
	.4byte 0x504C5F53
	.4byte 0x455F534B
	.4byte 0x5F535749
	.4byte 0x5443485F
	.4byte 0x544F5F4B
	.4byte 0x45544149
	.4byte 0x00574950
	.4byte 0x4C5F5345
	.4byte 0x5F42545F
	.4byte 0x54415247
	.4byte 0x45545449
	.4byte 0x4E470057
	.4byte 0x49504C5F
	.4byte 0x53455F44
	.4byte 0x45434944
	.4byte 0x45005749
	.4byte 0x504C5F53
	.4byte 0x455F4D45
	.4byte 0x53534147
	.4byte 0x455F5343
	.4byte 0x524F4C4C
	.2byte 0x0000
.endobj lbl_81638BB2

# .data:0x258 | 0x81638C40 | size: 0x60
.obj jumptable_81638C40, local
	.rel onSE__Q33ipl8keyboard13EventObserverFQ39textinput5sound2SE, .L_81354D90
	.rel onSE__Q33ipl8keyboard13EventObserverFQ39textinput5sound2SE, .L_81354DA4
	.rel onSE__Q33ipl8keyboard13EventObserverFQ39textinput5sound2SE, .L_81354E30
	.rel onSE__Q33ipl8keyboard13EventObserverFQ39textinput5sound2SE, .L_81354E44
	.rel onSE__Q33ipl8keyboard13EventObserverFQ39textinput5sound2SE, .L_81354DCC
	.rel onSE__Q33ipl8keyboard13EventObserverFQ39textinput5sound2SE, .L_81354DE0
	.rel onSE__Q33ipl8keyboard13EventObserverFQ39textinput5sound2SE, .L_81354DF4
	.rel onSE__Q33ipl8keyboard13EventObserverFQ39textinput5sound2SE, .L_81354E08
	.rel onSE__Q33ipl8keyboard13EventObserverFQ39textinput5sound2SE, .L_81354E1C
	.rel onSE__Q33ipl8keyboard13EventObserverFQ39textinput5sound2SE, .L_81354F58
	.rel onSE__Q33ipl8keyboard13EventObserverFQ39textinput5sound2SE, .L_81354E58
	.rel onSE__Q33ipl8keyboard13EventObserverFQ39textinput5sound2SE, .L_81354E6C
	.rel onSE__Q33ipl8keyboard13EventObserverFQ39textinput5sound2SE, .L_81354E80
	.rel onSE__Q33ipl8keyboard13EventObserverFQ39textinput5sound2SE, .L_81354E94
	.rel onSE__Q33ipl8keyboard13EventObserverFQ39textinput5sound2SE, .L_81354EA8
	.rel onSE__Q33ipl8keyboard13EventObserverFQ39textinput5sound2SE, .L_81354F58
	.rel onSE__Q33ipl8keyboard13EventObserverFQ39textinput5sound2SE, .L_81354E6C
	.rel onSE__Q33ipl8keyboard13EventObserverFQ39textinput5sound2SE, .L_81354EBC
	.rel onSE__Q33ipl8keyboard13EventObserverFQ39textinput5sound2SE, .L_81354ED0
	.rel onSE__Q33ipl8keyboard13EventObserverFQ39textinput5sound2SE, .L_81354EE4
	.rel onSE__Q33ipl8keyboard13EventObserverFQ39textinput5sound2SE, .L_81354EF8
	.rel onSE__Q33ipl8keyboard13EventObserverFQ39textinput5sound2SE, .L_81354F0C
	.rel onSE__Q33ipl8keyboard13EventObserverFQ39textinput5sound2SE, .L_81354F34
	.rel onSE__Q33ipl8keyboard13EventObserverFQ39textinput5sound2SE, .L_81354F48
.endobj jumptable_81638C40

# .data:0x2B8 | 0x81638CA0 | size: 0x80
.obj lbl_81638CA0, local
	.4byte 0x57696942
	.4byte 0x69746D61
	.4byte 0x70466F6E
	.4byte 0x74547970
	.4byte 0x65312E62
	.4byte 0x72666E74
	.4byte 0x00526576
	.4byte 0x6F49706C
	.4byte 0x5F526F64
	.4byte 0x696E4E54
	.4byte 0x4C475072
	.4byte 0x6F5F4442
	.4byte 0x5F33325F
	.4byte 0x49342E62
	.4byte 0x72666E74
	.4byte 0x00576969
	.4byte 0x4269746D
	.4byte 0x6170466F
	.4byte 0x6E745479
	.4byte 0x7065322E
	.4byte 0x6272666E
	.4byte 0x74005265
	.4byte 0x766F4970
	.4byte 0x6C5F5574
	.4byte 0x72696C6C
	.4byte 0x6F50726F
	.4byte 0x47726563
	.4byte 0x6F537464
	.4byte 0x5F4D5F33
	.4byte 0x325F4934
	.4byte 0x2E627266
	.4byte 0x6E740000
.endobj lbl_81638CA0

# .data:0x338 | 0x81638D20 | size: 0x30
.obj jumptable_81638D20, local
	.rel create__Q33ipl8keyboard7ManagerFPQ33ipl4nand4FilePQ23EGG4Heap, .L_81355384
	.rel create__Q33ipl8keyboard7ManagerFPQ33ipl4nand4FilePQ23EGG4Heap, .L_813553A0
	.rel create__Q33ipl8keyboard7ManagerFPQ33ipl4nand4FilePQ23EGG4Heap, .L_813553BC
	.rel create__Q33ipl8keyboard7ManagerFPQ33ipl4nand4FilePQ23EGG4Heap, .L_81355410
	.rel create__Q33ipl8keyboard7ManagerFPQ33ipl4nand4FilePQ23EGG4Heap, .L_81355410
	.rel create__Q33ipl8keyboard7ManagerFPQ33ipl4nand4FilePQ23EGG4Heap, .L_81355410
	.rel create__Q33ipl8keyboard7ManagerFPQ33ipl4nand4FilePQ23EGG4Heap, .L_813553F4
	.rel create__Q33ipl8keyboard7ManagerFPQ33ipl4nand4FilePQ23EGG4Heap, .L_81355410
	.rel create__Q33ipl8keyboard7ManagerFPQ33ipl4nand4FilePQ23EGG4Heap, .L_81355410
	.rel create__Q33ipl8keyboard7ManagerFPQ33ipl4nand4FilePQ23EGG4Heap, .L_81355410
	.rel create__Q33ipl8keyboard7ManagerFPQ33ipl4nand4FilePQ23EGG4Heap, .L_81355410
	.rel create__Q33ipl8keyboard7ManagerFPQ33ipl4nand4FilePQ23EGG4Heap, .L_813553D8
.endobj jumptable_81638D20

# .data:0x368 | 0x81638D50 | size: 0x10
.obj lbl_81638D50, global
	.string "WIPL_SE_SK_OPEN"
.endobj lbl_81638D50

# .data:0x378 | 0x81638D60 | size: 0x18
.obj lbl_81638D60, global
	.string "WIPL_SE_SK_DECIDE_CLOSE"
.endobj lbl_81638D60

# .data:0x390 | 0x81638D78 | size: 0x18
.obj lbl_81638D78, global
	.string "WIPL_SE_SK_CANCEL_CLOSE"
.endobj lbl_81638D78

# .data:0x3A8 | 0x81638D90 | size: 0x28
.obj jumptable_81638D90, local
	.rel setLanguage__Q33ipl8keyboard7ManagerFUl, .L_81355F00
	.rel setLanguage__Q33ipl8keyboard7ManagerFUl, .L_81355FE0
	.rel setLanguage__Q33ipl8keyboard7ManagerFUl, .L_81355F1C
	.rel setLanguage__Q33ipl8keyboard7ManagerFUl, .L_81355F38
	.rel setLanguage__Q33ipl8keyboard7ManagerFUl, .L_81355F54
	.rel setLanguage__Q33ipl8keyboard7ManagerFUl, .L_81355F70
	.rel setLanguage__Q33ipl8keyboard7ManagerFUl, .L_81355F8C
	.rel setLanguage__Q33ipl8keyboard7ManagerFUl, .L_81355FA8
	.rel setLanguage__Q33ipl8keyboard7ManagerFUl, .L_81356024
	.rel setLanguage__Q33ipl8keyboard7ManagerFUl, .L_81355FC4
.endobj jumptable_81638D90

# .data:0x3D0 | 0x81638DB8 | size: 0x38
.obj jumptable_81638DB8, local
	.rel setConfigure__Q33ipl8keyboard7ManagerFQ43ipl8keyboard7Manager12KeyboardType, .L_81356098
	.rel setConfigure__Q33ipl8keyboard7ManagerFQ43ipl8keyboard7Manager12KeyboardType, .L_813560B0
	.rel setConfigure__Q33ipl8keyboard7ManagerFQ43ipl8keyboard7Manager12KeyboardType, .L_813560C8
	.rel setConfigure__Q33ipl8keyboard7ManagerFQ43ipl8keyboard7Manager12KeyboardType, .L_813560E0
	.rel setConfigure__Q33ipl8keyboard7ManagerFQ43ipl8keyboard7Manager12KeyboardType, .L_813560F8
	.rel setConfigure__Q33ipl8keyboard7ManagerFQ43ipl8keyboard7Manager12KeyboardType, .L_81356110
	.rel setConfigure__Q33ipl8keyboard7ManagerFQ43ipl8keyboard7Manager12KeyboardType, .L_81356128
	.rel setConfigure__Q33ipl8keyboard7ManagerFQ43ipl8keyboard7Manager12KeyboardType, .L_81356140
	.rel setConfigure__Q33ipl8keyboard7ManagerFQ43ipl8keyboard7Manager12KeyboardType, .L_81356158
	.rel setConfigure__Q33ipl8keyboard7ManagerFQ43ipl8keyboard7Manager12KeyboardType, .L_81356170
	.rel setConfigure__Q33ipl8keyboard7ManagerFQ43ipl8keyboard7Manager12KeyboardType, .L_81356188
	.rel setConfigure__Q33ipl8keyboard7ManagerFQ43ipl8keyboard7Manager12KeyboardType, .L_813561A0
	.rel setConfigure__Q33ipl8keyboard7ManagerFQ43ipl8keyboard7Manager12KeyboardType, .L_813561B8
	.rel setConfigure__Q33ipl8keyboard7ManagerFQ43ipl8keyboard7Manager12KeyboardType, .L_813561D0
.endobj jumptable_81638DB8

# .data:0x408 | 0x81638DF0 | size: 0x4C
# ipl::keyboard::Manager::__vtable
.obj __vt__Q33ipl8keyboard7Manager, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte create__Q33ipl8keyboard7ManagerFPQ33ipl4nand4FilePQ23EGG4Heap
	.4byte init__Q33ipl8keyboard7ManagerFv
	.4byte calc__Q33ipl8keyboard7ManagerFv
	.4byte draw__Q33ipl8keyboard7ManagerFv
	.4byte memoDraw__Q33ipl8keyboard7ManagerFv
	.4byte changeAspectRatio__Q33ipl8keyboard7ManagerFv
	.4byte setKeyboardType__Q33ipl8keyboard7ManagerFiQ43ipl8keyboard7Manager12KeyboardType
	.4byte start__Q33ipl8keyboard7ManagerFiRCQ43ipl8keyboard7Manager15KeyboardSetting
	.4byte ok__Q33ipl8keyboard7ManagerFv
	.4byte cancel__Q33ipl8keyboard7ManagerFv
	.4byte doRumble__Q33ipl8keyboard7ManagerFv
	.4byte getState__Q33ipl8keyboard7ManagerFv
	.4byte setWCString__Q33ipl8keyboard7ManagerFPCw
	.4byte setLanguage__Q33ipl8keyboard7ManagerFUl
	.4byte touchFormInDisp__Q33ipl8keyboard7ManagerFi
	.4byte setConfigure__Q33ipl8keyboard7ManagerFQ43ipl8keyboard7Manager12KeyboardType
	.4byte doSave__Q33ipl8keyboard7ManagerFv
.endobj __vt__Q33ipl8keyboard7Manager

# .data:0x454 | 0x81638E3C | size: 0x3C
# ipl::keyboard::EventObserver::__vtable
.obj __vt__Q33ipl8keyboard13EventObserver, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte onInput__Q29textinput13EventObserverFQ39textinput15CommandReceiver13INPUT_COMMANDPv
	.4byte onCommand__Q33ipl8keyboard13EventObserverFQ39textinput15CommandReceiver13INPUT_COMMANDPv
	.4byte onEvent__Q29textinput13EventObserverFPQ34nw4r3lyt4PaneUl
	.4byte onSE__Q33ipl8keyboard13EventObserverFQ39textinput5sound2SE
	.4byte onOK__Q33ipl8keyboard13EventObserverFv
	.4byte onCancel__Q33ipl8keyboard13EventObserverFv
	.4byte onOutOfLength__Q29textinput13EventObserverFv
	.4byte setManager__Q33ipl8keyboard13EventObserverFPQ33ipl8keyboard7Manager
	.4byte 0x4F75744F
	.4byte 0x664C656E
	.4byte 0x6774680A
	.4byte 0x00000000
	.4byte 0x00000000
.endobj __vt__Q33ipl8keyboard13EventObserver

# 0x81694590..0x81694598 | size: 0x8
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694590 | size: 0x4
.obj lbl_81694590, global
	.float 0.5
.endobj lbl_81694590

# .sdata2:0x4 | 0x81694594 | size: 0x4
.obj lbl_81694594, global
	.float inf
.endobj lbl_81694594

# 0x816961F8..0x81696200 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x816961F8 | size: 0x4
.obj lbl_816961F8, global
	.string "arc"
.endobj lbl_816961F8

# .sdata:0x4 | 0x816961FC | size: 0x4
.obj lbl_816961FC, global
	.4byte 0x00000000
.endobj lbl_816961FC
