.include "macros.inc"
.file "HKBManager.cpp"

# 0x810C8838..0x810C8940 | size: 0x108
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810C8838 | size: 0xC
.obj lbl_810C8838, global
	.skip 0xC
.endobj lbl_810C8838

# .bss:0xC | 0x810C8844 | size: 0xFC
# textinput::input::HKBManager::sInstance
.obj sInstance__Q39textinput5input10HKBManager, global
	.skip 0xFC
.endobj sInstance__Q39textinput5input10HKBManager

# 0x814472C0..0x81448AA4 | size: 0x17E4
.text
.balign 4

# .text:0x0 | 0x814472C0 | size: 0xA4
# textinput::input::HKBManager::SetLedCB(_KBDEc, void*)
.fn SetLedCB__Q39textinput5input10HKBManagerF6_KBDEcPv, global
/* 814472C0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814472C4 | 7C 08 02 A6 */	mflr r0
/* 814472C8 | 2C 03 00 07 */	cmpwi r3, 0x7
/* 814472CC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814472D0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814472D4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814472D8 | 40 82 00 74 */	bne .L_8144734C
/* 814472DC | 90 81 00 10 */	stw r4, 0x10(r1)
/* 814472E0 | 38 00 00 00 */	li r0, 0x0
/* 814472E4 | 88 61 00 10 */	lbz r3, 0x10(r1)
/* 814472E8 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814472EC | 98 61 00 08 */	stb r3, 0x8(r1)
/* 814472F0 | 48 0E 95 95 */	bl OSDisableInterrupts
/* 814472F4 | 3F E0 81 0D */	lis r31, sInstance__Q39textinput5input10HKBManager@ha
/* 814472F8 | 88 81 00 10 */	lbz r4, 0x10(r1)
/* 814472FC | 3B FF 88 44 */	addi r31, r31, sInstance__Q39textinput5input10HKBManager@l
/* 81447300 | 38 A0 00 01 */	li r5, 0x1
/* 81447304 | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 81447308 | 7C BE 20 30 */	slw r30, r5, r4
/* 8144730C | 7C 00 F0 78 */	andc r0, r0, r30
/* 81447310 | 90 1F 00 08 */	stw r0, 0x8(r31)
/* 81447314 | 48 0E 95 99 */	bl OSRestoreInterrupts
/* 81447318 | 3C A0 81 44 */	lis r5, SetLedCB__Q39textinput5input10HKBManagerF6_KBDEcPv@ha
/* 8144731C | 88 61 00 10 */	lbz r3, 0x10(r1)
/* 81447320 | 80 C1 00 08 */	lwz r6, 0x8(r1)
/* 81447324 | 38 A5 72 C0 */	addi r5, r5, SetLedCB__Q39textinput5input10HKBManagerF6_KBDEcPv@l
/* 81447328 | 38 80 00 00 */	li r4, 0x0
/* 8144732C | 48 1A CC ED */	bl fn_815F4018
/* 81447330 | 2C 03 00 07 */	cmpwi r3, 0x7
/* 81447334 | 40 82 00 18 */	bne .L_8144734C
/* 81447338 | 48 0E 95 4D */	bl OSDisableInterrupts
/* 8144733C | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 81447340 | 7C 00 F3 78 */	or r0, r0, r30
/* 81447344 | 90 1F 00 08 */	stw r0, 0x8(r31)
/* 81447348 | 48 0E 95 65 */	bl OSRestoreInterrupts
.L_8144734C:
/* 8144734C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81447350 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81447354 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81447358 | 7C 08 03 A6 */	mtlr r0
/* 8144735C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81447360 | 4E 80 00 20 */	blr
.endfn SetLedCB__Q39textinput5input10HKBManagerF6_KBDEcPv

# .text:0xA4 | 0x81447364 | size: 0xF4
# textinput::input::HKBManager::KBDListenerOwn::OnAttach(_KBDDevEvent*)
.fn OnAttach__Q49textinput5input10HKBManager14KBDListenerOwnFP12_KBDDevEvent, global
/* 81447364 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81447368 | 7C 08 02 A6 */	mflr r0
/* 8144736C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81447370 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81447374 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81447378 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8144737C | 7C 9D 23 78 */	mr r29, r4
/* 81447380 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 81447384 | 7C 7C 1B 78 */	mr r28, r3
/* 81447388 | 88 A4 00 00 */	lbz r5, 0x0(r4)
/* 8144738C | 28 05 00 02 */	cmplwi r5, 0x2
/* 81447390 | 41 80 00 78 */	blt .L_81447408
/* 81447394 | 7C A3 2B 78 */	mr r3, r5
/* 81447398 | 38 80 00 00 */	li r4, 0x0
/* 8144739C | 48 1A D2 89 */	bl fn_815F4624
/* 814473A0 | 8B DD 00 00 */	lbz r30, 0x0(r29)
/* 814473A4 | 38 00 00 00 */	li r0, 0x0
/* 814473A8 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814473AC | 83 FC 00 0C */	lwz r31, 0xc(r28)
/* 814473B0 | 9B C1 00 08 */	stb r30, 0x8(r1)
/* 814473B4 | 48 0E 94 D1 */	bl OSDisableInterrupts
/* 814473B8 | 38 80 00 01 */	li r4, 0x1
/* 814473BC | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 814473C0 | 7C 9D F0 30 */	slw r29, r4, r30
/* 814473C4 | 7C 00 E8 78 */	andc r0, r0, r29
/* 814473C8 | 90 1F 00 08 */	stw r0, 0x8(r31)
/* 814473CC | 48 0E 94 E1 */	bl OSRestoreInterrupts
/* 814473D0 | 3C A0 81 44 */	lis r5, SetLedCB__Q39textinput5input10HKBManagerF6_KBDEcPv@ha
/* 814473D4 | 80 C1 00 08 */	lwz r6, 0x8(r1)
/* 814473D8 | 7F C3 F3 78 */	mr r3, r30
/* 814473DC | 38 80 00 00 */	li r4, 0x0
/* 814473E0 | 38 A5 72 C0 */	addi r5, r5, SetLedCB__Q39textinput5input10HKBManagerF6_KBDEcPv@l
/* 814473E4 | 48 1A CC 35 */	bl fn_815F4018
/* 814473E8 | 2C 03 00 07 */	cmpwi r3, 0x7
/* 814473EC | 40 82 00 4C */	bne .L_81447438
/* 814473F0 | 48 0E 94 95 */	bl OSDisableInterrupts
/* 814473F4 | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 814473F8 | 7C 00 EB 78 */	or r0, r0, r29
/* 814473FC | 90 1F 00 08 */	stw r0, 0x8(r31)
/* 81447400 | 48 0E 94 AD */	bl OSRestoreInterrupts
/* 81447404 | 48 00 00 34 */	b .L_81447438
.L_81447408:
/* 81447408 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 8144740C | 3B E0 00 01 */	li r31, 0x1
/* 81447410 | 7C 60 2A 14 */	add r3, r0, r5
/* 81447414 | 9B E3 00 01 */	stb r31, 0x1(r3)
/* 81447418 | 88 64 00 00 */	lbz r3, 0x0(r4)
/* 8144741C | 38 80 00 00 */	li r4, 0x0
/* 81447420 | 48 1A D2 05 */	bl fn_815F4624
/* 81447424 | 88 1D 00 00 */	lbz r0, 0x0(r29)
/* 81447428 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 8144742C | 1C 00 00 6C */	mulli r0, r0, 0x6c
/* 81447430 | 7C 63 02 14 */	add r3, r3, r0
/* 81447434 | 9B E3 00 44 */	stb r31, 0x44(r3)
.L_81447438:
/* 81447438 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8144743C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81447440 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81447444 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81447448 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 8144744C | 7C 08 03 A6 */	mtlr r0
/* 81447450 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81447454 | 4E 80 00 20 */	blr
.endfn OnAttach__Q49textinput5input10HKBManager14KBDListenerOwnFP12_KBDDevEvent

# .text:0x198 | 0x81447458 | size: 0x58
# textinput::input::HKBManager::KBDListenerOwn::OnDetach(_KBDDevEvent*)
.fn OnDetach__Q49textinput5input10HKBManager14KBDListenerOwnFP12_KBDDevEvent, global
/* 81447458 | 88 A4 00 00 */	lbz r5, 0x0(r4)
/* 8144745C | 28 05 00 02 */	cmplwi r5, 0x2
/* 81447460 | 4C 80 00 20 */	bgelr
/* 81447464 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 81447468 | 1C C5 00 6C */	mulli r6, r5, 0x6c
/* 8144746C | 38 80 00 00 */	li r4, 0x0
/* 81447470 | 7C 60 2A 14 */	add r3, r0, r5
/* 81447474 | 98 83 00 01 */	stb r4, 0x1(r3)
/* 81447478 | 7C 60 32 14 */	add r3, r0, r6
/* 8144747C | 90 83 00 18 */	stw r4, 0x18(r3)
/* 81447480 | 90 83 00 1C */	stw r4, 0x1c(r3)
/* 81447484 | 90 83 00 20 */	stw r4, 0x20(r3)
/* 81447488 | 90 83 00 24 */	stw r4, 0x24(r3)
/* 8144748C | 90 83 00 2C */	stw r4, 0x2c(r3)
/* 81447490 | 90 83 00 30 */	stw r4, 0x30(r3)
/* 81447494 | 80 03 00 34 */	lwz r0, 0x34(r3)
/* 81447498 | 54 00 05 6E */	rlwinm r0, r0, 0, 21, 23
/* 8144749C | 90 03 00 34 */	stw r0, 0x34(r3)
/* 814474A0 | 90 83 00 3C */	stw r4, 0x3c(r3)
/* 814474A4 | 90 83 00 38 */	stw r4, 0x38(r3)
/* 814474A8 | 98 83 00 44 */	stb r4, 0x44(r3)
/* 814474AC | 4E 80 00 20 */	blr
.endfn OnDetach__Q49textinput5input10HKBManager14KBDListenerOwnFP12_KBDDevEvent

# .text:0x1F0 | 0x814474B0 | size: 0x38
# textinput::input::HKBManager::KBDListenerOwn::OnKeyEvent(_KBDKeyEvent*)
.fn OnKeyEvent__Q49textinput5input10HKBManager14KBDListenerOwnFP12_KBDKeyEvent, global
/* 814474B0 | 88 A4 00 00 */	lbz r5, 0x0(r4)
/* 814474B4 | 28 05 00 02 */	cmplwi r5, 0x2
/* 814474B8 | 4C 80 00 20 */	bgelr
/* 814474BC | 80 C4 00 04 */	lwz r6, 0x4(r4)
/* 814474C0 | 54 C0 07 BD */	rlwinm. r0, r6, 0, 30, 30
/* 814474C4 | 4C 82 00 20 */	bnelr
/* 814474C8 | 1C 05 00 6C */	mulli r0, r5, 0x6c
/* 814474CC | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 814474D0 | 88 A4 00 01 */	lbz r5, 0x1(r4)
/* 814474D4 | 54 C4 07 FE */	clrlwi r4, r6, 31
/* 814474D8 | 7C 63 02 14 */	add r3, r3, r0
/* 814474DC | 38 63 00 14 */	addi r3, r3, 0x14
/* 814474E0 | 48 00 07 40 */	b NotifyEvent__Q49textinput5input10HKBManager9KeyState_FUcUc
/* 814474E4 | 4E 80 00 20 */	blr
.endfn OnKeyEvent__Q49textinput5input10HKBManager14KBDListenerOwnFP12_KBDKeyEvent

# .text:0x228 | 0x814474E8 | size: 0x78
# textinput::input::HKBManager::AttachCB(_KBDDevEvent*)
.fn AttachCB__Q39textinput5input10HKBManagerFP12_KBDDevEvent, global
/* 814474E8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814474EC | 7C 08 02 A6 */	mflr r0
/* 814474F0 | 3C 80 81 0D */	lis r4, sInstance__Q39textinput5input10HKBManager@ha
/* 814474F4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814474F8 | 38 84 88 44 */	addi r4, r4, sInstance__Q39textinput5input10HKBManager@l
/* 814474FC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81447500 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81447504 | 3B C4 00 EC */	addi r30, r4, 0xec
/* 81447508 | 7F DF F3 78 */	mr r31, r30
/* 8144750C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81447510 | 7C 7D 1B 78 */	mr r29, r3
/* 81447514 | 48 00 00 28 */	b .L_8144753C
.L_81447518:
/* 81447518 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8144751C | 7F C3 F3 78 */	mr r3, r30
/* 81447520 | 7F A4 EB 78 */	mr r4, r29
/* 81447524 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81447528 | 7D 89 03 A6 */	mtctr r12
/* 8144752C | 4E 80 04 21 */	bctrl
/* 81447530 | 83 DE 00 08 */	lwz r30, 0x8(r30)
/* 81447534 | 7C 1E F8 40 */	cmplw r30, r31
/* 81447538 | 41 82 00 0C */	beq .L_81447544
.L_8144753C:
/* 8144753C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81447540 | 40 82 FF D8 */	bne .L_81447518
.L_81447544:
/* 81447544 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81447548 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8144754C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81447550 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81447554 | 7C 08 03 A6 */	mtlr r0
/* 81447558 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144755C | 4E 80 00 20 */	blr
.endfn AttachCB__Q39textinput5input10HKBManagerFP12_KBDDevEvent

# .text:0x2A0 | 0x81447560 | size: 0x78
# textinput::input::HKBManager::DetachCB(_KBDDevEvent*)
.fn DetachCB__Q39textinput5input10HKBManagerFP12_KBDDevEvent, global
/* 81447560 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81447564 | 7C 08 02 A6 */	mflr r0
/* 81447568 | 3C 80 81 0D */	lis r4, sInstance__Q39textinput5input10HKBManager@ha
/* 8144756C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81447570 | 38 84 88 44 */	addi r4, r4, sInstance__Q39textinput5input10HKBManager@l
/* 81447574 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81447578 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8144757C | 3B C4 00 EC */	addi r30, r4, 0xec
/* 81447580 | 7F DF F3 78 */	mr r31, r30
/* 81447584 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81447588 | 7C 7D 1B 78 */	mr r29, r3
/* 8144758C | 48 00 00 28 */	b .L_814475B4
.L_81447590:
/* 81447590 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 81447594 | 7F C3 F3 78 */	mr r3, r30
/* 81447598 | 7F A4 EB 78 */	mr r4, r29
/* 8144759C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 814475A0 | 7D 89 03 A6 */	mtctr r12
/* 814475A4 | 4E 80 04 21 */	bctrl
/* 814475A8 | 83 DE 00 08 */	lwz r30, 0x8(r30)
/* 814475AC | 7C 1E F8 40 */	cmplw r30, r31
/* 814475B0 | 41 82 00 0C */	beq .L_814475BC
.L_814475B4:
/* 814475B4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814475B8 | 40 82 FF D8 */	bne .L_81447590
.L_814475BC:
/* 814475BC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814475C0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814475C4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814475C8 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814475CC | 7C 08 03 A6 */	mtlr r0
/* 814475D0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814475D4 | 4E 80 00 20 */	blr
.endfn DetachCB__Q39textinput5input10HKBManagerFP12_KBDDevEvent

