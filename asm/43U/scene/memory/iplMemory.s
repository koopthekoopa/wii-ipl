.include "macros.inc"
.file "iplMemory.cpp"

# 0x810B74F8..0x810B7508 | size: 0x10
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810B74F8 | size: 0x10
# ipl::memorycard::sAllocator_
.obj sAllocator___Q23ipl10memorycard, global
	.skip 0x10
.endobj sAllocator___Q23ipl10memorycard

# 0x813C3BCC..0x813C6E84 | size: 0x32B8
.text
.balign 4

# .text:0x0 | 0x813C3BCC | size: 0x84
# ipl::scene::Memory::Memory(EGG::Heap*)
.fn __ct__Q33ipl5scene6MemoryFPQ23EGG4Heap, global
/* 813C3BCC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C3BD0 | 7C 08 02 A6 */	mflr r0
/* 813C3BD4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C3BD8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C3BDC | 7C 7F 1B 78 */	mr r31, r3
/* 813C3BE0 | 48 04 60 0D */	bl __ct__Q33ipl5scene4BaseFPQ23EGG4Heap
/* 813C3BE4 | 3C 80 81 65 */	lis r4, __vt__Q33ipl5scene6Memory@ha
/* 813C3BE8 | 38 00 00 00 */	li r0, 0x0
/* 813C3BEC | 38 84 11 F8 */	addi r4, r4, __vt__Q33ipl5scene6Memory@l
/* 813C3BF0 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C3BF4 | 38 64 00 1C */	addi r3, r4, 0x1c
/* 813C3BF8 | 90 9F 00 00 */	stw r4, 0x0(r31)
/* 813C3BFC | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 813C3C00 | 90 1F 00 60 */	stw r0, 0x60(r31)
/* 813C3C04 | 90 1F 00 68 */	stw r0, 0x68(r31)
/* 813C3C08 | 90 1F 00 78 */	stw r0, 0x78(r31)
/* 813C3C0C | 90 1F 00 B8 */	stw r0, 0xb8(r31)
/* 813C3C10 | 90 1F 00 BC */	stw r0, 0xbc(r31)
/* 813C3C14 | 90 1F 00 C0 */	stw r0, 0xc0(r31)
/* 813C3C18 | 90 1F 00 C4 */	stw r0, 0xc4(r31)
/* 813C3C1C | 98 1F 00 C8 */	stb r0, 0xc8(r31)
/* 813C3C20 | 98 1F 00 C9 */	stb r0, 0xc9(r31)
/* 813C3C24 | 90 1F 00 CC */	stw r0, 0xcc(r31)
/* 813C3C28 | 4B F7 00 61 */	bl stopReceiveSchedule__Q23ipl6SystemFv
/* 813C3C2C | 38 7F 00 6C */	addi r3, r31, 0x6c
/* 813C3C30 | 38 80 00 34 */	li r4, 0x34
/* 813C3C34 | 48 14 E4 29 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813C3C38 | 7F E3 FB 78 */	mr r3, r31
/* 813C3C3C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C3C40 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C3C44 | 7C 08 03 A6 */	mtlr r0
/* 813C3C48 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C3C4C | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene6MemoryFPQ23EGG4Heap

# .text:0x84 | 0x813C3C50 | size: 0x140
# ipl::scene::Memory::~Memory()
.fn __dt__Q33ipl5scene6MemoryFv, global
/* 813C3C50 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813C3C54 | 7C 08 02 A6 */	mflr r0
/* 813C3C58 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813C3C5C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C3C60 | 48 23 58 65 */	bl _savegpr_28
/* 813C3C64 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C3C68 | 7C 7C 1B 78 */	mr r28, r3
/* 813C3C6C | 7C 9D 23 78 */	mr r29, r4
/* 813C3C70 | 41 82 01 04 */	beq .L_813C3D74
/* 813C3C74 | 80 A3 00 60 */	lwz r5, 0x60(r3)
/* 813C3C78 | 3C 80 81 65 */	lis r4, __vt__Q33ipl5scene6Memory@ha
/* 813C3C7C | 38 84 11 F8 */	addi r4, r4, __vt__Q33ipl5scene6Memory@l
/* 813C3C80 | 38 04 00 1C */	addi r0, r4, 0x1c
/* 813C3C84 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813C3C88 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813C3C8C | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813C3C90 | 41 82 00 1C */	beq .L_813C3CAC
/* 813C3C94 | 81 85 00 00 */	lwz r12, 0x0(r5)
/* 813C3C98 | 7C A3 2B 78 */	mr r3, r5
/* 813C3C9C | 38 80 00 01 */	li r4, 0x1
/* 813C3CA0 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813C3CA4 | 7D 89 03 A6 */	mtctr r12
/* 813C3CA8 | 4E 80 04 21 */	bctrl
.L_813C3CAC:
/* 813C3CAC | 80 7C 00 68 */	lwz r3, 0x68(r28)
/* 813C3CB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C3CB4 | 41 82 00 18 */	beq .L_813C3CCC
/* 813C3CB8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C3CBC | 38 80 00 01 */	li r4, 0x1
/* 813C3CC0 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813C3CC4 | 7D 89 03 A6 */	mtctr r12
/* 813C3CC8 | 4E 80 04 21 */	bctrl
.L_813C3CCC:
/* 813C3CCC | 80 7C 00 78 */	lwz r3, 0x78(r28)
/* 813C3CD0 | 38 80 00 01 */	li r4, 0x1
/* 813C3CD4 | 4B FE 3D A1 */	bl __dt__Q33ipl5scene17NandSDCardManagerFv
/* 813C3CD8 | 38 7C 00 6C */	addi r3, r28, 0x6c
/* 813C3CDC | 38 80 00 00 */	li r4, 0x0
/* 813C3CE0 | 48 14 E5 FD */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813C3CE4 | 7C 7F 1B 78 */	mr r31, r3
/* 813C3CE8 | 48 00 00 40 */	b .L_813C3D28
.L_813C3CEC:
/* 813C3CEC | 7F E4 FB 78 */	mr r4, r31
/* 813C3CF0 | 38 7C 00 6C */	addi r3, r28, 0x6c
/* 813C3CF4 | 48 14 E5 7D */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813C3CF8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813C3CFC | 41 82 00 1C */	beq .L_813C3D18
/* 813C3D00 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813C3D04 | 7F E3 FB 78 */	mr r3, r31
/* 813C3D08 | 38 80 00 01 */	li r4, 0x1
/* 813C3D0C | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813C3D10 | 7D 89 03 A6 */	mtctr r12
/* 813C3D14 | 4E 80 04 21 */	bctrl
.L_813C3D18:
/* 813C3D18 | 38 7C 00 6C */	addi r3, r28, 0x6c
/* 813C3D1C | 38 80 00 00 */	li r4, 0x0
/* 813C3D20 | 48 14 E5 BD */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813C3D24 | 7C 7F 1B 78 */	mr r31, r3
.L_813C3D28:
/* 813C3D28 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813C3D2C | 40 82 FF C0 */	bne .L_813C3CEC
/* 813C3D30 | 3B C0 00 00 */	li r30, 0x0
/* 813C3D34 | 3B E0 00 00 */	li r31, 0x0
.L_813C3D38:
/* 813C3D38 | 7C 7C FA 14 */	add r3, r28, r31
/* 813C3D3C | 38 80 00 01 */	li r4, 0x1
/* 813C3D40 | 80 63 00 7C */	lwz r3, 0x7c(r3)
/* 813C3D44 | 48 00 D7 F9 */	bl __dt__Q33ipl5scene11TextBalloonFv
/* 813C3D48 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 813C3D4C | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813C3D50 | 2C 1E 00 0F */	cmpwi r30, 0xf
/* 813C3D54 | 41 80 FF E4 */	blt .L_813C3D38
/* 813C3D58 | 7F 83 E3 78 */	mr r3, r28
/* 813C3D5C | 38 80 00 00 */	li r4, 0x0
/* 813C3D60 | 48 04 5F 05 */	bl __dt__Q33ipl5scene4BaseFv
/* 813C3D64 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813C3D68 | 40 81 00 0C */	ble .L_813C3D74
/* 813C3D6C | 7F 83 E3 78 */	mr r3, r28
/* 813C3D70 | 48 23 43 75 */	bl __dl__FPv
.L_813C3D74:
/* 813C3D74 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C3D78 | 7F 83 E3 78 */	mr r3, r28
/* 813C3D7C | 48 23 57 95 */	bl _restgpr_28
/* 813C3D80 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813C3D84 | 7C 08 03 A6 */	mtlr r0
/* 813C3D88 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813C3D8C | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene6MemoryFv

# .text:0x1C4 | 0x813C3D90 | size: 0x98
# ipl::scene::Memory::prepare()
.fn prepare__Q33ipl5scene6MemoryFv, global
/* 813C3D90 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813C3D94 | 7C 08 02 A6 */	mflr r0
/* 813C3D98 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813C3D9C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C3DA0 | 48 23 57 29 */	bl _savegpr_29
/* 813C3DA4 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813C3DA8 | 3F C0 81 65 */	lis r30, lbl_81650C90@ha
/* 813C3DAC | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813C3DB0 | 7C 7D 1B 78 */	mr r29, r3
/* 813C3DB4 | 80 7F 00 A8 */	lwz r3, 0xa8(r31)
/* 813C3DB8 | 3B DE 0C 90 */	addi r30, r30, lbl_81650C90@l
/* 813C3DBC | 4B F9 CD 1D */	bl abort__Q33ipl3bs27ManagerFv
/* 813C3DC0 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813C3DC4 | 38 BE 02 D0 */	addi r5, r30, 0x2d0
/* 813C3DC8 | 80 9D 00 24 */	lwz r4, 0x24(r29)
/* 813C3DCC | 38 C0 00 00 */	li r6, 0x0
/* 813C3DD0 | 4B F7 9A E5 */	bl readLayoutAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcb
/* 813C3DD4 | 90 7D 00 58 */	stw r3, 0x58(r29)
/* 813C3DD8 | 38 BE 02 DB */	addi r5, r30, 0x2db
/* 813C3DDC | 80 9D 00 24 */	lwz r4, 0x24(r29)
/* 813C3DE0 | 38 C0 00 00 */	li r6, 0x0
/* 813C3DE4 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813C3DE8 | 4B F7 9A CD */	bl readLayoutAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcb
/* 813C3DEC | 90 7D 00 5C */	stw r3, 0x5c(r29)
/* 813C3DF0 | 38 BE 02 E7 */	addi r5, r30, 0x2e7
/* 813C3DF4 | 80 9D 00 24 */	lwz r4, 0x24(r29)
/* 813C3DF8 | 38 C0 00 00 */	li r6, 0x0
/* 813C3DFC | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813C3E00 | 38 E0 00 00 */	li r7, 0x0
/* 813C3E04 | 39 00 00 00 */	li r8, 0x0
/* 813C3E08 | 4B F7 96 E1 */	bl readAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCciUlb
/* 813C3E0C | 90 7D 00 64 */	stw r3, 0x64(r29)
/* 813C3E10 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C3E14 | 48 23 57 01 */	bl _restgpr_29
/* 813C3E18 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813C3E1C | 7C 08 03 A6 */	mtlr r0
/* 813C3E20 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813C3E24 | 4E 80 00 20 */	blr
.endfn prepare__Q33ipl5scene6MemoryFv

# .text:0x25C | 0x813C3E28 | size: 0x298
# ipl::scene::Memory::create()
.fn create__Q33ipl5scene6MemoryFv, global
/* 813C3E28 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 813C3E2C | 7C 08 02 A6 */	mflr r0
/* 813C3E30 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 813C3E34 | DB E1 00 40 */	stfd f31, 0x40(r1)
/* 813C3E38 | F3 E1 00 48 */	psq_st f31, 0x48(r1), 0, qr0
/* 813C3E3C | 39 61 00 40 */	addi r11, r1, 0x40
/* 813C3E40 | 48 23 56 7D */	bl _savegpr_26
/* 813C3E44 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813C3E48 | 3F E0 81 65 */	lis r31, lbl_81650C90@ha
/* 813C3E4C | 3B 84 90 08 */	addi r28, r4, smArg__Q23ipl6System@l
/* 813C3E50 | 7C 7E 1B 78 */	mr r30, r3
/* 813C3E54 | 80 7C 00 28 */	lwz r3, 0x28(r28)
/* 813C3E58 | 3B FF 0C 90 */	addi r31, r31, lbl_81650C90@l
/* 813C3E5C | 48 23 41 DD */	bl fn_815F8038
/* 813C3E60 | 48 17 1E 39 */	bl OSGetTick
/* 813C3E64 | 7C 7B 1B 78 */	mr r27, r3
/* 813C3E68 | 48 00 00 18 */	b .L_813C3E80
.L_813C3E6C:
/* 813C3E6C | 4B F9 CA 2D */	bl update__Q33ipl3bs27ManagerFv
/* 813C3E70 | 38 7F 02 FB */	addi r3, r31, 0x2fb
/* 813C3E74 | 4C C6 31 82 */	crclr cr1eq
/* 813C3E78 | 48 16 A8 29 */	bl OSReport
/* 813C3E7C | 48 17 91 6D */	bl VIWaitForRetrace
.L_813C3E80:
/* 813C3E80 | 80 7C 00 A8 */	lwz r3, 0xa8(r28)
/* 813C3E84 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813C3E88 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 813C3E8C | 40 82 FF E0 */	bne .L_813C3E6C
/* 813C3E90 | 48 17 1E 09 */	bl OSGetTick
/* 813C3E94 | 3C 80 80 00 */	lis r4, 0x8000
/* 813C3E98 | 7C BB 18 50 */	subf r5, r27, r3
/* 813C3E9C | 80 84 00 F8 */	lwz r4, 0xf8(r4)
/* 813C3EA0 | 38 00 03 E8 */	li r0, 0x3e8
/* 813C3EA4 | 38 7F 03 14 */	addi r3, r31, 0x314
/* 813C3EA8 | 54 84 F0 BE */	srwi r4, r4, 2
/* 813C3EAC | 7C 04 03 96 */	divwu r0, r4, r0
/* 813C3EB0 | 7C 85 03 96 */	divwu r4, r5, r0
/* 813C3EB4 | 4C C6 31 82 */	crclr cr1eq
/* 813C3EB8 | 48 16 A7 E9 */	bl OSReport
/* 813C3EBC | 38 80 00 02 */	li r4, 0x2
/* 813C3EC0 | 38 60 00 01 */	li r3, 0x1
/* 813C3EC4 | 48 1F AF F5 */	bl fn_815BEEB8
/* 813C3EC8 | 38 60 00 38 */	li r3, 0x38
/* 813C3ECC | 48 23 41 D1 */	bl __nw__FUl
/* 813C3ED0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C3ED4 | 41 82 00 18 */	beq .L_813C3EEC
/* 813C3ED8 | 80 9C 00 28 */	lwz r4, 0x28(r28)
/* 813C3EDC | 38 FF 03 2F */	addi r7, r31, 0x32f
/* 813C3EE0 | 80 BE 00 58 */	lwz r5, 0x58(r30)
/* 813C3EE4 | 38 CD 8B 98 */	li r6, lbl_81696BD8@sda21
/* 813C3EE8 | 48 00 2F 9D */	bl __ct__Q33ipl5scene12SavedataBaseFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813C3EEC:
/* 813C3EEC | 90 7E 00 60 */	stw r3, 0x60(r30)
/* 813C3EF0 | 48 00 37 69 */	bl anmFadein__Q33ipl5scene12SavedataBaseFv
/* 813C3EF4 | 3F 60 81 09 */	lis r27, smArg__Q23ipl6System@ha
/* 813C3EF8 | 3B 80 00 00 */	li r28, 0x0
/* 813C3EFC | 3B 7B 90 08 */	addi r27, r27, smArg__Q23ipl6System@l
.L_813C3F00:
/* 813C3F00 | 38 60 00 4C */	li r3, 0x4c
/* 813C3F04 | 48 23 41 99 */	bl __nw__FUl
/* 813C3F08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C3F0C | 41 82 00 18 */	beq .L_813C3F24
/* 813C3F10 | 80 9B 00 28 */	lwz r4, 0x28(r27)
/* 813C3F14 | 38 FF 03 46 */	addi r7, r31, 0x346
/* 813C3F18 | 80 BE 00 58 */	lwz r5, 0x58(r30)
/* 813C3F1C | 38 CD 8B 98 */	li r6, lbl_81696BD8@sda21
/* 813C3F20 | 48 00 3D 51 */	bl __ct__Q33ipl5scene11SavedataBoxFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813C3F24:
/* 813C3F24 | 7C 64 1B 78 */	mr r4, r3
/* 813C3F28 | 38 7E 00 6C */	addi r3, r30, 0x6c
/* 813C3F2C | 48 14 E1 49 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813C3F30 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813C3F34 | 2C 1C 00 2D */	cmpwi r28, 0x2d
/* 813C3F38 | 41 80 FF C8 */	blt .L_813C3F00
/* 813C3F3C | 38 60 00 80 */	li r3, 0x80
/* 813C3F40 | 48 23 41 5D */	bl __nw__FUl
/* 813C3F44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C3F48 | 41 82 00 20 */	beq .L_813C3F68
/* 813C3F4C | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813C3F50 | 80 BE 00 58 */	lwz r5, 0x58(r30)
/* 813C3F54 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813C3F58 | 38 FF 03 5D */	addi r7, r31, 0x35d
/* 813C3F5C | 80 84 00 28 */	lwz r4, 0x28(r4)
/* 813C3F60 | 38 CD 8B 98 */	li r6, lbl_81696BD8@sda21
/* 813C3F64 | 48 00 45 21 */	bl __ct__Q33ipl5scene12SavedataEditFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813C3F68:
/* 813C3F68 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813C3F6C | 90 7E 00 68 */	stw r3, 0x68(r30)
/* 813C3F70 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813C3F74 | 3C 60 00 0F */	lis r3, 0xf
/* 813C3F78 | 80 84 00 28 */	lwz r4, 0x28(r4)
/* 813C3F7C | 38 63 87 A8 */	subi r3, r3, 0x7858
/* 813C3F80 | 38 A0 00 20 */	li r5, 0x20
/* 813C3F84 | 48 23 41 2D */	bl __nw__FUlPQ23EGG4Heapi
/* 813C3F88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C3F8C | 41 82 00 0C */	beq .L_813C3F98
/* 813C3F90 | 38 80 00 00 */	li r4, 0x0
/* 813C3F94 | 4B FE 36 A9 */	bl __ct__Q33ipl5scene17NandSDCardManagerFQ43ipl5scene17NandSDCardManager4Mode
.L_813C3F98:
/* 813C3F98 | 90 7E 00 78 */	stw r3, 0x78(r30)
/* 813C3F9C | 3B 7F 02 1C */	addi r27, r31, 0x21c
/* 813C3FA0 | C3 E2 86 4C */	lfs f31, lbl_81694A4C@sda21(r0)
/* 813C3FA4 | 3B 40 00 00 */	li r26, 0x0
/* 813C3FA8 | 3B A0 00 00 */	li r29, 0x0
.L_813C3FAC:
/* 813C3FAC | 80 DE 00 60 */	lwz r6, 0x60(r30)
/* 813C3FB0 | 7C 7B EA 14 */	add r3, r27, r29
/* 813C3FB4 | 80 83 00 3C */	lwz r4, 0x3c(r3)
/* 813C3FB8 | 38 A0 00 01 */	li r5, 0x1
/* 813C3FBC | 80 66 00 04 */	lwz r3, 0x4(r6)
/* 813C3FC0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813C3FC4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C3FC8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813C3FCC | 7D 89 03 A6 */	mtctr r12
/* 813C3FD0 | 4E 80 04 21 */	bctrl
/* 813C3FD4 | C0 22 86 48 */	lfs f1, lbl_81694A48@sda21(r0)
/* 813C3FD8 | 7C 7C 1B 78 */	mr r28, r3
/* 813C3FDC | 38 61 00 14 */	addi r3, r1, 0x14
/* 813C3FE0 | FC 40 08 90 */	fmr f2, f1
/* 813C3FE4 | FC 60 08 90 */	fmr f3, f1
/* 813C3FE8 | 4B FB 08 9D */	bl __ct__Q34nw4r4math4VEC3Ffff
/* 813C3FEC | 38 81 00 14 */	addi r4, r1, 0x14
/* 813C3FF0 | 38 7C 00 84 */	addi r3, r28, 0x84
/* 813C3FF4 | 7C 85 23 78 */	mr r5, r4
/* 813C3FF8 | 48 17 D4 C5 */	bl fn_815414BC
/* 813C3FFC | C0 01 00 18 */	lfs f0, 0x18(r1)
/* 813C4000 | 38 60 00 3C */	li r3, 0x3c
/* 813C4004 | EC 00 F8 28 */	fsubs f0, f0, f31
/* 813C4008 | D0 01 00 18 */	stfs f0, 0x18(r1)
/* 813C400C | 48 23 40 91 */	bl __nw__FUl
/* 813C4010 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C4014 | 41 82 00 3C */	beq .L_813C4050
/* 813C4018 | C0 21 00 14 */	lfs f1, 0x14(r1)
/* 813C401C | 38 FF 03 7F */	addi r7, r31, 0x37f
/* 813C4020 | C0 41 00 18 */	lfs f2, 0x18(r1)
/* 813C4024 | 39 01 00 08 */	addi r8, r1, 0x8
/* 813C4028 | C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 813C402C | 38 CD 8B 98 */	li r6, lbl_81696BD8@sda21
/* 813C4030 | D0 21 00 08 */	stfs f1, 0x8(r1)
/* 813C4034 | C0 22 86 50 */	lfs f1, lbl_81694A50@sda21(r0)
/* 813C4038 | D0 41 00 0C */	stfs f2, 0xc(r1)
/* 813C403C | C0 42 86 54 */	lfs f2, lbl_81694A54@sda21(r0)
/* 813C4040 | D0 01 00 10 */	stfs f0, 0x10(r1)
/* 813C4044 | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813C4048 | 80 BE 00 5C */	lwz r5, 0x5c(r30)
/* 813C404C | 48 00 D3 C1 */	bl __ct__Q33ipl5scene11TextBalloonFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCcRCQ33ipl4math4VEC3ff
.L_813C4050:
/* 813C4050 | 7F 9E EA 14 */	add r28, r30, r29
/* 813C4054 | 38 1A 00 0F */	addi r0, r26, 0xf
/* 813C4058 | 90 7C 00 7C */	stw r3, 0x7c(r28)
/* 813C405C | 38 7E 00 6C */	addi r3, r30, 0x6c
/* 813C4060 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813C4064 | 48 14 E2 B5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813C4068 | 80 1C 00 7C */	lwz r0, 0x7c(r28)
/* 813C406C | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 813C4070 | 2C 1A 00 0F */	cmpwi r26, 0xf
/* 813C4074 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 813C4078 | 90 03 00 44 */	stw r0, 0x44(r3)
/* 813C407C | 41 80 FF 30 */	blt .L_813C3FAC
/* 813C4080 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 813C4084 | 80 63 00 A0 */	lwz r3, 0xa0(r3)
/* 813C4088 | 48 1F 81 21 */	bl fn_815BC1A8
/* 813C408C | 7F C3 F3 78 */	mr r3, r30
/* 813C4090 | 38 80 00 01 */	li r4, 0x1
/* 813C4094 | 48 00 04 69 */	bl send_getbanner_cmd__Q33ipl5scene6MemoryFb
/* 813C4098 | 38 00 00 01 */	li r0, 0x1
/* 813C409C | 90 1E 00 54 */	stw r0, 0x54(r30)
/* 813C40A0 | E3 E1 00 48 */	psq_l f31, 0x48(r1), 0, qr0
/* 813C40A4 | CB E1 00 40 */	lfd f31, 0x40(r1)
/* 813C40A8 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813C40AC | 48 23 54 5D */	bl _restgpr_26
/* 813C40B0 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 813C40B4 | 7C 08 03 A6 */	mtlr r0
/* 813C40B8 | 38 21 00 50 */	addi r1, r1, 0x50
/* 813C40BC | 4E 80 00 20 */	blr
.endfn create__Q33ipl5scene6MemoryFv

# .text:0x4F4 | 0x813C40C0 | size: 0x23C
# ipl::scene::Memory::calc()
.fn calc__Q33ipl5scene6MemoryFv, global
/* 813C40C0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813C40C4 | 7C 08 02 A6 */	mflr r0
/* 813C40C8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813C40CC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C40D0 | 48 23 53 F9 */	bl _savegpr_29
/* 813C40D4 | 7C 7D 1B 78 */	mr r29, r3
/* 813C40D8 | 80 63 00 78 */	lwz r3, 0x78(r3)
/* 813C40DC | 4B FE 3A D9 */	bl calc__Q33ipl5scene17NandSDCardManagerFv
/* 813C40E0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C40E4 | 38 80 00 13 */	li r4, 0x13
/* 813C40E8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C40EC | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813C40F0 | 48 04 70 49 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C40F4 | 80 03 00 60 */	lwz r0, 0x60(r3)
/* 813C40F8 | 2C 00 00 0E */	cmpwi r0, 0xe
/* 813C40FC | 40 82 01 E8 */	bne .L_813C42E4
/* 813C4100 | 80 7D 00 60 */	lwz r3, 0x60(r29)
/* 813C4104 | 48 00 33 CD */	bl calc__Q33ipl5scene12SavedataBaseFv
/* 813C4108 | 3B E0 00 00 */	li r31, 0x0
/* 813C410C | 48 00 00 0C */	b .L_813C4118
.L_813C4110:
/* 813C4110 | 7F E3 FB 78 */	mr r3, r31
/* 813C4114 | 48 00 3E 8D */	bl calc__Q33ipl5scene11SavedataBoxFv
.L_813C4118:
/* 813C4118 | 7F E4 FB 78 */	mr r4, r31
/* 813C411C | 38 7D 00 6C */	addi r3, r29, 0x6c
/* 813C4120 | 48 14 E1 BD */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813C4124 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C4128 | 7C 7F 1B 78 */	mr r31, r3
/* 813C412C | 40 82 FF E4 */	bne .L_813C4110
/* 813C4130 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 813C4134 | 48 00 48 F5 */	bl calc__Q33ipl5scene12SavedataEditFv
/* 813C4138 | 3B C0 00 00 */	li r30, 0x0
/* 813C413C | 3B E0 00 00 */	li r31, 0x0
.L_813C4140:
/* 813C4140 | 7C 7D FA 14 */	add r3, r29, r31
/* 813C4144 | 80 63 00 7C */	lwz r3, 0x7c(r3)
/* 813C4148 | 48 00 D4 65 */	bl calc__Q33ipl5scene11TextBalloonFv
/* 813C414C | 3B DE 00 01 */	addi r30, r30, 0x1
/* 813C4150 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813C4154 | 2C 1E 00 0F */	cmpwi r30, 0xf
/* 813C4158 | 41 80 FF E8 */	blt .L_813C4140
/* 813C415C | 80 1D 00 54 */	lwz r0, 0x54(r29)
/* 813C4160 | 28 00 00 1E */	cmplwi r0, 0x1e
/* 813C4164 | 41 81 01 80 */	bgt .L_813C42E4
/* 813C4168 | 3C 60 81 65 */	lis r3, jumptable_81651028@ha
/* 813C416C | 54 00 10 3A */	slwi r0, r0, 2
/* 813C4170 | 38 63 10 28 */	addi r3, r3, jumptable_81651028@l
/* 813C4174 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813C4178 | 7C 69 03 A6 */	mtctr r3
/* 813C417C | 4E 80 04 20 */	bctr
.L_813C4180:
/* 813C4180 | 7F A3 EB 78 */	mr r3, r29
/* 813C4184 | 48 00 15 49 */	bl on_normal__Q33ipl5scene6MemoryFv
/* 813C4188 | 48 00 01 5C */	b .L_813C42E4
.L_813C418C:
/* 813C418C | 7F A3 EB 78 */	mr r3, r29
/* 813C4190 | 48 00 17 01 */	bl on_fadein1st__Q33ipl5scene6MemoryFv
/* 813C4194 | 48 00 01 50 */	b .L_813C42E4
.L_813C4198:
/* 813C4198 | 7F A3 EB 78 */	mr r3, r29
/* 813C419C | 48 00 17 4D */	bl on_fadein2nd__Q33ipl5scene6MemoryFv
/* 813C41A0 | 48 00 01 44 */	b .L_813C42E4
.L_813C41A4:
/* 813C41A4 | 7F A3 EB 78 */	mr r3, r29
/* 813C41A8 | 48 00 17 99 */	bl on_fadeout1st__Q33ipl5scene6MemoryFv
/* 813C41AC | 48 00 01 38 */	b .L_813C42E4
.L_813C41B0:
/* 813C41B0 | 7F A3 EB 78 */	mr r3, r29
/* 813C41B4 | 48 00 17 B9 */	bl on_fadeout2nd__Q33ipl5scene6MemoryFv
/* 813C41B8 | 48 00 01 2C */	b .L_813C42E4
.L_813C41BC:
/* 813C41BC | 7F A3 EB 78 */	mr r3, r29
/* 813C41C0 | 48 00 17 F5 */	bl on_scroll_r__Q33ipl5scene6MemoryFv
/* 813C41C4 | 48 00 01 20 */	b .L_813C42E4
.L_813C41C8:
/* 813C41C8 | 7F A3 EB 78 */	mr r3, r29
/* 813C41CC | 48 00 18 7D */	bl on_scroll_l__Q33ipl5scene6MemoryFv
/* 813C41D0 | 48 00 01 14 */	b .L_813C42E4
.L_813C41D4:
/* 813C41D4 | 7F A3 EB 78 */	mr r3, r29
/* 813C41D8 | 48 00 19 05 */	bl on_change_tag1st__Q33ipl5scene6MemoryFv
/* 813C41DC | 48 00 01 08 */	b .L_813C42E4
.L_813C41E0:
/* 813C41E0 | 7F A3 EB 78 */	mr r3, r29
/* 813C41E4 | 48 00 1A C1 */	bl on_change_tag2nd__Q33ipl5scene6MemoryFv
/* 813C41E8 | 48 00 00 FC */	b .L_813C42E4
.L_813C41EC:
/* 813C41EC | 7F A3 EB 78 */	mr r3, r29
/* 813C41F0 | 48 00 1B 0D */	bl on_trig_copy__Q33ipl5scene6MemoryFv
/* 813C41F4 | 48 00 00 F0 */	b .L_813C42E4
.L_813C41F8:
/* 813C41F8 | 7F A3 EB 78 */	mr r3, r29
/* 813C41FC | 48 00 1C CD */	bl on_edit__Q33ipl5scene6MemoryFv
/* 813C4200 | 48 00 00 E4 */	b .L_813C42E4
.L_813C4204:
/* 813C4204 | 7F A3 EB 78 */	mr r3, r29
/* 813C4208 | 48 00 1C A5 */	bl on_edit_fadein__Q33ipl5scene6MemoryFv
/* 813C420C | 48 00 00 D8 */	b .L_813C42E4
.L_813C4210:
/* 813C4210 | 7F A3 EB 78 */	mr r3, r29
/* 813C4214 | 48 00 1D 29 */	bl on_edit_fadeout1st__Q33ipl5scene6MemoryFv
/* 813C4218 | 48 00 00 CC */	b .L_813C42E4
.L_813C421C:
/* 813C421C | 7F A3 EB 78 */	mr r3, r29
/* 813C4220 | 48 00 1D 75 */	bl on_edit_fadeout2nd__Q33ipl5scene6MemoryFv
/* 813C4224 | 48 00 00 C0 */	b .L_813C42E4
.L_813C4228:
/* 813C4228 | 7F A3 EB 78 */	mr r3, r29
/* 813C422C | 48 00 1D 85 */	bl on_verify1st__Q33ipl5scene6MemoryFv
/* 813C4230 | 48 00 00 B4 */	b .L_813C42E4
.L_813C4234:
/* 813C4234 | 7F A3 EB 78 */	mr r3, r29
/* 813C4238 | 48 00 1D F1 */	bl on_verify2nd__Q33ipl5scene6MemoryFv
/* 813C423C | 48 00 00 A8 */	b .L_813C42E4
.L_813C4240:
/* 813C4240 | 7F A3 EB 78 */	mr r3, r29
/* 813C4244 | 48 00 1E 01 */	bl on_verify_copy__Q33ipl5scene6MemoryFv
/* 813C4248 | 48 00 00 9C */	b .L_813C42E4
.L_813C424C:
/* 813C424C | 7F A3 EB 78 */	mr r3, r29
/* 813C4250 | 48 00 1F 49 */	bl on_verify_del__Q33ipl5scene6MemoryFv
/* 813C4254 | 48 00 00 90 */	b .L_813C42E4
.L_813C4258:
/* 813C4258 | 7F A3 EB 78 */	mr r3, r29
/* 813C425C | 48 00 20 01 */	bl on_verify_format__Q33ipl5scene6MemoryFv
/* 813C4260 | 48 00 00 84 */	b .L_813C42E4
.L_813C4264:
/* 813C4264 | 7F A3 EB 78 */	mr r3, r29
/* 813C4268 | 48 00 20 95 */	bl on_end_format__Q33ipl5scene6MemoryFv
/* 813C426C | 48 00 00 78 */	b .L_813C42E4
.L_813C4270:
/* 813C4270 | 7F A3 EB 78 */	mr r3, r29
/* 813C4274 | 48 00 21 09 */	bl on_sd_mount__Q33ipl5scene6MemoryFv
/* 813C4278 | 48 00 00 6C */	b .L_813C42E4
.L_813C427C:
/* 813C427C | 7F A3 EB 78 */	mr r3, r29
/* 813C4280 | 48 00 21 45 */	bl on_sd_message1st__Q33ipl5scene6MemoryFv
/* 813C4284 | 48 00 00 60 */	b .L_813C42E4
.L_813C4288:
/* 813C4288 | 7F A3 EB 78 */	mr r3, r29
/* 813C428C | 48 00 21 E1 */	bl on_sd_message2nd__Q33ipl5scene6MemoryFv
/* 813C4290 | 48 00 00 54 */	b .L_813C42E4
.L_813C4294:
/* 813C4294 | 7F A3 EB 78 */	mr r3, r29
/* 813C4298 | 48 00 21 F1 */	bl on_sd_message3rd__Q33ipl5scene6MemoryFv
/* 813C429C | 48 00 00 48 */	b .L_813C42E4
.L_813C42A0:
/* 813C42A0 | 7F A3 EB 78 */	mr r3, r29
/* 813C42A4 | 48 00 22 4D */	bl on_process__Q33ipl5scene6MemoryFv
/* 813C42A8 | 48 00 00 3C */	b .L_813C42E4
.L_813C42AC:
/* 813C42AC | 7F A3 EB 78 */	mr r3, r29
/* 813C42B0 | 48 00 26 4D */	bl on_end_process__Q33ipl5scene6MemoryFv
/* 813C42B4 | 48 00 00 30 */	b .L_813C42E4
.L_813C42B8:
/* 813C42B8 | 7F A3 EB 78 */	mr r3, r29
/* 813C42BC | 48 00 26 F1 */	bl on_exist_save__Q33ipl5scene6MemoryFv
/* 813C42C0 | 48 00 00 24 */	b .L_813C42E4
.L_813C42C4:
/* 813C42C4 | 7F A3 EB 78 */	mr r3, r29
/* 813C42C8 | 48 00 27 BD */	bl on_sd_mount_only__Q33ipl5scene6MemoryFv
/* 813C42CC | 48 00 00 18 */	b .L_813C42E4
.L_813C42D0:
/* 813C42D0 | 7F A3 EB 78 */	mr r3, r29
/* 813C42D4 | 48 00 28 19 */	bl iplMemory_813C6AEC__Q33ipl5scene6MemoryFv
/* 813C42D8 | 48 00 00 0C */	b .L_813C42E4
.L_813C42DC:
/* 813C42DC | 7F A3 EB 78 */	mr r3, r29
/* 813C42E0 | 48 00 2A 5D */	bl iplMemory_813C6D3C__Q33ipl5scene6MemoryFv
.L_813C42E4:
/* 813C42E4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C42E8 | 48 23 52 2D */	bl _restgpr_29
/* 813C42EC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813C42F0 | 7C 08 03 A6 */	mtlr r0
/* 813C42F4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813C42F8 | 4E 80 00 20 */	blr
.endfn calc__Q33ipl5scene6MemoryFv

