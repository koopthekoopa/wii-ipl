.include "macros.inc"
.file "iplPlayTimeLog.cpp"

# 0x81089550..0x81089620 | size: 0xD0
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x81089550 | size: 0xD0
# ipl::PlayTimeLog::smArg
.obj smArg__Q23ipl11PlayTimeLog, global
	.skip 0xD0
.endobj smArg__Q23ipl11PlayTimeLog

# 0x81340688..0x8134197C | size: 0x12F4
.text
.balign 4

# .text:0x0 | 0x81340688 | size: 0x44
# ipl::PlayTimeLog::PlayTimeLog()
.fn __ct__Q23ipl11PlayTimeLogFv, global
/* 81340688 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8134068C | 7C 08 02 A6 */	mflr r0
/* 81340690 | 38 80 00 00 */	li r4, 0x0
/* 81340694 | 38 A0 00 80 */	li r5, 0x80
/* 81340698 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8134069C | 38 00 00 00 */	li r0, 0x0
/* 813406A0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813406A4 | 7C 7F 1B 78 */	mr r31, r3
/* 813406A8 | 98 03 00 00 */	stb r0, 0x0(r3)
/* 813406AC | 38 63 00 08 */	addi r3, r3, 0x8
/* 813406B0 | 4B FE FC 85 */	bl memset
/* 813406B4 | 7F E3 FB 78 */	mr r3, r31
/* 813406B8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813406BC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813406C0 | 7C 08 03 A6 */	mtlr r0
/* 813406C4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813406C8 | 4E 80 00 20 */	blr
.endfn __ct__Q23ipl11PlayTimeLogFv

# .text:0x44 | 0x813406CC | size: 0x210
# ipl::PlayTimeLog::log()
.fn log__Q23ipl11PlayTimeLogFv, global
/* 813406CC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813406D0 | 7C 08 02 A6 */	mflr r0
/* 813406D4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813406D8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813406DC | 48 2B 8D ED */	bl _savegpr_29
/* 813406E0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl11PlayTimeLog@ha
/* 813406E4 | 38 63 95 50 */	addi r3, r3, smArg__Q23ipl11PlayTimeLog@l
/* 813406E8 | 38 63 00 08 */	addi r3, r3, 0x8
/* 813406EC | 48 1F 67 F5 */	bl fn_81536EE0
/* 813406F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813406F4 | 41 82 01 D0 */	beq .L_813408C4
/* 813406F8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813406FC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81340700 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 81340704 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81340708 | 41 82 00 0C */	beq .L_81340714
/* 8134070C | 3B A0 00 00 */	li r29, 0x0
/* 81340710 | 48 00 00 08 */	b .L_81340718
.L_81340714:
/* 81340714 | 83 A3 00 7C */	lwz r29, 0x7c(r3)
.L_81340718:
/* 81340718 | 3F C0 81 09 */	lis r30, smArg__Q23ipl11PlayTimeLog@ha
/* 8134071C | 3B E0 00 00 */	li r31, 0x0
/* 81340720 | 3B DE 95 50 */	addi r30, r30, smArg__Q23ipl11PlayTimeLog@l
/* 81340724 | 93 FE 00 C8 */	stw r31, 0xc8(r30)
/* 81340728 | 38 BE 00 88 */	addi r5, r30, 0x88
/* 8134072C | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 81340730 | 80 9E 00 6C */	lwz r4, 0x6c(r30)
/* 81340734 | 48 1F 58 31 */	bl OSTicksToCalendarTime
/* 81340738 | 80 1E 00 9C */	lwz r0, 0x9c(r30)
/* 8134073C | 2C 00 07 F3 */	cmpwi r0, 0x7f3
/* 81340740 | 40 81 00 30 */	ble .L_81340770
/* 81340744 | 38 60 07 F3 */	li r3, 0x7f3
/* 81340748 | 38 80 00 0B */	li r4, 0xb
/* 8134074C | 38 00 00 1F */	li r0, 0x1f
/* 81340750 | 90 7E 00 9C */	stw r3, 0x9c(r30)
/* 81340754 | 38 7E 00 88 */	addi r3, r30, 0x88
/* 81340758 | 90 9E 00 98 */	stw r4, 0x98(r30)
/* 8134075C | 90 1E 00 94 */	stw r0, 0x94(r30)
/* 81340760 | 48 1F 59 CD */	bl OSCalendarTimeToTicks
/* 81340764 | 38 BE 00 88 */	addi r5, r30, 0x88
/* 81340768 | 48 1F 57 FD */	bl OSTicksToCalendarTime
/* 8134076C | 48 00 00 30 */	b .L_8134079C
.L_81340770:
/* 81340770 | 2C 00 07 D0 */	cmpwi r0, 0x7d0
/* 81340774 | 40 80 00 28 */	bge .L_8134079C
/* 81340778 | 38 60 07 D0 */	li r3, 0x7d0
/* 8134077C | 38 00 00 01 */	li r0, 0x1
/* 81340780 | 90 7E 00 9C */	stw r3, 0x9c(r30)
/* 81340784 | 38 7E 00 88 */	addi r3, r30, 0x88
/* 81340788 | 93 FE 00 98 */	stw r31, 0x98(r30)
/* 8134078C | 90 1E 00 94 */	stw r0, 0x94(r30)
/* 81340790 | 48 1F 59 9D */	bl OSCalendarTimeToTicks
/* 81340794 | 38 BE 00 88 */	addi r5, r30, 0x88
/* 81340798 | 48 1F 57 CD */	bl OSTicksToCalendarTime
.L_8134079C:
/* 8134079C | 3F C0 81 09 */	lis r30, smArg__Q23ipl11PlayTimeLog@ha
/* 813407A0 | 38 00 00 00 */	li r0, 0x0
/* 813407A4 | 3B FE 95 50 */	addi r31, r30, smArg__Q23ipl11PlayTimeLog@l
/* 813407A8 | 98 1E 95 50 */	stb r0, smArg__Q23ipl11PlayTimeLog@l(r30)
/* 813407AC | 80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 813407B0 | 38 C0 00 00 */	li r6, 0x0
/* 813407B4 | 80 9F 00 98 */	lwz r4, 0x98(r31)
/* 813407B8 | 38 E0 00 00 */	li r7, 0x0
/* 813407BC | 80 BF 00 94 */	lwz r5, 0x94(r31)
/* 813407C0 | 39 00 00 00 */	li r8, 0x0
/* 813407C4 | 48 14 5B 25 */	bl CDBMakeCDBDate
/* 813407C8 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 813407CC | 38 C0 00 17 */	li r6, 0x17
/* 813407D0 | 80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 813407D4 | 38 E0 00 3B */	li r7, 0x3b
/* 813407D8 | 80 9F 00 98 */	lwz r4, 0x98(r31)
/* 813407DC | 39 00 00 3B */	li r8, 0x3b
/* 813407E0 | 80 BF 00 94 */	lwz r5, 0x94(r31)
/* 813407E4 | 48 14 5B 05 */	bl CDBMakeCDBDate
/* 813407E8 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 813407EC | 3D 20 81 34 */	lis r9, search_cb___3iplFPvP10_CDBRecord@ha
/* 813407F0 | 7F A3 EB 78 */	mr r3, r29
/* 813407F4 | 7F EA FB 78 */	mr r10, r31
/* 813407F8 | 38 81 00 0C */	addi r4, r1, 0xc
/* 813407FC | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81340800 | 39 29 06 84 */	addi r9, r9, search_cb___3iplFPvP10_CDBRecord@l
/* 81340804 | 38 C0 00 01 */	li r6, 0x1
/* 81340808 | 38 E0 00 01 */	li r7, 0x1
/* 8134080C | 39 00 00 00 */	li r8, 0x0
/* 81340810 | 4B FF F5 51 */	bl search__Q33ipl3cdb7ManagerFRCUlRCUl18CDBSearchDirection17CDBRecordLocationiPFPvP10_CDBRecord_iPv
/* 81340814 | 88 1E 95 50 */	lbz r0, smArg__Q23ipl11PlayTimeLog@l(r30)
/* 81340818 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8134081C | 40 82 00 10 */	bne .L_8134082C
/* 81340820 | 7F E3 FB 78 */	mr r3, r31
/* 81340824 | 38 9F 00 08 */	addi r4, r31, 0x8
/* 81340828 | 48 00 0A D5 */	bl create_new_playlog__Q23ipl11PlayTimeLogFPC12OSPlayRecord
.L_8134082C:
/* 8134082C | 3C 60 81 63 */	lis r3, lbl_816351C0@ha
/* 81340830 | 38 63 51 C0 */	addi r3, r3, lbl_816351C0@l
/* 81340834 | 48 01 F8 75 */	bl Delete__Q33ipl4nand7wrapperFPCc
/* 81340838 | 2C 03 FF C0 */	cmpwi r3, -0x40
/* 8134083C | 41 82 00 20 */	beq .L_8134085C
/* 81340840 | 40 80 00 10 */	bge .L_81340850
/* 81340844 | 2C 03 FF 80 */	cmpwi r3, -0x80
/* 81340848 | 41 82 00 14 */	beq .L_8134085C
/* 8134084C | 48 00 00 78 */	b .L_813408C4
.L_81340850:
/* 81340850 | 2C 03 FF FC */	cmpwi r3, -0x4
/* 81340854 | 41 82 00 4C */	beq .L_813408A0
/* 81340858 | 48 00 00 6C */	b .L_813408C4
.L_8134085C:
/* 8134085C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81340860 | 3C C0 81 63 */	lis r6, lbl_816351CD@ha
/* 81340864 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81340868 | 7C 65 1B 78 */	mr r5, r3
/* 8134086C | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 81340870 | 38 C6 51 CD */	addi r6, r6, lbl_816351CD@l
/* 81340874 | 38 8D 80 98 */	li r4, lbl_816960D8@sda21
/* 81340878 | 38 E0 00 6C */	li r7, 0x6c
/* 8134087C | 48 01 5E 7D */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 81340880 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 81340884 | 38 80 00 01 */	li r4, 0x1
/* 81340888 | 38 A0 00 02 */	li r5, 0x2
/* 8134088C | 38 C0 00 00 */	li r6, 0x0
/* 81340890 | 38 E0 00 00 */	li r7, 0x0
/* 81340894 | 39 00 FF FF */	li r8, -0x1
/* 81340898 | 48 01 5C 7D */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
/* 8134089C | 48 00 00 28 */	b .L_813408C4
.L_813408A0:
/* 813408A0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813408A4 | 38 80 00 01 */	li r4, 0x1
/* 813408A8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813408AC | 38 A0 00 01 */	li r5, 0x1
/* 813408B0 | 80 63 00 98 */	lwz r3, 0x98(r3)
/* 813408B4 | 38 C0 00 00 */	li r6, 0x0
/* 813408B8 | 38 E0 00 00 */	li r7, 0x0
/* 813408BC | 39 00 FF FF */	li r8, -0x1
/* 813408C0 | 48 01 5C 55 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_813408C4:
/* 813408C4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813408C8 | 48 2B 8C 4D */	bl _restgpr_29
/* 813408CC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813408D0 | 7C 08 03 A6 */	mtlr r0
/* 813408D4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813408D8 | 4E 80 00 20 */	blr
.endfn log__Q23ipl11PlayTimeLogFv

