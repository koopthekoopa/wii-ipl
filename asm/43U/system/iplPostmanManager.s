.include "macros.inc"
.file "iplPostmanManager.cpp"

# 0x813571A8..0x81357CB8 | size: 0xB10
.text
.balign 4

# .text:0x0 | 0x813571A8 | size: 0x88
# ipl::postman::Manager::Manager(EGG::Heap*)
.fn __ct__Q33ipl7postman7ManagerFPQ23EGG4Heap, global
/* 813571A8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813571AC | 7C 08 02 A6 */	mflr r0
/* 813571B0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813571B4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813571B8 | 7C 9F 23 78 */	mr r31, r4
/* 813571BC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813571C0 | 7C 7E 1B 78 */	mr r30, r3
/* 813571C4 | 48 00 DA 0D */	bl __ct__Q33ipl7utility9ut_threadFv
/* 813571C8 | 3C 80 81 64 */	lis r4, __vt__Q33ipl7postman7Manager@ha
/* 813571CC | 3C C0 81 64 */	lis r6, "__vt__Q33ipl7utility14ut_message<32>"@ha
/* 813571D0 | 38 00 00 00 */	li r0, 0x0
/* 813571D4 | 93 FE 03 2C */	stw r31, 0x32c(r30)
/* 813571D8 | 38 84 91 00 */	addi r4, r4, __vt__Q33ipl7postman7Manager@l
/* 813571DC | 38 C6 91 2C */	addi r6, r6, "__vt__Q33ipl7utility14ut_message<32>"@l
/* 813571E0 | 90 9E 00 00 */	stw r4, 0x0(r30)
/* 813571E4 | 38 7E 03 68 */	addi r3, r30, 0x368
/* 813571E8 | 38 83 00 24 */	addi r4, r3, 0x24
/* 813571EC | 38 A0 00 20 */	li r5, 0x20
/* 813571F0 | 90 1E 03 30 */	stw r0, 0x330(r30)
/* 813571F4 | 90 1E 03 34 */	stw r0, 0x334(r30)
/* 813571F8 | 90 DE 03 68 */	stw r6, 0x368(r30)
/* 813571FC | 81 9E 03 68 */	lwz r12, 0x368(r30)
/* 81357200 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81357204 | 7D 89 03 A6 */	mtctr r12
/* 81357208 | 4E 80 04 21 */	bctrl
/* 8135720C | 38 7E 03 38 */	addi r3, r30, 0x338
/* 81357210 | 48 1D 56 D5 */	bl OSCreateAlarm
/* 81357214 | 7F C3 F3 78 */	mr r3, r30
/* 81357218 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8135721C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81357220 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81357224 | 7C 08 03 A6 */	mtlr r0
/* 81357228 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8135722C | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl7postman7ManagerFPQ23EGG4Heap

# .text:0x88 | 0x81357230 | size: 0x40
# ipl::utility::ut_message<32>::~ut_message()
.fn "__dt__Q33ipl7utility14ut_message<32>Fv", global
/* 81357230 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81357234 | 7C 08 02 A6 */	mflr r0
/* 81357238 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135723C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81357240 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81357244 | 7C 7F 1B 78 */	mr r31, r3
/* 81357248 | 41 82 00 10 */	beq .L_81357258
/* 8135724C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81357250 | 40 81 00 08 */	ble .L_81357258
/* 81357254 | 48 2A 0E 91 */	bl __dl__FPv
.L_81357258:
/* 81357258 | 7F E3 FB 78 */	mr r3, r31
/* 8135725C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81357260 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81357264 | 7C 08 03 A6 */	mtlr r0
/* 81357268 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8135726C | 4E 80 00 20 */	blr
.endfn "__dt__Q33ipl7utility14ut_message<32>Fv"

# .text:0xC8 | 0x81357270 | size: 0x78
# ipl::postman::Manager::InitManager()
.fn InitManager__Q33ipl7postman7ManagerFv, global
/* 81357270 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81357274 | 7C 08 02 A6 */	mflr r0
/* 81357278 | 38 A0 00 20 */	li r5, 0x20
/* 8135727C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81357280 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81357284 | 3F E0 00 01 */	lis r31, 0x1
/* 81357288 | 38 9F 80 00 */	addi r4, r31, -0x8000
/* 8135728C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81357290 | 7C 7E 1B 78 */	mr r30, r3
/* 81357294 | 80 63 03 2C */	lwz r3, 0x32c(r3)
/* 81357298 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8135729C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813572A0 | 7D 89 03 A6 */	mtctr r12
/* 813572A4 | 4E 80 04 21 */	bctrl
/* 813572A8 | 90 7E 03 30 */	stw r3, 0x330(r30)
/* 813572AC | 7C 64 1B 78 */	mr r4, r3
/* 813572B0 | 7F C3 F3 78 */	mr r3, r30
/* 813572B4 | 38 BF 80 00 */	addi r5, r31, -0x8000
/* 813572B8 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813572BC | 38 C0 00 15 */	li r6, 0x15
/* 813572C0 | 38 E0 00 00 */	li r7, 0x0
/* 813572C4 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813572C8 | 7D 89 03 A6 */	mtctr r12
/* 813572CC | 4E 80 04 21 */	bctrl
/* 813572D0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813572D4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813572D8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813572DC | 7C 08 03 A6 */	mtlr r0
/* 813572E0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813572E4 | 4E 80 00 20 */	blr
.endfn InitManager__Q33ipl7postman7ManagerFv

# .text:0x140 | 0x813572E8 | size: 0x18
# ipl::postman::Manager::Send_ReceiveImmediately()
.fn Send_ReceiveImmediately__Q33ipl7postman7ManagerFv, global
/* 813572E8 | 85 83 03 68 */	lwzu r12, 0x368(r3)
/* 813572EC | 38 80 00 00 */	li r4, 0x0
/* 813572F0 | 38 A0 00 00 */	li r5, 0x0
/* 813572F4 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813572F8 | 7D 89 03 A6 */	mtctr r12
/* 813572FC | 4E 80 04 20 */	bctr
.endfn Send_ReceiveImmediately__Q33ipl7postman7ManagerFv

# .text:0x158 | 0x81357300 | size: 0x68
# ipl::postman::Manager::Send_Pause()
.fn Send_Pause__Q33ipl7postman7ManagerFv, global
/* 81357300 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81357304 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81357308 | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 8135730C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81357310 | 41 82 00 0C */	beq .L_8135731C
/* 81357314 | 38 00 00 00 */	li r0, 0x0
/* 81357318 | 48 00 00 08 */	b .L_81357320
.L_8135731C:
/* 8135731C | 80 04 00 8C */	lwz r0, 0x8c(r4)
.L_81357320:
/* 81357320 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81357324 | 41 82 00 2C */	beq .L_81357350
/* 81357328 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8135732C | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81357330 | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 81357334 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81357338 | 41 82 00 0C */	beq .L_81357344
/* 8135733C | 38 80 00 00 */	li r4, 0x0
/* 81357340 | 48 00 00 08 */	b .L_81357348
.L_81357344:
/* 81357344 | 80 84 00 8C */	lwz r4, 0x8c(r4)
.L_81357348:
/* 81357348 | 38 00 00 01 */	li r0, 0x1
/* 8135734C | 98 04 0A 32 */	stb r0, 0xa32(r4)
.L_81357350:
/* 81357350 | 85 83 03 68 */	lwzu r12, 0x368(r3)
/* 81357354 | 38 80 00 02 */	li r4, 0x2
/* 81357358 | 38 A0 00 00 */	li r5, 0x0
/* 8135735C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81357360 | 7D 89 03 A6 */	mtctr r12
/* 81357364 | 4E 80 04 20 */	bctr
.endfn Send_Pause__Q33ipl7postman7ManagerFv

