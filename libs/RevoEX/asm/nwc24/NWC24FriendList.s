.include "macros.inc"
.file "NWC24FriendList.c"

# 0x814AC6A8..0x814ADCF8 | size: 0x1650
.text
.balign 4

# .text:0x0 | 0x814AC6A8 | size: 0xA4
.fn NWC24ReadFriendInfo, global
/* 814AC6A8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814AC6AC | 7C 08 02 A6 */	mflr r0
/* 814AC6B0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814AC6B4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814AC6B8 | 7C 9F 23 78 */	mr r31, r4
/* 814AC6BC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814AC6C0 | 7C 7E 1B 78 */	mr r30, r3
/* 814AC6C4 | 48 00 11 CD */	bl NWC24iReadFriendInfoRaw
/* 814AC6C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AC6CC | 41 82 00 08 */	beq .L_814AC6D4
/* 814AC6D0 | 48 00 00 64 */	b .L_814AC734
.L_814AC6D4:
/* 814AC6D4 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 814AC6D8 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814AC6DC | 40 82 00 14 */	bne .L_814AC6F0
/* 814AC6E0 | 38 7E 00 48 */	addi r3, r30, 0x48
/* 814AC6E4 | 38 80 00 00 */	li r4, 0x0
/* 814AC6E8 | 38 A0 00 F8 */	li r5, 0xf8
/* 814AC6EC | 4B FF 07 99 */	bl Mail_memset
.L_814AC6F0:
/* 814AC6F0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814AC6F4 | 48 00 12 B5 */	bl GetCachedFLHeader
/* 814AC6F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AC6FC | 41 82 00 08 */	beq .L_814AC704
/* 814AC700 | 48 00 00 20 */	b .L_814AC720
.L_814AC704:
/* 814AC704 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814AC708 | 57 E3 E8 FA */	rlwinm r3, r31, 29, 3, 29
/* 814AC70C | 57 E0 06 FE */	clrlwi r0, r31, 27
/* 814AC710 | 7C 64 1A 14 */	add r3, r4, r3
/* 814AC714 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 814AC718 | 7C 60 04 30 */	srw r0, r3, r0
/* 814AC71C | 54 03 07 FE */	clrlwi r3, r0, 31
.L_814AC720:
/* 814AC720 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 814AC724 | 40 82 00 0C */	bne .L_814AC730
/* 814AC728 | 38 00 00 02 */	li r0, 0x2
/* 814AC72C | 90 1E 00 04 */	stw r0, 0x4(r30)
.L_814AC730:
/* 814AC730 | 38 60 00 00 */	li r3, 0x0
.L_814AC734:
/* 814AC734 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814AC738 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814AC73C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814AC740 | 7C 08 03 A6 */	mtlr r0
/* 814AC744 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814AC748 | 4E 80 00 20 */	blr
.endfn NWC24ReadFriendInfo

