.include "macros.inc"
.file "RFL_NANDLoader.c"

# 0x81330818..0x81330898 | size: 0x80
.section extab, "a"
.balign 4

# extab:0x0 | 0x81330818 | size: 0x8
.obj "@etb_81330818", local
.hidden "@etb_81330818"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_81330818"

# extab:0x8 | 0x81330820 | size: 0x8
.obj "@etb_81330820", local
.hidden "@etb_81330820"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_81330820"

# extab:0x10 | 0x81330828 | size: 0x8
.obj "@etb_81330828", local
.hidden "@etb_81330828"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_81330828"

# extab:0x18 | 0x81330830 | size: 0x8
.obj "@etb_81330830", local
.hidden "@etb_81330830"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_81330830"

# extab:0x20 | 0x81330838 | size: 0x8
.obj "@etb_81330838", local
.hidden "@etb_81330838"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_81330838"

# extab:0x28 | 0x81330840 | size: 0x8
.obj "@etb_81330840", local
.hidden "@etb_81330840"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_81330840"

# extab:0x30 | 0x81330848 | size: 0x8
.obj "@etb_81330848", local
.hidden "@etb_81330848"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_81330848"

# extab:0x38 | 0x81330850 | size: 0x8
.obj "@etb_81330850", local
.hidden "@etb_81330850"
	.4byte 0x30080000
	.4byte 0x00000000
.endobj "@etb_81330850"

# extab:0x40 | 0x81330858 | size: 0x8
.obj "@etb_81330858", local
.hidden "@etb_81330858"
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_81330858"

# extab:0x48 | 0x81330860 | size: 0x8
.obj "@etb_81330860", local
.hidden "@etb_81330860"
	.4byte 0x28080000
	.4byte 0x00000000
.endobj "@etb_81330860"

# extab:0x50 | 0x81330868 | size: 0x8
.obj "@etb_81330868", local
.hidden "@etb_81330868"
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_81330868"

# extab:0x58 | 0x81330870 | size: 0x8
.obj "@etb_81330870", local
.hidden "@etb_81330870"
	.4byte 0x28080000
	.4byte 0x00000000
.endobj "@etb_81330870"

# extab:0x60 | 0x81330878 | size: 0x8
.obj "@etb_81330878", local
.hidden "@etb_81330878"
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_81330878"

# extab:0x68 | 0x81330880 | size: 0x8
.obj "@etb_81330880", local
.hidden "@etb_81330880"
	.4byte 0x28080000
	.4byte 0x00000000
.endobj "@etb_81330880"

# extab:0x70 | 0x81330888 | size: 0x8
.obj "@etb_81330888", local
.hidden "@etb_81330888"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_81330888"

# extab:0x78 | 0x81330890 | size: 0x8
.obj "@etb_81330890", local
.hidden "@etb_81330890"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_81330890"

# 0x813315B4..0x81331674 | size: 0xC0
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x813315B4 | size: 0xC
.obj "@eti_813315B4", local
.hidden "@eti_813315B4"
	.4byte RFLiInitLoader
	.4byte 0x00000114
	.4byte "@etb_81330818"
.endobj "@eti_813315B4"

# extabindex:0xC | 0x813315C0 | size: 0xC
.obj "@eti_813315C0", local
.hidden "@eti_813315C0"
	.4byte parseOnmemoryRes_
	.4byte 0x00000178
	.4byte "@etb_81330820"
.endobj "@eti_813315C0"

# extabindex:0x18 | 0x813315CC | size: 0xC
.obj "@eti_813315CC", local
.hidden "@eti_813315CC"
	.4byte loadResRead2ndcallback_
	.4byte 0x00000120
	.4byte "@etb_81330828"
.endobj "@eti_813315CC"

# extabindex:0x24 | 0x813315D8 | size: 0xC
.obj "@eti_813315D8", local
.hidden "@eti_813315D8"
	.4byte loadResRead1stcallback_
	.4byte 0x000000EC
	.4byte "@etb_81330830"
.endobj "@eti_813315D8"

# extabindex:0x30 | 0x813315E4 | size: 0xC
.obj "@eti_813315E4", local
.hidden "@eti_813315E4"
	.4byte loadResGetlengthcallback_
	.4byte 0x000000A4
	.4byte "@etb_81330838"
.endobj "@eti_813315E4"

# extabindex:0x3C | 0x813315F0 | size: 0xC
.obj "@eti_813315F0", local
.hidden "@eti_813315F0"
	.4byte loadResOpencallback_
	.4byte 0x00000070
	.4byte "@etb_81330840"
.endobj "@eti_813315F0"

# extabindex:0x48 | 0x813315FC | size: 0xC
.obj "@eti_813315FC", local
.hidden "@eti_813315FC"
	.4byte RFLiLoadResourceHeaderAsync
	.4byte 0x00000094
	.4byte "@etb_81330848"
.endobj "@eti_813315FC"

# extabindex:0x54 | 0x81331608 | size: 0xC
.obj "@eti_81331608", local
.hidden "@eti_81331608"
	.4byte getNANDFile_
	.4byte 0x00000184
	.4byte "@etb_81330850"
.endobj "@eti_81331608"

# extabindex:0x60 | 0x81331614 | size: 0xC
.obj "@eti_81331614", local
.hidden "@eti_81331614"
	.4byte RFLiGetTexSize
	.4byte 0x0000016C
	.4byte "@etb_81330858"
.endobj "@eti_81331614"

# extabindex:0x6C | 0x81331620 | size: 0xC
.obj "@eti_81331620", local
.hidden "@eti_81331620"
	.4byte RFLiLoadTexture
	.4byte 0x00000124
	.4byte "@etb_81330860"
.endobj "@eti_81331620"

# extabindex:0x78 | 0x8133162C | size: 0xC
.obj "@eti_8133162C", local
.hidden "@eti_8133162C"
	.4byte RFLiGetShpTexSize
	.4byte 0x0000016C
	.4byte "@etb_81330868"
.endobj "@eti_8133162C"

# extabindex:0x84 | 0x81331638 | size: 0xC
.obj "@eti_81331638", local
.hidden "@eti_81331638"
	.4byte RFLiLoadShpTexture
	.4byte 0x00000124
	.4byte "@etb_81330870"
.endobj "@eti_81331638"

# extabindex:0x90 | 0x81331644 | size: 0xC
.obj "@eti_81331644", local
.hidden "@eti_81331644"
	.4byte RFLiGetShapeSize
	.4byte 0x0000016C
	.4byte "@etb_81330878"
.endobj "@eti_81331644"

# extabindex:0x9C | 0x81331650 | size: 0xC
.obj "@eti_81331650", local
.hidden "@eti_81331650"
	.4byte RFLiLoadShape
	.4byte 0x00000124
	.4byte "@etb_81330880"
.endobj "@eti_81331650"

# extabindex:0xA8 | 0x8133165C | size: 0xC
.obj "@eti_8133165C", local
.hidden "@eti_8133165C"
	.4byte RFLFreeCachedResource
	.4byte 0x0000006C
	.4byte "@etb_81330888"
.endobj "@eti_8133165C"

# extabindex:0xB4 | 0x81331668 | size: 0xC
.obj "@eti_81331668", local
.hidden "@eti_81331668"
	.4byte RFLIsResourceCached
	.4byte 0x00000048
	.4byte "@etb_81330890"
.endobj "@eti_81331668"

# 0x814DAF9C..0x814DBFC8 | size: 0x102C
.text
.balign 4

# .text:0x0 | 0x814DAF9C | size: 0x114
.fn RFLiInitLoader, global
/* 814DAF9C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814DAFA0 | 7C 08 02 A6 */	mflr r0
/* 814DAFA4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814DAFA8 | 4B FF FD 11 */	bl RFLiGetLoader
/* 814DAFAC | 38 00 00 00 */	li r0, 0x0
/* 814DAFB0 | B0 03 00 00 */	sth r0, 0x0(r3)
/* 814DAFB4 | B0 03 00 02 */	sth r0, 0x2(r3)
/* 814DAFB8 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 814DAFBC | B0 03 00 08 */	sth r0, 0x8(r3)
/* 814DAFC0 | B0 03 00 0A */	sth r0, 0xa(r3)
/* 814DAFC4 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 814DAFC8 | B0 03 00 10 */	sth r0, 0x10(r3)
/* 814DAFCC | B0 03 00 12 */	sth r0, 0x12(r3)
/* 814DAFD0 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 814DAFD4 | B0 03 00 18 */	sth r0, 0x18(r3)
/* 814DAFD8 | B0 03 00 1A */	sth r0, 0x1a(r3)
/* 814DAFDC | 90 03 00 1C */	stw r0, 0x1c(r3)
/* 814DAFE0 | B0 03 00 20 */	sth r0, 0x20(r3)
/* 814DAFE4 | B0 03 00 22 */	sth r0, 0x22(r3)
/* 814DAFE8 | 90 03 00 24 */	stw r0, 0x24(r3)
/* 814DAFEC | B0 03 00 28 */	sth r0, 0x28(r3)
/* 814DAFF0 | B0 03 00 2A */	sth r0, 0x2a(r3)
/* 814DAFF4 | 90 03 00 2C */	stw r0, 0x2c(r3)
/* 814DAFF8 | B0 03 00 30 */	sth r0, 0x30(r3)
/* 814DAFFC | B0 03 00 32 */	sth r0, 0x32(r3)
/* 814DB000 | 90 03 00 34 */	stw r0, 0x34(r3)
/* 814DB004 | B0 03 00 38 */	sth r0, 0x38(r3)
/* 814DB008 | B0 03 00 3A */	sth r0, 0x3a(r3)
/* 814DB00C | 90 03 00 3C */	stw r0, 0x3c(r3)
/* 814DB010 | B0 03 00 40 */	sth r0, 0x40(r3)
/* 814DB014 | B0 03 00 42 */	sth r0, 0x42(r3)
/* 814DB018 | 90 03 00 44 */	stw r0, 0x44(r3)
/* 814DB01C | B0 03 00 48 */	sth r0, 0x48(r3)
/* 814DB020 | B0 03 00 4A */	sth r0, 0x4a(r3)
/* 814DB024 | 90 03 00 4C */	stw r0, 0x4c(r3)
/* 814DB028 | B0 03 00 50 */	sth r0, 0x50(r3)
/* 814DB02C | B0 03 00 52 */	sth r0, 0x52(r3)
/* 814DB030 | 90 03 00 54 */	stw r0, 0x54(r3)
/* 814DB034 | B0 03 00 58 */	sth r0, 0x58(r3)
/* 814DB038 | B0 03 00 5A */	sth r0, 0x5a(r3)
/* 814DB03C | 90 03 00 5C */	stw r0, 0x5c(r3)
/* 814DB040 | B0 03 00 60 */	sth r0, 0x60(r3)
/* 814DB044 | B0 03 00 62 */	sth r0, 0x62(r3)
/* 814DB048 | 90 03 00 64 */	stw r0, 0x64(r3)
/* 814DB04C | B0 03 00 68 */	sth r0, 0x68(r3)
/* 814DB050 | B0 03 00 6A */	sth r0, 0x6a(r3)
/* 814DB054 | 90 03 00 6C */	stw r0, 0x6c(r3)
/* 814DB058 | B0 03 00 70 */	sth r0, 0x70(r3)
/* 814DB05C | B0 03 00 72 */	sth r0, 0x72(r3)
/* 814DB060 | 90 03 00 74 */	stw r0, 0x74(r3)
/* 814DB064 | B0 03 00 78 */	sth r0, 0x78(r3)
/* 814DB068 | B0 03 00 7A */	sth r0, 0x7a(r3)
/* 814DB06C | 90 03 00 7C */	stw r0, 0x7c(r3)
/* 814DB070 | B0 03 00 80 */	sth r0, 0x80(r3)
/* 814DB074 | B0 03 00 82 */	sth r0, 0x82(r3)
/* 814DB078 | 90 03 00 84 */	stw r0, 0x84(r3)
/* 814DB07C | B0 03 00 88 */	sth r0, 0x88(r3)
/* 814DB080 | B0 03 00 8A */	sth r0, 0x8a(r3)
/* 814DB084 | 90 03 00 8C */	stw r0, 0x8c(r3)
/* 814DB088 | 90 03 00 90 */	stw r0, 0x90(r3)
/* 814DB08C | 90 03 00 94 */	stw r0, 0x94(r3)
/* 814DB090 | 90 03 00 98 */	stw r0, 0x98(r3)
/* 814DB094 | B0 03 00 9C */	sth r0, 0x9c(r3)
/* 814DB098 | 90 03 00 A0 */	stw r0, 0xa0(r3)
/* 814DB09C | 90 03 00 A4 */	stw r0, 0xa4(r3)
/* 814DB0A0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814DB0A4 | 7C 08 03 A6 */	mtlr r0
/* 814DB0A8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814DB0AC | 4E 80 00 20 */	blr
.endfn RFLiInitLoader

