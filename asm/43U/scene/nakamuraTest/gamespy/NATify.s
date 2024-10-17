.include "macros.inc"
.file "NATify.c"

# 0x813D5564..0x813D5E8C | size: 0x928
.text
.balign 4

# .text:0x0 | 0x813D5564 | size: 0xE4
.fn AddressToString, global
/* 813D5564 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813D5568 | 7C 08 02 A6 */	mflr r0
/* 813D556C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813D5570 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813D5574 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813D5578 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 813D557C | 7C 9E 23 78 */	mr r30, r4
/* 813D5580 | 41 82 00 0C */	beq .L_813D558C
/* 813D5584 | 7C BF 2B 78 */	mr r31, r5
/* 813D5588 | 48 00 00 20 */	b .L_813D55A8
.L_813D558C:
/* 813D558C | 80 0D AB 30 */	lwz r0, nIndex$2605@sda21(r0)
/* 813D5590 | 3C A0 81 0B */	lis r5, lbl_810B7DD8@ha
/* 813D5594 | 38 A5 7D D8 */	addi r5, r5, lbl_810B7DD8@l
/* 813D5598 | 68 06 00 01 */	xori r6, r0, 0x1
/* 813D559C | 1C 06 00 16 */	mulli r0, r6, 0x16
/* 813D55A0 | 90 CD AB 30 */	stw r6, nIndex$2605@sda21(r0)
/* 813D55A4 | 7F E5 02 14 */	add r31, r5, r0
.L_813D55A8:
/* 813D55A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D55AC | 41 82 00 58 */	beq .L_813D5604
/* 813D55B0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813D55B4 | 41 82 00 2C */	beq .L_813D55E0
/* 813D55B8 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 813D55BC | 38 61 00 0C */	addi r3, r1, 0xc
/* 813D55C0 | 48 0D E4 15 */	bl SOInetNtoA
/* 813D55C4 | 7C 65 1B 78 */	mr r5, r3
/* 813D55C8 | 7F E3 FB 78 */	mr r3, r31
/* 813D55CC | 7F C6 F3 78 */	mr r6, r30
/* 813D55D0 | 38 8D 8C C8 */	li r4, lbl_81696D08@sda21
/* 813D55D4 | 4C C6 31 82 */	crclr cr1eq
/* 813D55D8 | 48 22 B4 A9 */	bl sprintf
/* 813D55DC | 48 00 00 50 */	b .L_813D562C
.L_813D55E0:
/* 813D55E0 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 813D55E4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813D55E8 | 48 0D E3 ED */	bl SOInetNtoA
/* 813D55EC | 7C 65 1B 78 */	mr r5, r3
/* 813D55F0 | 7F E3 FB 78 */	mr r3, r31
/* 813D55F4 | 38 8D 8C CE */	li r4, lbl_81696D0E@sda21
/* 813D55F8 | 4C C6 31 82 */	crclr cr1eq
/* 813D55FC | 48 22 B4 85 */	bl sprintf
/* 813D5600 | 48 00 00 2C */	b .L_813D562C
.L_813D5604:
/* 813D5604 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813D5608 | 41 82 00 1C */	beq .L_813D5624
/* 813D560C | 7F E3 FB 78 */	mr r3, r31
/* 813D5610 | 7F C5 F3 78 */	mr r5, r30
/* 813D5614 | 38 8D 8C D1 */	li r4, lbl_81696D11@sda21
/* 813D5618 | 4C C6 31 82 */	crclr cr1eq
/* 813D561C | 48 22 B4 65 */	bl sprintf
/* 813D5620 | 48 00 00 0C */	b .L_813D562C
.L_813D5624:
/* 813D5624 | 38 00 00 00 */	li r0, 0x0
/* 813D5628 | 98 1F 00 00 */	stb r0, 0x0(r31)
.L_813D562C:
/* 813D562C | 7F E3 FB 78 */	mr r3, r31
/* 813D5630 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813D5634 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 813D5638 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813D563C | 7C 08 03 A6 */	mtlr r0
/* 813D5640 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813D5644 | 4E 80 00 20 */	blr
.endfn AddressToString