# .text:0x730 | 0x813C42FC | size: 0xD8
# ipl::scene::Memory::setpos_savedata_box()
.fn setpos_savedata_box__Q33ipl5scene6MemoryFv, global
/* 813C42FC | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813C4300 | 7C 08 02 A6 */	mflr r0
/* 813C4304 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813C4308 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813C430C | 48 23 51 AD */	bl _savegpr_25
/* 813C4310 | 3F 80 81 65 */	lis r28, lbl_81650EAC@ha
/* 813C4314 | 7C 79 1B 78 */	mr r25, r3
/* 813C4318 | 3B 9C 0E AC */	addi r28, r28, lbl_81650EAC@l
/* 813C431C | 3B 60 00 00 */	li r27, 0x0
/* 813C4320 | 3B E0 00 00 */	li r31, 0x0
/* 813C4324 | 3B 40 00 00 */	li r26, 0x0
/* 813C4328 | 3F C0 81 65 */	lis r30, "@STRING@setTranslate__Q33ipl5scene11SavedataBoxFRCQ34nw4r4math4VEC3"@ha
/* 813C432C | 48 00 00 78 */	b .L_813C43A4
.L_813C4330:
/* 813C4330 | 80 79 00 60 */	lwz r3, 0x60(r25)
/* 813C4334 | 38 A0 00 01 */	li r5, 0x1
/* 813C4338 | 7C 9C F8 2E */	lwzx r4, r28, r31
/* 813C433C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813C4340 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813C4344 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C4348 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813C434C | 7D 89 03 A6 */	mtctr r12
/* 813C4350 | 4E 80 04 21 */	bctrl
/* 813C4354 | C0 22 86 48 */	lfs f1, lbl_81694A48@sda21(r0)
/* 813C4358 | 7C 7D 1B 78 */	mr r29, r3
/* 813C435C | 38 61 00 08 */	addi r3, r1, 0x8
/* 813C4360 | FC 40 08 90 */	fmr f2, f1
/* 813C4364 | FC 60 08 90 */	fmr f3, f1
/* 813C4368 | 4B FB 05 1D */	bl __ct__Q34nw4r4math4VEC3Ffff
/* 813C436C | 38 81 00 08 */	addi r4, r1, 0x8
/* 813C4370 | 38 7D 00 84 */	addi r3, r29, 0x84
/* 813C4374 | 7C 85 23 78 */	mr r5, r4
/* 813C4378 | 48 17 D1 45 */	bl fn_815414BC
/* 813C437C | 7F 43 D3 78 */	mr r3, r26
/* 813C4380 | 38 9E 12 44 */	addi r4, r30, "@STRING@setTranslate__Q33ipl5scene11SavedataBoxFRCQ34nw4r4math4VEC3"@l
/* 813C4384 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813C4388 | 4B FE 31 E1 */	bl set_translate__Q33ipl5scene13AnmControllerFPCcRCQ34nw4r4math4VEC3
/* 813C438C | 80 7A 00 44 */	lwz r3, 0x44(r26)
/* 813C4390 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813C4394 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C4398 | 41 82 00 0C */	beq .L_813C43A4
/* 813C439C | 48 00 D2 CD */	bl terminate__Q33ipl5scene11TextBalloonFv
/* 813C43A0 | 9B 7A 00 48 */	stb r27, 0x48(r26)
.L_813C43A4:
/* 813C43A4 | 7F 44 D3 78 */	mr r4, r26
/* 813C43A8 | 38 79 00 6C */	addi r3, r25, 0x6c
/* 813C43AC | 48 14 DF 31 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813C43B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C43B4 | 7C 7A 1B 78 */	mr r26, r3
/* 813C43B8 | 40 82 FF 78 */	bne .L_813C4330
/* 813C43BC | 39 61 00 40 */	addi r11, r1, 0x40
/* 813C43C0 | 48 23 51 45 */	bl _restgpr_25
/* 813C43C4 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 813C43C8 | 7C 08 03 A6 */	mtlr r0
/* 813C43CC | 38 21 00 40 */	addi r1, r1, 0x40
/* 813C43D0 | 4E 80 00 20 */	blr
.endfn setpos_savedata_box__Q33ipl5scene6MemoryFv

# .text:0x808 | 0x813C43D4 | size: 0xC8
# ipl::scene::Memory::fadein_savedata_box()
.fn fadein_savedata_box__Q33ipl5scene6MemoryFv, global
/* 813C43D4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813C43D8 | 7C 08 02 A6 */	mflr r0
/* 813C43DC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813C43E0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813C43E4 | 48 23 50 D9 */	bl _savegpr_26
/* 813C43E8 | 3F 80 81 65 */	lis r28, lbl_81650EAC@ha
/* 813C43EC | 7C 7A 1B 78 */	mr r26, r3
/* 813C43F0 | 3B 9C 0E AC */	addi r28, r28, lbl_81650EAC@l
/* 813C43F4 | 3B E0 00 00 */	li r31, 0x0
/* 813C43F8 | 3B 60 00 00 */	li r27, 0x0
/* 813C43FC | 3F C0 81 65 */	lis r30, "@STRING@setTranslate__Q33ipl5scene11SavedataBoxFRCQ34nw4r4math4VEC3"@ha
/* 813C4400 | 48 00 00 6C */	b .L_813C446C
.L_813C4404:
/* 813C4404 | 80 7A 00 60 */	lwz r3, 0x60(r26)
/* 813C4408 | 38 A0 00 01 */	li r5, 0x1
/* 813C440C | 7C 9C F8 2E */	lwzx r4, r28, r31
/* 813C4410 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813C4414 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813C4418 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C441C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813C4420 | 7D 89 03 A6 */	mtctr r12
/* 813C4424 | 4E 80 04 21 */	bctrl
/* 813C4428 | C0 22 86 48 */	lfs f1, lbl_81694A48@sda21(r0)
/* 813C442C | 7C 7D 1B 78 */	mr r29, r3
/* 813C4430 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813C4434 | FC 40 08 90 */	fmr f2, f1
/* 813C4438 | FC 60 08 90 */	fmr f3, f1
/* 813C443C | 4B FB 04 49 */	bl __ct__Q34nw4r4math4VEC3Ffff
/* 813C4440 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813C4444 | 38 7D 00 84 */	addi r3, r29, 0x84
/* 813C4448 | 7C 85 23 78 */	mr r5, r4
/* 813C444C | 48 17 D0 71 */	bl fn_815414BC
/* 813C4450 | 7F 63 DB 78 */	mr r3, r27
/* 813C4454 | 38 9E 12 44 */	addi r4, r30, "@STRING@setTranslate__Q33ipl5scene11SavedataBoxFRCQ34nw4r4math4VEC3"@l
/* 813C4458 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813C445C | 4B FE 31 0D */	bl set_translate__Q33ipl5scene13AnmControllerFPCcRCQ34nw4r4math4VEC3
/* 813C4460 | 7F 63 DB 78 */	mr r3, r27
/* 813C4464 | 48 00 3C C1 */	bl anmFadein__Q33ipl5scene11SavedataBoxFv
/* 813C4468 | 3B FF 00 04 */	addi r31, r31, 0x4
.L_813C446C:
/* 813C446C | 7F 64 DB 78 */	mr r4, r27
/* 813C4470 | 38 7A 00 6C */	addi r3, r26, 0x6c
/* 813C4474 | 48 14 DE 69 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813C4478 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C447C | 7C 7B 1B 78 */	mr r27, r3
/* 813C4480 | 40 82 FF 84 */	bne .L_813C4404
/* 813C4484 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813C4488 | 48 23 50 81 */	bl _restgpr_26
/* 813C448C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813C4490 | 7C 08 03 A6 */	mtlr r0
/* 813C4494 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813C4498 | 4E 80 00 20 */	blr
.endfn fadein_savedata_box__Q33ipl5scene6MemoryFv

# .text:0x8D0 | 0x813C449C | size: 0x60
# ipl::scene::Memory::fadeout_savedata_box()
.fn fadeout_savedata_box__Q33ipl5scene6MemoryFv, global
/* 813C449C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813C44A0 | 7C 08 02 A6 */	mflr r0
/* 813C44A4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813C44A8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C44AC | 48 23 50 1D */	bl _savegpr_29
/* 813C44B0 | 7C 7D 1B 78 */	mr r29, r3
/* 813C44B4 | 3B C0 00 00 */	li r30, 0x0
/* 813C44B8 | 3B E0 00 00 */	li r31, 0x0
/* 813C44BC | 48 00 00 10 */	b .L_813C44CC
.L_813C44C0:
/* 813C44C0 | 93 E3 00 40 */	stw r31, 0x40(r3)
/* 813C44C4 | 7F C3 F3 78 */	mr r3, r30
/* 813C44C8 | 48 00 3C B1 */	bl anmFadeout__Q33ipl5scene11SavedataBoxFv
.L_813C44CC:
/* 813C44CC | 7F C4 F3 78 */	mr r4, r30
/* 813C44D0 | 38 7D 00 6C */	addi r3, r29, 0x6c
/* 813C44D4 | 48 14 DE 09 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813C44D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C44DC | 7C 7E 1B 78 */	mr r30, r3
/* 813C44E0 | 40 82 FF E0 */	bne .L_813C44C0
/* 813C44E4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C44E8 | 48 23 50 2D */	bl _restgpr_29
/* 813C44EC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813C44F0 | 7C 08 03 A6 */	mtlr r0
/* 813C44F4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813C44F8 | 4E 80 00 20 */	blr
.endfn fadeout_savedata_box__Q33ipl5scene6MemoryFv

# .text:0x930 | 0x813C44FC | size: 0x6C
# ipl::scene::Memory::send_getbanner_cmd(bool)
.fn send_getbanner_cmd__Q33ipl5scene6MemoryFb, global
/* 813C44FC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813C4500 | 7C 08 02 A6 */	mflr r0
/* 813C4504 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813C4508 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C450C | 48 23 4F BD */	bl _savegpr_29
/* 813C4510 | 7C 7D 1B 78 */	mr r29, r3
/* 813C4514 | 7C 9E 23 78 */	mr r30, r4
/* 813C4518 | 3B E0 00 00 */	li r31, 0x0
.L_813C451C:
/* 813C451C | 38 1F 00 0F */	addi r0, r31, 0xf
/* 813C4520 | 38 7D 00 6C */	addi r3, r29, 0x6c
/* 813C4524 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813C4528 | 48 14 DD F1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813C452C | 80 1D 00 C0 */	lwz r0, 0xc0(r29)
/* 813C4530 | 7C 64 1B 78 */	mr r4, r3
/* 813C4534 | 80 7D 00 78 */	lwz r3, 0x78(r29)
/* 813C4538 | 7F C6 F3 78 */	mr r6, r30
/* 813C453C | 7C A0 FA 14 */	add r5, r0, r31
/* 813C4540 | 4B FE 38 79 */	bl cmdGetWiiBanner__Q33ipl5scene17NandSDCardManagerFPQ33ipl5scene11SavedataBoxib
/* 813C4544 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 813C4548 | 2C 1F 00 0F */	cmpwi r31, 0xf
/* 813C454C | 41 80 FF D0 */	blt .L_813C451C
/* 813C4550 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C4554 | 48 23 4F C1 */	bl _restgpr_29
/* 813C4558 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813C455C | 7C 08 03 A6 */	mtlr r0
/* 813C4560 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813C4564 | 4E 80 00 20 */	blr
.endfn send_getbanner_cmd__Q33ipl5scene6MemoryFb

# .text:0x99C | 0x813C4568 | size: 0x130
# ipl::scene::Memory::update_sdcard_slot()
.fn update_sdcard_slot__Q33ipl5scene6MemoryFv, global
/* 813C4568 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813C456C | 7C 08 02 A6 */	mflr r0
/* 813C4570 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813C4574 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C4578 | 48 23 4F 51 */	bl _savegpr_29
/* 813C457C | 80 03 00 B8 */	lwz r0, 0xb8(r3)
/* 813C4580 | 7C 7D 1B 78 */	mr r29, r3
/* 813C4584 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813C4588 | 40 82 00 F8 */	bne .L_813C4680
/* 813C458C | 80 63 00 78 */	lwz r3, 0x78(r3)
/* 813C4590 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813C4594 | 4B F8 42 F1 */	bl get_sd_state__Q23ipl12NandSDWorkerFv
/* 813C4598 | 2C 03 00 06 */	cmpwi r3, 0x6
/* 813C459C | 90 7D 00 C4 */	stw r3, 0xc4(r29)
/* 813C45A0 | 41 82 00 E0 */	beq .L_813C4680
/* 813C45A4 | 80 7D 00 78 */	lwz r3, 0x78(r29)
/* 813C45A8 | 4B FE 57 49 */	bl cmdCleanQueue__Q33ipl5scene17NandSDCardManagerFv
/* 813C45AC | 3B E0 00 00 */	li r31, 0x0
/* 813C45B0 | 3B C0 00 00 */	li r30, 0x0
/* 813C45B4 | 93 FD 00 C0 */	stw r31, 0xc0(r29)
/* 813C45B8 | 48 00 00 18 */	b .L_813C45D0
.L_813C45BC:
/* 813C45BC | 80 63 00 44 */	lwz r3, 0x44(r3)
/* 813C45C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C45C4 | 41 82 00 0C */	beq .L_813C45D0
/* 813C45C8 | 48 00 D0 A1 */	bl terminate__Q33ipl5scene11TextBalloonFv
/* 813C45CC | 9B FE 00 48 */	stb r31, 0x48(r30)
.L_813C45D0:
/* 813C45D0 | 7F C4 F3 78 */	mr r4, r30
/* 813C45D4 | 38 7D 00 6C */	addi r3, r29, 0x6c
/* 813C45D8 | 48 14 DD 05 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813C45DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C45E0 | 7C 7E 1B 78 */	mr r30, r3
/* 813C45E4 | 40 82 FF D8 */	bne .L_813C45BC
/* 813C45E8 | 80 1D 00 54 */	lwz r0, 0x54(r29)
/* 813C45EC | 28 00 00 1E */	cmplwi r0, 0x1e
/* 813C45F0 | 41 81 00 90 */	bgt .L_813C4680
/* 813C45F4 | 3C 60 81 65 */	lis r3, jumptable_816510A4@ha
/* 813C45F8 | 54 00 10 3A */	slwi r0, r0, 2
/* 813C45FC | 38 63 10 A4 */	addi r3, r3, jumptable_816510A4@l
/* 813C4600 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813C4604 | 7C 69 03 A6 */	mtctr r3
/* 813C4608 | 4E 80 04 20 */	bctr
.L_813C460C:
/* 813C460C | 7F A3 EB 78 */	mr r3, r29
/* 813C4610 | 4B FF FE 8D */	bl fadeout_savedata_box__Q33ipl5scene6MemoryFv
/* 813C4614 | 38 00 00 07 */	li r0, 0x7
/* 813C4618 | 90 1D 00 54 */	stw r0, 0x54(r29)
/* 813C461C | 48 00 00 64 */	b .L_813C4680
.L_813C4620:
/* 813C4620 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 813C4624 | 48 00 4C 75 */	bl anmClear__Q33ipl5scene12SavedataEditFv
/* 813C4628 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 813C462C | 48 00 49 5D */	bl anmFadeout__Q33ipl5scene12SavedataEditFv
/* 813C4630 | 38 00 00 0E */	li r0, 0xe
/* 813C4634 | 90 1D 00 54 */	stw r0, 0x54(r29)
/* 813C4638 | 48 00 00 48 */	b .L_813C4680
.L_813C463C:
/* 813C463C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C4640 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C4644 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813C4648 | 4B F8 32 BD */	bl terminate__Q23ipl12DialogWindowFv
/* 813C464C | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 813C4650 | 48 00 4C 49 */	bl anmClear__Q33ipl5scene12SavedataEditFv
/* 813C4654 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 813C4658 | 48 00 4A 25 */	bl anmSelectFadein__Q33ipl5scene12SavedataEditFv
/* 813C465C | 38 00 00 0C */	li r0, 0xc
/* 813C4660 | 90 1D 00 54 */	stw r0, 0x54(r29)
/* 813C4664 | 48 00 00 1C */	b .L_813C4680
.L_813C4668:
/* 813C4668 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 813C466C | 48 00 4C 2D */	bl anmClear__Q33ipl5scene12SavedataEditFv
/* 813C4670 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 813C4674 | 48 00 4A 09 */	bl anmSelectFadein__Q33ipl5scene12SavedataEditFv
/* 813C4678 | 38 00 00 10 */	li r0, 0x10
/* 813C467C | 90 1D 00 54 */	stw r0, 0x54(r29)
.L_813C4680:
/* 813C4680 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C4684 | 48 23 4E 91 */	bl _restgpr_29
/* 813C4688 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813C468C | 7C 08 03 A6 */	mtlr r0
/* 813C4690 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813C4694 | 4E 80 00 20 */	blr
.endfn update_sdcard_slot__Q33ipl5scene6MemoryFv

# .text:0xACC | 0x813C4698 | size: 0xFC
# ipl::scene::Memory::update_arw()
.fn update_arw__Q33ipl5scene6MemoryFv, global
/* 813C4698 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C469C | 7C 08 02 A6 */	mflr r0
/* 813C46A0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C46A4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C46A8 | 7C 7F 1B 78 */	mr r31, r3
/* 813C46AC | 88 03 00 C8 */	lbz r0, 0xc8(r3)
/* 813C46B0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C46B4 | 40 82 00 2C */	bne .L_813C46E0
/* 813C46B8 | 48 00 07 DD */	bl enable_scroll_r__Q33ipl5scene6MemoryFv
/* 813C46BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C46C0 | 41 82 00 20 */	beq .L_813C46E0
/* 813C46C4 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813C46C8 | 38 80 00 01 */	li r4, 0x1
/* 813C46CC | 38 A0 00 00 */	li r5, 0x0
/* 813C46D0 | 48 00 32 15 */	bl anmArwAppear__Q33ipl5scene12SavedataBaseFbb
/* 813C46D4 | 38 00 00 01 */	li r0, 0x1
/* 813C46D8 | 98 1F 00 C8 */	stb r0, 0xc8(r31)
/* 813C46DC | 48 00 00 38 */	b .L_813C4714
.L_813C46E0:
/* 813C46E0 | 88 1F 00 C8 */	lbz r0, 0xc8(r31)
/* 813C46E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C46E8 | 41 82 00 2C */	beq .L_813C4714
/* 813C46EC | 7F E3 FB 78 */	mr r3, r31
/* 813C46F0 | 48 00 07 A5 */	bl enable_scroll_r__Q33ipl5scene6MemoryFv
/* 813C46F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C46F8 | 40 82 00 1C */	bne .L_813C4714
/* 813C46FC | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813C4700 | 38 80 00 01 */	li r4, 0x1
/* 813C4704 | 38 A0 00 00 */	li r5, 0x0
/* 813C4708 | 48 00 32 A1 */	bl anmArwDisappear__Q33ipl5scene12SavedataBaseFbb
/* 813C470C | 38 00 00 00 */	li r0, 0x0
/* 813C4710 | 98 1F 00 C8 */	stb r0, 0xc8(r31)
.L_813C4714:
/* 813C4714 | 88 1F 00 C9 */	lbz r0, 0xc9(r31)
/* 813C4718 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C471C | 40 82 00 30 */	bne .L_813C474C
/* 813C4720 | 7F E3 FB 78 */	mr r3, r31
/* 813C4724 | 48 00 08 25 */	bl enable_scroll_l__Q33ipl5scene6MemoryFv
/* 813C4728 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C472C | 41 82 00 20 */	beq .L_813C474C
/* 813C4730 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813C4734 | 38 80 00 00 */	li r4, 0x0
/* 813C4738 | 38 A0 00 01 */	li r5, 0x1
/* 813C473C | 48 00 31 A9 */	bl anmArwAppear__Q33ipl5scene12SavedataBaseFbb
/* 813C4740 | 38 00 00 01 */	li r0, 0x1
/* 813C4744 | 98 1F 00 C9 */	stb r0, 0xc9(r31)
/* 813C4748 | 48 00 00 38 */	b .L_813C4780
.L_813C474C:
/* 813C474C | 88 1F 00 C9 */	lbz r0, 0xc9(r31)
/* 813C4750 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C4754 | 41 82 00 2C */	beq .L_813C4780
/* 813C4758 | 7F E3 FB 78 */	mr r3, r31
/* 813C475C | 48 00 07 ED */	bl enable_scroll_l__Q33ipl5scene6MemoryFv
/* 813C4760 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C4764 | 40 82 00 1C */	bne .L_813C4780
/* 813C4768 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813C476C | 38 80 00 00 */	li r4, 0x0
/* 813C4770 | 38 A0 00 01 */	li r5, 0x1
/* 813C4774 | 48 00 32 35 */	bl anmArwDisappear__Q33ipl5scene12SavedataBaseFbb
/* 813C4778 | 38 00 00 00 */	li r0, 0x0
/* 813C477C | 98 1F 00 C9 */	stb r0, 0xc9(r31)
.L_813C4780:
/* 813C4780 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C4784 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C4788 | 7C 08 03 A6 */	mtlr r0
/* 813C478C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C4790 | 4E 80 00 20 */	blr
.endfn update_arw__Q33ipl5scene6MemoryFv

# .text:0xBC8 | 0x813C4794 | size: 0x14
# ipl::scene::Memory::update_free()
.fn update_free__Q33ipl5scene6MemoryFv, global
/* 813C4794 | 80 03 00 B8 */	lwz r0, 0xb8(r3)
/* 813C4798 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C479C | 40 82 00 08 */	bne .L_813C47A4
/* 813C47A0 | 48 00 00 08 */	b update_nand_free__Q33ipl5scene6MemoryFv
.L_813C47A4:
/* 813C47A4 | 48 00 02 2C */	b update_sd_free__Q33ipl5scene6MemoryFv
.endfn update_free__Q33ipl5scene6MemoryFv

# .text:0xBDC | 0x813C47A8 | size: 0x228
# ipl::scene::Memory::update_nand_free()
.fn update_nand_free__Q33ipl5scene6MemoryFv, global
/* 813C47A8 | 94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 813C47AC | 7C 08 02 A6 */	mflr r0
/* 813C47B0 | 90 01 00 D4 */	stw r0, 0xd4(r1)
/* 813C47B4 | 39 61 00 D0 */	addi r11, r1, 0xd0
/* 813C47B8 | 48 23 4D 01 */	bl _savegpr_25
/* 813C47BC | 80 83 00 78 */	lwz r4, 0x78(r3)
/* 813C47C0 | 7C 7E 1B 78 */	mr r30, r3
/* 813C47C4 | 3C 84 00 0F */	addis r4, r4, 0xf
/* 813C47C8 | 80 04 87 80 */	lwz r0, -0x7880(r4)
/* 813C47CC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C47D0 | 40 80 00 30 */	bge .L_813C4800
/* 813C47D4 | 3C 80 81 65 */	lis r4, lbl_81651120@ha
/* 813C47D8 | 80 63 00 60 */	lwz r3, 0x60(r3)
/* 813C47DC | 38 84 11 20 */	addi r4, r4, lbl_81651120@l
/* 813C47E0 | 38 A0 00 00 */	li r5, 0x0
/* 813C47E4 | 4B FE 2C F1 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C47E8 | 3C 80 81 65 */	lis r4, lbl_8165112A@ha
/* 813C47EC | 80 7E 00 60 */	lwz r3, 0x60(r30)
/* 813C47F0 | 38 84 11 2A */	addi r4, r4, lbl_8165112A@l
/* 813C47F4 | 38 A0 00 00 */	li r5, 0x0
/* 813C47F8 | 4B FE 2C DD */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C47FC | 48 00 01 BC */	b .L_813C49B8
.L_813C4800:
/* 813C4800 | 3C 80 81 61 */	lis r4, lbl_81610328@ha
/* 813C4804 | 38 60 00 05 */	li r3, 0x5
/* 813C4808 | 38 84 03 28 */	addi r4, r4, lbl_81610328@l
/* 813C480C | 38 C1 00 10 */	addi r6, r1, 0x10
/* 813C4810 | 38 A4 FF FE */	subi r5, r4, 0x2
/* 813C4814 | 7C 69 03 A6 */	mtctr r3
.L_813C4818:
/* 813C4818 | A0 85 00 02 */	lhz r4, 0x2(r5)
/* 813C481C | A4 65 00 04 */	lhzu r3, 0x4(r5)
/* 813C4820 | B0 86 00 02 */	sth r4, 0x2(r6)
/* 813C4824 | B4 66 00 04 */	sthu r3, 0x4(r6)
/* 813C4828 | 42 00 FF F0 */	bdnz .L_813C4818
/* 813C482C | 38 A0 00 00 */	li r5, 0x0
/* 813C4830 | 38 60 00 20 */	li r3, 0x20
/* 813C4834 | B0 A1 00 08 */	sth r5, 0x8(r1)
/* 813C4838 | 38 81 00 24 */	addi r4, r1, 0x24
/* 813C483C | B0 A1 00 0A */	sth r5, 0xa(r1)
/* 813C4840 | B0 A1 00 0C */	sth r5, 0xc(r1)
/* 813C4844 | B0 A1 00 0E */	sth r5, 0xe(r1)
/* 813C4848 | B0 A1 00 10 */	sth r5, 0x10(r1)
/* 813C484C | 7C 69 03 A6 */	mtctr r3
.L_813C4850:
/* 813C4850 | B0 A4 00 02 */	sth r5, 0x2(r4)
/* 813C4854 | B4 A4 00 04 */	sthu r5, 0x4(r4)
/* 813C4858 | 42 00 FF F8 */	bdnz .L_813C4850
/* 813C485C | 38 80 00 64 */	li r4, 0x64
/* 813C4860 | 39 40 00 0A */	li r10, 0xa
/* 813C4864 | 7D 60 23 D6 */	divw r11, r0, r4
/* 813C4868 | 39 20 03 E8 */	li r9, 0x3e8
/* 813C486C | 39 81 00 12 */	addi r12, r1, 0x12
/* 813C4870 | 38 60 00 03 */	li r3, 0x3
/* 813C4874 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813C4878 | 3B E0 00 00 */	li r31, 0x0
/* 813C487C | 7D 00 53 D6 */	divw r8, r0, r10
/* 813C4880 | 38 80 00 00 */	li r4, 0x0
/* 813C4884 | 7C EB 53 D6 */	divw r7, r11, r10
/* 813C4888 | 7F 80 4B D6 */	divw r28, r0, r9
/* 813C488C | 7D 27 51 D6 */	mullw r9, r7, r10
/* 813C4890 | 57 87 08 3C */	slwi r7, r28, 1
/* 813C4894 | 7C EC 3A 2E */	lhzx r7, r12, r7
/* 813C4898 | B0 E1 00 08 */	sth r7, 0x8(r1)
/* 813C489C | 7C C8 53 D6 */	divw r6, r8, r10
/* 813C48A0 | 7C E6 51 D6 */	mullw r7, r6, r10
/* 813C48A4 | 7C C9 58 50 */	subf r6, r9, r11
/* 813C48A8 | 54 C6 08 3C */	slwi r6, r6, 1
/* 813C48AC | 7D 2C 32 2E */	lhzx r9, r12, r6
/* 813C48B0 | 7C C8 51 D6 */	mullw r6, r8, r10
/* 813C48B4 | 7C E7 40 50 */	subf r7, r7, r8
/* 813C48B8 | B1 21 00 0A */	sth r9, 0xa(r1)
/* 813C48BC | 54 E7 08 3C */	slwi r7, r7, 1
/* 813C48C0 | 7C EC 3A 2E */	lhzx r7, r12, r7
/* 813C48C4 | 7C 06 00 50 */	subf r0, r6, r0
/* 813C48C8 | 54 00 08 3C */	slwi r0, r0, 1
/* 813C48CC | B0 E1 00 0C */	sth r7, 0xc(r1)
/* 813C48D0 | 7C 0C 02 2E */	lhzx r0, r12, r0
/* 813C48D4 | B0 01 00 0E */	sth r0, 0xe(r1)
/* 813C48D8 | 7C 69 03 A6 */	mtctr r3
.L_813C48DC:
/* 813C48DC | 7C 05 22 2E */	lhzx r0, r5, r4
/* 813C48E0 | 28 00 00 30 */	cmplwi r0, 0x30
/* 813C48E4 | 40 82 00 10 */	bne .L_813C48F4
/* 813C48E8 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 813C48EC | 38 84 00 02 */	addi r4, r4, 0x2
/* 813C48F0 | 42 00 FF EC */	bdnz .L_813C48DC
.L_813C48F4:
/* 813C48F4 | 3F 80 81 09 */	lis r28, smArg__Q23ipl6System@ha
/* 813C48F8 | 3B 40 00 00 */	li r26, 0x0
/* 813C48FC | 3B 9C 90 08 */	addi r28, r28, smArg__Q23ipl6System@l
/* 813C4900 | 3B A0 00 00 */	li r29, 0x0
/* 813C4904 | 80 7C 00 80 */	lwz r3, 0x80(r28)
/* 813C4908 | 38 80 00 9C */	li r4, 0x9c
/* 813C490C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813C4910 | 4B F7 9E AD */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813C4914 | 80 BC 00 80 */	lwz r5, 0x80(r28)
/* 813C4918 | 7C 79 1B 78 */	mr r25, r3
/* 813C491C | 38 80 00 F2 */	li r4, 0xf2
/* 813C4920 | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 813C4924 | 4B F7 9E 99 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813C4928 | 7C 7B 1B 78 */	mr r27, r3
/* 813C492C | 3B 81 00 26 */	addi r28, r1, 0x26
.L_813C4930:
/* 813C4930 | A0 19 00 00 */	lhz r0, 0x0(r25)
/* 813C4934 | 3B 39 00 02 */	addi r25, r25, 0x2
/* 813C4938 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 813C493C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C4940 | 7C 1C EB 2E */	sthx r0, r28, r29
/* 813C4944 | 3B BD 00 02 */	addi r29, r29, 0x2
/* 813C4948 | 40 82 FF E8 */	bne .L_813C4930
/* 813C494C | 3B 5A FF FF */	subi r26, r26, 0x1
/* 813C4950 | 38 00 00 20 */	li r0, 0x20
/* 813C4954 | 57 45 08 3C */	slwi r5, r26, 1
/* 813C4958 | 7F 83 E3 78 */	mr r3, r28
/* 813C495C | 7C 1C 2B 2E */	sthx r0, r28, r5
/* 813C4960 | 57 E0 08 3C */	slwi r0, r31, 1
/* 813C4964 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813C4968 | 7C 63 2A 14 */	add r3, r3, r5
/* 813C496C | 7C 84 02 14 */	add r4, r4, r0
/* 813C4970 | 48 24 3D 59 */	bl fn_816086C8
/* 813C4974 | 7F 83 E3 78 */	mr r3, r28
/* 813C4978 | 7F 64 DB 78 */	mr r4, r27
/* 813C497C | 48 24 3D AD */	bl wcscat
/* 813C4980 | 3F A0 81 65 */	lis r29, lbl_8165112A@ha
/* 813C4984 | 80 7E 00 60 */	lwz r3, 0x60(r30)
/* 813C4988 | 38 9D 11 2A */	addi r4, r29, lbl_8165112A@l
/* 813C498C | 38 A0 00 01 */	li r5, 0x1
/* 813C4990 | 4B FE 2B 45 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C4994 | 3C 80 81 65 */	lis r4, lbl_81651120@ha
/* 813C4998 | 80 7E 00 60 */	lwz r3, 0x60(r30)
/* 813C499C | 38 84 11 20 */	addi r4, r4, lbl_81651120@l
/* 813C49A0 | 38 A0 00 01 */	li r5, 0x1
/* 813C49A4 | 4B FE 2B 31 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C49A8 | 80 7E 00 60 */	lwz r3, 0x60(r30)
/* 813C49AC | 7F 85 E3 78 */	mr r5, r28
/* 813C49B0 | 38 9D 11 2A */	addi r4, r29, lbl_8165112A@l
/* 813C49B4 | 4B FE 2A 4D */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
.L_813C49B8:
/* 813C49B8 | 39 61 00 D0 */	addi r11, r1, 0xd0
/* 813C49BC | 48 23 4B 49 */	bl _restgpr_25
/* 813C49C0 | 80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 813C49C4 | 7C 08 03 A6 */	mtlr r0
/* 813C49C8 | 38 21 00 D0 */	addi r1, r1, 0xd0
/* 813C49CC | 4E 80 00 20 */	blr
.endfn update_nand_free__Q33ipl5scene6MemoryFv