# .text:0xA4 | 0x814AC74C | size: 0x458
.fn NWC24WriteFriendInfo, global
/* 814AC74C | 94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 814AC750 | 7C 08 02 A6 */	mflr r0
/* 814AC754 | 90 01 00 D4 */	stw r0, 0xd4(r1)
/* 814AC758 | 39 61 00 D0 */	addi r11, r1, 0xd0
/* 814AC75C | 48 14 CD 59 */	bl _savegpr_24
/* 814AC760 | 7C 7B 1B 78 */	mr r27, r3
/* 814AC764 | 7C 9C 23 78 */	mr r28, r4
/* 814AC768 | 4B FF 3B 91 */	bl NWC24IsMsgLibOpened
/* 814AC76C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AC770 | 40 82 00 18 */	bne .L_814AC788
/* 814AC774 | 4B FF 3B 99 */	bl NWC24IsMsgLibOpenedByTool
/* 814AC778 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AC77C | 40 82 00 0C */	bne .L_814AC788
/* 814AC780 | 38 60 FF F7 */	li r3, -0x9
/* 814AC784 | 48 00 04 08 */	b .L_814ACB8C
.L_814AC788:
/* 814AC788 | 57 60 06 FF */	clrlwi. r0, r27, 27
/* 814AC78C | 41 82 00 0C */	beq .L_814AC798
/* 814AC790 | 38 60 FF E9 */	li r3, -0x17
/* 814AC794 | 48 00 03 F8 */	b .L_814ACB8C
.L_814AC798:
/* 814AC798 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814AC79C | 40 82 00 0C */	bne .L_814AC7A8
/* 814AC7A0 | 38 60 FF FB */	li r3, -0x5
/* 814AC7A4 | 48 00 00 38 */	b .L_814AC7DC
.L_814AC7A8:
/* 814AC7A8 | 80 1B 00 00 */	lwz r0, 0x0(r27)
/* 814AC7AC | 28 00 00 01 */	cmplwi r0, 0x1
/* 814AC7B0 | 41 82 00 28 */	beq .L_814AC7D8
/* 814AC7B4 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814AC7B8 | 40 82 00 18 */	bne .L_814AC7D0
/* 814AC7BC | 38 7B 00 40 */	addi r3, r27, 0x40
/* 814AC7C0 | 48 00 12 C9 */	bl NWC24CheckPublicMailAddr
/* 814AC7C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AC7C8 | 41 82 00 10 */	beq .L_814AC7D8
/* 814AC7CC | 48 00 00 10 */	b .L_814AC7DC
.L_814AC7D0:
/* 814AC7D0 | 38 60 FF FD */	li r3, -0x3
/* 814AC7D4 | 48 00 00 08 */	b .L_814AC7DC
.L_814AC7D8:
/* 814AC7D8 | 38 60 00 00 */	li r3, 0x0
.L_814AC7DC:
/* 814AC7DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AC7E0 | 41 82 00 08 */	beq .L_814AC7E8
/* 814AC7E4 | 48 00 03 A8 */	b .L_814ACB8C
.L_814AC7E8:
/* 814AC7E8 | 80 ED AD A0 */	lwz r7, NWC24WorkP_81698DE0@sda21(r0)
/* 814AC7EC | 38 60 00 01 */	li r3, 0x1
/* 814AC7F0 | 80 BB 00 00 */	lwz r5, 0x0(r27)
/* 814AC7F4 | 38 00 00 0B */	li r0, 0xb
/* 814AC7F8 | 80 9B 00 04 */	lwz r4, 0x4(r27)
/* 814AC7FC | 3B C7 04 00 */	addi r30, r7, 0x400
/* 814AC800 | 7F C6 F3 78 */	mr r6, r30
/* 814AC804 | 3B A7 04 40 */	addi r29, r7, 0x440
/* 814AC808 | 90 A7 04 00 */	stw r5, 0x400(r7)
/* 814AC80C | 38 E0 00 00 */	li r7, 0x0
/* 814AC810 | 90 9E 00 04 */	stw r4, 0x4(r30)
/* 814AC814 | 80 BB 00 08 */	lwz r5, 0x8(r27)
/* 814AC818 | 80 9B 00 0C */	lwz r4, 0xc(r27)
/* 814AC81C | 90 BE 00 08 */	stw r5, 0x8(r30)
/* 814AC820 | 90 9E 00 0C */	stw r4, 0xc(r30)
/* 814AC824 | 80 BB 00 10 */	lwz r5, 0x10(r27)
/* 814AC828 | 80 9B 00 14 */	lwz r4, 0x14(r27)
/* 814AC82C | 90 BE 00 10 */	stw r5, 0x10(r30)
/* 814AC830 | 90 9E 00 14 */	stw r4, 0x14(r30)
/* 814AC834 | 80 BB 00 18 */	lwz r5, 0x18(r27)
/* 814AC838 | 80 9B 00 1C */	lwz r4, 0x1c(r27)
/* 814AC83C | 90 BE 00 18 */	stw r5, 0x18(r30)
/* 814AC840 | 90 9E 00 1C */	stw r4, 0x1c(r30)
/* 814AC844 | 80 BB 00 20 */	lwz r5, 0x20(r27)
/* 814AC848 | 80 9B 00 24 */	lwz r4, 0x24(r27)
/* 814AC84C | 90 BE 00 20 */	stw r5, 0x20(r30)
/* 814AC850 | 90 9E 00 24 */	stw r4, 0x24(r30)
/* 814AC854 | 80 BB 00 28 */	lwz r5, 0x28(r27)
/* 814AC858 | 80 9B 00 2C */	lwz r4, 0x2c(r27)
/* 814AC85C | 90 BE 00 28 */	stw r5, 0x28(r30)
/* 814AC860 | 90 9E 00 2C */	stw r4, 0x2c(r30)
/* 814AC864 | 80 BB 00 30 */	lwz r5, 0x30(r27)
/* 814AC868 | 80 9B 00 34 */	lwz r4, 0x34(r27)
/* 814AC86C | 90 BE 00 30 */	stw r5, 0x30(r30)
/* 814AC870 | 90 9E 00 34 */	stw r4, 0x34(r30)
/* 814AC874 | 80 BB 00 38 */	lwz r5, 0x38(r27)
/* 814AC878 | 80 9B 00 3C */	lwz r4, 0x3c(r27)
/* 814AC87C | 90 BE 00 38 */	stw r5, 0x38(r30)
/* 814AC880 | 90 9E 00 3C */	stw r4, 0x3c(r30)
/* 814AC884 | 90 7E 00 04 */	stw r3, 0x4(r30)
/* 814AC888 | 7C 09 03 A6 */	mtctr r0
.L_814AC88C:
/* 814AC88C | A0 06 00 08 */	lhz r0, 0x8(r6)
/* 814AC890 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814AC894 | 41 82 00 10 */	beq .L_814AC8A4
/* 814AC898 | 38 C6 00 02 */	addi r6, r6, 0x2
/* 814AC89C | 38 E7 00 01 */	addi r7, r7, 0x1
/* 814AC8A0 | 42 00 FF EC */	bdnz .L_814AC88C
.L_814AC8A4:
/* 814AC8A4 | 2C 07 00 0B */	cmpwi r7, 0xb
/* 814AC8A8 | 40 82 00 0C */	bne .L_814AC8B4
/* 814AC8AC | 38 60 FF E7 */	li r3, -0x19
/* 814AC8B0 | 48 00 02 DC */	b .L_814ACB8C
.L_814AC8B4:
/* 814AC8B4 | 2C 07 00 0C */	cmpwi r7, 0xc
/* 814AC8B8 | 54 E0 08 3C */	slwi r0, r7, 1
/* 814AC8BC | 7C BE 02 14 */	add r5, r30, r0
/* 814AC8C0 | 20 67 00 0C */	subfic r3, r7, 0xc
/* 814AC8C4 | 38 80 00 00 */	li r4, 0x0
/* 814AC8C8 | 40 80 00 50 */	bge .L_814AC918
/* 814AC8CC | 54 60 E8 FF */	srwi. r0, r3, 3
/* 814AC8D0 | 7C 09 03 A6 */	mtctr r0
/* 814AC8D4 | 41 82 00 34 */	beq .L_814AC908
.L_814AC8D8:
/* 814AC8D8 | B0 85 00 08 */	sth r4, 0x8(r5)
/* 814AC8DC | B0 85 00 0A */	sth r4, 0xa(r5)
/* 814AC8E0 | B0 85 00 0C */	sth r4, 0xc(r5)
/* 814AC8E4 | B0 85 00 0E */	sth r4, 0xe(r5)
/* 814AC8E8 | B0 85 00 10 */	sth r4, 0x10(r5)
/* 814AC8EC | B0 85 00 12 */	sth r4, 0x12(r5)
/* 814AC8F0 | B0 85 00 14 */	sth r4, 0x14(r5)
/* 814AC8F4 | B0 85 00 16 */	sth r4, 0x16(r5)
/* 814AC8F8 | 38 A5 00 10 */	addi r5, r5, 0x10
/* 814AC8FC | 42 00 FF DC */	bdnz .L_814AC8D8
/* 814AC900 | 70 63 00 07 */	andi. r3, r3, 0x7
/* 814AC904 | 41 82 00 14 */	beq .L_814AC918
.L_814AC908:
/* 814AC908 | 7C 69 03 A6 */	mtctr r3
.L_814AC90C:
/* 814AC90C | B0 85 00 08 */	sth r4, 0x8(r5)
/* 814AC910 | 38 A5 00 02 */	addi r5, r5, 0x2
/* 814AC914 | 42 00 FF F8 */	bdnz .L_814AC90C
.L_814AC918:
/* 814AC918 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814AC91C | 48 00 10 8D */	bl GetCachedFLHeader
/* 814AC920 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AC924 | 41 82 00 08 */	beq .L_814AC92C
/* 814AC928 | 48 00 02 64 */	b .L_814ACB8C
.L_814AC92C:
/* 814AC92C | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 814AC930 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814AC934 | 7C 1C 00 40 */	cmplw r28, r0
/* 814AC938 | 41 80 00 0C */	blt .L_814AC944
/* 814AC93C | 38 60 FF FD */	li r3, -0x3
/* 814AC940 | 48 00 02 4C */	b .L_814ACB8C
.L_814AC944:
/* 814AC944 | 57 9F 18 38 */	slwi r31, r28, 3
/* 814AC948 | 7C 63 FA 14 */	add r3, r3, r31
/* 814AC94C | 80 03 00 40 */	lwz r0, 0x40(r3)
/* 814AC950 | 80 63 00 44 */	lwz r3, 0x44(r3)
/* 814AC954 | 7C 60 03 79 */	or. r0, r3, r0
/* 814AC958 | 41 82 00 0C */	beq .L_814AC964
/* 814AC95C | 38 60 FF FA */	li r3, -0x6
/* 814AC960 | 48 00 02 2C */	b .L_814ACB8C
.L_814AC964:
/* 814AC964 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 814AC968 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814AC96C | 40 82 00 60 */	bne .L_814AC9CC
/* 814AC970 | 80 7B 00 40 */	lwz r3, 0x40(r27)
/* 814AC974 | 80 9B 00 44 */	lwz r4, 0x44(r27)
/* 814AC978 | 48 00 16 35 */	bl NWC24CheckUserId
/* 814AC97C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AC980 | 41 82 00 10 */	beq .L_814AC990
/* 814AC984 | 2C 03 FF DD */	cmpwi r3, -0x23
/* 814AC988 | 41 82 00 08 */	beq .L_814AC990
/* 814AC98C | 48 00 02 00 */	b .L_814ACB8C
.L_814AC990:
/* 814AC990 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 814AC994 | 38 7D 00 08 */	addi r3, r29, 0x8
/* 814AC998 | 80 FB 00 40 */	lwz r7, 0x40(r27)
/* 814AC99C | 38 80 00 00 */	li r4, 0x0
/* 814AC9A0 | 81 1B 00 44 */	lwz r8, 0x44(r27)
/* 814AC9A4 | 7C C0 FA 14 */	add r6, r0, r31
/* 814AC9A8 | 38 A0 00 F8 */	li r5, 0xf8
/* 814AC9AC | 91 06 00 44 */	stw r8, 0x44(r6)
/* 814AC9B0 | 90 E6 00 40 */	stw r7, 0x40(r6)
/* 814AC9B4 | 80 1B 00 40 */	lwz r0, 0x40(r27)
/* 814AC9B8 | 80 DB 00 44 */	lwz r6, 0x44(r27)
/* 814AC9BC | 90 DD 00 04 */	stw r6, 0x4(r29)
/* 814AC9C0 | 90 1D 00 00 */	stw r0, 0x0(r29)
/* 814AC9C4 | 4B FF 04 C1 */	bl Mail_memset
/* 814AC9C8 | 48 00 00 AC */	b .L_814ACA74
.L_814AC9CC:
/* 814AC9CC | 28 00 00 02 */	cmplwi r0, 0x2
/* 814AC9D0 | 40 82 00 A4 */	bne .L_814ACA74
/* 814AC9D4 | 38 7B 00 40 */	addi r3, r27, 0x40
/* 814AC9D8 | 3B 00 00 80 */	li r24, 0x80
/* 814AC9DC | 3B 20 00 00 */	li r25, 0x0
/* 814AC9E0 | 38 80 01 00 */	li r4, 0x100
/* 814AC9E4 | 4B FF 03 BD */	bl STD_strnlen
/* 814AC9E8 | 2C 03 01 00 */	cmpwi r3, 0x100
/* 814AC9EC | 7C 7D 1B 78 */	mr r29, r3
/* 814AC9F0 | 40 82 00 0C */	bne .L_814AC9FC
/* 814AC9F4 | 38 60 FF E7 */	li r3, -0x19
/* 814AC9F8 | 48 00 00 5C */	b .L_814ACA54
.L_814AC9FC:
/* 814AC9FC | 3B 40 00 00 */	li r26, 0x0
.L_814ACA00:
/* 814ACA00 | 7C 1A E8 00 */	cmpw r26, r29
/* 814ACA04 | 40 80 00 20 */	bge .L_814ACA24
/* 814ACA08 | 7C 7B D2 14 */	add r3, r27, r26
/* 814ACA0C | 88 63 00 40 */	lbz r3, 0x40(r3)
/* 814ACA10 | 7C 63 07 74 */	extsb r3, r3
/* 814ACA14 | 4B FF 06 BD */	bl Mail_tolower
/* 814ACA18 | 7C 60 FE 70 */	srawi r0, r3, 31
/* 814ACA1C | 7F 18 1B 78 */	or r24, r24, r3
/* 814ACA20 | 7F 39 03 78 */	or r25, r25, r0
.L_814ACA24:
/* 814ACA24 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 814ACA28 | 57 39 40 2E */	slwi r25, r25, 8
/* 814ACA2C | 2C 1A 00 07 */	cmpwi r26, 0x7
/* 814ACA30 | 57 05 40 2E */	slwi r5, r24, 8
/* 814ACA34 | 53 19 46 3E */	rlwimi r25, r24, 8, 24, 31
/* 814ACA38 | 7C B8 2B 78 */	mr r24, r5
/* 814ACA3C | 41 80 FF C4 */	blt .L_814ACA00
/* 814ACA40 | 57 A4 06 3E */	clrlwi r4, r29, 24
/* 814ACA44 | 38 60 00 00 */	li r3, 0x0
/* 814ACA48 | 7C 80 FE 70 */	srawi r0, r4, 31
/* 814ACA4C | 7C B8 23 78 */	or r24, r5, r4
/* 814ACA50 | 7F 39 03 78 */	or r25, r25, r0
.L_814ACA54:
/* 814ACA54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ACA58 | 41 82 00 08 */	beq .L_814ACA60
/* 814ACA5C | 48 00 01 30 */	b .L_814ACB8C
.L_814ACA60:
/* 814ACA60 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 814ACA64 | 3B BB 00 40 */	addi r29, r27, 0x40
/* 814ACA68 | 7C 60 FA 14 */	add r3, r0, r31
/* 814ACA6C | 93 03 00 44 */	stw r24, 0x44(r3)
/* 814ACA70 | 93 23 00 40 */	stw r25, 0x40(r3)
.L_814ACA74:
/* 814ACA74 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814ACA78 | 48 00 0F 31 */	bl GetCachedFLHeader
/* 814ACA7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ACA80 | 40 82 00 14 */	bne .L_814ACA94
/* 814ACA84 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 814ACA88 | 80 03 00 3C */	lwz r0, 0x3c(r3)
/* 814ACA8C | 60 00 00 01 */	ori r0, r0, 0x1
/* 814ACA90 | 90 03 00 3C */	stw r0, 0x3c(r3)
.L_814ACA94:
/* 814ACA94 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814ACA98 | 48 00 0F 11 */	bl GetCachedFLHeader
/* 814ACA9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ACAA0 | 41 82 00 08 */	beq .L_814ACAA8
/* 814ACAA4 | 48 00 00 2C */	b .L_814ACAD0
.L_814ACAA8:
/* 814ACAA8 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 814ACAAC | 57 83 E8 FA */	rlwinm r3, r28, 29, 3, 29
/* 814ACAB0 | 57 80 06 FE */	clrlwi r0, r28, 27
/* 814ACAB4 | 38 80 00 01 */	li r4, 0x1
/* 814ACAB8 | 7C C5 1A 14 */	add r6, r5, r3
/* 814ACABC | 38 60 00 00 */	li r3, 0x0
/* 814ACAC0 | 80 A6 00 10 */	lwz r5, 0x10(r6)
/* 814ACAC4 | 7C 80 00 30 */	slw r0, r4, r0
/* 814ACAC8 | 7C A0 00 78 */	andc r0, r5, r0
/* 814ACACC | 90 06 00 10 */	stw r0, 0x10(r6)
.L_814ACAD0:
/* 814ACAD0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ACAD4 | 41 82 00 08 */	beq .L_814ACADC
/* 814ACAD8 | 48 00 00 B4 */	b .L_814ACB8C
.L_814ACADC:
/* 814ACADC | 80 8D 9C 68 */	lwz r4, FLFilePath@sda21(r0)
/* 814ACAE0 | 38 61 00 14 */	addi r3, r1, 0x14
/* 814ACAE4 | 38 A0 00 04 */	li r5, 0x4
/* 814ACAE8 | 4B FF 11 21 */	bl NWC24FOpen
/* 814ACAEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ACAF0 | 41 82 00 08 */	beq .L_814ACAF8
/* 814ACAF4 | 48 00 00 98 */	b .L_814ACB8C
.L_814ACAF8:
/* 814ACAF8 | 1C 9C 01 40 */	mulli r4, r28, 0x140
/* 814ACAFC | 38 61 00 14 */	addi r3, r1, 0x14
/* 814ACB00 | 38 A0 00 00 */	li r5, 0x0
/* 814ACB04 | 38 84 03 60 */	addi r4, r4, 0x360
/* 814ACB08 | 4B FF 15 ED */	bl NWC24FSeek
/* 814ACB0C | 7F C3 F3 78 */	mr r3, r30
/* 814ACB10 | 38 A1 00 14 */	addi r5, r1, 0x14
/* 814ACB14 | 38 80 00 40 */	li r4, 0x40
/* 814ACB18 | 4B FF 19 9D */	bl NWC24FWrite
/* 814ACB1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ACB20 | 7C 7A 1B 78 */	mr r26, r3
/* 814ACB24 | 40 82 00 54 */	bne .L_814ACB78
/* 814ACB28 | 7F A3 EB 78 */	mr r3, r29
/* 814ACB2C | 38 A1 00 14 */	addi r5, r1, 0x14
/* 814ACB30 | 38 80 01 00 */	li r4, 0x100
/* 814ACB34 | 4B FF 19 81 */	bl NWC24FWrite
/* 814ACB38 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ACB3C | 7C 7A 1B 78 */	mr r26, r3
/* 814ACB40 | 40 82 00 38 */	bne .L_814ACB78
/* 814ACB44 | 80 E1 00 10 */	lwz r7, 0x10(r1)
/* 814ACB48 | 38 61 00 14 */	addi r3, r1, 0x14
/* 814ACB4C | 38 80 00 00 */	li r4, 0x0
/* 814ACB50 | 38 A0 00 00 */	li r5, 0x0
/* 814ACB54 | 80 C7 00 0C */	lwz r6, 0xc(r7)
/* 814ACB58 | 38 06 00 01 */	addi r0, r6, 0x1
/* 814ACB5C | 90 07 00 0C */	stw r0, 0xc(r7)
/* 814ACB60 | 4B FF 15 95 */	bl NWC24FSeek
/* 814ACB64 | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 814ACB68 | 38 A1 00 14 */	addi r5, r1, 0x14
/* 814ACB6C | 38 80 03 60 */	li r4, 0x360
/* 814ACB70 | 4B FF 19 45 */	bl NWC24FWrite
/* 814ACB74 | 7C 7A 1B 78 */	mr r26, r3
.L_814ACB78:
/* 814ACB78 | 38 61 00 14 */	addi r3, r1, 0x14
/* 814ACB7C | 4B FF 13 E1 */	bl NWC24FClose
/* 814ACB80 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814ACB84 | 41 82 00 08 */	beq .L_814ACB8C
/* 814ACB88 | 7F 43 D3 78 */	mr r3, r26
.L_814ACB8C:
/* 814ACB8C | 39 61 00 D0 */	addi r11, r1, 0xd0
/* 814ACB90 | 48 14 C9 71 */	bl _restgpr_24
/* 814ACB94 | 80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 814ACB98 | 7C 08 03 A6 */	mtlr r0
/* 814ACB9C | 38 21 00 D0 */	addi r1, r1, 0xd0
/* 814ACBA0 | 4E 80 00 20 */	blr
.endfn NWC24WriteFriendInfo