# .text:0xE4 | 0x813D5648 | size: 0xE0
.fn DiscoverReachability, global
/* 813D5648 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 813D564C | 7C 08 02 A6 */	mflr r0
/* 813D5650 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 813D5654 | 39 61 00 70 */	addi r11, r1, 0x70
/* 813D5658 | 48 22 3E 6D */	bl _savegpr_28
/* 813D565C | 7C BE 2B 78 */	mr r30, r5
/* 813D5660 | 7C 9D 23 78 */	mr r29, r4
/* 813D5664 | 7C 7C 1B 78 */	mr r28, r3
/* 813D5668 | 7C DF 33 78 */	mr r31, r6
/* 813D566C | 7F A3 EB 78 */	mr r3, r29
/* 813D5670 | 7F C4 F3 78 */	mr r4, r30
/* 813D5674 | 38 A0 00 00 */	li r5, 0x0
/* 813D5678 | 4B FF FE ED */	bl AddressToString
/* 813D567C | 38 00 00 02 */	li r0, 0x2
/* 813D5680 | 93 A1 00 0C */	stw r29, 0xc(r1)
/* 813D5684 | 7F C3 F3 78 */	mr r3, r30
/* 813D5688 | 98 01 00 09 */	stb r0, 0x9(r1)
/* 813D568C | 48 0D E4 ED */	bl SOHtoNs
/* 813D5690 | B0 61 00 0A */	sth r3, 0xa(r1)
/* 813D5694 | 38 61 00 10 */	addi r3, r1, 0x10
/* 813D5698 | 38 80 00 00 */	li r4, 0x0
/* 813D569C | 38 A0 00 49 */	li r5, 0x49
/* 813D56A0 | 4B F5 AC 95 */	bl memset
/* 813D56A4 | 38 60 00 FD */	li r3, 0xfd
/* 813D56A8 | 39 20 00 FC */	li r9, 0xfc
/* 813D56AC | 39 00 00 1E */	li r8, 0x1e
/* 813D56B0 | 38 E0 00 66 */	li r7, 0x66
/* 813D56B4 | 38 C0 00 6A */	li r6, 0x6a
/* 813D56B8 | 38 A0 00 B2 */	li r5, 0xb2
/* 813D56BC | 38 80 00 03 */	li r4, 0x3
/* 813D56C0 | 38 00 00 0C */	li r0, 0xc
/* 813D56C4 | 98 61 00 10 */	stb r3, 0x10(r1)
/* 813D56C8 | 38 60 03 09 */	li r3, 0x309
/* 813D56CC | 99 21 00 11 */	stb r9, 0x11(r1)
/* 813D56D0 | 99 01 00 12 */	stb r8, 0x12(r1)
/* 813D56D4 | 98 E1 00 13 */	stb r7, 0x13(r1)
/* 813D56D8 | 98 C1 00 14 */	stb r6, 0x14(r1)
/* 813D56DC | 98 A1 00 15 */	stb r5, 0x15(r1)
/* 813D56E0 | 98 81 00 16 */	stb r4, 0x16(r1)
/* 813D56E4 | 98 01 00 17 */	stb r0, 0x17(r1)
/* 813D56E8 | 48 0D E4 8D */	bl SOHtoNl
/* 813D56EC | 90 61 00 18 */	stw r3, 0x18(r1)
/* 813D56F0 | 7F 83 E3 78 */	mr r3, r28
/* 813D56F4 | 38 81 00 10 */	addi r4, r1, 0x10
/* 813D56F8 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 813D56FC | 9B E1 00 1C */	stb r31, 0x1c(r1)
/* 813D5700 | 38 A0 00 49 */	li r5, 0x49
/* 813D5704 | 38 C0 00 00 */	li r6, 0x0
/* 813D5708 | 39 00 00 08 */	li r8, 0x8
/* 813D570C | 48 00 0D 31 */	bl sendto
/* 813D5710 | 39 61 00 70 */	addi r11, r1, 0x70
/* 813D5714 | 48 22 3D FD */	bl _restgpr_28
/* 813D5718 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 813D571C | 7C 08 03 A6 */	mtlr r0
/* 813D5720 | 38 21 00 70 */	addi r1, r1, 0x70
/* 813D5724 | 4E 80 00 20 */	blr
.endfn DiscoverReachability

# .text:0x1C4 | 0x813D5728 | size: 0xE4
.fn DiscoverMapping, global
/* 813D5728 | 94 21 FF 80 */	stwu r1, -0x80(r1)
/* 813D572C | 7C 08 02 A6 */	mflr r0
/* 813D5730 | 90 01 00 84 */	stw r0, 0x84(r1)
/* 813D5734 | 39 61 00 80 */	addi r11, r1, 0x80
/* 813D5738 | 48 22 3D 89 */	bl _savegpr_27
/* 813D573C | 7C BD 2B 78 */	mr r29, r5
/* 813D5740 | 7C 9C 23 78 */	mr r28, r4
/* 813D5744 | 7C 7B 1B 78 */	mr r27, r3
/* 813D5748 | 7C DE 33 78 */	mr r30, r6
/* 813D574C | 7C FF 3B 78 */	mr r31, r7
/* 813D5750 | 7F 83 E3 78 */	mr r3, r28
/* 813D5754 | 7F A4 EB 78 */	mr r4, r29
/* 813D5758 | 38 A0 00 00 */	li r5, 0x0
/* 813D575C | 4B FF FE 09 */	bl AddressToString
/* 813D5760 | 38 00 00 02 */	li r0, 0x2
/* 813D5764 | 93 81 00 0C */	stw r28, 0xc(r1)
/* 813D5768 | 7F A3 EB 78 */	mr r3, r29
/* 813D576C | 98 01 00 09 */	stb r0, 0x9(r1)
/* 813D5770 | 48 0D E4 09 */	bl SOHtoNs
/* 813D5774 | B0 61 00 0A */	sth r3, 0xa(r1)
/* 813D5778 | 38 61 00 10 */	addi r3, r1, 0x10
/* 813D577C | 38 80 00 00 */	li r4, 0x0
/* 813D5780 | 38 A0 00 49 */	li r5, 0x49
/* 813D5784 | 4B F5 AB B1 */	bl memset
/* 813D5788 | 38 60 00 FD */	li r3, 0xfd
/* 813D578C | 39 20 00 FC */	li r9, 0xfc
/* 813D5790 | 39 00 00 1E */	li r8, 0x1e
/* 813D5794 | 38 E0 00 66 */	li r7, 0x66
/* 813D5798 | 38 C0 00 6A */	li r6, 0x6a
/* 813D579C | 38 A0 00 B2 */	li r5, 0xb2
/* 813D57A0 | 38 80 00 03 */	li r4, 0x3
/* 813D57A4 | 38 00 00 0A */	li r0, 0xa
/* 813D57A8 | 98 61 00 10 */	stb r3, 0x10(r1)
/* 813D57AC | 7F E3 FB 78 */	mr r3, r31
/* 813D57B0 | 99 21 00 11 */	stb r9, 0x11(r1)
/* 813D57B4 | 99 01 00 12 */	stb r8, 0x12(r1)
/* 813D57B8 | 98 E1 00 13 */	stb r7, 0x13(r1)
/* 813D57BC | 98 C1 00 14 */	stb r6, 0x14(r1)
/* 813D57C0 | 98 A1 00 15 */	stb r5, 0x15(r1)
/* 813D57C4 | 98 81 00 16 */	stb r4, 0x16(r1)
/* 813D57C8 | 98 01 00 17 */	stb r0, 0x17(r1)
/* 813D57CC | 48 0D E3 A9 */	bl SOHtoNl
/* 813D57D0 | 90 61 00 18 */	stw r3, 0x18(r1)
/* 813D57D4 | 7F 63 DB 78 */	mr r3, r27
/* 813D57D8 | 38 81 00 10 */	addi r4, r1, 0x10
/* 813D57DC | 38 E1 00 08 */	addi r7, r1, 0x8
/* 813D57E0 | 9B C1 00 1C */	stb r30, 0x1c(r1)
/* 813D57E4 | 38 A0 00 49 */	li r5, 0x49
/* 813D57E8 | 38 C0 00 00 */	li r6, 0x0
/* 813D57EC | 39 00 00 08 */	li r8, 0x8
/* 813D57F0 | 48 00 0C 4D */	bl sendto
/* 813D57F4 | 39 61 00 80 */	addi r11, r1, 0x80
/* 813D57F8 | 48 22 3D 15 */	bl _restgpr_27
/* 813D57FC | 80 01 00 84 */	lwz r0, 0x84(r1)
/* 813D5800 | 7C 08 03 A6 */	mtlr r0
/* 813D5804 | 38 21 00 80 */	addi r1, r1, 0x80
/* 813D5808 | 4E 80 00 20 */	blr
.endfn DiscoverMapping

