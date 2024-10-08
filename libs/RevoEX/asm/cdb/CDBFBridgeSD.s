.include "macros.inc"
.file "CDBFBridgeSD.c"

# 0x81491664..0x814920A8 | size: 0xA44
.text
.balign 4

# .text:0x0 | 0x81491664 | size: 0xA4
.fn CDBFCreateFileSD, global
/* 81491664 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81491668 | 7C 08 02 A6 */	mflr r0
/* 8149166C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81491670 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81491674 | 7C 7F 1B 78 */	mr r31, r3
/* 81491678 | 7C 83 23 78 */	mr r3, r4
/* 8149167C | 38 80 00 00 */	li r4, 0x0
/* 81491680 | 48 03 F1 91 */	bl VFCreateFile
/* 81491684 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81491688 | 90 7F 00 04 */	stw r3, 0x4(r31)
/* 8149168C | 40 82 00 64 */	bne .L_814916F0
/* 81491690 | 48 03 FD 2D */	bl VFGetLastError
/* 81491694 | 2C 03 00 11 */	cmpwi r3, 0x11
/* 81491698 | 7C 7F 1B 78 */	mr r31, r3
/* 8149169C | 40 82 00 0C */	bne .L_814916A8
/* 814916A0 | 38 60 00 1E */	li r3, 0x1e
/* 814916A4 | 48 00 00 50 */	b .L_814916F4
.L_814916A8:
/* 814916A8 | 2C 03 00 1C */	cmpwi r3, 0x1c
/* 814916AC | 40 82 00 0C */	bne .L_814916B8
/* 814916B0 | 38 60 00 17 */	li r3, 0x17
/* 814916B4 | 48 00 00 40 */	b .L_814916F4
.L_814916B8:
/* 814916B8 | 2C 03 00 0D */	cmpwi r3, 0xd
/* 814916BC | 40 82 00 0C */	bne .L_814916C8
/* 814916C0 | 38 60 00 1D */	li r3, 0x1d
/* 814916C4 | 48 00 00 30 */	b .L_814916F4
.L_814916C8:
/* 814916C8 | 4B FF A8 85 */	bl CDBFSSDIsEjected
/* 814916CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814916D0 | 41 82 00 0C */	beq .L_814916DC
/* 814916D4 | 38 60 00 1F */	li r3, 0x1f
/* 814916D8 | 48 00 00 1C */	b .L_814916F4
.L_814916DC:
/* 814916DC | 7F E3 FB 78 */	mr r3, r31
/* 814916E0 | 38 8D 9A 30 */	li r4, lbl_81697A70@sda21
/* 814916E4 | 38 A0 00 00 */	li r5, 0x0
/* 814916E8 | 4B FF E4 E5 */	bl _CDBOnVFErrorOccured
/* 814916EC | 48 00 00 08 */	b .L_814916F4
.L_814916F0:
/* 814916F0 | 38 60 00 00 */	li r3, 0x0
.L_814916F4:
/* 814916F4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814916F8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814916FC | 7C 08 03 A6 */	mtlr r0
/* 81491700 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81491704 | 4E 80 00 20 */	blr
.endfn CDBFCreateFileSD

# .text:0xA4 | 0x81491708 | size: 0xB8
.fn CDBFDeleteFileSD, global
/* 81491708 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149170C | 7C 08 02 A6 */	mflr r0
/* 81491710 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81491714 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81491718 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8149171C | 7C 7E 1B 78 */	mr r30, r3
/* 81491720 | 48 03 F4 85 */	bl VFDeleteFile
/* 81491724 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 81491728 | 7C 7F 1B 78 */	mr r31, r3
/* 8149172C | 40 82 00 0C */	bne .L_81491738
/* 81491730 | 38 60 00 23 */	li r3, 0x23
/* 81491734 | 48 00 00 74 */	b .L_814917A8
.L_81491738:
/* 81491738 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149173C | 41 82 00 68 */	beq .L_814917A4
/* 81491740 | 2C 03 00 0D */	cmpwi r3, 0xd
/* 81491744 | 40 82 00 0C */	bne .L_81491750
/* 81491748 | 38 60 00 1D */	li r3, 0x1d
/* 8149174C | 48 00 00 5C */	b .L_814917A8
.L_81491750:
/* 81491750 | 4B FF A7 FD */	bl CDBFSSDIsEjected
/* 81491754 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81491758 | 41 82 00 0C */	beq .L_81491764
/* 8149175C | 38 60 00 1F */	li r3, 0x1f
/* 81491760 | 48 00 00 48 */	b .L_814917A8
.L_81491764:
/* 81491764 | 38 60 00 04 */	li r3, 0x4
/* 81491768 | 4B FF EE 29 */	bl CDBIsPrintDebugMessage
/* 8149176C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81491770 | 41 82 00 20 */	beq .L_81491790
/* 81491774 | 38 60 00 04 */	li r3, 0x4
/* 81491778 | 4B FF EE 31 */	bl CDBReport_
/* 8149177C | 3C 60 81 67 */	lis r3, lbl_8166CB18@ha
/* 81491780 | 7F C4 F3 78 */	mr r4, r30
/* 81491784 | 38 63 CB 18 */	addi r3, r3, lbl_8166CB18@l
/* 81491788 | 4C C6 31 82 */	crclr cr1eq
/* 8149178C | 48 09 CF 15 */	bl OSReport
.L_81491790:
/* 81491790 | 7F E3 FB 78 */	mr r3, r31
/* 81491794 | 38 8D 9A 30 */	li r4, lbl_81697A70@sda21
/* 81491798 | 38 A0 00 00 */	li r5, 0x0
/* 8149179C | 4B FF E4 31 */	bl _CDBOnVFErrorOccured
/* 814917A0 | 48 00 00 08 */	b .L_814917A8
.L_814917A4:
/* 814917A4 | 38 60 00 00 */	li r3, 0x0
.L_814917A8:
/* 814917A8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814917AC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814917B0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814917B4 | 7C 08 03 A6 */	mtlr r0
/* 814917B8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814917BC | 4E 80 00 20 */	blr
.endfn CDBFDeleteFileSD