# .text:0x114 | 0x814DB0B0 | size: 0x178
.fn parseOnmemoryRes_, local
/* 814DB0B0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814DB0B4 | 7C 08 02 A6 */	mflr r0
/* 814DB0B8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814DB0BC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814DB0C0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814DB0C4 | 4B FF FB F5 */	bl RFLiGetLoader
/* 814DB0C8 | 80 C3 00 94 */	lwz r6, 0x94(r3)
/* 814DB0CC | 38 00 00 03 */	li r0, 0x3
/* 814DB0D0 | 7C 64 1B 78 */	mr r4, r3
/* 814DB0D4 | 38 A0 00 00 */	li r5, 0x0
/* 814DB0D8 | A0 C6 00 02 */	lhz r6, 0x2(r6)
/* 814DB0DC | B0 C3 00 9C */	sth r6, 0x9c(r3)
/* 814DB0E0 | 7C 09 03 A6 */	mtctr r0
.L_814DB0E4:
/* 814DB0E4 | 38 05 00 01 */	addi r0, r5, 0x1
/* 814DB0E8 | 83 E3 00 94 */	lwz r31, 0x94(r3)
/* 814DB0EC | 54 0C 10 3A */	slwi r12, r0, 2
/* 814DB0F0 | 39 25 00 02 */	addi r9, r5, 0x2
/* 814DB0F4 | 7C 1F 60 2E */	lwzx r0, r31, r12
/* 814DB0F8 | 39 05 00 03 */	addi r8, r5, 0x3
/* 814DB0FC | 55 2A 10 3A */	slwi r10, r9, 2
/* 814DB100 | 38 E5 00 04 */	addi r7, r5, 0x4
/* 814DB104 | 7F DF 02 14 */	add r30, r31, r0
/* 814DB108 | 55 09 10 3A */	slwi r9, r8, 2
/* 814DB10C | A1 7E 00 00 */	lhz r11, 0x0(r30)
/* 814DB110 | 38 C5 00 05 */	addi r6, r5, 0x5
/* 814DB114 | 38 05 00 06 */	addi r0, r5, 0x6
/* 814DB118 | 54 E8 10 3A */	slwi r8, r7, 2
/* 814DB11C | B1 64 00 00 */	sth r11, 0x0(r4)
/* 814DB120 | 54 C7 10 3A */	slwi r7, r6, 2
/* 814DB124 | 54 06 10 3A */	slwi r6, r0, 2
/* 814DB128 | 38 A5 00 06 */	addi r5, r5, 0x6
/* 814DB12C | A0 1E 00 02 */	lhz r0, 0x2(r30)
/* 814DB130 | B0 04 00 02 */	sth r0, 0x2(r4)
/* 814DB134 | 7D 7F 60 2E */	lwzx r11, r31, r12
/* 814DB138 | 38 0B 00 04 */	addi r0, r11, 0x4
/* 814DB13C | 90 04 00 04 */	stw r0, 0x4(r4)
/* 814DB140 | 81 63 00 94 */	lwz r11, 0x94(r3)
/* 814DB144 | 7C 0B 50 2E */	lwzx r0, r11, r10
/* 814DB148 | 7D 8B 02 14 */	add r12, r11, r0
/* 814DB14C | 7C 0B 02 2E */	lhzx r0, r11, r0
/* 814DB150 | B0 04 00 08 */	sth r0, 0x8(r4)
/* 814DB154 | A0 0C 00 02 */	lhz r0, 0x2(r12)
/* 814DB158 | B0 04 00 0A */	sth r0, 0xa(r4)
/* 814DB15C | 7D 4B 50 2E */	lwzx r10, r11, r10
/* 814DB160 | 38 0A 00 04 */	addi r0, r10, 0x4
/* 814DB164 | 90 04 00 0C */	stw r0, 0xc(r4)
/* 814DB168 | 81 43 00 94 */	lwz r10, 0x94(r3)
/* 814DB16C | 7C 0A 48 2E */	lwzx r0, r10, r9
/* 814DB170 | 7D 6A 02 14 */	add r11, r10, r0
/* 814DB174 | 7C 0A 02 2E */	lhzx r0, r10, r0
/* 814DB178 | B0 04 00 10 */	sth r0, 0x10(r4)
/* 814DB17C | A0 0B 00 02 */	lhz r0, 0x2(r11)
/* 814DB180 | B0 04 00 12 */	sth r0, 0x12(r4)
/* 814DB184 | 7D 2A 48 2E */	lwzx r9, r10, r9
/* 814DB188 | 38 09 00 04 */	addi r0, r9, 0x4
/* 814DB18C | 90 04 00 14 */	stw r0, 0x14(r4)
/* 814DB190 | 81 23 00 94 */	lwz r9, 0x94(r3)
/* 814DB194 | 7C 09 40 2E */	lwzx r0, r9, r8
/* 814DB198 | 7D 49 02 14 */	add r10, r9, r0
/* 814DB19C | 7C 09 02 2E */	lhzx r0, r9, r0
/* 814DB1A0 | B0 04 00 18 */	sth r0, 0x18(r4)
/* 814DB1A4 | A0 0A 00 02 */	lhz r0, 0x2(r10)
/* 814DB1A8 | B0 04 00 1A */	sth r0, 0x1a(r4)
/* 814DB1AC | 7D 09 40 2E */	lwzx r8, r9, r8
/* 814DB1B0 | 38 08 00 04 */	addi r0, r8, 0x4
/* 814DB1B4 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814DB1B8 | 81 03 00 94 */	lwz r8, 0x94(r3)
/* 814DB1BC | 7C 08 38 2E */	lwzx r0, r8, r7
/* 814DB1C0 | 7D 28 02 14 */	add r9, r8, r0
/* 814DB1C4 | 7C 08 02 2E */	lhzx r0, r8, r0
/* 814DB1C8 | B0 04 00 20 */	sth r0, 0x20(r4)
/* 814DB1CC | A0 09 00 02 */	lhz r0, 0x2(r9)
/* 814DB1D0 | B0 04 00 22 */	sth r0, 0x22(r4)
/* 814DB1D4 | 7C E8 38 2E */	lwzx r7, r8, r7
/* 814DB1D8 | 38 07 00 04 */	addi r0, r7, 0x4
/* 814DB1DC | 90 04 00 24 */	stw r0, 0x24(r4)
/* 814DB1E0 | 80 E3 00 94 */	lwz r7, 0x94(r3)
/* 814DB1E4 | 7C 07 30 2E */	lwzx r0, r7, r6
/* 814DB1E8 | 7D 07 02 14 */	add r8, r7, r0
/* 814DB1EC | 7C 07 02 2E */	lhzx r0, r7, r0
/* 814DB1F0 | B0 04 00 28 */	sth r0, 0x28(r4)
/* 814DB1F4 | A0 08 00 02 */	lhz r0, 0x2(r8)
/* 814DB1F8 | B0 04 00 2A */	sth r0, 0x2a(r4)
/* 814DB1FC | 7C C7 30 2E */	lwzx r6, r7, r6
/* 814DB200 | 38 06 00 04 */	addi r0, r6, 0x4
/* 814DB204 | 90 04 00 2C */	stw r0, 0x2c(r4)
/* 814DB208 | 38 84 00 30 */	addi r4, r4, 0x30
/* 814DB20C | 42 00 FE D8 */	bdnz .L_814DB0E4
/* 814DB210 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814DB214 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814DB218 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814DB21C | 7C 08 03 A6 */	mtlr r0
/* 814DB220 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814DB224 | 4E 80 00 20 */	blr
.endfn parseOnmemoryRes_

