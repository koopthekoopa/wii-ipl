.include "macros.inc"
.file "sw_data.cpp"

# 0x8143A8E4..0x8143B2B8 | size: 0x9D4
.text
.balign 4

# .text:0x0 | 0x8143A8E4 | size: 0x9D4
.fn "__sinit_\\sw_data_cpp", global
/* 8143A8E4 | 94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8143A8E8 | 7C 08 02 A6 */	mflr r0
/* 8143A8EC | 90 01 00 94 */	stw r0, 0x94(r1)
/* 8143A8F0 | 39 61 00 90 */	addi r11, r1, 0x90
/* 8143A8F4 | 48 1B EB 99 */	bl _savegpr_14
/* 8143A8F8 | 3C 60 81 66 */	lis r3, lbl_81664058@ha
/* 8143A8FC | 38 63 40 58 */	addi r3, r3, lbl_81664058@l
/* 8143A900 | 3A 43 01 E0 */	addi r18, r3, 0x1e0
/* 8143A904 | 82 63 01 E0 */	lwz r19, 0x1e0(r3)
/* 8143A908 | 80 12 00 50 */	lwz r0, 0x50(r18)
/* 8143A90C | 3A 23 02 80 */	addi r17, r3, 0x280
/* 8143A910 | 81 D2 00 20 */	lwz r14, 0x20(r18)
/* 8143A914 | 90 01 00 40 */	stw r0, 0x40(r1)
/* 8143A918 | 80 12 00 04 */	lwz r0, 0x4(r18)
/* 8143A91C | 81 61 00 40 */	lwz r11, 0x40(r1)
/* 8143A920 | 90 01 00 3C */	stw r0, 0x3c(r1)
/* 8143A924 | 80 12 00 54 */	lwz r0, 0x54(r18)
/* 8143A928 | 91 71 00 04 */	stw r11, 0x4(r17)
/* 8143A92C | 81 61 00 3C */	lwz r11, 0x3c(r1)
/* 8143A930 | 90 01 00 38 */	stw r0, 0x38(r1)
/* 8143A934 | 80 12 00 08 */	lwz r0, 0x8(r18)
/* 8143A938 | 91 71 00 28 */	stw r11, 0x28(r17)
/* 8143A93C | 81 61 00 38 */	lwz r11, 0x38(r1)
/* 8143A940 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8143A944 | 80 12 00 58 */	lwz r0, 0x58(r18)
/* 8143A948 | 91 71 00 2C */	stw r11, 0x2c(r17)
/* 8143A94C | 81 61 00 34 */	lwz r11, 0x34(r1)
/* 8143A950 | 90 01 00 30 */	stw r0, 0x30(r1)
/* 8143A954 | 80 12 00 0C */	lwz r0, 0xc(r18)
/* 8143A958 | 91 71 00 50 */	stw r11, 0x50(r17)
/* 8143A95C | 81 61 00 30 */	lwz r11, 0x30(r1)
/* 8143A960 | 90 01 00 2C */	stw r0, 0x2c(r1)
/* 8143A964 | 80 12 00 5C */	lwz r0, 0x5c(r18)
/* 8143A968 | 91 71 00 54 */	stw r11, 0x54(r17)
/* 8143A96C | 81 61 00 2C */	lwz r11, 0x2c(r1)
/* 8143A970 | 90 01 00 28 */	stw r0, 0x28(r1)
/* 8143A974 | 80 12 00 10 */	lwz r0, 0x10(r18)
/* 8143A978 | 91 71 00 78 */	stw r11, 0x78(r17)
/* 8143A97C | 81 61 00 28 */	lwz r11, 0x28(r1)
/* 8143A980 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8143A984 | 80 12 00 60 */	lwz r0, 0x60(r18)
/* 8143A988 | 91 71 00 7C */	stw r11, 0x7c(r17)
/* 8143A98C | 81 61 00 24 */	lwz r11, 0x24(r1)
/* 8143A990 | 90 01 00 20 */	stw r0, 0x20(r1)
/* 8143A994 | 80 12 00 14 */	lwz r0, 0x14(r18)
/* 8143A998 | 91 71 00 A0 */	stw r11, 0xa0(r17)
/* 8143A99C | 81 61 00 20 */	lwz r11, 0x20(r1)
/* 8143A9A0 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 8143A9A4 | 80 12 00 64 */	lwz r0, 0x64(r18)
/* 8143A9A8 | 91 71 00 A4 */	stw r11, 0xa4(r17)
/* 8143A9AC | 81 61 00 1C */	lwz r11, 0x1c(r1)
/* 8143A9B0 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 8143A9B4 | 80 12 00 18 */	lwz r0, 0x18(r18)
/* 8143A9B8 | 91 71 00 C8 */	stw r11, 0xc8(r17)
/* 8143A9BC | 81 61 00 18 */	lwz r11, 0x18(r1)
/* 8143A9C0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143A9C4 | 80 12 00 68 */	lwz r0, 0x68(r18)
/* 8143A9C8 | 91 71 00 CC */	stw r11, 0xcc(r17)
/* 8143A9CC | 81 61 00 14 */	lwz r11, 0x14(r1)
/* 8143A9D0 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 8143A9D4 | 80 12 00 1C */	lwz r0, 0x1c(r18)
/* 8143A9D8 | 91 71 00 F0 */	stw r11, 0xf0(r17)
/* 8143A9DC | 81 61 00 10 */	lwz r11, 0x10(r1)
/* 8143A9E0 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8143A9E4 | 80 12 00 6C */	lwz r0, 0x6c(r18)
/* 8143A9E8 | 91 71 00 F4 */	stw r11, 0xf4(r17)
/* 8143A9EC | 81 61 00 0C */	lwz r11, 0xc(r1)
/* 8143A9F0 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8143A9F4 | 81 F2 00 70 */	lwz r15, 0x70(r18)
/* 8143A9F8 | 80 12 00 24 */	lwz r0, 0x24(r18)
/* 8143A9FC | 80 92 00 74 */	lwz r4, 0x74(r18)
/* 8143AA00 | 80 B2 00 28 */	lwz r5, 0x28(r18)
/* 8143AA04 | 80 D2 00 78 */	lwz r6, 0x78(r18)
/* 8143AA08 | 80 F2 00 2C */	lwz r7, 0x2c(r18)
/* 8143AA0C | 81 12 00 7C */	lwz r8, 0x7c(r18)
/* 8143AA10 | 81 32 00 30 */	lwz r9, 0x30(r18)
/* 8143AA14 | 91 71 01 18 */	stw r11, 0x118(r17)
/* 8143AA18 | 81 61 00 08 */	lwz r11, 0x8(r1)
/* 8143AA1C | 92 63 02 80 */	stw r19, 0x280(r3)
/* 8143AA20 | 81 52 00 80 */	lwz r10, 0x80(r18)
/* 8143AA24 | 91 71 01 1C */	stw r11, 0x11c(r17)
/* 8143AA28 | 91 D1 01 40 */	stw r14, 0x140(r17)
/* 8143AA2C | 91 F1 01 44 */	stw r15, 0x144(r17)
/* 8143AA30 | 90 11 01 68 */	stw r0, 0x168(r17)
/* 8143AA34 | 90 91 01 6C */	stw r4, 0x16c(r17)
/* 8143AA38 | 90 B1 01 90 */	stw r5, 0x190(r17)
/* 8143AA3C | 90 D1 01 94 */	stw r6, 0x194(r17)
/* 8143AA40 | 90 F1 01 B8 */	stw r7, 0x1b8(r17)
/* 8143AA44 | 91 11 01 BC */	stw r8, 0x1bc(r17)
/* 8143AA48 | 91 31 01 E0 */	stw r9, 0x1e0(r17)
/* 8143AA4C | 81 72 00 34 */	lwz r11, 0x34(r18)
/* 8143AA50 | 3A 03 05 A0 */	addi r16, r3, 0x5a0
/* 8143AA54 | 81 92 00 84 */	lwz r12, 0x84(r18)
/* 8143AA58 | 83 F2 00 38 */	lwz r31, 0x38(r18)
/* 8143AA5C | 83 D2 00 88 */	lwz r30, 0x88(r18)
/* 8143AA60 | 83 B2 00 3C */	lwz r29, 0x3c(r18)
/* 8143AA64 | 83 92 00 8C */	lwz r28, 0x8c(r18)
/* 8143AA68 | 83 72 00 40 */	lwz r27, 0x40(r18)
/* 8143AA6C | 83 52 00 90 */	lwz r26, 0x90(r18)
/* 8143AA70 | 83 32 00 44 */	lwz r25, 0x44(r18)
/* 8143AA74 | 83 12 00 94 */	lwz r24, 0x94(r18)
/* 8143AA78 | 82 F2 00 48 */	lwz r23, 0x48(r18)
/* 8143AA7C | 82 D2 00 98 */	lwz r22, 0x98(r18)
/* 8143AA80 | 82 B2 00 4C */	lwz r21, 0x4c(r18)
/* 8143AA84 | 82 92 00 9C */	lwz r20, 0x9c(r18)
/* 8143AA88 | 91 51 01 E4 */	stw r10, 0x1e4(r17)
/* 8143AA8C | 91 71 02 08 */	stw r11, 0x208(r17)
/* 8143AA90 | 91 91 02 0C */	stw r12, 0x20c(r17)
/* 8143AA94 | 93 F1 02 30 */	stw r31, 0x230(r17)
/* 8143AA98 | 93 D1 02 34 */	stw r30, 0x234(r17)
/* 8143AA9C | 93 B1 02 58 */	stw r29, 0x258(r17)
/* 8143AAA0 | 93 91 02 5C */	stw r28, 0x25c(r17)
/* 8143AAA4 | 93 71 02 80 */	stw r27, 0x280(r17)
/* 8143AAA8 | 93 51 02 84 */	stw r26, 0x284(r17)
/* 8143AAAC | 93 31 02 A8 */	stw r25, 0x2a8(r17)
/* 8143AAB0 | 93 11 02 AC */	stw r24, 0x2ac(r17)
/* 8143AAB4 | 92 F1 02 D0 */	stw r23, 0x2d0(r17)
/* 8143AAB8 | 92 D1 02 D4 */	stw r22, 0x2d4(r17)
/* 8143AABC | 92 B1 02 F8 */	stw r21, 0x2f8(r17)
/* 8143AAC0 | 92 91 02 FC */	stw r20, 0x2fc(r17)
/* 8143AAC4 | 82 21 00 40 */	lwz r17, 0x40(r1)
/* 8143AAC8 | 92 63 05 A0 */	stw r19, 0x5a0(r3)
/* 8143AACC | 92 30 00 04 */	stw r17, 0x4(r16)
/* 8143AAD0 | 82 21 00 3C */	lwz r17, 0x3c(r1)
/* 8143AAD4 | 91 D0 01 40 */	stw r14, 0x140(r16)
/* 8143AAD8 | 92 30 00 28 */	stw r17, 0x28(r16)
/* 8143AADC | 82 21 00 38 */	lwz r17, 0x38(r1)
/* 8143AAE0 | 91 F0 01 44 */	stw r15, 0x144(r16)
/* 8143AAE4 | 92 30 00 2C */	stw r17, 0x2c(r16)
/* 8143AAE8 | 82 21 00 34 */	lwz r17, 0x34(r1)
/* 8143AAEC | 90 10 01 68 */	stw r0, 0x168(r16)
/* 8143AAF0 | 92 30 00 50 */	stw r17, 0x50(r16)
/* 8143AAF4 | 82 21 00 30 */	lwz r17, 0x30(r1)
/* 8143AAF8 | 90 90 01 6C */	stw r4, 0x16c(r16)
/* 8143AAFC | 92 30 00 54 */	stw r17, 0x54(r16)
/* 8143AB00 | 82 21 00 2C */	lwz r17, 0x2c(r1)
/* 8143AB04 | 90 B0 01 90 */	stw r5, 0x190(r16)
/* 8143AB08 | 92 30 00 78 */	stw r17, 0x78(r16)
/* 8143AB0C | 82 21 00 28 */	lwz r17, 0x28(r1)
/* 8143AB10 | 90 D0 01 94 */	stw r6, 0x194(r16)
/* 8143AB14 | 92 30 00 7C */	stw r17, 0x7c(r16)
/* 8143AB18 | 82 21 00 24 */	lwz r17, 0x24(r1)
/* 8143AB1C | 92 30 00 A0 */	stw r17, 0xa0(r16)
/* 8143AB20 | 82 21 00 20 */	lwz r17, 0x20(r1)
/* 8143AB24 | 92 30 00 A4 */	stw r17, 0xa4(r16)
/* 8143AB28 | 82 21 00 1C */	lwz r17, 0x1c(r1)
/* 8143AB2C | 92 30 00 C8 */	stw r17, 0xc8(r16)
/* 8143AB30 | 82 21 00 18 */	lwz r17, 0x18(r1)
/* 8143AB34 | 92 30 00 CC */	stw r17, 0xcc(r16)
/* 8143AB38 | 82 21 00 14 */	lwz r17, 0x14(r1)
/* 8143AB3C | 92 30 00 F0 */	stw r17, 0xf0(r16)
/* 8143AB40 | 82 21 00 10 */	lwz r17, 0x10(r1)
/* 8143AB44 | 92 30 00 F4 */	stw r17, 0xf4(r16)
/* 8143AB48 | 82 21 00 0C */	lwz r17, 0xc(r1)
/* 8143AB4C | 92 30 01 18 */	stw r17, 0x118(r16)
/* 8143AB50 | 82 21 00 08 */	lwz r17, 0x8(r1)
/* 8143AB54 | 92 30 01 1C */	stw r17, 0x11c(r16)
/* 8143AB58 | 90 F0 01 B8 */	stw r7, 0x1b8(r16)
/* 8143AB5C | 3A 43 08 C0 */	addi r18, r3, 0x8c0
/* 8143AB60 | 91 10 01 BC */	stw r8, 0x1bc(r16)
/* 8143AB64 | 91 30 01 E0 */	stw r9, 0x1e0(r16)
/* 8143AB68 | 91 50 01 E4 */	stw r10, 0x1e4(r16)
/* 8143AB6C | 91 70 02 08 */	stw r11, 0x208(r16)
/* 8143AB70 | 91 90 02 0C */	stw r12, 0x20c(r16)
/* 8143AB74 | 93 F0 02 30 */	stw r31, 0x230(r16)
/* 8143AB78 | 93 D0 02 34 */	stw r30, 0x234(r16)
/* 8143AB7C | 93 B0 02 58 */	stw r29, 0x258(r16)
/* 8143AB80 | 93 90 02 5C */	stw r28, 0x25c(r16)
/* 8143AB84 | 93 70 02 80 */	stw r27, 0x280(r16)
/* 8143AB88 | 93 50 02 84 */	stw r26, 0x284(r16)
/* 8143AB8C | 93 30 02 A8 */	stw r25, 0x2a8(r16)
/* 8143AB90 | 93 10 02 AC */	stw r24, 0x2ac(r16)
/* 8143AB94 | 92 F0 02 D0 */	stw r23, 0x2d0(r16)
/* 8143AB98 | 92 D0 02 D4 */	stw r22, 0x2d4(r16)
/* 8143AB9C | 92 B0 02 F8 */	stw r21, 0x2f8(r16)
/* 8143ABA0 | 92 90 02 FC */	stw r20, 0x2fc(r16)
/* 8143ABA4 | 82 01 00 40 */	lwz r16, 0x40(r1)
/* 8143ABA8 | 92 63 08 C0 */	stw r19, 0x8c0(r3)
/* 8143ABAC | 92 12 00 04 */	stw r16, 0x4(r18)
/* 8143ABB0 | 82 01 00 3C */	lwz r16, 0x3c(r1)
/* 8143ABB4 | 91 D2 01 40 */	stw r14, 0x140(r18)
/* 8143ABB8 | 92 12 00 28 */	stw r16, 0x28(r18)
/* 8143ABBC | 82 01 00 38 */	lwz r16, 0x38(r1)
/* 8143ABC0 | 91 F2 01 44 */	stw r15, 0x144(r18)
/* 8143ABC4 | 92 12 00 2C */	stw r16, 0x2c(r18)
/* 8143ABC8 | 82 01 00 34 */	lwz r16, 0x34(r1)
/* 8143ABCC | 90 12 01 68 */	stw r0, 0x168(r18)
/* 8143ABD0 | 92 12 00 50 */	stw r16, 0x50(r18)
/* 8143ABD4 | 82 01 00 30 */	lwz r16, 0x30(r1)
/* 8143ABD8 | 90 92 01 6C */	stw r4, 0x16c(r18)
/* 8143ABDC | 92 12 00 54 */	stw r16, 0x54(r18)
/* 8143ABE0 | 82 01 00 2C */	lwz r16, 0x2c(r1)
/* 8143ABE4 | 90 B2 01 90 */	stw r5, 0x190(r18)
/* 8143ABE8 | 92 12 00 78 */	stw r16, 0x78(r18)
/* 8143ABEC | 82 01 00 28 */	lwz r16, 0x28(r1)
/* 8143ABF0 | 90 D2 01 94 */	stw r6, 0x194(r18)
/* 8143ABF4 | 92 12 00 7C */	stw r16, 0x7c(r18)
/* 8143ABF8 | 82 01 00 24 */	lwz r16, 0x24(r1)
/* 8143ABFC | 90 F2 01 B8 */	stw r7, 0x1b8(r18)
/* 8143AC00 | 92 12 00 A0 */	stw r16, 0xa0(r18)
/* 8143AC04 | 82 01 00 20 */	lwz r16, 0x20(r1)
/* 8143AC08 | 91 12 01 BC */	stw r8, 0x1bc(r18)
/* 8143AC0C | 92 12 00 A4 */	stw r16, 0xa4(r18)
/* 8143AC10 | 82 01 00 1C */	lwz r16, 0x1c(r1)
/* 8143AC14 | 91 32 01 E0 */	stw r9, 0x1e0(r18)
/* 8143AC18 | 92 12 00 C8 */	stw r16, 0xc8(r18)
/* 8143AC1C | 82 01 00 18 */	lwz r16, 0x18(r1)
/* 8143AC20 | 91 52 01 E4 */	stw r10, 0x1e4(r18)
/* 8143AC24 | 92 12 00 CC */	stw r16, 0xcc(r18)
/* 8143AC28 | 82 01 00 14 */	lwz r16, 0x14(r1)
/* 8143AC2C | 91 72 02 08 */	stw r11, 0x208(r18)
/* 8143AC30 | 92 12 00 F0 */	stw r16, 0xf0(r18)
/* 8143AC34 | 82 01 00 10 */	lwz r16, 0x10(r1)
/* 8143AC38 | 91 92 02 0C */	stw r12, 0x20c(r18)
/* 8143AC3C | 92 12 00 F4 */	stw r16, 0xf4(r18)
/* 8143AC40 | 82 01 00 0C */	lwz r16, 0xc(r1)
/* 8143AC44 | 93 F2 02 30 */	stw r31, 0x230(r18)
/* 8143AC48 | 92 12 01 18 */	stw r16, 0x118(r18)
/* 8143AC4C | 7E 30 8B 78 */	mr r16, r17
/* 8143AC50 | 92 12 01 1C */	stw r16, 0x11c(r18)
/* 8143AC54 | 93 D2 02 34 */	stw r30, 0x234(r18)
/* 8143AC58 | 93 B2 02 58 */	stw r29, 0x258(r18)
/* 8143AC5C | 93 92 02 5C */	stw r28, 0x25c(r18)
/* 8143AC60 | 93 72 02 80 */	stw r27, 0x280(r18)
/* 8143AC64 | 93 52 02 84 */	stw r26, 0x284(r18)
/* 8143AC68 | 3A 03 0B E0 */	addi r16, r3, 0xbe0
/* 8143AC6C | 3A 23 0F 00 */	addi r17, r3, 0xf00
/* 8143AC70 | 93 32 02 A8 */	stw r25, 0x2a8(r18)
/* 8143AC74 | 93 12 02 AC */	stw r24, 0x2ac(r18)
/* 8143AC78 | 92 F2 02 D0 */	stw r23, 0x2d0(r18)
/* 8143AC7C | 92 D2 02 D4 */	stw r22, 0x2d4(r18)
/* 8143AC80 | 92 B2 02 F8 */	stw r21, 0x2f8(r18)
/* 8143AC84 | 92 92 02 FC */	stw r20, 0x2fc(r18)
/* 8143AC88 | 82 41 00 40 */	lwz r18, 0x40(r1)
/* 8143AC8C | 91 D0 01 40 */	stw r14, 0x140(r16)
/* 8143AC90 | 92 50 00 04 */	stw r18, 0x4(r16)
/* 8143AC94 | 82 41 00 3C */	lwz r18, 0x3c(r1)
/* 8143AC98 | 91 F0 01 44 */	stw r15, 0x144(r16)
/* 8143AC9C | 92 50 00 28 */	stw r18, 0x28(r16)
/* 8143ACA0 | 82 41 00 38 */	lwz r18, 0x38(r1)
/* 8143ACA4 | 90 10 01 68 */	stw r0, 0x168(r16)
/* 8143ACA8 | 92 50 00 2C */	stw r18, 0x2c(r16)
/* 8143ACAC | 82 41 00 34 */	lwz r18, 0x34(r1)
/* 8143ACB0 | 90 90 01 6C */	stw r4, 0x16c(r16)
/* 8143ACB4 | 92 50 00 50 */	stw r18, 0x50(r16)
/* 8143ACB8 | 82 41 00 30 */	lwz r18, 0x30(r1)
/* 8143ACBC | 90 B0 01 90 */	stw r5, 0x190(r16)
/* 8143ACC0 | 92 50 00 54 */	stw r18, 0x54(r16)
/* 8143ACC4 | 82 41 00 2C */	lwz r18, 0x2c(r1)
/* 8143ACC8 | 90 D0 01 94 */	stw r6, 0x194(r16)
/* 8143ACCC | 92 50 00 78 */	stw r18, 0x78(r16)
/* 8143ACD0 | 82 41 00 28 */	lwz r18, 0x28(r1)
/* 8143ACD4 | 90 F0 01 B8 */	stw r7, 0x1b8(r16)
/* 8143ACD8 | 92 50 00 7C */	stw r18, 0x7c(r16)
/* 8143ACDC | 82 41 00 24 */	lwz r18, 0x24(r1)
/* 8143ACE0 | 91 10 01 BC */	stw r8, 0x1bc(r16)
/* 8143ACE4 | 92 50 00 A0 */	stw r18, 0xa0(r16)
/* 8143ACE8 | 82 41 00 20 */	lwz r18, 0x20(r1)
/* 8143ACEC | 91 30 01 E0 */	stw r9, 0x1e0(r16)
/* 8143ACF0 | 92 50 00 A4 */	stw r18, 0xa4(r16)
/* 8143ACF4 | 82 41 00 1C */	lwz r18, 0x1c(r1)
/* 8143ACF8 | 91 50 01 E4 */	stw r10, 0x1e4(r16)
/* 8143ACFC | 92 50 00 C8 */	stw r18, 0xc8(r16)
/* 8143AD00 | 82 41 00 18 */	lwz r18, 0x18(r1)
/* 8143AD04 | 91 70 02 08 */	stw r11, 0x208(r16)
/* 8143AD08 | 92 50 00 CC */	stw r18, 0xcc(r16)
/* 8143AD0C | 82 41 00 14 */	lwz r18, 0x14(r1)
/* 8143AD10 | 91 90 02 0C */	stw r12, 0x20c(r16)
/* 8143AD14 | 92 50 00 F0 */	stw r18, 0xf0(r16)
/* 8143AD18 | 82 41 00 10 */	lwz r18, 0x10(r1)
/* 8143AD1C | 93 F0 02 30 */	stw r31, 0x230(r16)
/* 8143AD20 | 92 50 00 F4 */	stw r18, 0xf4(r16)
/* 8143AD24 | 82 41 00 0C */	lwz r18, 0xc(r1)
/* 8143AD28 | 93 D0 02 34 */	stw r30, 0x234(r16)
/* 8143AD2C | 92 50 01 18 */	stw r18, 0x118(r16)
/* 8143AD30 | 82 41 00 08 */	lwz r18, 0x8(r1)
/* 8143AD34 | 93 B0 02 58 */	stw r29, 0x258(r16)
/* 8143AD38 | 92 50 01 1C */	stw r18, 0x11c(r16)
/* 8143AD3C | 93 90 02 5C */	stw r28, 0x25c(r16)
/* 8143AD40 | 93 70 02 80 */	stw r27, 0x280(r16)
/* 8143AD44 | 93 50 02 84 */	stw r26, 0x284(r16)
/* 8143AD48 | 93 30 02 A8 */	stw r25, 0x2a8(r16)
/* 8143AD4C | 93 10 02 AC */	stw r24, 0x2ac(r16)
/* 8143AD50 | 92 F0 02 D0 */	stw r23, 0x2d0(r16)
/* 8143AD54 | 92 D0 02 D4 */	stw r22, 0x2d4(r16)
/* 8143AD58 | 92 B0 02 F8 */	stw r21, 0x2f8(r16)
/* 8143AD5C | 92 90 02 FC */	stw r20, 0x2fc(r16)
/* 8143AD60 | 82 01 00 40 */	lwz r16, 0x40(r1)
/* 8143AD64 | 92 63 0B E0 */	stw r19, 0xbe0(r3)
/* 8143AD68 | 92 11 00 04 */	stw r16, 0x4(r17)
/* 8143AD6C | 82 01 00 3C */	lwz r16, 0x3c(r1)
/* 8143AD70 | 92 63 0F 00 */	stw r19, 0xf00(r3)
/* 8143AD74 | 92 11 00 28 */	stw r16, 0x28(r17)
/* 8143AD78 | 82 01 00 38 */	lwz r16, 0x38(r1)
/* 8143AD7C | 92 11 00 2C */	stw r16, 0x2c(r17)
/* 8143AD80 | 82 01 00 34 */	lwz r16, 0x34(r1)
/* 8143AD84 | 92 11 00 50 */	stw r16, 0x50(r17)
/* 8143AD88 | 82 41 00 30 */	lwz r18, 0x30(r1)
/* 8143AD8C | 3A 03 12 20 */	addi r16, r3, 0x1220
/* 8143AD90 | 91 D1 01 40 */	stw r14, 0x140(r17)
/* 8143AD94 | 92 51 00 54 */	stw r18, 0x54(r17)
/* 8143AD98 | 82 41 00 2C */	lwz r18, 0x2c(r1)
/* 8143AD9C | 91 F1 01 44 */	stw r15, 0x144(r17)
/* 8143ADA0 | 92 51 00 78 */	stw r18, 0x78(r17)
/* 8143ADA4 | 82 41 00 28 */	lwz r18, 0x28(r1)
/* 8143ADA8 | 90 11 01 68 */	stw r0, 0x168(r17)
/* 8143ADAC | 92 51 00 7C */	stw r18, 0x7c(r17)
/* 8143ADB0 | 82 41 00 24 */	lwz r18, 0x24(r1)
/* 8143ADB4 | 90 91 01 6C */	stw r4, 0x16c(r17)
/* 8143ADB8 | 92 51 00 A0 */	stw r18, 0xa0(r17)
/* 8143ADBC | 82 41 00 20 */	lwz r18, 0x20(r1)
/* 8143ADC0 | 90 B1 01 90 */	stw r5, 0x190(r17)
/* 8143ADC4 | 92 51 00 A4 */	stw r18, 0xa4(r17)
/* 8143ADC8 | 82 41 00 1C */	lwz r18, 0x1c(r1)
/* 8143ADCC | 90 D1 01 94 */	stw r6, 0x194(r17)
/* 8143ADD0 | 92 51 00 C8 */	stw r18, 0xc8(r17)
/* 8143ADD4 | 82 41 00 18 */	lwz r18, 0x18(r1)
/* 8143ADD8 | 90 F1 01 B8 */	stw r7, 0x1b8(r17)
/* 8143ADDC | 92 51 00 CC */	stw r18, 0xcc(r17)
/* 8143ADE0 | 82 41 00 14 */	lwz r18, 0x14(r1)
/* 8143ADE4 | 91 11 01 BC */	stw r8, 0x1bc(r17)
/* 8143ADE8 | 92 51 00 F0 */	stw r18, 0xf0(r17)
/* 8143ADEC | 82 41 00 10 */	lwz r18, 0x10(r1)
/* 8143ADF0 | 91 31 01 E0 */	stw r9, 0x1e0(r17)
/* 8143ADF4 | 92 51 00 F4 */	stw r18, 0xf4(r17)
/* 8143ADF8 | 82 41 00 0C */	lwz r18, 0xc(r1)
/* 8143ADFC | 91 51 01 E4 */	stw r10, 0x1e4(r17)
/* 8143AE00 | 92 51 01 18 */	stw r18, 0x118(r17)
/* 8143AE04 | 82 41 00 08 */	lwz r18, 0x8(r1)
/* 8143AE08 | 91 71 02 08 */	stw r11, 0x208(r17)
/* 8143AE0C | 92 51 01 1C */	stw r18, 0x11c(r17)
/* 8143AE10 | 91 91 02 0C */	stw r12, 0x20c(r17)
/* 8143AE14 | 93 F1 02 30 */	stw r31, 0x230(r17)
/* 8143AE18 | 93 D1 02 34 */	stw r30, 0x234(r17)
/* 8143AE1C | 93 B1 02 58 */	stw r29, 0x258(r17)
/* 8143AE20 | 93 91 02 5C */	stw r28, 0x25c(r17)
/* 8143AE24 | 93 71 02 80 */	stw r27, 0x280(r17)
/* 8143AE28 | 93 51 02 84 */	stw r26, 0x284(r17)
/* 8143AE2C | 93 31 02 A8 */	stw r25, 0x2a8(r17)
/* 8143AE30 | 93 11 02 AC */	stw r24, 0x2ac(r17)
/* 8143AE34 | 92 F1 02 D0 */	stw r23, 0x2d0(r17)
/* 8143AE38 | 92 D1 02 D4 */	stw r22, 0x2d4(r17)
/* 8143AE3C | 92 B1 02 F8 */	stw r21, 0x2f8(r17)
/* 8143AE40 | 92 91 02 FC */	stw r20, 0x2fc(r17)
/* 8143AE44 | 82 21 00 40 */	lwz r17, 0x40(r1)
/* 8143AE48 | 92 63 12 20 */	stw r19, 0x1220(r3)
/* 8143AE4C | 92 30 00 04 */	stw r17, 0x4(r16)
/* 8143AE50 | 82 21 00 3C */	lwz r17, 0x3c(r1)
/* 8143AE54 | 92 30 00 28 */	stw r17, 0x28(r16)
/* 8143AE58 | 82 21 00 38 */	lwz r17, 0x38(r1)
/* 8143AE5C | 92 30 00 2C */	stw r17, 0x2c(r16)
/* 8143AE60 | 82 21 00 34 */	lwz r17, 0x34(r1)
/* 8143AE64 | 92 30 00 50 */	stw r17, 0x50(r16)
/* 8143AE68 | 82 21 00 30 */	lwz r17, 0x30(r1)
/* 8143AE6C | 92 30 00 54 */	stw r17, 0x54(r16)
/* 8143AE70 | 82 21 00 2C */	lwz r17, 0x2c(r1)
/* 8143AE74 | 92 30 00 78 */	stw r17, 0x78(r16)
/* 8143AE78 | 82 21 00 28 */	lwz r17, 0x28(r1)
/* 8143AE7C | 92 30 00 7C */	stw r17, 0x7c(r16)
/* 8143AE80 | 82 21 00 24 */	lwz r17, 0x24(r1)
/* 8143AE84 | 92 30 00 A0 */	stw r17, 0xa0(r16)
/* 8143AE88 | 82 21 00 20 */	lwz r17, 0x20(r1)
/* 8143AE8C | 92 30 00 A4 */	stw r17, 0xa4(r16)
/* 8143AE90 | 82 21 00 1C */	lwz r17, 0x1c(r1)
/* 8143AE94 | 92 30 00 C8 */	stw r17, 0xc8(r16)
/* 8143AE98 | 82 21 00 18 */	lwz r17, 0x18(r1)
/* 8143AE9C | 92 30 00 CC */	stw r17, 0xcc(r16)
/* 8143AEA0 | 82 21 00 14 */	lwz r17, 0x14(r1)
/* 8143AEA4 | 92 30 00 F0 */	stw r17, 0xf0(r16)
/* 8143AEA8 | 82 21 00 10 */	lwz r17, 0x10(r1)
/* 8143AEAC | 92 30 00 F4 */	stw r17, 0xf4(r16)
/* 8143AEB0 | 82 21 00 0C */	lwz r17, 0xc(r1)
/* 8143AEB4 | 92 30 01 18 */	stw r17, 0x118(r16)
/* 8143AEB8 | 7E 51 93 78 */	mr r17, r18
/* 8143AEBC | 92 30 01 1C */	stw r17, 0x11c(r16)
/* 8143AEC0 | 91 D0 01 40 */	stw r14, 0x140(r16)
/* 8143AEC4 | 3A 23 15 40 */	addi r17, r3, 0x1540
/* 8143AEC8 | 91 F0 01 44 */	stw r15, 0x144(r16)
/* 8143AECC | 90 10 01 68 */	stw r0, 0x168(r16)
/* 8143AED0 | 90 90 01 6C */	stw r4, 0x16c(r16)
/* 8143AED4 | 90 B0 01 90 */	stw r5, 0x190(r16)
/* 8143AED8 | 90 D0 01 94 */	stw r6, 0x194(r16)
/* 8143AEDC | 90 F0 01 B8 */	stw r7, 0x1b8(r16)
/* 8143AEE0 | 91 10 01 BC */	stw r8, 0x1bc(r16)
/* 8143AEE4 | 91 30 01 E0 */	stw r9, 0x1e0(r16)
/* 8143AEE8 | 91 50 01 E4 */	stw r10, 0x1e4(r16)
/* 8143AEEC | 91 70 02 08 */	stw r11, 0x208(r16)
/* 8143AEF0 | 91 90 02 0C */	stw r12, 0x20c(r16)
/* 8143AEF4 | 93 F0 02 30 */	stw r31, 0x230(r16)
/* 8143AEF8 | 93 D0 02 34 */	stw r30, 0x234(r16)
/* 8143AEFC | 93 B0 02 58 */	stw r29, 0x258(r16)
/* 8143AF00 | 93 90 02 5C */	stw r28, 0x25c(r16)
/* 8143AF04 | 93 70 02 80 */	stw r27, 0x280(r16)
/* 8143AF08 | 93 50 02 84 */	stw r26, 0x284(r16)
/* 8143AF0C | 93 30 02 A8 */	stw r25, 0x2a8(r16)
/* 8143AF10 | 93 10 02 AC */	stw r24, 0x2ac(r16)
/* 8143AF14 | 92 F0 02 D0 */	stw r23, 0x2d0(r16)
/* 8143AF18 | 92 D0 02 D4 */	stw r22, 0x2d4(r16)
/* 8143AF1C | 92 B0 02 F8 */	stw r21, 0x2f8(r16)
/* 8143AF20 | 92 90 02 FC */	stw r20, 0x2fc(r16)
/* 8143AF24 | 82 01 00 40 */	lwz r16, 0x40(r1)
/* 8143AF28 | 92 63 15 40 */	stw r19, 0x1540(r3)
/* 8143AF2C | 92 11 00 04 */	stw r16, 0x4(r17)
/* 8143AF30 | 82 01 00 3C */	lwz r16, 0x3c(r1)
/* 8143AF34 | 91 D1 01 40 */	stw r14, 0x140(r17)
/* 8143AF38 | 92 11 00 28 */	stw r16, 0x28(r17)
/* 8143AF3C | 82 01 00 38 */	lwz r16, 0x38(r1)
/* 8143AF40 | 91 F1 01 44 */	stw r15, 0x144(r17)
/* 8143AF44 | 92 11 00 2C */	stw r16, 0x2c(r17)
/* 8143AF48 | 82 01 00 34 */	lwz r16, 0x34(r1)
/* 8143AF4C | 90 11 01 68 */	stw r0, 0x168(r17)
/* 8143AF50 | 92 11 00 50 */	stw r16, 0x50(r17)
/* 8143AF54 | 82 01 00 30 */	lwz r16, 0x30(r1)
/* 8143AF58 | 90 91 01 6C */	stw r4, 0x16c(r17)
/* 8143AF5C | 92 11 00 54 */	stw r16, 0x54(r17)
/* 8143AF60 | 82 01 00 2C */	lwz r16, 0x2c(r1)
/* 8143AF64 | 90 B1 01 90 */	stw r5, 0x190(r17)
/* 8143AF68 | 92 11 00 78 */	stw r16, 0x78(r17)
/* 8143AF6C | 82 01 00 28 */	lwz r16, 0x28(r1)
/* 8143AF70 | 90 D1 01 94 */	stw r6, 0x194(r17)
/* 8143AF74 | 92 11 00 7C */	stw r16, 0x7c(r17)
/* 8143AF78 | 82 01 00 24 */	lwz r16, 0x24(r1)
/* 8143AF7C | 90 F1 01 B8 */	stw r7, 0x1b8(r17)
/* 8143AF80 | 92 11 00 A0 */	stw r16, 0xa0(r17)
/* 8143AF84 | 82 01 00 20 */	lwz r16, 0x20(r1)
/* 8143AF88 | 91 11 01 BC */	stw r8, 0x1bc(r17)
/* 8143AF8C | 92 11 00 A4 */	stw r16, 0xa4(r17)
/* 8143AF90 | 82 01 00 1C */	lwz r16, 0x1c(r1)
/* 8143AF94 | 91 31 01 E0 */	stw r9, 0x1e0(r17)
/* 8143AF98 | 92 11 00 C8 */	stw r16, 0xc8(r17)
/* 8143AF9C | 82 01 00 18 */	lwz r16, 0x18(r1)
/* 8143AFA0 | 91 51 01 E4 */	stw r10, 0x1e4(r17)
/* 8143AFA4 | 92 11 00 CC */	stw r16, 0xcc(r17)
/* 8143AFA8 | 82 01 00 14 */	lwz r16, 0x14(r1)
/* 8143AFAC | 91 71 02 08 */	stw r11, 0x208(r17)
/* 8143AFB0 | 92 11 00 F0 */	stw r16, 0xf0(r17)
/* 8143AFB4 | 82 01 00 10 */	lwz r16, 0x10(r1)
/* 8143AFB8 | 92 11 00 F4 */	stw r16, 0xf4(r17)
/* 8143AFBC | 82 01 00 0C */	lwz r16, 0xc(r1)
/* 8143AFC0 | 92 11 01 18 */	stw r16, 0x118(r17)
/* 8143AFC4 | 7E 50 93 78 */	mr r16, r18
/* 8143AFC8 | 92 11 01 1C */	stw r16, 0x11c(r17)
/* 8143AFCC | 91 91 02 0C */	stw r12, 0x20c(r17)
/* 8143AFD0 | 3A 03 18 60 */	addi r16, r3, 0x1860
/* 8143AFD4 | 93 F1 02 30 */	stw r31, 0x230(r17)
/* 8143AFD8 | 93 D1 02 34 */	stw r30, 0x234(r17)
/* 8143AFDC | 93 B1 02 58 */	stw r29, 0x258(r17)
/* 8143AFE0 | 93 91 02 5C */	stw r28, 0x25c(r17)
/* 8143AFE4 | 93 71 02 80 */	stw r27, 0x280(r17)
/* 8143AFE8 | 93 51 02 84 */	stw r26, 0x284(r17)
/* 8143AFEC | 93 31 02 A8 */	stw r25, 0x2a8(r17)
/* 8143AFF0 | 93 11 02 AC */	stw r24, 0x2ac(r17)
/* 8143AFF4 | 92 F1 02 D0 */	stw r23, 0x2d0(r17)
/* 8143AFF8 | 92 D1 02 D4 */	stw r22, 0x2d4(r17)
/* 8143AFFC | 92 B1 02 F8 */	stw r21, 0x2f8(r17)
/* 8143B000 | 92 91 02 FC */	stw r20, 0x2fc(r17)
/* 8143B004 | 82 21 00 40 */	lwz r17, 0x40(r1)
/* 8143B008 | 92 63 18 60 */	stw r19, 0x1860(r3)
/* 8143B00C | 92 30 00 04 */	stw r17, 0x4(r16)
/* 8143B010 | 82 21 00 3C */	lwz r17, 0x3c(r1)
/* 8143B014 | 91 D0 01 40 */	stw r14, 0x140(r16)
/* 8143B018 | 92 30 00 28 */	stw r17, 0x28(r16)
/* 8143B01C | 82 21 00 38 */	lwz r17, 0x38(r1)
/* 8143B020 | 91 F0 01 44 */	stw r15, 0x144(r16)
/* 8143B024 | 92 30 00 2C */	stw r17, 0x2c(r16)
/* 8143B028 | 82 21 00 34 */	lwz r17, 0x34(r1)
/* 8143B02C | 90 10 01 68 */	stw r0, 0x168(r16)
/* 8143B030 | 92 30 00 50 */	stw r17, 0x50(r16)
/* 8143B034 | 82 21 00 30 */	lwz r17, 0x30(r1)
/* 8143B038 | 90 90 01 6C */	stw r4, 0x16c(r16)
/* 8143B03C | 92 30 00 54 */	stw r17, 0x54(r16)
/* 8143B040 | 82 21 00 2C */	lwz r17, 0x2c(r1)
/* 8143B044 | 90 B0 01 90 */	stw r5, 0x190(r16)
/* 8143B048 | 92 30 00 78 */	stw r17, 0x78(r16)
/* 8143B04C | 82 21 00 28 */	lwz r17, 0x28(r1)
/* 8143B050 | 90 D0 01 94 */	stw r6, 0x194(r16)
/* 8143B054 | 92 30 00 7C */	stw r17, 0x7c(r16)
/* 8143B058 | 82 21 00 24 */	lwz r17, 0x24(r1)
/* 8143B05C | 90 F0 01 B8 */	stw r7, 0x1b8(r16)
/* 8143B060 | 92 30 00 A0 */	stw r17, 0xa0(r16)
/* 8143B064 | 82 21 00 20 */	lwz r17, 0x20(r1)
/* 8143B068 | 91 10 01 BC */	stw r8, 0x1bc(r16)
/* 8143B06C | 92 30 00 A4 */	stw r17, 0xa4(r16)
/* 8143B070 | 82 21 00 1C */	lwz r17, 0x1c(r1)
/* 8143B074 | 91 30 01 E0 */	stw r9, 0x1e0(r16)
/* 8143B078 | 92 30 00 C8 */	stw r17, 0xc8(r16)
/* 8143B07C | 82 21 00 18 */	lwz r17, 0x18(r1)
/* 8143B080 | 91 50 01 E4 */	stw r10, 0x1e4(r16)
/* 8143B084 | 92 30 00 CC */	stw r17, 0xcc(r16)
/* 8143B088 | 82 21 00 14 */	lwz r17, 0x14(r1)
/* 8143B08C | 91 70 02 08 */	stw r11, 0x208(r16)
/* 8143B090 | 92 30 00 F0 */	stw r17, 0xf0(r16)
/* 8143B094 | 82 21 00 10 */	lwz r17, 0x10(r1)
/* 8143B098 | 91 90 02 0C */	stw r12, 0x20c(r16)
/* 8143B09C | 92 30 00 F4 */	stw r17, 0xf4(r16)
/* 8143B0A0 | 82 21 00 0C */	lwz r17, 0xc(r1)
/* 8143B0A4 | 93 F0 02 30 */	stw r31, 0x230(r16)
/* 8143B0A8 | 92 30 01 18 */	stw r17, 0x118(r16)
/* 8143B0AC | 7E 51 93 78 */	mr r17, r18
/* 8143B0B0 | 92 30 01 1C */	stw r17, 0x11c(r16)
/* 8143B0B4 | 93 D0 02 34 */	stw r30, 0x234(r16)
/* 8143B0B8 | 93 B0 02 58 */	stw r29, 0x258(r16)
/* 8143B0BC | 93 90 02 5C */	stw r28, 0x25c(r16)
/* 8143B0C0 | 93 70 02 80 */	stw r27, 0x280(r16)
/* 8143B0C4 | 93 50 02 84 */	stw r26, 0x284(r16)
/* 8143B0C8 | 93 30 02 A8 */	stw r25, 0x2a8(r16)
/* 8143B0CC | 93 10 02 AC */	stw r24, 0x2ac(r16)
/* 8143B0D0 | 92 F0 02 D0 */	stw r23, 0x2d0(r16)
/* 8143B0D4 | 92 D0 02 D4 */	stw r22, 0x2d4(r16)
/* 8143B0D8 | 92 B0 02 F8 */	stw r21, 0x2f8(r16)
/* 8143B0DC | 3A 23 1B 80 */	addi r17, r3, 0x1b80
/* 8143B0E0 | 3A 43 1E A0 */	addi r18, r3, 0x1ea0
/* 8143B0E4 | 92 90 02 FC */	stw r20, 0x2fc(r16)
/* 8143B0E8 | 82 01 00 40 */	lwz r16, 0x40(r1)
/* 8143B0EC | 92 63 1B 80 */	stw r19, 0x1b80(r3)
/* 8143B0F0 | 92 11 00 04 */	stw r16, 0x4(r17)
/* 8143B0F4 | 82 01 00 3C */	lwz r16, 0x3c(r1)
/* 8143B0F8 | 92 63 1E A0 */	stw r19, 0x1ea0(r3)
/* 8143B0FC | 80 61 00 40 */	lwz r3, 0x40(r1)
/* 8143B100 | 92 11 00 28 */	stw r16, 0x28(r17)
/* 8143B104 | 82 01 00 38 */	lwz r16, 0x38(r1)
/* 8143B108 | 90 72 00 04 */	stw r3, 0x4(r18)
/* 8143B10C | 80 61 00 3C */	lwz r3, 0x3c(r1)
/* 8143B110 | 92 11 00 2C */	stw r16, 0x2c(r17)
/* 8143B114 | 82 01 00 34 */	lwz r16, 0x34(r1)
/* 8143B118 | 90 72 00 28 */	stw r3, 0x28(r18)
/* 8143B11C | 80 61 00 38 */	lwz r3, 0x38(r1)
/* 8143B120 | 92 11 00 50 */	stw r16, 0x50(r17)
/* 8143B124 | 82 01 00 30 */	lwz r16, 0x30(r1)
/* 8143B128 | 90 72 00 2C */	stw r3, 0x2c(r18)
/* 8143B12C | 80 61 00 34 */	lwz r3, 0x34(r1)
/* 8143B130 | 92 11 00 54 */	stw r16, 0x54(r17)
/* 8143B134 | 82 01 00 2C */	lwz r16, 0x2c(r1)
/* 8143B138 | 90 72 00 50 */	stw r3, 0x50(r18)
/* 8143B13C | 80 61 00 30 */	lwz r3, 0x30(r1)
/* 8143B140 | 92 11 00 78 */	stw r16, 0x78(r17)
/* 8143B144 | 82 01 00 28 */	lwz r16, 0x28(r1)
/* 8143B148 | 90 72 00 54 */	stw r3, 0x54(r18)
/* 8143B14C | 80 61 00 2C */	lwz r3, 0x2c(r1)
/* 8143B150 | 92 11 00 7C */	stw r16, 0x7c(r17)
/* 8143B154 | 82 01 00 24 */	lwz r16, 0x24(r1)
/* 8143B158 | 90 72 00 78 */	stw r3, 0x78(r18)
/* 8143B15C | 80 61 00 28 */	lwz r3, 0x28(r1)
/* 8143B160 | 92 11 00 A0 */	stw r16, 0xa0(r17)
/* 8143B164 | 82 01 00 20 */	lwz r16, 0x20(r1)
/* 8143B168 | 90 72 00 7C */	stw r3, 0x7c(r18)
/* 8143B16C | 80 61 00 24 */	lwz r3, 0x24(r1)
/* 8143B170 | 92 11 00 A4 */	stw r16, 0xa4(r17)
/* 8143B174 | 82 01 00 1C */	lwz r16, 0x1c(r1)
/* 8143B178 | 90 72 00 A0 */	stw r3, 0xa0(r18)
/* 8143B17C | 80 61 00 20 */	lwz r3, 0x20(r1)
/* 8143B180 | 92 11 00 C8 */	stw r16, 0xc8(r17)
/* 8143B184 | 82 01 00 18 */	lwz r16, 0x18(r1)
/* 8143B188 | 90 72 00 A4 */	stw r3, 0xa4(r18)
/* 8143B18C | 80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8143B190 | 92 11 00 CC */	stw r16, 0xcc(r17)
/* 8143B194 | 82 01 00 14 */	lwz r16, 0x14(r1)
/* 8143B198 | 90 72 00 C8 */	stw r3, 0xc8(r18)
/* 8143B19C | 80 61 00 18 */	lwz r3, 0x18(r1)
/* 8143B1A0 | 92 11 00 F0 */	stw r16, 0xf0(r17)
/* 8143B1A4 | 82 01 00 10 */	lwz r16, 0x10(r1)
/* 8143B1A8 | 90 72 00 CC */	stw r3, 0xcc(r18)
/* 8143B1AC | 80 61 00 14 */	lwz r3, 0x14(r1)
/* 8143B1B0 | 92 11 00 F4 */	stw r16, 0xf4(r17)
/* 8143B1B4 | 82 01 00 0C */	lwz r16, 0xc(r1)
/* 8143B1B8 | 90 72 00 F0 */	stw r3, 0xf0(r18)
/* 8143B1BC | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 8143B1C0 | 92 11 01 18 */	stw r16, 0x118(r17)
/* 8143B1C4 | 82 01 00 08 */	lwz r16, 0x8(r1)
/* 8143B1C8 | 90 72 00 F4 */	stw r3, 0xf4(r18)
/* 8143B1CC | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 8143B1D0 | 92 11 01 1C */	stw r16, 0x11c(r17)
/* 8143B1D4 | 90 72 01 18 */	stw r3, 0x118(r18)
/* 8143B1D8 | 7E 03 83 78 */	mr r3, r16
/* 8143B1DC | 91 D1 01 40 */	stw r14, 0x140(r17)
/* 8143B1E0 | 91 F1 01 44 */	stw r15, 0x144(r17)
/* 8143B1E4 | 90 11 01 68 */	stw r0, 0x168(r17)
/* 8143B1E8 | 90 91 01 6C */	stw r4, 0x16c(r17)
/* 8143B1EC | 90 B1 01 90 */	stw r5, 0x190(r17)
/* 8143B1F0 | 90 D1 01 94 */	stw r6, 0x194(r17)
/* 8143B1F4 | 90 F1 01 B8 */	stw r7, 0x1b8(r17)
/* 8143B1F8 | 91 11 01 BC */	stw r8, 0x1bc(r17)
/* 8143B1FC | 91 31 01 E0 */	stw r9, 0x1e0(r17)
/* 8143B200 | 91 51 01 E4 */	stw r10, 0x1e4(r17)
/* 8143B204 | 91 71 02 08 */	stw r11, 0x208(r17)
/* 8143B208 | 91 91 02 0C */	stw r12, 0x20c(r17)
/* 8143B20C | 93 F1 02 30 */	stw r31, 0x230(r17)
/* 8143B210 | 93 D1 02 34 */	stw r30, 0x234(r17)
/* 8143B214 | 93 B1 02 58 */	stw r29, 0x258(r17)
/* 8143B218 | 93 91 02 5C */	stw r28, 0x25c(r17)
/* 8143B21C | 93 71 02 80 */	stw r27, 0x280(r17)
/* 8143B220 | 93 51 02 84 */	stw r26, 0x284(r17)
/* 8143B224 | 93 31 02 A8 */	stw r25, 0x2a8(r17)
/* 8143B228 | 93 11 02 AC */	stw r24, 0x2ac(r17)
/* 8143B22C | 92 F1 02 D0 */	stw r23, 0x2d0(r17)
/* 8143B230 | 92 D1 02 D4 */	stw r22, 0x2d4(r17)
/* 8143B234 | 92 B1 02 F8 */	stw r21, 0x2f8(r17)
/* 8143B238 | 92 91 02 FC */	stw r20, 0x2fc(r17)
/* 8143B23C | 90 72 01 1C */	stw r3, 0x11c(r18)
/* 8143B240 | 91 D2 01 40 */	stw r14, 0x140(r18)
/* 8143B244 | 91 F2 01 44 */	stw r15, 0x144(r18)
/* 8143B248 | 90 12 01 68 */	stw r0, 0x168(r18)
/* 8143B24C | 90 92 01 6C */	stw r4, 0x16c(r18)
/* 8143B250 | 90 B2 01 90 */	stw r5, 0x190(r18)
/* 8143B254 | 90 D2 01 94 */	stw r6, 0x194(r18)
/* 8143B258 | 90 F2 01 B8 */	stw r7, 0x1b8(r18)
/* 8143B25C | 91 12 01 BC */	stw r8, 0x1bc(r18)
/* 8143B260 | 91 32 01 E0 */	stw r9, 0x1e0(r18)
/* 8143B264 | 91 52 01 E4 */	stw r10, 0x1e4(r18)
/* 8143B268 | 91 72 02 08 */	stw r11, 0x208(r18)
/* 8143B26C | 91 92 02 0C */	stw r12, 0x20c(r18)
/* 8143B270 | 93 F2 02 30 */	stw r31, 0x230(r18)
/* 8143B274 | 93 D2 02 34 */	stw r30, 0x234(r18)
/* 8143B278 | 93 B2 02 58 */	stw r29, 0x258(r18)
/* 8143B27C | 93 92 02 5C */	stw r28, 0x25c(r18)
/* 8143B280 | 93 72 02 80 */	stw r27, 0x280(r18)
/* 8143B284 | 93 52 02 84 */	stw r26, 0x284(r18)
/* 8143B288 | 93 32 02 A8 */	stw r25, 0x2a8(r18)
/* 8143B28C | 93 12 02 AC */	stw r24, 0x2ac(r18)
/* 8143B290 | 92 F2 02 D0 */	stw r23, 0x2d0(r18)
/* 8143B294 | 92 D2 02 D4 */	stw r22, 0x2d4(r18)
/* 8143B298 | 92 B2 02 F8 */	stw r21, 0x2f8(r18)
/* 8143B29C | 92 92 02 FC */	stw r20, 0x2fc(r18)
/* 8143B2A0 | 39 61 00 90 */	addi r11, r1, 0x90
/* 8143B2A4 | 48 1B E2 35 */	bl _restgpr_14
/* 8143B2A8 | 80 01 00 94 */	lwz r0, 0x94(r1)
/* 8143B2AC | 7C 08 03 A6 */	mtlr r0
/* 8143B2B0 | 38 21 00 90 */	addi r1, r1, 0x90
/* 8143B2B4 | 4E 80 00 20 */	blr
.endfn "__sinit_\\sw_data_cpp"

