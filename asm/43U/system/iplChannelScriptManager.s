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
/* 8133AA80 00008E80  38 00 00 00 */	li r0, 0x0
/* 8133AA84 00008E84  90 03 00 00 */	stw r0, 0x0(r3)
/* 8133AA88 00008E88  90 03 00 04 */	stw r0, 0x4(r3)
/* 8133AA8C 00008E8C  4E 80 00 20 */	blr
.endfn __ct__Q33ipl7channel20ChannelScriptManagerFv

# .text:0x10 | 0x8133AA90 | size: 0x90
# ipl::channel::ChannelScriptManager::create(EGG::ExpHeap*)
.fn create__Q33ipl7channel20ChannelScriptManagerFPQ23EGG7ExpHeap, global
/* 8133AA90 00008E90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133AA94 00008E94  7C 08 02 A6 */	mflr r0
/* 8133AA98 00008E98  90 01 00 14 */	stw r0, 0x14(r1)
/* 8133AA9C 00008E9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133AAA0 00008EA0  7C 9F 23 78 */	mr r31, r4
/* 8133AAA4 00008EA4  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8133AAA8 00008EA8  7C 7E 1B 78 */	mr r30, r3
/* 8133AAAC 00008EAC  80 03 00 00 */	lwz r0, 0x0(r3)
/* 8133AAB0 00008EB0  2C 00 00 00 */	cmpwi r0, 0x0
/* 8133AAB4 00008EB4  40 82 00 14 */	bne .L_8133AAC8
/* 8133AAB8 00008EB8  3C 60 00 04 */	lis r3, 0x4
/* 8133AABC 00008EBC  38 A0 00 04 */	li r5, 0x4
/* 8133AAC0 00008EC0  48 2B D6 15 */	bl __nwa__FUlPQ23EGG4Heapi
/* 8133AAC4 00008EC4  90 7E 00 00 */	stw r3, 0x0(r30)
.L_8133AAC8:
/* 8133AAC8 00008EC8  80 1E 00 04 */	lwz r0, 0x4(r30)
/* 8133AACC 00008ECC  2C 00 00 00 */	cmpwi r0, 0x0
/* 8133AAD0 00008ED0  40 82 00 08 */	bne .L_8133AAD8
/* 8133AAD4 00008ED4  93 FE 00 04 */	stw r31, 0x4(r30)
.L_8133AAD8:
/* 8133AAD8 00008ED8  38 7E 00 08 */	addi r3, r30, 0x8
/* 8133AADC 00008EDC  38 80 00 00 */	li r4, 0x0
/* 8133AAE0 00008EE0  38 A0 00 20 */	li r5, 0x20
/* 8133AAE4 00008EE4  4B FF 58 51 */	bl memset
/* 8133AAE8 00008EE8  38 7E 00 28 */	addi r3, r30, 0x28
/* 8133AAEC 00008EEC  38 80 00 00 */	li r4, 0x0
/* 8133AAF0 00008EF0  38 A0 00 08 */	li r5, 0x8
/* 8133AAF4 00008EF4  4B FF 58 41 */	bl memset
/* 8133AAF8 00008EF8  38 00 00 00 */	li r0, 0x0
/* 8133AAFC 00008EFC  90 0D A6 6C */	stw r0, lbl_816986AC@sda21(r0)
/* 8133AB00 00008F00  90 1E 00 30 */	stw r0, 0x30(r30)
/* 8133AB04 00008F04  90 1E 00 34 */	stw r0, 0x34(r30)
/* 8133AB08 00008F08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133AB0C 00008F0C  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8133AB10 00008F10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133AB14 00008F14  7C 08 03 A6 */	mtlr r0
/* 8133AB18 00008F18  38 21 00 10 */	addi r1, r1, 0x10
/* 8133AB1C 00008F1C  4E 80 00 20 */	blr
.endfn create__Q33ipl7channel20ChannelScriptManagerFPQ23EGG7ExpHeap