# .text:0x1C0 | 0x81357368 | size: 0x68
# ipl::postman::Manager::Send_Start()
.fn Send_Start__Q33ipl7postman7ManagerFv, global
/* 81357368 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8135736C | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81357370 | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 81357374 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81357378 | 41 82 00 0C */	beq .L_81357384
/* 8135737C | 38 00 00 00 */	li r0, 0x0
/* 81357380 | 48 00 00 08 */	b .L_81357388
.L_81357384:
/* 81357384 | 80 04 00 8C */	lwz r0, 0x8c(r4)
.L_81357388:
/* 81357388 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135738C | 41 82 00 2C */	beq .L_813573B8
/* 81357390 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81357394 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81357398 | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 8135739C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813573A0 | 41 82 00 0C */	beq .L_813573AC
/* 813573A4 | 38 80 00 00 */	li r4, 0x0
/* 813573A8 | 48 00 00 08 */	b .L_813573B0
.L_813573AC:
/* 813573AC | 80 84 00 8C */	lwz r4, 0x8c(r4)
.L_813573B0:
/* 813573B0 | 38 00 00 00 */	li r0, 0x0
/* 813573B4 | 98 04 0A 32 */	stb r0, 0xa32(r4)
.L_813573B8:
/* 813573B8 | 85 83 03 68 */	lwzu r12, 0x368(r3)
/* 813573BC | 38 80 00 01 */	li r4, 0x1
/* 813573C0 | 38 A0 00 00 */	li r5, 0x0
/* 813573C4 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813573C8 | 7D 89 03 A6 */	mtctr r12
/* 813573CC | 4E 80 04 20 */	bctr
.endfn Send_Start__Q33ipl7postman7ManagerFv

# .text:0x228 | 0x813573D0 | size: 0x18
# ipl::postman::Manager::Send_GetUsbEtherMacAddr()
.fn Send_GetUsbEtherMacAddr__Q33ipl7postman7ManagerFv, global
/* 813573D0 | 85 83 03 68 */	lwzu r12, 0x368(r3)
/* 813573D4 | 38 80 00 04 */	li r4, 0x4
/* 813573D8 | 38 A0 00 00 */	li r5, 0x0
/* 813573DC | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813573E0 | 7D 89 03 A6 */	mtctr r12
/* 813573E4 | 4E 80 04 20 */	bctr
.endfn Send_GetUsbEtherMacAddr__Q33ipl7postman7ManagerFv

# .text:0x240 | 0x813573E8 | size: 0x18
# ipl::postman::Manager::Send_DownloadTaskReload()
.fn Send_DownloadTaskReload__Q33ipl7postman7ManagerFv, global
/* 813573E8 | 85 83 03 68 */	lwzu r12, 0x368(r3)
/* 813573EC | 38 80 00 05 */	li r4, 0x5
/* 813573F0 | 38 A0 00 00 */	li r5, 0x0
/* 813573F4 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813573F8 | 7D 89 03 A6 */	mtctr r12
/* 813573FC | 4E 80 04 20 */	bctr
.endfn Send_DownloadTaskReload__Q33ipl7postman7ManagerFv

# .text:0x258 | 0x81357400 | size: 0x38
# ipl::postman::Manager::alarm_handler_(OSAlarm*, OSContext*)
.fn alarm_handler___Q33ipl7postman7ManagerFP7OSAlarmP9OSContext, global
/* 81357400 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81357404 | 7C 08 02 A6 */	mflr r0
/* 81357408 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8135740C | 48 1D 5C 5D */	bl fn_8152D068
/* 81357410 | 85 83 03 68 */	lwzu r12, 0x368(r3)
/* 81357414 | 38 80 00 00 */	li r4, 0x0
/* 81357418 | 38 A0 00 00 */	li r5, 0x0
/* 8135741C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81357420 | 7D 89 03 A6 */	mtctr r12
/* 81357424 | 4E 80 04 21 */	bctrl
/* 81357428 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135742C | 7C 08 03 A6 */	mtlr r0
/* 81357430 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81357434 | 4E 80 00 20 */	blr
.endfn alarm_handler___Q33ipl7postman7ManagerFP7OSAlarmP9OSContext