# 0x8160D214..0x8160D218 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte "__sinit_\\sw_data_cpp"

# 0x81664058..0x81666218 | size: 0x21C0
.data
.balign 8

# .data:0x0 | 0x81664058 | size: 0xC
.obj lbl_81664058, global
	.string "B_SGNkey_00"
.endobj lbl_81664058

# .data:0xC | 0x81664064 | size: 0xC
.obj lbl_81664064, global
	.string "B_SGNkey_01"
.endobj lbl_81664064

# .data:0x18 | 0x81664070 | size: 0xC
.obj lbl_81664070, global
	.string "B_SGNkey_02"
.endobj lbl_81664070

# .data:0x24 | 0x8166407C | size: 0xC
.obj lbl_8166407C, global
	.string "B_SGNkey_03"
.endobj lbl_8166407C

# .data:0x30 | 0x81664088 | size: 0xC
.obj lbl_81664088, global
	.string "B_SGNkey_04"
.endobj lbl_81664088

# .data:0x3C | 0x81664094 | size: 0xC
.obj lbl_81664094, global
	.string "B_SGNkey_05"
.endobj lbl_81664094

# .data:0x48 | 0x816640A0 | size: 0xC
.obj lbl_816640A0, global
	.string "B_SGNkey_06"
.endobj lbl_816640A0