# .text:0x15C | 0x814917C0 | size: 0x50
.fn CDBFCreateDirSD, global
/* 814917C0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814917C4 | 7C 08 02 A6 */	mflr r0
/* 814917C8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814917CC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814917D0 | 4B FF A1 8D */	bl CDBFSCreateDirForceSD
/* 814917D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814917D8 | 7C 7F 1B 78 */	mr r31, r3
/* 814917DC | 41 82 00 1C */	beq .L_814917F8
/* 814917E0 | 4B FF A7 6D */	bl CDBFSSDIsEjected
/* 814917E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814917E8 | 41 82 00 08 */	beq .L_814917F0
/* 814917EC | 3B E0 00 1F */	li r31, 0x1f
.L_814917F0:
/* 814917F0 | 7F E3 FB 78 */	mr r3, r31
/* 814917F4 | 48 00 00 08 */	b .L_814917FC
.L_814917F8:
/* 814917F8 | 38 60 00 00 */	li r3, 0x0
.L_814917FC:
/* 814917FC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81491800 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81491804 | 7C 08 03 A6 */	mtlr r0
/* 81491808 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149180C | 4E 80 00 20 */	blr
.endfn CDBFCreateDirSD

# .text:0x1AC | 0x81491810 | size: 0x128
.fn CDBFOpenSD, global
/* 81491810 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81491814 | 7C 08 02 A6 */	mflr r0
/* 81491818 | 38 A0 00 00 */	li r5, 0x0
/* 8149181C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81491820 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81491824 | 7C 9F 23 78 */	mr r31, r4
/* 81491828 | 38 8D 9A 38 */	li r4, lbl_81697A78@sda21
/* 8149182C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81491830 | 7C 7E 1B 78 */	mr r30, r3
/* 81491834 | 7F E3 FB 78 */	mr r3, r31
/* 81491838 | 48 03 F0 89 */	bl VFOpenFile
/* 8149183C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81491840 | 90 7E 00 04 */	stw r3, 0x4(r30)
/* 81491844 | 40 82 00 18 */	bne .L_8149185C
/* 81491848 | 7F E3 FB 78 */	mr r3, r31
/* 8149184C | 38 8D 9A 34 */	li r4, lbl_81697A74@sda21
/* 81491850 | 38 A0 00 00 */	li r5, 0x0
/* 81491854 | 48 03 F0 6D */	bl VFOpenFile
/* 81491858 | 90 7E 00 04 */	stw r3, 0x4(r30)
.L_8149185C:
/* 8149185C | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 81491860 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81491864 | 40 82 00 B8 */	bne .L_8149191C
/* 81491868 | 48 03 FB 55 */	bl VFGetLastError
/* 8149186C | 2C 03 00 02 */	cmpwi r3, 0x2
/* 81491870 | 41 82 00 0C */	beq .L_8149187C
/* 81491874 | 2C 03 00 16 */	cmpwi r3, 0x16
/* 81491878 | 40 82 00 0C */	bne .L_81491884
.L_8149187C:
/* 8149187C | 38 60 00 23 */	li r3, 0x23
/* 81491880 | 48 00 00 A0 */	b .L_81491920
.L_81491884:
/* 81491884 | 2C 03 00 0D */	cmpwi r3, 0xd
/* 81491888 | 40 82 00 6C */	bne .L_814918F4
/* 8149188C | 7F E3 FB 78 */	mr r3, r31
/* 81491890 | 38 8D 9A 34 */	li r4, lbl_81697A74@sda21
/* 81491894 | 38 A0 00 00 */	li r5, 0x0
/* 81491898 | 48 03 F0 29 */	bl VFOpenFile
/* 8149189C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814918A0 | 90 7E 00 04 */	stw r3, 0x4(r30)
/* 814918A4 | 40 82 00 48 */	bne .L_814918EC
/* 814918A8 | 48 03 FB 15 */	bl VFGetLastError
/* 814918AC | 2C 03 00 02 */	cmpwi r3, 0x2
/* 814918B0 | 41 82 00 0C */	beq .L_814918BC
/* 814918B4 | 2C 03 00 16 */	cmpwi r3, 0x16
/* 814918B8 | 40 82 00 0C */	bne .L_814918C4
.L_814918BC:
/* 814918BC | 38 60 00 23 */	li r3, 0x23
/* 814918C0 | 48 00 00 60 */	b .L_81491920
.L_814918C4:
/* 814918C4 | 4B FF A6 89 */	bl CDBFSSDIsEjected
/* 814918C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814918CC | 41 82 00 0C */	beq .L_814918D8
/* 814918D0 | 38 60 00 1F */	li r3, 0x1f
/* 814918D4 | 48 00 00 4C */	b .L_81491920
.L_814918D8:
/* 814918D8 | 48 03 FA E5 */	bl VFGetLastError
/* 814918DC | 38 8D 9A 30 */	li r4, lbl_81697A70@sda21
/* 814918E0 | 38 A0 00 00 */	li r5, 0x0
/* 814918E4 | 4B FF E2 E9 */	bl _CDBOnVFErrorOccured
/* 814918E8 | 48 00 00 38 */	b .L_81491920
.L_814918EC:
/* 814918EC | 38 60 00 00 */	li r3, 0x0
/* 814918F0 | 48 00 00 30 */	b .L_81491920
.L_814918F4:
/* 814918F4 | 4B FF A6 59 */	bl CDBFSSDIsEjected
/* 814918F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814918FC | 41 82 00 0C */	beq .L_81491908
/* 81491900 | 38 60 00 1F */	li r3, 0x1f
/* 81491904 | 48 00 00 1C */	b .L_81491920
.L_81491908:
/* 81491908 | 48 03 FA B5 */	bl VFGetLastError
/* 8149190C | 38 8D 9A 30 */	li r4, lbl_81697A70@sda21
/* 81491910 | 38 A0 00 00 */	li r5, 0x0
/* 81491914 | 4B FF E2 B9 */	bl _CDBOnVFErrorOccured
/* 81491918 | 48 00 00 08 */	b .L_81491920
.L_8149191C:
/* 8149191C | 38 60 00 00 */	li r3, 0x0
.L_81491920:
/* 81491920 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81491924 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81491928 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8149192C | 7C 08 03 A6 */	mtlr r0
/* 81491930 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81491934 | 4E 80 00 20 */	blr
.endfn CDBFOpenSD

