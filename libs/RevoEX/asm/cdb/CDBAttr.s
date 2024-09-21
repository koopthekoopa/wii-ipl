.include "macros.inc"
.file "CDBAttr.c"

# 0x81490644..0x81490D70 | size: 0x72C
.text
.balign 4

# .text:0x0 | 0x81490644 | size: 0x1A0
.fn CDBAttrCheckAttrBuf, global
/* 81490644 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81490648 | 7C 08 02 A6 */	mflr r0
/* 8149064C | 38 AD 9A 20 */	li r5, lbl_81697A60@sda21
/* 81490650 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81490654 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81490658 | 7C 7F 1B 78 */	mr r31, r3
/* 8149065C | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 81490660 | 88 8D 9A 20 */	lbz r4, lbl_81697A60@sda21(r0)
/* 81490664 | 7C 00 07 74 */	extsb r0, r0
/* 81490668 | 7C 84 07 74 */	extsb r4, r4
/* 8149066C | 7C 04 00 00 */	cmpw r4, r0
/* 81490670 | 41 82 00 0C */	beq .L_8149067C
/* 81490674 | 38 60 00 06 */	li r3, 0x6
/* 81490678 | 48 00 01 58 */	b .L_814907D0
.L_8149067C:
/* 8149067C | 88 85 00 01 */	lbz r4, 0x1(r5)
/* 81490680 | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 81490684 | 7C 84 07 74 */	extsb r4, r4
/* 81490688 | 7C 00 07 74 */	extsb r0, r0
/* 8149068C | 7C 04 00 00 */	cmpw r4, r0
/* 81490690 | 41 82 00 0C */	beq .L_8149069C
/* 81490694 | 38 60 00 06 */	li r3, 0x6
/* 81490698 | 48 00 01 38 */	b .L_814907D0
.L_8149069C:
/* 8149069C | 88 85 00 02 */	lbz r4, 0x2(r5)
/* 814906A0 | 88 03 00 02 */	lbz r0, 0x2(r3)
/* 814906A4 | 7C 84 07 74 */	extsb r4, r4
/* 814906A8 | 7C 00 07 74 */	extsb r0, r0
/* 814906AC | 7C 04 00 00 */	cmpw r4, r0
/* 814906B0 | 41 82 00 0C */	beq .L_814906BC
/* 814906B4 | 38 60 00 06 */	li r3, 0x6
/* 814906B8 | 48 00 01 18 */	b .L_814907D0
.L_814906BC:
/* 814906BC | 88 85 00 03 */	lbz r4, 0x3(r5)
/* 814906C0 | 88 03 00 03 */	lbz r0, 0x3(r3)
/* 814906C4 | 7C 84 07 74 */	extsb r4, r4
/* 814906C8 | 7C 00 07 74 */	extsb r0, r0
/* 814906CC | 7C 04 00 00 */	cmpw r4, r0
/* 814906D0 | 41 82 00 0C */	beq .L_814906DC
/* 814906D4 | 38 60 00 06 */	li r3, 0x6
/* 814906D8 | 48 00 00 F8 */	b .L_814907D0
.L_814906DC:
/* 814906DC | 88 85 00 04 */	lbz r4, 0x4(r5)
/* 814906E0 | 88 03 00 04 */	lbz r0, 0x4(r3)
/* 814906E4 | 7C 84 07 74 */	extsb r4, r4
/* 814906E8 | 7C 00 07 74 */	extsb r0, r0
/* 814906EC | 7C 04 00 00 */	cmpw r4, r0
/* 814906F0 | 41 82 00 0C */	beq .L_814906FC
/* 814906F4 | 38 60 00 06 */	li r3, 0x6
/* 814906F8 | 48 00 00 D8 */	b .L_814907D0
.L_814906FC:
/* 814906FC | 88 85 00 05 */	lbz r4, 0x5(r5)
/* 81490700 | 88 03 00 05 */	lbz r0, 0x5(r3)
/* 81490704 | 7C 84 07 74 */	extsb r4, r4
/* 81490708 | 7C 00 07 74 */	extsb r0, r0
/* 8149070C | 7C 04 00 00 */	cmpw r4, r0
/* 81490710 | 41 82 00 0C */	beq .L_8149071C
/* 81490714 | 38 60 00 06 */	li r3, 0x6
/* 81490718 | 48 00 00 B8 */	b .L_814907D0
.L_8149071C:
/* 8149071C | 88 85 00 06 */	lbz r4, 0x6(r5)
/* 81490720 | 88 03 00 06 */	lbz r0, 0x6(r3)
/* 81490724 | 7C 84 07 74 */	extsb r4, r4
/* 81490728 | 7C 00 07 74 */	extsb r0, r0
/* 8149072C | 7C 04 00 00 */	cmpw r4, r0
/* 81490730 | 41 82 00 0C */	beq .L_8149073C
/* 81490734 | 38 60 00 06 */	li r3, 0x6
/* 81490738 | 48 00 00 98 */	b .L_814907D0
.L_8149073C:
/* 8149073C | 88 03 00 07 */	lbz r0, 0x7(r3)
/* 81490740 | 7C 00 07 74 */	extsb r0, r0
/* 81490744 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81490748 | 40 81 00 0C */	ble .L_81490754
/* 8149074C | 38 60 00 06 */	li r3, 0x6
/* 81490750 | 48 00 00 80 */	b .L_814907D0
.L_81490754:
/* 81490754 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81490758 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8149075C | 38 00 00 10 */	li r0, 0x10
/* 81490760 | 40 82 00 08 */	bne .L_81490768
/* 81490764 | 38 00 00 0D */	li r0, 0xd
.L_81490768:
/* 81490768 | 7C 9F 02 14 */	add r4, r31, r0
/* 8149076C | 38 A0 00 01 */	li r5, 0x1
/* 81490770 | 4B E9 FA C1 */	bl memcpy
/* 81490774 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 81490778 | 28 00 00 58 */	cmplwi r0, 0x58
/* 8149077C | 40 81 00 0C */	ble .L_81490788
/* 81490780 | 38 60 00 06 */	li r3, 0x6
/* 81490784 | 48 00 00 4C */	b .L_814907D0
.L_81490788:
/* 81490788 | 38 A0 00 00 */	li r5, 0x0
/* 8149078C | 38 80 00 00 */	li r4, 0x0
/* 81490790 | 7C 09 03 A6 */	mtctr r0
/* 81490794 | 28 00 00 00 */	cmplwi r0, 0x0
/* 81490798 | 40 81 00 24 */	ble .L_814907BC
.L_8149079C:
/* 8149079C | 7C 7F 22 14 */	add r3, r31, r4
/* 814907A0 | 88 03 00 14 */	lbz r0, 0x14(r3)
/* 814907A4 | 7C 00 07 75 */	extsb. r0, r0
/* 814907A8 | 40 82 00 0C */	bne .L_814907B4
/* 814907AC | 38 A0 00 01 */	li r5, 0x1
/* 814907B0 | 48 00 00 0C */	b .L_814907BC
.L_814907B4:
/* 814907B4 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814907B8 | 42 00 FF E4 */	bdnz .L_8149079C
.L_814907BC:
/* 814907BC | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814907C0 | 40 82 00 0C */	bne .L_814907CC
/* 814907C4 | 38 60 00 06 */	li r3, 0x6
/* 814907C8 | 48 00 00 08 */	b .L_814907D0
.L_814907CC:
/* 814907CC | 38 60 00 00 */	li r3, 0x0
.L_814907D0:
/* 814907D0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814907D4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814907D8 | 7C 08 03 A6 */	mtlr r0
/* 814907DC | 38 21 00 20 */	addi r1, r1, 0x20
/* 814907E0 | 4E 80 00 20 */	blr
.endfn CDBAttrCheckAttrBuf