# .text:0x28C | 0x814DB228 | size: 0x120
.fn loadResRead2ndcallback_, local
/* 814DB228 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814DB22C | 7C 08 02 A6 */	mflr r0
/* 814DB230 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814DB234 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814DB238 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814DB23C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814DB240 | 4B FF FA 79 */	bl RFLiGetLoader
/* 814DB244 | 7C 7E 1B 78 */	mr r30, r3
/* 814DB248 | 3B E0 00 00 */	li r31, 0x0
/* 814DB24C | 3B A0 00 00 */	li r29, 0x0
/* 814DB250 | 4B FF FA B5 */	bl RFLGetAsyncStatus
/* 814DB254 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DB258 | 40 82 00 98 */	bne .L_814DB2F0
/* 814DB25C | 88 7E 00 A8 */	lbz r3, 0xa8(r30)
/* 814DB260 | 81 1E 00 A0 */	lwz r8, 0xa0(r30)
/* 814DB264 | 28 03 00 12 */	cmplwi r3, 0x12
/* 814DB268 | 40 80 00 7C */	bge .L_814DB2E4
/* 814DB26C | 81 3E 00 A4 */	lwz r9, 0xa4(r30)
/* 814DB270 | 54 64 1B 78 */	clrlslwi r4, r3, 16, 3
/* 814DB274 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814DB278 | 3C C0 81 4E */	lis r6, loadResRead2ndcallback_@ha
/* 814DB27C | A0 09 00 00 */	lhz r0, 0x0(r9)
/* 814DB280 | 54 63 10 3A */	slwi r3, r3, 2
/* 814DB284 | 7D 08 1A 14 */	add r8, r8, r3
/* 814DB288 | 7C FE 22 14 */	add r7, r30, r4
/* 814DB28C | 7C 1E 23 2E */	sthx r0, r30, r4
/* 814DB290 | 38 C6 B2 28 */	addi r6, r6, loadResRead2ndcallback_@l
/* 814DB294 | 38 60 00 01 */	li r3, 0x1
/* 814DB298 | 38 A0 00 20 */	li r5, 0x20
/* 814DB29C | A0 09 00 02 */	lhz r0, 0x2(r9)
/* 814DB2A0 | B0 07 00 02 */	sth r0, 0x2(r7)
/* 814DB2A4 | 80 88 00 00 */	lwz r4, 0x0(r8)
/* 814DB2A8 | 38 04 00 04 */	addi r0, r4, 0x4
/* 814DB2AC | 90 07 00 04 */	stw r0, 0x4(r7)
/* 814DB2B0 | 88 9E 00 A8 */	lbz r4, 0xa8(r30)
/* 814DB2B4 | 38 04 00 01 */	addi r0, r4, 0x1
/* 814DB2B8 | 98 1E 00 A8 */	stb r0, 0xa8(r30)
/* 814DB2BC | 80 9E 00 A4 */	lwz r4, 0xa4(r30)
/* 814DB2C0 | 80 E8 00 04 */	lwz r7, 0x4(r8)
/* 814DB2C4 | 48 00 21 25 */	bl RFLiReadAsync
/* 814DB2C8 | 2C 03 00 06 */	cmpwi r3, 0x6
/* 814DB2CC | 41 82 00 30 */	beq .L_814DB2FC
/* 814DB2D0 | 40 80 00 0C */	bge .L_814DB2DC
/* 814DB2D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DB2D8 | 41 82 00 24 */	beq .L_814DB2FC
.L_814DB2DC:
/* 814DB2DC | 3B E0 00 01 */	li r31, 0x1
/* 814DB2E0 | 48 00 00 1C */	b .L_814DB2FC
.L_814DB2E4:
/* 814DB2E4 | 3B E0 00 01 */	li r31, 0x1
/* 814DB2E8 | 3B A0 00 00 */	li r29, 0x0
/* 814DB2EC | 48 00 00 10 */	b .L_814DB2FC
.L_814DB2F0:
/* 814DB2F0 | 3B E0 00 01 */	li r31, 0x1
/* 814DB2F4 | 38 60 00 02 */	li r3, 0x2
/* 814DB2F8 | 4B FF FC 31 */	bl RFLiSetFileBroken
.L_814DB2FC:
/* 814DB2FC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814DB300 | 41 82 00 2C */	beq .L_814DB32C
/* 814DB304 | 80 7E 00 A0 */	lwz r3, 0xa0(r30)
/* 814DB308 | 4B FF F9 69 */	bl RFLiFree
/* 814DB30C | 3B E0 00 00 */	li r31, 0x0
/* 814DB310 | 93 FE 00 A0 */	stw r31, 0xa0(r30)
/* 814DB314 | 80 7E 00 A4 */	lwz r3, 0xa4(r30)
/* 814DB318 | 4B FF F9 59 */	bl RFLiFree
/* 814DB31C | 93 FE 00 A4 */	stw r31, 0xa4(r30)
/* 814DB320 | 7F A4 EB 78 */	mr r4, r29
/* 814DB324 | 38 60 00 01 */	li r3, 0x1
/* 814DB328 | 48 00 32 2D */	bl RFLiCloseAsync
.L_814DB32C:
/* 814DB32C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814DB330 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814DB334 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814DB338 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814DB33C | 7C 08 03 A6 */	mtlr r0
/* 814DB340 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814DB344 | 4E 80 00 20 */	blr
.endfn loadResRead2ndcallback_

# .text:0x3AC | 0x814DB348 | size: 0x4
.fn errclosecallback_, local
/* 814DB348 | 4B FF F5 38 */	b RFLExit
.endfn errclosecallback_

# .text:0x3B0 | 0x814DB34C | size: 0xEC
.fn loadResRead1stcallback_, local
/* 814DB34C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814DB350 | 7C 08 02 A6 */	mflr r0
/* 814DB354 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814DB358 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814DB35C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814DB360 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814DB364 | 4B FF F9 55 */	bl RFLiGetLoader
/* 814DB368 | 7C 7E 1B 78 */	mr r30, r3
/* 814DB36C | 3B E0 00 00 */	li r31, 0x0
/* 814DB370 | 4B FF F9 95 */	bl RFLGetAsyncStatus
/* 814DB374 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DB378 | 40 82 00 5C */	bne .L_814DB3D4
/* 814DB37C | 83 BE 00 A0 */	lwz r29, 0xa0(r30)
/* 814DB380 | 38 60 00 20 */	li r3, 0x20
/* 814DB384 | A0 1D 00 02 */	lhz r0, 0x2(r29)
/* 814DB388 | B0 1E 00 9C */	sth r0, 0x9c(r30)
/* 814DB38C | 4B FF F8 D1 */	bl RFLiAlloc32
/* 814DB390 | 90 7E 00 A4 */	stw r3, 0xa4(r30)
/* 814DB394 | 38 00 00 00 */	li r0, 0x0
/* 814DB398 | 3C C0 81 4E */	lis r6, loadResRead2ndcallback_@ha
/* 814DB39C | 7C 64 1B 78 */	mr r4, r3
/* 814DB3A0 | 98 1E 00 A8 */	stb r0, 0xa8(r30)
/* 814DB3A4 | 38 C6 B2 28 */	addi r6, r6, loadResRead2ndcallback_@l
/* 814DB3A8 | 38 60 00 01 */	li r3, 0x1
/* 814DB3AC | 38 A0 00 20 */	li r5, 0x20
/* 814DB3B0 | 80 FD 00 04 */	lwz r7, 0x4(r29)
/* 814DB3B4 | 48 00 20 35 */	bl RFLiReadAsync
/* 814DB3B8 | 2C 03 00 06 */	cmpwi r3, 0x6
/* 814DB3BC | 41 82 00 24 */	beq .L_814DB3E0
/* 814DB3C0 | 40 80 00 0C */	bge .L_814DB3CC
/* 814DB3C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DB3C8 | 41 82 00 18 */	beq .L_814DB3E0
.L_814DB3CC:
/* 814DB3CC | 3B E0 00 01 */	li r31, 0x1
/* 814DB3D0 | 48 00 00 10 */	b .L_814DB3E0
.L_814DB3D4:
/* 814DB3D4 | 3B E0 00 01 */	li r31, 0x1
/* 814DB3D8 | 38 60 00 02 */	li r3, 0x2
/* 814DB3DC | 4B FF FB 4D */	bl RFLiSetFileBroken
.L_814DB3E0:
/* 814DB3E0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814DB3E4 | 41 82 00 38 */	beq .L_814DB41C
/* 814DB3E8 | 80 7E 00 A0 */	lwz r3, 0xa0(r30)
/* 814DB3EC | 4B FF F8 85 */	bl RFLiFree
/* 814DB3F0 | 3B E0 00 00 */	li r31, 0x0
/* 814DB3F4 | 93 FE 00 A0 */	stw r31, 0xa0(r30)
/* 814DB3F8 | 80 7E 00 A4 */	lwz r3, 0xa4(r30)
/* 814DB3FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DB400 | 41 82 00 0C */	beq .L_814DB40C
/* 814DB404 | 4B FF F8 6D */	bl RFLiFree
/* 814DB408 | 93 FE 00 A4 */	stw r31, 0xa4(r30)
.L_814DB40C:
/* 814DB40C | 3C 80 81 4E */	lis r4, errclosecallback_@ha
/* 814DB410 | 38 60 00 01 */	li r3, 0x1
/* 814DB414 | 38 84 B3 48 */	addi r4, r4, errclosecallback_@l
/* 814DB418 | 48 00 31 3D */	bl RFLiCloseAsync
.L_814DB41C:
/* 814DB41C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814DB420 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814DB424 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814DB428 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814DB42C | 7C 08 03 A6 */	mtlr r0
/* 814DB430 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814DB434 | 4E 80 00 20 */	blr
.endfn loadResRead1stcallback_

# .text:0x49C | 0x814DB438 | size: 0xA4
.fn loadResGetlengthcallback_, local
/* 814DB438 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814DB43C | 7C 08 02 A6 */	mflr r0
/* 814DB440 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814DB444 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814DB448 | 4B FF F8 71 */	bl RFLiGetLoader
/* 814DB44C | 7C 7F 1B 78 */	mr r31, r3
/* 814DB450 | 4B FF F8 B5 */	bl RFLGetAsyncStatus
/* 814DB454 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DB458 | 40 82 00 60 */	bne .L_814DB4B8
/* 814DB45C | 38 60 01 00 */	li r3, 0x100
/* 814DB460 | 4B FF F7 FD */	bl RFLiAlloc32
/* 814DB464 | 3C C0 81 4E */	lis r6, loadResRead1stcallback_@ha
/* 814DB468 | 90 7F 00 A0 */	stw r3, 0xa0(r31)
/* 814DB46C | 7C 64 1B 78 */	mr r4, r3
/* 814DB470 | 38 60 00 01 */	li r3, 0x1
/* 814DB474 | 38 A0 01 00 */	li r5, 0x100
/* 814DB478 | 38 C6 B3 4C */	addi r6, r6, loadResRead1stcallback_@l
/* 814DB47C | 38 E0 00 00 */	li r7, 0x0
/* 814DB480 | 48 00 1F 69 */	bl RFLiReadAsync
/* 814DB484 | 2C 03 00 06 */	cmpwi r3, 0x6
/* 814DB488 | 41 82 00 40 */	beq .L_814DB4C8
/* 814DB48C | 40 80 00 0C */	bge .L_814DB498
/* 814DB490 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DB494 | 41 82 00 34 */	beq .L_814DB4C8
.L_814DB498:
/* 814DB498 | 80 7F 00 A0 */	lwz r3, 0xa0(r31)
/* 814DB49C | 4B FF F7 D5 */	bl RFLiFree
/* 814DB4A0 | 38 00 00 00 */	li r0, 0x0
/* 814DB4A4 | 38 60 00 01 */	li r3, 0x1
/* 814DB4A8 | 90 1F 00 A0 */	stw r0, 0xa0(r31)
/* 814DB4AC | 38 80 00 00 */	li r4, 0x0
/* 814DB4B0 | 48 00 30 A5 */	bl RFLiCloseAsync
/* 814DB4B4 | 48 00 00 14 */	b .L_814DB4C8
.L_814DB4B8:
/* 814DB4B8 | 3C 80 81 4E */	lis r4, errclosecallback_@ha
/* 814DB4BC | 38 60 00 01 */	li r3, 0x1
/* 814DB4C0 | 38 84 B3 48 */	addi r4, r4, errclosecallback_@l
/* 814DB4C4 | 48 00 30 91 */	bl RFLiCloseAsync
.L_814DB4C8:
/* 814DB4C8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814DB4CC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814DB4D0 | 7C 08 03 A6 */	mtlr r0
/* 814DB4D4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814DB4D8 | 4E 80 00 20 */	blr
.endfn loadResGetlengthcallback_

