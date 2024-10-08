.include "macros.inc"
.file "RsoSystem.cpp"

# 0x81359A70..0x8135A590 | size: 0xB20
.text
.balign 4

# .text:0x0 | 0x81359A70 | size: 0x58
.fn IplRso_IsFirstCall, global
/* 81359A70 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81359A74 | 7C 08 02 A6 */	mflr r0
/* 81359A78 | 38 80 00 03 */	li r4, 0x3
/* 81359A7C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81359A80 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81359A84 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81359A88 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81359A8C | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81359A90 | 48 0B 16 A9 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81359A94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81359A98 | 41 82 00 0C */	beq .L_81359AA4
/* 81359A9C | 48 05 C4 CD */	bl isFirstCall__Q33ipl5scene12ChannelTitleCFv
/* 81359AA0 | 48 00 00 14 */	b .L_81359AB4
.L_81359AA4:
/* 81359AA4 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81359AA8 | 38 80 00 02 */	li r4, 0x2
/* 81359AAC | 48 0B 16 8D */	bl getScene__Q33ipl5scene7ManagerFi
/* 81359AB0 | 48 05 19 E9 */	bl isFirstCall__Q33ipl5scene13ChannelSelectCFv
.L_81359AB4:
/* 81359AB4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81359AB8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81359ABC | 7C 08 03 A6 */	mtlr r0
/* 81359AC0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81359AC4 | 4E 80 00 20 */	blr
.endfn IplRso_IsFirstCall

# .text:0x58 | 0x81359AC8 | size: 0x6C
.fn IplRso_GetExBufData, global
/* 81359AC8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81359ACC | 7C 08 02 A6 */	mflr r0
/* 81359AD0 | 38 80 00 03 */	li r4, 0x3
/* 81359AD4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81359AD8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81359ADC | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81359AE0 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81359AE4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81359AE8 | 7C 7E 1B 78 */	mr r30, r3
/* 81359AEC | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81359AF0 | 48 0B 16 49 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81359AF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81359AF8 | 41 82 00 10 */	beq .L_81359B08
/* 81359AFC | 7F C4 F3 78 */	mr r4, r30
/* 81359B00 | 48 05 C4 79 */	bl getRsoExBufData__Q33ipl5scene12ChannelTitleCFPv
/* 81359B04 | 48 00 00 18 */	b .L_81359B1C
.L_81359B08:
/* 81359B08 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81359B0C | 38 80 00 02 */	li r4, 0x2
/* 81359B10 | 48 0B 16 29 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81359B14 | 7F C4 F3 78 */	mr r4, r30
/* 81359B18 | 48 05 19 95 */	bl getRsoExBufData__Q33ipl5scene13ChannelSelectCFPv
.L_81359B1C:
/* 81359B1C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81359B20 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81359B24 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81359B28 | 7C 08 03 A6 */	mtlr r0
/* 81359B2C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81359B30 | 4E 80 00 20 */	blr
.endfn IplRso_GetExBufData

# .text:0xC4 | 0x81359B34 | size: 0x6C
.fn IplRso_SetExBufData, global
/* 81359B34 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81359B38 | 7C 08 02 A6 */	mflr r0
/* 81359B3C | 38 80 00 03 */	li r4, 0x3
/* 81359B40 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81359B44 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81359B48 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81359B4C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81359B50 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81359B54 | 7C 7E 1B 78 */	mr r30, r3
/* 81359B58 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81359B5C | 48 0B 15 DD */	bl getScene__Q33ipl5scene7ManagerFi
/* 81359B60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81359B64 | 41 82 00 10 */	beq .L_81359B74
/* 81359B68 | 7F C4 F3 78 */	mr r4, r30
/* 81359B6C | 48 05 C4 41 */	bl setRsoExBufData__Q33ipl5scene12ChannelTitleFPCv
/* 81359B70 | 48 00 00 18 */	b .L_81359B88
.L_81359B74:
/* 81359B74 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81359B78 | 38 80 00 02 */	li r4, 0x2
/* 81359B7C | 48 0B 15 BD */	bl getScene__Q33ipl5scene7ManagerFi
/* 81359B80 | 7F C4 F3 78 */	mr r4, r30
/* 81359B84 | 48 05 19 61 */	bl setRsoExBufData__Q33ipl5scene13ChannelSelectFPCv
.L_81359B88:
/* 81359B88 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81359B8C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81359B90 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81359B94 | 7C 08 03 A6 */	mtlr r0
/* 81359B98 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81359B9C | 4E 80 00 20 */	blr
.endfn IplRso_SetExBufData

# .text:0x130 | 0x81359BA0 | size: 0x6C
.fn IplRso_GetTitleDataPath, global
/* 81359BA0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81359BA4 | 7C 08 02 A6 */	mflr r0
/* 81359BA8 | 38 80 00 03 */	li r4, 0x3
/* 81359BAC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81359BB0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81359BB4 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81359BB8 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81359BBC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81359BC0 | 7C 7E 1B 78 */	mr r30, r3
/* 81359BC4 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81359BC8 | 48 0B 15 71 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81359BCC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81359BD0 | 41 82 00 10 */	beq .L_81359BE0
/* 81359BD4 | 7F C4 F3 78 */	mr r4, r30
/* 81359BD8 | 48 05 C4 05 */	bl getRsoTitleDataPath__Q33ipl5scene12ChannelTitleCFPc
/* 81359BDC | 48 00 00 18 */	b .L_81359BF4
.L_81359BE0:
/* 81359BE0 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81359BE4 | 38 80 00 02 */	li r4, 0x2
/* 81359BE8 | 48 0B 15 51 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81359BEC | 7F C4 F3 78 */	mr r4, r30
/* 81359BF0 | 48 05 19 29 */	bl getRsoTitleDataPath__Q33ipl5scene13ChannelSelectCFPc
.L_81359BF4:
/* 81359BF4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81359BF8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81359BFC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81359C00 | 7C 08 03 A6 */	mtlr r0
/* 81359C04 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81359C08 | 4E 80 00 20 */	blr
.endfn IplRso_GetTitleDataPath

