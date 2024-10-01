.include "macros.inc"
.file "NWC24MsgRead.c"

# 0x814A861C..0x814AAD38 | size: 0x271C
.text
.balign 4

# .text:0x0 | 0x814A861C | size: 0x198
.fn NWC24ReadMsgField, global
/* 814A861C | 94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 814A8620 | 7C 08 02 A6 */	mflr r0
/* 814A8624 | 90 01 00 F4 */	stw r0, 0xf4(r1)
/* 814A8628 | 39 61 00 F0 */	addi r11, r1, 0xf0
/* 814A862C | 48 15 0E 95 */	bl _savegpr_27
/* 814A8630 | 7C 7B 1B 78 */	mr r27, r3
/* 814A8634 | 7C 9C 23 78 */	mr r28, r4
/* 814A8638 | 7C BD 2B 78 */	mr r29, r5
/* 814A863C | 7C DE 33 78 */	mr r30, r6
/* 814A8640 | 4B FF 7C B9 */	bl NWC24IsMsgLibOpened
/* 814A8644 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A8648 | 40 82 00 18 */	bne .L_814A8660
/* 814A864C | 4B FF 7C C1 */	bl NWC24IsMsgLibOpenedByTool
/* 814A8650 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A8654 | 40 82 00 0C */	bne .L_814A8660
/* 814A8658 | 38 60 FF F7 */	li r3, -0x9
/* 814A865C | 48 00 01 40 */	b .L_814A879C
.L_814A8660:
/* 814A8660 | 80 1B 00 04 */	lwz r0, 0x4(r27)
/* 814A8664 | 54 00 05 AD */	rlwinm. r0, r0, 0, 22, 22
/* 814A8668 | 40 82 00 0C */	bne .L_814A8674
/* 814A866C | 38 60 FF F9 */	li r3, -0x7
/* 814A8670 | 48 00 01 2C */	b .L_814A879C
.L_814A8674:
/* 814A8674 | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 814A8678 | 54 60 06 F7 */	rlwinm. r0, r3, 0, 27, 27
/* 814A867C | 41 82 00 0C */	beq .L_814A8688
/* 814A8680 | 38 A0 00 00 */	li r5, 0x0
/* 814A8684 | 48 00 00 1C */	b .L_814A86A0
.L_814A8688:
/* 814A8688 | 54 60 06 B5 */	rlwinm. r0, r3, 0, 26, 26
/* 814A868C | 41 82 00 0C */	beq .L_814A8698
/* 814A8690 | 38 A0 00 01 */	li r5, 0x1
/* 814A8694 | 48 00 00 0C */	b .L_814A86A0
.L_814A8698:
/* 814A8698 | 38 60 FF FD */	li r3, -0x3
/* 814A869C | 48 00 00 08 */	b .L_814A86A4
.L_814A86A0:
/* 814A86A0 | 38 60 00 00 */	li r3, 0x0
.L_814A86A4:
/* 814A86A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A86A8 | 41 82 00 08 */	beq .L_814A86B0
/* 814A86AC | 48 00 00 F0 */	b .L_814A879C
.L_814A86B0:
/* 814A86B0 | 80 9B 00 00 */	lwz r4, 0x0(r27)
/* 814A86B4 | 7C A3 2B 78 */	mr r3, r5
/* 814A86B8 | 38 A1 00 30 */	addi r5, r1, 0x30
/* 814A86BC | 4B FF 9F DD */	bl NWC24iMBoxOpenStoredMsg
/* 814A86C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A86C4 | 41 82 00 08 */	beq .L_814A86CC
/* 814A86C8 | 48 00 00 D4 */	b .L_814A879C
.L_814A86CC:
/* 814A86CC | 80 AD AD A0 */	lwz r5, NWC24WorkP_81698DE0@sda21(r0)
/* 814A86D0 | 38 61 00 14 */	addi r3, r1, 0x14
/* 814A86D4 | 80 DB 00 08 */	lwz r6, 0x8(r27)
/* 814A86D8 | 38 81 00 30 */	addi r4, r1, 0x30
/* 814A86DC | 38 E5 04 00 */	addi r7, r5, 0x400
/* 814A86E0 | 38 A0 00 00 */	li r5, 0x0
/* 814A86E4 | 39 00 04 00 */	li r8, 0x400
/* 814A86E8 | 4B FF D5 31 */	bl NWC24FStreamInit
/* 814A86EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A86F0 | 7C 7F 1B 78 */	mr r31, r3
/* 814A86F4 | 40 82 00 90 */	bne .L_814A8784
/* 814A86F8 | 80 BB 00 10 */	lwz r5, 0x10(r27)
/* 814A86FC | 7F 84 E3 78 */	mr r4, r28
/* 814A8700 | 38 61 00 14 */	addi r3, r1, 0x14
/* 814A8704 | 38 C1 00 0C */	addi r6, r1, 0xc
/* 814A8708 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814A870C | 4B FF DB 49 */	bl NWC24iSearchHeaderF
/* 814A8710 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A8714 | 7C 7F 1B 78 */	mr r31, r3
/* 814A8718 | 40 82 00 6C */	bne .L_814A8784
/* 814A871C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814A8720 | 7C 00 F0 40 */	cmplw r0, r30
/* 814A8724 | 40 81 00 0C */	ble .L_814A8730
/* 814A8728 | 3B E0 FF F8 */	li r31, -0x8
/* 814A872C | 48 00 00 58 */	b .L_814A8784
.L_814A8730:
/* 814A8730 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814A8734 | 38 61 00 14 */	addi r3, r1, 0x14
/* 814A8738 | 4B FF D6 6D */	bl NWC24FStreamSeek
/* 814A873C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A8740 | 7C 7F 1B 78 */	mr r31, r3
/* 814A8744 | 40 82 00 40 */	bne .L_814A8784
/* 814A8748 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 814A874C | 38 61 00 14 */	addi r3, r1, 0x14
/* 814A8750 | 38 81 00 10 */	addi r4, r1, 0x10
/* 814A8754 | 4B FF D6 71 */	bl NWC24FStreamGetPtr
/* 814A8758 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A875C | 7C 7F 1B 78 */	mr r31, r3
/* 814A8760 | 40 82 00 24 */	bne .L_814A8784
/* 814A8764 | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 814A8768 | 7F A3 EB 78 */	mr r3, r29
/* 814A876C | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 814A8770 | 4B FF 47 95 */	bl Mail_strncpy
/* 814A8774 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814A8778 | 38 80 00 00 */	li r4, 0x0
/* 814A877C | 7C 7D 02 14 */	add r3, r29, r0
/* 814A8780 | 98 83 FF FE */	stb r4, -0x2(r3)
.L_814A8784:
/* 814A8784 | 38 61 00 30 */	addi r3, r1, 0x30
/* 814A8788 | 4B FF A0 4D */	bl NWC24iMBoxCloseMsg
/* 814A878C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814A8790 | 40 82 00 08 */	bne .L_814A8798
/* 814A8794 | 7C 7F 1B 78 */	mr r31, r3
.L_814A8798:
/* 814A8798 | 7F E3 FB 78 */	mr r3, r31
.L_814A879C:
/* 814A879C | 39 61 00 F0 */	addi r11, r1, 0xf0
/* 814A87A0 | 48 15 0D 6D */	bl _restgpr_27
/* 814A87A4 | 80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 814A87A8 | 7C 08 03 A6 */	mtlr r0
/* 814A87AC | 38 21 00 F0 */	addi r1, r1, 0xf0
/* 814A87B0 | 4E 80 00 20 */	blr
.endfn NWC24ReadMsgField

# .text:0x198 | 0x814A87B4 | size: 0xD4
.fn NWC24ReadMsgFaceData, global
/* 814A87B4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814A87B8 | 7C 08 02 A6 */	mflr r0
/* 814A87BC | 80 A3 00 04 */	lwz r5, 0x4(r3)
/* 814A87C0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814A87C4 | 54 A0 07 BD */	rlwinm. r0, r5, 0, 30, 30
/* 814A87C8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814A87CC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814A87D0 | 7C 9E 23 78 */	mr r30, r4
/* 814A87D4 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814A87D8 | 7C 7D 1B 78 */	mr r29, r3
/* 814A87DC | 41 82 00 14 */	beq .L_814A87F0
/* 814A87E0 | 54 A0 04 E7 */	rlwinm. r0, r5, 0, 19, 19
/* 814A87E4 | 40 82 00 0C */	bne .L_814A87F0
/* 814A87E8 | 38 60 FF F3 */	li r3, -0xd
/* 814A87EC | 48 00 00 80 */	b .L_814A886C
.L_814A87F0:
/* 814A87F0 | 83 ED AD A0 */	lwz r31, NWC24WorkP_81698DE0@sda21(r0)
/* 814A87F4 | 38 80 00 00 */	li r4, 0x0
/* 814A87F8 | 38 A0 04 00 */	li r5, 0x400
/* 814A87FC | 7F E3 FB 78 */	mr r3, r31
/* 814A8800 | 4B FF 46 85 */	bl Mail_memset
/* 814A8804 | 3C 80 81 67 */	lis r4, lbl_8166DF78@ha
/* 814A8808 | 7F A3 EB 78 */	mr r3, r29
/* 814A880C | 7F E5 FB 78 */	mr r5, r31
/* 814A8810 | 38 C0 04 00 */	li r6, 0x400
/* 814A8814 | 38 84 DF 78 */	addi r4, r4, lbl_8166DF78@l
/* 814A8818 | 4B FF FE 05 */	bl NWC24ReadMsgField
/* 814A881C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A8820 | 41 82 00 08 */	beq .L_814A8828
/* 814A8824 | 48 00 00 48 */	b .L_814A886C
.L_814A8828:
/* 814A8828 | 7F E3 FB 78 */	mr r3, r31
/* 814A882C | 38 80 04 00 */	li r4, 0x400
/* 814A8830 | 4B FF 45 71 */	bl STD_strnlen
/* 814A8834 | 7C 64 1B 78 */	mr r4, r3
/* 814A8838 | 7F E3 FB 78 */	mr r3, r31
/* 814A883C | 7F C5 F3 78 */	mr r5, r30
/* 814A8840 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814A8844 | 38 C0 00 4A */	li r6, 0x4a
/* 814A8848 | 4B FF BD 35 */	bl NWC24Base64Decode
/* 814A884C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A8850 | 41 82 00 08 */	beq .L_814A8858
/* 814A8854 | 48 00 00 18 */	b .L_814A886C
.L_814A8858:
/* 814A8858 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814A885C | 38 60 00 00 */	li r3, 0x0
/* 814A8860 | 28 00 00 4A */	cmplwi r0, 0x4a
/* 814A8864 | 41 82 00 08 */	beq .L_814A886C
/* 814A8868 | 38 60 FF E8 */	li r3, -0x18
.L_814A886C:
/* 814A886C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814A8870 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814A8874 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814A8878 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814A887C | 7C 08 03 A6 */	mtlr r0
/* 814A8880 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814A8884 | 4E 80 00 20 */	blr
.endfn NWC24ReadMsgFaceData

# .text:0x26C | 0x814A8888 | size: 0xB8
.fn NWC24ReadMsgAltName, global
/* 814A8888 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814A888C | 7C 08 02 A6 */	mflr r0
/* 814A8890 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814A8894 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814A8898 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814A889C | 7C BE 2B 78 */	mr r30, r5
/* 814A88A0 | 38 A0 04 00 */	li r5, 0x400
/* 814A88A4 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814A88A8 | 7C 9D 23 78 */	mr r29, r4
/* 814A88AC | 38 80 00 00 */	li r4, 0x0
/* 814A88B0 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814A88B4 | 7C 7C 1B 78 */	mr r28, r3
/* 814A88B8 | 83 ED AD A0 */	lwz r31, NWC24WorkP_81698DE0@sda21(r0)
/* 814A88BC | 7F E3 FB 78 */	mr r3, r31
/* 814A88C0 | 4B FF 45 C5 */	bl Mail_memset
/* 814A88C4 | 3C 80 81 67 */	lis r4, lbl_8166DF84@ha
/* 814A88C8 | 7F 83 E3 78 */	mr r3, r28
/* 814A88CC | 7F E5 FB 78 */	mr r5, r31
/* 814A88D0 | 38 C0 04 00 */	li r6, 0x400
/* 814A88D4 | 38 84 DF 84 */	addi r4, r4, lbl_8166DF84@l
/* 814A88D8 | 4B FF FD 45 */	bl NWC24ReadMsgField
/* 814A88DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A88E0 | 41 82 00 08 */	beq .L_814A88E8
/* 814A88E4 | 48 00 00 3C */	b .L_814A8920
.L_814A88E8:
/* 814A88E8 | 7F E3 FB 78 */	mr r3, r31
/* 814A88EC | 38 80 04 00 */	li r4, 0x400
/* 814A88F0 | 4B FF 44 B1 */	bl STD_strnlen
/* 814A88F4 | 7C 64 1B 78 */	mr r4, r3
/* 814A88F8 | 7F E3 FB 78 */	mr r3, r31
/* 814A88FC | 7F A5 EB 78 */	mr r5, r29
/* 814A8900 | 57 C6 08 3C */	slwi r6, r30, 1
/* 814A8904 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814A8908 | 4B FF BC 75 */	bl NWC24Base64Decode
/* 814A890C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A8910 | 38 00 00 00 */	li r0, 0x0
/* 814A8914 | 41 82 00 08 */	beq .L_814A891C
/* 814A8918 | 7C 60 1B 78 */	mr r0, r3
.L_814A891C:
/* 814A891C | 7C 03 03 78 */	mr r3, r0
.L_814A8920:
/* 814A8920 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814A8924 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814A8928 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814A892C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814A8930 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814A8934 | 7C 08 03 A6 */	mtlr r0
/* 814A8938 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814A893C | 4E 80 00 20 */	blr
.endfn NWC24ReadMsgAltName

# .text:0x324 | 0x814A8940 | size: 0x90
.fn NWC24ReadMsgMBNoReply, global
/* 814A8940 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814A8944 | 7C 08 02 A6 */	mflr r0
/* 814A8948 | 38 A0 04 00 */	li r5, 0x400
/* 814A894C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814A8950 | 38 00 00 00 */	li r0, 0x0
/* 814A8954 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814A8958 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814A895C | 7C 9E 23 78 */	mr r30, r4
/* 814A8960 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814A8964 | 7C 7D 1B 78 */	mr r29, r3
/* 814A8968 | 90 04 00 00 */	stw r0, 0x0(r4)
/* 814A896C | 38 80 00 00 */	li r4, 0x0
/* 814A8970 | 83 ED AD A0 */	lwz r31, NWC24WorkP_81698DE0@sda21(r0)
/* 814A8974 | 7F E3 FB 78 */	mr r3, r31
/* 814A8978 | 4B FF 45 0D */	bl Mail_memset
/* 814A897C | 3C 80 81 67 */	lis r4, lbl_8166DF94@ha
/* 814A8980 | 7F A3 EB 78 */	mr r3, r29
/* 814A8984 | 7F E5 FB 78 */	mr r5, r31
/* 814A8988 | 38 C0 04 00 */	li r6, 0x400
/* 814A898C | 38 84 DF 94 */	addi r4, r4, lbl_8166DF94@l
/* 814A8990 | 4B FF FC 8D */	bl NWC24ReadMsgField
/* 814A8994 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A8998 | 40 82 00 10 */	bne .L_814A89A8
/* 814A899C | 38 00 00 01 */	li r0, 0x1
/* 814A89A0 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 814A89A4 | 48 00 00 10 */	b .L_814A89B4
.L_814A89A8:
/* 814A89A8 | 2C 03 FF F3 */	cmpwi r3, -0xd
/* 814A89AC | 40 82 00 08 */	bne .L_814A89B4
/* 814A89B0 | 38 60 00 00 */	li r3, 0x0
.L_814A89B4:
/* 814A89B4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814A89B8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814A89BC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814A89C0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814A89C4 | 7C 08 03 A6 */	mtlr r0
/* 814A89C8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814A89CC | 4E 80 00 20 */	blr
.endfn NWC24ReadMsgMBNoReply

# .text:0x3B4 | 0x814A89D0 | size: 0x108
.fn NWC24ReadMsgMBRegDate, global
/* 814A89D0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814A89D4 | 7C 08 02 A6 */	mflr r0
/* 814A89D8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814A89DC | 39 61 00 30 */	addi r11, r1, 0x30
/* 814A89E0 | 48 15 0A D5 */	bl _savegpr_24
/* 814A89E4 | 83 6D AD A0 */	lwz r27, NWC24WorkP_81698DE0@sda21(r0)
/* 814A89E8 | 7C 7F 1B 78 */	mr r31, r3
/* 814A89EC | 7C 98 23 78 */	mr r24, r4
/* 814A89F0 | 7C B9 2B 78 */	mr r25, r5
/* 814A89F4 | 7C DA 33 78 */	mr r26, r6
/* 814A89F8 | 7F 63 DB 78 */	mr r3, r27
/* 814A89FC | 3B C0 00 00 */	li r30, 0x0
/* 814A8A00 | 3B A0 00 00 */	li r29, 0x0
/* 814A8A04 | 3B 80 00 00 */	li r28, 0x0
/* 814A8A08 | 38 80 00 00 */	li r4, 0x0
/* 814A8A0C | 38 A0 04 00 */	li r5, 0x400
/* 814A8A10 | 4B FF 44 75 */	bl Mail_memset
/* 814A8A14 | 3C 80 81 67 */	lis r4, lbl_8166DFA8@ha
/* 814A8A18 | 7F E3 FB 78 */	mr r3, r31
/* 814A8A1C | 7F 65 DB 78 */	mr r5, r27
/* 814A8A20 | 38 C0 03 FF */	li r6, 0x3ff
/* 814A8A24 | 38 84 DF A8 */	addi r4, r4, lbl_8166DFA8@l
/* 814A8A28 | 4B FF FB F5 */	bl NWC24ReadMsgField
/* 814A8A2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A8A30 | 7C 7F 1B 78 */	mr r31, r3
/* 814A8A34 | 41 82 00 14 */	beq .L_814A8A48
/* 814A8A38 | 48 00 00 88 */	b .L_814A8AC0
/* 814A8A3C | 48 00 00 0C */	b .L_814A8A48
.L_814A8A40:
/* 814A8A40 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 814A8A44 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_814A8A48:
/* 814A8A48 | 88 1B 00 00 */	lbz r0, 0x0(r27)
/* 814A8A4C | 7C 00 07 74 */	extsb r0, r0
/* 814A8A50 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 814A8A54 | 41 82 FF EC */	beq .L_814A8A40
/* 814A8A58 | 2C 00 00 20 */	cmpwi r0, 0x20
/* 814A8A5C | 41 82 FF E4 */	beq .L_814A8A40
/* 814A8A60 | 48 00 00 2C */	b .L_814A8A8C
.L_814A8A64:
/* 814A8A64 | 88 1B 00 00 */	lbz r0, 0x0(r27)
/* 814A8A68 | 7C 03 07 74 */	extsb r3, r0
/* 814A8A6C | 4B FF 46 09 */	bl Util_xtoi
/* 814A8A70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A8A74 | 41 80 00 20 */	blt .L_814A8A94
/* 814A8A78 | 57 80 20 36 */	slwi r0, r28, 4
/* 814A8A7C | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814A8A80 | 7C 1C 1B 78 */	or r28, r0, r3
/* 814A8A84 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 814A8A88 | 3B 7B 00 01 */	addi r27, r27, 0x1
.L_814A8A8C:
/* 814A8A8C | 28 1E 04 00 */	cmplwi r30, 0x400
/* 814A8A90 | 41 80 FF D4 */	blt .L_814A8A64
.L_814A8A94:
/* 814A8A94 | 28 1D 00 04 */	cmplwi r29, 0x4
/* 814A8A98 | 41 82 00 08 */	beq .L_814A8AA0
/* 814A8A9C | 3B E0 FF E8 */	li r31, -0x18
.L_814A8AA0:
/* 814A8AA0 | 57 83 BE 7E */	extrwi r3, r28, 7, 16
/* 814A8AA4 | 57 84 DF 3E */	extrwi r4, r28, 4, 23
/* 814A8AA8 | 38 63 07 D0 */	addi r3, r3, 0x7d0
/* 814A8AAC | 57 80 06 FE */	clrlwi r0, r28, 27
/* 814A8AB0 | B0 78 00 00 */	sth r3, 0x0(r24)
/* 814A8AB4 | 7F E3 FB 78 */	mr r3, r31
/* 814A8AB8 | 98 99 00 00 */	stb r4, 0x0(r25)
/* 814A8ABC | 98 1A 00 00 */	stb r0, 0x0(r26)
.L_814A8AC0:
/* 814A8AC0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814A8AC4 | 48 15 0A 3D */	bl _restgpr_24
/* 814A8AC8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814A8ACC | 7C 08 03 A6 */	mtlr r0
/* 814A8AD0 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814A8AD4 | 4E 80 00 20 */	blr
.endfn NWC24ReadMsgMBRegDate

# .text:0x4BC | 0x814A8AD8 | size: 0xE8
.fn NWC24ReadMsgMBDelay, global
/* 814A8AD8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814A8ADC | 7C 08 02 A6 */	mflr r0
/* 814A8AE0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814A8AE4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814A8AE8 | 48 15 09 D5 */	bl _savegpr_26
/* 814A8AEC | 83 6D AD A0 */	lwz r27, NWC24WorkP_81698DE0@sda21(r0)
/* 814A8AF0 | 7C 7F 1B 78 */	mr r31, r3
/* 814A8AF4 | 7C 9A 23 78 */	mr r26, r4
/* 814A8AF8 | 3B C0 00 00 */	li r30, 0x0
/* 814A8AFC | 7F 63 DB 78 */	mr r3, r27
/* 814A8B00 | 3B A0 00 00 */	li r29, 0x0
/* 814A8B04 | 3B 80 00 00 */	li r28, 0x0
/* 814A8B08 | 38 80 00 00 */	li r4, 0x0
/* 814A8B0C | 38 A0 04 00 */	li r5, 0x400
/* 814A8B10 | 4B FF 43 75 */	bl Mail_memset
/* 814A8B14 | 3C 80 81 67 */	lis r4, lbl_8166DFC0@ha
/* 814A8B18 | 7F E3 FB 78 */	mr r3, r31
/* 814A8B1C | 7F 65 DB 78 */	mr r5, r27
/* 814A8B20 | 38 C0 03 FF */	li r6, 0x3ff
/* 814A8B24 | 38 84 DF C0 */	addi r4, r4, lbl_8166DFC0@l
/* 814A8B28 | 4B FF FA F5 */	bl NWC24ReadMsgField
/* 814A8B2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A8B30 | 7C 7F 1B 78 */	mr r31, r3
/* 814A8B34 | 41 82 00 14 */	beq .L_814A8B48
/* 814A8B38 | 48 00 00 70 */	b .L_814A8BA8
/* 814A8B3C | 48 00 00 0C */	b .L_814A8B48
.L_814A8B40:
/* 814A8B40 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 814A8B44 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_814A8B48:
/* 814A8B48 | 88 1B 00 00 */	lbz r0, 0x0(r27)
/* 814A8B4C | 7C 00 07 74 */	extsb r0, r0
/* 814A8B50 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 814A8B54 | 41 82 FF EC */	beq .L_814A8B40
/* 814A8B58 | 2C 00 00 20 */	cmpwi r0, 0x20
/* 814A8B5C | 41 82 FF E4 */	beq .L_814A8B40
/* 814A8B60 | 48 00 00 2C */	b .L_814A8B8C
.L_814A8B64:
/* 814A8B64 | 88 1B 00 00 */	lbz r0, 0x0(r27)
/* 814A8B68 | 7C 03 07 74 */	extsb r3, r0
/* 814A8B6C | 4B FF 45 09 */	bl Util_xtoi
/* 814A8B70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A8B74 | 41 80 00 20 */	blt .L_814A8B94
/* 814A8B78 | 57 80 20 36 */	slwi r0, r28, 4
/* 814A8B7C | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814A8B80 | 7C 1C 1B 78 */	or r28, r0, r3
/* 814A8B84 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 814A8B88 | 3B 7B 00 01 */	addi r27, r27, 0x1
.L_814A8B8C:
/* 814A8B8C | 28 1E 04 00 */	cmplwi r30, 0x400
/* 814A8B90 | 41 80 FF D4 */	blt .L_814A8B64
.L_814A8B94:
/* 814A8B94 | 28 1D 00 02 */	cmplwi r29, 0x2
/* 814A8B98 | 41 82 00 08 */	beq .L_814A8BA0
/* 814A8B9C | 3B E0 FF E8 */	li r31, -0x18
.L_814A8BA0:
/* 814A8BA0 | 9B 9A 00 00 */	stb r28, 0x0(r26)
/* 814A8BA4 | 7F E3 FB 78 */	mr r3, r31
.L_814A8BA8:
/* 814A8BA8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814A8BAC | 48 15 09 5D */	bl _restgpr_26
/* 814A8BB0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814A8BB4 | 7C 08 03 A6 */	mtlr r0
/* 814A8BB8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814A8BBC | 4E 80 00 20 */	blr
.endfn NWC24ReadMsgMBDelay

