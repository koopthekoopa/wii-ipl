.include "macros.inc"
.file "iplLimitOver.cpp"

# 0x813C1AC4..0x813C2418 | size: 0x954
.text
.balign 4

# .text:0x0 | 0x813C1AC4 | size: 0x64
# ipl::scene::LimitOver::LimitOver(EGG::Heap*)
.fn __ct__Q33ipl5scene9LimitOverFPQ23EGG4Heap, global
/* 813C1AC4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C1AC8 | 7C 08 02 A6 */	mflr r0
/* 813C1ACC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C1AD0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C1AD4 | 7C 7F 1B 78 */	mr r31, r3
/* 813C1AD8 | 48 04 97 31 */	bl __ct__Q33ipl5scene14FaderSceneBaseFPQ23EGG4Heap
/* 813C1ADC | 3C A0 81 65 */	lis r5, __vt__Q33ipl5scene9LimitOver@ha
/* 813C1AE0 | 38 00 00 00 */	li r0, 0x0
/* 813C1AE4 | 38 A5 08 64 */	addi r5, r5, __vt__Q33ipl5scene9LimitOver@l
/* 813C1AE8 | 90 1F 00 60 */	stw r0, 0x60(r31)
/* 813C1AEC | 38 85 00 1C */	addi r4, r5, 0x1c
/* 813C1AF0 | 7F E3 FB 78 */	mr r3, r31
/* 813C1AF4 | 90 BF 00 00 */	stw r5, 0x0(r31)
/* 813C1AF8 | 90 9F 00 14 */	stw r4, 0x14(r31)
/* 813C1AFC | 90 1F 00 64 */	stw r0, 0x64(r31)
/* 813C1B00 | 90 1F 00 68 */	stw r0, 0x68(r31)
/* 813C1B04 | 90 1F 00 6C */	stw r0, 0x6c(r31)
/* 813C1B08 | 98 1F 00 70 */	stb r0, 0x70(r31)
/* 813C1B0C | 98 1F 00 71 */	stb r0, 0x71(r31)
/* 813C1B10 | 90 1F 00 74 */	stw r0, 0x74(r31)
/* 813C1B14 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C1B18 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C1B1C | 7C 08 03 A6 */	mtlr r0
/* 813C1B20 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C1B24 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene9LimitOverFPQ23EGG4Heap

# .text:0x64 | 0x813C1B28 | size: 0x5C
# ipl::scene::LimitOver::~LimitOver()
.fn __dt__Q33ipl5scene9LimitOverFv, global
/* 813C1B28 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C1B2C | 7C 08 02 A6 */	mflr r0
/* 813C1B30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C1B34 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C1B38 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C1B3C | 7C 9F 23 78 */	mr r31, r4
/* 813C1B40 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813C1B44 | 7C 7E 1B 78 */	mr r30, r3
/* 813C1B48 | 41 82 00 20 */	beq .L_813C1B68
/* 813C1B4C | 41 82 00 0C */	beq .L_813C1B58
/* 813C1B50 | 38 80 00 00 */	li r4, 0x0
/* 813C1B54 | 48 04 81 11 */	bl __dt__Q33ipl5scene4BaseFv
.L_813C1B58:
/* 813C1B58 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813C1B5C | 40 81 00 0C */	ble .L_813C1B68
/* 813C1B60 | 7F C3 F3 78 */	mr r3, r30
/* 813C1B64 | 48 23 65 81 */	bl __dl__FPv
.L_813C1B68:
/* 813C1B68 | 7F C3 F3 78 */	mr r3, r30
/* 813C1B6C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C1B70 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813C1B74 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C1B78 | 7C 08 03 A6 */	mtlr r0
/* 813C1B7C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C1B80 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene9LimitOverFv

# .text:0xC0 | 0x813C1B84 | size: 0x5C
# ipl::scene::LimitOver::prepare()
.fn prepare__Q33ipl5scene9LimitOverFv, global
/* 813C1B84 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C1B88 | 7C 08 02 A6 */	mflr r0
/* 813C1B8C | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813C1B90 | 3C A0 81 65 */	lis r5, lbl_8165077C@ha
/* 813C1B94 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C1B98 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813C1B9C | 38 A5 07 7C */	addi r5, r5, lbl_8165077C@l
/* 813C1BA0 | 38 C0 00 01 */	li r6, 0x1
/* 813C1BA4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C1BA8 | 7C 7F 1B 78 */	mr r31, r3
/* 813C1BAC | 80 64 00 6C */	lwz r3, 0x6c(r4)
/* 813C1BB0 | 80 9F 00 24 */	lwz r4, 0x24(r31)
/* 813C1BB4 | 4B F7 BD 01 */	bl readLayoutAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcb
/* 813C1BB8 | 90 7F 00 5C */	stw r3, 0x5c(r31)
/* 813C1BBC | 38 80 00 02 */	li r4, 0x2
/* 813C1BC0 | 38 60 00 01 */	li r3, 0x1
/* 813C1BC4 | 48 1F D2 F5 */	bl fn_815BEEB8
/* 813C1BC8 | 4B FA 46 CD */	bl DeleteExpiredFlagFile__Q33ipl7utility6ESMiscFv
/* 813C1BCC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C1BD0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C1BD4 | 7C 08 03 A6 */	mtlr r0
/* 813C1BD8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C1BDC | 4E 80 00 20 */	blr
.endfn prepare__Q33ipl5scene9LimitOverFv

# .text:0x11C | 0x813C1BE0 | size: 0x14
# ipl::scene::LimitOver::isReady() const
.fn isReady__Q33ipl5scene9LimitOverCFv, global
/* 813C1BE0 | 80 63 00 5C */	lwz r3, 0x5c(r3)
/* 813C1BE4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C1BE8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813C1BEC | 7D 89 03 A6 */	mtctr r12
/* 813C1BF0 | 4E 80 04 20 */	bctr
.endfn isReady__Q33ipl5scene9LimitOverCFv