# .text:0x1A0 | 0x814907E4 | size: 0x44
.fn CDBAttrInit, global
/* 814907E4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814907E8 | 7C 08 02 A6 */	mflr r0
/* 814907EC | 38 80 00 00 */	li r4, 0x0
/* 814907F0 | 38 A0 04 00 */	li r5, 0x400
/* 814907F4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814907F8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814907FC | 7C 7F 1B 78 */	mr r31, r3
/* 81490800 | 4B E9 FB 35 */	bl memset
/* 81490804 | 38 00 00 00 */	li r0, 0x0
/* 81490808 | 90 1F 04 08 */	stw r0, 0x408(r31)
/* 8149080C | 90 1F 04 00 */	stw r0, 0x400(r31)
/* 81490810 | 90 1F 04 04 */	stw r0, 0x404(r31)
/* 81490814 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81490818 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149081C | 7C 08 03 A6 */	mtlr r0
/* 81490820 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81490824 | 4E 80 00 20 */	blr
.endfn CDBAttrInit

# .text:0x1E4 | 0x81490828 | size: 0x174
.fn CDBAttrCreateOnNAND, global
/* 81490828 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8149082C | 7C 08 02 A6 */	mflr r0
/* 81490830 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81490834 | 93 E1 00 3C */	stw r31, 0x3c(r1)
/* 81490838 | 93 C1 00 38 */	stw r30, 0x38(r1)
/* 8149083C | 7C BE 2B 78 */	mr r30, r5
/* 81490840 | 38 A0 04 00 */	li r5, 0x400
/* 81490844 | 93 A1 00 34 */	stw r29, 0x34(r1)
/* 81490848 | 7C 9D 23 78 */	mr r29, r4
/* 8149084C | 38 80 00 00 */	li r4, 0x0
/* 81490850 | 93 81 00 30 */	stw r28, 0x30(r1)
/* 81490854 | 7C 7C 1B 78 */	mr r28, r3
/* 81490858 | 4B E9 FA DD */	bl memset
/* 8149085C | 38 00 00 00 */	li r0, 0x0
/* 81490860 | 7F 83 E3 78 */	mr r3, r28
/* 81490864 | 90 1C 04 08 */	stw r0, 0x408(r28)
/* 81490868 | 38 8D 9A 20 */	li r4, lbl_81697A60@sda21
/* 8149086C | 38 A0 00 07 */	li r5, 0x7
/* 81490870 | 90 1C 04 00 */	stw r0, 0x400(r28)
/* 81490874 | 90 1C 04 04 */	stw r0, 0x404(r28)
/* 81490878 | 4B E9 F9 B9 */	bl memcpy
/* 8149087C | 38 7C 00 07 */	addi r3, r28, 0x7
/* 81490880 | 38 82 8C 30 */	li r4, lbl_81695030@sda21
/* 81490884 | 38 A0 00 01 */	li r5, 0x1
/* 81490888 | 4B E9 F9 A9 */	bl memcpy
/* 8149088C | 7F A3 EB 78 */	mr r3, r29
/* 81490890 | 48 16 86 6D */	bl strlen
/* 81490894 | 3B E3 00 01 */	addi r31, r3, 0x1
/* 81490898 | 28 1F 00 58 */	cmplwi r31, 0x58
/* 8149089C | 41 80 00 0C */	blt .L_814908A8
/* 814908A0 | 38 60 00 10 */	li r3, 0x10
/* 814908A4 | 48 00 00 48 */	b .L_814908EC
.L_814908A8:
/* 814908A8 | 9B E1 00 08 */	stb r31, 0x8(r1)
/* 814908AC | 38 60 00 10 */	li r3, 0x10
/* 814908B0 | 88 1C 00 07 */	lbz r0, 0x7(r28)
/* 814908B4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814908B8 | 40 82 00 08 */	bne .L_814908C0
/* 814908BC | 38 60 00 0D */	li r3, 0xd
.L_814908C0:
/* 814908C0 | 7C 7C 1A 14 */	add r3, r28, r3
/* 814908C4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814908C8 | 38 A0 00 01 */	li r5, 0x1
/* 814908CC | 4B E9 F9 65 */	bl memcpy
/* 814908D0 | 7F A4 EB 78 */	mr r4, r29
/* 814908D4 | 7F E5 FB 78 */	mr r5, r31
/* 814908D8 | 38 7C 00 14 */	addi r3, r28, 0x14
/* 814908DC | 4B E9 F9 55 */	bl memcpy
/* 814908E0 | 38 00 00 01 */	li r0, 0x1
/* 814908E4 | 38 60 00 00 */	li r3, 0x0
/* 814908E8 | 90 1C 04 00 */	stw r0, 0x400(r28)
.L_814908EC:
/* 814908EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814908F0 | 41 82 00 08 */	beq .L_814908F8
/* 814908F4 | 48 00 00 88 */	b .L_8149097C
.L_814908F8:
/* 814908F8 | 93 C1 00 14 */	stw r30, 0x14(r1)
/* 814908FC | 38 7C 00 7C */	addi r3, r28, 0x7c
/* 81490900 | 38 81 00 14 */	addi r4, r1, 0x14
/* 81490904 | 38 A0 00 04 */	li r5, 0x4
/* 81490908 | 4B E9 F9 29 */	bl memcpy
/* 8149090C | 3B E0 00 01 */	li r31, 0x1
/* 81490910 | 38 00 00 00 */	li r0, 0x0
/* 81490914 | 93 FC 04 00 */	stw r31, 0x400(r28)
/* 81490918 | 38 7C 00 74 */	addi r3, r28, 0x74
/* 8149091C | 38 81 00 10 */	addi r4, r1, 0x10
/* 81490920 | 38 A0 00 04 */	li r5, 0x4
/* 81490924 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 81490928 | 4B E9 F9 09 */	bl memcpy
/* 8149092C | 93 FC 04 00 */	stw r31, 0x400(r28)
/* 81490930 | 38 61 00 18 */	addi r3, r1, 0x18
/* 81490934 | 48 00 17 75 */	bl GenCDBIdNumber
/* 81490938 | 80 01 00 18 */	lwz r0, 0x18(r1)
/* 8149093C | 38 7C 00 70 */	addi r3, r28, 0x70
/* 81490940 | 38 81 00 0C */	addi r4, r1, 0xc
/* 81490944 | 38 A0 00 04 */	li r5, 0x4
/* 81490948 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8149094C | 4B E9 F8 E5 */	bl memcpy
/* 81490950 | 4B FF F6 A9 */	bl CDBGetWiiId
/* 81490954 | 90 81 00 24 */	stw r4, 0x24(r1)
/* 81490958 | 38 81 00 20 */	addi r4, r1, 0x20
/* 8149095C | 38 A0 00 08 */	li r5, 0x8
/* 81490960 | 90 61 00 20 */	stw r3, 0x20(r1)
/* 81490964 | 38 7C 00 08 */	addi r3, r28, 0x8
/* 81490968 | 4B E9 F8 C9 */	bl memcpy
/* 8149096C | 93 FC 04 08 */	stw r31, 0x408(r28)
/* 81490970 | 38 60 00 00 */	li r3, 0x0
/* 81490974 | 93 FC 04 00 */	stw r31, 0x400(r28)
/* 81490978 | 93 FC 04 04 */	stw r31, 0x404(r28)
.L_8149097C:
/* 8149097C | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81490980 | 83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 81490984 | 83 C1 00 38 */	lwz r30, 0x38(r1)
/* 81490988 | 83 A1 00 34 */	lwz r29, 0x34(r1)
/* 8149098C | 83 81 00 30 */	lwz r28, 0x30(r1)
/* 81490990 | 7C 08 03 A6 */	mtlr r0
/* 81490994 | 38 21 00 40 */	addi r1, r1, 0x40
/* 81490998 | 4E 80 00 20 */	blr
.endfn CDBAttrCreateOnNAND

