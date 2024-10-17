.include "macros.inc"
.file "iplSystem.cpp"

# 0x81089008..0x810892E0 | size: 0x2D8
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x81089008 | size: 0x2D8
# ipl::System::smArg
.obj smArg__Q23ipl6System, global
	.skip 0x2D8
.endobj smArg__Q23ipl6System

# 0x81332C24..0x81335CCC | size: 0x30A8
.text
.balign 4

# .text:0x0 | 0x81332C24 | size: 0x48
# ipl::System::Arg::Arg()
.fn __ct__Q33ipl6System3ArgFv, global
/* 81332C24 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81332C28 | 7C 08 02 A6 */	mflr r0
/* 81332C2C | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81332C30 | 38 A0 02 D8 */	li r5, 0x2d8
/* 81332C34 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81332C38 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81332C3C | 7C 7F 1B 78 */	mr r31, r3
/* 81332C40 | 38 64 90 08 */	addi r3, r4, smArg__Q23ipl6System@l
/* 81332C44 | 38 80 00 00 */	li r4, 0x0
/* 81332C48 | 4B FF D6 ED */	bl memset
/* 81332C4C | 38 7F 01 E0 */	addi r3, r31, 0x1e0
/* 81332C50 | 48 1F 9C 95 */	bl OSCreateAlarm
/* 81332C54 | 7F E3 FB 78 */	mr r3, r31
/* 81332C58 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81332C5C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81332C60 | 7C 08 03 A6 */	mtlr r0
/* 81332C64 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81332C68 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl6System3ArgFv

# .text:0x48 | 0x81332C6C | size: 0x1C8
# ipl::System::createRootHeap_()
.fn createRootHeap___Q23ipl6SystemFv, global
/* 81332C6C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81332C70 | 7C 08 02 A6 */	mflr r0
/* 81332C74 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81332C78 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81332C7C | 48 2C 68 45 */	bl _savegpr_27
/* 81332C80 | 3F A0 81 63 */	lis r29, _f_data@ha
/* 81332C84 | 3B BD 41 20 */	addi r29, r29, _f_data@l
/* 81332C88 | 48 2C 50 3D */	bl fn_815F7CC4
/* 81332C8C | 3C C0 00 CC */	lis r6, 0xcc
/* 81332C90 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81332C94 | 3C 06 FF E0 */	subis r0, r6, 0x20
/* 81332C98 | 3C 80 80 08 */	lis r4, 0x8008
/* 81332C9C | 3B DF 90 08 */	addi r30, r31, smArg__Q23ipl6System@l
/* 81332CA0 | 3C 60 80 D4 */	lis r3, 0x80d4
/* 81332CA4 | 7C 04 02 14 */	add r0, r4, r0
/* 81332CA8 | 90 9E 02 14 */	stw r4, 0x214(r30)
/* 81332CAC | 3C 80 00 34 */	lis r4, 0x34
/* 81332CB0 | 38 A0 00 02 */	li r5, 0x2
/* 81332CB4 | 90 DE 02 18 */	stw r6, 0x218(r30)
/* 81332CB8 | 90 1E 00 30 */	stw r0, 0x30(r30)
/* 81332CBC | 48 2C 49 21 */	bl fn_815F75DC
/* 81332CC0 | 90 7F 90 08 */	stw r3, smArg__Q23ipl6System@l(r31)
/* 81332CC4 | 3C 60 81 08 */	lis r3, 0x8108
/* 81332CC8 | 48 1F A6 F9 */	bl fn_8152D3C0
/* 81332CCC | 3C 60 81 08 */	lis r3, 0x8108
/* 81332CD0 | 48 1F A6 D9 */	bl fn_8152D3A8
/* 81332CD4 | 48 1F A6 C5 */	bl fn_8152D398
/* 81332CD8 | 7C 7F 1B 78 */	mr r31, r3
/* 81332CDC | 48 1F A6 A5 */	bl fn_8152D380
/* 81332CE0 | 38 1F 00 1F */	addi r0, r31, 0x1f
/* 81332CE4 | 54 7B 00 34 */	clrrwi r27, r3, 5
/* 81332CE8 | 54 1C 00 34 */	clrrwi r28, r0, 5
/* 81332CEC | 38 7D 00 00 */	addi r3, r29, 0x0
/* 81332CF0 | 7F 84 E3 78 */	mr r4, r28
/* 81332CF4 | 7F 65 DB 78 */	mr r5, r27
/* 81332CF8 | 4C C6 31 82 */	crclr cr1eq
/* 81332CFC | 48 1F B9 A5 */	bl OSReport
/* 81332D00 | 48 1F E6 01 */	bl fn_81531300
/* 81332D04 | 3C 03 FC 00 */	subis r0, r3, 0x400
/* 81332D08 | 28 00 00 00 */	cmplwi r0, 0x0
/* 81332D0C | 41 82 00 14 */	beq .L_81332D20
/* 81332D10 | 48 1F E6 09 */	bl fn_81531318
/* 81332D14 | 3C 03 FC 00 */	subis r0, r3, 0x400
/* 81332D18 | 28 00 00 00 */	cmplwi r0, 0x0
/* 81332D1C | 40 82 00 80 */	bne .L_81332D9C
.L_81332D20:
/* 81332D20 | 3F 7B FF F4 */	subis r27, r27, 0xc
/* 81332D24 | 3C 80 00 0C */	lis r4, 0xc
/* 81332D28 | 7F 63 DB 78 */	mr r3, r27
/* 81332D2C | 38 A0 00 02 */	li r5, 0x2
/* 81332D30 | 48 2C 48 AD */	bl fn_815F75DC
/* 81332D34 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81332D38 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81332D3C | 90 7F 00 2C */	stw r3, 0x2c(r31)
/* 81332D40 | 38 7D 00 13 */	addi r3, r29, 0x13
/* 81332D44 | 4C C6 31 82 */	crclr cr1eq
/* 81332D48 | 48 1F B9 59 */	bl OSReport
/* 81332D4C | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 81332D50 | 38 80 00 04 */	li r4, 0x4
/* 81332D54 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81332D58 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 81332D5C | 7D 89 03 A6 */	mtctr r12
/* 81332D60 | 4E 80 04 21 */	bctrl
/* 81332D64 | 80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 81332D68 | 7C 65 1B 78 */	mr r5, r3
/* 81332D6C | 38 7D 00 32 */	addi r3, r29, 0x32
/* 81332D70 | 4C C6 31 82 */	crclr cr1eq
/* 81332D74 | 48 1F B9 2D */	bl OSReport
/* 81332D78 | 38 7D 00 13 */	addi r3, r29, 0x13
/* 81332D7C | 4C C6 31 82 */	crclr cr1eq
/* 81332D80 | 48 1F B9 21 */	bl OSReport
/* 81332D84 | 7F 83 E3 78 */	mr r3, r28
/* 81332D88 | 7C 9C D8 50 */	subf r4, r28, r27
/* 81332D8C | 38 A0 00 02 */	li r5, 0x2
/* 81332D90 | 48 2C 48 4D */	bl fn_815F75DC
/* 81332D94 | 90 7F 00 04 */	stw r3, 0x4(r31)
/* 81332D98 | 48 00 00 74 */	b .L_81332E0C
.L_81332D9C:
/* 81332D9C | 3C 60 93 44 */	lis r3, 0x9344
/* 81332DA0 | 3C 80 00 0C */	lis r4, 0xc
/* 81332DA4 | 38 A0 00 02 */	li r5, 0x2
/* 81332DA8 | 48 2C 48 35 */	bl fn_815F75DC
/* 81332DAC | 90 7E 00 2C */	stw r3, 0x2c(r30)
/* 81332DB0 | 38 7D 00 13 */	addi r3, r29, 0x13
/* 81332DB4 | 4C C6 31 82 */	crclr cr1eq
/* 81332DB8 | 48 1F B8 E9 */	bl OSReport
/* 81332DBC | 80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 81332DC0 | 38 80 00 04 */	li r4, 0x4
/* 81332DC4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81332DC8 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 81332DCC | 7D 89 03 A6 */	mtctr r12
/* 81332DD0 | 4E 80 04 21 */	bctrl
/* 81332DD4 | 80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 81332DD8 | 7C 65 1B 78 */	mr r5, r3
/* 81332DDC | 38 7D 00 32 */	addi r3, r29, 0x32
/* 81332DE0 | 4C C6 31 82 */	crclr cr1eq
/* 81332DE4 | 48 1F B8 BD */	bl OSReport
/* 81332DE8 | 38 7D 00 13 */	addi r3, r29, 0x13
/* 81332DEC | 4C C6 31 82 */	crclr cr1eq
/* 81332DF0 | 48 1F B8 B1 */	bl OSReport
/* 81332DF4 | 3C 00 93 44 */	lis r0, 0x9344
/* 81332DF8 | 7F 83 E3 78 */	mr r3, r28
/* 81332DFC | 7C 9C 00 50 */	subf r4, r28, r0
/* 81332E00 | 38 A0 00 02 */	li r5, 0x2
/* 81332E04 | 48 2C 47 D9 */	bl fn_815F75DC
/* 81332E08 | 90 7E 00 04 */	stw r3, 0x4(r30)
.L_81332E0C:
/* 81332E0C | 7F 63 DB 78 */	mr r3, r27
/* 81332E10 | 48 1F A5 B9 */	bl fn_8152D3C8
/* 81332E14 | 7F 63 DB 78 */	mr r3, r27
/* 81332E18 | 48 1F A5 99 */	bl fn_8152D3B0
/* 81332E1C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81332E20 | 48 2C 66 ED */	bl _restgpr_27
/* 81332E24 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81332E28 | 7C 08 03 A6 */	mtlr r0
/* 81332E2C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81332E30 | 4E 80 00 20 */	blr
.endfn createRootHeap___Q23ipl6SystemFv

# .text:0x210 | 0x81332E34 | size: 0x64
# ipl::System::createMem1AppHeap()
.fn createMem1AppHeap__Q23ipl6SystemFv, global
/* 81332E34 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81332E38 | 7C 08 02 A6 */	mflr r0
/* 81332E3C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81332E40 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81332E44 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81332E48 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81332E4C | 80 1F 00 24 */	lwz r0, 0x24(r31)
/* 81332E50 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81332E54 | 40 82 00 24 */	bne .L_81332E78
/* 81332E58 | 80 7F 02 14 */	lwz r3, 0x214(r31)
/* 81332E5C | 80 9F 02 18 */	lwz r4, 0x218(r31)
/* 81332E60 | 48 1F AA A9 */	bl DCInvalidateRange
/* 81332E64 | 80 7F 02 14 */	lwz r3, 0x214(r31)
/* 81332E68 | 38 A0 00 06 */	li r5, 0x6
/* 81332E6C | 80 9F 02 18 */	lwz r4, 0x218(r31)
/* 81332E70 | 48 2C 47 6D */	bl fn_815F75DC
/* 81332E74 | 90 7F 00 24 */	stw r3, 0x24(r31)
.L_81332E78:
/* 81332E78 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81332E7C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81332E80 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81332E84 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81332E88 | 80 63 00 24 */	lwz r3, 0x24(r3)
/* 81332E8C | 7C 08 03 A6 */	mtlr r0
/* 81332E90 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81332E94 | 4E 80 00 20 */	blr
.endfn createMem1AppHeap__Q23ipl6SystemFv

# .text:0x274 | 0x81332E98 | size: 0x64
# ipl::System::destroyMem1AppHeap()
.fn destroyMem1AppHeap__Q23ipl6SystemFv, global
/* 81332E98 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81332E9C | 7C 08 02 A6 */	mflr r0
/* 81332EA0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81332EA4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81332EA8 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81332EAC | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81332EB0 | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 81332EB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81332EB8 | 41 82 00 20 */	beq .L_81332ED8
/* 81332EBC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81332EC0 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81332EC4 | 7D 89 03 A6 */	mtctr r12
/* 81332EC8 | 4E 80 04 21 */	bctrl
/* 81332ECC | 80 7F 02 14 */	lwz r3, 0x214(r31)
/* 81332ED0 | 80 9F 02 18 */	lwz r4, 0x218(r31)
/* 81332ED4 | 48 1F AA 35 */	bl DCInvalidateRange
.L_81332ED8:
/* 81332ED8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81332EDC | 38 00 00 00 */	li r0, 0x0
/* 81332EE0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81332EE4 | 90 03 00 24 */	stw r0, 0x24(r3)
/* 81332EE8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81332EEC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81332EF0 | 7C 08 03 A6 */	mtlr r0
/* 81332EF4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81332EF8 | 4E 80 00 20 */	blr
.endfn destroyMem1AppHeap__Q23ipl6SystemFv

# .text:0x2D8 | 0x81332EFC | size: 0x134
# ipl::System::createAppHeap_()
.fn createAppHeap___Q23ipl6SystemFv, global
/* 81332EFC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81332F00 | 7C 08 02 A6 */	mflr r0
/* 81332F04 | 3C 60 01 20 */	lis r3, 0x120
/* 81332F08 | 38 A0 00 06 */	li r5, 0x6
/* 81332F0C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81332F10 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81332F14 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81332F18 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81332F1C | 3B DF 90 08 */	addi r30, r31, smArg__Q23ipl6System@l
/* 81332F20 | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 81332F24 | 48 2C 47 51 */	bl create__Q23EGG7ExpHeapFUlPQ23EGG4HeapUs
/* 81332F28 | 90 7E 00 0C */	stw r3, 0xc(r30)
/* 81332F2C | 3C 60 00 69 */	lis r3, 0x69
/* 81332F30 | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 81332F34 | 38 63 60 00 */	addi r3, r3, 0x6000
/* 81332F38 | 38 A0 00 06 */	li r5, 0x6
/* 81332F3C | 48 2C 47 39 */	bl create__Q23EGG7ExpHeapFUlPQ23EGG4HeapUs
/* 81332F40 | 90 7E 00 10 */	stw r3, 0x10(r30)
/* 81332F44 | 3C 60 00 32 */	lis r3, 0x32
/* 81332F48 | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 81332F4C | 38 63 58 00 */	addi r3, r3, 0x5800
/* 81332F50 | 38 A0 00 02 */	li r5, 0x2
/* 81332F54 | 48 2C 47 21 */	bl create__Q23EGG7ExpHeapFUlPQ23EGG4HeapUs
/* 81332F58 | 90 7E 00 14 */	stw r3, 0x14(r30)
/* 81332F5C | 3C 60 00 1C */	lis r3, 0x1c
/* 81332F60 | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 81332F64 | 38 63 A4 00 */	subi r3, r3, 0x5c00
/* 81332F68 | 38 A0 00 06 */	li r5, 0x6
/* 81332F6C | 48 2C 47 09 */	bl create__Q23EGG7ExpHeapFUlPQ23EGG4HeapUs
/* 81332F70 | 90 7E 00 18 */	stw r3, 0x18(r30)
/* 81332F74 | 3C 60 00 20 */	lis r3, 0x20
/* 81332F78 | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 81332F7C | 38 A0 00 06 */	li r5, 0x6
/* 81332F80 | 48 2C 46 F5 */	bl create__Q23EGG7ExpHeapFUlPQ23EGG4HeapUs
/* 81332F84 | 38 00 00 00 */	li r0, 0x0
/* 81332F88 | 90 7E 00 38 */	stw r3, 0x38(r30)
/* 81332F8C | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 81332F90 | 3C 60 00 10 */	lis r3, 0x10
/* 81332F94 | 90 1E 00 1C */	stw r0, 0x1c(r30)
/* 81332F98 | 38 A0 00 06 */	li r5, 0x6
/* 81332F9C | 48 2C 46 D9 */	bl create__Q23EGG7ExpHeapFUlPQ23EGG4HeapUs
/* 81332FA0 | 90 7E 00 20 */	stw r3, 0x20(r30)
/* 81332FA4 | 38 60 FF FF */	li r3, -0x1
/* 81332FA8 | 80 9F 90 08 */	lwz r4, smArg__Q23ipl6System@l(r31)
/* 81332FAC | 38 A0 00 06 */	li r5, 0x6
/* 81332FB0 | 48 2C 46 C5 */	bl create__Q23EGG7ExpHeapFUlPQ23EGG4HeapUs
/* 81332FB4 | 90 7E 00 08 */	stw r3, 0x8(r30)
/* 81332FB8 | 3F E0 81 63 */	lis r31, lbl_81634133@ha
/* 81332FBC | 38 7F 41 33 */	addi r3, r31, lbl_81634133@l
/* 81332FC0 | 4C C6 31 82 */	crclr cr1eq
/* 81332FC4 | 48 1F B6 DD */	bl OSReport
/* 81332FC8 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 81332FCC | 38 80 00 04 */	li r4, 0x4
/* 81332FD0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81332FD4 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 81332FD8 | 7D 89 03 A6 */	mtctr r12
/* 81332FDC | 4E 80 04 21 */	bctrl
/* 81332FE0 | 80 9E 00 08 */	lwz r4, 0x8(r30)
/* 81332FE4 | 3C C0 81 63 */	lis r6, lbl_8163416D@ha
/* 81332FE8 | 7C 65 1B 78 */	mr r5, r3
/* 81332FEC | 38 66 41 6D */	addi r3, r6, lbl_8163416D@l
/* 81332FF0 | 4C C6 31 82 */	crclr cr1eq
/* 81332FF4 | 48 1F B6 AD */	bl OSReport
/* 81332FF8 | 38 7F 41 33 */	addi r3, r31, lbl_81634133@l
/* 81332FFC | 4C C6 31 82 */	crclr cr1eq
/* 81333000 | 48 1F B6 A1 */	bl OSReport
/* 81333004 | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 81333008 | 38 60 FF FF */	li r3, -0x1
/* 8133300C | 38 A0 00 06 */	li r5, 0x6
/* 81333010 | 48 2C 46 65 */	bl create__Q23EGG7ExpHeapFUlPQ23EGG4HeapUs
/* 81333014 | 90 7E 00 28 */	stw r3, 0x28(r30)
/* 81333018 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133301C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81333020 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81333024 | 7C 08 03 A6 */	mtlr r0
/* 81333028 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133302C | 4E 80 00 20 */	blr
.endfn createAppHeap___Q23ipl6SystemFv

# .text:0x40C | 0x81333030 | size: 0x9C
# ipl::System::constructFontSub_(void*)
.fn constructFontSub___Q23ipl6SystemFPv, global
/* 81333030 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81333034 | 7C 08 02 A6 */	mflr r0
/* 81333038 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8133303C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81333040 | 48 2C 64 85 */	bl _savegpr_28
/* 81333044 | 7C 7C 1B 78 */	mr r28, r3
/* 81333048 | 38 82 9C 08 */	li r4, lbl_81696008@sda21
/* 8133304C | 48 1E 33 05 */	bl fn_81516350
/* 81333050 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81333054 | 38 03 00 1F */	addi r0, r3, 0x1f
/* 81333058 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8133305C | 7C 7E 1B 78 */	mr r30, r3
/* 81333060 | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 81333064 | 54 03 00 34 */	clrrwi r3, r0, 5
/* 81333068 | 38 A0 00 20 */	li r5, 0x20
/* 8133306C | 48 2C 50 69 */	bl __nwa__FUlPQ23EGG4Heapi
/* 81333070 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 81333074 | 7C 7D 1B 78 */	mr r29, r3
/* 81333078 | 38 60 00 1C */	li r3, 0x1c
/* 8133307C | 38 A0 00 04 */	li r5, 0x4
/* 81333080 | 48 2C 50 31 */	bl __nw__FUlPQ23EGG4Heapi
/* 81333084 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81333088 | 7C 7F 1B 78 */	mr r31, r3
/* 8133308C | 41 82 00 0C */	beq .L_81333098
/* 81333090 | 48 1E 32 2D */	bl fn_815162BC
/* 81333094 | 7C 7F 1B 78 */	mr r31, r3
.L_81333098:
/* 81333098 | 7F E3 FB 78 */	mr r3, r31
/* 8133309C | 7F A4 EB 78 */	mr r4, r29
/* 813330A0 | 7F C5 F3 78 */	mr r5, r30
/* 813330A4 | 7F 86 E3 78 */	mr r6, r28
/* 813330A8 | 38 E2 9C 08 */	li r7, lbl_81696008@sda21
/* 813330AC | 48 1E 38 DD */	bl fn_81516988
/* 813330B0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813330B4 | 7F E3 FB 78 */	mr r3, r31
/* 813330B8 | 48 2C 64 59 */	bl _restgpr_28
/* 813330BC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813330C0 | 7C 08 03 A6 */	mtlr r0
/* 813330C4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813330C8 | 4E 80 00 20 */	blr
.endfn constructFontSub___Q23ipl6SystemFPv

# .text:0x4A8 | 0x813330CC | size: 0xE8
# ipl::System::loadFont_()
.fn loadFont___Q23ipl6SystemFv, global
/* 813330CC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813330D0 | 7C 08 02 A6 */	mflr r0
/* 813330D4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813330D8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813330DC | 48 2C 63 ED */	bl _savegpr_29
/* 813330E0 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813330E4 | 3F A0 81 63 */	lis r29, _f_data@ha
/* 813330E8 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813330EC | 3C 80 00 40 */	lis r4, 0x40
/* 813330F0 | 80 7E 00 28 */	lwz r3, 0x28(r30)
/* 813330F4 | 3B BD 41 20 */	addi r29, r29, _f_data@l
/* 813330F8 | 38 A0 FF E0 */	li r5, -0x20
/* 813330FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81333100 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81333104 | 7D 89 03 A6 */	mtctr r12
/* 81333108 | 4E 80 04 21 */	bctrl
/* 8133310C | 90 7E 02 10 */	stw r3, 0x210(r30)
/* 81333110 | 3C 80 00 40 */	lis r4, 0x40
/* 81333114 | 38 A0 00 00 */	li r5, 0x0
/* 81333118 | 48 2C 44 C5 */	bl fn_815F75DC
/* 8133311C | 90 7E 00 34 */	stw r3, 0x34(r30)
/* 81333120 | 38 BD 00 67 */	addi r5, r29, 0x67
/* 81333124 | 80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 81333128 | 38 C0 00 00 */	li r6, 0x0
/* 8133312C | 80 9E 00 0C */	lwz r4, 0xc(r30)
/* 81333130 | 38 E0 00 00 */	li r7, 0x0
/* 81333134 | 39 00 00 00 */	li r8, 0x0
/* 81333138 | 48 00 A3 B1 */	bl readAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciUlb
/* 8133313C | 90 7E 00 EC */	stw r3, 0xec(r30)
/* 81333140 | 3B E0 00 00 */	li r31, 0x0
/* 81333144 | 38 BD 00 76 */	addi r5, r29, 0x76
/* 81333148 | 38 C0 00 05 */	li r6, 0x5
/* 8133314C | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 81333150 | 38 E0 00 00 */	li r7, 0x0
/* 81333154 | 39 00 00 00 */	li r8, 0x0
/* 81333158 | 39 40 00 02 */	li r10, 0x2
/* 8133315C | 80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 81333160 | 39 20 00 01 */	li r9, 0x1
/* 81333164 | 80 9E 00 34 */	lwz r4, 0x34(r30)
/* 81333168 | 48 00 A5 2D */	bl readSharedAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciiUlUxi
/* 8133316C | 90 7E 00 E0 */	stw r3, 0xe0(r30)
/* 81333170 | 38 BD 00 81 */	addi r5, r29, 0x81
/* 81333174 | 38 C0 00 05 */	li r6, 0x5
/* 81333178 | 38 E0 00 00 */	li r7, 0x0
/* 8133317C | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 81333180 | 39 00 00 00 */	li r8, 0x0
/* 81333184 | 39 40 00 02 */	li r10, 0x2
/* 81333188 | 39 20 00 01 */	li r9, 0x1
/* 8133318C | 80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 81333190 | 80 9E 00 34 */	lwz r4, 0x34(r30)
/* 81333194 | 48 00 A5 01 */	bl readSharedAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciiUlUxi
/* 81333198 | 90 7E 00 E8 */	stw r3, 0xe8(r30)
/* 8133319C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813331A0 | 48 2C 63 75 */	bl _restgpr_29
/* 813331A4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813331A8 | 7C 08 03 A6 */	mtlr r0
/* 813331AC | 38 21 00 20 */	addi r1, r1, 0x20
/* 813331B0 | 4E 80 00 20 */	blr
.endfn loadFont___Q23ipl6SystemFv

# .text:0x590 | 0x813331B4 | size: 0x84
# ipl::System::constructFont_(void*)
.fn constructFont___Q23ipl6SystemFPv, global
/* 813331B4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813331B8 | 7C 08 02 A6 */	mflr r0
/* 813331BC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813331C0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813331C4 | 48 20 2A D5 */	bl OSGetTick
/* 813331C8 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813331CC | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813331D0 | 80 7F 00 E0 */	lwz r3, 0xe0(r31)
/* 813331D4 | 80 63 00 A0 */	lwz r3, 0xa0(r3)
/* 813331D8 | 4B FF FE 59 */	bl constructFontSub___Q23ipl6SystemFPv
/* 813331DC | 90 7F 00 DC */	stw r3, 0xdc(r31)
/* 813331E0 | 80 7F 00 E8 */	lwz r3, 0xe8(r31)
/* 813331E4 | 80 63 00 A0 */	lwz r3, 0xa0(r3)
/* 813331E8 | 4B FF FE 49 */	bl constructFontSub___Q23ipl6SystemFPv
/* 813331EC | 90 7F 00 E4 */	stw r3, 0xe4(r31)
/* 813331F0 | 80 7F 00 34 */	lwz r3, 0x34(r31)
/* 813331F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813331F8 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813331FC | 7D 89 03 A6 */	mtctr r12
/* 81333200 | 4E 80 04 21 */	bctrl
/* 81333204 | 80 7F 00 28 */	lwz r3, 0x28(r31)
/* 81333208 | 80 9F 02 10 */	lwz r4, 0x210(r31)
/* 8133320C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81333210 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81333214 | 7D 89 03 A6 */	mtctr r12
/* 81333218 | 4E 80 04 21 */	bctrl
/* 8133321C | 38 00 00 01 */	li r0, 0x1
/* 81333220 | 98 1F 02 B6 */	stb r0, 0x2b6(r31)
/* 81333224 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81333228 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133322C | 7C 08 03 A6 */	mtlr r0
/* 81333230 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81333234 | 4E 80 00 20 */	blr
.endfn constructFont___Q23ipl6SystemFPv

# .text:0x614 | 0x81333238 | size: 0x74
# ipl::System::constructSND_(void*)
.fn constructSND___Q23ipl6SystemFPv, global
/* 81333238 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133323C | 7C 08 02 A6 */	mflr r0
/* 81333240 | 38 80 00 20 */	li r4, 0x20
/* 81333244 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81333248 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133324C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81333250 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81333254 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81333258 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8133325C | 80 BF 00 F4 */	lwz r5, 0xf4(r31)
/* 81333260 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81333264 | 83 C5 00 A0 */	lwz r30, 0xa0(r5)
/* 81333268 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8133326C | 7D 89 03 A6 */	mtctr r12
/* 81333270 | 4E 80 04 21 */	bctrl
/* 81333274 | 80 BF 00 14 */	lwz r5, 0x14(r31)
/* 81333278 | 3C E0 81 09 */	lis r7, sSystem__Q23ipl3snd@ha
/* 8133327C | 7C 66 1B 78 */	mr r6, r3
/* 81333280 | 7F C4 F3 78 */	mr r4, r30
/* 81333284 | 38 67 99 2C */	addi r3, r7, sSystem__Q23ipl3snd@l
/* 81333288 | 48 03 7F F9 */	bl initOnMemory__Q33ipl3snd6SystemFPCvPQ23EGG4HeapUl
/* 8133328C | 38 00 00 01 */	li r0, 0x1
/* 81333290 | 98 1F 02 B7 */	stb r0, 0x2b7(r31)
/* 81333294 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81333298 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133329C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813332A0 | 7C 08 03 A6 */	mtlr r0
/* 813332A4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813332A8 | 4E 80 00 20 */	blr
.endfn constructSND___Q23ipl6SystemFPv