# .data:0x54 | 0x816640AC | size: 0xC
.obj lbl_816640AC, global
	.string "B_SGNkey_07"
.endobj lbl_816640AC

# .data:0x60 | 0x816640B8 | size: 0xC
.obj lbl_816640B8, global
	.string "B_SGNkey_08"
.endobj lbl_816640B8

# .data:0x6C | 0x816640C4 | size: 0xC
.obj lbl_816640C4, global
	.string "B_SGNkey_09"
.endobj lbl_816640C4

# .data:0x78 | 0x816640D0 | size: 0xC
.obj lbl_816640D0, global
	.string "B_SGNkey_10"
.endobj lbl_816640D0

# .data:0x84 | 0x816640DC | size: 0xC
.obj lbl_816640DC, global
	.string "B_SGNkey_11"
.endobj lbl_816640DC

# .data:0x90 | 0x816640E8 | size: 0xC
.obj lbl_816640E8, global
	.string "B_SGNkey_12"
.endobj lbl_816640E8

# .data:0x9C | 0x816640F4 | size: 0xC
.obj lbl_816640F4, global
	.string "B_SGNkey_13"
.endobj lbl_816640F4

# .data:0xA8 | 0x81664100 | size: 0xC
.obj lbl_81664100, global
	.string "B_SGNkey_14"