# .text:0x5A4 | 0x814A8BC0 | size: 0xE0
.fn NWC24ReadMsgMBUpdateSW, global
/* 814A8BC0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814A8BC4 | 7C 08 02 A6 */	mflr r0
/* 814A8BC8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814A8BCC | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 814A8BD0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814A8BD4 | 7C 7F 1B 78 */	mr r31, r3
/* 814A8BD8 | 54 00 04 E7 */	rlwinm. r0, r0, 0, 19, 19
/* 814A8BDC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814A8BE0 | 3B C0 00 00 */	li r30, 0x0
/* 814A8BE4 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814A8BE8 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814A8BEC | 7C 9C 23 78 */	mr r28, r4
/* 814A8BF0 | 40 82 00 14 */	bne .L_814A8C04
/* 814A8BF4 | 38 00 00 00 */	li r0, 0x0
/* 814A8BF8 | 38 60 FF F3 */	li r3, -0xd
/* 814A8BFC | 90 04 00 00 */	stw r0, 0x0(r4)
/* 814A8C00 | 48 00 00 80 */	b .L_814A8C80
.L_814A8C04:
/* 814A8C04 | 83 AD AD A0 */	lwz r29, NWC24WorkP_81698DE0@sda21(r0)
/* 814A8C08 | 38 80 00 00 */	li r4, 0x0
/* 814A8C0C | 38 A0 04 00 */	li r5, 0x400
/* 814A8C10 | 7F A3 EB 78 */	mr r3, r29
/* 814A8C14 | 4B FF 42 71 */	bl Mail_memset
/* 814A8C18 | 3C 80 81 67 */	lis r4, lbl_8166DFD0@ha
/* 814A8C1C | 7F E3 FB 78 */	mr r3, r31
/* 814A8C20 | 7F A5 EB 78 */	mr r5, r29
/* 814A8C24 | 38 C0 03 FF */	li r6, 0x3ff
/* 814A8C28 | 38 84 DF D0 */	addi r4, r4, lbl_8166DFD0@l
/* 814A8C2C | 4B FF F9 F1 */	bl NWC24ReadMsgField
/* 814A8C30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A8C34 | 7C 7F 1B 78 */	mr r31, r3
/* 814A8C38 | 41 82 00 10 */	beq .L_814A8C48
/* 814A8C3C | 48 00 00 44 */	b .L_814A8C80
/* 814A8C40 | 48 00 00 08 */	b .L_814A8C48
.L_814A8C44:
/* 814A8C44 | 3B BD 00 01 */	addi r29, r29, 0x1
.L_814A8C48:
/* 814A8C48 | 88 1D 00 00 */	lbz r0, 0x0(r29)
/* 814A8C4C | 7C 03 07 74 */	extsb r3, r0
/* 814A8C50 | 2C 03 00 09 */	cmpwi r3, 0x9
/* 814A8C54 | 41 82 FF F0 */	beq .L_814A8C44
/* 814A8C58 | 2C 03 00 20 */	cmpwi r3, 0x20
/* 814A8C5C | 41 82 FF E8 */	beq .L_814A8C44
/* 814A8C60 | 4B FF 43 F5 */	bl Mail_isdigit
/* 814A8C64 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A8C68 | 41 82 00 10 */	beq .L_814A8C78
/* 814A8C6C | 88 1D 00 00 */	lbz r0, 0x0(r29)
/* 814A8C70 | 7C 03 07 74 */	extsb r3, r0
/* 814A8C74 | 3B C3 FF D0 */	subi r30, r3, 0x30
.L_814A8C78:
/* 814A8C78 | 93 DC 00 00 */	stw r30, 0x0(r28)
/* 814A8C7C | 7F E3 FB 78 */	mr r3, r31
.L_814A8C80:
/* 814A8C80 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814A8C84 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814A8C88 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814A8C8C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814A8C90 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814A8C94 | 7C 08 03 A6 */	mtlr r0
/* 814A8C98 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814A8C9C | 4E 80 00 20 */	blr
.endfn NWC24ReadMsgMBUpdateSW

# .text:0x684 | 0x814A8CA0 | size: 0x134
.fn NWC24ReadMsgMBOptOutFlag, global
/* 814A8CA0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814A8CA4 | 7C 08 02 A6 */	mflr r0
/* 814A8CA8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814A8CAC | 39 61 00 30 */	addi r11, r1, 0x30
/* 814A8CB0 | 48 15 08 09 */	bl _savegpr_25
/* 814A8CB4 | 83 6D AD A0 */	lwz r27, NWC24WorkP_81698DE0@sda21(r0)
/* 814A8CB8 | 7C 7F 1B 78 */	mr r31, r3
/* 814A8CBC | 7C 99 23 78 */	mr r25, r4
/* 814A8CC0 | 7C BA 2B 78 */	mr r26, r5
/* 814A8CC4 | 7F 63 DB 78 */	mr r3, r27
/* 814A8CC8 | 3B C0 00 00 */	li r30, 0x0
/* 814A8CCC | 3B A0 00 00 */	li r29, 0x0
/* 814A8CD0 | 3B 80 00 00 */	li r28, 0x0
/* 814A8CD4 | 38 80 00 00 */	li r4, 0x0
/* 814A8CD8 | 38 A0 04 00 */	li r5, 0x400
/* 814A8CDC | 4B FF 41 A9 */	bl Mail_memset
/* 814A8CE0 | 38 00 00 00 */	li r0, 0x0
/* 814A8CE4 | 3C 80 81 67 */	lis r4, lbl_8166DFE4@ha
/* 814A8CE8 | 90 19 00 00 */	stw r0, 0x0(r25)
/* 814A8CEC | 7F E3 FB 78 */	mr r3, r31
/* 814A8CF0 | 7F 65 DB 78 */	mr r5, r27
/* 814A8CF4 | 38 84 DF E4 */	addi r4, r4, lbl_8166DFE4@l
/* 814A8CF8 | 90 1A 00 00 */	stw r0, 0x0(r26)
/* 814A8CFC | 38 C0 03 FF */	li r6, 0x3ff
/* 814A8D00 | 4B FF F9 1D */	bl NWC24ReadMsgField
/* 814A8D04 | 2C 03 FF F3 */	cmpwi r3, -0xd
/* 814A8D08 | 7C 7F 1B 78 */	mr r31, r3
/* 814A8D0C | 40 82 00 0C */	bne .L_814A8D18
/* 814A8D10 | 38 60 00 00 */	li r3, 0x0
/* 814A8D14 | 48 00 00 A8 */	b .L_814A8DBC
.L_814A8D18:
/* 814A8D18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A8D1C | 41 82 00 14 */	beq .L_814A8D30
/* 814A8D20 | 48 00 00 9C */	b .L_814A8DBC
/* 814A8D24 | 48 00 00 0C */	b .L_814A8D30
.L_814A8D28:
/* 814A8D28 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 814A8D2C | 3B DE 00 01 */	addi r30, r30, 0x1
.L_814A8D30:
/* 814A8D30 | 88 1B 00 00 */	lbz r0, 0x0(r27)
/* 814A8D34 | 7C 00 07 74 */	extsb r0, r0
/* 814A8D38 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 814A8D3C | 41 82 FF EC */	beq .L_814A8D28
/* 814A8D40 | 2C 00 00 20 */	cmpwi r0, 0x20
/* 814A8D44 | 41 82 FF E4 */	beq .L_814A8D28
/* 814A8D48 | 2C 00 00 31 */	cmpwi r0, 0x31
/* 814A8D4C | 40 82 00 0C */	bne .L_814A8D58
/* 814A8D50 | 38 00 00 01 */	li r0, 0x1
/* 814A8D54 | 90 19 00 00 */	stw r0, 0x0(r25)
.L_814A8D58:
/* 814A8D58 | 88 1B 00 01 */	lbz r0, 0x1(r27)
/* 814A8D5C | 3B 7B 00 02 */	addi r27, r27, 0x2
/* 814A8D60 | 2C 00 00 2D */	cmpwi r0, 0x2d
/* 814A8D64 | 41 82 00 0C */	beq .L_814A8D70
/* 814A8D68 | 38 60 00 00 */	li r3, 0x0
/* 814A8D6C | 48 00 00 50 */	b .L_814A8DBC
.L_814A8D70:
/* 814A8D70 | 3B DE 00 02 */	addi r30, r30, 0x2
/* 814A8D74 | 48 00 00 2C */	b .L_814A8DA0
.L_814A8D78:
/* 814A8D78 | 88 1B 00 00 */	lbz r0, 0x0(r27)
/* 814A8D7C | 7C 03 07 74 */	extsb r3, r0
/* 814A8D80 | 4B FF 42 F5 */	bl Util_xtoi
/* 814A8D84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A8D88 | 41 80 00 20 */	blt .L_814A8DA8
/* 814A8D8C | 57 80 20 36 */	slwi r0, r28, 4
/* 814A8D90 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814A8D94 | 7C 1C 1B 78 */	or r28, r0, r3
/* 814A8D98 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 814A8D9C | 3B 7B 00 01 */	addi r27, r27, 0x1
.L_814A8DA0:
/* 814A8DA0 | 28 1E 04 00 */	cmplwi r30, 0x400
/* 814A8DA4 | 41 80 FF D4 */	blt .L_814A8D78
.L_814A8DA8:
/* 814A8DA8 | 28 1D 00 08 */	cmplwi r29, 0x8
/* 814A8DAC | 41 82 00 08 */	beq .L_814A8DB4
/* 814A8DB0 | 3B E0 FF E8 */	li r31, -0x18
.L_814A8DB4:
/* 814A8DB4 | 93 9A 00 00 */	stw r28, 0x0(r26)
/* 814A8DB8 | 7F E3 FB 78 */	mr r3, r31
.L_814A8DBC:
/* 814A8DBC | 39 61 00 30 */	addi r11, r1, 0x30
/* 814A8DC0 | 48 15 07 45 */	bl _restgpr_25
/* 814A8DC4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814A8DC8 | 7C 08 03 A6 */	mtlr r0
/* 814A8DCC | 38 21 00 30 */	addi r1, r1, 0x30
/* 814A8DD0 | 4E 80 00 20 */	blr
.endfn NWC24ReadMsgMBOptOutFlag

# .text:0x7B8 | 0x814A8DD4 | size: 0x170
.fn NWC24ReadMsgFromAddr, global
/* 814A8DD4 | 94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 814A8DD8 | 7C 08 02 A6 */	mflr r0
/* 814A8DDC | 90 01 00 E4 */	stw r0, 0xe4(r1)
/* 814A8DE0 | 39 61 00 E0 */	addi r11, r1, 0xe0
/* 814A8DE4 | 48 15 06 DD */	bl _savegpr_27
/* 814A8DE8 | 7C 7B 1B 78 */	mr r27, r3
/* 814A8DEC | 7C 9C 23 78 */	mr r28, r4
/* 814A8DF0 | 7C BD 2B 78 */	mr r29, r5
/* 814A8DF4 | 4B FF 75 05 */	bl NWC24IsMsgLibOpened
/* 814A8DF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A8DFC | 40 82 00 18 */	bne .L_814A8E14
/* 814A8E00 | 4B FF 75 0D */	bl NWC24IsMsgLibOpenedByTool
/* 814A8E04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A8E08 | 40 82 00 0C */	bne .L_814A8E14
/* 814A8E0C | 38 60 FF F7 */	li r3, -0x9
/* 814A8E10 | 48 00 01 1C */	b .L_814A8F2C
.L_814A8E14:
/* 814A8E14 | 80 1B 00 04 */	lwz r0, 0x4(r27)
/* 814A8E18 | 54 00 05 AD */	rlwinm. r0, r0, 0, 22, 22
/* 814A8E1C | 40 82 00 0C */	bne .L_814A8E28
/* 814A8E20 | 38 60 FF F9 */	li r3, -0x7
/* 814A8E24 | 48 00 01 08 */	b .L_814A8F2C
.L_814A8E28:
/* 814A8E28 | 83 ED AD A0 */	lwz r31, NWC24WorkP_81698DE0@sda21(r0)
/* 814A8E2C | 38 80 00 00 */	li r4, 0x0
/* 814A8E30 | 38 A0 04 00 */	li r5, 0x400
/* 814A8E34 | 7F E3 FB 78 */	mr r3, r31
/* 814A8E38 | 4B FF 40 4D */	bl Mail_memset
/* 814A8E3C | 80 1B 00 04 */	lwz r0, 0x4(r27)
/* 814A8E40 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814A8E44 | 40 82 00 0C */	bne .L_814A8E50
/* 814A8E48 | 38 60 FF FC */	li r3, -0x4
/* 814A8E4C | 48 00 00 E0 */	b .L_814A8F2C
.L_814A8E50:
/* 814A8E50 | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 814A8E54 | 54 60 06 F7 */	rlwinm. r0, r3, 0, 27, 27
/* 814A8E58 | 41 82 00 0C */	beq .L_814A8E64
/* 814A8E5C | 3B C0 00 00 */	li r30, 0x0
/* 814A8E60 | 48 00 00 1C */	b .L_814A8E7C
.L_814A8E64:
/* 814A8E64 | 54 60 06 B5 */	rlwinm. r0, r3, 0, 26, 26
/* 814A8E68 | 41 82 00 0C */	beq .L_814A8E74
/* 814A8E6C | 3B C0 00 01 */	li r30, 0x1
/* 814A8E70 | 48 00 00 0C */	b .L_814A8E7C
.L_814A8E74:
/* 814A8E74 | 38 60 FF FD */	li r3, -0x3
/* 814A8E78 | 48 00 00 08 */	b .L_814A8E80
.L_814A8E7C:
/* 814A8E7C | 38 60 00 00 */	li r3, 0x0
.L_814A8E80:
/* 814A8E80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A8E84 | 41 82 00 08 */	beq .L_814A8E8C
/* 814A8E88 | 48 00 00 A4 */	b .L_814A8F2C
.L_814A8E8C:
/* 814A8E8C | 80 1B 00 34 */	lwz r0, 0x34(r27)
/* 814A8E90 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A8E94 | 40 82 00 0C */	bne .L_814A8EA0
/* 814A8E98 | 38 60 FF FB */	li r3, -0x5
/* 814A8E9C | 48 00 00 90 */	b .L_814A8F2C
.L_814A8EA0:
/* 814A8EA0 | 80 9B 00 00 */	lwz r4, 0x0(r27)
/* 814A8EA4 | 7F C3 F3 78 */	mr r3, r30
/* 814A8EA8 | 38 A1 00 24 */	addi r5, r1, 0x24
/* 814A8EAC | 4B FF 97 ED */	bl NWC24iMBoxOpenStoredMsg
/* 814A8EB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A8EB4 | 41 82 00 08 */	beq .L_814A8EBC
/* 814A8EB8 | 48 00 00 74 */	b .L_814A8F2C
.L_814A8EBC:
/* 814A8EBC | 80 DB 00 08 */	lwz r6, 0x8(r27)
/* 814A8EC0 | 7F E7 FB 78 */	mr r7, r31
/* 814A8EC4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814A8EC8 | 38 81 00 24 */	addi r4, r1, 0x24
/* 814A8ECC | 38 A0 00 00 */	li r5, 0x0
/* 814A8ED0 | 39 00 04 00 */	li r8, 0x400
/* 814A8ED4 | 4B FF CD 45 */	bl NWC24FStreamInit
/* 814A8ED8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A8EDC | 7C 7F 1B 78 */	mr r31, r3
/* 814A8EE0 | 40 82 00 38 */	bne .L_814A8F18
/* 814A8EE4 | 80 9B 00 30 */	lwz r4, 0x30(r27)
/* 814A8EE8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814A8EEC | 4B FF CE B9 */	bl NWC24FStreamSeek
/* 814A8EF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A8EF4 | 7C 7F 1B 78 */	mr r31, r3
/* 814A8EF8 | 40 82 00 20 */	bne .L_814A8F18
/* 814A8EFC | 80 9B 00 34 */	lwz r4, 0x34(r27)
/* 814A8F00 | 7F 86 E3 78 */	mr r6, r28
/* 814A8F04 | 7F A7 EB 78 */	mr r7, r29
/* 814A8F08 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814A8F0C | 38 A0 00 00 */	li r5, 0x0
/* 814A8F10 | 4B FF D1 C9 */	bl NWC24iExtractAddrSpec
/* 814A8F14 | 7C 7F 1B 78 */	mr r31, r3
.L_814A8F18:
/* 814A8F18 | 38 61 00 24 */	addi r3, r1, 0x24
/* 814A8F1C | 4B FF 98 B9 */	bl NWC24iMBoxCloseMsg
/* 814A8F20 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814A8F24 | 41 82 00 08 */	beq .L_814A8F2C
/* 814A8F28 | 7F E3 FB 78 */	mr r3, r31
.L_814A8F2C:
/* 814A8F2C | 39 61 00 E0 */	addi r11, r1, 0xe0
/* 814A8F30 | 48 15 05 DD */	bl _restgpr_27
/* 814A8F34 | 80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 814A8F38 | 7C 08 03 A6 */	mtlr r0
/* 814A8F3C | 38 21 00 E0 */	addi r1, r1, 0xe0
/* 814A8F40 | 4E 80 00 20 */	blr
.endfn NWC24ReadMsgFromAddr

# .text:0x928 | 0x814A8F44 | size: 0x148
.fn NWC24ReadMsgSubject, global
/* 814A8F44 | 94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 814A8F48 | 7C 08 02 A6 */	mflr r0
/* 814A8F4C | 90 01 00 C4 */	stw r0, 0xc4(r1)
/* 814A8F50 | 39 61 00 C0 */	addi r11, r1, 0xc0
/* 814A8F54 | 48 15 05 6D */	bl _savegpr_27
/* 814A8F58 | 7C 7B 1B 78 */	mr r27, r3
/* 814A8F5C | 7C 9C 23 78 */	mr r28, r4
/* 814A8F60 | 7C BD 2B 78 */	mr r29, r5
/* 814A8F64 | 4B FF 73 95 */	bl NWC24IsMsgLibOpened
/* 814A8F68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A8F6C | 40 82 00 18 */	bne .L_814A8F84
/* 814A8F70 | 4B FF 73 9D */	bl NWC24IsMsgLibOpenedByTool
/* 814A8F74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A8F78 | 40 82 00 0C */	bne .L_814A8F84
/* 814A8F7C | 38 60 FF F7 */	li r3, -0x9
/* 814A8F80 | 48 00 00 F4 */	b .L_814A9074
.L_814A8F84:
/* 814A8F84 | 80 1B 00 04 */	lwz r0, 0x4(r27)
/* 814A8F88 | 54 00 05 AD */	rlwinm. r0, r0, 0, 22, 22
/* 814A8F8C | 40 82 00 0C */	bne .L_814A8F98
/* 814A8F90 | 38 60 FF F9 */	li r3, -0x7
/* 814A8F94 | 48 00 00 E0 */	b .L_814A9074
.L_814A8F98:
/* 814A8F98 | 80 7B 00 04 */	lwz r3, 0x4(r27)
/* 814A8F9C | 54 60 06 F7 */	rlwinm. r0, r3, 0, 27, 27
/* 814A8FA0 | 41 82 00 0C */	beq .L_814A8FAC
/* 814A8FA4 | 38 A0 00 00 */	li r5, 0x0
/* 814A8FA8 | 48 00 00 1C */	b .L_814A8FC4
.L_814A8FAC:
/* 814A8FAC | 54 60 06 B5 */	rlwinm. r0, r3, 0, 26, 26
/* 814A8FB0 | 41 82 00 0C */	beq .L_814A8FBC
/* 814A8FB4 | 38 A0 00 01 */	li r5, 0x1
/* 814A8FB8 | 48 00 00 0C */	b .L_814A8FC4
.L_814A8FBC:
/* 814A8FBC | 38 60 FF FD */	li r3, -0x3
/* 814A8FC0 | 48 00 00 08 */	b .L_814A8FC8
.L_814A8FC4:
/* 814A8FC4 | 38 60 00 00 */	li r3, 0x0
.L_814A8FC8:
/* 814A8FC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A8FCC | 41 82 00 08 */	beq .L_814A8FD4
/* 814A8FD0 | 48 00 00 A4 */	b .L_814A9074
.L_814A8FD4:
/* 814A8FD4 | 83 DB 00 44 */	lwz r30, 0x44(r27)
/* 814A8FD8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814A8FDC | 40 82 00 0C */	bne .L_814A8FE8
/* 814A8FE0 | 38 60 FF FB */	li r3, -0x5
/* 814A8FE4 | 48 00 00 90 */	b .L_814A9074
.L_814A8FE8:
/* 814A8FE8 | 80 9B 00 00 */	lwz r4, 0x0(r27)
/* 814A8FEC | 7C A3 2B 78 */	mr r3, r5
/* 814A8FF0 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814A8FF4 | 4B FF 96 A5 */	bl NWC24iMBoxOpenStoredMsg
/* 814A8FF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A8FFC | 41 82 00 08 */	beq .L_814A9004
/* 814A9000 | 48 00 00 74 */	b .L_814A9074
.L_814A9004:
/* 814A9004 | 38 1D FF FF */	subi r0, r29, 0x1
/* 814A9008 | 7C 1E 00 40 */	cmplw r30, r0
/* 814A900C | 40 81 00 08 */	ble .L_814A9014
/* 814A9010 | 7C 1E 03 78 */	mr r30, r0
.L_814A9014:
/* 814A9014 | 80 9B 00 40 */	lwz r4, 0x40(r27)
/* 814A9018 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814A901C | 38 A0 00 00 */	li r5, 0x0
/* 814A9020 | 4B FF 50 D5 */	bl NWC24FSeek
/* 814A9024 | 7F 83 E3 78 */	mr r3, r28
/* 814A9028 | 7F C4 F3 78 */	mr r4, r30
/* 814A902C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814A9030 | 4B FF 52 B5 */	bl NWC24FRead
/* 814A9034 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A9038 | 7C 7F 1B 78 */	mr r31, r3
/* 814A903C | 40 82 00 20 */	bne .L_814A905C
/* 814A9040 | 80 7B 00 44 */	lwz r3, 0x44(r27)
/* 814A9044 | 38 1D FF FF */	subi r0, r29, 0x1
/* 814A9048 | 38 80 00 00 */	li r4, 0x0
/* 814A904C | 7C 03 00 40 */	cmplw r3, r0
/* 814A9050 | 7C 9C F1 AE */	stbx r4, r28, r30
/* 814A9054 | 40 81 00 08 */	ble .L_814A905C
/* 814A9058 | 3B E0 FF F8 */	li r31, -0x8
.L_814A905C:
/* 814A905C | 38 61 00 08 */	addi r3, r1, 0x8
/* 814A9060 | 4B FF 97 75 */	bl NWC24iMBoxCloseMsg
/* 814A9064 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814A9068 | 40 82 00 08 */	bne .L_814A9070
/* 814A906C | 7C 7F 1B 78 */	mr r31, r3
.L_814A9070:
/* 814A9070 | 7F E3 FB 78 */	mr r3, r31
.L_814A9074:
/* 814A9074 | 39 61 00 C0 */	addi r11, r1, 0xc0
/* 814A9078 | 48 15 04 95 */	bl _restgpr_27
/* 814A907C | 80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 814A9080 | 7C 08 03 A6 */	mtlr r0
/* 814A9084 | 38 21 00 C0 */	addi r1, r1, 0xc0
/* 814A9088 | 4E 80 00 20 */	blr
.endfn NWC24ReadMsgSubject

