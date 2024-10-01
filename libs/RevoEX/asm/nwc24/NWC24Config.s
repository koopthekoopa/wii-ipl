.include "macros.inc"
.file "NWC24Config.c"

# 0x8149F330..0x8149FCC4 | size: 0x994
.text
.balign 4

# .text:0x0 | 0x8149F330 | size: 0x168
.fn NWC24GetMyUserId, global
/* 8149F330 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8149F334 | 7C 08 02 A6 */	mflr r0
/* 8149F338 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8149F33C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8149F340 | 3B E0 00 00 */	li r31, 0x0
/* 8149F344 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8149F348 | 7C 7E 1B 78 */	mr r30, r3
/* 8149F34C | 48 00 0F AD */	bl NWC24IsMsgLibOpened
/* 8149F350 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149F354 | 40 82 00 10 */	bne .L_8149F364
/* 8149F358 | 48 00 0F B5 */	bl NWC24IsMsgLibOpenedByTool
/* 8149F35C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149F360 | 41 82 00 1C */	beq .L_8149F37C
.L_8149F364:
/* 8149F364 | 80 6D AD 98 */	lwz r3, config@sda21(r0)
/* 8149F368 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 8149F36C | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 8149F370 | 90 7E 00 04 */	stw r3, 0x4(r30)
/* 8149F374 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 8149F378 | 48 00 01 04 */	b .L_8149F47C
.L_8149F37C:
/* 8149F37C | 3C 80 80 00 */	lis r4, 0x8000
/* 8149F380 | 80 64 31 C0 */	lwz r3, 0x31c0(r4)
/* 8149F384 | 80 84 31 C4 */	lwz r4, 0x31c4(r4)
/* 8149F388 | 7C 80 1B 79 */	or. r0, r4, r3
/* 8149F38C | 90 9E 00 04 */	stw r4, 0x4(r30)
/* 8149F390 | 90 7E 00 00 */	stw r3, 0x0(r30)
/* 8149F394 | 40 82 00 0C */	bne .L_8149F3A0
/* 8149F398 | 38 60 FF FB */	li r3, -0x5
/* 8149F39C | 48 00 00 08 */	b .L_8149F3A4
.L_8149F3A0:
/* 8149F3A0 | 48 00 EC F9 */	bl NWC24iCheckUserIdCRC
.L_8149F3A4:
/* 8149F3A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149F3A8 | 40 82 00 08 */	bne .L_8149F3B0
/* 8149F3AC | 48 00 00 D4 */	b .L_8149F480
.L_8149F3B0:
/* 8149F3B0 | 48 00 B9 89 */	bl NWC24SuspendScheduler
/* 8149F3B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149F3B8 | 40 80 00 08 */	bge .L_8149F3C0
/* 8149F3BC | 48 00 00 C4 */	b .L_8149F480
.L_8149F3C0:
/* 8149F3C0 | 38 60 00 01 */	li r3, 0x1
/* 8149F3C4 | 48 00 0F 71 */	bl NWC24BlockOpenMsgLib
/* 8149F3C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149F3CC | 40 80 00 08 */	bge .L_8149F3D4
/* 8149F3D0 | 48 00 00 7C */	b .L_8149F44C
.L_8149F3D4:
/* 8149F3D4 | 38 00 00 00 */	li r0, 0x0
/* 8149F3D8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8149F3DC | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8149F3E0 | 40 82 00 0C */	bne .L_8149F3EC
/* 8149F3E4 | 3B E0 FF FD */	li r31, -0x3
/* 8149F3E8 | 48 00 00 4C */	b .L_8149F434
.L_8149F3EC:
/* 8149F3EC | 3C 60 6F C1 */	lis r3, 0x6fc1
/* 8149F3F0 | 3C 80 00 24 */	lis r4, 0x24
/* 8149F3F4 | 38 A3 FF FF */	subi r5, r3, 0x1
/* 8149F3F8 | 38 04 86 F2 */	subi r0, r4, 0x790e
/* 8149F3FC | 90 BE 00 04 */	stw r5, 0x4(r30)
/* 8149F400 | 7F C3 F3 78 */	mr r3, r30
/* 8149F404 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8149F408 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 8149F40C | 48 00 BF 19 */	bl NWC24iRequestGenerateUserId
/* 8149F410 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 8149F414 | 3C A0 80 00 */	lis r5, 0x8000
/* 8149F418 | 80 DE 00 04 */	lwz r6, 0x4(r30)
/* 8149F41C | 7C 7F 1B 78 */	mr r31, r3
/* 8149F420 | 38 65 31 C0 */	addi r3, r5, 0x31c0
/* 8149F424 | 38 80 00 20 */	li r4, 0x20
/* 8149F428 | 90 C5 31 C4 */	stw r6, 0x31c4(r5)
/* 8149F42C | 90 05 31 C0 */	stw r0, 0x31c0(r5)
/* 8149F430 | 48 08 E5 35 */	bl DCStoreRange
.L_8149F434:
/* 8149F434 | 38 60 00 00 */	li r3, 0x0
/* 8149F438 | 48 00 0E FD */	bl NWC24BlockOpenMsgLib
/* 8149F43C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8149F440 | 41 80 00 08 */	blt .L_8149F448
/* 8149F444 | 7C 7F 1B 78 */	mr r31, r3
.L_8149F448:
/* 8149F448 | 7F E3 FB 78 */	mr r3, r31
.L_8149F44C:
/* 8149F44C | 38 03 00 24 */	addi r0, r3, 0x24
/* 8149F450 | 7C 7F 1B 78 */	mr r31, r3
/* 8149F454 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8149F458 | 41 81 00 08 */	bgt .L_8149F460
/* 8149F45C | 3B E0 00 00 */	li r31, 0x0
.L_8149F460:
/* 8149F460 | 48 00 B9 A9 */	bl NWC24ResumeScheduler
/* 8149F464 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149F468 | 40 80 00 14 */	bge .L_8149F47C
/* 8149F46C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8149F470 | 41 82 00 08 */	beq .L_8149F478
/* 8149F474 | 7F E3 FB 78 */	mr r3, r31
.L_8149F478:
/* 8149F478 | 7C 7F 1B 78 */	mr r31, r3
.L_8149F47C:
/* 8149F47C | 7F E3 FB 78 */	mr r3, r31
.L_8149F480:
/* 8149F480 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8149F484 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8149F488 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8149F48C | 7C 08 03 A6 */	mtlr r0
/* 8149F490 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8149F494 | 4E 80 00 20 */	blr
.endfn NWC24GetMyUserId

