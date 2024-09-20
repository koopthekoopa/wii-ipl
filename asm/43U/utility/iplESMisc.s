.include "macros.inc"
.file "iplESMisc.cpp"

# 0x81365704..0x813682C4 | size: 0x2BC0
.text
.balign 4

# .text:0x0 | 0x81365704 | size: 0x110
# ipl::utility::ESMisc::GetTmdView(EGG::Heap*, unsigned long long, ESTmdView**)
.fn GetTmdView__Q33ipl7utility6ESMiscFPQ23EGG4HeapUxPP9ESTmdView, global
/* 81365704 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81365708 | 7C 08 02 A6 */	mflr r0
/* 8136570C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81365710 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81365714 | 48 29 3D A9 */	bl _savegpr_26
/* 81365718 | 3B E0 00 00 */	li r31, 0x0
/* 8136571C | 7C DB 33 78 */	mr r27, r6
/* 81365720 | 7C BC 2B 78 */	mr r28, r5
/* 81365724 | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 81365728 | 7C 7A 1B 78 */	mr r26, r3
/* 8136572C | 7C FD 3B 78 */	mr r29, r7
/* 81365730 | 7F 64 DB 78 */	mr r4, r27
/* 81365734 | 7F 83 E3 78 */	mr r3, r28
/* 81365738 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 8136573C | 38 A0 00 00 */	li r5, 0x0
/* 81365740 | 48 25 93 F5 */	bl fn_815BEB34
/* 81365744 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81365748 | 7C 7E 1B 78 */	mr r30, r3
/* 8136574C | 40 80 00 20 */	bge .L_8136576C
/* 81365750 | 3C 60 81 64 */	lis r3, lbl_816412C0@ha
/* 81365754 | 7F C4 F3 78 */	mr r4, r30
/* 81365758 | 38 63 12 C0 */	addi r3, r3, lbl_816412C0@l
/* 8136575C | 4C C6 31 82 */	crclr cr1eq
/* 81365760 | 48 1C 8F 41 */	bl OSReport
/* 81365764 | 93 FD 00 00 */	stw r31, 0x0(r29)
/* 81365768 | 48 00 00 90 */	b .L_813657F8
.L_8136576C:
/* 8136576C | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 81365770 | 7F 43 D3 78 */	mr r3, r26
/* 81365774 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 81365778 | 38 A0 FF E0 */	li r5, -0x20
/* 8136577C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81365780 | 38 04 00 1F */	addi r0, r4, 0x1f
/* 81365784 | 54 04 00 34 */	clrrwi r4, r0, 5
/* 81365788 | 7D 89 03 A6 */	mtctr r12
/* 8136578C | 4E 80 04 21 */	bctrl
/* 81365790 | 90 7D 00 00 */	stw r3, 0x0(r29)
/* 81365794 | 38 80 00 00 */	li r4, 0x0
/* 81365798 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 8136579C | 38 05 00 1F */	addi r0, r5, 0x1f
/* 813657A0 | 54 05 00 34 */	clrrwi r5, r0, 5
/* 813657A4 | 4B FC AB 91 */	bl memset
/* 813657A8 | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 813657AC | 7F 64 DB 78 */	mr r4, r27
/* 813657B0 | 7F 83 E3 78 */	mr r3, r28
/* 813657B4 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 813657B8 | 48 25 93 7D */	bl fn_815BEB34
/* 813657BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813657C0 | 7C 7E 1B 78 */	mr r30, r3
/* 813657C4 | 40 80 00 34 */	bge .L_813657F8
/* 813657C8 | 3C 60 81 64 */	lis r3, lbl_816412EB@ha
/* 813657CC | 7F C4 F3 78 */	mr r4, r30
/* 813657D0 | 38 63 12 EB */	addi r3, r3, lbl_816412EB@l
/* 813657D4 | 4C C6 31 82 */	crclr cr1eq
/* 813657D8 | 48 1C 8E C9 */	bl OSReport
/* 813657DC | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 813657E0 | 7F 43 D3 78 */	mr r3, r26
/* 813657E4 | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 813657E8 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813657EC | 7D 89 03 A6 */	mtctr r12
/* 813657F0 | 4E 80 04 21 */	bctrl
/* 813657F4 | 93 FD 00 00 */	stw r31, 0x0(r29)
.L_813657F8:
/* 813657F8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813657FC | 7F C3 F3 78 */	mr r3, r30
/* 81365800 | 48 29 3D 09 */	bl _restgpr_26
/* 81365804 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81365808 | 7C 08 03 A6 */	mtlr r0
/* 8136580C | 38 21 00 30 */	addi r1, r1, 0x30
/* 81365810 | 4E 80 00 20 */	blr
.endfn GetTmdView__Q33ipl7utility6ESMiscFPQ23EGG4HeapUxPP9ESTmdView

# .text:0x110 | 0x81365814 | size: 0x134
# ipl::utility::ESMisc::GetTicketViewList(EGG::Heap*, unsigned long long, ESTicketView**, unsigned long*)
.fn GetTicketViewList__Q33ipl7utility6ESMiscFPQ23EGG4HeapUxPP12ESTicketViewPUl, global
/* 81365814 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81365818 | 7C 08 02 A6 */	mflr r0
/* 8136581C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81365820 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81365824 | 48 29 3C 95 */	bl _savegpr_25
/* 81365828 | 3B E0 00 00 */	li r31, 0x0
/* 8136582C | 7C DA 33 78 */	mr r26, r6
/* 81365830 | 7C BB 2B 78 */	mr r27, r5
/* 81365834 | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 81365838 | 7C 79 1B 78 */	mr r25, r3
/* 8136583C | 7C FC 3B 78 */	mr r28, r7
/* 81365840 | 7D 1D 43 78 */	mr r29, r8
/* 81365844 | 7F 44 D3 78 */	mr r4, r26
/* 81365848 | 7F 63 DB 78 */	mr r3, r27
/* 8136584C | 38 C1 00 08 */	addi r6, r1, 0x8
/* 81365850 | 38 A0 00 00 */	li r5, 0x0
/* 81365854 | 48 25 90 B5 */	bl fn_815BE908
/* 81365858 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136585C | 7C 7E 1B 78 */	mr r30, r3
/* 81365860 | 40 80 00 24 */	bge .L_81365884
/* 81365864 | 3C 60 81 64 */	lis r3, lbl_81641316@ha
/* 81365868 | 7F C4 F3 78 */	mr r4, r30
/* 8136586C | 38 63 13 16 */	addi r3, r3, lbl_81641316@l
/* 81365870 | 4C C6 31 82 */	crclr cr1eq
/* 81365874 | 48 1C 8E 2D */	bl OSReport
/* 81365878 | 93 FC 00 00 */	stw r31, 0x0(r28)
/* 8136587C | 7F C3 F3 78 */	mr r3, r30
/* 81365880 | 48 00 00 B0 */	b .L_81365930
.L_81365884:
/* 81365884 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81365888 | 41 82 00 0C */	beq .L_81365894
/* 8136588C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 81365890 | 90 1D 00 00 */	stw r0, 0x0(r29)
.L_81365894:
/* 81365894 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 81365898 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136589C | 40 82 00 0C */	bne .L_813658A8
/* 813658A0 | 38 60 FB FC */	li r3, -0x404
/* 813658A4 | 48 00 00 8C */	b .L_81365930
.L_813658A8:
/* 813658A8 | 1C 80 00 D8 */	mulli r4, r0, 0xd8
/* 813658AC | 81 99 00 00 */	lwz r12, 0x0(r25)
/* 813658B0 | 7F 23 CB 78 */	mr r3, r25
/* 813658B4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813658B8 | 38 A0 FF E0 */	li r5, -0x20
/* 813658BC | 38 04 00 1F */	addi r0, r4, 0x1f
/* 813658C0 | 54 04 00 34 */	clrrwi r4, r0, 5
/* 813658C4 | 7D 89 03 A6 */	mtctr r12
/* 813658C8 | 4E 80 04 21 */	bctrl
/* 813658CC | 90 7C 00 00 */	stw r3, 0x0(r28)
/* 813658D0 | 7C 65 1B 78 */	mr r5, r3
/* 813658D4 | 7F 44 D3 78 */	mr r4, r26
/* 813658D8 | 7F 63 DB 78 */	mr r3, r27
/* 813658DC | 38 C1 00 08 */	addi r6, r1, 0x8
/* 813658E0 | 48 25 90 29 */	bl fn_815BE908
/* 813658E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813658E8 | 7C 7F 1B 78 */	mr r31, r3
/* 813658EC | 40 80 00 40 */	bge .L_8136592C
/* 813658F0 | 3C 60 81 64 */	lis r3, lbl_8164134C@ha
/* 813658F4 | 7F E4 FB 78 */	mr r4, r31
/* 813658F8 | 38 63 13 4C */	addi r3, r3, lbl_8164134C@l
/* 813658FC | 4C C6 31 82 */	crclr cr1eq
/* 81365900 | 48 1C 8D A1 */	bl OSReport
/* 81365904 | 81 99 00 00 */	lwz r12, 0x0(r25)
/* 81365908 | 7F 23 CB 78 */	mr r3, r25
/* 8136590C | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 81365910 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81365914 | 7D 89 03 A6 */	mtctr r12
/* 81365918 | 4E 80 04 21 */	bctrl
/* 8136591C | 38 00 00 00 */	li r0, 0x0
/* 81365920 | 7F E3 FB 78 */	mr r3, r31
/* 81365924 | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 81365928 | 48 00 00 08 */	b .L_81365930
.L_8136592C:
/* 8136592C | 38 60 00 00 */	li r3, 0x0
.L_81365930:
/* 81365930 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81365934 | 48 29 3B D1 */	bl _restgpr_25
/* 81365938 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8136593C | 7C 08 03 A6 */	mtlr r0
/* 81365940 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81365944 | 4E 80 00 20 */	blr
.endfn GetTicketViewList__Q33ipl7utility6ESMiscFPQ23EGG4HeapUxPP12ESTicketViewPUl

# .text:0x244 | 0x81365948 | size: 0xC0
# ipl::utility::ESMisc::GetTicketView(EGG::Heap*, unsigned long long, ESTicketView*, int)
.fn GetTicketView__Q33ipl7utility6ESMiscFPQ23EGG4HeapUxP12ESTicketViewi, global
/* 81365948 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136594C | 7C 08 02 A6 */	mflr r0
/* 81365950 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81365954 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81365958 | 48 29 3B 6D */	bl _savegpr_28
/* 8136595C | 38 00 00 00 */	li r0, 0x0
/* 81365960 | 7C FD 3B 78 */	mr r29, r7
/* 81365964 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 81365968 | 7D 1E 43 78 */	mr r30, r8
/* 8136596C | 7C 7C 1B 78 */	mr r28, r3
/* 81365970 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 81365974 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81365978 | 39 01 00 0C */	addi r8, r1, 0xc
/* 8136597C | 4B FF FE 99 */	bl GetTicketViewList__Q33ipl7utility6ESMiscFPQ23EGG4HeapUxPP12ESTicketViewPUl
/* 81365980 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 81365984 | 7C 7F 1B 78 */	mr r31, r3
/* 81365988 | 7C 1E 00 40 */	cmplw r30, r0
/* 8136598C | 41 80 00 20 */	blt .L_813659AC
/* 81365990 | 3C 60 81 64 */	lis r3, lbl_81641382@ha
/* 81365994 | 7F C4 F3 78 */	mr r4, r30
/* 81365998 | 38 63 13 82 */	addi r3, r3, lbl_81641382@l
/* 8136599C | 4C C6 31 82 */	crclr cr1eq
/* 813659A0 | 48 1C 8D 01 */	bl OSReport
/* 813659A4 | 3B E0 FB FC */	li r31, -0x404
/* 813659A8 | 48 00 00 24 */	b .L_813659CC
.L_813659AC:
/* 813659AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813659B0 | 40 82 00 1C */	bne .L_813659CC
/* 813659B4 | 1C 1E 00 D8 */	mulli r0, r30, 0xd8
/* 813659B8 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 813659BC | 7F A3 EB 78 */	mr r3, r29
/* 813659C0 | 38 A0 00 D8 */	li r5, 0xd8
/* 813659C4 | 7C 84 02 14 */	add r4, r4, r0
/* 813659C8 | 4B FC A8 69 */	bl memcpy
.L_813659CC:
/* 813659CC | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 813659D0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813659D4 | 41 82 00 18 */	beq .L_813659EC
/* 813659D8 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 813659DC | 7F 83 E3 78 */	mr r3, r28
/* 813659E0 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813659E4 | 7D 89 03 A6 */	mtctr r12
/* 813659E8 | 4E 80 04 21 */	bctrl
.L_813659EC:
/* 813659EC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813659F0 | 7F E3 FB 78 */	mr r3, r31
/* 813659F4 | 48 29 3B 1D */	bl _restgpr_28
/* 813659F8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813659FC | 7C 08 03 A6 */	mtlr r0
/* 81365A00 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81365A04 | 4E 80 00 20 */	blr
.endfn GetTicketView__Q33ipl7utility6ESMiscFPQ23EGG4HeapUxP12ESTicketViewi

# .text:0x304 | 0x81365A08 | size: 0xB4
# ipl::utility::ESMisc::PrivateContentsExist(unsigned long long)
.fn PrivateContentsExist__Q33ipl7utility6ESMiscFUx, global
/* 81365A08 | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 81365A0C | 7C 2C 0B 78 */	mr r12, r1
/* 81365A10 | 21 6B FF 60 */	subfic r11, r11, -0xa0
/* 81365A14 | 7C 21 59 6E */	stwux r1, r1, r11
/* 81365A18 | 7C 08 02 A6 */	mflr r0
/* 81365A1C | 7C 65 1B 78 */	mr r5, r3
/* 81365A20 | 7C 87 23 78 */	mr r7, r4
/* 81365A24 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 81365A28 | 38 C0 00 00 */	li r6, 0x0
/* 81365A2C | 38 00 FF FF */	li r0, -0x1
/* 81365A30 | 3C 80 81 64 */	lis r4, lbl_816413AB@ha
/* 81365A34 | 90 C1 00 24 */	stw r6, 0x24(r1)
/* 81365A38 | 38 61 00 40 */	addi r3, r1, 0x40
/* 81365A3C | 7C A5 00 38 */	and r5, r5, r0
/* 81365A40 | 38 84 13 AB */	addi r4, r4, lbl_816413AB@l
/* 81365A44 | 90 C1 00 20 */	stw r6, 0x20(r1)
/* 81365A48 | 7C E6 00 38 */	and r6, r7, r0
/* 81365A4C | 4C C6 31 82 */	crclr cr1eq
/* 81365A50 | 48 29 B0 31 */	bl sprintf
/* 81365A54 | 38 61 00 40 */	addi r3, r1, 0x40
/* 81365A58 | 38 81 00 24 */	addi r4, r1, 0x24
/* 81365A5C | 38 A1 00 20 */	addi r5, r1, 0x20
/* 81365A60 | 48 20 1C 31 */	bl NANDSecretGetUsage
/* 81365A64 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81365A68 | 7C 64 1B 78 */	mr r4, r3
/* 81365A6C | 40 82 00 10 */	bne .L_81365A7C
/* 81365A70 | 80 A1 00 20 */	lwz r5, 0x20(r1)
/* 81365A74 | 28 05 00 02 */	cmplwi r5, 0x2
/* 81365A78 | 41 81 00 2C */	bgt .L_81365AA4
.L_81365A7C:
/* 81365A7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81365A80 | 41 82 00 1C */	beq .L_81365A9C
/* 81365A84 | 2C 03 FF F4 */	cmpwi r3, -0xc
/* 81365A88 | 41 82 00 14 */	beq .L_81365A9C
/* 81365A8C | 3C 60 81 64 */	lis r3, lbl_816413C4@ha
/* 81365A90 | 38 63 13 C4 */	addi r3, r3, lbl_816413C4@l
/* 81365A94 | 4C C6 31 82 */	crclr cr1eq
/* 81365A98 | 48 1C 8C 09 */	bl OSReport
.L_81365A9C:
/* 81365A9C | 38 60 00 00 */	li r3, 0x0
/* 81365AA0 | 48 00 00 08 */	b .L_81365AA8
.L_81365AA4:
/* 81365AA4 | 38 65 FF FE */	subi r3, r5, 0x2
.L_81365AA8:
/* 81365AA8 | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 81365AAC | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 81365AB0 | 7C 08 03 A6 */	mtlr r0
/* 81365AB4 | 7D 41 53 78 */	mr r1, r10
/* 81365AB8 | 4E 80 00 20 */	blr
.endfn PrivateContentsExist__Q33ipl7utility6ESMiscFUx

# .text:0x3B8 | 0x81365ABC | size: 0x184
# ipl::utility::ESMisc::ContentExist(ESTmdView*, unsigned long, long*)
.fn ContentExist__Q33ipl7utility6ESMiscFP9ESTmdViewUlPl, global
/* 81365ABC | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 81365AC0 | 7C 2C 0B 78 */	mr r12, r1
/* 81365AC4 | 21 6B F7 A0 */	subfic r11, r11, -0x860
/* 81365AC8 | 7C 21 59 6E */	stwux r1, r1, r11
/* 81365ACC | 7C 08 02 A6 */	mflr r0
/* 81365AD0 | 7D 8B 63 78 */	mr r11, r12
/* 81365AD4 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 81365AD8 | 48 29 39 E9 */	bl _savegpr_27
/* 81365ADC | 83 E3 00 0C */	lwz r31, 0xc(r3)
/* 81365AE0 | 7C BB 2B 78 */	mr r27, r5
/* 81365AE4 | 83 C3 00 10 */	lwz r30, 0x10(r3)
/* 81365AE8 | 39 00 00 00 */	li r8, 0x0
/* 81365AEC | 38 C0 00 00 */	li r6, 0x0
/* 81365AF0 | 48 00 00 24 */	b .L_81365B14
.L_81365AF4:
/* 81365AF4 | 7C E3 32 14 */	add r7, r3, r6
/* 81365AF8 | A0 07 00 60 */	lhz r0, 0x60(r7)
/* 81365AFC | 7C 04 00 40 */	cmplw r4, r0
/* 81365B00 | 40 82 00 0C */	bne .L_81365B0C
/* 81365B04 | 83 A7 00 5C */	lwz r29, 0x5c(r7)
/* 81365B08 | 48 00 00 18 */	b .L_81365B20
.L_81365B0C:
/* 81365B0C | 39 08 00 01 */	addi r8, r8, 0x1
/* 81365B10 | 38 C6 00 10 */	addi r6, r6, 0x10
.L_81365B14:
/* 81365B14 | A0 03 00 5A */	lhz r0, 0x5a(r3)
/* 81365B18 | 7C 08 00 40 */	cmplw r8, r0
/* 81365B1C | 41 80 FF D8 */	blt .L_81365AF4
.L_81365B20:
/* 81365B20 | A0 03 00 5A */	lhz r0, 0x5a(r3)
/* 81365B24 | 7C 08 00 40 */	cmplw r8, r0
/* 81365B28 | 40 82 00 14 */	bne .L_81365B3C
/* 81365B2C | 38 00 00 00 */	li r0, 0x0
/* 81365B30 | 38 60 00 00 */	li r3, 0x0
/* 81365B34 | 90 05 00 00 */	stw r0, 0x0(r5)
/* 81365B38 | 48 00 00 EC */	b .L_81365C24
.L_81365B3C:
/* 81365B3C | 7F C4 F3 78 */	mr r4, r30
/* 81365B40 | 7F E3 FB 78 */	mr r3, r31
/* 81365B44 | 38 C1 00 20 */	addi r6, r1, 0x20
/* 81365B48 | 38 A0 00 00 */	li r5, 0x0
/* 81365B4C | 48 25 8A 8D */	bl fn_815BE5D8
/* 81365B50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81365B54 | 7C 7C 1B 78 */	mr r28, r3
/* 81365B58 | 41 82 00 2C */	beq .L_81365B84
/* 81365B5C | 3C 60 81 64 */	lis r3, lbl_816413EA@ha
/* 81365B60 | 7F 84 E3 78 */	mr r4, r28
/* 81365B64 | 38 63 13 EA */	addi r3, r3, lbl_816413EA@l
/* 81365B68 | 4C C6 31 82 */	crclr cr1eq
/* 81365B6C | 48 1C 8B 35 */	bl OSReport
/* 81365B70 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 81365B74 | 41 82 00 08 */	beq .L_81365B7C
/* 81365B78 | 93 9B 00 00 */	stw r28, 0x0(r27)
.L_81365B7C:
/* 81365B7C | 38 60 00 00 */	li r3, 0x0
/* 81365B80 | 48 00 00 A4 */	b .L_81365C24
.L_81365B84:
/* 81365B84 | 7F C4 F3 78 */	mr r4, r30
/* 81365B88 | 7F E3 FB 78 */	mr r3, r31
/* 81365B8C | 38 A1 00 40 */	addi r5, r1, 0x40
/* 81365B90 | 38 C1 00 20 */	addi r6, r1, 0x20
/* 81365B94 | 48 25 8A 45 */	bl fn_815BE5D8
/* 81365B98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81365B9C | 7C 7C 1B 78 */	mr r28, r3
/* 81365BA0 | 41 82 00 2C */	beq .L_81365BCC
/* 81365BA4 | 3C 60 81 64 */	lis r3, lbl_81641424@ha
/* 81365BA8 | 7F 84 E3 78 */	mr r4, r28
/* 81365BAC | 38 63 14 24 */	addi r3, r3, lbl_81641424@l
/* 81365BB0 | 4C C6 31 82 */	crclr cr1eq
/* 81365BB4 | 48 1C 8A ED */	bl OSReport
/* 81365BB8 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 81365BBC | 41 82 00 08 */	beq .L_81365BC4
/* 81365BC0 | 93 9B 00 00 */	stw r28, 0x0(r27)
.L_81365BC4:
/* 81365BC4 | 38 60 00 00 */	li r3, 0x0
/* 81365BC8 | 48 00 00 5C */	b .L_81365C24
.L_81365BCC:
/* 81365BCC | 80 01 00 20 */	lwz r0, 0x20(r1)
/* 81365BD0 | 38 81 00 40 */	addi r4, r1, 0x40
/* 81365BD4 | 38 60 00 00 */	li r3, 0x0
/* 81365BD8 | 7C 09 03 A6 */	mtctr r0
/* 81365BDC | 28 00 00 00 */	cmplwi r0, 0x0
/* 81365BE0 | 40 81 00 30 */	ble .L_81365C10
.L_81365BE4:
/* 81365BE4 | 7C 04 18 2E */	lwzx r0, r4, r3
/* 81365BE8 | 7C 1D 00 40 */	cmplw r29, r0
/* 81365BEC | 40 82 00 1C */	bne .L_81365C08
/* 81365BF0 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 81365BF4 | 41 82 00 0C */	beq .L_81365C00
/* 81365BF8 | 38 00 00 00 */	li r0, 0x0
/* 81365BFC | 90 1B 00 00 */	stw r0, 0x0(r27)
.L_81365C00:
/* 81365C00 | 38 60 00 01 */	li r3, 0x1
/* 81365C04 | 48 00 00 20 */	b .L_81365C24
.L_81365C08:
/* 81365C08 | 38 63 00 04 */	addi r3, r3, 0x4
/* 81365C0C | 42 00 FF D8 */	bdnz .L_81365BE4
.L_81365C10:
/* 81365C10 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 81365C14 | 41 82 00 0C */	beq .L_81365C20
/* 81365C18 | 38 00 00 00 */	li r0, 0x0
/* 81365C1C | 90 1B 00 00 */	stw r0, 0x0(r27)
.L_81365C20:
/* 81365C20 | 38 60 00 00 */	li r3, 0x0
.L_81365C24:
/* 81365C24 | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 81365C28 | 7D 4B 53 78 */	mr r11, r10
/* 81365C2C | 48 29 38 E1 */	bl _restgpr_27
/* 81365C30 | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 81365C34 | 7C 08 03 A6 */	mtlr r0
/* 81365C38 | 7D 41 53 78 */	mr r1, r10
/* 81365C3C | 4E 80 00 20 */	blr
.endfn ContentExist__Q33ipl7utility6ESMiscFP9ESTmdViewUlPl

