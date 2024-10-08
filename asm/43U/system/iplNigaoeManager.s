.include "macros.inc"
.file "iplNigaoeManager.cpp"

# 0x8133E984..0x8133EE00 | size: 0x47C
.text
.balign 4

# .text:0x0 | 0x8133E984 | size: 0x110
# ipl::nigaoe::Manager::Manager(EGG::Heap*)
.fn __ct__Q33ipl6nigaoe7ManagerFPQ23EGG4Heap, global
/* 8133E984 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8133E988 | 7C 08 02 A6 */	mflr r0
/* 8133E98C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8133E990 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8133E994 | 48 2B AB 2D */	bl _savegpr_27
/* 8133E998 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 8133E99C | 7C 7B 1B 78 */	mr r27, r3
/* 8133E9A0 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 8133E9A4 | 7C 9C 23 78 */	mr r28, r4
/* 8133E9A8 | 80 05 01 00 */	lwz r0, 0x100(r5)
/* 8133E9AC | 90 03 00 00 */	stw r0, 0x0(r3)
/* 8133E9B0 | 38 60 00 00 */	li r3, 0x0
/* 8133E9B4 | 48 19 BA A9 */	bl RFLGetWorkSize
/* 8133E9B8 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 8133E9BC | 7C 64 1B 78 */	mr r4, r3
/* 8133E9C0 | 7F 83 E3 78 */	mr r3, r28
/* 8133E9C4 | 38 A0 00 20 */	li r5, 0x20
/* 8133E9C8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8133E9CC | 7D 89 03 A6 */	mtctr r12
/* 8133E9D0 | 4E 80 04 21 */	bctrl
/* 8133E9D4 | 80 BB 00 00 */	lwz r5, 0x0(r27)
/* 8133E9D8 | 38 C0 00 00 */	li r6, 0x0
/* 8133E9DC | 80 85 00 A0 */	lwz r4, 0xa0(r5)
/* 8133E9E0 | 80 A5 00 98 */	lwz r5, 0x98(r5)
/* 8133E9E4 | 48 19 BD FD */	bl RFLInitRes
/* 8133E9E8 | 90 7B 00 04 */	stw r3, 0x4(r27)
/* 8133E9EC | 38 7B 00 08 */	addi r3, r27, 0x8
/* 8133E9F0 | 38 80 00 48 */	li r4, 0x48
/* 8133E9F4 | 48 1D 36 69 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 8133E9F8 | 38 00 00 00 */	li r0, 0x0
/* 8133E9FC | 98 01 00 0B */	stb r0, 0xb(r1)
/* 8133EA00 | 98 01 00 0C */	stb r0, 0xc(r1)
/* 8133EA04 | 98 01 00 0D */	stb r0, 0xd(r1)
/* 8133EA08 | 98 01 00 0E */	stb r0, 0xe(r1)
/* 8133EA0C | 98 01 00 0F */	stb r0, 0xf(r1)
/* 8133EA10 | 98 01 00 10 */	stb r0, 0x10(r1)
/* 8133EA14 | 98 01 00 11 */	stb r0, 0x11(r1)
/* 8133EA18 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 8133EA1C | 98 01 00 09 */	stb r0, 0x9(r1)
/* 8133EA20 | 98 01 00 0A */	stb r0, 0xa(r1)
/* 8133EA24 | 48 0B CD 45 */	bl getMacAddr__Q33ipl3ncd10NCDSettingFv
/* 8133EA28 | 7C 7D 1B 78 */	mr r29, r3
/* 8133EA2C | 3B C1 00 0C */	addi r30, r1, 0xc
/* 8133EA30 | 3B 80 00 01 */	li r28, 0x1
/* 8133EA34 | 3B E0 00 03 */	li r31, 0x3
.L_8133EA38:
/* 8133EA38 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8133EA3C | 7C 9D FA 14 */	add r4, r29, r31
/* 8133EA40 | 38 A0 00 02 */	li r5, 0x2
/* 8133EA44 | 4B FF 17 ED */	bl memcpy
/* 8133EA48 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8133EA4C | 38 80 00 00 */	li r4, 0x0
/* 8133EA50 | 38 A0 00 10 */	li r5, 0x10
/* 8133EA54 | 48 2C 5E 71 */	bl strtol
/* 8133EA58 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 8133EA5C | 98 7E 00 00 */	stb r3, 0x0(r30)
/* 8133EA60 | 2C 1C 00 06 */	cmpwi r28, 0x6
/* 8133EA64 | 3B FF 00 03 */	addi r31, r31, 0x3
/* 8133EA68 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8133EA6C | 41 80 FF CC */	blt .L_8133EA38
/* 8133EA70 | 38 61 00 0B */	addi r3, r1, 0xb
/* 8133EA74 | 48 19 C4 55 */	bl RFLiSetMacAddr
/* 8133EA78 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8133EA7C | 7F 63 DB 78 */	mr r3, r27
/* 8133EA80 | 48 2B AA 8D */	bl _restgpr_27
/* 8133EA84 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8133EA88 | 7C 08 03 A6 */	mtlr r0
/* 8133EA8C | 38 21 00 30 */	addi r1, r1, 0x30
/* 8133EA90 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl6nigaoe7ManagerFPQ23EGG4Heap

# .text:0x110 | 0x8133EA94 | size: 0x90
# ipl::nigaoe::Manager::create(EGG::Heap*, int, int, int, void (*)(ipl::nigaoe::Object*, void*), void*)
.fn create__Q33ipl6nigaoe7ManagerFPQ23EGG4HeapiiiPFPQ33ipl6nigaoe6ObjectPv_vPv, global
/* 8133EA94 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8133EA98 | 7C 08 02 A6 */	mflr r0
/* 8133EA9C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8133EAA0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8133EAA4 | 48 2B AA 11 */	bl _savegpr_24
/* 8133EAA8 | 7C 78 1B 78 */	mr r24, r3
/* 8133EAAC | 7C BA 2B 78 */	mr r26, r5
/* 8133EAB0 | 7C 99 23 78 */	mr r25, r4
/* 8133EAB4 | 7C DB 33 78 */	mr r27, r6
/* 8133EAB8 | 7C FC 3B 78 */	mr r28, r7
/* 8133EABC | 7D 1D 43 78 */	mr r29, r8
/* 8133EAC0 | 7D 3E 4B 78 */	mr r30, r9
/* 8133EAC4 | 38 60 00 54 */	li r3, 0x54
/* 8133EAC8 | 38 A0 00 04 */	li r5, 0x4
/* 8133EACC | 48 2B 95 E5 */	bl __nw__FUlPQ23EGG4Heapi
/* 8133EAD0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133EAD4 | 7C 7F 1B 78 */	mr r31, r3
/* 8133EAD8 | 41 82 00 24 */	beq .L_8133EAFC
/* 8133EADC | 7F 24 CB 78 */	mr r4, r25
/* 8133EAE0 | 7F 45 D3 78 */	mr r5, r26
/* 8133EAE4 | 7F 66 DB 78 */	mr r6, r27
/* 8133EAE8 | 7F 87 E3 78 */	mr r7, r28
/* 8133EAEC | 7F A8 EB 78 */	mr r8, r29
/* 8133EAF0 | 7F C9 F3 78 */	mr r9, r30
/* 8133EAF4 | 48 00 03 0D */	bl __ct__Q33ipl6nigaoe6ObjectFPQ23EGG4HeapiiiPFPQ33ipl6nigaoe6ObjectPv_vPv
/* 8133EAF8 | 7C 7F 1B 78 */	mr r31, r3
.L_8133EAFC:
/* 8133EAFC | 7F E4 FB 78 */	mr r4, r31
/* 8133EB00 | 38 78 00 08 */	addi r3, r24, 0x8
/* 8133EB04 | 48 1D 35 71 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 8133EB08 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8133EB0C | 7F E3 FB 78 */	mr r3, r31
/* 8133EB10 | 48 2B A9 F1 */	bl _restgpr_24
/* 8133EB14 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8133EB18 | 7C 08 03 A6 */	mtlr r0
/* 8133EB1C | 38 21 00 30 */	addi r1, r1, 0x30
/* 8133EB20 | 4E 80 00 20 */	blr
.endfn create__Q33ipl6nigaoe7ManagerFPQ23EGG4HeapiiiPFPQ33ipl6nigaoe6ObjectPv_vPv