# .text:0x2A8 | 0x813D580C | size: 0x50
.fn OutputMapping, global
/* 813D580C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813D5810 | 7C 08 02 A6 */	mflr r0
/* 813D5814 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D5818 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813D581C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D5820 | 7C 7F 1B 78 */	mr r31, r3
/* 813D5824 | 41 82 00 24 */	beq .L_813D5848
/* 813D5828 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813D582C | 38 A0 00 00 */	li r5, 0x0
/* 813D5830 | A0 9F 00 04 */	lhz r4, 0x4(r31)
/* 813D5834 | 4B FF FD 31 */	bl AddressToString
/* 813D5838 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813D583C | 38 A0 00 00 */	li r5, 0x0
/* 813D5840 | A0 9F 00 0C */	lhz r4, 0xc(r31)
/* 813D5844 | 4B FF FD 21 */	bl AddressToString
.L_813D5848:
/* 813D5848 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813D584C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813D5850 | 7C 08 03 A6 */	mtlr r0
/* 813D5854 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813D5858 | 4E 80 00 20 */	blr
.endfn OutputMapping

# .text:0x2F8 | 0x813D585C | size: 0x370
.fn NatifyThink, global
/* 813D585C | 94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 813D5860 | 7C 08 02 A6 */	mflr r0
/* 813D5864 | 90 01 00 B4 */	stw r0, 0xb4(r1)
/* 813D5868 | 39 61 00 B0 */	addi r11, r1, 0xb0
/* 813D586C | 48 22 3C 31 */	bl _savegpr_18
/* 813D5870 | 80 0D AB 4C */	lwz r0, gotERT1@sda21(r0)
/* 813D5874 | 38 A0 00 08 */	li r5, 0x8
/* 813D5878 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 813D587C | 7C 77 1B 78 */	mr r23, r3
/* 813D5880 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D5884 | 7C 98 23 78 */	mr r24, r4
/* 813D5888 | 41 82 00 54 */	beq .L_813D58DC
/* 813D588C | 80 0D AB 48 */	lwz r0, gotERT2@sda21(r0)
/* 813D5890 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D5894 | 41 82 00 48 */	beq .L_813D58DC
/* 813D5898 | 80 0D AB 44 */	lwz r0, gotERT3@sda21(r0)
/* 813D589C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D58A0 | 41 82 00 3C */	beq .L_813D58DC
/* 813D58A4 | 80 0D AB 40 */	lwz r0, gotADDRESS1a@sda21(r0)
/* 813D58A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D58AC | 41 82 00 30 */	beq .L_813D58DC
/* 813D58B0 | 80 0D AB 3C */	lwz r0, gotADDRESS1b@sda21(r0)
/* 813D58B4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D58B8 | 41 82 00 24 */	beq .L_813D58DC
/* 813D58BC | 80 0D AB 38 */	lwz r0, gotADDRESS2@sda21(r0)
/* 813D58C0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D58C4 | 41 82 00 18 */	beq .L_813D58DC
/* 813D58C8 | 80 0D AB 34 */	lwz r0, gotADDRESS3@sda21(r0)
/* 813D58CC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D58D0 | 41 82 00 0C */	beq .L_813D58DC
/* 813D58D4 | 38 60 00 00 */	li r3, 0x0
/* 813D58D8 | 48 00 02 DC */	b .L_813D5BB4
.L_813D58DC:
/* 813D58DC | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813D58E0 | 41 82 02 D0 */	beq .L_813D5BB0
/* 813D58E4 | 3F 20 81 0B */	lis r25, lbl_810B7E04@ha
/* 813D58E8 | 3F C0 7F 00 */	lis r30, 0x7f00
/* 813D58EC | 3B 79 7E 04 */	addi r27, r25, lbl_810B7E04@l
/* 813D58F0 | 3B 80 00 01 */	li r28, 0x1
/* 813D58F4 | 3B A0 00 00 */	li r29, 0x0
/* 813D58F8 | 3F 40 81 69 */	lis r26, NNMagicData@ha
/* 813D58FC | 3B E0 00 08 */	li r31, 0x8
.L_813D5900:
/* 813D5900 | 7E E3 BB 78 */	mr r3, r23
/* 813D5904 | 48 00 0D 5D */	bl CanReceiveOnSocket
/* 813D5908 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D590C | 41 82 02 A4 */	beq .L_813D5BB0
/* 813D5910 | 7E E3 BB 78 */	mr r3, r23
/* 813D5914 | 38 99 7E 04 */	addi r4, r25, lbl_810B7E04@l
/* 813D5918 | 38 E1 00 10 */	addi r7, r1, 0x10
/* 813D591C | 39 01 00 08 */	addi r8, r1, 0x8
/* 813D5920 | 38 A0 02 00 */	li r5, 0x200
/* 813D5924 | 38 C0 00 00 */	li r6, 0x0
/* 813D5928 | 48 00 0A C5 */	bl recvfrom
/* 813D592C | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813D5930 | 7C 75 1B 78 */	mr r21, r3
/* 813D5934 | 40 82 00 10 */	bne .L_813D5944
/* 813D5938 | 7E E3 BB 78 */	mr r3, r23
/* 813D593C | 48 00 0B FD */	bl GOAGetLastError
/* 813D5940 | 48 00 02 70 */	b .L_813D5BB0
.L_813D5944:
/* 813D5944 | 38 79 7E 04 */	addi r3, r25, lbl_810B7E04@l
/* 813D5948 | 38 9A 6D 20 */	addi r4, r26, NNMagicData@l
/* 813D594C | 38 A0 00 06 */	li r5, 0x6
/* 813D5950 | 48 22 88 85 */	bl memcmp
/* 813D5954 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D5958 | 41 82 00 0C */	beq .L_813D5964
/* 813D595C | 38 60 00 01 */	li r3, 0x1
/* 813D5960 | 48 00 02 54 */	b .L_813D5BB4
.L_813D5964:
/* 813D5964 | 2C 15 00 15 */	cmpwi r21, 0x15
/* 813D5968 | 88 1B 00 07 */	lbz r0, 0x7(r27)
/* 813D596C | 40 80 00 0C */	bge .L_813D5978
/* 813D5970 | 38 60 00 01 */	li r3, 0x1
/* 813D5974 | 48 00 02 40 */	b .L_813D5BB4
.L_813D5978:
/* 813D5978 | 28 00 00 02 */	cmplwi r0, 0x2
/* 813D597C | 40 82 00 B0 */	bne .L_813D5A2C
/* 813D5980 | 7F 64 DB 78 */	mr r4, r27
/* 813D5984 | 38 61 00 20 */	addi r3, r1, 0x20
/* 813D5988 | 38 A0 00 15 */	li r5, 0x15
/* 813D598C | 4B F5 A8 A5 */	bl memcpy
/* 813D5990 | 88 01 00 2C */	lbz r0, 0x2c(r1)
/* 813D5994 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813D5998 | 41 82 00 44 */	beq .L_813D59DC
/* 813D599C | 40 80 00 10 */	bge .L_813D59AC
/* 813D59A0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813D59A4 | 40 80 00 14 */	bge .L_813D59B8
/* 813D59A8 | 48 00 02 00 */	b .L_813D5BA8
.L_813D59AC:
/* 813D59AC | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813D59B0 | 40 80 01 F8 */	bge .L_813D5BA8
/* 813D59B4 | 48 00 00 50 */	b .L_813D5A04
.L_813D59B8:
/* 813D59B8 | 93 8D AB 4C */	stw r28, gotERT1@sda21(r0)
/* 813D59BC | A0 61 00 12 */	lhz r3, 0x12(r1)
/* 813D59C0 | 48 0D E1 AD */	bl SONtoHs
/* 813D59C4 | 7C 60 1B 78 */	mr r0, r3
/* 813D59C8 | 80 61 00 14 */	lwz r3, 0x14(r1)
/* 813D59CC | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813D59D0 | 38 A0 00 00 */	li r5, 0x0
/* 813D59D4 | 4B FF FB 91 */	bl AddressToString
/* 813D59D8 | 48 00 01 D0 */	b .L_813D5BA8
.L_813D59DC:
/* 813D59DC | 93 B8 00 80 */	stw r29, 0x80(r24)
/* 813D59E0 | 93 8D AB 48 */	stw r28, gotERT2@sda21(r0)
/* 813D59E4 | A0 61 00 12 */	lhz r3, 0x12(r1)
/* 813D59E8 | 48 0D E1 85 */	bl SONtoHs
/* 813D59EC | 7C 60 1B 78 */	mr r0, r3
/* 813D59F0 | 80 61 00 14 */	lwz r3, 0x14(r1)
/* 813D59F4 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813D59F8 | 38 A0 00 00 */	li r5, 0x0
/* 813D59FC | 4B FF FB 69 */	bl AddressToString
/* 813D5A00 | 48 00 01 A8 */	b .L_813D5BA8
.L_813D5A04:
/* 813D5A04 | 93 B8 00 84 */	stw r29, 0x84(r24)
/* 813D5A08 | 93 8D AB 44 */	stw r28, gotERT3@sda21(r0)
/* 813D5A0C | A0 61 00 12 */	lhz r3, 0x12(r1)
/* 813D5A10 | 48 0D E1 5D */	bl SONtoHs
/* 813D5A14 | 7C 60 1B 78 */	mr r0, r3
/* 813D5A18 | 80 61 00 14 */	lwz r3, 0x14(r1)
/* 813D5A1C | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813D5A20 | 38 A0 00 00 */	li r5, 0x0
/* 813D5A24 | 4B FF FB 41 */	bl AddressToString
/* 813D5A28 | 48 00 01 80 */	b .L_813D5BA8
.L_813D5A2C:
/* 813D5A2C | 28 00 00 0B */	cmplwi r0, 0xb
/* 813D5A30 | 40 82 01 78 */	bne .L_813D5BA8
/* 813D5A34 | 7F 64 DB 78 */	mr r4, r27
/* 813D5A38 | 38 61 00 20 */	addi r3, r1, 0x20
/* 813D5A3C | 38 A0 00 15 */	li r5, 0x15
/* 813D5A40 | 4B F5 A7 F1 */	bl memcpy
/* 813D5A44 | 80 61 00 28 */	lwz r3, 0x28(r1)
/* 813D5A48 | 48 0D E1 21 */	bl SONtoHl
/* 813D5A4C | 2C 03 00 02 */	cmpwi r3, 0x2
/* 813D5A50 | 90 61 00 28 */	stw r3, 0x28(r1)
/* 813D5A54 | 41 82 00 3C */	beq .L_813D5A90
/* 813D5A58 | 40 80 00 14 */	bge .L_813D5A6C
/* 813D5A5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D5A60 | 41 82 00 18 */	beq .L_813D5A78
/* 813D5A64 | 40 80 00 24 */	bge .L_813D5A88
/* 813D5A68 | 48 00 00 2C */	b .L_813D5A94
.L_813D5A6C:
/* 813D5A6C | 2C 03 00 04 */	cmpwi r3, 0x4
/* 813D5A70 | 40 80 00 24 */	bge .L_813D5A94
/* 813D5A74 | 48 00 00 0C */	b .L_813D5A80
.L_813D5A78:
/* 813D5A78 | 93 8D AB 40 */	stw r28, gotADDRESS1a@sda21(r0)
/* 813D5A7C | 48 00 00 18 */	b .L_813D5A94
.L_813D5A80:
/* 813D5A80 | 93 8D AB 3C */	stw r28, gotADDRESS1b@sda21(r0)
/* 813D5A84 | 48 00 00 10 */	b .L_813D5A94
.L_813D5A88:
/* 813D5A88 | 93 8D AB 38 */	stw r28, gotADDRESS2@sda21(r0)
/* 813D5A8C | 48 00 00 08 */	b .L_813D5A94
.L_813D5A90:
/* 813D5A90 | 93 8D AB 34 */	stw r28, gotADDRESS3@sda21(r0)
.L_813D5A94:
/* 813D5A94 | 3A 80 00 00 */	li r20, 0x0
/* 813D5A98 | 48 00 0C 11 */	bl getlocalhost
/* 813D5A9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D5AA0 | 7C 75 1B 78 */	mr r21, r3
/* 813D5AA4 | 40 82 00 0C */	bne .L_813D5AB0
/* 813D5AA8 | 3A 40 00 00 */	li r18, 0x0
/* 813D5AAC | 48 00 00 50 */	b .L_813D5AFC
.L_813D5AB0:
/* 813D5AB0 | 3A C0 00 00 */	li r22, 0x0
.L_813D5AB4:
/* 813D5AB4 | 80 75 00 0C */	lwz r3, 0xc(r21)
/* 813D5AB8 | 7E 63 B0 2E */	lwzx r19, r3, r22
/* 813D5ABC | 2C 13 00 00 */	cmpwi r19, 0x0
/* 813D5AC0 | 41 82 00 38 */	beq .L_813D5AF8
/* 813D5AC4 | 82 53 00 00 */	lwz r18, 0x0(r19)
/* 813D5AC8 | 38 7E 00 01 */	addi r3, r30, 0x1
/* 813D5ACC | 48 0D E0 A9 */	bl SOHtoNl
/* 813D5AD0 | 7C 12 18 40 */	cmplw r18, r3
/* 813D5AD4 | 41 82 00 1C */	beq .L_813D5AF0
/* 813D5AD8 | 7E 54 93 78 */	mr r20, r18
/* 813D5ADC | 7E 63 9B 78 */	mr r3, r19
/* 813D5AE0 | 48 00 0C DD */	bl IsPrivateIP
/* 813D5AE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D5AE8 | 41 82 00 08 */	beq .L_813D5AF0
/* 813D5AEC | 48 00 00 10 */	b .L_813D5AFC
.L_813D5AF0:
/* 813D5AF0 | 3A D6 00 04 */	addi r22, r22, 0x4
/* 813D5AF4 | 4B FF FF C0 */	b .L_813D5AB4
.L_813D5AF8:
/* 813D5AF8 | 7E 92 A3 78 */	mr r18, r20
.L_813D5AFC:
/* 813D5AFC | 80 01 00 28 */	lwz r0, 0x28(r1)
/* 813D5B00 | 7E E3 BB 78 */	mr r3, r23
/* 813D5B04 | 38 81 00 18 */	addi r4, r1, 0x18
/* 813D5B08 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 813D5B0C | 54 00 20 36 */	slwi r0, r0, 4
/* 813D5B10 | 7C D8 02 14 */	add r6, r24, r0
/* 813D5B14 | 92 46 00 94 */	stw r18, 0x94(r6)
/* 813D5B18 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813D5B1C | 48 00 09 95 */	bl getsockname
/* 813D5B20 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813D5B24 | 40 82 00 0C */	bne .L_813D5B30
/* 813D5B28 | 38 60 00 00 */	li r3, 0x0
/* 813D5B2C | 48 00 00 08 */	b .L_813D5B34
.L_813D5B30:
/* 813D5B30 | A0 61 00 1A */	lhz r3, 0x1a(r1)
.L_813D5B34:
/* 813D5B34 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 813D5B38 | 48 0D E0 35 */	bl SONtoHs
/* 813D5B3C | 80 01 00 28 */	lwz r0, 0x28(r1)
/* 813D5B40 | 54 00 20 36 */	slwi r0, r0, 4
/* 813D5B44 | 7C 98 02 14 */	add r4, r24, r0
/* 813D5B48 | B0 64 00 98 */	sth r3, 0x98(r4)
/* 813D5B4C | 80 01 00 28 */	lwz r0, 0x28(r1)
/* 813D5B50 | 80 81 00 2F */	lwz r4, 0x2f(r1)
/* 813D5B54 | 54 00 20 36 */	slwi r0, r0, 4
/* 813D5B58 | 7C 78 02 14 */	add r3, r24, r0
/* 813D5B5C | 90 83 00 9C */	stw r4, 0x9c(r3)
/* 813D5B60 | A0 61 00 33 */	lhz r3, 0x33(r1)
/* 813D5B64 | 48 0D E0 09 */	bl SONtoHs
/* 813D5B68 | 80 01 00 28 */	lwz r0, 0x28(r1)
/* 813D5B6C | 54 00 20 36 */	slwi r0, r0, 4
/* 813D5B70 | 7C 98 02 14 */	add r4, r24, r0
/* 813D5B74 | B0 64 00 A0 */	sth r3, 0xa0(r4)
/* 813D5B78 | A0 61 00 12 */	lhz r3, 0x12(r1)
/* 813D5B7C | 48 0D DF F1 */	bl SONtoHs
/* 813D5B80 | 7C 60 1B 78 */	mr r0, r3
/* 813D5B84 | 80 61 00 14 */	lwz r3, 0x14(r1)
/* 813D5B88 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813D5B8C | 38 A0 00 00 */	li r5, 0x0
/* 813D5B90 | 4B FF F9 D5 */	bl AddressToString
/* 813D5B94 | 80 01 00 28 */	lwz r0, 0x28(r1)
/* 813D5B98 | 54 00 20 36 */	slwi r0, r0, 4
/* 813D5B9C | 7C 78 02 14 */	add r3, r24, r0
/* 813D5BA0 | 38 63 00 94 */	addi r3, r3, 0x94
/* 813D5BA4 | 4B FF FC 69 */	bl OutputMapping
.L_813D5BA8:
/* 813D5BA8 | 2C 17 FF FF */	cmpwi r23, -0x1
/* 813D5BAC | 40 82 FD 54 */	bne .L_813D5900
.L_813D5BB0:
/* 813D5BB0 | 38 60 00 01 */	li r3, 0x1
.L_813D5BB4:
/* 813D5BB4 | 39 61 00 B0 */	addi r11, r1, 0xb0
/* 813D5BB8 | 48 22 39 31 */	bl _restgpr_18
/* 813D5BBC | 80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 813D5BC0 | 7C 08 03 A6 */	mtlr r0
/* 813D5BC4 | 38 21 00 B0 */	addi r1, r1, 0xb0
/* 813D5BC8 | 4E 80 00 20 */	blr
.endfn NatifyThink