# .text:0x540 | 0x814DB4DC | size: 0x70
.fn loadResOpencallback_, local
/* 814DB4DC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814DB4E0 | 7C 08 02 A6 */	mflr r0
/* 814DB4E4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814DB4E8 | 4B FF F8 1D */	bl RFLGetAsyncStatus
/* 814DB4EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DB4F0 | 40 82 00 48 */	bne .L_814DB538
/* 814DB4F4 | 4B FF F7 C5 */	bl RFLiGetLoader
/* 814DB4F8 | 38 00 00 00 */	li r0, 0x0
/* 814DB4FC | 3C A0 81 4E */	lis r5, loadResGetlengthcallback_@ha
/* 814DB500 | 90 03 00 90 */	stw r0, 0x90(r3)
/* 814DB504 | 38 83 00 90 */	addi r4, r3, 0x90
/* 814DB508 | 38 60 00 01 */	li r3, 0x1
/* 814DB50C | 38 A5 B4 38 */	addi r5, r5, loadResGetlengthcallback_@l
/* 814DB510 | 48 00 33 A1 */	bl RFLiGetLengthAsync
/* 814DB514 | 2C 03 00 06 */	cmpwi r3, 0x6
/* 814DB518 | 41 82 00 24 */	beq .L_814DB53C
/* 814DB51C | 40 80 00 0C */	bge .L_814DB528
/* 814DB520 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DB524 | 41 82 00 18 */	beq .L_814DB53C
.L_814DB528:
/* 814DB528 | 38 60 00 01 */	li r3, 0x1
/* 814DB52C | 38 80 00 00 */	li r4, 0x0
/* 814DB530 | 48 00 30 25 */	bl RFLiCloseAsync
/* 814DB534 | 48 00 00 08 */	b .L_814DB53C
.L_814DB538:
/* 814DB538 | 4B FF F3 49 */	bl RFLExit
.L_814DB53C:
/* 814DB53C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814DB540 | 7C 08 03 A6 */	mtlr r0
/* 814DB544 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814DB548 | 4E 80 00 20 */	blr
.endfn loadResOpencallback_

# .text:0x5B0 | 0x814DB54C | size: 0x94
.fn RFLiLoadResourceHeaderAsync, global
/* 814DB54C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814DB550 | 7C 08 02 A6 */	mflr r0
/* 814DB554 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814DB558 | 4B FF F7 61 */	bl RFLiGetLoader
/* 814DB55C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DB560 | 40 82 00 14 */	bne .L_814DB574
/* 814DB564 | 38 60 00 05 */	li r3, 0x5
/* 814DB568 | 48 00 0B F9 */	bl RFLiEndWorking
/* 814DB56C | 38 60 00 05 */	li r3, 0x5
/* 814DB570 | 48 00 00 60 */	b .L_814DB5D0
.L_814DB574:
/* 814DB574 | 4B FF F6 C1 */	bl RFLAvailable
/* 814DB578 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DB57C | 40 82 00 0C */	bne .L_814DB588
/* 814DB580 | 38 00 00 00 */	li r0, 0x0
/* 814DB584 | 48 00 00 1C */	b .L_814DB5A0
.L_814DB588:
/* 814DB588 | 4B FF F7 31 */	bl RFLiGetLoader
/* 814DB58C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DB590 | 40 82 00 0C */	bne .L_814DB59C
/* 814DB594 | 38 00 00 00 */	li r0, 0x0
/* 814DB598 | 48 00 00 08 */	b .L_814DB5A0
.L_814DB59C:
/* 814DB59C | 80 03 00 98 */	lwz r0, 0x98(r3)
.L_814DB5A0:
/* 814DB5A0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814DB5A4 | 41 82 00 18 */	beq .L_814DB5BC
/* 814DB5A8 | 4B FF FB 09 */	bl parseOnmemoryRes_
/* 814DB5AC | 38 60 00 00 */	li r3, 0x0
/* 814DB5B0 | 48 00 0B B1 */	bl RFLiEndWorking
/* 814DB5B4 | 38 60 00 06 */	li r3, 0x6
/* 814DB5B8 | 48 00 00 18 */	b .L_814DB5D0
.L_814DB5BC:
/* 814DB5BC | 3C A0 81 4E */	lis r5, loadResOpencallback_@ha
/* 814DB5C0 | 38 60 00 01 */	li r3, 0x1
/* 814DB5C4 | 38 A5 B4 DC */	addi r5, r5, loadResOpencallback_@l
/* 814DB5C8 | 38 80 00 01 */	li r4, 0x1
/* 814DB5CC | 48 00 14 E5 */	bl RFLiOpenAsync
.L_814DB5D0:
/* 814DB5D0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814DB5D4 | 7C 08 03 A6 */	mtlr r0
/* 814DB5D8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814DB5DC | 4E 80 00 20 */	blr
.endfn RFLiLoadResourceHeaderAsync

# .text:0x644 | 0x814DB5E0 | size: 0x184
.fn getNANDFile_, local
/* 814DB5E0 | 94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 814DB5E4 | 7C 08 02 A6 */	mflr r0
/* 814DB5E8 | 90 01 00 B4 */	stw r0, 0xb4(r1)
/* 814DB5EC | 39 61 00 B0 */	addi r11, r1, 0xb0
/* 814DB5F0 | 48 11 DE CD */	bl _savegpr_26
/* 814DB5F4 | 54 A0 18 38 */	slwi r0, r5, 3
/* 814DB5F8 | 7C 7F 1B 78 */	mr r31, r3
/* 814DB5FC | 7C DA 33 78 */	mr r26, r6
/* 814DB600 | 3B 80 00 00 */	li r28, 0x0
/* 814DB604 | 7F C4 02 14 */	add r30, r4, r0
/* 814DB608 | 38 60 04 00 */	li r3, 0x400
/* 814DB60C | 4B FF F6 51 */	bl RFLiAlloc32
/* 814DB610 | 7C 7D 1B 78 */	mr r29, r3
/* 814DB614 | 80 6D 9D 40 */	lwz r3, scResFileFullPathName@sda21(r0)
/* 814DB618 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814DB61C | 38 A0 00 01 */	li r5, 0x1
/* 814DB620 | 48 08 9C D9 */	bl NANDPrivateOpen
/* 814DB624 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DB628 | 40 82 01 10 */	bne .L_814DB738
/* 814DB62C | A0 1E 00 00 */	lhz r0, 0x0(r30)
/* 814DB630 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814DB634 | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 814DB638 | 38 A0 00 00 */	li r5, 0x0
/* 814DB63C | 54 06 10 3A */	slwi r6, r0, 2
/* 814DB640 | 38 06 00 23 */	addi r0, r6, 0x23
/* 814DB644 | 54 1C 00 34 */	clrrwi r28, r0, 5
/* 814DB648 | 48 08 8B 79 */	bl NANDSeek
/* 814DB64C | 7F A4 EB 78 */	mr r4, r29
/* 814DB650 | 7F 85 E3 78 */	mr r5, r28
/* 814DB654 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814DB658 | 48 08 89 A9 */	bl NANDRead
/* 814DB65C | 7C 1C 18 40 */	cmplw r28, r3
/* 814DB660 | 40 82 00 20 */	bne .L_814DB680
/* 814DB664 | 38 1A 00 01 */	addi r0, r26, 0x1
/* 814DB668 | 57 43 13 BA */	clrlslwi r3, r26, 16, 2
/* 814DB66C | 54 00 10 3A */	slwi r0, r0, 2
/* 814DB670 | 7C BD 18 2E */	lwzx r5, r29, r3
/* 814DB674 | 7C 1D 00 2E */	lwzx r0, r29, r0
/* 814DB678 | 7F 45 00 50 */	subf r26, r5, r0
/* 814DB67C | 48 00 00 1C */	b .L_814DB698
.L_814DB680:
/* 814DB680 | 38 60 00 02 */	li r3, 0x2
/* 814DB684 | 4B FF F8 A5 */	bl RFLiSetFileBroken
/* 814DB688 | 7F A3 EB 78 */	mr r3, r29
/* 814DB68C | 4B FF F5 E5 */	bl RFLiFree
/* 814DB690 | 38 60 00 00 */	li r3, 0x0
/* 814DB694 | 48 00 00 B8 */	b .L_814DB74C
.L_814DB698:
/* 814DB698 | A0 7E 00 00 */	lhz r3, 0x0(r30)
/* 814DB69C | 38 1A 00 1F */	addi r0, r26, 0x1f
/* 814DB6A0 | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 814DB6A4 | 54 1C 00 34 */	clrrwi r28, r0, 5
/* 814DB6A8 | 54 60 10 3A */	slwi r0, r3, 2
/* 814DB6AC | 7C 04 02 14 */	add r0, r4, r0
/* 814DB6B0 | 7F 83 E3 78 */	mr r3, r28
/* 814DB6B4 | 7F 60 2A 14 */	add r27, r0, r5
/* 814DB6B8 | 3B 7B 00 04 */	addi r27, r27, 0x4
/* 814DB6BC | 4B FF F5 A1 */	bl RFLiAlloc32
/* 814DB6C0 | 7C 7E 1B 78 */	mr r30, r3
/* 814DB6C4 | 7F 64 DB 78 */	mr r4, r27
/* 814DB6C8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814DB6CC | 38 A0 00 00 */	li r5, 0x0
/* 814DB6D0 | 48 08 8A F1 */	bl NANDSeek
/* 814DB6D4 | 7F C4 F3 78 */	mr r4, r30
/* 814DB6D8 | 7F 85 E3 78 */	mr r5, r28
/* 814DB6DC | 38 61 00 08 */	addi r3, r1, 0x8
/* 814DB6E0 | 48 08 89 21 */	bl NANDRead
/* 814DB6E4 | 7C 1C 18 40 */	cmplw r28, r3
/* 814DB6E8 | 40 82 00 1C */	bne .L_814DB704
/* 814DB6EC | 7F E3 FB 78 */	mr r3, r31
/* 814DB6F0 | 7F C4 F3 78 */	mr r4, r30
/* 814DB6F4 | 7F 45 D3 78 */	mr r5, r26
/* 814DB6F8 | 4B E5 4B 39 */	bl memcpy
/* 814DB6FC | 7F FC FB 78 */	mr r28, r31
/* 814DB700 | 48 00 00 24 */	b .L_814DB724
.L_814DB704:
/* 814DB704 | 38 60 00 02 */	li r3, 0x2
/* 814DB708 | 4B FF F8 21 */	bl RFLiSetFileBroken
/* 814DB70C | 7F A3 EB 78 */	mr r3, r29
/* 814DB710 | 4B FF F5 61 */	bl RFLiFree
/* 814DB714 | 7F C3 F3 78 */	mr r3, r30
/* 814DB718 | 4B FF F5 59 */	bl RFLiFree
/* 814DB71C | 38 60 00 00 */	li r3, 0x0
/* 814DB720 | 48 00 00 2C */	b .L_814DB74C
.L_814DB724:
/* 814DB724 | 7F C3 F3 78 */	mr r3, r30
/* 814DB728 | 4B FF F5 49 */	bl RFLiFree
/* 814DB72C | 38 61 00 08 */	addi r3, r1, 0x8
/* 814DB730 | 48 08 9D BD */	bl NANDClose
/* 814DB734 | 48 00 00 0C */	b .L_814DB740
.L_814DB738:
/* 814DB738 | 38 60 00 02 */	li r3, 0x2
/* 814DB73C | 4B FF F7 ED */	bl RFLiSetFileBroken
.L_814DB740:
/* 814DB740 | 7F A3 EB 78 */	mr r3, r29
/* 814DB744 | 4B FF F5 2D */	bl RFLiFree
/* 814DB748 | 7F 83 E3 78 */	mr r3, r28
.L_814DB74C:
/* 814DB74C | 39 61 00 B0 */	addi r11, r1, 0xb0
/* 814DB750 | 48 11 DD B9 */	bl _restgpr_26
/* 814DB754 | 80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 814DB758 | 7C 08 03 A6 */	mtlr r0
/* 814DB75C | 38 21 00 B0 */	addi r1, r1, 0xb0
/* 814DB760 | 4E 80 00 20 */	blr
.endfn getNANDFile_

