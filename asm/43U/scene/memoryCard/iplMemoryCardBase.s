.include "macros.inc"
.file "iplMemoryCardBase.cpp"

# 0x813CC1FC..0x813CD034 | size: 0xE38
.text
.balign 4

# .text:0x0 | 0x813CC1FC | size: 0x11C
# ipl::scene::MemoryBaseEvent::onEvent(unsigned long, unsigned long, void*)
.fn onEvent__Q33ipl5scene15MemoryBaseEventFUlUlPv, global
/* 813CC1FC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813CC200 | 7C 08 02 A6 */	mflr r0
/* 813CC204 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813CC208 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CC20C | 48 22 D2 B9 */	bl _savegpr_28
/* 813CC210 | 7C 7C 1B 78 */	mr r28, r3
/* 813CC214 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813CC218 | 7C BD 2B 78 */	mr r29, r5
/* 813CC21C | 7C DE 33 78 */	mr r30, r6
/* 813CC220 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CC224 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813CC228 | 7D 89 03 A6 */	mtctr r12
/* 813CC22C | 4E 80 04 21 */	bctrl
/* 813CC230 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CC234 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 813CC238 | 7D 89 03 A6 */	mtctr r12
/* 813CC23C | 4E 80 04 21 */	bctrl
/* 813CC240 | 2C 1D 00 02 */	cmpwi r29, 0x2
/* 813CC244 | 3B E3 00 B4 */	addi r31, r3, 0xb4
/* 813CC248 | 41 82 00 44 */	beq .L_813CC28C
/* 813CC24C | 40 80 00 14 */	bge .L_813CC260
/* 813CC250 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813CC254 | 41 82 00 70 */	beq .L_813CC2C4
/* 813CC258 | 40 80 00 14 */	bge .L_813CC26C
/* 813CC25C | 48 00 00 A4 */	b .L_813CC300
.L_813CC260:
/* 813CC260 | 2C 1D 00 04 */	cmpwi r29, 0x4
/* 813CC264 | 40 80 00 9C */	bge .L_813CC300
/* 813CC268 | 48 00 00 40 */	b .L_813CC2A8
.L_813CC26C:
/* 813CC26C | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813CC270 | 7F E4 FB 78 */	mr r4, r31
/* 813CC274 | 7F C5 F3 78 */	mr r5, r30
/* 813CC278 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CC27C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813CC280 | 7D 89 03 A6 */	mtctr r12
/* 813CC284 | 4E 80 04 21 */	bctrl
/* 813CC288 | 48 00 00 78 */	b .L_813CC300
.L_813CC28C:
/* 813CC28C | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813CC290 | 7F E4 FB 78 */	mr r4, r31
/* 813CC294 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CC298 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813CC29C | 7D 89 03 A6 */	mtctr r12
/* 813CC2A0 | 4E 80 04 21 */	bctrl
/* 813CC2A4 | 48 00 00 5C */	b .L_813CC300
.L_813CC2A8:
/* 813CC2A8 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813CC2AC | 7F E4 FB 78 */	mr r4, r31
/* 813CC2B0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CC2B4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813CC2B8 | 7D 89 03 A6 */	mtctr r12
/* 813CC2BC | 4E 80 04 21 */	bctrl
/* 813CC2C0 | 48 00 00 40 */	b .L_813CC300
.L_813CC2C4:
/* 813CC2C4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813CC2C8 | 3C 80 00 10 */	lis r4, 0x10
/* 813CC2CC | 7F C3 F3 78 */	mr r3, r30
/* 813CC2D0 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813CC2D4 | 38 84 08 00 */	addi r4, r4, 0x800
/* 813CC2D8 | 7D 89 03 A6 */	mtctr r12
/* 813CC2DC | 4E 80 04 21 */	bctrl
/* 813CC2E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CC2E4 | 41 82 00 1C */	beq .L_813CC300
/* 813CC2E8 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813CC2EC | 7F E4 FB 78 */	mr r4, r31
/* 813CC2F0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CC2F4 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813CC2F8 | 7D 89 03 A6 */	mtctr r12
/* 813CC2FC | 4E 80 04 21 */	bctrl
.L_813CC300:
/* 813CC300 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CC304 | 48 22 D2 0D */	bl _restgpr_28
/* 813CC308 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813CC30C | 7C 08 03 A6 */	mtlr r0
/* 813CC310 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813CC314 | 4E 80 00 20 */	blr
.endfn onEvent__Q33ipl5scene15MemoryBaseEventFUlUlPv

# .text:0x11C | 0x813CC318 | size: 0x4
# ipl::scene::MemoryBase::onPoint(const char*, ipl::controller::Interface*)
.fn onPoint__Q33ipl5scene10MemoryBaseFPCcPQ33ipl10controller9Interface, global
/* 813CC318 | 4E 80 00 20 */	blr
.endfn onPoint__Q33ipl5scene10MemoryBaseFPCcPQ33ipl10controller9Interface

# .text:0x120 | 0x813CC31C | size: 0x4
# ipl::scene::MemoryBase::onLeft(const char*)
.fn onLeft__Q33ipl5scene10MemoryBaseFPCc, global
/* 813CC31C | 4E 80 00 20 */	blr
.endfn onLeft__Q33ipl5scene10MemoryBaseFPCc

# .text:0x124 | 0x813CC320 | size: 0x4
# ipl::scene::MemoryBase::onTrig(const char*)
.fn onTrig__Q33ipl5scene10MemoryBaseFPCc, global
/* 813CC320 | 4E 80 00 20 */	blr
.endfn onTrig__Q33ipl5scene10MemoryBaseFPCc

# .text:0x128 | 0x813CC324 | size: 0xAC
# ipl::scene::MemoryBase::add_button(const char**, int)
.fn add_button__Q33ipl5scene10MemoryBaseFPPCci, global
/* 813CC324 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813CC328 | 7C 08 02 A6 */	mflr r0
/* 813CC32C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813CC330 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813CC334 | 48 22 D1 81 */	bl _savegpr_24
/* 813CC338 | 3B 60 00 00 */	li r27, 0x0
/* 813CC33C | 3F A0 81 65 */	lis r29, __vt__Q43ipl5scene10MemoryBase6Button@ha
/* 813CC340 | 7C 78 1B 78 */	mr r24, r3
/* 813CC344 | 7C 99 23 78 */	mr r25, r4
/* 813CC348 | 7C BA 2B 78 */	mr r26, r5
/* 813CC34C | 7F 7E DB 78 */	mr r30, r27
/* 813CC350 | 3B BD 26 9C */	addi r29, r29, __vt__Q43ipl5scene10MemoryBase6Button@l
/* 813CC354 | 3B E0 00 00 */	li r31, 0x0
/* 813CC358 | 48 00 00 58 */	b .L_813CC3B0
.L_813CC35C:
/* 813CC35C | 80 78 00 04 */	lwz r3, 0x4(r24)
/* 813CC360 | 38 A0 00 01 */	li r5, 0x1
/* 813CC364 | 7C 99 F8 2E */	lwzx r4, r25, r31
/* 813CC368 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813CC36C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CC370 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813CC374 | 7D 89 03 A6 */	mtctr r12
/* 813CC378 | 4E 80 04 21 */	bctrl
/* 813CC37C | 7C 7C 1B 78 */	mr r28, r3
/* 813CC380 | 38 60 00 14 */	li r3, 0x14
/* 813CC384 | 48 22 BD 19 */	bl __nw__FUl
/* 813CC388 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CC38C | 41 82 00 10 */	beq .L_813CC39C
/* 813CC390 | 93 A3 00 00 */	stw r29, 0x0(r3)
/* 813CC394 | 93 C3 00 04 */	stw r30, 0x4(r3)
/* 813CC398 | 93 83 00 08 */	stw r28, 0x8(r3)
.L_813CC39C:
/* 813CC39C | 7C 64 1B 78 */	mr r4, r3
/* 813CC3A0 | 38 78 00 1C */	addi r3, r24, 0x1c
/* 813CC3A4 | 48 14 5C D1 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813CC3A8 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 813CC3AC | 3B FF 00 04 */	addi r31, r31, 0x4
.L_813CC3B0:
/* 813CC3B0 | 7C 1B D0 00 */	cmpw r27, r26
/* 813CC3B4 | 41 80 FF A8 */	blt .L_813CC35C
/* 813CC3B8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813CC3BC | 48 22 D1 45 */	bl _restgpr_24
/* 813CC3C0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813CC3C4 | 7C 08 03 A6 */	mtlr r0
/* 813CC3C8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813CC3CC | 4E 80 00 20 */	blr
.endfn add_button__Q33ipl5scene10MemoryBaseFPPCci

