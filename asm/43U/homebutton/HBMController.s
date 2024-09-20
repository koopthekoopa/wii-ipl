.include "macros.inc"
.file "HBMController.cpp"

# 0x8108A530..0x8108A6C0 | size: 0x190
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x8108A530 | size: 0xC0
# homebutton::Controller::sAlarm
.obj sAlarm__Q210homebutton10Controller, global
	.skip 0xC0
.endobj sAlarm__Q210homebutton10Controller

# .bss:0xC0 | 0x8108A5F0 | size: 0xC0
# homebutton::Controller::sAlarmSoundOff
.obj sAlarmSoundOff__Q210homebutton10Controller, global
	.skip 0xC0
.endobj sAlarmSoundOff__Q210homebutton10Controller

# .bss:0x180 | 0x8108A6B0 | size: 0x10
# homebutton::Controller::sThis
.obj sThis__Q210homebutton10Controller, global
	.skip 0x10
.endobj sThis__Q210homebutton10Controller

# 0x813772DC..0x81377C10 | size: 0x934
.text
.balign 4

# .text:0x0 | 0x813772DC | size: 0x104
# homebutton::Controller::wpadConnectCallback(long, long)
.fn wpadConnectCallback__Q210homebutton10ControllerFll, global
/* 813772DC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813772E0 | 7C 08 02 A6 */	mflr r0
/* 813772E4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813772E8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813772EC | 48 28 21 D9 */	bl _savegpr_28
/* 813772F0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813772F4 | 7C 7E 1B 78 */	mr r30, r3
/* 813772F8 | 7C 9F 23 78 */	mr r31, r4
/* 813772FC | 41 82 00 14 */	beq .L_81377310
/* 81377300 | 40 80 00 9C */	bge .L_8137739C
/* 81377304 | 2C 04 FF FF */	cmpwi r4, -0x1
/* 81377308 | 40 80 00 58 */	bge .L_81377360
/* 8137730C | 48 00 00 90 */	b .L_8137739C
.L_81377310:
/* 81377310 | 3F 80 81 09 */	lis r28, sThis__Q210homebutton10Controller@ha
/* 81377314 | 54 7D 10 3A */	slwi r29, r3, 2
/* 81377318 | 3B 9C A6 B0 */	addi r28, r28, sThis__Q210homebutton10Controller@l
/* 8137731C | 7C 9C E8 2E */	lwzx r4, r28, r29
/* 81377320 | 88 04 00 40 */	lbz r0, 0x40(r4)
/* 81377324 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81377328 | 40 82 00 24 */	bne .L_8137734C
/* 8137732C | 3C 80 81 37 */	lis r4, wpadExtensionCallback__Q210homebutton10ControllerFll@ha
/* 81377330 | 38 84 73 E0 */	addi r4, r4, wpadExtensionCallback__Q210homebutton10ControllerFll@l
/* 81377334 | 48 20 38 4D */	bl fn_8157AB80
/* 81377338 | 7C 9C E8 2E */	lwzx r4, r28, r29
/* 8137733C | 38 00 00 01 */	li r0, 0x1
/* 81377340 | 90 64 00 2C */	stw r3, 0x2c(r4)
/* 81377344 | 7C 7C E8 2E */	lwzx r3, r28, r29
/* 81377348 | 98 03 00 40 */	stb r0, 0x40(r3)
.L_8137734C:
/* 8137734C | 7F C3 F3 78 */	mr r3, r30
/* 81377350 | 38 80 00 00 */	li r4, 0x0
/* 81377354 | 38 A0 00 00 */	li r5, 0x0
/* 81377358 | 48 20 45 C5 */	bl fn_8157B91C
/* 8137735C | 48 00 00 40 */	b .L_8137739C
.L_81377360:
/* 81377360 | 3F A0 81 09 */	lis r29, sThis__Q210homebutton10Controller@ha
/* 81377364 | 54 7C 10 3A */	slwi r28, r3, 2
/* 81377368 | 3B BD A6 B0 */	addi r29, r29, sThis__Q210homebutton10Controller@l
/* 8137736C | 7C 9D E0 2E */	lwzx r4, r29, r28
/* 81377370 | 80 84 00 2C */	lwz r4, 0x2c(r4)
/* 81377374 | 48 20 38 0D */	bl fn_8157AB80
/* 81377378 | 7C 7D E0 2E */	lwzx r3, r29, r28
/* 8137737C | 38 00 00 00 */	li r0, 0x0
/* 81377380 | 90 03 00 2C */	stw r0, 0x2c(r3)
/* 81377384 | 7C 7D E0 2E */	lwzx r3, r29, r28
/* 81377388 | 98 03 00 40 */	stb r0, 0x40(r3)
/* 8137738C | 7C 7D E0 2E */	lwzx r3, r29, r28
/* 81377390 | 98 03 00 42 */	stb r0, 0x42(r3)
/* 81377394 | 7C 7D E0 2E */	lwzx r3, r29, r28
/* 81377398 | 98 03 00 43 */	stb r0, 0x43(r3)
.L_8137739C:
/* 8137739C | 3C 60 81 09 */	lis r3, sThis__Q210homebutton10Controller@ha
/* 813773A0 | 57 C0 10 3A */	slwi r0, r30, 2
/* 813773A4 | 38 63 A6 B0 */	addi r3, r3, sThis__Q210homebutton10Controller@l
/* 813773A8 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813773AC | 81 83 00 28 */	lwz r12, 0x28(r3)
/* 813773B0 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 813773B4 | 41 82 00 14 */	beq .L_813773C8
/* 813773B8 | 7F C3 F3 78 */	mr r3, r30
/* 813773BC | 7F E4 FB 78 */	mr r4, r31
/* 813773C0 | 7D 89 03 A6 */	mtctr r12
/* 813773C4 | 4E 80 04 21 */	bctrl
.L_813773C8:
/* 813773C8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813773CC | 48 28 21 45 */	bl _restgpr_28
/* 813773D0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813773D4 | 7C 08 03 A6 */	mtlr r0
/* 813773D8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813773DC | 4E 80 00 20 */	blr
.endfn wpadConnectCallback__Q210homebutton10ControllerFll