# .text:0x130 | 0x813C1BF4 | size: 0x114
# ipl::scene::LimitOver::getCountryIndex_()
.fn getCountryIndex___Q33ipl5scene9LimitOverFv, global
/* 813C1BF4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C1BF8 | 7C 08 02 A6 */	mflr r0
/* 813C1BFC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C1C00 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C1C04 | 3B E0 00 01 */	li r31, 0x1
/* 813C1C08 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813C1C0C | 48 1A 84 F9 */	bl SCGetLanguage
/* 813C1C10 | 54 7E 06 3E */	clrlwi r30, r3, 24
/* 813C1C14 | 4B F7 3E 79 */	bl getRegion__Q23ipl6SystemFv
/* 813C1C18 | 28 03 00 0B */	cmplwi r3, 0xb
/* 813C1C1C | 41 81 00 D0 */	bgt .L_813C1CEC
/* 813C1C20 | 3C 80 81 65 */	lis r4, jumptable_8165078C@ha
/* 813C1C24 | 54 60 10 3A */	slwi r0, r3, 2
/* 813C1C28 | 38 84 07 8C */	addi r4, r4, jumptable_8165078C@l
/* 813C1C2C | 7C 84 00 2E */	lwzx r4, r4, r0
/* 813C1C30 | 7C 89 03 A6 */	mtctr r4
/* 813C1C34 | 4E 80 04 20 */	bctr
.L_813C1C38:
/* 813C1C38 | 3B E0 00 00 */	li r31, 0x0
/* 813C1C3C | 48 00 00 B0 */	b .L_813C1CEC
.L_813C1C40:
/* 813C1C40 | 2C 1E 00 03 */	cmpwi r30, 0x3
/* 813C1C44 | 41 82 00 28 */	beq .L_813C1C6C
/* 813C1C48 | 40 80 00 10 */	bge .L_813C1C58
/* 813C1C4C | 2C 1E 00 01 */	cmpwi r30, 0x1
/* 813C1C50 | 41 82 00 14 */	beq .L_813C1C64
/* 813C1C54 | 48 00 00 98 */	b .L_813C1CEC
.L_813C1C58:
/* 813C1C58 | 2C 1E 00 05 */	cmpwi r30, 0x5
/* 813C1C5C | 40 80 00 90 */	bge .L_813C1CEC
/* 813C1C60 | 48 00 00 14 */	b .L_813C1C74
.L_813C1C64:
/* 813C1C64 | 3B E0 00 01 */	li r31, 0x1
/* 813C1C68 | 48 00 00 84 */	b .L_813C1CEC
.L_813C1C6C:
/* 813C1C6C | 3B E0 00 02 */	li r31, 0x2
/* 813C1C70 | 48 00 00 7C */	b .L_813C1CEC
.L_813C1C74:
/* 813C1C74 | 3B E0 00 03 */	li r31, 0x3
/* 813C1C78 | 48 00 00 74 */	b .L_813C1CEC
.L_813C1C7C:
/* 813C1C7C | 2C 1E 00 04 */	cmpwi r30, 0x4
/* 813C1C80 | 41 82 00 50 */	beq .L_813C1CD0
/* 813C1C84 | 40 80 00 1C */	bge .L_813C1CA0
/* 813C1C88 | 2C 1E 00 02 */	cmpwi r30, 0x2
/* 813C1C8C | 41 82 00 34 */	beq .L_813C1CC0
/* 813C1C90 | 40 80 00 28 */	bge .L_813C1CB8
/* 813C1C94 | 2C 1E 00 01 */	cmpwi r30, 0x1
/* 813C1C98 | 40 80 00 18 */	bge .L_813C1CB0
/* 813C1C9C | 48 00 00 50 */	b .L_813C1CEC
.L_813C1CA0:
/* 813C1CA0 | 2C 1E 00 06 */	cmpwi r30, 0x6
/* 813C1CA4 | 41 82 00 34 */	beq .L_813C1CD8
/* 813C1CA8 | 40 80 00 44 */	bge .L_813C1CEC
/* 813C1CAC | 48 00 00 1C */	b .L_813C1CC8
.L_813C1CB0:
/* 813C1CB0 | 3B E0 00 04 */	li r31, 0x4
/* 813C1CB4 | 48 00 00 38 */	b .L_813C1CEC
.L_813C1CB8:
/* 813C1CB8 | 3B E0 00 05 */	li r31, 0x5
/* 813C1CBC | 48 00 00 30 */	b .L_813C1CEC
.L_813C1CC0:
/* 813C1CC0 | 3B E0 00 06 */	li r31, 0x6
/* 813C1CC4 | 48 00 00 28 */	b .L_813C1CEC
.L_813C1CC8:
/* 813C1CC8 | 3B E0 00 07 */	li r31, 0x7
/* 813C1CCC | 48 00 00 20 */	b .L_813C1CEC
.L_813C1CD0:
/* 813C1CD0 | 3B E0 00 08 */	li r31, 0x8
/* 813C1CD4 | 48 00 00 18 */	b .L_813C1CEC
.L_813C1CD8:
/* 813C1CD8 | 3B E0 00 09 */	li r31, 0x9
/* 813C1CDC | 48 00 00 10 */	b .L_813C1CEC
.L_813C1CE0:
/* 813C1CE0 | 3B E0 00 0A */	li r31, 0xa
/* 813C1CE4 | 48 00 00 08 */	b .L_813C1CEC
.L_813C1CE8:
/* 813C1CE8 | 3B E0 00 0B */	li r31, 0xb
.L_813C1CEC:
/* 813C1CEC | 7F E3 FB 78 */	mr r3, r31
/* 813C1CF0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C1CF4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813C1CF8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C1CFC | 7C 08 03 A6 */	mtlr r0
/* 813C1D00 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C1D04 | 4E 80 00 20 */	blr
.endfn getCountryIndex___Q33ipl5scene9LimitOverFv

