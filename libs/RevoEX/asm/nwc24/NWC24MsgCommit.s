.include "macros.inc"
.file "NWC24MsgCommit.c"

# 0x810C98C0..0x810C9900 | size: 0x40
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810C98C0 | size: 0x40
.obj MultiPartDivider, local
	.skip 0x40
.endobj MultiPartDivider

# 0x814A6590..0x814A861C | size: 0x208C
.text
.balign 4

# .text:0x0 | 0x814A6590 | size: 0xCEC
.fn NWC24CommitMsgInternal_814A6590, global
/* 814A6590 | 94 21 FE E0 */	stwu r1, -0x120(r1)
/* 814A6594 | 7C 08 02 A6 */	mflr r0
/* 814A6598 | 90 01 01 24 */	stw r0, 0x124(r1)
/* 814A659C | 39 61 01 20 */	addi r11, r1, 0x120
/* 814A65A0 | 48 15 2F 11 */	bl _savegpr_23
/* 814A65A4 | 3F E0 81 67 */	lis r31, lbl_8166DCD0@ha
/* 814A65A8 | 7C 79 1B 78 */	mr r25, r3
/* 814A65AC | 7C 9A 23 78 */	mr r26, r4
/* 814A65B0 | 38 61 00 20 */	addi r3, r1, 0x20
/* 814A65B4 | 3B FF DC D0 */	addi r31, r31, lbl_8166DCD0@l
/* 814A65B8 | 4B FF 97 0D */	bl NWC24Data_Init
/* 814A65BC | 38 61 00 18 */	addi r3, r1, 0x18
/* 814A65C0 | 4B FF 97 05 */	bl NWC24Data_Init
/* 814A65C4 | 3A E1 00 28 */	addi r23, r1, 0x28
/* 814A65C8 | 3B 00 00 00 */	li r24, 0x0
.L_814A65CC:
/* 814A65CC | 7E E3 BB 78 */	mr r3, r23
/* 814A65D0 | 4B FF 96 F5 */	bl NWC24Data_Init
/* 814A65D4 | 3B 18 00 01 */	addi r24, r24, 0x1
/* 814A65D8 | 3A F7 00 08 */	addi r23, r23, 0x8
/* 814A65DC | 2C 18 00 02 */	cmpwi r24, 0x2
/* 814A65E0 | 41 80 FF EC */	blt .L_814A65CC
/* 814A65E4 | 38 60 00 00 */	li r3, 0x0
/* 814A65E8 | 4B FF A0 6D */	bl NWC24iSetErrorCode
/* 814A65EC | 7F 23 CB 78 */	mr r3, r25
/* 814A65F0 | 48 00 0C 8D */	bl CheckMsgObject
/* 814A65F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A65F8 | 7C 7B 1B 78 */	mr r27, r3
/* 814A65FC | 40 82 0C 20 */	bne .L_814A721C
/* 814A6600 | 7F 23 CB 78 */	mr r3, r25
/* 814A6604 | 7F 44 D3 78 */	mr r4, r26
/* 814A6608 | 48 00 0D 15 */	bl CheckMsgBoxSpace
/* 814A660C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A6610 | 7C 7B 1B 78 */	mr r27, r3
/* 814A6614 | 40 82 0C 08 */	bne .L_814A721C
/* 814A6618 | 7F 43 D3 78 */	mr r3, r26
/* 814A661C | 38 81 00 58 */	addi r4, r1, 0x58
/* 814A6620 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814A6624 | 4B FF BE D1 */	bl NWC24iMBoxOpenNewMsg
/* 814A6628 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A662C | 41 82 00 0C */	beq .L_814A6638
/* 814A6630 | 7C 7B 1B 78 */	mr r27, r3
/* 814A6634 | 48 00 0B 0C */	b .L_814A7140
.L_814A6638:
/* 814A6638 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 814A663C | 38 00 00 00 */	li r0, 0x0
/* 814A6640 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814A6644 | 3B 81 00 58 */	addi r28, r1, 0x58
/* 814A6648 | 90 79 00 00 */	stw r3, 0x0(r25)
/* 814A664C | 90 19 00 08 */	stw r0, 0x8(r25)
/* 814A6650 | 93 8D AD C0 */	stw r28, m_pFile@sda21(r0)
/* 814A6654 | 40 82 00 A4 */	bne .L_814A66F8
/* 814A6658 | 7F 23 CB 78 */	mr r3, r25
/* 814A665C | 48 00 11 4D */	bl WriteSMTP_MAILFROM
/* 814A6660 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A6664 | 7C 77 1B 78 */	mr r23, r3
/* 814A6668 | 41 82 00 14 */	beq .L_814A667C
/* 814A666C | 7F 83 E3 78 */	mr r3, r28
/* 814A6670 | 4B FF 78 ED */	bl NWC24FClose
/* 814A6674 | 7E FB BB 78 */	mr r27, r23
/* 814A6678 | 48 00 0A C8 */	b .L_814A7140
.L_814A667C:
/* 814A667C | 7F 23 CB 78 */	mr r3, r25
/* 814A6680 | 48 00 12 11 */	bl WriteSMTP_RCPTTO
/* 814A6684 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A6688 | 7C 77 1B 78 */	mr r23, r3
/* 814A668C | 41 82 00 14 */	beq .L_814A66A0
/* 814A6690 | 7F 83 E3 78 */	mr r3, r28
/* 814A6694 | 4B FF 78 C9 */	bl NWC24FClose
/* 814A6698 | 7E FB BB 78 */	mr r27, r23
/* 814A669C | 48 00 0A A4 */	b .L_814A7140
.L_814A66A0:
/* 814A66A0 | 82 ED AD A0 */	lwz r23, NWC24WorkP_81698DE0@sda21(r0)
/* 814A66A4 | 38 8D 9B A0 */	li r4, lbl_81697BE0@sda21
/* 814A66A8 | 7E E3 BB 78 */	mr r3, r23
/* 814A66AC | 4B FF 66 A1 */	bl Mail_strcpy
/* 814A66B0 | 7E E3 BB 78 */	mr r3, r23
/* 814A66B4 | 4B FF 66 C9 */	bl Mail_strlen
/* 814A66B8 | 80 AD AD C0 */	lwz r5, m_pFile@sda21(r0)
/* 814A66BC | 7C 64 1B 78 */	mr r4, r3
/* 814A66C0 | 7E E3 BB 78 */	mr r3, r23
/* 814A66C4 | 4B FF 7D F1 */	bl NWC24FWrite
/* 814A66C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A66CC | 7C 7C 1B 78 */	mr r28, r3
/* 814A66D0 | 40 82 00 10 */	bne .L_814A66E0
/* 814A66D4 | 80 99 00 08 */	lwz r4, 0x8(r25)
/* 814A66D8 | 38 04 00 06 */	addi r0, r4, 0x6
/* 814A66DC | 90 19 00 08 */	stw r0, 0x8(r25)
.L_814A66E0:
/* 814A66E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A66E4 | 41 82 00 14 */	beq .L_814A66F8
/* 814A66E8 | 38 61 00 58 */	addi r3, r1, 0x58
/* 814A66EC | 4B FF 78 71 */	bl NWC24FClose
/* 814A66F0 | 7F 9B E3 78 */	mr r27, r28
/* 814A66F4 | 48 00 0A 4C */	b .L_814A7140
.L_814A66F8:
/* 814A66F8 | 7F 23 CB 78 */	mr r3, r25
/* 814A66FC | 48 00 15 15 */	bl WriteDateField
/* 814A6700 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A6704 | 7C 77 1B 78 */	mr r23, r3
/* 814A6708 | 41 82 00 14 */	beq .L_814A671C
/* 814A670C | 38 61 00 58 */	addi r3, r1, 0x58
/* 814A6710 | 4B FF 78 4D */	bl NWC24FClose
/* 814A6714 | 7E FB BB 78 */	mr r27, r23
/* 814A6718 | 48 00 0A 28 */	b .L_814A7140
.L_814A671C:
/* 814A671C | 7F 23 CB 78 */	mr r3, r25
/* 814A6720 | 48 00 12 89 */	bl WriteFromField
/* 814A6724 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A6728 | 7C 77 1B 78 */	mr r23, r3
/* 814A672C | 41 82 00 14 */	beq .L_814A6740
/* 814A6730 | 38 61 00 58 */	addi r3, r1, 0x58
/* 814A6734 | 4B FF 78 29 */	bl NWC24FClose
/* 814A6738 | 7E FB BB 78 */	mr r27, r23
/* 814A673C | 48 00 0A 04 */	b .L_814A7140
.L_814A6740:
/* 814A6740 | 7F 23 CB 78 */	mr r3, r25
/* 814A6744 | 48 00 13 65 */	bl WriteToField
/* 814A6748 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A674C | 7C 77 1B 78 */	mr r23, r3
/* 814A6750 | 41 82 00 14 */	beq .L_814A6764
/* 814A6754 | 38 61 00 58 */	addi r3, r1, 0x58
/* 814A6758 | 4B FF 78 05 */	bl NWC24FClose
/* 814A675C | 7E FB BB 78 */	mr r27, r23
/* 814A6760 | 48 00 09 E0 */	b .L_814A7140
.L_814A6764:
/* 814A6764 | 83 AD AD A0 */	lwz r29, NWC24WorkP_81698DE0@sda21(r0)
/* 814A6768 | 4B FF 92 5D */	bl NWC24GetAccountDomain
/* 814A676C | 7C 7C 1B 78 */	mr r28, r3
/* 814A6770 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814A6774 | 4B FF 8B BD */	bl NWC24GetMyUserId
/* 814A6778 | 7F A3 EB 78 */	mr r3, r29
/* 814A677C | 38 80 00 00 */	li r4, 0x0
/* 814A6780 | 38 A0 04 00 */	li r5, 0x400
/* 814A6784 | 4B FF 67 01 */	bl Mail_memset
/* 814A6788 | 7F A3 EB 78 */	mr r3, r29
/* 814A678C | 38 9F 00 00 */	addi r4, r31, 0x0
/* 814A6790 | 4B FF 65 BD */	bl Mail_strcpy
/* 814A6794 | 38 61 00 38 */	addi r3, r1, 0x38
/* 814A6798 | 38 80 00 00 */	li r4, 0x0
/* 814A679C | 38 A0 00 20 */	li r5, 0x20
/* 814A67A0 | 4B FF 66 E5 */	bl Mail_memset
/* 814A67A4 | 80 C1 00 10 */	lwz r6, 0x10(r1)
/* 814A67A8 | 38 61 00 38 */	addi r3, r1, 0x38
/* 814A67AC | 80 E1 00 14 */	lwz r7, 0x14(r1)
/* 814A67B0 | 38 9F 00 10 */	addi r4, r31, 0x10
/* 814A67B4 | 80 B9 00 00 */	lwz r5, 0x0(r25)
/* 814A67B8 | 81 19 00 28 */	lwz r8, 0x28(r25)
/* 814A67BC | 4C C6 31 82 */	crclr cr1eq
/* 814A67C0 | 4B FF 6E 91 */	bl Mail_sprintf
/* 814A67C4 | 7F A3 EB 78 */	mr r3, r29
/* 814A67C8 | 38 81 00 38 */	addi r4, r1, 0x38
/* 814A67CC | 4B FF 67 95 */	bl Mail_strcat
/* 814A67D0 | 7F A3 EB 78 */	mr r3, r29
/* 814A67D4 | 7F 84 E3 78 */	mr r4, r28
/* 814A67D8 | 4B FF 67 89 */	bl Mail_strcat
/* 814A67DC | 7F A3 EB 78 */	mr r3, r29
/* 814A67E0 | 38 8D 9B A8 */	li r4, lbl_81697BE8@sda21
/* 814A67E4 | 4B FF 67 7D */	bl Mail_strcat
/* 814A67E8 | 7F A3 EB 78 */	mr r3, r29
/* 814A67EC | 4B FF 65 91 */	bl Mail_strlen
/* 814A67F0 | 7C 7C 1B 78 */	mr r28, r3
/* 814A67F4 | 80 AD AD C0 */	lwz r5, m_pFile@sda21(r0)
/* 814A67F8 | 7F A3 EB 78 */	mr r3, r29
/* 814A67FC | 7F 84 E3 78 */	mr r4, r28
/* 814A6800 | 4B FF 7C B5 */	bl NWC24FWrite
/* 814A6804 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A6808 | 7C 7D 1B 78 */	mr r29, r3
/* 814A680C | 40 82 00 10 */	bne .L_814A681C
/* 814A6810 | 80 19 00 08 */	lwz r0, 0x8(r25)
/* 814A6814 | 7C 00 E2 14 */	add r0, r0, r28
/* 814A6818 | 90 19 00 08 */	stw r0, 0x8(r25)
.L_814A681C:
/* 814A681C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A6820 | 41 82 00 14 */	beq .L_814A6834
/* 814A6824 | 38 61 00 58 */	addi r3, r1, 0x58
/* 814A6828 | 4B FF 77 35 */	bl NWC24FClose
/* 814A682C | 7F BB EB 78 */	mr r27, r29
/* 814A6830 | 48 00 09 10 */	b .L_814A7140
.L_814A6834:
/* 814A6834 | 80 79 00 08 */	lwz r3, 0x8(r25)
/* 814A6838 | 83 AD AD A0 */	lwz r29, NWC24WorkP_81698DE0@sda21(r0)
/* 814A683C | 38 03 00 09 */	addi r0, r3, 0x9
/* 814A6840 | 90 01 00 20 */	stw r0, 0x20(r1)
/* 814A6844 | 80 19 00 44 */	lwz r0, 0x44(r25)
/* 814A6848 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A684C | 40 82 00 0C */	bne .L_814A6858
/* 814A6850 | 38 60 FF FB */	li r3, -0x5
/* 814A6854 | 48 00 00 74 */	b .L_814A68C8
.L_814A6858:
/* 814A6858 | 7F A3 EB 78 */	mr r3, r29
/* 814A685C | 38 80 00 00 */	li r4, 0x0
/* 814A6860 | 38 A0 04 00 */	li r5, 0x400
/* 814A6864 | 4B FF 66 21 */	bl Mail_memset
/* 814A6868 | 7F A3 EB 78 */	mr r3, r29
/* 814A686C | 38 9F 00 24 */	addi r4, r31, 0x24
/* 814A6870 | 4B FF 64 DD */	bl Mail_strcpy
/* 814A6874 | 80 99 00 40 */	lwz r4, 0x40(r25)
/* 814A6878 | 7F A3 EB 78 */	mr r3, r29
/* 814A687C | 38 A0 03 FD */	li r5, 0x3fd
/* 814A6880 | 4B FF 67 31 */	bl Mail_strncat
/* 814A6884 | 7F A3 EB 78 */	mr r3, r29
/* 814A6888 | 38 8D 9B AC */	li r4, lbl_81697BEC@sda21
/* 814A688C | 38 A0 04 00 */	li r5, 0x400
/* 814A6890 | 4B FF 67 21 */	bl Mail_strncat
/* 814A6894 | 7F A3 EB 78 */	mr r3, r29
/* 814A6898 | 38 80 04 00 */	li r4, 0x400
/* 814A689C | 4B FF 65 05 */	bl STD_strnlen
/* 814A68A0 | 7C 7C 1B 78 */	mr r28, r3
/* 814A68A4 | 80 AD AD C0 */	lwz r5, m_pFile@sda21(r0)
/* 814A68A8 | 7F A3 EB 78 */	mr r3, r29
/* 814A68AC | 7F 84 E3 78 */	mr r4, r28
/* 814A68B0 | 4B FF 7C 05 */	bl NWC24FWrite
/* 814A68B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A68B8 | 40 82 00 10 */	bne .L_814A68C8
/* 814A68BC | 80 19 00 08 */	lwz r0, 0x8(r25)
/* 814A68C0 | 7C 00 E2 14 */	add r0, r0, r28
/* 814A68C4 | 90 19 00 08 */	stw r0, 0x8(r25)
.L_814A68C8:
/* 814A68C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A68CC | 7C 77 1B 78 */	mr r23, r3
/* 814A68D0 | 40 82 00 1C */	bne .L_814A68EC
/* 814A68D4 | 80 61 00 20 */	lwz r3, 0x20(r1)
/* 814A68D8 | 80 19 00 08 */	lwz r0, 0x8(r25)
/* 814A68DC | 7C 63 00 50 */	subf r3, r3, r0
/* 814A68E0 | 38 03 FF FE */	subi r0, r3, 0x2
/* 814A68E4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814A68E8 | 48 00 00 14 */	b .L_814A68FC
.L_814A68EC:
/* 814A68EC | 2C 03 FF FB */	cmpwi r3, -0x5
/* 814A68F0 | 40 82 00 0C */	bne .L_814A68FC
/* 814A68F4 | 3A E0 00 00 */	li r23, 0x0
/* 814A68F8 | 92 E1 00 20 */	stw r23, 0x20(r1)
.L_814A68FC:
/* 814A68FC | 2C 17 00 00 */	cmpwi r23, 0x0
/* 814A6900 | 41 82 00 14 */	beq .L_814A6914
/* 814A6904 | 38 61 00 58 */	addi r3, r1, 0x58
/* 814A6908 | 4B FF 76 55 */	bl NWC24FClose
/* 814A690C | 7E FB BB 78 */	mr r27, r23
/* 814A6910 | 48 00 08 30 */	b .L_814A7140
.L_814A6914:
/* 814A6914 | 80 19 00 04 */	lwz r0, 0x4(r25)
/* 814A6918 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814A691C | 41 82 04 30 */	beq .L_814A6D4C
/* 814A6920 | 7F 23 CB 78 */	mr r3, r25
/* 814A6924 | 48 00 14 25 */	bl WriteXWiiAppIdField
/* 814A6928 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A692C | 7C 77 1B 78 */	mr r23, r3
/* 814A6930 | 41 82 00 14 */	beq .L_814A6944
/* 814A6934 | 38 61 00 58 */	addi r3, r1, 0x58
/* 814A6938 | 4B FF 76 25 */	bl NWC24FClose
/* 814A693C | 7E FB BB 78 */	mr r27, r23
/* 814A6940 | 48 00 08 00 */	b .L_814A7140
.L_814A6944:
/* 814A6944 | 80 19 00 18 */	lwz r0, 0x18(r25)
/* 814A6948 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A694C | 40 82 00 0C */	bne .L_814A6958
/* 814A6950 | 3B 80 00 00 */	li r28, 0x0
/* 814A6954 | 48 00 00 60 */	b .L_814A69B4
.L_814A6958:
/* 814A6958 | 82 ED AD A0 */	lwz r23, NWC24WorkP_81698DE0@sda21(r0)
/* 814A695C | 38 80 00 00 */	li r4, 0x0
/* 814A6960 | 38 A0 04 00 */	li r5, 0x400
/* 814A6964 | 7E E3 BB 78 */	mr r3, r23
/* 814A6968 | 4B FF 65 1D */	bl Mail_memset
/* 814A696C | 80 B9 00 18 */	lwz r5, 0x18(r25)
/* 814A6970 | 7E E3 BB 78 */	mr r3, r23
/* 814A6974 | 38 9F 00 30 */	addi r4, r31, 0x30
/* 814A6978 | 4C C6 31 82 */	crclr cr1eq
/* 814A697C | 4B FF 6C D5 */	bl Mail_sprintf
/* 814A6980 | 7E E3 BB 78 */	mr r3, r23
/* 814A6984 | 4B FF 63 F9 */	bl Mail_strlen
/* 814A6988 | 7C 7C 1B 78 */	mr r28, r3
/* 814A698C | 80 AD AD C0 */	lwz r5, m_pFile@sda21(r0)
/* 814A6990 | 7E E3 BB 78 */	mr r3, r23
/* 814A6994 | 7F 84 E3 78 */	mr r4, r28
/* 814A6998 | 4B FF 7B 1D */	bl NWC24FWrite
/* 814A699C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A69A0 | 40 82 00 10 */	bne .L_814A69B0
/* 814A69A4 | 80 19 00 08 */	lwz r0, 0x8(r25)
/* 814A69A8 | 7C 00 E2 14 */	add r0, r0, r28
/* 814A69AC | 90 19 00 08 */	stw r0, 0x8(r25)
.L_814A69B0:
/* 814A69B0 | 7C 7C 1B 78 */	mr r28, r3
.L_814A69B4:
/* 814A69B4 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814A69B8 | 41 82 00 14 */	beq .L_814A69CC
/* 814A69BC | 38 61 00 58 */	addi r3, r1, 0x58
/* 814A69C0 | 4B FF 75 9D */	bl NWC24FClose
/* 814A69C4 | 7F 9B E3 78 */	mr r27, r28
/* 814A69C8 | 48 00 07 78 */	b .L_814A7140
.L_814A69CC:
/* 814A69CC | 80 19 00 14 */	lwz r0, 0x14(r25)
/* 814A69D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A69D4 | 40 82 00 0C */	bne .L_814A69E0
/* 814A69D8 | 3B 80 00 00 */	li r28, 0x0
/* 814A69DC | 48 00 00 60 */	b .L_814A6A3C
.L_814A69E0:
/* 814A69E0 | 82 ED AD A0 */	lwz r23, NWC24WorkP_81698DE0@sda21(r0)
/* 814A69E4 | 38 80 00 00 */	li r4, 0x0
/* 814A69E8 | 38 A0 04 00 */	li r5, 0x400
/* 814A69EC | 7E E3 BB 78 */	mr r3, r23
/* 814A69F0 | 4B FF 64 95 */	bl Mail_memset
/* 814A69F4 | 80 B9 00 14 */	lwz r5, 0x14(r25)
/* 814A69F8 | 7E E3 BB 78 */	mr r3, r23
/* 814A69FC | 38 9F 00 44 */	addi r4, r31, 0x44
/* 814A6A00 | 4C C6 31 82 */	crclr cr1eq
/* 814A6A04 | 4B FF 6C 4D */	bl Mail_sprintf
/* 814A6A08 | 7E E3 BB 78 */	mr r3, r23
/* 814A6A0C | 4B FF 63 71 */	bl Mail_strlen
/* 814A6A10 | 7C 7C 1B 78 */	mr r28, r3
/* 814A6A14 | 80 AD AD C0 */	lwz r5, m_pFile@sda21(r0)
/* 814A6A18 | 7E E3 BB 78 */	mr r3, r23
/* 814A6A1C | 7F 84 E3 78 */	mr r4, r28
/* 814A6A20 | 4B FF 7A 95 */	bl NWC24FWrite
/* 814A6A24 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A6A28 | 40 82 00 10 */	bne .L_814A6A38
/* 814A6A2C | 80 19 00 08 */	lwz r0, 0x8(r25)
/* 814A6A30 | 7C 00 E2 14 */	add r0, r0, r28
/* 814A6A34 | 90 19 00 08 */	stw r0, 0x8(r25)
.L_814A6A38:
/* 814A6A38 | 7C 7C 1B 78 */	mr r28, r3
.L_814A6A3C:
/* 814A6A3C | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814A6A40 | 41 82 00 14 */	beq .L_814A6A54
/* 814A6A44 | 38 61 00 58 */	addi r3, r1, 0x58
/* 814A6A48 | 4B FF 75 15 */	bl NWC24FClose
/* 814A6A4C | 7F 9B E3 78 */	mr r27, r28
/* 814A6A50 | 48 00 06 F0 */	b .L_814A7140
.L_814A6A54:
/* 814A6A54 | 80 19 00 04 */	lwz r0, 0x4(r25)
/* 814A6A58 | 54 00 04 A5 */	rlwinm. r0, r0, 0, 18, 18
/* 814A6A5C | 40 82 00 0C */	bne .L_814A6A68
/* 814A6A60 | 3B 80 00 00 */	li r28, 0x0
/* 814A6A64 | 48 00 00 60 */	b .L_814A6AC4
.L_814A6A68:
/* 814A6A68 | 82 ED AD A0 */	lwz r23, NWC24WorkP_81698DE0@sda21(r0)
/* 814A6A6C | 38 80 00 00 */	li r4, 0x0
/* 814A6A70 | 38 A0 04 00 */	li r5, 0x400
/* 814A6A74 | 7E E3 BB 78 */	mr r3, r23
/* 814A6A78 | 4B FF 64 0D */	bl Mail_memset
/* 814A6A7C | 80 B9 00 EC */	lwz r5, 0xec(r25)
/* 814A6A80 | 7E E3 BB 78 */	mr r3, r23
/* 814A6A84 | 38 9F 00 58 */	addi r4, r31, 0x58
/* 814A6A88 | 4C C6 31 82 */	crclr cr1eq
/* 814A6A8C | 4B FF 6B C5 */	bl Mail_sprintf
/* 814A6A90 | 7E E3 BB 78 */	mr r3, r23
/* 814A6A94 | 4B FF 62 E9 */	bl Mail_strlen
/* 814A6A98 | 7C 7C 1B 78 */	mr r28, r3
/* 814A6A9C | 80 AD AD C0 */	lwz r5, m_pFile@sda21(r0)
/* 814A6AA0 | 7E E3 BB 78 */	mr r3, r23
/* 814A6AA4 | 7F 84 E3 78 */	mr r4, r28
/* 814A6AA8 | 4B FF 7A 0D */	bl NWC24FWrite
/* 814A6AAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A6AB0 | 40 82 00 10 */	bne .L_814A6AC0
/* 814A6AB4 | 80 19 00 08 */	lwz r0, 0x8(r25)
/* 814A6AB8 | 7C 00 E2 14 */	add r0, r0, r28
/* 814A6ABC | 90 19 00 08 */	stw r0, 0x8(r25)
.L_814A6AC0:
/* 814A6AC0 | 7C 7C 1B 78 */	mr r28, r3
.L_814A6AC4:
/* 814A6AC4 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814A6AC8 | 41 82 00 14 */	beq .L_814A6ADC
/* 814A6ACC | 38 61 00 58 */	addi r3, r1, 0x58
/* 814A6AD0 | 4B FF 74 8D */	bl NWC24FClose
/* 814A6AD4 | 7F 9B E3 78 */	mr r27, r28
/* 814A6AD8 | 48 00 06 68 */	b .L_814A7140
.L_814A6ADC:
/* 814A6ADC | 7F 23 CB 78 */	mr r3, r25
/* 814A6AE0 | 48 00 14 85 */	bl WriteXWiiAltNameField
/* 814A6AE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A6AE8 | 7C 77 1B 78 */	mr r23, r3
/* 814A6AEC | 41 82 00 14 */	beq .L_814A6B00
/* 814A6AF0 | 38 61 00 58 */	addi r3, r1, 0x58
/* 814A6AF4 | 4B FF 74 69 */	bl NWC24FClose
/* 814A6AF8 | 7E FB BB 78 */	mr r27, r23
/* 814A6AFC | 48 00 06 44 */	b .L_814A7140
.L_814A6B00:
/* 814A6B00 | 7F 23 CB 78 */	mr r3, r25
/* 814A6B04 | 48 00 13 61 */	bl WriteXWiiFaceField
/* 814A6B08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A6B0C | 7C 77 1B 78 */	mr r23, r3
/* 814A6B10 | 41 82 00 14 */	beq .L_814A6B24
/* 814A6B14 | 38 61 00 58 */	addi r3, r1, 0x58
/* 814A6B18 | 4B FF 74 45 */	bl NWC24FClose
/* 814A6B1C | 7E FB BB 78 */	mr r27, r23
/* 814A6B20 | 48 00 06 20 */	b .L_814A7140
.L_814A6B24:
/* 814A6B24 | 80 79 00 F0 */	lwz r3, 0xf0(r25)
/* 814A6B28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A6B2C | 41 82 00 10 */	beq .L_814A6B3C
/* 814A6B30 | 3C 03 80 00 */	addis r0, r3, 0x8000
/* 814A6B34 | 28 00 00 00 */	cmplwi r0, 0x0
/* 814A6B38 | 40 82 00 0C */	bne .L_814A6B44
.L_814A6B3C:
/* 814A6B3C | 3B 80 00 00 */	li r28, 0x0
/* 814A6B40 | 48 00 00 60 */	b .L_814A6BA0
.L_814A6B44:
/* 814A6B44 | 82 ED AD A0 */	lwz r23, NWC24WorkP_81698DE0@sda21(r0)
/* 814A6B48 | 38 80 00 00 */	li r4, 0x0
/* 814A6B4C | 38 A0 04 00 */	li r5, 0x400
/* 814A6B50 | 7E E3 BB 78 */	mr r3, r23
/* 814A6B54 | 4B FF 63 31 */	bl Mail_memset
/* 814A6B58 | 80 B9 00 F0 */	lwz r5, 0xf0(r25)
/* 814A6B5C | 7E E3 BB 78 */	mr r3, r23
/* 814A6B60 | 38 9F 00 6C */	addi r4, r31, 0x6c
/* 814A6B64 | 4C C6 31 82 */	crclr cr1eq
/* 814A6B68 | 4B FF 6A E9 */	bl Mail_sprintf
/* 814A6B6C | 7E E3 BB 78 */	mr r3, r23
/* 814A6B70 | 4B FF 62 0D */	bl Mail_strlen
/* 814A6B74 | 7C 7C 1B 78 */	mr r28, r3
/* 814A6B78 | 80 AD AD C0 */	lwz r5, m_pFile@sda21(r0)
/* 814A6B7C | 7E E3 BB 78 */	mr r3, r23
/* 814A6B80 | 7F 84 E3 78 */	mr r4, r28
/* 814A6B84 | 4B FF 79 31 */	bl NWC24FWrite
/* 814A6B88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A6B8C | 40 82 00 10 */	bne .L_814A6B9C
/* 814A6B90 | 80 19 00 08 */	lwz r0, 0x8(r25)
/* 814A6B94 | 7C 00 E2 14 */	add r0, r0, r28
/* 814A6B98 | 90 19 00 08 */	stw r0, 0x8(r25)
.L_814A6B9C:
/* 814A6B9C | 7C 7C 1B 78 */	mr r28, r3
.L_814A6BA0:
/* 814A6BA0 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814A6BA4 | 41 82 00 14 */	beq .L_814A6BB8
/* 814A6BA8 | 38 61 00 58 */	addi r3, r1, 0x58
/* 814A6BAC | 4B FF 73 B1 */	bl NWC24FClose
/* 814A6BB0 | 7F 9B E3 78 */	mr r27, r28
/* 814A6BB4 | 48 00 05 8C */	b .L_814A7140
.L_814A6BB8:
/* 814A6BB8 | 80 19 00 CC */	lwz r0, 0xcc(r25)
/* 814A6BBC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A6BC0 | 41 82 01 8C */	beq .L_814A6D4C
/* 814A6BC4 | 54 00 00 01 */	clrrwi. r0, r0, 31
/* 814A6BC8 | 40 82 00 0C */	bne .L_814A6BD4
/* 814A6BCC | 3B 80 00 00 */	li r28, 0x0
/* 814A6BD0 | 48 00 00 4C */	b .L_814A6C1C
.L_814A6BD4:
/* 814A6BD4 | 82 ED AD A0 */	lwz r23, NWC24WorkP_81698DE0@sda21(r0)
/* 814A6BD8 | 38 80 00 00 */	li r4, 0x0
/* 814A6BDC | 38 A0 04 00 */	li r5, 0x400
/* 814A6BE0 | 7E E3 BB 78 */	mr r3, r23
/* 814A6BE4 | 4B FF 62 A1 */	bl Mail_memset
/* 814A6BE8 | 7E E3 BB 78 */	mr r3, r23
/* 814A6BEC | 38 9F 00 84 */	addi r4, r31, 0x84
/* 814A6BF0 | 4B FF 61 5D */	bl Mail_strcpy
/* 814A6BF4 | 80 AD AD C0 */	lwz r5, m_pFile@sda21(r0)
/* 814A6BF8 | 7E E3 BB 78 */	mr r3, r23
/* 814A6BFC | 38 80 00 15 */	li r4, 0x15
/* 814A6C00 | 4B FF 78 B5 */	bl NWC24FWrite
/* 814A6C04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A6C08 | 40 82 00 10 */	bne .L_814A6C18
/* 814A6C0C | 80 99 00 08 */	lwz r4, 0x8(r25)
/* 814A6C10 | 38 04 00 15 */	addi r0, r4, 0x15
/* 814A6C14 | 90 19 00 08 */	stw r0, 0x8(r25)
.L_814A6C18:
/* 814A6C18 | 7C 7C 1B 78 */	mr r28, r3
.L_814A6C1C:
/* 814A6C1C | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814A6C20 | 41 82 00 14 */	beq .L_814A6C34
/* 814A6C24 | 38 61 00 58 */	addi r3, r1, 0x58
/* 814A6C28 | 4B FF 73 35 */	bl NWC24FClose
/* 814A6C2C | 7F 9B E3 78 */	mr r27, r28
/* 814A6C30 | 48 00 05 10 */	b .L_814A7140
.L_814A6C34:
/* 814A6C34 | 80 19 00 CC */	lwz r0, 0xcc(r25)
/* 814A6C38 | 54 17 04 3F */	clrlwi. r23, r0, 16
/* 814A6C3C | 40 82 00 0C */	bne .L_814A6C48
/* 814A6C40 | 3B 80 00 00 */	li r28, 0x0
/* 814A6C44 | 48 00 00 64 */	b .L_814A6CA8
.L_814A6C48:
/* 814A6C48 | 83 0D AD A0 */	lwz r24, NWC24WorkP_81698DE0@sda21(r0)
/* 814A6C4C | 38 80 00 00 */	li r4, 0x0
/* 814A6C50 | 38 A0 04 00 */	li r5, 0x400
/* 814A6C54 | 7F 03 C3 78 */	mr r3, r24
/* 814A6C58 | 4B FF 62 2D */	bl Mail_memset
/* 814A6C5C | 7F 03 C3 78 */	mr r3, r24
/* 814A6C60 | 7E E5 BB 78 */	mr r5, r23
/* 814A6C64 | 38 9F 00 9C */	addi r4, r31, 0x9c
/* 814A6C68 | 4C C6 31 82 */	crclr cr1eq
/* 814A6C6C | 4B FF 69 E5 */	bl Mail_sprintf
/* 814A6C70 | 7F 03 C3 78 */	mr r3, r24
/* 814A6C74 | 38 80 04 00 */	li r4, 0x400
/* 814A6C78 | 4B FF 61 29 */	bl STD_strnlen
/* 814A6C7C | 7C 7C 1B 78 */	mr r28, r3
/* 814A6C80 | 80 AD AD C0 */	lwz r5, m_pFile@sda21(r0)
/* 814A6C84 | 7F 03 C3 78 */	mr r3, r24
/* 814A6C88 | 7F 84 E3 78 */	mr r4, r28
/* 814A6C8C | 4B FF 78 29 */	bl NWC24FWrite
/* 814A6C90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A6C94 | 40 82 00 10 */	bne .L_814A6CA4
/* 814A6C98 | 80 19 00 08 */	lwz r0, 0x8(r25)
/* 814A6C9C | 7C 00 E2 14 */	add r0, r0, r28
/* 814A6CA0 | 90 19 00 08 */	stw r0, 0x8(r25)
.L_814A6CA4:
/* 814A6CA4 | 7C 7C 1B 78 */	mr r28, r3
.L_814A6CA8:
/* 814A6CA8 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814A6CAC | 41 82 00 14 */	beq .L_814A6CC0
/* 814A6CB0 | 38 61 00 58 */	addi r3, r1, 0x58
/* 814A6CB4 | 4B FF 72 A9 */	bl NWC24FClose
/* 814A6CB8 | 7F 9B E3 78 */	mr r27, r28
/* 814A6CBC | 48 00 04 84 */	b .L_814A7140
.L_814A6CC0:
/* 814A6CC0 | 80 19 00 CC */	lwz r0, 0xcc(r25)
/* 814A6CC4 | 54 17 02 1F */	rlwinm. r23, r0, 0, 8, 15
/* 814A6CC8 | 40 82 00 0C */	bne .L_814A6CD4
/* 814A6CCC | 3B 80 00 00 */	li r28, 0x0
/* 814A6CD0 | 48 00 00 64 */	b .L_814A6D34
.L_814A6CD4:
/* 814A6CD4 | 83 0D AD A0 */	lwz r24, NWC24WorkP_81698DE0@sda21(r0)
/* 814A6CD8 | 38 80 00 00 */	li r4, 0x0
/* 814A6CDC | 38 A0 04 00 */	li r5, 0x400
/* 814A6CE0 | 7F 03 C3 78 */	mr r3, r24
/* 814A6CE4 | 4B FF 61 A1 */	bl Mail_memset
/* 814A6CE8 | 7F 03 C3 78 */	mr r3, r24
/* 814A6CEC | 38 9F 00 B8 */	addi r4, r31, 0xb8
/* 814A6CF0 | 56 E5 84 3E */	srwi r5, r23, 16
/* 814A6CF4 | 4C C6 31 82 */	crclr cr1eq
/* 814A6CF8 | 4B FF 69 59 */	bl Mail_sprintf
/* 814A6CFC | 7F 03 C3 78 */	mr r3, r24
/* 814A6D00 | 38 80 04 00 */	li r4, 0x400
/* 814A6D04 | 4B FF 60 9D */	bl STD_strnlen
/* 814A6D08 | 7C 7C 1B 78 */	mr r28, r3
/* 814A6D0C | 80 AD AD C0 */	lwz r5, m_pFile@sda21(r0)
/* 814A6D10 | 7F 03 C3 78 */	mr r3, r24
/* 814A6D14 | 7F 84 E3 78 */	mr r4, r28
/* 814A6D18 | 4B FF 77 9D */	bl NWC24FWrite
/* 814A6D1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A6D20 | 40 82 00 10 */	bne .L_814A6D30
/* 814A6D24 | 80 19 00 08 */	lwz r0, 0x8(r25)
/* 814A6D28 | 7C 00 E2 14 */	add r0, r0, r28
/* 814A6D2C | 90 19 00 08 */	stw r0, 0x8(r25)
.L_814A6D30:
/* 814A6D30 | 7C 7C 1B 78 */	mr r28, r3
.L_814A6D34:
/* 814A6D34 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814A6D38 | 41 82 00 14 */	beq .L_814A6D4C
/* 814A6D3C | 38 61 00 58 */	addi r3, r1, 0x58
/* 814A6D40 | 4B FF 72 1D */	bl NWC24FClose
/* 814A6D44 | 7F 9B E3 78 */	mr r27, r28
/* 814A6D48 | 48 00 03 F8 */	b .L_814A7140
.L_814A6D4C:
/* 814A6D4C | 80 99 00 D4 */	lwz r4, 0xd4(r25)
/* 814A6D50 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814A6D54 | 40 82 00 0C */	bne .L_814A6D60
/* 814A6D58 | 3B 80 00 00 */	li r28, 0x0
/* 814A6D5C | 48 00 00 2C */	b .L_814A6D88
.L_814A6D60:
/* 814A6D60 | 80 79 00 D0 */	lwz r3, 0xd0(r25)
/* 814A6D64 | 80 AD AD C0 */	lwz r5, m_pFile@sda21(r0)
/* 814A6D68 | 4B FF 77 4D */	bl NWC24FWrite
/* 814A6D6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A6D70 | 40 82 00 14 */	bne .L_814A6D84
/* 814A6D74 | 80 99 00 08 */	lwz r4, 0x8(r25)
/* 814A6D78 | 80 19 00 D4 */	lwz r0, 0xd4(r25)
/* 814A6D7C | 7C 04 02 14 */	add r0, r4, r0
/* 814A6D80 | 90 19 00 08 */	stw r0, 0x8(r25)
.L_814A6D84:
/* 814A6D84 | 7C 7C 1B 78 */	mr r28, r3
.L_814A6D88:
/* 814A6D88 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814A6D8C | 41 82 00 14 */	beq .L_814A6DA0
/* 814A6D90 | 38 61 00 58 */	addi r3, r1, 0x58
/* 814A6D94 | 4B FF 71 C9 */	bl NWC24FClose
/* 814A6D98 | 7F 9B E3 78 */	mr r27, r28
/* 814A6D9C | 48 00 03 A4 */	b .L_814A7140
.L_814A6DA0:
/* 814A6DA0 | 3F 80 81 0D */	lis r28, MultiPartDivider@ha
/* 814A6DA4 | 38 80 00 00 */	li r4, 0x0
/* 814A6DA8 | 38 7C 98 C0 */	addi r3, r28, MultiPartDivider@l
/* 814A6DAC | 38 A0 00 28 */	li r5, 0x28
/* 814A6DB0 | 4B FF 60 D5 */	bl Mail_memset
/* 814A6DB4 | 80 B9 00 28 */	lwz r5, 0x28(r25)
/* 814A6DB8 | 38 7C 98 C0 */	addi r3, r28, MultiPartDivider@l
/* 814A6DBC | 80 D9 00 00 */	lwz r6, 0x0(r25)
/* 814A6DC0 | 38 9F 00 D0 */	addi r4, r31, 0xd0
/* 814A6DC4 | 4C C6 31 82 */	crclr cr1eq
/* 814A6DC8 | 4B FF 68 89 */	bl Mail_sprintf
/* 814A6DCC | 82 ED AD A0 */	lwz r23, NWC24WorkP_81698DE0@sda21(r0)
/* 814A6DD0 | 38 80 00 00 */	li r4, 0x0
/* 814A6DD4 | 38 A0 04 00 */	li r5, 0x400
/* 814A6DD8 | 7E E3 BB 78 */	mr r3, r23
/* 814A6DDC | 4B FF 60 A9 */	bl Mail_memset
/* 814A6DE0 | 7E E3 BB 78 */	mr r3, r23
/* 814A6DE4 | 38 9F 00 E8 */	addi r4, r31, 0xe8
/* 814A6DE8 | 4B FF 5F 65 */	bl Mail_strcpy
/* 814A6DEC | 80 19 00 04 */	lwz r0, 0x4(r25)
/* 814A6DF0 | 54 00 03 DF */	rlwinm. r0, r0, 0, 15, 15
/* 814A6DF4 | 41 82 00 28 */	beq .L_814A6E1C
/* 814A6DF8 | 7E E3 BB 78 */	mr r3, r23
/* 814A6DFC | 38 9F 00 FC */	addi r4, r31, 0xfc
/* 814A6E00 | 4B FF 61 61 */	bl Mail_strcat
/* 814A6E04 | 7E E3 BB 78 */	mr r3, r23
/* 814A6E08 | 38 9C 98 C0 */	addi r4, r28, MultiPartDivider@l
/* 814A6E0C | 4B FF 61 55 */	bl Mail_strcat
/* 814A6E10 | 7E E3 BB 78 */	mr r3, r23
/* 814A6E14 | 38 8D 9B B0 */	li r4, lbl_81697BF0@sda21
/* 814A6E18 | 4B FF 61 49 */	bl Mail_strcat
.L_814A6E1C:
/* 814A6E1C | 7E E3 BB 78 */	mr r3, r23
/* 814A6E20 | 4B FF 5F 5D */	bl Mail_strlen
/* 814A6E24 | 7C 7C 1B 78 */	mr r28, r3
/* 814A6E28 | 80 AD AD C0 */	lwz r5, m_pFile@sda21(r0)
/* 814A6E2C | 7E E3 BB 78 */	mr r3, r23
/* 814A6E30 | 7F 84 E3 78 */	mr r4, r28
/* 814A6E34 | 4B FF 76 81 */	bl NWC24FWrite
/* 814A6E38 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A6E3C | 7C 7D 1B 78 */	mr r29, r3
/* 814A6E40 | 40 82 00 10 */	bne .L_814A6E50
/* 814A6E44 | 80 19 00 08 */	lwz r0, 0x8(r25)
/* 814A6E48 | 7C 00 E2 14 */	add r0, r0, r28
/* 814A6E4C | 90 19 00 08 */	stw r0, 0x8(r25)
.L_814A6E50:
/* 814A6E50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A6E54 | 41 82 00 14 */	beq .L_814A6E68
/* 814A6E58 | 38 61 00 58 */	addi r3, r1, 0x58
/* 814A6E5C | 4B FF 71 01 */	bl NWC24FClose
/* 814A6E60 | 7F BB EB 78 */	mr r27, r29
/* 814A6E64 | 48 00 02 DC */	b .L_814A7140
.L_814A6E68:
/* 814A6E68 | 80 19 00 04 */	lwz r0, 0x4(r25)
/* 814A6E6C | 54 00 03 DF */	rlwinm. r0, r0, 0, 15, 15
/* 814A6E70 | 41 82 00 90 */	beq .L_814A6F00
/* 814A6E74 | 80 19 00 08 */	lwz r0, 0x8(r25)
/* 814A6E78 | 38 80 00 00 */	li r4, 0x0
/* 814A6E7C | 38 A0 04 00 */	li r5, 0x400
/* 814A6E80 | 90 19 00 10 */	stw r0, 0x10(r25)
/* 814A6E84 | 82 ED AD A0 */	lwz r23, NWC24WorkP_81698DE0@sda21(r0)
/* 814A6E88 | 7E E3 BB 78 */	mr r3, r23
/* 814A6E8C | 4B FF 5F F9 */	bl Mail_memset
/* 814A6E90 | 3C A0 81 0D */	lis r5, MultiPartDivider@ha
/* 814A6E94 | 7E E3 BB 78 */	mr r3, r23
/* 814A6E98 | 38 A5 98 C0 */	addi r5, r5, MultiPartDivider@l
/* 814A6E9C | 38 8D 9B B4 */	li r4, lbl_81697BF4@sda21
/* 814A6EA0 | 4C C6 31 82 */	crclr cr1eq
/* 814A6EA4 | 4B FF 67 AD */	bl Mail_sprintf
/* 814A6EA8 | 7E E3 BB 78 */	mr r3, r23
/* 814A6EAC | 38 8D 9B BC */	li r4, lbl_81697BFC@sda21
/* 814A6EB0 | 4B FF 60 B1 */	bl Mail_strcat
/* 814A6EB4 | 7E E3 BB 78 */	mr r3, r23
/* 814A6EB8 | 4B FF 5E C5 */	bl Mail_strlen
/* 814A6EBC | 7C 7C 1B 78 */	mr r28, r3
/* 814A6EC0 | 80 AD AD C0 */	lwz r5, m_pFile@sda21(r0)
/* 814A6EC4 | 7E E3 BB 78 */	mr r3, r23
/* 814A6EC8 | 7F 84 E3 78 */	mr r4, r28
/* 814A6ECC | 4B FF 75 E9 */	bl NWC24FWrite
/* 814A6ED0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A6ED4 | 7C 7D 1B 78 */	mr r29, r3
/* 814A6ED8 | 40 82 00 10 */	bne .L_814A6EE8
/* 814A6EDC | 80 19 00 08 */	lwz r0, 0x8(r25)
/* 814A6EE0 | 7C 00 E2 14 */	add r0, r0, r28
/* 814A6EE4 | 90 19 00 08 */	stw r0, 0x8(r25)
.L_814A6EE8:
/* 814A6EE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A6EEC | 41 82 00 14 */	beq .L_814A6F00
/* 814A6EF0 | 38 61 00 58 */	addi r3, r1, 0x58
/* 814A6EF4 | 4B FF 70 69 */	bl NWC24FClose
/* 814A6EF8 | 7F BB EB 78 */	mr r27, r29
/* 814A6EFC | 48 00 02 44 */	b .L_814A7140
.L_814A6F00:
/* 814A6F00 | 7F 23 CB 78 */	mr r3, r25
/* 814A6F04 | 48 00 12 D1 */	bl WriteContentTypeField
/* 814A6F08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A6F0C | 7C 77 1B 78 */	mr r23, r3
/* 814A6F10 | 41 82 00 14 */	beq .L_814A6F24
/* 814A6F14 | 38 61 00 58 */	addi r3, r1, 0x58
/* 814A6F18 | 4B FF 70 45 */	bl NWC24FClose
/* 814A6F1C | 7E FB BB 78 */	mr r27, r23
/* 814A6F20 | 48 00 02 20 */	b .L_814A7140
.L_814A6F24:
/* 814A6F24 | 80 19 00 04 */	lwz r0, 0x4(r25)
/* 814A6F28 | 54 00 03 DF */	rlwinm. r0, r0, 0, 15, 15
/* 814A6F2C | 40 82 00 0C */	bne .L_814A6F38
/* 814A6F30 | 80 19 00 08 */	lwz r0, 0x8(r25)
/* 814A6F34 | 90 19 00 10 */	stw r0, 0x10(r25)
.L_814A6F38:
/* 814A6F38 | 80 19 00 08 */	lwz r0, 0x8(r25)
/* 814A6F3C | 7F 23 CB 78 */	mr r3, r25
/* 814A6F40 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 814A6F44 | 48 00 13 C5 */	bl WritePlainText
/* 814A6F48 | 2C 03 FF FB */	cmpwi r3, -0x5
/* 814A6F4C | 7C 7C 1B 78 */	mr r28, r3
/* 814A6F50 | 40 82 00 08 */	bne .L_814A6F58
/* 814A6F54 | 3B 80 00 00 */	li r28, 0x0
.L_814A6F58:
/* 814A6F58 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814A6F5C | 41 82 00 14 */	beq .L_814A6F70
/* 814A6F60 | 38 61 00 58 */	addi r3, r1, 0x58
/* 814A6F64 | 4B FF 6F F9 */	bl NWC24FClose
/* 814A6F68 | 7F 9B E3 78 */	mr r27, r28
/* 814A6F6C | 48 00 01 D4 */	b .L_814A7140
.L_814A6F70:
/* 814A6F70 | 80 61 00 18 */	lwz r3, 0x18(r1)
/* 814A6F74 | 7F 3D CB 78 */	mr r29, r25
/* 814A6F78 | 80 19 00 08 */	lwz r0, 0x8(r25)
/* 814A6F7C | 3B C1 00 28 */	addi r30, r1, 0x28
/* 814A6F80 | 3B 80 00 00 */	li r28, 0x0
/* 814A6F84 | 3F E0 81 0D */	lis r31, MultiPartDivider@ha
/* 814A6F88 | 7C 03 00 50 */	subf r0, r3, r0
/* 814A6F8C | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 814A6F90 | 48 00 01 A4 */	b .L_814A7134
.L_814A6F94:
/* 814A6F94 | 82 ED AD A0 */	lwz r23, NWC24WorkP_81698DE0@sda21(r0)
/* 814A6F98 | 38 80 00 00 */	li r4, 0x0
/* 814A6F9C | 38 A0 04 00 */	li r5, 0x400
/* 814A6FA0 | 7E E3 BB 78 */	mr r3, r23
/* 814A6FA4 | 4B FF 5E E1 */	bl Mail_memset
/* 814A6FA8 | 7E E3 BB 78 */	mr r3, r23
/* 814A6FAC | 38 BF 98 C0 */	addi r5, r31, MultiPartDivider@l
/* 814A6FB0 | 38 8D 9B B4 */	li r4, lbl_81697BF4@sda21
/* 814A6FB4 | 4C C6 31 82 */	crclr cr1eq
/* 814A6FB8 | 4B FF 66 99 */	bl Mail_sprintf
/* 814A6FBC | 7E E3 BB 78 */	mr r3, r23
/* 814A6FC0 | 38 8D 9B BC */	li r4, lbl_81697BFC@sda21
/* 814A6FC4 | 4B FF 5F 9D */	bl Mail_strcat
/* 814A6FC8 | 7E E3 BB 78 */	mr r3, r23
/* 814A6FCC | 4B FF 5D B1 */	bl Mail_strlen
/* 814A6FD0 | 7C 78 1B 78 */	mr r24, r3
/* 814A6FD4 | 80 AD AD C0 */	lwz r5, m_pFile@sda21(r0)
/* 814A6FD8 | 7E E3 BB 78 */	mr r3, r23
/* 814A6FDC | 7F 04 C3 78 */	mr r4, r24
/* 814A6FE0 | 4B FF 74 D5 */	bl NWC24FWrite
/* 814A6FE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A6FE8 | 7C 77 1B 78 */	mr r23, r3
/* 814A6FEC | 40 82 00 10 */	bne .L_814A6FFC
/* 814A6FF0 | 80 19 00 08 */	lwz r0, 0x8(r25)
/* 814A6FF4 | 7C 00 C2 14 */	add r0, r0, r24
/* 814A6FF8 | 90 19 00 08 */	stw r0, 0x8(r25)
.L_814A6FFC:
/* 814A6FFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A7000 | 41 82 00 14 */	beq .L_814A7014
/* 814A7004 | 38 61 00 58 */	addi r3, r1, 0x58
/* 814A7008 | 4B FF 6F 55 */	bl NWC24FClose
/* 814A700C | 7E FB BB 78 */	mr r27, r23
/* 814A7010 | 48 00 01 30 */	b .L_814A7140
.L_814A7014:
/* 814A7014 | 7F 23 CB 78 */	mr r3, r25
/* 814A7018 | 7F 84 E3 78 */	mr r4, r28
/* 814A701C | 48 00 10 49 */	bl WriteMIMEAttachHeader
/* 814A7020 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A7024 | 7C 77 1B 78 */	mr r23, r3
/* 814A7028 | 41 82 00 14 */	beq .L_814A703C
/* 814A702C | 38 61 00 58 */	addi r3, r1, 0x58
/* 814A7030 | 4B FF 6F 2D */	bl NWC24FClose
/* 814A7034 | 7E FB BB 78 */	mr r27, r23
/* 814A7038 | 48 00 01 08 */	b .L_814A7140
.L_814A703C:
/* 814A703C | 80 19 00 08 */	lwz r0, 0x8(r25)
/* 814A7040 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814A7044 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 814A7048 | 80 7D 00 68 */	lwz r3, 0x68(r29)
/* 814A704C | 80 9D 00 6C */	lwz r4, 0x6c(r29)
/* 814A7050 | 48 00 13 79 */	bl WriteBase64Data
/* 814A7054 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A7058 | 7C 77 1B 78 */	mr r23, r3
/* 814A705C | 40 82 00 14 */	bne .L_814A7070
/* 814A7060 | 80 99 00 08 */	lwz r4, 0x8(r25)
/* 814A7064 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814A7068 | 7C 04 02 14 */	add r0, r4, r0
/* 814A706C | 90 19 00 08 */	stw r0, 0x8(r25)
.L_814A7070:
/* 814A7070 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A7074 | 41 82 00 14 */	beq .L_814A7088
/* 814A7078 | 38 61 00 58 */	addi r3, r1, 0x58
/* 814A707C | 4B FF 6E E1 */	bl NWC24FClose
/* 814A7080 | 7E FB BB 78 */	mr r27, r23
/* 814A7084 | 48 00 00 BC */	b .L_814A7140
.L_814A7088:
/* 814A7088 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 814A708C | 80 19 00 08 */	lwz r0, 0x8(r25)
/* 814A7090 | 7C 03 00 50 */	subf r0, r3, r0
/* 814A7094 | 90 1E 00 04 */	stw r0, 0x4(r30)
/* 814A7098 | 88 79 00 C9 */	lbz r3, 0xc9(r25)
/* 814A709C | 38 03 FF FF */	subi r0, r3, 0x1
/* 814A70A0 | 7C 1C 00 00 */	cmpw r28, r0
/* 814A70A4 | 40 82 00 84 */	bne .L_814A7128
/* 814A70A8 | 83 0D AD A0 */	lwz r24, NWC24WorkP_81698DE0@sda21(r0)
/* 814A70AC | 38 80 00 00 */	li r4, 0x0
/* 814A70B0 | 38 A0 04 00 */	li r5, 0x400
/* 814A70B4 | 7F 03 C3 78 */	mr r3, r24
/* 814A70B8 | 4B FF 5D CD */	bl Mail_memset
/* 814A70BC | 7F 03 C3 78 */	mr r3, r24
/* 814A70C0 | 38 BF 98 C0 */	addi r5, r31, MultiPartDivider@l
/* 814A70C4 | 38 8D 9B B4 */	li r4, lbl_81697BF4@sda21
/* 814A70C8 | 4C C6 31 82 */	crclr cr1eq
/* 814A70CC | 4B FF 65 85 */	bl Mail_sprintf
/* 814A70D0 | 7F 03 C3 78 */	mr r3, r24
/* 814A70D4 | 38 8D 9B C0 */	li r4, lbl_81697C00@sda21
/* 814A70D8 | 4B FF 5E 89 */	bl Mail_strcat
/* 814A70DC | 7F 03 C3 78 */	mr r3, r24
/* 814A70E0 | 4B FF 5C 9D */	bl Mail_strlen
/* 814A70E4 | 7C 77 1B 78 */	mr r23, r3
/* 814A70E8 | 80 AD AD C0 */	lwz r5, m_pFile@sda21(r0)
/* 814A70EC | 7F 03 C3 78 */	mr r3, r24
/* 814A70F0 | 7E E4 BB 78 */	mr r4, r23
/* 814A70F4 | 4B FF 73 C1 */	bl NWC24FWrite
/* 814A70F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A70FC | 7C 78 1B 78 */	mr r24, r3
/* 814A7100 | 40 82 00 10 */	bne .L_814A7110
/* 814A7104 | 80 19 00 08 */	lwz r0, 0x8(r25)
/* 814A7108 | 7C 00 BA 14 */	add r0, r0, r23
/* 814A710C | 90 19 00 08 */	stw r0, 0x8(r25)
.L_814A7110:
/* 814A7110 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A7114 | 41 82 00 14 */	beq .L_814A7128
/* 814A7118 | 38 61 00 58 */	addi r3, r1, 0x58
/* 814A711C | 4B FF 6E 41 */	bl NWC24FClose
/* 814A7120 | 7F 1B C3 78 */	mr r27, r24
/* 814A7124 | 48 00 00 1C */	b .L_814A7140
.L_814A7128:
/* 814A7128 | 3B DE 00 08 */	addi r30, r30, 0x8
/* 814A712C | 3B BD 00 08 */	addi r29, r29, 0x8
/* 814A7130 | 3B 9C 00 01 */	addi r28, r28, 0x1
.L_814A7134:
/* 814A7134 | 88 19 00 C9 */	lbz r0, 0xc9(r25)
/* 814A7138 | 7C 1C 00 40 */	cmplw r28, r0
/* 814A713C | 41 80 FE 58 */	blt .L_814A6F94
.L_814A7140:
/* 814A7140 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814A7144 | 40 82 00 10 */	bne .L_814A7154
/* 814A7148 | 38 61 00 58 */	addi r3, r1, 0x58
/* 814A714C | 4B FF B6 89 */	bl NWC24iMBoxCloseMsg
/* 814A7150 | 48 00 00 20 */	b .L_814A7170
.L_814A7154:
/* 814A7154 | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 814A7158 | 7F 44 D3 78 */	mr r4, r26
/* 814A715C | 38 61 00 58 */	addi r3, r1, 0x58
/* 814A7160 | 4B FF B7 29 */	bl NWC24iMBoxCancelMsg
/* 814A7164 | 7F 43 D3 78 */	mr r3, r26
/* 814A7168 | 4B FF BA F1 */	bl NWC24iMBoxFlushHeader
/* 814A716C | 48 00 00 B0 */	b .L_814A721C
.L_814A7170:
/* 814A7170 | 80 81 00 20 */	lwz r4, 0x20(r1)
/* 814A7174 | 2C 1A 00 01 */	cmpwi r26, 0x1
/* 814A7178 | 80 61 00 24 */	lwz r3, 0x24(r1)
/* 814A717C | 80 19 00 04 */	lwz r0, 0x4(r25)
/* 814A7180 | 90 99 00 40 */	stw r4, 0x40(r25)
/* 814A7184 | 60 00 02 00 */	ori r0, r0, 0x200
/* 814A7188 | 90 79 00 44 */	stw r3, 0x44(r25)
/* 814A718C | 80 81 00 18 */	lwz r4, 0x18(r1)
/* 814A7190 | 80 61 00 1C */	lwz r3, 0x1c(r1)
/* 814A7194 | 90 99 00 48 */	stw r4, 0x48(r25)
/* 814A7198 | 90 79 00 4C */	stw r3, 0x4c(r25)
/* 814A719C | 80 81 00 28 */	lwz r4, 0x28(r1)
/* 814A71A0 | 80 61 00 2C */	lwz r3, 0x2c(r1)
/* 814A71A4 | 90 99 00 68 */	stw r4, 0x68(r25)
/* 814A71A8 | 90 79 00 6C */	stw r3, 0x6c(r25)
/* 814A71AC | 80 81 00 30 */	lwz r4, 0x30(r1)
/* 814A71B0 | 80 61 00 34 */	lwz r3, 0x34(r1)
/* 814A71B4 | 90 99 00 70 */	stw r4, 0x70(r25)
/* 814A71B8 | 90 79 00 74 */	stw r3, 0x74(r25)
/* 814A71BC | 90 19 00 04 */	stw r0, 0x4(r25)
/* 814A71C0 | 40 82 00 10 */	bne .L_814A71D0
/* 814A71C4 | 60 00 00 20 */	ori r0, r0, 0x20
/* 814A71C8 | 90 19 00 04 */	stw r0, 0x4(r25)
/* 814A71CC | 48 00 00 14 */	b .L_814A71E0
.L_814A71D0:
/* 814A71D0 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814A71D4 | 40 82 00 0C */	bne .L_814A71E0
/* 814A71D8 | 60 00 00 10 */	ori r0, r0, 0x10
/* 814A71DC | 90 19 00 04 */	stw r0, 0x4(r25)
.L_814A71E0:
/* 814A71E0 | 7F 43 D3 78 */	mr r3, r26
/* 814A71E4 | 7F 24 CB 78 */	mr r4, r25
/* 814A71E8 | 4B FF B8 A5 */	bl NWC24iMBoxAddMsgObj
/* 814A71EC | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814A71F0 | 41 82 00 08 */	beq .L_814A71F8
/* 814A71F4 | 7F 63 DB 78 */	mr r3, r27
.L_814A71F8:
/* 814A71F8 | 2C 1A 00 01 */	cmpwi r26, 0x1
/* 814A71FC | 7C 7B 1B 78 */	mr r27, r3
/* 814A7200 | 40 82 00 1C */	bne .L_814A721C
/* 814A7204 | 80 19 00 04 */	lwz r0, 0x4(r25)
/* 814A7208 | 38 60 00 01 */	li r3, 0x1
/* 814A720C | 54 00 07 39 */	rlwinm. r0, r0, 0, 28, 28
/* 814A7210 | 41 82 00 08 */	beq .L_814A7218
/* 814A7214 | 60 63 00 02 */	ori r3, r3, 0x2
.L_814A7218:
/* 814A7218 | 4B FF 91 BD */	bl NWC24iSetNewMsgArrived
.L_814A721C:
/* 814A721C | 2C 1B FF FA */	cmpwi r27, -0x6
/* 814A7220 | 41 82 00 34 */	beq .L_814A7254
/* 814A7224 | 2C 1B FF F0 */	cmpwi r27, -0x10
/* 814A7228 | 41 81 00 0C */	bgt .L_814A7234
/* 814A722C | 2C 1B FF EB */	cmpwi r27, -0x15
/* 814A7230 | 40 80 00 24 */	bge .L_814A7254
.L_814A7234:
/* 814A7234 | 2C 1B FF DA */	cmpwi r27, -0x26
/* 814A7238 | 41 82 00 1C */	beq .L_814A7254
/* 814A723C | 2C 1B FF D7 */	cmpwi r27, -0x29
/* 814A7240 | 41 82 00 14 */	beq .L_814A7254
/* 814A7244 | 2C 1B FF D5 */	cmpwi r27, -0x2b
/* 814A7248 | 41 82 00 0C */	beq .L_814A7254
/* 814A724C | 2C 1B FF D2 */	cmpwi r27, -0x2e
/* 814A7250 | 40 82 00 10 */	bne .L_814A7260
.L_814A7254:
/* 814A7254 | 3C 7B FF FE */	subis r3, r27, 0x2
/* 814A7258 | 38 63 55 0C */	addi r3, r3, 0x550c
/* 814A725C | 4B FF 93 F9 */	bl NWC24iSetErrorCode
.L_814A7260:
/* 814A7260 | 39 61 01 20 */	addi r11, r1, 0x120
/* 814A7264 | 7F 63 DB 78 */	mr r3, r27
/* 814A7268 | 48 15 22 95 */	bl _restgpr_23
/* 814A726C | 80 01 01 24 */	lwz r0, 0x124(r1)
/* 814A7270 | 7C 08 03 A6 */	mtlr r0
/* 814A7274 | 38 21 01 20 */	addi r1, r1, 0x120
/* 814A7278 | 4E 80 00 20 */	blr
.endfn NWC24CommitMsgInternal_814A6590