# .text:0xA70 | 0x814A908C | size: 0x5C
.fn NWC24ReadMsgText, global
/* 814A908C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814A9090 | 7C 08 02 A6 */	mflr r0
/* 814A9094 | 7C E8 3B 78 */	mr r8, r7
/* 814A9098 | 38 E0 00 40 */	li r7, 0x40
/* 814A909C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814A90A0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814A90A4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814A90A8 | 7C DE 33 78 */	mr r30, r6
/* 814A90AC | 81 2D AD A0 */	lwz r9, NWC24WorkP_81698DE0@sda21(r0)
/* 814A90B0 | 3B E9 00 20 */	addi r31, r9, 0x20
/* 814A90B4 | 7F E6 FB 78 */	mr r6, r31
/* 814A90B8 | 48 00 00 E9 */	bl ReadMsgTextInternal
/* 814A90BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A90C0 | 40 82 00 10 */	bne .L_814A90D0
/* 814A90C4 | 7F C3 F3 78 */	mr r3, r30
/* 814A90C8 | 7F E4 FB 78 */	mr r4, r31
/* 814A90CC | 4B FF CE ED */	bl NWC24ParseCharsetStr
.L_814A90D0:
/* 814A90D0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814A90D4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814A90D8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814A90DC | 7C 08 03 A6 */	mtlr r0
/* 814A90E0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814A90E4 | 4E 80 00 20 */	blr
.endfn NWC24ReadMsgText

# .text:0xACC | 0x814A90E8 | size: 0xB8
.fn NWC24ReadMsgTextEx, global
/* 814A90E8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814A90EC | 7C 08 02 A6 */	mflr r0
/* 814A90F0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814A90F4 | 39 01 00 08 */	addi r8, r1, 0x8
/* 814A90F8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814A90FC | 7C FF 3B 78 */	mr r31, r7
/* 814A9100 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814A9104 | 7C DE 33 78 */	mr r30, r6
/* 814A9108 | 48 00 00 99 */	bl ReadMsgTextInternal
/* 814A910C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A9110 | 40 82 00 78 */	bne .L_814A9188
/* 814A9114 | 38 80 00 00 */	li r4, 0x0
/* 814A9118 | 7F E9 03 A6 */	mtctr r31
/* 814A911C | 28 1F 00 00 */	cmplwi r31, 0x0
/* 814A9120 | 40 81 00 68 */	ble .L_814A9188
.L_814A9124:
/* 814A9124 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 814A9128 | 7C 00 07 74 */	extsb r0, r0
/* 814A912C | 2C 00 00 20 */	cmpwi r0, 0x20
/* 814A9130 | 41 82 00 40 */	beq .L_814A9170
/* 814A9134 | 40 80 00 24 */	bge .L_814A9158
/* 814A9138 | 2C 00 00 0D */	cmpwi r0, 0xd
/* 814A913C | 41 82 00 34 */	beq .L_814A9170
/* 814A9140 | 40 80 00 34 */	bge .L_814A9174
/* 814A9144 | 2C 00 00 0B */	cmpwi r0, 0xb
/* 814A9148 | 40 80 00 2C */	bge .L_814A9174
/* 814A914C | 2C 00 00 09 */	cmpwi r0, 0x9
/* 814A9150 | 40 80 00 20 */	bge .L_814A9170
/* 814A9154 | 48 00 00 20 */	b .L_814A9174
.L_814A9158:
/* 814A9158 | 2C 00 00 3B */	cmpwi r0, 0x3b
/* 814A915C | 41 82 00 14 */	beq .L_814A9170
/* 814A9160 | 40 80 00 14 */	bge .L_814A9174
/* 814A9164 | 2C 00 00 22 */	cmpwi r0, 0x22
/* 814A9168 | 41 82 00 08 */	beq .L_814A9170
/* 814A916C | 48 00 00 08 */	b .L_814A9174
.L_814A9170:
/* 814A9170 | 98 9E 00 00 */	stb r4, 0x0(r30)
.L_814A9174:
/* 814A9174 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 814A9178 | 7C 00 07 75 */	extsb. r0, r0
/* 814A917C | 41 82 00 0C */	beq .L_814A9188
/* 814A9180 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814A9184 | 42 00 FF A0 */	bdnz .L_814A9124
.L_814A9188:
/* 814A9188 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814A918C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814A9190 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814A9194 | 7C 08 03 A6 */	mtlr r0
/* 814A9198 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814A919C | 4E 80 00 20 */	blr
.endfn NWC24ReadMsgTextEx

# .text:0xB84 | 0x814A91A0 | size: 0x2C8
.fn ReadMsgTextInternal, local
/* 814A91A0 | 94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 814A91A4 | 7C 08 02 A6 */	mflr r0
/* 814A91A8 | 90 01 00 D4 */	stw r0, 0xd4(r1)
/* 814A91AC | 39 61 00 D0 */	addi r11, r1, 0xd0
/* 814A91B0 | 48 15 03 01 */	bl _savegpr_23
/* 814A91B4 | 7C 7E 1B 78 */	mr r30, r3
/* 814A91B8 | 7C 9D 23 78 */	mr r29, r4
/* 814A91BC | 7C B7 2B 78 */	mr r23, r5
/* 814A91C0 | 7C D8 33 78 */	mr r24, r6
/* 814A91C4 | 7C FC 3B 78 */	mr r28, r7
/* 814A91C8 | 7D 19 43 78 */	mr r25, r8
/* 814A91CC | 3B E0 00 00 */	li r31, 0x0
/* 814A91D0 | 4B FF 71 29 */	bl NWC24IsMsgLibOpened
/* 814A91D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A91D8 | 40 82 00 18 */	bne .L_814A91F0
/* 814A91DC | 4B FF 71 31 */	bl NWC24IsMsgLibOpenedByTool
/* 814A91E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A91E4 | 40 82 00 0C */	bne .L_814A91F0
/* 814A91E8 | 38 60 FF F7 */	li r3, -0x9
/* 814A91EC | 48 00 02 64 */	b .L_814A9450
.L_814A91F0:
/* 814A91F0 | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 814A91F4 | 54 00 05 AD */	rlwinm. r0, r0, 0, 22, 22
/* 814A91F8 | 40 82 00 0C */	bne .L_814A9204
/* 814A91FC | 38 60 FF F9 */	li r3, -0x7
/* 814A9200 | 48 00 02 50 */	b .L_814A9450
.L_814A9204:
/* 814A9204 | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 814A9208 | 38 60 00 00 */	li r3, 0x0
/* 814A920C | 83 4D AD A0 */	lwz r26, NWC24WorkP_81698DE0@sda21(r0)
/* 814A9210 | 54 80 06 F7 */	rlwinm. r0, r4, 0, 27, 27
/* 814A9214 | 90 79 00 00 */	stw r3, 0x0(r25)
/* 814A9218 | 41 82 00 0C */	beq .L_814A9224
/* 814A921C | 38 A0 00 00 */	li r5, 0x0
/* 814A9220 | 48 00 00 1C */	b .L_814A923C
.L_814A9224:
/* 814A9224 | 54 80 06 B5 */	rlwinm. r0, r4, 0, 26, 26
/* 814A9228 | 41 82 00 0C */	beq .L_814A9234
/* 814A922C | 38 A0 00 01 */	li r5, 0x1
/* 814A9230 | 48 00 00 0C */	b .L_814A923C
.L_814A9234:
/* 814A9234 | 38 60 FF FD */	li r3, -0x3
/* 814A9238 | 48 00 00 08 */	b .L_814A9240
.L_814A923C:
/* 814A923C | 38 60 00 00 */	li r3, 0x0
.L_814A9240:
/* 814A9240 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A9244 | 41 82 00 08 */	beq .L_814A924C
/* 814A9248 | 48 00 02 08 */	b .L_814A9450
.L_814A924C:
/* 814A924C | 83 7E 00 E8 */	lwz r27, 0xe8(r30)
/* 814A9250 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814A9254 | 41 82 00 08 */	beq .L_814A925C
/* 814A9258 | 48 00 00 08 */	b .L_814A9260
.L_814A925C:
/* 814A925C | 83 7E 00 4C */	lwz r27, 0x4c(r30)
.L_814A9260:
/* 814A9260 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814A9264 | 40 82 00 0C */	bne .L_814A9270
/* 814A9268 | 38 60 FF FB */	li r3, -0x5
/* 814A926C | 48 00 01 E4 */	b .L_814A9450
.L_814A9270:
/* 814A9270 | 38 17 FF FF */	subi r0, r23, 0x1
/* 814A9274 | 7C 1B 00 40 */	cmplw r27, r0
/* 814A9278 | 40 81 00 0C */	ble .L_814A9284
/* 814A927C | 7C 1B 03 78 */	mr r27, r0
/* 814A9280 | 3B E0 FF F8 */	li r31, -0x8
.L_814A9284:
/* 814A9284 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 814A9288 | 7C A3 2B 78 */	mr r3, r5
/* 814A928C | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814A9290 | 4B FF 94 09 */	bl NWC24iMBoxOpenStoredMsg
/* 814A9294 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A9298 | 41 82 00 08 */	beq .L_814A92A0
/* 814A929C | 48 00 01 B4 */	b .L_814A9450
.L_814A92A0:
/* 814A92A0 | 7F 03 C3 78 */	mr r3, r24
/* 814A92A4 | 7F 85 E3 78 */	mr r5, r28
/* 814A92A8 | 38 80 00 00 */	li r4, 0x0
/* 814A92AC | 4B FF 3B D9 */	bl Mail_memset
/* 814A92B0 | 80 1E 00 54 */	lwz r0, 0x54(r30)
/* 814A92B4 | 7C 00 E0 40 */	cmplw r0, r28
/* 814A92B8 | 41 80 00 0C */	blt .L_814A92C4
/* 814A92BC | 3B 80 FF E8 */	li r28, -0x18
/* 814A92C0 | 48 00 01 6C */	b .L_814A942C
.L_814A92C4:
/* 814A92C4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A92C8 | 41 82 00 30 */	beq .L_814A92F8
/* 814A92CC | 80 9E 00 50 */	lwz r4, 0x50(r30)
/* 814A92D0 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814A92D4 | 38 A0 00 00 */	li r5, 0x0
/* 814A92D8 | 4B FF 4E 1D */	bl NWC24FSeek
/* 814A92DC | 80 9E 00 54 */	lwz r4, 0x54(r30)
/* 814A92E0 | 7F 03 C3 78 */	mr r3, r24
/* 814A92E4 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814A92E8 | 4B FF 4F FD */	bl NWC24FRead
/* 814A92EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A92F0 | 7C 7C 1B 78 */	mr r28, r3
/* 814A92F4 | 40 82 01 38 */	bne .L_814A942C
.L_814A92F8:
/* 814A92F8 | 80 1E 00 5C */	lwz r0, 0x5c(r30)
/* 814A92FC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A9300 | 41 82 00 60 */	beq .L_814A9360
/* 814A9304 | 28 00 00 20 */	cmplwi r0, 0x20
/* 814A9308 | 40 80 00 58 */	bge .L_814A9360
/* 814A930C | 7F 43 D3 78 */	mr r3, r26
/* 814A9310 | 38 80 00 00 */	li r4, 0x0
/* 814A9314 | 38 A0 00 20 */	li r5, 0x20
/* 814A9318 | 4B FF 3B 6D */	bl Mail_memset
/* 814A931C | 80 9E 00 58 */	lwz r4, 0x58(r30)
/* 814A9320 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814A9324 | 38 A0 00 00 */	li r5, 0x0
/* 814A9328 | 4B FF 4D CD */	bl NWC24FSeek
/* 814A932C | 80 9E 00 5C */	lwz r4, 0x5c(r30)
/* 814A9330 | 7F 43 D3 78 */	mr r3, r26
/* 814A9334 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814A9338 | 4B FF 4F AD */	bl NWC24FRead
/* 814A933C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A9340 | 7C 7C 1B 78 */	mr r28, r3
/* 814A9344 | 40 82 00 E8 */	bne .L_814A942C
/* 814A9348 | 7F 23 CB 78 */	mr r3, r25
/* 814A934C | 7F 44 D3 78 */	mr r4, r26
/* 814A9350 | 4B FF CD 1D */	bl NWC24ParseEncodingStr
/* 814A9354 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A9358 | 7C 7C 1B 78 */	mr r28, r3
/* 814A935C | 40 82 00 D0 */	bne .L_814A942C
.L_814A9360:
/* 814A9360 | 80 9E 00 48 */	lwz r4, 0x48(r30)
/* 814A9364 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814A9368 | 38 A0 00 00 */	li r5, 0x0
/* 814A936C | 4B FF 4D 89 */	bl NWC24FSeek
/* 814A9370 | 80 19 00 00 */	lwz r0, 0x0(r25)
/* 814A9374 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814A9378 | 41 82 00 40 */	beq .L_814A93B8
/* 814A937C | 40 80 00 10 */	bge .L_814A938C
/* 814A9380 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A9384 | 40 80 00 14 */	bge .L_814A9398
/* 814A9388 | 48 00 00 98 */	b .L_814A9420
.L_814A938C:
/* 814A938C | 2C 00 00 04 */	cmpwi r0, 0x4
/* 814A9390 | 40 80 00 90 */	bge .L_814A9420
/* 814A9394 | 48 00 00 70 */	b .L_814A9404
.L_814A9398:
/* 814A9398 | 7F A3 EB 78 */	mr r3, r29
/* 814A939C | 7F 64 DB 78 */	mr r4, r27
/* 814A93A0 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814A93A4 | 4B FF 4F 41 */	bl NWC24FRead
/* 814A93A8 | 38 00 00 00 */	li r0, 0x0
/* 814A93AC | 7C 7C 1B 78 */	mr r28, r3
/* 814A93B0 | 7C 1D D9 AE */	stbx r0, r29, r27
/* 814A93B4 | 48 00 00 78 */	b .L_814A942C
.L_814A93B8:
/* 814A93B8 | 38 00 00 00 */	li r0, 0x0
/* 814A93BC | 7F A5 EB 78 */	mr r5, r29
/* 814A93C0 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814A93C4 | 7F 66 DB 78 */	mr r6, r27
/* 814A93C8 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814A93CC | 38 9E 00 48 */	addi r4, r30, 0x48
/* 814A93D0 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814A93D4 | 48 00 02 01 */	bl NWC24_814A95D4
/* 814A93D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A93DC | 40 82 00 18 */	bne .L_814A93F4
/* 814A93E0 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814A93E4 | 80 1E 00 E8 */	lwz r0, 0xe8(r30)
/* 814A93E8 | 7C 04 00 40 */	cmplw r4, r0
/* 814A93EC | 41 82 00 08 */	beq .L_814A93F4
/* 814A93F0 | 38 60 FF E8 */	li r3, -0x18
.L_814A93F4:
/* 814A93F4 | 38 00 00 00 */	li r0, 0x0
/* 814A93F8 | 7C 7C 1B 78 */	mr r28, r3
/* 814A93FC | 7C 1D D9 AE */	stbx r0, r29, r27
/* 814A9400 | 48 00 00 2C */	b .L_814A942C
.L_814A9404:
/* 814A9404 | 7F C3 F3 78 */	mr r3, r30
/* 814A9408 | 7F A5 EB 78 */	mr r5, r29
/* 814A940C | 7F 66 DB 78 */	mr r6, r27
/* 814A9410 | 38 81 00 0C */	addi r4, r1, 0xc
/* 814A9414 | 48 00 02 FD */	bl NWC24_814A9710
/* 814A9418 | 7C 7C 1B 78 */	mr r28, r3
/* 814A941C | 48 00 00 10 */	b .L_814A942C
.L_814A9420:
/* 814A9420 | 38 00 00 00 */	li r0, 0x0
/* 814A9424 | 3B 80 FF FC */	li r28, -0x4
/* 814A9428 | 98 1D 00 00 */	stb r0, 0x0(r29)
.L_814A942C:
/* 814A942C | 38 61 00 0C */	addi r3, r1, 0xc
/* 814A9430 | 4B FF 93 A5 */	bl NWC24iMBoxCloseMsg
/* 814A9434 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814A9438 | 41 82 00 08 */	beq .L_814A9440
/* 814A943C | 7F 83 E3 78 */	mr r3, r28
.L_814A9440:
/* 814A9440 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A9444 | 41 82 00 08 */	beq .L_814A944C
/* 814A9448 | 7C 7F 1B 78 */	mr r31, r3
.L_814A944C:
/* 814A944C | 7F E3 FB 78 */	mr r3, r31
.L_814A9450:
/* 814A9450 | 39 61 00 D0 */	addi r11, r1, 0xd0
/* 814A9454 | 48 15 00 A9 */	bl _restgpr_23
/* 814A9458 | 80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 814A945C | 7C 08 03 A6 */	mtlr r0
/* 814A9460 | 38 21 00 D0 */	addi r1, r1, 0xd0
/* 814A9464 | 4E 80 00 20 */	blr
.endfn ReadMsgTextInternal

# .text:0xE4C | 0x814A9468 | size: 0x16C
.fn NWC24ReadMsgAttached, global
/* 814A9468 | 94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 814A946C | 7C 08 02 A6 */	mflr r0
/* 814A9470 | 90 01 00 C4 */	stw r0, 0xc4(r1)
/* 814A9474 | 39 61 00 C0 */	addi r11, r1, 0xc0
/* 814A9478 | 48 15 00 49 */	bl _savegpr_27
/* 814A947C | 7C 7D 1B 78 */	mr r29, r3
/* 814A9480 | 7C 9B 23 78 */	mr r27, r4
/* 814A9484 | 7C BE 2B 78 */	mr r30, r5
/* 814A9488 | 7C DF 33 78 */	mr r31, r6
/* 814A948C | 4B FF 6E 6D */	bl NWC24IsMsgLibOpened
/* 814A9490 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A9494 | 40 82 00 18 */	bne .L_814A94AC
/* 814A9498 | 4B FF 6E 75 */	bl NWC24IsMsgLibOpenedByTool
/* 814A949C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A94A0 | 40 82 00 0C */	bne .L_814A94AC
/* 814A94A4 | 38 60 FF F7 */	li r3, -0x9
/* 814A94A8 | 48 00 01 14 */	b .L_814A95BC
.L_814A94AC:
/* 814A94AC | 80 1D 00 04 */	lwz r0, 0x4(r29)
/* 814A94B0 | 54 00 05 AD */	rlwinm. r0, r0, 0, 22, 22
/* 814A94B4 | 40 82 00 0C */	bne .L_814A94C0
/* 814A94B8 | 38 60 FF F9 */	li r3, -0x7
/* 814A94BC | 48 00 01 00 */	b .L_814A95BC
.L_814A94C0:
/* 814A94C0 | 88 1D 00 C9 */	lbz r0, 0xc9(r29)
/* 814A94C4 | 7C 1B 00 40 */	cmplw r27, r0
/* 814A94C8 | 41 80 00 0C */	blt .L_814A94D4
/* 814A94CC | 38 60 FF F3 */	li r3, -0xd
/* 814A94D0 | 48 00 00 EC */	b .L_814A95BC
.L_814A94D4:
/* 814A94D4 | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 814A94D8 | 54 60 06 F7 */	rlwinm. r0, r3, 0, 27, 27
/* 814A94DC | 41 82 00 0C */	beq .L_814A94E8
/* 814A94E0 | 38 A0 00 00 */	li r5, 0x0
/* 814A94E4 | 48 00 00 1C */	b .L_814A9500
.L_814A94E8:
/* 814A94E8 | 54 60 06 B5 */	rlwinm. r0, r3, 0, 26, 26
/* 814A94EC | 41 82 00 0C */	beq .L_814A94F8
/* 814A94F0 | 38 A0 00 01 */	li r5, 0x1
/* 814A94F4 | 48 00 00 0C */	b .L_814A9500
.L_814A94F8:
/* 814A94F8 | 38 60 FF FD */	li r3, -0x3
/* 814A94FC | 48 00 00 08 */	b .L_814A9504
.L_814A9500:
/* 814A9500 | 38 60 00 00 */	li r3, 0x0
.L_814A9504:
/* 814A9504 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A9508 | 41 82 00 08 */	beq .L_814A9510
/* 814A950C | 48 00 00 B0 */	b .L_814A95BC
.L_814A9510:
/* 814A9510 | 57 7C 18 38 */	slwi r28, r27, 3
/* 814A9514 | 7C 7D E2 14 */	add r3, r29, r28
/* 814A9518 | 80 03 00 6C */	lwz r0, 0x6c(r3)
/* 814A951C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A9520 | 41 82 00 18 */	beq .L_814A9538
/* 814A9524 | 57 7B 10 3A */	slwi r27, r27, 2
/* 814A9528 | 7C 7D DA 14 */	add r3, r29, r27
/* 814A952C | 80 03 00 78 */	lwz r0, 0x78(r3)
/* 814A9530 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A9534 | 40 82 00 0C */	bne .L_814A9540
.L_814A9538:
/* 814A9538 | 38 60 FF FB */	li r3, -0x5
/* 814A953C | 48 00 00 80 */	b .L_814A95BC
.L_814A9540:
/* 814A9540 | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 814A9544 | 7C A3 2B 78 */	mr r3, r5
/* 814A9548 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814A954C | 4B FF 91 4D */	bl NWC24iMBoxOpenStoredMsg
/* 814A9550 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A9554 | 41 82 00 08 */	beq .L_814A955C
/* 814A9558 | 48 00 00 64 */	b .L_814A95BC
.L_814A955C:
/* 814A955C | 38 00 00 00 */	li r0, 0x0
/* 814A9560 | 7C 9D E2 14 */	add r4, r29, r28
/* 814A9564 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814A9568 | 7F C5 F3 78 */	mr r5, r30
/* 814A956C | 7F E6 FB 78 */	mr r6, r31
/* 814A9570 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814A9574 | 38 84 00 68 */	addi r4, r4, 0x68
/* 814A9578 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814A957C | 48 00 00 59 */	bl NWC24_814A95D4
/* 814A9580 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A9584 | 7C 7C 1B 78 */	mr r28, r3
/* 814A9588 | 40 82 00 1C */	bne .L_814A95A4
/* 814A958C | 7C 7D DA 14 */	add r3, r29, r27
/* 814A9590 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814A9594 | 80 03 00 78 */	lwz r0, 0x78(r3)
/* 814A9598 | 7C 04 00 40 */	cmplw r4, r0
/* 814A959C | 41 82 00 08 */	beq .L_814A95A4
/* 814A95A0 | 3B 80 FF E8 */	li r28, -0x18
.L_814A95A4:
/* 814A95A4 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814A95A8 | 4B FF 92 2D */	bl NWC24iMBoxCloseMsg
/* 814A95AC | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814A95B0 | 40 82 00 08 */	bne .L_814A95B8
/* 814A95B4 | 7C 7C 1B 78 */	mr r28, r3
.L_814A95B8:
/* 814A95B8 | 7F 83 E3 78 */	mr r3, r28
.L_814A95BC:
/* 814A95BC | 39 61 00 C0 */	addi r11, r1, 0xc0
/* 814A95C0 | 48 14 FF 4D */	bl _restgpr_27
/* 814A95C4 | 80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 814A95C8 | 7C 08 03 A6 */	mtlr r0
/* 814A95CC | 38 21 00 C0 */	addi r1, r1, 0xc0
/* 814A95D0 | 4E 80 00 20 */	blr
.endfn NWC24ReadMsgAttached