# .text:0x2D4 | 0x81491938 | size: 0x6C
.fn CDBFCloseSD, global
/* 81491938 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149193C | 7C 08 02 A6 */	mflr r0
/* 81491940 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81491944 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81491948 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8149194C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81491950 | 41 82 00 3C */	beq .L_8149198C
/* 81491954 | 48 03 F0 31 */	bl VFCloseFile
/* 81491958 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149195C | 7C 7F 1B 78 */	mr r31, r3
/* 81491960 | 41 82 00 2C */	beq .L_8149198C
/* 81491964 | 4B FF A5 E9 */	bl CDBFSSDIsEjected
/* 81491968 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149196C | 41 82 00 0C */	beq .L_81491978
/* 81491970 | 38 60 00 1F */	li r3, 0x1f
/* 81491974 | 48 00 00 1C */	b .L_81491990
.L_81491978:
/* 81491978 | 7F E3 FB 78 */	mr r3, r31
/* 8149197C | 38 8D 9A 30 */	li r4, lbl_81697A70@sda21
/* 81491980 | 38 A0 00 00 */	li r5, 0x0
/* 81491984 | 4B FF E2 49 */	bl _CDBOnVFErrorOccured
/* 81491988 | 48 00 00 08 */	b .L_81491990
.L_8149198C:
/* 8149198C | 38 60 00 00 */	li r3, 0x0
.L_81491990:
/* 81491990 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81491994 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81491998 | 7C 08 03 A6 */	mtlr r0
/* 8149199C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814919A0 | 4E 80 00 20 */	blr
.endfn CDBFCloseSD

# .text:0x340 | 0x814919A4 | size: 0x100
.fn CDBFSeekSD_, global
/* 814919A4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814919A8 | 7C 08 02 A6 */	mflr r0
/* 814919AC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814919B0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814919B4 | 7C BF 2B 78 */	mr r31, r5
/* 814919B8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814919BC | 7C 9E 23 78 */	mr r30, r4
/* 814919C0 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814919C4 | 7C 7D 1B 78 */	mr r29, r3
/* 814919C8 | 48 03 F5 89 */	bl VFGetOffsetByFd
/* 814919CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814919D0 | 40 80 00 2C */	bge .L_814919FC
/* 814919D4 | 4B FF A5 79 */	bl CDBFSSDIsEjected
/* 814919D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814919DC | 41 82 00 0C */	beq .L_814919E8
/* 814919E0 | 38 60 00 1F */	li r3, 0x1f
/* 814919E4 | 48 00 00 A4 */	b .L_81491A88
.L_814919E8:
/* 814919E8 | 48 03 F9 D5 */	bl VFGetLastError
/* 814919EC | 38 8D 9A 30 */	li r4, lbl_81697A70@sda21
/* 814919F0 | 38 A0 00 00 */	li r5, 0x0
/* 814919F4 | 4B FF E1 D9 */	bl _CDBOnVFErrorOccured
/* 814919F8 | 48 00 00 90 */	b .L_81491A88
.L_814919FC:
/* 814919FC | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 81491A00 | 41 82 00 2C */	beq .L_81491A2C
/* 81491A04 | 40 80 00 10 */	bge .L_81491A14
/* 81491A08 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81491A0C | 40 80 00 14 */	bge .L_81491A20
/* 81491A10 | 48 00 00 30 */	b .L_81491A40
.L_81491A14:
/* 81491A14 | 2C 1F 00 03 */	cmpwi r31, 0x3
/* 81491A18 | 40 80 00 28 */	bge .L_81491A40
/* 81491A1C | 48 00 00 1C */	b .L_81491A38
.L_81491A20:
/* 81491A20 | 7C 83 F2 14 */	add r4, r3, r30
/* 81491A24 | 38 A0 00 01 */	li r5, 0x1
/* 81491A28 | 48 00 00 18 */	b .L_81491A40
.L_81491A2C:
/* 81491A2C | 7F C4 F3 78 */	mr r4, r30
/* 81491A30 | 38 A0 00 00 */	li r5, 0x0
/* 81491A34 | 48 00 00 0C */	b .L_81491A40
.L_81491A38:
/* 81491A38 | 38 A0 00 02 */	li r5, 0x2
/* 81491A3C | 7C 9E 18 50 */	subf r4, r30, r3
.L_81491A40:
/* 81491A40 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81491A44 | 41 80 00 14 */	blt .L_81491A58
/* 81491A48 | 3C 60 00 04 */	lis r3, 0x4
/* 81491A4C | 38 03 EC 00 */	subi r0, r3, 0x1400
/* 81491A50 | 7C 04 00 00 */	cmpw r4, r0
/* 81491A54 | 40 81 00 0C */	ble .L_81491A60
.L_81491A58:
/* 81491A58 | 38 60 00 0F */	li r3, 0xf
/* 81491A5C | 48 00 00 2C */	b .L_81491A88
.L_81491A60:
/* 81491A60 | 7F A3 EB 78 */	mr r3, r29
/* 81491A64 | 7F C4 F3 78 */	mr r4, r30
/* 81491A68 | 48 03 EF 89 */	bl VFSeekFile
/* 81491A6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81491A70 | 41 82 00 14 */	beq .L_81491A84
/* 81491A74 | 38 8D 9A 30 */	li r4, lbl_81697A70@sda21
/* 81491A78 | 38 A0 00 00 */	li r5, 0x0
/* 81491A7C | 4B FF E1 51 */	bl _CDBOnVFErrorOccured
/* 81491A80 | 48 00 00 08 */	b .L_81491A88
.L_81491A84:
/* 81491A84 | 38 60 00 00 */	li r3, 0x0
.L_81491A88:
/* 81491A88 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81491A8C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81491A90 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81491A94 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81491A98 | 7C 08 03 A6 */	mtlr r0
/* 81491A9C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81491AA0 | 4E 80 00 20 */	blr
.endfn CDBFSeekSD_

