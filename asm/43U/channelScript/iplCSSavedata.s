.include "macros.inc"
.file "iplCSSavedata.cpp"

# 0x8145A894..0x8145BF60 | size: 0x16CC
.text
.balign 4

# .text:0x0 | 0x8145A894 | size: 0x80
# ipl::cs::savedata::get_fullpath(char*, const char*)
.fn get_fullpath__Q33ipl2cs8savedataFPcPCc, global
/* 8145A894 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8145A898 | 7C 08 02 A6 */	mflr r0
/* 8145A89C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8145A8A0 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 8145A8A4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8145A8A8 | 7C 7F 1B 78 */	mr r31, r3
/* 8145A8AC | 2C 00 00 2F */	cmpwi r0, 0x2f
/* 8145A8B0 | 41 82 00 40 */	beq .L_8145A8F0
/* 8145A8B4 | 3C C0 81 09 */	lis r6, smArg__Q23ipl6System@ha
/* 8145A8B8 | 3C A0 81 67 */	lis r5, lbl_8166A798@ha
/* 8145A8BC | 38 C6 90 08 */	addi r6, r6, smArg__Q23ipl6System@l
/* 8145A8C0 | 7C 88 23 78 */	mr r8, r4
/* 8145A8C4 | 80 C6 00 88 */	lwz r6, 0x88(r6)
/* 8145A8C8 | 38 00 FF FF */	li r0, -0x1
/* 8145A8CC | 38 A5 A7 98 */	addi r5, r5, lbl_8166A798@l
/* 8145A8D0 | 38 80 00 40 */	li r4, 0x40
/* 8145A8D4 | 80 E6 00 18 */	lwz r7, 0x18(r6)
/* 8145A8D8 | 81 26 00 1C */	lwz r9, 0x1c(r6)
/* 8145A8DC | 7C E6 00 38 */	and r6, r7, r0
/* 8145A8E0 | 7D 27 00 38 */	and r7, r9, r0
/* 8145A8E4 | 4C C6 31 82 */	crclr cr1eq
/* 8145A8E8 | 48 1A 60 C1 */	bl snprintf
/* 8145A8EC | 48 00 00 0C */	b .L_8145A8F8
.L_8145A8F0:
/* 8145A8F0 | 38 A0 00 40 */	li r5, 0x40
/* 8145A8F4 | 48 1A 7A D1 */	bl strncpy
.L_8145A8F8:
/* 8145A8F8 | 38 00 00 00 */	li r0, 0x0
/* 8145A8FC | 98 1F 00 40 */	stb r0, 0x40(r31)
/* 8145A900 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8145A904 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8145A908 | 7C 08 03 A6 */	mtlr r0
/* 8145A90C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8145A910 | 4E 80 00 20 */	blr
.endfn get_fullpath__Q33ipl2cs8savedataFPcPCc

# .text:0x80 | 0x8145A914 | size: 0x14
# ipl::cs::savedata::load_to_work(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn load_to_work__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145A914 | 3C C0 81 09 */	lis r6, smArg__Q23ipl6System@ha
/* 8145A918 | 38 C6 90 08 */	addi r6, r6, smArg__Q23ipl6System@l
/* 8145A91C | 80 C6 00 88 */	lwz r6, 0x88(r6)
/* 8145A920 | 80 C6 00 04 */	lwz r6, 0x4(r6)
/* 8145A924 | 48 00 00 18 */	b load___Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdrPQ23EGG4Heap
.endfn load_to_work__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x94 | 0x8145A928 | size: 0x14
# ipl::cs::savedata::load_to_heap(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn load_to_heap__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145A928 | 3C C0 81 09 */	lis r6, smArg__Q23ipl6System@ha
/* 8145A92C | 38 C6 90 08 */	addi r6, r6, smArg__Q23ipl6System@l
/* 8145A930 | 80 C6 00 88 */	lwz r6, 0x88(r6)
/* 8145A934 | 80 C6 00 08 */	lwz r6, 0x8(r6)
/* 8145A938 | 48 00 00 04 */	b load___Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdrPQ23EGG4Heap
.endfn load_to_heap__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0xA8 | 0x8145A93C | size: 0x140
# ipl::cs::savedata::load_(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*, EGG::Heap*)
.fn load___Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdrPQ23EGG4Heap, global
/* 8145A93C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8145A940 | 7C 08 02 A6 */	mflr r0
/* 8145A944 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8145A948 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8145A94C | 48 19 EB 6D */	bl _savegpr_25
/* 8145A950 | 7C 99 23 78 */	mr r25, r4
/* 8145A954 | 7C 7E 1B 78 */	mr r30, r3
/* 8145A958 | 7C BF 2B 78 */	mr r31, r5
/* 8145A95C | 7C DA 33 78 */	mr r26, r6
/* 8145A960 | 7F 23 CB 78 */	mr r3, r25
/* 8145A964 | 3B 80 00 00 */	li r28, 0x0
/* 8145A968 | 3B 60 00 02 */	li r27, 0x2
/* 8145A96C | 48 00 1B BD */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145A970 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145A974 | 41 82 00 D4 */	beq .L_8145AA48
/* 8145A978 | 7F C3 F3 78 */	mr r3, r30
/* 8145A97C | 38 80 00 00 */	li r4, 0x0
/* 8145A980 | 4B FF 1D 41 */	bl CHANSVmGetArgInteger
/* 8145A984 | 7C 7D 1B 78 */	mr r29, r3
/* 8145A988 | 7F C3 F3 78 */	mr r3, r30
/* 8145A98C | 38 80 00 01 */	li r4, 0x1
/* 8145A990 | 4B FF 1D 31 */	bl CHANSVmGetArgInteger
/* 8145A994 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8145A998 | 41 82 00 0C */	beq .L_8145A9A4
/* 8145A99C | 80 DD 00 04 */	lwz r6, 0x4(r29)
/* 8145A9A0 | 48 00 00 08 */	b .L_8145A9A8
.L_8145A9A4:
/* 8145A9A4 | 38 C0 00 00 */	li r6, 0x0
.L_8145A9A8:
/* 8145A9A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145A9AC | 41 82 00 0C */	beq .L_8145A9B8
/* 8145A9B0 | 80 E3 00 04 */	lwz r7, 0x4(r3)
/* 8145A9B4 | 48 00 00 08 */	b .L_8145A9BC
.L_8145A9B8:
/* 8145A9B8 | 38 E0 00 00 */	li r7, 0x0
.L_8145A9BC:
/* 8145A9BC | 80 79 00 00 */	lwz r3, 0x0(r25)
/* 8145A9C0 | 83 A3 00 00 */	lwz r29, 0x0(r3)
/* 8145A9C4 | 80 1D 00 88 */	lwz r0, 0x88(r29)
/* 8145A9C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8145A9CC | 40 82 00 7C */	bne .L_8145AA48
/* 8145A9D0 | 80 1D 00 8C */	lwz r0, 0x8c(r29)
/* 8145A9D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8145A9D8 | 40 82 00 70 */	bne .L_8145AA48
/* 8145A9DC | 88 1D 00 00 */	lbz r0, 0x0(r29)
/* 8145A9E0 | 7C 00 07 75 */	extsb. r0, r0
/* 8145A9E4 | 40 82 00 1C */	bne .L_8145AA00
/* 8145A9E8 | 7F C3 F3 78 */	mr r3, r30
/* 8145A9EC | 7F A4 EB 78 */	mr r4, r29
/* 8145A9F0 | 7F 45 D3 78 */	mr r5, r26
/* 8145A9F4 | 39 00 00 20 */	li r8, 0x20
/* 8145A9F8 | 48 00 02 59 */	bl load_nand___Q33ipl2cs8savedataFP7CHANSVmPQ43ipl2cs8savedata4dataPQ23EGG4HeaplUli
/* 8145A9FC | 48 00 00 18 */	b .L_8145AA14
.L_8145AA00:
/* 8145AA00 | 7F C3 F3 78 */	mr r3, r30
/* 8145AA04 | 7F A4 EB 78 */	mr r4, r29
/* 8145AA08 | 7F 45 D3 78 */	mr r5, r26
/* 8145AA0C | 39 00 00 20 */	li r8, 0x20
/* 8145AA10 | 48 00 03 A5 */	bl load_vf___Q33ipl2cs8savedataFP7CHANSVmPQ43ipl2cs8savedata4dataPQ23EGG4HeaplUli
.L_8145AA14:
/* 8145AA14 | 38 83 FF FE */	subi r4, r3, 0x2
/* 8145AA18 | 7C 7B 1B 78 */	mr r27, r3
/* 8145AA1C | 30 04 FF FF */	subic r0, r4, 0x1
/* 8145AA20 | 7F 80 21 11 */	subfe. r28, r0, r4
/* 8145AA24 | 41 82 00 24 */	beq .L_8145AA48
/* 8145AA28 | 80 1D 00 88 */	lwz r0, 0x88(r29)
/* 8145AA2C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8145AA30 | 40 82 00 10 */	bne .L_8145AA40
/* 8145AA34 | 80 1D 00 8C */	lwz r0, 0x8c(r29)
/* 8145AA38 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8145AA3C | 41 82 00 0C */	beq .L_8145AA48
.L_8145AA40:
/* 8145AA40 | 38 00 00 00 */	li r0, 0x0
/* 8145AA44 | 98 1D 00 84 */	stb r0, 0x84(r29)
.L_8145AA48:
/* 8145AA48 | 7F 60 00 34 */	cntlzw r0, r27
/* 8145AA4C | 7F C3 F3 78 */	mr r3, r30
/* 8145AA50 | 7F E4 FB 78 */	mr r4, r31
/* 8145AA54 | 38 A0 00 00 */	li r5, 0x0
/* 8145AA58 | 54 06 D9 7E */	srwi r6, r0, 5
/* 8145AA5C | 4B FF 0F 3D */	bl CHANSVmSetInteger
/* 8145AA60 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8145AA64 | 7F 83 E3 78 */	mr r3, r28
/* 8145AA68 | 48 19 EA 9D */	bl _restgpr_25
/* 8145AA6C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8145AA70 | 7C 08 03 A6 */	mtlr r0
/* 8145AA74 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8145AA78 | 4E 80 00 20 */	blr
.endfn load___Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdrPQ23EGG4Heap