# .text:0x254 | 0x813408DC | size: 0x160
# ipl::PlayTimeLog::sendMsgLog(const wchar_t*)
.fn sendMsgLog__Q23ipl11PlayTimeLogFPCw, global
/* 813408DC | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813408E0 | 7C 08 02 A6 */	mflr r0
/* 813408E4 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813408E8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813408EC | 48 2B 8B D1 */	bl _savegpr_26
/* 813408F0 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 813408F4 | 3F 80 81 09 */	lis r28, smArg__Q23ipl11PlayTimeLog@ha
/* 813408F8 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 813408FC | 3B 60 00 01 */	li r27, 0x1
/* 81340900 | 83 FD 00 3C */	lwz r31, 0x3c(r29)
/* 81340904 | 3B 9C 95 50 */	addi r28, r28, smArg__Q23ipl11PlayTimeLog@l
/* 81340908 | 83 DD 00 40 */	lwz r30, 0x40(r29)
/* 8134090C | 7C 7A 1B 78 */	mr r26, r3
/* 81340910 | 81 9D 00 44 */	lwz r12, 0x44(r29)
/* 81340914 | 38 7C 00 B0 */	addi r3, r28, 0xb0
/* 81340918 | 81 7D 00 48 */	lwz r11, 0x48(r29)
/* 8134091C | 38 80 00 00 */	li r4, 0x0
/* 81340920 | 81 5D 00 4C */	lwz r10, 0x4c(r29)
/* 81340924 | 38 A0 00 18 */	li r5, 0x18
/* 81340928 | 81 3D 00 50 */	lwz r9, 0x50(r29)
/* 8134092C | 81 1D 00 54 */	lwz r8, 0x54(r29)
/* 81340930 | 80 FD 00 58 */	lwz r7, 0x58(r29)
/* 81340934 | 80 DD 00 5C */	lwz r6, 0x5c(r29)
/* 81340938 | 80 1D 00 60 */	lwz r0, 0x60(r29)
/* 8134093C | 93 7C 00 C8 */	stw r27, 0xc8(r28)
/* 81340940 | 93 FC 00 88 */	stw r31, 0x88(r28)
/* 81340944 | 93 DC 00 8C */	stw r30, 0x8c(r28)
/* 81340948 | 91 9C 00 90 */	stw r12, 0x90(r28)
/* 8134094C | 91 7C 00 94 */	stw r11, 0x94(r28)
/* 81340950 | 91 5C 00 98 */	stw r10, 0x98(r28)
/* 81340954 | 91 3C 00 9C */	stw r9, 0x9c(r28)
/* 81340958 | 91 1C 00 A0 */	stw r8, 0xa0(r28)
/* 8134095C | 90 FC 00 A4 */	stw r7, 0xa4(r28)
/* 81340960 | 90 DC 00 A8 */	stw r6, 0xa8(r28)
/* 81340964 | 90 1C 00 AC */	stw r0, 0xac(r28)
/* 81340968 | 4B FE F9 CD */	bl memset
/* 8134096C | 7F 44 D3 78 */	mr r4, r26
/* 81340970 | 38 7C 00 B0 */	addi r3, r28, 0xb0
/* 81340974 | 38 A0 00 0A */	li r5, 0xa
/* 81340978 | 48 2C 7D 6D */	bl fn_816086E4
/* 8134097C | 88 1D 02 BC */	lbz r0, 0x2bc(r29)
/* 81340980 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81340984 | 41 82 00 0C */	beq .L_81340990
/* 81340988 | 3B 60 00 00 */	li r27, 0x0
/* 8134098C | 48 00 00 08 */	b .L_81340994
.L_81340990:
/* 81340990 | 83 7D 00 7C */	lwz r27, 0x7c(r29)
.L_81340994:
/* 81340994 | 3F C0 81 09 */	lis r30, smArg__Q23ipl11PlayTimeLog@ha
/* 81340998 | 38 00 00 00 */	li r0, 0x0
/* 8134099C | 3B FE 95 50 */	addi r31, r30, smArg__Q23ipl11PlayTimeLog@l
/* 813409A0 | 98 1E 95 50 */	stb r0, smArg__Q23ipl11PlayTimeLog@l(r30)
/* 813409A4 | 80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 813409A8 | 38 C0 00 00 */	li r6, 0x0
/* 813409AC | 80 9F 00 98 */	lwz r4, 0x98(r31)
/* 813409B0 | 38 E0 00 00 */	li r7, 0x0
/* 813409B4 | 80 BF 00 94 */	lwz r5, 0x94(r31)
/* 813409B8 | 39 00 00 00 */	li r8, 0x0
/* 813409BC | 48 14 59 2D */	bl CDBMakeCDBDate
/* 813409C0 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 813409C4 | 38 C0 00 17 */	li r6, 0x17
/* 813409C8 | 80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 813409CC | 38 E0 00 3B */	li r7, 0x3b
/* 813409D0 | 80 9F 00 98 */	lwz r4, 0x98(r31)
/* 813409D4 | 39 00 00 3B */	li r8, 0x3b
/* 813409D8 | 80 BF 00 94 */	lwz r5, 0x94(r31)
/* 813409DC | 48 14 59 0D */	bl CDBMakeCDBDate
/* 813409E0 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 813409E4 | 3D 20 81 34 */	lis r9, search_cb___3iplFPvP10_CDBRecord@ha
/* 813409E8 | 7F 63 DB 78 */	mr r3, r27
/* 813409EC | 7F EA FB 78 */	mr r10, r31
/* 813409F0 | 38 81 00 0C */	addi r4, r1, 0xc
/* 813409F4 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813409F8 | 39 29 06 84 */	addi r9, r9, search_cb___3iplFPvP10_CDBRecord@l
/* 813409FC | 38 C0 00 01 */	li r6, 0x1
/* 81340A00 | 38 E0 00 01 */	li r7, 0x1
/* 81340A04 | 39 00 00 00 */	li r8, 0x0
/* 81340A08 | 4B FF F3 59 */	bl search__Q33ipl3cdb7ManagerFRCUlRCUl18CDBSearchDirection17CDBRecordLocationiPFPvP10_CDBRecord_iPv
/* 81340A0C | 88 1E 95 50 */	lbz r0, smArg__Q23ipl11PlayTimeLog@l(r30)
/* 81340A10 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81340A14 | 40 82 00 10 */	bne .L_81340A24
/* 81340A18 | 7F E3 FB 78 */	mr r3, r31
/* 81340A1C | 38 9F 00 B0 */	addi r4, r31, 0xb0
/* 81340A20 | 48 00 09 61 */	bl create_new_sendmsglog__Q23ipl11PlayTimeLogFPCw
.L_81340A24:
/* 81340A24 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81340A28 | 48 2B 8A E1 */	bl _restgpr_26
/* 81340A2C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81340A30 | 7C 08 03 A6 */	mtlr r0
/* 81340A34 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81340A38 | 4E 80 00 20 */	blr
.endfn sendMsgLog__Q23ipl11PlayTimeLogFPCw

# .text:0x3B4 | 0x81340A3C | size: 0xDC
# ipl::PlayTimeLog::check(_CDBRecord*)
.fn check__Q23ipl11PlayTimeLogFP10_CDBRecord, global
/* 81340A3C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81340A40 | 7C 08 02 A6 */	mflr r0
/* 81340A44 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81340A48 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81340A4C | 48 2B 8A 7D */	bl _savegpr_29
/* 81340A50 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 81340A54 | 38 00 00 00 */	li r0, 0x0
/* 81340A58 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 81340A5C | 7C 9E 23 78 */	mr r30, r4
/* 81340A60 | 7C 7D 1B 78 */	mr r29, r3
/* 81340A64 | 88 65 02 BC */	lbz r3, 0x2bc(r5)
/* 81340A68 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 81340A6C | 7F C3 F3 78 */	mr r3, r30
/* 81340A70 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81340A74 | 3B E0 00 01 */	li r31, 0x1
/* 81340A78 | 98 01 00 09 */	stb r0, 0x9(r1)
/* 81340A7C | 98 01 00 0A */	stb r0, 0xa(r1)
/* 81340A80 | 98 01 00 0B */	stb r0, 0xb(r1)
/* 81340A84 | 98 01 00 0C */	stb r0, 0xc(r1)
/* 81340A88 | 98 01 00 0D */	stb r0, 0xd(r1)
/* 81340A8C | 98 01 00 0E */	stb r0, 0xe(r1)
/* 81340A90 | 98 01 00 0F */	stb r0, 0xf(r1)
/* 81340A94 | 48 14 C0 85 */	bl CDBRecordGetTypeForce
/* 81340A98 | 80 8D 80 1C */	lwz r4, RBRFileType_Log@sda21(r0)
/* 81340A9C | 38 61 00 08 */	addi r3, r1, 0x8
/* 81340AA0 | 38 A0 00 08 */	li r5, 0x8
/* 81340AA4 | 48 2C 1A F9 */	bl strncmp
/* 81340AA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81340AAC | 40 82 00 50 */	bne .L_81340AFC
/* 81340AB0 | 80 1D 00 C8 */	lwz r0, 0xc8(r29)
/* 81340AB4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81340AB8 | 41 82 00 28 */	beq .L_81340AE0
/* 81340ABC | 40 80 00 34 */	bge .L_81340AF0
/* 81340AC0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81340AC4 | 40 80 00 08 */	bge .L_81340ACC
/* 81340AC8 | 48 00 00 28 */	b .L_81340AF0
.L_81340ACC:
/* 81340ACC | 7F A3 EB 78 */	mr r3, r29
/* 81340AD0 | 7F C5 F3 78 */	mr r5, r30
/* 81340AD4 | 38 9D 00 08 */	addi r4, r29, 0x8
/* 81340AD8 | 48 00 0A 79 */	bl add_playlog__Q23ipl11PlayTimeLogFPC12OSPlayRecordP10_CDBRecord
/* 81340ADC | 48 00 00 14 */	b .L_81340AF0
.L_81340AE0:
/* 81340AE0 | 7F A3 EB 78 */	mr r3, r29
/* 81340AE4 | 7F C5 F3 78 */	mr r5, r30
/* 81340AE8 | 38 9D 00 B0 */	addi r4, r29, 0xb0
/* 81340AEC | 48 00 0B 81 */	bl add_sendmsglog__Q23ipl11PlayTimeLogFPCwP10_CDBRecord
.L_81340AF0:
/* 81340AF0 | 38 00 00 01 */	li r0, 0x1
/* 81340AF4 | 3B E0 00 00 */	li r31, 0x0
/* 81340AF8 | 98 1D 00 00 */	stb r0, 0x0(r29)
.L_81340AFC:
/* 81340AFC | 39 61 00 20 */	addi r11, r1, 0x20
/* 81340B00 | 7F E3 FB 78 */	mr r3, r31
/* 81340B04 | 48 2B 8A 11 */	bl _restgpr_29
/* 81340B08 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81340B0C | 7C 08 03 A6 */	mtlr r0
/* 81340B10 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81340B14 | 4E 80 00 20 */	blr
.endfn check__Q23ipl11PlayTimeLogFP10_CDBRecord