# .text:0x1D4 | 0x813CC3D0 | size: 0x90
# ipl::scene::MemoryBase::add_anmbutton(const char*, ipl::scene::MemoryBase::Anm*, ipl::scene::MemoryBase::Anm*, ipl::scene::MemoryBase::Anm*)
.fn add_anmbutton__Q33ipl5scene10MemoryBaseFPCcPQ43ipl5scene10MemoryBase3AnmPQ43ipl5scene10MemoryBase3AnmPQ43ipl5scene10MemoryBase3Anm, global
/* 813CC3D0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813CC3D4 | 7C 08 02 A6 */	mflr r0
/* 813CC3D8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813CC3DC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CC3E0 | 48 22 D0 E1 */	bl _savegpr_27
/* 813CC3E4 | 7C 7B 1B 78 */	mr r27, r3
/* 813CC3E8 | 7C 9C 23 78 */	mr r28, r4
/* 813CC3EC | 7C BD 2B 78 */	mr r29, r5
/* 813CC3F0 | 7C DE 33 78 */	mr r30, r6
/* 813CC3F4 | 7C FF 3B 78 */	mr r31, r7
/* 813CC3F8 | 38 60 00 30 */	li r3, 0x30
/* 813CC3FC | 48 22 BC A1 */	bl __nw__FUl
/* 813CC400 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CC404 | 41 82 00 38 */	beq .L_813CC43C
/* 813CC408 | 3C 80 81 65 */	lis r4, __vt__Q43ipl5scene10MemoryBase9AnmButton@ha
/* 813CC40C | 38 00 00 00 */	li r0, 0x0
/* 813CC410 | 38 84 26 90 */	addi r4, r4, __vt__Q43ipl5scene10MemoryBase9AnmButton@l
/* 813CC414 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813CC418 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 813CC41C | 93 83 00 08 */	stw r28, 0x8(r3)
/* 813CC420 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 813CC424 | 93 A3 00 10 */	stw r29, 0x10(r3)
/* 813CC428 | 93 C3 00 14 */	stw r30, 0x14(r3)
/* 813CC42C | 93 E3 00 18 */	stw r31, 0x18(r3)
/* 813CC430 | 90 03 00 24 */	stw r0, 0x24(r3)
/* 813CC434 | 90 03 00 28 */	stw r0, 0x28(r3)
/* 813CC438 | 90 03 00 2C */	stw r0, 0x2c(r3)
.L_813CC43C:
/* 813CC43C | 7C 64 1B 78 */	mr r4, r3
/* 813CC440 | 38 7B 00 28 */	addi r3, r27, 0x28
/* 813CC444 | 48 14 5C 31 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813CC448 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CC44C | 48 22 D0 C1 */	bl _restgpr_27
/* 813CC450 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813CC454 | 7C 08 03 A6 */	mtlr r0
/* 813CC458 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813CC45C | 4E 80 00 20 */	blr
.endfn add_anmbutton__Q33ipl5scene10MemoryBaseFPCcPQ43ipl5scene10MemoryBase3AnmPQ43ipl5scene10MemoryBase3AnmPQ43ipl5scene10MemoryBase3Anm

# .text:0x264 | 0x813CC460 | size: 0x94
# ipl::scene::MemoryBase::clear_button(const char*)
.fn clear_button__Q33ipl5scene10MemoryBaseFPCc, global
/* 813CC460 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813CC464 | 7C 08 02 A6 */	mflr r0
/* 813CC468 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813CC46C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CC470 | 48 22 D0 59 */	bl _savegpr_29
/* 813CC474 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CC478 | 7C 7D 1B 78 */	mr r29, r3
/* 813CC47C | 7C 9E 23 78 */	mr r30, r4
/* 813CC480 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 813CC484 | 7D 89 03 A6 */	mtctr r12
/* 813CC488 | 4E 80 04 21 */	bctrl
/* 813CC48C | 80 DD 00 04 */	lwz r6, 0x4(r29)
/* 813CC490 | 7C 7F 1B 78 */	mr r31, r3
/* 813CC494 | 7F C4 F3 78 */	mr r4, r30
/* 813CC498 | 38 A0 00 01 */	li r5, 0x1
/* 813CC49C | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 813CC4A0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CC4A4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813CC4A8 | 7D 89 03 A6 */	mtctr r12
/* 813CC4AC | 4E 80 04 21 */	bctrl
/* 813CC4B0 | 7C 64 1B 78 */	mr r4, r3
/* 813CC4B4 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 813CC4B8 | 4B F9 ED 61 */	bl initPane__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Pane
/* 813CC4BC | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 813CC4C0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813CC4C4 | 41 80 00 10 */	blt .L_813CC4D4
/* 813CC4C8 | 7F E3 FB 78 */	mr r3, r31
/* 813CC4CC | 38 80 00 02 */	li r4, 0x2
/* 813CC4D0 | 48 00 08 CD */	bl onCmdRecv__Q43ipl5scene10MemoryBase9AnmButtonFi
.L_813CC4D4:
/* 813CC4D4 | 38 00 00 00 */	li r0, 0x0
/* 813CC4D8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CC4DC | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 813CC4E0 | 48 22 D0 35 */	bl _restgpr_29
/* 813CC4E4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813CC4E8 | 7C 08 03 A6 */	mtlr r0
/* 813CC4EC | 38 21 00 20 */	addi r1, r1, 0x20
/* 813CC4F0 | 4E 80 00 20 */	blr
.endfn clear_button__Q33ipl5scene10MemoryBaseFPCc

# .text:0x2F8 | 0x813CC4F4 | size: 0x84
# ipl::scene::MemoryBase::get_button(const char*)
.fn get_button__Q33ipl5scene10MemoryBaseFPCc, global
/* 813CC4F4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813CC4F8 | 7C 08 02 A6 */	mflr r0
/* 813CC4FC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813CC500 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CC504 | 48 22 CF C5 */	bl _savegpr_29
/* 813CC508 | 7C 7D 1B 78 */	mr r29, r3
/* 813CC50C | 7C 9E 23 78 */	mr r30, r4
/* 813CC510 | 38 80 00 00 */	li r4, 0x0
/* 813CC514 | 38 63 00 1C */	addi r3, r3, 0x1c
/* 813CC518 | 48 14 5D C5 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813CC51C | 7C 7F 1B 78 */	mr r31, r3
/* 813CC520 | 48 00 00 34 */	b .L_813CC554
.L_813CC524:
/* 813CC524 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813CC528 | 7F C4 F3 78 */	mr r4, r30
/* 813CC52C | 38 63 00 B4 */	addi r3, r3, 0xb4
/* 813CC530 | 48 23 5F 51 */	bl strcmp
/* 813CC534 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CC538 | 40 82 00 0C */	bne .L_813CC544
/* 813CC53C | 7F E3 FB 78 */	mr r3, r31
/* 813CC540 | 48 00 00 20 */	b .L_813CC560
.L_813CC544:
/* 813CC544 | 7F E4 FB 78 */	mr r4, r31
/* 813CC548 | 38 7D 00 1C */	addi r3, r29, 0x1c
/* 813CC54C | 48 14 5D 91 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813CC550 | 7C 7F 1B 78 */	mr r31, r3
.L_813CC554:
/* 813CC554 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813CC558 | 40 82 FF CC */	bne .L_813CC524
/* 813CC55C | 7F E3 FB 78 */	mr r3, r31
.L_813CC560:
/* 813CC560 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CC564 | 48 22 CF B1 */	bl _restgpr_29
/* 813CC568 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813CC56C | 7C 08 03 A6 */	mtlr r0
/* 813CC570 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813CC574 | 4E 80 00 20 */	blr
.endfn get_button__Q33ipl5scene10MemoryBaseFPCc

