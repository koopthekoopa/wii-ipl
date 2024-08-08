.include "macros.inc"
.file "iplBS2Manager.cpp"

# 0x813607A0..0x81361048 | size: 0x8A8
.text
.balign 4

# .text:0x0 | 0x813607A0 | size: 0x94
# ipl::bs2::Manager::Manager(EGG::Heap*)
.fn __ct__Q33ipl3bs27ManagerFPQ23EGG4Heap, global
/* 813607A0 0002EBA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813607A4 0002EBA4  7C 08 02 A6 */	mflr r0
/* 813607A8 0002EBA8  3C A0 81 64 */	lis r5, __vt__Q33ipl3bs27Manager@ha
/* 813607AC 0002EBAC  38 E0 00 01 */	li r7, 0x1
/* 813607B0 0002EBB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 813607B4 0002EBB4  38 00 00 00 */	li r0, 0x0
/* 813607B8 0002EBB8  38 C0 00 34 */	li r6, 0x34
/* 813607BC 0002EBBC  38 A5 98 80 */	addi r5, r5, __vt__Q33ipl3bs27Manager@l
/* 813607C0 0002EBC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 813607C4 0002EBC4  7C 7F 1B 78 */	mr r31, r3
/* 813607C8 0002EBC8  90 A3 00 00 */	stw r5, 0x0(r3)
/* 813607CC 0002EBCC  38 A0 00 20 */	li r5, 0x20
/* 813607D0 0002EBD0  90 E3 00 04 */	stw r7, 0x4(r3)
/* 813607D4 0002EBD4  90 C3 00 08 */	stw r6, 0x8(r3)
/* 813607D8 0002EBD8  98 E3 00 0C */	stb r7, 0xc(r3)
/* 813607DC 0002EBDC  98 03 00 0D */	stb r0, 0xd(r3)
/* 813607E0 0002EBE0  98 03 00 0E */	stb r0, 0xe(r3)
/* 813607E4 0002EBE4  98 03 00 0F */	stb r0, 0xf(r3)
/* 813607E8 0002EBE8  98 03 00 10 */	stb r0, 0x10(r3)
/* 813607EC 0002EBEC  98 03 00 11 */	stb r0, 0x11(r3)
/* 813607F0 0002EBF0  90 03 00 18 */	stw r0, 0x18(r3)
/* 813607F4 0002EBF4  90 C3 00 1C */	stw r6, 0x1c(r3)
/* 813607F8 0002EBF8  98 03 00 20 */	stb r0, 0x20(r3)
/* 813607FC 0002EBFC  90 03 00 24 */	stw r0, 0x24(r3)
/* 81360800 0002EC00  90 E3 00 30 */	stw r7, 0x30(r3)
/* 81360804 0002EC04  90 03 00 34 */	stw r0, 0x34(r3)
/* 81360808 0002EC08  3C 60 00 08 */	lis r3, 0x8
/* 8136080C 0002EC0C  48 29 78 C9 */	bl __nwa__FUlPQ23EGG4Heapi
/* 81360810 0002EC10  90 7F 00 14 */	stw r3, 0x14(r31)
/* 81360814 0002EC14  3C 80 00 08 */	lis r4, 0x8
/* 81360818 0002EC18  48 01 AB 85 */	bl BS2SetBannerBuffer
/* 8136081C 0002EC1C  7F E3 FB 78 */	mr r3, r31
/* 81360820 0002EC20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81360824 0002EC24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81360828 0002EC28  7C 08 03 A6 */	mtlr r0
/* 8136082C 0002EC2C  38 21 00 10 */	addi r1, r1, 0x10
/* 81360830 0002EC30  4E 80 00 20 */	blr
.endfn __ct__Q33ipl3bs27ManagerFPQ23EGG4Heap

# .text:0x94 | 0x81360834 | size: 0x64
# ipl::bs2::Manager::~Manager()
.fn __dt__Q33ipl3bs27ManagerFv, global
/* 81360834 0002EC34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81360838 0002EC38  7C 08 02 A6 */	mflr r0
/* 8136083C 0002EC3C  2C 03 00 00 */	cmpwi r3, 0x0
/* 81360840 0002EC40  90 01 00 14 */	stw r0, 0x14(r1)
/* 81360844 0002EC44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81360848 0002EC48  7C 9F 23 78 */	mr r31, r4
/* 8136084C 0002EC4C  93 C1 00 08 */	stw r30, 0x8(r1)
/* 81360850 0002EC50  7C 7E 1B 78 */	mr r30, r3
/* 81360854 0002EC54  41 82 00 28 */	beq .L_8136087C
/* 81360858 0002EC58  3C 80 81 64 */	lis r4, __vt__Q33ipl3bs27Manager@ha
/* 8136085C 0002EC5C  38 84 98 80 */	addi r4, r4, __vt__Q33ipl3bs27Manager@l
/* 81360860 0002EC60  90 83 00 00 */	stw r4, 0x0(r3)
/* 81360864 0002EC64  80 63 00 14 */	lwz r3, 0x14(r3)
/* 81360868 0002EC68  48 29 78 85 */	bl __dla__FPv
/* 8136086C 0002EC6C  2C 1F 00 00 */	cmpwi r31, 0x0
/* 81360870 0002EC70  40 81 00 0C */	ble .L_8136087C
/* 81360874 0002EC74  7F C3 F3 78 */	mr r3, r30
/* 81360878 0002EC78  48 29 78 6D */	bl __dl__FPv
.L_8136087C:
/* 8136087C 0002EC7C  7F C3 F3 78 */	mr r3, r30
/* 81360880 0002EC80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81360884 0002EC84  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81360888 0002EC88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136088C 0002EC8C  7C 08 03 A6 */	mtlr r0
/* 81360890 0002EC90  38 21 00 10 */	addi r1, r1, 0x10
/* 81360894 0002EC94  4E 80 00 20 */	blr
.endfn __dt__Q33ipl3bs27ManagerFv