# .text:0x7C8 | 0x814DB764 | size: 0x16C
.fn RFLiGetTexSize, global
/* 814DB764 | 94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 814DB768 | 7C 08 02 A6 */	mflr r0
/* 814DB76C | 3C A0 81 62 */	lis r5, scParts2Arc$3514@ha
/* 814DB770 | 90 01 00 B4 */	stw r0, 0xb4(r1)
/* 814DB774 | 54 60 10 3A */	slwi r0, r3, 2
/* 814DB778 | 38 A5 D1 B8 */	addi r5, r5, scParts2Arc$3514@l
/* 814DB77C | 93 E1 00 AC */	stw r31, 0xac(r1)
/* 814DB780 | 7C 9F 23 78 */	mr r31, r4
/* 814DB784 | 93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 814DB788 | 93 A1 00 A4 */	stw r29, 0xa4(r1)
/* 814DB78C | 7F A5 00 2E */	lwzx r29, r5, r0
/* 814DB790 | 93 81 00 A0 */	stw r28, 0xa0(r1)
/* 814DB794 | 4B FF F5 25 */	bl RFLiGetLoader
/* 814DB798 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DB79C | 7C 7E 1B 78 */	mr r30, r3
/* 814DB7A0 | 40 82 00 0C */	bne .L_814DB7AC
/* 814DB7A4 | 3B C0 00 00 */	li r30, 0x0
/* 814DB7A8 | 48 00 01 04 */	b .L_814DB8AC
.L_814DB7AC:
/* 814DB7AC | 57 A0 18 38 */	slwi r0, r29, 3
/* 814DB7B0 | 7F 83 02 14 */	add r28, r3, r0
/* 814DB7B4 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 814DB7B8 | 7C 1F 00 40 */	cmplw r31, r0
/* 814DB7BC | 41 80 00 0C */	blt .L_814DB7C8
/* 814DB7C0 | 3B C0 00 00 */	li r30, 0x0
/* 814DB7C4 | 48 00 00 E8 */	b .L_814DB8AC
.L_814DB7C8:
/* 814DB7C8 | 4B FF F4 6D */	bl RFLAvailable
/* 814DB7CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DB7D0 | 40 82 00 0C */	bne .L_814DB7DC
/* 814DB7D4 | 38 00 00 00 */	li r0, 0x0
/* 814DB7D8 | 48 00 00 1C */	b .L_814DB7F4
.L_814DB7DC:
/* 814DB7DC | 4B FF F4 DD */	bl RFLiGetLoader
/* 814DB7E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DB7E4 | 40 82 00 0C */	bne .L_814DB7F0
/* 814DB7E8 | 38 00 00 00 */	li r0, 0x0
/* 814DB7EC | 48 00 00 08 */	b .L_814DB7F4
.L_814DB7F0:
/* 814DB7F0 | 80 03 00 98 */	lwz r0, 0x98(r3)
.L_814DB7F4:
/* 814DB7F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814DB7F8 | 41 82 00 2C */	beq .L_814DB824
/* 814DB7FC | 80 BE 00 94 */	lwz r5, 0x94(r30)
/* 814DB800 | 38 1F 00 01 */	addi r0, r31, 0x1
/* 814DB804 | 80 9C 00 04 */	lwz r4, 0x4(r28)
/* 814DB808 | 57 E3 13 BA */	clrlslwi r3, r31, 16, 2
/* 814DB80C | 54 00 10 3A */	slwi r0, r0, 2
/* 814DB810 | 7C 85 22 14 */	add r4, r5, r4
/* 814DB814 | 7C 64 18 2E */	lwzx r3, r4, r3
/* 814DB818 | 7C 04 00 2E */	lwzx r0, r4, r0
/* 814DB81C | 7F C3 00 50 */	subf r30, r3, r0
/* 814DB820 | 48 00 00 8C */	b .L_814DB8AC
.L_814DB824:
/* 814DB824 | 3B C0 00 00 */	li r30, 0x0
/* 814DB828 | 38 60 04 00 */	li r3, 0x400
/* 814DB82C | 4B FF F4 31 */	bl RFLiAlloc32
/* 814DB830 | 7C 7D 1B 78 */	mr r29, r3
/* 814DB834 | 80 6D 9D 40 */	lwz r3, scResFileFullPathName@sda21(r0)
/* 814DB838 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814DB83C | 38 A0 00 01 */	li r5, 0x1
/* 814DB840 | 48 08 9A B9 */	bl NANDPrivateOpen
/* 814DB844 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DB848 | 40 82 00 5C */	bne .L_814DB8A4
/* 814DB84C | A0 1C 00 00 */	lhz r0, 0x0(r28)
/* 814DB850 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814DB854 | 80 9C 00 04 */	lwz r4, 0x4(r28)
/* 814DB858 | 38 A0 00 00 */	li r5, 0x0
/* 814DB85C | 54 06 10 3A */	slwi r6, r0, 2
/* 814DB860 | 38 06 00 23 */	addi r0, r6, 0x23
/* 814DB864 | 54 1C 00 34 */	clrrwi r28, r0, 5
/* 814DB868 | 48 08 89 59 */	bl NANDSeek
/* 814DB86C | 7F A4 EB 78 */	mr r4, r29
/* 814DB870 | 7F 85 E3 78 */	mr r5, r28
/* 814DB874 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814DB878 | 48 08 87 89 */	bl NANDRead
/* 814DB87C | 7C 1C 18 40 */	cmplw r28, r3
/* 814DB880 | 40 82 00 1C */	bne .L_814DB89C
/* 814DB884 | 38 1F 00 01 */	addi r0, r31, 0x1
/* 814DB888 | 57 E3 13 BA */	clrlslwi r3, r31, 16, 2
/* 814DB88C | 54 00 10 3A */	slwi r0, r0, 2
/* 814DB890 | 7C 7D 18 2E */	lwzx r3, r29, r3
/* 814DB894 | 7C 1D 00 2E */	lwzx r0, r29, r0
/* 814DB898 | 7F C3 00 50 */	subf r30, r3, r0
.L_814DB89C:
/* 814DB89C | 38 61 00 08 */	addi r3, r1, 0x8
/* 814DB8A0 | 48 08 9C 4D */	bl NANDClose
.L_814DB8A4:
/* 814DB8A4 | 7F A3 EB 78 */	mr r3, r29
/* 814DB8A8 | 4B FF F3 C9 */	bl RFLiFree
.L_814DB8AC:
/* 814DB8AC | 7F C3 F3 78 */	mr r3, r30
/* 814DB8B0 | 83 E1 00 AC */	lwz r31, 0xac(r1)
/* 814DB8B4 | 83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 814DB8B8 | 83 A1 00 A4 */	lwz r29, 0xa4(r1)
/* 814DB8BC | 83 81 00 A0 */	lwz r28, 0xa0(r1)
/* 814DB8C0 | 80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 814DB8C4 | 7C 08 03 A6 */	mtlr r0
/* 814DB8C8 | 38 21 00 B0 */	addi r1, r1, 0xb0
/* 814DB8CC | 4E 80 00 20 */	blr
.endfn RFLiGetTexSize

# .text:0x934 | 0x814DB8D0 | size: 0x124
.fn RFLiLoadTexture, global
/* 814DB8D0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814DB8D4 | 7C 08 02 A6 */	mflr r0
/* 814DB8D8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814DB8DC | 39 61 00 20 */	addi r11, r1, 0x20
/* 814DB8E0 | 48 11 DB E1 */	bl _savegpr_27
/* 814DB8E4 | 3C C0 81 62 */	lis r6, scParts2Arc$3521@ha
/* 814DB8E8 | 54 60 10 3A */	slwi r0, r3, 2
/* 814DB8EC | 38 C6 D1 CC */	addi r6, r6, scParts2Arc$3521@l
/* 814DB8F0 | 7C 9B 23 78 */	mr r27, r4
/* 814DB8F4 | 7F C6 00 2E */	lwzx r30, r6, r0
/* 814DB8F8 | 7C BF 2B 78 */	mr r31, r5
/* 814DB8FC | 4B FF F3 39 */	bl RFLAvailable
/* 814DB900 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DB904 | 40 82 00 0C */	bne .L_814DB910
/* 814DB908 | 3B E0 00 00 */	li r31, 0x0
/* 814DB90C | 48 00 00 CC */	b .L_814DB9D8
.L_814DB910:
/* 814DB910 | 4B FF F3 A9 */	bl RFLiGetLoader
/* 814DB914 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DB918 | 7C 7D 1B 78 */	mr r29, r3
/* 814DB91C | 40 82 00 0C */	bne .L_814DB928
/* 814DB920 | 3B E0 00 00 */	li r31, 0x0
/* 814DB924 | 48 00 00 B4 */	b .L_814DB9D8
.L_814DB928:
/* 814DB928 | 57 C0 18 38 */	slwi r0, r30, 3
/* 814DB92C | 7F 83 02 14 */	add r28, r3, r0
/* 814DB930 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 814DB934 | 7C 1B 00 40 */	cmplw r27, r0
/* 814DB938 | 41 80 00 0C */	blt .L_814DB944
/* 814DB93C | 3B E0 00 00 */	li r31, 0x0
/* 814DB940 | 48 00 00 98 */	b .L_814DB9D8
.L_814DB944:
/* 814DB944 | 4B FF F2 F1 */	bl RFLAvailable
/* 814DB948 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DB94C | 40 82 00 0C */	bne .L_814DB958
/* 814DB950 | 38 00 00 00 */	li r0, 0x0
/* 814DB954 | 48 00 00 1C */	b .L_814DB970
.L_814DB958:
/* 814DB958 | 4B FF F3 61 */	bl RFLiGetLoader
/* 814DB95C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DB960 | 40 82 00 0C */	bne .L_814DB96C
/* 814DB964 | 38 00 00 00 */	li r0, 0x0
/* 814DB968 | 48 00 00 08 */	b .L_814DB970
.L_814DB96C:
/* 814DB96C | 80 03 00 98 */	lwz r0, 0x98(r3)
.L_814DB970:
/* 814DB970 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814DB974 | 41 82 00 4C */	beq .L_814DB9C0
/* 814DB978 | 80 DD 00 94 */	lwz r6, 0x94(r29)
/* 814DB97C | 38 1B 00 01 */	addi r0, r27, 0x1
/* 814DB980 | 81 3C 00 04 */	lwz r9, 0x4(r28)
/* 814DB984 | 57 65 13 BA */	clrlslwi r5, r27, 16, 2
/* 814DB988 | A0 9C 00 00 */	lhz r4, 0x0(r28)
/* 814DB98C | 54 00 10 3A */	slwi r0, r0, 2
/* 814DB990 | 7C E6 4A 14 */	add r7, r6, r9
/* 814DB994 | 7F E3 FB 78 */	mr r3, r31
/* 814DB998 | 7D 07 28 2E */	lwzx r8, r7, r5
/* 814DB99C | 54 85 10 3A */	slwi r5, r4, 2
/* 814DB9A0 | 7C 07 00 2E */	lwzx r0, r7, r0
/* 814DB9A4 | 7C 89 42 14 */	add r4, r9, r8
/* 814DB9A8 | 7C 84 2A 14 */	add r4, r4, r5
/* 814DB9AC | 7C A8 00 50 */	subf r5, r8, r0
/* 814DB9B0 | 7C 84 32 14 */	add r4, r4, r6
/* 814DB9B4 | 38 84 00 04 */	addi r4, r4, 0x4
/* 814DB9B8 | 4B E5 48 79 */	bl memcpy
/* 814DB9BC | 48 00 00 1C */	b .L_814DB9D8
.L_814DB9C0:
/* 814DB9C0 | 7F E3 FB 78 */	mr r3, r31
/* 814DB9C4 | 7F A4 EB 78 */	mr r4, r29
/* 814DB9C8 | 7F C5 F3 78 */	mr r5, r30
/* 814DB9CC | 7F 66 DB 78 */	mr r6, r27
/* 814DB9D0 | 4B FF FC 11 */	bl getNANDFile_
/* 814DB9D4 | 7C 7F 1B 78 */	mr r31, r3
.L_814DB9D8:
/* 814DB9D8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814DB9DC | 7F E3 FB 78 */	mr r3, r31
/* 814DB9E0 | 48 11 DB 2D */	bl _restgpr_27
/* 814DB9E4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814DB9E8 | 7C 08 03 A6 */	mtlr r0
/* 814DB9EC | 38 21 00 20 */	addi r1, r1, 0x20
/* 814DB9F0 | 4E 80 00 20 */	blr
.endfn RFLiLoadTexture