# .text:0x37C | 0x813CC578 | size: 0x80
# ipl::scene::MemoryBase::get_anmbutton(const char*)
.fn get_anmbutton__Q33ipl5scene10MemoryBaseFPCc, global
/* 813CC578 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813CC57C | 7C 08 02 A6 */	mflr r0
/* 813CC580 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813CC584 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CC588 | 48 22 CF 41 */	bl _savegpr_29
/* 813CC58C | 7C 7D 1B 78 */	mr r29, r3
/* 813CC590 | 7C 9E 23 78 */	mr r30, r4
/* 813CC594 | 38 80 00 00 */	li r4, 0x0
/* 813CC598 | 38 63 00 28 */	addi r3, r3, 0x28
/* 813CC59C | 48 14 5D 41 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813CC5A0 | 7C 7F 1B 78 */	mr r31, r3
/* 813CC5A4 | 48 00 00 30 */	b .L_813CC5D4
.L_813CC5A8:
/* 813CC5A8 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813CC5AC | 7F C4 F3 78 */	mr r4, r30
/* 813CC5B0 | 48 23 5E D1 */	bl strcmp
/* 813CC5B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CC5B8 | 40 82 00 0C */	bne .L_813CC5C4
/* 813CC5BC | 7F E3 FB 78 */	mr r3, r31
/* 813CC5C0 | 48 00 00 20 */	b .L_813CC5E0
.L_813CC5C4:
/* 813CC5C4 | 7F E4 FB 78 */	mr r4, r31
/* 813CC5C8 | 38 7D 00 28 */	addi r3, r29, 0x28
/* 813CC5CC | 48 14 5D 11 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813CC5D0 | 7C 7F 1B 78 */	mr r31, r3
.L_813CC5D4:
/* 813CC5D4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813CC5D8 | 40 82 FF D0 */	bne .L_813CC5A8
/* 813CC5DC | 7F E3 FB 78 */	mr r3, r31
.L_813CC5E0:
/* 813CC5E0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CC5E4 | 48 22 CF 31 */	bl _restgpr_29
/* 813CC5E8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813CC5EC | 7C 08 03 A6 */	mtlr r0
/* 813CC5F0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813CC5F4 | 4E 80 00 20 */	blr
.endfn get_anmbutton__Q33ipl5scene10MemoryBaseFPCc

# .text:0x3FC | 0x813CC5F8 | size: 0xA0
# ipl::scene::MemoryBase::add_animation(const ipl::scene::MemoryBase::AnmName*, int)
.fn add_animation__Q33ipl5scene10MemoryBaseFPCQ43ipl5scene10MemoryBase7AnmNamei, global
/* 813CC5F8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813CC5FC | 7C 08 02 A6 */	mflr r0
/* 813CC600 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813CC604 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813CC608 | 48 22 CE B1 */	bl _savegpr_25
/* 813CC60C | 3F C0 81 65 */	lis r30, __vt__Q43ipl5scene10MemoryBase3Anm@ha
/* 813CC610 | 7C 79 1B 78 */	mr r25, r3
/* 813CC614 | 7C 9A 23 78 */	mr r26, r4
/* 813CC618 | 7C BB 2B 78 */	mr r27, r5
/* 813CC61C | 3B DE 26 A8 */	addi r30, r30, __vt__Q43ipl5scene10MemoryBase3Anm@l
/* 813CC620 | 3B 80 00 00 */	li r28, 0x0
/* 813CC624 | 3B E0 00 00 */	li r31, 0x0
/* 813CC628 | 48 00 00 50 */	b .L_813CC678
.L_813CC62C:
/* 813CC62C | 7C BA FA 14 */	add r5, r26, r31
/* 813CC630 | 80 79 00 04 */	lwz r3, 0x4(r25)
/* 813CC634 | 7C 9A F8 2E */	lwzx r4, r26, r31
/* 813CC638 | 38 C0 00 00 */	li r6, 0x0
/* 813CC63C | 80 A5 00 04 */	lwz r5, 0x4(r5)
/* 813CC640 | 38 E0 00 01 */	li r7, 0x1
/* 813CC644 | 4B F9 DE 9D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813CC648 | 7C 7D 1B 78 */	mr r29, r3
/* 813CC64C | 38 60 00 10 */	li r3, 0x10
/* 813CC650 | 48 22 BA 4D */	bl __nw__FUl
/* 813CC654 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CC658 | 41 82 00 0C */	beq .L_813CC664
/* 813CC65C | 93 C3 00 00 */	stw r30, 0x0(r3)
/* 813CC660 | 93 A3 00 04 */	stw r29, 0x4(r3)
.L_813CC664:
/* 813CC664 | 7C 64 1B 78 */	mr r4, r3
/* 813CC668 | 38 79 00 10 */	addi r3, r25, 0x10
/* 813CC66C | 48 14 5A 09 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813CC670 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813CC674 | 3B FF 00 08 */	addi r31, r31, 0x8
.L_813CC678:
/* 813CC678 | 7C 1C D8 00 */	cmpw r28, r27
/* 813CC67C | 41 80 FF B0 */	blt .L_813CC62C
/* 813CC680 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813CC684 | 48 22 CE 81 */	bl _restgpr_25
/* 813CC688 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813CC68C | 7C 08 03 A6 */	mtlr r0
/* 813CC690 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813CC694 | 4E 80 00 20 */	blr
.endfn add_animation__Q33ipl5scene10MemoryBaseFPCQ43ipl5scene10MemoryBase7AnmNamei

# .text:0x49C | 0x813CC698 | size: 0xC
# ipl::scene::MemoryBase::get_animation(int)
.fn get_animation__Q33ipl5scene10MemoryBaseFi, global
/* 813CC698 | 54 84 04 3E */	clrlwi r4, r4, 16
/* 813CC69C | 38 63 00 10 */	addi r3, r3, 0x10
/* 813CC6A0 | 48 14 5C 78 */	b List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
.endfn get_animation__Q33ipl5scene10MemoryBaseFi

# .text:0x4A8 | 0x813CC6A4 | size: 0x58
# ipl::scene::MemoryBase::do_animation(int)
.fn do_animation__Q33ipl5scene10MemoryBaseFi, global
/* 813CC6A4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CC6A8 | 7C 08 02 A6 */	mflr r0
/* 813CC6AC | 54 84 04 3E */	clrlwi r4, r4, 16
/* 813CC6B0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CC6B4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CC6B8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813CC6BC | 7C 7E 1B 78 */	mr r30, r3
/* 813CC6C0 | 38 63 00 10 */	addi r3, r3, 0x10
/* 813CC6C4 | 48 14 5C 55 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813CC6C8 | 83 E3 00 04 */	lwz r31, 0x4(r3)
/* 813CC6CC | 7F E3 FB 78 */	mr r3, r31
/* 813CC6D0 | 4B F9 61 A1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813CC6D4 | 38 00 00 01 */	li r0, 0x1
/* 813CC6D8 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 813CC6DC | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813CC6E0 | 4B F9 E0 25 */	bl calc__Q33ipl6layout6ObjectFv
/* 813CC6E4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CC6E8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CC6EC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813CC6F0 | 7C 08 03 A6 */	mtlr r0
/* 813CC6F4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CC6F8 | 4E 80 00 20 */	blr
.endfn do_animation__Q33ipl5scene10MemoryBaseFi

# .text:0x500 | 0x813CC6FC | size: 0x80
# ipl::scene::MemoryBase::do_animation(int, bool)
.fn do_animation__Q33ipl5scene10MemoryBaseFib, global
/* 813CC6FC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CC700 | 7C 08 02 A6 */	mflr r0
/* 813CC704 | 54 84 04 3E */	clrlwi r4, r4, 16
/* 813CC708 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CC70C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CC710 | 7C BF 2B 78 */	mr r31, r5
/* 813CC714 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813CC718 | 7C 7E 1B 78 */	mr r30, r3
/* 813CC71C | 38 63 00 10 */	addi r3, r3, 0x10
/* 813CC720 | 48 14 5B F9 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813CC724 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813CC728 | 41 82 00 14 */	beq .L_813CC73C
/* 813CC72C | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 813CC730 | 38 00 00 01 */	li r0, 0x1
/* 813CC734 | 90 04 00 18 */	stw r0, 0x18(r4)
/* 813CC738 | 48 00 00 10 */	b .L_813CC748
.L_813CC73C:
/* 813CC73C | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 813CC740 | 38 00 00 00 */	li r0, 0x0
/* 813CC744 | 90 04 00 18 */	stw r0, 0x18(r4)
.L_813CC748:
/* 813CC748 | 83 E3 00 04 */	lwz r31, 0x4(r3)
/* 813CC74C | 7F E3 FB 78 */	mr r3, r31
/* 813CC750 | 4B F9 61 21 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813CC754 | 38 00 00 01 */	li r0, 0x1
/* 813CC758 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 813CC75C | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 813CC760 | 4B F9 DF A5 */	bl calc__Q33ipl6layout6ObjectFv
/* 813CC764 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CC768 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CC76C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813CC770 | 7C 08 03 A6 */	mtlr r0
/* 813CC774 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CC778 | 4E 80 00 20 */	blr
.endfn do_animation__Q33ipl5scene10MemoryBaseFib