# .text:0x53C | 0x81365C40 | size: 0x29C
# ipl::utility::ESMisc::checkContentsNum(unsigned long long, ESTmdView*)
.fn checkContentsNum__Q33ipl7utility6ESMiscFUxP9ESTmdView, global
/* 81365C40 | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 81365C44 | 7C 2C 0B 78 */	mr r12, r1
/* 81365C48 | 21 6B F7 A0 */	subfic r11, r11, -0x860
/* 81365C4C | 7C 21 59 6E */	stwux r1, r1, r11
/* 81365C50 | 7C 08 02 A6 */	mflr r0
/* 81365C54 | 7D 8B 63 78 */	mr r11, r12
/* 81365C58 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 81365C5C | 48 29 38 61 */	bl _savegpr_26
/* 81365C60 | 3B 40 00 00 */	li r26, 0x0
/* 81365C64 | 3F E0 81 64 */	lis r31, lbl_816412C0@ha
/* 81365C68 | 93 41 00 20 */	stw r26, 0x20(r1)
/* 81365C6C | 7C 7C 1B 78 */	mr r28, r3
/* 81365C70 | 7C 9B 23 78 */	mr r27, r4
/* 81365C74 | 7C BD 2B 78 */	mr r29, r5
/* 81365C78 | 3B FF 12 C0 */	addi r31, r31, lbl_816412C0@l
/* 81365C7C | 4B FF FD 8D */	bl PrivateContentsExist__Q33ipl7utility6ESMiscFUx
/* 81365C80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81365C84 | 40 82 00 20 */	bne .L_81365CA4
/* 81365C88 | 7F 66 DB 78 */	mr r6, r27
/* 81365C8C | 7F 85 E3 78 */	mr r5, r28
/* 81365C90 | 38 7F 01 9E */	addi r3, r31, 0x19e
/* 81365C94 | 4C C6 31 82 */	crclr cr1eq
/* 81365C98 | 48 1C 8A 09 */	bl OSReport
/* 81365C9C | 38 60 00 01 */	li r3, 0x1
/* 81365CA0 | 48 00 02 20 */	b .L_81365EC0
.L_81365CA4:
/* 81365CA4 | A3 DD 00 5A */	lhz r30, 0x5a(r29)
/* 81365CA8 | 38 A0 00 00 */	li r5, 0x0
/* 81365CAC | 7F C9 03 A6 */	mtctr r30
/* 81365CB0 | 28 1E 00 00 */	cmplwi r30, 0x0
/* 81365CB4 | 40 81 00 20 */	ble .L_81365CD4
.L_81365CB8:
/* 81365CB8 | 7C 9D D2 14 */	add r4, r29, r26
/* 81365CBC | A0 04 00 62 */	lhz r0, 0x62(r4)
/* 81365CC0 | 54 00 04 21 */	rlwinm. r0, r0, 0, 16, 16
/* 81365CC4 | 40 82 00 08 */	bne .L_81365CCC
/* 81365CC8 | 38 A5 00 01 */	addi r5, r5, 0x1
.L_81365CCC:
/* 81365CCC | 3B 5A 00 10 */	addi r26, r26, 0x10
/* 81365CD0 | 42 00 FF E8 */	bdnz .L_81365CB8
.L_81365CD4:
/* 81365CD4 | 7C 03 28 40 */	cmplw r3, r5
/* 81365CD8 | 40 82 00 0C */	bne .L_81365CE4
/* 81365CDC | 38 60 00 00 */	li r3, 0x0
/* 81365CE0 | 48 00 01 E0 */	b .L_81365EC0
.L_81365CE4:
/* 81365CE4 | 7F 64 DB 78 */	mr r4, r27
/* 81365CE8 | 7F 83 E3 78 */	mr r3, r28
/* 81365CEC | 38 C1 00 20 */	addi r6, r1, 0x20
/* 81365CF0 | 38 A0 00 00 */	li r5, 0x0
/* 81365CF4 | 48 25 88 E5 */	bl fn_815BE5D8
/* 81365CF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81365CFC | 7C 7A 1B 78 */	mr r26, r3
/* 81365D00 | 41 82 00 1C */	beq .L_81365D1C
/* 81365D04 | 7F 44 D3 78 */	mr r4, r26
/* 81365D08 | 38 7F 01 DA */	addi r3, r31, 0x1da
/* 81365D0C | 4C C6 31 82 */	crclr cr1eq
/* 81365D10 | 48 1C 89 91 */	bl OSReport
/* 81365D14 | 7F 43 D3 78 */	mr r3, r26
/* 81365D18 | 48 00 01 A8 */	b .L_81365EC0
.L_81365D1C:
/* 81365D1C | 80 01 00 20 */	lwz r0, 0x20(r1)
/* 81365D20 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81365D24 | 40 82 00 20 */	bne .L_81365D44
/* 81365D28 | 7F 66 DB 78 */	mr r6, r27
/* 81365D2C | 7F 85 E3 78 */	mr r5, r28
/* 81365D30 | 38 7F 02 17 */	addi r3, r31, 0x217
/* 81365D34 | 4C C6 31 82 */	crclr cr1eq
/* 81365D38 | 48 1C 89 69 */	bl OSReport
/* 81365D3C | 38 60 00 01 */	li r3, 0x1
/* 81365D40 | 48 00 01 80 */	b .L_81365EC0
.L_81365D44:
/* 81365D44 | 7F 64 DB 78 */	mr r4, r27
/* 81365D48 | 7F 83 E3 78 */	mr r3, r28
/* 81365D4C | 38 A1 00 40 */	addi r5, r1, 0x40
/* 81365D50 | 38 C1 00 20 */	addi r6, r1, 0x20
/* 81365D54 | 48 25 88 85 */	bl fn_815BE5D8
/* 81365D58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81365D5C | 7C 7A 1B 78 */	mr r26, r3
/* 81365D60 | 40 82 01 4C */	bne .L_81365EAC
/* 81365D64 | 80 01 00 20 */	lwz r0, 0x20(r1)
/* 81365D68 | 39 01 00 40 */	addi r8, r1, 0x40
/* 81365D6C | 39 20 00 00 */	li r9, 0x0
/* 81365D70 | 39 40 00 00 */	li r10, 0x0
/* 81365D74 | 38 60 00 00 */	li r3, 0x0
/* 81365D78 | 48 00 00 54 */	b .L_81365DCC
.L_81365D7C:
/* 81365D7C | 7C E8 18 2E */	lwzx r7, r8, r3
/* 81365D80 | 39 60 00 00 */	li r11, 0x0
/* 81365D84 | 38 80 00 00 */	li r4, 0x0
/* 81365D88 | 48 00 00 30 */	b .L_81365DB8
.L_81365D8C:
/* 81365D8C | 7C DD 22 14 */	add r6, r29, r4
/* 81365D90 | 80 A6 00 5C */	lwz r5, 0x5c(r6)
/* 81365D94 | 7C 07 28 40 */	cmplw r7, r5
/* 81365D98 | 40 82 00 18 */	bne .L_81365DB0
/* 81365D9C | A0 A6 00 62 */	lhz r5, 0x62(r6)
/* 81365DA0 | 54 A5 04 21 */	rlwinm. r5, r5, 0, 16, 16
/* 81365DA4 | 40 82 00 0C */	bne .L_81365DB0
/* 81365DA8 | 39 20 00 01 */	li r9, 0x1
/* 81365DAC | 48 00 00 18 */	b .L_81365DC4
.L_81365DB0:
/* 81365DB0 | 39 6B 00 01 */	addi r11, r11, 0x1
/* 81365DB4 | 38 84 00 10 */	addi r4, r4, 0x10
.L_81365DB8:
/* 81365DB8 | A0 BD 00 5A */	lhz r5, 0x5a(r29)
/* 81365DBC | 7C 0B 28 40 */	cmplw r11, r5
/* 81365DC0 | 41 80 FF CC */	blt .L_81365D8C
.L_81365DC4:
/* 81365DC4 | 39 4A 00 01 */	addi r10, r10, 0x1
/* 81365DC8 | 38 63 00 04 */	addi r3, r3, 0x4
.L_81365DCC:
/* 81365DCC | 7C 0A 00 40 */	cmplw r10, r0
/* 81365DD0 | 40 80 00 0C */	bge .L_81365DDC
/* 81365DD4 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 81365DD8 | 41 82 FF A4 */	beq .L_81365D7C
.L_81365DDC:
/* 81365DDC | 2C 09 00 00 */	cmpwi r9, 0x0
/* 81365DE0 | 40 82 00 20 */	bne .L_81365E00
/* 81365DE4 | 7F 66 DB 78 */	mr r6, r27
/* 81365DE8 | 7F 85 E3 78 */	mr r5, r28
/* 81365DEC | 38 7F 02 4C */	addi r3, r31, 0x24c
/* 81365DF0 | 4C C6 31 82 */	crclr cr1eq
/* 81365DF4 | 48 1C 88 AD */	bl OSReport
/* 81365DF8 | 38 60 00 01 */	li r3, 0x1
/* 81365DFC | 48 00 00 C4 */	b .L_81365EC0
.L_81365E00:
/* 81365E00 | 80 A1 00 20 */	lwz r5, 0x20(r1)
/* 81365E04 | 39 01 00 40 */	addi r8, r1, 0x40
/* 81365E08 | 39 40 00 00 */	li r10, 0x0
/* 81365E0C | 38 60 00 00 */	li r3, 0x0
/* 81365E10 | 48 00 00 78 */	b .L_81365E88
.L_81365E14:
/* 81365E14 | 7C DD 1A 14 */	add r6, r29, r3
/* 81365E18 | 39 20 00 00 */	li r9, 0x0
/* 81365E1C | 38 80 00 00 */	li r4, 0x0
/* 81365E20 | 7C A9 03 A6 */	mtctr r5
/* 81365E24 | 28 05 00 00 */	cmplwi r5, 0x0
/* 81365E28 | 40 81 00 20 */	ble .L_81365E48
.L_81365E2C:
/* 81365E2C | 7C E8 20 2E */	lwzx r7, r8, r4
/* 81365E30 | 80 06 00 5C */	lwz r0, 0x5c(r6)
/* 81365E34 | 7C 07 00 40 */	cmplw r7, r0
/* 81365E38 | 41 82 00 10 */	beq .L_81365E48
/* 81365E3C | 39 29 00 01 */	addi r9, r9, 0x1
/* 81365E40 | 38 84 00 04 */	addi r4, r4, 0x4
/* 81365E44 | 42 00 FF E8 */	bdnz .L_81365E2C
.L_81365E48:
/* 81365E48 | 7C 09 28 40 */	cmplw r9, r5
/* 81365E4C | 40 82 00 34 */	bne .L_81365E80
/* 81365E50 | 7C 9D 1A 14 */	add r4, r29, r3
/* 81365E54 | A0 04 00 62 */	lhz r0, 0x62(r4)
/* 81365E58 | 54 00 04 63 */	rlwinm. r0, r0, 0, 17, 17
/* 81365E5C | 40 82 00 24 */	bne .L_81365E80
/* 81365E60 | A0 84 00 60 */	lhz r4, 0x60(r4)
/* 81365E64 | 7F 66 DB 78 */	mr r6, r27
/* 81365E68 | 7F 85 E3 78 */	mr r5, r28
/* 81365E6C | 38 7F 02 85 */	addi r3, r31, 0x285
/* 81365E70 | 4C C6 31 82 */	crclr cr1eq
/* 81365E74 | 48 1C 88 2D */	bl OSReport
/* 81365E78 | 38 60 00 02 */	li r3, 0x2
/* 81365E7C | 48 00 00 44 */	b .L_81365EC0
.L_81365E80:
/* 81365E80 | 39 4A 00 01 */	addi r10, r10, 0x1
/* 81365E84 | 38 63 00 10 */	addi r3, r3, 0x10
.L_81365E88:
/* 81365E88 | 7C 0A F0 40 */	cmplw r10, r30
/* 81365E8C | 41 80 FF 88 */	blt .L_81365E14
/* 81365E90 | 7F 66 DB 78 */	mr r6, r27
/* 81365E94 | 7F 85 E3 78 */	mr r5, r28
/* 81365E98 | 38 7F 02 DA */	addi r3, r31, 0x2da
/* 81365E9C | 4C C6 31 82 */	crclr cr1eq
/* 81365EA0 | 48 1C 88 01 */	bl OSReport
/* 81365EA4 | 38 60 00 00 */	li r3, 0x0
/* 81365EA8 | 48 00 00 18 */	b .L_81365EC0
.L_81365EAC:
/* 81365EAC | 7F 44 D3 78 */	mr r4, r26
/* 81365EB0 | 38 7F 03 31 */	addi r3, r31, 0x331
/* 81365EB4 | 4C C6 31 82 */	crclr cr1eq
/* 81365EB8 | 48 1C 87 E9 */	bl OSReport
/* 81365EBC | 7F 43 D3 78 */	mr r3, r26
.L_81365EC0:
/* 81365EC0 | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 81365EC4 | 7D 4B 53 78 */	mr r11, r10
/* 81365EC8 | 48 29 36 41 */	bl _restgpr_26
/* 81365ECC | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 81365ED0 | 7C 08 03 A6 */	mtlr r0
/* 81365ED4 | 7D 41 53 78 */	mr r1, r10
/* 81365ED8 | 4E 80 00 20 */	blr
.endfn checkContentsNum__Q33ipl7utility6ESMiscFUxP9ESTmdView

# .text:0x7D8 | 0x81365EDC | size: 0x2DC
# ipl::utility::ESMisc::GetValidTicketIndex(EGG::Heap*, unsigned long long, ESTicketView*, unsigned long)
.fn GetValidTicketIndex__Q33ipl7utility6ESMiscFPQ23EGG4HeapUxP12ESTicketViewUl, global
/* 81365EDC | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81365EE0 | 7C 08 02 A6 */	mflr r0
/* 81365EE4 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81365EE8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81365EEC | 48 29 35 C9 */	bl _savegpr_24
/* 81365EF0 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 81365EF4 | 3F E0 81 64 */	lis r31, lbl_816412C0@ha
/* 81365EF8 | 90 E1 00 08 */	stw r7, 0x8(r1)
/* 81365EFC | 7C 78 1B 78 */	mr r24, r3
/* 81365F00 | 7C B9 2B 78 */	mr r25, r5
/* 81365F04 | 7C DA 33 78 */	mr r26, r6
/* 81365F08 | 91 01 00 0C */	stw r8, 0xc(r1)
/* 81365F0C | 3B FF 12 C0 */	addi r31, r31, lbl_816412C0@l
/* 81365F10 | 3B A0 00 00 */	li r29, 0x0
/* 81365F14 | 3B 80 00 00 */	li r28, 0x0
/* 81365F18 | 40 82 00 44 */	bne .L_81365F5C
/* 81365F1C | 38 E1 00 08 */	addi r7, r1, 0x8
/* 81365F20 | 39 01 00 0C */	addi r8, r1, 0xc
/* 81365F24 | 4B FF F8 F1 */	bl GetTicketViewList__Q33ipl7utility6ESMiscFPQ23EGG4HeapUxPP12ESTicketViewPUl
/* 81365F28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81365F2C | 40 80 00 2C */	bge .L_81365F58
/* 81365F30 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 81365F34 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81365F38 | 41 82 00 18 */	beq .L_81365F50
/* 81365F3C | 81 98 00 00 */	lwz r12, 0x0(r24)
/* 81365F40 | 7F 03 C3 78 */	mr r3, r24
/* 81365F44 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81365F48 | 7D 89 03 A6 */	mtctr r12
/* 81365F4C | 4E 80 04 21 */	bctrl
.L_81365F50:
/* 81365F50 | 38 60 00 00 */	li r3, 0x0
/* 81365F54 | 48 00 02 4C */	b .L_813661A0
.L_81365F58:
/* 81365F58 | 3B A0 00 01 */	li r29, 0x1
.L_81365F5C:
/* 81365F5C | 81 98 00 00 */	lwz r12, 0x0(r24)
/* 81365F60 | 7F 03 C3 78 */	mr r3, r24
/* 81365F64 | 38 80 00 E0 */	li r4, 0xe0
/* 81365F68 | 38 A0 FF E0 */	li r5, -0x20
/* 81365F6C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81365F70 | 7D 89 03 A6 */	mtctr r12
/* 81365F74 | 4E 80 04 21 */	bctrl
/* 81365F78 | 7C 7B 1B 78 */	mr r27, r3
/* 81365F7C | 48 20 B7 C5 */	bl ESP_InitLib
/* 81365F80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81365F84 | 41 80 01 B4 */	blt .L_81366138
/* 81365F88 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 81365F8C | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 81365F90 | 48 1C 91 49 */	bl fn_8152F0D8
/* 81365F94 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 81365F98 | 7C 7E 1B 78 */	mr r30, r3
/* 81365F9C | 41 80 01 9C */	blt .L_81366138
/* 81365FA0 | 40 82 00 08 */	bne .L_81365FA8
/* 81365FA4 | 3B C0 00 00 */	li r30, 0x0
.L_81365FA8:
/* 81365FA8 | 1C 1E 00 D8 */	mulli r0, r30, 0xd8
/* 81365FAC | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 81365FB0 | 7F 63 DB 78 */	mr r3, r27
/* 81365FB4 | 38 A0 00 D8 */	li r5, 0xd8
/* 81365FB8 | 7C 84 02 14 */	add r4, r4, r0
/* 81365FBC | 4B FC A2 75 */	bl memcpy
/* 81365FC0 | 7F 44 D3 78 */	mr r4, r26
/* 81365FC4 | 7F 23 CB 78 */	mr r3, r25
/* 81365FC8 | 7F 65 DB 78 */	mr r5, r27
/* 81365FCC | 38 C0 00 00 */	li r6, 0x0
/* 81365FD0 | 48 25 81 E9 */	bl ES_OpenTitleContentFile
/* 81365FD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81365FD8 | 7C 7A 1B 78 */	mr r26, r3
/* 81365FDC | 40 80 00 18 */	bge .L_81365FF4
/* 81365FE0 | 7F 44 D3 78 */	mr r4, r26
/* 81365FE4 | 38 7F 03 73 */	addi r3, r31, 0x373
/* 81365FE8 | 4C C6 31 82 */	crclr cr1eq
/* 81365FEC | 48 1C 86 B5 */	bl OSReport
/* 81365FF0 | 48 00 00 F4 */	b .L_813660E4
.L_81365FF4:
/* 81365FF4 | 81 98 00 00 */	lwz r12, 0x0(r24)
/* 81365FF8 | 7F 03 C3 78 */	mr r3, r24
/* 81365FFC | 38 80 00 40 */	li r4, 0x40
/* 81366000 | 38 A0 FF E0 */	li r5, -0x20
/* 81366004 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81366008 | 7D 89 03 A6 */	mtctr r12
/* 8136600C | 4E 80 04 21 */	bctrl
/* 81366010 | 7C 79 1B 78 */	mr r25, r3
/* 81366014 | 7F 43 D3 78 */	mr r3, r26
/* 81366018 | 7F 24 CB 78 */	mr r4, r25
/* 8136601C | 38 A0 00 40 */	li r5, 0x40
/* 81366020 | 48 25 82 31 */	bl ES_ReadContentFile
/* 81366024 | 28 03 00 40 */	cmplwi r3, 0x40
/* 81366028 | 41 82 00 40 */	beq .L_81366068
/* 8136602C | 7C 64 1B 78 */	mr r4, r3
/* 81366030 | 38 7F 03 AF */	addi r3, r31, 0x3af
/* 81366034 | 4C C6 31 82 */	crclr cr1eq
/* 81366038 | 48 1C 86 69 */	bl OSReport
/* 8136603C | 81 98 00 00 */	lwz r12, 0x0(r24)
/* 81366040 | 7F 03 C3 78 */	mr r3, r24
/* 81366044 | 7F 24 CB 78 */	mr r4, r25
/* 81366048 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8136604C | 7D 89 03 A6 */	mtctr r12
/* 81366050 | 4E 80 04 21 */	bctrl
/* 81366054 | 7F 43 D3 78 */	mr r3, r26
/* 81366058 | 48 25 83 25 */	bl ES_CloseContentFile
/* 8136605C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81366060 | 41 80 00 D8 */	blt .L_81366138
/* 81366064 | 48 00 00 80 */	b .L_813660E4
.L_81366068:
/* 81366068 | 7F 43 D3 78 */	mr r3, r26
/* 8136606C | 48 25 83 11 */	bl ES_CloseContentFile
/* 81366070 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81366074 | 40 80 00 20 */	bge .L_81366094
/* 81366078 | 81 98 00 00 */	lwz r12, 0x0(r24)
/* 8136607C | 7F 03 C3 78 */	mr r3, r24
/* 81366080 | 7F 24 CB 78 */	mr r4, r25
/* 81366084 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81366088 | 7D 89 03 A6 */	mtctr r12
/* 8136608C | 4E 80 04 21 */	bctrl
/* 81366090 | 48 00 00 A8 */	b .L_81366138
.L_81366094:
/* 81366094 | 88 19 00 00 */	lbz r0, 0x0(r25)
/* 81366098 | 7C 00 07 75 */	extsb. r0, r0
/* 8136609C | 40 82 00 2C */	bne .L_813660C8
/* 813660A0 | 38 7F 03 E7 */	addi r3, r31, 0x3e7
/* 813660A4 | 4C C6 31 82 */	crclr cr1eq
/* 813660A8 | 48 1C 85 F9 */	bl OSReport
/* 813660AC | 81 98 00 00 */	lwz r12, 0x0(r24)
/* 813660B0 | 7F 03 C3 78 */	mr r3, r24
/* 813660B4 | 7F 24 CB 78 */	mr r4, r25
/* 813660B8 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813660BC | 7D 89 03 A6 */	mtctr r12
/* 813660C0 | 4E 80 04 21 */	bctrl
/* 813660C4 | 48 00 00 20 */	b .L_813660E4
.L_813660C8:
/* 813660C8 | 81 98 00 00 */	lwz r12, 0x0(r24)
/* 813660CC | 7F 03 C3 78 */	mr r3, r24
/* 813660D0 | 7F 24 CB 78 */	mr r4, r25
/* 813660D4 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813660D8 | 7D 89 03 A6 */	mtctr r12
/* 813660DC | 4E 80 04 21 */	bctrl
/* 813660E0 | 3B 80 00 01 */	li r28, 0x1
.L_813660E4:
/* 813660E4 | 81 98 00 00 */	lwz r12, 0x0(r24)
/* 813660E8 | 7F 03 C3 78 */	mr r3, r24
/* 813660EC | 7F 64 DB 78 */	mr r4, r27
/* 813660F0 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813660F4 | 7D 89 03 A6 */	mtctr r12
/* 813660F8 | 4E 80 04 21 */	bctrl
/* 813660FC | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81366100 | 41 82 00 24 */	beq .L_81366124
/* 81366104 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 81366108 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8136610C | 41 82 00 18 */	beq .L_81366124
/* 81366110 | 81 98 00 00 */	lwz r12, 0x0(r24)
/* 81366114 | 7F 03 C3 78 */	mr r3, r24
/* 81366118 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8136611C | 7D 89 03 A6 */	mtctr r12
/* 81366120 | 4E 80 04 21 */	bctrl
.L_81366124:
/* 81366124 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81366128 | 38 60 FF FF */	li r3, -0x1
/* 8136612C | 41 82 00 74 */	beq .L_813661A0
/* 81366130 | 7F C3 F3 78 */	mr r3, r30
/* 81366134 | 48 00 00 6C */	b .L_813661A0
.L_81366138:
/* 81366138 | 81 98 00 00 */	lwz r12, 0x0(r24)
/* 8136613C | 7F 03 C3 78 */	mr r3, r24
/* 81366140 | 7F 64 DB 78 */	mr r4, r27
/* 81366144 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81366148 | 7D 89 03 A6 */	mtctr r12
/* 8136614C | 4E 80 04 21 */	bctrl
/* 81366150 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81366154 | 41 82 00 24 */	beq .L_81366178
/* 81366158 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 8136615C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81366160 | 41 82 00 18 */	beq .L_81366178
/* 81366164 | 81 98 00 00 */	lwz r12, 0x0(r24)
/* 81366168 | 7F 03 C3 78 */	mr r3, r24
/* 8136616C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81366170 | 7D 89 03 A6 */	mtctr r12
/* 81366174 | 4E 80 04 21 */	bctrl
.L_81366178:
/* 81366178 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8136617C | 38 80 00 01 */	li r4, 0x1
/* 81366180 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81366184 | 38 A0 00 02 */	li r5, 0x2
/* 81366188 | 80 63 00 98 */	lwz r3, 0x98(r3)
/* 8136618C | 38 C0 00 00 */	li r6, 0x0
/* 81366190 | 38 E0 00 00 */	li r7, 0x0
/* 81366194 | 39 00 FF FF */	li r8, -0x1
/* 81366198 | 4B FF 03 7D */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
/* 8136619C | 38 60 00 00 */	li r3, 0x0
.L_813661A0:
/* 813661A0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813661A4 | 48 29 33 5D */	bl _restgpr_24
/* 813661A8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813661AC | 7C 08 03 A6 */	mtlr r0
/* 813661B0 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813661B4 | 4E 80 00 20 */	blr
.endfn GetValidTicketIndex__Q33ipl7utility6ESMiscFPQ23EGG4HeapUxP12ESTicketViewUl

# .text:0xAB4 | 0x813661B8 | size: 0xDC
# ipl::utility::ESMisc::IsLastTicketExpired(unsigned long long*)
.fn IsLastTicketExpired__Q33ipl7utility6ESMiscFPUx, global
/* 813661B8 | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 813661BC | 7C 2C 0B 78 */	mr r12, r1
/* 813661C0 | 21 6B FF 00 */	subfic r11, r11, -0x100
/* 813661C4 | 7C 21 59 6E */	stwux r1, r1, r11
/* 813661C8 | 7C 08 02 A6 */	mflr r0
/* 813661CC | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 813661D0 | 93 EC FF FC */	stw r31, -0x4(r12)
/* 813661D4 | 93 CC FF F8 */	stw r30, -0x8(r12)
/* 813661D8 | 7C 7E 1B 78 */	mr r30, r3
/* 813661DC | 48 01 35 C5 */	bl BS2GetBootType
/* 813661E0 | 28 03 00 01 */	cmplwi r3, 0x1
/* 813661E4 | 41 82 00 18 */	beq .L_813661FC
/* 813661E8 | 3C 60 81 64 */	lis r3, lbl_816418B5@ha
/* 813661EC | 38 63 18 B5 */	addi r3, r3, lbl_816418B5@l
/* 813661F0 | 48 1F DC B9 */	bl NANDPrivateDelete
/* 813661F4 | 38 60 00 00 */	li r3, 0x0
/* 813661F8 | 48 00 00 80 */	b .L_81366278
.L_813661FC:
/* 813661FC | 3C 60 81 64 */	lis r3, lbl_816418B5@ha
/* 81366200 | 38 81 00 40 */	addi r4, r1, 0x40
/* 81366204 | 38 63 18 B5 */	addi r3, r3, lbl_816418B5@l
/* 81366208 | 38 A0 00 01 */	li r5, 0x1
/* 8136620C | 48 1F F0 ED */	bl NANDPrivateOpen
/* 81366210 | 2C 03 FF F4 */	cmpwi r3, -0xc
/* 81366214 | 40 82 00 0C */	bne .L_81366220
/* 81366218 | 38 60 00 00 */	li r3, 0x0
/* 8136621C | 48 00 00 5C */	b .L_81366278
.L_81366220:
/* 81366220 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81366224 | 41 82 00 0C */	beq .L_81366230
/* 81366228 | 38 60 00 00 */	li r3, 0x0
/* 8136622C | 48 00 00 4C */	b .L_81366278
.L_81366230:
/* 81366230 | 38 61 00 40 */	addi r3, r1, 0x40
/* 81366234 | 38 81 00 20 */	addi r4, r1, 0x20
/* 81366238 | 38 A0 00 20 */	li r5, 0x20
/* 8136623C | 48 1F DD C5 */	bl NANDRead
/* 81366240 | 7C 7F 1B 78 */	mr r31, r3
/* 81366244 | 38 61 00 40 */	addi r3, r1, 0x40
/* 81366248 | 48 1F F2 A5 */	bl NANDClose
/* 8136624C | 2C 1F 00 20 */	cmpwi r31, 0x20
/* 81366250 | 41 82 00 0C */	beq .L_8136625C
/* 81366254 | 38 60 00 00 */	li r3, 0x0
/* 81366258 | 48 00 00 20 */	b .L_81366278
.L_8136625C:
/* 8136625C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81366260 | 41 82 00 14 */	beq .L_81366274
/* 81366264 | 80 01 00 20 */	lwz r0, 0x20(r1)
/* 81366268 | 80 61 00 24 */	lwz r3, 0x24(r1)
/* 8136626C | 90 7E 00 04 */	stw r3, 0x4(r30)
/* 81366270 | 90 1E 00 00 */	stw r0, 0x0(r30)
.L_81366274:
/* 81366274 | 38 60 00 01 */	li r3, 0x1
.L_81366278:
/* 81366278 | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 8136627C | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 81366280 | 83 EA FF FC */	lwz r31, -0x4(r10)
/* 81366284 | 83 CA FF F8 */	lwz r30, -0x8(r10)
/* 81366288 | 7C 08 03 A6 */	mtlr r0
/* 8136628C | 7D 41 53 78 */	mr r1, r10
/* 81366290 | 4E 80 00 20 */	blr
.endfn IsLastTicketExpired__Q33ipl7utility6ESMiscFPUx

# .text:0xB90 | 0x81366294 | size: 0xC
# ipl::utility::ESMisc::DeleteExpiredFlagFile()
.fn DeleteExpiredFlagFile__Q33ipl7utility6ESMiscFv, global
/* 81366294 | 3C 60 81 64 */	lis r3, lbl_816418B5@ha
/* 81366298 | 38 63 18 B5 */	addi r3, r3, lbl_816418B5@l
/* 8136629C | 48 1F DC 0C */	b NANDPrivateDelete
.endfn DeleteExpiredFlagFile__Q33ipl7utility6ESMiscFv

# .text:0xB9C | 0x813662A0 | size: 0x4
# ipl::utility::ESMisc::CheckTmdCountryCode(ESTmdView*)
.fn CheckTmdCountryCode__Q33ipl7utility6ESMiscFP9ESTmdView, global
/* 813662A0 | 48 1C 8D EC */	b fn_8152F08C
.endfn CheckTmdCountryCode__Q33ipl7utility6ESMiscFP9ESTmdView

# .text:0xBA0 | 0x813662A4 | size: 0x50
# ipl::utility::ESMisc::__IsPCEnable()
.fn __IsPCEnable__Q33ipl7utility6ESMiscFv, global
/* 813662A4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813662A8 | 7C 08 02 A6 */	mflr r0
/* 813662AC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813662B0 | 48 20 48 1D */	bl SCGetProductArea
/* 813662B4 | 7C 60 07 74 */	extsb r0, r3
/* 813662B8 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813662BC | 41 82 00 24 */	beq .L_813662E0
/* 813662C0 | 40 80 00 10 */	bge .L_813662D0
/* 813662C4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813662C8 | 40 80 00 10 */	bge .L_813662D8
/* 813662CC | 48 00 00 14 */	b .L_813662E0
.L_813662D0:
/* 813662D0 | 2C 00 00 07 */	cmpwi r0, 0x7
/* 813662D4 | 40 80 00 0C */	bge .L_813662E0
.L_813662D8:
/* 813662D8 | 38 60 00 01 */	li r3, 0x1
/* 813662DC | 48 00 00 08 */	b .L_813662E4
.L_813662E0:
/* 813662E0 | 38 60 00 00 */	li r3, 0x0
.L_813662E4:
/* 813662E4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813662E8 | 7C 08 03 A6 */	mtlr r0
/* 813662EC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813662F0 | 4E 80 00 20 */	blr
.endfn __IsPCEnable__Q33ipl7utility6ESMiscFv

# .text:0xBF0 | 0x813662F4 | size: 0xB8
# ipl::utility::ESMisc::CheckTmdParentalControl(ESTmdView*)
.fn CheckTmdParentalControl__Q33ipl7utility6ESMiscFP9ESTmdView, global
/* 813662F4 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 813662F8 | 7C 08 02 A6 */	mflr r0
/* 813662FC | 90 01 00 74 */	stw r0, 0x74(r1)
/* 81366300 | 93 E1 00 6C */	stw r31, 0x6c(r1)
/* 81366304 | 7C 7F 1B 78 */	mr r31, r3
/* 81366308 | 4B FF FF 9D */	bl __IsPCEnable__Q33ipl7utility6ESMiscFv
/* 8136630C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81366310 | 40 82 00 0C */	bne .L_8136631C
/* 81366314 | 38 60 00 01 */	li r3, 0x1
/* 81366318 | 48 00 00 80 */	b .L_81366398
.L_8136631C:
/* 8136631C | 38 61 00 08 */	addi r3, r1, 0x8
/* 81366320 | 38 9F 00 1E */	addi r4, r31, 0x1e
/* 81366324 | 38 A0 00 10 */	li r5, 0x10
/* 81366328 | 4B FC 9F 09 */	bl memcpy
/* 8136632C | 38 61 00 18 */	addi r3, r1, 0x18
/* 81366330 | 48 20 3E 49 */	bl SCGetParentalControl
/* 81366334 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81366338 | 40 82 00 0C */	bne .L_81366344
/* 8136633C | 38 60 00 01 */	li r3, 0x1
/* 81366340 | 48 00 00 58 */	b .L_81366398
.L_81366344:
/* 81366344 | 88 01 00 18 */	lbz r0, 0x18(r1)
/* 81366348 | 54 00 06 31 */	rlwinm. r0, r0, 0, 24, 24
/* 8136634C | 41 82 00 48 */	beq .L_81366394
/* 81366350 | 88 01 00 19 */	lbz r0, 0x19(r1)
/* 81366354 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81366358 | 7C 63 00 AE */	lbzx r3, r3, r0
/* 8136635C | 54 60 06 31 */	rlwinm. r0, r3, 0, 24, 24
/* 81366360 | 41 82 00 0C */	beq .L_8136636C
/* 81366364 | 38 60 00 00 */	li r3, 0x0
/* 81366368 | 48 00 00 30 */	b .L_81366398
.L_8136636C:
/* 8136636C | 54 60 06 73 */	rlwinm. r0, r3, 0, 25, 25
/* 81366370 | 41 82 00 0C */	beq .L_8136637C
/* 81366374 | 38 60 00 00 */	li r3, 0x0
/* 81366378 | 48 00 00 20 */	b .L_81366398
.L_8136637C:
/* 8136637C | 88 01 00 1A */	lbz r0, 0x1a(r1)
/* 81366380 | 54 63 06 FE */	clrlwi r3, r3, 27
/* 81366384 | 7C 03 00 00 */	cmpw r3, r0
/* 81366388 | 40 81 00 0C */	ble .L_81366394
/* 8136638C | 38 60 00 00 */	li r3, 0x0
/* 81366390 | 48 00 00 08 */	b .L_81366398
.L_81366394:
/* 81366394 | 38 60 00 01 */	li r3, 0x1
.L_81366398:
/* 81366398 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 8136639C | 83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 813663A0 | 7C 08 03 A6 */	mtlr r0
/* 813663A4 | 38 21 00 70 */	addi r1, r1, 0x70
/* 813663A8 | 4E 80 00 20 */	blr
.endfn CheckTmdParentalControl__Q33ipl7utility6ESMiscFP9ESTmdView