# .text:0x168 | 0x8149F498 | size: 0x58
.fn NWC24RegisterUserId, global
/* 8149F498 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149F49C | 7C 08 02 A6 */	mflr r0
/* 8149F4A0 | 38 60 00 01 */	li r3, 0x1
/* 8149F4A4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149F4A8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8149F4AC | 48 00 0E 89 */	bl NWC24BlockOpenMsgLib
/* 8149F4B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149F4B4 | 40 80 00 08 */	bge .L_8149F4BC
/* 8149F4B8 | 48 00 00 24 */	b .L_8149F4DC
.L_8149F4BC:
/* 8149F4BC | 48 00 07 75 */	bl RegisterUserId
/* 8149F4C0 | 7C 7F 1B 78 */	mr r31, r3
/* 8149F4C4 | 38 60 00 00 */	li r3, 0x0
/* 8149F4C8 | 48 00 0E 6D */	bl NWC24BlockOpenMsgLib
/* 8149F4CC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8149F4D0 | 41 80 00 08 */	blt .L_8149F4D8
/* 8149F4D4 | 7C 7F 1B 78 */	mr r31, r3
.L_8149F4D8:
/* 8149F4D8 | 7F E3 FB 78 */	mr r3, r31
.L_8149F4DC:
/* 8149F4DC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149F4E0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8149F4E4 | 7C 08 03 A6 */	mtlr r0
/* 8149F4E8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149F4EC | 4E 80 00 20 */	blr
.endfn NWC24RegisterUserId

