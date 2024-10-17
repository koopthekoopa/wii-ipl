.include "macros.inc"
.file "iplCSFlags.cpp"

# 0x813682C4..0x81368918 | size: 0x654
.text
.balign 4

# .text:0x0 | 0x813682C4 | size: 0x1A4
# ipl::utility::CSFlags::CreateFlagsFile()
.fn CreateFlagsFile__Q33ipl7utility7CSFlagsFv, global
/* 813682C4 | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 813682C8 | 7C 2C 0B 78 */	mr r12, r1
/* 813682CC | 21 6B FE E0 */	subfic r11, r11, -0x120
/* 813682D0 | 7C 21 59 6E */	stwux r1, r1, r11
/* 813682D4 | 7C 08 02 A6 */	mflr r0
/* 813682D8 | 7D 8B 63 78 */	mr r11, r12
/* 813682DC | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 813682E0 | 48 29 11 E9 */	bl _savegpr_29
/* 813682E4 | 3F E0 81 64 */	lis r31, lbl_816423E0@ha
/* 813682E8 | 38 81 00 20 */	addi r4, r1, 0x20
/* 813682EC | 3B FF 23 E0 */	addi r31, r31, lbl_816423E0@l
/* 813682F0 | 3B C0 00 00 */	li r30, 0x0
/* 813682F4 | 38 7F 00 00 */	addi r3, r31, 0x0
/* 813682F8 | 48 1F F2 89 */	bl NANDPrivateGetType
/* 813682FC | 2C 03 FF F4 */	cmpwi r3, -0xc
/* 81368300 | 7C 7D 1B 78 */	mr r29, r3
/* 81368304 | 40 82 00 0C */	bne .L_81368310
/* 81368308 | 3B C0 00 01 */	li r30, 0x1
/* 8136830C | 48 00 00 48 */	b .L_81368354
.L_81368310:
/* 81368310 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81368314 | 41 82 00 40 */	beq .L_81368354
/* 81368318 | 7F A4 EB 78 */	mr r4, r29
/* 8136831C | 38 7F 00 17 */	addi r3, r31, 0x17
/* 81368320 | 4C C6 31 82 */	crclr cr1eq
/* 81368324 | 48 1C 63 7D */	bl OSReport
/* 81368328 | 38 7F 00 00 */	addi r3, r31, 0x0
/* 8136832C | 48 1F BB 7D */	bl NANDPrivateDelete
/* 81368330 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81368334 | 7C 7D 1B 78 */	mr r29, r3
/* 81368338 | 41 82 00 18 */	beq .L_81368350
/* 8136833C | 38 7F 00 52 */	addi r3, r31, 0x52
/* 81368340 | 4C C6 31 82 */	crclr cr1eq
/* 81368344 | 48 1C 63 5D */	bl OSReport
/* 81368348 | 7F A3 EB 78 */	mr r3, r29
/* 8136834C | 48 00 01 00 */	b .L_8136844C
.L_81368350:
/* 81368350 | 3B C0 00 01 */	li r30, 0x1
.L_81368354:
/* 81368354 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81368358 | 41 82 00 F0 */	beq .L_81368448
/* 8136835C | 38 7F 00 86 */	addi r3, r31, 0x86
/* 81368360 | 4C C6 31 82 */	crclr cr1eq
/* 81368364 | 48 1C 63 3D */	bl OSReport
/* 81368368 | 38 7F 00 00 */	addi r3, r31, 0x0
/* 8136836C | 38 80 00 35 */	li r4, 0x35
/* 81368370 | 38 A0 00 00 */	li r5, 0x0
/* 81368374 | 48 1F B9 99 */	bl NANDPrivateCreate
/* 81368378 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136837C | 7C 7D 1B 78 */	mr r29, r3
/* 81368380 | 41 82 00 1C */	beq .L_8136839C
/* 81368384 | 7F A4 EB 78 */	mr r4, r29
/* 81368388 | 38 7F 00 B3 */	addi r3, r31, 0xb3
/* 8136838C | 4C C6 31 82 */	crclr cr1eq
/* 81368390 | 48 1C 63 11 */	bl OSReport
/* 81368394 | 7F A3 EB 78 */	mr r3, r29
/* 81368398 | 48 00 00 B4 */	b .L_8136844C
.L_8136839C:
/* 8136839C | 38 7F 00 00 */	addi r3, r31, 0x0
/* 813683A0 | 38 81 00 60 */	addi r4, r1, 0x60
/* 813683A4 | 38 A0 00 02 */	li r5, 0x2
/* 813683A8 | 48 1F CF 51 */	bl NANDPrivateOpen
/* 813683AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813683B0 | 7C 7D 1B 78 */	mr r29, r3
/* 813683B4 | 41 82 00 1C */	beq .L_813683D0
/* 813683B8 | 7F A4 EB 78 */	mr r4, r29
/* 813683BC | 38 7F 00 E7 */	addi r3, r31, 0xe7
/* 813683C0 | 4C C6 31 82 */	crclr cr1eq
/* 813683C4 | 48 1C 62 DD */	bl OSReport
/* 813683C8 | 7F A3 EB 78 */	mr r3, r29
/* 813683CC | 48 00 00 80 */	b .L_8136844C
.L_813683D0:
/* 813683D0 | 38 61 00 40 */	addi r3, r1, 0x40
/* 813683D4 | 38 80 00 00 */	li r4, 0x0
/* 813683D8 | 38 A0 00 20 */	li r5, 0x20
/* 813683DC | 4B FC 7F 59 */	bl memset
/* 813683E0 | 38 61 00 60 */	addi r3, r1, 0x60
/* 813683E4 | 38 81 00 40 */	addi r4, r1, 0x40
/* 813683E8 | 38 A0 00 20 */	li r5, 0x20
/* 813683EC | 48 1F BC F5 */	bl NANDWrite
/* 813683F0 | 28 03 00 20 */	cmplwi r3, 0x20
/* 813683F4 | 7C 7D 1B 78 */	mr r29, r3
/* 813683F8 | 41 82 00 24 */	beq .L_8136841C
/* 813683FC | 7F A4 EB 78 */	mr r4, r29
/* 81368400 | 38 7F 01 19 */	addi r3, r31, 0x119
/* 81368404 | 4C C6 31 82 */	crclr cr1eq
/* 81368408 | 48 1C 62 99 */	bl OSReport
/* 8136840C | 38 61 00 60 */	addi r3, r1, 0x60
/* 81368410 | 48 1F D0 DD */	bl NANDClose
/* 81368414 | 7F A3 EB 78 */	mr r3, r29
/* 81368418 | 48 00 00 34 */	b .L_8136844C
.L_8136841C:
/* 8136841C | 38 61 00 60 */	addi r3, r1, 0x60
/* 81368420 | 48 1F D0 CD */	bl NANDClose
/* 81368424 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81368428 | 7C 7D 1B 78 */	mr r29, r3
/* 8136842C | 41 82 00 1C */	beq .L_81368448
/* 81368430 | 7F A4 EB 78 */	mr r4, r29
/* 81368434 | 38 7F 01 4A */	addi r3, r31, 0x14a
/* 81368438 | 4C C6 31 82 */	crclr cr1eq
/* 8136843C | 48 1C 62 65 */	bl OSReport
/* 81368440 | 7F A3 EB 78 */	mr r3, r29
/* 81368444 | 48 00 00 08 */	b .L_8136844C
.L_81368448:
/* 81368448 | 7F A3 EB 78 */	mr r3, r29
.L_8136844C:
/* 8136844C | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 81368450 | 7D 4B 53 78 */	mr r11, r10
/* 81368454 | 48 29 10 C1 */	bl _restgpr_29
/* 81368458 | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8136845C | 7C 08 03 A6 */	mtlr r0
/* 81368460 | 7D 41 53 78 */	mr r1, r10
/* 81368464 | 4E 80 00 20 */	blr
.endfn CreateFlagsFile__Q33ipl7utility7CSFlagsFv