# .text:0x490 | 0x81340B18 | size: 0x104
# ipl::PlayTimeLog::set_time_str(wchar_t*, unsigned long)
.fn set_time_str__Q23ipl11PlayTimeLogFPwUl, global
/* 81340B18 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81340B1C | 7C 08 02 A6 */	mflr r0
/* 81340B20 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81340B24 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81340B28 | 48 2B 89 8D */	bl _savegpr_24
/* 81340B2C | 38 00 00 3C */	li r0, 0x3c
/* 81340B30 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81340B34 | 7F 65 03 96 */	divwu r27, r5, r0
/* 81340B38 | 7C 99 23 78 */	mr r25, r4
/* 81340B3C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81340B40 | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 81340B44 | 38 80 00 8A */	li r4, 0x8a
/* 81340B48 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81340B4C | 7C 1B 01 D6 */	mullw r0, r27, r0
/* 81340B50 | 7F 40 28 50 */	subf r26, r0, r5
/* 81340B54 | 4B FF DC 69 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 81340B58 | 7C 78 1B 78 */	mr r24, r3
/* 81340B5C | 48 2C 7B 51 */	bl fn_816086AC
/* 81340B60 | 3B A0 00 0A */	li r29, 0xa
/* 81340B64 | 3F C0 81 61 */	lis r30, lbl_8160D620@ha
/* 81340B68 | 7C FB EB 96 */	divwu r7, r27, r29
/* 81340B6C | 7C 7C 1B 78 */	mr r28, r3
/* 81340B70 | 3B DE D6 20 */	addi r30, r30, lbl_8160D620@l
/* 81340B74 | 3B E0 00 00 */	li r31, 0x0
/* 81340B78 | 7F 23 CB 78 */	mr r3, r25
/* 81340B7C | 7F 04 C3 78 */	mr r4, r24
/* 81340B80 | 7C 07 EB 96 */	divwu r0, r7, r29
/* 81340B84 | 38 A0 00 0C */	li r5, 0xc
/* 81340B88 | 7C C0 E9 D6 */	mullw r6, r0, r29
/* 81340B8C | 7C 07 E9 D6 */	mullw r0, r7, r29
/* 81340B90 | 7C C6 38 50 */	subf r6, r6, r7
/* 81340B94 | 54 C6 08 3C */	slwi r6, r6, 1
/* 81340B98 | 7C DE 32 2E */	lhzx r6, r30, r6
/* 81340B9C | 7C 00 D8 50 */	subf r0, r0, r27
/* 81340BA0 | 54 00 08 3C */	slwi r0, r0, 1
/* 81340BA4 | B0 D9 00 00 */	sth r6, 0x0(r25)
/* 81340BA8 | 7C 1E 02 2E */	lhzx r0, r30, r0
/* 81340BAC | B0 19 00 02 */	sth r0, 0x2(r25)
/* 81340BB0 | B3 F9 00 04 */	sth r31, 0x4(r25)
/* 81340BB4 | 48 2C 7B A1 */	bl fn_81608754
/* 81340BB8 | 7C FA EB 96 */	divwu r7, r26, r29
/* 81340BBC | 38 DC 00 02 */	addi r6, r28, 0x2
/* 81340BC0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81340BC4 | 54 C5 08 3C */	slwi r5, r6, 1
/* 81340BC8 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 81340BCC | 54 C3 08 3C */	slwi r3, r6, 1
/* 81340BD0 | 7C 87 EB 96 */	divwu r4, r7, r29
/* 81340BD4 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 81340BD8 | 54 C0 08 3C */	slwi r0, r6, 1
/* 81340BDC | 7C C4 E9 D6 */	mullw r6, r4, r29
/* 81340BE0 | 7C 87 E9 D6 */	mullw r4, r7, r29
/* 81340BE4 | 7C C6 38 50 */	subf r6, r6, r7
/* 81340BE8 | 54 C6 08 3C */	slwi r6, r6, 1
/* 81340BEC | 7C DE 32 2E */	lhzx r6, r30, r6
/* 81340BF0 | 7C 84 D0 50 */	subf r4, r4, r26
/* 81340BF4 | 54 84 08 3C */	slwi r4, r4, 1
/* 81340BF8 | 7C D9 2B 2E */	sthx r6, r25, r5
/* 81340BFC | 7C 9E 22 2E */	lhzx r4, r30, r4
/* 81340C00 | 7C 99 1B 2E */	sthx r4, r25, r3
/* 81340C04 | 7F F9 03 2E */	sthx r31, r25, r0
/* 81340C08 | 48 2B 88 F9 */	bl _restgpr_24
/* 81340C0C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81340C10 | 7C 08 03 A6 */	mtlr r0
/* 81340C14 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81340C18 | 4E 80 00 20 */	blr
.endfn set_time_str__Q23ipl11PlayTimeLogFPwUl

# .text:0x594 | 0x81340C1C | size: 0xE0
# ipl::PlayTimeLog::set_num_str(wchar_t*, unsigned long)
.fn set_num_str__Q23ipl11PlayTimeLogFPwUl, global
/* 81340C1C | 38 00 03 E8 */	li r0, 0x3e8
/* 81340C20 | 38 C0 00 0A */	li r6, 0xa
/* 81340C24 | 7C E5 03 96 */	divwu r7, r5, r0
/* 81340C28 | 38 60 00 00 */	li r3, 0x0
/* 81340C2C | 7C 07 33 96 */	divwu r0, r7, r6
/* 81340C30 | 7C 00 31 D6 */	mullw r0, r0, r6
/* 81340C34 | 7C 00 38 51 */	subf. r0, r0, r7
/* 81340C38 | 41 82 00 1C */	beq .L_81340C54
/* 81340C3C | 3C C0 81 61 */	lis r6, lbl_8160D620@ha
/* 81340C40 | 54 00 08 3C */	slwi r0, r0, 1
/* 81340C44 | 38 C6 D6 20 */	addi r6, r6, lbl_8160D620@l
/* 81340C48 | 38 60 00 01 */	li r3, 0x1
/* 81340C4C | 7C 06 02 2E */	lhzx r0, r6, r0
/* 81340C50 | B0 04 00 00 */	sth r0, 0x0(r4)
.L_81340C54:
/* 81340C54 | 38 00 00 64 */	li r0, 0x64
/* 81340C58 | 38 C0 00 0A */	li r6, 0xa
/* 81340C5C | 7C E5 03 96 */	divwu r7, r5, r0
/* 81340C60 | 7C 07 33 96 */	divwu r0, r7, r6
/* 81340C64 | 7C 00 31 D6 */	mullw r0, r0, r6
/* 81340C68 | 7C E0 38 51 */	subf. r7, r0, r7
/* 81340C6C | 41 82 00 20 */	beq .L_81340C8C
/* 81340C70 | 3C C0 81 61 */	lis r6, lbl_8160D620@ha
/* 81340C74 | 54 60 08 3C */	slwi r0, r3, 1
/* 81340C78 | 54 E7 08 3C */	slwi r7, r7, 1
/* 81340C7C | 38 63 00 01 */	addi r3, r3, 0x1
/* 81340C80 | 38 C6 D6 20 */	addi r6, r6, lbl_8160D620@l
/* 81340C84 | 7C C6 3A 2E */	lhzx r6, r6, r7
/* 81340C88 | 7C C4 03 2E */	sthx r6, r4, r0
.L_81340C8C:
/* 81340C8C | 38 E0 00 0A */	li r7, 0xa
/* 81340C90 | 7C C5 3B 96 */	divwu r6, r5, r7
/* 81340C94 | 7C 06 3B 96 */	divwu r0, r6, r7
/* 81340C98 | 7C 00 39 D6 */	mullw r0, r0, r7
/* 81340C9C | 7C E0 30 51 */	subf. r7, r0, r6
/* 81340CA0 | 41 82 00 20 */	beq .L_81340CC0
/* 81340CA4 | 3C C0 81 61 */	lis r6, lbl_8160D620@ha
/* 81340CA8 | 54 60 08 3C */	slwi r0, r3, 1
/* 81340CAC | 54 E7 08 3C */	slwi r7, r7, 1
/* 81340CB0 | 38 63 00 01 */	addi r3, r3, 0x1
/* 81340CB4 | 38 C6 D6 20 */	addi r6, r6, lbl_8160D620@l
/* 81340CB8 | 7C C6 3A 2E */	lhzx r6, r6, r7
/* 81340CBC | 7C C4 03 2E */	sthx r6, r4, r0
.L_81340CC0:
/* 81340CC0 | 39 20 00 0A */	li r9, 0xa
/* 81340CC4 | 3C E0 81 61 */	lis r7, lbl_8160D620@ha
/* 81340CC8 | 7D 05 4B 96 */	divwu r8, r5, r9
/* 81340CCC | 54 66 08 3C */	slwi r6, r3, 1
/* 81340CD0 | 38 63 00 01 */	addi r3, r3, 0x1
/* 81340CD4 | 38 E7 D6 20 */	addi r7, r7, lbl_8160D620@l
/* 81340CD8 | 54 60 08 3C */	slwi r0, r3, 1
/* 81340CDC | 38 60 00 00 */	li r3, 0x0
/* 81340CE0 | 7D 08 49 D6 */	mullw r8, r8, r9
/* 81340CE4 | 7C A8 28 50 */	subf r5, r8, r5
/* 81340CE8 | 54 A5 08 3C */	slwi r5, r5, 1
/* 81340CEC | 7C A7 2A 2E */	lhzx r5, r7, r5
/* 81340CF0 | 7C A4 33 2E */	sthx r5, r4, r6
/* 81340CF4 | 7C 64 03 2E */	sthx r3, r4, r0
/* 81340CF8 | 4E 80 00 20 */	blr
.endfn set_num_str__Q23ipl11PlayTimeLogFPwUl

# .text:0x674 | 0x81340CFC | size: 0xF0
# ipl::PlayTimeLog::create_text(const ipl::EventBuffer*)
.fn create_text__Q23ipl11PlayTimeLogFPCQ23ipl11EventBuffer, global
/* 81340CFC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81340D00 | 7C 08 02 A6 */	mflr r0
/* 81340D04 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81340D08 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81340D0C | 48 2B 87 BD */	bl _savegpr_29
/* 81340D10 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 81340D14 | 7C 7E 1B 78 */	mr r30, r3
/* 81340D18 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 81340D1C | 7C 9F 23 78 */	mr r31, r4
/* 81340D20 | 80 85 00 38 */	lwz r4, 0x38(r5)
/* 81340D24 | 38 60 10 68 */	li r3, 0x1068
/* 81340D28 | 38 A0 00 04 */	li r5, 0x4
/* 81340D2C | 48 2B 73 A9 */	bl __nwa__FUlPQ23EGG4Heapi
/* 81340D30 | 7C 7D 1B 78 */	mr r29, r3
/* 81340D34 | 38 80 00 00 */	li r4, 0x0
/* 81340D38 | 38 A0 10 68 */	li r5, 0x1068
/* 81340D3C | 4B FE F5 F9 */	bl memset
/* 81340D40 | 38 00 00 0A */	li r0, 0xa
/* 81340D44 | 38 A0 00 00 */	li r5, 0x0
/* 81340D48 | 38 60 00 00 */	li r3, 0x0
/* 81340D4C | 7C 09 03 A6 */	mtctr r0
.L_81340D50:
/* 81340D50 | 7C 9F 1A 14 */	add r4, r31, r3
/* 81340D54 | 38 63 00 88 */	addi r3, r3, 0x88
/* 81340D58 | 88 04 00 08 */	lbz r0, 0x8(r4)
/* 81340D5C | 7C A4 03 78 */	or r4, r5, r0
/* 81340D60 | 30 04 FF FF */	subic r0, r4, 0x1
/* 81340D64 | 7C A0 21 10 */	subfe r5, r0, r4
/* 81340D68 | 42 00 FF E8 */	bdnz .L_81340D50
/* 81340D6C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81340D70 | 41 82 00 18 */	beq .L_81340D88
/* 81340D74 | 7F C3 F3 78 */	mr r3, r30
/* 81340D78 | 7F A5 EB 78 */	mr r5, r29
/* 81340D7C | 38 9F 00 08 */	addi r4, r31, 0x8
/* 81340D80 | 38 C0 08 34 */	li r6, 0x834
/* 81340D84 | 48 00 00 69 */	bl create_playlog_text__Q23ipl11PlayTimeLogFPCQ23ipl9LogBufferPwi
.L_81340D88:
/* 81340D88 | 38 00 00 0A */	li r0, 0xa
/* 81340D8C | 38 A0 00 00 */	li r5, 0x0
/* 81340D90 | 38 60 00 00 */	li r3, 0x0
/* 81340D94 | 7C 09 03 A6 */	mtctr r0
.L_81340D98:
/* 81340D98 | 7C 9F 1A 14 */	add r4, r31, r3
/* 81340D9C | 38 63 00 1A */	addi r3, r3, 0x1a
/* 81340DA0 | 88 04 05 60 */	lbz r0, 0x560(r4)
/* 81340DA4 | 7C A4 03 78 */	or r4, r5, r0
/* 81340DA8 | 30 04 FF FF */	subic r0, r4, 0x1
/* 81340DAC | 7C A0 21 10 */	subfe r5, r0, r4
/* 81340DB0 | 42 00 FF E8 */	bdnz .L_81340D98
/* 81340DB4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81340DB8 | 41 82 00 18 */	beq .L_81340DD0
/* 81340DBC | 7F C3 F3 78 */	mr r3, r30
/* 81340DC0 | 7F A5 EB 78 */	mr r5, r29
/* 81340DC4 | 38 9F 05 60 */	addi r4, r31, 0x560
/* 81340DC8 | 38 C0 08 34 */	li r6, 0x834
/* 81340DCC | 48 00 03 29 */	bl create_sendmsg_text__Q23ipl11PlayTimeLogFPCQ23ipl13SendMsgBufferPwi
.L_81340DD0:
/* 81340DD0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81340DD4 | 7F A3 EB 78 */	mr r3, r29
/* 81340DD8 | 48 2B 87 3D */	bl _restgpr_29
/* 81340DDC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81340DE0 | 7C 08 03 A6 */	mtlr r0
/* 81340DE4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81340DE8 | 4E 80 00 20 */	blr
.endfn create_text__Q23ipl11PlayTimeLogFPCQ23ipl11EventBuffer