# .text:0x290 | 0x81357438 | size: 0x218
# ipl::postman::Manager::Run()
.fn Run__Q33ipl7postman7ManagerFv, global
/* 81357438 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8135743C | 7C 08 02 A6 */	mflr r0
/* 81357440 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81357444 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81357448 | 48 2A 20 6D */	bl _savegpr_24
/* 8135744C | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81357450 | 3F 20 81 64 */	lis r25, lbl_81638F08@ha
/* 81357454 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81357458 | 7C 7F 1B 78 */	mr r31, r3
/* 8135745C | 80 84 00 9C */	lwz r4, 0x9c(r4)
/* 81357460 | 3B 39 8F 08 */	addi r25, r25, lbl_81638F08@l
/* 81357464 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 81357468 | 30 04 FF FF */	subic r0, r4, 0x1
/* 8135746C | 7C 00 21 11 */	subfe. r0, r0, r4
/* 81357470 | 40 82 01 C4 */	bne .L_81357634
/* 81357474 | 38 00 00 05 */	li r0, 0x5
/* 81357478 | 90 03 03 34 */	stw r0, 0x334(r3)
/* 8135747C | 48 00 01 D5 */	bl update_playlog___Q33ipl7postman7ManagerFv
/* 81357480 | 7F E3 FB 78 */	mr r3, r31
/* 81357484 | 48 00 02 7D */	bl add_dl_task___Q33ipl7postman7ManagerFv
/* 81357488 | 7F E3 FB 78 */	mr r3, r31
/* 8135748C | 48 00 03 65 */	bl manage_dltasklist_for_menu___Q33ipl7postman7ManagerFv
/* 81357490 | 7F E3 FB 78 */	mr r3, r31
/* 81357494 | 48 00 05 ED */	bl set_nwc24_permission___Q33ipl7postman7ManagerFv
/* 81357498 | 48 15 39 71 */	bl NWC24ResumeScheduler
/* 8135749C | 38 79 00 00 */	addi r3, r25, 0x0
/* 813574A0 | 4C C6 31 82 */	crclr cr1eq
/* 813574A4 | 48 1D 71 FD */	bl OSReport
/* 813574A8 | 7F E3 FB 78 */	mr r3, r31
/* 813574AC | 48 00 02 A5 */	bl save_mail_now___Q33ipl7postman7ManagerFv
/* 813574B0 | 7F E3 FB 78 */	mr r3, r31
/* 813574B4 | 48 00 02 ED */	bl do_daily_tasks___Q33ipl7postman7ManagerFv
/* 813574B8 | 48 13 B6 05 */	bl NCDGetLinkStatus
/* 813574BC | 7C 64 1B 78 */	mr r4, r3
/* 813574C0 | 38 79 00 19 */	addi r3, r25, 0x19
/* 813574C4 | 4C C6 31 82 */	crclr cr1eq
/* 813574C8 | 48 1D 71 D9 */	bl OSReport
/* 813574CC | 7F E3 FB 78 */	mr r3, r31
/* 813574D0 | 38 80 00 01 */	li r4, 0x1
/* 813574D4 | 48 00 07 59 */	bl ncd_debug_print___Q33ipl7postman7ManagerFb
/* 813574D8 | 3B 40 00 01 */	li r26, 0x1
/* 813574DC | 93 5F 03 34 */	stw r26, 0x334(r31)
/* 813574E0 | 3B C0 00 04 */	li r30, 0x4
/* 813574E4 | 3B A0 00 03 */	li r29, 0x3
/* 813574E8 | 3B 80 00 02 */	li r28, 0x2
/* 813574EC | 3B 60 FF FF */	li r27, -0x1
.L_813574F0:
/* 813574F0 | 93 61 00 08 */	stw r27, 0x8(r1)
/* 813574F4 | 38 7F 03 68 */	addi r3, r31, 0x368
/* 813574F8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813574FC | 38 A0 00 01 */	li r5, 0x1
/* 81357500 | 81 9F 03 68 */	lwz r12, 0x368(r31)
/* 81357504 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81357508 | 7D 89 03 A6 */	mtctr r12
/* 8135750C | 4E 80 04 21 */	bctrl
/* 81357510 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 81357514 | 38 79 00 36 */	addi r3, r25, 0x36
/* 81357518 | 4C C6 31 82 */	crclr cr1eq
/* 8135751C | 48 1D 71 85 */	bl OSReport
/* 81357520 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 81357524 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 81357528 | 41 82 00 E8 */	beq .L_81357610
/* 8135752C | 40 80 00 1C */	bge .L_81357548
/* 81357530 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81357534 | 41 82 00 24 */	beq .L_81357558
/* 81357538 | 40 80 00 7C */	bge .L_813575B4
/* 8135753C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81357540 | 40 80 00 60 */	bge .L_813575A0
/* 81357544 | 48 00 00 E0 */	b .L_81357624
.L_81357548:
/* 81357548 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 8135754C | 41 82 00 AC */	beq .L_813575F8
/* 81357550 | 40 80 00 D4 */	bge .L_81357624
/* 81357554 | 48 00 00 8C */	b .L_813575E0
.L_81357558:
/* 81357558 | 80 1F 03 34 */	lwz r0, 0x334(r31)
/* 8135755C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81357560 | 41 82 00 40 */	beq .L_813575A0
/* 81357564 | 93 5F 03 34 */	stw r26, 0x334(r31)
/* 81357568 | 48 13 B5 55 */	bl NCDGetLinkStatus
/* 8135756C | 7C 64 1B 78 */	mr r4, r3
/* 81357570 | 38 79 00 19 */	addi r3, r25, 0x19
/* 81357574 | 4C C6 31 82 */	crclr cr1eq
/* 81357578 | 48 1D 71 29 */	bl OSReport
/* 8135757C | 7F E3 FB 78 */	mr r3, r31
/* 81357580 | 38 80 00 01 */	li r4, 0x1
/* 81357584 | 48 00 06 A9 */	bl ncd_debug_print___Q33ipl7postman7ManagerFb
/* 81357588 | 7F E3 FB 78 */	mr r3, r31
/* 8135758C | 48 00 04 F5 */	bl set_nwc24_permission___Q33ipl7postman7ManagerFv
/* 81357590 | 48 15 38 79 */	bl NWC24ResumeScheduler
/* 81357594 | 38 79 00 00 */	addi r3, r25, 0x0
/* 81357598 | 4C C6 31 82 */	crclr cr1eq
/* 8135759C | 48 1D 71 05 */	bl OSReport
.L_813575A0:
/* 813575A0 | 38 7F 03 38 */	addi r3, r31, 0x338
/* 813575A4 | 48 1D 56 95 */	bl fn_8152CC38
/* 813575A8 | 7F E3 FB 78 */	mr r3, r31
/* 813575AC | 48 00 02 FD */	bl receive_immediately___Q33ipl7postman7ManagerFv
/* 813575B0 | 4B FF FF 40 */	b .L_813574F0
.L_813575B4:
/* 813575B4 | 80 1F 03 34 */	lwz r0, 0x334(r31)
/* 813575B8 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813575BC | 41 82 FF 34 */	beq .L_813574F0
/* 813575C0 | 38 7F 03 38 */	addi r3, r31, 0x338
/* 813575C4 | 48 1D 56 75 */	bl fn_8152CC38
/* 813575C8 | 48 15 37 71 */	bl NWC24SuspendScheduler
/* 813575CC | 38 79 00 56 */	addi r3, r25, 0x56
/* 813575D0 | 4C C6 31 82 */	crclr cr1eq
/* 813575D4 | 48 1D 70 CD */	bl OSReport
/* 813575D8 | 93 9F 03 34 */	stw r28, 0x334(r31)
/* 813575DC | 4B FF FF 14 */	b .L_813574F0
.L_813575E0:
/* 813575E0 | 83 1F 03 34 */	lwz r24, 0x334(r31)
/* 813575E4 | 7F E3 FB 78 */	mr r3, r31
/* 813575E8 | 93 BF 03 34 */	stw r29, 0x334(r31)
/* 813575EC | 48 00 04 1D */	bl get_usb_ether_macaddr___Q33ipl7postman7ManagerFv
/* 813575F0 | 93 1F 03 34 */	stw r24, 0x334(r31)
/* 813575F4 | 4B FF FE FC */	b .L_813574F0
.L_813575F8:
/* 813575F8 | 83 1F 03 34 */	lwz r24, 0x334(r31)
/* 813575FC | 7F E3 FB 78 */	mr r3, r31
/* 81357600 | 93 DF 03 34 */	stw r30, 0x334(r31)
/* 81357604 | 48 00 00 FD */	bl add_dl_task___Q33ipl7postman7ManagerFv
/* 81357608 | 93 1F 03 34 */	stw r24, 0x334(r31)
/* 8135760C | 4B FF FE E4 */	b .L_813574F0
.L_81357610:
/* 81357610 | 38 00 00 02 */	li r0, 0x2
/* 81357614 | 38 7F 03 38 */	addi r3, r31, 0x338
/* 81357618 | 90 1F 03 34 */	stw r0, 0x334(r31)
/* 8135761C | 48 1D 56 1D */	bl fn_8152CC38
/* 81357620 | 48 00 00 14 */	b .L_81357634
.L_81357624:
/* 81357624 | 38 79 00 71 */	addi r3, r25, 0x71
/* 81357628 | 4C C6 31 82 */	crclr cr1eq
/* 8135762C | 48 1D 70 75 */	bl OSReport
/* 81357630 | 4B FF FE C0 */	b .L_813574F0
.L_81357634:
/* 81357634 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81357638 | 38 60 00 00 */	li r3, 0x0
/* 8135763C | 48 2A 1E C5 */	bl _restgpr_24
/* 81357640 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81357644 | 7C 08 03 A6 */	mtlr r0
/* 81357648 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8135764C | 4E 80 00 20 */	blr
.endfn Run__Q33ipl7postman7ManagerFv