# .text:0xCEC | 0x814A727C | size: 0xA0
.fn CheckMsgObject, local
/* 814A727C | 88 03 00 C8 */	lbz r0, 0xc8(r3)
/* 814A7280 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A7284 | 40 82 00 0C */	bne .L_814A7290
/* 814A7288 | 38 60 FF FB */	li r3, -0x5
/* 814A728C | 4E 80 00 20 */	blr
.L_814A7290:
/* 814A7290 | 28 00 00 08 */	cmplwi r0, 0x8
/* 814A7294 | 40 81 00 0C */	ble .L_814A72A0
/* 814A7298 | 38 60 FF FD */	li r3, -0x3
/* 814A729C | 4E 80 00 20 */	blr
.L_814A72A0:
/* 814A72A0 | 80 A3 00 40 */	lwz r5, 0x40(r3)
/* 814A72A4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814A72A8 | 41 82 00 58 */	beq .L_814A7300
/* 814A72AC | 48 00 00 48 */	b .L_814A72F4
.L_814A72B0:
/* 814A72B0 | 7C 80 07 74 */	extsb r0, r4
/* 814A72B4 | 2C 00 00 0D */	cmpwi r0, 0xd
/* 814A72B8 | 40 82 00 18 */	bne .L_814A72D0
/* 814A72BC | 88 05 00 01 */	lbz r0, 0x1(r5)
/* 814A72C0 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 814A72C4 | 41 82 00 0C */	beq .L_814A72D0
/* 814A72C8 | 38 60 FF E8 */	li r3, -0x18
/* 814A72CC | 4E 80 00 20 */	blr
.L_814A72D0:
/* 814A72D0 | 7C 80 07 74 */	extsb r0, r4
/* 814A72D4 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 814A72D8 | 40 82 00 18 */	bne .L_814A72F0
/* 814A72DC | 88 05 00 01 */	lbz r0, 0x1(r5)
/* 814A72E0 | 2C 00 00 20 */	cmpwi r0, 0x20
/* 814A72E4 | 41 82 00 0C */	beq .L_814A72F0
/* 814A72E8 | 38 60 FF E8 */	li r3, -0x18
/* 814A72EC | 4E 80 00 20 */	blr
.L_814A72F0:
/* 814A72F0 | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814A72F4:
/* 814A72F4 | 88 85 00 00 */	lbz r4, 0x0(r5)
/* 814A72F8 | 7C 80 07 75 */	extsb. r0, r4
/* 814A72FC | 40 82 FF B4 */	bne .L_814A72B0
.L_814A7300:
/* 814A7300 | 88 03 00 C9 */	lbz r0, 0xc9(r3)
/* 814A7304 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814A7308 | 40 81 00 0C */	ble .L_814A7314
/* 814A730C | 38 60 FF FD */	li r3, -0x3
/* 814A7310 | 4E 80 00 20 */	blr
.L_814A7314:
/* 814A7314 | 38 60 00 00 */	li r3, 0x0
/* 814A7318 | 4E 80 00 20 */	blr
.endfn CheckMsgObject