# .text:0xFB8 | 0x814A95D4 | size: 0x13C
.fn NWC24_814A95D4, global
/* 814A95D4 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814A95D8 | 7C 08 02 A6 */	mflr r0
/* 814A95DC | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814A95E0 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814A95E4 | 48 14 FE C5 */	bl _savegpr_21
/* 814A95E8 | 81 0D AD A0 */	lwz r8, NWC24WorkP_81698DE0@sda21(r0)
/* 814A95EC | 7C 7D 1B 78 */	mr r29, r3
/* 814A95F0 | 83 64 00 04 */	lwz r27, 0x4(r4)
/* 814A95F4 | 7C B8 2B 78 */	mr r24, r5
/* 814A95F8 | 83 44 00 00 */	lwz r26, 0x0(r4)
/* 814A95FC | 7C DE 33 78 */	mr r30, r6
/* 814A9600 | 7C FF 3B 78 */	mr r31, r7
/* 814A9604 | 3B 28 04 00 */	addi r25, r8, 0x400
/* 814A9608 | 3A E0 00 00 */	li r23, 0x0
/* 814A960C | 38 60 00 00 */	li r3, 0x0
/* 814A9610 | 3A A0 00 00 */	li r21, 0x0
/* 814A9614 | 48 00 00 C8 */	b .L_814A96DC
.L_814A9618:
/* 814A9618 | 2C 1B 04 00 */	cmpwi r27, 0x400
/* 814A961C | 3B 80 04 00 */	li r28, 0x400
/* 814A9620 | 41 81 00 08 */	bgt .L_814A9628
/* 814A9624 | 7F 7C DB 78 */	mr r28, r27
.L_814A9628:
/* 814A9628 | 7F A3 EB 78 */	mr r3, r29
/* 814A962C | 7F 44 D3 78 */	mr r4, r26
/* 814A9630 | 38 A0 00 00 */	li r5, 0x0
/* 814A9634 | 4B FF 4A C1 */	bl NWC24FSeek
/* 814A9638 | 7F 23 CB 78 */	mr r3, r25
/* 814A963C | 7F 84 E3 78 */	mr r4, r28
/* 814A9640 | 7F A5 EB 78 */	mr r5, r29
/* 814A9644 | 4B FF 4C A1 */	bl NWC24FRead
/* 814A9648 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A964C | 40 82 00 A0 */	bne .L_814A96EC
/* 814A9650 | 7F 25 CB 78 */	mr r5, r25
/* 814A9654 | 3A C0 00 00 */	li r22, 0x0
/* 814A9658 | 38 C0 00 00 */	li r6, 0x0
/* 814A965C | 7F 89 03 A6 */	mtctr r28
/* 814A9660 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814A9664 | 40 81 00 3C */	ble .L_814A96A0
.L_814A9668:
/* 814A9668 | 88 85 00 00 */	lbz r4, 0x0(r5)
/* 814A966C | 2C 04 00 0D */	cmpwi r4, 0xd
/* 814A9670 | 40 82 00 08 */	bne .L_814A9678
/* 814A9674 | 7C D6 33 78 */	mr r22, r6
.L_814A9678:
/* 814A9678 | 7C 80 07 74 */	extsb r0, r4
/* 814A967C | 2C 00 00 3D */	cmpwi r0, 0x3d
/* 814A9680 | 40 82 00 14 */	bne .L_814A9694
/* 814A9684 | 3A C6 00 01 */	addi r22, r6, 0x1
/* 814A9688 | 3A A0 00 01 */	li r21, 0x1
/* 814A968C | 38 60 00 00 */	li r3, 0x0
/* 814A9690 | 48 00 00 10 */	b .L_814A96A0
.L_814A9694:
/* 814A9694 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814A9698 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 814A969C | 42 00 FF CC */	bdnz .L_814A9668
.L_814A96A0:
/* 814A96A0 | 2C 16 00 00 */	cmpwi r22, 0x0
/* 814A96A4 | 41 82 00 48 */	beq .L_814A96EC
/* 814A96A8 | 7F 23 CB 78 */	mr r3, r25
/* 814A96AC | 7E C4 B3 78 */	mr r4, r22
/* 814A96B0 | 7F 05 C3 78 */	mr r5, r24
/* 814A96B4 | 7C D7 F0 50 */	subf r6, r23, r30
/* 814A96B8 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814A96BC | 4B FF AE C1 */	bl NWC24Base64Decode
/* 814A96C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A96C4 | 40 82 00 28 */	bne .L_814A96EC
/* 814A96C8 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814A96CC | 7F 5A B2 14 */	add r26, r26, r22
/* 814A96D0 | 7F 76 D8 50 */	subf r27, r22, r27
/* 814A96D4 | 7E F7 02 14 */	add r23, r23, r0
/* 814A96D8 | 7F 18 02 14 */	add r24, r24, r0
.L_814A96DC:
/* 814A96DC | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814A96E0 | 40 81 00 0C */	ble .L_814A96EC
/* 814A96E4 | 2C 15 00 00 */	cmpwi r21, 0x0
/* 814A96E8 | 41 82 FF 30 */	beq .L_814A9618
.L_814A96EC:
/* 814A96EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A96F0 | 40 82 00 08 */	bne .L_814A96F8
/* 814A96F4 | 92 FF 00 00 */	stw r23, 0x0(r31)
.L_814A96F8:
/* 814A96F8 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814A96FC | 48 14 FD F9 */	bl _restgpr_21
/* 814A9700 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814A9704 | 7C 08 03 A6 */	mtlr r0
/* 814A9708 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814A970C | 4E 80 00 20 */	blr
.endfn NWC24_814A95D4

# .text:0x10F4 | 0x814A9710 | size: 0x140
.fn NWC24_814A9710, global
/* 814A9710 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814A9714 | 7C 08 02 A6 */	mflr r0
/* 814A9718 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814A971C | 39 61 00 40 */	addi r11, r1, 0x40
/* 814A9720 | 48 14 FD 91 */	bl _savegpr_23
/* 814A9724 | 80 ED AD A0 */	lwz r7, NWC24WorkP_81698DE0@sda21(r0)
/* 814A9728 | 7C 7F 1B 78 */	mr r31, r3
/* 814A972C | 83 A3 00 4C */	lwz r29, 0x4c(r3)
/* 814A9730 | 7C 97 23 78 */	mr r23, r4
/* 814A9734 | 83 83 00 48 */	lwz r28, 0x48(r3)
/* 814A9738 | 7C BA 2B 78 */	mr r26, r5
/* 814A973C | 7C D8 33 78 */	mr r24, r6
/* 814A9740 | 3B 67 04 00 */	addi r27, r7, 0x400
/* 814A9744 | 3B 20 00 00 */	li r25, 0x0
/* 814A9748 | 38 60 00 00 */	li r3, 0x0
/* 814A974C | 48 00 00 C4 */	b .L_814A9810
.L_814A9750:
/* 814A9750 | 2C 1D 04 00 */	cmpwi r29, 0x400
/* 814A9754 | 3B C0 04 00 */	li r30, 0x400
/* 814A9758 | 41 81 00 08 */	bgt .L_814A9760
/* 814A975C | 7F BE EB 78 */	mr r30, r29
.L_814A9760:
/* 814A9760 | 7E E3 BB 78 */	mr r3, r23
/* 814A9764 | 7F 84 E3 78 */	mr r4, r28
/* 814A9768 | 38 A0 00 00 */	li r5, 0x0
/* 814A976C | 4B FF 49 89 */	bl NWC24FSeek
/* 814A9770 | 7F 63 DB 78 */	mr r3, r27
/* 814A9774 | 7F C4 F3 78 */	mr r4, r30
/* 814A9778 | 7E E5 BB 78 */	mr r5, r23
/* 814A977C | 4B FF 4B 69 */	bl NWC24FRead
/* 814A9780 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A9784 | 40 82 00 94 */	bne .L_814A9818
/* 814A9788 | 2C 1E 04 00 */	cmpwi r30, 0x400
/* 814A978C | 93 C1 00 0C */	stw r30, 0xc(r1)
/* 814A9790 | 40 82 00 34 */	bne .L_814A97C4
/* 814A9794 | 7C 7B F2 14 */	add r3, r27, r30
/* 814A9798 | 88 03 FF FF */	lbz r0, -0x1(r3)
/* 814A979C | 2C 00 00 3D */	cmpwi r0, 0x3d
/* 814A97A0 | 40 82 00 10 */	bne .L_814A97B0
/* 814A97A4 | 3B DE FF FF */	subi r30, r30, 0x1
/* 814A97A8 | 93 C1 00 0C */	stw r30, 0xc(r1)
/* 814A97AC | 48 00 00 18 */	b .L_814A97C4
.L_814A97B0:
/* 814A97B0 | 88 03 FF FE */	lbz r0, -0x2(r3)
/* 814A97B4 | 2C 00 00 3D */	cmpwi r0, 0x3d
/* 814A97B8 | 40 82 00 0C */	bne .L_814A97C4
/* 814A97BC | 3B DE FF FE */	subi r30, r30, 0x2
/* 814A97C0 | 93 C1 00 0C */	stw r30, 0xc(r1)
.L_814A97C4:
/* 814A97C4 | 7F 43 D3 78 */	mr r3, r26
/* 814A97C8 | 7F 66 DB 78 */	mr r6, r27
/* 814A97CC | 7F C7 F3 78 */	mr r7, r30
/* 814A97D0 | 7C 99 C0 50 */	subf r4, r25, r24
/* 814A97D4 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814A97D8 | 39 01 00 0C */	addi r8, r1, 0xc
/* 814A97DC | 4B FF B6 85 */	bl NWC24DecodeQuotedPrintable
/* 814A97E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A97E4 | 41 82 00 0C */	beq .L_814A97F0
/* 814A97E8 | 2C 03 FF F8 */	cmpwi r3, -0x8
/* 814A97EC | 40 82 00 2C */	bne .L_814A9818
.L_814A97F0:
/* 814A97F0 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814A97F4 | 2C 03 FF F8 */	cmpwi r3, -0x8
/* 814A97F8 | 7F 39 02 14 */	add r25, r25, r0
/* 814A97FC | 7F 5A 02 14 */	add r26, r26, r0
/* 814A9800 | 41 82 00 18 */	beq .L_814A9818
/* 814A9804 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814A9808 | 7F 9C 02 14 */	add r28, r28, r0
/* 814A980C | 7F A0 E8 50 */	subf r29, r0, r29
.L_814A9810:
/* 814A9810 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814A9814 | 41 81 FF 3C */	bgt .L_814A9750
.L_814A9818:
/* 814A9818 | 38 00 00 00 */	li r0, 0x0
/* 814A981C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A9820 | 98 1A 00 00 */	stb r0, 0x0(r26)
/* 814A9824 | 40 82 00 14 */	bne .L_814A9838
/* 814A9828 | 80 1F 00 E8 */	lwz r0, 0xe8(r31)
/* 814A982C | 7C 19 00 40 */	cmplw r25, r0
/* 814A9830 | 40 81 00 08 */	ble .L_814A9838
/* 814A9834 | 38 60 FF E8 */	li r3, -0x18
.L_814A9838:
/* 814A9838 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814A983C | 48 14 FC C1 */	bl _restgpr_23
/* 814A9840 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814A9844 | 7C 08 03 A6 */	mtlr r0
/* 814A9848 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814A984C | 4E 80 00 20 */	blr
.endfn NWC24_814A9710

# .text:0x1234 | 0x814A9850 | size: 0x1A0
.fn NWC24ReadMsgSubjectPublic, global
/* 814A9850 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814A9854 | 7C 08 02 A6 */	mflr r0
/* 814A9858 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814A985C | 39 61 00 40 */	addi r11, r1, 0x40
/* 814A9860 | 48 14 FC 49 */	bl _savegpr_21
/* 814A9864 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814A9868 | 7C 75 1B 78 */	mr r21, r3
/* 814A986C | 7C 96 23 78 */	mr r22, r4
/* 814A9870 | 7C B7 2B 78 */	mr r23, r5
/* 814A9874 | 7C D8 33 78 */	mr r24, r6
/* 814A9878 | 7C F9 3B 78 */	mr r25, r7
/* 814A987C | 7D 1A 43 78 */	mr r26, r8
/* 814A9880 | 40 82 00 0C */	bne .L_814A988C
/* 814A9884 | 38 60 FF FD */	li r3, -0x3
/* 814A9888 | 48 00 01 50 */	b .L_814A99D8
.L_814A988C:
/* 814A988C | 83 65 00 00 */	lwz r27, 0x0(r5)
/* 814A9890 | 38 00 00 00 */	li r0, 0x0
/* 814A9894 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814A9898 | 3B C0 00 00 */	li r30, 0x0
/* 814A989C | 90 05 00 00 */	stw r0, 0x0(r5)
/* 814A98A0 | 40 82 00 0C */	bne .L_814A98AC
/* 814A98A4 | 38 60 FF FD */	li r3, -0x3
/* 814A98A8 | 48 00 01 30 */	b .L_814A99D8
.L_814A98AC:
/* 814A98AC | 55 3F F8 7E */	srwi r31, r9, 1
/* 814A98B0 | 38 81 00 0C */	addi r4, r1, 0xc
/* 814A98B4 | 7F A8 FA 14 */	add r29, r8, r31
/* 814A98B8 | 7F 9F 48 50 */	subf r28, r31, r9
/* 814A98BC | 4B FF 80 0D */	bl NWC24GetMsgSubjectSize
/* 814A98C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A98C4 | 41 82 00 08 */	beq .L_814A98CC
/* 814A98C8 | 48 00 01 10 */	b .L_814A99D8
.L_814A98CC:
/* 814A98CC | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 814A98D0 | 7C 05 F8 40 */	cmplw r5, r31
/* 814A98D4 | 40 81 00 10 */	ble .L_814A98E4
/* 814A98D8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814A98DC | 7F E5 FB 78 */	mr r5, r31
/* 814A98E0 | 3B C0 00 01 */	li r30, 0x1
.L_814A98E4:
/* 814A98E4 | 7E A3 AB 78 */	mr r3, r21
/* 814A98E8 | 7F 44 D3 78 */	mr r4, r26
/* 814A98EC | 4B FF F6 59 */	bl NWC24ReadMsgSubject
/* 814A98F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A98F4 | 41 82 00 18 */	beq .L_814A990C
/* 814A98F8 | 2C 03 FF F8 */	cmpwi r3, -0x8
/* 814A98FC | 40 82 00 DC */	bne .L_814A99D8
/* 814A9900 | 3B C0 00 01 */	li r30, 0x1
/* 814A9904 | 48 00 00 08 */	b .L_814A990C
/* 814A9908 | 48 00 00 D0 */	b .L_814A99D8
.L_814A990C:
/* 814A990C | 83 ED AD A0 */	lwz r31, NWC24WorkP_81698DE0@sda21(r0)
/* 814A9910 | 7F A5 EB 78 */	mr r5, r29
/* 814A9914 | 81 21 00 0C */	lwz r9, 0xc(r1)
/* 814A9918 | 7F 86 E3 78 */	mr r6, r28
/* 814A991C | 7F E3 FB 78 */	mr r3, r31
/* 814A9920 | 7F 48 D3 78 */	mr r8, r26
/* 814A9924 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814A9928 | 38 80 00 40 */	li r4, 0x40
/* 814A992C | 4B FF BD 15 */	bl NWC24DecodeMIMEHeaderFieldBody
/* 814A9930 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A9934 | 41 82 00 18 */	beq .L_814A994C
/* 814A9938 | 2C 03 FF F8 */	cmpwi r3, -0x8
/* 814A993C | 40 82 00 9C */	bne .L_814A99D8
/* 814A9940 | 3B C0 00 01 */	li r30, 0x1
/* 814A9944 | 48 00 00 08 */	b .L_814A994C
/* 814A9948 | 48 00 00 90 */	b .L_814A99D8
.L_814A994C:
/* 814A994C | 93 77 00 00 */	stw r27, 0x0(r23)
/* 814A9950 | 7E C3 B3 78 */	mr r3, r22
/* 814A9954 | 7E E4 BB 78 */	mr r4, r23
/* 814A9958 | 7F A5 EB 78 */	mr r5, r29
/* 814A995C | 7F E7 FB 78 */	mr r7, r31
/* 814A9960 | 7F 09 C3 78 */	mr r9, r24
/* 814A9964 | 7F 2A CB 78 */	mr r10, r25
/* 814A9968 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814A996C | 39 00 00 40 */	li r8, 0x40
/* 814A9970 | 48 00 07 85 */	bl NWC24iConvertToInternalEncoding
/* 814A9974 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A9978 | 41 82 00 0C */	beq .L_814A9984
/* 814A997C | 2C 03 FF F8 */	cmpwi r3, -0x8
/* 814A9980 | 40 82 00 58 */	bne .L_814A99D8
.L_814A9984:
/* 814A9984 | 38 A0 00 00 */	li r5, 0x0
/* 814A9988 | 38 80 00 20 */	li r4, 0x20
/* 814A998C | 48 00 00 20 */	b .L_814A99AC
.L_814A9990:
/* 814A9990 | 28 00 00 0D */	cmplwi r0, 0xd
/* 814A9994 | 41 82 00 0C */	beq .L_814A99A0
/* 814A9998 | 28 00 00 0A */	cmplwi r0, 0xa
/* 814A999C | 40 82 00 08 */	bne .L_814A99A4
.L_814A99A0:
/* 814A99A0 | B0 96 00 00 */	sth r4, 0x0(r22)
.L_814A99A4:
/* 814A99A4 | 3A D6 00 02 */	addi r22, r22, 0x2
/* 814A99A8 | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814A99AC:
/* 814A99AC | 80 17 00 00 */	lwz r0, 0x0(r23)
/* 814A99B0 | 7C 05 00 40 */	cmplw r5, r0
/* 814A99B4 | 40 80 00 10 */	bge .L_814A99C4
/* 814A99B8 | A0 16 00 00 */	lhz r0, 0x0(r22)
/* 814A99BC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A99C0 | 40 82 FF D0 */	bne .L_814A9990
.L_814A99C4:
/* 814A99C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A99C8 | 40 82 00 10 */	bne .L_814A99D8
/* 814A99CC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814A99D0 | 41 82 00 08 */	beq .L_814A99D8
/* 814A99D4 | 38 60 FF F8 */	li r3, -0x8
.L_814A99D8:
/* 814A99D8 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814A99DC | 48 14 FB 19 */	bl _restgpr_21
/* 814A99E0 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814A99E4 | 7C 08 03 A6 */	mtlr r0
/* 814A99E8 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814A99EC | 4E 80 00 20 */	blr
.endfn NWC24ReadMsgSubjectPublic

# .text:0x13D4 | 0x814A99F0 | size: 0x118
.fn NWC24ReadMsgTextPublic, global
/* 814A99F0 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814A99F4 | 7C 08 02 A6 */	mflr r0
/* 814A99F8 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814A99FC | 39 61 00 40 */	addi r11, r1, 0x40
/* 814A9A00 | 48 14 FA B1 */	bl _savegpr_23
/* 814A9A04 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814A9A08 | 7C 77 1B 78 */	mr r23, r3
/* 814A9A0C | 7C 98 23 78 */	mr r24, r4
/* 814A9A10 | 7C B9 2B 78 */	mr r25, r5
/* 814A9A14 | 7C DA 33 78 */	mr r26, r6
/* 814A9A18 | 7C FB 3B 78 */	mr r27, r7
/* 814A9A1C | 7D 1C 43 78 */	mr r28, r8
/* 814A9A20 | 7D 3F 4B 78 */	mr r31, r9
/* 814A9A24 | 40 82 00 0C */	bne .L_814A9A30
/* 814A9A28 | 38 60 FF FD */	li r3, -0x3
/* 814A9A2C | 48 00 00 C4 */	b .L_814A9AF0
.L_814A9A30:
/* 814A9A30 | 83 A5 00 00 */	lwz r29, 0x0(r5)
/* 814A9A34 | 38 00 00 00 */	li r0, 0x0
/* 814A9A38 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814A9A3C | 3B C0 00 00 */	li r30, 0x0
/* 814A9A40 | 90 05 00 00 */	stw r0, 0x0(r5)
/* 814A9A44 | 40 82 00 0C */	bne .L_814A9A50
/* 814A9A48 | 38 60 FF FD */	li r3, -0x3
/* 814A9A4C | 48 00 00 A4 */	b .L_814A9AF0
.L_814A9A50:
/* 814A9A50 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814A9A54 | 4B FF 7E 9D */	bl NWC24GetMsgTextSize
/* 814A9A58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A9A5C | 41 82 00 08 */	beq .L_814A9A64
/* 814A9A60 | 48 00 00 90 */	b .L_814A9AF0
.L_814A9A64:
/* 814A9A64 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 814A9A68 | 7C 05 F8 40 */	cmplw r5, r31
/* 814A9A6C | 40 81 00 10 */	ble .L_814A9A7C
/* 814A9A70 | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 814A9A74 | 7F E5 FB 78 */	mr r5, r31
/* 814A9A78 | 3B C0 00 01 */	li r30, 0x1
.L_814A9A7C:
/* 814A9A7C | 80 CD AD A0 */	lwz r6, NWC24WorkP_81698DE0@sda21(r0)
/* 814A9A80 | 7E E3 BB 78 */	mr r3, r23
/* 814A9A84 | 7F 84 E3 78 */	mr r4, r28
/* 814A9A88 | 38 E0 00 40 */	li r7, 0x40
/* 814A9A8C | 3B E6 00 20 */	addi r31, r6, 0x20
/* 814A9A90 | 7F E6 FB 78 */	mr r6, r31
/* 814A9A94 | 4B FF F6 55 */	bl NWC24ReadMsgTextEx
/* 814A9A98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A9A9C | 41 82 00 18 */	beq .L_814A9AB4
/* 814A9AA0 | 2C 03 FF F8 */	cmpwi r3, -0x8
/* 814A9AA4 | 40 82 00 4C */	bne .L_814A9AF0
/* 814A9AA8 | 3B C0 00 01 */	li r30, 0x1
/* 814A9AAC | 48 00 00 08 */	b .L_814A9AB4
/* 814A9AB0 | 48 00 00 40 */	b .L_814A9AF0
.L_814A9AB4:
/* 814A9AB4 | 93 B9 00 00 */	stw r29, 0x0(r25)
/* 814A9AB8 | 7F 03 C3 78 */	mr r3, r24
/* 814A9ABC | 7F 24 CB 78 */	mr r4, r25
/* 814A9AC0 | 7F 85 E3 78 */	mr r5, r28
/* 814A9AC4 | 7F E7 FB 78 */	mr r7, r31
/* 814A9AC8 | 7F 49 D3 78 */	mr r9, r26
/* 814A9ACC | 7F 6A DB 78 */	mr r10, r27
/* 814A9AD0 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814A9AD4 | 39 00 00 40 */	li r8, 0x40
/* 814A9AD8 | 48 00 06 1D */	bl NWC24iConvertToInternalEncoding
/* 814A9ADC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A9AE0 | 40 82 00 10 */	bne .L_814A9AF0
/* 814A9AE4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814A9AE8 | 41 82 00 08 */	beq .L_814A9AF0
/* 814A9AEC | 38 60 FF F8 */	li r3, -0x8
.L_814A9AF0:
/* 814A9AF0 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814A9AF4 | 48 14 FA 09 */	bl _restgpr_23
/* 814A9AF8 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814A9AFC | 7C 08 03 A6 */	mtlr r0
/* 814A9B00 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814A9B04 | 4E 80 00 20 */	blr
.endfn NWC24ReadMsgTextPublic