# .text:0x4A8 | 0x81357650 | size: 0xB0
# ipl::postman::Manager::update_playlog_()
.fn update_playlog___Q33ipl7postman7ManagerFv, global
/* 81357650 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81357654 | 7C 08 02 A6 */	mflr r0
/* 81357658 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8135765C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81357660 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81357664 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 81357668 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135766C | 41 82 00 0C */	beq .L_81357678
/* 81357670 | 38 00 00 00 */	li r0, 0x0
/* 81357674 | 48 00 00 08 */	b .L_8135767C
.L_81357678:
/* 81357678 | 80 03 00 7C */	lwz r0, 0x7c(r3)
.L_8135767C:
/* 8135767C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81357680 | 41 82 00 70 */	beq .L_813576F0
/* 81357684 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81357688 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8135768C | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 81357690 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81357694 | 41 82 00 0C */	beq .L_813576A0
/* 81357698 | 38 60 00 00 */	li r3, 0x0
/* 8135769C | 48 00 00 08 */	b .L_813576A4
.L_813576A0:
/* 813576A0 | 80 63 00 7C */	lwz r3, 0x7c(r3)
.L_813576A4:
/* 813576A4 | 4B FE 83 C1 */	bl isOverFlow__Q33ipl3cdb7ManagerCFv
/* 813576A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813576AC | 40 82 00 1C */	bne .L_813576C8
/* 813576B0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813576B4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813576B8 | 88 03 02 C8 */	lbz r0, 0x2c8(r3)
/* 813576BC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813576C0 | 40 82 00 08 */	bne .L_813576C8
/* 813576C4 | 4B FE 90 09 */	bl log__Q23ipl11PlayTimeLogFv
.L_813576C8:
/* 813576C8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813576CC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813576D0 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 813576D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813576D8 | 41 82 00 0C */	beq .L_813576E4
/* 813576DC | 38 60 00 00 */	li r3, 0x0
/* 813576E0 | 48 00 00 08 */	b .L_813576E8
.L_813576E4:
/* 813576E4 | 80 63 00 7C */	lwz r3, 0x7c(r3)
.L_813576E8:
/* 813576E8 | 38 80 00 01 */	li r4, 0x1
/* 813576EC | 4B FE 8C 01 */	bl cleanUpEmptyDirectories__Q33ipl3cdb7ManagerF17CDBRecordLocation
.L_813576F0:
/* 813576F0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813576F4 | 7C 08 03 A6 */	mtlr r0
/* 813576F8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813576FC | 4E 80 00 20 */	blr
.endfn update_playlog___Q33ipl7postman7ManagerFv

# .text:0x558 | 0x81357700 | size: 0x50
# ipl::postman::Manager::add_dl_task_()
.fn add_dl_task___Q33ipl7postman7ManagerFv, global
/* 81357700 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81357704 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81357708 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 8135770C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81357710 | 41 82 00 0C */	beq .L_8135771C
/* 81357714 | 38 00 00 00 */	li r0, 0x0
/* 81357718 | 48 00 00 08 */	b .L_81357720
.L_8135771C:
/* 8135771C | 80 03 00 8C */	lwz r0, 0x8c(r3)
.L_81357720:
/* 81357720 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81357724 | 4D 82 00 20 */	beqlr
/* 81357728 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8135772C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81357730 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 81357734 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81357738 | 41 82 00 0C */	beq .L_81357744
/* 8135773C | 38 60 00 00 */	li r3, 0x0
/* 81357740 | 48 00 00 08 */	b .L_81357748
.L_81357744:
/* 81357744 | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_81357748:
/* 81357748 | 4B FE BF 24 */	b addDlTask__Q33ipl5nwc247ManagerFv
/* 8135774C | 4E 80 00 20 */	blr
.endfn add_dl_task___Q33ipl7postman7ManagerFv

# .text:0x5A8 | 0x81357750 | size: 0x50
# ipl::postman::Manager::save_mail_now_()
.fn save_mail_now___Q33ipl7postman7ManagerFv, global
/* 81357750 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81357754 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81357758 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 8135775C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81357760 | 41 82 00 0C */	beq .L_8135776C
/* 81357764 | 38 00 00 00 */	li r0, 0x0
/* 81357768 | 48 00 00 08 */	b .L_81357770
.L_8135776C:
/* 8135776C | 80 03 00 8C */	lwz r0, 0x8c(r3)
.L_81357770:
/* 81357770 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81357774 | 4D 82 00 20 */	beqlr
/* 81357778 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8135777C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81357780 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 81357784 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81357788 | 41 82 00 0C */	beq .L_81357794
/* 8135778C | 38 60 00 00 */	li r3, 0x0
/* 81357790 | 48 00 00 08 */	b .L_81357798
.L_81357794:
/* 81357794 | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_81357798:
/* 81357798 | 4B FE AE 2C */	b saveMailNow__Q33ipl5nwc247ManagerFv
/* 8135779C | 4E 80 00 20 */	blr
.endfn save_mail_now___Q33ipl7postman7ManagerFv

# .text:0x5F8 | 0x813577A0 | size: 0x50
# ipl::postman::Manager::do_daily_tasks_()
.fn do_daily_tasks___Q33ipl7postman7ManagerFv, global
/* 813577A0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813577A4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813577A8 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 813577AC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813577B0 | 41 82 00 0C */	beq .L_813577BC
/* 813577B4 | 38 00 00 00 */	li r0, 0x0
/* 813577B8 | 48 00 00 08 */	b .L_813577C0
.L_813577BC:
/* 813577BC | 80 03 00 8C */	lwz r0, 0x8c(r3)
.L_813577C0:
/* 813577C0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813577C4 | 4D 82 00 20 */	beqlr
/* 813577C8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813577CC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813577D0 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 813577D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813577D8 | 41 82 00 0C */	beq .L_813577E4
/* 813577DC | 38 60 00 00 */	li r3, 0x0
/* 813577E0 | 48 00 00 08 */	b .L_813577E8
.L_813577E4:
/* 813577E4 | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_813577E8:
/* 813577E8 | 4B FE AB C0 */	b doDailyTasks__Q33ipl5nwc247ManagerFv
/* 813577EC | 4E 80 00 20 */	blr
.endfn do_daily_tasks___Q33ipl7postman7ManagerFv