# .text:0x1C0 | 0x8149F4F0 | size: 0x1E8
.fn NWC24iConfigInit, global
/* 8149F4F0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8149F4F4 | 7C 08 02 A6 */	mflr r0
/* 8149F4F8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8149F4FC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8149F500 | 7C 7F 1B 78 */	mr r31, r3
/* 8149F504 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8149F508 | 3F C0 81 67 */	lis r30, lbl_8166D628@ha
/* 8149F50C | 3B DE D6 28 */	addi r30, r30, lbl_8166D628@l
/* 8149F510 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8149F514 | 3B A0 00 00 */	li r29, 0x0
/* 8149F518 | 80 0D AD A0 */	lwz r0, NWC24WorkP_81698DE0@sda21(r0)
/* 8149F51C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149F520 | 40 82 00 0C */	bne .L_8149F52C
/* 8149F524 | 38 60 FF F7 */	li r3, -0x9
/* 8149F528 | 48 00 01 94 */	b .L_8149F6BC
.L_8149F52C:
/* 8149F52C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149F530 | 41 82 00 0C */	beq .L_8149F53C
/* 8149F534 | 38 7E 00 9C */	addi r3, r30, 0x9c
/* 8149F538 | 4B FF F2 11 */	bl NWC24FDelete
.L_8149F53C:
/* 8149F53C | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 8149F540 | 38 03 13 00 */	addi r0, r3, 0x1300
/* 8149F544 | 90 0D AD 98 */	stw r0, config@sda21(r0)
/* 8149F548 | 48 00 02 09 */	bl NWC24iConfigReload
/* 8149F54C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149F550 | 40 82 00 10 */	bne .L_8149F560
/* 8149F554 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8149F558 | 40 82 00 08 */	bne .L_8149F560
/* 8149F55C | 48 00 01 60 */	b .L_8149F6BC
.L_8149F560:
/* 8149F560 | 2C 03 FF E5 */	cmpwi r3, -0x1b
/* 8149F564 | 40 82 00 20 */	bne .L_8149F584
/* 8149F568 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8149F56C | 40 82 00 18 */	bne .L_8149F584
/* 8149F570 | 80 8D AD 98 */	lwz r4, config@sda21(r0)
/* 8149F574 | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 8149F578 | 28 00 00 08 */	cmplwi r0, 0x8
/* 8149F57C | 40 81 00 08 */	ble .L_8149F584
/* 8149F580 | 48 00 01 3C */	b .L_8149F6BC
.L_8149F584:
/* 8149F584 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149F588 | 41 82 00 14 */	beq .L_8149F59C
/* 8149F58C | 2C 03 FF E5 */	cmpwi r3, -0x1b
/* 8149F590 | 41 82 00 0C */	beq .L_8149F59C
/* 8149F594 | 2C 03 FF F2 */	cmpwi r3, -0xe
/* 8149F598 | 40 82 00 0C */	bne .L_8149F5A4
.L_8149F59C:
/* 8149F59C | 80 6D AD 98 */	lwz r3, config@sda21(r0)
/* 8149F5A0 | 83 A3 00 10 */	lwz r29, 0x10(r3)
.L_8149F5A4:
/* 8149F5A4 | 80 6D AD 98 */	lwz r3, config@sda21(r0)
/* 8149F5A8 | 38 80 00 00 */	li r4, 0x0
/* 8149F5AC | 38 A0 04 00 */	li r5, 0x400
/* 8149F5B0 | 4B E9 0D 85 */	bl memset
/* 8149F5B4 | 80 6D AD 98 */	lwz r3, config@sda21(r0)
/* 8149F5B8 | 38 9E 00 B4 */	addi r4, r30, 0xb4
/* 8149F5BC | 38 A0 00 40 */	li r5, 0x40
/* 8149F5C0 | 38 63 00 18 */	addi r3, r3, 0x18
/* 8149F5C4 | 48 00 09 A5 */	bl NWC24iStrLCpy
/* 8149F5C8 | 80 6D AD 98 */	lwz r3, config@sda21(r0)
/* 8149F5CC | 3B E0 00 01 */	li r31, 0x1
/* 8149F5D0 | 93 ED AD 9C */	stw r31, ConfigModified@sda21(r0)
/* 8149F5D4 | 38 9E 00 C0 */	addi r4, r30, 0xc0
/* 8149F5D8 | 38 63 00 58 */	addi r3, r3, 0x58
/* 8149F5DC | 38 A0 00 20 */	li r5, 0x20
/* 8149F5E0 | 48 00 09 89 */	bl NWC24iStrLCpy
/* 8149F5E4 | 80 6D AD 98 */	lwz r3, config@sda21(r0)
/* 8149F5E8 | 38 9E 00 D4 */	addi r4, r30, 0xd4
/* 8149F5EC | 93 ED AD 9C */	stw r31, ConfigModified@sda21(r0)
/* 8149F5F0 | 38 A0 00 24 */	li r5, 0x24
/* 8149F5F4 | 38 63 00 78 */	addi r3, r3, 0x78
/* 8149F5F8 | 48 00 09 71 */	bl NWC24iStrLCpy
/* 8149F5FC | 93 ED AD 9C */	stw r31, ConfigModified@sda21(r0)
/* 8149F600 | 38 00 00 02 */	li r0, 0x2
/* 8149F604 | 80 6D AD 98 */	lwz r3, config@sda21(r0)
/* 8149F608 | 38 9E 00 E8 */	addi r4, r30, 0xe8
/* 8149F60C | 38 A0 00 80 */	li r5, 0x80
/* 8149F610 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 8149F614 | 80 6D AD 98 */	lwz r3, config@sda21(r0)
/* 8149F618 | 38 63 00 9C */	addi r3, r3, 0x9c
/* 8149F61C | 48 00 09 4D */	bl NWC24iStrLCpy
/* 8149F620 | 80 6D AD 98 */	lwz r3, config@sda21(r0)
/* 8149F624 | 38 9E 01 18 */	addi r4, r30, 0x118
/* 8149F628 | 93 ED AD 9C */	stw r31, ConfigModified@sda21(r0)
/* 8149F62C | 38 A0 00 80 */	li r5, 0x80
/* 8149F630 | 38 63 01 1C */	addi r3, r3, 0x11c
/* 8149F634 | 48 00 09 35 */	bl NWC24iStrLCpy
/* 8149F638 | 80 6D AD 98 */	lwz r3, config@sda21(r0)
/* 8149F63C | 38 9E 01 44 */	addi r4, r30, 0x144
/* 8149F640 | 93 ED AD 9C */	stw r31, ConfigModified@sda21(r0)
/* 8149F644 | 38 A0 00 80 */	li r5, 0x80
/* 8149F648 | 38 63 01 9C */	addi r3, r3, 0x19c
/* 8149F64C | 48 00 09 1D */	bl NWC24iStrLCpy
/* 8149F650 | 80 6D AD 98 */	lwz r3, config@sda21(r0)
/* 8149F654 | 38 9E 01 74 */	addi r4, r30, 0x174
/* 8149F658 | 93 ED AD 9C */	stw r31, ConfigModified@sda21(r0)
/* 8149F65C | 38 A0 00 80 */	li r5, 0x80
/* 8149F660 | 38 63 02 1C */	addi r3, r3, 0x21c
/* 8149F664 | 48 00 09 05 */	bl NWC24iStrLCpy
/* 8149F668 | 80 6D AD 98 */	lwz r3, config@sda21(r0)
/* 8149F66C | 38 9E 01 A0 */	addi r4, r30, 0x1a0
/* 8149F670 | 93 ED AD 9C */	stw r31, ConfigModified@sda21(r0)
/* 8149F674 | 38 A0 00 80 */	li r5, 0x80
/* 8149F678 | 38 63 02 9C */	addi r3, r3, 0x29c
/* 8149F67C | 48 00 08 ED */	bl NWC24iStrLCpy
/* 8149F680 | 80 8D AD 98 */	lwz r4, config@sda21(r0)
/* 8149F684 | 38 00 00 00 */	li r0, 0x0
/* 8149F688 | 3C 60 57 63 */	lis r3, 0x5763
/* 8149F68C | 38 A0 00 08 */	li r5, 0x8
/* 8149F690 | 90 04 00 14 */	stw r0, 0x14(r4)
/* 8149F694 | 38 83 43 66 */	addi r4, r3, 0x4366
/* 8149F698 | 57 A0 06 FE */	clrlwi r0, r29, 27
/* 8149F69C | 80 6D AD 98 */	lwz r3, config@sda21(r0)
/* 8149F6A0 | 90 A3 00 04 */	stw r5, 0x4(r3)
/* 8149F6A4 | 80 6D AD 98 */	lwz r3, config@sda21(r0)
/* 8149F6A8 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8149F6AC | 80 6D AD 98 */	lwz r3, config@sda21(r0)
/* 8149F6B0 | 90 03 00 10 */	stw r0, 0x10(r3)
/* 8149F6B4 | 93 ED AD 9C */	stw r31, ConfigModified@sda21(r0)
/* 8149F6B8 | 48 00 01 8D */	bl NWC24iConfigFlush
.L_8149F6BC:
/* 8149F6BC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8149F6C0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8149F6C4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8149F6C8 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8149F6CC | 7C 08 03 A6 */	mtlr r0
/* 8149F6D0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8149F6D4 | 4E 80 00 20 */	blr
.endfn NWC24iConfigInit

# .text:0x3A8 | 0x8149F6D8 | size: 0x78
.fn NWC24iConfigOpen, global
/* 8149F6D8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149F6DC | 7C 08 02 A6 */	mflr r0
/* 8149F6E0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149F6E4 | 38 00 00 00 */	li r0, 0x0
/* 8149F6E8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8149F6EC | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 8149F6F0 | 90 0D AD 9C */	stw r0, ConfigModified@sda21(r0)
/* 8149F6F4 | 38 03 13 00 */	addi r0, r3, 0x1300
/* 8149F6F8 | 90 0D AD 98 */	stw r0, config@sda21(r0)
/* 8149F6FC | 48 00 00 55 */	bl NWC24iConfigReload
/* 8149F700 | 2C 03 FF EC */	cmpwi r3, -0x14
/* 8149F704 | 7C 7F 1B 78 */	mr r31, r3
/* 8149F708 | 41 82 00 30 */	beq .L_8149F738
/* 8149F70C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149F710 | 40 82 00 28 */	bne .L_8149F738
/* 8149F714 | 80 CD AD 98 */	lwz r6, config@sda21(r0)
/* 8149F718 | 3C A0 80 00 */	lis r5, 0x8000
/* 8149F71C | 38 65 31 C0 */	addi r3, r5, 0x31c0
/* 8149F720 | 38 80 00 20 */	li r4, 0x20
/* 8149F724 | 80 06 00 08 */	lwz r0, 0x8(r6)
/* 8149F728 | 80 C6 00 0C */	lwz r6, 0xc(r6)
/* 8149F72C | 90 C5 31 C4 */	stw r6, 0x31c4(r5)
/* 8149F730 | 90 05 31 C0 */	stw r0, 0x31c0(r5)
/* 8149F734 | 48 08 E2 31 */	bl DCStoreRange
.L_8149F738:
/* 8149F738 | 7F E3 FB 78 */	mr r3, r31
/* 8149F73C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8149F740 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149F744 | 7C 08 03 A6 */	mtlr r0
/* 8149F748 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149F74C | 4E 80 00 20 */	blr
.endfn NWC24iConfigOpen