# .text:0x580 | 0x813CC77C | size: 0x34
# ipl::scene::MemoryBase::stop_animation(int)
.fn stop_animation__Q33ipl5scene10MemoryBaseFi, global
/* 813CC77C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CC780 | 7C 08 02 A6 */	mflr r0
/* 813CC784 | 54 84 04 3E */	clrlwi r4, r4, 16
/* 813CC788 | 38 63 00 10 */	addi r3, r3, 0x10
/* 813CC78C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CC790 | 48 14 5B 89 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813CC794 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813CC798 | 38 00 00 00 */	li r0, 0x0
/* 813CC79C | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813CC7A0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CC7A4 | 7C 08 03 A6 */	mtlr r0
/* 813CC7A8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CC7AC | 4E 80 00 20 */	blr
.endfn stop_animation__Q33ipl5scene10MemoryBaseFi

# .text:0x5B4 | 0x813CC7B0 | size: 0x3C
# ipl::scene::MemoryBase::is_animation(int)
.fn is_animation__Q33ipl5scene10MemoryBaseFi, global
/* 813CC7B0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CC7B4 | 7C 08 02 A6 */	mflr r0
/* 813CC7B8 | 54 84 04 3E */	clrlwi r4, r4, 16
/* 813CC7BC | 38 63 00 10 */	addi r3, r3, 0x10
/* 813CC7C0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CC7C4 | 48 14 5B 55 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813CC7C8 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813CC7CC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813CC7D0 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813CC7D4 | 7C 00 00 34 */	cntlzw r0, r0
/* 813CC7D8 | 54 03 D9 7E */	srwi r3, r0, 5
/* 813CC7DC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CC7E0 | 7C 08 03 A6 */	mtlr r0
/* 813CC7E4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CC7E8 | 4E 80 00 20 */	blr
.endfn is_animation__Q33ipl5scene10MemoryBaseFi

# .text:0x5F0 | 0x813CC7EC | size: 0x40
# ipl::scene::MemoryBase::is_fadein_enable()
.fn is_fadein_enable__Q33ipl5scene10MemoryBaseFv, global
/* 813CC7EC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CC7F0 | 7C 08 02 A6 */	mflr r0
/* 813CC7F4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813CC7F8 | 38 80 00 13 */	li r4, 0x13
/* 813CC7FC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CC800 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813CC804 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813CC808 | 48 03 E9 31 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813CC80C | 80 63 00 60 */	lwz r3, 0x60(r3)
/* 813CC810 | 38 03 FF F2 */	subi r0, r3, 0xe
/* 813CC814 | 7C 00 00 34 */	cntlzw r0, r0
/* 813CC818 | 54 03 D9 7E */	srwi r3, r0, 5
/* 813CC81C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CC820 | 7C 08 03 A6 */	mtlr r0
/* 813CC824 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CC828 | 4E 80 00 20 */	blr
.endfn is_fadein_enable__Q33ipl5scene10MemoryBaseFv

# .text:0x630 | 0x813CC82C | size: 0x88
# ipl::scene::MemoryBase::set_textbox(const char*, unsigned long)
.fn set_textbox__Q33ipl5scene10MemoryBaseFPCcUl, global
/* 813CC82C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CC830 | 7C 08 02 A6 */	mflr r0
/* 813CC834 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CC838 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CC83C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813CC840 | 7C BE 2B 78 */	mr r30, r5
/* 813CC844 | 38 A0 00 01 */	li r5, 0x1
/* 813CC848 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813CC84C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813CC850 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CC854 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813CC858 | 7D 89 03 A6 */	mtctr r12
/* 813CC85C | 4E 80 04 21 */	bctrl
/* 813CC860 | 4B F7 96 05 */	bl "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"
/* 813CC864 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813CC868 | 7C 7F 1B 78 */	mr r31, r3
/* 813CC86C | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813CC870 | 7F C4 F3 78 */	mr r4, r30
/* 813CC874 | 80 65 00 80 */	lwz r3, 0x80(r5)
/* 813CC878 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813CC87C | 4B F7 1F 41 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813CC880 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813CC884 | 7C 64 1B 78 */	mr r4, r3
/* 813CC888 | 7F E3 FB 78 */	mr r3, r31
/* 813CC88C | 38 A0 00 00 */	li r5, 0x0
/* 813CC890 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813CC894 | 7D 89 03 A6 */	mtctr r12
/* 813CC898 | 4E 80 04 21 */	bctrl
/* 813CC89C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CC8A0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CC8A4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813CC8A8 | 7C 08 03 A6 */	mtlr r0
/* 813CC8AC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CC8B0 | 4E 80 00 20 */	blr
.endfn set_textbox__Q33ipl5scene10MemoryBaseFPCcUl

# .text:0x6B8 | 0x813CC8B4 | size: 0x90
# ipl::scene::MemoryBase::set_textbox(const char*, unsigned long, int, int)
.fn set_textbox__Q33ipl5scene10MemoryBaseFPCcUlii, global
/* 813CC8B4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813CC8B8 | 7C 08 02 A6 */	mflr r0
/* 813CC8BC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813CC8C0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CC8C4 | 48 22 CC 01 */	bl _savegpr_28
/* 813CC8C8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CC8CC | 7C 9D 23 78 */	mr r29, r4
/* 813CC8D0 | 7C 7C 1B 78 */	mr r28, r3
/* 813CC8D4 | 7C BE 2B 78 */	mr r30, r5
/* 813CC8D8 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813CC8DC | 7C C4 33 78 */	mr r4, r6
/* 813CC8E0 | 7C FF 3B 78 */	mr r31, r7
/* 813CC8E4 | 7D 89 03 A6 */	mtctr r12
/* 813CC8E8 | 4E 80 04 21 */	bctrl
/* 813CC8EC | 6F E4 80 00 */	xoris r4, r31, 0x8000
/* 813CC8F0 | 3C 00 43 30 */	lis r0, 0x4330
/* 813CC8F4 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 813CC8F8 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813CC8FC | 90 01 00 08 */	stw r0, 0x8(r1)
/* 813CC900 | C8 22 86 78 */	lfd f1, lbl_81694A78@sda21(r0)
/* 813CC904 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 813CC908 | C0 43 00 0C */	lfs f2, 0xc(r3)
/* 813CC90C | EC 00 08 28 */	fsubs f0, f0, f1
/* 813CC910 | FC 02 00 40 */	fcmpo cr0, f2, f0
/* 813CC914 | 4C 41 13 82 */	cror eq, gt, eq
/* 813CC918 | 40 82 00 14 */	bne .L_813CC92C
/* 813CC91C | 7F 83 E3 78 */	mr r3, r28
/* 813CC920 | 7F A4 EB 78 */	mr r4, r29
/* 813CC924 | 7F C5 F3 78 */	mr r5, r30
/* 813CC928 | 4B FF FF 05 */	bl set_textbox__Q33ipl5scene10MemoryBaseFPCcUl
.L_813CC92C:
/* 813CC92C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CC930 | 48 22 CB E1 */	bl _restgpr_28
/* 813CC934 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813CC938 | 7C 08 03 A6 */	mtlr r0
/* 813CC93C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813CC940 | 4E 80 00 20 */	blr
.endfn set_textbox__Q33ipl5scene10MemoryBaseFPCcUlii