# .text:0xA58 | 0x814DB9F4 | size: 0x16C
.fn RFLiGetShpTexSize, global
/* 814DB9F4 | 94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 814DB9F8 | 7C 08 02 A6 */	mflr r0
/* 814DB9FC | 3C A0 81 62 */	lis r5, scParts2Arc$3527@ha
/* 814DBA00 | 90 01 00 B4 */	stw r0, 0xb4(r1)
/* 814DBA04 | 54 60 10 3A */	slwi r0, r3, 2
/* 814DBA08 | 38 A5 D1 E0 */	addi r5, r5, scParts2Arc$3527@l
/* 814DBA0C | 93 E1 00 AC */	stw r31, 0xac(r1)
/* 814DBA10 | 7C 9F 23 78 */	mr r31, r4
/* 814DBA14 | 93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 814DBA18 | 93 A1 00 A4 */	stw r29, 0xa4(r1)
/* 814DBA1C | 7F A5 00 2E */	lwzx r29, r5, r0
/* 814DBA20 | 93 81 00 A0 */	stw r28, 0xa0(r1)
/* 814DBA24 | 4B FF F2 95 */	bl RFLiGetLoader
/* 814DBA28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DBA2C | 7C 7E 1B 78 */	mr r30, r3
/* 814DBA30 | 40 82 00 0C */	bne .L_814DBA3C
/* 814DBA34 | 3B C0 00 00 */	li r30, 0x0
/* 814DBA38 | 48 00 01 04 */	b .L_814DBB3C
.L_814DBA3C:
/* 814DBA3C | 57 A0 18 38 */	slwi r0, r29, 3
/* 814DBA40 | 7F 83 02 14 */	add r28, r3, r0
/* 814DBA44 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 814DBA48 | 7C 1F 00 40 */	cmplw r31, r0
/* 814DBA4C | 41 80 00 0C */	blt .L_814DBA58
/* 814DBA50 | 3B C0 00 00 */	li r30, 0x0
/* 814DBA54 | 48 00 00 E8 */	b .L_814DBB3C
.L_814DBA58:
/* 814DBA58 | 4B FF F1 DD */	bl RFLAvailable
/* 814DBA5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DBA60 | 40 82 00 0C */	bne .L_814DBA6C
/* 814DBA64 | 38 00 00 00 */	li r0, 0x0
/* 814DBA68 | 48 00 00 1C */	b .L_814DBA84
.L_814DBA6C:
/* 814DBA6C | 4B FF F2 4D */	bl RFLiGetLoader
/* 814DBA70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DBA74 | 40 82 00 0C */	bne .L_814DBA80
/* 814DBA78 | 38 00 00 00 */	li r0, 0x0
/* 814DBA7C | 48 00 00 08 */	b .L_814DBA84
.L_814DBA80:
/* 814DBA80 | 80 03 00 98 */	lwz r0, 0x98(r3)
.L_814DBA84:
/* 814DBA84 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814DBA88 | 41 82 00 2C */	beq .L_814DBAB4
/* 814DBA8C | 80 BE 00 94 */	lwz r5, 0x94(r30)
/* 814DBA90 | 38 1F 00 01 */	addi r0, r31, 0x1
/* 814DBA94 | 80 9C 00 04 */	lwz r4, 0x4(r28)
/* 814DBA98 | 57 E3 13 BA */	clrlslwi r3, r31, 16, 2
/* 814DBA9C | 54 00 10 3A */	slwi r0, r0, 2
/* 814DBAA0 | 7C 85 22 14 */	add r4, r5, r4
/* 814DBAA4 | 7C 64 18 2E */	lwzx r3, r4, r3
/* 814DBAA8 | 7C 04 00 2E */	lwzx r0, r4, r0
/* 814DBAAC | 7F C3 00 50 */	subf r30, r3, r0
/* 814DBAB0 | 48 00 00 8C */	b .L_814DBB3C
.L_814DBAB4:
/* 814DBAB4 | 3B C0 00 00 */	li r30, 0x0
/* 814DBAB8 | 38 60 04 00 */	li r3, 0x400
/* 814DBABC | 4B FF F1 A1 */	bl RFLiAlloc32
/* 814DBAC0 | 7C 7D 1B 78 */	mr r29, r3
/* 814DBAC4 | 80 6D 9D 40 */	lwz r3, scResFileFullPathName@sda21(r0)
/* 814DBAC8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814DBACC | 38 A0 00 01 */	li r5, 0x1
/* 814DBAD0 | 48 08 98 29 */	bl NANDPrivateOpen
/* 814DBAD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DBAD8 | 40 82 00 5C */	bne .L_814DBB34
/* 814DBADC | A0 1C 00 00 */	lhz r0, 0x0(r28)
/* 814DBAE0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814DBAE4 | 80 9C 00 04 */	lwz r4, 0x4(r28)
/* 814DBAE8 | 38 A0 00 00 */	li r5, 0x0
/* 814DBAEC | 54 06 10 3A */	slwi r6, r0, 2
/* 814DBAF0 | 38 06 00 23 */	addi r0, r6, 0x23
/* 814DBAF4 | 54 1C 00 34 */	clrrwi r28, r0, 5
/* 814DBAF8 | 48 08 86 C9 */	bl NANDSeek
/* 814DBAFC | 7F A4 EB 78 */	mr r4, r29
/* 814DBB00 | 7F 85 E3 78 */	mr r5, r28
/* 814DBB04 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814DBB08 | 48 08 84 F9 */	bl NANDRead
/* 814DBB0C | 7C 1C 18 40 */	cmplw r28, r3
/* 814DBB10 | 40 82 00 1C */	bne .L_814DBB2C
/* 814DBB14 | 38 1F 00 01 */	addi r0, r31, 0x1
/* 814DBB18 | 57 E3 13 BA */	clrlslwi r3, r31, 16, 2
/* 814DBB1C | 54 00 10 3A */	slwi r0, r0, 2
/* 814DBB20 | 7C 7D 18 2E */	lwzx r3, r29, r3
/* 814DBB24 | 7C 1D 00 2E */	lwzx r0, r29, r0
/* 814DBB28 | 7F C3 00 50 */	subf r30, r3, r0
.L_814DBB2C:
/* 814DBB2C | 38 61 00 08 */	addi r3, r1, 0x8
/* 814DBB30 | 48 08 99 BD */	bl NANDClose
.L_814DBB34:
/* 814DBB34 | 7F A3 EB 78 */	mr r3, r29
/* 814DBB38 | 4B FF F1 39 */	bl RFLiFree
.L_814DBB3C:
/* 814DBB3C | 7F C3 F3 78 */	mr r3, r30
/* 814DBB40 | 83 E1 00 AC */	lwz r31, 0xac(r1)
/* 814DBB44 | 83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 814DBB48 | 83 A1 00 A4 */	lwz r29, 0xa4(r1)
/* 814DBB4C | 83 81 00 A0 */	lwz r28, 0xa0(r1)
/* 814DBB50 | 80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 814DBB54 | 7C 08 03 A6 */	mtlr r0
/* 814DBB58 | 38 21 00 B0 */	addi r1, r1, 0xb0
/* 814DBB5C | 4E 80 00 20 */	blr
.endfn RFLiGetShpTexSize