# .text:0x358 | 0x8149099C | size: 0x48
.fn CDBAttrSetModifiedDate, global
/* 8149099C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814909A0 | 7C 08 02 A6 */	mflr r0
/* 814909A4 | 38 A0 00 04 */	li r5, 0x4
/* 814909A8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814909AC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814909B0 | 7C 7F 1B 78 */	mr r31, r3
/* 814909B4 | 38 63 00 7C */	addi r3, r3, 0x7c
/* 814909B8 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 814909BC | 38 81 00 08 */	addi r4, r1, 0x8
/* 814909C0 | 4B E9 F8 71 */	bl memcpy
/* 814909C4 | 38 00 00 01 */	li r0, 0x1
/* 814909C8 | 38 60 00 00 */	li r3, 0x0
/* 814909CC | 90 1F 04 00 */	stw r0, 0x400(r31)
/* 814909D0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814909D4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814909D8 | 7C 08 03 A6 */	mtlr r0
/* 814909DC | 38 21 00 20 */	addi r1, r1, 0x20
/* 814909E0 | 4E 80 00 20 */	blr
.endfn CDBAttrSetModifiedDate

# .text:0x3A0 | 0x814909E4 | size: 0x48
.fn CDBAttrSetModifiedCount, global
/* 814909E4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814909E8 | 7C 08 02 A6 */	mflr r0
/* 814909EC | 38 A0 00 04 */	li r5, 0x4
/* 814909F0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814909F4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814909F8 | 7C 7F 1B 78 */	mr r31, r3
/* 814909FC | 38 63 00 74 */	addi r3, r3, 0x74
/* 81490A00 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 81490A04 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81490A08 | 4B E9 F8 29 */	bl memcpy
/* 81490A0C | 38 00 00 01 */	li r0, 0x1
/* 81490A10 | 38 60 00 00 */	li r3, 0x0
/* 81490A14 | 90 1F 04 00 */	stw r0, 0x400(r31)
/* 81490A18 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81490A1C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81490A20 | 7C 08 03 A6 */	mtlr r0
/* 81490A24 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81490A28 | 4E 80 00 20 */	blr
.endfn CDBAttrSetModifiedCount