# .text:0x1A4 | 0x81368468 | size: 0xF8
# ipl::utility::CSFlags::ReadFlags(ipl::utility::CSFlagsData*)
.fn ReadFlags__Q33ipl7utility7CSFlagsFPQ33ipl7utility11CSFlagsData, global
/* 81368468 | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 8136846C | 7C 2C 0B 78 */	mr r12, r1
/* 81368470 | 21 6B FF 00 */	subfic r11, r11, -0x100
/* 81368474 | 7C 21 59 6E */	stwux r1, r1, r11
/* 81368478 | 7C 08 02 A6 */	mflr r0
/* 8136847C | 7D 8B 63 78 */	mr r11, r12
/* 81368480 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 81368484 | 48 29 10 45 */	bl _savegpr_29
/* 81368488 | 3F E0 81 64 */	lis r31, lbl_816423E0@ha
/* 8136848C | 7C 7D 1B 78 */	mr r29, r3
/* 81368490 | 3B FF 23 E0 */	addi r31, r31, lbl_816423E0@l
/* 81368494 | 38 81 00 40 */	addi r4, r1, 0x40
/* 81368498 | 38 7F 00 00 */	addi r3, r31, 0x0
/* 8136849C | 38 A0 00 01 */	li r5, 0x1
/* 813684A0 | 48 1F CE 59 */	bl NANDPrivateOpen
/* 813684A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813684A8 | 7C 7E 1B 78 */	mr r30, r3
/* 813684AC | 41 82 00 1C */	beq .L_813684C8
/* 813684B0 | 7F C4 F3 78 */	mr r4, r30
/* 813684B4 | 38 7F 01 7D */	addi r3, r31, 0x17d
/* 813684B8 | 4C C6 31 82 */	crclr cr1eq
/* 813684BC | 48 1C 61 E5 */	bl OSReport
/* 813684C0 | 7F C3 F3 78 */	mr r3, r30
/* 813684C4 | 48 00 00 80 */	b .L_81368544
.L_813684C8:
/* 813684C8 | 38 61 00 40 */	addi r3, r1, 0x40
/* 813684CC | 38 81 00 20 */	addi r4, r1, 0x20
/* 813684D0 | 38 A0 00 20 */	li r5, 0x20
/* 813684D4 | 48 1F BB 2D */	bl NANDRead
/* 813684D8 | 28 03 00 20 */	cmplwi r3, 0x20
/* 813684DC | 7C 7E 1B 78 */	mr r30, r3
/* 813684E0 | 41 82 00 24 */	beq .L_81368504
/* 813684E4 | 7F C4 F3 78 */	mr r4, r30
/* 813684E8 | 38 7F 01 A9 */	addi r3, r31, 0x1a9
/* 813684EC | 4C C6 31 82 */	crclr cr1eq
/* 813684F0 | 48 1C 61 B1 */	bl OSReport
/* 813684F4 | 38 61 00 40 */	addi r3, r1, 0x40
/* 813684F8 | 48 1F CF F5 */	bl NANDClose
/* 813684FC | 7F C3 F3 78 */	mr r3, r30
/* 81368500 | 48 00 00 44 */	b .L_81368544
.L_81368504:
/* 81368504 | 38 61 00 40 */	addi r3, r1, 0x40
/* 81368508 | 48 1F CF E5 */	bl NANDClose
/* 8136850C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81368510 | 7C 7E 1B 78 */	mr r30, r3
/* 81368514 | 41 82 00 1C */	beq .L_81368530
/* 81368518 | 7F C4 F3 78 */	mr r4, r30
/* 8136851C | 38 7F 01 D3 */	addi r3, r31, 0x1d3
/* 81368520 | 4C C6 31 82 */	crclr cr1eq
/* 81368524 | 48 1C 61 7D */	bl OSReport
/* 81368528 | 7F C3 F3 78 */	mr r3, r30
/* 8136852C | 48 00 00 18 */	b .L_81368544
.L_81368530:
/* 81368530 | 7F A3 EB 78 */	mr r3, r29
/* 81368534 | 38 81 00 20 */	addi r4, r1, 0x20
/* 81368538 | 38 A0 00 20 */	li r5, 0x20
/* 8136853C | 4B FC 7C F5 */	bl memcpy
/* 81368540 | 7F C3 F3 78 */	mr r3, r30
.L_81368544:
/* 81368544 | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 81368548 | 7D 4B 53 78 */	mr r11, r10
/* 8136854C | 48 29 0F C9 */	bl _restgpr_29
/* 81368550 | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 81368554 | 7C 08 03 A6 */	mtlr r0
/* 81368558 | 7D 41 53 78 */	mr r1, r10
/* 8136855C | 4E 80 00 20 */	blr
.endfn ReadFlags__Q33ipl7utility7CSFlagsFPQ33ipl7utility11CSFlagsData