# .text:0x420 | 0x8149F750 | size: 0xF4
.fn NWC24iConfigReload, global
/* 8149F750 | 94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8149F754 | 7C 08 02 A6 */	mflr r0
/* 8149F758 | 90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8149F75C | 93 E1 00 AC */	stw r31, 0xac(r1)
/* 8149F760 | 80 0D AD A0 */	lwz r0, NWC24WorkP_81698DE0@sda21(r0)
/* 8149F764 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149F768 | 40 82 00 0C */	bne .L_8149F774
/* 8149F76C | 38 60 FF F7 */	li r3, -0x9
/* 8149F770 | 48 00 00 C0 */	b .L_8149F830
.L_8149F774:
/* 8149F774 | 80 8D 9B 14 */	lwz r4, ConfigFile@sda21(r0)
/* 8149F778 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8149F77C | 38 A0 00 02 */	li r5, 0x2
/* 8149F780 | 4B FF E4 89 */	bl NWC24FOpen
/* 8149F784 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149F788 | 40 82 00 2C */	bne .L_8149F7B4
/* 8149F78C | 80 6D AD 98 */	lwz r3, config@sda21(r0)
/* 8149F790 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8149F794 | 38 80 04 00 */	li r4, 0x400
/* 8149F798 | 4B FF EB 4D */	bl NWC24FRead
/* 8149F79C | 7C 7F 1B 78 */	mr r31, r3
/* 8149F7A0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8149F7A4 | 4B FF E7 B9 */	bl NWC24FClose
/* 8149F7A8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8149F7AC | 41 82 00 08 */	beq .L_8149F7B4
/* 8149F7B0 | 7F E3 FB 78 */	mr r3, r31
.L_8149F7B4:
/* 8149F7B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149F7B8 | 40 82 00 1C */	bne .L_8149F7D4
/* 8149F7BC | 48 00 03 89 */	bl CheckConfig
/* 8149F7C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149F7C4 | 40 82 00 10 */	bne .L_8149F7D4
/* 8149F7C8 | 38 00 00 00 */	li r0, 0x0
/* 8149F7CC | 90 0D AD 9C */	stw r0, ConfigModified@sda21(r0)
/* 8149F7D0 | 48 00 00 60 */	b .L_8149F830
.L_8149F7D4:
/* 8149F7D4 | 80 8D 9B 18 */	lwz r4, CfgBakFile@sda21(r0)
/* 8149F7D8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8149F7DC | 38 A0 00 02 */	li r5, 0x2
/* 8149F7E0 | 4B FF E4 29 */	bl NWC24FOpen
/* 8149F7E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149F7E8 | 40 82 00 2C */	bne .L_8149F814
/* 8149F7EC | 80 6D AD 98 */	lwz r3, config@sda21(r0)
/* 8149F7F0 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8149F7F4 | 38 80 04 00 */	li r4, 0x400
/* 8149F7F8 | 4B FF EA ED */	bl NWC24FRead
/* 8149F7FC | 7C 7F 1B 78 */	mr r31, r3
/* 8149F800 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8149F804 | 4B FF E7 59 */	bl NWC24FClose
/* 8149F808 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8149F80C | 41 82 00 08 */	beq .L_8149F814
/* 8149F810 | 7F E3 FB 78 */	mr r3, r31
.L_8149F814:
/* 8149F814 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149F818 | 40 82 00 18 */	bne .L_8149F830
/* 8149F81C | 48 00 03 29 */	bl CheckConfig
/* 8149F820 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149F824 | 40 82 00 0C */	bne .L_8149F830
/* 8149F828 | 38 00 00 01 */	li r0, 0x1
/* 8149F82C | 90 0D AD 9C */	stw r0, ConfigModified@sda21(r0)
.L_8149F830:
/* 8149F830 | 80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8149F834 | 83 E1 00 AC */	lwz r31, 0xac(r1)
/* 8149F838 | 7C 08 03 A6 */	mtlr r0
/* 8149F83C | 38 21 00 B0 */	addi r1, r1, 0xb0
/* 8149F840 | 4E 80 00 20 */	blr
.endfn NWC24iConfigReload