# .text:0x14EC | 0x814A9B08 | size: 0x1C8
.fn NWC24SetMsgSubjectPublic, global
/* 814A9B08 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814A9B0C | 7C 08 02 A6 */	mflr r0
/* 814A9B10 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814A9B14 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814A9B18 | 48 14 F9 9D */	bl _savegpr_24
/* 814A9B1C | 81 43 00 04 */	lwz r10, 0x4(r3)
/* 814A9B20 | 7C 78 1B 78 */	mr r24, r3
/* 814A9B24 | 7C 99 23 78 */	mr r25, r4
/* 814A9B28 | 7C BA 2B 78 */	mr r26, r5
/* 814A9B2C | 55 40 05 EF */	rlwinm. r0, r10, 0, 23, 23
/* 814A9B30 | 7C DB 33 78 */	mr r27, r6
/* 814A9B34 | 7C FC 3B 78 */	mr r28, r7
/* 814A9B38 | 7D 1D 43 78 */	mr r29, r8
/* 814A9B3C | 7D 3E 4B 78 */	mr r30, r9
/* 814A9B40 | 41 82 00 0C */	beq .L_814A9B4C
/* 814A9B44 | 55 40 05 AD */	rlwinm. r0, r10, 0, 22, 22
/* 814A9B48 | 41 82 00 0C */	beq .L_814A9B54
.L_814A9B4C:
/* 814A9B4C | 38 60 FF F9 */	li r3, -0x7
/* 814A9B50 | 48 00 01 68 */	b .L_814A9CB8
.L_814A9B54:
/* 814A9B54 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814A9B58 | 41 82 00 10 */	beq .L_814A9B68
/* 814A9B5C | A0 04 00 00 */	lhz r0, 0x0(r4)
/* 814A9B60 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A9B64 | 40 82 00 0C */	bne .L_814A9B70
.L_814A9B68:
/* 814A9B68 | 38 60 FF FB */	li r3, -0x5
/* 814A9B6C | 48 00 01 4C */	b .L_814A9CB8
.L_814A9B70:
/* 814A9B70 | 54 A0 08 3C */	slwi r0, r5, 1
/* 814A9B74 | 7C 04 02 2E */	lhzx r0, r4, r0
/* 814A9B78 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A9B7C | 41 82 00 0C */	beq .L_814A9B88
/* 814A9B80 | 38 60 FF E7 */	li r3, -0x19
/* 814A9B84 | 48 00 01 34 */	b .L_814A9CB8
.L_814A9B88:
/* 814A9B88 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814A9B8C | 40 82 00 0C */	bne .L_814A9B98
/* 814A9B90 | 38 60 FF FD */	li r3, -0x3
/* 814A9B94 | 48 00 01 24 */	b .L_814A9CB8
.L_814A9B98:
/* 814A9B98 | 83 ED AD A0 */	lwz r31, NWC24WorkP_81698DE0@sda21(r0)
/* 814A9B9C | 7F 25 CB 78 */	mr r5, r25
/* 814A9BA0 | 7F 46 D3 78 */	mr r6, r26
/* 814A9BA4 | 7F 69 DB 78 */	mr r9, r27
/* 814A9BA8 | 7F E3 FB 78 */	mr r3, r31
/* 814A9BAC | 38 80 00 40 */	li r4, 0x40
/* 814A9BB0 | 38 E0 00 00 */	li r7, 0x0
/* 814A9BB4 | 39 00 00 00 */	li r8, 0x0
/* 814A9BB8 | 48 00 08 51 */	bl NWC24iDetectEncodingToSend
/* 814A9BBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A9BC0 | 41 82 00 08 */	beq .L_814A9BC8
/* 814A9BC4 | 48 00 00 F4 */	b .L_814A9CB8
.L_814A9BC8:
/* 814A9BC8 | 7F E4 FB 78 */	mr r4, r31
/* 814A9BCC | 38 61 00 10 */	addi r3, r1, 0x10
/* 814A9BD0 | 4B FF C3 E9 */	bl NWC24ParseCharsetStr
/* 814A9BD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A9BD8 | 41 82 00 0C */	beq .L_814A9BE4
/* 814A9BDC | 38 00 00 00 */	li r0, 0x0
/* 814A9BE0 | 90 01 00 10 */	stw r0, 0x10(r1)
.L_814A9BE4:
/* 814A9BE4 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 814A9BE8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A9BEC | 40 82 00 30 */	bne .L_814A9C1C
/* 814A9BF0 | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 814A9BF4 | 7F 03 C3 78 */	mr r3, r24
/* 814A9BF8 | 7F 24 CB 78 */	mr r4, r25
/* 814A9BFC | 7F 45 D3 78 */	mr r5, r26
/* 814A9C00 | 81 41 00 10 */	lwz r10, 0x10(r1)
/* 814A9C04 | 7F 66 DB 78 */	mr r6, r27
/* 814A9C08 | 7F 87 E3 78 */	mr r7, r28
/* 814A9C0C | 7F A8 EB 78 */	mr r8, r29
/* 814A9C10 | 7F C9 F3 78 */	mr r9, r30
/* 814A9C14 | 48 00 0A D1 */	bl NWC24iSetMsgSubjectPlain
/* 814A9C18 | 48 00 00 A0 */	b .L_814A9CB8
.L_814A9C1C:
/* 814A9C1C | 2C 1B 00 03 */	cmpwi r27, 0x3
/* 814A9C20 | 40 80 00 14 */	bge .L_814A9C34
/* 814A9C24 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814A9C28 | 41 82 00 18 */	beq .L_814A9C40
/* 814A9C2C | 40 80 00 1C */	bge .L_814A9C48
/* 814A9C30 | 48 00 00 28 */	b .L_814A9C58
.L_814A9C34:
/* 814A9C34 | 2C 1B 00 05 */	cmpwi r27, 0x5
/* 814A9C38 | 40 80 00 20 */	bge .L_814A9C58
/* 814A9C3C | 48 00 00 14 */	b .L_814A9C50
.L_814A9C40:
/* 814A9C40 | 38 00 00 02 */	li r0, 0x2
/* 814A9C44 | 48 00 00 18 */	b .L_814A9C5C
.L_814A9C48:
/* 814A9C48 | 38 00 00 03 */	li r0, 0x3
/* 814A9C4C | 48 00 00 10 */	b .L_814A9C5C
.L_814A9C50:
/* 814A9C50 | 38 00 00 02 */	li r0, 0x2
/* 814A9C54 | 48 00 00 08 */	b .L_814A9C5C
.L_814A9C58:
/* 814A9C58 | 38 00 00 02 */	li r0, 0x2
.L_814A9C5C:
/* 814A9C5C | 2C 00 00 03 */	cmpwi r0, 0x3
/* 814A9C60 | 40 82 00 30 */	bne .L_814A9C90
/* 814A9C64 | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 814A9C68 | 7F 03 C3 78 */	mr r3, r24
/* 814A9C6C | 7F 24 CB 78 */	mr r4, r25
/* 814A9C70 | 7F 45 D3 78 */	mr r5, r26
/* 814A9C74 | 81 41 00 10 */	lwz r10, 0x10(r1)
/* 814A9C78 | 7F 66 DB 78 */	mr r6, r27
/* 814A9C7C | 7F 87 E3 78 */	mr r7, r28
/* 814A9C80 | 7F A8 EB 78 */	mr r8, r29
/* 814A9C84 | 7F C9 F3 78 */	mr r9, r30
/* 814A9C88 | 48 00 0C 51 */	bl NWC24iSetMsgSubjectQP
/* 814A9C8C | 48 00 00 2C */	b .L_814A9CB8
.L_814A9C90:
/* 814A9C90 | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 814A9C94 | 7F 03 C3 78 */	mr r3, r24
/* 814A9C98 | 7F 24 CB 78 */	mr r4, r25
/* 814A9C9C | 7F 45 D3 78 */	mr r5, r26
/* 814A9CA0 | 81 41 00 10 */	lwz r10, 0x10(r1)
/* 814A9CA4 | 7F 66 DB 78 */	mr r6, r27
/* 814A9CA8 | 7F 87 E3 78 */	mr r7, r28
/* 814A9CAC | 7F A8 EB 78 */	mr r8, r29
/* 814A9CB0 | 7F C9 F3 78 */	mr r9, r30
/* 814A9CB4 | 48 00 0E 65 */	bl NWC24iSetMsgSubjectBase64
.L_814A9CB8:
/* 814A9CB8 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814A9CBC | 48 14 F8 45 */	bl _restgpr_24
/* 814A9CC0 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814A9CC4 | 7C 08 03 A6 */	mtlr r0
/* 814A9CC8 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814A9CCC | 4E 80 00 20 */	blr
.endfn NWC24SetMsgSubjectPublic

# .text:0x16B4 | 0x814A9CD0 | size: 0x2F8
.fn NWC24SetMsgSubjectAndTextPublic, global
/* 814A9CD0 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 814A9CD4 | 7C 08 02 A6 */	mflr r0
/* 814A9CD8 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 814A9CDC | 39 61 00 50 */	addi r11, r1, 0x50
/* 814A9CE0 | 48 14 F7 CD */	bl _savegpr_22
/* 814A9CE4 | 81 63 00 04 */	lwz r11, 0x4(r3)
/* 814A9CE8 | 7C 77 1B 78 */	mr r23, r3
/* 814A9CEC | 83 E1 00 58 */	lwz r31, 0x58(r1)
/* 814A9CF0 | 7C 98 23 78 */	mr r24, r4
/* 814A9CF4 | 55 60 05 EF */	rlwinm. r0, r11, 0, 23, 23
/* 814A9CF8 | 7C B9 2B 78 */	mr r25, r5
/* 814A9CFC | 7C DA 33 78 */	mr r26, r6
/* 814A9D00 | 7C FB 3B 78 */	mr r27, r7
/* 814A9D04 | 7D 1C 43 78 */	mr r28, r8
/* 814A9D08 | 7D 3D 4B 78 */	mr r29, r9
/* 814A9D0C | 7D 5E 53 78 */	mr r30, r10
/* 814A9D10 | 41 82 00 0C */	beq .L_814A9D1C
/* 814A9D14 | 55 60 05 AD */	rlwinm. r0, r11, 0, 22, 22
/* 814A9D18 | 41 82 00 0C */	beq .L_814A9D24
.L_814A9D1C:
/* 814A9D1C | 38 60 FF F9 */	li r3, -0x7
/* 814A9D20 | 48 00 02 90 */	b .L_814A9FB0
.L_814A9D24:
/* 814A9D24 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814A9D28 | 41 82 00 10 */	beq .L_814A9D38
/* 814A9D2C | A0 04 00 00 */	lhz r0, 0x0(r4)
/* 814A9D30 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A9D34 | 40 82 00 0C */	bne .L_814A9D40
.L_814A9D38:
/* 814A9D38 | 38 60 FF FB */	li r3, -0x5
/* 814A9D3C | 48 00 02 74 */	b .L_814A9FB0
.L_814A9D40:
/* 814A9D40 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814A9D44 | 41 82 00 0C */	beq .L_814A9D50
/* 814A9D48 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814A9D4C | 40 82 00 30 */	bne .L_814A9D7C
.L_814A9D50:
/* 814A9D50 | 38 63 00 48 */	addi r3, r3, 0x48
/* 814A9D54 | 4B FF 5F 71 */	bl NWC24Data_Init
/* 814A9D58 | 7E E3 BB 78 */	mr r3, r23
/* 814A9D5C | 7F 04 C3 78 */	mr r4, r24
/* 814A9D60 | 7F 25 CB 78 */	mr r5, r25
/* 814A9D64 | 7F 86 E3 78 */	mr r6, r28
/* 814A9D68 | 7F A7 EB 78 */	mr r7, r29
/* 814A9D6C | 7F C8 F3 78 */	mr r8, r30
/* 814A9D70 | 7F E9 FB 78 */	mr r9, r31
/* 814A9D74 | 4B FF FD 95 */	bl NWC24SetMsgSubjectPublic
/* 814A9D78 | 48 00 02 38 */	b .L_814A9FB0
.L_814A9D7C:
/* 814A9D7C | 54 E0 08 3C */	slwi r0, r7, 1
/* 814A9D80 | 7C 06 02 2E */	lhzx r0, r6, r0
/* 814A9D84 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A9D88 | 40 82 00 14 */	bne .L_814A9D9C
/* 814A9D8C | 54 A0 08 3C */	slwi r0, r5, 1
/* 814A9D90 | 7C 04 02 2E */	lhzx r0, r4, r0
/* 814A9D94 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A9D98 | 41 82 00 0C */	beq .L_814A9DA4
.L_814A9D9C:
/* 814A9D9C | 38 60 FF E7 */	li r3, -0x19
/* 814A9DA0 | 48 00 02 10 */	b .L_814A9FB0
.L_814A9DA4:
/* 814A9DA4 | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 814A9DA8 | 40 82 00 0C */	bne .L_814A9DB4
/* 814A9DAC | 38 60 FF FD */	li r3, -0x3
/* 814A9DB0 | 48 00 02 00 */	b .L_814A9FB0
.L_814A9DB4:
/* 814A9DB4 | 82 CD AD A0 */	lwz r22, NWC24WorkP_81698DE0@sda21(r0)
/* 814A9DB8 | 7F 05 C3 78 */	mr r5, r24
/* 814A9DBC | 7F 26 CB 78 */	mr r6, r25
/* 814A9DC0 | 7F 47 D3 78 */	mr r7, r26
/* 814A9DC4 | 7E C3 B3 78 */	mr r3, r22
/* 814A9DC8 | 7F 68 DB 78 */	mr r8, r27
/* 814A9DCC | 7F 89 E3 78 */	mr r9, r28
/* 814A9DD0 | 38 80 00 40 */	li r4, 0x40
/* 814A9DD4 | 48 00 06 35 */	bl NWC24iDetectEncodingToSend
/* 814A9DD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A9DDC | 41 82 00 08 */	beq .L_814A9DE4
/* 814A9DE0 | 48 00 01 D0 */	b .L_814A9FB0
.L_814A9DE4:
/* 814A9DE4 | 7E C4 B3 78 */	mr r4, r22
/* 814A9DE8 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814A9DEC | 4B FF C1 CD */	bl NWC24ParseCharsetStr
/* 814A9DF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A9DF4 | 41 82 00 0C */	beq .L_814A9E00
/* 814A9DF8 | 38 00 00 00 */	li r0, 0x0
/* 814A9DFC | 90 01 00 10 */	stw r0, 0x10(r1)
.L_814A9E00:
/* 814A9E00 | 7C 9F D9 D6 */	mullw r4, r31, r27
/* 814A9E04 | 57 20 10 3A */	slwi r0, r25, 2
/* 814A9E08 | 93 61 00 1C */	stw r27, 0x1c(r1)
/* 814A9E0C | 7F C3 F3 78 */	mr r3, r30
/* 814A9E10 | 7C 1B 02 14 */	add r0, r27, r0
/* 814A9E14 | 7F 45 D3 78 */	mr r5, r26
/* 814A9E18 | 7C 04 03 96 */	divwu r0, r4, r0
/* 814A9E1C | 7E C7 B3 78 */	mr r7, r22
/* 814A9E20 | 7F 89 E3 78 */	mr r9, r28
/* 814A9E24 | 7F AA EB 78 */	mr r10, r29
/* 814A9E28 | 38 81 00 18 */	addi r4, r1, 0x18
/* 814A9E2C | 38 C1 00 1C */	addi r6, r1, 0x1c
/* 814A9E30 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 814A9E34 | 7F 60 F8 50 */	subf r27, r0, r31
/* 814A9E38 | 7F 5E 02 14 */	add r26, r30, r0
/* 814A9E3C | 39 00 00 40 */	li r8, 0x40
/* 814A9E40 | 48 00 04 39 */	bl NWC24iConvertFromInternalEncoding
/* 814A9E44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A9E48 | 41 82 00 08 */	beq .L_814A9E50
/* 814A9E4C | 48 00 01 64 */	b .L_814A9FB0
.L_814A9E50:
/* 814A9E50 | 7E C4 B3 78 */	mr r4, r22
/* 814A9E54 | 38 61 00 14 */	addi r3, r1, 0x14
/* 814A9E58 | 48 0C 50 15 */	bl fn_8156EE6C
/* 814A9E5C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814A9E60 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A9E64 | 41 82 00 0C */	beq .L_814A9E70
/* 814A9E68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A9E6C | 41 82 00 48 */	beq .L_814A9EB4
.L_814A9E70:
/* 814A9E70 | 2C 1C 00 03 */	cmpwi r28, 0x3
/* 814A9E74 | 40 80 00 14 */	bge .L_814A9E88
/* 814A9E78 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814A9E7C | 41 82 00 18 */	beq .L_814A9E94
/* 814A9E80 | 40 80 00 1C */	bge .L_814A9E9C
/* 814A9E84 | 48 00 00 28 */	b .L_814A9EAC
.L_814A9E88:
/* 814A9E88 | 2C 1C 00 05 */	cmpwi r28, 0x5
/* 814A9E8C | 40 80 00 20 */	bge .L_814A9EAC
/* 814A9E90 | 48 00 00 14 */	b .L_814A9EA4
.L_814A9E94:
/* 814A9E94 | 38 E0 00 02 */	li r7, 0x2
/* 814A9E98 | 48 00 00 20 */	b .L_814A9EB8
.L_814A9E9C:
/* 814A9E9C | 38 E0 00 03 */	li r7, 0x3
/* 814A9EA0 | 48 00 00 18 */	b .L_814A9EB8
.L_814A9EA4:
/* 814A9EA4 | 38 E0 00 02 */	li r7, 0x2
/* 814A9EA8 | 48 00 00 10 */	b .L_814A9EB8
.L_814A9EAC:
/* 814A9EAC | 38 E0 00 02 */	li r7, 0x2
/* 814A9EB0 | 48 00 00 08 */	b .L_814A9EB8
.L_814A9EB4:
/* 814A9EB4 | 38 E0 00 00 */	li r7, 0x0
.L_814A9EB8:
/* 814A9EB8 | 80 A1 00 18 */	lwz r5, 0x18(r1)
/* 814A9EBC | 7E E3 BB 78 */	mr r3, r23
/* 814A9EC0 | 80 C1 00 10 */	lwz r6, 0x10(r1)
/* 814A9EC4 | 7F C4 F3 78 */	mr r4, r30
/* 814A9EC8 | 38 A5 FF FF */	subi r5, r5, 0x1
/* 814A9ECC | 4B FF 73 69 */	bl NWC24SetMsgText
/* 814A9ED0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A9ED4 | 41 82 00 08 */	beq .L_814A9EDC
/* 814A9ED8 | 48 00 00 D8 */	b .L_814A9FB0
.L_814A9EDC:
/* 814A9EDC | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 814A9EE0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A9EE4 | 40 82 00 30 */	bne .L_814A9F14
/* 814A9EE8 | 92 C1 00 08 */	stw r22, 0x8(r1)
/* 814A9EEC | 7E E3 BB 78 */	mr r3, r23
/* 814A9EF0 | 7F 04 C3 78 */	mr r4, r24
/* 814A9EF4 | 7F 25 CB 78 */	mr r5, r25
/* 814A9EF8 | 81 41 00 10 */	lwz r10, 0x10(r1)
/* 814A9EFC | 7F 86 E3 78 */	mr r6, r28
/* 814A9F00 | 7F A7 EB 78 */	mr r7, r29
/* 814A9F04 | 7F 48 D3 78 */	mr r8, r26
/* 814A9F08 | 7F 69 DB 78 */	mr r9, r27
/* 814A9F0C | 48 00 07 D9 */	bl NWC24iSetMsgSubjectPlain
/* 814A9F10 | 48 00 00 A0 */	b .L_814A9FB0
.L_814A9F14:
/* 814A9F14 | 2C 1C 00 03 */	cmpwi r28, 0x3
/* 814A9F18 | 40 80 00 14 */	bge .L_814A9F2C
/* 814A9F1C | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814A9F20 | 41 82 00 18 */	beq .L_814A9F38
/* 814A9F24 | 40 80 00 1C */	bge .L_814A9F40
/* 814A9F28 | 48 00 00 28 */	b .L_814A9F50
.L_814A9F2C:
/* 814A9F2C | 2C 1C 00 05 */	cmpwi r28, 0x5
/* 814A9F30 | 40 80 00 20 */	bge .L_814A9F50
/* 814A9F34 | 48 00 00 14 */	b .L_814A9F48
.L_814A9F38:
/* 814A9F38 | 38 00 00 02 */	li r0, 0x2
/* 814A9F3C | 48 00 00 18 */	b .L_814A9F54
.L_814A9F40:
/* 814A9F40 | 38 00 00 03 */	li r0, 0x3
/* 814A9F44 | 48 00 00 10 */	b .L_814A9F54
.L_814A9F48:
/* 814A9F48 | 38 00 00 02 */	li r0, 0x2
/* 814A9F4C | 48 00 00 08 */	b .L_814A9F54
.L_814A9F50:
/* 814A9F50 | 38 00 00 02 */	li r0, 0x2
.L_814A9F54:
/* 814A9F54 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 814A9F58 | 40 82 00 30 */	bne .L_814A9F88
/* 814A9F5C | 92 C1 00 08 */	stw r22, 0x8(r1)
/* 814A9F60 | 7E E3 BB 78 */	mr r3, r23
/* 814A9F64 | 7F 04 C3 78 */	mr r4, r24
/* 814A9F68 | 7F 25 CB 78 */	mr r5, r25
/* 814A9F6C | 81 41 00 10 */	lwz r10, 0x10(r1)
/* 814A9F70 | 7F 86 E3 78 */	mr r6, r28
/* 814A9F74 | 7F A7 EB 78 */	mr r7, r29
/* 814A9F78 | 7F 48 D3 78 */	mr r8, r26
/* 814A9F7C | 7F 69 DB 78 */	mr r9, r27
/* 814A9F80 | 48 00 09 59 */	bl NWC24iSetMsgSubjectQP
/* 814A9F84 | 48 00 00 2C */	b .L_814A9FB0
.L_814A9F88:
/* 814A9F88 | 92 C1 00 08 */	stw r22, 0x8(r1)
/* 814A9F8C | 7E E3 BB 78 */	mr r3, r23
/* 814A9F90 | 7F 04 C3 78 */	mr r4, r24
/* 814A9F94 | 7F 25 CB 78 */	mr r5, r25
/* 814A9F98 | 81 41 00 10 */	lwz r10, 0x10(r1)
/* 814A9F9C | 7F 86 E3 78 */	mr r6, r28
/* 814A9FA0 | 7F A7 EB 78 */	mr r7, r29
/* 814A9FA4 | 7F 48 D3 78 */	mr r8, r26
/* 814A9FA8 | 7F 69 DB 78 */	mr r9, r27
/* 814A9FAC | 48 00 0B 6D */	bl NWC24iSetMsgSubjectBase64
.L_814A9FB0:
/* 814A9FB0 | 39 61 00 50 */	addi r11, r1, 0x50
/* 814A9FB4 | 48 14 F5 45 */	bl _restgpr_22
/* 814A9FB8 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 814A9FBC | 7C 08 03 A6 */	mtlr r0
/* 814A9FC0 | 38 21 00 50 */	addi r1, r1, 0x50
/* 814A9FC4 | 4E 80 00 20 */	blr
.endfn NWC24SetMsgSubjectAndTextPublic