# .text:0x318 | 0x814475D8 | size: 0x78
# textinput::input::HKBManager::KeyEventCB(_KBDKeyEvent*)
.fn KeyEventCB__Q39textinput5input10HKBManagerFP12_KBDKeyEvent, global
/* 814475D8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814475DC | 7C 08 02 A6 */	mflr r0
/* 814475E0 | 3C 80 81 0D */	lis r4, sInstance__Q39textinput5input10HKBManager@ha
/* 814475E4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814475E8 | 38 84 88 44 */	addi r4, r4, sInstance__Q39textinput5input10HKBManager@l
/* 814475EC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814475F0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814475F4 | 3B C4 00 EC */	addi r30, r4, 0xec
/* 814475F8 | 7F DF F3 78 */	mr r31, r30
/* 814475FC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81447600 | 7C 7D 1B 78 */	mr r29, r3
/* 81447604 | 48 00 00 28 */	b .L_8144762C
.L_81447608:
/* 81447608 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8144760C | 7F C3 F3 78 */	mr r3, r30
/* 81447610 | 7F A4 EB 78 */	mr r4, r29
/* 81447614 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81447618 | 7D 89 03 A6 */	mtctr r12
/* 8144761C | 4E 80 04 21 */	bctrl
/* 81447620 | 83 DE 00 08 */	lwz r30, 0x8(r30)
/* 81447624 | 7C 1E F8 40 */	cmplw r30, r31
/* 81447628 | 41 82 00 0C */	beq .L_81447634
.L_8144762C:
/* 8144762C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81447630 | 40 82 FF D8 */	bne .L_81447608
.L_81447634:
/* 81447634 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81447638 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8144763C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81447640 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81447644 | 7C 08 03 A6 */	mtlr r0
/* 81447648 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144764C | 4E 80 00 20 */	blr
.endfn KeyEventCB__Q39textinput5input10HKBManagerFP12_KBDKeyEvent

# .text:0x390 | 0x81447650 | size: 0xB4
# textinput::input::HKBManager::HKBManager()
.fn __ct__Q39textinput5input10HKBManagerFv, global
/* 81447650 | 3C A0 81 67 */	lis r5, __vt__Q49textinput5input10HKBManager14KBDListenerOwn@ha
/* 81447654 | 38 C0 00 00 */	li r6, 0x0
/* 81447658 | 38 A5 8E E0 */	addi r5, r5, __vt__Q49textinput5input10HKBManager14KBDListenerOwn@l
/* 8144765C | 98 C3 00 00 */	stb r6, 0x0(r3)
/* 81447660 | 1C 86 00 6C */	mulli r4, r6, 0x6c
/* 81447664 | 38 00 00 0F */	li r0, 0xf
/* 81447668 | 90 C3 00 04 */	stw r6, 0x4(r3)
/* 8144766C | 39 00 00 01 */	li r8, 0x1
/* 81447670 | 7C E3 22 14 */	add r7, r3, r4
/* 81447674 | 90 C3 00 08 */	stw r6, 0x8(r3)
/* 81447678 | 1C 88 00 6C */	mulli r4, r8, 0x6c
/* 8144767C | 90 C3 00 0C */	stw r6, 0xc(r3)
/* 81447680 | 90 C3 00 10 */	stw r6, 0x10(r3)
/* 81447684 | 90 C3 00 F0 */	stw r6, 0xf0(r3)
/* 81447688 | 90 C3 00 F4 */	stw r6, 0xf4(r3)
/* 8144768C | 90 A3 00 EC */	stw r5, 0xec(r3)
/* 81447690 | 90 63 00 F8 */	stw r3, 0xf8(r3)
/* 81447694 | 98 C3 00 01 */	stb r6, 0x1(r3)
/* 81447698 | 90 C7 00 18 */	stw r6, 0x18(r7)
/* 8144769C | 90 C7 00 1C */	stw r6, 0x1c(r7)
/* 814476A0 | 90 C7 00 20 */	stw r6, 0x20(r7)
/* 814476A4 | 90 C7 00 24 */	stw r6, 0x24(r7)
/* 814476A8 | 90 C7 00 2C */	stw r6, 0x2c(r7)
/* 814476AC | 90 C7 00 30 */	stw r6, 0x30(r7)
/* 814476B0 | 90 C7 00 3C */	stw r6, 0x3c(r7)
/* 814476B4 | 90 C7 00 38 */	stw r6, 0x38(r7)
/* 814476B8 | 98 C7 00 44 */	stb r6, 0x44(r7)
/* 814476BC | 98 C7 00 14 */	stb r6, 0x14(r7)
/* 814476C0 | 90 07 00 40 */	stw r0, 0x40(r7)
/* 814476C4 | 90 C7 00 34 */	stw r6, 0x34(r7)
/* 814476C8 | 7C E3 22 14 */	add r7, r3, r4
/* 814476CC | 98 C3 00 02 */	stb r6, 0x2(r3)
/* 814476D0 | 90 C7 00 18 */	stw r6, 0x18(r7)
/* 814476D4 | 90 C7 00 1C */	stw r6, 0x1c(r7)
/* 814476D8 | 90 C7 00 20 */	stw r6, 0x20(r7)
/* 814476DC | 90 C7 00 24 */	stw r6, 0x24(r7)
/* 814476E0 | 90 C7 00 2C */	stw r6, 0x2c(r7)
/* 814476E4 | 90 C7 00 30 */	stw r6, 0x30(r7)
/* 814476E8 | 90 C7 00 3C */	stw r6, 0x3c(r7)
/* 814476EC | 90 C7 00 38 */	stw r6, 0x38(r7)
/* 814476F0 | 98 C7 00 44 */	stb r6, 0x44(r7)
/* 814476F4 | 99 07 00 14 */	stb r8, 0x14(r7)
/* 814476F8 | 90 07 00 40 */	stw r0, 0x40(r7)
/* 814476FC | 90 C7 00 34 */	stw r6, 0x34(r7)
/* 81447700 | 4E 80 00 20 */	blr
.endfn __ct__Q39textinput5input10HKBManagerFv

# .text:0x444 | 0x81447704 | size: 0x40
# textinput::input::HKBManager::KBDListenerOwn::~KBDListenerOwn()
.fn __dt__Q49textinput5input10HKBManager14KBDListenerOwnFv, global
/* 81447704 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81447708 | 7C 08 02 A6 */	mflr r0
/* 8144770C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81447710 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81447714 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81447718 | 7C 7F 1B 78 */	mr r31, r3
/* 8144771C | 41 82 00 10 */	beq .L_8144772C
/* 81447720 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81447724 | 40 81 00 08 */	ble .L_8144772C
/* 81447728 | 48 1B 09 BD */	bl __dl__FPv
.L_8144772C:
/* 8144772C | 7F E3 FB 78 */	mr r3, r31
/* 81447730 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81447734 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81447738 | 7C 08 03 A6 */	mtlr r0
/* 8144773C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81447740 | 4E 80 00 20 */	blr
.endfn __dt__Q49textinput5input10HKBManager14KBDListenerOwnFv

# .text:0x484 | 0x81447744 | size: 0xA0
# textinput::input::HKBManager::Initialize()
.fn Initialize__Q39textinput5input10HKBManagerFv, global
/* 81447744 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81447748 | 7C 08 02 A6 */	mflr r0
/* 8144774C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81447750 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81447754 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81447758 | 7C 7E 1B 78 */	mr r30, r3
/* 8144775C | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 81447760 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81447764 | 40 82 00 68 */	bne .L_814477CC
/* 81447768 | 38 00 00 01 */	li r0, 0x1
/* 8144776C | 98 03 00 00 */	stb r0, 0x0(r3)
/* 81447770 | 48 1A D2 2D */	bl fn_815F499C
/* 81447774 | 48 1A CC 4D */	bl fn_815F43C0
/* 81447778 | 80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 8144777C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81447780 | 40 82 00 28 */	bne .L_814477A8
/* 81447784 | 3C 60 81 44 */	lis r3, AttachCB__Q39textinput5input10HKBManagerFP12_KBDDevEvent@ha
/* 81447788 | 38 63 74 E8 */	addi r3, r3, AttachCB__Q39textinput5input10HKBManagerFP12_KBDDevEvent@l
/* 8144778C | 48 1A CD 2D */	bl fn_815F44B8
/* 81447790 | 3C 60 81 44 */	lis r3, DetachCB__Q39textinput5input10HKBManagerFP12_KBDDevEvent@ha
/* 81447794 | 38 63 75 60 */	addi r3, r3, DetachCB__Q39textinput5input10HKBManagerFP12_KBDDevEvent@l
/* 81447798 | 48 1A CD 31 */	bl fn_815F44C8
/* 8144779C | 3C 60 81 44 */	lis r3, KeyEventCB__Q39textinput5input10HKBManagerFP12_KBDKeyEvent@ha
/* 814477A0 | 38 63 75 D8 */	addi r3, r3, KeyEventCB__Q39textinput5input10HKBManagerFP12_KBDKeyEvent@l
/* 814477A4 | 48 1A CD 35 */	bl fn_815F44D8
.L_814477A8:
/* 814477A8 | 3B E0 00 00 */	li r31, 0x0
.L_814477AC:
/* 814477AC | 57 E3 06 3E */	clrlwi r3, r31, 24
/* 814477B0 | 1C 03 00 6C */	mulli r0, r3, 0x6c
/* 814477B4 | 7C 9E 02 14 */	add r4, r30, r0
/* 814477B8 | 80 84 00 40 */	lwz r4, 0x40(r4)
/* 814477BC | 48 1A CD DD */	bl fn_815F4598
/* 814477C0 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814477C4 | 28 1F 00 02 */	cmplwi r31, 0x2
/* 814477C8 | 41 80 FF E4 */	blt .L_814477AC
.L_814477CC:
/* 814477CC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814477D0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814477D4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814477D8 | 7C 08 03 A6 */	mtlr r0
/* 814477DC | 38 21 00 10 */	addi r1, r1, 0x10
/* 814477E0 | 4E 80 00 20 */	blr
.endfn Initialize__Q39textinput5input10HKBManagerFv

# .text:0x524 | 0x814477E4 | size: 0x7C
# textinput::input::HKBManager::ClearState()
.fn ClearState__Q39textinput5input10HKBManagerFv, global
/* 814477E4 | 38 80 00 00 */	li r4, 0x0
/* 814477E8 | 38 00 00 01 */	li r0, 0x1
/* 814477EC | 1C A4 00 6C */	mulli r5, r4, 0x6c
/* 814477F0 | 7C C3 2A 14 */	add r6, r3, r5
/* 814477F4 | 90 86 00 18 */	stw r4, 0x18(r6)
/* 814477F8 | 1C A0 00 6C */	mulli r5, r0, 0x6c
/* 814477FC | 90 86 00 1C */	stw r4, 0x1c(r6)
/* 81447800 | 90 86 00 20 */	stw r4, 0x20(r6)
/* 81447804 | 90 86 00 24 */	stw r4, 0x24(r6)
/* 81447808 | 90 86 00 2C */	stw r4, 0x2c(r6)
/* 8144780C | 90 86 00 30 */	stw r4, 0x30(r6)
/* 81447810 | 80 06 00 34 */	lwz r0, 0x34(r6)
/* 81447814 | 54 00 05 6E */	rlwinm r0, r0, 0, 21, 23
/* 81447818 | 90 06 00 34 */	stw r0, 0x34(r6)
/* 8144781C | 90 86 00 3C */	stw r4, 0x3c(r6)
/* 81447820 | 90 86 00 38 */	stw r4, 0x38(r6)
/* 81447824 | 98 86 00 44 */	stb r4, 0x44(r6)
/* 81447828 | 7C C3 2A 14 */	add r6, r3, r5
/* 8144782C | 90 86 00 18 */	stw r4, 0x18(r6)
/* 81447830 | 90 86 00 1C */	stw r4, 0x1c(r6)
/* 81447834 | 90 86 00 20 */	stw r4, 0x20(r6)
/* 81447838 | 90 86 00 24 */	stw r4, 0x24(r6)
/* 8144783C | 90 86 00 2C */	stw r4, 0x2c(r6)
/* 81447840 | 90 86 00 30 */	stw r4, 0x30(r6)
/* 81447844 | 80 06 00 34 */	lwz r0, 0x34(r6)
/* 81447848 | 54 00 05 6E */	rlwinm r0, r0, 0, 21, 23
/* 8144784C | 90 06 00 34 */	stw r0, 0x34(r6)
/* 81447850 | 90 86 00 3C */	stw r4, 0x3c(r6)
/* 81447854 | 90 86 00 38 */	stw r4, 0x38(r6)
/* 81447858 | 98 86 00 44 */	stb r4, 0x44(r6)
/* 8144785C | 4E 80 00 20 */	blr
.endfn ClearState__Q39textinput5input10HKBManagerFv

# .text:0x5A0 | 0x81447860 | size: 0x38
# textinput::input::HKBManager::GetModifierState() const
.fn GetModifierState__Q39textinput5input10HKBManagerCFv, global
/* 81447860 | 80 A3 00 34 */	lwz r5, 0x34(r3)
/* 81447864 | 80 83 00 3C */	lwz r4, 0x3c(r3)
/* 81447868 | 80 03 00 38 */	lwz r0, 0x38(r3)
/* 8144786C | 7C A5 20 78 */	andc r5, r5, r4
/* 81447870 | 80 E3 00 A0 */	lwz r7, 0xa0(r3)
/* 81447874 | 7C 04 20 38 */	and r4, r0, r4
/* 81447878 | 80 C3 00 A8 */	lwz r6, 0xa8(r3)
/* 8144787C | 80 03 00 A4 */	lwz r0, 0xa4(r3)
/* 81447880 | 7C A5 23 78 */	or r5, r5, r4
/* 81447884 | 7C E7 30 78 */	andc r7, r7, r6
/* 81447888 | 7C 00 30 38 */	and r0, r0, r6
/* 8144788C | 7C E7 03 78 */	or r7, r7, r0
/* 81447890 | 7C A3 3B 78 */	or r3, r5, r7
/* 81447894 | 4E 80 00 20 */	blr
.endfn GetModifierState__Q39textinput5input10HKBManagerCFv