# .text:0x244 | 0x813C1D08 | size: 0x324
# ipl::scene::LimitOver::create()
.fn create__Q33ipl5scene9LimitOverFv, global
/* 813C1D08 | 94 21 FF 70 */	stwu r1, -0x90(r1)
/* 813C1D0C | 7C 08 02 A6 */	mflr r0
/* 813C1D10 | 90 01 00 94 */	stw r0, 0x94(r1)
/* 813C1D14 | 39 61 00 90 */	addi r11, r1, 0x90
/* 813C1D18 | 48 23 77 95 */	bl _savegpr_22
/* 813C1D1C | 3F E0 81 65 */	lis r31, lbl_816505D8@ha
/* 813C1D20 | 7C 7E 1B 78 */	mr r30, r3
/* 813C1D24 | 3B FF 05 D8 */	addi r31, r31, lbl_816505D8@l
/* 813C1D28 | 38 60 05 80 */	li r3, 0x580
/* 813C1D2C | 48 23 63 71 */	bl __nw__FUl
/* 813C1D30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C1D34 | 41 82 00 18 */	beq .L_813C1D4C
/* 813C1D38 | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813C1D3C | 38 FF 01 E4 */	addi r7, r31, 0x1e4
/* 813C1D40 | 80 BE 00 5C */	lwz r5, 0x5c(r30)
/* 813C1D44 | 38 CD 8B 70 */	li r6, lbl_81696BB0@sda21
/* 813C1D48 | 4B FA 82 DD */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813C1D4C:
/* 813C1D4C | 90 7E 00 58 */	stw r3, 0x58(r30)
/* 813C1D50 | 48 1A 82 65 */	bl SCGetAspectRatio
/* 813C1D54 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813C1D58 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813C1D5C | 40 82 01 3C */	bne .L_813C1E98
/* 813C1D60 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813C1D64 | 38 9F 01 F5 */	addi r4, r31, 0x1f5
/* 813C1D68 | 38 A0 00 01 */	li r5, 0x1
/* 813C1D6C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813C1D70 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C1D74 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813C1D78 | 7D 89 03 A6 */	mtctr r12
/* 813C1D7C | 4E 80 04 21 */	bctrl
/* 813C1D80 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C1D84 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 813C1D88 | 7D 89 03 A6 */	mtctr r12
/* 813C1D8C | 4E 80 04 21 */	bctrl
/* 813C1D90 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813C1D94 | 38 A0 00 00 */	li r5, 0x0
/* 813C1D98 | 48 16 5F 95 */	bl fn_81527D2C
/* 813C1D9C | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813C1DA0 | 38 9F 02 00 */	addi r4, r31, 0x200
/* 813C1DA4 | 38 A0 00 01 */	li r5, 0x1
/* 813C1DA8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813C1DAC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C1DB0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813C1DB4 | 7D 89 03 A6 */	mtctr r12
/* 813C1DB8 | 4E 80 04 21 */	bctrl
/* 813C1DBC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C1DC0 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 813C1DC4 | 7D 89 03 A6 */	mtctr r12
/* 813C1DC8 | 4E 80 04 21 */	bctrl
/* 813C1DCC | 38 81 00 28 */	addi r4, r1, 0x28
/* 813C1DD0 | 38 A0 00 00 */	li r5, 0x0
/* 813C1DD4 | 48 16 5F 59 */	bl fn_81527D2C
/* 813C1DD8 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813C1DDC | 38 9F 02 0B */	addi r4, r31, 0x20b
/* 813C1DE0 | 38 A0 00 01 */	li r5, 0x1
/* 813C1DE4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813C1DE8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C1DEC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813C1DF0 | 7D 89 03 A6 */	mtctr r12
/* 813C1DF4 | 4E 80 04 21 */	bctrl
/* 813C1DF8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C1DFC | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 813C1E00 | 7D 89 03 A6 */	mtctr r12
/* 813C1E04 | 4E 80 04 21 */	bctrl
/* 813C1E08 | 38 81 00 48 */	addi r4, r1, 0x48
/* 813C1E0C | 38 A0 00 00 */	li r5, 0x0
/* 813C1E10 | 48 16 5F 1D */	bl fn_81527D2C
/* 813C1E14 | 3B 5F 00 00 */	addi r26, r31, 0x0
/* 813C1E18 | 3A E0 00 00 */	li r23, 0x0
/* 813C1E1C | 3B A0 00 00 */	li r29, 0x0
/* 813C1E20 | 3B 80 00 00 */	li r28, 0x0
.L_813C1E24:
/* 813C1E24 | 3B 01 00 08 */	addi r24, r1, 0x8
/* 813C1E28 | 7F 3A E2 14 */	add r25, r26, r28
/* 813C1E2C | 7F 18 EA 14 */	add r24, r24, r29
/* 813C1E30 | 3A C0 00 00 */	li r22, 0x0
/* 813C1E34 | 3B 60 00 00 */	li r27, 0x0
.L_813C1E38:
/* 813C1E38 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813C1E3C | 38 A0 00 01 */	li r5, 0x1
/* 813C1E40 | 7C 99 D8 2E */	lwzx r4, r25, r27
/* 813C1E44 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813C1E48 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C1E4C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813C1E50 | 7D 89 03 A6 */	mtctr r12
/* 813C1E54 | 4E 80 04 21 */	bctrl
/* 813C1E58 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C1E5C | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 813C1E60 | 7D 89 03 A6 */	mtctr r12
/* 813C1E64 | 4E 80 04 21 */	bctrl
/* 813C1E68 | 7F 05 C3 78 */	mr r5, r24
/* 813C1E6C | 38 80 00 00 */	li r4, 0x0
/* 813C1E70 | 48 16 5F AD */	bl fn_81527E1C
/* 813C1E74 | 3A D6 00 01 */	addi r22, r22, 0x1
/* 813C1E78 | 3B 7B 00 04 */	addi r27, r27, 0x4
/* 813C1E7C | 2C 16 00 04 */	cmpwi r22, 0x4
/* 813C1E80 | 41 80 FF B8 */	blt .L_813C1E38
/* 813C1E84 | 3A F7 00 01 */	addi r23, r23, 0x1
/* 813C1E88 | 3B 9C 00 10 */	addi r28, r28, 0x10
/* 813C1E8C | 2C 17 00 03 */	cmpwi r23, 0x3
/* 813C1E90 | 3B BD 00 20 */	addi r29, r29, 0x20
/* 813C1E94 | 41 80 FF 90 */	blt .L_813C1E24
.L_813C1E98:
/* 813C1E98 | 3B 9F 00 B4 */	addi r28, r31, 0xb4
/* 813C1E9C | 3B 7F 01 74 */	addi r27, r31, 0x174
/* 813C1EA0 | 3A C0 00 00 */	li r22, 0x0
/* 813C1EA4 | 3B A0 00 00 */	li r29, 0x0
.L_813C1EA8:
/* 813C1EA8 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813C1EAC | 38 A0 00 01 */	li r5, 0x1
/* 813C1EB0 | 7C 9C E8 2E */	lwzx r4, r28, r29
/* 813C1EB4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813C1EB8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C1EBC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813C1EC0 | 7D 89 03 A6 */	mtctr r12
/* 813C1EC4 | 4E 80 04 21 */	bctrl
/* 813C1EC8 | 80 DE 00 58 */	lwz r6, 0x58(r30)
/* 813C1ECC | 7C 7A 1B 78 */	mr r26, r3
/* 813C1ED0 | 7C 9B E8 2E */	lwzx r4, r27, r29
/* 813C1ED4 | 38 A0 00 01 */	li r5, 0x1
/* 813C1ED8 | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 813C1EDC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C1EE0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813C1EE4 | 7D 89 03 A6 */	mtctr r12
/* 813C1EE8 | 4E 80 04 21 */	bctrl
/* 813C1EEC | 7C 79 1B 78 */	mr r25, r3
/* 813C1EF0 | 7F 43 D3 78 */	mr r3, r26
/* 813C1EF4 | 38 80 00 00 */	li r4, 0x0
/* 813C1EF8 | 4B F8 25 1D */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813C1EFC | 7F 23 CB 78 */	mr r3, r25
/* 813C1F00 | 38 80 00 00 */	li r4, 0x0
/* 813C1F04 | 4B F8 25 11 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813C1F08 | 3A D6 00 01 */	addi r22, r22, 0x1
/* 813C1F0C | 3B BD 00 04 */	addi r29, r29, 0x4
/* 813C1F10 | 28 16 00 0C */	cmplwi r22, 0xc
/* 813C1F14 | 41 80 FF 94 */	blt .L_813C1EA8
/* 813C1F18 | 7F C3 F3 78 */	mr r3, r30
/* 813C1F1C | 4B FF FC D9 */	bl getCountryIndex___Q33ipl5scene9LimitOverFv
/* 813C1F20 | 80 DE 00 58 */	lwz r6, 0x58(r30)
/* 813C1F24 | 54 78 10 3A */	slwi r24, r3, 2
/* 813C1F28 | 38 9F 00 B4 */	addi r4, r31, 0xb4
/* 813C1F2C | 38 A0 00 01 */	li r5, 0x1
/* 813C1F30 | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 813C1F34 | 7C 84 C0 2E */	lwzx r4, r4, r24
/* 813C1F38 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C1F3C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813C1F40 | 7D 89 03 A6 */	mtctr r12
/* 813C1F44 | 4E 80 04 21 */	bctrl
/* 813C1F48 | 90 7E 00 60 */	stw r3, 0x60(r30)
/* 813C1F4C | 38 7F 01 74 */	addi r3, r31, 0x174
/* 813C1F50 | 80 DE 00 58 */	lwz r6, 0x58(r30)
/* 813C1F54 | 38 A0 00 01 */	li r5, 0x1
/* 813C1F58 | 7C 83 C0 2E */	lwzx r4, r3, r24
/* 813C1F5C | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 813C1F60 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C1F64 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813C1F68 | 7D 89 03 A6 */	mtctr r12
/* 813C1F6C | 4E 80 04 21 */	bctrl
/* 813C1F70 | 90 7E 00 64 */	stw r3, 0x64(r30)
/* 813C1F74 | 38 80 00 01 */	li r4, 0x1
/* 813C1F78 | 80 7E 00 60 */	lwz r3, 0x60(r30)
/* 813C1F7C | 4B F8 24 99 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813C1F80 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813C1F84 | 38 9F 02 16 */	addi r4, r31, 0x216
/* 813C1F88 | 38 AD 8B 74 */	li r5, lbl_81696BB4@sda21
/* 813C1F8C | 38 C0 00 01 */	li r6, 0x1
/* 813C1F90 | 38 E0 00 01 */	li r7, 0x1
/* 813C1F94 | 4B FA 85 4D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813C1F98 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813C1F9C | 38 9F 02 2F */	addi r4, r31, 0x22f
/* 813C1FA0 | 38 AD 8B 7A */	li r5, lbl_81696BBA@sda21
/* 813C1FA4 | 38 C0 00 01 */	li r6, 0x1
/* 813C1FA8 | 38 E0 00 01 */	li r7, 0x1
/* 813C1FAC | 4B FA 85 35 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813C1FB0 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813C1FB4 | 38 9F 02 4B */	addi r4, r31, 0x24b
/* 813C1FB8 | 38 AD 8B 74 */	li r5, lbl_81696BB4@sda21
/* 813C1FBC | 38 C0 00 01 */	li r6, 0x1
/* 813C1FC0 | 38 E0 00 01 */	li r7, 0x1
/* 813C1FC4 | 4B FA 85 1D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813C1FC8 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813C1FCC | 38 80 00 00 */	li r4, 0x0
/* 813C1FD0 | 38 A0 00 00 */	li r5, 0x0
/* 813C1FD4 | 4B FA 8A 8D */	bl setAnmType__Q33ipl6layout6ObjectFii
/* 813C1FD8 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813C1FDC | 38 80 00 02 */	li r4, 0x2
/* 813C1FE0 | 38 A0 00 01 */	li r5, 0x1
/* 813C1FE4 | 4B FA 8A 7D */	bl setAnmType__Q33ipl6layout6ObjectFii
/* 813C1FE8 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813C1FEC | 38 80 00 00 */	li r4, 0x0
/* 813C1FF0 | 38 A0 00 02 */	li r5, 0x2
/* 813C1FF4 | 4B FA 8A 6D */	bl setAnmType__Q33ipl6layout6ObjectFii
/* 813C1FF8 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813C1FFC | 4B FA 86 39 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813C2000 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C2004 | 38 00 00 00 */	li r0, 0x0
/* 813C2008 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C200C | 39 61 00 90 */	addi r11, r1, 0x90
/* 813C2010 | 80 63 00 B0 */	lwz r3, 0xb0(r3)
/* 813C2014 | 98 03 00 3D */	stb r0, 0x3d(r3)
/* 813C2018 | 48 23 74 E1 */	bl _restgpr_22
/* 813C201C | 80 01 00 94 */	lwz r0, 0x94(r1)
/* 813C2020 | 7C 08 03 A6 */	mtlr r0
/* 813C2024 | 38 21 00 90 */	addi r1, r1, 0x90
/* 813C2028 | 4E 80 00 20 */	blr
.endfn create__Q33ipl5scene9LimitOverFv

