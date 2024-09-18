.include "macros.inc"
.file "iplCSSize.cpp"

# 0x8145E218..0x8145E588 | size: 0x370
.text
.balign 4

# .text:0x0 | 0x8145E218 | size: 0x8C
# ipl::cs::size::_ctor(CHANSVm*, CHANSVmObjHdr*, float, float)
.fn _ctor__Q33ipl2cs4sizeFP7CHANSVmP13CHANSVmObjHdrff, global
/* 8145E218 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8145E21C | 7C 08 02 A6 */	mflr r0
/* 8145E220 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8145E224 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145E228 | DB E1 00 28 */	stfd f31, 0x28(r1)
/* 8145E22C | DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8145E230 | 48 19 B2 99 */	bl _savegpr_29
/* 8145E234 | FF C0 08 90 */	fmr f30, f1
/* 8145E238 | 7C 7D 1B 78 */	mr r29, r3
/* 8145E23C | FF E0 10 90 */	fmr f31, f2
/* 8145E240 | 7C 9E 23 78 */	mr r30, r4
/* 8145E244 | 3B E0 00 00 */	li r31, 0x0
/* 8145E248 | 38 A0 00 08 */	li r5, 0x8
/* 8145E24C | 4B FE CA 09 */	bl CHANSVmNewObjData
/* 8145E250 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145E254 | 41 82 00 2C */	beq .L_8145E280
/* 8145E258 | D3 C3 00 00 */	stfs f30, 0x0(r3)
/* 8145E25C | 38 00 00 08 */	li r0, 0x8
/* 8145E260 | 38 8D 99 18 */	li r4, lbl_81697958@sda21
/* 8145E264 | D3 E3 00 04 */	stfs f31, 0x4(r3)
/* 8145E268 | 7F A3 EB 78 */	mr r3, r29
/* 8145E26C | 98 1E 00 08 */	stb r0, 0x8(r30)
/* 8145E270 | 4B FE E5 05 */	bl CHANSVmFindNativeClass
/* 8145E274 | 30 03 FF FF */	subic r0, r3, 0x1
/* 8145E278 | 90 7E 00 0C */	stw r3, 0xc(r30)
/* 8145E27C | 7F E0 19 10 */	subfe r31, r0, r3
.L_8145E280:
/* 8145E280 | CB E1 00 28 */	lfd f31, 0x28(r1)
/* 8145E284 | 7F E3 FB 78 */	mr r3, r31
/* 8145E288 | CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8145E28C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145E290 | 48 19 B2 85 */	bl _restgpr_29
/* 8145E294 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8145E298 | 7C 08 03 A6 */	mtlr r0
/* 8145E29C | 38 21 00 30 */	addi r1, r1, 0x30
/* 8145E2A0 | 4E 80 00 20 */	blr
.endfn _ctor__Q33ipl2cs4sizeFP7CHANSVmP13CHANSVmObjHdrff