# .text:0x514 | 0x8149F844 | size: 0x180
.fn NWC24iConfigFlush, global
/* 8149F844 | 94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8149F848 | 7C 08 02 A6 */	mflr r0
/* 8149F84C | 90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8149F850 | 93 E1 00 AC */	stw r31, 0xac(r1)
/* 8149F854 | 80 0D AD A0 */	lwz r0, NWC24WorkP_81698DE0@sda21(r0)
/* 8149F858 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149F85C | 40 82 00 0C */	bne .L_8149F868
/* 8149F860 | 38 60 FF F7 */	li r3, -0x9
/* 8149F864 | 48 00 01 4C */	b .L_8149F9B0
.L_8149F868:
/* 8149F868 | 80 0D AD 9C */	lwz r0, ConfigModified@sda21(r0)
/* 8149F86C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149F870 | 40 82 00 0C */	bne .L_8149F87C
/* 8149F874 | 38 60 00 00 */	li r3, 0x0
/* 8149F878 | 48 00 01 38 */	b .L_8149F9B0
.L_8149F87C:
/* 8149F87C | 81 0D AD 98 */	lwz r8, config@sda21(r0)
/* 8149F880 | 38 00 00 1F */	li r0, 0x1f
/* 8149F884 | 38 E0 00 00 */	li r7, 0x0
/* 8149F888 | 7D 06 43 78 */	mr r6, r8
/* 8149F88C | 7C 09 03 A6 */	mtctr r0
.L_8149F890:
/* 8149F890 | 80 66 00 00 */	lwz r3, 0x0(r6)
/* 8149F894 | 80 06 00 04 */	lwz r0, 0x4(r6)
/* 8149F898 | 7C E7 1A 14 */	add r7, r7, r3
/* 8149F89C | 80 66 00 08 */	lwz r3, 0x8(r6)
/* 8149F8A0 | 7C E7 02 14 */	add r7, r7, r0
/* 8149F8A4 | 80 06 00 0C */	lwz r0, 0xc(r6)
/* 8149F8A8 | 7C E7 1A 14 */	add r7, r7, r3
/* 8149F8AC | 80 66 00 10 */	lwz r3, 0x10(r6)
/* 8149F8B0 | 7C E7 02 14 */	add r7, r7, r0
/* 8149F8B4 | 80 06 00 14 */	lwz r0, 0x14(r6)
/* 8149F8B8 | 7C E7 1A 14 */	add r7, r7, r3
/* 8149F8BC | 80 66 00 18 */	lwz r3, 0x18(r6)
/* 8149F8C0 | 7C E7 02 14 */	add r7, r7, r0
/* 8149F8C4 | 80 06 00 1C */	lwz r0, 0x1c(r6)
/* 8149F8C8 | 7C E7 1A 14 */	add r7, r7, r3
/* 8149F8CC | 38 C6 00 20 */	addi r6, r6, 0x20
/* 8149F8D0 | 7C E7 02 14 */	add r7, r7, r0
/* 8149F8D4 | 42 00 FF BC */	bdnz .L_8149F890
/* 8149F8D8 | 80 06 00 00 */	lwz r0, 0x0(r6)
/* 8149F8DC | 38 61 00 08 */	addi r3, r1, 0x8
/* 8149F8E0 | 80 86 00 04 */	lwz r4, 0x4(r6)
/* 8149F8E4 | 38 A0 00 01 */	li r5, 0x1
/* 8149F8E8 | 7C E7 02 14 */	add r7, r7, r0
/* 8149F8EC | 80 06 00 08 */	lwz r0, 0x8(r6)
/* 8149F8F0 | 7C E7 22 14 */	add r7, r7, r4
/* 8149F8F4 | 80 86 00 0C */	lwz r4, 0xc(r6)
/* 8149F8F8 | 7C E7 02 14 */	add r7, r7, r0
/* 8149F8FC | 80 06 00 10 */	lwz r0, 0x10(r6)
/* 8149F900 | 7C E7 22 14 */	add r7, r7, r4
/* 8149F904 | 80 86 00 14 */	lwz r4, 0x14(r6)
/* 8149F908 | 7C E7 02 14 */	add r7, r7, r0
/* 8149F90C | 80 06 00 18 */	lwz r0, 0x18(r6)
/* 8149F910 | 7C E7 22 14 */	add r7, r7, r4
/* 8149F914 | 7C E7 02 14 */	add r7, r7, r0
/* 8149F918 | 90 E8 03 FC */	stw r7, 0x3fc(r8)
/* 8149F91C | 80 8D 9B 14 */	lwz r4, ConfigFile@sda21(r0)
/* 8149F920 | 4B FF E2 E9 */	bl NWC24FOpen
/* 8149F924 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149F928 | 40 82 00 34 */	bne .L_8149F95C
/* 8149F92C | 80 6D AD 98 */	lwz r3, config@sda21(r0)
/* 8149F930 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8149F934 | 38 80 04 00 */	li r4, 0x400
/* 8149F938 | 4B FF EB 7D */	bl NWC24FWrite
/* 8149F93C | 7C 7F 1B 78 */	mr r31, r3
/* 8149F940 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8149F944 | 4B FF E6 19 */	bl NWC24FClose
/* 8149F948 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8149F94C | 41 82 00 08 */	beq .L_8149F954
/* 8149F950 | 7F E3 FB 78 */	mr r3, r31
.L_8149F954:
/* 8149F954 | 38 00 00 00 */	li r0, 0x0
/* 8149F958 | 90 0D AD 9C */	stw r0, ConfigModified@sda21(r0)
.L_8149F95C:
/* 8149F95C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149F960 | 41 82 00 08 */	beq .L_8149F968
/* 8149F964 | 48 00 00 4C */	b .L_8149F9B0
.L_8149F968:
/* 8149F968 | 80 8D 9B 18 */	lwz r4, CfgBakFile@sda21(r0)
/* 8149F96C | 38 61 00 08 */	addi r3, r1, 0x8
/* 8149F970 | 38 A0 00 01 */	li r5, 0x1
/* 8149F974 | 4B FF E2 95 */	bl NWC24FOpen
/* 8149F978 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149F97C | 40 82 00 34 */	bne .L_8149F9B0
/* 8149F980 | 80 6D AD 98 */	lwz r3, config@sda21(r0)
/* 8149F984 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8149F988 | 38 80 04 00 */	li r4, 0x400
/* 8149F98C | 4B FF EB 29 */	bl NWC24FWrite
/* 8149F990 | 7C 7F 1B 78 */	mr r31, r3
/* 8149F994 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8149F998 | 4B FF E5 C5 */	bl NWC24FClose
/* 8149F99C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8149F9A0 | 41 82 00 08 */	beq .L_8149F9A8
/* 8149F9A4 | 7F E3 FB 78 */	mr r3, r31
.L_8149F9A8:
/* 8149F9A8 | 38 00 00 00 */	li r0, 0x0
/* 8149F9AC | 90 0D AD 9C */	stw r0, ConfigModified@sda21(r0)
.L_8149F9B0:
/* 8149F9B0 | 80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8149F9B4 | 83 E1 00 AC */	lwz r31, 0xac(r1)
/* 8149F9B8 | 7C 08 03 A6 */	mtlr r0
/* 8149F9BC | 38 21 00 B0 */	addi r1, r1, 0xb0
/* 8149F9C0 | 4E 80 00 20 */	blr
.endfn NWC24iConfigFlush

# .text:0x694 | 0x8149F9C4 | size: 0xC
.fn NWC24GetAccountDomain, global
/* 8149F9C4 | 80 6D AD 98 */	lwz r3, config@sda21(r0)
/* 8149F9C8 | 38 63 00 18 */	addi r3, r3, 0x18
/* 8149F9CC | 4E 80 00 20 */	blr
.endfn NWC24GetAccountDomain