# .text:0xCA8 | 0x813663AC | size: 0x264
# ipl::utility::ESMisc::NumPrivateContents(EGG::Heap*, unsigned long long)
.fn NumPrivateContents__Q33ipl7utility6ESMiscFPQ23EGG4HeapUx, global
/* 813663AC | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813663B0 | 7C 08 02 A6 */	mflr r0
/* 813663B4 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813663B8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813663BC | 48 29 30 FD */	bl _savegpr_25
/* 813663C0 | 7C D9 33 78 */	mr r25, r6
/* 813663C4 | 7C BA 2B 78 */	mr r26, r5
/* 813663C8 | 3F C0 81 64 */	lis r30, lbl_816412C0@ha
/* 813663CC | 7C 7F 1B 78 */	mr r31, r3
/* 813663D0 | 7F 24 CB 78 */	mr r4, r25
/* 813663D4 | 7F 43 D3 78 */	mr r3, r26
/* 813663D8 | 3B DE 12 C0 */	addi r30, r30, lbl_816412C0@l
/* 813663DC | 38 C1 00 08 */	addi r6, r1, 0x8
/* 813663E0 | 3B 80 00 00 */	li r28, 0x0
/* 813663E4 | 3B 60 00 00 */	li r27, 0x0
/* 813663E8 | 38 A0 00 00 */	li r5, 0x0
/* 813663EC | 48 25 87 49 */	bl fn_815BEB34
/* 813663F0 | 2C 03 FF 96 */	cmpwi r3, -0x6a
/* 813663F4 | 7C 7D 1B 78 */	mr r29, r3
/* 813663F8 | 40 82 00 0C */	bne .L_81366404
/* 813663FC | 38 60 00 00 */	li r3, 0x0
/* 81366400 | 48 00 01 F8 */	b .L_813665F8
.L_81366404:
/* 81366404 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81366408 | 40 80 00 20 */	bge .L_81366428
/* 8136640C | 7F A6 EB 78 */	mr r6, r29
/* 81366410 | 38 7E 06 19 */	addi r3, r30, 0x619
/* 81366414 | 38 9E 06 3C */	addi r4, r30, 0x63c
/* 81366418 | 38 BE 06 06 */	addi r5, r30, 0x606
/* 8136641C | 4C C6 31 82 */	crclr cr1eq
/* 81366420 | 48 1C 82 81 */	bl OSReport
/* 81366424 | 48 00 01 90 */	b .L_813665B4
.L_81366428:
/* 81366428 | 7F 24 CB 78 */	mr r4, r25
/* 8136642C | 7F 43 D3 78 */	mr r3, r26
/* 81366430 | 38 C1 00 0C */	addi r6, r1, 0xc
/* 81366434 | 38 A0 00 00 */	li r5, 0x0
/* 81366438 | 48 25 81 A1 */	bl fn_815BE5D8
/* 8136643C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81366440 | 7C 7D 1B 78 */	mr r29, r3
/* 81366444 | 41 82 00 28 */	beq .L_8136646C
/* 81366448 | 7F A6 EB 78 */	mr r6, r29
/* 8136644C | 7F 28 CB 78 */	mr r8, r25
/* 81366450 | 7F 47 D3 78 */	mr r7, r26
/* 81366454 | 38 7E 06 4A */	addi r3, r30, 0x64a
/* 81366458 | 38 9E 06 3C */	addi r4, r30, 0x63c
/* 8136645C | 38 BE 06 06 */	addi r5, r30, 0x606
/* 81366460 | 4C C6 31 82 */	crclr cr1eq
/* 81366464 | 48 1C 82 3D */	bl OSReport
/* 81366468 | 48 00 01 4C */	b .L_813665B4
.L_8136646C:
/* 8136646C | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 81366470 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81366474 | 40 82 00 0C */	bne .L_81366480
/* 81366478 | 38 60 00 00 */	li r3, 0x0
/* 8136647C | 48 00 01 7C */	b .L_813665F8
.L_81366480:
/* 81366480 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81366484 | 7F E3 FB 78 */	mr r3, r31
/* 81366488 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 8136648C | 38 A0 FF E0 */	li r5, -0x20
/* 81366490 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81366494 | 38 04 00 1F */	addi r0, r4, 0x1f
/* 81366498 | 54 04 00 34 */	clrrwi r4, r0, 5
/* 8136649C | 7D 89 03 A6 */	mtctr r12
/* 813664A0 | 4E 80 04 21 */	bctrl
/* 813664A4 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 813664A8 | 7C 7B 1B 78 */	mr r27, r3
/* 813664AC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813664B0 | 7F E3 FB 78 */	mr r3, r31
/* 813664B4 | 54 04 10 3A */	slwi r4, r0, 2
/* 813664B8 | 38 A0 FF E0 */	li r5, -0x20
/* 813664BC | 38 04 00 1F */	addi r0, r4, 0x1f
/* 813664C0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813664C4 | 54 04 00 34 */	clrrwi r4, r0, 5
/* 813664C8 | 7D 89 03 A6 */	mtctr r12
/* 813664CC | 4E 80 04 21 */	bctrl
/* 813664D0 | 7C 7C 1B 78 */	mr r28, r3
/* 813664D4 | 7F 24 CB 78 */	mr r4, r25
/* 813664D8 | 7F 43 D3 78 */	mr r3, r26
/* 813664DC | 38 C1 00 0C */	addi r6, r1, 0xc
/* 813664E0 | 7F 85 E3 78 */	mr r5, r28
/* 813664E4 | 48 25 80 F5 */	bl fn_815BE5D8
/* 813664E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813664EC | 7C 7D 1B 78 */	mr r29, r3
/* 813664F0 | 41 82 00 28 */	beq .L_81366518
/* 813664F4 | 7F A6 EB 78 */	mr r6, r29
/* 813664F8 | 7F 28 CB 78 */	mr r8, r25
/* 813664FC | 7F 47 D3 78 */	mr r7, r26
/* 81366500 | 38 7E 06 86 */	addi r3, r30, 0x686
/* 81366504 | 38 9E 06 3C */	addi r4, r30, 0x63c
/* 81366508 | 38 BE 06 06 */	addi r5, r30, 0x606
/* 8136650C | 4C C6 31 82 */	crclr cr1eq
/* 81366510 | 48 1C 81 91 */	bl OSReport
/* 81366514 | 48 00 00 A0 */	b .L_813665B4
.L_81366518:
/* 81366518 | 7F 24 CB 78 */	mr r4, r25
/* 8136651C | 7F 43 D3 78 */	mr r3, r26
/* 81366520 | 7F 65 DB 78 */	mr r5, r27
/* 81366524 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 81366528 | 48 25 86 0D */	bl fn_815BEB34
/* 8136652C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81366530 | 7C 7D 1B 78 */	mr r29, r3
/* 81366534 | 40 80 00 20 */	bge .L_81366554
/* 81366538 | 7F A6 EB 78 */	mr r6, r29
/* 8136653C | 38 7E 06 C2 */	addi r3, r30, 0x6c2
/* 81366540 | 38 9E 06 3C */	addi r4, r30, 0x63c
/* 81366544 | 38 BE 06 06 */	addi r5, r30, 0x606
/* 81366548 | 4C C6 31 82 */	crclr cr1eq
/* 8136654C | 48 1C 81 55 */	bl OSReport
/* 81366550 | 48 00 00 64 */	b .L_813665B4
.L_81366554:
/* 81366554 | A0 BB 00 5A */	lhz r5, 0x5a(r27)
/* 81366558 | 39 3B 00 5C */	addi r9, r27, 0x5c
/* 8136655C | 80 C1 00 0C */	lwz r6, 0xc(r1)
/* 81366560 | 3B A0 00 00 */	li r29, 0x0
/* 81366564 | 38 E0 00 00 */	li r7, 0x0
/* 81366568 | 39 00 00 00 */	li r8, 0x0
/* 8136656C | 38 60 00 00 */	li r3, 0x0
/* 81366570 | 48 00 00 34 */	b .L_813665A4
.L_81366574:
/* 81366574 | 80 89 00 00 */	lwz r4, 0x0(r9)
/* 81366578 | 7C 1C 18 2E */	lwzx r0, r28, r3
/* 8136657C | 7C 04 00 40 */	cmplw r4, r0
/* 81366580 | 40 82 00 1C */	bne .L_8136659C
/* 81366584 | A0 09 00 06 */	lhz r0, 0x6(r9)
/* 81366588 | 54 00 04 21 */	rlwinm. r0, r0, 0, 16, 16
/* 8136658C | 40 82 00 08 */	bne .L_81366594
/* 81366590 | 3B BD 00 01 */	addi r29, r29, 0x1
.L_81366594:
/* 81366594 | 39 08 00 01 */	addi r8, r8, 0x1
/* 81366598 | 38 63 00 04 */	addi r3, r3, 0x4
.L_8136659C:
/* 8136659C | 38 E7 00 01 */	addi r7, r7, 0x1
/* 813665A0 | 39 29 00 10 */	addi r9, r9, 0x10
.L_813665A4:
/* 813665A4 | 7C 07 28 40 */	cmplw r7, r5
/* 813665A8 | 40 80 00 0C */	bge .L_813665B4
/* 813665AC | 7C 08 30 40 */	cmplw r8, r6
/* 813665B0 | 41 80 FF C4 */	blt .L_81366574
.L_813665B4:
/* 813665B4 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 813665B8 | 41 82 00 1C */	beq .L_813665D4
/* 813665BC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813665C0 | 7F E3 FB 78 */	mr r3, r31
/* 813665C4 | 7F 84 E3 78 */	mr r4, r28
/* 813665C8 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813665CC | 7D 89 03 A6 */	mtctr r12
/* 813665D0 | 4E 80 04 21 */	bctrl
.L_813665D4:
/* 813665D4 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 813665D8 | 41 82 00 1C */	beq .L_813665F4
/* 813665DC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813665E0 | 7F E3 FB 78 */	mr r3, r31
/* 813665E4 | 7F 64 DB 78 */	mr r4, r27
/* 813665E8 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813665EC | 7D 89 03 A6 */	mtctr r12
/* 813665F0 | 4E 80 04 21 */	bctrl
.L_813665F4:
/* 813665F4 | 7F A3 EB 78 */	mr r3, r29
.L_813665F8:
/* 813665F8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813665FC | 48 29 2F 09 */	bl _restgpr_25
/* 81366600 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81366604 | 7C 08 03 A6 */	mtlr r0
/* 81366608 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8136660C | 4E 80 00 20 */	blr
.endfn NumPrivateContents__Q33ipl7utility6ESMiscFPQ23EGG4HeapUx

# .text:0xF0C | 0x81366610 | size: 0x70
# ipl::utility::ESMisc::ChangeUid(unsigned long long)
.fn ChangeUid__Q33ipl7utility6ESMiscFUx, global
/* 81366610 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81366614 | 7C 08 02 A6 */	mflr r0
/* 81366618 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136661C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81366620 | 7C 7F 1B 78 */	mr r31, r3
/* 81366624 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81366628 | 7C 9E 23 78 */	mr r30, r4
/* 8136662C | 48 25 88 8D */	bl fn_815BEEB8
/* 81366630 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81366634 | 7C 64 1B 78 */	mr r4, r3
/* 81366638 | 41 82 00 24 */	beq .L_8136665C
/* 8136663C | 3C 60 81 64 */	lis r3, lbl_816419A5@ha
/* 81366640 | 7F C6 F3 78 */	mr r6, r30
/* 81366644 | 7F E5 FB 78 */	mr r5, r31
/* 81366648 | 38 63 19 A5 */	addi r3, r3, lbl_816419A5@l
/* 8136664C | 4C C6 31 82 */	crclr cr1eq
/* 81366650 | 48 1C 80 51 */	bl OSReport
/* 81366654 | 38 60 00 00 */	li r3, 0x0
/* 81366658 | 48 00 00 10 */	b .L_81366668
.L_8136665C:
/* 8136665C | 48 20 DE 49 */	bl fn_815744A4
/* 81366660 | 48 20 DD 11 */	bl ISFS_OpenLib
/* 81366664 | 38 60 00 01 */	li r3, 0x1
.L_81366668:
/* 81366668 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136666C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81366670 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81366674 | 7C 08 03 A6 */	mtlr r0
/* 81366678 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136667C | 4E 80 00 20 */	blr
.endfn ChangeUid__Q33ipl7utility6ESMiscFUx

# .text:0xF7C | 0x81366680 | size: 0xD8
# ipl::utility::ESMisc::NumInodesSaveDirRoot(unsigned long long)
.fn NumInodesSaveDirRoot__Q33ipl7utility6ESMiscFUx, global
/* 81366680 | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 81366684 | 7C 2C 0B 78 */	mr r12, r1
/* 81366688 | 21 6B FF 60 */	subfic r11, r11, -0xa0
/* 8136668C | 7C 21 59 6E */	stwux r1, r1, r11
/* 81366690 | 7C 08 02 A6 */	mflr r0
/* 81366694 | 7D 8B 63 78 */	mr r11, r12
/* 81366698 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 8136669C | 48 29 2E 25 */	bl _savegpr_27
/* 813666A0 | 3F E0 81 64 */	lis r31, lbl_816412C0@ha
/* 813666A4 | 7C 7C 1B 78 */	mr r28, r3
/* 813666A8 | 7C 9B 23 78 */	mr r27, r4
/* 813666AC | 3B C0 FF FF */	li r30, -0x1
/* 813666B0 | 3B FF 12 C0 */	addi r31, r31, lbl_816412C0@l
/* 813666B4 | 3B A0 00 00 */	li r29, 0x0
/* 813666B8 | 4B FF FF 59 */	bl ChangeUid__Q33ipl7utility6ESMiscFUx
/* 813666BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813666C0 | 41 82 00 64 */	beq .L_81366724
/* 813666C4 | 38 00 FF FF */	li r0, -0x1
/* 813666C8 | 38 61 00 40 */	addi r3, r1, 0x40
/* 813666CC | 38 BF 07 1B */	addi r5, r31, 0x71b
/* 813666D0 | 3B A0 00 01 */	li r29, 0x1
/* 813666D4 | 7F 86 00 38 */	and r6, r28, r0
/* 813666D8 | 7F 67 00 38 */	and r7, r27, r0
/* 813666DC | 38 80 00 40 */	li r4, 0x40
/* 813666E0 | 4C C6 31 82 */	crclr cr1eq
/* 813666E4 | 48 29 A2 C5 */	bl snprintf
/* 813666E8 | 38 61 00 40 */	addi r3, r1, 0x40
/* 813666EC | 38 A1 00 20 */	addi r5, r1, 0x20
/* 813666F0 | 38 80 00 00 */	li r4, 0x0
/* 813666F4 | 48 1F DC ED */	bl NANDPrivateReadDir
/* 813666F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813666FC | 7C 7E 1B 78 */	mr r30, r3
/* 81366700 | 41 82 00 20 */	beq .L_81366720
/* 81366704 | 7F C6 F3 78 */	mr r6, r30
/* 81366708 | 38 7F 07 31 */	addi r3, r31, 0x731
/* 8136670C | 38 9F 06 3C */	addi r4, r31, 0x63c
/* 81366710 | 38 BF 07 06 */	addi r5, r31, 0x706
/* 81366714 | 4C C6 31 82 */	crclr cr1eq
/* 81366718 | 48 1C 7F 89 */	bl OSReport
/* 8136671C | 48 00 00 08 */	b .L_81366724
.L_81366720:
/* 81366720 | 83 C1 00 20 */	lwz r30, 0x20(r1)
.L_81366724:
/* 81366724 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81366728 | 41 82 00 10 */	beq .L_81366738
/* 8136672C | 38 80 00 02 */	li r4, 0x2
/* 81366730 | 38 60 00 01 */	li r3, 0x1
/* 81366734 | 4B FF FE DD */	bl ChangeUid__Q33ipl7utility6ESMiscFUx
.L_81366738:
/* 81366738 | 7F C3 F3 78 */	mr r3, r30
/* 8136673C | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 81366740 | 7D 4B 53 78 */	mr r11, r10
/* 81366744 | 48 29 2D C9 */	bl _restgpr_27
/* 81366748 | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8136674C | 7C 08 03 A6 */	mtlr r0
/* 81366750 | 7D 41 53 78 */	mr r1, r10
/* 81366754 | 4E 80 00 20 */	blr
.endfn NumInodesSaveDirRoot__Q33ipl7utility6ESMiscFUx

# .text:0x1054 | 0x81366758 | size: 0x1E8
# ipl::utility::ESMisc::CheckSafeDeleteTitle(EGG::Heap*, unsigned long long)
.fn CheckSafeDeleteTitle__Q33ipl7utility6ESMiscFPQ23EGG4HeapUx, global
/* 81366758 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8136675C | 7C 08 02 A6 */	mflr r0
/* 81366760 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81366764 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81366768 | 48 29 2D 55 */	bl _savegpr_26
/* 8136676C | 7C DB 33 78 */	mr r27, r6
/* 81366770 | 3F E0 81 64 */	lis r31, lbl_816412C0@ha
/* 81366774 | 7C BC 2B 78 */	mr r28, r5
/* 81366778 | 7C 7A 1B 78 */	mr r26, r3
/* 8136677C | 7F 64 DB 78 */	mr r4, r27
/* 81366780 | 3B FF 12 C0 */	addi r31, r31, lbl_816412C0@l
/* 81366784 | 7F 83 E3 78 */	mr r3, r28
/* 81366788 | 3B A0 00 00 */	li r29, 0x0
/* 8136678C | 4B FF F2 7D */	bl PrivateContentsExist__Q33ipl7utility6ESMiscFUx
/* 81366790 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81366794 | 41 82 00 28 */	beq .L_813667BC
/* 81366798 | 7F 68 DB 78 */	mr r8, r27
/* 8136679C | 7F 87 E3 78 */	mr r7, r28
/* 813667A0 | 38 7F 07 66 */	addi r3, r31, 0x766
/* 813667A4 | 38 9F 06 3C */	addi r4, r31, 0x63c
/* 813667A8 | 38 BF 07 51 */	addi r5, r31, 0x751
/* 813667AC | 4C C6 31 82 */	crclr cr1eq
/* 813667B0 | 48 1C 7E F1 */	bl OSReport
/* 813667B4 | 3B C0 00 00 */	li r30, 0x0
/* 813667B8 | 48 00 01 4C */	b .L_81366904
.L_813667BC:
/* 813667BC | 7F 43 D3 78 */	mr r3, r26
/* 813667C0 | 7F 66 DB 78 */	mr r6, r27
/* 813667C4 | 7F 85 E3 78 */	mr r5, r28
/* 813667C8 | 4B FF FB E5 */	bl NumPrivateContents__Q33ipl7utility6ESMiscFPQ23EGG4HeapUx
/* 813667CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813667D0 | 7C 7E 1B 78 */	mr r30, r3
/* 813667D4 | 40 80 00 20 */	bge .L_813667F4
/* 813667D8 | 7F C6 F3 78 */	mr r6, r30
/* 813667DC | 38 7F 07 84 */	addi r3, r31, 0x784
/* 813667E0 | 38 9F 06 3C */	addi r4, r31, 0x63c
/* 813667E4 | 38 BF 07 51 */	addi r5, r31, 0x751
/* 813667E8 | 4C C6 31 82 */	crclr cr1eq
/* 813667EC | 48 1C 7E B5 */	bl OSReport
/* 813667F0 | 48 00 01 14 */	b .L_81366904
.L_813667F4:
/* 813667F4 | 40 81 00 0C */	ble .L_81366800
/* 813667F8 | 3B C0 00 00 */	li r30, 0x0
/* 813667FC | 48 00 01 08 */	b .L_81366904
.L_81366800:
/* 81366800 | 7F 64 DB 78 */	mr r4, r27
/* 81366804 | 7F 83 E3 78 */	mr r3, r28
/* 81366808 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 8136680C | 38 A0 00 00 */	li r5, 0x0
/* 81366810 | 48 25 83 25 */	bl fn_815BEB34
/* 81366814 | 2C 03 FF 96 */	cmpwi r3, -0x6a
/* 81366818 | 7C 7E 1B 78 */	mr r30, r3
/* 8136681C | 40 82 00 0C */	bne .L_81366828
/* 81366820 | 3B C0 00 00 */	li r30, 0x0
/* 81366824 | 48 00 00 E0 */	b .L_81366904
.L_81366828:
/* 81366828 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136682C | 41 82 00 20 */	beq .L_8136684C
/* 81366830 | 7F C6 F3 78 */	mr r6, r30
/* 81366834 | 38 7F 06 19 */	addi r3, r31, 0x619
/* 81366838 | 38 9F 06 3C */	addi r4, r31, 0x63c
/* 8136683C | 38 BF 07 51 */	addi r5, r31, 0x751
/* 81366840 | 4C C6 31 82 */	crclr cr1eq
/* 81366844 | 48 1C 7E 5D */	bl OSReport
/* 81366848 | 48 00 00 BC */	b .L_81366904
.L_8136684C:
/* 8136684C | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 81366850 | 7F 43 D3 78 */	mr r3, r26
/* 81366854 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 81366858 | 38 A0 FF E0 */	li r5, -0x20
/* 8136685C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81366860 | 38 04 00 1F */	addi r0, r4, 0x1f
/* 81366864 | 54 04 00 34 */	clrrwi r4, r0, 5
/* 81366868 | 7D 89 03 A6 */	mtctr r12
/* 8136686C | 4E 80 04 21 */	bctrl
/* 81366870 | 7C 7D 1B 78 */	mr r29, r3
/* 81366874 | 7F 64 DB 78 */	mr r4, r27
/* 81366878 | 7F 83 E3 78 */	mr r3, r28
/* 8136687C | 38 C1 00 08 */	addi r6, r1, 0x8
/* 81366880 | 7F A5 EB 78 */	mr r5, r29
/* 81366884 | 48 25 82 B1 */	bl fn_815BEB34
/* 81366888 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136688C | 7C 7E 1B 78 */	mr r30, r3
/* 81366890 | 41 82 00 20 */	beq .L_813668B0
/* 81366894 | 7F C6 F3 78 */	mr r6, r30
/* 81366898 | 38 7F 06 C2 */	addi r3, r31, 0x6c2
/* 8136689C | 38 9F 06 3C */	addi r4, r31, 0x63c
/* 813668A0 | 38 BF 07 51 */	addi r5, r31, 0x751
/* 813668A4 | 4C C6 31 82 */	crclr cr1eq
/* 813668A8 | 48 1C 7D F9 */	bl OSReport
/* 813668AC | 48 00 00 58 */	b .L_81366904
.L_813668B0:
/* 813668B0 | A0 1D 00 58 */	lhz r0, 0x58(r29)
/* 813668B4 | 7C 00 46 71 */	srawi. r0, r0, 8
/* 813668B8 | 41 82 00 0C */	beq .L_813668C4
/* 813668BC | 3B C0 00 00 */	li r30, 0x0
/* 813668C0 | 48 00 00 44 */	b .L_81366904
.L_813668C4:
/* 813668C4 | 7F 64 DB 78 */	mr r4, r27
/* 813668C8 | 7F 83 E3 78 */	mr r3, r28
/* 813668CC | 4B FF FD B5 */	bl NumInodesSaveDirRoot__Q33ipl7utility6ESMiscFUx
/* 813668D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813668D4 | 7C 7E 1B 78 */	mr r30, r3
/* 813668D8 | 40 80 00 20 */	bge .L_813668F8
/* 813668DC | 7F C6 F3 78 */	mr r6, r30
/* 813668E0 | 38 7F 07 AB */	addi r3, r31, 0x7ab
/* 813668E4 | 38 9F 06 3C */	addi r4, r31, 0x63c
/* 813668E8 | 38 BF 07 51 */	addi r5, r31, 0x751
/* 813668EC | 4C C6 31 82 */	crclr cr1eq
/* 813668F0 | 48 1C 7D B1 */	bl OSReport
/* 813668F4 | 48 00 00 10 */	b .L_81366904
.L_813668F8:
/* 813668F8 | 7C 60 00 34 */	cntlzw r0, r3
/* 813668FC | 38 60 00 01 */	li r3, 0x1
/* 81366900 | 5C 7E 07 FE */	rlwnm r30, r3, r0, 31, 31
.L_81366904:
/* 81366904 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81366908 | 41 82 00 1C */	beq .L_81366924
/* 8136690C | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 81366910 | 7F 43 D3 78 */	mr r3, r26
/* 81366914 | 7F A4 EB 78 */	mr r4, r29
/* 81366918 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8136691C | 7D 89 03 A6 */	mtctr r12
/* 81366920 | 4E 80 04 21 */	bctrl
.L_81366924:
/* 81366924 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81366928 | 7F C3 F3 78 */	mr r3, r30
/* 8136692C | 48 29 2B DD */	bl _restgpr_26
/* 81366930 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81366934 | 7C 08 03 A6 */	mtlr r0
/* 81366938 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8136693C | 4E 80 00 20 */	blr
.endfn CheckSafeDeleteTitle__Q33ipl7utility6ESMiscFPQ23EGG4HeapUx

# .text:0x123C | 0x81366940 | size: 0xEC
# ipl::utility::ESMisc::DeleteTitle(EGG::Heap*, unsigned long long)
.fn DeleteTitle__Q33ipl7utility6ESMiscFPQ23EGG4HeapUx, global
/* 81366940 | 94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 81366944 | 7C 08 02 A6 */	mflr r0
/* 81366948 | 90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8136694C | 39 61 00 B0 */	addi r11, r1, 0xb0
/* 81366950 | 48 29 2B 75 */	bl _savegpr_28
/* 81366954 | 3F E0 81 64 */	lis r31, lbl_816412C0@ha
/* 81366958 | 7C 64 1B 78 */	mr r4, r3
/* 8136695C | 7C BD 2B 78 */	mr r29, r5
/* 81366960 | 7C DC 33 78 */	mr r28, r6
/* 81366964 | 3B FF 12 C0 */	addi r31, r31, lbl_816412C0@l
/* 81366968 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8136696C | 48 00 11 79 */	bl __ct__Q33ipl7utility7TMDFileFPQ23EGG4Heap
/* 81366970 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81366974 | 38 9F 07 E0 */	addi r4, r31, 0x7e0
/* 81366978 | 48 00 11 B9 */	bl Open__Q33ipl7utility7TMDFileFPc
/* 8136697C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81366980 | 41 82 00 20 */	beq .L_813669A0
/* 81366984 | 7C 66 1B 78 */	mr r6, r3
/* 81366988 | 38 7F 08 07 */	addi r3, r31, 0x807
/* 8136698C | 38 9F 06 3C */	addi r4, r31, 0x63c
/* 81366990 | 38 BF 07 D4 */	addi r5, r31, 0x7d4
/* 81366994 | 4C C6 31 82 */	crclr cr1eq
/* 81366998 | 48 1C 7D 09 */	bl OSReport
/* 8136699C | 48 00 00 34 */	b .L_813669D0
.L_813669A0:
/* 813669A0 | 7F 86 E3 78 */	mr r6, r28
/* 813669A4 | 7F A5 EB 78 */	mr r5, r29
/* 813669A8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813669AC | 48 00 14 4D */	bl Backup__Q33ipl7utility7TMDFileFUx
/* 813669B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813669B4 | 41 82 00 1C */	beq .L_813669D0
/* 813669B8 | 7C 66 1B 78 */	mr r6, r3
/* 813669BC | 38 7F 08 30 */	addi r3, r31, 0x830
/* 813669C0 | 38 9F 06 3C */	addi r4, r31, 0x63c
/* 813669C4 | 38 BF 07 D4 */	addi r5, r31, 0x7d4
/* 813669C8 | 4C C6 31 82 */	crclr cr1eq
/* 813669CC | 48 1C 7C D5 */	bl OSReport
.L_813669D0:
/* 813669D0 | 7F 84 E3 78 */	mr r4, r28
/* 813669D4 | 7F A3 EB 78 */	mr r3, r29
/* 813669D8 | 48 25 83 65 */	bl fn_815BED3C
/* 813669DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813669E0 | 7C 7E 1B 78 */	mr r30, r3
/* 813669E4 | 41 82 00 24 */	beq .L_81366A08
/* 813669E8 | 7F C6 F3 78 */	mr r6, r30
/* 813669EC | 7F 88 E3 78 */	mr r8, r28
/* 813669F0 | 7F A7 EB 78 */	mr r7, r29
/* 813669F4 | 38 7F 08 4F */	addi r3, r31, 0x84f
/* 813669F8 | 38 9F 06 3C */	addi r4, r31, 0x63c
/* 813669FC | 38 BF 07 D4 */	addi r5, r31, 0x7d4
/* 81366A00 | 4C C6 31 82 */	crclr cr1eq
/* 81366A04 | 48 1C 7C 9D */	bl OSReport
.L_81366A08:
/* 81366A08 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81366A0C | 48 00 12 51 */	bl Close__Q33ipl7utility7TMDFileFv
/* 81366A10 | 39 61 00 B0 */	addi r11, r1, 0xb0
/* 81366A14 | 7F C3 F3 78 */	mr r3, r30
/* 81366A18 | 48 29 2A F9 */	bl _restgpr_28
/* 81366A1C | 80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 81366A20 | 7C 08 03 A6 */	mtlr r0
/* 81366A24 | 38 21 00 B0 */	addi r1, r1, 0xb0
/* 81366A28 | 4E 80 00 20 */	blr
.endfn DeleteTitle__Q33ipl7utility6ESMiscFPQ23EGG4HeapUx