# .text:0x19AC | 0x814A9FC8 | size: 0x12C
.fn NWC24iGetDefaultCharset, global
/* 814A9FC8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814A9FCC | 7C 08 02 A6 */	mflr r0
/* 814A9FD0 | 2C 05 00 02 */	cmpwi r5, 0x2
/* 814A9FD4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814A9FD8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814A9FDC | 3B E0 00 00 */	li r31, 0x0
/* 814A9FE0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814A9FE4 | 7C 9E 23 78 */	mr r30, r4
/* 814A9FE8 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814A9FEC | 7C 7D 1B 78 */	mr r29, r3
/* 814A9FF0 | 41 82 00 68 */	beq .L_814AA058
/* 814A9FF4 | 40 80 00 14 */	bge .L_814AA008
/* 814A9FF8 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814A9FFC | 41 82 00 1C */	beq .L_814AA018
/* 814AA000 | 40 80 00 38 */	bge .L_814AA038
/* 814AA004 | 48 00 00 AC */	b .L_814AA0B0
.L_814AA008:
/* 814AA008 | 2C 05 00 04 */	cmpwi r5, 0x4
/* 814AA00C | 41 82 00 88 */	beq .L_814AA094
/* 814AA010 | 40 80 00 A0 */	bge .L_814AA0B0
/* 814AA014 | 48 00 00 64 */	b .L_814AA078
.L_814AA018:
/* 814AA018 | 3C 80 81 67 */	lis r4, lbl_8166E094@ha
/* 814AA01C | 38 BE FF FF */	subi r5, r30, 0x1
/* 814AA020 | 38 84 E0 94 */	addi r4, r4, lbl_8166E094@l
/* 814AA024 | 48 15 83 A1 */	bl strncpy
/* 814AA028 | 7C 7D F2 14 */	add r3, r29, r30
/* 814AA02C | 38 00 00 00 */	li r0, 0x0
/* 814AA030 | 98 03 FF FF */	stb r0, -0x1(r3)
/* 814AA034 | 48 00 00 A0 */	b .L_814AA0D4
.L_814AA038:
/* 814AA038 | 3C 80 81 67 */	lis r4, lbl_8166E0A0@ha
/* 814AA03C | 38 BE FF FF */	subi r5, r30, 0x1
/* 814AA040 | 38 84 E0 A0 */	addi r4, r4, lbl_8166E0A0@l
/* 814AA044 | 48 15 83 81 */	bl strncpy
/* 814AA048 | 7C 7D F2 14 */	add r3, r29, r30
/* 814AA04C | 38 00 00 00 */	li r0, 0x0
/* 814AA050 | 98 03 FF FF */	stb r0, -0x1(r3)
/* 814AA054 | 48 00 00 80 */	b .L_814AA0D4
.L_814AA058:
/* 814AA058 | 3C 80 81 67 */	lis r4, lbl_8166E0A0@ha
/* 814AA05C | 38 BE FF FF */	subi r5, r30, 0x1
/* 814AA060 | 38 84 E0 A0 */	addi r4, r4, lbl_8166E0A0@l
/* 814AA064 | 48 15 83 61 */	bl strncpy
/* 814AA068 | 7C 7D F2 14 */	add r3, r29, r30
/* 814AA06C | 38 00 00 00 */	li r0, 0x0
/* 814AA070 | 98 03 FF FF */	stb r0, -0x1(r3)
/* 814AA074 | 48 00 00 60 */	b .L_814AA0D4
.L_814AA078:
/* 814AA078 | 38 BE FF FF */	subi r5, r30, 0x1
/* 814AA07C | 38 8D 9C 50 */	li r4, lbl_81697C90@sda21
/* 814AA080 | 48 15 83 45 */	bl strncpy
/* 814AA084 | 7C 7D F2 14 */	add r3, r29, r30
/* 814AA088 | 38 00 00 00 */	li r0, 0x0
/* 814AA08C | 98 03 FF FF */	stb r0, -0x1(r3)
/* 814AA090 | 48 00 00 44 */	b .L_814AA0D4
.L_814AA094:
/* 814AA094 | 38 BE FF FF */	subi r5, r30, 0x1
/* 814AA098 | 38 8D 9C 58 */	li r4, lbl_81697C98@sda21
/* 814AA09C | 48 15 83 29 */	bl strncpy
/* 814AA0A0 | 7C 7D F2 14 */	add r3, r29, r30
/* 814AA0A4 | 38 00 00 00 */	li r0, 0x0
/* 814AA0A8 | 98 03 FF FF */	stb r0, -0x1(r3)
/* 814AA0AC | 48 00 00 28 */	b .L_814AA0D4
.L_814AA0B0:
/* 814AA0B0 | 3C 80 81 67 */	lis r4, lbl_8166E0A0@ha
/* 814AA0B4 | 7F A3 EB 78 */	mr r3, r29
/* 814AA0B8 | 38 84 E0 A0 */	addi r4, r4, lbl_8166E0A0@l
/* 814AA0BC | 38 BE FF FF */	subi r5, r30, 0x1
/* 814AA0C0 | 48 15 83 05 */	bl strncpy
/* 814AA0C4 | 7C 7D F2 14 */	add r3, r29, r30
/* 814AA0C8 | 38 00 00 00 */	li r0, 0x0
/* 814AA0CC | 98 03 FF FF */	stb r0, -0x1(r3)
/* 814AA0D0 | 3B E0 FF FD */	li r31, -0x3
.L_814AA0D4:
/* 814AA0D4 | 7F E3 FB 78 */	mr r3, r31
/* 814AA0D8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814AA0DC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814AA0E0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814AA0E4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814AA0E8 | 7C 08 03 A6 */	mtlr r0
/* 814AA0EC | 38 21 00 20 */	addi r1, r1, 0x20
/* 814AA0F0 | 4E 80 00 20 */	blr
.endfn NWC24iGetDefaultCharset

# .text:0x1AD8 | 0x814AA0F4 | size: 0x184
.fn NWC24iConvertToInternalEncoding, global
/* 814AA0F4 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814AA0F8 | 7C 08 02 A6 */	mflr r0
/* 814AA0FC | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814AA100 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814AA104 | 48 14 F3 B5 */	bl _savegpr_25
/* 814AA108 | 81 64 00 00 */	lwz r11, 0x0(r4)
/* 814AA10C | 38 00 00 00 */	li r0, 0x0
/* 814AA110 | 7C 79 1B 78 */	mr r25, r3
/* 814AA114 | 7C 9A 23 78 */	mr r26, r4
/* 814AA118 | 55 7F 08 3C */	slwi r31, r11, 1
/* 814AA11C | 90 04 00 00 */	stw r0, 0x0(r4)
/* 814AA120 | 28 1F 00 02 */	cmplwi r31, 0x2
/* 814AA124 | 7C BB 2B 78 */	mr r27, r5
/* 814AA128 | 7C DC 33 78 */	mr r28, r6
/* 814AA12C | 7C FD 3B 78 */	mr r29, r7
/* 814AA130 | 7D 5E 53 78 */	mr r30, r10
/* 814AA134 | 40 80 00 0C */	bge .L_814AA140
/* 814AA138 | 38 60 FF F8 */	li r3, -0x8
/* 814AA13C | 48 00 01 24 */	b .L_814AA260
.L_814AA140:
/* 814AA140 | 88 07 00 00 */	lbz r0, 0x0(r7)
/* 814AA144 | 7C 00 07 75 */	extsb. r0, r0
/* 814AA148 | 40 82 00 20 */	bne .L_814AA168
/* 814AA14C | 7F A3 EB 78 */	mr r3, r29
/* 814AA150 | 7D 04 43 78 */	mr r4, r8
/* 814AA154 | 7D 25 4B 78 */	mr r5, r9
/* 814AA158 | 4B FF FE 71 */	bl NWC24iGetDefaultCharset
/* 814AA15C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AA160 | 41 82 00 08 */	beq .L_814AA168
/* 814AA164 | 48 00 00 FC */	b .L_814AA260
.L_814AA168:
/* 814AA168 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814AA16C | 48 0C 44 35 */	bl fn_8156E5A0
/* 814AA170 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AA174 | 40 82 00 8C */	bne .L_814AA200
/* 814AA178 | 7F A4 EB 78 */	mr r4, r29
/* 814AA17C | 38 61 00 10 */	addi r3, r1, 0x10
/* 814AA180 | 48 0C 44 79 */	bl fn_8156E5F8
/* 814AA184 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AA188 | 40 82 00 78 */	bne .L_814AA200
/* 814AA18C | 38 61 00 10 */	addi r3, r1, 0x10
/* 814AA190 | 38 80 00 03 */	li r4, 0x3
/* 814AA194 | 48 0C 45 81 */	bl fn_8156E714
/* 814AA198 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AA19C | 40 82 00 64 */	bne .L_814AA200
/* 814AA1A0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814AA1A4 | 41 82 00 1C */	beq .L_814AA1C0
/* 814AA1A8 | 7F C4 F3 78 */	mr r4, r30
/* 814AA1AC | 7F C5 F3 78 */	mr r5, r30
/* 814AA1B0 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814AA1B4 | 48 0C 45 8D */	bl fn_8156E740
/* 814AA1B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AA1BC | 40 82 00 44 */	bne .L_814AA200
.L_814AA1C0:
/* 814AA1C0 | 38 1F FF FE */	subi r0, r31, 0x2
/* 814AA1C4 | 7F 24 CB 78 */	mr r4, r25
/* 814AA1C8 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814AA1CC | 7F 66 DB 78 */	mr r6, r27
/* 814AA1D0 | 7F 87 E3 78 */	mr r7, r28
/* 814AA1D4 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814AA1D8 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814AA1DC | 48 0C 45 85 */	bl fn_8156E760
/* 814AA1E0 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814AA1E4 | 38 80 00 00 */	li r4, 0x0
/* 814AA1E8 | 54 00 00 3C */	clrrwi r0, r0, 1
/* 814AA1EC | 7C 99 03 2E */	sthx r4, r25, r0
/* 814AA1F0 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814AA1F4 | 54 04 F8 7E */	srwi r4, r0, 1
/* 814AA1F8 | 38 04 00 01 */	addi r0, r4, 0x1
/* 814AA1FC | 90 1A 00 00 */	stw r0, 0x0(r26)
.L_814AA200:
/* 814AA200 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814AA204 | 41 82 00 48 */	beq .L_814AA24C
/* 814AA208 | 40 80 00 1C */	bge .L_814AA224
/* 814AA20C | 2C 03 FF FC */	cmpwi r3, -0x4
/* 814AA210 | 41 82 00 3C */	beq .L_814AA24C
/* 814AA214 | 40 80 00 28 */	bge .L_814AA23C
/* 814AA218 | 2C 03 FF F9 */	cmpwi r3, -0x7
/* 814AA21C | 40 80 00 38 */	bge .L_814AA254
/* 814AA220 | 48 00 00 3C */	b .L_814AA25C
.L_814AA224:
/* 814AA224 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AA228 | 41 82 00 0C */	beq .L_814AA234
/* 814AA22C | 40 80 00 30 */	bge .L_814AA25C
/* 814AA230 | 48 00 00 14 */	b .L_814AA244
.L_814AA234:
/* 814AA234 | 38 60 00 00 */	li r3, 0x0
/* 814AA238 | 48 00 00 28 */	b .L_814AA260
.L_814AA23C:
/* 814AA23C | 38 60 FF FD */	li r3, -0x3
/* 814AA240 | 48 00 00 20 */	b .L_814AA260
.L_814AA244:
/* 814AA244 | 38 60 FF F8 */	li r3, -0x8
/* 814AA248 | 48 00 00 18 */	b .L_814AA260
.L_814AA24C:
/* 814AA24C | 38 60 FF D1 */	li r3, -0x2f
/* 814AA250 | 48 00 00 10 */	b .L_814AA260
.L_814AA254:
/* 814AA254 | 38 60 FF FC */	li r3, -0x4
/* 814AA258 | 48 00 00 08 */	b .L_814AA260
.L_814AA25C:
/* 814AA25C | 38 60 FF FF */	li r3, -0x1
.L_814AA260:
/* 814AA260 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814AA264 | 48 14 F2 A1 */	bl _restgpr_25
/* 814AA268 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814AA26C | 7C 08 03 A6 */	mtlr r0
/* 814AA270 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814AA274 | 4E 80 00 20 */	blr
.endfn NWC24iConvertToInternalEncoding

# .text:0x1C5C | 0x814AA278 | size: 0x190
.fn NWC24iConvertFromInternalEncoding, global
/* 814AA278 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814AA27C | 7C 08 02 A6 */	mflr r0
/* 814AA280 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814AA284 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814AA288 | 48 14 F2 31 */	bl _savegpr_25
/* 814AA28C | 83 C4 00 00 */	lwz r30, 0x0(r4)
/* 814AA290 | 38 00 00 00 */	li r0, 0x0
/* 814AA294 | 7C 79 1B 78 */	mr r25, r3
/* 814AA298 | 7C 9F 23 78 */	mr r31, r4
/* 814AA29C | 28 1E 00 01 */	cmplwi r30, 0x1
/* 814AA2A0 | 90 04 00 00 */	stw r0, 0x0(r4)
/* 814AA2A4 | 7C BA 2B 78 */	mr r26, r5
/* 814AA2A8 | 7C DB 33 78 */	mr r27, r6
/* 814AA2AC | 7C FC 3B 78 */	mr r28, r7
/* 814AA2B0 | 7D 5D 53 78 */	mr r29, r10
/* 814AA2B4 | 40 80 00 0C */	bge .L_814AA2C0
/* 814AA2B8 | 38 60 FF F8 */	li r3, -0x8
/* 814AA2BC | 48 00 01 34 */	b .L_814AA3F0
.L_814AA2C0:
/* 814AA2C0 | 88 07 00 00 */	lbz r0, 0x0(r7)
/* 814AA2C4 | 7C 00 07 75 */	extsb. r0, r0
/* 814AA2C8 | 40 82 00 20 */	bne .L_814AA2E8
/* 814AA2CC | 7F 83 E3 78 */	mr r3, r28
/* 814AA2D0 | 7D 04 43 78 */	mr r4, r8
/* 814AA2D4 | 7D 25 4B 78 */	mr r5, r9
/* 814AA2D8 | 4B FF FC F1 */	bl NWC24iGetDefaultCharset
/* 814AA2DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AA2E0 | 41 82 00 08 */	beq .L_814AA2E8
/* 814AA2E4 | 48 00 01 0C */	b .L_814AA3F0
.L_814AA2E8:
/* 814AA2E8 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814AA2EC | 48 0C 42 B5 */	bl fn_8156E5A0
/* 814AA2F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AA2F4 | 40 82 00 9C */	bne .L_814AA390
/* 814AA2F8 | 7F 84 E3 78 */	mr r4, r28
/* 814AA2FC | 38 61 00 10 */	addi r3, r1, 0x10
/* 814AA300 | 48 0C 42 F9 */	bl fn_8156E5F8
/* 814AA304 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AA308 | 40 82 00 88 */	bne .L_814AA390
/* 814AA30C | 38 61 00 10 */	addi r3, r1, 0x10
/* 814AA310 | 38 80 00 01 */	li r4, 0x1
/* 814AA314 | 48 0C 44 01 */	bl fn_8156E714
/* 814AA318 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AA31C | 40 82 00 74 */	bne .L_814AA390
/* 814AA320 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814AA324 | 41 82 00 1C */	beq .L_814AA340
/* 814AA328 | 7F A4 EB 78 */	mr r4, r29
/* 814AA32C | 7F A5 EB 78 */	mr r5, r29
/* 814AA330 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814AA334 | 48 0C 44 0D */	bl fn_8156E740
/* 814AA338 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AA33C | 40 82 00 54 */	bne .L_814AA390
.L_814AA340:
/* 814AA340 | 38 1E FF FF */	subi r0, r30, 0x1
/* 814AA344 | 7F 24 CB 78 */	mr r4, r25
/* 814AA348 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814AA34C | 7F 46 D3 78 */	mr r6, r26
/* 814AA350 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814AA354 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814AA358 | 80 1B 00 00 */	lwz r0, 0x0(r27)
/* 814AA35C | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814AA360 | 54 00 08 3C */	slwi r0, r0, 1
/* 814AA364 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814AA368 | 48 0C 46 89 */	bl fn_8156E9F0
/* 814AA36C | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814AA370 | 38 80 00 00 */	li r4, 0x0
/* 814AA374 | 7C 99 01 AE */	stbx r4, r25, r0
/* 814AA378 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814AA37C | 54 00 F8 7E */	srwi r0, r0, 1
/* 814AA380 | 90 1B 00 00 */	stw r0, 0x0(r27)
/* 814AA384 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814AA388 | 38 04 00 01 */	addi r0, r4, 0x1
/* 814AA38C | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_814AA390:
/* 814AA390 | 2C 03 FF FE */	cmpwi r3, -0x2
/* 814AA394 | 41 82 00 48 */	beq .L_814AA3DC
/* 814AA398 | 40 80 00 1C */	bge .L_814AA3B4
/* 814AA39C | 2C 03 FF FC */	cmpwi r3, -0x4
/* 814AA3A0 | 41 82 00 3C */	beq .L_814AA3DC
/* 814AA3A4 | 40 80 00 28 */	bge .L_814AA3CC
/* 814AA3A8 | 2C 03 FF F9 */	cmpwi r3, -0x7
/* 814AA3AC | 40 80 00 38 */	bge .L_814AA3E4
/* 814AA3B0 | 48 00 00 3C */	b .L_814AA3EC
.L_814AA3B4:
/* 814AA3B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AA3B8 | 41 82 00 0C */	beq .L_814AA3C4
/* 814AA3BC | 40 80 00 30 */	bge .L_814AA3EC
/* 814AA3C0 | 48 00 00 14 */	b .L_814AA3D4
.L_814AA3C4:
/* 814AA3C4 | 38 60 00 00 */	li r3, 0x0
/* 814AA3C8 | 48 00 00 28 */	b .L_814AA3F0
.L_814AA3CC:
/* 814AA3CC | 38 60 FF FD */	li r3, -0x3
/* 814AA3D0 | 48 00 00 20 */	b .L_814AA3F0
.L_814AA3D4:
/* 814AA3D4 | 38 60 FF F8 */	li r3, -0x8
/* 814AA3D8 | 48 00 00 18 */	b .L_814AA3F0
.L_814AA3DC:
/* 814AA3DC | 38 60 FF D1 */	li r3, -0x2f
/* 814AA3E0 | 48 00 00 10 */	b .L_814AA3F0
.L_814AA3E4:
/* 814AA3E4 | 38 60 FF FC */	li r3, -0x4
/* 814AA3E8 | 48 00 00 08 */	b .L_814AA3F0
.L_814AA3EC:
/* 814AA3EC | 38 60 FF FF */	li r3, -0x1
.L_814AA3F0:
/* 814AA3F0 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814AA3F4 | 48 14 F1 11 */	bl _restgpr_25
/* 814AA3F8 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814AA3FC | 7C 08 03 A6 */	mtlr r0
/* 814AA400 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814AA404 | 4E 80 00 20 */	blr
.endfn NWC24iConvertFromInternalEncoding