# .text:0x1E8 | 0x8145AA7C | size: 0x14
# ipl::cs::savedata::uncomp_to_work(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn uncomp_to_work__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145AA7C | 3C C0 81 09 */	lis r6, smArg__Q23ipl6System@ha
/* 8145AA80 | 38 C6 90 08 */	addi r6, r6, smArg__Q23ipl6System@l
/* 8145AA84 | 80 C6 00 88 */	lwz r6, 0x88(r6)
/* 8145AA88 | 80 C6 00 04 */	lwz r6, 0x4(r6)
/* 8145AA8C | 48 00 00 18 */	b uncompress___Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdrPQ23EGG4Heap
.endfn uncomp_to_work__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x1FC | 0x8145AA90 | size: 0x14
# ipl::cs::savedata::uncomp_to_heap(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn uncomp_to_heap__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145AA90 | 3C C0 81 09 */	lis r6, smArg__Q23ipl6System@ha
/* 8145AA94 | 38 C6 90 08 */	addi r6, r6, smArg__Q23ipl6System@l
/* 8145AA98 | 80 C6 00 88 */	lwz r6, 0x88(r6)
/* 8145AA9C | 80 C6 00 08 */	lwz r6, 0x8(r6)
/* 8145AAA0 | 48 00 00 04 */	b uncompress___Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdrPQ23EGG4Heap
.endfn uncomp_to_heap__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x210 | 0x8145AAA4 | size: 0x1AC
# ipl::cs::savedata::uncompress_(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*, EGG::Heap*)
.fn uncompress___Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdrPQ23EGG4Heap, global
/* 8145AAA4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8145AAA8 | 7C 08 02 A6 */	mflr r0
/* 8145AAAC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8145AAB0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8145AAB4 | 48 19 E9 FD */	bl _savegpr_23
/* 8145AAB8 | 7C 97 23 78 */	mr r23, r4
/* 8145AABC | 7C 7D 1B 78 */	mr r29, r3
/* 8145AAC0 | 7C BE 2B 78 */	mr r30, r5
/* 8145AAC4 | 7C DF 33 78 */	mr r31, r6
/* 8145AAC8 | 7E E3 BB 78 */	mr r3, r23
/* 8145AACC | 3B 80 00 00 */	li r28, 0x0
/* 8145AAD0 | 3B 60 00 02 */	li r27, 0x2
/* 8145AAD4 | 48 00 1A 55 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145AAD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145AADC | 41 82 01 58 */	beq .L_8145AC34
/* 8145AAE0 | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 8145AAE4 | 83 43 00 00 */	lwz r26, 0x0(r3)
/* 8145AAE8 | 80 1A 00 88 */	lwz r0, 0x88(r26)
/* 8145AAEC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8145AAF0 | 40 82 01 2C */	bne .L_8145AC1C
/* 8145AAF4 | 80 1A 00 8C */	lwz r0, 0x8c(r26)
/* 8145AAF8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8145AAFC | 40 82 01 20 */	bne .L_8145AC1C
/* 8145AB00 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8145AB04 | 7F A3 EB 78 */	mr r3, r29
/* 8145AB08 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8145AB0C | 3B 20 FF FF */	li r25, -0x1
/* 8145AB10 | 80 84 00 88 */	lwz r4, 0x88(r4)
/* 8145AB14 | 3B 00 00 00 */	li r24, 0x0
/* 8145AB18 | 3A E0 00 00 */	li r23, 0x0
/* 8145AB1C | 83 64 00 04 */	lwz r27, 0x4(r4)
/* 8145AB20 | 4B FF 1B 65 */	bl CHANSVmGetArgc
/* 8145AB24 | 7C 7C 1B 78 */	mr r28, r3
/* 8145AB28 | 7F A3 EB 78 */	mr r3, r29
/* 8145AB2C | 38 80 00 00 */	li r4, 0x0
/* 8145AB30 | 4B FF 1B 91 */	bl CHANSVmGetArgInteger
/* 8145AB34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145AB38 | 41 82 00 08 */	beq .L_8145AB40
/* 8145AB3C | 83 23 00 04 */	lwz r25, 0x4(r3)
.L_8145AB40:
/* 8145AB40 | 28 1C 00 03 */	cmplwi r28, 0x3
/* 8145AB44 | 40 82 00 38 */	bne .L_8145AB7C
/* 8145AB48 | 7F A3 EB 78 */	mr r3, r29
/* 8145AB4C | 38 80 00 01 */	li r4, 0x1
/* 8145AB50 | 4B FF 1B 71 */	bl CHANSVmGetArgInteger
/* 8145AB54 | 7C 7C 1B 78 */	mr r28, r3
/* 8145AB58 | 7F A3 EB 78 */	mr r3, r29
/* 8145AB5C | 38 80 00 02 */	li r4, 0x2
/* 8145AB60 | 4B FF 1B 61 */	bl CHANSVmGetArgInteger
/* 8145AB64 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 8145AB68 | 41 82 00 08 */	beq .L_8145AB70
/* 8145AB6C | 83 1C 00 04 */	lwz r24, 0x4(r28)
.L_8145AB70:
/* 8145AB70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145AB74 | 41 82 00 08 */	beq .L_8145AB7C
/* 8145AB78 | 82 E3 00 04 */	lwz r23, 0x4(r3)
.L_8145AB7C:
/* 8145AB7C | 88 1A 00 00 */	lbz r0, 0x0(r26)
/* 8145AB80 | 7C 00 07 75 */	extsb. r0, r0
/* 8145AB84 | 40 82 00 24 */	bne .L_8145ABA8
/* 8145AB88 | 7F A3 EB 78 */	mr r3, r29
/* 8145AB8C | 7F 44 D3 78 */	mr r4, r26
/* 8145AB90 | 7F 65 DB 78 */	mr r5, r27
/* 8145AB94 | 7F 07 C3 78 */	mr r7, r24
/* 8145AB98 | 38 C0 00 00 */	li r6, 0x0
/* 8145AB9C | 39 00 FF E0 */	li r8, -0x20
/* 8145ABA0 | 48 00 00 B1 */	bl load_nand___Q33ipl2cs8savedataFP7CHANSVmPQ43ipl2cs8savedata4dataPQ23EGG4HeaplUli
/* 8145ABA4 | 48 00 00 20 */	b .L_8145ABC4
.L_8145ABA8:
/* 8145ABA8 | 7F A3 EB 78 */	mr r3, r29
/* 8145ABAC | 7F 44 D3 78 */	mr r4, r26
/* 8145ABB0 | 7F 65 DB 78 */	mr r5, r27
/* 8145ABB4 | 7F 07 C3 78 */	mr r7, r24
/* 8145ABB8 | 38 C0 00 00 */	li r6, 0x0
/* 8145ABBC | 39 00 FF E0 */	li r8, -0x20
/* 8145ABC0 | 48 00 01 F5 */	bl load_vf___Q33ipl2cs8savedataFP7CHANSVmPQ43ipl2cs8savedata4dataPQ23EGG4HeaplUli
.L_8145ABC4:
/* 8145ABC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145ABC8 | 7C 7B 1B 78 */	mr r27, r3
/* 8145ABCC | 40 82 00 44 */	bne .L_8145AC10
/* 8145ABD0 | 2C 17 00 00 */	cmpwi r23, 0x0
/* 8145ABD4 | 83 1A 00 88 */	lwz r24, 0x88(r26)
/* 8145ABD8 | 41 82 00 1C */	beq .L_8145ABF4
/* 8145ABDC | 7F 43 D3 78 */	mr r3, r26
/* 8145ABE0 | 7F E4 FB 78 */	mr r4, r31
/* 8145ABE4 | 7E E5 BB 78 */	mr r5, r23
/* 8145ABE8 | 7F 26 CB 78 */	mr r6, r25
/* 8145ABEC | 48 00 04 9D */	bl uncompress_front___Q33ipl2cs8savedataFPQ43ipl2cs8savedata4dataPQ23EGG4HeapUli
/* 8145ABF0 | 48 00 00 14 */	b .L_8145AC04
.L_8145ABF4:
/* 8145ABF4 | 7F 43 D3 78 */	mr r3, r26
/* 8145ABF8 | 7F E4 FB 78 */	mr r4, r31
/* 8145ABFC | 7F 25 CB 78 */	mr r5, r25
/* 8145AC00 | 48 00 03 59 */	bl uncompress_all___Q33ipl2cs8savedataFPQ43ipl2cs8savedata4dataPQ23EGG4Heapi
.L_8145AC04:
/* 8145AC04 | 7C 7B 1B 78 */	mr r27, r3
/* 8145AC08 | 7F 03 C3 78 */	mr r3, r24
/* 8145AC0C | 48 19 D4 E1 */	bl __dla__FPv
.L_8145AC10:
/* 8145AC10 | 38 7B FF FE */	subi r3, r27, 0x2
/* 8145AC14 | 30 03 FF FF */	subic r0, r3, 0x1
/* 8145AC18 | 7F 80 19 10 */	subfe r28, r0, r3
.L_8145AC1C:
/* 8145AC1C | 7F 60 00 34 */	cntlzw r0, r27
/* 8145AC20 | 7F A3 EB 78 */	mr r3, r29
/* 8145AC24 | 7F C4 F3 78 */	mr r4, r30
/* 8145AC28 | 38 A0 00 00 */	li r5, 0x0
/* 8145AC2C | 54 06 D9 7E */	srwi r6, r0, 5
/* 8145AC30 | 4B FF 0D 69 */	bl CHANSVmSetInteger
.L_8145AC34:
/* 8145AC34 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8145AC38 | 7F 83 E3 78 */	mr r3, r28
/* 8145AC3C | 48 19 E8 C1 */	bl _restgpr_23
/* 8145AC40 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8145AC44 | 7C 08 03 A6 */	mtlr r0
/* 8145AC48 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8145AC4C | 4E 80 00 20 */	blr
.endfn uncompress___Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdrPQ23EGG4Heap

# .text:0x3BC | 0x8145AC50 | size: 0x164
# ipl::cs::savedata::load_nand_(CHANSVm*, ipl::cs::savedata::data*, EGG::Heap*, long, unsigned long, int)
.fn load_nand___Q33ipl2cs8savedataFP7CHANSVmPQ43ipl2cs8savedata4dataPQ23EGG4HeaplUli, global
/* 8145AC50 | 94 21 FF 00 */	stwu r1, -0x100(r1)
/* 8145AC54 | 7C 08 02 A6 */	mflr r0
/* 8145AC58 | 90 01 01 04 */	stw r0, 0x104(r1)
/* 8145AC5C | 39 61 01 00 */	addi r11, r1, 0x100
/* 8145AC60 | 48 19 E8 5D */	bl _savegpr_26
/* 8145AC64 | 7C 9A 23 78 */	mr r26, r4
/* 8145AC68 | 7C BB 2B 78 */	mr r27, r5
/* 8145AC6C | 7C DC 33 78 */	mr r28, r6
/* 8145AC70 | 7C FD 3B 78 */	mr r29, r7
/* 8145AC74 | 7D 1E 43 78 */	mr r30, r8
/* 8145AC78 | 38 61 00 0C */	addi r3, r1, 0xc
/* 8145AC7C | 3B E0 00 01 */	li r31, 0x1
/* 8145AC80 | 38 80 00 00 */	li r4, 0x0
/* 8145AC84 | 38 A0 00 42 */	li r5, 0x42
/* 8145AC88 | 4B ED 56 AD */	bl memset
/* 8145AC8C | 38 61 00 0C */	addi r3, r1, 0xc
/* 8145AC90 | 38 9A 00 42 */	addi r4, r26, 0x42
/* 8145AC94 | 4B FF FC 01 */	bl get_fullpath__Q33ipl2cs8savedataFPcPCc
/* 8145AC98 | 38 80 00 00 */	li r4, 0x0
/* 8145AC9C | 38 61 00 0C */	addi r3, r1, 0xc
/* 8145ACA0 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 8145ACA4 | 38 81 00 50 */	addi r4, r1, 0x50
/* 8145ACA8 | 38 A0 00 01 */	li r5, 0x1
/* 8145ACAC | 4B F0 55 AD */	bl PrivateOpen__Q33ipl4nand7wrapperFPCcP12NANDFileInfoUc
/* 8145ACB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145ACB4 | 40 82 00 E4 */	bne .L_8145AD98
/* 8145ACB8 | 38 61 00 50 */	addi r3, r1, 0x50
/* 8145ACBC | 38 81 00 08 */	addi r4, r1, 0x8
/* 8145ACC0 | 4B F0 52 05 */	bl GetLength__Q33ipl4nand7wrapperFP12NANDFileInfoPUl
/* 8145ACC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145ACC8 | 40 82 00 B8 */	bne .L_8145AD80
/* 8145ACCC | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 8145ACD0 | 41 82 00 2C */	beq .L_8145ACFC
/* 8145ACD4 | 40 81 00 B0 */	ble .L_8145AD84
/* 8145ACD8 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8145ACDC | 7C 1C 00 40 */	cmplw r28, r0
/* 8145ACE0 | 40 80 00 A4 */	bge .L_8145AD84
/* 8145ACE4 | 7F 84 E3 78 */	mr r4, r28
/* 8145ACE8 | 38 61 00 50 */	addi r3, r1, 0x50
/* 8145ACEC | 38 A0 00 00 */	li r5, 0x0
/* 8145ACF0 | 4B F0 51 61 */	bl Seek__Q33ipl4nand7wrapperFP12NANDFileInfoll
/* 8145ACF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145ACF8 | 40 81 00 8C */	ble .L_8145AD84
.L_8145ACFC:
/* 8145ACFC | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8145AD00 | 41 82 00 1C */	beq .L_8145AD1C
/* 8145AD04 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8145AD08 | 7C 7D E2 14 */	add r3, r29, r28
/* 8145AD0C | 7C 03 00 40 */	cmplw r3, r0
/* 8145AD10 | 41 81 00 0C */	bgt .L_8145AD1C
/* 8145AD14 | 7F A4 EB 78 */	mr r4, r29
/* 8145AD18 | 48 00 00 0C */	b .L_8145AD24
.L_8145AD1C:
/* 8145AD1C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8145AD20 | 7C 9C 00 50 */	subf r4, r28, r0
.L_8145AD24:
/* 8145AD24 | 38 04 00 1F */	addi r0, r4, 0x1f
/* 8145AD28 | 7F 64 DB 78 */	mr r4, r27
/* 8145AD2C | 54 03 00 34 */	clrrwi r3, r0, 5
/* 8145AD30 | 7F C5 F3 78 */	mr r5, r30
/* 8145AD34 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8145AD38 | 48 19 D3 9D */	bl __nwa__FUlPQ23EGG4Heapi
/* 8145AD3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145AD40 | 7C 7E 1B 78 */	mr r30, r3
/* 8145AD44 | 41 82 00 40 */	beq .L_8145AD84
/* 8145AD48 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 8145AD4C | 7F C4 F3 78 */	mr r4, r30
/* 8145AD50 | 38 61 00 50 */	addi r3, r1, 0x50
/* 8145AD54 | 4B F0 50 15 */	bl Read__Q33ipl4nand7wrapperFP12NANDFileInfoPvUl
/* 8145AD58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145AD5C | 40 81 00 28 */	ble .L_8145AD84
/* 8145AD60 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 8145AD64 | 7F C3 F3 78 */	mr r3, r30
/* 8145AD68 | 48 0D 2B FD */	bl DCStoreRange
/* 8145AD6C | 93 DA 00 88 */	stw r30, 0x88(r26)
/* 8145AD70 | 3B E0 00 00 */	li r31, 0x0
/* 8145AD74 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8145AD78 | 90 1A 00 8C */	stw r0, 0x8c(r26)
/* 8145AD7C | 48 00 00 08 */	b .L_8145AD84
.L_8145AD80:
/* 8145AD80 | 3B E0 00 02 */	li r31, 0x2
.L_8145AD84:
/* 8145AD84 | 38 61 00 50 */	addi r3, r1, 0x50
/* 8145AD88 | 4B F0 4F 7D */	bl Close__Q33ipl4nand7wrapperFP12NANDFileInfo
/* 8145AD8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145AD90 | 41 82 00 08 */	beq .L_8145AD98
/* 8145AD94 | 3B E0 00 02 */	li r31, 0x2
.L_8145AD98:
/* 8145AD98 | 39 61 01 00 */	addi r11, r1, 0x100
/* 8145AD9C | 7F E3 FB 78 */	mr r3, r31
/* 8145ADA0 | 48 19 E7 69 */	bl _restgpr_26
/* 8145ADA4 | 80 01 01 04 */	lwz r0, 0x104(r1)
/* 8145ADA8 | 7C 08 03 A6 */	mtlr r0
/* 8145ADAC | 38 21 01 00 */	addi r1, r1, 0x100
/* 8145ADB0 | 4E 80 00 20 */	blr
.endfn load_nand___Q33ipl2cs8savedataFP7CHANSVmPQ43ipl2cs8savedata4dataPQ23EGG4HeaplUli