# .text:0x748 | 0x813CC944 | size: 0x134
# ipl::scene::MemoryBase::set_textbox(const char*, const wchar_t*, float, float)
.fn set_textbox__Q33ipl5scene10MemoryBaseFPCcPCwff, global
/* 813CC944 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 813CC948 | 7C 08 02 A6 */	mflr r0
/* 813CC94C | 90 01 00 64 */	stw r0, 0x64(r1)
/* 813CC950 | DB E1 00 50 */	stfd f31, 0x50(r1)
/* 813CC954 | F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 813CC958 | DB C1 00 40 */	stfd f30, 0x40(r1)
/* 813CC95C | F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 813CC960 | DB A1 00 30 */	stfd f29, 0x30(r1)
/* 813CC964 | F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 813CC968 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813CC96C | 48 22 CB 59 */	bl _savegpr_28
/* 813CC970 | FF A0 08 90 */	fmr f29, f1
/* 813CC974 | 7C BD 2B 78 */	mr r29, r5
/* 813CC978 | FF C0 10 90 */	fmr f30, f2
/* 813CC97C | 7C 7C 1B 78 */	mr r28, r3
/* 813CC980 | 7C 9E 23 78 */	mr r30, r4
/* 813CC984 | 7F A3 EB 78 */	mr r3, r29
/* 813CC988 | 48 23 BD 25 */	bl fn_816086AC
/* 813CC98C | 80 DC 00 04 */	lwz r6, 0x4(r28)
/* 813CC990 | 7C 7F 1B 78 */	mr r31, r3
/* 813CC994 | 7F C4 F3 78 */	mr r4, r30
/* 813CC998 | 38 A0 00 01 */	li r5, 0x1
/* 813CC99C | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 813CC9A0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CC9A4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813CC9A8 | 7D 89 03 A6 */	mtctr r12
/* 813CC9AC | 4E 80 04 21 */	bctrl
/* 813CC9B0 | 4B F7 94 B5 */	bl "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"
/* 813CC9B4 | C3 E2 86 80 */	lfs f31, lbl_81694A80@sda21(r0)
/* 813CC9B8 | 7C 7E 1B 78 */	mr r30, r3
/* 813CC9BC | 48 00 00 84 */	b .L_813CCA40
.L_813CC9C0:
/* 813CC9C0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813CC9C4 | 7F C3 F3 78 */	mr r3, r30
/* 813CC9C8 | 7F A4 EB 78 */	mr r4, r29
/* 813CC9CC | 57 E6 04 3E */	clrlwi r6, r31, 16
/* 813CC9D0 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 813CC9D4 | 38 A0 00 00 */	li r5, 0x0
/* 813CC9D8 | 7D 89 03 A6 */	mtctr r12
/* 813CC9DC | 4E 80 04 21 */	bctrl
/* 813CC9E0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813CC9E4 | 7F C3 F3 78 */	mr r3, r30
/* 813CC9E8 | 80 9C 00 04 */	lwz r4, 0x4(r28)
/* 813CC9EC | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813CC9F0 | 38 84 02 98 */	addi r4, r4, 0x298
/* 813CC9F4 | 7D 89 03 A6 */	mtctr r12
/* 813CC9F8 | 4E 80 04 21 */	bctrl
/* 813CC9FC | 80 BC 00 04 */	lwz r5, 0x4(r28)
/* 813CCA00 | 7F C4 F3 78 */	mr r4, r30
/* 813CCA04 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813CCA08 | 38 A5 02 98 */	addi r5, r5, 0x298
/* 813CCA0C | 48 15 52 E9 */	bl fn_81521CF4
/* 813CCA10 | C0 21 00 10 */	lfs f1, 0x10(r1)
/* 813CCA14 | C0 01 00 08 */	lfs f0, 0x8(r1)
/* 813CCA18 | EC 01 00 28 */	fsubs f0, f1, f0
/* 813CCA1C | FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 813CCA20 | 40 80 00 1C */	bge .L_813CCA3C
/* 813CCA24 | C0 21 00 14 */	lfs f1, 0x14(r1)
/* 813CCA28 | C0 01 00 0C */	lfs f0, 0xc(r1)
/* 813CCA2C | EC 01 00 28 */	fsubs f0, f1, f0
/* 813CCA30 | EC 1F 00 32 */	fmuls f0, f31, f0
/* 813CCA34 | FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 813CCA38 | 41 80 00 10 */	blt .L_813CCA48
.L_813CCA3C:
/* 813CCA3C | 3B FF FF FF */	subi r31, r31, 0x1
.L_813CCA40:
/* 813CCA40 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813CCA44 | 40 82 FF 7C */	bne .L_813CC9C0
.L_813CCA48:
/* 813CCA48 | E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 813CCA4C | CB E1 00 50 */	lfd f31, 0x50(r1)
/* 813CCA50 | E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 813CCA54 | CB C1 00 40 */	lfd f30, 0x40(r1)
/* 813CCA58 | E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 813CCA5C | 39 61 00 30 */	addi r11, r1, 0x30
/* 813CCA60 | CB A1 00 30 */	lfd f29, 0x30(r1)
/* 813CCA64 | 48 22 CA AD */	bl _restgpr_28
/* 813CCA68 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 813CCA6C | 7C 08 03 A6 */	mtlr r0
/* 813CCA70 | 38 21 00 60 */	addi r1, r1, 0x60
/* 813CCA74 | 4E 80 00 20 */	blr
.endfn set_textbox__Q33ipl5scene10MemoryBaseFPCcPCwff

# .text:0x87C | 0x813CCA78 | size: 0x60
# ipl::scene::MemoryBase::set_textbox(const char*, const wchar_t*)
.fn set_textbox__Q33ipl5scene10MemoryBaseFPCcPCw, global
/* 813CCA78 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CCA7C | 7C 08 02 A6 */	mflr r0
/* 813CCA80 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CCA84 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CCA88 | 7C BF 2B 78 */	mr r31, r5
/* 813CCA8C | 38 A0 00 01 */	li r5, 0x1
/* 813CCA90 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813CCA94 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813CCA98 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CCA9C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813CCAA0 | 7D 89 03 A6 */	mtctr r12
/* 813CCAA4 | 4E 80 04 21 */	bctrl
/* 813CCAA8 | 4B F7 93 BD */	bl "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"
/* 813CCAAC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CCAB0 | 7F E4 FB 78 */	mr r4, r31
/* 813CCAB4 | 38 A0 00 00 */	li r5, 0x0
/* 813CCAB8 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813CCABC | 7D 89 03 A6 */	mtctr r12
/* 813CCAC0 | 4E 80 04 21 */	bctrl
/* 813CCAC4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CCAC8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CCACC | 7C 08 03 A6 */	mtlr r0
/* 813CCAD0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CCAD4 | 4E 80 00 20 */	blr
.endfn set_textbox__Q33ipl5scene10MemoryBaseFPCcPCw

# .text:0x8DC | 0x813CCAD8 | size: 0x54
# ipl::scene::MemoryBase::set_visible(const char*, bool)
.fn set_visible__Q33ipl5scene10MemoryBaseFPCcb, global
/* 813CCAD8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CCADC | 7C 08 02 A6 */	mflr r0
/* 813CCAE0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CCAE4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CCAE8 | 7C BF 2B 78 */	mr r31, r5
/* 813CCAEC | 38 A0 00 01 */	li r5, 0x1
/* 813CCAF0 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813CCAF4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813CCAF8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813CCAFC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813CCB00 | 7D 89 03 A6 */	mtctr r12
/* 813CCB04 | 4E 80 04 21 */	bctrl
/* 813CCB08 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 813CCB0C | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 813CCB10 | 7C 00 FB 78 */	or r0, r0, r31
/* 813CCB14 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 813CCB18 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CCB1C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CCB20 | 7C 08 03 A6 */	mtlr r0
/* 813CCB24 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CCB28 | 4E 80 00 20 */	blr
.endfn set_visible__Q33ipl5scene10MemoryBaseFPCcb

# .text:0x930 | 0x813CCB2C | size: 0x14
# ipl::scene::MemoryBase::get_setting_button()
.fn get_setting_button__Q33ipl5scene10MemoryBaseFv, global
/* 813CCB2C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813CCB30 | 38 80 00 16 */	li r4, 0x16
/* 813CCB34 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813CCB38 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813CCB3C | 48 03 E5 FC */	b getScene__Q33ipl5scene7ManagerFi
.endfn get_setting_button__Q33ipl5scene10MemoryBaseFv