# .text:0x104 | 0x813773E0 | size: 0x84
# homebutton::Controller::wpadExtensionCallback(long, long)
.fn wpadExtensionCallback__Q210homebutton10ControllerFll, global
/* 813773E0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813773E4 | 7C 08 02 A6 */	mflr r0
/* 813773E8 | 2C 04 00 FF */	cmpwi r4, 0xff
/* 813773EC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813773F0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813773F4 | 7C 9F 23 78 */	mr r31, r4
/* 813773F8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813773FC | 7C 7E 1B 78 */	mr r30, r3
/* 81377400 | 41 82 00 08 */	beq .L_81377408
/* 81377404 | 48 00 00 1C */	b .L_81377420
.L_81377408:
/* 81377408 | 3C A0 81 09 */	lis r5, sThis__Q210homebutton10Controller@ha
/* 8137740C | 54 60 10 3A */	slwi r0, r3, 2
/* 81377410 | 38 A5 A6 B0 */	addi r5, r5, sThis__Q210homebutton10Controller@l
/* 81377414 | 38 80 03 E8 */	li r4, 0x3e8
/* 81377418 | 7C 65 00 2E */	lwzx r3, r5, r0
/* 8137741C | 48 00 05 6D */	bl soundOff__Q210homebutton10ControllerFi
.L_81377420:
/* 81377420 | 3C 60 81 09 */	lis r3, sThis__Q210homebutton10Controller@ha
/* 81377424 | 57 C0 10 3A */	slwi r0, r30, 2
/* 81377428 | 38 63 A6 B0 */	addi r3, r3, sThis__Q210homebutton10Controller@l
/* 8137742C | 7C 63 00 2E */	lwzx r3, r3, r0
/* 81377430 | 81 83 00 2C */	lwz r12, 0x2c(r3)
/* 81377434 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 81377438 | 41 82 00 14 */	beq .L_8137744C
/* 8137743C | 7F C3 F3 78 */	mr r3, r30
/* 81377440 | 7F E4 FB 78 */	mr r4, r31
/* 81377444 | 7D 89 03 A6 */	mtctr r12
/* 81377448 | 4E 80 04 21 */	bctrl
.L_8137744C:
/* 8137744C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81377450 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81377454 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81377458 | 7C 08 03 A6 */	mtlr r0
/* 8137745C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81377460 | 4E 80 00 20 */	blr
.endfn wpadExtensionCallback__Q210homebutton10ControllerFll

# .text:0x188 | 0x81377464 | size: 0x34
# homebutton::Controller::soundOnCallback(OSAlarm*, OSContext*)
.fn soundOnCallback__Q210homebutton10ControllerFP7OSAlarmP9OSContext, global
/* 81377464 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81377468 | 7C 08 02 A6 */	mflr r0
/* 8137746C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81377470 | 48 1B 5B F9 */	bl fn_8152D068
/* 81377474 | 3C 80 81 09 */	lis r4, sThis__Q210homebutton10Controller@ha
/* 81377478 | 54 60 10 3A */	slwi r0, r3, 2
/* 8137747C | 38 84 A6 B0 */	addi r4, r4, sThis__Q210homebutton10Controller@l
/* 81377480 | 7C 64 00 2E */	lwzx r3, r4, r0
/* 81377484 | 48 00 05 B5 */	bl soundOn__Q210homebutton10ControllerFv
/* 81377488 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8137748C | 7C 08 03 A6 */	mtlr r0
/* 81377490 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81377494 | 4E 80 00 20 */	blr
.endfn soundOnCallback__Q210homebutton10ControllerFP7OSAlarmP9OSContext

# .text:0x1BC | 0x81377498 | size: 0xCC
# homebutton::Controller::Controller(int, homebutton::RemoteSpk*)
.fn __ct__Q210homebutton10ControllerFiPQ210homebutton9RemoteSpk, global
/* 81377498 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8137749C | 7C 08 02 A6 */	mflr r0
/* 813774A0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813774A4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813774A8 | 48 28 20 19 */	bl _savegpr_27
/* 813774AC | C0 02 83 58 */	lfs f0, lbl_81694758@sda21(r0)
/* 813774B0 | 38 00 00 00 */	li r0, 0x0
/* 813774B4 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 813774B8 | 3F C0 81 09 */	lis r30, sAlarm__Q210homebutton10Controller@ha
/* 813774BC | 90 03 00 20 */	stw r0, 0x20(r3)
/* 813774C0 | 7C 7B 1B 78 */	mr r27, r3
/* 813774C4 | 7C 9C 23 78 */	mr r28, r4
/* 813774C8 | 3B DE A5 30 */	addi r30, r30, sAlarm__Q210homebutton10Controller@l
/* 813774CC | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813774D0 | 98 03 00 1C */	stb r0, 0x1c(r3)
/* 813774D4 | D0 03 00 04 */	stfs f0, 0x4(r3)
/* 813774D8 | 90 A3 00 24 */	stw r5, 0x24(r3)
/* 813774DC | 90 03 00 28 */	stw r0, 0x28(r3)
/* 813774E0 | 90 03 00 2C */	stw r0, 0x2c(r3)
/* 813774E4 | 98 03 00 40 */	stb r0, 0x40(r3)
/* 813774E8 | 98 03 00 41 */	stb r0, 0x41(r3)
/* 813774EC | 40 80 00 5C */	bge .L_81377548
/* 813774F0 | 38 AD A9 78 */	li r5, lbl_816989B8@sda21
/* 813774F4 | 3C 60 81 64 */	lis r3, lbl_81645630@ha
/* 813774F8 | 7C 05 21 AE */	stbx r0, r5, r4
/* 813774FC | 38 63 56 30 */	addi r3, r3, lbl_81645630@l
/* 81377500 | 4C C6 31 82 */	crclr cr1eq
/* 81377504 | 48 1B 71 9D */	bl OSReport
/* 81377508 | 3B ED A9 7C */	li r31, lbl_816989BC@sda21
/* 8137750C | 7C 1F E0 AE */	lbzx r0, r31, r28
/* 81377510 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81377514 | 40 82 00 28 */	bne .L_8137753C
/* 81377518 | 1F BC 00 30 */	mulli r29, r28, 0x30
/* 8137751C | 38 1E 00 00 */	addi r0, r30, 0x0
/* 81377520 | 7C 60 EA 14 */	add r3, r0, r29
/* 81377524 | 48 1B 53 C1 */	bl OSCreateAlarm
/* 81377528 | 38 1E 00 C0 */	addi r0, r30, 0xc0
/* 8137752C | 7C 60 EA 14 */	add r3, r0, r29
/* 81377530 | 48 1B 53 B5 */	bl OSCreateAlarm
/* 81377534 | 38 00 00 01 */	li r0, 0x1
/* 81377538 | 7C 1F E1 AE */	stbx r0, r31, r28
.L_8137753C:
/* 8137753C | 57 80 10 3A */	slwi r0, r28, 2
/* 81377540 | 38 7E 01 80 */	addi r3, r30, 0x180
/* 81377544 | 7F 63 01 2E */	stwx r27, r3, r0
.L_81377548:
/* 81377548 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8137754C | 7F 63 DB 78 */	mr r3, r27
/* 81377550 | 48 28 1F BD */	bl _restgpr_27
/* 81377554 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81377558 | 7C 08 03 A6 */	mtlr r0
/* 8137755C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81377560 | 4E 80 00 20 */	blr
.endfn __ct__Q210homebutton10ControllerFiPQ210homebutton9RemoteSpk