# .text:0xF8 | 0x81360898 | size: 0x10C
# ipl::bs2::Manager::update()
.fn update__Q33ipl3bs27ManagerFv, global
/* 81360898 0002EC98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136089C 0002EC9C  7C 08 02 A6 */	mflr r0
/* 813608A0 0002ECA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 813608A4 0002ECA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 813608A8 0002ECA8  93 C1 00 08 */	stw r30, 0x8(r1)
/* 813608AC 0002ECAC  7C 7E 1B 78 */	mr r30, r3
/* 813608B0 0002ECB0  80 83 00 04 */	lwz r4, 0x4(r3)
/* 813608B4 0002ECB4  38 04 FF F7 */	subi r0, r4, 0x9
/* 813608B8 0002ECB8  28 00 00 01 */	cmplwi r0, 0x1
/* 813608BC 0002ECBC  41 81 00 0C */	bgt .L_813608C8
/* 813608C0 0002ECC0  7C 83 23 78 */	mr r3, r4
/* 813608C4 0002ECC4  48 00 00 C8 */	b .L_8136098C
.L_813608C8:
/* 813608C8 0002ECC8  88 03 00 0F */	lbz r0, 0xf(r3)
/* 813608CC 0002ECCC  2C 00 00 00 */	cmpwi r0, 0x0
/* 813608D0 0002ECD0  41 82 00 34 */	beq .L_81360904
/* 813608D4 0002ECD4  3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813608D8 0002ECD8  38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813608DC 0002ECDC  88 04 02 BB */	lbz r0, 0x2bb(r4)
/* 813608E0 0002ECE0  2C 00 00 00 */	cmpwi r0, 0x0
/* 813608E4 0002ECE4  40 82 00 20 */	bne .L_81360904
/* 813608E8 0002ECE8  48 01 A8 C5 */	bl BS2RestartStateMachine
/* 813608EC 0002ECEC  38 60 00 01 */	li r3, 0x1
/* 813608F0 0002ECF0  38 00 00 00 */	li r0, 0x0
/* 813608F4 0002ECF4  98 7E 00 0C */	stb r3, 0xc(r30)
/* 813608F8 0002ECF8  90 7E 00 04 */	stw r3, 0x4(r30)
/* 813608FC 0002ECFC  98 1E 00 0F */	stb r0, 0xf(r30)
/* 81360900 0002ED00  48 00 00 88 */	b .L_81360988
.L_81360904:
/* 81360904 0002ED04  88 03 00 0C */	lbz r0, 0xc(r3)
/* 81360908 0002ED08  2C 00 00 00 */	cmpwi r0, 0x0
/* 8136090C 0002ED0C  41 82 00 7C */	beq .L_81360988
/* 81360910 0002ED10  48 1C FF 75 */	bl OSDisableInterrupts
/* 81360914 0002ED14  7C 7F 1B 78 */	mr r31, r3
/* 81360918 0002ED18  48 01 CA A1 */	bl BS2Tick
/* 8136091C 0002ED1C  90 7E 00 08 */	stw r3, 0x8(r30)
/* 81360920 0002ED20  48 01 F8 B5 */	bl BS2Update_813801D4
/* 81360924 0002ED24  30 03 FF FF */	subic r0, r3, 0x1
/* 81360928 0002ED28  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 8136092C 0002ED2C  7C 00 19 10 */	subfe r0, r0, r3
/* 81360930 0002ED30  7F C3 F3 78 */	mr r3, r30
/* 81360934 0002ED34  98 1E 00 11 */	stb r0, 0x11(r30)
/* 81360938 0002ED38  48 00 02 E5 */	bl splashTick__Q33ipl3bs27ManagerF8BS2State
/* 8136093C 0002ED3C  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 81360940 0002ED40  7F C3 F3 78 */	mr r3, r30
/* 81360944 0002ED44  48 00 03 FD */	bl execTick__Q33ipl3bs27ManagerF8BS2State
/* 81360948 0002ED48  7F E3 FB 78 */	mr r3, r31
/* 8136094C 0002ED4C  48 1C FF 61 */	bl OSRestoreInterrupts
/* 81360950 0002ED50  7F C3 F3 78 */	mr r3, r30
/* 81360954 0002ED54  48 00 04 B1 */	bl updateTick__Q33ipl3bs27ManagerFv
/* 81360958 0002ED58  88 1E 00 10 */	lbz r0, 0x10(r30)
/* 8136095C 0002ED5C  2C 00 00 00 */	cmpwi r0, 0x0
/* 81360960 0002ED60  41 82 00 28 */	beq .L_81360988
/* 81360964 0002ED64  48 00 00 41 */	bl isRsrcLoaded__Q23ipl6SystemFv
/* 81360968 0002ED68  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136096C 0002ED6C  41 82 00 1C */	beq .L_81360988
/* 81360970 0002ED70  38 60 00 01 */	li r3, 0x1
/* 81360974 0002ED74  48 21 8D 91 */	bl fn_81579704
/* 81360978 0002ED78  38 00 00 00 */	li r0, 0x0
/* 8136097C 0002ED7C  7F C3 F3 78 */	mr r3, r30
/* 81360980 0002ED80  98 1E 00 0C */	stb r0, 0xc(r30)
/* 81360984 0002ED84  48 00 05 CD */	bl bootNewSystem__Q33ipl3bs27ManagerFv
.L_81360988:
/* 81360988 0002ED88  80 7E 00 04 */	lwz r3, 0x4(r30)
.L_8136098C:
/* 8136098C 0002ED8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81360990 0002ED90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81360994 0002ED94  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81360998 0002ED98  7C 08 03 A6 */	mtlr r0
/* 8136099C 0002ED9C  38 21 00 10 */	addi r1, r1, 0x10
/* 813609A0 0002EDA0  4E 80 00 20 */	blr
.endfn update__Q33ipl3bs27ManagerFv

# .text:0x204 | 0x813609A4 | size: 0x44
# ipl::System::isRsrcLoaded()
.fn isRsrcLoaded__Q23ipl6SystemFv, global
/* 813609A4 0002EDA4  3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813609A8 0002EDA8  38 60 00 00 */	li r3, 0x0
/* 813609AC 0002EDAC  38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813609B0 0002EDB0  88 04 02 B0 */	lbz r0, 0x2b0(r4)
/* 813609B4 0002EDB4  2C 00 00 00 */	cmpwi r0, 0x0
/* 813609B8 0002EDB8  4D 82 00 20 */	beqlr
/* 813609BC 0002EDBC  88 04 02 B6 */	lbz r0, 0x2b6(r4)
/* 813609C0 0002EDC0  2C 00 00 00 */	cmpwi r0, 0x0
/* 813609C4 0002EDC4  4D 82 00 20 */	beqlr
/* 813609C8 0002EDC8  88 04 02 B7 */	lbz r0, 0x2b7(r4)
/* 813609CC 0002EDCC  2C 00 00 00 */	cmpwi r0, 0x0
/* 813609D0 0002EDD0  4D 82 00 20 */	beqlr
/* 813609D4 0002EDD4  88 04 02 B8 */	lbz r0, 0x2b8(r4)
/* 813609D8 0002EDD8  2C 00 00 00 */	cmpwi r0, 0x0
/* 813609DC 0002EDDC  4D 82 00 20 */	beqlr
/* 813609E0 0002EDE0  38 60 00 01 */	li r3, 0x1
/* 813609E4 0002EDE4  4E 80 00 20 */	blr
.endfn isRsrcLoaded__Q23ipl6SystemFv

# .text:0x248 | 0x813609E8 | size: 0x34
# ipl::bs2::Manager::getDiskBannerBuffer(void**)
.fn getDiskBannerBuffer__Q33ipl3bs27ManagerFPPv, global
/* 813609E8 0002EDE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813609EC 0002EDEC  7C 08 02 A6 */	mflr r0
/* 813609F0 0002EDF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 813609F4 0002EDF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 813609F8 0002EDF8  7C 9F 23 78 */	mr r31, r4
/* 813609FC 0002EDFC  48 01 A9 BD */	bl BS2GetBannerBufferAddr
/* 81360A00 0002EE00  90 7F 00 00 */	stw r3, 0x0(r31)
/* 81360A04 0002EE04  48 01 A9 BD */	bl BS2GetBannerBufferLength
/* 81360A08 0002EE08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81360A0C 0002EE0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81360A10 0002EE10  7C 08 03 A6 */	mtlr r0
/* 81360A14 0002EE14  38 21 00 10 */	addi r1, r1, 0x10
/* 81360A18 0002EE18  4E 80 00 20 */	blr
.endfn getDiskBannerBuffer__Q33ipl3bs27ManagerFPPv