# .text:0x5D8 | 0x81447898 | size: 0xB8
# textinput::input::HKBManager::SetCountry(unsigned char)
.fn SetCountry__Q39textinput5input10HKBManagerFUc, global
/* 81447898 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8144789C | 7C 08 02 A6 */	mflr r0
/* 814478A0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814478A4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814478A8 | 48 1B 1C 19 */	bl _savegpr_27
/* 814478AC | 7C 9C 23 78 */	mr r28, r4
/* 814478B0 | 7C 7B 1B 78 */	mr r27, r3
/* 814478B4 | 3B A0 00 00 */	li r29, 0x0
/* 814478B8 | 3B E0 00 01 */	li r31, 0x1
.L_814478BC:
/* 814478BC | 57 A3 06 3E */	clrlwi r3, r29, 24
/* 814478C0 | 7F 84 E3 78 */	mr r4, r28
/* 814478C4 | 1C 03 00 6C */	mulli r0, r3, 0x6c
/* 814478C8 | 7F DB 02 14 */	add r30, r27, r0
/* 814478CC | 93 9E 00 40 */	stw r28, 0x40(r30)
/* 814478D0 | 48 1A CC C9 */	bl fn_815F4598
/* 814478D4 | 88 7E 00 14 */	lbz r3, 0x14(r30)
/* 814478D8 | 80 9E 00 34 */	lwz r4, 0x34(r30)
/* 814478DC | 48 1A CD 89 */	bl fn_815F4664
/* 814478E0 | 80 7E 00 34 */	lwz r3, 0x34(r30)
/* 814478E4 | 38 80 00 00 */	li r4, 0x0
/* 814478E8 | 54 60 05 EF */	rlwinm. r0, r3, 0, 23, 23
/* 814478EC | 41 82 00 08 */	beq .L_814478F4
/* 814478F0 | 60 84 00 01 */	ori r4, r4, 0x1
.L_814478F4:
/* 814478F4 | 54 60 05 AD */	rlwinm. r0, r3, 0, 22, 22
/* 814478F8 | 41 82 00 0C */	beq .L_81447904
/* 814478FC | 60 80 00 02 */	ori r0, r4, 0x2
/* 81447900 | 54 04 06 3E */	clrlwi r4, r0, 24
.L_81447904:
/* 81447904 | 54 60 05 6B */	rlwinm. r0, r3, 0, 21, 21
/* 81447908 | 41 82 00 0C */	beq .L_81447914
/* 8144790C | 60 80 00 04 */	ori r0, r4, 0x4
/* 81447910 | 54 04 06 3E */	clrlwi r4, r0, 24
.L_81447914:
/* 81447914 | 88 7E 00 14 */	lbz r3, 0x14(r30)
/* 81447918 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 8144791C | 48 1A C8 41 */	bl fn_815F415C
/* 81447920 | 2C 03 00 07 */	cmpwi r3, 0x7
/* 81447924 | 40 82 00 08 */	bne .L_8144792C
/* 81447928 | 9B FE 00 44 */	stb r31, 0x44(r30)
.L_8144792C:
/* 8144792C | 3B BD 00 01 */	addi r29, r29, 0x1
/* 81447930 | 28 1D 00 02 */	cmplwi r29, 0x2
/* 81447934 | 41 80 FF 88 */	blt .L_814478BC
/* 81447938 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8144793C | 48 1B 1B D1 */	bl _restgpr_27
/* 81447940 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81447944 | 7C 08 03 A6 */	mtlr r0
/* 81447948 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8144794C | 4E 80 00 20 */	blr
.endfn SetCountry__Q39textinput5input10HKBManagerFUc

# .text:0x690 | 0x81447950 | size: 0x114
# textinput::input::HKBManager::SetModifierState(unsigned long, unsigned long)
.fn SetModifierState__Q39textinput5input10HKBManagerFUlUl, global
/* 81447950 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81447954 | 7C 08 02 A6 */	mflr r0
/* 81447958 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8144795C | 7C 80 28 38 */	and r0, r4, r5
/* 81447960 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81447964 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81447968 | 3B C0 00 00 */	li r30, 0x0
/* 8144796C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81447970 | 7C 7D 1B 78 */	mr r29, r3
/* 81447974 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 81447978 | 3B 80 00 01 */	li r28, 0x1
/* 8144797C | 80 C3 00 04 */	lwz r6, 0x4(r3)
/* 81447980 | 7C C4 28 78 */	andc r4, r6, r5
/* 81447984 | 7C 80 03 78 */	or r0, r4, r0
/* 81447988 | 90 03 00 04 */	stw r0, 0x4(r3)
.L_8144798C:
/* 8144798C | 57 C6 06 3E */	clrlwi r6, r30, 24
/* 81447990 | 80 1D 00 04 */	lwz r0, 0x4(r29)
/* 81447994 | 1C 66 00 6C */	mulli r3, r6, 0x6c
/* 81447998 | 54 05 05 6E */	rlwinm r5, r0, 0, 21, 23
/* 8144799C | 7F FD 1A 14 */	add r31, r29, r3
/* 814479A0 | 80 1F 00 34 */	lwz r0, 0x34(r31)
/* 814479A4 | 54 03 06 28 */	rlwinm r3, r0, 0, 24, 20
/* 814479A8 | 54 00 05 6E */	rlwinm r0, r0, 0, 21, 23
/* 814479AC | 90 7F 00 34 */	stw r3, 0x34(r31)
/* 814479B0 | 7C 85 00 50 */	subf r4, r5, r0
/* 814479B4 | 7C 00 28 50 */	subf r0, r0, r5
/* 814479B8 | 7C 84 03 78 */	or r4, r4, r0
/* 814479BC | 80 1D 00 04 */	lwz r0, 0x4(r29)
/* 814479C0 | 54 84 0F FF */	srwi. r4, r4, 31
/* 814479C4 | 7C 60 03 78 */	or r0, r3, r0
/* 814479C8 | 90 1F 00 34 */	stw r0, 0x34(r31)
/* 814479CC | 41 82 00 6C */	beq .L_81447A38
/* 814479D0 | 7C 7D 32 14 */	add r3, r29, r6
/* 814479D4 | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 814479D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814479DC | 41 82 00 5C */	beq .L_81447A38
/* 814479E0 | 88 7F 00 14 */	lbz r3, 0x14(r31)
/* 814479E4 | 80 9F 00 34 */	lwz r4, 0x34(r31)
/* 814479E8 | 48 1A CC 7D */	bl fn_815F4664
/* 814479EC | 80 7F 00 34 */	lwz r3, 0x34(r31)
/* 814479F0 | 38 80 00 00 */	li r4, 0x0
/* 814479F4 | 54 60 05 EF */	rlwinm. r0, r3, 0, 23, 23
/* 814479F8 | 41 82 00 08 */	beq .L_81447A00
/* 814479FC | 60 84 00 01 */	ori r4, r4, 0x1
.L_81447A00:
/* 81447A00 | 54 60 05 AD */	rlwinm. r0, r3, 0, 22, 22
/* 81447A04 | 41 82 00 0C */	beq .L_81447A10
/* 81447A08 | 60 80 00 02 */	ori r0, r4, 0x2
/* 81447A0C | 54 04 06 3E */	clrlwi r4, r0, 24
.L_81447A10:
/* 81447A10 | 54 60 05 6B */	rlwinm. r0, r3, 0, 21, 21
/* 81447A14 | 41 82 00 0C */	beq .L_81447A20
/* 81447A18 | 60 80 00 04 */	ori r0, r4, 0x4
/* 81447A1C | 54 04 06 3E */	clrlwi r4, r0, 24
.L_81447A20:
/* 81447A20 | 88 7F 00 14 */	lbz r3, 0x14(r31)
/* 81447A24 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81447A28 | 48 1A C7 35 */	bl fn_815F415C
/* 81447A2C | 2C 03 00 07 */	cmpwi r3, 0x7
/* 81447A30 | 40 82 00 08 */	bne .L_81447A38
/* 81447A34 | 9B 9F 00 44 */	stb r28, 0x44(r31)
.L_81447A38:
/* 81447A38 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81447A3C | 28 1E 00 02 */	cmplwi r30, 0x2
/* 81447A40 | 41 80 FF 4C */	blt .L_8144798C
/* 81447A44 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81447A48 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81447A4C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81447A50 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81447A54 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 81447A58 | 7C 08 03 A6 */	mtlr r0
/* 81447A5C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81447A60 | 4E 80 00 20 */	blr
.endfn SetModifierState__Q39textinput5input10HKBManagerFUlUl

# .text:0x7A4 | 0x81447A64 | size: 0x14
# textinput::input::HKBManager::SetForceModifierState(unsigned long, unsigned long)
.fn SetForceModifierState__Q39textinput5input10HKBManagerFUlUl, global
/* 81447A64 | 90 83 00 38 */	stw r4, 0x38(r3)
/* 81447A68 | 90 A3 00 3C */	stw r5, 0x3c(r3)
/* 81447A6C | 90 83 00 A4 */	stw r4, 0xa4(r3)
/* 81447A70 | 90 A3 00 A8 */	stw r5, 0xa8(r3)
/* 81447A74 | 4E 80 00 20 */	blr
.endfn SetForceModifierState__Q39textinput5input10HKBManagerFUlUl

# .text:0x7B8 | 0x81447A78 | size: 0xDC
# textinput::input::HKBManager::Update()
.fn Update__Q39textinput5input10HKBManagerFv, global
/* 81447A78 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81447A7C | 7C 08 02 A6 */	mflr r0
/* 81447A80 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81447A84 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81447A88 | 48 1B 1A 35 */	bl _savegpr_26
/* 81447A8C | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 81447A90 | 7C 7F 1B 78 */	mr r31, r3
/* 81447A94 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81447A98 | 41 82 00 A4 */	beq .L_81447B3C
/* 81447A9C | 3B 40 00 02 */	li r26, 0x2
/* 81447AA0 | 3B A0 00 00 */	li r29, 0x0
/* 81447AA4 | 3F C0 81 44 */	lis r30, SetLedCB__Q39textinput5input10HKBManagerF6_KBDEcPv@ha
/* 81447AA8 | 3B 80 00 01 */	li r28, 0x1
.L_81447AAC:
/* 81447AAC | 57 43 06 3E */	clrlwi r3, r26, 24
/* 81447AB0 | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 81447AB4 | 7F 9B 18 30 */	slw r27, r28, r3
/* 81447AB8 | 7C 00 D8 39 */	and. r0, r0, r27
/* 81447ABC | 41 82 00 50 */	beq .L_81447B0C
/* 81447AC0 | 9B 41 00 08 */	stb r26, 0x8(r1)
/* 81447AC4 | 93 A1 00 0C */	stw r29, 0xc(r1)
/* 81447AC8 | 48 0E 8D BD */	bl OSDisableInterrupts
/* 81447ACC | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 81447AD0 | 7C 00 D8 78 */	andc r0, r0, r27
/* 81447AD4 | 90 1F 00 08 */	stw r0, 0x8(r31)
/* 81447AD8 | 48 0E 8D D5 */	bl OSRestoreInterrupts
/* 81447ADC | 80 C1 00 08 */	lwz r6, 0x8(r1)
/* 81447AE0 | 57 43 06 3E */	clrlwi r3, r26, 24
/* 81447AE4 | 38 BE 72 C0 */	addi r5, r30, SetLedCB__Q39textinput5input10HKBManagerF6_KBDEcPv@l
/* 81447AE8 | 38 80 00 00 */	li r4, 0x0
/* 81447AEC | 48 1A C5 2D */	bl fn_815F4018
/* 81447AF0 | 2C 03 00 07 */	cmpwi r3, 0x7
/* 81447AF4 | 40 82 00 18 */	bne .L_81447B0C
/* 81447AF8 | 48 0E 8D 8D */	bl OSDisableInterrupts
/* 81447AFC | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 81447B00 | 7C 00 DB 78 */	or r0, r0, r27
/* 81447B04 | 90 1F 00 08 */	stw r0, 0x8(r31)
/* 81447B08 | 48 0E 8D A5 */	bl OSRestoreInterrupts
.L_81447B0C:
/* 81447B0C | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 81447B10 | 28 1A 00 04 */	cmplwi r26, 0x4
/* 81447B14 | 41 80 FF 98 */	blt .L_81447AAC
/* 81447B18 | 3B 40 00 00 */	li r26, 0x0
.L_81447B1C:
/* 81447B1C | 57 40 06 3E */	clrlwi r0, r26, 24
/* 81447B20 | 1C 00 00 6C */	mulli r0, r0, 0x6c
/* 81447B24 | 7C 7F 02 14 */	add r3, r31, r0
/* 81447B28 | 38 63 00 14 */	addi r3, r3, 0x14
/* 81447B2C | 48 00 02 E5 */	bl Update__Q49textinput5input10HKBManager9KeyState_Fv
/* 81447B30 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 81447B34 | 28 1A 00 02 */	cmplwi r26, 0x2
/* 81447B38 | 41 80 FF E4 */	blt .L_81447B1C
.L_81447B3C:
/* 81447B3C | 39 61 00 30 */	addi r11, r1, 0x30
/* 81447B40 | 48 1B 19 C9 */	bl _restgpr_26
/* 81447B44 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81447B48 | 7C 08 03 A6 */	mtlr r0
/* 81447B4C | 38 21 00 30 */	addi r1, r1, 0x30
/* 81447B50 | 4E 80 00 20 */	blr
.endfn Update__Q39textinput5input10HKBManagerFv

# .text:0x894 | 0x81447B54 | size: 0x44
# textinput::input::HKBManager::GetTriggeredKeySet() const
.fn GetTriggeredKeySet__Q39textinput5input10HKBManagerCFv, global
/* 81447B54 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81447B58 | 7C 08 02 A6 */	mflr r0
/* 81447B5C | 38 C0 00 01 */	li r6, 0x1
/* 81447B60 | 38 A0 FF FF */	li r5, -0x1
/* 81447B64 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81447B68 | 38 00 00 00 */	li r0, 0x0
/* 81447B6C | 90 81 00 08 */	stw r4, 0x8(r1)
/* 81447B70 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81447B74 | 98 C1 00 0C */	stb r6, 0xc(r1)
/* 81447B78 | 98 A1 00 0D */	stb r5, 0xd(r1)
/* 81447B7C | 98 01 00 0E */	stb r0, 0xe(r1)
/* 81447B80 | B0 01 00 10 */	sth r0, 0x10(r1)
/* 81447B84 | 48 00 0D 81 */	bl GetNext__Q49textinput5input10HKBManager6KeySetCFv
/* 81447B88 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81447B8C | 7C 08 03 A6 */	mtlr r0
/* 81447B90 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81447B94 | 4E 80 00 20 */	blr
.endfn GetTriggeredKeySet__Q39textinput5input10HKBManagerCFv

