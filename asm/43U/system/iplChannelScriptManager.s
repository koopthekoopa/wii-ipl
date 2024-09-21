.include "macros.inc"
.file "iplChannelScriptManager.cpp"

# 0x810892E0..0x81089550 | size: 0x270
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810892E0 | size: 0x270
# ipl::channel::ChannelScriptManager::smCSVm
.obj smCSVm__Q33ipl7channel20ChannelScriptManager, global
	.skip 0x270
.endobj smCSVm__Q33ipl7channel20ChannelScriptManager

# 0x8133AA80..0x8133B2E4 | size: 0x864
.text
.balign 4

# .text:0x0 | 0x8133AA80 | size: 0x10
# ipl::channel::ChannelScriptManager::ChannelScriptManager()
.fn __ct__Q33ipl7channel20ChannelScriptManagerFv, global
/* 8133AA80 | 38 00 00 00 */	li r0, 0x0
/* 8133AA84 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 8133AA88 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 8133AA8C | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl7channel20ChannelScriptManagerFv

# .text:0x10 | 0x8133AA90 | size: 0x90
# ipl::channel::ChannelScriptManager::create(EGG::ExpHeap*)
.fn create__Q33ipl7channel20ChannelScriptManagerFPQ23EGG7ExpHeap, global
/* 8133AA90 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133AA94 | 7C 08 02 A6 */	mflr r0
/* 8133AA98 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133AA9C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133AAA0 | 7C 9F 23 78 */	mr r31, r4
/* 8133AAA4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8133AAA8 | 7C 7E 1B 78 */	mr r30, r3
/* 8133AAAC | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8133AAB0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133AAB4 | 40 82 00 14 */	bne .L_8133AAC8
/* 8133AAB8 | 3C 60 00 04 */	lis r3, 0x4
/* 8133AABC | 38 A0 00 04 */	li r5, 0x4
/* 8133AAC0 | 48 2B D6 15 */	bl __nwa__FUlPQ23EGG4Heapi
/* 8133AAC4 | 90 7E 00 00 */	stw r3, 0x0(r30)
.L_8133AAC8:
/* 8133AAC8 | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 8133AACC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133AAD0 | 40 82 00 08 */	bne .L_8133AAD8
/* 8133AAD4 | 93 FE 00 04 */	stw r31, 0x4(r30)
.L_8133AAD8:
/* 8133AAD8 | 38 7E 00 08 */	addi r3, r30, 0x8
/* 8133AADC | 38 80 00 00 */	li r4, 0x0
/* 8133AAE0 | 38 A0 00 20 */	li r5, 0x20
/* 8133AAE4 | 4B FF 58 51 */	bl memset
/* 8133AAE8 | 38 7E 00 28 */	addi r3, r30, 0x28
/* 8133AAEC | 38 80 00 00 */	li r4, 0x0
/* 8133AAF0 | 38 A0 00 08 */	li r5, 0x8
/* 8133AAF4 | 4B FF 58 41 */	bl memset
/* 8133AAF8 | 38 00 00 00 */	li r0, 0x0
/* 8133AAFC | 90 0D A6 6C */	stw r0, lbl_816986AC@sda21(r0)
/* 8133AB00 | 90 1E 00 30 */	stw r0, 0x30(r30)
/* 8133AB04 | 90 1E 00 34 */	stw r0, 0x34(r30)
/* 8133AB08 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133AB0C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8133AB10 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133AB14 | 7C 08 03 A6 */	mtlr r0
/* 8133AB18 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133AB1C | 4E 80 00 20 */	blr
.endfn create__Q33ipl7channel20ChannelScriptManagerFPQ23EGG7ExpHeap