# .text:0x27C | 0x81360A1C | size: 0x9C
# ipl::bs2::Manager::startUpdate()
.fn startUpdate__Q33ipl3bs27ManagerFv, global
/* 81360A1C 0002EE1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81360A20 0002EE20  7C 08 02 A6 */	mflr r0
/* 81360A24 0002EE24  90 01 00 24 */	stw r0, 0x24(r1)
/* 81360A28 0002EE28  39 61 00 20 */	addi r11, r1, 0x20
/* 81360A2C 0002EE2C  48 29 8A 9D */	bl _savegpr_29
/* 81360A30 0002EE30  3B C0 00 01 */	li r30, 0x1
/* 81360A34 0002EE34  3B E0 00 00 */	li r31, 0x0
/* 81360A38 0002EE38  9B C3 00 0D */	stb r30, 0xd(r3)
/* 81360A3C 0002EE3C  7C 7D 1B 78 */	mr r29, r3
/* 81360A40 0002EE40  9B C3 00 20 */	stb r30, 0x20(r3)
/* 81360A44 0002EE44  93 E3 00 28 */	stw r31, 0x28(r3)
/* 81360A48 0002EE48  93 E3 00 2C */	stw r31, 0x2c(r3)
/* 81360A4C 0002EE4C  48 01 F7 71 */	bl BS2GetUpdateEntry
/* 81360A50 0002EE50  2C 03 00 00 */	cmpwi r3, 0x0
/* 81360A54 0002EE54  90 7D 00 24 */	stw r3, 0x24(r29)
/* 81360A58 0002EE58  41 82 00 40 */	beq .L_81360A98
/* 81360A5C 0002EE5C  93 FD 00 30 */	stw r31, 0x30(r29)
/* 81360A60 0002EE60  93 FD 00 34 */	stw r31, 0x34(r29)
/* 81360A64 0002EE64  48 01 F7 61 */	bl BS2GetUpdateEntryNum
/* 81360A68 0002EE68  7C 69 03 A6 */	mtctr r3
/* 81360A6C 0002EE6C  28 03 00 00 */	cmplwi r3, 0x0
/* 81360A70 0002EE70  40 81 00 30 */	ble .L_81360AA0
.L_81360A74:
/* 81360A74 0002EE74  80 1D 00 24 */	lwz r0, 0x24(r29)
/* 81360A78 0002EE78  80 9D 00 30 */	lwz r4, 0x30(r29)
/* 81360A7C 0002EE7C  7C 60 FA 14 */	add r3, r0, r31
/* 81360A80 0002EE80  3B FF 02 00 */	addi r31, r31, 0x200
/* 81360A84 0002EE84  80 03 00 08 */	lwz r0, 0x8(r3)
/* 81360A88 0002EE88  7C 04 02 14 */	add r0, r4, r0
/* 81360A8C 0002EE8C  90 1D 00 30 */	stw r0, 0x30(r29)
/* 81360A90 0002EE90  42 00 FF E4 */	bdnz .L_81360A74
/* 81360A94 0002EE94  48 00 00 0C */	b .L_81360AA0
.L_81360A98:
/* 81360A98 0002EE98  93 DD 00 30 */	stw r30, 0x30(r29)
/* 81360A9C 0002EE9C  93 FD 00 34 */	stw r31, 0x34(r29)
.L_81360AA0:
/* 81360AA0 0002EEA0  39 61 00 20 */	addi r11, r1, 0x20
/* 81360AA4 0002EEA4  48 29 8A 71 */	bl _restgpr_29
/* 81360AA8 0002EEA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 81360AAC 0002EEAC  7C 08 03 A6 */	mtlr r0
/* 81360AB0 0002EEB0  38 21 00 20 */	addi r1, r1, 0x20
/* 81360AB4 0002EEB4  4E 80 00 20 */	blr
.endfn startUpdate__Q33ipl3bs27ManagerFv

# .text:0x318 | 0x81360AB8 | size: 0xC
# ipl::bs2::Manager::reserveRVLGame()
.fn reserveRVLGame__Q33ipl3bs27ManagerFv, global
/* 81360AB8 0002EEB8  38 00 00 00 */	li r0, 0x0
/* 81360ABC 0002EEBC  98 03 00 0C */	stb r0, 0xc(r3)
/* 81360AC0 0002EEC0  4E 80 00 20 */	blr
.endfn reserveRVLGame__Q33ipl3bs27ManagerFv

# .text:0x324 | 0x81360AC4 | size: 0xC
# ipl::bs2::Manager::reserveGCGame()
.fn reserveGCGame__Q33ipl3bs27ManagerFv, global
/* 81360AC4 0002EEC4  38 00 00 00 */	li r0, 0x0
/* 81360AC8 0002EEC8  98 03 00 0C */	stb r0, 0xc(r3)
/* 81360ACC 0002EECC  4E 80 00 20 */	blr
.endfn reserveGCGame__Q33ipl3bs27ManagerFv

# .text:0x330 | 0x81360AD0 | size: 0x4
# ipl::bs2::Manager::startRVLGame()
.fn startRVLGame__Q33ipl3bs27ManagerFv, global
/* 81360AD0 0002EED0  48 00 04 80 */	b bootNewSystem__Q33ipl3bs27ManagerFv
.endfn startRVLGame__Q33ipl3bs27ManagerFv

# .text:0x334 | 0x81360AD4 | size: 0x4
# ipl::bs2::Manager::startGCGame()
.fn startGCGame__Q33ipl3bs27ManagerFv, global
/* 81360AD4 0002EED4  48 00 04 7C */	b bootNewSystem__Q33ipl3bs27ManagerFv
.endfn startGCGame__Q33ipl3bs27ManagerFv

# .text:0x338 | 0x81360AD8 | size: 0x14
# ipl::bs2::Manager::abort()
.fn abort__Q33ipl3bs27ManagerFv, global
/* 81360AD8 0002EED8  38 80 00 01 */	li r4, 0x1
/* 81360ADC 0002EEDC  38 00 00 00 */	li r0, 0x0
/* 81360AE0 0002EEE0  98 83 00 0E */	stb r4, 0xe(r3)
/* 81360AE4 0002EEE4  98 03 00 0F */	stb r0, 0xf(r3)
/* 81360AE8 0002EEE8  4E 80 00 20 */	blr
.endfn abort__Q33ipl3bs27ManagerFv

# .text:0x34C | 0x81360AEC | size: 0x14
# ipl::bs2::Manager::restart()
.fn restart__Q33ipl3bs27ManagerFv, global
/* 81360AEC 0002EEEC  38 80 00 00 */	li r4, 0x0
/* 81360AF0 0002EEF0  38 00 00 01 */	li r0, 0x1
/* 81360AF4 0002EEF4  98 83 00 0E */	stb r4, 0xe(r3)
/* 81360AF8 0002EEF8  98 03 00 0F */	stb r0, 0xf(r3)
/* 81360AFC 0002EEFC  4B FD 33 E4 */	b checkNandOverFlowFlagAsync__Q23ipl6SystemFv
.endfn restart__Q33ipl3bs27ManagerFv