# .text:0xA0 | 0x8133AB20 | size: 0x3D4
# ipl::channel::ChannelScriptManager::init(ipl::nand::File*, ipl::channel::RsoThread*)
.fn init__Q33ipl7channel20ChannelScriptManagerFPQ33ipl4nand4FilePQ33ipl7channel9RsoThread, global
/* 8133AB20 00008F20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133AB24 00008F24  7C 08 02 A6 */	mflr r0
/* 8133AB28 00008F28  90 01 00 24 */	stw r0, 0x24(r1)
/* 8133AB2C 00008F2C  39 61 00 20 */	addi r11, r1, 0x20
/* 8133AB30 00008F30  48 2B E9 95 */	bl _savegpr_28
/* 8133AB34 00008F34  90 AD A6 68 */	stw r5, lbl_816986A8@sda21(r0)
/* 8133AB38 00008F38  7C 7C 1B 78 */	mr r28, r3
/* 8133AB3C 00008F3C  3F C0 81 63 */	lis r30, lbl_81634B08@ha
/* 8133AB40 00008F40  7C 9D 23 78 */	mr r29, r4
/* 8133AB44 00008F44  80 63 00 00 */	lwz r3, 0x0(r3)
/* 8133AB48 00008F48  3B DE 4B 08 */	addi r30, r30, lbl_81634B08@l
/* 8133AB4C 00008F4C  38 80 00 00 */	li r4, 0x0
/* 8133AB50 00008F50  3C A0 00 04 */	lis r5, 0x4
/* 8133AB54 00008F54  4B FF 57 E1 */	bl memset
/* 8133AB58 00008F58  3F E0 81 09 */	lis r31, smCSVm__Q33ipl7channel20ChannelScriptManager@ha
/* 8133AB5C 00008F5C  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 8133AB60 00008F60  38 7F 92 E0 */	addi r3, r31, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133AB64 00008F64  3C A0 00 04 */	lis r5, 0x4
/* 8133AB68 00008F68  48 11 A2 69 */	bl CHANS_81454DD0
/* 8133AB6C 00008F6C  38 7F 92 E0 */	addi r3, r31, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133AB70 00008F70  48 11 D5 E9 */	bl fn_81458158
/* 8133AB74 00008F74  2C 03 00 00 */	cmpwi r3, 0x0
/* 8133AB78 00008F78  40 82 00 18 */	bne .L_8133AB90
/* 8133AB7C 00008F7C  38 7E 00 00 */	addi r3, r30, 0x0
/* 8133AB80 00008F80  38 BE 00 1C */	addi r5, r30, 0x1c
/* 8133AB84 00008F84  38 80 00 65 */	li r4, 0x65
/* 8133AB88 00008F88  4C C6 31 82 */	crclr cr1eq
/* 8133AB8C 00008F8C  48 1F 3B A5 */	bl fn_8152E730
.L_8133AB90:
/* 8133AB90 00008F90  3C 60 81 09 */	lis r3, smCSVm__Q33ipl7channel20ChannelScriptManager@ha
/* 8133AB94 00008F94  38 63 92 E0 */	addi r3, r3, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133AB98 00008F98  48 11 D8 85 */	bl fn_8145841C
/* 8133AB9C 00008F9C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8133ABA0 00008FA0  40 82 00 18 */	bne .L_8133ABB8
/* 8133ABA4 00008FA4  38 7E 00 00 */	addi r3, r30, 0x0
/* 8133ABA8 00008FA8  38 BE 00 39 */	addi r5, r30, 0x39
/* 8133ABAC 00008FAC  38 80 00 69 */	li r4, 0x69
/* 8133ABB0 00008FB0  4C C6 31 82 */	crclr cr1eq
/* 8133ABB4 00008FB4  48 1F 3B 7D */	bl fn_8152E730
.L_8133ABB8:
/* 8133ABB8 00008FB8  3C 60 81 09 */	lis r3, smCSVm__Q33ipl7channel20ChannelScriptManager@ha
/* 8133ABBC 00008FBC  38 63 92 E0 */	addi r3, r3, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133ABC0 00008FC0  48 11 F0 05 */	bl fn_81459BC4
/* 8133ABC4 00008FC4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8133ABC8 00008FC8  40 82 00 18 */	bne .L_8133ABE0
/* 8133ABCC 00008FCC  38 7E 00 00 */	addi r3, r30, 0x0
/* 8133ABD0 00008FD0  38 BE 00 4D */	addi r5, r30, 0x4d
/* 8133ABD4 00008FD4  38 80 00 6D */	li r4, 0x6d
/* 8133ABD8 00008FD8  4C C6 31 82 */	crclr cr1eq
/* 8133ABDC 00008FDC  48 1F 3B 55 */	bl fn_8152E730
.L_8133ABE0:
/* 8133ABE0 00008FE0  3C 60 81 09 */	lis r3, smCSVm__Q33ipl7channel20ChannelScriptManager@ha
/* 8133ABE4 00008FE4  38 63 92 E0 */	addi r3, r3, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133ABE8 00008FE8  48 11 F7 D5 */	bl fn_8145A3BC
/* 8133ABEC 00008FEC  2C 03 00 00 */	cmpwi r3, 0x0
/* 8133ABF0 00008FF0  40 82 00 18 */	bne .L_8133AC08
/* 8133ABF4 00008FF4  38 7E 00 00 */	addi r3, r30, 0x0
/* 8133ABF8 00008FF8  38 BE 00 5F */	addi r5, r30, 0x5f
/* 8133ABFC 00008FFC  38 80 00 71 */	li r4, 0x71
/* 8133AC00 00009000  4C C6 31 82 */	crclr cr1eq
/* 8133AC04 00009004  48 1F 3B 2D */	bl fn_8152E730
.L_8133AC08:
/* 8133AC08 00009008  3C 60 81 09 */	lis r3, smCSVm__Q33ipl7channel20ChannelScriptManager@ha
/* 8133AC0C 0000900C  38 63 92 E0 */	addi r3, r3, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133AC10 00009010  48 11 FC 4D */	bl fn_8145A85C
/* 8133AC14 00009014  2C 03 00 00 */	cmpwi r3, 0x0
/* 8133AC18 00009018  40 82 00 18 */	bne .L_8133AC30
/* 8133AC1C 0000901C  38 7E 00 00 */	addi r3, r30, 0x0
/* 8133AC20 00009020  38 BE 00 75 */	addi r5, r30, 0x75
/* 8133AC24 00009024  38 80 00 75 */	li r4, 0x75
/* 8133AC28 00009028  4C C6 31 82 */	crclr cr1eq
/* 8133AC2C 0000902C  48 1F 3B 05 */	bl fn_8152E730
.L_8133AC30:
/* 8133AC30 00009030  3C 60 81 09 */	lis r3, smCSVm__Q33ipl7channel20ChannelScriptManager@ha
/* 8133AC34 00009034  38 63 92 E0 */	addi r3, r3, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133AC38 00009038  48 12 0F 01 */	bl fn_8145BB38
/* 8133AC3C 0000903C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8133AC40 00009040  40 82 00 18 */	bne .L_8133AC58
/* 8133AC44 00009044  38 7E 00 00 */	addi r3, r30, 0x0
/* 8133AC48 00009048  38 BE 00 8A */	addi r5, r30, 0x8a
/* 8133AC4C 0000904C  38 80 00 79 */	li r4, 0x79
/* 8133AC50 00009050  4C C6 31 82 */	crclr cr1eq
/* 8133AC54 00009054  48 1F 3A DD */	bl fn_8152E730
.L_8133AC58:
/* 8133AC58 00009058  3C 60 81 09 */	lis r3, smCSVm__Q33ipl7channel20ChannelScriptManager@ha
/* 8133AC5C 0000905C  38 63 92 E0 */	addi r3, r3, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133AC60 00009060  48 12 14 69 */	bl fn_8145C0C8
/* 8133AC64 00009064  2C 03 00 00 */	cmpwi r3, 0x0
/* 8133AC68 00009068  40 82 00 18 */	bne .L_8133AC80
/* 8133AC6C 0000906C  38 7E 00 00 */	addi r3, r30, 0x0
/* 8133AC70 00009070  38 BE 00 A0 */	addi r5, r30, 0xa0
/* 8133AC74 00009074  38 80 00 7D */	li r4, 0x7d
/* 8133AC78 00009078  4C C6 31 82 */	crclr cr1eq
/* 8133AC7C 0000907C  48 1F 3A B5 */	bl fn_8152E730
.L_8133AC80:
/* 8133AC80 00009080  3C 60 81 09 */	lis r3, smCSVm__Q33ipl7channel20ChannelScriptManager@ha
/* 8133AC84 00009084  38 63 92 E0 */	addi r3, r3, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133AC88 00009088  48 12 1F 41 */	bl fn_8145CBC8
/* 8133AC8C 0000908C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8133AC90 00009090  40 82 00 18 */	bne .L_8133ACA8
/* 8133AC94 00009094  38 7E 00 00 */	addi r3, r30, 0x0
/* 8133AC98 00009098  38 BE 00 B2 */	addi r5, r30, 0xb2
/* 8133AC9C 0000909C  38 80 00 81 */	li r4, 0x81
/* 8133ACA0 000090A0  4C C6 31 82 */	crclr cr1eq
/* 8133ACA4 000090A4  48 1F 3A 8D */	bl fn_8152E730
.L_8133ACA8:
/* 8133ACA8 000090A8  3C 60 81 09 */	lis r3, smCSVm__Q33ipl7channel20ChannelScriptManager@ha
/* 8133ACAC 000090AC  38 63 92 E0 */	addi r3, r3, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133ACB0 000090B0  48 12 17 39 */	bl fn_8145C3E8
/* 8133ACB4 000090B4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8133ACB8 000090B8  40 82 00 18 */	bne .L_8133ACD0
/* 8133ACBC 000090BC  38 7E 00 00 */	addi r3, r30, 0x0
/* 8133ACC0 000090C0  38 BE 00 C5 */	addi r5, r30, 0xc5
/* 8133ACC4 000090C4  38 80 00 85 */	li r4, 0x85
/* 8133ACC8 000090C8  4C C6 31 82 */	crclr cr1eq
/* 8133ACCC 000090CC  48 1F 3A 65 */	bl fn_8152E730
.L_8133ACD0:
/* 8133ACD0 000090D0  3C 60 81 09 */	lis r3, smCSVm__Q33ipl7channel20ChannelScriptManager@ha
/* 8133ACD4 000090D4  38 63 92 E0 */	addi r3, r3, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133ACD8 000090D8  48 12 24 15 */	bl fn_8145D0EC
/* 8133ACDC 000090DC  2C 03 00 00 */	cmpwi r3, 0x0
/* 8133ACE0 000090E0  40 82 00 18 */	bne .L_8133ACF8
/* 8133ACE4 000090E4  38 7E 00 00 */	addi r3, r30, 0x0
/* 8133ACE8 000090E8  38 BE 00 D5 */	addi r5, r30, 0xd5
/* 8133ACEC 000090EC  38 80 00 89 */	li r4, 0x89
/* 8133ACF0 000090F0  4C C6 31 82 */	crclr cr1eq
/* 8133ACF4 000090F4  48 1F 3A 3D */	bl fn_8152E730
.L_8133ACF8:
/* 8133ACF8 000090F8  3C 60 81 09 */	lis r3, smCSVm__Q33ipl7channel20ChannelScriptManager@ha
/* 8133ACFC 000090FC  38 63 92 E0 */	addi r3, r3, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133AD00 00009100  48 12 24 DD */	bl fn_8145D1DC
/* 8133AD04 00009104  2C 03 00 00 */	cmpwi r3, 0x0
/* 8133AD08 00009108  40 82 00 18 */	bne .L_8133AD20
/* 8133AD0C 0000910C  38 7E 00 00 */	addi r3, r30, 0x0
/* 8133AD10 00009110  38 BE 00 ED */	addi r5, r30, 0xed
/* 8133AD14 00009114  38 80 00 8D */	li r4, 0x8d
/* 8133AD18 00009118  4C C6 31 82 */	crclr cr1eq
/* 8133AD1C 0000911C  48 1F 3A 15 */	bl fn_8152E730
.L_8133AD20:
/* 8133AD20 00009120  3C 60 81 09 */	lis r3, smCSVm__Q33ipl7channel20ChannelScriptManager@ha
/* 8133AD24 00009124  38 63 92 E0 */	addi r3, r3, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133AD28 00009128  48 12 28 5D */	bl fn_8145D584
/* 8133AD2C 0000912C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8133AD30 00009130  40 82 00 18 */	bne .L_8133AD48
/* 8133AD34 00009134  38 7E 00 00 */	addi r3, r30, 0x0
/* 8133AD38 00009138  38 BE 00 FF */	addi r5, r30, 0xff
/* 8133AD3C 0000913C  38 80 00 91 */	li r4, 0x91
/* 8133AD40 00009140  4C C6 31 82 */	crclr cr1eq
/* 8133AD44 00009144  48 1F 39 ED */	bl fn_8152E730
.L_8133AD48:
/* 8133AD48 00009148  3C 60 81 09 */	lis r3, smCSVm__Q33ipl7channel20ChannelScriptManager@ha
/* 8133AD4C 0000914C  38 63 92 E0 */	addi r3, r3, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133AD50 00009150  48 12 2A 59 */	bl fn_8145D7A8
/* 8133AD54 00009154  2C 03 00 00 */	cmpwi r3, 0x0
/* 8133AD58 00009158  40 82 00 18 */	bne .L_8133AD70
/* 8133AD5C 0000915C  38 7E 00 00 */	addi r3, r30, 0x0
/* 8133AD60 00009160  38 BE 01 11 */	addi r5, r30, 0x111
/* 8133AD64 00009164  38 80 00 95 */	li r4, 0x95
/* 8133AD68 00009168  4C C6 31 82 */	crclr cr1eq
/* 8133AD6C 0000916C  48 1F 39 C5 */	bl fn_8152E730
.L_8133AD70:
/* 8133AD70 00009170  3C 60 81 09 */	lis r3, smCSVm__Q33ipl7channel20ChannelScriptManager@ha
/* 8133AD74 00009174  38 63 92 E0 */	addi r3, r3, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133AD78 00009178  48 12 30 59 */	bl fn_8145DDD0
/* 8133AD7C 0000917C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8133AD80 00009180  40 82 00 18 */	bne .L_8133AD98
/* 8133AD84 00009184  38 7E 00 00 */	addi r3, r30, 0x0
/* 8133AD88 00009188  38 BE 01 24 */	addi r5, r30, 0x124
/* 8133AD8C 0000918C  38 80 00 99 */	li r4, 0x99
/* 8133AD90 00009190  4C C6 31 82 */	crclr cr1eq
/* 8133AD94 00009194  48 1F 39 9D */	bl fn_8152E730
.L_8133AD98:
/* 8133AD98 00009198  3C 60 81 09 */	lis r3, smCSVm__Q33ipl7channel20ChannelScriptManager@ha
/* 8133AD9C 0000919C  38 63 92 E0 */	addi r3, r3, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133ADA0 000091A0  48 12 35 AD */	bl fn_8145E34C
/* 8133ADA4 000091A4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8133ADA8 000091A8  40 82 00 18 */	bne .L_8133ADC0
/* 8133ADAC 000091AC  38 7E 00 00 */	addi r3, r30, 0x0
/* 8133ADB0 000091B0  38 BE 01 3A */	addi r5, r30, 0x13a
/* 8133ADB4 000091B4  38 80 00 9D */	li r4, 0x9d
/* 8133ADB8 000091B8  4C C6 31 82 */	crclr cr1eq
/* 8133ADBC 000091BC  48 1F 39 75 */	bl fn_8152E730
.L_8133ADC0:
/* 8133ADC0 000091C0  3C 60 81 09 */	lis r3, smCSVm__Q33ipl7channel20ChannelScriptManager@ha
/* 8133ADC4 000091C4  38 63 92 E0 */	addi r3, r3, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133ADC8 000091C8  48 12 3F C5 */	bl fn_8145ED8C
/* 8133ADCC 000091CC  2C 03 00 00 */	cmpwi r3, 0x0
/* 8133ADD0 000091D0  40 82 00 18 */	bne .L_8133ADE8
/* 8133ADD4 000091D4  38 7E 00 00 */	addi r3, r30, 0x0
/* 8133ADD8 000091D8  38 BE 01 4C */	addi r5, r30, 0x14c
/* 8133ADDC 000091DC  38 80 00 A1 */	li r4, 0xa1
/* 8133ADE0 000091E0  4C C6 31 82 */	crclr cr1eq
/* 8133ADE4 000091E4  48 1F 39 4D */	bl fn_8152E730
.L_8133ADE8:
/* 8133ADE8 000091E8  3C 60 81 09 */	lis r3, smCSVm__Q33ipl7channel20ChannelScriptManager@ha
/* 8133ADEC 000091EC  38 63 92 E0 */	addi r3, r3, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133ADF0 000091F0  48 12 41 25 */	bl fn_8145EF14
/* 8133ADF4 000091F4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8133ADF8 000091F8  40 82 00 18 */	bne .L_8133AE10
/* 8133ADFC 000091FC  38 7E 00 00 */	addi r3, r30, 0x0
/* 8133AE00 00009200  38 BE 01 5E */	addi r5, r30, 0x15e
/* 8133AE04 00009204  38 80 00 A5 */	li r4, 0xa5
/* 8133AE08 00009208  4C C6 31 82 */	crclr cr1eq
/* 8133AE0C 0000920C  48 1F 39 25 */	bl fn_8152E730
.L_8133AE10:
/* 8133AE10 00009210  3C 60 81 09 */	lis r3, smCSVm__Q33ipl7channel20ChannelScriptManager@ha
/* 8133AE14 00009214  38 63 92 E0 */	addi r3, r3, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133AE18 00009218  48 12 41 8D */	bl fn_8145EFA4
/* 8133AE1C 0000921C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8133AE20 00009220  40 82 00 18 */	bne .L_8133AE38
/* 8133AE24 00009224  38 7E 00 00 */	addi r3, r30, 0x0
/* 8133AE28 00009228  38 BE 01 71 */	addi r5, r30, 0x171
/* 8133AE2C 0000922C  38 80 00 A9 */	li r4, 0xa9
/* 8133AE30 00009230  4C C6 31 82 */	crclr cr1eq
/* 8133AE34 00009234  48 1F 38 FD */	bl fn_8152E730
.L_8133AE38:
/* 8133AE38 00009238  3F E0 81 09 */	lis r31, smCSVm__Q33ipl7channel20ChannelScriptManager@ha
/* 8133AE3C 0000923C  38 7F 92 E0 */	addi r3, r31, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133AE40 00009240  48 11 A3 59 */	bl CHANSVmGetFreeExeSize
/* 8133AE44 00009244  80 1D 00 98 */	lwz r0, 0x98(r29)
/* 8133AE48 00009248  7C 00 18 40 */	cmplw r0, r3
/* 8133AE4C 0000924C  40 81 00 0C */	ble .L_8133AE58
/* 8133AE50 00009250  38 60 00 00 */	li r3, 0x0
/* 8133AE54 00009254  48 00 00 88 */	b .L_8133AEDC
.L_8133AE58:
/* 8133AE58 00009258  38 7F 92 E0 */	addi r3, r31, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133AE5C 0000925C  48 11 A3 11 */	bl CHANSVmGetFreeExeBufp
/* 8133AE60 00009260  2C 03 00 00 */	cmpwi r3, 0x0
/* 8133AE64 00009264  40 82 00 0C */	bne .L_8133AE70
/* 8133AE68 00009268  38 60 00 00 */	li r3, 0x0
/* 8133AE6C 0000926C  48 00 00 70 */	b .L_8133AEDC
.L_8133AE70:
/* 8133AE70 00009270  80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 8133AE74 00009274  80 BD 00 98 */	lwz r5, 0x98(r29)
/* 8133AE78 00009278  4B FF 53 B9 */	bl memcpy
/* 8133AE7C 0000927C  38 7F 92 E0 */	addi r3, r31, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133AE80 00009280  38 80 00 01 */	li r4, 0x1
/* 8133AE84 00009284  38 A0 00 00 */	li r5, 0x0
/* 8133AE88 00009288  48 11 A3 39 */	bl CHANSVmAddExe
/* 8133AE8C 0000928C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8133AE90 00009290  41 82 00 0C */	beq .L_8133AE9C
/* 8133AE94 00009294  38 60 00 00 */	li r3, 0x0
/* 8133AE98 00009298  48 00 00 44 */	b .L_8133AEDC
.L_8133AE9C:
/* 8133AE9C 0000929C  38 7F 92 E0 */	addi r3, r31, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133AEA0 000092A0  38 80 00 01 */	li r4, 0x1
/* 8133AEA4 000092A4  48 11 AB BD */	bl CHANSVmLinkModules
/* 8133AEA8 000092A8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8133AEAC 000092AC  41 82 00 0C */	beq .L_8133AEB8
/* 8133AEB0 000092B0  38 60 00 00 */	li r3, 0x0
/* 8133AEB4 000092B4  48 00 00 28 */	b .L_8133AEDC
.L_8133AEB8:
/* 8133AEB8 000092B8  3C 80 81 34 */	lis r4, calcCSThread__Q33ipl7channel20ChannelScriptManagerFv@ha
/* 8133AEBC 000092BC  80 6D A6 68 */	lwz r3, lbl_816986A8@sda21(r0)
/* 8133AEC0 000092C0  38 84 B1 30 */	addi r4, r4, calcCSThread__Q33ipl7channel20ChannelScriptManagerFv@l
/* 8133AEC4 000092C4  48 01 EB 99 */	bl setCalcFunc__Q33ipl7channel9RsoThreadFPFv_v
/* 8133AEC8 000092C8  80 6D A6 68 */	lwz r3, lbl_816986A8@sda21(r0)
/* 8133AECC 000092CC  48 01 EB 15 */	bl start__Q33ipl7channel9RsoThreadFv
/* 8133AED0 000092D0  38 00 00 01 */	li r0, 0x1
/* 8133AED4 000092D4  38 60 00 01 */	li r3, 0x1
/* 8133AED8 000092D8  90 0D A6 6C */	stw r0, lbl_816986AC@sda21(r0)
.L_8133AEDC:
/* 8133AEDC 000092DC  39 61 00 20 */	addi r11, r1, 0x20
/* 8133AEE0 000092E0  48 2B E6 31 */	bl _restgpr_28
/* 8133AEE4 000092E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8133AEE8 000092E8  7C 08 03 A6 */	mtlr r0
/* 8133AEEC 000092EC  38 21 00 20 */	addi r1, r1, 0x20
/* 8133AEF0 000092F0  4E 80 00 20 */	blr
.endfn init__Q33ipl7channel20ChannelScriptManagerFPQ33ipl4nand4FilePQ33ipl7channel9RsoThread