.endobj lbl_81664100

# .data:0xB4 | 0x8166410C | size: 0xC
.obj lbl_8166410C, global
	.string "B_SGNkey_15"
.endobj lbl_8166410C

# .data:0xC0 | 0x81664118 | size: 0xC
.obj lbl_81664118, global
	.string "B_SGNkey_16"
.endobj lbl_81664118

# .data:0xCC | 0x81664124 | size: 0xC
.obj lbl_81664124, global
	.string "B_SGNkey_17"
.endobj lbl_81664124

# .data:0xD8 | 0x81664130 | size: 0xC
.obj lbl_81664130, global
	.string "B_SGNkey_18"
.endobj lbl_81664130

# .data:0xE4 | 0x8166413C | size: 0xC
.obj lbl_8166413C, global
	.string "B_SGNkey_19"
.endobj lbl_8166413C

# .data:0xF0 | 0x81664148 | size: 0xC
.obj lbl_81664148, global
	.string "T_SGNkey_20"
.endobj lbl_81664148

# .data:0xFC | 0x81664154 | size: 0xC
.obj lbl_81664154, global
	.string "T_SGNkey_21"
.endobj lbl_81664154

# .data:0x108 | 0x81664160 | size: 0xC
.obj lbl_81664160, global
	.string "T_SGNkey_22"