# .text:0x668 | 0x813D5BCC | size: 0x2C0
.fn DetermineNatType, global
/* 813D5BCC | 80 C3 00 9C */	lwz r6, 0x9c(r3)
/* 813D5BD0 | 38 A0 00 06 */	li r5, 0x6
/* 813D5BD4 | 38 80 00 04 */	li r4, 0x4
/* 813D5BD8 | 38 00 00 01 */	li r0, 0x1
/* 813D5BDC | 2C 06 00 00 */	cmpwi r6, 0x0
/* 813D5BE0 | 90 A3 00 8C */	stw r5, 0x8c(r3)
/* 813D5BE4 | 90 83 00 88 */	stw r4, 0x88(r3)
/* 813D5BE8 | 90 03 00 D4 */	stw r0, 0xd4(r3)
/* 813D5BEC | 41 82 00 1C */	beq .L_813D5C08
/* 813D5BF0 | 80 03 00 AC */	lwz r0, 0xac(r3)
/* 813D5BF4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D5BF8 | 41 82 00 10 */	beq .L_813D5C08
/* 813D5BFC | 80 03 00 BC */	lwz r0, 0xbc(r3)
/* 813D5C00 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D5C04 | 40 82 00 0C */	bne .L_813D5C10
.L_813D5C08:
/* 813D5C08 | 38 60 00 00 */	li r3, 0x0
/* 813D5C0C | 4E 80 00 20 */	blr
.L_813D5C10:
/* 813D5C10 | 80 A3 00 84 */	lwz r5, 0x84(r3)
/* 813D5C14 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813D5C18 | 40 82 00 28 */	bne .L_813D5C40
/* 813D5C1C | 80 03 00 80 */	lwz r0, 0x80(r3)
/* 813D5C20 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813D5C24 | 40 82 00 1C */	bne .L_813D5C40
/* 813D5C28 | 80 03 00 94 */	lwz r0, 0x94(r3)
/* 813D5C2C | 7C 06 00 40 */	cmplw r6, r0
/* 813D5C30 | 40 82 00 10 */	bne .L_813D5C40
/* 813D5C34 | 38 00 00 00 */	li r0, 0x0
/* 813D5C38 | 90 03 00 8C */	stw r0, 0x8c(r3)
/* 813D5C3C | 48 00 01 80 */	b .L_813D5DBC
.L_813D5C40:
/* 813D5C40 | 80 03 00 94 */	lwz r0, 0x94(r3)
/* 813D5C44 | 7C 06 00 40 */	cmplw r6, r0
/* 813D5C48 | 40 82 00 10 */	bne .L_813D5C58
/* 813D5C4C | 38 00 00 01 */	li r0, 0x1
/* 813D5C50 | 90 03 00 8C */	stw r0, 0x8c(r3)
/* 813D5C54 | 48 00 01 68 */	b .L_813D5DBC
.L_813D5C58:
/* 813D5C58 | 80 C3 00 80 */	lwz r6, 0x80(r3)
/* 813D5C5C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 813D5C60 | 40 82 00 40 */	bne .L_813D5CA0
/* 813D5C64 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813D5C68 | 40 82 00 38 */	bne .L_813D5CA0
/* 813D5C6C | A0 83 00 B0 */	lhz r4, 0xb0(r3)
/* 813D5C70 | A0 03 00 C0 */	lhz r0, 0xc0(r3)
/* 813D5C74 | 7C 04 00 50 */	subf r0, r4, r0
/* 813D5C78 | 7C 04 FE 70 */	srawi r4, r0, 31
/* 813D5C7C | 7C 80 02 78 */	xor r0, r4, r0
/* 813D5C80 | 7C 04 00 50 */	subf r0, r4, r0
/* 813D5C84 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813D5C88 | 41 80 00 18 */	blt .L_813D5CA0
/* 813D5C8C | 38 80 00 05 */	li r4, 0x5
/* 813D5C90 | 38 00 00 00 */	li r0, 0x0
/* 813D5C94 | 90 83 00 8C */	stw r4, 0x8c(r3)
/* 813D5C98 | 90 03 00 88 */	stw r0, 0x88(r3)
/* 813D5C9C | 48 00 01 20 */	b .L_813D5DBC
.L_813D5CA0:
/* 813D5CA0 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 813D5CA4 | 41 82 00 40 */	beq .L_813D5CE4
/* 813D5CA8 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813D5CAC | 40 82 00 38 */	bne .L_813D5CE4
/* 813D5CB0 | A0 83 00 B0 */	lhz r4, 0xb0(r3)
/* 813D5CB4 | A0 03 00 C0 */	lhz r0, 0xc0(r3)
/* 813D5CB8 | 7C 04 00 50 */	subf r0, r4, r0
/* 813D5CBC | 7C 04 FE 70 */	srawi r4, r0, 31
/* 813D5CC0 | 7C 80 02 78 */	xor r0, r4, r0
/* 813D5CC4 | 7C 04 00 50 */	subf r0, r4, r0
/* 813D5CC8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813D5CCC | 41 80 00 18 */	blt .L_813D5CE4
/* 813D5CD0 | 38 80 00 05 */	li r4, 0x5
/* 813D5CD4 | 38 00 00 02 */	li r0, 0x2
/* 813D5CD8 | 90 83 00 8C */	stw r4, 0x8c(r3)
/* 813D5CDC | 90 03 00 88 */	stw r0, 0x88(r3)
/* 813D5CE0 | 48 00 00 DC */	b .L_813D5DBC
.L_813D5CE4:
/* 813D5CE4 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 813D5CE8 | 40 82 00 40 */	bne .L_813D5D28
/* 813D5CEC | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813D5CF0 | 41 82 00 38 */	beq .L_813D5D28
/* 813D5CF4 | A0 83 00 B0 */	lhz r4, 0xb0(r3)
/* 813D5CF8 | A0 03 00 C0 */	lhz r0, 0xc0(r3)
/* 813D5CFC | 7C 04 00 50 */	subf r0, r4, r0
/* 813D5D00 | 7C 04 FE 70 */	srawi r4, r0, 31
/* 813D5D04 | 7C 80 02 78 */	xor r0, r4, r0
/* 813D5D08 | 7C 04 00 50 */	subf r0, r4, r0
/* 813D5D0C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813D5D10 | 41 80 00 18 */	blt .L_813D5D28
/* 813D5D14 | 38 80 00 05 */	li r4, 0x5
/* 813D5D18 | 38 00 00 03 */	li r0, 0x3
/* 813D5D1C | 90 83 00 8C */	stw r4, 0x8c(r3)
/* 813D5D20 | 90 03 00 88 */	stw r0, 0x88(r3)
/* 813D5D24 | 48 00 00 98 */	b .L_813D5DBC
.L_813D5D28:
/* 813D5D28 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 813D5D2C | 41 82 00 40 */	beq .L_813D5D6C
/* 813D5D30 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813D5D34 | 41 82 00 38 */	beq .L_813D5D6C
/* 813D5D38 | A0 83 00 B0 */	lhz r4, 0xb0(r3)
/* 813D5D3C | A0 03 00 C0 */	lhz r0, 0xc0(r3)
/* 813D5D40 | 7C 04 00 50 */	subf r0, r4, r0
/* 813D5D44 | 7C 04 FE 70 */	srawi r4, r0, 31
/* 813D5D48 | 7C 80 02 78 */	xor r0, r4, r0
/* 813D5D4C | 7C 04 00 50 */	subf r0, r4, r0
/* 813D5D50 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813D5D54 | 41 80 00 18 */	blt .L_813D5D6C
/* 813D5D58 | 38 80 00 05 */	li r4, 0x5
/* 813D5D5C | 38 00 00 01 */	li r0, 0x1
/* 813D5D60 | 90 83 00 8C */	stw r4, 0x8c(r3)
/* 813D5D64 | 90 03 00 88 */	stw r0, 0x88(r3)
/* 813D5D68 | 48 00 00 54 */	b .L_813D5DBC
.L_813D5D6C:
/* 813D5D6C | 2C 85 00 00 */	cmpwi cr1, r5, 0x0
/* 813D5D70 | 41 86 00 10 */	beq cr1, .L_813D5D80
/* 813D5D74 | 38 00 00 04 */	li r0, 0x4
/* 813D5D78 | 90 03 00 8C */	stw r0, 0x8c(r3)
/* 813D5D7C | 48 00 00 40 */	b .L_813D5DBC
.L_813D5D80:
/* 813D5D80 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 813D5D84 | 41 82 00 14 */	beq .L_813D5D98
/* 813D5D88 | 40 86 00 10 */	bne cr1, .L_813D5D98
/* 813D5D8C | 38 00 00 03 */	li r0, 0x3
/* 813D5D90 | 90 03 00 8C */	stw r0, 0x8c(r3)
/* 813D5D94 | 48 00 00 28 */	b .L_813D5DBC
.L_813D5D98:
/* 813D5D98 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 813D5D9C | 40 82 00 18 */	bne .L_813D5DB4
/* 813D5DA0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813D5DA4 | 40 82 00 10 */	bne .L_813D5DB4
/* 813D5DA8 | 38 00 00 02 */	li r0, 0x2
/* 813D5DAC | 90 03 00 8C */	stw r0, 0x8c(r3)
/* 813D5DB0 | 48 00 00 0C */	b .L_813D5DBC
.L_813D5DB4:
/* 813D5DB4 | 38 00 00 06 */	li r0, 0x6
/* 813D5DB8 | 90 03 00 8C */	stw r0, 0x8c(r3)
.L_813D5DBC:
/* 813D5DBC | A0 C3 00 98 */	lhz r6, 0x98(r3)
/* 813D5DC0 | A0 A3 00 A0 */	lhz r5, 0xa0(r3)
/* 813D5DC4 | 7C 05 30 40 */	cmplw r5, r6
/* 813D5DC8 | 40 82 00 30 */	bne .L_813D5DF8
/* 813D5DCC | A0 83 00 B0 */	lhz r4, 0xb0(r3)
/* 813D5DD0 | A0 03 00 A8 */	lhz r0, 0xa8(r3)
/* 813D5DD4 | 7C 04 00 40 */	cmplw r4, r0
/* 813D5DD8 | 40 82 00 20 */	bne .L_813D5DF8
/* 813D5DDC | A0 83 00 C0 */	lhz r4, 0xc0(r3)
/* 813D5DE0 | A0 03 00 B8 */	lhz r0, 0xb8(r3)
/* 813D5DE4 | 7C 04 00 40 */	cmplw r4, r0
/* 813D5DE8 | 40 82 00 10 */	bne .L_813D5DF8
/* 813D5DEC | 38 00 00 01 */	li r0, 0x1
/* 813D5DF0 | 90 03 00 90 */	stw r0, 0x90(r3)
/* 813D5DF4 | 48 00 00 70 */	b .L_813D5E64
.L_813D5DF8:
/* 813D5DF8 | A0 83 00 B0 */	lhz r4, 0xb0(r3)
/* 813D5DFC | 7C 05 20 40 */	cmplw r5, r4
/* 813D5E00 | 40 82 00 1C */	bne .L_813D5E1C
/* 813D5E04 | A0 03 00 C0 */	lhz r0, 0xc0(r3)
/* 813D5E08 | 7C 04 00 40 */	cmplw r4, r0
/* 813D5E0C | 40 82 00 10 */	bne .L_813D5E1C
/* 813D5E10 | 38 00 00 02 */	li r0, 0x2
/* 813D5E14 | 90 03 00 90 */	stw r0, 0x90(r3)
/* 813D5E18 | 48 00 00 4C */	b .L_813D5E64
.L_813D5E1C:
/* 813D5E1C | 7C 05 30 40 */	cmplw r5, r6
/* 813D5E20 | 40 82 00 20 */	bne .L_813D5E40
/* 813D5E24 | A0 03 00 C0 */	lhz r0, 0xc0(r3)
/* 813D5E28 | 7C 04 00 50 */	subf r0, r4, r0
/* 813D5E2C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813D5E30 | 40 82 00 10 */	bne .L_813D5E40
/* 813D5E34 | 38 00 00 04 */	li r0, 0x4
/* 813D5E38 | 90 03 00 90 */	stw r0, 0x90(r3)
/* 813D5E3C | 48 00 00 28 */	b .L_813D5E64
.L_813D5E40:
/* 813D5E40 | A0 03 00 C0 */	lhz r0, 0xc0(r3)
/* 813D5E44 | 7C 04 00 50 */	subf r0, r4, r0
/* 813D5E48 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813D5E4C | 40 82 00 10 */	bne .L_813D5E5C
/* 813D5E50 | 38 00 00 03 */	li r0, 0x3
/* 813D5E54 | 90 03 00 90 */	stw r0, 0x90(r3)
/* 813D5E58 | 48 00 00 0C */	b .L_813D5E64
.L_813D5E5C:
/* 813D5E5C | 38 00 00 00 */	li r0, 0x0
/* 813D5E60 | 90 03 00 90 */	stw r0, 0x90(r3)
.L_813D5E64:
/* 813D5E64 | A0 83 00 D0 */	lhz r4, 0xd0(r3)
/* 813D5E68 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813D5E6C | 41 82 00 18 */	beq .L_813D5E84
/* 813D5E70 | A0 03 00 A0 */	lhz r0, 0xa0(r3)
/* 813D5E74 | 7C 00 20 40 */	cmplw r0, r4
/* 813D5E78 | 41 82 00 0C */	beq .L_813D5E84
/* 813D5E7C | 38 00 00 00 */	li r0, 0x0
/* 813D5E80 | 90 03 00 D4 */	stw r0, 0xd4(r3)
.L_813D5E84:
/* 813D5E84 | 38 60 00 01 */	li r3, 0x1
/* 813D5E88 | 4E 80 00 20 */	blr
.endfn DetermineNatType