# .text:0x1A0 | 0x8133EB24 | size: 0x90
# ipl::nigaoe::Manager::create(EGG::Heap*, int, int, RFLiCharData*, void (*)(ipl::nigaoe::Object*, void*), void*)
.fn create__Q33ipl6nigaoe7ManagerFPQ23EGG4HeapiiP12RFLiCharDataPFPQ33ipl6nigaoe6ObjectPv_vPv, global
/* 8133EB24 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8133EB28 | 7C 08 02 A6 */	mflr r0
/* 8133EB2C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8133EB30 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8133EB34 | 48 2B A9 81 */	bl _savegpr_24
/* 8133EB38 | 7C 78 1B 78 */	mr r24, r3
/* 8133EB3C | 7C BA 2B 78 */	mr r26, r5
/* 8133EB40 | 7C 99 23 78 */	mr r25, r4
/* 8133EB44 | 7C DB 33 78 */	mr r27, r6
/* 8133EB48 | 7C FC 3B 78 */	mr r28, r7
/* 8133EB4C | 7D 1D 43 78 */	mr r29, r8
/* 8133EB50 | 7D 3E 4B 78 */	mr r30, r9
/* 8133EB54 | 38 60 00 54 */	li r3, 0x54
/* 8133EB58 | 38 A0 00 04 */	li r5, 0x4
/* 8133EB5C | 48 2B 95 55 */	bl __nw__FUlPQ23EGG4Heapi
/* 8133EB60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133EB64 | 7C 7F 1B 78 */	mr r31, r3
/* 8133EB68 | 41 82 00 24 */	beq .L_8133EB8C
/* 8133EB6C | 7F 24 CB 78 */	mr r4, r25
/* 8133EB70 | 7F 45 D3 78 */	mr r5, r26
/* 8133EB74 | 7F 66 DB 78 */	mr r6, r27
/* 8133EB78 | 7F 87 E3 78 */	mr r7, r28
/* 8133EB7C | 7F A8 EB 78 */	mr r8, r29
/* 8133EB80 | 7F C9 F3 78 */	mr r9, r30
/* 8133EB84 | 48 00 02 C5 */	bl __ct__Q33ipl6nigaoe6ObjectFPQ23EGG4HeapiiP12RFLiCharDataPFPQ33ipl6nigaoe6ObjectPv_vPv
/* 8133EB88 | 7C 7F 1B 78 */	mr r31, r3
.L_8133EB8C:
/* 8133EB8C | 7F E4 FB 78 */	mr r4, r31
/* 8133EB90 | 38 78 00 08 */	addi r3, r24, 0x8
/* 8133EB94 | 48 1D 34 E1 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 8133EB98 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8133EB9C | 7F E3 FB 78 */	mr r3, r31
/* 8133EBA0 | 48 2B A9 61 */	bl _restgpr_24
/* 8133EBA4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8133EBA8 | 7C 08 03 A6 */	mtlr r0
/* 8133EBAC | 38 21 00 30 */	addi r1, r1, 0x30
/* 8133EBB0 | 4E 80 00 20 */	blr
.endfn create__Q33ipl6nigaoe7ManagerFPQ23EGG4HeapiiP12RFLiCharDataPFPQ33ipl6nigaoe6ObjectPv_vPv

