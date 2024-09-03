.include "macros.inc"
.file "iplResetHandler.cpp"

# 0x813567FC..0x81356D4C | size: 0x550
.text
.balign 4

# .text:0x0 | 0x813567FC | size: 0x94
# ipl::ResetHandler::ResetHandler(EGG::Heap*)
.fn __ct__Q23ipl12ResetHandlerFPQ23EGG4Heap, global
/* 813567FC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81356800 | 7C 08 02 A6 */	mflr r0
/* 81356804 | 38 80 00 01 */	li r4, 0x1
/* 81356808 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8135680C | 38 00 00 00 */	li r0, 0x0
/* 81356810 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81356814 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81356818 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8135681C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81356820 | 7C 7E 1B 78 */	mr r30, r3
/* 81356824 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 81356828 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 8135682C | 90 03 00 08 */	stw r0, 0x8(r3)
/* 81356830 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 81356834 | 80 7F 00 C8 */	lwz r3, 0xc8(r31)
/* 81356838 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8135683C | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 81356840 | 7D 89 03 A6 */	mtctr r12
/* 81356844 | 4E 80 04 21 */	bctrl
/* 81356848 | 80 7F 00 C8 */	lwz r3, 0xc8(r31)
/* 8135684C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81356850 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81356854 | 7D 89 03 A6 */	mtctr r12
/* 81356858 | 4E 80 04 21 */	bctrl
/* 8135685C | 3C 60 81 35 */	lis r3, cbReset__Q23ipl12ResetHandlerFv@ha
/* 81356860 | 38 63 68 90 */	addi r3, r3, cbReset__Q23ipl12ResetHandlerFv@l
/* 81356864 | 48 1D FD C9 */	bl OSSetResetCallback
/* 81356868 | 3C 60 81 35 */	lis r3, cbPowerOff__Q23ipl12ResetHandlerFv@ha
/* 8135686C | 38 63 68 B4 */	addi r3, r3, cbPowerOff__Q23ipl12ResetHandlerFv@l
/* 81356870 | 48 1D FE 79 */	bl OSSetPowerCallback
/* 81356874 | 7F C3 F3 78 */	mr r3, r30
/* 81356878 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8135687C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81356880 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81356884 | 7C 08 03 A6 */	mtlr r0
/* 81356888 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8135688C | 4E 80 00 20 */	blr
.endfn __ct__Q23ipl12ResetHandlerFPQ23EGG4Heap

# .text:0x94 | 0x81356890 | size: 0x24
# ipl::ResetHandler::cbReset()
.fn cbReset__Q23ipl12ResetHandlerFv, global
/* 81356890 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81356894 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81356898 | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 8135689C | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813568A0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813568A4 | 4C 82 00 20 */	bnelr
/* 813568A8 | 38 00 00 01 */	li r0, 0x1
/* 813568AC | 90 03 00 04 */	stw r0, 0x4(r3)
/* 813568B0 | 4E 80 00 20 */	blr
.endfn cbReset__Q23ipl12ResetHandlerFv

# .text:0xB8 | 0x813568B4 | size: 0x24
# ipl::ResetHandler::cbPowerOff()
.fn cbPowerOff__Q23ipl12ResetHandlerFv, global
/* 813568B4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813568B8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813568BC | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 813568C0 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813568C4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813568C8 | 4C 82 00 20 */	bnelr
/* 813568CC | 38 00 00 02 */	li r0, 0x2
/* 813568D0 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 813568D4 | 4E 80 00 20 */	blr
.endfn cbPowerOff__Q23ipl12ResetHandlerFv

# .text:0xDC | 0x813568D8 | size: 0x18
# ipl::ResetHandler::reset()
.fn reset__Q23ipl12ResetHandlerFv, global
/* 813568D8 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813568DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813568E0 | 4C 82 00 20 */	bnelr
/* 813568E4 | 38 00 00 01 */	li r0, 0x1
/* 813568E8 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 813568EC | 4E 80 00 20 */	blr
.endfn reset__Q23ipl12ResetHandlerFv

# .text:0xF4 | 0x813568F0 | size: 0x14
# ipl::ResetHandler::check()
.fn check__Q23ipl12ResetHandlerFv, global
/* 813568F0 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813568F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813568F8 | 4D 82 00 20 */	beqlr
/* 813568FC | 4B FD EA 4C */	b reset_run__Q23ipl6SystemFv
/* 81356900 | 4E 80 00 20 */	blr
.endfn check__Q23ipl12ResetHandlerFv