# .text:0x288 | 0x81377564 | size: 0x8C
# homebutton::Controller::~Controller()
.fn __dt__Q210homebutton10ControllerFv, global
/* 81377564 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81377568 | 7C 08 02 A6 */	mflr r0
/* 8137756C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81377570 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81377574 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81377578 | 7C 9F 23 78 */	mr r31, r4
/* 8137757C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81377580 | 7C 7E 1B 78 */	mr r30, r3
/* 81377584 | 41 82 00 50 */	beq .L_813775D4
/* 81377588 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8137758C | 3C 60 81 09 */	lis r3, sAlarm__Q210homebutton10Controller@ha
/* 81377590 | 38 63 A5 30 */	addi r3, r3, sAlarm__Q210homebutton10Controller@l
/* 81377594 | 1C 00 00 30 */	mulli r0, r0, 0x30
/* 81377598 | 7C 63 02 14 */	add r3, r3, r0
/* 8137759C | 48 1B 56 9D */	bl fn_8152CC38
/* 813775A0 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 813775A4 | 3C 60 81 09 */	lis r3, sAlarmSoundOff__Q210homebutton10Controller@ha
/* 813775A8 | 38 63 A5 F0 */	addi r3, r3, sAlarmSoundOff__Q210homebutton10Controller@l
/* 813775AC | 1C 00 00 30 */	mulli r0, r0, 0x30
/* 813775B0 | 7C 63 02 14 */	add r3, r3, r0
/* 813775B4 | 48 1B 56 85 */	bl fn_8152CC38
/* 813775B8 | 38 7E 00 20 */	addi r3, r30, 0x20
/* 813775BC | 38 80 FF FF */	li r4, -0x1
/* 813775C0 | 4B FF 50 B9 */	bl __dt__Q34nw4r3snd11SoundHandleFv
/* 813775C4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813775C8 | 40 81 00 0C */	ble .L_813775D4
/* 813775CC | 7F C3 F3 78 */	mr r3, r30
/* 813775D0 | 48 28 0B 15 */	bl __dl__FPv
.L_813775D4:
/* 813775D4 | 7F C3 F3 78 */	mr r3, r30
/* 813775D8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813775DC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813775E0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813775E4 | 7C 08 03 A6 */	mtlr r0
/* 813775E8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813775EC | 4E 80 00 20 */	blr
.endfn __dt__Q210homebutton10ControllerFv

# .text:0x314 | 0x813775F0 | size: 0x88
# homebutton::Controller::initCallback()
.fn initCallback__Q210homebutton10ControllerFv, global
/* 813775F0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813775F4 | 7C 08 02 A6 */	mflr r0
/* 813775F8 | 3C 80 81 37 */	lis r4, wpadConnectCallback__Q210homebutton10ControllerFll@ha
/* 813775FC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81377600 | 38 84 72 DC */	addi r4, r4, wpadConnectCallback__Q210homebutton10ControllerFll@l
/* 81377604 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81377608 | 7C 7F 1B 78 */	mr r31, r3
/* 8137760C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81377610 | 48 20 35 09 */	bl fn_8157AB18
/* 81377614 | 90 7F 00 28 */	stw r3, 0x28(r31)
/* 81377618 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8137761C | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 81377620 | 48 20 34 05 */	bl fn_8157AA24
/* 81377624 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81377628 | 41 82 00 14 */	beq .L_8137763C
/* 8137762C | 40 80 00 38 */	bge .L_81377664
/* 81377630 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 81377634 | 40 80 00 28 */	bge .L_8137765C
/* 81377638 | 48 00 00 2C */	b .L_81377664
.L_8137763C:
/* 8137763C | 3C 80 81 37 */	lis r4, wpadExtensionCallback__Q210homebutton10ControllerFll@ha
/* 81377640 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 81377644 | 38 84 73 E0 */	addi r4, r4, wpadExtensionCallback__Q210homebutton10ControllerFll@l
/* 81377648 | 48 20 35 39 */	bl fn_8157AB80
/* 8137764C | 38 00 00 01 */	li r0, 0x1
/* 81377650 | 90 7F 00 2C */	stw r3, 0x2c(r31)
/* 81377654 | 98 1F 00 40 */	stb r0, 0x40(r31)
/* 81377658 | 48 00 00 0C */	b .L_81377664
.L_8137765C:
/* 8137765C | 38 00 00 00 */	li r0, 0x0
/* 81377660 | 98 1F 00 40 */	stb r0, 0x40(r31)
.L_81377664:
/* 81377664 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81377668 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8137766C | 7C 08 03 A6 */	mtlr r0
/* 81377670 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81377674 | 4E 80 00 20 */	blr
.endfn initCallback__Q210homebutton10ControllerFv