# .text:0x19C | 0x81359C0C | size: 0x58
.fn IplRso_IsStartAnimFinished, global
/* 81359C0C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81359C10 | 7C 08 02 A6 */	mflr r0
/* 81359C14 | 38 80 00 03 */	li r4, 0x3
/* 81359C18 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81359C1C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81359C20 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81359C24 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81359C28 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81359C2C | 48 0B 15 0D */	bl getScene__Q33ipl5scene7ManagerFi
/* 81359C30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81359C34 | 41 82 00 0C */	beq .L_81359C40
/* 81359C38 | 48 05 C4 4D */	bl isStartAnimFinished__Q33ipl5scene12ChannelTitleCFv
/* 81359C3C | 48 00 00 14 */	b .L_81359C50
.L_81359C40:
/* 81359C40 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81359C44 | 38 80 00 02 */	li r4, 0x2
/* 81359C48 | 48 0B 14 F1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81359C4C | 48 05 19 6D */	bl isStartAnimFinished__Q33ipl5scene13ChannelSelectCFv
.L_81359C50:
/* 81359C50 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81359C54 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81359C58 | 7C 08 03 A6 */	mtlr r0
/* 81359C5C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81359C60 | 4E 80 00 20 */	blr
.endfn IplRso_IsStartAnimFinished

# .text:0x1F4 | 0x81359C64 | size: 0x40
.fn IplRso_AnimStart, global
/* 81359C64 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81359C68 | 7C 08 02 A6 */	mflr r0
/* 81359C6C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81359C70 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81359C74 | 48 00 04 95 */	bl IplRso_8135A108
/* 81359C78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81359C7C | 7C 7F 1B 78 */	mr r31, r3
/* 81359C80 | 41 82 00 10 */	beq .L_81359C90
/* 81359C84 | 48 00 8B ED */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 81359C88 | 38 00 00 01 */	li r0, 0x1
/* 81359C8C | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_81359C90:
/* 81359C90 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81359C94 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81359C98 | 7C 08 03 A6 */	mtlr r0
/* 81359C9C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81359CA0 | 4E 80 00 20 */	blr
.endfn IplRso_AnimStart

# .text:0x234 | 0x81359CA4 | size: 0x30
.fn IplRso_AnimRestart, global
/* 81359CA4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81359CA8 | 7C 08 02 A6 */	mflr r0
/* 81359CAC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81359CB0 | 48 00 04 59 */	bl IplRso_8135A108
/* 81359CB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81359CB8 | 41 82 00 0C */	beq .L_81359CC4
/* 81359CBC | 38 00 00 01 */	li r0, 0x1
/* 81359CC0 | 90 03 00 14 */	stw r0, 0x14(r3)
.L_81359CC4:
/* 81359CC4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81359CC8 | 7C 08 03 A6 */	mtlr r0
/* 81359CCC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81359CD0 | 4E 80 00 20 */	blr
.endfn IplRso_AnimRestart

# .text:0x264 | 0x81359CD4 | size: 0x30
.fn IplRso_AnimStop, global
/* 81359CD4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81359CD8 | 7C 08 02 A6 */	mflr r0
/* 81359CDC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81359CE0 | 48 00 04 29 */	bl IplRso_8135A108
/* 81359CE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81359CE8 | 41 82 00 0C */	beq .L_81359CF4
/* 81359CEC | 38 00 00 00 */	li r0, 0x0
/* 81359CF0 | 90 03 00 14 */	stw r0, 0x14(r3)
.L_81359CF4:
/* 81359CF4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81359CF8 | 7C 08 03 A6 */	mtlr r0
/* 81359CFC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81359D00 | 4E 80 00 20 */	blr
.endfn IplRso_AnimStop

# .text:0x294 | 0x81359D04 | size: 0x40
.fn IplRso_AnimIsPlaying, global
/* 81359D04 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81359D08 | 7C 08 02 A6 */	mflr r0
/* 81359D0C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81359D10 | 48 00 03 F9 */	bl IplRso_8135A108
/* 81359D14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81359D18 | 40 82 00 0C */	bne .L_81359D24
/* 81359D1C | 38 60 00 00 */	li r3, 0x0
/* 81359D20 | 48 00 00 14 */	b .L_81359D34
.L_81359D24:
/* 81359D24 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 81359D28 | 38 03 FF FF */	subi r0, r3, 0x1
/* 81359D2C | 7C 00 00 34 */	cntlzw r0, r0
/* 81359D30 | 54 03 D9 7E */	srwi r3, r0, 5
.L_81359D34:
/* 81359D34 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81359D38 | 7C 08 03 A6 */	mtlr r0
/* 81359D3C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81359D40 | 4E 80 00 20 */	blr
.endfn IplRso_AnimIsPlaying

# .text:0x2D4 | 0x81359D44 | size: 0x38
.fn IplRso_AnimSetMaxFrame, global
/* 81359D44 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81359D48 | 7C 08 02 A6 */	mflr r0
/* 81359D4C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81359D50 | DB E1 00 08 */	stfd f31, 0x8(r1)
/* 81359D54 | FF E0 08 90 */	fmr f31, f1
/* 81359D58 | 48 00 03 B1 */	bl IplRso_8135A108
/* 81359D5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81359D60 | 41 82 00 08 */	beq .L_81359D68
/* 81359D64 | D3 E3 00 04 */	stfs f31, 0x4(r3)
.L_81359D68:
/* 81359D68 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81359D6C | CB E1 00 08 */	lfd f31, 0x8(r1)
/* 81359D70 | 7C 08 03 A6 */	mtlr r0
/* 81359D74 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81359D78 | 4E 80 00 20 */	blr
.endfn IplRso_AnimSetMaxFrame

# .text:0x30C | 0x81359D7C | size: 0x38
.fn IplRso_AnimSetMinFrame, global
/* 81359D7C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81359D80 | 7C 08 02 A6 */	mflr r0
/* 81359D84 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81359D88 | DB E1 00 08 */	stfd f31, 0x8(r1)
/* 81359D8C | FF E0 08 90 */	fmr f31, f1
/* 81359D90 | 48 00 03 79 */	bl IplRso_8135A108
/* 81359D94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81359D98 | 41 82 00 08 */	beq .L_81359DA0
/* 81359D9C | D3 E3 00 08 */	stfs f31, 0x8(r3)
.L_81359DA0:
/* 81359DA0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81359DA4 | CB E1 00 08 */	lfd f31, 0x8(r1)
/* 81359DA8 | 7C 08 03 A6 */	mtlr r0
/* 81359DAC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81359DB0 | 4E 80 00 20 */	blr
.endfn IplRso_AnimSetMinFrame