# .text:0x440 | 0x81491AA4 | size: 0x13C
.fn CDBFReadAttrSD, global
/* 81491AA4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81491AA8 | 7C 08 02 A6 */	mflr r0
/* 81491AAC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81491AB0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81491AB4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81491AB8 | 7C 9E 23 78 */	mr r30, r4
/* 81491ABC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81491AC0 | 7C 7D 1B 78 */	mr r29, r3
/* 81491AC4 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81491AC8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81491ACC | 41 82 00 14 */	beq .L_81491AE0
/* 81491AD0 | 7C 03 03 78 */	mr r3, r0
/* 81491AD4 | 48 03 F4 7D */	bl VFGetOffsetByFd
/* 81491AD8 | 7C 7F 1B 78 */	mr r31, r3
/* 81491ADC | 48 00 00 08 */	b .L_81491AE4
.L_81491AE0:
/* 81491AE0 | 3B E0 FF FF */	li r31, -0x1
.L_81491AE4:
/* 81491AE4 | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 81491AE8 | 38 80 00 00 */	li r4, 0x0
/* 81491AEC | 38 A0 00 01 */	li r5, 0x1
/* 81491AF0 | 4B FF FE B5 */	bl CDBFSeekSD_
/* 81491AF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81491AF8 | 41 82 00 08 */	beq .L_81491B00
/* 81491AFC | 48 00 00 C8 */	b .L_81491BC4
.L_81491B00:
/* 81491B00 | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 81491B04 | 7F C4 F3 78 */	mr r4, r30
/* 81491B08 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 81491B0C | 38 A0 04 00 */	li r5, 0x400
/* 81491B10 | 48 03 EF 6D */	bl VFReadFile
/* 81491B14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81491B18 | 7C 7E 1B 78 */	mr r30, r3
/* 81491B1C | 41 82 00 30 */	beq .L_81491B4C
/* 81491B20 | 4B FF A4 2D */	bl CDBFSSDIsEjected
/* 81491B24 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81491B28 | 41 82 00 0C */	beq .L_81491B34
/* 81491B2C | 3B C0 00 1F */	li r30, 0x1f
/* 81491B30 | 48 00 00 20 */	b .L_81491B50
.L_81491B34:
/* 81491B34 | 7F C3 F3 78 */	mr r3, r30
/* 81491B38 | 38 8D 9A 30 */	li r4, lbl_81697A70@sda21
/* 81491B3C | 38 A0 00 00 */	li r5, 0x0
/* 81491B40 | 4B FF E0 8D */	bl _CDBOnVFErrorOccured
/* 81491B44 | 7C 7E 1B 78 */	mr r30, r3
/* 81491B48 | 48 00 00 08 */	b .L_81491B50
.L_81491B4C:
/* 81491B4C | 3B C0 00 00 */	li r30, 0x0
.L_81491B50:
/* 81491B50 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 81491B54 | 28 00 04 00 */	cmplwi r0, 0x400
/* 81491B58 | 41 82 00 1C */	beq .L_81491B74
/* 81491B5C | 4B FF A3 F1 */	bl CDBFSSDIsEjected
/* 81491B60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81491B64 | 38 60 00 08 */	li r3, 0x8
/* 81491B68 | 41 82 00 5C */	beq .L_81491BC4
/* 81491B6C | 38 60 00 1F */	li r3, 0x1f
/* 81491B70 | 48 00 00 54 */	b .L_81491BC4
.L_81491B74:
/* 81491B74 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81491B78 | 41 82 00 1C */	beq .L_81491B94
/* 81491B7C | 4B FF A3 D1 */	bl CDBFSSDIsEjected
/* 81491B80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81491B84 | 41 82 00 08 */	beq .L_81491B8C
/* 81491B88 | 3B C0 00 1F */	li r30, 0x1f
.L_81491B8C:
/* 81491B8C | 7F C3 F3 78 */	mr r3, r30
/* 81491B90 | 48 00 00 34 */	b .L_81491BC4
.L_81491B94:
/* 81491B94 | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 81491B98 | 7F E4 FB 78 */	mr r4, r31
/* 81491B9C | 38 A0 00 01 */	li r5, 0x1
/* 81491BA0 | 4B FF FE 05 */	bl CDBFSeekSD_
/* 81491BA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81491BA8 | 7C 7E 1B 78 */	mr r30, r3
/* 81491BAC | 41 82 00 18 */	beq .L_81491BC4
/* 81491BB0 | 4B FF A3 9D */	bl CDBFSSDIsEjected
/* 81491BB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81491BB8 | 41 82 00 08 */	beq .L_81491BC0
/* 81491BBC | 3B C0 00 1F */	li r30, 0x1f
.L_81491BC0:
/* 81491BC0 | 7F C3 F3 78 */	mr r3, r30
.L_81491BC4:
/* 81491BC4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81491BC8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81491BCC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81491BD0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81491BD4 | 7C 08 03 A6 */	mtlr r0
/* 81491BD8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81491BDC | 4E 80 00 20 */	blr
.endfn CDBFReadAttrSD

