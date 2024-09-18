.include "macros.inc"
.file "toolbar.cpp"

# 0x8142DF10..0x8142F468 | size: 0x1558
.text
.balign 4

# .text:0x0 | 0x8142DF10 | size: 0xD0
# textinput::toolbar::Base::setQwerty(bool)
.fn setQwerty__Q39textinput7toolbar4BaseFb, global
/* 8142DF10 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8142DF14 | 7C 08 02 A6 */	mflr r0
/* 8142DF18 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8142DF1C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8142DF20 | 7C 9F 23 78 */	mr r31, r4
/* 8142DF24 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8142DF28 | 7C 7E 1B 78 */	mr r30, r3
/* 8142DF2C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142DF30 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8142DF34 | 7D 89 03 A6 */	mtctr r12
/* 8142DF38 | 4E 80 04 21 */	bctrl
/* 8142DF3C | 2C 03 00 09 */	cmpwi r3, 0x9
/* 8142DF40 | 40 82 00 50 */	bne .L_8142DF90
/* 8142DF44 | 80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8142DF48 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142DF4C | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8142DF50 | 7D 89 03 A6 */	mtctr r12
/* 8142DF54 | 4E 80 04 21 */	bctrl
/* 8142DF58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142DF5C | 41 82 00 34 */	beq .L_8142DF90
/* 8142DF60 | 80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8142DF64 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142DF68 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8142DF6C | 7D 89 03 A6 */	mtctr r12
/* 8142DF70 | 4E 80 04 21 */	bctrl
/* 8142DF74 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142DF78 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8142DF7C | 7D 89 03 A6 */	mtctr r12
/* 8142DF80 | 4E 80 04 21 */	bctrl
/* 8142DF84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142DF88 | 40 82 00 08 */	bne .L_8142DF90
/* 8142DF8C | 3B E0 00 01 */	li r31, 0x1
.L_8142DF90:
/* 8142DF90 | 9B FE 00 04 */	stb r31, 0x4(r30)
/* 8142DF94 | 80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8142DF98 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142DF9C | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8142DFA0 | 7D 89 03 A6 */	mtctr r12
/* 8142DFA4 | 4E 80 04 21 */	bctrl
/* 8142DFA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142DFAC | 41 82 00 1C */	beq .L_8142DFC8
/* 8142DFB0 | 80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8142DFB4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142DFB8 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8142DFBC | 7D 89 03 A6 */	mtctr r12
/* 8142DFC0 | 4E 80 04 21 */	bctrl
/* 8142DFC4 | 4B FF 69 79 */	bl notifyChangeMode__Q39textinput9inputform4BaseFv
.L_8142DFC8:
/* 8142DFC8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8142DFCC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8142DFD0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8142DFD4 | 7C 08 03 A6 */	mtlr r0
/* 8142DFD8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8142DFDC | 4E 80 00 20 */	blr
.endfn setQwerty__Q39textinput7toolbar4BaseFb

# .text:0xD0 | 0x8142DFE0 | size: 0x8
# textinput::toolbar::Base::getLanguage() const
.fn getLanguage__Q39textinput7toolbar4BaseCFv, global
/* 8142DFE0 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 8142DFE4 | 4E 80 00 20 */	blr
.endfn getLanguage__Q39textinput7toolbar4BaseCFv

# .text:0xD8 | 0x8142DFE8 | size: 0xE0
# textinput::toolbar::LayoutByNW4R::~LayoutByNW4R()
.fn __dt__Q39textinput7toolbar12LayoutByNW4RFv, global
/* 8142DFE8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8142DFEC | 7C 08 02 A6 */	mflr r0
/* 8142DFF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142DFF4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8142DFF8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8142DFFC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8142E000 | 7C 9E 23 78 */	mr r30, r4
/* 8142E004 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8142E008 | 7C 7D 1B 78 */	mr r29, r3
/* 8142E00C | 41 82 00 9C */	beq .L_8142E0A8
/* 8142E010 | 3C A0 81 66 */	lis r5, __vt__Q39textinput7toolbar12LayoutByNW4R@ha
/* 8142E014 | 38 80 FF FF */	li r4, -0x1
/* 8142E018 | 38 A5 E3 08 */	addi r5, r5, __vt__Q39textinput7toolbar12LayoutByNW4R@l
/* 8142E01C | 38 05 00 20 */	addi r0, r5, 0x20
/* 8142E020 | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 8142E024 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 8142E028 | 80 63 00 BC */	lwz r3, 0xbc(r3)
/* 8142E02C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142E030 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8142E034 | 7D 89 03 A6 */	mtctr r12
/* 8142E038 | 4E 80 04 21 */	bctrl
/* 8142E03C | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8142E040 | 80 9D 00 BC */	lwz r4, 0xbc(r29)
/* 8142E044 | 48 12 D6 35 */	bl fn_8155B678
/* 8142E048 | 38 7D 00 80 */	addi r3, r29, 0x80
/* 8142E04C | 38 80 00 00 */	li r4, 0x0
/* 8142E050 | 48 0E 42 8D */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 8142E054 | 7C 7F 1B 78 */	mr r31, r3
/* 8142E058 | 48 00 00 2C */	b .L_8142E084
.L_8142E05C:
/* 8142E05C | 7F E4 FB 78 */	mr r4, r31
/* 8142E060 | 38 7D 00 80 */	addi r3, r29, 0x80
/* 8142E064 | 48 0E 42 0D */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 8142E068 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 8142E06C | 7F E3 FB 78 */	mr r3, r31
/* 8142E070 | 48 00 93 81 */	bl destroy__Q39textinput11nw4rmanager7AnmPaneFP12MEMAllocator
/* 8142E074 | 38 7D 00 80 */	addi r3, r29, 0x80
/* 8142E078 | 38 80 00 00 */	li r4, 0x0
/* 8142E07C | 48 0E 42 61 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 8142E080 | 7C 7F 1B 78 */	mr r31, r3
.L_8142E084:
/* 8142E084 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8142E088 | 40 82 FF D4 */	bne .L_8142E05C
/* 8142E08C | 38 7D 00 14 */	addi r3, r29, 0x14
/* 8142E090 | 38 80 00 00 */	li r4, 0x0
/* 8142E094 | 48 00 80 65 */	bl __dt__Q39textinput11nw4rmanager6LayoutFv
/* 8142E098 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8142E09C | 40 81 00 0C */	ble .L_8142E0A8
/* 8142E0A0 | 7F A3 EB 78 */	mr r3, r29
/* 8142E0A4 | 48 1C A0 41 */	bl __dl__FPv
.L_8142E0A8:
/* 8142E0A8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8142E0AC | 7F A3 EB 78 */	mr r3, r29
/* 8142E0B0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8142E0B4 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8142E0B8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8142E0BC | 7C 08 03 A6 */	mtlr r0
/* 8142E0C0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8142E0C4 | 4E 80 00 20 */	blr
.endfn __dt__Q39textinput7toolbar12LayoutByNW4RFv

# .text:0x1B8 | 0x8142E0C8 | size: 0x40
# textinput::toolbar::EventHandler::~EventHandler()
.fn __dt__Q39textinput7toolbar12EventHandlerFv, global
/* 8142E0C8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8142E0CC | 7C 08 02 A6 */	mflr r0
/* 8142E0D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142E0D4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8142E0D8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8142E0DC | 7C 7F 1B 78 */	mr r31, r3
/* 8142E0E0 | 41 82 00 10 */	beq .L_8142E0F0
/* 8142E0E4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8142E0E8 | 40 81 00 08 */	ble .L_8142E0F0
/* 8142E0EC | 48 1C 9F F9 */	bl __dl__FPv
.L_8142E0F0:
/* 8142E0F0 | 7F E3 FB 78 */	mr r3, r31
/* 8142E0F4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8142E0F8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8142E0FC | 7C 08 03 A6 */	mtlr r0
/* 8142E100 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8142E104 | 4E 80 00 20 */	blr
.endfn __dt__Q39textinput7toolbar12EventHandlerFv