.endobj lbl_81664160

# .data:0x114 | 0x8166416C | size: 0xC
.obj lbl_8166416C, global
	.string "T_SGNkey_23"
.endobj lbl_8166416C

# .data:0x120 | 0x81664178 | size: 0xC
.obj lbl_81664178, global
	.string "T_SGNkey_24"
.endobj lbl_81664178

# .data:0x12C | 0x81664184 | size: 0xC
.obj lbl_81664184, global
	.string "T_SGNkey_25"
.endobj lbl_81664184

# .data:0x138 | 0x81664190 | size: 0xC
.obj lbl_81664190, global
	.string "T_SGNkey_26"
.endobj lbl_81664190

# .data:0x144 | 0x8166419C | size: 0xC
.obj lbl_8166419C, global
	.string "T_SGNkey_27"
.endobj lbl_8166419C

# .data:0x150 | 0x816641A8 | size: 0xC
.obj lbl_816641A8, global
	.string "T_SGNkey_28"
.endobj lbl_816641A8

# .data:0x15C | 0x816641B4 | size: 0xC
.obj lbl_816641B4, global
	.string "T_SGNkey_29"
.endobj lbl_816641B4

# .data:0x168 | 0x816641C0 | size: 0xC
.obj lbl_816641C0, global
	.string "T_SGNkey_30"