# .text:0x688 | 0x813332AC | size: 0x6C
.fn iplSystem_813332AC, local
/* 813332AC | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813332B0 | 7C 08 02 A6 */	mflr r0
/* 813332B4 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813332B8 | 93 E1 00 3C */	stw r31, 0x3c(r1)
/* 813332BC | 3B E0 00 00 */	li r31, 0x0
/* 813332C0 | 93 C1 00 38 */	stw r30, 0x38(r1)
/* 813332C4 | 7C 9E 23 78 */	mr r30, r4
/* 813332C8 | 38 81 00 14 */	addi r4, r1, 0x14
/* 813332CC | 48 23 DA D5 */	bl ARCInitHandle
/* 813332D0 | 7F C4 F3 78 */	mr r4, r30
/* 813332D4 | 38 61 00 14 */	addi r3, r1, 0x14
/* 813332D8 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813332DC | 48 23 DB 65 */	bl ARCOpen
/* 813332E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813332E4 | 41 82 00 18 */	beq .L_813332FC
/* 813332E8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813332EC | 48 23 E2 95 */	bl ARCGetStartAddrInMem
/* 813332F0 | 7C 7F 1B 78 */	mr r31, r3
/* 813332F4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813332F8 | 48 23 E2 AD */	bl ARCClose
.L_813332FC:
/* 813332FC | 7F E3 FB 78 */	mr r3, r31
/* 81333300 | 83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 81333304 | 83 C1 00 38 */	lwz r30, 0x38(r1)
/* 81333308 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8133330C | 7C 08 03 A6 */	mtlr r0
/* 81333310 | 38 21 00 40 */	addi r1, r1, 0x40
/* 81333314 | 4E 80 00 20 */	blr
.endfn iplSystem_813332AC

# .text:0x6F4 | 0x81333318 | size: 0xBC
# ipl::System::constructZiDIC_(void*)
.fn constructZiDIC___Q23ipl6SystemFPv, global
/* 81333318 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133331C | 7C 08 02 A6 */	mflr r0
/* 81333320 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81333324 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81333328 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8133332C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81333330 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81333334 | 3F C0 81 63 */	lis r30, _f_data@ha
/* 81333338 | 3B DE 41 20 */	addi r30, r30, _f_data@l
/* 8133333C | 80 7F 01 78 */	lwz r3, 0x178(r31)
/* 81333340 | 38 9E 00 8C */	addi r4, r30, 0x8c
/* 81333344 | 80 63 00 A0 */	lwz r3, 0xa0(r3)
/* 81333348 | 4B FF FF 65 */	bl iplSystem_813332AC
/* 8133334C | 90 7F 01 90 */	stw r3, 0x190(r31)
/* 81333350 | 38 9E 00 9E */	addi r4, r30, 0x9e
/* 81333354 | 80 7F 01 78 */	lwz r3, 0x178(r31)
/* 81333358 | 80 63 00 A0 */	lwz r3, 0xa0(r3)
/* 8133335C | 4B FF FF 51 */	bl iplSystem_813332AC
/* 81333360 | 90 7F 01 AC */	stw r3, 0x1ac(r31)
/* 81333364 | 38 9E 00 B0 */	addi r4, r30, 0xb0
/* 81333368 | 80 7F 01 78 */	lwz r3, 0x178(r31)
/* 8133336C | 80 63 00 A0 */	lwz r3, 0xa0(r3)
/* 81333370 | 4B FF FF 3D */	bl iplSystem_813332AC
/* 81333374 | 90 7F 01 A8 */	stw r3, 0x1a8(r31)
/* 81333378 | 38 9E 00 C2 */	addi r4, r30, 0xc2
/* 8133337C | 80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 81333380 | 80 63 00 A0 */	lwz r3, 0xa0(r3)
/* 81333384 | 4B FF FF 29 */	bl iplSystem_813332AC
/* 81333388 | 90 7F 01 B8 */	stw r3, 0x1b8(r31)
/* 8133338C | 38 9E 00 D6 */	addi r4, r30, 0xd6
/* 81333390 | 80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 81333394 | 80 63 00 A0 */	lwz r3, 0xa0(r3)
/* 81333398 | 4B FF FF 15 */	bl iplSystem_813332AC
/* 8133339C | 90 7F 01 D4 */	stw r3, 0x1d4(r31)
/* 813333A0 | 38 9E 00 EA */	addi r4, r30, 0xea
/* 813333A4 | 80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 813333A8 | 80 63 00 A0 */	lwz r3, 0xa0(r3)
/* 813333AC | 4B FF FF 01 */	bl iplSystem_813332AC
/* 813333B0 | 38 00 00 01 */	li r0, 0x1
/* 813333B4 | 90 7F 01 D0 */	stw r3, 0x1d0(r31)
/* 813333B8 | 98 1F 02 B8 */	stb r0, 0x2b8(r31)
/* 813333BC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813333C0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813333C4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813333C8 | 7C 08 03 A6 */	mtlr r0
/* 813333CC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813333D0 | 4E 80 00 20 */	blr
.endfn constructZiDIC___Q23ipl6SystemFPv

# .text:0x7B0 | 0x813333D4 | size: 0x34
# ipl::System::resourceLoaded_(void*)
.fn resourceLoaded___Q23ipl6SystemFPv, global
/* 813333D4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813333D8 | 7C 08 02 A6 */	mflr r0
/* 813333DC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813333E0 | 48 1F D4 A5 */	bl OSDisableInterrupts
/* 813333E4 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813333E8 | 38 00 00 01 */	li r0, 0x1
/* 813333EC | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813333F0 | 98 04 02 B0 */	stb r0, 0x2b0(r4)
/* 813333F4 | 48 1F D4 B9 */	bl OSRestoreInterrupts
/* 813333F8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813333FC | 7C 08 03 A6 */	mtlr r0
/* 81333400 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81333404 | 4E 80 00 20 */	blr
.endfn resourceLoaded___Q23ipl6SystemFPv

# .text:0x7E4 | 0x81333408 | size: 0x34
# ipl::System::libraryInitialized_(void*)
.fn libraryInitialized___Q23ipl6SystemFPv, global
/* 81333408 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133340C | 7C 08 02 A6 */	mflr r0
/* 81333410 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81333414 | 48 1F D4 71 */	bl OSDisableInterrupts
/* 81333418 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8133341C | 38 00 00 01 */	li r0, 0x1
/* 81333420 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81333424 | 98 04 02 B3 */	stb r0, 0x2b3(r4)
/* 81333428 | 48 1F D4 85 */	bl OSRestoreInterrupts
/* 8133342C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81333430 | 7C 08 03 A6 */	mtlr r0
/* 81333434 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81333438 | 4E 80 00 20 */	blr
.endfn libraryInitialized___Q23ipl6SystemFPv

# .text:0x818 | 0x8133343C | size: 0x178
# ipl::System::createFolders_(void*)
.fn createFolders___Q23ipl6SystemFPv, global
/* 8133343C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81333440 | 7C 08 02 A6 */	mflr r0
/* 81333444 | 38 A0 00 20 */	li r5, 0x20
/* 81333448 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133344C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81333450 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81333454 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81333458 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8133345C | 3F C0 00 01 */	lis r30, 0x1
/* 81333460 | 38 7E 40 00 */	addi r3, r30, 0x4000
/* 81333464 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 81333468 | 48 2C 4C 6D */	bl __nwa__FUlPQ23EGG4Heapi
/* 8133346C | 38 9E 40 00 */	addi r4, r30, 0x4000
/* 81333470 | 48 19 C8 C9 */	bl VFInitEx
/* 81333474 | 3C 60 00 06 */	lis r3, 0x6
/* 81333478 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 8133347C | 38 63 CE 40 */	subi r3, r3, 0x31c0
/* 81333480 | 38 A0 00 40 */	li r5, 0x40
/* 81333484 | 48 2C 4C 51 */	bl __nwa__FUlPQ23EGG4Heapi
/* 81333488 | 7C 7E 1B 78 */	mr r30, r3
/* 8133348C | 48 23 72 65 */	bl fn_8156A6F0
/* 81333490 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81333494 | 40 82 00 18 */	bne .L_813334AC
/* 81333498 | 48 23 72 9D */	bl fn_8156A734
/* 8133349C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813334A0 | 40 82 00 0C */	bne .L_813334AC
/* 813334A4 | 38 6D 80 20 */	li r3, lbl_81696060@sda21
/* 813334A8 | 48 02 CC 01 */	bl Delete__Q33ipl4nand7wrapperFPCc
.L_813334AC:
/* 813334AC | 7F C3 F3 78 */	mr r3, r30
/* 813334B0 | 48 00 D0 D5 */	bl init__Q33ipl3cdb7wrapperFPv
/* 813334B4 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813334B8 | 38 80 00 04 */	li r4, 0x4
/* 813334BC | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813334C0 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813334C4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813334C8 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813334CC | 7D 89 03 A6 */	mtctr r12
/* 813334D0 | 4E 80 04 21 */	bctrl
/* 813334D4 | 3C A0 81 63 */	lis r5, lbl_8163421E@ha
/* 813334D8 | 7C 64 1B 78 */	mr r4, r3
/* 813334DC | 38 65 42 1E */	addi r3, r5, lbl_8163421E@l
/* 813334E0 | 38 A0 40 00 */	li r5, 0x4000
/* 813334E4 | 4C C6 31 82 */	crclr cr1eq
/* 813334E8 | 48 1F B1 B9 */	bl OSReport
/* 813334EC | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 813334F0 | 38 60 40 00 */	li r3, 0x4000
/* 813334F4 | 38 A0 FF E0 */	li r5, -0x20
/* 813334F8 | 48 2C 4B DD */	bl __nwa__FUlPQ23EGG4Heapi
/* 813334FC | 7C 7E 1B 78 */	mr r30, r3
/* 81333500 | 48 23 71 F1 */	bl fn_8156A6F0
/* 81333504 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81333508 | 40 82 00 20 */	bne .L_81333528
/* 8133350C | 48 23 72 29 */	bl fn_8156A734
/* 81333510 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81333514 | 40 82 00 14 */	bne .L_81333528
/* 81333518 | 7F C3 F3 78 */	mr r3, r30
/* 8133351C | 38 80 00 01 */	li r4, 0x1
/* 81333520 | 48 16 D1 3D */	bl NWC24InitFiles
/* 81333524 | 48 00 00 60 */	b .L_81333584
.L_81333528:
/* 81333528 | 48 23 72 0D */	bl fn_8156A734
/* 8133352C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81333530 | 40 82 00 14 */	bne .L_81333544
/* 81333534 | 7F C3 F3 78 */	mr r3, r30
/* 81333538 | 38 80 00 00 */	li r4, 0x0
/* 8133353C | 48 16 D1 21 */	bl NWC24InitFiles
/* 81333540 | 48 00 00 44 */	b .L_81333584
.L_81333544:
/* 81333544 | 7F C3 F3 78 */	mr r3, r30
/* 81333548 | 48 16 CA CD */	bl NWC24OpenLib
/* 8133354C | 7C 7F 1B 78 */	mr r31, r3
/* 81333550 | 48 16 CC D1 */	bl NWC24CloseLib
/* 81333554 | 2C 1F FF F2 */	cmpwi r31, -0xe
/* 81333558 | 41 82 00 10 */	beq .L_81333568
/* 8133355C | 38 1F 00 15 */	addi r0, r31, 0x15
/* 81333560 | 28 00 00 05 */	cmplwi r0, 0x5
/* 81333564 | 41 81 00 20 */	bgt .L_81333584
.L_81333568:
/* 81333568 | 7F C3 F3 78 */	mr r3, r30
/* 8133356C | 38 80 00 00 */	li r4, 0x0
/* 81333570 | 48 16 D0 ED */	bl NWC24InitFiles
/* 81333574 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81333578 | 38 00 00 01 */	li r0, 0x1
/* 8133357C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81333580 | 98 03 02 BA */	stb r0, 0x2ba(r3)
.L_81333584:
/* 81333584 | 7F C3 F3 78 */	mr r3, r30
/* 81333588 | 48 2C 4B 65 */	bl __dla__FPv
/* 8133358C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81333590 | 38 00 00 00 */	li r0, 0x0
/* 81333594 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81333598 | 98 03 02 B9 */	stb r0, 0x2b9(r3)
/* 8133359C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813335A0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813335A4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813335A8 | 7C 08 03 A6 */	mtlr r0
/* 813335AC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813335B0 | 4E 80 00 20 */	blr
.endfn createFolders___Q23ipl6SystemFPv

# .text:0x990 | 0x813335B4 | size: 0x1C
# ipl::System::requestCreateInstance(void*)
.fn requestCreateInstance__Q23ipl6SystemFPv, global
/* 813335B4 | 3C C0 81 09 */	lis r6, smArg__Q23ipl6System@ha
/* 813335B8 | 7C 64 1B 78 */	mr r4, r3
/* 813335BC | 38 C6 90 08 */	addi r6, r6, smArg__Q23ipl6System@l
/* 813335C0 | 38 A0 00 00 */	li r5, 0x0
/* 813335C4 | 80 66 00 D0 */	lwz r3, 0xd0(r6)
/* 813335C8 | 38 C0 00 00 */	li r6, 0x0
/* 813335CC | 48 2C 4C 7C */	b fn_815F8248
.endfn requestCreateInstance__Q23ipl6SystemFPv

# .text:0x9AC | 0x813335D0 | size: 0x3DC
# ipl::System::loadResource_(void*)
.fn loadResource___Q23ipl6SystemFPv, global
/* 813335D0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813335D4 | 7C 08 02 A6 */	mflr r0
/* 813335D8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813335DC | 39 61 00 30 */	addi r11, r1, 0x30
/* 813335E0 | 48 2C 5E E1 */	bl _savegpr_27
/* 813335E4 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 813335E8 | 3F 80 81 63 */	lis r28, _f_data@ha
/* 813335EC | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 813335F0 | 83 DD 00 08 */	lwz r30, 0x8(r29)
/* 813335F4 | 3B 9C 41 20 */	addi r28, r28, _f_data@l
/* 813335F8 | 48 1F D2 8D */	bl OSDisableInterrupts
/* 813335FC | 7C 7F 1B 78 */	mr r31, r3
/* 81333600 | 7F C3 F3 78 */	mr r3, r30
/* 81333604 | 48 2C 4A 89 */	bl fn_815F808C
/* 81333608 | 7F C4 F3 78 */	mr r4, r30
/* 8133360C | 38 60 00 00 */	li r3, 0x0
/* 81333610 | 48 20 25 31 */	bl OSSetThreadSpecific
/* 81333614 | 7F E3 FB 78 */	mr r3, r31
/* 81333618 | 48 1F D2 95 */	bl OSRestoreInterrupts
/* 8133361C | 4B FF FA B1 */	bl loadFont___Q23ipl6SystemFv
/* 81333620 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 81333624 | 3F C0 81 33 */	lis r30, requestCreateInstance__Q23ipl6SystemFPv@ha
/* 81333628 | 3C A0 81 33 */	lis r5, constructFont___Q23ipl6SystemFPv@ha
/* 8133362C | 38 C0 00 00 */	li r6, 0x0
/* 81333630 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81333634 | 38 9E 35 B4 */	addi r4, r30, requestCreateInstance__Q23ipl6SystemFPv@l
/* 81333638 | 38 A5 31 B4 */	addi r5, r5, constructFont___Q23ipl6SystemFPv@l
/* 8133363C | 48 2C 4C 0D */	bl fn_815F8248
/* 81333640 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 81333644 | 38 BC 01 1D */	addi r5, r28, 0x11d
/* 81333648 | 80 9D 00 14 */	lwz r4, 0x14(r29)
/* 8133364C | 38 C0 00 00 */	li r6, 0x0
/* 81333650 | 38 E0 00 00 */	li r7, 0x0
/* 81333654 | 39 00 00 00 */	li r8, 0x0
/* 81333658 | 48 00 9E 91 */	bl readAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciUlb
/* 8133365C | 90 7D 00 F4 */	stw r3, 0xf4(r29)
/* 81333660 | 3C A0 81 33 */	lis r5, constructSND___Q23ipl6SystemFPv@ha
/* 81333664 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 81333668 | 38 9E 35 B4 */	addi r4, r30, requestCreateInstance__Q23ipl6SystemFPv@l
/* 8133366C | 38 A5 32 38 */	addi r5, r5, constructSND___Q23ipl6SystemFPv@l
/* 81333670 | 38 C0 00 00 */	li r6, 0x0
/* 81333674 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81333678 | 48 2C 4B D1 */	bl fn_815F8248
/* 8133367C | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 81333680 | 38 BC 01 33 */	addi r5, r28, 0x133
/* 81333684 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 81333688 | 38 C0 00 00 */	li r6, 0x0
/* 8133368C | 38 E0 00 00 */	li r7, 0x0
/* 81333690 | 39 00 00 00 */	li r8, 0x0
/* 81333694 | 48 00 9E 55 */	bl readAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciUlb
/* 81333698 | 90 7D 00 F8 */	stw r3, 0xf8(r29)
/* 8133369C | 83 7D 00 6C */	lwz r27, 0x6c(r29)
/* 813336A0 | 48 1A 78 F1 */	bl RFLGetArcFilePath
/* 813336A4 | 3B E0 00 00 */	li r31, 0x0
/* 813336A8 | 7C 65 1B 78 */	mr r5, r3
/* 813336AC | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 813336B0 | 7F 63 DB 78 */	mr r3, r27
/* 813336B4 | 38 C0 00 04 */	li r6, 0x4
/* 813336B8 | 38 E0 00 00 */	li r7, 0x0
/* 813336BC | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 813336C0 | 39 00 00 00 */	li r8, 0x0
/* 813336C4 | 39 40 00 02 */	li r10, 0x2
/* 813336C8 | 39 20 00 01 */	li r9, 0x1
/* 813336CC | 48 00 9F C9 */	bl readSharedAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciiUlUxi
/* 813336D0 | 90 7D 01 00 */	stw r3, 0x100(r29)
/* 813336D4 | 38 BC 01 4F */	addi r5, r28, 0x14f
/* 813336D8 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 813336DC | 38 C0 00 00 */	li r6, 0x0
/* 813336E0 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 813336E4 | 38 E0 00 00 */	li r7, 0x0
/* 813336E8 | 39 00 00 00 */	li r8, 0x0
/* 813336EC | 48 00 9D FD */	bl readAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciUlb
/* 813336F0 | 90 7D 01 04 */	stw r3, 0x104(r29)
/* 813336F4 | 38 BC 01 6B */	addi r5, r28, 0x16b
/* 813336F8 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 813336FC | 38 C0 00 00 */	li r6, 0x0
/* 81333700 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 81333704 | 38 E0 00 00 */	li r7, 0x0
/* 81333708 | 39 00 00 00 */	li r8, 0x0
/* 8133370C | 48 00 9D DD */	bl readAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciUlb
/* 81333710 | 90 7D 01 08 */	stw r3, 0x108(r29)
/* 81333714 | 38 BC 01 84 */	addi r5, r28, 0x184
/* 81333718 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 8133371C | 38 C0 00 00 */	li r6, 0x0
/* 81333720 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 81333724 | 38 E0 00 00 */	li r7, 0x0
/* 81333728 | 39 00 00 00 */	li r8, 0x0
/* 8133372C | 48 00 9D BD */	bl readAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciUlb
/* 81333730 | 90 7D 01 0C */	stw r3, 0x10c(r29)
/* 81333734 | 38 BC 01 9D */	addi r5, r28, 0x19d
/* 81333738 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 8133373C | 38 C0 00 00 */	li r6, 0x0
/* 81333740 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 81333744 | 38 E0 00 00 */	li r7, 0x0
/* 81333748 | 39 00 00 00 */	li r8, 0x0
/* 8133374C | 48 00 9D 9D */	bl readAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciUlb
/* 81333750 | 90 7D 01 10 */	stw r3, 0x110(r29)
/* 81333754 | 38 BC 01 B6 */	addi r5, r28, 0x1b6
/* 81333758 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 8133375C | 38 C0 00 00 */	li r6, 0x0
/* 81333760 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 81333764 | 38 E0 00 00 */	li r7, 0x0
/* 81333768 | 39 00 00 00 */	li r8, 0x0
/* 8133376C | 48 00 9D 7D */	bl readAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciUlb
/* 81333770 | 90 7D 01 14 */	stw r3, 0x114(r29)
/* 81333774 | 38 BC 01 CF */	addi r5, r28, 0x1cf
/* 81333778 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 8133377C | 38 C0 00 00 */	li r6, 0x0
/* 81333780 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 81333784 | 38 E0 00 00 */	li r7, 0x0
/* 81333788 | 39 00 00 00 */	li r8, 0x0
/* 8133378C | 48 00 9D 5D */	bl readAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciUlb
/* 81333790 | 90 7D 01 18 */	stw r3, 0x118(r29)
/* 81333794 | 38 BC 01 E8 */	addi r5, r28, 0x1e8
/* 81333798 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 8133379C | 38 C0 00 00 */	li r6, 0x0
/* 813337A0 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 813337A4 | 38 E0 00 00 */	li r7, 0x0
/* 813337A8 | 39 00 00 00 */	li r8, 0x0
/* 813337AC | 48 00 9D 3D */	bl readAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciUlb
/* 813337B0 | 90 7D 01 1C */	stw r3, 0x11c(r29)
/* 813337B4 | 38 BC 02 01 */	addi r5, r28, 0x201
/* 813337B8 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 813337BC | 38 C0 00 00 */	li r6, 0x0
/* 813337C0 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 813337C4 | 38 E0 00 00 */	li r7, 0x0
/* 813337C8 | 39 00 00 00 */	li r8, 0x0
/* 813337CC | 48 00 9D 1D */	bl readAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciUlb
/* 813337D0 | 90 7D 01 20 */	stw r3, 0x120(r29)
/* 813337D4 | 38 BC 02 1A */	addi r5, r28, 0x21a
/* 813337D8 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 813337DC | 38 C0 00 00 */	li r6, 0x0
/* 813337E0 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 813337E4 | 38 E0 00 00 */	li r7, 0x0
/* 813337E8 | 39 00 00 00 */	li r8, 0x0
/* 813337EC | 48 00 9C FD */	bl readAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciUlb
/* 813337F0 | 90 7D 01 2C */	stw r3, 0x12c(r29)
/* 813337F4 | 38 BC 02 33 */	addi r5, r28, 0x233
/* 813337F8 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 813337FC | 38 C0 00 00 */	li r6, 0x0
/* 81333800 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 81333804 | 38 E0 00 00 */	li r7, 0x0
/* 81333808 | 39 00 00 00 */	li r8, 0x0
/* 8133380C | 48 00 9C DD */	bl readAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciUlb
/* 81333810 | 90 7D 01 24 */	stw r3, 0x124(r29)
/* 81333814 | 38 BC 02 4C */	addi r5, r28, 0x24c
/* 81333818 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 8133381C | 38 C0 00 00 */	li r6, 0x0
/* 81333820 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 81333824 | 38 E0 00 00 */	li r7, 0x0
/* 81333828 | 39 00 00 00 */	li r8, 0x0
/* 8133382C | 48 00 9C BD */	bl readAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciUlb
/* 81333830 | 90 7D 01 5C */	stw r3, 0x15c(r29)
/* 81333834 | 38 BC 02 61 */	addi r5, r28, 0x261
/* 81333838 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 8133383C | 38 C0 00 00 */	li r6, 0x0
/* 81333840 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 81333844 | 38 E0 00 00 */	li r7, 0x0
/* 81333848 | 39 00 00 00 */	li r8, 0x0
/* 8133384C | 48 00 9C 9D */	bl readAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciUlb
/* 81333850 | 90 7D 01 60 */	stw r3, 0x160(r29)
/* 81333854 | 38 BC 02 78 */	addi r5, r28, 0x278
/* 81333858 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 8133385C | 38 C0 00 00 */	li r6, 0x0
/* 81333860 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 81333864 | 38 E0 00 00 */	li r7, 0x0
/* 81333868 | 39 00 00 00 */	li r8, 0x0
/* 8133386C | 48 00 9C 7D */	bl readAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciUlb
/* 81333870 | 90 7D 01 64 */	stw r3, 0x164(r29)
/* 81333874 | 38 BC 02 92 */	addi r5, r28, 0x292
/* 81333878 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 8133387C | 38 C0 00 00 */	li r6, 0x0
/* 81333880 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 81333884 | 38 E0 00 00 */	li r7, 0x0
/* 81333888 | 39 00 00 00 */	li r8, 0x0
/* 8133388C | 48 00 9C 5D */	bl readAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciUlb
/* 81333890 | 90 7D 01 68 */	stw r3, 0x168(r29)
/* 81333894 | 38 BC 02 AE */	addi r5, r28, 0x2ae
/* 81333898 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 8133389C | 38 C0 00 00 */	li r6, 0x0
/* 813338A0 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 813338A4 | 48 00 A0 11 */	bl readLayoutAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcb
/* 813338A8 | 90 7D 01 8C */	stw r3, 0x18c(r29)
/* 813338AC | 38 BC 02 B9 */	addi r5, r28, 0x2b9
/* 813338B0 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 813338B4 | 38 C0 00 00 */	li r6, 0x0
/* 813338B8 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 813338BC | 38 E0 00 00 */	li r7, 0x0
/* 813338C0 | 39 00 00 00 */	li r8, 0x0
/* 813338C4 | 48 00 9C 25 */	bl readAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciUlb
/* 813338C8 | 90 7D 01 80 */	stw r3, 0x180(r29)
/* 813338CC | 38 BC 02 CA */	addi r5, r28, 0x2ca
/* 813338D0 | 38 C0 00 06 */	li r6, 0x6
/* 813338D4 | 38 E0 00 00 */	li r7, 0x0
/* 813338D8 | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 813338DC | 39 00 00 00 */	li r8, 0x0
/* 813338E0 | 39 40 00 02 */	li r10, 0x2
/* 813338E4 | 39 20 00 01 */	li r9, 0x1
/* 813338E8 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 813338EC | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 813338F0 | 48 00 9D A5 */	bl readSharedAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciiUlUxi
/* 813338F4 | 90 7D 01 78 */	stw r3, 0x178(r29)
/* 813338F8 | 38 BC 02 DA */	addi r5, r28, 0x2da
/* 813338FC | 38 C0 00 07 */	li r6, 0x7
/* 81333900 | 38 E0 00 00 */	li r7, 0x0
/* 81333904 | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 81333908 | 39 00 00 00 */	li r8, 0x0
/* 8133390C | 39 40 00 02 */	li r10, 0x2
/* 81333910 | 39 20 00 01 */	li r9, 0x1
/* 81333914 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 81333918 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 8133391C | 48 00 9D 79 */	bl readSharedAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciiUlUxi
/* 81333920 | 90 7D 01 7C */	stw r3, 0x17c(r29)
/* 81333924 | 3C A0 81 33 */	lis r5, constructZiDIC___Q23ipl6SystemFPv@ha
/* 81333928 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 8133392C | 38 9E 35 B4 */	addi r4, r30, requestCreateInstance__Q23ipl6SystemFPv@l
/* 81333930 | 38 A5 33 18 */	addi r5, r5, constructZiDIC___Q23ipl6SystemFPv@l
/* 81333934 | 38 C0 00 00 */	li r6, 0x0
/* 81333938 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8133393C | 48 2C 49 0D */	bl fn_815F8248
/* 81333940 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 81333944 | 3C 80 81 33 */	lis r4, resourceLoaded___Q23ipl6SystemFPv@ha
/* 81333948 | 38 84 33 D4 */	addi r4, r4, resourceLoaded___Q23ipl6SystemFPv@l
/* 8133394C | 38 A0 00 00 */	li r5, 0x0
/* 81333950 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81333954 | 38 C0 00 00 */	li r6, 0x0
/* 81333958 | 48 2C 48 F1 */	bl fn_815F8248
/* 8133395C | 38 00 00 01 */	li r0, 0x1
/* 81333960 | 3C 80 81 33 */	lis r4, createFolders___Q23ipl6SystemFPv@ha
/* 81333964 | 98 1D 02 B9 */	stb r0, 0x2b9(r29)
/* 81333968 | 38 84 34 3C */	addi r4, r4, createFolders___Q23ipl6SystemFPv@l
/* 8133396C | 80 7D 00 D4 */	lwz r3, 0xd4(r29)
/* 81333970 | 38 A0 00 00 */	li r5, 0x0
/* 81333974 | 38 C0 00 00 */	li r6, 0x0
/* 81333978 | 48 2C 48 D1 */	bl fn_815F8248
/* 8133397C | 3C 80 81 33 */	lis r4, libraryInitialized___Q23ipl6SystemFPv@ha
/* 81333980 | 80 7D 00 D4 */	lwz r3, 0xd4(r29)
/* 81333984 | 38 84 34 08 */	addi r4, r4, libraryInitialized___Q23ipl6SystemFPv@l
/* 81333988 | 38 A0 00 00 */	li r5, 0x0
/* 8133398C | 38 C0 00 00 */	li r6, 0x0
/* 81333990 | 48 2C 48 B9 */	bl fn_815F8248
/* 81333994 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81333998 | 48 2C 5B 75 */	bl _restgpr_27
/* 8133399C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813339A0 | 7C 08 03 A6 */	mtlr r0
/* 813339A4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813339A8 | 4E 80 00 20 */	blr
.endfn loadResource___Q23ipl6SystemFPv