# .text:0x648 | 0x813577F0 | size: 0xB8
# ipl::postman::Manager::manage_dltasklist_for_menu_()
.fn manage_dltasklist_for_menu___Q33ipl7postman7ManagerFv, global
/* 813577F0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813577F4 | 7C 08 02 A6 */	mflr r0
/* 813577F8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813577FC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81357800 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81357804 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 81357808 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135780C | 41 82 00 0C */	beq .L_81357818
/* 81357810 | 38 00 00 00 */	li r0, 0x0
/* 81357814 | 48 00 00 08 */	b .L_8135781C
.L_81357818:
/* 81357818 | 80 03 00 8C */	lwz r0, 0x8c(r3)
.L_8135781C:
/* 8135781C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81357820 | 41 82 00 78 */	beq .L_81357898
/* 81357824 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81357828 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8135782C | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 81357830 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81357834 | 41 82 00 0C */	beq .L_81357840
/* 81357838 | 38 60 00 00 */	li r3, 0x0
/* 8135783C | 48 00 00 08 */	b .L_81357844
.L_81357840:
/* 81357840 | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_81357844:
/* 81357844 | 4B FE A1 FD */	bl open__Q33ipl5nwc247ManagerFv
/* 81357848 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135784C | 41 82 00 4C */	beq .L_81357898
/* 81357850 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81357854 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81357858 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 8135785C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81357860 | 41 82 00 0C */	beq .L_8135786C
/* 81357864 | 38 60 00 00 */	li r3, 0x0
/* 81357868 | 48 00 00 08 */	b .L_81357870
.L_8135786C:
/* 8135786C | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_81357870:
/* 81357870 | 4B FE AB 79 */	bl manageDlTaskListForMenu__Q33ipl5nwc247ManagerFv
/* 81357874 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81357878 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8135787C | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 81357880 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81357884 | 41 82 00 0C */	beq .L_81357890
/* 81357888 | 38 60 00 00 */	li r3, 0x0
/* 8135788C | 48 00 00 08 */	b .L_81357894
.L_81357890:
/* 81357890 | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_81357894:
/* 81357894 | 4B FE A2 21 */	bl close__Q33ipl5nwc247ManagerFv
.L_81357898:
/* 81357898 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135789C | 7C 08 03 A6 */	mtlr r0
/* 813578A0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813578A4 | 4E 80 00 20 */	blr
.endfn manage_dltasklist_for_menu___Q33ipl7postman7ManagerFv

# .text:0x700 | 0x813578A8 | size: 0x108
# ipl::postman::Manager::receive_immediately_()
.fn receive_immediately___Q33ipl7postman7ManagerFv, global
/* 813578A8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813578AC | 7C 08 02 A6 */	mflr r0
/* 813578B0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813578B4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813578B8 | 7C 7F 1B 78 */	mr r31, r3
/* 813578BC | 80 03 03 34 */	lwz r0, 0x334(r3)
/* 813578C0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813578C4 | 40 82 00 C8 */	bne .L_8135798C
/* 813578C8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813578CC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813578D0 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 813578D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813578D8 | 41 82 00 0C */	beq .L_813578E4
/* 813578DC | 38 00 00 00 */	li r0, 0x0
/* 813578E0 | 48 00 00 08 */	b .L_813578E8
.L_813578E4:
/* 813578E4 | 80 03 00 8C */	lwz r0, 0x8c(r3)
.L_813578E8:
/* 813578E8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813578EC | 41 82 00 94 */	beq .L_81357980
/* 813578F0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813578F4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813578F8 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 813578FC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81357900 | 41 82 00 0C */	beq .L_8135790C
/* 81357904 | 38 00 00 00 */	li r0, 0x0
/* 81357908 | 48 00 00 08 */	b .L_81357910
.L_8135790C:
/* 8135790C | 80 03 00 7C */	lwz r0, 0x7c(r3)
.L_81357910:
/* 81357910 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81357914 | 41 82 00 6C */	beq .L_81357980
/* 81357918 | 48 15 34 21 */	bl NWC24SuspendScheduler
/* 8135791C | 3C 60 81 64 */	lis r3, lbl_81638F9E@ha
/* 81357920 | 38 63 8F 9E */	addi r3, r3, lbl_81638F9E@l
/* 81357924 | 4C C6 31 82 */	crclr cr1eq
/* 81357928 | 48 1D 6D 79 */	bl OSReport
/* 8135792C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81357930 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81357934 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 81357938 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135793C | 41 82 00 0C */	beq .L_81357948
/* 81357940 | 38 60 00 00 */	li r3, 0x0
/* 81357944 | 48 00 00 08 */	b .L_8135794C
.L_81357948:
/* 81357948 | 80 63 00 7C */	lwz r3, 0x7c(r3)
.L_8135794C:
/* 8135794C | 4B FE 81 19 */	bl isOverFlow__Q33ipl3cdb7ManagerCFv
/* 81357950 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81357954 | 40 82 00 28 */	bne .L_8135797C
/* 81357958 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8135795C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81357960 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 81357964 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81357968 | 41 82 00 0C */	beq .L_81357974
/* 8135796C | 38 60 00 00 */	li r3, 0x0
/* 81357970 | 48 00 00 08 */	b .L_81357978
.L_81357974:
/* 81357974 | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_81357978:
/* 81357978 | 4B FE AC F9 */	bl receive__Q33ipl5nwc247ManagerFv
.L_8135797C:
/* 8135797C | 48 15 34 8D */	bl NWC24ResumeScheduler
.L_81357980:
/* 81357980 | 7F E3 FB 78 */	mr r3, r31
/* 81357984 | 48 00 00 2D */	bl set_alarm___Q33ipl7postman7ManagerFv
/* 81357988 | 48 00 00 14 */	b .L_8135799C
.L_8135798C:
/* 8135798C | 3C 60 81 64 */	lis r3, lbl_81638FBE@ha
/* 81357990 | 38 63 8F BE */	addi r3, r3, lbl_81638FBE@l
/* 81357994 | 4C C6 31 82 */	crclr cr1eq
/* 81357998 | 48 1D 6D 09 */	bl OSReport
.L_8135799C:
/* 8135799C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813579A0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813579A4 | 7C 08 03 A6 */	mtlr r0
/* 813579A8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813579AC | 4E 80 00 20 */	blr
.endfn receive_immediately___Q33ipl7postman7ManagerFv

