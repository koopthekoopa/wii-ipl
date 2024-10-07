.include "macros.inc"
.file "iplSaveDataManager.cpp"

# 0x81357CB8..0x813598BC | size: 0x1C04
.text
.balign 4

# .text:0x0 | 0x81357CB8 | size: 0x38
# ipl::savedata::Manager::Manager(EGG::Heap*)
.fn __ct__Q33ipl8savedata7ManagerFPQ23EGG4Heap, global
/* 81357CB8 | 3C C0 81 64 */	lis r6, __vt__Q33ipl8savedata7Manager@ha
/* 81357CBC | 38 A0 00 00 */	li r5, 0x0
/* 81357CC0 | 38 C6 91 F4 */	addi r6, r6, __vt__Q33ipl8savedata7Manager@l
/* 81357CC4 | 38 00 00 01 */	li r0, 0x1
/* 81357CC8 | 90 C3 00 00 */	stw r6, 0x0(r3)
/* 81357CCC | 90 83 00 04 */	stw r4, 0x4(r3)
/* 81357CD0 | 90 A3 04 E0 */	stw r5, 0x4e0(r3)
/* 81357CD4 | 90 A3 04 E4 */	stw r5, 0x4e4(r3)
/* 81357CD8 | 98 03 04 E8 */	stb r0, 0x4e8(r3)
/* 81357CDC | 90 A3 04 EC */	stw r5, 0x4ec(r3)
/* 81357CE0 | 90 A3 04 F0 */	stw r5, 0x4f0(r3)
/* 81357CE4 | 98 A3 04 F4 */	stb r5, 0x4f4(r3)
/* 81357CE8 | 90 A3 05 00 */	stw r5, 0x500(r3)
/* 81357CEC | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl8savedata7ManagerFPQ23EGG4Heap

# .text:0x38 | 0x81357CF0 | size: 0x84
# ipl::savedata::Manager::~Manager()
.fn __dt__Q33ipl8savedata7ManagerFv, global
/* 81357CF0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81357CF4 | 7C 08 02 A6 */	mflr r0
/* 81357CF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81357CFC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81357D00 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81357D04 | 7C 9F 23 78 */	mr r31, r4
/* 81357D08 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81357D0C | 7C 7E 1B 78 */	mr r30, r3
/* 81357D10 | 41 82 00 48 */	beq .L_81357D58
/* 81357D14 | 80 03 04 F0 */	lwz r0, 0x4f0(r3)
/* 81357D18 | 3C 80 81 64 */	lis r4, __vt__Q33ipl8savedata7Manager@ha
/* 81357D1C | 38 84 91 F4 */	addi r4, r4, __vt__Q33ipl8savedata7Manager@l
/* 81357D20 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81357D24 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 81357D28 | 41 82 00 20 */	beq .L_81357D48
/* 81357D2C | 41 82 00 1C */	beq .L_81357D48
/* 81357D30 | 7C 03 03 78 */	mr r3, r0
/* 81357D34 | 38 80 00 01 */	li r4, 0x1
/* 81357D38 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81357D3C | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 81357D40 | 7D 89 03 A6 */	mtctr r12
/* 81357D44 | 4E 80 04 21 */	bctrl
.L_81357D48:
/* 81357D48 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81357D4C | 40 81 00 0C */	ble .L_81357D58
/* 81357D50 | 7F C3 F3 78 */	mr r3, r30
/* 81357D54 | 48 2A 03 91 */	bl __dl__FPv
.L_81357D58:
/* 81357D58 | 7F C3 F3 78 */	mr r3, r30
/* 81357D5C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81357D60 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81357D64 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81357D68 | 7C 08 03 A6 */	mtlr r0
/* 81357D6C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81357D70 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl8savedata7ManagerFv

# .text:0xBC | 0x81357D74 | size: 0x28
# ipl::savedata::Manager::initManager()
.fn initManager__Q33ipl8savedata7ManagerFv, global
/* 81357D74 | 38 00 00 00 */	li r0, 0x0
/* 81357D78 | 3C C0 81 09 */	lis r6, smArg__Q23ipl6System@ha
/* 81357D7C | 98 03 04 F4 */	stb r0, 0x4f4(r3)
/* 81357D80 | 3C 80 81 36 */	lis r4, initManagerTask__Q33ipl8savedata7ManagerFPv@ha
/* 81357D84 | 38 C6 90 08 */	addi r6, r6, smArg__Q23ipl6System@l
/* 81357D88 | 7C 65 1B 78 */	mr r5, r3
/* 81357D8C | 80 66 00 D8 */	lwz r3, 0xd8(r6)
/* 81357D90 | 38 84 81 54 */	addi r4, r4, initManagerTask__Q33ipl8savedata7ManagerFPv@l
/* 81357D94 | 38 C0 00 00 */	li r6, 0x0
/* 81357D98 | 48 2A 04 B0 */	b fn_815F8248
.endfn initManager__Q33ipl8savedata7ManagerFv

# .text:0xE4 | 0x81357D9C | size: 0x8
# ipl::savedata::Manager::setPrevPage(int)
.fn setPrevPage__Q33ipl8savedata7ManagerFi, global
/* 81357D9C | 90 83 00 2C */	stw r4, 0x2c(r3)
/* 81357DA0 | 4E 80 00 20 */	blr
.endfn setPrevPage__Q33ipl8savedata7ManagerFi

# .text:0xEC | 0x81357DA4 | size: 0x4C
# ipl::savedata::Manager::setChanInfo(int, int, const ipl::channel::SChannelInfo&)
.fn setChanInfo__Q33ipl8savedata7ManagerFiiRCQ33ipl7channel12SChannelInfo, global
/* 81357DA4 | 1C 04 00 C0 */	mulli r0, r4, 0xc0
/* 81357DA8 | 54 A5 20 36 */	slwi r5, r5, 4
/* 81357DAC | 88 86 00 00 */	lbz r4, 0x0(r6)
/* 81357DB0 | 88 E6 00 01 */	lbz r7, 0x1(r6)
/* 81357DB4 | 7C 63 02 14 */	add r3, r3, r0
/* 81357DB8 | 88 06 00 02 */	lbz r0, 0x2(r6)
/* 81357DBC | 7D 03 2A 14 */	add r8, r3, r5
/* 81357DC0 | 88 A6 00 03 */	lbz r5, 0x3(r6)
/* 81357DC4 | 98 88 00 30 */	stb r4, 0x30(r8)
/* 81357DC8 | 80 86 00 04 */	lwz r4, 0x4(r6)
/* 81357DCC | 98 E8 00 31 */	stb r7, 0x31(r8)
/* 81357DD0 | 80 66 00 08 */	lwz r3, 0x8(r6)
/* 81357DD4 | 98 08 00 32 */	stb r0, 0x32(r8)
/* 81357DD8 | 80 06 00 0C */	lwz r0, 0xc(r6)
/* 81357DDC | 98 A8 00 33 */	stb r5, 0x33(r8)
/* 81357DE0 | 90 88 00 34 */	stw r4, 0x34(r8)
/* 81357DE4 | 90 68 00 38 */	stw r3, 0x38(r8)
/* 81357DE8 | 90 08 00 3C */	stw r0, 0x3c(r8)
/* 81357DEC | 4E 80 00 20 */	blr
.endfn setChanInfo__Q33ipl8savedata7ManagerFiiRCQ33ipl7channel12SChannelInfo

# .text:0x138 | 0x81357DF0 | size: 0x44
# ipl::savedata::Manager::setMemoSetting(const textinput::extend::savedata::MemoSetting&)
.fn setMemoSetting__Q33ipl8savedata7ManagerFRCQ49textinput6extend8savedata11MemoSetting, global
/* 81357DF0 | 89 64 00 00 */	lbz r11, 0x0(r4)
/* 81357DF4 | 89 44 00 01 */	lbz r10, 0x1(r4)
/* 81357DF8 | 89 24 00 02 */	lbz r9, 0x2(r4)
/* 81357DFC | 89 04 00 03 */	lbz r8, 0x3(r4)
/* 81357E00 | 88 E4 00 04 */	lbz r7, 0x4(r4)
/* 81357E04 | 88 C4 00 05 */	lbz r6, 0x5(r4)
/* 81357E08 | 88 A4 00 06 */	lbz r5, 0x6(r4)
/* 81357E0C | 88 04 00 07 */	lbz r0, 0x7(r4)
/* 81357E10 | 99 63 03 30 */	stb r11, 0x330(r3)
/* 81357E14 | 99 43 03 31 */	stb r10, 0x331(r3)
/* 81357E18 | 99 23 03 32 */	stb r9, 0x332(r3)
/* 81357E1C | 99 03 03 33 */	stb r8, 0x333(r3)
/* 81357E20 | 98 E3 03 34 */	stb r7, 0x334(r3)
/* 81357E24 | 98 C3 03 35 */	stb r6, 0x335(r3)
/* 81357E28 | 98 A3 03 36 */	stb r5, 0x336(r3)
/* 81357E2C | 98 03 03 37 */	stb r0, 0x337(r3)
/* 81357E30 | 4E 80 00 20 */	blr
.endfn setMemoSetting__Q33ipl8savedata7ManagerFRCQ49textinput6extend8savedata11MemoSetting

# .text:0x17C | 0x81357E34 | size: 0xA8
# ipl::savedata::Manager::flushAsync(EGG::Heap*)
.fn flushAsync__Q33ipl8savedata7ManagerFPQ23EGG4Heap, global
/* 81357E34 | 94 21 FF 80 */	stwu r1, -0x80(r1)
/* 81357E38 | 7C 08 02 A6 */	mflr r0
/* 81357E3C | 90 01 00 84 */	stw r0, 0x84(r1)
/* 81357E40 | 39 61 00 80 */	addi r11, r1, 0x80
/* 81357E44 | 48 2A 16 85 */	bl _savegpr_29
/* 81357E48 | 7C 7D 1B 78 */	mr r29, r3
/* 81357E4C | 7C 9E 23 78 */	mr r30, r4
/* 81357E50 | 48 1D 8A 35 */	bl OSDisableInterrupts
/* 81357E54 | 7C 7F 1B 78 */	mr r31, r3
/* 81357E58 | 38 61 00 18 */	addi r3, r1, 0x18
/* 81357E5C | 48 13 B9 99 */	bl NETMD5Init
/* 81357E60 | 38 61 00 18 */	addi r3, r1, 0x18
/* 81357E64 | 38 9D 00 20 */	addi r4, r29, 0x20
/* 81357E68 | 38 A0 04 B0 */	li r5, 0x4b0
/* 81357E6C | 48 13 B9 C9 */	bl NETMD5Update
/* 81357E70 | 38 61 00 18 */	addi r3, r1, 0x18
/* 81357E74 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81357E78 | 48 13 BA AD */	bl NETMD5GetDigest
/* 81357E7C | 38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 81357E80 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81357E84 | 38 A0 00 10 */	li r5, 0x10
/* 81357E88 | 4B FD 83 A9 */	bl memcpy
/* 81357E8C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81357E90 | 80 AD 81 D0 */	lwz r5, lbl_81696210@sda21(r0)
/* 81357E94 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81357E98 | 7F C4 F3 78 */	mr r4, r30
/* 81357E9C | 80 63 00 6C */	lwz r3, 0x6c(r3)
/* 81357EA0 | 38 DD 00 20 */	addi r6, r29, 0x20
/* 81357EA4 | 38 E0 04 C0 */	li r7, 0x4c0
/* 81357EA8 | 39 00 00 30 */	li r8, 0x30
/* 81357EAC | 4B FE 5B 8D */	bl writeAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcPvUlUc
/* 81357EB0 | 90 7D 04 EC */	stw r3, 0x4ec(r29)
/* 81357EB4 | 7C 7E 1B 78 */	mr r30, r3
/* 81357EB8 | 7F E3 FB 78 */	mr r3, r31
/* 81357EBC | 48 1D 89 F1 */	bl OSRestoreInterrupts
/* 81357EC0 | 39 61 00 80 */	addi r11, r1, 0x80
/* 81357EC4 | 7F C3 F3 78 */	mr r3, r30
/* 81357EC8 | 48 2A 16 4D */	bl _restgpr_29
/* 81357ECC | 80 01 00 84 */	lwz r0, 0x84(r1)
/* 81357ED0 | 7C 08 03 A6 */	mtlr r0
/* 81357ED4 | 38 21 00 80 */	addi r1, r1, 0x80
/* 81357ED8 | 4E 80 00 20 */	blr
.endfn flushAsync__Q33ipl8savedata7ManagerFPQ23EGG4Heap

# .text:0x224 | 0x81357EDC | size: 0x88
# ipl::savedata::Manager::isFinished(ipl::nand::File*)
.fn isFinished__Q33ipl8savedata7ManagerFPQ33ipl4nand4File, global
/* 81357EDC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81357EE0 | 7C 08 02 A6 */	mflr r0
/* 81357EE4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81357EE8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81357EEC | 7C 9F 23 78 */	mr r31, r4
/* 81357EF0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81357EF4 | 7C 7E 1B 78 */	mr r30, r3
/* 81357EF8 | 7F E3 FB 78 */	mr r3, r31
/* 81357EFC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81357F00 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81357F04 | 7D 89 03 A6 */	mtctr r12
/* 81357F08 | 4E 80 04 21 */	bctrl
/* 81357F0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81357F10 | 40 82 00 20 */	bne .L_81357F30
/* 81357F14 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81357F18 | 7F E3 FB 78 */	mr r3, r31
/* 81357F1C | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81357F20 | 7D 89 03 A6 */	mtctr r12
/* 81357F24 | 4E 80 04 21 */	bctrl
/* 81357F28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81357F2C | 41 82 00 0C */	beq .L_81357F38
.L_81357F30:
/* 81357F30 | 38 00 00 00 */	li r0, 0x0
/* 81357F34 | 90 1E 04 EC */	stw r0, 0x4ec(r30)
.L_81357F38:
/* 81357F38 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81357F3C | 7F E3 FB 78 */	mr r3, r31
/* 81357F40 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81357F44 | 7D 89 03 A6 */	mtctr r12
/* 81357F48 | 4E 80 04 21 */	bctrl
/* 81357F4C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81357F50 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81357F54 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81357F58 | 7C 08 03 A6 */	mtlr r0
/* 81357F5C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81357F60 | 4E 80 00 20 */	blr
.endfn isFinished__Q33ipl8savedata7ManagerFPQ33ipl4nand4File

# .text:0x2AC | 0x81357F64 | size: 0x11C
# ipl::savedata::Manager::hasChannel(unsigned long long, int*, int*) const
.fn hasChannel__Q33ipl8savedata7ManagerCFUxPiPi, global
/* 81357F64 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81357F68 | 7C 08 02 A6 */	mflr r0
/* 81357F6C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81357F70 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81357F74 | 48 2A 15 39 */	bl _savegpr_22
/* 81357F78 | 38 00 FF FF */	li r0, -0x1
/* 81357F7C | 7C A0 00 39 */	and. r0, r5, r0
/* 81357F80 | 41 82 00 10 */	beq .L_81357F90
/* 81357F84 | 39 40 FF FF */	li r10, -0x1
/* 81357F88 | 39 20 FF FF */	li r9, -0x1
/* 81357F8C | 48 00 00 0C */	b .L_81357F98
.L_81357F90:
/* 81357F90 | 39 40 FF FF */	li r10, -0x1
/* 81357F94 | 39 20 00 00 */	li r9, 0x0
.L_81357F98:
/* 81357F98 | 38 80 FF 00 */	li r4, -0x100
/* 81357F9C | 38 00 FF FF */	li r0, -0x1
/* 81357FA0 | 7D 4C 20 38 */	and r12, r10, r4
/* 81357FA4 | 3B E0 00 00 */	li r31, 0x0
/* 81357FA8 | 7D 2B 00 38 */	and r11, r9, r0
/* 81357FAC | 3B 60 00 00 */	li r27, 0x0
/* 81357FB0 | 3B 80 00 0C */	li r28, 0xc
.L_81357FB4:
/* 81357FB4 | 7C 03 DA 14 */	add r0, r3, r27
/* 81357FB8 | 3B C0 00 00 */	li r30, 0x0
/* 81357FBC | 3B 40 00 00 */	li r26, 0x0
/* 81357FC0 | 7F 89 03 A6 */	mtctr r28
.L_81357FC4:
/* 81357FC4 | 7E C0 D2 14 */	add r22, r0, r26
/* 81357FC8 | 88 96 00 30 */	lbz r4, 0x30(r22)
/* 81357FCC | 28 04 00 03 */	cmplwi r4, 0x3
/* 81357FD0 | 40 82 00 74 */	bne .L_81358044
/* 81357FD4 | 80 96 00 3C */	lwz r4, 0x3c(r22)
/* 81357FD8 | 83 B6 00 38 */	lwz r29, 0x38(r22)
/* 81357FDC | 7C 97 50 38 */	and r23, r4, r10
/* 81357FE0 | 7F B6 48 38 */	and r22, r29, r9
/* 81357FE4 | 7C D7 BA 78 */	xor r23, r6, r23
/* 81357FE8 | 7C B6 B2 78 */	xor r22, r5, r22
/* 81357FEC | 7E F6 B3 79 */	or. r22, r23, r22
/* 81357FF0 | 41 82 00 34 */	beq .L_81358024
/* 81357FF4 | 7C 96 60 38 */	and r22, r4, r12
/* 81357FF8 | 7C D8 60 38 */	and r24, r6, r12
/* 81357FFC | 7F B7 58 38 */	and r23, r29, r11
/* 81358000 | 7C B9 58 38 */	and r25, r5, r11
/* 81358004 | 7E D8 C2 78 */	xor r24, r22, r24
/* 81358008 | 7E F9 CA 78 */	xor r25, r23, r25
/* 8135800C | 7F 19 CB 79 */	or. r25, r24, r25
/* 81358010 | 40 82 00 34 */	bne .L_81358044
/* 81358014 | 54 D9 06 3E */	clrlwi r25, r6, 24
/* 81358018 | 6B 39 00 41 */	xori r25, r25, 0x41
/* 8135801C | 2C 19 00 00 */	cmpwi r25, 0x0
/* 81358020 | 40 82 00 24 */	bne .L_81358044
.L_81358024:
/* 81358024 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 81358028 | 41 82 00 08 */	beq .L_81358030
/* 8135802C | 93 E7 00 00 */	stw r31, 0x0(r7)
.L_81358030:
/* 81358030 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 81358034 | 41 82 00 08 */	beq .L_8135803C
/* 81358038 | 93 C8 00 00 */	stw r30, 0x0(r8)
.L_8135803C:
/* 8135803C | 7F A3 EB 78 */	mr r3, r29
/* 81358040 | 48 00 00 28 */	b .L_81358068
.L_81358044:
/* 81358044 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81358048 | 3B 5A 00 10 */	addi r26, r26, 0x10
/* 8135804C | 42 00 FF 78 */	bdnz .L_81357FC4
/* 81358050 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81358054 | 3B 7B 00 C0 */	addi r27, r27, 0xc0
/* 81358058 | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 8135805C | 41 80 FF 58 */	blt .L_81357FB4
/* 81358060 | 38 80 00 00 */	li r4, 0x0
/* 81358064 | 38 60 00 00 */	li r3, 0x0
.L_81358068:
/* 81358068 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8135806C | 48 2A 14 8D */	bl _restgpr_22
/* 81358070 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81358074 | 7C 08 03 A6 */	mtlr r0
/* 81358078 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8135807C | 4E 80 00 20 */	blr
.endfn hasChannel__Q33ipl8savedata7ManagerCFUxPiPi