# .text:0x474 | 0x8133AEF4 | size: 0x130
# ipl::channel::ChannelScriptManager::calc()
.fn calc__Q33ipl7channel20ChannelScriptManagerFv, global
/* 8133AEF4 000092F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133AEF8 000092F8  7C 08 02 A6 */	mflr r0
/* 8133AEFC 000092FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8133AF00 00009300  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8133AF04 00009304  7C 7F 1B 78 */	mr r31, r3
/* 8133AF08 00009308  80 0D A6 6C */	lwz r0, lbl_816986AC@sda21(r0)
/* 8133AF0C 0000930C  2C 00 00 02 */	cmpwi r0, 0x2
/* 8133AF10 00009310  40 82 00 64 */	bne .L_8133AF74
/* 8133AF14 00009314  80 6D A6 68 */	lwz r3, lbl_816986A8@sda21(r0)
/* 8133AF18 00009318  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133AF1C 0000931C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8133AF20 00009320  7D 89 03 A6 */	mtctr r12
/* 8133AF24 00009324  4E 80 04 21 */	bctrl
/* 8133AF28 00009328  2C 03 00 00 */	cmpwi r3, 0x0
/* 8133AF2C 0000932C  41 82 00 48 */	beq .L_8133AF74
/* 8133AF30 00009330  80 6D A6 68 */	lwz r3, lbl_816986A8@sda21(r0)
/* 8133AF34 00009334  38 81 00 08 */	addi r4, r1, 0x8
/* 8133AF38 00009338  38 A0 00 00 */	li r5, 0x0
/* 8133AF3C 0000933C  38 63 03 38 */	addi r3, r3, 0x338
/* 8133AF40 00009340  48 1F 62 09 */	bl OSReceiveMessage
/* 8133AF44 00009344  80 61 00 08 */	lwz r3, 0x8(r1)
/* 8133AF48 00009348  80 03 00 00 */	lwz r0, 0x0(r3)
/* 8133AF4C 0000934C  2C 00 00 01 */	cmpwi r0, 0x1
/* 8133AF50 00009350  90 1F 00 30 */	stw r0, 0x30(r31)
/* 8133AF54 00009354  40 82 00 20 */	bne .L_8133AF74
/* 8133AF58 00009358  38 00 00 03 */	li r0, 0x3
/* 8133AF5C 0000935C  80 6D A6 68 */	lwz r3, lbl_816986A8@sda21(r0)
/* 8133AF60 00009360  90 0D A6 6C */	stw r0, lbl_816986AC@sda21(r0)
/* 8133AF64 00009364  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133AF68 00009368  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8133AF6C 0000936C  7D 89 03 A6 */	mtctr r12
/* 8133AF70 00009370  4E 80 04 21 */	bctrl
.L_8133AF74:
/* 8133AF74 00009374  80 0D A6 6C */	lwz r0, lbl_816986AC@sda21(r0)
/* 8133AF78 00009378  2C 00 00 03 */	cmpwi r0, 0x3
/* 8133AF7C 0000937C  40 82 00 6C */	bne .L_8133AFE8
/* 8133AF80 00009380  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8133AF84 00009384  2C 00 00 02 */	cmpwi r0, 0x2
/* 8133AF88 00009388  40 82 00 18 */	bne .L_8133AFA0
/* 8133AF8C 0000938C  80 6D A6 68 */	lwz r3, lbl_816986A8@sda21(r0)
/* 8133AF90 00009390  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133AF94 00009394  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8133AF98 00009398  7D 89 03 A6 */	mtctr r12
/* 8133AF9C 0000939C  4E 80 04 21 */	bctrl
.L_8133AFA0:
/* 8133AFA0 000093A0  80 6D A6 68 */	lwz r3, lbl_816986A8@sda21(r0)
/* 8133AFA4 000093A4  38 81 00 08 */	addi r4, r1, 0x8
/* 8133AFA8 000093A8  38 A0 00 01 */	li r5, 0x1
/* 8133AFAC 000093AC  38 63 03 38 */	addi r3, r3, 0x338
/* 8133AFB0 000093B0  48 1F 61 99 */	bl OSReceiveMessage
/* 8133AFB4 000093B4  80 61 00 08 */	lwz r3, 0x8(r1)
/* 8133AFB8 000093B8  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 8133AFBC 000093BC  80 63 00 00 */	lwz r3, 0x0(r3)
/* 8133AFC0 000093C0  2C 00 00 02 */	cmpwi r0, 0x2
/* 8133AFC4 000093C4  90 7F 00 30 */	stw r3, 0x30(r31)
/* 8133AFC8 000093C8  40 82 00 20 */	bne .L_8133AFE8
/* 8133AFCC 000093CC  3C 60 81 09 */	lis r3, sBannerSoundPlayer__Q23ipl3snd@ha
/* 8133AFD0 000093D0  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8133AFD4 000093D4  80 BF 00 2C */	lwz r5, 0x2c(r31)
/* 8133AFD8 000093D8  38 63 9F 68 */	addi r3, r3, sBannerSoundPlayer__Q23ipl3snd@l
/* 8133AFDC 000093DC  48 0D 38 25 */	bl fn_8140E800
/* 8133AFE0 000093E0  38 00 00 00 */	li r0, 0x0
/* 8133AFE4 000093E4  90 1F 00 34 */	stw r0, 0x34(r31)
.L_8133AFE8:
/* 8133AFE8 000093E8  80 0D A6 6C */	lwz r0, lbl_816986AC@sda21(r0)
/* 8133AFEC 000093EC  2C 00 00 04 */	cmpwi r0, 0x4
/* 8133AFF0 000093F0  40 82 00 20 */	bne .L_8133B010
/* 8133AFF4 000093F4  80 6D A6 68 */	lwz r3, lbl_816986A8@sda21(r0)
/* 8133AFF8 000093F8  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133AFFC 000093FC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8133B000 00009400  7D 89 03 A6 */	mtctr r12
/* 8133B004 00009404  4E 80 04 21 */	bctrl
/* 8133B008 00009408  38 00 00 00 */	li r0, 0x0
/* 8133B00C 0000940C  90 0D A6 6C */	stw r0, lbl_816986AC@sda21(r0)
.L_8133B010:
/* 8133B010 00009410  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8133B014 00009414  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8133B018 00009418  7C 08 03 A6 */	mtlr r0
/* 8133B01C 0000941C  38 21 00 20 */	addi r1, r1, 0x20
/* 8133B020 00009420  4E 80 00 20 */	blr
.endfn calc__Q33ipl7channel20ChannelScriptManagerFv