# .text:0xE04 | 0x813C49D0 | size: 0x2B4
# ipl::scene::Memory::update_sd_free()
.fn update_sd_free__Q33ipl5scene6MemoryFv, global
/* 813C49D0 | 94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 813C49D4 | 7C 08 02 A6 */	mflr r0
/* 813C49D8 | 90 01 00 D4 */	stw r0, 0xd4(r1)
/* 813C49DC | 39 61 00 D0 */	addi r11, r1, 0xd0
/* 813C49E0 | 48 23 4A D9 */	bl _savegpr_25
/* 813C49E4 | 80 83 00 78 */	lwz r4, 0x78(r3)
/* 813C49E8 | 7C 7E 1B 78 */	mr r30, r3
/* 813C49EC | 80 64 00 08 */	lwz r3, 0x8(r4)
/* 813C49F0 | 4B F8 3E 95 */	bl get_sd_state__Q23ipl12NandSDWorkerFv
/* 813C49F4 | 2C 03 00 06 */	cmpwi r3, 0x6
/* 813C49F8 | 41 82 00 30 */	beq .L_813C4A28
/* 813C49FC | 3C 80 81 65 */	lis r4, lbl_81651120@ha
/* 813C4A00 | 80 7E 00 60 */	lwz r3, 0x60(r30)
/* 813C4A04 | 38 84 11 20 */	addi r4, r4, lbl_81651120@l
/* 813C4A08 | 38 A0 00 00 */	li r5, 0x0
/* 813C4A0C | 4B FE 2A C9 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C4A10 | 3C 80 81 65 */	lis r4, lbl_8165112A@ha
/* 813C4A14 | 80 7E 00 60 */	lwz r3, 0x60(r30)
/* 813C4A18 | 38 84 11 2A */	addi r4, r4, lbl_8165112A@l
/* 813C4A1C | 38 A0 00 00 */	li r5, 0x0
/* 813C4A20 | 4B FE 2A B5 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C4A24 | 48 00 02 48 */	b .L_813C4C6C
.L_813C4A28:
/* 813C4A28 | 80 7E 00 78 */	lwz r3, 0x78(r30)
/* 813C4A2C | 3C 63 00 0F */	addis r3, r3, 0xf
/* 813C4A30 | 80 83 87 84 */	lwz r4, -0x787c(r3)
/* 813C4A34 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813C4A38 | 40 80 00 30 */	bge .L_813C4A68
/* 813C4A3C | 3C 80 81 65 */	lis r4, lbl_81651120@ha
/* 813C4A40 | 80 7E 00 60 */	lwz r3, 0x60(r30)
/* 813C4A44 | 38 84 11 20 */	addi r4, r4, lbl_81651120@l
/* 813C4A48 | 38 A0 00 00 */	li r5, 0x0
/* 813C4A4C | 4B FE 2A 89 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C4A50 | 3C 80 81 65 */	lis r4, lbl_8165112A@ha
/* 813C4A54 | 80 7E 00 60 */	lwz r3, 0x60(r30)
/* 813C4A58 | 38 84 11 2A */	addi r4, r4, lbl_8165112A@l
/* 813C4A5C | 38 A0 00 00 */	li r5, 0x0
/* 813C4A60 | 4B FE 2A 75 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C4A64 | 48 00 02 08 */	b .L_813C4C6C
.L_813C4A68:
/* 813C4A68 | 3C 60 81 61 */	lis r3, lbl_8161033C@ha
/* 813C4A6C | 38 00 00 05 */	li r0, 0x5
/* 813C4A70 | 38 63 03 3C */	addi r3, r3, lbl_8161033C@l
/* 813C4A74 | 38 C1 00 14 */	addi r6, r1, 0x14
/* 813C4A78 | 38 A3 FF FE */	subi r5, r3, 0x2
/* 813C4A7C | 7C 09 03 A6 */	mtctr r0
.L_813C4A80:
/* 813C4A80 | A0 65 00 02 */	lhz r3, 0x2(r5)
/* 813C4A84 | A4 05 00 04 */	lhzu r0, 0x4(r5)
/* 813C4A88 | B0 66 00 02 */	sth r3, 0x2(r6)
/* 813C4A8C | B4 06 00 04 */	sthu r0, 0x4(r6)
/* 813C4A90 | 42 00 FF F0 */	bdnz .L_813C4A80
/* 813C4A94 | 38 A0 00 00 */	li r5, 0x0
/* 813C4A98 | 38 00 00 20 */	li r0, 0x20
/* 813C4A9C | B0 A1 00 08 */	sth r5, 0x8(r1)
/* 813C4AA0 | 38 61 00 28 */	addi r3, r1, 0x28
/* 813C4AA4 | B0 A1 00 0A */	sth r5, 0xa(r1)
/* 813C4AA8 | B0 A1 00 0C */	sth r5, 0xc(r1)
/* 813C4AAC | B0 A1 00 0E */	sth r5, 0xe(r1)
/* 813C4AB0 | B0 A1 00 10 */	sth r5, 0x10(r1)
/* 813C4AB4 | B0 A1 00 12 */	sth r5, 0x12(r1)
/* 813C4AB8 | B0 A1 00 14 */	sth r5, 0x14(r1)
/* 813C4ABC | 7C 09 03 A6 */	mtctr r0
.L_813C4AC0:
/* 813C4AC0 | B0 A3 00 02 */	sth r5, 0x2(r3)
/* 813C4AC4 | B4 A3 00 04 */	sthu r5, 0x4(r3)
/* 813C4AC8 | 42 00 FF F8 */	bdnz .L_813C4AC0
/* 813C4ACC | 38 A0 27 10 */	li r5, 0x2710
/* 813C4AD0 | 38 00 00 0A */	li r0, 0xa
/* 813C4AD4 | 7F 64 2B D6 */	divw r27, r4, r5
/* 813C4AD8 | 39 40 03 E8 */	li r10, 0x3e8
/* 813C4ADC | 39 00 00 64 */	li r8, 0x64
/* 813C4AE0 | 3C C0 00 02 */	lis r6, 0x2
/* 813C4AE4 | 38 61 00 16 */	addi r3, r1, 0x16
/* 813C4AE8 | 3B 46 86 A0 */	subi r26, r6, 0x7960
/* 813C4AEC | 7F 84 53 D6 */	divw r28, r4, r10
/* 813C4AF0 | 38 A0 00 05 */	li r5, 0x5
/* 813C4AF4 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 813C4AF8 | 3B E0 00 00 */	li r31, 0x0
/* 813C4AFC | 38 C0 00 00 */	li r6, 0x0
/* 813C4B00 | 7D 64 43 D6 */	divw r11, r4, r8
/* 813C4B04 | 7D 24 03 D6 */	divw r9, r4, r0
/* 813C4B08 | 7F BB 03 D6 */	divw r29, r27, r0
/* 813C4B0C | 7D 9C 03 D6 */	divw r12, r28, r0
/* 813C4B10 | 7D 4B 03 D6 */	divw r10, r11, r0
/* 813C4B14 | 7D 09 03 D6 */	divw r8, r9, r0
/* 813C4B18 | 7F 44 D3 D6 */	divw r26, r4, r26
/* 813C4B1C | 7F BD 01 D6 */	mullw r29, r29, r0
/* 813C4B20 | 57 5A 08 3C */	slwi r26, r26, 1
/* 813C4B24 | 7F 43 D2 2E */	lhzx r26, r3, r26
/* 813C4B28 | B3 41 00 08 */	sth r26, 0x8(r1)
/* 813C4B2C | 7D 8C 01 D6 */	mullw r12, r12, r0
/* 813C4B30 | 7F BD D8 50 */	subf r29, r29, r27
/* 813C4B34 | 57 BD 08 3C */	slwi r29, r29, 1
/* 813C4B38 | 7F A3 EA 2E */	lhzx r29, r3, r29
/* 813C4B3C | 7D 4A 01 D6 */	mullw r10, r10, r0
/* 813C4B40 | 7D 8C E0 50 */	subf r12, r12, r28
/* 813C4B44 | B3 A1 00 0A */	sth r29, 0xa(r1)
/* 813C4B48 | 55 8C 08 3C */	slwi r12, r12, 1
/* 813C4B4C | 7D 83 62 2E */	lhzx r12, r3, r12
/* 813C4B50 | 7D 08 01 D6 */	mullw r8, r8, r0
/* 813C4B54 | 7D 4A 58 50 */	subf r10, r10, r11
/* 813C4B58 | B1 81 00 0C */	sth r12, 0xc(r1)
/* 813C4B5C | 55 4A 08 3C */	slwi r10, r10, 1
/* 813C4B60 | 7D 43 52 2E */	lhzx r10, r3, r10
/* 813C4B64 | 7C 09 01 D6 */	mullw r0, r9, r0
/* 813C4B68 | 7D 08 48 50 */	subf r8, r8, r9
/* 813C4B6C | B1 41 00 0E */	sth r10, 0xe(r1)
/* 813C4B70 | 55 08 08 3C */	slwi r8, r8, 1
/* 813C4B74 | 7D 03 42 2E */	lhzx r8, r3, r8
/* 813C4B78 | 7C 00 20 50 */	subf r0, r0, r4
/* 813C4B7C | 54 00 08 3C */	slwi r0, r0, 1
/* 813C4B80 | B1 01 00 10 */	sth r8, 0x10(r1)
/* 813C4B84 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 813C4B88 | B0 01 00 12 */	sth r0, 0x12(r1)
/* 813C4B8C | 7C A9 03 A6 */	mtctr r5
.L_813C4B90:
/* 813C4B90 | 7C 07 32 2E */	lhzx r0, r7, r6
/* 813C4B94 | 28 00 00 30 */	cmplwi r0, 0x30
/* 813C4B98 | 40 82 00 10 */	bne .L_813C4BA8
/* 813C4B9C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 813C4BA0 | 38 C6 00 02 */	addi r6, r6, 0x2
/* 813C4BA4 | 42 00 FF EC */	bdnz .L_813C4B90
.L_813C4BA8:
/* 813C4BA8 | 3F 80 81 09 */	lis r28, smArg__Q23ipl6System@ha
/* 813C4BAC | 3B 60 00 00 */	li r27, 0x0
/* 813C4BB0 | 3B 9C 90 08 */	addi r28, r28, smArg__Q23ipl6System@l
/* 813C4BB4 | 3B A0 00 00 */	li r29, 0x0
/* 813C4BB8 | 80 7C 00 80 */	lwz r3, 0x80(r28)
/* 813C4BBC | 38 80 00 9C */	li r4, 0x9c
/* 813C4BC0 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813C4BC4 | 4B F7 9B F9 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813C4BC8 | 80 BC 00 80 */	lwz r5, 0x80(r28)
/* 813C4BCC | 7C 79 1B 78 */	mr r25, r3
/* 813C4BD0 | 38 80 00 F2 */	li r4, 0xf2
/* 813C4BD4 | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 813C4BD8 | 4B F7 9B E5 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813C4BDC | 7C 7A 1B 78 */	mr r26, r3
/* 813C4BE0 | 3B 81 00 2A */	addi r28, r1, 0x2a
.L_813C4BE4:
/* 813C4BE4 | A0 19 00 00 */	lhz r0, 0x0(r25)
/* 813C4BE8 | 3B 39 00 02 */	addi r25, r25, 0x2
/* 813C4BEC | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 813C4BF0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C4BF4 | 7C 1C EB 2E */	sthx r0, r28, r29
/* 813C4BF8 | 3B BD 00 02 */	addi r29, r29, 0x2
/* 813C4BFC | 40 82 FF E8 */	bne .L_813C4BE4
/* 813C4C00 | 3B 7B FF FF */	subi r27, r27, 0x1
/* 813C4C04 | 38 00 00 20 */	li r0, 0x20
/* 813C4C08 | 57 65 08 3C */	slwi r5, r27, 1
/* 813C4C0C | 7F 83 E3 78 */	mr r3, r28
/* 813C4C10 | 7C 1C 2B 2E */	sthx r0, r28, r5
/* 813C4C14 | 57 E0 08 3C */	slwi r0, r31, 1
/* 813C4C18 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813C4C1C | 7C 63 2A 14 */	add r3, r3, r5
/* 813C4C20 | 7C 84 02 14 */	add r4, r4, r0
/* 813C4C24 | 48 24 3A A5 */	bl fn_816086C8
/* 813C4C28 | 7F 83 E3 78 */	mr r3, r28
/* 813C4C2C | 7F 44 D3 78 */	mr r4, r26
/* 813C4C30 | 48 24 3A F9 */	bl wcscat
/* 813C4C34 | 3F A0 81 65 */	lis r29, lbl_8165112A@ha
/* 813C4C38 | 80 7E 00 60 */	lwz r3, 0x60(r30)
/* 813C4C3C | 38 9D 11 2A */	addi r4, r29, lbl_8165112A@l
/* 813C4C40 | 38 A0 00 01 */	li r5, 0x1
/* 813C4C44 | 4B FE 28 91 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C4C48 | 3C 80 81 65 */	lis r4, lbl_81651120@ha
/* 813C4C4C | 80 7E 00 60 */	lwz r3, 0x60(r30)
/* 813C4C50 | 38 84 11 20 */	addi r4, r4, lbl_81651120@l
/* 813C4C54 | 38 A0 00 01 */	li r5, 0x1
/* 813C4C58 | 4B FE 28 7D */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C4C5C | 80 7E 00 60 */	lwz r3, 0x60(r30)
/* 813C4C60 | 7F 85 E3 78 */	mr r5, r28
/* 813C4C64 | 38 9D 11 2A */	addi r4, r29, lbl_8165112A@l
/* 813C4C68 | 4B FE 27 99 */	bl set_textbox__Q33ipl5scene13AnmControllerFPCcPCw
.L_813C4C6C:
/* 813C4C6C | 39 61 00 D0 */	addi r11, r1, 0xd0
/* 813C4C70 | 48 23 48 95 */	bl _restgpr_25
/* 813C4C74 | 80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 813C4C78 | 7C 08 03 A6 */	mtlr r0
/* 813C4C7C | 38 21 00 D0 */	addi r1, r1, 0xd0
/* 813C4C80 | 4E 80 00 20 */	blr
.endfn update_sd_free__Q33ipl5scene6MemoryFv

# .text:0x10B8 | 0x813C4C84 | size: 0x8C
# ipl::scene::Memory::start_process(int)
.fn start_process__Q33ipl5scene6MemoryFi, global
/* 813C4C84 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C4C88 | 7C 08 02 A6 */	mflr r0
/* 813C4C8C | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813C4C90 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C4C94 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813C4C98 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C4C9C | 7C 9F 23 78 */	mr r31, r4
/* 813C4CA0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813C4CA4 | 7C 7E 1B 78 */	mr r30, r3
/* 813C4CA8 | 80 65 00 B4 */	lwz r3, 0xb4(r5)
/* 813C4CAC | 4B F8 36 6D */	bl disable__Q23ipl14HomeButtonMenuFv
/* 813C4CB0 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813C4CB4 | 3C 80 81 65 */	lis r4, lbl_81651134@ha
/* 813C4CB8 | 93 FE 00 CC */	stw r31, 0xcc(r30)
/* 813C4CBC | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813C4CC0 | 38 84 11 34 */	addi r4, r4, lbl_81651134@l
/* 813C4CC4 | 4B FA 67 A9 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813C4CC8 | 2C 1F 00 03 */	cmpwi r31, 0x3
/* 813C4CCC | 40 82 00 1C */	bne .L_813C4CE8
/* 813C4CD0 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813C4CD4 | 38 80 00 35 */	li r4, 0x35
/* 813C4CD8 | 38 A0 00 01 */	li r5, 0x1
/* 813C4CDC | 38 C0 00 01 */	li r6, 0x1
/* 813C4CE0 | 48 00 43 3D */	bl anmShowBtn0Dialog__Q33ipl5scene12SavedataEditFUlbb
/* 813C4CE4 | 48 00 00 0C */	b .L_813C4CF0
.L_813C4CE8:
/* 813C4CE8 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813C4CEC | 48 00 45 25 */	bl anmStartWaitAnm__Q33ipl5scene12SavedataEditFv
.L_813C4CF0:
/* 813C4CF0 | 38 00 00 19 */	li r0, 0x19
/* 813C4CF4 | 90 1E 00 54 */	stw r0, 0x54(r30)
/* 813C4CF8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C4CFC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813C4D00 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C4D04 | 7C 08 03 A6 */	mtlr r0
/* 813C4D08 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C4D0C | 4E 80 00 20 */	blr
.endfn start_process__Q33ipl5scene6MemoryFi

# .text:0x1144 | 0x813C4D10 | size: 0x54
# ipl::scene::Memory::stop_process()
.fn stop_process__Q33ipl5scene6MemoryFv, global
/* 813C4D10 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C4D14 | 7C 08 02 A6 */	mflr r0
/* 813C4D18 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813C4D1C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C4D20 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813C4D24 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C4D28 | 7C 7F 1B 78 */	mr r31, r3
/* 813C4D2C | 80 64 00 B4 */	lwz r3, 0xb4(r4)
/* 813C4D30 | 4B F8 36 15 */	bl enable__Q23ipl14HomeButtonMenuFv
/* 813C4D34 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813C4D38 | 3C 80 81 65 */	lis r4, lbl_81651144@ha
/* 813C4D3C | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813C4D40 | 38 84 11 44 */	addi r4, r4, lbl_81651144@l
/* 813C4D44 | 4B FA 67 29 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813C4D48 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C4D4C | 48 00 45 0D */	bl anmStopWaitAnm__Q33ipl5scene12SavedataEditFv
/* 813C4D50 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C4D54 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C4D58 | 7C 08 03 A6 */	mtlr r0
/* 813C4D5C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C4D60 | 4E 80 00 20 */	blr
.endfn stop_process__Q33ipl5scene6MemoryFv

# .text:0x1198 | 0x813C4D64 | size: 0x98
# ipl::scene::Memory::start_scroll_r(bool, bool)
.fn start_scroll_r__Q33ipl5scene6MemoryFbb, global
/* 813C4D64 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813C4D68 | 7C 08 02 A6 */	mflr r0
/* 813C4D6C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813C4D70 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C4D74 | 48 23 47 51 */	bl _savegpr_28
/* 813C4D78 | 7C 7C 1B 78 */	mr r28, r3
/* 813C4D7C | 80 63 00 78 */	lwz r3, 0x78(r3)
/* 813C4D80 | 7C 9D 23 78 */	mr r29, r4
/* 813C4D84 | 7C BE 2B 78 */	mr r30, r5
/* 813C4D88 | 4B FE 4F 69 */	bl cmdCleanQueue__Q33ipl5scene17NandSDCardManagerFv
/* 813C4D8C | 3B E0 00 00 */	li r31, 0x0
/* 813C4D90 | 48 00 00 0C */	b .L_813C4D9C
.L_813C4D94:
/* 813C4D94 | 7F E3 FB 78 */	mr r3, r31
/* 813C4D98 | 48 00 36 99 */	bl clearEvent__Q33ipl5scene11SavedataBoxFv
.L_813C4D9C:
/* 813C4D9C | 7F E4 FB 78 */	mr r4, r31
/* 813C4DA0 | 38 7C 00 6C */	addi r3, r28, 0x6c
/* 813C4DA4 | 48 14 D5 39 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813C4DA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C4DAC | 7C 7F 1B 78 */	mr r31, r3
/* 813C4DB0 | 40 82 FF E4 */	bne .L_813C4D94
/* 813C4DB4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813C4DB8 | 41 82 00 18 */	beq .L_813C4DD0
/* 813C4DBC | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813C4DC0 | 3C 80 81 65 */	lis r4, lbl_81651158@ha
/* 813C4DC4 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813C4DC8 | 38 84 11 58 */	addi r4, r4, lbl_81651158@l
/* 813C4DCC | 4B FA 66 A1 */	bl startSE__Q33ipl3snd6SystemFPCc
.L_813C4DD0:
/* 813C4DD0 | 80 7C 00 60 */	lwz r3, 0x60(r28)
/* 813C4DD4 | 7F A4 EB 78 */	mr r4, r29
/* 813C4DD8 | 48 00 29 A9 */	bl anmScrollR__Q33ipl5scene12SavedataBaseFb
/* 813C4DDC | 38 00 00 05 */	li r0, 0x5
/* 813C4DE0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C4DE4 | 90 1C 00 54 */	stw r0, 0x54(r28)
/* 813C4DE8 | 48 23 47 29 */	bl _restgpr_28
/* 813C4DEC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813C4DF0 | 7C 08 03 A6 */	mtlr r0
/* 813C4DF4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813C4DF8 | 4E 80 00 20 */	blr
.endfn start_scroll_r__Q33ipl5scene6MemoryFbb

# .text:0x1230 | 0x813C4DFC | size: 0x98
# ipl::scene::Memory::start_scroll_l(bool, bool)
.fn start_scroll_l__Q33ipl5scene6MemoryFbb, global
/* 813C4DFC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813C4E00 | 7C 08 02 A6 */	mflr r0
/* 813C4E04 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813C4E08 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C4E0C | 48 23 46 B9 */	bl _savegpr_28
/* 813C4E10 | 7C 7C 1B 78 */	mr r28, r3
/* 813C4E14 | 80 63 00 78 */	lwz r3, 0x78(r3)
/* 813C4E18 | 7C 9D 23 78 */	mr r29, r4
/* 813C4E1C | 7C BE 2B 78 */	mr r30, r5
/* 813C4E20 | 4B FE 4E D1 */	bl cmdCleanQueue__Q33ipl5scene17NandSDCardManagerFv
/* 813C4E24 | 3B E0 00 00 */	li r31, 0x0
/* 813C4E28 | 48 00 00 0C */	b .L_813C4E34
.L_813C4E2C:
/* 813C4E2C | 7F E3 FB 78 */	mr r3, r31
/* 813C4E30 | 48 00 36 01 */	bl clearEvent__Q33ipl5scene11SavedataBoxFv
.L_813C4E34:
/* 813C4E34 | 7F E4 FB 78 */	mr r4, r31
/* 813C4E38 | 38 7C 00 6C */	addi r3, r28, 0x6c
/* 813C4E3C | 48 14 D4 A1 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813C4E40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C4E44 | 7C 7F 1B 78 */	mr r31, r3
/* 813C4E48 | 40 82 FF E4 */	bne .L_813C4E2C
/* 813C4E4C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813C4E50 | 41 82 00 18 */	beq .L_813C4E68
/* 813C4E54 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813C4E58 | 3C 80 81 65 */	lis r4, lbl_81651158@ha
/* 813C4E5C | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813C4E60 | 38 84 11 58 */	addi r4, r4, lbl_81651158@l
/* 813C4E64 | 4B FA 66 09 */	bl startSE__Q33ipl3snd6SystemFPCc
.L_813C4E68:
/* 813C4E68 | 80 7C 00 60 */	lwz r3, 0x60(r28)
/* 813C4E6C | 7F A4 EB 78 */	mr r4, r29
/* 813C4E70 | 48 00 29 79 */	bl anmScrollL__Q33ipl5scene12SavedataBaseFb
/* 813C4E74 | 38 00 00 06 */	li r0, 0x6
/* 813C4E78 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C4E7C | 90 1C 00 54 */	stw r0, 0x54(r28)
/* 813C4E80 | 48 23 46 91 */	bl _restgpr_28
/* 813C4E84 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813C4E88 | 7C 08 03 A6 */	mtlr r0
/* 813C4E8C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813C4E90 | 4E 80 00 20 */	blr
.endfn start_scroll_l__Q33ipl5scene6MemoryFbb

# .text:0x12C8 | 0x813C4E94 | size: 0xB4
# ipl::scene::Memory::enable_scroll_r()
.fn enable_scroll_r__Q33ipl5scene6MemoryFv, global
/* 813C4E94 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C4E98 | 7C 08 02 A6 */	mflr r0
/* 813C4E9C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C4EA0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C4EA4 | 7C 7F 1B 78 */	mr r31, r3
/* 813C4EA8 | 80 03 00 54 */	lwz r0, 0x54(r3)
/* 813C4EAC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C4EB0 | 41 82 00 0C */	beq .L_813C4EBC
/* 813C4EB4 | 38 60 00 00 */	li r3, 0x0
/* 813C4EB8 | 48 00 00 7C */	b .L_813C4F34
.L_813C4EBC:
/* 813C4EBC | 80 03 00 B8 */	lwz r0, 0xb8(r3)
/* 813C4EC0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C4EC4 | 40 82 00 2C */	bne .L_813C4EF0
/* 813C4EC8 | 80 63 00 78 */	lwz r3, 0x78(r3)
/* 813C4ECC | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813C4ED0 | 4B F8 39 BD */	bl get_nand_save_num__Q23ipl12NandSDWorkerFv
/* 813C4ED4 | 80 9F 00 C0 */	lwz r4, 0xc0(r31)
/* 813C4ED8 | 38 00 00 0F */	li r0, 0xf
/* 813C4EDC | 7C 64 18 50 */	subf r3, r4, r3
/* 813C4EE0 | 7C 03 00 10 */	subfc r0, r3, r0
/* 813C4EE4 | 7C 00 01 10 */	subfe r0, r0, r0
/* 813C4EE8 | 7C 60 00 D0 */	neg r3, r0
/* 813C4EEC | 48 00 00 48 */	b .L_813C4F34
.L_813C4EF0:
/* 813C4EF0 | 80 63 00 78 */	lwz r3, 0x78(r3)
/* 813C4EF4 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813C4EF8 | 4B F8 39 8D */	bl get_sd_state__Q23ipl12NandSDWorkerFv
/* 813C4EFC | 2C 03 00 06 */	cmpwi r3, 0x6
/* 813C4F00 | 40 82 00 30 */	bne .L_813C4F30
/* 813C4F04 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813C4F08 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813C4F0C | 4B F8 3B 9D */	bl get_sd_save_num__Q23ipl12NandSDWorkerFv
/* 813C4F10 | 80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 813C4F14 | 7C 80 18 50 */	subf r4, r0, r3
/* 813C4F18 | 68 80 00 0F */	xori r0, r4, 0xf
/* 813C4F1C | 7C 03 0E 70 */	srawi r3, r0, 1
/* 813C4F20 | 7C 00 20 38 */	and r0, r0, r4
/* 813C4F24 | 7C 00 18 50 */	subf r0, r0, r3
/* 813C4F28 | 54 03 0F FE */	srwi r3, r0, 31
/* 813C4F2C | 48 00 00 08 */	b .L_813C4F34
.L_813C4F30:
/* 813C4F30 | 38 60 00 00 */	li r3, 0x0
.L_813C4F34:
/* 813C4F34 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C4F38 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C4F3C | 7C 08 03 A6 */	mtlr r0
/* 813C4F40 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C4F44 | 4E 80 00 20 */	blr
.endfn enable_scroll_r__Q33ipl5scene6MemoryFv

# .text:0x137C | 0x813C4F48 | size: 0x28
# ipl::scene::Memory::enable_scroll_l()
.fn enable_scroll_l__Q33ipl5scene6MemoryFv, global
/* 813C4F48 | 80 03 00 54 */	lwz r0, 0x54(r3)
/* 813C4F4C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C4F50 | 41 82 00 0C */	beq .L_813C4F5C
/* 813C4F54 | 38 60 00 00 */	li r3, 0x0
/* 813C4F58 | 4E 80 00 20 */	blr
.L_813C4F5C:
/* 813C4F5C | 80 63 00 C0 */	lwz r3, 0xc0(r3)
/* 813C4F60 | 7C 03 00 D0 */	neg r0, r3
/* 813C4F64 | 7C 00 18 78 */	andc r0, r0, r3
/* 813C4F68 | 54 03 0F FE */	srwi r3, r0, 31
/* 813C4F6C | 4E 80 00 20 */	blr
.endfn enable_scroll_l__Q33ipl5scene6MemoryFv