# .text:0x57C | 0x81491BE0 | size: 0x154
.fn CDBFWriteAttrSD, global
/* 81491BE0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81491BE4 | 7C 08 02 A6 */	mflr r0
/* 81491BE8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81491BEC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81491BF0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81491BF4 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81491BF8 | 7C 9D 23 78 */	mr r29, r4
/* 81491BFC | 93 81 00 10 */	stw r28, 0x10(r1)
/* 81491C00 | 7C 7C 1B 78 */	mr r28, r3
/* 81491C04 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81491C08 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81491C0C | 41 82 00 14 */	beq .L_81491C20
/* 81491C10 | 7C 03 03 78 */	mr r3, r0
/* 81491C14 | 48 03 F3 3D */	bl VFGetOffsetByFd
/* 81491C18 | 7C 7F 1B 78 */	mr r31, r3
/* 81491C1C | 48 00 00 08 */	b .L_81491C24
.L_81491C20:
/* 81491C20 | 3B E0 FF FF */	li r31, -0x1
.L_81491C24:
/* 81491C24 | 80 7C 00 04 */	lwz r3, 0x4(r28)
/* 81491C28 | 38 80 00 00 */	li r4, 0x0
/* 81491C2C | 38 A0 00 01 */	li r5, 0x1
/* 81491C30 | 4B FF FD 75 */	bl CDBFSeekSD_
/* 81491C34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81491C38 | 7C 7E 1B 78 */	mr r30, r3
/* 81491C3C | 41 82 00 1C */	beq .L_81491C58
/* 81491C40 | 4B FF A3 0D */	bl CDBFSSDIsEjected
/* 81491C44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81491C48 | 41 82 00 08 */	beq .L_81491C50
/* 81491C4C | 3B C0 00 1F */	li r30, 0x1f
.L_81491C50:
/* 81491C50 | 7F C3 F3 78 */	mr r3, r30
/* 81491C54 | 48 00 00 C0 */	b .L_81491D14
.L_81491C58:
/* 81491C58 | 80 7C 00 04 */	lwz r3, 0x4(r28)
/* 81491C5C | 7F A4 EB 78 */	mr r4, r29
/* 81491C60 | 38 A0 04 00 */	li r5, 0x400
/* 81491C64 | 48 03 EE B5 */	bl VFWriteFile
/* 81491C68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81491C6C | 7C 7E 1B 78 */	mr r30, r3
/* 81491C70 | 41 82 00 50 */	beq .L_81491CC0
/* 81491C74 | 2C 03 00 1C */	cmpwi r3, 0x1c
/* 81491C78 | 40 82 00 0C */	bne .L_81491C84
/* 81491C7C | 3B C0 00 17 */	li r30, 0x17
/* 81491C80 | 48 00 00 44 */	b .L_81491CC4
.L_81491C84:
/* 81491C84 | 2C 03 00 0D */	cmpwi r3, 0xd
/* 81491C88 | 40 82 00 0C */	bne .L_81491C94
/* 81491C8C | 3B C0 00 1D */	li r30, 0x1d
/* 81491C90 | 48 00 00 34 */	b .L_81491CC4
.L_81491C94:
/* 81491C94 | 4B FF A2 B9 */	bl CDBFSSDIsEjected
/* 81491C98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81491C9C | 41 82 00 0C */	beq .L_81491CA8
/* 81491CA0 | 3B C0 00 1F */	li r30, 0x1f
/* 81491CA4 | 48 00 00 20 */	b .L_81491CC4
.L_81491CA8:
/* 81491CA8 | 7F C3 F3 78 */	mr r3, r30
/* 81491CAC | 38 8D 9A 30 */	li r4, lbl_81697A70@sda21
/* 81491CB0 | 38 A0 00 00 */	li r5, 0x0
/* 81491CB4 | 4B FF DF 19 */	bl _CDBOnVFErrorOccured
/* 81491CB8 | 7C 7E 1B 78 */	mr r30, r3
/* 81491CBC | 48 00 00 08 */	b .L_81491CC4
.L_81491CC0:
/* 81491CC0 | 3B C0 00 00 */	li r30, 0x0
.L_81491CC4:
/* 81491CC4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81491CC8 | 41 82 00 1C */	beq .L_81491CE4
/* 81491CCC | 4B FF A2 81 */	bl CDBFSSDIsEjected
/* 81491CD0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81491CD4 | 41 82 00 08 */	beq .L_81491CDC
/* 81491CD8 | 3B C0 00 1F */	li r30, 0x1f
.L_81491CDC:
/* 81491CDC | 7F C3 F3 78 */	mr r3, r30
/* 81491CE0 | 48 00 00 34 */	b .L_81491D14
.L_81491CE4:
/* 81491CE4 | 80 7C 00 04 */	lwz r3, 0x4(r28)
/* 81491CE8 | 7F E4 FB 78 */	mr r4, r31
/* 81491CEC | 38 A0 00 01 */	li r5, 0x1
/* 81491CF0 | 4B FF FC B5 */	bl CDBFSeekSD_
/* 81491CF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81491CF8 | 7C 7E 1B 78 */	mr r30, r3
/* 81491CFC | 41 82 00 18 */	beq .L_81491D14
/* 81491D00 | 4B FF A2 4D */	bl CDBFSSDIsEjected
/* 81491D04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81491D08 | 41 82 00 08 */	beq .L_81491D10
/* 81491D0C | 3B C0 00 1F */	li r30, 0x1f
.L_81491D10:
/* 81491D10 | 7F C3 F3 78 */	mr r3, r30
.L_81491D14:
/* 81491D14 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81491D18 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81491D1C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81491D20 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81491D24 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 81491D28 | 7C 08 03 A6 */	mtlr r0
/* 81491D2C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81491D30 | 4E 80 00 20 */	blr
.endfn CDBFWriteAttrSD