# .text:0xD8C | 0x814A731C | size: 0x37C
.fn CheckMsgBoxSpace, local
/* 814A731C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814A7320 | 7C 08 02 A6 */	mflr r0
/* 814A7324 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814A7328 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814A732C | 48 15 21 81 */	bl _savegpr_22
/* 814A7330 | 88 E3 00 C9 */	lbz r7, 0xc9(r3)
/* 814A7334 | 3B E0 00 00 */	li r31, 0x0
/* 814A7338 | 3B C0 00 00 */	li r30, 0x0
/* 814A733C | 2C 87 00 00 */	cmpwi cr1, r7, 0x0
/* 814A7340 | 40 85 02 70 */	ble cr1, .L_814A75B0
/* 814A7344 | 2C 07 00 08 */	cmpwi r7, 0x8
/* 814A7348 | 39 27 FF F8 */	subi r9, r7, 0x8
/* 814A734C | 40 81 01 FC */	ble .L_814A7548
/* 814A7350 | 38 C0 00 00 */	li r6, 0x0
/* 814A7354 | 41 84 00 18 */	blt cr1, .L_814A736C
/* 814A7358 | 3C A0 80 00 */	lis r5, 0x8000
/* 814A735C | 38 05 FF FE */	subi r0, r5, 0x2
/* 814A7360 | 7C 07 00 00 */	cmpw r7, r0
/* 814A7364 | 41 81 00 08 */	bgt .L_814A736C
/* 814A7368 | 38 C0 00 01 */	li r6, 0x1
.L_814A736C:
/* 814A736C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814A7370 | 41 82 01 D8 */	beq .L_814A7548
/* 814A7374 | 38 A9 00 07 */	addi r5, r9, 0x7
/* 814A7378 | 3C C0 AA AB */	lis r6, 0xaaab
/* 814A737C | 3D 00 1F 70 */	lis r8, 0x1f70
/* 814A7380 | 7C 67 1B 78 */	mr r7, r3
/* 814A7384 | 54 A5 E8 FE */	srwi r5, r5, 3
/* 814A7388 | 38 C6 AA AB */	subi r6, r6, 0x5555
/* 814A738C | 38 08 47 DD */	addi r0, r8, 0x47dd
/* 814A7390 | 7C A9 03 A6 */	mtctr r5
/* 814A7394 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 814A7398 | 40 81 01 B0 */	ble .L_814A7548
.L_814A739C:
/* 814A739C | 83 27 00 78 */	lwz r25, 0x78(r7)
/* 814A73A0 | 81 07 00 7C */	lwz r8, 0x7c(r7)
/* 814A73A4 | 7E E0 C8 16 */	mulhwu r23, r0, r25
/* 814A73A8 | 57 25 10 3A */	slwi r5, r25, 2
/* 814A73AC | 81 67 00 88 */	lwz r11, 0x88(r7)
/* 814A73B0 | 3A C5 00 02 */	addi r22, r5, 0x2
/* 814A73B4 | 81 27 00 80 */	lwz r9, 0x80(r7)
/* 814A73B8 | 55 05 10 3A */	slwi r5, r8, 2
/* 814A73BC | 7F 40 40 16 */	mulhwu r26, r0, r8
/* 814A73C0 | 3B 05 00 02 */	addi r24, r5, 0x2
/* 814A73C4 | 55 7C 10 3A */	slwi r28, r11, 2
/* 814A73C8 | 81 87 00 8C */	lwz r12, 0x8c(r7)
/* 814A73CC | 55 25 10 3A */	slwi r5, r9, 2
/* 814A73D0 | 81 47 00 84 */	lwz r10, 0x84(r7)
/* 814A73D4 | 7F 66 B0 16 */	mulhwu r27, r6, r22
/* 814A73D8 | 7E D7 C8 50 */	subf r22, r23, r25
/* 814A73DC | 3B 25 00 02 */	addi r25, r5, 0x2
/* 814A73E0 | 56 D6 F8 7E */	srwi r22, r22, 1
/* 814A73E4 | 7D 1A 40 50 */	subf r8, r26, r8
/* 814A73E8 | 7E D6 BA 14 */	add r22, r22, r23
/* 814A73EC | 57 65 F8 7E */	srwi r5, r27, 1
/* 814A73F0 | 55 5B 10 3A */	slwi r27, r10, 2
/* 814A73F4 | 7E E6 C0 16 */	mulhwu r23, r6, r24
/* 814A73F8 | 55 18 F8 7E */	srwi r24, r8, 1
/* 814A73FC | 55 88 10 3A */	slwi r8, r12, 2
/* 814A7400 | 7F 18 D2 14 */	add r24, r24, r26
/* 814A7404 | 3B A8 00 02 */	addi r29, r8, 0x2
/* 814A7408 | 3B 7B 00 02 */	addi r27, r27, 0x2
/* 814A740C | 7F 40 48 16 */	mulhwu r26, r0, r9
/* 814A7410 | 56 D6 E1 3C */	rlwinm r22, r22, 28, 4, 30
/* 814A7414 | 7C BF 2A 14 */	add r5, r31, r5
/* 814A7418 | 56 E8 F8 7E */	srwi r8, r23, 1
/* 814A741C | 7F E5 B2 14 */	add r31, r5, r22
/* 814A7420 | 57 18 E1 3C */	rlwinm r24, r24, 28, 4, 30
/* 814A7424 | 7C BA 48 50 */	subf r5, r26, r9
/* 814A7428 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 814A742C | 7D 3F 42 14 */	add r9, r31, r8
/* 814A7430 | 3B 9C 00 02 */	addi r28, r28, 0x2
/* 814A7434 | 54 A5 F8 7E */	srwi r5, r5, 1
/* 814A7438 | 7F E9 C2 14 */	add r31, r9, r24
/* 814A743C | 7F 26 C8 16 */	mulhwu r25, r6, r25
/* 814A7440 | 7C A5 D2 14 */	add r5, r5, r26
/* 814A7444 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 814A7448 | 54 BA E1 3C */	rlwinm r26, r5, 28, 4, 30
/* 814A744C | 7D 00 50 16 */	mulhwu r8, r0, r10
/* 814A7450 | 57 29 F8 7E */	srwi r9, r25, 1
/* 814A7454 | 7D 3F 4A 14 */	add r9, r31, r9
/* 814A7458 | 7F E9 D2 14 */	add r31, r9, r26
/* 814A745C | 7C A8 50 50 */	subf r5, r8, r10
/* 814A7460 | 7F 66 D8 16 */	mulhwu r27, r6, r27
/* 814A7464 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 814A7468 | 54 A5 F8 7E */	srwi r5, r5, 1
/* 814A746C | 7C A5 42 14 */	add r5, r5, r8
/* 814A7470 | 7D 20 58 16 */	mulhwu r9, r0, r11
/* 814A7474 | 57 6A F8 7E */	srwi r10, r27, 1
/* 814A7478 | 7D 1F 52 14 */	add r8, r31, r10
/* 814A747C | 54 BF E1 3C */	rlwinm r31, r5, 28, 4, 30
/* 814A7480 | 7F E8 FA 14 */	add r31, r8, r31
/* 814A7484 | 7D 46 E0 16 */	mulhwu r10, r6, r28
/* 814A7488 | 7C A9 58 50 */	subf r5, r9, r11
/* 814A748C | 3B FF 00 04 */	addi r31, r31, 0x4
/* 814A7490 | 54 A5 F8 7E */	srwi r5, r5, 1
/* 814A7494 | 7C A5 4A 14 */	add r5, r5, r9
/* 814A7498 | 7D 26 E8 16 */	mulhwu r9, r6, r29
/* 814A749C | 55 4A F8 7E */	srwi r10, r10, 1
/* 814A74A0 | 54 AB E1 3C */	rlwinm r11, r5, 28, 4, 30
/* 814A74A4 | 7D 5F 52 14 */	add r10, r31, r10
/* 814A74A8 | 7D 00 60 16 */	mulhwu r8, r0, r12
/* 814A74AC | 7F EA 5A 14 */	add r31, r10, r11
/* 814A74B0 | 55 29 F8 7E */	srwi r9, r9, 1
/* 814A74B4 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 814A74B8 | 7C A8 60 50 */	subf r5, r8, r12
/* 814A74BC | 54 A5 F8 7E */	srwi r5, r5, 1
/* 814A74C0 | 7C A5 42 14 */	add r5, r5, r8
/* 814A74C4 | 54 A8 E1 3C */	rlwinm r8, r5, 28, 4, 30
/* 814A74C8 | 7C BF 4A 14 */	add r5, r31, r9
/* 814A74CC | 7F E5 42 14 */	add r31, r5, r8
/* 814A74D0 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 814A74D4 | 81 27 00 90 */	lwz r9, 0x90(r7)
/* 814A74D8 | 3B DE 00 08 */	addi r30, r30, 0x8
/* 814A74DC | 81 87 00 94 */	lwz r12, 0x94(r7)
/* 814A74E0 | 38 E7 00 20 */	addi r7, r7, 0x20
/* 814A74E4 | 7D 40 48 16 */	mulhwu r10, r0, r9
/* 814A74E8 | 55 28 10 3A */	slwi r8, r9, 2
/* 814A74EC | 55 85 10 3A */	slwi r5, r12, 2
/* 814A74F0 | 39 08 00 02 */	addi r8, r8, 0x2
/* 814A74F4 | 38 A5 00 02 */	addi r5, r5, 0x2
/* 814A74F8 | 7D 66 40 16 */	mulhwu r11, r6, r8
/* 814A74FC | 7D 0A 48 50 */	subf r8, r10, r9
/* 814A7500 | 55 09 F8 7E */	srwi r9, r8, 1
/* 814A7504 | 7D 29 52 14 */	add r9, r9, r10
/* 814A7508 | 55 6A F8 7E */	srwi r10, r11, 1
/* 814A750C | 55 2B E1 3C */	rlwinm r11, r9, 28, 4, 30
/* 814A7510 | 7D 26 28 16 */	mulhwu r9, r6, r5
/* 814A7514 | 7D 5F 52 14 */	add r10, r31, r10
/* 814A7518 | 7F EA 5A 14 */	add r31, r10, r11
/* 814A751C | 3B FF 00 04 */	addi r31, r31, 0x4
/* 814A7520 | 7D 00 60 16 */	mulhwu r8, r0, r12
/* 814A7524 | 55 29 F8 7E */	srwi r9, r9, 1
/* 814A7528 | 7C A8 60 50 */	subf r5, r8, r12
/* 814A752C | 54 A5 F8 7E */	srwi r5, r5, 1
/* 814A7530 | 7C A5 42 14 */	add r5, r5, r8
/* 814A7534 | 54 A8 E1 3C */	rlwinm r8, r5, 28, 4, 30
/* 814A7538 | 7C BF 4A 14 */	add r5, r31, r9
/* 814A753C | 7F E5 42 14 */	add r31, r5, r8
/* 814A7540 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 814A7544 | 42 00 FE 58 */	bdnz .L_814A739C
.L_814A7548:
/* 814A7548 | 89 43 00 C9 */	lbz r10, 0xc9(r3)
/* 814A754C | 57 C7 10 3A */	slwi r7, r30, 2
/* 814A7550 | 3C C0 AA AB */	lis r6, 0xaaab
/* 814A7554 | 3C A0 1F 70 */	lis r5, 0x1f70
/* 814A7558 | 7C 1E 50 50 */	subf r0, r30, r10
/* 814A755C | 7D 23 3A 14 */	add r9, r3, r7
/* 814A7560 | 39 06 AA AB */	subi r8, r6, 0x5555
/* 814A7564 | 38 C5 47 DD */	addi r6, r5, 0x47dd
/* 814A7568 | 7C 09 03 A6 */	mtctr r0
/* 814A756C | 7C 1E 50 00 */	cmpw r30, r10
/* 814A7570 | 40 80 00 40 */	bge .L_814A75B0
.L_814A7574:
/* 814A7574 | 81 49 00 78 */	lwz r10, 0x78(r9)
/* 814A7578 | 39 29 00 04 */	addi r9, r9, 0x4
/* 814A757C | 55 47 10 3A */	slwi r7, r10, 2
/* 814A7580 | 38 07 00 02 */	addi r0, r7, 0x2
/* 814A7584 | 7C E8 00 16 */	mulhwu r7, r8, r0
/* 814A7588 | 7C A6 50 16 */	mulhwu r5, r6, r10
/* 814A758C | 54 E7 F8 7E */	srwi r7, r7, 1
/* 814A7590 | 7C 05 50 50 */	subf r0, r5, r10
/* 814A7594 | 54 00 F8 7E */	srwi r0, r0, 1
/* 814A7598 | 7C 00 2A 14 */	add r0, r0, r5
/* 814A759C | 54 05 E1 3C */	rlwinm r5, r0, 28, 4, 30
/* 814A75A0 | 7C 1F 3A 14 */	add r0, r31, r7
/* 814A75A4 | 7F E0 2A 14 */	add r31, r0, r5
/* 814A75A8 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 814A75AC | 42 00 FF C8 */	bdnz .L_814A7574
.L_814A75B0:
/* 814A75B0 | 80 03 00 64 */	lwz r0, 0x64(r3)
/* 814A75B4 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814A75B8 | 41 82 00 28 */	beq .L_814A75E0
/* 814A75BC | 40 80 00 10 */	bge .L_814A75CC
/* 814A75C0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A75C4 | 40 80 00 14 */	bge .L_814A75D8
/* 814A75C8 | 48 00 00 78 */	b .L_814A7640
.L_814A75CC:
/* 814A75CC | 2C 00 00 04 */	cmpwi r0, 0x4
/* 814A75D0 | 40 80 00 70 */	bge .L_814A7640
/* 814A75D4 | 48 00 00 50 */	b .L_814A7624
.L_814A75D8:
/* 814A75D8 | 80 03 00 4C */	lwz r0, 0x4c(r3)
/* 814A75DC | 48 00 00 68 */	b .L_814A7644
.L_814A75E0:
/* 814A75E0 | 80 E3 00 4C */	lwz r7, 0x4c(r3)
/* 814A75E4 | 3C 60 1F 70 */	lis r3, 0x1f70
/* 814A75E8 | 38 03 47 DD */	addi r0, r3, 0x47dd
/* 814A75EC | 3C A0 AA AB */	lis r5, 0xaaab
/* 814A75F0 | 7C 60 38 16 */	mulhwu r3, r0, r7
/* 814A75F4 | 54 E6 10 3A */	slwi r6, r7, 2
/* 814A75F8 | 38 A5 AA AB */	subi r5, r5, 0x5555
/* 814A75FC | 38 06 00 02 */	addi r0, r6, 0x2
/* 814A7600 | 7C A5 00 16 */	mulhwu r5, r5, r0
/* 814A7604 | 7C 03 38 50 */	subf r0, r3, r7
/* 814A7608 | 54 00 F8 7E */	srwi r0, r0, 1
/* 814A760C | 7C 00 1A 14 */	add r0, r0, r3
/* 814A7610 | 54 A3 F8 7E */	srwi r3, r5, 1
/* 814A7614 | 54 00 E1 3C */	rlwinm r0, r0, 28, 4, 30
/* 814A7618 | 7C 60 1A 14 */	add r3, r0, r3
/* 814A761C | 38 03 00 04 */	addi r0, r3, 0x4
/* 814A7620 | 48 00 00 24 */	b .L_814A7644
.L_814A7624:
/* 814A7624 | 80 03 00 4C */	lwz r0, 0x4c(r3)
/* 814A7628 | 3C 60 AA AB */	lis r3, 0xaaab
/* 814A762C | 38 63 AA AB */	subi r3, r3, 0x5555
/* 814A7630 | 54 00 10 3A */	slwi r0, r0, 2
/* 814A7634 | 7C 03 00 16 */	mulhwu r0, r3, r0
/* 814A7638 | 54 00 F8 7E */	srwi r0, r0, 1
/* 814A763C | 48 00 00 08 */	b .L_814A7644
.L_814A7640:
/* 814A7640 | 38 00 00 00 */	li r0, 0x0
.L_814A7644:
/* 814A7644 | 3C 60 00 03 */	lis r3, 0x3
/* 814A7648 | 7F FF 02 14 */	add r31, r31, r0
/* 814A764C | 38 03 1C 00 */	addi r0, r3, 0x1c00
/* 814A7650 | 7C 1F 00 40 */	cmplw r31, r0
/* 814A7654 | 41 80 00 0C */	blt .L_814A7660
/* 814A7658 | 38 60 FF F8 */	li r3, -0x8
/* 814A765C | 48 00 00 24 */	b .L_814A7680
.L_814A7660:
/* 814A7660 | 7C 83 23 78 */	mr r3, r4
/* 814A7664 | 38 9F 04 00 */	addi r4, r31, 0x400
/* 814A7668 | 4B FF B7 41 */	bl NWC24iMBoxCheck
/* 814A766C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A7670 | 38 00 00 00 */	li r0, 0x0
/* 814A7674 | 41 82 00 08 */	beq .L_814A767C
/* 814A7678 | 7C 60 1B 78 */	mr r0, r3
.L_814A767C:
/* 814A767C | 7C 03 03 78 */	mr r3, r0
.L_814A7680:
/* 814A7680 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814A7684 | 48 15 1E 75 */	bl _restgpr_22
/* 814A7688 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814A768C | 7C 08 03 A6 */	mtlr r0
/* 814A7690 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814A7694 | 4E 80 00 20 */	blr
.endfn CheckMsgBoxSpace