.endobj lbl_816641C0

# .data:0x174 | 0x816641CC | size: 0xC
.obj lbl_816641CC, global
	.string "T_SGNkey_31"
.endobj lbl_816641CC

# .data:0x180 | 0x816641D8 | size: 0xC
.obj lbl_816641D8, global
	.string "T_SGNkey_32"
.endobj lbl_816641D8

# .data:0x18C | 0x816641E4 | size: 0xC
.obj lbl_816641E4, global
	.string "T_SGNkey_33"
.endobj lbl_816641E4

# .data:0x198 | 0x816641F0 | size: 0xC
.obj lbl_816641F0, global
	.string "T_SGNkey_34"
.endobj lbl_816641F0

# .data:0x1A4 | 0x816641FC | size: 0xC
.obj lbl_816641FC, global
	.string "T_SGNkey_35"
.endobj lbl_816641FC

# .data:0x1B0 | 0x81664208 | size: 0xC
.obj lbl_81664208, global
	.string "T_SGNkey_36"
.endobj lbl_81664208

# .data:0x1BC | 0x81664214 | size: 0xC
.obj lbl_81664214, global
	.string "T_SGNkey_37"
.endobj lbl_81664214

# .data:0x1C8 | 0x81664220 | size: 0xC
.obj lbl_81664220, global
	.string "T_SGNkey_38"
.endobj lbl_81664220

# .data:0x1D4 | 0x8166422C | size: 0xAC
# textinput::keyboard::signwindow::csszSignKey
.obj csszSignKey__Q39textinput8keyboard10signwindow, local
	.4byte 0x545F5347
	.4byte 0x4E6B6579
	.4byte 0x5F333900
	.4byte lbl_81664058
	.4byte lbl_81664064
	.4byte lbl_81664070
	.4byte lbl_8166407C
	.4byte lbl_81664088
	.4byte lbl_81664094
	.4byte lbl_816640A0
	.4byte lbl_816640AC
	.4byte lbl_816640B8
	.4byte lbl_816640C4
	.4byte lbl_816640D0
	.4byte lbl_816640DC
	.4byte lbl_816640E8
	.4byte lbl_816640F4
	.4byte lbl_81664100
	.4byte lbl_8166410C
	.4byte lbl_81664118
	.4byte lbl_81664124
	.4byte lbl_81664130
	.4byte lbl_8166413C
	.4byte lbl_81664148
	.4byte lbl_81664154
	.4byte lbl_81664160
	.4byte lbl_8166416C
	.4byte lbl_81664178
	.4byte lbl_81664184
	.4byte lbl_81664190
	.4byte lbl_8166419C
	.4byte lbl_816641A8
	.4byte lbl_816641B4
	.4byte lbl_816641C0
	.4byte lbl_816641CC
	.4byte lbl_816641D8
	.4byte lbl_816641E4
	.4byte lbl_816641F0
	.4byte lbl_816641FC
	.4byte lbl_81664208
	.4byte lbl_81664214
	.4byte lbl_81664220
	.4byte csszSignKey__Q39textinput8keyboard10signwindow
.endobj csszSignKey__Q39textinput8keyboard10signwindow

# .data:0x280 | 0x816642D8 | size: 0x320
# textinput::keyboard::signwindow::csSignKeyJP
.obj csSignKeyJP__Q39textinput8keyboard10signwindow, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x30010028
	.4byte 0x002B2606
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x30020029
	.4byte 0x00B12605
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFF1F003C
	.4byte 0x00D725CB
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFF01003E
	.4byte 0x00F725CF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x30FC00B7
	.4byte 0x003D25CE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x300C005B
	.4byte 0x00A525C7
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x300D005D
	.4byte 0x002425C6
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFF5E007B
	.4byte 0x00A225A1
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0040007D
	.4byte 0x20AC25A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0026005E
	.4byte 0x00A300A9
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002C201C
	.4byte 0x002525B3
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002E201D
	.4byte 0x002325B2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003F00AB
	.4byte 0x266D25BD
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002100BB
	.4byte 0x266A25BC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002D0027
	.4byte 0x221E007C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003A203B
	.4byte 0x005C2192
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003B3012
	.4byte 0x002A2190
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002F2022
	.4byte 0x201E2191
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x007E2026
	.4byte 0x20182193
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x005F00B0
	.4byte 0x00222234
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj csSignKeyJP__Q39textinput8keyboard10signwindow

# .data:0x5A0 | 0x816645F8 | size: 0x320
# textinput::keyboard::signwindow::csSignKeyUS
.obj csSignKeyUS__Q39textinput8keyboard10signwindow, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002E005B
	.4byte 0x005E00E0
	.4byte 0x00F600C9
	.4byte 0x017803C5
	.4byte 0x03A00390
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002C005D
	.4byte 0x007E00E1
	.4byte 0x015300CA
	.4byte 0x03B103C6
	.4byte 0x03A103AA
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x2018007B
	.4byte 0x212200E2
	.4byte 0x00F800CB
	.4byte 0x03B203C7
	.4byte 0x03A303AB
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003A007D
	.4byte 0x00A900E4
	.4byte 0x00F500CC
	.4byte 0x03B303C8
	.4byte 0x03A403AC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003B00B7
	.4byte 0x00AE00E5
	.4byte 0x00DF00CD
	.4byte 0x03B403C9
	.4byte 0x03A503AD
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x201E003C
	.4byte 0x00BA00E6
	.4byte 0x00F900CE
	.4byte 0x03B50391
	.4byte 0x03A603AE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x201C003E
	.4byte 0x00AA00E3
	.4byte 0x00FA00CF
	.4byte 0x03B60392
	.4byte 0x03A703AF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x201D002B
	.4byte 0x266D00E7
	.4byte 0x00FB00D1
	.4byte 0x03B70393
	.4byte 0x03A803B0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0027002D
	.4byte 0x266A00E8
	.4byte 0x00FC00D2
	.4byte 0x03B80394
	.4byte 0x03A903C2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002200D7
	.4byte 0x002A00E9
	.4byte 0x00FD00D3
	.4byte 0x03B90395
	.4byte 0x037E03CA
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003F00F7
	.4byte 0x219000EA
	.4byte 0x00FF00D4
	.4byte 0x03BA0396
	.4byte 0x038403CB
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0021003D
	.4byte 0x219200EB
	.4byte 0x00C000D6
	.4byte 0x03BB0397
	.4byte 0x038503CC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002800B1
	.4byte 0x219100EC
	.4byte 0x00C10152
	.4byte 0x03BC0398
	.4byte 0x038603CD
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0029221E
	.4byte 0x219300ED
	.4byte 0x00C200D8
	.4byte 0x03BD0399
	.4byte 0x038703CE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x005F0025
	.4byte 0x002300EE
	.4byte 0x00C400D5
	.4byte 0x03BE039A
	.4byte 0x038825CE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00BF005C
	.4byte 0x002400EF
	.4byte 0x00C500D9
	.4byte 0x03BF039B
	.4byte 0x03892606
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00A1002F
	.4byte 0x00A200F1
	.4byte 0x00C600DA
	.4byte 0x03C0039C
	.4byte 0x038A25CB
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00AB007C
	.4byte 0x20AC00F2
	.4byte 0x00C300DB
	.4byte 0x03C1039D
	.4byte 0x038C25C7
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00BB00A7
	.4byte 0x00A300F3
	.4byte 0x00C700DC
	.4byte 0x03C3039E
	.4byte 0x038E25A1
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00260040
	.4byte 0x00A500F4
	.4byte 0x00C800DD
	.4byte 0x03C4039F
	.4byte 0x038F25B3
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj csSignKeyUS__Q39textinput8keyboard10signwindow

