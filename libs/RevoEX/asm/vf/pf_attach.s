.include "macros.inc"
.file "pf_attach.c"

# 0x814CF5EC..0x814CF7DC | size: 0x1F0
.text
.balign 4

# .text:0x0 | 0x814CF5EC | size: 0xD0
.fn VFiPFAPI_ParseOpenModeString, global
/* 814CF5EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CF5F0 | 40 82 00 0C */	bne .L_814CF5FC
/* 814CF5F4 | 38 60 00 0A */	li r3, 0xa
/* 814CF5F8 | 4E 80 00 20 */	blr
.L_814CF5FC:
/* 814CF5FC | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 814CF600 | 38 A0 00 01 */	li r5, 0x1
/* 814CF604 | 7C 00 07 74 */	extsb r0, r0
/* 814CF608 | 2C 00 00 72 */	cmpwi r0, 0x72
/* 814CF60C | 41 82 00 20 */	beq .L_814CF62C
/* 814CF610 | 40 80 00 10 */	bge .L_814CF620
/* 814CF614 | 2C 00 00 61 */	cmpwi r0, 0x61
/* 814CF618 | 41 82 00 24 */	beq .L_814CF63C
/* 814CF61C | 48 00 00 28 */	b .L_814CF644
.L_814CF620:
/* 814CF620 | 2C 00 00 77 */	cmpwi r0, 0x77
/* 814CF624 | 41 82 00 10 */	beq .L_814CF634
/* 814CF628 | 48 00 00 1C */	b .L_814CF644
.L_814CF62C:
/* 814CF62C | 38 80 00 02 */	li r4, 0x2
/* 814CF630 | 48 00 00 1C */	b .L_814CF64C
.L_814CF634:
/* 814CF634 | 38 80 00 01 */	li r4, 0x1
/* 814CF638 | 48 00 00 14 */	b .L_814CF64C
.L_814CF63C:
/* 814CF63C | 38 80 00 04 */	li r4, 0x4
/* 814CF640 | 48 00 00 0C */	b .L_814CF64C
.L_814CF644:
/* 814CF644 | 38 60 00 00 */	li r3, 0x0
/* 814CF648 | 4E 80 00 20 */	blr
.L_814CF64C:
/* 814CF64C | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 814CF650 | 2C 00 00 62 */	cmpwi r0, 0x62
/* 814CF654 | 40 82 00 08 */	bne .L_814CF65C
/* 814CF658 | 38 A0 00 02 */	li r5, 0x2
.L_814CF65C:
/* 814CF65C | 7C 03 28 AE */	lbzx r0, r3, r5
/* 814CF660 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814CF664 | 7C 00 07 74 */	extsb r0, r0
/* 814CF668 | 2C 00 00 2B */	cmpwi r0, 0x2b
/* 814CF66C | 41 82 00 30 */	beq .L_814CF69C
/* 814CF670 | 40 80 00 10 */	bge .L_814CF680
/* 814CF674 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814CF678 | 41 82 00 14 */	beq .L_814CF68C
/* 814CF67C | 48 00 00 18 */	b .L_814CF694
.L_814CF680:
/* 814CF680 | 2C 00 00 74 */	cmpwi r0, 0x74
/* 814CF684 | 41 82 00 10 */	beq .L_814CF694
/* 814CF688 | 48 00 00 0C */	b .L_814CF694
.L_814CF68C:
/* 814CF68C | 7C 83 23 78 */	mr r3, r4
/* 814CF690 | 4E 80 00 20 */	blr
.L_814CF694:
/* 814CF694 | 38 60 00 00 */	li r3, 0x0
/* 814CF698 | 4E 80 00 20 */	blr
.L_814CF69C:
/* 814CF69C | 7C 63 28 AE */	lbzx r3, r3, r5
/* 814CF6A0 | 60 80 00 08 */	ori r0, r4, 0x8
/* 814CF6A4 | 7C 63 07 74 */	extsb r3, r3
/* 814CF6A8 | 7C 63 00 34 */	cntlzw r3, r3
/* 814CF6AC | 54 63 DF FE */	extrwi r3, r3, 1, 26
/* 814CF6B0 | 7C 63 00 D0 */	neg r3, r3
/* 814CF6B4 | 7C 03 18 38 */	and r3, r0, r3
/* 814CF6B8 | 4E 80 00 20 */	blr
.endfn VFiPFAPI_ParseOpenModeString