# .text:0x6A0 | 0x8149F9D0 | size: 0x70
.fn NWC24GetMBoxDir, global
/* 8149F9D0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149F9D4 | 7C 08 02 A6 */	mflr r0
/* 8149F9D8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149F9DC | 38 61 00 08 */	addi r3, r1, 0x8
/* 8149F9E0 | 48 08 BC 05 */	bl fn_8152B5E4
/* 8149F9E4 | 88 01 00 09 */	lbz r0, 0x9(r1)
/* 8149F9E8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149F9EC | 40 82 00 40 */	bne .L_8149FA2C
/* 8149F9F0 | 88 61 00 0A */	lbz r3, 0xa(r1)
/* 8149F9F4 | 28 03 00 07 */	cmplwi r3, 0x7
/* 8149F9F8 | 40 82 00 10 */	bne .L_8149FA08
/* 8149F9FC | 88 01 00 0B */	lbz r0, 0xb(r1)
/* 8149FA00 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149FA04 | 41 82 00 0C */	beq .L_8149FA10
.L_8149FA08:
/* 8149FA08 | 28 03 00 07 */	cmplwi r3, 0x7
/* 8149FA0C | 40 80 00 20 */	bge .L_8149FA2C
.L_8149FA10:
/* 8149FA10 | 3C 60 81 67 */	lis r3, lbl_8166D7F4@ha
/* 8149FA14 | 3C A0 81 67 */	lis r5, lbl_8166D804@ha
/* 8149FA18 | 38 63 D7 F4 */	addi r3, r3, lbl_8166D7F4@l
/* 8149FA1C | 38 80 02 B7 */	li r4, 0x2b7
/* 8149FA20 | 38 A5 D8 04 */	addi r5, r5, lbl_8166D804@l
/* 8149FA24 | 4C C6 31 82 */	crclr cr1eq
/* 8149FA28 | 48 08 ED 09 */	bl OSPanic
.L_8149FA2C:
/* 8149FA2C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149FA30 | 80 6D 9B 10 */	lwz r3, MBoxDir@sda21(r0)
/* 8149FA34 | 7C 08 03 A6 */	mtlr r0
/* 8149FA38 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149FA3C | 4E 80 00 20 */	blr
.endfn NWC24GetMBoxDir

# .text:0x710 | 0x8149FA40 | size: 0x4C
.fn NWC24GetAppId, global
/* 8149FA40 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149FA44 | 7C 08 02 A6 */	mflr r0
/* 8149FA48 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149FA4C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8149FA50 | 48 08 CD 99 */	bl fn_8152C7E8
/* 8149FA54 | 83 E3 00 00 */	lwz r31, 0x0(r3)
/* 8149FA58 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8149FA5C | 40 82 00 18 */	bne .L_8149FA74
/* 8149FA60 | 48 08 CE 0D */	bl fn_8152C86C
/* 8149FA64 | 54 60 06 3F */	clrlwi. r0, r3, 24
/* 8149FA68 | 40 82 00 0C */	bne .L_8149FA74
/* 8149FA6C | 48 0A E9 2D */	bl fn_8154E398
/* 8149FA70 | 83 E3 00 00 */	lwz r31, 0x0(r3)
.L_8149FA74:
/* 8149FA74 | 7F E3 FB 78 */	mr r3, r31
/* 8149FA78 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8149FA7C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149FA80 | 7C 08 03 A6 */	mtlr r0
/* 8149FA84 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149FA88 | 4E 80 00 20 */	blr
.endfn NWC24GetAppId

# .text:0x75C | 0x8149FA8C | size: 0xA4
.fn NWC24GetGroupId, global
/* 8149FA8C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8149FA90 | 7C 08 02 A6 */	mflr r0
/* 8149FA94 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8149FA98 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8149FA9C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8149FAA0 | A3 ED 9B 1C */	lhz r31, lbl_81697B5C@sda21(r0)
/* 8149FAA4 | 48 08 CD C9 */	bl fn_8152C86C
/* 8149FAA8 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8149FAAC | 2C 00 00 80 */	cmpwi r0, 0x80
/* 8149FAB0 | 41 82 00 28 */	beq .L_8149FAD8
/* 8149FAB4 | 40 80 00 10 */	bge .L_8149FAC4
/* 8149FAB8 | 2C 00 00 40 */	cmpwi r0, 0x40
/* 8149FABC | 41 82 00 14 */	beq .L_8149FAD0
/* 8149FAC0 | 48 00 00 54 */	b .L_8149FB14
.L_8149FAC4:
/* 8149FAC4 | 2C 00 00 82 */	cmpwi r0, 0x82
/* 8149FAC8 | 40 80 00 4C */	bge .L_8149FB14
/* 8149FACC | 48 00 00 18 */	b .L_8149FAE4
.L_8149FAD0:
/* 8149FAD0 | 3B E0 00 01 */	li r31, 0x1
/* 8149FAD4 | 48 00 00 40 */	b .L_8149FB14
.L_8149FAD8:
/* 8149FAD8 | 48 0A E8 C1 */	bl fn_8154E398
/* 8149FADC | A3 E3 00 04 */	lhz r31, 0x4(r3)
/* 8149FAE0 | 48 00 00 34 */	b .L_8149FB14
.L_8149FAE4:
/* 8149FAE4 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 8149FAE8 | 3B C3 08 00 */	addi r30, r3, 0x800
/* 8149FAEC | 7F C3 F3 78 */	mr r3, r30
/* 8149FAF0 | 48 0C 76 E9 */	bl NANDGetHomeDir
/* 8149FAF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149FAF8 | 40 82 00 1C */	bne .L_8149FB14
/* 8149FAFC | 7F C3 F3 78 */	mr r3, r30
/* 8149FB00 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8149FB04 | 48 0C 52 E9 */	bl NANDGetStatus
/* 8149FB08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149FB0C | 40 82 00 08 */	bne .L_8149FB14
/* 8149FB10 | A3 E1 00 0C */	lhz r31, 0xc(r1)
.L_8149FB14:
/* 8149FB14 | 7F E3 FB 78 */	mr r3, r31
/* 8149FB18 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8149FB1C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8149FB20 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8149FB24 | 7C 08 03 A6 */	mtlr r0
/* 8149FB28 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8149FB2C | 4E 80 00 20 */	blr
.endfn NWC24GetGroupId