# .text:0x13A4 | 0x813C4F70 | size: 0xCC
# ipl::scene::Memory::draw()
.fn draw__Q33ipl5scene6MemoryFv, global
/* 813C4F70 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813C4F74 | 7C 08 02 A6 */	mflr r0
/* 813C4F78 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813C4F7C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C4F80 | 48 23 45 49 */	bl _savegpr_29
/* 813C4F84 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813C4F88 | 7C 7D 1B 78 */	mr r29, r3
/* 813C4F8C | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813C4F90 | 80 64 00 64 */	lwz r3, 0x64(r4)
/* 813C4F94 | 80 03 01 00 */	lwz r0, 0x100(r3)
/* 813C4F98 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813C4F9C | 40 82 00 88 */	bne .L_813C5024
/* 813C4FA0 | 38 60 00 00 */	li r3, 0x0
/* 813C4FA4 | 4B F9 DA C9 */	bl setOrtho__Q33ipl7utility8GraphicsFUl
/* 813C4FA8 | 80 7D 00 60 */	lwz r3, 0x60(r29)
/* 813C4FAC | 48 00 26 9D */	bl draw__Q33ipl5scene12SavedataBaseFv
/* 813C4FB0 | 3B E0 00 00 */	li r31, 0x0
/* 813C4FB4 | 48 00 00 0C */	b .L_813C4FC0
.L_813C4FB8:
/* 813C4FB8 | 7F E3 FB 78 */	mr r3, r31
/* 813C4FBC | 48 00 31 59 */	bl draw__Q33ipl5scene11SavedataBoxFv
.L_813C4FC0:
/* 813C4FC0 | 7F E4 FB 78 */	mr r4, r31
/* 813C4FC4 | 38 7D 00 6C */	addi r3, r29, 0x6c
/* 813C4FC8 | 48 14 D3 15 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813C4FCC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C4FD0 | 7C 7F 1B 78 */	mr r31, r3
/* 813C4FD4 | 40 82 FF E4 */	bne .L_813C4FB8
/* 813C4FD8 | 3B C0 00 00 */	li r30, 0x0
/* 813C4FDC | 3B E0 00 00 */	li r31, 0x0
.L_813C4FE0:
/* 813C4FE0 | 7C 7D FA 14 */	add r3, r29, r31
/* 813C4FE4 | 80 63 00 7C */	lwz r3, 0x7c(r3)
/* 813C4FE8 | 48 00 C6 11 */	bl draw__Q33ipl5scene11TextBalloonFv
/* 813C4FEC | 3B DE 00 01 */	addi r30, r30, 0x1
/* 813C4FF0 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813C4FF4 | 2C 1E 00 0F */	cmpwi r30, 0xf
/* 813C4FF8 | 41 80 FF E8 */	blt .L_813C4FE0
/* 813C4FFC | 80 7D 00 60 */	lwz r3, 0x60(r29)
/* 813C5000 | 38 8D 8B 9C */	li r4, lbl_81696BDC@sda21
/* 813C5004 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813C5008 | 4B FA 58 01 */	bl draw__Q33ipl6layout6ObjectFPCc
/* 813C500C | 80 7D 00 60 */	lwz r3, 0x60(r29)
/* 813C5010 | 38 8D 8B A3 */	li r4, lbl_81696BE3@sda21
/* 813C5014 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813C5018 | 4B FA 57 F1 */	bl draw__Q33ipl6layout6ObjectFPCc
/* 813C501C | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 813C5020 | 48 00 3B 71 */	bl draw__Q33ipl5scene12SavedataEditFv
.L_813C5024:
/* 813C5024 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C5028 | 48 23 44 ED */	bl _restgpr_29
/* 813C502C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813C5030 | 7C 08 03 A6 */	mtlr r0
/* 813C5034 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813C5038 | 4E 80 00 20 */	blr
.endfn draw__Q33ipl5scene6MemoryFv

# .text:0x1470 | 0x813C503C | size: 0x10
# ipl::scene::Memory::isResetAcceptable() const
.fn isResetAcceptable__Q33ipl5scene6MemoryCFv, global
/* 813C503C | 80 03 00 CC */	lwz r0, 0xcc(r3)
/* 813C5040 | 7C 00 00 34 */	cntlzw r0, r0
/* 813C5044 | 54 03 D9 7E */	srwi r3, r0, 5
/* 813C5048 | 4E 80 00 20 */	blr
.endfn isResetAcceptable__Q33ipl5scene6MemoryCFv

# .text:0x1480 | 0x813C504C | size: 0xC0
# ipl::scene::Memory::onPoint(ipl::scene::AnmPane*)
.fn onPoint__Q33ipl5scene6MemoryFPQ33ipl5scene7AnmPane, global
/* 813C504C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813C5050 | 7C 08 02 A6 */	mflr r0
/* 813C5054 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813C5058 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C505C | 48 23 44 69 */	bl _savegpr_28
/* 813C5060 | 3F E0 81 65 */	lis r31, lbl_81650C90@ha
/* 813C5064 | 83 C4 00 08 */	lwz r30, 0x8(r4)
/* 813C5068 | 3B FF 0C 90 */	addi r31, r31, lbl_81650C90@l
/* 813C506C | 7C 7C 1B 78 */	mr r28, r3
/* 813C5070 | 7C 9D 23 78 */	mr r29, r4
/* 813C5074 | 7F C3 F3 78 */	mr r3, r30
/* 813C5078 | 38 9F 04 D3 */	addi r4, r31, 0x4d3
/* 813C507C | 48 23 D4 05 */	bl strcmp
/* 813C5080 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C5084 | 40 82 00 10 */	bne .L_813C5094
/* 813C5088 | 80 1C 00 B8 */	lwz r0, 0xb8(r28)
/* 813C508C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C5090 | 41 82 00 64 */	beq .L_813C50F4
.L_813C5094:
/* 813C5094 | 7F C3 F3 78 */	mr r3, r30
/* 813C5098 | 38 9F 04 E2 */	addi r4, r31, 0x4e2
/* 813C509C | 48 23 D3 E5 */	bl strcmp
/* 813C50A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C50A4 | 40 82 00 14 */	bne .L_813C50B8
/* 813C50A8 | 80 1C 00 B8 */	lwz r0, 0xb8(r28)
/* 813C50AC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813C50B0 | 40 82 00 08 */	bne .L_813C50B8
/* 813C50B4 | 48 00 00 40 */	b .L_813C50F4
.L_813C50B8:
/* 813C50B8 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813C50BC | 38 9F 04 F0 */	addi r4, r31, 0x4f0
/* 813C50C0 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813C50C4 | 4B FA 63 A9 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813C50C8 | 4B F7 08 F1 */	bl getYoungController__Q23ipl6SystemFv
/* 813C50CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C50D0 | 41 82 00 18 */	beq .L_813C50E8
/* 813C50D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C50D8 | 38 80 00 00 */	li r4, 0x0
/* 813C50DC | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813C50E0 | 7D 89 03 A6 */	mtctr r12
/* 813C50E4 | 4E 80 04 21 */	bctrl
.L_813C50E8:
/* 813C50E8 | 7F A3 EB 78 */	mr r3, r29
/* 813C50EC | 38 80 00 01 */	li r4, 0x1
/* 813C50F0 | 4B FE 1E 75 */	bl on_cmd_recv__Q33ipl5scene7AnmPaneFQ43ipl5scene7AnmPane11AnimCommand
.L_813C50F4:
/* 813C50F4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C50F8 | 48 23 44 19 */	bl _restgpr_28
/* 813C50FC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813C5100 | 7C 08 03 A6 */	mtlr r0
/* 813C5104 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813C5108 | 4E 80 00 20 */	blr
.endfn onPoint__Q33ipl5scene6MemoryFPQ33ipl5scene7AnmPane

# .text:0x1540 | 0x813C510C | size: 0x90
# ipl::scene::Memory::onLeft(ipl::scene::AnmPane*)
.fn onLeft__Q33ipl5scene6MemoryFPQ33ipl5scene7AnmPane, global
/* 813C510C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813C5110 | 7C 08 02 A6 */	mflr r0
/* 813C5114 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813C5118 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C511C | 48 23 43 AD */	bl _savegpr_29
/* 813C5120 | 83 E4 00 08 */	lwz r31, 0x8(r4)
/* 813C5124 | 7C 7D 1B 78 */	mr r29, r3
/* 813C5128 | 3C A0 81 65 */	lis r5, lbl_81651163@ha
/* 813C512C | 7C 9E 23 78 */	mr r30, r4
/* 813C5130 | 7F E3 FB 78 */	mr r3, r31
/* 813C5134 | 38 85 11 63 */	addi r4, r5, lbl_81651163@l
/* 813C5138 | 48 23 D3 49 */	bl strcmp
/* 813C513C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C5140 | 40 82 00 10 */	bne .L_813C5150
/* 813C5144 | 80 1D 00 B8 */	lwz r0, 0xb8(r29)
/* 813C5148 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C514C | 41 82 00 38 */	beq .L_813C5184
.L_813C5150:
/* 813C5150 | 3C 80 81 65 */	lis r4, lbl_81651172@ha
/* 813C5154 | 7F E3 FB 78 */	mr r3, r31
/* 813C5158 | 38 84 11 72 */	addi r4, r4, lbl_81651172@l
/* 813C515C | 48 23 D3 25 */	bl strcmp
/* 813C5160 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C5164 | 40 82 00 14 */	bne .L_813C5178
/* 813C5168 | 80 1D 00 B8 */	lwz r0, 0xb8(r29)
/* 813C516C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813C5170 | 40 82 00 08 */	bne .L_813C5178
/* 813C5174 | 48 00 00 10 */	b .L_813C5184
.L_813C5178:
/* 813C5178 | 7F C3 F3 78 */	mr r3, r30
/* 813C517C | 38 80 00 02 */	li r4, 0x2
/* 813C5180 | 4B FE 1D E5 */	bl on_cmd_recv__Q33ipl5scene7AnmPaneFQ43ipl5scene7AnmPane11AnimCommand
.L_813C5184:
/* 813C5184 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C5188 | 48 23 43 8D */	bl _restgpr_29
/* 813C518C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813C5190 | 7C 08 03 A6 */	mtlr r0
/* 813C5194 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813C5198 | 4E 80 00 20 */	blr
.endfn onLeft__Q33ipl5scene6MemoryFPQ33ipl5scene7AnmPane

# .text:0x15D0 | 0x813C519C | size: 0x294
# ipl::scene::Memory::onTrig(ipl::scene::AnmPane*)
.fn onTrig__Q33ipl5scene6MemoryFPQ33ipl5scene7AnmPane, global
/* 813C519C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813C51A0 | 7C 08 02 A6 */	mflr r0
/* 813C51A4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813C51A8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C51AC | 48 23 43 19 */	bl _savegpr_28
/* 813C51B0 | 80 03 00 54 */	lwz r0, 0x54(r3)
/* 813C51B4 | 3F A0 81 65 */	lis r29, lbl_81650C90@ha
/* 813C51B8 | 7C 7F 1B 78 */	mr r31, r3
/* 813C51BC | 7C 9C 23 78 */	mr r28, r4
/* 813C51C0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C51C4 | 3B BD 0C 90 */	addi r29, r29, lbl_81650C90@l
/* 813C51C8 | 41 82 00 0C */	beq .L_813C51D4
/* 813C51CC | 2C 00 00 16 */	cmpwi r0, 0x16
/* 813C51D0 | 40 82 02 48 */	bne .L_813C5418
.L_813C51D4:
/* 813C51D4 | 83 C4 00 08 */	lwz r30, 0x8(r4)
/* 813C51D8 | 38 9D 04 D3 */	addi r4, r29, 0x4d3
/* 813C51DC | 7F C3 F3 78 */	mr r3, r30
/* 813C51E0 | 48 23 D2 A1 */	bl strcmp
/* 813C51E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C51E8 | 40 82 00 D4 */	bne .L_813C52BC
/* 813C51EC | 80 1F 00 B8 */	lwz r0, 0xb8(r31)
/* 813C51F0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813C51F4 | 40 82 00 C8 */	bne .L_813C52BC
/* 813C51F8 | 38 80 00 00 */	li r4, 0x0
/* 813C51FC | 3B C0 00 00 */	li r30, 0x0
/* 813C5200 | 48 00 00 08 */	b .L_813C5208
.L_813C5204:
/* 813C5204 | 93 C3 00 40 */	stw r30, 0x40(r3)
.L_813C5208:
/* 813C5208 | 38 7F 00 6C */	addi r3, r31, 0x6c
/* 813C520C | 48 14 D0 D1 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813C5210 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C5214 | 7C 64 1B 78 */	mr r4, r3
/* 813C5218 | 40 82 FF EC */	bne .L_813C5204
/* 813C521C | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813C5220 | 38 9D 05 06 */	addi r4, r29, 0x506
/* 813C5224 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813C5228 | 4B FA 62 45 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813C522C | 3B C0 00 00 */	li r30, 0x0
/* 813C5230 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813C5234 | 93 DF 00 C0 */	stw r30, 0xc0(r31)
/* 813C5238 | 4B FE 4A B9 */	bl cmdCleanQueue__Q33ipl5scene17NandSDCardManagerFv
/* 813C523C | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813C5240 | 4B FE 4A FD */	bl cmdListNand__Q33ipl5scene17NandSDCardManagerFv
/* 813C5244 | 93 DF 00 B8 */	stw r30, 0xb8(r31)
/* 813C5248 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813C524C | 88 9F 00 C8 */	lbz r4, 0xc8(r31)
/* 813C5250 | 88 BF 00 C9 */	lbz r5, 0xc9(r31)
/* 813C5254 | 48 00 27 55 */	bl anmArwDisappear__Q33ipl5scene12SavedataBaseFbb
/* 813C5258 | 9B DF 00 C8 */	stb r30, 0xc8(r31)
/* 813C525C | 38 9D 04 90 */	addi r4, r29, 0x490
/* 813C5260 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813C5264 | 38 A0 00 00 */	li r5, 0x0
/* 813C5268 | 9B DF 00 C9 */	stb r30, 0xc9(r31)
/* 813C526C | 4B FE 22 69 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C5270 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813C5274 | 38 9D 04 9A */	addi r4, r29, 0x49a
/* 813C5278 | 38 A0 00 00 */	li r5, 0x0
/* 813C527C | 4B FE 22 59 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C5280 | 80 1F 00 54 */	lwz r0, 0x54(r31)
/* 813C5284 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C5288 | 40 82 00 20 */	bne .L_813C52A8
/* 813C528C | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813C5290 | 48 00 24 71 */	bl anmChangeWiitoSD__Q33ipl5scene12SavedataBaseFv
/* 813C5294 | 7F E3 FB 78 */	mr r3, r31
/* 813C5298 | 4B FF F2 05 */	bl fadeout_savedata_box__Q33ipl5scene6MemoryFv
/* 813C529C | 38 00 00 07 */	li r0, 0x7
/* 813C52A0 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C52A4 | 48 00 01 74 */	b .L_813C5418
.L_813C52A8:
/* 813C52A8 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813C52AC | 48 00 25 F9 */	bl anmTextFadeout__Q33ipl5scene12SavedataBaseFv
/* 813C52B0 | 38 00 00 18 */	li r0, 0x18
/* 813C52B4 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C52B8 | 48 00 01 60 */	b .L_813C5418
.L_813C52BC:
/* 813C52BC | 7F C3 F3 78 */	mr r3, r30
/* 813C52C0 | 38 9D 04 E2 */	addi r4, r29, 0x4e2
/* 813C52C4 | 48 23 D1 BD */	bl strcmp
/* 813C52C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C52CC | 40 82 00 E0 */	bne .L_813C53AC
/* 813C52D0 | 80 1F 00 B8 */	lwz r0, 0xb8(r31)
/* 813C52D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C52D8 | 40 82 00 D4 */	bne .L_813C53AC
/* 813C52DC | 38 80 00 00 */	li r4, 0x0
/* 813C52E0 | 3B C0 00 00 */	li r30, 0x0
/* 813C52E4 | 48 00 00 08 */	b .L_813C52EC
.L_813C52E8:
/* 813C52E8 | 93 C3 00 40 */	stw r30, 0x40(r3)
.L_813C52EC:
/* 813C52EC | 38 7F 00 6C */	addi r3, r31, 0x6c
/* 813C52F0 | 48 14 CF ED */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813C52F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C52F8 | 7C 64 1B 78 */	mr r4, r3
/* 813C52FC | 40 82 FF EC */	bne .L_813C52E8
/* 813C5300 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813C5304 | 38 9D 05 06 */	addi r4, r29, 0x506
/* 813C5308 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813C530C | 4B FA 61 61 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813C5310 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813C5314 | 4B FE 46 25 */	bl cmdSDMount__Q33ipl5scene17NandSDCardManagerFv
/* 813C5318 | 3B C0 00 00 */	li r30, 0x0
/* 813C531C | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813C5320 | 93 DF 00 C0 */	stw r30, 0xc0(r31)
/* 813C5324 | 4B FE 49 CD */	bl cmdCleanQueue__Q33ipl5scene17NandSDCardManagerFv
/* 813C5328 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813C532C | 4B FE 4A 5D */	bl cmdListSD__Q33ipl5scene17NandSDCardManagerFv
/* 813C5330 | 38 00 00 01 */	li r0, 0x1
/* 813C5334 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813C5338 | 90 1F 00 B8 */	stw r0, 0xb8(r31)
/* 813C533C | 88 9F 00 C8 */	lbz r4, 0xc8(r31)
/* 813C5340 | 88 BF 00 C9 */	lbz r5, 0xc9(r31)
/* 813C5344 | 48 00 26 65 */	bl anmArwDisappear__Q33ipl5scene12SavedataBaseFbb
/* 813C5348 | 9B DF 00 C8 */	stb r30, 0xc8(r31)
/* 813C534C | 38 9D 04 90 */	addi r4, r29, 0x490
/* 813C5350 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813C5354 | 38 A0 00 00 */	li r5, 0x0
/* 813C5358 | 9B DF 00 C9 */	stb r30, 0xc9(r31)
/* 813C535C | 4B FE 21 79 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C5360 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813C5364 | 38 9D 04 9A */	addi r4, r29, 0x49a
/* 813C5368 | 38 A0 00 00 */	li r5, 0x0
/* 813C536C | 4B FE 21 69 */	bl set_visible__Q33ipl5scene13AnmControllerFPCcb
/* 813C5370 | 80 1F 00 54 */	lwz r0, 0x54(r31)
/* 813C5374 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C5378 | 40 82 00 20 */	bne .L_813C5398
/* 813C537C | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813C5380 | 48 00 23 C1 */	bl anmChangeSDtoWii__Q33ipl5scene12SavedataBaseFv
/* 813C5384 | 7F E3 FB 78 */	mr r3, r31
/* 813C5388 | 4B FF F1 15 */	bl fadeout_savedata_box__Q33ipl5scene6MemoryFv
/* 813C538C | 38 00 00 07 */	li r0, 0x7
/* 813C5390 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C5394 | 48 00 00 84 */	b .L_813C5418
.L_813C5398:
/* 813C5398 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813C539C | 48 00 25 09 */	bl anmTextFadeout__Q33ipl5scene12SavedataBaseFv
/* 813C53A0 | 38 00 00 18 */	li r0, 0x18
/* 813C53A4 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C53A8 | 48 00 00 70 */	b .L_813C5418
.L_813C53AC:
/* 813C53AC | 7F C3 F3 78 */	mr r3, r30
/* 813C53B0 | 38 8D 8B AA */	li r4, lbl_81696BEA@sda21
/* 813C53B4 | 48 23 D0 CD */	bl strcmp
/* 813C53B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C53BC | 40 82 00 28 */	bne .L_813C53E4
/* 813C53C0 | 7F E3 FB 78 */	mr r3, r31
/* 813C53C4 | 4B FF FA D1 */	bl enable_scroll_r__Q33ipl5scene6MemoryFv
/* 813C53C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C53CC | 41 82 00 18 */	beq .L_813C53E4
/* 813C53D0 | 7F E3 FB 78 */	mr r3, r31
/* 813C53D4 | 38 80 00 01 */	li r4, 0x1
/* 813C53D8 | 38 A0 00 01 */	li r5, 0x1
/* 813C53DC | 4B FF F9 89 */	bl start_scroll_r__Q33ipl5scene6MemoryFbb
/* 813C53E0 | 48 00 00 38 */	b .L_813C5418
.L_813C53E4:
/* 813C53E4 | 80 7C 00 08 */	lwz r3, 0x8(r28)
/* 813C53E8 | 38 8D 8B B1 */	li r4, lbl_81696BF1@sda21
/* 813C53EC | 48 23 D0 95 */	bl strcmp
/* 813C53F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C53F4 | 40 82 00 24 */	bne .L_813C5418
/* 813C53F8 | 7F E3 FB 78 */	mr r3, r31
/* 813C53FC | 4B FF FB 4D */	bl enable_scroll_l__Q33ipl5scene6MemoryFv
/* 813C5400 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C5404 | 41 82 00 14 */	beq .L_813C5418
/* 813C5408 | 7F E3 FB 78 */	mr r3, r31
/* 813C540C | 38 80 00 01 */	li r4, 0x1
/* 813C5410 | 38 A0 00 01 */	li r5, 0x1
/* 813C5414 | 4B FF F9 E9 */	bl start_scroll_l__Q33ipl5scene6MemoryFbb
.L_813C5418:
/* 813C5418 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C541C | 48 23 40 F5 */	bl _restgpr_28
/* 813C5420 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813C5424 | 7C 08 03 A6 */	mtlr r0
/* 813C5428 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813C542C | 4E 80 00 20 */	blr
.endfn onTrig__Q33ipl5scene6MemoryFPQ33ipl5scene7AnmPane

# .text:0x1864 | 0x813C5430 | size: 0x7C
# ipl::scene::Memory::onTrig(ipl::scene::SavedataBox*)
.fn onTrig__Q33ipl5scene6MemoryFPQ33ipl5scene11SavedataBox, global
/* 813C5430 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C5434 | 7C 08 02 A6 */	mflr r0
/* 813C5438 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C543C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C5440 | 7C 9F 23 78 */	mr r31, r4
/* 813C5444 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813C5448 | 7C 7E 1B 78 */	mr r30, r3
/* 813C544C | 80 03 00 54 */	lwz r0, 0x54(r3)
/* 813C5450 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C5454 | 40 82 00 40 */	bne .L_813C5494
/* 813C5458 | 90 83 00 BC */	stw r4, 0xbc(r3)
/* 813C545C | 80 64 00 44 */	lwz r3, 0x44(r4)
/* 813C5460 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C5464 | 41 82 00 08 */	beq .L_813C546C
/* 813C5468 | 48 00 C2 01 */	bl terminate__Q33ipl5scene11TextBalloonFv
.L_813C546C:
/* 813C546C | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 813C5470 | 7F E4 FB 78 */	mr r4, r31
/* 813C5474 | 48 00 37 2D */	bl anmFadein__Q33ipl5scene12SavedataEditFPQ33ipl5scene11SavedataBox
/* 813C5478 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813C547C | 3C 80 81 65 */	lis r4, lbl_816511A6@ha
/* 813C5480 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813C5484 | 38 84 11 A6 */	addi r4, r4, lbl_816511A6@l
/* 813C5488 | 4B FA 5F E5 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813C548C | 38 00 00 0C */	li r0, 0xc
/* 813C5490 | 90 1E 00 54 */	stw r0, 0x54(r30)
.L_813C5494:
/* 813C5494 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C5498 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C549C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813C54A0 | 7C 08 03 A6 */	mtlr r0
/* 813C54A4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C54A8 | 4E 80 00 20 */	blr
.endfn onTrig__Q33ipl5scene6MemoryFPQ33ipl5scene11SavedataBox

# .text:0x18E0 | 0x813C54AC | size: 0x70
# ipl::scene::Memory::onTrigButton(bool)
.fn onTrigButton__Q33ipl5scene6MemoryFb, global
/* 813C54AC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C54B0 | 7C 08 02 A6 */	mflr r0
/* 813C54B4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C54B8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C54BC | 7C 9F 23 78 */	mr r31, r4
/* 813C54C0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813C54C4 | 7C 7E 1B 78 */	mr r30, r3
/* 813C54C8 | 80 63 00 60 */	lwz r3, 0x60(r3)
/* 813C54CC | 88 9E 00 C8 */	lbz r4, 0xc8(r30)
/* 813C54D0 | 88 BE 00 C9 */	lbz r5, 0xc9(r30)
/* 813C54D4 | 48 00 24 D5 */	bl anmArwDisappear__Q33ipl5scene12SavedataBaseFbb
/* 813C54D8 | 80 7E 00 60 */	lwz r3, 0x60(r30)
/* 813C54DC | 7F E4 FB 78 */	mr r4, r31
/* 813C54E0 | 48 00 21 B9 */	bl anmFadeout__Q33ipl5scene12SavedataBaseFb
/* 813C54E4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813C54E8 | 40 82 00 0C */	bne .L_813C54F4
/* 813C54EC | 7F C3 F3 78 */	mr r3, r30
/* 813C54F0 | 4B FF EF AD */	bl fadeout_savedata_box__Q33ipl5scene6MemoryFv
.L_813C54F4:
/* 813C54F4 | 80 7E 00 78 */	lwz r3, 0x78(r30)
/* 813C54F8 | 4B FE 43 F5 */	bl cmdTerminate__Q33ipl5scene17NandSDCardManagerFv
/* 813C54FC | 38 00 00 03 */	li r0, 0x3
/* 813C5500 | 90 1E 00 54 */	stw r0, 0x54(r30)
/* 813C5504 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C5508 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813C550C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C5510 | 7C 08 03 A6 */	mtlr r0
/* 813C5514 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C5518 | 4E 80 00 20 */	blr
.endfn onTrigButton__Q33ipl5scene6MemoryFb

# .text:0x1950 | 0x813C551C | size: 0x64
# ipl::scene::Memory::onTrigCopy()
.fn onTrigCopy__Q33ipl5scene6MemoryFv, global
/* 813C551C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C5520 | 7C 08 02 A6 */	mflr r0
/* 813C5524 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C5528 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C552C | 7C 7F 1B 78 */	mr r31, r3
/* 813C5530 | 80 03 00 B8 */	lwz r0, 0xb8(r3)
/* 813C5534 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C5538 | 40 82 00 10 */	bne .L_813C5548
/* 813C553C | 80 63 00 78 */	lwz r3, 0x78(r3)
/* 813C5540 | 4B FE 43 F9 */	bl cmdSDMount__Q33ipl5scene17NandSDCardManagerFv
/* 813C5544 | 48 00 00 18 */	b .L_813C555C
.L_813C5548:
/* 813C5548 | 80 9F 00 BC */	lwz r4, 0xbc(r31)
/* 813C554C | 80 63 00 78 */	lwz r3, 0x78(r3)
/* 813C5550 | 80 84 00 40 */	lwz r4, 0x40(r4)
/* 813C5554 | 80 84 01 00 */	lwz r4, 0x100(r4)
/* 813C5558 | 4B FE 48 C9 */	bl cmdExistNandSave__Q33ipl5scene17NandSDCardManagerFUl
.L_813C555C:
/* 813C555C | 38 60 00 01 */	li r3, 0x1
/* 813C5560 | 38 00 00 09 */	li r0, 0x9
/* 813C5564 | 90 7F 00 D0 */	stw r3, 0xd0(r31)
/* 813C5568 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C556C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C5570 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C5574 | 7C 08 03 A6 */	mtlr r0
/* 813C5578 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C557C | 4E 80 00 20 */	blr
.endfn onTrigCopy__Q33ipl5scene6MemoryFv

# .text:0x19B4 | 0x813C5580 | size: 0xC8
# ipl::scene::Memory::onTrigDel()
.fn onTrigDel__Q33ipl5scene6MemoryFv, global
/* 813C5580 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C5584 | 7C 08 02 A6 */	mflr r0
/* 813C5588 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C558C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C5590 | 7C 7F 1B 78 */	mr r31, r3
/* 813C5594 | 80 03 00 B8 */	lwz r0, 0xb8(r3)
/* 813C5598 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813C559C | 40 82 00 84 */	bne .L_813C5620
/* 813C55A0 | 80 63 00 78 */	lwz r3, 0x78(r3)
/* 813C55A4 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813C55A8 | 4B F8 32 DD */	bl get_sd_state__Q23ipl12NandSDWorkerFv
/* 813C55AC | 2C 03 00 06 */	cmpwi r3, 0x6
/* 813C55B0 | 90 7F 00 C4 */	stw r3, 0xc4(r31)
/* 813C55B4 | 41 82 00 08 */	beq .L_813C55BC
/* 813C55B8 | 48 00 00 50 */	b .L_813C5608
.L_813C55BC:
/* 813C55BC | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813C55C0 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813C55C4 | 4B F8 36 DD */	bl is_sd_write_protected__Q23ipl12NandSDWorkerFv
/* 813C55C8 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813C55CC | 7C 00 00 34 */	cntlzw r0, r0
/* 813C55D0 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 813C55D4 | 41 82 00 1C */	beq .L_813C55F0
/* 813C55D8 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C55DC | 38 80 00 3E */	li r4, 0x3e
/* 813C55E0 | 48 00 3B 31 */	bl anmSelectFadeout__Q33ipl5scene12SavedataEditFUl
/* 813C55E4 | 38 00 00 0F */	li r0, 0xf
/* 813C55E8 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C55EC | 48 00 00 48 */	b .L_813C5634
.L_813C55F0:
/* 813C55F0 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C55F4 | 38 80 00 F7 */	li r4, 0xf7
/* 813C55F8 | 48 00 3A 45 */	bl anmShowS2Btn2Dialog__Q33ipl5scene12SavedataEditFUl
/* 813C55FC | 38 00 00 12 */	li r0, 0x12
/* 813C5600 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C5604 | 48 00 00 30 */	b .L_813C5634
.L_813C5608:
/* 813C5608 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C560C | 38 80 00 97 */	li r4, 0x97
/* 813C5610 | 48 00 3B 01 */	bl anmSelectFadeout__Q33ipl5scene12SavedataEditFUl
/* 813C5614 | 38 00 00 0F */	li r0, 0xf
/* 813C5618 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C561C | 48 00 00 18 */	b .L_813C5634
.L_813C5620:
/* 813C5620 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 813C5624 | 38 80 00 F7 */	li r4, 0xf7
/* 813C5628 | 48 00 3A 15 */	bl anmShowS2Btn2Dialog__Q33ipl5scene12SavedataEditFUl
/* 813C562C | 38 00 00 12 */	li r0, 0x12
/* 813C5630 | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813C5634:
/* 813C5634 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C5638 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C563C | 7C 08 03 A6 */	mtlr r0
/* 813C5640 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C5644 | 4E 80 00 20 */	blr
.endfn onTrigDel__Q33ipl5scene6MemoryFv

# .text:0x1A7C | 0x813C5648 | size: 0x64
# ipl::scene::Memory::iplMemory_813C5648()
.fn iplMemory_813C5648__Q33ipl5scene6MemoryFv, global
/* 813C5648 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C564C | 7C 08 02 A6 */	mflr r0
/* 813C5650 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C5654 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C5658 | 7C 7F 1B 78 */	mr r31, r3
/* 813C565C | 80 03 00 B8 */	lwz r0, 0xb8(r3)
/* 813C5660 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C5664 | 40 82 00 10 */	bne .L_813C5674
/* 813C5668 | 80 63 00 78 */	lwz r3, 0x78(r3)
/* 813C566C | 4B FE 42 CD */	bl cmdSDMount__Q33ipl5scene17NandSDCardManagerFv
/* 813C5670 | 48 00 00 18 */	b .L_813C5688
.L_813C5674:
/* 813C5674 | 80 9F 00 BC */	lwz r4, 0xbc(r31)
/* 813C5678 | 80 63 00 78 */	lwz r3, 0x78(r3)
/* 813C567C | 80 84 00 40 */	lwz r4, 0x40(r4)
/* 813C5680 | 80 84 01 00 */	lwz r4, 0x100(r4)
/* 813C5684 | 4B FE 47 9D */	bl cmdExistNandSave__Q33ipl5scene17NandSDCardManagerFUl
.L_813C5688:
/* 813C5688 | 38 60 00 02 */	li r3, 0x2
/* 813C568C | 38 00 00 1D */	li r0, 0x1d
/* 813C5690 | 90 7F 00 D0 */	stw r3, 0xd0(r31)
/* 813C5694 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C5698 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C569C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C56A0 | 7C 08 03 A6 */	mtlr r0
/* 813C56A4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C56A8 | 4E 80 00 20 */	blr
.endfn iplMemory_813C5648__Q33ipl5scene6MemoryFv