# .text:0x520 | 0x8145ADB4 | size: 0x1A4
# ipl::cs::savedata::load_vf_(CHANSVm*, ipl::cs::savedata::data*, EGG::Heap*, long, unsigned long, int)
.fn load_vf___Q33ipl2cs8savedataFP7CHANSVmPQ43ipl2cs8savedata4dataPQ23EGG4HeaplUli, global
/* 8145ADB4 | 94 21 FE 80 */	stwu r1, -0x180(r1)
/* 8145ADB8 | 7C 08 02 A6 */	mflr r0
/* 8145ADBC | 90 01 01 84 */	stw r0, 0x184(r1)
/* 8145ADC0 | 39 61 01 80 */	addi r11, r1, 0x180
/* 8145ADC4 | 48 19 E6 F5 */	bl _savegpr_25
/* 8145ADC8 | 90 E1 00 08 */	stw r7, 0x8(r1)
/* 8145ADCC | 7C 99 23 78 */	mr r25, r4
/* 8145ADD0 | 7C BA 2B 78 */	mr r26, r5
/* 8145ADD4 | 7C DB 33 78 */	mr r27, r6
/* 8145ADD8 | 7D 1C 43 78 */	mr r28, r8
/* 8145ADDC | 38 61 00 0C */	addi r3, r1, 0xc
/* 8145ADE0 | 3B E0 00 01 */	li r31, 0x1
/* 8145ADE4 | 38 80 00 00 */	li r4, 0x0
/* 8145ADE8 | 38 A0 00 42 */	li r5, 0x42
/* 8145ADEC | 4B ED 55 49 */	bl memset
/* 8145ADF0 | 7F 24 CB 78 */	mr r4, r25
/* 8145ADF4 | 38 61 00 0C */	addi r3, r1, 0xc
/* 8145ADF8 | 4B FF FA 9D */	bl get_fullpath__Q33ipl2cs8savedataFPcPCc
/* 8145ADFC | 38 81 00 0C */	addi r4, r1, 0xc
/* 8145AE00 | 38 6D 98 28 */	li r3, lbl_81697868@sda21
/* 8145AE04 | 48 07 53 09 */	bl VFMountDriveNANDFlashEx
/* 8145AE08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145AE0C | 40 82 01 30 */	bne .L_8145AF3C
/* 8145AE10 | 38 61 00 4E */	addi r3, r1, 0x4e
/* 8145AE14 | 38 80 00 00 */	li r4, 0x0
/* 8145AE18 | 38 A0 01 04 */	li r5, 0x104
/* 8145AE1C | 4B ED 55 19 */	bl memset
/* 8145AE20 | 38 61 00 4E */	addi r3, r1, 0x4e
/* 8145AE24 | 38 F9 00 42 */	addi r7, r25, 0x42
/* 8145AE28 | 38 80 01 03 */	li r4, 0x103
/* 8145AE2C | 38 AD 98 2C */	li r5, lbl_8169786C@sda21
/* 8145AE30 | 38 CD 98 28 */	li r6, lbl_81697868@sda21
/* 8145AE34 | 4C C6 31 82 */	crclr cr1eq
/* 8145AE38 | 48 1A 5B 71 */	bl snprintf
/* 8145AE3C | 38 61 00 4E */	addi r3, r1, 0x4e
/* 8145AE40 | 38 8D 98 33 */	li r4, lbl_81697873@sda21
/* 8145AE44 | 38 A0 00 00 */	li r5, 0x0
/* 8145AE48 | 48 07 5A 79 */	bl VFOpenFile
/* 8145AE4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145AE50 | 7C 7E 1B 78 */	mr r30, r3
/* 8145AE54 | 41 82 00 D4 */	beq .L_8145AF28
/* 8145AE58 | 48 07 60 5D */	bl VFGetFileSizeByFd
/* 8145AE5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145AE60 | 7C 7D 1B 78 */	mr r29, r3
/* 8145AE64 | 40 81 00 AC */	ble .L_8145AF10
/* 8145AE68 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 8145AE6C | 41 82 00 28 */	beq .L_8145AE94
/* 8145AE70 | 40 81 00 98 */	ble .L_8145AF08
/* 8145AE74 | 7C 1B 18 40 */	cmplw r27, r3
/* 8145AE78 | 40 80 00 90 */	bge .L_8145AF08
/* 8145AE7C | 7F C3 F3 78 */	mr r3, r30
/* 8145AE80 | 7F 64 DB 78 */	mr r4, r27
/* 8145AE84 | 38 A0 00 00 */	li r5, 0x0
/* 8145AE88 | 48 07 5B 69 */	bl fn_814D09F0
/* 8145AE8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145AE90 | 40 82 00 78 */	bne .L_8145AF08
.L_8145AE94:
/* 8145AE94 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 8145AE98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145AE9C | 41 82 00 14 */	beq .L_8145AEB0
/* 8145AEA0 | 7C 03 DA 14 */	add r0, r3, r27
/* 8145AEA4 | 7C 00 E8 40 */	cmplw r0, r29
/* 8145AEA8 | 41 81 00 08 */	bgt .L_8145AEB0
/* 8145AEAC | 7C 7D 1B 78 */	mr r29, r3
.L_8145AEB0:
/* 8145AEB0 | 7F A3 EB 78 */	mr r3, r29
/* 8145AEB4 | 7F 44 D3 78 */	mr r4, r26
/* 8145AEB8 | 7F 85 E3 78 */	mr r5, r28
/* 8145AEBC | 48 19 D2 19 */	bl __nwa__FUlPQ23EGG4Heapi
/* 8145AEC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145AEC4 | 7C 7C 1B 78 */	mr r28, r3
/* 8145AEC8 | 41 82 00 4C */	beq .L_8145AF14
/* 8145AECC | 7F C3 F3 78 */	mr r3, r30
/* 8145AED0 | 7F 84 E3 78 */	mr r4, r28
/* 8145AED4 | 7F A5 EB 78 */	mr r5, r29
/* 8145AED8 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 8145AEDC | 48 07 5B A1 */	bl VFReadFile
/* 8145AEE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145AEE4 | 40 82 00 30 */	bne .L_8145AF14
/* 8145AEE8 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 8145AEEC | 7F 83 E3 78 */	mr r3, r28
/* 8145AEF0 | 48 0D 2A 75 */	bl DCStoreRange
/* 8145AEF4 | 93 99 00 88 */	stw r28, 0x88(r25)
/* 8145AEF8 | 3B E0 00 00 */	li r31, 0x0
/* 8145AEFC | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8145AF00 | 90 19 00 8C */	stw r0, 0x8c(r25)
/* 8145AF04 | 48 00 00 10 */	b .L_8145AF14
.L_8145AF08:
/* 8145AF08 | 3B E0 00 02 */	li r31, 0x2
/* 8145AF0C | 48 00 00 08 */	b .L_8145AF14
.L_8145AF10:
/* 8145AF10 | 3B E0 00 02 */	li r31, 0x2
.L_8145AF14:
/* 8145AF14 | 7F C3 F3 78 */	mr r3, r30
/* 8145AF18 | 48 07 5A 6D */	bl VFCloseFile
/* 8145AF1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145AF20 | 41 82 00 08 */	beq .L_8145AF28
/* 8145AF24 | 3B E0 00 02 */	li r31, 0x2
.L_8145AF28:
/* 8145AF28 | 38 6D 98 28 */	li r3, lbl_81697868@sda21
/* 8145AF2C | 48 07 57 2D */	bl VFUnmountDrive
/* 8145AF30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145AF34 | 41 82 00 08 */	beq .L_8145AF3C
/* 8145AF38 | 3B E0 00 02 */	li r31, 0x2
.L_8145AF3C:
/* 8145AF3C | 39 61 01 80 */	addi r11, r1, 0x180
/* 8145AF40 | 7F E3 FB 78 */	mr r3, r31
/* 8145AF44 | 48 19 E5 C1 */	bl _restgpr_25
/* 8145AF48 | 80 01 01 84 */	lwz r0, 0x184(r1)
/* 8145AF4C | 7C 08 03 A6 */	mtlr r0
/* 8145AF50 | 38 21 01 80 */	addi r1, r1, 0x180
/* 8145AF54 | 4E 80 00 20 */	blr
.endfn load_vf___Q33ipl2cs8savedataFP7CHANSVmPQ43ipl2cs8savedata4dataPQ23EGG4HeaplUli

# .text:0x6C4 | 0x8145AF58 | size: 0x130
# ipl::cs::savedata::uncompress_all_(ipl::cs::savedata::data*, EGG::Heap*, int)
.fn uncompress_all___Q33ipl2cs8savedataFPQ43ipl2cs8savedata4dataPQ23EGG4Heapi, global
/* 8145AF58 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145AF5C | 7C 08 02 A6 */	mflr r0
/* 8145AF60 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145AF64 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145AF68 | 48 19 E5 55 */	bl _savegpr_26
/* 8145AF6C | 83 C3 00 88 */	lwz r30, 0x88(r3)
/* 8145AF70 | 7C 7A 1B 78 */	mr r26, r3
/* 8145AF74 | 7C 9C 23 78 */	mr r28, r4
/* 8145AF78 | 7C BB 2B 78 */	mr r27, r5
/* 8145AF7C | 7F C3 F3 78 */	mr r3, r30
/* 8145AF80 | 3B E0 00 01 */	li r31, 0x1
/* 8145AF84 | 48 10 12 E9 */	bl CXGetUncompressedSize
/* 8145AF88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145AF8C | 7C 7D 1B 78 */	mr r29, r3
/* 8145AF90 | 40 82 00 0C */	bne .L_8145AF9C
/* 8145AF94 | 3B E0 00 02 */	li r31, 0x2
/* 8145AF98 | 48 00 00 D4 */	b .L_8145B06C
.L_8145AF9C:
/* 8145AF9C | 7F 84 E3 78 */	mr r4, r28
/* 8145AFA0 | 38 A0 00 20 */	li r5, 0x20
/* 8145AFA4 | 48 19 D1 31 */	bl __nwa__FUlPQ23EGG4Heapi
/* 8145AFA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145AFAC | 7C 7C 1B 78 */	mr r28, r3
/* 8145AFB0 | 41 82 00 BC */	beq .L_8145B06C
/* 8145AFB4 | 7F A5 EB 78 */	mr r5, r29
/* 8145AFB8 | 38 80 00 00 */	li r4, 0x0
/* 8145AFBC | 4B ED 53 79 */	bl memset
/* 8145AFC0 | 2C 1B FF FF */	cmpwi r27, -0x1
/* 8145AFC4 | 40 82 00 0C */	bne .L_8145AFD0
/* 8145AFC8 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 8145AFCC | 54 1B 06 36 */	rlwinm r27, r0, 0, 24, 27
.L_8145AFD0:
/* 8145AFD0 | 2C 1B 00 20 */	cmpwi r27, 0x20
/* 8145AFD4 | 38 60 FF FF */	li r3, -0x1
/* 8145AFD8 | 41 82 00 48 */	beq .L_8145B020
/* 8145AFDC | 40 80 00 10 */	bge .L_8145AFEC
/* 8145AFE0 | 2C 1B 00 10 */	cmpwi r27, 0x10
/* 8145AFE4 | 41 82 00 28 */	beq .L_8145B00C
/* 8145AFE8 | 48 00 00 48 */	b .L_8145B030
.L_8145AFEC:
/* 8145AFEC | 2C 1B 00 30 */	cmpwi r27, 0x30
/* 8145AFF0 | 41 82 00 08 */	beq .L_8145AFF8
/* 8145AFF4 | 48 00 00 3C */	b .L_8145B030
.L_8145AFF8:
/* 8145AFF8 | 80 9A 00 8C */	lwz r4, 0x8c(r26)
/* 8145AFFC | 7F C3 F3 78 */	mr r3, r30
/* 8145B000 | 7F 85 E3 78 */	mr r5, r28
/* 8145B004 | 48 10 13 E9 */	bl fn_8155C3EC
/* 8145B008 | 48 00 00 28 */	b .L_8145B030
.L_8145B00C:
/* 8145B00C | 80 9A 00 8C */	lwz r4, 0x8c(r26)
/* 8145B010 | 7F C3 F3 78 */	mr r3, r30
/* 8145B014 | 7F 85 E3 78 */	mr r5, r28
/* 8145B018 | 48 10 15 39 */	bl fn_8155C550
/* 8145B01C | 48 00 00 14 */	b .L_8145B030
.L_8145B020:
/* 8145B020 | 80 9A 00 8C */	lwz r4, 0x8c(r26)
/* 8145B024 | 7F C3 F3 78 */	mr r3, r30
/* 8145B028 | 7F 85 E3 78 */	mr r5, r28
/* 8145B02C | 48 10 18 ED */	bl fn_8155C918
.L_8145B030:
/* 8145B030 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145B034 | 40 82 00 20 */	bne .L_8145B054
/* 8145B038 | 7F 83 E3 78 */	mr r3, r28
/* 8145B03C | 7F A4 EB 78 */	mr r4, r29
/* 8145B040 | 48 0D 29 25 */	bl DCStoreRange
/* 8145B044 | 93 9A 00 88 */	stw r28, 0x88(r26)
/* 8145B048 | 3B E0 00 00 */	li r31, 0x0
/* 8145B04C | 93 BA 00 8C */	stw r29, 0x8c(r26)
/* 8145B050 | 48 00 00 1C */	b .L_8145B06C
.L_8145B054:
/* 8145B054 | 7F 83 E3 78 */	mr r3, r28
/* 8145B058 | 48 19 D0 95 */	bl __dla__FPv
/* 8145B05C | 38 00 00 00 */	li r0, 0x0
/* 8145B060 | 3B E0 00 02 */	li r31, 0x2
/* 8145B064 | 90 1A 00 88 */	stw r0, 0x88(r26)
/* 8145B068 | 90 1A 00 8C */	stw r0, 0x8c(r26)
.L_8145B06C:
/* 8145B06C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145B070 | 7F E3 FB 78 */	mr r3, r31
/* 8145B074 | 48 19 E4 95 */	bl _restgpr_26
/* 8145B078 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145B07C | 7C 08 03 A6 */	mtlr r0
/* 8145B080 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145B084 | 4E 80 00 20 */	blr
.endfn uncompress_all___Q33ipl2cs8savedataFPQ43ipl2cs8savedata4dataPQ23EGG4Heapi