# .text:0x230 | 0x8133EBB4 | size: 0x7C
# ipl::nigaoe::Manager::makeIcon()
.fn makeIcon__Q33ipl6nigaoe7ManagerFv, global
/* 8133EBB4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133EBB8 | 7C 08 02 A6 */	mflr r0
/* 8133EBBC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8133EBC0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133EBC4 | 48 2B A9 05 */	bl _savegpr_29
/* 8133EBC8 | 7C 7D 1B 78 */	mr r29, r3
/* 8133EBCC | 3B E0 00 00 */	li r31, 0x0
/* 8133EBD0 | 48 19 C1 35 */	bl RFLGetAsyncStatus
/* 8133EBD4 | 2C 03 00 06 */	cmpwi r3, 0x6
/* 8133EBD8 | 41 82 00 40 */	beq .L_8133EC18
/* 8133EBDC | 48 00 00 1C */	b .L_8133EBF8
.L_8133EBE0:
/* 8133EBE0 | 7F C3 F3 78 */	mr r3, r30
/* 8133EBE4 | 48 00 03 85 */	bl make_icon__Q33ipl6nigaoe6ObjectFv
/* 8133EBE8 | 7F C4 F3 78 */	mr r4, r30
/* 8133EBEC | 38 7D 00 08 */	addi r3, r29, 0x8
/* 8133EBF0 | 48 1D 36 81 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 8133EBF4 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_8133EBF8:
/* 8133EBF8 | 38 7D 00 08 */	addi r3, r29, 0x8
/* 8133EBFC | 38 80 00 00 */	li r4, 0x0
/* 8133EC00 | 48 1D 36 DD */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 8133EC04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133EC08 | 7C 7E 1B 78 */	mr r30, r3
/* 8133EC0C | 41 82 00 0C */	beq .L_8133EC18
/* 8133EC10 | 2C 1F 00 0A */	cmpwi r31, 0xa
/* 8133EC14 | 41 80 FF CC */	blt .L_8133EBE0
.L_8133EC18:
/* 8133EC18 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133EC1C | 48 2B A8 F9 */	bl _restgpr_29
/* 8133EC20 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8133EC24 | 7C 08 03 A6 */	mtlr r0
/* 8133EC28 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8133EC2C | 4E 80 00 20 */	blr
.endfn makeIcon__Q33ipl6nigaoe7ManagerFv