# .text:0x3C8 | 0x81358080 | size: 0x5C
# ipl::savedata::Manager::getNumValidChannel() const
.fn getNumValidChannel__Q33ipl8savedata7ManagerCFv, global
/* 81358080 | 39 20 00 00 */	li r9, 0x0
/* 81358084 | 39 40 00 00 */	li r10, 0x0
/* 81358088 | 38 80 00 00 */	li r4, 0x0
/* 8135808C | 38 00 00 0C */	li r0, 0xc
.L_81358090:
/* 81358090 | 7D 03 22 14 */	add r8, r3, r4
/* 81358094 | 38 A0 00 00 */	li r5, 0x0
/* 81358098 | 7C 09 03 A6 */	mtctr r0
.L_8135809C:
/* 8135809C | 7C E8 2A 14 */	add r7, r8, r5
/* 813580A0 | 88 C7 00 30 */	lbz r6, 0x30(r7)
/* 813580A4 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 813580A8 | 41 82 00 14 */	beq .L_813580BC
/* 813580AC | 80 C7 00 34 */	lwz r6, 0x34(r7)
/* 813580B0 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 813580B4 | 41 82 00 08 */	beq .L_813580BC
/* 813580B8 | 39 29 00 01 */	addi r9, r9, 0x1
.L_813580BC:
/* 813580BC | 38 A5 00 10 */	addi r5, r5, 0x10
/* 813580C0 | 42 00 FF DC */	bdnz .L_8135809C
/* 813580C4 | 39 4A 00 01 */	addi r10, r10, 0x1
/* 813580C8 | 38 84 00 C0 */	addi r4, r4, 0xc0
/* 813580CC | 2C 0A 00 04 */	cmpwi r10, 0x4
/* 813580D0 | 41 80 FF C0 */	blt .L_81358090
/* 813580D4 | 7D 23 4B 78 */	mr r3, r9
/* 813580D8 | 4E 80 00 20 */	blr
.endfn getNumValidChannel__Q33ipl8savedata7ManagerCFv

# .text:0x424 | 0x813580DC | size: 0x78
# ipl::savedata::Manager::isResetAcceptable()
.fn isResetAcceptable__Q33ipl8savedata7ManagerFv, global
/* 813580DC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813580E0 | 7C 08 02 A6 */	mflr r0
/* 813580E4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813580E8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813580EC | 7C 7F 1B 78 */	mr r31, r3
/* 813580F0 | 80 03 04 EC */	lwz r0, 0x4ec(r3)
/* 813580F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813580F8 | 41 82 00 3C */	beq .L_81358134
/* 813580FC | 7C 03 03 78 */	mr r3, r0
/* 81358100 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81358104 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81358108 | 7D 89 03 A6 */	mtctr r12
/* 8135810C | 4E 80 04 21 */	bctrl
/* 81358110 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81358114 | 40 82 00 20 */	bne .L_81358134
/* 81358118 | 80 7F 04 EC */	lwz r3, 0x4ec(r31)
/* 8135811C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81358120 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81358124 | 7D 89 03 A6 */	mtctr r12
/* 81358128 | 4E 80 04 21 */	bctrl
/* 8135812C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81358130 | 41 82 00 0C */	beq .L_8135813C
.L_81358134:
/* 81358134 | 38 60 00 01 */	li r3, 0x1
/* 81358138 | 48 00 00 08 */	b .L_81358140
.L_8135813C:
/* 8135813C | 38 60 00 00 */	li r3, 0x0
.L_81358140:
/* 81358140 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81358144 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81358148 | 7C 08 03 A6 */	mtlr r0
/* 8135814C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81358150 | 4E 80 00 20 */	blr
.endfn isResetAcceptable__Q33ipl8savedata7ManagerFv

# .text:0x49C | 0x81358154 | size: 0x38C
# ipl::savedata::Manager::initManagerTask(void*)
.fn initManagerTask__Q33ipl8savedata7ManagerFPv, global
/* 81358154 | 94 21 FE E0 */	stwu r1, -0x120(r1)
/* 81358158 | 7C 08 02 A6 */	mflr r0
/* 8135815C | 90 01 01 24 */	stw r0, 0x124(r1)
/* 81358160 | 39 61 01 20 */	addi r11, r1, 0x120
/* 81358164 | 48 2A 13 61 */	bl _savegpr_28
/* 81358168 | 38 00 04 C0 */	li r0, 0x4c0
/* 8135816C | 7C 7F 1B 78 */	mr r31, r3
/* 81358170 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 81358174 | 3B C0 00 00 */	li r30, 0x0
/* 81358178 | 3B A0 00 00 */	li r29, 0x0
/* 8135817C | 38 80 00 02 */	li r4, 0x2
/* 81358180 | 38 60 00 01 */	li r3, 0x1
/* 81358184 | 48 26 6D 35 */	bl ES_SetUid
/* 81358188 | 80 1F 04 F0 */	lwz r0, 0x4f0(r31)
/* 8135818C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81358190 | 40 82 02 DC */	bne .L_8135846C
/* 81358194 | 80 6D 81 D0 */	lwz r3, lbl_81696210@sda21(r0)
/* 81358198 | 38 81 00 78 */	addi r4, r1, 0x78
/* 8135819C | 38 A0 00 03 */	li r5, 0x3
/* 813581A0 | 48 00 7A F1 */	bl Open__Q33ipl4nand7wrapperFPCcP12NANDFileInfoUc
/* 813581A4 | 7C 64 1B 78 */	mr r4, r3
/* 813581A8 | 7F E3 FB 78 */	mr r3, r31
/* 813581AC | 48 00 16 35 */	bl nand_error_handling__Q33ipl8savedata7ManagerFi
/* 813581B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813581B4 | 41 82 01 EC */	beq .L_813583A0
/* 813581B8 | 38 61 00 78 */	addi r3, r1, 0x78
/* 813581BC | 38 81 00 08 */	addi r4, r1, 0x8
/* 813581C0 | 48 00 7D 05 */	bl GetLength__Q33ipl4nand7wrapperFP12NANDFileInfoPUl
/* 813581C4 | 7C 64 1B 78 */	mr r4, r3
/* 813581C8 | 7F E3 FB 78 */	mr r3, r31
/* 813581CC | 48 00 16 15 */	bl nand_error_handling__Q33ipl8savedata7ManagerFi
/* 813581D0 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 813581D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813581D8 | 40 82 00 0C */	bne .L_813581E4
/* 813581DC | 3B C0 00 01 */	li r30, 0x1
/* 813581E0 | 48 00 01 A8 */	b .L_81358388
.L_813581E4:
/* 813581E4 | 38 61 00 78 */	addi r3, r1, 0x78
/* 813581E8 | 38 9F 00 20 */	addi r4, r31, 0x20
/* 813581EC | 38 A0 00 20 */	li r5, 0x20
/* 813581F0 | 48 00 7B 79 */	bl Read__Q33ipl4nand7wrapperFP12NANDFileInfoPvUl
/* 813581F4 | 7C 64 1B 78 */	mr r4, r3
/* 813581F8 | 7F E3 FB 78 */	mr r3, r31
/* 813581FC | 48 00 15 E5 */	bl nand_error_handling__Q33ipl8savedata7ManagerFi
/* 81358200 | 80 1F 05 00 */	lwz r0, 0x500(r31)
/* 81358204 | 2C 00 FF F1 */	cmpwi r0, -0xf
/* 81358208 | 41 82 00 0C */	beq .L_81358214
/* 8135820C | 2C 00 FF FB */	cmpwi r0, -0x5
/* 81358210 | 40 82 00 20 */	bne .L_81358230
.L_81358214:
/* 81358214 | 80 6D 81 D0 */	lwz r3, lbl_81696210@sda21(r0)
/* 81358218 | 48 00 7E 91 */	bl Delete__Q33ipl4nand7wrapperFPCc
/* 8135821C | 7C 64 1B 78 */	mr r4, r3
/* 81358220 | 7F E3 FB 78 */	mr r3, r31
/* 81358224 | 48 00 15 BD */	bl nand_error_handling__Q33ipl8savedata7ManagerFi
/* 81358228 | 3B C0 00 01 */	li r30, 0x1
/* 8135822C | 48 00 01 5C */	b .L_81358388
.L_81358230:
/* 81358230 | 80 1F 00 28 */	lwz r0, 0x28(r31)
/* 81358234 | 28 00 00 03 */	cmplwi r0, 0x3
/* 81358238 | 40 81 00 0C */	ble .L_81358244
/* 8135823C | 3B C0 00 01 */	li r30, 0x1
/* 81358240 | 48 00 01 48 */	b .L_81358388
.L_81358244:
/* 81358244 | 88 1F 00 20 */	lbz r0, 0x20(r31)
/* 81358248 | 2C 00 00 52 */	cmpwi r0, 0x52
/* 8135824C | 40 82 00 28 */	bne .L_81358274
/* 81358250 | 88 1F 00 21 */	lbz r0, 0x21(r31)
/* 81358254 | 2C 00 00 49 */	cmpwi r0, 0x49
/* 81358258 | 40 82 00 1C */	bne .L_81358274
/* 8135825C | 88 1F 00 22 */	lbz r0, 0x22(r31)
/* 81358260 | 2C 00 00 50 */	cmpwi r0, 0x50
/* 81358264 | 40 82 00 10 */	bne .L_81358274
/* 81358268 | 88 1F 00 23 */	lbz r0, 0x23(r31)
/* 8135826C | 2C 00 00 4C */	cmpwi r0, 0x4c
/* 81358270 | 41 82 00 0C */	beq .L_8135827C
.L_81358274:
/* 81358274 | 3B C0 00 01 */	li r30, 0x1
/* 81358278 | 48 00 01 10 */	b .L_81358388
.L_8135827C:
/* 8135827C | 38 61 00 78 */	addi r3, r1, 0x78
/* 81358280 | 38 81 00 0C */	addi r4, r1, 0xc
/* 81358284 | 48 00 7C 41 */	bl GetLength__Q33ipl4nand7wrapperFP12NANDFileInfoPUl
/* 81358288 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135828C | 40 82 00 1C */	bne .L_813582A8
/* 81358290 | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 81358294 | 28 03 00 20 */	cmplwi r3, 0x20
/* 81358298 | 41 80 00 10 */	blt .L_813582A8
/* 8135829C | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 813582A0 | 7C 03 00 40 */	cmplw r3, r0
/* 813582A4 | 40 81 00 0C */	ble .L_813582B0
.L_813582A8:
/* 813582A8 | 3B C0 00 01 */	li r30, 0x1
/* 813582AC | 48 00 00 DC */	b .L_81358388
.L_813582B0:
/* 813582B0 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 813582B4 | 38 61 00 78 */	addi r3, r1, 0x78
/* 813582B8 | 38 80 00 00 */	li r4, 0x0
/* 813582BC | 38 A0 00 00 */	li r5, 0x0
/* 813582C0 | 48 00 7B 91 */	bl Seek__Q33ipl4nand7wrapperFP12NANDFileInfoll
/* 813582C4 | 7C 64 1B 78 */	mr r4, r3
/* 813582C8 | 7F E3 FB 78 */	mr r3, r31
/* 813582CC | 48 00 15 15 */	bl nand_error_handling__Q33ipl8savedata7ManagerFi
/* 813582D0 | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 813582D4 | 38 61 00 78 */	addi r3, r1, 0x78
/* 813582D8 | 38 9F 00 20 */	addi r4, r31, 0x20
/* 813582DC | 48 00 7A 8D */	bl Read__Q33ipl4nand7wrapperFP12NANDFileInfoPvUl
/* 813582E0 | 7C 64 1B 78 */	mr r4, r3
/* 813582E4 | 7F E3 FB 78 */	mr r3, r31
/* 813582E8 | 48 00 14 F9 */	bl nand_error_handling__Q33ipl8savedata7ManagerFi
/* 813582EC | 80 1F 05 00 */	lwz r0, 0x500(r31)
/* 813582F0 | 2C 00 FF F1 */	cmpwi r0, -0xf
/* 813582F4 | 41 82 00 0C */	beq .L_81358300
/* 813582F8 | 2C 00 FF FB */	cmpwi r0, -0x5
/* 813582FC | 40 82 00 20 */	bne .L_8135831C
.L_81358300:
/* 81358300 | 80 6D 81 D0 */	lwz r3, lbl_81696210@sda21(r0)
/* 81358304 | 48 00 7D A5 */	bl Delete__Q33ipl4nand7wrapperFPCc
/* 81358308 | 7C 64 1B 78 */	mr r4, r3
/* 8135830C | 7F E3 FB 78 */	mr r3, r31
/* 81358310 | 48 00 14 D1 */	bl nand_error_handling__Q33ipl8savedata7ManagerFi
/* 81358314 | 3B C0 00 01 */	li r30, 0x1
/* 81358318 | 48 00 00 70 */	b .L_81358388
.L_8135831C:
/* 8135831C | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 81358320 | 38 61 00 20 */	addi r3, r1, 0x20
/* 81358324 | 3B 84 FF F0 */	subi r28, r4, 0x10
/* 81358328 | 48 13 B4 CD */	bl NETMD5Init
/* 8135832C | 7F 85 E3 78 */	mr r5, r28
/* 81358330 | 38 61 00 20 */	addi r3, r1, 0x20
/* 81358334 | 38 9F 00 20 */	addi r4, r31, 0x20
/* 81358338 | 48 13 B4 FD */	bl NETMD5Update
/* 8135833C | 38 61 00 20 */	addi r3, r1, 0x20
/* 81358340 | 38 81 00 10 */	addi r4, r1, 0x10
/* 81358344 | 48 13 B5 E1 */	bl NETMD5GetDigest
/* 81358348 | 38 00 00 10 */	li r0, 0x10
/* 8135834C | 38 61 00 10 */	addi r3, r1, 0x10
/* 81358350 | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 81358354 | 38 E0 00 00 */	li r7, 0x0
/* 81358358 | 7C 09 03 A6 */	mtctr r0
.L_8135835C:
/* 8135835C | 7C 07 2A 14 */	add r0, r7, r5
/* 81358360 | 88 C3 00 00 */	lbz r6, 0x0(r3)
/* 81358364 | 7C 80 FA 14 */	add r4, r0, r31
/* 81358368 | 88 04 00 10 */	lbz r0, 0x10(r4)
/* 8135836C | 7C 06 00 40 */	cmplw r6, r0
/* 81358370 | 41 82 00 0C */	beq .L_8135837C
/* 81358374 | 3B C0 00 01 */	li r30, 0x1
/* 81358378 | 48 00 00 10 */	b .L_81358388
.L_8135837C:
/* 8135837C | 38 E7 00 01 */	addi r7, r7, 0x1
/* 81358380 | 38 63 00 01 */	addi r3, r3, 0x1
/* 81358384 | 42 00 FF D8 */	bdnz .L_8135835C
.L_81358388:
/* 81358388 | 38 61 00 78 */	addi r3, r1, 0x78
/* 8135838C | 48 00 79 79 */	bl Close__Q33ipl4nand7wrapperFP12NANDFileInfo
/* 81358390 | 7C 64 1B 78 */	mr r4, r3
/* 81358394 | 7F E3 FB 78 */	mr r3, r31
/* 81358398 | 48 00 14 49 */	bl nand_error_handling__Q33ipl8savedata7ManagerFi
/* 8135839C | 48 00 00 54 */	b .L_813583F0
.L_813583A0:
/* 813583A0 | 80 BF 05 00 */	lwz r5, 0x500(r31)
/* 813583A4 | 2C 05 FF F4 */	cmpwi r5, -0xc
/* 813583A8 | 40 82 00 0C */	bne .L_813583B4
/* 813583AC | 3B C0 00 01 */	li r30, 0x1
/* 813583B0 | 48 00 00 40 */	b .L_813583F0
.L_813583B4:
/* 813583B4 | 3F 80 81 09 */	lis r28, smArg__Q23ipl6System@ha
/* 813583B8 | 3C C0 81 64 */	lis r6, lbl_81639172@ha
/* 813583BC | 3B 9C 90 08 */	addi r28, r28, smArg__Q23ipl6System@l
/* 813583C0 | 38 8D 81 D4 */	li r4, lbl_81696214@sda21
/* 813583C4 | 80 7C 00 98 */	lwz r3, 0x98(r28)
/* 813583C8 | 38 C6 91 72 */	addi r6, r6, lbl_81639172@l
/* 813583CC | 38 E0 01 C2 */	li r7, 0x1c2
/* 813583D0 | 4B FF E3 29 */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 813583D4 | 80 7C 00 98 */	lwz r3, 0x98(r28)
/* 813583D8 | 38 80 00 01 */	li r4, 0x1
/* 813583DC | 38 A0 00 02 */	li r5, 0x2
/* 813583E0 | 38 C0 00 00 */	li r6, 0x0
/* 813583E4 | 38 E0 00 00 */	li r7, 0x0
/* 813583E8 | 39 00 FF FF */	li r8, -0x1
/* 813583EC | 4B FF E1 29 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_813583F0:
/* 813583F0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813583F4 | 41 82 00 14 */	beq .L_81358408
/* 813583F8 | 7F E3 FB 78 */	mr r3, r31
/* 813583FC | 48 00 00 E5 */	bl setDefaultSaveData__Q33ipl8savedata7ManagerFv
/* 81358400 | 3B A0 00 01 */	li r29, 0x1
/* 81358404 | 48 00 00 20 */	b .L_81358424
.L_81358408:
/* 81358408 | 80 BF 00 28 */	lwz r5, 0x28(r31)
/* 8135840C | 28 05 00 03 */	cmplwi r5, 0x3
/* 81358410 | 40 80 00 14 */	bge .L_81358424
/* 81358414 | 7F E3 FB 78 */	mr r3, r31
/* 81358418 | 38 80 00 03 */	li r4, 0x3
/* 8135841C | 48 00 11 81 */	bl updateVersion__Q33ipl8savedata7ManagerFUlUl
/* 81358420 | 3B A0 00 01 */	li r29, 0x1
.L_81358424:
/* 81358424 | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 81358428 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135842C | 41 82 00 14 */	beq .L_81358440
/* 81358430 | 38 00 00 00 */	li r0, 0x0
/* 81358434 | 90 7F 04 E0 */	stw r3, 0x4e0(r31)
/* 81358438 | 3B A0 00 01 */	li r29, 0x1
/* 8135843C | 90 1F 00 2C */	stw r0, 0x2c(r31)
.L_81358440:
/* 81358440 | 80 7F 04 C0 */	lwz r3, 0x4c0(r31)
/* 81358444 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81358448 | 41 80 00 24 */	blt .L_8135846C
/* 8135844C | 2C 03 00 14 */	cmpwi r3, 0x14
/* 81358450 | 40 80 00 1C */	bge .L_8135846C
/* 81358454 | 88 1F 04 E8 */	lbz r0, 0x4e8(r31)
/* 81358458 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135845C | 41 82 00 10 */	beq .L_8135846C
/* 81358460 | 38 00 00 00 */	li r0, 0x0
/* 81358464 | 90 7F 04 E4 */	stw r3, 0x4e4(r31)
/* 81358468 | 98 1F 04 E8 */	stb r0, 0x4e8(r31)
.L_8135846C:
/* 8135846C | 7F E3 FB 78 */	mr r3, r31
/* 81358470 | 48 00 01 91 */	bl updateChanInfos__Q33ipl8savedata7ManagerFv
/* 81358474 | 7F A3 1B 78 */	or r3, r29, r3
/* 81358478 | 30 03 FF FF */	subic r0, r3, 0x1
/* 8135847C | 7C 00 19 11 */	subfe. r0, r0, r3
/* 81358480 | 41 82 00 40 */	beq .L_813584C0
/* 81358484 | 80 7F 04 F0 */	lwz r3, 0x4f0(r31)
/* 81358488 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135848C | 41 82 00 1C */	beq .L_813584A8
/* 81358490 | 41 82 00 18 */	beq .L_813584A8
/* 81358494 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81358498 | 38 80 00 01 */	li r4, 0x1
/* 8135849C | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813584A0 | 7D 89 03 A6 */	mtctr r12
/* 813584A4 | 4E 80 04 21 */	bctrl
.L_813584A8:
/* 813584A8 | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 813584AC | 7F E3 FB 78 */	mr r3, r31
/* 813584B0 | 4B FF F9 85 */	bl flushAsync__Q33ipl8savedata7ManagerFPQ23EGG4Heap
/* 813584B4 | 38 00 00 00 */	li r0, 0x0
/* 813584B8 | 90 7F 04 F0 */	stw r3, 0x4f0(r31)
/* 813584BC | 90 1F 04 EC */	stw r0, 0x4ec(r31)
.L_813584C0:
/* 813584C0 | 38 00 00 01 */	li r0, 0x1
/* 813584C4 | 39 61 01 20 */	addi r11, r1, 0x120
/* 813584C8 | 98 1F 04 F4 */	stb r0, 0x4f4(r31)
/* 813584CC | 48 2A 10 45 */	bl _restgpr_28
/* 813584D0 | 80 01 01 24 */	lwz r0, 0x124(r1)
/* 813584D4 | 7C 08 03 A6 */	mtlr r0
/* 813584D8 | 38 21 01 20 */	addi r1, r1, 0x120
/* 813584DC | 4E 80 00 20 */	blr
.endfn initManagerTask__Q33ipl8savedata7ManagerFPv