# .text:0x3E8 | 0x81490A2C | size: 0x34
.fn CDBAttrGetModifiedCount, global
/* 81490A2C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81490A30 | 7C 08 02 A6 */	mflr r0
/* 81490A34 | 7C 65 1B 78 */	mr r5, r3
/* 81490A38 | 7C 83 23 78 */	mr r3, r4
/* 81490A3C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81490A40 | 38 85 00 74 */	addi r4, r5, 0x74
/* 81490A44 | 38 A0 00 04 */	li r5, 0x4
/* 81490A48 | 4B E9 F7 E9 */	bl memcpy
/* 81490A4C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81490A50 | 38 60 00 00 */	li r3, 0x0
/* 81490A54 | 7C 08 03 A6 */	mtlr r0
/* 81490A58 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81490A5C | 4E 80 00 20 */	blr
.endfn CDBAttrGetModifiedCount

# .text:0x41C | 0x81490A60 | size: 0x34
.fn CDBAttrGetIDNumber, global
/* 81490A60 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81490A64 | 7C 08 02 A6 */	mflr r0
/* 81490A68 | 7C 65 1B 78 */	mr r5, r3
/* 81490A6C | 7C 83 23 78 */	mr r3, r4
/* 81490A70 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81490A74 | 38 85 00 70 */	addi r4, r5, 0x70
/* 81490A78 | 38 A0 00 04 */	li r5, 0x4
/* 81490A7C | 4B E9 F7 B5 */	bl memcpy
/* 81490A80 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81490A84 | 38 60 00 00 */	li r3, 0x0
/* 81490A88 | 7C 08 03 A6 */	mtlr r0
/* 81490A8C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81490A90 | 4E 80 00 20 */	blr
.endfn CDBAttrGetIDNumber

