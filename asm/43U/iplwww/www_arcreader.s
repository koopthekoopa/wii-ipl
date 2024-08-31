.include "macros.inc"
.file "www_arcreader.cpp"

# 0x813711F0..0x813715A8 | size: 0x3B8
.text
.balign 4

# .text:0x0 | 0x813711F0 | size: 0x68
# www::arcreader::AddProtocol()
.fn AddProtocol__Q23www9arcreaderFv, global
/* 813711F0 0003F5F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813711F4 0003F5F4  7C 08 02 A6 */	mflr r0
/* 813711F8 0003F5F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 813711FC 0003F5FC  81 8D A9 14 */	lwz r12, WWWAddProtocol@sda21(r0)
/* 81371200 0003F600  80 6D 82 90 */	lwz r3, sProtocolName__Q23www9arcreader@sda21(r0)
/* 81371204 0003F604  7D 89 03 A6 */	mtctr r12
/* 81371208 0003F608  4E 80 04 21 */	bctrl
/* 8137120C 0003F60C  2C 03 00 00 */	cmpwi r3, 0x0
/* 81371210 0003F610  40 82 00 20 */	bne .L_81371230
/* 81371214 0003F614  3C 80 81 64 */	lis r4, lbl_81644AB0@ha
/* 81371218 0003F618  80 AD 82 90 */	lwz r5, sProtocolName__Q23www9arcreader@sda21(r0)
/* 8137121C 0003F61C  38 84 4A B0 */	addi r4, r4, lbl_81644AB0@l
/* 81371220 0003F620  38 60 00 03 */	li r3, 0x3
/* 81371224 0003F624  4C C6 31 82 */	crclr cr1eq
/* 81371228 0003F628  4B FF D6 6D */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
/* 8137122C 0003F62C  48 00 00 1C */	b .L_81371248
.L_81371230:
/* 81371230 0003F630  3C 80 81 64 */	lis r4, lbl_81644AD4@ha
/* 81371234 0003F634  80 AD 82 90 */	lwz r5, sProtocolName__Q23www9arcreader@sda21(r0)
/* 81371238 0003F638  38 84 4A D4 */	addi r4, r4, lbl_81644AD4@l
/* 8137123C 0003F63C  38 60 00 03 */	li r3, 0x3
/* 81371240 0003F640  4C C6 31 82 */	crclr cr1eq
/* 81371244 0003F644  4B FF D6 51 */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
.L_81371248:
/* 81371248 0003F648  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8137124C 0003F64C  7C 08 03 A6 */	mtlr r0
/* 81371250 0003F650  38 21 00 10 */	addi r1, r1, 0x10
/* 81371254 0003F654  4E 80 00 20 */	blr
.endfn AddProtocol__Q23www9arcreaderFv

