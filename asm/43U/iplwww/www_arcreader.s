.include "macros.inc"
.file "www_arcreader.cpp"

# 0x813711F0..0x813715A8 | size: 0x3B8
.text
.balign 4

# .text:0x0 | 0x813711F0 | size: 0x68
# www::arcreader::AddProtocol()
.fn AddProtocol__Q23www9arcreaderFv, global
/* 813711F0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813711F4 | 7C 08 02 A6 */	mflr r0
/* 813711F8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813711FC | 81 8D A9 14 */	lwz r12, WWWAddProtocol@sda21(r0)
/* 81371200 | 80 6D 82 90 */	lwz r3, sProtocolName__Q23www9arcreader@sda21(r0)
/* 81371204 | 7D 89 03 A6 */	mtctr r12
/* 81371208 | 4E 80 04 21 */	bctrl
/* 8137120C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81371210 | 40 82 00 20 */	bne .L_81371230
/* 81371214 | 3C 80 81 64 */	lis r4, lbl_81644AB0@ha
/* 81371218 | 80 AD 82 90 */	lwz r5, sProtocolName__Q23www9arcreader@sda21(r0)
/* 8137121C | 38 84 4A B0 */	addi r4, r4, lbl_81644AB0@l
/* 81371220 | 38 60 00 03 */	li r3, 0x3
/* 81371224 | 4C C6 31 82 */	crclr cr1eq
/* 81371228 | 4B FF D6 6D */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
/* 8137122C | 48 00 00 1C */	b .L_81371248
.L_81371230:
/* 81371230 | 3C 80 81 64 */	lis r4, lbl_81644AD4@ha
/* 81371234 | 80 AD 82 90 */	lwz r5, sProtocolName__Q23www9arcreader@sda21(r0)
/* 81371238 | 38 84 4A D4 */	addi r4, r4, lbl_81644AD4@l
/* 8137123C | 38 60 00 03 */	li r3, 0x3
/* 81371240 | 4C C6 31 82 */	crclr cr1eq
/* 81371244 | 4B FF D6 51 */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_81371248:
/* 81371248 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8137124C | 7C 08 03 A6 */	mtlr r0
/* 81371250 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81371254 | 4E 80 00 20 */	blr
.endfn AddProtocol__Q23www9arcreaderFv