# .text:0x8D8 | 0x81447B98 | size: 0x44
# textinput::input::HKBManager::GetReleasedKeySet() const
.fn GetReleasedKeySet__Q39textinput5input10HKBManagerCFv, global
/* 81447B98 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81447B9C | 7C 08 02 A6 */	mflr r0
/* 81447BA0 | 38 C0 00 02 */	li r6, 0x2
/* 81447BA4 | 38 A0 FF FF */	li r5, -0x1
/* 81447BA8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81447BAC | 38 00 00 00 */	li r0, 0x0
/* 81447BB0 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 81447BB4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81447BB8 | 98 C1 00 0C */	stb r6, 0xc(r1)
/* 81447BBC | 98 A1 00 0D */	stb r5, 0xd(r1)
/* 81447BC0 | 98 01 00 0E */	stb r0, 0xe(r1)
/* 81447BC4 | B0 01 00 10 */	sth r0, 0x10(r1)
/* 81447BC8 | 48 00 0D 3D */	bl GetNext__Q49textinput5input10HKBManager6KeySetCFv
/* 81447BCC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81447BD0 | 7C 08 03 A6 */	mtlr r0
/* 81447BD4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81447BD8 | 4E 80 00 20 */	blr
.endfn GetReleasedKeySet__Q39textinput5input10HKBManagerCFv

# .text:0x91C | 0x81447BDC | size: 0x44
# textinput::input::HKBManager::GetRepeatedKeySet() const
.fn GetRepeatedKeySet__Q39textinput5input10HKBManagerCFv, global
/* 81447BDC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81447BE0 | 7C 08 02 A6 */	mflr r0
/* 81447BE4 | 38 C0 00 03 */	li r6, 0x3
/* 81447BE8 | 38 A0 FF FF */	li r5, -0x1
/* 81447BEC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81447BF0 | 38 00 00 00 */	li r0, 0x0
/* 81447BF4 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 81447BF8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81447BFC | 98 C1 00 0C */	stb r6, 0xc(r1)
/* 81447C00 | 98 A1 00 0D */	stb r5, 0xd(r1)
/* 81447C04 | 98 01 00 0E */	stb r0, 0xe(r1)
/* 81447C08 | B0 01 00 10 */	sth r0, 0x10(r1)
/* 81447C0C | 48 00 0C F9 */	bl GetNext__Q49textinput5input10HKBManager6KeySetCFv
/* 81447C10 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81447C14 | 7C 08 03 A6 */	mtlr r0
/* 81447C18 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81447C1C | 4E 80 00 20 */	blr
.endfn GetRepeatedKeySet__Q39textinput5input10HKBManagerCFv

# .text:0x960 | 0x81447C20 | size: 0x1F0
# textinput::input::HKBManager::KeyState_::NotifyEvent(unsigned char, unsigned char)
.fn NotifyEvent__Q49textinput5input10HKBManager9KeyState_FUcUc, global
/* 81447C20 | 28 04 00 01 */	cmplwi r4, 0x1
/* 81447C24 | 39 20 FF FF */	li r9, -0x1
/* 81447C28 | 40 82 01 04 */	bne .L_81447D2C
/* 81447C2C | 38 00 00 02 */	li r0, 0x2
/* 81447C30 | 39 00 00 00 */	li r8, 0x0
/* 81447C34 | 38 C0 00 01 */	li r6, 0x1
/* 81447C38 | 7C 09 03 A6 */	mtctr r0
.L_81447C3C:
/* 81447C3C | 80 E3 00 1C */	lwz r7, 0x1c(r3)
/* 81447C40 | 7C C0 40 30 */	slw r0, r6, r8
/* 81447C44 | 7C E0 00 39 */	and. r0, r7, r0
/* 81447C48 | 41 82 00 1C */	beq .L_81447C64
/* 81447C4C | 7C 83 42 14 */	add r4, r3, r8
/* 81447C50 | 88 04 00 41 */	lbz r0, 0x41(r4)
/* 81447C54 | 7C 05 00 40 */	cmplw r5, r0
/* 81447C58 | 40 82 00 14 */	bne .L_81447C6C
/* 81447C5C | 7D 09 43 78 */	mr r9, r8
/* 81447C60 | 48 00 00 A4 */	b .L_81447D04
.L_81447C64:
/* 81447C64 | 7D 09 43 78 */	mr r9, r8
/* 81447C68 | 48 00 00 9C */	b .L_81447D04
.L_81447C6C:
/* 81447C6C | 39 08 00 01 */	addi r8, r8, 0x1
/* 81447C70 | 7C C0 40 30 */	slw r0, r6, r8
/* 81447C74 | 7C E0 00 39 */	and. r0, r7, r0
/* 81447C78 | 41 82 00 1C */	beq .L_81447C94
/* 81447C7C | 7C 83 42 14 */	add r4, r3, r8
/* 81447C80 | 88 04 00 41 */	lbz r0, 0x41(r4)
/* 81447C84 | 7C 05 00 40 */	cmplw r5, r0
/* 81447C88 | 40 82 00 14 */	bne .L_81447C9C
/* 81447C8C | 7D 09 43 78 */	mr r9, r8
/* 81447C90 | 48 00 00 74 */	b .L_81447D04
.L_81447C94:
/* 81447C94 | 7D 09 43 78 */	mr r9, r8
/* 81447C98 | 48 00 00 6C */	b .L_81447D04
.L_81447C9C:
/* 81447C9C | 39 08 00 01 */	addi r8, r8, 0x1
/* 81447CA0 | 7C C0 40 30 */	slw r0, r6, r8
/* 81447CA4 | 7C E0 00 39 */	and. r0, r7, r0
/* 81447CA8 | 41 82 00 1C */	beq .L_81447CC4
/* 81447CAC | 7C 83 42 14 */	add r4, r3, r8
/* 81447CB0 | 88 04 00 41 */	lbz r0, 0x41(r4)
/* 81447CB4 | 7C 05 00 40 */	cmplw r5, r0
/* 81447CB8 | 40 82 00 14 */	bne .L_81447CCC
/* 81447CBC | 7D 09 43 78 */	mr r9, r8
/* 81447CC0 | 48 00 00 44 */	b .L_81447D04
.L_81447CC4:
/* 81447CC4 | 7D 09 43 78 */	mr r9, r8
/* 81447CC8 | 48 00 00 3C */	b .L_81447D04
.L_81447CCC:
/* 81447CCC | 39 08 00 01 */	addi r8, r8, 0x1
/* 81447CD0 | 7C C0 40 30 */	slw r0, r6, r8
/* 81447CD4 | 7C E0 00 39 */	and. r0, r7, r0
/* 81447CD8 | 41 82 00 1C */	beq .L_81447CF4
/* 81447CDC | 7C 83 42 14 */	add r4, r3, r8
/* 81447CE0 | 88 04 00 41 */	lbz r0, 0x41(r4)
/* 81447CE4 | 7C 05 00 40 */	cmplw r5, r0
/* 81447CE8 | 40 82 00 14 */	bne .L_81447CFC
/* 81447CEC | 7D 09 43 78 */	mr r9, r8
/* 81447CF0 | 48 00 00 14 */	b .L_81447D04
.L_81447CF4:
/* 81447CF4 | 7D 09 43 78 */	mr r9, r8
/* 81447CF8 | 48 00 00 0C */	b .L_81447D04
.L_81447CFC:
/* 81447CFC | 39 08 00 01 */	addi r8, r8, 0x1
/* 81447D00 | 42 00 FF 3C */	bdnz .L_81447C3C
.L_81447D04:
/* 81447D04 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 81447D08 | 4D 80 00 20 */	bltlr
/* 81447D0C | 7C 83 4A 14 */	add r4, r3, r9
/* 81447D10 | 38 00 00 01 */	li r0, 0x1
/* 81447D14 | 98 A4 00 41 */	stb r5, 0x41(r4)
/* 81447D18 | 7C 00 48 30 */	slw r0, r0, r9
/* 81447D1C | 80 83 00 1C */	lwz r4, 0x1c(r3)
/* 81447D20 | 7C 80 03 78 */	or r0, r4, r0
/* 81447D24 | 90 03 00 1C */	stw r0, 0x1c(r3)
/* 81447D28 | 4E 80 00 20 */	blr
.L_81447D2C:
/* 81447D2C | 38 00 00 02 */	li r0, 0x2
/* 81447D30 | 38 E0 00 00 */	li r7, 0x0
/* 81447D34 | 38 C0 00 01 */	li r6, 0x1
/* 81447D38 | 7C 09 03 A6 */	mtctr r0
.L_81447D3C:
/* 81447D3C | 80 83 00 1C */	lwz r4, 0x1c(r3)
/* 81447D40 | 7C C0 38 30 */	slw r0, r6, r7
/* 81447D44 | 7C 80 00 39 */	and. r0, r4, r0
/* 81447D48 | 41 82 00 1C */	beq .L_81447D64
/* 81447D4C | 7C 83 3A 14 */	add r4, r3, r7
/* 81447D50 | 88 04 00 41 */	lbz r0, 0x41(r4)
/* 81447D54 | 7C 05 00 40 */	cmplw r5, r0
/* 81447D58 | 40 82 00 0C */	bne .L_81447D64
/* 81447D5C | 7C E9 3B 78 */	mr r9, r7
/* 81447D60 | 48 00 00 90 */	b .L_81447DF0
.L_81447D64:
/* 81447D64 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 81447D68 | 80 83 00 1C */	lwz r4, 0x1c(r3)
/* 81447D6C | 7C C0 38 30 */	slw r0, r6, r7
/* 81447D70 | 7C 80 00 39 */	and. r0, r4, r0
/* 81447D74 | 41 82 00 1C */	beq .L_81447D90
/* 81447D78 | 7C 83 3A 14 */	add r4, r3, r7
/* 81447D7C | 88 04 00 41 */	lbz r0, 0x41(r4)
/* 81447D80 | 7C 05 00 40 */	cmplw r5, r0
/* 81447D84 | 40 82 00 0C */	bne .L_81447D90
/* 81447D88 | 7C E9 3B 78 */	mr r9, r7
/* 81447D8C | 48 00 00 64 */	b .L_81447DF0
.L_81447D90:
/* 81447D90 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 81447D94 | 80 83 00 1C */	lwz r4, 0x1c(r3)
/* 81447D98 | 7C C0 38 30 */	slw r0, r6, r7
/* 81447D9C | 7C 80 00 39 */	and. r0, r4, r0
/* 81447DA0 | 41 82 00 1C */	beq .L_81447DBC
/* 81447DA4 | 7C 83 3A 14 */	add r4, r3, r7
/* 81447DA8 | 88 04 00 41 */	lbz r0, 0x41(r4)
/* 81447DAC | 7C 05 00 40 */	cmplw r5, r0
/* 81447DB0 | 40 82 00 0C */	bne .L_81447DBC
/* 81447DB4 | 7C E9 3B 78 */	mr r9, r7
/* 81447DB8 | 48 00 00 38 */	b .L_81447DF0
.L_81447DBC:
/* 81447DBC | 38 E7 00 01 */	addi r7, r7, 0x1
/* 81447DC0 | 80 83 00 1C */	lwz r4, 0x1c(r3)
/* 81447DC4 | 7C C0 38 30 */	slw r0, r6, r7
/* 81447DC8 | 7C 80 00 39 */	and. r0, r4, r0
/* 81447DCC | 41 82 00 1C */	beq .L_81447DE8
/* 81447DD0 | 7C 83 3A 14 */	add r4, r3, r7
/* 81447DD4 | 88 04 00 41 */	lbz r0, 0x41(r4)
/* 81447DD8 | 7C 05 00 40 */	cmplw r5, r0
/* 81447DDC | 40 82 00 0C */	bne .L_81447DE8
/* 81447DE0 | 7C E9 3B 78 */	mr r9, r7
/* 81447DE4 | 48 00 00 0C */	b .L_81447DF0
.L_81447DE8:
/* 81447DE8 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 81447DEC | 42 00 FF 50 */	bdnz .L_81447D3C
.L_81447DF0:
/* 81447DF0 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 81447DF4 | 4D 80 00 20 */	bltlr
/* 81447DF8 | 38 00 00 01 */	li r0, 0x1
/* 81447DFC | 80 83 00 1C */	lwz r4, 0x1c(r3)
/* 81447E00 | 7C 00 48 30 */	slw r0, r0, r9
/* 81447E04 | 7C 80 00 78 */	andc r0, r4, r0
/* 81447E08 | 90 03 00 1C */	stw r0, 0x1c(r3)
/* 81447E0C | 4E 80 00 20 */	blr
.endfn NotifyEvent__Q49textinput5input10HKBManager9KeyState_FUcUc