# .text:0x568 | 0x813C202C | size: 0x1B0
# ipl::scene::LimitOver::calcFadein()
.fn calcFadein__Q33ipl5scene9LimitOverFv, global
/* 813C202C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C2030 | 7C 08 02 A6 */	mflr r0
/* 813C2034 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C2038 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C203C | 7C 7F 1B 78 */	mr r31, r3
/* 813C2040 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813C2044 | 80 63 00 58 */	lwz r3, 0x58(r3)
/* 813C2048 | 4B FA 86 BD */	bl calc__Q33ipl6layout6ObjectFv
/* 813C204C | 88 1F 00 71 */	lbz r0, 0x71(r31)
/* 813C2050 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C2054 | 40 82 00 7C */	bne .L_813C20D0
/* 813C2058 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813C205C | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813C2060 | 88 1E 02 B7 */	lbz r0, 0x2b7(r30)
/* 813C2064 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C2068 | 41 82 00 60 */	beq .L_813C20C8
/* 813C206C | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 813C2070 | 38 80 00 00 */	li r4, 0x0
/* 813C2074 | 4B FA 88 85 */	bl start__Q33ipl6layout6ObjectFi
/* 813C2078 | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 813C207C | 4B FA 86 89 */	bl calc__Q33ipl6layout6ObjectFv
/* 813C2080 | 80 7E 00 C4 */	lwz r3, 0xc4(r30)
/* 813C2084 | 38 80 00 01 */	li r4, 0x1
/* 813C2088 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C208C | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813C2090 | 7D 89 03 A6 */	mtctr r12
/* 813C2094 | 4E 80 04 21 */	bctrl
/* 813C2098 | 80 7E 00 C4 */	lwz r3, 0xc4(r30)
/* 813C209C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C20A0 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813C20A4 | 7D 89 03 A6 */	mtctr r12
/* 813C20A8 | 4E 80 04 21 */	bctrl
/* 813C20AC | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813C20B0 | 3C 80 81 65 */	lis r4, lbl_8165083D@ha
/* 813C20B4 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813C20B8 | 38 84 08 3D */	addi r4, r4, lbl_8165083D@l
/* 813C20BC | 4B FA 93 B1 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813C20C0 | 38 00 00 01 */	li r0, 0x1
/* 813C20C4 | 98 1F 00 71 */	stb r0, 0x71(r31)
.L_813C20C8:
/* 813C20C8 | 38 60 00 00 */	li r3, 0x0
/* 813C20CC | 48 00 00 F8 */	b .L_813C21C4
.L_813C20D0:
/* 813C20D0 | 88 1F 00 70 */	lbz r0, 0x70(r31)
/* 813C20D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C20D8 | 40 82 00 28 */	bne .L_813C2100
/* 813C20DC | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 813C20E0 | 38 80 00 00 */	li r4, 0x0
/* 813C20E4 | 4B FA 89 ED */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813C20E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C20EC | 40 82 00 14 */	bne .L_813C2100
/* 813C20F0 | 38 00 00 01 */	li r0, 0x1
/* 813C20F4 | 98 1F 00 70 */	stb r0, 0x70(r31)
/* 813C20F8 | 48 17 3B A1 */	bl OSGetTick
/* 813C20FC | 90 7F 00 68 */	stw r3, 0x68(r31)
.L_813C2100:
/* 813C2100 | 88 1F 00 70 */	lbz r0, 0x70(r31)
/* 813C2104 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C2108 | 41 82 00 B8 */	beq .L_813C21C0
/* 813C210C | 48 17 3B 8D */	bl OSGetTick
/* 813C2110 | 3C 80 80 00 */	lis r4, 0x8000
/* 813C2114 | 80 BF 00 68 */	lwz r5, 0x68(r31)
/* 813C2118 | 80 84 00 F8 */	lwz r4, 0xf8(r4)
/* 813C211C | 38 00 03 E8 */	li r0, 0x3e8
/* 813C2120 | 7C A5 18 50 */	subf r5, r5, r3
/* 813C2124 | 54 83 F0 BE */	srwi r3, r4, 2
/* 813C2128 | 7C 03 03 96 */	divwu r0, r3, r0
/* 813C212C | 7C 05 03 96 */	divwu r0, r5, r0
/* 813C2130 | 28 00 03 E8 */	cmplwi r0, 0x3e8
/* 813C2134 | 40 81 00 8C */	ble .L_813C21C0
/* 813C2138 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C213C | 38 80 00 00 */	li r4, 0x0
/* 813C2140 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C2144 | 88 03 02 B2 */	lbz r0, 0x2b2(r3)
/* 813C2148 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C214C | 41 82 00 14 */	beq .L_813C2160
/* 813C2150 | 88 03 02 B4 */	lbz r0, 0x2b4(r3)
/* 813C2154 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C2158 | 41 82 00 08 */	beq .L_813C2160
/* 813C215C | 38 80 00 01 */	li r4, 0x1
.L_813C2160:
/* 813C2160 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813C2164 | 40 82 00 24 */	bne .L_813C2188
/* 813C2168 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C216C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C2170 | 88 03 02 B2 */	lbz r0, 0x2b2(r3)
/* 813C2174 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C2178 | 41 82 00 48 */	beq .L_813C21C0
/* 813C217C | 88 03 02 BB */	lbz r0, 0x2bb(r3)
/* 813C2180 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C2184 | 41 82 00 3C */	beq .L_813C21C0
.L_813C2188:
/* 813C2188 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813C218C | 38 80 00 01 */	li r4, 0x1
/* 813C2190 | 4B F8 22 85 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813C2194 | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 813C2198 | 38 80 00 01 */	li r4, 0x1
/* 813C219C | 4B FA 87 5D */	bl start__Q33ipl6layout6ObjectFi
/* 813C21A0 | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 813C21A4 | 4B FA 85 61 */	bl calc__Q33ipl6layout6ObjectFv
/* 813C21A8 | 48 17 3A F1 */	bl OSGetTick
/* 813C21AC | 90 7F 00 6C */	stw r3, 0x6c(r31)
/* 813C21B0 | 4B FA 29 69 */	bl getWpadConnectedMask__Q33ipl7utility4wpadFv
/* 813C21B4 | 90 7F 00 74 */	stw r3, 0x74(r31)
/* 813C21B8 | 38 60 00 01 */	li r3, 0x1
/* 813C21BC | 48 00 00 08 */	b .L_813C21C4
.L_813C21C0:
/* 813C21C0 | 38 60 00 00 */	li r3, 0x0
.L_813C21C4:
/* 813C21C4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C21C8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C21CC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813C21D0 | 7C 08 03 A6 */	mtlr r0
/* 813C21D4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C21D8 | 4E 80 00 20 */	blr
.endfn calcFadein__Q33ipl5scene9LimitOverFv