# .text:0x4FC | 0x814ACBA4 | size: 0x264
.fn NWC24UpdateFriendInfo, global
/* 814ACBA4 | 94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 814ACBA8 | 7C 08 02 A6 */	mflr r0
/* 814ACBAC | 90 01 00 C4 */	stw r0, 0xc4(r1)
/* 814ACBB0 | 93 E1 00 BC */	stw r31, 0xbc(r1)
/* 814ACBB4 | 93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 814ACBB8 | 7C 7E 1B 78 */	mr r30, r3
/* 814ACBBC | 93 A1 00 B4 */	stw r29, 0xb4(r1)
/* 814ACBC0 | 93 81 00 B0 */	stw r28, 0xb0(r1)
/* 814ACBC4 | 7C 9C 23 78 */	mr r28, r4
/* 814ACBC8 | 4B FF 37 31 */	bl NWC24IsMsgLibOpened
/* 814ACBCC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ACBD0 | 40 82 00 18 */	bne .L_814ACBE8
/* 814ACBD4 | 4B FF 37 39 */	bl NWC24IsMsgLibOpenedByTool
/* 814ACBD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ACBDC | 40 82 00 0C */	bne .L_814ACBE8
/* 814ACBE0 | 38 60 FF F7 */	li r3, -0x9
/* 814ACBE4 | 48 00 02 04 */	b .L_814ACDE8
.L_814ACBE8:
/* 814ACBE8 | 57 C0 06 FF */	clrlwi. r0, r30, 27
/* 814ACBEC | 41 82 00 0C */	beq .L_814ACBF8
/* 814ACBF0 | 38 60 FF E9 */	li r3, -0x17
/* 814ACBF4 | 48 00 01 F4 */	b .L_814ACDE8
.L_814ACBF8:
/* 814ACBF8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814ACBFC | 40 82 00 0C */	bne .L_814ACC08
/* 814ACC00 | 38 60 FF FB */	li r3, -0x5
/* 814ACC04 | 48 00 00 38 */	b .L_814ACC3C
.L_814ACC08:
/* 814ACC08 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 814ACC0C | 28 00 00 01 */	cmplwi r0, 0x1
/* 814ACC10 | 41 82 00 28 */	beq .L_814ACC38
/* 814ACC14 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814ACC18 | 40 82 00 18 */	bne .L_814ACC30
/* 814ACC1C | 38 7E 00 40 */	addi r3, r30, 0x40
/* 814ACC20 | 48 00 0E 69 */	bl NWC24CheckPublicMailAddr
/* 814ACC24 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ACC28 | 41 82 00 10 */	beq .L_814ACC38
/* 814ACC2C | 48 00 00 10 */	b .L_814ACC3C
.L_814ACC30:
/* 814ACC30 | 38 60 FF FD */	li r3, -0x3
/* 814ACC34 | 48 00 00 08 */	b .L_814ACC3C
.L_814ACC38:
/* 814ACC38 | 38 60 00 00 */	li r3, 0x0
.L_814ACC3C:
/* 814ACC3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ACC40 | 41 82 00 08 */	beq .L_814ACC48
/* 814ACC44 | 48 00 01 A4 */	b .L_814ACDE8
.L_814ACC48:
/* 814ACC48 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814ACC4C | 48 00 0D 5D */	bl GetCachedFLHeader
/* 814ACC50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ACC54 | 41 82 00 08 */	beq .L_814ACC5C
/* 814ACC58 | 48 00 01 90 */	b .L_814ACDE8
.L_814ACC5C:
/* 814ACC5C | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814ACC60 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814ACC64 | 7C 1C 00 40 */	cmplw r28, r0
/* 814ACC68 | 41 80 00 0C */	blt .L_814ACC74
/* 814ACC6C | 38 60 FF FD */	li r3, -0x3
/* 814ACC70 | 48 00 01 78 */	b .L_814ACDE8
.L_814ACC74:
/* 814ACC74 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814ACC78 | 38 80 00 00 */	li r4, 0x0
/* 814ACC7C | 38 A0 01 40 */	li r5, 0x140
/* 814ACC80 | 3B E3 04 00 */	addi r31, r3, 0x400
/* 814ACC84 | 7F E3 FB 78 */	mr r3, r31
/* 814ACC88 | 4B FF 01 FD */	bl Mail_memset
/* 814ACC8C | 80 8D 9C 68 */	lwz r4, FLFilePath@sda21(r0)
/* 814ACC90 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814ACC94 | 38 A0 00 04 */	li r5, 0x4
/* 814ACC98 | 4B FF 0F 71 */	bl NWC24FOpen
/* 814ACC9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ACCA0 | 41 82 00 08 */	beq .L_814ACCA8
/* 814ACCA4 | 48 00 01 44 */	b .L_814ACDE8
.L_814ACCA8:
/* 814ACCA8 | 1C 9C 01 40 */	mulli r4, r28, 0x140
/* 814ACCAC | 38 61 00 0C */	addi r3, r1, 0xc
/* 814ACCB0 | 38 A0 00 00 */	li r5, 0x0
/* 814ACCB4 | 3B 84 03 60 */	addi r28, r4, 0x360
/* 814ACCB8 | 7F 84 E3 78 */	mr r4, r28
/* 814ACCBC | 4B FF 14 39 */	bl NWC24FSeek
/* 814ACCC0 | 7F E3 FB 78 */	mr r3, r31
/* 814ACCC4 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814ACCC8 | 38 80 01 40 */	li r4, 0x140
/* 814ACCCC | 4B FF 16 19 */	bl NWC24FRead
/* 814ACCD0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ACCD4 | 7C 7D 1B 78 */	mr r29, r3
/* 814ACCD8 | 40 82 00 FC */	bne .L_814ACDD4
/* 814ACCDC | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 814ACCE0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814ACCE4 | 40 82 00 2C */	bne .L_814ACD10
/* 814ACCE8 | 80 9F 00 40 */	lwz r4, 0x40(r31)
/* 814ACCEC | 80 1E 00 40 */	lwz r0, 0x40(r30)
/* 814ACCF0 | 80 BF 00 44 */	lwz r5, 0x44(r31)
/* 814ACCF4 | 80 7E 00 44 */	lwz r3, 0x44(r30)
/* 814ACCF8 | 7C 80 02 78 */	xor r0, r4, r0
/* 814ACCFC | 7C A3 1A 78 */	xor r3, r5, r3
/* 814ACD00 | 7C 60 03 79 */	or. r0, r3, r0
/* 814ACD04 | 41 82 00 3C */	beq .L_814ACD40
/* 814ACD08 | 3B A0 FF F9 */	li r29, -0x7
/* 814ACD0C | 48 00 00 C8 */	b .L_814ACDD4
.L_814ACD10:
/* 814ACD10 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814ACD14 | 40 82 00 24 */	bne .L_814ACD38
/* 814ACD18 | 38 7F 00 40 */	addi r3, r31, 0x40
/* 814ACD1C | 38 9E 00 40 */	addi r4, r30, 0x40
/* 814ACD20 | 38 A0 01 00 */	li r5, 0x100
/* 814ACD24 | 4B FF 0E 79 */	bl Mail_strnicmp
/* 814ACD28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ACD2C | 41 82 00 14 */	beq .L_814ACD40
/* 814ACD30 | 3B A0 FF F9 */	li r29, -0x7
/* 814ACD34 | 48 00 00 A0 */	b .L_814ACDD4
.L_814ACD38:
/* 814ACD38 | 3B A0 FF FD */	li r29, -0x3
/* 814ACD3C | 48 00 00 98 */	b .L_814ACDD4
.L_814ACD40:
/* 814ACD40 | A0 1E 00 08 */	lhz r0, 0x8(r30)
/* 814ACD44 | 7F 84 E3 78 */	mr r4, r28
/* 814ACD48 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814ACD4C | 38 A0 00 00 */	li r5, 0x0
/* 814ACD50 | B0 1F 00 08 */	sth r0, 0x8(r31)
/* 814ACD54 | A0 1E 00 0A */	lhz r0, 0xa(r30)
/* 814ACD58 | B0 1F 00 0A */	sth r0, 0xa(r31)
/* 814ACD5C | A0 1E 00 0C */	lhz r0, 0xc(r30)
/* 814ACD60 | B0 1F 00 0C */	sth r0, 0xc(r31)
/* 814ACD64 | A0 1E 00 0E */	lhz r0, 0xe(r30)
/* 814ACD68 | B0 1F 00 0E */	sth r0, 0xe(r31)
/* 814ACD6C | A0 1E 00 10 */	lhz r0, 0x10(r30)
/* 814ACD70 | B0 1F 00 10 */	sth r0, 0x10(r31)
/* 814ACD74 | A0 1E 00 12 */	lhz r0, 0x12(r30)
/* 814ACD78 | B0 1F 00 12 */	sth r0, 0x12(r31)
/* 814ACD7C | A0 1E 00 14 */	lhz r0, 0x14(r30)
/* 814ACD80 | B0 1F 00 14 */	sth r0, 0x14(r31)
/* 814ACD84 | A0 1E 00 16 */	lhz r0, 0x16(r30)
/* 814ACD88 | B0 1F 00 16 */	sth r0, 0x16(r31)
/* 814ACD8C | A0 1E 00 18 */	lhz r0, 0x18(r30)
/* 814ACD90 | B0 1F 00 18 */	sth r0, 0x18(r31)
/* 814ACD94 | A0 1E 00 1A */	lhz r0, 0x1a(r30)
/* 814ACD98 | B0 1F 00 1A */	sth r0, 0x1a(r31)
/* 814ACD9C | A0 1E 00 1C */	lhz r0, 0x1c(r30)
/* 814ACDA0 | B0 1F 00 1C */	sth r0, 0x1c(r31)
/* 814ACDA4 | A0 1E 00 1E */	lhz r0, 0x1e(r30)
/* 814ACDA8 | B0 1F 00 1E */	sth r0, 0x1e(r31)
/* 814ACDAC | 80 1E 00 20 */	lwz r0, 0x20(r30)
/* 814ACDB0 | 80 DE 00 24 */	lwz r6, 0x24(r30)
/* 814ACDB4 | 90 DF 00 24 */	stw r6, 0x24(r31)
/* 814ACDB8 | 90 1F 00 20 */	stw r0, 0x20(r31)
/* 814ACDBC | 4B FF 13 39 */	bl NWC24FSeek
/* 814ACDC0 | 7F E3 FB 78 */	mr r3, r31
/* 814ACDC4 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814ACDC8 | 38 80 00 40 */	li r4, 0x40
/* 814ACDCC | 4B FF 16 E9 */	bl NWC24FWrite
/* 814ACDD0 | 7C 7D 1B 78 */	mr r29, r3
.L_814ACDD4:
/* 814ACDD4 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814ACDD8 | 4B FF 11 85 */	bl NWC24FClose
/* 814ACDDC | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814ACDE0 | 41 82 00 08 */	beq .L_814ACDE8
/* 814ACDE4 | 7F A3 EB 78 */	mr r3, r29
.L_814ACDE8:
/* 814ACDE8 | 80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 814ACDEC | 83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 814ACDF0 | 83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 814ACDF4 | 83 A1 00 B4 */	lwz r29, 0xb4(r1)
/* 814ACDF8 | 83 81 00 B0 */	lwz r28, 0xb0(r1)
/* 814ACDFC | 7C 08 03 A6 */	mtlr r0
/* 814ACE00 | 38 21 00 C0 */	addi r1, r1, 0xc0
/* 814ACE04 | 4E 80 00 20 */	blr
.endfn NWC24UpdateFriendInfo