# .text:0x108 | 0x81356904 | size: 0x2FC
# ipl::ResetHandler::update()
.fn update__Q23ipl12ResetHandlerFv, global
/* 81356904 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81356908 | 7C 08 02 A6 */	mflr r0
/* 8135690C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81356910 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81356914 | 7C 7F 1B 78 */	mr r31, r3
/* 81356918 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8135691C | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81356920 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81356924 | 41 82 02 C4 */	beq .L_81356BE8
/* 81356928 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8135692C | 2C 00 00 03 */	cmpwi r0, 0x3
/* 81356930 | 41 82 01 F4 */	beq .L_81356B24
/* 81356934 | 40 80 00 10 */	bge .L_81356944
/* 81356938 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135693C | 41 82 00 14 */	beq .L_81356950
/* 81356940 | 48 00 02 A8 */	b .L_81356BE8
.L_81356944:
/* 81356944 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 81356948 | 40 80 02 A0 */	bge .L_81356BE8
/* 8135694C | 48 00 02 2C */	b .L_81356B78
.L_81356950:
/* 81356950 | 80 6D A7 38 */	lwz r3, m_handle__Q23ipl11TVRCManager@sda21(r0)
/* 81356954 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81356958 | 41 82 00 0C */	beq .L_81356964
/* 8135695C | 38 80 00 01 */	li r4, 0x1
/* 81356960 | 48 00 BD 5D */	bl resetProcessAsync__Q23ipl11TVRCManagerFi
.L_81356964:
/* 81356964 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81356968 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8135696C | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 81356970 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81356974 | 41 82 00 10 */	beq .L_81356984
/* 81356978 | 48 0B 40 B9 */	bl isResetAcceptable__Q33ipl5scene7ManagerFv
/* 8135697C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81356980 | 41 82 02 68 */	beq .L_81356BE8
.L_81356984:
/* 81356984 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81356988 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8135698C | 80 63 00 94 */	lwz r3, 0x94(r3)
/* 81356990 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81356994 | 41 82 00 10 */	beq .L_813569A4
/* 81356998 | 48 00 17 45 */	bl isResetAcceptable__Q33ipl8savedata7ManagerFv
/* 8135699C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813569A0 | 41 82 02 48 */	beq .L_81356BE8
.L_813569A4:
/* 813569A4 | 4B FD E1 6D */	bl isResetAcceptable__Q23ipl6SystemFv
/* 813569A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813569AC | 41 82 02 3C */	beq .L_81356BE8
/* 813569B0 | 80 6D A7 38 */	lwz r3, m_handle__Q23ipl11TVRCManager@sda21(r0)
/* 813569B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813569B8 | 41 82 00 10 */	beq .L_813569C8
/* 813569BC | 48 00 BD 09 */	bl waitResetProcessCompleted__Q23ipl11TVRCManagerFv
/* 813569C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813569C4 | 41 82 02 24 */	beq .L_81356BE8
.L_813569C8:
/* 813569C8 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813569CC | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813569D0 | 80 64 00 A4 */	lwz r3, 0xa4(r4)
/* 813569D4 | 80 63 03 34 */	lwz r3, 0x334(r3)
/* 813569D8 | 38 63 FF FB */	subi r3, r3, 0x5
/* 813569DC | 30 03 FF FF */	subic r0, r3, 0x1
/* 813569E0 | 7C 00 19 11 */	subfe. r0, r0, r3
/* 813569E4 | 40 82 00 20 */	bne .L_81356A04
/* 813569E8 | 80 64 00 64 */	lwz r3, 0x64(r4)
/* 813569EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813569F0 | 41 82 01 F8 */	beq .L_81356BE8
/* 813569F4 | 38 80 00 14 */	li r4, 0x14
/* 813569F8 | 48 0B 47 41 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813569FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81356A00 | 41 82 01 E8 */	beq .L_81356BE8
.L_81356A04:
/* 81356A04 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81356A08 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81356A0C | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 81356A10 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81356A14 | 41 82 00 0C */	beq .L_81356A20
/* 81356A18 | 38 00 00 00 */	li r0, 0x0
/* 81356A1C | 48 00 00 08 */	b .L_81356A24
.L_81356A20:
/* 81356A20 | 80 03 00 8C */	lwz r0, 0x8c(r3)
.L_81356A24:
/* 81356A24 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81356A28 | 41 82 00 70 */	beq .L_81356A98
/* 81356A2C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81356A30 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81356A34 | 88 03 02 BB */	lbz r0, 0x2bb(r3)
/* 81356A38 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81356A3C | 40 82 00 5C */	bne .L_81356A98
/* 81356A40 | 88 03 02 B2 */	lbz r0, 0x2b2(r3)
/* 81356A44 | 38 80 00 00 */	li r4, 0x0
/* 81356A48 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81356A4C | 41 82 00 14 */	beq .L_81356A60
/* 81356A50 | 88 03 02 B4 */	lbz r0, 0x2b4(r3)
/* 81356A54 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81356A58 | 41 82 00 08 */	beq .L_81356A60
/* 81356A5C | 38 80 00 01 */	li r4, 0x1
.L_81356A60:
/* 81356A60 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81356A64 | 41 82 00 34 */	beq .L_81356A98
/* 81356A68 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81356A6C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81356A70 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 81356A74 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81356A78 | 41 82 00 0C */	beq .L_81356A84
/* 81356A7C | 38 60 00 00 */	li r3, 0x0
/* 81356A80 | 48 00 00 08 */	b .L_81356A88
.L_81356A84:
/* 81356A84 | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_81356A88:
/* 81356A88 | 88 03 0A 31 */	lbz r0, 0xa31(r3)
/* 81356A8C | 7C 00 00 34 */	cntlzw r0, r0
/* 81356A90 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 81356A94 | 41 82 01 54 */	beq .L_81356BE8
.L_81356A98:
/* 81356A98 | 48 22 2D 15 */	bl WPADGetStatus
/* 81356A9C | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 81356AA0 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 81356AA4 | 80 7E 00 C8 */	lwz r3, 0xc8(r30)
/* 81356AA8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81356AAC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81356AB0 | 7D 89 03 A6 */	mtctr r12
/* 81356AB4 | 4E 80 04 21 */	bctrl
/* 81356AB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81356ABC | 40 82 00 20 */	bne .L_81356ADC
/* 81356AC0 | 80 7E 00 C8 */	lwz r3, 0xc8(r30)
/* 81356AC4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81356AC8 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81356ACC | 7D 89 03 A6 */	mtctr r12
/* 81356AD0 | 4E 80 04 21 */	bctrl
/* 81356AD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81356AD8 | 40 82 01 10 */	bne .L_81356BE8
.L_81356ADC:
/* 81356ADC | 38 00 00 03 */	li r0, 0x3
/* 81356AE0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81356AE4 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 81356AE8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81356AEC | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 81356AF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81356AF4 | 41 82 00 08 */	beq .L_81356AFC
/* 81356AF8 | 48 0B 3F B5 */	bl startResetting__Q33ipl5scene7ManagerFv
.L_81356AFC:
/* 81356AFC | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 81356B00 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81356B04 | 41 82 00 E4 */	beq .L_81356BE8
/* 81356B08 | 40 80 00 E0 */	bge .L_81356BE8
/* 81356B0C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81356B10 | 40 80 00 08 */	bge .L_81356B18
/* 81356B14 | 48 00 00 D4 */	b .L_81356BE8
.L_81356B18:
/* 81356B18 | 38 60 00 01 */	li r3, 0x1
/* 81356B1C | 48 22 2B E9 */	bl __WPADReconnect
/* 81356B20 | 48 00 00 C8 */	b .L_81356BE8
.L_81356B24:
/* 81356B24 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 81356B28 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 81356B2C | 80 7E 00 C8 */	lwz r3, 0xc8(r30)
/* 81356B30 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81356B34 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81356B38 | 7D 89 03 A6 */	mtctr r12
/* 81356B3C | 4E 80 04 21 */	bctrl
/* 81356B40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81356B44 | 40 82 00 A4 */	bne .L_81356BE8
/* 81356B48 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 81356B4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81356B50 | 41 82 00 10 */	beq .L_81356B60
/* 81356B54 | 48 0B 3F B9 */	bl isResetProcessDone__Q33ipl5scene7ManagerFv
/* 81356B58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81356B5C | 41 82 00 8C */	beq .L_81356BE8
.L_81356B60:
/* 81356B60 | 38 00 00 04 */	li r0, 0x4
/* 81356B64 | 38 60 00 01 */	li r3, 0x1
/* 81356B68 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 81356B6C | 48 1E 75 BD */	bl VISetBlack
/* 81356B70 | 48 1E 74 31 */	bl VIFlush
/* 81356B74 | 48 00 00 74 */	b .L_81356BE8
.L_81356B78:
/* 81356B78 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81356B7C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81356B80 | 41 82 00 50 */	beq .L_81356BD0
/* 81356B84 | 40 80 00 64 */	bge .L_81356BE8
/* 81356B88 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81356B8C | 40 80 00 08 */	bge .L_81356B94
/* 81356B90 | 48 00 00 58 */	b .L_81356BE8
.L_81356B94:
/* 81356B94 | 48 22 2C 19 */	bl WPADGetStatus
/* 81356B98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81356B9C | 40 82 00 4C */	bne .L_81356BE8
/* 81356BA0 | 38 60 00 01 */	li r3, 0x1
/* 81356BA4 | 48 1E 75 85 */	bl VISetBlack
/* 81356BA8 | 48 1E 73 F9 */	bl VIFlush
/* 81356BAC | 48 1E 64 3D */	bl VIWaitForRetrace
/* 81356BB0 | 48 1E 64 39 */	bl VIWaitForRetrace
/* 81356BB4 | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 81356BB8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81356BBC | 41 82 00 0C */	beq .L_81356BC8
/* 81356BC0 | 48 02 9C E1 */	bl OSReturnToMenu
/* 81356BC4 | 48 00 00 24 */	b .L_81356BE8
.L_81356BC8:
/* 81356BC8 | 48 02 99 75 */	bl OSRebootSystem
/* 81356BCC | 48 00 00 1C */	b .L_81356BE8
.L_81356BD0:
/* 81356BD0 | 38 60 00 01 */	li r3, 0x1
/* 81356BD4 | 48 1E 75 55 */	bl VISetBlack
/* 81356BD8 | 48 1E 73 C9 */	bl VIFlush
/* 81356BDC | 48 1E 64 0D */	bl VIWaitForRetrace
/* 81356BE0 | 48 1E 64 09 */	bl VIWaitForRetrace
/* 81356BE4 | 48 02 9A 1D */	bl OSShutdownSystem
.L_81356BE8:
/* 81356BE8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81356BEC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81356BF0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81356BF4 | 7C 08 03 A6 */	mtlr r0
/* 81356BF8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81356BFC | 4E 80 00 20 */	blr
.endfn update__Q23ipl12ResetHandlerFv