# .text:0x450 | 0x81490A94 | size: 0x4C
.fn CDBAttrSetWiiId, global
/* 81490A94 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81490A98 | 7C 08 02 A6 */	mflr r0
/* 81490A9C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81490AA0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81490AA4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81490AA8 | 7C 7F 1B 78 */	mr r31, r3
/* 81490AAC | 38 63 00 08 */	addi r3, r3, 0x8
/* 81490AB0 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 81490AB4 | 38 A0 00 08 */	li r5, 0x8
/* 81490AB8 | 90 C1 00 0C */	stw r6, 0xc(r1)
/* 81490ABC | 4B E9 F7 75 */	bl memcpy
/* 81490AC0 | 38 00 00 01 */	li r0, 0x1
/* 81490AC4 | 38 60 00 00 */	li r3, 0x0
/* 81490AC8 | 90 1F 04 04 */	stw r0, 0x404(r31)
/* 81490ACC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81490AD0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81490AD4 | 7C 08 03 A6 */	mtlr r0
/* 81490AD8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81490ADC | 4E 80 00 20 */	blr
.endfn CDBAttrSetWiiId

# .text:0x49C | 0x81490AE0 | size: 0x8C
.fn CDBAttrSetKeyStr, global
/* 81490AE0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81490AE4 | 7C 08 02 A6 */	mflr r0
/* 81490AE8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81490AEC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81490AF0 | 7C 9F 23 78 */	mr r31, r4
/* 81490AF4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81490AF8 | 7C 7E 1B 78 */	mr r30, r3
/* 81490AFC | 7F E3 FB 78 */	mr r3, r31
/* 81490B00 | 4B FF D7 E5 */	bl CDBRecordKeyIsValid
/* 81490B04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81490B08 | 41 82 00 24 */	beq .L_81490B2C
/* 81490B0C | 38 7E 00 80 */	addi r3, r30, 0x80
/* 81490B10 | 38 80 00 00 */	li r4, 0x0
/* 81490B14 | 38 A0 00 20 */	li r5, 0x20
/* 81490B18 | 4B E9 F8 1D */	bl memset
/* 81490B1C | 7F E3 FB 78 */	mr r3, r31
/* 81490B20 | 38 9E 00 80 */	addi r4, r30, 0x80
/* 81490B24 | 4B FF DB 61 */	bl CDBRecordKeyGetKeyStr
/* 81490B28 | 48 00 00 2C */	b .L_81490B54
.L_81490B2C:
/* 81490B2C | 38 60 00 02 */	li r3, 0x2
/* 81490B30 | 4B FF FA 61 */	bl CDBIsPrintDebugMessage
/* 81490B34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81490B38 | 41 82 00 1C */	beq .L_81490B54
/* 81490B3C | 38 60 00 02 */	li r3, 0x2
/* 81490B40 | 4B FF FA 69 */	bl CDBReport_
/* 81490B44 | 3C 60 81 67 */	lis r3, lbl_8166CAE8@ha
/* 81490B48 | 38 63 CA E8 */	addi r3, r3, lbl_8166CAE8@l
/* 81490B4C | 4C C6 31 82 */	crclr cr1eq
/* 81490B50 | 48 09 DB 51 */	bl OSReport
.L_81490B54:
/* 81490B54 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81490B58 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81490B5C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81490B60 | 7C 08 03 A6 */	mtlr r0
/* 81490B64 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81490B68 | 4E 80 00 20 */	blr
.endfn CDBAttrSetKeyStr