# .text:0xD88 | 0x813339AC | size: 0x1E8
# ipl::System::createAfter_(void*)
.fn createAfter___Q23ipl6SystemFPv, global
/* 813339AC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813339B0 | 7C 08 02 A6 */	mflr r0
/* 813339B4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813339B8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813339BC | 48 2C 5B 09 */	bl _savegpr_28
/* 813339C0 | 38 60 00 00 */	li r3, 0x0
/* 813339C4 | 48 20 21 AD */	bl OSGetThreadSpecific
/* 813339C8 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813339CC | 7C 7C 1B 78 */	mr r28, r3
/* 813339D0 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813339D4 | 83 DF 00 08 */	lwz r30, 0x8(r31)
/* 813339D8 | 48 1F CE AD */	bl OSDisableInterrupts
/* 813339DC | 7C 7D 1B 78 */	mr r29, r3
/* 813339E0 | 7F C3 F3 78 */	mr r3, r30
/* 813339E4 | 48 2C 46 A9 */	bl fn_815F808C
/* 813339E8 | 7F C4 F3 78 */	mr r4, r30
/* 813339EC | 38 60 00 00 */	li r3, 0x0
/* 813339F0 | 48 20 21 51 */	bl OSSetThreadSpecific
/* 813339F4 | 7F A3 EB 78 */	mr r3, r29
/* 813339F8 | 48 1F CE B5 */	bl OSRestoreInterrupts
/* 813339FC | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 81333A00 | 38 60 00 9C */	li r3, 0x9c
/* 81333A04 | 38 A0 00 04 */	li r5, 0x4
/* 81333A08 | 48 2C 46 A9 */	bl __nw__FUlPQ23EGG4Heapi
/* 81333A0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81333A10 | 7C 60 1B 78 */	mr r0, r3
/* 81333A14 | 41 82 00 10 */	beq .L_81333A24
/* 81333A18 | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 81333A1C | 48 01 0D FD */	bl __ct__Q23ipl12DialogWindowFPQ23EGG4Heap
/* 81333A20 | 7C 60 1B 78 */	mr r0, r3
.L_81333A24:
/* 81333A24 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81333A28 | 38 60 00 0C */	li r3, 0xc
/* 81333A2C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81333A30 | 38 A0 00 04 */	li r5, 0x4
/* 81333A34 | 90 1F 00 AC */	stw r0, 0xac(r31)
/* 81333A38 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 81333A3C | 48 2C 46 75 */	bl __nw__FUlPQ23EGG4Heapi
/* 81333A40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81333A44 | 7C 60 1B 78 */	mr r0, r3
/* 81333A48 | 41 82 00 10 */	beq .L_81333A58
/* 81333A4C | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 81333A50 | 48 02 32 FD */	bl __ct__Q23ipl14WarningHandlerFPQ23EGG4Heap
/* 81333A54 | 7C 60 1B 78 */	mr r0, r3
.L_81333A58:
/* 81333A58 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81333A5C | 38 60 00 14 */	li r3, 0x14
/* 81333A60 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81333A64 | 38 A0 00 04 */	li r5, 0x4
/* 81333A68 | 90 1F 00 A0 */	stw r0, 0xa0(r31)
/* 81333A6C | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 81333A70 | 48 2C 46 41 */	bl __nw__FUlPQ23EGG4Heapi
/* 81333A74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81333A78 | 7C 60 1B 78 */	mr r0, r3
/* 81333A7C | 41 82 00 10 */	beq .L_81333A8C
/* 81333A80 | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 81333A84 | 48 00 AF 01 */	bl __ct__Q33ipl6nigaoe7ManagerFPQ23EGG4Heap
/* 81333A88 | 7C 60 1B 78 */	mr r0, r3
.L_81333A8C:
/* 81333A8C | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81333A90 | 38 60 00 3C */	li r3, 0x3c
/* 81333A94 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81333A98 | 38 A0 00 04 */	li r5, 0x4
/* 81333A9C | 90 04 00 70 */	stw r0, 0x70(r4)
/* 81333AA0 | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 81333AA4 | 48 2C 46 0D */	bl __nw__FUlPQ23EGG4Heapi
/* 81333AA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81333AAC | 41 82 00 30 */	beq .L_81333ADC
/* 81333AB0 | 3C A0 81 64 */	lis r5, __vt__Q33ipl8keyboard7Manager@ha
/* 81333AB4 | 3C 80 81 64 */	lis r4, __vt__Q33ipl8keyboard13EventObserver@ha
/* 81333AB8 | 38 A5 8D F0 */	addi r5, r5, __vt__Q33ipl8keyboard7Manager@l
/* 81333ABC | 38 00 00 00 */	li r0, 0x0
/* 81333AC0 | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 81333AC4 | 38 84 8E 3C */	addi r4, r4, __vt__Q33ipl8keyboard13EventObserver@l
/* 81333AC8 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 81333ACC | 90 83 00 08 */	stw r4, 0x8(r3)
/* 81333AD0 | 90 03 00 20 */	stw r0, 0x20(r3)
/* 81333AD4 | 98 03 00 2C */	stb r0, 0x2c(r3)
/* 81333AD8 | 90 03 00 38 */	stw r0, 0x38(r3)
.L_81333ADC:
/* 81333ADC | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81333AE0 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81333AE4 | 90 7F 00 90 */	stw r3, 0x90(r31)
/* 81333AE8 | 80 9F 00 F8 */	lwz r4, 0xf8(r31)
/* 81333AEC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81333AF0 | 80 BF 00 0C */	lwz r5, 0xc(r31)
/* 81333AF4 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 81333AF8 | 7D 89 03 A6 */	mtctr r12
/* 81333AFC | 4E 80 04 21 */	bctrl
/* 81333B00 | 80 7F 00 90 */	lwz r3, 0x90(r31)
/* 81333B04 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81333B08 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81333B0C | 7D 89 03 A6 */	mtctr r12
/* 81333B10 | 4E 80 04 21 */	bctrl
/* 81333B14 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 81333B18 | 38 60 00 74 */	li r3, 0x74
/* 81333B1C | 38 A0 00 04 */	li r5, 0x4
/* 81333B20 | 48 2C 45 91 */	bl __nw__FUlPQ23EGG4Heapi
/* 81333B24 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81333B28 | 41 82 00 0C */	beq .L_81333B34
/* 81333B2C | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 81333B30 | 48 01 40 3D */	bl __ct__Q23ipl14HomeButtonMenuFPQ23EGG4Heap
.L_81333B34:
/* 81333B34 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81333B38 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81333B3C | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81333B40 | 90 64 00 B4 */	stw r3, 0xb4(r4)
/* 81333B44 | 41 82 00 28 */	beq .L_81333B6C
/* 81333B48 | 48 1F CD 3D */	bl OSDisableInterrupts
/* 81333B4C | 7C 7D 1B 78 */	mr r29, r3
/* 81333B50 | 7F 83 E3 78 */	mr r3, r28
/* 81333B54 | 48 2C 45 39 */	bl fn_815F808C
/* 81333B58 | 7F 84 E3 78 */	mr r4, r28
/* 81333B5C | 38 60 00 00 */	li r3, 0x0
/* 81333B60 | 48 20 1F E1 */	bl OSSetThreadSpecific
/* 81333B64 | 7F A3 EB 78 */	mr r3, r29
/* 81333B68 | 48 1F CD 45 */	bl OSRestoreInterrupts
.L_81333B6C:
/* 81333B6C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81333B70 | 38 00 00 01 */	li r0, 0x1
/* 81333B74 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81333B78 | 98 03 02 B2 */	stb r0, 0x2b2(r3)
/* 81333B7C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81333B80 | 48 2C 59 91 */	bl _restgpr_28
/* 81333B84 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81333B88 | 7C 08 03 A6 */	mtlr r0
/* 81333B8C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81333B90 | 4E 80 00 20 */	blr
.endfn createAfter___Q23ipl6SystemFPv

# .text:0xF70 | 0x81333B94 | size: 0xF4
# ipl::System::createLibManager_()
.fn createLibManager___Q23ipl6SystemFv, global
/* 81333B94 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81333B98 | 7C 08 02 A6 */	mflr r0
/* 81333B9C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81333BA0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81333BA4 | 48 2C 59 21 */	bl _savegpr_28
/* 81333BA8 | 38 60 00 00 */	li r3, 0x0
/* 81333BAC | 48 20 1F C5 */	bl OSGetThreadSpecific
/* 81333BB0 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81333BB4 | 7C 7C 1B 78 */	mr r28, r3
/* 81333BB8 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81333BBC | 83 DF 00 08 */	lwz r30, 0x8(r31)
/* 81333BC0 | 48 1F CC C5 */	bl OSDisableInterrupts
/* 81333BC4 | 7C 7D 1B 78 */	mr r29, r3
/* 81333BC8 | 7F C3 F3 78 */	mr r3, r30
/* 81333BCC | 48 2C 44 C1 */	bl fn_815F808C
/* 81333BD0 | 7F C4 F3 78 */	mr r4, r30
/* 81333BD4 | 38 60 00 00 */	li r3, 0x0
/* 81333BD8 | 48 20 1F 69 */	bl OSSetThreadSpecific
/* 81333BDC | 7F A3 EB 78 */	mr r3, r29
/* 81333BE0 | 48 1F CC CD */	bl OSRestoreInterrupts
/* 81333BE4 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 81333BE8 | 38 60 00 3C */	li r3, 0x3c
/* 81333BEC | 38 A0 00 04 */	li r5, 0x4
/* 81333BF0 | 48 2C 44 C1 */	bl __nw__FUlPQ23EGG4Heapi
/* 81333BF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81333BF8 | 7C 60 1B 78 */	mr r0, r3
/* 81333BFC | 41 82 00 10 */	beq .L_81333C0C
/* 81333C00 | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 81333C04 | 48 00 B4 65 */	bl __ct__Q33ipl3cdb7ManagerFPQ23EGG4Heap
/* 81333C08 | 7C 60 1B 78 */	mr r0, r3
.L_81333C0C:
/* 81333C0C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81333C10 | 38 60 0A 34 */	li r3, 0xa34
/* 81333C14 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81333C18 | 38 A0 00 04 */	li r5, 0x4
/* 81333C1C | 90 1F 00 7C */	stw r0, 0x7c(r31)
/* 81333C20 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 81333C24 | 48 2C 44 8D */	bl __nw__FUlPQ23EGG4Heapi
/* 81333C28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81333C2C | 41 82 00 0C */	beq .L_81333C38
/* 81333C30 | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 81333C34 | 48 00 DD 49 */	bl __ct__Q33ipl5nwc247ManagerFPQ23EGG4Heap
.L_81333C38:
/* 81333C38 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81333C3C | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81333C40 | 90 64 00 8C */	stw r3, 0x8c(r4)
/* 81333C44 | 80 64 00 70 */	lwz r3, 0x70(r4)
/* 81333C48 | 48 00 B1 21 */	bl commitHiddenDB__Q33ipl6nigaoe7ManagerFv
/* 81333C4C | 48 1F CC 39 */	bl OSDisableInterrupts
/* 81333C50 | 7C 7D 1B 78 */	mr r29, r3
/* 81333C54 | 7F 83 E3 78 */	mr r3, r28
/* 81333C58 | 48 2C 44 35 */	bl fn_815F808C
/* 81333C5C | 7F 84 E3 78 */	mr r4, r28
/* 81333C60 | 38 60 00 00 */	li r3, 0x0
/* 81333C64 | 48 20 1E DD */	bl OSSetThreadSpecific
/* 81333C68 | 7F A3 EB 78 */	mr r3, r29
/* 81333C6C | 48 1F CC 41 */	bl OSRestoreInterrupts
/* 81333C70 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81333C74 | 48 2C 58 9D */	bl _restgpr_28
/* 81333C78 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81333C7C | 7C 08 03 A6 */	mtlr r0
/* 81333C80 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81333C84 | 4E 80 00 20 */	blr
.endfn createLibManager___Q23ipl6SystemFv

# .text:0x1064 | 0x81333C88 | size: 0x38
# ipl::System::stopReceiveSchedule()
.fn stopReceiveSchedule__Q23ipl6SystemFv, global
/* 81333C88 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81333C8C | 7C 08 02 A6 */	mflr r0
/* 81333C90 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81333C94 | 48 00 00 2D */	bl isPostmanResumed__Q23ipl6SystemFv
/* 81333C98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81333C9C | 41 82 00 14 */	beq .L_81333CB0
/* 81333CA0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81333CA4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81333CA8 | 80 63 00 A4 */	lwz r3, 0xa4(r3)
/* 81333CAC | 48 02 36 55 */	bl Send_Pause__Q33ipl7postman7ManagerFv
.L_81333CB0:
/* 81333CB0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81333CB4 | 7C 08 03 A6 */	mtlr r0
/* 81333CB8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81333CBC | 4E 80 00 20 */	blr
.endfn stopReceiveSchedule__Q23ipl6SystemFv

# .text:0x109C | 0x81333CC0 | size: 0x2C
# ipl::System::isPostmanResumed()
.fn isPostmanResumed__Q23ipl6SystemFv, global
/* 81333CC0 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81333CC4 | 38 60 00 00 */	li r3, 0x0
/* 81333CC8 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81333CCC | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 81333CD0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81333CD4 | 4C 82 00 20 */	bnelr
/* 81333CD8 | 88 04 02 BB */	lbz r0, 0x2bb(r4)
/* 81333CDC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81333CE0 | 4C 82 00 20 */	bnelr
/* 81333CE4 | 38 60 00 01 */	li r3, 0x1
/* 81333CE8 | 4E 80 00 20 */	blr
.endfn isPostmanResumed__Q23ipl6SystemFv

# .text:0x10C8 | 0x81333CEC | size: 0x38
# ipl::System::startReceiveSchedule()
.fn startReceiveSchedule__Q23ipl6SystemFv, global
/* 81333CEC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81333CF0 | 7C 08 02 A6 */	mflr r0
/* 81333CF4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81333CF8 | 4B FF FF C9 */	bl isPostmanResumed__Q23ipl6SystemFv
/* 81333CFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81333D00 | 41 82 00 14 */	beq .L_81333D14
/* 81333D04 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81333D08 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81333D0C | 80 63 00 A4 */	lwz r3, 0xa4(r3)
/* 81333D10 | 48 02 36 59 */	bl Send_Start__Q33ipl7postman7ManagerFv
.L_81333D14:
/* 81333D14 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81333D18 | 7C 08 03 A6 */	mtlr r0
/* 81333D1C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81333D20 | 4E 80 00 20 */	blr
.endfn startReceiveSchedule__Q23ipl6SystemFv

# .text:0x1100 | 0x81333D24 | size: 0x38
# ipl::System::getUsbEtherMacAddr()
.fn getUsbEtherMacAddr__Q23ipl6SystemFv, global
/* 81333D24 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81333D28 | 7C 08 02 A6 */	mflr r0
/* 81333D2C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81333D30 | 4B FF FF 91 */	bl isPostmanResumed__Q23ipl6SystemFv
/* 81333D34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81333D38 | 41 82 00 14 */	beq .L_81333D4C
/* 81333D3C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81333D40 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81333D44 | 80 63 00 A4 */	lwz r3, 0xa4(r3)
/* 81333D48 | 48 02 36 89 */	bl Send_GetUsbEtherMacAddr__Q33ipl7postman7ManagerFv
.L_81333D4C:
/* 81333D4C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81333D50 | 7C 08 03 A6 */	mtlr r0
/* 81333D54 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81333D58 | 4E 80 00 20 */	blr
.endfn getUsbEtherMacAddr__Q23ipl6SystemFv

# .text:0x1138 | 0x81333D5C | size: 0x38
# ipl::System::reloadDownloadTask()
.fn reloadDownloadTask__Q23ipl6SystemFv, global
/* 81333D5C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81333D60 | 7C 08 02 A6 */	mflr r0
/* 81333D64 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81333D68 | 4B FF FF 59 */	bl isPostmanResumed__Q23ipl6SystemFv
/* 81333D6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81333D70 | 41 82 00 14 */	beq .L_81333D84
/* 81333D74 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81333D78 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81333D7C | 80 63 00 A4 */	lwz r3, 0xa4(r3)
/* 81333D80 | 48 02 36 69 */	bl Send_DownloadTaskReload__Q33ipl7postman7ManagerFv
.L_81333D84:
/* 81333D84 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81333D88 | 7C 08 03 A6 */	mtlr r0
/* 81333D8C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81333D90 | 4E 80 00 20 */	blr
.endfn reloadDownloadTask__Q23ipl6SystemFv

# .text:0x1170 | 0x81333D94 | size: 0x38
# ipl::System::receiveImmediately()
.fn receiveImmediately__Q23ipl6SystemFv, global
/* 81333D94 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81333D98 | 7C 08 02 A6 */	mflr r0
/* 81333D9C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81333DA0 | 4B FF FF 21 */	bl isPostmanResumed__Q23ipl6SystemFv
/* 81333DA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81333DA8 | 41 82 00 14 */	beq .L_81333DBC
/* 81333DAC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81333DB0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81333DB4 | 80 63 00 A4 */	lwz r3, 0xa4(r3)
/* 81333DB8 | 48 02 35 31 */	bl Send_ReceiveImmediately__Q33ipl7postman7ManagerFv
.L_81333DBC:
/* 81333DBC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81333DC0 | 7C 08 03 A6 */	mtlr r0
/* 81333DC4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81333DC8 | 4E 80 00 20 */	blr
.endfn receiveImmediately__Q23ipl6SystemFv

# .text:0x11A8 | 0x81333DCC | size: 0x5C
# ipl::System::isReceiveScheduleStopped()
.fn isReceiveScheduleStopped__Q23ipl6SystemFv, global
/* 81333DCC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81333DD0 | 7C 08 02 A6 */	mflr r0
/* 81333DD4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81333DD8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81333DDC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81333DE0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81333DE4 | 3B E0 00 01 */	li r31, 0x1
/* 81333DE8 | 80 63 00 A4 */	lwz r3, 0xa4(r3)
/* 81333DEC | 80 63 03 34 */	lwz r3, 0x334(r3)
/* 81333DF0 | 38 03 FF FE */	subi r0, r3, 0x2
/* 81333DF4 | 7C 00 00 34 */	cntlzw r0, r0
/* 81333DF8 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 81333DFC | 40 82 00 14 */	bne .L_81333E10
/* 81333E00 | 4B FF FE C1 */	bl isPostmanResumed__Q23ipl6SystemFv
/* 81333E04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81333E08 | 41 82 00 08 */	beq .L_81333E10
/* 81333E0C | 3B E0 00 00 */	li r31, 0x0
.L_81333E10:
/* 81333E10 | 7F E3 FB 78 */	mr r3, r31
/* 81333E14 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81333E18 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81333E1C | 7C 08 03 A6 */	mtlr r0
/* 81333E20 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81333E24 | 4E 80 00 20 */	blr
.endfn isReceiveScheduleStopped__Q23ipl6SystemFv

# .text:0x1204 | 0x81333E28 | size: 0x54
# ipl::System::setCurrentHeap(EGG::Heap*)
.fn setCurrentHeap__Q23ipl6SystemFPQ23EGG4Heap, global
/* 81333E28 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81333E2C | 7C 08 02 A6 */	mflr r0
/* 81333E30 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81333E34 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81333E38 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81333E3C | 7C 7E 1B 78 */	mr r30, r3
/* 81333E40 | 48 1F CA 45 */	bl OSDisableInterrupts
/* 81333E44 | 7C 7F 1B 78 */	mr r31, r3
/* 81333E48 | 7F C3 F3 78 */	mr r3, r30
/* 81333E4C | 48 2C 42 41 */	bl fn_815F808C
/* 81333E50 | 7F C4 F3 78 */	mr r4, r30
/* 81333E54 | 38 60 00 00 */	li r3, 0x0
/* 81333E58 | 48 20 1C E9 */	bl OSSetThreadSpecific
/* 81333E5C | 7F E3 FB 78 */	mr r3, r31
/* 81333E60 | 48 1F CA 4D */	bl OSRestoreInterrupts
/* 81333E64 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81333E68 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81333E6C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81333E70 | 7C 08 03 A6 */	mtlr r0
/* 81333E74 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81333E78 | 4E 80 00 20 */	blr
.endfn setCurrentHeap__Q23ipl6SystemFPQ23EGG4Heap

# .text:0x1258 | 0x81333E7C | size: 0x1C
# ipl::System::cbThreadSwitch(OSThread*, OSThread*)
.fn cbThreadSwitch__Q23ipl6SystemFP8OSThreadP8OSThread, global
/* 81333E7C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81333E80 | 4D 82 00 20 */	beqlr
/* 81333E84 | 80 64 03 10 */	lwz r3, 0x310(r4)
/* 81333E88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81333E8C | 4D 82 00 20 */	beqlr
/* 81333E90 | 48 2C 41 FC */	b fn_815F808C
/* 81333E94 | 4E 80 00 20 */	blr
.endfn cbThreadSwitch__Q23ipl6SystemFP8OSThreadP8OSThread

# .text:0x1274 | 0x81333E98 | size: 0x48
.fn iplSystem_81333E98, local
/* 81333E98 | 94 21 EF E0 */	stwu r1, -0x1020(r1)
/* 81333E9C | 7C 08 02 A6 */	mflr r0
/* 81333EA0 | 38 80 00 00 */	li r4, 0x0
/* 81333EA4 | 38 A0 10 08 */	li r5, 0x1008
/* 81333EA8 | 90 01 10 24 */	stw r0, 0x1024(r1)
/* 81333EAC | 93 E1 10 1C */	stw r31, 0x101c(r1)
/* 81333EB0 | 7C 7F 1B 78 */	mr r31, r3
/* 81333EB4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81333EB8 | 4B FF C4 7D */	bl memset
/* 81333EBC | 57 E0 C0 0E */	slwi r0, r31, 24
/* 81333EC0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81333EC4 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81333EC8 | 48 23 67 D9 */	bl fn_8156A6A0
/* 81333ECC | 80 01 10 24 */	lwz r0, 0x1024(r1)
/* 81333ED0 | 83 E1 10 1C */	lwz r31, 0x101c(r1)
/* 81333ED4 | 7C 08 03 A6 */	mtlr r0
/* 81333ED8 | 38 21 10 20 */	addi r1, r1, 0x1020
/* 81333EDC | 4E 80 00 20 */	blr
.endfn iplSystem_81333E98

# .text:0x12BC | 0x81333EE0 | size: 0x20
# ipl::System::checkNandOverFlowFlagAsync()
.fn checkNandOverFlowFlagAsync__Q23ipl6SystemFv, global
/* 81333EE0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81333EE4 | 3C 80 81 34 */	lis r4, throwNandCheckCommand__Q23ipl8nandwallFPv@ha
/* 81333EE8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81333EEC | 38 A0 00 00 */	li r5, 0x0
/* 81333EF0 | 80 63 00 D0 */	lwz r3, 0xd0(r3)
/* 81333EF4 | 38 84 DC 0C */	addi r4, r4, throwNandCheckCommand__Q23ipl8nandwallFPv@l
/* 81333EF8 | 38 C0 00 00 */	li r6, 0x0
/* 81333EFC | 48 2C 43 4C */	b fn_815F8248
.endfn checkNandOverFlowFlagAsync__Q23ipl6SystemFv

# .text:0x12DC | 0x81333F00 | size: 0x44
# ipl::System::setNWC24RegistEnd(long)
.fn setNWC24RegistEnd__Q23ipl6SystemFl, global
/* 81333F00 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81333F04 | 7C 08 02 A6 */	mflr r0
/* 81333F08 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81333F0C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81333F10 | 7C 7F 1B 78 */	mr r31, r3
/* 81333F14 | 48 1F C9 71 */	bl OSDisableInterrupts
/* 81333F18 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81333F1C | 38 00 00 02 */	li r0, 0x2
/* 81333F20 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81333F24 | 90 04 02 C0 */	stw r0, 0x2c0(r4)
/* 81333F28 | 93 E4 02 C4 */	stw r31, 0x2c4(r4)
/* 81333F2C | 48 1F C9 81 */	bl OSRestoreInterrupts
/* 81333F30 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81333F34 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81333F38 | 7C 08 03 A6 */	mtlr r0
/* 81333F3C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81333F40 | 4E 80 00 20 */	blr
.endfn setNWC24RegistEnd__Q23ipl6SystemFl

# .text:0x1320 | 0x81333F44 | size: 0x18
# ipl::System::resetNWC24Regist()
.fn resetNWC24Regist__Q23ipl6SystemFv, global
/* 81333F44 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81333F48 | 38 00 00 00 */	li r0, 0x0
/* 81333F4C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81333F50 | 90 03 02 C0 */	stw r0, 0x2c0(r3)
/* 81333F54 | 90 03 02 C4 */	stw r0, 0x2c4(r3)
/* 81333F58 | 4E 80 00 20 */	blr
.endfn resetNWC24Regist__Q23ipl6SystemFv

# .text:0x1338 | 0x81333F5C | size: 0xB0
# ipl::System::processNWC24Regist()
.fn processNWC24Regist__Q23ipl6SystemFv, global
/* 81333F5C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81333F60 | 7C 08 02 A6 */	mflr r0
/* 81333F64 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81333F68 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81333F6C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81333F70 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81333F74 | 80 1F 02 C0 */	lwz r0, 0x2c0(r31)
/* 81333F78 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81333F7C | 41 82 00 78 */	beq .L_81333FF4
/* 81333F80 | 40 80 00 10 */	bge .L_81333F90
/* 81333F84 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81333F88 | 40 80 00 14 */	bge .L_81333F9C
/* 81333F8C | 48 00 00 68 */	b .L_81333FF4
.L_81333F90:
/* 81333F90 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 81333F94 | 40 80 00 60 */	bge .L_81333FF4
/* 81333F98 | 48 00 00 44 */	b .L_81333FDC
.L_81333F9C:
/* 81333F9C | 3C 60 81 63 */	lis r3, lbl_8163440C@ha
/* 81333FA0 | 38 63 44 0C */	addi r3, r3, lbl_8163440C@l
/* 81333FA4 | 4C C6 31 82 */	crclr cr1eq
/* 81333FA8 | 48 1F A6 F9 */	bl OSReport
/* 81333FAC | 38 60 00 01 */	li r3, 0x1
/* 81333FB0 | 38 00 00 00 */	li r0, 0x0
/* 81333FB4 | 90 7F 02 C0 */	stw r3, 0x2c0(r31)
/* 81333FB8 | 3C 80 81 35 */	lis r4, register_nwc24__Q33ipl7postman7ManagerFPv@ha
/* 81333FBC | 80 7F 00 D4 */	lwz r3, 0xd4(r31)
/* 81333FC0 | 38 84 7B 98 */	addi r4, r4, register_nwc24__Q33ipl7postman7ManagerFPv@l
/* 81333FC4 | 90 1F 02 C4 */	stw r0, 0x2c4(r31)
/* 81333FC8 | 38 A0 00 00 */	li r5, 0x0
/* 81333FCC | 38 C0 00 00 */	li r6, 0x0
/* 81333FD0 | 48 2C 42 79 */	bl fn_815F8248
/* 81333FD4 | 38 60 00 00 */	li r3, 0x0
/* 81333FD8 | 48 00 00 20 */	b .L_81333FF8
.L_81333FDC:
/* 81333FDC | 3C 60 81 63 */	lis r3, lbl_81634428@ha
/* 81333FE0 | 38 63 44 28 */	addi r3, r3, lbl_81634428@l
/* 81333FE4 | 4C C6 31 82 */	crclr cr1eq
/* 81333FE8 | 48 1F A6 B9 */	bl OSReport
/* 81333FEC | 38 60 00 01 */	li r3, 0x1
/* 81333FF0 | 48 00 00 08 */	b .L_81333FF8
.L_81333FF4:
/* 81333FF4 | 38 60 00 00 */	li r3, 0x0
.L_81333FF8:
/* 81333FF8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81333FFC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81334000 | 7C 08 03 A6 */	mtlr r0
/* 81334004 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81334008 | 4E 80 00 20 */	blr
.endfn processNWC24Regist__Q23ipl6SystemFv