# .text:0x1DEC | 0x814AA408 | size: 0x1B4
.fn NWC24iDetectEncodingToSend, global
/* 814AA408 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814AA40C | 7C 08 02 A6 */	mflr r0
/* 814AA410 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814AA414 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814AA418 | 48 14 F0 91 */	bl _savegpr_21
/* 814AA41C | 38 00 00 00 */	li r0, 0x0
/* 814AA420 | 2C 09 00 03 */	cmpwi r9, 0x3
/* 814AA424 | 3D 40 81 67 */	lis r10, lbl_8166DFF8@ha
/* 814AA428 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814AA42C | 7C 7E 1B 78 */	mr r30, r3
/* 814AA430 | 7C 9F 23 78 */	mr r31, r4
/* 814AA434 | 7C B5 2B 78 */	mr r21, r5
/* 814AA438 | 7C F6 3B 78 */	mr r22, r7
/* 814AA43C | 39 4A DF F8 */	addi r10, r10, lbl_8166DFF8@l
/* 814AA440 | 3B 40 00 00 */	li r26, 0x0
/* 814AA444 | 3B 20 FF FF */	li r25, -0x1
/* 814AA448 | 41 82 00 3C */	beq .L_814AA484
/* 814AA44C | 40 80 00 14 */	bge .L_814AA460
/* 814AA450 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 814AA454 | 41 82 00 18 */	beq .L_814AA46C
/* 814AA458 | 40 80 00 20 */	bge .L_814AA478
/* 814AA45C | 48 00 00 40 */	b .L_814AA49C
.L_814AA460:
/* 814AA460 | 2C 09 00 05 */	cmpwi r9, 0x5
/* 814AA464 | 40 80 00 38 */	bge .L_814AA49C
/* 814AA468 | 48 00 00 28 */	b .L_814AA490
.L_814AA46C:
/* 814AA46C | 3B 0A 00 18 */	addi r24, r10, 0x18
/* 814AA470 | 3A E0 00 03 */	li r23, 0x3
/* 814AA474 | 48 00 00 30 */	b .L_814AA4A4
.L_814AA478:
/* 814AA478 | 3B 0A 00 70 */	addi r24, r10, 0x70
/* 814AA47C | 3A E0 00 08 */	li r23, 0x8
/* 814AA480 | 48 00 00 24 */	b .L_814AA4A4
.L_814AA484:
/* 814AA484 | 3B 0A 00 90 */	addi r24, r10, 0x90
/* 814AA488 | 3A E0 00 03 */	li r23, 0x3
/* 814AA48C | 48 00 00 18 */	b .L_814AA4A4
.L_814AA490:
/* 814AA490 | 3B 0D 9C 48 */	li r24, lbl_81697C88@sda21
/* 814AA494 | 3A E0 00 02 */	li r23, 0x2
/* 814AA498 | 48 00 00 0C */	b .L_814AA4A4
.L_814AA49C:
/* 814AA49C | 3B 0A 00 70 */	addi r24, r10, 0x70
/* 814AA4A0 | 3A E0 00 08 */	li r23, 0x8
.L_814AA4A4:
/* 814AA4A4 | 54 DC 08 3C */	slwi r28, r6, 1
/* 814AA4A8 | 55 1B 08 3C */	slwi r27, r8, 1
/* 814AA4AC | 3B B7 FF FF */	subi r29, r23, 0x1
/* 814AA4B0 | 48 00 00 C0 */	b .L_814AA570
.L_814AA4B4:
/* 814AA4B4 | 57 40 10 3A */	slwi r0, r26, 2
/* 814AA4B8 | 7E A6 AB 78 */	mr r6, r21
/* 814AA4BC | 7F 87 E3 78 */	mr r7, r28
/* 814AA4C0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814AA4C4 | 7C 98 02 14 */	add r4, r24, r0
/* 814AA4C8 | 7C BA E8 50 */	subf r5, r26, r29
/* 814AA4CC | 48 0C 47 CD */	bl fn_8156EC98
/* 814AA4D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AA4D4 | 41 82 00 0C */	beq .L_814AA4E0
/* 814AA4D8 | 38 60 FF FC */	li r3, -0x4
/* 814AA4DC | 48 00 00 C8 */	b .L_814AA5A4
.L_814AA4E0:
/* 814AA4E0 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814AA4E4 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 814AA4E8 | 40 82 00 10 */	bne .L_814AA4F8
/* 814AA4EC | 38 17 FF FF */	subi r0, r23, 0x1
/* 814AA4F0 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814AA4F4 | 48 00 00 88 */	b .L_814AA57C
.L_814AA4F8:
/* 814AA4F8 | 2C 16 00 00 */	cmpwi r22, 0x0
/* 814AA4FC | 7F 5A 02 14 */	add r26, r26, r0
/* 814AA500 | 41 82 00 0C */	beq .L_814AA50C
/* 814AA504 | 7C 19 D0 00 */	cmpw r25, r26
/* 814AA508 | 40 82 00 0C */	bne .L_814AA514
.L_814AA50C:
/* 814AA50C | 93 41 00 08 */	stw r26, 0x8(r1)
/* 814AA510 | 48 00 00 6C */	b .L_814AA57C
.L_814AA514:
/* 814AA514 | 57 40 10 3A */	slwi r0, r26, 2
/* 814AA518 | 7E C6 B3 78 */	mr r6, r22
/* 814AA51C | 7F 67 DB 78 */	mr r7, r27
/* 814AA520 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814AA524 | 7C 98 02 14 */	add r4, r24, r0
/* 814AA528 | 7C BA E8 50 */	subf r5, r26, r29
/* 814AA52C | 48 0C 47 6D */	bl fn_8156EC98
/* 814AA530 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AA534 | 41 82 00 0C */	beq .L_814AA540
/* 814AA538 | 38 60 FF FC */	li r3, -0x4
/* 814AA53C | 48 00 00 68 */	b .L_814AA5A4
.L_814AA540:
/* 814AA540 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814AA544 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 814AA548 | 40 82 00 10 */	bne .L_814AA558
/* 814AA54C | 38 17 FF FF */	subi r0, r23, 0x1
/* 814AA550 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814AA554 | 48 00 00 28 */	b .L_814AA57C
.L_814AA558:
/* 814AA558 | 7F 3A 02 14 */	add r25, r26, r0
/* 814AA55C | 7C 19 D0 00 */	cmpw r25, r26
/* 814AA560 | 40 82 00 0C */	bne .L_814AA56C
/* 814AA564 | 93 21 00 08 */	stw r25, 0x8(r1)
/* 814AA568 | 48 00 00 14 */	b .L_814AA57C
.L_814AA56C:
/* 814AA56C | 7F 3A CB 78 */	mr r26, r25
.L_814AA570:
/* 814AA570 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814AA574 | 7C 00 E8 00 */	cmpw r0, r29
/* 814AA578 | 41 80 FF 3C */	blt .L_814AA4B4
.L_814AA57C:
/* 814AA57C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814AA580 | 7F C3 F3 78 */	mr r3, r30
/* 814AA584 | 38 BF FF FF */	subi r5, r31, 0x1
/* 814AA588 | 54 00 10 3A */	slwi r0, r0, 2
/* 814AA58C | 7C 98 00 2E */	lwzx r4, r24, r0
/* 814AA590 | 48 15 7E 35 */	bl strncpy
/* 814AA594 | 7C 7E FA 14 */	add r3, r30, r31
/* 814AA598 | 38 00 00 00 */	li r0, 0x0
/* 814AA59C | 98 03 FF FF */	stb r0, -0x1(r3)
/* 814AA5A0 | 38 60 00 00 */	li r3, 0x0
.L_814AA5A4:
/* 814AA5A4 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814AA5A8 | 48 14 EF 4D */	bl _restgpr_21
/* 814AA5AC | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814AA5B0 | 7C 08 03 A6 */	mtlr r0
/* 814AA5B4 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814AA5B8 | 4E 80 00 20 */	blr
.endfn NWC24iDetectEncodingToSend

# .text:0x1FA0 | 0x814AA5BC | size: 0x128
.fn NWC24iDetectBreakPoint, global
/* 814AA5BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AA5C0 | 39 20 00 00 */	li r9, 0x0
/* 814AA5C4 | 39 40 00 00 */	li r10, 0x0
/* 814AA5C8 | 41 82 00 0C */	beq .L_814AA5D4
/* 814AA5CC | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814AA5D0 | 40 82 00 0C */	bne .L_814AA5DC
.L_814AA5D4:
/* 814AA5D4 | 38 60 FF FD */	li r3, -0x3
/* 814AA5D8 | 4E 80 00 20 */	blr
.L_814AA5DC:
/* 814AA5DC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814AA5E0 | 40 82 00 0C */	bne .L_814AA5EC
/* 814AA5E4 | 39 00 00 01 */	li r8, 0x1
/* 814AA5E8 | 48 00 00 44 */	b .L_814AA62C
.L_814AA5EC:
/* 814AA5EC | 3C 04 FF FF */	subis r0, r4, 0x1
/* 814AA5F0 | 28 00 00 08 */	cmplwi r0, 0x8
/* 814AA5F4 | 40 82 00 0C */	bne .L_814AA600
/* 814AA5F8 | 39 00 00 00 */	li r8, 0x0
/* 814AA5FC | 48 00 00 30 */	b .L_814AA62C
.L_814AA600:
/* 814AA600 | 54 88 00 1E */	clrrwi r8, r4, 16
/* 814AA604 | 3C 08 FF F8 */	subis r0, r8, 0x8
/* 814AA608 | 28 00 00 00 */	cmplwi r0, 0x0
/* 814AA60C | 41 82 00 10 */	beq .L_814AA61C
/* 814AA610 | 3C 04 FF F1 */	subis r0, r4, 0xf
/* 814AA614 | 28 00 12 52 */	cmplwi r0, 0x1252
/* 814AA618 | 40 82 00 0C */	bne .L_814AA624
.L_814AA61C:
/* 814AA61C | 39 00 00 01 */	li r8, 0x1
/* 814AA620 | 48 00 00 0C */	b .L_814AA62C
.L_814AA624:
/* 814AA624 | 38 60 FF FC */	li r3, -0x4
/* 814AA628 | 4E 80 00 20 */	blr
.L_814AA62C:
/* 814AA62C | 7C 06 38 40 */	cmplw r6, r7
/* 814AA630 | 41 81 00 10 */	bgt .L_814AA640
/* 814AA634 | 90 C3 00 00 */	stw r6, 0x0(r3)
/* 814AA638 | 38 60 00 00 */	li r3, 0x0
/* 814AA63C | 4E 80 00 20 */	blr
.L_814AA640:
/* 814AA640 | 7C A4 2B 78 */	mr r4, r5
/* 814AA644 | 48 00 00 1C */	b .L_814AA660
.L_814AA648:
/* 814AA648 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 814AA64C | 28 00 00 20 */	cmplwi r0, 0x20
/* 814AA650 | 40 82 00 08 */	bne .L_814AA658
/* 814AA654 | 7D 2A 4B 78 */	mr r10, r9
.L_814AA658:
/* 814AA658 | 39 29 00 01 */	addi r9, r9, 0x1
/* 814AA65C | 38 84 00 01 */	addi r4, r4, 0x1
.L_814AA660:
/* 814AA660 | 7C 09 38 40 */	cmplw r9, r7
/* 814AA664 | 40 80 00 10 */	bge .L_814AA674
/* 814AA668 | 88 05 00 00 */	lbz r0, 0x0(r5)
/* 814AA66C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814AA670 | 40 82 FF D8 */	bne .L_814AA648
.L_814AA674:
/* 814AA674 | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 814AA678 | 41 82 00 10 */	beq .L_814AA688
/* 814AA67C | 91 43 00 00 */	stw r10, 0x0(r3)
/* 814AA680 | 38 60 00 00 */	li r3, 0x0
/* 814AA684 | 4E 80 00 20 */	blr
.L_814AA688:
/* 814AA688 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814AA68C | 41 82 00 10 */	beq .L_814AA69C
/* 814AA690 | 90 E3 00 00 */	stw r7, 0x0(r3)
/* 814AA694 | 38 60 00 00 */	li r3, 0x0
/* 814AA698 | 4E 80 00 20 */	blr
.L_814AA69C:
/* 814AA69C | 7C A4 2B 78 */	mr r4, r5
/* 814AA6A0 | 38 C0 00 00 */	li r6, 0x0
/* 814AA6A4 | 48 00 00 20 */	b .L_814AA6C4
.L_814AA6A8:
/* 814AA6A8 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 814AA6AC | 54 00 06 32 */	rlwinm r0, r0, 0, 24, 25
/* 814AA6B0 | 28 00 00 80 */	cmplwi r0, 0x80
/* 814AA6B4 | 41 82 00 08 */	beq .L_814AA6BC
/* 814AA6B8 | 7C CA 33 78 */	mr r10, r6
.L_814AA6BC:
/* 814AA6BC | 38 C6 00 01 */	addi r6, r6, 0x1
/* 814AA6C0 | 38 84 00 01 */	addi r4, r4, 0x1
.L_814AA6C4:
/* 814AA6C4 | 7C 06 38 40 */	cmplw r6, r7
/* 814AA6C8 | 40 80 00 10 */	bge .L_814AA6D8
/* 814AA6CC | 88 05 00 00 */	lbz r0, 0x0(r5)
/* 814AA6D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814AA6D4 | 40 82 FF D4 */	bne .L_814AA6A8
.L_814AA6D8:
/* 814AA6D8 | 91 43 00 00 */	stw r10, 0x0(r3)
/* 814AA6DC | 38 60 00 00 */	li r3, 0x0
/* 814AA6E0 | 4E 80 00 20 */	blr
.endfn NWC24iDetectBreakPoint

# .text:0x20C8 | 0x814AA6E4 | size: 0x1F4
.fn NWC24iSetMsgSubjectPlain, global
/* 814AA6E4 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814AA6E8 | 7C 08 02 A6 */	mflr r0
/* 814AA6EC | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814AA6F0 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814AA6F4 | 48 14 ED BD */	bl _savegpr_23
/* 814AA6F8 | 55 2B F8 7E */	srwi r11, r9, 1
/* 814AA6FC | 38 00 00 00 */	li r0, 0x0
/* 814AA700 | 7C EC 3B 78 */	mr r12, r7
/* 814AA704 | 90 A1 00 0C */	stw r5, 0xc(r1)
/* 814AA708 | 7D 5C 53 78 */	mr r28, r10
/* 814AA70C | 7E EB 48 50 */	subf r23, r11, r9
/* 814AA710 | 7C 85 23 78 */	mr r5, r4
/* 814AA714 | 7C C9 33 78 */	mr r9, r6
/* 814AA718 | 7D 1B 43 78 */	mr r27, r8
/* 814AA71C | 7C 7A 1B 78 */	mr r26, r3
/* 814AA720 | 7F C8 5A 14 */	add r30, r8, r11
/* 814AA724 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814AA728 | 80 E1 00 48 */	lwz r7, 0x48(r1)
/* 814AA72C | 7F 63 DB 78 */	mr r3, r27
/* 814AA730 | 91 61 00 10 */	stw r11, 0x10(r1)
/* 814AA734 | 7D 8A 63 78 */	mr r10, r12
/* 814AA738 | 38 81 00 10 */	addi r4, r1, 0x10
/* 814AA73C | 38 C1 00 0C */	addi r6, r1, 0xc
/* 814AA740 | 39 00 00 40 */	li r8, 0x40
/* 814AA744 | 4B FF FB 35 */	bl NWC24iConvertFromInternalEncoding
/* 814AA748 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AA74C | 41 82 00 08 */	beq .L_814AA754
/* 814AA750 | 48 00 01 70 */	b .L_814AA8C0
.L_814AA754:
/* 814AA754 | 80 A1 00 10 */	lwz r5, 0x10(r1)
/* 814AA758 | 7F 63 DB 78 */	mr r3, r27
/* 814AA75C | 38 C0 00 00 */	li r6, 0x0
/* 814AA760 | 38 80 00 20 */	li r4, 0x20
/* 814AA764 | 38 05 FF FF */	subi r0, r5, 0x1
/* 814AA768 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814AA76C | 48 00 00 24 */	b .L_814AA790
.L_814AA770:
/* 814AA770 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 814AA774 | 28 00 00 0A */	cmplwi r0, 0xa
/* 814AA778 | 41 82 00 0C */	beq .L_814AA784
/* 814AA77C | 28 00 00 0D */	cmplwi r0, 0xd
/* 814AA780 | 40 82 00 08 */	bne .L_814AA788
.L_814AA784:
/* 814AA784 | 98 83 00 00 */	stb r4, 0x0(r3)
.L_814AA788:
/* 814AA788 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 814AA78C | 38 63 00 01 */	addi r3, r3, 0x1
.L_814AA790:
/* 814AA790 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 814AA794 | 7C 06 00 40 */	cmplw r6, r0
/* 814AA798 | 41 80 FF D8 */	blt .L_814AA770
/* 814AA79C | 80 C1 00 0C */	lwz r6, 0xc(r1)
/* 814AA7A0 | 7F 84 E3 78 */	mr r4, r28
/* 814AA7A4 | 7F 65 DB 78 */	mr r5, r27
/* 814AA7A8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814AA7AC | 38 E0 00 3F */	li r7, 0x3f
/* 814AA7B0 | 4B FF FE 0D */	bl NWC24iDetectBreakPoint
/* 814AA7B4 | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 814AA7B8 | 83 E1 00 08 */	lwz r31, 0x8(r1)
/* 814AA7BC | 7C 1F 28 40 */	cmplw r31, r5
/* 814AA7C0 | 40 82 00 14 */	bne .L_814AA7D4
/* 814AA7C4 | 7F 43 D3 78 */	mr r3, r26
/* 814AA7C8 | 7F 64 DB 78 */	mr r4, r27
/* 814AA7CC | 4B FF 69 F5 */	bl NWC24SetMsgSubject
/* 814AA7D0 | 48 00 00 F0 */	b .L_814AA8C0
.L_814AA7D4:
/* 814AA7D4 | 7C 17 F8 40 */	cmplw r23, r31
/* 814AA7D8 | 92 E1 00 10 */	stw r23, 0x10(r1)
/* 814AA7DC | 41 81 00 0C */	bgt .L_814AA7E8
/* 814AA7E0 | 38 60 FF F8 */	li r3, -0x8
/* 814AA7E4 | 48 00 00 DC */	b .L_814AA8C0
.L_814AA7E8:
/* 814AA7E8 | 7F C3 F3 78 */	mr r3, r30
/* 814AA7EC | 7F 64 DB 78 */	mr r4, r27
/* 814AA7F0 | 38 BF 00 01 */	addi r5, r31, 0x1
/* 814AA7F4 | 4B FF 57 75 */	bl NWC24iStrLCpy
/* 814AA7F8 | 7C 7D 1B 78 */	mr r29, r3
/* 814AA7FC | 3B 20 00 20 */	li r25, 0x20
/* 814AA800 | 3A E0 00 0D */	li r23, 0xd
/* 814AA804 | 3B 00 00 0A */	li r24, 0xa
/* 814AA808 | 48 00 00 94 */	b .L_814AA89C
.L_814AA80C:
/* 814AA80C | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 814AA810 | 7C 1D 00 50 */	subf r0, r29, r0
/* 814AA814 | 28 00 00 03 */	cmplwi r0, 0x3
/* 814AA818 | 40 80 00 0C */	bge .L_814AA824
/* 814AA81C | 38 60 FF F8 */	li r3, -0x8
/* 814AA820 | 48 00 00 A0 */	b .L_814AA8C0
.L_814AA824:
/* 814AA824 | 7E FE E9 AE */	stbx r23, r30, r29
/* 814AA828 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 814AA82C | 7F 1E E9 AE */	stbx r24, r30, r29
/* 814AA830 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 814AA834 | 7C 1B F8 AE */	lbzx r0, r27, r31
/* 814AA838 | 28 00 00 20 */	cmplwi r0, 0x20
/* 814AA83C | 41 82 00 0C */	beq .L_814AA848
/* 814AA840 | 7F 3E E9 AE */	stbx r25, r30, r29
/* 814AA844 | 3B BD 00 01 */	addi r29, r29, 0x1
.L_814AA848:
/* 814AA848 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814AA84C | 7F 84 E3 78 */	mr r4, r28
/* 814AA850 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814AA854 | 7C BB FA 14 */	add r5, r27, r31
/* 814AA858 | 7C DF 00 50 */	subf r6, r31, r0
/* 814AA85C | 38 E0 00 47 */	li r7, 0x47
/* 814AA860 | 4B FF FD 5D */	bl NWC24iDetectBreakPoint
/* 814AA864 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 814AA868 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 814AA86C | 7C 1D 00 50 */	subf r0, r29, r0
/* 814AA870 | 7C 00 28 40 */	cmplw r0, r5
/* 814AA874 | 41 81 00 0C */	bgt .L_814AA880
/* 814AA878 | 38 60 FF F8 */	li r3, -0x8
/* 814AA87C | 48 00 00 44 */	b .L_814AA8C0
.L_814AA880:
/* 814AA880 | 7C 7E EA 14 */	add r3, r30, r29
/* 814AA884 | 7C 9B FA 14 */	add r4, r27, r31
/* 814AA888 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814AA88C | 4B FF 56 DD */	bl NWC24iStrLCpy
/* 814AA890 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814AA894 | 7F BD 1A 14 */	add r29, r29, r3
/* 814AA898 | 7F FF 02 14 */	add r31, r31, r0
.L_814AA89C:
/* 814AA89C | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814AA8A0 | 7C 1F 00 40 */	cmplw r31, r0
/* 814AA8A4 | 41 80 FF 68 */	blt .L_814AA80C
/* 814AA8A8 | 38 00 00 00 */	li r0, 0x0
/* 814AA8AC | 7F 43 D3 78 */	mr r3, r26
/* 814AA8B0 | 7C 1E E9 AE */	stbx r0, r30, r29
/* 814AA8B4 | 7F C4 F3 78 */	mr r4, r30
/* 814AA8B8 | 7F A5 EB 78 */	mr r5, r29
/* 814AA8BC | 4B FF 69 05 */	bl NWC24SetMsgSubject
.L_814AA8C0:
/* 814AA8C0 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814AA8C4 | 48 14 EC 39 */	bl _restgpr_23
/* 814AA8C8 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814AA8CC | 7C 08 03 A6 */	mtlr r0
/* 814AA8D0 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814AA8D4 | 4E 80 00 20 */	blr
.endfn NWC24iSetMsgSubjectPlain