# .text:0x1108 | 0x814A7698 | size: 0x110
.fn SynthesizeAddrStr, local
/* 814A7698 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814A769C | 7C 08 02 A6 */	mflr r0
/* 814A76A0 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814A76A4 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814A76A8 | 48 15 1E 15 */	bl _savegpr_26
/* 814A76AC | 54 80 07 FF */	clrlwi. r0, r4, 31
/* 814A76B0 | 7C 7A 1B 78 */	mr r26, r3
/* 814A76B4 | 7C BB 2B 78 */	mr r27, r5
/* 814A76B8 | 7C DC 33 78 */	mr r28, r6
/* 814A76BC | 7C FD 3B 78 */	mr r29, r7
/* 814A76C0 | 3B E0 00 00 */	li r31, 0x0
/* 814A76C4 | 41 82 00 78 */	beq .L_814A773C
/* 814A76C8 | 4B FF 82 FD */	bl NWC24GetAccountDomain
/* 814A76CC | 7C 7E 1B 78 */	mr r30, r3
/* 814A76D0 | 4B FF 56 AD */	bl Mail_strlen
/* 814A76D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A76D8 | 41 81 00 0C */	bgt .L_814A76E4
/* 814A76DC | 3B E0 FF F4 */	li r31, -0xc
/* 814A76E0 | 48 00 00 AC */	b .L_814A778C
.L_814A76E4:
/* 814A76E4 | 38 03 00 12 */	addi r0, r3, 0x12
/* 814A76E8 | 7C 00 E0 00 */	cmpw r0, r28
/* 814A76EC | 41 80 00 0C */	blt .L_814A76F8
/* 814A76F0 | 3B E0 FF F5 */	li r31, -0xb
/* 814A76F4 | 48 00 00 98 */	b .L_814A778C
.L_814A76F8:
/* 814A76F8 | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 814A76FC | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814A7700 | 80 9A 00 04 */	lwz r4, 0x4(r26)
/* 814A7704 | 4B FF 86 0D */	bl NWC24iConvIdToStr
/* 814A7708 | 7F 63 DB 78 */	mr r3, r27
/* 814A770C | 7F C7 F3 78 */	mr r7, r30
/* 814A7710 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814A7714 | 38 8D 9B C8 */	li r4, lbl_81697C08@sda21
/* 814A7718 | 38 A0 00 77 */	li r5, 0x77
/* 814A771C | 4C C6 31 82 */	crclr cr1eq
/* 814A7720 | 4B FF 5F 31 */	bl Mail_sprintf
/* 814A7724 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A7728 | 40 82 00 0C */	bne .L_814A7734
/* 814A772C | 3B E0 FF FF */	li r31, -0x1
/* 814A7730 | 48 00 00 5C */	b .L_814A778C
.L_814A7734:
/* 814A7734 | 90 7D 00 00 */	stw r3, 0x0(r29)
/* 814A7738 | 48 00 00 54 */	b .L_814A778C
.L_814A773C:
/* 814A773C | 54 80 07 BD */	rlwinm. r0, r4, 0, 30, 30
/* 814A7740 | 41 82 00 48 */	beq .L_814A7788
/* 814A7744 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 814A7748 | 38 03 00 03 */	addi r0, r3, 0x3
/* 814A774C | 7C 00 30 40 */	cmplw r0, r6
/* 814A7750 | 41 80 00 0C */	blt .L_814A775C
/* 814A7754 | 3B E0 FF F5 */	li r31, -0xb
/* 814A7758 | 48 00 00 34 */	b .L_814A778C
.L_814A775C:
/* 814A775C | 80 BA 00 00 */	lwz r5, 0x0(r26)
/* 814A7760 | 7F 63 DB 78 */	mr r3, r27
/* 814A7764 | 38 8D 9B D0 */	li r4, lbl_81697C10@sda21
/* 814A7768 | 4C C6 31 82 */	crclr cr1eq
/* 814A776C | 4B FF 5E E5 */	bl Mail_sprintf
/* 814A7770 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A7774 | 40 82 00 0C */	bne .L_814A7780
/* 814A7778 | 3B E0 FF FF */	li r31, -0x1
/* 814A777C | 48 00 00 10 */	b .L_814A778C
.L_814A7780:
/* 814A7780 | 90 7D 00 00 */	stw r3, 0x0(r29)
/* 814A7784 | 48 00 00 08 */	b .L_814A778C
.L_814A7788:
/* 814A7788 | 3B E0 FF FD */	li r31, -0x3
.L_814A778C:
/* 814A778C | 39 61 00 40 */	addi r11, r1, 0x40
/* 814A7790 | 7F E3 FB 78 */	mr r3, r31
/* 814A7794 | 48 15 1D 75 */	bl _restgpr_26
/* 814A7798 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814A779C | 7C 08 03 A6 */	mtlr r0
/* 814A77A0 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814A77A4 | 4E 80 00 20 */	blr
.endfn SynthesizeAddrStr