# .text:0x68 | 0x81371258 | size: 0x178
# www::arcreader::ReadRequest(const WWWProtocolData*, www::arcreader::ArcContainer*)
.fn ReadRequest__Q23www9arcreaderFPC15WWWProtocolDataPQ33www9arcreader12ArcContainer, global
/* 81371258 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8137125C | 7C 08 02 A6 */	mflr r0
/* 81371260 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81371264 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81371268 | 48 28 82 5D */	bl _savegpr_28
/* 8137126C | 7C 7C 1B 78 */	mr r28, r3
/* 81371270 | 3B C0 00 00 */	li r30, 0x0
/* 81371274 | 93 CD A9 68 */	stw r30, sStatus__Q23www9arcreader@sda21(r0)
/* 81371278 | 3C 60 81 64 */	lis r3, lbl_81644AF3@ha
/* 8137127C | 7C 9D 23 78 */	mr r29, r4
/* 81371280 | 80 BC 00 00 */	lwz r5, 0x0(r28)
/* 81371284 | 38 83 4A F3 */	addi r4, r3, lbl_81644AF3@l
/* 81371288 | 38 60 00 03 */	li r3, 0x3
/* 8137128C | 4C C6 31 82 */	crclr cr1eq
/* 81371290 | 4B FF D6 05 */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
/* 81371294 | 83 ED 82 90 */	lwz r31, sProtocolName__Q23www9arcreader@sda21(r0)
/* 81371298 | 80 7C 00 04 */	lwz r3, 0x4(r28)
/* 8137129C | 7F E4 FB 78 */	mr r4, r31
/* 813712A0 | 48 29 11 E1 */	bl strcmp
/* 813712A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813712A8 | 40 82 01 0C */	bne .L_813713B4
/* 813712AC | 7F E3 FB 78 */	mr r3, r31
/* 813712B0 | 3B C0 00 01 */	li r30, 0x1
/* 813712B4 | 48 28 7C 49 */	bl strlen
/* 813712B8 | 80 1C 00 00 */	lwz r0, 0x0(r28)
/* 813712BC | 7F E0 1A 14 */	add r31, r0, r3
/* 813712C0 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 813712C4 | 48 00 00 08 */	b .L_813712CC
.L_813712C8:
/* 813712C8 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_813712CC:
/* 813712CC | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 813712D0 | 2C 00 00 2F */	cmpwi r0, 0x2f
/* 813712D4 | 41 82 FF F4 */	beq .L_813712C8
/* 813712D8 | 3C 80 81 64 */	lis r4, lbl_81644AFE@ha
/* 813712DC | 7F E5 FB 78 */	mr r5, r31
/* 813712E0 | 38 84 4A FE */	addi r4, r4, lbl_81644AFE@l
/* 813712E4 | 38 60 00 03 */	li r3, 0x3
/* 813712E8 | 4C C6 31 82 */	crclr cr1eq
/* 813712EC | 4B FF D5 A9 */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
/* 813712F0 | 7F A3 EB 78 */	mr r3, r29
/* 813712F4 | 7F E4 FB 78 */	mr r4, r31
/* 813712F8 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813712FC | 48 00 01 A9 */	bl find__Q33www9arcreader12ArcContainerFPCcPUl
/* 81371300 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81371304 | 7C 7D 1B 78 */	mr r29, r3
/* 81371308 | 41 82 00 94 */	beq .L_8137139C
/* 8137130C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 81371310 | 48 00 00 68 */	b .L_81371378
.L_81371314:
/* 81371314 | 28 00 7F FF */	cmplwi r0, 0x7fff
/* 81371318 | 3B E0 7F FF */	li r31, 0x7fff
/* 8137131C | 41 81 00 08 */	bgt .L_81371324
/* 81371320 | 7C 1F 03 78 */	mr r31, r0
.L_81371324:
/* 81371324 | 81 8D A9 04 */	lwz r12, WWWProtocolWrite@sda21(r0)
/* 81371328 | 7F A4 EB 78 */	mr r4, r29
/* 8137132C | 7F E5 FB 78 */	mr r5, r31
/* 81371330 | 80 7C 00 08 */	lwz r3, 0x8(r28)
/* 81371334 | 7D 89 03 A6 */	mtctr r12
/* 81371338 | 4E 80 04 21 */	bctrl
/* 8137133C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81371340 | 90 6D A9 68 */	stw r3, sStatus__Q23www9arcreader@sda21(r0)
/* 81371344 | 41 82 00 24 */	beq .L_81371368
/* 81371348 | 81 8D A9 10 */	lwz r12, WWWProtocolFailed@sda21(r0)
/* 8137134C | 80 7C 00 08 */	lwz r3, 0x8(r28)
/* 81371350 | 7D 89 03 A6 */	mtctr r12
/* 81371354 | 4E 80 04 21 */	bctrl
/* 81371358 | 38 00 00 01 */	li r0, 0x1
/* 8137135C | 38 60 00 01 */	li r3, 0x1
/* 81371360 | 90 0D A9 68 */	stw r0, sStatus__Q23www9arcreader@sda21(r0)
/* 81371364 | 48 00 00 54 */	b .L_813713B8
.L_81371368:
/* 81371368 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8137136C | 7F BD FA 14 */	add r29, r29, r31
/* 81371370 | 7C 1F 00 50 */	subf r0, r31, r0
/* 81371374 | 90 01 00 08 */	stw r0, 0x8(r1)
.L_81371378:
/* 81371378 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137137C | 40 82 FF 98 */	bne .L_81371314
/* 81371380 | 81 8D A9 0C */	lwz r12, WWWProtocolFinished@sda21(r0)
/* 81371384 | 80 7C 00 08 */	lwz r3, 0x8(r28)
/* 81371388 | 7D 89 03 A6 */	mtctr r12
/* 8137138C | 4E 80 04 21 */	bctrl
/* 81371390 | 90 6D A9 68 */	stw r3, sStatus__Q23www9arcreader@sda21(r0)
/* 81371394 | 38 60 00 01 */	li r3, 0x1
/* 81371398 | 48 00 00 20 */	b .L_813713B8
.L_8137139C:
/* 8137139C | 81 8D A9 10 */	lwz r12, WWWProtocolFailed@sda21(r0)
/* 813713A0 | 80 7C 00 08 */	lwz r3, 0x8(r28)
/* 813713A4 | 7D 89 03 A6 */	mtctr r12
/* 813713A8 | 4E 80 04 21 */	bctrl
/* 813713AC | 38 00 00 01 */	li r0, 0x1
/* 813713B0 | 90 0D A9 68 */	stw r0, sStatus__Q23www9arcreader@sda21(r0)
.L_813713B4:
/* 813713B4 | 7F C3 F3 78 */	mr r3, r30
.L_813713B8:
/* 813713B8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813713BC | 48 28 81 55 */	bl _restgpr_28
/* 813713C0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813713C4 | 7C 08 03 A6 */	mtlr r0
/* 813713C8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813713CC | 4E 80 00 20 */	blr
.endfn ReadRequest__Q23www9arcreaderFPC15WWWProtocolDataPQ33www9arcreader12ArcContainer