# .text:0x528 | 0x81490B6C | size: 0x14
.fn CDBAttrGetKeyStr, global
/* 81490B6C | 7C 65 1B 78 */	mr r5, r3
/* 81490B70 | 7C 83 23 78 */	mr r3, r4
/* 81490B74 | 38 85 00 80 */	addi r4, r5, 0x80
/* 81490B78 | 38 A0 00 20 */	li r5, 0x20
/* 81490B7C | 4B E9 F6 B4 */	b memcpy
.endfn CDBAttrGetKeyStr

# .text:0x53C | 0x81490B80 | size: 0x104
.fn CDBAttrInitIV, global
/* 81490B80 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81490B84 | 7C 08 02 A6 */	mflr r0
/* 81490B88 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81490B8C | 80 0D AD 58 */	lwz r0, lbl_81698D98@sda21(r0)
/* 81490B90 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81490B94 | 7C 7F 1B 78 */	mr r31, r3
/* 81490B98 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81490B9C | 40 82 00 0C */	bne .L_81490BA8
/* 81490BA0 | 48 0A 50 F9 */	bl OSGetTick
/* 81490BA4 | 90 6D AD 58 */	stw r3, lbl_81698D98@sda21(r0)
.L_81490BA8:
/* 81490BA8 | 3C 60 5D 59 */	lis r3, 0x5d59
/* 81490BAC | 38 00 00 02 */	li r0, 0x2
/* 81490BB0 | 38 A3 8B 65 */	subi r5, r3, 0x749b
/* 81490BB4 | 80 8D AD 58 */	lwz r4, lbl_81698D98@sda21(r0)
/* 81490BB8 | 38 60 00 00 */	li r3, 0x0
/* 81490BBC | 7C 09 03 A6 */	mtctr r0
.L_81490BC0:
/* 81490BC0 | 7C 84 29 D6 */	mullw r4, r4, r5
/* 81490BC4 | 7C FF 1A 14 */	add r7, r31, r3
/* 81490BC8 | 38 63 00 08 */	addi r3, r3, 0x8
/* 81490BCC | 3C C4 00 27 */	addis r6, r4, 0x27
/* 81490BD0 | 38 C6 9E C3 */	subi r6, r6, 0x613d
/* 81490BD4 | 7C 86 29 D6 */	mullw r4, r6, r5
/* 81490BD8 | 54 C0 84 3E */	srwi r0, r6, 16
/* 81490BDC | 98 07 00 A0 */	stb r0, 0xa0(r7)
/* 81490BE0 | 3C C4 00 27 */	addis r6, r4, 0x27
/* 81490BE4 | 38 C6 9E C3 */	subi r6, r6, 0x613d
/* 81490BE8 | 7C 86 29 D6 */	mullw r4, r6, r5
/* 81490BEC | 54 C0 84 3E */	srwi r0, r6, 16
/* 81490BF0 | 98 07 00 A1 */	stb r0, 0xa1(r7)
/* 81490BF4 | 3C C4 00 27 */	addis r6, r4, 0x27
/* 81490BF8 | 38 C6 9E C3 */	subi r6, r6, 0x613d
/* 81490BFC | 7C 86 29 D6 */	mullw r4, r6, r5
/* 81490C00 | 54 C0 84 3E */	srwi r0, r6, 16
/* 81490C04 | 98 07 00 A2 */	stb r0, 0xa2(r7)
/* 81490C08 | 3C C4 00 27 */	addis r6, r4, 0x27
/* 81490C0C | 38 C6 9E C3 */	subi r6, r6, 0x613d
/* 81490C10 | 7C 86 29 D6 */	mullw r4, r6, r5
/* 81490C14 | 54 C0 84 3E */	srwi r0, r6, 16
/* 81490C18 | 98 07 00 A3 */	stb r0, 0xa3(r7)
/* 81490C1C | 3C C4 00 27 */	addis r6, r4, 0x27
/* 81490C20 | 38 C6 9E C3 */	subi r6, r6, 0x613d
/* 81490C24 | 7C 86 29 D6 */	mullw r4, r6, r5
/* 81490C28 | 54 C0 84 3E */	srwi r0, r6, 16
/* 81490C2C | 98 07 00 A4 */	stb r0, 0xa4(r7)
/* 81490C30 | 3C C4 00 27 */	addis r6, r4, 0x27
/* 81490C34 | 38 C6 9E C3 */	subi r6, r6, 0x613d
/* 81490C38 | 7C 86 29 D6 */	mullw r4, r6, r5
/* 81490C3C | 54 C0 84 3E */	srwi r0, r6, 16
/* 81490C40 | 98 07 00 A5 */	stb r0, 0xa5(r7)
/* 81490C44 | 3C C4 00 27 */	addis r6, r4, 0x27
/* 81490C48 | 38 C6 9E C3 */	subi r6, r6, 0x613d
/* 81490C4C | 7C 86 29 D6 */	mullw r4, r6, r5
/* 81490C50 | 54 C0 84 3E */	srwi r0, r6, 16
/* 81490C54 | 98 07 00 A6 */	stb r0, 0xa6(r7)
/* 81490C58 | 3C 84 00 27 */	addis r4, r4, 0x27
/* 81490C5C | 38 84 9E C3 */	subi r4, r4, 0x613d
/* 81490C60 | 54 80 84 3E */	srwi r0, r4, 16
/* 81490C64 | 98 07 00 A7 */	stb r0, 0xa7(r7)
/* 81490C68 | 42 00 FF 58 */	bdnz .L_81490BC0
/* 81490C6C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81490C70 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81490C74 | 90 8D AD 58 */	stw r4, lbl_81698D98@sda21(r0)
/* 81490C78 | 7C 08 03 A6 */	mtlr r0
/* 81490C7C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81490C80 | 4E 80 00 20 */	blr
.endfn CDBAttrInitIV

