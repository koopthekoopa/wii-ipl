.include "macros.inc"
.file "iplCdbWrapper.cpp"

# 0x81340584..0x81340688 | size: 0x104
.text
.balign 4

# .text:0x0 | 0x81340584 | size: 0x64
# ipl::cdb::wrapper::init(void*)
.fn init__Q33ipl3cdb7wrapperFPv, global
/* 81340584 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81340588 | 7C 08 02 A6 */	mflr r0
/* 8134058C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81340590 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81340594 | 48 2B 8F 35 */	bl _savegpr_29
/* 81340598 | 7C 7D 1B 78 */	mr r29, r3
/* 8134059C | 3B E0 00 00 */	li r31, 0x0
.L_813405A0:
/* 813405A0 | 7F A3 EB 78 */	mr r3, r29
/* 813405A4 | 48 14 5A 09 */	bl fn_81485FAC
/* 813405A8 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 813405AC | 7C 7E 1B 78 */	mr r30, r3
/* 813405B0 | 7F E4 FB 78 */	mr r4, r31
/* 813405B4 | 48 00 00 35 */	bl _condition__Q33ipl3cdb7wrapperF6CDBErri
/* 813405B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813405BC | 40 82 FF E4 */	bne .L_813405A0
/* 813405C0 | 2C 1F 00 0A */	cmpwi r31, 0xa
/* 813405C4 | 40 82 00 08 */	bne .L_813405CC
/* 813405C8 | 3B C0 00 24 */	li r30, 0x24
.L_813405CC:
/* 813405CC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813405D0 | 7F C3 F3 78 */	mr r3, r30
/* 813405D4 | 48 2B 8F 41 */	bl _restgpr_29
/* 813405D8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813405DC | 7C 08 03 A6 */	mtlr r0
/* 813405E0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813405E4 | 4E 80 00 20 */	blr
.endfn init__Q33ipl3cdb7wrapperFPv

# .text:0x64 | 0x813405E8 | size: 0x9C
# ipl::cdb::wrapper::_condition(CDBErr, int)
.fn _condition__Q33ipl3cdb7wrapperF6CDBErri, global
/* 813405E8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813405EC | 7C 08 02 A6 */	mflr r0
/* 813405F0 | 2C 03 00 0D */	cmpwi r3, 0xd
/* 813405F4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813405F8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813405FC | 3B E0 00 00 */	li r31, 0x0
/* 81340600 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81340604 | 7C 9E 23 78 */	mr r30, r4
/* 81340608 | 40 82 00 60 */	bne .L_81340668
/* 8134060C | 48 14 F5 E1 */	bl fn_8148FBEC
/* 81340610 | 2C 03 FF FD */	cmpwi r3, -0x3
/* 81340614 | 3B E0 00 00 */	li r31, 0x0
/* 81340618 | 41 82 00 0C */	beq .L_81340624
/* 8134061C | 2C 03 FF FE */	cmpwi r3, -0x2
/* 81340620 | 40 82 00 10 */	bne .L_81340630
.L_81340624:
/* 81340624 | 2C 1E 00 0A */	cmpwi r30, 0xa
/* 81340628 | 40 80 00 08 */	bge .L_81340630
/* 8134062C | 3B E0 00 01 */	li r31, 0x1
.L_81340630:
/* 81340630 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81340634 | 41 82 00 34 */	beq .L_81340668
/* 81340638 | 3C 60 80 00 */	lis r3, 0x8000
/* 8134063C | 38 00 03 E8 */	li r0, 0x3e8
/* 81340640 | 80 A3 00 F8 */	lwz r5, 0xf8(r3)
/* 81340644 | 38 60 00 32 */	li r3, 0x32
/* 81340648 | 38 80 00 00 */	li r4, 0x0
/* 8134064C | 54 A5 F0 BE */	srwi r5, r5, 2
/* 81340650 | 7C A5 03 96 */	divwu r5, r5, r0
/* 81340654 | 7C 05 18 16 */	mulhwu r0, r5, r3
/* 81340658 | 7C 64 19 D6 */	mullw r3, r4, r3
/* 8134065C | 1C 85 00 32 */	mulli r4, r5, 0x32
/* 81340660 | 7C 60 1A 14 */	add r3, r0, r3
/* 81340664 | 48 1F 55 69 */	bl OSSleepTicks
.L_81340668:
/* 81340668 | 7F E3 FB 78 */	mr r3, r31
/* 8134066C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81340670 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81340674 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81340678 | 7C 08 03 A6 */	mtlr r0
/* 8134067C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81340680 | 4E 80 00 20 */	blr
.endfn _condition__Q33ipl3cdb7wrapperF6CDBErri

# .text:0x100 | 0x81340684 | size: 0x4
# ipl::search_cb_(void*, _CDBRecord*)
.fn search_cb___3iplFPvP10_CDBRecord, global
/* 81340684 | 48 00 03 B8 */	b check__Q23ipl11PlayTimeLogFP10_CDBRecord
.endfn search_cb___3iplFPvP10_CDBRecord