# .text:0xD0 | 0x814CF6BC | size: 0x40
.fn VFiPFAPI_convertError, global
/* 814CF6BC | 2C 83 00 00 */	cmpwi cr1, r3, 0x0
/* 814CF6C0 | 4D 86 00 20 */	beqlr cr1
/* 814CF6C4 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 814CF6C8 | 4D 82 00 20 */	beqlr
/* 814CF6CC | 40 85 00 20 */	ble cr1, .L_814CF6EC
/* 814CF6D0 | 2C 03 00 A0 */	cmpwi r3, 0xa0
/* 814CF6D4 | 40 80 00 18 */	bge .L_814CF6EC
/* 814CF6D8 | 3C 80 81 67 */	lis r4, lbl_8166E500@ha
/* 814CF6DC | 54 60 10 3A */	slwi r0, r3, 2
/* 814CF6E0 | 38 84 E5 00 */	addi r4, r4, lbl_8166E500@l
/* 814CF6E4 | 7C 64 00 2E */	lwzx r3, r4, r0
/* 814CF6E8 | 4E 80 00 20 */	blr
.L_814CF6EC:
/* 814CF6EC | 2C 03 10 00 */	cmpwi r3, 0x1000
/* 814CF6F0 | 4C 82 00 20 */	bnelr
/* 814CF6F4 | 38 60 00 05 */	li r3, 0x5
/* 814CF6F8 | 4E 80 00 20 */	blr
.endfn VFiPFAPI_convertError

# .text:0x110 | 0x814CF6FC | size: 0x10
.fn VFiPFAPI_convertReturnValue, global
/* 814CF6FC | 7C 03 00 D0 */	neg r0, r3
/* 814CF700 | 7C 00 1B 78 */	or r0, r0, r3
/* 814CF704 | 7C 03 FE 70 */	srawi r3, r0, 31
/* 814CF708 | 4E 80 00 20 */	blr
.endfn VFiPFAPI_convertReturnValue

# .text:0x120 | 0x814CF70C | size: 0x18
.fn VFiPFAPI_convertReturnValue2NULL, global
/* 814CF70C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CF710 | 41 82 00 0C */	beq .L_814CF71C
/* 814CF714 | 38 60 00 00 */	li r3, 0x0
/* 814CF718 | 4E 80 00 20 */	blr
.L_814CF71C:
/* 814CF71C | 7C 83 23 78 */	mr r3, r4
/* 814CF720 | 4E 80 00 20 */	blr
.endfn VFiPFAPI_convertReturnValue2NULL

# .text:0x138 | 0x814CF724 | size: 0x24
.fn VFiPFAPI_convertReturnValue4unmount, global
/* 814CF724 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CF728 | 40 82 00 0C */	bne .L_814CF734
/* 814CF72C | 38 60 00 00 */	li r3, 0x0
/* 814CF730 | 4E 80 00 20 */	blr
.L_814CF734:
/* 814CF734 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 814CF738 | 38 60 FF FF */	li r3, -0x1
/* 814CF73C | 4C 82 00 20 */	bnelr
/* 814CF740 | 38 60 00 01 */	li r3, 0x1
/* 814CF744 | 4E 80 00 20 */	blr
.endfn VFiPFAPI_convertReturnValue4unmount

# .text:0x15C | 0x814CF748 | size: 0x94
.fn VFipf2_attach, global
/* 814CF748 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814CF74C | 7C 08 02 A6 */	mflr r0
/* 814CF750 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CF754 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814CF758 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814CF75C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814CF760 | 7C 7E 1B 78 */	mr r30, r3
/* 814CF764 | 41 82 00 10 */	beq .L_814CF774
/* 814CF768 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814CF76C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814CF770 | 40 82 00 18 */	bne .L_814CF788
.L_814CF774:
/* 814CF774 | 3C 60 81 0D */	lis r3, VFipf_vol_set_810CD7F0@ha
/* 814CF778 | 38 00 00 0A */	li r0, 0xa
/* 814CF77C | 38 63 D7 F0 */	addi r3, r3, VFipf_vol_set_810CD7F0@l
/* 814CF780 | 90 03 00 1C */	stw r0, 0x1c(r3)
/* 814CF784 | 48 00 00 38 */	b .L_814CF7BC
.L_814CF788:
/* 814CF788 | 38 00 00 00 */	li r0, 0x0
/* 814CF78C | 3B E0 00 00 */	li r31, 0x0
/* 814CF790 | 48 00 00 20 */	b .L_814CF7B0
.L_814CF794:
/* 814CF794 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814CF798 | 40 82 00 10 */	bne .L_814CF7A8
/* 814CF79C | 4B FF EB 95 */	bl VFiPFVOL_attach
/* 814CF7A0 | 7C 60 1B 78 */	mr r0, r3
/* 814CF7A4 | 48 00 00 08 */	b .L_814CF7AC
.L_814CF7A8:
/* 814CF7A8 | 9B E3 00 08 */	stb r31, 0x8(r3)
.L_814CF7AC:
/* 814CF7AC | 3B DE 00 04 */	addi r30, r30, 0x4
.L_814CF7B0:
/* 814CF7B0 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 814CF7B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CF7B8 | 40 82 FF DC */	bne .L_814CF794
.L_814CF7BC:
/* 814CF7BC | 7C 03 03 78 */	mr r3, r0
/* 814CF7C0 | 4B FF FF 3D */	bl VFiPFAPI_convertReturnValue
/* 814CF7C4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814CF7C8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814CF7CC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814CF7D0 | 7C 08 03 A6 */	mtlr r0
/* 814CF7D4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814CF7D8 | 4E 80 00 20 */	blr
.endfn VFipf2_attach
