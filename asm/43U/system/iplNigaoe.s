.include "macros.inc"
.file "iplNigaoe.cpp"

# 0x8133EE00 - 0x8133F068
.text
.balign 4

# ipl::nigaoe::Object::Object(EGG::Heap*, int, int, int, void (*)(ipl::nigaoe::Object*, void*), void*)
.fn __ct__Q33ipl6nigaoe6ObjectFPQ23EGG4HeapiiiPFPQ33ipl6nigaoe6ObjectPv_vPv, global
/* 8133EE00 0000D200  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133EE04 0000D204  7C 08 02 A6 */	mflr r0
/* 8133EE08 0000D208  90 01 00 14 */	stw r0, 0x14(r1)
/* 8133EE0C 0000D20C  38 00 00 00 */	li r0, 0x0
/* 8133EE10 0000D210  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133EE14 0000D214  7C 7F 1B 78 */	mr r31, r3
/* 8133EE18 0000D218  90 E3 00 3C */	stw r7, 0x3c(r3)
/* 8133EE1C 0000D21C  90 03 00 38 */	stw r0, 0x38(r3)
/* 8133EE20 0000D220  91 03 00 40 */	stw r8, 0x40(r3)
/* 8133EE24 0000D224  91 23 00 44 */	stw r9, 0x44(r3)
/* 8133EE28 0000D228  98 03 00 50 */	stb r0, 0x50(r3)
/* 8133EE2C 0000D22C  48 00 00 69 */	bl init__Q33ipl6nigaoe6ObjectFPQ23EGG4Heapii
/* 8133EE30 0000D230  7F E3 FB 78 */	mr r3, r31
/* 8133EE34 0000D234  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133EE38 0000D238  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133EE3C 0000D23C  7C 08 03 A6 */	mtlr r0
/* 8133EE40 0000D240  38 21 00 10 */	addi r1, r1, 0x10
/* 8133EE44 0000D244  4E 80 00 20 */	blr
.endfn __ct__Q33ipl6nigaoe6ObjectFPQ23EGG4HeapiiiPFPQ33ipl6nigaoe6ObjectPv_vPv

# ipl::nigaoe::Object::Object(EGG::Heap*, int, int, RFLiCharData*, void (*)(ipl::nigaoe::Object*, void*), void*)
.fn __ct__Q33ipl6nigaoe6ObjectFPQ23EGG4HeapiiP12RFLiCharDataPFPQ33ipl6nigaoe6ObjectPv_vPv, global
/* 8133EE48 0000D248  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133EE4C 0000D24C  7C 08 02 A6 */	mflr r0
/* 8133EE50 0000D250  39 40 FF FF */	li r10, -0x1
/* 8133EE54 0000D254  90 01 00 14 */	stw r0, 0x14(r1)
/* 8133EE58 0000D258  38 00 00 00 */	li r0, 0x0
/* 8133EE5C 0000D25C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133EE60 0000D260  7C 7F 1B 78 */	mr r31, r3
/* 8133EE64 0000D264  90 E3 00 38 */	stw r7, 0x38(r3)
/* 8133EE68 0000D268  91 43 00 3C */	stw r10, 0x3c(r3)
/* 8133EE6C 0000D26C  91 03 00 40 */	stw r8, 0x40(r3)
/* 8133EE70 0000D270  91 23 00 44 */	stw r9, 0x44(r3)
/* 8133EE74 0000D274  98 03 00 50 */	stb r0, 0x50(r3)
/* 8133EE78 0000D278  48 00 00 1D */	bl init__Q33ipl6nigaoe6ObjectFPQ23EGG4Heapii
/* 8133EE7C 0000D27C  7F E3 FB 78 */	mr r3, r31
/* 8133EE80 0000D280  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133EE84 0000D284  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133EE88 0000D288  7C 08 03 A6 */	mtlr r0
/* 8133EE8C 0000D28C  38 21 00 10 */	addi r1, r1, 0x10
/* 8133EE90 0000D290  4E 80 00 20 */	blr
.endfn __ct__Q33ipl6nigaoe6ObjectFPQ23EGG4HeapiiP12RFLiCharDataPFPQ33ipl6nigaoe6ObjectPv_vPv