# .text:0x1218 | 0x814A77A8 | size: 0xE8
.fn WriteSMTP_MAILFROM, local
/* 814A77A8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814A77AC | 7C 08 02 A6 */	mflr r0
/* 814A77B0 | 38 80 00 00 */	li r4, 0x0
/* 814A77B4 | 38 A0 04 00 */	li r5, 0x400
/* 814A77B8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814A77BC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814A77C0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814A77C4 | 7C 7E 1B 78 */	mr r30, r3
/* 814A77C8 | 83 ED AD A0 */	lwz r31, NWC24WorkP_81698DE0@sda21(r0)
/* 814A77CC | 7F E3 FB 78 */	mr r3, r31
/* 814A77D0 | 4B FF 56 B5 */	bl Mail_memset
/* 814A77D4 | 3C 80 81 67 */	lis r4, lbl_8166DDF8@ha
/* 814A77D8 | 7F E3 FB 78 */	mr r3, r31
/* 814A77DC | 38 84 DD F8 */	addi r4, r4, lbl_8166DDF8@l
/* 814A77E0 | 38 A0 03 FE */	li r5, 0x3fe
/* 814A77E4 | 4B FF 57 CD */	bl Mail_strncat
/* 814A77E8 | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 814A77EC | 3B FF 00 0B */	addi r31, r31, 0xb
/* 814A77F0 | 38 80 00 01 */	li r4, 0x1
/* 814A77F4 | 54 00 02 D7 */	rlwinm. r0, r0, 0, 11, 11
/* 814A77F8 | 41 82 00 08 */	beq .L_814A7800
/* 814A77FC | 38 80 00 02 */	li r4, 0x2
.L_814A7800:
/* 814A7800 | 7F E5 FB 78 */	mr r5, r31
/* 814A7804 | 38 7E 00 20 */	addi r3, r30, 0x20
/* 814A7808 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814A780C | 38 C0 03 F1 */	li r6, 0x3f1
/* 814A7810 | 4B FF FE 89 */	bl SynthesizeAddrStr
/* 814A7814 | 2C 83 00 00 */	cmpwi cr1, r3, 0x0
/* 814A7818 | 41 86 00 08 */	beq cr1, .L_814A7820
/* 814A781C | 48 00 00 5C */	b .L_814A7878
.L_814A7820:
/* 814A7820 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 814A7824 | 38 80 00 0D */	li r4, 0xd
/* 814A7828 | 38 00 00 0A */	li r0, 0xa
/* 814A782C | 7C 9F 29 EE */	stbux r4, r31, r5
/* 814A7830 | 98 1F 00 01 */	stb r0, 0x1(r31)
/* 814A7834 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814A7838 | 20 04 03 F1 */	subfic r0, r4, 0x3f1
/* 814A783C | 3B E4 00 0D */	addi r31, r4, 0xd
/* 814A7840 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A7844 | 41 81 00 0C */	bgt .L_814A7850
/* 814A7848 | 38 60 FF F5 */	li r3, -0xb
/* 814A784C | 48 00 00 2C */	b .L_814A7878
.L_814A7850:
/* 814A7850 | 40 86 00 28 */	bne cr1, .L_814A7878
/* 814A7854 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814A7858 | 7F E4 FB 78 */	mr r4, r31
/* 814A785C | 80 AD AD C0 */	lwz r5, m_pFile@sda21(r0)
/* 814A7860 | 4B FF 6C 55 */	bl NWC24FWrite
/* 814A7864 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A7868 | 40 82 00 10 */	bne .L_814A7878
/* 814A786C | 80 1E 00 08 */	lwz r0, 0x8(r30)
/* 814A7870 | 7C 00 FA 14 */	add r0, r0, r31
/* 814A7874 | 90 1E 00 08 */	stw r0, 0x8(r30)
.L_814A7878:
/* 814A7878 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814A787C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814A7880 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814A7884 | 7C 08 03 A6 */	mtlr r0
/* 814A7888 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814A788C | 4E 80 00 20 */	blr
.endfn WriteSMTP_MAILFROM

# .text:0x1300 | 0x814A7890 | size: 0x118
.fn WriteSMTP_RCPTTO, local
/* 814A7890 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814A7894 | 7C 08 02 A6 */	mflr r0
/* 814A7898 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814A789C | 39 61 00 40 */	addi r11, r1, 0x40
/* 814A78A0 | 48 15 1C 0D */	bl _savegpr_22
/* 814A78A4 | 83 6D AD A0 */	lwz r27, NWC24WorkP_81698DE0@sda21(r0)
/* 814A78A8 | 7C 76 1B 78 */	mr r22, r3
/* 814A78AC | 3B 20 00 00 */	li r25, 0x0
/* 814A78B0 | 3A E0 00 00 */	li r23, 0x0
/* 814A78B4 | 7F 63 DB 78 */	mr r3, r27
/* 814A78B8 | 38 80 00 00 */	li r4, 0x0
/* 814A78BC | 38 A0 04 00 */	li r5, 0x400
/* 814A78C0 | 4B FF 55 C5 */	bl Mail_memset
/* 814A78C4 | 3B 96 00 88 */	addi r28, r22, 0x88
/* 814A78C8 | 3B 00 03 FE */	li r24, 0x3fe
/* 814A78CC | 3B 40 00 00 */	li r26, 0x0
/* 814A78D0 | 3F A0 81 67 */	lis r29, lbl_8166DE04@ha
/* 814A78D4 | 3B C0 00 0D */	li r30, 0xd
/* 814A78D8 | 3B E0 00 0A */	li r31, 0xa
/* 814A78DC | 48 00 00 74 */	b .L_814A7950
.L_814A78E0:
/* 814A78E0 | 7F 63 DB 78 */	mr r3, r27
/* 814A78E4 | 7F 05 C3 78 */	mr r5, r24
/* 814A78E8 | 38 9D DE 04 */	addi r4, r29, lbl_8166DE04@l
/* 814A78EC | 4B FF 56 C5 */	bl Mail_strncat
/* 814A78F0 | 3B 7B 00 09 */	addi r27, r27, 0x9
/* 814A78F4 | 3B 18 FF F5 */	subi r24, r24, 0xb
/* 814A78F8 | 80 96 00 04 */	lwz r4, 0x4(r22)
/* 814A78FC | 7F 83 E3 78 */	mr r3, r28
/* 814A7900 | 7F 65 DB 78 */	mr r5, r27
/* 814A7904 | 7F 06 C3 78 */	mr r6, r24
/* 814A7908 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814A790C | 4B FF FD 8D */	bl SynthesizeAddrStr
/* 814A7910 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A7914 | 7C 77 1B 78 */	mr r23, r3
/* 814A7918 | 40 82 00 44 */	bne .L_814A795C
/* 814A791C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814A7920 | 7F DB 01 EE */	stbux r30, r27, r0
/* 814A7924 | 9B FB 00 01 */	stb r31, 0x1(r27)
/* 814A7928 | 3B 7B 00 02 */	addi r27, r27, 0x2
/* 814A792C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814A7930 | 7F 00 C0 51 */	subf. r24, r0, r24
/* 814A7934 | 7C 79 02 14 */	add r3, r25, r0
/* 814A7938 | 3B 23 00 0B */	addi r25, r3, 0xb
/* 814A793C | 41 81 00 0C */	bgt .L_814A7948
/* 814A7940 | 3A E0 FF F5 */	li r23, -0xb
/* 814A7944 | 48 00 00 18 */	b .L_814A795C
.L_814A7948:
/* 814A7948 | 3B 9C 00 08 */	addi r28, r28, 0x8
/* 814A794C | 3B 5A 00 01 */	addi r26, r26, 0x1
.L_814A7950:
/* 814A7950 | 88 16 00 C8 */	lbz r0, 0xc8(r22)
/* 814A7954 | 7C 1A 00 40 */	cmplw r26, r0
/* 814A7958 | 41 80 FF 88 */	blt .L_814A78E0
.L_814A795C:
/* 814A795C | 2C 17 00 00 */	cmpwi r23, 0x0
/* 814A7960 | 40 82 00 2C */	bne .L_814A798C
/* 814A7964 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814A7968 | 7F 24 CB 78 */	mr r4, r25
/* 814A796C | 80 AD AD C0 */	lwz r5, m_pFile@sda21(r0)
/* 814A7970 | 4B FF 6B 45 */	bl NWC24FWrite
/* 814A7974 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A7978 | 7C 77 1B 78 */	mr r23, r3
/* 814A797C | 40 82 00 10 */	bne .L_814A798C
/* 814A7980 | 80 16 00 08 */	lwz r0, 0x8(r22)
/* 814A7984 | 7C 00 CA 14 */	add r0, r0, r25
/* 814A7988 | 90 16 00 08 */	stw r0, 0x8(r22)
.L_814A798C:
/* 814A798C | 39 61 00 40 */	addi r11, r1, 0x40
/* 814A7990 | 7E E3 BB 78 */	mr r3, r23
/* 814A7994 | 48 15 1B 65 */	bl _restgpr_22
/* 814A7998 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814A799C | 7C 08 03 A6 */	mtlr r0
/* 814A79A0 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814A79A4 | 4E 80 00 20 */	blr
.endfn WriteSMTP_RCPTTO

# .text:0x1418 | 0x814A79A8 | size: 0x100
.fn WriteFromField, local
/* 814A79A8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814A79AC | 7C 08 02 A6 */	mflr r0
/* 814A79B0 | 38 80 00 00 */	li r4, 0x0
/* 814A79B4 | 38 A0 04 00 */	li r5, 0x400
/* 814A79B8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814A79BC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814A79C0 | 7C 7F 1B 78 */	mr r31, r3
/* 814A79C4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814A79C8 | 83 CD AD A0 */	lwz r30, NWC24WorkP_81698DE0@sda21(r0)
/* 814A79CC | 7F C3 F3 78 */	mr r3, r30
/* 814A79D0 | 4B FF 54 B5 */	bl Mail_memset
/* 814A79D4 | 7F C3 F3 78 */	mr r3, r30
/* 814A79D8 | 38 8D 9B D4 */	li r4, lbl_81697C14@sda21
/* 814A79DC | 38 A0 03 FE */	li r5, 0x3fe
/* 814A79E0 | 4B FF 55 D1 */	bl Mail_strncat
/* 814A79E4 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 814A79E8 | 3B DE 00 06 */	addi r30, r30, 0x6
/* 814A79EC | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814A79F0 | 38 80 00 01 */	li r4, 0x1
/* 814A79F4 | 54 00 02 D7 */	rlwinm. r0, r0, 0, 11, 11
/* 814A79F8 | 38 03 00 06 */	addi r0, r3, 0x6
/* 814A79FC | 90 1F 00 30 */	stw r0, 0x30(r31)
/* 814A7A00 | 41 82 00 08 */	beq .L_814A7A08
/* 814A7A04 | 38 80 00 02 */	li r4, 0x2
.L_814A7A08:
/* 814A7A08 | 7F C5 F3 78 */	mr r5, r30
/* 814A7A0C | 38 7F 00 20 */	addi r3, r31, 0x20
/* 814A7A10 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814A7A14 | 38 C0 03 F6 */	li r6, 0x3f6
/* 814A7A18 | 4B FF FC 81 */	bl SynthesizeAddrStr
/* 814A7A1C | 2C 83 00 00 */	cmpwi cr1, r3, 0x0
/* 814A7A20 | 41 86 00 08 */	beq cr1, .L_814A7A28
/* 814A7A24 | 48 00 00 6C */	b .L_814A7A90
.L_814A7A28:
/* 814A7A28 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 814A7A2C | 38 80 00 0D */	li r4, 0xd
/* 814A7A30 | 38 00 00 0A */	li r0, 0xa
/* 814A7A34 | 7C 9E 29 EE */	stbux r4, r30, r5
/* 814A7A38 | 98 1E 00 01 */	stb r0, 0x1(r30)
/* 814A7A3C | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814A7A40 | 20 04 03 F6 */	subfic r0, r4, 0x3f6
/* 814A7A44 | 3B C4 00 08 */	addi r30, r4, 0x8
/* 814A7A48 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A7A4C | 41 81 00 0C */	bgt .L_814A7A58
/* 814A7A50 | 38 60 FF F5 */	li r3, -0xb
/* 814A7A54 | 48 00 00 3C */	b .L_814A7A90
.L_814A7A58:
/* 814A7A58 | 40 86 00 38 */	bne cr1, .L_814A7A90
/* 814A7A5C | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814A7A60 | 7F C4 F3 78 */	mr r4, r30
/* 814A7A64 | 80 AD AD C0 */	lwz r5, m_pFile@sda21(r0)
/* 814A7A68 | 4B FF 6A 4D */	bl NWC24FWrite
/* 814A7A6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A7A70 | 40 82 00 20 */	bne .L_814A7A90
/* 814A7A74 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 814A7A78 | 80 1F 00 30 */	lwz r0, 0x30(r31)
/* 814A7A7C | 7C A4 F2 14 */	add r5, r4, r30
/* 814A7A80 | 7C 80 28 50 */	subf r4, r0, r5
/* 814A7A84 | 90 BF 00 08 */	stw r5, 0x8(r31)
/* 814A7A88 | 38 04 FF FE */	subi r0, r4, 0x2
/* 814A7A8C | 90 1F 00 34 */	stw r0, 0x34(r31)
.L_814A7A90:
/* 814A7A90 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814A7A94 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814A7A98 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814A7A9C | 7C 08 03 A6 */	mtlr r0
/* 814A7AA0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814A7AA4 | 4E 80 00 20 */	blr
.endfn WriteFromField