# .text:0xA0 | 0x8133AB20 | size: 0x3D4
# ipl::channel::ChannelScriptManager::init(ipl::nand::File*, ipl::channel::RsoThread*)
.fn init__Q33ipl7channel20ChannelScriptManagerFPQ33ipl4nand4FilePQ33ipl7channel9RsoThread, global
/* 8133AB20 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133AB24 | 7C 08 02 A6 */	mflr r0
/* 8133AB28 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8133AB2C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133AB30 | 48 2B E9 95 */	bl _savegpr_28
/* 8133AB34 | 90 AD A6 68 */	stw r5, lbl_816986A8@sda21(r0)
/* 8133AB38 | 7C 7C 1B 78 */	mr r28, r3
/* 8133AB3C | 3F C0 81 63 */	lis r30, lbl_81634B08@ha
/* 8133AB40 | 7C 9D 23 78 */	mr r29, r4
/* 8133AB44 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8133AB48 | 3B DE 4B 08 */	addi r30, r30, lbl_81634B08@l
/* 8133AB4C | 38 80 00 00 */	li r4, 0x0
/* 8133AB50 | 3C A0 00 04 */	lis r5, 0x4
/* 8133AB54 | 4B FF 57 E1 */	bl memset
/* 8133AB58 | 3F E0 81 09 */	lis r31, smCSVm__Q33ipl7channel20ChannelScriptManager@ha
/* 8133AB5C | 80 9C 00 00 */	lwz r4, 0x0(r28)
/* 8133AB60 | 38 7F 92 E0 */	addi r3, r31, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133AB64 | 3C A0 00 04 */	lis r5, 0x4
/* 8133AB68 | 48 11 A2 69 */	bl CHANSVmPrepareInit
/* 8133AB6C | 38 7F 92 E0 */	addi r3, r31, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133AB70 | 48 11 D5 E9 */	bl init__Q33ipl2cs6systemFP7CHANSVm
/* 8133AB74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133AB78 | 40 82 00 18 */	bne .L_8133AB90
/* 8133AB7C | 38 7E 00 00 */	addi r3, r30, 0x0
/* 8133AB80 | 38 BE 00 1C */	addi r5, r30, 0x1c
/* 8133AB84 | 38 80 00 65 */	li r4, 0x65
/* 8133AB88 | 4C C6 31 82 */	crclr cr1eq
/* 8133AB8C | 48 1F 3B A5 */	bl OSPanic
.L_8133AB90:
/* 8133AB90 | 3C 60 81 09 */	lis r3, smCSVm__Q33ipl7channel20ChannelScriptManager@ha
/* 8133AB94 | 38 63 92 E0 */	addi r3, r3, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133AB98 | 48 11 D8 85 */	bl init__Q33ipl2cs6layoutFP7CHANSVm
/* 8133AB9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133ABA0 | 40 82 00 18 */	bne .L_8133ABB8
/* 8133ABA4 | 38 7E 00 00 */	addi r3, r30, 0x0
/* 8133ABA8 | 38 BE 00 39 */	addi r5, r30, 0x39
/* 8133ABAC | 38 80 00 69 */	li r4, 0x69
/* 8133ABB0 | 4C C6 31 82 */	crclr cr1eq
/* 8133ABB4 | 48 1F 3B 7D */	bl OSPanic
.L_8133ABB8:
/* 8133ABB8 | 3C 60 81 09 */	lis r3, smCSVm__Q33ipl7channel20ChannelScriptManager@ha
/* 8133ABBC | 38 63 92 E0 */	addi r3, r3, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133ABC0 | 48 11 F0 05 */	bl init__Q33ipl2cs4paneFP7CHANSVm
/* 8133ABC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133ABC8 | 40 82 00 18 */	bne .L_8133ABE0
/* 8133ABCC | 38 7E 00 00 */	addi r3, r30, 0x0
/* 8133ABD0 | 38 BE 00 4D */	addi r5, r30, 0x4d
/* 8133ABD4 | 38 80 00 6D */	li r4, 0x6d
/* 8133ABD8 | 4C C6 31 82 */	crclr cr1eq
/* 8133ABDC | 48 1F 3B 55 */	bl OSPanic
.L_8133ABE0:
/* 8133ABE0 | 3C 60 81 09 */	lis r3, smCSVm__Q33ipl7channel20ChannelScriptManager@ha
/* 8133ABE4 | 38 63 92 E0 */	addi r3, r3, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133ABE8 | 48 11 F7 D5 */	bl init__Q33ipl2cs8materialFP7CHANSVm
/* 8133ABEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133ABF0 | 40 82 00 18 */	bne .L_8133AC08
/* 8133ABF4 | 38 7E 00 00 */	addi r3, r30, 0x0
/* 8133ABF8 | 38 BE 00 5F */	addi r5, r30, 0x5f
/* 8133ABFC | 38 80 00 71 */	li r4, 0x71
/* 8133AC00 | 4C C6 31 82 */	crclr cr1eq
/* 8133AC04 | 48 1F 3B 2D */	bl OSPanic
.L_8133AC08:
/* 8133AC08 | 3C 60 81 09 */	lis r3, smCSVm__Q33ipl7channel20ChannelScriptManager@ha
/* 8133AC0C | 38 63 92 E0 */	addi r3, r3, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133AC10 | 48 11 FC 4D */	bl init__Q33ipl2cs7textureFP7CHANSVm
/* 8133AC14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133AC18 | 40 82 00 18 */	bne .L_8133AC30
/* 8133AC1C | 38 7E 00 00 */	addi r3, r30, 0x0
/* 8133AC20 | 38 BE 00 75 */	addi r5, r30, 0x75
/* 8133AC24 | 38 80 00 75 */	li r4, 0x75
/* 8133AC28 | 4C C6 31 82 */	crclr cr1eq
/* 8133AC2C | 48 1F 3B 05 */	bl OSPanic
.L_8133AC30:
/* 8133AC30 | 3C 60 81 09 */	lis r3, smCSVm__Q33ipl7channel20ChannelScriptManager@ha
/* 8133AC34 | 38 63 92 E0 */	addi r3, r3, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133AC38 | 48 12 0F 01 */	bl init__Q33ipl2cs8savedataFP7CHANSVm
/* 8133AC3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133AC40 | 40 82 00 18 */	bne .L_8133AC58
/* 8133AC44 | 38 7E 00 00 */	addi r3, r30, 0x0
/* 8133AC48 | 38 BE 00 8A */	addi r5, r30, 0x8a
/* 8133AC4C | 38 80 00 79 */	li r4, 0x79
/* 8133AC50 | 4C C6 31 82 */	crclr cr1eq
/* 8133AC54 | 48 1F 3A DD */	bl OSPanic
.L_8133AC58:
/* 8133AC58 | 3C 60 81 09 */	lis r3, smCSVm__Q33ipl7channel20ChannelScriptManager@ha
/* 8133AC5C | 38 63 92 E0 */	addi r3, r3, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133AC60 | 48 12 14 69 */	bl init__Q33ipl2cs4vec3FP7CHANSVm
/* 8133AC64 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133AC68 | 40 82 00 18 */	bne .L_8133AC80
/* 8133AC6C | 38 7E 00 00 */	addi r3, r30, 0x0
/* 8133AC70 | 38 BE 00 A0 */	addi r5, r30, 0xa0
/* 8133AC74 | 38 80 00 7D */	li r4, 0x7d
/* 8133AC78 | 4C C6 31 82 */	crclr cr1eq
/* 8133AC7C | 48 1F 3A B5 */	bl OSPanic
.L_8133AC80:
/* 8133AC80 | 3C 60 81 09 */	lis r3, smCSVm__Q33ipl7channel20ChannelScriptManager@ha
/* 8133AC84 | 38 63 92 E0 */	addi r3, r3, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133AC88 | 48 12 1F 41 */	bl init__Q33ipl2cs5mtx34FP7CHANSVm
/* 8133AC8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133AC90 | 40 82 00 18 */	bne .L_8133ACA8
/* 8133AC94 | 38 7E 00 00 */	addi r3, r30, 0x0
/* 8133AC98 | 38 BE 00 B2 */	addi r5, r30, 0xb2
/* 8133AC9C | 38 80 00 81 */	li r4, 0x81
/* 8133ACA0 | 4C C6 31 82 */	crclr cr1eq
/* 8133ACA4 | 48 1F 3A 8D */	bl OSPanic
.L_8133ACA8:
/* 8133ACA8 | 3C 60 81 09 */	lis r3, smCSVm__Q33ipl7channel20ChannelScriptManager@ha
/* 8133ACAC | 38 63 92 E0 */	addi r3, r3, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133ACB0 | 48 12 17 39 */	bl init__Q33ipl2cs2gxFP7CHANSVm
/* 8133ACB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133ACB8 | 40 82 00 18 */	bne .L_8133ACD0
/* 8133ACBC | 38 7E 00 00 */	addi r3, r30, 0x0
/* 8133ACC0 | 38 BE 00 C5 */	addi r5, r30, 0xc5
/* 8133ACC4 | 38 80 00 85 */	li r4, 0x85
/* 8133ACC8 | 4C C6 31 82 */	crclr cr1eq
/* 8133ACCC | 48 1F 3A 65 */	bl OSPanic
.L_8133ACD0:
/* 8133ACD0 | 3C 60 81 09 */	lis r3, smCSVm__Q33ipl7channel20ChannelScriptManager@ha
/* 8133ACD4 | 38 63 92 E0 */	addi r3, r3, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133ACD8 | 48 12 24 15 */	bl init__Q33ipl2cs10textwriterFP7CHANSVm
/* 8133ACDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133ACE0 | 40 82 00 18 */	bne .L_8133ACF8
/* 8133ACE4 | 38 7E 00 00 */	addi r3, r30, 0x0
/* 8133ACE8 | 38 BE 00 D5 */	addi r5, r30, 0xd5
/* 8133ACEC | 38 80 00 89 */	li r4, 0x89
/* 8133ACF0 | 4C C6 31 82 */	crclr cr1eq
/* 8133ACF4 | 48 1F 3A 3D */	bl OSPanic
.L_8133ACF8:
/* 8133ACF8 | 3C 60 81 09 */	lis r3, smCSVm__Q33ipl7channel20ChannelScriptManager@ha
/* 8133ACFC | 38 63 92 E0 */	addi r3, r3, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133AD00 | 48 12 24 DD */	bl init__Q33ipl2cs4fontFP7CHANSVm
/* 8133AD04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133AD08 | 40 82 00 18 */	bne .L_8133AD20
/* 8133AD0C | 38 7E 00 00 */	addi r3, r30, 0x0
/* 8133AD10 | 38 BE 00 ED */	addi r5, r30, 0xed
/* 8133AD14 | 38 80 00 8D */	li r4, 0x8d
/* 8133AD18 | 4C C6 31 82 */	crclr cr1eq
/* 8133AD1C | 48 1F 3A 15 */	bl OSPanic
.L_8133AD20:
/* 8133AD20 | 3C 60 81 09 */	lis r3, smCSVm__Q33ipl7channel20ChannelScriptManager@ha
/* 8133AD24 | 38 63 92 E0 */	addi r3, r3, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133AD28 | 48 12 28 5D */	bl init__Q33ipl2cs4rectFP7CHANSVm
/* 8133AD2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133AD30 | 40 82 00 18 */	bne .L_8133AD48
/* 8133AD34 | 38 7E 00 00 */	addi r3, r30, 0x0
/* 8133AD38 | 38 BE 00 FF */	addi r5, r30, 0xff
/* 8133AD3C | 38 80 00 91 */	li r4, 0x91
/* 8133AD40 | 4C C6 31 82 */	crclr cr1eq
/* 8133AD44 | 48 1F 39 ED */	bl OSPanic
.L_8133AD48:
/* 8133AD48 | 3C 60 81 09 */	lis r3, smCSVm__Q33ipl7channel20ChannelScriptManager@ha
/* 8133AD4C | 38 63 92 E0 */	addi r3, r3, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133AD50 | 48 12 2A 59 */	bl init__Q33ipl2cs5colorFP7CHANSVm
/* 8133AD54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133AD58 | 40 82 00 18 */	bne .L_8133AD70
/* 8133AD5C | 38 7E 00 00 */	addi r3, r30, 0x0
/* 8133AD60 | 38 BE 01 11 */	addi r5, r30, 0x111
/* 8133AD64 | 38 80 00 95 */	li r4, 0x95
/* 8133AD68 | 4C C6 31 82 */	crclr cr1eq
/* 8133AD6C | 48 1F 39 C5 */	bl OSPanic
.L_8133AD70:
/* 8133AD70 | 3C 60 81 09 */	lis r3, smCSVm__Q33ipl7channel20ChannelScriptManager@ha
/* 8133AD74 | 38 63 92 E0 */	addi r3, r3, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133AD78 | 48 12 30 59 */	bl init__Q33ipl2cs9color_s10FP7CHANSVm
/* 8133AD7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133AD80 | 40 82 00 18 */	bne .L_8133AD98
/* 8133AD84 | 38 7E 00 00 */	addi r3, r30, 0x0
/* 8133AD88 | 38 BE 01 24 */	addi r5, r30, 0x124
/* 8133AD8C | 38 80 00 99 */	li r4, 0x99
/* 8133AD90 | 4C C6 31 82 */	crclr cr1eq
/* 8133AD94 | 48 1F 39 9D */	bl OSPanic
.L_8133AD98:
/* 8133AD98 | 3C 60 81 09 */	lis r3, smCSVm__Q33ipl7channel20ChannelScriptManager@ha
/* 8133AD9C | 38 63 92 E0 */	addi r3, r3, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133ADA0 | 48 12 35 AD */	bl init__Q33ipl2cs4sizeFP7CHANSVm
/* 8133ADA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133ADA8 | 40 82 00 18 */	bne .L_8133ADC0
/* 8133ADAC | 38 7E 00 00 */	addi r3, r30, 0x0
/* 8133ADB0 | 38 BE 01 3A */	addi r5, r30, 0x13a
/* 8133ADB4 | 38 80 00 9D */	li r4, 0x9d
/* 8133ADB8 | 4C C6 31 82 */	crclr cr1eq
/* 8133ADBC | 48 1F 39 75 */	bl OSPanic
.L_8133ADC0:
/* 8133ADC0 | 3C 60 81 09 */	lis r3, smCSVm__Q33ipl7channel20ChannelScriptManager@ha
/* 8133ADC4 | 38 63 92 E0 */	addi r3, r3, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133ADC8 | 48 12 3F C5 */	bl init__Q33ipl2cs4animFP7CHANSVm
/* 8133ADCC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133ADD0 | 40 82 00 18 */	bne .L_8133ADE8
/* 8133ADD4 | 38 7E 00 00 */	addi r3, r30, 0x0
/* 8133ADD8 | 38 BE 01 4C */	addi r5, r30, 0x14c
/* 8133ADDC | 38 80 00 A1 */	li r4, 0xa1
/* 8133ADE0 | 4C C6 31 82 */	crclr cr1eq
/* 8133ADE4 | 48 1F 39 4D */	bl OSPanic
.L_8133ADE8:
/* 8133ADE8 | 3C 60 81 09 */	lis r3, smCSVm__Q33ipl7channel20ChannelScriptManager@ha
/* 8133ADEC | 38 63 92 E0 */	addi r3, r3, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133ADF0 | 48 12 41 25 */	bl init__Q33ipl2cs5soundFP7CHANSVm
/* 8133ADF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133ADF8 | 40 82 00 18 */	bne .L_8133AE10
/* 8133ADFC | 38 7E 00 00 */	addi r3, r30, 0x0
/* 8133AE00 | 38 BE 01 5E */	addi r5, r30, 0x15e
/* 8133AE04 | 38 80 00 A5 */	li r4, 0xa5
/* 8133AE08 | 4C C6 31 82 */	crclr cr1eq
/* 8133AE0C | 48 1F 39 25 */	bl OSPanic
.L_8133AE10:
/* 8133AE10 | 3C 60 81 09 */	lis r3, smCSVm__Q33ipl7channel20ChannelScriptManager@ha
/* 8133AE14 | 38 63 92 E0 */	addi r3, r3, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133AE18 | 48 12 41 8D */	bl init__Q33ipl2cs8iplimageFP7CHANSVm
/* 8133AE1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133AE20 | 40 82 00 18 */	bne .L_8133AE38
/* 8133AE24 | 38 7E 00 00 */	addi r3, r30, 0x0
/* 8133AE28 | 38 BE 01 71 */	addi r5, r30, 0x171
/* 8133AE2C | 38 80 00 A9 */	li r4, 0xa9
/* 8133AE30 | 4C C6 31 82 */	crclr cr1eq
/* 8133AE34 | 48 1F 38 FD */	bl OSPanic
.L_8133AE38:
/* 8133AE38 | 3F E0 81 09 */	lis r31, smCSVm__Q33ipl7channel20ChannelScriptManager@ha
/* 8133AE3C | 38 7F 92 E0 */	addi r3, r31, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133AE40 | 48 11 A3 59 */	bl CHANSVmGetFreeExeSize
/* 8133AE44 | 80 1D 00 98 */	lwz r0, 0x98(r29)
/* 8133AE48 | 7C 00 18 40 */	cmplw r0, r3
/* 8133AE4C | 40 81 00 0C */	ble .L_8133AE58
/* 8133AE50 | 38 60 00 00 */	li r3, 0x0
/* 8133AE54 | 48 00 00 88 */	b .L_8133AEDC
.L_8133AE58:
/* 8133AE58 | 38 7F 92 E0 */	addi r3, r31, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133AE5C | 48 11 A3 11 */	bl CHANSVmGetFreeExeBufp
/* 8133AE60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133AE64 | 40 82 00 0C */	bne .L_8133AE70
/* 8133AE68 | 38 60 00 00 */	li r3, 0x0
/* 8133AE6C | 48 00 00 70 */	b .L_8133AEDC
.L_8133AE70:
/* 8133AE70 | 80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 8133AE74 | 80 BD 00 98 */	lwz r5, 0x98(r29)
/* 8133AE78 | 4B FF 53 B9 */	bl memcpy
/* 8133AE7C | 38 7F 92 E0 */	addi r3, r31, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133AE80 | 38 80 00 01 */	li r4, 0x1
/* 8133AE84 | 38 A0 00 00 */	li r5, 0x0
/* 8133AE88 | 48 11 A3 39 */	bl CHANSVmAddExe
/* 8133AE8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133AE90 | 41 82 00 0C */	beq .L_8133AE9C
/* 8133AE94 | 38 60 00 00 */	li r3, 0x0
/* 8133AE98 | 48 00 00 44 */	b .L_8133AEDC
.L_8133AE9C:
/* 8133AE9C | 38 7F 92 E0 */	addi r3, r31, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133AEA0 | 38 80 00 01 */	li r4, 0x1
/* 8133AEA4 | 48 11 AB BD */	bl CHANSVmLinkModules
/* 8133AEA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133AEAC | 41 82 00 0C */	beq .L_8133AEB8
/* 8133AEB0 | 38 60 00 00 */	li r3, 0x0
/* 8133AEB4 | 48 00 00 28 */	b .L_8133AEDC
.L_8133AEB8:
/* 8133AEB8 | 3C 80 81 34 */	lis r4, calcCSThread__Q33ipl7channel20ChannelScriptManagerFv@ha
/* 8133AEBC | 80 6D A6 68 */	lwz r3, lbl_816986A8@sda21(r0)
/* 8133AEC0 | 38 84 B1 30 */	addi r4, r4, calcCSThread__Q33ipl7channel20ChannelScriptManagerFv@l
/* 8133AEC4 | 48 01 EB 99 */	bl setCalcFunc__Q33ipl7channel9RsoThreadFPFv_v
/* 8133AEC8 | 80 6D A6 68 */	lwz r3, lbl_816986A8@sda21(r0)
/* 8133AECC | 48 01 EB 15 */	bl start__Q33ipl7channel9RsoThreadFv
/* 8133AED0 | 38 00 00 01 */	li r0, 0x1
/* 8133AED4 | 38 60 00 01 */	li r3, 0x1
/* 8133AED8 | 90 0D A6 6C */	stw r0, lbl_816986AC@sda21(r0)
.L_8133AEDC:
/* 8133AEDC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133AEE0 | 48 2B E6 31 */	bl _restgpr_28
/* 8133AEE4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8133AEE8 | 7C 08 03 A6 */	mtlr r0
/* 8133AEEC | 38 21 00 20 */	addi r1, r1, 0x20
/* 8133AEF0 | 4E 80 00 20 */	blr
.endfn init__Q33ipl7channel20ChannelScriptManagerFPQ33ipl4nand4FilePQ33ipl7channel9RsoThread