# .text:0x1E0 | 0x813713D0 | size: 0x28
# www::arcreader::ArcContainer::ArcContainer(void*)
.fn __ct__Q33www9arcreader12ArcContainerFPv, global
/* 813713D0 | 38 00 00 04 */	li r0, 0x4
/* 813713D4 | 90 83 00 74 */	stw r4, 0x74(r3)
/* 813713D8 | 38 C0 00 00 */	li r6, 0x0
/* 813713DC | 38 A0 00 00 */	li r5, 0x0
/* 813713E0 | 7C 09 03 A6 */	mtctr r0
.L_813713E4:
/* 813713E4 | 7C 83 32 14 */	add r4, r3, r6
/* 813713E8 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 813713EC | 98 A4 00 70 */	stb r5, 0x70(r4)
/* 813713F0 | 42 00 FF F4 */	bdnz .L_813713E4
/* 813713F4 | 4E 80 00 20 */	blr
.endfn __ct__Q33www9arcreader12ArcContainerFPv

# .text:0x208 | 0x813713F8 | size: 0xAC
# www::arcreader::ArcContainer::RegisterArcFile(const void*)
.fn RegisterArcFile__Q33www9arcreader12ArcContainerFPCv, global
/* 813713F8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813713FC | 7C 08 02 A6 */	mflr r0
/* 81371400 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81371404 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81371408 | 48 28 80 C1 */	bl _savegpr_29
/* 8137140C | 38 00 00 04 */	li r0, 0x4
/* 81371410 | 7C 7D 1B 78 */	mr r29, r3
/* 81371414 | 3B C0 00 00 */	li r30, 0x0
/* 81371418 | 7C 09 03 A6 */	mtctr r0
.L_8137141C:
/* 8137141C | 7F E3 F2 14 */	add r31, r3, r30
/* 81371420 | 88 1F 00 70 */	lbz r0, 0x70(r31)
/* 81371424 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81371428 | 40 82 00 28 */	bne .L_81371450
/* 8137142C | 1C 1E 00 1C */	mulli r0, r30, 0x1c
/* 81371430 | 7C 83 23 78 */	mr r3, r4
/* 81371434 | 7C 9D 02 14 */	add r4, r29, r0
/* 81371438 | 48 1F F9 69 */	bl ARCInitHandle
/* 8137143C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81371440 | 41 82 00 18 */	beq .L_81371458
/* 81371444 | 38 00 00 01 */	li r0, 0x1
/* 81371448 | 98 1F 00 70 */	stb r0, 0x70(r31)
/* 8137144C | 48 00 00 0C */	b .L_81371458
.L_81371450:
/* 81371450 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81371454 | 42 00 FF C8 */	bdnz .L_8137141C
.L_81371458:
/* 81371458 | 2C 1E 00 04 */	cmpwi r30, 0x4
/* 8137145C | 41 82 00 14 */	beq .L_81371470
/* 81371460 | 7C 7D F2 14 */	add r3, r29, r30
/* 81371464 | 88 03 00 70 */	lbz r0, 0x70(r3)
/* 81371468 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137146C | 40 82 00 20 */	bne .L_8137148C
.L_81371470:
/* 81371470 | 3C 60 81 64 */	lis r3, lbl_81644B0D@ha
/* 81371474 | 3C A0 81 64 */	lis r5, lbl_81644B1F@ha
/* 81371478 | 38 63 4B 0D */	addi r3, r3, lbl_81644B0D@l
/* 8137147C | 38 80 00 8E */	li r4, 0x8e
/* 81371480 | 38 A5 4B 1F */	addi r5, r5, lbl_81644B1F@l
/* 81371484 | 4C C6 31 82 */	crclr cr1eq
/* 81371488 | 48 1B D2 A9 */	bl OSPanic
.L_8137148C:
/* 8137148C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81371490 | 48 28 80 85 */	bl _restgpr_29
/* 81371494 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81371498 | 7C 08 03 A6 */	mtlr r0
/* 8137149C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813714A0 | 4E 80 00 20 */	blr
.endfn RegisterArcFile__Q33www9arcreader12ArcContainerFPCv