# .text:0x22BC | 0x814AA8D8 | size: 0x240
.fn NWC24iSetMsgSubjectQP, global
/* 814AA8D8 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 814AA8DC | 7C 08 02 A6 */	mflr r0
/* 814AA8E0 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 814AA8E4 | 39 61 00 50 */	addi r11, r1, 0x50
/* 814AA8E8 | 48 14 EB C1 */	bl _savegpr_21
/* 814AA8EC | 55 2B F8 7E */	srwi r11, r9, 1
/* 814AA8F0 | 38 00 00 00 */	li r0, 0x0
/* 814AA8F4 | 90 A1 00 10 */	stw r5, 0x10(r1)
/* 814AA8F8 | 7C EC 3B 78 */	mr r12, r7
/* 814AA8FC | 83 61 00 58 */	lwz r27, 0x58(r1)
/* 814AA900 | 7F CB 48 50 */	subf r30, r11, r9
/* 814AA904 | 7D 5A 53 78 */	mr r26, r10
/* 814AA908 | 7C 85 23 78 */	mr r5, r4
/* 814AA90C | 7C C9 33 78 */	mr r9, r6
/* 814AA910 | 7D 19 43 78 */	mr r25, r8
/* 814AA914 | 7C 78 1B 78 */	mr r24, r3
/* 814AA918 | 7F A8 5A 14 */	add r29, r8, r11
/* 814AA91C | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814AA920 | 7F 23 CB 78 */	mr r3, r25
/* 814AA924 | 7F 67 DB 78 */	mr r7, r27
/* 814AA928 | 7D 8A 63 78 */	mr r10, r12
/* 814AA92C | 91 61 00 14 */	stw r11, 0x14(r1)
/* 814AA930 | 38 81 00 14 */	addi r4, r1, 0x14
/* 814AA934 | 38 C1 00 10 */	addi r6, r1, 0x10
/* 814AA938 | 39 00 00 40 */	li r8, 0x40
/* 814AA93C | 4B FF F9 3D */	bl NWC24iConvertFromInternalEncoding
/* 814AA940 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AA944 | 41 82 00 08 */	beq .L_814AA94C
/* 814AA948 | 48 00 01 B8 */	b .L_814AAB00
.L_814AA94C:
/* 814AA94C | 80 A1 00 14 */	lwz r5, 0x14(r1)
/* 814AA950 | 7F 23 CB 78 */	mr r3, r25
/* 814AA954 | 38 C0 00 00 */	li r6, 0x0
/* 814AA958 | 38 80 00 20 */	li r4, 0x20
/* 814AA95C | 38 05 FF FF */	subi r0, r5, 0x1
/* 814AA960 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 814AA964 | 48 00 00 24 */	b .L_814AA988
.L_814AA968:
/* 814AA968 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 814AA96C | 28 00 00 0A */	cmplwi r0, 0xa
/* 814AA970 | 41 82 00 0C */	beq .L_814AA97C
/* 814AA974 | 28 00 00 0D */	cmplwi r0, 0xd
/* 814AA978 | 40 82 00 08 */	bne .L_814AA980
.L_814AA97C:
/* 814AA97C | 98 83 00 00 */	stb r4, 0x0(r3)
.L_814AA980:
/* 814AA980 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 814AA984 | 38 63 00 01 */	addi r3, r3, 0x1
.L_814AA988:
/* 814AA988 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814AA98C | 7C 06 00 40 */	cmplw r6, r0
/* 814AA990 | 41 80 FF D8 */	blt .L_814AA968
/* 814AA994 | 7F 63 DB 78 */	mr r3, r27
/* 814AA998 | 48 14 E5 65 */	bl strlen
/* 814AA99C | 3E A0 AA AB */	lis r21, 0xaaab
/* 814AA9A0 | 20 03 00 38 */	subfic r0, r3, 0x38
/* 814AA9A4 | 38 75 AA AB */	subi r3, r21, 0x5555
/* 814AA9A8 | 80 C1 00 10 */	lwz r6, 0x10(r1)
/* 814AA9AC | 7C 03 00 16 */	mulhwu r0, r3, r0
/* 814AA9B0 | 7F 44 D3 78 */	mr r4, r26
/* 814AA9B4 | 7F 25 CB 78 */	mr r5, r25
/* 814AA9B8 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814AA9BC | 54 07 F8 7E */	srwi r7, r0, 1
/* 814AA9C0 | 4B FF FB FD */	bl NWC24iDetectBreakPoint
/* 814AA9C4 | 81 41 00 0C */	lwz r10, 0xc(r1)
/* 814AA9C8 | 7F A3 EB 78 */	mr r3, r29
/* 814AA9CC | 7F C4 F3 78 */	mr r4, r30
/* 814AA9D0 | 7F 66 DB 78 */	mr r6, r27
/* 814AA9D4 | 7F 29 CB 78 */	mr r9, r25
/* 814AA9D8 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814AA9DC | 38 E0 00 40 */	li r7, 0x40
/* 814AA9E0 | 39 00 00 51 */	li r8, 0x51
/* 814AA9E4 | 4B FF A7 9D */	bl NWC24EncodeWord
/* 814AA9E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AA9EC | 41 82 00 08 */	beq .L_814AA9F4
/* 814AA9F0 | 48 00 01 10 */	b .L_814AAB00
.L_814AA9F4:
/* 814AA9F4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814AA9F8 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 814AA9FC | 7C 1F 00 40 */	cmplw r31, r0
/* 814AAA00 | 40 82 00 1C */	bne .L_814AAA1C
/* 814AAA04 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 814AAA08 | 7F 03 C3 78 */	mr r3, r24
/* 814AAA0C | 7F A4 EB 78 */	mr r4, r29
/* 814AAA10 | 38 A5 FF FF */	subi r5, r5, 0x1
/* 814AAA14 | 4B FF 67 AD */	bl NWC24SetMsgSubject
/* 814AAA18 | 48 00 00 E8 */	b .L_814AAB00
.L_814AAA1C:
/* 814AAA1C | 7F 63 DB 78 */	mr r3, r27
/* 814AAA20 | 48 14 E4 DD */	bl strlen
/* 814AAA24 | 20 03 00 40 */	subfic r0, r3, 0x40
/* 814AAA28 | 38 75 AA AB */	subi r3, r21, 0x5555
/* 814AAA2C | 7C 03 00 16 */	mulhwu r0, r3, r0
/* 814AAA30 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814AAA34 | 93 C1 00 14 */	stw r30, 0x14(r1)
/* 814AAA38 | 3A A0 00 0D */	li r21, 0xd
/* 814AAA3C | 3B 83 FF FF */	subi r28, r3, 0x1
/* 814AAA40 | 3A C0 00 0A */	li r22, 0xa
/* 814AAA44 | 54 1E F8 7E */	srwi r30, r0, 1
/* 814AAA48 | 3A E0 00 20 */	li r23, 0x20
/* 814AAA4C | 48 00 00 98 */	b .L_814AAAE4
.L_814AAA50:
/* 814AAA50 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814AAA54 | 7C 1C 00 50 */	subf r0, r28, r0
/* 814AAA58 | 28 00 00 03 */	cmplwi r0, 0x3
/* 814AAA5C | 40 80 00 0C */	bge .L_814AAA68
/* 814AAA60 | 38 60 FF F8 */	li r3, -0x8
/* 814AAA64 | 48 00 00 9C */	b .L_814AAB00
.L_814AAA68:
/* 814AAA68 | 7E BD E1 AE */	stbx r21, r29, r28
/* 814AAA6C | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 814AAA70 | 7F 44 D3 78 */	mr r4, r26
/* 814AAA74 | 7F C7 F3 78 */	mr r7, r30
/* 814AAA78 | 7E DD E1 AE */	stbx r22, r29, r28
/* 814AAA7C | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 814AAA80 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814AAA84 | 7C B9 FA 14 */	add r5, r25, r31
/* 814AAA88 | 7E FD E1 AE */	stbx r23, r29, r28
/* 814AAA8C | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 814AAA90 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 814AAA94 | 7C DF 00 50 */	subf r6, r31, r0
/* 814AAA98 | 4B FF FB 25 */	bl NWC24iDetectBreakPoint
/* 814AAA9C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814AAAA0 | 7F 66 DB 78 */	mr r6, r27
/* 814AAAA4 | 81 41 00 0C */	lwz r10, 0xc(r1)
/* 814AAAA8 | 7C 7D E2 14 */	add r3, r29, r28
/* 814AAAAC | 7C 9C 00 50 */	subf r4, r28, r0
/* 814AAAB0 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814AAAB4 | 7D 39 FA 14 */	add r9, r25, r31
/* 814AAAB8 | 38 E0 00 40 */	li r7, 0x40
/* 814AAABC | 39 00 00 51 */	li r8, 0x51
/* 814AAAC0 | 4B FF A6 C1 */	bl NWC24EncodeWord
/* 814AAAC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AAAC8 | 41 82 00 08 */	beq .L_814AAAD0
/* 814AAACC | 48 00 00 34 */	b .L_814AAB00
.L_814AAAD0:
/* 814AAAD0 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814AAAD4 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814AAAD8 | 7C 7C 02 14 */	add r3, r28, r0
/* 814AAADC | 7F FF 22 14 */	add r31, r31, r4
/* 814AAAE0 | 3B 83 FF FF */	subi r28, r3, 0x1
.L_814AAAE4:
/* 814AAAE4 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 814AAAE8 | 7C 1F 00 40 */	cmplw r31, r0
/* 814AAAEC | 41 80 FF 64 */	blt .L_814AAA50
/* 814AAAF0 | 7F 03 C3 78 */	mr r3, r24
/* 814AAAF4 | 7F A4 EB 78 */	mr r4, r29
/* 814AAAF8 | 7F 85 E3 78 */	mr r5, r28
/* 814AAAFC | 4B FF 66 C5 */	bl NWC24SetMsgSubject
.L_814AAB00:
/* 814AAB00 | 39 61 00 50 */	addi r11, r1, 0x50
/* 814AAB04 | 48 14 E9 F1 */	bl _restgpr_21
/* 814AAB08 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 814AAB0C | 7C 08 03 A6 */	mtlr r0
/* 814AAB10 | 38 21 00 50 */	addi r1, r1, 0x50
/* 814AAB14 | 4E 80 00 20 */	blr
.endfn NWC24iSetMsgSubjectQP

# .text:0x24FC | 0x814AAB18 | size: 0x220
.fn NWC24iSetMsgSubjectBase64, global
/* 814AAB18 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 814AAB1C | 7C 08 02 A6 */	mflr r0
/* 814AAB20 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 814AAB24 | 39 61 00 60 */	addi r11, r1, 0x60
/* 814AAB28 | 48 14 E9 71 */	bl _savegpr_17
/* 814AAB2C | 82 E1 00 68 */	lwz r23, 0x68(r1)
/* 814AAB30 | 55 38 F8 7E */	srwi r24, r9, 1
/* 814AAB34 | 7C 71 1B 78 */	mr r17, r3
/* 814AAB38 | 7D 16 43 78 */	mr r22, r8
/* 814AAB3C | 7C 92 23 78 */	mr r18, r4
/* 814AAB40 | 7C B3 2B 78 */	mr r19, r5
/* 814AAB44 | 7C D4 33 78 */	mr r20, r6
/* 814AAB48 | 7C F5 3B 78 */	mr r21, r7
/* 814AAB4C | 7E E3 BB 78 */	mr r3, r23
/* 814AAB50 | 7F 68 C2 14 */	add r27, r8, r24
/* 814AAB54 | 7F 58 48 50 */	subf r26, r24, r9
/* 814AAB58 | 48 14 E3 A5 */	bl strlen
/* 814AAB5C | 20 63 00 36 */	subfic r3, r3, 0x36
/* 814AAB60 | 54 60 10 3A */	slwi r0, r3, 2
/* 814AAB64 | 7C 03 00 50 */	subf r0, r3, r0
/* 814AAB68 | 54 03 F0 BE */	srwi r3, r0, 2
/* 814AAB6C | 7C 03 C0 40 */	cmplw r3, r24
/* 814AAB70 | 40 81 00 0C */	ble .L_814AAB7C
/* 814AAB74 | 38 60 FF F8 */	li r3, -0x8
/* 814AAB78 | 48 00 01 A8 */	b .L_814AAD20
.L_814AAB7C:
/* 814AAB7C | 38 03 00 01 */	addi r0, r3, 0x1
/* 814AAB80 | 92 61 00 0C */	stw r19, 0xc(r1)
/* 814AAB84 | 7E C3 B3 78 */	mr r3, r22
/* 814AAB88 | 7E 45 93 78 */	mr r5, r18
/* 814AAB8C | 90 01 00 10 */	stw r0, 0x10(r1)
/* 814AAB90 | 7E E7 BB 78 */	mr r7, r23
/* 814AAB94 | 7E 89 A3 78 */	mr r9, r20
/* 814AAB98 | 7E AA AB 78 */	mr r10, r21
/* 814AAB9C | 38 81 00 10 */	addi r4, r1, 0x10
/* 814AABA0 | 38 C1 00 0C */	addi r6, r1, 0xc
/* 814AABA4 | 39 00 00 40 */	li r8, 0x40
/* 814AABA8 | 4B FF F6 D1 */	bl NWC24iConvertFromInternalEncoding
/* 814AABAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AABB0 | 41 82 00 10 */	beq .L_814AABC0
/* 814AABB4 | 2C 03 FF F8 */	cmpwi r3, -0x8
/* 814AABB8 | 41 82 00 08 */	beq .L_814AABC0
/* 814AABBC | 48 00 01 64 */	b .L_814AAD20
.L_814AABC0:
/* 814AABC0 | 80 E1 00 10 */	lwz r7, 0x10(r1)
/* 814AABC4 | 7F 63 DB 78 */	mr r3, r27
/* 814AABC8 | 7F 44 D3 78 */	mr r4, r26
/* 814AABCC | 7E E6 BB 78 */	mr r6, r23
/* 814AABD0 | 39 47 FF FF */	subi r10, r7, 0x1
/* 814AABD4 | 7E C9 B3 78 */	mr r9, r22
/* 814AABD8 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814AABDC | 38 E0 00 40 */	li r7, 0x40
/* 814AABE0 | 39 00 00 42 */	li r8, 0x42
/* 814AABE4 | 4B FF A5 9D */	bl NWC24EncodeWord
/* 814AABE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AABEC | 41 82 00 08 */	beq .L_814AABF4
/* 814AABF0 | 48 00 01 30 */	b .L_814AAD20
.L_814AABF4:
/* 814AABF4 | 83 21 00 0C */	lwz r25, 0xc(r1)
/* 814AABF8 | 7C 19 98 40 */	cmplw r25, r19
/* 814AABFC | 40 82 00 1C */	bne .L_814AAC18
/* 814AAC00 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 814AAC04 | 7E 23 8B 78 */	mr r3, r17
/* 814AAC08 | 7F 64 DB 78 */	mr r4, r27
/* 814AAC0C | 38 A5 FF FF */	subi r5, r5, 0x1
/* 814AAC10 | 4B FF 65 B1 */	bl NWC24SetMsgSubject
/* 814AAC14 | 48 00 01 0C */	b .L_814AAD20
.L_814AAC18:
/* 814AAC18 | 7E E3 BB 78 */	mr r3, r23
/* 814AAC1C | 48 14 E2 E1 */	bl strlen
/* 814AAC20 | 20 83 00 3E */	subfic r4, r3, 0x3e
/* 814AAC24 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814AAC28 | 54 80 10 3A */	slwi r0, r4, 2
/* 814AAC2C | 3B A0 00 0D */	li r29, 0xd
/* 814AAC30 | 7C 04 00 50 */	subf r0, r4, r0
/* 814AAC34 | 3B 03 FF FF */	subi r24, r3, 0x1
/* 814AAC38 | 54 03 F0 BE */	srwi r3, r0, 2
/* 814AAC3C | 3B C0 00 0A */	li r30, 0xa
/* 814AAC40 | 3B 83 00 01 */	addi r28, r3, 0x1
/* 814AAC44 | 3B E0 00 20 */	li r31, 0x20
/* 814AAC48 | 48 00 00 C0 */	b .L_814AAD08
.L_814AAC4C:
/* 814AAC4C | 7C 18 D0 50 */	subf r0, r24, r26
/* 814AAC50 | 7C 79 98 50 */	subf r3, r25, r19
/* 814AAC54 | 28 00 00 03 */	cmplwi r0, 0x3
/* 814AAC58 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 814AAC5C | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814AAC60 | 40 80 00 0C */	bge .L_814AAC6C
/* 814AAC64 | 38 60 FF F8 */	li r3, -0x8
/* 814AAC68 | 48 00 00 B8 */	b .L_814AAD20
.L_814AAC6C:
/* 814AAC6C | 7F BB C1 AE */	stbx r29, r27, r24
/* 814AAC70 | 3B 18 00 01 */	addi r24, r24, 0x1
/* 814AAC74 | 57 20 08 3C */	slwi r0, r25, 1
/* 814AAC78 | 7E C3 B3 78 */	mr r3, r22
/* 814AAC7C | 7F DB C1 AE */	stbx r30, r27, r24
/* 814AAC80 | 3B 18 00 01 */	addi r24, r24, 0x1
/* 814AAC84 | 7E E7 BB 78 */	mr r7, r23
/* 814AAC88 | 7E 89 A3 78 */	mr r9, r20
/* 814AAC8C | 7F FB C1 AE */	stbx r31, r27, r24
/* 814AAC90 | 7E AA AB 78 */	mr r10, r21
/* 814AAC94 | 38 81 00 10 */	addi r4, r1, 0x10
/* 814AAC98 | 7C B2 02 14 */	add r5, r18, r0
/* 814AAC9C | 38 C1 00 0C */	addi r6, r1, 0xc
/* 814AACA0 | 39 00 00 40 */	li r8, 0x40
/* 814AACA4 | 3B 18 00 01 */	addi r24, r24, 0x1
/* 814AACA8 | 4B FF F5 D1 */	bl NWC24iConvertFromInternalEncoding
/* 814AACAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AACB0 | 41 82 00 10 */	beq .L_814AACC0
/* 814AACB4 | 2C 03 FF F8 */	cmpwi r3, -0x8
/* 814AACB8 | 41 82 00 08 */	beq .L_814AACC0
/* 814AACBC | 48 00 00 64 */	b .L_814AAD20
.L_814AACC0:
/* 814AACC0 | 80 E1 00 10 */	lwz r7, 0x10(r1)
/* 814AACC4 | 7E E6 BB 78 */	mr r6, r23
/* 814AACC8 | 7E C9 B3 78 */	mr r9, r22
/* 814AACCC | 7C 7B C2 14 */	add r3, r27, r24
/* 814AACD0 | 39 47 FF FF */	subi r10, r7, 0x1
/* 814AACD4 | 7C 98 D0 50 */	subf r4, r24, r26
/* 814AACD8 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814AACDC | 38 E0 00 40 */	li r7, 0x40
/* 814AACE0 | 39 00 00 42 */	li r8, 0x42
/* 814AACE4 | 4B FF A4 9D */	bl NWC24EncodeWord
/* 814AACE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AACEC | 41 82 00 08 */	beq .L_814AACF4
/* 814AACF0 | 48 00 00 30 */	b .L_814AAD20
.L_814AACF4:
/* 814AACF4 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814AACF8 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814AACFC | 7C 78 02 14 */	add r3, r24, r0
/* 814AAD00 | 7F 39 22 14 */	add r25, r25, r4
/* 814AAD04 | 3B 03 FF FF */	subi r24, r3, 0x1
.L_814AAD08:
/* 814AAD08 | 7C 19 98 40 */	cmplw r25, r19
/* 814AAD0C | 41 80 FF 40 */	blt .L_814AAC4C
/* 814AAD10 | 7E 23 8B 78 */	mr r3, r17
/* 814AAD14 | 7F 64 DB 78 */	mr r4, r27
/* 814AAD18 | 7F 05 C3 78 */	mr r5, r24
/* 814AAD1C | 4B FF 64 A5 */	bl NWC24SetMsgSubject
.L_814AAD20:
/* 814AAD20 | 39 61 00 60 */	addi r11, r1, 0x60
/* 814AAD24 | 48 14 E7 C1 */	bl _restgpr_17
/* 814AAD28 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 814AAD2C | 7C 08 03 A6 */	mtlr r0
/* 814AAD30 | 38 21 00 60 */	addi r1, r1, 0x60
/* 814AAD34 | 4E 80 00 20 */	blr
.endfn NWC24iSetMsgSubjectBase64

# 0x8166DF78..0x8166E0B0 | size: 0x138
.data
.balign 8

# .data:0x0 | 0x8166DF78 | size: 0xC
.obj lbl_8166DF78, global
	.4byte 0x782D7769
	.4byte 0x69666163
	.4byte 0x65000000
.endobj lbl_8166DF78

# .data:0xC | 0x8166DF84 | size: 0x10
.obj lbl_8166DF84, global
	.4byte 0x782D7769
	.4byte 0x692D616C
	.4byte 0x746E616D
	.4byte 0x653A0000
.endobj lbl_8166DF84

# .data:0x1C | 0x8166DF94 | size: 0x14
.obj lbl_8166DF94, global
	.4byte 0x782D7769
	.4byte 0x692D6D62
	.4byte 0x2D6E6F72
	.4byte 0x65706C79
	.4byte 0x3A000000
.endobj lbl_8166DF94

# .data:0x30 | 0x8166DFA8 | size: 0x18
.obj lbl_8166DFA8, global
	.4byte 0x782D7769
	.4byte 0x692D6D62
	.4byte 0x2D726567
	.4byte 0x64617465
	.4byte 0x3A000000
	.4byte 0x00000000
.endobj lbl_8166DFA8

# .data:0x48 | 0x8166DFC0 | size: 0x10
.obj lbl_8166DFC0, global
	.string "x-wii-mb-delay:"
.endobj lbl_8166DFC0

# .data:0x58 | 0x8166DFD0 | size: 0x14
.obj lbl_8166DFD0, global
	.4byte 0x782D7769
	.4byte 0x692D6D62
	.4byte 0x2D757064
	.4byte 0x61746573
	.4byte 0x773A0000
.endobj lbl_8166DFD0

# .data:0x6C | 0x8166DFE4 | size: 0x14
.obj lbl_8166DFE4, global
	.4byte 0x782D7769
	.4byte 0x692D6D62
	.4byte 0x2D6F7074
	.4byte 0x6F75743A
	.4byte 0x00000000
.endobj lbl_8166DFE4

# .data:0x80 | 0x8166DFF8 | size: 0xC
.obj lbl_8166DFF8, global
	.4byte 0x75732D61
	.4byte 0x73636969
	.4byte 0x00000000
.endobj lbl_8166DFF8

# .data:0x8C | 0x8166E004 | size: 0x18
.obj lbl_8166E004, global
	.4byte 0x69736F2D
	.4byte 0x32303232
	.4byte 0x2D6A7000
	.4byte lbl_8166DFF8
	.4byte lbl_8166E004
	.4byte lbl_81697C70
.endobj lbl_8166E004

# .data:0xA4 | 0x8166E01C | size: 0xC
.obj lbl_8166E01C, global
	.4byte 0x69736F2D
	.4byte 0x38383539
	.4byte 0x2D310000
.endobj lbl_8166E01C

# .data:0xB0 | 0x8166E028 | size: 0x10
.obj lbl_8166E028, global
	.4byte 0x77696E64
	.4byte 0x6F77732D
	.4byte 0x31323532
	.4byte 0x00000000
.endobj lbl_8166E028

# .data:0xC0 | 0x8166E038 | size: 0xC
.obj lbl_8166E038, global
	.4byte 0x69736F2D
	.4byte 0x38383539
	.4byte 0x2D320000
.endobj lbl_8166E038

# .data:0xCC | 0x8166E044 | size: 0xC
.obj lbl_8166E044, global
	.4byte 0x69736F2D
	.4byte 0x38383539
	.4byte 0x2D370000
.endobj lbl_8166E044

# .data:0xD8 | 0x8166E050 | size: 0xC
.obj lbl_8166E050, global
	.string "iso-8859-10"
.endobj lbl_8166E050

# .data:0xE4 | 0x8166E05C | size: 0x38
.obj lbl_8166E05C, global
	.4byte 0x69736F2D
	.4byte 0x38383539
	.4byte 0x2D330000
	.4byte lbl_8166DFF8
	.4byte lbl_8166E01C
	.4byte lbl_8166E028
	.4byte lbl_8166E038
	.4byte lbl_8166E044
	.4byte lbl_8166E050
	.4byte lbl_8166E05C
	.4byte lbl_81697C70
	.4byte lbl_8166DFF8
	.4byte lbl_81697C78
	.4byte lbl_81697C70
.endobj lbl_8166E05C

# .data:0x11C | 0x8166E094 | size: 0xC
.obj lbl_8166E094, global
	.string "iso-2022-jp"
.endobj lbl_8166E094

# .data:0x128 | 0x8166E0A0 | size: 0x10
.obj lbl_8166E0A0, global
	.4byte 0x69736F2D
	.4byte 0x38383539
	.4byte 0x2D310000
	.4byte 0x00000000
.endobj lbl_8166E0A0

# 0x81697C70..0x81697CA0 | size: 0x30
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697C70 | size: 0x8
.obj lbl_81697C70, global
	.4byte 0x7574662D
	.4byte 0x38000000
.endobj lbl_81697C70

# .sdata:0x8 | 0x81697C78 | size: 0x8
.obj lbl_81697C78, global
	.4byte 0x6575632D
	.4byte 0x6B720000
.endobj lbl_81697C78

# .sdata:0x10 | 0x81697C80 | size: 0x8
.obj lbl_81697C80, global
	.4byte 0x67623233
	.4byte 0x31320000
.endobj lbl_81697C80

# .sdata:0x18 | 0x81697C88 | size: 0x8
.obj lbl_81697C88, global
	.4byte lbl_8166DFF8
	.4byte lbl_81697C80
.endobj lbl_81697C88

# .sdata:0x20 | 0x81697C90 | size: 0x8
.obj lbl_81697C90, global
	.4byte 0x6575632D
	.4byte 0x6B720000
.endobj lbl_81697C90

# .sdata:0x28 | 0x81697C98 | size: 0x8
.obj lbl_81697C98, global
	.4byte 0x67623233
	.4byte 0x31320000
.endobj lbl_81697C98
