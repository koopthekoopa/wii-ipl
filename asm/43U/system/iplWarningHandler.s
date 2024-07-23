.include "macros.inc"
.file "iplWarningHandler.cpp"

# 0x81356D4C..0x81356E48 | size: 0xFC
.text
.balign 4

# .text:0x0 | 0x81356D4C | size: 0x64
# ipl::WarningHandler::WarningHandler(EGG::Heap*)
.fn __ct__Q23ipl14WarningHandlerFPQ23EGG4Heap, global
/* 81356D4C 0002514C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81356D50 00025150  7C 08 02 A6 */	mflr r0
/* 81356D54 00025154  38 A0 00 04 */	li r5, 0x4
/* 81356D58 00025158  90 01 00 14 */	stw r0, 0x14(r1)
/* 81356D5C 0002515C  38 00 00 00 */	li r0, 0x0
/* 81356D60 00025160  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81356D64 00025164  7C 9F 23 78 */	mr r31, r4
/* 81356D68 00025168  93 C1 00 08 */	stw r30, 0x8(r1)
/* 81356D6C 0002516C  7C 7E 1B 78 */	mr r30, r3
/* 81356D70 00025170  90 03 00 00 */	stw r0, 0x0(r3)
/* 81356D74 00025174  90 03 00 04 */	stw r0, 0x4(r3)
/* 81356D78 00025178  38 60 00 9C */	li r3, 0x9c
/* 81356D7C 0002517C  48 2A 13 35 */	bl __nw__FUlPQ23EGG4Heapi
/* 81356D80 00025180  2C 03 00 00 */	cmpwi r3, 0x0
/* 81356D84 00025184  41 82 00 0C */	beq .L_81356D90
/* 81356D88 00025188  7F E4 FB 78 */	mr r4, r31
/* 81356D8C 0002518C  4B FE DA 8D */	bl __ct__Q23ipl12DialogWindowFPQ23EGG4Heap
.L_81356D90:
/* 81356D90 00025190  90 7E 00 08 */	stw r3, 0x8(r30)
/* 81356D94 00025194  7F C3 F3 78 */	mr r3, r30
/* 81356D98 00025198  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81356D9C 0002519C  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81356DA0 000251A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81356DA4 000251A4  7C 08 03 A6 */	mtlr r0
/* 81356DA8 000251A8  38 21 00 10 */	addi r1, r1, 0x10
/* 81356DAC 000251AC  4E 80 00 20 */	blr
.endfn __ct__Q23ipl14WarningHandlerFPQ23EGG4Heap

# .text:0x64 | 0x81356DB0 | size: 0x7C
# ipl::WarningHandler::set(ipl::WarningHandler::Type, unsigned long)
.fn set__Q23ipl14WarningHandlerFQ33ipl14WarningHandler4TypeUl, global
/* 81356DB0 000251B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81356DB4 000251B4  7C 08 02 A6 */	mflr r0
/* 81356DB8 000251B8  3C C0 81 09 */	lis r6, smArg__Q23ipl6System@ha
/* 81356DBC 000251BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 81356DC0 000251C0  38 C6 90 08 */	addi r6, r6, smArg__Q23ipl6System@l
/* 81356DC4 000251C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81356DC8 000251C8  7C BF 2B 78 */	mr r31, r5
/* 81356DCC 000251CC  93 C1 00 08 */	stw r30, 0x8(r1)
/* 81356DD0 000251D0  7C 7E 1B 78 */	mr r30, r3
/* 81356DD4 000251D4  90 83 00 00 */	stw r4, 0x0(r3)
/* 81356DD8 000251D8  90 A3 00 04 */	stw r5, 0x4(r3)
/* 81356DDC 000251DC  80 66 00 B4 */	lwz r3, 0xb4(r6)
/* 81356DE0 000251E0  4B FF 15 39 */	bl disable__Q23ipl14HomeButtonMenuFv
/* 81356DE4 000251E4  80 1E 00 00 */	lwz r0, 0x0(r30)
/* 81356DE8 000251E8  2C 00 00 00 */	cmpwi r0, 0x0
/* 81356DEC 000251EC  41 82 00 18 */	beq .L_81356E04
/* 81356DF0 000251F0  80 7E 00 08 */	lwz r3, 0x8(r30)
/* 81356DF4 000251F4  7F E4 FB 78 */	mr r4, r31
/* 81356DF8 000251F8  38 A0 00 2E */	li r5, 0x2e
/* 81356DFC 000251FC  4B FE F8 FD */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 81356E00 00025200  4B FD E7 61 */	bl warning_run__Q23ipl6SystemFv
.L_81356E04:
/* 81356E04 00025204  3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81356E08 00025208  38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81356E0C 0002520C  80 63 00 B4 */	lwz r3, 0xb4(r3)
/* 81356E10 00025210  4B FF 15 35 */	bl enable__Q23ipl14HomeButtonMenuFv
/* 81356E14 00025214  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81356E18 00025218  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81356E1C 0002521C  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81356E20 00025220  7C 08 03 A6 */	mtlr r0
/* 81356E24 00025224  38 21 00 10 */	addi r1, r1, 0x10
/* 81356E28 00025228  4E 80 00 20 */	blr
.endfn set__Q23ipl14WarningHandlerFQ33ipl14WarningHandler4TypeUl

# .text:0xE0 | 0x81356E2C | size: 0x8
# ipl::WarningHandler::calc()
.fn calc__Q23ipl14WarningHandlerFv, global
/* 81356E2C 0002522C  80 63 00 08 */	lwz r3, 0x8(r3)
/* 81356E30 00025230  4B FE E4 3C */	b calc__Q23ipl12DialogWindowFv
.endfn calc__Q23ipl14WarningHandlerFv

# .text:0xE8 | 0x81356E34 | size: 0x8
# ipl::WarningHandler::draw()
.fn draw__Q23ipl14WarningHandlerFv, global
/* 81356E34 00025234  80 63 00 08 */	lwz r3, 0x8(r3)
/* 81356E38 00025238  4B FE F0 B0 */	b draw__Q23ipl12DialogWindowFv
.endfn draw__Q23ipl14WarningHandlerFv

# .text:0xF0 | 0x81356E3C | size: 0xC
# ipl::WarningHandler::check()
.fn check__Q23ipl14WarningHandlerFv, global
/* 81356E3C 0002523C  80 63 00 08 */	lwz r3, 0x8(r3)
/* 81356E40 00025240  80 63 00 24 */	lwz r3, 0x24(r3)
/* 81356E44 00025244  4E 80 00 20 */	blr
.endfn check__Q23ipl14WarningHandlerFv