# .text:0x29C | 0x81368560 | size: 0xF0
# ipl::utility::CSFlags::WriteFlags(ipl::utility::CSFlagsData*)
.fn WriteFlags__Q33ipl7utility7CSFlagsFPQ33ipl7utility11CSFlagsData, global
/* 81368560 | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 81368564 | 7C 2C 0B 78 */	mr r12, r1
/* 81368568 | 21 6B FF 00 */	subfic r11, r11, -0x100
/* 8136856C | 7C 21 59 6E */	stwux r1, r1, r11
/* 81368570 | 7C 08 02 A6 */	mflr r0
/* 81368574 | 7D 8B 63 78 */	mr r11, r12
/* 81368578 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 8136857C | 48 29 0F 4D */	bl _savegpr_29
/* 81368580 | 3F E0 81 64 */	lis r31, lbl_816423E0@ha
/* 81368584 | 7C 7D 1B 78 */	mr r29, r3
/* 81368588 | 3B FF 23 E0 */	addi r31, r31, lbl_816423E0@l
/* 8136858C | 38 81 00 40 */	addi r4, r1, 0x40
/* 81368590 | 38 7F 00 00 */	addi r3, r31, 0x0
/* 81368594 | 38 A0 00 02 */	li r5, 0x2
/* 81368598 | 48 1F CD 61 */	bl NANDPrivateOpen
/* 8136859C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813685A0 | 7C 7E 1B 78 */	mr r30, r3
/* 813685A4 | 41 82 00 1C */	beq .L_813685C0
/* 813685A8 | 7F C4 F3 78 */	mr r4, r30
/* 813685AC | 38 7F 02 00 */	addi r3, r31, 0x200
/* 813685B0 | 4C C6 31 82 */	crclr cr1eq
/* 813685B4 | 48 1C 60 ED */	bl OSReport
/* 813685B8 | 7F C3 F3 78 */	mr r3, r30
/* 813685BC | 48 00 00 78 */	b .L_81368634
.L_813685C0:
/* 813685C0 | 7F A4 EB 78 */	mr r4, r29
/* 813685C4 | 38 61 00 20 */	addi r3, r1, 0x20
/* 813685C8 | 38 A0 00 20 */	li r5, 0x20
/* 813685CC | 4B FC 7C 65 */	bl memcpy
/* 813685D0 | 38 61 00 40 */	addi r3, r1, 0x40
/* 813685D4 | 38 81 00 20 */	addi r4, r1, 0x20
/* 813685D8 | 38 A0 00 20 */	li r5, 0x20
/* 813685DC | 48 1F BB 05 */	bl NANDWrite
/* 813685E0 | 28 03 00 20 */	cmplwi r3, 0x20
/* 813685E4 | 7C 7E 1B 78 */	mr r30, r3
/* 813685E8 | 41 82 00 24 */	beq .L_8136860C
/* 813685EC | 7F C4 F3 78 */	mr r4, r30
/* 813685F0 | 38 7F 02 2D */	addi r3, r31, 0x22d
/* 813685F4 | 4C C6 31 82 */	crclr cr1eq
/* 813685F8 | 48 1C 60 A9 */	bl OSReport
/* 813685FC | 38 61 00 40 */	addi r3, r1, 0x40
/* 81368600 | 48 1F CE ED */	bl NANDClose
/* 81368604 | 7F C3 F3 78 */	mr r3, r30
/* 81368608 | 48 00 00 2C */	b .L_81368634
.L_8136860C:
/* 8136860C | 38 61 00 40 */	addi r3, r1, 0x40
/* 81368610 | 48 1F CE DD */	bl NANDClose
/* 81368614 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81368618 | 7C 7E 1B 78 */	mr r30, r3
/* 8136861C | 41 82 00 18 */	beq .L_81368634
/* 81368620 | 7F C4 F3 78 */	mr r4, r30
/* 81368624 | 38 7F 02 59 */	addi r3, r31, 0x259
/* 81368628 | 4C C6 31 82 */	crclr cr1eq
/* 8136862C | 48 1C 60 75 */	bl OSReport
/* 81368630 | 7F C3 F3 78 */	mr r3, r30
.L_81368634:
/* 81368634 | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 81368638 | 7D 4B 53 78 */	mr r11, r10
/* 8136863C | 48 29 0E D9 */	bl _restgpr_29
/* 81368640 | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 81368644 | 7C 08 03 A6 */	mtlr r0
/* 81368648 | 7D 41 53 78 */	mr r1, r10
/* 8136864C | 4E 80 00 20 */	blr
.endfn WriteFlags__Q33ipl7utility7CSFlagsFPQ33ipl7utility11CSFlagsData