# .text:0x718 | 0x813C21DC | size: 0x11C
# ipl::scene::LimitOver::calcNormal()
.fn calcNormal__Q33ipl5scene9LimitOverFv, global
/* 813C21DC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813C21E0 | 7C 08 02 A6 */	mflr r0
/* 813C21E4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813C21E8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C21EC | 48 23 72 DD */	bl _savegpr_29
/* 813C21F0 | 7C 7D 1B 78 */	mr r29, r3
/* 813C21F4 | 3B E0 00 00 */	li r31, 0x0
/* 813C21F8 | 4B FA 29 21 */	bl getWpadConnectedMask__Q33ipl7utility4wpadFv
/* 813C21FC | 7C 7E 1B 78 */	mr r30, r3
/* 813C2200 | 48 17 3A 99 */	bl OSGetTick
/* 813C2204 | 3C 80 80 00 */	lis r4, 0x8000
/* 813C2208 | 80 BD 00 6C */	lwz r5, 0x6c(r29)
/* 813C220C | 80 84 00 F8 */	lwz r4, 0xf8(r4)
/* 813C2210 | 38 00 03 E8 */	li r0, 0x3e8
/* 813C2214 | 7C A5 18 50 */	subf r5, r5, r3
/* 813C2218 | 54 83 F0 BE */	srwi r3, r4, 2
/* 813C221C | 7C 03 03 96 */	divwu r0, r3, r0
/* 813C2220 | 7C 05 03 96 */	divwu r0, r5, r0
/* 813C2224 | 28 00 07 D0 */	cmplwi r0, 0x7d0
/* 813C2228 | 40 80 00 08 */	bge .L_813C2230
/* 813C222C | 93 DD 00 74 */	stw r30, 0x74(r29)
.L_813C2230:
/* 813C2230 | 4B F7 37 79 */	bl getMasterController__Q23ipl6SystemFv
/* 813C2234 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C2238 | 3C 80 00 50 */	lis r4, 0x50
/* 813C223C | 38 84 0C 00 */	addi r4, r4, 0xc00
/* 813C2240 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813C2244 | 7D 89 03 A6 */	mtctr r12
/* 813C2248 | 4E 80 04 21 */	bctrl
/* 813C224C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C2250 | 40 82 00 3C */	bne .L_813C228C
/* 813C2254 | 80 1D 00 74 */	lwz r0, 0x74(r29)
/* 813C2258 | 7C 00 F0 40 */	cmplw r0, r30
/* 813C225C | 40 82 00 30 */	bne .L_813C228C
/* 813C2260 | 48 17 3A 39 */	bl OSGetTick
/* 813C2264 | 3C 80 80 00 */	lis r4, 0x8000
/* 813C2268 | 80 BD 00 6C */	lwz r5, 0x6c(r29)
/* 813C226C | 80 84 00 F8 */	lwz r4, 0xf8(r4)
/* 813C2270 | 38 00 03 E8 */	li r0, 0x3e8
/* 813C2274 | 7C A5 18 50 */	subf r5, r5, r3
/* 813C2278 | 54 83 F0 BE */	srwi r3, r4, 2
/* 813C227C | 7C 03 03 96 */	divwu r0, r3, r0
/* 813C2280 | 7C 05 03 96 */	divwu r0, r5, r0
/* 813C2284 | 28 00 EA 60 */	cmplwi r0, 0xea60
/* 813C2288 | 40 81 00 4C */	ble .L_813C22D4
.L_813C228C:
/* 813C228C | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 813C2290 | 7C 03 F0 40 */	cmplw r3, r30
/* 813C2294 | 41 82 00 1C */	beq .L_813C22B0
/* 813C2298 | 7F C4 F3 78 */	mr r4, r30
/* 813C229C | 4B FA 28 45 */	bl isIncreaseConnectedWpad__Q33ipl7utility4wpadFUlUl
/* 813C22A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C22A4 | 40 82 00 0C */	bne .L_813C22B0
/* 813C22A8 | 93 DD 00 74 */	stw r30, 0x74(r29)
/* 813C22AC | 48 00 00 28 */	b .L_813C22D4
.L_813C22B0:
/* 813C22B0 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813C22B4 | 3C 80 81 65 */	lis r4, lbl_81650851@ha
/* 813C22B8 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813C22BC | 38 84 08 51 */	addi r4, r4, lbl_81650851@l
/* 813C22C0 | 4B FA 91 AD */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813C22C4 | 80 7D 00 58 */	lwz r3, 0x58(r29)
/* 813C22C8 | 38 80 00 02 */	li r4, 0x2
/* 813C22CC | 4B FA 86 2D */	bl start__Q33ipl6layout6ObjectFi
/* 813C22D0 | 3B E0 00 01 */	li r31, 0x1
.L_813C22D4:
/* 813C22D4 | 80 7D 00 58 */	lwz r3, 0x58(r29)
/* 813C22D8 | 4B FA 84 2D */	bl calc__Q33ipl6layout6ObjectFv
/* 813C22DC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C22E0 | 7F E3 FB 78 */	mr r3, r31
/* 813C22E4 | 48 23 72 31 */	bl _restgpr_29
/* 813C22E8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813C22EC | 7C 08 03 A6 */	mtlr r0
/* 813C22F0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813C22F4 | 4E 80 00 20 */	blr
.endfn calcNormal__Q33ipl5scene9LimitOverFv