# .text:0x1F8 | 0x8142E108 | size: 0x2A4
# textinput::toolbar::LayoutByNW4R::create(MEMAllocator*)
.fn create__Q39textinput7toolbar12LayoutByNW4RFP12MEMAllocator, global
/* 8142E108 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8142E10C | 7C 08 02 A6 */	mflr r0
/* 8142E110 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 8142E114 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8142E118 | 48 1C B3 7D */	bl _savegpr_16
/* 8142E11C | 7C 94 23 78 */	mr r20, r4
/* 8142E120 | 90 83 00 0C */	stw r4, 0xc(r3)
/* 8142E124 | 7C 73 1B 78 */	mr r19, r3
/* 8142E128 | 38 80 00 10 */	li r4, 0x10
/* 8142E12C | 7E 83 A3 78 */	mr r3, r20
/* 8142E130 | 48 12 D5 39 */	bl fn_8155B668
/* 8142E134 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142E138 | 41 82 00 1C */	beq .L_8142E154
/* 8142E13C | 38 00 00 00 */	li r0, 0x0
/* 8142E140 | 3C 80 81 66 */	lis r4, __vt__Q39textinput7toolbar12EventHandler@ha
/* 8142E144 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 8142E148 | 38 84 E2 E8 */	addi r4, r4, __vt__Q39textinput7toolbar12EventHandler@l
/* 8142E14C | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8142E150 | 92 63 00 0C */	stw r19, 0xc(r3)
.L_8142E154:
/* 8142E154 | 90 73 00 BC */	stw r3, 0xbc(r19)
/* 8142E158 | 7C 65 1B 78 */	mr r5, r3
/* 8142E15C | 7E 84 A3 78 */	mr r4, r20
/* 8142E160 | 38 73 00 14 */	addi r3, r19, 0x14
/* 8142E164 | 48 00 80 B1 */	bl createWithEventHandler__Q39textinput11nw4rmanager6LayoutFP12MEMAllocatorPQ39textinput11nw4rmanager14TiEventHandler
/* 8142E168 | 80 73 00 24 */	lwz r3, 0x24(r19)
/* 8142E16C | 38 80 00 00 */	li r4, 0x0
/* 8142E170 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142E174 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8142E178 | 7D 89 03 A6 */	mtctr r12
/* 8142E17C | 4E 80 04 21 */	bctrl
/* 8142E180 | 80 73 00 24 */	lwz r3, 0x24(r19)
/* 8142E184 | 38 80 00 01 */	li r4, 0x1
/* 8142E188 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142E18C | 81 8C 00 58 */	lwz r12, 0x58(r12)
/* 8142E190 | 7D 89 03 A6 */	mtctr r12
/* 8142E194 | 4E 80 04 21 */	bctrl
/* 8142E198 | 3F 60 81 66 */	lis r27, __vt__Q39textinput11nw4rmanager7AnmPane@ha
/* 8142E19C | 3F A0 81 66 */	lis r29, __vt__Q39textinput7toolbar19NormalButtonAnmPane@ha
/* 8142E1A0 | 3F 40 81 66 */	lis r26, lbl_8165E0B0@ha
/* 8142E1A4 | 3F C0 81 66 */	lis r30, __vt__Q39textinput7toolbar19ToggleButtonAnmPane@ha
/* 8142E1A8 | 3B 7B F8 C8 */	addi r27, r27, __vt__Q39textinput11nw4rmanager7AnmPane@l
/* 8142E1AC | 3B BD E2 8C */	addi r29, r29, __vt__Q39textinput7toolbar19NormalButtonAnmPane@l
/* 8142E1B0 | 3B 5A E0 B0 */	addi r26, r26, lbl_8165E0B0@l
/* 8142E1B4 | 3B DE E2 60 */	addi r30, r30, __vt__Q39textinput7toolbar19ToggleButtonAnmPane@l
/* 8142E1B8 | 3B 00 00 00 */	li r24, 0x0
/* 8142E1BC | 3B 80 00 00 */	li r28, 0x0
/* 8142E1C0 | 3B E0 00 01 */	li r31, 0x1
.L_8142E1C4:
/* 8142E1C4 | 57 00 32 B2 */	clrlslwi r0, r24, 16, 6
/* 8142E1C8 | 3A C0 00 00 */	li r22, 0x0
/* 8142E1CC | 7E FA 02 14 */	add r23, r26, r0
/* 8142E1D0 | 7C 1A 00 2E */	lwzx r0, r26, r0
/* 8142E1D4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8142E1D8 | 41 82 00 70 */	beq .L_8142E248
/* 8142E1DC | 40 80 00 C4 */	bge .L_8142E2A0
/* 8142E1E0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8142E1E4 | 40 80 00 08 */	bge .L_8142E1EC
/* 8142E1E8 | 48 00 00 B8 */	b .L_8142E2A0
.L_8142E1EC:
/* 8142E1EC | 7E 83 A3 78 */	mr r3, r20
/* 8142E1F0 | 38 80 00 34 */	li r4, 0x34
/* 8142E1F4 | 48 12 D4 75 */	bl fn_8155B668
/* 8142E1F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142E1FC | 7C 76 1B 78 */	mr r22, r3
/* 8142E200 | 41 82 00 A0 */	beq .L_8142E2A0
/* 8142E204 | 81 93 00 14 */	lwz r12, 0x14(r19)
/* 8142E208 | 38 73 00 14 */	addi r3, r19, 0x14
/* 8142E20C | 80 97 00 04 */	lwz r4, 0x4(r23)
/* 8142E210 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8142E214 | 7D 89 03 A6 */	mtctr r12
/* 8142E218 | 4E 80 04 21 */	bctrl
/* 8142E21C | 93 76 00 00 */	stw r27, 0x0(r22)
/* 8142E220 | 38 80 00 10 */	li r4, 0x10
/* 8142E224 | 90 76 00 04 */	stw r3, 0x4(r22)
/* 8142E228 | 38 76 00 08 */	addi r3, r22, 0x8
/* 8142E22C | 93 96 00 14 */	stw r28, 0x14(r22)
/* 8142E230 | 93 96 00 18 */	stw r28, 0x18(r22)
/* 8142E234 | 48 0E 3E 29 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 8142E238 | 93 96 00 2C */	stw r28, 0x2c(r22)
/* 8142E23C | 93 B6 00 00 */	stw r29, 0x0(r22)
/* 8142E240 | 93 96 00 30 */	stw r28, 0x30(r22)
/* 8142E244 | 48 00 00 5C */	b .L_8142E2A0
.L_8142E248:
/* 8142E248 | 7E 83 A3 78 */	mr r3, r20
/* 8142E24C | 38 80 00 34 */	li r4, 0x34
/* 8142E250 | 48 12 D4 19 */	bl fn_8155B668
/* 8142E254 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142E258 | 7C 76 1B 78 */	mr r22, r3
/* 8142E25C | 41 82 00 44 */	beq .L_8142E2A0
/* 8142E260 | 81 93 00 14 */	lwz r12, 0x14(r19)
/* 8142E264 | 38 73 00 14 */	addi r3, r19, 0x14
/* 8142E268 | 80 97 00 04 */	lwz r4, 0x4(r23)
/* 8142E26C | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8142E270 | 7D 89 03 A6 */	mtctr r12
/* 8142E274 | 4E 80 04 21 */	bctrl
/* 8142E278 | 93 76 00 00 */	stw r27, 0x0(r22)
/* 8142E27C | 38 80 00 10 */	li r4, 0x10
/* 8142E280 | 90 76 00 04 */	stw r3, 0x4(r22)
/* 8142E284 | 38 76 00 08 */	addi r3, r22, 0x8
/* 8142E288 | 93 96 00 14 */	stw r28, 0x14(r22)
/* 8142E28C | 93 96 00 18 */	stw r28, 0x18(r22)
/* 8142E290 | 48 0E 3D CD */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 8142E294 | 93 96 00 2C */	stw r28, 0x2c(r22)
/* 8142E298 | 93 D6 00 00 */	stw r30, 0x0(r22)
/* 8142E29C | 93 F6 00 30 */	stw r31, 0x30(r22)
.L_8142E2A0:
/* 8142E2A0 | 7E C4 B3 78 */	mr r4, r22
/* 8142E2A4 | 38 73 00 80 */	addi r3, r19, 0x80
/* 8142E2A8 | 48 0E 3D CD */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 8142E2AC | 83 37 00 0C */	lwz r25, 0xc(r23)
/* 8142E2B0 | 3A A0 00 00 */	li r21, 0x0
/* 8142E2B4 | 82 57 00 08 */	lwz r18, 0x8(r23)
/* 8142E2B8 | 48 00 00 B0 */	b .L_8142E368
.L_8142E2BC:
/* 8142E2BC | 80 73 00 20 */	lwz r3, 0x20(r19)
/* 8142E2C0 | 56 A0 13 BA */	clrlslwi r0, r21, 16, 2
/* 8142E2C4 | 7E 37 02 14 */	add r17, r23, r0
/* 8142E2C8 | 38 80 00 00 */	li r4, 0x0
/* 8142E2CC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142E2D0 | 38 C0 00 00 */	li r6, 0x0
/* 8142E2D4 | 80 B1 00 10 */	lwz r5, 0x10(r17)
/* 8142E2D8 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8142E2DC | 38 A5 00 04 */	addi r5, r5, 0x4
/* 8142E2E0 | 7D 89 03 A6 */	mtctr r12
/* 8142E2E4 | 4E 80 04 21 */	bctrl
/* 8142E2E8 | 81 93 00 14 */	lwz r12, 0x14(r19)
/* 8142E2EC | 7C 70 1B 78 */	mr r16, r3
/* 8142E2F0 | 38 73 00 14 */	addi r3, r19, 0x14
/* 8142E2F4 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8142E2F8 | 7D 89 03 A6 */	mtctr r12
/* 8142E2FC | 4E 80 04 21 */	bctrl
/* 8142E300 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142E304 | 7E 04 83 78 */	mr r4, r16
/* 8142E308 | 80 B3 00 20 */	lwz r5, 0x20(r19)
/* 8142E30C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142E310 | 7D 89 03 A6 */	mtctr r12
/* 8142E314 | 4E 80 04 21 */	bctrl
/* 8142E318 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 8142E31C | 7C 66 1B 78 */	mr r6, r3
/* 8142E320 | 40 82 00 24 */	bne .L_8142E344
/* 8142E324 | 80 B1 00 10 */	lwz r5, 0x10(r17)
/* 8142E328 | 7E C3 B3 78 */	mr r3, r22
/* 8142E32C | 7E 84 A3 78 */	mr r4, r20
/* 8142E330 | 38 E0 00 00 */	li r7, 0x0
/* 8142E334 | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 8142E338 | 39 00 00 01 */	li r8, 0x1
/* 8142E33C | 48 00 8C 25 */	bl addAnimation__Q39textinput11nw4rmanager7AnmPaneFP12MEMAllocatorUlPQ29textinput17AnimTransformPanebb
/* 8142E340 | 48 00 00 24 */	b .L_8142E364
.L_8142E344:
/* 8142E344 | 80 B1 00 10 */	lwz r5, 0x10(r17)
/* 8142E348 | 7E C3 B3 78 */	mr r3, r22
/* 8142E34C | 7E 84 A3 78 */	mr r4, r20
/* 8142E350 | 7F 27 CB 78 */	mr r7, r25
/* 8142E354 | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 8142E358 | 39 00 00 00 */	li r8, 0x0
/* 8142E35C | 39 20 00 01 */	li r9, 0x1
/* 8142E360 | 48 00 8C B5 */	bl forceAddAnimation__Q39textinput11nw4rmanager7AnmPaneFP12MEMAllocatorUlPQ29textinput17AnimTransformPanePCcbb
.L_8142E364:
/* 8142E364 | 3A B5 00 01 */	addi r21, r21, 0x1
.L_8142E368:
/* 8142E368 | 56 A0 04 3E */	clrlwi r0, r21, 16
/* 8142E36C | 7C 00 90 40 */	cmplw r0, r18
/* 8142E370 | 41 80 FF 4C */	blt .L_8142E2BC
/* 8142E374 | 3B 18 00 01 */	addi r24, r24, 0x1
/* 8142E378 | 28 18 00 04 */	cmplwi r24, 0x4
/* 8142E37C | 41 80 FE 48 */	blt .L_8142E1C4
/* 8142E380 | 81 93 00 00 */	lwz r12, 0x0(r19)
/* 8142E384 | 7E 63 9B 78 */	mr r3, r19
/* 8142E388 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8142E38C | 7D 89 03 A6 */	mtctr r12
/* 8142E390 | 4E 80 04 21 */	bctrl
/* 8142E394 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8142E398 | 48 1C B1 49 */	bl _restgpr_16
/* 8142E39C | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 8142E3A0 | 7C 08 03 A6 */	mtlr r0
/* 8142E3A4 | 38 21 00 50 */	addi r1, r1, 0x50
/* 8142E3A8 | 4E 80 00 20 */	blr
.endfn create__Q39textinput7toolbar12LayoutByNW4RFP12MEMAllocator

# .text:0x49C | 0x8142E3AC | size: 0x8
# textinput::toolbar::Base::create(MEMAllocator*)
.fn create__Q39textinput7toolbar4BaseFP12MEMAllocator, global
/* 8142E3AC | 90 83 00 0C */	stw r4, 0xc(r3)
/* 8142E3B0 | 4E 80 00 20 */	blr
.endfn create__Q39textinput7toolbar4BaseFP12MEMAllocator

# .text:0x4A4 | 0x8142E3B4 | size: 0x58
# textinput::toolbar::AnmPane::~AnmPane()
.fn __dt__Q39textinput7toolbar7AnmPaneFv, global
/* 8142E3B4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8142E3B8 | 7C 08 02 A6 */	mflr r0
/* 8142E3BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142E3C0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8142E3C4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8142E3C8 | 7C 9F 23 78 */	mr r31, r4
/* 8142E3CC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8142E3D0 | 7C 7E 1B 78 */	mr r30, r3
/* 8142E3D4 | 41 82 00 1C */	beq .L_8142E3F0
/* 8142E3D8 | 38 80 00 00 */	li r4, 0x0
/* 8142E3DC | 48 00 8B 45 */	bl __dt__Q39textinput11nw4rmanager7AnmPaneFv
/* 8142E3E0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8142E3E4 | 40 81 00 0C */	ble .L_8142E3F0
/* 8142E3E8 | 7F C3 F3 78 */	mr r3, r30
/* 8142E3EC | 48 1C 9C F9 */	bl __dl__FPv
.L_8142E3F0:
/* 8142E3F0 | 7F C3 F3 78 */	mr r3, r30
/* 8142E3F4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8142E3F8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8142E3FC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8142E400 | 7C 08 03 A6 */	mtlr r0
/* 8142E404 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8142E408 | 4E 80 00 20 */	blr
.endfn __dt__Q39textinput7toolbar7AnmPaneFv

# .text:0x4FC | 0x8142E40C | size: 0x1C
# textinput::toolbar::LayoutByNW4R::setOKButtonVisible(bool)
.fn setOKButtonVisible__Q39textinput7toolbar12LayoutByNW4RFb, global
/* 8142E40C | 85 83 00 14 */	lwzu r12, 0x14(r3)
/* 8142E410 | 3C C0 81 66 */	lis r6, lbl_8165E1B0@ha
/* 8142E414 | 7C 85 23 78 */	mr r5, r4
/* 8142E418 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8142E41C | 38 86 E1 B0 */	addi r4, r6, lbl_8165E1B0@l
/* 8142E420 | 7D 89 03 A6 */	mtctr r12
/* 8142E424 | 4E 80 04 20 */	bctr
.endfn setOKButtonVisible__Q39textinput7toolbar12LayoutByNW4RFb

# .text:0x518 | 0x8142E428 | size: 0x1C
# textinput::toolbar::LayoutByNW4R::setCancelButtonVisible(bool)
.fn setCancelButtonVisible__Q39textinput7toolbar12LayoutByNW4RFb, global
/* 8142E428 | 85 83 00 14 */	lwzu r12, 0x14(r3)
/* 8142E42C | 3C C0 81 66 */	lis r6, lbl_8165E1C0@ha
/* 8142E430 | 7C 85 23 78 */	mr r5, r4
/* 8142E434 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8142E438 | 38 86 E1 C0 */	addi r4, r6, lbl_8165E1C0@l
/* 8142E43C | 7D 89 03 A6 */	mtctr r12
/* 8142E440 | 4E 80 04 20 */	bctr
.endfn setCancelButtonVisible__Q39textinput7toolbar12LayoutByNW4RFb

# .text:0x534 | 0x8142E444 | size: 0x1C
# textinput::toolbar::LayoutByNW4R::setOKButtonCaption(const wchar_t*)
.fn setOKButtonCaption__Q39textinput7toolbar12LayoutByNW4RFPCw, global
/* 8142E444 | 85 83 00 14 */	lwzu r12, 0x14(r3)
/* 8142E448 | 3C C0 81 66 */	lis r6, lbl_8165E1CC@ha
/* 8142E44C | 7C 85 23 78 */	mr r5, r4
/* 8142E450 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 8142E454 | 38 86 E1 CC */	addi r4, r6, lbl_8165E1CC@l
/* 8142E458 | 7D 89 03 A6 */	mtctr r12
/* 8142E45C | 4E 80 04 20 */	bctr
.endfn setOKButtonCaption__Q39textinput7toolbar12LayoutByNW4RFPCw

# .text:0x550 | 0x8142E460 | size: 0x1C
# textinput::toolbar::LayoutByNW4R::setCancelButtonCaption(const wchar_t*)
.fn setCancelButtonCaption__Q39textinput7toolbar12LayoutByNW4RFPCw, global
/* 8142E460 | 85 83 00 14 */	lwzu r12, 0x14(r3)
/* 8142E464 | 3C C0 81 66 */	lis r6, lbl_8165E1DC@ha
/* 8142E468 | 7C 85 23 78 */	mr r5, r4
/* 8142E46C | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 8142E470 | 38 86 E1 DC */	addi r4, r6, lbl_8165E1DC@l
/* 8142E474 | 7D 89 03 A6 */	mtctr r12
/* 8142E478 | 4E 80 04 20 */	bctr
.endfn setCancelButtonCaption__Q39textinput7toolbar12LayoutByNW4RFPCw