# .text:0x828 | 0x813584E0 | size: 0x78
# ipl::savedata::Manager::setDefaultSaveData()
.fn setDefaultSaveData__Q33ipl8savedata7ManagerFv, global
/* 813584E0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813584E4 | 7C 08 02 A6 */	mflr r0
/* 813584E8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813584EC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813584F0 | 7C 7F 1B 78 */	mr r31, r3
/* 813584F4 | 48 00 00 65 */	bl setDefaultHeader__Q33ipl8savedata7ManagerFv
/* 813584F8 | 3C 80 81 61 */	lis r4, cDefaultChanList__3ipl@ha
/* 813584FC | 38 7F 00 30 */	addi r3, r31, 0x30
/* 81358500 | 38 84 D6 68 */	addi r4, r4, cDefaultChanList__3ipl@l
/* 81358504 | 38 A0 03 00 */	li r5, 0x300
/* 81358508 | 4B FD 7D 29 */	bl memcpy
/* 8135850C | 7F E3 FB 78 */	mr r3, r31
/* 81358510 | 48 00 00 85 */	bl setDefaultKeyboard__Q33ipl8savedata7ManagerFv
/* 81358514 | 7F E3 FB 78 */	mr r3, r31
/* 81358518 | 48 00 00 D1 */	bl setDefaultTVRC__Q33ipl8savedata7ManagerFv
/* 8135851C | 7F E3 FB 78 */	mr r3, r31
/* 81358520 | 48 00 11 51 */	bl iplSavedata_81359670
/* 81358524 | 38 00 00 0C */	li r0, 0xc
/* 81358528 | 38 A0 00 00 */	li r5, 0x0
/* 8135852C | 38 80 00 00 */	li r4, 0x0
/* 81358530 | 7C 09 03 A6 */	mtctr r0
.L_81358534:
/* 81358534 | 7C 7F 2A 14 */	add r3, r31, r5
/* 81358538 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 8135853C | 98 83 04 C4 */	stb r4, 0x4c4(r3)
/* 81358540 | 42 00 FF F4 */	bdnz .L_81358534
/* 81358544 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81358548 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8135854C | 7C 08 03 A6 */	mtlr r0
/* 81358550 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81358554 | 4E 80 00 20 */	blr
.endfn setDefaultSaveData__Q33ipl8savedata7ManagerFv

# .text:0x8A0 | 0x81358558 | size: 0x3C
# ipl::savedata::Manager::setDefaultHeader()
.fn setDefaultHeader__Q33ipl8savedata7ManagerFv, global
/* 81358558 | 39 20 00 52 */	li r9, 0x52
/* 8135855C | 39 00 00 49 */	li r8, 0x49
/* 81358560 | 38 E0 00 50 */	li r7, 0x50
/* 81358564 | 38 C0 00 4C */	li r6, 0x4c
/* 81358568 | 38 A0 04 C0 */	li r5, 0x4c0
/* 8135856C | 38 80 00 03 */	li r4, 0x3
/* 81358570 | 38 00 00 00 */	li r0, 0x0
/* 81358574 | 99 23 00 20 */	stb r9, 0x20(r3)
/* 81358578 | 99 03 00 21 */	stb r8, 0x21(r3)
/* 8135857C | 98 E3 00 22 */	stb r7, 0x22(r3)
/* 81358580 | 98 C3 00 23 */	stb r6, 0x23(r3)
/* 81358584 | 90 A3 00 24 */	stw r5, 0x24(r3)
/* 81358588 | 90 83 00 28 */	stw r4, 0x28(r3)
/* 8135858C | 90 03 00 2C */	stw r0, 0x2c(r3)
/* 81358590 | 4E 80 00 20 */	blr
.endfn setDefaultHeader__Q33ipl8savedata7ManagerFv

# .text:0x8DC | 0x81358594 | size: 0x54
# ipl::savedata::Manager::setDefaultKeyboard()
.fn setDefaultKeyboard__Q33ipl8savedata7ManagerFv, global
/* 81358594 | 88 A3 03 34 */	lbz r5, 0x334(r3)
/* 81358598 | 38 80 00 01 */	li r4, 0x1
/* 8135859C | 88 03 03 35 */	lbz r0, 0x335(r3)
/* 813585A0 | 50 80 26 36 */	rlwimi r0, r4, 4, 24, 27
/* 813585A4 | 38 80 00 02 */	li r4, 0x2
/* 813585A8 | 60 A5 00 80 */	ori r5, r5, 0x80
/* 813585AC | 38 C0 00 00 */	li r6, 0x0
/* 813585B0 | 38 E0 00 11 */	li r7, 0x11
/* 813585B4 | 50 85 1E 78 */	rlwimi r5, r4, 3, 25, 28
/* 813585B8 | 54 04 00 36 */	clrrwi r4, r0, 4
/* 813585BC | 54 A0 00 38 */	clrrwi r0, r5, 3
/* 813585C0 | 98 E3 03 30 */	stb r7, 0x330(r3)
/* 813585C4 | 38 A0 00 FA */	li r5, 0xfa
/* 813585C8 | 98 A3 03 31 */	stb r5, 0x331(r3)
/* 813585CC | 98 C3 03 32 */	stb r6, 0x332(r3)
/* 813585D0 | 98 C3 03 33 */	stb r6, 0x333(r3)
/* 813585D4 | 98 83 03 35 */	stb r4, 0x335(r3)
/* 813585D8 | 98 03 03 34 */	stb r0, 0x334(r3)
/* 813585DC | 98 C3 03 36 */	stb r6, 0x336(r3)
/* 813585E0 | 98 C3 03 37 */	stb r6, 0x337(r3)
/* 813585E4 | 4E 80 00 20 */	blr
.endfn setDefaultKeyboard__Q33ipl8savedata7ManagerFv

# .text:0x930 | 0x813585E8 | size: 0x18
# ipl::savedata::Manager::setDefaultTVRC()
.fn setDefaultTVRC__Q33ipl8savedata7ManagerFv, global
/* 813585E8 | 38 00 00 00 */	li r0, 0x0
/* 813585EC | 98 03 03 38 */	stb r0, 0x338(r3)
/* 813585F0 | 98 03 03 39 */	stb r0, 0x339(r3)
/* 813585F4 | 98 03 03 3A */	stb r0, 0x33a(r3)
/* 813585F8 | 98 03 03 3B */	stb r0, 0x33b(r3)
/* 813585FC | 4E 80 00 20 */	blr
.endfn setDefaultTVRC__Q33ipl8savedata7ManagerFv

# .text:0x948 | 0x81358600 | size: 0x150
# ipl::savedata::Manager::updateChanInfos()
.fn updateChanInfos__Q33ipl8savedata7ManagerFv, global
/* 81358600 | 94 21 FE 60 */	stwu r1, -0x1a0(r1)
/* 81358604 | 7C 08 02 A6 */	mflr r0
/* 81358608 | 90 01 01 A4 */	stw r0, 0x1a4(r1)
/* 8135860C | 39 61 01 A0 */	addi r11, r1, 0x1a0
/* 81358610 | 48 2A 0E B9 */	bl _savegpr_29
/* 81358614 | 7C 7D 1B 78 */	mr r29, r3
/* 81358618 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8135861C | 38 60 00 00 */	li r3, 0x0
/* 81358620 | 48 26 5E C5 */	bl fn_815BE4E4
/* 81358624 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 81358628 | 38 A0 FF E0 */	li r5, -0x20
/* 8135862C | 80 9D 00 04 */	lwz r4, 0x4(r29)
/* 81358630 | 54 03 18 38 */	slwi r3, r0, 3
/* 81358634 | 48 29 FA A1 */	bl __nwa__FUlPQ23EGG4Heapi
/* 81358638 | 7C 7E 1B 78 */	mr r30, r3
/* 8135863C | 38 81 00 08 */	addi r4, r1, 0x8
/* 81358640 | 48 26 5E A5 */	bl fn_815BE4E4
/* 81358644 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81358648 | 41 82 00 44 */	beq .L_8135868C
/* 8135864C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81358650 | 3C C0 81 64 */	lis r6, lbl_81639172@ha
/* 81358654 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81358658 | 7C 65 1B 78 */	mr r5, r3
/* 8135865C | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 81358660 | 38 C6 91 72 */	addi r6, r6, lbl_81639172@l
/* 81358664 | 38 8D 81 D9 */	li r4, lbl_81696219@sda21
/* 81358668 | 38 E0 02 7D */	li r7, 0x27d
/* 8135866C | 4B FF E0 8D */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 81358670 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 81358674 | 38 80 00 01 */	li r4, 0x1
/* 81358678 | 38 A0 00 02 */	li r5, 0x2
/* 8135867C | 38 C0 00 00 */	li r6, 0x0
/* 81358680 | 38 E0 00 00 */	li r7, 0x0
/* 81358684 | 39 00 FF FF */	li r8, -0x1
/* 81358688 | 4B FF DE 8D */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_8135868C:
/* 8135868C | 3C A0 48 41 */	lis r5, 0x4841
/* 81358690 | 3C 80 00 01 */	lis r4, 0x1
/* 81358694 | 3B E0 00 00 */	li r31, 0x0
/* 81358698 | 7F A3 EB 78 */	mr r3, r29
/* 8135869C | 38 04 00 02 */	addi r0, r4, 0x2
/* 813586A0 | 38 A5 41 00 */	addi r5, r5, 0x4100
/* 813586A4 | 9B FD 04 F5 */	stb r31, 0x4f5(r29)
/* 813586A8 | 7F C4 F3 78 */	mr r4, r30
/* 813586AC | 9B FD 04 F6 */	stb r31, 0x4f6(r29)
/* 813586B0 | 9B FD 04 F7 */	stb r31, 0x4f7(r29)
/* 813586B4 | 90 BD 04 FC */	stw r5, 0x4fc(r29)
/* 813586B8 | 90 1D 04 F8 */	stw r0, 0x4f8(r29)
/* 813586BC | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 813586C0 | 48 00 00 91 */	bl deleteInvalidTitle__Q33ipl8savedata7ManagerFPUxUl
/* 813586C4 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 813586C8 | 7F A3 EB 78 */	mr r3, r29
/* 813586CC | 7F C4 F3 78 */	mr r4, r30
/* 813586D0 | 48 00 02 A1 */	bl checkSpecialTitles__Q33ipl8savedata7ManagerFPUxUl
/* 813586D4 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 813586D8 | 7F A3 EB 78 */	mr r3, r29
/* 813586DC | 7F C4 F3 78 */	mr r4, r30
/* 813586E0 | 48 00 04 F9 */	bl iplSavedata_81358BD8
/* 813586E4 | 38 00 00 30 */	li r0, 0x30
/* 813586E8 | 38 61 00 0C */	addi r3, r1, 0xc
/* 813586EC | 7C 09 03 A6 */	mtctr r0
.L_813586F0:
/* 813586F0 | 93 E3 00 04 */	stw r31, 0x4(r3)
/* 813586F4 | 97 E3 00 08 */	stwu r31, 0x8(r3)
/* 813586F8 | 42 00 FF F8 */	bdnz .L_813586F0
/* 813586FC | 80 C1 00 08 */	lwz r6, 0x8(r1)
/* 81358700 | 7F A3 EB 78 */	mr r3, r29
/* 81358704 | 7F C5 F3 78 */	mr r5, r30
/* 81358708 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8135870C | 48 00 05 9D */	bl makePriorTitleIDList__Q33ipl8savedata7ManagerFPUxPUxUl
/* 81358710 | 80 C1 00 08 */	lwz r6, 0x8(r1)
/* 81358714 | 7F A3 EB 78 */	mr r3, r29
/* 81358718 | 7F C5 F3 78 */	mr r5, r30
/* 8135871C | 38 81 00 10 */	addi r4, r1, 0x10
/* 81358720 | 48 00 07 9D */	bl integrateTitleIDList__Q33ipl8savedata7ManagerFPUxPUxUl
/* 81358724 | 7F C3 F3 78 */	mr r3, r30
/* 81358728 | 48 29 F9 C5 */	bl __dla__FPv
/* 8135872C | 7F A3 EB 78 */	mr r3, r29
/* 81358730 | 38 81 00 10 */	addi r4, r1, 0x10
/* 81358734 | 48 00 0A 31 */	bl doUpdateChanInfos__Q33ipl8savedata7ManagerFPUx
/* 81358738 | 39 61 01 A0 */	addi r11, r1, 0x1a0
/* 8135873C | 48 2A 0D D9 */	bl _restgpr_29
/* 81358740 | 80 01 01 A4 */	lwz r0, 0x1a4(r1)
/* 81358744 | 7C 08 03 A6 */	mtlr r0
/* 81358748 | 38 21 01 A0 */	addi r1, r1, 0x1a0
/* 8135874C | 4E 80 00 20 */	blr
.endfn updateChanInfos__Q33ipl8savedata7ManagerFv