# .text:0x834 | 0x813C22F8 | size: 0xC8
# ipl::scene::LimitOver::calcFadeout()
.fn calcFadeout__Q33ipl5scene9LimitOverFv, global
/* 813C22F8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C22FC | 7C 08 02 A6 */	mflr r0
/* 813C2300 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C2304 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C2308 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813C230C | 7C 7E 1B 78 */	mr r30, r3
/* 813C2310 | 80 63 00 58 */	lwz r3, 0x58(r3)
/* 813C2314 | 4B FA 83 F1 */	bl calc__Q33ipl6layout6ObjectFv
/* 813C2318 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 813C231C | 38 80 00 02 */	li r4, 0x2
/* 813C2320 | 4B FA 87 B1 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813C2324 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C2328 | 40 82 00 34 */	bne .L_813C235C
/* 813C232C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813C2330 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813C2334 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813C2338 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C233C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813C2340 | 7D 89 03 A6 */	mtctr r12
/* 813C2344 | 4E 80 04 21 */	bctrl
/* 813C2348 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813C234C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C2350 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813C2354 | 7D 89 03 A6 */	mtctr r12
/* 813C2358 | 4E 80 04 21 */	bctrl
.L_813C235C:
/* 813C235C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813C2360 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813C2364 | 80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 813C2368 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C236C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813C2370 | 7D 89 03 A6 */	mtctr r12
/* 813C2374 | 4E 80 04 21 */	bctrl
/* 813C2378 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C237C | 40 82 00 28 */	bne .L_813C23A4
/* 813C2380 | 80 BF 00 B0 */	lwz r5, 0xb0(r31)
/* 813C2384 | 38 00 00 01 */	li r0, 0x1
/* 813C2388 | 7F C3 F3 78 */	mr r3, r30
/* 813C238C | 38 80 00 04 */	li r4, 0x4
/* 813C2390 | 98 05 00 3D */	stb r0, 0x3d(r5)
/* 813C2394 | 38 A0 00 00 */	li r5, 0x0
/* 813C2398 | 48 04 7B 61 */	bl reserveSceneChange__Q33ipl5scene4BaseFiPv
/* 813C239C | 38 60 00 01 */	li r3, 0x1
/* 813C23A0 | 48 00 00 08 */	b .L_813C23A8
.L_813C23A4:
/* 813C23A4 | 38 60 00 00 */	li r3, 0x0
.L_813C23A8:
/* 813C23A8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C23AC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C23B0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813C23B4 | 7C 08 03 A6 */	mtlr r0
/* 813C23B8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C23BC | 4E 80 00 20 */	blr
.endfn calcFadeout__Q33ipl5scene9LimitOverFv

# .text:0x8FC | 0x813C23C0 | size: 0x50
# ipl::scene::LimitOver::draw()
.fn draw__Q33ipl5scene9LimitOverFv, global
/* 813C23C0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C23C4 | 7C 08 02 A6 */	mflr r0
/* 813C23C8 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813C23CC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C23D0 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813C23D4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C23D8 | 7C 7F 1B 78 */	mr r31, r3
/* 813C23DC | 80 64 00 64 */	lwz r3, 0x64(r4)
/* 813C23E0 | 80 03 01 00 */	lwz r0, 0x100(r3)
/* 813C23E4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813C23E8 | 40 82 00 14 */	bne .L_813C23FC
/* 813C23EC | 38 60 00 00 */	li r3, 0x0
/* 813C23F0 | 4B FA 06 7D */	bl setOrtho__Q33ipl7utility8GraphicsFUl
/* 813C23F4 | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 813C23F8 | 4B FA 83 A5 */	bl draw__Q33ipl6layout6ObjectFv
.L_813C23FC:
/* 813C23FC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C2400 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C2404 | 7C 08 03 A6 */	mtlr r0
/* 813C2408 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C240C | 4E 80 00 20 */	blr
.endfn draw__Q33ipl5scene9LimitOverFv