# .text:0x944 | 0x813CCB40 | size: 0x74
# ipl::scene::MemoryBase::change_button_text_close()
.fn change_button_text_close__Q33ipl5scene10MemoryBaseFv, global
/* 813CCB40 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CCB44 | 7C 08 02 A6 */	mflr r0
/* 813CCB48 | 38 80 00 16 */	li r4, 0x16
/* 813CCB4C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CCB50 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CCB54 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813CCB58 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813CCB5C | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813CCB60 | 48 03 E5 D9 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813CCB64 | 38 80 00 02 */	li r4, 0x2
/* 813CCB68 | 38 A0 00 00 */	li r5, 0x0
/* 813CCB6C | 48 03 AE 8D */	bl reserve__Q33ipl5scene13SettingButtonFiUl
/* 813CCB70 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813CCB74 | 38 80 00 16 */	li r4, 0x16
/* 813CCB78 | 48 03 E5 C1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813CCB7C | 38 80 00 03 */	li r4, 0x3
/* 813CCB80 | 38 A0 00 FC */	li r5, 0xfc
/* 813CCB84 | 48 03 AE 75 */	bl reserve__Q33ipl5scene13SettingButtonFiUl
/* 813CCB88 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813CCB8C | 38 80 00 16 */	li r4, 0x16
/* 813CCB90 | 48 03 E5 A9 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813CCB94 | 38 80 00 01 */	li r4, 0x1
/* 813CCB98 | 38 A0 00 00 */	li r5, 0x0
/* 813CCB9C | 48 03 AE 5D */	bl reserve__Q33ipl5scene13SettingButtonFiUl
/* 813CCBA0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CCBA4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CCBA8 | 7C 08 03 A6 */	mtlr r0
/* 813CCBAC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CCBB0 | 4E 80 00 20 */	blr
.endfn change_button_text_close__Q33ipl5scene10MemoryBaseFv

# .text:0x9B8 | 0x813CCBB4 | size: 0x74
# ipl::scene::MemoryBase::change_button_text_return()
.fn change_button_text_return__Q33ipl5scene10MemoryBaseFv, global
/* 813CCBB4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CCBB8 | 7C 08 02 A6 */	mflr r0
/* 813CCBBC | 38 80 00 16 */	li r4, 0x16
/* 813CCBC0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CCBC4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CCBC8 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813CCBCC | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813CCBD0 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813CCBD4 | 48 03 E5 65 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813CCBD8 | 38 80 00 02 */	li r4, 0x2
/* 813CCBDC | 38 A0 00 00 */	li r5, 0x0
/* 813CCBE0 | 48 03 AE 19 */	bl reserve__Q33ipl5scene13SettingButtonFiUl
/* 813CCBE4 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813CCBE8 | 38 80 00 16 */	li r4, 0x16
/* 813CCBEC | 48 03 E5 4D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813CCBF0 | 38 80 00 03 */	li r4, 0x3
/* 813CCBF4 | 38 A0 01 3B */	li r5, 0x13b
/* 813CCBF8 | 48 03 AE 01 */	bl reserve__Q33ipl5scene13SettingButtonFiUl
/* 813CCBFC | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813CCC00 | 38 80 00 16 */	li r4, 0x16
/* 813CCC04 | 48 03 E5 35 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813CCC08 | 38 80 00 01 */	li r4, 0x1
/* 813CCC0C | 38 A0 00 00 */	li r5, 0x0
/* 813CCC10 | 48 03 AD E9 */	bl reserve__Q33ipl5scene13SettingButtonFiUl
/* 813CCC14 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CCC18 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CCC1C | 7C 08 03 A6 */	mtlr r0
/* 813CCC20 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CCC24 | 4E 80 00 20 */	blr
.endfn change_button_text_return__Q33ipl5scene10MemoryBaseFv

# .text:0xA2C | 0x813CCC28 | size: 0x74
# ipl::scene::MemoryBase::change_button_text_ok()
.fn change_button_text_ok__Q33ipl5scene10MemoryBaseFv, global
/* 813CCC28 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CCC2C | 7C 08 02 A6 */	mflr r0
/* 813CCC30 | 38 80 00 16 */	li r4, 0x16
/* 813CCC34 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CCC38 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CCC3C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813CCC40 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813CCC44 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813CCC48 | 48 03 E4 F1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813CCC4C | 38 80 00 02 */	li r4, 0x2
/* 813CCC50 | 38 A0 00 00 */	li r5, 0x0
/* 813CCC54 | 48 03 AD A5 */	bl reserve__Q33ipl5scene13SettingButtonFiUl
/* 813CCC58 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813CCC5C | 38 80 00 16 */	li r4, 0x16
/* 813CCC60 | 48 03 E4 D9 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813CCC64 | 38 80 00 03 */	li r4, 0x3
/* 813CCC68 | 38 A0 00 2E */	li r5, 0x2e
/* 813CCC6C | 48 03 AD 8D */	bl reserve__Q33ipl5scene13SettingButtonFiUl
/* 813CCC70 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813CCC74 | 38 80 00 16 */	li r4, 0x16
/* 813CCC78 | 48 03 E4 C1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813CCC7C | 38 80 00 01 */	li r4, 0x1
/* 813CCC80 | 38 A0 00 00 */	li r5, 0x0
/* 813CCC84 | 48 03 AD 75 */	bl reserve__Q33ipl5scene13SettingButtonFiUl
/* 813CCC88 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CCC8C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CCC90 | 7C 08 03 A6 */	mtlr r0
/* 813CCC94 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CCC98 | 4E 80 00 20 */	blr
.endfn change_button_text_ok__Q33ipl5scene10MemoryBaseFv

# .text:0xAA0 | 0x813CCC9C | size: 0x50
# ipl::scene::MemoryBase::show_button_return()
.fn show_button_return__Q33ipl5scene10MemoryBaseFv, global
/* 813CCC9C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CCCA0 | 7C 08 02 A6 */	mflr r0
/* 813CCCA4 | 38 80 00 16 */	li r4, 0x16
/* 813CCCA8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CCCAC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CCCB0 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813CCCB4 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813CCCB8 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813CCCBC | 48 03 E4 7D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813CCCC0 | 38 80 01 3B */	li r4, 0x13b
/* 813CCCC4 | 48 03 AC 61 */	bl setText__Q33ipl5scene13SettingButtonFUl
/* 813CCCC8 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813CCCCC | 38 80 00 16 */	li r4, 0x16
/* 813CCCD0 | 48 03 E4 69 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813CCCD4 | 48 03 AB 9D */	bl showBtn__Q33ipl5scene13SettingButtonFv
/* 813CCCD8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CCCDC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CCCE0 | 7C 08 03 A6 */	mtlr r0
/* 813CCCE4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CCCE8 | 4E 80 00 20 */	blr
.endfn show_button_return__Q33ipl5scene10MemoryBaseFv

# .text:0xAF0 | 0x813CCCEC | size: 0x50
# ipl::scene::MemoryBase::show_button_ok()
.fn show_button_ok__Q33ipl5scene10MemoryBaseFv, global
/* 813CCCEC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CCCF0 | 7C 08 02 A6 */	mflr r0
/* 813CCCF4 | 38 80 00 16 */	li r4, 0x16
/* 813CCCF8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CCCFC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CCD00 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813CCD04 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813CCD08 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813CCD0C | 48 03 E4 2D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813CCD10 | 38 80 00 2E */	li r4, 0x2e
/* 813CCD14 | 48 03 AC 11 */	bl setText__Q33ipl5scene13SettingButtonFUl
/* 813CCD18 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813CCD1C | 38 80 00 16 */	li r4, 0x16
/* 813CCD20 | 48 03 E4 19 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813CCD24 | 48 03 AB 4D */	bl showBtn__Q33ipl5scene13SettingButtonFv
/* 813CCD28 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CCD2C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CCD30 | 7C 08 03 A6 */	mtlr r0
/* 813CCD34 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CCD38 | 4E 80 00 20 */	blr
.endfn show_button_ok__Q33ipl5scene10MemoryBaseFv

# .text:0xB40 | 0x813CCD3C | size: 0x60
# ipl::scene::MemoryBase::AnmButton::calc()
.fn calc__Q43ipl5scene10MemoryBase9AnmButtonFv, global
/* 813CCD3C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CCD40 | 7C 08 02 A6 */	mflr r0
/* 813CCD44 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CCD48 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CCD4C | 7C 7F 1B 78 */	mr r31, r3
/* 813CCD50 | 80 83 00 0C */	lwz r4, 0xc(r3)
/* 813CCD54 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813CCD58 | 41 82 00 24 */	beq .L_813CCD7C
/* 813CCD5C | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 813CCD60 | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 813CCD64 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813CCD68 | 41 82 00 14 */	beq .L_813CCD7C
/* 813CCD6C | 38 00 00 00 */	li r0, 0x0
/* 813CCD70 | 38 80 00 04 */	li r4, 0x4
/* 813CCD74 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 813CCD78 | 48 00 00 25 */	bl onCmdRecv__Q43ipl5scene10MemoryBase9AnmButtonFi
.L_813CCD7C:
/* 813CCD7C | 80 9F 00 28 */	lwz r4, 0x28(r31)
/* 813CCD80 | 7F E3 FB 78 */	mr r3, r31
/* 813CCD84 | 48 00 00 19 */	bl onCmdRecv__Q43ipl5scene10MemoryBase9AnmButtonFi
/* 813CCD88 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CCD8C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CCD90 | 7C 08 03 A6 */	mtlr r0
/* 813CCD94 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CCD98 | 4E 80 00 20 */	blr
.endfn calc__Q43ipl5scene10MemoryBase9AnmButtonFv