# .text:0x39C | 0x81377678 | size: 0x54
# homebutton::Controller::clearCallback()
.fn clearCallback__Q210homebutton10ControllerFv, global
/* 81377678 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8137767C | 7C 08 02 A6 */	mflr r0
/* 81377680 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81377684 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81377688 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8137768C | 7C 7E 1B 78 */	mr r30, r3
/* 81377690 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81377694 | 80 9E 00 28 */	lwz r4, 0x28(r30)
/* 81377698 | 48 20 34 81 */	bl fn_8157AB18
/* 8137769C | 3B E0 00 00 */	li r31, 0x0
/* 813776A0 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 813776A4 | 93 FE 00 28 */	stw r31, 0x28(r30)
/* 813776A8 | 80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 813776AC | 48 20 34 D5 */	bl fn_8157AB80
/* 813776B0 | 93 FE 00 2C */	stw r31, 0x2c(r30)
/* 813776B4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813776B8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813776BC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813776C0 | 7C 08 03 A6 */	mtlr r0
/* 813776C4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813776C8 | 4E 80 00 20 */	blr
.endfn clearCallback__Q210homebutton10ControllerFv

# .text:0x3F0 | 0x813776CC | size: 0x178
# homebutton::Controller::setKpad(const HBMKPadData*, bool)
.fn setKpad__Q210homebutton10ControllerFPC11HBMKPadDatab, global
/* 813776CC | 80 C4 00 00 */	lwz r6, 0x0(r4)
/* 813776D0 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 813776D4 | 4D 82 00 20 */	beqlr
/* 813776D8 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813776DC | 41 82 00 44 */	beq .L_81377720
/* 813776E0 | 88 06 00 5C */	lbz r0, 0x5c(r6)
/* 813776E4 | 28 00 00 02 */	cmplwi r0, 0x2
/* 813776E8 | 40 82 00 24 */	bne .L_8137770C
/* 813776EC | 80 04 00 0C */	lwz r0, 0xc(r4)
/* 813776F0 | 28 00 00 02 */	cmplwi r0, 0x2
/* 813776F4 | 40 82 00 18 */	bne .L_8137770C
/* 813776F8 | C0 24 00 04 */	lfs f1, 0x4(r4)
/* 813776FC | C0 04 00 08 */	lfs f0, 0x8(r4)
/* 81377700 | D0 23 00 08 */	stfs f1, 0x8(r3)
/* 81377704 | D0 03 00 0C */	stfs f0, 0xc(r3)
/* 81377708 | 48 00 00 18 */	b .L_81377720
.L_8137770C:
/* 8137770C | C0 06 00 20 */	lfs f0, 0x20(r6)
/* 81377710 | 80 A4 00 00 */	lwz r5, 0x0(r4)
/* 81377714 | D0 03 00 08 */	stfs f0, 0x8(r3)
/* 81377718 | C0 05 00 24 */	lfs f0, 0x24(r5)
/* 8137771C | D0 03 00 0C */	stfs f0, 0xc(r3)
.L_81377720:
/* 81377720 | 80 E4 00 00 */	lwz r7, 0x0(r4)
/* 81377724 | 80 07 00 04 */	lwz r0, 0x4(r7)
/* 81377728 | 90 03 00 10 */	stw r0, 0x10(r3)
/* 8137772C | 80 C7 00 00 */	lwz r6, 0x0(r7)
/* 81377730 | 90 C3 00 14 */	stw r6, 0x14(r3)
/* 81377734 | 80 07 00 08 */	lwz r0, 0x8(r7)
/* 81377738 | 90 03 00 18 */	stw r0, 0x18(r3)
/* 8137773C | 88 07 00 5C */	lbz r0, 0x5c(r7)
/* 81377740 | 28 00 00 02 */	cmplwi r0, 0x2
/* 81377744 | 4C 82 00 20 */	bnelr
/* 81377748 | 80 07 00 60 */	lwz r0, 0x60(r7)
/* 8137774C | 80 87 00 64 */	lwz r4, 0x64(r7)
/* 81377750 | 54 05 06 F7 */	rlwinm. r5, r0, 0, 27, 27
/* 81377754 | 80 A7 00 68 */	lwz r5, 0x68(r7)
/* 81377758 | 41 82 00 0C */	beq .L_81377764
/* 8137775C | 60 C6 08 00 */	ori r6, r6, 0x800
/* 81377760 | 90 C3 00 14 */	stw r6, 0x14(r3)
.L_81377764:
/* 81377764 | 54 86 06 F7 */	rlwinm. r6, r4, 0, 27, 27
/* 81377768 | 41 82 00 10 */	beq .L_81377778
/* 8137776C | 80 C3 00 10 */	lwz r6, 0x10(r3)
/* 81377770 | 60 C6 08 00 */	ori r6, r6, 0x800
/* 81377774 | 90 C3 00 10 */	stw r6, 0x10(r3)
.L_81377778:
/* 81377778 | 54 A6 06 F7 */	rlwinm. r6, r5, 0, 27, 27
/* 8137777C | 41 82 00 10 */	beq .L_8137778C
/* 81377780 | 80 C3 00 18 */	lwz r6, 0x18(r3)
/* 81377784 | 60 C6 08 00 */	ori r6, r6, 0x800
/* 81377788 | 90 C3 00 18 */	stw r6, 0x18(r3)
.L_8137778C:
/* 8137778C | 54 06 05 6B */	rlwinm. r6, r0, 0, 21, 21
/* 81377790 | 41 82 00 10 */	beq .L_813777A0
/* 81377794 | 80 C3 00 14 */	lwz r6, 0x14(r3)
/* 81377798 | 60 C6 00 10 */	ori r6, r6, 0x10
/* 8137779C | 90 C3 00 14 */	stw r6, 0x14(r3)
.L_813777A0:
/* 813777A0 | 54 86 05 6B */	rlwinm. r6, r4, 0, 21, 21
/* 813777A4 | 41 82 00 10 */	beq .L_813777B4
/* 813777A8 | 80 C3 00 10 */	lwz r6, 0x10(r3)
/* 813777AC | 60 C6 00 10 */	ori r6, r6, 0x10
/* 813777B0 | 90 C3 00 10 */	stw r6, 0x10(r3)
.L_813777B4:
/* 813777B4 | 54 A6 05 6B */	rlwinm. r6, r5, 0, 21, 21
/* 813777B8 | 41 82 00 10 */	beq .L_813777C8
/* 813777BC | 80 C3 00 18 */	lwz r6, 0x18(r3)
/* 813777C0 | 60 C6 00 10 */	ori r6, r6, 0x10
/* 813777C4 | 90 C3 00 18 */	stw r6, 0x18(r3)
.L_813777C8:
/* 813777C8 | 54 06 04 E7 */	rlwinm. r6, r0, 0, 19, 19
/* 813777CC | 41 82 00 10 */	beq .L_813777DC
/* 813777D0 | 80 C3 00 14 */	lwz r6, 0x14(r3)
/* 813777D4 | 60 C6 10 00 */	ori r6, r6, 0x1000
/* 813777D8 | 90 C3 00 14 */	stw r6, 0x14(r3)
.L_813777DC:
/* 813777DC | 54 86 04 E7 */	rlwinm. r6, r4, 0, 19, 19
/* 813777E0 | 41 82 00 10 */	beq .L_813777F0
/* 813777E4 | 80 C3 00 10 */	lwz r6, 0x10(r3)
/* 813777E8 | 60 C6 10 00 */	ori r6, r6, 0x1000
/* 813777EC | 90 C3 00 10 */	stw r6, 0x10(r3)
.L_813777F0:
/* 813777F0 | 54 A6 04 E7 */	rlwinm. r6, r5, 0, 19, 19
/* 813777F4 | 41 82 00 10 */	beq .L_81377804
/* 813777F8 | 80 C3 00 18 */	lwz r6, 0x18(r3)
/* 813777FC | 60 C6 10 00 */	ori r6, r6, 0x1000
/* 81377800 | 90 C3 00 18 */	stw r6, 0x18(r3)
.L_81377804:
/* 81377804 | 54 00 05 29 */	rlwinm. r0, r0, 0, 20, 20
/* 81377808 | 41 82 00 10 */	beq .L_81377818
/* 8137780C | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81377810 | 60 00 80 00 */	ori r0, r0, 0x8000
/* 81377814 | 90 03 00 14 */	stw r0, 0x14(r3)
.L_81377818:
/* 81377818 | 54 80 05 29 */	rlwinm. r0, r4, 0, 20, 20
/* 8137781C | 41 82 00 10 */	beq .L_8137782C
/* 81377820 | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 81377824 | 60 00 80 00 */	ori r0, r0, 0x8000
/* 81377828 | 90 03 00 10 */	stw r0, 0x10(r3)
.L_8137782C:
/* 8137782C | 54 A0 05 29 */	rlwinm. r0, r5, 0, 20, 20
/* 81377830 | 4D 82 00 20 */	beqlr
/* 81377834 | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 81377838 | 60 00 80 00 */	ori r0, r0, 0x8000
/* 8137783C | 90 03 00 18 */	stw r0, 0x18(r3)
/* 81377840 | 4E 80 00 20 */	blr
.endfn setKpad__Q210homebutton10ControllerFPC11HBMKPadDatab