# .text:0x344 | 0x81359DB4 | size: 0x38
.fn IplRso_AnimSetCurrentFrame, global
/* 81359DB4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81359DB8 | 7C 08 02 A6 */	mflr r0
/* 81359DBC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81359DC0 | DB E1 00 08 */	stfd f31, 0x8(r1)
/* 81359DC4 | FF E0 08 90 */	fmr f31, f1
/* 81359DC8 | 48 00 03 41 */	bl IplRso_8135A108
/* 81359DCC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81359DD0 | 41 82 00 08 */	beq .L_81359DD8
/* 81359DD4 | D3 E3 00 0C */	stfs f31, 0xc(r3)
.L_81359DD8:
/* 81359DD8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81359DDC | CB E1 00 08 */	lfd f31, 0x8(r1)
/* 81359DE0 | 7C 08 03 A6 */	mtlr r0
/* 81359DE4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81359DE8 | 4E 80 00 20 */	blr
.endfn IplRso_AnimSetCurrentFrame

# .text:0x37C | 0x81359DEC | size: 0x38
.fn IplRso_AnimSetType, global
/* 81359DEC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81359DF0 | 7C 08 02 A6 */	mflr r0
/* 81359DF4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81359DF8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81359DFC | 7C 9F 23 78 */	mr r31, r4
/* 81359E00 | 48 00 03 09 */	bl IplRso_8135A108
/* 81359E04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81359E08 | 41 82 00 08 */	beq .L_81359E10
/* 81359E0C | 93 E3 00 18 */	stw r31, 0x18(r3)
.L_81359E10:
/* 81359E10 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81359E14 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81359E18 | 7C 08 03 A6 */	mtlr r0
/* 81359E1C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81359E20 | 4E 80 00 20 */	blr
.endfn IplRso_AnimSetType

# .text:0x3B4 | 0x81359E24 | size: 0x3C
.fn IplRso_AnimInitFrame, global
/* 81359E24 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81359E28 | 7C 08 02 A6 */	mflr r0
/* 81359E2C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81359E30 | DB E1 00 08 */	stfd f31, 0x8(r1)
/* 81359E34 | FF E0 08 90 */	fmr f31, f1
/* 81359E38 | 48 00 02 D1 */	bl IplRso_8135A108
/* 81359E3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81359E40 | 41 82 00 0C */	beq .L_81359E4C
/* 81359E44 | FC 20 F8 90 */	fmr f1, f31
/* 81359E48 | 48 00 FE 19 */	bl initAnmFrame__Q33ipl6layout8AnimatorFf
.L_81359E4C:
/* 81359E4C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81359E50 | CB E1 00 08 */	lfd f31, 0x8(r1)
/* 81359E54 | 7C 08 03 A6 */	mtlr r0
/* 81359E58 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81359E5C | 4E 80 00 20 */	blr
.endfn IplRso_AnimInitFrame

# .text:0x3F0 | 0x81359E60 | size: 0x34
.fn IplRso_AnimGetMaxFrame, global
/* 81359E60 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81359E64 | 7C 08 02 A6 */	mflr r0
/* 81359E68 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81359E6C | 48 00 02 9D */	bl IplRso_8135A108
/* 81359E70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81359E74 | 40 82 00 0C */	bne .L_81359E80
/* 81359E78 | C0 22 81 98 */	lfs f1, lbl_81694598@sda21(r0)
/* 81359E7C | 48 00 00 08 */	b .L_81359E84
.L_81359E80:
/* 81359E80 | C0 23 00 04 */	lfs f1, 0x4(r3)
.L_81359E84:
/* 81359E84 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81359E88 | 7C 08 03 A6 */	mtlr r0
/* 81359E8C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81359E90 | 4E 80 00 20 */	blr
.endfn IplRso_AnimGetMaxFrame

# .text:0x424 | 0x81359E94 | size: 0x34
.fn IplRso_AnimGetMinFrame, global
/* 81359E94 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81359E98 | 7C 08 02 A6 */	mflr r0
/* 81359E9C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81359EA0 | 48 00 02 69 */	bl IplRso_8135A108
/* 81359EA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81359EA8 | 40 82 00 0C */	bne .L_81359EB4
/* 81359EAC | C0 22 81 98 */	lfs f1, lbl_81694598@sda21(r0)
/* 81359EB0 | 48 00 00 08 */	b .L_81359EB8
.L_81359EB4:
/* 81359EB4 | C0 23 00 08 */	lfs f1, 0x8(r3)
.L_81359EB8:
/* 81359EB8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81359EBC | 7C 08 03 A6 */	mtlr r0
/* 81359EC0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81359EC4 | 4E 80 00 20 */	blr
.endfn IplRso_AnimGetMinFrame

# .text:0x458 | 0x81359EC8 | size: 0x34
.fn IplRso_AnimGetCurrentFrame, global
/* 81359EC8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81359ECC | 7C 08 02 A6 */	mflr r0
/* 81359ED0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81359ED4 | 48 00 02 35 */	bl IplRso_8135A108
/* 81359ED8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81359EDC | 40 82 00 0C */	bne .L_81359EE8
/* 81359EE0 | C0 22 81 98 */	lfs f1, lbl_81694598@sda21(r0)
/* 81359EE4 | 48 00 00 08 */	b .L_81359EEC
.L_81359EE8:
/* 81359EE8 | C0 23 00 0C */	lfs f1, 0xc(r3)
.L_81359EEC:
/* 81359EEC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81359EF0 | 7C 08 03 A6 */	mtlr r0
/* 81359EF4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81359EF8 | 4E 80 00 20 */	blr
.endfn IplRso_AnimGetCurrentFrame

# .text:0x48C | 0x81359EFC | size: 0x34
.fn IplRso_AnimGetType, global
/* 81359EFC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81359F00 | 7C 08 02 A6 */	mflr r0
/* 81359F04 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81359F08 | 48 00 02 01 */	bl IplRso_8135A108
/* 81359F0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81359F10 | 40 82 00 0C */	bne .L_81359F1C
/* 81359F14 | 38 60 00 00 */	li r3, 0x0
/* 81359F18 | 48 00 00 08 */	b .L_81359F20
.L_81359F1C:
/* 81359F1C | 80 63 00 18 */	lwz r3, 0x18(r3)
.L_81359F20:
/* 81359F20 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81359F24 | 7C 08 03 A6 */	mtlr r0
/* 81359F28 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81359F2C | 4E 80 00 20 */	blr
.endfn IplRso_AnimGetType