# .text:0x474 | 0x8133AEF4 | size: 0x130
# ipl::channel::ChannelScriptManager::calc()
.fn calc__Q33ipl7channel20ChannelScriptManagerFv, global
/* 8133AEF4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133AEF8 | 7C 08 02 A6 */	mflr r0
/* 8133AEFC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8133AF00 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8133AF04 | 7C 7F 1B 78 */	mr r31, r3
/* 8133AF08 | 80 0D A6 6C */	lwz r0, lbl_816986AC@sda21(r0)
/* 8133AF0C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8133AF10 | 40 82 00 64 */	bne .L_8133AF74
/* 8133AF14 | 80 6D A6 68 */	lwz r3, lbl_816986A8@sda21(r0)
/* 8133AF18 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133AF1C | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8133AF20 | 7D 89 03 A6 */	mtctr r12
/* 8133AF24 | 4E 80 04 21 */	bctrl
/* 8133AF28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133AF2C | 41 82 00 48 */	beq .L_8133AF74
/* 8133AF30 | 80 6D A6 68 */	lwz r3, lbl_816986A8@sda21(r0)
/* 8133AF34 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8133AF38 | 38 A0 00 00 */	li r5, 0x0
/* 8133AF3C | 38 63 03 38 */	addi r3, r3, 0x338
/* 8133AF40 | 48 1F 62 09 */	bl OSReceiveMessage
/* 8133AF44 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 8133AF48 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8133AF4C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8133AF50 | 90 1F 00 30 */	stw r0, 0x30(r31)
/* 8133AF54 | 40 82 00 20 */	bne .L_8133AF74
/* 8133AF58 | 38 00 00 03 */	li r0, 0x3
/* 8133AF5C | 80 6D A6 68 */	lwz r3, lbl_816986A8@sda21(r0)
/* 8133AF60 | 90 0D A6 6C */	stw r0, lbl_816986AC@sda21(r0)
/* 8133AF64 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133AF68 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8133AF6C | 7D 89 03 A6 */	mtctr r12
/* 8133AF70 | 4E 80 04 21 */	bctrl
.L_8133AF74:
/* 8133AF74 | 80 0D A6 6C */	lwz r0, lbl_816986AC@sda21(r0)
/* 8133AF78 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 8133AF7C | 40 82 00 6C */	bne .L_8133AFE8
/* 8133AF80 | 80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8133AF84 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8133AF88 | 40 82 00 18 */	bne .L_8133AFA0
/* 8133AF8C | 80 6D A6 68 */	lwz r3, lbl_816986A8@sda21(r0)
/* 8133AF90 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133AF94 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8133AF98 | 7D 89 03 A6 */	mtctr r12
/* 8133AF9C | 4E 80 04 21 */	bctrl
.L_8133AFA0:
/* 8133AFA0 | 80 6D A6 68 */	lwz r3, lbl_816986A8@sda21(r0)
/* 8133AFA4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8133AFA8 | 38 A0 00 01 */	li r5, 0x1
/* 8133AFAC | 38 63 03 38 */	addi r3, r3, 0x338
/* 8133AFB0 | 48 1F 61 99 */	bl OSReceiveMessage
/* 8133AFB4 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 8133AFB8 | 80 1F 00 34 */	lwz r0, 0x34(r31)
/* 8133AFBC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8133AFC0 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8133AFC4 | 90 7F 00 30 */	stw r3, 0x30(r31)
/* 8133AFC8 | 40 82 00 20 */	bne .L_8133AFE8
/* 8133AFCC | 3C 60 81 09 */	lis r3, sBannerSoundPlayer__Q23ipl3snd@ha
/* 8133AFD0 | 80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8133AFD4 | 80 BF 00 2C */	lwz r5, 0x2c(r31)
/* 8133AFD8 | 38 63 9F 68 */	addi r3, r3, sBannerSoundPlayer__Q23ipl3snd@l
/* 8133AFDC | 48 0D 38 25 */	bl start__17BannerSoundPlayerFPvUl
/* 8133AFE0 | 38 00 00 00 */	li r0, 0x0
/* 8133AFE4 | 90 1F 00 34 */	stw r0, 0x34(r31)
.L_8133AFE8:
/* 8133AFE8 | 80 0D A6 6C */	lwz r0, lbl_816986AC@sda21(r0)
/* 8133AFEC | 2C 00 00 04 */	cmpwi r0, 0x4
/* 8133AFF0 | 40 82 00 20 */	bne .L_8133B010
/* 8133AFF4 | 80 6D A6 68 */	lwz r3, lbl_816986A8@sda21(r0)
/* 8133AFF8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133AFFC | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8133B000 | 7D 89 03 A6 */	mtctr r12
/* 8133B004 | 4E 80 04 21 */	bctrl
/* 8133B008 | 38 00 00 00 */	li r0, 0x0
/* 8133B00C | 90 0D A6 6C */	stw r0, lbl_816986AC@sda21(r0)
.L_8133B010:
/* 8133B010 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8133B014 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8133B018 | 7C 08 03 A6 */	mtlr r0
/* 8133B01C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8133B020 | 4E 80 00 20 */	blr
.endfn calc__Q33ipl7channel20ChannelScriptManagerFv