# .text:0x808 | 0x813579B0 | size: 0x58
# ipl::postman::Manager::set_alarm_()
.fn set_alarm___Q33ipl7postman7ManagerFv, global
/* 813579B0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813579B4 | 7C 08 02 A6 */	mflr r0
/* 813579B8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813579BC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813579C0 | 7C 7F 1B 78 */	mr r31, r3
/* 813579C4 | 7F E4 FB 78 */	mr r4, r31
/* 813579C8 | 38 63 03 38 */	addi r3, r3, 0x338
/* 813579CC | 48 1D 56 95 */	bl fn_8152D060
/* 813579D0 | 3C 60 80 00 */	lis r3, 0x8000
/* 813579D4 | 3C E0 81 35 */	lis r7, alarm_handler___Q33ipl7postman7ManagerFP7OSAlarmP9OSContext@ha
/* 813579D8 | 80 03 00 F8 */	lwz r0, 0xf8(r3)
/* 813579DC | 38 7F 03 38 */	addi r3, r31, 0x338
/* 813579E0 | 38 E7 74 00 */	addi r7, r7, alarm_handler___Q33ipl7postman7ManagerFP7OSAlarmP9OSContext@l
/* 813579E4 | 38 A0 00 00 */	li r5, 0x0
/* 813579E8 | 54 00 F0 BE */	srwi r0, r0, 2
/* 813579EC | 1C C0 00 3C */	mulli r6, r0, 0x3c
/* 813579F0 | 48 1D 51 55 */	bl OSSetAlarm
/* 813579F4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813579F8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813579FC | 7C 08 03 A6 */	mtlr r0
/* 81357A00 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81357A04 | 4E 80 00 20 */	blr
.endfn set_alarm___Q33ipl7postman7ManagerFv

# .text:0x860 | 0x81357A08 | size: 0x78
# ipl::postman::Manager::get_usb_ether_macaddr_()
.fn get_usb_ether_macaddr___Q33ipl7postman7ManagerFv, global
/* 81357A08 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81357A0C | 7C 08 02 A6 */	mflr r0
/* 81357A10 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81357A14 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81357A18 | 7C 7F 1B 78 */	mr r31, r3
/* 81357A1C | 80 03 03 34 */	lwz r0, 0x334(r3)
/* 81357A20 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81357A24 | 40 82 00 18 */	bne .L_81357A3C
/* 81357A28 | 48 15 33 11 */	bl NWC24SuspendScheduler
/* 81357A2C | 3C 60 81 64 */	lis r3, lbl_81638F5E@ha
/* 81357A30 | 38 63 8F 5E */	addi r3, r3, lbl_81638F5E@l
/* 81357A34 | 4C C6 31 82 */	crclr cr1eq
/* 81357A38 | 48 1D 6C 69 */	bl OSReport
.L_81357A3C:
/* 81357A3C | 38 60 00 00 */	li r3, 0x0
/* 81357A40 | 4B FF F5 A9 */	bl obtainLANMacAddr__Q33ipl6socket13SocketSettingFPv
/* 81357A44 | 80 1F 03 34 */	lwz r0, 0x334(r31)
/* 81357A48 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81357A4C | 40 82 00 20 */	bne .L_81357A6C
/* 81357A50 | 7F E3 FB 78 */	mr r3, r31
/* 81357A54 | 48 00 00 2D */	bl set_nwc24_permission___Q33ipl7postman7ManagerFv
/* 81357A58 | 48 15 33 B1 */	bl NWC24ResumeScheduler
/* 81357A5C | 3C 60 81 64 */	lis r3, lbl_81638F08@ha
/* 81357A60 | 38 63 8F 08 */	addi r3, r3, lbl_81638F08@l
/* 81357A64 | 4C C6 31 82 */	crclr cr1eq
/* 81357A68 | 48 1D 6C 39 */	bl OSReport
.L_81357A6C:
/* 81357A6C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81357A70 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81357A74 | 7C 08 03 A6 */	mtlr r0
/* 81357A78 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81357A7C | 4E 80 00 20 */	blr
.endfn get_usb_ether_macaddr___Q33ipl7postman7ManagerFv

# .text:0x8D8 | 0x81357A80 | size: 0x118
# ipl::postman::Manager::set_nwc24_permission_()
.fn set_nwc24_permission___Q33ipl7postman7ManagerFv, global
/* 81357A80 | 94 21 E4 40 */	stwu r1, -0x1bc0(r1)
/* 81357A84 | 7C 08 02 A6 */	mflr r0
/* 81357A88 | 90 01 1B C4 */	stw r0, 0x1bc4(r1)
/* 81357A8C | 38 61 00 08 */	addi r3, r1, 0x8
/* 81357A90 | 93 E1 1B BC */	stw r31, 0x1bbc(r1)
/* 81357A94 | 3F E0 81 64 */	lis r31, lbl_81638F08@ha
/* 81357A98 | 3B FF 8F 08 */	addi r31, r31, lbl_81638F08@l
/* 81357A9C | 93 C1 1B B8 */	stw r30, 0x1bb8(r1)
/* 81357AA0 | 3B C0 00 00 */	li r30, 0x0
/* 81357AA4 | 48 21 26 D5 */	bl SCGetParentalControl
/* 81357AA8 | 48 21 2D 79 */	bl SCGetWCFlags
/* 81357AAC | 54 60 07 FE */	clrlwi r0, r3, 31
/* 81357AB0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81357AB4 | 40 82 00 54 */	bne .L_81357B08
/* 81357AB8 | 48 21 2D 25 */	bl fn_8156A7DC
/* 81357ABC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81357AC0 | 41 82 00 48 */	beq .L_81357B08
/* 81357AC4 | 38 7F 00 DF */	addi r3, r31, 0xdf
/* 81357AC8 | 4C C6 31 82 */	crclr cr1eq
/* 81357ACC | 48 1D 6B D5 */	bl OSReport
/* 81357AD0 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 81357AD4 | 63 DE 00 04 */	ori r30, r30, 0x4
/* 81357AD8 | 54 00 06 30 */	rlwinm r0, r0, 0, 24, 24
/* 81357ADC | 2C 00 00 80 */	cmpwi r0, 0x80
/* 81357AE0 | 40 82 00 14 */	bne .L_81357AF4
/* 81357AE4 | 48 21 2B C9 */	bl SCGetNetContentRestrictions
/* 81357AE8 | 54 60 07 BC */	rlwinm r0, r3, 0, 30, 30
/* 81357AEC | 28 00 00 02 */	cmplwi r0, 0x2
/* 81357AF0 | 41 82 00 24 */	beq .L_81357B14
.L_81357AF4:
/* 81357AF4 | 38 7F 01 01 */	addi r3, r31, 0x101
/* 81357AF8 | 4C C6 31 82 */	crclr cr1eq
/* 81357AFC | 48 1D 6B A5 */	bl OSReport
/* 81357B00 | 63 DE 00 03 */	ori r30, r30, 0x3
/* 81357B04 | 48 00 00 10 */	b .L_81357B14
.L_81357B08:
/* 81357B08 | 38 7F 01 22 */	addi r3, r31, 0x122
/* 81357B0C | 4C C6 31 82 */	crclr cr1eq
/* 81357B10 | 48 1D 6B 91 */	bl OSReport
.L_81357B14:
/* 81357B14 | 38 61 00 52 */	addi r3, r1, 0x52
/* 81357B18 | 48 13 A8 89 */	bl NCDReadConfig
/* 81357B1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81357B20 | 40 80 00 18 */	bge .L_81357B38
/* 81357B24 | 7C 64 1B 78 */	mr r4, r3
/* 81357B28 | 38 7F 01 40 */	addi r3, r31, 0x140
/* 81357B2C | 4C C6 31 82 */	crclr cr1eq
/* 81357B30 | 48 1D 6B 71 */	bl OSReport
/* 81357B34 | 48 00 00 4C */	b .L_81357B80
.L_81357B38:
/* 81357B38 | 88 01 00 57 */	lbz r0, 0x57(r1)
/* 81357B3C | 57 C3 06 3E */	clrlwi r3, r30, 24
/* 81357B40 | 7C 03 00 40 */	cmplw r3, r0
/* 81357B44 | 41 82 00 38 */	beq .L_81357B7C
/* 81357B48 | 38 7F 01 65 */	addi r3, r31, 0x165
/* 81357B4C | 4C C6 31 82 */	crclr cr1eq
/* 81357B50 | 48 1D 6B 51 */	bl OSReport
/* 81357B54 | 9B C1 00 57 */	stb r30, 0x57(r1)
/* 81357B58 | 38 61 00 52 */	addi r3, r1, 0x52
/* 81357B5C | 48 13 A8 6D */	bl NCDWriteConfig
/* 81357B60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81357B64 | 40 80 00 18 */	bge .L_81357B7C
/* 81357B68 | 7C 64 1B 78 */	mr r4, r3
/* 81357B6C | 38 7F 01 8E */	addi r3, r31, 0x18e
/* 81357B70 | 4C C6 31 82 */	crclr cr1eq
/* 81357B74 | 48 1D 6B 2D */	bl OSReport
/* 81357B78 | 48 00 00 08 */	b .L_81357B80
.L_81357B7C:
/* 81357B7C | 48 13 B3 BD */	bl NCDRestoreConfig
.L_81357B80:
/* 81357B80 | 80 01 1B C4 */	lwz r0, 0x1bc4(r1)
/* 81357B84 | 83 E1 1B BC */	lwz r31, 0x1bbc(r1)
/* 81357B88 | 83 C1 1B B8 */	lwz r30, 0x1bb8(r1)
/* 81357B8C | 7C 08 03 A6 */	mtlr r0
/* 81357B90 | 38 21 1B C0 */	addi r1, r1, 0x1bc0
/* 81357B94 | 4E 80 00 20 */	blr
.endfn set_nwc24_permission___Q33ipl7postman7ManagerFv