# .text:0x7F4 | 0x8145B088 | size: 0x1D4
# ipl::cs::savedata::uncompress_front_(ipl::cs::savedata::data*, EGG::Heap*, unsigned long, int)
.fn uncompress_front___Q33ipl2cs8savedataFPQ43ipl2cs8savedata4dataPQ23EGG4HeapUli, global
/* 8145B088 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8145B08C | 7C 08 02 A6 */	mflr r0
/* 8145B090 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8145B094 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8145B098 | 48 19 E4 21 */	bl _savegpr_25
/* 8145B09C | 83 C3 00 88 */	lwz r30, 0x88(r3)
/* 8145B0A0 | 7C 79 1B 78 */	mr r25, r3
/* 8145B0A4 | 7C 9C 23 78 */	mr r28, r4
/* 8145B0A8 | 7C BA 2B 78 */	mr r26, r5
/* 8145B0AC | 7C DB 33 78 */	mr r27, r6
/* 8145B0B0 | 7F C3 F3 78 */	mr r3, r30
/* 8145B0B4 | 3B E0 00 01 */	li r31, 0x1
/* 8145B0B8 | 48 10 11 B5 */	bl CXGetUncompressedSize
/* 8145B0BC | 7C 03 D0 40 */	cmplw r3, r26
/* 8145B0C0 | 40 80 00 08 */	bge .L_8145B0C8
/* 8145B0C4 | 7C 7A 1B 78 */	mr r26, r3
.L_8145B0C8:
/* 8145B0C8 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 8145B0CC | 40 82 00 0C */	bne .L_8145B0D8
/* 8145B0D0 | 3B E0 00 02 */	li r31, 0x2
/* 8145B0D4 | 48 00 01 6C */	b .L_8145B240
.L_8145B0D8:
/* 8145B0D8 | 7F 43 D3 78 */	mr r3, r26
/* 8145B0DC | 7F 84 E3 78 */	mr r4, r28
/* 8145B0E0 | 38 A0 00 20 */	li r5, 0x20
/* 8145B0E4 | 48 19 CF F1 */	bl __nwa__FUlPQ23EGG4Heapi
/* 8145B0E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145B0EC | 7C 7D 1B 78 */	mr r29, r3
/* 8145B0F0 | 41 82 01 50 */	beq .L_8145B240
/* 8145B0F4 | 7F 45 D3 78 */	mr r5, r26
/* 8145B0F8 | 38 80 00 00 */	li r4, 0x0
/* 8145B0FC | 4B ED 52 39 */	bl memset
/* 8145B100 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8145B104 | 38 60 02 20 */	li r3, 0x220
/* 8145B108 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8145B10C | 38 A0 00 04 */	li r5, 0x4
/* 8145B110 | 80 84 00 88 */	lwz r4, 0x88(r4)
/* 8145B114 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 8145B118 | 48 19 CF 99 */	bl __nw__FUlPQ23EGG4Heapi
/* 8145B11C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145B120 | 7C 7C 1B 78 */	mr r28, r3
/* 8145B124 | 41 82 01 14 */	beq .L_8145B238
/* 8145B128 | 2C 1B FF FF */	cmpwi r27, -0x1
/* 8145B12C | 3B E0 00 00 */	li r31, 0x0
/* 8145B130 | 40 82 00 0C */	bne .L_8145B13C
/* 8145B134 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 8145B138 | 54 1B 06 36 */	rlwinm r27, r0, 0, 24, 27
.L_8145B13C:
/* 8145B13C | 2C 1B 00 20 */	cmpwi r27, 0x20
/* 8145B140 | 38 00 FF FF */	li r0, -0x1
/* 8145B144 | 41 82 00 78 */	beq .L_8145B1BC
/* 8145B148 | 40 80 00 10 */	bge .L_8145B158
/* 8145B14C | 2C 1B 00 10 */	cmpwi r27, 0x10
/* 8145B150 | 41 82 00 40 */	beq .L_8145B190
/* 8145B154 | 48 00 00 90 */	b .L_8145B1E4
.L_8145B158:
/* 8145B158 | 2C 1B 00 30 */	cmpwi r27, 0x30
/* 8145B15C | 41 82 00 08 */	beq .L_8145B164
/* 8145B160 | 48 00 00 84 */	b .L_8145B1E4
.L_8145B164:
/* 8145B164 | 7F 83 E3 78 */	mr r3, r28
/* 8145B168 | 7F A4 EB 78 */	mr r4, r29
/* 8145B16C | 48 10 06 85 */	bl fn_8155B7F0
/* 8145B170 | 93 5C 00 08 */	stw r26, 0x8(r28)
/* 8145B174 | 7F 83 E3 78 */	mr r3, r28
/* 8145B178 | 7F C4 F3 78 */	mr r4, r30
/* 8145B17C | 80 B9 00 8C */	lwz r5, 0x8c(r25)
/* 8145B180 | 48 10 07 09 */	bl fn_8155B888
/* 8145B184 | 7C 7F 1B 78 */	mr r31, r3
/* 8145B188 | 7F E0 FB 78 */	mr r0, r31
/* 8145B18C | 48 00 00 58 */	b .L_8145B1E4
.L_8145B190:
/* 8145B190 | 7F 83 E3 78 */	mr r3, r28
/* 8145B194 | 7F A4 EB 78 */	mr r4, r29
/* 8145B198 | 48 10 06 7D */	bl CXInitUncompContextLZ
/* 8145B19C | 93 5C 00 08 */	stw r26, 0x8(r28)
/* 8145B1A0 | 7F 83 E3 78 */	mr r3, r28
/* 8145B1A4 | 7F C4 F3 78 */	mr r4, r30
/* 8145B1A8 | 80 B9 00 8C */	lwz r5, 0x8c(r25)
/* 8145B1AC | 48 10 09 75 */	bl CXReadUncompLZ
/* 8145B1B0 | 7C 7F 1B 78 */	mr r31, r3
/* 8145B1B4 | 7F E0 FB 78 */	mr r0, r31
/* 8145B1B8 | 48 00 00 2C */	b .L_8145B1E4
.L_8145B1BC:
/* 8145B1BC | 7F 83 E3 78 */	mr r3, r28
/* 8145B1C0 | 7F A4 EB 78 */	mr r4, r29
/* 8145B1C4 | 48 10 06 85 */	bl fn_8155B848
/* 8145B1C8 | 93 5C 00 08 */	stw r26, 0x8(r28)
/* 8145B1CC | 7F 83 E3 78 */	mr r3, r28
/* 8145B1D0 | 7F C4 F3 78 */	mr r4, r30
/* 8145B1D4 | 80 B9 00 8C */	lwz r5, 0x8c(r25)
/* 8145B1D8 | 48 10 0D 05 */	bl fn_8155BEDC
/* 8145B1DC | 7C 7F 1B 78 */	mr r31, r3
/* 8145B1E0 | 7F E0 FB 78 */	mr r0, r31
.L_8145B1E4:
/* 8145B1E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8145B1E8 | 41 80 00 2C */	blt .L_8145B214
/* 8145B1EC | 7F A3 EB 78 */	mr r3, r29
/* 8145B1F0 | 7F 44 D3 78 */	mr r4, r26
/* 8145B1F4 | 48 0D 27 71 */	bl DCStoreRange
/* 8145B1F8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145B1FC | 40 81 00 08 */	ble .L_8145B204
/* 8145B200 | 7F 5F D0 50 */	subf r26, r31, r26
.L_8145B204:
/* 8145B204 | 93 B9 00 88 */	stw r29, 0x88(r25)
/* 8145B208 | 3B E0 00 00 */	li r31, 0x0
/* 8145B20C | 93 59 00 8C */	stw r26, 0x8c(r25)
/* 8145B210 | 48 00 00 1C */	b .L_8145B22C
.L_8145B214:
/* 8145B214 | 7F A3 EB 78 */	mr r3, r29
/* 8145B218 | 48 19 CE D5 */	bl __dla__FPv
/* 8145B21C | 38 00 00 00 */	li r0, 0x0
/* 8145B220 | 3B E0 00 02 */	li r31, 0x2
/* 8145B224 | 90 19 00 88 */	stw r0, 0x88(r25)
/* 8145B228 | 90 19 00 8C */	stw r0, 0x8c(r25)
.L_8145B22C:
/* 8145B22C | 7F 83 E3 78 */	mr r3, r28
/* 8145B230 | 48 19 CE B5 */	bl __dl__FPv
/* 8145B234 | 48 00 00 0C */	b .L_8145B240
.L_8145B238:
/* 8145B238 | 7F A3 EB 78 */	mr r3, r29
/* 8145B23C | 48 19 CE B1 */	bl __dla__FPv
.L_8145B240:
/* 8145B240 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8145B244 | 7F E3 FB 78 */	mr r3, r31
/* 8145B248 | 48 19 E2 BD */	bl _restgpr_25
/* 8145B24C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8145B250 | 7C 08 03 A6 */	mtlr r0
/* 8145B254 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8145B258 | 4E 80 00 20 */	blr
.endfn uncompress_front___Q33ipl2cs8savedataFPQ43ipl2cs8savedata4dataPQ23EGG4HeapUli