# .text:0x5A4 | 0x8133B024 | size: 0xC
# ipl::channel::ChannelScriptManager::finish()
.fn finish__Q33ipl7channel20ChannelScriptManagerFv, global
/* 8133B024 | 80 6D A6 68 */	lwz r3, lbl_816986A8@sda21(r0)
/* 8133B028 | 38 80 00 00 */	li r4, 0x0
/* 8133B02C | 48 01 EA 30 */	b setCalcFunc__Q33ipl7channel9RsoThreadFPFv_v
.endfn finish__Q33ipl7channel20ChannelScriptManagerFv

# .text:0x5B0 | 0x8133B030 | size: 0x58
# ipl::channel::ChannelScriptManager::destroy()
.fn destroy__Q33ipl7channel20ChannelScriptManagerFv, global
/* 8133B030 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133B034 | 7C 08 02 A6 */	mflr r0
/* 8133B038 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133B03C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133B040 | 7C 7F 1B 78 */	mr r31, r3
/* 8133B044 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8133B048 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133B04C | 41 82 00 14 */	beq .L_8133B060
/* 8133B050 | 7C 03 03 78 */	mr r3, r0
/* 8133B054 | 48 2B D0 99 */	bl __dla__FPv
/* 8133B058 | 38 00 00 00 */	li r0, 0x0
/* 8133B05C | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_8133B060:
/* 8133B060 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 8133B064 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8133B068 | 41 82 00 0C */	beq .L_8133B074
/* 8133B06C | 38 00 00 00 */	li r0, 0x0
/* 8133B070 | 90 1F 00 04 */	stw r0, 0x4(r31)
.L_8133B074:
/* 8133B074 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133B078 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133B07C | 7C 08 03 A6 */	mtlr r0
/* 8133B080 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133B084 | 4E 80 00 20 */	blr
.endfn destroy__Q33ipl7channel20ChannelScriptManagerFv