# .text:0xBC4 | 0x814DBB60 | size: 0x124
.fn RFLiLoadShpTexture, global
/* 814DBB60 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814DBB64 | 7C 08 02 A6 */	mflr r0
/* 814DBB68 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814DBB6C | 39 61 00 20 */	addi r11, r1, 0x20
/* 814DBB70 | 48 11 D9 51 */	bl _savegpr_27
/* 814DBB74 | 3C C0 81 62 */	lis r6, scParts2Arc$3534@ha
/* 814DBB78 | 54 60 10 3A */	slwi r0, r3, 2
/* 814DBB7C | 38 C6 D1 F0 */	addi r6, r6, scParts2Arc$3534@l
/* 814DBB80 | 7C 9B 23 78 */	mr r27, r4
/* 814DBB84 | 7F C6 00 2E */	lwzx r30, r6, r0
/* 814DBB88 | 7C BF 2B 78 */	mr r31, r5
/* 814DBB8C | 4B FF F0 A9 */	bl RFLAvailable
/* 814DBB90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DBB94 | 40 82 00 0C */	bne .L_814DBBA0
/* 814DBB98 | 3B E0 00 00 */	li r31, 0x0
/* 814DBB9C | 48 00 00 CC */	b .L_814DBC68
.L_814DBBA0:
/* 814DBBA0 | 4B FF F1 19 */	bl RFLiGetLoader
/* 814DBBA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DBBA8 | 7C 7D 1B 78 */	mr r29, r3
/* 814DBBAC | 40 82 00 0C */	bne .L_814DBBB8
/* 814DBBB0 | 3B E0 00 00 */	li r31, 0x0
/* 814DBBB4 | 48 00 00 B4 */	b .L_814DBC68
.L_814DBBB8:
/* 814DBBB8 | 57 C0 18 38 */	slwi r0, r30, 3
/* 814DBBBC | 7F 83 02 14 */	add r28, r3, r0
/* 814DBBC0 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 814DBBC4 | 7C 1B 00 40 */	cmplw r27, r0
/* 814DBBC8 | 41 80 00 0C */	blt .L_814DBBD4
/* 814DBBCC | 3B E0 00 00 */	li r31, 0x0
/* 814DBBD0 | 48 00 00 98 */	b .L_814DBC68
.L_814DBBD4:
/* 814DBBD4 | 4B FF F0 61 */	bl RFLAvailable
/* 814DBBD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DBBDC | 40 82 00 0C */	bne .L_814DBBE8
/* 814DBBE0 | 38 00 00 00 */	li r0, 0x0
/* 814DBBE4 | 48 00 00 1C */	b .L_814DBC00
.L_814DBBE8:
/* 814DBBE8 | 4B FF F0 D1 */	bl RFLiGetLoader
/* 814DBBEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DBBF0 | 40 82 00 0C */	bne .L_814DBBFC
/* 814DBBF4 | 38 00 00 00 */	li r0, 0x0
/* 814DBBF8 | 48 00 00 08 */	b .L_814DBC00
.L_814DBBFC:
/* 814DBBFC | 80 03 00 98 */	lwz r0, 0x98(r3)
.L_814DBC00:
/* 814DBC00 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814DBC04 | 41 82 00 4C */	beq .L_814DBC50
/* 814DBC08 | 80 DD 00 94 */	lwz r6, 0x94(r29)
/* 814DBC0C | 38 1B 00 01 */	addi r0, r27, 0x1
/* 814DBC10 | 81 3C 00 04 */	lwz r9, 0x4(r28)
/* 814DBC14 | 57 65 13 BA */	clrlslwi r5, r27, 16, 2
/* 814DBC18 | A0 9C 00 00 */	lhz r4, 0x0(r28)
/* 814DBC1C | 54 00 10 3A */	slwi r0, r0, 2
/* 814DBC20 | 7C E6 4A 14 */	add r7, r6, r9
/* 814DBC24 | 7F E3 FB 78 */	mr r3, r31
/* 814DBC28 | 7D 07 28 2E */	lwzx r8, r7, r5
/* 814DBC2C | 54 85 10 3A */	slwi r5, r4, 2
/* 814DBC30 | 7C 07 00 2E */	lwzx r0, r7, r0
/* 814DBC34 | 7C 89 42 14 */	add r4, r9, r8
/* 814DBC38 | 7C 84 2A 14 */	add r4, r4, r5
/* 814DBC3C | 7C A8 00 50 */	subf r5, r8, r0
/* 814DBC40 | 7C 84 32 14 */	add r4, r4, r6
/* 814DBC44 | 38 84 00 04 */	addi r4, r4, 0x4
/* 814DBC48 | 4B E5 45 E9 */	bl memcpy
/* 814DBC4C | 48 00 00 1C */	b .L_814DBC68
.L_814DBC50:
/* 814DBC50 | 7F E3 FB 78 */	mr r3, r31
/* 814DBC54 | 7F A4 EB 78 */	mr r4, r29
/* 814DBC58 | 7F C5 F3 78 */	mr r5, r30
/* 814DBC5C | 7F 66 DB 78 */	mr r6, r27
/* 814DBC60 | 4B FF F9 81 */	bl getNANDFile_
/* 814DBC64 | 7C 7F 1B 78 */	mr r31, r3
.L_814DBC68:
/* 814DBC68 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814DBC6C | 7F E3 FB 78 */	mr r3, r31
/* 814DBC70 | 48 11 D8 9D */	bl _restgpr_27
/* 814DBC74 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814DBC78 | 7C 08 03 A6 */	mtlr r0
/* 814DBC7C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814DBC80 | 4E 80 00 20 */	blr
.endfn RFLiLoadShpTexture

# .text:0xCE8 | 0x814DBC84 | size: 0x16C
.fn RFLiGetShapeSize, global
/* 814DBC84 | 94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 814DBC88 | 7C 08 02 A6 */	mflr r0
/* 814DBC8C | 3C A0 81 62 */	lis r5, scParts2Arc$3540@ha
/* 814DBC90 | 90 01 00 B4 */	stw r0, 0xb4(r1)
/* 814DBC94 | 54 60 10 3A */	slwi r0, r3, 2
/* 814DBC98 | 38 A5 D2 00 */	addi r5, r5, scParts2Arc$3540@l
/* 814DBC9C | 93 E1 00 AC */	stw r31, 0xac(r1)
/* 814DBCA0 | 7C 9F 23 78 */	mr r31, r4
/* 814DBCA4 | 93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 814DBCA8 | 93 A1 00 A4 */	stw r29, 0xa4(r1)
/* 814DBCAC | 7F A5 00 2E */	lwzx r29, r5, r0
/* 814DBCB0 | 93 81 00 A0 */	stw r28, 0xa0(r1)
/* 814DBCB4 | 4B FF F0 05 */	bl RFLiGetLoader
/* 814DBCB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DBCBC | 7C 7E 1B 78 */	mr r30, r3
/* 814DBCC0 | 40 82 00 0C */	bne .L_814DBCCC
/* 814DBCC4 | 3B C0 00 00 */	li r30, 0x0
/* 814DBCC8 | 48 00 01 04 */	b .L_814DBDCC
.L_814DBCCC:
/* 814DBCCC | 57 A0 18 38 */	slwi r0, r29, 3
/* 814DBCD0 | 7F 83 02 14 */	add r28, r3, r0
/* 814DBCD4 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 814DBCD8 | 7C 1F 00 40 */	cmplw r31, r0
/* 814DBCDC | 41 80 00 0C */	blt .L_814DBCE8
/* 814DBCE0 | 3B C0 00 00 */	li r30, 0x0
/* 814DBCE4 | 48 00 00 E8 */	b .L_814DBDCC
.L_814DBCE8:
/* 814DBCE8 | 4B FF EF 4D */	bl RFLAvailable
/* 814DBCEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DBCF0 | 40 82 00 0C */	bne .L_814DBCFC
/* 814DBCF4 | 38 00 00 00 */	li r0, 0x0
/* 814DBCF8 | 48 00 00 1C */	b .L_814DBD14
.L_814DBCFC:
/* 814DBCFC | 4B FF EF BD */	bl RFLiGetLoader
/* 814DBD00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DBD04 | 40 82 00 0C */	bne .L_814DBD10
/* 814DBD08 | 38 00 00 00 */	li r0, 0x0
/* 814DBD0C | 48 00 00 08 */	b .L_814DBD14
.L_814DBD10:
/* 814DBD10 | 80 03 00 98 */	lwz r0, 0x98(r3)
.L_814DBD14:
/* 814DBD14 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814DBD18 | 41 82 00 2C */	beq .L_814DBD44
/* 814DBD1C | 80 BE 00 94 */	lwz r5, 0x94(r30)
/* 814DBD20 | 38 1F 00 01 */	addi r0, r31, 0x1
/* 814DBD24 | 80 9C 00 04 */	lwz r4, 0x4(r28)
/* 814DBD28 | 57 E3 13 BA */	clrlslwi r3, r31, 16, 2
/* 814DBD2C | 54 00 10 3A */	slwi r0, r0, 2
/* 814DBD30 | 7C 85 22 14 */	add r4, r5, r4
/* 814DBD34 | 7C 64 18 2E */	lwzx r3, r4, r3
/* 814DBD38 | 7C 04 00 2E */	lwzx r0, r4, r0
/* 814DBD3C | 7F C3 00 50 */	subf r30, r3, r0
/* 814DBD40 | 48 00 00 8C */	b .L_814DBDCC
.L_814DBD44:
/* 814DBD44 | 3B C0 00 00 */	li r30, 0x0
/* 814DBD48 | 38 60 04 00 */	li r3, 0x400
/* 814DBD4C | 4B FF EF 11 */	bl RFLiAlloc32
/* 814DBD50 | 7C 7D 1B 78 */	mr r29, r3
/* 814DBD54 | 80 6D 9D 40 */	lwz r3, scResFileFullPathName@sda21(r0)
/* 814DBD58 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814DBD5C | 38 A0 00 01 */	li r5, 0x1
/* 814DBD60 | 48 08 95 99 */	bl NANDPrivateOpen
/* 814DBD64 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DBD68 | 40 82 00 5C */	bne .L_814DBDC4
/* 814DBD6C | A0 1C 00 00 */	lhz r0, 0x0(r28)
/* 814DBD70 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814DBD74 | 80 9C 00 04 */	lwz r4, 0x4(r28)
/* 814DBD78 | 38 A0 00 00 */	li r5, 0x0
/* 814DBD7C | 54 06 10 3A */	slwi r6, r0, 2
/* 814DBD80 | 38 06 00 23 */	addi r0, r6, 0x23
/* 814DBD84 | 54 1C 00 34 */	clrrwi r28, r0, 5
/* 814DBD88 | 48 08 84 39 */	bl NANDSeek
/* 814DBD8C | 7F A4 EB 78 */	mr r4, r29
/* 814DBD90 | 7F 85 E3 78 */	mr r5, r28
/* 814DBD94 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814DBD98 | 48 08 82 69 */	bl NANDRead
/* 814DBD9C | 7C 1C 18 40 */	cmplw r28, r3
/* 814DBDA0 | 40 82 00 1C */	bne .L_814DBDBC
/* 814DBDA4 | 38 1F 00 01 */	addi r0, r31, 0x1
/* 814DBDA8 | 57 E3 13 BA */	clrlslwi r3, r31, 16, 2
/* 814DBDAC | 54 00 10 3A */	slwi r0, r0, 2
/* 814DBDB0 | 7C 7D 18 2E */	lwzx r3, r29, r3
/* 814DBDB4 | 7C 1D 00 2E */	lwzx r0, r29, r0
/* 814DBDB8 | 7F C3 00 50 */	subf r30, r3, r0
.L_814DBDBC:
/* 814DBDBC | 38 61 00 08 */	addi r3, r1, 0x8
/* 814DBDC0 | 48 08 97 2D */	bl NANDClose
.L_814DBDC4:
/* 814DBDC4 | 7F A3 EB 78 */	mr r3, r29
/* 814DBDC8 | 4B FF EE A9 */	bl RFLiFree
.L_814DBDCC:
/* 814DBDCC | 7F C3 F3 78 */	mr r3, r30
/* 814DBDD0 | 83 E1 00 AC */	lwz r31, 0xac(r1)
/* 814DBDD4 | 83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 814DBDD8 | 83 A1 00 A4 */	lwz r29, 0xa4(r1)
/* 814DBDDC | 83 81 00 A0 */	lwz r28, 0xa0(r1)
/* 814DBDE0 | 80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 814DBDE4 | 7C 08 03 A6 */	mtlr r0
/* 814DBDE8 | 38 21 00 B0 */	addi r1, r1, 0xb0
/* 814DBDEC | 4E 80 00 20 */	blr
.endfn RFLiGetShapeSize