# .text:0x404 | 0x81356C00 | size: 0x4
# ipl::ResetHandler::cbFatalReset()
.fn cbFatalReset__Q23ipl12ResetHandlerFv, global
/* 81356C00 | 4E 80 00 20 */	blr
.endfn cbFatalReset__Q23ipl12ResetHandlerFv

# .text:0x408 | 0x81356C04 | size: 0x24
# ipl::ResetHandler::cbFatalPowerOff()
.fn cbFatalPowerOff__Q23ipl12ResetHandlerFv, global
/* 81356C04 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81356C08 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81356C0C | 80 63 00 9C */	lwz r3, 0x9c(r3)
/* 81356C10 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 81356C14 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81356C18 | 4C 82 00 20 */	bnelr
/* 81356C1C | 38 00 00 01 */	li r0, 0x1
/* 81356C20 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 81356C24 | 4E 80 00 20 */	blr
.endfn cbFatalPowerOff__Q23ipl12ResetHandlerFv

# .text:0x42C | 0x81356C28 | size: 0x34
# ipl::ResetHandler::setFatalResetCallback()
.fn setFatalResetCallback__Q23ipl12ResetHandlerFv, global
/* 81356C28 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81356C2C | 7C 08 02 A6 */	mflr r0
/* 81356C30 | 3C 60 81 35 */	lis r3, cbFatalReset__Q23ipl12ResetHandlerFv@ha
/* 81356C34 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81356C38 | 38 63 6C 00 */	addi r3, r3, cbFatalReset__Q23ipl12ResetHandlerFv@l
/* 81356C3C | 48 1D F9 F1 */	bl OSSetResetCallback
/* 81356C40 | 3C 60 81 35 */	lis r3, cbFatalPowerOff__Q23ipl12ResetHandlerFv@ha
/* 81356C44 | 38 63 6C 04 */	addi r3, r3, cbFatalPowerOff__Q23ipl12ResetHandlerFv@l
/* 81356C48 | 48 1D FA A1 */	bl OSSetPowerCallback
/* 81356C4C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81356C50 | 7C 08 03 A6 */	mtlr r0
/* 81356C54 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81356C58 | 4E 80 00 20 */	blr
.endfn setFatalResetCallback__Q23ipl12ResetHandlerFv