# .text:0x94C | 0x813C2410 | size: 0x8
.fn "@20@__dt__Q33ipl5scene9LimitOverFv", global
/* 813C2410 | 38 63 FF EC */	subi r3, r3, 0x14
/* 813C2414 | 4B FF F7 14 */	b __dt__Q33ipl5scene9LimitOverFv
.endfn "@20@__dt__Q33ipl5scene9LimitOverFv"

# 0x816505D8..0x816508D0 | size: 0x2F8
.data
.balign 8

# .data:0x0 | 0x816505D8 | size: 0x30
.obj lbl_816505D8, global
	.4byte lbl_81696B68
	.4byte lbl_81696B6E
	.4byte lbl_81696B74
	.4byte lbl_81696B7A
	.4byte lbl_81696B80
	.4byte lbl_81696B86
	.4byte lbl_81696B8C
	.4byte lbl_81696B92
	.4byte lbl_81696B98
	.4byte lbl_81696B9E
	.4byte lbl_81696BA4
	.4byte lbl_81696BAA
.endobj lbl_816505D8

# .data:0x30 | 0x81650608 | size: 0xB
.obj lbl_81650608, global
	.string "Mes_JP_JPN"
.endobj lbl_81650608

# .data:0x3B | 0x81650613 | size: 0xB
.obj lbl_81650613, global
	.string "Mes_US_ENG"
.endobj lbl_81650613

# .data:0x46 | 0x8165061E | size: 0xB
.obj lbl_8165061E, global
	.string "Mes_US_FRA"
.endobj lbl_8165061E

# .data:0x51 | 0x81650629 | size: 0xB
.obj lbl_81650629, global
	.string "Mes_US_SPA"
.endobj lbl_81650629

# .data:0x5C | 0x81650634 | size: 0xB
.obj lbl_81650634, global
	.string "Mes_EU_ENG"
.endobj lbl_81650634

# .data:0x67 | 0x8165063F | size: 0xB
.obj lbl_8165063F, global
	.string "Mes_EU_FRA"
.endobj lbl_8165063F

# .data:0x72 | 0x8165064A | size: 0xB
.obj lbl_8165064A, global
	.string "Mes_EU_GER"
.endobj lbl_8165064A

# .data:0x7D | 0x81650655 | size: 0xB
.obj lbl_81650655, global
	.string "Mes_EU_ITA"
.endobj lbl_81650655

# .data:0x88 | 0x81650660 | size: 0xB
.obj lbl_81650660, global
	.string "Mes_EU_SPA"
.endobj lbl_81650660

# .data:0x93 | 0x8165066B | size: 0xB
.obj lbl_8165066B, global
	.string "Mes_EU_NER"
.endobj lbl_8165066B

# .data:0x9E | 0x81650676 | size: 0xB
.obj lbl_81650676, global
	.string "Mes_KR_KOR"
.endobj lbl_81650676

# .data:0xA9 | 0x81650681 | size: 0xB
.obj lbl_81650681, global
	.string "Mes_CN_CHN"
.endobj lbl_81650681

# .data:0xB4 | 0x8165068C | size: 0x30
# ipl::scene::lo_pane_name
.obj lo_pane_name__Q23ipl5scene, global
	.4byte lbl_81650608
	.4byte lbl_81650613
	.4byte lbl_8165061E
	.4byte lbl_81650629
	.4byte lbl_81650634
	.4byte lbl_8165063F
	.4byte lbl_8165064A
	.4byte lbl_81650655
	.4byte lbl_81650660
	.4byte lbl_8165066B
	.4byte lbl_81650676
	.4byte lbl_81650681
.endobj lo_pane_name__Q23ipl5scene

# .data:0xE4 | 0x816506BC | size: 0xC
.obj lbl_816506BC, global
	.string "Push_JP_JPN"
.endobj lbl_816506BC

# .data:0xF0 | 0x816506C8 | size: 0xC
.obj lbl_816506C8, global
	.string "Push_US_ENG"
.endobj lbl_816506C8

# .data:0xFC | 0x816506D4 | size: 0xC
.obj lbl_816506D4, global
	.string "Push_US_FRA"
.endobj lbl_816506D4

# .data:0x108 | 0x816506E0 | size: 0xC
.obj lbl_816506E0, global
	.string "Push_US_SPA"
.endobj lbl_816506E0

# .data:0x114 | 0x816506EC | size: 0xC
.obj lbl_816506EC, global
	.string "Push_EU_ENG"
.endobj lbl_816506EC

# .data:0x120 | 0x816506F8 | size: 0xC
.obj lbl_816506F8, global
	.string "Push_EU_FRA"
.endobj lbl_816506F8

# .data:0x12C | 0x81650704 | size: 0xC
.obj lbl_81650704, global
	.string "Push_EU_GER"
.endobj lbl_81650704

# .data:0x138 | 0x81650710 | size: 0xC
.obj lbl_81650710, global
	.string "Push_EU_ITA"
.endobj lbl_81650710

# .data:0x144 | 0x8165071C | size: 0xC
.obj lbl_8165071C, global
	.string "Push_EU_SPA"
.endobj lbl_8165071C

# .data:0x150 | 0x81650728 | size: 0xC
.obj lbl_81650728, global
	.string "Push_EU_NER"
.endobj lbl_81650728

# .data:0x15C | 0x81650734 | size: 0xC
.obj lbl_81650734, global
	.string "Push_KR_KOR"
.endobj lbl_81650734

# .data:0x168 | 0x81650740 | size: 0xC
.obj lbl_81650740, global
	.string "Push_CN_CHN"
.endobj lbl_81650740

# .data:0x174 | 0x8165074C | size: 0x30
# ipl::scene::lopush_pane_name
.obj lopush_pane_name__Q23ipl5scene, global
	.4byte lbl_816506BC
	.4byte lbl_816506C8
	.4byte lbl_816506D4
	.4byte lbl_816506E0
	.4byte lbl_816506EC
	.4byte lbl_816506F8
	.4byte lbl_81650704
	.4byte lbl_81650710
	.4byte lbl_8165071C
	.4byte lbl_81650728
	.4byte lbl_81650734
	.4byte lbl_81650740
.endobj lopush_pane_name__Q23ipl5scene

# .data:0x1A4 | 0x8165077C | size: 0x10
.obj lbl_8165077C, global
	.4byte 0x6C696D69
	.4byte 0x744F7665
	.4byte 0x722E6173
	.4byte 0x68000000
.endobj lbl_8165077C