# .text:0xE54 | 0x814DBDF0 | size: 0x124
.fn RFLiLoadShape, global
/* 814DBDF0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814DBDF4 | 7C 08 02 A6 */	mflr r0
/* 814DBDF8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814DBDFC | 39 61 00 20 */	addi r11, r1, 0x20
/* 814DBE00 | 48 11 D6 C1 */	bl _savegpr_27
/* 814DBE04 | 3C C0 81 62 */	lis r6, scParts2Arc$3547@ha
/* 814DBE08 | 54 60 10 3A */	slwi r0, r3, 2
/* 814DBE0C | 38 C6 D2 24 */	addi r6, r6, scParts2Arc$3547@l
/* 814DBE10 | 7C 9B 23 78 */	mr r27, r4
/* 814DBE14 | 7F C6 00 2E */	lwzx r30, r6, r0
/* 814DBE18 | 7C BF 2B 78 */	mr r31, r5
/* 814DBE1C | 4B FF EE 19 */	bl RFLAvailable
/* 814DBE20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DBE24 | 40 82 00 0C */	bne .L_814DBE30
/* 814DBE28 | 3B E0 00 00 */	li r31, 0x0
/* 814DBE2C | 48 00 00 CC */	b .L_814DBEF8
.L_814DBE30:
/* 814DBE30 | 4B FF EE 89 */	bl RFLiGetLoader
/* 814DBE34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DBE38 | 7C 7D 1B 78 */	mr r29, r3
/* 814DBE3C | 40 82 00 0C */	bne .L_814DBE48
/* 814DBE40 | 3B E0 00 00 */	li r31, 0x0
/* 814DBE44 | 48 00 00 B4 */	b .L_814DBEF8
.L_814DBE48:
/* 814DBE48 | 57 C0 18 38 */	slwi r0, r30, 3
/* 814DBE4C | 7F 83 02 14 */	add r28, r3, r0
/* 814DBE50 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 814DBE54 | 7C 1B 00 40 */	cmplw r27, r0
/* 814DBE58 | 41 80 00 0C */	blt .L_814DBE64
/* 814DBE5C | 3B E0 00 00 */	li r31, 0x0
/* 814DBE60 | 48 00 00 98 */	b .L_814DBEF8
.L_814DBE64:
/* 814DBE64 | 4B FF ED D1 */	bl RFLAvailable
/* 814DBE68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DBE6C | 40 82 00 0C */	bne .L_814DBE78
/* 814DBE70 | 38 00 00 00 */	li r0, 0x0
/* 814DBE74 | 48 00 00 1C */	b .L_814DBE90
.L_814DBE78:
/* 814DBE78 | 4B FF EE 41 */	bl RFLiGetLoader
/* 814DBE7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DBE80 | 40 82 00 0C */	bne .L_814DBE8C
/* 814DBE84 | 38 00 00 00 */	li r0, 0x0
/* 814DBE88 | 48 00 00 08 */	b .L_814DBE90
.L_814DBE8C:
/* 814DBE8C | 80 03 00 98 */	lwz r0, 0x98(r3)
.L_814DBE90:
/* 814DBE90 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814DBE94 | 41 82 00 4C */	beq .L_814DBEE0
/* 814DBE98 | 80 DD 00 94 */	lwz r6, 0x94(r29)
/* 814DBE9C | 38 1B 00 01 */	addi r0, r27, 0x1
/* 814DBEA0 | 81 3C 00 04 */	lwz r9, 0x4(r28)
/* 814DBEA4 | 57 65 13 BA */	clrlslwi r5, r27, 16, 2
/* 814DBEA8 | A0 9C 00 00 */	lhz r4, 0x0(r28)
/* 814DBEAC | 54 00 10 3A */	slwi r0, r0, 2
/* 814DBEB0 | 7C E6 4A 14 */	add r7, r6, r9
/* 814DBEB4 | 7F E3 FB 78 */	mr r3, r31
/* 814DBEB8 | 7D 07 28 2E */	lwzx r8, r7, r5
/* 814DBEBC | 54 85 10 3A */	slwi r5, r4, 2
/* 814DBEC0 | 7C 07 00 2E */	lwzx r0, r7, r0
/* 814DBEC4 | 7C 89 42 14 */	add r4, r9, r8
/* 814DBEC8 | 7C 84 2A 14 */	add r4, r4, r5
/* 814DBECC | 7C A8 00 50 */	subf r5, r8, r0
/* 814DBED0 | 7C 84 32 14 */	add r4, r4, r6
/* 814DBED4 | 38 84 00 04 */	addi r4, r4, 0x4
/* 814DBED8 | 4B E5 43 59 */	bl memcpy
/* 814DBEDC | 48 00 00 1C */	b .L_814DBEF8
.L_814DBEE0:
/* 814DBEE0 | 7F E3 FB 78 */	mr r3, r31
/* 814DBEE4 | 7F A4 EB 78 */	mr r4, r29
/* 814DBEE8 | 7F C5 F3 78 */	mr r5, r30
/* 814DBEEC | 7F 66 DB 78 */	mr r6, r27
/* 814DBEF0 | 4B FF F6 F1 */	bl getNANDFile_
/* 814DBEF4 | 7C 7F 1B 78 */	mr r31, r3
.L_814DBEF8:
/* 814DBEF8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814DBEFC | 7F E3 FB 78 */	mr r3, r31
/* 814DBF00 | 48 11 D6 0D */	bl _restgpr_27
/* 814DBF04 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814DBF08 | 7C 08 03 A6 */	mtlr r0
/* 814DBF0C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814DBF10 | 4E 80 00 20 */	blr
.endfn RFLiLoadShape

# .text:0xF78 | 0x814DBF14 | size: 0x6C
.fn RFLFreeCachedResource, global
/* 814DBF14 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814DBF18 | 7C 08 02 A6 */	mflr r0
/* 814DBF1C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814DBF20 | 4B FF ED 15 */	bl RFLAvailable
/* 814DBF24 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DBF28 | 40 82 00 0C */	bne .L_814DBF34
/* 814DBF2C | 38 60 00 01 */	li r3, 0x1
/* 814DBF30 | 48 00 00 40 */	b .L_814DBF70
.L_814DBF34:
/* 814DBF34 | 48 00 01 55 */	bl RFLiIsWorking
/* 814DBF38 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DBF3C | 41 82 00 0C */	beq .L_814DBF48
/* 814DBF40 | 38 60 00 01 */	li r3, 0x1
/* 814DBF44 | 48 00 00 2C */	b .L_814DBF70
.L_814DBF48:
/* 814DBF48 | 4B FF ED 71 */	bl RFLiGetLoader
/* 814DBF4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DBF50 | 40 82 00 0C */	bne .L_814DBF5C
/* 814DBF54 | 38 60 00 01 */	li r3, 0x1
/* 814DBF58 | 48 00 00 18 */	b .L_814DBF70
.L_814DBF5C:
/* 814DBF5C | 38 00 00 00 */	li r0, 0x0
/* 814DBF60 | 90 03 00 98 */	stw r0, 0x98(r3)
/* 814DBF64 | 90 03 00 94 */	stw r0, 0x94(r3)
/* 814DBF68 | 90 03 00 90 */	stw r0, 0x90(r3)
/* 814DBF6C | 38 60 00 00 */	li r3, 0x0
.L_814DBF70:
/* 814DBF70 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814DBF74 | 7C 08 03 A6 */	mtlr r0
/* 814DBF78 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814DBF7C | 4E 80 00 20 */	blr
.endfn RFLFreeCachedResource

# .text:0xFE4 | 0x814DBF80 | size: 0x48
.fn RFLIsResourceCached, global
/* 814DBF80 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814DBF84 | 7C 08 02 A6 */	mflr r0
/* 814DBF88 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814DBF8C | 4B FF EC A9 */	bl RFLAvailable
/* 814DBF90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DBF94 | 40 82 00 0C */	bne .L_814DBFA0
/* 814DBF98 | 38 60 00 00 */	li r3, 0x0
/* 814DBF9C | 48 00 00 1C */	b .L_814DBFB8
.L_814DBFA0:
/* 814DBFA0 | 4B FF ED 19 */	bl RFLiGetLoader
/* 814DBFA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814DBFA8 | 40 82 00 0C */	bne .L_814DBFB4
/* 814DBFAC | 38 60 00 00 */	li r3, 0x0
/* 814DBFB0 | 48 00 00 08 */	b .L_814DBFB8
.L_814DBFB4:
/* 814DBFB4 | 80 63 00 98 */	lwz r3, 0x98(r3)
.L_814DBFB8:
/* 814DBFB8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814DBFBC | 7C 08 03 A6 */	mtlr r0
/* 814DBFC0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814DBFC4 | 4E 80 00 20 */	blr
.endfn RFLIsResourceCached

# 0x8161D1B8..0x8161D248 | size: 0x90
.rodata
.balign 8

# .rodata:0x0 | 0x8161D1B8 | size: 0x14
.obj scParts2Arc$3514, local
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0x0000000A
.endobj scParts2Arc$3514

# .rodata:0x14 | 0x8161D1CC | size: 0x14
.obj scParts2Arc$3521, local
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0x0000000A
.endobj scParts2Arc$3521

# .rodata:0x28 | 0x8161D1E0 | size: 0x10
.obj scParts2Arc$3527, local
	.4byte 0x00000004
	.4byte 0x00000011
	.4byte 0x0000000F
	.4byte 0x00000007
.endobj scParts2Arc$3527

# .rodata:0x38 | 0x8161D1F0 | size: 0x10
.obj scParts2Arc$3534, local
	.4byte 0x00000004
	.4byte 0x00000011
	.4byte 0x0000000F
	.4byte 0x00000007
.endobj scParts2Arc$3534

# .rodata:0x48 | 0x8161D200 | size: 0x24
.obj scParts2Arc$3540, local
	.4byte 0x0000000D
	.4byte 0x00000005
	.4byte 0x00000003
	.4byte 0x00000008
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x0000000E
	.4byte 0x00000009
	.4byte 0x00000006
.endobj scParts2Arc$3540

# .rodata:0x6C | 0x8161D224 | size: 0x24
.obj scParts2Arc$3547, local
	.4byte 0x0000000D
	.4byte 0x00000005
	.4byte 0x00000003
	.4byte 0x00000008
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x0000000E
	.4byte 0x00000009
	.4byte 0x00000006
.endobj scParts2Arc$3547

# 0x8166EA00..0x8166EA20 | size: 0x20
.data
.balign 8

# .data:0x0 | 0x8166EA00 | size: 0x1D
.obj lbl_8166EA00, global
	.string "/shared2/FaceLib/RFL_Res.dat"
.endobj lbl_8166EA00

# .data:0x1D | 0x8166EA1D | size: 0x3
.obj gap_08_8166EA1D_data, global
.hidden gap_08_8166EA1D_data
	.byte 0x00, 0x00, 0x00
.endobj gap_08_8166EA1D_data

# 0x81697D80..0x81697D88 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697D80 | size: 0x4
.obj scResFileFullPathName, local
	.4byte lbl_8166EA00
.endobj scResFileFullPathName

# .sdata:0x4 | 0x81697D84 | size: 0x4
.obj gap_11_81697D84_sdata, global
.hidden gap_11_81697D84_sdata
	.4byte 0x00000000
.endobj gap_11_81697D84_sdata