# .text:0x68 | 0x81371258 | size: 0x178
# www::arcreader::ReadRequest(const WWWProtocolData*, www::arcreader::ArcContainer*)
.fn ReadRequest__Q23www9arcreaderFPC15WWWProtocolDataPQ33www9arcreader12ArcContainer, global
/* 81371258 0003F658  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8137125C 0003F65C  7C 08 02 A6 */	mflr r0
/* 81371260 0003F660  90 01 00 24 */	stw r0, 0x24(r1)
/* 81371264 0003F664  39 61 00 20 */	addi r11, r1, 0x20
/* 81371268 0003F668  48 28 82 5D */	bl _savegpr_28
/* 8137126C 0003F66C  7C 7C 1B 78 */	mr r28, r3
/* 81371270 0003F670  3B C0 00 00 */	li r30, 0x0
/* 81371274 0003F674  93 CD A9 68 */	stw r30, sStatus__Q23www9arcreader@sda21(r0)
/* 81371278 0003F678  3C 60 81 64 */	lis r3, lbl_81644AF3@ha
/* 8137127C 0003F67C  7C 9D 23 78 */	mr r29, r4
/* 81371280 0003F680  80 BC 00 00 */	lwz r5, 0x0(r28)
/* 81371284 0003F684  38 83 4A F3 */	addi r4, r3, lbl_81644AF3@l
/* 81371288 0003F688  38 60 00 03 */	li r3, 0x3
/* 8137128C 0003F68C  4C C6 31 82 */	crclr cr1eq
/* 81371290 0003F690  4B FF D6 05 */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
/* 81371294 0003F694  83 ED 82 90 */	lwz r31, sProtocolName__Q23www9arcreader@sda21(r0)
/* 81371298 0003F698  80 7C 00 04 */	lwz r3, 0x4(r28)
/* 8137129C 0003F69C  7F E4 FB 78 */	mr r4, r31
/* 813712A0 0003F6A0  48 29 11 E1 */	bl strcmp
/* 813712A4 0003F6A4  2C 03 00 00 */	cmpwi r3, 0x0
/* 813712A8 0003F6A8  40 82 01 0C */	bne .L_813713B4
/* 813712AC 0003F6AC  7F E3 FB 78 */	mr r3, r31
/* 813712B0 0003F6B0  3B C0 00 01 */	li r30, 0x1
/* 813712B4 0003F6B4  48 28 7C 49 */	bl strlen
/* 813712B8 0003F6B8  80 1C 00 00 */	lwz r0, 0x0(r28)
/* 813712BC 0003F6BC  7F E0 1A 14 */	add r31, r0, r3
/* 813712C0 0003F6C0  3B FF 00 01 */	addi r31, r31, 0x1
/* 813712C4 0003F6C4  48 00 00 08 */	b .L_813712CC
.L_813712C8:
/* 813712C8 0003F6C8  3B FF 00 01 */	addi r31, r31, 0x1
.L_813712CC:
/* 813712CC 0003F6CC  88 1F 00 00 */	lbz r0, 0x0(r31)
/* 813712D0 0003F6D0  2C 00 00 2F */	cmpwi r0, 0x2f
/* 813712D4 0003F6D4  41 82 FF F4 */	beq .L_813712C8
/* 813712D8 0003F6D8  3C 80 81 64 */	lis r4, lbl_81644AFE@ha
/* 813712DC 0003F6DC  7F E5 FB 78 */	mr r5, r31
/* 813712E0 0003F6E0  38 84 4A FE */	addi r4, r4, lbl_81644AFE@l
/* 813712E4 0003F6E4  38 60 00 03 */	li r3, 0x3
/* 813712E8 0003F6E8  4C C6 31 82 */	crclr cr1eq
/* 813712EC 0003F6EC  4B FF D5 A9 */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
/* 813712F0 0003F6F0  7F A3 EB 78 */	mr r3, r29
/* 813712F4 0003F6F4  7F E4 FB 78 */	mr r4, r31
/* 813712F8 0003F6F8  38 A1 00 08 */	addi r5, r1, 0x8
/* 813712FC 0003F6FC  48 00 01 A9 */	bl find__Q33www9arcreader12ArcContainerFPCcPUl
/* 81371300 0003F700  2C 03 00 00 */	cmpwi r3, 0x0
/* 81371304 0003F704  7C 7D 1B 78 */	mr r29, r3
/* 81371308 0003F708  41 82 00 94 */	beq .L_8137139C
/* 8137130C 0003F70C  80 01 00 08 */	lwz r0, 0x8(r1)
/* 81371310 0003F710  48 00 00 68 */	b .L_81371378
.L_81371314:
/* 81371314 0003F714  28 00 7F FF */	cmplwi r0, 0x7fff
/* 81371318 0003F718  3B E0 7F FF */	li r31, 0x7fff
/* 8137131C 0003F71C  41 81 00 08 */	bgt .L_81371324
/* 81371320 0003F720  7C 1F 03 78 */	mr r31, r0
.L_81371324:
/* 81371324 0003F724  81 8D A9 04 */	lwz r12, WWWProtocolWrite@sda21(r0)
/* 81371328 0003F728  7F A4 EB 78 */	mr r4, r29
/* 8137132C 0003F72C  7F E5 FB 78 */	mr r5, r31
/* 81371330 0003F730  80 7C 00 08 */	lwz r3, 0x8(r28)
/* 81371334 0003F734  7D 89 03 A6 */	mtctr r12
/* 81371338 0003F738  4E 80 04 21 */	bctrl
/* 8137133C 0003F73C  2C 03 00 00 */	cmpwi r3, 0x0
/* 81371340 0003F740  90 6D A9 68 */	stw r3, sStatus__Q23www9arcreader@sda21(r0)
/* 81371344 0003F744  41 82 00 24 */	beq .L_81371368
/* 81371348 0003F748  81 8D A9 10 */	lwz r12, WWWProtocolFailed@sda21(r0)
/* 8137134C 0003F74C  80 7C 00 08 */	lwz r3, 0x8(r28)
/* 81371350 0003F750  7D 89 03 A6 */	mtctr r12
/* 81371354 0003F754  4E 80 04 21 */	bctrl
/* 81371358 0003F758  38 00 00 01 */	li r0, 0x1
/* 8137135C 0003F75C  38 60 00 01 */	li r3, 0x1
/* 81371360 0003F760  90 0D A9 68 */	stw r0, sStatus__Q23www9arcreader@sda21(r0)
/* 81371364 0003F764  48 00 00 54 */	b .L_813713B8
.L_81371368:
/* 81371368 0003F768  80 01 00 08 */	lwz r0, 0x8(r1)
/* 8137136C 0003F76C  7F BD FA 14 */	add r29, r29, r31
/* 81371370 0003F770  7C 1F 00 50 */	subf r0, r31, r0
/* 81371374 0003F774  90 01 00 08 */	stw r0, 0x8(r1)
.L_81371378:
/* 81371378 0003F778  2C 00 00 00 */	cmpwi r0, 0x0
/* 8137137C 0003F77C  40 82 FF 98 */	bne .L_81371314
/* 81371380 0003F780  81 8D A9 0C */	lwz r12, WWWProtocolFinished@sda21(r0)
/* 81371384 0003F784  80 7C 00 08 */	lwz r3, 0x8(r28)
/* 81371388 0003F788  7D 89 03 A6 */	mtctr r12
/* 8137138C 0003F78C  4E 80 04 21 */	bctrl
/* 81371390 0003F790  90 6D A9 68 */	stw r3, sStatus__Q23www9arcreader@sda21(r0)
/* 81371394 0003F794  38 60 00 01 */	li r3, 0x1
/* 81371398 0003F798  48 00 00 20 */	b .L_813713B8
.L_8137139C:
/* 8137139C 0003F79C  81 8D A9 10 */	lwz r12, WWWProtocolFailed@sda21(r0)
/* 813713A0 0003F7A0  80 7C 00 08 */	lwz r3, 0x8(r28)
/* 813713A4 0003F7A4  7D 89 03 A6 */	mtctr r12
/* 813713A8 0003F7A8  4E 80 04 21 */	bctrl
/* 813713AC 0003F7AC  38 00 00 01 */	li r0, 0x1
/* 813713B0 0003F7B0  90 0D A9 68 */	stw r0, sStatus__Q23www9arcreader@sda21(r0)
.L_813713B4:
/* 813713B4 0003F7B4  7F C3 F3 78 */	mr r3, r30
.L_813713B8:
/* 813713B8 0003F7B8  39 61 00 20 */	addi r11, r1, 0x20
/* 813713BC 0003F7BC  48 28 81 55 */	bl _restgpr_28
/* 813713C0 0003F7C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 813713C4 0003F7C4  7C 08 03 A6 */	mtlr r0
/* 813713C8 0003F7C8  38 21 00 20 */	addi r1, r1, 0x20
/* 813713CC 0003F7CC  4E 80 00 20 */	blr
.endfn ReadRequest__Q23www9arcreaderFPC15WWWProtocolDataPQ33www9arcreader12ArcContainer