# .text:0x760 | 0x814ACE08 | size: 0x1A4
.fn NWC24DeleteFriendInfo, global
/* 814ACE08 | 94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 814ACE0C | 7C 08 02 A6 */	mflr r0
/* 814ACE10 | 90 01 00 C4 */	stw r0, 0xc4(r1)
/* 814ACE14 | 93 E1 00 BC */	stw r31, 0xbc(r1)
/* 814ACE18 | 7C 7F 1B 78 */	mr r31, r3
/* 814ACE1C | 93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 814ACE20 | 93 A1 00 B4 */	stw r29, 0xb4(r1)
/* 814ACE24 | 4B FF 34 D5 */	bl NWC24IsMsgLibOpened
/* 814ACE28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ACE2C | 40 82 00 18 */	bne .L_814ACE44
/* 814ACE30 | 4B FF 34 DD */	bl NWC24IsMsgLibOpenedByTool
/* 814ACE34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ACE38 | 40 82 00 0C */	bne .L_814ACE44
/* 814ACE3C | 38 60 FF F7 */	li r3, -0x9
/* 814ACE40 | 48 00 01 50 */	b .L_814ACF90
.L_814ACE44:
/* 814ACE44 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814ACE48 | 48 00 0B 61 */	bl GetCachedFLHeader
/* 814ACE4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ACE50 | 41 82 00 08 */	beq .L_814ACE58
/* 814ACE54 | 48 00 01 3C */	b .L_814ACF90
.L_814ACE58:
/* 814ACE58 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 814ACE5C | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814ACE60 | 7C 1F 00 40 */	cmplw r31, r0
/* 814ACE64 | 41 80 00 0C */	blt .L_814ACE70
/* 814ACE68 | 38 60 FF FD */	li r3, -0x3
/* 814ACE6C | 48 00 01 24 */	b .L_814ACF90
.L_814ACE70:
/* 814ACE70 | 57 FE 18 38 */	slwi r30, r31, 3
/* 814ACE74 | 7C 63 F2 14 */	add r3, r3, r30
/* 814ACE78 | 80 03 00 40 */	lwz r0, 0x40(r3)
/* 814ACE7C | 80 63 00 44 */	lwz r3, 0x44(r3)
/* 814ACE80 | 7C 60 03 79 */	or. r0, r3, r0
/* 814ACE84 | 40 82 00 0C */	bne .L_814ACE90
/* 814ACE88 | 38 60 FF FB */	li r3, -0x5
/* 814ACE8C | 48 00 01 04 */	b .L_814ACF90
.L_814ACE90:
/* 814ACE90 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814ACE94 | 38 80 00 00 */	li r4, 0x0
/* 814ACE98 | 38 A0 01 40 */	li r5, 0x140
/* 814ACE9C | 3B A3 04 00 */	addi r29, r3, 0x400
/* 814ACEA0 | 7F A3 EB 78 */	mr r3, r29
/* 814ACEA4 | 4B FE FF E1 */	bl Mail_memset
/* 814ACEA8 | 80 8D 9C 68 */	lwz r4, FLFilePath@sda21(r0)
/* 814ACEAC | 38 61 00 10 */	addi r3, r1, 0x10
/* 814ACEB0 | 38 A0 00 04 */	li r5, 0x4
/* 814ACEB4 | 4B FF 0D 55 */	bl NWC24FOpen
/* 814ACEB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ACEBC | 41 82 00 08 */	beq .L_814ACEC4
/* 814ACEC0 | 48 00 00 D0 */	b .L_814ACF90
.L_814ACEC4:
/* 814ACEC4 | 1C 9F 01 40 */	mulli r4, r31, 0x140
/* 814ACEC8 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814ACECC | 38 A0 00 00 */	li r5, 0x0
/* 814ACED0 | 38 84 03 60 */	addi r4, r4, 0x360
/* 814ACED4 | 4B FF 12 21 */	bl NWC24FSeek
/* 814ACED8 | 7F A3 EB 78 */	mr r3, r29
/* 814ACEDC | 38 A1 00 10 */	addi r5, r1, 0x10
/* 814ACEE0 | 38 80 01 40 */	li r4, 0x140
/* 814ACEE4 | 4B FF 15 D1 */	bl NWC24FWrite
/* 814ACEE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ACEEC | 7C 7D 1B 78 */	mr r29, r3
/* 814ACEF0 | 40 82 00 8C */	bne .L_814ACF7C
/* 814ACEF4 | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 814ACEF8 | 38 00 00 00 */	li r0, 0x0
/* 814ACEFC | 38 61 00 08 */	addi r3, r1, 0x8
/* 814ACF00 | 7C 85 F2 14 */	add r4, r5, r30
/* 814ACF04 | 90 04 00 44 */	stw r0, 0x44(r4)
/* 814ACF08 | 90 04 00 40 */	stw r0, 0x40(r4)
/* 814ACF0C | 80 85 00 0C */	lwz r4, 0xc(r5)
/* 814ACF10 | 38 04 FF FF */	subi r0, r4, 0x1
/* 814ACF14 | 90 05 00 0C */	stw r0, 0xc(r5)
/* 814ACF18 | 48 00 0A 91 */	bl GetCachedFLHeader
/* 814ACF1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ACF20 | 41 82 00 08 */	beq .L_814ACF28
/* 814ACF24 | 48 00 00 2C */	b .L_814ACF50
.L_814ACF28:
/* 814ACF28 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 814ACF2C | 57 E3 E8 FA */	rlwinm r3, r31, 29, 3, 29
/* 814ACF30 | 57 E0 06 FE */	clrlwi r0, r31, 27
/* 814ACF34 | 38 80 00 01 */	li r4, 0x1
/* 814ACF38 | 7C C5 1A 14 */	add r6, r5, r3
/* 814ACF3C | 38 60 00 00 */	li r3, 0x0
/* 814ACF40 | 80 A6 00 10 */	lwz r5, 0x10(r6)
/* 814ACF44 | 7C 80 00 30 */	slw r0, r4, r0
/* 814ACF48 | 7C A0 00 78 */	andc r0, r5, r0
/* 814ACF4C | 90 06 00 10 */	stw r0, 0x10(r6)
.L_814ACF50:
/* 814ACF50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ACF54 | 40 82 00 28 */	bne .L_814ACF7C
/* 814ACF58 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814ACF5C | 38 80 00 00 */	li r4, 0x0
/* 814ACF60 | 38 A0 00 00 */	li r5, 0x0
/* 814ACF64 | 4B FF 11 91 */	bl NWC24FSeek
/* 814ACF68 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 814ACF6C | 38 A1 00 10 */	addi r5, r1, 0x10
/* 814ACF70 | 38 80 03 60 */	li r4, 0x360
/* 814ACF74 | 4B FF 15 41 */	bl NWC24FWrite
/* 814ACF78 | 7C 7D 1B 78 */	mr r29, r3
.L_814ACF7C:
/* 814ACF7C | 38 61 00 10 */	addi r3, r1, 0x10
/* 814ACF80 | 4B FF 0F DD */	bl NWC24FClose
/* 814ACF84 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814ACF88 | 41 82 00 08 */	beq .L_814ACF90
/* 814ACF8C | 7F A3 EB 78 */	mr r3, r29
.L_814ACF90:
/* 814ACF90 | 80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 814ACF94 | 83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 814ACF98 | 83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 814ACF9C | 83 A1 00 B4 */	lwz r29, 0xb4(r1)
/* 814ACFA0 | 7C 08 03 A6 */	mtlr r0
/* 814ACFA4 | 38 21 00 C0 */	addi r1, r1, 0xc0
/* 814ACFA8 | 4E 80 00 20 */	blr
.endfn NWC24DeleteFriendInfo

# .text:0x904 | 0x814ACFAC | size: 0x2DC
.fn NWC24SwapFriendInfos, global
/* 814ACFAC | 94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 814ACFB0 | 7C 08 02 A6 */	mflr r0
/* 814ACFB4 | 90 01 00 E4 */	stw r0, 0xe4(r1)
/* 814ACFB8 | 39 61 00 E0 */	addi r11, r1, 0xe0
/* 814ACFBC | 48 14 C4 FD */	bl _savegpr_25
/* 814ACFC0 | 7C 7D 1B 78 */	mr r29, r3
/* 814ACFC4 | 7C 9E 23 78 */	mr r30, r4
/* 814ACFC8 | 4B FF 33 31 */	bl NWC24IsMsgLibOpened
/* 814ACFCC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ACFD0 | 40 82 00 18 */	bne .L_814ACFE8
/* 814ACFD4 | 4B FF 33 39 */	bl NWC24IsMsgLibOpenedByTool
/* 814ACFD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ACFDC | 40 82 00 0C */	bne .L_814ACFE8
/* 814ACFE0 | 38 60 FF F7 */	li r3, -0x9
/* 814ACFE4 | 48 00 02 8C */	b .L_814AD270
.L_814ACFE8:
/* 814ACFE8 | 38 61 00 18 */	addi r3, r1, 0x18
/* 814ACFEC | 48 00 09 BD */	bl GetCachedFLHeader
/* 814ACFF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ACFF4 | 41 82 00 08 */	beq .L_814ACFFC
/* 814ACFF8 | 48 00 02 78 */	b .L_814AD270
.L_814ACFFC:
/* 814ACFFC | 7C 1D F0 40 */	cmplw r29, r30
/* 814AD000 | 40 82 00 0C */	bne .L_814AD00C
/* 814AD004 | 38 60 00 00 */	li r3, 0x0
/* 814AD008 | 48 00 02 68 */	b .L_814AD270
.L_814AD00C:
/* 814AD00C | 80 61 00 18 */	lwz r3, 0x18(r1)
/* 814AD010 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814AD014 | 7C 1D 00 40 */	cmplw r29, r0
/* 814AD018 | 41 80 00 0C */	blt .L_814AD024
/* 814AD01C | 38 60 FF FD */	li r3, -0x3
/* 814AD020 | 48 00 02 50 */	b .L_814AD270
.L_814AD024:
/* 814AD024 | 7C 1E 00 40 */	cmplw r30, r0
/* 814AD028 | 41 80 00 0C */	blt .L_814AD034
/* 814AD02C | 38 60 FF FD */	li r3, -0x3
/* 814AD030 | 48 00 02 40 */	b .L_814AD270
.L_814AD034:
/* 814AD034 | 80 CD AD A0 */	lwz r6, NWC24WorkP_81698DE0@sda21(r0)
/* 814AD038 | 38 61 00 1C */	addi r3, r1, 0x1c
/* 814AD03C | 80 8D 9C 68 */	lwz r4, FLFilePath@sda21(r0)
/* 814AD040 | 38 A0 00 04 */	li r5, 0x4
/* 814AD044 | 3B 86 04 00 */	addi r28, r6, 0x400
/* 814AD048 | 3B 66 05 40 */	addi r27, r6, 0x540
/* 814AD04C | 4B FF 0B BD */	bl NWC24FOpen
/* 814AD050 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AD054 | 41 82 00 08 */	beq .L_814AD05C
/* 814AD058 | 48 00 02 18 */	b .L_814AD270
.L_814AD05C:
/* 814AD05C | 1C 9D 01 40 */	mulli r4, r29, 0x140
/* 814AD060 | 38 61 00 1C */	addi r3, r1, 0x1c
/* 814AD064 | 38 A0 00 00 */	li r5, 0x0
/* 814AD068 | 1C DE 01 40 */	mulli r6, r30, 0x140
/* 814AD06C | 3B 44 03 60 */	addi r26, r4, 0x360
/* 814AD070 | 7F 44 D3 78 */	mr r4, r26
/* 814AD074 | 3B 26 03 60 */	addi r25, r6, 0x360
/* 814AD078 | 4B FF 10 7D */	bl NWC24FSeek
/* 814AD07C | 7F 83 E3 78 */	mr r3, r28
/* 814AD080 | 38 A1 00 1C */	addi r5, r1, 0x1c
/* 814AD084 | 38 80 01 40 */	li r4, 0x140
/* 814AD088 | 4B FF 12 5D */	bl NWC24FRead
/* 814AD08C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AD090 | 7C 7F 1B 78 */	mr r31, r3
/* 814AD094 | 40 82 01 C8 */	bne .L_814AD25C
/* 814AD098 | 7F 24 CB 78 */	mr r4, r25
/* 814AD09C | 38 61 00 1C */	addi r3, r1, 0x1c
/* 814AD0A0 | 38 A0 00 00 */	li r5, 0x0
/* 814AD0A4 | 4B FF 10 51 */	bl NWC24FSeek
/* 814AD0A8 | 7F 63 DB 78 */	mr r3, r27
/* 814AD0AC | 38 A1 00 1C */	addi r5, r1, 0x1c
/* 814AD0B0 | 38 80 01 40 */	li r4, 0x140
/* 814AD0B4 | 4B FF 12 31 */	bl NWC24FRead
/* 814AD0B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AD0BC | 7C 7F 1B 78 */	mr r31, r3
/* 814AD0C0 | 40 82 01 9C */	bne .L_814AD25C
/* 814AD0C4 | 7F 44 D3 78 */	mr r4, r26
/* 814AD0C8 | 38 61 00 1C */	addi r3, r1, 0x1c
/* 814AD0CC | 38 A0 00 00 */	li r5, 0x0
/* 814AD0D0 | 4B FF 10 25 */	bl NWC24FSeek
/* 814AD0D4 | 7F 63 DB 78 */	mr r3, r27
/* 814AD0D8 | 38 A1 00 1C */	addi r5, r1, 0x1c
/* 814AD0DC | 38 80 01 40 */	li r4, 0x140
/* 814AD0E0 | 4B FF 13 D5 */	bl NWC24FWrite
/* 814AD0E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AD0E8 | 7C 7F 1B 78 */	mr r31, r3
/* 814AD0EC | 40 82 01 70 */	bne .L_814AD25C
/* 814AD0F0 | 7F 24 CB 78 */	mr r4, r25
/* 814AD0F4 | 38 61 00 1C */	addi r3, r1, 0x1c
/* 814AD0F8 | 38 A0 00 00 */	li r5, 0x0
/* 814AD0FC | 4B FF 0F F9 */	bl NWC24FSeek
/* 814AD100 | 7F 83 E3 78 */	mr r3, r28
/* 814AD104 | 38 A1 00 1C */	addi r5, r1, 0x1c
/* 814AD108 | 38 80 01 40 */	li r4, 0x140
/* 814AD10C | 4B FF 13 A9 */	bl NWC24FWrite
/* 814AD110 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AD114 | 7C 7F 1B 78 */	mr r31, r3
/* 814AD118 | 40 82 01 44 */	bne .L_814AD25C
/* 814AD11C | 80 A1 00 18 */	lwz r5, 0x18(r1)
/* 814AD120 | 57 A4 18 38 */	slwi r4, r29, 3
/* 814AD124 | 57 C0 18 38 */	slwi r0, r30, 3
/* 814AD128 | 38 61 00 14 */	addi r3, r1, 0x14
/* 814AD12C | 38 A5 00 40 */	addi r5, r5, 0x40
/* 814AD130 | 7C C5 22 14 */	add r6, r5, r4
/* 814AD134 | 7C E5 20 2E */	lwzx r7, r5, r4
/* 814AD138 | 7C 05 00 6E */	lwzux r0, r5, r0
/* 814AD13C | 81 06 00 04 */	lwz r8, 0x4(r6)
/* 814AD140 | 80 85 00 04 */	lwz r4, 0x4(r5)
/* 814AD144 | 90 86 00 04 */	stw r4, 0x4(r6)
/* 814AD148 | 90 06 00 00 */	stw r0, 0x0(r6)
/* 814AD14C | 91 05 00 04 */	stw r8, 0x4(r5)
/* 814AD150 | 90 E5 00 00 */	stw r7, 0x0(r5)
/* 814AD154 | 48 00 08 55 */	bl GetCachedFLHeader
/* 814AD158 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AD15C | 41 82 00 0C */	beq .L_814AD168
/* 814AD160 | 7C 7F 1B 78 */	mr r31, r3
/* 814AD164 | 48 00 00 20 */	b .L_814AD184
.L_814AD168:
/* 814AD168 | 80 81 00 14 */	lwz r4, 0x14(r1)
/* 814AD16C | 57 A3 E8 FA */	rlwinm r3, r29, 29, 3, 29
/* 814AD170 | 57 A0 06 FE */	clrlwi r0, r29, 27
/* 814AD174 | 7C 64 1A 14 */	add r3, r4, r3
/* 814AD178 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 814AD17C | 7C 60 04 30 */	srw r0, r3, r0
/* 814AD180 | 54 1F 07 FE */	clrlwi r31, r0, 31
.L_814AD184:
/* 814AD184 | 38 61 00 10 */	addi r3, r1, 0x10
/* 814AD188 | 48 00 08 21 */	bl GetCachedFLHeader
/* 814AD18C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AD190 | 41 82 00 0C */	beq .L_814AD19C
/* 814AD194 | 7C 79 1B 78 */	mr r25, r3
/* 814AD198 | 48 00 00 20 */	b .L_814AD1B8
.L_814AD19C:
/* 814AD19C | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 814AD1A0 | 57 C3 E8 FA */	rlwinm r3, r30, 29, 3, 29
/* 814AD1A4 | 57 C0 06 FE */	clrlwi r0, r30, 27
/* 814AD1A8 | 7C 64 1A 14 */	add r3, r4, r3
/* 814AD1AC | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 814AD1B0 | 7C 60 04 30 */	srw r0, r3, r0
/* 814AD1B4 | 54 19 07 FE */	clrlwi r25, r0, 31
.L_814AD1B8:
/* 814AD1B8 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814AD1BC | 48 00 07 ED */	bl GetCachedFLHeader
/* 814AD1C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AD1C4 | 40 82 00 34 */	bne .L_814AD1F8
/* 814AD1C8 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814AD1CC | 57 A3 E8 FA */	rlwinm r3, r29, 29, 3, 29
/* 814AD1D0 | 57 A6 06 FE */	clrlwi r6, r29, 27
/* 814AD1D4 | 38 00 00 01 */	li r0, 0x1
/* 814AD1D8 | 7C A4 1A 14 */	add r5, r4, r3
/* 814AD1DC | 7C 00 30 30 */	slw r0, r0, r6
/* 814AD1E0 | 80 65 00 10 */	lwz r3, 0x10(r5)
/* 814AD1E4 | 7C 04 00 F8 */	nor r4, r0, r0
/* 814AD1E8 | 7F 20 30 30 */	slw r0, r25, r6
/* 814AD1EC | 7C 83 18 38 */	and r3, r4, r3
/* 814AD1F0 | 7C 60 03 78 */	or r0, r3, r0
/* 814AD1F4 | 90 05 00 10 */	stw r0, 0x10(r5)
.L_814AD1F8:
/* 814AD1F8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814AD1FC | 48 00 07 AD */	bl GetCachedFLHeader
/* 814AD200 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AD204 | 40 82 00 34 */	bne .L_814AD238
/* 814AD208 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814AD20C | 57 C3 E8 FA */	rlwinm r3, r30, 29, 3, 29
/* 814AD210 | 57 C6 06 FE */	clrlwi r6, r30, 27
/* 814AD214 | 38 00 00 01 */	li r0, 0x1
/* 814AD218 | 7C A4 1A 14 */	add r5, r4, r3
/* 814AD21C | 7C 00 30 30 */	slw r0, r0, r6
/* 814AD220 | 80 65 00 10 */	lwz r3, 0x10(r5)
/* 814AD224 | 7C 04 00 F8 */	nor r4, r0, r0
/* 814AD228 | 7F E0 30 30 */	slw r0, r31, r6
/* 814AD22C | 7C 83 18 38 */	and r3, r4, r3
/* 814AD230 | 7C 60 03 78 */	or r0, r3, r0
/* 814AD234 | 90 05 00 10 */	stw r0, 0x10(r5)
.L_814AD238:
/* 814AD238 | 38 61 00 1C */	addi r3, r1, 0x1c
/* 814AD23C | 38 80 00 00 */	li r4, 0x0
/* 814AD240 | 38 A0 00 00 */	li r5, 0x0
/* 814AD244 | 4B FF 0E B1 */	bl NWC24FSeek
/* 814AD248 | 80 61 00 18 */	lwz r3, 0x18(r1)
/* 814AD24C | 38 A1 00 1C */	addi r5, r1, 0x1c
/* 814AD250 | 38 80 03 60 */	li r4, 0x360
/* 814AD254 | 4B FF 12 61 */	bl NWC24FWrite
/* 814AD258 | 7C 7F 1B 78 */	mr r31, r3
.L_814AD25C:
/* 814AD25C | 38 61 00 1C */	addi r3, r1, 0x1c
/* 814AD260 | 4B FF 0C FD */	bl NWC24FClose
/* 814AD264 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814AD268 | 41 82 00 08 */	beq .L_814AD270
/* 814AD26C | 7F E3 FB 78 */	mr r3, r31
.L_814AD270:
/* 814AD270 | 39 61 00 E0 */	addi r11, r1, 0xe0
/* 814AD274 | 48 14 C2 91 */	bl _restgpr_25
/* 814AD278 | 80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 814AD27C | 7C 08 03 A6 */	mtlr r0
/* 814AD280 | 38 21 00 E0 */	addi r1, r1, 0xe0
/* 814AD284 | 4E 80 00 20 */	blr
.endfn NWC24SwapFriendInfos