# .text:0x5A4 | 0x8133B024 | size: 0xC
# ipl::channel::ChannelScriptManager::finish()
.fn finish__Q33ipl7channel20ChannelScriptManagerFv, global
/* 8133B024 00009424  80 6D A6 68 */	lwz r3, lbl_816986A8@sda21(r0)
/* 8133B028 00009428  38 80 00 00 */	li r4, 0x0
/* 8133B02C 0000942C  48 01 EA 30 */	b setCalcFunc__Q33ipl7channel9RsoThreadFPFv_v
.endfn finish__Q33ipl7channel20ChannelScriptManagerFv

# .text:0x5B0 | 0x8133B030 | size: 0x58
# ipl::channel::ChannelScriptManager::destroy()
.fn destroy__Q33ipl7channel20ChannelScriptManagerFv, global
/* 8133B030 00009430  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133B034 00009434  7C 08 02 A6 */	mflr r0
/* 8133B038 00009438  90 01 00 14 */	stw r0, 0x14(r1)
/* 8133B03C 0000943C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133B040 00009440  7C 7F 1B 78 */	mr r31, r3
/* 8133B044 00009444  80 03 00 00 */	lwz r0, 0x0(r3)
/* 8133B048 00009448  2C 00 00 00 */	cmpwi r0, 0x0
/* 8133B04C 0000944C  41 82 00 14 */	beq .L_8133B060
/* 8133B050 00009450  7C 03 03 78 */	mr r3, r0
/* 8133B054 00009454  48 2B D0 99 */	bl __dla__FPv
/* 8133B058 00009458  38 00 00 00 */	li r0, 0x0
/* 8133B05C 0000945C  90 1F 00 00 */	stw r0, 0x0(r31)
.L_8133B060:
/* 8133B060 00009460  80 1F 00 04 */	lwz r0, 0x4(r31)
/* 8133B064 00009464  2C 00 00 00 */	cmpwi r0, 0x0
/* 8133B068 00009468  41 82 00 0C */	beq .L_8133B074
/* 8133B06C 0000946C  38 00 00 00 */	li r0, 0x0
/* 8133B070 00009470  90 1F 00 04 */	stw r0, 0x4(r31)
.L_8133B074:
/* 8133B074 00009474  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133B078 00009478  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133B07C 0000947C  7C 08 03 A6 */	mtlr r0
/* 8133B080 00009480  38 21 00 10 */	addi r1, r1, 0x10
/* 8133B084 00009484  4E 80 00 20 */	blr
.endfn destroy__Q33ipl7channel20ChannelScriptManagerFv