# .text:0x1AE0 | 0x813C56AC | size: 0x10
# ipl::scene::Memory::getCorruptIconTexture(_GXTexObj*) const
.fn getCorruptIconTexture__Q33ipl5scene6MemoryCFP9_GXTexObj, global
/* 813C56AC | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813C56B0 | 38 A0 00 01 */	li r5, 0x1
/* 813C56B4 | 80 63 00 A0 */	lwz r3, 0xa0(r3)
/* 813C56B8 | 48 1F 6C 24 */	b fn_815BC2DC
.endfn getCorruptIconTexture__Q33ipl5scene6MemoryCFP9_GXTexObj

# .text:0x1AF0 | 0x813C56BC | size: 0x10
# ipl::scene::Memory::getCorruptBannerTexture(_GXTexObj*) const
.fn getCorruptBannerTexture__Q33ipl5scene6MemoryCFP9_GXTexObj, global
/* 813C56BC | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813C56C0 | 38 A0 00 00 */	li r5, 0x0
/* 813C56C4 | 80 63 00 A0 */	lwz r3, 0xa0(r3)
/* 813C56C8 | 48 1F 6C 14 */	b fn_815BC2DC
.endfn getCorruptBannerTexture__Q33ipl5scene6MemoryCFP9_GXTexObj

# .text:0x1B00 | 0x813C56CC | size: 0x1C4
# ipl::scene::Memory::on_normal()
.fn on_normal__Q33ipl5scene6MemoryFv, global
/* 813C56CC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C56D0 | 7C 08 02 A6 */	mflr r0
/* 813C56D4 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813C56D8 | 38 80 00 16 */	li r4, 0x16
/* 813C56DC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C56E0 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813C56E4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C56E8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813C56EC | 7C 7E 1B 78 */	mr r30, r3
/* 813C56F0 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 813C56F4 | 48 04 5A 45 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C56F8 | 48 04 20 71 */	bl update__Q33ipl5scene13SettingButtonFv
/* 813C56FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C5700 | 41 82 00 14 */	beq .L_813C5714
/* 813C5704 | 7F C3 F3 78 */	mr r3, r30
/* 813C5708 | 38 80 00 00 */	li r4, 0x0
/* 813C570C | 4B FF FD A1 */	bl onTrigButton__Q33ipl5scene6MemoryFb
/* 813C5710 | 48 00 01 68 */	b .L_813C5878
.L_813C5714:
/* 813C5714 | 7F C3 F3 78 */	mr r3, r30
/* 813C5718 | 4B FF EE 51 */	bl update_sdcard_slot__Q33ipl5scene6MemoryFv
/* 813C571C | 7F C3 F3 78 */	mr r3, r30
/* 813C5720 | 4B FF EF 79 */	bl update_arw__Q33ipl5scene6MemoryFv
/* 813C5724 | 7F C3 F3 78 */	mr r3, r30
/* 813C5728 | 4B FF F0 6D */	bl update_free__Q33ipl5scene6MemoryFv
/* 813C572C | 80 7E 00 60 */	lwz r3, 0x60(r30)
/* 813C5730 | 48 00 1F 21 */	bl update__Q33ipl5scene12SavedataBaseFv
/* 813C5734 | 3B E0 00 00 */	li r31, 0x0
/* 813C5738 | 48 00 00 0C */	b .L_813C5744
.L_813C573C:
/* 813C573C | 7F E3 FB 78 */	mr r3, r31
/* 813C5740 | 48 00 29 DD */	bl update__Q33ipl5scene11SavedataBoxFv
.L_813C5744:
/* 813C5744 | 7F E4 FB 78 */	mr r4, r31
/* 813C5748 | 38 7E 00 6C */	addi r3, r30, 0x6c
/* 813C574C | 48 14 CB 91 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813C5750 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C5754 | 7C 7F 1B 78 */	mr r31, r3
/* 813C5758 | 40 82 FF E4 */	bne .L_813C573C
/* 813C575C | 80 1E 00 B8 */	lwz r0, 0xb8(r30)
/* 813C5760 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C5764 | 40 82 00 40 */	bne .L_813C57A4
/* 813C5768 | 80 7E 00 78 */	lwz r3, 0x78(r30)
/* 813C576C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813C5770 | 4B F8 31 1D */	bl get_nand_save_num__Q23ipl12NandSDWorkerFv
/* 813C5774 | 80 1E 00 C0 */	lwz r0, 0xc0(r30)
/* 813C5778 | 7C 00 18 40 */	cmplw r0, r3
/* 813C577C | 40 82 00 64 */	bne .L_813C57E0
/* 813C5780 | 7F C3 F3 78 */	mr r3, r30
/* 813C5784 | 4B FF F7 C5 */	bl enable_scroll_l__Q33ipl5scene6MemoryFv
/* 813C5788 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C578C | 41 82 00 54 */	beq .L_813C57E0
/* 813C5790 | 7F C3 F3 78 */	mr r3, r30
/* 813C5794 | 38 80 00 00 */	li r4, 0x0
/* 813C5798 | 38 A0 00 00 */	li r5, 0x0
/* 813C579C | 4B FF F6 61 */	bl start_scroll_l__Q33ipl5scene6MemoryFbb
/* 813C57A0 | 48 00 00 D8 */	b .L_813C5878
.L_813C57A4:
/* 813C57A4 | 80 7E 00 78 */	lwz r3, 0x78(r30)
/* 813C57A8 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813C57AC | 4B F8 32 FD */	bl get_sd_save_num__Q23ipl12NandSDWorkerFv
/* 813C57B0 | 80 1E 00 C0 */	lwz r0, 0xc0(r30)
/* 813C57B4 | 7C 00 18 00 */	cmpw r0, r3
/* 813C57B8 | 40 82 00 28 */	bne .L_813C57E0
/* 813C57BC | 7F C3 F3 78 */	mr r3, r30
/* 813C57C0 | 4B FF F7 89 */	bl enable_scroll_l__Q33ipl5scene6MemoryFv
/* 813C57C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C57C8 | 41 82 00 18 */	beq .L_813C57E0
/* 813C57CC | 7F C3 F3 78 */	mr r3, r30
/* 813C57D0 | 38 80 00 00 */	li r4, 0x0
/* 813C57D4 | 38 A0 00 00 */	li r5, 0x0
/* 813C57D8 | 4B FF F6 25 */	bl start_scroll_l__Q33ipl5scene6MemoryFbb
/* 813C57DC | 48 00 00 9C */	b .L_813C5878
.L_813C57E0:
/* 813C57E0 | 4B F7 01 D9 */	bl getYoungController__Q23ipl6SystemFv
/* 813C57E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C57E8 | 7C 7F 1B 78 */	mr r31, r3
/* 813C57EC | 41 82 00 8C */	beq .L_813C5878
/* 813C57F0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813C57F4 | 3C 80 30 00 */	lis r4, 0x3000
/* 813C57F8 | 38 84 10 00 */	addi r4, r4, 0x1000
/* 813C57FC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813C5800 | 7D 89 03 A6 */	mtctr r12
/* 813C5804 | 4E 80 04 21 */	bctrl
/* 813C5808 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C580C | 41 82 00 28 */	beq .L_813C5834
/* 813C5810 | 7F C3 F3 78 */	mr r3, r30
/* 813C5814 | 4B FF F7 35 */	bl enable_scroll_l__Q33ipl5scene6MemoryFv
/* 813C5818 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C581C | 41 82 00 18 */	beq .L_813C5834
/* 813C5820 | 7F C3 F3 78 */	mr r3, r30
/* 813C5824 | 38 80 00 00 */	li r4, 0x0
/* 813C5828 | 38 A0 00 01 */	li r5, 0x1
/* 813C582C | 4B FF F5 D1 */	bl start_scroll_l__Q33ipl5scene6MemoryFbb
/* 813C5830 | 48 00 00 48 */	b .L_813C5878
.L_813C5834:
/* 813C5834 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813C5838 | 3C 80 06 00 */	lis r4, 0x600
/* 813C583C | 7F E3 FB 78 */	mr r3, r31
/* 813C5840 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813C5844 | 38 84 00 10 */	addi r4, r4, 0x10
/* 813C5848 | 7D 89 03 A6 */	mtctr r12
/* 813C584C | 4E 80 04 21 */	bctrl
/* 813C5850 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C5854 | 41 82 00 24 */	beq .L_813C5878
/* 813C5858 | 7F C3 F3 78 */	mr r3, r30
/* 813C585C | 4B FF F6 39 */	bl enable_scroll_r__Q33ipl5scene6MemoryFv
/* 813C5860 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C5864 | 41 82 00 14 */	beq .L_813C5878
/* 813C5868 | 7F C3 F3 78 */	mr r3, r30
/* 813C586C | 38 80 00 00 */	li r4, 0x0
/* 813C5870 | 38 A0 00 01 */	li r5, 0x1
/* 813C5874 | 4B FF F4 F1 */	bl start_scroll_r__Q33ipl5scene6MemoryFbb
.L_813C5878:
/* 813C5878 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C587C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C5880 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813C5884 | 7C 08 03 A6 */	mtlr r0
/* 813C5888 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C588C | 4E 80 00 20 */	blr
.endfn on_normal__Q33ipl5scene6MemoryFv

# .text:0x1CC4 | 0x813C5890 | size: 0x58
# ipl::scene::Memory::on_fadein1st()
.fn on_fadein1st__Q33ipl5scene6MemoryFv, global
/* 813C5890 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C5894 | 7C 08 02 A6 */	mflr r0
/* 813C5898 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C589C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C58A0 | 7C 7F 1B 78 */	mr r31, r3
/* 813C58A4 | 80 83 00 60 */	lwz r4, 0x60(r3)
/* 813C58A8 | 80 04 00 34 */	lwz r0, 0x34(r4)
/* 813C58AC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C58B0 | 40 82 00 24 */	bne .L_813C58D4
/* 813C58B4 | 80 63 00 78 */	lwz r3, 0x78(r3)
/* 813C58B8 | 4B FD C8 B9 */	bl isWorking__Q33ipl5scene17NandSDCardManagerFv
/* 813C58BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C58C0 | 40 82 00 14 */	bne .L_813C58D4
/* 813C58C4 | 7F E3 FB 78 */	mr r3, r31
/* 813C58C8 | 4B FF EB 0D */	bl fadein_savedata_box__Q33ipl5scene6MemoryFv
/* 813C58CC | 38 00 00 02 */	li r0, 0x2
/* 813C58D0 | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813C58D4:
/* 813C58D4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C58D8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C58DC | 7C 08 03 A6 */	mtlr r0
/* 813C58E0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C58E4 | 4E 80 00 20 */	blr
.endfn on_fadein1st__Q33ipl5scene6MemoryFv

# .text:0x1D1C | 0x813C58E8 | size: 0x58
# ipl::scene::Memory::on_fadein2nd()
.fn on_fadein2nd__Q33ipl5scene6MemoryFv, global
/* 813C58E8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C58EC | 7C 08 02 A6 */	mflr r0
/* 813C58F0 | 38 80 00 00 */	li r4, 0x0
/* 813C58F4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C58F8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C58FC | 7C 7F 1B 78 */	mr r31, r3
/* 813C5900 | 48 00 00 10 */	b .L_813C5910
.L_813C5904:
/* 813C5904 | 80 03 00 3C */	lwz r0, 0x3c(r3)
/* 813C5908 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C590C | 40 82 00 20 */	bne .L_813C592C
.L_813C5910:
/* 813C5910 | 38 7F 00 6C */	addi r3, r31, 0x6c
/* 813C5914 | 48 14 C9 C9 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813C5918 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C591C | 7C 64 1B 78 */	mr r4, r3
/* 813C5920 | 40 82 FF E4 */	bne .L_813C5904
/* 813C5924 | 38 00 00 00 */	li r0, 0x0
/* 813C5928 | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813C592C:
/* 813C592C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C5930 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C5934 | 7C 08 03 A6 */	mtlr r0
/* 813C5938 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C593C | 4E 80 00 20 */	blr
.endfn on_fadein2nd__Q33ipl5scene6MemoryFv

# .text:0x1D74 | 0x813C5940 | size: 0x2C
# ipl::scene::Memory::on_fadeout1st()
.fn on_fadeout1st__Q33ipl5scene6MemoryFv, global
/* 813C5940 | 80 83 00 60 */	lwz r4, 0x60(r3)
/* 813C5944 | 80 04 00 34 */	lwz r0, 0x34(r4)
/* 813C5948 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C594C | 4C 82 00 20 */	bnelr
/* 813C5950 | 80 83 00 78 */	lwz r4, 0x78(r3)
/* 813C5954 | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 813C5958 | 2C 00 00 1F */	cmpwi r0, 0x1f
/* 813C595C | 4C 82 00 20 */	bnelr
/* 813C5960 | 38 00 00 04 */	li r0, 0x4
/* 813C5964 | 90 03 00 54 */	stw r0, 0x54(r3)
/* 813C5968 | 4E 80 00 20 */	blr
.endfn on_fadeout1st__Q33ipl5scene6MemoryFv

# .text:0x1DA0 | 0x813C596C | size: 0x48
# ipl::scene::Memory::on_fadeout2nd()
.fn on_fadeout2nd__Q33ipl5scene6MemoryFv, global
/* 813C596C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C5970 | 7C 08 02 A6 */	mflr r0
/* 813C5974 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813C5978 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C597C | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813C5980 | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 813C5984 | 60 00 00 02 */	ori r0, r0, 0x2
/* 813C5988 | 90 03 00 2C */	stw r0, 0x2c(r3)
/* 813C598C | 80 64 00 A8 */	lwz r3, 0xa8(r4)
/* 813C5990 | 4B F9 B1 5D */	bl restart__Q33ipl3bs27ManagerFv
/* 813C5994 | 3C 60 81 65 */	lis r3, lbl_816511B5@ha
/* 813C5998 | 38 63 11 B5 */	addi r3, r3, lbl_816511B5@l
/* 813C599C | 4C C6 31 82 */	crclr cr1eq
/* 813C59A0 | 48 16 8D 01 */	bl OSReport
/* 813C59A4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C59A8 | 7C 08 03 A6 */	mtlr r0
/* 813C59AC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C59B0 | 4E 80 00 20 */	blr
.endfn on_fadeout2nd__Q33ipl5scene6MemoryFv

# .text:0x1DE8 | 0x813C59B4 | size: 0x94
# ipl::scene::Memory::on_scroll_r()
.fn on_scroll_r__Q33ipl5scene6MemoryFv, global
/* 813C59B4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C59B8 | 7C 08 02 A6 */	mflr r0
/* 813C59BC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C59C0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C59C4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813C59C8 | 7C 7E 1B 78 */	mr r30, r3
/* 813C59CC | 80 83 00 60 */	lwz r4, 0x60(r3)
/* 813C59D0 | 80 04 00 34 */	lwz r0, 0x34(r4)
/* 813C59D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C59D8 | 40 82 00 50 */	bne .L_813C5A28
/* 813C59DC | 80 A3 00 C0 */	lwz r5, 0xc0(r3)
/* 813C59E0 | 38 80 00 00 */	li r4, 0x0
/* 813C59E4 | 3B E0 00 00 */	li r31, 0x0
/* 813C59E8 | 38 05 00 0F */	addi r0, r5, 0xf
/* 813C59EC | 90 03 00 C0 */	stw r0, 0xc0(r3)
/* 813C59F0 | 48 00 00 08 */	b .L_813C59F8
.L_813C59F4:
/* 813C59F4 | 93 E3 00 40 */	stw r31, 0x40(r3)
.L_813C59F8:
/* 813C59F8 | 38 7E 00 6C */	addi r3, r30, 0x6c
/* 813C59FC | 48 14 C8 E1 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813C5A00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C5A04 | 7C 64 1B 78 */	mr r4, r3
/* 813C5A08 | 40 82 FF EC */	bne .L_813C59F4
/* 813C5A0C | 80 1E 00 B8 */	lwz r0, 0xb8(r30)
/* 813C5A10 | 7F C3 F3 78 */	mr r3, r30
/* 813C5A14 | 7C 00 00 34 */	cntlzw r0, r0
/* 813C5A18 | 54 04 D9 7E */	srwi r4, r0, 5
/* 813C5A1C | 4B FF EA E1 */	bl send_getbanner_cmd__Q33ipl5scene6MemoryFb
/* 813C5A20 | 38 00 00 00 */	li r0, 0x0
/* 813C5A24 | 90 1E 00 54 */	stw r0, 0x54(r30)
.L_813C5A28:
/* 813C5A28 | 7F C3 F3 78 */	mr r3, r30
/* 813C5A2C | 4B FF E8 D1 */	bl setpos_savedata_box__Q33ipl5scene6MemoryFv
/* 813C5A30 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C5A34 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C5A38 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813C5A3C | 7C 08 03 A6 */	mtlr r0
/* 813C5A40 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C5A44 | 4E 80 00 20 */	blr
.endfn on_scroll_r__Q33ipl5scene6MemoryFv

# .text:0x1E7C | 0x813C5A48 | size: 0x94
# ipl::scene::Memory::on_scroll_l()
.fn on_scroll_l__Q33ipl5scene6MemoryFv, global
/* 813C5A48 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C5A4C | 7C 08 02 A6 */	mflr r0
/* 813C5A50 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C5A54 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C5A58 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813C5A5C | 7C 7E 1B 78 */	mr r30, r3
/* 813C5A60 | 80 83 00 60 */	lwz r4, 0x60(r3)
/* 813C5A64 | 80 04 00 34 */	lwz r0, 0x34(r4)
/* 813C5A68 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C5A6C | 40 82 00 50 */	bne .L_813C5ABC
/* 813C5A70 | 80 A3 00 C0 */	lwz r5, 0xc0(r3)
/* 813C5A74 | 38 80 00 00 */	li r4, 0x0
/* 813C5A78 | 3B E0 00 00 */	li r31, 0x0
/* 813C5A7C | 38 05 FF F1 */	subi r0, r5, 0xf
/* 813C5A80 | 90 03 00 C0 */	stw r0, 0xc0(r3)
/* 813C5A84 | 48 00 00 08 */	b .L_813C5A8C
.L_813C5A88:
/* 813C5A88 | 93 E3 00 40 */	stw r31, 0x40(r3)
.L_813C5A8C:
/* 813C5A8C | 38 7E 00 6C */	addi r3, r30, 0x6c
/* 813C5A90 | 48 14 C8 4D */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813C5A94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C5A98 | 7C 64 1B 78 */	mr r4, r3
/* 813C5A9C | 40 82 FF EC */	bne .L_813C5A88
/* 813C5AA0 | 80 1E 00 B8 */	lwz r0, 0xb8(r30)
/* 813C5AA4 | 7F C3 F3 78 */	mr r3, r30
/* 813C5AA8 | 7C 00 00 34 */	cntlzw r0, r0
/* 813C5AAC | 54 04 D9 7E */	srwi r4, r0, 5
/* 813C5AB0 | 4B FF EA 4D */	bl send_getbanner_cmd__Q33ipl5scene6MemoryFb
/* 813C5AB4 | 38 00 00 00 */	li r0, 0x0
/* 813C5AB8 | 90 1E 00 54 */	stw r0, 0x54(r30)
.L_813C5ABC:
/* 813C5ABC | 7F C3 F3 78 */	mr r3, r30
/* 813C5AC0 | 4B FF E8 3D */	bl setpos_savedata_box__Q33ipl5scene6MemoryFv
/* 813C5AC4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C5AC8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C5ACC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813C5AD0 | 7C 08 03 A6 */	mtlr r0
/* 813C5AD4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C5AD8 | 4E 80 00 20 */	blr
.endfn on_scroll_l__Q33ipl5scene6MemoryFv

# .text:0x1F10 | 0x813C5ADC | size: 0x1C8
# ipl::scene::Memory::on_change_tag1st()
.fn on_change_tag1st__Q33ipl5scene6MemoryFv, global
/* 813C5ADC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C5AE0 | 7C 08 02 A6 */	mflr r0
/* 813C5AE4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C5AE8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C5AEC | 7C 7F 1B 78 */	mr r31, r3
/* 813C5AF0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813C5AF4 | 80 63 00 78 */	lwz r3, 0x78(r3)
/* 813C5AF8 | 4B FD C6 79 */	bl isWorking__Q33ipl5scene17NandSDCardManagerFv
/* 813C5AFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C5B00 | 40 82 01 8C */	bne .L_813C5C8C
/* 813C5B04 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813C5B08 | 38 80 00 00 */	li r4, 0x0
/* 813C5B0C | 3C 63 00 0F */	addis r3, r3, 0xf
/* 813C5B10 | 80 03 87 74 */	lwz r0, -0x788c(r3)
/* 813C5B14 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C5B18 | 40 82 00 14 */	bne .L_813C5B2C
/* 813C5B1C | 80 03 86 74 */	lwz r0, -0x798c(r3)
/* 813C5B20 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C5B24 | 40 82 00 08 */	bne .L_813C5B2C
/* 813C5B28 | 38 80 00 01 */	li r4, 0x1
.L_813C5B2C:
/* 813C5B2C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813C5B30 | 40 82 00 08 */	bne .L_813C5B38
/* 813C5B34 | 48 00 01 58 */	b .L_813C5C8C
.L_813C5B38:
/* 813C5B38 | 38 80 00 00 */	li r4, 0x0
/* 813C5B3C | 3B C0 00 00 */	li r30, 0x0
/* 813C5B40 | 48 00 00 20 */	b .L_813C5B60
.L_813C5B44:
/* 813C5B44 | 80 03 00 3C */	lwz r0, 0x3c(r3)
/* 813C5B48 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C5B4C | 40 82 01 40 */	bne .L_813C5C8C
/* 813C5B50 | 80 03 00 40 */	lwz r0, 0x40(r3)
/* 813C5B54 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C5B58 | 41 82 00 08 */	beq .L_813C5B60
/* 813C5B5C | 93 C3 00 40 */	stw r30, 0x40(r3)
.L_813C5B60:
/* 813C5B60 | 38 7F 00 6C */	addi r3, r31, 0x6c
/* 813C5B64 | 48 14 C7 79 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813C5B68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C5B6C | 7C 64 1B 78 */	mr r4, r3
/* 813C5B70 | 40 82 FF D4 */	bne .L_813C5B44
/* 813C5B74 | 80 1F 00 B8 */	lwz r0, 0xb8(r31)
/* 813C5B78 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813C5B7C | 40 82 00 F4 */	bne .L_813C5C70
/* 813C5B80 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813C5B84 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813C5B88 | 4B F8 2C FD */	bl get_sd_state__Q23ipl12NandSDWorkerFv
/* 813C5B8C | 2C 03 00 05 */	cmpwi r3, 0x5
/* 813C5B90 | 90 7F 00 C4 */	stw r3, 0xc4(r31)
/* 813C5B94 | 41 82 00 B8 */	beq .L_813C5C4C
/* 813C5B98 | 40 80 00 1C */	bge .L_813C5BB4
/* 813C5B9C | 2C 03 00 02 */	cmpwi r3, 0x2
/* 813C5BA0 | 41 82 00 44 */	beq .L_813C5BE4
/* 813C5BA4 | 40 80 00 54 */	bge .L_813C5BF8
/* 813C5BA8 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813C5BAC | 40 80 00 14 */	bge .L_813C5BC0
/* 813C5BB0 | 48 00 00 9C */	b .L_813C5C4C
.L_813C5BB4:
/* 813C5BB4 | 2C 03 00 07 */	cmpwi r3, 0x7
/* 813C5BB8 | 40 80 00 94 */	bge .L_813C5C4C
/* 813C5BBC | 48 00 00 60 */	b .L_813C5C1C
.L_813C5BC0:
/* 813C5BC0 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813C5BC4 | 80 03 00 34 */	lwz r0, 0x34(r3)
/* 813C5BC8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C5BCC | 40 82 00 C0 */	bne .L_813C5C8C
/* 813C5BD0 | 38 80 01 21 */	li r4, 0x121
/* 813C5BD4 | 48 00 1C 7D */	bl anmTextFadein__Q33ipl5scene12SavedataBaseFUl
/* 813C5BD8 | 38 00 00 16 */	li r0, 0x16
/* 813C5BDC | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C5BE0 | 48 00 00 AC */	b .L_813C5C8C
.L_813C5BE4:
/* 813C5BE4 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813C5BE8 | 4B FE 3D 51 */	bl cmdSDMount__Q33ipl5scene17NandSDCardManagerFv
/* 813C5BEC | 38 00 00 15 */	li r0, 0x15
/* 813C5BF0 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C5BF4 | 48 00 00 98 */	b .L_813C5C8C
.L_813C5BF8:
/* 813C5BF8 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813C5BFC | 80 03 00 34 */	lwz r0, 0x34(r3)
/* 813C5C00 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C5C04 | 40 82 00 88 */	bne .L_813C5C8C
/* 813C5C08 | 38 80 00 38 */	li r4, 0x38
/* 813C5C0C | 48 00 1C 45 */	bl anmTextFadein__Q33ipl5scene12SavedataBaseFUl
/* 813C5C10 | 38 00 00 16 */	li r0, 0x16
/* 813C5C14 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C5C18 | 48 00 00 74 */	b .L_813C5C8C
.L_813C5C1C:
/* 813C5C1C | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813C5C20 | 80 03 00 34 */	lwz r0, 0x34(r3)
/* 813C5C24 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C5C28 | 40 82 00 64 */	bne .L_813C5C8C
/* 813C5C2C | 7F E3 FB 78 */	mr r3, r31
/* 813C5C30 | 38 80 00 00 */	li r4, 0x0
/* 813C5C34 | 4B FF E8 C9 */	bl send_getbanner_cmd__Q33ipl5scene6MemoryFb
/* 813C5C38 | 7F E3 FB 78 */	mr r3, r31
/* 813C5C3C | 4B FF E7 99 */	bl fadein_savedata_box__Q33ipl5scene6MemoryFv
/* 813C5C40 | 38 00 00 08 */	li r0, 0x8
/* 813C5C44 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C5C48 | 48 00 00 44 */	b .L_813C5C8C
.L_813C5C4C:
/* 813C5C4C | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813C5C50 | 80 03 00 34 */	lwz r0, 0x34(r3)
/* 813C5C54 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C5C58 | 40 82 00 34 */	bne .L_813C5C8C
/* 813C5C5C | 38 80 00 97 */	li r4, 0x97
/* 813C5C60 | 48 00 1B F1 */	bl anmTextFadein__Q33ipl5scene12SavedataBaseFUl
/* 813C5C64 | 38 00 00 16 */	li r0, 0x16
/* 813C5C68 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C5C6C | 48 00 00 20 */	b .L_813C5C8C
.L_813C5C70:
/* 813C5C70 | 7F E3 FB 78 */	mr r3, r31
/* 813C5C74 | 38 80 00 01 */	li r4, 0x1
/* 813C5C78 | 4B FF E8 85 */	bl send_getbanner_cmd__Q33ipl5scene6MemoryFb
/* 813C5C7C | 7F E3 FB 78 */	mr r3, r31
/* 813C5C80 | 4B FF E7 55 */	bl fadein_savedata_box__Q33ipl5scene6MemoryFv
/* 813C5C84 | 38 00 00 08 */	li r0, 0x8
/* 813C5C88 | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813C5C8C:
/* 813C5C8C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C5C90 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C5C94 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813C5C98 | 7C 08 03 A6 */	mtlr r0
/* 813C5C9C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C5CA0 | 4E 80 00 20 */	blr
.endfn on_change_tag1st__Q33ipl5scene6MemoryFv

# .text:0x20D8 | 0x813C5CA4 | size: 0x58
# ipl::scene::Memory::on_change_tag2nd()
.fn on_change_tag2nd__Q33ipl5scene6MemoryFv, global
/* 813C5CA4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C5CA8 | 7C 08 02 A6 */	mflr r0
/* 813C5CAC | 38 80 00 00 */	li r4, 0x0
/* 813C5CB0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C5CB4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C5CB8 | 7C 7F 1B 78 */	mr r31, r3
/* 813C5CBC | 48 00 00 10 */	b .L_813C5CCC
.L_813C5CC0:
/* 813C5CC0 | 80 03 00 3C */	lwz r0, 0x3c(r3)
/* 813C5CC4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C5CC8 | 40 82 00 20 */	bne .L_813C5CE8
.L_813C5CCC:
/* 813C5CCC | 38 7F 00 6C */	addi r3, r31, 0x6c
/* 813C5CD0 | 48 14 C6 0D */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813C5CD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C5CD8 | 7C 64 1B 78 */	mr r4, r3
/* 813C5CDC | 40 82 FF E4 */	bne .L_813C5CC0
/* 813C5CE0 | 38 00 00 00 */	li r0, 0x0
/* 813C5CE4 | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813C5CE8:
/* 813C5CE8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C5CEC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C5CF0 | 7C 08 03 A6 */	mtlr r0
/* 813C5CF4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C5CF8 | 4E 80 00 20 */	blr
.endfn on_change_tag2nd__Q33ipl5scene6MemoryFv