# .text:0x8C | 0x8145E2A4 | size: 0xA8
# ipl::cs::size::ctor(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn ctor__Q33ipl2cs4sizeFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145E2A4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145E2A8 | 7C 08 02 A6 */	mflr r0
/* 8145E2AC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145E2B0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145E2B4 | 48 19 B2 15 */	bl _savegpr_29
/* 8145E2B8 | 7C A4 2B 78 */	mr r4, r5
/* 8145E2BC | 7C 7D 1B 78 */	mr r29, r3
/* 8145E2C0 | 3B E0 00 00 */	li r31, 0x0
/* 8145E2C4 | 38 A0 00 08 */	li r5, 0x8
/* 8145E2C8 | 4B FE C9 8D */	bl CHANSVmNewObjData
/* 8145E2CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145E2D0 | 7C 7E 1B 78 */	mr r30, r3
/* 8145E2D4 | 41 82 00 5C */	beq .L_8145E330
/* 8145E2D8 | 7F A3 EB 78 */	mr r3, r29
/* 8145E2DC | 38 80 00 00 */	li r4, 0x0
/* 8145E2E0 | 4B FE E4 1D */	bl CHANSVmGetArgFloat
/* 8145E2E4 | 7C 7F 1B 78 */	mr r31, r3
/* 8145E2E8 | 7F A3 EB 78 */	mr r3, r29
/* 8145E2EC | 38 80 00 01 */	li r4, 0x1
/* 8145E2F0 | 4B FE E4 0D */	bl CHANSVmGetArgFloat
/* 8145E2F4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145E2F8 | 41 82 00 10 */	beq .L_8145E308
/* 8145E2FC | C8 1F 00 00 */	lfd f0, 0x0(r31)
/* 8145E300 | FC 00 00 18 */	frsp f0, f0
/* 8145E304 | 48 00 00 08 */	b .L_8145E30C
.L_8145E308:
/* 8145E308 | C0 02 8B E8 */	lfs f0, lbl_81694FE8@sda21(r0)
.L_8145E30C:
/* 8145E30C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145E310 | 41 82 00 10 */	beq .L_8145E320
/* 8145E314 | C8 23 00 00 */	lfd f1, 0x0(r3)
/* 8145E318 | FC 20 08 18 */	frsp f1, f1
/* 8145E31C | 48 00 00 08 */	b .L_8145E324
.L_8145E320:
/* 8145E320 | C0 22 8B E8 */	lfs f1, lbl_81694FE8@sda21(r0)
.L_8145E324:
/* 8145E324 | D0 1E 00 00 */	stfs f0, 0x0(r30)
/* 8145E328 | 3B E0 00 01 */	li r31, 0x1
/* 8145E32C | D0 3E 00 04 */	stfs f1, 0x4(r30)
.L_8145E330:
/* 8145E330 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145E334 | 7F E3 FB 78 */	mr r3, r31
/* 8145E338 | 48 19 B1 DD */	bl _restgpr_29
/* 8145E33C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145E340 | 7C 08 03 A6 */	mtlr r0
/* 8145E344 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145E348 | 4E 80 00 20 */	blr
.endfn ctor__Q33ipl2cs4sizeFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x134 | 0x8145E34C | size: 0x74
# ipl::cs::size::init(CHANSVm*)
.fn init__Q33ipl2cs4sizeFP7CHANSVm, global
/* 8145E34C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8145E350 | 7C 08 02 A6 */	mflr r0
/* 8145E354 | 3C A0 81 46 */	lis r5, ctor__Q33ipl2cs4sizeFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr@ha
/* 8145E358 | 38 8D 99 18 */	li r4, lbl_81697958@sda21
/* 8145E35C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8145E360 | 38 A5 E2 A4 */	addi r5, r5, ctor__Q33ipl2cs4sizeFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr@l
/* 8145E364 | 38 C0 00 00 */	li r6, 0x0
/* 8145E368 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8145E36C | 3B E0 00 00 */	li r31, 0x0
/* 8145E370 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8145E374 | 7C 7E 1B 78 */	mr r30, r3
/* 8145E378 | 4B FE E5 5D */	bl CHANSVmAddNativeClass
/* 8145E37C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145E380 | 7C 64 1B 78 */	mr r4, r3
/* 8145E384 | 41 82 00 20 */	beq .L_8145E3A4
/* 8145E388 | 3C A0 81 61 */	lis r5, lbl_816177E0@ha
/* 8145E38C | 7F C3 F3 78 */	mr r3, r30
/* 8145E390 | 38 C0 00 02 */	li r6, 0x2
/* 8145E394 | 38 A5 77 E0 */	addi r5, r5, lbl_816177E0@l
/* 8145E398 | 4B FE E8 C1 */	bl CHANSVmAddNativePropertyAccessorsList
/* 8145E39C | 7C 60 00 34 */	cntlzw r0, r3
/* 8145E3A0 | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145E3A4:
/* 8145E3A4 | 7F E3 FB 78 */	mr r3, r31
/* 8145E3A8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8145E3AC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8145E3B0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8145E3B4 | 7C 08 03 A6 */	mtlr r0
/* 8145E3B8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8145E3BC | 4E 80 00 20 */	blr
.endfn init__Q33ipl2cs4sizeFP7CHANSVm