# .text:0xBE0 | 0x814AD288 | size: 0xC0
.fn NWC24SearchFriendInfoById, global
/* 814AD288 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814AD28C | 7C 08 02 A6 */	mflr r0
/* 814AD290 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814AD294 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814AD298 | 7C BF 2B 78 */	mr r31, r5
/* 814AD29C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814AD2A0 | 7C 7E 1B 78 */	mr r30, r3
/* 814AD2A4 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814AD2A8 | 7C 9D 23 78 */	mr r29, r4
/* 814AD2AC | 4B FF 30 4D */	bl NWC24IsMsgLibOpened
/* 814AD2B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AD2B4 | 40 82 00 18 */	bne .L_814AD2CC
/* 814AD2B8 | 4B FF 30 55 */	bl NWC24IsMsgLibOpenedByTool
/* 814AD2BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AD2C0 | 40 82 00 0C */	bne .L_814AD2CC
/* 814AD2C4 | 38 60 FF F7 */	li r3, -0x9
/* 814AD2C8 | 48 00 00 64 */	b .L_814AD32C
.L_814AD2CC:
/* 814AD2CC | 38 61 00 08 */	addi r3, r1, 0x8
/* 814AD2D0 | 48 00 06 D9 */	bl GetCachedFLHeader
/* 814AD2D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AD2D8 | 41 82 00 08 */	beq .L_814AD2E0
/* 814AD2DC | 48 00 00 50 */	b .L_814AD32C
.L_814AD2E0:
/* 814AD2E0 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814AD2E4 | 38 A0 00 00 */	li r5, 0x0
/* 814AD2E8 | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 814AD2EC | 7C 09 03 A6 */	mtctr r0
/* 814AD2F0 | 28 00 00 00 */	cmplwi r0, 0x0
/* 814AD2F4 | 40 81 00 34 */	ble .L_814AD328
.L_814AD2F8:
/* 814AD2F8 | 80 04 00 40 */	lwz r0, 0x40(r4)
/* 814AD2FC | 80 64 00 44 */	lwz r3, 0x44(r4)
/* 814AD300 | 7F C0 02 78 */	xor r0, r30, r0
/* 814AD304 | 7F A3 1A 78 */	xor r3, r29, r3
/* 814AD308 | 7C 60 03 79 */	or. r0, r3, r0
/* 814AD30C | 40 82 00 10 */	bne .L_814AD31C
/* 814AD310 | 90 BF 00 00 */	stw r5, 0x0(r31)
/* 814AD314 | 38 60 00 00 */	li r3, 0x0
/* 814AD318 | 48 00 00 14 */	b .L_814AD32C
.L_814AD31C:
/* 814AD31C | 38 84 00 08 */	addi r4, r4, 0x8
/* 814AD320 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814AD324 | 42 00 FF D4 */	bdnz .L_814AD2F8
.L_814AD328:
/* 814AD328 | 38 60 FF F3 */	li r3, -0xd
.L_814AD32C:
/* 814AD32C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814AD330 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814AD334 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814AD338 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814AD33C | 7C 08 03 A6 */	mtlr r0
/* 814AD340 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814AD344 | 4E 80 00 20 */	blr
.endfn NWC24SearchFriendInfoById

# .text:0xCA0 | 0x814AD348 | size: 0x1F0
.fn NWC24SearchFriendInfoByAddr, global
/* 814AD348 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814AD34C | 7C 08 02 A6 */	mflr r0
/* 814AD350 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814AD354 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814AD358 | 48 14 C1 59 */	bl _savegpr_23
/* 814AD35C | 7C 78 1B 78 */	mr r24, r3
/* 814AD360 | 7C 99 23 78 */	mr r25, r4
/* 814AD364 | 4B FF 2F 95 */	bl NWC24IsMsgLibOpened
/* 814AD368 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AD36C | 40 82 00 18 */	bne .L_814AD384
/* 814AD370 | 4B FF 2F 9D */	bl NWC24IsMsgLibOpenedByTool
/* 814AD374 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AD378 | 40 82 00 0C */	bne .L_814AD384
/* 814AD37C | 38 60 FF F7 */	li r3, -0x9
/* 814AD380 | 48 00 01 A0 */	b .L_814AD520
.L_814AD384:
/* 814AD384 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814AD388 | 48 00 06 21 */	bl GetCachedFLHeader
/* 814AD38C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AD390 | 41 82 00 08 */	beq .L_814AD398
/* 814AD394 | 48 00 01 8C */	b .L_814AD520
.L_814AD398:
/* 814AD398 | 7F 03 C3 78 */	mr r3, r24
/* 814AD39C | 3B 40 00 80 */	li r26, 0x80
/* 814AD3A0 | 3B 60 00 00 */	li r27, 0x0
/* 814AD3A4 | 38 80 01 00 */	li r4, 0x100
/* 814AD3A8 | 4B FE F9 F9 */	bl STD_strnlen
/* 814AD3AC | 2C 03 01 00 */	cmpwi r3, 0x100
/* 814AD3B0 | 7C 77 1B 78 */	mr r23, r3
/* 814AD3B4 | 40 82 00 0C */	bne .L_814AD3C0
/* 814AD3B8 | 38 60 FF E7 */	li r3, -0x19
/* 814AD3BC | 48 00 00 60 */	b .L_814AD41C
.L_814AD3C0:
/* 814AD3C0 | 7F 1C C3 78 */	mr r28, r24
/* 814AD3C4 | 3B A0 00 00 */	li r29, 0x0
.L_814AD3C8:
/* 814AD3C8 | 7C 1D B8 00 */	cmpw r29, r23
/* 814AD3CC | 40 80 00 1C */	bge .L_814AD3E8
/* 814AD3D0 | 88 7C 00 00 */	lbz r3, 0x0(r28)
/* 814AD3D4 | 7C 63 07 74 */	extsb r3, r3
/* 814AD3D8 | 4B FE FC F9 */	bl Mail_tolower
/* 814AD3DC | 7C 60 FE 70 */	srawi r0, r3, 31
/* 814AD3E0 | 7F 5A 1B 78 */	or r26, r26, r3
/* 814AD3E4 | 7F 7B 03 78 */	or r27, r27, r0
.L_814AD3E8:
/* 814AD3E8 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 814AD3EC | 57 7B 40 2E */	slwi r27, r27, 8
/* 814AD3F0 | 2C 1D 00 07 */	cmpwi r29, 0x7
/* 814AD3F4 | 57 45 40 2E */	slwi r5, r26, 8
/* 814AD3F8 | 53 5B 46 3E */	rlwimi r27, r26, 8, 24, 31
/* 814AD3FC | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 814AD400 | 7C BA 2B 78 */	mr r26, r5
/* 814AD404 | 41 80 FF C4 */	blt .L_814AD3C8
/* 814AD408 | 56 E4 06 3E */	clrlwi r4, r23, 24
/* 814AD40C | 38 60 00 00 */	li r3, 0x0
/* 814AD410 | 7C 80 FE 70 */	srawi r0, r4, 31
/* 814AD414 | 7C BA 23 78 */	or r26, r5, r4
/* 814AD418 | 7F 7B 03 78 */	or r27, r27, r0
.L_814AD41C:
/* 814AD41C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AD420 | 41 82 00 08 */	beq .L_814AD428
/* 814AD424 | 48 00 00 FC */	b .L_814AD520
.L_814AD428:
/* 814AD428 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814AD42C | 3B 80 00 00 */	li r28, 0x0
/* 814AD430 | 3B E0 00 00 */	li r31, 0x0
/* 814AD434 | 3A E0 00 02 */	li r23, 0x2
/* 814AD438 | 3B A3 04 00 */	addi r29, r3, 0x400
/* 814AD43C | 3B DD 00 48 */	addi r30, r29, 0x48
/* 814AD440 | 48 00 00 CC */	b .L_814AD50C
.L_814AD444:
/* 814AD444 | 7C 63 FA 14 */	add r3, r3, r31
/* 814AD448 | 80 03 00 40 */	lwz r0, 0x40(r3)
/* 814AD44C | 80 63 00 44 */	lwz r3, 0x44(r3)
/* 814AD450 | 7F 60 02 78 */	xor r0, r27, r0
/* 814AD454 | 7F 43 1A 78 */	xor r3, r26, r3
/* 814AD458 | 7C 60 03 79 */	or. r0, r3, r0
/* 814AD45C | 40 82 00 A8 */	bne .L_814AD504
/* 814AD460 | 7F A3 EB 78 */	mr r3, r29
/* 814AD464 | 7F 84 E3 78 */	mr r4, r28
/* 814AD468 | 48 00 04 29 */	bl NWC24iReadFriendInfoRaw
/* 814AD46C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AD470 | 41 82 00 08 */	beq .L_814AD478
/* 814AD474 | 48 00 00 60 */	b .L_814AD4D4
.L_814AD478:
/* 814AD478 | 80 1D 00 00 */	lwz r0, 0x0(r29)
/* 814AD47C | 28 00 00 01 */	cmplwi r0, 0x1
/* 814AD480 | 40 82 00 14 */	bne .L_814AD494
/* 814AD484 | 7F C3 F3 78 */	mr r3, r30
/* 814AD488 | 38 80 00 00 */	li r4, 0x0
/* 814AD48C | 38 A0 00 F8 */	li r5, 0xf8
/* 814AD490 | 4B FE F9 F5 */	bl Mail_memset
.L_814AD494:
/* 814AD494 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814AD498 | 48 00 05 11 */	bl GetCachedFLHeader
/* 814AD49C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AD4A0 | 41 82 00 08 */	beq .L_814AD4A8
/* 814AD4A4 | 48 00 00 20 */	b .L_814AD4C4
.L_814AD4A8:
/* 814AD4A8 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814AD4AC | 57 83 E8 FA */	rlwinm r3, r28, 29, 3, 29
/* 814AD4B0 | 57 80 06 FE */	clrlwi r0, r28, 27
/* 814AD4B4 | 7C 64 1A 14 */	add r3, r4, r3
/* 814AD4B8 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 814AD4BC | 7C 60 04 30 */	srw r0, r3, r0
/* 814AD4C0 | 54 03 07 FE */	clrlwi r3, r0, 31
.L_814AD4C4:
/* 814AD4C4 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 814AD4C8 | 40 82 00 08 */	bne .L_814AD4D0
/* 814AD4CC | 92 FD 00 04 */	stw r23, 0x4(r29)
.L_814AD4D0:
/* 814AD4D0 | 38 60 00 00 */	li r3, 0x0
.L_814AD4D4:
/* 814AD4D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AD4D8 | 41 82 00 08 */	beq .L_814AD4E0
/* 814AD4DC | 48 00 00 44 */	b .L_814AD520
.L_814AD4E0:
/* 814AD4E0 | 7F 03 C3 78 */	mr r3, r24
/* 814AD4E4 | 38 9D 00 40 */	addi r4, r29, 0x40
/* 814AD4E8 | 38 A0 01 00 */	li r5, 0x100
/* 814AD4EC | 4B FF 06 B1 */	bl Mail_strnicmp
/* 814AD4F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AD4F4 | 40 82 00 10 */	bne .L_814AD504
/* 814AD4F8 | 93 99 00 00 */	stw r28, 0x0(r25)
/* 814AD4FC | 38 60 00 00 */	li r3, 0x0
/* 814AD500 | 48 00 00 20 */	b .L_814AD520
.L_814AD504:
/* 814AD504 | 3B FF 00 08 */	addi r31, r31, 0x8
/* 814AD508 | 3B 9C 00 01 */	addi r28, r28, 0x1
.L_814AD50C:
/* 814AD50C | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 814AD510 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814AD514 | 7C 1C 00 40 */	cmplw r28, r0
/* 814AD518 | 41 80 FF 2C */	blt .L_814AD444
/* 814AD51C | 38 60 FF F3 */	li r3, -0xd
.L_814AD520:
/* 814AD520 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814AD524 | 48 14 BF D9 */	bl _restgpr_23
/* 814AD528 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814AD52C | 7C 08 03 A6 */	mtlr r0
/* 814AD530 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814AD534 | 4E 80 00 20 */	blr
.endfn NWC24SearchFriendInfoByAddr