# .text:0x608 | 0x8133B088 | size: 0x44
# ipl::channel::ChannelScriptManager::setData(const ipl::channel::ChannelScriptManager::CSData&)
.fn setData__Q33ipl7channel20ChannelScriptManagerFRCQ43ipl7channel20ChannelScriptManager6CSData, global
/* 8133B088 00009488  81 64 00 00 */	lwz r11, 0x0(r4)
/* 8133B08C 0000948C  81 44 00 04 */	lwz r10, 0x4(r4)
/* 8133B090 00009490  81 24 00 08 */	lwz r9, 0x8(r4)
/* 8133B094 00009494  80 E4 00 10 */	lwz r7, 0x10(r4)
/* 8133B098 00009498  81 04 00 14 */	lwz r8, 0x14(r4)
/* 8133B09C 0000949C  88 C4 00 18 */	lbz r6, 0x18(r4)
/* 8133B0A0 000094A0  88 A4 00 19 */	lbz r5, 0x19(r4)
/* 8133B0A4 000094A4  88 04 00 1A */	lbz r0, 0x1a(r4)
/* 8133B0A8 000094A8  91 63 00 08 */	stw r11, 0x8(r3)
/* 8133B0AC 000094AC  91 43 00 0C */	stw r10, 0xc(r3)
/* 8133B0B0 000094B0  91 23 00 10 */	stw r9, 0x10(r3)
/* 8133B0B4 000094B4  91 03 00 1C */	stw r8, 0x1c(r3)
/* 8133B0B8 000094B8  90 E3 00 18 */	stw r7, 0x18(r3)
/* 8133B0BC 000094BC  98 C3 00 20 */	stb r6, 0x20(r3)
/* 8133B0C0 000094C0  98 A3 00 21 */	stb r5, 0x21(r3)
/* 8133B0C4 000094C4  98 03 00 22 */	stb r0, 0x22(r3)
/* 8133B0C8 000094C8  4E 80 00 20 */	blr
.endfn setData__Q33ipl7channel20ChannelScriptManagerFRCQ43ipl7channel20ChannelScriptManager6CSData