# .text:0x360 | 0x81360B00 | size: 0x28
# ipl::bs2::Manager::checkParentalControl()
.fn checkParentalControl__Q33ipl3bs27ManagerFv, global
/* 81360B00 0002EF00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81360B04 0002EF04  7C 08 02 A6 */	mflr r0
/* 81360B08 0002EF08  90 01 00 14 */	stw r0, 0x14(r1)
/* 81360B0C 0002EF0C  48 01 F6 D1 */	bl BS2CheckParentalControl
/* 81360B10 0002EF10  30 03 FF FF */	subic r0, r3, 0x1
/* 81360B14 0002EF14  7C 60 19 10 */	subfe r3, r0, r3
/* 81360B18 0002EF18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81360B1C 0002EF1C  7C 08 03 A6 */	mtlr r0
/* 81360B20 0002EF20  38 21 00 10 */	addi r1, r1, 0x10
/* 81360B24 0002EF24  4E 80 00 20 */	blr
.endfn checkParentalControl__Q33ipl3bs27ManagerFv

# .text:0x388 | 0x81360B28 | size: 0x28
# ipl::bs2::Manager::getDiskInfo(char**, char**)
.fn getDiskInfo__Q33ipl3bs27ManagerFPPcPPc, global
/* 81360B28 0002EF28  2C 04 00 00 */	cmpwi r4, 0x0
/* 81360B2C 0002EF2C  41 82 00 0C */	beq .L_81360B38
/* 81360B30 0002EF30  3C 00 80 00 */	lis r0, 0x8000
/* 81360B34 0002EF34  90 04 00 00 */	stw r0, 0x0(r4)
.L_81360B38:
/* 81360B38 0002EF38  2C 05 00 00 */	cmpwi r5, 0x0
/* 81360B3C 0002EF3C  4D 82 00 20 */	beqlr
/* 81360B40 0002EF40  3C 60 80 00 */	lis r3, 0x8000
/* 81360B44 0002EF44  38 03 00 04 */	addi r0, r3, 0x4
/* 81360B48 0002EF48  90 05 00 00 */	stw r0, 0x0(r5)
/* 81360B4C 0002EF4C  4E 80 00 20 */	blr
.endfn getDiskInfo__Q33ipl3bs27ManagerFPPcPPc

# .text:0x3B0 | 0x81360B50 | size: 0x74
# ipl::bs2::Manager::isTitleAvailable(unsigned long long) const
.fn isTitleAvailable__Q33ipl3bs27ManagerCFUx, global
/* 81360B50 0002EF50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81360B54 0002EF54  7C 08 02 A6 */	mflr r0
/* 81360B58 0002EF58  38 60 00 00 */	li r3, 0x0
/* 81360B5C 0002EF5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 81360B60 0002EF60  38 00 00 00 */	li r0, 0x0
/* 81360B64 0002EF64  38 81 00 08 */	addi r4, r1, 0x8
/* 81360B68 0002EF68  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81360B6C 0002EF6C  7C BF 2B 78 */	mr r31, r5
/* 81360B70 0002EF70  93 C1 00 18 */	stw r30, 0x18(r1)
/* 81360B74 0002EF74  7C DE 33 78 */	mr r30, r6
/* 81360B78 0002EF78  90 01 00 08 */	stw r0, 0x8(r1)
/* 81360B7C 0002EF7C  48 01 A9 1D */	bl BS2GetLockedTitles
/* 81360B80 0002EF80  80 01 00 08 */	lwz r0, 0x8(r1)
/* 81360B84 0002EF84  2C 00 00 00 */	cmpwi r0, 0x0
/* 81360B88 0002EF88  41 82 00 20 */	beq .L_81360BA8
/* 81360B8C 0002EF8C  7F C4 F3 78 */	mr r4, r30
/* 81360B90 0002EF90  7F E3 FB 78 */	mr r3, r31
/* 81360B94 0002EF94  48 01 AB 61 */	bl BS2IsTitleAvailable
/* 81360B98 0002EF98  2C 03 00 00 */	cmpwi r3, 0x0
/* 81360B9C 0002EF9C  41 82 00 0C */	beq .L_81360BA8
/* 81360BA0 0002EFA0  38 60 00 01 */	li r3, 0x1
/* 81360BA4 0002EFA4  48 00 00 08 */	b .L_81360BAC
.L_81360BA8:
/* 81360BA8 0002EFA8  38 60 00 00 */	li r3, 0x0
.L_81360BAC:
/* 81360BAC 0002EFAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 81360BB0 0002EFB0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81360BB4 0002EFB4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81360BB8 0002EFB8  7C 08 03 A6 */	mtlr r0
/* 81360BBC 0002EFBC  38 21 00 20 */	addi r1, r1, 0x20
/* 81360BC0 0002EFC0  4E 80 00 20 */	blr
.endfn isTitleAvailable__Q33ipl3bs27ManagerCFUx

# .text:0x424 | 0x81360BC4 | size: 0x10
# ipl::bs2::Manager::getTicketFromNand(unsigned long long, ESTicketView*) const
.fn getTicketFromNand__Q33ipl3bs27ManagerCFUxP12ESTicketView, global
/* 81360BC4 0002EFC4  7C A3 2B 78 */	mr r3, r5
/* 81360BC8 0002EFC8  7C C4 33 78 */	mr r4, r6
/* 81360BCC 0002EFCC  7C E5 3B 78 */	mr r5, r7
/* 81360BD0 0002EFD0  48 01 AB D4 */	b BS2GetTicketFromNand
.endfn getTicketFromNand__Q33ipl3bs27ManagerCFUxP12ESTicketView

# .text:0x434 | 0x81360BD4 | size: 0x48
# ipl::bs2::Manager::loadLockedTitleAsync(unsigned long long, ESTicketView&)
.fn loadLockedTitleAsync__Q33ipl3bs27ManagerFUxR12ESTicketView, global
/* 81360BD4 0002EFD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81360BD8 0002EFD8  7C 08 02 A6 */	mflr r0
/* 81360BDC 0002EFDC  7C C4 33 78 */	mr r4, r6
/* 81360BE0 0002EFE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 81360BE4 0002EFE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81360BE8 0002EFE8  7C 7F 1B 78 */	mr r31, r3
/* 81360BEC 0002EFEC  7C A3 2B 78 */	mr r3, r5
/* 81360BF0 0002EFF0  7C E5 3B 78 */	mr r5, r7
/* 81360BF4 0002EFF4  48 01 AD 0D */	bl BS2StartLoadingTitle
/* 81360BF8 0002EFF8  2C 03 00 00 */	cmpwi r3, 0x0
/* 81360BFC 0002EFFC  41 82 00 0C */	beq .L_81360C08
/* 81360C00 0002F000  38 00 00 46 */	li r0, 0x46
/* 81360C04 0002F004  90 1F 00 1C */	stw r0, 0x1c(r31)
.L_81360C08:
/* 81360C08 0002F008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81360C0C 0002F00C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81360C10 0002F010  7C 08 03 A6 */	mtlr r0
/* 81360C14 0002F014  38 21 00 10 */	addi r1, r1, 0x10
/* 81360C18 0002F018  4E 80 00 20 */	blr
.endfn loadLockedTitleAsync__Q33ipl3bs27ManagerFUxR12ESTicketView