# .text:0x56C | 0x8142E47C | size: 0x214
# textinput::toolbar::LayoutByNW4R::init()
.fn init__Q39textinput7toolbar12LayoutByNW4RFv, global
/* 8142E47C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8142E480 | 7C 08 02 A6 */	mflr r0
/* 8142E484 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8142E488 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8142E48C | 3F E0 81 66 */	lis r31, lbl_8165E070@ha
/* 8142E490 | 3B FF E0 70 */	addi r31, r31, lbl_8165E070@l
/* 8142E494 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8142E498 | 7C 7E 1B 78 */	mr r30, r3
/* 8142E49C | 38 63 00 14 */	addi r3, r3, 0x14
/* 8142E4A0 | 48 00 80 0D */	bl init__Q39textinput11nw4rmanager6LayoutFv
/* 8142E4A4 | 81 9E 00 14 */	lwz r12, 0x14(r30)
/* 8142E4A8 | 38 7E 00 14 */	addi r3, r30, 0x14
/* 8142E4AC | 38 9F 01 78 */	addi r4, r31, 0x178
/* 8142E4B0 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8142E4B4 | 7D 89 03 A6 */	mtctr r12
/* 8142E4B8 | 4E 80 04 21 */	bctrl
/* 8142E4BC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142E4C0 | 38 80 00 00 */	li r4, 0x0
/* 8142E4C4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142E4C8 | 7D 89 03 A6 */	mtctr r12
/* 8142E4CC | 4E 80 04 21 */	bctrl
/* 8142E4D0 | 81 9E 00 14 */	lwz r12, 0x14(r30)
/* 8142E4D4 | 38 7E 00 14 */	addi r3, r30, 0x14
/* 8142E4D8 | 38 9F 01 88 */	addi r4, r31, 0x188
/* 8142E4DC | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8142E4E0 | 7D 89 03 A6 */	mtctr r12
/* 8142E4E4 | 4E 80 04 21 */	bctrl
/* 8142E4E8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142E4EC | 38 80 00 00 */	li r4, 0x0
/* 8142E4F0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142E4F4 | 7D 89 03 A6 */	mtctr r12
/* 8142E4F8 | 4E 80 04 21 */	bctrl
/* 8142E4FC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142E500 | 7F C3 F3 78 */	mr r3, r30
/* 8142E504 | 38 80 00 01 */	li r4, 0x1
/* 8142E508 | 81 8C 00 B0 */	lwz r12, 0xb0(r12)
/* 8142E50C | 7D 89 03 A6 */	mtctr r12
/* 8142E510 | 4E 80 04 21 */	bctrl
/* 8142E514 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142E518 | 7F C3 F3 78 */	mr r3, r30
/* 8142E51C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142E520 | 7D 89 03 A6 */	mtctr r12
/* 8142E524 | 4E 80 04 21 */	bctrl
/* 8142E528 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142E52C | 7C 64 1B 78 */	mr r4, r3
/* 8142E530 | 7F C3 F3 78 */	mr r3, r30
/* 8142E534 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142E538 | 7D 89 03 A6 */	mtctr r12
/* 8142E53C | 4E 80 04 21 */	bctrl
/* 8142E540 | 81 9E 00 14 */	lwz r12, 0x14(r30)
/* 8142E544 | 38 7E 00 14 */	addi r3, r30, 0x14
/* 8142E548 | 38 9F 01 40 */	addi r4, r31, 0x140
/* 8142E54C | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8142E550 | 7D 89 03 A6 */	mtctr r12
/* 8142E554 | 4E 80 04 21 */	bctrl
/* 8142E558 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142E55C | 38 80 00 00 */	li r4, 0x0
/* 8142E560 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142E564 | 7D 89 03 A6 */	mtctr r12
/* 8142E568 | 4E 80 04 21 */	bctrl
/* 8142E56C | 81 9E 00 14 */	lwz r12, 0x14(r30)
/* 8142E570 | 38 7E 00 14 */	addi r3, r30, 0x14
/* 8142E574 | 38 9F 01 50 */	addi r4, r31, 0x150
/* 8142E578 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8142E57C | 7D 89 03 A6 */	mtctr r12
/* 8142E580 | 4E 80 04 21 */	bctrl
/* 8142E584 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142E588 | 38 80 00 00 */	li r4, 0x0
/* 8142E58C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142E590 | 7D 89 03 A6 */	mtctr r12
/* 8142E594 | 4E 80 04 21 */	bctrl
/* 8142E598 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142E59C | 7F C3 F3 78 */	mr r3, r30
/* 8142E5A0 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8142E5A4 | 7D 89 03 A6 */	mtctr r12
/* 8142E5A8 | 4E 80 04 21 */	bctrl
/* 8142E5AC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142E5B0 | 3F E0 81 66 */	lis r31, cLanguageIndependentString__Q29textinput15langindependent@ha
/* 8142E5B4 | 54 60 10 3A */	slwi r0, r3, 2
/* 8142E5B8 | 7F C3 F3 78 */	mr r3, r30
/* 8142E5BC | 81 8C 00 C4 */	lwz r12, 0xc4(r12)
/* 8142E5C0 | 3B FF 7C 88 */	addi r31, r31, cLanguageIndependentString__Q29textinput15langindependent@l
/* 8142E5C4 | 7C 9F 00 2E */	lwzx r4, r31, r0
/* 8142E5C8 | 7D 89 03 A6 */	mtctr r12
/* 8142E5CC | 4E 80 04 21 */	bctrl
/* 8142E5D0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142E5D4 | 7F C3 F3 78 */	mr r3, r30
/* 8142E5D8 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8142E5DC | 7D 89 03 A6 */	mtctr r12
/* 8142E5E0 | 4E 80 04 21 */	bctrl
/* 8142E5E4 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142E5E8 | 54 60 10 3A */	slwi r0, r3, 2
/* 8142E5EC | 7C 9F 02 14 */	add r4, r31, r0
/* 8142E5F0 | 7F C3 F3 78 */	mr r3, r30
/* 8142E5F4 | 81 8C 00 C8 */	lwz r12, 0xc8(r12)
/* 8142E5F8 | 80 84 00 28 */	lwz r4, 0x28(r4)
/* 8142E5FC | 7D 89 03 A6 */	mtctr r12
/* 8142E600 | 4E 80 04 21 */	bctrl
/* 8142E604 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142E608 | 7F C3 F3 78 */	mr r3, r30
/* 8142E60C | 38 80 00 01 */	li r4, 0x1
/* 8142E610 | 81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 8142E614 | 7D 89 03 A6 */	mtctr r12
/* 8142E618 | 4E 80 04 21 */	bctrl
/* 8142E61C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142E620 | 7F C3 F3 78 */	mr r3, r30
/* 8142E624 | 38 80 00 01 */	li r4, 0x1
/* 8142E628 | 81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8142E62C | 7D 89 03 A6 */	mtctr r12
/* 8142E630 | 4E 80 04 21 */	bctrl
/* 8142E634 | 81 9E 00 14 */	lwz r12, 0x14(r30)
/* 8142E638 | 38 7E 00 14 */	addi r3, r30, 0x14
/* 8142E63C | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8142E640 | 7D 89 03 A6 */	mtctr r12
/* 8142E644 | 4E 80 04 21 */	bctrl
/* 8142E648 | 80 7E 00 18 */	lwz r3, 0x18(r30)
/* 8142E64C | 38 80 00 00 */	li r4, 0x0
/* 8142E650 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142E654 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8142E658 | 7D 89 03 A6 */	mtctr r12
/* 8142E65C | 4E 80 04 21 */	bctrl
/* 8142E660 | 80 7E 00 18 */	lwz r3, 0x18(r30)
/* 8142E664 | 38 9E 00 2C */	addi r4, r30, 0x2c
/* 8142E668 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142E66C | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8142E670 | 7D 89 03 A6 */	mtctr r12
/* 8142E674 | 4E 80 04 21 */	bctrl
/* 8142E678 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8142E67C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8142E680 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8142E684 | 7C 08 03 A6 */	mtlr r0
/* 8142E688 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8142E68C | 4E 80 00 20 */	blr
.endfn init__Q39textinput7toolbar12LayoutByNW4RFv

# .text:0x780 | 0x8142E690 | size: 0x4
# textinput::toolbar::Base::init()
.fn init__Q39textinput7toolbar4BaseFv, global
/* 8142E690 | 4E 80 00 20 */	blr
.endfn init__Q39textinput7toolbar4BaseFv

# .text:0x784 | 0x8142E694 | size: 0x138
# textinput::toolbar::LayoutByNW4R::cancelStateFocusIn()
.fn cancelStateFocusIn__Q39textinput7toolbar12LayoutByNW4RFv, global
/* 8142E694 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8142E698 | 7C 08 02 A6 */	mflr r0
/* 8142E69C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8142E6A0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8142E6A4 | 48 1C AE 1D */	bl _savegpr_27
/* 8142E6A8 | 3F C0 81 66 */	lis r30, lbl_8165E0B0@ha
/* 8142E6AC | 7C 7B 1B 78 */	mr r27, r3
/* 8142E6B0 | 3B DE E0 B0 */	addi r30, r30, lbl_8165E0B0@l
/* 8142E6B4 | 3B A0 00 00 */	li r29, 0x0
/* 8142E6B8 | 3F E0 81 66 */	lis r31, jumptable_8165E208@ha
.L_8142E6BC:
/* 8142E6BC | 81 9B 00 14 */	lwz r12, 0x14(r27)
/* 8142E6C0 | 38 7B 00 14 */	addi r3, r27, 0x14
/* 8142E6C4 | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 8142E6C8 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8142E6CC | 7D 89 03 A6 */	mtctr r12
/* 8142E6D0 | 4E 80 04 21 */	bctrl
/* 8142E6D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142E6D8 | 7C 7C 1B 78 */	mr r28, r3
/* 8142E6DC | 41 82 00 C8 */	beq .L_8142E7A4
/* 8142E6E0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142E6E4 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8142E6E8 | 7D 89 03 A6 */	mtctr r12
/* 8142E6EC | 4E 80 04 21 */	bctrl
/* 8142E6F0 | 28 03 00 0B */	cmplwi r3, 0xb
/* 8142E6F4 | 41 81 00 B0 */	bgt .L_8142E7A4
/* 8142E6F8 | 38 9F E2 08 */	addi r4, r31, jumptable_8165E208@l
/* 8142E6FC | 54 60 10 3A */	slwi r0, r3, 2
/* 8142E700 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 8142E704 | 7C 89 03 A6 */	mtctr r4
/* 8142E708 | 4E 80 04 20 */	bctr
.L_8142E70C:
/* 8142E70C | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 8142E710 | 7F 83 E3 78 */	mr r3, r28
/* 8142E714 | 38 80 00 02 */	li r4, 0x2
/* 8142E718 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142E71C | 7D 89 03 A6 */	mtctr r12
/* 8142E720 | 4E 80 04 21 */	bctrl
/* 8142E724 | 48 00 00 80 */	b .L_8142E7A4
.L_8142E728:
/* 8142E728 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 8142E72C | 7F 83 E3 78 */	mr r3, r28
/* 8142E730 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8142E734 | 7D 89 03 A6 */	mtctr r12
/* 8142E738 | 4E 80 04 21 */	bctrl
/* 8142E73C | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8142E740 | 41 82 00 30 */	beq .L_8142E770
/* 8142E744 | 40 80 00 60 */	bge .L_8142E7A4
/* 8142E748 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142E74C | 40 80 00 08 */	bge .L_8142E754
/* 8142E750 | 48 00 00 54 */	b .L_8142E7A4
.L_8142E754:
/* 8142E754 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 8142E758 | 7F 83 E3 78 */	mr r3, r28
/* 8142E75C | 38 80 00 02 */	li r4, 0x2
/* 8142E760 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142E764 | 7D 89 03 A6 */	mtctr r12
/* 8142E768 | 4E 80 04 21 */	bctrl
/* 8142E76C | 48 00 00 38 */	b .L_8142E7A4
.L_8142E770:
/* 8142E770 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 8142E774 | 7F 83 E3 78 */	mr r3, r28
/* 8142E778 | 38 80 00 05 */	li r4, 0x5
/* 8142E77C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142E780 | 7D 89 03 A6 */	mtctr r12
/* 8142E784 | 4E 80 04 21 */	bctrl
/* 8142E788 | 48 00 00 1C */	b .L_8142E7A4
.L_8142E78C:
/* 8142E78C | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 8142E790 | 7F 83 E3 78 */	mr r3, r28
/* 8142E794 | 38 80 00 09 */	li r4, 0x9
/* 8142E798 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142E79C | 7D 89 03 A6 */	mtctr r12
/* 8142E7A0 | 4E 80 04 21 */	bctrl
.L_8142E7A4:
/* 8142E7A4 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 8142E7A8 | 3B DE 00 40 */	addi r30, r30, 0x40
/* 8142E7AC | 28 1D 00 04 */	cmplwi r29, 0x4
/* 8142E7B0 | 41 80 FF 0C */	blt .L_8142E6BC
/* 8142E7B4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8142E7B8 | 48 1C AD 55 */	bl _restgpr_27
/* 8142E7BC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8142E7C0 | 7C 08 03 A6 */	mtlr r0
/* 8142E7C4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8142E7C8 | 4E 80 00 20 */	blr
.endfn cancelStateFocusIn__Q39textinput7toolbar12LayoutByNW4RFv

# .text:0x8BC | 0x8142E7CC | size: 0x8
# textinput::toolbar::AnmPane::getState()
.fn getState__Q39textinput7toolbar7AnmPaneFv, global
/* 8142E7CC | 80 63 00 2C */	lwz r3, 0x2c(r3)
/* 8142E7D0 | 4E 80 00 20 */	blr
.endfn getState__Q39textinput7toolbar7AnmPaneFv

# .text:0x8C4 | 0x8142E7D4 | size: 0x8
# textinput::toolbar::AnmPane::changeAnimation(unsigned long)
.fn changeAnimation__Q39textinput7toolbar7AnmPaneFUl, global
/* 8142E7D4 | 90 83 00 2C */	stw r4, 0x2c(r3)
/* 8142E7D8 | 48 00 88 E8 */	b changeAnimation__Q39textinput11nw4rmanager7AnmPaneFUl
.endfn changeAnimation__Q39textinput7toolbar7AnmPaneFUl

# .text:0x8CC | 0x8142E7DC | size: 0x8
# textinput::toolbar::AnmPane::getKeyType() const
.fn getKeyType__Q39textinput7toolbar7AnmPaneCFv, global
/* 8142E7DC | 80 63 00 30 */	lwz r3, 0x30(r3)
/* 8142E7E0 | 4E 80 00 20 */	blr
.endfn getKeyType__Q39textinput7toolbar7AnmPaneCFv