# .text:0x608 | 0x8133B088 | size: 0x44
# ipl::channel::ChannelScriptManager::setData(const ipl::channel::ChannelScriptManager::CSData&)
.fn setData__Q33ipl7channel20ChannelScriptManagerFRCQ43ipl7channel20ChannelScriptManager6CSData, global
/* 8133B088 | 81 64 00 00 */	lwz r11, 0x0(r4)
/* 8133B08C | 81 44 00 04 */	lwz r10, 0x4(r4)
/* 8133B090 | 81 24 00 08 */	lwz r9, 0x8(r4)
/* 8133B094 | 80 E4 00 10 */	lwz r7, 0x10(r4)
/* 8133B098 | 81 04 00 14 */	lwz r8, 0x14(r4)
/* 8133B09C | 88 C4 00 18 */	lbz r6, 0x18(r4)
/* 8133B0A0 | 88 A4 00 19 */	lbz r5, 0x19(r4)
/* 8133B0A4 | 88 04 00 1A */	lbz r0, 0x1a(r4)
/* 8133B0A8 | 91 63 00 08 */	stw r11, 0x8(r3)
/* 8133B0AC | 91 43 00 0C */	stw r10, 0xc(r3)
/* 8133B0B0 | 91 23 00 10 */	stw r9, 0x10(r3)
/* 8133B0B4 | 91 03 00 1C */	stw r8, 0x1c(r3)
/* 8133B0B8 | 90 E3 00 18 */	stw r7, 0x18(r3)
/* 8133B0BC | 98 C3 00 20 */	stb r6, 0x20(r3)
/* 8133B0C0 | 98 A3 00 21 */	stb r5, 0x21(r3)
/* 8133B0C4 | 98 03 00 22 */	stb r0, 0x22(r3)
/* 8133B0C8 | 4E 80 00 20 */	blr
.endfn setData__Q33ipl7channel20ChannelScriptManagerFRCQ43ipl7channel20ChannelScriptManager6CSData