# .text:0x1518 | 0x814A7AA8 | size: 0x168
.fn WriteToField, local
/* 814A7AA8 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814A7AAC | 7C 08 02 A6 */	mflr r0
/* 814A7AB0 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814A7AB4 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814A7AB8 | 48 15 19 F1 */	bl _savegpr_21
/* 814A7ABC | 83 2D AD A0 */	lwz r25, NWC24WorkP_81698DE0@sda21(r0)
/* 814A7AC0 | 7C 7D 1B 78 */	mr r29, r3
/* 814A7AC4 | 3B C0 00 00 */	li r30, 0x0
/* 814A7AC8 | 38 80 00 00 */	li r4, 0x0
/* 814A7ACC | 7F 23 CB 78 */	mr r3, r25
/* 814A7AD0 | 38 A0 04 00 */	li r5, 0x400
/* 814A7AD4 | 4B FF 53 B1 */	bl Mail_memset
/* 814A7AD8 | 7F 23 CB 78 */	mr r3, r25
/* 814A7ADC | 38 8D 9B DC */	li r4, lbl_81697C1C@sda21
/* 814A7AE0 | 38 A0 03 FE */	li r5, 0x3fe
/* 814A7AE4 | 4B FF 54 CD */	bl Mail_strncat
/* 814A7AE8 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 814A7AEC | 3A F9 00 04 */	addi r23, r25, 0x4
/* 814A7AF0 | 3B 1D 00 88 */	addi r24, r29, 0x88
/* 814A7AF4 | 3A C0 00 00 */	li r22, 0x0
/* 814A7AF8 | 38 03 00 04 */	addi r0, r3, 0x4
/* 814A7AFC | 3B E0 00 04 */	li r31, 0x4
/* 814A7B00 | 90 1D 00 38 */	stw r0, 0x38(r29)
/* 814A7B04 | 3A A0 03 FA */	li r21, 0x3fa
/* 814A7B08 | 3B 20 00 2C */	li r25, 0x2c
/* 814A7B0C | 3B 40 00 0D */	li r26, 0xd
/* 814A7B10 | 3B 60 00 0A */	li r27, 0xa
/* 814A7B14 | 3B 80 00 20 */	li r28, 0x20
/* 814A7B18 | 48 00 00 7C */	b .L_814A7B94
.L_814A7B1C:
/* 814A7B1C | 80 9D 00 04 */	lwz r4, 0x4(r29)
/* 814A7B20 | 7F 03 C3 78 */	mr r3, r24
/* 814A7B24 | 7E E5 BB 78 */	mr r5, r23
/* 814A7B28 | 7E A6 AB 78 */	mr r6, r21
/* 814A7B2C | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814A7B30 | 4B FF FB 69 */	bl SynthesizeAddrStr
/* 814A7B34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A7B38 | 7C 7E 1B 78 */	mr r30, r3
/* 814A7B3C | 40 82 00 64 */	bne .L_814A7BA0
/* 814A7B40 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814A7B44 | 7E A0 A8 50 */	subf r21, r0, r21
/* 814A7B48 | 7E F7 02 14 */	add r23, r23, r0
/* 814A7B4C | 2C 15 00 04 */	cmpwi r21, 0x4
/* 814A7B50 | 7F FF 02 14 */	add r31, r31, r0
/* 814A7B54 | 41 81 00 0C */	bgt .L_814A7B60
/* 814A7B58 | 3B C0 FF F5 */	li r30, -0xb
/* 814A7B5C | 48 00 00 44 */	b .L_814A7BA0
.L_814A7B60:
/* 814A7B60 | 88 7D 00 C8 */	lbz r3, 0xc8(r29)
/* 814A7B64 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814A7B68 | 7C 16 00 00 */	cmpw r22, r0
/* 814A7B6C | 40 80 00 20 */	bge .L_814A7B8C
/* 814A7B70 | 9B 37 00 00 */	stb r25, 0x0(r23)
/* 814A7B74 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 814A7B78 | 3A B5 FF FC */	subi r21, r21, 0x4
/* 814A7B7C | 9B 57 00 01 */	stb r26, 0x1(r23)
/* 814A7B80 | 9B 77 00 02 */	stb r27, 0x2(r23)
/* 814A7B84 | 9B 97 00 03 */	stb r28, 0x3(r23)
/* 814A7B88 | 3A F7 00 04 */	addi r23, r23, 0x4
.L_814A7B8C:
/* 814A7B8C | 3B 18 00 08 */	addi r24, r24, 0x8
/* 814A7B90 | 3A D6 00 01 */	addi r22, r22, 0x1
.L_814A7B94:
/* 814A7B94 | 88 1D 00 C8 */	lbz r0, 0xc8(r29)
/* 814A7B98 | 7C 16 00 00 */	cmpw r22, r0
/* 814A7B9C | 41 80 FF 80 */	blt .L_814A7B1C
.L_814A7BA0:
/* 814A7BA0 | 38 00 00 0D */	li r0, 0xd
/* 814A7BA4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814A7BA8 | 98 17 00 00 */	stb r0, 0x0(r23)
/* 814A7BAC | 38 00 00 0A */	li r0, 0xa
/* 814A7BB0 | 98 17 00 01 */	stb r0, 0x1(r23)
/* 814A7BB4 | 40 82 00 40 */	bne .L_814A7BF4
/* 814A7BB8 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814A7BBC | 38 9F 00 02 */	addi r4, r31, 0x2
/* 814A7BC0 | 80 AD AD C0 */	lwz r5, m_pFile@sda21(r0)
/* 814A7BC4 | 4B FF 68 F1 */	bl NWC24FWrite
/* 814A7BC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A7BCC | 7C 7E 1B 78 */	mr r30, r3
/* 814A7BD0 | 40 82 00 24 */	bne .L_814A7BF4
/* 814A7BD4 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 814A7BD8 | 80 1D 00 38 */	lwz r0, 0x38(r29)
/* 814A7BDC | 7C 7F 1A 14 */	add r3, r31, r3
/* 814A7BE0 | 38 83 00 02 */	addi r4, r3, 0x2
/* 814A7BE4 | 7C 60 20 50 */	subf r3, r0, r4
/* 814A7BE8 | 90 9D 00 08 */	stw r4, 0x8(r29)
/* 814A7BEC | 38 03 FF FE */	subi r0, r3, 0x2
/* 814A7BF0 | 90 1D 00 3C */	stw r0, 0x3c(r29)
.L_814A7BF4:
/* 814A7BF4 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814A7BF8 | 7F C3 F3 78 */	mr r3, r30
/* 814A7BFC | 48 15 18 F9 */	bl _restgpr_21
/* 814A7C00 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814A7C04 | 7C 08 03 A6 */	mtlr r0
/* 814A7C08 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814A7C0C | 4E 80 00 20 */	blr
.endfn WriteToField

# .text:0x1680 | 0x814A7C10 | size: 0x138
.fn WriteDateField, local
/* 814A7C10 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 814A7C14 | 7C 08 02 A6 */	mflr r0
/* 814A7C18 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 814A7C1C | 93 E1 00 4C */	stw r31, 0x4c(r1)
/* 814A7C20 | 7C 7F 1B 78 */	mr r31, r3
/* 814A7C24 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814A7C28 | 93 C1 00 48 */	stw r30, 0x48(r1)
/* 814A7C2C | 93 A1 00 44 */	stw r29, 0x44(r1)
/* 814A7C30 | 4B FF 80 B1 */	bl NWC24Date_Init
/* 814A7C34 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814A7C38 | 4B FE B8 71 */	bl NETGetUniversalCalendar
/* 814A7C3C | 80 61 00 20 */	lwz r3, 0x20(r1)
/* 814A7C40 | 80 E1 00 24 */	lwz r7, 0x24(r1)
/* 814A7C44 | 38 C3 00 01 */	addi r6, r3, 0x1
/* 814A7C48 | 80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 814A7C4C | 54 C0 06 3E */	clrlwi r0, r6, 24
/* 814A7C50 | 80 81 00 18 */	lwz r4, 0x18(r1)
/* 814A7C54 | 80 61 00 14 */	lwz r3, 0x14(r1)
/* 814A7C58 | 28 00 00 0C */	cmplwi r0, 0xc
/* 814A7C5C | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 814A7C60 | B0 E1 00 08 */	sth r7, 0x8(r1)
/* 814A7C64 | 98 C1 00 0A */	stb r6, 0xa(r1)
/* 814A7C68 | 98 A1 00 0B */	stb r5, 0xb(r1)
/* 814A7C6C | 98 81 00 0C */	stb r4, 0xc(r1)
/* 814A7C70 | 98 61 00 0E */	stb r3, 0xe(r1)
/* 814A7C74 | 98 01 00 0D */	stb r0, 0xd(r1)
/* 814A7C78 | 40 81 00 0C */	ble .L_814A7C84
/* 814A7C7C | 38 60 FF E8 */	li r3, -0x18
/* 814A7C80 | 48 00 00 AC */	b .L_814A7D2C
.L_814A7C84:
/* 814A7C84 | 38 7F 00 28 */	addi r3, r31, 0x28
/* 814A7C88 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814A7C8C | 48 00 40 D9 */	bl NWC24iDateToMinutes
/* 814A7C90 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 814A7C94 | 54 00 01 CF */	rlwinm. r0, r0, 0, 7, 7
/* 814A7C98 | 41 82 00 10 */	beq .L_814A7CA8
/* 814A7C9C | 80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 814A7CA0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814A7CA4 | 48 00 41 69 */	bl NWC24iMinutesToDate
.L_814A7CA8:
/* 814A7CA8 | 83 CD AD A0 */	lwz r30, NWC24WorkP_81698DE0@sda21(r0)
/* 814A7CAC | 38 80 00 00 */	li r4, 0x0
/* 814A7CB0 | 38 A0 04 00 */	li r5, 0x400
/* 814A7CB4 | 7F C3 F3 78 */	mr r3, r30
/* 814A7CB8 | 4B FF 51 CD */	bl Mail_memset
/* 814A7CBC | 88 C1 00 0A */	lbz r6, 0xa(r1)
/* 814A7CC0 | 3C 60 81 67 */	lis r3, lbl_8166DE10@ha
/* 814A7CC4 | 3C 80 81 67 */	lis r4, lbl_8166DE40@ha
/* 814A7CC8 | 88 A1 00 0B */	lbz r5, 0xb(r1)
/* 814A7CCC | 38 06 FF FF */	subi r0, r6, 0x1
/* 814A7CD0 | 38 63 DE 10 */	addi r3, r3, lbl_8166DE10@l
/* 814A7CD4 | 54 00 10 3A */	slwi r0, r0, 2
/* 814A7CD8 | A0 E1 00 08 */	lhz r7, 0x8(r1)
/* 814A7CDC | 7C C3 00 2E */	lwzx r6, r3, r0
/* 814A7CE0 | 7F C3 F3 78 */	mr r3, r30
/* 814A7CE4 | 89 01 00 0C */	lbz r8, 0xc(r1)
/* 814A7CE8 | 38 84 DE 40 */	addi r4, r4, lbl_8166DE40@l
/* 814A7CEC | 89 21 00 0E */	lbz r9, 0xe(r1)
/* 814A7CF0 | 89 41 00 0D */	lbz r10, 0xd(r1)
/* 814A7CF4 | 4C C6 31 82 */	crclr cr1eq
/* 814A7CF8 | 4B FF 59 59 */	bl Mail_sprintf
/* 814A7CFC | 7F C3 F3 78 */	mr r3, r30
/* 814A7D00 | 4B FF 50 7D */	bl Mail_strlen
/* 814A7D04 | 7C 7D 1B 78 */	mr r29, r3
/* 814A7D08 | 80 AD AD C0 */	lwz r5, m_pFile@sda21(r0)
/* 814A7D0C | 7F C3 F3 78 */	mr r3, r30
/* 814A7D10 | 7F A4 EB 78 */	mr r4, r29
/* 814A7D14 | 4B FF 67 A1 */	bl NWC24FWrite
/* 814A7D18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A7D1C | 40 82 00 10 */	bne .L_814A7D2C
/* 814A7D20 | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 814A7D24 | 7C 00 EA 14 */	add r0, r0, r29
/* 814A7D28 | 90 1F 00 08 */	stw r0, 0x8(r31)
.L_814A7D2C:
/* 814A7D2C | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 814A7D30 | 83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 814A7D34 | 83 C1 00 48 */	lwz r30, 0x48(r1)
/* 814A7D38 | 83 A1 00 44 */	lwz r29, 0x44(r1)
/* 814A7D3C | 7C 08 03 A6 */	mtlr r0
/* 814A7D40 | 38 21 00 50 */	addi r1, r1, 0x50
/* 814A7D44 | 4E 80 00 20 */	blr
.endfn WriteDateField

# .text:0x17B8 | 0x814A7D48 | size: 0x11C
.fn WriteXWiiAppIdField, local
/* 814A7D48 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814A7D4C | 7C 08 02 A6 */	mflr r0
/* 814A7D50 | 38 80 00 00 */	li r4, 0x0
/* 814A7D54 | 38 A0 04 00 */	li r5, 0x400
/* 814A7D58 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814A7D5C | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 814A7D60 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 814A7D64 | 3B C0 00 00 */	li r30, 0x0
/* 814A7D68 | 93 A1 00 24 */	stw r29, 0x24(r1)
/* 814A7D6C | 7C 7D 1B 78 */	mr r29, r3
/* 814A7D70 | 83 ED AD A0 */	lwz r31, NWC24WorkP_81698DE0@sda21(r0)
/* 814A7D74 | 7F E3 FB 78 */	mr r3, r31
/* 814A7D78 | 4B FF 51 0D */	bl Mail_memset
/* 814A7D7C | 3C 80 81 67 */	lis r4, lbl_8166DE68@ha
/* 814A7D80 | 7F E3 FB 78 */	mr r3, r31
/* 814A7D84 | 38 84 DE 68 */	addi r4, r4, lbl_8166DE68@l
/* 814A7D88 | 4B FF 4F C5 */	bl Mail_strcpy
/* 814A7D8C | 4B FF 85 81 */	bl NWC24IsMsgLibOpenedByTool
/* 814A7D90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A7D94 | 40 82 00 2C */	bne .L_814A7DC0
/* 814A7D98 | 4B FF 7C A9 */	bl NWC24GetAppId
/* 814A7D9C | 3C 03 B7 BF */	subis r0, r3, 0x4841
/* 814A7DA0 | 28 00 45 41 */	cmplwi r0, 0x4541
/* 814A7DA4 | 41 82 00 1C */	beq .L_814A7DC0
/* 814A7DA8 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 814A7DAC | 3C 03 B7 BF */	subis r0, r3, 0x4841
/* 814A7DB0 | 28 00 43 41 */	cmplwi r0, 0x4341
/* 814A7DB4 | 41 82 00 0C */	beq .L_814A7DC0
/* 814A7DB8 | 4B FF 7C 89 */	bl NWC24GetAppId
/* 814A7DBC | 90 7D 00 0C */	stw r3, 0xc(r29)
.L_814A7DC0:
/* 814A7DC0 | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 814A7DC4 | 54 60 07 7B */	rlwinm. r0, r3, 0, 29, 29
/* 814A7DC8 | 41 82 00 08 */	beq .L_814A7DD0
/* 814A7DCC | 63 DE 00 01 */	ori r30, r30, 0x1
.L_814A7DD0:
/* 814A7DD0 | 54 60 07 39 */	rlwinm. r0, r3, 0, 28, 28
/* 814A7DD4 | 41 82 00 08 */	beq .L_814A7DDC
/* 814A7DD8 | 63 DE 00 02 */	ori r30, r30, 0x2
.L_814A7DDC:
/* 814A7DDC | 38 61 00 08 */	addi r3, r1, 0x8
/* 814A7DE0 | 38 80 00 00 */	li r4, 0x0
/* 814A7DE4 | 38 A0 00 10 */	li r5, 0x10
/* 814A7DE8 | 4B FF 50 9D */	bl Mail_memset
/* 814A7DEC | 3C 80 81 67 */	lis r4, lbl_8166DE78@ha
/* 814A7DF0 | 80 DD 00 0C */	lwz r6, 0xc(r29)
/* 814A7DF4 | A0 FD 00 CA */	lhz r7, 0xca(r29)
/* 814A7DF8 | 7F C5 F3 78 */	mr r5, r30
/* 814A7DFC | 38 61 00 08 */	addi r3, r1, 0x8
/* 814A7E00 | 38 84 DE 78 */	addi r4, r4, lbl_8166DE78@l
/* 814A7E04 | 4C C6 31 82 */	crclr cr1eq
/* 814A7E08 | 4B FF 58 49 */	bl Mail_sprintf
/* 814A7E0C | 7F E3 FB 78 */	mr r3, r31
/* 814A7E10 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814A7E14 | 4B FF 51 4D */	bl Mail_strcat
/* 814A7E18 | 7F E3 FB 78 */	mr r3, r31
/* 814A7E1C | 4B FF 4F 61 */	bl Mail_strlen
/* 814A7E20 | 7C 7E 1B 78 */	mr r30, r3
/* 814A7E24 | 80 AD AD C0 */	lwz r5, m_pFile@sda21(r0)
/* 814A7E28 | 7F E3 FB 78 */	mr r3, r31
/* 814A7E2C | 7F C4 F3 78 */	mr r4, r30
/* 814A7E30 | 4B FF 66 85 */	bl NWC24FWrite
/* 814A7E34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A7E38 | 40 82 00 10 */	bne .L_814A7E48
/* 814A7E3C | 80 1D 00 08 */	lwz r0, 0x8(r29)
/* 814A7E40 | 7C 00 F2 14 */	add r0, r0, r30
/* 814A7E44 | 90 1D 00 08 */	stw r0, 0x8(r29)
.L_814A7E48:
/* 814A7E48 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814A7E4C | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 814A7E50 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 814A7E54 | 83 A1 00 24 */	lwz r29, 0x24(r1)
/* 814A7E58 | 7C 08 03 A6 */	mtlr r0
/* 814A7E5C | 38 21 00 30 */	addi r1, r1, 0x30
/* 814A7E60 | 4E 80 00 20 */	blr
.endfn WriteXWiiAppIdField

# .text:0x18D4 | 0x814A7E64 | size: 0x100
.fn WriteXWiiFaceField, local
/* 814A7E64 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814A7E68 | 7C 08 02 A6 */	mflr r0
/* 814A7E6C | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814A7E70 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814A7E74 | 48 15 16 3D */	bl _savegpr_23
/* 814A7E78 | 80 03 00 DC */	lwz r0, 0xdc(r3)
/* 814A7E7C | 7C 77 1B 78 */	mr r23, r3
/* 814A7E80 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A7E84 | 40 82 00 0C */	bne .L_814A7E90
/* 814A7E88 | 38 60 00 00 */	li r3, 0x0
/* 814A7E8C | 48 00 00 C0 */	b .L_814A7F4C
.L_814A7E90:
/* 814A7E90 | 83 8D AD A0 */	lwz r28, NWC24WorkP_81698DE0@sda21(r0)
/* 814A7E94 | 38 80 00 00 */	li r4, 0x0
/* 814A7E98 | 38 A0 04 00 */	li r5, 0x400
/* 814A7E9C | 7F 83 E3 78 */	mr r3, r28
/* 814A7EA0 | 4B FF 4F E5 */	bl Mail_memset
/* 814A7EA4 | 3C 80 81 67 */	lis r4, lbl_8166DE88@ha
/* 814A7EA8 | 7F 83 E3 78 */	mr r3, r28
/* 814A7EAC | 38 84 DE 88 */	addi r4, r4, lbl_8166DE88@l
/* 814A7EB0 | 4B FF 4E 9D */	bl Mail_strcpy
/* 814A7EB4 | 83 77 00 D8 */	lwz r27, 0xd8(r23)
/* 814A7EB8 | 3B 40 00 0A */	li r26, 0xa
/* 814A7EBC | 83 37 00 DC */	lwz r25, 0xdc(r23)
/* 814A7EC0 | 3B A0 00 20 */	li r29, 0x20
/* 814A7EC4 | 3B C0 00 0D */	li r30, 0xd
/* 814A7EC8 | 3B E0 00 0A */	li r31, 0xa
/* 814A7ECC | 48 00 00 54 */	b .L_814A7F20
.L_814A7ED0:
/* 814A7ED0 | 2C 19 00 2A */	cmpwi r25, 0x2a
/* 814A7ED4 | 7F BC D1 AE */	stbx r29, r28, r26
/* 814A7ED8 | 7F 38 CB 78 */	mr r24, r25
/* 814A7EDC | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 814A7EE0 | 40 81 00 08 */	ble .L_814A7EE8
/* 814A7EE4 | 3B 00 00 2A */	li r24, 0x2a
.L_814A7EE8:
/* 814A7EE8 | 7F 63 DB 78 */	mr r3, r27
/* 814A7EEC | 7F 04 C3 78 */	mr r4, r24
/* 814A7EF0 | 7C BC D2 14 */	add r5, r28, r26
/* 814A7EF4 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814A7EF8 | 38 C0 00 4C */	li r6, 0x4c
/* 814A7EFC | 4B FF C6 65 */	bl NWC24Base64Encode
/* 814A7F00 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814A7F04 | 7F 7B C2 14 */	add r27, r27, r24
/* 814A7F08 | 7F 38 C8 50 */	subf r25, r24, r25
/* 814A7F0C | 7F 5A 02 14 */	add r26, r26, r0
/* 814A7F10 | 7F DC D1 AE */	stbx r30, r28, r26
/* 814A7F14 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 814A7F18 | 7F FC D1 AE */	stbx r31, r28, r26
/* 814A7F1C | 3B 5A 00 01 */	addi r26, r26, 0x1
.L_814A7F20:
/* 814A7F20 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 814A7F24 | 41 81 FF AC */	bgt .L_814A7ED0
/* 814A7F28 | 80 AD AD C0 */	lwz r5, m_pFile@sda21(r0)
/* 814A7F2C | 7F 83 E3 78 */	mr r3, r28
/* 814A7F30 | 7F 44 D3 78 */	mr r4, r26
/* 814A7F34 | 4B FF 65 81 */	bl NWC24FWrite
/* 814A7F38 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A7F3C | 40 82 00 10 */	bne .L_814A7F4C
/* 814A7F40 | 80 17 00 08 */	lwz r0, 0x8(r23)
/* 814A7F44 | 7C 00 D2 14 */	add r0, r0, r26
/* 814A7F48 | 90 17 00 08 */	stw r0, 0x8(r23)
.L_814A7F4C:
/* 814A7F4C | 39 61 00 40 */	addi r11, r1, 0x40
/* 814A7F50 | 48 15 15 AD */	bl _restgpr_23
/* 814A7F54 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814A7F58 | 7C 08 03 A6 */	mtlr r0
/* 814A7F5C | 38 21 00 40 */	addi r1, r1, 0x40
/* 814A7F60 | 4E 80 00 20 */	blr
.endfn WriteXWiiFaceField