# .text:0x460 | 0x81356C5C | size: 0xF0
# ipl::ResetHandler::fatalUpdate()
.fn fatalUpdate__Q23ipl12ResetHandlerFv, global
/* 81356C5C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81356C60 | 7C 08 02 A6 */	mflr r0
/* 81356C64 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81356C68 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81356C6C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81356C70 | 7C 7E 1B 78 */	mr r30, r3
/* 81356C74 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 81356C78 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81356C7C | 41 82 00 64 */	beq .L_81356CE0
/* 81356C80 | 40 80 00 10 */	bge .L_81356C90
/* 81356C84 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81356C88 | 40 80 00 14 */	bge .L_81356C9C
/* 81356C8C | 48 00 00 A8 */	b .L_81356D34
.L_81356C90:
/* 81356C90 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 81356C94 | 40 80 00 A0 */	bge .L_81356D34
/* 81356C98 | 48 00 00 84 */	b .L_81356D1C
.L_81356C9C:
/* 81356C9C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81356CA0 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81356CA4 | 80 7F 00 C8 */	lwz r3, 0xc8(r31)
/* 81356CA8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81356CAC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81356CB0 | 7D 89 03 A6 */	mtctr r12
/* 81356CB4 | 4E 80 04 21 */	bctrl
/* 81356CB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81356CBC | 41 82 00 78 */	beq .L_81356D34
/* 81356CC0 | 80 7F 00 C8 */	lwz r3, 0xc8(r31)
/* 81356CC4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81356CC8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81356CCC | 7D 89 03 A6 */	mtctr r12
/* 81356CD0 | 4E 80 04 21 */	bctrl
/* 81356CD4 | 38 00 00 02 */	li r0, 0x2
/* 81356CD8 | 90 1E 00 0C */	stw r0, 0xc(r30)
/* 81356CDC | 48 00 00 58 */	b .L_81356D34
.L_81356CE0:
/* 81356CE0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81356CE4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81356CE8 | 80 63 00 C8 */	lwz r3, 0xc8(r3)
/* 81356CEC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81356CF0 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81356CF4 | 7D 89 03 A6 */	mtctr r12
/* 81356CF8 | 4E 80 04 21 */	bctrl
/* 81356CFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81356D00 | 40 82 00 34 */	bne .L_81356D34
/* 81356D04 | 38 60 00 01 */	li r3, 0x1
/* 81356D08 | 48 1E 74 21 */	bl VISetBlack
/* 81356D0C | 48 1E 72 95 */	bl VIFlush
/* 81356D10 | 38 00 00 03 */	li r0, 0x3
/* 81356D14 | 90 1E 00 0C */	stw r0, 0xc(r30)
/* 81356D18 | 48 00 00 1C */	b .L_81356D34
.L_81356D1C:
/* 81356D1C | 38 60 00 01 */	li r3, 0x1
/* 81356D20 | 48 1E 74 09 */	bl VISetBlack
/* 81356D24 | 48 1E 72 7D */	bl VIFlush
/* 81356D28 | 48 1E 62 C1 */	bl VIWaitForRetrace
/* 81356D2C | 48 1E 62 BD */	bl VIWaitForRetrace
/* 81356D30 | 48 02 98 D1 */	bl OSShutdownSystem
.L_81356D34:
/* 81356D34 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81356D38 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81356D3C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81356D40 | 7C 08 03 A6 */	mtlr r0
/* 81356D44 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81356D48 | 4E 80 00 20 */	blr
.endfn fatalUpdate__Q23ipl12ResetHandlerFv