# .text:0x568 | 0x81377844 | size: 0x14
# homebutton::Controller::clrKpadButton()
.fn clrKpadButton__Q210homebutton10ControllerFv, global
/* 81377844 | 38 00 00 00 */	li r0, 0x0
/* 81377848 | 90 03 00 10 */	stw r0, 0x10(r3)
/* 8137784C | 90 03 00 14 */	stw r0, 0x14(r3)
/* 81377850 | 90 03 00 18 */	stw r0, 0x18(r3)
/* 81377854 | 4E 80 00 20 */	blr
.endfn clrKpadButton__Q210homebutton10ControllerFv

# .text:0x57C | 0x81377858 | size: 0x10
# homebutton::Controller::setInValidPos()
.fn setInValidPos__Q210homebutton10ControllerFv, global
/* 81377858 | C0 02 83 5C */	lfs f0, lbl_8169475C@sda21(r0)
/* 8137785C | D0 03 00 08 */	stfs f0, 0x8(r3)
/* 81377860 | D0 03 00 0C */	stfs f0, 0xc(r3)
/* 81377864 | 4E 80 00 20 */	blr
.endfn setInValidPos__Q210homebutton10ControllerFv

# .text:0x58C | 0x81377868 | size: 0x10
# homebutton::Controller::connect()
.fn connect__Q210homebutton10ControllerFv, global
/* 81377868 | 7C 64 1B 78 */	mr r4, r3
/* 8137786C | 80 63 00 24 */	lwz r3, 0x24(r3)
/* 81377870 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 81377874 | 48 00 1C 84 */	b Connect__Q210homebutton9RemoteSpkFl
.endfn connect__Q210homebutton10ControllerFv

# .text:0x59C | 0x81377878 | size: 0x4
# homebutton::Controller::disconnect()
.fn disconnect__Q210homebutton10ControllerFv, global
/* 81377878 | 4E 80 00 20 */	blr
.endfn disconnect__Q210homebutton10ControllerFv

# .text:0x5A0 | 0x8137787C | size: 0x8
# homebutton::Controller::setSpeakerVol(float)
.fn setSpeakerVol__Q210homebutton10ControllerFf, global
/* 8137787C | D0 23 00 04 */	stfs f1, 0x4(r3)
/* 81377880 | 4E 80 00 20 */	blr
.endfn setSpeakerVol__Q210homebutton10ControllerFf