# .text:0x19D4 | 0x814A7F64 | size: 0x100
.fn WriteXWiiAltNameField, local
/* 814A7F64 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814A7F68 | 7C 08 02 A6 */	mflr r0
/* 814A7F6C | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814A7F70 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814A7F74 | 48 15 15 3D */	bl _savegpr_23
/* 814A7F78 | 80 03 00 E4 */	lwz r0, 0xe4(r3)
/* 814A7F7C | 7C 77 1B 78 */	mr r23, r3
/* 814A7F80 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A7F84 | 40 82 00 0C */	bne .L_814A7F90
/* 814A7F88 | 38 60 00 00 */	li r3, 0x0
/* 814A7F8C | 48 00 00 C0 */	b .L_814A804C
.L_814A7F90:
/* 814A7F90 | 83 8D AD A0 */	lwz r28, NWC24WorkP_81698DE0@sda21(r0)
/* 814A7F94 | 38 80 00 00 */	li r4, 0x0
/* 814A7F98 | 38 A0 04 00 */	li r5, 0x400
/* 814A7F9C | 7F 83 E3 78 */	mr r3, r28
/* 814A7FA0 | 4B FF 4E E5 */	bl Mail_memset
/* 814A7FA4 | 3C 80 81 67 */	lis r4, lbl_8166DE94@ha
/* 814A7FA8 | 7F 83 E3 78 */	mr r3, r28
/* 814A7FAC | 38 84 DE 94 */	addi r4, r4, lbl_8166DE94@l
/* 814A7FB0 | 4B FF 4D 9D */	bl Mail_strcpy
/* 814A7FB4 | 83 77 00 E0 */	lwz r27, 0xe0(r23)
/* 814A7FB8 | 3B 40 00 0E */	li r26, 0xe
/* 814A7FBC | 83 37 00 E4 */	lwz r25, 0xe4(r23)
/* 814A7FC0 | 3B A0 00 20 */	li r29, 0x20
/* 814A7FC4 | 3B C0 00 0D */	li r30, 0xd
/* 814A7FC8 | 3B E0 00 0A */	li r31, 0xa
/* 814A7FCC | 48 00 00 54 */	b .L_814A8020
.L_814A7FD0:
/* 814A7FD0 | 2C 19 00 2A */	cmpwi r25, 0x2a
/* 814A7FD4 | 7F BC D1 AE */	stbx r29, r28, r26
/* 814A7FD8 | 7F 38 CB 78 */	mr r24, r25
/* 814A7FDC | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 814A7FE0 | 40 81 00 08 */	ble .L_814A7FE8
/* 814A7FE4 | 3B 00 00 2A */	li r24, 0x2a
.L_814A7FE8:
/* 814A7FE8 | 7F 63 DB 78 */	mr r3, r27
/* 814A7FEC | 7F 04 C3 78 */	mr r4, r24
/* 814A7FF0 | 7C BC D2 14 */	add r5, r28, r26
/* 814A7FF4 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814A7FF8 | 38 C0 00 4C */	li r6, 0x4c
/* 814A7FFC | 4B FF C5 65 */	bl NWC24Base64Encode
/* 814A8000 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814A8004 | 7F 7B C2 14 */	add r27, r27, r24
/* 814A8008 | 7F 38 C8 50 */	subf r25, r24, r25
/* 814A800C | 7F 5A 02 14 */	add r26, r26, r0
/* 814A8010 | 7F DC D1 AE */	stbx r30, r28, r26
/* 814A8014 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 814A8018 | 7F FC D1 AE */	stbx r31, r28, r26
/* 814A801C | 3B 5A 00 01 */	addi r26, r26, 0x1
.L_814A8020:
/* 814A8020 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 814A8024 | 41 81 FF AC */	bgt .L_814A7FD0
/* 814A8028 | 80 AD AD C0 */	lwz r5, m_pFile@sda21(r0)
/* 814A802C | 7F 83 E3 78 */	mr r3, r28
/* 814A8030 | 7F 44 D3 78 */	mr r4, r26
/* 814A8034 | 4B FF 64 81 */	bl NWC24FWrite
/* 814A8038 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A803C | 40 82 00 10 */	bne .L_814A804C
/* 814A8040 | 80 17 00 08 */	lwz r0, 0x8(r23)
/* 814A8044 | 7C 00 D2 14 */	add r0, r0, r26
/* 814A8048 | 90 17 00 08 */	stw r0, 0x8(r23)
.L_814A804C:
/* 814A804C | 39 61 00 40 */	addi r11, r1, 0x40
/* 814A8050 | 48 15 14 AD */	bl _restgpr_23
/* 814A8054 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814A8058 | 7C 08 03 A6 */	mtlr r0
/* 814A805C | 38 21 00 40 */	addi r1, r1, 0x40
/* 814A8060 | 4E 80 00 20 */	blr
.endfn WriteXWiiAltNameField

# .text:0x1AD4 | 0x814A8064 | size: 0x170
.fn WriteMIMEAttachHeader, local
/* 814A8064 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814A8068 | 7C 08 02 A6 */	mflr r0
/* 814A806C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814A8070 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814A8074 | 48 15 14 41 */	bl _savegpr_24
/* 814A8078 | 7C 7F 1B 78 */	mr r31, r3
/* 814A807C | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814A8080 | 7C 98 23 78 */	mr r24, r4
/* 814A8084 | 38 80 00 00 */	li r4, 0x0
/* 814A8088 | 38 A0 04 00 */	li r5, 0x400
/* 814A808C | 4B FF 4D F9 */	bl Mail_memset
/* 814A8090 | 57 00 10 3A */	slwi r0, r24, 2
/* 814A8094 | 83 6D AD A0 */	lwz r27, NWC24WorkP_81698DE0@sda21(r0)
/* 814A8098 | 7F 9F 02 14 */	add r28, r31, r0
/* 814A809C | 80 7C 00 80 */	lwz r3, 0x80(r28)
/* 814A80A0 | 4B FF DE 41 */	bl NWC24GetMIMETypeStr
/* 814A80A4 | 7C 7A 1B 78 */	mr r26, r3
/* 814A80A8 | 80 7C 00 80 */	lwz r3, 0x80(r28)
/* 814A80AC | 4B FF DE 7D */	bl NWC24iGetMIMETypeSuffix
/* 814A80B0 | 7C 79 1B 78 */	mr r25, r3
/* 814A80B4 | 80 6D 9C 18 */	lwz r3, ContentTxEncA@sda21(r0)
/* 814A80B8 | 4B FF 4C C5 */	bl Mail_strlen
/* 814A80BC | 7C 7C 1B 78 */	mr r28, r3
/* 814A80C0 | 80 6D 9C 14 */	lwz r3, ContentTypeA@sda21(r0)
/* 814A80C4 | 4B FF 4C B9 */	bl Mail_strlen
/* 814A80C8 | 7C 7E 1B 78 */	mr r30, r3
/* 814A80CC | 80 6D 9C 1C */	lwz r3, ContentDispA@sda21(r0)
/* 814A80D0 | 4B FF 4C AD */	bl Mail_strlen
/* 814A80D4 | 7C 7D 1B 78 */	mr r29, r3
/* 814A80D8 | 7F 43 D3 78 */	mr r3, r26
/* 814A80DC | 7F DE E2 14 */	add r30, r30, r28
/* 814A80E0 | 4B FF 4C 9D */	bl Mail_strlen
/* 814A80E4 | 7C 1D F2 14 */	add r0, r29, r30
/* 814A80E8 | 7C 63 02 14 */	add r3, r3, r0
/* 814A80EC | 38 63 00 04 */	addi r3, r3, 0x4
/* 814A80F0 | 2C 03 04 00 */	cmpwi r3, 0x400
/* 814A80F4 | 41 80 00 0C */	blt .L_814A8100
/* 814A80F8 | 38 60 FF F5 */	li r3, -0xb
/* 814A80FC | 48 00 00 C0 */	b .L_814A81BC
.L_814A8100:
/* 814A8100 | 38 18 00 61 */	addi r0, r24, 0x61
/* 814A8104 | 80 8D 9C 14 */	lwz r4, ContentTypeA@sda21(r0)
/* 814A8108 | 80 FF 00 00 */	lwz r7, 0x0(r31)
/* 814A810C | 7F 63 DB 78 */	mr r3, r27
/* 814A8110 | 7F 45 D3 78 */	mr r5, r26
/* 814A8114 | 7F 28 CB 78 */	mr r8, r25
/* 814A8118 | 7C 06 07 74 */	extsb r6, r0
/* 814A811C | 4C C6 31 82 */	crclr cr1eq
/* 814A8120 | 4B FF 55 31 */	bl Mail_sprintf
/* 814A8124 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A8128 | 7C 7E 1B 78 */	mr r30, r3
/* 814A812C | 41 81 00 0C */	bgt .L_814A8138
/* 814A8130 | 38 60 FF FE */	li r3, -0x2
/* 814A8134 | 48 00 00 88 */	b .L_814A81BC
.L_814A8138:
/* 814A8138 | 7F 7B 1A 14 */	add r27, r27, r3
/* 814A813C | 80 8D 9C 18 */	lwz r4, ContentTxEncA@sda21(r0)
/* 814A8140 | 7F 63 DB 78 */	mr r3, r27
/* 814A8144 | 4C C6 31 82 */	crclr cr1eq
/* 814A8148 | 4B FF 55 09 */	bl Mail_sprintf
/* 814A814C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A8150 | 7C 65 1B 78 */	mr r5, r3
/* 814A8154 | 41 81 00 0C */	bgt .L_814A8160
/* 814A8158 | 38 60 FF FE */	li r3, -0x2
/* 814A815C | 48 00 00 60 */	b .L_814A81BC
.L_814A8160:
/* 814A8160 | 38 18 00 61 */	addi r0, r24, 0x61
/* 814A8164 | 80 8D 9C 1C */	lwz r4, ContentDispA@sda21(r0)
/* 814A8168 | 7F 27 CB 78 */	mr r7, r25
/* 814A816C | 7F 3E 2A 14 */	add r25, r30, r5
/* 814A8170 | 80 DF 00 00 */	lwz r6, 0x0(r31)
/* 814A8174 | 7C 7B 1A 14 */	add r3, r27, r3
/* 814A8178 | 7C 05 07 74 */	extsb r5, r0
/* 814A817C | 4C C6 31 82 */	crclr cr1eq
/* 814A8180 | 4B FF 54 D1 */	bl Mail_sprintf
/* 814A8184 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A8188 | 41 81 00 0C */	bgt .L_814A8194
/* 814A818C | 38 60 FF FE */	li r3, -0x2
/* 814A8190 | 48 00 00 2C */	b .L_814A81BC
.L_814A8194:
/* 814A8194 | 7F 39 1A 14 */	add r25, r25, r3
/* 814A8198 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814A819C | 80 AD AD C0 */	lwz r5, m_pFile@sda21(r0)
/* 814A81A0 | 7F 24 CB 78 */	mr r4, r25
/* 814A81A4 | 4B FF 63 11 */	bl NWC24FWrite
/* 814A81A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A81AC | 40 82 00 10 */	bne .L_814A81BC
/* 814A81B0 | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 814A81B4 | 7C 00 CA 14 */	add r0, r0, r25
/* 814A81B8 | 90 1F 00 08 */	stw r0, 0x8(r31)
.L_814A81BC:
/* 814A81BC | 39 61 00 30 */	addi r11, r1, 0x30
/* 814A81C0 | 48 15 13 41 */	bl _restgpr_24
/* 814A81C4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814A81C8 | 7C 08 03 A6 */	mtlr r0
/* 814A81CC | 38 21 00 30 */	addi r1, r1, 0x30
/* 814A81D0 | 4E 80 00 20 */	blr
.endfn WriteMIMEAttachHeader

# .text:0x1C44 | 0x814A81D4 | size: 0x134
.fn WriteContentTypeField, local
/* 814A81D4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814A81D8 | 7C 08 02 A6 */	mflr r0
/* 814A81DC | 38 80 00 00 */	li r4, 0x0
/* 814A81E0 | 38 A0 04 00 */	li r5, 0x400
/* 814A81E4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814A81E8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814A81EC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814A81F0 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814A81F4 | 3B A0 00 00 */	li r29, 0x0
/* 814A81F8 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814A81FC | 7C 7C 1B 78 */	mr r28, r3
/* 814A8200 | 83 ED AD A0 */	lwz r31, NWC24WorkP_81698DE0@sda21(r0)
/* 814A8204 | 7F E3 FB 78 */	mr r3, r31
/* 814A8208 | 4B FF 4C 7D */	bl Mail_memset
/* 814A820C | 80 7C 00 60 */	lwz r3, 0x60(r28)
/* 814A8210 | 4B FF DD 61 */	bl NWC24GetCharsetStr
/* 814A8214 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A8218 | 7C 7E 1B 78 */	mr r30, r3
/* 814A821C | 41 82 00 44 */	beq .L_814A8260
/* 814A8220 | 80 8D 9C 20 */	lwz r4, ContentTypeTP@sda21(r0)
/* 814A8224 | 7F E3 FB 78 */	mr r3, r31
/* 814A8228 | 7F C5 F3 78 */	mr r5, r30
/* 814A822C | 4C C6 31 82 */	crclr cr1eq
/* 814A8230 | 4B FF 54 21 */	bl Mail_sprintf
/* 814A8234 | 80 9C 00 08 */	lwz r4, 0x8(r28)
/* 814A8238 | 7F C3 F3 78 */	mr r3, r30
/* 814A823C | 38 04 00 22 */	addi r0, r4, 0x22
/* 814A8240 | 90 1C 00 50 */	stw r0, 0x50(r28)
/* 814A8244 | 4B FF 4B 39 */	bl Mail_strlen
/* 814A8248 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814A824C | 7F E3 FB 78 */	mr r3, r31
/* 814A8250 | 90 1C 00 54 */	stw r0, 0x54(r28)
/* 814A8254 | 4B FF 4B 29 */	bl Mail_strlen
/* 814A8258 | 7C 7D 1B 78 */	mr r29, r3
/* 814A825C | 7F FF 1A 14 */	add r31, r31, r3
.L_814A8260:
/* 814A8260 | 80 7C 00 64 */	lwz r3, 0x64(r28)
/* 814A8264 | 4B FF DD C1 */	bl NWC24GetEncodingStr
/* 814A8268 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A826C | 7C 7E 1B 78 */	mr r30, r3
/* 814A8270 | 41 82 00 44 */	beq .L_814A82B4
/* 814A8274 | 80 8D 9C 24 */	lwz r4, ContentTxEncT@sda21(r0)
/* 814A8278 | 7F E3 FB 78 */	mr r3, r31
/* 814A827C | 7F C5 F3 78 */	mr r5, r30
/* 814A8280 | 4C C6 31 82 */	crclr cr1eq
/* 814A8284 | 4B FF 53 CD */	bl Mail_sprintf
/* 814A8288 | 80 1C 00 08 */	lwz r0, 0x8(r28)
/* 814A828C | 7F C3 F3 78 */	mr r3, r30
/* 814A8290 | 7C 9D 02 14 */	add r4, r29, r0
/* 814A8294 | 38 04 00 1B */	addi r0, r4, 0x1b
/* 814A8298 | 90 1C 00 58 */	stw r0, 0x58(r28)
/* 814A829C | 4B FF 4A E1 */	bl Mail_strlen
/* 814A82A0 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814A82A4 | 7F E3 FB 78 */	mr r3, r31
/* 814A82A8 | 90 1C 00 5C */	stw r0, 0x5c(r28)
/* 814A82AC | 4B FF 4A D1 */	bl Mail_strlen
/* 814A82B0 | 7F BD 1A 14 */	add r29, r29, r3
.L_814A82B4:
/* 814A82B4 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814A82B8 | 40 82 00 0C */	bne .L_814A82C4
/* 814A82BC | 38 60 00 00 */	li r3, 0x0
/* 814A82C0 | 48 00 00 28 */	b .L_814A82E8
.L_814A82C4:
/* 814A82C4 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814A82C8 | 7F A4 EB 78 */	mr r4, r29
/* 814A82CC | 80 AD AD C0 */	lwz r5, m_pFile@sda21(r0)
/* 814A82D0 | 4B FF 61 E5 */	bl NWC24FWrite
/* 814A82D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A82D8 | 40 82 00 10 */	bne .L_814A82E8
/* 814A82DC | 80 1C 00 08 */	lwz r0, 0x8(r28)
/* 814A82E0 | 7C 00 EA 14 */	add r0, r0, r29
/* 814A82E4 | 90 1C 00 08 */	stw r0, 0x8(r28)
.L_814A82E8:
/* 814A82E8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814A82EC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814A82F0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814A82F4 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814A82F8 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814A82FC | 7C 08 03 A6 */	mtlr r0
/* 814A8300 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814A8304 | 4E 80 00 20 */	blr
.endfn WriteContentTypeField

# .text:0x1D78 | 0x814A8308 | size: 0xC0
.fn WritePlainText, local
/* 814A8308 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814A830C | 7C 08 02 A6 */	mflr r0
/* 814A8310 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814A8314 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814A8318 | 7C 7F 1B 78 */	mr r31, r3
/* 814A831C | 80 83 00 4C */	lwz r4, 0x4c(r3)
/* 814A8320 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814A8324 | 40 82 00 0C */	bne .L_814A8330
/* 814A8328 | 38 60 FF FB */	li r3, -0x5
/* 814A832C | 48 00 00 88 */	b .L_814A83B4
.L_814A8330:
/* 814A8330 | 80 03 00 64 */	lwz r0, 0x64(r3)
/* 814A8334 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814A8338 | 41 82 00 38 */	beq .L_814A8370
/* 814A833C | 40 80 00 10 */	bge .L_814A834C
/* 814A8340 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A8344 | 40 80 00 14 */	bge .L_814A8358
/* 814A8348 | 48 00 00 48 */	b .L_814A8390
.L_814A834C:
/* 814A834C | 2C 00 00 04 */	cmpwi r0, 0x4
/* 814A8350 | 40 80 00 40 */	bge .L_814A8390
/* 814A8354 | 48 00 00 2C */	b .L_814A8380
.L_814A8358:
/* 814A8358 | 80 63 00 48 */	lwz r3, 0x48(r3)
/* 814A835C | 80 AD AD C0 */	lwz r5, m_pFile@sda21(r0)
/* 814A8360 | 4B FF 61 55 */	bl NWC24FWrite
/* 814A8364 | 80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 814A8368 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814A836C | 48 00 00 28 */	b .L_814A8394
.L_814A8370:
/* 814A8370 | 80 63 00 48 */	lwz r3, 0x48(r3)
/* 814A8374 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814A8378 | 48 00 00 51 */	bl WriteBase64Data
/* 814A837C | 48 00 00 18 */	b .L_814A8394
.L_814A8380:
/* 814A8380 | 80 63 00 48 */	lwz r3, 0x48(r3)
/* 814A8384 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814A8388 | 48 00 01 A5 */	bl WriteQPData
/* 814A838C | 48 00 00 08 */	b .L_814A8394
.L_814A8390:
/* 814A8390 | 38 60 FF FD */	li r3, -0x3
.L_814A8394:
/* 814A8394 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A8398 | 40 82 00 1C */	bne .L_814A83B4
/* 814A839C | 80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 814A83A0 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 814A83A4 | 90 1F 00 E8 */	stw r0, 0xe8(r31)
/* 814A83A8 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814A83AC | 7C 04 02 14 */	add r0, r4, r0
/* 814A83B0 | 90 1F 00 08 */	stw r0, 0x8(r31)
.L_814A83B4:
/* 814A83B4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814A83B8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814A83BC | 7C 08 03 A6 */	mtlr r0
/* 814A83C0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814A83C4 | 4E 80 00 20 */	blr
.endfn WritePlainText