# .text:0x800 | 0x8149FB30 | size: 0x14
.fn NWC24GetIdCreationStage, global
/* 8149FB30 | 80 8D AD 98 */	lwz r4, config@sda21(r0)
/* 8149FB34 | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 8149FB38 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 8149FB3C | 38 60 00 00 */	li r3, 0x0
/* 8149FB40 | 4E 80 00 20 */	blr
.endfn NWC24GetIdCreationStage

# .text:0x814 | 0x8149FB44 | size: 0xEC
.fn CheckConfig, local
/* 8149FB44 | 80 CD AD 98 */	lwz r6, config@sda21(r0)
/* 8149FB48 | 80 66 00 00 */	lwz r3, 0x0(r6)
/* 8149FB4C | 3C 03 A8 9D */	subis r0, r3, 0x5763
/* 8149FB50 | 28 00 43 66 */	cmplwi r0, 0x4366
/* 8149FB54 | 41 82 00 0C */	beq .L_8149FB60
/* 8149FB58 | 38 60 FF F2 */	li r3, -0xe
/* 8149FB5C | 4E 80 00 20 */	blr
.L_8149FB60:
/* 8149FB60 | 38 00 00 1F */	li r0, 0x1f
/* 8149FB64 | 7C C4 33 78 */	mr r4, r6
/* 8149FB68 | 38 A0 00 00 */	li r5, 0x0
/* 8149FB6C | 7C 09 03 A6 */	mtctr r0
.L_8149FB70:
/* 8149FB70 | 80 64 00 00 */	lwz r3, 0x0(r4)
/* 8149FB74 | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 8149FB78 | 7C A5 1A 14 */	add r5, r5, r3
/* 8149FB7C | 80 64 00 08 */	lwz r3, 0x8(r4)
/* 8149FB80 | 7C A5 02 14 */	add r5, r5, r0
/* 8149FB84 | 80 04 00 0C */	lwz r0, 0xc(r4)
/* 8149FB88 | 7C A5 1A 14 */	add r5, r5, r3
/* 8149FB8C | 80 64 00 10 */	lwz r3, 0x10(r4)
/* 8149FB90 | 7C A5 02 14 */	add r5, r5, r0
/* 8149FB94 | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 8149FB98 | 7C A5 1A 14 */	add r5, r5, r3
/* 8149FB9C | 80 64 00 18 */	lwz r3, 0x18(r4)
/* 8149FBA0 | 7C A5 02 14 */	add r5, r5, r0
/* 8149FBA4 | 80 04 00 1C */	lwz r0, 0x1c(r4)
/* 8149FBA8 | 7C A5 1A 14 */	add r5, r5, r3
/* 8149FBAC | 38 84 00 20 */	addi r4, r4, 0x20
/* 8149FBB0 | 7C A5 02 14 */	add r5, r5, r0
/* 8149FBB4 | 42 00 FF BC */	bdnz .L_8149FB70
/* 8149FBB8 | 80 64 00 00 */	lwz r3, 0x0(r4)
/* 8149FBBC | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 8149FBC0 | 7C A5 1A 14 */	add r5, r5, r3
/* 8149FBC4 | 80 64 00 08 */	lwz r3, 0x8(r4)
/* 8149FBC8 | 7C A5 02 14 */	add r5, r5, r0
/* 8149FBCC | 80 04 00 0C */	lwz r0, 0xc(r4)
/* 8149FBD0 | 7C A5 1A 14 */	add r5, r5, r3
/* 8149FBD4 | 80 64 00 10 */	lwz r3, 0x10(r4)
/* 8149FBD8 | 7C A5 02 14 */	add r5, r5, r0
/* 8149FBDC | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 8149FBE0 | 7C A5 1A 14 */	add r5, r5, r3
/* 8149FBE4 | 80 64 00 18 */	lwz r3, 0x18(r4)
/* 8149FBE8 | 7C A5 02 14 */	add r5, r5, r0
/* 8149FBEC | 80 06 03 FC */	lwz r0, 0x3fc(r6)
/* 8149FBF0 | 7C A5 1A 14 */	add r5, r5, r3
/* 8149FBF4 | 7C 00 28 40 */	cmplw r0, r5
/* 8149FBF8 | 41 82 00 0C */	beq .L_8149FC04
/* 8149FBFC | 38 60 FF F2 */	li r3, -0xe
/* 8149FC00 | 4E 80 00 20 */	blr
.L_8149FC04:
/* 8149FC04 | 80 06 00 10 */	lwz r0, 0x10(r6)
/* 8149FC08 | 28 00 00 20 */	cmplwi r0, 0x20
/* 8149FC0C | 41 80 00 0C */	blt .L_8149FC18
/* 8149FC10 | 38 60 FF F2 */	li r3, -0xe
/* 8149FC14 | 4E 80 00 20 */	blr
.L_8149FC18:
/* 8149FC18 | 80 06 00 04 */	lwz r0, 0x4(r6)
/* 8149FC1C | 38 60 00 00 */	li r3, 0x0
/* 8149FC20 | 28 00 00 08 */	cmplwi r0, 0x8
/* 8149FC24 | 4D 82 00 20 */	beqlr
/* 8149FC28 | 38 60 FF E5 */	li r3, -0x1b
/* 8149FC2C | 4E 80 00 20 */	blr
.endfn CheckConfig