# .text:0x2AC | 0x8133EC30 | size: 0x74
# ipl::nigaoe::Manager::detach(ipl::nigaoe::Object*)
.fn detach__Q33ipl6nigaoe7ManagerFPQ33ipl6nigaoe6Object, global
/* 8133EC30 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133EC34 | 7C 08 02 A6 */	mflr r0
/* 8133EC38 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8133EC3C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133EC40 | 48 2B A8 89 */	bl _savegpr_29
/* 8133EC44 | 7C 7D 1B 78 */	mr r29, r3
/* 8133EC48 | 7C 9E 23 78 */	mr r30, r4
/* 8133EC4C | 3B E0 00 00 */	li r31, 0x0
/* 8133EC50 | 48 00 00 2C */	b .L_8133EC7C
.L_8133EC54:
/* 8133EC54 | 38 7D 00 08 */	addi r3, r29, 0x8
/* 8133EC58 | 57 E4 04 3E */	clrlwi r4, r31, 16
/* 8133EC5C | 48 1D 36 BD */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8133EC60 | 7C 1E 18 40 */	cmplw r30, r3
/* 8133EC64 | 40 82 00 14 */	bne .L_8133EC78
/* 8133EC68 | 7F C4 F3 78 */	mr r4, r30
/* 8133EC6C | 38 7D 00 08 */	addi r3, r29, 0x8
/* 8133EC70 | 48 1D 36 01 */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 8133EC74 | 48 00 00 18 */	b .L_8133EC8C
.L_8133EC78:
/* 8133EC78 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_8133EC7C:
/* 8133EC7C | A0 1D 00 10 */	lhz r0, 0x10(r29)
/* 8133EC80 | 57 E3 04 3E */	clrlwi r3, r31, 16
/* 8133EC84 | 7C 03 00 40 */	cmplw r3, r0
/* 8133EC88 | 41 80 FF CC */	blt .L_8133EC54
.L_8133EC8C:
/* 8133EC8C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133EC90 | 48 2B A8 85 */	bl _restgpr_29
/* 8133EC94 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8133EC98 | 7C 08 03 A6 */	mtlr r0
/* 8133EC9C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8133ECA0 | 4E 80 00 20 */	blr
.endfn detach__Q33ipl6nigaoe7ManagerFPQ33ipl6nigaoe6Object