# .text:0x1328 | 0x81366A2C | size: 0x1E4
# ipl::utility::ESMisc::DeleteEmptyTitles(EGG::Heap*)
.fn DeleteEmptyTitles__Q33ipl7utility6ESMiscFPQ23EGG4Heap, global
/* 81366A2C | 94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 81366A30 | 7C 08 02 A6 */	mflr r0
/* 81366A34 | 90 01 00 D4 */	stw r0, 0xd4(r1)
/* 81366A38 | 39 61 00 D0 */	addi r11, r1, 0xd0
/* 81366A3C | 48 29 2A 75 */	bl _savegpr_23
/* 81366A40 | 3F A0 81 64 */	lis r29, lbl_816412C0@ha
/* 81366A44 | 7C 77 1B 78 */	mr r23, r3
/* 81366A48 | 3B BD 12 C0 */	addi r29, r29, lbl_816412C0@l
/* 81366A4C | 38 81 00 08 */	addi r4, r1, 0x8
/* 81366A50 | 3B 60 00 00 */	li r27, 0x0
/* 81366A54 | 38 60 00 00 */	li r3, 0x0
/* 81366A58 | 48 25 7A 8D */	bl fn_815BE4E4
/* 81366A5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81366A60 | 41 82 00 20 */	beq .L_81366A80
/* 81366A64 | 7C 66 1B 78 */	mr r6, r3
/* 81366A68 | 38 7D 08 90 */	addi r3, r29, 0x890
/* 81366A6C | 38 9D 06 3C */	addi r4, r29, 0x63c
/* 81366A70 | 38 BD 08 7E */	addi r5, r29, 0x87e
/* 81366A74 | 4C C6 31 82 */	crclr cr1eq
/* 81366A78 | 48 1C 7C 29 */	bl OSReport
/* 81366A7C | 48 00 01 0C */	b .L_81366B88
.L_81366A80:
/* 81366A80 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 81366A84 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81366A88 | 41 82 01 00 */	beq .L_81366B88
/* 81366A8C | 81 97 00 00 */	lwz r12, 0x0(r23)
/* 81366A90 | 54 04 18 38 */	slwi r4, r0, 3
/* 81366A94 | 38 04 00 1F */	addi r0, r4, 0x1f
/* 81366A98 | 7E E3 BB 78 */	mr r3, r23
/* 81366A9C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81366AA0 | 54 04 00 34 */	clrrwi r4, r0, 5
/* 81366AA4 | 38 A0 FF E0 */	li r5, -0x20
/* 81366AA8 | 7D 89 03 A6 */	mtctr r12
/* 81366AAC | 4E 80 04 21 */	bctrl
/* 81366AB0 | 7C 7B 1B 78 */	mr r27, r3
/* 81366AB4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81366AB8 | 48 25 7A 2D */	bl fn_815BE4E4
/* 81366ABC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81366AC0 | 41 82 00 20 */	beq .L_81366AE0
/* 81366AC4 | 7C 66 1B 78 */	mr r6, r3
/* 81366AC8 | 38 7D 08 B9 */	addi r3, r29, 0x8b9
/* 81366ACC | 38 9D 06 3C */	addi r4, r29, 0x63c
/* 81366AD0 | 38 BD 08 7E */	addi r5, r29, 0x87e
/* 81366AD4 | 4C C6 31 82 */	crclr cr1eq
/* 81366AD8 | 48 1C 7B C9 */	bl OSReport
/* 81366ADC | 48 00 00 AC */	b .L_81366B88
.L_81366AE0:
/* 81366AE0 | 3B 00 00 00 */	li r24, 0x0
/* 81366AE4 | 3B E0 00 00 */	li r31, 0x0
/* 81366AE8 | 3B C0 FF FF */	li r30, -0x1
/* 81366AEC | 48 00 00 90 */	b .L_81366B7C
.L_81366AF0:
/* 81366AF0 | 7F 5B F8 2E */	lwzx r26, r27, r31
/* 81366AF4 | 7C 7B FA 14 */	add r3, r27, r31
/* 81366AF8 | 83 23 00 04 */	lwz r25, 0x4(r3)
/* 81366AFC | 7F 40 F0 38 */	and r0, r26, r30
/* 81366B00 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81366B04 | 41 82 00 70 */	beq .L_81366B74
/* 81366B08 | 7E E3 BB 78 */	mr r3, r23
/* 81366B0C | 7F 26 CB 78 */	mr r6, r25
/* 81366B10 | 7F 45 D3 78 */	mr r5, r26
/* 81366B14 | 4B FF FC 45 */	bl CheckSafeDeleteTitle__Q33ipl7utility6ESMiscFPQ23EGG4HeapUx
/* 81366B18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81366B1C | 7C 7C 1B 78 */	mr r28, r3
/* 81366B20 | 40 80 00 1C */	bge .L_81366B3C
/* 81366B24 | 7F 86 E3 78 */	mr r6, r28
/* 81366B28 | 38 7D 08 E2 */	addi r3, r29, 0x8e2
/* 81366B2C | 38 9D 06 3C */	addi r4, r29, 0x63c
/* 81366B30 | 38 BD 08 7E */	addi r5, r29, 0x87e
/* 81366B34 | 4C C6 31 82 */	crclr cr1eq
/* 81366B38 | 48 1C 7B 69 */	bl OSReport
.L_81366B3C:
/* 81366B3C | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81366B40 | 40 81 00 34 */	ble .L_81366B74
/* 81366B44 | 7E E3 BB 78 */	mr r3, r23
/* 81366B48 | 7F 26 CB 78 */	mr r6, r25
/* 81366B4C | 7F 45 D3 78 */	mr r5, r26
/* 81366B50 | 4B FF FD F1 */	bl DeleteTitle__Q33ipl7utility6ESMiscFPQ23EGG4HeapUx
/* 81366B54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81366B58 | 40 80 00 1C */	bge .L_81366B74
/* 81366B5C | 7C 66 1B 78 */	mr r6, r3
/* 81366B60 | 38 7D 09 0B */	addi r3, r29, 0x90b
/* 81366B64 | 38 9D 06 3C */	addi r4, r29, 0x63c
/* 81366B68 | 38 BD 08 7E */	addi r5, r29, 0x87e
/* 81366B6C | 4C C6 31 82 */	crclr cr1eq
/* 81366B70 | 48 1C 7B 31 */	bl OSReport
.L_81366B74:
/* 81366B74 | 3B 18 00 01 */	addi r24, r24, 0x1
/* 81366B78 | 3B FF 00 08 */	addi r31, r31, 0x8
.L_81366B7C:
/* 81366B7C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 81366B80 | 7C 18 00 40 */	cmplw r24, r0
/* 81366B84 | 41 80 FF 6C */	blt .L_81366AF0
.L_81366B88:
/* 81366B88 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 81366B8C | 41 82 00 1C */	beq .L_81366BA8
/* 81366B90 | 81 97 00 00 */	lwz r12, 0x0(r23)
/* 81366B94 | 7E E3 BB 78 */	mr r3, r23
/* 81366B98 | 7F 64 DB 78 */	mr r4, r27
/* 81366B9C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81366BA0 | 7D 89 03 A6 */	mtctr r12
/* 81366BA4 | 4E 80 04 21 */	bctrl
.L_81366BA8:
/* 81366BA8 | 7E E4 BB 78 */	mr r4, r23
/* 81366BAC | 38 61 00 0C */	addi r3, r1, 0xc
/* 81366BB0 | 48 00 0F 35 */	bl __ct__Q33ipl7utility7TMDFileFPQ23EGG4Heap
/* 81366BB4 | 38 61 00 0C */	addi r3, r1, 0xc
/* 81366BB8 | 38 9D 07 E0 */	addi r4, r29, 0x7e0
/* 81366BBC | 48 00 0F 75 */	bl Open__Q33ipl7utility7TMDFileFPc
/* 81366BC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81366BC4 | 7C 7E 1B 78 */	mr r30, r3
/* 81366BC8 | 41 82 00 1C */	beq .L_81366BE4
/* 81366BCC | 7F C6 F3 78 */	mr r6, r30
/* 81366BD0 | 38 7D 09 2B */	addi r3, r29, 0x92b
/* 81366BD4 | 38 9D 06 3C */	addi r4, r29, 0x63c
/* 81366BD8 | 38 BD 08 7E */	addi r5, r29, 0x87e
/* 81366BDC | 4C C6 31 82 */	crclr cr1eq
/* 81366BE0 | 48 1C 7A C1 */	bl OSReport
.L_81366BE4:
/* 81366BE4 | 38 61 00 0C */	addi r3, r1, 0xc
/* 81366BE8 | 48 00 10 75 */	bl Close__Q33ipl7utility7TMDFileFv
/* 81366BEC | 38 61 00 0C */	addi r3, r1, 0xc
/* 81366BF0 | 48 00 10 6D */	bl Close__Q33ipl7utility7TMDFileFv
/* 81366BF4 | 39 61 00 D0 */	addi r11, r1, 0xd0
/* 81366BF8 | 7F C3 F3 78 */	mr r3, r30
/* 81366BFC | 48 29 29 01 */	bl _restgpr_23
/* 81366C00 | 80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 81366C04 | 7C 08 03 A6 */	mtlr r0
/* 81366C08 | 38 21 00 D0 */	addi r1, r1, 0xd0
/* 81366C0C | 4E 80 00 20 */	blr
.endfn DeleteEmptyTitles__Q33ipl7utility6ESMiscFPQ23EGG4Heap

# .text:0x150C | 0x81366C10 | size: 0x6C
.fn iplES_81366C10, local
/* 81366C10 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81366C14 | 7C 08 02 A6 */	mflr r0
/* 81366C18 | 7C 67 1B 78 */	mr r7, r3
/* 81366C1C | 38 60 00 00 */	li r3, 0x0
/* 81366C20 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81366C24 | 38 00 00 20 */	li r0, 0x20
/* 81366C28 | 38 C1 00 07 */	addi r6, r1, 0x7
/* 81366C2C | 7C 09 03 A6 */	mtctr r0
.L_81366C30:
/* 81366C30 | 98 66 00 01 */	stb r3, 0x1(r6)
/* 81366C34 | 9C 66 00 02 */	stbu r3, 0x2(r6)
/* 81366C38 | 42 00 FF F8 */	bdnz .L_81366C30
/* 81366C3C | 3C A0 81 64 */	lis r5, lbl_81641C0D@ha
/* 81366C40 | 98 66 00 01 */	stb r3, 0x1(r6)
/* 81366C44 | 38 00 FF FF */	li r0, -0x1
/* 81366C48 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81366C4C | 7C E6 00 38 */	and r6, r7, r0
/* 81366C50 | 38 A5 1C 0D */	addi r5, r5, lbl_81641C0D@l
/* 81366C54 | 7C 87 00 38 */	and r7, r4, r0
/* 81366C58 | 38 80 00 40 */	li r4, 0x40
/* 81366C5C | 4C C6 31 82 */	crclr cr1eq
/* 81366C60 | 48 29 9D 49 */	bl snprintf
/* 81366C64 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81366C68 | 48 1F D2 41 */	bl NANDPrivateDelete
/* 81366C6C | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 81366C70 | 7C 08 03 A6 */	mtlr r0
/* 81366C74 | 38 21 00 50 */	addi r1, r1, 0x50
/* 81366C78 | 4E 80 00 20 */	blr
.endfn iplES_81366C10

# .text:0x1578 | 0x81366C7C | size: 0x268
.fn iplES_81366C7C, local
/* 81366C7C | 94 21 FD C0 */	stwu r1, -0x240(r1)
/* 81366C80 | 7C 08 02 A6 */	mflr r0
/* 81366C84 | 90 01 02 44 */	stw r0, 0x244(r1)
/* 81366C88 | 39 61 02 40 */	addi r11, r1, 0x240
/* 81366C8C | 48 29 28 25 */	bl _savegpr_23
/* 81366C90 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81366C94 | 3F A0 81 64 */	lis r29, lbl_816412C0@ha
/* 81366C98 | 7C 9B 23 78 */	mr r27, r4
/* 81366C9C | 7C 7A 1B 78 */	mr r26, r3
/* 81366CA0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81366CA4 | 3B BD 12 C0 */	addi r29, r29, lbl_816412C0@l
/* 81366CA8 | 38 80 40 00 */	li r4, 0x4000
/* 81366CAC | 38 A0 00 20 */	li r5, 0x20
/* 81366CB0 | 7D 89 03 A6 */	mtctr r12
/* 81366CB4 | 4E 80 04 21 */	bctrl
/* 81366CB8 | 7C 7C 1B 78 */	mr r28, r3
/* 81366CBC | 48 1C EF DD */	bl OSGetTick
/* 81366CC0 | 38 00 00 00 */	li r0, 0x0
/* 81366CC4 | 3B 00 00 1E */	li r24, 0x1e
/* 81366CC8 | 7F 20 C1 D6 */	mullw r25, r0, r24
/* 81366CCC | 7C 7E 1B 78 */	mr r30, r3
/* 81366CD0 | 3F E0 80 00 */	lis r31, 0x8000
/* 81366CD4 | 3A E0 03 E8 */	li r23, 0x3e8
/* 81366CD8 | 48 00 00 70 */	b .L_81366D48
.L_81366CDC:
/* 81366CDC | 38 7D 09 7A */	addi r3, r29, 0x97a
/* 81366CE0 | 38 9D 06 3C */	addi r4, r29, 0x63c
/* 81366CE4 | 38 BD 09 67 */	addi r5, r29, 0x967
/* 81366CE8 | 4C C6 31 82 */	crclr cr1eq
/* 81366CEC | 48 1C 79 B5 */	bl OSReport
/* 81366CF0 | 80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 81366CF4 | 54 00 F0 BE */	srwi r0, r0, 2
/* 81366CF8 | 7C 60 BB 96 */	divwu r3, r0, r23
/* 81366CFC | 7C 03 C0 16 */	mulhwu r0, r3, r24
/* 81366D00 | 1C 83 00 1E */	mulli r4, r3, 0x1e
/* 81366D04 | 7C 60 CA 14 */	add r3, r0, r25
/* 81366D08 | 48 1C EE C5 */	bl OSSleepTicks
/* 81366D0C | 48 1C EF 8D */	bl OSGetTick
/* 81366D10 | 80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 81366D14 | 7C 7E 18 50 */	subf r3, r30, r3
/* 81366D18 | 54 00 F0 BE */	srwi r0, r0, 2
/* 81366D1C | 7C 00 BB 96 */	divwu r0, r0, r23
/* 81366D20 | 7C 03 03 96 */	divwu r0, r3, r0
/* 81366D24 | 28 00 0B B8 */	cmplwi r0, 0xbb8
/* 81366D28 | 40 81 00 20 */	ble .L_81366D48
/* 81366D2C | 38 7D 09 95 */	addi r3, r29, 0x995
/* 81366D30 | 38 9D 06 3C */	addi r4, r29, 0x63c
/* 81366D34 | 38 BD 09 67 */	addi r5, r29, 0x967
/* 81366D38 | 3A E0 FF E6 */	li r23, -0x1a
/* 81366D3C | 4C C6 31 82 */	crclr cr1eq
/* 81366D40 | 48 1C 79 61 */	bl OSReport
/* 81366D44 | 48 00 01 4C */	b .L_81366E90
.L_81366D48:
/* 81366D48 | 7F 83 E3 78 */	mr r3, r28
/* 81366D4C | 48 13 92 C9 */	bl fn_814A0014
/* 81366D50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81366D54 | 40 82 FF 88 */	bne .L_81366CDC
/* 81366D58 | 38 00 00 00 */	li r0, 0x0
/* 81366D5C | 38 61 00 08 */	addi r3, r1, 0x8
/* 81366D60 | B0 01 00 08 */	sth r0, 0x8(r1)
/* 81366D64 | 38 80 00 01 */	li r4, 0x1
/* 81366D68 | 48 14 86 A1 */	bl fn_814AF408
/* 81366D6C | 48 00 00 F4 */	b .L_81366E60
.L_81366D70:
/* 81366D70 | A0 81 00 08 */	lhz r4, 0x8(r1)
/* 81366D74 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81366D78 | 48 14 91 E5 */	bl fn_814AFF5C
/* 81366D7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81366D80 | 41 82 00 20 */	beq .L_81366DA0
/* 81366D84 | 7C 66 1B 78 */	mr r6, r3
/* 81366D88 | 38 7D 09 BD */	addi r3, r29, 0x9bd
/* 81366D8C | 38 9D 06 3C */	addi r4, r29, 0x63c
/* 81366D90 | 38 BD 09 67 */	addi r5, r29, 0x967
/* 81366D94 | 4C C6 31 82 */	crclr cr1eq
/* 81366D98 | 48 1C 79 09 */	bl OSReport
/* 81366D9C | 48 00 00 B8 */	b .L_81366E54
.L_81366DA0:
/* 81366DA0 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81366DA4 | 38 81 00 0C */	addi r4, r1, 0xc
/* 81366DA8 | 48 14 85 65 */	bl fn_814AF30C
/* 81366DAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81366DB0 | 41 82 00 20 */	beq .L_81366DD0
/* 81366DB4 | 7C 66 1B 78 */	mr r6, r3
/* 81366DB8 | 38 7D 09 EF */	addi r3, r29, 0x9ef
/* 81366DBC | 38 9D 06 3C */	addi r4, r29, 0x63c
/* 81366DC0 | 38 BD 09 67 */	addi r5, r29, 0x967
/* 81366DC4 | 4C C6 31 82 */	crclr cr1eq
/* 81366DC8 | 48 1C 78 D9 */	bl OSReport
/* 81366DCC | 48 00 00 88 */	b .L_81366E54
.L_81366DD0:
/* 81366DD0 | 80 E1 00 0C */	lwz r7, 0xc(r1)
/* 81366DD4 | 7C 07 D8 40 */	cmplw r7, r27
/* 81366DD8 | 40 82 00 64 */	bne .L_81366E3C
/* 81366DDC | 38 7D 0A 22 */	addi r3, r29, 0xa22
/* 81366DE0 | 38 9D 06 3C */	addi r4, r29, 0x63c
/* 81366DE4 | 38 BD 09 67 */	addi r5, r29, 0x967
/* 81366DE8 | 38 C1 00 10 */	addi r6, r1, 0x10
/* 81366DEC | 4C C6 31 82 */	crclr cr1eq
/* 81366DF0 | 48 1C 78 B1 */	bl OSReport
/* 81366DF4 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81366DF8 | 48 14 8D 85 */	bl fn_814AFB7C
/* 81366DFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81366E00 | 41 82 00 20 */	beq .L_81366E20
/* 81366E04 | 7C 66 1B 78 */	mr r6, r3
/* 81366E08 | 38 7D 09 EF */	addi r3, r29, 0x9ef
/* 81366E0C | 38 9D 06 3C */	addi r4, r29, 0x63c
/* 81366E10 | 38 BD 09 67 */	addi r5, r29, 0x967
/* 81366E14 | 4C C6 31 82 */	crclr cr1eq
/* 81366E18 | 48 1C 78 89 */	bl OSReport
/* 81366E1C | 48 00 00 38 */	b .L_81366E54
.L_81366E20:
/* 81366E20 | A0 C1 00 08 */	lhz r6, 0x8(r1)
/* 81366E24 | 38 7D 0A 50 */	addi r3, r29, 0xa50
/* 81366E28 | 38 9D 06 3C */	addi r4, r29, 0x63c
/* 81366E2C | 38 BD 09 67 */	addi r5, r29, 0x967
/* 81366E30 | 4C C6 31 82 */	crclr cr1eq
/* 81366E34 | 48 1C 78 6D */	bl OSReport
/* 81366E38 | 48 00 00 1C */	b .L_81366E54
.L_81366E3C:
/* 81366E3C | A0 C1 00 08 */	lhz r6, 0x8(r1)
/* 81366E40 | 38 7D 0A 7C */	addi r3, r29, 0xa7c
/* 81366E44 | 38 9D 06 3C */	addi r4, r29, 0x63c
/* 81366E48 | 38 BD 09 67 */	addi r5, r29, 0x967
/* 81366E4C | 4C C6 31 82 */	crclr cr1eq
/* 81366E50 | 48 1C 78 51 */	bl OSReport
.L_81366E54:
/* 81366E54 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81366E58 | 38 80 00 00 */	li r4, 0x0
/* 81366E5C | 48 14 85 AD */	bl fn_814AF408
.L_81366E60:
/* 81366E60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81366E64 | 40 80 FF 0C */	bge .L_81366D70
/* 81366E68 | 48 13 93 B9 */	bl fn_814A0220
/* 81366E6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81366E70 | 7C 77 1B 78 */	mr r23, r3
/* 81366E74 | 41 82 00 1C */	beq .L_81366E90
/* 81366E78 | 7E E6 BB 78 */	mr r6, r23
/* 81366E7C | 38 7D 0A 9E */	addi r3, r29, 0xa9e
/* 81366E80 | 38 9D 06 3C */	addi r4, r29, 0x63c
/* 81366E84 | 38 BD 09 67 */	addi r5, r29, 0x967
/* 81366E88 | 4C C6 31 82 */	crclr cr1eq
/* 81366E8C | 48 1C 78 15 */	bl OSReport
.L_81366E90:
/* 81366E90 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81366E94 | 41 82 00 1C */	beq .L_81366EB0
/* 81366E98 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 81366E9C | 7F 43 D3 78 */	mr r3, r26
/* 81366EA0 | 7F 84 E3 78 */	mr r4, r28
/* 81366EA4 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81366EA8 | 7D 89 03 A6 */	mtctr r12
/* 81366EAC | 4E 80 04 21 */	bctrl
.L_81366EB0:
/* 81366EB0 | 7F 66 DB 78 */	mr r6, r27
/* 81366EB4 | 38 7D 0A CF */	addi r3, r29, 0xacf
/* 81366EB8 | 38 9D 06 3C */	addi r4, r29, 0x63c
/* 81366EBC | 38 BD 09 67 */	addi r5, r29, 0x967
/* 81366EC0 | 4C C6 31 82 */	crclr cr1eq
/* 81366EC4 | 48 1C 77 DD */	bl OSReport
/* 81366EC8 | 39 61 02 40 */	addi r11, r1, 0x240
/* 81366ECC | 7E E3 BB 78 */	mr r3, r23
/* 81366ED0 | 48 29 26 2D */	bl _restgpr_23
/* 81366ED4 | 80 01 02 44 */	lwz r0, 0x244(r1)
/* 81366ED8 | 7C 08 03 A6 */	mtlr r0
/* 81366EDC | 38 21 02 40 */	addi r1, r1, 0x240
/* 81366EE0 | 4E 80 00 20 */	blr
.endfn iplES_81366C7C

# .text:0x17E0 | 0x81366EE4 | size: 0x1BC
.fn iplES_81366EE4, global
/* 81366EE4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81366EE8 | 7C 08 02 A6 */	mflr r0
/* 81366EEC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81366EF0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81366EF4 | 48 29 25 C9 */	bl _savegpr_26
/* 81366EF8 | 7C DB 33 78 */	mr r27, r6
/* 81366EFC | 3F C0 81 64 */	lis r30, lbl_816412C0@ha
/* 81366F00 | 7C BC 2B 78 */	mr r28, r5
/* 81366F04 | 7C 7A 1B 78 */	mr r26, r3
/* 81366F08 | 7F 64 DB 78 */	mr r4, r27
/* 81366F0C | 3B DE 12 C0 */	addi r30, r30, lbl_816412C0@l
/* 81366F10 | 7F 83 E3 78 */	mr r3, r28
/* 81366F14 | 4B FF FC FD */	bl iplES_81366C10
/* 81366F18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81366F1C | 7C 7D 1B 78 */	mr r29, r3
/* 81366F20 | 41 82 00 34 */	beq .L_81366F54
/* 81366F24 | 2C 03 FF F4 */	cmpwi r3, -0xc
/* 81366F28 | 41 82 00 2C */	beq .L_81366F54
/* 81366F2C | 7F 68 DB 78 */	mr r8, r27
/* 81366F30 | 7F 87 E3 78 */	mr r7, r28
/* 81366F34 | 7F A9 EB 78 */	mr r9, r29
/* 81366F38 | 38 7E 0B 08 */	addi r3, r30, 0xb08
/* 81366F3C | 38 9E 06 3C */	addi r4, r30, 0x63c
/* 81366F40 | 38 BE 0A F5 */	addi r5, r30, 0xaf5
/* 81366F44 | 4C C6 31 82 */	crclr cr1eq
/* 81366F48 | 48 1C 77 59 */	bl OSReport
/* 81366F4C | 7F A3 EB 78 */	mr r3, r29
/* 81366F50 | 48 00 01 38 */	b .L_81367088
.L_81366F54:
/* 81366F54 | 38 00 FF 00 */	li r0, -0x100
/* 81366F58 | 3C 80 48 41 */	lis r4, 0x4841
/* 81366F5C | 7F 65 00 38 */	and r5, r27, r0
/* 81366F60 | 7F 43 D3 78 */	mr r3, r26
/* 81366F64 | 38 04 4F 00 */	addi r0, r4, 0x4f00
/* 81366F68 | 7F 66 DB 78 */	mr r6, r27
/* 81366F6C | 7C A0 02 78 */	xor r0, r5, r0
/* 81366F70 | 7F 85 E3 78 */	mr r5, r28
/* 81366F74 | 7C 1F 00 34 */	cntlzw r31, r0
/* 81366F78 | 57 FF D9 7E */	srwi r31, r31, 5
/* 81366F7C | 4B FF F7 DD */	bl CheckSafeDeleteTitle__Q33ipl7utility6ESMiscFPQ23EGG4HeapUx
/* 81366F80 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 81366F84 | 7C 7D 1B 78 */	mr r29, r3
/* 81366F88 | 41 82 00 0C */	beq .L_81366F94
/* 81366F8C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81366F90 | 41 82 00 48 */	beq .L_81366FD8
.L_81366F94:
/* 81366F94 | 7F 43 D3 78 */	mr r3, r26
/* 81366F98 | 7F 66 DB 78 */	mr r6, r27
/* 81366F9C | 7F 85 E3 78 */	mr r5, r28
/* 81366FA0 | 4B FF F9 A1 */	bl DeleteTitle__Q33ipl7utility6ESMiscFPQ23EGG4HeapUx
/* 81366FA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81366FA8 | 7C 7F 1B 78 */	mr r31, r3
/* 81366FAC | 41 82 00 9C */	beq .L_81367048
/* 81366FB0 | 7F 68 DB 78 */	mr r8, r27
/* 81366FB4 | 7F 87 E3 78 */	mr r7, r28
/* 81366FB8 | 7F E9 FB 78 */	mr r9, r31
/* 81366FBC | 38 7E 0B 36 */	addi r3, r30, 0xb36
/* 81366FC0 | 38 9E 06 3C */	addi r4, r30, 0x63c
/* 81366FC4 | 38 BE 0A F5 */	addi r5, r30, 0xaf5
/* 81366FC8 | 4C C6 31 82 */	crclr cr1eq
/* 81366FCC | 48 1C 76 D5 */	bl OSReport
/* 81366FD0 | 7F E3 FB 78 */	mr r3, r31
/* 81366FD4 | 48 00 00 B4 */	b .L_81367088
.L_81366FD8:
/* 81366FD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81366FDC | 40 82 00 44 */	bne .L_81367020
/* 81366FE0 | 7F 64 DB 78 */	mr r4, r27
/* 81366FE4 | 7F 83 E3 78 */	mr r3, r28
/* 81366FE8 | 48 25 7C 61 */	bl fn_815BEC48
/* 81366FEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81366FF0 | 7C 7F 1B 78 */	mr r31, r3
/* 81366FF4 | 41 82 00 54 */	beq .L_81367048
/* 81366FF8 | 7F 68 DB 78 */	mr r8, r27
/* 81366FFC | 7F 87 E3 78 */	mr r7, r28
/* 81367000 | 7F E9 FB 78 */	mr r9, r31
/* 81367004 | 38 7E 0B 65 */	addi r3, r30, 0xb65
/* 81367008 | 38 9E 06 3C */	addi r4, r30, 0x63c
/* 8136700C | 38 BE 0A F5 */	addi r5, r30, 0xaf5
/* 81367010 | 4C C6 31 82 */	crclr cr1eq
/* 81367014 | 48 1C 76 8D */	bl OSReport
/* 81367018 | 7F E3 FB 78 */	mr r3, r31
/* 8136701C | 48 00 00 6C */	b .L_81367088
.L_81367020:
/* 81367020 | 7F 68 DB 78 */	mr r8, r27
/* 81367024 | 7F 87 E3 78 */	mr r7, r28
/* 81367028 | 7F A9 EB 78 */	mr r9, r29
/* 8136702C | 38 7E 0B 97 */	addi r3, r30, 0xb97
/* 81367030 | 38 9E 06 3C */	addi r4, r30, 0x63c
/* 81367034 | 38 BE 0A F5 */	addi r5, r30, 0xaf5
/* 81367038 | 4C C6 31 82 */	crclr cr1eq
/* 8136703C | 48 1C 76 65 */	bl OSReport
/* 81367040 | 7F A3 EB 78 */	mr r3, r29
/* 81367044 | 48 00 00 44 */	b .L_81367088
.L_81367048:
/* 81367048 | 38 00 FF FF */	li r0, -0x1
/* 8136704C | 7F 43 D3 78 */	mr r3, r26
/* 81367050 | 7F 64 00 38 */	and r4, r27, r0
/* 81367054 | 4B FF FC 29 */	bl iplES_81366C7C
/* 81367058 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136705C | 7C 7F 1B 78 */	mr r31, r3
/* 81367060 | 41 82 00 24 */	beq .L_81367084
/* 81367064 | 7F 68 DB 78 */	mr r8, r27
/* 81367068 | 7F 87 E3 78 */	mr r7, r28
/* 8136706C | 7F E9 FB 78 */	mr r9, r31
/* 81367070 | 38 7E 0B C6 */	addi r3, r30, 0xbc6
/* 81367074 | 38 9E 06 3C */	addi r4, r30, 0x63c
/* 81367078 | 38 BE 0A F5 */	addi r5, r30, 0xaf5
/* 8136707C | 4C C6 31 82 */	crclr cr1eq
/* 81367080 | 48 1C 76 21 */	bl OSReport
.L_81367084:
/* 81367084 | 7F E3 FB 78 */	mr r3, r31
.L_81367088:
/* 81367088 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136708C | 48 29 24 7D */	bl _restgpr_26
/* 81367090 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81367094 | 7C 08 03 A6 */	mtlr r0
/* 81367098 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8136709C | 4E 80 00 20 */	blr
.endfn iplES_81366EE4