# .text:0x13E8 | 0x8133400C | size: 0xAC4
# ipl::System::init(int, char**)
.fn init__Q23ipl6SystemFiPPc, global
/* 8133400C | 94 21 FA 90 */	stwu r1, -0x570(r1)
/* 81334010 | 7C 08 02 A6 */	mflr r0
/* 81334014 | 90 01 05 74 */	stw r0, 0x574(r1)
/* 81334018 | 39 61 05 70 */	addi r11, r1, 0x570
/* 8133401C | 48 2C 54 A1 */	bl _savegpr_26
/* 81334020 | 3C A0 43 30 */	lis r5, 0x4330
/* 81334024 | 38 00 00 01 */	li r0, 0x1
/* 81334028 | 3F E0 81 63 */	lis r31, _f_data@ha
/* 8133402C | 90 A1 05 40 */	stw r5, 0x540(r1)
/* 81334030 | 7C 7D 1B 78 */	mr r29, r3
/* 81334034 | 7C 9E 23 78 */	mr r30, r4
/* 81334038 | 90 A1 05 48 */	stw r5, 0x548(r1)
/* 8133403C | 3B FF 41 20 */	addi r31, r31, _f_data@l
/* 81334040 | 90 0D AF 98 */	stw r0, __OSInIPL@sda21(r0)
/* 81334044 | 48 1F 7F 39 */	bl fn_8152BF7C
/* 81334048 | 38 60 00 00 */	li r3, 0x0
/* 8133404C | 48 04 D3 91 */	bl DVDSetAutoFatalMessaging
/* 81334050 | 48 23 66 A1 */	bl fn_8156A6F0
/* 81334054 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81334058 | 40 82 00 58 */	bne .L_813340B0
/* 8133405C | 48 23 66 D9 */	bl fn_8156A734
/* 81334060 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81334064 | 40 82 00 4C */	bne .L_813340B0
/* 81334068 | 38 7F 03 23 */	addi r3, r31, 0x323
/* 8133406C | 48 02 C3 75 */	bl PrivateDelete__Q33ipl4nand7wrapperFPCc
/* 81334070 | 48 1F C8 15 */	bl OSDisableInterrupts
/* 81334074 | 7C 7B 1B 78 */	mr r27, r3
/* 81334078 | 38 61 00 DE */	addi r3, r1, 0xde
/* 8133407C | 38 80 00 00 */	li r4, 0x0
/* 81334080 | 38 A0 04 61 */	li r5, 0x461
/* 81334084 | 4B FF C2 B1 */	bl memset
/* 81334088 | 38 61 00 DE */	addi r3, r1, 0xde
/* 8133408C | 48 23 62 71 */	bl fn_8156A2FC
/* 81334090 | 7C 7C 1B 78 */	mr r28, r3
/* 81334094 | 48 23 5E 7D */	bl fn_81569F10
/* 81334098 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 8133409C | 41 82 00 0C */	beq .L_813340A8
/* 813340A0 | 38 61 00 DE */	addi r3, r1, 0xde
/* 813340A4 | 48 23 62 65 */	bl fn_8156A308
.L_813340A8:
/* 813340A8 | 7F 63 DB 78 */	mr r3, r27
/* 813340AC | 48 1F C8 01 */	bl OSRestoreInterrupts
.L_813340B0:
/* 813340B0 | 48 23 62 7D */	bl fn_8156A32C
/* 813340B4 | 48 23 62 E1 */	bl fn_8156A394
/* 813340B8 | 48 23 66 39 */	bl fn_8156A6F0
/* 813340BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813340C0 | 40 82 01 68 */	bne .L_81334228
/* 813340C4 | 48 23 66 71 */	bl fn_8156A734
/* 813340C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813340CC | 40 82 01 5C */	bne .L_81334228
/* 813340D0 | 38 61 00 14 */	addi r3, r1, 0x14
/* 813340D4 | 38 80 00 00 */	li r4, 0x0
/* 813340D8 | 38 A0 00 16 */	li r5, 0x16
/* 813340DC | 4B FF C2 59 */	bl memset
/* 813340E0 | 38 61 00 14 */	addi r3, r1, 0x14
/* 813340E4 | 48 23 64 1D */	bl fn_8156A500
/* 813340E8 | 38 60 00 00 */	li r3, 0x0
/* 813340EC | 48 23 5F 1D */	bl fn_8156A008
/* 813340F0 | 38 60 00 00 */	li r3, 0x0
/* 813340F4 | 48 23 63 9D */	bl fn_8156A490
/* 813340F8 | 38 60 00 03 */	li r3, 0x3
/* 813340FC | 48 23 62 99 */	bl fn_8156A394
/* 81334100 | 38 60 00 00 */	li r3, 0x0
/* 81334104 | 48 23 61 3D */	bl fn_8156A240
/* 81334108 | 48 23 60 E5 */	bl fn_8156A1EC
/* 8133410C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 81334110 | 48 20 A6 39 */	bl fn_8153E748
/* 81334114 | 48 23 69 B9 */	bl SCGetProductArea
/* 81334118 | 7C 60 07 74 */	extsb r0, r3
/* 8133411C | 28 00 00 0B */	cmplwi r0, 0xb
/* 81334120 | 41 81 00 94 */	bgt .L_813341B4
/* 81334124 | 3C 80 81 63 */	lis r4, jumptable_816345CC@ha
/* 81334128 | 54 00 10 3A */	slwi r0, r0, 2
/* 8133412C | 38 84 45 CC */	addi r4, r4, jumptable_816345CC@l
/* 81334130 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 81334134 | 7C 89 03 A6 */	mtctr r4
/* 81334138 | 4E 80 04 20 */	bctr
.L_8133413C:
/* 8133413C | 38 60 00 00 */	li r3, 0x0
/* 81334140 | 48 23 60 31 */	bl fn_8156A170
/* 81334144 | 38 60 00 01 */	li r3, 0x1
/* 81334148 | 4B FF FD 51 */	bl iplSystem_81333E98
/* 8133414C | 48 00 00 78 */	b .L_813341C4
.L_81334150:
/* 81334150 | 38 60 00 01 */	li r3, 0x1
/* 81334154 | 48 23 60 1D */	bl fn_8156A170
/* 81334158 | 38 60 00 08 */	li r3, 0x8
/* 8133415C | 4B FF FD 3D */	bl iplSystem_81333E98
/* 81334160 | 48 00 00 64 */	b .L_813341C4
.L_81334164:
/* 81334164 | 38 60 00 01 */	li r3, 0x1
/* 81334168 | 48 23 60 09 */	bl fn_8156A170
/* 8133416C | 38 60 00 40 */	li r3, 0x40
/* 81334170 | 4B FF FD 29 */	bl iplSystem_81333E98
/* 81334174 | 48 00 00 50 */	b .L_813341C4
.L_81334178:
/* 81334178 | 38 60 00 00 */	li r3, 0x0
/* 8133417C | 48 23 5F F5 */	bl fn_8156A170
/* 81334180 | 38 60 00 80 */	li r3, 0x80
/* 81334184 | 4B FF FD 15 */	bl iplSystem_81333E98
/* 81334188 | 48 00 00 3C */	b .L_813341C4
.L_8133418C:
/* 8133418C | 38 60 00 09 */	li r3, 0x9
/* 81334190 | 48 23 5F E1 */	bl fn_8156A170
/* 81334194 | 38 60 00 88 */	li r3, 0x88
/* 81334198 | 4B FF FD 01 */	bl iplSystem_81333E98
/* 8133419C | 48 00 00 28 */	b .L_813341C4
.L_813341A0:
/* 813341A0 | 38 60 00 07 */	li r3, 0x7
/* 813341A4 | 48 23 5F CD */	bl fn_8156A170
/* 813341A8 | 38 60 00 A0 */	li r3, 0xa0
/* 813341AC | 4B FF FC ED */	bl iplSystem_81333E98
/* 813341B0 | 48 00 00 14 */	b .L_813341C4
.L_813341B4:
/* 813341B4 | 38 60 00 01 */	li r3, 0x1
/* 813341B8 | 48 23 5F B9 */	bl fn_8156A170
/* 813341BC | 38 60 00 08 */	li r3, 0x8
/* 813341C0 | 4B FF FC D9 */	bl iplSystem_81333E98
.L_813341C4:
/* 813341C4 | 38 61 00 2C */	addi r3, r1, 0x2c
/* 813341C8 | 38 80 00 00 */	li r4, 0x0
/* 813341CC | 38 A0 00 28 */	li r5, 0x28
/* 813341D0 | 4B FF C1 65 */	bl memset
/* 813341D4 | 38 A0 07 DA */	li r5, 0x7da
/* 813341D8 | 38 80 00 00 */	li r4, 0x0
/* 813341DC | 38 00 00 01 */	li r0, 0x1
/* 813341E0 | 90 A1 00 40 */	stw r5, 0x40(r1)
/* 813341E4 | 38 61 00 2C */	addi r3, r1, 0x2c
/* 813341E8 | 90 81 00 3C */	stw r4, 0x3c(r1)
/* 813341EC | 90 01 00 38 */	stw r0, 0x38(r1)
/* 813341F0 | 48 02 F2 6D */	bl setCalendarTime__Q33ipl7utility8CalendarFP14OSCalendarTime
/* 813341F4 | 38 60 00 58 */	li r3, 0x58
/* 813341F8 | 48 23 62 F5 */	bl fn_8156A4EC
/* 813341FC | 38 61 00 94 */	addi r3, r1, 0x94
/* 81334200 | 38 80 00 00 */	li r4, 0x0
/* 81334204 | 38 A0 00 4A */	li r5, 0x4a
/* 81334208 | 4B FF C1 2D */	bl memset
/* 8133420C | 38 61 00 94 */	addi r3, r1, 0x94
/* 81334210 | 48 23 5F 75 */	bl fn_8156A184
/* 81334214 | 38 60 00 00 */	li r3, 0x0
/* 81334218 | 48 23 64 D1 */	bl fn_8156A6E8
/* 8133421C | 38 60 00 00 */	li r3, 0x0
/* 81334220 | 48 23 61 B9 */	bl fn_8156A3D8
/* 81334224 | 48 00 00 7C */	b .L_813342A0
.L_81334228:
/* 81334228 | 48 23 65 0D */	bl fn_8156A734
/* 8133422C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81334230 | 40 82 00 70 */	bne .L_813342A0
/* 81334234 | 48 23 68 99 */	bl SCGetProductArea
/* 81334238 | 7C 60 07 74 */	extsb r0, r3
/* 8133423C | 28 00 00 0B */	cmplwi r0, 0xb
/* 81334240 | 41 81 00 4C */	bgt .L_8133428C
/* 81334244 | 3C 80 81 63 */	lis r4, jumptable_8163459C@ha
/* 81334248 | 54 00 10 3A */	slwi r0, r0, 2
/* 8133424C | 38 84 45 9C */	addi r4, r4, jumptable_8163459C@l
/* 81334250 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 81334254 | 7C 89 03 A6 */	mtctr r4
/* 81334258 | 4E 80 04 20 */	bctr
.L_8133425C:
/* 8133425C | 38 60 00 01 */	li r3, 0x1
/* 81334260 | 4B FF FC 39 */	bl iplSystem_81333E98
/* 81334264 | 48 00 00 28 */	b .L_8133428C
.L_81334268:
/* 81334268 | 38 60 00 08 */	li r3, 0x8
/* 8133426C | 4B FF FC 2D */	bl iplSystem_81333E98
/* 81334270 | 48 00 00 1C */	b .L_8133428C
.L_81334274:
/* 81334274 | 38 60 00 80 */	li r3, 0x80
/* 81334278 | 4B FF FC 21 */	bl iplSystem_81333E98
.L_8133427C:
/* 8133427C | 38 60 00 88 */	li r3, 0x88
/* 81334280 | 4B FF FC 19 */	bl iplSystem_81333E98
.L_81334284:
/* 81334284 | 38 60 00 A0 */	li r3, 0xa0
/* 81334288 | 4B FF FC 11 */	bl iplSystem_81333E98
.L_8133428C:
/* 8133428C | 38 60 00 00 */	li r3, 0x0
/* 81334290 | 48 23 5F B1 */	bl fn_8156A240
/* 81334294 | 48 23 5F 59 */	bl fn_8156A1EC
/* 81334298 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8133429C | 48 20 A4 AD */	bl fn_8153E748
.L_813342A0:
/* 813342A0 | 48 23 56 AD */	bl fn_8156994C
/* 813342A4 | 48 20 19 F5 */	bl OSGetTick
/* 813342A8 | 38 60 00 00 */	li r3, 0x0
/* 813342AC | 48 00 99 61 */	bl throwNandCheckCommand__Q23ipl8nandwallFPv
/* 813342B0 | 4B FF E9 BD */	bl createRootHeap___Q23ipl6SystemFv
/* 813342B4 | 4B FF EC 49 */	bl createAppHeap___Q23ipl6SystemFv
/* 813342B8 | 3F 80 81 09 */	lis r28, smArg__Q23ipl6System@ha
/* 813342BC | 38 80 30 00 */	li r4, 0x3000
/* 813342C0 | 3B 9C 90 08 */	addi r28, r28, smArg__Q23ipl6System@l
/* 813342C4 | 38 A0 00 20 */	li r5, 0x20
/* 813342C8 | 80 7C 00 08 */	lwz r3, 0x8(r28)
/* 813342CC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813342D0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813342D4 | 7D 89 03 A6 */	mtctr r12
/* 813342D8 | 4E 80 04 21 */	bctrl
/* 813342DC | 90 6D AC B0 */	stw r3, pBSWaveBuffer@sda21(r0)
/* 813342E0 | 3C 60 81 33 */	lis r3, cbThreadSwitch__Q23ipl6SystemFP8OSThreadP8OSThread@ha
/* 813342E4 | 38 63 3E 7C */	addi r3, r3, cbThreadSwitch__Q23ipl6SystemFP8OSThreadP8OSThread@l
/* 813342E8 | 48 1F F9 75 */	bl fn_81533C5C
/* 813342EC | 83 7C 00 08 */	lwz r27, 0x8(r28)
/* 813342F0 | 48 1F C5 95 */	bl OSDisableInterrupts
/* 813342F4 | 7C 7A 1B 78 */	mr r26, r3
/* 813342F8 | 7F 63 DB 78 */	mr r3, r27
/* 813342FC | 48 2C 3D 91 */	bl fn_815F808C
/* 81334300 | 7F 64 DB 78 */	mr r4, r27
/* 81334304 | 38 60 00 00 */	li r3, 0x0
/* 81334308 | 48 20 18 39 */	bl OSSetThreadSpecific
/* 8133430C | 7F 43 D3 78 */	mr r3, r26
/* 81334310 | 48 1F C5 9D */	bl OSRestoreInterrupts
/* 81334314 | 3C 60 00 04 */	lis r3, 0x4
/* 81334318 | 38 80 00 00 */	li r4, 0x0
/* 8133431C | 48 2C 38 49 */	bl fn_815F7B64
/* 81334320 | 38 60 00 01 */	li r3, 0x1
/* 81334324 | 38 80 00 00 */	li r4, 0x0
/* 81334328 | 48 21 35 4D */	bl GXSetPixelFmt
/* 8133432C | 80 9C 00 08 */	lwz r4, 0x8(r28)
/* 81334330 | 38 60 00 18 */	li r3, 0x18
/* 81334334 | 38 A0 00 04 */	li r5, 0x4
/* 81334338 | 48 2C 3D 79 */	bl __nw__FUlPQ23EGG4Heapi
/* 8133433C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81334340 | 7C 60 1B 78 */	mr r0, r3
/* 81334344 | 41 82 00 10 */	beq .L_81334354
/* 81334348 | 80 9C 00 08 */	lwz r4, 0x8(r28)
/* 8133434C | 48 00 9A BD */	bl __ct__Q23ipl9FrameworkFPQ23EGG4Heap
/* 81334350 | 7C 60 1B 78 */	mr r0, r3
.L_81334354:
/* 81334354 | 3F 80 81 09 */	lis r28, smArg__Q23ipl6System@ha
/* 81334358 | 38 60 00 04 */	li r3, 0x4
/* 8133435C | 3B 9C 90 08 */	addi r28, r28, smArg__Q23ipl6System@l
/* 81334360 | 64 63 00 04 */	oris r3, r3, 0x4
/* 81334364 | 90 1C 00 74 */	stw r0, 0x74(r28)
/* 81334368 | 7C 72 E3 A6 */	mtspr GQR2, r3
/* 8133436C | 38 60 00 05 */	li r3, 0x5
/* 81334370 | 64 63 00 05 */	oris r3, r3, 0x5
/* 81334374 | 7C 73 E3 A6 */	mtspr GQR3, r3
/* 81334378 | 38 60 00 06 */	li r3, 0x6
/* 8133437C | 64 63 00 06 */	oris r3, r3, 0x6
/* 81334380 | 7C 74 E3 A6 */	mtspr GQR4, r3
/* 81334384 | 38 60 00 07 */	li r3, 0x7
/* 81334388 | 64 63 00 07 */	oris r3, r3, 0x7
/* 8133438C | 7C 75 E3 A6 */	mtspr GQR5, r3
/* 81334390 | 48 22 A4 2D */	bl fn_8155E7BC
/* 81334394 | 48 21 54 45 */	bl fn_815497D8
/* 81334398 | 7F A3 EB 78 */	mr r3, r29
/* 8133439C | 7F C4 F3 78 */	mr r4, r30
/* 813343A0 | 48 00 17 E5 */	bl getBootArg__Q23ipl6SystemFiPPc
/* 813343A4 | 80 DC 00 74 */	lwz r6, 0x74(r28)
/* 813343A8 | 38 60 00 24 */	li r3, 0x24
/* 813343AC | 80 9C 00 08 */	lwz r4, 0x8(r28)
/* 813343B0 | 38 A0 00 04 */	li r5, 0x4
/* 813343B4 | 83 46 00 00 */	lwz r26, 0x0(r6)
/* 813343B8 | 48 2C 3C F9 */	bl __nw__FUlPQ23EGG4Heapi
/* 813343BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813343C0 | 7C 60 1B 78 */	mr r0, r3
/* 813343C4 | 41 82 00 48 */	beq .L_8133440C
/* 813343C8 | 38 00 00 00 */	li r0, 0x0
/* 813343CC | C0 22 80 10 */	lfs f1, lbl_81694410@sda21(r0)
/* 813343D0 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813343D4 | 38 81 00 10 */	addi r4, r1, 0x10
/* 813343D8 | C8 82 80 18 */	lfd f4, lbl_81694418@sda21(r0)
/* 813343DC | FC 40 08 90 */	fmr f2, f1
/* 813343E0 | A0 DA 00 04 */	lhz r6, 0x4(r26)
/* 813343E4 | 38 A0 00 00 */	li r5, 0x0
/* 813343E8 | A0 1A 00 06 */	lhz r0, 0x6(r26)
/* 813343EC | 90 C1 05 44 */	stw r6, 0x544(r1)
/* 813343F0 | 90 01 05 4C */	stw r0, 0x54c(r1)
/* 813343F4 | C8 61 05 40 */	lfd f3, 0x540(r1)
/* 813343F8 | C8 01 05 48 */	lfd f0, 0x548(r1)
/* 813343FC | EC 63 20 28 */	fsubs f3, f3, f4
/* 81334400 | EC 80 20 28 */	fsubs f4, f0, f4
/* 81334404 | 48 2C 2B 25 */	bl fn_815F6F28
/* 81334408 | 7C 60 1B 78 */	mr r0, r3
.L_8133440C:
/* 8133440C | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81334410 | 38 60 00 24 */	li r3, 0x24
/* 81334414 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81334418 | 38 A0 00 04 */	li r5, 0x4
/* 8133441C | 90 04 00 C4 */	stw r0, 0xc4(r4)
/* 81334420 | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 81334424 | 48 2C 3C 8D */	bl __nw__FUlPQ23EGG4Heapi
/* 81334428 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133442C | 41 82 00 44 */	beq .L_81334470
/* 81334430 | 38 00 00 00 */	li r0, 0x0
/* 81334434 | C0 22 80 10 */	lfs f1, lbl_81694410@sda21(r0)
/* 81334438 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8133443C | 38 81 00 0C */	addi r4, r1, 0xc
/* 81334440 | C8 82 80 18 */	lfd f4, lbl_81694418@sda21(r0)
/* 81334444 | FC 40 08 90 */	fmr f2, f1
/* 81334448 | A0 DA 00 04 */	lhz r6, 0x4(r26)
/* 8133444C | 38 A0 00 00 */	li r5, 0x0
/* 81334450 | A0 1A 00 06 */	lhz r0, 0x6(r26)
/* 81334454 | 90 C1 05 44 */	stw r6, 0x544(r1)
/* 81334458 | 90 01 05 4C */	stw r0, 0x54c(r1)
/* 8133445C | C8 61 05 40 */	lfd f3, 0x540(r1)
/* 81334460 | C8 01 05 48 */	lfd f0, 0x548(r1)
/* 81334464 | EC 63 20 28 */	fsubs f3, f3, f4
/* 81334468 | EC 80 20 28 */	fsubs f4, f0, f4
/* 8133446C | 48 2C 2A BD */	bl fn_815F6F28
.L_81334470:
/* 81334470 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 81334474 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 81334478 | 90 7D 00 C8 */	stw r3, 0xc8(r29)
/* 8133447C | 48 2C 44 5D */	bl fn_815F88D8
/* 81334480 | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 81334484 | 38 60 00 44 */	li r3, 0x44
/* 81334488 | 38 A0 00 04 */	li r5, 0x4
/* 8133448C | 48 2C 3C 25 */	bl __nw__FUlPQ23EGG4Heapi
/* 81334490 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81334494 | 7C 7A 1B 78 */	mr r26, r3
/* 81334498 | 41 82 00 1C */	beq .L_813344B4
/* 8133449C | 48 1F FA C5 */	bl OSGetCurrentThread
/* 813344A0 | 7C 64 1B 78 */	mr r4, r3
/* 813344A4 | 7F 43 D3 78 */	mr r3, r26
/* 813344A8 | 38 A0 00 04 */	li r5, 0x4
/* 813344AC | 48 2C 42 A1 */	bl fn_815F874C
/* 813344B0 | 7C 7A 1B 78 */	mr r26, r3
.L_813344B4:
/* 813344B4 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 813344B8 | 38 60 02 F8 */	li r3, 0x2f8
/* 813344BC | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 813344C0 | 38 A0 00 04 */	li r5, 0x4
/* 813344C4 | 93 5D 00 C0 */	stw r26, 0xc0(r29)
/* 813344C8 | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 813344CC | 48 2C 3B E5 */	bl __nw__FUlPQ23EGG4Heapi
/* 813344D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813344D4 | 7C 60 1B 78 */	mr r0, r3
/* 813344D8 | 41 82 00 10 */	beq .L_813344E8
/* 813344DC | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 813344E0 | 48 00 2E 89 */	bl __ct__Q33ipl10controller7ManagerFPQ23EGG4Heap
/* 813344E4 | 7C 60 1B 78 */	mr r0, r3
.L_813344E8:
/* 813344E8 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 813344EC | 38 60 00 10 */	li r3, 0x10
/* 813344F0 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 813344F4 | 38 A0 00 04 */	li r5, 0x4
/* 813344F8 | 90 1D 00 68 */	stw r0, 0x68(r29)
/* 813344FC | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 81334500 | 48 2C 3B B1 */	bl __nw__FUlPQ23EGG4Heapi
/* 81334504 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81334508 | 7C 60 1B 78 */	mr r0, r3
/* 8133450C | 41 82 00 10 */	beq .L_8133451C
/* 81334510 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 81334514 | 48 02 22 E9 */	bl __ct__Q23ipl12ResetHandlerFPQ23EGG4Heap
/* 81334518 | 7C 60 1B 78 */	mr r0, r3
.L_8133451C:
/* 8133451C | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 81334520 | 38 60 00 24 */	li r3, 0x24
/* 81334524 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 81334528 | 38 A0 00 04 */	li r5, 0x4
/* 8133452C | 90 1D 00 9C */	stw r0, 0x9c(r29)
/* 81334530 | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 81334534 | 48 2C 3B 7D */	bl __nw__FUlPQ23EGG4Heapi
/* 81334538 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133453C | 41 82 00 0C */	beq .L_81334548
/* 81334540 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 81334544 | 48 02 1F 15 */	bl __ct__Q23ipl12ErrorHandlerFPQ23EGG4Heap
.L_81334548:
/* 81334548 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 8133454C | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 81334550 | 90 7D 00 98 */	stw r3, 0x98(r29)
/* 81334554 | 48 28 94 4D */	bl ES_InitLib
/* 81334558 | 30 03 FF FF */	subic r0, r3, 0x1
/* 8133455C | 7C A0 19 11 */	subfe. r5, r0, r3
/* 81334560 | 41 82 00 34 */	beq .L_81334594
/* 81334564 | 80 7D 00 98 */	lwz r3, 0x98(r29)
/* 81334568 | 38 DF 03 38 */	addi r6, r31, 0x338
/* 8133456C | 38 8D 80 28 */	li r4, lbl_81696068@sda21
/* 81334570 | 38 E0 04 B1 */	li r7, 0x4b1
/* 81334574 | 48 02 21 85 */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 81334578 | 80 7D 00 98 */	lwz r3, 0x98(r29)
/* 8133457C | 38 80 00 01 */	li r4, 0x1
/* 81334580 | 38 A0 00 02 */	li r5, 0x2
/* 81334584 | 38 C0 00 00 */	li r6, 0x0
/* 81334588 | 38 E0 00 00 */	li r7, 0x0
/* 8133458C | 39 00 FF FF */	li r8, -0x1
/* 81334590 | 48 02 1F 85 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_81334594:
/* 81334594 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 81334598 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 8133459C | 80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 813345A0 | 48 03 2E 41 */	bl InitSavedata__Q33ipl7utility6ESMiscFUxPQ23EGG4Heap
/* 813345A4 | 80 DD 00 08 */	lwz r6, 0x8(r29)
/* 813345A8 | 38 60 00 40 */	li r3, 0x40
/* 813345AC | 38 80 00 13 */	li r4, 0x13
/* 813345B0 | 3C A0 00 01 */	lis r5, 0x1
/* 813345B4 | 48 2C 3B 41 */	bl fn_815F80F4
/* 813345B8 | 90 7D 00 D0 */	stw r3, 0xd0(r29)
/* 813345BC | 38 60 00 40 */	li r3, 0x40
/* 813345C0 | 80 DD 00 08 */	lwz r6, 0x8(r29)
/* 813345C4 | 38 80 00 15 */	li r4, 0x15
/* 813345C8 | 3C A0 00 01 */	lis r5, 0x1
/* 813345CC | 48 2C 3B 29 */	bl fn_815F80F4
/* 813345D0 | 90 7D 00 D4 */	stw r3, 0xd4(r29)
/* 813345D4 | 38 60 00 31 */	li r3, 0x31
/* 813345D8 | 80 DD 00 08 */	lwz r6, 0x8(r29)
/* 813345DC | 38 80 00 14 */	li r4, 0x14
/* 813345E0 | 3C A0 00 01 */	lis r5, 0x1
/* 813345E4 | 48 2C 3B 11 */	bl fn_815F80F4
/* 813345E8 | 90 7D 00 D8 */	stw r3, 0xd8(r29)
/* 813345EC | 38 60 04 10 */	li r3, 0x410
/* 813345F0 | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 813345F4 | 38 A0 00 04 */	li r5, 0x4
/* 813345F8 | 48 2C 3A B9 */	bl __nw__FUlPQ23EGG4Heapi
/* 813345FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81334600 | 41 82 00 0C */	beq .L_8133460C
/* 81334604 | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 81334608 | 48 02 2B A1 */	bl __ct__Q33ipl7postman7ManagerFPQ23EGG4Heap
.L_8133460C:
/* 8133460C | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 81334610 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 81334614 | 90 7D 00 A4 */	stw r3, 0xa4(r29)
/* 81334618 | 48 02 2C 59 */	bl InitManager__Q33ipl7postman7ManagerFv
/* 8133461C | 48 00 14 FD */	bl setToday___Q23ipl6SystemFv
/* 81334620 | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 81334624 | 38 60 00 38 */	li r3, 0x38
/* 81334628 | 38 A0 00 04 */	li r5, 0x4
/* 8133462C | 48 2C 3A 85 */	bl __nw__FUlPQ23EGG4Heapi
/* 81334630 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81334634 | 41 82 00 0C */	beq .L_81334640
/* 81334638 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 8133463C | 48 02 C1 65 */	bl __ct__Q33ipl3bs27ManagerFPQ23EGG4Heap
.L_81334640:
/* 81334640 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81334644 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81334648 | 88 04 02 BB */	lbz r0, 0x2bb(r4)
/* 8133464C | 90 64 00 A8 */	stw r3, 0xa8(r4)
/* 81334650 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81334654 | 41 82 00 08 */	beq .L_8133465C
/* 81334658 | 48 02 C4 81 */	bl abort__Q33ipl3bs27ManagerFv
.L_8133465C:
/* 8133465C | 38 7F 03 46 */	addi r3, r31, 0x346
/* 81334660 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81334664 | 48 02 BE 4D */	bl PrivateGetType__Q33ipl4nand7wrapperFPCcPUc
/* 81334668 | 2C 03 FF F4 */	cmpwi r3, -0xc
/* 8133466C | 40 82 00 14 */	bne .L_81334680
/* 81334670 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81334674 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81334678 | 80 64 00 0C */	lwz r3, 0xc(r4)
/* 8133467C | 48 03 23 B1 */	bl DeleteEmptyTitles__Q33ipl7utility6ESMiscFPQ23EGG4Heap
.L_81334680:
/* 81334680 | 38 60 00 00 */	li r3, 0x0
/* 81334684 | 38 80 00 00 */	li r4, 0x0
/* 81334688 | 48 2C 0C D1 */	bl fn_815F5358
/* 8133468C | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81334690 | 38 60 00 04 */	li r3, 0x4
/* 81334694 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81334698 | 38 A0 00 04 */	li r5, 0x4
/* 8133469C | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 813346A0 | 48 2C 3A 11 */	bl __nw__FUlPQ23EGG4Heapi
/* 813346A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813346A8 | 7C 7E 1B 78 */	mr r30, r3
/* 813346AC | 41 82 00 0C */	beq .L_813346B8
/* 813346B0 | 48 20 15 E9 */	bl OSGetTick
/* 813346B4 | 90 7E 00 00 */	stw r3, 0x0(r30)
.L_813346B8:
/* 813346B8 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 813346BC | 38 60 02 8C */	li r3, 0x28c
/* 813346C0 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 813346C4 | 38 A0 00 04 */	li r5, 0x4
/* 813346C8 | 93 DD 00 CC */	stw r30, 0xcc(r29)
/* 813346CC | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 813346D0 | 48 2C 39 E1 */	bl __nw__FUlPQ23EGG4Heapi
/* 813346D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813346D8 | 7C 60 1B 78 */	mr r0, r3
/* 813346DC | 41 82 00 10 */	beq .L_813346EC
/* 813346E0 | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 813346E4 | 48 00 8B 51 */	bl __ct__Q33ipl4nand7ManagerFPQ23EGG4Heap
/* 813346E8 | 7C 60 1B 78 */	mr r0, r3
.L_813346EC:
/* 813346EC | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 813346F0 | 38 BF 03 6D */	addi r5, r31, 0x36d
/* 813346F4 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 813346F8 | 38 61 00 54 */	addi r3, r1, 0x54
/* 813346FC | 90 1D 00 6C */	stw r0, 0x6c(r29)
/* 81334700 | 38 80 00 40 */	li r4, 0x40
/* 81334704 | 38 CD 80 2B */	li r6, lbl_8169606B@sda21
/* 81334708 | 38 ED 80 31 */	li r7, lbl_81696071@sda21
/* 8133470C | 4C C6 31 82 */	crclr cr1eq
/* 81334710 | 48 2C C2 99 */	bl snprintf
/* 81334714 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 81334718 | 38 A1 00 54 */	addi r5, r1, 0x54
/* 8133471C | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 81334720 | 38 C0 00 00 */	li r6, 0x0
/* 81334724 | 38 E0 00 00 */	li r7, 0x0
/* 81334728 | 39 00 00 00 */	li r8, 0x0
/* 8133472C | 48 00 8E A9 */	bl read__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciUlb
/* 81334730 | 90 7D 00 F0 */	stw r3, 0xf0(r29)
/* 81334734 | 80 63 00 A0 */	lwz r3, 0xa0(r3)
/* 81334738 | 48 28 8E C1 */	bl fn_815BD5F8
/* 8133473C | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 81334740 | 38 BF 03 7D */	addi r5, r31, 0x37d
/* 81334744 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 81334748 | 38 C0 00 00 */	li r6, 0x0
/* 8133474C | 38 E0 00 00 */	li r7, 0x0
/* 81334750 | 39 00 00 00 */	li r8, 0x0
/* 81334754 | 48 00 8E 81 */	bl read__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciUlb
/* 81334758 | 90 7D 01 30 */	stw r3, 0x130(r29)
/* 8133475C | 38 BF 03 99 */	addi r5, r31, 0x399
/* 81334760 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 81334764 | 38 C0 00 00 */	li r6, 0x0
/* 81334768 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 8133476C | 38 E0 00 00 */	li r7, 0x0
/* 81334770 | 39 00 00 00 */	li r8, 0x0
/* 81334774 | 48 00 8E 61 */	bl read__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciUlb
/* 81334778 | 90 7D 01 34 */	stw r3, 0x134(r29)
/* 8133477C | 38 BF 03 B5 */	addi r5, r31, 0x3b5
/* 81334780 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 81334784 | 38 C0 00 00 */	li r6, 0x0
/* 81334788 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 8133478C | 38 E0 00 00 */	li r7, 0x0
/* 81334790 | 39 00 00 00 */	li r8, 0x0
/* 81334794 | 48 00 8E 41 */	bl read__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciUlb
/* 81334798 | 90 7D 01 38 */	stw r3, 0x138(r29)
/* 8133479C | 38 BF 03 D1 */	addi r5, r31, 0x3d1
/* 813347A0 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 813347A4 | 38 C0 00 00 */	li r6, 0x0
/* 813347A8 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 813347AC | 38 E0 00 00 */	li r7, 0x0
/* 813347B0 | 39 00 00 00 */	li r8, 0x0
/* 813347B4 | 48 00 8E 21 */	bl read__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciUlb
/* 813347B8 | 90 7D 01 3C */	stw r3, 0x13c(r29)
/* 813347BC | 38 BF 03 ED */	addi r5, r31, 0x3ed
/* 813347C0 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 813347C4 | 38 C0 00 00 */	li r6, 0x0
/* 813347C8 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 813347CC | 38 E0 00 00 */	li r7, 0x0
/* 813347D0 | 39 00 00 00 */	li r8, 0x0
/* 813347D4 | 48 00 8E 01 */	bl read__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciUlb
/* 813347D8 | 90 7D 01 40 */	stw r3, 0x140(r29)
/* 813347DC | 38 BF 04 09 */	addi r5, r31, 0x409
/* 813347E0 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 813347E4 | 38 C0 00 00 */	li r6, 0x0
/* 813347E8 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 813347EC | 38 E0 00 00 */	li r7, 0x0
/* 813347F0 | 39 00 00 00 */	li r8, 0x0
/* 813347F4 | 48 00 8D E1 */	bl read__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciUlb
/* 813347F8 | 90 7D 01 44 */	stw r3, 0x144(r29)
/* 813347FC | 38 BF 04 25 */	addi r5, r31, 0x425
/* 81334800 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 81334804 | 38 C0 00 00 */	li r6, 0x0
/* 81334808 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 8133480C | 38 E0 00 00 */	li r7, 0x0
/* 81334810 | 39 00 00 00 */	li r8, 0x0
/* 81334814 | 48 00 8D C1 */	bl read__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciUlb
/* 81334818 | 90 7D 01 48 */	stw r3, 0x148(r29)
/* 8133481C | 38 BF 04 41 */	addi r5, r31, 0x441
/* 81334820 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 81334824 | 38 C0 00 00 */	li r6, 0x0
/* 81334828 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 8133482C | 38 E0 00 00 */	li r7, 0x0
/* 81334830 | 39 00 00 00 */	li r8, 0x0
/* 81334834 | 48 00 8D A1 */	bl read__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciUlb
/* 81334838 | 90 7D 01 54 */	stw r3, 0x154(r29)
/* 8133483C | 38 BF 04 5D */	addi r5, r31, 0x45d
/* 81334840 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 81334844 | 38 C0 00 00 */	li r6, 0x0
/* 81334848 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 8133484C | 38 E0 00 00 */	li r7, 0x0
/* 81334850 | 39 00 00 00 */	li r8, 0x0
/* 81334854 | 48 00 8D 81 */	bl read__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciUlb
/* 81334858 | 90 7D 01 4C */	stw r3, 0x14c(r29)
/* 8133485C | 38 60 00 10 */	li r3, 0x10
/* 81334860 | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 81334864 | 38 A0 00 04 */	li r5, 0x4
/* 81334868 | 48 2C 38 49 */	bl __nw__FUlPQ23EGG4Heapi
/* 8133486C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81334870 | 7C 60 1B 78 */	mr r0, r3
/* 81334874 | 41 82 00 18 */	beq .L_8133488C
/* 81334878 | 80 BD 00 74 */	lwz r5, 0x74(r29)
/* 8133487C | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 81334880 | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 81334884 | 48 00 9A 9D */	bl __ct__Q23ipl9ExceptionFPQ23EGG4HeapRC16_GXRenderModeObj
/* 81334888 | 7C 60 1B 78 */	mr r0, r3
.L_8133488C:
/* 8133488C | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 81334890 | 38 60 00 90 */	li r3, 0x90
/* 81334894 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 81334898 | 38 A0 00 04 */	li r5, 0x4
/* 8133489C | 90 1D 00 78 */	stw r0, 0x78(r29)
/* 813348A0 | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 813348A4 | 48 2C 38 0D */	bl __nw__FUlPQ23EGG4Heapi
/* 813348A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813348AC | 7C 60 1B 78 */	mr r0, r3
/* 813348B0 | 41 82 00 10 */	beq .L_813348C0
/* 813348B4 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 813348B8 | 48 00 F8 D1 */	bl __ct__Q23ipl7PointerFPQ23EGG4Heap
/* 813348BC | 7C 60 1B 78 */	mr r0, r3
.L_813348C0:
/* 813348C0 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 813348C4 | 38 60 00 88 */	li r3, 0x88
/* 813348C8 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 813348CC | 38 A0 00 04 */	li r5, 0x4
/* 813348D0 | 90 1D 00 B0 */	stw r0, 0xb0(r29)
/* 813348D4 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 813348D8 | 48 2C 37 D9 */	bl __nw__FUlPQ23EGG4Heapi
/* 813348DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813348E0 | 41 82 00 0C */	beq .L_813348EC
/* 813348E4 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 813348E8 | 48 02 D0 69 */	bl __ct__Q23ipl11TVRCManagerFPQ23EGG4Heap
.L_813348EC:
/* 813348EC | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 813348F0 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 813348F4 | 90 7D 00 B8 */	stw r3, 0xb8(r29)
/* 813348F8 | 48 0C 6E 7D */	bl makeMacAddr__Q33ipl3ncd10NCDSettingFv
/* 813348FC | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 81334900 | 38 60 07 10 */	li r3, 0x710
/* 81334904 | 38 A0 00 04 */	li r5, 0x4
/* 81334908 | 48 2C 37 A9 */	bl __nw__FUlPQ23EGG4Heapi
/* 8133490C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81334910 | 7C 60 1B 78 */	mr r0, r3
/* 81334914 | 41 82 00 10 */	beq .L_81334924
/* 81334918 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 8133491C | 48 03 04 E9 */	bl __ct__Q33ipl7utility11JpegDecoderFPQ23EGG4Heap
/* 81334920 | 7C 60 1B 78 */	mr r0, r3
.L_81334924:
/* 81334924 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 81334928 | 38 60 00 00 */	li r3, 0x0
/* 8133492C | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 81334930 | 90 1D 00 BC */	stw r0, 0xbc(r29)
/* 81334934 | 4B FF EC 9D */	bl loadResource___Q23ipl6SystemFPv
/* 81334938 | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 8133493C | 38 60 00 04 */	li r3, 0x4
/* 81334940 | 38 A0 00 04 */	li r5, 0x4
/* 81334944 | 48 2C 37 6D */	bl __nw__FUlPQ23EGG4Heapi
/* 81334948 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133494C | 7C 60 1B 78 */	mr r0, r3
/* 81334950 | 41 82 00 10 */	beq .L_81334960
/* 81334954 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 81334958 | 48 00 9E 7D */	bl __ct__Q33ipl7message7ManagerFPQ23EGG4Heap
/* 8133495C | 7C 60 1B 78 */	mr r0, r3
.L_81334960:
/* 81334960 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 81334964 | 38 60 01 30 */	li r3, 0x130
/* 81334968 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 8133496C | 38 A0 00 04 */	li r5, 0x4
/* 81334970 | 90 1D 00 80 */	stw r0, 0x80(r29)
/* 81334974 | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 81334978 | 48 2C 37 39 */	bl __nw__FUlPQ23EGG4Heapi
/* 8133497C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81334980 | 7C 60 1B 78 */	mr r0, r3
/* 81334984 | 41 82 00 10 */	beq .L_81334994
/* 81334988 | 80 9D 00 10 */	lwz r4, 0x10(r29)
/* 8133498C | 48 0D 5B B5 */	bl __ct__Q33ipl5scene7ManagerFPQ23EGG4Heap
/* 81334990 | 7C 60 1B 78 */	mr r0, r3
.L_81334994:
/* 81334994 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 81334998 | 38 60 05 20 */	li r3, 0x520
/* 8133499C | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 813349A0 | 38 A0 00 20 */	li r5, 0x20
/* 813349A4 | 90 1D 00 64 */	stw r0, 0x64(r29)
/* 813349A8 | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 813349AC | 48 2C 37 05 */	bl __nw__FUlPQ23EGG4Heapi
/* 813349B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813349B4 | 41 82 00 0C */	beq .L_813349C0
/* 813349B8 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 813349BC | 48 02 32 FD */	bl __ct__Q33ipl8savedata7ManagerFPQ23EGG4Heap
.L_813349C0:
/* 813349C0 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 813349C4 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 813349C8 | 90 7D 00 94 */	stw r3, 0x94(r29)
/* 813349CC | 48 02 33 A9 */	bl initManager__Q33ipl8savedata7ManagerFv
/* 813349D0 | 80 6D A7 38 */	lwz r3, m_handle__Q23ipl11TVRCManager@sda21(r0)
/* 813349D4 | 48 02 D4 2D */	bl loadDatabase__Q23ipl11TVRCManagerFv
/* 813349D8 | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 813349DC | 38 60 00 38 */	li r3, 0x38
/* 813349E0 | 38 A0 00 04 */	li r5, 0x4
/* 813349E4 | 48 2C 36 CD */	bl __nw__FUlPQ23EGG4Heapi
/* 813349E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813349EC | 7C 60 1B 78 */	mr r0, r3
/* 813349F0 | 41 82 00 0C */	beq .L_813349FC
/* 813349F4 | 48 00 60 8D */	bl __ct__Q33ipl7channel20ChannelScriptManagerFv
/* 813349F8 | 7C 60 1B 78 */	mr r0, r3
.L_813349FC:
/* 813349FC | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 81334A00 | 38 60 1D A8 */	li r3, 0x1da8
/* 81334A04 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 81334A08 | 38 A0 00 04 */	li r5, 0x4
/* 81334A0C | 90 1D 00 88 */	stw r0, 0x88(r29)
/* 81334A10 | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 81334A14 | 48 2C 36 9D */	bl __nw__FUlPQ23EGG4Heapi
/* 81334A18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81334A1C | 41 82 00 0C */	beq .L_81334A28
/* 81334A20 | 80 9D 00 18 */	lwz r4, 0x18(r29)
/* 81334A24 | 48 00 2F 55 */	bl __ct__Q33ipl7channel7ManagerFPQ23EGG4Heap
.L_81334A28:
/* 81334A28 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81334A2C | 3B A4 90 08 */	addi r29, r4, smArg__Q23ipl6System@l
/* 81334A30 | 90 7D 00 84 */	stw r3, 0x84(r29)
/* 81334A34 | 48 00 31 89 */	bl initManager__Q33ipl7channel7ManagerFv
/* 81334A38 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 81334A3C | 48 0D 5C 11 */	bl init__Q33ipl5scene7ManagerFv
/* 81334A40 | 3B 40 00 00 */	li r26, 0x0
.L_81334A44:
/* 81334A44 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 81334A48 | 48 00 94 19 */	bl beginFrame__Q23ipl9FrameworkFv
/* 81334A4C | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 81334A50 | 48 00 94 25 */	bl beginRender__Q23ipl9FrameworkFv
/* 81334A54 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 81334A58 | 48 00 94 21 */	bl endRender__Q23ipl9FrameworkFv
/* 81334A5C | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 81334A60 | 48 00 94 B1 */	bl endFrame__Q23ipl9FrameworkFv
/* 81334A64 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 81334A68 | 2C 1A 00 03 */	cmpwi r26, 0x3
/* 81334A6C | 41 80 FF D8 */	blt .L_81334A44
/* 81334A70 | 48 28 AA 71 */	bl fn_815BF4E0
/* 81334A74 | 7C 60 00 34 */	cntlzw r0, r3
/* 81334A78 | 54 05 D9 7F */	srwi. r5, r0, 5
/* 81334A7C | 41 82 00 3C */	beq .L_81334AB8
/* 81334A80 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 81334A84 | 38 DF 03 38 */	addi r6, r31, 0x338
/* 81334A88 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 81334A8C | 38 8D 80 28 */	li r4, lbl_81696068@sda21
/* 81334A90 | 80 7D 00 98 */	lwz r3, 0x98(r29)
/* 81334A94 | 38 E0 05 A6 */	li r7, 0x5a6
/* 81334A98 | 48 02 1C 61 */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 81334A9C | 80 7D 00 98 */	lwz r3, 0x98(r29)
/* 81334AA0 | 38 80 00 01 */	li r4, 0x1
/* 81334AA4 | 38 A0 00 04 */	li r5, 0x4
/* 81334AA8 | 38 C0 00 00 */	li r6, 0x0
/* 81334AAC | 38 E0 00 00 */	li r7, 0x0
/* 81334AB0 | 39 00 FF FF */	li r8, -0x1
/* 81334AB4 | 48 02 1A 61 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_81334AB8:
/* 81334AB8 | 39 61 05 70 */	addi r11, r1, 0x570
/* 81334ABC | 48 2C 4A 4D */	bl _restgpr_26
/* 81334AC0 | 80 01 05 74 */	lwz r0, 0x574(r1)
/* 81334AC4 | 7C 08 03 A6 */	mtlr r0
/* 81334AC8 | 38 21 05 70 */	addi r1, r1, 0x570
/* 81334ACC | 4E 80 00 20 */	blr
.endfn init__Q23ipl6SystemFiPPc