# .text:0x8D4 | 0x8142E7E4 | size: 0xFC
# textinput::toolbar::LayoutByNW4R::onOK()
.fn onOK__Q39textinput7toolbar12LayoutByNW4RFv, global
/* 8142E7E4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8142E7E8 | 7C 08 02 A6 */	mflr r0
/* 8142E7EC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8142E7F0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8142E7F4 | 7C 7F 1B 78 */	mr r31, r3
/* 8142E7F8 | 80 63 00 28 */	lwz r3, 0x28(r3)
/* 8142E7FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142E800 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8142E804 | 7D 89 03 A6 */	mtctr r12
/* 8142E808 | 4E 80 04 21 */	bctrl
/* 8142E80C | 80 7F 00 28 */	lwz r3, 0x28(r31)
/* 8142E810 | 38 80 00 09 */	li r4, 0x9
/* 8142E814 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142E818 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142E81C | 7D 89 03 A6 */	mtctr r12
/* 8142E820 | 4E 80 04 21 */	bctrl
/* 8142E824 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8142E828 | 7F E3 FB 78 */	mr r3, r31
/* 8142E82C | 81 8C 00 CC */	lwz r12, 0xcc(r12)
/* 8142E830 | 7D 89 03 A6 */	mtctr r12
/* 8142E834 | 4E 80 04 21 */	bctrl
/* 8142E838 | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8142E83C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142E840 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142E844 | 7D 89 03 A6 */	mtctr r12
/* 8142E848 | 4E 80 04 21 */	bctrl
/* 8142E84C | 81 9F 00 14 */	lwz r12, 0x14(r31)
/* 8142E850 | 38 7F 00 14 */	addi r3, r31, 0x14
/* 8142E854 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8142E858 | 7D 89 03 A6 */	mtctr r12
/* 8142E85C | 4E 80 04 21 */	bctrl
/* 8142E860 | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8142E864 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142E868 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 8142E86C | 7D 89 03 A6 */	mtctr r12
/* 8142E870 | 4E 80 04 21 */	bctrl
/* 8142E874 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142E878 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8142E87C | 7D 89 03 A6 */	mtctr r12
/* 8142E880 | 4E 80 04 21 */	bctrl
/* 8142E884 | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8142E888 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142E88C | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8142E890 | 7D 89 03 A6 */	mtctr r12
/* 8142E894 | 4E 80 04 21 */	bctrl
/* 8142E898 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142E89C | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8142E8A0 | 7D 89 03 A6 */	mtctr r12
/* 8142E8A4 | 4E 80 04 21 */	bctrl
/* 8142E8A8 | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8142E8AC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142E8B0 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 8142E8B4 | 7D 89 03 A6 */	mtctr r12
/* 8142E8B8 | 4E 80 04 21 */	bctrl
/* 8142E8BC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142E8C0 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8142E8C4 | 7D 89 03 A6 */	mtctr r12
/* 8142E8C8 | 4E 80 04 21 */	bctrl
/* 8142E8CC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8142E8D0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8142E8D4 | 7C 08 03 A6 */	mtlr r0
/* 8142E8D8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8142E8DC | 4E 80 00 20 */	blr
.endfn onOK__Q39textinput7toolbar12LayoutByNW4RFv

# .text:0x9D0 | 0x8142E8E0 | size: 0xFC
# textinput::toolbar::LayoutByNW4R::onCancel()
.fn onCancel__Q39textinput7toolbar12LayoutByNW4RFv, global
/* 8142E8E0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8142E8E4 | 7C 08 02 A6 */	mflr r0
/* 8142E8E8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8142E8EC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8142E8F0 | 7C 7F 1B 78 */	mr r31, r3
/* 8142E8F4 | 80 63 00 28 */	lwz r3, 0x28(r3)
/* 8142E8F8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142E8FC | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8142E900 | 7D 89 03 A6 */	mtctr r12
/* 8142E904 | 4E 80 04 21 */	bctrl
/* 8142E908 | 80 7F 00 28 */	lwz r3, 0x28(r31)
/* 8142E90C | 38 80 00 09 */	li r4, 0x9
/* 8142E910 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142E914 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142E918 | 7D 89 03 A6 */	mtctr r12
/* 8142E91C | 4E 80 04 21 */	bctrl
/* 8142E920 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8142E924 | 7F E3 FB 78 */	mr r3, r31
/* 8142E928 | 81 8C 00 CC */	lwz r12, 0xcc(r12)
/* 8142E92C | 7D 89 03 A6 */	mtctr r12
/* 8142E930 | 4E 80 04 21 */	bctrl
/* 8142E934 | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8142E938 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142E93C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142E940 | 7D 89 03 A6 */	mtctr r12
/* 8142E944 | 4E 80 04 21 */	bctrl
/* 8142E948 | 81 9F 00 14 */	lwz r12, 0x14(r31)
/* 8142E94C | 38 7F 00 14 */	addi r3, r31, 0x14
/* 8142E950 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8142E954 | 7D 89 03 A6 */	mtctr r12
/* 8142E958 | 4E 80 04 21 */	bctrl
/* 8142E95C | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8142E960 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142E964 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 8142E968 | 7D 89 03 A6 */	mtctr r12
/* 8142E96C | 4E 80 04 21 */	bctrl
/* 8142E970 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142E974 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8142E978 | 7D 89 03 A6 */	mtctr r12
/* 8142E97C | 4E 80 04 21 */	bctrl
/* 8142E980 | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8142E984 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142E988 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8142E98C | 7D 89 03 A6 */	mtctr r12
/* 8142E990 | 4E 80 04 21 */	bctrl
/* 8142E994 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142E998 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8142E99C | 7D 89 03 A6 */	mtctr r12
/* 8142E9A0 | 4E 80 04 21 */	bctrl
/* 8142E9A4 | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8142E9A8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142E9AC | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 8142E9B0 | 7D 89 03 A6 */	mtctr r12
/* 8142E9B4 | 4E 80 04 21 */	bctrl
/* 8142E9B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142E9BC | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8142E9C0 | 7D 89 03 A6 */	mtctr r12
/* 8142E9C4 | 4E 80 04 21 */	bctrl
/* 8142E9C8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8142E9CC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8142E9D0 | 7C 08 03 A6 */	mtlr r0
/* 8142E9D4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8142E9D8 | 4E 80 00 20 */	blr
.endfn onCancel__Q39textinput7toolbar12LayoutByNW4RFv

# .text:0xACC | 0x8142E9DC | size: 0x14
# textinput::toolbar::LayoutByNW4R::setLanguage(textinput::Language)
.fn setLanguage__Q39textinput7toolbar12LayoutByNW4RFQ29textinput8Language, global
/* 8142E9DC | 90 83 00 08 */	stw r4, 0x8(r3)
/* 8142E9E0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142E9E4 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8142E9E8 | 7D 89 03 A6 */	mtctr r12
/* 8142E9EC | 4E 80 04 20 */	bctr
.endfn setLanguage__Q39textinput7toolbar12LayoutByNW4RFQ29textinput8Language

# .text:0xAE0 | 0x8142E9F0 | size: 0x8
# textinput::toolbar::Base::setLanguage(textinput::Language)
.fn setLanguage__Q39textinput7toolbar4BaseFQ29textinput8Language, global
/* 8142E9F0 | 90 83 00 08 */	stw r4, 0x8(r3)
/* 8142E9F4 | 4E 80 00 20 */	blr
.endfn setLanguage__Q39textinput7toolbar4BaseFQ29textinput8Language

# .text:0xAE8 | 0x8142E9F8 | size: 0xA0
# textinput::toolbar::LayoutByNW4R::setQwertyWithSE(bool)
.fn setQwertyWithSE__Q39textinput7toolbar12LayoutByNW4RFb, global
/* 8142E9F8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8142E9FC | 7C 08 02 A6 */	mflr r0
/* 8142EA00 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8142EA04 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8142EA08 | 7C 9F 23 78 */	mr r31, r4
/* 8142EA0C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8142EA10 | 7C 7E 1B 78 */	mr r30, r3
/* 8142EA14 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142EA18 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142EA1C | 7D 89 03 A6 */	mtctr r12
/* 8142EA20 | 4E 80 04 21 */	bctrl
/* 8142EA24 | 7C 1F 18 40 */	cmplw r31, r3
/* 8142EA28 | 41 82 00 40 */	beq .L_8142EA68
/* 8142EA2C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8142EA30 | 41 82 00 20 */	beq .L_8142EA50
/* 8142EA34 | 80 7E 00 28 */	lwz r3, 0x28(r30)
/* 8142EA38 | 38 80 00 16 */	li r4, 0x16
/* 8142EA3C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142EA40 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142EA44 | 7D 89 03 A6 */	mtctr r12
/* 8142EA48 | 4E 80 04 21 */	bctrl
/* 8142EA4C | 48 00 00 1C */	b .L_8142EA68
.L_8142EA50:
/* 8142EA50 | 80 7E 00 28 */	lwz r3, 0x28(r30)
/* 8142EA54 | 38 80 00 17 */	li r4, 0x17
/* 8142EA58 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142EA5C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142EA60 | 7D 89 03 A6 */	mtctr r12
/* 8142EA64 | 4E 80 04 21 */	bctrl
.L_8142EA68:
/* 8142EA68 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142EA6C | 7F C3 F3 78 */	mr r3, r30
/* 8142EA70 | 7F E4 FB 78 */	mr r4, r31
/* 8142EA74 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142EA78 | 7D 89 03 A6 */	mtctr r12
/* 8142EA7C | 4E 80 04 21 */	bctrl
/* 8142EA80 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8142EA84 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8142EA88 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8142EA8C | 7C 08 03 A6 */	mtlr r0
/* 8142EA90 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8142EA94 | 4E 80 00 20 */	blr
.endfn setQwertyWithSE__Q39textinput7toolbar12LayoutByNW4RFb

# .text:0xB88 | 0x8142EA98 | size: 0x210
# textinput::toolbar::LayoutByNW4R::setQwerty(bool)
.fn setQwerty__Q39textinput7toolbar12LayoutByNW4RFb, global
/* 8142EA98 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8142EA9C | 7C 08 02 A6 */	mflr r0
/* 8142EAA0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8142EAA4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8142EAA8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8142EAAC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8142EAB0 | 7C 9E 23 78 */	mr r30, r4
/* 8142EAB4 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8142EAB8 | 7C 7D 1B 78 */	mr r29, r3
/* 8142EABC | 41 82 00 9C */	beq .L_8142EB58
/* 8142EAC0 | 85 83 00 14 */	lwzu r12, 0x14(r3)
/* 8142EAC4 | 3F E0 81 66 */	lis r31, lbl_8165E1E8@ha
/* 8142EAC8 | 38 9F E1 E8 */	addi r4, r31, lbl_8165E1E8@l
/* 8142EACC | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8142EAD0 | 7D 89 03 A6 */	mtctr r12
/* 8142EAD4 | 4E 80 04 21 */	bctrl
/* 8142EAD8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142EADC | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8142EAE0 | 7D 89 03 A6 */	mtctr r12
/* 8142EAE4 | 4E 80 04 21 */	bctrl
/* 8142EAE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142EAEC | 41 82 00 38 */	beq .L_8142EB24
/* 8142EAF0 | 2C 03 00 06 */	cmpwi r3, 0x6
/* 8142EAF4 | 41 82 00 30 */	beq .L_8142EB24
/* 8142EAF8 | 81 9D 00 14 */	lwz r12, 0x14(r29)
/* 8142EAFC | 38 7D 00 14 */	addi r3, r29, 0x14
/* 8142EB00 | 38 9F E1 E8 */	addi r4, r31, lbl_8165E1E8@l
/* 8142EB04 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8142EB08 | 7D 89 03 A6 */	mtctr r12
/* 8142EB0C | 4E 80 04 21 */	bctrl
/* 8142EB10 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142EB14 | 38 80 00 06 */	li r4, 0x6
/* 8142EB18 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142EB1C | 7D 89 03 A6 */	mtctr r12
/* 8142EB20 | 4E 80 04 21 */	bctrl
.L_8142EB24:
/* 8142EB24 | 81 9D 00 14 */	lwz r12, 0x14(r29)
/* 8142EB28 | 3C 80 81 66 */	lis r4, lbl_8165E1F8@ha
/* 8142EB2C | 38 7D 00 14 */	addi r3, r29, 0x14
/* 8142EB30 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8142EB34 | 38 84 E1 F8 */	addi r4, r4, lbl_8165E1F8@l
/* 8142EB38 | 7D 89 03 A6 */	mtctr r12
/* 8142EB3C | 4E 80 04 21 */	bctrl
/* 8142EB40 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142EB44 | 38 80 00 00 */	li r4, 0x0
/* 8142EB48 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142EB4C | 7D 89 03 A6 */	mtctr r12
/* 8142EB50 | 4E 80 04 21 */	bctrl
/* 8142EB54 | 48 00 00 98 */	b .L_8142EBEC
.L_8142EB58:
/* 8142EB58 | 85 83 00 14 */	lwzu r12, 0x14(r3)
/* 8142EB5C | 3F E0 81 66 */	lis r31, lbl_8165E1F8@ha
/* 8142EB60 | 38 9F E1 F8 */	addi r4, r31, lbl_8165E1F8@l
/* 8142EB64 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8142EB68 | 7D 89 03 A6 */	mtctr r12
/* 8142EB6C | 4E 80 04 21 */	bctrl
/* 8142EB70 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142EB74 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8142EB78 | 7D 89 03 A6 */	mtctr r12
/* 8142EB7C | 4E 80 04 21 */	bctrl
/* 8142EB80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142EB84 | 41 82 00 38 */	beq .L_8142EBBC
/* 8142EB88 | 2C 03 00 06 */	cmpwi r3, 0x6
/* 8142EB8C | 41 82 00 30 */	beq .L_8142EBBC
/* 8142EB90 | 81 9D 00 14 */	lwz r12, 0x14(r29)
/* 8142EB94 | 38 7D 00 14 */	addi r3, r29, 0x14
/* 8142EB98 | 38 9F E1 F8 */	addi r4, r31, lbl_8165E1F8@l
/* 8142EB9C | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8142EBA0 | 7D 89 03 A6 */	mtctr r12
/* 8142EBA4 | 4E 80 04 21 */	bctrl
/* 8142EBA8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142EBAC | 38 80 00 06 */	li r4, 0x6
/* 8142EBB0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142EBB4 | 7D 89 03 A6 */	mtctr r12
/* 8142EBB8 | 4E 80 04 21 */	bctrl
.L_8142EBBC:
/* 8142EBBC | 81 9D 00 14 */	lwz r12, 0x14(r29)
/* 8142EBC0 | 3C 80 81 66 */	lis r4, lbl_8165E1E8@ha
/* 8142EBC4 | 38 7D 00 14 */	addi r3, r29, 0x14
/* 8142EBC8 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8142EBCC | 38 84 E1 E8 */	addi r4, r4, lbl_8165E1E8@l
/* 8142EBD0 | 7D 89 03 A6 */	mtctr r12
/* 8142EBD4 | 4E 80 04 21 */	bctrl
/* 8142EBD8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142EBDC | 38 80 00 00 */	li r4, 0x0
/* 8142EBE0 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142EBE4 | 7D 89 03 A6 */	mtctr r12
/* 8142EBE8 | 4E 80 04 21 */	bctrl
.L_8142EBEC:
/* 8142EBEC | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8142EBF0 | 7F A3 EB 78 */	mr r3, r29
/* 8142EBF4 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8142EBF8 | 7D 89 03 A6 */	mtctr r12
/* 8142EBFC | 4E 80 04 21 */	bctrl
/* 8142EC00 | 2C 03 00 09 */	cmpwi r3, 0x9
/* 8142EC04 | 40 82 00 50 */	bne .L_8142EC54
/* 8142EC08 | 80 7D 00 10 */	lwz r3, 0x10(r29)
/* 8142EC0C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142EC10 | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8142EC14 | 7D 89 03 A6 */	mtctr r12
/* 8142EC18 | 4E 80 04 21 */	bctrl
/* 8142EC1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142EC20 | 41 82 00 34 */	beq .L_8142EC54
/* 8142EC24 | 80 7D 00 10 */	lwz r3, 0x10(r29)
/* 8142EC28 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142EC2C | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8142EC30 | 7D 89 03 A6 */	mtctr r12
/* 8142EC34 | 4E 80 04 21 */	bctrl
/* 8142EC38 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142EC3C | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8142EC40 | 7D 89 03 A6 */	mtctr r12
/* 8142EC44 | 4E 80 04 21 */	bctrl
/* 8142EC48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142EC4C | 40 82 00 08 */	bne .L_8142EC54
/* 8142EC50 | 3B C0 00 01 */	li r30, 0x1
.L_8142EC54:
/* 8142EC54 | 9B DD 00 04 */	stb r30, 0x4(r29)
/* 8142EC58 | 80 7D 00 10 */	lwz r3, 0x10(r29)
/* 8142EC5C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142EC60 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8142EC64 | 7D 89 03 A6 */	mtctr r12
/* 8142EC68 | 4E 80 04 21 */	bctrl
/* 8142EC6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142EC70 | 41 82 00 1C */	beq .L_8142EC8C
/* 8142EC74 | 80 7D 00 10 */	lwz r3, 0x10(r29)
/* 8142EC78 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142EC7C | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8142EC80 | 7D 89 03 A6 */	mtctr r12
/* 8142EC84 | 4E 80 04 21 */	bctrl
/* 8142EC88 | 4B FF 5C B5 */	bl notifyChangeMode__Q39textinput9inputform4BaseFv
.L_8142EC8C:
/* 8142EC8C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8142EC90 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8142EC94 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8142EC98 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8142EC9C | 7C 08 03 A6 */	mtlr r0
/* 8142ECA0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8142ECA4 | 4E 80 00 20 */	blr
.endfn setQwerty__Q39textinput7toolbar12LayoutByNW4RFb