# .text:0xE90 | 0x814AD538 | size: 0x6C
.fn NWC24GetNumFriendInfos, global
/* 814AD538 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814AD53C | 7C 08 02 A6 */	mflr r0
/* 814AD540 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814AD544 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814AD548 | 7C 7F 1B 78 */	mr r31, r3
/* 814AD54C | 4B FF 2D AD */	bl NWC24IsMsgLibOpened
/* 814AD550 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AD554 | 40 82 00 18 */	bne .L_814AD56C
/* 814AD558 | 4B FF 2D B5 */	bl NWC24IsMsgLibOpenedByTool
/* 814AD55C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AD560 | 40 82 00 0C */	bne .L_814AD56C
/* 814AD564 | 38 60 FF F7 */	li r3, -0x9
/* 814AD568 | 48 00 00 28 */	b .L_814AD590
.L_814AD56C:
/* 814AD56C | 38 61 00 08 */	addi r3, r1, 0x8
/* 814AD570 | 48 00 04 39 */	bl GetCachedFLHeader
/* 814AD574 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AD578 | 41 82 00 08 */	beq .L_814AD580
/* 814AD57C | 48 00 00 14 */	b .L_814AD590
.L_814AD580:
/* 814AD580 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814AD584 | 38 60 00 00 */	li r3, 0x0
/* 814AD588 | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 814AD58C | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_814AD590:
/* 814AD590 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814AD594 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814AD598 | 7C 08 03 A6 */	mtlr r0
/* 814AD59C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814AD5A0 | 4E 80 00 20 */	blr
.endfn NWC24GetNumFriendInfos

# .text:0xEFC | 0x814AD5A4 | size: 0x6C
.fn NWC24GetNumRegFriendInfos, global
/* 814AD5A4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814AD5A8 | 7C 08 02 A6 */	mflr r0
/* 814AD5AC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814AD5B0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814AD5B4 | 7C 7F 1B 78 */	mr r31, r3
/* 814AD5B8 | 4B FF 2D 41 */	bl NWC24IsMsgLibOpened
/* 814AD5BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AD5C0 | 40 82 00 18 */	bne .L_814AD5D8
/* 814AD5C4 | 4B FF 2D 49 */	bl NWC24IsMsgLibOpenedByTool
/* 814AD5C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AD5CC | 40 82 00 0C */	bne .L_814AD5D8
/* 814AD5D0 | 38 60 FF F7 */	li r3, -0x9
/* 814AD5D4 | 48 00 00 28 */	b .L_814AD5FC
.L_814AD5D8:
/* 814AD5D8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814AD5DC | 48 00 03 CD */	bl GetCachedFLHeader
/* 814AD5E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AD5E4 | 41 82 00 08 */	beq .L_814AD5EC
/* 814AD5E8 | 48 00 00 14 */	b .L_814AD5FC
.L_814AD5EC:
/* 814AD5EC | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814AD5F0 | 38 60 00 00 */	li r3, 0x0
/* 814AD5F4 | 80 04 00 0C */	lwz r0, 0xc(r4)
/* 814AD5F8 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_814AD5FC:
/* 814AD5FC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814AD600 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814AD604 | 7C 08 03 A6 */	mtlr r0
/* 814AD608 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814AD60C | 4E 80 00 20 */	blr
.endfn NWC24GetNumRegFriendInfos

# .text:0xF68 | 0x814AD610 | size: 0x90
.fn NWC24IsFriendInfoThere, global
/* 814AD610 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814AD614 | 7C 08 02 A6 */	mflr r0
/* 814AD618 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814AD61C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814AD620 | 7C 7F 1B 78 */	mr r31, r3
/* 814AD624 | 4B FF 2C D5 */	bl NWC24IsMsgLibOpened
/* 814AD628 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AD62C | 40 82 00 18 */	bne .L_814AD644
/* 814AD630 | 4B FF 2C DD */	bl NWC24IsMsgLibOpenedByTool
/* 814AD634 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AD638 | 40 82 00 0C */	bne .L_814AD644
/* 814AD63C | 38 60 FF F7 */	li r3, -0x9
/* 814AD640 | 48 00 00 4C */	b .L_814AD68C
.L_814AD644:
/* 814AD644 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814AD648 | 48 00 03 61 */	bl GetCachedFLHeader
/* 814AD64C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AD650 | 41 82 00 08 */	beq .L_814AD658
/* 814AD654 | 48 00 00 38 */	b .L_814AD68C
.L_814AD658:
/* 814AD658 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814AD65C | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814AD660 | 7C 1F 00 40 */	cmplw r31, r0
/* 814AD664 | 41 80 00 0C */	blt .L_814AD670
/* 814AD668 | 38 60 FF FD */	li r3, -0x3
/* 814AD66C | 48 00 00 20 */	b .L_814AD68C
.L_814AD670:
/* 814AD670 | 57 E0 18 38 */	slwi r0, r31, 3
/* 814AD674 | 7C 63 02 14 */	add r3, r3, r0
/* 814AD678 | 80 03 00 40 */	lwz r0, 0x40(r3)
/* 814AD67C | 80 63 00 44 */	lwz r3, 0x44(r3)
/* 814AD680 | 7C 60 03 78 */	or r0, r3, r0
/* 814AD684 | 30 60 FF FF */	subic r3, r0, 0x1
/* 814AD688 | 7C 63 01 10 */	subfe r3, r3, r0
.L_814AD68C:
/* 814AD68C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814AD690 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814AD694 | 7C 08 03 A6 */	mtlr r0
/* 814AD698 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814AD69C | 4E 80 00 20 */	blr
.endfn NWC24IsFriendInfoThere

# .text:0xFF8 | 0x814AD6A0 | size: 0x3C
.fn NWC24iOpenFriendList, global
/* 814AD6A0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814AD6A4 | 7C 08 02 A6 */	mflr r0
/* 814AD6A8 | 38 80 00 00 */	li r4, 0x0
/* 814AD6AC | 38 A0 03 60 */	li r5, 0x360
/* 814AD6B0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814AD6B4 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814AD6B8 | 38 63 2A 00 */	addi r3, r3, 0x2a00
/* 814AD6BC | 90 61 00 08 */	stw r3, 0x8(r1)
/* 814AD6C0 | 4B FE F7 C5 */	bl Mail_memset
/* 814AD6C4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814AD6C8 | 48 00 02 E1 */	bl GetCachedFLHeader
/* 814AD6CC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814AD6D0 | 7C 08 03 A6 */	mtlr r0
/* 814AD6D4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814AD6D8 | 4E 80 00 20 */	blr
.endfn NWC24iOpenFriendList

# .text:0x1034 | 0x814AD6DC | size: 0x84
.fn NWC24iInitFriendList, global
/* 814AD6DC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814AD6E0 | 7C 08 02 A6 */	mflr r0
/* 814AD6E4 | 38 80 00 00 */	li r4, 0x0
/* 814AD6E8 | 38 A0 03 60 */	li r5, 0x360
/* 814AD6EC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814AD6F0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814AD6F4 | 7C 7F 1B 78 */	mr r31, r3
/* 814AD6F8 | 80 CD AD A0 */	lwz r6, NWC24WorkP_81698DE0@sda21(r0)
/* 814AD6FC | 38 66 2A 00 */	addi r3, r6, 0x2a00
/* 814AD700 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 814AD704 | 4B FE F7 81 */	bl Mail_memset
/* 814AD708 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814AD70C | 48 00 02 9D */	bl GetCachedFLHeader
/* 814AD710 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AD714 | 40 82 00 10 */	bne .L_814AD724
/* 814AD718 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814AD71C | 40 82 00 08 */	bne .L_814AD724
/* 814AD720 | 48 00 00 2C */	b .L_814AD74C
.L_814AD724:
/* 814AD724 | 2C 03 FF E5 */	cmpwi r3, -0x1b
/* 814AD728 | 40 82 00 20 */	bne .L_814AD748
/* 814AD72C | 38 61 00 0C */	addi r3, r1, 0xc
/* 814AD730 | 48 00 02 79 */	bl GetCachedFLHeader
/* 814AD734 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814AD738 | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 814AD73C | 28 00 00 02 */	cmplwi r0, 0x2
/* 814AD740 | 40 81 00 08 */	ble .L_814AD748
/* 814AD744 | 48 00 00 08 */	b .L_814AD74C
.L_814AD748:
/* 814AD748 | 48 00 00 19 */	bl NWC24iCreateFriendList
.L_814AD74C:
/* 814AD74C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814AD750 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814AD754 | 7C 08 03 A6 */	mtlr r0
/* 814AD758 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814AD75C | 4E 80 00 20 */	blr
.endfn NWC24iInitFriendList