# .text:0x5A8 | 0x81377884 | size: 0x94
# homebutton::Controller::playSound(nw4r::snd::SoundArchivePlayer*, int)
.fn playSound__Q210homebutton10ControllerFPQ34nw4r3snd18SoundArchivePlayeri, global
/* 81377884 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81377888 | 7C 08 02 A6 */	mflr r0
/* 8137788C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81377890 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81377894 | 7C 7F 1B 78 */	mr r31, r3
/* 81377898 | 88 03 00 41 */	lbz r0, 0x41(r3)
/* 8137789C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813778A0 | 40 82 00 64 */	bne .L_81377904
/* 813778A4 | C0 23 00 04 */	lfs f1, 0x4(r3)
/* 813778A8 | C0 02 83 60 */	lfs f0, lbl_81694760@sda21(r0)
/* 813778AC | 80 63 00 24 */	lwz r3, 0x24(r3)
/* 813778B0 | EC 00 00 72 */	fmuls f0, f0, f1
/* 813778B4 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 813778B8 | FC 00 00 1E */	fctiwz f0, f0
/* 813778BC | D8 01 00 08 */	stfd f0, 0x8(r1)
/* 813778C0 | 80 C1 00 0C */	lwz r6, 0xc(r1)
/* 813778C4 | 7C C6 07 74 */	extsb r6, r6
/* 813778C8 | 48 00 1C B1 */	bl Play__Q210homebutton9RemoteSpkFliSc
/* 813778CC | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 813778D0 | 48 20 40 09 */	bl fn_8157B8D8
/* 813778D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813778D8 | 41 82 00 2C */	beq .L_81377904
/* 813778DC | 88 1F 00 42 */	lbz r0, 0x42(r31)
/* 813778E0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813778E4 | 40 82 00 10 */	bne .L_813778F4
/* 813778E8 | 48 1B E3 99 */	bl OSGetTime
/* 813778EC | 90 9F 00 34 */	stw r4, 0x34(r31)
/* 813778F0 | 90 7F 00 30 */	stw r3, 0x30(r31)
.L_813778F4:
/* 813778F4 | 38 60 00 01 */	li r3, 0x1
/* 813778F8 | 38 00 00 00 */	li r0, 0x0
/* 813778FC | 98 7F 00 42 */	stb r3, 0x42(r31)
/* 81377900 | 98 1F 00 43 */	stb r0, 0x43(r31)
.L_81377904:
/* 81377904 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81377908 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8137790C | 7C 08 03 A6 */	mtlr r0
/* 81377910 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81377914 | 4E 80 00 20 */	blr
.endfn playSound__Q210homebutton10ControllerFPQ34nw4r3snd18SoundArchivePlayeri

# .text:0x63C | 0x81377918 | size: 0x60
# homebutton::Controller::isPlayingSoundId(int) const
.fn isPlayingSoundId__Q210homebutton10ControllerCFi, global
/* 81377918 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8137791C | 7C 08 02 A6 */	mflr r0
/* 81377920 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81377924 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81377928 | 7C 9F 23 78 */	mr r31, r4
/* 8137792C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81377930 | 7C 7E 1B 78 */	mr r30, r3
/* 81377934 | 80 63 00 24 */	lwz r3, 0x24(r3)
/* 81377938 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8137793C | 48 00 1C BD */	bl isPlaying__Q210homebutton9RemoteSpkCFl
/* 81377940 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81377944 | 40 82 00 0C */	bne .L_81377950
/* 81377948 | 38 60 00 00 */	li r3, 0x0
/* 8137794C | 48 00 00 14 */	b .L_81377960
.L_81377950:
/* 81377950 | 80 7E 00 24 */	lwz r3, 0x24(r30)
/* 81377954 | 7F E5 FB 78 */	mr r5, r31
/* 81377958 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8137795C | 48 00 1C B5 */	bl isPlayingId__Q210homebutton9RemoteSpkCFli
.L_81377960:
/* 81377960 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81377964 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81377968 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8137796C | 7C 08 03 A6 */	mtlr r0
/* 81377970 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81377974 | 4E 80 00 20 */	blr
.endfn isPlayingSoundId__Q210homebutton10ControllerCFi

# .text:0x69C | 0x81377978 | size: 0x10
# homebutton::Controller::initSound()
.fn initSound__Q210homebutton10ControllerFv, global
/* 81377978 | 38 00 00 00 */	li r0, 0x0
/* 8137797C | 98 03 00 42 */	stb r0, 0x42(r3)
/* 81377980 | 98 03 00 43 */	stb r0, 0x43(r3)
/* 81377984 | 4E 80 00 20 */	blr
.endfn initSound__Q210homebutton10ControllerFv