# .text:0xD98 | 0x8142ECA8 | size: 0xA8
# textinput::toolbar::LayoutByNW4R::enableKeytopChange(bool)
.fn enableKeytopChange__Q39textinput7toolbar12LayoutByNW4RFb, global
/* 8142ECA8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8142ECAC | 7C 08 02 A6 */	mflr r0
/* 8142ECB0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8142ECB4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8142ECB8 | 3F E0 81 66 */	lis r31, lbl_8165E070@ha
/* 8142ECBC | 3B FF E0 70 */	addi r31, r31, lbl_8165E070@l
/* 8142ECC0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8142ECC4 | 7C 9E 23 78 */	mr r30, r4
/* 8142ECC8 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8142ECCC | 7C 7D 1B 78 */	mr r29, r3
/* 8142ECD0 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 8142ECD4 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 8142ECD8 | 40 82 00 08 */	bne .L_8142ECE0
/* 8142ECDC | 3B C0 00 00 */	li r30, 0x0
.L_8142ECE0:
/* 8142ECE0 | 9B C3 00 C0 */	stb r30, 0xc0(r3)
/* 8142ECE4 | 7F C5 F3 78 */	mr r5, r30
/* 8142ECE8 | 38 9F 01 88 */	addi r4, r31, 0x188
/* 8142ECEC | 85 83 00 14 */	lwzu r12, 0x14(r3)
/* 8142ECF0 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8142ECF4 | 7D 89 03 A6 */	mtctr r12
/* 8142ECF8 | 4E 80 04 21 */	bctrl
/* 8142ECFC | 81 9D 00 14 */	lwz r12, 0x14(r29)
/* 8142ED00 | 38 7D 00 14 */	addi r3, r29, 0x14
/* 8142ED04 | 7F C5 F3 78 */	mr r5, r30
/* 8142ED08 | 38 9F 01 78 */	addi r4, r31, 0x178
/* 8142ED0C | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8142ED10 | 7D 89 03 A6 */	mtctr r12
/* 8142ED14 | 4E 80 04 21 */	bctrl
/* 8142ED18 | 81 9D 00 14 */	lwz r12, 0x14(r29)
/* 8142ED1C | 38 7D 00 14 */	addi r3, r29, 0x14
/* 8142ED20 | 7F C5 F3 78 */	mr r5, r30
/* 8142ED24 | 38 9F 01 C8 */	addi r4, r31, 0x1c8
/* 8142ED28 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8142ED2C | 7D 89 03 A6 */	mtctr r12
/* 8142ED30 | 4E 80 04 21 */	bctrl
/* 8142ED34 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8142ED38 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8142ED3C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8142ED40 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8142ED44 | 7C 08 03 A6 */	mtlr r0
/* 8142ED48 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8142ED4C | 4E 80 00 20 */	blr
.endfn enableKeytopChange__Q39textinput7toolbar12LayoutByNW4RFb

# .text:0xE40 | 0x8142ED50 | size: 0x20
# textinput::toolbar::LayoutByNW4R::getUpArea()
.fn getUpArea__Q39textinput7toolbar12LayoutByNW4RFv, global
/* 8142ED50 | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 8142ED54 | 38 8D 93 A8 */	li r4, lbl_816973E8@sda21
/* 8142ED58 | 38 A0 00 01 */	li r5, 0x1
/* 8142ED5C | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8142ED60 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142ED64 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8142ED68 | 7D 89 03 A6 */	mtctr r12
/* 8142ED6C | 4E 80 04 20 */	bctr
.endfn getUpArea__Q39textinput7toolbar12LayoutByNW4RFv

# .text:0xE60 | 0x8142ED70 | size: 0x20
# textinput::toolbar::LayoutByNW4R::getDownArea()
.fn getDownArea__Q39textinput7toolbar12LayoutByNW4RFv, global
/* 8142ED70 | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 8142ED74 | 38 8D 93 B0 */	li r4, lbl_816973F0@sda21
/* 8142ED78 | 38 A0 00 01 */	li r5, 0x1
/* 8142ED7C | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8142ED80 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142ED84 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8142ED88 | 7D 89 03 A6 */	mtctr r12
/* 8142ED8C | 4E 80 04 20 */	bctr
.endfn getDownArea__Q39textinput7toolbar12LayoutByNW4RFv

# .text:0xE80 | 0x8142ED90 | size: 0x190
# textinput::toolbar::NormalButtonAnmPane::onAnmEvent(textinput::nw4rmanager::AnmPane::AnmPaneEvent)
.fn onAnmEvent__Q39textinput7toolbar19NormalButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, global
/* 8142ED90 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8142ED94 | 7C 08 02 A6 */	mflr r0
/* 8142ED98 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8142ED9C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8142EDA0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8142EDA4 | 7C 9F 23 78 */	mr r31, r4
/* 8142EDA8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8142EDAC | 7C 7E 1B 78 */	mr r30, r3
/* 8142EDB0 | 40 82 00 18 */	bne .L_8142EDC8
/* 8142EDB4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142EDB8 | 38 80 00 04 */	li r4, 0x4
/* 8142EDBC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142EDC0 | 7D 89 03 A6 */	mtctr r12
/* 8142EDC4 | 4E 80 04 21 */	bctrl
.L_8142EDC8:
/* 8142EDC8 | 80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 8142EDCC | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8142EDD0 | 41 82 00 B4 */	beq .L_8142EE84
/* 8142EDD4 | 40 80 00 14 */	bge .L_8142EDE8
/* 8142EDD8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8142EDDC | 41 82 00 1C */	beq .L_8142EDF8
/* 8142EDE0 | 40 80 00 3C */	bge .L_8142EE1C
/* 8142EDE4 | 48 00 01 24 */	b .L_8142EF08
.L_8142EDE8:
/* 8142EDE8 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 8142EDEC | 41 82 00 DC */	beq .L_8142EEC8
/* 8142EDF0 | 40 80 01 18 */	bge .L_8142EF08
/* 8142EDF4 | 48 00 00 6C */	b .L_8142EE60
.L_8142EDF8:
/* 8142EDF8 | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 8142EDFC | 40 82 01 0C */	bne .L_8142EF08
/* 8142EE00 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142EE04 | 7F C3 F3 78 */	mr r3, r30
/* 8142EE08 | 38 80 00 01 */	li r4, 0x1
/* 8142EE0C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142EE10 | 7D 89 03 A6 */	mtctr r12
/* 8142EE14 | 4E 80 04 21 */	bctrl
/* 8142EE18 | 48 00 00 F0 */	b .L_8142EF08
.L_8142EE1C:
/* 8142EE1C | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 8142EE20 | 40 82 00 1C */	bne .L_8142EE3C
/* 8142EE24 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142EE28 | 7F C3 F3 78 */	mr r3, r30
/* 8142EE2C | 38 80 00 03 */	li r4, 0x3
/* 8142EE30 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142EE34 | 7D 89 03 A6 */	mtctr r12
/* 8142EE38 | 4E 80 04 21 */	bctrl
.L_8142EE3C:
/* 8142EE3C | 2C 1F 00 02 */	cmpwi r31, 0x2
/* 8142EE40 | 40 82 00 C8 */	bne .L_8142EF08
/* 8142EE44 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142EE48 | 7F C3 F3 78 */	mr r3, r30
/* 8142EE4C | 38 80 00 02 */	li r4, 0x2
/* 8142EE50 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142EE54 | 7D 89 03 A6 */	mtctr r12
/* 8142EE58 | 4E 80 04 21 */	bctrl
/* 8142EE5C | 48 00 00 AC */	b .L_8142EF08
.L_8142EE60:
/* 8142EE60 | 2C 1F 00 02 */	cmpwi r31, 0x2
/* 8142EE64 | 40 82 00 A4 */	bne .L_8142EF08
/* 8142EE68 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142EE6C | 7F C3 F3 78 */	mr r3, r30
/* 8142EE70 | 38 80 00 02 */	li r4, 0x2
/* 8142EE74 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142EE78 | 7D 89 03 A6 */	mtctr r12
/* 8142EE7C | 4E 80 04 21 */	bctrl
/* 8142EE80 | 48 00 00 88 */	b .L_8142EF08
.L_8142EE84:
/* 8142EE84 | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 8142EE88 | 40 82 00 1C */	bne .L_8142EEA4
/* 8142EE8C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142EE90 | 7F C3 F3 78 */	mr r3, r30
/* 8142EE94 | 38 80 00 00 */	li r4, 0x0
/* 8142EE98 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142EE9C | 7D 89 03 A6 */	mtctr r12
/* 8142EEA0 | 4E 80 04 21 */	bctrl
.L_8142EEA4:
/* 8142EEA4 | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 8142EEA8 | 40 82 00 60 */	bne .L_8142EF08
/* 8142EEAC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142EEB0 | 7F C3 F3 78 */	mr r3, r30
/* 8142EEB4 | 38 80 00 01 */	li r4, 0x1
/* 8142EEB8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142EEBC | 7D 89 03 A6 */	mtctr r12
/* 8142EEC0 | 4E 80 04 21 */	bctrl
/* 8142EEC4 | 48 00 00 44 */	b .L_8142EF08
.L_8142EEC8:
/* 8142EEC8 | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 8142EECC | 40 82 00 1C */	bne .L_8142EEE8
/* 8142EED0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142EED4 | 7F C3 F3 78 */	mr r3, r30
/* 8142EED8 | 38 80 00 03 */	li r4, 0x3
/* 8142EEDC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142EEE0 | 7D 89 03 A6 */	mtctr r12
/* 8142EEE4 | 4E 80 04 21 */	bctrl
.L_8142EEE8:
/* 8142EEE8 | 2C 1F 00 02 */	cmpwi r31, 0x2
/* 8142EEEC | 40 82 00 1C */	bne .L_8142EF08
/* 8142EEF0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142EEF4 | 7F C3 F3 78 */	mr r3, r30
/* 8142EEF8 | 38 80 00 02 */	li r4, 0x2
/* 8142EEFC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142EF00 | 7D 89 03 A6 */	mtctr r12
/* 8142EF04 | 4E 80 04 21 */	bctrl
.L_8142EF08:
/* 8142EF08 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8142EF0C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8142EF10 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8142EF14 | 7C 08 03 A6 */	mtlr r0
/* 8142EF18 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8142EF1C | 4E 80 00 20 */	blr
.endfn onAnmEvent__Q39textinput7toolbar19NormalButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent

# .text:0x1010 | 0x8142EF20 | size: 0x1BC
# textinput::toolbar::ToggleButtonAnmPane::onAnmEvent(textinput::nw4rmanager::AnmPane::AnmPaneEvent)
.fn onAnmEvent__Q39textinput7toolbar19ToggleButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, global
/* 8142EF20 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8142EF24 | 7C 08 02 A6 */	mflr r0
/* 8142EF28 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8142EF2C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8142EF30 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8142EF34 | 7C 9F 23 78 */	mr r31, r4
/* 8142EF38 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8142EF3C | 7C 7E 1B 78 */	mr r30, r3
/* 8142EF40 | 40 82 00 2C */	bne .L_8142EF6C
/* 8142EF44 | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 8142EF48 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 8142EF4C | 41 82 00 20 */	beq .L_8142EF6C
/* 8142EF50 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 8142EF54 | 41 82 00 18 */	beq .L_8142EF6C
/* 8142EF58 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142EF5C | 38 80 00 04 */	li r4, 0x4
/* 8142EF60 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142EF64 | 7D 89 03 A6 */	mtctr r12
/* 8142EF68 | 4E 80 04 21 */	bctrl
.L_8142EF6C:
/* 8142EF6C | 80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 8142EF70 | 28 00 00 06 */	cmplwi r0, 0x6
/* 8142EF74 | 41 81 01 50 */	bgt .L_8142F0C4
/* 8142EF78 | 3C 60 81 66 */	lis r3, jumptable_8165E244@ha
/* 8142EF7C | 54 00 10 3A */	slwi r0, r0, 2
/* 8142EF80 | 38 63 E2 44 */	addi r3, r3, jumptable_8165E244@l
/* 8142EF84 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 8142EF88 | 7C 69 03 A6 */	mtctr r3
/* 8142EF8C | 4E 80 04 20 */	bctr
.L_8142EF90:
/* 8142EF90 | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 8142EF94 | 40 82 01 30 */	bne .L_8142F0C4
/* 8142EF98 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142EF9C | 7F C3 F3 78 */	mr r3, r30
/* 8142EFA0 | 38 80 00 01 */	li r4, 0x1
/* 8142EFA4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142EFA8 | 7D 89 03 A6 */	mtctr r12
/* 8142EFAC | 4E 80 04 21 */	bctrl
/* 8142EFB0 | 48 00 01 14 */	b .L_8142F0C4
.L_8142EFB4:
/* 8142EFB4 | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 8142EFB8 | 40 82 00 1C */	bne .L_8142EFD4
/* 8142EFBC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142EFC0 | 7F C3 F3 78 */	mr r3, r30
/* 8142EFC4 | 38 80 00 03 */	li r4, 0x3
/* 8142EFC8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142EFCC | 7D 89 03 A6 */	mtctr r12
/* 8142EFD0 | 4E 80 04 21 */	bctrl
.L_8142EFD4:
/* 8142EFD4 | 2C 1F 00 02 */	cmpwi r31, 0x2
/* 8142EFD8 | 40 82 00 EC */	bne .L_8142F0C4
/* 8142EFDC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142EFE0 | 7F C3 F3 78 */	mr r3, r30
/* 8142EFE4 | 38 80 00 02 */	li r4, 0x2
/* 8142EFE8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142EFEC | 7D 89 03 A6 */	mtctr r12
/* 8142EFF0 | 4E 80 04 21 */	bctrl
/* 8142EFF4 | 48 00 00 D0 */	b .L_8142F0C4
.L_8142EFF8:
/* 8142EFF8 | 2C 1F 00 02 */	cmpwi r31, 0x2
/* 8142EFFC | 40 82 00 C8 */	bne .L_8142F0C4
/* 8142F000 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142F004 | 7F C3 F3 78 */	mr r3, r30
/* 8142F008 | 38 80 00 02 */	li r4, 0x2
/* 8142F00C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142F010 | 7D 89 03 A6 */	mtctr r12
/* 8142F014 | 4E 80 04 21 */	bctrl
/* 8142F018 | 48 00 00 AC */	b .L_8142F0C4
.L_8142F01C:
/* 8142F01C | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 8142F020 | 40 82 00 1C */	bne .L_8142F03C
/* 8142F024 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142F028 | 7F C3 F3 78 */	mr r3, r30
/* 8142F02C | 38 80 00 00 */	li r4, 0x0
/* 8142F030 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142F034 | 7D 89 03 A6 */	mtctr r12
/* 8142F038 | 4E 80 04 21 */	bctrl
.L_8142F03C:
/* 8142F03C | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 8142F040 | 40 82 00 84 */	bne .L_8142F0C4
/* 8142F044 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142F048 | 7F C3 F3 78 */	mr r3, r30
/* 8142F04C | 38 80 00 01 */	li r4, 0x1
/* 8142F050 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142F054 | 7D 89 03 A6 */	mtctr r12
/* 8142F058 | 4E 80 04 21 */	bctrl
/* 8142F05C | 48 00 00 68 */	b .L_8142F0C4
.L_8142F060:
/* 8142F060 | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 8142F064 | 40 82 00 60 */	bne .L_8142F0C4
/* 8142F068 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142F06C | 7F C3 F3 78 */	mr r3, r30
/* 8142F070 | 38 80 00 05 */	li r4, 0x5
/* 8142F074 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142F078 | 7D 89 03 A6 */	mtctr r12
/* 8142F07C | 4E 80 04 21 */	bctrl
/* 8142F080 | 48 00 00 44 */	b .L_8142F0C4
.L_8142F084:
/* 8142F084 | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 8142F088 | 40 82 00 1C */	bne .L_8142F0A4
/* 8142F08C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142F090 | 7F C3 F3 78 */	mr r3, r30
/* 8142F094 | 38 80 00 00 */	li r4, 0x0
/* 8142F098 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142F09C | 7D 89 03 A6 */	mtctr r12
/* 8142F0A0 | 4E 80 04 21 */	bctrl
.L_8142F0A4:
/* 8142F0A4 | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 8142F0A8 | 40 82 00 1C */	bne .L_8142F0C4
/* 8142F0AC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142F0B0 | 7F C3 F3 78 */	mr r3, r30
/* 8142F0B4 | 38 80 00 01 */	li r4, 0x1
/* 8142F0B8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142F0BC | 7D 89 03 A6 */	mtctr r12
/* 8142F0C0 | 4E 80 04 21 */	bctrl
.L_8142F0C4:
/* 8142F0C4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8142F0C8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8142F0CC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8142F0D0 | 7C 08 03 A6 */	mtlr r0
/* 8142F0D4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8142F0D8 | 4E 80 00 20 */	blr
.endfn onAnmEvent__Q39textinput7toolbar19ToggleButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent

# .text:0x11CC | 0x8142F0DC | size: 0x28C
# textinput::toolbar::EventHandler::onTiEvent(textinput::gui::PaneComponent*, unsigned long, textinput::nw4rmanager::TiEventHandler::Input*)
.fn onTiEvent__Q39textinput7toolbar12EventHandlerFPQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input, global
/* 8142F0DC | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8142F0E0 | 7C 08 02 A6 */	mflr r0
/* 8142F0E4 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 8142F0E8 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8142F0EC | 48 1C A3 D5 */	bl _savegpr_27
/* 8142F0F0 | 80 84 00 9C */	lwz r4, 0x9c(r4)
/* 8142F0F4 | 3F E0 81 66 */	lis r31, lbl_8165E070@ha
/* 8142F0F8 | 7C BC 2B 78 */	mr r28, r5
/* 8142F0FC | 7C 7B 1B 78 */	mr r27, r3
/* 8142F100 | 88 04 00 B4 */	lbz r0, 0xb4(r4)
/* 8142F104 | 38 A4 00 B4 */	addi r5, r4, 0xb4
/* 8142F108 | 7C DD 33 78 */	mr r29, r6
/* 8142F10C | 3B FF E0 70 */	addi r31, r31, lbl_8165E070@l
/* 8142F110 | 2C 00 00 42 */	cmpwi r0, 0x42
/* 8142F114 | 40 82 02 3C */	bne .L_8142F350
/* 8142F118 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8142F11C | 38 80 00 11 */	li r4, 0x11
/* 8142F120 | 38 C0 00 00 */	li r6, 0x0
/* 8142F124 | 38 E0 00 50 */	li r7, 0x50
/* 8142F128 | 48 00 B1 35 */	bl replaceChar__Q29textinput4utilFPcUlPCcic
/* 8142F12C | 80 7B 00 0C */	lwz r3, 0xc(r27)
/* 8142F130 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8142F134 | 85 83 00 14 */	lwzu r12, 0x14(r3)
/* 8142F138 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8142F13C | 7D 89 03 A6 */	mtctr r12
/* 8142F140 | 4E 80 04 21 */	bctrl
/* 8142F144 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142F148 | 7C 7E 1B 78 */	mr r30, r3
/* 8142F14C | 41 82 00 AC */	beq .L_8142F1F8
/* 8142F150 | 2C 1C 00 01 */	cmpwi r28, 0x1
/* 8142F154 | 41 82 00 44 */	beq .L_8142F198
/* 8142F158 | 40 80 00 10 */	bge .L_8142F168
/* 8142F15C | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 8142F160 | 40 80 00 50 */	bge .L_8142F1B0
/* 8142F164 | 48 00 00 94 */	b .L_8142F1F8
.L_8142F168:
/* 8142F168 | 2C 1C 00 04 */	cmpwi r28, 0x4
/* 8142F16C | 41 82 00 08 */	beq .L_8142F174
/* 8142F170 | 48 00 00 88 */	b .L_8142F1F8
.L_8142F174:
/* 8142F174 | 80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8142F178 | 54 00 05 29 */	rlwinm. r0, r0, 0, 20, 20
/* 8142F17C | 41 82 00 7C */	beq .L_8142F1F8
/* 8142F180 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142F184 | 38 80 00 00 */	li r4, 0x0
/* 8142F188 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142F18C | 7D 89 03 A6 */	mtctr r12
/* 8142F190 | 4E 80 04 21 */	bctrl
/* 8142F194 | 48 00 00 64 */	b .L_8142F1F8
.L_8142F198:
/* 8142F198 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142F19C | 38 80 00 02 */	li r4, 0x2
/* 8142F1A0 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142F1A4 | 7D 89 03 A6 */	mtctr r12
/* 8142F1A8 | 4E 80 04 21 */	bctrl
/* 8142F1AC | 48 00 00 4C */	b .L_8142F1F8
.L_8142F1B0:
/* 8142F1B0 | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 8142F1B4 | 38 80 00 04 */	li r4, 0x4
/* 8142F1B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142F1BC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142F1C0 | 7D 89 03 A6 */	mtctr r12
/* 8142F1C4 | 4E 80 04 21 */	bctrl
/* 8142F1C8 | 80 7B 00 0C */	lwz r3, 0xc(r27)
/* 8142F1CC | 85 83 00 14 */	lwzu r12, 0x14(r3)
/* 8142F1D0 | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 8142F1D4 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8142F1D8 | 7D 89 03 A6 */	mtctr r12
/* 8142F1DC | 4E 80 04 21 */	bctrl
/* 8142F1E0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8142F1E4 | 7F C3 F3 78 */	mr r3, r30
/* 8142F1E8 | 38 80 00 01 */	li r4, 0x1
/* 8142F1EC | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142F1F0 | 7D 89 03 A6 */	mtctr r12
/* 8142F1F4 | 4E 80 04 21 */	bctrl
.L_8142F1F8:
/* 8142F1F8 | 28 1C 00 04 */	cmplwi r28, 0x4
/* 8142F1FC | 40 82 01 54 */	bne .L_8142F350
/* 8142F200 | 80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8142F204 | 54 00 05 29 */	rlwinm. r0, r0, 0, 20, 20
/* 8142F208 | 41 82 01 48 */	beq .L_8142F350
/* 8142F20C | 38 61 00 08 */	addi r3, r1, 0x8
/* 8142F210 | 38 9F 01 40 */	addi r4, r31, 0x140
/* 8142F214 | 48 00 AF E1 */	bl strcmp__Q29textinput4utilFPCcPCc
/* 8142F218 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142F21C | 41 82 00 1C */	beq .L_8142F238
/* 8142F220 | 80 7B 00 0C */	lwz r3, 0xc(r27)
/* 8142F224 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142F228 | 81 8C 00 A0 */	lwz r12, 0xa0(r12)
/* 8142F22C | 7D 89 03 A6 */	mtctr r12
/* 8142F230 | 4E 80 04 21 */	bctrl
/* 8142F234 | 48 00 01 1C */	b .L_8142F350
.L_8142F238:
/* 8142F238 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8142F23C | 38 9F 01 50 */	addi r4, r31, 0x150
/* 8142F240 | 48 00 AF B5 */	bl strcmp__Q29textinput4utilFPCcPCc
/* 8142F244 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142F248 | 41 82 00 1C */	beq .L_8142F264
/* 8142F24C | 80 7B 00 0C */	lwz r3, 0xc(r27)
/* 8142F250 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142F254 | 81 8C 00 A4 */	lwz r12, 0xa4(r12)
/* 8142F258 | 7D 89 03 A6 */	mtctr r12
/* 8142F25C | 4E 80 04 21 */	bctrl
/* 8142F260 | 48 00 00 F0 */	b .L_8142F350
.L_8142F264:
/* 8142F264 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8142F268 | 38 9F 01 88 */	addi r4, r31, 0x188
/* 8142F26C | 48 00 AF 89 */	bl strcmp__Q29textinput4utilFPCcPCc
/* 8142F270 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142F274 | 41 82 00 68 */	beq .L_8142F2DC
/* 8142F278 | 80 7B 00 0C */	lwz r3, 0xc(r27)
/* 8142F27C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142F280 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142F284 | 7D 89 03 A6 */	mtctr r12
/* 8142F288 | 4E 80 04 21 */	bctrl
/* 8142F28C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142F290 | 40 82 00 30 */	bne .L_8142F2C0
/* 8142F294 | 80 7B 00 0C */	lwz r3, 0xc(r27)
/* 8142F298 | 38 9F 01 78 */	addi r4, r31, 0x178
/* 8142F29C | 85 83 00 14 */	lwzu r12, 0x14(r3)
/* 8142F2A0 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8142F2A4 | 7D 89 03 A6 */	mtctr r12
/* 8142F2A8 | 4E 80 04 21 */	bctrl
/* 8142F2AC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142F2B0 | 38 80 00 06 */	li r4, 0x6
/* 8142F2B4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142F2B8 | 7D 89 03 A6 */	mtctr r12
/* 8142F2BC | 4E 80 04 21 */	bctrl
.L_8142F2C0:
/* 8142F2C0 | 80 7B 00 0C */	lwz r3, 0xc(r27)
/* 8142F2C4 | 38 80 00 01 */	li r4, 0x1
/* 8142F2C8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142F2CC | 81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 8142F2D0 | 7D 89 03 A6 */	mtctr r12
/* 8142F2D4 | 4E 80 04 21 */	bctrl
/* 8142F2D8 | 48 00 00 78 */	b .L_8142F350
.L_8142F2DC:
/* 8142F2DC | 38 61 00 08 */	addi r3, r1, 0x8
/* 8142F2E0 | 38 9F 01 78 */	addi r4, r31, 0x178
/* 8142F2E4 | 48 00 AF 11 */	bl strcmp__Q29textinput4utilFPCcPCc
/* 8142F2E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142F2EC | 41 82 00 64 */	beq .L_8142F350
/* 8142F2F0 | 80 7B 00 0C */	lwz r3, 0xc(r27)
/* 8142F2F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142F2F8 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8142F2FC | 7D 89 03 A6 */	mtctr r12
/* 8142F300 | 4E 80 04 21 */	bctrl
/* 8142F304 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142F308 | 41 82 00 30 */	beq .L_8142F338
/* 8142F30C | 80 7B 00 0C */	lwz r3, 0xc(r27)
/* 8142F310 | 38 9F 01 88 */	addi r4, r31, 0x188
/* 8142F314 | 85 83 00 14 */	lwzu r12, 0x14(r3)
/* 8142F318 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8142F31C | 7D 89 03 A6 */	mtctr r12
/* 8142F320 | 4E 80 04 21 */	bctrl
/* 8142F324 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142F328 | 38 80 00 06 */	li r4, 0x6
/* 8142F32C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8142F330 | 7D 89 03 A6 */	mtctr r12
/* 8142F334 | 4E 80 04 21 */	bctrl
.L_8142F338:
/* 8142F338 | 80 7B 00 0C */	lwz r3, 0xc(r27)
/* 8142F33C | 38 80 00 00 */	li r4, 0x0
/* 8142F340 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8142F344 | 81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 8142F348 | 7D 89 03 A6 */	mtctr r12
/* 8142F34C | 4E 80 04 21 */	bctrl
.L_8142F350:
/* 8142F350 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8142F354 | 48 1C A1 B9 */	bl _restgpr_27
/* 8142F358 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8142F35C | 7C 08 03 A6 */	mtlr r0
/* 8142F360 | 38 21 00 40 */	addi r1, r1, 0x40
/* 8142F364 | 4E 80 00 20 */	blr
.endfn onTiEvent__Q39textinput7toolbar12EventHandlerFPQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input