# .text:0x6D0 | 0x81491D34 | size: 0x154
.fn CDBFWriteAttrOnlyLeadChunkSD, global
/* 81491D34 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81491D38 | 7C 08 02 A6 */	mflr r0
/* 81491D3C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81491D40 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81491D44 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81491D48 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81491D4C | 7C 9D 23 78 */	mr r29, r4
/* 81491D50 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 81491D54 | 7C 7C 1B 78 */	mr r28, r3
/* 81491D58 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81491D5C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81491D60 | 41 82 00 14 */	beq .L_81491D74
/* 81491D64 | 7C 03 03 78 */	mr r3, r0
/* 81491D68 | 48 03 F1 E9 */	bl VFGetOffsetByFd
/* 81491D6C | 7C 7F 1B 78 */	mr r31, r3
/* 81491D70 | 48 00 00 08 */	b .L_81491D78
.L_81491D74:
/* 81491D74 | 3B E0 FF FF */	li r31, -0x1
.L_81491D78:
/* 81491D78 | 80 7C 00 04 */	lwz r3, 0x4(r28)
/* 81491D7C | 38 80 00 00 */	li r4, 0x0
/* 81491D80 | 38 A0 00 01 */	li r5, 0x1
/* 81491D84 | 4B FF FC 21 */	bl CDBFSeekSD_
/* 81491D88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81491D8C | 7C 7E 1B 78 */	mr r30, r3
/* 81491D90 | 41 82 00 1C */	beq .L_81491DAC
/* 81491D94 | 4B FF A1 B9 */	bl CDBFSSDIsEjected
/* 81491D98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81491D9C | 41 82 00 08 */	beq .L_81491DA4
/* 81491DA0 | 3B C0 00 1F */	li r30, 0x1f
.L_81491DA4:
/* 81491DA4 | 7F C3 F3 78 */	mr r3, r30
/* 81491DA8 | 48 00 00 C0 */	b .L_81491E68
.L_81491DAC:
/* 81491DAC | 80 7C 00 04 */	lwz r3, 0x4(r28)
/* 81491DB0 | 7F A4 EB 78 */	mr r4, r29
/* 81491DB4 | 38 A0 02 00 */	li r5, 0x200
/* 81491DB8 | 48 03 ED 61 */	bl VFWriteFile
/* 81491DBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81491DC0 | 7C 7E 1B 78 */	mr r30, r3
/* 81491DC4 | 41 82 00 50 */	beq .L_81491E14
/* 81491DC8 | 2C 03 00 1C */	cmpwi r3, 0x1c
/* 81491DCC | 40 82 00 0C */	bne .L_81491DD8
/* 81491DD0 | 3B C0 00 17 */	li r30, 0x17
/* 81491DD4 | 48 00 00 44 */	b .L_81491E18
.L_81491DD8:
/* 81491DD8 | 2C 03 00 0D */	cmpwi r3, 0xd
/* 81491DDC | 40 82 00 0C */	bne .L_81491DE8
/* 81491DE0 | 3B C0 00 1D */	li r30, 0x1d
/* 81491DE4 | 48 00 00 34 */	b .L_81491E18
.L_81491DE8:
/* 81491DE8 | 4B FF A1 65 */	bl CDBFSSDIsEjected
/* 81491DEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81491DF0 | 41 82 00 0C */	beq .L_81491DFC
/* 81491DF4 | 3B C0 00 1F */	li r30, 0x1f
/* 81491DF8 | 48 00 00 20 */	b .L_81491E18
.L_81491DFC:
/* 81491DFC | 7F C3 F3 78 */	mr r3, r30
/* 81491E00 | 38 8D 9A 30 */	li r4, lbl_81697A70@sda21
/* 81491E04 | 38 A0 00 00 */	li r5, 0x0
/* 81491E08 | 4B FF DD C5 */	bl _CDBOnVFErrorOccured
/* 81491E0C | 7C 7E 1B 78 */	mr r30, r3
/* 81491E10 | 48 00 00 08 */	b .L_81491E18
.L_81491E14:
/* 81491E14 | 3B C0 00 00 */	li r30, 0x0
.L_81491E18:
/* 81491E18 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81491E1C | 41 82 00 1C */	beq .L_81491E38
/* 81491E20 | 4B FF A1 2D */	bl CDBFSSDIsEjected
/* 81491E24 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81491E28 | 41 82 00 08 */	beq .L_81491E30
/* 81491E2C | 3B C0 00 1F */	li r30, 0x1f
.L_81491E30:
/* 81491E30 | 7F C3 F3 78 */	mr r3, r30
/* 81491E34 | 48 00 00 34 */	b .L_81491E68
.L_81491E38:
/* 81491E38 | 80 7C 00 04 */	lwz r3, 0x4(r28)
/* 81491E3C | 7F E4 FB 78 */	mr r4, r31
/* 81491E40 | 38 A0 00 01 */	li r5, 0x1
/* 81491E44 | 4B FF FB 61 */	bl CDBFSeekSD_
/* 81491E48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81491E4C | 7C 7E 1B 78 */	mr r30, r3
/* 81491E50 | 41 82 00 18 */	beq .L_81491E68
/* 81491E54 | 4B FF A0 F9 */	bl CDBFSSDIsEjected
/* 81491E58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81491E5C | 41 82 00 08 */	beq .L_81491E64
/* 81491E60 | 3B C0 00 1F */	li r30, 0x1f
.L_81491E64:
/* 81491E64 | 7F C3 F3 78 */	mr r3, r30
.L_81491E68:
/* 81491E68 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81491E6C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81491E70 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81491E74 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81491E78 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 81491E7C | 7C 08 03 A6 */	mtlr r0
/* 81491E80 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81491E84 | 4E 80 00 20 */	blr
.endfn CDBFWriteAttrOnlyLeadChunkSD