# .data:0x8C0 | 0x81664918 | size: 0x320
# textinput::keyboard::signwindow::csSignKeyUK
.obj csSignKeyUK__Q39textinput8keyboard10signwindow, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002E005B
	.4byte 0x005E00E0
	.4byte 0x00F600C9
	.4byte 0x017803C5
	.4byte 0x03A00390
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002C005D
	.4byte 0x007E00E1
	.4byte 0x015300CA
	.4byte 0x03B103C6
	.4byte 0x03A103AA
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x2018007B
	.4byte 0x212200E2
	.4byte 0x00F800CB
	.4byte 0x03B203C7
	.4byte 0x03A303AB
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003A007D
	.4byte 0x00A900E4
	.4byte 0x00F500CC
	.4byte 0x03B303C8
	.4byte 0x03A403AC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003B00B7
	.4byte 0x00AE00E5
	.4byte 0x00DF00CD
	.4byte 0x03B403C9
	.4byte 0x03A503AD
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x201E003C
	.4byte 0x00BA00E6
	.4byte 0x00F900CE
	.4byte 0x03B50391
	.4byte 0x03A603AE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x201C003E
	.4byte 0x00AA00E3
	.4byte 0x00FA00CF
	.4byte 0x03B60392
	.4byte 0x03A703AF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x201D002B
	.4byte 0x266D00E7
	.4byte 0x00FB00D1
	.4byte 0x03B70393
	.4byte 0x03A803B0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0027002D
	.4byte 0x266A00E8
	.4byte 0x00FC00D2
	.4byte 0x03B80394
	.4byte 0x03A903C2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002200D7
	.4byte 0x002A00E9
	.4byte 0x00FD00D3
	.4byte 0x03B90395
	.4byte 0x037E03CA
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003F00F7
	.4byte 0x219000EA
	.4byte 0x00FF00D4
	.4byte 0x03BA0396
	.4byte 0x038403CB
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0021003D
	.4byte 0x219200EB
	.4byte 0x00C000D6
	.4byte 0x03BB0397
	.4byte 0x038503CC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002800B1
	.4byte 0x219100EC
	.4byte 0x00C10152
	.4byte 0x03BC0398
	.4byte 0x038603CD
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0029221E
	.4byte 0x219300ED
	.4byte 0x00C200D8
	.4byte 0x03BD0399
	.4byte 0x038703CE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x005F0025
	.4byte 0x002300EE
	.4byte 0x00C400D5
	.4byte 0x03BE039A
	.4byte 0x038825CE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00BF005C
	.4byte 0x002400EF
	.4byte 0x00C500D9
	.4byte 0x03BF039B
	.4byte 0x03892606
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00A1002F
	.4byte 0x00A200F1
	.4byte 0x00C600DA
	.4byte 0x03C0039C
	.4byte 0x038A25CB
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00AB007C
	.4byte 0x20AC00F2
	.4byte 0x00C300DB
	.4byte 0x03C1039D
	.4byte 0x038C25C7
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00BB00A7
	.4byte 0x00A300F3
	.4byte 0x00C700DC
	.4byte 0x03C3039E
	.4byte 0x038E25A1
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00260040
	.4byte 0x00A500F4
	.4byte 0x00C800DD
	.4byte 0x03C4039F
	.4byte 0x038F25B3
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj csSignKeyUK__Q39textinput8keyboard10signwindow

# .data:0xBE0 | 0x81664C38 | size: 0x320
# textinput::keyboard::signwindow::csSignKeyDE
.obj csSignKeyDE__Q39textinput8keyboard10signwindow, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002E005B
	.4byte 0x005E00E0
	.4byte 0x00F600C9
	.4byte 0x017803C5
	.4byte 0x03A00390
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002C005D
	.4byte 0x007E00E1
	.4byte 0x015300CA
	.4byte 0x03B103C6
	.4byte 0x03A103AA
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x2018007B
	.4byte 0x212200E2
	.4byte 0x00F800CB
	.4byte 0x03B203C7
	.4byte 0x03A303AB
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003A007D
	.4byte 0x00A900E4
	.4byte 0x00F500CC
	.4byte 0x03B303C8
	.4byte 0x03A403AC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003B00B7
	.4byte 0x00AE00E5
	.4byte 0x00DF00CD
	.4byte 0x03B403C9
	.4byte 0x03A503AD
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x201E003C
	.4byte 0x00BA00E6
	.4byte 0x00F900CE
	.4byte 0x03B50391
	.4byte 0x03A603AE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x201C003E
	.4byte 0x00AA00E3
	.4byte 0x00FA00CF
	.4byte 0x03B60392
	.4byte 0x03A703AF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x201D002B
	.4byte 0x266D00E7
	.4byte 0x00FB00D1
	.4byte 0x03B70393
	.4byte 0x03A803B0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0027002D
	.4byte 0x266A00E8
	.4byte 0x00FC00D2
	.4byte 0x03B80394
	.4byte 0x03A903C2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002200D7
	.4byte 0x002A00E9
	.4byte 0x00FD00D3
	.4byte 0x03B90395
	.4byte 0x037E03CA
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003F00F7
	.4byte 0x219000EA
	.4byte 0x00FF00D4
	.4byte 0x03BA0396
	.4byte 0x038403CB
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0021003D
	.4byte 0x219200EB
	.4byte 0x00C000D6
	.4byte 0x03BB0397
	.4byte 0x038503CC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002800B1
	.4byte 0x219100EC
	.4byte 0x00C10152
	.4byte 0x03BC0398
	.4byte 0x038603CD
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0029221E
	.4byte 0x219300ED
	.4byte 0x00C200D8
	.4byte 0x03BD0399
	.4byte 0x038703CE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x005F0025
	.4byte 0x002300EE
	.4byte 0x00C400D5
	.4byte 0x03BE039A
	.4byte 0x038825CE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00BF005C
	.4byte 0x002400EF
	.4byte 0x00C500D9
	.4byte 0x03BF039B
	.4byte 0x03892606
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00A1002F
	.4byte 0x00A200F1
	.4byte 0x00C600DA
	.4byte 0x03C0039C
	.4byte 0x038A25CB
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00AB007C
	.4byte 0x20AC00F2
	.4byte 0x00C300DB
	.4byte 0x03C1039D
	.4byte 0x038C25C7
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00BB00A7
	.4byte 0x00A300F3
	.4byte 0x00C700DC
	.4byte 0x03C3039E
	.4byte 0x038E25A1
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00260040
	.4byte 0x00A500F4
	.4byte 0x00C800DD
	.4byte 0x03C4039F
	.4byte 0x038F25B3
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj csSignKeyDE__Q39textinput8keyboard10signwindow

# .data:0xF00 | 0x81664F58 | size: 0x320
# textinput::keyboard::signwindow::csSignKeyFR
.obj csSignKeyFR__Q39textinput8keyboard10signwindow, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002E005B
	.4byte 0x005E00E0
	.4byte 0x00F600C9
	.4byte 0x017803C5
	.4byte 0x03A00390
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002C005D
	.4byte 0x007E00E1
	.4byte 0x015300CA
	.4byte 0x03B103C6
	.4byte 0x03A103AA
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0027007B
	.4byte 0x212200E2
	.4byte 0x00F800CB
	.4byte 0x03B203C7
	.4byte 0x03A303AB
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003A007D
	.4byte 0x00A900E4
	.4byte 0x00F500CC
	.4byte 0x03B303C8
	.4byte 0x03A403AC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003B00B7
	.4byte 0x00AE00E5
	.4byte 0x00DF00CD
	.4byte 0x03B403C9
	.4byte 0x03A503AD
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x2018003C
	.4byte 0x00BA00E6
	.4byte 0x00F900CE
	.4byte 0x03B50391
	.4byte 0x03A603AE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x2019003E
	.4byte 0x00AA00E3
	.4byte 0x00FA00CF
	.4byte 0x03B60392
	.4byte 0x03A703AF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x201C002B
	.4byte 0x266D00E7
	.4byte 0x00FB00D1
	.4byte 0x03B70393
	.4byte 0x03A803B0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x201D002D
	.4byte 0x266A00E8
	.4byte 0x00FC00D2
	.4byte 0x03B80394
	.4byte 0x03A903C2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002200D7
	.4byte 0x002A00E9
	.4byte 0x00FD00D3
	.4byte 0x03B90395
	.4byte 0x037E03CA
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003F00F7
	.4byte 0x219000EA
	.4byte 0x00FF00D4
	.4byte 0x03BA0396
	.4byte 0x038403CB
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0021003D
	.4byte 0x219200EB
	.4byte 0x00C000D6
	.4byte 0x03BB0397
	.4byte 0x038503CC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002800B1
	.4byte 0x219100EC
	.4byte 0x00C10152
	.4byte 0x03BC0398
	.4byte 0x038603CD
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0029221E
	.4byte 0x219300ED
	.4byte 0x00C200D8
	.4byte 0x03BD0399
	.4byte 0x038703CE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x005F0025
	.4byte 0x002300EE
	.4byte 0x00C400D5
	.4byte 0x03BE039A
	.4byte 0x038825CE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00BF005C
	.4byte 0x002400EF
	.4byte 0x00C500D9
	.4byte 0x03BF039B
	.4byte 0x03892606
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00A1002F
	.4byte 0x00A200F1
	.4byte 0x00C600DA
	.4byte 0x03C0039C
	.4byte 0x038A25CB
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00AB007C
	.4byte 0x20AC00F2
	.4byte 0x00C300DB
	.4byte 0x03C1039D
	.4byte 0x038C25C7
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00BB00A7
	.4byte 0x00A300F3
	.4byte 0x00C700DC
	.4byte 0x03C3039E
	.4byte 0x038E25A1
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00260040
	.4byte 0x00A500F4
	.4byte 0x00C800DD
	.4byte 0x03C4039F
	.4byte 0x038F25B3
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj csSignKeyFR__Q39textinput8keyboard10signwindow