# .text:0x2130 | 0x813C5CFC | size: 0x1B0
# ipl::scene::Memory::on_trig_copy()
.fn on_trig_copy__Q33ipl5scene6MemoryFv, global
/* 813C5CFC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C5D00 | 7C 08 02 A6 */	mflr r0
/* 813C5D04 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C5D08 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C5D0C | 7C 7F 1B 78 */	mr r31, r3
/* 813C5D10 | 80 83 00 BC */	lwz r4, 0xbc(r3)
/* 813C5D14 | 80 84 00 40 */	lwz r4, 0x40(r4)
/* 813C5D18 | 3C 84 00 01 */	addis r4, r4, 0x1
/* 813C5D1C | 80 04 F1 A8 */	lwz r0, -0xe58(r4)
/* 813C5D20 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813C5D24 | 40 82 00 1C */	bne .L_813C5D40
/* 813C5D28 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 813C5D2C | 38 80 01 1C */	li r4, 0x11c
/* 813C5D30 | 48 00 33 E1 */	bl anmSelectFadeout__Q33ipl5scene12SavedataEditFUl
/* 813C5D34 | 38 00 00 0F */	li r0, 0xf
/* 813C5D38 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C5D3C | 48 00 01 5C */	b .L_813C5E98
.L_813C5D40:
/* 813C5D40 | 80 63 00 78 */	lwz r3, 0x78(r3)
/* 813C5D44 | 4B FD C4 2D */	bl isWorking__Q33ipl5scene17NandSDCardManagerFv
/* 813C5D48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C5D4C | 40 82 01 4C */	bne .L_813C5E98
/* 813C5D50 | 80 1F 00 B8 */	lwz r0, 0xb8(r31)
/* 813C5D54 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C5D58 | 40 82 01 04 */	bne .L_813C5E5C
/* 813C5D5C | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813C5D60 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813C5D64 | 4B F8 2B 21 */	bl get_sd_state__Q23ipl12NandSDWorkerFv
/* 813C5D68 | 2C 03 00 05 */	cmpwi r3, 0x5
/* 813C5D6C | 90 7F 00 C4 */	stw r3, 0xc4(r31)
/* 813C5D70 | 41 82 00 D4 */	beq .L_813C5E44
/* 813C5D74 | 40 80 00 1C */	bge .L_813C5D90
/* 813C5D78 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 813C5D7C | 41 82 00 38 */	beq .L_813C5DB4
/* 813C5D80 | 40 80 00 58 */	bge .L_813C5DD8
/* 813C5D84 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813C5D88 | 40 80 00 14 */	bge .L_813C5D9C
/* 813C5D8C | 48 00 00 B8 */	b .L_813C5E44
.L_813C5D90:
/* 813C5D90 | 2C 03 00 07 */	cmpwi r3, 0x7
/* 813C5D94 | 40 80 00 B0 */	bge .L_813C5E44
/* 813C5D98 | 48 00 00 58 */	b .L_813C5DF0
.L_813C5D9C:
/* 813C5D9C | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C5DA0 | 38 80 01 21 */	li r4, 0x121
/* 813C5DA4 | 48 00 33 6D */	bl anmSelectFadeout__Q33ipl5scene12SavedataEditFUl
/* 813C5DA8 | 38 00 00 0F */	li r0, 0xf
/* 813C5DAC | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C5DB0 | 48 00 00 E8 */	b .L_813C5E98
.L_813C5DB4:
/* 813C5DB4 | 3C 60 81 65 */	lis r3, lbl_816511D1@ha
/* 813C5DB8 | 38 63 11 D1 */	addi r3, r3, lbl_816511D1@l
/* 813C5DBC | 4C C6 31 82 */	crclr cr1eq
/* 813C5DC0 | 48 16 88 E1 */	bl OSReport
/* 813C5DC4 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813C5DC8 | 4B FE 3B 71 */	bl cmdSDMount__Q33ipl5scene17NandSDCardManagerFv
/* 813C5DCC | 38 00 00 1C */	li r0, 0x1c
/* 813C5DD0 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C5DD4 | 48 00 00 C4 */	b .L_813C5E98
.L_813C5DD8:
/* 813C5DD8 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C5DDC | 38 80 00 38 */	li r4, 0x38
/* 813C5DE0 | 48 00 33 31 */	bl anmSelectFadeout__Q33ipl5scene12SavedataEditFUl
/* 813C5DE4 | 38 00 00 0F */	li r0, 0xf
/* 813C5DE8 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C5DEC | 48 00 00 AC */	b .L_813C5E98
.L_813C5DF0:
/* 813C5DF0 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813C5DF4 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813C5DF8 | 4B F8 2E A9 */	bl is_sd_write_protected__Q23ipl12NandSDWorkerFv
/* 813C5DFC | 38 03 FF FF */	subi r0, r3, 0x1
/* 813C5E00 | 7C 00 00 34 */	cntlzw r0, r0
/* 813C5E04 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 813C5E08 | 41 82 00 1C */	beq .L_813C5E24
/* 813C5E0C | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C5E10 | 38 80 00 3E */	li r4, 0x3e
/* 813C5E14 | 48 00 32 FD */	bl anmSelectFadeout__Q33ipl5scene12SavedataEditFUl
/* 813C5E18 | 38 00 00 0F */	li r0, 0xf
/* 813C5E1C | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C5E20 | 48 00 00 78 */	b .L_813C5E98
.L_813C5E24:
/* 813C5E24 | 80 9F 00 BC */	lwz r4, 0xbc(r31)
/* 813C5E28 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813C5E2C | 80 84 00 40 */	lwz r4, 0x40(r4)
/* 813C5E30 | 80 84 00 FC */	lwz r4, 0xfc(r4)
/* 813C5E34 | 4B FE 40 85 */	bl cmdExistSDSave__Q33ipl5scene17NandSDCardManagerFUl
/* 813C5E38 | 38 00 00 1B */	li r0, 0x1b
/* 813C5E3C | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C5E40 | 48 00 00 58 */	b .L_813C5E98
.L_813C5E44:
/* 813C5E44 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C5E48 | 38 80 00 97 */	li r4, 0x97
/* 813C5E4C | 48 00 32 C5 */	bl anmSelectFadeout__Q33ipl5scene12SavedataEditFUl
/* 813C5E50 | 38 00 00 0F */	li r0, 0xf
/* 813C5E54 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C5E58 | 48 00 00 40 */	b .L_813C5E98
.L_813C5E5C:
/* 813C5E5C | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813C5E60 | 4B FE 36 FD */	bl getAsyncResult__Q33ipl5scene17NandSDCardManagerFv
/* 813C5E64 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C5E68 | 41 82 00 1C */	beq .L_813C5E84
/* 813C5E6C | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C5E70 | 38 80 01 28 */	li r4, 0x128
/* 813C5E74 | 48 00 32 9D */	bl anmSelectFadeout__Q33ipl5scene12SavedataEditFUl
/* 813C5E78 | 38 00 00 0F */	li r0, 0xf
/* 813C5E7C | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C5E80 | 48 00 00 18 */	b .L_813C5E98
.L_813C5E84:
/* 813C5E84 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C5E88 | 38 80 01 10 */	li r4, 0x110
/* 813C5E8C | 48 00 31 B1 */	bl anmShowS2Btn2Dialog__Q33ipl5scene12SavedataEditFUl
/* 813C5E90 | 38 00 00 11 */	li r0, 0x11
/* 813C5E94 | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813C5E98:
/* 813C5E98 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C5E9C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C5EA0 | 7C 08 03 A6 */	mtlr r0
/* 813C5EA4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C5EA8 | 4E 80 00 20 */	blr
.endfn on_trig_copy__Q33ipl5scene6MemoryFv

# .text:0x22E0 | 0x813C5EAC | size: 0x1C
# ipl::scene::Memory::on_edit_fadein()
.fn on_edit_fadein__Q33ipl5scene6MemoryFv, global
/* 813C5EAC | 80 83 00 68 */	lwz r4, 0x68(r3)
/* 813C5EB0 | 80 04 00 3C */	lwz r0, 0x3c(r4)
/* 813C5EB4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C5EB8 | 4C 82 00 20 */	bnelr
/* 813C5EBC | 38 00 00 0B */	li r0, 0xb
/* 813C5EC0 | 90 03 00 54 */	stw r0, 0x54(r3)
/* 813C5EC4 | 4E 80 00 20 */	blr
.endfn on_edit_fadein__Q33ipl5scene6MemoryFv

# .text:0x22FC | 0x813C5EC8 | size: 0x74
# ipl::scene::Memory::on_edit()
.fn on_edit__Q33ipl5scene6MemoryFv, global
/* 813C5EC8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C5ECC | 7C 08 02 A6 */	mflr r0
/* 813C5ED0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C5ED4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C5ED8 | 7C 7F 1B 78 */	mr r31, r3
/* 813C5EDC | 80 83 00 68 */	lwz r4, 0x68(r3)
/* 813C5EE0 | 80 04 00 3C */	lwz r0, 0x3c(r4)
/* 813C5EE4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C5EE8 | 40 82 00 30 */	bne .L_813C5F18
/* 813C5EEC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C5EF0 | 38 80 00 16 */	li r4, 0x16
/* 813C5EF4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C5EF8 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813C5EFC | 48 04 52 3D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C5F00 | 48 04 18 69 */	bl update__Q33ipl5scene13SettingButtonFv
/* 813C5F04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C5F08 | 41 82 00 10 */	beq .L_813C5F18
/* 813C5F0C | 38 00 00 0D */	li r0, 0xd
/* 813C5F10 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C5F14 | 48 00 00 14 */	b .L_813C5F28
.L_813C5F18:
/* 813C5F18 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C5F1C | 48 00 2C 7D */	bl update__Q33ipl5scene12SavedataEditFv
/* 813C5F20 | 7F E3 FB 78 */	mr r3, r31
/* 813C5F24 | 4B FF E6 45 */	bl update_sdcard_slot__Q33ipl5scene6MemoryFv
.L_813C5F28:
/* 813C5F28 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C5F2C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C5F30 | 7C 08 03 A6 */	mtlr r0
/* 813C5F34 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C5F38 | 4E 80 00 20 */	blr
.endfn on_edit__Q33ipl5scene6MemoryFv

# .text:0x2370 | 0x813C5F3C | size: 0x58
# ipl::scene::Memory::on_edit_fadeout1st()
.fn on_edit_fadeout1st__Q33ipl5scene6MemoryFv, global
/* 813C5F3C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C5F40 | 7C 08 02 A6 */	mflr r0
/* 813C5F44 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813C5F48 | 38 80 00 16 */	li r4, 0x16
/* 813C5F4C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C5F50 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813C5F54 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C5F58 | 7C 7F 1B 78 */	mr r31, r3
/* 813C5F5C | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 813C5F60 | 48 04 51 D9 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C5F64 | 48 04 1A E9 */	bl isPlaying__Q33ipl5scene13SettingButtonCFv
/* 813C5F68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C5F6C | 40 82 00 14 */	bne .L_813C5F80
/* 813C5F70 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C5F74 | 48 00 30 15 */	bl anmFadeout__Q33ipl5scene12SavedataEditFv
/* 813C5F78 | 38 00 00 0E */	li r0, 0xe
/* 813C5F7C | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813C5F80:
/* 813C5F80 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C5F84 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C5F88 | 7C 08 03 A6 */	mtlr r0
/* 813C5F8C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C5F90 | 4E 80 00 20 */	blr
.endfn on_edit_fadeout1st__Q33ipl5scene6MemoryFv

# .text:0x23C8 | 0x813C5F94 | size: 0x1C
# ipl::scene::Memory::on_edit_fadeout2nd()
.fn on_edit_fadeout2nd__Q33ipl5scene6MemoryFv, global
/* 813C5F94 | 80 83 00 68 */	lwz r4, 0x68(r3)
/* 813C5F98 | 80 04 00 3C */	lwz r0, 0x3c(r4)
/* 813C5F9C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C5FA0 | 4C 82 00 20 */	bnelr
/* 813C5FA4 | 38 00 00 00 */	li r0, 0x0
/* 813C5FA8 | 90 03 00 54 */	stw r0, 0x54(r3)
/* 813C5FAC | 4E 80 00 20 */	blr
.endfn on_edit_fadeout2nd__Q33ipl5scene6MemoryFv

# .text:0x23E4 | 0x813C5FB0 | size: 0x78
# ipl::scene::Memory::on_verify1st()
.fn on_verify1st__Q33ipl5scene6MemoryFv, global
/* 813C5FB0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C5FB4 | 7C 08 02 A6 */	mflr r0
/* 813C5FB8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C5FBC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C5FC0 | 7C 7F 1B 78 */	mr r31, r3
/* 813C5FC4 | 80 83 00 68 */	lwz r4, 0x68(r3)
/* 813C5FC8 | 80 04 00 3C */	lwz r0, 0x3c(r4)
/* 813C5FCC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C5FD0 | 40 82 00 34 */	bne .L_813C6004
/* 813C5FD4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C5FD8 | 38 80 00 16 */	li r4, 0x16
/* 813C5FDC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C5FE0 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813C5FE4 | 48 04 51 55 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C5FE8 | 48 04 17 81 */	bl update__Q33ipl5scene13SettingButtonFv
/* 813C5FEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C5FF0 | 41 82 00 14 */	beq .L_813C6004
/* 813C5FF4 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C5FF8 | 48 00 30 85 */	bl anmSelectFadein__Q33ipl5scene12SavedataEditFv
/* 813C5FFC | 38 00 00 10 */	li r0, 0x10
/* 813C6000 | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813C6004:
/* 813C6004 | 38 00 00 00 */	li r0, 0x0
/* 813C6008 | 7F E3 FB 78 */	mr r3, r31
/* 813C600C | 90 1F 00 D0 */	stw r0, 0xd0(r31)
/* 813C6010 | 4B FF E5 59 */	bl update_sdcard_slot__Q33ipl5scene6MemoryFv
/* 813C6014 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C6018 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C601C | 7C 08 03 A6 */	mtlr r0
/* 813C6020 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C6024 | 4E 80 00 20 */	blr
.endfn on_verify1st__Q33ipl5scene6MemoryFv

# .text:0x245C | 0x813C6028 | size: 0x1C
# ipl::scene::Memory::on_verify2nd()
.fn on_verify2nd__Q33ipl5scene6MemoryFv, global
/* 813C6028 | 80 83 00 68 */	lwz r4, 0x68(r3)
/* 813C602C | 80 04 00 3C */	lwz r0, 0x3c(r4)
/* 813C6030 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C6034 | 4C 82 00 20 */	bnelr
/* 813C6038 | 38 00 00 0B */	li r0, 0xb
/* 813C603C | 90 03 00 54 */	stw r0, 0x54(r3)
/* 813C6040 | 4E 80 00 20 */	blr
.endfn on_verify2nd__Q33ipl5scene6MemoryFv

# .text:0x2478 | 0x813C6044 | size: 0x154
# ipl::scene::Memory::on_verify_copy()
.fn on_verify_copy__Q33ipl5scene6MemoryFv, global
/* 813C6044 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C6048 | 7C 08 02 A6 */	mflr r0
/* 813C604C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C6050 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C6054 | 7C 7F 1B 78 */	mr r31, r3
/* 813C6058 | 80 83 00 68 */	lwz r4, 0x68(r3)
/* 813C605C | 80 04 00 3C */	lwz r0, 0x3c(r4)
/* 813C6060 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C6064 | 40 82 01 20 */	bne .L_813C6184
/* 813C6068 | 80 63 00 78 */	lwz r3, 0x78(r3)
/* 813C606C | 4B FD C1 05 */	bl isWorking__Q33ipl5scene17NandSDCardManagerFv
/* 813C6070 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C6074 | 41 82 00 08 */	beq .L_813C607C
/* 813C6078 | 48 00 01 0C */	b .L_813C6184
.L_813C607C:
/* 813C607C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C6080 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C6084 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813C6088 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813C608C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813C6090 | 41 82 00 14 */	beq .L_813C60A4
/* 813C6094 | 40 80 00 E8 */	bge .L_813C617C
/* 813C6098 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813C609C | 40 80 00 D0 */	bge .L_813C616C
/* 813C60A0 | 48 00 00 DC */	b .L_813C617C
.L_813C60A4:
/* 813C60A4 | 80 1F 00 B8 */	lwz r0, 0xb8(r31)
/* 813C60A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C60AC | 40 82 00 90 */	bne .L_813C613C
/* 813C60B0 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813C60B4 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813C60B8 | 4B F8 27 CD */	bl get_sd_state__Q23ipl12NandSDWorkerFv
/* 813C60BC | 2C 03 00 06 */	cmpwi r3, 0x6
/* 813C60C0 | 40 82 00 38 */	bne .L_813C60F8
/* 813C60C4 | 7F E3 FB 78 */	mr r3, r31
/* 813C60C8 | 38 80 00 01 */	li r4, 0x1
/* 813C60CC | 4B FF EB B9 */	bl start_process__Q33ipl5scene6MemoryFi
/* 813C60D0 | 80 9F 00 BC */	lwz r4, 0xbc(r31)
/* 813C60D4 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813C60D8 | 80 84 00 40 */	lwz r4, 0x40(r4)
/* 813C60DC | 80 A4 00 F8 */	lwz r5, 0xf8(r4)
/* 813C60E0 | 80 C4 00 FC */	lwz r6, 0xfc(r4)
/* 813C60E4 | 4B FE 39 85 */	bl cmdCopySaveNandToSD__Q33ipl5scene17NandSDCardManagerFUx
/* 813C60E8 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C60EC | 38 80 01 06 */	li r4, 0x106
/* 813C60F0 | 48 00 30 61 */	bl anmTextFadein__Q33ipl5scene12SavedataEditFUl
/* 813C60F4 | 48 00 00 88 */	b .L_813C617C
.L_813C60F8:
/* 813C60F8 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813C60FC | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813C6100 | 4B F8 27 85 */	bl get_sd_state__Q23ipl12NandSDWorkerFv
/* 813C6104 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813C6108 | 40 82 00 1C */	bne .L_813C6124
/* 813C610C | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C6110 | 38 80 01 21 */	li r4, 0x121
/* 813C6114 | 48 00 30 3D */	bl anmTextFadein__Q33ipl5scene12SavedataEditFUl
/* 813C6118 | 38 00 00 1A */	li r0, 0x1a
/* 813C611C | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C6120 | 48 00 00 64 */	b .L_813C6184
.L_813C6124:
/* 813C6124 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C6128 | 38 80 00 97 */	li r4, 0x97
/* 813C612C | 48 00 30 25 */	bl anmTextFadein__Q33ipl5scene12SavedataEditFUl
/* 813C6130 | 38 00 00 1A */	li r0, 0x1a
/* 813C6134 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C6138 | 48 00 00 4C */	b .L_813C6184
.L_813C613C:
/* 813C613C | 7F E3 FB 78 */	mr r3, r31
/* 813C6140 | 38 80 00 01 */	li r4, 0x1
/* 813C6144 | 4B FF EB 41 */	bl start_process__Q33ipl5scene6MemoryFi
/* 813C6148 | 80 9F 00 BC */	lwz r4, 0xbc(r31)
/* 813C614C | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813C6150 | 80 84 00 40 */	lwz r4, 0x40(r4)
/* 813C6154 | 80 84 01 00 */	lwz r4, 0x100(r4)
/* 813C6158 | 4B FE 39 5D */	bl cmdCopySaveSDToNand__Q33ipl5scene17NandSDCardManagerFUl
/* 813C615C | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C6160 | 38 80 01 11 */	li r4, 0x111
/* 813C6164 | 48 00 2F ED */	bl anmTextFadein__Q33ipl5scene12SavedataEditFUl
/* 813C6168 | 48 00 00 14 */	b .L_813C617C
.L_813C616C:
/* 813C616C | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C6170 | 48 00 2F 0D */	bl anmSelectFadein__Q33ipl5scene12SavedataEditFv
/* 813C6174 | 38 00 00 0C */	li r0, 0xc
/* 813C6178 | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813C617C:
/* 813C617C | 7F E3 FB 78 */	mr r3, r31
/* 813C6180 | 4B FF E3 E9 */	bl update_sdcard_slot__Q33ipl5scene6MemoryFv
.L_813C6184:
/* 813C6184 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C6188 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C618C | 7C 08 03 A6 */	mtlr r0
/* 813C6190 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C6194 | 4E 80 00 20 */	blr
.endfn on_verify_copy__Q33ipl5scene6MemoryFv

# .text:0x25CC | 0x813C6198 | size: 0xC4
# ipl::scene::Memory::on_verify_del()
.fn on_verify_del__Q33ipl5scene6MemoryFv, global
/* 813C6198 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C619C | 7C 08 02 A6 */	mflr r0
/* 813C61A0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C61A4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C61A8 | 7C 7F 1B 78 */	mr r31, r3
/* 813C61AC | 80 A3 00 68 */	lwz r5, 0x68(r3)
/* 813C61B0 | 80 05 00 3C */	lwz r0, 0x3c(r5)
/* 813C61B4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C61B8 | 40 82 00 90 */	bne .L_813C6248
/* 813C61BC | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813C61C0 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813C61C4 | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 813C61C8 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 813C61CC | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813C61D0 | 41 82 00 14 */	beq .L_813C61E4
/* 813C61D4 | 40 80 00 6C */	bge .L_813C6240
/* 813C61D8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813C61DC | 40 80 00 54 */	bge .L_813C6230
/* 813C61E0 | 48 00 00 60 */	b .L_813C6240
.L_813C61E4:
/* 813C61E4 | 38 80 00 02 */	li r4, 0x2
/* 813C61E8 | 4B FF EA 9D */	bl start_process__Q33ipl5scene6MemoryFi
/* 813C61EC | 80 1F 00 B8 */	lwz r0, 0xb8(r31)
/* 813C61F0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C61F4 | 40 82 00 20 */	bne .L_813C6214
/* 813C61F8 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813C61FC | 80 9F 00 BC */	lwz r4, 0xbc(r31)
/* 813C6200 | 4B FE 3A 45 */	bl cmdDelNandSave__Q33ipl5scene17NandSDCardManagerFPQ33ipl5scene11SavedataBox
/* 813C6204 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C6208 | 38 80 00 FB */	li r4, 0xfb
/* 813C620C | 48 00 2F 45 */	bl anmTextFadein__Q33ipl5scene12SavedataEditFUl
/* 813C6210 | 48 00 00 30 */	b .L_813C6240
.L_813C6214:
/* 813C6214 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813C6218 | 80 9F 00 BC */	lwz r4, 0xbc(r31)
/* 813C621C | 4B FE 3A 81 */	bl cmdDelSDSave__Q33ipl5scene17NandSDCardManagerFPQ33ipl5scene11SavedataBox
/* 813C6220 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C6224 | 38 80 01 3A */	li r4, 0x13a
/* 813C6228 | 48 00 2F 29 */	bl anmTextFadein__Q33ipl5scene12SavedataEditFUl
/* 813C622C | 48 00 00 14 */	b .L_813C6240
.L_813C6230:
/* 813C6230 | 7C A3 2B 78 */	mr r3, r5
/* 813C6234 | 48 00 2E 49 */	bl anmSelectFadein__Q33ipl5scene12SavedataEditFv
/* 813C6238 | 38 00 00 0C */	li r0, 0xc
/* 813C623C | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813C6240:
/* 813C6240 | 7F E3 FB 78 */	mr r3, r31
/* 813C6244 | 4B FF E3 25 */	bl update_sdcard_slot__Q33ipl5scene6MemoryFv
.L_813C6248:
/* 813C6248 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C624C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C6250 | 7C 08 03 A6 */	mtlr r0
/* 813C6254 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C6258 | 4E 80 00 20 */	blr
.endfn on_verify_del__Q33ipl5scene6MemoryFv

# .text:0x2690 | 0x813C625C | size: 0xA0
# ipl::scene::Memory::on_verify_format()
.fn on_verify_format__Q33ipl5scene6MemoryFv, global
/* 813C625C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C6260 | 7C 08 02 A6 */	mflr r0
/* 813C6264 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C6268 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C626C | 7C 7F 1B 78 */	mr r31, r3
/* 813C6270 | 80 83 00 68 */	lwz r4, 0x68(r3)
/* 813C6274 | 80 04 00 3C */	lwz r0, 0x3c(r4)
/* 813C6278 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C627C | 40 82 00 6C */	bne .L_813C62E8
/* 813C6280 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813C6284 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813C6288 | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 813C628C | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 813C6290 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813C6294 | 41 82 00 14 */	beq .L_813C62A8
/* 813C6298 | 40 80 00 50 */	bge .L_813C62E8
/* 813C629C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813C62A0 | 40 80 00 1C */	bge .L_813C62BC
/* 813C62A4 | 48 00 00 44 */	b .L_813C62E8
.L_813C62A8:
/* 813C62A8 | 38 80 00 03 */	li r4, 0x3
/* 813C62AC | 4B FF E9 D9 */	bl start_process__Q33ipl5scene6MemoryFi
/* 813C62B0 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813C62B4 | 4B FE 36 D1 */	bl cmdSDFormat__Q33ipl5scene17NandSDCardManagerFv
/* 813C62B8 | 48 00 00 30 */	b .L_813C62E8
.L_813C62BC:
/* 813C62BC | 80 03 00 B8 */	lwz r0, 0xb8(r3)
/* 813C62C0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C62C4 | 40 82 00 10 */	bne .L_813C62D4
/* 813C62C8 | 38 00 00 0B */	li r0, 0xb
/* 813C62CC | 90 03 00 54 */	stw r0, 0x54(r3)
/* 813C62D0 | 48 00 00 18 */	b .L_813C62E8
.L_813C62D4:
/* 813C62D4 | 80 63 00 60 */	lwz r3, 0x60(r3)
/* 813C62D8 | 38 80 00 38 */	li r4, 0x38
/* 813C62DC | 48 00 15 75 */	bl anmTextFadein__Q33ipl5scene12SavedataBaseFUl
/* 813C62E0 | 38 00 00 16 */	li r0, 0x16
/* 813C62E4 | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813C62E8:
/* 813C62E8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C62EC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C62F0 | 7C 08 03 A6 */	mtlr r0
/* 813C62F4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C62F8 | 4E 80 00 20 */	blr
.endfn on_verify_format__Q33ipl5scene6MemoryFv

# .text:0x2730 | 0x813C62FC | size: 0x80
# ipl::scene::Memory::on_end_format()
.fn on_end_format__Q33ipl5scene6MemoryFv, global
/* 813C62FC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C6300 | 7C 08 02 A6 */	mflr r0
/* 813C6304 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813C6308 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C630C | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813C6310 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C6314 | 7C 7F 1B 78 */	mr r31, r3
/* 813C6318 | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 813C631C | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 813C6320 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C6324 | 40 82 00 44 */	bne .L_813C6368
/* 813C6328 | 80 03 00 B8 */	lwz r0, 0xb8(r3)
/* 813C632C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C6330 | 40 82 00 10 */	bne .L_813C6340
/* 813C6334 | 38 00 00 0B */	li r0, 0xb
/* 813C6338 | 90 03 00 54 */	stw r0, 0x54(r3)
/* 813C633C | 48 00 00 2C */	b .L_813C6368
.L_813C6340:
/* 813C6340 | 80 63 00 78 */	lwz r3, 0x78(r3)
/* 813C6344 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813C6348 | 4B F8 25 3D */	bl get_sd_state__Q23ipl12NandSDWorkerFv
/* 813C634C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C6350 | 41 82 00 18 */	beq .L_813C6368
/* 813C6354 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813C6358 | 38 80 00 38 */	li r4, 0x38
/* 813C635C | 48 00 14 F5 */	bl anmTextFadein__Q33ipl5scene12SavedataBaseFUl
/* 813C6360 | 38 00 00 16 */	li r0, 0x16
/* 813C6364 | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813C6368:
/* 813C6368 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C636C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C6370 | 7C 08 03 A6 */	mtlr r0
/* 813C6374 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C6378 | 4E 80 00 20 */	blr
.endfn on_end_format__Q33ipl5scene6MemoryFv

# .text:0x27B0 | 0x813C637C | size: 0x48
# ipl::scene::Memory::on_sd_mount()
.fn on_sd_mount__Q33ipl5scene6MemoryFv, global
/* 813C637C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C6380 | 7C 08 02 A6 */	mflr r0
/* 813C6384 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C6388 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C638C | 7C 7F 1B 78 */	mr r31, r3
/* 813C6390 | 80 63 00 78 */	lwz r3, 0x78(r3)
/* 813C6394 | 4B FD BD DD */	bl isWorking__Q33ipl5scene17NandSDCardManagerFv
/* 813C6398 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C639C | 40 82 00 14 */	bne .L_813C63B0
/* 813C63A0 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813C63A4 | 4B FE 39 E5 */	bl cmdListSD__Q33ipl5scene17NandSDCardManagerFv
/* 813C63A8 | 38 00 00 07 */	li r0, 0x7
/* 813C63AC | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813C63B0:
/* 813C63B0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C63B4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C63B8 | 7C 08 03 A6 */	mtlr r0
/* 813C63BC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C63C0 | 4E 80 00 20 */	blr
.endfn on_sd_mount__Q33ipl5scene6MemoryFv

# .text:0x27F8 | 0x813C63C4 | size: 0xA8
# ipl::scene::Memory::on_sd_message1st()
.fn on_sd_message1st__Q33ipl5scene6MemoryFv, global
/* 813C63C4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C63C8 | 7C 08 02 A6 */	mflr r0
/* 813C63CC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C63D0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C63D4 | 7C 7F 1B 78 */	mr r31, r3
/* 813C63D8 | 80 83 00 68 */	lwz r4, 0x68(r3)
/* 813C63DC | 80 04 00 3C */	lwz r0, 0x3c(r4)
/* 813C63E0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C63E4 | 40 82 00 74 */	bne .L_813C6458
/* 813C63E8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C63EC | 38 80 00 16 */	li r4, 0x16
/* 813C63F0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C63F4 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813C63F8 | 48 04 4D 41 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813C63FC | 48 04 13 6D */	bl update__Q33ipl5scene13SettingButtonFv
/* 813C6400 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C6404 | 41 82 00 14 */	beq .L_813C6418
/* 813C6408 | 7F E3 FB 78 */	mr r3, r31
/* 813C640C | 38 80 00 01 */	li r4, 0x1
/* 813C6410 | 4B FF F0 9D */	bl onTrigButton__Q33ipl5scene6MemoryFb
/* 813C6414 | 48 00 00 44 */	b .L_813C6458
.L_813C6418:
/* 813C6418 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813C641C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813C6420 | 4B F8 24 65 */	bl get_sd_state__Q23ipl12NandSDWorkerFv
/* 813C6424 | 80 1F 00 C4 */	lwz r0, 0xc4(r31)
/* 813C6428 | 7C 00 18 00 */	cmpw r0, r3
/* 813C642C | 41 82 00 24 */	beq .L_813C6450
/* 813C6430 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813C6434 | 80 03 00 34 */	lwz r0, 0x34(r3)
/* 813C6438 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C643C | 40 82 00 14 */	bne .L_813C6450
/* 813C6440 | 48 00 14 65 */	bl anmTextFadeout__Q33ipl5scene12SavedataBaseFv
/* 813C6444 | 38 00 00 17 */	li r0, 0x17
/* 813C6448 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C644C | 48 00 00 0C */	b .L_813C6458
.L_813C6450:
/* 813C6450 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 813C6454 | 48 00 11 FD */	bl update__Q33ipl5scene12SavedataBaseFv
.L_813C6458:
/* 813C6458 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C645C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C6460 | 7C 08 03 A6 */	mtlr r0
/* 813C6464 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C6468 | 4E 80 00 20 */	blr
.endfn on_sd_message1st__Q33ipl5scene6MemoryFv

# .text:0x28A0 | 0x813C646C | size: 0x1C
# ipl::scene::Memory::on_sd_message2nd()
.fn on_sd_message2nd__Q33ipl5scene6MemoryFv, global
/* 813C646C | 80 83 00 60 */	lwz r4, 0x60(r3)
/* 813C6470 | 80 04 00 34 */	lwz r0, 0x34(r4)
/* 813C6474 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C6478 | 4C 82 00 20 */	bnelr
/* 813C647C | 38 00 00 07 */	li r0, 0x7
/* 813C6480 | 90 03 00 54 */	stw r0, 0x54(r3)
/* 813C6484 | 4E 80 00 20 */	blr
.endfn on_sd_message2nd__Q33ipl5scene6MemoryFv

# .text:0x28BC | 0x813C6488 | size: 0x68
# ipl::scene::Memory::on_sd_message3rd()
.fn on_sd_message3rd__Q33ipl5scene6MemoryFv, global
/* 813C6488 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C648C | 7C 08 02 A6 */	mflr r0
/* 813C6490 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C6494 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C6498 | 7C 7F 1B 78 */	mr r31, r3
/* 813C649C | 80 83 00 60 */	lwz r4, 0x60(r3)
/* 813C64A0 | 80 04 00 34 */	lwz r0, 0x34(r4)
/* 813C64A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C64A8 | 40 82 00 34 */	bne .L_813C64DC
/* 813C64AC | 80 03 00 B8 */	lwz r0, 0xb8(r3)
/* 813C64B0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C64B4 | 40 82 00 18 */	bne .L_813C64CC
/* 813C64B8 | 7C 83 23 78 */	mr r3, r4
/* 813C64BC | 48 00 12 45 */	bl anmChangeWiitoSD__Q33ipl5scene12SavedataBaseFv
/* 813C64C0 | 38 00 00 07 */	li r0, 0x7
/* 813C64C4 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C64C8 | 48 00 00 14 */	b .L_813C64DC
.L_813C64CC:
/* 813C64CC | 7C 83 23 78 */	mr r3, r4
/* 813C64D0 | 48 00 12 71 */	bl anmChangeSDtoWii__Q33ipl5scene12SavedataBaseFv
/* 813C64D4 | 38 00 00 07 */	li r0, 0x7
/* 813C64D8 | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813C64DC:
/* 813C64DC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C64E0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C64E4 | 7C 08 03 A6 */	mtlr r0
/* 813C64E8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C64EC | 4E 80 00 20 */	blr
.endfn on_sd_message3rd__Q33ipl5scene6MemoryFv