# .text:0x1EAC | 0x81334AD0 | size: 0x40
# nw4r::ut::Color::~Color()
.fn __dt__Q34nw4r2ut5ColorFv, weak
/* 81334AD0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81334AD4 | 7C 08 02 A6 */	mflr r0
/* 81334AD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81334ADC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81334AE0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81334AE4 | 7C 7F 1B 78 */	mr r31, r3
/* 81334AE8 | 41 82 00 10 */	beq .L_81334AF8
/* 81334AEC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81334AF0 | 40 81 00 08 */	ble .L_81334AF8
/* 81334AF4 | 48 2C 35 F1 */	bl __dl__FPv
.L_81334AF8:
/* 81334AF8 | 7F E3 FB 78 */	mr r3, r31
/* 81334AFC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81334B00 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81334B04 | 7C 08 03 A6 */	mtlr r0
/* 81334B08 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81334B0C | 4E 80 00 20 */	blr
.endfn __dt__Q34nw4r2ut5ColorFv

# .text:0x1EEC | 0x81334B10 | size: 0x18
# ipl::System::isResetAcceptable()
.fn isResetAcceptable__Q23ipl6SystemFv, global
/* 81334B10 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81334B14 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81334B18 | 88 03 02 B9 */	lbz r0, 0x2b9(r3)
/* 81334B1C | 7C 00 00 34 */	cntlzw r0, r0
/* 81334B20 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81334B24 | 4E 80 00 20 */	blr
.endfn isResetAcceptable__Q23ipl6SystemFv