# .text:0x64C | 0x8133B0CC | size: 0x1C
# ipl::channel::ChannelScriptManager::setAltBannerSound(void*, unsigned long)
.fn setAltBannerSound__Q33ipl7channel20ChannelScriptManagerFPvUl, global
/* 8133B0CC 000094CC  2C 04 00 00 */	cmpwi r4, 0x0
/* 8133B0D0 000094D0  90 83 00 28 */	stw r4, 0x28(r3)
/* 8133B0D4 000094D4  90 A3 00 2C */	stw r5, 0x2c(r3)
/* 8133B0D8 000094D8  4D 82 00 20 */	beqlr
/* 8133B0DC 000094DC  38 00 00 02 */	li r0, 0x2
/* 8133B0E0 000094E0  90 03 00 34 */	stw r0, 0x34(r3)
/* 8133B0E4 000094E4  4E 80 00 20 */	blr
.endfn setAltBannerSound__Q33ipl7channel20ChannelScriptManagerFPvUl

# .text:0x668 | 0x8133B0E8 | size: 0x48
# ipl::channel::ChannelScriptManager::isValidAddr(void*)
.fn isValidAddr__Q33ipl7channel20ChannelScriptManagerFPv, global
/* 8133B0E8 000094E8  80 C3 00 04 */	lwz r6, 0x4(r3)
/* 8133B0EC 000094EC  38 00 00 00 */	li r0, 0x0
/* 8133B0F0 000094F0  80 E3 00 08 */	lwz r7, 0x8(r3)
/* 8133B0F4 000094F4  80 A6 00 10 */	lwz r5, 0x10(r6)
/* 8133B0F8 000094F8  7C 06 20 40 */	cmplw r6, r4
/* 8133B0FC 000094FC  80 67 00 10 */	lwz r3, 0x10(r7)
/* 8133B100 00009500  80 A5 00 1C */	lwz r5, 0x1c(r5)
/* 8133B104 00009504  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8133B108 00009508  41 81 00 0C */	bgt .L_8133B114
/* 8133B10C 0000950C  7C 04 28 40 */	cmplw r4, r5
/* 8133B110 00009510  41 80 00 14 */	blt .L_8133B124
.L_8133B114:
/* 8133B114 00009514  7C 07 20 40 */	cmplw r7, r4
/* 8133B118 00009518  41 81 00 10 */	bgt .L_8133B128
/* 8133B11C 0000951C  7C 04 18 40 */	cmplw r4, r3
/* 8133B120 00009520  40 80 00 08 */	bge .L_8133B128
.L_8133B124:
/* 8133B124 00009524  38 00 00 01 */	li r0, 0x1
.L_8133B128:
/* 8133B128 00009528  7C 03 03 78 */	mr r3, r0
/* 8133B12C 0000952C  4E 80 00 20 */	blr
.endfn isValidAddr__Q33ipl7channel20ChannelScriptManagerFPv