# .text:0x9C8 | 0x8145B25C | size: 0x110
# ipl::cs::savedata::copy_to_heap(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn copy_to_heap__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145B25C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8145B260 | 7C 08 02 A6 */	mflr r0
/* 8145B264 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8145B268 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8145B26C | 48 19 E2 4D */	bl _savegpr_25
/* 8145B270 | 7C 9B 23 78 */	mr r27, r4
/* 8145B274 | 7C 79 1B 78 */	mr r25, r3
/* 8145B278 | 7C BA 2B 78 */	mr r26, r5
/* 8145B27C | 3B A0 00 00 */	li r29, 0x0
/* 8145B280 | 7F 63 DB 78 */	mr r3, r27
/* 8145B284 | 48 00 12 A5 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145B288 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145B28C | 41 82 00 C4 */	beq .L_8145B350
/* 8145B290 | 80 BB 00 00 */	lwz r5, 0x0(r27)
/* 8145B294 | 7F 23 CB 78 */	mr r3, r25
/* 8145B298 | 38 80 00 00 */	li r4, 0x0
/* 8145B29C | 83 85 00 00 */	lwz r28, 0x0(r5)
/* 8145B2A0 | 4B FF 14 21 */	bl CHANSVmGetArgInteger
/* 8145B2A4 | 7C 7F 1B 78 */	mr r31, r3
/* 8145B2A8 | 7F 23 CB 78 */	mr r3, r25
/* 8145B2AC | 38 80 00 01 */	li r4, 0x1
/* 8145B2B0 | 4B FF 14 11 */	bl CHANSVmGetArgInteger
/* 8145B2B4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145B2B8 | 41 82 00 0C */	beq .L_8145B2C4
/* 8145B2BC | 83 FF 00 04 */	lwz r31, 0x4(r31)
/* 8145B2C0 | 48 00 00 08 */	b .L_8145B2C8
.L_8145B2C4:
/* 8145B2C4 | 3B E0 00 00 */	li r31, 0x0
.L_8145B2C8:
/* 8145B2C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145B2CC | 41 82 00 0C */	beq .L_8145B2D8
/* 8145B2D0 | 83 C3 00 04 */	lwz r30, 0x4(r3)
/* 8145B2D4 | 48 00 00 08 */	b .L_8145B2DC
.L_8145B2D8:
/* 8145B2D8 | 3B C0 00 00 */	li r30, 0x0
.L_8145B2DC:
/* 8145B2DC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8145B2E0 | 41 82 00 70 */	beq .L_8145B350
/* 8145B2E4 | 80 7C 00 8C */	lwz r3, 0x8c(r28)
/* 8145B2E8 | 7C 1F F2 14 */	add r0, r31, r30
/* 8145B2EC | 7C 03 00 40 */	cmplw r3, r0
/* 8145B2F0 | 40 81 00 60 */	ble .L_8145B350
/* 8145B2F4 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8145B2F8 | 7F C3 F3 78 */	mr r3, r30
/* 8145B2FC | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8145B300 | 38 A0 00 20 */	li r5, 0x20
/* 8145B304 | 80 84 00 88 */	lwz r4, 0x88(r4)
/* 8145B308 | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 8145B30C | 48 19 CD C9 */	bl __nwa__FUlPQ23EGG4Heapi
/* 8145B310 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145B314 | 7C 7B 1B 78 */	mr r27, r3
/* 8145B318 | 41 82 00 38 */	beq .L_8145B350
/* 8145B31C | 80 1C 00 88 */	lwz r0, 0x88(r28)
/* 8145B320 | 7F C5 F3 78 */	mr r5, r30
/* 8145B324 | 7C 80 FA 14 */	add r4, r0, r31
/* 8145B328 | 4B ED 4F 09 */	bl memcpy
/* 8145B32C | 7F 63 DB 78 */	mr r3, r27
/* 8145B330 | 7F C4 F3 78 */	mr r4, r30
/* 8145B334 | 48 0D 26 31 */	bl DCStoreRange
/* 8145B338 | 7F 23 CB 78 */	mr r3, r25
/* 8145B33C | 7F 44 D3 78 */	mr r4, r26
/* 8145B340 | 7F 65 DB 78 */	mr r5, r27
/* 8145B344 | 7F C6 F3 78 */	mr r6, r30
/* 8145B348 | 48 00 06 65 */	bl _ctor__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrUlUl
/* 8145B34C | 7C 7D 1B 78 */	mr r29, r3
.L_8145B350:
/* 8145B350 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8145B354 | 7F A3 EB 78 */	mr r3, r29
/* 8145B358 | 48 19 E1 AD */	bl _restgpr_25
/* 8145B35C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8145B360 | 7C 08 03 A6 */	mtlr r0
/* 8145B364 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8145B368 | 4E 80 00 20 */	blr
.endfn copy_to_heap__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0xAD8 | 0x8145B36C | size: 0x7C
# ipl::cs::savedata::create_blob(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn create_blob__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145B36C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145B370 | 7C 08 02 A6 */	mflr r0
/* 8145B374 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145B378 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145B37C | 48 19 E1 49 */	bl _savegpr_28
/* 8145B380 | 7C 9D 23 78 */	mr r29, r4
/* 8145B384 | 7C 7C 1B 78 */	mr r28, r3
/* 8145B388 | 7C BE 2B 78 */	mr r30, r5
/* 8145B38C | 3B E0 00 00 */	li r31, 0x0
/* 8145B390 | 7F A3 EB 78 */	mr r3, r29
/* 8145B394 | 48 00 11 95 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145B398 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145B39C | 41 82 00 30 */	beq .L_8145B3CC
/* 8145B3A0 | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8145B3A4 | 7F 83 E3 78 */	mr r3, r28
/* 8145B3A8 | 7F C4 F3 78 */	mr r4, r30
/* 8145B3AC | 80 C5 00 00 */	lwz r6, 0x0(r5)
/* 8145B3B0 | 80 A6 00 8C */	lwz r5, 0x8c(r6)
/* 8145B3B4 | 80 C6 00 88 */	lwz r6, 0x88(r6)
/* 8145B3B8 | 7C A7 2B 78 */	mr r7, r5
/* 8145B3BC | 4B FF 95 B5 */	bl CHANSVmNewBlobObject
/* 8145B3C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145B3C4 | 41 82 00 08 */	beq .L_8145B3CC
/* 8145B3C8 | 3B E0 00 01 */	li r31, 0x1
.L_8145B3CC:
/* 8145B3CC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145B3D0 | 7F E3 FB 78 */	mr r3, r31
/* 8145B3D4 | 48 19 E1 3D */	bl _restgpr_28
/* 8145B3D8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145B3DC | 7C 08 03 A6 */	mtlr r0
/* 8145B3E0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145B3E4 | 4E 80 00 20 */	blr
.endfn create_blob__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0xB54 | 0x8145B3E8 | size: 0x1E0
# ipl::cs::savedata::decode_odh(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn decode_odh__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145B3E8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8145B3EC | 7C 08 02 A6 */	mflr r0
/* 8145B3F0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8145B3F4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8145B3F8 | 48 19 E0 B5 */	bl _savegpr_22
/* 8145B3FC | 7C 98 23 78 */	mr r24, r4
/* 8145B400 | 7C 76 1B 78 */	mr r22, r3
/* 8145B404 | 7C B7 2B 78 */	mr r23, r5
/* 8145B408 | 3B 60 00 00 */	li r27, 0x0
/* 8145B40C | 7F 03 C3 78 */	mr r3, r24
/* 8145B410 | 48 00 11 19 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145B414 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145B418 | 41 82 01 94 */	beq .L_8145B5AC
/* 8145B41C | 80 B8 00 00 */	lwz r5, 0x0(r24)
/* 8145B420 | 7E C3 B3 78 */	mr r3, r22
/* 8145B424 | 38 80 00 00 */	li r4, 0x0
/* 8145B428 | 83 E5 00 00 */	lwz r31, 0x0(r5)
/* 8145B42C | 4B FF 12 95 */	bl CHANSVmGetArgInteger
/* 8145B430 | 7C 7E 1B 78 */	mr r30, r3
/* 8145B434 | 7E C3 B3 78 */	mr r3, r22
/* 8145B438 | 38 80 00 01 */	li r4, 0x1
/* 8145B43C | 4B FF 12 85 */	bl CHANSVmGetArgInteger
/* 8145B440 | 7C 7D 1B 78 */	mr r29, r3
/* 8145B444 | 7E C3 B3 78 */	mr r3, r22
/* 8145B448 | 38 80 00 02 */	li r4, 0x2
/* 8145B44C | 4B FF 12 75 */	bl CHANSVmGetArgInteger
/* 8145B450 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8145B454 | 41 82 01 58 */	beq .L_8145B5AC
/* 8145B458 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8145B45C | 83 5E 00 04 */	lwz r26, 0x4(r30)
/* 8145B460 | 41 82 00 0C */	beq .L_8145B46C
/* 8145B464 | 80 9D 00 04 */	lwz r4, 0x4(r29)
/* 8145B468 | 48 00 00 08 */	b .L_8145B470
.L_8145B46C:
/* 8145B46C | 38 80 00 00 */	li r4, 0x0
.L_8145B470:
/* 8145B470 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145B474 | 41 82 00 0C */	beq .L_8145B480
/* 8145B478 | 83 83 00 04 */	lwz r28, 0x4(r3)
/* 8145B47C | 48 00 00 08 */	b .L_8145B484
.L_8145B480:
/* 8145B480 | 83 9F 00 8C */	lwz r28, 0x8c(r31)
.L_8145B484:
/* 8145B484 | 80 1F 00 88 */	lwz r0, 0x88(r31)
/* 8145B488 | 28 1A 00 04 */	cmplwi r26, 0x4
/* 8145B48C | 7F 20 22 14 */	add r25, r0, r4
/* 8145B490 | 41 82 00 0C */	beq .L_8145B49C
/* 8145B494 | 28 1A 00 06 */	cmplwi r26, 0x6
/* 8145B498 | 40 82 01 14 */	bne .L_8145B5AC
.L_8145B49C:
/* 8145B49C | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 8145B4A0 | 7F 24 CB 78 */	mr r4, r25
/* 8145B4A4 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 8145B4A8 | 80 7D 00 88 */	lwz r3, 0x88(r29)
/* 8145B4AC | 4B ED FC 3D */	bl isValidAddr__Q33ipl7channel20ChannelScriptManagerFPv
/* 8145B4B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145B4B4 | 41 82 00 F8 */	beq .L_8145B5AC
/* 8145B4B8 | 7C 99 E2 14 */	add r4, r25, r28
/* 8145B4BC | 80 7D 00 88 */	lwz r3, 0x88(r29)
/* 8145B4C0 | 38 84 FF FF */	subi r4, r4, 0x1
/* 8145B4C4 | 4B ED FC 25 */	bl isValidAddr__Q33ipl7channel20ChannelScriptManagerFPv
/* 8145B4C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145B4CC | 41 82 00 E0 */	beq .L_8145B5AC
/* 8145B4D0 | 7F 23 CB 78 */	mr r3, r25
/* 8145B4D4 | 4B F0 01 6D */	bl ODHGetWidth
/* 8145B4D8 | 7C 7E 1B 78 */	mr r30, r3
/* 8145B4DC | 7F 23 CB 78 */	mr r3, r25
/* 8145B4E0 | 4B F0 01 75 */	bl ODHGetHeight
/* 8145B4E4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8145B4E8 | 7C 7F 1B 78 */	mr r31, r3
/* 8145B4EC | 41 80 00 C0 */	blt .L_8145B5AC
/* 8145B4F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145B4F4 | 41 80 00 B8 */	blt .L_8145B5AC
/* 8145B4F8 | 7C 1E 19 D6 */	mullw r0, r30, r3
/* 8145B4FC | 7E C3 B3 78 */	mr r3, r22
/* 8145B500 | 7E E4 BB 78 */	mr r4, r23
/* 8145B504 | 57 C6 04 3E */	clrlwi r6, r30, 16
/* 8145B508 | 57 E7 04 3E */	clrlwi r7, r31, 16
/* 8145B50C | 57 48 06 3E */	clrlwi r8, r26, 24
/* 8145B510 | 1F 00 00 03 */	mulli r24, r0, 0x3
/* 8145B514 | 38 A0 00 00 */	li r5, 0x0
/* 8145B518 | 4B FF 95 D9 */	bl CHANSVmNewImageObject
/* 8145B51C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145B520 | 41 82 00 8C */	beq .L_8145B5AC
/* 8145B524 | 80 9D 00 88 */	lwz r4, 0x88(r29)
/* 8145B528 | 7F 03 C3 78 */	mr r3, r24
/* 8145B52C | 80 D7 00 00 */	lwz r6, 0x0(r23)
/* 8145B530 | 38 A0 00 20 */	li r5, 0x20
/* 8145B534 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 8145B538 | 83 A6 00 00 */	lwz r29, 0x0(r6)
/* 8145B53C | 48 19 CB 99 */	bl __nwa__FUlPQ23EGG4Heapi
/* 8145B540 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145B544 | 7C 77 1B 78 */	mr r23, r3
/* 8145B548 | 41 82 00 64 */	beq .L_8145B5AC
/* 8145B54C | 28 1A 00 04 */	cmplwi r26, 0x4
/* 8145B550 | 40 82 00 24 */	bne .L_8145B574
/* 8145B554 | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8145B558 | 7F 23 CB 78 */	mr r3, r25
/* 8145B55C | 80 DD 00 04 */	lwz r6, 0x4(r29)
/* 8145B560 | 7F 84 E3 78 */	mr r4, r28
/* 8145B564 | 7E E7 BB 78 */	mr r7, r23
/* 8145B568 | 7F 08 C3 78 */	mr r8, r24
/* 8145B56C | 4B F0 00 35 */	bl ODHDecodeRGB565
/* 8145B570 | 48 00 00 20 */	b .L_8145B590
.L_8145B574:
/* 8145B574 | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8145B578 | 7F 23 CB 78 */	mr r3, r25
/* 8145B57C | 80 DD 00 04 */	lwz r6, 0x4(r29)
/* 8145B580 | 7F 84 E3 78 */	mr r4, r28
/* 8145B584 | 7E E7 BB 78 */	mr r7, r23
/* 8145B588 | 7F 08 C3 78 */	mr r8, r24
/* 8145B58C | 4B F0 00 65 */	bl ODHDecodeRGBA8
.L_8145B590:
/* 8145B590 | 57 E0 80 1E */	slwi r0, r31, 16
/* 8145B594 | 7C 00 F3 78 */	or r0, r0, r30
/* 8145B598 | 7C 03 00 00 */	cmpw r3, r0
/* 8145B59C | 40 82 00 08 */	bne .L_8145B5A4
/* 8145B5A0 | 3B 60 00 01 */	li r27, 0x1
.L_8145B5A4:
/* 8145B5A4 | 7E E3 BB 78 */	mr r3, r23
/* 8145B5A8 | 48 19 CB 45 */	bl __dla__FPv
.L_8145B5AC:
/* 8145B5AC | 39 61 00 30 */	addi r11, r1, 0x30
/* 8145B5B0 | 7F 63 DB 78 */	mr r3, r27
/* 8145B5B4 | 48 19 DF 45 */	bl _restgpr_22
/* 8145B5B8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8145B5BC | 7C 08 03 A6 */	mtlr r0
/* 8145B5C0 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8145B5C4 | 4E 80 00 20 */	blr
.endfn decode_odh__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0xD34 | 0x8145B5C8 | size: 0x74
# ipl::cs::savedata::get_size(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn get_size__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145B5C8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145B5CC | 7C 08 02 A6 */	mflr r0
/* 8145B5D0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145B5D4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145B5D8 | 48 19 DE ED */	bl _savegpr_28
/* 8145B5DC | 7C 9D 23 78 */	mr r29, r4
/* 8145B5E0 | 7C 7C 1B 78 */	mr r28, r3
/* 8145B5E4 | 7C BE 2B 78 */	mr r30, r5
/* 8145B5E8 | 3B E0 00 00 */	li r31, 0x0
/* 8145B5EC | 7F A3 EB 78 */	mr r3, r29
/* 8145B5F0 | 48 00 0F 39 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145B5F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145B5F8 | 41 82 00 28 */	beq .L_8145B620
/* 8145B5FC | 80 DD 00 00 */	lwz r6, 0x0(r29)
/* 8145B600 | 7F 83 E3 78 */	mr r3, r28
/* 8145B604 | 7F C4 F3 78 */	mr r4, r30
/* 8145B608 | 38 A0 00 00 */	li r5, 0x0
/* 8145B60C | 80 C6 00 00 */	lwz r6, 0x0(r6)
/* 8145B610 | 80 C6 00 8C */	lwz r6, 0x8c(r6)
/* 8145B614 | 4B FF 03 85 */	bl CHANSVmSetInteger
/* 8145B618 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145B61C | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145B620:
/* 8145B620 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145B624 | 7F E3 FB 78 */	mr r3, r31
/* 8145B628 | 48 19 DE E9 */	bl _restgpr_28
/* 8145B62C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145B630 | 7C 08 03 A6 */	mtlr r0
/* 8145B634 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145B638 | 4E 80 00 20 */	blr
.endfn get_size__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0xDA8 | 0x8145B63C | size: 0x64
# ipl::cs::savedata::get_addr(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn get_addr__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145B63C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145B640 | 7C 08 02 A6 */	mflr r0
/* 8145B644 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145B648 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145B64C | 48 19 DE 7D */	bl _savegpr_29
/* 8145B650 | 7C 7D 1B 78 */	mr r29, r3
/* 8145B654 | 7C BE 2B 78 */	mr r30, r5
/* 8145B658 | 3B E0 00 00 */	li r31, 0x0
/* 8145B65C | 48 00 01 B9 */	bl get___Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdr
/* 8145B660 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145B664 | 7C 66 1B 78 */	mr r6, r3
/* 8145B668 | 41 82 00 1C */	beq .L_8145B684
/* 8145B66C | 7F A3 EB 78 */	mr r3, r29
/* 8145B670 | 7F C4 F3 78 */	mr r4, r30
/* 8145B674 | 38 A0 00 00 */	li r5, 0x0
/* 8145B678 | 4B FF 03 21 */	bl CHANSVmSetInteger
/* 8145B67C | 7C 60 00 34 */	cntlzw r0, r3
/* 8145B680 | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145B684:
/* 8145B684 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145B688 | 7F E3 FB 78 */	mr r3, r31
/* 8145B68C | 48 19 DE 89 */	bl _restgpr_29
/* 8145B690 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145B694 | 7C 08 03 A6 */	mtlr r0
/* 8145B698 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145B69C | 4E 80 00 20 */	blr
.endfn get_addr__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0xE0C | 0x8145B6A0 | size: 0x68
# int ipl::cs::savedata::get<float>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "get<f>__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 8145B6A0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145B6A4 | 7C 08 02 A6 */	mflr r0
/* 8145B6A8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145B6AC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145B6B0 | 48 19 DE 19 */	bl _savegpr_29
/* 8145B6B4 | 7C 7D 1B 78 */	mr r29, r3
/* 8145B6B8 | 7C BE 2B 78 */	mr r30, r5
/* 8145B6BC | 3B E0 00 00 */	li r31, 0x0
/* 8145B6C0 | 48 00 01 55 */	bl get___Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdr
/* 8145B6C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145B6C8 | 41 82 00 24 */	beq .L_8145B6EC
/* 8145B6CC | 54 60 07 BF */	clrlwi. r0, r3, 30
/* 8145B6D0 | 40 82 00 1C */	bne .L_8145B6EC
/* 8145B6D4 | C0 23 00 00 */	lfs f1, 0x0(r3)
/* 8145B6D8 | 7F A3 EB 78 */	mr r3, r29
/* 8145B6DC | 7F C4 F3 78 */	mr r4, r30
/* 8145B6E0 | 4B FF 03 0D */	bl CHANSVmSetFloat
/* 8145B6E4 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145B6E8 | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145B6EC:
/* 8145B6EC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145B6F0 | 7F E3 FB 78 */	mr r3, r31
/* 8145B6F4 | 48 19 DE 21 */	bl _restgpr_29
/* 8145B6F8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145B6FC | 7C 08 03 A6 */	mtlr r0
/* 8145B700 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145B704 | 4E 80 00 20 */	blr
.endfn "get<f>__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# .text:0xE74 | 0x8145B708 | size: 0x84
# ipl::cs::savedata::get_str(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn get_str__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145B708 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145B70C | 7C 08 02 A6 */	mflr r0
/* 8145B710 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145B714 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145B718 | 48 19 DD A9 */	bl _savegpr_27
/* 8145B71C | 7C 9C 23 78 */	mr r28, r4
/* 8145B720 | 7C 7B 1B 78 */	mr r27, r3
/* 8145B724 | 7C BD 2B 78 */	mr r29, r5
/* 8145B728 | 3B C0 00 00 */	li r30, 0x0
/* 8145B72C | 38 80 00 01 */	li r4, 0x1
/* 8145B730 | 4B FF 0F 91 */	bl CHANSVmGetArgInteger
/* 8145B734 | 7C 7F 1B 78 */	mr r31, r3
/* 8145B738 | 7F 63 DB 78 */	mr r3, r27
/* 8145B73C | 7F 84 E3 78 */	mr r4, r28
/* 8145B740 | 48 00 00 D5 */	bl get___Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdr
/* 8145B744 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145B748 | 7C 65 1B 78 */	mr r5, r3
/* 8145B74C | 41 82 00 24 */	beq .L_8145B770
/* 8145B750 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145B754 | 41 82 00 1C */	beq .L_8145B770
/* 8145B758 | 80 DF 00 04 */	lwz r6, 0x4(r31)
/* 8145B75C | 7F 63 DB 78 */	mr r3, r27
/* 8145B760 | 7F A4 EB 78 */	mr r4, r29
/* 8145B764 | 4B FF 03 79 */	bl CHANSVmSetU16StringFromU8
/* 8145B768 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145B76C | 54 1E D9 7E */	srwi r30, r0, 5
.L_8145B770:
/* 8145B770 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145B774 | 7F C3 F3 78 */	mr r3, r30
/* 8145B778 | 48 19 DD 95 */	bl _restgpr_27
/* 8145B77C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145B780 | 7C 08 03 A6 */	mtlr r0
/* 8145B784 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145B788 | 4E 80 00 20 */	blr
.endfn get_str__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0xEF8 | 0x8145B78C | size: 0x88
# ipl::cs::savedata::get_wstr(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn get_wstr__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145B78C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145B790 | 7C 08 02 A6 */	mflr r0
/* 8145B794 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145B798 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145B79C | 48 19 DD 25 */	bl _savegpr_27
/* 8145B7A0 | 7C 9C 23 78 */	mr r28, r4
/* 8145B7A4 | 7C 7B 1B 78 */	mr r27, r3
/* 8145B7A8 | 7C BD 2B 78 */	mr r29, r5
/* 8145B7AC | 3B C0 00 00 */	li r30, 0x0
/* 8145B7B0 | 38 80 00 01 */	li r4, 0x1
/* 8145B7B4 | 4B FF 0F 0D */	bl CHANSVmGetArgInteger
/* 8145B7B8 | 7C 7F 1B 78 */	mr r31, r3
/* 8145B7BC | 7F 63 DB 78 */	mr r3, r27
/* 8145B7C0 | 7F 84 E3 78 */	mr r4, r28
/* 8145B7C4 | 48 00 00 51 */	bl get___Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdr
/* 8145B7C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145B7CC | 7C 65 1B 78 */	mr r5, r3
/* 8145B7D0 | 41 82 00 28 */	beq .L_8145B7F8
/* 8145B7D4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145B7D8 | 41 82 00 20 */	beq .L_8145B7F8
/* 8145B7DC | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 8145B7E0 | 7F 63 DB 78 */	mr r3, r27
/* 8145B7E4 | 7F A4 EB 78 */	mr r4, r29
/* 8145B7E8 | 54 06 08 3C */	slwi r6, r0, 1
/* 8145B7EC | 4B FF 02 5D */	bl CHANSVmSetU16String
/* 8145B7F0 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145B7F4 | 54 1E D9 7E */	srwi r30, r0, 5
.L_8145B7F8:
/* 8145B7F8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145B7FC | 7F C3 F3 78 */	mr r3, r30
/* 8145B800 | 48 19 DD 0D */	bl _restgpr_27
/* 8145B804 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145B808 | 7C 08 03 A6 */	mtlr r0
/* 8145B80C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145B810 | 4E 80 00 20 */	blr
.endfn get_wstr__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0xF80 | 0x8145B814 | size: 0x7C
# ipl::cs::savedata::get_(CHANSVm*, CHANSVmObjHdr*)
.fn get___Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdr, global
/* 8145B814 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145B818 | 7C 08 02 A6 */	mflr r0
/* 8145B81C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145B820 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145B824 | 48 19 DC A5 */	bl _savegpr_29
/* 8145B828 | 7C 9E 23 78 */	mr r30, r4
/* 8145B82C | 7C 7D 1B 78 */	mr r29, r3
/* 8145B830 | 7F C3 F3 78 */	mr r3, r30
/* 8145B834 | 3B E0 00 00 */	li r31, 0x0
/* 8145B838 | 48 00 0C F1 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145B83C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145B840 | 41 82 00 34 */	beq .L_8145B874
/* 8145B844 | 80 BE 00 00 */	lwz r5, 0x0(r30)
/* 8145B848 | 7F A3 EB 78 */	mr r3, r29
/* 8145B84C | 38 80 00 00 */	li r4, 0x0
/* 8145B850 | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 8145B854 | 83 E5 00 88 */	lwz r31, 0x88(r5)
/* 8145B858 | 4B FF 0E 69 */	bl CHANSVmGetArgInteger
/* 8145B85C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145B860 | 41 82 00 14 */	beq .L_8145B874
/* 8145B864 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145B868 | 41 82 00 0C */	beq .L_8145B874
/* 8145B86C | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8145B870 | 7F FF 02 14 */	add r31, r31, r0
.L_8145B874:
/* 8145B874 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145B878 | 7F E3 FB 78 */	mr r3, r31
/* 8145B87C | 48 19 DC 99 */	bl _restgpr_29
/* 8145B880 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145B884 | 7C 08 03 A6 */	mtlr r0
/* 8145B888 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145B88C | 4E 80 00 20 */	blr
.endfn get___Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdr

# .text:0xFFC | 0x8145B890 | size: 0x90
# ipl::cs::savedata::calc_crc16(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn calc_crc16__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145B890 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145B894 | 7C 08 02 A6 */	mflr r0
/* 8145B898 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145B89C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145B8A0 | 48 19 DC 21 */	bl _savegpr_27
/* 8145B8A4 | 7C 9C 23 78 */	mr r28, r4
/* 8145B8A8 | 7C 7B 1B 78 */	mr r27, r3
/* 8145B8AC | 7C BD 2B 78 */	mr r29, r5
/* 8145B8B0 | 3B C0 00 00 */	li r30, 0x0
/* 8145B8B4 | 38 80 00 01 */	li r4, 0x1
/* 8145B8B8 | 4B FF 0E 09 */	bl CHANSVmGetArgInteger
/* 8145B8BC | 7C 7F 1B 78 */	mr r31, r3
/* 8145B8C0 | 7F 63 DB 78 */	mr r3, r27
/* 8145B8C4 | 7F 84 E3 78 */	mr r4, r28
/* 8145B8C8 | 4B FF FF 4D */	bl get___Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdr
/* 8145B8CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145B8D0 | 41 82 00 34 */	beq .L_8145B904
/* 8145B8D4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145B8D8 | 41 82 00 2C */	beq .L_8145B904
/* 8145B8DC | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 8145B8E0 | 48 03 7C AD */	bl NETCalcCRC16
/* 8145B8E4 | 7C 60 1B 78 */	mr r0, r3
/* 8145B8E8 | 7F 63 DB 78 */	mr r3, r27
/* 8145B8EC | 7F A4 EB 78 */	mr r4, r29
/* 8145B8F0 | 38 A0 00 00 */	li r5, 0x0
/* 8145B8F4 | 54 06 04 3E */	clrlwi r6, r0, 16
/* 8145B8F8 | 4B FF 00 A1 */	bl CHANSVmSetInteger
/* 8145B8FC | 7C 60 00 34 */	cntlzw r0, r3
/* 8145B900 | 54 1E D9 7E */	srwi r30, r0, 5
.L_8145B904:
/* 8145B904 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145B908 | 7F C3 F3 78 */	mr r3, r30
/* 8145B90C | 48 19 DC 01 */	bl _restgpr_27
/* 8145B910 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145B914 | 7C 08 03 A6 */	mtlr r0
/* 8145B918 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145B91C | 4E 80 00 20 */	blr
.endfn calc_crc16__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x108C | 0x8145B920 | size: 0x8C
# ipl::cs::savedata::calc_crc32(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn calc_crc32__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145B920 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145B924 | 7C 08 02 A6 */	mflr r0
/* 8145B928 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145B92C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145B930 | 48 19 DB 91 */	bl _savegpr_27
/* 8145B934 | 7C 9C 23 78 */	mr r28, r4
/* 8145B938 | 7C 7B 1B 78 */	mr r27, r3
/* 8145B93C | 7C BD 2B 78 */	mr r29, r5
/* 8145B940 | 3B C0 00 00 */	li r30, 0x0
/* 8145B944 | 38 80 00 01 */	li r4, 0x1
/* 8145B948 | 4B FF 0D 79 */	bl CHANSVmGetArgInteger
/* 8145B94C | 7C 7F 1B 78 */	mr r31, r3
/* 8145B950 | 7F 63 DB 78 */	mr r3, r27
/* 8145B954 | 7F 84 E3 78 */	mr r4, r28
/* 8145B958 | 4B FF FE BD */	bl get___Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdr
/* 8145B95C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145B960 | 41 82 00 30 */	beq .L_8145B990
/* 8145B964 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145B968 | 41 82 00 28 */	beq .L_8145B990
/* 8145B96C | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 8145B970 | 48 03 7D 51 */	bl NETCalcCRC32
/* 8145B974 | 7C 66 1B 78 */	mr r6, r3
/* 8145B978 | 7F 63 DB 78 */	mr r3, r27
/* 8145B97C | 7F A4 EB 78 */	mr r4, r29
/* 8145B980 | 38 A0 00 00 */	li r5, 0x0
/* 8145B984 | 4B FF 00 15 */	bl CHANSVmSetInteger
/* 8145B988 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145B98C | 54 1E D9 7E */	srwi r30, r0, 5
.L_8145B990:
/* 8145B990 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145B994 | 7F C3 F3 78 */	mr r3, r30
/* 8145B998 | 48 19 DB 75 */	bl _restgpr_27
/* 8145B99C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145B9A0 | 7C 08 03 A6 */	mtlr r0
/* 8145B9A4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145B9A8 | 4E 80 00 20 */	blr
.endfn calc_crc32__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x1118 | 0x8145B9AC | size: 0x90
# ipl::cs::savedata::_ctor(CHANSVm*, CHANSVmObjHdr*, unsigned long, unsigned long)
.fn _ctor__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrUlUl, global
/* 8145B9AC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145B9B0 | 7C 08 02 A6 */	mflr r0
/* 8145B9B4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145B9B8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145B9BC | 48 19 DB 01 */	bl _savegpr_26
/* 8145B9C0 | 7C BC 2B 78 */	mr r28, r5
/* 8145B9C4 | 7C 7A 1B 78 */	mr r26, r3
/* 8145B9C8 | 7C 9B 23 78 */	mr r27, r4
/* 8145B9CC | 7C DD 33 78 */	mr r29, r6
/* 8145B9D0 | 3B E0 00 00 */	li r31, 0x0
/* 8145B9D4 | 38 A0 00 90 */	li r5, 0x90
/* 8145B9D8 | 4B FE F2 7D */	bl CHANSVmNewObjData
/* 8145B9DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145B9E0 | 7C 7E 1B 78 */	mr r30, r3
/* 8145B9E4 | 41 82 00 3C */	beq .L_8145BA20
/* 8145B9E8 | 38 80 00 00 */	li r4, 0x0
/* 8145B9EC | 38 A0 00 90 */	li r5, 0x90
/* 8145B9F0 | 4B ED 49 45 */	bl memset
/* 8145B9F4 | 93 9E 00 88 */	stw r28, 0x88(r30)
/* 8145B9F8 | 3C 80 81 67 */	lis r4, lbl_8166A7B1@ha
/* 8145B9FC | 38 00 00 08 */	li r0, 0x8
/* 8145BA00 | 7F 43 D3 78 */	mr r3, r26
/* 8145BA04 | 93 BE 00 8C */	stw r29, 0x8c(r30)
/* 8145BA08 | 38 84 A7 B1 */	addi r4, r4, lbl_8166A7B1@l
/* 8145BA0C | 98 1B 00 08 */	stb r0, 0x8(r27)
/* 8145BA10 | 4B FF 0D 65 */	bl CHANSVmFindNativeClass
/* 8145BA14 | 30 03 FF FF */	subic r0, r3, 0x1
/* 8145BA18 | 90 7B 00 0C */	stw r3, 0xc(r27)
/* 8145BA1C | 7F E0 19 10 */	subfe r31, r0, r3
.L_8145BA20:
/* 8145BA20 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145BA24 | 7F E3 FB 78 */	mr r3, r31
/* 8145BA28 | 48 19 DA E1 */	bl _restgpr_26
/* 8145BA2C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145BA30 | 7C 08 03 A6 */	mtlr r0
/* 8145BA34 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145BA38 | 4E 80 00 20 */	blr
.endfn _ctor__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrUlUl

# .text:0x11A8 | 0x8145BA3C | size: 0xFC
# ipl::cs::savedata::ctor(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn ctor__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145BA3C | 94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8145BA40 | 7C 08 02 A6 */	mflr r0
/* 8145BA44 | 90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8145BA48 | 39 61 00 B0 */	addi r11, r1, 0xb0
/* 8145BA4C | 48 19 DA 75 */	bl _savegpr_27
/* 8145BA50 | 7C 7B 1B 78 */	mr r27, r3
/* 8145BA54 | 7C BC 2B 78 */	mr r28, r5
/* 8145BA58 | 3B E0 00 00 */	li r31, 0x0
/* 8145BA5C | 38 80 00 00 */	li r4, 0x0
/* 8145BA60 | 4B FF 0C D9 */	bl CHANSVmGetArgString
/* 8145BA64 | 7C 7E 1B 78 */	mr r30, r3
/* 8145BA68 | 7F 63 DB 78 */	mr r3, r27
/* 8145BA6C | 38 80 00 01 */	li r4, 0x1
/* 8145BA70 | 4B FF 0C C9 */	bl CHANSVmGetArgString
/* 8145BA74 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8145BA78 | 7C 7D 1B 78 */	mr r29, r3
/* 8145BA7C | 41 82 00 A0 */	beq .L_8145BB1C
/* 8145BA80 | 7F 63 DB 78 */	mr r3, r27
/* 8145BA84 | 7F 84 E3 78 */	mr r4, r28
/* 8145BA88 | 38 A0 00 90 */	li r5, 0x90
/* 8145BA8C | 4B FE F1 C9 */	bl CHANSVmNewObjData
/* 8145BA90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145BA94 | 7C 7C 1B 78 */	mr r28, r3
/* 8145BA98 | 41 82 00 84 */	beq .L_8145BB1C
/* 8145BA9C | 38 80 00 00 */	li r4, 0x0
/* 8145BAA0 | 38 A0 00 90 */	li r5, 0x90
/* 8145BAA4 | 4B ED 48 91 */	bl memset
/* 8145BAA8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8145BAAC | 38 80 00 00 */	li r4, 0x0
/* 8145BAB0 | 38 A0 00 84 */	li r5, 0x84
/* 8145BAB4 | 4B ED 48 81 */	bl memset
/* 8145BAB8 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8145BABC | 41 82 00 40 */	beq .L_8145BAFC
/* 8145BAC0 | 7F 83 E3 78 */	mr r3, r28
/* 8145BAC4 | 7F C6 F3 78 */	mr r6, r30
/* 8145BAC8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8145BACC | 38 A0 00 40 */	li r5, 0x40
/* 8145BAD0 | 48 00 0B 19 */	bl utf16_to_ascii__Q33ipl2cs4utilFPcPwiPC13CHANSVmObjHdr
/* 8145BAD4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8145BAD8 | 38 80 00 00 */	li r4, 0x0
/* 8145BADC | 38 A0 00 84 */	li r5, 0x84
/* 8145BAE0 | 4B ED 48 55 */	bl memset
/* 8145BAE4 | 7F A6 EB 78 */	mr r6, r29
/* 8145BAE8 | 38 7C 00 42 */	addi r3, r28, 0x42
/* 8145BAEC | 38 81 00 08 */	addi r4, r1, 0x8
/* 8145BAF0 | 38 A0 00 40 */	li r5, 0x40
/* 8145BAF4 | 48 00 0A F5 */	bl utf16_to_ascii__Q33ipl2cs4utilFPcPwiPC13CHANSVmObjHdr
/* 8145BAF8 | 48 00 00 18 */	b .L_8145BB10
.L_8145BAFC:
/* 8145BAFC | 7F C6 F3 78 */	mr r6, r30
/* 8145BB00 | 38 7C 00 42 */	addi r3, r28, 0x42
/* 8145BB04 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8145BB08 | 38 A0 00 40 */	li r5, 0x40
/* 8145BB0C | 48 00 0A DD */	bl utf16_to_ascii__Q33ipl2cs4utilFPcPwiPC13CHANSVmObjHdr
.L_8145BB10:
/* 8145BB10 | 38 00 00 01 */	li r0, 0x1
/* 8145BB14 | 3B E0 00 01 */	li r31, 0x1
/* 8145BB18 | 98 1C 00 84 */	stb r0, 0x84(r28)
.L_8145BB1C:
/* 8145BB1C | 39 61 00 B0 */	addi r11, r1, 0xb0
/* 8145BB20 | 7F E3 FB 78 */	mr r3, r31
/* 8145BB24 | 48 19 D9 E9 */	bl _restgpr_27
/* 8145BB28 | 80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8145BB2C | 7C 08 03 A6 */	mtlr r0
/* 8145BB30 | 38 21 00 B0 */	addi r1, r1, 0xb0
/* 8145BB34 | 4E 80 00 20 */	blr
.endfn ctor__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x12A4 | 0x8145BB38 | size: 0xA0
# ipl::cs::savedata::init(CHANSVm*)
.fn init__Q33ipl2cs8savedataFP7CHANSVm, global
/* 8145BB38 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145BB3C | 7C 08 02 A6 */	mflr r0
/* 8145BB40 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145BB44 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145BB48 | 48 19 D9 81 */	bl _savegpr_29
/* 8145BB4C | 3C 80 81 67 */	lis r4, lbl_8166A7B1@ha
/* 8145BB50 | 3C A0 81 46 */	lis r5, ctor__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr@ha
/* 8145BB54 | 7C 7D 1B 78 */	mr r29, r3
/* 8145BB58 | 3B E0 00 00 */	li r31, 0x0
/* 8145BB5C | 38 84 A7 B1 */	addi r4, r4, lbl_8166A7B1@l
/* 8145BB60 | 38 A5 BA 3C */	addi r5, r5, ctor__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr@l
/* 8145BB64 | 38 C0 00 00 */	li r6, 0x0
/* 8145BB68 | 4B FF 0D 6D */	bl CHANSVmAddNativeClass
/* 8145BB6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145BB70 | 7C 7E 1B 78 */	mr r30, r3
/* 8145BB74 | 41 82 00 48 */	beq .L_8145BBBC
/* 8145BB78 | 3C A0 81 61 */	lis r5, lbl_81617518@ha
/* 8145BB7C | 7F A3 EB 78 */	mr r3, r29
/* 8145BB80 | 7F C4 F3 78 */	mr r4, r30
/* 8145BB84 | 38 C0 00 15 */	li r6, 0x15
/* 8145BB88 | 38 A5 75 18 */	addi r5, r5, lbl_81617518@l
/* 8145BB8C | 4B FF 0E E5 */	bl CHANSVmAddNativeMethodList
/* 8145BB90 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145BB94 | 3C A0 81 61 */	lis r5, lbl_816175C0@ha
/* 8145BB98 | 7F A3 EB 78 */	mr r3, r29
/* 8145BB9C | 7F C4 F3 78 */	mr r4, r30
/* 8145BBA0 | 54 1F D9 7E */	srwi r31, r0, 5
/* 8145BBA4 | 38 A5 75 C0 */	addi r5, r5, lbl_816175C0@l
/* 8145BBA8 | 38 C0 00 03 */	li r6, 0x3
/* 8145BBAC | 4B FF 10 AD */	bl CHANSVmAddNativePropertyAccessorsList
/* 8145BBB0 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145BBB4 | 54 00 D9 7E */	srwi r0, r0, 5
/* 8145BBB8 | 7F FF 00 38 */	and r31, r31, r0
.L_8145BBBC:
/* 8145BBBC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145BBC0 | 7F E3 FB 78 */	mr r3, r31
/* 8145BBC4 | 48 19 D9 51 */	bl _restgpr_29
/* 8145BBC8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145BBCC | 7C 08 03 A6 */	mtlr r0
/* 8145BBD0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145BBD4 | 4E 80 00 20 */	blr
.endfn init__Q33ipl2cs8savedataFP7CHANSVm

