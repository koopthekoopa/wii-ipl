.include "macros.inc"
.file "iplPointer.cpp"

# 0x81344188..0x813444C4 | size: 0x33C
.text
.balign 4

# .text:0x0 | 0x81344188 | size: 0xE8
# ipl::Pointer::Pointer(EGG::Heap*)
.fn __ct__Q23ipl7PointerFPQ23EGG4Heap, global
/* 81344188 00012588  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8134418C 0001258C  7C 08 02 A6 */	mflr r0
/* 81344190 00012590  90 01 00 24 */	stw r0, 0x24(r1)
/* 81344194 00012594  39 61 00 20 */	addi r11, r1, 0x20
/* 81344198 00012598  48 2B 53 29 */	bl _savegpr_27
/* 8134419C 0001259C  C0 22 80 F0 */	lfs f1, lbl_816944F0@sda21(r0)
/* 813441A0 000125A0  3B C0 00 00 */	li r30, 0x0
/* 813441A4 000125A4  C0 02 80 F4 */	lfs f0, lbl_816944F4@sda21(r0)
/* 813441A8 000125A8  38 A0 FF FF */	li r5, -0x1
/* 813441AC 000125AC  38 00 00 01 */	li r0, 0x1
/* 813441B0 000125B0  90 A3 00 28 */	stw r5, 0x28(r3)
/* 813441B4 000125B4  7C 7B 1B 78 */	mr r27, r3
/* 813441B8 000125B8  7C 9C 23 78 */	mr r28, r4
/* 813441BC 000125BC  D0 23 00 2C */	stfs f1, 0x2c(r3)
/* 813441C0 000125C0  D0 23 00 30 */	stfs f1, 0x30(r3)
/* 813441C4 000125C4  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 813441C8 000125C8  93 C3 00 38 */	stw r30, 0x38(r3)
/* 813441CC 000125CC  9B C3 00 3C */	stb r30, 0x3c(r3)
/* 813441D0 000125D0  98 03 00 3D */	stb r0, 0x3d(r3)
/* 813441D4 000125D4  38 63 00 40 */	addi r3, r3, 0x40
/* 813441D8 000125D8  48 00 04 ED */	bl __ct__Q23ipl11PointerCoreFv
/* 813441DC 000125DC  3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813441E0 000125E0  3C A0 81 63 */	lis r5, lbl_816354F8@ha
/* 813441E4 000125E4  38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813441E8 000125E8  7F 84 E3 78 */	mr r4, r28
/* 813441EC 000125EC  80 63 00 6C */	lwz r3, 0x6c(r3)
/* 813441F0 000125F0  38 A5 54 F8 */	addi r5, r5, lbl_816354F8@l
/* 813441F4 000125F4  38 C0 00 00 */	li r6, 0x0
/* 813441F8 000125F8  4B FF 97 51 */	bl readLayout__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcb
/* 813441FC 000125FC  3F E0 81 63 */	lis r31, lbl_816354D4@ha
/* 81344200 00012600  90 7B 00 00 */	stw r3, 0x0(r27)
/* 81344204 00012604  3B A0 00 00 */	li r29, 0x0
/* 81344208 00012608  3B FF 54 D4 */	addi r31, r31, lbl_816354D4@l
.L_8134420C:
/* 8134420C 0001260C  7F 84 E3 78 */	mr r4, r28
/* 81344210 00012610  38 60 05 80 */	li r3, 0x580
/* 81344214 00012614  38 A0 00 04 */	li r5, 0x4
/* 81344218 00012618  48 2B 3E 99 */	bl fn_815F80B0
/* 8134421C 0001261C  2C 03 00 00 */	cmpwi r3, 0x0
/* 81344220 00012620  41 82 00 18 */	beq .L_81344238
/* 81344224 00012624  80 BB 00 00 */	lwz r5, 0x0(r27)
/* 81344228 00012628  7F 84 E3 78 */	mr r4, r28
/* 8134422C 0001262C  7C FF F0 2E */	lwzx r7, r31, r30
/* 81344230 00012630  38 CD 80 C0 */	li r6, lbl_81696100@sda21
/* 81344234 00012634  48 02 5D F1 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_81344238:
/* 81344238 00012638  7C 9B F2 14 */	add r4, r27, r30
/* 8134423C 0001263C  90 64 00 04 */	stw r3, 0x4(r4)
/* 81344240 00012640  48 02 63 F5 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 81344244 00012644  3B BD 00 01 */	addi r29, r29, 0x1
/* 81344248 00012648  3B DE 00 04 */	addi r30, r30, 0x4
/* 8134424C 0001264C  2C 1D 00 09 */	cmpwi r29, 0x9
/* 81344250 00012650  41 80 FF BC */	blt .L_8134420C
/* 81344254 00012654  39 61 00 20 */	addi r11, r1, 0x20
/* 81344258 00012658  7F 63 DB 78 */	mr r3, r27
/* 8134425C 0001265C  48 2B 52 B1 */	bl _restgpr_27
/* 81344260 00012660  80 01 00 24 */	lwz r0, 0x24(r1)
/* 81344264 00012664  7C 08 03 A6 */	mtlr r0
/* 81344268 00012668  38 21 00 20 */	addi r1, r1, 0x20
/* 8134426C 0001266C  4E 80 00 20 */	blr
.endfn __ct__Q23ipl7PointerFPQ23EGG4Heap