# .text:0x38C | 0x81368650 | size: 0xB8
# ipl::utility::CSFlags::UpdateFlagsFile()
.fn UpdateFlagsFile__Q33ipl7utility7CSFlagsFv, global
/* 81368650 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81368654 | 7C 08 02 A6 */	mflr r0
/* 81368658 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8136865C | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 81368660 | 3F E0 81 64 */	lis r31, lbl_816423E0@ha
/* 81368664 | 3B FF 23 E0 */	addi r31, r31, lbl_816423E0@l
/* 81368668 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 8136866C | 4B FF FC 59 */	bl CreateFlagsFile__Q33ipl7utility7CSFlagsFv
/* 81368670 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81368674 | 7C 7E 1B 78 */	mr r30, r3
/* 81368678 | 41 82 00 1C */	beq .L_81368694
/* 8136867C | 7F C4 F3 78 */	mr r4, r30
/* 81368680 | 38 7F 02 87 */	addi r3, r31, 0x287
/* 81368684 | 4C C6 31 82 */	crclr cr1eq
/* 81368688 | 48 1C 60 19 */	bl OSReport
/* 8136868C | 7F C3 F3 78 */	mr r3, r30
/* 81368690 | 48 00 00 60 */	b .L_813686F0
.L_81368694:
/* 81368694 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81368698 | 4B FF FD D1 */	bl ReadFlags__Q33ipl7utility7CSFlagsFPQ33ipl7utility11CSFlagsData
/* 8136869C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813686A0 | 7C 7E 1B 78 */	mr r30, r3
/* 813686A4 | 41 82 00 1C */	beq .L_813686C0
/* 813686A8 | 7F C4 F3 78 */	mr r4, r30
/* 813686AC | 38 7F 02 BE */	addi r3, r31, 0x2be
/* 813686B0 | 4C C6 31 82 */	crclr cr1eq
/* 813686B4 | 48 1C 5F ED */	bl OSReport
/* 813686B8 | 7F C3 F3 78 */	mr r3, r30
/* 813686BC | 48 00 00 34 */	b .L_813686F0
.L_813686C0:
/* 813686C0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813686C4 | 48 00 00 45 */	bl SetEULAFlag__Q33ipl7utility7CSFlagsFPQ33ipl7utility11CSFlagsData
/* 813686C8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813686CC | 4B FF FE 95 */	bl WriteFlags__Q33ipl7utility7CSFlagsFPQ33ipl7utility11CSFlagsData
/* 813686D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813686D4 | 7C 7E 1B 78 */	mr r30, r3
/* 813686D8 | 41 82 00 18 */	beq .L_813686F0
/* 813686DC | 7F C4 F3 78 */	mr r4, r30
/* 813686E0 | 38 7F 02 F5 */	addi r3, r31, 0x2f5
/* 813686E4 | 4C C6 31 82 */	crclr cr1eq
/* 813686E8 | 48 1C 5F B9 */	bl OSReport
/* 813686EC | 7F C3 F3 78 */	mr r3, r30
.L_813686F0:
/* 813686F0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813686F4 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 813686F8 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 813686FC | 7C 08 03 A6 */	mtlr r0
/* 81368700 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81368704 | 4E 80 00 20 */	blr
.endfn UpdateFlagsFile__Q33ipl7utility7CSFlagsFv