# .text:0xA98 | 0x81358750 | size: 0x220
# ipl::savedata::Manager::deleteInvalidTitle(unsigned long long*, unsigned long)
.fn deleteInvalidTitle__Q33ipl8savedata7ManagerFPUxUl, global
/* 81358750 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81358754 | 7C 08 02 A6 */	mflr r0
/* 81358758 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 8135875C | 39 61 00 50 */	addi r11, r1, 0x50
/* 81358760 | 48 2A 0D 39 */	bl _savegpr_17
/* 81358764 | 3A A0 00 00 */	li r21, 0x0
/* 81358768 | 7C 72 1B 78 */	mr r18, r3
/* 8135876C | 7C 93 23 78 */	mr r19, r4
/* 81358770 | 7C B4 2B 78 */	mr r20, r5
/* 81358774 | 7E BE AB 78 */	mr r30, r21
/* 81358778 | 7E B9 AB 78 */	mr r25, r21
/* 8135877C | 7E BD AB 78 */	mr r29, r21
/* 81358780 | 7E B8 AB 78 */	mr r24, r21
/* 81358784 | 3A 20 00 00 */	li r17, 0x0
/* 81358788 | 3B E0 00 01 */	li r31, 0x1
/* 8135878C | 3A E0 FF FF */	li r23, -0x1
/* 81358790 | 3B 40 FF 00 */	li r26, -0x100
/* 81358794 | 3F 60 48 41 */	lis r27, 0x4841
/* 81358798 | 3F 80 00 01 */	lis r28, 0x1
/* 8135879C | 48 00 01 B4 */	b .L_81358950
.L_813587A0:
/* 813587A0 | 7C 13 88 2E */	lwzx r0, r19, r17
/* 813587A4 | 7E D3 8A 14 */	add r22, r19, r17
/* 813587A8 | 7C 03 B8 38 */	and r3, r0, r23
/* 813587AC | 3C 03 FF FF */	subis r0, r3, 0x1
/* 813587B0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813587B4 | 41 82 00 38 */	beq .L_813587EC
/* 813587B8 | 28 00 00 02 */	cmplwi r0, 0x2
/* 813587BC | 41 82 00 30 */	beq .L_813587EC
/* 813587C0 | 28 00 00 00 */	cmplwi r0, 0x0
/* 813587C4 | 41 82 00 28 */	beq .L_813587EC
/* 813587C8 | 28 00 00 04 */	cmplwi r0, 0x4
/* 813587CC | 41 82 00 20 */	beq .L_813587EC
/* 813587D0 | 28 00 00 06 */	cmplwi r0, 0x6
/* 813587D4 | 41 82 00 18 */	beq .L_813587EC
/* 813587D8 | 28 00 00 03 */	cmplwi r0, 0x3
/* 813587DC | 41 82 00 10 */	beq .L_813587EC
/* 813587E0 | 93 16 00 04 */	stw r24, 0x4(r22)
/* 813587E4 | 93 16 00 00 */	stw r24, 0x0(r22)
/* 813587E8 | 48 00 01 60 */	b .L_81358948
.L_813587EC:
/* 813587EC | 93 21 00 0C */	stw r25, 0xc(r1)
/* 813587F0 | 38 E1 00 0C */	addi r7, r1, 0xc
/* 813587F4 | 80 72 00 04 */	lwz r3, 0x4(r18)
/* 813587F8 | 80 B6 00 00 */	lwz r5, 0x0(r22)
/* 813587FC | 80 D6 00 04 */	lwz r6, 0x4(r22)
/* 81358800 | 48 00 CF 05 */	bl GetTmdView__Q33ipl7utility6ESMiscFPQ23EGG4HeapUxPP9ESTmdView
/* 81358804 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81358808 | 40 82 00 4C */	bne .L_81358854
/* 8135880C | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 81358810 | 80 03 00 68 */	lwz r0, 0x68(r3)
/* 81358814 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 81358818 | 68 00 00 40 */	xori r0, r0, 0x40
/* 8135881C | 7C 00 1B 79 */	or. r0, r0, r3
/* 81358820 | 40 82 00 34 */	bne .L_81358854
/* 81358824 | 80 96 00 00 */	lwz r4, 0x0(r22)
/* 81358828 | 38 7B 41 00 */	addi r3, r27, 0x4100
/* 8135882C | 80 B6 00 04 */	lwz r5, 0x4(r22)
/* 81358830 | 38 1C 00 02 */	addi r0, r28, 0x2
/* 81358834 | 7C 84 B8 38 */	and r4, r4, r23
/* 81358838 | 7C A5 D0 38 */	and r5, r5, r26
/* 8135883C | 7C A3 1A 78 */	xor r3, r5, r3
/* 81358840 | 7C 80 02 78 */	xor r0, r4, r0
/* 81358844 | 7C 60 03 79 */	or. r0, r3, r0
/* 81358848 | 41 82 00 0C */	beq .L_81358854
/* 8135884C | 93 B6 00 04 */	stw r29, 0x4(r22)
/* 81358850 | 93 B6 00 00 */	stw r29, 0x0(r22)
.L_81358854:
/* 81358854 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 81358858 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8135885C | 41 82 00 18 */	beq .L_81358874
/* 81358860 | 80 72 00 04 */	lwz r3, 0x4(r18)
/* 81358864 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81358868 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8135886C | 7D 89 03 A6 */	mtctr r12
/* 81358870 | 4E 80 04 21 */	bctrl
.L_81358874:
/* 81358874 | 80 B6 00 00 */	lwz r5, 0x0(r22)
/* 81358878 | 38 1B 41 00 */	addi r0, r27, 0x4100
/* 8135887C | 80 D6 00 04 */	lwz r6, 0x4(r22)
/* 81358880 | 38 9C 00 02 */	addi r4, r28, 0x2
/* 81358884 | 7C A7 B8 38 */	and r7, r5, r23
/* 81358888 | 7C C8 D0 38 */	and r8, r6, r26
/* 8135888C | 7D 03 02 78 */	xor r3, r8, r0
/* 81358890 | 7C E0 22 78 */	xor r0, r7, r4
/* 81358894 | 7C 60 03 79 */	or. r0, r3, r0
/* 81358898 | 40 82 00 5C */	bne .L_813588F4
/* 8135889C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813588A0 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 813588A4 | 80 72 00 04 */	lwz r3, 0x4(r18)
/* 813588A8 | 80 B6 00 00 */	lwz r5, 0x0(r22)
/* 813588AC | 80 D6 00 04 */	lwz r6, 0x4(r22)
/* 813588B0 | 48 00 CE 55 */	bl GetTmdView__Q33ipl7utility6ESMiscFPQ23EGG4HeapUxPP9ESTmdView
/* 813588B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813588B8 | 40 82 00 18 */	bne .L_813588D0
/* 813588BC | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 813588C0 | A0 03 00 58 */	lhz r0, 0x58(r3)
/* 813588C4 | 28 00 FF 00 */	cmplwi r0, 0xff00
/* 813588C8 | 40 82 00 08 */	bne .L_813588D0
/* 813588CC | 9B F2 04 F7 */	stb r31, 0x4f7(r18)
.L_813588D0:
/* 813588D0 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 813588D4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813588D8 | 41 82 00 70 */	beq .L_81358948
/* 813588DC | 80 72 00 04 */	lwz r3, 0x4(r18)
/* 813588E0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813588E4 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813588E8 | 7D 89 03 A6 */	mtctr r12
/* 813588EC | 4E 80 04 21 */	bctrl
/* 813588F0 | 48 00 00 58 */	b .L_81358948
.L_813588F4:
/* 813588F4 | 38 7B 59 00 */	addi r3, r27, 0x5900
/* 813588F8 | 7C E0 22 78 */	xor r0, r7, r4
/* 813588FC | 7D 03 1A 78 */	xor r3, r8, r3
/* 81358900 | 7C 60 03 79 */	or. r0, r3, r0
/* 81358904 | 40 82 00 1C */	bne .L_81358920
/* 81358908 | 7E 43 93 78 */	mr r3, r18
/* 8135890C | 48 00 09 65 */	bl checkValidApp__Q33ipl8savedata7ManagerFUx
/* 81358910 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81358914 | 41 82 00 34 */	beq .L_81358948
/* 81358918 | 9B F2 04 F5 */	stb r31, 0x4f5(r18)
/* 8135891C | 48 00 00 2C */	b .L_81358948
.L_81358920:
/* 81358920 | 38 7B 5A 00 */	addi r3, r27, 0x5a00
/* 81358924 | 6C E0 00 01 */	xoris r0, r7, 0x1
/* 81358928 | 7D 03 1A 78 */	xor r3, r8, r3
/* 8135892C | 7C 60 03 79 */	or. r0, r3, r0
/* 81358930 | 40 82 00 18 */	bne .L_81358948
/* 81358934 | 7E 43 93 78 */	mr r3, r18
/* 81358938 | 48 00 09 39 */	bl checkValidApp__Q33ipl8savedata7ManagerFUx
/* 8135893C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81358940 | 41 82 00 08 */	beq .L_81358948
/* 81358944 | 9B F2 04 F6 */	stb r31, 0x4f6(r18)
.L_81358948:
/* 81358948 | 3A B5 00 01 */	addi r21, r21, 0x1
/* 8135894C | 3A 31 00 08 */	addi r17, r17, 0x8
.L_81358950:
/* 81358950 | 7C 15 A0 40 */	cmplw r21, r20
/* 81358954 | 41 80 FE 4C */	blt .L_813587A0
/* 81358958 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8135895C | 48 2A 0B 89 */	bl _restgpr_17
/* 81358960 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 81358964 | 7C 08 03 A6 */	mtlr r0
/* 81358968 | 38 21 00 50 */	addi r1, r1, 0x50
/* 8135896C | 4E 80 00 20 */	blr
.endfn deleteInvalidTitle__Q33ipl8savedata7ManagerFPUxUl

# .text:0xCB8 | 0x81358970 | size: 0x268
# ipl::savedata::Manager::checkSpecialTitles(unsigned long long*, unsigned long)
.fn checkSpecialTitles__Q33ipl8savedata7ManagerFPUxUl, global
/* 81358970 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81358974 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81358978 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8135897C | 88 03 04 F5 */	lbz r0, 0x4f5(r3)
/* 81358980 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81358984 | 40 82 00 10 */	bne .L_81358994
/* 81358988 | 88 03 04 F6 */	lbz r0, 0x4f6(r3)
/* 8135898C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81358990 | 41 82 02 38 */	beq .L_81358BC8
.L_81358994:
/* 81358994 | 39 20 00 00 */	li r9, 0x0
/* 81358998 | 39 80 00 00 */	li r12, 0x0
/* 8135899C | 3C E0 48 41 */	lis r7, 0x4841
/* 813589A0 | 3C C0 00 01 */	lis r6, 0x1
/* 813589A4 | 39 00 FF 00 */	li r8, -0x100
/* 813589A8 | 38 00 FF FF */	li r0, -0x1
/* 813589AC | 7C A9 03 A6 */	mtctr r5
/* 813589B0 | 28 05 00 00 */	cmplwi r5, 0x0
/* 813589B4 | 40 81 01 40 */	ble .L_81358AF4
.L_813589B8:
/* 813589B8 | 7C A4 62 14 */	add r5, r4, r12
/* 813589BC | 7F C4 60 2E */	lwzx r30, r4, r12
/* 813589C0 | 81 65 00 04 */	lwz r11, 0x4(r5)
/* 813589C4 | 7D 6A F3 79 */	or. r10, r11, r30
/* 813589C8 | 41 82 01 24 */	beq .L_81358AEC
/* 813589CC | 8B E3 04 F5 */	lbz r31, 0x4f5(r3)
/* 813589D0 | 7D 6B 40 38 */	and r11, r11, r8
/* 813589D4 | 7F CA 00 38 */	and r10, r30, r0
/* 813589D8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813589DC | 41 82 00 54 */	beq .L_81358A30
/* 813589E0 | 8B C3 04 F6 */	lbz r30, 0x4f6(r3)
/* 813589E4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813589E8 | 41 82 00 48 */	beq .L_81358A30
/* 813589EC | 3B E7 41 00 */	addi r31, r7, 0x4100
/* 813589F0 | 3B C6 00 02 */	addi r30, r6, 0x2
/* 813589F4 | 7D 7F FA 78 */	xor r31, r11, r31
/* 813589F8 | 7D 5E F2 78 */	xor r30, r10, r30
/* 813589FC | 7F FE F3 79 */	or. r30, r31, r30
/* 81358A00 | 40 82 00 10 */	bne .L_81358A10
/* 81358A04 | 91 25 00 04 */	stw r9, 0x4(r5)
/* 81358A08 | 91 25 00 00 */	stw r9, 0x0(r5)
/* 81358A0C | 48 00 00 E0 */	b .L_81358AEC
.L_81358A10:
/* 81358A10 | 3B C7 5A 00 */	addi r30, r7, 0x5a00
/* 81358A14 | 6D 4A 00 01 */	xoris r10, r10, 0x1
/* 81358A18 | 7D 6B F2 78 */	xor r11, r11, r30
/* 81358A1C | 7D 6A 53 79 */	or. r10, r11, r10
/* 81358A20 | 40 82 00 CC */	bne .L_81358AEC
/* 81358A24 | 91 25 00 04 */	stw r9, 0x4(r5)
/* 81358A28 | 91 25 00 00 */	stw r9, 0x0(r5)
/* 81358A2C | 48 00 00 C0 */	b .L_81358AEC
.L_81358A30:
/* 81358A30 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81358A34 | 40 82 00 34 */	bne .L_81358A68
/* 81358A38 | 8B C3 04 F6 */	lbz r30, 0x4f6(r3)
/* 81358A3C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81358A40 | 41 82 00 28 */	beq .L_81358A68
/* 81358A44 | 3B E7 41 00 */	addi r31, r7, 0x4100
/* 81358A48 | 3B C6 00 02 */	addi r30, r6, 0x2
/* 81358A4C | 7D 6B FA 78 */	xor r11, r11, r31
/* 81358A50 | 7D 4A F2 78 */	xor r10, r10, r30
/* 81358A54 | 7D 6A 53 79 */	or. r10, r11, r10
/* 81358A58 | 40 82 00 94 */	bne .L_81358AEC
/* 81358A5C | 91 25 00 04 */	stw r9, 0x4(r5)
/* 81358A60 | 91 25 00 00 */	stw r9, 0x0(r5)
/* 81358A64 | 48 00 00 88 */	b .L_81358AEC
.L_81358A68:
/* 81358A68 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81358A6C | 41 82 00 40 */	beq .L_81358AAC
/* 81358A70 | 8B C3 04 F6 */	lbz r30, 0x4f6(r3)
/* 81358A74 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81358A78 | 40 82 00 34 */	bne .L_81358AAC
/* 81358A7C | 8B C3 04 F7 */	lbz r30, 0x4f7(r3)
/* 81358A80 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81358A84 | 41 82 00 28 */	beq .L_81358AAC
/* 81358A88 | 3B E7 41 00 */	addi r31, r7, 0x4100
/* 81358A8C | 3B C6 00 02 */	addi r30, r6, 0x2
/* 81358A90 | 7D 6B FA 78 */	xor r11, r11, r31
/* 81358A94 | 7D 4A F2 78 */	xor r10, r10, r30
/* 81358A98 | 7D 6A 53 79 */	or. r10, r11, r10
/* 81358A9C | 40 82 00 50 */	bne .L_81358AEC
/* 81358AA0 | 91 25 00 04 */	stw r9, 0x4(r5)
/* 81358AA4 | 91 25 00 00 */	stw r9, 0x0(r5)
/* 81358AA8 | 48 00 00 44 */	b .L_81358AEC
.L_81358AAC:
/* 81358AAC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81358AB0 | 41 82 00 3C */	beq .L_81358AEC
/* 81358AB4 | 8B C3 04 F6 */	lbz r30, 0x4f6(r3)
/* 81358AB8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81358ABC | 40 82 00 30 */	bne .L_81358AEC
/* 81358AC0 | 8B C3 04 F7 */	lbz r30, 0x4f7(r3)
/* 81358AC4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81358AC8 | 40 82 00 24 */	bne .L_81358AEC
/* 81358ACC | 3B C7 59 00 */	addi r30, r7, 0x5900
/* 81358AD0 | 3B E6 00 02 */	addi r31, r6, 0x2
/* 81358AD4 | 7D 6B F2 78 */	xor r11, r11, r30
/* 81358AD8 | 7D 4A FA 78 */	xor r10, r10, r31
/* 81358ADC | 7D 6A 53 79 */	or. r10, r11, r10
/* 81358AE0 | 40 82 00 0C */	bne .L_81358AEC
/* 81358AE4 | 91 25 00 04 */	stw r9, 0x4(r5)
/* 81358AE8 | 91 25 00 00 */	stw r9, 0x0(r5)
.L_81358AEC:
/* 81358AEC | 39 8C 00 08 */	addi r12, r12, 0x8
/* 81358AF0 | 42 00 FE C8 */	bdnz .L_813589B8
.L_81358AF4:
/* 81358AF4 | 88 83 04 F5 */	lbz r4, 0x4f5(r3)
/* 81358AF8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81358AFC | 41 82 00 2C */	beq .L_81358B28
/* 81358B00 | 88 03 04 F6 */	lbz r0, 0x4f6(r3)
/* 81358B04 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81358B08 | 41 82 00 20 */	beq .L_81358B28
/* 81358B0C | 3C A0 48 41 */	lis r5, 0x4841
/* 81358B10 | 3C 80 00 01 */	lis r4, 0x1
/* 81358B14 | 38 A5 59 00 */	addi r5, r5, 0x5900
/* 81358B18 | 38 04 00 02 */	addi r0, r4, 0x2
/* 81358B1C | 90 A3 04 FC */	stw r5, 0x4fc(r3)
/* 81358B20 | 90 03 04 F8 */	stw r0, 0x4f8(r3)
/* 81358B24 | 48 00 00 A4 */	b .L_81358BC8
.L_81358B28:
/* 81358B28 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81358B2C | 40 82 00 28 */	bne .L_81358B54
/* 81358B30 | 88 03 04 F6 */	lbz r0, 0x4f6(r3)
/* 81358B34 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81358B38 | 41 82 00 1C */	beq .L_81358B54
/* 81358B3C | 3C 80 48 41 */	lis r4, 0x4841
/* 81358B40 | 3C 00 00 01 */	lis r0, 0x1
/* 81358B44 | 38 84 5A 00 */	addi r4, r4, 0x5a00
/* 81358B48 | 90 03 04 F8 */	stw r0, 0x4f8(r3)
/* 81358B4C | 90 83 04 FC */	stw r4, 0x4fc(r3)
/* 81358B50 | 48 00 00 78 */	b .L_81358BC8
.L_81358B54:
/* 81358B54 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81358B58 | 41 82 00 38 */	beq .L_81358B90
/* 81358B5C | 88 03 04 F6 */	lbz r0, 0x4f6(r3)
/* 81358B60 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81358B64 | 40 82 00 2C */	bne .L_81358B90
/* 81358B68 | 88 03 04 F7 */	lbz r0, 0x4f7(r3)
/* 81358B6C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81358B70 | 41 82 00 20 */	beq .L_81358B90
/* 81358B74 | 3C A0 48 41 */	lis r5, 0x4841
/* 81358B78 | 3C 80 00 01 */	lis r4, 0x1
/* 81358B7C | 38 A5 59 00 */	addi r5, r5, 0x5900
/* 81358B80 | 38 04 00 02 */	addi r0, r4, 0x2
/* 81358B84 | 90 A3 04 FC */	stw r5, 0x4fc(r3)
/* 81358B88 | 90 03 04 F8 */	stw r0, 0x4f8(r3)
/* 81358B8C | 48 00 00 3C */	b .L_81358BC8
.L_81358B90:
/* 81358B90 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81358B94 | 41 82 00 34 */	beq .L_81358BC8
/* 81358B98 | 88 03 04 F6 */	lbz r0, 0x4f6(r3)
/* 81358B9C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81358BA0 | 40 82 00 28 */	bne .L_81358BC8
/* 81358BA4 | 88 03 04 F7 */	lbz r0, 0x4f7(r3)
/* 81358BA8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81358BAC | 40 82 00 1C */	bne .L_81358BC8
/* 81358BB0 | 3C A0 48 41 */	lis r5, 0x4841
/* 81358BB4 | 3C 80 00 01 */	lis r4, 0x1
/* 81358BB8 | 38 A5 41 00 */	addi r5, r5, 0x4100
/* 81358BBC | 38 04 00 02 */	addi r0, r4, 0x2
/* 81358BC0 | 90 A3 04 FC */	stw r5, 0x4fc(r3)
/* 81358BC4 | 90 03 04 F8 */	stw r0, 0x4f8(r3)
.L_81358BC8:
/* 81358BC8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81358BCC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81358BD0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81358BD4 | 4E 80 00 20 */	blr
.endfn checkSpecialTitles__Q33ipl8savedata7ManagerFPUxUl