# .text:0x4C0 | 0x81359F30 | size: 0x88
.fn IplRso_AllocFromExHeap, global
/* 81359F30 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81359F34 | 7C 08 02 A6 */	mflr r0
/* 81359F38 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81359F3C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81359F40 | 48 29 F5 89 */	bl _savegpr_29
/* 81359F44 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81359F48 | 7C 9E 23 78 */	mr r30, r4
/* 81359F4C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81359F50 | 7C 7D 1B 78 */	mr r29, r3
/* 81359F54 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81359F58 | 38 80 00 03 */	li r4, 0x3
/* 81359F5C | 48 0B 11 DD */	bl getScene__Q33ipl5scene7ManagerFi
/* 81359F60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81359F64 | 41 82 00 14 */	beq .L_81359F78
/* 81359F68 | 7F A4 EB 78 */	mr r4, r29
/* 81359F6C | 7F C5 F3 78 */	mr r5, r30
/* 81359F70 | 48 05 C1 A9 */	bl allocFromRsoExHeap__Q33ipl5scene12ChannelTitleFUli
/* 81359F74 | 48 00 00 2C */	b .L_81359FA0
.L_81359F78:
/* 81359F78 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81359F7C | 38 80 00 02 */	li r4, 0x2
/* 81359F80 | 48 0B 11 B9 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81359F84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81359F88 | 41 82 00 14 */	beq .L_81359F9C
/* 81359F8C | 7F A4 EB 78 */	mr r4, r29
/* 81359F90 | 7F C5 F3 78 */	mr r5, r30
/* 81359F94 | 48 05 16 4D */	bl allocFromRsoExHeap__Q33ipl5scene13ChannelSelectFUli
/* 81359F98 | 48 00 00 08 */	b .L_81359FA0
.L_81359F9C:
/* 81359F9C | 38 60 00 00 */	li r3, 0x0
.L_81359FA0:
/* 81359FA0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81359FA4 | 48 29 F5 71 */	bl _restgpr_29
/* 81359FA8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81359FAC | 7C 08 03 A6 */	mtlr r0
/* 81359FB0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81359FB4 | 4E 80 00 20 */	blr
.endfn IplRso_AllocFromExHeap

# .text:0x548 | 0x81359FB8 | size: 0x74
.fn IplRso_FreeToExHeap, global
/* 81359FB8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81359FBC | 7C 08 02 A6 */	mflr r0
/* 81359FC0 | 38 80 00 03 */	li r4, 0x3
/* 81359FC4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81359FC8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81359FCC | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81359FD0 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81359FD4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81359FD8 | 7C 7E 1B 78 */	mr r30, r3
/* 81359FDC | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81359FE0 | 48 0B 11 59 */	bl getScene__Q33ipl5scene7ManagerFi
/* 81359FE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81359FE8 | 41 82 00 10 */	beq .L_81359FF8
/* 81359FEC | 7F C4 F3 78 */	mr r4, r30
/* 81359FF0 | 48 05 C1 49 */	bl freeToRsoExHeap__Q33ipl5scene12ChannelTitleFPv
/* 81359FF4 | 48 00 00 20 */	b .L_8135A014
.L_81359FF8:
/* 81359FF8 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81359FFC | 38 80 00 02 */	li r4, 0x2
/* 8135A000 | 48 0B 11 39 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8135A004 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135A008 | 41 82 00 0C */	beq .L_8135A014
/* 8135A00C | 7F C4 F3 78 */	mr r4, r30
/* 8135A010 | 48 05 15 E9 */	bl freeToRsoExHeap__Q33ipl5scene13ChannelSelectFPv
.L_8135A014:
/* 8135A014 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135A018 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8135A01C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8135A020 | 7C 08 03 A6 */	mtlr r0
/* 8135A024 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8135A028 | 4E 80 00 20 */	blr
.endfn IplRso_FreeToExHeap

# .text:0x5BC | 0x8135A02C | size: 0x68
.fn IplRso_GetAllocatableSizeForExHeap, global
/* 8135A02C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135A030 | 7C 08 02 A6 */	mflr r0
/* 8135A034 | 38 80 00 03 */	li r4, 0x3
/* 8135A038 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8135A03C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8135A040 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8135A044 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8135A048 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8135A04C | 48 0B 10 ED */	bl getScene__Q33ipl5scene7ManagerFi
/* 8135A050 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135A054 | 41 82 00 0C */	beq .L_8135A060
/* 8135A058 | 48 05 C1 0D */	bl getAllocatableSizeForRsoExHeap__Q33ipl5scene12ChannelTitleCFv
/* 8135A05C | 48 00 00 24 */	b .L_8135A080
.L_8135A060:
/* 8135A060 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8135A064 | 38 80 00 02 */	li r4, 0x2
/* 8135A068 | 48 0B 10 D1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8135A06C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135A070 | 41 82 00 0C */	beq .L_8135A07C
/* 8135A074 | 48 05 15 A9 */	bl getAllocatableSizeForRsoExHeap__Q33ipl5scene13ChannelSelectCFv
/* 8135A078 | 48 00 00 08 */	b .L_8135A080
.L_8135A07C:
/* 8135A07C | 38 60 00 00 */	li r3, 0x0
.L_8135A080:
/* 8135A080 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135A084 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8135A088 | 7C 08 03 A6 */	mtlr r0
/* 8135A08C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8135A090 | 4E 80 00 20 */	blr
.endfn IplRso_GetAllocatableSizeForExHeap

# .text:0x624 | 0x8135A094 | size: 0x74
.fn IplRso_DebugSetPollInterval, global
/* 8135A094 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135A098 | 7C 08 02 A6 */	mflr r0
/* 8135A09C | 38 80 00 03 */	li r4, 0x3
/* 8135A0A0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8135A0A4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8135A0A8 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8135A0AC | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8135A0B0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8135A0B4 | 7C 7E 1B 78 */	mr r30, r3
/* 8135A0B8 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8135A0BC | 48 0B 10 7D */	bl getScene__Q33ipl5scene7ManagerFi
/* 8135A0C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135A0C4 | 41 82 00 10 */	beq .L_8135A0D4
/* 8135A0C8 | 7F C4 F3 78 */	mr r4, r30
/* 8135A0CC | 48 05 C0 BD */	bl setDebugRsoInterval__Q33ipl5scene12ChannelTitleFUl
/* 8135A0D0 | 48 00 00 20 */	b .L_8135A0F0
.L_8135A0D4:
/* 8135A0D4 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8135A0D8 | 38 80 00 02 */	li r4, 0x2
/* 8135A0DC | 48 0B 10 5D */	bl getScene__Q33ipl5scene7ManagerFi
/* 8135A0E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135A0E4 | 41 82 00 0C */	beq .L_8135A0F0
/* 8135A0E8 | 7F C4 F3 78 */	mr r4, r30
/* 8135A0EC | 48 05 15 4D */	bl setDebugRsoInterval__Q33ipl5scene13ChannelSelectFUl
.L_8135A0F0:
/* 8135A0F0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135A0F4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8135A0F8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8135A0FC | 7C 08 03 A6 */	mtlr r0
/* 8135A100 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8135A104 | 4E 80 00 20 */	blr
.endfn IplRso_DebugSetPollInterval