# .text:0x47C | 0x81360C1C | size: 0x124
# ipl::bs2::Manager::splashTick(BS2State)
.fn splashTick__Q33ipl3bs27ManagerF8BS2State, global
/* 81360C1C 0002F01C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81360C20 0002F020  7C 08 02 A6 */	mflr r0
/* 81360C24 0002F024  90 01 00 14 */	stw r0, 0x14(r1)
/* 81360C28 0002F028  38 04 FF DF */	subi r0, r4, 0x21
/* 81360C2C 0002F02C  28 00 00 27 */	cmplwi r0, 0x27
/* 81360C30 0002F030  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81360C34 0002F034  7C 7F 1B 78 */	mr r31, r3
/* 81360C38 0002F038  41 81 00 EC */	bgt .L_81360D24
/* 81360C3C 0002F03C  3C 80 81 64 */	lis r4, jumptable_816397E0@ha
/* 81360C40 0002F040  54 00 10 3A */	slwi r0, r0, 2
/* 81360C44 0002F044  38 84 97 E0 */	addi r4, r4, jumptable_816397E0@l
/* 81360C48 0002F048  7C 84 00 2E */	lwzx r4, r4, r0
/* 81360C4C 0002F04C  7C 89 03 A6 */	mtctr r4
/* 81360C50 0002F050  4E 80 04 20 */	bctr
.L_81360C54:
/* 81360C54 0002F054  38 80 00 34 */	li r4, 0x34
/* 81360C58 0002F058  38 00 00 01 */	li r0, 0x1
/* 81360C5C 0002F05C  90 83 00 1C */	stw r4, 0x1c(r3)
/* 81360C60 0002F060  90 03 00 04 */	stw r0, 0x4(r3)
/* 81360C64 0002F064  48 00 00 C8 */	b .L_81360D2C
.L_81360C68:
/* 81360C68 0002F068  48 01 A7 49 */	bl BS2IsBannerAvailable
/* 81360C6C 0002F06C  38 00 00 05 */	li r0, 0x5
/* 81360C70 0002F070  90 7F 00 18 */	stw r3, 0x18(r31)
/* 81360C74 0002F074  90 1F 00 04 */	stw r0, 0x4(r31)
/* 81360C78 0002F078  48 01 A7 51 */	bl BS2IsDiagDisc
/* 81360C7C 0002F07C  2C 03 00 00 */	cmpwi r3, 0x0
/* 81360C80 0002F080  41 82 00 AC */	beq .L_81360D2C
/* 81360C84 0002F084  38 00 00 01 */	li r0, 0x1
/* 81360C88 0002F088  98 1F 00 10 */	stb r0, 0x10(r31)
/* 81360C8C 0002F08C  48 00 00 A0 */	b .L_81360D2C
.L_81360C90:
/* 81360C90 0002F090  38 00 00 06 */	li r0, 0x6
/* 81360C94 0002F094  90 03 00 04 */	stw r0, 0x4(r3)
/* 81360C98 0002F098  48 00 00 94 */	b .L_81360D2C
.L_81360C9C:
/* 81360C9C 0002F09C  48 01 A7 15 */	bl BS2IsBannerAvailable
/* 81360CA0 0002F0A0  38 80 00 45 */	li r4, 0x45
/* 81360CA4 0002F0A4  38 00 00 05 */	li r0, 0x5
/* 81360CA8 0002F0A8  90 7F 00 18 */	stw r3, 0x18(r31)
/* 81360CAC 0002F0AC  90 9F 00 1C */	stw r4, 0x1c(r31)
/* 81360CB0 0002F0B0  90 1F 00 04 */	stw r0, 0x4(r31)
/* 81360CB4 0002F0B4  48 00 00 78 */	b .L_81360D2C
.L_81360CB8:
/* 81360CB8 0002F0B8  38 00 00 48 */	li r0, 0x48
/* 81360CBC 0002F0BC  90 03 00 1C */	stw r0, 0x1c(r3)
/* 81360CC0 0002F0C0  48 00 00 6C */	b .L_81360D2C
.L_81360CC4:
/* 81360CC4 0002F0C4  38 80 00 34 */	li r4, 0x34
/* 81360CC8 0002F0C8  38 00 00 07 */	li r0, 0x7
/* 81360CCC 0002F0CC  90 83 00 1C */	stw r4, 0x1c(r3)
/* 81360CD0 0002F0D0  90 03 00 04 */	stw r0, 0x4(r3)
/* 81360CD4 0002F0D4  48 00 00 58 */	b .L_81360D2C
.L_81360CD8:
/* 81360CD8 0002F0D8  38 00 00 03 */	li r0, 0x3
/* 81360CDC 0002F0DC  90 03 00 04 */	stw r0, 0x4(r3)
/* 81360CE0 0002F0E0  48 00 00 4C */	b .L_81360D2C
.L_81360CE4:
/* 81360CE4 0002F0E4  38 00 00 04 */	li r0, 0x4
/* 81360CE8 0002F0E8  90 03 00 04 */	stw r0, 0x4(r3)
/* 81360CEC 0002F0EC  48 00 00 40 */	b .L_81360D2C
.L_81360CF0:
/* 81360CF0 0002F0F0  38 80 00 00 */	li r4, 0x0
/* 81360CF4 0002F0F4  38 00 00 08 */	li r0, 0x8
/* 81360CF8 0002F0F8  98 83 00 0C */	stb r4, 0xc(r3)
/* 81360CFC 0002F0FC  90 03 00 04 */	stw r0, 0x4(r3)
/* 81360D00 0002F100  48 00 00 2C */	b .L_81360D2C
.L_81360D04:
/* 81360D04 0002F104  38 00 00 09 */	li r0, 0x9
/* 81360D08 0002F108  90 03 00 04 */	stw r0, 0x4(r3)
/* 81360D0C 0002F10C  48 00 00 20 */	b .L_81360D2C
.L_81360D10:
/* 81360D10 0002F110  38 80 00 34 */	li r4, 0x34
/* 81360D14 0002F114  38 00 00 0A */	li r0, 0xa
/* 81360D18 0002F118  90 83 00 1C */	stw r4, 0x1c(r3)
/* 81360D1C 0002F11C  90 03 00 04 */	stw r0, 0x4(r3)
/* 81360D20 0002F120  48 00 00 0C */	b .L_81360D2C
.L_81360D24:
/* 81360D24 0002F124  38 00 00 02 */	li r0, 0x2
/* 81360D28 0002F128  90 03 00 04 */	stw r0, 0x4(r3)
.L_81360D2C:
/* 81360D2C 0002F12C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81360D30 0002F130  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81360D34 0002F134  7C 08 03 A6 */	mtlr r0
/* 81360D38 0002F138  38 21 00 10 */	addi r1, r1, 0x10
/* 81360D3C 0002F13C  4E 80 00 20 */	blr
.endfn splashTick__Q33ipl3bs27ManagerF8BS2State