# .text:0x1E38 | 0x814A83C8 | size: 0x164
.fn WriteBase64Data, local
/* 814A83C8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814A83CC | 7C 08 02 A6 */	mflr r0
/* 814A83D0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814A83D4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814A83D8 | 48 15 10 DD */	bl _savegpr_24
/* 814A83DC | 83 ED AD A0 */	lwz r31, NWC24WorkP_81698DE0@sda21(r0)
/* 814A83E0 | 7C 79 1B 78 */	mr r25, r3
/* 814A83E4 | 7C 98 23 78 */	mr r24, r4
/* 814A83E8 | 7C BD 2B 78 */	mr r29, r5
/* 814A83EC | 3B C0 00 00 */	li r30, 0x0
/* 814A83F0 | 38 60 00 00 */	li r3, 0x0
/* 814A83F4 | 3B 40 00 0D */	li r26, 0xd
/* 814A83F8 | 3B 60 00 0A */	li r27, 0xa
/* 814A83FC | 3B 80 00 00 */	li r28, 0x0
/* 814A8400 | 48 00 00 78 */	b .L_814A8478
.L_814A8404:
/* 814A8404 | 7F E3 FB 78 */	mr r3, r31
/* 814A8408 | 38 80 00 00 */	li r4, 0x0
/* 814A840C | 38 A0 04 00 */	li r5, 0x400
/* 814A8410 | 4B FF 4A 75 */	bl Mail_memset
/* 814A8414 | 7F 23 CB 78 */	mr r3, r25
/* 814A8418 | 7F E5 FB 78 */	mr r5, r31
/* 814A841C | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814A8420 | 38 80 00 39 */	li r4, 0x39
/* 814A8424 | 38 C0 00 4C */	li r6, 0x4c
/* 814A8428 | 4B FF C1 39 */	bl NWC24Base64Encode
/* 814A842C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A8430 | 40 82 00 50 */	bne .L_814A8480
/* 814A8434 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814A8438 | 7F E3 FB 78 */	mr r3, r31
/* 814A843C | 7F 5F 21 AE */	stbx r26, r31, r4
/* 814A8440 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814A8444 | 38 04 00 01 */	addi r0, r4, 0x1
/* 814A8448 | 7F 7F 21 AE */	stbx r27, r31, r4
/* 814A844C | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814A8450 | 7F 9F 01 AE */	stbx r28, r31, r0
/* 814A8454 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814A8458 | 80 AD AD C0 */	lwz r5, m_pFile@sda21(r0)
/* 814A845C | 4B FF 60 59 */	bl NWC24FWrite
/* 814A8460 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A8464 | 40 82 00 1C */	bne .L_814A8480
/* 814A8468 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814A846C | 3B 39 00 39 */	addi r25, r25, 0x39
/* 814A8470 | 3B 18 FF C7 */	subi r24, r24, 0x39
/* 814A8474 | 7F DE 02 14 */	add r30, r30, r0
.L_814A8478:
/* 814A8478 | 2C 18 00 39 */	cmpwi r24, 0x39
/* 814A847C | 40 80 FF 88 */	bge .L_814A8404
.L_814A8480:
/* 814A8480 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A8484 | 40 82 00 8C */	bne .L_814A8510
/* 814A8488 | 7F E3 FB 78 */	mr r3, r31
/* 814A848C | 38 80 00 00 */	li r4, 0x0
/* 814A8490 | 38 A0 04 00 */	li r5, 0x400
/* 814A8494 | 4B FF 49 F1 */	bl Mail_memset
/* 814A8498 | 7F 23 CB 78 */	mr r3, r25
/* 814A849C | 7F 04 C3 78 */	mr r4, r24
/* 814A84A0 | 7F E5 FB 78 */	mr r5, r31
/* 814A84A4 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814A84A8 | 38 C0 00 4C */	li r6, 0x4c
/* 814A84AC | 4B FF C0 B5 */	bl NWC24Base64Encode
/* 814A84B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A84B4 | 40 82 00 5C */	bne .L_814A8510
/* 814A84B8 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814A84BC | 39 00 00 0D */	li r8, 0xd
/* 814A84C0 | 38 E0 00 0A */	li r7, 0xa
/* 814A84C4 | 38 00 00 00 */	li r0, 0x0
/* 814A84C8 | 7D 1F 19 AE */	stbx r8, r31, r3
/* 814A84CC | 38 83 00 01 */	addi r4, r3, 0x1
/* 814A84D0 | 38 C4 00 01 */	addi r6, r4, 0x1
/* 814A84D4 | 7F E3 FB 78 */	mr r3, r31
/* 814A84D8 | 7C FF 21 AE */	stbx r7, r31, r4
/* 814A84DC | 38 A6 00 01 */	addi r5, r6, 0x1
/* 814A84E0 | 38 85 00 01 */	addi r4, r5, 0x1
/* 814A84E4 | 7D 1F 31 AE */	stbx r8, r31, r6
/* 814A84E8 | 7C FF 29 AE */	stbx r7, r31, r5
/* 814A84EC | 90 81 00 08 */	stw r4, 0x8(r1)
/* 814A84F0 | 7C 1F 21 AE */	stbx r0, r31, r4
/* 814A84F4 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814A84F8 | 80 AD AD C0 */	lwz r5, m_pFile@sda21(r0)
/* 814A84FC | 4B FF 5F B9 */	bl NWC24FWrite
/* 814A8500 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A8504 | 40 82 00 0C */	bne .L_814A8510
/* 814A8508 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814A850C | 7F DE 02 14 */	add r30, r30, r0
.L_814A8510:
/* 814A8510 | 93 DD 00 00 */	stw r30, 0x0(r29)
/* 814A8514 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814A8518 | 48 15 0F E9 */	bl _restgpr_24
/* 814A851C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814A8520 | 7C 08 03 A6 */	mtlr r0
/* 814A8524 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814A8528 | 4E 80 00 20 */	blr
.endfn WriteBase64Data

# .text:0x1F9C | 0x814A852C | size: 0xF0
.fn WriteQPData, local
/* 814A852C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814A8530 | 7C 08 02 A6 */	mflr r0
/* 814A8534 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814A8538 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814A853C | 48 15 0F 85 */	bl _savegpr_27
/* 814A8540 | 83 ED AD A0 */	lwz r31, NWC24WorkP_81698DE0@sda21(r0)
/* 814A8544 | 7C 7E 1B 78 */	mr r30, r3
/* 814A8548 | 7C 9D 23 78 */	mr r29, r4
/* 814A854C | 7C BB 2B 78 */	mr r27, r5
/* 814A8550 | 3B 80 00 00 */	li r28, 0x0
/* 814A8554 | 38 60 00 00 */	li r3, 0x0
/* 814A8558 | 48 00 00 A0 */	b .L_814A85F8
.L_814A855C:
/* 814A855C | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814A8560 | 40 81 00 30 */	ble .L_814A8590
/* 814A8564 | 7F E3 FB 78 */	mr r3, r31
/* 814A8568 | 38 8D 9C 28 */	li r4, lbl_81697C68@sda21
/* 814A856C | 38 A0 00 03 */	li r5, 0x3
/* 814A8570 | 4B FF 48 61 */	bl Mail_memcpy
/* 814A8574 | 80 AD AD C0 */	lwz r5, m_pFile@sda21(r0)
/* 814A8578 | 7F E3 FB 78 */	mr r3, r31
/* 814A857C | 38 80 00 03 */	li r4, 0x3
/* 814A8580 | 4B FF 5F 35 */	bl NWC24FWrite
/* 814A8584 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A8588 | 40 82 00 78 */	bne .L_814A8600
/* 814A858C | 3B 9C 00 03 */	addi r28, r28, 0x3
.L_814A8590:
/* 814A8590 | 7F E3 FB 78 */	mr r3, r31
/* 814A8594 | 38 80 00 00 */	li r4, 0x0
/* 814A8598 | 38 A0 04 00 */	li r5, 0x400
/* 814A859C | 4B FF 48 E9 */	bl Mail_memset
/* 814A85A0 | 7F E3 FB 78 */	mr r3, r31
/* 814A85A4 | 7F C6 F3 78 */	mr r6, r30
/* 814A85A8 | 7F A7 EB 78 */	mr r7, r29
/* 814A85AC | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814A85B0 | 39 01 00 0C */	addi r8, r1, 0xc
/* 814A85B4 | 38 80 04 00 */	li r4, 0x400
/* 814A85B8 | 4B FF C8 A1 */	bl NWC24EncodeQuotedPrintable
/* 814A85BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A85C0 | 41 82 00 0C */	beq .L_814A85CC
/* 814A85C4 | 2C 03 FF F8 */	cmpwi r3, -0x8
/* 814A85C8 | 40 82 00 38 */	bne .L_814A8600
.L_814A85CC:
/* 814A85CC | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814A85D0 | 7F E3 FB 78 */	mr r3, r31
/* 814A85D4 | 80 AD AD C0 */	lwz r5, m_pFile@sda21(r0)
/* 814A85D8 | 4B FF 5E DD */	bl NWC24FWrite
/* 814A85DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A85E0 | 40 82 00 20 */	bne .L_814A8600
/* 814A85E4 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814A85E8 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814A85EC | 7F DE 22 14 */	add r30, r30, r4
/* 814A85F0 | 7F A4 E8 50 */	subf r29, r4, r29
/* 814A85F4 | 7F 9C 02 14 */	add r28, r28, r0
.L_814A85F8:
/* 814A85F8 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814A85FC | 41 81 FF 60 */	bgt .L_814A855C
.L_814A8600:
/* 814A8600 | 93 9B 00 00 */	stw r28, 0x0(r27)
/* 814A8604 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814A8608 | 48 15 0F 05 */	bl _restgpr_27
/* 814A860C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814A8610 | 7C 08 03 A6 */	mtlr r0
/* 814A8614 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814A8618 | 4E 80 00 20 */	blr
.endfn WriteQPData

# 0x8166DCD0..0x8166DF78 | size: 0x2A8
.data
.balign 8

# .data:0x0 | 0x8166DCD0 | size: 0x128
.obj lbl_8166DCD0, global
	.4byte 0x4D657373
	.4byte 0x6167652D
	.4byte 0x49643A20
	.4byte 0x3C000000
	.4byte 0x25303558
	.4byte 0x25303858
	.4byte 0x25303858
	.4byte 0x25303858
	.4byte 0x00000000
	.4byte 0x5375626A
	.4byte 0x6563743A
	.4byte 0x20000000
	.4byte 0x582D5769
	.4byte 0x692D436D
	.4byte 0x643A2025
	.4byte 0x3038580D
	.4byte 0x0A000000
	.4byte 0x582D5769
	.4byte 0x692D5461
	.4byte 0x673A2025
	.4byte 0x3038580D
	.4byte 0x0A000000
	.4byte 0x582D5769
	.4byte 0x692D4457
	.4byte 0x4349643A
	.4byte 0x20253038
	.4byte 0x580D0A00
	.4byte 0x582D5769
	.4byte 0x692D4963
	.4byte 0x6F6E4E65
	.4byte 0x773A2025
	.4byte 0x3038580D
	.4byte 0x0A000000
	.4byte 0x582D5769
	.4byte 0x692D4D42
	.4byte 0x2D4E6F52
	.4byte 0x65706C79
	.4byte 0x3A202D0D
	.4byte 0x0A000000
	.4byte 0x582D5769
	.4byte 0x692D4D42
	.4byte 0x2D526567
	.4byte 0x44617465
	.4byte 0x3A202530
	.4byte 0x34580D0A
	.4byte 0x00000000
	.4byte 0x582D5769
	.4byte 0x692D4D42
	.4byte 0x2D44656C
	.4byte 0x61793A20
	.4byte 0x25303258
	.4byte 0x0D0A0000
	.4byte 0x426F756E
	.4byte 0x64617279
	.4byte 0x2D4E5743
	.4byte 0x32342D25
	.4byte 0x30385825
	.4byte 0x30355800
	.4byte 0x4D494D45
	.4byte 0x2D566572
	.4byte 0x73696F6E
	.4byte 0x3A20312E
	.4byte 0x300D0A00
	.4byte 0x436F6E74
	.4byte 0x656E742D
	.4byte 0x54797065
	.4byte 0x3A206D75
	.4byte 0x6C746970
	.4byte 0x6172742F
	.4byte 0x6D697865
	.4byte 0x643B0D0A
	.4byte 0x20626F75
	.4byte 0x6E646172
	.4byte 0x793D2200
.endobj lbl_8166DCD0

# .data:0x128 | 0x8166DDF8 | size: 0xC
.obj lbl_8166DDF8, global
	.string "MAIL FROM: "
.endobj lbl_8166DDF8

# .data:0x134 | 0x8166DE04 | size: 0xC
.obj lbl_8166DE04, global
	.4byte 0x52435054
	.4byte 0x20544F3A
	.4byte 0x20000000
.endobj lbl_8166DE04

# .data:0x140 | 0x8166DE10 | size: 0x30
.obj lbl_8166DE10, global
	.4byte lbl_81697C24
	.4byte lbl_81697C28
	.4byte lbl_81697C2C
	.4byte lbl_81697C30
	.4byte lbl_81697C34
	.4byte lbl_81697C38
	.4byte lbl_81697C3C
	.4byte lbl_81697C40
	.4byte lbl_81697C44
	.4byte lbl_81697C48
	.4byte lbl_81697C4C
	.4byte lbl_81697C50
.endobj lbl_8166DE10

# .data:0x170 | 0x8166DE40 | size: 0x28
.obj lbl_8166DE40, global
	.string "Date: %02d %s %d %02d:%02d:%02d -0000\r\n"
.endobj lbl_8166DE40

# .data:0x198 | 0x8166DE68 | size: 0x10
.obj lbl_8166DE68, global
	.4byte 0x582D5769
	.4byte 0x692D4170
	.4byte 0x7049643A
	.4byte 0x20000000
.endobj lbl_8166DE68

# .data:0x1A8 | 0x8166DE78 | size: 0x10
.obj lbl_8166DE78, global
	.4byte 0x25642D25
	.4byte 0x3038582D
	.4byte 0x25303458
	.4byte 0x0D0A0000
.endobj lbl_8166DE78

# .data:0x1B8 | 0x8166DE88 | size: 0xC
.obj lbl_8166DE88, global
	.4byte 0x582D5769
	.4byte 0x69466163
	.4byte 0x653A0000
.endobj lbl_8166DE88

# .data:0x1C4 | 0x8166DE94 | size: 0x10
.obj lbl_8166DE94, global
	.4byte 0x582D5769
	.4byte 0x692D416C
	.4byte 0x744E616D
	.4byte 0x653A0000
.endobj lbl_8166DE94

# .data:0x1D4 | 0x8166DEA4 | size: 0x28
.obj lbl_8166DEA4, global
	.4byte 0x436F6E74
	.4byte 0x656E742D
	.4byte 0x54797065
	.4byte 0x3A202573
	.4byte 0x3B0D0A20
	.4byte 0x6E616D65
	.4byte 0x3D256325
	.4byte 0x3037642E
	.4byte 0x25730D0A
	.4byte 0x00000000
.endobj lbl_8166DEA4

# .data:0x1FC | 0x8166DECC | size: 0x24
.obj lbl_8166DECC, global
	.string "Content-Transfer-Encoding: base64\r\n"
.endobj lbl_8166DECC

# .data:0x220 | 0x8166DEF0 | size: 0x3C
.obj lbl_8166DEF0, global
	.4byte 0x436F6E74
	.4byte 0x656E742D
	.4byte 0x44697370
	.4byte 0x6F736974
	.4byte 0x696F6E3A
	.4byte 0x20617474
	.4byte 0x6163686D
	.4byte 0x656E743B
	.4byte 0x0D0A2066
	.4byte 0x696C656E
	.4byte 0x616D653D
	.4byte 0x25632530
	.4byte 0x37642E25
	.4byte 0x730D0A0D
	.4byte 0x0A000000
.endobj lbl_8166DEF0

# .data:0x25C | 0x8166DF2C | size: 0x28
.obj lbl_8166DF2C, global
	.4byte 0x436F6E74
	.4byte 0x656E742D
	.4byte 0x54797065
	.4byte 0x3A207465
	.4byte 0x78742F70
	.4byte 0x6C61696E
	.4byte 0x3B206368
	.4byte 0x61727365
	.4byte 0x743D2573
	.4byte 0x0D0A0000
.endobj lbl_8166DF2C

# .data:0x284 | 0x8166DF54 | size: 0x24
.obj lbl_8166DF54, global
	.4byte 0x436F6E74
	.4byte 0x656E742D
	.4byte 0x5472616E
	.4byte 0x73666572
	.4byte 0x2D456E63
	.4byte 0x6F64696E
	.4byte 0x673A2025
	.4byte 0x730D0A0D
	.4byte 0x0A000000
.endobj lbl_8166DF54

# 0x81697BE0..0x81697C70 | size: 0x90
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697BE0 | size: 0x8
.obj lbl_81697BE0, global
	.4byte 0x44415441
	.4byte 0x0D0A0000
.endobj lbl_81697BE0

# .sdata:0x8 | 0x81697BE8 | size: 0x4
.obj lbl_81697BE8, global
	.string ">\r\n"
.endobj lbl_81697BE8

# .sdata:0xC | 0x81697BEC | size: 0x4
.obj lbl_81697BEC, global
	.4byte 0x0D0A0000
.endobj lbl_81697BEC

# .sdata:0x10 | 0x81697BF0 | size: 0x4
.obj lbl_81697BF0, global
	.string "\"\r\n"
.endobj lbl_81697BF0

# .sdata:0x14 | 0x81697BF4 | size: 0x8
.obj lbl_81697BF4, global
	.4byte 0x0D0A2D2D
	.4byte 0x25730000
.endobj lbl_81697BF4

# .sdata:0x1C | 0x81697BFC | size: 0x4
.obj lbl_81697BFC, global
	.4byte 0x0D0A0000
.endobj lbl_81697BFC

# .sdata:0x20 | 0x81697C00 | size: 0x8
.obj lbl_81697C00, global
	.4byte 0x2D2D0D0A
	.4byte 0x00000000
.endobj lbl_81697C00

# .sdata:0x28 | 0x81697C08 | size: 0x8
.obj lbl_81697C08, global
	.4byte 0x25632573
	.4byte 0x25730000
.endobj lbl_81697C08

# .sdata:0x30 | 0x81697C10 | size: 0x4
.obj lbl_81697C10, global
	.4byte 0x25730000
.endobj lbl_81697C10

# .sdata:0x34 | 0x81697C14 | size: 0x8
.obj lbl_81697C14, global
	.4byte 0x46726F6D
	.4byte 0x3A200000
.endobj lbl_81697C14

# .sdata:0x3C | 0x81697C1C | size: 0x8
.obj lbl_81697C1C, global
	.4byte 0x546F3A20
	.4byte 0x00000000
.endobj lbl_81697C1C

# .sdata:0x44 | 0x81697C24 | size: 0x4
.obj lbl_81697C24, global
	.string "Jan"
.endobj lbl_81697C24

# .sdata:0x48 | 0x81697C28 | size: 0x4
.obj lbl_81697C28, global
	.string "Feb"
.endobj lbl_81697C28

# .sdata:0x4C | 0x81697C2C | size: 0x4
.obj lbl_81697C2C, global
	.string "Mar"
.endobj lbl_81697C2C

# .sdata:0x50 | 0x81697C30 | size: 0x4
.obj lbl_81697C30, global
	.string "Apr"
.endobj lbl_81697C30

# .sdata:0x54 | 0x81697C34 | size: 0x4
.obj lbl_81697C34, global
	.string "May"
.endobj lbl_81697C34

# .sdata:0x58 | 0x81697C38 | size: 0x4
.obj lbl_81697C38, global
	.string "Jun"
.endobj lbl_81697C38

# .sdata:0x5C | 0x81697C3C | size: 0x4
.obj lbl_81697C3C, global
	.string "Jul"
.endobj lbl_81697C3C

# .sdata:0x60 | 0x81697C40 | size: 0x4
.obj lbl_81697C40, global
	.string "Aug"
.endobj lbl_81697C40

# .sdata:0x64 | 0x81697C44 | size: 0x4
.obj lbl_81697C44, global
	.string "Sep"
.endobj lbl_81697C44

# .sdata:0x68 | 0x81697C48 | size: 0x4
.obj lbl_81697C48, global
	.string "Oct"
.endobj lbl_81697C48

# .sdata:0x6C | 0x81697C4C | size: 0x4
.obj lbl_81697C4C, global
	.string "Nov"
.endobj lbl_81697C4C

# .sdata:0x70 | 0x81697C50 | size: 0x4
.obj lbl_81697C50, global
	.string "Dec"
.endobj lbl_81697C50

# .sdata:0x74 | 0x81697C54 | size: 0x4
.obj ContentTypeA, global
	.4byte lbl_8166DEA4
.endobj ContentTypeA

# .sdata:0x78 | 0x81697C58 | size: 0x4
.obj ContentTxEncA, global
	.4byte lbl_8166DECC
.endobj ContentTxEncA

# .sdata:0x7C | 0x81697C5C | size: 0x4
.obj ContentDispA, global
	.4byte lbl_8166DEF0
.endobj ContentDispA

# .sdata:0x80 | 0x81697C60 | size: 0x4
.obj ContentTypeTP, global
	.4byte lbl_8166DF2C
.endobj ContentTypeTP

# .sdata:0x84 | 0x81697C64 | size: 0x4
.obj ContentTxEncT, global
	.4byte lbl_8166DF54
.endobj ContentTxEncT

# .sdata:0x88 | 0x81697C68 | size: 0x8
.obj lbl_81697C68, global
	.4byte 0x3D0D0A00
	.4byte 0x00000000
.endobj lbl_81697C68

# 0x81698E00..0x81698E08 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698E00 | size: 0x8
.obj m_pFile, local
	.skip 0x8
.endobj m_pFile