# .text:0xB50 | 0x81447E10 | size: 0x2DC
# textinput::input::HKBManager::KeyState_::Update()
.fn Update__Q49textinput5input10HKBManager9KeyState_Fv, global
/* 81447E10 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81447E14 | 7C 08 02 A6 */	mflr r0
/* 81447E18 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81447E1C | 39 61 00 30 */	addi r11, r1, 0x30
/* 81447E20 | 48 1B 16 91 */	bl _savegpr_23
/* 81447E24 | 7C 7F 1B 78 */	mr r31, r3
/* 81447E28 | 48 0E 8A 5D */	bl OSDisableInterrupts
/* 81447E2C | 82 FF 00 18 */	lwz r23, 0x18(r31)
/* 81447E30 | 83 1F 00 1C */	lwz r24, 0x1c(r31)
/* 81447E34 | 8B 3F 00 39 */	lbz r25, 0x39(r31)
/* 81447E38 | 8B 5F 00 41 */	lbz r26, 0x41(r31)
/* 81447E3C | 8B 7F 00 3A */	lbz r27, 0x3a(r31)
/* 81447E40 | 8B 9F 00 42 */	lbz r28, 0x42(r31)
/* 81447E44 | 8B BF 00 3B */	lbz r29, 0x3b(r31)
/* 81447E48 | 8B DF 00 43 */	lbz r30, 0x43(r31)
/* 81447E4C | 89 9F 00 3C */	lbz r12, 0x3c(r31)
/* 81447E50 | 89 7F 00 44 */	lbz r11, 0x44(r31)
/* 81447E54 | 89 5F 00 3D */	lbz r10, 0x3d(r31)
/* 81447E58 | 89 3F 00 45 */	lbz r9, 0x45(r31)
/* 81447E5C | 89 1F 00 3E */	lbz r8, 0x3e(r31)
/* 81447E60 | 88 FF 00 46 */	lbz r7, 0x46(r31)
/* 81447E64 | 88 DF 00 3F */	lbz r6, 0x3f(r31)
/* 81447E68 | 88 BF 00 47 */	lbz r5, 0x47(r31)
/* 81447E6C | 88 9F 00 40 */	lbz r4, 0x40(r31)
/* 81447E70 | 88 1F 00 48 */	lbz r0, 0x48(r31)
/* 81447E74 | 92 FF 00 14 */	stw r23, 0x14(r31)
/* 81447E78 | 93 1F 00 18 */	stw r24, 0x18(r31)
/* 81447E7C | 9B 3F 00 31 */	stb r25, 0x31(r31)
/* 81447E80 | 9B 5F 00 39 */	stb r26, 0x39(r31)
/* 81447E84 | 9B 7F 00 32 */	stb r27, 0x32(r31)
/* 81447E88 | 9B 9F 00 3A */	stb r28, 0x3a(r31)
/* 81447E8C | 9B BF 00 33 */	stb r29, 0x33(r31)
/* 81447E90 | 9B DF 00 3B */	stb r30, 0x3b(r31)
/* 81447E94 | 99 9F 00 34 */	stb r12, 0x34(r31)
/* 81447E98 | 99 7F 00 3C */	stb r11, 0x3c(r31)
/* 81447E9C | 99 5F 00 35 */	stb r10, 0x35(r31)
/* 81447EA0 | 99 3F 00 3D */	stb r9, 0x3d(r31)
/* 81447EA4 | 99 1F 00 36 */	stb r8, 0x36(r31)
/* 81447EA8 | 98 FF 00 3E */	stb r7, 0x3e(r31)
/* 81447EAC | 98 DF 00 37 */	stb r6, 0x37(r31)
/* 81447EB0 | 98 BF 00 3F */	stb r5, 0x3f(r31)
/* 81447EB4 | 98 9F 00 38 */	stb r4, 0x38(r31)
/* 81447EB8 | 98 1F 00 40 */	stb r0, 0x40(r31)
/* 81447EBC | 48 0E 89 F1 */	bl OSRestoreInterrupts
/* 81447EC0 | 7F E3 FB 78 */	mr r3, r31
/* 81447EC4 | 48 00 02 29 */	bl UpdateModState___Q49textinput5input10HKBManager9KeyState_Fv
/* 81447EC8 | 80 BF 00 18 */	lwz r5, 0x18(r31)
/* 81447ECC | 38 60 00 00 */	li r3, 0x0
/* 81447ED0 | 38 00 00 04 */	li r0, 0x4
/* 81447ED4 | 90 7F 00 08 */	stw r3, 0x8(r31)
/* 81447ED8 | 38 E0 00 00 */	li r7, 0x0
/* 81447EDC | 38 80 00 01 */	li r4, 0x1
/* 81447EE0 | 90 BF 00 04 */	stw r5, 0x4(r31)
/* 81447EE4 | 7C 09 03 A6 */	mtctr r0
.L_81447EE8:
/* 81447EE8 | 80 1F 00 18 */	lwz r0, 0x18(r31)
/* 81447EEC | 7C 85 38 30 */	slw r5, r4, r7
/* 81447EF0 | 7C 00 28 39 */	and. r0, r0, r5
/* 81447EF4 | 41 82 00 30 */	beq .L_81447F24
/* 81447EF8 | 80 1F 00 14 */	lwz r0, 0x14(r31)
/* 81447EFC | 7C 00 28 39 */	and. r0, r0, r5
/* 81447F00 | 41 82 00 18 */	beq .L_81447F18
/* 81447F04 | 7C DF 3A 14 */	add r6, r31, r7
/* 81447F08 | 88 66 00 31 */	lbz r3, 0x31(r6)
/* 81447F0C | 88 06 00 39 */	lbz r0, 0x39(r6)
/* 81447F10 | 7C 03 00 40 */	cmplw r3, r0
/* 81447F14 | 41 82 00 10 */	beq .L_81447F24
.L_81447F18:
/* 81447F18 | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 81447F1C | 7C 00 2B 78 */	or r0, r0, r5
/* 81447F20 | 90 1F 00 08 */	stw r0, 0x8(r31)
.L_81447F24:
/* 81447F24 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 81447F28 | 80 1F 00 18 */	lwz r0, 0x18(r31)
/* 81447F2C | 7C 85 38 30 */	slw r5, r4, r7
/* 81447F30 | 7C 00 28 39 */	and. r0, r0, r5
/* 81447F34 | 41 82 00 30 */	beq .L_81447F64
/* 81447F38 | 80 1F 00 14 */	lwz r0, 0x14(r31)
/* 81447F3C | 7C 00 28 39 */	and. r0, r0, r5
/* 81447F40 | 41 82 00 18 */	beq .L_81447F58
/* 81447F44 | 7C DF 3A 14 */	add r6, r31, r7
/* 81447F48 | 88 66 00 31 */	lbz r3, 0x31(r6)
/* 81447F4C | 88 06 00 39 */	lbz r0, 0x39(r6)
/* 81447F50 | 7C 03 00 40 */	cmplw r3, r0
/* 81447F54 | 41 82 00 10 */	beq .L_81447F64
.L_81447F58:
/* 81447F58 | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 81447F5C | 7C 00 2B 78 */	or r0, r0, r5
/* 81447F60 | 90 1F 00 08 */	stw r0, 0x8(r31)
.L_81447F64:
/* 81447F64 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 81447F68 | 42 00 FF 80 */	bdnz .L_81447EE8
/* 81447F6C | 38 60 00 00 */	li r3, 0x0
/* 81447F70 | 38 00 00 04 */	li r0, 0x4
/* 81447F74 | 90 7F 00 0C */	stw r3, 0xc(r31)
/* 81447F78 | 38 E0 00 00 */	li r7, 0x0
/* 81447F7C | 38 80 00 01 */	li r4, 0x1
/* 81447F80 | 7C 09 03 A6 */	mtctr r0
.L_81447F84:
/* 81447F84 | 80 1F 00 14 */	lwz r0, 0x14(r31)
/* 81447F88 | 7C 85 38 30 */	slw r5, r4, r7
/* 81447F8C | 7C 00 28 39 */	and. r0, r0, r5
/* 81447F90 | 41 82 00 30 */	beq .L_81447FC0
/* 81447F94 | 80 1F 00 18 */	lwz r0, 0x18(r31)
/* 81447F98 | 7C 00 28 39 */	and. r0, r0, r5
/* 81447F9C | 41 82 00 18 */	beq .L_81447FB4
/* 81447FA0 | 7C DF 3A 14 */	add r6, r31, r7
/* 81447FA4 | 88 66 00 31 */	lbz r3, 0x31(r6)
/* 81447FA8 | 88 06 00 39 */	lbz r0, 0x39(r6)
/* 81447FAC | 7C 03 00 40 */	cmplw r3, r0
/* 81447FB0 | 41 82 00 10 */	beq .L_81447FC0
.L_81447FB4:
/* 81447FB4 | 80 1F 00 0C */	lwz r0, 0xc(r31)
/* 81447FB8 | 7C 00 2B 78 */	or r0, r0, r5
/* 81447FBC | 90 1F 00 0C */	stw r0, 0xc(r31)
.L_81447FC0:
/* 81447FC0 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 81447FC4 | 80 1F 00 14 */	lwz r0, 0x14(r31)
/* 81447FC8 | 7C 85 38 30 */	slw r5, r4, r7
/* 81447FCC | 7C 00 28 39 */	and. r0, r0, r5
/* 81447FD0 | 41 82 00 30 */	beq .L_81448000
/* 81447FD4 | 80 1F 00 18 */	lwz r0, 0x18(r31)
/* 81447FD8 | 7C 00 28 39 */	and. r0, r0, r5
/* 81447FDC | 41 82 00 18 */	beq .L_81447FF4
/* 81447FE0 | 7C DF 3A 14 */	add r6, r31, r7
/* 81447FE4 | 88 66 00 31 */	lbz r3, 0x31(r6)
/* 81447FE8 | 88 06 00 39 */	lbz r0, 0x39(r6)
/* 81447FEC | 7C 03 00 40 */	cmplw r3, r0
/* 81447FF0 | 41 82 00 10 */	beq .L_81448000
.L_81447FF4:
/* 81447FF4 | 80 1F 00 0C */	lwz r0, 0xc(r31)
/* 81447FF8 | 7C 00 2B 78 */	or r0, r0, r5
/* 81447FFC | 90 1F 00 0C */	stw r0, 0xc(r31)
.L_81448000:
/* 81448000 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 81448004 | 42 00 FF 80 */	bdnz .L_81447F84
/* 81448008 | 38 60 00 00 */	li r3, 0x0
/* 8144800C | 38 00 00 04 */	li r0, 0x4
/* 81448010 | 90 7F 00 10 */	stw r3, 0x10(r31)
/* 81448014 | 7F E6 FB 78 */	mr r6, r31
/* 81448018 | 39 00 00 00 */	li r8, 0x0
/* 8144801C | 38 80 00 1E */	li r4, 0x1e
/* 81448020 | 38 60 00 08 */	li r3, 0x8
/* 81448024 | 38 A0 00 01 */	li r5, 0x1
/* 81448028 | 7C 09 03 A6 */	mtctr r0
.L_8144802C:
/* 8144802C | 80 1F 00 18 */	lwz r0, 0x18(r31)
/* 81448030 | 7C A7 40 30 */	slw r7, r5, r8
/* 81448034 | 7C 00 38 39 */	and. r0, r0, r7
/* 81448038 | 41 82 00 40 */	beq .L_81448078
/* 8144803C | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 81448040 | 7C 00 38 39 */	and. r0, r0, r7
/* 81448044 | 41 82 00 14 */	beq .L_81448058
/* 81448048 | 90 86 00 4C */	stw r4, 0x4c(r6)
/* 8144804C | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 81448050 | 7C 00 3B 78 */	or r0, r0, r7
/* 81448054 | 90 1F 00 10 */	stw r0, 0x10(r31)
.L_81448058:
/* 81448058 | 80 06 00 4C */	lwz r0, 0x4c(r6)
/* 8144805C | 34 00 FF FF */	subic. r0, r0, 0x1
/* 81448060 | 90 06 00 4C */	stw r0, 0x4c(r6)
/* 81448064 | 40 82 00 14 */	bne .L_81448078
/* 81448068 | 90 66 00 4C */	stw r3, 0x4c(r6)
/* 8144806C | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 81448070 | 7C 00 3B 78 */	or r0, r0, r7
/* 81448074 | 90 1F 00 10 */	stw r0, 0x10(r31)
.L_81448078:
/* 81448078 | 39 08 00 01 */	addi r8, r8, 0x1
/* 8144807C | 80 1F 00 18 */	lwz r0, 0x18(r31)
/* 81448080 | 7C A7 40 30 */	slw r7, r5, r8
/* 81448084 | 7C 00 38 39 */	and. r0, r0, r7
/* 81448088 | 41 82 00 40 */	beq .L_814480C8
/* 8144808C | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 81448090 | 7C 00 38 39 */	and. r0, r0, r7
/* 81448094 | 41 82 00 14 */	beq .L_814480A8
/* 81448098 | 90 86 00 50 */	stw r4, 0x50(r6)
/* 8144809C | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 814480A0 | 7C 00 3B 78 */	or r0, r0, r7
/* 814480A4 | 90 1F 00 10 */	stw r0, 0x10(r31)
.L_814480A8:
/* 814480A8 | 80 06 00 50 */	lwz r0, 0x50(r6)
/* 814480AC | 34 00 FF FF */	subic. r0, r0, 0x1
/* 814480B0 | 90 06 00 50 */	stw r0, 0x50(r6)
/* 814480B4 | 40 82 00 14 */	bne .L_814480C8
/* 814480B8 | 90 66 00 50 */	stw r3, 0x50(r6)
/* 814480BC | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 814480C0 | 7C 00 3B 78 */	or r0, r0, r7
/* 814480C4 | 90 1F 00 10 */	stw r0, 0x10(r31)
.L_814480C8:
/* 814480C8 | 38 C6 00 08 */	addi r6, r6, 0x8
/* 814480CC | 39 08 00 01 */	addi r8, r8, 0x1
/* 814480D0 | 42 00 FF 5C */	bdnz .L_8144802C
/* 814480D4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814480D8 | 48 1B 14 25 */	bl _restgpr_23
/* 814480DC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814480E0 | 7C 08 03 A6 */	mtlr r0
/* 814480E4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814480E8 | 4E 80 00 20 */	blr
.endfn Update__Q49textinput5input10HKBManager9KeyState_Fv