# .text:0x1A8 | 0x8145E3C0 | size: 0x70
# int ipl::cs::size::get<0>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "get<0>__Q33ipl2cs4sizeFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 8145E3C0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145E3C4 | 7C 08 02 A6 */	mflr r0
/* 8145E3C8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145E3CC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145E3D0 | 48 19 B0 F5 */	bl _savegpr_28
/* 8145E3D4 | 7C 9D 23 78 */	mr r29, r4
/* 8145E3D8 | 7C 7C 1B 78 */	mr r28, r3
/* 8145E3DC | 7C BE 2B 78 */	mr r30, r5
/* 8145E3E0 | 3B E0 00 00 */	li r31, 0x0
/* 8145E3E4 | 7F A3 EB 78 */	mr r3, r29
/* 8145E3E8 | 4B FF E1 41 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145E3EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145E3F0 | 41 82 00 24 */	beq .L_8145E414
/* 8145E3F4 | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8145E3F8 | 7F 83 E3 78 */	mr r3, r28
/* 8145E3FC | 7F C4 F3 78 */	mr r4, r30
/* 8145E400 | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 8145E404 | C0 25 00 00 */	lfs f1, 0x0(r5)
/* 8145E408 | 4B FE D5 E5 */	bl CHANSVmSetFloat
/* 8145E40C | 7C 60 00 34 */	cntlzw r0, r3
/* 8145E410 | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145E414:
/* 8145E414 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145E418 | 7F E3 FB 78 */	mr r3, r31
/* 8145E41C | 48 19 B0 F5 */	bl _restgpr_28
/* 8145E420 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145E424 | 7C 08 03 A6 */	mtlr r0
/* 8145E428 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145E42C | 4E 80 00 20 */	blr
.endfn "get<0>__Q33ipl2cs4sizeFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# .text:0x218 | 0x8145E430 | size: 0x74
# int ipl::cs::size::set<0>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "set<0>__Q33ipl2cs4sizeFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 8145E430 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145E434 | 7C 08 02 A6 */	mflr r0
/* 8145E438 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145E43C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145E440 | 48 19 B0 89 */	bl _savegpr_29
/* 8145E444 | 7C 9D 23 78 */	mr r29, r4
/* 8145E448 | 3B C0 00 00 */	li r30, 0x0
/* 8145E44C | 38 80 00 00 */	li r4, 0x0
/* 8145E450 | 4B FE E2 AD */	bl CHANSVmGetArgFloat
/* 8145E454 | 7C 7F 1B 78 */	mr r31, r3
/* 8145E458 | 7F A3 EB 78 */	mr r3, r29
/* 8145E45C | 4B FF E0 CD */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145E460 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145E464 | 41 82 00 24 */	beq .L_8145E488
/* 8145E468 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145E46C | 41 82 00 1C */	beq .L_8145E488
/* 8145E470 | C8 1F 00 00 */	lfd f0, 0x0(r31)
/* 8145E474 | 3B C0 00 01 */	li r30, 0x1
/* 8145E478 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8145E47C | FC 00 00 18 */	frsp f0, f0
/* 8145E480 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145E484 | D0 03 00 00 */	stfs f0, 0x0(r3)
.L_8145E488:
/* 8145E488 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145E48C | 7F C3 F3 78 */	mr r3, r30
/* 8145E490 | 48 19 B0 85 */	bl _restgpr_29
/* 8145E494 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145E498 | 7C 08 03 A6 */	mtlr r0
/* 8145E49C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145E4A0 | 4E 80 00 20 */	blr
.endfn "set<0>__Q33ipl2cs4sizeFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# .text:0x28C | 0x8145E4A4 | size: 0x70
# int ipl::cs::size::get<1>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "get<1>__Q33ipl2cs4sizeFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 8145E4A4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145E4A8 | 7C 08 02 A6 */	mflr r0
/* 8145E4AC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145E4B0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145E4B4 | 48 19 B0 11 */	bl _savegpr_28
/* 8145E4B8 | 7C 9D 23 78 */	mr r29, r4
/* 8145E4BC | 7C 7C 1B 78 */	mr r28, r3
/* 8145E4C0 | 7C BE 2B 78 */	mr r30, r5
/* 8145E4C4 | 3B E0 00 00 */	li r31, 0x0
/* 8145E4C8 | 7F A3 EB 78 */	mr r3, r29
/* 8145E4CC | 4B FF E0 5D */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145E4D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145E4D4 | 41 82 00 24 */	beq .L_8145E4F8
/* 8145E4D8 | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8145E4DC | 7F 83 E3 78 */	mr r3, r28
/* 8145E4E0 | 7F C4 F3 78 */	mr r4, r30
/* 8145E4E4 | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 8145E4E8 | C0 25 00 04 */	lfs f1, 0x4(r5)
/* 8145E4EC | 4B FE D5 01 */	bl CHANSVmSetFloat
/* 8145E4F0 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145E4F4 | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145E4F8:
/* 8145E4F8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145E4FC | 7F E3 FB 78 */	mr r3, r31
/* 8145E500 | 48 19 B0 11 */	bl _restgpr_28
/* 8145E504 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145E508 | 7C 08 03 A6 */	mtlr r0
/* 8145E50C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145E510 | 4E 80 00 20 */	blr
.endfn "get<1>__Q33ipl2cs4sizeFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# .text:0x2FC | 0x8145E514 | size: 0x74
# int ipl::cs::size::set<1>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "set<1>__Q33ipl2cs4sizeFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 8145E514 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145E518 | 7C 08 02 A6 */	mflr r0
/* 8145E51C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145E520 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145E524 | 48 19 AF A5 */	bl _savegpr_29
/* 8145E528 | 7C 9D 23 78 */	mr r29, r4
/* 8145E52C | 3B C0 00 00 */	li r30, 0x0
/* 8145E530 | 38 80 00 00 */	li r4, 0x0
/* 8145E534 | 4B FE E1 C9 */	bl CHANSVmGetArgFloat
/* 8145E538 | 7C 7F 1B 78 */	mr r31, r3
/* 8145E53C | 7F A3 EB 78 */	mr r3, r29
/* 8145E540 | 4B FF DF E9 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145E544 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145E548 | 41 82 00 24 */	beq .L_8145E56C
/* 8145E54C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145E550 | 41 82 00 1C */	beq .L_8145E56C
/* 8145E554 | C8 1F 00 00 */	lfd f0, 0x0(r31)
/* 8145E558 | 3B C0 00 01 */	li r30, 0x1
/* 8145E55C | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8145E560 | FC 00 00 18 */	frsp f0, f0
/* 8145E564 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145E568 | D0 03 00 04 */	stfs f0, 0x4(r3)
.L_8145E56C:
/* 8145E56C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145E570 | 7F C3 F3 78 */	mr r3, r30
/* 8145E574 | 48 19 AF A1 */	bl _restgpr_29
/* 8145E578 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145E57C | 7C 08 03 A6 */	mtlr r0
/* 8145E580 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145E584 | 4E 80 00 20 */	blr
.endfn "set<1>__Q33ipl2cs4sizeFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# 0x816177E0..0x816177F8 | size: 0x18
.rodata
.balign 8

# .rodata:0x0 | 0x816177E0 | size: 0x18
.obj lbl_816177E0, global
	.4byte lbl_8169795D
	.4byte "get<0>__Q33ipl2cs4sizeFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte "set<0>__Q33ipl2cs4sizeFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte lbl_81697963
	.4byte "get<1>__Q33ipl2cs4sizeFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte "set<1>__Q33ipl2cs4sizeFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
.endobj lbl_816177E0

# 0x81697958..0x81697970 | size: 0x18
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697958 | size: 0x5
.obj lbl_81697958, global
	.string "Size"
.endobj lbl_81697958

# .sdata:0x5 | 0x8169795D | size: 0x6
.obj lbl_8169795D, global
	.string "width"
.endobj lbl_8169795D

# .sdata:0xB | 0x81697963 | size: 0xD
.obj lbl_81697963, global
	.4byte 0x68656967
	.4byte 0x68740000
	.4byte 0x00000000
	.byte 0x00
.endobj lbl_81697963