# .text:0xF20 | 0x81358BD8 | size: 0xD0
.fn iplSavedata_81358BD8, local
/* 81358BD8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81358BDC | 7C 08 02 A6 */	mflr r0
/* 81358BE0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81358BE4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81358BE8 | 48 2A 08 DD */	bl _savegpr_28
/* 81358BEC | 7C 7C 1B 78 */	mr r28, r3
/* 81358BF0 | 7C 9D 23 78 */	mr r29, r4
/* 81358BF4 | 7C BE 2B 78 */	mr r30, r5
/* 81358BF8 | 3B E0 00 00 */	li r31, 0x0
/* 81358BFC | 48 21 1C 99 */	bl fn_8156A894
/* 81358C00 | 7C 80 1B 79 */	or. r0, r4, r3
/* 81358C04 | 7C 65 1B 78 */	mr r5, r3
/* 81358C08 | 41 82 00 88 */	beq .L_81358C90
/* 81358C0C | 39 20 00 00 */	li r9, 0x0
/* 81358C10 | 38 C0 00 00 */	li r6, 0x0
/* 81358C14 | 7F C9 03 A6 */	mtctr r30
/* 81358C18 | 28 1E 00 00 */	cmplwi r30, 0x0
/* 81358C1C | 40 81 00 34 */	ble .L_81358C50
.L_81358C20:
/* 81358C20 | 7D 1D 32 14 */	add r8, r29, r6
/* 81358C24 | 7C 1D 30 2E */	lwzx r0, r29, r6
/* 81358C28 | 80 E8 00 04 */	lwz r7, 0x4(r8)
/* 81358C2C | 7C 60 02 78 */	xor r0, r3, r0
/* 81358C30 | 7C 87 3A 78 */	xor r7, r4, r7
/* 81358C34 | 7C E0 03 79 */	or. r0, r7, r0
/* 81358C38 | 40 82 00 10 */	bne .L_81358C48
/* 81358C3C | 91 28 00 04 */	stw r9, 0x4(r8)
/* 81358C40 | 3B E0 00 01 */	li r31, 0x1
/* 81358C44 | 91 28 00 00 */	stw r9, 0x0(r8)
.L_81358C48:
/* 81358C48 | 38 C6 00 08 */	addi r6, r6, 0x8
/* 81358C4C | 42 00 FF D4 */	bdnz .L_81358C20
.L_81358C50:
/* 81358C50 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81358C54 | 41 82 00 2C */	beq .L_81358C80
/* 81358C58 | 7F 83 E3 78 */	mr r3, r28
/* 81358C5C | 7C 86 23 78 */	mr r6, r4
/* 81358C60 | 48 00 06 11 */	bl checkValidApp__Q33ipl8savedata7ManagerFUx
/* 81358C64 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81358C68 | 40 82 00 28 */	bne .L_81358C90
/* 81358C6C | 38 80 00 00 */	li r4, 0x0
/* 81358C70 | 38 60 00 00 */	li r3, 0x0
/* 81358C74 | 48 21 1C 99 */	bl fn_8156A90C
/* 81358C78 | 48 21 0C D5 */	bl fn_8156994C
/* 81358C7C | 48 00 00 14 */	b .L_81358C90
.L_81358C80:
/* 81358C80 | 38 80 00 00 */	li r4, 0x0
/* 81358C84 | 38 60 00 00 */	li r3, 0x0
/* 81358C88 | 48 21 1C 85 */	bl fn_8156A90C
/* 81358C8C | 48 21 0C C1 */	bl fn_8156994C
.L_81358C90:
/* 81358C90 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81358C94 | 48 2A 08 7D */	bl _restgpr_28
/* 81358C98 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81358C9C | 7C 08 03 A6 */	mtlr r0
/* 81358CA0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81358CA4 | 4E 80 00 20 */	blr
.endfn iplSavedata_81358BD8

# .text:0xFF0 | 0x81358CA8 | size: 0x214
# ipl::savedata::Manager::makePriorTitleIDList(unsigned long long*, unsigned long long*, unsigned long)
.fn makePriorTitleIDList__Q33ipl8savedata7ManagerFPUxPUxUl, global
/* 81358CA8 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81358CAC | 7C 08 02 A6 */	mflr r0
/* 81358CB0 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81358CB4 | 39 61 00 50 */	addi r11, r1, 0x50
/* 81358CB8 | 48 2A 07 D5 */	bl _savegpr_14
/* 81358CBC | 7C 6F 1B 78 */	mr r15, r3
/* 81358CC0 | 7C 90 23 78 */	mr r16, r4
/* 81358CC4 | 7C B1 2B 78 */	mr r17, r5
/* 81358CC8 | 7C D2 33 78 */	mr r18, r6
/* 81358CCC | 3A E0 00 00 */	li r23, 0x0
/* 81358CD0 | 3B E0 00 00 */	li r31, 0x0
/* 81358CD4 | 3B C0 00 00 */	li r30, 0x0
/* 81358CD8 | 3F 40 48 41 */	lis r26, 0x4841
/* 81358CDC | 39 C0 FF 00 */	li r14, -0x100
/* 81358CE0 | 3B 60 00 00 */	li r27, 0x0
.L_81358CE4:
/* 81358CE4 | 7F 2F FA 14 */	add r25, r15, r31
/* 81358CE8 | 3A C0 00 00 */	li r22, 0x0
/* 81358CEC | 3B A0 00 00 */	li r29, 0x0
.L_81358CF0:
/* 81358CF0 | 7C 79 EA 14 */	add r3, r25, r29
/* 81358CF4 | 88 03 00 30 */	lbz r0, 0x30(r3)
/* 81358CF8 | 28 00 00 03 */	cmplwi r0, 0x3
/* 81358CFC | 40 82 01 84 */	bne .L_81358E80
/* 81358D00 | 82 A3 00 38 */	lwz r21, 0x38(r3)
/* 81358D04 | 7F 16 F2 14 */	add r24, r22, r30
/* 81358D08 | 82 83 00 3C */	lwz r20, 0x3c(r3)
/* 81358D0C | 3A 60 00 00 */	li r19, 0x0
/* 81358D10 | 3B 80 00 00 */	li r28, 0x0
/* 81358D14 | 48 00 01 64 */	b .L_81358E78
.L_81358D18:
/* 81358D18 | 7C 71 E2 14 */	add r3, r17, r28
/* 81358D1C | 7C 11 E0 2E */	lwzx r0, r17, r28
/* 81358D20 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81358D24 | 7C 60 03 79 */	or. r0, r3, r0
/* 81358D28 | 41 82 01 48 */	beq .L_81358E70
/* 81358D2C | 57 00 18 38 */	slwi r0, r24, 3
/* 81358D30 | 7C 90 02 14 */	add r4, r16, r0
/* 81358D34 | 7C 70 00 2E */	lwzx r3, r16, r0
/* 81358D38 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 81358D3C | 7C 80 1B 79 */	or. r0, r4, r3
/* 81358D40 | 41 82 00 10 */	beq .L_81358D50
/* 81358D44 | 7C 75 1B 78 */	mr r21, r3
/* 81358D48 | 7C 94 23 78 */	mr r20, r4
/* 81358D4C | 48 00 00 74 */	b .L_81358DC0
.L_81358D50:
/* 81358D50 | 38 00 FF FF */	li r0, -0x1
/* 81358D54 | 3C 80 00 01 */	lis r4, 0x1
/* 81358D58 | 7E 83 70 38 */	and r3, r20, r14
/* 81358D5C | 38 BA 41 00 */	addi r5, r26, 0x4100
/* 81358D60 | 7E A0 00 38 */	and r0, r21, r0
/* 81358D64 | 38 C4 00 02 */	addi r6, r4, 0x2
/* 81358D68 | 7C 65 2A 78 */	xor r5, r3, r5
/* 81358D6C | 7C 04 32 78 */	xor r4, r0, r6
/* 81358D70 | 7C A4 23 79 */	or. r4, r5, r4
/* 81358D74 | 41 82 00 2C */	beq .L_81358DA0
/* 81358D78 | 38 BA 59 00 */	addi r5, r26, 0x5900
/* 81358D7C | 7C 04 32 78 */	xor r4, r0, r6
/* 81358D80 | 7C 65 2A 78 */	xor r5, r3, r5
/* 81358D84 | 7C A4 23 79 */	or. r4, r5, r4
/* 81358D88 | 41 82 00 18 */	beq .L_81358DA0
/* 81358D8C | 38 BA 5A 00 */	addi r5, r26, 0x5a00
/* 81358D90 | 6C 04 00 01 */	xoris r4, r0, 0x1
/* 81358D94 | 7C 65 2A 78 */	xor r5, r3, r5
/* 81358D98 | 7C A4 23 79 */	or. r4, r5, r4
/* 81358D9C | 40 82 00 24 */	bne .L_81358DC0
.L_81358DA0:
/* 81358DA0 | 80 8F 04 F8 */	lwz r4, 0x4f8(r15)
/* 81358DA4 | 80 AF 04 FC */	lwz r5, 0x4fc(r15)
/* 81358DA8 | 7C 00 22 78 */	xor r0, r0, r4
/* 81358DAC | 7C 63 2A 78 */	xor r3, r3, r5
/* 81358DB0 | 7C 60 03 79 */	or. r0, r3, r0
/* 81358DB4 | 41 82 00 0C */	beq .L_81358DC0
/* 81358DB8 | 60 B4 00 41 */	ori r20, r5, 0x41
/* 81358DBC | 7C 95 23 78 */	mr r21, r4
.L_81358DC0:
/* 81358DC0 | 7C 91 E2 14 */	add r4, r17, r28
/* 81358DC4 | 7C F1 E0 2E */	lwzx r7, r17, r28
/* 81358DC8 | 81 04 00 04 */	lwz r8, 0x4(r4)
/* 81358DCC | 7D E3 7B 78 */	mr r3, r15
/* 81358DD0 | 7E 86 A3 78 */	mr r6, r20
/* 81358DD4 | 7E A5 AB 78 */	mr r5, r21
/* 81358DD8 | 48 00 06 D9 */	bl isEqualChannel__Q33ipl8savedata7ManagerFUxUx
/* 81358DDC | 2C 03 FF FE */	cmpwi r3, -0x2
/* 81358DE0 | 41 82 00 0C */	beq .L_81358DEC
/* 81358DE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81358DE8 | 40 82 00 3C */	bne .L_81358E24
.L_81358DEC:
/* 81358DEC | 7D E3 7B 78 */	mr r3, r15
/* 81358DF0 | 7E 86 A3 78 */	mr r6, r20
/* 81358DF4 | 7E A5 AB 78 */	mr r5, r21
/* 81358DF8 | 48 00 04 79 */	bl checkValidApp__Q33ipl8savedata7ManagerFUx
/* 81358DFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81358E00 | 41 82 00 14 */	beq .L_81358E14
/* 81358E04 | 57 00 18 38 */	slwi r0, r24, 3
/* 81358E08 | 7C 70 02 14 */	add r3, r16, r0
/* 81358E0C | 92 83 00 04 */	stw r20, 0x4(r3)
/* 81358E10 | 7E B0 01 2E */	stwx r21, r16, r0
.L_81358E14:
/* 81358E14 | 7C 71 E2 14 */	add r3, r17, r28
/* 81358E18 | 93 63 00 04 */	stw r27, 0x4(r3)
/* 81358E1C | 7F 71 E1 2E */	stwx r27, r17, r28
/* 81358E20 | 48 00 00 50 */	b .L_81358E70
.L_81358E24:
/* 81358E24 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 81358E28 | 40 82 00 48 */	bne .L_81358E70
/* 81358E2C | 7C 91 E2 14 */	add r4, r17, r28
/* 81358E30 | 7C B1 E0 2E */	lwzx r5, r17, r28
/* 81358E34 | 80 C4 00 04 */	lwz r6, 0x4(r4)
/* 81358E38 | 7D E3 7B 78 */	mr r3, r15
/* 81358E3C | 48 00 04 35 */	bl checkValidApp__Q33ipl8savedata7ManagerFUx
/* 81358E40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81358E44 | 41 82 00 20 */	beq .L_81358E64
/* 81358E48 | 57 00 18 38 */	slwi r0, r24, 3
/* 81358E4C | 7C B1 E2 14 */	add r5, r17, r28
/* 81358E50 | 7C 70 02 14 */	add r3, r16, r0
/* 81358E54 | 7C 91 E0 2E */	lwzx r4, r17, r28
/* 81358E58 | 80 05 00 04 */	lwz r0, 0x4(r5)
/* 81358E5C | 90 03 00 04 */	stw r0, 0x4(r3)
/* 81358E60 | 90 83 00 00 */	stw r4, 0x0(r3)
.L_81358E64:
/* 81358E64 | 7C 71 E2 14 */	add r3, r17, r28
/* 81358E68 | 93 63 00 04 */	stw r27, 0x4(r3)
/* 81358E6C | 7F 71 E1 2E */	stwx r27, r17, r28
.L_81358E70:
/* 81358E70 | 3A 73 00 01 */	addi r19, r19, 0x1
/* 81358E74 | 3B 9C 00 08 */	addi r28, r28, 0x8
.L_81358E78:
/* 81358E78 | 7C 13 90 40 */	cmplw r19, r18
/* 81358E7C | 41 80 FE 9C */	blt .L_81358D18
.L_81358E80:
/* 81358E80 | 3A D6 00 01 */	addi r22, r22, 0x1
/* 81358E84 | 3B BD 00 10 */	addi r29, r29, 0x10
/* 81358E88 | 2C 16 00 0C */	cmpwi r22, 0xc
/* 81358E8C | 41 80 FE 64 */	blt .L_81358CF0
/* 81358E90 | 3A F7 00 01 */	addi r23, r23, 0x1
/* 81358E94 | 3B DE 00 0C */	addi r30, r30, 0xc
/* 81358E98 | 2C 17 00 04 */	cmpwi r23, 0x4
/* 81358E9C | 3B FF 00 C0 */	addi r31, r31, 0xc0
/* 81358EA0 | 41 80 FE 44 */	blt .L_81358CE4
/* 81358EA4 | 39 61 00 50 */	addi r11, r1, 0x50
/* 81358EA8 | 48 2A 06 31 */	bl _restgpr_14
/* 81358EAC | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 81358EB0 | 7C 08 03 A6 */	mtlr r0
/* 81358EB4 | 38 21 00 50 */	addi r1, r1, 0x50
/* 81358EB8 | 4E 80 00 20 */	blr
.endfn makePriorTitleIDList__Q33ipl8savedata7ManagerFPUxPUxUl