# .text:0x1F04 | 0x81334B28 | size: 0x3E4
# ipl::System::run()
.fn run__Q23ipl6SystemFv, global
/* 81334B28 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81334B2C | 7C 08 02 A6 */	mflr r0
/* 81334B30 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81334B34 | DB E1 00 30 */	stfd f31, 0x30(r1)
/* 81334B38 | F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 81334B3C | 39 61 00 30 */	addi r11, r1, 0x30
/* 81334B40 | 48 2C 49 81 */	bl _savegpr_27
/* 81334B44 | 48 17 61 F5 */	bl NWC24SuspendScheduler
/* 81334B48 | 38 60 00 00 */	li r3, 0x0
/* 81334B4C | 48 20 95 DD */	bl VISetBlack
/* 81334B50 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81334B54 | CB E2 80 18 */	lfd f31, lbl_81694418@sda21(r0)
/* 81334B58 | 3B E0 00 01 */	li r31, 0x1
/* 81334B5C | 3F 80 43 30 */	lis r28, 0x4330
/* 81334B60 | 3B A3 90 08 */	addi r29, r3, smArg__Q23ipl6System@l
/* 81334B64 | 3F C0 81 09 */	lis r30, sSystem__Q23ipl3snd@ha
.L_81334B68:
/* 81334B68 | 88 1D 02 B0 */	lbz r0, 0x2b0(r29)
/* 81334B6C | 38 60 00 00 */	li r3, 0x0
/* 81334B70 | 38 80 00 00 */	li r4, 0x0
/* 81334B74 | 38 A0 00 00 */	li r5, 0x0
/* 81334B78 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81334B7C | 41 82 00 14 */	beq .L_81334B90
/* 81334B80 | 88 1D 02 B6 */	lbz r0, 0x2b6(r29)
/* 81334B84 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81334B88 | 41 82 00 08 */	beq .L_81334B90
/* 81334B8C | 38 A0 00 01 */	li r5, 0x1
.L_81334B90:
/* 81334B90 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81334B94 | 41 82 00 14 */	beq .L_81334BA8
/* 81334B98 | 88 1D 02 B7 */	lbz r0, 0x2b7(r29)
/* 81334B9C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81334BA0 | 41 82 00 08 */	beq .L_81334BA8
/* 81334BA4 | 38 80 00 01 */	li r4, 0x1
.L_81334BA8:
/* 81334BA8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81334BAC | 41 82 00 14 */	beq .L_81334BC0
/* 81334BB0 | 88 1D 02 B8 */	lbz r0, 0x2b8(r29)
/* 81334BB4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81334BB8 | 41 82 00 08 */	beq .L_81334BC0
/* 81334BBC | 38 60 00 01 */	li r3, 0x1
.L_81334BC0:
/* 81334BC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81334BC4 | 41 82 00 28 */	beq .L_81334BEC
/* 81334BC8 | 88 1D 02 B1 */	lbz r0, 0x2b1(r29)
/* 81334BCC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81334BD0 | 40 82 00 1C */	bne .L_81334BEC
/* 81334BD4 | 88 1D 02 BE */	lbz r0, 0x2be(r29)
/* 81334BD8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81334BDC | 41 82 00 10 */	beq .L_81334BEC
/* 81334BE0 | 38 60 00 00 */	li r3, 0x0
/* 81334BE4 | 4B FF ED C9 */	bl createAfter___Q23ipl6SystemFPv
/* 81334BE8 | 9B FD 02 B1 */	stb r31, 0x2b1(r29)
.L_81334BEC:
/* 81334BEC | 88 1D 02 B2 */	lbz r0, 0x2b2(r29)
/* 81334BF0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81334BF4 | 41 82 00 50 */	beq .L_81334C44
/* 81334BF8 | 88 1D 02 B3 */	lbz r0, 0x2b3(r29)
/* 81334BFC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81334C00 | 41 82 00 44 */	beq .L_81334C44
/* 81334C04 | 88 1D 02 BF */	lbz r0, 0x2bf(r29)
/* 81334C08 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81334C0C | 41 82 00 38 */	beq .L_81334C44
/* 81334C10 | 88 1D 02 B4 */	lbz r0, 0x2b4(r29)
/* 81334C14 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81334C18 | 40 82 00 2C */	bne .L_81334C44
/* 81334C1C | 88 1D 02 BB */	lbz r0, 0x2bb(r29)
/* 81334C20 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81334C24 | 40 82 00 20 */	bne .L_81334C44
/* 81334C28 | 4B FF EF 6D */	bl createLibManager___Q23ipl6SystemFv
/* 81334C2C | 80 7D 00 A4 */	lwz r3, 0xa4(r29)
/* 81334C30 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81334C34 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81334C38 | 7D 89 03 A6 */	mtctr r12
/* 81334C3C | 4E 80 04 21 */	bctrl
/* 81334C40 | 9B FD 02 B4 */	stb r31, 0x2b4(r29)
.L_81334C44:
/* 81334C44 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 81334C48 | 48 00 92 19 */	bl beginFrame__Q23ipl9FrameworkFv
/* 81334C4C | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 81334C50 | 48 00 92 25 */	bl beginRender__Q23ipl9FrameworkFv
/* 81334C54 | 88 1D 02 B2 */	lbz r0, 0x2b2(r29)
/* 81334C58 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81334C5C | 41 82 00 0C */	beq .L_81334C68
/* 81334C60 | 80 7D 00 70 */	lwz r3, 0x70(r29)
/* 81334C64 | 48 00 9F 51 */	bl makeIcon__Q33ipl6nigaoe7ManagerFv
.L_81334C68:
/* 81334C68 | 88 1D 02 B2 */	lbz r0, 0x2b2(r29)
/* 81334C6C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81334C70 | 41 82 00 0C */	beq .L_81334C7C
/* 81334C74 | 80 7D 00 BC */	lwz r3, 0xbc(r29)
/* 81334C78 | 48 03 04 99 */	bl makeRawData__Q33ipl7utility11JpegDecoderFv
.L_81334C7C:
/* 81334C7C | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 81334C80 | C0 22 80 10 */	lfs f1, lbl_81694410@sda21(r0)
/* 81334C84 | 83 63 00 00 */	lwz r27, 0x0(r3)
/* 81334C88 | 93 81 00 08 */	stw r28, 0x8(r1)
/* 81334C8C | FC 40 08 90 */	fmr f2, f1
/* 81334C90 | A0 7B 00 04 */	lhz r3, 0x4(r27)
/* 81334C94 | FC A0 08 90 */	fmr f5, f1
/* 81334C98 | A0 1B 00 06 */	lhz r0, 0x6(r27)
/* 81334C9C | 90 61 00 0C */	stw r3, 0xc(r1)
/* 81334CA0 | C0 C2 80 20 */	lfs f6, lbl_81694420@sda21(r0)
/* 81334CA4 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 81334CA8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81334CAC | EC 60 F8 28 */	fsubs f3, f0, f31
/* 81334CB0 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 81334CB4 | C8 01 00 10 */	lfd f0, 0x10(r1)
/* 81334CB8 | EC 80 F8 28 */	fsubs f4, f0, f31
/* 81334CBC | 48 21 32 71 */	bl GXSetViewport
/* 81334CC0 | A0 BB 00 04 */	lhz r5, 0x4(r27)
/* 81334CC4 | 38 60 00 00 */	li r3, 0x0
/* 81334CC8 | A0 DB 00 06 */	lhz r6, 0x6(r27)
/* 81334CCC | 38 80 00 00 */	li r4, 0x0
/* 81334CD0 | 48 21 32 D9 */	bl GXSetScissor
/* 81334CD4 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 81334CD8 | 48 0D 5C B9 */	bl draw__Q33ipl5scene7ManagerFv
/* 81334CDC | 88 1D 02 B2 */	lbz r0, 0x2b2(r29)
/* 81334CE0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81334CE4 | 41 82 00 64 */	beq .L_81334D48
/* 81334CE8 | 80 7D 00 90 */	lwz r3, 0x90(r29)
/* 81334CEC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81334CF0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81334CF4 | 7D 89 03 A6 */	mtctr r12
/* 81334CF8 | 4E 80 04 21 */	bctrl
/* 81334CFC | 80 7D 00 AC */	lwz r3, 0xac(r29)
/* 81334D00 | 48 01 11 E9 */	bl draw__Q23ipl12DialogWindowFv
/* 81334D04 | 80 7D 00 B4 */	lwz r3, 0xb4(r29)
/* 81334D08 | 48 01 35 B1 */	bl draw__Q23ipl14HomeButtonMenuFv
/* 81334D0C | 80 9D 00 B4 */	lwz r4, 0xb4(r29)
/* 81334D10 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81334D14 | 41 82 00 34 */	beq .L_81334D48
/* 81334D18 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 81334D1C | 38 60 00 00 */	li r3, 0x0
/* 81334D20 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81334D24 | 41 82 00 14 */	beq .L_81334D38
/* 81334D28 | 88 04 00 02 */	lbz r0, 0x2(r4)
/* 81334D2C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81334D30 | 41 82 00 08 */	beq .L_81334D38
/* 81334D34 | 38 60 00 01 */	li r3, 0x1
.L_81334D38:
/* 81334D38 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81334D3C | 40 82 00 0C */	bne .L_81334D48
/* 81334D40 | 80 7D 00 B0 */	lwz r3, 0xb0(r29)
/* 81334D44 | 48 00 F6 E5 */	bl draw__Q23ipl7PointerFv
.L_81334D48:
/* 81334D48 | 80 7D 00 C4 */	lwz r3, 0xc4(r29)
/* 81334D4C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81334D50 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81334D54 | 7D 89 03 A6 */	mtctr r12
/* 81334D58 | 4E 80 04 21 */	bctrl
/* 81334D5C | 80 7D 00 C8 */	lwz r3, 0xc8(r29)
/* 81334D60 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81334D64 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81334D68 | 7D 89 03 A6 */	mtctr r12
/* 81334D6C | 4E 80 04 21 */	bctrl
/* 81334D70 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 81334D74 | 48 00 91 05 */	bl endRender__Q23ipl9FrameworkFv
/* 81334D78 | 80 6D A7 38 */	lwz r3, m_handle__Q23ipl11TVRCManager@sda21(r0)
/* 81334D7C | 48 02 D4 85 */	bl update__Q23ipl11TVRCManagerFv
/* 81334D80 | 48 00 0D 99 */	bl setToday___Q23ipl6SystemFv
/* 81334D84 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 81334D88 | 48 00 27 79 */	bl read__Q33ipl10controller7ManagerFv
/* 81334D8C | 80 7D 00 A8 */	lwz r3, 0xa8(r29)
/* 81334D90 | 48 02 BB 09 */	bl update__Q33ipl3bs27ManagerFv
/* 81334D94 | 2C 03 00 0A */	cmpwi r3, 0xa
/* 81334D98 | 40 82 00 20 */	bne .L_81334DB8
/* 81334D9C | 80 7D 00 98 */	lwz r3, 0x98(r29)
/* 81334DA0 | 38 80 00 01 */	li r4, 0x1
/* 81334DA4 | 38 A0 00 00 */	li r5, 0x0
/* 81334DA8 | 38 C0 00 00 */	li r6, 0x0
/* 81334DAC | 38 E0 00 00 */	li r7, 0x0
/* 81334DB0 | 39 00 FF FF */	li r8, -0x1
/* 81334DB4 | 48 02 17 61 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_81334DB8:
/* 81334DB8 | 80 7D 00 84 */	lwz r3, 0x84(r29)
/* 81334DBC | 48 00 2E 21 */	bl update__Q33ipl7channel7ManagerFv
/* 81334DC0 | 88 1D 02 B2 */	lbz r0, 0x2b2(r29)
/* 81334DC4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81334DC8 | 40 82 00 38 */	bne .L_81334E00
/* 81334DCC | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 81334DD0 | 48 0D 59 4D */	bl calc__Q33ipl5scene7ManagerFv
/* 81334DD4 | 80 7D 00 C4 */	lwz r3, 0xc4(r29)
/* 81334DD8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81334DDC | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81334DE0 | 7D 89 03 A6 */	mtctr r12
/* 81334DE4 | 4E 80 04 21 */	bctrl
/* 81334DE8 | 80 7D 00 C8 */	lwz r3, 0xc8(r29)
/* 81334DEC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81334DF0 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81334DF4 | 7D 89 03 A6 */	mtctr r12
/* 81334DF8 | 4E 80 04 21 */	bctrl
/* 81334DFC | 48 00 00 CC */	b .L_81334EC8
.L_81334E00:
/* 81334E00 | 80 7D 00 B4 */	lwz r3, 0xb4(r29)
/* 81334E04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81334E08 | 41 82 00 8C */	beq .L_81334E94
/* 81334E0C | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 81334E10 | 38 80 00 00 */	li r4, 0x0
/* 81334E14 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81334E18 | 41 82 00 14 */	beq .L_81334E2C
/* 81334E1C | 88 03 00 02 */	lbz r0, 0x2(r3)
/* 81334E20 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81334E24 | 41 82 00 08 */	beq .L_81334E2C
/* 81334E28 | 38 80 00 01 */	li r4, 0x1
.L_81334E2C:
/* 81334E2C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81334E30 | 40 82 00 64 */	bne .L_81334E94
/* 81334E34 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 81334E38 | 48 0D 58 E5 */	bl calc__Q33ipl5scene7ManagerFv
/* 81334E3C | 80 7D 00 90 */	lwz r3, 0x90(r29)
/* 81334E40 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81334E44 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81334E48 | 7D 89 03 A6 */	mtctr r12
/* 81334E4C | 4E 80 04 21 */	bctrl
/* 81334E50 | 80 7D 00 AC */	lwz r3, 0xac(r29)
/* 81334E54 | 48 01 04 19 */	bl calc__Q23ipl12DialogWindowFv
/* 81334E58 | 80 7D 00 B4 */	lwz r3, 0xb4(r29)
/* 81334E5C | 48 01 31 3D */	bl calc__Q23ipl14HomeButtonMenuFv
/* 81334E60 | 80 7D 00 B0 */	lwz r3, 0xb0(r29)
/* 81334E64 | 48 00 F4 0D */	bl calc__Q23ipl7PointerFv
/* 81334E68 | 80 7D 00 C4 */	lwz r3, 0xc4(r29)
/* 81334E6C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81334E70 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81334E74 | 7D 89 03 A6 */	mtctr r12
/* 81334E78 | 4E 80 04 21 */	bctrl
/* 81334E7C | 80 7D 00 C8 */	lwz r3, 0xc8(r29)
/* 81334E80 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81334E84 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81334E88 | 7D 89 03 A6 */	mtctr r12
/* 81334E8C | 4E 80 04 21 */	bctrl
/* 81334E90 | 48 00 00 38 */	b .L_81334EC8
.L_81334E94:
/* 81334E94 | 48 01 31 05 */	bl calc__Q23ipl14HomeButtonMenuFv
/* 81334E98 | 80 7D 00 B0 */	lwz r3, 0xb0(r29)
/* 81334E9C | 48 00 F3 D5 */	bl calc__Q23ipl7PointerFv
/* 81334EA0 | 80 7D 00 C4 */	lwz r3, 0xc4(r29)
/* 81334EA4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81334EA8 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81334EAC | 7D 89 03 A6 */	mtctr r12
/* 81334EB0 | 4E 80 04 21 */	bctrl
/* 81334EB4 | 80 7D 00 C8 */	lwz r3, 0xc8(r29)
/* 81334EB8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81334EBC | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81334EC0 | 7D 89 03 A6 */	mtctr r12
/* 81334EC4 | 4E 80 04 21 */	bctrl
.L_81334EC8:
/* 81334EC8 | 38 7E 99 2C */	addi r3, r30, sSystem__Q23ipl3snd@l
/* 81334ECC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81334ED0 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81334ED4 | 7D 89 03 A6 */	mtctr r12
/* 81334ED8 | 4E 80 04 21 */	bctrl
/* 81334EDC | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 81334EE0 | 48 00 90 31 */	bl endFrame__Q23ipl9FrameworkFv
/* 81334EE4 | 88 1D 02 B2 */	lbz r0, 0x2b2(r29)
/* 81334EE8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81334EEC | 41 82 00 0C */	beq .L_81334EF8
/* 81334EF0 | 80 7D 00 98 */	lwz r3, 0x98(r29)
/* 81334EF4 | 48 02 16 B9 */	bl check__Q23ipl12ErrorHandlerFv
.L_81334EF8:
/* 81334EF8 | 80 7D 00 9C */	lwz r3, 0x9c(r29)
/* 81334EFC | 48 02 1A 09 */	bl update__Q23ipl12ResetHandlerFv
/* 81334F00 | 80 7D 00 9C */	lwz r3, 0x9c(r29)
/* 81334F04 | 48 02 19 ED */	bl check__Q23ipl12ResetHandlerFv
/* 81334F08 | 4B FF FC 60 */	b .L_81334B68
.endfn run__Q23ipl6SystemFv

# .text:0x22E8 | 0x81334F0C | size: 0x244
# ipl::System::err_run()
.fn err_run__Q23ipl6SystemFv, global
/* 81334F0C | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81334F10 | 7C 08 02 A6 */	mflr r0
/* 81334F14 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81334F18 | DB E1 00 30 */	stfd f31, 0x30(r1)
/* 81334F1C | F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 81334F20 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81334F24 | 48 2C 45 9D */	bl _savegpr_27
/* 81334F28 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 81334F2C | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 81334F30 | 80 7D 00 9C */	lwz r3, 0x9c(r29)
/* 81334F34 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81334F38 | 30 03 FF FF */	subic r0, r3, 0x1
/* 81334F3C | 7C 00 19 11 */	subfe. r0, r0, r3
/* 81334F40 | 40 82 01 F0 */	bne .L_81335130
/* 81334F44 | 3B 60 00 00 */	li r27, 0x0
/* 81334F48 | 38 60 00 00 */	li r3, 0x0
/* 81334F4C | 48 20 91 DD */	bl VISetBlack
/* 81334F50 | 88 1D 02 B2 */	lbz r0, 0x2b2(r29)
/* 81334F54 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81334F58 | 41 82 00 14 */	beq .L_81334F6C
/* 81334F5C | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 81334F60 | 38 80 00 05 */	li r4, 0x5
/* 81334F64 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 81334F68 | 48 03 6B A9 */	bl stopAllSound__Q33ipl3snd6SystemFi
.L_81334F6C:
/* 81334F6C | 48 00 08 C5 */	bl cancelThread__Q23ipl6SystemFv
/* 81334F70 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81334F74 | 3B A3 90 08 */	addi r29, r3, smArg__Q23ipl6System@l
/* 81334F78 | 80 7D 00 9C */	lwz r3, 0x9c(r29)
/* 81334F7C | 48 02 1C AD */	bl setFatalResetCallback__Q23ipl12ResetHandlerFv
/* 81334F80 | CB E2 80 18 */	lfd f31, lbl_81694418@sda21(r0)
/* 81334F84 | 3F C0 43 30 */	lis r30, 0x4330
/* 81334F88 | 3F E0 81 09 */	lis r31, sSystem__Q23ipl3snd@ha
.L_81334F8C:
/* 81334F8C | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 81334F90 | 48 00 8E D1 */	bl beginFrame__Q23ipl9FrameworkFv
/* 81334F94 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 81334F98 | 48 00 8E DD */	bl beginRender__Q23ipl9FrameworkFv
/* 81334F9C | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 81334FA0 | C0 22 80 10 */	lfs f1, lbl_81694410@sda21(r0)
/* 81334FA4 | 83 83 00 00 */	lwz r28, 0x0(r3)
/* 81334FA8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81334FAC | FC 40 08 90 */	fmr f2, f1
/* 81334FB0 | A0 7C 00 04 */	lhz r3, 0x4(r28)
/* 81334FB4 | FC A0 08 90 */	fmr f5, f1
/* 81334FB8 | A0 1C 00 06 */	lhz r0, 0x6(r28)
/* 81334FBC | 90 61 00 0C */	stw r3, 0xc(r1)
/* 81334FC0 | C0 C2 80 20 */	lfs f6, lbl_81694420@sda21(r0)
/* 81334FC4 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 81334FC8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81334FCC | EC 60 F8 28 */	fsubs f3, f0, f31
/* 81334FD0 | 93 C1 00 10 */	stw r30, 0x10(r1)
/* 81334FD4 | C8 01 00 10 */	lfd f0, 0x10(r1)
/* 81334FD8 | EC 80 F8 28 */	fsubs f4, f0, f31
/* 81334FDC | 48 21 2F 51 */	bl GXSetViewport
/* 81334FE0 | A0 BC 00 04 */	lhz r5, 0x4(r28)
/* 81334FE4 | 38 60 00 00 */	li r3, 0x0
/* 81334FE8 | A0 DC 00 06 */	lhz r6, 0x6(r28)
/* 81334FEC | 38 80 00 00 */	li r4, 0x0
/* 81334FF0 | 48 21 2F B9 */	bl GXSetScissor
/* 81334FF4 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81334FF8 | 2C 1B 00 04 */	cmpwi r27, 0x4
/* 81334FFC | 40 81 00 30 */	ble .L_8133502C
/* 81335000 | 48 24 47 AD */	bl WPADGetStatus
/* 81335004 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 81335008 | 40 82 00 20 */	bne .L_81335028
/* 8133500C | 3B 60 00 00 */	li r27, 0x0
.L_81335010:
/* 81335010 | 7F 63 DB 78 */	mr r3, r27
/* 81335014 | 38 80 00 00 */	li r4, 0x0
/* 81335018 | 48 24 5F 41 */	bl fn_8157AF58
/* 8133501C | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81335020 | 2C 1B 00 04 */	cmpwi r27, 0x4
/* 81335024 | 41 80 FF EC */	blt .L_81335010
.L_81335028:
/* 81335028 | 3B 60 00 00 */	li r27, 0x0
.L_8133502C:
/* 8133502C | 80 7D 00 98 */	lwz r3, 0x98(r29)
/* 81335030 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81335034 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81335038 | 41 82 00 5C */	beq .L_81335094
/* 8133503C | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 81335040 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81335044 | 41 82 00 08 */	beq .L_8133504C
/* 81335048 | 48 0D 59 49 */	bl draw__Q33ipl5scene7ManagerFv
.L_8133504C:
/* 8133504C | 88 1D 02 B2 */	lbz r0, 0x2b2(r29)
/* 81335050 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81335054 | 41 82 00 18 */	beq .L_8133506C
/* 81335058 | 80 7D 00 90 */	lwz r3, 0x90(r29)
/* 8133505C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81335060 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81335064 | 7D 89 03 A6 */	mtctr r12
/* 81335068 | 4E 80 04 21 */	bctrl
.L_8133506C:
/* 8133506C | 88 1D 02 B2 */	lbz r0, 0x2b2(r29)
/* 81335070 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81335074 | 41 82 00 0C */	beq .L_81335080
/* 81335078 | 80 7D 00 B4 */	lwz r3, 0xb4(r29)
/* 8133507C | 48 01 32 3D */	bl draw__Q23ipl14HomeButtonMenuFv
.L_81335080:
/* 81335080 | 88 1D 02 B2 */	lbz r0, 0x2b2(r29)
/* 81335084 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81335088 | 41 82 00 0C */	beq .L_81335094
/* 8133508C | 80 7D 00 B0 */	lwz r3, 0xb0(r29)
/* 81335090 | 48 00 F3 99 */	bl draw__Q23ipl7PointerFv
.L_81335094:
/* 81335094 | 80 7D 00 98 */	lwz r3, 0x98(r29)
/* 81335098 | 48 02 17 21 */	bl draw__Q23ipl12ErrorHandlerFv
/* 8133509C | 80 7D 00 C4 */	lwz r3, 0xc4(r29)
/* 813350A0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813350A4 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813350A8 | 7D 89 03 A6 */	mtctr r12
/* 813350AC | 4E 80 04 21 */	bctrl
/* 813350B0 | 80 7D 00 C8 */	lwz r3, 0xc8(r29)
/* 813350B4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813350B8 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813350BC | 7D 89 03 A6 */	mtctr r12
/* 813350C0 | 4E 80 04 21 */	bctrl
/* 813350C4 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 813350C8 | 48 00 8D B1 */	bl endRender__Q23ipl9FrameworkFv
/* 813350CC | 80 7D 00 98 */	lwz r3, 0x98(r29)
/* 813350D0 | 48 02 16 59 */	bl calc__Q23ipl12ErrorHandlerFv
/* 813350D4 | 80 7D 00 C4 */	lwz r3, 0xc4(r29)
/* 813350D8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813350DC | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813350E0 | 7D 89 03 A6 */	mtctr r12
/* 813350E4 | 4E 80 04 21 */	bctrl
/* 813350E8 | 80 7D 00 C8 */	lwz r3, 0xc8(r29)
/* 813350EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813350F0 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813350F4 | 7D 89 03 A6 */	mtctr r12
/* 813350F8 | 4E 80 04 21 */	bctrl
/* 813350FC | 88 1D 02 B2 */	lbz r0, 0x2b2(r29)
/* 81335100 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81335104 | 41 82 00 18 */	beq .L_8133511C
/* 81335108 | 38 7F 99 2C */	addi r3, r31, sSystem__Q23ipl3snd@l
/* 8133510C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81335110 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81335114 | 7D 89 03 A6 */	mtctr r12
/* 81335118 | 4E 80 04 21 */	bctrl
.L_8133511C:
/* 8133511C | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 81335120 | 48 00 8D F1 */	bl endFrame__Q23ipl9FrameworkFv
/* 81335124 | 80 7D 00 9C */	lwz r3, 0x9c(r29)
/* 81335128 | 48 02 1B 35 */	bl fatalUpdate__Q23ipl12ResetHandlerFv
/* 8133512C | 4B FF FE 60 */	b .L_81334F8C
.L_81335130:
/* 81335130 | E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 81335134 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81335138 | CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8133513C | 48 2C 43 D1 */	bl _restgpr_27
/* 81335140 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81335144 | 7C 08 03 A6 */	mtlr r0
/* 81335148 | 38 21 00 40 */	addi r1, r1, 0x40
/* 8133514C | 4E 80 00 20 */	blr
.endfn err_run__Q23ipl6SystemFv

# .text:0x252C | 0x81335150 | size: 0x1F8
# ipl::System::backup_run()
.fn backup_run__Q23ipl6SystemFv, global
/* 81335150 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81335154 | 7C 08 02 A6 */	mflr r0
/* 81335158 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 8133515C | DB E1 00 40 */	stfd f31, 0x40(r1)
/* 81335160 | F3 E1 00 48 */	psq_st f31, 0x48(r1), 0, qr0
/* 81335164 | 39 61 00 40 */	addi r11, r1, 0x40
/* 81335168 | 48 2C 43 5D */	bl _savegpr_28
/* 8133516C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81335170 | 3B A3 90 08 */	addi r29, r3, smArg__Q23ipl6System@l
/* 81335174 | 80 7D 00 9C */	lwz r3, 0x9c(r29)
/* 81335178 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8133517C | 30 03 FF FF */	subic r0, r3, 0x1
/* 81335180 | 7C 00 19 11 */	subfe. r0, r0, r3
/* 81335184 | 40 82 01 A4 */	bne .L_81335328
/* 81335188 | 38 60 00 00 */	li r3, 0x0
/* 8133518C | 48 20 8F 9D */	bl VISetBlack
/* 81335190 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81335194 | 48 02 53 FD */	bl __ct__Q23ipl9CdbBackupFv
/* 81335198 | CB E2 80 18 */	lfd f31, lbl_81694418@sda21(r0)
/* 8133519C | 3F C0 43 30 */	lis r30, 0x4330
/* 813351A0 | 3F E0 81 09 */	lis r31, sSystem__Q23ipl3snd@ha
/* 813351A4 | 48 00 01 6C */	b .L_81335310
.L_813351A8:
/* 813351A8 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 813351AC | 48 00 8C B5 */	bl beginFrame__Q23ipl9FrameworkFv
/* 813351B0 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 813351B4 | 48 00 8C C1 */	bl beginRender__Q23ipl9FrameworkFv
/* 813351B8 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 813351BC | C0 22 80 10 */	lfs f1, lbl_81694410@sda21(r0)
/* 813351C0 | 83 83 00 00 */	lwz r28, 0x0(r3)
/* 813351C4 | 93 C1 00 20 */	stw r30, 0x20(r1)
/* 813351C8 | FC 40 08 90 */	fmr f2, f1
/* 813351CC | A0 7C 00 04 */	lhz r3, 0x4(r28)
/* 813351D0 | FC A0 08 90 */	fmr f5, f1
/* 813351D4 | A0 1C 00 06 */	lhz r0, 0x6(r28)
/* 813351D8 | 90 61 00 24 */	stw r3, 0x24(r1)
/* 813351DC | C0 C2 80 20 */	lfs f6, lbl_81694420@sda21(r0)
/* 813351E0 | C8 01 00 20 */	lfd f0, 0x20(r1)
/* 813351E4 | 90 01 00 2C */	stw r0, 0x2c(r1)
/* 813351E8 | EC 60 F8 28 */	fsubs f3, f0, f31
/* 813351EC | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 813351F0 | C8 01 00 28 */	lfd f0, 0x28(r1)
/* 813351F4 | EC 80 F8 28 */	fsubs f4, f0, f31
/* 813351F8 | 48 21 2D 35 */	bl GXSetViewport
/* 813351FC | A0 BC 00 04 */	lhz r5, 0x4(r28)
/* 81335200 | 38 60 00 00 */	li r3, 0x0
/* 81335204 | A0 DC 00 06 */	lhz r6, 0x6(r28)
/* 81335208 | 38 80 00 00 */	li r4, 0x0
/* 8133520C | 48 21 2D 9D */	bl GXSetScissor
/* 81335210 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 81335214 | 48 0D 57 7D */	bl draw__Q33ipl5scene7ManagerFv
/* 81335218 | 80 7D 00 90 */	lwz r3, 0x90(r29)
/* 8133521C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81335220 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81335224 | 7D 89 03 A6 */	mtctr r12
/* 81335228 | 4E 80 04 21 */	bctrl
/* 8133522C | 80 7D 00 AC */	lwz r3, 0xac(r29)
/* 81335230 | 48 01 0C B9 */	bl draw__Q23ipl12DialogWindowFv
/* 81335234 | 80 7D 00 B4 */	lwz r3, 0xb4(r29)
/* 81335238 | 48 01 30 81 */	bl draw__Q23ipl14HomeButtonMenuFv
/* 8133523C | 80 7D 00 B0 */	lwz r3, 0xb0(r29)
/* 81335240 | 48 00 F1 E9 */	bl draw__Q23ipl7PointerFv
/* 81335244 | 80 7D 00 C4 */	lwz r3, 0xc4(r29)
/* 81335248 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133524C | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81335250 | 7D 89 03 A6 */	mtctr r12
/* 81335254 | 4E 80 04 21 */	bctrl
/* 81335258 | 80 7D 00 C8 */	lwz r3, 0xc8(r29)
/* 8133525C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81335260 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81335264 | 7D 89 03 A6 */	mtctr r12
/* 81335268 | 4E 80 04 21 */	bctrl
/* 8133526C | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 81335270 | 48 00 8C 09 */	bl endRender__Q23ipl9FrameworkFv
/* 81335274 | 80 6D A7 38 */	lwz r3, m_handle__Q23ipl11TVRCManager@sda21(r0)
/* 81335278 | 48 02 CF 89 */	bl update__Q23ipl11TVRCManagerFv
/* 8133527C | 48 00 08 9D */	bl setToday___Q23ipl6SystemFv
/* 81335280 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 81335284 | 48 00 22 7D */	bl read__Q33ipl10controller7ManagerFv
/* 81335288 | 80 7D 00 A8 */	lwz r3, 0xa8(r29)
/* 8133528C | 48 02 B6 0D */	bl update__Q33ipl3bs27ManagerFv
/* 81335290 | 80 7D 00 84 */	lwz r3, 0x84(r29)
/* 81335294 | 48 00 29 49 */	bl update__Q33ipl7channel7ManagerFv
/* 81335298 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8133529C | 48 02 53 F9 */	bl update__Q23ipl9CdbBackupFv
/* 813352A0 | 80 7D 00 AC */	lwz r3, 0xac(r29)
/* 813352A4 | 48 00 FF C9 */	bl calc__Q23ipl12DialogWindowFv
/* 813352A8 | 80 7D 00 B4 */	lwz r3, 0xb4(r29)
/* 813352AC | 48 01 2C ED */	bl calc__Q23ipl14HomeButtonMenuFv
/* 813352B0 | 80 7D 00 B0 */	lwz r3, 0xb0(r29)
/* 813352B4 | 48 00 EF BD */	bl calc__Q23ipl7PointerFv
/* 813352B8 | 80 7D 00 C4 */	lwz r3, 0xc4(r29)
/* 813352BC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813352C0 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813352C4 | 7D 89 03 A6 */	mtctr r12
/* 813352C8 | 4E 80 04 21 */	bctrl
/* 813352CC | 80 7D 00 C8 */	lwz r3, 0xc8(r29)
/* 813352D0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813352D4 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813352D8 | 7D 89 03 A6 */	mtctr r12
/* 813352DC | 4E 80 04 21 */	bctrl
/* 813352E0 | 38 7F 99 2C */	addi r3, r31, sSystem__Q23ipl3snd@l
/* 813352E4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813352E8 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813352EC | 7D 89 03 A6 */	mtctr r12
/* 813352F0 | 4E 80 04 21 */	bctrl
/* 813352F4 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 813352F8 | 48 00 8C 19 */	bl endFrame__Q23ipl9FrameworkFv
/* 813352FC | 88 1D 02 B2 */	lbz r0, 0x2b2(r29)
/* 81335300 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81335304 | 41 82 00 0C */	beq .L_81335310
/* 81335308 | 80 7D 00 98 */	lwz r3, 0x98(r29)
/* 8133530C | 48 02 12 A1 */	bl check__Q23ipl12ErrorHandlerFv
.L_81335310:
/* 81335310 | 80 01 00 18 */	lwz r0, 0x18(r1)
/* 81335314 | 2C 00 00 11 */	cmpwi r0, 0x11
/* 81335318 | 40 82 FE 90 */	bne .L_813351A8
/* 8133531C | 38 61 00 08 */	addi r3, r1, 0x8
/* 81335320 | 38 80 FF FF */	li r4, -0x1
/* 81335324 | 48 02 53 0D */	bl __dt__Q23ipl9CdbBackupFv
.L_81335328:
/* 81335328 | E3 E1 00 48 */	psq_l f31, 0x48(r1), 0, qr0
/* 8133532C | 39 61 00 40 */	addi r11, r1, 0x40
/* 81335330 | CB E1 00 40 */	lfd f31, 0x40(r1)
/* 81335334 | 48 2C 41 DD */	bl _restgpr_28
/* 81335338 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 8133533C | 7C 08 03 A6 */	mtlr r0
/* 81335340 | 38 21 00 50 */	addi r1, r1, 0x50
/* 81335344 | 4E 80 00 20 */	blr
.endfn backup_run__Q23ipl6SystemFv