# .text:0x2B4 | 0x813714A4 | size: 0x104
# www::arcreader::ArcContainer::find(const char*, unsigned long*)
.fn find__Q33www9arcreader12ArcContainerFPCcPUl, global
/* 813714A4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813714A8 | 7C 08 02 A6 */	mflr r0
/* 813714AC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813714B0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813714B4 | 48 28 80 09 */	bl _savegpr_26
/* 813714B8 | 3B 80 00 00 */	li r28, 0x0
/* 813714BC | 7C 7F 1B 78 */	mr r31, r3
/* 813714C0 | 93 85 00 00 */	stw r28, 0x0(r5)
/* 813714C4 | 7C 9A 23 78 */	mr r26, r4
/* 813714C8 | 7C BB 2B 78 */	mr r27, r5
/* 813714CC | 3B A0 00 00 */	li r29, 0x0
/* 813714D0 | 3B C0 00 00 */	li r30, 0x0
.L_813714D4:
/* 813714D4 | 7C 7F EA 14 */	add r3, r31, r29
/* 813714D8 | 88 03 00 70 */	lbz r0, 0x70(r3)
/* 813714DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813714E0 | 41 82 00 3C */	beq .L_8137151C
/* 813714E4 | 7F 44 D3 78 */	mr r4, r26
/* 813714E8 | 7C 7F F2 14 */	add r3, r31, r30
/* 813714EC | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813714F0 | 48 1F F9 51 */	bl ARCOpen
/* 813714F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813714F8 | 41 82 00 24 */	beq .L_8137151C
/* 813714FC | 38 61 00 08 */	addi r3, r1, 0x8
/* 81371500 | 48 20 00 81 */	bl ARCGetStartAddrInMem
/* 81371504 | 7C 7C 1B 78 */	mr r28, r3
/* 81371508 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8137150C | 48 20 00 91 */	bl ARCGetLength
/* 81371510 | 90 7B 00 00 */	stw r3, 0x0(r27)
/* 81371514 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81371518 | 48 20 00 8D */	bl ARCClose
.L_8137151C:
/* 8137151C | 3B BD 00 01 */	addi r29, r29, 0x1
/* 81371520 | 3B DE 00 1C */	addi r30, r30, 0x1c
/* 81371524 | 2C 1D 00 04 */	cmpwi r29, 0x4
/* 81371528 | 41 80 FF AC */	blt .L_813714D4
/* 8137152C | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81371530 | 41 82 00 5C */	beq .L_8137158C
/* 81371534 | 88 1C 00 00 */	lbz r0, 0x0(r28)
/* 81371538 | 2C 00 00 4C */	cmpwi r0, 0x4c
/* 8137153C | 40 82 00 50 */	bne .L_8137158C
/* 81371540 | 88 1C 00 01 */	lbz r0, 0x1(r28)
/* 81371544 | 2C 00 00 5A */	cmpwi r0, 0x5a
/* 81371548 | 40 82 00 44 */	bne .L_8137158C
/* 8137154C | 88 1C 00 02 */	lbz r0, 0x2(r28)
/* 81371550 | 2C 00 00 37 */	cmpwi r0, 0x37
/* 81371554 | 40 82 00 38 */	bne .L_8137158C
/* 81371558 | 88 1C 00 03 */	lbz r0, 0x3(r28)
/* 8137155C | 2C 00 00 37 */	cmpwi r0, 0x37
/* 81371560 | 40 82 00 2C */	bne .L_8137158C
/* 81371564 | 3B BC 00 04 */	addi r29, r28, 0x4
/* 81371568 | 7F A3 EB 78 */	mr r3, r29
/* 8137156C | 48 1E AD 01 */	bl CXGetUncompressedSize
/* 81371570 | 80 9F 00 74 */	lwz r4, 0x74(r31)
/* 81371574 | 7C 7E 1B 78 */	mr r30, r3
/* 81371578 | 7F A3 EB 78 */	mr r3, r29
/* 8137157C | 48 1E AD 31 */	bl CXUncompressLZ
/* 81371580 | 93 DB 00 00 */	stw r30, 0x0(r27)
/* 81371584 | 80 7F 00 74 */	lwz r3, 0x74(r31)
/* 81371588 | 48 00 00 08 */	b .L_81371590
.L_8137158C:
/* 8137158C | 7F 83 E3 78 */	mr r3, r28
.L_81371590:
/* 81371590 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81371594 | 48 28 7F 75 */	bl _restgpr_26
/* 81371598 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8137159C | 7C 08 03 A6 */	mtlr r0
/* 813715A0 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813715A4 | 4E 80 00 20 */	blr
.endfn find__Q33www9arcreader12ArcContainerFPCcPUl

