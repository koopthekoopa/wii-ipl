.include "macros.inc"
.file "zi8etzx.c"

# 0x8145EFD4..0x8145F07C | size: 0xA8
.text
.balign 4

# .text:0x0 | 0x8145EFD4 | size: 0x4
.fn EZTXGetGlobalDataSize, global
/* 8145EFD4 | 48 01 B6 60 */	b Zi8GetGlobalDataSize
.endfn EZTXGetGlobalDataSize

# .text:0x4 | 0x8145EFD8 | size: 0x50
.fn EZTXInitialize, global
/* 8145EFD8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8145EFDC | 7C 08 02 A6 */	mflr r0
/* 8145EFE0 | 3C A0 81 67 */	lis r5, lbl_8166AA20@ha
/* 8145EFE4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8145EFE8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8145EFEC | 7C 9F 23 78 */	mr r31, r4
/* 8145EFF0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8145EFF4 | 7C 7E 1B 78 */	mr r30, r3
/* 8145EFF8 | 80 65 AA 20 */	lwz r3, lbl_8166AA20@l(r5)
/* 8145EFFC | 48 0C D7 DD */	bl OSRegisterVersion
/* 8145F000 | 7F C3 F3 78 */	mr r3, r30
/* 8145F004 | 7F E4 FB 78 */	mr r4, r31
/* 8145F008 | 48 01 D7 BD */	bl Zi8InitializeDynamic
/* 8145F00C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8145F010 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8145F014 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8145F018 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8145F01C | 7C 08 03 A6 */	mtlr r0
/* 8145F020 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8145F024 | 4E 80 00 20 */	blr
.endfn EZTXInitialize

# .text:0x54 | 0x8145F028 | size: 0x24
.fn EZTXSetLatinSearchOrder, global
/* 8145F028 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8145F02C | 7C 08 02 A6 */	mflr r0
/* 8145F030 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8145F034 | 48 01 B5 C5 */	bl Zi8SetLatinSearchOrder
/* 8145F038 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8145F03C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8145F040 | 7C 08 03 A6 */	mtlr r0
/* 8145F044 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8145F048 | 4E 80 00 20 */	blr
.endfn EZTXSetLatinSearchOrder

# .text:0x78 | 0x8145F04C | size: 0x4
.fn EZTXGetCandidates, global
/* 8145F04C | 48 01 B4 E4 */	b Zi8GetCandidates
.endfn EZTXGetCandidates

# .text:0x7C | 0x8145F050 | size: 0x4
.fn EZTXCopy, global
/* 8145F050 | 48 01 A1 8C */	b Zi8CopyW
.endfn EZTXCopy

# .text:0x80 | 0x8145F054 | size: 0x4
.fn EZTXAttachOEMDict, global
/* 8145F054 | 48 02 5C D8 */	b Zi8AttachOEMdata
.endfn EZTXAttachOEMDict

# .text:0x84 | 0x8145F058 | size: 0x24
.fn EZTXDetachOEMDict, global
/* 8145F058 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8145F05C | 7C 08 02 A6 */	mflr r0
/* 8145F060 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8145F064 | 48 02 5D 29 */	bl Zi8DetachOEMdata
/* 8145F068 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8145F06C | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8145F070 | 7C 08 03 A6 */	mtlr r0
/* 8145F074 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8145F078 | 4E 80 00 20 */	blr
.endfn EZTXDetachOEMDict

# 0x816178B0..0x81617900 | size: 0x50
.rodata
.balign 8

# .rodata:0x0 | 0x816178B0 | size: 0x50
.obj lbl_816178B0, global
	.4byte 0x3C3C2052
	.4byte 0x564C5F4D
	.4byte 0x574D202D
	.4byte 0x205A495F
	.4byte 0x455A4954
	.4byte 0x45585420
	.4byte 0x0972656C
	.4byte 0x65617365
	.4byte 0x20627569
	.4byte 0x6C643A20
	.4byte 0x4A616E20
	.4byte 0x31352032
	.4byte 0x30303820
	.4byte 0x31383A35
	.4byte 0x393A3530
	.4byte 0x20283078
	.4byte 0x34313939
	.4byte 0x5F363038
	.4byte 0x33312920
	.4byte 0x3E3E0000
.endobj lbl_816178B0

# 0x8166AA20..0x8166AA58 | size: 0x38
.data
.balign 8

# .data:0x0 | 0x8166AA20 | size: 0x8
.obj lbl_8166AA20, global
	.4byte lbl_816178B0
	.4byte 0x00000000
.endobj lbl_8166AA20

# .data:0x8 | 0x8166AA28 | size: 0x2C
.obj jumptable_8166AA28, global
	.4byte Zi8Get1KeyPressCandidates+0x3D8
	.4byte Zi8Get1KeyPressCandidates+0x3C0
	.4byte Zi8Get1KeyPressCandidates+0x3FC
	.4byte Zi8Get1KeyPressCandidates+0x3CC
	.4byte Zi8Get1KeyPressCandidates+0x408
	.4byte Zi8Get1KeyPressCandidates+0x3F0
	.4byte Zi8Get1KeyPressCandidates+0x3E4
	.4byte Zi8Get1KeyPressCandidates+0x414
	.4byte Zi8Get1KeyPressCandidates+0x438
	.4byte Zi8Get1KeyPressCandidates+0x42C
	.4byte Zi8Get1KeyPressCandidates+0x420
.endobj jumptable_8166AA28

# .data:0x34 | 0x8166AA54 | size: 0x4
.obj gap_08_8166AA54_data, global
.hidden gap_08_8166AA54_data
	.4byte 0x00000000
.endobj gap_08_8166AA54_data