# .text:0x5A0 | 0x81360D40 | size: 0xC4
# ipl::bs2::Manager::execTick(BS2State)
.fn execTick__Q33ipl3bs27ManagerF8BS2State, global
/* 81360D40 0002F140  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81360D44 0002F144  7C 08 02 A6 */	mflr r0
/* 81360D48 0002F148  90 01 00 14 */	stw r0, 0x14(r1)
/* 81360D4C 0002F14C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81360D50 0002F150  7C 7F 1B 78 */	mr r31, r3
/* 81360D54 0002F154  88 03 00 0D */	lbz r0, 0xd(r3)
/* 81360D58 0002F158  2C 00 00 00 */	cmpwi r0, 0x0
/* 81360D5C 0002F15C  41 82 00 20 */	beq .L_81360D7C
/* 81360D60 0002F160  2C 04 00 21 */	cmpwi r4, 0x21
/* 81360D64 0002F164  40 82 00 0C */	bne .L_81360D70
/* 81360D68 0002F168  48 01 F4 3D */	bl BS2StartUpdate
/* 81360D6C 0002F16C  48 00 00 78 */	b .L_81360DE4
.L_81360D70:
/* 81360D70 0002F170  38 00 00 00 */	li r0, 0x0
/* 81360D74 0002F174  98 03 00 20 */	stb r0, 0x20(r3)
/* 81360D78 0002F178  48 00 00 6C */	b .L_81360DE4
.L_81360D7C:
/* 81360D7C 0002F17C  88 03 00 0E */	lbz r0, 0xe(r3)
/* 81360D80 0002F180  2C 00 00 00 */	cmpwi r0, 0x0
/* 81360D84 0002F184  41 82 00 60 */	beq .L_81360DE4
/* 81360D88 0002F188  2C 04 00 34 */	cmpwi r4, 0x34
/* 81360D8C 0002F18C  41 82 00 40 */	beq .L_81360DCC
/* 81360D90 0002F190  2C 04 00 35 */	cmpwi r4, 0x35
/* 81360D94 0002F194  41 82 00 38 */	beq .L_81360DCC
/* 81360D98 0002F198  2C 04 00 37 */	cmpwi r4, 0x37
/* 81360D9C 0002F19C  41 82 00 30 */	beq .L_81360DCC
/* 81360DA0 0002F1A0  2C 04 00 38 */	cmpwi r4, 0x38
/* 81360DA4 0002F1A4  41 82 00 28 */	beq .L_81360DCC
/* 81360DA8 0002F1A8  2C 04 00 42 */	cmpwi r4, 0x42
/* 81360DAC 0002F1AC  41 82 00 20 */	beq .L_81360DCC
/* 81360DB0 0002F1B0  2C 04 00 43 */	cmpwi r4, 0x43
/* 81360DB4 0002F1B4  41 82 00 18 */	beq .L_81360DCC
/* 81360DB8 0002F1B8  2C 04 00 44 */	cmpwi r4, 0x44
/* 81360DBC 0002F1BC  41 82 00 10 */	beq .L_81360DCC
/* 81360DC0 0002F1C0  38 04 FF C7 */	subi r0, r4, 0x39
/* 81360DC4 0002F1C4  28 00 00 02 */	cmplwi r0, 0x2
/* 81360DC8 0002F1C8  41 81 00 18 */	bgt .L_81360DE0
.L_81360DCC:
/* 81360DCC 0002F1CC  38 80 00 00 */	li r4, 0x0
/* 81360DD0 0002F1D0  38 00 00 08 */	li r0, 0x8
/* 81360DD4 0002F1D4  98 83 00 0C */	stb r4, 0xc(r3)
/* 81360DD8 0002F1D8  90 03 00 04 */	stw r0, 0x4(r3)
/* 81360DDC 0002F1DC  48 00 00 08 */	b .L_81360DE4
.L_81360DE0:
/* 81360DE0 0002F1E0  48 01 A4 49 */	bl BS2AbortStateMachine
.L_81360DE4:
/* 81360DE4 0002F1E4  38 00 00 00 */	li r0, 0x0
/* 81360DE8 0002F1E8  98 1F 00 0D */	stb r0, 0xd(r31)
/* 81360DEC 0002F1EC  98 1F 00 0E */	stb r0, 0xe(r31)
/* 81360DF0 0002F1F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81360DF4 0002F1F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81360DF8 0002F1F8  7C 08 03 A6 */	mtlr r0
/* 81360DFC 0002F1FC  38 21 00 10 */	addi r1, r1, 0x10
/* 81360E00 0002F200  4E 80 00 20 */	blr
.endfn execTick__Q33ipl3bs27ManagerF8BS2State