# .text:0xBA0 | 0x813CCD9C | size: 0x190
# ipl::scene::MemoryBase::AnmButton::onCmdRecv(int)
.fn onCmdRecv__Q43ipl5scene10MemoryBase9AnmButtonFi, global
/* 813CCD9C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813CCDA0 | 7C 08 02 A6 */	mflr r0
/* 813CCDA4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813CCDA8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CCDAC | 48 22 C7 1D */	bl _savegpr_29
/* 813CCDB0 | 38 04 FF FF */	subi r0, r4, 0x1
/* 813CCDB4 | 7C 7F 1B 78 */	mr r31, r3
/* 813CCDB8 | 28 00 00 02 */	cmplwi r0, 0x2
/* 813CCDBC | 7C 9D 23 78 */	mr r29, r4
/* 813CCDC0 | 41 81 00 08 */	bgt .L_813CCDC8
/* 813CCDC4 | 90 83 00 28 */	stw r4, 0x28(r3)
.L_813CCDC8:
/* 813CCDC8 | 80 03 00 28 */	lwz r0, 0x28(r3)
/* 813CCDCC | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813CCDD0 | 40 82 00 28 */	bne .L_813CCDF8
/* 813CCDD4 | 80 83 00 18 */	lwz r4, 0x18(r3)
/* 813CCDD8 | 90 83 00 0C */	stw r4, 0xc(r3)
/* 813CCDDC | 83 C4 00 04 */	lwz r30, 0x4(r4)
/* 813CCDE0 | 7F C3 F3 78 */	mr r3, r30
/* 813CCDE4 | 4B F9 5A 8D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813CCDE8 | 38 60 00 01 */	li r3, 0x1
/* 813CCDEC | 38 00 00 03 */	li r0, 0x3
/* 813CCDF0 | 90 7E 00 14 */	stw r3, 0x14(r30)
/* 813CCDF4 | 90 1F 00 24 */	stw r0, 0x24(r31)
.L_813CCDF8:
/* 813CCDF8 | 80 1F 00 24 */	lwz r0, 0x24(r31)
/* 813CCDFC | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813CCE00 | 41 82 00 B8 */	beq .L_813CCEB8
/* 813CCE04 | 40 80 00 14 */	bge .L_813CCE18
/* 813CCE08 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813CCE0C | 41 82 00 18 */	beq .L_813CCE24
/* 813CCE10 | 40 80 00 70 */	bge .L_813CCE80
/* 813CCE14 | 48 00 01 00 */	b .L_813CCF14
.L_813CCE18:
/* 813CCE18 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813CCE1C | 40 80 00 F8 */	bge .L_813CCF14
/* 813CCE20 | 48 00 00 D0 */	b .L_813CCEF0
.L_813CCE24:
/* 813CCE24 | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 813CCE28 | 40 82 00 28 */	bne .L_813CCE50
/* 813CCE2C | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 813CCE30 | 90 7F 00 0C */	stw r3, 0xc(r31)
/* 813CCE34 | 83 C3 00 04 */	lwz r30, 0x4(r3)
/* 813CCE38 | 7F C3 F3 78 */	mr r3, r30
/* 813CCE3C | 4B F9 5A 35 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813CCE40 | 38 00 00 01 */	li r0, 0x1
/* 813CCE44 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 813CCE48 | 90 1F 00 24 */	stw r0, 0x24(r31)
/* 813CCE4C | 48 00 00 C8 */	b .L_813CCF14
.L_813CCE50:
/* 813CCE50 | 2C 1D 00 02 */	cmpwi r29, 0x2
/* 813CCE54 | 40 82 00 C0 */	bne .L_813CCF14
/* 813CCE58 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 813CCE5C | 90 7F 00 0C */	stw r3, 0xc(r31)
/* 813CCE60 | 83 C3 00 04 */	lwz r30, 0x4(r3)
/* 813CCE64 | 7F C3 F3 78 */	mr r3, r30
/* 813CCE68 | 4B F9 5A 09 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813CCE6C | 38 60 00 01 */	li r3, 0x1
/* 813CCE70 | 38 00 00 02 */	li r0, 0x2
/* 813CCE74 | 90 7E 00 14 */	stw r3, 0x14(r30)
/* 813CCE78 | 90 1F 00 24 */	stw r0, 0x24(r31)
/* 813CCE7C | 48 00 00 98 */	b .L_813CCF14
.L_813CCE80:
/* 813CCE80 | 2C 1D 00 04 */	cmpwi r29, 0x4
/* 813CCE84 | 40 82 00 90 */	bne .L_813CCF14
/* 813CCE88 | 80 1F 00 28 */	lwz r0, 0x28(r31)
/* 813CCE8C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813CCE90 | 40 82 00 0C */	bne .L_813CCE9C
/* 813CCE94 | 38 00 00 00 */	li r0, 0x0
/* 813CCE98 | 90 1F 00 28 */	stw r0, 0x28(r31)
.L_813CCE9C:
/* 813CCE9C | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 813CCEA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CCEA4 | 41 82 00 08 */	beq .L_813CCEAC
/* 813CCEA8 | 48 00 48 71 */	bl fadein__Q33ipl5scene11TextBalloonFv
.L_813CCEAC:
/* 813CCEAC | 38 00 00 00 */	li r0, 0x0
/* 813CCEB0 | 90 1F 00 24 */	stw r0, 0x24(r31)
/* 813CCEB4 | 48 00 00 60 */	b .L_813CCF14
.L_813CCEB8:
/* 813CCEB8 | 2C 1D 00 04 */	cmpwi r29, 0x4
/* 813CCEBC | 40 82 00 58 */	bne .L_813CCF14
/* 813CCEC0 | 80 1F 00 28 */	lwz r0, 0x28(r31)
/* 813CCEC4 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813CCEC8 | 40 82 00 0C */	bne .L_813CCED4
/* 813CCECC | 38 00 00 00 */	li r0, 0x0
/* 813CCED0 | 90 1F 00 28 */	stw r0, 0x28(r31)
.L_813CCED4:
/* 813CCED4 | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 813CCED8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CCEDC | 41 82 00 08 */	beq .L_813CCEE4
/* 813CCEE0 | 48 00 4A 75 */	bl fadeout__Q33ipl5scene11TextBalloonFv
.L_813CCEE4:
/* 813CCEE4 | 38 00 00 00 */	li r0, 0x0
/* 813CCEE8 | 90 1F 00 24 */	stw r0, 0x24(r31)
/* 813CCEEC | 48 00 00 28 */	b .L_813CCF14
.L_813CCEF0:
/* 813CCEF0 | 2C 1D 00 04 */	cmpwi r29, 0x4
/* 813CCEF4 | 40 82 00 20 */	bne .L_813CCF14
/* 813CCEF8 | 80 1F 00 28 */	lwz r0, 0x28(r31)
/* 813CCEFC | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813CCF00 | 40 82 00 0C */	bne .L_813CCF0C
/* 813CCF04 | 38 00 00 00 */	li r0, 0x0
/* 813CCF08 | 90 1F 00 28 */	stw r0, 0x28(r31)
.L_813CCF0C:
/* 813CCF0C | 38 00 00 00 */	li r0, 0x0
/* 813CCF10 | 90 1F 00 24 */	stw r0, 0x24(r31)
.L_813CCF14:
/* 813CCF14 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813CCF18 | 48 22 C5 FD */	bl _restgpr_29
/* 813CCF1C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813CCF20 | 7C 08 03 A6 */	mtlr r0
/* 813CCF24 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813CCF28 | 4E 80 00 20 */	blr
.endfn onCmdRecv__Q43ipl5scene10MemoryBase9AnmButtonFi