# 0x81644AB0..0x81644B40 | size: 0x90
.data
.balign 8

# .data:0x0 | 0x81644AB0 | size: 0x24
.obj lbl_81644AB0, global
	.string " - %s protocol added successfully \n"
.endobj lbl_81644AB0

# .data:0x24 | 0x81644AD4 | size: 0x1F
.obj lbl_81644AD4, global
	.string " - %s protocol added failed- \n"
.endobj lbl_81644AD4

# .data:0x43 | 0x81644AF3 | size: 0xB
.obj lbl_81644AF3, global
	.string " Read: %s\n"
.endobj lbl_81644AF3

# .data:0x4E | 0x81644AFE | size: 0xF
.obj lbl_81644AFE, global
	.string " filename: %s\n"
.endobj lbl_81644AFE

# .data:0x5D | 0x81644B0D | size: 0x12
.obj lbl_81644B0D, global
	.string "www_arcreader.cpp"
.endobj lbl_81644B0D

# .data:0x6F | 0x81644B1F | size: 0x21
.obj lbl_81644B1F, global
	.4byte 0x20746865
	.4byte 0x2066696C
	.4byte 0x65206361
	.4byte 0x6E6E6F74
	.4byte 0x20726567
	.4byte 0x69737465
	.4byte 0x7265640A
	.4byte 0x00000000
	.byte 0x00
.endobj lbl_81644B1F

# 0x816989A8..0x816989B0 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x816989A8 | size: 0x8
# www::arcreader::sStatus
.obj sStatus__Q23www9arcreader, global
	.skip 0x8
.endobj sStatus__Q23www9arcreader