# .text:0xE2C | 0x814480EC | size: 0x1A0
# textinput::input::HKBManager::KeyState_::UpdateModState_()
.fn UpdateModState___Q49textinput5input10HKBManager9KeyState_Fv, global
/* 814480EC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814480F0 | 7C 08 02 A6 */	mflr r0
/* 814480F4 | 38 80 FF D0 */	li r4, -0x30
/* 814480F8 | 39 00 00 00 */	li r8, 0x0
/* 814480FC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81448100 | 38 00 00 08 */	li r0, 0x8
/* 81448104 | 38 A0 00 01 */	li r5, 0x1
/* 81448108 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8144810C | 7C 7F 1B 78 */	mr r31, r3
/* 81448110 | 80 E3 00 20 */	lwz r7, 0x20(r3)
/* 81448114 | 7C E4 20 38 */	and r4, r7, r4
/* 81448118 | 90 83 00 20 */	stw r4, 0x20(r3)
/* 8144811C | 7C 09 03 A6 */	mtctr r0
.L_81448120:
/* 81448120 | 55 04 06 3E */	clrlwi r4, r8, 24
/* 81448124 | 80 C3 00 18 */	lwz r6, 0x18(r3)
/* 81448128 | 7C A0 20 30 */	slw r0, r5, r4
/* 8144812C | 7C C0 00 39 */	and. r0, r6, r0
/* 81448130 | 41 82 00 BC */	beq .L_814481EC
/* 81448134 | 7C 83 22 14 */	add r4, r3, r4
/* 81448138 | 88 04 00 39 */	lbz r0, 0x39(r4)
/* 8144813C | 28 00 00 E5 */	cmplwi r0, 0xe5
/* 81448140 | 41 82 00 0C */	beq .L_8144814C
/* 81448144 | 28 00 00 E1 */	cmplwi r0, 0xe1
/* 81448148 | 40 82 00 14 */	bne .L_8144815C
.L_8144814C:
/* 8144814C | 80 03 00 20 */	lwz r0, 0x20(r3)
/* 81448150 | 60 00 00 02 */	ori r0, r0, 0x2
/* 81448154 | 90 03 00 20 */	stw r0, 0x20(r3)
/* 81448158 | 48 00 00 94 */	b .L_814481EC
.L_8144815C:
/* 8144815C | 28 00 00 E4 */	cmplwi r0, 0xe4
/* 81448160 | 41 82 00 0C */	beq .L_8144816C
/* 81448164 | 28 00 00 E0 */	cmplwi r0, 0xe0
/* 81448168 | 40 82 00 14 */	bne .L_8144817C
.L_8144816C:
/* 8144816C | 80 03 00 20 */	lwz r0, 0x20(r3)
/* 81448170 | 60 00 00 01 */	ori r0, r0, 0x1
/* 81448174 | 90 03 00 20 */	stw r0, 0x20(r3)
/* 81448178 | 48 00 00 74 */	b .L_814481EC
.L_8144817C:
/* 8144817C | 28 00 00 E7 */	cmplwi r0, 0xe7
/* 81448180 | 41 82 00 0C */	beq .L_8144818C
/* 81448184 | 28 00 00 E3 */	cmplwi r0, 0xe3
/* 81448188 | 40 82 00 14 */	bne .L_8144819C
.L_8144818C:
/* 8144818C | 80 03 00 20 */	lwz r0, 0x20(r3)
/* 81448190 | 60 00 00 08 */	ori r0, r0, 0x8
/* 81448194 | 90 03 00 20 */	stw r0, 0x20(r3)
/* 81448198 | 48 00 00 54 */	b .L_814481EC
.L_8144819C:
/* 8144819C | 28 00 00 E2 */	cmplwi r0, 0xe2
/* 814481A0 | 40 82 00 14 */	bne .L_814481B4
/* 814481A4 | 80 03 00 20 */	lwz r0, 0x20(r3)
/* 814481A8 | 60 00 00 04 */	ori r0, r0, 0x4
/* 814481AC | 90 03 00 20 */	stw r0, 0x20(r3)
/* 814481B0 | 48 00 00 3C */	b .L_814481EC
.L_814481B4:
/* 814481B4 | 28 00 00 E6 */	cmplwi r0, 0xe6
/* 814481B8 | 40 82 00 34 */	bne .L_814481EC
/* 814481BC | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 814481C0 | 2C 00 00 0F */	cmpwi r0, 0xf
/* 814481C4 | 41 82 00 0C */	beq .L_814481D0
/* 814481C8 | 2C 00 00 21 */	cmpwi r0, 0x21
/* 814481CC | 40 82 00 14 */	bne .L_814481E0
.L_814481D0:
/* 814481D0 | 80 03 00 20 */	lwz r0, 0x20(r3)
/* 814481D4 | 60 00 00 04 */	ori r0, r0, 0x4
/* 814481D8 | 90 03 00 20 */	stw r0, 0x20(r3)
/* 814481DC | 48 00 00 10 */	b .L_814481EC
.L_814481E0:
/* 814481E0 | 80 03 00 20 */	lwz r0, 0x20(r3)
/* 814481E4 | 60 00 00 20 */	ori r0, r0, 0x20
/* 814481E8 | 90 03 00 20 */	stw r0, 0x20(r3)
.L_814481EC:
/* 814481EC | 39 08 00 01 */	addi r8, r8, 0x1
/* 814481F0 | 42 00 FF 30 */	bdnz .L_81448120
/* 814481F4 | 80 03 00 20 */	lwz r0, 0x20(r3)
/* 814481F8 | 54 E4 05 6E */	rlwinm r4, r7, 0, 21, 23
/* 814481FC | 54 00 05 6E */	rlwinm r0, r0, 0, 21, 23
/* 81448200 | 7C 04 00 40 */	cmplw r4, r0
/* 81448204 | 40 82 00 10 */	bne .L_81448214
/* 81448208 | 88 03 00 30 */	lbz r0, 0x30(r3)
/* 8144820C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81448210 | 41 82 00 68 */	beq .L_81448278
.L_81448214:
/* 81448214 | 38 00 00 00 */	li r0, 0x0
/* 81448218 | 80 9F 00 20 */	lwz r4, 0x20(r31)
/* 8144821C | 98 03 00 30 */	stb r0, 0x30(r3)
/* 81448220 | 88 63 00 00 */	lbz r3, 0x0(r3)
/* 81448224 | 48 1A C4 41 */	bl fn_815F4664
/* 81448228 | 80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8144822C | 38 80 00 00 */	li r4, 0x0
/* 81448230 | 54 60 05 EF */	rlwinm. r0, r3, 0, 23, 23
/* 81448234 | 41 82 00 08 */	beq .L_8144823C
/* 81448238 | 60 84 00 01 */	ori r4, r4, 0x1
.L_8144823C:
/* 8144823C | 54 60 05 AD */	rlwinm. r0, r3, 0, 22, 22
/* 81448240 | 41 82 00 0C */	beq .L_8144824C
/* 81448244 | 60 80 00 02 */	ori r0, r4, 0x2
/* 81448248 | 54 04 06 3E */	clrlwi r4, r0, 24
.L_8144824C:
/* 8144824C | 54 60 05 6B */	rlwinm. r0, r3, 0, 21, 21
/* 81448250 | 41 82 00 0C */	beq .L_8144825C
/* 81448254 | 60 80 00 04 */	ori r0, r4, 0x4
/* 81448258 | 54 04 06 3E */	clrlwi r4, r0, 24
.L_8144825C:
/* 8144825C | 88 7F 00 00 */	lbz r3, 0x0(r31)
/* 81448260 | 54 84 06 3E */	clrlwi r4, r4, 24
/* 81448264 | 48 1A BE F9 */	bl fn_815F415C
/* 81448268 | 2C 03 00 07 */	cmpwi r3, 0x7
/* 8144826C | 40 82 00 0C */	bne .L_81448278
/* 81448270 | 38 00 00 01 */	li r0, 0x1
/* 81448274 | 98 1F 00 30 */	stb r0, 0x30(r31)
.L_81448278:
/* 81448278 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8144827C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81448280 | 7C 08 03 A6 */	mtlr r0
/* 81448284 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81448288 | 4E 80 00 20 */	blr
.endfn UpdateModState___Q49textinput5input10HKBManager9KeyState_Fv

# .text:0xFCC | 0x8144828C | size: 0x1D8
# textinput::input::HKBManager::KeySet::GetKey() const
.fn GetKey__Q49textinput5input10HKBManager6KeySetCFv, global
/* 8144828C | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81448290 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81448294 | 40 82 00 0C */	bne .L_814482A0
/* 81448298 | 38 80 00 00 */	li r4, 0x0
/* 8144829C | 48 00 01 04 */	b .L_814483A0
.L_814482A0:
/* 814482A0 | 88 83 00 05 */	lbz r4, 0x5(r3)
/* 814482A4 | 7C 86 07 75 */	extsb. r6, r4
/* 814482A8 | 41 80 00 0C */	blt .L_814482B4
/* 814482AC | 2C 06 00 08 */	cmpwi r6, 0x8
/* 814482B0 | 41 80 00 0C */	blt .L_814482BC
.L_814482B4:
/* 814482B4 | 38 80 00 00 */	li r4, 0x0
/* 814482B8 | 48 00 00 E8 */	b .L_814483A0
.L_814482BC:
/* 814482BC | 88 A3 00 06 */	lbz r5, 0x6(r3)
/* 814482C0 | 28 05 00 02 */	cmplwi r5, 0x2
/* 814482C4 | 41 80 00 0C */	blt .L_814482D0
/* 814482C8 | 38 80 00 00 */	li r4, 0x0
/* 814482CC | 48 00 00 D4 */	b .L_814483A0
.L_814482D0:
/* 814482D0 | 88 83 00 04 */	lbz r4, 0x4(r3)
/* 814482D4 | 2C 04 00 02 */	cmpwi r4, 0x2
/* 814482D8 | 41 82 00 74 */	beq .L_8144834C
/* 814482DC | 40 80 00 14 */	bge .L_814482F0
/* 814482E0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814482E4 | 41 82 00 18 */	beq .L_814482FC
/* 814482E8 | 40 80 00 3C */	bge .L_81448324
/* 814482EC | 48 00 00 B0 */	b .L_8144839C
.L_814482F0:
/* 814482F0 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 814482F4 | 40 80 00 A8 */	bge .L_8144839C
/* 814482F8 | 48 00 00 7C */	b .L_81448374
.L_814482FC:
/* 814482FC | 1C 85 00 6C */	mulli r4, r5, 0x6c
/* 81448300 | 38 A0 00 01 */	li r5, 0x1
/* 81448304 | 7C A5 30 30 */	slw r5, r5, r6
/* 81448308 | 7C 80 22 14 */	add r4, r0, r4
/* 8144830C | 80 84 00 18 */	lwz r4, 0x18(r4)
/* 81448310 | 7C A5 20 38 */	and r5, r5, r4
/* 81448314 | 7C 85 00 D0 */	neg r4, r5
/* 81448318 | 7C 84 2B 78 */	or r4, r4, r5
/* 8144831C | 54 84 0F FE */	srwi r4, r4, 31
/* 81448320 | 48 00 00 80 */	b .L_814483A0
.L_81448324:
/* 81448324 | 1C 85 00 6C */	mulli r4, r5, 0x6c
/* 81448328 | 38 A0 00 01 */	li r5, 0x1
/* 8144832C | 7C A5 30 30 */	slw r5, r5, r6
/* 81448330 | 7C 80 22 14 */	add r4, r0, r4
/* 81448334 | 80 84 00 1C */	lwz r4, 0x1c(r4)
/* 81448338 | 7C A5 20 38 */	and r5, r5, r4
/* 8144833C | 7C 85 00 D0 */	neg r4, r5
/* 81448340 | 7C 84 2B 78 */	or r4, r4, r5
/* 81448344 | 54 84 0F FE */	srwi r4, r4, 31
/* 81448348 | 48 00 00 58 */	b .L_814483A0
.L_8144834C:
/* 8144834C | 1C 85 00 6C */	mulli r4, r5, 0x6c
/* 81448350 | 38 A0 00 01 */	li r5, 0x1
/* 81448354 | 7C A5 30 30 */	slw r5, r5, r6
/* 81448358 | 7C 80 22 14 */	add r4, r0, r4
/* 8144835C | 80 84 00 20 */	lwz r4, 0x20(r4)
/* 81448360 | 7C A5 20 38 */	and r5, r5, r4
/* 81448364 | 7C 85 00 D0 */	neg r4, r5
/* 81448368 | 7C 84 2B 78 */	or r4, r4, r5
/* 8144836C | 54 84 0F FE */	srwi r4, r4, 31
/* 81448370 | 48 00 00 30 */	b .L_814483A0
.L_81448374:
/* 81448374 | 1C 85 00 6C */	mulli r4, r5, 0x6c
/* 81448378 | 38 A0 00 01 */	li r5, 0x1
/* 8144837C | 7C A5 30 30 */	slw r5, r5, r6
/* 81448380 | 7C 80 22 14 */	add r4, r0, r4
/* 81448384 | 80 84 00 24 */	lwz r4, 0x24(r4)
/* 81448388 | 7C A5 20 38 */	and r5, r5, r4
/* 8144838C | 7C 85 00 D0 */	neg r4, r5
/* 81448390 | 7C 84 2B 78 */	or r4, r4, r5
/* 81448394 | 54 84 0F FE */	srwi r4, r4, 31
/* 81448398 | 48 00 00 08 */	b .L_814483A0
.L_8144839C:
/* 8144839C | 38 80 00 00 */	li r4, 0x0
.L_814483A0:
/* 814483A0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814483A4 | 40 82 00 0C */	bne .L_814483B0
/* 814483A8 | 38 60 00 00 */	li r3, 0x0
/* 814483AC | 4E 80 00 20 */	blr
.L_814483B0:
/* 814483B0 | 88 83 00 04 */	lbz r4, 0x4(r3)
/* 814483B4 | 2C 04 00 02 */	cmpwi r4, 0x2
/* 814483B8 | 41 82 00 64 */	beq .L_8144841C
/* 814483BC | 40 80 00 14 */	bge .L_814483D0
/* 814483C0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814483C4 | 41 82 00 18 */	beq .L_814483DC
/* 814483C8 | 40 80 00 34 */	bge .L_814483FC
/* 814483CC | 48 00 00 90 */	b .L_8144845C
.L_814483D0:
/* 814483D0 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 814483D4 | 40 80 00 88 */	bge .L_8144845C
/* 814483D8 | 48 00 00 64 */	b .L_8144843C
.L_814483DC:
/* 814483DC | 88 83 00 06 */	lbz r4, 0x6(r3)
/* 814483E0 | 88 63 00 05 */	lbz r3, 0x5(r3)
/* 814483E4 | 1C 84 00 6C */	mulli r4, r4, 0x6c
/* 814483E8 | 7C 63 07 74 */	extsb r3, r3
/* 814483EC | 7C 00 22 14 */	add r0, r0, r4
/* 814483F0 | 7C 60 1A 14 */	add r3, r0, r3
/* 814483F4 | 88 63 00 4D */	lbz r3, 0x4d(r3)
/* 814483F8 | 4E 80 00 20 */	blr
.L_814483FC:
/* 814483FC | 88 83 00 06 */	lbz r4, 0x6(r3)
/* 81448400 | 88 63 00 05 */	lbz r3, 0x5(r3)
/* 81448404 | 1C 84 00 6C */	mulli r4, r4, 0x6c
/* 81448408 | 7C 63 07 74 */	extsb r3, r3
/* 8144840C | 7C 00 22 14 */	add r0, r0, r4
/* 81448410 | 7C 60 1A 14 */	add r3, r0, r3
/* 81448414 | 88 63 00 4D */	lbz r3, 0x4d(r3)
/* 81448418 | 4E 80 00 20 */	blr
.L_8144841C:
/* 8144841C | 88 83 00 06 */	lbz r4, 0x6(r3)
/* 81448420 | 88 63 00 05 */	lbz r3, 0x5(r3)
/* 81448424 | 1C 84 00 6C */	mulli r4, r4, 0x6c
/* 81448428 | 7C 63 07 74 */	extsb r3, r3
/* 8144842C | 7C 00 22 14 */	add r0, r0, r4
/* 81448430 | 7C 60 1A 14 */	add r3, r0, r3
/* 81448434 | 88 63 00 45 */	lbz r3, 0x45(r3)
/* 81448438 | 4E 80 00 20 */	blr
.L_8144843C:
/* 8144843C | 88 83 00 06 */	lbz r4, 0x6(r3)
/* 81448440 | 88 63 00 05 */	lbz r3, 0x5(r3)
/* 81448444 | 1C 84 00 6C */	mulli r4, r4, 0x6c
/* 81448448 | 7C 63 07 74 */	extsb r3, r3
/* 8144844C | 7C 00 22 14 */	add r0, r0, r4
/* 81448450 | 7C 60 1A 14 */	add r3, r0, r3
/* 81448454 | 88 63 00 4D */	lbz r3, 0x4d(r3)
/* 81448458 | 4E 80 00 20 */	blr
.L_8144845C:
/* 8144845C | 38 60 00 00 */	li r3, 0x0
/* 81448460 | 4E 80 00 20 */	blr
.endfn GetKey__Q49textinput5input10HKBManager6KeySetCFv