# .text:0x199C | 0x813670A0 | size: 0x124
# ipl::utility::ESMisc::PrepareTitleDir(unsigned long long, EGG::Heap*)
.fn PrepareTitleDir__Q33ipl7utility6ESMiscFUxPQ23EGG4Heap, global
/* 813670A0 | 94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 813670A4 | 7C 08 02 A6 */	mflr r0
/* 813670A8 | 90 01 00 B4 */	stw r0, 0xb4(r1)
/* 813670AC | 39 61 00 B0 */	addi r11, r1, 0xb0
/* 813670B0 | 48 29 24 15 */	bl _savegpr_28
/* 813670B4 | 3F E0 81 64 */	lis r31, lbl_816412C0@ha
/* 813670B8 | 7C 7D 1B 78 */	mr r29, r3
/* 813670BC | 7C 9C 23 78 */	mr r28, r4
/* 813670C0 | 7C A4 2B 78 */	mr r4, r5
/* 813670C4 | 3B FF 12 C0 */	addi r31, r31, lbl_816412C0@l
/* 813670C8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813670CC | 48 00 0A 19 */	bl __ct__Q33ipl7utility7TMDFileFPQ23EGG4Heap
/* 813670D0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813670D4 | 38 9F 07 E0 */	addi r4, r31, 0x7e0
/* 813670D8 | 48 00 0A 59 */	bl Open__Q33ipl7utility7TMDFileFPc
/* 813670DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813670E0 | 7C 7E 1B 78 */	mr r30, r3
/* 813670E4 | 41 82 00 2C */	beq .L_81367110
/* 813670E8 | 7F C6 F3 78 */	mr r6, r30
/* 813670EC | 38 7F 0C 07 */	addi r3, r31, 0xc07
/* 813670F0 | 38 9F 06 3C */	addi r4, r31, 0x63c
/* 813670F4 | 38 BF 0B F7 */	addi r5, r31, 0xbf7
/* 813670F8 | 4C C6 31 82 */	crclr cr1eq
/* 813670FC | 48 1C 75 A5 */	bl OSReport
/* 81367100 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81367104 | 48 00 0B 59 */	bl Close__Q33ipl7utility7TMDFileFv
/* 81367108 | 7F C3 F3 78 */	mr r3, r30
/* 8136710C | 48 00 00 A0 */	b .L_813671AC
.L_81367110:
/* 81367110 | 7F 86 E3 78 */	mr r6, r28
/* 81367114 | 7F A5 EB 78 */	mr r5, r29
/* 81367118 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8136711C | 48 00 0F 91 */	bl Restore__Q33ipl7utility7TMDFileFUx
/* 81367120 | 2C 03 FB FF */	cmpwi r3, -0x401
/* 81367124 | 7C 7E 1B 78 */	mr r30, r3
/* 81367128 | 40 82 00 28 */	bne .L_81367150
/* 8136712C | 7F 88 E3 78 */	mr r8, r28
/* 81367130 | 7F A7 EB 78 */	mr r7, r29
/* 81367134 | 7F C9 F3 78 */	mr r9, r30
/* 81367138 | 38 7F 0C 30 */	addi r3, r31, 0xc30
/* 8136713C | 38 9F 06 3C */	addi r4, r31, 0x63c
/* 81367140 | 38 BF 0B F7 */	addi r5, r31, 0xbf7
/* 81367144 | 4C C6 31 82 */	crclr cr1eq
/* 81367148 | 48 1C 75 59 */	bl OSReport
/* 8136714C | 48 00 00 24 */	b .L_81367170
.L_81367150:
/* 81367150 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81367154 | 41 82 00 1C */	beq .L_81367170
/* 81367158 | 7F C6 F3 78 */	mr r6, r30
/* 8136715C | 38 7F 0C 52 */	addi r3, r31, 0xc52
/* 81367160 | 38 9F 06 3C */	addi r4, r31, 0x63c
/* 81367164 | 38 BF 0B F7 */	addi r5, r31, 0xbf7
/* 81367168 | 4C C6 31 82 */	crclr cr1eq
/* 8136716C | 48 1C 75 35 */	bl OSReport
.L_81367170:
/* 81367170 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81367174 | 48 00 0A E9 */	bl Close__Q33ipl7utility7TMDFileFv
/* 81367178 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136717C | 7C 7D 1B 78 */	mr r29, r3
/* 81367180 | 41 82 00 20 */	beq .L_813671A0
/* 81367184 | 7F A6 EB 78 */	mr r6, r29
/* 81367188 | 38 7F 0C 6E */	addi r3, r31, 0xc6e
/* 8136718C | 38 9F 06 3C */	addi r4, r31, 0x63c
/* 81367190 | 38 BF 0B F7 */	addi r5, r31, 0xbf7
/* 81367194 | 4C C6 31 82 */	crclr cr1eq
/* 81367198 | 48 1C 75 09 */	bl OSReport
/* 8136719C | 7F BE EB 78 */	mr r30, r29
.L_813671A0:
/* 813671A0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813671A4 | 48 00 0A B9 */	bl Close__Q33ipl7utility7TMDFileFv
/* 813671A8 | 7F C3 F3 78 */	mr r3, r30
.L_813671AC:
/* 813671AC | 39 61 00 B0 */	addi r11, r1, 0xb0
/* 813671B0 | 48 29 23 61 */	bl _restgpr_28
/* 813671B4 | 80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 813671B8 | 7C 08 03 A6 */	mtlr r0
/* 813671BC | 38 21 00 B0 */	addi r1, r1, 0xb0
/* 813671C0 | 4E 80 00 20 */	blr
.endfn PrepareTitleDir__Q33ipl7utility6ESMiscFUxPQ23EGG4Heap

# .text:0x1AC0 | 0x813671C4 | size: 0x1EC
# ipl::utility::ESMisc::DeleteSavedata(unsigned long long, EGG::Heap*)
.fn DeleteSavedata__Q33ipl7utility6ESMiscFUxPQ23EGG4Heap, global
/* 813671C4 | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 813671C8 | 7C 2C 0B 78 */	mr r12, r1
/* 813671CC | 21 6B FE E0 */	subfic r11, r11, -0x120
/* 813671D0 | 7C 21 59 6E */	stwux r1, r1, r11
/* 813671D4 | 7C 08 02 A6 */	mflr r0
/* 813671D8 | 7D 8B 63 78 */	mr r11, r12
/* 813671DC | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 813671E0 | 48 29 22 D9 */	bl _savegpr_25
/* 813671E4 | 3F C0 81 64 */	lis r30, lbl_816412C0@ha
/* 813671E8 | 3B A0 00 00 */	li r29, 0x0
/* 813671EC | 7C 66 1B 78 */	mr r6, r3
/* 813671F0 | 7C 87 23 78 */	mr r7, r4
/* 813671F4 | 3B DE 12 C0 */	addi r30, r30, lbl_816412C0@l
/* 813671F8 | 38 00 FF FF */	li r0, -0x1
/* 813671FC | 7C B9 2B 78 */	mr r25, r5
/* 81367200 | 93 A1 00 20 */	stw r29, 0x20(r1)
/* 81367204 | 7C C5 00 38 */	and r5, r6, r0
/* 81367208 | 38 61 00 A0 */	addi r3, r1, 0xa0
/* 8136720C | 38 9E 0C AA */	addi r4, r30, 0xcaa
/* 81367210 | 7C E6 00 38 */	and r6, r7, r0
/* 81367214 | 4C C6 31 82 */	crclr cr1eq
/* 81367218 | 48 29 98 69 */	bl sprintf
/* 8136721C | 38 61 00 A0 */	addi r3, r1, 0xa0
/* 81367220 | 38 A1 00 20 */	addi r5, r1, 0x20
/* 81367224 | 38 80 00 00 */	li r4, 0x0
/* 81367228 | 48 1F D0 E9 */	bl NANDReadDir
/* 8136722C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81367230 | 7C 7A 1B 78 */	mr r26, r3
/* 81367234 | 40 82 00 10 */	bne .L_81367244
/* 81367238 | 80 01 00 20 */	lwz r0, 0x20(r1)
/* 8136723C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81367240 | 40 82 00 24 */	bne .L_81367264
.L_81367244:
/* 81367244 | 7F 47 D3 78 */	mr r7, r26
/* 81367248 | 38 7E 0C C1 */	addi r3, r30, 0xcc1
/* 8136724C | 38 9E 06 3C */	addi r4, r30, 0x63c
/* 81367250 | 38 BE 0C 9B */	addi r5, r30, 0xc9b
/* 81367254 | 38 C1 00 A0 */	addi r6, r1, 0xa0
/* 81367258 | 4C C6 31 82 */	crclr cr1eq
/* 8136725C | 48 1C 74 45 */	bl OSReport
/* 81367260 | 48 00 01 10 */	b .L_81367370
.L_81367264:
/* 81367264 | 1C 80 00 41 */	mulli r4, r0, 0x41
/* 81367268 | 81 99 00 00 */	lwz r12, 0x0(r25)
/* 8136726C | 7F 23 CB 78 */	mr r3, r25
/* 81367270 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81367274 | 38 A0 FF E0 */	li r5, -0x20
/* 81367278 | 38 04 00 1F */	addi r0, r4, 0x1f
/* 8136727C | 54 04 00 34 */	clrrwi r4, r0, 5
/* 81367280 | 7D 89 03 A6 */	mtctr r12
/* 81367284 | 4E 80 04 21 */	bctrl
/* 81367288 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136728C | 7C 7D 1B 78 */	mr r29, r3
/* 81367290 | 40 82 00 24 */	bne .L_813672B4
/* 81367294 | 38 7E 0C E1 */	addi r3, r30, 0xce1
/* 81367298 | 38 9E 06 3C */	addi r4, r30, 0x63c
/* 8136729C | 38 BE 0C 9B */	addi r5, r30, 0xc9b
/* 813672A0 | 3B 40 FF FE */	li r26, -0x2
/* 813672A4 | 38 C0 FF FE */	li r6, -0x2
/* 813672A8 | 4C C6 31 82 */	crclr cr1eq
/* 813672AC | 48 1C 73 F5 */	bl OSReport
/* 813672B0 | 48 00 00 C0 */	b .L_81367370
.L_813672B4:
/* 813672B4 | 7F A4 EB 78 */	mr r4, r29
/* 813672B8 | 38 61 00 A0 */	addi r3, r1, 0xa0
/* 813672BC | 38 A1 00 20 */	addi r5, r1, 0x20
/* 813672C0 | 48 1F D0 51 */	bl NANDReadDir
/* 813672C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813672C8 | 7C 7A 1B 78 */	mr r26, r3
/* 813672CC | 41 82 00 24 */	beq .L_813672F0
/* 813672D0 | 7F 47 D3 78 */	mr r7, r26
/* 813672D4 | 38 7E 0C FE */	addi r3, r30, 0xcfe
/* 813672D8 | 38 9E 06 3C */	addi r4, r30, 0x63c
/* 813672DC | 38 BE 0C 9B */	addi r5, r30, 0xc9b
/* 813672E0 | 38 C1 00 A0 */	addi r6, r1, 0xa0
/* 813672E4 | 4C C6 31 82 */	crclr cr1eq
/* 813672E8 | 48 1C 73 B9 */	bl OSReport
/* 813672EC | 48 00 00 84 */	b .L_81367370
.L_813672F0:
/* 813672F0 | 7F BC EB 78 */	mr r28, r29
/* 813672F4 | 3B 60 00 00 */	li r27, 0x0
/* 813672F8 | 3B E0 00 00 */	li r31, 0x0
/* 813672FC | 48 00 00 68 */	b .L_81367364
.L_81367300:
/* 81367300 | 7F 87 E3 78 */	mr r7, r28
/* 81367304 | 38 61 00 40 */	addi r3, r1, 0x40
/* 81367308 | 38 C1 00 A0 */	addi r6, r1, 0xa0
/* 8136730C | 38 80 00 40 */	li r4, 0x40
/* 81367310 | 38 AD 82 60 */	li r5, lbl_816962A0@sda21
/* 81367314 | 4C C6 31 82 */	crclr cr1eq
/* 81367318 | 48 29 96 91 */	bl snprintf
/* 8136731C | 9B E1 00 80 */	stb r31, 0x80(r1)
/* 81367320 | 38 61 00 40 */	addi r3, r1, 0x40
/* 81367324 | 48 1F CB 85 */	bl NANDPrivateDelete
/* 81367328 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136732C | 7C 7A 1B 78 */	mr r26, r3
/* 81367330 | 41 82 00 20 */	beq .L_81367350
/* 81367334 | 7F 47 D3 78 */	mr r7, r26
/* 81367338 | 38 7E 0D 1E */	addi r3, r30, 0xd1e
/* 8136733C | 38 9E 06 3C */	addi r4, r30, 0x63c
/* 81367340 | 38 BE 0C 9B */	addi r5, r30, 0xc9b
/* 81367344 | 38 C1 00 40 */	addi r6, r1, 0x40
/* 81367348 | 4C C6 31 82 */	crclr cr1eq
/* 8136734C | 48 1C 73 55 */	bl OSReport
.L_81367350:
/* 81367350 | 7F 83 E3 78 */	mr r3, r28
/* 81367354 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81367358 | 48 29 1B A5 */	bl strlen
/* 8136735C | 7C 63 E2 14 */	add r3, r3, r28
/* 81367360 | 3B 83 00 01 */	addi r28, r3, 0x1
.L_81367364:
/* 81367364 | 80 01 00 20 */	lwz r0, 0x20(r1)
/* 81367368 | 7C 1B 00 40 */	cmplw r27, r0
/* 8136736C | 41 80 FF 94 */	blt .L_81367300
.L_81367370:
/* 81367370 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81367374 | 41 82 00 1C */	beq .L_81367390
/* 81367378 | 81 99 00 00 */	lwz r12, 0x0(r25)
/* 8136737C | 7F 23 CB 78 */	mr r3, r25
/* 81367380 | 7F A4 EB 78 */	mr r4, r29
/* 81367384 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81367388 | 7D 89 03 A6 */	mtctr r12
/* 8136738C | 4E 80 04 21 */	bctrl
.L_81367390:
/* 81367390 | 7F 43 D3 78 */	mr r3, r26
/* 81367394 | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 81367398 | 7D 4B 53 78 */	mr r11, r10
/* 8136739C | 48 29 21 69 */	bl _restgpr_25
/* 813673A0 | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 813673A4 | 7C 08 03 A6 */	mtlr r0
/* 813673A8 | 7D 41 53 78 */	mr r1, r10
/* 813673AC | 4E 80 00 20 */	blr
.endfn DeleteSavedata__Q33ipl7utility6ESMiscFUxPQ23EGG4Heap

# .text:0x1CAC | 0x813673B0 | size: 0x30
.fn iplES_813673B0, local
/* 813673B0 | 7C 89 03 A6 */	mtctr r4
/* 813673B4 | 28 04 00 00 */	cmplwi r4, 0x0
/* 813673B8 | 40 81 00 20 */	ble .L_813673D8
.L_813673BC:
/* 813673BC | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 813673C0 | 7C 00 07 75 */	extsb. r0, r0
/* 813673C4 | 40 82 00 0C */	bne .L_813673D0
/* 813673C8 | 38 60 00 01 */	li r3, 0x1
/* 813673CC | 4E 80 00 20 */	blr
.L_813673D0:
/* 813673D0 | 38 63 00 01 */	addi r3, r3, 0x1
/* 813673D4 | 42 00 FF E8 */	bdnz .L_813673BC
.L_813673D8:
/* 813673D8 | 38 60 00 00 */	li r3, 0x0
/* 813673DC | 4E 80 00 20 */	blr
.endfn iplES_813673B0