# .text:0x640 | 0x81490C84 | size: 0x84
.fn CDBAttrGetIV, global
/* 81490C84 | 88 03 00 A0 */	lbz r0, 0xa0(r3)
/* 81490C88 | 98 04 00 00 */	stb r0, 0x0(r4)
/* 81490C8C | 88 03 00 A1 */	lbz r0, 0xa1(r3)
/* 81490C90 | 98 04 00 01 */	stb r0, 0x1(r4)
/* 81490C94 | 88 03 00 A2 */	lbz r0, 0xa2(r3)
/* 81490C98 | 98 04 00 02 */	stb r0, 0x2(r4)
/* 81490C9C | 88 03 00 A3 */	lbz r0, 0xa3(r3)
/* 81490CA0 | 98 04 00 03 */	stb r0, 0x3(r4)
/* 81490CA4 | 88 03 00 A4 */	lbz r0, 0xa4(r3)
/* 81490CA8 | 98 04 00 04 */	stb r0, 0x4(r4)
/* 81490CAC | 88 03 00 A5 */	lbz r0, 0xa5(r3)
/* 81490CB0 | 98 04 00 05 */	stb r0, 0x5(r4)
/* 81490CB4 | 88 03 00 A6 */	lbz r0, 0xa6(r3)
/* 81490CB8 | 98 04 00 06 */	stb r0, 0x6(r4)
/* 81490CBC | 88 03 00 A7 */	lbz r0, 0xa7(r3)
/* 81490CC0 | 98 04 00 07 */	stb r0, 0x7(r4)
/* 81490CC4 | 88 03 00 A8 */	lbz r0, 0xa8(r3)
/* 81490CC8 | 98 04 00 08 */	stb r0, 0x8(r4)
/* 81490CCC | 88 03 00 A9 */	lbz r0, 0xa9(r3)
/* 81490CD0 | 98 04 00 09 */	stb r0, 0x9(r4)
/* 81490CD4 | 88 03 00 AA */	lbz r0, 0xaa(r3)
/* 81490CD8 | 98 04 00 0A */	stb r0, 0xa(r4)
/* 81490CDC | 88 03 00 AB */	lbz r0, 0xab(r3)
/* 81490CE0 | 98 04 00 0B */	stb r0, 0xb(r4)
/* 81490CE4 | 88 03 00 AC */	lbz r0, 0xac(r3)
/* 81490CE8 | 98 04 00 0C */	stb r0, 0xc(r4)
/* 81490CEC | 88 03 00 AD */	lbz r0, 0xad(r3)
/* 81490CF0 | 98 04 00 0D */	stb r0, 0xd(r4)
/* 81490CF4 | 88 03 00 AE */	lbz r0, 0xae(r3)
/* 81490CF8 | 98 04 00 0E */	stb r0, 0xe(r4)
/* 81490CFC | 88 03 00 AF */	lbz r0, 0xaf(r3)
/* 81490D00 | 98 04 00 0F */	stb r0, 0xf(r4)
/* 81490D04 | 4E 80 00 20 */	blr
.endfn CDBAttrGetIV