# .text:0x2724 | 0x81335348 | size: 0x218
# ipl::System::reset_run()
.fn reset_run__Q23ipl6SystemFv, global
/* 81335348 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8133534C | 7C 08 02 A6 */	mflr r0
/* 81335350 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81335354 | DB E1 00 30 */	stfd f31, 0x30(r1)
/* 81335358 | F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 8133535C | 39 61 00 30 */	addi r11, r1, 0x30
/* 81335360 | 48 2C 41 65 */	bl _savegpr_28
/* 81335364 | 3C 60 81 63 */	lis r3, lbl_816345FC@ha
/* 81335368 | 38 63 45 FC */	addi r3, r3, lbl_816345FC@l
/* 8133536C | 4C C6 31 82 */	crclr cr1eq
/* 81335370 | 48 1F 93 31 */	bl OSReport
/* 81335374 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81335378 | CB E2 80 18 */	lfd f31, lbl_81694418@sda21(r0)
/* 8133537C | 3F C0 43 30 */	lis r30, 0x4330
/* 81335380 | 3F E0 81 09 */	lis r31, sSystem__Q23ipl3snd@ha
/* 81335384 | 3B A3 90 08 */	addi r29, r3, smArg__Q23ipl6System@l
.L_81335388:
/* 81335388 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 8133538C | 48 00 8A D5 */	bl beginFrame__Q23ipl9FrameworkFv
/* 81335390 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 81335394 | 48 00 8A E1 */	bl beginRender__Q23ipl9FrameworkFv
/* 81335398 | 88 1D 02 B2 */	lbz r0, 0x2b2(r29)
/* 8133539C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813353A0 | 41 82 00 0C */	beq .L_813353AC
/* 813353A4 | 80 7D 00 70 */	lwz r3, 0x70(r29)
/* 813353A8 | 48 00 98 0D */	bl makeIcon__Q33ipl6nigaoe7ManagerFv
.L_813353AC:
/* 813353AC | 88 1D 02 B2 */	lbz r0, 0x2b2(r29)
/* 813353B0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813353B4 | 41 82 00 0C */	beq .L_813353C0
/* 813353B8 | 80 7D 00 BC */	lwz r3, 0xbc(r29)
/* 813353BC | 48 02 FD 55 */	bl makeRawData__Q33ipl7utility11JpegDecoderFv
.L_813353C0:
/* 813353C0 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 813353C4 | C0 22 80 10 */	lfs f1, lbl_81694410@sda21(r0)
/* 813353C8 | 83 83 00 00 */	lwz r28, 0x0(r3)
/* 813353CC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813353D0 | FC 40 08 90 */	fmr f2, f1
/* 813353D4 | A0 7C 00 04 */	lhz r3, 0x4(r28)
/* 813353D8 | FC A0 08 90 */	fmr f5, f1
/* 813353DC | A0 1C 00 06 */	lhz r0, 0x6(r28)
/* 813353E0 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 813353E4 | C0 C2 80 20 */	lfs f6, lbl_81694420@sda21(r0)
/* 813353E8 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 813353EC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813353F0 | EC 60 F8 28 */	fsubs f3, f0, f31
/* 813353F4 | 93 C1 00 10 */	stw r30, 0x10(r1)
/* 813353F8 | C8 01 00 10 */	lfd f0, 0x10(r1)
/* 813353FC | EC 80 F8 28 */	fsubs f4, f0, f31
/* 81335400 | 48 21 2B 2D */	bl GXSetViewport
/* 81335404 | A0 BC 00 04 */	lhz r5, 0x4(r28)
/* 81335408 | 38 60 00 00 */	li r3, 0x0
/* 8133540C | A0 DC 00 06 */	lhz r6, 0x6(r28)
/* 81335410 | 38 80 00 00 */	li r4, 0x0
/* 81335414 | 48 21 2B 95 */	bl GXSetScissor
/* 81335418 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 8133541C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81335420 | 41 82 00 08 */	beq .L_81335428
/* 81335424 | 48 0D 55 6D */	bl draw__Q33ipl5scene7ManagerFv
.L_81335428:
/* 81335428 | 88 1D 02 B2 */	lbz r0, 0x2b2(r29)
/* 8133542C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81335430 | 41 82 00 38 */	beq .L_81335468
/* 81335434 | 80 7D 00 90 */	lwz r3, 0x90(r29)
/* 81335438 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133543C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81335440 | 7D 89 03 A6 */	mtctr r12
/* 81335444 | 4E 80 04 21 */	bctrl
/* 81335448 | 80 7D 00 AC */	lwz r3, 0xac(r29)
/* 8133544C | 48 01 0A 9D */	bl draw__Q23ipl12DialogWindowFv
/* 81335450 | 80 7D 00 A0 */	lwz r3, 0xa0(r29)
/* 81335454 | 48 02 19 E1 */	bl draw__Q23ipl14WarningHandlerFv
/* 81335458 | 80 7D 00 B0 */	lwz r3, 0xb0(r29)
/* 8133545C | 48 00 EF CD */	bl draw__Q23ipl7PointerFv
/* 81335460 | 80 7D 00 B4 */	lwz r3, 0xb4(r29)
/* 81335464 | 48 01 2E 55 */	bl draw__Q23ipl14HomeButtonMenuFv
.L_81335468:
/* 81335468 | 80 7D 00 C4 */	lwz r3, 0xc4(r29)
/* 8133546C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81335470 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81335474 | 7D 89 03 A6 */	mtctr r12
/* 81335478 | 4E 80 04 21 */	bctrl
/* 8133547C | 80 7D 00 C8 */	lwz r3, 0xc8(r29)
/* 81335480 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81335484 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 81335488 | 7D 89 03 A6 */	mtctr r12
/* 8133548C | 4E 80 04 21 */	bctrl
/* 81335490 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 81335494 | 48 00 89 E5 */	bl endRender__Q23ipl9FrameworkFv
/* 81335498 | 80 6D A7 38 */	lwz r3, m_handle__Q23ipl11TVRCManager@sda21(r0)
/* 8133549C | 48 02 CD 65 */	bl update__Q23ipl11TVRCManagerFv
/* 813354A0 | 48 00 06 79 */	bl setToday___Q23ipl6SystemFv
/* 813354A4 | 80 7D 00 A8 */	lwz r3, 0xa8(r29)
/* 813354A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813354AC | 41 82 00 08 */	beq .L_813354B4
/* 813354B0 | 48 02 B3 E9 */	bl update__Q33ipl3bs27ManagerFv
.L_813354B4:
/* 813354B4 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 813354B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813354BC | 41 82 00 08 */	beq .L_813354C4
/* 813354C0 | 48 0D 52 5D */	bl calc__Q33ipl5scene7ManagerFv
.L_813354C4:
/* 813354C4 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 813354C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813354CC | 41 82 00 08 */	beq .L_813354D4
/* 813354D0 | 48 00 20 31 */	bl read__Q33ipl10controller7ManagerFv
.L_813354D4:
/* 813354D4 | 80 7D 00 AC */	lwz r3, 0xac(r29)
/* 813354D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813354DC | 41 82 00 08 */	beq .L_813354E4
/* 813354E0 | 48 00 FD 8D */	bl calc__Q23ipl12DialogWindowFv
.L_813354E4:
/* 813354E4 | 80 7D 00 B4 */	lwz r3, 0xb4(r29)
/* 813354E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813354EC | 41 82 00 08 */	beq .L_813354F4
/* 813354F0 | 48 01 2A A9 */	bl calc__Q23ipl14HomeButtonMenuFv
.L_813354F4:
/* 813354F4 | 80 7D 00 B0 */	lwz r3, 0xb0(r29)
/* 813354F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813354FC | 41 82 00 08 */	beq .L_81335504
/* 81335500 | 48 00 ED 71 */	bl calc__Q23ipl7PointerFv
.L_81335504:
/* 81335504 | 88 1D 02 B2 */	lbz r0, 0x2b2(r29)
/* 81335508 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133550C | 41 82 00 18 */	beq .L_81335524
/* 81335510 | 38 7F 99 2C */	addi r3, r31, sSystem__Q23ipl3snd@l
/* 81335514 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81335518 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8133551C | 7D 89 03 A6 */	mtctr r12
/* 81335520 | 4E 80 04 21 */	bctrl
.L_81335524:
/* 81335524 | 80 7D 00 C4 */	lwz r3, 0xc4(r29)
/* 81335528 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133552C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81335530 | 7D 89 03 A6 */	mtctr r12
/* 81335534 | 4E 80 04 21 */	bctrl
/* 81335538 | 80 7D 00 C8 */	lwz r3, 0xc8(r29)
/* 8133553C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81335540 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81335544 | 7D 89 03 A6 */	mtctr r12
/* 81335548 | 4E 80 04 21 */	bctrl
/* 8133554C | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 81335550 | 48 00 89 C1 */	bl endFrame__Q23ipl9FrameworkFv
/* 81335554 | 80 7D 00 9C */	lwz r3, 0x9c(r29)
/* 81335558 | 48 02 13 AD */	bl update__Q23ipl12ResetHandlerFv
/* 8133555C | 4B FF FE 2C */	b .L_81335388
.endfn reset_run__Q23ipl6SystemFv

# .text:0x293C | 0x81335560 | size: 0x2C0
# ipl::System::warning_run()
.fn warning_run__Q23ipl6SystemFv, global
/* 81335560 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81335564 | 7C 08 02 A6 */	mflr r0
/* 81335568 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 8133556C | DB E1 00 30 */	stfd f31, 0x30(r1)
/* 81335570 | F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 81335574 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81335578 | 48 2C 3F 49 */	bl _savegpr_27
/* 8133557C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81335580 | 3B 83 90 08 */	addi r28, r3, smArg__Q23ipl6System@l
/* 81335584 | 80 7C 00 9C */	lwz r3, 0x9c(r28)
/* 81335588 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8133558C | 30 03 FF FF */	subic r0, r3, 0x1
/* 81335590 | 7C 00 19 11 */	subfe. r0, r0, r3
/* 81335594 | 40 82 02 6C */	bne .L_81335800
/* 81335598 | 38 60 00 00 */	li r3, 0x0
/* 8133559C | 48 20 8B 8D */	bl VISetBlack
/* 813355A0 | 80 7C 00 B0 */	lwz r3, 0xb0(r28)
/* 813355A4 | 38 00 00 01 */	li r0, 0x1
/* 813355A8 | CB E2 80 18 */	lfd f31, lbl_81694418@sda21(r0)
/* 813355AC | 3F C0 43 30 */	lis r30, 0x4330
/* 813355B0 | 8B A3 00 3D */	lbz r29, 0x3d(r3)
/* 813355B4 | 3F E0 81 09 */	lis r31, sSystem__Q23ipl3snd@ha
/* 813355B8 | 98 03 00 3D */	stb r0, 0x3d(r3)
.L_813355BC:
/* 813355BC | 80 7C 00 74 */	lwz r3, 0x74(r28)
/* 813355C0 | 48 00 88 A1 */	bl beginFrame__Q23ipl9FrameworkFv
/* 813355C4 | 80 7C 00 74 */	lwz r3, 0x74(r28)
/* 813355C8 | 48 00 88 AD */	bl beginRender__Q23ipl9FrameworkFv
/* 813355CC | 88 1C 02 B2 */	lbz r0, 0x2b2(r28)
/* 813355D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813355D4 | 41 82 00 0C */	beq .L_813355E0
/* 813355D8 | 80 7C 00 70 */	lwz r3, 0x70(r28)
/* 813355DC | 48 00 95 D9 */	bl makeIcon__Q33ipl6nigaoe7ManagerFv
.L_813355E0:
/* 813355E0 | 88 1C 02 B2 */	lbz r0, 0x2b2(r28)
/* 813355E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813355E8 | 41 82 00 0C */	beq .L_813355F4
/* 813355EC | 80 7C 00 BC */	lwz r3, 0xbc(r28)
/* 813355F0 | 48 02 FB 21 */	bl makeRawData__Q33ipl7utility11JpegDecoderFv
.L_813355F4:
/* 813355F4 | 80 7C 00 74 */	lwz r3, 0x74(r28)
/* 813355F8 | C0 22 80 10 */	lfs f1, lbl_81694410@sda21(r0)
/* 813355FC | 83 63 00 00 */	lwz r27, 0x0(r3)
/* 81335600 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81335604 | FC 40 08 90 */	fmr f2, f1
/* 81335608 | A0 7B 00 04 */	lhz r3, 0x4(r27)
/* 8133560C | FC A0 08 90 */	fmr f5, f1
/* 81335610 | A0 1B 00 06 */	lhz r0, 0x6(r27)
/* 81335614 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 81335618 | C0 C2 80 20 */	lfs f6, lbl_81694420@sda21(r0)
/* 8133561C | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 81335620 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81335624 | EC 60 F8 28 */	fsubs f3, f0, f31
/* 81335628 | 93 C1 00 10 */	stw r30, 0x10(r1)
/* 8133562C | C8 01 00 10 */	lfd f0, 0x10(r1)
/* 81335630 | EC 80 F8 28 */	fsubs f4, f0, f31
/* 81335634 | 48 21 28 F9 */	bl GXSetViewport
/* 81335638 | A0 BB 00 04 */	lhz r5, 0x4(r27)
/* 8133563C | 38 60 00 00 */	li r3, 0x0
/* 81335640 | A0 DB 00 06 */	lhz r6, 0x6(r27)
/* 81335644 | 38 80 00 00 */	li r4, 0x0
/* 81335648 | 48 21 29 61 */	bl GXSetScissor
/* 8133564C | 80 7C 00 64 */	lwz r3, 0x64(r28)
/* 81335650 | 48 0D 53 41 */	bl draw__Q33ipl5scene7ManagerFv
/* 81335654 | 88 1C 02 B2 */	lbz r0, 0x2b2(r28)
/* 81335658 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133565C | 41 82 00 20 */	beq .L_8133567C
/* 81335660 | 80 7C 00 90 */	lwz r3, 0x90(r28)
/* 81335664 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81335668 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8133566C | 7D 89 03 A6 */	mtctr r12
/* 81335670 | 4E 80 04 21 */	bctrl
/* 81335674 | 80 7C 00 AC */	lwz r3, 0xac(r28)
/* 81335678 | 48 01 08 71 */	bl draw__Q23ipl12DialogWindowFv
.L_8133567C:
/* 8133567C | 80 7C 00 A0 */	lwz r3, 0xa0(r28)
/* 81335680 | 48 02 17 B5 */	bl draw__Q23ipl14WarningHandlerFv
/* 81335684 | 88 1C 02 B2 */	lbz r0, 0x2b2(r28)
/* 81335688 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133568C | 41 82 00 0C */	beq .L_81335698
/* 81335690 | 80 7C 00 B4 */	lwz r3, 0xb4(r28)
/* 81335694 | 48 01 2C 25 */	bl draw__Q23ipl14HomeButtonMenuFv
.L_81335698:
/* 81335698 | 88 1C 02 B2 */	lbz r0, 0x2b2(r28)
/* 8133569C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813356A0 | 41 82 00 0C */	beq .L_813356AC
/* 813356A4 | 80 7C 00 B0 */	lwz r3, 0xb0(r28)
/* 813356A8 | 48 00 ED 81 */	bl draw__Q23ipl7PointerFv
.L_813356AC:
/* 813356AC | 80 7C 00 C4 */	lwz r3, 0xc4(r28)
/* 813356B0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813356B4 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813356B8 | 7D 89 03 A6 */	mtctr r12
/* 813356BC | 4E 80 04 21 */	bctrl
/* 813356C0 | 80 7C 00 C8 */	lwz r3, 0xc8(r28)
/* 813356C4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813356C8 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813356CC | 7D 89 03 A6 */	mtctr r12
/* 813356D0 | 4E 80 04 21 */	bctrl
/* 813356D4 | 80 7C 00 74 */	lwz r3, 0x74(r28)
/* 813356D8 | 48 00 87 A1 */	bl endRender__Q23ipl9FrameworkFv
/* 813356DC | 80 6D A7 38 */	lwz r3, m_handle__Q23ipl11TVRCManager@sda21(r0)
/* 813356E0 | 48 02 CB 21 */	bl update__Q23ipl11TVRCManagerFv
/* 813356E4 | 48 00 04 35 */	bl setToday___Q23ipl6SystemFv
/* 813356E8 | 80 7C 00 68 */	lwz r3, 0x68(r28)
/* 813356EC | 48 00 1E 15 */	bl read__Q33ipl10controller7ManagerFv
/* 813356F0 | 80 7C 00 A8 */	lwz r3, 0xa8(r28)
/* 813356F4 | 48 02 B1 A5 */	bl update__Q33ipl3bs27ManagerFv
/* 813356F8 | 2C 03 00 0A */	cmpwi r3, 0xa
/* 813356FC | 40 82 00 20 */	bne .L_8133571C
/* 81335700 | 80 7C 00 98 */	lwz r3, 0x98(r28)
/* 81335704 | 38 80 00 01 */	li r4, 0x1
/* 81335708 | 38 A0 00 00 */	li r5, 0x0
/* 8133570C | 38 C0 00 00 */	li r6, 0x0
/* 81335710 | 38 E0 00 00 */	li r7, 0x0
/* 81335714 | 39 00 FF FF */	li r8, -0x1
/* 81335718 | 48 02 0D FD */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_8133571C:
/* 8133571C | 80 7C 00 84 */	lwz r3, 0x84(r28)
/* 81335720 | 48 00 24 BD */	bl update__Q33ipl7channel7ManagerFv
/* 81335724 | 88 1C 02 B2 */	lbz r0, 0x2b2(r28)
/* 81335728 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133572C | 41 82 00 58 */	beq .L_81335784
/* 81335730 | 80 7C 00 B4 */	lwz r3, 0xb4(r28)
/* 81335734 | 48 01 28 65 */	bl calc__Q23ipl14HomeButtonMenuFv
/* 81335738 | 80 7C 00 B0 */	lwz r3, 0xb0(r28)
/* 8133573C | 48 00 EB 35 */	bl calc__Q23ipl7PointerFv
/* 81335740 | 80 7C 00 C4 */	lwz r3, 0xc4(r28)
/* 81335744 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81335748 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8133574C | 7D 89 03 A6 */	mtctr r12
/* 81335750 | 4E 80 04 21 */	bctrl
/* 81335754 | 80 7C 00 C8 */	lwz r3, 0xc8(r28)
/* 81335758 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133575C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81335760 | 7D 89 03 A6 */	mtctr r12
/* 81335764 | 4E 80 04 21 */	bctrl
/* 81335768 | 80 7C 00 A0 */	lwz r3, 0xa0(r28)
/* 8133576C | 48 02 16 C1 */	bl calc__Q23ipl14WarningHandlerFv
/* 81335770 | 38 7F 99 2C */	addi r3, r31, sSystem__Q23ipl3snd@l
/* 81335774 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81335778 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8133577C | 7D 89 03 A6 */	mtctr r12
/* 81335780 | 4E 80 04 21 */	bctrl
.L_81335784:
/* 81335784 | 80 7C 00 74 */	lwz r3, 0x74(r28)
/* 81335788 | 48 00 87 89 */	bl endFrame__Q23ipl9FrameworkFv
/* 8133578C | 88 1C 02 B2 */	lbz r0, 0x2b2(r28)
/* 81335790 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81335794 | 41 82 00 0C */	beq .L_813357A0
/* 81335798 | 80 7C 00 98 */	lwz r3, 0x98(r28)
/* 8133579C | 48 02 0E 11 */	bl check__Q23ipl12ErrorHandlerFv
.L_813357A0:
/* 813357A0 | 80 7C 00 9C */	lwz r3, 0x9c(r28)
/* 813357A4 | 48 02 11 61 */	bl update__Q23ipl12ResetHandlerFv
/* 813357A8 | 80 7C 00 9C */	lwz r3, 0x9c(r28)
/* 813357AC | 48 02 11 45 */	bl check__Q23ipl12ResetHandlerFv
/* 813357B0 | 80 7C 00 A0 */	lwz r3, 0xa0(r28)
/* 813357B4 | 48 02 16 89 */	bl check__Q23ipl14WarningHandlerFv
/* 813357B8 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813357BC | 41 82 FE 00 */	beq .L_813355BC
/* 813357C0 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813357C4 | 41 82 00 14 */	beq .L_813357D8
/* 813357C8 | 80 7C 00 B0 */	lwz r3, 0xb0(r28)
/* 813357CC | 38 00 00 01 */	li r0, 0x1
/* 813357D0 | 98 03 00 3D */	stb r0, 0x3d(r3)
/* 813357D4 | 48 00 00 10 */	b .L_813357E4
.L_813357D8:
/* 813357D8 | 80 7C 00 B0 */	lwz r3, 0xb0(r28)
/* 813357DC | 38 00 00 00 */	li r0, 0x0
/* 813357E0 | 98 03 00 3D */	stb r0, 0x3d(r3)
.L_813357E4:
/* 813357E4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813357E8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813357EC | 80 63 00 A0 */	lwz r3, 0xa0(r3)
/* 813357F0 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 813357F4 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813357F8 | 40 82 00 08 */	bne .L_81335800
/* 813357FC | 4B FF FB 4D */	bl reset_run__Q23ipl6SystemFv
.L_81335800:
/* 81335800 | E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 81335804 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81335808 | CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8133580C | 48 2C 3D 01 */	bl _restgpr_27
/* 81335810 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81335814 | 7C 08 03 A6 */	mtlr r0
/* 81335818 | 38 21 00 40 */	addi r1, r1, 0x40
/* 8133581C | 4E 80 00 20 */	blr
.endfn warning_run__Q23ipl6SystemFv

# .text:0x2BFC | 0x81335820 | size: 0x10
# ipl::System::reinit()
.fn reinit__Q23ipl6SystemFv, global
/* 81335820 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81335824 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81335828 | 80 63 00 28 */	lwz r3, 0x28(r3)
/* 8133582C | 48 2C 28 0C */	b fn_815F8038
.endfn reinit__Q23ipl6SystemFv

# .text:0x2C0C | 0x81335830 | size: 0xE8
# ipl::System::cancelThread()
.fn cancelThread__Q23ipl6SystemFv, global
/* 81335830 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81335834 | 7C 08 02 A6 */	mflr r0
/* 81335838 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8133583C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81335840 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81335844 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81335848 | 80 63 00 6C */	lwz r3, 0x6c(r3)
/* 8133584C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81335850 | 41 82 00 24 */	beq .L_81335874
/* 81335854 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81335858 | 83 E3 00 10 */	lwz r31, 0x10(r3)
/* 8133585C | 7F E3 FB 78 */	mr r3, r31
/* 81335860 | 48 1F E7 21 */	bl OSIsThreadTerminated
/* 81335864 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81335868 | 40 82 00 0C */	bne .L_81335874
/* 8133586C | 7F E3 FB 78 */	mr r3, r31
/* 81335870 | 48 1F F0 29 */	bl OSCancelThread
.L_81335874:
/* 81335874 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81335878 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8133587C | 80 63 00 D0 */	lwz r3, 0xd0(r3)
/* 81335880 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81335884 | 41 82 00 20 */	beq .L_813358A4
/* 81335888 | 83 E3 00 10 */	lwz r31, 0x10(r3)
/* 8133588C | 7F E3 FB 78 */	mr r3, r31
/* 81335890 | 48 1F E6 F1 */	bl OSIsThreadTerminated
/* 81335894 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81335898 | 40 82 00 0C */	bne .L_813358A4
/* 8133589C | 7F E3 FB 78 */	mr r3, r31
/* 813358A0 | 48 1F EF F9 */	bl OSCancelThread
.L_813358A4:
/* 813358A4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813358A8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813358AC | 80 63 00 D4 */	lwz r3, 0xd4(r3)
/* 813358B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813358B4 | 41 82 00 20 */	beq .L_813358D4
/* 813358B8 | 83 E3 00 10 */	lwz r31, 0x10(r3)
/* 813358BC | 7F E3 FB 78 */	mr r3, r31
/* 813358C0 | 48 1F E6 C1 */	bl OSIsThreadTerminated
/* 813358C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813358C8 | 40 82 00 0C */	bne .L_813358D4
/* 813358CC | 7F E3 FB 78 */	mr r3, r31
/* 813358D0 | 48 1F EF C9 */	bl OSCancelThread
.L_813358D4:
/* 813358D4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813358D8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813358DC | 80 63 00 D8 */	lwz r3, 0xd8(r3)
/* 813358E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813358E4 | 41 82 00 20 */	beq .L_81335904
/* 813358E8 | 83 E3 00 10 */	lwz r31, 0x10(r3)
/* 813358EC | 7F E3 FB 78 */	mr r3, r31
/* 813358F0 | 48 1F E6 91 */	bl OSIsThreadTerminated
/* 813358F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813358F8 | 40 82 00 0C */	bne .L_81335904
/* 813358FC | 7F E3 FB 78 */	mr r3, r31
/* 81335900 | 48 1F EF 99 */	bl OSCancelThread
.L_81335904:
/* 81335904 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81335908 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133590C | 7C 08 03 A6 */	mtlr r0
/* 81335910 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81335914 | 4E 80 00 20 */	blr
.endfn cancelThread__Q23ipl6SystemFv

# .text:0x2CF4 | 0x81335918 | size: 0x34
# ipl::System::getProjectionRect(nw4r::ut::Rect*)
.fn getProjectionRect__Q23ipl6SystemFPQ34nw4r2ut4Rect, global
/* 81335918 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8133591C | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81335920 | 80 84 00 74 */	lwz r4, 0x74(r4)
/* 81335924 | 80 04 00 10 */	lwz r0, 0x10(r4)
/* 81335928 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8133592C | 41 82 00 18 */	beq .L_81335944
/* 81335930 | 4C 80 00 20 */	bgelr
/* 81335934 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81335938 | 40 80 00 08 */	bge .L_81335940
/* 8133593C | 4E 80 00 20 */	blr
.L_81335940:
/* 81335940 | 48 00 00 0C */	b getProjectionRect4x3__Q23ipl6SystemFPQ34nw4r2ut4Rect
.L_81335944:
/* 81335944 | 48 00 00 2C */	b getProjectionRect16x9__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 81335948 | 4E 80 00 20 */	blr
.endfn getProjectionRect__Q23ipl6SystemFPQ34nw4r2ut4Rect

# .text:0x2D28 | 0x8133594C | size: 0x24
# ipl::System::getProjectionRect4x3(nw4r::ut::Rect*)
.fn getProjectionRect4x3__Q23ipl6SystemFPQ34nw4r2ut4Rect, global
/* 8133594C | C0 62 80 24 */	lfs f3, lbl_81694424@sda21(r0)
/* 81335950 | C0 42 80 28 */	lfs f2, lbl_81694428@sda21(r0)
/* 81335954 | C0 22 80 2C */	lfs f1, lbl_8169442C@sda21(r0)
/* 81335958 | C0 02 80 30 */	lfs f0, lbl_81694430@sda21(r0)
/* 8133595C | D0 63 00 00 */	stfs f3, 0x0(r3)
/* 81335960 | D0 43 00 08 */	stfs f2, 0x8(r3)
/* 81335964 | D0 23 00 0C */	stfs f1, 0xc(r3)
/* 81335968 | D0 03 00 04 */	stfs f0, 0x4(r3)
/* 8133596C | 4E 80 00 20 */	blr
.endfn getProjectionRect4x3__Q23ipl6SystemFPQ34nw4r2ut4Rect

# .text:0x2D4C | 0x81335970 | size: 0x24
# ipl::System::getProjectionRect16x9(nw4r::ut::Rect*)
.fn getProjectionRect16x9__Q23ipl6SystemFPQ34nw4r2ut4Rect, global
/* 81335970 | C0 62 80 34 */	lfs f3, lbl_81694434@sda21(r0)
/* 81335974 | C0 42 80 38 */	lfs f2, lbl_81694438@sda21(r0)
/* 81335978 | C0 22 80 2C */	lfs f1, lbl_8169442C@sda21(r0)
/* 8133597C | C0 02 80 30 */	lfs f0, lbl_81694430@sda21(r0)
/* 81335980 | D0 63 00 00 */	stfs f3, 0x0(r3)
/* 81335984 | D0 43 00 08 */	stfs f2, 0x8(r3)
/* 81335988 | D0 23 00 0C */	stfs f1, 0xc(r3)
/* 8133598C | D0 03 00 04 */	stfs f0, 0x4(r3)
/* 81335990 | 4E 80 00 20 */	blr
.endfn getProjectionRect16x9__Q23ipl6SystemFPQ34nw4r2ut4Rect

# .text:0x2D70 | 0x81335994 | size: 0x14
# ipl::System::getRenderModeObj()
.fn getRenderModeObj__Q23ipl6SystemFv, global
/* 81335994 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81335998 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8133599C | 80 63 00 74 */	lwz r3, 0x74(r3)
/* 813359A0 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813359A4 | 4E 80 00 20 */	blr
.endfn getRenderModeObj__Q23ipl6SystemFv

# .text:0x2D84 | 0x813359A8 | size: 0x10
# ipl::System::getMasterController()
.fn getMasterController__Q23ipl6SystemFv, global
/* 813359A8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813359AC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813359B0 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 813359B4 | 48 00 1E CC */	b getMasterController__Q33ipl10controller7ManagerFv
.endfn getMasterController__Q23ipl6SystemFv

# .text:0x2D94 | 0x813359B8 | size: 0x10
# ipl::System::getYoungController()
.fn getYoungController__Q23ipl6SystemFv, global
/* 813359B8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813359BC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813359C0 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 813359C4 | 48 00 1E D0 */	b getYoungController__Q33ipl10controller7ManagerFv
.endfn getYoungController__Q23ipl6SystemFv