# 0x81696D08..0x81696D18 | size: 0x10
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696D08 | size: 0x6
.obj lbl_81696D08, global
	.string "%s:%d"
.endobj lbl_81696D08

# .sdata:0x6 | 0x81696D0E | size: 0x3
.obj lbl_81696D0E, global
	.string "%s"
.endobj lbl_81696D0E

# .sdata:0x9 | 0x81696D11 | size: 0x4
.obj lbl_81696D11, global
	.string ":%d"
.endobj lbl_81696D11

# .sdata:0xD | 0x81696D15 | size: 0x3
.obj gap_11_81696D15_sdata, global
.hidden gap_11_81696D15_sdata
	.byte 0x00, 0x00, 0x00
.endobj gap_11_81696D15_sdata

# 0x81698B70..0x81698B90 | size: 0x20
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698B70 | size: 0x4
.obj nIndex$2605, local
	.skip 0x4
.endobj nIndex$2605

# .sbss:0x4 | 0x81698B74 | size: 0x4
.obj gotADDRESS3, global
	.skip 0x4
.endobj gotADDRESS3

# .sbss:0x8 | 0x81698B78 | size: 0x4
.obj gotADDRESS2, global
	.skip 0x4
.endobj gotADDRESS2

# .sbss:0xC | 0x81698B7C | size: 0x4
.obj gotADDRESS1b, global
	.skip 0x4
.endobj gotADDRESS1b

# .sbss:0x10 | 0x81698B80 | size: 0x4
.obj gotADDRESS1a, global
	.skip 0x4
.endobj gotADDRESS1a

# .sbss:0x14 | 0x81698B84 | size: 0x4
.obj gotERT3, global
	.skip 0x4
.endobj gotERT3

# .sbss:0x18 | 0x81698B88 | size: 0x4
.obj gotERT2, global
	.skip 0x4
.endobj gotERT2

# .sbss:0x1C | 0x81698B8C | size: 0x4
.obj gotERT1, global
	.skip 0x4
.endobj gotERT1