# .text:0x1E0 | 0x813713D0 | size: 0x28
# www::arcreader::ArcContainer::ArcContainer(void*)
.fn __ct__Q33www9arcreader12ArcContainerFPv, global
/* 813713D0 0003F7D0  38 00 00 04 */	li r0, 0x4
/* 813713D4 0003F7D4  90 83 00 74 */	stw r4, 0x74(r3)
/* 813713D8 0003F7D8  38 C0 00 00 */	li r6, 0x0
/* 813713DC 0003F7DC  38 A0 00 00 */	li r5, 0x0
/* 813713E0 0003F7E0  7C 09 03 A6 */	mtctr r0
.L_813713E4:
/* 813713E4 0003F7E4  7C 83 32 14 */	add r4, r3, r6
/* 813713E8 0003F7E8  38 C6 00 01 */	addi r6, r6, 0x1
/* 813713EC 0003F7EC  98 A4 00 70 */	stb r5, 0x70(r4)
/* 813713F0 0003F7F0  42 00 FF F4 */	bdnz .L_813713E4
/* 813713F4 0003F7F4  4E 80 00 20 */	blr
.endfn __ct__Q33www9arcreader12ArcContainerFPv

# .text:0x208 | 0x813713F8 | size: 0xAC
# www::arcreader::ArcContainer::RegisterArcFile(const void*)
.fn RegisterArcFile__Q33www9arcreader12ArcContainerFPCv, global
/* 813713F8 0003F7F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813713FC 0003F7FC  7C 08 02 A6 */	mflr r0
/* 81371400 0003F800  90 01 00 24 */	stw r0, 0x24(r1)
/* 81371404 0003F804  39 61 00 20 */	addi r11, r1, 0x20
/* 81371408 0003F808  48 28 80 C1 */	bl _savegpr_29
/* 8137140C 0003F80C  38 00 00 04 */	li r0, 0x4
/* 81371410 0003F810  7C 7D 1B 78 */	mr r29, r3
/* 81371414 0003F814  3B C0 00 00 */	li r30, 0x0
/* 81371418 0003F818  7C 09 03 A6 */	mtctr r0
.L_8137141C:
/* 8137141C 0003F81C  7F E3 F2 14 */	add r31, r3, r30
/* 81371420 0003F820  88 1F 00 70 */	lbz r0, 0x70(r31)
/* 81371424 0003F824  2C 00 00 00 */	cmpwi r0, 0x0
/* 81371428 0003F828  40 82 00 28 */	bne .L_81371450
/* 8137142C 0003F82C  1C 1E 00 1C */	mulli r0, r30, 0x1c
/* 81371430 0003F830  7C 83 23 78 */	mr r3, r4
/* 81371434 0003F834  7C 9D 02 14 */	add r4, r29, r0
/* 81371438 0003F838  48 1F F9 69 */	bl ARCInitHandle
/* 8137143C 0003F83C  2C 03 00 00 */	cmpwi r3, 0x0
/* 81371440 0003F840  41 82 00 18 */	beq .L_81371458
/* 81371444 0003F844  38 00 00 01 */	li r0, 0x1
/* 81371448 0003F848  98 1F 00 70 */	stb r0, 0x70(r31)
/* 8137144C 0003F84C  48 00 00 0C */	b .L_81371458
.L_81371450:
/* 81371450 0003F850  3B DE 00 01 */	addi r30, r30, 0x1
/* 81371454 0003F854  42 00 FF C8 */	bdnz .L_8137141C
.L_81371458:
/* 81371458 0003F858  2C 1E 00 04 */	cmpwi r30, 0x4
/* 8137145C 0003F85C  41 82 00 14 */	beq .L_81371470
/* 81371460 0003F860  7C 7D F2 14 */	add r3, r29, r30
/* 81371464 0003F864  88 03 00 70 */	lbz r0, 0x70(r3)
/* 81371468 0003F868  2C 00 00 00 */	cmpwi r0, 0x0
/* 8137146C 0003F86C  40 82 00 20 */	bne .L_8137148C
.L_81371470:
/* 81371470 0003F870  3C 60 81 64 */	lis r3, lbl_81644B0D@ha
/* 81371474 0003F874  3C A0 81 64 */	lis r5, lbl_81644B1F@ha
/* 81371478 0003F878  38 63 4B 0D */	addi r3, r3, lbl_81644B0D@l
/* 8137147C 0003F87C  38 80 00 8E */	li r4, 0x8e
/* 81371480 0003F880  38 A5 4B 1F */	addi r5, r5, lbl_81644B1F@l
/* 81371484 0003F884  4C C6 31 82 */	crclr cr1eq
/* 81371488 0003F888  48 1B D2 A9 */	bl OSPanic
.L_8137148C:
/* 8137148C 0003F88C  39 61 00 20 */	addi r11, r1, 0x20
/* 81371490 0003F890  48 28 80 85 */	bl _restgpr_29
/* 81371494 0003F894  80 01 00 24 */	lwz r0, 0x24(r1)
/* 81371498 0003F898  7C 08 03 A6 */	mtlr r0
/* 8137149C 0003F89C  38 21 00 20 */	addi r1, r1, 0x20
/* 813714A0 0003F8A0  4E 80 00 20 */	blr
.endfn RegisterArcFile__Q33www9arcreader12ArcContainerFPCv