# .text:0x1344 | 0x8145BBD8 | size: 0x34
# int ipl::cs::util::get_int<16>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "get_int<16>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 8145BBD8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8145BBDC | 7C 08 02 A6 */	mflr r0
/* 8145BBE0 | 7C A4 2B 78 */	mr r4, r5
/* 8145BBE4 | 38 C0 00 10 */	li r6, 0x10
/* 8145BBE8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8145BBEC | 38 A0 00 00 */	li r5, 0x0
/* 8145BBF0 | 4B FE FD A9 */	bl CHANSVmSetInteger
/* 8145BBF4 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145BBF8 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8145BBFC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8145BC00 | 7C 08 03 A6 */	mtlr r0
/* 8145BC04 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8145BC08 | 4E 80 00 20 */	blr
.endfn "get_int<16>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# .text:0x1378 | 0x8145BC0C | size: 0x34
# int ipl::cs::util::get_int<32>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "get_int<32>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 8145BC0C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8145BC10 | 7C 08 02 A6 */	mflr r0
/* 8145BC14 | 7C A4 2B 78 */	mr r4, r5
/* 8145BC18 | 38 C0 00 20 */	li r6, 0x20
/* 8145BC1C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8145BC20 | 38 A0 00 00 */	li r5, 0x0
/* 8145BC24 | 4B FE FD 75 */	bl CHANSVmSetInteger
/* 8145BC28 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145BC2C | 54 03 D9 7E */	srwi r3, r0, 5
/* 8145BC30 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8145BC34 | 7C 08 03 A6 */	mtlr r0
/* 8145BC38 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8145BC3C | 4E 80 00 20 */	blr
.endfn "get_int<32>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# .text:0x13AC | 0x8145BC40 | size: 0x34
# int ipl::cs::util::get_int<48>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "get_int<48>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 8145BC40 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8145BC44 | 7C 08 02 A6 */	mflr r0
/* 8145BC48 | 7C A4 2B 78 */	mr r4, r5
/* 8145BC4C | 38 C0 00 30 */	li r6, 0x30
/* 8145BC50 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8145BC54 | 38 A0 00 00 */	li r5, 0x0
/* 8145BC58 | 4B FE FD 41 */	bl CHANSVmSetInteger
/* 8145BC5C | 7C 60 00 34 */	cntlzw r0, r3
/* 8145BC60 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8145BC64 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8145BC68 | 7C 08 03 A6 */	mtlr r0
/* 8145BC6C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8145BC70 | 4E 80 00 20 */	blr
.endfn "get_int<48>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# .text:0x13E0 | 0x8145BC74 | size: 0x70
# int ipl::cs::savedata::get<long long>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "get<x>__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 8145BC74 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145BC78 | 7C 08 02 A6 */	mflr r0
/* 8145BC7C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145BC80 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145BC84 | 48 19 D8 45 */	bl _savegpr_29
/* 8145BC88 | 7C 7D 1B 78 */	mr r29, r3
/* 8145BC8C | 7C BE 2B 78 */	mr r30, r5
/* 8145BC90 | 3B E0 00 00 */	li r31, 0x0
/* 8145BC94 | 4B FF FB 81 */	bl get___Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdr
/* 8145BC98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145BC9C | 7C 64 1B 78 */	mr r4, r3
/* 8145BCA0 | 41 82 00 28 */	beq .L_8145BCC8
/* 8145BCA4 | 54 60 07 7F */	clrlwi. r0, r3, 29
/* 8145BCA8 | 40 82 00 20 */	bne .L_8145BCC8
/* 8145BCAC | 80 A4 00 00 */	lwz r5, 0x0(r4)
/* 8145BCB0 | 7F A3 EB 78 */	mr r3, r29
/* 8145BCB4 | 80 C4 00 04 */	lwz r6, 0x4(r4)
/* 8145BCB8 | 7F C4 F3 78 */	mr r4, r30
/* 8145BCBC | 4B FE FC DD */	bl CHANSVmSetInteger
/* 8145BCC0 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145BCC4 | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145BCC8:
/* 8145BCC8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145BCCC | 7F E3 FB 78 */	mr r3, r31
/* 8145BCD0 | 48 19 D8 45 */	bl _restgpr_29
/* 8145BCD4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145BCD8 | 7C 08 03 A6 */	mtlr r0
/* 8145BCDC | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145BCE0 | 4E 80 00 20 */	blr
.endfn "get<x>__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# .text:0x1450 | 0x8145BCE4 | size: 0x6C
# int ipl::cs::savedata::get<unsigned long>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "get<Ul>__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 8145BCE4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145BCE8 | 7C 08 02 A6 */	mflr r0
/* 8145BCEC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145BCF0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145BCF4 | 48 19 D7 D5 */	bl _savegpr_29
/* 8145BCF8 | 7C 7D 1B 78 */	mr r29, r3
/* 8145BCFC | 7C BE 2B 78 */	mr r30, r5
/* 8145BD00 | 3B E0 00 00 */	li r31, 0x0
/* 8145BD04 | 4B FF FB 11 */	bl get___Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdr
/* 8145BD08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145BD0C | 41 82 00 28 */	beq .L_8145BD34
/* 8145BD10 | 54 60 07 BF */	clrlwi. r0, r3, 30
/* 8145BD14 | 40 82 00 20 */	bne .L_8145BD34
/* 8145BD18 | 80 C3 00 00 */	lwz r6, 0x0(r3)
/* 8145BD1C | 7F A3 EB 78 */	mr r3, r29
/* 8145BD20 | 7F C4 F3 78 */	mr r4, r30
/* 8145BD24 | 38 A0 00 00 */	li r5, 0x0
/* 8145BD28 | 4B FE FC 71 */	bl CHANSVmSetInteger
/* 8145BD2C | 7C 60 00 34 */	cntlzw r0, r3
/* 8145BD30 | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145BD34:
/* 8145BD34 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145BD38 | 7F E3 FB 78 */	mr r3, r31
/* 8145BD3C | 48 19 D7 D9 */	bl _restgpr_29
/* 8145BD40 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145BD44 | 7C 08 03 A6 */	mtlr r0
/* 8145BD48 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145BD4C | 4E 80 00 20 */	blr
.endfn "get<Ul>__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# .text:0x14BC | 0x8145BD50 | size: 0x6C
# int ipl::cs::savedata::get<long>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "get<l>__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 8145BD50 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145BD54 | 7C 08 02 A6 */	mflr r0
/* 8145BD58 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145BD5C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145BD60 | 48 19 D7 69 */	bl _savegpr_29
/* 8145BD64 | 7C 7D 1B 78 */	mr r29, r3
/* 8145BD68 | 7C BE 2B 78 */	mr r30, r5
/* 8145BD6C | 3B E0 00 00 */	li r31, 0x0
/* 8145BD70 | 4B FF FA A5 */	bl get___Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdr
/* 8145BD74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145BD78 | 41 82 00 28 */	beq .L_8145BDA0
/* 8145BD7C | 54 60 07 BF */	clrlwi. r0, r3, 30
/* 8145BD80 | 40 82 00 20 */	bne .L_8145BDA0
/* 8145BD84 | 80 C3 00 00 */	lwz r6, 0x0(r3)
/* 8145BD88 | 7F A3 EB 78 */	mr r3, r29
/* 8145BD8C | 7F C4 F3 78 */	mr r4, r30
/* 8145BD90 | 7C C5 FE 70 */	srawi r5, r6, 31
/* 8145BD94 | 4B FE FC 05 */	bl CHANSVmSetInteger
/* 8145BD98 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145BD9C | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145BDA0:
/* 8145BDA0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145BDA4 | 7F E3 FB 78 */	mr r3, r31
/* 8145BDA8 | 48 19 D7 6D */	bl _restgpr_29
/* 8145BDAC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145BDB0 | 7C 08 03 A6 */	mtlr r0
/* 8145BDB4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145BDB8 | 4E 80 00 20 */	blr
.endfn "get<l>__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# .text:0x1528 | 0x8145BDBC | size: 0x6C
# int ipl::cs::savedata::get<unsigned short>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "get<Us>__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 8145BDBC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145BDC0 | 7C 08 02 A6 */	mflr r0
/* 8145BDC4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145BDC8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145BDCC | 48 19 D6 FD */	bl _savegpr_29
/* 8145BDD0 | 7C 7D 1B 78 */	mr r29, r3
/* 8145BDD4 | 7C BE 2B 78 */	mr r30, r5
/* 8145BDD8 | 3B E0 00 00 */	li r31, 0x0
/* 8145BDDC | 4B FF FA 39 */	bl get___Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdr
/* 8145BDE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145BDE4 | 41 82 00 28 */	beq .L_8145BE0C
/* 8145BDE8 | 54 60 07 FF */	clrlwi. r0, r3, 31
/* 8145BDEC | 40 82 00 20 */	bne .L_8145BE0C
/* 8145BDF0 | A0 C3 00 00 */	lhz r6, 0x0(r3)
/* 8145BDF4 | 7F A3 EB 78 */	mr r3, r29
/* 8145BDF8 | 7F C4 F3 78 */	mr r4, r30
/* 8145BDFC | 38 A0 00 00 */	li r5, 0x0
/* 8145BE00 | 4B FE FB 99 */	bl CHANSVmSetInteger
/* 8145BE04 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145BE08 | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145BE0C:
/* 8145BE0C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145BE10 | 7F E3 FB 78 */	mr r3, r31
/* 8145BE14 | 48 19 D7 01 */	bl _restgpr_29
/* 8145BE18 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145BE1C | 7C 08 03 A6 */	mtlr r0
/* 8145BE20 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145BE24 | 4E 80 00 20 */	blr
.endfn "get<Us>__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# .text:0x1594 | 0x8145BE28 | size: 0x6C
# int ipl::cs::savedata::get<short>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "get<s>__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 8145BE28 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145BE2C | 7C 08 02 A6 */	mflr r0
/* 8145BE30 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145BE34 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145BE38 | 48 19 D6 91 */	bl _savegpr_29
/* 8145BE3C | 7C 7D 1B 78 */	mr r29, r3
/* 8145BE40 | 7C BE 2B 78 */	mr r30, r5
/* 8145BE44 | 3B E0 00 00 */	li r31, 0x0
/* 8145BE48 | 4B FF F9 CD */	bl get___Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdr
/* 8145BE4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145BE50 | 41 82 00 28 */	beq .L_8145BE78
/* 8145BE54 | 54 60 07 FF */	clrlwi. r0, r3, 31
/* 8145BE58 | 40 82 00 20 */	bne .L_8145BE78
/* 8145BE5C | A8 C3 00 00 */	lha r6, 0x0(r3)
/* 8145BE60 | 7F A3 EB 78 */	mr r3, r29
/* 8145BE64 | 7F C4 F3 78 */	mr r4, r30
/* 8145BE68 | 7C C5 FE 70 */	srawi r5, r6, 31
/* 8145BE6C | 4B FE FB 2D */	bl CHANSVmSetInteger
/* 8145BE70 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145BE74 | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145BE78:
/* 8145BE78 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145BE7C | 7F E3 FB 78 */	mr r3, r31
/* 8145BE80 | 48 19 D6 95 */	bl _restgpr_29
/* 8145BE84 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145BE88 | 7C 08 03 A6 */	mtlr r0
/* 8145BE8C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145BE90 | 4E 80 00 20 */	blr
.endfn "get<s>__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# .text:0x1600 | 0x8145BE94 | size: 0x64
# int ipl::cs::savedata::get<unsigned char>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "get<Uc>__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 8145BE94 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145BE98 | 7C 08 02 A6 */	mflr r0
/* 8145BE9C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145BEA0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145BEA4 | 48 19 D6 25 */	bl _savegpr_29
/* 8145BEA8 | 7C 7D 1B 78 */	mr r29, r3
/* 8145BEAC | 7C BE 2B 78 */	mr r30, r5
/* 8145BEB0 | 3B E0 00 00 */	li r31, 0x0
/* 8145BEB4 | 4B FF F9 61 */	bl get___Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdr
/* 8145BEB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145BEBC | 41 82 00 20 */	beq .L_8145BEDC
/* 8145BEC0 | 88 C3 00 00 */	lbz r6, 0x0(r3)
/* 8145BEC4 | 7F A3 EB 78 */	mr r3, r29
/* 8145BEC8 | 7F C4 F3 78 */	mr r4, r30
/* 8145BECC | 38 A0 00 00 */	li r5, 0x0
/* 8145BED0 | 4B FE FA C9 */	bl CHANSVmSetInteger
/* 8145BED4 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145BED8 | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145BEDC:
/* 8145BEDC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145BEE0 | 7F E3 FB 78 */	mr r3, r31
/* 8145BEE4 | 48 19 D6 31 */	bl _restgpr_29
/* 8145BEE8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145BEEC | 7C 08 03 A6 */	mtlr r0
/* 8145BEF0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145BEF4 | 4E 80 00 20 */	blr
.endfn "get<Uc>__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# .text:0x1664 | 0x8145BEF8 | size: 0x68
# int ipl::cs::savedata::get<signed char>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "get<Sc>__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 8145BEF8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145BEFC | 7C 08 02 A6 */	mflr r0
/* 8145BF00 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145BF04 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145BF08 | 48 19 D5 C1 */	bl _savegpr_29
/* 8145BF0C | 7C 7D 1B 78 */	mr r29, r3
/* 8145BF10 | 7C BE 2B 78 */	mr r30, r5
/* 8145BF14 | 3B E0 00 00 */	li r31, 0x0
/* 8145BF18 | 4B FF F8 FD */	bl get___Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdr
/* 8145BF1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145BF20 | 41 82 00 24 */	beq .L_8145BF44
/* 8145BF24 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 8145BF28 | 7F A3 EB 78 */	mr r3, r29
/* 8145BF2C | 7F C4 F3 78 */	mr r4, r30
/* 8145BF30 | 7C 06 07 74 */	extsb r6, r0
/* 8145BF34 | 7C C5 FE 70 */	srawi r5, r6, 31
/* 8145BF38 | 4B FE FA 61 */	bl CHANSVmSetInteger
/* 8145BF3C | 7C 60 00 34 */	cntlzw r0, r3
/* 8145BF40 | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145BF44:
/* 8145BF44 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145BF48 | 7F E3 FB 78 */	mr r3, r31
/* 8145BF4C | 48 19 D5 C9 */	bl _restgpr_29
/* 8145BF50 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145BF54 | 7C 08 03 A6 */	mtlr r0
/* 8145BF58 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145BF5C | 4E 80 00 20 */	blr
.endfn "get<Sc>__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# 0x81617518..0x816175E8 | size: 0xD0
.rodata
.balign 8

# .rodata:0x0 | 0x81617518 | size: 0xA8
.obj lbl_81617518, global
	.4byte lbl_81697875
	.4byte load_to_work__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A7BA
	.4byte load_to_heap__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A7C5
	.4byte uncomp_to_work__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A7D0
	.4byte uncomp_to_heap__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A7E1
	.4byte copy_to_heap__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A7EC
	.4byte create_blob__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A7F7
	.4byte decode_odh__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8169787A
	.4byte get_size__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_81697882
	.4byte "get<x>__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte lbl_81697889
	.4byte "get<Ul>__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte lbl_81697890
	.4byte "get<l>__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte lbl_81697897
	.4byte "get<f>__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte lbl_8169789E
	.4byte "get<Us>__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte lbl_816978A5
	.4byte "get<s>__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte lbl_816978AC
	.4byte "get<Uc>__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte lbl_816978B2
	.4byte "get<Sc>__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte lbl_816978B8
	.4byte get_str__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_816978BF
	.4byte get_wstr__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_816978C7
	.4byte get_addr__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A801
	.4byte calc_crc16__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A80E
	.4byte calc_crc32__Q33ipl2cs8savedataFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
.endobj lbl_81617518

# .rodata:0xA8 | 0x816175C0 | size: 0x28
.obj lbl_816175C0, global
	.4byte lbl_8166A81B
	.4byte "get_int<16>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte 0x00000000
	.4byte lbl_8166A82E
	.4byte "get_int<32>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte 0x00000000
	.4byte lbl_8166A846
	.4byte "get_int<48>__Q33ipl2cs4utilFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_816175C0

# 0x8166A798..0x8166A860 | size: 0xC8
.data
.balign 8

# .data:0x0 | 0x8166A798 | size: 0x19
.obj lbl_8166A798, global
	.string "/title/%08x/%08x/data/%s"
.endobj lbl_8166A798

# .data:0x19 | 0x8166A7B1 | size: 0x9
.obj lbl_8166A7B1, global
	.string "SaveData"
.endobj lbl_8166A7B1

# .data:0x22 | 0x8166A7BA | size: 0xB
.obj lbl_8166A7BA, global
	.string "loadToHeap"
.endobj lbl_8166A7BA

# .data:0x2D | 0x8166A7C5 | size: 0xB
.obj lbl_8166A7C5, global
	.string "uncompress"
.endobj lbl_8166A7C5

# .data:0x38 | 0x8166A7D0 | size: 0x11
.obj lbl_8166A7D0, global
	.string "uncompressToHeap"
.endobj lbl_8166A7D0

# .data:0x49 | 0x8166A7E1 | size: 0xB
.obj lbl_8166A7E1, global
	.string "copyToHeap"
.endobj lbl_8166A7E1

# .data:0x54 | 0x8166A7EC | size: 0xB
.obj lbl_8166A7EC, global
	.string "createBlob"
.endobj lbl_8166A7EC

# .data:0x5F | 0x8166A7F7 | size: 0xA
.obj lbl_8166A7F7, global
	.string "decodeODH"
.endobj lbl_8166A7F7

# .data:0x69 | 0x8166A801 | size: 0xD
.obj lbl_8166A801, global
	.string "NETCalcCRC16"
.endobj lbl_8166A801

# .data:0x76 | 0x8166A80E | size: 0xD
.obj lbl_8166A80E, global
	.string "NETCalcCRC32"
.endobj lbl_8166A80E

# .data:0x83 | 0x8166A81B | size: 0x13
.obj lbl_8166A81B, global
	.string "*CX_COMPRESSION_LZ"
.endobj lbl_8166A81B

# .data:0x96 | 0x8166A82E | size: 0x18
.obj lbl_8166A82E, global
	.string "*CX_COMPRESSION_HUFFMAN"
.endobj lbl_8166A82E

# .data:0xAE | 0x8166A846 | size: 0x1A
.obj lbl_8166A846, global
	.4byte 0x2A43585F
	.4byte 0x434F4D50
	.4byte 0x52455353
	.4byte 0x494F4E5F
	.4byte 0x524C0000
	.4byte 0x00000000
	.2byte 0x0000
.endobj lbl_8166A846

# 0x81697868..0x816978D0 | size: 0x68
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697868 | size: 0x4
.obj lbl_81697868, global
	.string "@CS"
.endobj lbl_81697868

# .sdata:0x4 | 0x8169786C | size: 0x7
.obj lbl_8169786C, global
	.string "%s:/%s"
.endobj lbl_8169786C

# .sdata:0xB | 0x81697873 | size: 0x2
.obj lbl_81697873, global
	.string "r"
.endobj lbl_81697873

# .sdata:0xD | 0x81697875 | size: 0x5
.obj lbl_81697875, global
	.string "load"
.endobj lbl_81697875

# .sdata:0x12 | 0x8169787A | size: 0x8
.obj lbl_8169787A, global
	.string "getSize"
.endobj lbl_8169787A

# .sdata:0x1A | 0x81697882 | size: 0x7
.obj lbl_81697882, global
	.string "getS64"
.endobj lbl_81697882

# .sdata:0x21 | 0x81697889 | size: 0x7
.obj lbl_81697889, global
	.string "getU32"
.endobj lbl_81697889

# .sdata:0x28 | 0x81697890 | size: 0x7
.obj lbl_81697890, global
	.string "getS32"
.endobj lbl_81697890

# .sdata:0x2F | 0x81697897 | size: 0x7
.obj lbl_81697897, global
	.string "getF32"
.endobj lbl_81697897

# .sdata:0x36 | 0x8169789E | size: 0x7
.obj lbl_8169789E, global
	.string "getU16"
.endobj lbl_8169789E

# .sdata:0x3D | 0x816978A5 | size: 0x7
.obj lbl_816978A5, global
	.string "getS16"
.endobj lbl_816978A5

# .sdata:0x44 | 0x816978AC | size: 0x6
.obj lbl_816978AC, global
	.string "getU8"
.endobj lbl_816978AC

# .sdata:0x4A | 0x816978B2 | size: 0x6
.obj lbl_816978B2, global
	.string "getS8"
.endobj lbl_816978B2

# .sdata:0x50 | 0x816978B8 | size: 0x7
.obj lbl_816978B8, global
	.string "getStr"
.endobj lbl_816978B8

# .sdata:0x57 | 0x816978BF | size: 0x8
.obj lbl_816978BF, global
	.string "getWStr"
.endobj lbl_816978BF

# .sdata:0x5F | 0x816978C7 | size: 0x9
.obj lbl_816978C7, global
	.4byte 0x67657441
	.4byte 0x64647200
	.byte 0x00
.endobj lbl_816978C7