# .text:0xE8 | 0x81344270 | size: 0x174
# ipl::Pointer::calc()
.fn calc__Q23ipl7PointerFv, global
/* 81344270 00012670  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81344274 00012674  7C 08 02 A6 */	mflr r0
/* 81344278 00012678  90 01 00 34 */	stw r0, 0x34(r1)
/* 8134427C 0001267C  39 61 00 30 */	addi r11, r1, 0x30
/* 81344280 00012680  48 2B 52 45 */	bl _savegpr_28
/* 81344284 00012684  7C 7C 1B 78 */	mr r28, r3
/* 81344288 00012688  38 63 00 40 */	addi r3, r3, 0x40
/* 8134428C 0001268C  7F 84 E3 78 */	mr r4, r28
/* 81344290 00012690  48 00 04 C1 */	bl calc__Q23ipl11PointerCoreFPQ23ipl7Pointer
/* 81344294 00012694  80 1C 00 28 */	lwz r0, 0x28(r28)
/* 81344298 00012698  2C 00 00 00 */	cmpwi r0, 0x0
/* 8134429C 0001269C  41 80 01 30 */	blt .L_813443CC
/* 813442A0 000126A0  80 7C 00 24 */	lwz r3, 0x24(r28)
/* 813442A4 000126A4  38 8D 80 C4 */	li r4, lbl_81696104@sda21
/* 813442A8 000126A8  38 A0 00 01 */	li r5, 0x1
/* 813442AC 000126AC  80 63 00 14 */	lwz r3, 0x14(r3)
/* 813442B0 000126B0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 813442B4 000126B4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813442B8 000126B8  7D 89 03 A6 */	mtctr r12
/* 813442BC 000126BC  4E 80 04 21 */	bctrl
/* 813442C0 000126C0  80 DC 00 24 */	lwz r6, 0x24(r28)
/* 813442C4 000126C4  7C 7E 1B 78 */	mr r30, r3
/* 813442C8 000126C8  38 8D 80 CB */	li r4, lbl_8169610B@sda21
/* 813442CC 000126CC  38 A0 00 01 */	li r5, 0x1
/* 813442D0 000126D0  80 66 00 14 */	lwz r3, 0x14(r6)
/* 813442D4 000126D4  81 83 00 00 */	lwz r12, 0x0(r3)
/* 813442D8 000126D8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813442DC 000126DC  7D 89 03 A6 */	mtctr r12
/* 813442E0 000126E0  4E 80 04 21 */	bctrl
/* 813442E4 000126E4  80 DC 00 24 */	lwz r6, 0x24(r28)
/* 813442E8 000126E8  7C 7F 1B 78 */	mr r31, r3
/* 813442EC 000126EC  3C 80 81 63 */	lis r4, lbl_81635503@ha
/* 813442F0 000126F0  38 A0 00 01 */	li r5, 0x1
/* 813442F4 000126F4  80 66 00 14 */	lwz r3, 0x14(r6)
/* 813442F8 000126F8  38 84 55 03 */	addi r4, r4, lbl_81635503@l
/* 813442FC 000126FC  81 83 00 00 */	lwz r12, 0x0(r3)
/* 81344300 00012700  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81344304 00012704  7D 89 03 A6 */	mtctr r12
/* 81344308 00012708  4E 80 04 21 */	bctrl
/* 8134430C 0001270C  7C 7D 1B 78 */	mr r29, r3
/* 81344310 00012710  7F C3 F3 78 */	mr r3, r30
/* 81344314 00012714  38 9C 00 2C */	addi r4, r28, 0x2c
/* 81344318 00012718  48 00 00 CD */	bl SetTranslate__Q34nw4r3lyt4PaneFRCQ34nw4r4math4VEC2
/* 8134431C 0001271C  7F A3 EB 78 */	mr r3, r29
/* 81344320 00012720  38 9C 00 2C */	addi r4, r28, 0x2c
/* 81344324 00012724  48 00 00 C1 */	bl SetTranslate__Q34nw4r3lyt4PaneFRCQ34nw4r4math4VEC2
/* 81344328 00012728  C0 1C 00 34 */	lfs f0, 0x34(r28)
/* 8134432C 0001272C  C0 62 80 F4 */	lfs f3, lbl_816944F4@sda21(r0)
/* 81344330 00012730  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 81344334 00012734  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 81344338 00012738  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 8134433C 0001273C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 81344340 00012740  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 81344344 00012744  40 80 00 08 */	bge .L_8134434C
/* 81344348 00012748  48 00 00 18 */	b .L_81344360
.L_8134434C:
/* 8134434C 0001274C  C0 62 80 F8 */	lfs f3, lbl_816944F8@sda21(r0)
/* 81344350 00012750  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 81344354 00012754  40 81 00 08 */	ble .L_8134435C
/* 81344358 00012758  48 00 00 08 */	b .L_81344360
.L_8134435C:
/* 8134435C 0001275C  FC 60 00 90 */	fmr f3, f0
.L_81344360:
/* 81344360 00012760  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 81344364 00012764  FC 00 18 18 */	frsp f0, f3
/* 81344368 00012768  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 8134436C 0001276C  D0 3F 00 4C */	stfs f1, 0x4c(r31)
/* 81344370 00012770  D0 1F 00 50 */	stfs f0, 0x50(r31)
/* 81344374 00012774  80 1C 00 38 */	lwz r0, 0x38(r28)
/* 81344378 00012778  2C 00 00 00 */	cmpwi r0, 0x0
/* 8134437C 0001277C  40 82 00 0C */	bne .L_81344388
/* 81344380 00012780  C0 42 80 FC */	lfs f2, lbl_816944FC@sda21(r0)
/* 81344384 00012784  48 00 00 08 */	b .L_8134438C
.L_81344388:
/* 81344388 00012788  C0 42 81 00 */	lfs f2, lbl_81694500@sda21(r0)
.L_8134438C:
/* 8134438C 0001278C  C0 22 80 FC */	lfs f1, lbl_816944FC@sda21(r0)
/* 81344390 00012790  FC 00 10 18 */	frsp f0, f2
/* 81344394 00012794  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 81344398 00012798  7F C3 F3 78 */	mr r3, r30
/* 8134439C 0001279C  D0 3E 00 44 */	stfs f1, 0x44(r30)
/* 813443A0 000127A0  D0 1E 00 48 */	stfs f0, 0x48(r30)
/* 813443A4 000127A4  D0 21 00 08 */	stfs f1, 0x8(r1)
/* 813443A8 000127A8  88 9C 00 3C */	lbz r4, 0x3c(r28)
/* 813443AC 000127AC  48 00 00 69 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813443B0 000127B0  88 1C 00 3C */	lbz r0, 0x3c(r28)
/* 813443B4 000127B4  7F A3 EB 78 */	mr r3, r29
/* 813443B8 000127B8  7C 00 00 34 */	cntlzw r0, r0
/* 813443BC 000127BC  54 04 D9 7E */	srwi r4, r0, 5
/* 813443C0 000127C0  48 00 00 55 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813443C4 000127C4  80 7C 00 24 */	lwz r3, 0x24(r28)
/* 813443C8 000127C8  48 02 63 3D */	bl calc__Q33ipl6layout6ObjectFv
.L_813443CC:
/* 813443CC 000127CC  39 61 00 30 */	addi r11, r1, 0x30
/* 813443D0 000127D0  48 2B 51 41 */	bl _restgpr_28
/* 813443D4 000127D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 813443D8 000127D8  7C 08 03 A6 */	mtlr r0
/* 813443DC 000127DC  38 21 00 30 */	addi r1, r1, 0x30
/* 813443E0 000127E0  4E 80 00 20 */	blr
.endfn calc__Q23ipl7PointerFv