# .data:0x1220 | 0x81665278 | size: 0x320
# textinput::keyboard::signwindow::csSignKeyIT
.obj csSignKeyIT__Q39textinput8keyboard10signwindow, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002E005B
	.4byte 0x005E00E0
	.4byte 0x00F600C9
	.4byte 0x017803C5
	.4byte 0x03A00390
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002C005D
	.4byte 0x007E00E1
	.4byte 0x015300CA
	.4byte 0x03B103C6
	.4byte 0x03A103AA
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0027007B
	.4byte 0x212200E2
	.4byte 0x00F800CB
	.4byte 0x03B203C7
	.4byte 0x03A303AB
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003A007D
	.4byte 0x00A900E4
	.4byte 0x00F500CC
	.4byte 0x03B303C8
	.4byte 0x03A403AC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003B00B7
	.4byte 0x00AE00E5
	.4byte 0x00DF00CD
	.4byte 0x03B403C9
	.4byte 0x03A503AD
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x2018003C
	.4byte 0x00BA00E6
	.4byte 0x00F900CE
	.4byte 0x03B50391
	.4byte 0x03A603AE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x2019003E
	.4byte 0x00AA00E3
	.4byte 0x00FA00CF
	.4byte 0x03B60392
	.4byte 0x03A703AF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x201C002B
	.4byte 0x266D00E7
	.4byte 0x00FB00D1
	.4byte 0x03B70393
	.4byte 0x03A803B0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x201D002D
	.4byte 0x266A00E8
	.4byte 0x00FC00D2
	.4byte 0x03B80394
	.4byte 0x03A903C2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002200D7
	.4byte 0x002A00E9
	.4byte 0x00FD00D3
	.4byte 0x03B90395
	.4byte 0x037E03CA
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003F00F7
	.4byte 0x219000EA
	.4byte 0x00FF00D4
	.4byte 0x03BA0396
	.4byte 0x038403CB
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0021003D
	.4byte 0x219200EB
	.4byte 0x00C000D6
	.4byte 0x03BB0397
	.4byte 0x038503CC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002800B1
	.4byte 0x219100EC
	.4byte 0x00C10152
	.4byte 0x03BC0398
	.4byte 0x038603CD
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0029221E
	.4byte 0x219300ED
	.4byte 0x00C200D8
	.4byte 0x03BD0399
	.4byte 0x038703CE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x005F0025
	.4byte 0x002300EE
	.4byte 0x00C400D5
	.4byte 0x03BE039A
	.4byte 0x038825CE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00BF005C
	.4byte 0x002400EF
	.4byte 0x00C500D9
	.4byte 0x03BF039B
	.4byte 0x03892606
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00A1002F
	.4byte 0x00A200F1
	.4byte 0x00C600DA
	.4byte 0x03C0039C
	.4byte 0x038A25CB
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00AB007C
	.4byte 0x20AC00F2
	.4byte 0x00C300DB
	.4byte 0x03C1039D
	.4byte 0x038C25C7
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00BB00A7
	.4byte 0x00A300F3
	.4byte 0x00C700DC
	.4byte 0x03C3039E
	.4byte 0x038E25A1
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00260040
	.4byte 0x00A500F4
	.4byte 0x00C800DD
	.4byte 0x03C4039F
	.4byte 0x038F25B3
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj csSignKeyIT__Q39textinput8keyboard10signwindow

# .data:0x1540 | 0x81665598 | size: 0x320
# textinput::keyboard::signwindow::csSignKeySP
.obj csSignKeySP__Q39textinput8keyboard10signwindow, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002E005B
	.4byte 0x005E00E0
	.4byte 0x00F600C9
	.4byte 0x017803C5
	.4byte 0x03A00390
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002C005D
	.4byte 0x007E00E1
	.4byte 0x015300CA
	.4byte 0x03B103C6
	.4byte 0x03A103AA
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003A007B
	.4byte 0x212200E2
	.4byte 0x00F800CB
	.4byte 0x03B203C7
	.4byte 0x03A303AB
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003B007D
	.4byte 0x00A900E4
	.4byte 0x00F500CC
	.4byte 0x03B303C8
	.4byte 0x03A403AC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002700B7
	.4byte 0x00AE00E5
	.4byte 0x00DF00CD
	.4byte 0x03B403C9
	.4byte 0x03A503AD
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00A1003C
	.4byte 0x00BA00E6
	.4byte 0x00F900CE
	.4byte 0x03B50391
	.4byte 0x03A603AE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0021003E
	.4byte 0x00AA00E3
	.4byte 0x00FA00CF
	.4byte 0x03B60392
	.4byte 0x03A703AF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00BF002B
	.4byte 0x266D00E7
	.4byte 0x00FB00D1
	.4byte 0x03B70393
	.4byte 0x03A803B0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003F002D
	.4byte 0x266A00E8
	.4byte 0x00FC00D2
	.4byte 0x03B80394
	.4byte 0x03A903C2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002200D7
	.4byte 0x002A00E9
	.4byte 0x00FD00D3
	.4byte 0x03B90395
	.4byte 0x037E03CA
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00AB00F7
	.4byte 0x219000EA
	.4byte 0x00FF00D4
	.4byte 0x03BA0396
	.4byte 0x038403CB
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00BB003D
	.4byte 0x219200EB
	.4byte 0x00C000D6
	.4byte 0x03BB0397
	.4byte 0x038503CC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x201C00B1
	.4byte 0x219100EC
	.4byte 0x00C10152
	.4byte 0x03BC0398
	.4byte 0x038603CD
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x201D221E
	.4byte 0x219300ED
	.4byte 0x00C200D8
	.4byte 0x03BD0399
	.4byte 0x038703CE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x005F0025
	.4byte 0x002300EE
	.4byte 0x00C400D5
	.4byte 0x03BE039A
	.4byte 0x038825CE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x2018005C
	.4byte 0x002400EF
	.4byte 0x00C500D9
	.4byte 0x03BF039B
	.4byte 0x03892606
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x2019002F
	.4byte 0x00A200F1
	.4byte 0x00C600DA
	.4byte 0x03C0039C
	.4byte 0x038A25CB
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0028007C
	.4byte 0x20AC00F2
	.4byte 0x00C300DB
	.4byte 0x03C1039D
	.4byte 0x038C25C7
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002900A7
	.4byte 0x00A300F3
	.4byte 0x00C700DC
	.4byte 0x03C3039E
	.4byte 0x038E25A1
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00260040
	.4byte 0x00A500F4
	.4byte 0x00C800DD
	.4byte 0x03C4039F
	.4byte 0x038F25B3
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj csSignKeySP__Q39textinput8keyboard10signwindow

# .data:0x1860 | 0x816658B8 | size: 0x320
# textinput::keyboard::signwindow::csSignKeyNL
.obj csSignKeyNL__Q39textinput8keyboard10signwindow, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002E005B
	.4byte 0x005E00E0
	.4byte 0x00F600C9
	.4byte 0x017803C5
	.4byte 0x03A00390
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002C005D
	.4byte 0x007E00E1
	.4byte 0x015300CA
	.4byte 0x03B103C6
	.4byte 0x03A103AA
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x2018007B
	.4byte 0x212200E2
	.4byte 0x00F800CB
	.4byte 0x03B203C7
	.4byte 0x03A303AB
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003A007D
	.4byte 0x00A900E4
	.4byte 0x00F500CC
	.4byte 0x03B303C8
	.4byte 0x03A403AC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003B00B7
	.4byte 0x00AE00E5
	.4byte 0x00DF00CD
	.4byte 0x03B403C9
	.4byte 0x03A503AD
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0026003C
	.4byte 0x00BA00E6
	.4byte 0x00F900CE
	.4byte 0x03B50391
	.4byte 0x03A603AE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x201C003E
	.4byte 0x00AA00E3
	.4byte 0x00FA00CF
	.4byte 0x03B60392
	.4byte 0x03A703AF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x201D002B
	.4byte 0x266D00E7
	.4byte 0x00FB00D1
	.4byte 0x03B70393
	.4byte 0x03A803B0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0027002D
	.4byte 0x266A00E8
	.4byte 0x00FC00D2
	.4byte 0x03B80394
	.4byte 0x03A903C2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002200D7
	.4byte 0x002A00E9
	.4byte 0x00FD00D3
	.4byte 0x03B90395
	.4byte 0x037E03CA
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003F00F7
	.4byte 0x219000EA
	.4byte 0x00FF00D4
	.4byte 0x03BA0396
	.4byte 0x038403CB
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0021003D
	.4byte 0x219200EB
	.4byte 0x00C000D6
	.4byte 0x03BB0397
	.4byte 0x038503CC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x002800B1
	.4byte 0x219100EC
	.4byte 0x00C10152
	.4byte 0x03BC0398
	.4byte 0x038603CD
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0029221E
	.4byte 0x219300ED
	.4byte 0x00C200D8
	.4byte 0x03BD0399
	.4byte 0x038703CE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x005F0025
	.4byte 0x002300EE
	.4byte 0x00C400D5
	.4byte 0x03BE039A
	.4byte 0x038825CE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00BF005C
	.4byte 0x002400EF
	.4byte 0x00C500D9
	.4byte 0x03BF039B
	.4byte 0x03892606
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00A1002F
	.4byte 0x00A200F1
	.4byte 0x00C600DA
	.4byte 0x03C0039C
	.4byte 0x038A25CB
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00AB007C
	.4byte 0x20AC00F2
	.4byte 0x00C300DB
	.4byte 0x03C1039D
	.4byte 0x038C25C7
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00BB00A7
	.4byte 0x00A300F3
	.4byte 0x00C700DC
	.4byte 0x03C3039E
	.4byte 0x038E25A1
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x201E0040
	.4byte 0x00A500F4
	.4byte 0x00C800DD
	.4byte 0x03C4039F
	.4byte 0x038F25B3
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj csSignKeyNL__Q39textinput8keyboard10signwindow

# .data:0x1B80 | 0x81665BD8 | size: 0x320
# textinput::keyboard::signwindow::csSignKeyCN
.obj csSignKeyCN__Q39textinput8keyboard10signwindow, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x3002FF08
	.4byte 0xFF0B2606
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFF0CFF09
	.4byte 0xFF0D2605
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x3001FF3B
	.4byte 0x00D725CB
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFF1BFF3D
	.4byte 0x00F725CF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFF1A2016
	.4byte 0xFF1D25CE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x201C3014
	.4byte 0x00B125C7
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x201D3015
	.4byte 0xFF5B25C6
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x20183010
	.4byte 0xFF5D25A1
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x20193011
	.4byte 0x221E25A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x2026FF3F
	.4byte 0xFF0F203B
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x300A300C
	.4byte 0x00B025B3
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x300B300D
	.4byte 0x203225B2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFF1F300E
	.4byte 0x203325BD
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFF01300F
	.4byte 0xFFE525BC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x30FBFF0A
	.4byte 0xFF042640
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFF1CFF0E
	.4byte 0xFFE02192
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFF1EFF40
	.4byte 0x20AC2190
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFF20FF07
	.4byte 0xFFE12191
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFF5EFF06
	.4byte 0xFF052193
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x2015FF3E
	.4byte 0x22112642
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj csSignKeyCN__Q39textinput8keyboard10signwindow

# .data:0x1EA0 | 0x81665EF8 | size: 0x320
# textinput::keyboard::signwindow::csSignKeyKR
.obj csSignKeyKR__Q39textinput8keyboard10signwindow, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFF0CFF0B
	.4byte 0xFF2025C6
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFF0EFF0D
	.4byte 0xFF052665
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFF1F00D7
	.4byte 0xFF3E2660
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFF0100F7
	.4byte 0xFF062663
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x201500B1
	.4byte 0x00B02605
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFF1AFF08
	.4byte 0x221E25C0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFF1BFF09
	.4byte 0x00A725B6
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFF07FF1C
	.4byte 0x203B25B2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFF02FF1E
	.4byte 0x266825BC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFF3FFF1D
	.4byte 0x260E25CF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x2018FF3B
	.4byte 0xFFE62192
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x2019FF3D
	.4byte 0xFFE52190
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x201CFF5B
	.4byte 0xFF042191
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x201DFF5D
	.4byte 0xFFE02193
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFF5EFF0A
	.4byte 0x20AC25A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00B7300A
	.4byte 0xFFE12669
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x2022300B
	.4byte 0x2103266C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x2026FF0F
	.4byte 0x321C266A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x2234FF5C
	.4byte 0x327FFF03
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x223CFF3C
	.4byte 0x2122266D
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj csSignKeyKR__Q39textinput8keyboard10signwindow