# .text:0x6B0 | 0x8133B130 | size: 0x1B4
# ipl::channel::ChannelScriptManager::calcCSThread()
.fn calcCSThread__Q33ipl7channel20ChannelScriptManagerFv, global
/* 8133B130 00009530  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8133B134 00009534  7C 08 02 A6 */	mflr r0
/* 8133B138 00009538  90 01 00 34 */	stw r0, 0x34(r1)
/* 8133B13C 0000953C  39 61 00 30 */	addi r11, r1, 0x30
/* 8133B140 00009540  48 2B E3 7D */	bl _savegpr_26
/* 8133B144 00009544  3F 80 81 09 */	lis r28, smCSVm__Q33ipl7channel20ChannelScriptManager@ha
/* 8133B148 00009548  3B CD AD 20 */	li r30, lbl_81698D60@sda21
/* 8133B14C 0000954C  3B BC 92 E0 */	addi r29, r28, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133B150 00009550  3B E0 00 02 */	li r31, 0x2
/* 8133B154 00009554  3B 4D AD 21 */	li r26, lbl_81698D61@sda21
/* 8133B158 00009558  3B 60 00 01 */	li r27, 0x1
.L_8133B15C:
/* 8133B15C 0000955C  38 7C 92 E0 */	addi r3, r28, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133B160 00009560  38 80 00 01 */	li r4, 0x1
/* 8133B164 00009564  48 11 B1 F1 */	bl CHANSVmStep
/* 8133B168 00009568  2C 03 00 00 */	cmpwi r3, 0x0
/* 8133B16C 0000956C  41 82 FF F0 */	beq .L_8133B15C
/* 8133B170 00009570  2C 03 FC 50 */	cmpwi r3, -0x3b0
/* 8133B174 00009574  40 82 00 88 */	bne .L_8133B1FC
/* 8133B178 00009578  80 1D 00 48 */	lwz r0, 0x48(r29)
/* 8133B17C 0000957C  7C 00 D0 40 */	cmplw r0, r26
/* 8133B180 00009580  40 82 00 7C */	bne .L_8133B1FC
/* 8133B184 00009584  80 0D A6 6C */	lwz r0, lbl_816986AC@sda21(r0)
/* 8133B188 00009588  2C 00 00 01 */	cmpwi r0, 0x1
/* 8133B18C 0000958C  40 82 00 38 */	bne .L_8133B1C4
/* 8133B190 00009590  80 6D A6 68 */	lwz r3, lbl_816986A8@sda21(r0)
/* 8133B194 00009594  38 81 00 08 */	addi r4, r1, 0x8
/* 8133B198 00009598  93 ED A6 6C */	stw r31, lbl_816986AC@sda21(r0)
/* 8133B19C 0000959C  38 A0 00 01 */	li r5, 0x1
/* 8133B1A0 000095A0  38 63 03 38 */	addi r3, r3, 0x338
/* 8133B1A4 000095A4  93 61 00 08 */	stw r27, 0x8(r1)
/* 8133B1A8 000095A8  48 1F 5E D9 */	bl OSSendMessage
/* 8133B1AC 000095AC  80 6D A6 68 */	lwz r3, lbl_816986A8@sda21(r0)
/* 8133B1B0 000095B0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133B1B4 000095B4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8133B1B8 000095B8  7D 89 03 A6 */	mtctr r12
/* 8133B1BC 000095BC  4E 80 04 21 */	bctrl
/* 8133B1C0 000095C0  4B FF FF 9C */	b .L_8133B15C
.L_8133B1C4:
/* 8133B1C4 000095C4  3B 80 00 04 */	li r28, 0x4
/* 8133B1C8 000095C8  93 81 00 08 */	stw r28, 0x8(r1)
/* 8133B1CC 000095CC  48 1F 56 B9 */	bl OSDisableInterrupts
/* 8133B1D0 000095D0  80 AD A6 68 */	lwz r5, lbl_816986A8@sda21(r0)
/* 8133B1D4 000095D4  30 03 FF FF */	subic r0, r3, 0x1
/* 8133B1D8 000095D8  7F 40 19 10 */	subfe r26, r0, r3
/* 8133B1DC 000095DC  38 81 00 08 */	addi r4, r1, 0x8
/* 8133B1E0 000095E0  38 65 03 38 */	addi r3, r5, 0x338
/* 8133B1E4 000095E4  38 A0 00 01 */	li r5, 0x1
/* 8133B1E8 000095E8  48 1F 5E 99 */	bl OSSendMessage
/* 8133B1EC 000095EC  93 8D A6 6C */	stw r28, lbl_816986AC@sda21(r0)
/* 8133B1F0 000095F0  7F 43 D3 78 */	mr r3, r26
/* 8133B1F4 000095F4  48 1F 56 B9 */	bl OSRestoreInterrupts
/* 8133B1F8 000095F8  48 00 00 D4 */	b .L_8133B2CC
.L_8133B1FC:
/* 8133B1FC 000095FC  2C 03 FC 50 */	cmpwi r3, -0x3b0
/* 8133B200 00009600  40 82 00 84 */	bne .L_8133B284
/* 8133B204 00009604  80 1D 00 48 */	lwz r0, 0x48(r29)
/* 8133B208 00009608  7C 00 F0 40 */	cmplw r0, r30
/* 8133B20C 0000960C  40 82 00 78 */	bne .L_8133B284
/* 8133B210 00009610  80 0D A6 6C */	lwz r0, lbl_816986AC@sda21(r0)
/* 8133B214 00009614  2C 00 00 03 */	cmpwi r0, 0x3
/* 8133B218 00009618  40 82 00 34 */	bne .L_8133B24C
/* 8133B21C 0000961C  80 6D A6 68 */	lwz r3, lbl_816986A8@sda21(r0)
/* 8133B220 00009620  38 81 00 08 */	addi r4, r1, 0x8
/* 8133B224 00009624  93 E1 00 08 */	stw r31, 0x8(r1)
/* 8133B228 00009628  38 A0 00 01 */	li r5, 0x1
/* 8133B22C 0000962C  38 63 03 38 */	addi r3, r3, 0x338
/* 8133B230 00009630  48 1F 5E 51 */	bl OSSendMessage
/* 8133B234 00009634  80 6D A6 68 */	lwz r3, lbl_816986A8@sda21(r0)
/* 8133B238 00009638  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8133B23C 0000963C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8133B240 00009640  7D 89 03 A6 */	mtctr r12
/* 8133B244 00009644  4E 80 04 21 */	bctrl
/* 8133B248 00009648  4B FF FF 14 */	b .L_8133B15C
.L_8133B24C:
/* 8133B24C 0000964C  3B E0 00 04 */	li r31, 0x4
/* 8133B250 00009650  93 E1 00 08 */	stw r31, 0x8(r1)
/* 8133B254 00009654  48 1F 56 31 */	bl OSDisableInterrupts
/* 8133B258 00009658  80 AD A6 68 */	lwz r5, lbl_816986A8@sda21(r0)
/* 8133B25C 0000965C  30 03 FF FF */	subic r0, r3, 0x1
/* 8133B260 00009660  7F 40 19 10 */	subfe r26, r0, r3
/* 8133B264 00009664  38 81 00 08 */	addi r4, r1, 0x8
/* 8133B268 00009668  38 65 03 38 */	addi r3, r5, 0x338
/* 8133B26C 0000966C  38 A0 00 01 */	li r5, 0x1
/* 8133B270 00009670  48 1F 5E 11 */	bl OSSendMessage
/* 8133B274 00009674  93 ED A6 6C */	stw r31, lbl_816986AC@sda21(r0)
/* 8133B278 00009678  7F 43 D3 78 */	mr r3, r26
/* 8133B27C 0000967C  48 1F 56 31 */	bl OSRestoreInterrupts
/* 8133B280 00009680  48 00 00 4C */	b .L_8133B2CC
.L_8133B284:
/* 8133B284 00009684  2C 03 FC 19 */	cmpwi r3, -0x3e7
/* 8133B288 00009688  41 82 00 10 */	beq .L_8133B298
/* 8133B28C 0000968C  3C 60 81 09 */	lis r3, smCSVm__Q33ipl7channel20ChannelScriptManager@ha
/* 8133B290 00009690  38 63 92 E0 */	addi r3, r3, smCSVm__Q33ipl7channel20ChannelScriptManager@l
/* 8133B294 00009694  48 10 F3 D9 */	bl CHANSVmGetSourceLine
.L_8133B298:
/* 8133B298 00009698  3B E0 00 04 */	li r31, 0x4
/* 8133B29C 0000969C  93 E1 00 08 */	stw r31, 0x8(r1)
/* 8133B2A0 000096A0  48 1F 55 E5 */	bl OSDisableInterrupts
/* 8133B2A4 000096A4  80 AD A6 68 */	lwz r5, lbl_816986A8@sda21(r0)
/* 8133B2A8 000096A8  30 03 FF FF */	subic r0, r3, 0x1
/* 8133B2AC 000096AC  7F 40 19 10 */	subfe r26, r0, r3
/* 8133B2B0 000096B0  38 81 00 08 */	addi r4, r1, 0x8
/* 8133B2B4 000096B4  38 65 03 38 */	addi r3, r5, 0x338
/* 8133B2B8 000096B8  38 A0 00 01 */	li r5, 0x1
/* 8133B2BC 000096BC  48 1F 5D C5 */	bl OSSendMessage
/* 8133B2C0 000096C0  93 ED A6 6C */	stw r31, lbl_816986AC@sda21(r0)
/* 8133B2C4 000096C4  7F 43 D3 78 */	mr r3, r26
/* 8133B2C8 000096C8  48 1F 55 E5 */	bl OSRestoreInterrupts
.L_8133B2CC:
/* 8133B2CC 000096CC  39 61 00 30 */	addi r11, r1, 0x30
/* 8133B2D0 000096D0  48 2B E2 39 */	bl _restgpr_26
/* 8133B2D4 000096D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8133B2D8 000096D8  7C 08 03 A6 */	mtlr r0
/* 8133B2DC 000096DC  38 21 00 30 */	addi r1, r1, 0x30
/* 8133B2E0 000096E0  4E 80 00 20 */	blr
.endfn calcCSThread__Q33ipl7channel20ChannelScriptManagerFv