# .text:0x2924 | 0x813C64F0 | size: 0x40C
# ipl::scene::Memory::on_process()
.fn on_process__Q33ipl5scene6MemoryFv, global
/* 813C64F0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C64F4 | 7C 08 02 A6 */	mflr r0
/* 813C64F8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C64FC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C6500 | 7C 7F 1B 78 */	mr r31, r3
/* 813C6504 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813C6508 | 80 63 00 78 */	lwz r3, 0x78(r3)
/* 813C650C | 4B FD BC 65 */	bl isWorking__Q33ipl5scene17NandSDCardManagerFv
/* 813C6510 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C6514 | 40 82 03 D0 */	bne .L_813C68E4
/* 813C6518 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C651C | 80 03 00 3C */	lwz r0, 0x3c(r3)
/* 813C6520 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C6524 | 40 82 03 C0 */	bne .L_813C68E4
/* 813C6528 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813C652C | 4B FE 30 31 */	bl getAsyncResult__Q33ipl5scene17NandSDCardManagerFv
/* 813C6530 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C6534 | 7C 64 1B 78 */	mr r4, r3
/* 813C6538 | 40 82 01 44 */	bne .L_813C667C
/* 813C653C | 80 1F 00 CC */	lwz r0, 0xcc(r31)
/* 813C6540 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813C6544 | 40 82 00 10 */	bne .L_813C6554
/* 813C6548 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C654C | 48 00 2A 91 */	bl anmHideBtn0Dialog__Q33ipl5scene12SavedataEditFv
/* 813C6550 | 48 00 00 A0 */	b .L_813C65F0
.L_813C6554:
/* 813C6554 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813C6558 | 40 82 00 14 */	bne .L_813C656C
/* 813C655C | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C6560 | 38 80 01 07 */	li r4, 0x107
/* 813C6564 | 48 00 2B ED */	bl anmTextFadein__Q33ipl5scene12SavedataEditFUl
/* 813C6568 | 48 00 00 88 */	b .L_813C65F0
.L_813C656C:
/* 813C656C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813C6570 | 40 82 00 14 */	bne .L_813C6584
/* 813C6574 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C6578 | 38 80 00 F8 */	li r4, 0xf8
/* 813C657C | 48 00 2B D5 */	bl anmTextFadein__Q33ipl5scene12SavedataEditFUl
/* 813C6580 | 48 00 00 70 */	b .L_813C65F0
.L_813C6584:
/* 813C6584 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813C6588 | 40 82 00 68 */	bne .L_813C65F0
/* 813C658C | 80 7F 00 BC */	lwz r3, 0xbc(r31)
/* 813C6590 | 80 63 00 40 */	lwz r3, 0x40(r3)
/* 813C6594 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813C6598 | 80 03 F1 A8 */	lwz r0, -0xe58(r3)
/* 813C659C | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813C65A0 | 41 82 00 44 */	beq .L_813C65E4
/* 813C65A4 | 40 80 00 10 */	bge .L_813C65B4
/* 813C65A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C65AC | 41 82 00 18 */	beq .L_813C65C4
/* 813C65B0 | 48 00 00 40 */	b .L_813C65F0
.L_813C65B4:
/* 813C65B4 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813C65B8 | 41 82 00 2C */	beq .L_813C65E4
/* 813C65BC | 40 80 00 34 */	bge .L_813C65F0
/* 813C65C0 | 48 00 00 14 */	b .L_813C65D4
.L_813C65C4:
/* 813C65C4 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C65C8 | 38 80 01 0D */	li r4, 0x10d
/* 813C65CC | 48 00 2B 85 */	bl anmTextFadein__Q33ipl5scene12SavedataEditFUl
/* 813C65D0 | 48 00 00 20 */	b .L_813C65F0
.L_813C65D4:
/* 813C65D4 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C65D8 | 38 80 01 32 */	li r4, 0x132
/* 813C65DC | 48 00 2B 75 */	bl anmTextFadein__Q33ipl5scene12SavedataEditFUl
/* 813C65E0 | 48 00 00 10 */	b .L_813C65F0
.L_813C65E4:
/* 813C65E4 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C65E8 | 38 80 01 34 */	li r4, 0x134
/* 813C65EC | 48 00 2B 65 */	bl anmTextFadein__Q33ipl5scene12SavedataEditFUl
.L_813C65F0:
/* 813C65F0 | 80 1F 00 CC */	lwz r0, 0xcc(r31)
/* 813C65F4 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813C65F8 | 41 82 00 0C */	beq .L_813C6604
/* 813C65FC | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813C6600 | 40 82 02 D4 */	bne .L_813C68D4
.L_813C6604:
/* 813C6604 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C6608 | 48 00 2C 91 */	bl anmClear__Q33ipl5scene12SavedataEditFv
/* 813C660C | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813C6610 | 4B FE 36 E1 */	bl cmdCleanQueue__Q33ipl5scene17NandSDCardManagerFv
/* 813C6614 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813C6618 | 4B FE 15 9D */	bl calc__Q33ipl5scene17NandSDCardManagerFv
/* 813C661C | 38 80 00 00 */	li r4, 0x0
/* 813C6620 | 3B C0 00 00 */	li r30, 0x0
/* 813C6624 | 48 00 00 08 */	b .L_813C662C
.L_813C6628:
/* 813C6628 | 93 C3 00 40 */	stw r30, 0x40(r3)
.L_813C662C:
/* 813C662C | 38 7F 00 6C */	addi r3, r31, 0x6c
/* 813C6630 | 48 14 BC AD */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813C6634 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C6638 | 7C 64 1B 78 */	mr r4, r3
/* 813C663C | 40 82 FF EC */	bne .L_813C6628
/* 813C6640 | 80 1F 00 B8 */	lwz r0, 0xb8(r31)
/* 813C6644 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C6648 | 40 82 00 1C */	bne .L_813C6664
/* 813C664C | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813C6650 | 4B FE 33 81 */	bl cmdGetNandFree__Q33ipl5scene17NandSDCardManagerFv
/* 813C6654 | 7F E3 FB 78 */	mr r3, r31
/* 813C6658 | 38 80 00 01 */	li r4, 0x1
/* 813C665C | 4B FF DE A1 */	bl send_getbanner_cmd__Q33ipl5scene6MemoryFb
/* 813C6660 | 48 00 02 74 */	b .L_813C68D4
.L_813C6664:
/* 813C6664 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813C6668 | 4B FE 33 B5 */	bl cmdGetSDFree__Q33ipl5scene17NandSDCardManagerFv
/* 813C666C | 7F E3 FB 78 */	mr r3, r31
/* 813C6670 | 38 80 00 00 */	li r4, 0x0
/* 813C6674 | 4B FF DE 89 */	bl send_getbanner_cmd__Q33ipl5scene6MemoryFb
/* 813C6678 | 48 00 02 5C */	b .L_813C68D4
.L_813C667C:
/* 813C667C | 40 81 00 34 */	ble .L_813C66B0
/* 813C6680 | 54 60 07 FF */	clrlwi. r0, r3, 31
/* 813C6684 | 41 82 00 2C */	beq .L_813C66B0
/* 813C6688 | 80 1F 00 CC */	lwz r0, 0xcc(r31)
/* 813C668C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813C6690 | 40 82 00 20 */	bne .L_813C66B0
/* 813C6694 | 80 1F 00 B8 */	lwz r0, 0xb8(r31)
/* 813C6698 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C669C | 40 82 00 14 */	bne .L_813C66B0
/* 813C66A0 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C66A4 | 38 80 01 2B */	li r4, 0x12b
/* 813C66A8 | 48 00 2A A9 */	bl anmTextFadein__Q33ipl5scene12SavedataEditFUl
/* 813C66AC | 48 00 02 28 */	b .L_813C68D4
.L_813C66B0:
/* 813C66B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C66B4 | 40 81 00 6C */	ble .L_813C6720
/* 813C66B8 | 54 60 07 BD */	rlwinm. r0, r3, 0, 30, 30
/* 813C66BC | 41 82 00 64 */	beq .L_813C6720
/* 813C66C0 | 80 1F 00 CC */	lwz r0, 0xcc(r31)
/* 813C66C4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813C66C8 | 40 82 00 58 */	bne .L_813C6720
/* 813C66CC | 80 1F 00 B8 */	lwz r0, 0xb8(r31)
/* 813C66D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C66D4 | 40 82 00 4C */	bne .L_813C6720
/* 813C66D8 | 80 7F 00 BC */	lwz r3, 0xbc(r31)
/* 813C66DC | 80 63 00 40 */	lwz r3, 0x40(r3)
/* 813C66E0 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813C66E4 | 80 03 F1 A8 */	lwz r0, -0xe58(r3)
/* 813C66E8 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813C66EC | 41 82 00 24 */	beq .L_813C6710
/* 813C66F0 | 40 80 00 20 */	bge .L_813C6710
/* 813C66F4 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813C66F8 | 40 80 00 08 */	bge .L_813C6700
/* 813C66FC | 48 00 00 14 */	b .L_813C6710
.L_813C6700:
/* 813C6700 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C6704 | 38 80 01 2D */	li r4, 0x12d
/* 813C6708 | 48 00 2A 49 */	bl anmTextFadein__Q33ipl5scene12SavedataEditFUl
/* 813C670C | 48 00 01 C8 */	b .L_813C68D4
.L_813C6710:
/* 813C6710 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C6714 | 38 80 01 2A */	li r4, 0x12a
/* 813C6718 | 48 00 2A 39 */	bl anmTextFadein__Q33ipl5scene12SavedataEditFUl
/* 813C671C | 48 00 01 B8 */	b .L_813C68D4
.L_813C6720:
/* 813C6720 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C6724 | 40 81 00 34 */	ble .L_813C6758
/* 813C6728 | 54 60 07 7B */	rlwinm. r0, r3, 0, 29, 29
/* 813C672C | 41 82 00 2C */	beq .L_813C6758
/* 813C6730 | 80 1F 00 CC */	lwz r0, 0xcc(r31)
/* 813C6734 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813C6738 | 40 82 00 20 */	bne .L_813C6758
/* 813C673C | 80 1F 00 B8 */	lwz r0, 0xb8(r31)
/* 813C6740 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C6744 | 40 82 00 14 */	bne .L_813C6758
/* 813C6748 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C674C | 38 80 01 2D */	li r4, 0x12d
/* 813C6750 | 48 00 2A 01 */	bl anmTextFadein__Q33ipl5scene12SavedataEditFUl
/* 813C6754 | 48 00 01 80 */	b .L_813C68D4
.L_813C6758:
/* 813C6758 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C675C | 40 81 00 38 */	ble .L_813C6794
/* 813C6760 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813C6764 | 40 82 00 30 */	bne .L_813C6794
/* 813C6768 | 80 1F 00 B8 */	lwz r0, 0xb8(r31)
/* 813C676C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813C6770 | 40 82 00 24 */	bne .L_813C6794
/* 813C6774 | 80 1F 00 CC */	lwz r0, 0xcc(r31)
/* 813C6778 | 38 80 01 33 */	li r4, 0x133
/* 813C677C | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C6780 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813C6784 | 40 82 00 08 */	bne .L_813C678C
/* 813C6788 | 38 80 01 23 */	li r4, 0x123
.L_813C678C:
/* 813C678C | 48 00 29 C5 */	bl anmTextFadein__Q33ipl5scene12SavedataEditFUl
/* 813C6790 | 48 00 01 44 */	b .L_813C68D4
.L_813C6794:
/* 813C6794 | 2C 03 FF FA */	cmpwi r3, -0x6
/* 813C6798 | 40 82 00 20 */	bne .L_813C67B8
/* 813C679C | 80 1F 00 B8 */	lwz r0, 0xb8(r31)
/* 813C67A0 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C67A4 | 30 00 FF FF */	subic r0, r0, 0x1
/* 813C67A8 | 7C 80 01 10 */	subfe r4, r0, r0
/* 813C67AC | 38 84 01 28 */	addi r4, r4, 0x128
/* 813C67B0 | 48 00 29 A1 */	bl anmTextFadein__Q33ipl5scene12SavedataEditFUl
/* 813C67B4 | 48 00 01 20 */	b .L_813C68D4
.L_813C67B8:
/* 813C67B8 | 2C 03 FF F9 */	cmpwi r3, -0x7
/* 813C67BC | 40 82 00 24 */	bne .L_813C67E0
/* 813C67C0 | 80 1F 00 B8 */	lwz r0, 0xb8(r31)
/* 813C67C4 | 38 80 01 12 */	li r4, 0x112
/* 813C67C8 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C67CC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C67D0 | 40 82 00 08 */	bne .L_813C67D8
/* 813C67D4 | 38 80 01 16 */	li r4, 0x116
.L_813C67D8:
/* 813C67D8 | 48 00 29 79 */	bl anmTextFadein__Q33ipl5scene12SavedataEditFUl
/* 813C67DC | 48 00 00 F8 */	b .L_813C68D4
.L_813C67E0:
/* 813C67E0 | 2C 03 FF F4 */	cmpwi r3, -0xc
/* 813C67E4 | 40 82 00 14 */	bne .L_813C67F8
/* 813C67E8 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C67EC | 38 80 01 29 */	li r4, 0x129
/* 813C67F0 | 48 00 29 61 */	bl anmTextFadein__Q33ipl5scene12SavedataEditFUl
/* 813C67F4 | 48 00 00 E0 */	b .L_813C68D4
.L_813C67F8:
/* 813C67F8 | 2C 03 FF F2 */	cmpwi r3, -0xe
/* 813C67FC | 40 82 00 24 */	bne .L_813C6820
/* 813C6800 | 80 1F 00 CC */	lwz r0, 0xcc(r31)
/* 813C6804 | 38 80 01 36 */	li r4, 0x136
/* 813C6808 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C680C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813C6810 | 40 82 00 08 */	bne .L_813C6818
/* 813C6814 | 38 80 01 24 */	li r4, 0x124
.L_813C6818:
/* 813C6818 | 48 00 29 39 */	bl anmTextFadein__Q33ipl5scene12SavedataEditFUl
/* 813C681C | 48 00 00 B8 */	b .L_813C68D4
.L_813C6820:
/* 813C6820 | 2C 03 FF F3 */	cmpwi r3, -0xd
/* 813C6824 | 40 82 00 14 */	bne .L_813C6838
/* 813C6828 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C682C | 38 80 01 1C */	li r4, 0x11c
/* 813C6830 | 48 00 29 21 */	bl anmTextFadein__Q33ipl5scene12SavedataEditFUl
/* 813C6834 | 48 00 00 A0 */	b .L_813C68D4
.L_813C6838:
/* 813C6838 | 2C 03 FF F1 */	cmpwi r3, -0xf
/* 813C683C | 40 82 00 24 */	bne .L_813C6860
/* 813C6840 | 80 1F 00 CC */	lwz r0, 0xcc(r31)
/* 813C6844 | 38 80 01 35 */	li r4, 0x135
/* 813C6848 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C684C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813C6850 | 40 82 00 08 */	bne .L_813C6858
/* 813C6854 | 38 80 01 2E */	li r4, 0x12e
.L_813C6858:
/* 813C6858 | 48 00 28 F9 */	bl anmTextFadein__Q33ipl5scene12SavedataEditFUl
/* 813C685C | 48 00 00 78 */	b .L_813C68D4
.L_813C6860:
/* 813C6860 | 3C 60 81 65 */	lis r3, lbl_816511DD@ha
/* 813C6864 | 38 63 11 DD */	addi r3, r3, lbl_816511DD@l
/* 813C6868 | 4C C6 31 82 */	crclr cr1eq
/* 813C686C | 48 16 7E 35 */	bl OSReport
/* 813C6870 | 80 1F 00 CC */	lwz r0, 0xcc(r31)
/* 813C6874 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813C6878 | 41 82 00 44 */	beq .L_813C68BC
/* 813C687C | 40 80 00 14 */	bge .L_813C6890
/* 813C6880 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813C6884 | 41 82 00 18 */	beq .L_813C689C
/* 813C6888 | 40 80 00 24 */	bge .L_813C68AC
/* 813C688C | 48 00 00 48 */	b .L_813C68D4
.L_813C6890:
/* 813C6890 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813C6894 | 40 80 00 40 */	bge .L_813C68D4
/* 813C6898 | 48 00 00 30 */	b .L_813C68C8
.L_813C689C:
/* 813C689C | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C68A0 | 38 80 00 E3 */	li r4, 0xe3
/* 813C68A4 | 48 00 28 AD */	bl anmTextFadein__Q33ipl5scene12SavedataEditFUl
/* 813C68A8 | 48 00 00 2C */	b .L_813C68D4
.L_813C68AC:
/* 813C68AC | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C68B0 | 38 80 00 E5 */	li r4, 0xe5
/* 813C68B4 | 48 00 28 9D */	bl anmTextFadein__Q33ipl5scene12SavedataEditFUl
/* 813C68B8 | 48 00 00 1C */	b .L_813C68D4
.L_813C68BC:
/* 813C68BC | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C68C0 | 48 00 27 1D */	bl anmHideBtn0Dialog__Q33ipl5scene12SavedataEditFv
/* 813C68C4 | 48 00 00 10 */	b .L_813C68D4
.L_813C68C8:
/* 813C68C8 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C68CC | 38 80 00 D7 */	li r4, 0xd7
/* 813C68D0 | 48 00 28 81 */	bl anmTextFadein__Q33ipl5scene12SavedataEditFUl
.L_813C68D4:
/* 813C68D4 | 7F E3 FB 78 */	mr r3, r31
/* 813C68D8 | 4B FF E4 39 */	bl stop_process__Q33ipl5scene6MemoryFv
/* 813C68DC | 38 00 00 1A */	li r0, 0x1a
/* 813C68E0 | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813C68E4:
/* 813C68E4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C68E8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C68EC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813C68F0 | 7C 08 03 A6 */	mtlr r0
/* 813C68F4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C68F8 | 4E 80 00 20 */	blr
.endfn on_process__Q33ipl5scene6MemoryFv

# .text:0x2D30 | 0x813C68FC | size: 0xB0
# ipl::scene::Memory::on_end_process()
.fn on_end_process__Q33ipl5scene6MemoryFv, global
/* 813C68FC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C6900 | 7C 08 02 A6 */	mflr r0
/* 813C6904 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C6908 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C690C | 7C 7F 1B 78 */	mr r31, r3
/* 813C6910 | 80 83 00 68 */	lwz r4, 0x68(r3)
/* 813C6914 | 80 04 00 3C */	lwz r0, 0x3c(r4)
/* 813C6918 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C691C | 40 82 00 7C */	bne .L_813C6998
/* 813C6920 | 80 03 00 CC */	lwz r0, 0xcc(r3)
/* 813C6924 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813C6928 | 40 82 00 58 */	bne .L_813C6980
/* 813C692C | 80 63 00 78 */	lwz r3, 0x78(r3)
/* 813C6930 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813C6934 | 4B F8 1F 51 */	bl get_sd_state__Q23ipl12NandSDWorkerFv
/* 813C6938 | 2C 03 00 06 */	cmpwi r3, 0x6
/* 813C693C | 40 82 00 24 */	bne .L_813C6960
/* 813C6940 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C6944 | 38 80 00 36 */	li r4, 0x36
/* 813C6948 | 38 A0 00 00 */	li r5, 0x0
/* 813C694C | 38 C0 00 00 */	li r6, 0x0
/* 813C6950 | 48 00 26 CD */	bl anmShowBtn0Dialog__Q33ipl5scene12SavedataEditFUlbb
/* 813C6954 | 38 00 00 14 */	li r0, 0x14
/* 813C6958 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C695C | 48 00 00 34 */	b .L_813C6990
.L_813C6960:
/* 813C6960 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C6964 | 38 80 00 37 */	li r4, 0x37
/* 813C6968 | 38 A0 00 00 */	li r5, 0x0
/* 813C696C | 38 C0 00 00 */	li r6, 0x0
/* 813C6970 | 48 00 26 AD */	bl anmShowBtn0Dialog__Q33ipl5scene12SavedataEditFUlbb
/* 813C6974 | 38 00 00 14 */	li r0, 0x14
/* 813C6978 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C697C | 48 00 00 14 */	b .L_813C6990
.L_813C6980:
/* 813C6980 | 7C 83 23 78 */	mr r3, r4
/* 813C6984 | 48 00 28 11 */	bl anmTextFadeout__Q33ipl5scene12SavedataEditFv
/* 813C6988 | 38 00 00 0E */	li r0, 0xe
/* 813C698C | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813C6990:
/* 813C6990 | 38 00 00 00 */	li r0, 0x0
/* 813C6994 | 90 1F 00 CC */	stw r0, 0xcc(r31)
.L_813C6998:
/* 813C6998 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C699C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C69A0 | 7C 08 03 A6 */	mtlr r0
/* 813C69A4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C69A8 | 4E 80 00 20 */	blr
.endfn on_end_process__Q33ipl5scene6MemoryFv

# .text:0x2DE0 | 0x813C69AC | size: 0xD8
# ipl::scene::Memory::on_exist_save()
.fn on_exist_save__Q33ipl5scene6MemoryFv, global
/* 813C69AC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C69B0 | 7C 08 02 A6 */	mflr r0
/* 813C69B4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C69B8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C69BC | 7C 7F 1B 78 */	mr r31, r3
/* 813C69C0 | 80 63 00 78 */	lwz r3, 0x78(r3)
/* 813C69C4 | 4B FD B7 AD */	bl isWorking__Q33ipl5scene17NandSDCardManagerFv
/* 813C69C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C69CC | 40 82 00 A4 */	bne .L_813C6A70
/* 813C69D0 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813C69D4 | 4B FE 2B 89 */	bl getAsyncResult__Q33ipl5scene17NandSDCardManagerFv
/* 813C69D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C69DC | 40 82 00 58 */	bne .L_813C6A34
/* 813C69E0 | 80 1F 00 D0 */	lwz r0, 0xd0(r31)
/* 813C69E4 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813C69E8 | 41 82 00 2C */	beq .L_813C6A14
/* 813C69EC | 40 80 00 3C */	bge .L_813C6A28
/* 813C69F0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813C69F4 | 40 80 00 08 */	bge .L_813C69FC
/* 813C69F8 | 48 00 00 30 */	b .L_813C6A28
.L_813C69FC:
/* 813C69FC | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C6A00 | 38 80 01 05 */	li r4, 0x105
/* 813C6A04 | 48 00 26 39 */	bl anmShowS2Btn2Dialog__Q33ipl5scene12SavedataEditFUl
/* 813C6A08 | 38 00 00 11 */	li r0, 0x11
/* 813C6A0C | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C6A10 | 48 00 00 18 */	b .L_813C6A28
.L_813C6A14:
/* 813C6A14 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C6A18 | 38 80 01 0B */	li r4, 0x10b
/* 813C6A1C | 48 00 26 21 */	bl anmShowS2Btn2Dialog__Q33ipl5scene12SavedataEditFUl
/* 813C6A20 | 38 00 00 1E */	li r0, 0x1e
/* 813C6A24 | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813C6A28:
/* 813C6A28 | 38 00 00 00 */	li r0, 0x0
/* 813C6A2C | 90 1F 00 D0 */	stw r0, 0xd0(r31)
/* 813C6A30 | 48 00 00 40 */	b .L_813C6A70
.L_813C6A34:
/* 813C6A34 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813C6A38 | 4B FE 2B 25 */	bl getAsyncResult__Q33ipl5scene17NandSDCardManagerFv
/* 813C6A3C | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813C6A40 | 40 82 00 1C */	bne .L_813C6A5C
/* 813C6A44 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C6A48 | 38 80 01 27 */	li r4, 0x127
/* 813C6A4C | 48 00 26 C5 */	bl anmSelectFadeout__Q33ipl5scene12SavedataEditFUl
/* 813C6A50 | 38 00 00 0F */	li r0, 0xf
/* 813C6A54 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C6A58 | 48 00 00 18 */	b .L_813C6A70
.L_813C6A5C:
/* 813C6A5C | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C6A60 | 38 80 00 97 */	li r4, 0x97
/* 813C6A64 | 48 00 26 AD */	bl anmSelectFadeout__Q33ipl5scene12SavedataEditFUl
/* 813C6A68 | 38 00 00 0F */	li r0, 0xf
/* 813C6A6C | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813C6A70:
/* 813C6A70 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C6A74 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C6A78 | 7C 08 03 A6 */	mtlr r0
/* 813C6A7C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C6A80 | 4E 80 00 20 */	blr
.endfn on_exist_save__Q33ipl5scene6MemoryFv

# .text:0x2EB8 | 0x813C6A84 | size: 0x68
# ipl::scene::Memory::on_sd_mount_only()
.fn on_sd_mount_only__Q33ipl5scene6MemoryFv, global
/* 813C6A84 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C6A88 | 7C 08 02 A6 */	mflr r0
/* 813C6A8C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C6A90 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C6A94 | 7C 7F 1B 78 */	mr r31, r3
/* 813C6A98 | 80 63 00 78 */	lwz r3, 0x78(r3)
/* 813C6A9C | 4B FD B6 D5 */	bl isWorking__Q33ipl5scene17NandSDCardManagerFv
/* 813C6AA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C6AA4 | 40 82 00 34 */	bne .L_813C6AD8
/* 813C6AA8 | 80 1F 00 D0 */	lwz r0, 0xd0(r31)
/* 813C6AAC | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813C6AB0 | 41 82 00 20 */	beq .L_813C6AD0
/* 813C6AB4 | 40 80 00 24 */	bge .L_813C6AD8
/* 813C6AB8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813C6ABC | 40 80 00 08 */	bge .L_813C6AC4
/* 813C6AC0 | 48 00 00 18 */	b .L_813C6AD8
.L_813C6AC4:
/* 813C6AC4 | 38 00 00 09 */	li r0, 0x9
/* 813C6AC8 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C6ACC | 48 00 00 0C */	b .L_813C6AD8
.L_813C6AD0:
/* 813C6AD0 | 38 00 00 1D */	li r0, 0x1d
/* 813C6AD4 | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813C6AD8:
/* 813C6AD8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C6ADC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C6AE0 | 7C 08 03 A6 */	mtlr r0
/* 813C6AE4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C6AE8 | 4E 80 00 20 */	blr
.endfn on_sd_mount_only__Q33ipl5scene6MemoryFv

# .text:0x2F20 | 0x813C6AEC | size: 0x250
# ipl::scene::Memory::iplMemory_813C6AEC()
.fn iplMemory_813C6AEC__Q33ipl5scene6MemoryFv, global
/* 813C6AEC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C6AF0 | 7C 08 02 A6 */	mflr r0
/* 813C6AF4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C6AF8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C6AFC | 7C 7F 1B 78 */	mr r31, r3
/* 813C6B00 | 80 83 00 BC */	lwz r4, 0xbc(r3)
/* 813C6B04 | 80 84 00 40 */	lwz r4, 0x40(r4)
/* 813C6B08 | 3C 84 00 01 */	addis r4, r4, 0x1
/* 813C6B0C | 80 04 F1 A8 */	lwz r0, -0xe58(r4)
/* 813C6B10 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813C6B14 | 40 82 00 1C */	bne .L_813C6B30
/* 813C6B18 | 80 63 00 68 */	lwz r3, 0x68(r3)
/* 813C6B1C | 38 80 00 CD */	li r4, 0xcd
/* 813C6B20 | 48 00 25 F1 */	bl anmSelectFadeout__Q33ipl5scene12SavedataEditFUl
/* 813C6B24 | 38 00 00 0F */	li r0, 0xf
/* 813C6B28 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C6B2C | 48 00 01 FC */	b .L_813C6D28
.L_813C6B30:
/* 813C6B30 | 80 63 00 78 */	lwz r3, 0x78(r3)
/* 813C6B34 | 4B FD B6 3D */	bl isWorking__Q33ipl5scene17NandSDCardManagerFv
/* 813C6B38 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C6B3C | 40 82 01 EC */	bne .L_813C6D28
/* 813C6B40 | 80 1F 00 B8 */	lwz r0, 0xb8(r31)
/* 813C6B44 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C6B48 | 40 82 01 3C */	bne .L_813C6C84
/* 813C6B4C | 80 7F 00 BC */	lwz r3, 0xbc(r31)
/* 813C6B50 | 80 63 00 40 */	lwz r3, 0x40(r3)
/* 813C6B54 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813C6B58 | 80 03 F1 A8 */	lwz r0, -0xe58(r3)
/* 813C6B5C | 28 00 00 02 */	cmplwi r0, 0x2
/* 813C6B60 | 40 82 00 1C */	bne .L_813C6B7C
/* 813C6B64 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C6B68 | 38 80 01 37 */	li r4, 0x137
/* 813C6B6C | 48 00 25 A5 */	bl anmSelectFadeout__Q33ipl5scene12SavedataEditFUl
/* 813C6B70 | 38 00 00 0F */	li r0, 0xf
/* 813C6B74 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C6B78 | 48 00 01 B0 */	b .L_813C6D28
.L_813C6B7C:
/* 813C6B7C | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813C6B80 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813C6B84 | 4B F8 1D 01 */	bl get_sd_state__Q23ipl12NandSDWorkerFv
/* 813C6B88 | 2C 03 00 05 */	cmpwi r3, 0x5
/* 813C6B8C | 90 7F 00 C4 */	stw r3, 0xc4(r31)
/* 813C6B90 | 41 82 00 DC */	beq .L_813C6C6C
/* 813C6B94 | 40 80 00 1C */	bge .L_813C6BB0
/* 813C6B98 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 813C6B9C | 41 82 00 38 */	beq .L_813C6BD4
/* 813C6BA0 | 40 80 00 58 */	bge .L_813C6BF8
/* 813C6BA4 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813C6BA8 | 40 80 00 14 */	bge .L_813C6BBC
/* 813C6BAC | 48 00 00 C0 */	b .L_813C6C6C
.L_813C6BB0:
/* 813C6BB0 | 2C 03 00 07 */	cmpwi r3, 0x7
/* 813C6BB4 | 40 80 00 B8 */	bge .L_813C6C6C
/* 813C6BB8 | 48 00 00 58 */	b .L_813C6C10
.L_813C6BBC:
/* 813C6BBC | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C6BC0 | 38 80 01 21 */	li r4, 0x121
/* 813C6BC4 | 48 00 25 4D */	bl anmSelectFadeout__Q33ipl5scene12SavedataEditFUl
/* 813C6BC8 | 38 00 00 0F */	li r0, 0xf
/* 813C6BCC | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C6BD0 | 48 00 01 58 */	b .L_813C6D28
.L_813C6BD4:
/* 813C6BD4 | 3C 60 81 65 */	lis r3, lbl_816511D1@ha
/* 813C6BD8 | 38 63 11 D1 */	addi r3, r3, lbl_816511D1@l
/* 813C6BDC | 4C C6 31 82 */	crclr cr1eq
/* 813C6BE0 | 48 16 7A C1 */	bl OSReport
/* 813C6BE4 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813C6BE8 | 4B FE 2D 51 */	bl cmdSDMount__Q33ipl5scene17NandSDCardManagerFv
/* 813C6BEC | 38 00 00 1C */	li r0, 0x1c
/* 813C6BF0 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C6BF4 | 48 00 01 34 */	b .L_813C6D28
.L_813C6BF8:
/* 813C6BF8 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C6BFC | 38 80 00 38 */	li r4, 0x38
/* 813C6C00 | 48 00 25 11 */	bl anmSelectFadeout__Q33ipl5scene12SavedataEditFUl
/* 813C6C04 | 38 00 00 0F */	li r0, 0xf
/* 813C6C08 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C6C0C | 48 00 01 1C */	b .L_813C6D28
.L_813C6C10:
/* 813C6C10 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813C6C14 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813C6C18 | 4B F8 20 89 */	bl is_sd_write_protected__Q23ipl12NandSDWorkerFv
/* 813C6C1C | 38 03 FF FF */	subi r0, r3, 0x1
/* 813C6C20 | 7C 00 00 34 */	cntlzw r0, r0
/* 813C6C24 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 813C6C28 | 41 82 00 1C */	beq .L_813C6C44
/* 813C6C2C | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C6C30 | 38 80 00 3E */	li r4, 0x3e
/* 813C6C34 | 48 00 24 DD */	bl anmSelectFadeout__Q33ipl5scene12SavedataEditFUl
/* 813C6C38 | 38 00 00 0F */	li r0, 0xf
/* 813C6C3C | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C6C40 | 48 00 00 E8 */	b .L_813C6D28
.L_813C6C44:
/* 813C6C44 | 80 9F 00 BC */	lwz r4, 0xbc(r31)
/* 813C6C48 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813C6C4C | 80 84 00 40 */	lwz r4, 0x40(r4)
/* 813C6C50 | 80 84 00 FC */	lwz r4, 0xfc(r4)
/* 813C6C54 | 4B FE 32 65 */	bl cmdExistSDSave__Q33ipl5scene17NandSDCardManagerFUl
/* 813C6C58 | 38 60 00 1B */	li r3, 0x1b
/* 813C6C5C | 38 00 00 02 */	li r0, 0x2
/* 813C6C60 | 90 7F 00 54 */	stw r3, 0x54(r31)
/* 813C6C64 | 90 1F 00 D0 */	stw r0, 0xd0(r31)
/* 813C6C68 | 48 00 00 C0 */	b .L_813C6D28
.L_813C6C6C:
/* 813C6C6C | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C6C70 | 38 80 00 97 */	li r4, 0x97
/* 813C6C74 | 48 00 24 9D */	bl anmSelectFadeout__Q33ipl5scene12SavedataEditFUl
/* 813C6C78 | 38 00 00 0F */	li r0, 0xf
/* 813C6C7C | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C6C80 | 48 00 00 A8 */	b .L_813C6D28
.L_813C6C84:
/* 813C6C84 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813C6C88 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813C6C8C | 4B F8 1B F9 */	bl get_sd_state__Q23ipl12NandSDWorkerFv
/* 813C6C90 | 2C 03 00 06 */	cmpwi r3, 0x6
/* 813C6C94 | 90 7F 00 C4 */	stw r3, 0xc4(r31)
/* 813C6C98 | 41 82 00 08 */	beq .L_813C6CA0
/* 813C6C9C | 48 00 00 78 */	b .L_813C6D14
.L_813C6CA0:
/* 813C6CA0 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813C6CA4 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813C6CA8 | 4B F8 1F F9 */	bl is_sd_write_protected__Q23ipl12NandSDWorkerFv
/* 813C6CAC | 38 03 FF FF */	subi r0, r3, 0x1
/* 813C6CB0 | 7C 00 00 34 */	cntlzw r0, r0
/* 813C6CB4 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 813C6CB8 | 41 82 00 1C */	beq .L_813C6CD4
/* 813C6CBC | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C6CC0 | 38 80 00 3E */	li r4, 0x3e
/* 813C6CC4 | 48 00 24 4D */	bl anmSelectFadeout__Q33ipl5scene12SavedataEditFUl
/* 813C6CC8 | 38 00 00 0F */	li r0, 0xf
/* 813C6CCC | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C6CD0 | 48 00 00 58 */	b .L_813C6D28
.L_813C6CD4:
/* 813C6CD4 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813C6CD8 | 4B FE 28 85 */	bl getAsyncResult__Q33ipl5scene17NandSDCardManagerFv
/* 813C6CDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C6CE0 | 41 82 00 1C */	beq .L_813C6CFC
/* 813C6CE4 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C6CE8 | 38 80 01 28 */	li r4, 0x128
/* 813C6CEC | 48 00 24 25 */	bl anmSelectFadeout__Q33ipl5scene12SavedataEditFUl
/* 813C6CF0 | 38 00 00 0F */	li r0, 0xf
/* 813C6CF4 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C6CF8 | 48 00 00 30 */	b .L_813C6D28
.L_813C6CFC:
/* 813C6CFC | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C6D00 | 38 80 01 13 */	li r4, 0x113
/* 813C6D04 | 48 00 23 39 */	bl anmShowS2Btn2Dialog__Q33ipl5scene12SavedataEditFUl
/* 813C6D08 | 38 00 00 1E */	li r0, 0x1e
/* 813C6D0C | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C6D10 | 48 00 00 18 */	b .L_813C6D28
.L_813C6D14:
/* 813C6D14 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C6D18 | 38 80 00 97 */	li r4, 0x97
/* 813C6D1C | 48 00 23 F5 */	bl anmSelectFadeout__Q33ipl5scene12SavedataEditFUl
/* 813C6D20 | 38 00 00 0F */	li r0, 0xf
/* 813C6D24 | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813C6D28:
/* 813C6D28 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C6D2C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C6D30 | 7C 08 03 A6 */	mtlr r0
/* 813C6D34 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C6D38 | 4E 80 00 20 */	blr
.endfn iplMemory_813C6AEC__Q33ipl5scene6MemoryFv