# .text:0x11A4 | 0x81448464 | size: 0x134
# textinput::input::HKBManager::KeySet::GetWChar() const
.fn GetWChar__Q49textinput5input10HKBManager6KeySetCFv, global
/* 81448464 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81448468 | 7C 08 02 A6 */	mflr r0
/* 8144846C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81448470 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81448474 | 7C 7F 1B 78 */	mr r31, r3
/* 81448478 | 48 00 01 21 */	bl GetVCode__Q49textinput5input10HKBManager6KeySetCFv
/* 8144847C | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81448480 | 28 00 F1 30 */	cmplwi r0, 0xf130
/* 81448484 | 41 80 00 1C */	blt .L_814484A0
/* 81448488 | 28 00 F1 39 */	cmplwi r0, 0xf139
/* 8144848C | 41 81 00 14 */	bgt .L_814484A0
/* 81448490 | 3C 63 FF FF */	subis r3, r3, 0x1
/* 81448494 | 38 03 0F 00 */	addi r0, r3, 0xf00
/* 81448498 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 8144849C | 48 00 00 58 */	b .L_814484F4
.L_814484A0:
/* 814484A0 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 814484A4 | 28 00 F1 0D */	cmplwi r0, 0xf10d
/* 814484A8 | 40 82 00 10 */	bne .L_814484B8
/* 814484AC | 3C 60 00 01 */	lis r3, 0x1
/* 814484B0 | 38 63 F1 CD */	subi r3, r3, 0xe33
/* 814484B4 | 48 00 00 40 */	b .L_814484F4
.L_814484B8:
/* 814484B8 | 28 00 F1 00 */	cmplwi r0, 0xf100
/* 814484BC | 41 80 00 1C */	blt .L_814484D8
/* 814484C0 | 28 00 F1 3F */	cmplwi r0, 0xf13f
/* 814484C4 | 41 81 00 14 */	bgt .L_814484D8
/* 814484C8 | 3C 63 FF FF */	subis r3, r3, 0x1
/* 814484CC | 38 03 0F 00 */	addi r0, r3, 0xf00
/* 814484D0 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 814484D4 | 48 00 00 20 */	b .L_814484F4
.L_814484D8:
/* 814484D8 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 814484DC | 28 00 F1 40 */	cmplwi r0, 0xf140
/* 814484E0 | 41 80 00 14 */	blt .L_814484F4
/* 814484E4 | 28 00 F1 7F */	cmplwi r0, 0xf17f
/* 814484E8 | 41 81 00 0C */	bgt .L_814484F4
/* 814484EC | 38 03 00 40 */	addi r0, r3, 0x40
/* 814484F0 | 54 03 04 3E */	clrlwi r3, r0, 16
.L_814484F4:
/* 814484F4 | 54 64 04 26 */	rlwinm r4, r3, 0, 16, 19
/* 814484F8 | 3C 04 00 00 */	addis r0, r4, 0x0
/* 814484FC | 28 00 F0 00 */	cmplwi r0, 0xf000
/* 81448500 | 40 82 00 0C */	bne .L_8144850C
/* 81448504 | 38 60 00 00 */	li r3, 0x0
/* 81448508 | 48 00 00 24 */	b .L_8144852C
.L_8144850C:
/* 8144850C | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81448510 | 28 00 EE EE */	cmplwi r0, 0xeeee
/* 81448514 | 40 82 00 0C */	bne .L_81448520
/* 81448518 | 38 60 00 00 */	li r3, 0x0
/* 8144851C | 48 00 00 10 */	b .L_8144852C
.L_81448520:
/* 81448520 | 28 00 00 20 */	cmplwi r0, 0x20
/* 81448524 | 40 80 00 08 */	bge .L_8144852C
/* 81448528 | 38 60 00 00 */	li r3, 0x0
.L_8144852C:
/* 8144852C | 80 DF 00 00 */	lwz r6, 0x0(r31)
/* 81448530 | 80 06 00 0C */	lwz r0, 0xc(r6)
/* 81448534 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81448538 | 40 82 00 08 */	bne .L_81448540
/* 8144853C | 48 00 00 48 */	b .L_81448584
.L_81448540:
/* 81448540 | 80 06 00 10 */	lwz r0, 0x10(r6)
/* 81448544 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81448548 | 40 82 00 08 */	bne .L_81448550
/* 8144854C | 48 00 00 38 */	b .L_81448584
.L_81448550:
/* 81448550 | 54 65 04 3E */	clrlwi r5, r3, 16
/* 81448554 | 38 E0 00 00 */	li r7, 0x0
/* 81448558 | 7C 09 03 A6 */	mtctr r0
/* 8144855C | 28 00 00 00 */	cmplwi r0, 0x0
/* 81448560 | 40 81 00 20 */	ble .L_81448580
.L_81448564:
/* 81448564 | 80 86 00 0C */	lwz r4, 0xc(r6)
/* 81448568 | 7C 04 3A 2E */	lhzx r0, r4, r7
/* 8144856C | 7C 05 00 40 */	cmplw r5, r0
/* 81448570 | 40 82 00 08 */	bne .L_81448578
/* 81448574 | 48 00 00 10 */	b .L_81448584
.L_81448578:
/* 81448578 | 38 E7 00 02 */	addi r7, r7, 0x2
/* 8144857C | 42 00 FF E8 */	bdnz .L_81448564
.L_81448580:
/* 81448580 | 38 60 00 00 */	li r3, 0x0
.L_81448584:
/* 81448584 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81448588 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8144858C | 7C 08 03 A6 */	mtlr r0
/* 81448590 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81448594 | 4E 80 00 20 */	blr
.endfn GetWChar__Q49textinput5input10HKBManager6KeySetCFv

# .text:0x12D8 | 0x81448598 | size: 0x254
# textinput::input::HKBManager::KeySet::GetVCode() const
.fn GetVCode__Q49textinput5input10HKBManager6KeySetCFv, global
/* 81448598 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8144859C | 7C 08 02 A6 */	mflr r0
/* 814485A0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814485A4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814485A8 | 7C 7F 1B 78 */	mr r31, r3
/* 814485AC | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 814485B0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814485B4 | 40 82 00 0C */	bne .L_814485C0
/* 814485B8 | 38 00 00 00 */	li r0, 0x0
/* 814485BC | 48 00 01 04 */	b .L_814486C0
.L_814485C0:
/* 814485C0 | 88 03 00 05 */	lbz r0, 0x5(r3)
/* 814485C4 | 7C 06 07 75 */	extsb. r6, r0
/* 814485C8 | 41 80 00 0C */	blt .L_814485D4
/* 814485CC | 2C 06 00 08 */	cmpwi r6, 0x8
/* 814485D0 | 41 80 00 0C */	blt .L_814485DC
.L_814485D4:
/* 814485D4 | 38 00 00 00 */	li r0, 0x0
/* 814485D8 | 48 00 00 E8 */	b .L_814486C0
.L_814485DC:
/* 814485DC | 88 83 00 06 */	lbz r4, 0x6(r3)
/* 814485E0 | 28 04 00 02 */	cmplwi r4, 0x2
/* 814485E4 | 41 80 00 0C */	blt .L_814485F0
/* 814485E8 | 38 00 00 00 */	li r0, 0x0
/* 814485EC | 48 00 00 D4 */	b .L_814486C0
.L_814485F0:
/* 814485F0 | 88 03 00 04 */	lbz r0, 0x4(r3)
/* 814485F4 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814485F8 | 41 82 00 74 */	beq .L_8144866C
/* 814485FC | 40 80 00 14 */	bge .L_81448610
/* 81448600 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81448604 | 41 82 00 18 */	beq .L_8144861C
/* 81448608 | 40 80 00 3C */	bge .L_81448644
/* 8144860C | 48 00 00 B0 */	b .L_814486BC
.L_81448610:
/* 81448610 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 81448614 | 40 80 00 A8 */	bge .L_814486BC
/* 81448618 | 48 00 00 7C */	b .L_81448694
.L_8144861C:
/* 8144861C | 1C 04 00 6C */	mulli r0, r4, 0x6c
/* 81448620 | 38 80 00 01 */	li r4, 0x1
/* 81448624 | 7C 86 30 30 */	slw r6, r4, r6
/* 81448628 | 7C 85 02 14 */	add r4, r5, r0
/* 8144862C | 80 04 00 18 */	lwz r0, 0x18(r4)
/* 81448630 | 7C C4 00 38 */	and r4, r6, r0
/* 81448634 | 7C 04 00 D0 */	neg r0, r4
/* 81448638 | 7C 00 23 78 */	or r0, r0, r4
/* 8144863C | 54 00 0F FE */	srwi r0, r0, 31
/* 81448640 | 48 00 00 80 */	b .L_814486C0
.L_81448644:
/* 81448644 | 1C 04 00 6C */	mulli r0, r4, 0x6c
/* 81448648 | 38 80 00 01 */	li r4, 0x1
/* 8144864C | 7C 86 30 30 */	slw r6, r4, r6
/* 81448650 | 7C 85 02 14 */	add r4, r5, r0
/* 81448654 | 80 04 00 1C */	lwz r0, 0x1c(r4)
/* 81448658 | 7C C4 00 38 */	and r4, r6, r0
/* 8144865C | 7C 04 00 D0 */	neg r0, r4
/* 81448660 | 7C 00 23 78 */	or r0, r0, r4
/* 81448664 | 54 00 0F FE */	srwi r0, r0, 31
/* 81448668 | 48 00 00 58 */	b .L_814486C0
.L_8144866C:
/* 8144866C | 1C 04 00 6C */	mulli r0, r4, 0x6c
/* 81448670 | 38 80 00 01 */	li r4, 0x1
/* 81448674 | 7C 86 30 30 */	slw r6, r4, r6
/* 81448678 | 7C 85 02 14 */	add r4, r5, r0
/* 8144867C | 80 04 00 20 */	lwz r0, 0x20(r4)
/* 81448680 | 7C C4 00 38 */	and r4, r6, r0
/* 81448684 | 7C 04 00 D0 */	neg r0, r4
/* 81448688 | 7C 00 23 78 */	or r0, r0, r4
/* 8144868C | 54 00 0F FE */	srwi r0, r0, 31
/* 81448690 | 48 00 00 30 */	b .L_814486C0
.L_81448694:
/* 81448694 | 1C 04 00 6C */	mulli r0, r4, 0x6c
/* 81448698 | 38 80 00 01 */	li r4, 0x1
/* 8144869C | 7C 86 30 30 */	slw r6, r4, r6
/* 814486A0 | 7C 85 02 14 */	add r4, r5, r0
/* 814486A4 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 814486A8 | 7C C4 00 38 */	and r4, r6, r0
/* 814486AC | 7C 04 00 D0 */	neg r0, r4
/* 814486B0 | 7C 00 23 78 */	or r0, r0, r4
/* 814486B4 | 54 00 0F FE */	srwi r0, r0, 31
/* 814486B8 | 48 00 00 08 */	b .L_814486C0
.L_814486BC:
/* 814486BC | 38 00 00 00 */	li r0, 0x0
.L_814486C0:
/* 814486C0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814486C4 | 40 82 00 0C */	bne .L_814486D0
/* 814486C8 | 38 60 00 00 */	li r3, 0x0
/* 814486CC | 48 00 01 0C */	b .L_814487D8
.L_814486D0:
/* 814486D0 | A0 03 00 08 */	lhz r0, 0x8(r3)
/* 814486D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814486D8 | 41 82 00 0C */	beq .L_814486E4
/* 814486DC | 7C 03 03 78 */	mr r3, r0
/* 814486E0 | 48 00 00 F8 */	b .L_814487D8
.L_814486E4:
/* 814486E4 | 80 C5 00 34 */	lwz r6, 0x34(r5)
/* 814486E8 | 80 85 00 3C */	lwz r4, 0x3c(r5)
/* 814486EC | 80 05 00 38 */	lwz r0, 0x38(r5)
/* 814486F0 | 7C C6 20 78 */	andc r6, r6, r4
/* 814486F4 | 81 05 00 A0 */	lwz r8, 0xa0(r5)
/* 814486F8 | 7C 04 20 38 */	and r4, r0, r4
/* 814486FC | 80 E5 00 A8 */	lwz r7, 0xa8(r5)
/* 81448700 | 80 05 00 A4 */	lwz r0, 0xa4(r5)
/* 81448704 | 7C C6 23 78 */	or r6, r6, r4
/* 81448708 | 7D 08 38 78 */	andc r8, r8, r7
/* 8144870C | 7C 00 38 38 */	and r0, r0, r7
/* 81448710 | 7D 08 03 78 */	or r8, r8, r0
/* 81448714 | 7C C4 43 78 */	or r4, r6, r8
/* 81448718 | 70 80 00 0D */	andi. r0, r4, 0xd
/* 8144871C | 41 82 00 18 */	beq .L_81448734
/* 81448720 | 70 80 00 05 */	andi. r0, r4, 0x5
/* 81448724 | 28 00 00 05 */	cmplwi r0, 0x5
/* 81448728 | 41 82 00 0C */	beq .L_81448734
/* 8144872C | 38 60 00 00 */	li r3, 0x0
/* 81448730 | 48 00 00 A8 */	b .L_814487D8
.L_81448734:
/* 81448734 | 88 03 00 04 */	lbz r0, 0x4(r3)
/* 81448738 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8144873C | 41 82 00 5C */	beq .L_81448798
/* 81448740 | 40 80 00 10 */	bge .L_81448750
/* 81448744 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81448748 | 40 80 00 10 */	bge .L_81448758
/* 8144874C | 48 00 00 88 */	b .L_814487D4
.L_81448750:
/* 81448750 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 81448754 | 40 80 00 80 */	bge .L_814487D4
.L_81448758:
/* 81448758 | 88 C3 00 06 */	lbz r6, 0x6(r3)
/* 8144875C | 38 00 00 01 */	li r0, 0x1
/* 81448760 | 88 63 00 05 */	lbz r3, 0x5(r3)
/* 81448764 | 1C E6 00 6C */	mulli r7, r6, 0x6c
/* 81448768 | 7C 66 07 74 */	extsb r6, r3
/* 8144876C | 7C A5 3A 14 */	add r5, r5, r7
/* 81448770 | 7C 03 30 30 */	slw r3, r0, r6
/* 81448774 | 80 05 00 2C */	lwz r0, 0x2c(r5)
/* 81448778 | 7C 60 00 39 */	and. r0, r3, r0
/* 8144877C | 41 82 00 58 */	beq .L_814487D4
/* 81448780 | 7C 65 32 14 */	add r3, r5, r6
/* 81448784 | 80 A5 00 40 */	lwz r5, 0x40(r5)
/* 81448788 | 88 63 00 4D */	lbz r3, 0x4d(r3)
/* 8144878C | 48 1A BF 81 */	bl fn_815F470C
/* 81448790 | B0 7F 00 08 */	sth r3, 0x8(r31)
/* 81448794 | 48 00 00 40 */	b .L_814487D4
.L_81448798:
/* 81448798 | 88 C3 00 06 */	lbz r6, 0x6(r3)
/* 8144879C | 38 00 00 01 */	li r0, 0x1
/* 814487A0 | 88 63 00 05 */	lbz r3, 0x5(r3)
/* 814487A4 | 1C E6 00 6C */	mulli r7, r6, 0x6c
/* 814487A8 | 7C 66 07 74 */	extsb r6, r3
/* 814487AC | 7C A5 3A 14 */	add r5, r5, r7
/* 814487B0 | 7C 03 30 30 */	slw r3, r0, r6
/* 814487B4 | 80 05 00 28 */	lwz r0, 0x28(r5)
/* 814487B8 | 7C 60 00 39 */	and. r0, r3, r0
/* 814487BC | 41 82 00 18 */	beq .L_814487D4
/* 814487C0 | 7C 65 32 14 */	add r3, r5, r6
/* 814487C4 | 80 A5 00 40 */	lwz r5, 0x40(r5)
/* 814487C8 | 88 63 00 45 */	lbz r3, 0x45(r3)
/* 814487CC | 48 1A BF 41 */	bl fn_815F470C
/* 814487D0 | B0 7F 00 08 */	sth r3, 0x8(r31)
.L_814487D4:
/* 814487D4 | A0 7F 00 08 */	lhz r3, 0x8(r31)
.L_814487D8:
/* 814487D8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814487DC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814487E0 | 7C 08 03 A6 */	mtlr r0
/* 814487E4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814487E8 | 4E 80 00 20 */	blr
.endfn GetVCode__Q49textinput5input10HKBManager6KeySetCFv