# 0x81634B08..0x81634CD8 | size: 0x1D0
.data
.balign 8

# .data:0x0 | 0x81634B08 | size: 0x188
.obj lbl_81634B08, global
	.4byte 0x69706C43
	.4byte 0x68616E6E
	.4byte 0x656C5363
	.4byte 0x72697074
	.4byte 0x4D616E61
	.4byte 0x6765722E
	.4byte 0x63707000
	.4byte 0x4348414E
	.4byte 0x53566D53
	.4byte 0x79737465
	.4byte 0x6D4D656E
	.4byte 0x75496E69
	.4byte 0x74206572
	.4byte 0x726F720A
	.4byte 0x00566D4C
	.4byte 0x61796F75
	.4byte 0x74496E69
	.4byte 0x74206572
	.4byte 0x726F720A
	.4byte 0x00566D50
	.4byte 0x616E6549
	.4byte 0x6E697420
	.4byte 0x6572726F
	.4byte 0x720A0056
	.4byte 0x6D4D6174
	.4byte 0x65726961
	.4byte 0x6C496E69
	.4byte 0x74206572
	.4byte 0x726F720A
	.4byte 0x00566D54
	.4byte 0x65787475
	.4byte 0x7265496E
	.4byte 0x69742065
	.4byte 0x72726F72
	.4byte 0x0A00566D
	.4byte 0x53617665
	.4byte 0x44617461
	.4byte 0x496E6974
	.4byte 0x20657272
	.4byte 0x6F720A00
	.4byte 0x566D5665
	.4byte 0x6333496E
	.4byte 0x69742065
	.4byte 0x72726F72
	.4byte 0x0A00566D
	.4byte 0x4D545833
	.4byte 0x34496E69
	.4byte 0x74206572
	.4byte 0x726F720A
	.4byte 0x00566D47
	.4byte 0x58496E69
	.4byte 0x74206572
	.4byte 0x726F720A
	.4byte 0x00566D54
	.4byte 0x65787457
	.4byte 0x72697465
	.4byte 0x72496E69
	.4byte 0x74206572
	.4byte 0x726F720A
	.4byte 0x00566D46
	.4byte 0x6F6E7449
	.4byte 0x6E697420
	.4byte 0x6572726F
	.4byte 0x720A0056
	.4byte 0x6D526563
	.4byte 0x74496E69
	.4byte 0x74206572
	.4byte 0x726F720A
	.4byte 0x00566D43
	.4byte 0x6F6C6F72
	.4byte 0x496E6974
	.4byte 0x20657272
	.4byte 0x6F720A00
	.4byte 0x566D436F
	.4byte 0x6C6F7253
	.4byte 0x3130496E
	.4byte 0x69742065
	.4byte 0x72726F72
	.4byte 0x0A00566D
	.4byte 0x53697A65
	.4byte 0x496E6974
	.4byte 0x20657272
	.4byte 0x6F720A00
	.4byte 0x566D416E
	.4byte 0x696D496E
	.4byte 0x69742065
	.4byte 0x72726F72
	.4byte 0x0A00566D
	.4byte 0x536F756E
	.4byte 0x64496E69
	.4byte 0x74206572
	.4byte 0x726F720A
	.4byte 0x00566D49
	.4byte 0x706C496D
	.4byte 0x61676549
	.4byte 0x6E697420
	.4byte 0x6572726F
	.4byte 0x720A0000
.endobj lbl_81634B08

# .data:0x188 | 0x81634C90 | size: 0xC
.obj lbl_81634C90, global
	.string "iplNand.cpp"
.endobj lbl_81634C90

# .data:0x194 | 0x81634C9C | size: 0xC
.obj lbl_81634C9C, global
	.4byte 0x2F636F6D
	.4byte 0x6D6F6E2F
	.4byte 0x00000000
.endobj lbl_81634C9C

# .data:0x1A0 | 0x81634CA8 | size: 0x30
.obj jumptable_81634CA8, global
	.4byte nand_error_handling__Q33ipl4nand4FileFi+0x70
	.4byte nand_error_handling__Q33ipl4nand4FileFi+0xAC
	.4byte nand_error_handling__Q33ipl4nand4FileFi+0xAC
	.4byte nand_error_handling__Q33ipl4nand4FileFi+0x58
	.4byte nand_error_handling__Q33ipl4nand4FileFi+0x64
	.4byte nand_error_handling__Q33ipl4nand4FileFi+0xAC
	.4byte nand_error_handling__Q33ipl4nand4FileFi+0x64
	.4byte nand_error_handling__Q33ipl4nand4FileFi+0xAC
	.4byte nand_error_handling__Q33ipl4nand4FileFi+0xAC
	.4byte nand_error_handling__Q33ipl4nand4FileFi+0x50
	.4byte nand_error_handling__Q33ipl4nand4FileFi+0x70
	.4byte nand_error_handling__Q33ipl4nand4FileFi+0x7C
.endobj jumptable_81634CA8

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