# .text:0x6AC | 0x81377988 | size: 0xB0
# homebutton::Controller::soundOff(int)
.fn soundOff__Q210homebutton10ControllerFi, global
/* 81377988 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8137798C | 7C 08 02 A6 */	mflr r0
/* 81377990 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81377994 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81377998 | 48 28 1B 31 */	bl _savegpr_29
/* 8137799C | 83 E3 00 00 */	lwz r31, 0x0(r3)
/* 813779A0 | 7C 7D 1B 78 */	mr r29, r3
/* 813779A4 | 7C 9E 23 78 */	mr r30, r4
/* 813779A8 | 7F E3 FB 78 */	mr r3, r31
/* 813779AC | 48 20 3F 2D */	bl fn_8157B8D8
/* 813779B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813779B4 | 41 82 00 6C */	beq .L_81377A20
/* 813779B8 | 7F E3 FB 78 */	mr r3, r31
/* 813779BC | 38 80 00 02 */	li r4, 0x2
/* 813779C0 | 38 A0 00 00 */	li r5, 0x0
/* 813779C4 | 48 20 3F 59 */	bl fn_8157B91C
/* 813779C8 | 1C 1F 00 30 */	mulli r0, r31, 0x30
/* 813779CC | 3C 60 81 09 */	lis r3, sAlarmSoundOff__Q210homebutton10Controller@ha
/* 813779D0 | 7F E4 FB 78 */	mr r4, r31
/* 813779D4 | 38 63 A5 F0 */	addi r3, r3, sAlarmSoundOff__Q210homebutton10Controller@l
/* 813779D8 | 7F E3 02 14 */	add r31, r3, r0
/* 813779DC | 7F E3 FB 78 */	mr r3, r31
/* 813779E0 | 48 1B 56 81 */	bl fn_8152D060
/* 813779E4 | 7F E3 FB 78 */	mr r3, r31
/* 813779E8 | 48 1B 52 51 */	bl fn_8152CC38
/* 813779EC | 3C 60 80 00 */	lis r3, 0x8000
/* 813779F0 | 3C E0 81 37 */	lis r7, soundOnCallback__Q210homebutton10ControllerFP7OSAlarmP9OSContext@ha
/* 813779F4 | 80 83 00 F8 */	lwz r4, 0xf8(r3)
/* 813779F8 | 38 00 03 E8 */	li r0, 0x3e8
/* 813779FC | 7F E3 FB 78 */	mr r3, r31
/* 81377A00 | 38 E7 74 64 */	addi r7, r7, soundOnCallback__Q210homebutton10ControllerFP7OSAlarmP9OSContext@l
/* 81377A04 | 54 84 F0 BE */	srwi r4, r4, 2
/* 81377A08 | 38 A0 00 00 */	li r5, 0x0
/* 81377A0C | 7C 04 03 96 */	divwu r0, r4, r0
/* 81377A10 | 7C DE 01 D6 */	mullw r6, r30, r0
/* 81377A14 | 48 1B 51 31 */	bl OSSetAlarm
/* 81377A18 | 38 00 00 01 */	li r0, 0x1
/* 81377A1C | 98 1D 00 41 */	stb r0, 0x41(r29)
.L_81377A20:
/* 81377A20 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81377A24 | 48 28 1A F1 */	bl _restgpr_29
/* 81377A28 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81377A2C | 7C 08 03 A6 */	mtlr r0
/* 81377A30 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81377A34 | 4E 80 00 20 */	blr
.endfn soundOff__Q210homebutton10ControllerFi

# .text:0x75C | 0x81377A38 | size: 0x5C
# homebutton::Controller::soundOn()
.fn soundOn__Q210homebutton10ControllerFv, global
/* 81377A38 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81377A3C | 7C 08 02 A6 */	mflr r0
/* 81377A40 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81377A44 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81377A48 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81377A4C | 7C 7E 1B 78 */	mr r30, r3
/* 81377A50 | 83 E3 00 00 */	lwz r31, 0x0(r3)
/* 81377A54 | 7F E3 FB 78 */	mr r3, r31
/* 81377A58 | 48 20 3E 81 */	bl fn_8157B8D8
/* 81377A5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81377A60 | 41 82 00 14 */	beq .L_81377A74
/* 81377A64 | 7F E3 FB 78 */	mr r3, r31
/* 81377A68 | 38 80 00 03 */	li r4, 0x3
/* 81377A6C | 38 A0 00 00 */	li r5, 0x0
/* 81377A70 | 48 20 3E AD */	bl fn_8157B91C
.L_81377A74:
/* 81377A74 | 38 00 00 00 */	li r0, 0x0
/* 81377A78 | 98 1E 00 41 */	stb r0, 0x41(r30)
/* 81377A7C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81377A80 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81377A84 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81377A88 | 7C 08 03 A6 */	mtlr r0
/* 81377A8C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81377A90 | 4E 80 00 20 */	blr
.endfn soundOn__Q210homebutton10ControllerFv

# .text:0x7B8 | 0x81377A94 | size: 0x10
# homebutton::Controller::isPlayReady() const
.fn isPlayReady__Q210homebutton10ControllerCFv, global
/* 81377A94 | 7C 64 1B 78 */	mr r4, r3
/* 81377A98 | 80 63 00 24 */	lwz r3, 0x24(r3)
/* 81377A9C | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 81377AA0 | 48 00 1B A0 */	b isPlayReady__Q210homebutton9RemoteSpkCFl
.endfn isPlayReady__Q210homebutton10ControllerCFv

# .text:0x7C8 | 0x81377AA4 | size: 0x4
# homebutton::Controller::getController()
.fn getController__Q210homebutton10ControllerFv, global
/* 81377AA4 | 4E 80 00 20 */	blr
.endfn getController__Q210homebutton10ControllerFv

# .text:0x7CC | 0x81377AA8 | size: 0x58
# homebutton::Controller::startMotor()
.fn startMotor__Q210homebutton10ControllerFv, global
/* 81377AA8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81377AAC | 7C 08 02 A6 */	mflr r0
/* 81377AB0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81377AB4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81377AB8 | 7C 7F 1B 78 */	mr r31, r3
/* 81377ABC | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 81377AC0 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 81377AC4 | 40 80 00 28 */	bge .L_81377AEC
/* 81377AC8 | 80 63 00 24 */	lwz r3, 0x24(r3)
/* 81377ACC | 48 00 1B 2D */	bl isPlaying__Q210homebutton9RemoteSpkCFl
/* 81377AD0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81377AD4 | 40 82 00 18 */	bne .L_81377AEC
/* 81377AD8 | 38 00 00 01 */	li r0, 0x1
/* 81377ADC | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 81377AE0 | 98 1F 00 1C */	stb r0, 0x1c(r31)
/* 81377AE4 | 38 80 00 01 */	li r4, 0x1
/* 81377AE8 | 48 20 34 71 */	bl fn_8157AF58
.L_81377AEC:
/* 81377AEC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81377AF0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81377AF4 | 7C 08 03 A6 */	mtlr r0
/* 81377AF8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81377AFC | 4E 80 00 20 */	blr
.endfn startMotor__Q210homebutton10ControllerFv

# .text:0x824 | 0x81377B00 | size: 0x30
# homebutton::Controller::stopMotor()
.fn stopMotor__Q210homebutton10ControllerFv, global
/* 81377B00 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81377B04 | 2C 05 00 04 */	cmpwi r5, 0x4
/* 81377B08 | 4C 80 00 20 */	bgelr
/* 81377B0C | 88 03 00 1C */	lbz r0, 0x1c(r3)
/* 81377B10 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81377B14 | 4D 82 00 20 */	beqlr
/* 81377B18 | 38 00 00 00 */	li r0, 0x0
/* 81377B1C | 38 80 00 00 */	li r4, 0x0
/* 81377B20 | 98 03 00 1C */	stb r0, 0x1c(r3)
/* 81377B24 | 7C A3 2B 78 */	mr r3, r5
/* 81377B28 | 48 20 34 30 */	b fn_8157AF58
/* 81377B2C | 4E 80 00 20 */	blr
.endfn stopMotor__Q210homebutton10ControllerFv