# .text:0x2B4 | 0x813714A4 | size: 0x104
# www::arcreader::ArcContainer::find(const char*, unsigned long*)
.fn find__Q33www9arcreader12ArcContainerFPCcPUl, global
/* 813714A4 0003F8A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813714A8 0003F8A8  7C 08 02 A6 */	mflr r0
/* 813714AC 0003F8AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 813714B0 0003F8B0  39 61 00 30 */	addi r11, r1, 0x30
/* 813714B4 0003F8B4  48 28 80 09 */	bl _savegpr_26
/* 813714B8 0003F8B8  3B 80 00 00 */	li r28, 0x0
/* 813714BC 0003F8BC  7C 7F 1B 78 */	mr r31, r3
/* 813714C0 0003F8C0  93 85 00 00 */	stw r28, 0x0(r5)
/* 813714C4 0003F8C4  7C 9A 23 78 */	mr r26, r4
/* 813714C8 0003F8C8  7C BB 2B 78 */	mr r27, r5
/* 813714CC 0003F8CC  3B A0 00 00 */	li r29, 0x0
/* 813714D0 0003F8D0  3B C0 00 00 */	li r30, 0x0
.L_813714D4:
/* 813714D4 0003F8D4  7C 7F EA 14 */	add r3, r31, r29
/* 813714D8 0003F8D8  88 03 00 70 */	lbz r0, 0x70(r3)
/* 813714DC 0003F8DC  2C 00 00 00 */	cmpwi r0, 0x0
/* 813714E0 0003F8E0  41 82 00 3C */	beq .L_8137151C
/* 813714E4 0003F8E4  7F 44 D3 78 */	mr r4, r26
/* 813714E8 0003F8E8  7C 7F F2 14 */	add r3, r31, r30
/* 813714EC 0003F8EC  38 A1 00 08 */	addi r5, r1, 0x8
/* 813714F0 0003F8F0  48 1F F9 51 */	bl ARCOpen
/* 813714F4 0003F8F4  2C 03 00 00 */	cmpwi r3, 0x0
/* 813714F8 0003F8F8  41 82 00 24 */	beq .L_8137151C
/* 813714FC 0003F8FC  38 61 00 08 */	addi r3, r1, 0x8
/* 81371500 0003F900  48 20 00 81 */	bl ARCGetStartAddrInMem
/* 81371504 0003F904  7C 7C 1B 78 */	mr r28, r3
/* 81371508 0003F908  38 61 00 08 */	addi r3, r1, 0x8
/* 8137150C 0003F90C  48 20 00 91 */	bl ARCGetLength
/* 81371510 0003F910  90 7B 00 00 */	stw r3, 0x0(r27)
/* 81371514 0003F914  38 61 00 08 */	addi r3, r1, 0x8
/* 81371518 0003F918  48 20 00 8D */	bl ARCClose
.L_8137151C:
/* 8137151C 0003F91C  3B BD 00 01 */	addi r29, r29, 0x1
/* 81371520 0003F920  3B DE 00 1C */	addi r30, r30, 0x1c
/* 81371524 0003F924  2C 1D 00 04 */	cmpwi r29, 0x4
/* 81371528 0003F928  41 80 FF AC */	blt .L_813714D4
/* 8137152C 0003F92C  2C 1C 00 00 */	cmpwi r28, 0x0
/* 81371530 0003F930  41 82 00 5C */	beq .L_8137158C
/* 81371534 0003F934  88 1C 00 00 */	lbz r0, 0x0(r28)
/* 81371538 0003F938  2C 00 00 4C */	cmpwi r0, 0x4c
/* 8137153C 0003F93C  40 82 00 50 */	bne .L_8137158C
/* 81371540 0003F940  88 1C 00 01 */	lbz r0, 0x1(r28)
/* 81371544 0003F944  2C 00 00 5A */	cmpwi r0, 0x5a
/* 81371548 0003F948  40 82 00 44 */	bne .L_8137158C
/* 8137154C 0003F94C  88 1C 00 02 */	lbz r0, 0x2(r28)
/* 81371550 0003F950  2C 00 00 37 */	cmpwi r0, 0x37
/* 81371554 0003F954  40 82 00 38 */	bne .L_8137158C
/* 81371558 0003F958  88 1C 00 03 */	lbz r0, 0x3(r28)
/* 8137155C 0003F95C  2C 00 00 37 */	cmpwi r0, 0x37
/* 81371560 0003F960  40 82 00 2C */	bne .L_8137158C
/* 81371564 0003F964  3B BC 00 04 */	addi r29, r28, 0x4
/* 81371568 0003F968  7F A3 EB 78 */	mr r3, r29
/* 8137156C 0003F96C  48 1E AD 01 */	bl CXGetUncompressedSize
/* 81371570 0003F970  80 9F 00 74 */	lwz r4, 0x74(r31)
/* 81371574 0003F974  7C 7E 1B 78 */	mr r30, r3
/* 81371578 0003F978  7F A3 EB 78 */	mr r3, r29
/* 8137157C 0003F97C  48 1E AD 31 */	bl fn_8155C2AC
/* 81371580 0003F980  93 DB 00 00 */	stw r30, 0x0(r27)
/* 81371584 0003F984  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 81371588 0003F988  48 00 00 08 */	b .L_81371590
.L_8137158C:
/* 8137158C 0003F98C  7F 83 E3 78 */	mr r3, r28
.L_81371590:
/* 81371590 0003F990  39 61 00 30 */	addi r11, r1, 0x30
/* 81371594 0003F994  48 28 7F 75 */	bl _restgpr_26
/* 81371598 0003F998  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8137159C 0003F99C  7C 08 03 A6 */	mtlr r0
/* 813715A0 0003F9A0  38 21 00 30 */	addi r1, r1, 0x30
/* 813715A4 0003F9A4  4E 80 00 20 */	blr
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