# .text:0x664 | 0x81360E04 | size: 0x14C
# ipl::bs2::Manager::updateTick()
.fn updateTick__Q33ipl3bs27ManagerFv, global
/* 81360E04 0002F204  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81360E08 0002F208  7C 08 02 A6 */	mflr r0
/* 81360E0C 0002F20C  90 01 00 24 */	stw r0, 0x24(r1)
/* 81360E10 0002F210  39 61 00 20 */	addi r11, r1, 0x20
/* 81360E14 0002F214  48 29 86 B5 */	bl _savegpr_29
/* 81360E18 0002F218  88 03 00 20 */	lbz r0, 0x20(r3)
/* 81360E1C 0002F21C  7C 7D 1B 78 */	mr r29, r3
/* 81360E20 0002F220  2C 00 00 00 */	cmpwi r0, 0x0
/* 81360E24 0002F224  41 82 01 14 */	beq .L_81360F38
/* 81360E28 0002F228  48 01 F3 75 */	bl BS2UpdateState
/* 81360E2C 0002F22C  2C 03 00 02 */	cmpwi r3, 0x2
/* 81360E30 0002F230  40 82 01 08 */	bne .L_81360F38
/* 81360E34 0002F234  3B E0 00 00 */	li r31, 0x0
/* 81360E38 0002F238  3B C0 00 00 */	li r30, 0x0
/* 81360E3C 0002F23C  93 FD 00 34 */	stw r31, 0x34(r29)
/* 81360E40 0002F240  48 00 00 78 */	b .L_81360EB8
.L_81360E44:
/* 81360E44 0002F244  48 01 F3 89 */	bl BS2GetCurrentEntry
/* 81360E48 0002F248  2C 03 00 00 */	cmpwi r3, 0x0
/* 81360E4C 0002F24C  41 82 00 4C */	beq .L_81360E98
/* 81360E50 0002F250  48 01 F3 7D */	bl BS2GetCurrentEntry
/* 81360E54 0002F254  80 1D 00 24 */	lwz r0, 0x24(r29)
/* 81360E58 0002F258  80 A3 00 50 */	lwz r5, 0x50(r3)
/* 81360E5C 0002F25C  7C 80 FA 14 */	add r4, r0, r31
/* 81360E60 0002F260  80 C3 00 54 */	lwz r6, 0x54(r3)
/* 81360E64 0002F264  80 04 00 50 */	lwz r0, 0x50(r4)
/* 81360E68 0002F268  80 64 00 54 */	lwz r3, 0x54(r4)
/* 81360E6C 0002F26C  7C 00 2A 78 */	xor r0, r0, r5
/* 81360E70 0002F270  7C 63 32 78 */	xor r3, r3, r6
/* 81360E74 0002F274  7C 60 03 79 */	or. r0, r3, r0
/* 81360E78 0002F278  40 82 00 20 */	bne .L_81360E98
/* 81360E7C 0002F27C  48 01 F3 51 */	bl BS2GetCurrentEntry
/* 81360E80 0002F280  80 1D 00 24 */	lwz r0, 0x24(r29)
/* 81360E84 0002F284  A0 83 00 58 */	lhz r4, 0x58(r3)
/* 81360E88 0002F288  7C 60 FA 14 */	add r3, r0, r31
/* 81360E8C 0002F28C  A0 03 00 58 */	lhz r0, 0x58(r3)
/* 81360E90 0002F290  7C 00 20 40 */	cmplw r0, r4
/* 81360E94 0002F294  41 82 00 30 */	beq .L_81360EC4
.L_81360E98:
/* 81360E98 0002F298  80 1D 00 24 */	lwz r0, 0x24(r29)
/* 81360E9C 0002F29C  3B DE 00 01 */	addi r30, r30, 0x1
/* 81360EA0 0002F2A0  80 9D 00 34 */	lwz r4, 0x34(r29)
/* 81360EA4 0002F2A4  7C 60 FA 14 */	add r3, r0, r31
/* 81360EA8 0002F2A8  3B FF 02 00 */	addi r31, r31, 0x200
/* 81360EAC 0002F2AC  80 03 00 08 */	lwz r0, 0x8(r3)
/* 81360EB0 0002F2B0  7C 04 02 14 */	add r0, r4, r0
/* 81360EB4 0002F2B4  90 1D 00 34 */	stw r0, 0x34(r29)
.L_81360EB8:
/* 81360EB8 0002F2B8  48 01 F3 0D */	bl BS2GetUpdateEntryNum
/* 81360EBC 0002F2BC  7C 1E 18 40 */	cmplw r30, r3
/* 81360EC0 0002F2C0  41 80 FF 84 */	blt .L_81360E44
.L_81360EC4:
/* 81360EC4 0002F2C4  48 01 F3 01 */	bl BS2GetUpdateEntryNum
/* 81360EC8 0002F2C8  7C 1E 18 40 */	cmplw r30, r3
/* 81360ECC 0002F2CC  40 82 00 18 */	bne .L_81360EE4
/* 81360ED0 0002F2D0  80 7D 00 30 */	lwz r3, 0x30(r29)
/* 81360ED4 0002F2D4  38 00 00 00 */	li r0, 0x0
/* 81360ED8 0002F2D8  98 1D 00 20 */	stb r0, 0x20(r29)
/* 81360EDC 0002F2DC  90 7D 00 34 */	stw r3, 0x34(r29)
/* 81360EE0 0002F2E0  48 00 00 58 */	b .L_81360F38
.L_81360EE4:
/* 81360EE4 0002F2E4  80 1D 00 28 */	lwz r0, 0x28(r29)
/* 81360EE8 0002F2E8  7C 1E 00 00 */	cmpw r30, r0
/* 81360EEC 0002F2EC  40 82 00 40 */	bne .L_81360F2C
/* 81360EF0 0002F2F0  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 81360EF4 0002F2F4  57 C0 48 2C */	slwi r0, r30, 9
/* 81360EF8 0002F2F8  80 7D 00 24 */	lwz r3, 0x24(r29)
/* 81360EFC 0002F2FC  38 84 00 01 */	addi r4, r4, 0x1
/* 81360F00 0002F300  90 9D 00 2C */	stw r4, 0x2c(r29)
/* 81360F04 0002F304  7C 63 02 14 */	add r3, r3, r0
/* 81360F08 0002F308  1C 04 44 00 */	mulli r0, r4, 0x4400
/* 81360F0C 0002F30C  80 63 00 08 */	lwz r3, 0x8(r3)
/* 81360F10 0002F310  7C 00 18 40 */	cmplw r0, r3
/* 81360F14 0002F314  41 81 00 08 */	bgt .L_81360F1C
/* 81360F18 0002F318  7C 03 03 78 */	mr r3, r0
.L_81360F1C:
/* 81360F1C 0002F31C  80 1D 00 34 */	lwz r0, 0x34(r29)
/* 81360F20 0002F320  7C 00 1A 14 */	add r0, r0, r3
/* 81360F24 0002F324  90 1D 00 34 */	stw r0, 0x34(r29)
/* 81360F28 0002F328  48 00 00 10 */	b .L_81360F38
.L_81360F2C:
/* 81360F2C 0002F32C  38 00 00 00 */	li r0, 0x0
/* 81360F30 0002F330  93 DD 00 28 */	stw r30, 0x28(r29)
/* 81360F34 0002F334  90 1D 00 2C */	stw r0, 0x2c(r29)
.L_81360F38:
/* 81360F38 0002F338  39 61 00 20 */	addi r11, r1, 0x20
/* 81360F3C 0002F33C  48 29 85 D9 */	bl _restgpr_29
/* 81360F40 0002F340  80 01 00 24 */	lwz r0, 0x24(r1)
/* 81360F44 0002F344  7C 08 03 A6 */	mtlr r0
/* 81360F48 0002F348  38 21 00 20 */	addi r1, r1, 0x20
/* 81360F4C 0002F34C  4E 80 00 20 */	blr
.endfn updateTick__Q33ipl3bs27ManagerFv