# .text:0x1458 | 0x8142F368 | size: 0x8
# textinput::toolbar::LayoutByNW4R::draw()
.fn draw__Q39textinput7toolbar12LayoutByNW4RFv, global
/* 8142F368 | 38 63 00 14 */	addi r3, r3, 0x14
/* 8142F36C | 48 00 71 64 */	b draw__Q39textinput11nw4rmanager6LayoutFv
.endfn draw__Q39textinput7toolbar12LayoutByNW4RFv

# .text:0x1460 | 0x8142F370 | size: 0xC
# textinput::toolbar::AnmPane::init()
.fn init__Q39textinput7toolbar7AnmPaneFv, global
/* 8142F370 | 38 00 00 00 */	li r0, 0x0
/* 8142F374 | 90 03 00 2C */	stw r0, 0x2c(r3)
/* 8142F378 | 4E 80 00 20 */	blr
.endfn init__Q39textinput7toolbar7AnmPaneFv

# .text:0x146C | 0x8142F37C | size: 0x5C
# textinput::toolbar::ToggleButtonAnmPane::~ToggleButtonAnmPane()
.fn __dt__Q39textinput7toolbar19ToggleButtonAnmPaneFv, global
/* 8142F37C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8142F380 | 7C 08 02 A6 */	mflr r0
/* 8142F384 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142F388 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8142F38C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8142F390 | 7C 9F 23 78 */	mr r31, r4
/* 8142F394 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8142F398 | 7C 7E 1B 78 */	mr r30, r3
/* 8142F39C | 41 82 00 20 */	beq .L_8142F3BC
/* 8142F3A0 | 41 82 00 0C */	beq .L_8142F3AC
/* 8142F3A4 | 38 80 00 00 */	li r4, 0x0
/* 8142F3A8 | 48 00 7B 79 */	bl __dt__Q39textinput11nw4rmanager7AnmPaneFv
.L_8142F3AC:
/* 8142F3AC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8142F3B0 | 40 81 00 0C */	ble .L_8142F3BC
/* 8142F3B4 | 7F C3 F3 78 */	mr r3, r30
/* 8142F3B8 | 48 1C 8D 2D */	bl __dl__FPv
.L_8142F3BC:
/* 8142F3BC | 7F C3 F3 78 */	mr r3, r30
/* 8142F3C0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8142F3C4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8142F3C8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8142F3CC | 7C 08 03 A6 */	mtlr r0
/* 8142F3D0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8142F3D4 | 4E 80 00 20 */	blr
.endfn __dt__Q39textinput7toolbar19ToggleButtonAnmPaneFv

# .text:0x14C8 | 0x8142F3D8 | size: 0x5C
# textinput::toolbar::NormalButtonAnmPane::~NormalButtonAnmPane()
.fn __dt__Q39textinput7toolbar19NormalButtonAnmPaneFv, global
/* 8142F3D8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8142F3DC | 7C 08 02 A6 */	mflr r0
/* 8142F3E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8142F3E4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8142F3E8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8142F3EC | 7C 9F 23 78 */	mr r31, r4
/* 8142F3F0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8142F3F4 | 7C 7E 1B 78 */	mr r30, r3
/* 8142F3F8 | 41 82 00 20 */	beq .L_8142F418
/* 8142F3FC | 41 82 00 0C */	beq .L_8142F408
/* 8142F400 | 38 80 00 00 */	li r4, 0x0
/* 8142F404 | 48 00 7B 1D */	bl __dt__Q39textinput11nw4rmanager7AnmPaneFv
.L_8142F408:
/* 8142F408 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8142F40C | 40 81 00 0C */	ble .L_8142F418
/* 8142F410 | 7F C3 F3 78 */	mr r3, r30
/* 8142F414 | 48 1C 8C D1 */	bl __dl__FPv
.L_8142F418:
/* 8142F418 | 7F C3 F3 78 */	mr r3, r30
/* 8142F41C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8142F420 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8142F424 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8142F428 | 7C 08 03 A6 */	mtlr r0
/* 8142F42C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8142F430 | 4E 80 00 20 */	blr
.endfn __dt__Q39textinput7toolbar19NormalButtonAnmPaneFv

# .text:0x1524 | 0x8142F434 | size: 0x1C
.fn "__sinit_\\toolbar_cpp", global
/* 8142F434 | 3C 60 81 66 */	lis r3, lbl_8165E0B0@ha
/* 8142F438 | 80 8D 93 A0 */	lwz r4, lbl_816973E0@sda21(r0)
/* 8142F43C | 38 63 E0 B0 */	addi r3, r3, lbl_8165E0B0@l
/* 8142F440 | 80 0D 93 A4 */	lwz r0, lbl_816973E4@sda21(r0)
/* 8142F444 | 90 83 00 4C */	stw r4, 0x4c(r3)
/* 8142F448 | 90 03 00 CC */	stw r0, 0xcc(r3)
/* 8142F44C | 4E 80 00 20 */	blr
.endfn "__sinit_\\toolbar_cpp"

# .text:0x1540 | 0x8142F450 | size: 0x8
.fn "@20@__dt__Q39textinput7toolbar12LayoutByNW4RFv", global
/* 8142F450 | 38 63 FF EC */	subi r3, r3, 0x14
/* 8142F454 | 4B FF EB 94 */	b __dt__Q39textinput7toolbar12LayoutByNW4RFv
.endfn "@20@__dt__Q39textinput7toolbar12LayoutByNW4RFv"

# .text:0x1548 | 0x8142F458 | size: 0x8
# textinput::toolbar::LayoutByNW4R::@20@draw()
.fn "@20@draw__Q39textinput7toolbar12LayoutByNW4RFv", global
/* 8142F458 | 38 63 FF EC */	subi r3, r3, 0x14
/* 8142F45C | 4B FF FF 0C */	b draw__Q39textinput7toolbar12LayoutByNW4RFv
.endfn "@20@draw__Q39textinput7toolbar12LayoutByNW4RFv"

# .text:0x1550 | 0x8142F460 | size: 0x8
# textinput::toolbar::LayoutByNW4R::@20@init()
.fn "@20@init__Q39textinput7toolbar12LayoutByNW4RFv", global
/* 8142F460 | 38 63 FF EC */	subi r3, r3, 0x14
/* 8142F464 | 4B FF F0 18 */	b init__Q39textinput7toolbar12LayoutByNW4RFv
.endfn "@20@init__Q39textinput7toolbar12LayoutByNW4RFv"

# 0x8160D1FC..0x8160D200 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte "__sinit_\\toolbar_cpp"

# 0x816156F8..0x816158D8 | size: 0x1E0
.rodata
.balign 8

# .rodata:0x0 | 0x816156F8 | size: 0x44
.obj lbl_816156F8, global
	.4byte 0x00000000
	.4byte 0x66735F56
	.4byte 0x4B5F746F
	.4byte 0x6F6C6261
	.4byte 0x725F615F
	.4byte 0x6E6F726D
	.4byte 0x616C2E62
	.4byte 0x726C616E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_816156F8

# .rodata:0x44 | 0x8161573C | size: 0x44
.obj lbl_8161573C, global
	.4byte 0x00000001
	.4byte 0x66735F56
	.4byte 0x4B5F746F
	.4byte 0x6F6C6261
	.4byte 0x725F615F
	.4byte 0x466F6375
	.4byte 0x732D494E
	.4byte 0x2E62726C
	.4byte 0x616E0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_8161573C

# .rodata:0x88 | 0x81615780 | size: 0x44
.obj lbl_81615780, global
	.4byte 0x00000002
	.4byte 0x66735F56
	.4byte 0x4B5F746F
	.4byte 0x6F6C6261
	.4byte 0x725F615F
	.4byte 0x466F6375
	.4byte 0x732D4F55
	.4byte 0x542E6272
	.4byte 0x6C616E00
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81615780

# .rodata:0xCC | 0x816157C4 | size: 0x44
.obj lbl_816157C4, global
	.4byte 0x00000003
	.4byte 0x66735F56
	.4byte 0x4B5F746F
	.4byte 0x6F6C6261
	.4byte 0x725F615F
	.4byte 0x526F6C6C
	.4byte 0x5F6F7665
	.4byte 0x722E6272
	.4byte 0x6C616E00
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_816157C4

# .rodata:0x110 | 0x81615808 | size: 0x44
.obj lbl_81615808, global
	.4byte 0x00000004
	.4byte 0x66735F56
	.4byte 0x4B5F746F
	.4byte 0x6F6C6261
	.4byte 0x725F615F
	.4byte 0x50757368
	.4byte 0x65642E62
	.4byte 0x726C616E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81615808

# .rodata:0x154 | 0x8161584C | size: 0x44
.obj lbl_8161584C, global
	.4byte 0x00000005
	.4byte 0x66735F56
	.4byte 0x4B5F746F
	.4byte 0x6F6C6261
	.4byte 0x725F615F
	.4byte 0x746F6767
	.4byte 0x6C652D4F
	.4byte 0x4E2E6272
	.4byte 0x6C616E00
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_8161584C

# .rodata:0x198 | 0x81615890 | size: 0x44
.obj lbl_81615890, global
	.4byte 0x00000006
	.4byte 0x66735F56
	.4byte 0x4B5F746F
	.4byte 0x6F6C6261
	.4byte 0x725F615F
	.4byte 0x746F6767
	.4byte 0x6C652D4F
	.4byte 0x46462E62
	.4byte 0x726C616E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81615890

# .rodata:0x1DC | 0x816158D4 | size: 0x4
.obj lbl_816158D4, global
	.4byte 0x00000000
.endobj lbl_816158D4

# 0x8165E070..0x8165E420 | size: 0x3B0
.data
.balign 8

# .data:0x0 | 0x8165E070 | size: 0x10
.obj lbl_8165E070, global
	.4byte 0x505F4254
	.4byte 0x5F63616E
	.4byte 0x63656C00
	.4byte 0x00000000
.endobj lbl_8165E070

# .data:0x10 | 0x8165E080 | size: 0x10
.obj lbl_8165E080, global
	.string "P_kyChng_QWERTY"
.endobj lbl_8165E080

# .data:0x20 | 0x8165E090 | size: 0x10
.obj lbl_8165E090, global
	.4byte 0x505F4254
	.4byte 0x5F636F6E
	.4byte 0x6669726D
	.4byte 0x00000000
.endobj lbl_8165E090

# .data:0x30 | 0x8165E0A0 | size: 0x10
.obj lbl_8165E0A0, global
	.4byte 0x505F6B79
	.4byte 0x43686E67
	.4byte 0x5F435000
	.4byte 0x00000000
.endobj lbl_8165E0A0