# .text:0x764 | 0x81340DEC | size: 0x308
# ipl::PlayTimeLog::create_playlog_text(const ipl::LogBuffer*, wchar_t*, int)
.fn create_playlog_text__Q23ipl11PlayTimeLogFPCQ23ipl9LogBufferPwi, global
/* 81340DEC | 94 21 FF 80 */	stwu r1, -0x80(r1)
/* 81340DF0 | 7C 08 02 A6 */	mflr r0
/* 81340DF4 | 90 01 00 84 */	stw r0, 0x84(r1)
/* 81340DF8 | 39 61 00 80 */	addi r11, r1, 0x80
/* 81340DFC | 48 2B 86 A9 */	bl _savegpr_20
/* 81340E00 | 3C E0 81 09 */	lis r7, smArg__Q23ipl6System@ha
/* 81340E04 | 7C 9A 23 78 */	mr r26, r4
/* 81340E08 | 38 E7 90 08 */	addi r7, r7, smArg__Q23ipl6System@l
/* 81340E0C | 7C 79 1B 78 */	mr r25, r3
/* 81340E10 | 80 67 00 80 */	lwz r3, 0x80(r7)
/* 81340E14 | 7C BB 2B 78 */	mr r27, r5
/* 81340E18 | 7C DC 33 78 */	mr r28, r6
/* 81340E1C | 3B C0 00 00 */	li r30, 0x0
/* 81340E20 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81340E24 | 38 80 00 84 */	li r4, 0x84
/* 81340E28 | 4B FF D9 95 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 81340E2C | 7C 75 1B 78 */	mr r21, r3
/* 81340E30 | 7F 63 DB 78 */	mr r3, r27
/* 81340E34 | 48 2C 78 79 */	bl fn_816086AC
/* 81340E38 | 7C A3 E0 50 */	subf r5, r3, r28
/* 81340E3C | 7F 63 DB 78 */	mr r3, r27
/* 81340E40 | 7E A4 AB 78 */	mr r4, r21
/* 81340E44 | 48 2C 78 A1 */	bl fn_816086E4
/* 81340E48 | 3B A0 00 00 */	li r29, 0x0
/* 81340E4C | 3B 00 00 00 */	li r24, 0x0
/* 81340E50 | 3E A0 80 00 */	lis r21, 0x8000
/* 81340E54 | 3A C0 00 3C */	li r22, 0x3c
/* 81340E58 | 3E E0 81 63 */	lis r23, lbl_816351E0@ha
.L_81340E5C:
/* 81340E5C | 7C 1A C0 AE */	lbzx r0, r26, r24
/* 81340E60 | 7F FA C2 14 */	add r31, r26, r24
/* 81340E64 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81340E68 | 41 82 01 00 */	beq .L_81340F68
/* 81340E6C | 80 9F 00 6C */	lwz r4, 0x6c(r31)
/* 81340E70 | 38 A0 00 00 */	li r5, 0x0
/* 81340E74 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81340E78 | 80 15 00 F8 */	lwz r0, 0xf8(r21)
/* 81340E7C | 7C 83 20 10 */	subfc r4, r3, r4
/* 81340E80 | 80 FF 00 68 */	lwz r7, 0x68(r31)
/* 81340E84 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 81340E88 | 54 06 F0 BE */	srwi r6, r0, 2
/* 81340E8C | 7C 63 39 10 */	subfe r3, r3, r7
/* 81340E90 | 48 2B 87 81 */	bl __div2i
/* 81340E94 | 38 C0 00 3C */	li r6, 0x3c
/* 81340E98 | 38 A0 00 00 */	li r5, 0x0
/* 81340E9C | 48 2B 87 75 */	bl __div2i
/* 81340EA0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81340EA4 | 7C 94 23 78 */	mr r20, r4
/* 81340EA8 | 40 82 00 0C */	bne .L_81340EB4
/* 81340EAC | 3A 80 00 01 */	li r20, 0x1
/* 81340EB0 | 48 00 00 14 */	b .L_81340EC4
.L_81340EB4:
/* 81340EB4 | 7C 04 B3 96 */	divwu r0, r4, r22
/* 81340EB8 | 28 00 00 18 */	cmplwi r0, 0x18
/* 81340EBC | 41 80 00 08 */	blt .L_81340EC4
/* 81340EC0 | 3A 80 05 9F */	li r20, 0x59f
.L_81340EC4:
/* 81340EC4 | 7F 23 CB 78 */	mr r3, r25
/* 81340EC8 | 7E 85 A3 78 */	mr r5, r20
/* 81340ECC | 38 81 00 08 */	addi r4, r1, 0x8
/* 81340ED0 | 4B FF FC 49 */	bl set_time_str__Q23ipl11PlayTimeLogFPwUl
/* 81340ED4 | 7F 63 DB 78 */	mr r3, r27
/* 81340ED8 | 7F DE A2 14 */	add r30, r30, r20
/* 81340EDC | 48 2C 77 D1 */	bl fn_816086AC
/* 81340EE0 | 7C A3 E0 50 */	subf r5, r3, r28
/* 81340EE4 | 7F 63 DB 78 */	mr r3, r27
/* 81340EE8 | 38 8D 80 9E */	li r4, lbl_816960DE@sda21
/* 81340EEC | 48 2C 78 69 */	bl fn_81608754
/* 81340EF0 | 7E 9A C2 14 */	add r20, r26, r24
/* 81340EF4 | 7F 63 DB 78 */	mr r3, r27
/* 81340EF8 | 38 94 00 0C */	addi r4, r20, 0xc
/* 81340EFC | 38 A0 00 15 */	li r5, 0x15
/* 81340F00 | 48 2C 78 55 */	bl fn_81608754
/* 81340F04 | A0 1F 00 36 */	lhz r0, 0x36(r31)
/* 81340F08 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81340F0C | 41 82 00 2C */	beq .L_81340F38
/* 81340F10 | 7F 63 DB 78 */	mr r3, r27
/* 81340F14 | 48 2C 77 99 */	bl fn_816086AC
/* 81340F18 | 7C A3 E0 50 */	subf r5, r3, r28
/* 81340F1C | 7F 63 DB 78 */	mr r3, r27
/* 81340F20 | 38 8D 80 A4 */	li r4, lbl_816960E4@sda21
/* 81340F24 | 48 2C 78 31 */	bl fn_81608754
/* 81340F28 | 7F 63 DB 78 */	mr r3, r27
/* 81340F2C | 38 94 00 36 */	addi r4, r20, 0x36
/* 81340F30 | 38 A0 00 15 */	li r5, 0x15
/* 81340F34 | 48 2C 78 21 */	bl fn_81608754
.L_81340F38:
/* 81340F38 | 7F 63 DB 78 */	mr r3, r27
/* 81340F3C | 48 2C 77 71 */	bl fn_816086AC
/* 81340F40 | 7C A3 E0 50 */	subf r5, r3, r28
/* 81340F44 | 7F 63 DB 78 */	mr r3, r27
/* 81340F48 | 38 97 51 E0 */	addi r4, r23, lbl_816351E0@l
/* 81340F4C | 48 2C 78 09 */	bl fn_81608754
/* 81340F50 | 7F 63 DB 78 */	mr r3, r27
/* 81340F54 | 48 2C 77 59 */	bl fn_816086AC
/* 81340F58 | 7C A3 E0 50 */	subf r5, r3, r28
/* 81340F5C | 7F 63 DB 78 */	mr r3, r27
/* 81340F60 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81340F64 | 48 2C 77 F1 */	bl fn_81608754
.L_81340F68:
/* 81340F68 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 81340F6C | 3B 18 00 88 */	addi r24, r24, 0x88
/* 81340F70 | 2C 1D 00 0A */	cmpwi r29, 0xa
/* 81340F74 | 41 80 FE E8 */	blt .L_81340E5C
/* 81340F78 | 80 7A 05 50 */	lwz r3, 0x550(r26)
/* 81340F7C | 80 9A 05 54 */	lwz r4, 0x554(r26)
/* 81340F80 | 7C 80 1B 79 */	or. r0, r4, r3
/* 81340F84 | 41 82 00 C8 */	beq .L_8134104C
/* 81340F88 | 3C A0 80 00 */	lis r5, 0x8000
/* 81340F8C | 80 05 00 F8 */	lwz r0, 0xf8(r5)
/* 81340F90 | 38 A0 00 00 */	li r5, 0x0
/* 81340F94 | 54 06 F0 BE */	srwi r6, r0, 2
/* 81340F98 | 48 2B 86 79 */	bl __div2i
/* 81340F9C | 38 C0 00 3C */	li r6, 0x3c
/* 81340FA0 | 38 A0 00 00 */	li r5, 0x0
/* 81340FA4 | 48 2B 86 6D */	bl __div2i
/* 81340FA8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81340FAC | 7C 94 23 78 */	mr r20, r4
/* 81340FB0 | 40 82 00 08 */	bne .L_81340FB8
/* 81340FB4 | 3A 80 00 01 */	li r20, 0x1
.L_81340FB8:
/* 81340FB8 | 7F 23 CB 78 */	mr r3, r25
/* 81340FBC | 7E 85 A3 78 */	mr r5, r20
/* 81340FC0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81340FC4 | 4B FF FB 55 */	bl set_time_str__Q23ipl11PlayTimeLogFPwUl
/* 81340FC8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81340FCC | 7F DE A2 14 */	add r30, r30, r20
/* 81340FD0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81340FD4 | 38 80 00 89 */	li r4, 0x89
/* 81340FD8 | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 81340FDC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81340FE0 | 4B FF D7 DD */	bl getMessage__Q33ipl7message7MessageCFUl
/* 81340FE4 | 7C 75 1B 78 */	mr r21, r3
/* 81340FE8 | 7F 63 DB 78 */	mr r3, r27
/* 81340FEC | 48 2C 76 C1 */	bl fn_816086AC
/* 81340FF0 | 7C A3 E0 50 */	subf r5, r3, r28
/* 81340FF4 | 7F 63 DB 78 */	mr r3, r27
/* 81340FF8 | 38 8D 80 9E */	li r4, lbl_816960DE@sda21
/* 81340FFC | 48 2C 77 59 */	bl fn_81608754
/* 81341000 | 7F 63 DB 78 */	mr r3, r27
/* 81341004 | 48 2C 76 A9 */	bl fn_816086AC
/* 81341008 | 7C A3 E0 50 */	subf r5, r3, r28
/* 8134100C | 7F 63 DB 78 */	mr r3, r27
/* 81341010 | 7E A4 AB 78 */	mr r4, r21
/* 81341014 | 48 2C 77 41 */	bl fn_81608754
/* 81341018 | 7F 63 DB 78 */	mr r3, r27
/* 8134101C | 48 2C 76 91 */	bl fn_816086AC
/* 81341020 | 3C 80 81 63 */	lis r4, lbl_816351E0@ha
/* 81341024 | 7C A3 E0 50 */	subf r5, r3, r28
/* 81341028 | 7F 63 DB 78 */	mr r3, r27
/* 8134102C | 38 84 51 E0 */	addi r4, r4, lbl_816351E0@l
/* 81341030 | 48 2C 77 25 */	bl fn_81608754
/* 81341034 | 7F 63 DB 78 */	mr r3, r27
/* 81341038 | 48 2C 76 75 */	bl fn_816086AC
/* 8134103C | 7C A3 E0 50 */	subf r5, r3, r28
/* 81341040 | 7F 63 DB 78 */	mr r3, r27
/* 81341044 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81341048 | 48 2C 77 0D */	bl fn_81608754
.L_8134104C:
/* 8134104C | 7F 23 CB 78 */	mr r3, r25
/* 81341050 | 7F C5 F3 78 */	mr r5, r30
/* 81341054 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81341058 | 4B FF FA C1 */	bl set_time_str__Q23ipl11PlayTimeLogFPwUl
/* 8134105C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81341060 | 38 80 00 87 */	li r4, 0x87
/* 81341064 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81341068 | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 8134106C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81341070 | 4B FF D7 4D */	bl getMessage__Q33ipl7message7MessageCFUl
/* 81341074 | 7C 75 1B 78 */	mr r21, r3
/* 81341078 | 7F 63 DB 78 */	mr r3, r27
/* 8134107C | 48 2C 76 31 */	bl fn_816086AC
/* 81341080 | 7C A3 E0 50 */	subf r5, r3, r28
/* 81341084 | 7F 63 DB 78 */	mr r3, r27
/* 81341088 | 38 8D 80 9E */	li r4, lbl_816960DE@sda21
/* 8134108C | 48 2C 76 C9 */	bl fn_81608754
/* 81341090 | 7F 63 DB 78 */	mr r3, r27
/* 81341094 | 48 2C 76 19 */	bl fn_816086AC
/* 81341098 | 7C A3 E0 50 */	subf r5, r3, r28
/* 8134109C | 7F 63 DB 78 */	mr r3, r27
/* 813410A0 | 7E A4 AB 78 */	mr r4, r21
/* 813410A4 | 48 2C 76 B1 */	bl fn_81608754
/* 813410A8 | 7F 63 DB 78 */	mr r3, r27
/* 813410AC | 48 2C 76 01 */	bl fn_816086AC
/* 813410B0 | 3C 80 81 63 */	lis r4, lbl_816351E0@ha
/* 813410B4 | 7C A3 E0 50 */	subf r5, r3, r28
/* 813410B8 | 7F 63 DB 78 */	mr r3, r27
/* 813410BC | 38 84 51 E0 */	addi r4, r4, lbl_816351E0@l
/* 813410C0 | 48 2C 76 95 */	bl fn_81608754
/* 813410C4 | 7F 63 DB 78 */	mr r3, r27
/* 813410C8 | 48 2C 75 E5 */	bl fn_816086AC
/* 813410CC | 7C A3 E0 50 */	subf r5, r3, r28
/* 813410D0 | 7F 63 DB 78 */	mr r3, r27
/* 813410D4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813410D8 | 48 2C 76 7D */	bl fn_81608754
/* 813410DC | 39 61 00 80 */	addi r11, r1, 0x80
/* 813410E0 | 48 2B 84 11 */	bl _restgpr_20
/* 813410E4 | 80 01 00 84 */	lwz r0, 0x84(r1)
/* 813410E8 | 7C 08 03 A6 */	mtlr r0
/* 813410EC | 38 21 00 80 */	addi r1, r1, 0x80
/* 813410F0 | 4E 80 00 20 */	blr
.endfn create_playlog_text__Q23ipl11PlayTimeLogFPCQ23ipl9LogBufferPwi