# .text:0x444 | 0x81368708 | size: 0x50
# ipl::utility::CSFlags::SetEULAFlag(ipl::utility::CSFlagsData*)
.fn SetEULAFlag__Q33ipl7utility7CSFlagsFPQ33ipl7utility11CSFlagsData, global
/* 81368708 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136870C | 7C 08 02 A6 */	mflr r0
/* 81368710 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81368714 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81368718 | 7C 7F 1B 78 */	mr r31, r3
/* 8136871C | 48 20 20 C1 */	bl fn_8156A7DC
/* 81368720 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81368724 | 41 82 00 14 */	beq .L_81368738
/* 81368728 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 8136872C | 60 00 00 01 */	ori r0, r0, 0x1
/* 81368730 | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 81368734 | 48 00 00 10 */	b .L_81368744
.L_81368738:
/* 81368738 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 8136873C | 54 00 00 3C */	clrrwi r0, r0, 1
/* 81368740 | 90 1F 00 04 */	stw r0, 0x4(r31)
.L_81368744:
/* 81368744 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81368748 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136874C | 7C 08 03 A6 */	mtlr r0
/* 81368750 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81368754 | 4E 80 00 20 */	blr
.endfn SetEULAFlag__Q33ipl7utility7CSFlagsFPQ33ipl7utility11CSFlagsData