# .text:0x698 | 0x8135A108 | size: 0x94
.fn IplRso_8135A108, global
/* 8135A108 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135A10C | 7C 08 02 A6 */	mflr r0
/* 8135A110 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135A114 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8135A118 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8135A11C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8135A120 | 7C 7E 1B 78 */	mr r30, r3
/* 8135A124 | 41 80 00 0C */	blt .L_8135A130
/* 8135A128 | 2C 03 00 10 */	cmpwi r3, 0x10
/* 8135A12C | 41 80 00 0C */	blt .L_8135A138
.L_8135A130:
/* 8135A130 | 38 60 00 00 */	li r3, 0x0
/* 8135A134 | 48 00 00 50 */	b .L_8135A184
.L_8135A138:
/* 8135A138 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8135A13C | 38 80 00 03 */	li r4, 0x3
/* 8135A140 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8135A144 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8135A148 | 48 0B 0F F1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8135A14C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135A150 | 41 82 00 10 */	beq .L_8135A160
/* 8135A154 | 7F C4 F3 78 */	mr r4, r30
/* 8135A158 | 48 05 BF 09 */	bl getRsoAnimator__Q33ipl5scene12ChannelTitleCFi
/* 8135A15C | 48 00 00 28 */	b .L_8135A184
.L_8135A160:
/* 8135A160 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8135A164 | 38 80 00 02 */	li r4, 0x2
/* 8135A168 | 48 0B 0F D1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8135A16C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135A170 | 40 82 00 0C */	bne .L_8135A17C
/* 8135A174 | 38 60 00 00 */	li r3, 0x0
/* 8135A178 | 48 00 00 0C */	b .L_8135A184
.L_8135A17C:
/* 8135A17C | 7F C4 F3 78 */	mr r4, r30
/* 8135A180 | 48 05 14 25 */	bl getRsoAnimator__Q33ipl5scene13ChannelSelectCFi
.L_8135A184:
/* 8135A184 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135A188 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8135A18C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8135A190 | 7C 08 03 A6 */	mtlr r0
/* 8135A194 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8135A198 | 4E 80 00 20 */	blr
.endfn IplRso_8135A108