# .text:0x1204 | 0x81358EBC | size: 0x98
# ipl::savedata::Manager::integrateTitleIDList(unsigned long long*, unsigned long long*, unsigned long)
.fn integrateTitleIDList__Q33ipl8savedata7ManagerFPUxPUxUl, global
/* 81358EBC | 94 21 FE 30 */	stwu r1, -0x1d0(r1)
/* 81358EC0 | 7C 08 02 A6 */	mflr r0
/* 81358EC4 | 90 01 01 D4 */	stw r0, 0x1d4(r1)
/* 81358EC8 | 39 61 01 D0 */	addi r11, r1, 0x1d0
/* 81358ECC | 48 2A 05 F9 */	bl _savegpr_28
/* 81358ED0 | 38 00 00 36 */	li r0, 0x36
/* 81358ED4 | 7C 7C 1B 78 */	mr r28, r3
/* 81358ED8 | 7C 9D 23 78 */	mr r29, r4
/* 81358EDC | 7C BE 2B 78 */	mr r30, r5
/* 81358EE0 | 7C DF 33 78 */	mr r31, r6
/* 81358EE4 | 38 81 00 04 */	addi r4, r1, 0x4
/* 81358EE8 | 38 60 00 00 */	li r3, 0x0
/* 81358EEC | 7C 09 03 A6 */	mtctr r0
.L_81358EF0:
/* 81358EF0 | 90 64 00 04 */	stw r3, 0x4(r4)
/* 81358EF4 | 94 64 00 08 */	stwu r3, 0x8(r4)
/* 81358EF8 | 42 00 FF F8 */	bdnz .L_81358EF0
/* 81358EFC | 7F 83 E3 78 */	mr r3, r28
/* 81358F00 | 7F A4 EB 78 */	mr r4, r29
/* 81358F04 | 38 A0 00 30 */	li r5, 0x30
/* 81358F08 | 48 00 04 FD */	bl getAvailableNumInList__Q33ipl8savedata7ManagerFPCUxUl
/* 81358F0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81358F10 | 7C 65 1B 78 */	mr r5, r3
/* 81358F14 | 41 82 00 28 */	beq .L_81358F3C
/* 81358F18 | 7F 83 E3 78 */	mr r3, r28
/* 81358F1C | 7F C6 F3 78 */	mr r6, r30
/* 81358F20 | 7F E7 FB 78 */	mr r7, r31
/* 81358F24 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81358F28 | 48 00 00 2D */	bl makeTmpList__Q33ipl8savedata7ManagerFPUxUlPUxUl
/* 81358F2C | 7F 83 E3 78 */	mr r3, r28
/* 81358F30 | 7F A4 EB 78 */	mr r4, r29
/* 81358F34 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81358F38 | 48 00 01 99 */	bl moveTitleTmpToPrior__Q33ipl8savedata7ManagerFPUxPCUx
.L_81358F3C:
/* 81358F3C | 39 61 01 D0 */	addi r11, r1, 0x1d0
/* 81358F40 | 48 2A 05 D1 */	bl _restgpr_28
/* 81358F44 | 80 01 01 D4 */	lwz r0, 0x1d4(r1)
/* 81358F48 | 7C 08 03 A6 */	mtlr r0
/* 81358F4C | 38 21 01 D0 */	addi r1, r1, 0x1d0
/* 81358F50 | 4E 80 00 20 */	blr
.endfn integrateTitleIDList__Q33ipl8savedata7ManagerFPUxPUxUl

# .text:0x129C | 0x81358F54 | size: 0x17C
# ipl::savedata::Manager::makeTmpList(unsigned long long*, unsigned long, unsigned long long*, unsigned long)
.fn makeTmpList__Q33ipl8savedata7ManagerFPUxUlPUxUl, global
/* 81358F54 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81358F58 | 7C 08 02 A6 */	mflr r0
/* 81358F5C | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81358F60 | 39 61 00 50 */	addi r11, r1, 0x50
/* 81358F64 | 48 2A 05 31 */	bl _savegpr_16
/* 81358F68 | 7C 76 1B 78 */	mr r22, r3
/* 81358F6C | 7C 97 23 78 */	mr r23, r4
/* 81358F70 | 7C B8 2B 78 */	mr r24, r5
/* 81358F74 | 7C D9 33 78 */	mr r25, r6
/* 81358F78 | 7C FA 3B 78 */	mr r26, r7
/* 81358F7C | 3B A0 00 06 */	li r29, 0x6
/* 81358F80 | 3A A0 00 30 */	li r21, 0x30
/* 81358F84 | 3B 80 00 00 */	li r28, 0x0
/* 81358F88 | 3B 60 00 00 */	li r27, 0x0
/* 81358F8C | 3A 80 00 00 */	li r20, 0x0
/* 81358F90 | 3B E0 FF FF */	li r31, -0x1
/* 81358F94 | 3A 40 00 00 */	li r18, 0x0
/* 81358F98 | 48 00 01 18 */	b .L_813590B0
.L_81358F9C:
/* 81358F9C | 7F D9 A2 14 */	add r30, r25, r20
/* 81358FA0 | 7C B9 A0 2E */	lwzx r5, r25, r20
/* 81358FA4 | 80 DE 00 04 */	lwz r6, 0x4(r30)
/* 81358FA8 | 7C C0 2B 79 */	or. r0, r6, r5
/* 81358FAC | 41 82 00 FC */	beq .L_813590A8
/* 81358FB0 | 7E C3 B3 78 */	mr r3, r22
/* 81358FB4 | 48 00 02 BD */	bl checkValidApp__Q33ipl8savedata7ManagerFUx
/* 81358FB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81358FBC | 41 82 00 DC */	beq .L_81359098
/* 81358FC0 | 38 60 FF FF */	li r3, -0x1
/* 81358FC4 | 3A 00 00 00 */	li r16, 0x0
/* 81358FC8 | 3A 60 00 00 */	li r19, 0x0
/* 81358FCC | 48 00 00 54 */	b .L_81359020
.L_81358FD0:
/* 81358FD0 | 7E 37 9A 14 */	add r17, r23, r19
/* 81358FD4 | 80 FE 00 00 */	lwz r7, 0x0(r30)
/* 81358FD8 | 7C B7 98 2E */	lwzx r5, r23, r19
/* 81358FDC | 7E C3 B3 78 */	mr r3, r22
/* 81358FE0 | 80 D1 00 04 */	lwz r6, 0x4(r17)
/* 81358FE4 | 81 1E 00 04 */	lwz r8, 0x4(r30)
/* 81358FE8 | 48 00 04 C9 */	bl isEqualChannel__Q33ipl8savedata7ManagerFUxUx
/* 81358FEC | 2C 03 FF FE */	cmpwi r3, -0x2
/* 81358FF0 | 41 82 00 38 */	beq .L_81359028
/* 81358FF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81358FF8 | 41 82 00 30 */	beq .L_81359028
/* 81358FFC | 2C 03 00 01 */	cmpwi r3, 0x1
/* 81359000 | 40 82 00 18 */	bne .L_81359018
/* 81359004 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 81359008 | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 8135900C | 90 91 00 04 */	stw r4, 0x4(r17)
/* 81359010 | 90 11 00 00 */	stw r0, 0x0(r17)
/* 81359014 | 48 00 00 14 */	b .L_81359028
.L_81359018:
/* 81359018 | 3A 10 00 01 */	addi r16, r16, 0x1
/* 8135901C | 3A 73 00 08 */	addi r19, r19, 0x8
.L_81359020:
/* 81359020 | 7C 10 E8 00 */	cmpw r16, r29
/* 81359024 | 41 80 FF AC */	blt .L_81358FD0
.L_81359028:
/* 81359028 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 8135902C | 41 82 00 10 */	beq .L_8135903C
/* 81359030 | 92 5E 00 04 */	stw r18, 0x4(r30)
/* 81359034 | 92 5E 00 00 */	stw r18, 0x0(r30)
/* 81359038 | 48 00 00 70 */	b .L_813590A8
.L_8135903C:
/* 8135903C | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 81359040 | 7E C3 B3 78 */	mr r3, r22
/* 81359044 | 80 BE 00 04 */	lwz r5, 0x4(r30)
/* 81359048 | 7C 04 F8 38 */	and r4, r0, r31
/* 8135904C | 7C A5 F8 38 */	and r5, r5, r31
/* 81359050 | 48 00 04 FD */	bl isDefaultChannel__Q33ipl8savedata7ManagerFUlUl
/* 81359054 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 81359058 | 40 82 00 24 */	bne .L_8135907C
/* 8135905C | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 81359060 | 7C 77 AA 14 */	add r3, r23, r21
/* 81359064 | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 81359068 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 8135906C | 90 83 00 04 */	stw r4, 0x4(r3)
/* 81359070 | 7C 17 A9 2E */	stwx r0, r23, r21
/* 81359074 | 3A B5 00 08 */	addi r21, r21, 0x8
/* 81359078 | 48 00 00 1C */	b .L_81359094
.L_8135907C:
/* 8135907C | 54 60 18 38 */	slwi r0, r3, 3
/* 81359080 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 81359084 | 80 BE 00 04 */	lwz r5, 0x4(r30)
/* 81359088 | 7C 77 02 14 */	add r3, r23, r0
/* 8135908C | 90 A3 00 04 */	stw r5, 0x4(r3)
/* 81359090 | 7C 97 01 2E */	stwx r4, r23, r0
.L_81359094:
/* 81359094 | 3B 9C 00 01 */	addi r28, r28, 0x1
.L_81359098:
/* 81359098 | 92 5E 00 04 */	stw r18, 0x4(r30)
/* 8135909C | 7C 1C C0 40 */	cmplw r28, r24
/* 813590A0 | 92 5E 00 00 */	stw r18, 0x0(r30)
/* 813590A4 | 40 80 00 14 */	bge .L_813590B8
.L_813590A8:
/* 813590A8 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 813590AC | 3A 94 00 08 */	addi r20, r20, 0x8
.L_813590B0:
/* 813590B0 | 7C 1B D0 40 */	cmplw r27, r26
/* 813590B4 | 41 80 FE E8 */	blt .L_81358F9C
.L_813590B8:
/* 813590B8 | 39 61 00 50 */	addi r11, r1, 0x50
/* 813590BC | 48 2A 04 25 */	bl _restgpr_16
/* 813590C0 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 813590C4 | 7C 08 03 A6 */	mtlr r0
/* 813590C8 | 38 21 00 50 */	addi r1, r1, 0x50
/* 813590CC | 4E 80 00 20 */	blr
.endfn makeTmpList__Q33ipl8savedata7ManagerFPUxUlPUxUl

# .text:0x1418 | 0x813590D0 | size: 0x94
# ipl::savedata::Manager::moveTitleTmpToPrior(unsigned long long*, const unsigned long long*)
.fn moveTitleTmpToPrior__Q33ipl8savedata7ManagerFPUxPCUx, global
/* 813590D0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813590D4 | 7C 08 02 A6 */	mflr r0
/* 813590D8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813590DC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813590E0 | 48 2A 03 DD */	bl _savegpr_26
/* 813590E4 | 7C 7A 1B 78 */	mr r26, r3
/* 813590E8 | 7C 9B 23 78 */	mr r27, r4
/* 813590EC | 7C BC 2B 78 */	mr r28, r5
/* 813590F0 | 3B A0 00 00 */	li r29, 0x0
/* 813590F4 | 3B E0 00 00 */	li r31, 0x0
.L_813590F8:
/* 813590F8 | 7F DC FA 14 */	add r30, r28, r31
/* 813590FC | 7C 1C F8 2E */	lwzx r0, r28, r31
/* 81359100 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 81359104 | 7C 60 03 79 */	or. r0, r3, r0
/* 81359108 | 41 82 00 34 */	beq .L_8135913C
/* 8135910C | 7F 43 D3 78 */	mr r3, r26
/* 81359110 | 7F 64 DB 78 */	mr r4, r27
/* 81359114 | 38 A0 00 30 */	li r5, 0x30
/* 81359118 | 48 00 03 29 */	bl getAvailableInList__Q33ipl8savedata7ManagerFPCUxUl
/* 8135911C | 2C 03 FF FF */	cmpwi r3, -0x1
/* 81359120 | 41 82 00 2C */	beq .L_8135914C
/* 81359124 | 54 60 18 38 */	slwi r0, r3, 3
/* 81359128 | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 8135912C | 7C 7B 02 14 */	add r3, r27, r0
/* 81359130 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 81359134 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 81359138 | 90 03 00 00 */	stw r0, 0x0(r3)
.L_8135913C:
/* 8135913C | 3B BD 00 01 */	addi r29, r29, 0x1
/* 81359140 | 3B FF 00 08 */	addi r31, r31, 0x8
/* 81359144 | 2C 1D 00 36 */	cmpwi r29, 0x36
/* 81359148 | 41 80 FF B0 */	blt .L_813590F8
.L_8135914C:
/* 8135914C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81359150 | 48 2A 03 B9 */	bl _restgpr_26
/* 81359154 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81359158 | 7C 08 03 A6 */	mtlr r0
/* 8135915C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81359160 | 4E 80 00 20 */	blr
.endfn moveTitleTmpToPrior__Q33ipl8savedata7ManagerFPUxPCUx

# .text:0x14AC | 0x81359164 | size: 0x10C
# ipl::savedata::Manager::doUpdateChanInfos(unsigned long long*)
.fn doUpdateChanInfos__Q33ipl8savedata7ManagerFPUx, global
/* 81359164 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81359168 | 7C 08 02 A6 */	mflr r0
/* 8135916C | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81359170 | 39 61 00 40 */	addi r11, r1, 0x40
/* 81359174 | 48 2A 03 31 */	bl _savegpr_20
/* 81359178 | 7C 7B 1B 78 */	mr r27, r3
/* 8135917C | 7C 9C 23 78 */	mr r28, r4
/* 81359180 | 38 60 00 00 */	li r3, 0x0
/* 81359184 | 3B C0 00 00 */	li r30, 0x0
/* 81359188 | 3B 40 00 00 */	li r26, 0x0
/* 8135918C | 3B 20 00 00 */	li r25, 0x0
/* 81359190 | 3A 80 00 03 */	li r20, 0x3
/* 81359194 | 3A A0 00 00 */	li r21, 0x0
/* 81359198 | 3A C0 00 0E */	li r22, 0xe
/* 8135919C | 3A E0 FF FF */	li r23, -0x1
.L_813591A0:
/* 813591A0 | 7F FB D2 14 */	add r31, r27, r26
/* 813591A4 | 3B A0 00 00 */	li r29, 0x0
/* 813591A8 | 3B 00 00 00 */	li r24, 0x0
.L_813591AC:
/* 813591AC | 7C 9F C2 14 */	add r4, r31, r24
/* 813591B0 | 88 04 00 30 */	lbz r0, 0x30(r4)
/* 813591B4 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813591B8 | 41 82 00 7C */	beq .L_81359234
/* 813591BC | 7C 1D CA 14 */	add r0, r29, r25
/* 813591C0 | 81 24 00 38 */	lwz r9, 0x38(r4)
/* 813591C4 | 54 00 18 38 */	slwi r0, r0, 3
/* 813591C8 | 80 A4 00 3C */	lwz r5, 0x3c(r4)
/* 813591CC | 7D 1C 02 14 */	add r8, r28, r0
/* 813591D0 | 7C DC 00 2E */	lwzx r6, r28, r0
/* 813591D4 | 80 E8 00 04 */	lwz r7, 0x4(r8)
/* 813591D8 | 7D 20 32 78 */	xor r0, r9, r6
/* 813591DC | 7C A5 3A 78 */	xor r5, r5, r7
/* 813591E0 | 7C A0 03 79 */	or. r0, r5, r0
/* 813591E4 | 41 82 00 50 */	beq .L_81359234
/* 813591E8 | 7C E0 33 79 */	or. r0, r7, r6
/* 813591EC | 40 82 00 18 */	bne .L_81359204
/* 813591F0 | 38 64 00 30 */	addi r3, r4, 0x30
/* 813591F4 | 38 80 00 00 */	li r4, 0x0
/* 813591F8 | 38 A0 00 10 */	li r5, 0x10
/* 813591FC | 4B FD 71 39 */	bl memset
/* 81359200 | 48 00 00 30 */	b .L_81359230
.L_81359204:
/* 81359204 | 9A 84 00 30 */	stb r20, 0x30(r4)
/* 81359208 | 9A A4 00 31 */	stb r21, 0x31(r4)
/* 8135920C | 9A A4 00 32 */	stb r21, 0x32(r4)
/* 81359210 | 9A A4 00 33 */	stb r21, 0x33(r4)
/* 81359214 | 92 C4 00 34 */	stw r22, 0x34(r4)
/* 81359218 | 80 08 00 00 */	lwz r0, 0x0(r8)
/* 8135921C | 7C 00 B8 38 */	and r0, r0, r23
/* 81359220 | 90 04 00 38 */	stw r0, 0x38(r4)
/* 81359224 | 80 08 00 04 */	lwz r0, 0x4(r8)
/* 81359228 | 7C 00 B8 38 */	and r0, r0, r23
/* 8135922C | 90 04 00 3C */	stw r0, 0x3c(r4)
.L_81359230:
/* 81359230 | 38 60 00 01 */	li r3, 0x1
.L_81359234:
/* 81359234 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 81359238 | 3B 18 00 10 */	addi r24, r24, 0x10
/* 8135923C | 2C 1D 00 0C */	cmpwi r29, 0xc
/* 81359240 | 41 80 FF 6C */	blt .L_813591AC
/* 81359244 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81359248 | 3B 39 00 0C */	addi r25, r25, 0xc
/* 8135924C | 2C 1E 00 04 */	cmpwi r30, 0x4
/* 81359250 | 3B 5A 00 C0 */	addi r26, r26, 0xc0
/* 81359254 | 41 80 FF 4C */	blt .L_813591A0
/* 81359258 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8135925C | 48 2A 02 95 */	bl _restgpr_20
/* 81359260 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81359264 | 7C 08 03 A6 */	mtlr r0
/* 81359268 | 38 21 00 40 */	addi r1, r1, 0x40
/* 8135926C | 4E 80 00 20 */	blr
.endfn doUpdateChanInfos__Q33ipl8savedata7ManagerFPUx