# .text:0x1CDC | 0x813673E0 | size: 0x704
# ipl::utility::ESMisc::InitSavedata(unsigned long long, EGG::Heap*)
.fn InitSavedata__Q33ipl7utility6ESMiscFUxPQ23EGG4Heap, global
/* 813673E0 | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 813673E4 | 7C 2C 0B 78 */	mr r12, r1
/* 813673E8 | 21 6B FD A0 */	subfic r11, r11, -0x260
/* 813673EC | 7C 21 59 6E */	stwux r1, r1, r11
/* 813673F0 | 7C 08 02 A6 */	mflr r0
/* 813673F4 | 7D 8B 63 78 */	mr r11, r12
/* 813673F8 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 813673FC | 48 29 20 91 */	bl _savegpr_14
/* 81367400 | 3B 80 00 00 */	li r28, 0x0
/* 81367404 | 3E A0 81 64 */	lis r21, lbl_816412C0@ha
/* 81367408 | 93 81 00 24 */	stw r28, 0x24(r1)
/* 8136740C | 7C 79 1B 78 */	mr r25, r3
/* 81367410 | 3A B5 12 C0 */	addi r21, r21, lbl_816412C0@l
/* 81367414 | 38 81 00 24 */	addi r4, r1, 0x24
/* 81367418 | 38 60 00 00 */	li r3, 0x0
/* 8136741C | 48 25 70 C9 */	bl fn_815BE4E4
/* 81367420 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81367424 | 7C 7B 1B 78 */	mr r27, r3
/* 81367428 | 41 82 00 20 */	beq .L_81367448
/* 8136742C | 7F 66 DB 78 */	mr r6, r27
/* 81367430 | 38 75 0D 70 */	addi r3, r21, 0xd70
/* 81367434 | 38 95 06 3C */	addi r4, r21, 0x63c
/* 81367438 | 38 B5 0D 63 */	addi r5, r21, 0xd63
/* 8136743C | 4C C6 31 82 */	crclr cr1eq
/* 81367440 | 48 1C 72 61 */	bl OSReport
/* 81367444 | 48 00 06 60 */	b .L_81367AA4
.L_81367448:
/* 81367448 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136744C | 7F 23 CB 78 */	mr r3, r25
/* 81367450 | 81 99 00 00 */	lwz r12, 0x0(r25)
/* 81367454 | 38 A0 FF E0 */	li r5, -0x20
/* 81367458 | 54 04 18 38 */	slwi r4, r0, 3
/* 8136745C | 38 04 00 1F */	addi r0, r4, 0x1f
/* 81367460 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81367464 | 54 04 00 34 */	clrrwi r4, r0, 5
/* 81367468 | 7D 89 03 A6 */	mtctr r12
/* 8136746C | 4E 80 04 21 */	bctrl
/* 81367470 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81367474 | 7C 7C 1B 78 */	mr r28, r3
/* 81367478 | 40 82 00 1C */	bne .L_81367494
/* 8136747C | 38 75 0D 9C */	addi r3, r21, 0xd9c
/* 81367480 | 38 95 06 3C */	addi r4, r21, 0x63c
/* 81367484 | 38 B5 0D 63 */	addi r5, r21, 0xd63
/* 81367488 | 4C C6 31 82 */	crclr cr1eq
/* 8136748C | 48 1C 72 15 */	bl OSReport
/* 81367490 | 48 00 06 14 */	b .L_81367AA4
.L_81367494:
/* 81367494 | 38 81 00 24 */	addi r4, r1, 0x24
/* 81367498 | 48 25 70 4D */	bl fn_815BE4E4
/* 8136749C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813674A0 | 7C 7B 1B 78 */	mr r27, r3
/* 813674A4 | 41 82 00 20 */	beq .L_813674C4
/* 813674A8 | 7F 66 DB 78 */	mr r6, r27
/* 813674AC | 38 75 0D B8 */	addi r3, r21, 0xdb8
/* 813674B0 | 38 95 06 3C */	addi r4, r21, 0x63c
/* 813674B4 | 38 B5 0D 63 */	addi r5, r21, 0xd63
/* 813674B8 | 4C C6 31 82 */	crclr cr1eq
/* 813674BC | 48 1C 71 E5 */	bl OSReport
/* 813674C0 | 48 00 05 E4 */	b .L_81367AA4
.L_813674C4:
/* 813674C4 | 3C 60 52 5A */	lis r3, 0x525a
/* 813674C8 | 3B A1 00 80 */	addi r29, r1, 0x80
/* 813674CC | 3A C3 44 00 */	addi r22, r3, 0x4400
/* 813674D0 | 3B 40 00 00 */	li r26, 0x0
/* 813674D4 | 3B 00 00 00 */	li r24, 0x0
/* 813674D8 | 3D C0 44 49 */	lis r14, 0x4449
/* 813674DC | 3E E0 00 01 */	lis r23, 0x1
/* 813674E0 | 48 00 05 B8 */	b .L_81367A98
.L_813674E4:
/* 813674E4 | 7C 7C C2 14 */	add r3, r28, r24
/* 813674E8 | 7E 9C C0 2E */	lwzx r20, r28, r24
/* 813674EC | 38 00 FF FF */	li r0, -0x1
/* 813674F0 | 82 63 00 04 */	lwz r19, 0x4(r3)
/* 813674F4 | 7E 84 00 38 */	and r4, r20, r0
/* 813674F8 | 38 00 FF 00 */	li r0, -0x100
/* 813674FC | 7E 60 00 38 */	and r0, r19, r0
/* 81367500 | 7C 03 B2 78 */	xor r3, r0, r22
/* 81367504 | 6C 80 00 01 */	xoris r0, r4, 0x1
/* 81367508 | 7C 60 03 79 */	or. r0, r3, r0
/* 8136750C | 40 82 03 3C */	bne .L_81367848
/* 81367510 | 3C 60 01 00 */	lis r3, 0x100
/* 81367514 | 38 95 0D E4 */	addi r4, r21, 0xde4
/* 81367518 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8136751C | 38 F5 0D FD */	addi r7, r21, 0xdfd
/* 81367520 | 7E 85 00 38 */	and r5, r20, r0
/* 81367524 | 38 61 00 28 */	addi r3, r1, 0x28
/* 81367528 | 38 00 FF FF */	li r0, -0x1
/* 8136752C | 3B C0 00 00 */	li r30, 0x0
/* 81367530 | 7E 66 00 38 */	and r6, r19, r0
/* 81367534 | 39 E0 00 00 */	li r15, 0x0
/* 81367538 | 3B E0 00 00 */	li r31, 0x0
/* 8136753C | 4C C6 31 82 */	crclr cr1eq
/* 81367540 | 48 29 95 41 */	bl sprintf
/* 81367544 | 7E 64 9B 78 */	mr r4, r19
/* 81367548 | 7E 83 A3 78 */	mr r3, r20
/* 8136754C | 4B FF F0 C5 */	bl ChangeUid__Q33ipl7utility6ESMiscFUx
/* 81367550 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81367554 | 40 82 00 2C */	bne .L_81367580
/* 81367558 | 38 75 0E 09 */	addi r3, r21, 0xe09
/* 8136755C | 38 95 06 3C */	addi r4, r21, 0x63c
/* 81367560 | 38 B5 0D 3F */	addi r5, r21, 0xd3f
/* 81367564 | 4C C6 31 82 */	crclr cr1eq
/* 81367568 | 48 1C 71 39 */	bl OSReport
/* 8136756C | 7F 23 CB 78 */	mr r3, r25
/* 81367570 | 7E 66 9B 78 */	mr r6, r19
/* 81367574 | 7E 85 A3 78 */	mr r5, r20
/* 81367578 | 4B FF F3 C9 */	bl DeleteTitle__Q33ipl7utility6ESMiscFPQ23EGG4HeapUx
/* 8136757C | 48 00 02 8C */	b .L_81367808
.L_81367580:
/* 81367580 | 38 61 00 28 */	addi r3, r1, 0x28
/* 81367584 | 38 81 01 60 */	addi r4, r1, 0x160
/* 81367588 | 38 A0 00 01 */	li r5, 0x1
/* 8136758C | 48 1F DD 6D */	bl NANDPrivateOpen
/* 81367590 | 2C 03 FF F4 */	cmpwi r3, -0xc
/* 81367594 | 40 82 00 24 */	bne .L_813675B8
/* 81367598 | 7C 67 1B 78 */	mr r7, r3
/* 8136759C | 38 75 0E 23 */	addi r3, r21, 0xe23
/* 813675A0 | 38 95 06 3C */	addi r4, r21, 0x63c
/* 813675A4 | 38 B5 0D 3F */	addi r5, r21, 0xd3f
/* 813675A8 | 38 C1 00 28 */	addi r6, r1, 0x28
/* 813675AC | 4C C6 31 82 */	crclr cr1eq
/* 813675B0 | 48 1C 70 F1 */	bl OSReport
/* 813675B4 | 48 00 02 54 */	b .L_81367808
.L_813675B8:
/* 813675B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813675BC | 41 82 00 20 */	beq .L_813675DC
/* 813675C0 | 7C 66 1B 78 */	mr r6, r3
/* 813675C4 | 38 75 0E 42 */	addi r3, r21, 0xe42
/* 813675C8 | 38 95 06 3C */	addi r4, r21, 0x63c
/* 813675CC | 38 B5 0D 3F */	addi r5, r21, 0xd3f
/* 813675D0 | 4C C6 31 82 */	crclr cr1eq
/* 813675D4 | 48 1C 70 CD */	bl OSReport
/* 813675D8 | 48 00 02 30 */	b .L_81367808
.L_813675DC:
/* 813675DC | 81 99 00 00 */	lwz r12, 0x0(r25)
/* 813675E0 | 7F 23 CB 78 */	mr r3, r25
/* 813675E4 | 39 E0 00 01 */	li r15, 0x1
/* 813675E8 | 38 80 40 00 */	li r4, 0x4000
/* 813675EC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813675F0 | 38 A0 FF E0 */	li r5, -0x20
/* 813675F4 | 7D 89 03 A6 */	mtctr r12
/* 813675F8 | 4E 80 04 21 */	bctrl
/* 813675FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81367600 | 7C 7E 1B 78 */	mr r30, r3
/* 81367604 | 40 82 00 20 */	bne .L_81367624
/* 81367608 | 38 75 0E 6A */	addi r3, r21, 0xe6a
/* 8136760C | 38 95 06 3C */	addi r4, r21, 0x63c
/* 81367610 | 38 B5 0D 3F */	addi r5, r21, 0xd3f
/* 81367614 | 38 C0 FF FE */	li r6, -0x2
/* 81367618 | 4C C6 31 82 */	crclr cr1eq
/* 8136761C | 48 1C 70 85 */	bl OSReport
/* 81367620 | 48 00 01 E8 */	b .L_81367808
.L_81367624:
/* 81367624 | 38 80 00 00 */	li r4, 0x0
/* 81367628 | 38 A0 40 00 */	li r5, 0x4000
/* 8136762C | 4B FC 8D 09 */	bl memset
/* 81367630 | 7F C4 F3 78 */	mr r4, r30
/* 81367634 | 38 61 01 60 */	addi r3, r1, 0x160
/* 81367638 | 38 A0 40 00 */	li r5, 0x4000
/* 8136763C | 48 1F C9 C5 */	bl NANDRead
/* 81367640 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81367644 | 40 80 00 20 */	bge .L_81367664
/* 81367648 | 7C 66 1B 78 */	mr r6, r3
/* 8136764C | 38 75 0E 84 */	addi r3, r21, 0xe84
/* 81367650 | 38 95 06 3C */	addi r4, r21, 0x63c
/* 81367654 | 38 B5 0D 3F */	addi r5, r21, 0xd3f
/* 81367658 | 4C C6 31 82 */	crclr cr1eq
/* 8136765C | 48 1C 70 45 */	bl OSReport
/* 81367660 | 48 00 01 A8 */	b .L_81367808
.L_81367664:
/* 81367664 | 2C 03 40 00 */	cmpwi r3, 0x4000
/* 81367668 | 41 82 00 24 */	beq .L_8136768C
/* 8136766C | 7C 66 1B 78 */	mr r6, r3
/* 81367670 | 38 75 0E A2 */	addi r3, r21, 0xea2
/* 81367674 | 38 95 06 3C */	addi r4, r21, 0x63c
/* 81367678 | 38 B5 0D 3F */	addi r5, r21, 0xd3f
/* 8136767C | 4C C6 31 82 */	crclr cr1eq
/* 81367680 | 48 1C 70 21 */	bl OSReport
/* 81367684 | 3B E0 00 01 */	li r31, 0x1
/* 81367688 | 48 00 01 5C */	b .L_813677E4
.L_8136768C:
/* 8136768C | 3A 40 00 08 */	li r18, 0x8
/* 81367690 | 3A 00 00 00 */	li r16, 0x0
/* 81367694 | 3A 20 00 00 */	li r17, 0x0
.L_81367698:
/* 81367698 | 7D FE 92 14 */	add r15, r30, r18
/* 8136769C | 38 80 00 08 */	li r4, 0x8
/* 813676A0 | 38 6F 00 4E */	addi r3, r15, 0x4e
/* 813676A4 | 4B FF FD 0D */	bl iplES_813673B0
/* 813676A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813676AC | 41 82 01 10 */	beq .L_813677BC
/* 813676B0 | 38 6F 00 58 */	addi r3, r15, 0x58
/* 813676B4 | 38 80 00 08 */	li r4, 0x8
/* 813676B8 | 4B FF FC F9 */	bl iplES_813673B0
/* 813676BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813676C0 | 41 82 00 FC */	beq .L_813677BC
/* 813676C4 | 38 6F 00 72 */	addi r3, r15, 0x72
/* 813676C8 | 38 80 00 08 */	li r4, 0x8
/* 813676CC | 4B FF FC E5 */	bl iplES_813673B0
/* 813676D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813676D4 | 41 82 00 E8 */	beq .L_813677BC
/* 813676D8 | 38 6F 00 8E */	addi r3, r15, 0x8e
/* 813676DC | 38 80 00 08 */	li r4, 0x8
/* 813676E0 | 4B FF FC D1 */	bl iplES_813673B0
/* 813676E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813676E8 | 41 82 00 D4 */	beq .L_813677BC
/* 813676EC | 38 6F 01 B4 */	addi r3, r15, 0x1b4
/* 813676F0 | 38 80 00 11 */	li r4, 0x11
/* 813676F4 | 4B FF FC BD */	bl iplES_813673B0
/* 813676F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813676FC | 41 82 00 C0 */	beq .L_813677BC
/* 81367700 | 38 6F 01 C5 */	addi r3, r15, 0x1c5
/* 81367704 | 38 80 00 11 */	li r4, 0x11
/* 81367708 | 4B FF FC A9 */	bl iplES_813673B0
/* 8136770C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81367710 | 41 82 00 AC */	beq .L_813677BC
/* 81367714 | 3A 31 00 01 */	addi r17, r17, 0x1
/* 81367718 | 3A 52 0A 94 */	addi r18, r18, 0xa94
/* 8136771C | 28 11 00 03 */	cmplwi r17, 0x3
/* 81367720 | 41 80 FF 78 */	blt .L_81367698
/* 81367724 | 3A 40 20 08 */	li r18, 0x2008
/* 81367728 | 3A 20 00 00 */	li r17, 0x0
.L_8136772C:
/* 8136772C | 7D FE 92 14 */	add r15, r30, r18
/* 81367730 | 38 80 00 08 */	li r4, 0x8
/* 81367734 | 38 6F 00 4E */	addi r3, r15, 0x4e
/* 81367738 | 4B FF FC 79 */	bl iplES_813673B0
/* 8136773C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81367740 | 41 82 00 7C */	beq .L_813677BC
/* 81367744 | 38 6F 00 58 */	addi r3, r15, 0x58
/* 81367748 | 38 80 00 08 */	li r4, 0x8
/* 8136774C | 4B FF FC 65 */	bl iplES_813673B0
/* 81367750 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81367754 | 41 82 00 68 */	beq .L_813677BC
/* 81367758 | 38 6F 00 72 */	addi r3, r15, 0x72
/* 8136775C | 38 80 00 08 */	li r4, 0x8
/* 81367760 | 4B FF FC 51 */	bl iplES_813673B0
/* 81367764 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81367768 | 41 82 00 54 */	beq .L_813677BC
/* 8136776C | 38 6F 00 8E */	addi r3, r15, 0x8e
/* 81367770 | 38 80 00 08 */	li r4, 0x8
/* 81367774 | 4B FF FC 3D */	bl iplES_813673B0
/* 81367778 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136777C | 41 82 00 40 */	beq .L_813677BC
/* 81367780 | 38 6F 01 B4 */	addi r3, r15, 0x1b4
/* 81367784 | 38 80 00 11 */	li r4, 0x11
/* 81367788 | 4B FF FC 29 */	bl iplES_813673B0
/* 8136778C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81367790 | 41 82 00 2C */	beq .L_813677BC
/* 81367794 | 38 6F 01 C5 */	addi r3, r15, 0x1c5
/* 81367798 | 38 80 00 11 */	li r4, 0x11
/* 8136779C | 4B FF FC 15 */	bl iplES_813673B0
/* 813677A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813677A4 | 41 82 00 18 */	beq .L_813677BC
/* 813677A8 | 3A 31 00 01 */	addi r17, r17, 0x1
/* 813677AC | 3A 52 0A 94 */	addi r18, r18, 0xa94
/* 813677B0 | 28 11 00 03 */	cmplwi r17, 0x3
/* 813677B4 | 41 80 FF 78 */	blt .L_8136772C
/* 813677B8 | 3A 00 00 01 */	li r16, 0x1
.L_813677BC:
/* 813677BC | 2C 10 00 00 */	cmpwi r16, 0x0
/* 813677C0 | 40 82 00 24 */	bne .L_813677E4
/* 813677C4 | 7E 68 9B 78 */	mr r8, r19
/* 813677C8 | 7E 87 A3 78 */	mr r7, r20
/* 813677CC | 38 75 0E C8 */	addi r3, r21, 0xec8
/* 813677D0 | 38 95 06 3C */	addi r4, r21, 0x63c
/* 813677D4 | 38 B5 0D 3F */	addi r5, r21, 0xd3f
/* 813677D8 | 4C C6 31 82 */	crclr cr1eq
/* 813677DC | 48 1C 6E C5 */	bl OSReport
/* 813677E0 | 3B E0 00 01 */	li r31, 0x1
.L_813677E4:
/* 813677E4 | 38 61 01 60 */	addi r3, r1, 0x160
/* 813677E8 | 48 1F DD 05 */	bl NANDClose
/* 813677EC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813677F0 | 39 E0 00 00 */	li r15, 0x0
/* 813677F4 | 41 82 00 14 */	beq .L_81367808
/* 813677F8 | 7E 64 9B 78 */	mr r4, r19
/* 813677FC | 7E 83 A3 78 */	mr r3, r20
/* 81367800 | 7F 25 CB 78 */	mr r5, r25
/* 81367804 | 4B FF F9 C1 */	bl DeleteSavedata__Q33ipl7utility6ESMiscFUxPQ23EGG4Heap
.L_81367808:
/* 81367808 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8136780C | 41 82 00 1C */	beq .L_81367828
/* 81367810 | 81 99 00 00 */	lwz r12, 0x0(r25)
/* 81367814 | 7F 23 CB 78 */	mr r3, r25
/* 81367818 | 7F C4 F3 78 */	mr r4, r30
/* 8136781C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81367820 | 7D 89 03 A6 */	mtctr r12
/* 81367824 | 4E 80 04 21 */	bctrl
.L_81367828:
/* 81367828 | 2C 0F 00 00 */	cmpwi r15, 0x0
/* 8136782C | 41 82 00 0C */	beq .L_81367838
/* 81367830 | 38 61 01 60 */	addi r3, r1, 0x160
/* 81367834 | 48 1F DC B9 */	bl NANDClose
.L_81367838:
/* 81367838 | 38 80 00 02 */	li r4, 0x2
/* 8136783C | 38 60 00 01 */	li r3, 0x1
/* 81367840 | 4B FF ED D1 */	bl ChangeUid__Q33ipl7utility6ESMiscFUx
/* 81367844 | 48 00 02 4C */	b .L_81367A90
.L_81367848:
/* 81367848 | 38 6E 53 43 */	addi r3, r14, 0x5343
/* 8136784C | 38 17 00 08 */	addi r0, r23, 0x8
/* 81367850 | 7E 63 1A 78 */	xor r3, r19, r3
/* 81367854 | 7E 80 02 78 */	xor r0, r20, r0
/* 81367858 | 7C 60 03 79 */	or. r0, r3, r0
/* 8136785C | 41 82 00 D4 */	beq .L_81367930
/* 81367860 | 38 6E 53 43 */	addi r3, r14, 0x5343
/* 81367864 | 38 17 00 08 */	addi r0, r23, 0x8
/* 81367868 | 7C 63 98 10 */	subfc r3, r3, r19
/* 8136786C | 7C 00 A1 10 */	subfe r0, r0, r20
/* 81367870 | 7C 03 19 10 */	subfe r0, r3, r3
/* 81367874 | 7C 00 00 D1 */	neg. r0, r0
/* 81367878 | 41 82 00 60 */	beq .L_813678D8
/* 8136787C | 3C 60 4A 4F */	lis r3, 0x4a4f
/* 81367880 | 38 17 00 01 */	addi r0, r23, 0x1
/* 81367884 | 38 63 44 49 */	addi r3, r3, 0x4449
/* 81367888 | 7E 63 1A 78 */	xor r3, r19, r3
/* 8136788C | 7E 80 02 78 */	xor r0, r20, r0
/* 81367890 | 7C 60 03 79 */	or. r0, r3, r0
/* 81367894 | 41 82 00 9C */	beq .L_81367930
/* 81367898 | 3C 60 4A 4F */	lis r3, 0x4a4f
/* 8136789C | 38 17 00 01 */	addi r0, r23, 0x1
/* 813678A0 | 38 63 44 49 */	addi r3, r3, 0x4449
/* 813678A4 | 7C 63 98 10 */	subfc r3, r3, r19
/* 813678A8 | 7C 00 A1 10 */	subfe r0, r0, r20
/* 813678AC | 7C 03 19 10 */	subfe r0, r3, r3
/* 813678B0 | 7C 00 00 D1 */	neg. r0, r0
/* 813678B4 | 41 82 01 DC */	beq .L_81367A90
/* 813678B8 | 3C 60 48 41 */	lis r3, 0x4841
/* 813678BC | 38 17 00 01 */	addi r0, r23, 0x1
/* 813678C0 | 38 63 58 58 */	addi r3, r3, 0x5858
/* 813678C4 | 7E 63 1A 78 */	xor r3, r19, r3
/* 813678C8 | 7E 80 02 78 */	xor r0, r20, r0
/* 813678CC | 7C 60 03 79 */	or. r0, r3, r0
/* 813678D0 | 41 82 00 60 */	beq .L_81367930
/* 813678D4 | 48 00 01 BC */	b .L_81367A90
.L_813678D8:
/* 813678D8 | 3C 60 44 56 */	lis r3, 0x4456
/* 813678DC | 38 17 00 08 */	addi r0, r23, 0x8
/* 813678E0 | 38 63 44 58 */	addi r3, r3, 0x4458
/* 813678E4 | 7E 63 1A 78 */	xor r3, r19, r3
/* 813678E8 | 7E 80 02 78 */	xor r0, r20, r0
/* 813678EC | 7C 60 03 79 */	or. r0, r3, r0
/* 813678F0 | 41 82 00 40 */	beq .L_81367930
/* 813678F4 | 3C 60 44 56 */	lis r3, 0x4456
/* 813678F8 | 38 17 00 08 */	addi r0, r23, 0x8
/* 813678FC | 38 63 44 58 */	addi r3, r3, 0x4458
/* 81367900 | 7C 63 98 10 */	subfc r3, r3, r19
/* 81367904 | 7C 00 A1 10 */	subfe r0, r0, r20
/* 81367908 | 7C 03 19 10 */	subfe r0, r3, r3
/* 8136790C | 7C 00 00 D1 */	neg. r0, r0
/* 81367910 | 41 82 01 80 */	beq .L_81367A90
/* 81367914 | 38 6E 53 4B */	addi r3, r14, 0x534b
/* 81367918 | 38 17 00 08 */	addi r0, r23, 0x8
/* 8136791C | 7E 63 1A 78 */	xor r3, r19, r3
/* 81367920 | 7E 80 02 78 */	xor r0, r20, r0
/* 81367924 | 7C 60 03 79 */	or. r0, r3, r0
/* 81367928 | 41 82 00 08 */	beq .L_81367930
/* 8136792C | 48 00 01 64 */	b .L_81367A90
.L_81367930:
/* 81367930 | 7C 9C C2 14 */	add r4, r28, r24
/* 81367934 | 7C 7C C0 2E */	lwzx r3, r28, r24
/* 81367938 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 8136793C | 48 25 74 01 */	bl fn_815BED3C
/* 81367940 | 7C 9C C2 14 */	add r4, r28, r24
/* 81367944 | 7D FC C0 2E */	lwzx r15, r28, r24
/* 81367948 | 82 04 00 04 */	lwz r16, 0x4(r4)
/* 8136794C | 7F A3 EB 78 */	mr r3, r29
/* 81367950 | 3A 20 00 00 */	li r17, 0x0
/* 81367954 | 38 80 00 00 */	li r4, 0x0
/* 81367958 | 38 A0 00 E0 */	li r5, 0xe0
/* 8136795C | 4B FC 89 D9 */	bl memset
/* 81367960 | 7E 04 83 78 */	mr r4, r16
/* 81367964 | 7D E3 7B 78 */	mr r3, r15
/* 81367968 | 38 C1 00 20 */	addi r6, r1, 0x20
/* 8136796C | 38 A0 00 00 */	li r5, 0x0
/* 81367970 | 48 25 6F 99 */	bl fn_815BE908
/* 81367974 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81367978 | 41 82 00 28 */	beq .L_813679A0
/* 8136797C | 7C 66 1B 78 */	mr r6, r3
/* 81367980 | 7E 08 83 78 */	mr r8, r16
/* 81367984 | 7D E7 7B 78 */	mr r7, r15
/* 81367988 | 38 75 0E EB */	addi r3, r21, 0xeeb
/* 8136798C | 38 95 06 3C */	addi r4, r21, 0x63c
/* 81367990 | 38 B5 0D 50 */	addi r5, r21, 0xd50
/* 81367994 | 4C C6 31 82 */	crclr cr1eq
/* 81367998 | 48 1C 6D 09 */	bl OSReport
/* 8136799C | 48 00 00 D4 */	b .L_81367A70
.L_813679A0:
/* 813679A0 | 80 01 00 20 */	lwz r0, 0x20(r1)
/* 813679A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813679A8 | 40 82 00 08 */	bne .L_813679B0
/* 813679AC | 48 00 00 E4 */	b .L_81367A90
.L_813679B0:
/* 813679B0 | 81 99 00 00 */	lwz r12, 0x0(r25)
/* 813679B4 | 1C 80 00 E0 */	mulli r4, r0, 0xe0
/* 813679B8 | 7F 23 CB 78 */	mr r3, r25
/* 813679BC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813679C0 | 38 A0 FF E0 */	li r5, -0x20
/* 813679C4 | 7D 89 03 A6 */	mtctr r12
/* 813679C8 | 4E 80 04 21 */	bctrl
/* 813679CC | 7C 71 1B 78 */	mr r17, r3
/* 813679D0 | 7E 04 83 78 */	mr r4, r16
/* 813679D4 | 7D E3 7B 78 */	mr r3, r15
/* 813679D8 | 38 C1 00 20 */	addi r6, r1, 0x20
/* 813679DC | 7E 25 8B 78 */	mr r5, r17
/* 813679E0 | 48 25 6F 29 */	bl fn_815BE908
/* 813679E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813679E8 | 41 82 00 28 */	beq .L_81367A10
/* 813679EC | 7C 66 1B 78 */	mr r6, r3
/* 813679F0 | 7E 08 83 78 */	mr r8, r16
/* 813679F4 | 7D E7 7B 78 */	mr r7, r15
/* 813679F8 | 38 75 0E EB */	addi r3, r21, 0xeeb
/* 813679FC | 38 95 06 3C */	addi r4, r21, 0x63c
/* 81367A00 | 38 B5 0D 50 */	addi r5, r21, 0xd50
/* 81367A04 | 4C C6 31 82 */	crclr cr1eq
/* 81367A08 | 48 1C 6C 99 */	bl OSReport
/* 81367A0C | 48 00 00 64 */	b .L_81367A70
.L_81367A10:
/* 81367A10 | 3A 00 00 00 */	li r16, 0x0
/* 81367A14 | 39 E0 00 00 */	li r15, 0x0
/* 81367A18 | 48 00 00 4C */	b .L_81367A64
.L_81367A1C:
/* 81367A1C | 7F A3 EB 78 */	mr r3, r29
/* 81367A20 | 7C 91 7A 14 */	add r4, r17, r15
/* 81367A24 | 38 A0 00 D8 */	li r5, 0xd8
/* 81367A28 | 4B FC 88 09 */	bl memcpy
/* 81367A2C | 7F A3 EB 78 */	mr r3, r29
/* 81367A30 | 48 25 73 7D */	bl fn_815BEDAC
/* 81367A34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81367A38 | 41 82 00 24 */	beq .L_81367A5C
/* 81367A3C | 80 E1 00 84 */	lwz r7, 0x84(r1)
/* 81367A40 | 7C 66 1B 78 */	mr r6, r3
/* 81367A44 | 81 01 00 88 */	lwz r8, 0x88(r1)
/* 81367A48 | 38 75 0F 1D */	addi r3, r21, 0xf1d
/* 81367A4C | 38 95 06 3C */	addi r4, r21, 0x63c
/* 81367A50 | 38 B5 0D 50 */	addi r5, r21, 0xd50
/* 81367A54 | 4C C6 31 82 */	crclr cr1eq
/* 81367A58 | 48 1C 6C 49 */	bl OSReport
.L_81367A5C:
/* 81367A5C | 3A 10 00 01 */	addi r16, r16, 0x1
/* 81367A60 | 39 EF 00 D8 */	addi r15, r15, 0xd8
.L_81367A64:
/* 81367A64 | 80 01 00 20 */	lwz r0, 0x20(r1)
/* 81367A68 | 7C 10 00 40 */	cmplw r16, r0
/* 81367A6C | 41 80 FF B0 */	blt .L_81367A1C
.L_81367A70:
/* 81367A70 | 2C 11 00 00 */	cmpwi r17, 0x0
/* 81367A74 | 41 82 00 1C */	beq .L_81367A90
/* 81367A78 | 81 99 00 00 */	lwz r12, 0x0(r25)
/* 81367A7C | 7F 23 CB 78 */	mr r3, r25
/* 81367A80 | 7E 24 8B 78 */	mr r4, r17
/* 81367A84 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81367A88 | 7D 89 03 A6 */	mtctr r12
/* 81367A8C | 4E 80 04 21 */	bctrl
.L_81367A90:
/* 81367A90 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 81367A94 | 3B 18 00 08 */	addi r24, r24, 0x8
.L_81367A98:
/* 81367A98 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81367A9C | 7C 1A 00 40 */	cmplw r26, r0
/* 81367AA0 | 41 80 FA 44 */	blt .L_813674E4
.L_81367AA4:
/* 81367AA4 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81367AA8 | 41 82 00 1C */	beq .L_81367AC4
/* 81367AAC | 81 99 00 00 */	lwz r12, 0x0(r25)
/* 81367AB0 | 7F 23 CB 78 */	mr r3, r25
/* 81367AB4 | 7F 84 E3 78 */	mr r4, r28
/* 81367AB8 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81367ABC | 7D 89 03 A6 */	mtctr r12
/* 81367AC0 | 4E 80 04 21 */	bctrl
.L_81367AC4:
/* 81367AC4 | 7F 63 DB 78 */	mr r3, r27
/* 81367AC8 | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 81367ACC | 7D 4B 53 78 */	mr r11, r10
/* 81367AD0 | 48 29 1A 09 */	bl _restgpr_14
/* 81367AD4 | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 81367AD8 | 7C 08 03 A6 */	mtlr r0
/* 81367ADC | 7D 41 53 78 */	mr r1, r10
/* 81367AE0 | 4E 80 00 20 */	blr
.endfn InitSavedata__Q33ipl7utility6ESMiscFUxPQ23EGG4Heap

# .text:0x23E0 | 0x81367AE4 | size: 0x4C
# ipl::utility::TMDFile::TMDFile(EGG::Heap*)
.fn __ct__Q33ipl7utility7TMDFileFPQ23EGG4Heap, global
/* 81367AE4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81367AE8 | 7C 08 02 A6 */	mflr r0
/* 81367AEC | 38 A0 00 8C */	li r5, 0x8c
/* 81367AF0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81367AF4 | 38 00 00 00 */	li r0, 0x0
/* 81367AF8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81367AFC | 7C 7F 1B 78 */	mr r31, r3
/* 81367B00 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 81367B04 | 38 80 00 00 */	li r4, 0x0
/* 81367B08 | 90 03 00 90 */	stw r0, 0x90(r3)
/* 81367B0C | 90 03 00 94 */	stw r0, 0x94(r3)
/* 81367B10 | 38 63 00 04 */	addi r3, r3, 0x4
/* 81367B14 | 4B FC 88 21 */	bl memset
/* 81367B18 | 7F E3 FB 78 */	mr r3, r31
/* 81367B1C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81367B20 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81367B24 | 7C 08 03 A6 */	mtlr r0
/* 81367B28 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81367B2C | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl7utility7TMDFileFPQ23EGG4Heap

# .text:0x242C | 0x81367B30 | size: 0x12C
# ipl::utility::TMDFile::Open(char*)
.fn Open__Q33ipl7utility7TMDFileFPc, global
/* 81367B30 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81367B34 | 7C 08 02 A6 */	mflr r0
/* 81367B38 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81367B3C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81367B40 | 48 29 19 85 */	bl _savegpr_28
/* 81367B44 | 80 03 00 90 */	lwz r0, 0x90(r3)
/* 81367B48 | 3F E0 81 64 */	lis r31, lbl_816412C0@ha
/* 81367B4C | 7C 7C 1B 78 */	mr r28, r3
/* 81367B50 | 7C 9D 23 78 */	mr r29, r4
/* 81367B54 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81367B58 | 3B FF 12 C0 */	addi r31, r31, lbl_816412C0@l
/* 81367B5C | 41 82 00 0C */	beq .L_81367B68
/* 81367B60 | 38 60 00 00 */	li r3, 0x0
/* 81367B64 | 48 00 00 E0 */	b .L_81367C44
.L_81367B68:
/* 81367B68 | 7F A3 EB 78 */	mr r3, r29
/* 81367B6C | 38 9C 00 04 */	addi r4, r28, 0x4
/* 81367B70 | 38 A0 00 03 */	li r5, 0x3
/* 81367B74 | 48 1F D7 85 */	bl NANDPrivateOpen
/* 81367B78 | 2C 03 FF F4 */	cmpwi r3, -0xc
/* 81367B7C | 7C 7E 1B 78 */	mr r30, r3
/* 81367B80 | 40 82 00 58 */	bne .L_81367BD8
/* 81367B84 | 7F A3 EB 78 */	mr r3, r29
/* 81367B88 | 38 80 00 3F */	li r4, 0x3f
/* 81367B8C | 38 A0 00 00 */	li r5, 0x0
/* 81367B90 | 48 1F C1 7D */	bl NANDPrivateCreate
/* 81367B94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81367B98 | 7C 7E 1B 78 */	mr r30, r3
/* 81367B9C | 41 82 00 28 */	beq .L_81367BC4
/* 81367BA0 | 7F A6 EB 78 */	mr r6, r29
/* 81367BA4 | 7F C7 F3 78 */	mr r7, r30
/* 81367BA8 | 38 7F 0F 4D */	addi r3, r31, 0xf4d
/* 81367BAC | 38 9F 06 3C */	addi r4, r31, 0x63c
/* 81367BB0 | 38 AD 82 65 */	li r5, lbl_816962A5@sda21
/* 81367BB4 | 4C C6 31 82 */	crclr cr1eq
/* 81367BB8 | 48 1C 6A E9 */	bl OSReport
/* 81367BBC | 7F C3 F3 78 */	mr r3, r30
/* 81367BC0 | 48 00 00 84 */	b .L_81367C44
.L_81367BC4:
/* 81367BC4 | 7F A3 EB 78 */	mr r3, r29
/* 81367BC8 | 38 9C 00 04 */	addi r4, r28, 0x4
/* 81367BCC | 38 A0 00 03 */	li r5, 0x3
/* 81367BD0 | 48 1F D7 29 */	bl NANDPrivateOpen
/* 81367BD4 | 7C 7E 1B 78 */	mr r30, r3
.L_81367BD8:
/* 81367BD8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81367BDC | 41 82 00 28 */	beq .L_81367C04
/* 81367BE0 | 7F A6 EB 78 */	mr r6, r29
/* 81367BE4 | 7F C7 F3 78 */	mr r7, r30
/* 81367BE8 | 38 7F 0F 6C */	addi r3, r31, 0xf6c
/* 81367BEC | 38 9F 06 3C */	addi r4, r31, 0x63c
/* 81367BF0 | 38 AD 82 65 */	li r5, lbl_816962A5@sda21
/* 81367BF4 | 4C C6 31 82 */	crclr cr1eq
/* 81367BF8 | 48 1C 6A A9 */	bl OSReport
/* 81367BFC | 7F C3 F3 78 */	mr r3, r30
/* 81367C00 | 48 00 00 44 */	b .L_81367C44
.L_81367C04:
/* 81367C04 | 38 00 00 01 */	li r0, 0x1
/* 81367C08 | 38 7C 00 04 */	addi r3, r28, 0x4
/* 81367C0C | 90 1C 00 90 */	stw r0, 0x90(r28)
/* 81367C10 | 38 9C 00 94 */	addi r4, r28, 0x94
/* 81367C14 | 48 1F CD 1D */	bl NANDGetLength
/* 81367C18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81367C1C | 7C 7E 1B 78 */	mr r30, r3
/* 81367C20 | 41 82 00 24 */	beq .L_81367C44
/* 81367C24 | 7F A6 EB 78 */	mr r6, r29
/* 81367C28 | 7F C7 F3 78 */	mr r7, r30
/* 81367C2C | 38 7F 0F 89 */	addi r3, r31, 0xf89
/* 81367C30 | 38 9F 06 3C */	addi r4, r31, 0x63c
/* 81367C34 | 38 AD 82 65 */	li r5, lbl_816962A5@sda21
/* 81367C38 | 4C C6 31 82 */	crclr cr1eq
/* 81367C3C | 48 1C 6A 65 */	bl OSReport
/* 81367C40 | 7F C3 F3 78 */	mr r3, r30
.L_81367C44:
/* 81367C44 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81367C48 | 48 29 18 C9 */	bl _restgpr_28
/* 81367C4C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81367C50 | 7C 08 03 A6 */	mtlr r0
/* 81367C54 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81367C58 | 4E 80 00 20 */	blr
.endfn Open__Q33ipl7utility7TMDFileFPc

# .text:0x2558 | 0x81367C5C | size: 0x50
# ipl::utility::TMDFile::Close()
.fn Close__Q33ipl7utility7TMDFileFv, global
/* 81367C5C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81367C60 | 7C 08 02 A6 */	mflr r0
/* 81367C64 | 38 80 00 00 */	li r4, 0x0
/* 81367C68 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81367C6C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81367C70 | 7C 7F 1B 78 */	mr r31, r3
/* 81367C74 | 80 03 00 90 */	lwz r0, 0x90(r3)
/* 81367C78 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81367C7C | 41 82 00 18 */	beq .L_81367C94
/* 81367C80 | 38 63 00 04 */	addi r3, r3, 0x4
/* 81367C84 | 48 1F D8 69 */	bl NANDClose
/* 81367C88 | 38 00 00 00 */	li r0, 0x0
/* 81367C8C | 7C 64 1B 78 */	mr r4, r3
/* 81367C90 | 90 1F 00 90 */	stw r0, 0x90(r31)
.L_81367C94:
/* 81367C94 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81367C98 | 7C 83 23 78 */	mr r3, r4
/* 81367C9C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81367CA0 | 7C 08 03 A6 */	mtlr r0
/* 81367CA4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81367CA8 | 4E 80 00 20 */	blr
.endfn Close__Q33ipl7utility7TMDFileFv

# .text:0x25A8 | 0x81367CAC | size: 0x14C
# ipl::utility::TMDFile::Exist(unsigned long long, unsigned long*, unsigned long*)
.fn Exist__Q33ipl7utility7TMDFileFUxPUlPUl, global
/* 81367CAC | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 81367CB0 | 7C 2C 0B 78 */	mr r12, r1
/* 81367CB4 | 21 6B FF A0 */	subfic r11, r11, -0x60
/* 81367CB8 | 7C 21 59 6E */	stwux r1, r1, r11
/* 81367CBC | 7C 08 02 A6 */	mflr r0
/* 81367CC0 | 7D 8B 63 78 */	mr r11, r12
/* 81367CC4 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 81367CC8 | 48 29 17 F1 */	bl _savegpr_25
/* 81367CCC | 80 03 00 90 */	lwz r0, 0x90(r3)
/* 81367CD0 | 3F E0 81 64 */	lis r31, lbl_816412C0@ha
/* 81367CD4 | 7C 79 1B 78 */	mr r25, r3
/* 81367CD8 | 7C BB 2B 78 */	mr r27, r5
/* 81367CDC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81367CE0 | 7C DA 33 78 */	mr r26, r6
/* 81367CE4 | 7C FC 3B 78 */	mr r28, r7
/* 81367CE8 | 7D 1D 43 78 */	mr r29, r8
/* 81367CEC | 3B FF 12 C0 */	addi r31, r31, lbl_816412C0@l
/* 81367CF0 | 3B C0 00 00 */	li r30, 0x0
/* 81367CF4 | 40 82 00 D8 */	bne .L_81367DCC
/* 81367CF8 | 38 60 00 00 */	li r3, 0x0
/* 81367CFC | 48 00 00 E0 */	b .L_81367DDC
/* 81367D00 | 48 00 00 CC */	b .L_81367DCC
.L_81367D04:
/* 81367D04 | 7F C4 F3 78 */	mr r4, r30
/* 81367D08 | 38 79 00 04 */	addi r3, r25, 0x4
/* 81367D0C | 38 A0 00 00 */	li r5, 0x0
/* 81367D10 | 48 1F C4 B1 */	bl NANDSeek
/* 81367D14 | 7C 03 F0 40 */	cmplw r3, r30
/* 81367D18 | 41 82 00 28 */	beq .L_81367D40
/* 81367D1C | 7C 66 1B 78 */	mr r6, r3
/* 81367D20 | 7F C7 F3 78 */	mr r7, r30
/* 81367D24 | 38 7F 0F AB */	addi r3, r31, 0xfab
/* 81367D28 | 38 9F 06 3C */	addi r4, r31, 0x63c
/* 81367D2C | 38 AD 82 6A */	li r5, lbl_816962AA@sda21
/* 81367D30 | 4C C6 31 82 */	crclr cr1eq
/* 81367D34 | 48 1C 69 6D */	bl OSReport
/* 81367D38 | 38 60 00 00 */	li r3, 0x0
/* 81367D3C | 48 00 00 A0 */	b .L_81367DDC
.L_81367D40:
/* 81367D40 | 38 79 00 04 */	addi r3, r25, 0x4
/* 81367D44 | 38 81 00 20 */	addi r4, r1, 0x20
/* 81367D48 | 38 A0 00 20 */	li r5, 0x20
/* 81367D4C | 48 1F C2 B5 */	bl NANDRead
/* 81367D50 | 28 03 00 20 */	cmplwi r3, 0x20
/* 81367D54 | 41 82 00 28 */	beq .L_81367D7C
/* 81367D58 | 7C 66 1B 78 */	mr r6, r3
/* 81367D5C | 38 7F 0F C9 */	addi r3, r31, 0xfc9
/* 81367D60 | 38 9F 06 3C */	addi r4, r31, 0x63c
/* 81367D64 | 38 AD 82 6A */	li r5, lbl_816962AA@sda21
/* 81367D68 | 38 E0 00 20 */	li r7, 0x20
/* 81367D6C | 4C C6 31 82 */	crclr cr1eq
/* 81367D70 | 48 1C 69 31 */	bl OSReport
/* 81367D74 | 38 60 00 00 */	li r3, 0x0
/* 81367D78 | 48 00 00 64 */	b .L_81367DDC
.L_81367D7C:
/* 81367D7C | 80 01 00 20 */	lwz r0, 0x20(r1)
/* 81367D80 | 3B DE 00 20 */	addi r30, r30, 0x20
/* 81367D84 | 80 61 00 24 */	lwz r3, 0x24(r1)
/* 81367D88 | 7C 00 DA 78 */	xor r0, r0, r27
/* 81367D8C | 7C 63 D2 78 */	xor r3, r3, r26
/* 81367D90 | 7C 60 03 79 */	or. r0, r3, r0
/* 81367D94 | 40 82 00 28 */	bne .L_81367DBC
/* 81367D98 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81367D9C | 41 82 00 08 */	beq .L_81367DA4
/* 81367DA0 | 93 DC 00 00 */	stw r30, 0x0(r28)
.L_81367DA4:
/* 81367DA4 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81367DA8 | 41 82 00 0C */	beq .L_81367DB4
/* 81367DAC | 80 01 00 28 */	lwz r0, 0x28(r1)
/* 81367DB0 | 90 1D 00 00 */	stw r0, 0x0(r29)
.L_81367DB4:
/* 81367DB4 | 38 60 00 01 */	li r3, 0x1
/* 81367DB8 | 48 00 00 24 */	b .L_81367DDC
.L_81367DBC:
/* 81367DBC | 80 01 00 28 */	lwz r0, 0x28(r1)
/* 81367DC0 | 7F DE 02 14 */	add r30, r30, r0
/* 81367DC4 | 38 1E 00 1F */	addi r0, r30, 0x1f
/* 81367DC8 | 54 1E 00 34 */	clrrwi r30, r0, 5
.L_81367DCC:
/* 81367DCC | 80 19 00 94 */	lwz r0, 0x94(r25)
/* 81367DD0 | 7C 1E 00 40 */	cmplw r30, r0
/* 81367DD4 | 41 80 FF 30 */	blt .L_81367D04
/* 81367DD8 | 38 60 00 00 */	li r3, 0x0
.L_81367DDC:
/* 81367DDC | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 81367DE0 | 7D 4B 53 78 */	mr r11, r10
/* 81367DE4 | 48 29 17 21 */	bl _restgpr_25
/* 81367DE8 | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 81367DEC | 7C 08 03 A6 */	mtlr r0
/* 81367DF0 | 7D 41 53 78 */	mr r1, r10
/* 81367DF4 | 4E 80 00 20 */	blr
.endfn Exist__Q33ipl7utility7TMDFileFUxPUlPUl