# .text:0x10B8 | 0x814AD760 | size: 0x130
.fn NWC24iCreateFriendList, global
/* 814AD760 | 94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 814AD764 | 7C 08 02 A6 */	mflr r0
/* 814AD768 | 38 80 00 00 */	li r4, 0x0
/* 814AD76C | 38 A0 03 60 */	li r5, 0x360
/* 814AD770 | 90 01 00 C4 */	stw r0, 0xc4(r1)
/* 814AD774 | 93 E1 00 BC */	stw r31, 0xbc(r1)
/* 814AD778 | 93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 814AD77C | 93 A1 00 B4 */	stw r29, 0xb4(r1)
/* 814AD780 | 93 81 00 B0 */	stw r28, 0xb0(r1)
/* 814AD784 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814AD788 | 3B A3 2A 00 */	addi r29, r3, 0x2a00
/* 814AD78C | 3B 83 04 00 */	addi r28, r3, 0x400
/* 814AD790 | 7F A3 EB 78 */	mr r3, r29
/* 814AD794 | 4B FE F6 F1 */	bl Mail_memset
/* 814AD798 | 7F 83 E3 78 */	mr r3, r28
/* 814AD79C | 38 80 00 00 */	li r4, 0x0
/* 814AD7A0 | 38 A0 01 40 */	li r5, 0x140
/* 814AD7A4 | 4B FE F6 E1 */	bl Mail_memset
/* 814AD7A8 | 3C 60 57 63 */	lis r3, 0x5763
/* 814AD7AC | 38 80 00 02 */	li r4, 0x2
/* 814AD7B0 | 38 63 46 6C */	addi r3, r3, 0x466c
/* 814AD7B4 | 38 00 00 64 */	li r0, 0x64
/* 814AD7B8 | 90 7D 00 00 */	stw r3, 0x0(r29)
/* 814AD7BC | 3B E0 00 00 */	li r31, 0x0
/* 814AD7C0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814AD7C4 | 38 A0 00 01 */	li r5, 0x1
/* 814AD7C8 | 90 9D 00 04 */	stw r4, 0x4(r29)
/* 814AD7CC | 90 1D 00 08 */	stw r0, 0x8(r29)
/* 814AD7D0 | 93 FD 00 0C */	stw r31, 0xc(r29)
/* 814AD7D4 | 93 FD 00 10 */	stw r31, 0x10(r29)
/* 814AD7D8 | 93 FD 00 14 */	stw r31, 0x14(r29)
/* 814AD7DC | 93 FD 00 18 */	stw r31, 0x18(r29)
/* 814AD7E0 | 93 FD 00 1C */	stw r31, 0x1c(r29)
/* 814AD7E4 | 80 8D 9C 68 */	lwz r4, FLFilePath@sda21(r0)
/* 814AD7E8 | 4B FF 04 21 */	bl NWC24FOpen
/* 814AD7EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AD7F0 | 41 82 00 08 */	beq .L_814AD7F8
/* 814AD7F4 | 48 00 00 7C */	b .L_814AD870
.L_814AD7F8:
/* 814AD7F8 | 7F A3 EB 78 */	mr r3, r29
/* 814AD7FC | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814AD800 | 38 80 03 60 */	li r4, 0x360
/* 814AD804 | 4B FF 0C B1 */	bl NWC24FWrite
/* 814AD808 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AD80C | 7C 7E 1B 78 */	mr r30, r3
/* 814AD810 | 41 82 00 08 */	beq .L_814AD818
/* 814AD814 | 93 FD 00 08 */	stw r31, 0x8(r29)
.L_814AD818:
/* 814AD818 | 3B E0 00 00 */	li r31, 0x0
/* 814AD81C | 48 00 00 24 */	b .L_814AD840
.L_814AD820:
/* 814AD820 | 7F 83 E3 78 */	mr r3, r28
/* 814AD824 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814AD828 | 38 80 01 40 */	li r4, 0x140
/* 814AD82C | 4B FF 0C 89 */	bl NWC24FWrite
/* 814AD830 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AD834 | 7C 7E 1B 78 */	mr r30, r3
/* 814AD838 | 40 82 00 14 */	bne .L_814AD84C
/* 814AD83C | 3B FF 00 01 */	addi r31, r31, 0x1
.L_814AD840:
/* 814AD840 | 80 1D 00 08 */	lwz r0, 0x8(r29)
/* 814AD844 | 7C 1F 00 40 */	cmplw r31, r0
/* 814AD848 | 41 80 FF D8 */	blt .L_814AD820
.L_814AD84C:
/* 814AD84C | 38 61 00 08 */	addi r3, r1, 0x8
/* 814AD850 | 4B FF 07 0D */	bl NWC24FClose
/* 814AD854 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814AD858 | 41 82 00 08 */	beq .L_814AD860
/* 814AD85C | 7F C3 F3 78 */	mr r3, r30
.L_814AD860:
/* 814AD860 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AD864 | 41 82 00 08 */	beq .L_814AD86C
/* 814AD868 | 48 00 00 08 */	b .L_814AD870
.L_814AD86C:
/* 814AD86C | 38 60 00 00 */	li r3, 0x0
.L_814AD870:
/* 814AD870 | 80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 814AD874 | 83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 814AD878 | 83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 814AD87C | 83 A1 00 B4 */	lwz r29, 0xb4(r1)
/* 814AD880 | 83 81 00 B0 */	lwz r28, 0xb0(r1)
/* 814AD884 | 7C 08 03 A6 */	mtlr r0
/* 814AD888 | 38 21 00 C0 */	addi r1, r1, 0xc0
/* 814AD88C | 4E 80 00 20 */	blr
.endfn NWC24iCreateFriendList

# .text:0x11E8 | 0x814AD890 | size: 0x118
.fn NWC24iReadFriendInfoRaw, global
/* 814AD890 | 94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 814AD894 | 7C 08 02 A6 */	mflr r0
/* 814AD898 | 90 01 00 B4 */	stw r0, 0xb4(r1)
/* 814AD89C | 93 E1 00 AC */	stw r31, 0xac(r1)
/* 814AD8A0 | 7C 9F 23 78 */	mr r31, r4
/* 814AD8A4 | 93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 814AD8A8 | 7C 7E 1B 78 */	mr r30, r3
/* 814AD8AC | 4B FF 2A 4D */	bl NWC24IsMsgLibOpened
/* 814AD8B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AD8B4 | 40 82 00 18 */	bne .L_814AD8CC
/* 814AD8B8 | 4B FF 2A 55 */	bl NWC24IsMsgLibOpenedByTool
/* 814AD8BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AD8C0 | 40 82 00 0C */	bne .L_814AD8CC
/* 814AD8C4 | 38 60 FF F7 */	li r3, -0x9
/* 814AD8C8 | 48 00 00 C8 */	b .L_814AD990
.L_814AD8CC:
/* 814AD8CC | 57 C0 06 FF */	clrlwi. r0, r30, 27
/* 814AD8D0 | 41 82 00 0C */	beq .L_814AD8DC
/* 814AD8D4 | 38 60 FF E9 */	li r3, -0x17
/* 814AD8D8 | 48 00 00 B8 */	b .L_814AD990
.L_814AD8DC:
/* 814AD8DC | 38 61 00 08 */	addi r3, r1, 0x8
/* 814AD8E0 | 48 00 00 C9 */	bl GetCachedFLHeader
/* 814AD8E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AD8E8 | 41 82 00 08 */	beq .L_814AD8F0
/* 814AD8EC | 48 00 00 A4 */	b .L_814AD990
.L_814AD8F0:
/* 814AD8F0 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814AD8F4 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814AD8F8 | 7C 1F 00 40 */	cmplw r31, r0
/* 814AD8FC | 41 80 00 0C */	blt .L_814AD908
/* 814AD900 | 38 60 FF FD */	li r3, -0x3
/* 814AD904 | 48 00 00 8C */	b .L_814AD990
.L_814AD908:
/* 814AD908 | 57 E0 18 38 */	slwi r0, r31, 3
/* 814AD90C | 7C 63 02 14 */	add r3, r3, r0
/* 814AD910 | 80 03 00 40 */	lwz r0, 0x40(r3)
/* 814AD914 | 80 63 00 44 */	lwz r3, 0x44(r3)
/* 814AD918 | 7C 60 03 79 */	or. r0, r3, r0
/* 814AD91C | 40 82 00 0C */	bne .L_814AD928
/* 814AD920 | 38 60 FF FB */	li r3, -0x5
/* 814AD924 | 48 00 00 6C */	b .L_814AD990
.L_814AD928:
/* 814AD928 | 80 8D 9C 68 */	lwz r4, FLFilePath@sda21(r0)
/* 814AD92C | 38 61 00 0C */	addi r3, r1, 0xc
/* 814AD930 | 38 A0 00 0A */	li r5, 0xa
/* 814AD934 | 4B FF 02 D5 */	bl NWC24FOpen
/* 814AD938 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AD93C | 41 82 00 08 */	beq .L_814AD944
/* 814AD940 | 48 00 00 50 */	b .L_814AD990
.L_814AD944:
/* 814AD944 | 1C 9F 01 40 */	mulli r4, r31, 0x140
/* 814AD948 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814AD94C | 38 A0 00 00 */	li r5, 0x0
/* 814AD950 | 38 84 03 60 */	addi r4, r4, 0x360
/* 814AD954 | 4B FF 07 A1 */	bl NWC24FSeek
/* 814AD958 | 7F C3 F3 78 */	mr r3, r30
/* 814AD95C | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814AD960 | 38 80 01 40 */	li r4, 0x140
/* 814AD964 | 4B FF 09 81 */	bl NWC24FRead
/* 814AD968 | 7C 7F 1B 78 */	mr r31, r3
/* 814AD96C | 38 61 00 0C */	addi r3, r1, 0xc
/* 814AD970 | 4B FF 05 ED */	bl NWC24FClose
/* 814AD974 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814AD978 | 41 82 00 08 */	beq .L_814AD980
/* 814AD97C | 7F E3 FB 78 */	mr r3, r31
.L_814AD980:
/* 814AD980 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AD984 | 41 82 00 08 */	beq .L_814AD98C
/* 814AD988 | 48 00 00 08 */	b .L_814AD990
.L_814AD98C:
/* 814AD98C | 38 60 00 00 */	li r3, 0x0
.L_814AD990:
/* 814AD990 | 80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 814AD994 | 83 E1 00 AC */	lwz r31, 0xac(r1)
/* 814AD998 | 83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 814AD99C | 7C 08 03 A6 */	mtlr r0
/* 814AD9A0 | 38 21 00 B0 */	addi r1, r1, 0xb0
/* 814AD9A4 | 4E 80 00 20 */	blr
.endfn NWC24iReadFriendInfoRaw

# .text:0x1300 | 0x814AD9A8 | size: 0xE0
.fn GetCachedFLHeader, local
/* 814AD9A8 | 94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 814AD9AC | 7C 08 02 A6 */	mflr r0
/* 814AD9B0 | 90 01 00 B4 */	stw r0, 0xb4(r1)
/* 814AD9B4 | 93 E1 00 AC */	stw r31, 0xac(r1)
/* 814AD9B8 | 93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 814AD9BC | 7C 7E 1B 78 */	mr r30, r3
/* 814AD9C0 | 80 8D AD A0 */	lwz r4, NWC24WorkP_81698DE0@sda21(r0)
/* 814AD9C4 | 38 84 2A 00 */	addi r4, r4, 0x2a00
/* 814AD9C8 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 814AD9CC | 80 64 00 00 */	lwz r3, 0x0(r4)
/* 814AD9D0 | 3C 03 A8 9D */	subis r0, r3, 0x5763
/* 814AD9D4 | 28 00 46 6C */	cmplwi r0, 0x466c
/* 814AD9D8 | 41 82 00 94 */	beq .L_814ADA6C
/* 814AD9DC | 80 8D 9C 68 */	lwz r4, FLFilePath@sda21(r0)
/* 814AD9E0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814AD9E4 | 38 A0 00 02 */	li r5, 0x2
/* 814AD9E8 | 4B FF 02 21 */	bl NWC24FOpen
/* 814AD9EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814AD9F0 | 41 82 00 08 */	beq .L_814AD9F8
/* 814AD9F4 | 48 00 00 7C */	b .L_814ADA70
.L_814AD9F8:
/* 814AD9F8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814AD9FC | 38 80 00 00 */	li r4, 0x0
/* 814ADA00 | 38 A0 00 00 */	li r5, 0x0
/* 814ADA04 | 4B FF 06 F1 */	bl NWC24FSeek
/* 814ADA08 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 814ADA0C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814ADA10 | 38 80 03 60 */	li r4, 0x360
/* 814ADA14 | 4B FF 08 D1 */	bl NWC24FRead
/* 814ADA18 | 7C 7F 1B 78 */	mr r31, r3
/* 814ADA1C | 38 61 00 08 */	addi r3, r1, 0x8
/* 814ADA20 | 4B FF 05 3D */	bl NWC24FClose
/* 814ADA24 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814ADA28 | 41 82 00 08 */	beq .L_814ADA30
/* 814ADA2C | 7F E3 FB 78 */	mr r3, r31
.L_814ADA30:
/* 814ADA30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ADA34 | 41 82 00 08 */	beq .L_814ADA3C
/* 814ADA38 | 48 00 00 38 */	b .L_814ADA70
.L_814ADA3C:
/* 814ADA3C | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 814ADA40 | 80 64 00 00 */	lwz r3, 0x0(r4)
/* 814ADA44 | 3C 03 A8 9D */	subis r0, r3, 0x5763
/* 814ADA48 | 28 00 46 6C */	cmplwi r0, 0x466c
/* 814ADA4C | 41 82 00 0C */	beq .L_814ADA58
/* 814ADA50 | 38 60 FF F2 */	li r3, -0xe
/* 814ADA54 | 48 00 00 1C */	b .L_814ADA70
.L_814ADA58:
/* 814ADA58 | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 814ADA5C | 28 00 00 02 */	cmplwi r0, 0x2
/* 814ADA60 | 41 82 00 0C */	beq .L_814ADA6C
/* 814ADA64 | 38 60 FF E5 */	li r3, -0x1b
/* 814ADA68 | 48 00 00 08 */	b .L_814ADA70
.L_814ADA6C:
/* 814ADA6C | 38 60 00 00 */	li r3, 0x0
.L_814ADA70:
/* 814ADA70 | 80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 814ADA74 | 83 E1 00 AC */	lwz r31, 0xac(r1)
/* 814ADA78 | 83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 814ADA7C | 7C 08 03 A6 */	mtlr r0
/* 814ADA80 | 38 21 00 B0 */	addi r1, r1, 0xb0
/* 814ADA84 | 4E 80 00 20 */	blr
.endfn GetCachedFLHeader