# .text:0x320 | 0x8133ECA4 | size: 0x1C
# ipl::nigaoe::Manager::isAvalable(unsigned short)
.fn isAvalable__Q33ipl6nigaoe7ManagerFUs, global
/* 8133ECA4 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8133ECA8 | 38 60 00 00 */	li r3, 0x0
/* 8133ECAC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133ECB0 | 4C 82 00 20 */	bnelr
/* 8133ECB4 | 7C 83 23 78 */	mr r3, r4
/* 8133ECB8 | 48 1A 72 44 */	b RFLIsAvailableOfficialData
/* 8133ECBC | 4E 80 00 20 */	blr
.endfn isAvalable__Q33ipl6nigaoe7ManagerFUs

# .text:0x33C | 0x8133ECC0 | size: 0x60
# ipl::nigaoe::Manager::isValid(const RFLiCharData*) const
.fn isValid__Q33ipl6nigaoe7ManagerCFPC12RFLiCharData, global
/* 8133ECC0 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8133ECC4 | 7C 08 02 A6 */	mflr r0
/* 8133ECC8 | 7C 83 23 78 */	mr r3, r4
/* 8133ECCC | 90 01 00 64 */	stw r0, 0x64(r1)
/* 8133ECD0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8133ECD4 | 93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8133ECD8 | 3B E0 00 01 */	li r31, 0x1
/* 8133ECDC | 48 1A 6D 7D */	bl RFLiConvertRaw2Info
/* 8133ECE0 | 38 61 00 4E */	addi r3, r1, 0x4e
/* 8133ECE4 | 48 1A 76 9D */	bl RFLiIsValidID
/* 8133ECE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133ECEC | 40 82 00 08 */	bne .L_8133ECF4
/* 8133ECF0 | 3B E0 00 00 */	li r31, 0x0
.L_8133ECF4:
/* 8133ECF4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8133ECF8 | 48 1A 9D 9D */	bl RFLiCheckValidInfo
/* 8133ECFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133ED00 | 40 82 00 08 */	bne .L_8133ED08
/* 8133ED04 | 3B E0 00 00 */	li r31, 0x0
.L_8133ED08:
/* 8133ED08 | 7F E3 FB 78 */	mr r3, r31
/* 8133ED0C | 83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8133ED10 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 8133ED14 | 7C 08 03 A6 */	mtlr r0
/* 8133ED18 | 38 21 00 60 */	addi r1, r1, 0x60
/* 8133ED1C | 4E 80 00 20 */	blr
.endfn isValid__Q33ipl6nigaoe7ManagerCFPC12RFLiCharData

# .text:0x39C | 0x8133ED20 | size: 0x48
# ipl::nigaoe::Manager::addHiddenDB(const NWC24MsgObj*)
.fn addHiddenDB__Q33ipl6nigaoe7ManagerFPC11NWC24MsgObj, global
/* 8133ED20 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133ED24 | 7C 08 02 A6 */	mflr r0
/* 8133ED28 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133ED2C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133ED30 | 7C 9F 23 78 */	mr r31, r4
/* 8133ED34 | 48 19 C0 81 */	bl RFLWaitAsync
/* 8133ED38 | 3C A0 81 63 */	lis r5, lbl_81635100@ha
/* 8133ED3C | 7C 64 1B 78 */	mr r4, r3
/* 8133ED40 | 38 65 51 00 */	addi r3, r5, lbl_81635100@l
/* 8133ED44 | 4C C6 31 82 */	crclr cr1eq
/* 8133ED48 | 48 1E F9 59 */	bl OSReport
/* 8133ED4C | 7F E3 FB 78 */	mr r3, r31
/* 8133ED50 | 48 1A A7 59 */	bl RFLiNWC24Msg2HiddenAsync
/* 8133ED54 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133ED58 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133ED5C | 7C 08 03 A6 */	mtlr r0
/* 8133ED60 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133ED64 | 4E 80 00 20 */	blr
.endfn addHiddenDB__Q33ipl6nigaoe7ManagerFPC11NWC24MsgObj