# .text:0x25C | 0x813443E4 | size: 0x30
# nw4r::lyt::Pane::SetTranslate(const nw4r::math::VEC2&)
.fn SetTranslate__Q34nw4r3lyt4PaneFRCQ34nw4r4math4VEC2, global
/* 813443E4 000127E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813443E8 000127E8  C0 44 00 04 */	lfs f2, 0x4(r4)
/* 813443EC 000127EC  C0 24 00 00 */	lfs f1, 0x0(r4)
/* 813443F0 000127F0  C0 02 80 F0 */	lfs f0, lbl_816944F0@sda21(r0)
/* 813443F4 000127F4  D0 21 00 08 */	stfs f1, 0x8(r1)
/* 813443F8 000127F8  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 813443FC 000127FC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 81344400 00012800  D0 23 00 2C */	stfs f1, 0x2c(r3)
/* 81344404 00012804  D0 43 00 30 */	stfs f2, 0x30(r3)
/* 81344408 00012808  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 8134440C 0001280C  38 21 00 20 */	addi r1, r1, 0x20
/* 81344410 00012810  4E 80 00 20 */	blr
.endfn SetTranslate__Q34nw4r3lyt4PaneFRCQ34nw4r4math4VEC2

# .text:0x28C | 0x81344414 | size: 0x14
# nw4r::lyt::Pane::SetVisible(bool)
.fn SetVisible__Q34nw4r3lyt4PaneFb, global
/* 81344414 00012814  88 03 00 CF */	lbz r0, 0xcf(r3)
/* 81344418 00012818  54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 8134441C 0001281C  7C 00 23 78 */	or r0, r0, r4
/* 81344420 00012820  98 03 00 CF */	stb r0, 0xcf(r3)
/* 81344424 00012824  4E 80 00 20 */	blr
.endfn SetVisible__Q34nw4r3lyt4PaneFb