# .text:0x6C4 | 0x81490D08 | size: 0x14
.fn CDBAttrGetSignature, global
/* 81490D08 | 7C 65 1B 78 */	mr r5, r3
/* 81490D0C | 7C 83 23 78 */	mr r3, r4
/* 81490D10 | 38 85 00 B0 */	addi r4, r5, 0xb0
/* 81490D14 | 38 A0 01 BC */	li r5, 0x1bc
/* 81490D18 | 4B E9 F5 18 */	b memcpy
.endfn CDBAttrGetSignature

# .text:0x6D8 | 0x81490D1C | size: 0x10
.fn CDBAttrClearSignature, global
/* 81490D1C | 38 80 00 00 */	li r4, 0x0
/* 81490D20 | 38 A0 01 BC */	li r5, 0x1bc
/* 81490D24 | 38 63 00 B0 */	addi r3, r3, 0xb0
/* 81490D28 | 4B E9 F6 0C */	b memset
.endfn CDBAttrClearSignature

# .text:0x6E8 | 0x81490D2C | size: 0x30
.fn CDBAttrSetFileSize, global
/* 81490D2C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81490D30 | 7C 08 02 A6 */	mflr r0
/* 81490D34 | 38 A0 00 04 */	li r5, 0x4
/* 81490D38 | 38 63 00 78 */	addi r3, r3, 0x78
/* 81490D3C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81490D40 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 81490D44 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81490D48 | 4B E9 F4 E9 */	bl memcpy
/* 81490D4C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81490D50 | 7C 08 03 A6 */	mtlr r0
/* 81490D54 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81490D58 | 4E 80 00 20 */	blr
.endfn CDBAttrSetFileSize

# .text:0x718 | 0x81490D5C | size: 0x14
.fn CDBAttrGetFileSize, global
/* 81490D5C | 7C 65 1B 78 */	mr r5, r3
/* 81490D60 | 7C 83 23 78 */	mr r3, r4
/* 81490D64 | 38 85 00 78 */	addi r4, r5, 0x78
/* 81490D68 | 38 A0 00 04 */	li r5, 0x4
/* 81490D6C | 4B E9 F4 C4 */	b memcpy
.endfn CDBAttrGetFileSize

# 0x8166CAE8..0x8166CB18 | size: 0x30
.data
.balign 8

# .data:0x0 | 0x8166CAE8 | size: 0x30
.obj lbl_8166CAE8, global
	.4byte 0x43444241
	.4byte 0x74747253
	.4byte 0x65744B65
	.4byte 0x79537472
	.4byte 0x203A2069
	.4byte 0x6E76616C
	.4byte 0x69642043
	.4byte 0x44425265
	.4byte 0x636F7264
	.4byte 0x4B65790A
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_8166CAE8

# 0x81695030..0x81695038 | size: 0x8
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81695030 | size: 0x8
.obj lbl_81695030, global
	.4byte 0x02000000
	.4byte 0x00000000
.endobj lbl_81695030

# 0x81697A60..0x81697A68 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697A60 | size: 0x8
.obj lbl_81697A60, global
	.byte 0x43, 0x44, 0x42, 0x46, 0x49, 0x4C, 0x45, 0x00
.endobj lbl_81697A60

# 0x81698D98..0x81698DA0 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698D98 | size: 0x8
.obj lbl_81698D98, global
	.skip 0x8
.endobj lbl_81698D98