# .text:0x72C | 0x8135A19C | size: 0x324
# IplRso_symbolMaker()
.fn IplRso_symbolMaker__Fv, global
/* 8135A19C | 94 21 FB E0 */	stwu r1, -0x420(r1)
/* 8135A1A0 | 7C 08 02 A6 */	mflr r0
/* 8135A1A4 | 38 60 00 00 */	li r3, 0x0
/* 8135A1A8 | 38 80 00 00 */	li r4, 0x0
/* 8135A1AC | 90 01 04 24 */	stw r0, 0x424(r1)
/* 8135A1B0 | 93 E1 04 1C */	stw r31, 0x41c(r1)
/* 8135A1B4 | 48 20 16 61 */	bl CXInitUncompContextLZ
/* 8135A1B8 | 38 60 00 00 */	li r3, 0x0
/* 8135A1BC | 48 20 20 B1 */	bl CXGetUncompressedSize
/* 8135A1C0 | 38 60 00 00 */	li r3, 0x0
/* 8135A1C4 | 38 80 00 00 */	li r4, 0x0
/* 8135A1C8 | 38 A0 00 00 */	li r5, 0x0
/* 8135A1CC | 48 20 19 55 */	bl CXReadUncompLZ
/* 8135A1D0 | 38 6D 81 E0 */	li r3, lbl_81696220@sda21
/* 8135A1D4 | 38 8D 81 E2 */	li r4, lbl_81696222@sda21
/* 8135A1D8 | 48 17 5D A9 */	bl VFMountDriveNANDFlash
/* 8135A1DC | 38 60 00 00 */	li r3, 0x0
/* 8135A1E0 | 38 8D 81 E2 */	li r4, lbl_81696222@sda21
/* 8135A1E4 | 38 A0 00 00 */	li r5, 0x0
/* 8135A1E8 | 48 17 6F 71 */	bl VFFileSearchFirst
/* 8135A1EC | 38 60 00 00 */	li r3, 0x0
/* 8135A1F0 | 48 17 70 39 */	bl VFFileSearchNext
/* 8135A1F4 | 38 61 03 2C */	addi r3, r1, 0x32c
/* 8135A1F8 | 38 80 00 01 */	li r4, 0x1
/* 8135A1FC | 48 1C 69 2D */	bl fn_81520B28
/* 8135A200 | 38 61 03 2C */	addi r3, r1, 0x32c
/* 8135A204 | 38 A1 00 18 */	addi r5, r1, 0x18
/* 8135A208 | 38 80 00 00 */	li r4, 0x0
/* 8135A20C | 48 1C 6D B5 */	bl GetTexCoord__Q34nw4r3lyt7PictureCFUlPQ34nw4r4math4VEC2
/* 8135A210 | 38 61 03 2C */	addi r3, r1, 0x32c
/* 8135A214 | 38 A1 00 18 */	addi r5, r1, 0x18
/* 8135A218 | 38 80 00 00 */	li r4, 0x0
/* 8135A21C | 48 1C 6D AD */	bl SetTexCoord__Q34nw4r3lyt7PictureFUlPCQ34nw4r4math4VEC2
/* 8135A220 | 38 61 03 2C */	addi r3, r1, 0x32c
/* 8135A224 | 48 1C 6D 95 */	bl fn_81520FB8
/* 8135A228 | 38 61 02 58 */	addi r3, r1, 0x258
/* 8135A22C | 38 80 00 00 */	li r4, 0x0
/* 8135A230 | 48 1C 48 5D */	bl fn_8151EA8C
/* 8135A234 | 38 61 02 58 */	addi r3, r1, 0x258
/* 8135A238 | 3B E0 00 00 */	li r31, 0x0
/* 8135A23C | 38 80 00 00 */	li r4, 0x0
/* 8135A240 | 48 1C 4A A9 */	bl AppendChild__Q34nw4r3lyt4PaneFPQ34nw4r3lyt4Pane
/* 8135A244 | 38 61 02 58 */	addi r3, r1, 0x258
/* 8135A248 | 38 80 00 00 */	li r4, 0x0
/* 8135A24C | 48 1C 4A ED */	bl fn_8151ED38
/* 8135A250 | 38 61 02 58 */	addi r3, r1, 0x258
/* 8135A254 | 38 80 00 00 */	li r4, 0x0
/* 8135A258 | 38 A0 00 00 */	li r5, 0x0
/* 8135A25C | 48 1C 4B 2D */	bl fn_8151ED88
/* 8135A260 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8135A264 | 38 61 02 58 */	addi r3, r1, 0x258
/* 8135A268 | 38 81 00 0C */	addi r4, r1, 0xc
/* 8135A26C | 38 A0 00 00 */	li r5, 0x0
/* 8135A270 | 48 1C 4B 69 */	bl fn_8151EDD8
/* 8135A274 | 38 61 02 58 */	addi r3, r1, 0x258
/* 8135A278 | 38 80 00 00 */	li r4, 0x0
/* 8135A27C | 48 1C 4B AD */	bl RemoveChild__Q34nw4r3lyt4PaneFPQ34nw4r3lyt4Pane
/* 8135A280 | 38 61 01 58 */	addi r3, r1, 0x158
/* 8135A284 | 38 A1 00 30 */	addi r5, r1, 0x30
/* 8135A288 | 38 80 00 00 */	li r4, 0x0
/* 8135A28C | 48 1C 73 B5 */	bl fn_81521640
/* 8135A290 | 38 61 00 58 */	addi r3, r1, 0x58
/* 8135A294 | 38 80 00 00 */	li r4, 0x0
/* 8135A298 | 38 A0 00 00 */	li r5, 0x0
/* 8135A29C | 38 C0 00 00 */	li r6, 0x0
/* 8135A2A0 | 48 1C 71 71 */	bl fn_81521410
/* 8135A2A4 | 38 61 00 58 */	addi r3, r1, 0x58
/* 8135A2A8 | 48 1C 84 AD */	bl fn_81522754
/* 8135A2AC | 38 61 00 08 */	addi r3, r1, 0x8
/* 8135A2B0 | 38 81 00 58 */	addi r4, r1, 0x58
/* 8135A2B4 | 38 A0 00 00 */	li r5, 0x0
/* 8135A2B8 | 48 00 02 09 */	bl GetTextColor__Q34nw4r3lyt7TextBoxCFUl
/* 8135A2BC | 38 61 00 58 */	addi r3, r1, 0x58
/* 8135A2C0 | 38 80 00 00 */	li r4, 0x0
/* 8135A2C4 | 48 1C 86 AD */	bl fn_81522970
/* 8135A2C8 | 88 01 01 54 */	lbz r0, 0x154(r1)
/* 8135A2CC | 38 A0 00 03 */	li r5, 0x3
/* 8135A2D0 | C0 02 81 98 */	lfs f0, lbl_81694598@sda21(r0)
/* 8135A2D4 | 38 60 00 60 */	li r3, 0x60
/* 8135A2D8 | 7C 00 2B D6 */	divw r0, r0, r5
/* 8135A2DC | 93 E1 01 4C */	stw r31, 0x14c(r1)
/* 8135A2E0 | D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8135A2E4 | D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8135A2E8 | D0 01 01 3C */	stfs f0, 0x13c(r1)
/* 8135A2EC | D0 01 01 40 */	stfs f0, 0x140(r1)
/* 8135A2F0 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 8135A2F4 | D0 01 01 44 */	stfs f0, 0x144(r1)
/* 8135A2F8 | 1C 00 00 03 */	mulli r0, r0, 0x3
/* 8135A2FC | D0 01 01 48 */	stfs f0, 0x148(r1)
/* 8135A300 | 54 04 06 3E */	clrlwi r4, r0, 24
/* 8135A304 | 7C 04 2B D6 */	divw r0, r4, r5
/* 8135A308 | 7C 00 29 D6 */	mullw r0, r0, r5
/* 8135A30C | 7C 00 20 50 */	subf r0, r0, r4
/* 8135A310 | 98 01 01 54 */	stb r0, 0x154(r1)
/* 8135A314 | 48 29 DD 89 */	bl __nw__FUl
/* 8135A318 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135A31C | 7C 7F 1B 78 */	mr r31, r3
/* 8135A320 | 41 82 00 0C */	beq .L_8135A32C
/* 8135A324 | 48 1B FB 71 */	bl "__ct__Q34nw4r2ut17TextWriterBase<w>Fv"
/* 8135A328 | 7C 7F 1B 78 */	mr r31, r3
.L_8135A32C:
/* 8135A32C | 38 61 00 40 */	addi r3, r1, 0x40
/* 8135A330 | 48 1B A8 89 */	bl fn_81514BB8
/* 8135A334 | 7F E3 FB 78 */	mr r3, r31
/* 8135A338 | 38 81 00 40 */	addi r4, r1, 0x40
/* 8135A33C | 48 1B CA E9 */	bl SetFont__Q34nw4r2ut10CharWriterFRCQ34nw4r2ut4Font
/* 8135A340 | C0 22 81 98 */	lfs f1, lbl_81694598@sda21(r0)
/* 8135A344 | 7F E3 FB 78 */	mr r3, r31
/* 8135A348 | FC 40 08 90 */	fmr f2, f1
/* 8135A34C | 48 1B D9 D9 */	bl fn_81517D24
/* 8135A350 | C0 22 81 98 */	lfs f1, lbl_81694598@sda21(r0)
/* 8135A354 | 7F E3 FB 78 */	mr r3, r31
/* 8135A358 | 48 1B D9 D9 */	bl fn_81517D30
/* 8135A35C | C0 22 81 98 */	lfs f1, lbl_81694598@sda21(r0)
/* 8135A360 | 7F E3 FB 78 */	mr r3, r31
/* 8135A364 | FC 40 08 90 */	fmr f2, f1
/* 8135A368 | 48 1B D9 E5 */	bl SetFontSize__Q34nw4r2ut10CharWriterFff
/* 8135A36C | C0 22 81 98 */	lfs f1, lbl_81694598@sda21(r0)
/* 8135A370 | 7F E3 FB 78 */	mr r3, r31
/* 8135A374 | 48 1B DA 9D */	bl fn_81517E10
/* 8135A378 | C0 22 81 98 */	lfs f1, lbl_81694598@sda21(r0)
/* 8135A37C | 7F E3 FB 78 */	mr r3, r31
/* 8135A380 | 48 1B FC E5 */	bl "SetLineSpace__Q34nw4r2ut17TextWriterBase<w>Ff"
/* 8135A384 | 7F E3 FB 78 */	mr r3, r31
/* 8135A388 | 48 1B FC ED */	bl fn_8151A074
/* 8135A38C | C0 22 81 98 */	lfs f1, lbl_81694598@sda21(r0)
/* 8135A390 | 7F E3 FB 78 */	mr r3, r31
/* 8135A394 | 48 1B FB AD */	bl fn_81519F40
/* 8135A398 | C0 22 81 98 */	lfs f1, lbl_81694598@sda21(r0)
/* 8135A39C | 7F E3 FB 78 */	mr r3, r31
/* 8135A3A0 | 48 1B FC CD */	bl "SetCharSpace__Q34nw4r2ut17TextWriterBase<w>Ff"
/* 8135A3A4 | 7F E3 FB 78 */	mr r3, r31
/* 8135A3A8 | 38 80 00 00 */	li r4, 0x0
/* 8135A3AC | 48 1B FC D9 */	bl fn_8151A084
/* 8135A3B0 | 7F E3 FB 78 */	mr r3, r31
/* 8135A3B4 | 38 80 00 00 */	li r4, 0x0
/* 8135A3B8 | 48 1B FC DD */	bl fn_8151A094
/* 8135A3BC | 7F E3 FB 78 */	mr r3, r31
/* 8135A3C0 | 48 1B FC DD */	bl fn_8151A09C
/* 8135A3C4 | 7F E3 FB 78 */	mr r3, r31
/* 8135A3C8 | 48 1B FC E5 */	bl fn_8151A0AC
/* 8135A3CC | 7F E3 FB 78 */	mr r3, r31
/* 8135A3D0 | 38 8D 81 E4 */	li r4, lbl_81696224@sda21
/* 8135A3D4 | 38 A0 00 00 */	li r5, 0x0
/* 8135A3D8 | 48 1B FC E9 */	bl fn_8151A0C0
/* 8135A3DC | 7F E3 FB 78 */	mr r3, r31
/* 8135A3E0 | 38 8D 81 EA */	li r4, lbl_8169622A@sda21
/* 8135A3E4 | 38 A0 00 00 */	li r5, 0x0
/* 8135A3E8 | 48 1B FC D9 */	bl fn_8151A0C0
/* 8135A3EC | 7F E3 FB 78 */	mr r3, r31
/* 8135A3F0 | 38 8D 81 EA */	li r4, lbl_8169622A@sda21
/* 8135A3F4 | 48 1B FF 69 */	bl fn_8151A35C
/* 8135A3F8 | 7F E3 FB 78 */	mr r3, r31
/* 8135A3FC | 38 8D 81 E4 */	li r4, lbl_81696224@sda21
/* 8135A400 | 38 A0 00 00 */	li r5, 0x0
/* 8135A404 | 48 1C 02 05 */	bl fn_8151A608
/* 8135A408 | 7F E3 FB 78 */	mr r3, r31
/* 8135A40C | 38 8D 81 EA */	li r4, lbl_8169622A@sda21
/* 8135A410 | 38 A0 00 00 */	li r5, 0x0
/* 8135A414 | 48 1C 01 F5 */	bl fn_8151A608
/* 8135A418 | 7F E3 FB 78 */	mr r3, r31
/* 8135A41C | 38 8D 81 EA */	li r4, lbl_8169622A@sda21
/* 8135A420 | 48 1C 04 85 */	bl fn_8151A8A4
/* 8135A424 | C0 02 81 98 */	lfs f0, lbl_81694598@sda21(r0)
/* 8135A428 | 7F E3 FB 78 */	mr r3, r31
/* 8135A42C | 38 81 00 20 */	addi r4, r1, 0x20
/* 8135A430 | 38 AD 81 E4 */	li r5, lbl_81696224@sda21
/* 8135A434 | D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8135A438 | 38 C0 00 00 */	li r6, 0x0
/* 8135A43C | D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8135A440 | D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8135A444 | D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8135A448 | 48 1C 07 09 */	bl "CalcStringRect__Q34nw4r2ut17TextWriterBase<w>CFPQ34nw4r2ut4RectPCwi"
/* 8135A44C | 7F E3 FB 78 */	mr r3, r31
/* 8135A450 | 38 81 00 20 */	addi r4, r1, 0x20
/* 8135A454 | 38 AD 81 EA */	li r5, lbl_8169622A@sda21
/* 8135A458 | 38 C0 00 00 */	li r6, 0x0
/* 8135A45C | 48 1C 06 F5 */	bl "CalcStringRect__Q34nw4r2ut17TextWriterBase<w>CFPQ34nw4r2ut4RectPCwi"
/* 8135A460 | 7F E3 FB 78 */	mr r3, r31
/* 8135A464 | 38 81 00 20 */	addi r4, r1, 0x20
/* 8135A468 | 38 AD 81 EA */	li r5, lbl_8169622A@sda21
/* 8135A46C | 48 1C 09 65 */	bl "CalcStringRect__Q34nw4r2ut17TextWriterBase<w>CFPQ34nw4r2ut4RectPCw"
/* 8135A470 | 38 61 00 40 */	addi r3, r1, 0x40
/* 8135A474 | 38 80 FF FF */	li r4, -0x1
/* 8135A478 | 48 1B A7 7D */	bl fn_81514BF4
/* 8135A47C | 38 61 00 58 */	addi r3, r1, 0x58
/* 8135A480 | 38 80 FF FF */	li r4, -0x1
/* 8135A484 | 48 1C 74 61 */	bl fn_815218E4
/* 8135A488 | 38 61 01 58 */	addi r3, r1, 0x158
/* 8135A48C | 38 80 FF FF */	li r4, -0x1
/* 8135A490 | 48 1C 74 55 */	bl fn_815218E4
/* 8135A494 | 38 61 02 58 */	addi r3, r1, 0x258
/* 8135A498 | 38 80 FF FF */	li r4, -0x1
/* 8135A49C | 48 1C 47 15 */	bl fn_8151EBB0
/* 8135A4A0 | 38 61 03 2C */	addi r3, r1, 0x32c
/* 8135A4A4 | 38 80 FF FF */	li r4, -0x1
/* 8135A4A8 | 48 1C 68 8D */	bl fn_81520D34
/* 8135A4AC | 80 01 04 24 */	lwz r0, 0x424(r1)
/* 8135A4B0 | 83 E1 04 1C */	lwz r31, 0x41c(r1)
/* 8135A4B4 | 7C 08 03 A6 */	mtlr r0
/* 8135A4B8 | 38 21 04 20 */	addi r1, r1, 0x420
/* 8135A4BC | 4E 80 00 20 */	blr
.endfn IplRso_symbolMaker__Fv