# .text:0x2A0 | 0x81344428 | size: 0x50
# ipl::Pointer::draw()
.fn draw__Q23ipl7PointerFv, global
/* 81344428 00012828  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8134442C 0001282C  7C 08 02 A6 */	mflr r0
/* 81344430 00012830  90 01 00 14 */	stw r0, 0x14(r1)
/* 81344434 00012834  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81344438 00012838  7C 7F 1B 78 */	mr r31, r3
/* 8134443C 0001283C  88 03 00 3D */	lbz r0, 0x3d(r3)
/* 81344440 00012840  2C 00 00 00 */	cmpwi r0, 0x0
/* 81344444 00012844  41 82 00 20 */	beq .L_81344464
/* 81344448 00012848  38 63 00 40 */	addi r3, r3, 0x40
/* 8134444C 0001284C  48 00 03 69 */	bl draw__Q23ipl11PointerCoreFv
/* 81344450 00012850  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 81344454 00012854  2C 00 00 00 */	cmpwi r0, 0x0
/* 81344458 00012858  41 80 00 0C */	blt .L_81344464
/* 8134445C 0001285C  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 81344460 00012860  48 02 63 3D */	bl draw__Q33ipl6layout6ObjectFv
.L_81344464:
/* 81344464 00012864  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81344468 00012868  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8134446C 0001286C  7C 08 03 A6 */	mtlr r0
/* 81344470 00012870  38 21 00 10 */	addi r1, r1, 0x10
/* 81344474 00012874  4E 80 00 20 */	blr
.endfn draw__Q23ipl7PointerFv

# .text:0x2F0 | 0x81344478 | size: 0x8
# ipl::Pointer::setState(int, int)
.fn setState__Q23ipl7PointerFii, global
/* 81344478 00012878  38 63 00 40 */	addi r3, r3, 0x40
/* 8134447C 0001287C  48 00 02 C4 */	b setState__Q23ipl11PointerCoreFii
.endfn setState__Q23ipl7PointerFii

# .text:0x2F8 | 0x81344480 | size: 0x8
# ipl::Pointer::changeType(int, int)
.fn changeType__Q23ipl7PointerFii, global
/* 81344480 00012880  38 63 00 40 */	addi r3, r3, 0x40
/* 81344484 00012884  48 00 03 84 */	b changeType__Q23ipl11PointerCoreFii
.endfn changeType__Q23ipl7PointerFii

# .text:0x300 | 0x81344488 | size: 0x3C
# ipl::Pointer::get_layout(int, int)
.fn get_layout__Q23ipl7PointerFii, global
/* 81344488 00012888  2C 05 00 01 */	cmpwi r5, 0x1
/* 8134448C 0001288C  38 00 FF FF */	li r0, -0x1
/* 81344490 00012890  41 82 00 1C */	beq .L_813444AC
/* 81344494 00012894  40 80 00 1C */	bge .L_813444B0
/* 81344498 00012898  2C 05 00 00 */	cmpwi r5, 0x0
/* 8134449C 0001289C  40 80 00 08 */	bge .L_813444A4
/* 813444A0 000128A0  48 00 00 10 */	b .L_813444B0
.L_813444A4:
/* 813444A4 000128A4  38 00 00 00 */	li r0, 0x0
/* 813444A8 000128A8  48 00 00 08 */	b .L_813444B0
.L_813444AC:
/* 813444AC 000128AC  38 00 00 04 */	li r0, 0x4
.L_813444B0:
/* 813444B0 000128B0  7C 00 22 14 */	add r0, r0, r4
/* 813444B4 000128B4  54 00 10 3A */	slwi r0, r0, 2
/* 813444B8 000128B8  7C 63 02 14 */	add r3, r3, r0
/* 813444BC 000128BC  80 63 00 04 */	lwz r3, 0x4(r3)
/* 813444C0 000128C0  4E 80 00 20 */	blr
.endfn get_layout__Q23ipl7PointerFii