# .text:0x9F0 | 0x81357B98 | size: 0x94
# ipl::postman::Manager::register_nwc24(void*)
.fn register_nwc24__Q33ipl7postman7ManagerFPv, global
/* 81357B98 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81357B9C | 7C 08 02 A6 */	mflr r0
/* 81357BA0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81357BA4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81357BA8 | 3F E0 81 64 */	lis r31, lbl_81638F08@ha
/* 81357BAC | 3B FF 8F 08 */	addi r31, r31, lbl_81638F08@l
/* 81357BB0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81357BB4 | 38 7F 01 B4 */	addi r3, r31, 0x1b4
/* 81357BB8 | 4C C6 31 82 */	crclr cr1eq
/* 81357BBC | 48 1D 6A E5 */	bl OSReport
/* 81357BC0 | 48 14 78 D9 */	bl NWC24RegisterUserId
/* 81357BC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81357BC8 | 3B C0 00 00 */	li r30, 0x0
/* 81357BCC | 41 82 00 34 */	beq .L_81357C00
/* 81357BD0 | 2C 03 FF DC */	cmpwi r3, -0x24
/* 81357BD4 | 41 82 00 2C */	beq .L_81357C00
/* 81357BD8 | 7C 64 1B 78 */	mr r4, r3
/* 81357BDC | 38 7F 01 CB */	addi r3, r31, 0x1cb
/* 81357BE0 | 4C C6 31 82 */	crclr cr1eq
/* 81357BE4 | 48 1D 6A BD */	bl OSReport
/* 81357BE8 | 48 14 8A 65 */	bl NWC24GetErrorCode
/* 81357BEC | 7C 7E 1B 78 */	mr r30, r3
/* 81357BF0 | 38 7F 01 E4 */	addi r3, r31, 0x1e4
/* 81357BF4 | 7F C4 F3 78 */	mr r4, r30
/* 81357BF8 | 4C C6 31 82 */	crclr cr1eq
/* 81357BFC | 48 1D 6A A5 */	bl OSReport
.L_81357C00:
/* 81357C00 | 7F C3 F3 78 */	mr r3, r30
/* 81357C04 | 4B FD C2 FD */	bl setNWC24RegistEnd__Q23ipl6SystemFl
/* 81357C08 | 38 6D 81 C8 */	li r3, lbl_81696208@sda21
/* 81357C0C | 4C C6 31 82 */	crclr cr1eq
/* 81357C10 | 48 1D 6A 91 */	bl OSReport
/* 81357C14 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81357C18 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81357C1C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81357C20 | 7C 08 03 A6 */	mtlr r0
/* 81357C24 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81357C28 | 4E 80 00 20 */	blr
.endfn register_nwc24__Q33ipl7postman7ManagerFPv

# .text:0xA84 | 0x81357C2C | size: 0x24
# ipl::postman::Manager::ncd_debug_print_(bool)
.fn ncd_debug_print___Q33ipl7postman7ManagerFb, global
/* 81357C2C | 94 21 E4 90 */	stwu r1, -0x1b70(r1)
/* 81357C30 | 7C 08 02 A6 */	mflr r0
/* 81357C34 | 90 01 1B 74 */	stw r0, 0x1b74(r1)
/* 81357C38 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81357C3C | 48 13 A7 65 */	bl NCDReadConfig
/* 81357C40 | 80 01 1B 74 */	lwz r0, 0x1b74(r1)
/* 81357C44 | 7C 08 03 A6 */	mtlr r0
/* 81357C48 | 38 21 1B 70 */	addi r1, r1, 0x1b70
/* 81357C4C | 4E 80 00 20 */	blr
.endfn ncd_debug_print___Q33ipl7postman7ManagerFb