# .text:0x824 | 0x81491E88 | size: 0x64
.fn CDBFReadDataSD, global
/* 81491E88 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81491E8C | 7C 08 02 A6 */	mflr r0
/* 81491E90 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81491E94 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81491E98 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81491E9C | 48 03 EB E1 */	bl VFReadFile
/* 81491EA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81491EA4 | 7C 7F 1B 78 */	mr r31, r3
/* 81491EA8 | 41 82 00 2C */	beq .L_81491ED4
/* 81491EAC | 4B FF A0 A1 */	bl CDBFSSDIsEjected
/* 81491EB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81491EB4 | 41 82 00 0C */	beq .L_81491EC0
/* 81491EB8 | 38 60 00 1F */	li r3, 0x1f
/* 81491EBC | 48 00 00 1C */	b .L_81491ED8
.L_81491EC0:
/* 81491EC0 | 7F E3 FB 78 */	mr r3, r31
/* 81491EC4 | 38 8D 9A 30 */	li r4, lbl_81697A70@sda21
/* 81491EC8 | 38 A0 00 00 */	li r5, 0x0
/* 81491ECC | 4B FF DD 01 */	bl _CDBOnVFErrorOccured
/* 81491ED0 | 48 00 00 08 */	b .L_81491ED8
.L_81491ED4:
/* 81491ED4 | 38 60 00 00 */	li r3, 0x0
.L_81491ED8:
/* 81491ED8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81491EDC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81491EE0 | 7C 08 03 A6 */	mtlr r0
/* 81491EE4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81491EE8 | 4E 80 00 20 */	blr
.endfn CDBFReadDataSD

# .text:0x888 | 0x81491EEC | size: 0x84
.fn CDBFWriteDataSD, global
/* 81491EEC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81491EF0 | 7C 08 02 A6 */	mflr r0
/* 81491EF4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81491EF8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81491EFC | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81491F00 | 48 03 EC 19 */	bl VFWriteFile
/* 81491F04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81491F08 | 7C 7F 1B 78 */	mr r31, r3
/* 81491F0C | 41 82 00 4C */	beq .L_81491F58
/* 81491F10 | 2C 03 00 1C */	cmpwi r3, 0x1c
/* 81491F14 | 40 82 00 0C */	bne .L_81491F20
/* 81491F18 | 38 60 00 17 */	li r3, 0x17
/* 81491F1C | 48 00 00 40 */	b .L_81491F5C
.L_81491F20:
/* 81491F20 | 2C 03 00 0D */	cmpwi r3, 0xd
/* 81491F24 | 40 82 00 0C */	bne .L_81491F30
/* 81491F28 | 38 60 00 1D */	li r3, 0x1d
/* 81491F2C | 48 00 00 30 */	b .L_81491F5C
.L_81491F30:
/* 81491F30 | 4B FF A0 1D */	bl CDBFSSDIsEjected
/* 81491F34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81491F38 | 41 82 00 0C */	beq .L_81491F44
/* 81491F3C | 38 60 00 1F */	li r3, 0x1f
/* 81491F40 | 48 00 00 1C */	b .L_81491F5C
.L_81491F44:
/* 81491F44 | 7F E3 FB 78 */	mr r3, r31
/* 81491F48 | 38 8D 9A 30 */	li r4, lbl_81697A70@sda21
/* 81491F4C | 38 A0 00 00 */	li r5, 0x0
/* 81491F50 | 4B FF DC 7D */	bl _CDBOnVFErrorOccured
/* 81491F54 | 48 00 00 08 */	b .L_81491F5C
.L_81491F58:
/* 81491F58 | 38 60 00 00 */	li r3, 0x0
.L_81491F5C:
/* 81491F5C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81491F60 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81491F64 | 7C 08 03 A6 */	mtlr r0
/* 81491F68 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81491F6C | 4E 80 00 20 */	blr
.endfn CDBFWriteDataSD