# .text:0x15B8 | 0x81359270 | size: 0x194
# ipl::savedata::Manager::checkValidApp(unsigned long long)
.fn checkValidApp__Q33ipl8savedata7ManagerFUx, global
/* 81359270 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81359274 | 7C 08 02 A6 */	mflr r0
/* 81359278 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8135927C | 39 61 00 30 */	addi r11, r1, 0x30
/* 81359280 | 48 2A 02 3D */	bl _savegpr_26
/* 81359284 | 3B E0 00 00 */	li r31, 0x0
/* 81359288 | 7C DB 33 78 */	mr r27, r6
/* 8135928C | 7C BC 2B 78 */	mr r28, r5
/* 81359290 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81359294 | 7C 7A 1B 78 */	mr r26, r3
/* 81359298 | 7F 64 DB 78 */	mr r4, r27
/* 8135929C | 7F 83 E3 78 */	mr r3, r28
/* 813592A0 | 38 C1 00 0C */	addi r6, r1, 0xc
/* 813592A4 | 3B A0 00 01 */	li r29, 0x1
/* 813592A8 | 38 A0 00 00 */	li r5, 0x0
/* 813592AC | 48 26 56 5D */	bl fn_815BE908
/* 813592B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813592B4 | 41 80 00 10 */	blt .L_813592C4
/* 813592B8 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 813592BC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813592C0 | 40 82 00 0C */	bne .L_813592CC
.L_813592C4:
/* 813592C4 | 38 60 00 00 */	li r3, 0x0
/* 813592C8 | 48 00 01 24 */	b .L_813593EC
.L_813592CC:
/* 813592CC | 7F 64 DB 78 */	mr r4, r27
/* 813592D0 | 7F 83 E3 78 */	mr r3, r28
/* 813592D4 | 48 00 C7 35 */	bl PrivateContentsExist__Q33ipl7utility6ESMiscFUx
/* 813592D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813592DC | 40 82 00 0C */	bne .L_813592E8
/* 813592E0 | 38 60 00 00 */	li r3, 0x0
/* 813592E4 | 48 00 01 08 */	b .L_813593EC
.L_813592E8:
/* 813592E8 | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 813592EC | 7F 66 DB 78 */	mr r6, r27
/* 813592F0 | 7F 85 E3 78 */	mr r5, r28
/* 813592F4 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 813592F8 | 80 7A 00 04 */	lwz r3, 0x4(r26)
/* 813592FC | 48 00 C4 09 */	bl GetTmdView__Q33ipl7utility6ESMiscFPQ23EGG4HeapUxPP9ESTmdView
/* 81359300 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81359304 | 7C 7E 1B 78 */	mr r30, r3
/* 81359308 | 41 82 00 4C */	beq .L_81359354
/* 8135930C | 2C 03 FB FF */	cmpwi r3, -0x401
/* 81359310 | 41 82 00 44 */	beq .L_81359354
/* 81359314 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81359318 | 3C C0 81 64 */	lis r6, lbl_81639172@ha
/* 8135931C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81359320 | 7F C5 F3 78 */	mr r5, r30
/* 81359324 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 81359328 | 38 C6 91 72 */	addi r6, r6, lbl_81639172@l
/* 8135932C | 38 8D 81 D9 */	li r4, lbl_81696219@sda21
/* 81359330 | 38 E0 04 72 */	li r7, 0x472
/* 81359334 | 4B FF D3 C5 */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 81359338 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8135933C | 38 80 00 01 */	li r4, 0x1
/* 81359340 | 38 A0 00 02 */	li r5, 0x2
/* 81359344 | 38 C0 00 00 */	li r6, 0x0
/* 81359348 | 38 E0 00 00 */	li r7, 0x0
/* 8135934C | 39 00 FF FF */	li r8, -0x1
/* 81359350 | 4B FF D1 C5 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_81359354:
/* 81359354 | 2C 1E FB FF */	cmpwi r30, -0x401
/* 81359358 | 41 82 00 1C */	beq .L_81359374
/* 8135935C | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 81359360 | 7F 64 DB 78 */	mr r4, r27
/* 81359364 | 7F 83 E3 78 */	mr r3, r28
/* 81359368 | 48 00 C8 D9 */	bl checkContentsNum__Q33ipl7utility6ESMiscFUxP9ESTmdView
/* 8135936C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81359370 | 41 82 00 58 */	beq .L_813593C8
.L_81359374:
/* 81359374 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81359378 | 41 82 00 4C */	beq .L_813593C4
/* 8135937C | 2C 1E FB FF */	cmpwi r30, -0x401
/* 81359380 | 41 82 00 44 */	beq .L_813593C4
/* 81359384 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81359388 | 3C C0 81 64 */	lis r6, lbl_81639172@ha
/* 8135938C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81359390 | 7F C5 F3 78 */	mr r5, r30
/* 81359394 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 81359398 | 38 C6 91 72 */	addi r6, r6, lbl_81639172@l
/* 8135939C | 38 8D 81 D9 */	li r4, lbl_81696219@sda21
/* 813593A0 | 38 E0 04 7D */	li r7, 0x47d
/* 813593A4 | 4B FF D3 55 */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 813593A8 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 813593AC | 38 80 00 01 */	li r4, 0x1
/* 813593B0 | 38 A0 00 02 */	li r5, 0x2
/* 813593B4 | 38 C0 00 00 */	li r6, 0x0
/* 813593B8 | 38 E0 00 00 */	li r7, 0x0
/* 813593BC | 39 00 FF FF */	li r8, -0x1
/* 813593C0 | 4B FF D1 55 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_813593C4:
/* 813593C4 | 3B A0 00 00 */	li r29, 0x0
.L_813593C8:
/* 813593C8 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 813593CC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813593D0 | 41 82 00 18 */	beq .L_813593E8
/* 813593D4 | 80 7A 00 04 */	lwz r3, 0x4(r26)
/* 813593D8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813593DC | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813593E0 | 7D 89 03 A6 */	mtctr r12
/* 813593E4 | 4E 80 04 21 */	bctrl
.L_813593E8:
/* 813593E8 | 7F A3 EB 78 */	mr r3, r29
.L_813593EC:
/* 813593EC | 39 61 00 30 */	addi r11, r1, 0x30
/* 813593F0 | 48 2A 01 19 */	bl _restgpr_26
/* 813593F4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813593F8 | 7C 08 03 A6 */	mtlr r0
/* 813593FC | 38 21 00 30 */	addi r1, r1, 0x30
/* 81359400 | 4E 80 00 20 */	blr
.endfn checkValidApp__Q33ipl8savedata7ManagerFUx

# .text:0x174C | 0x81359404 | size: 0x3C
# ipl::savedata::Manager::getAvailableNumInList(const unsigned long long*, unsigned long)
.fn getAvailableNumInList__Q33ipl8savedata7ManagerFPCUxUl, global
/* 81359404 | 38 C0 00 00 */	li r6, 0x0
/* 81359408 | 38 60 00 00 */	li r3, 0x0
/* 8135940C | 7C A9 03 A6 */	mtctr r5
/* 81359410 | 28 05 00 00 */	cmplwi r5, 0x0
/* 81359414 | 40 81 00 24 */	ble .L_81359438
.L_81359418:
/* 81359418 | 7C A4 1A 14 */	add r5, r4, r3
/* 8135941C | 7C 04 18 2E */	lwzx r0, r4, r3
/* 81359420 | 80 A5 00 04 */	lwz r5, 0x4(r5)
/* 81359424 | 7C A0 03 79 */	or. r0, r5, r0
/* 81359428 | 40 82 00 08 */	bne .L_81359430
/* 8135942C | 38 C6 00 01 */	addi r6, r6, 0x1
.L_81359430:
/* 81359430 | 38 63 00 08 */	addi r3, r3, 0x8
/* 81359434 | 42 00 FF E4 */	bdnz .L_81359418
.L_81359438:
/* 81359438 | 38 66 FF FF */	subi r3, r6, 0x1
/* 8135943C | 4E 80 00 20 */	blr
.endfn getAvailableNumInList__Q33ipl8savedata7ManagerFPCUxUl

# .text:0x1788 | 0x81359440 | size: 0x70
# ipl::savedata::Manager::getAvailableInList(const unsigned long long*, unsigned long)
.fn getAvailableInList__Q33ipl8savedata7ManagerFPCUxUl, global
/* 81359440 | 39 00 00 00 */	li r8, 0x0
/* 81359444 | 38 C0 00 00 */	li r6, 0x0
/* 81359448 | 38 E0 00 0C */	li r7, 0xc
/* 8135944C | 7C A9 03 A6 */	mtctr r5
/* 81359450 | 28 05 00 00 */	cmplwi r5, 0x0
/* 81359454 | 40 81 00 54 */	ble .L_813594A8
.L_81359458:
/* 81359458 | 7C A4 32 14 */	add r5, r4, r6
/* 8135945C | 7C 04 30 2E */	lwzx r0, r4, r6
/* 81359460 | 80 A5 00 04 */	lwz r5, 0x4(r5)
/* 81359464 | 7C A0 03 79 */	or. r0, r5, r0
/* 81359468 | 40 82 00 34 */	bne .L_8135949C
/* 8135946C | 7C A8 3B D6 */	divw r5, r8, r7
/* 81359470 | 7C 05 39 D6 */	mullw r0, r5, r7
/* 81359474 | 1C A5 00 C0 */	mulli r5, r5, 0xc0
/* 81359478 | 7C 00 40 50 */	subf r0, r0, r8
/* 8135947C | 7C A3 2A 14 */	add r5, r3, r5
/* 81359480 | 54 00 20 36 */	slwi r0, r0, 4
/* 81359484 | 7C A5 02 14 */	add r5, r5, r0
/* 81359488 | 88 05 00 30 */	lbz r0, 0x30(r5)
/* 8135948C | 28 00 00 01 */	cmplwi r0, 0x1
/* 81359490 | 41 82 00 0C */	beq .L_8135949C
/* 81359494 | 7D 03 43 78 */	mr r3, r8
/* 81359498 | 4E 80 00 20 */	blr
.L_8135949C:
/* 8135949C | 39 08 00 01 */	addi r8, r8, 0x1
/* 813594A0 | 38 C6 00 08 */	addi r6, r6, 0x8
/* 813594A4 | 42 00 FF B4 */	bdnz .L_81359458
.L_813594A8:
/* 813594A8 | 38 60 FF FF */	li r3, -0x1
/* 813594AC | 4E 80 00 20 */	blr
.endfn getAvailableInList__Q33ipl8savedata7ManagerFPCUxUl

# .text:0x17F8 | 0x813594B0 | size: 0x9C
# ipl::savedata::Manager::isEqualChannel(unsigned long long, unsigned long long)
.fn isEqualChannel__Q33ipl8savedata7ManagerFUxUx, global
/* 813594B0 | 7C C3 42 78 */	xor r3, r6, r8
/* 813594B4 | 7C A0 3A 78 */	xor r0, r5, r7
/* 813594B8 | 7C 60 03 79 */	or. r0, r3, r0
/* 813594BC | 40 82 00 0C */	bne .L_813594C8
/* 813594C0 | 38 60 FF FE */	li r3, -0x2
/* 813594C4 | 4E 80 00 20 */	blr
.L_813594C8:
/* 813594C8 | 38 60 FF 00 */	li r3, -0x100
/* 813594CC | 38 00 FF FF */	li r0, -0x1
/* 813594D0 | 7C C9 18 38 */	and r9, r6, r3
/* 813594D4 | 7D 03 18 38 */	and r3, r8, r3
/* 813594D8 | 7C A4 00 38 */	and r4, r5, r0
/* 813594DC | 7C E0 00 38 */	and r0, r7, r0
/* 813594E0 | 7D 23 1A 78 */	xor r3, r9, r3
/* 813594E4 | 7C 80 02 78 */	xor r0, r4, r0
/* 813594E8 | 7C 60 03 79 */	or. r0, r3, r0
/* 813594EC | 40 82 00 58 */	bne .L_81359544
/* 813594F0 | 54 C3 06 3E */	clrlwi r3, r6, 24
/* 813594F4 | 68 60 00 41 */	xori r0, r3, 0x41
/* 813594F8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813594FC | 41 82 00 1C */	beq .L_81359518
/* 81359500 | 55 00 06 3E */	clrlwi r0, r8, 24
/* 81359504 | 68 00 00 41 */	xori r0, r0, 0x41
/* 81359508 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135950C | 40 82 00 0C */	bne .L_81359518
/* 81359510 | 38 60 00 00 */	li r3, 0x0
/* 81359514 | 4E 80 00 20 */	blr
.L_81359518:
/* 81359518 | 68 60 00 41 */	xori r0, r3, 0x41
/* 8135951C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81359520 | 40 82 00 1C */	bne .L_8135953C
/* 81359524 | 55 00 06 3E */	clrlwi r0, r8, 24
/* 81359528 | 68 00 00 41 */	xori r0, r0, 0x41
/* 8135952C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81359530 | 41 82 00 0C */	beq .L_8135953C
/* 81359534 | 38 60 00 01 */	li r3, 0x1
/* 81359538 | 4E 80 00 20 */	blr
.L_8135953C:
/* 8135953C | 38 60 FF FF */	li r3, -0x1
/* 81359540 | 4E 80 00 20 */	blr
.L_81359544:
/* 81359544 | 38 60 FF FF */	li r3, -0x1
/* 81359548 | 4E 80 00 20 */	blr
.endfn isEqualChannel__Q33ipl8savedata7ManagerFUxUx

# .text:0x1894 | 0x8135954C | size: 0x50
# ipl::savedata::Manager::isDefaultChannel(unsigned long, unsigned long)
.fn isDefaultChannel__Q33ipl8savedata7ManagerFUlUl, global
/* 8135954C | 3C C0 81 61 */	lis r6, cDefaultChanList__3ipl@ha
/* 81359550 | 38 00 00 06 */	li r0, 0x6
/* 81359554 | 54 A7 00 2E */	clrrwi r7, r5, 8
/* 81359558 | 38 60 00 00 */	li r3, 0x0
/* 8135955C | 38 C6 D6 68 */	addi r6, r6, cDefaultChanList__3ipl@l
/* 81359560 | 38 A0 00 00 */	li r5, 0x0
/* 81359564 | 7C 09 03 A6 */	mtctr r0
.L_81359568:
/* 81359568 | 7D 06 2A 14 */	add r8, r6, r5
/* 8135956C | 80 08 00 08 */	lwz r0, 0x8(r8)
/* 81359570 | 7C 04 00 40 */	cmplw r4, r0
/* 81359574 | 40 82 00 14 */	bne .L_81359588
/* 81359578 | 80 08 00 0C */	lwz r0, 0xc(r8)
/* 8135957C | 54 00 00 2E */	clrrwi r0, r0, 8
/* 81359580 | 7C 07 00 40 */	cmplw r7, r0
/* 81359584 | 4D 82 00 20 */	beqlr
.L_81359588:
/* 81359588 | 38 63 00 01 */	addi r3, r3, 0x1
/* 8135958C | 38 A5 00 10 */	addi r5, r5, 0x10
/* 81359590 | 42 00 FF D8 */	bdnz .L_81359568
/* 81359594 | 38 60 FF FF */	li r3, -0x1
/* 81359598 | 4E 80 00 20 */	blr
.endfn isDefaultChannel__Q33ipl8savedata7ManagerFUlUl