# .text:0xD30 | 0x813CCF2C | size: 0x8
# ipl::scene::MemoryBase::AnmButton::setBalloon(ipl::scene::TextBalloon*)
.fn setBalloon__Q43ipl5scene10MemoryBase9AnmButtonFPQ33ipl5scene11TextBalloon, global
/* 813CCF2C | 90 83 00 2C */	stw r4, 0x2c(r3)
/* 813CCF30 | 4E 80 00 20 */	blr
.endfn setBalloon__Q43ipl5scene10MemoryBase9AnmButtonFPQ33ipl5scene11TextBalloon

# .text:0xD38 | 0x813CCF34 | size: 0x40
# ipl::scene::MemoryBase::AnmButton::~AnmButton()
.fn __dt__Q43ipl5scene10MemoryBase9AnmButtonFv, global
/* 813CCF34 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CCF38 | 7C 08 02 A6 */	mflr r0
/* 813CCF3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CCF40 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CCF44 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CCF48 | 7C 7F 1B 78 */	mr r31, r3
/* 813CCF4C | 41 82 00 10 */	beq .L_813CCF5C
/* 813CCF50 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813CCF54 | 40 81 00 08 */	ble .L_813CCF5C
/* 813CCF58 | 48 22 B1 8D */	bl __dl__FPv
.L_813CCF5C:
/* 813CCF5C | 7F E3 FB 78 */	mr r3, r31
/* 813CCF60 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CCF64 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CCF68 | 7C 08 03 A6 */	mtlr r0
/* 813CCF6C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CCF70 | 4E 80 00 20 */	blr
.endfn __dt__Q43ipl5scene10MemoryBase9AnmButtonFv

# .text:0xD78 | 0x813CCF74 | size: 0x40
# ipl::scene::MemoryBase::Button::~Button()
.fn __dt__Q43ipl5scene10MemoryBase6ButtonFv, global
/* 813CCF74 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CCF78 | 7C 08 02 A6 */	mflr r0
/* 813CCF7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CCF80 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CCF84 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CCF88 | 7C 7F 1B 78 */	mr r31, r3
/* 813CCF8C | 41 82 00 10 */	beq .L_813CCF9C
/* 813CCF90 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813CCF94 | 40 81 00 08 */	ble .L_813CCF9C
/* 813CCF98 | 48 22 B1 4D */	bl __dl__FPv
.L_813CCF9C:
/* 813CCF9C | 7F E3 FB 78 */	mr r3, r31
/* 813CCFA0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CCFA4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CCFA8 | 7C 08 03 A6 */	mtlr r0
/* 813CCFAC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CCFB0 | 4E 80 00 20 */	blr
.endfn __dt__Q43ipl5scene10MemoryBase6ButtonFv

# .text:0xDB8 | 0x813CCFB4 | size: 0x40
# ipl::scene::MemoryBase::Anm::~Anm()
.fn __dt__Q43ipl5scene10MemoryBase3AnmFv, global
/* 813CCFB4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CCFB8 | 7C 08 02 A6 */	mflr r0
/* 813CCFBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CCFC0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CCFC4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CCFC8 | 7C 7F 1B 78 */	mr r31, r3
/* 813CCFCC | 41 82 00 10 */	beq .L_813CCFDC
/* 813CCFD0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813CCFD4 | 40 81 00 08 */	ble .L_813CCFDC
/* 813CCFD8 | 48 22 B1 0D */	bl __dl__FPv
.L_813CCFDC:
/* 813CCFDC | 7F E3 FB 78 */	mr r3, r31
/* 813CCFE0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CCFE4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CCFE8 | 7C 08 03 A6 */	mtlr r0
/* 813CCFEC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CCFF0 | 4E 80 00 20 */	blr
.endfn __dt__Q43ipl5scene10MemoryBase3AnmFv

# .text:0xDF8 | 0x813CCFF4 | size: 0x40
# ipl::scene::MemoryBaseEvent::~MemoryBaseEvent()
.fn __dt__Q33ipl5scene15MemoryBaseEventFv, global
/* 813CCFF4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813CCFF8 | 7C 08 02 A6 */	mflr r0
/* 813CCFFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813CD000 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813CD004 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813CD008 | 7C 7F 1B 78 */	mr r31, r3
/* 813CD00C | 41 82 00 10 */	beq .L_813CD01C
/* 813CD010 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813CD014 | 40 81 00 08 */	ble .L_813CD01C
/* 813CD018 | 48 22 B0 CD */	bl __dl__FPv
.L_813CD01C:
/* 813CD01C | 7F E3 FB 78 */	mr r3, r31
/* 813CD020 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813CD024 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813CD028 | 7C 08 03 A6 */	mtlr r0
/* 813CD02C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813CD030 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene15MemoryBaseEventFv

# 0x81652640..0x816526D0 | size: 0x90
.data
.balign 8

# .data:0x0 | 0x81652640 | size: 0x50
# ipl::scene::MemoryBase::__vtable
.obj __vt__Q33ipl5scene10MemoryBase, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene10MemoryBaseFv
	.4byte onPoint__Q33ipl5scene10MemoryBaseFPCcPQ33ipl10controller9Interface
	.4byte onLeft__Q33ipl5scene10MemoryBaseFPCc
	.4byte onMove__Q33ipl5scene10MemoryBaseFPCc
	.4byte onTrig__Q33ipl5scene10MemoryBaseFPCc
	.4byte add_button__Q33ipl5scene10MemoryBaseFPPCci
	.4byte add_anmbutton__Q33ipl5scene10MemoryBaseFPCcPQ43ipl5scene10MemoryBase3AnmPQ43ipl5scene10MemoryBase3AnmPQ43ipl5scene10MemoryBase3Anm
	.4byte get_button__Q33ipl5scene10MemoryBaseFPCc
	.4byte get_anmbutton__Q33ipl5scene10MemoryBaseFPCc
	.4byte clear_button__Q33ipl5scene10MemoryBaseFPCc
	.4byte add_animation__Q33ipl5scene10MemoryBaseFPCQ43ipl5scene10MemoryBase7AnmNamei
	.4byte get_animation__Q33ipl5scene10MemoryBaseFi
	.4byte do_animation__Q33ipl5scene10MemoryBaseFi
	.4byte do_animation__Q33ipl5scene10MemoryBaseFib
	.4byte stop_animation__Q33ipl5scene10MemoryBaseFi
	.4byte is_animation__Q33ipl5scene10MemoryBaseFi
	.4byte is_fadein_enable__Q33ipl5scene10MemoryBaseFv
	.4byte set_visible__Q33ipl5scene10MemoryBaseFPCcb
.endobj __vt__Q33ipl5scene10MemoryBase

# .data:0x50 | 0x81652690 | size: 0xC
# ipl::scene::MemoryBase::AnmButton::__vtable
.obj __vt__Q43ipl5scene10MemoryBase9AnmButton, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q43ipl5scene10MemoryBase9AnmButtonFv
.endobj __vt__Q43ipl5scene10MemoryBase9AnmButton

# .data:0x5C | 0x8165269C | size: 0xC
# ipl::scene::MemoryBase::Button::__vtable
.obj __vt__Q43ipl5scene10MemoryBase6Button, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q43ipl5scene10MemoryBase6ButtonFv
.endobj __vt__Q43ipl5scene10MemoryBase6Button

# .data:0x68 | 0x816526A8 | size: 0xC
# ipl::scene::MemoryBase::Anm::__vtable
.obj __vt__Q43ipl5scene10MemoryBase3Anm, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q43ipl5scene10MemoryBase3AnmFv
.endobj __vt__Q43ipl5scene10MemoryBase3Anm

# .data:0x74 | 0x816526B4 | size: 0x1C
# ipl::scene::MemoryBaseEvent::__vtable
.obj __vt__Q33ipl5scene15MemoryBaseEvent, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte onEvent__Q33ipl5scene15MemoryBaseEventFUlUlPv
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
	.4byte __dt__Q33ipl5scene15MemoryBaseEventFv
.endobj __vt__Q33ipl5scene15MemoryBaseEvent

# 0x81694A80..0x81694A88 | size: 0x8
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694A80 | size: 0x4
.obj lbl_81694A80, global
	.float -1
.endobj lbl_81694A80

# .sdata2:0x4 | 0x81694A84 | size: 0x4
.obj gap_09_81694A84_sdata2, global
.hidden gap_09_81694A84_sdata2
	.4byte 0x00000000
.endobj gap_09_81694A84_sdata2