# .data:0x1B4 | 0x8165078C | size: 0x30
.obj jumptable_8165078C, local
	.rel getCountryIndex___Q33ipl5scene9LimitOverFv, .L_813C1C38
	.rel getCountryIndex___Q33ipl5scene9LimitOverFv, .L_813C1C40
	.rel getCountryIndex___Q33ipl5scene9LimitOverFv, .L_813C1C7C
	.rel getCountryIndex___Q33ipl5scene9LimitOverFv, .L_813C1CEC
	.rel getCountryIndex___Q33ipl5scene9LimitOverFv, .L_813C1CEC
	.rel getCountryIndex___Q33ipl5scene9LimitOverFv, .L_813C1CEC
	.rel getCountryIndex___Q33ipl5scene9LimitOverFv, .L_813C1CE0
	.rel getCountryIndex___Q33ipl5scene9LimitOverFv, .L_813C1CEC
	.rel getCountryIndex___Q33ipl5scene9LimitOverFv, .L_813C1CEC
	.rel getCountryIndex___Q33ipl5scene9LimitOverFv, .L_813C1CEC
	.rel getCountryIndex___Q33ipl5scene9LimitOverFv, .L_813C1CEC
	.rel getCountryIndex___Q33ipl5scene9LimitOverFv, .L_813C1CE8
.endobj jumptable_8165078C

# .data:0x1E4 | 0x816507BC | size: 0x81
.obj gap_08_816507BC_data, global
.hidden gap_08_816507BC_data
	.4byte 0x6D795F54
	.4byte 0x696D6572
	.4byte 0x5F632E62
	.4byte 0x726C7974
	.4byte 0x00506963
	.4byte 0x74757265
	.4byte 0x5F303400
	.4byte 0x50696374
	.4byte 0x7572655F
	.4byte 0x30350050
	.4byte 0x69637475
	.4byte 0x72655F30
	.4byte 0x36006D79
	.4byte 0x5F54696D
	.4byte 0x65725F63
	.4byte 0x5F466164
	.4byte 0x655F496E
	.4byte 0x2E62726C
	.4byte 0x616E006D
	.4byte 0x795F5469
	.4byte 0x6D65725F
	.4byte 0x635F5075
	.4byte 0x73685F62
	.4byte 0x6C696E6B
	.4byte 0x2E62726C
	.4byte 0x616E006D
	.4byte 0x795F5469
	.4byte 0x6D65725F
	.4byte 0x635F4661
	.4byte 0x64655F4F
	.4byte 0x75742E62
	.4byte 0x726C616E
	.byte 0x00
.endobj gap_08_816507BC_data

# .data:0x265 | 0x8165083D | size: 0x14
.obj lbl_8165083D, global
	.string "WIPL_SE_INFO_WINDOW"
.endobj lbl_8165083D

# .data:0x279 | 0x81650851 | size: 0x13
.obj lbl_81650851, global
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x42545F50
	.4byte 0x55534800
	.byte 0x00, 0x00, 0x00
.endobj lbl_81650851

# .data:0x28C | 0x81650864 | size: 0x6C
# ipl::scene::LimitOver::__vtable
.obj __vt__Q33ipl5scene9LimitOver, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene9LimitOverFv
	.4byte getParent__Q33ipl5scene4BaseFv
	.4byte getChild__Q33ipl5scene4BaseFv
	.4byte getNext__Q33ipl5scene4BaseFv
	.4byte getPrev__Q33ipl5scene4BaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@20@__dt__Q33ipl5scene9LimitOverFv"
	.4byte isReady__Q33ipl5scene9LimitOverCFv
	.4byte isResetAcceptable__Q33ipl5scene4BaseCFv
	.4byte startResetting__Q33ipl5scene4BaseFv
	.4byte isResetProcessDone__Q33ipl5scene4BaseFv
	.4byte prepare__Q33ipl5scene9LimitOverFv
	.4byte create__Q33ipl5scene9LimitOverFv
	.4byte calc__Q33ipl5scene14FaderSceneBaseFv
	.4byte draw__Q33ipl5scene9LimitOverFv
	.4byte destroy__Q33ipl5scene4BaseFv
	.4byte initCalcNormal__Q33ipl5scene14FaderSceneBaseFv
	.4byte initCalcFadeout__Q33ipl5scene14FaderSceneBaseFv
	.4byte calcCommon__Q33ipl5scene14FaderSceneBaseFv
	.4byte calcFadein__Q33ipl5scene9LimitOverFv
	.4byte calcNormal__Q33ipl5scene9LimitOverFv
	.4byte calcFadeout__Q33ipl5scene9LimitOverFv
	.4byte calcCommonAfter__Q33ipl5scene14FaderSceneBaseFv
	.4byte 0x00000000
.endobj __vt__Q33ipl5scene9LimitOver

# 0x81696B68..0x81696BC8 | size: 0x60
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696B68 | size: 0x6
.obj lbl_81696B68, global
	.string "Fre_a"
.endobj lbl_81696B68

# .sdata:0x6 | 0x81696B6E | size: 0x6
.obj lbl_81696B6E, global
	.string "Fre_d"
.endobj lbl_81696B6E

# .sdata:0xC | 0x81696B74 | size: 0x6
.obj lbl_81696B74, global
	.string "Fre_i"
.endobj lbl_81696B74

# .sdata:0x12 | 0x81696B7A | size: 0x6
.obj lbl_81696B7A, global
	.string "Fre_l"
.endobj lbl_81696B7A

# .sdata:0x18 | 0x81696B80 | size: 0x6
.obj lbl_81696B80, global
	.string "Fre_e"
.endobj lbl_81696B80

# .sdata:0x1E | 0x81696B86 | size: 0x6
.obj lbl_81696B86, global
	.string "Fre_f"
.endobj lbl_81696B86

# .sdata:0x24 | 0x81696B8C | size: 0x6
.obj lbl_81696B8C, global
	.string "Fre_g"
.endobj lbl_81696B8C

# .sdata:0x2A | 0x81696B92 | size: 0x6
.obj lbl_81696B92, global
	.string "Fre_h"
.endobj lbl_81696B92

# .sdata:0x30 | 0x81696B98 | size: 0x6
.obj lbl_81696B98, global
	.string "Fre_b"
.endobj lbl_81696B98

# .sdata:0x36 | 0x81696B9E | size: 0x6
.obj lbl_81696B9E, global
	.string "Fre_c"
.endobj lbl_81696B9E

# .sdata:0x3C | 0x81696BA4 | size: 0x6
.obj lbl_81696BA4, global
	.string "Fre_j"
.endobj lbl_81696BA4

# .sdata:0x42 | 0x81696BAA | size: 0x6
.obj lbl_81696BAA, global
	.string "Fre_k"
.endobj lbl_81696BAA

# .sdata:0x48 | 0x81696BB0 | size: 0x4
.obj lbl_81696BB0, global
	.string "arc"
.endobj lbl_81696BB0

# .sdata:0x4C | 0x81696BB4 | size: 0x6
.obj lbl_81696BB4, global
	.string "G_All"
.endobj lbl_81696BB4

# .sdata:0x52 | 0x81696BBA | size: 0xE
.obj lbl_81696BBA, global
	.4byte 0x475F5075
	.4byte 0x73680000
	.4byte 0x00000000
	.2byte 0x0000
.endobj lbl_81696BBA