# .text:0x152C | 0x814487EC | size: 0x118
# textinput::input::HKBManager::KeySet::IsValid() const
.fn IsValid__Q49textinput5input10HKBManager6KeySetCFv, global
/* 814487EC | 80 C3 00 00 */	lwz r6, 0x0(r3)
/* 814487F0 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814487F4 | 40 82 00 0C */	bne .L_81448800
/* 814487F8 | 38 60 00 00 */	li r3, 0x0
/* 814487FC | 4E 80 00 20 */	blr
.L_81448800:
/* 81448800 | 88 03 00 05 */	lbz r0, 0x5(r3)
/* 81448804 | 7C 04 07 75 */	extsb. r4, r0
/* 81448808 | 41 80 00 0C */	blt .L_81448814
/* 8144880C | 2C 04 00 08 */	cmpwi r4, 0x8
/* 81448810 | 41 80 00 0C */	blt .L_8144881C
.L_81448814:
/* 81448814 | 38 60 00 00 */	li r3, 0x0
/* 81448818 | 4E 80 00 20 */	blr
.L_8144881C:
/* 8144881C | 88 A3 00 06 */	lbz r5, 0x6(r3)
/* 81448820 | 28 05 00 02 */	cmplwi r5, 0x2
/* 81448824 | 41 80 00 0C */	blt .L_81448830
/* 81448828 | 38 60 00 00 */	li r3, 0x0
/* 8144882C | 4E 80 00 20 */	blr
.L_81448830:
/* 81448830 | 88 03 00 04 */	lbz r0, 0x4(r3)
/* 81448834 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81448838 | 41 82 00 74 */	beq .L_814488AC
/* 8144883C | 40 80 00 14 */	bge .L_81448850
/* 81448840 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81448844 | 41 82 00 18 */	beq .L_8144885C
/* 81448848 | 40 80 00 3C */	bge .L_81448884
/* 8144884C | 48 00 00 B0 */	b .L_814488FC
.L_81448850:
/* 81448850 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 81448854 | 40 80 00 A8 */	bge .L_814488FC
/* 81448858 | 48 00 00 7C */	b .L_814488D4
.L_8144885C:
/* 8144885C | 1C 05 00 6C */	mulli r0, r5, 0x6c
/* 81448860 | 38 60 00 01 */	li r3, 0x1
/* 81448864 | 7C 64 20 30 */	slw r4, r3, r4
/* 81448868 | 7C 66 02 14 */	add r3, r6, r0
/* 8144886C | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 81448870 | 7C 83 00 38 */	and r3, r4, r0
/* 81448874 | 7C 03 00 D0 */	neg r0, r3
/* 81448878 | 7C 00 1B 78 */	or r0, r0, r3
/* 8144887C | 54 03 0F FE */	srwi r3, r0, 31
/* 81448880 | 4E 80 00 20 */	blr
.L_81448884:
/* 81448884 | 1C 05 00 6C */	mulli r0, r5, 0x6c
/* 81448888 | 38 60 00 01 */	li r3, 0x1
/* 8144888C | 7C 64 20 30 */	slw r4, r3, r4
/* 81448890 | 7C 66 02 14 */	add r3, r6, r0
/* 81448894 | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 81448898 | 7C 83 00 38 */	and r3, r4, r0
/* 8144889C | 7C 03 00 D0 */	neg r0, r3
/* 814488A0 | 7C 00 1B 78 */	or r0, r0, r3
/* 814488A4 | 54 03 0F FE */	srwi r3, r0, 31
/* 814488A8 | 4E 80 00 20 */	blr
.L_814488AC:
/* 814488AC | 1C 05 00 6C */	mulli r0, r5, 0x6c
/* 814488B0 | 38 60 00 01 */	li r3, 0x1
/* 814488B4 | 7C 64 20 30 */	slw r4, r3, r4
/* 814488B8 | 7C 66 02 14 */	add r3, r6, r0
/* 814488BC | 80 03 00 20 */	lwz r0, 0x20(r3)
/* 814488C0 | 7C 83 00 38 */	and r3, r4, r0
/* 814488C4 | 7C 03 00 D0 */	neg r0, r3
/* 814488C8 | 7C 00 1B 78 */	or r0, r0, r3
/* 814488CC | 54 03 0F FE */	srwi r3, r0, 31
/* 814488D0 | 4E 80 00 20 */	blr
.L_814488D4:
/* 814488D4 | 1C 05 00 6C */	mulli r0, r5, 0x6c
/* 814488D8 | 38 60 00 01 */	li r3, 0x1
/* 814488DC | 7C 64 20 30 */	slw r4, r3, r4
/* 814488E0 | 7C 66 02 14 */	add r3, r6, r0
/* 814488E4 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 814488E8 | 7C 83 00 38 */	and r3, r4, r0
/* 814488EC | 7C 03 00 D0 */	neg r0, r3
/* 814488F0 | 7C 00 1B 78 */	or r0, r0, r3
/* 814488F4 | 54 03 0F FE */	srwi r3, r0, 31
/* 814488F8 | 4E 80 00 20 */	blr
.L_814488FC:
/* 814488FC | 38 60 00 00 */	li r3, 0x0
/* 81448900 | 4E 80 00 20 */	blr
.endfn IsValid__Q49textinput5input10HKBManager6KeySetCFv

# .text:0x1644 | 0x81448904 | size: 0x118
# textinput::input::HKBManager::KeySet::GetNext() const
.fn GetNext__Q49textinput5input10HKBManager6KeySetCFv, global
/* 81448904 | 88 E4 00 04 */	lbz r7, 0x4(r4)
/* 81448908 | 38 00 FF FF */	li r0, -0x1
/* 8144890C | 80 C4 00 00 */	lwz r6, 0x0(r4)
/* 81448910 | 38 A0 00 00 */	li r5, 0x0
/* 81448914 | 90 C3 00 00 */	stw r6, 0x0(r3)
/* 81448918 | 98 E3 00 04 */	stb r7, 0x4(r3)
/* 8144891C | 98 03 00 05 */	stb r0, 0x5(r3)
/* 81448920 | 98 A3 00 06 */	stb r5, 0x6(r3)
/* 81448924 | B0 A3 00 08 */	sth r5, 0x8(r3)
/* 81448928 | 80 A4 00 00 */	lwz r5, 0x0(r4)
/* 8144892C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81448930 | 4D 82 00 20 */	beqlr
/* 81448934 | 88 A4 00 06 */	lbz r5, 0x6(r4)
/* 81448938 | 38 C0 00 01 */	li r6, 0x1
/* 8144893C | 98 A3 00 06 */	stb r5, 0x6(r3)
/* 81448940 | 48 00 00 CC */	b .L_81448A0C
.L_81448944:
/* 81448944 | 88 A4 00 04 */	lbz r5, 0x4(r4)
/* 81448948 | 39 00 00 00 */	li r8, 0x0
/* 8144894C | 2C 05 00 02 */	cmpwi r5, 0x2
/* 81448950 | 41 82 00 4C */	beq .L_8144899C
/* 81448954 | 40 80 00 14 */	bge .L_81448968
/* 81448958 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8144895C | 41 82 00 18 */	beq .L_81448974
/* 81448960 | 40 80 00 28 */	bge .L_81448988
/* 81448964 | 48 00 00 5C */	b .L_814489C0
.L_81448968:
/* 81448968 | 2C 05 00 04 */	cmpwi r5, 0x4
/* 8144896C | 40 80 00 54 */	bge .L_814489C0
/* 81448970 | 48 00 00 40 */	b .L_814489B0
.L_81448974:
/* 81448974 | 1C A7 00 6C */	mulli r5, r7, 0x6c
/* 81448978 | 80 E4 00 00 */	lwz r7, 0x0(r4)
/* 8144897C | 7C A7 2A 14 */	add r5, r7, r5
/* 81448980 | 81 05 00 18 */	lwz r8, 0x18(r5)
/* 81448984 | 48 00 00 3C */	b .L_814489C0
.L_81448988:
/* 81448988 | 1C A7 00 6C */	mulli r5, r7, 0x6c
/* 8144898C | 80 E4 00 00 */	lwz r7, 0x0(r4)
/* 81448990 | 7C A7 2A 14 */	add r5, r7, r5
/* 81448994 | 81 05 00 1C */	lwz r8, 0x1c(r5)
/* 81448998 | 48 00 00 28 */	b .L_814489C0
.L_8144899C:
/* 8144899C | 1C A7 00 6C */	mulli r5, r7, 0x6c
/* 814489A0 | 80 E4 00 00 */	lwz r7, 0x0(r4)
/* 814489A4 | 7C A7 2A 14 */	add r5, r7, r5
/* 814489A8 | 81 05 00 20 */	lwz r8, 0x20(r5)
/* 814489AC | 48 00 00 14 */	b .L_814489C0
.L_814489B0:
/* 814489B0 | 1C A7 00 6C */	mulli r5, r7, 0x6c
/* 814489B4 | 80 E4 00 00 */	lwz r7, 0x0(r4)
/* 814489B8 | 7C A7 2A 14 */	add r5, r7, r5
/* 814489BC | 81 05 00 24 */	lwz r8, 0x24(r5)
.L_814489C0:
/* 814489C0 | 88 A4 00 05 */	lbz r5, 0x5(r4)
/* 814489C4 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814489C8 | 98 A3 00 05 */	stb r5, 0x5(r3)
/* 814489CC | 48 00 00 20 */	b .L_814489EC
.L_814489D0:
/* 814489D0 | 7C E5 07 74 */	extsb r5, r7
/* 814489D4 | 7C C5 28 30 */	slw r5, r6, r5
/* 814489D8 | 7D 05 28 39 */	and. r5, r8, r5
/* 814489DC | 4C 82 00 20 */	bnelr
/* 814489E0 | 88 A3 00 05 */	lbz r5, 0x5(r3)
/* 814489E4 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814489E8 | 98 A3 00 05 */	stb r5, 0x5(r3)
.L_814489EC:
/* 814489EC | 88 E3 00 05 */	lbz r7, 0x5(r3)
/* 814489F0 | 7C E5 07 74 */	extsb r5, r7
/* 814489F4 | 2C 05 00 08 */	cmpwi r5, 0x8
/* 814489F8 | 41 80 FF D8 */	blt .L_814489D0
/* 814489FC | 88 A3 00 06 */	lbz r5, 0x6(r3)
/* 81448A00 | 98 03 00 05 */	stb r0, 0x5(r3)
/* 81448A04 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81448A08 | 98 A3 00 06 */	stb r5, 0x6(r3)
.L_81448A0C:
/* 81448A0C | 88 E3 00 06 */	lbz r7, 0x6(r3)
/* 81448A10 | 28 07 00 02 */	cmplwi r7, 0x2
/* 81448A14 | 41 80 FF 30 */	blt .L_81448944
/* 81448A18 | 4E 80 00 20 */	blr
.endfn GetNext__Q49textinput5input10HKBManager6KeySetCFv

# .text:0x175C | 0x81448A1C | size: 0x48
.fn "__sinit_\\HKBManager_cpp", weak
/* 81448A1C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81448A20 | 7C 08 02 A6 */	mflr r0
/* 81448A24 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81448A28 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81448A2C | 3F E0 81 0D */	lis r31, sInstance__Q39textinput5input10HKBManager@ha
/* 81448A30 | 38 7F 88 44 */	addi r3, r31, sInstance__Q39textinput5input10HKBManager@l
/* 81448A34 | 4B FF EC 1D */	bl __ct__Q39textinput5input10HKBManagerFv
/* 81448A38 | 3C 80 81 45 */	lis r4, __dt__Q39textinput5input10HKBManagerFv@ha
/* 81448A3C | 3C A0 81 0D */	lis r5, lbl_810C8838@ha
/* 81448A40 | 38 7F 88 44 */	addi r3, r31, sInstance__Q39textinput5input10HKBManager@l
/* 81448A44 | 38 84 8A 64 */	addi r4, r4, __dt__Q39textinput5input10HKBManagerFv@l
/* 81448A48 | 38 A5 88 38 */	addi r5, r5, lbl_810C8838@l
/* 81448A4C | 48 1B 05 95 */	bl __register_global_object
/* 81448A50 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81448A54 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81448A58 | 7C 08 03 A6 */	mtlr r0
/* 81448A5C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81448A60 | 4E 80 00 20 */	blr
.endfn "__sinit_\\HKBManager_cpp"

# .text:0x17A4 | 0x81448A64 | size: 0x40
# textinput::input::HKBManager::~HKBManager()
.fn __dt__Q39textinput5input10HKBManagerFv, global
/* 81448A64 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81448A68 | 7C 08 02 A6 */	mflr r0
/* 81448A6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81448A70 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81448A74 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81448A78 | 7C 7F 1B 78 */	mr r31, r3
/* 81448A7C | 41 82 00 10 */	beq .L_81448A8C
/* 81448A80 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81448A84 | 40 81 00 08 */	ble .L_81448A8C
/* 81448A88 | 48 1A F6 5D */	bl __dl__FPv
.L_81448A8C:
/* 81448A8C | 7F E3 FB 78 */	mr r3, r31
/* 81448A90 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81448A94 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81448A98 | 7C 08 03 A6 */	mtlr r0
/* 81448A9C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81448AA0 | 4E 80 00 20 */	blr
.endfn __dt__Q39textinput5input10HKBManagerFv

# 0x8160D220..0x8160D224 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte "__sinit_\\HKBManager_cpp"

# 0x81668EE0..0x81668EF8 | size: 0x18
.data
.balign 8

# .data:0x0 | 0x81668EE0 | size: 0x18
# textinput::input::HKBManager::KBDListenerOwn::__vtable
.obj __vt__Q49textinput5input10HKBManager14KBDListenerOwn, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q49textinput5input10HKBManager14KBDListenerOwnFv
	.4byte OnAttach__Q49textinput5input10HKBManager14KBDListenerOwnFP12_KBDDevEvent
	.4byte OnDetach__Q49textinput5input10HKBManager14KBDListenerOwnFP12_KBDDevEvent
	.4byte OnKeyEvent__Q49textinput5input10HKBManager14KBDListenerOwnFP12_KBDKeyEvent
.endobj __vt__Q49textinput5input10HKBManager14KBDListenerOwn