# .text:0x854 | 0x81377B30 | size: 0x84
# homebutton::Controller::getInfoAsync(WPADInfo*)
.fn getInfoAsync__Q210homebutton10ControllerFP8WPADInfo, global
/* 81377B30 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81377B34 | 7C 08 02 A6 */	mflr r0
/* 81377B38 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81377B3C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81377B40 | 7C 9F 23 78 */	mr r31, r4
/* 81377B44 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81377B48 | 7C 7E 1B 78 */	mr r30, r3
/* 81377B4C | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81377B50 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 81377B54 | 41 80 00 0C */	blt .L_81377B60
/* 81377B58 | 38 60 FF FE */	li r3, -0x2
/* 81377B5C | 48 00 00 40 */	b .L_81377B9C
.L_81377B60:
/* 81377B60 | 80 63 00 24 */	lwz r3, 0x24(r3)
/* 81377B64 | 7C 04 03 78 */	mr r4, r0
/* 81377B68 | 48 00 1A 91 */	bl isPlaying__Q210homebutton9RemoteSpkCFl
/* 81377B6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81377B70 | 40 82 00 10 */	bne .L_81377B80
/* 81377B74 | 88 1E 00 1C */	lbz r0, 0x1c(r30)
/* 81377B78 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81377B7C | 41 82 00 0C */	beq .L_81377B88
.L_81377B80:
/* 81377B80 | 38 60 FF FE */	li r3, -0x2
/* 81377B84 | 48 00 00 18 */	b .L_81377B9C
.L_81377B88:
/* 81377B88 | 3C A0 81 37 */	lis r5, ControllerCallback__Q210homebutton10ControllerFll@ha
/* 81377B8C | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 81377B90 | 7F E4 FB 78 */	mr r4, r31
/* 81377B94 | 38 A5 7B B4 */	addi r5, r5, ControllerCallback__Q210homebutton10ControllerFll@l
/* 81377B98 | 48 20 31 A1 */	bl fn_8157AD38
.L_81377B9C:
/* 81377B9C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81377BA0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81377BA4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81377BA8 | 7C 08 03 A6 */	mtlr r0
/* 81377BAC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81377BB0 | 4E 80 00 20 */	blr
.endfn getInfoAsync__Q210homebutton10ControllerFP8WPADInfo

# .text:0x8D8 | 0x81377BB4 | size: 0x20
# homebutton::Controller::ControllerCallback(long, long)
.fn ControllerCallback__Q210homebutton10ControllerFll, global
/* 81377BB4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81377BB8 | 4C 82 00 20 */	bnelr
/* 81377BBC | 2C 03 00 04 */	cmpwi r3, 0x4
/* 81377BC0 | 4C 80 00 20 */	bgelr
/* 81377BC4 | 38 00 00 01 */	li r0, 0x1
/* 81377BC8 | 38 8D A9 78 */	li r4, lbl_816989B8@sda21
/* 81377BCC | 7C 04 19 AE */	stbx r0, r4, r3
/* 81377BD0 | 4E 80 00 20 */	blr
.endfn ControllerCallback__Q210homebutton10ControllerFll

# .text:0x8F8 | 0x81377BD4 | size: 0x20
# homebutton::Controller::getBatteryFlag() const
.fn getBatteryFlag__Q210homebutton10ControllerCFv, global
/* 81377BD4 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81377BD8 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 81377BDC | 41 80 00 0C */	blt .L_81377BE8
/* 81377BE0 | 38 60 00 00 */	li r3, 0x0
/* 81377BE4 | 4E 80 00 20 */	blr
.L_81377BE8:
/* 81377BE8 | 38 6D A9 78 */	li r3, lbl_816989B8@sda21
/* 81377BEC | 7C 63 00 AE */	lbzx r3, r3, r0
/* 81377BF0 | 4E 80 00 20 */	blr
.endfn getBatteryFlag__Q210homebutton10ControllerCFv

# .text:0x918 | 0x81377BF4 | size: 0x1C
# homebutton::Controller::clrBatteryFlag()
.fn clrBatteryFlag__Q210homebutton10ControllerFv, global
/* 81377BF4 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 81377BF8 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 81377BFC | 4C 80 00 20 */	bgelr
/* 81377C00 | 38 00 00 00 */	li r0, 0x0
/* 81377C04 | 38 6D A9 78 */	li r3, lbl_816989B8@sda21
/* 81377C08 | 7C 03 21 AE */	stbx r0, r3, r4
/* 81377C0C | 4E 80 00 20 */	blr
.endfn clrBatteryFlag__Q210homebutton10ControllerFv

# 0x81645630..0x81645640 | size: 0x10
.data
.balign 8

# .data:0x0 | 0x81645630 | size: 0x10
.obj lbl_81645630, global
	.string "Create %d\n\000\000\000\000\000"
.endobj lbl_81645630

# 0x81694758..0x81694768 | size: 0x10
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694758 | size: 0x4
.obj lbl_81694758, global
	.float 1
.endobj lbl_81694758

# .sdata2:0x4 | 0x8169475C | size: 0x4
.obj lbl_8169475C, global
	.float -10000
.endobj lbl_8169475C

# .sdata2:0x8 | 0x81694760 | size: 0x8
.obj lbl_81694760, global
	.float 10
	.float 0
.endobj lbl_81694760

# 0x816989B8..0x816989C0 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x816989B8 | size: 0x4
.obj lbl_816989B8, global
	.skip 0x4
.endobj lbl_816989B8

# .sbss:0x4 | 0x816989BC | size: 0x4
.obj lbl_816989BC, global
	.skip 0x4
.endobj lbl_816989BC