# .text:0xA50 | 0x8135A4C0 | size: 0xD0
# nw4r::lyt::TextBox::GetTextColor(unsigned long) const
.fn GetTextColor__Q34nw4r3lyt7TextBoxCFUl, global
/* 8135A4C0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8135A4C4 | 7C 08 02 A6 */	mflr r0
/* 8135A4C8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8135A4CC | 39 61 00 30 */	addi r11, r1, 0x30
/* 8135A4D0 | 48 29 EF F9 */	bl _savegpr_29
/* 8135A4D4 | 28 05 00 02 */	cmplwi r5, 0x2
/* 8135A4D8 | 7C 7D 1B 78 */	mr r29, r3
/* 8135A4DC | 7C 9E 23 78 */	mr r30, r4
/* 8135A4E0 | 7C BF 2B 78 */	mr r31, r5
/* 8135A4E4 | 41 80 00 6C */	blt .L_8135A550
/* 8135A4E8 | 89 2D 81 EC */	lbz r9, lbl_8169622C@sda21(r0)
/* 8135A4EC | 38 00 00 00 */	li r0, 0x0
/* 8135A4F0 | 89 0D 81 ED */	lbz r8, lbl_8169622D@sda21(r0)
/* 8135A4F4 | 3C A0 81 64 */	lis r5, lbl_81639230@ha
/* 8135A4F8 | 88 ED 81 EE */	lbz r7, lbl_8169622E@sda21(r0)
/* 8135A4FC | 38 61 00 0C */	addi r3, r1, 0xc
/* 8135A500 | 88 CD 81 EF */	lbz r6, lbl_8169622F@sda21(r0)
/* 8135A504 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8135A508 | 99 21 00 14 */	stb r9, 0x14(r1)
/* 8135A50C | 38 A5 92 30 */	addi r5, r5, lbl_81639230@l
/* 8135A510 | 99 01 00 15 */	stb r8, 0x15(r1)
/* 8135A514 | 98 E1 00 16 */	stb r7, 0x16(r1)
/* 8135A518 | 98 C1 00 17 */	stb r6, 0x17(r1)
/* 8135A51C | 98 01 00 10 */	stb r0, 0x10(r1)
/* 8135A520 | 98 01 00 11 */	stb r0, 0x11(r1)
/* 8135A524 | 98 01 00 12 */	stb r0, 0x12(r1)
/* 8135A528 | 98 01 00 13 */	stb r0, 0x13(r1)
/* 8135A52C | 98 01 00 08 */	stb r0, 0x8(r1)
/* 8135A530 | 98 01 00 09 */	stb r0, 0x9(r1)
/* 8135A534 | 98 01 00 0A */	stb r0, 0xa(r1)
/* 8135A538 | 98 01 00 0B */	stb r0, 0xb(r1)
/* 8135A53C | 99 21 00 0C */	stb r9, 0xc(r1)
/* 8135A540 | 99 01 00 0D */	stb r8, 0xd(r1)
/* 8135A544 | 98 E1 00 0E */	stb r7, 0xe(r1)
/* 8135A548 | 98 C1 00 0F */	stb r6, 0xf(r1)
/* 8135A54C | 48 02 69 D1 */	bl OSFatal
.L_8135A550:
/* 8135A550 | 57 E0 10 3A */	slwi r0, r31, 2
/* 8135A554 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8135A558 | 7C DE 02 14 */	add r6, r30, r0
/* 8135A55C | 88 A6 00 D8 */	lbz r5, 0xd8(r6)
/* 8135A560 | 88 86 00 D9 */	lbz r4, 0xd9(r6)
/* 8135A564 | 88 66 00 DA */	lbz r3, 0xda(r6)
/* 8135A568 | 88 06 00 DB */	lbz r0, 0xdb(r6)
/* 8135A56C | 98 BD 00 00 */	stb r5, 0x0(r29)
/* 8135A570 | 98 9D 00 01 */	stb r4, 0x1(r29)
/* 8135A574 | 98 7D 00 02 */	stb r3, 0x2(r29)
/* 8135A578 | 98 1D 00 03 */	stb r0, 0x3(r29)
/* 8135A57C | 48 29 EF 99 */	bl _restgpr_29
/* 8135A580 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8135A584 | 7C 08 03 A6 */	mtlr r0
/* 8135A588 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8135A58C | 4E 80 00 20 */	blr
.endfn GetTextColor__Q34nw4r3lyt7TextBoxCFUl

