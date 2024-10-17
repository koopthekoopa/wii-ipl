.include "macros.inc"
.file "iplCSSystem.cpp"

# 0x8145802C..0x814581D0 | size: 0x1A4
.text
.balign 4

# .text:0x0 | 0x8145802C | size: 0x7C
# ipl::cs::system::is_first_call(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn is_first_call__Q33ipl2cs6systemFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145802C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81458030 | 7C 08 02 A6 */	mflr r0
/* 81458034 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81458038 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145803C | 48 1A 14 8D */	bl _savegpr_29
/* 81458040 | 7C 7D 1B 78 */	mr r29, r3
/* 81458044 | 7C 83 23 78 */	mr r3, r4
/* 81458048 | 7C BE 2B 78 */	mr r30, r5
/* 8145804C | 3B E0 00 00 */	li r31, 0x0
/* 81458050 | 48 00 44 D9 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 81458054 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81458058 | 41 82 00 34 */	beq .L_8145808C
/* 8145805C | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 81458060 | 7F A3 EB 78 */	mr r3, r29
/* 81458064 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 81458068 | 7F C4 F3 78 */	mr r4, r30
/* 8145806C | 80 C5 00 88 */	lwz r6, 0x88(r5)
/* 81458070 | 38 A0 00 00 */	li r5, 0x0
/* 81458074 | 88 06 00 20 */	lbz r0, 0x20(r6)
/* 81458078 | 7C 00 00 34 */	cntlzw r0, r0
/* 8145807C | 54 06 D9 7E */	srwi r6, r0, 5
/* 81458080 | 4B FF 39 19 */	bl CHANSVmSetInteger
/* 81458084 | 7C 60 00 34 */	cntlzw r0, r3
/* 81458088 | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145808C:
/* 8145808C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81458090 | 7F E3 FB 78 */	mr r3, r31
/* 81458094 | 48 1A 14 81 */	bl _restgpr_29
/* 81458098 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145809C | 7C 08 03 A6 */	mtlr r0
/* 814580A0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814580A4 | 4E 80 00 20 */	blr
.endfn is_first_call__Q33ipl2cs6systemFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x7C | 0x814580A8 | size: 0xB0
# ipl::cs::system::is_dltask_registered(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn is_dltask_registered__Q33ipl2cs6systemFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 814580A8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814580AC | 7C 08 02 A6 */	mflr r0
/* 814580B0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814580B4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814580B8 | 48 1A 14 05 */	bl _savegpr_26
/* 814580BC | 3C C0 81 09 */	lis r6, smArg__Q23ipl6System@ha
/* 814580C0 | 7C 7A 1B 78 */	mr r26, r3
/* 814580C4 | 38 C6 90 08 */	addi r6, r6, smArg__Q23ipl6System@l
/* 814580C8 | 38 80 FF FF */	li r4, -0x1
/* 814580CC | 80 66 00 88 */	lwz r3, 0x88(r6)
/* 814580D0 | 7C BB 2B 78 */	mr r27, r5
/* 814580D4 | 88 06 02 BC */	lbz r0, 0x2bc(r6)
/* 814580D8 | 3B 80 00 00 */	li r28, 0x0
/* 814580DC | 80 63 00 1C */	lwz r3, 0x1c(r3)
/* 814580E0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814580E4 | 7C 7D 20 38 */	and r29, r3, r4
/* 814580E8 | 41 82 00 0C */	beq .L_814580F4
/* 814580EC | 3B C0 00 00 */	li r30, 0x0
/* 814580F0 | 48 00 00 08 */	b .L_814580F8
.L_814580F4:
/* 814580F4 | 83 C6 00 8C */	lwz r30, 0x8c(r6)
.L_814580F8:
/* 814580F8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814580FC | 41 82 00 28 */	beq .L_81458124
/* 81458100 | 3B FE 0A 18 */	addi r31, r30, 0xa18
/* 81458104 | 7F E3 FB 78 */	mr r3, r31
/* 81458108 | 48 0D 9B 01 */	bl fn_81531C08
/* 8145810C | 7F C3 F3 78 */	mr r3, r30
/* 81458110 | 7F A4 EB 78 */	mr r4, r29
/* 81458114 | 4B EE A2 61 */	bl isAppDlEnable__Q33ipl5nwc247ManagerCFUl
/* 81458118 | 7C 7C 1B 78 */	mr r28, r3
/* 8145811C | 7F E3 FB 78 */	mr r3, r31
/* 81458120 | 48 0D 9B C5 */	bl fn_81531CE4
.L_81458124:
/* 81458124 | 7F 43 D3 78 */	mr r3, r26
/* 81458128 | 7F 64 DB 78 */	mr r4, r27
/* 8145812C | 7F 86 E3 78 */	mr r6, r28
/* 81458130 | 7F 85 FE 70 */	srawi r5, r28, 31
/* 81458134 | 4B FF 38 65 */	bl CHANSVmSetInteger
/* 81458138 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145813C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81458140 | 54 03 D9 7E */	srwi r3, r0, 5
/* 81458144 | 48 1A 13 C5 */	bl _restgpr_26
/* 81458148 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145814C | 7C 08 03 A6 */	mtlr r0
/* 81458150 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81458154 | 4E 80 00 20 */	blr
.endfn is_dltask_registered__Q33ipl2cs6systemFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x12C | 0x81458158 | size: 0x78
# ipl::cs::system::init(CHANSVm*)
.fn init__Q33ipl2cs6systemFP7CHANSVm, global
/* 81458158 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8145815C | 7C 08 02 A6 */	mflr r0
/* 81458160 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81458164 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81458168 | 3B E0 00 00 */	li r31, 0x0
/* 8145816C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81458170 | 7C 7E 1B 78 */	mr r30, r3
/* 81458174 | 4B FF FE 59 */	bl VmSystemInit
/* 81458178 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145817C | 41 82 00 38 */	beq .L_814581B4
/* 81458180 | 7F C3 F3 78 */	mr r3, r30
/* 81458184 | 38 8D 97 A8 */	li r4, lbl_816977E8@sda21
/* 81458188 | 4B FF 45 ED */	bl CHANSVmFindNativeClass
/* 8145818C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81458190 | 7C 64 1B 78 */	mr r4, r3
/* 81458194 | 41 82 00 20 */	beq .L_814581B4
/* 81458198 | 3C A0 81 61 */	lis r5, scMethodList__Q33ipl2cs6system@ha
/* 8145819C | 7F C3 F3 78 */	mr r3, r30
/* 814581A0 | 38 C0 00 02 */	li r6, 0x2
/* 814581A4 | 38 A5 73 80 */	addi r5, r5, scMethodList__Q33ipl2cs6system@l
/* 814581A8 | 4B FF 48 C9 */	bl CHANSVmAddNativeMethodList
/* 814581AC | 7C 60 00 34 */	cntlzw r0, r3
/* 814581B0 | 54 1F D9 7E */	srwi r31, r0, 5
.L_814581B4:
/* 814581B4 | 7F E3 FB 78 */	mr r3, r31
/* 814581B8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814581BC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814581C0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814581C4 | 7C 08 03 A6 */	mtlr r0
/* 814581C8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814581CC | 4E 80 00 20 */	blr
.endfn init__Q33ipl2cs6systemFP7CHANSVm

# 0x81617380..0x81617390 | size: 0x10
.rodata
.balign 8

# .rodata:0x0 | 0x81617380 | size: 0x10
# ipl::cs::system::scMethodList
.obj scMethodList__Q33ipl2cs6system, local
	.4byte lbl_8166A528
	.4byte is_first_call__Q33ipl2cs6systemFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166A534
	.4byte is_dltask_registered__Q33ipl2cs6systemFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
.endobj scMethodList__Q33ipl2cs6system

# 0x8166A528..0x8166A548 | size: 0x20
.data
.balign 8

# .data:0x0 | 0x8166A528 | size: 0xC
.obj lbl_8166A528, global
	.string "isFirstCall"
.endobj lbl_8166A528

# .data:0xC | 0x8166A534 | size: 0x13
.obj lbl_8166A534, global
	.string "isDlTaskRegistered"
.endobj lbl_8166A534

# .data:0x1F | 0x8166A547 | size: 0x1
.obj gap_08_8166A547_data, global
.hidden gap_08_8166A547_data
	.byte 0x00
.endobj gap_08_8166A547_data

# 0x816977E8..0x816977F0 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x816977E8 | size: 0x8
.obj lbl_816977E8, global
	.string "@System"
.endobj lbl_816977E8