# .text:0x18E4 | 0x8135959C | size: 0xD4
# ipl::savedata::Manager::updateVersion(unsigned long, unsigned long)
.fn updateVersion__Q33ipl8savedata7ManagerFUlUl, global
/* 8135959C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813595A0 | 7C 08 02 A6 */	mflr r0
/* 813595A4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813595A8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813595AC | 48 29 FF 1D */	bl _savegpr_29
/* 813595B0 | 54 86 00 1E */	clrrwi r6, r4, 16
/* 813595B4 | 54 A0 00 1E */	clrrwi r0, r5, 16
/* 813595B8 | 7C 06 00 40 */	cmplw r6, r0
/* 813595BC | 7C 7D 1B 78 */	mr r29, r3
/* 813595C0 | 7C 9E 23 78 */	mr r30, r4
/* 813595C4 | 7C BF 2B 78 */	mr r31, r5
/* 813595C8 | 41 82 00 34 */	beq .L_813595FC
/* 813595CC | 3C 60 81 64 */	lis r3, lbl_81639189@ha
/* 813595D0 | 54 A4 84 3E */	srwi r4, r5, 16
/* 813595D4 | 38 63 91 89 */	addi r3, r3, lbl_81639189@l
/* 813595D8 | 57 C5 84 3E */	srwi r5, r30, 16
/* 813595DC | 4C C6 31 82 */	crclr cr1eq
/* 813595E0 | 48 1D 50 C1 */	bl OSReport
/* 813595E4 | 3C 60 81 64 */	lis r3, lbl_81639172@ha
/* 813595E8 | 38 80 05 40 */	li r4, 0x540
/* 813595EC | 38 63 91 72 */	addi r3, r3, lbl_81639172@l
/* 813595F0 | 38 AD 81 DC */	li r5, lbl_8169621C@sda21
/* 813595F4 | 4C C6 31 82 */	crclr cr1eq
/* 813595F8 | 48 1D 51 39 */	bl OSPanic
.L_813595FC:
/* 813595FC | 38 00 04 C0 */	li r0, 0x4c0
/* 81359600 | 2C 1E 00 03 */	cmpwi r30, 0x3
/* 81359604 | 90 1D 00 24 */	stw r0, 0x24(r29)
/* 81359608 | 93 DD 00 28 */	stw r30, 0x28(r29)
/* 8135960C | 41 82 00 20 */	beq .L_8135962C
/* 81359610 | 40 80 00 48 */	bge .L_81359658
/* 81359614 | 2C 1E 00 02 */	cmpwi r30, 0x2
/* 81359618 | 40 80 00 08 */	bge .L_81359620
/* 8135961C | 48 00 00 3C */	b .L_81359658
.L_81359620:
/* 81359620 | 7F A3 EB 78 */	mr r3, r29
/* 81359624 | 4B FF EF 71 */	bl setDefaultKeyboard__Q33ipl8savedata7ManagerFv
/* 81359628 | 48 00 00 30 */	b .L_81359658
.L_8135962C:
/* 8135962C | 57 E0 04 3E */	clrlwi r0, r31, 16
/* 81359630 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81359634 | 41 82 00 1C */	beq .L_81359650
/* 81359638 | 40 80 00 20 */	bge .L_81359658
/* 8135963C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81359640 | 40 80 00 08 */	bge .L_81359648
/* 81359644 | 48 00 00 14 */	b .L_81359658
.L_81359648:
/* 81359648 | 7F A3 EB 78 */	mr r3, r29
/* 8135964C | 4B FF EF 49 */	bl setDefaultKeyboard__Q33ipl8savedata7ManagerFv
.L_81359650:
/* 81359650 | 7F A3 EB 78 */	mr r3, r29
/* 81359654 | 48 00 00 1D */	bl iplSavedata_81359670
.L_81359658:
/* 81359658 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8135965C | 48 29 FE B9 */	bl _restgpr_29
/* 81359660 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81359664 | 7C 08 03 A6 */	mtlr r0
/* 81359668 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8135966C | 4E 80 00 20 */	blr
.endfn updateVersion__Q33ipl8savedata7ManagerFUlUl

# .text:0x19B8 | 0x81359670 | size: 0x48
.fn iplSavedata_81359670, local
/* 81359670 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81359674 | 7C 08 02 A6 */	mflr r0
/* 81359678 | 38 80 00 00 */	li r4, 0x0
/* 8135967C | 38 A0 01 80 */	li r5, 0x180
/* 81359680 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81359684 | 38 00 00 01 */	li r0, 0x1
/* 81359688 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8135968C | 7C 7F 1B 78 */	mr r31, r3
/* 81359690 | 90 03 03 3C */	stw r0, 0x33c(r3)
/* 81359694 | 38 63 03 40 */	addi r3, r3, 0x340
/* 81359698 | 4B FD 6C 9D */	bl memset
/* 8135969C | 38 00 00 00 */	li r0, 0x0
/* 813596A0 | 90 1F 04 C0 */	stw r0, 0x4c0(r31)
/* 813596A4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813596A8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813596AC | 7C 08 03 A6 */	mtlr r0
/* 813596B0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813596B4 | 4E 80 00 20 */	blr
.endfn iplSavedata_81359670

# .text:0x1A00 | 0x813596B8 | size: 0xE8
.fn iplSavedata_813596B8, global
/* 813596B8 | 3C E0 48 41 */	lis r7, 0x4841
/* 813596BC | 3C 80 00 01 */	lis r4, 0x1
/* 813596C0 | 38 07 54 45 */	addi r0, r7, 0x5445
/* 813596C4 | 39 04 00 01 */	addi r8, r4, 0x1
/* 813596C8 | 7C C4 02 78 */	xor r4, r6, r0
/* 813596CC | 7C A0 42 78 */	xor r0, r5, r8
/* 813596D0 | 7C 80 03 79 */	or. r0, r4, r0
/* 813596D4 | 4D 82 00 20 */	beqlr
/* 813596D8 | 38 87 44 45 */	addi r4, r7, 0x4445
/* 813596DC | 7C A0 42 78 */	xor r0, r5, r8
/* 813596E0 | 7C C4 22 78 */	xor r4, r6, r4
/* 813596E4 | 7C 80 03 79 */	or. r0, r4, r0
/* 813596E8 | 40 82 00 08 */	bne .L_813596F0
/* 813596EC | 4E 80 00 20 */	blr
.L_813596F0:
/* 813596F0 | 3C 05 FF FF */	subis r0, r5, 0x1
/* 813596F4 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813596F8 | 41 82 00 1C */	beq .L_81359714
/* 813596FC | 28 00 00 03 */	cmplwi r0, 0x3
/* 81359700 | 41 82 00 14 */	beq .L_81359714
/* 81359704 | 28 00 00 04 */	cmplwi r0, 0x4
/* 81359708 | 41 82 00 0C */	beq .L_81359714
/* 8135970C | 28 00 00 06 */	cmplwi r0, 0x6
/* 81359710 | 4C 82 00 20 */	bnelr
.L_81359714:
/* 81359714 | 38 00 00 30 */	li r0, 0x30
/* 81359718 | 39 20 00 00 */	li r9, 0x0
/* 8135971C | 38 80 00 00 */	li r4, 0x0
/* 81359720 | 7C 09 03 A6 */	mtctr r0
.L_81359724:
/* 81359724 | 7C E3 22 14 */	add r7, r3, r4
/* 81359728 | 80 07 03 40 */	lwz r0, 0x340(r7)
/* 8135972C | 80 E7 03 44 */	lwz r7, 0x344(r7)
/* 81359730 | 7C A0 02 78 */	xor r0, r5, r0
/* 81359734 | 7C C7 3A 78 */	xor r7, r6, r7
/* 81359738 | 7C E0 03 79 */	or. r0, r7, r0
/* 8135973C | 41 82 00 10 */	beq .L_8135974C
/* 81359740 | 39 29 00 01 */	addi r9, r9, 0x1
/* 81359744 | 38 84 00 08 */	addi r4, r4, 0x8
/* 81359748 | 42 00 FF DC */	bdnz .L_81359724
.L_8135974C:
/* 8135974C | 2C 09 00 30 */	cmpwi r9, 0x30
/* 81359750 | 40 82 00 08 */	bne .L_81359758
/* 81359754 | 39 20 00 2F */	li r9, 0x2f
.L_81359758:
/* 81359758 | 55 24 18 38 */	slwi r4, r9, 3
/* 8135975C | 7D 29 03 A6 */	mtctr r9
/* 81359760 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 81359764 | 40 81 00 30 */	ble .L_81359794
.L_81359768:
/* 81359768 | 38 09 FF FF */	subi r0, r9, 0x1
/* 8135976C | 7C E3 22 14 */	add r7, r3, r4
/* 81359770 | 54 00 18 38 */	slwi r0, r0, 3
/* 81359774 | 39 29 FF FF */	subi r9, r9, 0x1
/* 81359778 | 7D 03 02 14 */	add r8, r3, r0
/* 8135977C | 38 84 FF F8 */	subi r4, r4, 0x8
/* 81359780 | 80 08 03 40 */	lwz r0, 0x340(r8)
/* 81359784 | 81 08 03 44 */	lwz r8, 0x344(r8)
/* 81359788 | 91 07 03 44 */	stw r8, 0x344(r7)
/* 8135978C | 90 07 03 40 */	stw r0, 0x340(r7)
/* 81359790 | 42 00 FF D8 */	bdnz .L_81359768
.L_81359794:
/* 81359794 | 90 C3 03 44 */	stw r6, 0x344(r3)
/* 81359798 | 90 A3 03 40 */	stw r5, 0x340(r3)
/* 8135979C | 4E 80 00 20 */	blr
.endfn iplSavedata_813596B8

# .text:0x1AE8 | 0x813597A0 | size: 0x40
.fn iplSavedata_813597A0, global
/* 813597A0 | 38 00 00 30 */	li r0, 0x30
/* 813597A4 | 38 80 00 00 */	li r4, 0x0
/* 813597A8 | 7C 09 03 A6 */	mtctr r0
.L_813597AC:
/* 813597AC | 7C E3 22 14 */	add r7, r3, r4
/* 813597B0 | 80 07 03 40 */	lwz r0, 0x340(r7)
/* 813597B4 | 80 E7 03 44 */	lwz r7, 0x344(r7)
/* 813597B8 | 7C A0 02 78 */	xor r0, r5, r0
/* 813597BC | 7C C7 3A 78 */	xor r7, r6, r7
/* 813597C0 | 7C E0 03 79 */	or. r0, r7, r0
/* 813597C4 | 40 82 00 0C */	bne .L_813597D0
/* 813597C8 | 38 60 00 01 */	li r3, 0x1
/* 813597CC | 4E 80 00 20 */	blr
.L_813597D0:
/* 813597D0 | 38 84 00 08 */	addi r4, r4, 0x8
/* 813597D4 | 42 00 FF D8 */	bdnz .L_813597AC
/* 813597D8 | 38 60 00 00 */	li r3, 0x0
/* 813597DC | 4E 80 00 20 */	blr
.endfn iplSavedata_813597A0

# .text:0x1B28 | 0x813597E0 | size: 0xDC
# ipl::savedata::Manager::nand_error_handling(int)
.fn nand_error_handling__Q33ipl8savedata7ManagerFi, global
/* 813597E0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813597E4 | 7C 08 02 A6 */	mflr r0
/* 813597E8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813597EC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813597F0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813597F4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813597F8 | 3B C0 00 00 */	li r30, 0x0
/* 813597FC | 90 83 05 00 */	stw r4, 0x500(r3)
/* 81359800 | 41 80 00 0C */	blt .L_8135980C
/* 81359804 | 38 60 00 01 */	li r3, 0x1
/* 81359808 | 48 00 00 9C */	b .L_813598A4
.L_8135980C:
/* 8135980C | 38 04 00 0F */	addi r0, r4, 0xf
/* 81359810 | 28 00 00 0B */	cmplwi r0, 0xb
/* 81359814 | 41 81 00 4C */	bgt .L_81359860
/* 81359818 | 3C 60 81 64 */	lis r3, jumptable_816391C4@ha
/* 8135981C | 54 00 10 3A */	slwi r0, r0, 2
/* 81359820 | 38 63 91 C4 */	addi r3, r3, jumptable_816391C4@l
/* 81359824 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 81359828 | 7C 69 03 A6 */	mtctr r3
/* 8135982C | 4E 80 04 20 */	bctr
.L_81359830:
/* 81359830 | 3B C0 00 01 */	li r30, 0x1
/* 81359834 | 48 00 00 6C */	b .L_813598A0
.L_81359838:
/* 81359838 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8135983C | 38 80 00 01 */	li r4, 0x1
/* 81359840 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81359844 | 38 A0 00 01 */	li r5, 0x1
/* 81359848 | 80 63 00 98 */	lwz r3, 0x98(r3)
/* 8135984C | 38 C0 00 00 */	li r6, 0x0
/* 81359850 | 38 E0 00 00 */	li r7, 0x0
/* 81359854 | 39 00 FF FF */	li r8, -0x1
/* 81359858 | 4B FF CC BD */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
/* 8135985C | 48 00 00 44 */	b .L_813598A0
.L_81359860:
/* 81359860 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81359864 | 3C C0 81 64 */	lis r6, lbl_81639172@ha
/* 81359868 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8135986C | 7C 85 23 78 */	mr r5, r4
/* 81359870 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 81359874 | 38 C6 91 72 */	addi r6, r6, lbl_81639172@l
/* 81359878 | 38 8D 81 D4 */	li r4, lbl_81696214@sda21
/* 8135987C | 38 E0 05 DF */	li r7, 0x5df
/* 81359880 | 4B FF CE 79 */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 81359884 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 81359888 | 38 80 00 01 */	li r4, 0x1
/* 8135988C | 38 A0 00 02 */	li r5, 0x2
/* 81359890 | 38 C0 00 00 */	li r6, 0x0
/* 81359894 | 38 E0 00 00 */	li r7, 0x0
/* 81359898 | 39 00 FF FF */	li r8, -0x1
/* 8135989C | 4B FF CC 79 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_813598A0:
/* 813598A0 | 7F C3 F3 78 */	mr r3, r30
.L_813598A4:
/* 813598A4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813598A8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813598AC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813598B0 | 7C 08 03 A6 */	mtlr r0
/* 813598B4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813598B8 | 4E 80 00 20 */	blr
.endfn nand_error_handling__Q33ipl8savedata7ManagerFi

# 0x8160D668..0x8160D968 | size: 0x300
.rodata
.balign 8

# .rodata:0x0 | 0x8160D668 | size: 0x300
# ipl::cDefaultChanList
.obj cDefaultChanList__3ipl, local
	.4byte 0x01010000
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03010000
	.4byte 0x0000000E
	.4byte 0x00010002
	.4byte 0x48414341
	.4byte 0x03010000
	.4byte 0x0000000E
	.4byte 0x00010002
	.4byte 0x48414141
	.4byte 0x03010000
	.4byte 0x0000000E
	.4byte 0x00010002
	.4byte 0x48414241
	.4byte 0x03010000
	.4byte 0x0000000E
	.4byte 0x00010002
	.4byte 0x48414641
	.4byte 0x03010000
	.4byte 0x0000000E
	.4byte 0x00010002
	.4byte 0x48414741
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj cDefaultChanList__3ipl

# 0x81639148..0x81639200 | size: 0xB8
.data
.balign 8

# .data:0x0 | 0x81639148 | size: 0x2A
.obj lbl_81639148, global
	.string "/title/00000001/00000002/data/iplsave.bin"
.endobj lbl_81639148

# .data:0x2A | 0x81639172 | size: 0x17
.obj lbl_81639172, global
	.string "iplSaveDataManager.cpp"
.endobj lbl_81639172

# .data:0x41 | 0x81639189 | size: 0x3B
.obj lbl_81639189, global
	.4byte 0x5B536176
	.4byte 0x65446174
	.4byte 0x614D616E
	.4byte 0x61676572
	.4byte 0x5D20496E
	.4byte 0x76616C69
	.4byte 0x64206D61
	.4byte 0x6A6F7220
	.4byte 0x76657273
	.4byte 0x696F6E20
	.4byte 0x6368616E
	.4byte 0x67652025
	.4byte 0x64202D3E
	.4byte 0x2025640A
	.byte 0x00, 0x00, 0x00
.endobj lbl_81639189

# .data:0x7C | 0x816391C4 | size: 0x30
.obj jumptable_816391C4, local
	.rel nand_error_handling__Q33ipl8savedata7ManagerFi, .L_813598A0
	.rel nand_error_handling__Q33ipl8savedata7ManagerFi, .L_81359860
	.rel nand_error_handling__Q33ipl8savedata7ManagerFi, .L_81359860
	.rel nand_error_handling__Q33ipl8savedata7ManagerFi, .L_813598A0
	.rel nand_error_handling__Q33ipl8savedata7ManagerFi, .L_81359860
	.rel nand_error_handling__Q33ipl8savedata7ManagerFi, .L_81359860
	.rel nand_error_handling__Q33ipl8savedata7ManagerFi, .L_81359860
	.rel nand_error_handling__Q33ipl8savedata7ManagerFi, .L_81359860
	.rel nand_error_handling__Q33ipl8savedata7ManagerFi, .L_81359860
	.rel nand_error_handling__Q33ipl8savedata7ManagerFi, .L_81359830
	.rel nand_error_handling__Q33ipl8savedata7ManagerFi, .L_813598A0
	.rel nand_error_handling__Q33ipl8savedata7ManagerFi, .L_81359838
.endobj jumptable_816391C4

# .data:0xAC | 0x816391F4 | size: 0xC
# ipl::savedata::Manager::__vtable
.obj __vt__Q33ipl8savedata7Manager, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl8savedata7ManagerFv
.endobj __vt__Q33ipl8savedata7Manager

# 0x81696210..0x81696220 | size: 0x10
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696210 | size: 0x4
.obj lbl_81696210, global
	.4byte lbl_81639148
.endobj lbl_81696210

# .sdata:0x4 | 0x81696214 | size: 0x5
.obj lbl_81696214, global
	.string "NAND"
.endobj lbl_81696214

# .sdata:0x9 | 0x81696219 | size: 0x3
.obj lbl_81696219, global
	.string "ES"
.endobj lbl_81696219

# .sdata:0xC | 0x8169621C | size: 0x4
.obj lbl_8169621C, global
	.4byte 0x00000000
.endobj lbl_8169621C