# .text:0x900 | 0x8149FC30 | size: 0x94
.fn RegisterUserId, local
/* 8149FC30 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8149FC34 | 7C 08 02 A6 */	mflr r0
/* 8149FC38 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8149FC3C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8149FC40 | 48 00 B0 F9 */	bl NWC24SuspendScheduler
/* 8149FC44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149FC48 | 40 80 00 08 */	bge .L_8149FC50
/* 8149FC4C | 48 00 00 64 */	b .L_8149FCB0
.L_8149FC50:
/* 8149FC50 | 48 00 B8 91 */	bl NWC24iRequestRegisterUserId
/* 8149FC54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149FC58 | 7C 7F 1B 78 */	mr r31, r3
/* 8149FC5C | 41 82 00 44 */	beq .L_8149FCA0
/* 8149FC60 | 2C 03 FF DC */	cmpwi r3, -0x24
/* 8149FC64 | 41 82 00 3C */	beq .L_8149FCA0
/* 8149FC68 | 38 61 00 0C */	addi r3, r1, 0xc
/* 8149FC6C | 38 81 00 08 */	addi r4, r1, 0x8
/* 8149FC70 | 48 00 07 79 */	bl NWC24GetSchedulerError
/* 8149FC74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149FC78 | 40 82 00 1C */	bne .L_8149FC94
/* 8149FC7C | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8149FC80 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149FC84 | 40 81 00 10 */	ble .L_8149FC94
/* 8149FC88 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 8149FC8C | 48 00 09 C9 */	bl NWC24iSetErrorCode
/* 8149FC90 | 48 00 00 10 */	b .L_8149FCA0
.L_8149FC94:
/* 8149FC94 | 3C 7F FF FE */	subis r3, r31, 0x2
/* 8149FC98 | 38 63 55 70 */	addi r3, r3, 0x5570
/* 8149FC9C | 48 00 09 B9 */	bl NWC24iSetErrorCode
.L_8149FCA0:
/* 8149FCA0 | 38 60 00 01 */	li r3, 0x1
/* 8149FCA4 | 48 00 EB 0D */	bl NWC24iSynchronizeRtcCounter
/* 8149FCA8 | 48 00 B1 61 */	bl NWC24ResumeScheduler
/* 8149FCAC | 7F E3 FB 78 */	mr r3, r31
.L_8149FCB0:
/* 8149FCB0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8149FCB4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8149FCB8 | 7C 08 03 A6 */	mtlr r0
/* 8149FCBC | 38 21 00 20 */	addi r1, r1, 0x20
/* 8149FCC0 | 4E 80 00 20 */	blr
.endfn RegisterUserId

# 0x8166D628..0x8166D810 | size: 0x1E8
.data
.balign 8

# .data:0x0 | 0x8166D628 | size: 0x14
.obj lbl_8166D628, global
	.4byte 0x2F736861
	.4byte 0x72656432
	.4byte 0x2F776332
	.4byte 0x342F6D62
	.4byte 0x6F780000
.endobj lbl_8166D628

# .data:0x14 | 0x8166D63C | size: 0x1C
.obj lbl_8166D63C, global
	.4byte 0x2F736861
	.4byte 0x72656432
	.4byte 0x2F776332
	.4byte 0x342F6E77
	.4byte 0x6332346D
	.4byte 0x73672E63
	.4byte 0x66670000
.endobj lbl_8166D63C

# .data:0x30 | 0x8166D658 | size: 0x1C
.obj lbl_8166D658, global
	.4byte 0x2F736861
	.4byte 0x72656432
	.4byte 0x2F776332
	.4byte 0x342F6E77
	.4byte 0x6332346D
	.4byte 0x73672E63
	.4byte 0x626B0000
.endobj lbl_8166D658

# .data:0x4C | 0x8166D674 | size: 0x14
.obj lbl_8166D674, global
	.4byte 0x4E574332
	.4byte 0x345F4944
	.4byte 0x43535F49
	.4byte 0x4E495449
	.4byte 0x414C0000
.endobj lbl_8166D674

# .data:0x60 | 0x8166D688 | size: 0x18
.obj lbl_8166D688, global
	.4byte 0x4E574332
	.4byte 0x345F4944
	.4byte 0x43535F47
	.4byte 0x454E4552
	.4byte 0x41544544
	.4byte 0x00000000
.endobj lbl_8166D688

# .data:0x78 | 0x8166D6A0 | size: 0x16
.obj lbl_8166D6A0, global
	.string "NWC24_IDCS_REGISTERED"
.endobj lbl_8166D6A0

# .data:0x8E | 0x8166D6B6 | size: 0x2
.obj gap_08_8166D6B6_data, global
.hidden gap_08_8166D6B6_data
	.2byte 0x0000
.endobj gap_08_8166D6B6_data

# .data:0x90 | 0x8166D6B8 | size: 0xC
.obj strIdCreationStage$1747, global
	.4byte lbl_8166D674
	.4byte lbl_8166D688
	.4byte lbl_8166D6A0
.endobj strIdCreationStage$1747

# .data:0x9C | 0x8166D6C4 | size: 0x130
.obj lbl_8166D6C4, global
	.string "/shared2/wc24/misc.bin\000\000@wii.com\000\000\000\0000000000000000000\000\000\000\0009999999999999999\000\000\000\000https://amw.wc24.wii.com/cgi-bin/account.cgi\000\000\000\000http://rcw.wc24.wii.com/cgi-bin/check.cgi\000\000\000https://mtw.wc24.wii.com/cgi-bin/receive.cgi\000\000\000\000https://mtw.wc24.wii.com/cgi-bin/delete.cgi\000https://mtw.wc24.wii.com/cgi-bin/send.cgi\000\000"
.endobj lbl_8166D6C4

# .data:0x1CC | 0x8166D7F4 | size: 0x10
.obj lbl_8166D7F4, global
	.4byte 0x4E574332
	.4byte 0x34436F6E
	.4byte 0x6669672E
	.4byte 0x63000000
.endobj lbl_8166D7F4

# .data:0x1DC | 0x8166D804 | size: 0xC
.obj lbl_8166D804, global
	.4byte 0x73746F70
	.4byte 0x7065642E
	.4byte 0x00000000
.endobj lbl_8166D804

# 0x81697B50..0x81697B60 | size: 0x10
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697B50 | size: 0x4
.obj MBoxDir, global
	.4byte lbl_8166D628
.endobj MBoxDir

# .sdata:0x4 | 0x81697B54 | size: 0x4
.obj ConfigFile, global
	.4byte lbl_8166D63C
.endobj ConfigFile

# .sdata:0x8 | 0x81697B58 | size: 0x4
.obj CfgBakFile, global
	.4byte lbl_8166D658
.endobj CfgBakFile

# .sdata:0xC | 0x81697B5C | size: 0x2
.obj lbl_81697B5C, global
	.2byte 0x0001
.endobj lbl_81697B5C

# .sdata:0xE | 0x81697B5E | size: 0x2
.obj gap_11_81697B5E_sdata, global
.hidden gap_11_81697B5E_sdata
	.2byte 0x0000
.endobj gap_11_81697B5E_sdata

# 0x81698DD8..0x81698DE0 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698DD8 | size: 0x4
.obj config, local
	.skip 0x4
.endobj config

# .sbss:0x4 | 0x81698DDC | size: 0x4
.obj ConfigModified, local
	.skip 0x4
.endobj ConfigModified