# ipl::nigaoe::Object::init(EGG::Heap*, int, int)
.fn init__Q33ipl6nigaoe6ObjectFPQ23EGG4Heapii, global
/* 8133EE94 0000D294  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133EE98 0000D298  7C 08 02 A6 */	mflr r0
/* 8133EE9C 0000D29C  38 E0 00 00 */	li r7, 0x0
/* 8133EEA0 0000D2A0  39 00 00 01 */	li r8, 0x1
/* 8133EEA4 0000D2A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8133EEA8 0000D2A8  7C 05 31 D6 */	mullw r0, r5, r6
/* 8133EEAC 0000D2AC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8133EEB0 0000D2B0  7C 7F 1B 78 */	mr r31, r3
/* 8133EEB4 0000D2B4  B0 A3 00 08 */	sth r5, 0x8(r3)
/* 8133EEB8 0000D2B8  38 A0 00 20 */	li r5, 0x20
/* 8133EEBC 0000D2BC  54 00 08 3C */	slwi r0, r0, 1
/* 8133EEC0 0000D2C0  B0 C3 00 0A */	sth r6, 0xa(r3)
/* 8133EEC4 0000D2C4  91 03 00 0C */	stw r8, 0xc(r3)
/* 8133EEC8 0000D2C8  98 E1 00 08 */	stb r7, 0x8(r1)
/* 8133EECC 0000D2CC  98 E1 00 09 */	stb r7, 0x9(r1)
/* 8133EED0 0000D2D0  98 E1 00 0A */	stb r7, 0xa(r1)
/* 8133EED4 0000D2D4  98 E1 00 0B */	stb r7, 0xb(r1)
/* 8133EED8 0000D2D8  98 E3 00 10 */	stb r7, 0x10(r3)
/* 8133EEDC 0000D2DC  98 E3 00 11 */	stb r7, 0x11(r3)
/* 8133EEE0 0000D2E0  98 E3 00 12 */	stb r7, 0x12(r3)
/* 8133EEE4 0000D2E4  98 E3 00 13 */	stb r7, 0x13(r3)
/* 8133EEE8 0000D2E8  90 E3 00 14 */	stw r7, 0x14(r3)
/* 8133EEEC 0000D2EC  90 03 00 04 */	stw r0, 0x4(r3)
/* 8133EEF0 0000D2F0  7C 03 03 78 */	mr r3, r0
/* 8133EEF4 0000D2F4  48 2B 91 E1 */	bl __nwa__FUlPQ23EGG4Heapi
/* 8133EEF8 0000D2F8  90 7F 00 00 */	stw r3, 0x0(r31)
/* 8133EEFC 0000D2FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8133EF00 0000D300  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8133EF04 0000D304  7C 08 03 A6 */	mtlr r0
/* 8133EF08 0000D308  38 21 00 20 */	addi r1, r1, 0x20
/* 8133EF0C 0000D30C  4E 80 00 20 */	blr
.endfn init__Q33ipl6nigaoe6ObjectFPQ23EGG4Heapii

# ipl::nigaoe::Object::~Object()
.fn __dt__Q33ipl6nigaoe6ObjectFv, global
/* 8133EF10 0000D310  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133EF14 0000D314  7C 08 02 A6 */	mflr r0
/* 8133EF18 0000D318  2C 03 00 00 */	cmpwi r3, 0x0
/* 8133EF1C 0000D31C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8133EF20 0000D320  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133EF24 0000D324  7C 9F 23 78 */	mr r31, r4
/* 8133EF28 0000D328  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8133EF2C 0000D32C  7C 7E 1B 78 */	mr r30, r3
/* 8133EF30 0000D330  41 82 00 1C */	beq .L_8133EF4C
/* 8133EF34 0000D334  80 63 00 00 */	lwz r3, 0x0(r3)
/* 8133EF38 0000D338  48 2B 91 B5 */	bl __dla__FPv
/* 8133EF3C 0000D33C  2C 1F 00 00 */	cmpwi r31, 0x0
/* 8133EF40 0000D340  40 81 00 0C */	ble .L_8133EF4C
/* 8133EF44 0000D344  7F C3 F3 78 */	mr r3, r30
/* 8133EF48 0000D348  48 2B 91 9D */	bl __dl__FPv
.L_8133EF4C:
/* 8133EF4C 0000D34C  7F C3 F3 78 */	mr r3, r30
/* 8133EF50 0000D350  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133EF54 0000D354  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8133EF58 0000D358  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133EF5C 0000D35C  7C 08 03 A6 */	mtlr r0
/* 8133EF60 0000D360  38 21 00 10 */	addi r1, r1, 0x10
/* 8133EF64 0000D364  4E 80 00 20 */	blr
.endfn __dt__Q33ipl6nigaoe6ObjectFv