# .text:0xA6C | 0x813410F4 | size: 0x208
# ipl::PlayTimeLog::create_sendmsg_text(const ipl::SendMsgBuffer*, wchar_t*, int)
.fn create_sendmsg_text__Q23ipl11PlayTimeLogFPCQ23ipl13SendMsgBufferPwi, global
/* 813410F4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813410F8 | 7C 08 02 A6 */	mflr r0
/* 813410FC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81341100 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81341104 | 48 2B 83 B9 */	bl _savegpr_26
/* 81341108 | 7C BC 2B 78 */	mr r28, r5
/* 8134110C | 7C 7A 1B 78 */	mr r26, r3
/* 81341110 | 7C 9B 23 78 */	mr r27, r4
/* 81341114 | 7C DD 33 78 */	mr r29, r6
/* 81341118 | 7F 83 E3 78 */	mr r3, r28
/* 8134111C | 48 2C 75 91 */	bl fn_816086AC
/* 81341120 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81341124 | 41 82 00 38 */	beq .L_8134115C
/* 81341128 | 7F 83 E3 78 */	mr r3, r28
/* 8134112C | 48 2C 75 81 */	bl fn_816086AC
/* 81341130 | 7C A3 E8 50 */	subf r5, r3, r29
/* 81341134 | 7F 83 E3 78 */	mr r3, r28
/* 81341138 | 38 8D 80 9E */	li r4, lbl_816960DE@sda21
/* 8134113C | 48 2C 76 19 */	bl fn_81608754
/* 81341140 | 7F 83 E3 78 */	mr r3, r28
/* 81341144 | 48 2C 75 69 */	bl fn_816086AC
/* 81341148 | 3C 80 81 63 */	lis r4, lbl_816351EE@ha
/* 8134114C | 7C A3 E8 50 */	subf r5, r3, r29
/* 81341150 | 7F 83 E3 78 */	mr r3, r28
/* 81341154 | 38 84 51 EE */	addi r4, r4, lbl_816351EE@l
/* 81341158 | 48 2C 75 FD */	bl fn_81608754
.L_8134115C:
/* 8134115C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81341160 | 38 80 00 90 */	li r4, 0x90
/* 81341164 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81341168 | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 8134116C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81341170 | 4B FF D6 4D */	bl getMessage__Q33ipl7message7MessageCFUl
/* 81341174 | 7C 7F 1B 78 */	mr r31, r3
/* 81341178 | 7F 83 E3 78 */	mr r3, r28
/* 8134117C | 48 2C 75 31 */	bl fn_816086AC
/* 81341180 | 7C A3 E8 50 */	subf r5, r3, r29
/* 81341184 | 7F 83 E3 78 */	mr r3, r28
/* 81341188 | 7F E4 FB 78 */	mr r4, r31
/* 8134118C | 48 2C 75 C9 */	bl fn_81608754
/* 81341190 | 7F 83 E3 78 */	mr r3, r28
/* 81341194 | 48 2C 75 19 */	bl fn_816086AC
/* 81341198 | 7C A3 E8 50 */	subf r5, r3, r29
/* 8134119C | 7F 83 E3 78 */	mr r3, r28
/* 813411A0 | 38 8D 80 A4 */	li r4, lbl_816960E4@sda21
/* 813411A4 | 48 2C 75 B1 */	bl fn_81608754
/* 813411A8 | 3B C0 00 00 */	li r30, 0x0
/* 813411AC | 3B E0 00 00 */	li r31, 0x0
.L_813411B0:
/* 813411B0 | 7C 1B F8 AE */	lbzx r0, r27, r31
/* 813411B4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813411B8 | 41 82 00 38 */	beq .L_813411F0
/* 813411BC | 7F 83 E3 78 */	mr r3, r28
/* 813411C0 | 48 2C 74 ED */	bl fn_816086AC
/* 813411C4 | 7C A3 E8 50 */	subf r5, r3, r29
/* 813411C8 | 7F 83 E3 78 */	mr r3, r28
/* 813411CC | 38 8D 80 A4 */	li r4, lbl_816960E4@sda21
/* 813411D0 | 48 2C 75 85 */	bl fn_81608754
/* 813411D4 | 7F 83 E3 78 */	mr r3, r28
/* 813411D8 | 48 2C 74 D5 */	bl fn_816086AC
/* 813411DC | 7C 9B FA 14 */	add r4, r27, r31
/* 813411E0 | 7C A3 E8 50 */	subf r5, r3, r29
/* 813411E4 | 7F 83 E3 78 */	mr r3, r28
/* 813411E8 | 38 84 00 02 */	addi r4, r4, 0x2
/* 813411EC | 48 2C 75 69 */	bl fn_81608754
.L_813411F0:
/* 813411F0 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 813411F4 | 3B FF 00 1A */	addi r31, r31, 0x1a
/* 813411F8 | 2C 1E 00 0A */	cmpwi r30, 0xa
/* 813411FC | 41 80 FF B4 */	blt .L_813411B0
/* 81341200 | 80 BB 01 04 */	lwz r5, 0x104(r27)
/* 81341204 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81341208 | 41 82 00 DC */	beq .L_813412E4
/* 8134120C | 2C 05 00 64 */	cmpwi r5, 0x64
/* 81341210 | 40 81 00 08 */	ble .L_81341218
/* 81341214 | 38 A0 00 63 */	li r5, 0x63
.L_81341218:
/* 81341218 | 7F 43 D3 78 */	mr r3, r26
/* 8134121C | 38 81 00 08 */	addi r4, r1, 0x8
/* 81341220 | 4B FF F9 FD */	bl set_num_str__Q23ipl11PlayTimeLogFPwUl
/* 81341224 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81341228 | 38 80 00 91 */	li r4, 0x91
/* 8134122C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81341230 | 80 7F 00 80 */	lwz r3, 0x80(r31)
/* 81341234 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81341238 | 4B FF D5 85 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 8134123C | 80 BF 00 80 */	lwz r5, 0x80(r31)
/* 81341240 | 7C 7F 1B 78 */	mr r31, r3
/* 81341244 | 38 80 00 92 */	li r4, 0x92
/* 81341248 | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 8134124C | 4B FF D5 71 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 81341250 | 7C 7E 1B 78 */	mr r30, r3
/* 81341254 | 7F 83 E3 78 */	mr r3, r28
/* 81341258 | 48 2C 74 55 */	bl fn_816086AC
/* 8134125C | 7C A3 E8 50 */	subf r5, r3, r29
/* 81341260 | 7F 83 E3 78 */	mr r3, r28
/* 81341264 | 38 8D 80 9E */	li r4, lbl_816960DE@sda21
/* 81341268 | 48 2C 74 ED */	bl fn_81608754
/* 8134126C | 7F 83 E3 78 */	mr r3, r28
/* 81341270 | 48 2C 74 3D */	bl fn_816086AC
/* 81341274 | 7C A3 E8 50 */	subf r5, r3, r29
/* 81341278 | 7F 83 E3 78 */	mr r3, r28
/* 8134127C | 7F E4 FB 78 */	mr r4, r31
/* 81341280 | 48 2C 74 D5 */	bl fn_81608754
/* 81341284 | 7F 83 E3 78 */	mr r3, r28
/* 81341288 | 48 2C 74 25 */	bl fn_816086AC
/* 8134128C | 7C A3 E8 50 */	subf r5, r3, r29
/* 81341290 | 7F 83 E3 78 */	mr r3, r28
/* 81341294 | 38 8D 80 A8 */	li r4, lbl_816960E8@sda21
/* 81341298 | 48 2C 74 BD */	bl fn_81608754
/* 8134129C | 7F 83 E3 78 */	mr r3, r28
/* 813412A0 | 48 2C 74 0D */	bl fn_816086AC
/* 813412A4 | 7C A3 E8 50 */	subf r5, r3, r29
/* 813412A8 | 7F 83 E3 78 */	mr r3, r28
/* 813412AC | 38 81 00 08 */	addi r4, r1, 0x8
/* 813412B0 | 48 2C 74 A5 */	bl fn_81608754
/* 813412B4 | 7F 83 E3 78 */	mr r3, r28
/* 813412B8 | 48 2C 73 F5 */	bl fn_816086AC
/* 813412BC | 7C A3 E8 50 */	subf r5, r3, r29
/* 813412C0 | 7F 83 E3 78 */	mr r3, r28
/* 813412C4 | 38 8D 80 A8 */	li r4, lbl_816960E8@sda21
/* 813412C8 | 48 2C 74 8D */	bl fn_81608754
/* 813412CC | 7F 83 E3 78 */	mr r3, r28
/* 813412D0 | 48 2C 73 DD */	bl fn_816086AC
/* 813412D4 | 7C A3 E8 50 */	subf r5, r3, r29
/* 813412D8 | 7F 83 E3 78 */	mr r3, r28
/* 813412DC | 7F C4 F3 78 */	mr r4, r30
/* 813412E0 | 48 2C 74 75 */	bl fn_81608754
.L_813412E4:
/* 813412E4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813412E8 | 48 2B 82 21 */	bl _restgpr_26
/* 813412EC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813412F0 | 7C 08 03 A6 */	mtlr r0
/* 813412F4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813412F8 | 4E 80 00 20 */	blr
.endfn create_sendmsg_text__Q23ipl11PlayTimeLogFPCQ23ipl13SendMsgBufferPwi