# .text:0x494 | 0x81368758 | size: 0x1C0
.fn iplCSFlags_81368758, global
/* 81368758 | 94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8136875C | 7C 08 02 A6 */	mflr r0
/* 81368760 | 90 01 00 94 */	stw r0, 0x94(r1)
/* 81368764 | DB E1 00 80 */	stfd f31, 0x80(r1)
/* 81368768 | F3 E1 00 88 */	psq_st f31, 0x88(r1), 0, qr0
/* 8136876C | DB C1 00 70 */	stfd f30, 0x70(r1)
/* 81368770 | F3 C1 00 78 */	psq_st f30, 0x78(r1), 0, qr0
/* 81368774 | DB A1 00 60 */	stfd f29, 0x60(r1)
/* 81368778 | F3 A1 00 68 */	psq_st f29, 0x68(r1), 0, qr0
/* 8136877C | DB 81 00 50 */	stfd f28, 0x50(r1)
/* 81368780 | F3 81 00 58 */	psq_st f28, 0x58(r1), 0, qr0
/* 81368784 | DB 61 00 40 */	stfd f27, 0x40(r1)
/* 81368788 | F3 61 00 48 */	psq_st f27, 0x48(r1), 0, qr0
/* 8136878C | FF 60 08 90 */	fmr f27, f1
/* 81368790 | FF 80 10 90 */	fmr f28, f2
/* 81368794 | 93 E1 00 3C */	stw r31, 0x3c(r1)
/* 81368798 | FF A0 18 90 */	fmr f29, f3
/* 8136879C | FF C0 20 90 */	fmr f30, f4
/* 813687A0 | 7C 9F 23 78 */	mr r31, r4
/* 813687A4 | 93 C1 00 38 */	stw r30, 0x38(r1)
/* 813687A8 | FF E0 28 90 */	fmr f31, f5
/* 813687AC | 7C 7E 1B 78 */	mr r30, r3
/* 813687B0 | 48 1D B1 1D */	bl GXClearVtxDesc
/* 813687B4 | 38 60 00 09 */	li r3, 0x9
/* 813687B8 | 38 80 00 01 */	li r4, 0x1
/* 813687BC | 48 1D AC D1 */	bl GXSetVtxDesc
/* 813687C0 | 38 60 00 0B */	li r3, 0xb
/* 813687C4 | 38 80 00 01 */	li r4, 0x1
/* 813687C8 | 48 1D AC C5 */	bl GXSetVtxDesc
/* 813687CC | 38 60 00 00 */	li r3, 0x0
/* 813687D0 | 38 80 00 09 */	li r4, 0x9
/* 813687D4 | 38 A0 00 01 */	li r5, 0x1
/* 813687D8 | 38 C0 00 04 */	li r6, 0x4
/* 813687DC | 38 E0 00 00 */	li r7, 0x0
/* 813687E0 | 48 1D B1 21 */	bl GXSetVtxAttrFmt
/* 813687E4 | 38 60 00 00 */	li r3, 0x0
/* 813687E8 | 38 80 00 0B */	li r4, 0xb
/* 813687EC | 38 A0 00 01 */	li r5, 0x1
/* 813687F0 | 38 C0 00 05 */	li r6, 0x5
/* 813687F4 | 38 E0 00 00 */	li r7, 0x0
/* 813687F8 | 48 1D B1 09 */	bl GXSetVtxAttrFmt
/* 813687FC | 38 60 00 00 */	li r3, 0x0
/* 81368800 | 48 1D C4 BD */	bl GXSetCullMode
/* 81368804 | 38 60 00 01 */	li r3, 0x1
/* 81368808 | 48 1D D1 BD */	bl GXSetNumChans
/* 8136880C | 38 60 00 04 */	li r3, 0x4
/* 81368810 | 38 80 00 00 */	li r4, 0x0
/* 81368814 | 38 A0 00 01 */	li r5, 0x1
/* 81368818 | 38 C0 00 01 */	li r6, 0x1
/* 8136881C | 38 E0 00 00 */	li r7, 0x0
/* 81368820 | 39 00 00 00 */	li r8, 0x0
/* 81368824 | 39 20 00 02 */	li r9, 0x2
/* 81368828 | 48 1D D1 C1 */	bl GXSetChanCtrl
/* 8136882C | 38 60 00 00 */	li r3, 0x0
/* 81368830 | 48 1D B7 2D */	bl GXSetNumTexGens
/* 81368834 | 38 60 00 01 */	li r3, 0x1
/* 81368838 | 48 1D EB BD */	bl GXSetNumTevStages
/* 8136883C | 38 60 00 00 */	li r3, 0x0
/* 81368840 | 38 80 00 04 */	li r4, 0x4
/* 81368844 | 48 1D E5 55 */	bl GXSetTevOp
/* 81368848 | 38 60 00 00 */	li r3, 0x0
/* 8136884C | 38 80 00 FF */	li r4, 0xff
/* 81368850 | 38 A0 00 FF */	li r5, 0xff
/* 81368854 | 38 C0 00 04 */	li r6, 0x4
/* 81368858 | 48 1D EA 41 */	bl GXSetTevOrder
/* 8136885C | 38 60 00 00 */	li r3, 0x0
/* 81368860 | 38 80 00 00 */	li r4, 0x0
/* 81368864 | 38 A0 00 00 */	li r5, 0x0
/* 81368868 | 38 C0 00 05 */	li r6, 0x5
/* 8136886C | 48 1D EE FD */	bl GXSetBlendMode
/* 81368870 | C0 22 82 78 */	lfs f1, lbl_81694678@sda21(r0)
/* 81368874 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81368878 | FC 40 08 90 */	fmr f2, f1
/* 8136887C | FC 60 08 90 */	fmr f3, f1
/* 81368880 | 48 1D 89 C9 */	bl fn_81541248
/* 81368884 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81368888 | 38 80 00 00 */	li r4, 0x0
/* 8136888C | 48 1D F4 95 */	bl GXLoadPosMtxImm
/* 81368890 | 7F C3 F3 78 */	mr r3, r30
/* 81368894 | 38 80 00 00 */	li r4, 0x0
/* 81368898 | 48 1D C3 81 */	bl GXSetLineWidth
/* 8136889C | 38 60 00 A8 */	li r3, 0xa8
/* 813688A0 | 38 80 00 00 */	li r4, 0x0
/* 813688A4 | 38 A0 00 02 */	li r5, 0x2
/* 813688A8 | 48 1D C1 4D */	bl GXBegin
/* 813688AC | 3C 60 CC 01 */	lis r3, 0xcc01
/* 813688B0 | D3 63 80 00 */	stfs f27, -0x8000(r3)
/* 813688B4 | D3 83 80 00 */	stfs f28, -0x8000(r3)
/* 813688B8 | D3 E3 80 00 */	stfs f31, -0x8000(r3)
/* 813688BC | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 813688C0 | 90 03 80 00 */	stw r0, -0x8000(r3)
/* 813688C4 | D3 A3 80 00 */	stfs f29, -0x8000(r3)
/* 813688C8 | D3 C3 80 00 */	stfs f30, -0x8000(r3)
/* 813688CC | D3 E3 80 00 */	stfs f31, -0x8000(r3)
/* 813688D0 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 813688D4 | 90 03 80 00 */	stw r0, -0x8000(r3)
/* 813688D8 | E3 E1 00 88 */	psq_l f31, 0x88(r1), 0, qr0
/* 813688DC | CB E1 00 80 */	lfd f31, 0x80(r1)
/* 813688E0 | E3 C1 00 78 */	psq_l f30, 0x78(r1), 0, qr0
/* 813688E4 | CB C1 00 70 */	lfd f30, 0x70(r1)
/* 813688E8 | E3 A1 00 68 */	psq_l f29, 0x68(r1), 0, qr0
/* 813688EC | CB A1 00 60 */	lfd f29, 0x60(r1)
/* 813688F0 | E3 81 00 58 */	psq_l f28, 0x58(r1), 0, qr0
/* 813688F4 | CB 81 00 50 */	lfd f28, 0x50(r1)
/* 813688F8 | E3 61 00 48 */	psq_l f27, 0x48(r1), 0, qr0
/* 813688FC | CB 61 00 40 */	lfd f27, 0x40(r1)
/* 81368900 | 83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 81368904 | 80 01 00 94 */	lwz r0, 0x94(r1)
/* 81368908 | 83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8136890C | 7C 08 03 A6 */	mtlr r0
/* 81368910 | 38 21 00 90 */	addi r1, r1, 0x90
/* 81368914 | 4E 80 00 20 */	blr
.endfn iplCSFlags_81368758