# .text:0x2DA4 | 0x813359C8 | size: 0x14
# ipl::System::getController(int)
.fn getController__Q23ipl6SystemFi, global
/* 813359C8 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813359CC | 7C 64 1B 78 */	mr r4, r3
/* 813359D0 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813359D4 | 80 65 00 68 */	lwz r3, 0x68(r5)
/* 813359D8 | 48 00 1E B0 */	b getController__Q33ipl10controller7ManagerFi
.endfn getController__Q23ipl6SystemFi

# .text:0x2DB8 | 0x813359DC | size: 0x10
# ipl::System::getRndm()
.fn getRndm__Q23ipl6SystemFv, global
/* 813359DC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813359E0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813359E4 | 80 63 00 CC */	lwz r3, 0xcc(r3)
/* 813359E8 | 4E 80 00 20 */	blr
.endfn getRndm__Q23ipl6SystemFv

# .text:0x2DC8 | 0x813359EC | size: 0xA0
# ipl::System::getLanguage()
.fn getLanguage__Q23ipl6SystemFv, global
/* 813359EC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813359F0 | 7C 08 02 A6 */	mflr r0
/* 813359F4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813359F8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813359FC | 48 23 47 09 */	bl SCGetLanguage
/* 81335A00 | 54 7F 06 3E */	clrlwi r31, r3, 24
/* 81335A04 | 48 00 00 89 */	bl getRegion__Q23ipl6SystemFv
/* 81335A08 | 28 03 00 0B */	cmplwi r3, 0xb
/* 81335A0C | 41 81 00 64 */	bgt .L_81335A70
/* 81335A10 | 3C 80 81 63 */	lis r4, jumptable_8163460C@ha
/* 81335A14 | 54 60 10 3A */	slwi r0, r3, 2
/* 81335A18 | 38 84 46 0C */	addi r4, r4, jumptable_8163460C@l
/* 81335A1C | 7C 84 00 2E */	lwzx r4, r4, r0
/* 81335A20 | 7C 89 03 A6 */	mtctr r4
/* 81335A24 | 4E 80 04 20 */	bctr
.L_81335A28:
/* 81335A28 | 2C 1F 00 05 */	cmpwi r31, 0x5
/* 81335A2C | 40 80 00 0C */	bge .L_81335A38
/* 81335A30 | 2C 1F 00 03 */	cmpwi r31, 0x3
/* 81335A34 | 40 80 00 40 */	bge .L_81335A74
.L_81335A38:
/* 81335A38 | 3B E0 00 01 */	li r31, 0x1
/* 81335A3C | 48 00 00 38 */	b .L_81335A74
.L_81335A40:
/* 81335A40 | 3B E0 00 00 */	li r31, 0x0
/* 81335A44 | 48 00 00 30 */	b .L_81335A74
.L_81335A48:
/* 81335A48 | 2C 1F 00 07 */	cmpwi r31, 0x7
/* 81335A4C | 40 80 00 0C */	bge .L_81335A58
/* 81335A50 | 2C 1F 00 02 */	cmpwi r31, 0x2
/* 81335A54 | 40 80 00 20 */	bge .L_81335A74
.L_81335A58:
/* 81335A58 | 3B E0 00 01 */	li r31, 0x1
/* 81335A5C | 48 00 00 18 */	b .L_81335A74
.L_81335A60:
/* 81335A60 | 3B E0 00 09 */	li r31, 0x9
/* 81335A64 | 48 00 00 10 */	b .L_81335A74
.L_81335A68:
/* 81335A68 | 3B E0 00 07 */	li r31, 0x7
/* 81335A6C | 48 00 00 08 */	b .L_81335A74
.L_81335A70:
/* 81335A70 | 3B E0 00 01 */	li r31, 0x1
.L_81335A74:
/* 81335A74 | 7F E3 FB 78 */	mr r3, r31
/* 81335A78 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81335A7C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81335A80 | 7C 08 03 A6 */	mtlr r0
/* 81335A84 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81335A88 | 4E 80 00 20 */	blr
.endfn getLanguage__Q23ipl6SystemFv

# .text:0x2E68 | 0x81335A8C | size: 0x68
# ipl::System::getRegion()
.fn getRegion__Q23ipl6SystemFv, global
/* 81335A8C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81335A90 | 7C 08 02 A6 */	mflr r0
/* 81335A94 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81335A98 | 48 23 50 35 */	bl SCGetProductArea
/* 81335A9C | 7C 60 07 74 */	extsb r0, r3
/* 81335AA0 | 28 00 00 0B */	cmplwi r0, 0xb
/* 81335AA4 | 41 81 00 3C */	bgt .L_81335AE0
/* 81335AA8 | 3C 60 81 63 */	lis r3, jumptable_8163463C@ha
/* 81335AAC | 54 00 10 3A */	slwi r0, r0, 2
/* 81335AB0 | 38 63 46 3C */	addi r3, r3, jumptable_8163463C@l
/* 81335AB4 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 81335AB8 | 7C 69 03 A6 */	mtctr r3
/* 81335ABC | 4E 80 04 20 */	bctr
.L_81335AC0:
/* 81335AC0 | 38 60 00 00 */	li r3, 0x0
/* 81335AC4 | 48 00 00 20 */	b .L_81335AE4
.L_81335AC8:
/* 81335AC8 | 38 60 00 02 */	li r3, 0x2
/* 81335ACC | 48 00 00 18 */	b .L_81335AE4
.L_81335AD0:
/* 81335AD0 | 38 60 00 06 */	li r3, 0x6
/* 81335AD4 | 48 00 00 10 */	b .L_81335AE4
.L_81335AD8:
/* 81335AD8 | 38 60 00 0B */	li r3, 0xb
/* 81335ADC | 48 00 00 08 */	b .L_81335AE4
.L_81335AE0:
/* 81335AE0 | 38 60 00 01 */	li r3, 0x1
.L_81335AE4:
/* 81335AE4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81335AE8 | 7C 08 03 A6 */	mtlr r0
/* 81335AEC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81335AF0 | 4E 80 00 20 */	blr
.endfn getRegion__Q23ipl6SystemFv

# .text:0x2ED0 | 0x81335AF4 | size: 0x24
# ipl::System::getFont()
.fn getFont__Q23ipl6SystemFv, global
/* 81335AF4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81335AF8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81335AFC | 80 63 00 EC */	lwz r3, 0xec(r3)
/* 81335B00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81335B04 | 40 82 00 0C */	bne .L_81335B10
/* 81335B08 | 38 60 00 00 */	li r3, 0x0
/* 81335B0C | 4E 80 00 20 */	blr
.L_81335B10:
/* 81335B10 | 80 63 00 A0 */	lwz r3, 0xa0(r3)
/* 81335B14 | 4E 80 00 20 */	blr
.endfn getFont__Q23ipl6SystemFv

# .text:0x2EF4 | 0x81335B18 | size: 0x6C
# ipl::System::setToday_()
.fn setToday___Q23ipl6SystemFv, global
/* 81335B18 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81335B1C | 7C 08 02 A6 */	mflr r0
/* 81335B20 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81335B24 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81335B28 | 48 20 01 59 */	bl OSGetTime
/* 81335B2C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81335B30 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81335B34 | 38 BF 00 3C */	addi r5, r31, 0x3c
/* 81335B38 | 48 20 04 2D */	bl OSTicksToCalendarTime
/* 81335B3C | 80 1F 00 50 */	lwz r0, 0x50(r31)
/* 81335B40 | 2C 00 07 F3 */	cmpwi r0, 0x7f3
/* 81335B44 | 40 81 00 2C */	ble .L_81335B70
/* 81335B48 | 38 60 07 F3 */	li r3, 0x7f3
/* 81335B4C | 38 80 00 0B */	li r4, 0xb
/* 81335B50 | 38 00 00 1F */	li r0, 0x1f
/* 81335B54 | 90 7F 00 50 */	stw r3, 0x50(r31)
/* 81335B58 | 38 7F 00 3C */	addi r3, r31, 0x3c
/* 81335B5C | 90 9F 00 4C */	stw r4, 0x4c(r31)
/* 81335B60 | 90 1F 00 48 */	stw r0, 0x48(r31)
/* 81335B64 | 48 20 05 C9 */	bl OSCalendarTimeToTicks
/* 81335B68 | 38 BF 00 3C */	addi r5, r31, 0x3c
/* 81335B6C | 48 20 03 F9 */	bl OSTicksToCalendarTime
.L_81335B70:
/* 81335B70 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81335B74 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81335B78 | 7C 08 03 A6 */	mtlr r0
/* 81335B7C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81335B80 | 4E 80 00 20 */	blr
.endfn setToday___Q23ipl6SystemFv

# .text:0x2F60 | 0x81335B84 | size: 0x100
# ipl::System::getBootArg(int, char**)
.fn getBootArg__Q23ipl6SystemFiPPc, global
/* 81335B84 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81335B88 | 7C 08 02 A6 */	mflr r0
/* 81335B8C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81335B90 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81335B94 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81335B98 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81335B9C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81335BA0 | 3B C0 00 00 */	li r30, 0x0
/* 81335BA4 | 93 DF 02 28 */	stw r30, 0x228(r31)
/* 81335BA8 | 93 DF 02 2C */	stw r30, 0x22c(r31)
/* 81335BAC | 9B DF 02 C8 */	stb r30, 0x2c8(r31)
/* 81335BB0 | 93 DF 02 D4 */	stw r30, 0x2d4(r31)
/* 81335BB4 | 93 DF 02 D0 */	stw r30, 0x2d0(r31)
/* 81335BB8 | 48 04 3B E9 */	bl BS2GetBootType
/* 81335BBC | 90 7F 02 1C */	stw r3, 0x21c(r31)
/* 81335BC0 | 48 04 3B 39 */	bl BS2GetLaunchCode
/* 81335BC4 | 80 1F 02 1C */	lwz r0, 0x21c(r31)
/* 81335BC8 | 90 7F 02 20 */	stw r3, 0x220(r31)
/* 81335BCC | 28 00 00 03 */	cmplwi r0, 0x3
/* 81335BD0 | 40 82 00 9C */	bne .L_81335C6C
/* 81335BD4 | 28 03 00 01 */	cmplwi r3, 0x1
/* 81335BD8 | 40 82 00 38 */	bne .L_81335C10
/* 81335BDC | 48 04 3B 2D */	bl BS2GetArgc
/* 81335BE0 | 28 03 00 01 */	cmplwi r3, 0x1
/* 81335BE4 | 40 81 00 2C */	ble .L_81335C10
/* 81335BE8 | 48 04 3B 39 */	bl BS2GetArgv
/* 81335BEC | 7C 64 1B 78 */	mr r4, r3
/* 81335BF0 | 38 7F 02 30 */	addi r3, r31, 0x230
/* 81335BF4 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 81335BF8 | 38 A0 00 80 */	li r5, 0x80
/* 81335BFC | 48 2C C7 C9 */	bl strncpy
/* 81335C00 | 38 1F 02 30 */	addi r0, r31, 0x230
/* 81335C04 | 9B DF 02 AF */	stb r30, 0x2af(r31)
/* 81335C08 | 90 1F 02 28 */	stw r0, 0x228(r31)
/* 81335C0C | 48 00 00 60 */	b .L_81335C6C
.L_81335C10:
/* 81335C10 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81335C14 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81335C18 | 80 1F 02 20 */	lwz r0, 0x220(r31)
/* 81335C1C | 28 00 00 02 */	cmplwi r0, 0x2
/* 81335C20 | 40 82 00 4C */	bne .L_81335C6C
/* 81335C24 | 48 04 3A E5 */	bl BS2GetArgc
/* 81335C28 | 28 03 00 01 */	cmplwi r3, 0x1
/* 81335C2C | 40 81 00 40 */	ble .L_81335C6C
/* 81335C30 | 48 04 3A F1 */	bl BS2GetArgv
/* 81335C34 | 7C 64 1B 78 */	mr r4, r3
/* 81335C38 | 38 7F 02 30 */	addi r3, r31, 0x230
/* 81335C3C | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 81335C40 | 38 A0 00 80 */	li r5, 0x80
/* 81335C44 | 48 2C C7 81 */	bl strncpy
/* 81335C48 | 38 7F 02 30 */	addi r3, r31, 0x230
/* 81335C4C | 38 80 00 00 */	li r4, 0x0
/* 81335C50 | 38 00 00 01 */	li r0, 0x1
/* 81335C54 | 98 9F 02 AF */	stb r4, 0x2af(r31)
/* 81335C58 | 90 7F 02 2C */	stw r3, 0x22c(r31)
/* 81335C5C | 98 1F 02 C8 */	stb r0, 0x2c8(r31)
/* 81335C60 | 48 04 3A ED */	bl BS2_8137974C
/* 81335C64 | 90 9F 02 D4 */	stw r4, 0x2d4(r31)
/* 81335C68 | 90 7F 02 D0 */	stw r3, 0x2d0(r31)
.L_81335C6C:
/* 81335C6C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81335C70 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81335C74 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81335C78 | 7C 08 03 A6 */	mtlr r0
/* 81335C7C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81335C80 | 4E 80 00 20 */	blr
.endfn getBootArg__Q23ipl6SystemFiPPc

# .text:0x3060 | 0x81335C84 | size: 0x10
# textinput::EventObserver::onOutOfLength()
.fn onOutOfLength__Q29textinput13EventObserverFv, global
/* 81335C84 | 3C 60 81 63 */	lis r3, lbl_81634699_onOutOfLength__Q29textinput13EventObserver@ha
/* 81335C88 | 38 63 46 99 */	addi r3, r3, lbl_81634699_onOutOfLength__Q29textinput13EventObserver@l
/* 81335C8C | 4C C6 31 82 */	crclr cr1eq
/* 81335C90 | 48 2C AA 10 */	b printf
.endfn onOutOfLength__Q29textinput13EventObserverFv

# .text:0x3070 | 0x81335C94 | size: 0x10
# textinput::EventObserver::onCancel()
.fn onCancel__Q29textinput13EventObserverFv, global
/* 81335C94 | 3C 60 81 63 */	lis r3, lbl_81634690_onCancel__Q29textinput13EventObserver@ha
/* 81335C98 | 38 63 46 90 */	addi r3, r3, lbl_81634690_onCancel__Q29textinput13EventObserver@l
/* 81335C9C | 4C C6 31 82 */	crclr cr1eq
/* 81335CA0 | 48 2C AA 00 */	b printf
.endfn onCancel__Q29textinput13EventObserverFv

# .text:0x3080 | 0x81335CA4 | size: 0xC
# textinput::EventObserver::onOK()
.fn onOK__Q29textinput13EventObserverFv, global
/* 81335CA4 | 38 6D 80 35 */	li r3, "@STRING@onOK__Q29textinput13EventObserverFv"@sda21
/* 81335CA8 | 4C C6 31 82 */	crclr cr1eq
/* 81335CAC | 48 2C A9 F4 */	b printf
.endfn onOK__Q29textinput13EventObserverFv

# .text:0x308C | 0x81335CB0 | size: 0x4
# textinput::EventObserver::onSE(textinput::sound::SE)
.fn onSE__Q29textinput13EventObserverFQ39textinput5sound2SE, global
/* 81335CB0 | 4E 80 00 20 */	blr
.endfn onSE__Q29textinput13EventObserverFQ39textinput5sound2SE

# .text:0x3090 | 0x81335CB4 | size: 0x4
# textinput::EventObserver::onEvent(nw4r::lyt::Pane*, unsigned long)
.fn onEvent__Q29textinput13EventObserverFPQ34nw4r3lyt4PaneUl, global
/* 81335CB4 | 4E 80 00 20 */	blr
.endfn onEvent__Q29textinput13EventObserverFPQ34nw4r3lyt4PaneUl

# .text:0x3094 | 0x81335CB8 | size: 0x4
# textinput::EventObserver::onCommand(textinput::CommandReceiver::INPUT_COMMAND, void*)
.fn onCommand__Q29textinput13EventObserverFQ39textinput15CommandReceiver13INPUT_COMMANDPv, global
/* 81335CB8 | 4E 80 00 20 */	blr
.endfn onCommand__Q29textinput13EventObserverFQ39textinput15CommandReceiver13INPUT_COMMANDPv

# .text:0x3098 | 0x81335CBC | size: 0x4
# textinput::EventObserver::onInput(textinput::CommandReceiver::INPUT_COMMAND, void*)
.fn onInput__Q29textinput13EventObserverFQ39textinput15CommandReceiver13INPUT_COMMANDPv, global
/* 81335CBC | 4E 80 00 20 */	blr
.endfn onInput__Q29textinput13EventObserverFQ39textinput15CommandReceiver13INPUT_COMMANDPv

# .text:0x309C | 0x81335CC0 | size: 0xC
.fn "__sinit_\\iplSystem_cpp", local
/* 81335CC0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81335CC4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81335CC8 | 4B FF CF 5C */	b __ct__Q33ipl6System3ArgFv
.endfn "__sinit_\\iplSystem_cpp"

# 0x8160D1C4..0x8160D1C8 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte "__sinit_\\iplSystem_cpp"

# 0x81634120..0x816346A8 | size: 0x588
.data
.balign 8

# .data:0x0 | 0x81634120 | size: 0x13
.obj lbl_81634120, global
	.string "arena lo %x hi %x\n"
.endobj lbl_81634120

# .data:0x13 | 0x81634133 | size: 0x3A
.obj lbl_81634133, global
	.string "*****************************\n\000TREASURE HEAP: %p SIZE:%d\n"
.endobj lbl_81634133

# .data:0x4D | 0x8163416D | size: 0xB1
.obj lbl_8163416D, global
	.string "MEM1SYS HEAP: %p SIZE:%d\n\000/font/font.ash\000wbf1.brfna\000wbf2.brfna\000eZTSystemENAM.zsd\000eZTSystemFRCA.zsd\000eZTSystemESSA.zsd\000eZTNintendoENAM.znd\000eZTNintendoFRCA.znd\000eZTNintendoESSA.znd"
.endobj lbl_8163416D

# .data:0xFE | 0x8163421E | size: 0x1EE
.obj lbl_8163421E, global
	.string "MEM1SYS Free:%d NWC24 Need %d\n\000/sound/iplSound.brsar\000/layout/common/sofkeybd.ash\000/layout/common/homeBtn1.ash\000/layout/jpn/homeBtn1.ash\000/layout/eng/homeBtn1.ash\000/layout/ger/homeBtn1.ash\000/layout/fra/homeBtn1.ash\000/layout/spa/homeBtn1.ash\000/layout/ita/homeBtn1.ash\000/layout/ned/homeBtn1.ash\000/layout/kor/homeBtn1.ash\000/layout/chn/homeBtn1.ash\000/homebutton/home.csv\000/homebutton/config.txt\000/homebutton/SpeakerSe.arc\000/homebutton/homeBtnIcon.tpl\000dlgWdw.ash\000/my_question.jpg\000eZTSystemNA.arc\000eZTNintendoNA.arc"
.endobj lbl_8163421E

# .data:0x2EC | 0x8163440C | size: 0x1C
.obj lbl_8163440C, global
	.string "Start: Process NWC24 WiiID\n"
.endobj lbl_8163440C

# .data:0x308 | 0x81634428 | size: 0x174
.obj lbl_81634428, global
	.string "Done: Process NWC24 WiiID\n\000/shared2/sys/SYSCONF\000iplSystem.cpp\000/title/00000001/00000002/data/tmds.sys\000/%s/%s/main.sel\000/message/eng/ipl_common.bmg\000/message/fra/ipl_common.bmg\000/message/ger/ipl_common.bmg\000/message/ita/ipl_common.bmg\000/message/jpn/ipl_common.bmg\000/message/ned/ipl_common.bmg\000/message/spa/ipl_common.bmg\000/message/kor/ipl_common.bmg\000/message/chn/ipl_common.bmg\000\000\000"
.endobj lbl_81634428

# .data:0x47C | 0x8163459C | size: 0x30
.obj jumptable_8163459C, local
	.rel init__Q23ipl6SystemFiPPc, .L_8133425C
	.rel init__Q23ipl6SystemFiPPc, .L_81334268
	.rel init__Q23ipl6SystemFiPPc, .L_8133428C
	.rel init__Q23ipl6SystemFiPPc, .L_8133428C
	.rel init__Q23ipl6SystemFiPPc, .L_8133428C
	.rel init__Q23ipl6SystemFiPPc, .L_81334274
	.rel init__Q23ipl6SystemFiPPc, .L_8133427C
	.rel init__Q23ipl6SystemFiPPc, .L_8133428C
	.rel init__Q23ipl6SystemFiPPc, .L_8133428C
	.rel init__Q23ipl6SystemFiPPc, .L_8133428C
	.rel init__Q23ipl6SystemFiPPc, .L_8133428C
	.rel init__Q23ipl6SystemFiPPc, .L_81334284
.endobj jumptable_8163459C

# .data:0x4AC | 0x816345CC | size: 0x30
.obj jumptable_816345CC, local
	.rel init__Q23ipl6SystemFiPPc, .L_8133413C
	.rel init__Q23ipl6SystemFiPPc, .L_81334150
	.rel init__Q23ipl6SystemFiPPc, .L_81334164
	.rel init__Q23ipl6SystemFiPPc, .L_81334164
	.rel init__Q23ipl6SystemFiPPc, .L_813341B4
	.rel init__Q23ipl6SystemFiPPc, .L_81334178
	.rel init__Q23ipl6SystemFiPPc, .L_8133418C
	.rel init__Q23ipl6SystemFiPPc, .L_813341B4
	.rel init__Q23ipl6SystemFiPPc, .L_813341B4
	.rel init__Q23ipl6SystemFiPPc, .L_813341B4
	.rel init__Q23ipl6SystemFiPPc, .L_813341B4
	.rel init__Q23ipl6SystemFiPPc, .L_813341A0
.endobj jumptable_816345CC

# .data:0x4DC | 0x816345FC | size: 0x10
.obj lbl_816345FC, global
	.string "START reset_run"
.endobj lbl_816345FC

# .data:0x4EC | 0x8163460C | size: 0x30
.obj jumptable_8163460C, local
	.rel getLanguage__Q23ipl6SystemFv, .L_81335A40
	.rel getLanguage__Q23ipl6SystemFv, .L_81335A28
	.rel getLanguage__Q23ipl6SystemFv, .L_81335A48
	.rel getLanguage__Q23ipl6SystemFv, .L_81335A70
	.rel getLanguage__Q23ipl6SystemFv, .L_81335A70
	.rel getLanguage__Q23ipl6SystemFv, .L_81335A70
	.rel getLanguage__Q23ipl6SystemFv, .L_81335A60
	.rel getLanguage__Q23ipl6SystemFv, .L_81335A70
	.rel getLanguage__Q23ipl6SystemFv, .L_81335A70
	.rel getLanguage__Q23ipl6SystemFv, .L_81335A70
	.rel getLanguage__Q23ipl6SystemFv, .L_81335A70
	.rel getLanguage__Q23ipl6SystemFv, .L_81335A68
.endobj jumptable_8163460C

# .data:0x51C | 0x8163463C | size: 0x30
.obj jumptable_8163463C, local
	.rel getRegion__Q23ipl6SystemFv, .L_81335AC0
	.rel getRegion__Q23ipl6SystemFv, .L_81335AE0
	.rel getRegion__Q23ipl6SystemFv, .L_81335AC8
	.rel getRegion__Q23ipl6SystemFv, .L_81335AC8
	.rel getRegion__Q23ipl6SystemFv, .L_81335AE0
	.rel getRegion__Q23ipl6SystemFv, .L_81335AC0
	.rel getRegion__Q23ipl6SystemFv, .L_81335AD0
	.rel getRegion__Q23ipl6SystemFv, .L_81335AE0
	.rel getRegion__Q23ipl6SystemFv, .L_81335AE0
	.rel getRegion__Q23ipl6SystemFv, .L_81335AE0
	.rel getRegion__Q23ipl6SystemFv, .L_81335AE0
	.rel getRegion__Q23ipl6SystemFv, .L_81335AD8
.endobj jumptable_8163463C

# .data:0x54C | 0x8163466C | size: 0x24
# textinput::EventObserver::__vtable
.obj __vt__Q29textinput13EventObserver, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte onInput__Q29textinput13EventObserverFQ39textinput15CommandReceiver13INPUT_COMMANDPv
	.4byte onCommand__Q29textinput13EventObserverFQ39textinput15CommandReceiver13INPUT_COMMANDPv
	.4byte onEvent__Q29textinput13EventObserverFPQ34nw4r3lyt4PaneUl
	.4byte onSE__Q29textinput13EventObserverFQ39textinput5sound2SE
	.4byte onOK__Q29textinput13EventObserverFv
	.4byte onCancel__Q29textinput13EventObserverFv
	.4byte onOutOfLength__Q29textinput13EventObserverFv
.endobj __vt__Q29textinput13EventObserver

# .data:0x570 | 0x81634690 | size: 0x9
# textinput::EventObserver::lbl_81634690_onCancel
.obj lbl_81634690_onCancel__Q29textinput13EventObserver, global
	.string "Cancel!\n"
.endobj lbl_81634690_onCancel__Q29textinput13EventObserver

# .data:0x579 | 0x81634699 | size: 0xD
# textinput::EventObserver::lbl_81634699_onOutOfLength
.obj lbl_81634699_onOutOfLength__Q29textinput13EventObserver, global
	.string "OutOfLength\n"
.endobj lbl_81634699_onOutOfLength__Q29textinput13EventObserver

# .data:0x586 | 0x816346A6 | size: 0x2
.obj gap_08_816346A6_data, global
.hidden gap_08_816346A6_data
	.2byte 0x0000
.endobj gap_08_816346A6_data

# 0x81694410..0x81694440 | size: 0x30
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694410 | size: 0x4
.obj lbl_81694410, global
	.float 0
.endobj lbl_81694410

# .sdata2:0x4 | 0x81694414 | size: 0x4
.obj gap_09_81694414_sdata2, global
.hidden gap_09_81694414_sdata2
	.4byte 0x00000000
.endobj gap_09_81694414_sdata2

# .sdata2:0x8 | 0x81694418 | size: 0x8
.obj lbl_81694418, global
	.double 4503599627370496
.endobj lbl_81694418

# .sdata2:0x10 | 0x81694420 | size: 0x4
.obj lbl_81694420, global
	.float 1
.endobj lbl_81694420

# .sdata2:0x14 | 0x81694424 | size: 0x4
.obj lbl_81694424, global
	.float -304
.endobj lbl_81694424

# .sdata2:0x18 | 0x81694428 | size: 0x4
.obj lbl_81694428, global
	.float 304
.endobj lbl_81694428

# .sdata2:0x1C | 0x8169442C | size: 0x4
.obj lbl_8169442C, global
	.float 228
.endobj lbl_8169442C

# .sdata2:0x20 | 0x81694430 | size: 0x4
.obj lbl_81694430, global
	.float -228
.endobj lbl_81694430

# .sdata2:0x24 | 0x81694434 | size: 0x4
.obj lbl_81694434, global
	.float -416
.endobj lbl_81694434

# .sdata2:0x28 | 0x81694438 | size: 0x4
.obj lbl_81694438, global
	.float 416
.endobj lbl_81694438

# .sdata2:0x2C | 0x8169443C | size: 0x4
.obj gap_09_8169443C_sdata2, global
.hidden gap_09_8169443C_sdata2
	.4byte 0x00000000
.endobj gap_09_8169443C_sdata2

# 0x81696060..0x81696080 | size: 0x20
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696060 | size: 0x8
.obj lbl_81696060, global
	.string "cdb.vff"
.endobj lbl_81696060

# .sdata:0x8 | 0x81696068 | size: 0x3
.obj lbl_81696068, global
	.string "ES"
.endobj lbl_81696068

# .sdata:0xB | 0x8169606B | size: 0x6
.obj lbl_8169606B, global
	.string "FINAL"
.endobj lbl_8169606B

# .sdata:0x11 | 0x81696071 | size: 0x4
.obj lbl_81696071, global
	.string "US2"
.endobj lbl_81696071

# .sdata:0x15 | 0x81696075 | size: 0x5
# textinput::EventObserver::@STRING@onOK()
.obj "@STRING@onOK__Q29textinput13EventObserverFv", global
	.string "OK!\n"
.endobj "@STRING@onOK__Q29textinput13EventObserverFv"

# .sdata:0x1A | 0x8169607A | size: 0x6
.obj gap_11_8169607A_sdata, global
.hidden gap_11_8169607A_sdata
	.4byte 0x00000000
	.2byte 0x0000
.endobj gap_11_8169607A_sdata