# .text:0x90C | 0x81491F70 | size: 0x14
.fn CDBFSeekDataSD, global
/* 81491F70 | 2C 05 00 01 */	cmpwi r5, 0x1
/* 81491F74 | 40 82 00 08 */	bne .L_81491F7C
/* 81491F78 | 38 84 04 00 */	addi r4, r4, 0x400
.L_81491F7C:
/* 81491F7C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81491F80 | 4B FF FA 24 */	b CDBFSeekSD_
.endfn CDBFSeekDataSD

# .text:0x920 | 0x81491F84 | size: 0x38
.fn CDBFTellDataSD, global
/* 81491F84 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81491F88 | 7C 08 02 A6 */	mflr r0
/* 81491F8C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81491F90 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81491F94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81491F98 | 41 82 00 0C */	beq .L_81491FA4
/* 81491F9C | 48 03 EF B5 */	bl VFGetOffsetByFd
/* 81491FA0 | 48 00 00 08 */	b .L_81491FA8
.L_81491FA4:
/* 81491FA4 | 38 60 FF FF */	li r3, -0x1
.L_81491FA8:
/* 81491FA8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81491FAC | 38 63 FC 00 */	subi r3, r3, 0x400
/* 81491FB0 | 7C 08 03 A6 */	mtlr r0
/* 81491FB4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81491FB8 | 4E 80 00 20 */	blr
.endfn CDBFTellDataSD

# .text:0x958 | 0x81491FBC | size: 0x90
.fn CDBFGetDataSizeSD, global
/* 81491FBC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81491FC0 | 7C 08 02 A6 */	mflr r0
/* 81491FC4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81491FC8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81491FCC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81491FD0 | 7C 9E 23 78 */	mr r30, r4
/* 81491FD4 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81491FD8 | 48 03 EE DD */	bl VFGetFileSizeByFd
/* 81491FDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81491FE0 | 40 80 00 20 */	bge .L_81492000
/* 81491FE4 | 4B FF 9F 69 */	bl CDBFSSDIsEjected
/* 81491FE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81491FEC | 41 82 00 0C */	beq .L_81491FF8
/* 81491FF0 | 3B E0 00 1F */	li r31, 0x1f
/* 81491FF4 | 48 00 00 14 */	b .L_81492008
.L_81491FF8:
/* 81491FF8 | 3B E0 00 23 */	li r31, 0x23
/* 81491FFC | 48 00 00 0C */	b .L_81492008
.L_81492000:
/* 81492000 | 90 7E 00 00 */	stw r3, 0x0(r30)
/* 81492004 | 3B E0 00 00 */	li r31, 0x0
.L_81492008:
/* 81492008 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8149200C | 41 82 00 18 */	beq .L_81492024
/* 81492010 | 4B FF 9F 3D */	bl CDBFSSDIsEjected
/* 81492014 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81492018 | 41 82 00 0C */	beq .L_81492024
/* 8149201C | 38 60 00 1F */	li r3, 0x1f
/* 81492020 | 48 00 00 14 */	b .L_81492034
.L_81492024:
/* 81492024 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 81492028 | 7F E3 FB 78 */	mr r3, r31
/* 8149202C | 38 04 FC 00 */	subi r0, r4, 0x400
/* 81492030 | 90 1E 00 00 */	stw r0, 0x0(r30)
.L_81492034:
/* 81492034 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81492038 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8149203C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81492040 | 7C 08 03 A6 */	mtlr r0
/* 81492044 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81492048 | 4E 80 00 20 */	blr
.endfn CDBFGetDataSizeSD

# .text:0x9E8 | 0x8149204C | size: 0x5C
.fn CDBFGetFileSizeSD, global
/* 8149204C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81492050 | 7C 08 02 A6 */	mflr r0
/* 81492054 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81492058 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8149205C | 7C 9F 23 78 */	mr r31, r4
/* 81492060 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81492064 | 48 03 EE 51 */	bl VFGetFileSizeByFd
/* 81492068 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149206C | 40 80 00 20 */	bge .L_8149208C
/* 81492070 | 4B FF 9E DD */	bl CDBFSSDIsEjected
/* 81492074 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81492078 | 41 82 00 0C */	beq .L_81492084
/* 8149207C | 38 60 00 1F */	li r3, 0x1f
/* 81492080 | 48 00 00 14 */	b .L_81492094
.L_81492084:
/* 81492084 | 38 60 00 23 */	li r3, 0x23
/* 81492088 | 48 00 00 0C */	b .L_81492094
.L_8149208C:
/* 8149208C | 90 7F 00 00 */	stw r3, 0x0(r31)
/* 81492090 | 38 60 00 00 */	li r3, 0x0
.L_81492094:
/* 81492094 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81492098 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8149209C | 7C 08 03 A6 */	mtlr r0
/* 814920A0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814920A4 | 4E 80 00 20 */	blr
.endfn CDBFGetFileSizeSD

# 0x8166CB18..0x8166CB30 | size: 0x18
.data
.balign 8

# .data:0x0 | 0x8166CB18 | size: 0x18
.obj lbl_8166CB18, global
	.4byte 0x43444246
	.4byte 0x44656C65
	.4byte 0x74654669
	.4byte 0x6C655344
	.4byte 0x28292025
	.4byte 0x730A0000
.endobj lbl_8166CB18

# 0x81697A70..0x81697A80 | size: 0x10
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697A70 | size: 0x4
.obj lbl_81697A70, global
	.4byte 0x00000000
.endobj lbl_81697A70

# .sdata:0x4 | 0x81697A74 | size: 0x4
.obj lbl_81697A74, global
	.4byte 0x72000000
.endobj lbl_81697A74

# .sdata:0x8 | 0x81697A78 | size: 0x8
.obj lbl_81697A78, global
	.4byte 0x722B0000
	.4byte 0x00000000
.endobj lbl_81697A78