# .data:0x40 | 0x8165E0B0 | size: 0x100
.obj lbl_8165E0B0, global
	.4byte 0x00000000
	.4byte lbl_8165E070
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816156F8
	.4byte lbl_8161573C
	.4byte lbl_81615780
	.4byte lbl_816157C4
	.4byte lbl_81615808
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_8165E090
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte lbl_816156F8
	.4byte lbl_8161573C
	.4byte lbl_81615780
	.4byte lbl_816157C4
	.4byte lbl_81615808
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte lbl_8165E080
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte lbl_816156F8
	.4byte lbl_8161573C
	.4byte lbl_81615780
	.4byte lbl_816157C4
	.4byte lbl_81615808
	.4byte lbl_8161584C
	.4byte lbl_81615890
	.4byte lbl_816158D4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte lbl_8165E0A0
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte lbl_816156F8
	.4byte lbl_8161573C
	.4byte lbl_81615780
	.4byte lbl_816157C4
	.4byte lbl_81615808
	.4byte lbl_8161584C
	.4byte lbl_81615890
	.4byte lbl_816158D4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_8165E0B0

# .data:0x140 | 0x8165E1B0 | size: 0x10
.obj lbl_8165E1B0, global
	.4byte 0x505F4254
	.4byte 0x5F636F6E
	.4byte 0x6669726D
	.4byte 0x00000000
.endobj lbl_8165E1B0

# .data:0x150 | 0x8165E1C0 | size: 0xC
.obj lbl_8165E1C0, global
	.string "P_BT_cancel"
.endobj lbl_8165E1C0

# .data:0x15C | 0x8165E1CC | size: 0x10
.obj lbl_8165E1CC, global
	.4byte 0x545F4254
	.4byte 0x5F636F6E
	.4byte 0x6669726D
	.4byte 0x00000000
.endobj lbl_8165E1CC

# .data:0x16C | 0x8165E1DC | size: 0xC
.obj lbl_8165E1DC, global
	.string "T_BT_cancel"
.endobj lbl_8165E1DC

# .data:0x178 | 0x8165E1E8 | size: 0x10
.obj lbl_8165E1E8, global
	.4byte 0x505F6B79
	.4byte 0x43686E67
	.4byte 0x5F435000
	.4byte 0x00000000
.endobj lbl_8165E1E8

# .data:0x188 | 0x8165E1F8 | size: 0x10
.obj lbl_8165E1F8, global
	.string "P_kyChng_QWERTY"
.endobj lbl_8165E1F8

# .data:0x198 | 0x8165E208 | size: 0x30
.obj jumptable_8165E208, local
	.rel cancelStateFocusIn__Q39textinput7toolbar12LayoutByNW4RFv, .L_8142E7A4
	.rel cancelStateFocusIn__Q39textinput7toolbar12LayoutByNW4RFv, .L_8142E70C
	.rel cancelStateFocusIn__Q39textinput7toolbar12LayoutByNW4RFv, .L_8142E7A4
	.rel cancelStateFocusIn__Q39textinput7toolbar12LayoutByNW4RFv, .L_8142E70C
	.rel cancelStateFocusIn__Q39textinput7toolbar12LayoutByNW4RFv, .L_8142E728
	.rel cancelStateFocusIn__Q39textinput7toolbar12LayoutByNW4RFv, .L_8142E7A4
	.rel cancelStateFocusIn__Q39textinput7toolbar12LayoutByNW4RFv, .L_8142E7A4
	.rel cancelStateFocusIn__Q39textinput7toolbar12LayoutByNW4RFv, .L_8142E7A4
	.rel cancelStateFocusIn__Q39textinput7toolbar12LayoutByNW4RFv, .L_8142E78C
	.rel cancelStateFocusIn__Q39textinput7toolbar12LayoutByNW4RFv, .L_8142E7A4
	.rel cancelStateFocusIn__Q39textinput7toolbar12LayoutByNW4RFv, .L_8142E7A4
	.rel cancelStateFocusIn__Q39textinput7toolbar12LayoutByNW4RFv, .L_8142E78C
.endobj jumptable_8165E208

# .data:0x1C8 | 0x8165E238 | size: 0xC
.obj gap_08_8165E238_data, global
.hidden gap_08_8165E238_data
	.4byte 0x505F6B65
	.4byte 0x79436861
	.4byte 0x6E676500
.endobj gap_08_8165E238_data

# .data:0x1D4 | 0x8165E244 | size: 0x1C
.obj jumptable_8165E244, local
	.rel onAnmEvent__Q39textinput7toolbar19ToggleButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_8142EF90
	.rel onAnmEvent__Q39textinput7toolbar19ToggleButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_8142EFB4
	.rel onAnmEvent__Q39textinput7toolbar19ToggleButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_8142F01C
	.rel onAnmEvent__Q39textinput7toolbar19ToggleButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_8142EFF8
	.rel onAnmEvent__Q39textinput7toolbar19ToggleButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_8142F060
	.rel onAnmEvent__Q39textinput7toolbar19ToggleButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_8142F0C4
	.rel onAnmEvent__Q39textinput7toolbar19ToggleButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent, .L_8142F084
.endobj jumptable_8165E244

# .data:0x1F0 | 0x8165E260 | size: 0x2C
# textinput::toolbar::ToggleButtonAnmPane::__vtable
.obj __vt__Q39textinput7toolbar19ToggleButtonAnmPane, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte init__Q39textinput7toolbar7AnmPaneFv
	.4byte calc__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte onAnmEvent__Q39textinput7toolbar19ToggleButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent
	.4byte changeAnimation__Q39textinput7toolbar7AnmPaneFUl
	.4byte isInAnimation__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte searchAnimation__Q39textinput11nw4rmanager7AnmPaneFUl
	.4byte __dt__Q39textinput7toolbar19ToggleButtonAnmPaneFv
	.4byte getKeyType__Q39textinput7toolbar7AnmPaneCFv
	.4byte getState__Q39textinput7toolbar7AnmPaneFv
.endobj __vt__Q39textinput7toolbar19ToggleButtonAnmPane

# .data:0x21C | 0x8165E28C | size: 0x2C
# textinput::toolbar::NormalButtonAnmPane::__vtable
.obj __vt__Q39textinput7toolbar19NormalButtonAnmPane, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte init__Q39textinput7toolbar7AnmPaneFv
	.4byte calc__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte onAnmEvent__Q39textinput7toolbar19NormalButtonAnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent
	.4byte changeAnimation__Q39textinput7toolbar7AnmPaneFUl
	.4byte isInAnimation__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte searchAnimation__Q39textinput11nw4rmanager7AnmPaneFUl
	.4byte __dt__Q39textinput7toolbar19NormalButtonAnmPaneFv
	.4byte getKeyType__Q39textinput7toolbar7AnmPaneCFv
	.4byte getState__Q39textinput7toolbar7AnmPaneFv
.endobj __vt__Q39textinput7toolbar19NormalButtonAnmPane

# .data:0x248 | 0x8165E2B8 | size: 0x30
# textinput::toolbar::AnmPane::__vtable
.obj __vt__Q39textinput7toolbar7AnmPane, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte init__Q39textinput7toolbar7AnmPaneFv
	.4byte calc__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte onAnmEvent__Q39textinput11nw4rmanager7AnmPaneFQ49textinput11nw4rmanager7AnmPane12AnmPaneEvent
	.4byte changeAnimation__Q39textinput7toolbar7AnmPaneFUl
	.4byte isInAnimation__Q39textinput11nw4rmanager7AnmPaneFv
	.4byte searchAnimation__Q39textinput11nw4rmanager7AnmPaneFUl
	.4byte __dt__Q39textinput7toolbar7AnmPaneFv
	.4byte getKeyType__Q39textinput7toolbar7AnmPaneCFv
	.4byte getState__Q39textinput7toolbar7AnmPaneFv
	.4byte 0x00000000
.endobj __vt__Q39textinput7toolbar7AnmPane

# .data:0x278 | 0x8165E2E8 | size: 0x20
# textinput::toolbar::EventHandler::__vtable
.obj __vt__Q39textinput7toolbar12EventHandler, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q39textinput7toolbar12EventHandlerFv
	.4byte onEvent__Q39textinput11nw4rmanager14TiEventHandlerFRQ39textinput3gui12GUIComponentUlPv
	.4byte setLatestEventCtrlNo__Q39textinput3gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q39textinput3gui12EventHandlerFv
	.4byte onTiEvent__Q39textinput7toolbar12EventHandlerFPQ39textinput3gui13PaneComponentUlPQ49textinput11nw4rmanager14TiEventHandler5Input
	.4byte setEventObserver__Q39textinput11nw4rmanager14TiEventHandlerFPQ29textinput13EventObserver
.endobj __vt__Q39textinput7toolbar12EventHandler

# .data:0x298 | 0x8165E308 | size: 0xD0
# textinput::toolbar::LayoutByNW4R::__vtable
.obj __vt__Q39textinput7toolbar12LayoutByNW4R, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte create__Q39textinput7toolbar12LayoutByNW4RFP12MEMAllocator
	.4byte init__Q39textinput7toolbar12LayoutByNW4RFv
	.4byte isQwerty__Q39textinput7toolbar4BaseCFv
	.4byte setQwerty__Q39textinput7toolbar12LayoutByNW4RFb
	.4byte setLanguage__Q39textinput7toolbar12LayoutByNW4RFQ29textinput8Language
	.4byte getLanguage__Q39textinput7toolbar4BaseCFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@20@__dt__Q39textinput7toolbar12LayoutByNW4RFv"
	.4byte createWithEventHandler__Q39textinput11nw4rmanager6LayoutFP12MEMAllocatorPQ39textinput11nw4rmanager14TiEventHandler
	.4byte "@20@init__Q39textinput7toolbar12LayoutByNW4RFv"
	.4byte initPaneManager__Q39textinput11nw4rmanager6LayoutFv
	.4byte "@20@draw__Q39textinput7toolbar12LayoutByNW4RFv"
	.4byte calc__Q39textinput11nw4rmanager6LayoutFv
	.4byte updateInput__Q39textinput11nw4rmanager6LayoutFiffUlUlUlPv
	.4byte updateInput__Q39textinput11nw4rmanager6LayoutFRQ39textinput5input10HKBManager
	.4byte getLayout__Q39textinput11nw4rmanager6LayoutFv
	.4byte getPane__Q39textinput11nw4rmanager6LayoutFPCc
	.4byte getPane__Q39textinput11nw4rmanager6LayoutCFPCc
	.4byte getFlightDuration__Q39textinput11nw4rmanager6LayoutFiPCc
	.4byte setAnimOn__Q39textinput11nw4rmanager6LayoutFb
	.4byte drawPane__Q39textinput11nw4rmanager6LayoutFPCc
	.4byte setRootPaneScaleFor16x9__Q39textinput11nw4rmanager6LayoutFv
	.4byte setRootPaneScaleFor4x3__Q39textinput11nw4rmanager6LayoutFv
	.4byte setProjectionMtx__Q39textinput11nw4rmanager6LayoutFv
	.4byte setPaneLastDrawReceived__Q39textinput11nw4rmanager6LayoutFPQ34nw4r3lyt4Pane
	.4byte initPaneLastDrawReceived__Q39textinput11nw4rmanager6LayoutFv
	.4byte setVisible__Q39textinput11nw4rmanager6LayoutFPCcb
	.4byte isVisible__Q39textinput11nw4rmanager6LayoutCFPCcPb
	.4byte setString__Q39textinput11nw4rmanager6LayoutFPCcPCw
	.4byte searchAnmPane__Q39textinput11nw4rmanager6LayoutFPCc
	.4byte searchAnmPane__Q39textinput11nw4rmanager6LayoutFw
	.4byte getAnmPaneList__Q39textinput11nw4rmanager6LayoutFv
	.4byte getPaneManager__Q39textinput11nw4rmanager6LayoutFv
	.4byte AdjustPaneMtx__Q39textinput11nw4rmanager6LayoutFRA3_A4_fRCQ34nw4r3lyt8DrawInfoRCQ34nw4r4math5MTX34
	.4byte createPaneManager__Q39textinput11nw4rmanager6LayoutFP12MEMAllocatorPQ39textinput11nw4rmanager14TiEventHandler
	.4byte __dt__Q39textinput7toolbar12LayoutByNW4RFv
	.4byte draw__Q39textinput7toolbar12LayoutByNW4RFv
	.4byte onOK__Q39textinput7toolbar12LayoutByNW4RFv
	.4byte onCancel__Q39textinput7toolbar12LayoutByNW4RFv
	.4byte setQwertyWithSE__Q39textinput7toolbar12LayoutByNW4RFb
	.4byte isEnableKeytopChange__Q39textinput7toolbar12LayoutByNW4RCFv
	.4byte enableKeytopChange__Q39textinput7toolbar12LayoutByNW4RFb
	.4byte getUpArea__Q39textinput7toolbar12LayoutByNW4RFv
	.4byte getDownArea__Q39textinput7toolbar12LayoutByNW4RFv
	.4byte setOKButtonVisible__Q39textinput7toolbar12LayoutByNW4RFb
	.4byte setCancelButtonVisible__Q39textinput7toolbar12LayoutByNW4RFb
	.4byte setOKButtonCaption__Q39textinput7toolbar12LayoutByNW4RFPCw
	.4byte setCancelButtonCaption__Q39textinput7toolbar12LayoutByNW4RFPCw
	.4byte cancelStateFocusIn__Q39textinput7toolbar12LayoutByNW4RFv
.endobj __vt__Q39textinput7toolbar12LayoutByNW4R

# .data:0x368 | 0x8165E3D8 | size: 0x48
# textinput::toolbar::Base::__vtable
.obj __vt__Q39textinput7toolbar4Base, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte create__Q39textinput7toolbar4BaseFP12MEMAllocator
	.4byte init__Q39textinput7toolbar4BaseFv
	.4byte isQwerty__Q39textinput7toolbar4BaseCFv
	.4byte setQwerty__Q39textinput7toolbar4BaseFb
	.4byte setLanguage__Q39textinput7toolbar4BaseFQ29textinput8Language
	.4byte getLanguage__Q39textinput7toolbar4BaseCFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x43616E63
	.4byte 0x656C210A
	.4byte 0x00000000
	.4byte 0x00000000
.endobj __vt__Q39textinput7toolbar4Base