# .text:0xC74 | 0x813412FC | size: 0x84
# ipl::PlayTimeLog::create_new_playlog(const OSPlayRecord*)
.fn create_new_playlog__Q23ipl11PlayTimeLogFPC12OSPlayRecord, global
/* 813412FC | 94 21 F9 80 */	stwu r1, -0x680(r1)
/* 81341300 | 7C 08 02 A6 */	mflr r0
/* 81341304 | 3C A0 30 33 */	lis r5, 0x3033
/* 81341308 | 90 01 06 84 */	stw r0, 0x684(r1)
/* 8134130C | 38 05 5F 30 */	addi r0, r5, 0x5f30
/* 81341310 | 38 A0 05 58 */	li r5, 0x558
/* 81341314 | 93 E1 06 7C */	stw r31, 0x67c(r1)
/* 81341318 | 7C 9F 23 78 */	mr r31, r4
/* 8134131C | 38 80 00 00 */	li r4, 0x0
/* 81341320 | 93 C1 06 78 */	stw r30, 0x678(r1)
/* 81341324 | 7C 7E 1B 78 */	mr r30, r3
/* 81341328 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8134132C | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81341330 | 4B FE F0 05 */	bl memset
/* 81341334 | 38 61 05 68 */	addi r3, r1, 0x568
/* 81341338 | 38 80 00 00 */	li r4, 0x0
/* 8134133C | 38 A0 01 08 */	li r5, 0x108
/* 81341340 | 4B FE EF F5 */	bl memset
/* 81341344 | 7F E4 FB 78 */	mr r4, r31
/* 81341348 | 38 61 00 18 */	addi r3, r1, 0x18
/* 8134134C | 38 A0 00 80 */	li r5, 0x80
/* 81341350 | 4B FE EE E1 */	bl memcpy
/* 81341354 | 38 00 00 01 */	li r0, 0x1
/* 81341358 | 7F C3 F3 78 */	mr r3, r30
/* 8134135C | 98 01 00 10 */	stb r0, 0x10(r1)
/* 81341360 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81341364 | 48 00 00 B1 */	bl create_new_record__Q23ipl11PlayTimeLogFPCQ23ipl11EventBuffer
/* 81341368 | 80 01 06 84 */	lwz r0, 0x684(r1)
/* 8134136C | 83 E1 06 7C */	lwz r31, 0x67c(r1)
/* 81341370 | 83 C1 06 78 */	lwz r30, 0x678(r1)
/* 81341374 | 7C 08 03 A6 */	mtlr r0
/* 81341378 | 38 21 06 80 */	addi r1, r1, 0x680
/* 8134137C | 4E 80 00 20 */	blr
.endfn create_new_playlog__Q23ipl11PlayTimeLogFPC12OSPlayRecord

# .text:0xCF8 | 0x81341380 | size: 0x94
# ipl::PlayTimeLog::create_new_sendmsglog(const wchar_t*)
.fn create_new_sendmsglog__Q23ipl11PlayTimeLogFPCw, global
/* 81341380 | 94 21 F9 80 */	stwu r1, -0x680(r1)
/* 81341384 | 7C 08 02 A6 */	mflr r0
/* 81341388 | 3C A0 30 33 */	lis r5, 0x3033
/* 8134138C | 90 01 06 84 */	stw r0, 0x684(r1)
/* 81341390 | 38 05 5F 30 */	addi r0, r5, 0x5f30
/* 81341394 | 38 A0 05 58 */	li r5, 0x558
/* 81341398 | 93 E1 06 7C */	stw r31, 0x67c(r1)
/* 8134139C | 7C 9F 23 78 */	mr r31, r4
/* 813413A0 | 38 80 00 00 */	li r4, 0x0
/* 813413A4 | 93 C1 06 78 */	stw r30, 0x678(r1)
/* 813413A8 | 7C 7E 1B 78 */	mr r30, r3
/* 813413AC | 38 61 00 10 */	addi r3, r1, 0x10
/* 813413B0 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 813413B4 | 4B FE EF 81 */	bl memset
/* 813413B8 | 38 61 05 68 */	addi r3, r1, 0x568
/* 813413BC | 38 80 00 00 */	li r4, 0x0
/* 813413C0 | 38 A0 01 08 */	li r5, 0x108
/* 813413C4 | 4B FE EF 71 */	bl memset
/* 813413C8 | 38 61 05 6A */	addi r3, r1, 0x56a
/* 813413CC | 38 80 00 00 */	li r4, 0x0
/* 813413D0 | 38 A0 00 18 */	li r5, 0x18
/* 813413D4 | 4B FE EF 61 */	bl memset
/* 813413D8 | 7F E4 FB 78 */	mr r4, r31
/* 813413DC | 38 61 05 6A */	addi r3, r1, 0x56a
/* 813413E0 | 38 A0 00 0A */	li r5, 0xa
/* 813413E4 | 48 2C 73 01 */	bl fn_816086E4
/* 813413E8 | 38 00 00 01 */	li r0, 0x1
/* 813413EC | 7F C3 F3 78 */	mr r3, r30
/* 813413F0 | 98 01 05 68 */	stb r0, 0x568(r1)
/* 813413F4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813413F8 | 48 00 00 1D */	bl create_new_record__Q23ipl11PlayTimeLogFPCQ23ipl11EventBuffer
/* 813413FC | 80 01 06 84 */	lwz r0, 0x684(r1)
/* 81341400 | 83 E1 06 7C */	lwz r31, 0x67c(r1)
/* 81341404 | 83 C1 06 78 */	lwz r30, 0x678(r1)
/* 81341408 | 7C 08 03 A6 */	mtlr r0
/* 8134140C | 38 21 06 80 */	addi r1, r1, 0x680
/* 81341410 | 4E 80 00 20 */	blr
.endfn create_new_sendmsglog__Q23ipl11PlayTimeLogFPCw

# .text:0xD8C | 0x81341414 | size: 0x13C
# ipl::PlayTimeLog::create_new_record(const ipl::EventBuffer*)
.fn create_new_record__Q23ipl11PlayTimeLogFPCQ23ipl11EventBuffer, global
/* 81341414 | 94 21 FE 90 */	stwu r1, -0x170(r1)
/* 81341418 | 7C 08 02 A6 */	mflr r0
/* 8134141C | 90 01 01 74 */	stw r0, 0x174(r1)
/* 81341420 | 39 61 01 70 */	addi r11, r1, 0x170
/* 81341424 | 48 2B 80 99 */	bl _savegpr_26
/* 81341428 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 8134142C | 7C 7F 1B 78 */	mr r31, r3
/* 81341430 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 81341434 | 7C 9A 23 78 */	mr r26, r4
/* 81341438 | 88 05 02 BC */	lbz r0, 0x2bc(r5)
/* 8134143C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81341440 | 41 82 00 0C */	beq .L_8134144C
/* 81341444 | 3B 80 00 00 */	li r28, 0x0
/* 81341448 | 48 00 00 08 */	b .L_81341450
.L_8134144C:
/* 8134144C | 83 85 00 7C */	lwz r28, 0x7c(r5)
.L_81341450:
/* 81341450 | 7F E3 FB 78 */	mr r3, r31
/* 81341454 | 7F 44 D3 78 */	mr r4, r26
/* 81341458 | 4B FF F8 A5 */	bl create_text__Q23ipl11PlayTimeLogFPCQ23ipl11EventBuffer
/* 8134145C | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 81341460 | 7C 7B 1B 78 */	mr r27, r3
/* 81341464 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 81341468 | 38 80 00 88 */	li r4, 0x88
/* 8134146C | 80 65 00 80 */	lwz r3, 0x80(r5)
/* 81341470 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81341474 | 4B FF D3 49 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 81341478 | C0 02 80 B0 */	lfs f0, lbl_816944B0@sda21(r0)
/* 8134147C | 3B C0 00 00 */	li r30, 0x0
/* 81341480 | 81 02 80 A0 */	lwz r8, lbl_816944A0@sda21(r0)
/* 81341484 | 7C 7D 1B 78 */	mr r29, r3
/* 81341488 | 80 E2 80 A4 */	lwz r7, lbl_816944A4@sda21(r0)
/* 8134148C | 38 61 00 58 */	addi r3, r1, 0x58
/* 81341490 | 80 C2 80 A8 */	lwz r6, lbl_816944A8@sda21(r0)
/* 81341494 | 38 80 00 00 */	li r4, 0x0
/* 81341498 | 80 02 80 AC */	lwz r0, lbl_816944AC@sda21(r0)
/* 8134149C | 38 A0 01 00 */	li r5, 0x100
/* 813414A0 | D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 813414A4 | D0 01 00 50 */	stfs f0, 0x50(r1)
/* 813414A8 | 93 C1 00 48 */	stw r30, 0x48(r1)
/* 813414AC | 93 41 00 44 */	stw r26, 0x44(r1)
/* 813414B0 | 91 01 00 3C */	stw r8, 0x3c(r1)
/* 813414B4 | 90 E1 00 40 */	stw r7, 0x40(r1)
/* 813414B8 | 90 C1 00 34 */	stw r6, 0x34(r1)
/* 813414BC | 90 01 00 38 */	stw r0, 0x38(r1)
/* 813414C0 | 4B FE EE 75 */	bl memset
/* 813414C4 | 38 01 00 58 */	addi r0, r1, 0x58
/* 813414C8 | 3C 80 81 63 */	lis r4, lbl_81635206@ha
/* 813414CC | 90 01 00 08 */	stw r0, 0x8(r1)
/* 813414D0 | 38 60 00 01 */	li r3, 0x1
/* 813414D4 | 39 41 00 44 */	addi r10, r1, 0x44
/* 813414D8 | 38 A1 00 3C */	addi r5, r1, 0x3c
/* 813414DC | 93 C1 00 0C */	stw r30, 0xc(r1)
/* 813414E0 | 38 01 00 34 */	addi r0, r1, 0x34
/* 813414E4 | 39 60 00 02 */	li r11, 0x2
/* 813414E8 | 38 84 52 06 */	addi r4, r4, lbl_81635206@l
/* 813414EC | 90 61 00 10 */	stw r3, 0x10(r1)
/* 813414F0 | 7F 83 E3 78 */	mr r3, r28
/* 813414F4 | 38 DF 00 88 */	addi r6, r31, 0x88
/* 813414F8 | 39 21 00 4C */	addi r9, r1, 0x4c
/* 813414FC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81341500 | 38 E0 00 00 */	li r7, 0x0
/* 81341504 | 39 00 00 00 */	li r8, 0x0
/* 81341508 | 93 61 00 18 */	stw r27, 0x18(r1)
/* 8134150C | 93 C1 00 1C */	stw r30, 0x1c(r1)
/* 81341510 | 91 41 00 20 */	stw r10, 0x20(r1)
/* 81341514 | 93 C1 00 30 */	stw r30, 0x30(r1)
/* 81341518 | 90 A1 00 24 */	stw r5, 0x24(r1)
/* 8134151C | 99 61 00 33 */	stb r11, 0x33(r1)
/* 81341520 | 90 01 00 28 */	stw r0, 0x28(r1)
/* 81341524 | 81 41 00 30 */	lwz r10, 0x30(r1)
/* 81341528 | 80 AD 80 1C */	lwz r5, RBRFileType_Log@sda21(r0)
/* 8134152C | 4B FF DC 41 */	bl createNewRecord__Q33ipl3cdb7ManagerFPCcPCcPC14OSCalendarTimePUlPUsRCQ33ipl4math4VEC2UlRC15NWC24FriendAddrUsUsPCwPCwPCvPPCvPUlP17RBRAttachmentType
/* 81341530 | 7F 63 DB 78 */	mr r3, r27
/* 81341534 | 48 2B 6B B9 */	bl __dla__FPv
/* 81341538 | 39 61 01 70 */	addi r11, r1, 0x170
/* 8134153C | 48 2B 7F CD */	bl _restgpr_26
/* 81341540 | 80 01 01 74 */	lwz r0, 0x174(r1)
/* 81341544 | 7C 08 03 A6 */	mtlr r0
/* 81341548 | 38 21 01 70 */	addi r1, r1, 0x170
/* 8134154C | 4E 80 00 20 */	blr
.endfn create_new_record__Q23ipl11PlayTimeLogFPCQ23ipl11EventBuffer