# .text:0x3E4 | 0x8133ED68 | size: 0x98
# ipl::nigaoe::Manager::commitHiddenDB()
.fn commitHiddenDB__Q33ipl6nigaoe7ManagerFv, global
/* 8133ED68 | 94 21 FE A0 */	stwu r1, -0x160(r1)
/* 8133ED6C | 7C 08 02 A6 */	mflr r0
/* 8133ED70 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8133ED74 | 90 01 01 64 */	stw r0, 0x164(r1)
/* 8133ED78 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8133ED7C | 93 E1 01 5C */	stw r31, 0x15c(r1)
/* 8133ED80 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 8133ED84 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133ED88 | 41 82 00 0C */	beq .L_8133ED94
/* 8133ED8C | 3B E0 00 00 */	li r31, 0x0
/* 8133ED90 | 48 00 00 08 */	b .L_8133ED98
.L_8133ED94:
/* 8133ED94 | 83 E3 00 8C */	lwz r31, 0x8c(r3)
.L_8133ED98:
/* 8133ED98 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8133ED9C | 41 82 00 50 */	beq .L_8133EDEC
/* 8133EDA0 | 7F E3 FB 78 */	mr r3, r31
/* 8133EDA4 | 48 00 2C 9D */	bl open__Q33ipl5nwc247ManagerFv
/* 8133EDA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133EDAC | 41 82 00 40 */	beq .L_8133EDEC
/* 8133EDB0 | 38 61 00 54 */	addi r3, r1, 0x54
/* 8133EDB4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8133EDB8 | 48 1A B1 49 */	bl RFLiMakeNWC24MsgforExchange
/* 8133EDBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133EDC0 | 40 82 00 24 */	bne .L_8133EDE4
/* 8133EDC4 | 3C A0 48 41 */	lis r5, 0x4841
/* 8133EDC8 | 7F E3 FB 78 */	mr r3, r31
/* 8133EDCC | 38 81 00 54 */	addi r4, r1, 0x54
/* 8133EDD0 | 38 A5 43 41 */	addi r5, r5, 0x4341
/* 8133EDD4 | 48 00 2F 49 */	bl setMsgAppId__Q33ipl5nwc247ManagerFP11NWC24MsgObjUl
/* 8133EDD8 | 7F E3 FB 78 */	mr r3, r31
/* 8133EDDC | 38 81 00 54 */	addi r4, r1, 0x54
/* 8133EDE0 | 48 00 2F 81 */	bl commitMsg__Q33ipl5nwc247ManagerFP11NWC24MsgObj
.L_8133EDE4:
/* 8133EDE4 | 7F E3 FB 78 */	mr r3, r31
/* 8133EDE8 | 48 00 2C CD */	bl close__Q33ipl5nwc247ManagerFv
.L_8133EDEC:
/* 8133EDEC | 80 01 01 64 */	lwz r0, 0x164(r1)
/* 8133EDF0 | 83 E1 01 5C */	lwz r31, 0x15c(r1)
/* 8133EDF4 | 7C 08 03 A6 */	mtlr r0
/* 8133EDF8 | 38 21 01 60 */	addi r1, r1, 0x160
/* 8133EDFC | 4E 80 00 20 */	blr
.endfn commitHiddenDB__Q33ipl6nigaoe7ManagerFv

# 0x81635100..0x81635118 | size: 0x18
.data
.balign 8

# .data:0x0 | 0x81635100 | size: 0x18
.obj lbl_81635100, local
	.string "wait async err %d\n\000\000\000\000\000"
.endobj lbl_81635100
