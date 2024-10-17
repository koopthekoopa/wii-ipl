.include "macros.inc"
.file "iplCSGX.cpp"

# 0x8145C3E8..0x8145C528 | size: 0x140
.text
.balign 4

# .text:0x0 | 0x8145C3E8 | size: 0x70
# ipl::cs::gx::init(CHANSVm*)
.fn init__Q33ipl2cs2gxFP7CHANSVm, global
/* 8145C3E8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8145C3EC | 7C 08 02 A6 */	mflr r0
/* 8145C3F0 | 38 8D 98 A0 */	li r4, lbl_816978E0@sda21
/* 8145C3F4 | 38 A0 00 00 */	li r5, 0x0
/* 8145C3F8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8145C3FC | 38 C0 00 00 */	li r6, 0x0
/* 8145C400 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8145C404 | 3B E0 00 00 */	li r31, 0x0
/* 8145C408 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8145C40C | 7C 7E 1B 78 */	mr r30, r3
/* 8145C410 | 4B FF 04 C5 */	bl CHANSVmAddNativeClass
/* 8145C414 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145C418 | 7C 64 1B 78 */	mr r4, r3
/* 8145C41C | 41 82 00 20 */	beq .L_8145C43C
/* 8145C420 | 3C A0 81 61 */	lis r5, scPropertyList__Q33ipl2cs2gx@ha
/* 8145C424 | 7F C3 F3 78 */	mr r3, r30
/* 8145C428 | 38 C0 00 0B */	li r6, 0xb
/* 8145C42C | 38 A5 76 10 */	addi r5, r5, scPropertyList__Q33ipl2cs2gx@l
/* 8145C430 | 4B FF 08 29 */	bl CHANSVmAddNativePropertyAccessorsList
/* 8145C434 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145C438 | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145C43C:
/* 8145C43C | 7F E3 FB 78 */	mr r3, r31
/* 8145C440 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8145C444 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8145C448 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8145C44C | 7C 08 03 A6 */	mtlr r0
/* 8145C450 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8145C454 | 4E 80 00 20 */	blr
.endfn init__Q33ipl2cs2gxFP7CHANSVm

# .text:0x70 | 0x8145C458 | size: 0x34
# int ipl::cs::util::get_int<4>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "get_int<4>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 8145C458 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8145C45C | 7C 08 02 A6 */	mflr r0
/* 8145C460 | 7C A4 2B 78 */	mr r4, r5
/* 8145C464 | 38 C0 00 04 */	li r6, 0x4
/* 8145C468 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8145C46C | 38 A0 00 00 */	li r5, 0x0
/* 8145C470 | 4B FE F5 29 */	bl CHANSVmSetInteger
/* 8145C474 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145C478 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8145C47C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8145C480 | 7C 08 03 A6 */	mtlr r0
/* 8145C484 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8145C488 | 4E 80 00 20 */	blr
.endfn "get_int<4>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# .text:0xA4 | 0x8145C48C | size: 0x34
# int ipl::cs::util::get_int<5>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "get_int<5>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 8145C48C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8145C490 | 7C 08 02 A6 */	mflr r0
/* 8145C494 | 7C A4 2B 78 */	mr r4, r5
/* 8145C498 | 38 C0 00 05 */	li r6, 0x5
/* 8145C49C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8145C4A0 | 38 A0 00 00 */	li r5, 0x0
/* 8145C4A4 | 4B FE F4 F5 */	bl CHANSVmSetInteger
/* 8145C4A8 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145C4AC | 54 03 D9 7E */	srwi r3, r0, 5
/* 8145C4B0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8145C4B4 | 7C 08 03 A6 */	mtlr r0
/* 8145C4B8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8145C4BC | 4E 80 00 20 */	blr
.endfn "get_int<5>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# .text:0xD8 | 0x8145C4C0 | size: 0x34
# int ipl::cs::util::get_int<6>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "get_int<6>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 8145C4C0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8145C4C4 | 7C 08 02 A6 */	mflr r0
/* 8145C4C8 | 7C A4 2B 78 */	mr r4, r5
/* 8145C4CC | 38 C0 00 06 */	li r6, 0x6
/* 8145C4D0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8145C4D4 | 38 A0 00 00 */	li r5, 0x0
/* 8145C4D8 | 4B FE F4 C1 */	bl CHANSVmSetInteger
/* 8145C4DC | 7C 60 00 34 */	cntlzw r0, r3
/* 8145C4E0 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8145C4E4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8145C4E8 | 7C 08 03 A6 */	mtlr r0
/* 8145C4EC | 38 21 00 10 */	addi r1, r1, 0x10
/* 8145C4F0 | 4E 80 00 20 */	blr
.endfn "get_int<6>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# .text:0x10C | 0x8145C4F4 | size: 0x34
# int ipl::cs::util::get_int<14>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "get_int<14>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 8145C4F4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8145C4F8 | 7C 08 02 A6 */	mflr r0
/* 8145C4FC | 7C A4 2B 78 */	mr r4, r5
/* 8145C500 | 38 C0 00 0E */	li r6, 0xe
/* 8145C504 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8145C508 | 38 A0 00 00 */	li r5, 0x0
/* 8145C50C | 4B FE F4 8D */	bl CHANSVmSetInteger
/* 8145C510 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145C514 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8145C518 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8145C51C | 7C 08 03 A6 */	mtlr r0
/* 8145C520 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8145C524 | 4E 80 00 20 */	blr
.endfn "get_int<14>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# 0x81617610..0x81617698 | size: 0x88
.rodata
.balign 8