# .text:0x3170 | 0x813C6D3C | size: 0x140
# ipl::scene::Memory::iplMemory_813C6D3C()
.fn iplMemory_813C6D3C__Q33ipl5scene6MemoryFv, global
/* 813C6D3C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813C6D40 | 7C 08 02 A6 */	mflr r0
/* 813C6D44 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813C6D48 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813C6D4C | 7C 7F 1B 78 */	mr r31, r3
/* 813C6D50 | 80 83 00 68 */	lwz r4, 0x68(r3)
/* 813C6D54 | 80 04 00 3C */	lwz r0, 0x3c(r4)
/* 813C6D58 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C6D5C | 40 82 01 0C */	bne .L_813C6E68
/* 813C6D60 | 80 63 00 78 */	lwz r3, 0x78(r3)
/* 813C6D64 | 4B FD B4 0D */	bl isWorking__Q33ipl5scene17NandSDCardManagerFv
/* 813C6D68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C6D6C | 41 82 00 08 */	beq .L_813C6D74
/* 813C6D70 | 48 00 00 F8 */	b .L_813C6E68
.L_813C6D74:
/* 813C6D74 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813C6D78 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813C6D7C | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813C6D80 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813C6D84 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813C6D88 | 41 82 00 14 */	beq .L_813C6D9C
/* 813C6D8C | 40 80 00 D4 */	bge .L_813C6E60
/* 813C6D90 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813C6D94 | 40 80 00 BC */	bge .L_813C6E50
/* 813C6D98 | 48 00 00 C8 */	b .L_813C6E60
.L_813C6D9C:
/* 813C6D9C | 80 1F 00 B8 */	lwz r0, 0xb8(r31)
/* 813C6DA0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C6DA4 | 40 82 00 84 */	bne .L_813C6E28
/* 813C6DA8 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813C6DAC | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813C6DB0 | 4B F8 1A D5 */	bl get_sd_state__Q23ipl12NandSDWorkerFv
/* 813C6DB4 | 2C 03 00 06 */	cmpwi r3, 0x6
/* 813C6DB8 | 40 82 00 2C */	bne .L_813C6DE4
/* 813C6DBC | 7F E3 FB 78 */	mr r3, r31
/* 813C6DC0 | 38 80 00 04 */	li r4, 0x4
/* 813C6DC4 | 4B FF DE C1 */	bl start_process__Q33ipl5scene6MemoryFi
/* 813C6DC8 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813C6DCC | 80 9F 00 BC */	lwz r4, 0xbc(r31)
/* 813C6DD0 | 4B FE 31 E1 */	bl iplNandSDCardManager_813A9FB0
/* 813C6DD4 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C6DD8 | 38 80 01 0C */	li r4, 0x10c
/* 813C6DDC | 48 00 23 75 */	bl anmTextFadein__Q33ipl5scene12SavedataEditFUl
/* 813C6DE0 | 48 00 00 80 */	b .L_813C6E60
.L_813C6DE4:
/* 813C6DE4 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813C6DE8 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813C6DEC | 4B F8 1A 99 */	bl get_sd_state__Q23ipl12NandSDWorkerFv
/* 813C6DF0 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813C6DF4 | 40 82 00 1C */	bne .L_813C6E10
/* 813C6DF8 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C6DFC | 38 80 01 21 */	li r4, 0x121
/* 813C6E00 | 48 00 23 51 */	bl anmTextFadein__Q33ipl5scene12SavedataEditFUl
/* 813C6E04 | 38 00 00 1A */	li r0, 0x1a
/* 813C6E08 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C6E0C | 48 00 00 5C */	b .L_813C6E68
.L_813C6E10:
/* 813C6E10 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C6E14 | 38 80 00 97 */	li r4, 0x97
/* 813C6E18 | 48 00 23 39 */	bl anmTextFadein__Q33ipl5scene12SavedataEditFUl
/* 813C6E1C | 38 00 00 1A */	li r0, 0x1a
/* 813C6E20 | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813C6E24 | 48 00 00 44 */	b .L_813C6E68
.L_813C6E28:
/* 813C6E28 | 7F E3 FB 78 */	mr r3, r31
/* 813C6E2C | 38 80 00 04 */	li r4, 0x4
/* 813C6E30 | 4B FF DE 55 */	bl start_process__Q33ipl5scene6MemoryFi
/* 813C6E34 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 813C6E38 | 80 9F 00 BC */	lwz r4, 0xbc(r31)
/* 813C6E3C | 4B FE 31 CD */	bl iplNandSDCardManager_813AA008
/* 813C6E40 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C6E44 | 38 80 01 14 */	li r4, 0x114
/* 813C6E48 | 48 00 23 09 */	bl anmTextFadein__Q33ipl5scene12SavedataEditFUl
/* 813C6E4C | 48 00 00 14 */	b .L_813C6E60
.L_813C6E50:
/* 813C6E50 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 813C6E54 | 48 00 22 29 */	bl anmSelectFadein__Q33ipl5scene12SavedataEditFv
/* 813C6E58 | 38 00 00 0C */	li r0, 0xc
/* 813C6E5C | 90 1F 00 54 */	stw r0, 0x54(r31)
.L_813C6E60:
/* 813C6E60 | 7F E3 FB 78 */	mr r3, r31
/* 813C6E64 | 4B FF D7 05 */	bl update_sdcard_slot__Q33ipl5scene6MemoryFv
.L_813C6E68:
/* 813C6E68 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813C6E6C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813C6E70 | 7C 08 03 A6 */	mtlr r0
/* 813C6E74 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813C6E78 | 4E 80 00 20 */	blr
.endfn iplMemory_813C6D3C__Q33ipl5scene6MemoryFv

# .text:0x32B0 | 0x813C6E7C | size: 0x8
.fn "@20@__dt__Q33ipl5scene6MemoryFv", global
/* 813C6E7C | 38 63 FF EC */	subi r3, r3, 0x14
/* 813C6E80 | 4B FF CD D0 */	b __dt__Q33ipl5scene6MemoryFv
.endfn "@20@__dt__Q33ipl5scene6MemoryFv"

# 0x81610328..0x81610350 | size: 0x28
.rodata
.balign 8

# .rodata:0x0 | 0x81610328 | size: 0x14
.obj lbl_81610328, global
	.2byte 0x0030
	.2byte 0x0031
	.2byte 0x0032
	.2byte 0x0033
	.2byte 0x0034
	.2byte 0x0035
	.2byte 0x0036
	.2byte 0x0037
	.2byte 0x0038
	.2byte 0x0039
.endobj lbl_81610328

# .rodata:0x14 | 0x8161033C | size: 0x14
.obj lbl_8161033C, global
	.2byte 0x0030
	.2byte 0x0031
	.2byte 0x0032
	.2byte 0x0033
	.2byte 0x0034
	.2byte 0x0035
	.2byte 0x0036
	.2byte 0x0037
	.2byte 0x0038
	.2byte 0x0039
.endobj lbl_8161033C

# 0x81650C90..0x81651250 | size: 0x5C0
.data
.balign 8

# .data:0x0 | 0x81650C90 | size: 0xC
.obj lbl_81650C90, global
	.string "N_Data_a_00"
.endobj lbl_81650C90

# .data:0xC | 0x81650C9C | size: 0xC
.obj lbl_81650C9C, global
	.string "N_Data_a_01"
.endobj lbl_81650C9C

# .data:0x18 | 0x81650CA8 | size: 0xC
.obj lbl_81650CA8, global
	.string "N_Data_a_02"
.endobj lbl_81650CA8

# .data:0x24 | 0x81650CB4 | size: 0xC
.obj lbl_81650CB4, global
	.string "N_Data_a_03"
.endobj lbl_81650CB4

# .data:0x30 | 0x81650CC0 | size: 0xC
.obj lbl_81650CC0, global
	.string "N_Data_a_04"
.endobj lbl_81650CC0

# .data:0x3C | 0x81650CCC | size: 0xC
.obj lbl_81650CCC, global
	.string "N_Data_a_05"
.endobj lbl_81650CCC

# .data:0x48 | 0x81650CD8 | size: 0xC
.obj lbl_81650CD8, global
	.string "N_Data_a_06"
.endobj lbl_81650CD8

# .data:0x54 | 0x81650CE4 | size: 0xC
.obj lbl_81650CE4, global
	.string "N_Data_a_07"
.endobj lbl_81650CE4

# .data:0x60 | 0x81650CF0 | size: 0xC
.obj lbl_81650CF0, global
	.string "N_Data_a_08"
.endobj lbl_81650CF0

# .data:0x6C | 0x81650CFC | size: 0xC
.obj lbl_81650CFC, global
	.string "N_Data_a_09"
.endobj lbl_81650CFC

# .data:0x78 | 0x81650D08 | size: 0xC
.obj lbl_81650D08, global
	.string "N_Data_a_10"
.endobj lbl_81650D08

# .data:0x84 | 0x81650D14 | size: 0xC
.obj lbl_81650D14, global
	.string "N_Data_a_11"
.endobj lbl_81650D14

# .data:0x90 | 0x81650D20 | size: 0xC
.obj lbl_81650D20, global
	.string "N_Data_a_12"
.endobj lbl_81650D20

# .data:0x9C | 0x81650D2C | size: 0xC
.obj lbl_81650D2C, global
	.string "N_Data_a_13"
.endobj lbl_81650D2C

# .data:0xA8 | 0x81650D38 | size: 0xC
.obj lbl_81650D38, global
	.string "N_Data_a_14"
.endobj lbl_81650D38

# .data:0xB4 | 0x81650D44 | size: 0xC
.obj lbl_81650D44, global
	.string "N_Data_b_00"
.endobj lbl_81650D44

# .data:0xC0 | 0x81650D50 | size: 0xC
.obj lbl_81650D50, global
	.string "N_Data_b_01"
.endobj lbl_81650D50

# .data:0xCC | 0x81650D5C | size: 0xC
.obj lbl_81650D5C, global
	.string "N_Data_b_02"
.endobj lbl_81650D5C

# .data:0xD8 | 0x81650D68 | size: 0xC
.obj lbl_81650D68, global
	.string "N_Data_b_03"
.endobj lbl_81650D68

# .data:0xE4 | 0x81650D74 | size: 0xC
.obj lbl_81650D74, global
	.string "N_Data_b_04"
.endobj lbl_81650D74

# .data:0xF0 | 0x81650D80 | size: 0xC
.obj lbl_81650D80, global
	.string "N_Data_b_05"
.endobj lbl_81650D80

# .data:0xFC | 0x81650D8C | size: 0xC
.obj lbl_81650D8C, global
	.string "N_Data_b_06"
.endobj lbl_81650D8C

# .data:0x108 | 0x81650D98 | size: 0xC
.obj lbl_81650D98, global
	.string "N_Data_b_07"
.endobj lbl_81650D98

# .data:0x114 | 0x81650DA4 | size: 0xC
.obj lbl_81650DA4, global
	.string "N_Data_b_08"
.endobj lbl_81650DA4

# .data:0x120 | 0x81650DB0 | size: 0xC
.obj lbl_81650DB0, global
	.string "N_Data_b_09"
.endobj lbl_81650DB0

# .data:0x12C | 0x81650DBC | size: 0xC
.obj lbl_81650DBC, global
	.string "N_Data_b_10"
.endobj lbl_81650DBC

# .data:0x138 | 0x81650DC8 | size: 0xC
.obj lbl_81650DC8, global
	.string "N_Data_b_11"
.endobj lbl_81650DC8

# .data:0x144 | 0x81650DD4 | size: 0xC
.obj lbl_81650DD4, global
	.string "N_Data_b_12"
.endobj lbl_81650DD4

# .data:0x150 | 0x81650DE0 | size: 0xC
.obj lbl_81650DE0, global
	.string "N_Data_b_13"
.endobj lbl_81650DE0

# .data:0x15C | 0x81650DEC | size: 0xC
.obj lbl_81650DEC, global
	.string "N_Data_b_14"
.endobj lbl_81650DEC

# .data:0x168 | 0x81650DF8 | size: 0xC
.obj lbl_81650DF8, global
	.string "N_Data_c_00"
.endobj lbl_81650DF8

# .data:0x174 | 0x81650E04 | size: 0xC
.obj lbl_81650E04, global
	.string "N_Data_c_01"
.endobj lbl_81650E04

# .data:0x180 | 0x81650E10 | size: 0xC
.obj lbl_81650E10, global
	.string "N_Data_c_02"
.endobj lbl_81650E10

# .data:0x18C | 0x81650E1C | size: 0xC
.obj lbl_81650E1C, global
	.string "N_Data_c_03"
.endobj lbl_81650E1C

# .data:0x198 | 0x81650E28 | size: 0xC
.obj lbl_81650E28, global
	.string "N_Data_c_04"
.endobj lbl_81650E28

# .data:0x1A4 | 0x81650E34 | size: 0xC
.obj lbl_81650E34, global
	.string "N_Data_c_05"
.endobj lbl_81650E34

# .data:0x1B0 | 0x81650E40 | size: 0xC
.obj lbl_81650E40, global
	.string "N_Data_c_06"
.endobj lbl_81650E40

# .data:0x1BC | 0x81650E4C | size: 0xC
.obj lbl_81650E4C, global
	.string "N_Data_c_07"
.endobj lbl_81650E4C

# .data:0x1C8 | 0x81650E58 | size: 0xC
.obj lbl_81650E58, global
	.string "N_Data_c_08"
.endobj lbl_81650E58

# .data:0x1D4 | 0x81650E64 | size: 0xC
.obj lbl_81650E64, global
	.string "N_Data_c_09"
.endobj lbl_81650E64

# .data:0x1E0 | 0x81650E70 | size: 0xC
.obj lbl_81650E70, global
	.string "N_Data_c_10"
.endobj lbl_81650E70

# .data:0x1EC | 0x81650E7C | size: 0xC
.obj lbl_81650E7C, global
	.string "N_Data_c_11"
.endobj lbl_81650E7C

# .data:0x1F8 | 0x81650E88 | size: 0xC
.obj lbl_81650E88, global
	.string "N_Data_c_12"
.endobj lbl_81650E88

# .data:0x204 | 0x81650E94 | size: 0xC
.obj lbl_81650E94, global
	.string "N_Data_c_13"
.endobj lbl_81650E94

# .data:0x210 | 0x81650EA0 | size: 0xC
.obj lbl_81650EA0, global
	.string "N_Data_c_14"
.endobj lbl_81650EA0

# .data:0x21C | 0x81650EAC | size: 0x17C
.obj lbl_81650EAC, global
	.4byte lbl_81650C90
	.4byte lbl_81650C9C
	.4byte lbl_81650CA8
	.4byte lbl_81650CB4
	.4byte lbl_81650CC0
	.4byte lbl_81650CCC
	.4byte lbl_81650CD8
	.4byte lbl_81650CE4
	.4byte lbl_81650CF0
	.4byte lbl_81650CFC
	.4byte lbl_81650D08
	.4byte lbl_81650D14
	.4byte lbl_81650D20
	.4byte lbl_81650D2C
	.4byte lbl_81650D38
	.4byte lbl_81650D44
	.4byte lbl_81650D50
	.4byte lbl_81650D5C
	.4byte lbl_81650D68
	.4byte lbl_81650D74
	.4byte lbl_81650D80
	.4byte lbl_81650D8C
	.4byte lbl_81650D98
	.4byte lbl_81650DA4
	.4byte lbl_81650DB0
	.4byte lbl_81650DBC
	.4byte lbl_81650DC8
	.4byte lbl_81650DD4
	.4byte lbl_81650DE0
	.4byte lbl_81650DEC
	.4byte lbl_81650DF8
	.4byte lbl_81650E04
	.4byte lbl_81650E10
	.4byte lbl_81650E1C
	.4byte lbl_81650E28
	.4byte lbl_81650E34
	.4byte lbl_81650E40
	.4byte lbl_81650E4C
	.4byte lbl_81650E58
	.4byte lbl_81650E64
	.4byte lbl_81650E70
	.4byte lbl_81650E7C
	.4byte lbl_81650E88
	.4byte lbl_81650E94
	.4byte lbl_81650EA0
	.4byte 0x7769694D
	.4byte 0x656D2E61
	.4byte 0x73680062
	.4byte 0x616C6C6F
	.4byte 0x6F6E2E61
	.4byte 0x73680063
	.4byte 0x6F727275
	.4byte 0x70745F74
	.4byte 0x65787475
	.4byte 0x72652E74
	.4byte 0x706C0020
	.4byte 0x2E2E2E20
	.4byte 0x77616974
	.4byte 0x20666F72
	.4byte 0x20627332
	.4byte 0x2061626F
	.4byte 0x72640A00
	.4byte 0x2A2A2A20
	.4byte 0x42533220
	.4byte 0x61626F72
	.4byte 0x7420636F
	.4byte 0x7374733A
	.4byte 0x2025646D
	.4byte 0x730A0069
	.4byte 0x745F4F62
	.4byte 0x6A437562
	.4byte 0x65456469
	.4byte 0x745F612E
	.4byte 0x62726C79
	.4byte 0x74006974
	.4byte 0x5F4F626A
	.4byte 0x44617461
	.4byte 0x45646974
	.4byte 0x5F622E62
	.4byte 0x726C7974
	.4byte 0x00303831
	.4byte 0x3231305F
	.4byte 0x73797334
	.4byte 0x5F6D6E5F
	.4byte 0x44617461
	.4byte 0x44657461
	.4byte 0x696C5F61
	.4byte 0x2E62726C
	.4byte 0x7974006D
	.4byte 0x795F4970
	.4byte 0x6C546F70
	.4byte 0x42616C6C
	.4byte 0x6F6F6E5F
	.4byte 0x612E6272
	.4byte 0x6C797400
.endobj lbl_81650EAC

# .data:0x398 | 0x81651028 | size: 0x7C
.obj jumptable_81651028, local
	.rel calc__Q33ipl5scene6MemoryFv, .L_813C4180
	.rel calc__Q33ipl5scene6MemoryFv, .L_813C418C
	.rel calc__Q33ipl5scene6MemoryFv, .L_813C4198
	.rel calc__Q33ipl5scene6MemoryFv, .L_813C41A4
	.rel calc__Q33ipl5scene6MemoryFv, .L_813C41B0
	.rel calc__Q33ipl5scene6MemoryFv, .L_813C41BC
	.rel calc__Q33ipl5scene6MemoryFv, .L_813C41C8
	.rel calc__Q33ipl5scene6MemoryFv, .L_813C41D4
	.rel calc__Q33ipl5scene6MemoryFv, .L_813C41E0
	.rel calc__Q33ipl5scene6MemoryFv, .L_813C41EC
	.rel calc__Q33ipl5scene6MemoryFv, .L_813C42E4
	.rel calc__Q33ipl5scene6MemoryFv, .L_813C41F8
	.rel calc__Q33ipl5scene6MemoryFv, .L_813C4204
	.rel calc__Q33ipl5scene6MemoryFv, .L_813C4210
	.rel calc__Q33ipl5scene6MemoryFv, .L_813C421C
	.rel calc__Q33ipl5scene6MemoryFv, .L_813C4228
	.rel calc__Q33ipl5scene6MemoryFv, .L_813C4234
	.rel calc__Q33ipl5scene6MemoryFv, .L_813C4240
	.rel calc__Q33ipl5scene6MemoryFv, .L_813C424C
	.rel calc__Q33ipl5scene6MemoryFv, .L_813C4258
	.rel calc__Q33ipl5scene6MemoryFv, .L_813C4264
	.rel calc__Q33ipl5scene6MemoryFv, .L_813C4270
	.rel calc__Q33ipl5scene6MemoryFv, .L_813C427C
	.rel calc__Q33ipl5scene6MemoryFv, .L_813C4288
	.rel calc__Q33ipl5scene6MemoryFv, .L_813C4294
	.rel calc__Q33ipl5scene6MemoryFv, .L_813C42A0
	.rel calc__Q33ipl5scene6MemoryFv, .L_813C42AC
	.rel calc__Q33ipl5scene6MemoryFv, .L_813C42B8
	.rel calc__Q33ipl5scene6MemoryFv, .L_813C42C4
	.rel calc__Q33ipl5scene6MemoryFv, .L_813C42D0
	.rel calc__Q33ipl5scene6MemoryFv, .L_813C42DC
.endobj jumptable_81651028

# .data:0x414 | 0x816510A4 | size: 0x7C
.obj jumptable_816510A4, local
	.rel update_sdcard_slot__Q33ipl5scene6MemoryFv, .L_813C460C
	.rel update_sdcard_slot__Q33ipl5scene6MemoryFv, .L_813C4680
	.rel update_sdcard_slot__Q33ipl5scene6MemoryFv, .L_813C4680
	.rel update_sdcard_slot__Q33ipl5scene6MemoryFv, .L_813C4680
	.rel update_sdcard_slot__Q33ipl5scene6MemoryFv, .L_813C4680
	.rel update_sdcard_slot__Q33ipl5scene6MemoryFv, .L_813C4680
	.rel update_sdcard_slot__Q33ipl5scene6MemoryFv, .L_813C4680
	.rel update_sdcard_slot__Q33ipl5scene6MemoryFv, .L_813C4680
	.rel update_sdcard_slot__Q33ipl5scene6MemoryFv, .L_813C4680
	.rel update_sdcard_slot__Q33ipl5scene6MemoryFv, .L_813C4680
	.rel update_sdcard_slot__Q33ipl5scene6MemoryFv, .L_813C4680
	.rel update_sdcard_slot__Q33ipl5scene6MemoryFv, .L_813C4620
	.rel update_sdcard_slot__Q33ipl5scene6MemoryFv, .L_813C4680
	.rel update_sdcard_slot__Q33ipl5scene6MemoryFv, .L_813C4680
	.rel update_sdcard_slot__Q33ipl5scene6MemoryFv, .L_813C4680
	.rel update_sdcard_slot__Q33ipl5scene6MemoryFv, .L_813C4668
	.rel update_sdcard_slot__Q33ipl5scene6MemoryFv, .L_813C4680
	.rel update_sdcard_slot__Q33ipl5scene6MemoryFv, .L_813C463C
	.rel update_sdcard_slot__Q33ipl5scene6MemoryFv, .L_813C463C
	.rel update_sdcard_slot__Q33ipl5scene6MemoryFv, .L_813C4680
	.rel update_sdcard_slot__Q33ipl5scene6MemoryFv, .L_813C4680
	.rel update_sdcard_slot__Q33ipl5scene6MemoryFv, .L_813C4680
	.rel update_sdcard_slot__Q33ipl5scene6MemoryFv, .L_813C4680
	.rel update_sdcard_slot__Q33ipl5scene6MemoryFv, .L_813C4680
	.rel update_sdcard_slot__Q33ipl5scene6MemoryFv, .L_813C4680
	.rel update_sdcard_slot__Q33ipl5scene6MemoryFv, .L_813C4680
	.rel update_sdcard_slot__Q33ipl5scene6MemoryFv, .L_813C4680
	.rel update_sdcard_slot__Q33ipl5scene6MemoryFv, .L_813C4680
	.rel update_sdcard_slot__Q33ipl5scene6MemoryFv, .L_813C4680
	.rel update_sdcard_slot__Q33ipl5scene6MemoryFv, .L_813C4680
	.rel update_sdcard_slot__Q33ipl5scene6MemoryFv, .L_813C463C
.endobj jumptable_816510A4

# .data:0x490 | 0x81651120 | size: 0xA
.obj lbl_81651120, global
	.string "N_Capa_00"
.endobj lbl_81651120

# .data:0x49A | 0x8165112A | size: 0xA
.obj lbl_8165112A, global
	.string "T_Capa_00"
.endobj lbl_8165112A

# .data:0x4A4 | 0x81651134 | size: 0x10
.obj lbl_81651134, global
	.string "WIPL_SE_COPYING"
.endobj lbl_81651134

# .data:0x4B4 | 0x81651144 | size: 0x14
.obj lbl_81651144, global
	.string "WIPL_SE_COPY_FINISH"
.endobj lbl_81651144

# .data:0x4C8 | 0x81651158 | size: 0xB
.obj lbl_81651158, global
	.string "WSD_SELECT"
.endobj lbl_81651158

# .data:0x4D3 | 0x81651163 | size: 0xF
.obj lbl_81651163, global
	.string "B_SelectWii_00"
.endobj lbl_81651163

# .data:0x4E2 | 0x81651172 | size: 0x34
.obj lbl_81651172, global
	.4byte 0x425F5365
	.4byte 0x6C656374
	.4byte 0x53645F30
	.4byte 0x30005749
	.4byte 0x504C5F53
	.4byte 0x455F4254
	.4byte 0x5F544152
	.4byte 0x47455454
	.4byte 0x494E4700
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x42545F50
	.4byte 0x55534800
.endobj lbl_81651172

# .data:0x516 | 0x816511A6 | size: 0xF
.obj lbl_816511A6, global
	.string "WIPL_SE_DECIDE"
.endobj lbl_816511A6

# .data:0x525 | 0x816511B5 | size: 0x1C
.obj lbl_816511B5, global
	.string " ... bs2 manager restarted\n"
.endobj lbl_816511B5

# .data:0x541 | 0x816511D1 | size: 0xC
.obj lbl_816511D1, global
	.string "NEED MOUNT\n"
.endobj lbl_816511D1

# .data:0x54D | 0x816511DD | size: 0x1B
.obj lbl_816511DD, global
	.4byte 0x6661696C
	.4byte 0x3A202061
	.4byte 0x73796E63
	.4byte 0x20726573
	.4byte 0x756C7420
	.4byte 0x3D202564
	.byte 0x0A, 0x00, 0x00
.endobj lbl_816511DD

# .data:0x568 | 0x816511F8 | size: 0x4C
# ipl::scene::Memory::__vtable
.obj __vt__Q33ipl5scene6Memory, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene6MemoryFv
	.4byte getParent__Q33ipl5scene4BaseFv
	.4byte getChild__Q33ipl5scene4BaseFv
	.4byte getNext__Q33ipl5scene4BaseFv
	.4byte getPrev__Q33ipl5scene4BaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@20@__dt__Q33ipl5scene6MemoryFv"
	.4byte isReady__Q33ipl5scene4BaseCFv
	.4byte isResetAcceptable__Q33ipl5scene6MemoryCFv
	.4byte startResetting__Q33ipl5scene4BaseFv
	.4byte isResetProcessDone__Q33ipl5scene4BaseFv
	.4byte prepare__Q33ipl5scene6MemoryFv
	.4byte create__Q33ipl5scene6MemoryFv
	.4byte calc__Q33ipl5scene6MemoryFv
	.4byte draw__Q33ipl5scene6MemoryFv
	.4byte destroy__Q33ipl5scene4BaseFv
.endobj __vt__Q33ipl5scene6Memory

# .data:0x5B4 | 0x81651244 | size: 0xC
# ipl::scene::SavedataBox::@STRING@setTranslate(const nw4r::math::VEC3&)
.obj "@STRING@setTranslate__Q33ipl5scene11SavedataBoxFRCQ34nw4r4math4VEC3", global
	.4byte 0x4E5F4461
	.4byte 0x74615F30
	.4byte 0x30000000
.endobj "@STRING@setTranslate__Q33ipl5scene11SavedataBoxFRCQ34nw4r4math4VEC3"

# 0x81694A48..0x81694A58 | size: 0x10
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694A48 | size: 0x4
.obj lbl_81694A48, global
	.float 0
.endobj lbl_81694A48

# .sdata2:0x4 | 0x81694A4C | size: 0x4
.obj lbl_81694A4C, global
	.float 55
.endobj lbl_81694A4C

# .sdata2:0x8 | 0x81694A50 | size: 0x4
.obj lbl_81694A50, global
	.float 90
.endobj lbl_81694A50

# .sdata2:0xC | 0x81694A54 | size: 0x4
.obj lbl_81694A54, global
	.float 60
.endobj lbl_81694A54

# 0x81696BD8..0x81696BF8 | size: 0x20
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696BD8 | size: 0x4
.obj lbl_81696BD8, global
	.string "arc"
.endobj lbl_81696BD8

# .sdata:0x4 | 0x81696BDC | size: 0x7
.obj lbl_81696BDC, global
	.string "N_ArwR"
.endobj lbl_81696BDC

# .sdata:0xB | 0x81696BE3 | size: 0x7
.obj lbl_81696BE3, global
	.string "N_ArwL"
.endobj lbl_81696BE3

# .sdata:0x12 | 0x81696BEA | size: 0x7
.obj lbl_81696BEA, global
	.string "B_ArwR"
.endobj lbl_81696BEA

# .sdata:0x19 | 0x81696BF1 | size: 0x7
.obj lbl_81696BF1, global
	.string "B_ArwL"
.endobj lbl_81696BF1