# 0x816423E0..0x81642710 | size: 0x330
.data
.balign 8

# .data:0x0 | 0x816423E0 | size: 0x32D
.obj lbl_816423E0, global
	.4byte 0x2F736861
	.4byte 0x72656432
	.4byte 0x2F737973
	.4byte 0x2F666C61
	.4byte 0x67732E64
	.4byte 0x61740043
	.4byte 0x53466C61
	.4byte 0x67733A3A
	.4byte 0x43726561
	.4byte 0x7465466C
	.4byte 0x61677346
	.4byte 0x696C653A
	.4byte 0x20746865
	.4byte 0x20666C61
	.4byte 0x67206669
	.4byte 0x6C652069
	.4byte 0x73206261
	.4byte 0x64207374
	.4byte 0x61747573
	.4byte 0x3A202564
	.4byte 0x0A004353
	.4byte 0x466C6167
	.4byte 0x733A3A43
	.4byte 0x72656174
	.4byte 0x65466C61
	.4byte 0x67734669
	.4byte 0x6C653A20
	.4byte 0x64656C65
	.4byte 0x74652066
	.4byte 0x6C616720
	.4byte 0x66696C65
	.4byte 0x20666169
	.4byte 0x6C65642E
	.4byte 0x0A004353
	.4byte 0x466C6167
	.4byte 0x733A3A43
	.4byte 0x72656174
	.4byte 0x65466C61
	.4byte 0x67734669
	.4byte 0x6C653A20
	.4byte 0x63726561
	.4byte 0x74652066
	.4byte 0x6C616773
	.4byte 0x2E646174
	.4byte 0x2E0A0043
	.4byte 0x53466C61
	.4byte 0x67733A3A
	.4byte 0x43726561
	.4byte 0x7465466C
	.4byte 0x61677346
	.4byte 0x696C653A
	.4byte 0x20637265
	.4byte 0x61746520
	.4byte 0x61206669
	.4byte 0x6C652066
	.4byte 0x61696C65
	.4byte 0x643A2025
	.4byte 0x640A0043
	.4byte 0x53466C61
	.4byte 0x67733A3A
	.4byte 0x43726561
	.4byte 0x7465466C
	.4byte 0x61677346
	.4byte 0x696C653A
	.4byte 0x206F7065
	.4byte 0x6E206120
	.4byte 0x66696C65
	.4byte 0x20666169
	.4byte 0x6C65643A
	.4byte 0x2025640A
	.4byte 0x00435346
	.4byte 0x6C616773
	.4byte 0x3A3A4372
	.4byte 0x65617465
	.4byte 0x466C6167
	.4byte 0x7346696C
	.4byte 0x653A2077
	.4byte 0x72697465
	.4byte 0x20646174
	.4byte 0x61206661
	.4byte 0x696C6564
	.4byte 0x3A202564
	.4byte 0x0A004353
	.4byte 0x466C6167
	.4byte 0x733A3A43
	.4byte 0x72656174
	.4byte 0x65466C61
	.4byte 0x67734669
	.4byte 0x6C653A20
	.4byte 0x636C6F73
	.4byte 0x65206120
	.4byte 0x66696C65
	.4byte 0x20666169
	.4byte 0x6C65643A
	.4byte 0x2025640A
	.4byte 0x00435346
	.4byte 0x6C616773
	.4byte 0x3A3A5265
	.4byte 0x6164466C
	.4byte 0x6167733A
	.4byte 0x206F7065
	.4byte 0x6E206120
	.4byte 0x66696C65
	.4byte 0x20666169
	.4byte 0x6C65643A
	.4byte 0x2025640A
	.4byte 0x00435346
	.4byte 0x6C616773
	.4byte 0x3A3A5265
	.4byte 0x6164466C
	.4byte 0x6167733A
	.4byte 0x20726561
	.4byte 0x64206461
	.4byte 0x74612066
	.4byte 0x61696C65
	.4byte 0x643A2025
	.4byte 0x640A0043
	.4byte 0x53466C61
	.4byte 0x67733A3A
	.4byte 0x52656164
	.4byte 0x466C6167
	.4byte 0x733A2063
	.4byte 0x6C6F7365
	.4byte 0x20612066
	.4byte 0x696C6520
	.4byte 0x6661696C
	.4byte 0x65643A20
	.4byte 0x25640A00
	.4byte 0x4353466C
	.4byte 0x6167733A
	.4byte 0x3A577269
	.4byte 0x7465466C
	.4byte 0x6167733A
	.4byte 0x206F7065
	.4byte 0x6E206120
	.4byte 0x66696C65
	.4byte 0x20666169
	.4byte 0x6C65643A
	.4byte 0x2025640A
	.4byte 0x00435346
	.4byte 0x6C616773
	.4byte 0x3A3A5772
	.4byte 0x69746546
	.4byte 0x6C616773
	.4byte 0x3A207772
	.4byte 0x69746520
	.4byte 0x64617461
	.4byte 0x20666169
	.4byte 0x6C65643A
	.4byte 0x2025640A
	.4byte 0x00435346
	.4byte 0x6C616773
	.4byte 0x3A3A5772
	.4byte 0x69746546
	.4byte 0x6C616773
	.4byte 0x3A20636C
	.4byte 0x6F736520
	.4byte 0x61206669
	.4byte 0x6C652066
	.4byte 0x61696C65
	.4byte 0x643A2025
	.4byte 0x640A0043
	.4byte 0x53466C61
	.4byte 0x67733A3A
	.4byte 0x55706461
	.4byte 0x7465466C
	.4byte 0x61677346
	.4byte 0x696C653A
	.4byte 0x20666C61
	.4byte 0x67206669
	.4byte 0x6C652069
	.4byte 0x73206261
	.4byte 0x64207374
	.4byte 0x61747573
	.4byte 0x3A202564
	.4byte 0x0A004353
	.4byte 0x466C6167
	.4byte 0x733A3A55
	.4byte 0x70646174
	.4byte 0x65466C61
	.4byte 0x67734669
	.4byte 0x6C653A20
	.4byte 0x6661696C
	.4byte 0x65642074
	.4byte 0x6F207265
	.4byte 0x61642074
	.4byte 0x68652066
	.4byte 0x6C61673A
	.4byte 0x2025640A
	.4byte 0x00435346
	.4byte 0x6C616773
	.4byte 0x3A3A5570
	.4byte 0x64617465
	.4byte 0x466C6167
	.4byte 0x7346696C
	.4byte 0x653A2066
	.4byte 0x61696C65
	.4byte 0x6420746F
	.4byte 0x20777269
	.4byte 0x74652074
	.4byte 0x68652066
	.4byte 0x6C61673A
	.4byte 0x2025640A
	.byte 0x00
.endobj lbl_816423E0

# .data:0x32D | 0x8164270D | size: 0x3
.obj gap_08_8164270D_data, global
.hidden gap_08_8164270D_data
	.byte 0x00, 0x00, 0x00
.endobj gap_08_8164270D_data