# .text:0x13E0 | 0x814ADA88 | size: 0x158
.fn NWC24CheckPublicMailAddr, global
/* 814ADA88 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814ADA8C | 7C 08 02 A6 */	mflr r0
/* 814ADA90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ADA94 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814ADA98 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814ADA9C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814ADAA0 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814ADAA4 | 7C 7D 1B 78 */	mr r29, r3
/* 814ADAA8 | 40 82 00 0C */	bne .L_814ADAB4
/* 814ADAAC | 38 60 FF FB */	li r3, -0x5
/* 814ADAB0 | 48 00 01 14 */	b .L_814ADBC4
.L_814ADAB4:
/* 814ADAB4 | 38 80 01 00 */	li r4, 0x100
/* 814ADAB8 | 4B FE F2 E9 */	bl STD_strnlen
/* 814ADABC | 2C 03 01 00 */	cmpwi r3, 0x100
/* 814ADAC0 | 40 82 00 0C */	bne .L_814ADACC
/* 814ADAC4 | 38 60 FF E7 */	li r3, -0x19
/* 814ADAC8 | 48 00 00 FC */	b .L_814ADBC4
.L_814ADACC:
/* 814ADACC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ADAD0 | 40 82 00 0C */	bne .L_814ADADC
/* 814ADAD4 | 38 60 FF E8 */	li r3, -0x18
/* 814ADAD8 | 48 00 00 EC */	b .L_814ADBC4
.L_814ADADC:
/* 814ADADC | 7F A4 EB 78 */	mr r4, r29
/* 814ADAE0 | 39 00 00 00 */	li r8, 0x0
/* 814ADAE4 | 3B C0 00 00 */	li r30, 0x0
/* 814ADAE8 | 3C C0 81 62 */	lis r6, specials$2166@ha
/* 814ADAEC | 38 00 00 0B */	li r0, 0xb
/* 814ADAF0 | 48 00 00 74 */	b .L_814ADB64
.L_814ADAF4:
/* 814ADAF4 | 88 A4 00 00 */	lbz r5, 0x0(r4)
/* 814ADAF8 | 7C A9 07 74 */	extsb r9, r5
/* 814ADAFC | 2C 09 00 40 */	cmpwi r9, 0x40
/* 814ADB00 | 40 82 00 1C */	bne .L_814ADB1C
/* 814ADB04 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814ADB08 | 40 82 00 0C */	bne .L_814ADB14
/* 814ADB0C | 38 60 FF E8 */	li r3, -0x18
/* 814ADB10 | 48 00 00 B4 */	b .L_814ADBC4
.L_814ADB14:
/* 814ADB14 | 39 00 00 01 */	li r8, 0x1
/* 814ADB18 | 48 00 00 54 */	b .L_814ADB6C
.L_814ADB1C:
/* 814ADB1C | 2C 09 00 20 */	cmpwi r9, 0x20
/* 814ADB20 | 40 81 00 0C */	ble .L_814ADB2C
/* 814ADB24 | 2C 09 00 7F */	cmpwi r9, 0x7f
/* 814ADB28 | 41 80 00 0C */	blt .L_814ADB34
.L_814ADB2C:
/* 814ADB2C | 38 60 FF E8 */	li r3, -0x18
/* 814ADB30 | 48 00 00 94 */	b .L_814ADBC4
.L_814ADB34:
/* 814ADB34 | 38 E6 8D 70 */	addi r7, r6, specials$2166@l
/* 814ADB38 | 7C 09 03 A6 */	mtctr r0
.L_814ADB3C:
/* 814ADB3C | 88 A7 00 00 */	lbz r5, 0x0(r7)
/* 814ADB40 | 7C A5 07 74 */	extsb r5, r5
/* 814ADB44 | 7C 09 28 00 */	cmpw r9, r5
/* 814ADB48 | 40 82 00 0C */	bne .L_814ADB54
/* 814ADB4C | 38 60 FF E8 */	li r3, -0x18
/* 814ADB50 | 48 00 00 74 */	b .L_814ADBC4
.L_814ADB54:
/* 814ADB54 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 814ADB58 | 42 00 FF E4 */	bdnz .L_814ADB3C
/* 814ADB5C | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814ADB60 | 38 84 00 01 */	addi r4, r4, 0x1
.L_814ADB64:
/* 814ADB64 | 7C 1E 18 00 */	cmpw r30, r3
/* 814ADB68 | 41 80 FF 8C */	blt .L_814ADAF4
.L_814ADB6C:
/* 814ADB6C | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814ADB70 | 40 82 00 0C */	bne .L_814ADB7C
/* 814ADB74 | 38 60 FF E8 */	li r3, -0x18
/* 814ADB78 | 48 00 00 4C */	b .L_814ADBC4
.L_814ADB7C:
/* 814ADB7C | 7F FE 18 50 */	subf r31, r30, r3
/* 814ADB80 | 7C 7E EA 14 */	add r3, r30, r29
/* 814ADB84 | 7F E4 FB 78 */	mr r4, r31
/* 814ADB88 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814ADB8C | 48 00 00 55 */	bl CheckHostName
/* 814ADB90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ADB94 | 40 80 00 0C */	bge .L_814ADBA0
/* 814ADB98 | 38 60 FF E8 */	li r3, -0x18
/* 814ADB9C | 48 00 00 28 */	b .L_814ADBC4
.L_814ADBA0:
/* 814ADBA0 | 4B FF 1E 25 */	bl NWC24GetAccountDomain
/* 814ADBA4 | 7C 64 1B 78 */	mr r4, r3
/* 814ADBA8 | 7C 7D F2 14 */	add r3, r29, r30
/* 814ADBAC | 38 BF 00 01 */	addi r5, r31, 0x1
/* 814ADBB0 | 4B FE FF ED */	bl Mail_strnicmp
/* 814ADBB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ADBB8 | 38 60 00 00 */	li r3, 0x0
/* 814ADBBC | 40 82 00 08 */	bne .L_814ADBC4
/* 814ADBC0 | 38 60 FF F9 */	li r3, -0x7
.L_814ADBC4:
/* 814ADBC4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814ADBC8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814ADBCC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814ADBD0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814ADBD4 | 7C 08 03 A6 */	mtlr r0
/* 814ADBD8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814ADBDC | 4E 80 00 20 */	blr
.endfn NWC24CheckPublicMailAddr

# .text:0x1538 | 0x814ADBE0 | size: 0x118
.fn CheckHostName, local
/* 814ADBE0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814ADBE4 | 40 82 00 0C */	bne .L_814ADBF0
/* 814ADBE8 | 38 60 FF FF */	li r3, -0x1
/* 814ADBEC | 4E 80 00 20 */	blr
.L_814ADBF0:
/* 814ADBF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814ADBF4 | 40 82 00 0C */	bne .L_814ADC00
/* 814ADBF8 | 38 60 FF FE */	li r3, -0x2
/* 814ADBFC | 4E 80 00 20 */	blr
.L_814ADC00:
/* 814ADC00 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 814ADC04 | 7C 00 07 75 */	extsb. r0, r0
/* 814ADC08 | 40 82 00 0C */	bne .L_814ADC14
/* 814ADC0C | 38 60 FF FD */	li r3, -0x3
/* 814ADC10 | 4E 80 00 20 */	blr
.L_814ADC14:
/* 814ADC14 | 2C 00 00 2E */	cmpwi r0, 0x2e
/* 814ADC18 | 40 82 00 0C */	bne .L_814ADC24
/* 814ADC1C | 38 60 FF FC */	li r3, -0x4
/* 814ADC20 | 4E 80 00 20 */	blr
.L_814ADC24:
/* 814ADC24 | 7C 65 1B 78 */	mr r5, r3
/* 814ADC28 | 38 E0 00 00 */	li r7, 0x0
/* 814ADC2C | 38 C0 00 00 */	li r6, 0x0
/* 814ADC30 | 7C 89 03 A6 */	mtctr r4
/* 814ADC34 | 28 04 00 00 */	cmplwi r4, 0x0
/* 814ADC38 | 40 81 00 88 */	ble .L_814ADCC0
.L_814ADC3C:
/* 814ADC3C | 88 05 00 00 */	lbz r0, 0x0(r5)
/* 814ADC40 | 7C 00 07 75 */	extsb. r0, r0
/* 814ADC44 | 41 82 00 7C */	beq .L_814ADCC0
/* 814ADC48 | 2C 00 00 2E */	cmpwi r0, 0x2e
/* 814ADC4C | 40 82 00 1C */	bne .L_814ADC68
/* 814ADC50 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814ADC54 | 41 82 00 0C */	beq .L_814ADC60
/* 814ADC58 | 38 60 FF FB */	li r3, -0x5
/* 814ADC5C | 4E 80 00 20 */	blr
.L_814ADC60:
/* 814ADC60 | 38 E0 00 01 */	li r7, 0x1
/* 814ADC64 | 48 00 00 50 */	b .L_814ADCB4
.L_814ADC68:
/* 814ADC68 | 2C 00 00 30 */	cmpwi r0, 0x30
/* 814ADC6C | 41 80 00 0C */	blt .L_814ADC78
/* 814ADC70 | 2C 00 00 39 */	cmpwi r0, 0x39
/* 814ADC74 | 40 81 00 3C */	ble .L_814ADCB0
.L_814ADC78:
/* 814ADC78 | 2C 00 00 61 */	cmpwi r0, 0x61
/* 814ADC7C | 41 80 00 0C */	blt .L_814ADC88
/* 814ADC80 | 2C 00 00 7A */	cmpwi r0, 0x7a
/* 814ADC84 | 40 81 00 2C */	ble .L_814ADCB0
.L_814ADC88:
/* 814ADC88 | 2C 00 00 41 */	cmpwi r0, 0x41
/* 814ADC8C | 41 80 00 0C */	blt .L_814ADC98
/* 814ADC90 | 2C 00 00 5A */	cmpwi r0, 0x5a
/* 814ADC94 | 40 81 00 1C */	ble .L_814ADCB0
.L_814ADC98:
/* 814ADC98 | 2C 00 00 2D */	cmpwi r0, 0x2d
/* 814ADC9C | 41 82 00 14 */	beq .L_814ADCB0
/* 814ADCA0 | 2C 00 00 5F */	cmpwi r0, 0x5f
/* 814ADCA4 | 41 82 00 0C */	beq .L_814ADCB0
/* 814ADCA8 | 38 60 FF FA */	li r3, -0x6
/* 814ADCAC | 4E 80 00 20 */	blr
.L_814ADCB0:
/* 814ADCB0 | 38 E0 00 00 */	li r7, 0x0
.L_814ADCB4:
/* 814ADCB4 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 814ADCB8 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814ADCBC | 42 00 FF 80 */	bdnz .L_814ADC3C
.L_814ADCC0:
/* 814ADCC0 | 7C 06 20 40 */	cmplw r6, r4
/* 814ADCC4 | 40 82 00 0C */	bne .L_814ADCD0
/* 814ADCC8 | 38 60 FF F9 */	li r3, -0x7
/* 814ADCCC | 4E 80 00 20 */	blr
.L_814ADCD0:
/* 814ADCD0 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814ADCD4 | 40 81 00 1C */	ble .L_814ADCF0
/* 814ADCD8 | 7C 66 1A 14 */	add r3, r6, r3
/* 814ADCDC | 88 03 FF FF */	lbz r0, -0x1(r3)
/* 814ADCE0 | 2C 00 00 2E */	cmpwi r0, 0x2e
/* 814ADCE4 | 40 82 00 0C */	bne .L_814ADCF0
/* 814ADCE8 | 38 60 FF F8 */	li r3, -0x8
/* 814ADCEC | 4E 80 00 20 */	blr
.L_814ADCF0:
/* 814ADCF0 | 38 60 00 00 */	li r3, 0x0
/* 814ADCF4 | 4E 80 00 20 */	blr
.endfn CheckHostName

# 0x8166E160..0x8166E180 | size: 0x20
.data
.balign 8

# .data:0x0 | 0x8166E160 | size: 0x20
.obj lbl_8166E160, global
	.4byte 0x2F736861
	.4byte 0x72656432
	.4byte 0x2F776332
	.4byte 0x342F6E77
	.4byte 0x63323466
	.4byte 0x6C2E6269
	.4byte 0x6E000000
	.4byte 0x00000000
.endobj lbl_8166E160

# 0x81697CA8..0x81697CB0 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697CA8 | size: 0x4
.obj FLFilePath, local
	.4byte lbl_8166E160
.endobj FLFilePath

# .sdata:0x4 | 0x81697CAC | size: 0x4
.obj gap_11_81697CAC_sdata, global
.hidden gap_11_81697CAC_sdata
	.4byte 0x00000000
.endobj gap_11_81697CAC_sdata