# 0x81639230..0x81639278 | size: 0x48
.data
.balign 8

# .data:0x0 | 0x81639230 | size: 0x48
.obj lbl_81639230, global
	.4byte 0x4572726F
	.4byte 0x72233030
	.4byte 0x340A416E
	.4byte 0x20657272
	.4byte 0x6F722068
	.4byte 0x6173206F
	.4byte 0x63637572
	.4byte 0x7265642E
	.4byte 0x0A546865
	.4byte 0x20737973
	.4byte 0x74656D20
	.4byte 0x66696C65
	.4byte 0x73206172
	.4byte 0x6520636F
	.4byte 0x72727570
	.4byte 0x7465642E
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81639230

# 0x81694598..0x816945A0 | size: 0x8
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694598 | size: 0x8
.obj lbl_81694598, global
	.float 0
	.float 0
.endobj lbl_81694598

# 0x81696220..0x81696230 | size: 0x10
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696220 | size: 0x2
.obj lbl_81696220, global
	.string "A"
.endobj lbl_81696220

# .sdata:0x2 | 0x81696222 | size: 0x2
.obj lbl_81696222, global
	.2byte 0x0000
.endobj lbl_81696222

# .sdata:0x4 | 0x81696224 | size: 0x6
.obj lbl_81696224, global
	.string16 "%d"
.endobj lbl_81696224

# .sdata:0xA | 0x8169622A | size: 0x2
.obj lbl_8169622A, global
	.2byte 0x0000
.endobj lbl_8169622A

# .sdata:0xC | 0x8169622C | size: 0x1
.obj lbl_8169622C, global
	.byte 0xFF
.endobj lbl_8169622C

# .sdata:0xD | 0x8169622D | size: 0x1
.obj lbl_8169622D, global
	.byte 0xFF
.endobj lbl_8169622D

# .sdata:0xE | 0x8169622E | size: 0x1
.obj lbl_8169622E, global
	.byte 0xFF
.endobj lbl_8169622E

# .sdata:0xF | 0x8169622F | size: 0x1
.obj lbl_8169622F, global
	.byte 0x00
.endobj lbl_8169622F