# .text:0x64C | 0x8133B0CC | size: 0x1C
# ipl::channel::ChannelScriptManager::setAltBannerSound(void*, unsigned long)
.fn setAltBannerSound__Q33ipl7channel20ChannelScriptManagerFPvUl, global
/* 8133B0CC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8133B0D0 | 90 83 00 28 */	stw r4, 0x28(r3)
/* 8133B0D4 | 90 A3 00 2C */	stw r5, 0x2c(r3)
/* 8133B0D8 | 4D 82 00 20 */	beqlr
/* 8133B0DC | 38 00 00 02 */	li r0, 0x2
/* 8133B0E0 | 90 03 00 34 */	stw r0, 0x34(r3)
/* 8133B0E4 | 4E 80 00 20 */	blr
.endfn setAltBannerSound__Q33ipl7channel20ChannelScriptManagerFPvUl

# .text:0x668 | 0x8133B0E8 | size: 0x48
# ipl::channel::ChannelScriptManager::isValidAddr(void*)
.fn isValidAddr__Q33ipl7channel20ChannelScriptManagerFPv, global
/* 8133B0E8 | 80 C3 00 04 */	lwz r6, 0x4(r3)
/* 8133B0EC | 38 00 00 00 */	li r0, 0x0
/* 8133B0F0 | 80 E3 00 08 */	lwz r7, 0x8(r3)
/* 8133B0F4 | 80 A6 00 10 */	lwz r5, 0x10(r6)
/* 8133B0F8 | 7C 06 20 40 */	cmplw r6, r4
/* 8133B0FC | 80 67 00 10 */	lwz r3, 0x10(r7)
/* 8133B100 | 80 A5 00 1C */	lwz r5, 0x1c(r5)
/* 8133B104 | 80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8133B108 | 41 81 00 0C */	bgt .L_8133B114
/* 8133B10C | 7C 04 28 40 */	cmplw r4, r5
/* 8133B110 | 41 80 00 14 */	blt .L_8133B124
.L_8133B114:
/* 8133B114 | 7C 07 20 40 */	cmplw r7, r4
/* 8133B118 | 41 81 00 10 */	bgt .L_8133B128
/* 8133B11C | 7C 04 18 40 */	cmplw r4, r3
/* 8133B120 | 40 80 00 08 */	bge .L_8133B128
.L_8133B124:
/* 8133B124 | 38 00 00 01 */	li r0, 0x1
.L_8133B128:
/* 8133B128 | 7C 03 03 78 */	mr r3, r0
/* 8133B12C | 4E 80 00 20 */	blr
.endfn isValidAddr__Q33ipl7channel20ChannelScriptManagerFPv