# ipl::nigaoe::Object::make_icon()
.fn make_icon__Q33ipl6nigaoe6ObjectFv, global
/* 8133EF68 0000D368  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133EF6C 0000D36C  7C 08 02 A6 */	mflr r0
/* 8133EF70 0000D370  90 01 00 14 */	stw r0, 0x14(r1)
/* 8133EF74 0000D374  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133EF78 0000D378  3B E0 00 00 */	li r31, 0x0
/* 8133EF7C 0000D37C  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8133EF80 0000D380  7C 7E 1B 78 */	mr r30, r3
/* 8133EF84 0000D384  80 83 00 38 */	lwz r4, 0x38(r3)
/* 8133EF88 0000D388  2C 04 00 00 */	cmpwi r4, 0x0
/* 8133EF8C 0000D38C  41 82 00 18 */	beq .L_8133EFA4
/* 8133EF90 0000D390  80 63 00 00 */	lwz r3, 0x0(r3)
/* 8133EF94 0000D394  38 DE 00 08 */	addi r6, r30, 0x8
/* 8133EF98 0000D398  38 A0 00 00 */	li r5, 0x0
/* 8133EF9C 0000D39C  48 1A 4C 3D */	bl RFLiMakeIconFromData
/* 8133EFA0 0000D3A0  48 00 00 28 */	b .L_8133EFC8
.L_8133EFA4:
/* 8133EFA4 0000D3A4  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 8133EFA8 0000D3A8  39 1E 00 08 */	addi r8, r30, 0x8
/* 8133EFAC 0000D3AC  80 63 00 00 */	lwz r3, 0x0(r3)
/* 8133EFB0 0000D3B0  38 80 00 00 */	li r4, 0x0
/* 8133EFB4 0000D3B4  54 06 04 3E */	clrlwi r6, r0, 16
/* 8133EFB8 0000D3B8  38 A0 00 00 */	li r5, 0x0
/* 8133EFBC 0000D3BC  38 E0 00 00 */	li r7, 0x0
/* 8133EFC0 0000D3C0  48 1A 4B A5 */	bl RFLMakeIcon
/* 8133EFC4 0000D3C4  7C 7F 1B 78 */	mr r31, r3
.L_8133EFC8:
/* 8133EFC8 0000D3C8  2C 1F 00 00 */	cmpwi r31, 0x0
/* 8133EFCC 0000D3CC  41 82 00 20 */	beq .L_8133EFEC
/* 8133EFD0 0000D3D0  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8133EFD4 0000D3D4  38 80 00 00 */	li r4, 0x0
/* 8133EFD8 0000D3D8  80 BE 00 04 */	lwz r5, 0x4(r30)
/* 8133EFDC 0000D3DC  4B FF 13 59 */	bl memset
/* 8133EFE0 0000D3E0  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8133EFE4 0000D3E4  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 8133EFE8 0000D3E8  48 1E E9 7D */	bl DCStoreRange
.L_8133EFEC:
/* 8133EFEC 0000D3EC  4B FF 69 A9 */	bl getRenderModeObj__Q23ipl6SystemFv
/* 8133EFF0 0000D3F0  7C 66 1B 78 */	mr r6, r3
/* 8133EFF4 0000D3F4  88 63 00 19 */	lbz r3, 0x19(r3)
/* 8133EFF8 0000D3F8  38 86 00 1A */	addi r4, r6, 0x1a
/* 8133EFFC 0000D3FC  38 A0 00 01 */	li r5, 0x1
/* 8133F000 0000D400  38 C6 00 32 */	addi r6, r6, 0x32
/* 8133F004 0000D404  48 20 62 B5 */	bl GXSetCopyFilter
/* 8133F008 0000D408  38 60 00 01 */	li r3, 0x1
/* 8133F00C 0000D40C  48 20 89 11 */	bl GXSetDither
/* 8133F010 0000D410  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8133F014 0000D414  38 7E 00 18 */	addi r3, r30, 0x18
/* 8133F018 0000D418  A0 BE 00 08 */	lhz r5, 0x8(r30)
/* 8133F01C 0000D41C  38 E0 00 05 */	li r7, 0x5
/* 8133F020 0000D420  A0 DE 00 0A */	lhz r6, 0xa(r30)
/* 8133F024 0000D424  39 00 00 00 */	li r8, 0x0
/* 8133F028 0000D428  39 20 00 00 */	li r9, 0x0
/* 8133F02C 0000D42C  39 40 00 00 */	li r10, 0x0
/* 8133F030 0000D430  48 20 6C 41 */	bl GXInitTexObj
/* 8133F034 0000D434  81 9E 00 40 */	lwz r12, 0x40(r30)
/* 8133F038 0000D438  38 00 00 01 */	li r0, 0x1
/* 8133F03C 0000D43C  7F C3 F3 78 */	mr r3, r30
/* 8133F040 0000D440  98 1E 00 50 */	stb r0, 0x50(r30)
/* 8133F044 0000D444  80 9E 00 44 */	lwz r4, 0x44(r30)
/* 8133F048 0000D448  7D 89 03 A6 */	mtctr r12
/* 8133F04C 0000D44C  4E 80 04 21 */	bctrl
/* 8133F050 0000D450  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133F054 0000D454  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133F058 0000D458  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8133F05C 0000D45C  7C 08 03 A6 */	mtlr r0
/* 8133F060 0000D460  38 21 00 10 */	addi r1, r1, 0x10
/* 8133F064 0000D464  4E 80 00 20 */	blr
.endfn make_icon__Q33ipl6nigaoe6ObjectFv