# .rodata:0x0 | 0x81617610 | size: 0x84
# ipl::cs::gx::scPropertyList
.obj scPropertyList__Q33ipl2cs2gx, local
	.4byte lbl_8166A860
	.4byte "get_int<0>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte 0x00000000
	.4byte lbl_8166A86A
	.4byte "get_int<2>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte 0x00000000
	.4byte lbl_8166A875
	.4byte "get_int<1>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte 0x00000000
	.4byte lbl_8166A87F
	.4byte "get_int<3>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte 0x00000000
	.4byte lbl_8166A88A
	.4byte "get_int<4>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte 0x00000000
	.4byte lbl_8166A898
	.4byte "get_int<5>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte 0x00000000
	.4byte lbl_8166A8A6
	.4byte "get_int<6>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte 0x00000000
	.4byte lbl_8166A8B3
	.4byte "get_int<14>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte 0x00000000
	.4byte lbl_8166A8BF
	.4byte "get_int<0>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte 0x00000000
	.4byte lbl_8166A8C9
	.4byte "get_int<1>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte 0x00000000
	.4byte lbl_8166A8D4
	.4byte "get_int<2>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte 0x00000000
.endobj scPropertyList__Q33ipl2cs2gx

# .rodata:0x84 | 0x81617694 | size: 0x4
.obj gap_07_81617694_rodata, global
.hidden gap_07_81617694_rodata
	.4byte 0x00000000
.endobj gap_07_81617694_rodata

# 0x8166A860..0x8166A8E0 | size: 0x80
.data
.balign 8

# .data:0x0 | 0x8166A860 | size: 0xA
.obj lbl_8166A860, global
	.string "*GX_TF_I4"
.endobj lbl_8166A860

# .data:0xA | 0x8166A86A | size: 0xB
.obj lbl_8166A86A, global
	.string "*GX_TF_IA4"
.endobj lbl_8166A86A

# .data:0x15 | 0x8166A875 | size: 0xA
.obj lbl_8166A875, global
	.string "*GX_TF_I8"
.endobj lbl_8166A875

# .data:0x1F | 0x8166A87F | size: 0xB
.obj lbl_8166A87F, global
	.string "*GX_TF_IA8"
.endobj lbl_8166A87F

# .data:0x2A | 0x8166A88A | size: 0xE
.obj lbl_8166A88A, global
	.string "*GX_TF_RGB565"
.endobj lbl_8166A88A

# .data:0x38 | 0x8166A898 | size: 0xE
.obj lbl_8166A898, global
	.string "*GX_TF_RGB5A3"
.endobj lbl_8166A898

# .data:0x46 | 0x8166A8A6 | size: 0xD
.obj lbl_8166A8A6, global
	.string "*GX_TF_RGBA8"
.endobj lbl_8166A8A6

# .data:0x53 | 0x8166A8B3 | size: 0xC
.obj lbl_8166A8B3, global
	.string "*GX_TF_CMPR"
.endobj lbl_8166A8B3

# .data:0x5F | 0x8166A8BF | size: 0xA
.obj lbl_8166A8BF, global
	.string "*GX_CLAMP"
.endobj lbl_8166A8BF

# .data:0x69 | 0x8166A8C9 | size: 0xB
.obj lbl_8166A8C9, global
	.string "*GX_REPEAT"
.endobj lbl_8166A8C9

# .data:0x74 | 0x8166A8D4 | size: 0xC
.obj lbl_8166A8D4, global
	.string "*GX_MIRROR\000"
.endobj lbl_8166A8D4

# 0x816978E0..0x816978E8 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x816978E0 | size: 0x3
.obj lbl_816978E0, global
	.string "GX"
.endobj lbl_816978E0

# .sdata:0x3 | 0x816978E3 | size: 0x5
.obj gap_11_816978E3_sdata, global
.hidden gap_11_816978E3_sdata
	.4byte 0x00000000
	.byte 0x00
.endobj gap_11_816978E3_sdata