# .text:0x6B0 | 0x8133B130 | size: 0x1B4
# ipl::channel::ChannelScriptManager::calcCSThread()
.fn calcCSThread__Q33ipl7channel20ChannelScriptManagerFv, global
/* 8133B130 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8133B134 | 7C 08 02 A6 */	mflr r0
/* 8133B138 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8133B13C | 39 61 00 30 */	addi r11, r1, 0x30
/* 8133B140 | 48 2B E3 7D */	bl _savegpr_26
/* 8133B144 | 3F 80 81 09 */	lis r28, smCSVm__Q33ipl7channel20ChannelScriptManager@ha
/* 8133B148 | 3B CD AD 20 */	li r30, VmSystemWaitForRetraceFlag@sda21
/* 8133B14C | 3B BC 92 E0 */	addi r29, r28, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133B150 | 3B E0 00 02 */	li r31, 0x2
/* 8133B154 | 3B 4D AD 21 */	li r26, VmSystemBeginRenderFlag@sda21
/* 8133B158 | 3B 60 00 01 */	li r27, 0x1
.L_8133B15C:
/* 8133B15C | 38 7C 92 E0 */	addi r3, r28, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133B160 | 38 80 00 01 */	li r4, 0x1
/* 8133B164 | 48 11 B1 F1 */	bl CHANSVmStep
/* 8133B168 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133B16C | 41 82 FF F0 */	beq .L_8133B15C
/* 8133B170 | 2C 03 FC 50 */	cmpwi r3, -0x3b0
/* 8133B174 | 40 82 00 88 */	bne .L_8133B1FC
/* 8133B178 | 80 1D 00 48 */	lwz r0, 0x48(r29)
/* 8133B17C | 7C 00 D0 40 */	cmplw r0, r26
/* 8133B180 | 40 82 00 7C */	bne .L_8133B1FC
/* 8133B184 | 80 0D A6 6C */	lwz r0, lbl_816986AC@sda21(r0)
/* 8133B188 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8133B18C | 40 82 00 38 */	bne .L_8133B1C4
/* 8133B190 | 80 6D A6 68 */	lwz r3, lbl_816986A8@sda21(r0)
/* 8133B194 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8133B198 | 93 ED A6 6C */	stw r31, lbl_816986AC@sda21(r0)
/* 8133B19C | 38 A0 00 01 */	li r5, 0x1
/* 8133B1A0 | 38 63 03 38 */	addi r3, r3, 0x338
/* 8133B1A4 | 93 61 00 08 */	stw r27, 0x8(r1)
/* 8133B1A8 | 48 1F 5E D9 */	bl OSSendMessage
/* 8133B1AC | 80 6D A6 68 */	lwz r3, lbl_816986A8@sda21(r0)
/* 8133B1B0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133B1B4 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8133B1B8 | 7D 89 03 A6 */	mtctr r12
/* 8133B1BC | 4E 80 04 21 */	bctrl
/* 8133B1C0 | 4B FF FF 9C */	b .L_8133B15C
.L_8133B1C4:
/* 8133B1C4 | 3B 80 00 04 */	li r28, 0x4
/* 8133B1C8 | 93 81 00 08 */	stw r28, 0x8(r1)
/* 8133B1CC | 48 1F 56 B9 */	bl OSDisableInterrupts
/* 8133B1D0 | 80 AD A6 68 */	lwz r5, lbl_816986A8@sda21(r0)
/* 8133B1D4 | 30 03 FF FF */	subic r0, r3, 0x1
/* 8133B1D8 | 7F 40 19 10 */	subfe r26, r0, r3
/* 8133B1DC | 38 81 00 08 */	addi r4, r1, 0x8
/* 8133B1E0 | 38 65 03 38 */	addi r3, r5, 0x338
/* 8133B1E4 | 38 A0 00 01 */	li r5, 0x1
/* 8133B1E8 | 48 1F 5E 99 */	bl OSSendMessage
/* 8133B1EC | 93 8D A6 6C */	stw r28, lbl_816986AC@sda21(r0)
/* 8133B1F0 | 7F 43 D3 78 */	mr r3, r26
/* 8133B1F4 | 48 1F 56 B9 */	bl OSRestoreInterrupts
/* 8133B1F8 | 48 00 00 D4 */	b .L_8133B2CC
.L_8133B1FC:
/* 8133B1FC | 2C 03 FC 50 */	cmpwi r3, -0x3b0
/* 8133B200 | 40 82 00 84 */	bne .L_8133B284
/* 8133B204 | 80 1D 00 48 */	lwz r0, 0x48(r29)
/* 8133B208 | 7C 00 F0 40 */	cmplw r0, r30
/* 8133B20C | 40 82 00 78 */	bne .L_8133B284
/* 8133B210 | 80 0D A6 6C */	lwz r0, lbl_816986AC@sda21(r0)
/* 8133B214 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 8133B218 | 40 82 00 34 */	bne .L_8133B24C
/* 8133B21C | 80 6D A6 68 */	lwz r3, lbl_816986A8@sda21(r0)
/* 8133B220 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8133B224 | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 8133B228 | 38 A0 00 01 */	li r5, 0x1
/* 8133B22C | 38 63 03 38 */	addi r3, r3, 0x338
/* 8133B230 | 48 1F 5E 51 */	bl OSSendMessage
/* 8133B234 | 80 6D A6 68 */	lwz r3, lbl_816986A8@sda21(r0)
/* 8133B238 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133B23C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8133B240 | 7D 89 03 A6 */	mtctr r12
/* 8133B244 | 4E 80 04 21 */	bctrl
/* 8133B248 | 4B FF FF 14 */	b .L_8133B15C
.L_8133B24C:
/* 8133B24C | 3B E0 00 04 */	li r31, 0x4
/* 8133B250 | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 8133B254 | 48 1F 56 31 */	bl OSDisableInterrupts
/* 8133B258 | 80 AD A6 68 */	lwz r5, lbl_816986A8@sda21(r0)
/* 8133B25C | 30 03 FF FF */	subic r0, r3, 0x1
/* 8133B260 | 7F 40 19 10 */	subfe r26, r0, r3
/* 8133B264 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8133B268 | 38 65 03 38 */	addi r3, r5, 0x338
/* 8133B26C | 38 A0 00 01 */	li r5, 0x1
/* 8133B270 | 48 1F 5E 11 */	bl OSSendMessage
/* 8133B274 | 93 ED A6 6C */	stw r31, lbl_816986AC@sda21(r0)
/* 8133B278 | 7F 43 D3 78 */	mr r3, r26
/* 8133B27C | 48 1F 56 31 */	bl OSRestoreInterrupts
/* 8133B280 | 48 00 00 4C */	b .L_8133B2CC
.L_8133B284:
/* 8133B284 | 2C 03 FC 19 */	cmpwi r3, -0x3e7
/* 8133B288 | 41 82 00 10 */	beq .L_8133B298
/* 8133B28C | 3C 60 81 09 */	lis r3, smCSVm__Q33ipl7channel20ChannelScriptManager@ha
/* 8133B290 | 38 63 92 E0 */	addi r3, r3, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133B294 | 48 10 F3 D9 */	bl CHANSVmGetSourceLine
.L_8133B298:
/* 8133B298 | 3B E0 00 04 */	li r31, 0x4
/* 8133B29C | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 8133B2A0 | 48 1F 55 E5 */	bl OSDisableInterrupts
/* 8133B2A4 | 80 AD A6 68 */	lwz r5, lbl_816986A8@sda21(r0)
/* 8133B2A8 | 30 03 FF FF */	subic r0, r3, 0x1
/* 8133B2AC | 7F 40 19 10 */	subfe r26, r0, r3
/* 8133B2B0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8133B2B4 | 38 65 03 38 */	addi r3, r5, 0x338
/* 8133B2B8 | 38 A0 00 01 */	li r5, 0x1
/* 8133B2BC | 48 1F 5D C5 */	bl OSSendMessage
/* 8133B2C0 | 93 ED A6 6C */	stw r31, lbl_816986AC@sda21(r0)
/* 8133B2C4 | 7F 43 D3 78 */	mr r3, r26
/* 8133B2C8 | 48 1F 55 E5 */	bl OSRestoreInterrupts
.L_8133B2CC:
/* 8133B2CC | 39 61 00 30 */	addi r11, r1, 0x30
/* 8133B2D0 | 48 2B E2 39 */	bl _restgpr_26
/* 8133B2D4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8133B2D8 | 7C 08 03 A6 */	mtlr r0
/* 8133B2DC | 38 21 00 30 */	addi r1, r1, 0x30
/* 8133B2E0 | 4E 80 00 20 */	blr
.endfn calcCSThread__Q33ipl7channel20ChannelScriptManagerFv

# 0x81634B08..0x81634C90 | size: 0x188
.data
.balign 8

# .data:0x0 | 0x81634B08 | size: 0x188
.obj lbl_81634B08, global
	.string "iplChannelScriptManager.cpp\000CHANSVmSystemMenuInit error\n\000VmLayoutInit error\n\000VmPaneInit error\n\000VmMaterialInit error\n\000VmTextureInit error\n\000VmSaveDataInit error\n\000VmVec3Init error\n\000VmMTX34Init error\n\000VmGXInit error\n\000VmTextWriterInit error\n\000VmFontInit error\n\000VmRectInit error\n\000VmColorInit error\n\000VmColorS10Init error\n\000VmSizeInit error\n\000VmAnimInit error\n\000VmSoundInit error\n\000VmIplImageInit error\n\000"
.endobj lbl_81634B08

# 0x816986A8..0x816986B0 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x816986A8 | size: 0x4
.obj lbl_816986A8, global
	.skip 0x4
.endobj lbl_816986A8

# .sbss:0x4 | 0x816986AC | size: 0x4
.obj lbl_816986AC, global
	.skip 0x4
.endobj lbl_816986AC