# .text:0xEC8 | 0x81341550 | size: 0x11C
# ipl::PlayTimeLog::add_playlog(const OSPlayRecord*, _CDBRecord*)
.fn add_playlog__Q23ipl11PlayTimeLogFPC12OSPlayRecordP10_CDBRecord, global
/* 81341550 | 94 21 F9 70 */	stwu r1, -0x690(r1)
/* 81341554 | 7C 08 02 A6 */	mflr r0
/* 81341558 | 90 01 06 94 */	stw r0, 0x694(r1)
/* 8134155C | 39 61 06 90 */	addi r11, r1, 0x690
/* 81341560 | 48 2B 7F 61 */	bl _savegpr_27
/* 81341564 | 3C C0 30 33 */	lis r6, 0x3033
/* 81341568 | 7C 7D 1B 78 */	mr r29, r3
/* 8134156C | 38 06 5F 30 */	addi r0, r6, 0x5f30
/* 81341570 | 7C 9B 23 78 */	mr r27, r4
/* 81341574 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81341578 | 7C BE 2B 78 */	mr r30, r5
/* 8134157C | 38 61 00 10 */	addi r3, r1, 0x10
/* 81341580 | 38 80 00 00 */	li r4, 0x0
/* 81341584 | 38 A0 05 58 */	li r5, 0x558
/* 81341588 | 4B FE ED AD */	bl memset
/* 8134158C | 38 61 05 68 */	addi r3, r1, 0x568
/* 81341590 | 38 80 00 00 */	li r4, 0x0
/* 81341594 | 38 A0 01 08 */	li r5, 0x108
/* 81341598 | 4B FE ED 9D */	bl memset
/* 8134159C | 7F A3 EB 78 */	mr r3, r29
/* 813415A0 | 7F C4 F3 78 */	mr r4, r30
/* 813415A4 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813415A8 | 48 00 01 D1 */	bl read_record__Q23ipl11PlayTimeLogFP10_CDBRecordPQ23ipl11EventBuffer
/* 813415AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813415B0 | 7C 7F 1B 78 */	mr r31, r3
/* 813415B4 | 41 82 00 A0 */	beq .L_81341654
/* 813415B8 | 38 00 00 0A */	li r0, 0xa
/* 813415BC | 38 61 00 08 */	addi r3, r1, 0x8
/* 813415C0 | 38 80 00 00 */	li r4, 0x0
/* 813415C4 | 38 A0 00 00 */	li r5, 0x0
/* 813415C8 | 7C 09 03 A6 */	mtctr r0
.L_813415CC:
/* 813415CC | 7F 83 2A 14 */	add r28, r3, r5
/* 813415D0 | 88 1C 00 08 */	lbz r0, 0x8(r28)
/* 813415D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813415D8 | 40 82 00 28 */	bne .L_81341600
/* 813415DC | 38 61 00 18 */	addi r3, r1, 0x18
/* 813415E0 | 7F 64 DB 78 */	mr r4, r27
/* 813415E4 | 7C 63 2A 14 */	add r3, r3, r5
/* 813415E8 | 38 A0 00 80 */	li r5, 0x80
/* 813415EC | 4B FE EC 45 */	bl memcpy
/* 813415F0 | 38 00 00 01 */	li r0, 0x1
/* 813415F4 | 38 80 00 01 */	li r4, 0x1
/* 813415F8 | 98 1C 00 08 */	stb r0, 0x8(r28)
/* 813415FC | 48 00 00 0C */	b .L_81341608
.L_81341600:
/* 81341600 | 38 A5 00 88 */	addi r5, r5, 0x88
/* 81341604 | 42 00 FF C8 */	bdnz .L_813415CC
.L_81341608:
/* 81341608 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8134160C | 40 82 00 34 */	bne .L_81341640
/* 81341610 | 80 BB 00 64 */	lwz r5, 0x64(r27)
/* 81341614 | 80 7B 00 5C */	lwz r3, 0x5c(r27)
/* 81341618 | 80 9B 00 60 */	lwz r4, 0x60(r27)
/* 8134161C | 7C 63 28 10 */	subfc r3, r3, r5
/* 81341620 | 80 1B 00 58 */	lwz r0, 0x58(r27)
/* 81341624 | 80 A1 05 64 */	lwz r5, 0x564(r1)
/* 81341628 | 7C 00 21 10 */	subfe r0, r0, r4
/* 8134162C | 80 81 05 60 */	lwz r4, 0x560(r1)
/* 81341630 | 7C 65 18 14 */	addc r3, r5, r3
/* 81341634 | 7C 04 01 14 */	adde r0, r4, r0
/* 81341638 | 90 61 05 64 */	stw r3, 0x564(r1)
/* 8134163C | 90 01 05 60 */	stw r0, 0x560(r1)
.L_81341640:
/* 81341640 | 7F A3 EB 78 */	mr r3, r29
/* 81341644 | 7F C4 F3 78 */	mr r4, r30
/* 81341648 | 7F E6 FB 78 */	mr r6, r31
/* 8134164C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81341650 | 48 00 02 09 */	bl write_record__Q23ipl11PlayTimeLogFP10_CDBRecordPQ23ipl11EventBufferPUc
.L_81341654:
/* 81341654 | 39 61 06 90 */	addi r11, r1, 0x690
/* 81341658 | 48 2B 7E B5 */	bl _restgpr_27
/* 8134165C | 80 01 06 94 */	lwz r0, 0x694(r1)
/* 81341660 | 7C 08 03 A6 */	mtlr r0
/* 81341664 | 38 21 06 90 */	addi r1, r1, 0x690
/* 81341668 | 4E 80 00 20 */	blr
.endfn add_playlog__Q23ipl11PlayTimeLogFPC12OSPlayRecordP10_CDBRecord

# .text:0xFE4 | 0x8134166C | size: 0x10C
# ipl::PlayTimeLog::add_sendmsglog(const wchar_t*, _CDBRecord*)
.fn add_sendmsglog__Q23ipl11PlayTimeLogFPCwP10_CDBRecord, global
/* 8134166C | 94 21 F9 70 */	stwu r1, -0x690(r1)
/* 81341670 | 7C 08 02 A6 */	mflr r0
/* 81341674 | 90 01 06 94 */	stw r0, 0x694(r1)
/* 81341678 | 39 61 06 90 */	addi r11, r1, 0x690
/* 8134167C | 48 2B 7E 41 */	bl _savegpr_26
/* 81341680 | 3C C0 30 33 */	lis r6, 0x3033
/* 81341684 | 7C 7A 1B 78 */	mr r26, r3
/* 81341688 | 38 06 5F 30 */	addi r0, r6, 0x5f30
/* 8134168C | 7C 9B 23 78 */	mr r27, r4
/* 81341690 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81341694 | 7C BC 2B 78 */	mr r28, r5
/* 81341698 | 38 61 00 10 */	addi r3, r1, 0x10
/* 8134169C | 38 80 00 00 */	li r4, 0x0
/* 813416A0 | 38 A0 05 58 */	li r5, 0x558
/* 813416A4 | 4B FE EC 91 */	bl memset
/* 813416A8 | 38 61 05 68 */	addi r3, r1, 0x568
/* 813416AC | 38 80 00 00 */	li r4, 0x0
/* 813416B0 | 38 A0 01 08 */	li r5, 0x108
/* 813416B4 | 4B FE EC 81 */	bl memset
/* 813416B8 | 7F 43 D3 78 */	mr r3, r26
/* 813416BC | 7F 84 E3 78 */	mr r4, r28
/* 813416C0 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813416C4 | 48 00 00 B5 */	bl read_record__Q23ipl11PlayTimeLogFP10_CDBRecordPQ23ipl11EventBuffer
/* 813416C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813416CC | 7C 7D 1B 78 */	mr r29, r3
/* 813416D0 | 41 82 00 90 */	beq .L_81341760
/* 813416D4 | 38 00 00 0A */	li r0, 0xa
/* 813416D8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813416DC | 38 A0 00 00 */	li r5, 0x0
/* 813416E0 | 38 60 00 00 */	li r3, 0x0
/* 813416E4 | 7C 09 03 A6 */	mtctr r0
.L_813416E8:
/* 813416E8 | 7F C4 1A 14 */	add r30, r4, r3
/* 813416EC | 88 1E 05 60 */	lbz r0, 0x560(r30)
/* 813416F0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813416F4 | 40 82 00 3C */	bne .L_81341730
/* 813416F8 | 3B E1 05 6A */	addi r31, r1, 0x56a
/* 813416FC | 38 80 00 00 */	li r4, 0x0
/* 81341700 | 7F FF 1A 14 */	add r31, r31, r3
/* 81341704 | 38 A0 00 18 */	li r5, 0x18
/* 81341708 | 7F E3 FB 78 */	mr r3, r31
/* 8134170C | 4B FE EC 29 */	bl memset
/* 81341710 | 7F E3 FB 78 */	mr r3, r31
/* 81341714 | 7F 64 DB 78 */	mr r4, r27
/* 81341718 | 38 A0 00 0A */	li r5, 0xa
/* 8134171C | 48 2C 6F C9 */	bl fn_816086E4
/* 81341720 | 38 00 00 01 */	li r0, 0x1
/* 81341724 | 38 A0 00 01 */	li r5, 0x1
/* 81341728 | 98 1E 05 60 */	stb r0, 0x560(r30)
/* 8134172C | 48 00 00 0C */	b .L_81341738
.L_81341730:
/* 81341730 | 38 63 00 1A */	addi r3, r3, 0x1a
/* 81341734 | 42 00 FF B4 */	bdnz .L_813416E8
.L_81341738:
/* 81341738 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8134173C | 40 82 00 10 */	bne .L_8134174C
/* 81341740 | 80 61 06 6C */	lwz r3, 0x66c(r1)
/* 81341744 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81341748 | 90 01 06 6C */	stw r0, 0x66c(r1)
.L_8134174C:
/* 8134174C | 7F 43 D3 78 */	mr r3, r26
/* 81341750 | 7F 84 E3 78 */	mr r4, r28
/* 81341754 | 7F A6 EB 78 */	mr r6, r29
/* 81341758 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8134175C | 48 00 00 FD */	bl write_record__Q23ipl11PlayTimeLogFP10_CDBRecordPQ23ipl11EventBufferPUc
.L_81341760:
/* 81341760 | 39 61 06 90 */	addi r11, r1, 0x690
/* 81341764 | 48 2B 7D A5 */	bl _restgpr_26
/* 81341768 | 80 01 06 94 */	lwz r0, 0x694(r1)
/* 8134176C | 7C 08 03 A6 */	mtlr r0
/* 81341770 | 38 21 06 90 */	addi r1, r1, 0x690
/* 81341774 | 4E 80 00 20 */	blr
.endfn add_sendmsglog__Q23ipl11PlayTimeLogFPCwP10_CDBRecord

# .text:0x10F0 | 0x81341778 | size: 0xE0
# ipl::PlayTimeLog::read_record(_CDBRecord*, ipl::EventBuffer*)
.fn read_record__Q23ipl11PlayTimeLogFP10_CDBRecordPQ23ipl11EventBuffer, global
/* 81341778 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8134177C | 7C 08 02 A6 */	mflr r0
/* 81341780 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81341784 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81341788 | 48 2B 7D 3D */	bl _savegpr_28
/* 8134178C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81341790 | 7C 9C 23 78 */	mr r28, r4
/* 81341794 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81341798 | 7C BD 2B 78 */	mr r29, r5
/* 8134179C | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 813417A0 | 3B C0 00 00 */	li r30, 0x0
/* 813417A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813417A8 | 41 82 00 0C */	beq .L_813417B4
/* 813417AC | 3B E0 00 00 */	li r31, 0x0
/* 813417B0 | 48 00 00 08 */	b .L_813417B8
.L_813417B4:
/* 813417B4 | 83 E3 00 7C */	lwz r31, 0x7c(r3)
.L_813417B8:
/* 813417B8 | 7F E3 FB 78 */	mr r3, r31
/* 813417BC | 7F 84 E3 78 */	mr r4, r28
/* 813417C0 | 4B FF E7 91 */	bl open__Q33ipl3cdb7ManagerFP10_CDBRecord
/* 813417C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813417C8 | 41 82 00 74 */	beq .L_8134183C
/* 813417CC | 7F E3 FB 78 */	mr r3, r31
/* 813417D0 | 7F 84 E3 78 */	mr r4, r28
/* 813417D4 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813417D8 | 4B FF E6 31 */	bl getDataSize__Q33ipl3cdb7ManagerFP10_CDBRecordPUl
/* 813417DC | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813417E0 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 813417E4 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813417E8 | 38 A0 00 04 */	li r5, 0x4
/* 813417EC | 80 84 00 38 */	lwz r4, 0x38(r4)
/* 813417F0 | 48 2B 68 E5 */	bl __nwa__FUlPQ23EGG4Heapi
/* 813417F4 | 7C 7E 1B 78 */	mr r30, r3
/* 813417F8 | 80 C1 00 08 */	lwz r6, 0x8(r1)
/* 813417FC | 7F E3 FB 78 */	mr r3, r31
/* 81341800 | 7F 84 E3 78 */	mr r4, r28
/* 81341804 | 7F C5 F3 78 */	mr r5, r30
/* 81341808 | 4B FF E7 B1 */	bl read__Q33ipl3cdb7ManagerFP10_CDBRecordPvUl
/* 8134180C | 80 1E 01 30 */	lwz r0, 0x130(r30)
/* 81341810 | 80 7E 01 2C */	lwz r3, 0x12c(r30)
/* 81341814 | 28 00 05 58 */	cmplwi r0, 0x558
/* 81341818 | 7C 9E 1A 14 */	add r4, r30, r3
/* 8134181C | 40 82 00 14 */	bne .L_81341830
/* 81341820 | 38 7D 00 08 */	addi r3, r29, 0x8
/* 81341824 | 38 A0 05 58 */	li r5, 0x558
/* 81341828 | 4B FE EA 09 */	bl memcpy
/* 8134182C | 48 00 00 10 */	b .L_8134183C
.L_81341830:
/* 81341830 | 7F A3 EB 78 */	mr r3, r29
/* 81341834 | 38 A0 06 68 */	li r5, 0x668
/* 81341838 | 4B FE E9 F9 */	bl memcpy
.L_8134183C:
/* 8134183C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81341840 | 7F C3 F3 78 */	mr r3, r30
/* 81341844 | 48 2B 7C CD */	bl _restgpr_28
/* 81341848 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8134184C | 7C 08 03 A6 */	mtlr r0
/* 81341850 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81341854 | 4E 80 00 20 */	blr
.endfn read_record__Q23ipl11PlayTimeLogFP10_CDBRecordPQ23ipl11EventBuffer

