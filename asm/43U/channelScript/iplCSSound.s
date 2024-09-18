.include "macros.inc"
.file "iplCSSound.cpp"

# 0x8145EE24..0x8145EF88 | size: 0x164
.text
.balign 4

# .text:0x0 | 0x8145EE24 | size: 0xCC
# ipl::cs::sound::start(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn start__Q33ipl2cs5soundFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145EE24 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145EE28 | 7C 08 02 A6 */	mflr r0
/* 8145EE2C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145EE30 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145EE34 | 48 19 A6 91 */	bl _savegpr_28
/* 8145EE38 | 7C 7D 1B 78 */	mr r29, r3
/* 8145EE3C | 3B 80 00 00 */	li r28, 0x0
/* 8145EE40 | 38 80 00 00 */	li r4, 0x0
/* 8145EE44 | 4B FE D8 7D */	bl CHANSVmGetArgInteger
/* 8145EE48 | 7C 7F 1B 78 */	mr r31, r3
/* 8145EE4C | 7F A3 EB 78 */	mr r3, r29
/* 8145EE50 | 38 80 00 01 */	li r4, 0x1
/* 8145EE54 | 4B FE D8 6D */	bl CHANSVmGetArgInteger
/* 8145EE58 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145EE5C | 41 82 00 0C */	beq .L_8145EE68
/* 8145EE60 | 83 DF 00 04 */	lwz r30, 0x4(r31)
/* 8145EE64 | 48 00 00 08 */	b .L_8145EE6C
.L_8145EE68:
/* 8145EE68 | 3B C0 00 00 */	li r30, 0x0
.L_8145EE6C:
/* 8145EE6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145EE70 | 41 82 00 0C */	beq .L_8145EE7C
/* 8145EE74 | 83 A3 00 04 */	lwz r29, 0x4(r3)
/* 8145EE78 | 48 00 00 08 */	b .L_8145EE80
.L_8145EE7C:
/* 8145EE7C | 3B A0 00 00 */	li r29, 0x0
.L_8145EE80:
/* 8145EE80 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8145EE84 | 7F C4 F3 78 */	mr r4, r30
/* 8145EE88 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8145EE8C | 80 7F 00 88 */	lwz r3, 0x88(r31)
/* 8145EE90 | 4B ED C2 59 */	bl isValidAddr__Q33ipl7channel20ChannelScriptManagerFPv
/* 8145EE94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145EE98 | 41 82 00 3C */	beq .L_8145EED4
/* 8145EE9C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8145EEA0 | 41 82 00 34 */	beq .L_8145EED4
/* 8145EEA4 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 8145EEA8 | 7F C4 F3 78 */	mr r4, r30
/* 8145EEAC | 7F A5 EB 78 */	mr r5, r29
/* 8145EEB0 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8145EEB4 | 4B F0 D3 51 */	bl checkTmpSoundFile__Q33ipl3snd6SystemFPvUl
/* 8145EEB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145EEBC | 41 82 00 18 */	beq .L_8145EED4
/* 8145EEC0 | 80 7F 00 88 */	lwz r3, 0x88(r31)
/* 8145EEC4 | 7F C4 F3 78 */	mr r4, r30
/* 8145EEC8 | 7F A5 EB 78 */	mr r5, r29
/* 8145EECC | 4B ED C2 01 */	bl setAltBannerSound__Q33ipl7channel20ChannelScriptManagerFPvUl
/* 8145EED0 | 3B 80 00 01 */	li r28, 0x1
.L_8145EED4:
/* 8145EED4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145EED8 | 7F 83 E3 78 */	mr r3, r28
/* 8145EEDC | 48 19 A6 35 */	bl _restgpr_28
/* 8145EEE0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145EEE4 | 7C 08 03 A6 */	mtlr r0
/* 8145EEE8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145EEEC | 4E 80 00 20 */	blr
.endfn start__Q33ipl2cs5soundFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0xCC | 0x8145EEF0 | size: 0x1C
# ipl::cs::sound::start_default_sound(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn start_default_sound__Q33ipl2cs5soundFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145EEF0 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8145EEF4 | 38 00 00 01 */	li r0, 0x1
/* 8145EEF8 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8145EEFC | 38 60 00 01 */	li r3, 0x1
/* 8145EF00 | 80 84 00 88 */	lwz r4, 0x88(r4)
/* 8145EF04 | 90 04 00 34 */	stw r0, 0x34(r4)
/* 8145EF08 | 4E 80 00 20 */	blr
.endfn start_default_sound__Q33ipl2cs5soundFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0xE8 | 0x8145EF0C | size: 0x8
# ipl::cs::sound::ctor(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn ctor__Q33ipl2cs5soundFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145EF0C | 38 60 00 01 */	li r3, 0x1
/* 8145EF10 | 4E 80 00 20 */	blr
.endfn ctor__Q33ipl2cs5soundFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0xF0 | 0x8145EF14 | size: 0x74
# ipl::cs::sound::init(CHANSVm*)
.fn init__Q33ipl2cs5soundFP7CHANSVm, global
/* 8145EF14 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8145EF18 | 7C 08 02 A6 */	mflr r0
/* 8145EF1C | 3C A0 81 46 */	lis r5, ctor__Q33ipl2cs5soundFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr@ha
/* 8145EF20 | 38 8D 99 5E */	li r4, lbl_8169799E@sda21
/* 8145EF24 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8145EF28 | 38 A5 EF 0C */	addi r5, r5, ctor__Q33ipl2cs5soundFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr@l
/* 8145EF2C | 38 C0 00 00 */	li r6, 0x0
/* 8145EF30 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8145EF34 | 3B E0 00 00 */	li r31, 0x0
/* 8145EF38 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8145EF3C | 7C 7E 1B 78 */	mr r30, r3
/* 8145EF40 | 4B FE D9 95 */	bl CHANSVmAddNativeClass
/* 8145EF44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145EF48 | 7C 64 1B 78 */	mr r4, r3
/* 8145EF4C | 41 82 00 20 */	beq .L_8145EF6C
/* 8145EF50 | 3C A0 81 61 */	lis r5, lbl_816178A0@ha
/* 8145EF54 | 7F C3 F3 78 */	mr r3, r30
/* 8145EF58 | 38 C0 00 02 */	li r6, 0x2
/* 8145EF5C | 38 A5 78 A0 */	addi r5, r5, lbl_816178A0@l
/* 8145EF60 | 4B FE DB 11 */	bl CHANSVmAddNativeMethodList
/* 8145EF64 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145EF68 | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145EF6C:
/* 8145EF6C | 7F E3 FB 78 */	mr r3, r31
/* 8145EF70 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8145EF74 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8145EF78 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8145EF7C | 7C 08 03 A6 */	mtlr r0
/* 8145EF80 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8145EF84 | 4E 80 00 20 */	blr
.endfn init__Q33ipl2cs5soundFP7CHANSVm

# 0x816178A0..0x816178B0 | size: 0x10
.rodata
.balign 8

# .rodata:0x0 | 0x816178A0 | size: 0x10
.obj lbl_816178A0, global
	.4byte lbl_81697998
	.4byte start__Q33ipl2cs5soundFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
	.4byte lbl_8166AA08
	.4byte start_default_sound__Q33ipl2cs5soundFP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr
.endobj lbl_816178A0

# 0x8166AA08..0x8166AA20 | size: 0x18
.data
.balign 8

# .data:0x0 | 0x8166AA08 | size: 0x18
.obj lbl_8166AA08, global
	.4byte 0x73746172
	.4byte 0x74446566
	.4byte 0x61756C74
	.4byte 0x536F756E
	.4byte 0x64000000
	.4byte 0x00000000
.endobj lbl_8166AA08

# 0x81697998..0x816979A8 | size: 0x10
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697998 | size: 0x6
.obj lbl_81697998, global
	.string "start"
.endobj lbl_81697998

# .sdata:0x6 | 0x8169799E | size: 0xA
.obj lbl_8169799E, global
	.4byte 0x536F756E
	.4byte 0x64000000
	.2byte 0x0000
.endobj lbl_8169799E