# 0x81635458..0x81635510 | size: 0xB8
.data
.balign 8

# .data:0x0 | 0x81635458 | size: 0xD
.obj lbl_81635458, global
	.string "P1_Def.brlyt"
.endobj lbl_81635458

# .data:0xD | 0x81635465 | size: 0xD
.obj lbl_81635465, global
	.string "P2_Def.brlyt"
.endobj lbl_81635465

# .data:0x1A | 0x81635472 | size: 0xD
.obj lbl_81635472, global
	.string "P3_Def.brlyt"
.endobj lbl_81635472

# .data:0x27 | 0x8163547F | size: 0xD
.obj lbl_8163547F, global
	.string "P4_Def.brlyt"
.endobj lbl_8163547F

# .data:0x34 | 0x8163548C | size: 0xD
.obj lbl_8163548C, global
	.string "P1_Cat.brlyt"
.endobj lbl_8163548C

# .data:0x41 | 0x81635499 | size: 0xD
.obj lbl_81635499, global
	.string "P2_Cat.brlyt"
.endobj lbl_81635499

# .data:0x4E | 0x816354A6 | size: 0xD
.obj lbl_816354A6, global
	.string "P3_Cat.brlyt"
.endobj lbl_816354A6

# .data:0x5B | 0x816354B3 | size: 0xD
.obj lbl_816354B3, global
	.string "P4_Cat.brlyt"
.endobj lbl_816354B3

# .data:0x68 | 0x816354C0 | size: 0x14
.obj lbl_816354C0, global
	.4byte 0x6D795F42
	.4byte 0x5363726F
	.4byte 0x6C6C5F61
	.4byte 0x2E62726C
	.4byte 0x79740000
.endobj lbl_816354C0

# .data:0x7C | 0x816354D4 | size: 0x24
.obj lbl_816354D4, global
	.4byte lbl_81635458
	.4byte lbl_81635465
	.4byte lbl_81635472
	.4byte lbl_8163547F
	.4byte lbl_8163548C
	.4byte lbl_81635499
	.4byte lbl_816354A6
	.4byte lbl_816354B3
	.4byte lbl_816354C0
.endobj lbl_816354D4

# .data:0xA0 | 0x816354F8 | size: 0xB
.obj lbl_816354F8, global
	.string "cursor.ash"
.endobj lbl_816354F8

# .data:0xAB | 0x81635503 | size: 0xD
.obj lbl_81635503, global
	.4byte 0x42417277
	.4byte 0x42617365
	.4byte 0x00000000
	.byte 0x00
.endobj lbl_81635503

# 0x816944F0..0x81694508 | size: 0x18
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x816944F0 | size: 0x4
.obj lbl_816944F0, global
	.float 0
.endobj lbl_816944F0

# .sdata2:0x4 | 0x816944F4 | size: 0x4
.obj lbl_816944F4, global
	.float 32
.endobj lbl_816944F4

# .sdata2:0x8 | 0x816944F8 | size: 0x4
.obj lbl_816944F8, global
	.float 128
.endobj lbl_816944F8

# .sdata2:0xC | 0x816944FC | size: 0x4
.obj lbl_816944FC, global
	.float 1
.endobj lbl_816944FC

# .sdata2:0x10 | 0x81694500 | size: 0x8
.obj lbl_81694500, global
	.float -1
	.float 0
.endobj lbl_81694500

# 0x81696100..0x81696118 | size: 0x18
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696100 | size: 0x4
.obj lbl_81696100, global
	.string "arc"
.endobj lbl_81696100

# .sdata:0x4 | 0x81696104 | size: 0x7
.obj lbl_81696104, global
	.string "N_BArw"
.endobj lbl_81696104

# .sdata:0xB | 0x8169610B | size: 0xD
.obj lbl_8169610B, global
	.4byte 0x575F4241
	.4byte 0x72770000
	.4byte 0x00000000
	.byte 0x00
.endobj lbl_8169610B