# .text:0xAA8 | 0x81357C50 | size: 0x68
# ipl::postman::Manager::~Manager()
.fn __dt__Q33ipl7postman7ManagerFv, global
/* 81357C50 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81357C54 | 7C 08 02 A6 */	mflr r0
/* 81357C58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81357C5C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81357C60 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81357C64 | 7C 9F 23 78 */	mr r31, r4
/* 81357C68 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81357C6C | 7C 7E 1B 78 */	mr r30, r3
/* 81357C70 | 41 82 00 2C */	beq .L_81357C9C
/* 81357C74 | 38 80 FF FF */	li r4, -0x1
/* 81357C78 | 38 63 03 68 */	addi r3, r3, 0x368
/* 81357C7C | 4B FF F5 B5 */	bl "__dt__Q33ipl7utility14ut_message<32>Fv"
/* 81357C80 | 7F C3 F3 78 */	mr r3, r30
/* 81357C84 | 38 80 00 00 */	li r4, 0x0
/* 81357C88 | 48 00 CF 6D */	bl __dt__Q33ipl7utility9ut_threadFv
/* 81357C8C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81357C90 | 40 81 00 0C */	ble .L_81357C9C
/* 81357C94 | 7F C3 F3 78 */	mr r3, r30
/* 81357C98 | 48 2A 04 4D */	bl __dl__FPv
.L_81357C9C:
/* 81357C9C | 7F C3 F3 78 */	mr r3, r30
/* 81357CA0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81357CA4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81357CA8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81357CAC | 7C 08 03 A6 */	mtlr r0
/* 81357CB0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81357CB4 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl7postman7ManagerFv

# 0x81638F08..0x81639148 | size: 0x240
.data
.balign 8

# .data:0x0 | 0x81638F08 | size: 0x56
.obj lbl_81638F08, global
	.4byte 0x4E574332
	.4byte 0x34205363
	.4byte 0x68656475
	.4byte 0x6C657220
	.4byte 0x73746172
	.4byte 0x7465640A
	.4byte 0x005B504F
	.4byte 0x53544D41
	.4byte 0x4E5D204E
	.4byte 0x6574776F
	.4byte 0x726B2053
	.4byte 0x74617465
	.4byte 0x3A202564
	.4byte 0x0A005B50
	.4byte 0x4F53544D
	.4byte 0x414E5D20
	.4byte 0x52656365
	.4byte 0x69766520
	.4byte 0x4D657373
	.4byte 0x61676520
	.4byte 0x3A202564
	.2byte 0x0A00
.endobj lbl_81638F08

# .data:0x56 | 0x81638F5E | size: 0x40
.obj lbl_81638F5E, global
	.4byte 0x4E574332
	.4byte 0x34205363
	.4byte 0x68656475
	.4byte 0x6C657220
	.4byte 0x73757370
	.4byte 0x656E6465
	.4byte 0x640A005B
	.4byte 0x504F5354
	.4byte 0x4D414E5D
	.4byte 0x20726563
	.4byte 0x65697665
	.4byte 0x6420756E
	.4byte 0x6B6E6F77
	.4byte 0x6E206D65
	.4byte 0x73736167
	.4byte 0x652E0A00
.endobj lbl_81638F5E

# .data:0x96 | 0x81638F9E | size: 0x20
.obj lbl_81638F9E, global
	.string "[POSTMAN] receive_immediately_\n"
.endobj lbl_81638F9E

# .data:0xB6 | 0x81638FBE | size: 0x142
.obj lbl_81638FBE, global
	.4byte 0x5B504F53
	.4byte 0x544D414E
	.4byte 0x5D204947
	.4byte 0x4E4F5245
	.4byte 0x443A2072
	.4byte 0x65636569
	.4byte 0x76655F69
	.4byte 0x6D6D6564
	.4byte 0x69617465
	.4byte 0x6C795F0A
	.4byte 0x005B504F
	.4byte 0x53544D41
	.4byte 0x4E5D2050
	.4byte 0x45524D49
	.4byte 0x5353494F
	.4byte 0x4E5F444F
	.4byte 0x574E4C4F
	.4byte 0x41445F4F
	.4byte 0x4E0A005B
	.4byte 0x504F5354
	.4byte 0x4D414E5D
	.4byte 0x20504552
	.4byte 0x4D495353
	.4byte 0x494F4E5F
	.4byte 0x4D455353
	.4byte 0x4147455F
	.4byte 0x4F4E0A00
	.4byte 0x5B504F53
	.4byte 0x544D414E
	.4byte 0x5D205045
	.4byte 0x524D4953
	.4byte 0x53494F4E
	.4byte 0x5F414C4C
	.4byte 0x5F4F4646
	.4byte 0x0A005B50
	.4byte 0x4F53544D
	.4byte 0x414E5D20
	.4byte 0x4E434452
	.4byte 0x65616443
	.4byte 0x6F6E6669
	.4byte 0x67206661
	.4byte 0x696C6564
	.4byte 0x202D2025
	.4byte 0x640A005B
	.4byte 0x504F5354
	.4byte 0x4D414E5D
	.4byte 0x202E2E2E
	.4byte 0x2E2E2E2E
	.4byte 0x20504552
	.4byte 0x4D495353
	.4byte 0x494F4E5F
	.4byte 0x57524954
	.4byte 0x45204241
	.4byte 0x434B0A00
	.4byte 0x5B504F53
	.4byte 0x544D414E
	.4byte 0x5D204E43
	.4byte 0x44577269
	.4byte 0x7465436F
	.4byte 0x6E666967
	.4byte 0x20666169
	.4byte 0x6C656420
	.4byte 0x2D202564
	.4byte 0x0A005374
	.4byte 0x61727420
	.4byte 0x52656769
	.4byte 0x73746572
	.4byte 0x20557365
	.4byte 0x7249640A
	.4byte 0x00726573
	.4byte 0x69737465
	.4byte 0x72206E77
	.4byte 0x63323469
	.4byte 0x64206572
	.4byte 0x72202564
	.4byte 0x0A004572
	.4byte 0x726F723A
	.4byte 0x20436F64
	.4byte 0x653A2025
	.4byte 0x640A0000
	.2byte 0x0000
.endobj lbl_81638FBE

# .data:0x1F8 | 0x81639100 | size: 0x2C
# ipl::postman::Manager::__vtable
.obj __vt__Q33ipl7postman7Manager, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl7postman7ManagerFv
	.4byte Run__Q33ipl7postman7ManagerFv
	.4byte Create__Q33ipl7utility9ut_threadFPvUlib
	.4byte Resume__Q33ipl7utility9ut_threadFv
	.4byte Suspend__Q33ipl7utility9ut_threadFv
	.4byte WaitForThreadExit__Q33ipl7utility9ut_threadFv
	.4byte IsThreadTerminated__Q33ipl7utility9ut_threadFv
	.4byte IsThreadSuspended__Q33ipl7utility9ut_threadFv
	.4byte SetThreadPriority__Q33ipl7utility9ut_threadFi
.endobj __vt__Q33ipl7postman7Manager

# .data:0x224 | 0x8163912C | size: 0x1C
# ipl::utility::ut_message<32>::__vtable
.obj "__vt__Q33ipl7utility14ut_message<32>", global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "__dt__Q33ipl7utility14ut_message<32>Fv"
	.4byte SendMessage__Q33ipl7utility15ut_message_baseFPvl
	.4byte JamMessage__Q33ipl7utility15ut_message_baseFPvl
	.4byte ReceiveMessage__Q33ipl7utility15ut_message_baseFPPvl
	.4byte InitMessageQueue__Q33ipl7utility15ut_message_baseFPPvl
.endobj "__vt__Q33ipl7utility14ut_message<32>"

# 0x81696208..0x81696210 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696208 | size: 0x8
.obj lbl_81696208, global
	.4byte 0x444F4E45
	.4byte 0x0A000000
.endobj lbl_81696208