# .text:0x26F4 | 0x81367DF8 | size: 0x2B4
# ipl::utility::TMDFile::Backup(unsigned long long)
.fn Backup__Q33ipl7utility7TMDFileFUx, global
/* 81367DF8 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81367DFC | 7C 08 02 A6 */	mflr r0
/* 81367E00 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81367E04 | 39 61 00 50 */	addi r11, r1, 0x50
/* 81367E08 | 48 29 16 B1 */	bl _savegpr_25
/* 81367E0C | 80 03 00 90 */	lwz r0, 0x90(r3)
/* 81367E10 | 3F C0 81 64 */	lis r30, lbl_816412C0@ha
/* 81367E14 | 7C 7F 1B 78 */	mr r31, r3
/* 81367E18 | 7C BA 2B 78 */	mr r26, r5
/* 81367E1C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81367E20 | 7C D9 33 78 */	mr r25, r6
/* 81367E24 | 3B DE 12 C0 */	addi r30, r30, lbl_816412C0@l
/* 81367E28 | 3B A0 00 00 */	li r29, 0x0
/* 81367E2C | 3B 60 00 00 */	li r27, 0x0
/* 81367E30 | 40 82 00 0C */	bne .L_81367E3C
/* 81367E34 | 38 60 FF FF */	li r3, -0x1
/* 81367E38 | 48 00 02 5C */	b .L_81368094
.L_81367E3C:
/* 81367E3C | 38 E0 00 00 */	li r7, 0x0
/* 81367E40 | 39 00 00 00 */	li r8, 0x0
/* 81367E44 | 4B FF FE 69 */	bl Exist__Q33ipl7utility7TMDFileFUxPUlPUl
/* 81367E48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81367E4C | 40 82 02 24 */	bne .L_81368070
/* 81367E50 | 38 7F 00 04 */	addi r3, r31, 0x4
/* 81367E54 | 38 80 00 00 */	li r4, 0x0
/* 81367E58 | 38 A0 00 02 */	li r5, 0x2
/* 81367E5C | 48 1F C3 65 */	bl NANDSeek
/* 81367E60 | 80 FF 00 94 */	lwz r7, 0x94(r31)
/* 81367E64 | 7C 7D 1B 78 */	mr r29, r3
/* 81367E68 | 7C 03 38 40 */	cmplw r3, r7
/* 81367E6C | 41 82 00 20 */	beq .L_81367E8C
/* 81367E70 | 7F A6 EB 78 */	mr r6, r29
/* 81367E74 | 38 7E 0F AB */	addi r3, r30, 0xfab
/* 81367E78 | 38 9E 06 3C */	addi r4, r30, 0x63c
/* 81367E7C | 38 AD 82 70 */	li r5, lbl_816962B0@sda21
/* 81367E80 | 4C C6 31 82 */	crclr cr1eq
/* 81367E84 | 48 1C 68 1D */	bl OSReport
/* 81367E88 | 48 00 01 E8 */	b .L_81368070
.L_81367E8C:
/* 81367E8C | 38 7F 00 04 */	addi r3, r31, 0x4
/* 81367E90 | 38 81 00 24 */	addi r4, r1, 0x24
/* 81367E94 | 48 1F CB 25 */	bl NANDTell
/* 81367E98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81367E9C | 7C 7D 1B 78 */	mr r29, r3
/* 81367EA0 | 41 82 00 20 */	beq .L_81367EC0
/* 81367EA4 | 7F A6 EB 78 */	mr r6, r29
/* 81367EA8 | 38 7E 0F E7 */	addi r3, r30, 0xfe7
/* 81367EAC | 38 9E 06 3C */	addi r4, r30, 0x63c
/* 81367EB0 | 38 AD 82 70 */	li r5, lbl_816962B0@sda21
/* 81367EB4 | 4C C6 31 82 */	crclr cr1eq
/* 81367EB8 | 48 1C 67 E9 */	bl OSReport
/* 81367EBC | 48 00 01 B4 */	b .L_81368070
.L_81367EC0:
/* 81367EC0 | 80 FF 00 94 */	lwz r7, 0x94(r31)
/* 81367EC4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81367EC8 | 7C 00 38 40 */	cmplw r0, r7
/* 81367ECC | 40 82 00 0C */	bne .L_81367ED8
/* 81367ED0 | 54 00 06 FF */	clrlwi. r0, r0, 27
/* 81367ED4 | 41 82 00 28 */	beq .L_81367EFC
.L_81367ED8:
/* 81367ED8 | 80 C1 00 24 */	lwz r6, 0x24(r1)
/* 81367EDC | 38 7E 10 01 */	addi r3, r30, 0x1001
/* 81367EE0 | 38 9E 06 3C */	addi r4, r30, 0x63c
/* 81367EE4 | 38 AD 82 70 */	li r5, lbl_816962B0@sda21
/* 81367EE8 | 7C C8 33 78 */	mr r8, r6
/* 81367EEC | 4C C6 31 82 */	crclr cr1eq
/* 81367EF0 | 48 1C 67 B1 */	bl OSReport
/* 81367EF4 | 3B A0 FF FF */	li r29, -0x1
/* 81367EF8 | 48 00 01 78 */	b .L_81368070
.L_81367EFC:
/* 81367EFC | 7F 24 CB 78 */	mr r4, r25
/* 81367F00 | 7F 43 D3 78 */	mr r3, r26
/* 81367F04 | 38 C1 00 20 */	addi r6, r1, 0x20
/* 81367F08 | 38 A0 00 00 */	li r5, 0x0
/* 81367F0C | 48 25 6B 15 */	bl fn_815BEA20
/* 81367F10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81367F14 | 7C 7D 1B 78 */	mr r29, r3
/* 81367F18 | 41 82 00 20 */	beq .L_81367F38
/* 81367F1C | 7F A6 EB 78 */	mr r6, r29
/* 81367F20 | 38 7E 10 31 */	addi r3, r30, 0x1031
/* 81367F24 | 38 9E 06 3C */	addi r4, r30, 0x63c
/* 81367F28 | 38 AD 82 70 */	li r5, lbl_816962B0@sda21
/* 81367F2C | 4C C6 31 82 */	crclr cr1eq
/* 81367F30 | 48 1C 67 71 */	bl OSReport
/* 81367F34 | 48 00 01 3C */	b .L_81368070
.L_81367F38:
/* 81367F38 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 81367F3C | 38 A0 FF E0 */	li r5, -0x20
/* 81367F40 | 80 81 00 20 */	lwz r4, 0x20(r1)
/* 81367F44 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81367F48 | 38 04 00 1F */	addi r0, r4, 0x1f
/* 81367F4C | 54 04 00 34 */	clrrwi r4, r0, 5
/* 81367F50 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81367F54 | 3B 84 00 20 */	addi r28, r4, 0x20
/* 81367F58 | 7F 84 E3 78 */	mr r4, r28
/* 81367F5C | 7D 89 03 A6 */	mtctr r12
/* 81367F60 | 4E 80 04 21 */	bctrl
/* 81367F64 | 7C 7B 1B 78 */	mr r27, r3
/* 81367F68 | 7F 85 E3 78 */	mr r5, r28
/* 81367F6C | 38 80 00 00 */	li r4, 0x0
/* 81367F70 | 4B FC 83 C5 */	bl memset
/* 81367F74 | 93 3B 00 04 */	stw r25, 0x4(r27)
/* 81367F78 | 39 60 00 00 */	li r11, 0x0
/* 81367F7C | 38 C0 00 02 */	li r6, 0x2
/* 81367F80 | 38 1B 00 20 */	addi r0, r27, 0x20
/* 81367F84 | 93 5B 00 00 */	stw r26, 0x0(r27)
/* 81367F88 | 7F 24 CB 78 */	mr r4, r25
/* 81367F8C | 7F 43 D3 78 */	mr r3, r26
/* 81367F90 | 38 A0 00 00 */	li r5, 0x0
/* 81367F94 | 81 41 00 20 */	lwz r10, 0x20(r1)
/* 81367F98 | 39 00 00 00 */	li r8, 0x0
/* 81367F9C | 38 E0 00 00 */	li r7, 0x0
/* 81367FA0 | 39 20 00 00 */	li r9, 0x0
/* 81367FA4 | 91 5B 00 08 */	stw r10, 0x8(r27)
/* 81367FA8 | 39 40 00 00 */	li r10, 0x0
/* 81367FAC | 91 61 00 08 */	stw r11, 0x8(r1)
/* 81367FB0 | 91 61 00 0C */	stw r11, 0xc(r1)
/* 81367FB4 | 90 C1 00 10 */	stw r6, 0x10(r1)
/* 81367FB8 | 91 61 00 14 */	stw r11, 0x14(r1)
/* 81367FBC | 90 01 00 18 */	stw r0, 0x18(r1)
/* 81367FC0 | 80 01 00 20 */	lwz r0, 0x20(r1)
/* 81367FC4 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 81367FC8 | 48 25 71 19 */	bl fn_815BF0E0
/* 81367FCC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81367FD0 | 7C 7D 1B 78 */	mr r29, r3
/* 81367FD4 | 41 82 00 24 */	beq .L_81367FF8
/* 81367FD8 | 7F A6 EB 78 */	mr r6, r29
/* 81367FDC | 38 7E 10 4C */	addi r3, r30, 0x104c
/* 81367FE0 | 38 9E 06 3C */	addi r4, r30, 0x63c
/* 81367FE4 | 38 AD 82 70 */	li r5, lbl_816962B0@sda21
/* 81367FE8 | 4C C6 31 82 */	crclr cr1eq
/* 81367FEC | 48 1C 66 B5 */	bl OSReport
/* 81367FF0 | 48 25 73 6D */	bl fn_815BF35C
/* 81367FF4 | 48 00 00 7C */	b .L_81368070
.L_81367FF8:
/* 81367FF8 | 48 25 73 65 */	bl fn_815BF35C
/* 81367FFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81368000 | 7C 7D 1B 78 */	mr r29, r3
/* 81368004 | 41 82 00 20 */	beq .L_81368024
/* 81368008 | 7F A6 EB 78 */	mr r6, r29
/* 8136800C | 38 7E 10 70 */	addi r3, r30, 0x1070
/* 81368010 | 38 9E 06 3C */	addi r4, r30, 0x63c
/* 81368014 | 38 AD 82 70 */	li r5, lbl_816962B0@sda21
/* 81368018 | 4C C6 31 82 */	crclr cr1eq
/* 8136801C | 48 1C 66 85 */	bl OSReport
/* 81368020 | 48 00 00 50 */	b .L_81368070
.L_81368024:
/* 81368024 | 7F 64 DB 78 */	mr r4, r27
/* 81368028 | 7F 85 E3 78 */	mr r5, r28
/* 8136802C | 38 7F 00 04 */	addi r3, r31, 0x4
/* 81368030 | 48 1F C0 B1 */	bl NANDWrite
/* 81368034 | 7C 03 E0 40 */	cmplw r3, r28
/* 81368038 | 7C 7D 1B 78 */	mr r29, r3
/* 8136803C | 41 82 00 24 */	beq .L_81368060
/* 81368040 | 7F A6 EB 78 */	mr r6, r29
/* 81368044 | 7F 87 E3 78 */	mr r7, r28
/* 81368048 | 38 7E 10 94 */	addi r3, r30, 0x1094
/* 8136804C | 38 9E 06 3C */	addi r4, r30, 0x63c
/* 81368050 | 38 AD 82 70 */	li r5, lbl_816962B0@sda21
/* 81368054 | 4C C6 31 82 */	crclr cr1eq
/* 81368058 | 48 1C 66 49 */	bl OSReport
/* 8136805C | 48 00 00 14 */	b .L_81368070
.L_81368060:
/* 81368060 | 80 1F 00 94 */	lwz r0, 0x94(r31)
/* 81368064 | 3B A0 00 00 */	li r29, 0x0
/* 81368068 | 7C 00 E2 14 */	add r0, r0, r28
/* 8136806C | 90 1F 00 94 */	stw r0, 0x94(r31)
.L_81368070:
/* 81368070 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 81368074 | 41 82 00 1C */	beq .L_81368090
/* 81368078 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8136807C | 7F 64 DB 78 */	mr r4, r27
/* 81368080 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81368084 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81368088 | 7D 89 03 A6 */	mtctr r12
/* 8136808C | 4E 80 04 21 */	bctrl
.L_81368090:
/* 81368090 | 7F A3 EB 78 */	mr r3, r29
.L_81368094:
/* 81368094 | 39 61 00 50 */	addi r11, r1, 0x50
/* 81368098 | 48 29 14 6D */	bl _restgpr_25
/* 8136809C | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 813680A0 | 7C 08 03 A6 */	mtlr r0
/* 813680A4 | 38 21 00 50 */	addi r1, r1, 0x50
/* 813680A8 | 4E 80 00 20 */	blr
.endfn Backup__Q33ipl7utility7TMDFileFUx

# .text:0x29A8 | 0x813680AC | size: 0x218
# ipl::utility::TMDFile::Restore(unsigned long long)
.fn Restore__Q33ipl7utility7TMDFileFUx, global
/* 813680AC | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813680B0 | 7C 08 02 A6 */	mflr r0
/* 813680B4 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813680B8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813680BC | 48 29 13 FD */	bl _savegpr_25
/* 813680C0 | 3B E0 00 00 */	li r31, 0x0
/* 813680C4 | 3F C0 81 64 */	lis r30, lbl_816412C0@ha
/* 813680C8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813680CC | 7C 79 1B 78 */	mr r25, r3
/* 813680D0 | 7C BB 2B 78 */	mr r27, r5
/* 813680D4 | 7C DA 33 78 */	mr r26, r6
/* 813680D8 | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 813680DC | 3B DE 12 C0 */	addi r30, r30, lbl_816412C0@l
/* 813680E0 | 3B 80 00 00 */	li r28, 0x0
/* 813680E4 | 80 03 00 90 */	lwz r0, 0x90(r3)
/* 813680E8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813680EC | 40 82 00 0C */	bne .L_813680F8
/* 813680F0 | 38 60 FF FF */	li r3, -0x1
/* 813680F4 | 48 00 01 B8 */	b .L_813682AC
.L_813680F8:
/* 813680F8 | 7F 44 D3 78 */	mr r4, r26
/* 813680FC | 7F 63 DB 78 */	mr r3, r27
/* 81368100 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 81368104 | 38 A0 00 00 */	li r5, 0x0
/* 81368108 | 48 25 6A 2D */	bl fn_815BEB34
/* 8136810C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81368110 | 7C 7D 1B 78 */	mr r29, r3
/* 81368114 | 41 82 01 74 */	beq .L_81368288
/* 81368118 | 2C 03 FF 96 */	cmpwi r3, -0x6a
/* 8136811C | 41 82 00 20 */	beq .L_8136813C
/* 81368120 | 7F A6 EB 78 */	mr r6, r29
/* 81368124 | 38 7E 10 B3 */	addi r3, r30, 0x10b3
/* 81368128 | 38 9E 06 3C */	addi r4, r30, 0x63c
/* 8136812C | 38 AD 82 77 */	li r5, lbl_816962B7@sda21
/* 81368130 | 4C C6 31 82 */	crclr cr1eq
/* 81368134 | 48 1C 65 6D */	bl OSReport
/* 81368138 | 48 00 01 50 */	b .L_81368288
.L_8136813C:
/* 8136813C | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 81368140 | 7F 23 CB 78 */	mr r3, r25
/* 81368144 | 7F 46 D3 78 */	mr r6, r26
/* 81368148 | 7F 65 DB 78 */	mr r5, r27
/* 8136814C | 38 E1 00 0C */	addi r7, r1, 0xc
/* 81368150 | 39 01 00 08 */	addi r8, r1, 0x8
/* 81368154 | 4B FF FB 59 */	bl Exist__Q33ipl7utility7TMDFileFUxPUlPUl
/* 81368158 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136815C | 40 82 00 0C */	bne .L_81368168
/* 81368160 | 3B A0 FB FF */	li r29, -0x401
/* 81368164 | 48 00 01 24 */	b .L_81368288
.L_81368168:
/* 81368168 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 8136816C | 38 79 00 04 */	addi r3, r25, 0x4
/* 81368170 | 38 A0 00 00 */	li r5, 0x0
/* 81368174 | 48 1F C0 4D */	bl NANDSeek
/* 81368178 | 80 E1 00 0C */	lwz r7, 0xc(r1)
/* 8136817C | 7C 7D 1B 78 */	mr r29, r3
/* 81368180 | 7C 03 38 40 */	cmplw r3, r7
/* 81368184 | 41 82 00 20 */	beq .L_813681A4
/* 81368188 | 7F A6 EB 78 */	mr r6, r29
/* 8136818C | 38 7E 0F AB */	addi r3, r30, 0xfab
/* 81368190 | 38 9E 06 3C */	addi r4, r30, 0x63c
/* 81368194 | 38 AD 82 77 */	li r5, lbl_816962B7@sda21
/* 81368198 | 4C C6 31 82 */	crclr cr1eq
/* 8136819C | 48 1C 65 05 */	bl OSReport
/* 813681A0 | 48 00 00 E8 */	b .L_81368288
.L_813681A4:
/* 813681A4 | 80 79 00 00 */	lwz r3, 0x0(r25)
/* 813681A8 | 38 A0 FF E0 */	li r5, -0x20
/* 813681AC | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 813681B0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813681B4 | 38 04 00 1F */	addi r0, r4, 0x1f
/* 813681B8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813681BC | 54 1F 00 34 */	clrrwi r31, r0, 5
/* 813681C0 | 7F E4 FB 78 */	mr r4, r31
/* 813681C4 | 7D 89 03 A6 */	mtctr r12
/* 813681C8 | 4E 80 04 21 */	bctrl
/* 813681CC | 7C 7C 1B 78 */	mr r28, r3
/* 813681D0 | 7F E5 FB 78 */	mr r5, r31
/* 813681D4 | 38 80 00 00 */	li r4, 0x0
/* 813681D8 | 4B FC 81 5D */	bl memset
/* 813681DC | 7F 84 E3 78 */	mr r4, r28
/* 813681E0 | 7F E5 FB 78 */	mr r5, r31
/* 813681E4 | 38 79 00 04 */	addi r3, r25, 0x4
/* 813681E8 | 48 1F BE 19 */	bl NANDRead
/* 813681EC | 7C 03 F8 40 */	cmplw r3, r31
/* 813681F0 | 7C 7D 1B 78 */	mr r29, r3
/* 813681F4 | 41 82 00 24 */	beq .L_81368218
/* 813681F8 | 7F A6 EB 78 */	mr r6, r29
/* 813681FC | 7F E7 FB 78 */	mr r7, r31
/* 81368200 | 38 7E 0F C9 */	addi r3, r30, 0xfc9
/* 81368204 | 38 9E 06 3C */	addi r4, r30, 0x63c
/* 81368208 | 38 AD 82 77 */	li r5, lbl_816962B7@sda21
/* 8136820C | 4C C6 31 82 */	crclr cr1eq
/* 81368210 | 48 1C 64 91 */	bl OSReport
/* 81368214 | 48 00 00 74 */	b .L_81368288
.L_81368218:
/* 81368218 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 8136821C | 7F 83 E3 78 */	mr r3, r28
/* 81368220 | 38 A0 00 00 */	li r5, 0x0
/* 81368224 | 38 C0 00 00 */	li r6, 0x0
/* 81368228 | 38 E0 00 00 */	li r7, 0x0
/* 8136822C | 39 00 00 00 */	li r8, 0x0
/* 81368230 | 39 20 00 02 */	li r9, 0x2
/* 81368234 | 39 40 00 01 */	li r10, 0x1
/* 81368238 | 48 25 5A CD */	bl ES_ImportTitleInit
/* 8136823C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81368240 | 41 82 00 20 */	beq .L_81368260
/* 81368244 | 7C 66 1B 78 */	mr r6, r3
/* 81368248 | 38 7E 10 D2 */	addi r3, r30, 0x10d2
/* 8136824C | 38 9E 06 3C */	addi r4, r30, 0x63c
/* 81368250 | 38 AD 82 77 */	li r5, lbl_816962B7@sda21
/* 81368254 | 4C C6 31 82 */	crclr cr1eq
/* 81368258 | 48 1C 64 49 */	bl OSReport
/* 8136825C | 48 25 5E 09 */	bl ES_ImportTitleCancel
.L_81368260:
/* 81368260 | 48 25 5D B1 */	bl ES_ImportTitleDone
/* 81368264 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81368268 | 7C 7D 1B 78 */	mr r29, r3
/* 8136826C | 41 82 00 1C */	beq .L_81368288
/* 81368270 | 7F A6 EB 78 */	mr r6, r29
/* 81368274 | 38 7E 10 F6 */	addi r3, r30, 0x10f6
/* 81368278 | 38 9E 06 3C */	addi r4, r30, 0x63c
/* 8136827C | 38 AD 82 77 */	li r5, lbl_816962B7@sda21
/* 81368280 | 4C C6 31 82 */	crclr cr1eq
/* 81368284 | 48 1C 64 1D */	bl OSReport
.L_81368288:
/* 81368288 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 8136828C | 41 82 00 1C */	beq .L_813682A8
/* 81368290 | 80 79 00 00 */	lwz r3, 0x0(r25)
/* 81368294 | 7F 84 E3 78 */	mr r4, r28
/* 81368298 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136829C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813682A0 | 7D 89 03 A6 */	mtctr r12
/* 813682A4 | 4E 80 04 21 */	bctrl
.L_813682A8:
/* 813682A8 | 7F A3 EB 78 */	mr r3, r29
.L_813682AC:
/* 813682AC | 39 61 00 30 */	addi r11, r1, 0x30
/* 813682B0 | 48 29 12 55 */	bl _restgpr_25
/* 813682B4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813682B8 | 7C 08 03 A6 */	mtlr r0
/* 813682BC | 38 21 00 30 */	addi r1, r1, 0x30
/* 813682C0 | 4E 80 00 20 */	blr
.endfn Restore__Q33ipl7utility7TMDFileFUx

# 0x816412C0..0x816423E0 | size: 0x1120
.data
.balign 8

# .data:0x0 | 0x816412C0 | size: 0x2B
.obj lbl_816412C0, global
	.string "ESMisc::GetTmdView: ES_GetTmdView1 err %d\n"
.endobj lbl_816412C0

# .data:0x2B | 0x816412EB | size: 0x2B
.obj lbl_816412EB, global
	.string "ESMisc::GetTmdView: ES_GetTmdView2 err %d\n"
.endobj lbl_816412EB

# .data:0x56 | 0x81641316 | size: 0x36
.obj lbl_81641316, global
	.string "ESMisc::GetTicketViewList: ES_GetTicketViews1 err %d\n"
.endobj lbl_81641316

# .data:0x8C | 0x8164134C | size: 0x36
.obj lbl_8164134C, global
	.string "ESMisc::GetTicketViewList: ES_GetTicketViews2 err %d\n"
.endobj lbl_8164134C

# .data:0xC2 | 0x81641382 | size: 0x29
.obj lbl_81641382, global
	.string "ESMisc::GetTicketView: Invalid index %d\n"
.endobj lbl_81641382

# .data:0xEB | 0x816413AB | size: 0x19
.obj lbl_816413AB, global
	.string "/title/%08x/%08x/content"
.endobj lbl_816413AB

# .data:0x104 | 0x816413C4 | size: 0x26
.obj lbl_816413C4, global
	.string "ESMisc::PrivateContentsExist: err %d\n"
.endobj lbl_816413C4

# .data:0x12A | 0x816413EA | size: 0x3A
.obj lbl_816413EA, global
	.string "ESMisc::ContentExist: ES_ListTitleContentsOnCard1 err %d\n"
.endobj lbl_816413EA