# .text:0x11D0 | 0x81341858 | size: 0x118
# ipl::PlayTimeLog::write_record(_CDBRecord*, ipl::EventBuffer*, unsigned char*)
.fn write_record__Q23ipl11PlayTimeLogFP10_CDBRecordPQ23ipl11EventBufferPUc, global
/* 81341858 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8134185C | 7C 08 02 A6 */	mflr r0
/* 81341860 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 81341864 | 39 61 00 60 */	addi r11, r1, 0x60
/* 81341868 | 48 2B 7C 55 */	bl _savegpr_26
/* 8134186C | 3C E0 81 09 */	lis r7, smArg__Q23ipl6System@ha
/* 81341870 | 7C 9A 23 78 */	mr r26, r4
/* 81341874 | 38 E7 90 08 */	addi r7, r7, smArg__Q23ipl6System@l
/* 81341878 | 7C BB 2B 78 */	mr r27, r5
/* 8134187C | 88 07 02 BC */	lbz r0, 0x2bc(r7)
/* 81341880 | 7C DC 33 78 */	mr r28, r6
/* 81341884 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81341888 | 41 82 00 0C */	beq .L_81341894
/* 8134188C | 3B C0 00 00 */	li r30, 0x0
/* 81341890 | 48 00 00 08 */	b .L_81341898
.L_81341894:
/* 81341894 | 83 C7 00 7C */	lwz r30, 0x7c(r7)
.L_81341898:
/* 81341898 | 7F 64 DB 78 */	mr r4, r27
/* 8134189C | 4B FF F4 61 */	bl create_text__Q23ipl11PlayTimeLogFPCQ23ipl11EventBuffer
/* 813418A0 | 81 22 80 B4 */	lwz r9, lbl_816944B4@sda21(r0)
/* 813418A4 | 3B E0 00 00 */	li r31, 0x0
/* 813418A8 | 81 02 80 B8 */	lwz r8, lbl_816944B8@sda21(r0)
/* 813418AC | 7C 7D 1B 78 */	mr r29, r3
/* 813418B0 | 80 E2 80 BC */	lwz r7, lbl_816944BC@sda21(r0)
/* 813418B4 | 7F C3 F3 78 */	mr r3, r30
/* 813418B8 | 80 02 80 C0 */	lwz r0, lbl_816944C0@sda21(r0)
/* 813418BC | 7F 44 D3 78 */	mr r4, r26
/* 813418C0 | 93 E1 00 3C */	stw r31, 0x3c(r1)
/* 813418C4 | 38 A0 00 00 */	li r5, 0x0
/* 813418C8 | 38 C0 00 01 */	li r6, 0x1
/* 813418CC | 93 61 00 38 */	stw r27, 0x38(r1)
/* 813418D0 | 91 21 00 30 */	stw r9, 0x30(r1)
/* 813418D4 | 91 01 00 34 */	stw r8, 0x34(r1)
/* 813418D8 | 90 E1 00 28 */	stw r7, 0x28(r1)
/* 813418DC | 90 01 00 2C */	stw r0, 0x2c(r1)
/* 813418E0 | 4B FF E7 CD */	bl seek__Q33ipl3cdb7ManagerFP10_CDBRecordl7CDBSeek
/* 813418E4 | C0 3C 00 04 */	lfs f1, 0x4(r28)
/* 813418E8 | 38 61 00 20 */	addi r3, r1, 0x20
/* 813418EC | C0 5C 00 08 */	lfs f2, 0x8(r28)
/* 813418F0 | 4B FF 4C 79 */	bl __ct__Q33ipl4math4VEC2Fff
/* 813418F4 | 93 A1 00 08 */	stw r29, 0x8(r1)
/* 813418F8 | 7C 65 1B 78 */	mr r5, r3
/* 813418FC | 38 81 00 38 */	addi r4, r1, 0x38
/* 81341900 | 38 C1 00 30 */	addi r6, r1, 0x30
/* 81341904 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81341908 | 38 01 00 28 */	addi r0, r1, 0x28
/* 8134190C | 7F C3 F3 78 */	mr r3, r30
/* 81341910 | 38 FC 00 18 */	addi r7, r28, 0x18
/* 81341914 | 90 81 00 10 */	stw r4, 0x10(r1)
/* 81341918 | 7F 44 D3 78 */	mr r4, r26
/* 8134191C | 90 C1 00 14 */	stw r6, 0x14(r1)
/* 81341920 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 81341924 | 80 1C 01 1C */	lwz r0, 0x11c(r28)
/* 81341928 | 80 DC 00 0C */	lwz r6, 0xc(r28)
/* 8134192C | A1 1C 01 18 */	lhz r8, 0x118(r28)
/* 81341930 | 7D 5C 02 14 */	add r10, r28, r0
/* 81341934 | A1 3C 01 1A */	lhz r9, 0x11a(r28)
/* 81341938 | 4B FF D9 1D */	bl writeRecord__Q33ipl3cdb7ManagerFP10_CDBRecordRCQ33ipl4math4VEC2UlRC15NWC24FriendAddrUsUsPCwPCwPCvPPCvPUlP17RBRAttachmentType
/* 8134193C | 7F A3 EB 78 */	mr r3, r29
/* 81341940 | 48 2B 67 AD */	bl __dla__FPv
/* 81341944 | 7F 83 E3 78 */	mr r3, r28
/* 81341948 | 48 2B 67 A5 */	bl __dla__FPv
/* 8134194C | 7F C3 F3 78 */	mr r3, r30
/* 81341950 | 7F 44 D3 78 */	mr r4, r26
/* 81341954 | 4B FF E7 D1 */	bl close__Q33ipl3cdb7ManagerFP10_CDBRecord
/* 81341958 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8134195C | 48 2B 7B AD */	bl _restgpr_26
/* 81341960 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 81341964 | 7C 08 03 A6 */	mtlr r0
/* 81341968 | 38 21 00 60 */	addi r1, r1, 0x60
/* 8134196C | 4E 80 00 20 */	blr
.endfn write_record__Q23ipl11PlayTimeLogFP10_CDBRecordPQ23ipl11EventBufferPUc

# .text:0x12E8 | 0x81341970 | size: 0xC
.fn "__sinit_\\iplPlayTimeLog_cpp", global
/* 81341970 | 3C 60 81 09 */	lis r3, smArg__Q23ipl11PlayTimeLog@ha
/* 81341974 | 38 63 95 50 */	addi r3, r3, smArg__Q23ipl11PlayTimeLog@l
/* 81341978 | 4B FF ED 10 */	b __ct__Q23ipl11PlayTimeLogFv
.endfn "__sinit_\\iplPlayTimeLog_cpp"

# 0x8160D1C8..0x8160D1CC | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte "__sinit_\\iplPlayTimeLog_cpp"

# 0x8160D620..0x8160D638 | size: 0x18
.rodata
.balign 8

# .rodata:0x0 | 0x8160D620 | size: 0x16
.obj lbl_8160D620, global
	.string16 "0123456789"
.endobj lbl_8160D620

# .rodata:0x16 | 0x8160D636 | size: 0x2
.obj gap_07_8160D636_rodata, global
.hidden gap_07_8160D636_rodata
	.2byte 0x0000
.endobj gap_07_8160D636_rodata

# 0x816351C0..0x81635218 | size: 0x58
.data
.balign 8

# .data:0x0 | 0x816351C0 | size: 0xD
.obj lbl_816351C0, global
	.string "play_rec.dat"
.endobj lbl_816351C0

# .data:0xD | 0x816351CD | size: 0x13
.obj lbl_816351CD, global
	.string "iplPlayTimeLog.cpp"
.endobj lbl_816351CD

# .data:0x20 | 0x816351E0 | size: 0xE
.obj lbl_816351E0, global
	.string16 "\n     "
.endobj lbl_816351E0

# .data:0x2E | 0x816351EE | size: 0x18
.obj lbl_816351EE, global
	.4byte 0x26060020
	.4byte 0x26060020
	.4byte 0x26060020
	.4byte 0x26060020
	.4byte 0x2606000A
	.4byte 0x000A0000
.endobj lbl_816351EE

# .data:0x46 | 0x81635206 | size: 0xC
.obj lbl_81635206, global
	.string "playtimelog"
.endobj lbl_81635206

# .data:0x52 | 0x81635212 | size: 0x6
.obj gap_08_81635212_data, global
.hidden gap_08_81635212_data
	.4byte 0x00000000
	.2byte 0x0000
.endobj gap_08_81635212_data

# 0x816944A0..0x816944C8 | size: 0x28
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x816944A0 | size: 0x4
.obj lbl_816944A0, global
	.4byte 0x00000668
.endobj lbl_816944A0

# .sdata2:0x4 | 0x816944A4 | size: 0x4
.obj lbl_816944A4, global
	.4byte 0x00000000
.endobj lbl_816944A4

# .sdata2:0x8 | 0x816944A8 | size: 0x4
.obj lbl_816944A8, global
	.4byte 0x00000003
.endobj lbl_816944A8

# .sdata2:0xC | 0x816944AC | size: 0x4
.obj lbl_816944AC, global
	.4byte 0x00000000
.endobj lbl_816944AC

# .sdata2:0x10 | 0x816944B0 | size: 0x4
.obj lbl_816944B0, global
	.float 0
.endobj lbl_816944B0

# .sdata2:0x14 | 0x816944B4 | size: 0x4
.obj lbl_816944B4, global
	.4byte 0x00000668
.endobj lbl_816944B4

# .sdata2:0x18 | 0x816944B8 | size: 0x4
.obj lbl_816944B8, global
	.4byte 0x00000000
.endobj lbl_816944B8

# .sdata2:0x1C | 0x816944BC | size: 0x4
.obj lbl_816944BC, global
	.4byte 0x00000003
.endobj lbl_816944BC

# .sdata2:0x20 | 0x816944C0 | size: 0x4
.obj lbl_816944C0, global
	.4byte 0x00000000
.endobj lbl_816944C0

# .sdata2:0x24 | 0x816944C4 | size: 0x4
.obj gap_09_816944C4_sdata2, global
.hidden gap_09_816944C4_sdata2
	.4byte 0x00000000
.endobj gap_09_816944C4_sdata2

# 0x816960D8..0x816960F0 | size: 0x18
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x816960D8 | size: 0x6
.obj lbl_816960D8, global
	.4byte 0x4E414E44
	.2byte 0x0000
.endobj lbl_816960D8

# .sdata:0x6 | 0x816960DE | size: 0x6
.obj lbl_816960DE, global
	.string16 "\n\n"
.endobj lbl_816960DE

# .sdata:0xC | 0x816960E4 | size: 0x4
.obj lbl_816960E4, global
	.string16 "\n"
.endobj lbl_816960E4

# .sdata:0x10 | 0x816960E8 | size: 0x4
.obj lbl_816960E8, global
	.string16 " "
.endobj lbl_816960E8

# .sdata:0x14 | 0x816960EC | size: 0x4
.obj gap_11_816960EC_sdata, global
.hidden gap_11_816960EC_sdata
	.4byte 0x00000000
.endobj gap_11_816960EC_sdata