# .text:0x7B0 | 0x81360F50 | size: 0xF8
# ipl::bs2::Manager::bootNewSystem()
.fn bootNewSystem__Q33ipl3bs27ManagerFv, global
/* 81360F50 0002F350  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81360F54 0002F354  7C 08 02 A6 */	mflr r0
/* 81360F58 0002F358  90 01 00 14 */	stw r0, 0x14(r1)
/* 81360F5C 0002F35C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81360F60 0002F360  93 C1 00 08 */	stw r30, 0x8(r1)
/* 81360F64 0002F364  7C 7E 1B 78 */	mr r30, r3
/* 81360F68 0002F368  48 00 00 08 */	b .L_81360F70
.L_81360F6C:
/* 81360F6C 0002F36C  48 1D C0 7D */	bl VIWaitForRetrace
.L_81360F70:
/* 81360F70 0002F370  48 21 88 3D */	bl fn_815797AC
/* 81360F74 0002F374  2C 03 00 00 */	cmpwi r3, 0x0
/* 81360F78 0002F378  40 82 FF F4 */	bne .L_81360F6C
/* 81360F7C 0002F37C  4B FF FA 29 */	bl isRsrcLoaded__Q23ipl6SystemFv
/* 81360F80 0002F380  2C 03 00 00 */	cmpwi r3, 0x0
/* 81360F84 0002F384  41 82 00 34 */	beq .L_81360FB8
/* 81360F88 0002F388  3F E0 81 09 */	lis r31, sSystem__Q23ipl3snd@ha
/* 81360F8C 0002F38C  38 80 00 00 */	li r4, 0x0
/* 81360F90 0002F390  38 7F 99 2C */	addi r3, r31, sSystem__Q23ipl3snd@l
/* 81360F94 0002F394  48 00 AB 7D */	bl stopAllSound__Q33ipl3snd6SystemFi
/* 81360F98 0002F398  38 7F 99 2C */	addi r3, r31, sSystem__Q23ipl3snd@l
/* 81360F9C 0002F39C  38 80 00 00 */	li r4, 0x0
/* 81360FA0 0002F3A0  48 00 B2 59 */	bl stopBannerSound__Q33ipl3snd6SystemFi
/* 81360FA4 0002F3A4  38 7F 99 2C */	addi r3, r31, sSystem__Q23ipl3snd@l
/* 81360FA8 0002F3A8  81 83 00 00 */	lwz r12, 0x0(r3)
/* 81360FAC 0002F3AC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81360FB0 0002F3B0  7D 89 03 A6 */	mtctr r12
/* 81360FB4 0002F3B4  4E 80 04 21 */	bctrl
.L_81360FB8:
/* 81360FB8 0002F3B8  3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81360FBC 0002F3BC  38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81360FC0 0002F3C0  80 63 00 6C */	lwz r3, 0x6c(r3)
/* 81360FC4 0002F3C4  4B FD C4 9D */	bl closeContentsAll__Q33ipl4nand7ManagerFv
/* 81360FC8 0002F3C8  38 60 00 01 */	li r3, 0x1
/* 81360FCC 0002F3CC  48 1D D1 5D */	bl fn_8153E128
/* 81360FD0 0002F3D0  48 1D CF D1 */	bl fn_8153DFA0
/* 81360FD4 0002F3D4  48 1D C0 15 */	bl VIWaitForRetrace
.L_81360FD8:
/* 81360FD8 0002F3D8  48 1D 20 A9 */	bl fn_81533080
/* 81360FDC 0002F3DC  2C 03 00 00 */	cmpwi r3, 0x0
/* 81360FE0 0002F3E0  41 82 FF F8 */	beq .L_81360FD8
/* 81360FE4 0002F3E4  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 81360FE8 0002F3E8  2C 00 00 31 */	cmpwi r0, 0x31
/* 81360FEC 0002F3EC  40 82 00 0C */	bne .L_81360FF8
/* 81360FF0 0002F3F0  48 01 AD 75 */	bl BS2StartGame
/* 81360FF4 0002F3F4  48 00 00 3C */	b .L_81361030
.L_81360FF8:
/* 81360FF8 0002F3F8  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 81360FFC 0002F3FC  2C 00 00 32 */	cmpwi r0, 0x32
/* 81361000 0002F400  40 82 00 0C */	bne .L_8136100C
/* 81361004 0002F404  48 01 B3 85 */	bl BS2StartGCGame
/* 81361008 0002F408  48 00 00 28 */	b .L_81361030
.L_8136100C:
/* 8136100C 0002F40C  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 81361010 0002F410  2C 00 00 41 */	cmpwi r0, 0x41
/* 81361014 0002F414  40 82 00 0C */	bne .L_81361020
/* 81361018 0002F418  48 01 F8 89 */	bl OSReturnToMenu
/* 8136101C 0002F41C  48 00 00 14 */	b .L_81361030
.L_81361020:
/* 81361020 0002F420  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 81361024 0002F424  2C 00 00 48 */	cmpwi r0, 0x48
/* 81361028 0002F428  40 82 00 08 */	bne .L_81361030
/* 8136102C 0002F42C  48 01 AD 39 */	bl BS2StartGame
.L_81361030:
/* 81361030 0002F430  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81361034 0002F434  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81361038 0002F438  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8136103C 0002F43C  7C 08 03 A6 */	mtlr r0
/* 81361040 0002F440  38 21 00 10 */	addi r1, r1, 0x10
/* 81361044 0002F444  4E 80 00 20 */	blr
.endfn bootNewSystem__Q33ipl3bs27ManagerFv

# 0x816397E0..0x81639890 | size: 0xB0
.data
.balign 8

# .data:0x0 | 0x816397E0 | size: 0xA0
.obj jumptable_816397E0, local
	.rel splashTick__Q33ipl3bs27ManagerF8BS2State, .L_81360CD8
	.rel splashTick__Q33ipl3bs27ManagerF8BS2State, .L_81360D24
	.rel splashTick__Q33ipl3bs27ManagerF8BS2State, .L_81360D24
	.rel splashTick__Q33ipl3bs27ManagerF8BS2State, .L_81360D24
	.rel splashTick__Q33ipl3bs27ManagerF8BS2State, .L_81360D24
	.rel splashTick__Q33ipl3bs27ManagerF8BS2State, .L_81360D24
	.rel splashTick__Q33ipl3bs27ManagerF8BS2State, .L_81360D24
	.rel splashTick__Q33ipl3bs27ManagerF8BS2State, .L_81360D24
	.rel splashTick__Q33ipl3bs27ManagerF8BS2State, .L_81360D24
	.rel splashTick__Q33ipl3bs27ManagerF8BS2State, .L_81360D24
	.rel splashTick__Q33ipl3bs27ManagerF8BS2State, .L_81360D24
	.rel splashTick__Q33ipl3bs27ManagerF8BS2State, .L_81360D24
	.rel splashTick__Q33ipl3bs27ManagerF8BS2State, .L_81360D24
	.rel splashTick__Q33ipl3bs27ManagerF8BS2State, .L_81360D24
	.rel splashTick__Q33ipl3bs27ManagerF8BS2State, .L_81360D24
	.rel splashTick__Q33ipl3bs27ManagerF8BS2State, .L_81360D24
	.rel splashTick__Q33ipl3bs27ManagerF8BS2State, .L_81360C68
	.rel splashTick__Q33ipl3bs27ManagerF8BS2State, .L_81360C90
	.rel splashTick__Q33ipl3bs27ManagerF8BS2State, .L_81360D24
	.rel splashTick__Q33ipl3bs27ManagerF8BS2State, .L_81360C54
	.rel splashTick__Q33ipl3bs27ManagerF8BS2State, .L_81360C54
	.rel splashTick__Q33ipl3bs27ManagerF8BS2State, .L_81360D24
	.rel splashTick__Q33ipl3bs27ManagerF8BS2State, .L_81360D24
	.rel splashTick__Q33ipl3bs27ManagerF8BS2State, .L_81360CC4
	.rel splashTick__Q33ipl3bs27ManagerF8BS2State, .L_81360D10
	.rel splashTick__Q33ipl3bs27ManagerF8BS2State, .L_81360D04
	.rel splashTick__Q33ipl3bs27ManagerF8BS2State, .L_81360CC4
	.rel splashTick__Q33ipl3bs27ManagerF8BS2State, .L_81360D24
	.rel splashTick__Q33ipl3bs27ManagerF8BS2State, .L_81360D24
	.rel splashTick__Q33ipl3bs27ManagerF8BS2State, .L_81360D24
	.rel splashTick__Q33ipl3bs27ManagerF8BS2State, .L_81360D24
	.rel splashTick__Q33ipl3bs27ManagerF8BS2State, .L_81360CF0
	.rel splashTick__Q33ipl3bs27ManagerF8BS2State, .L_81360CE4
	.rel splashTick__Q33ipl3bs27ManagerF8BS2State, .L_81360D24
	.rel splashTick__Q33ipl3bs27ManagerF8BS2State, .L_81360D24
	.rel splashTick__Q33ipl3bs27ManagerF8BS2State, .L_81360CC4
	.rel splashTick__Q33ipl3bs27ManagerF8BS2State, .L_81360C9C
	.rel splashTick__Q33ipl3bs27ManagerF8BS2State, .L_81360D24
	.rel splashTick__Q33ipl3bs27ManagerF8BS2State, .L_81360D24
	.rel splashTick__Q33ipl3bs27ManagerF8BS2State, .L_81360CB8
.endobj jumptable_816397E0

# .data:0xA0 | 0x81639880 | size: 0x10
# ipl::bs2::Manager::__vtable
.obj __vt__Q33ipl3bs27Manager, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl3bs27ManagerFv
	.4byte 0x00000000
.endobj __vt__Q33ipl3bs27Manager