# .data:0x164 | 0x81641424 | size: 0x491
.obj lbl_81641424, global
	.4byte 0x45534D69
	.4byte 0x73633A3A
	.4byte 0x436F6E74
	.4byte 0x656E7445
	.4byte 0x78697374
	.4byte 0x3A204553
	.4byte 0x5F4C6973
	.4byte 0x74546974
	.4byte 0x6C65436F
	.4byte 0x6E74656E
	.4byte 0x74734F6E
	.4byte 0x43617264
	.4byte 0x32206572
	.4byte 0x72202564
	.4byte 0x0A004553
	.4byte 0x4D697363
	.4byte 0x3A3A6368
	.4byte 0x65636B43
	.4byte 0x6F6E7465
	.4byte 0x6E74734E
	.4byte 0x756D3A20
	.4byte 0x6E6F2054
	.4byte 0x4D44206F
	.4byte 0x7220636F
	.4byte 0x6E74656E
	.4byte 0x7420666F
	.4byte 0x72203078
	.4byte 0x25303136
	.4byte 0x6C6C782E
	.4byte 0x0A004553
	.4byte 0x4D697363
	.4byte 0x3A3A6368
	.4byte 0x65636B43
	.4byte 0x6F6E7465
	.4byte 0x6E74734E
	.4byte 0x756D3A20
	.4byte 0x45535F4C
	.4byte 0x69737454
	.4byte 0x69746C65
	.4byte 0x436F6E74
	.4byte 0x656E7473
	.4byte 0x4F6E4361
	.4byte 0x72642065
	.4byte 0x72722025
	.4byte 0x640A0045
	.4byte 0x534D6973
	.4byte 0x633A3A63
	.4byte 0x6865636B
	.4byte 0x436F6E74
	.4byte 0x656E7473
	.4byte 0x4E756D3A
	.4byte 0x206E6F20
	.4byte 0x636F6E74
	.4byte 0x656E7420
	.4byte 0x666F7220
	.4byte 0x30782530
	.4byte 0x31366C6C
	.4byte 0x782E0A00
	.4byte 0x45534D69
	.4byte 0x73633A3A
	.4byte 0x63686563
	.4byte 0x6B436F6E
	.4byte 0x74656E74
	.4byte 0x734E756D
	.4byte 0x3A203078
	.4byte 0x25303136
	.4byte 0x6C6C7820
	.4byte 0x69732061
	.4byte 0x6C726561
	.4byte 0x64792064
	.4byte 0x656C6574
	.4byte 0x65642E0A
	.4byte 0x0045534D
	.4byte 0x6973633A
	.4byte 0x3A636865
	.4byte 0x636B436F
	.4byte 0x6E74656E
	.4byte 0x74734E75
	.4byte 0x6D3A206E
	.4byte 0x6F742063
	.4byte 0x6F6D706C
	.4byte 0x6574653A
	.4byte 0x206E6F6E
	.4byte 0x2D6F7074
	.4byte 0x696F6E61
	.4byte 0x6C206369
	.4byte 0x64782025
	.4byte 0x64206D69
	.4byte 0x7373696E
	.4byte 0x6720666F
	.4byte 0x72203078
	.4byte 0x25303136
	.4byte 0x6C6C782E
	.4byte 0x0A004553
	.4byte 0x4D697363
	.4byte 0x3A3A6368
	.4byte 0x65636B43
	.4byte 0x6F6E7465
	.4byte 0x6E74734E
	.4byte 0x756D3A20
	.4byte 0x636F6D70
	.4byte 0x6C657465
	.4byte 0x3A206F6E
	.4byte 0x6C79206D
	.4byte 0x69737369
	.4byte 0x6E67206E
	.4byte 0x6F6E2D6F
	.4byte 0x7074696F
	.4byte 0x6E616C20
	.4byte 0x636F6E74
	.4byte 0x656E7473
	.4byte 0x20666F72
	.4byte 0x20307825
	.4byte 0x3031366C
	.4byte 0x6C782E0A
	.4byte 0x0045534D
	.4byte 0x6973633A
	.4byte 0x3A636865
	.4byte 0x636B436F
	.4byte 0x6E74656E
	.4byte 0x74734E75
	.4byte 0x6D3A2045
	.4byte 0x535F4C69
	.4byte 0x73745469
	.4byte 0x746C6543
	.4byte 0x6F6E7465
	.4byte 0x6E74734F
	.4byte 0x6E436172
	.4byte 0x64206661
	.4byte 0x696C6564
	.4byte 0x2E5B2564
	.4byte 0x5D0A0045
	.4byte 0x534D6973
	.4byte 0x633A3A47
	.4byte 0x65745661
	.4byte 0x6C696454
	.4byte 0x69636B65
	.4byte 0x74496E64
	.4byte 0x65783A20
	.4byte 0x45535F4F
	.4byte 0x70656E54
	.4byte 0x69746C65
	.4byte 0x436F6E74
	.4byte 0x656E7446
	.4byte 0x696C6520
	.4byte 0x66642025
	.4byte 0x640A0045
	.4byte 0x534D6973
	.4byte 0x633A3A47
	.4byte 0x65745661
	.4byte 0x6C696454
	.4byte 0x69636B65
	.4byte 0x74496E64
	.4byte 0x65783A20
	.4byte 0x45535F52
	.4byte 0x65616443
	.4byte 0x6F6E7465
	.4byte 0x6E744669
	.4byte 0x6C652065
	.4byte 0x72722025
	.4byte 0x640A0045
	.4byte 0x534D6973
	.4byte 0x633A3A47
	.4byte 0x65745661
	.4byte 0x6C696454
	.4byte 0x69636B65
	.4byte 0x74496E64
	.4byte 0x65783A20
	.4byte 0x4E6F206E
	.4byte 0x616D650A
	.4byte 0x0044656C
	.4byte 0x65746553
	.4byte 0x68617265
	.4byte 0x64436F6E
	.4byte 0x74656E74
	.4byte 0x3A204D45
	.4byte 0x4D416C6C
	.4byte 0x6F636174
	.4byte 0x6520666F
	.4byte 0x7220544D
	.4byte 0x44206572
	.4byte 0x720A0044
	.4byte 0x656C6574
	.4byte 0x65536861
	.4byte 0x72656443
	.4byte 0x6F6E7465
	.4byte 0x6E743A20
	.4byte 0x45535F4C
	.4byte 0x69737453
	.4byte 0x68617265
	.4byte 0x64436F6E
	.4byte 0x74656E74
	.4byte 0x73312065
	.4byte 0x72722025
	.4byte 0x640A0044
	.4byte 0x656C6574
	.4byte 0x65536861
	.4byte 0x72656443
	.4byte 0x6F6E7465
	.4byte 0x6E743A20
	.4byte 0x4D454D41
	.4byte 0x6C6C6F63
	.4byte 0x61746520
	.4byte 0x666F7220
	.4byte 0x5348412D
	.4byte 0x31206861
	.4byte 0x73682065
	.4byte 0x72720A00
	.4byte 0x44656C65
	.4byte 0x74655368
	.4byte 0x61726564
	.4byte 0x436F6E74
	.4byte 0x656E743A
	.4byte 0x2045535F
	.4byte 0x4C697374
	.4byte 0x53686172
	.4byte 0x6564436F
	.4byte 0x6E74656E
	.4byte 0x74733220
	.4byte 0x65727220
	.4byte 0x25640A00
	.4byte 0x44656C65
	.4byte 0x74655368
	.4byte 0x61726564
	.4byte 0x436F6E74
	.4byte 0x656E743A
	.4byte 0x2045535F
	.4byte 0x4C697374
	.4byte 0x5469746C
	.4byte 0x65734F6E
	.4byte 0x43617264
	.4byte 0x31206572
	.4byte 0x72202564
	.4byte 0x0A004465
	.4byte 0x6C657465
	.4byte 0x53686172
	.4byte 0x6564436F
	.4byte 0x6E74656E
	.4byte 0x743A204D
	.4byte 0x454D416C
	.4byte 0x6C6F6361
	.4byte 0x74652066
	.4byte 0x6F722054
	.4byte 0x69746C65
	.4byte 0x204C6973
	.4byte 0x74206572
	.4byte 0x720A0044
	.4byte 0x656C6574
	.4byte 0x65536861
	.4byte 0x72656443
	.4byte 0x6F6E7465
	.4byte 0x6E743A20
	.4byte 0x45535F4C
	.4byte 0x69737454
	.4byte 0x69746C65
	.4byte 0x734F6E43
	.4byte 0x61726432
	.4byte 0x20657272
	.4byte 0x2025640A
	.4byte 0x0044656C
	.4byte 0x65746553
	.4byte 0x68617265
	.4byte 0x64436F6E
	.4byte 0x74656E74
	.4byte 0x3A204553
	.4byte 0x5F476574
	.4byte 0x546D6431
	.4byte 0x20657272
	.4byte 0x2025640A
	.4byte 0x0044656C
	.4byte 0x65746553
	.4byte 0x68617265
	.4byte 0x64436F6E
	.4byte 0x74656E74
	.4byte 0x3A204553
	.4byte 0x5F476574
	.4byte 0x546D6432
	.4byte 0x20657272
	.4byte 0x2025640A
	.4byte 0x0044656C
	.4byte 0x65746553
	.4byte 0x68617265
	.4byte 0x64436F6E
	.4byte 0x74656E74
	.4byte 0x3A204553
	.4byte 0x5F44656C
	.4byte 0x65746553
	.4byte 0x68617265
	.4byte 0x64436F6E
	.4byte 0x74656E74
	.4byte 0x20657272
	.4byte 0x2025640A
	.byte 0x00
.endobj lbl_81641424

# .data:0x5F5 | 0x816418B5 | size: 0xF0
.obj lbl_816418B5, global
	.4byte 0x2F736861
	.4byte 0x72656432
	.4byte 0x2F657870
	.4byte 0x69726564
	.4byte 0x004E756D
	.4byte 0x50726976
	.4byte 0x61746543
	.4byte 0x6F6E7465
	.4byte 0x6E747300
	.4byte 0x25733A3A
	.4byte 0x25733A20
	.4byte 0x45535F47
	.4byte 0x6574546D
	.4byte 0x64566965
	.4byte 0x77312066
	.4byte 0x61696C65
	.4byte 0x643A2025
	.4byte 0x640A0069
	.4byte 0x706C4553
	.4byte 0x4D697363
	.4byte 0x2E637070
	.4byte 0x0025733A
	.4byte 0x3A25733A
	.4byte 0x2045535F
	.4byte 0x4C697374
	.4byte 0x5469746C
	.4byte 0x65436F6E
	.4byte 0x74656E74
	.4byte 0x734F6E43
	.4byte 0x61726431
	.4byte 0x20666169
	.4byte 0x6C65643A
	.4byte 0x20256420
	.4byte 0x666F7220
	.4byte 0x25303136
	.4byte 0x6C6C780A
	.4byte 0x0025733A
	.4byte 0x3A25733A
	.4byte 0x2045535F
	.4byte 0x4C697374
	.4byte 0x5469746C
	.4byte 0x65436F6E
	.4byte 0x74656E74
	.4byte 0x734F6E43
	.4byte 0x61726432
	.4byte 0x20666169
	.4byte 0x6C65643A
	.4byte 0x20256420
	.4byte 0x666F7220
	.4byte 0x25303136
	.4byte 0x6C6C780A
	.4byte 0x0025733A
	.4byte 0x3A25733A
	.4byte 0x2045535F
	.4byte 0x47657454
	.4byte 0x6D645669
	.4byte 0x65773220
	.4byte 0x6661696C
	.4byte 0x65643A20
	.4byte 0x25640A00
.endobj lbl_816418B5

# .data:0x6E5 | 0x816419A5 | size: 0x268
.obj lbl_816419A5, global
	.4byte 0x45535F53
	.4byte 0x65745569
	.4byte 0x64206661
	.4byte 0x696C6564
	.4byte 0x5B25645D
	.4byte 0x3A203078
	.4byte 0x25303136
	.4byte 0x6C6C780A
	.4byte 0x004E756D
	.4byte 0x496E6F64
	.4byte 0x65735361
	.4byte 0x76654469
	.4byte 0x72526F6F
	.4byte 0x74002F74
	.4byte 0x69746C65
	.4byte 0x2F253038
	.4byte 0x782F2530
	.4byte 0x38782F64
	.4byte 0x61746100
	.4byte 0x25733A3A
	.4byte 0x25733A20
	.4byte 0x4E414E44
	.4byte 0x52656164
	.4byte 0x44697220
	.4byte 0x6661696C
	.4byte 0x65643A20
	.4byte 0x25640A00
	.4byte 0x43686563
	.4byte 0x6B536166
	.4byte 0x6544656C
	.4byte 0x65746554
	.4byte 0x69746C65
	.4byte 0x0025733A
	.4byte 0x3A25733A
	.4byte 0x20253031
	.4byte 0x366C6C78
	.4byte 0x20697320
	.4byte 0x6E6F7420
	.4byte 0x656D7072
	.4byte 0x790A0025
	.4byte 0x733A3A25
	.4byte 0x733A204E
	.4byte 0x756D5072
	.4byte 0x69766174
	.4byte 0x65436F6E
	.4byte 0x74656E74
	.4byte 0x73206661
	.4byte 0x696C6564
	.4byte 0x3A202564
	.4byte 0x0A002573
	.4byte 0x3A3A2573
	.4byte 0x3A204E75
	.4byte 0x6D496E6F
	.4byte 0x64657353
	.4byte 0x61766544
	.4byte 0x6972526F
	.4byte 0x6F742066
	.4byte 0x61696C65
	.4byte 0x643A2025
	.4byte 0x640A0044
	.4byte 0x656C6574
	.4byte 0x65546974
	.4byte 0x6C65002F
	.4byte 0x7469746C
	.4byte 0x652F3030
	.4byte 0x30303030
	.4byte 0x30312F30
	.4byte 0x30303030
	.4byte 0x3030322F
	.4byte 0x64617461
	.4byte 0x2F746D64
	.4byte 0x732E7379
	.4byte 0x73002573
	.4byte 0x3A3A2573
	.4byte 0x3A204F70
	.4byte 0x656E2054
	.4byte 0x4D442042
	.4byte 0x61636B75
	.4byte 0x70206669
	.4byte 0x6C652066
	.4byte 0x61696C65
	.4byte 0x643A2025
	.4byte 0x640A0025
	.4byte 0x733A3A25
	.4byte 0x733A2042
	.4byte 0x61636B75
	.4byte 0x7020544D
	.4byte 0x44206661
	.4byte 0x696C6564
	.4byte 0x3A202564
	.4byte 0x0A002573
	.4byte 0x3A3A2573
	.4byte 0x3A204553
	.4byte 0x5F44656C
	.4byte 0x65746554
	.4byte 0x69746C65
	.4byte 0x20666169
	.4byte 0x6C65643A
	.4byte 0x20256420
	.4byte 0x666F7220
	.4byte 0x25303136
	.4byte 0x6C6C780A
	.4byte 0x0044656C
	.4byte 0x65746545
	.4byte 0x6D707479
	.4byte 0x5469746C
	.4byte 0x65730025
	.4byte 0x733A3A25
	.4byte 0x733A2045
	.4byte 0x535F4C69
	.4byte 0x73745469
	.4byte 0x746C6573
	.4byte 0x4F6E4361
	.4byte 0x72643120
	.4byte 0x6661696C
	.4byte 0x65643A20
	.4byte 0x25640A00
	.4byte 0x25733A3A
	.4byte 0x25733A20
	.4byte 0x45535F4C
	.4byte 0x69737454
	.4byte 0x69746C65
	.4byte 0x734F6E43
	.4byte 0x61726432
	.4byte 0x20666169
	.4byte 0x6C65643A
	.4byte 0x2025640A
	.4byte 0x0025733A
	.4byte 0x3A25733A
	.4byte 0x20436865
	.4byte 0x636B5361
	.4byte 0x66654465
	.4byte 0x6C657465
	.4byte 0x5469746C
	.4byte 0x65206661
	.4byte 0x696C6564
	.4byte 0x3A202564
	.4byte 0x0A002573
	.4byte 0x3A3A2573
	.4byte 0x3A204465
	.4byte 0x6C657465
	.4byte 0x5469746C
	.4byte 0x65206661
	.4byte 0x696C6564
	.4byte 0x3A202564
	.4byte 0x0A002573
	.4byte 0x3A3A2573
	.4byte 0x3A20544D
	.4byte 0x4446696C
	.4byte 0x653A3A4F
	.4byte 0x70656E20
	.4byte 0x6661696C
	.4byte 0x65643A20
	.4byte 0x25640A00
.endobj lbl_816419A5

# .data:0x94D | 0x81641C0D | size: 0x7D3
.obj lbl_81641C0D, global
	.4byte 0x2F6D6574
	.4byte 0x612F2530
	.4byte 0x38782F25
	.4byte 0x3038782F
	.4byte 0x7469746C
	.4byte 0x652E6D65
	.4byte 0x74004465
	.4byte 0x6C657465
	.4byte 0x446F776E
	.4byte 0x6C6F6164
	.4byte 0x5461736B
	.4byte 0x0025733A
	.4byte 0x3A257320
	.4byte 0x77616974
	.4byte 0x696E6720
	.4byte 0x4E574332
	.4byte 0x344F7065
	.4byte 0x6E2E0A00
	.4byte 0x25733A3A
	.4byte 0x2573204E
	.4byte 0x57433234
	.4byte 0x4F70656E
	.4byte 0x20666169
	.4byte 0x6C656420
	.4byte 0x77697468
	.4byte 0x2074696D
	.4byte 0x65206F75
	.4byte 0x742E0A00
	.4byte 0x25733A3A
	.4byte 0x2573204E
	.4byte 0x57433234
	.4byte 0x47657444
	.4byte 0x6C546173
	.4byte 0x6B206661
	.4byte 0x696C6564
	.4byte 0x202D205B
	.4byte 0x25645D20
	.4byte 0x202D3E20
	.4byte 0x636F6E74
	.4byte 0x696E7565
	.4byte 0x0A002573
	.4byte 0x3A3A2573
	.4byte 0x204E5743
	.4byte 0x32344765
	.4byte 0x74446C41
	.4byte 0x70704964
	.4byte 0x20666169
	.4byte 0x6C656420
	.4byte 0x2D205B25
	.4byte 0x645D2020
	.4byte 0x2D3E2063
	.4byte 0x6F6E7469
	.4byte 0x6E75650A
	.4byte 0x0025733A
	.4byte 0x3A257320
	.4byte 0x666F756E
	.4byte 0x6420646C
	.4byte 0x20746173
	.4byte 0x6B206F77
	.4byte 0x6E656420
	.4byte 0x73616D65
	.4byte 0x20746974
	.4byte 0x6C656964
	.4byte 0x205B2570
	.4byte 0x5D0A0025
	.4byte 0x733A3A25
	.4byte 0x73206465
	.4byte 0x6C657465
	.4byte 0x20646F77
	.4byte 0x6E6C6F61
	.4byte 0x64207461
	.4byte 0x736B2066
	.4byte 0x6F722069
	.4byte 0x6E646578
	.4byte 0x203A2025
	.4byte 0x640A0025
	.4byte 0x733A3A25
	.4byte 0x73206967
	.4byte 0x6E6F7265
	.4byte 0x20746974
	.4byte 0x6C652069
	.4byte 0x64202564
	.4byte 0x3A202530
	.4byte 0x3878200A
	.4byte 0x0025733A
	.4byte 0x3A257320
	.4byte 0x4E574332
	.4byte 0x34436C6F
	.4byte 0x73654C69
	.4byte 0x62206661
	.4byte 0x696C6564
	.4byte 0x202D205B
	.4byte 0x25645D20
	.4byte 0x202D3E20
	.4byte 0x636F6E74
	.4byte 0x696E7565
	.4byte 0x0A002573
	.4byte 0x3A3A2573
	.4byte 0x2064656C
	.4byte 0x65746520
	.4byte 0x646F776E
	.4byte 0x6C6F6164
	.4byte 0x20746173
	.4byte 0x6B20666F
	.4byte 0x72202530
	.4byte 0x38780A00
	.4byte 0x44656C65
	.4byte 0x74655469
	.4byte 0x746C6543
	.4byte 0x6F6E7465
	.4byte 0x6E740025
	.4byte 0x733A3A25
	.4byte 0x73206661
	.4byte 0x696C6564
	.4byte 0x20746F20
	.4byte 0x64656C65
	.4byte 0x7465206D
	.4byte 0x65746120
	.4byte 0x666F7220
	.4byte 0x25303136
	.4byte 0x6C6C783A
	.4byte 0x2025640A
	.4byte 0x0025733A
	.4byte 0x3A257320
	.4byte 0x6661696C
	.4byte 0x65642074
	.4byte 0x6F206465
	.4byte 0x6C657465
	.4byte 0x20746974
	.4byte 0x6C652066
	.4byte 0x6F722025
	.4byte 0x3031366C
	.4byte 0x6C783A20
	.4byte 0x25640A00
	.4byte 0x25733A3A
	.4byte 0x25732066
	.4byte 0x61696C65
	.4byte 0x6420746F
	.4byte 0x2064656C
	.4byte 0x65746520
	.4byte 0x636F6E74
	.4byte 0x656E7473
	.4byte 0x20666F72
	.4byte 0x20253031
	.4byte 0x366C6C78
	.4byte 0x3A202564
	.4byte 0x0A002573
	.4byte 0x3A3A2573
	.4byte 0x20666169
	.4byte 0x6C656420
	.4byte 0x746F2063
	.4byte 0x6865636B
	.4byte 0x20736166
	.4byte 0x65747920
	.4byte 0x666F7220
	.4byte 0x25303136
	.4byte 0x6C6C783A
	.4byte 0x2025640A
	.4byte 0x0025733A
	.4byte 0x3A257320
	.4byte 0x6661696C
	.4byte 0x65642074
	.4byte 0x6F206465
	.4byte 0x6C657465
	.4byte 0x20444C20
	.4byte 0x7461736B
	.4byte 0x20666F72
	.4byte 0x20253031
	.4byte 0x366C6C78
	.4byte 0x3A202564
	.4byte 0x0A005072
	.4byte 0x65706172
	.4byte 0x65546974
	.4byte 0x6C654469
	.4byte 0x72002573
	.4byte 0x3A3A2573
	.4byte 0x3A204F70
	.4byte 0x656E2062
	.4byte 0x61636B75
	.4byte 0x7020544D
	.4byte 0x44206669
	.4byte 0x6C652066
	.4byte 0x61696C65
	.4byte 0x643A2025
	.4byte 0x640A0025
	.4byte 0x733A3A25
	.4byte 0x733A204E
	.4byte 0x6F206261
	.4byte 0x636B7570
	.4byte 0x206F6620
	.4byte 0x25303136
	.4byte 0x6C6C783A
	.4byte 0x2025640A
	.4byte 0x0025733A
	.4byte 0x3A25733A
	.4byte 0x20526573
	.4byte 0x746F7265
	.4byte 0x20666169
	.4byte 0x6C65643A
	.4byte 0x2025640A
	.4byte 0x0025733A
	.4byte 0x3A25733A
	.4byte 0x20466169
	.4byte 0x6C656420
	.4byte 0x746F2063
	.4byte 0x6C6F7365
	.4byte 0x20544D44
	.4byte 0x20737973
	.4byte 0x74656D20
	.4byte 0x66696C65
	.4byte 0x3A202564
	.4byte 0x0A004465
	.4byte 0x6C657465
	.4byte 0x53617665
	.4byte 0x64617461
	.4byte 0x002F7469
	.4byte 0x746C652F
	.4byte 0x25303878
	.4byte 0x2F253038
	.4byte 0x782F6461
	.4byte 0x74612F00
	.4byte 0x25733A3A
	.4byte 0x25733A20
	.4byte 0x436F756C
	.4byte 0x64206E6F
	.4byte 0x74207265
	.4byte 0x61643120
	.4byte 0x25733A20
	.4byte 0x25640A00
	.4byte 0x25733A3A
	.4byte 0x25733A20
	.4byte 0x436F756C
	.4byte 0x64206E6F
	.4byte 0x7420616C
	.4byte 0x6C6F633A
	.4byte 0x2025640A
	.4byte 0x0025733A
	.4byte 0x3A25733A
	.4byte 0x20436F75
	.4byte 0x6C64206E
	.4byte 0x6F742072
	.4byte 0x65616432
	.4byte 0x2025733A
	.4byte 0x2025640A
	.4byte 0x0025733A
	.4byte 0x3A25733A
	.4byte 0x20466169
	.4byte 0x6C656420
	.4byte 0x746F2064
	.4byte 0x656C6574
	.4byte 0x65202573
	.4byte 0x3A202564
	.4byte 0x0A007665
	.4byte 0x72696679
	.4byte 0x53617665
	.4byte 0x64617461
	.4byte 0x5A440044
	.4byte 0x656C6574
	.4byte 0x65546963
	.4byte 0x6B657473
	.4byte 0x466F7263
	.4byte 0x6500496E
	.4byte 0x69745361
	.4byte 0x76656461
	.4byte 0x74610025
	.4byte 0x733A3A25
	.4byte 0x733A2046
	.4byte 0x61696C65
	.4byte 0x6420746F
	.4byte 0x2045535F
	.4byte 0x4C697374
	.4byte 0x5469746C
	.4byte 0x65734F6E
	.4byte 0x43617264
	.4byte 0x313A2025
	.4byte 0x640A0025
	.4byte 0x733A3A25
	.4byte 0x733A2055
	.4byte 0x6E61626C
	.4byte 0x6520746F
	.4byte 0x20616C6C
	.4byte 0x6F636174
	.4byte 0x650A0025
	.4byte 0x733A3A25
	.4byte 0x733A2046
	.4byte 0x61696C65
	.4byte 0x6420746F
	.4byte 0x2045535F
	.4byte 0x4C697374
	.4byte 0x5469746C
	.4byte 0x65734F6E
	.4byte 0x43617264
	.4byte 0x323A2025
	.4byte 0x640A002F
	.4byte 0x7469746C
	.4byte 0x652F2530
	.4byte 0x38782F25
	.4byte 0x3038782F
	.4byte 0x64617461
	.4byte 0x2F257300
	.4byte 0x7A656C64
	.4byte 0x6154702E
	.4byte 0x64617400
	.4byte 0x25733A3A
	.4byte 0x25733A20
	.4byte 0x4368616E
	.4byte 0x67655569
	.4byte 0x64206661
	.4byte 0x696C6564
	.4byte 0x0A002573
	.4byte 0x3A3A2573
	.4byte 0x3A20446F
	.4byte 0x6573206E
	.4byte 0x6F742065
	.4byte 0x78697374
	.4byte 0x2025733A
	.4byte 0x2025640A
	.4byte 0x0025733A
	.4byte 0x3A25733A
	.4byte 0x204F7065
	.4byte 0x6E207361
	.4byte 0x76652064
	.4byte 0x61746120
	.4byte 0x66696C65
	.4byte 0x20666169
	.4byte 0x6C65643A
	.4byte 0x2025640A
	.4byte 0x0025733A
	.4byte 0x3A25733A
	.4byte 0x20416C6C
	.4byte 0x6F632066
	.4byte 0x61696C65
	.4byte 0x643A2025
	.4byte 0x640A0025
	.4byte 0x733A3A25
	.4byte 0x733A2052
	.4byte 0x65616420
	.4byte 0x66696C65
	.4byte 0x20666169
	.4byte 0x6C65643A
	.4byte 0x2025640A
	.4byte 0x0025733A
	.4byte 0x3A25733A
	.4byte 0x2046696C
	.4byte 0x65207369
	.4byte 0x7A652069
	.4byte 0x73206E6F
	.4byte 0x7420636F
	.4byte 0x72726563
	.4byte 0x743A2025
	.4byte 0x640A0025
	.4byte 0x733A3A25
	.4byte 0x733A2056
	.4byte 0x65726966
	.4byte 0x79206661
	.4byte 0x696C6564
	.4byte 0x20666F72
	.4byte 0x20253031
	.4byte 0x366C6C78
	.4byte 0x0A002573
	.4byte 0x3A3A2573
	.4byte 0x3A204553
	.4byte 0x5F476574
	.4byte 0x5469636B
	.4byte 0x65745669
	.4byte 0x65777320
	.4byte 0x6661696C
	.4byte 0x65643A20
	.4byte 0x25642066
	.4byte 0x6F722025
	.4byte 0x3031366C
	.4byte 0x6C780A00
	.4byte 0x25733A3A
	.4byte 0x25733A20
	.4byte 0x45535F44
	.4byte 0x656C6574
	.4byte 0x65546963
	.4byte 0x6B657420
	.4byte 0x6661696C
	.4byte 0x65643A20
	.4byte 0x25642066
	.4byte 0x6F722025
	.4byte 0x3031366C
	.4byte 0x6C780A00
	.4byte 0x25733A3A
	.4byte 0x25733A20
	.4byte 0x4E414E44
	.4byte 0x43726561
	.4byte 0x74652025
	.4byte 0x73206572
	.4byte 0x723A2025
	.4byte 0x640A0025
	.4byte 0x733A3A25
	.4byte 0x733A204E
	.4byte 0x414E444F
	.4byte 0x70656E20
	.4byte 0x25732065
	.4byte 0x72723A20
	.4byte 0x25640A00
	.4byte 0x25733A3A
	.4byte 0x25733A20
	.4byte 0x4E414E44
	.4byte 0x4765744C
	.4byte 0x656E6774
	.4byte 0x68202573
	.4byte 0x20657272
	.4byte 0x3A202564
	.4byte 0x0A002573
	.4byte 0x3A3A2573
	.4byte 0x3A204E41
	.4byte 0x4E445365
	.4byte 0x656B2065
	.4byte 0x72723A20
	.4byte 0x2564213D
	.4byte 0x25640A00
	.4byte 0x25733A3A
	.4byte 0x25733A20
	.4byte 0x4E414E44
	.4byte 0x52656164
	.4byte 0x20657272
	.4byte 0x3A202564
	.4byte 0x213D2564
	.4byte 0x0A002573
	.4byte 0x3A3A2573
	.4byte 0x3A204E41
	.4byte 0x4E445465
	.4byte 0x6C6C2065
	.4byte 0x72723A20
	.4byte 0x25640A00
	.4byte 0x25733A3A
	.4byte 0x25733A20
	.4byte 0x496E7465
	.4byte 0x726E616C
	.4byte 0x20657272
	.4byte 0x6F723A20
	.4byte 0x2564213D
	.4byte 0x2564207C
	.4byte 0x7C203078
	.4byte 0x2578206E
	.4byte 0x6F742033
	.4byte 0x32420A00
	.4byte 0x25733A3A
	.4byte 0x25733A20
	.4byte 0x45535F47
	.4byte 0x6574546D
	.4byte 0x64206572
	.4byte 0x723A2025
	.4byte 0x640A0025
	.4byte 0x733A3A25
	.4byte 0x733A2045
	.4byte 0x535F4578
	.4byte 0x706F7274
	.4byte 0x5469746C
	.4byte 0x65496E69
	.4byte 0x74206572
	.4byte 0x723A2025
	.4byte 0x640A0025
	.4byte 0x733A3A25
	.4byte 0x733A2045
	.4byte 0x535F4578
	.4byte 0x706F7274
	.4byte 0x5469746C
	.4byte 0x65446F6E
	.4byte 0x65206572
	.4byte 0x723A2025
	.4byte 0x640A0025
	.4byte 0x733A3A25
	.4byte 0x733A204E
	.4byte 0x414E4457
	.4byte 0x72697465
	.4byte 0x20657272
	.4byte 0x3A202564
	.4byte 0x213D2564
	.4byte 0x0A002573
	.4byte 0x3A3A2573
	.4byte 0x3A204553
	.4byte 0x5F476574
	.4byte 0x546D6456
	.4byte 0x69657720
	.4byte 0x6572723A
	.4byte 0x2025640A
	.4byte 0x0025733A
	.4byte 0x3A25733A
	.4byte 0x2045535F
	.4byte 0x496D706F
	.4byte 0x72745469
	.4byte 0x746C6549
	.4byte 0x6E697420
	.4byte 0x6572723A
	.4byte 0x2025640A
	.4byte 0x0025733A
	.4byte 0x3A25733A
	.4byte 0x2045535F
	.4byte 0x496D706F
	.4byte 0x72745469
	.4byte 0x746C6544
	.4byte 0x6F6E6520
	.4byte 0x6572723A
	.4byte 0x2025640A
	.4byte 0x00000000
	.byte 0x00, 0x00, 0x00
.endobj lbl_81641C0D

# 0x816962A0..0x816962C0 | size: 0x20
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x816962A0 | size: 0x5
.obj lbl_816962A0, global
	.string "%s%s"
.endobj lbl_816962A0

# .sdata:0x5 | 0x816962A5 | size: 0x5
.obj lbl_816962A5, global
	.string "Open"
.endobj lbl_816962A5

# .sdata:0xA | 0x816962AA | size: 0x6
.obj lbl_816962AA, global
	.string "Exist"
.endobj lbl_816962AA

# .sdata:0x10 | 0x816962B0 | size: 0x7
.obj lbl_816962B0, global
	.string "Backup"
.endobj lbl_816962B0

# .sdata:0x17 | 0x816962B7 | size: 0x9
.obj lbl_816962B7, global
	.4byte 0x52657374
	.4byte 0x6F726500
	.byte 0x00
.endobj lbl_816962B7
