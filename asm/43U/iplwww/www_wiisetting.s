.include "macros.inc"
.file "www_wiisetting.cpp"

# 0x8108A4B8..0x8108A520 | size: 0x68
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x8108A4B8 | size: 0x48
# www::wiisetting::sWiiData
.obj sWiiData__Q23www10wiisetting, global
	.skip 0x48
.endobj sWiiData__Q23www10wiisetting

# .bss:0x48 | 0x8108A500 | size: 0x20
# www::wiisetting::cap
.obj cap__Q23www10wiisetting, global
	.skip 0x20
.endobj cap__Q23www10wiisetting

# 0x8136F9D0..0x813711F0 | size: 0x1820
.text
.balign 4

# .text:0x0 | 0x8136F9D0 | size: 0x24
.fn www_wiisetting_8136F9D0, local
/* 8136F9D0 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 8136F9D4 | 4C 82 00 20 */	bnelr
/* 8136F9D8 | 38 80 00 01 */	li r4, 0x1
/* 8136F9DC | 38 00 00 00 */	li r0, 0x0
/* 8136F9E0 | 90 8D 82 D0 */	stw r4, lbl_81696310@sda21(r0)
/* 8136F9E4 | 38 80 00 00 */	li r4, 0x0
/* 8136F9E8 | 90 0D A9 48 */	stw r0, lbl_81698988@sda21(r0)
/* 8136F9EC | 48 21 89 E0 */	b fn_815883CC
/* 8136F9F0 | 4E 80 00 20 */	blr
.endfn www_wiisetting_8136F9D0

# .text:0x24 | 0x8136F9F4 | size: 0x44
.fn www_wiisetting_8136F9F4, local
/* 8136F9F4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136F9F8 | 7C 08 02 A6 */	mflr r0
/* 8136F9FC | 2C 04 00 01 */	cmpwi r4, 0x1
/* 8136FA00 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136FA04 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136FA08 | 7C 7F 1B 78 */	mr r31, r3
/* 8136FA0C | 40 82 00 18 */	bne .L_8136FA24
/* 8136FA10 | 48 21 89 A1 */	bl fn_815883B0
/* 8136FA14 | 3C 80 81 37 */	lis r4, www_wiisetting_8136F9D0@ha
/* 8136FA18 | 7F E3 FB 78 */	mr r3, r31
/* 8136FA1C | 38 84 F9 D0 */	addi r4, r4, www_wiisetting_8136F9D0@l
/* 8136FA20 | 48 21 89 AD */	bl fn_815883CC
.L_8136FA24:
/* 8136FA24 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136FA28 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136FA2C | 7C 08 03 A6 */	mtlr r0
/* 8136FA30 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136FA34 | 4E 80 00 20 */	blr
.endfn www_wiisetting_8136F9F4

# .text:0x68 | 0x8136FA38 | size: 0x8
# www::wiisetting::allow_access(const char*, const char*, int)
.fn allow_access__Q23www10wiisettingFPCcPCci, global
/* 8136FA38 | 38 60 00 01 */	li r3, 0x1
/* 8136FA3C | 4E 80 00 20 */	blr
.endfn allow_access__Q23www10wiisettingFPCcPCci

# .text:0x70 | 0x8136FA40 | size: 0x88
# www::wiisetting::AddJsPlugin()
.fn AddJsPlugin__Q23www10wiisettingFv, global
/* 8136FA40 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136FA44 | 7C 08 02 A6 */	mflr r0
/* 8136FA48 | 3C A0 81 09 */	lis r5, cap__Q23www10wiisetting@ha
/* 8136FA4C | 3C E0 81 37 */	lis r7, globalGetter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue@ha
/* 8136FA50 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136FA54 | 3C C0 81 37 */	lis r6, allow_access__Q23www10wiisettingFPCcPCci@ha
/* 8136FA58 | 39 0D 82 D4 */	li r8, lbl_81696314@sda21
/* 8136FA5C | 3C 60 81 64 */	lis r3, lbl_816440E3@ha
/* 8136FA60 | 81 8D A8 FC */	lwz r12, WWWAddJSPlugin@sda21(r0)
/* 8136FA64 | 38 85 A5 00 */	addi r4, r5, cap__Q23www10wiisetting@l
/* 8136FA68 | 38 00 00 00 */	li r0, 0x0
/* 8136FA6C | 38 E7 FA C8 */	addi r7, r7, globalGetter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue@l
/* 8136FA70 | 38 C6 FA 38 */	addi r6, r6, allow_access__Q23www10wiisettingFPCcPCci@l
/* 8136FA74 | 91 05 A5 00 */	stw r8, cap__Q23www10wiisetting@l(r5)
/* 8136FA78 | 38 63 40 E3 */	addi r3, r3, lbl_816440E3@l
/* 8136FA7C | 38 AD A9 60 */	li r5, opera_callbacks__Q23www10wiisetting@sda21
/* 8136FA80 | 90 04 00 04 */	stw r0, 0x4(r4)
/* 8136FA84 | 90 E4 00 08 */	stw r7, 0x8(r4)
/* 8136FA88 | 90 04 00 0C */	stw r0, 0xc(r4)
/* 8136FA8C | 90 04 00 10 */	stw r0, 0x10(r4)
/* 8136FA90 | 90 04 00 14 */	stw r0, 0x14(r4)
/* 8136FA94 | 90 04 00 18 */	stw r0, 0x18(r4)
/* 8136FA98 | 90 C4 00 1C */	stw r6, 0x1c(r4)
/* 8136FA9C | 7D 89 03 A6 */	mtctr r12
/* 8136FAA0 | 4E 80 04 21 */	bctrl
/* 8136FAA4 | 3C 80 81 64 */	lis r4, lbl_816440F2@ha
/* 8136FAA8 | 38 60 00 03 */	li r3, 0x3
/* 8136FAAC | 38 84 40 F2 */	addi r4, r4, lbl_816440F2@l
/* 8136FAB0 | 4C C6 31 82 */	crclr cr1eq
/* 8136FAB4 | 4B FF ED E1 */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
/* 8136FAB8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136FABC | 7C 08 03 A6 */	mtlr r0
/* 8136FAC0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136FAC4 | 4E 80 00 20 */	blr
.endfn AddJsPlugin__Q23www10wiisettingFv

# .text:0xF8 | 0x8136FAC8 | size: 0xC8
# www::wiisetting::globalGetter_(WWWJSPluginObj*, const char*, WWWJSPluginValue*)
.fn globalGetter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, global
/* 8136FAC8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136FACC | 7C 08 02 A6 */	mflr r0
/* 8136FAD0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8136FAD4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136FAD8 | 48 28 99 F1 */	bl _savegpr_29
/* 8136FADC | 3F E0 81 64 */	lis r31, lbl_816440A0@ha
/* 8136FAE0 | 7C 7D 1B 78 */	mr r29, r3
/* 8136FAE4 | 3B FF 40 A0 */	addi r31, r31, lbl_816440A0@l
/* 8136FAE8 | 7C 83 23 78 */	mr r3, r4
/* 8136FAEC | 7C BE 2B 78 */	mr r30, r5
/* 8136FAF0 | 38 9F 00 71 */	addi r4, r31, 0x71
/* 8136FAF4 | 48 29 29 8D */	bl strcmp
/* 8136FAF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136FAFC | 40 82 00 78 */	bne .L_8136FB74
/* 8136FB00 | 38 7F 00 7C */	addi r3, r31, 0x7c
/* 8136FB04 | 4C C6 31 82 */	crclr cr1eq
/* 8136FB08 | 48 1B EB 99 */	bl OSReport
/* 8136FB0C | 80 8D A9 60 */	lwz r4, opera_callbacks__Q23www10wiisetting@sda21(r0)
/* 8136FB10 | 3C E0 81 37 */	lis r7, ObjectConstructor___Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue@ha
/* 8136FB14 | 7F A3 EB 78 */	mr r3, r29
/* 8136FB18 | 39 41 00 08 */	addi r10, r1, 0x8
/* 8136FB1C | 81 84 00 00 */	lwz r12, 0x0(r4)
/* 8136FB20 | 38 E7 FB 90 */	addi r7, r7, ObjectConstructor___Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue@l
/* 8136FB24 | 38 80 00 00 */	li r4, 0x0
/* 8136FB28 | 38 A0 00 00 */	li r5, 0x0
/* 8136FB2C | 38 C0 00 00 */	li r6, 0x0
/* 8136FB30 | 39 0D 82 DC */	li r8, lbl_8169631C@sda21
/* 8136FB34 | 39 20 00 00 */	li r9, 0x0
/* 8136FB38 | 7D 89 03 A6 */	mtctr r12
/* 8136FB3C | 4E 80 04 21 */	bctrl
/* 8136FB40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136FB44 | 40 80 00 0C */	bge .L_8136FB50
/* 8136FB48 | 38 60 00 0A */	li r3, 0xa
/* 8136FB4C | 48 00 00 2C */	b .L_8136FB78
.L_8136FB50:
/* 8136FB50 | 38 7F 00 A1 */	addi r3, r31, 0xa1
/* 8136FB54 | 4C C6 31 82 */	crclr cr1eq
/* 8136FB58 | 48 1B EB 49 */	bl OSReport
/* 8136FB5C | 38 00 00 00 */	li r0, 0x0
/* 8136FB60 | 38 60 00 07 */	li r3, 0x7
/* 8136FB64 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 8136FB68 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8136FB6C | 90 1E 00 08 */	stw r0, 0x8(r30)
/* 8136FB70 | 48 00 00 08 */	b .L_8136FB78
.L_8136FB74:
/* 8136FB74 | 38 60 00 08 */	li r3, 0x8
.L_8136FB78:
/* 8136FB78 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136FB7C | 48 28 99 99 */	bl _restgpr_29
/* 8136FB80 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136FB84 | 7C 08 03 A6 */	mtlr r0
/* 8136FB88 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8136FB8C | 4E 80 00 20 */	blr
.endfn globalGetter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue

# .text:0x1C0 | 0x8136FB90 | size: 0xA0
# www::wiisetting::ObjectConstructor_(WWWJSPluginObj*, WWWJSPluginObj*, int, WWWJSPluginValue*, WWWJSPluginValue*)
.fn ObjectConstructor___Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, global
/* 8136FB90 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136FB94 | 7C 08 02 A6 */	mflr r0
/* 8136FB98 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8136FB9C | 7C 83 23 78 */	mr r3, r4
/* 8136FBA0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8136FBA4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8136FBA8 | 7C FF 3B 78 */	mr r31, r7
/* 8136FBAC | 41 82 00 0C */	beq .L_8136FBB8
/* 8136FBB0 | 38 60 00 13 */	li r3, 0x13
/* 8136FBB4 | 48 00 00 68 */	b .L_8136FC1C
.L_8136FBB8:
/* 8136FBB8 | 80 CD A9 60 */	lwz r6, opera_callbacks__Q23www10wiisetting@sda21(r0)
/* 8136FBBC | 3C 80 81 37 */	lis r4, Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue@ha
/* 8136FBC0 | 3C A0 81 37 */	lis r5, Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue@ha
/* 8136FBC4 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 8136FBC8 | 81 86 00 04 */	lwz r12, 0x4(r6)
/* 8136FBCC | 38 84 FC 30 */	addi r4, r4, Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue@l
/* 8136FBD0 | 38 A5 05 B4 */	addi r5, r5, Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue@l
/* 8136FBD4 | 38 C0 00 00 */	li r6, 0x0
/* 8136FBD8 | 7D 89 03 A6 */	mtctr r12
/* 8136FBDC | 4E 80 04 21 */	bctrl
/* 8136FBE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136FBE4 | 40 80 00 0C */	bge .L_8136FBF0
/* 8136FBE8 | 38 60 00 12 */	li r3, 0x12
/* 8136FBEC | 48 00 00 30 */	b .L_8136FC1C
.L_8136FBF0:
/* 8136FBF0 | 38 A0 00 00 */	li r5, 0x0
/* 8136FBF4 | 3C 60 81 64 */	lis r3, lbl_8164415B@ha
/* 8136FBF8 | 90 BF 00 00 */	stw r5, 0x0(r31)
/* 8136FBFC | 38 63 41 5B */	addi r3, r3, lbl_8164415B@l
/* 8136FC00 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8136FC04 | 90 1F 00 08 */	stw r0, 0x8(r31)
/* 8136FC08 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 8136FC0C | 90 A4 00 00 */	stw r5, 0x0(r4)
/* 8136FC10 | 4C C6 31 82 */	crclr cr1eq
/* 8136FC14 | 48 1B EA 8D */	bl OSReport
/* 8136FC18 | 38 60 00 10 */	li r3, 0x10
.L_8136FC1C:
/* 8136FC1C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136FC20 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8136FC24 | 7C 08 03 A6 */	mtlr r0
/* 8136FC28 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8136FC2C | 4E 80 00 20 */	blr
.endfn ObjectConstructor___Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue

# .text:0x260 | 0x8136FC30 | size: 0x984
# www::wiisetting::Getter_(WWWJSPluginObj*, const char*, WWWJSPluginValue*)
.fn Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, global
/* 8136FC30 | 94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 8136FC34 | 7C 08 02 A6 */	mflr r0
/* 8136FC38 | 90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8136FC3C | 39 61 00 D0 */	addi r11, r1, 0xd0
/* 8136FC40 | 48 28 98 79 */	bl _savegpr_25
/* 8136FC44 | 3C 00 43 30 */	lis r0, 0x4330
/* 8136FC48 | 3F E0 81 64 */	lis r31, lbl_816440A0@ha
/* 8136FC4C | 7C 9E 23 78 */	mr r30, r4
/* 8136FC50 | 90 01 00 A0 */	stw r0, 0xa0(r1)
/* 8136FC54 | 3B FF 40 A0 */	addi r31, r31, lbl_816440A0@l
/* 8136FC58 | 7C 79 1B 78 */	mr r25, r3
/* 8136FC5C | 90 01 00 A8 */	stw r0, 0xa8(r1)
/* 8136FC60 | 7C BD 2B 78 */	mr r29, r5
/* 8136FC64 | 7F C3 F3 78 */	mr r3, r30
/* 8136FC68 | 38 9F 00 DA */	addi r4, r31, 0xda
/* 8136FC6C | 48 29 28 15 */	bl strcmp
/* 8136FC70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136FC74 | 40 82 00 60 */	bne .L_8136FCD4
/* 8136FC78 | 80 8D A9 60 */	lwz r4, opera_callbacks__Q23www10wiisetting@sda21(r0)
/* 8136FC7C | 3C C0 81 37 */	lis r6, wiiOSReport__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue@ha
/* 8136FC80 | 38 C6 0A C0 */	addi r6, r6, wiiOSReport__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue@l
/* 8136FC84 | 7F 23 CB 78 */	mr r3, r25
/* 8136FC88 | 81 84 00 00 */	lwz r12, 0x0(r4)
/* 8136FC8C | 7C C7 33 78 */	mr r7, r6
/* 8136FC90 | 39 41 00 10 */	addi r10, r1, 0x10
/* 8136FC94 | 38 80 00 00 */	li r4, 0x0
/* 8136FC98 | 38 A0 00 00 */	li r5, 0x0
/* 8136FC9C | 39 0D 82 DC */	li r8, lbl_8169631C@sda21
/* 8136FCA0 | 39 20 00 00 */	li r9, 0x0
/* 8136FCA4 | 7D 89 03 A6 */	mtctr r12
/* 8136FCA8 | 4E 80 04 21 */	bctrl
/* 8136FCAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136FCB0 | 40 80 00 0C */	bge .L_8136FCBC
/* 8136FCB4 | 38 60 00 0A */	li r3, 0xa
/* 8136FCB8 | 48 00 08 E4 */	b .L_8137059C
.L_8136FCBC:
/* 8136FCBC | 38 00 00 00 */	li r0, 0x0
/* 8136FCC0 | 38 60 00 07 */	li r3, 0x7
/* 8136FCC4 | 90 1D 00 00 */	stw r0, 0x0(r29)
/* 8136FCC8 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 8136FCCC | 90 1D 00 08 */	stw r0, 0x8(r29)
/* 8136FCD0 | 48 00 08 CC */	b .L_8137059C
.L_8136FCD4:
/* 8136FCD4 | 7F C3 F3 78 */	mr r3, r30
/* 8136FCD8 | 38 9F 00 E7 */	addi r4, r31, 0xe7
/* 8136FCDC | 48 29 27 A5 */	bl strcmp
/* 8136FCE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136FCE4 | 40 82 00 60 */	bne .L_8136FD44
/* 8136FCE8 | 80 8D A9 60 */	lwz r4, opera_callbacks__Q23www10wiisetting@sda21(r0)
/* 8136FCEC | 3C C0 81 37 */	lis r6, wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue@ha
/* 8136FCF0 | 38 C6 0B 1C */	addi r6, r6, wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue@l
/* 8136FCF4 | 7F 23 CB 78 */	mr r3, r25
/* 8136FCF8 | 81 84 00 00 */	lwz r12, 0x0(r4)
/* 8136FCFC | 7C C7 33 78 */	mr r7, r6
/* 8136FD00 | 39 41 00 0C */	addi r10, r1, 0xc
/* 8136FD04 | 38 80 00 00 */	li r4, 0x0
/* 8136FD08 | 38 A0 00 00 */	li r5, 0x0
/* 8136FD0C | 39 0D 82 DC */	li r8, lbl_8169631C@sda21
/* 8136FD10 | 39 20 00 00 */	li r9, 0x0
/* 8136FD14 | 7D 89 03 A6 */	mtctr r12
/* 8136FD18 | 4E 80 04 21 */	bctrl
/* 8136FD1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136FD20 | 40 80 00 0C */	bge .L_8136FD2C
/* 8136FD24 | 38 60 00 0A */	li r3, 0xa
/* 8136FD28 | 48 00 08 74 */	b .L_8137059C
.L_8136FD2C:
/* 8136FD2C | 38 00 00 00 */	li r0, 0x0
/* 8136FD30 | 38 60 00 07 */	li r3, 0x7
/* 8136FD34 | 90 1D 00 00 */	stw r0, 0x0(r29)
/* 8136FD38 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 8136FD3C | 90 1D 00 08 */	stw r0, 0x8(r29)
/* 8136FD40 | 48 00 08 5C */	b .L_8137059C
.L_8136FD44:
/* 8136FD44 | 88 0D A9 54 */	lbz r0, lbl_81698994@sda21(r0)
/* 8136FD48 | 28 00 00 08 */	cmplwi r0, 0x8
/* 8136FD4C | 41 82 00 34 */	beq .L_8136FD80
/* 8136FD50 | 28 00 00 2F */	cmplwi r0, 0x2f
/* 8136FD54 | 41 82 00 2C */	beq .L_8136FD80
/* 8136FD58 | 28 00 00 3C */	cmplwi r0, 0x3c
/* 8136FD5C | 41 82 00 24 */	beq .L_8136FD80
/* 8136FD60 | 28 00 00 0B */	cmplwi r0, 0xb
/* 8136FD64 | 41 82 00 1C */	beq .L_8136FD80
/* 8136FD68 | 28 00 00 30 */	cmplwi r0, 0x30
/* 8136FD6C | 41 82 00 14 */	beq .L_8136FD80
/* 8136FD70 | 28 00 00 2D */	cmplwi r0, 0x2d
/* 8136FD74 | 41 82 00 0C */	beq .L_8136FD80
/* 8136FD78 | 38 00 00 00 */	li r0, 0x0
/* 8136FD7C | 98 0D A9 54 */	stb r0, lbl_81698994@sda21(r0)
.L_8136FD80:
/* 8136FD80 | 3B 20 00 08 */	li r25, 0x8
/* 8136FD84 | 48 1C 5E FD */	bl OSGetTime
/* 8136FD88 | 38 A1 00 14 */	addi r5, r1, 0x14
/* 8136FD8C | 48 1C 61 D9 */	bl OSTicksToCalendarTime
/* 8136FD90 | 3C 60 81 64 */	lis r3, lbl_81644834@ha
/* 8136FD94 | 38 00 00 0C */	li r0, 0xc
/* 8136FD98 | 38 63 48 34 */	addi r3, r3, lbl_81644834@l
/* 8136FD9C | 38 A1 00 38 */	addi r5, r1, 0x38
/* 8136FDA0 | 38 83 FF FC */	subi r4, r3, 0x4
/* 8136FDA4 | 7C 09 03 A6 */	mtctr r0
.L_8136FDA8:
/* 8136FDA8 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 8136FDAC | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 8136FDB0 | 90 65 00 04 */	stw r3, 0x4(r5)
/* 8136FDB4 | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 8136FDB8 | 42 00 FF F0 */	bdnz .L_8136FDA8
/* 8136FDBC | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 8136FDC0 | 3B 61 00 3C */	addi r27, r1, 0x3c
/* 8136FDC4 | 3B 40 00 00 */	li r26, 0x0
/* 8136FDC8 | 3B 80 00 00 */	li r28, 0x0
/* 8136FDCC | 90 05 00 04 */	stw r0, 0x4(r5)
.L_8136FDD0:
/* 8136FDD0 | 7C 9B E0 2E */	lwzx r4, r27, r28
/* 8136FDD4 | 7F C3 F3 78 */	mr r3, r30
/* 8136FDD8 | 48 29 26 A9 */	bl strcmp
/* 8136FDDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136FDE0 | 40 82 00 0C */	bne .L_8136FDEC
/* 8136FDE4 | 38 9A 00 01 */	addi r4, r26, 0x1
/* 8136FDE8 | 48 00 00 18 */	b .L_8136FE00
.L_8136FDEC:
/* 8136FDEC | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 8136FDF0 | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 8136FDF4 | 2C 1A 00 18 */	cmpwi r26, 0x18
/* 8136FDF8 | 41 80 FF D8 */	blt .L_8136FDD0
/* 8136FDFC | 38 80 FF FF */	li r4, -0x1
.L_8136FE00:
/* 8136FE00 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8136FE04 | 41 80 02 7C */	blt .L_81370080
/* 8136FE08 | 38 00 00 01 */	li r0, 0x1
/* 8136FE0C | 28 04 00 18 */	cmplwi r4, 0x18
/* 8136FE10 | 90 1D 00 00 */	stw r0, 0x0(r29)
/* 8136FE14 | 41 81 02 64 */	bgt .L_81370078
/* 8136FE18 | 3C 60 81 64 */	lis r3, jumptable_816442CC@ha
/* 8136FE1C | 54 80 10 3A */	slwi r0, r4, 2
/* 8136FE20 | 38 63 42 CC */	addi r3, r3, jumptable_816442CC@l
/* 8136FE24 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 8136FE28 | 7C 69 03 A6 */	mtctr r3
/* 8136FE2C | 4E 80 04 20 */	bctr
.L_8136FE30:
/* 8136FE30 | 48 08 B9 39 */	bl getMacAddr__Q33ipl3ncd10NCDSettingFv
/* 8136FE34 | 90 7D 00 08 */	stw r3, 0x8(r29)
/* 8136FE38 | 48 00 02 40 */	b .L_81370078
.L_8136FE3C:
/* 8136FE3C | 4B FE 70 0D */	bl getLANMacAddrUtf8__Q33ipl6socket13SocketSettingFv
/* 8136FE40 | 90 7D 00 08 */	stw r3, 0x8(r29)
/* 8136FE44 | 48 00 02 34 */	b .L_81370078
.L_8136FE48:
/* 8136FE48 | 80 0D A9 5C */	lwz r0, pString__Q23www10wiisetting@sda21(r0)
/* 8136FE4C | 90 1D 00 08 */	stw r0, 0x8(r29)
/* 8136FE50 | 48 00 02 28 */	b .L_81370078
.L_8136FE54:
/* 8136FE54 | 80 6D A9 5C */	lwz r3, pString__Q23www10wiisetting@sda21(r0)
/* 8136FE58 | 38 03 00 60 */	addi r0, r3, 0x60
/* 8136FE5C | 90 1D 00 08 */	stw r0, 0x8(r29)
/* 8136FE60 | 48 00 02 18 */	b .L_81370078
.L_8136FE64:
/* 8136FE64 | 80 6D A9 5C */	lwz r3, pString__Q23www10wiisetting@sda21(r0)
/* 8136FE68 | 38 03 00 C1 */	addi r0, r3, 0xc1
/* 8136FE6C | 90 1D 00 08 */	stw r0, 0x8(r29)
/* 8136FE70 | 48 00 02 08 */	b .L_81370078
.L_8136FE74:
/* 8136FE74 | 80 6D A9 5C */	lwz r3, pString__Q23www10wiisetting@sda21(r0)
/* 8136FE78 | 38 03 00 D1 */	addi r0, r3, 0xd1
/* 8136FE7C | 90 1D 00 08 */	stw r0, 0x8(r29)
/* 8136FE80 | 48 00 01 F8 */	b .L_81370078
.L_8136FE84:
/* 8136FE84 | 80 6D A9 5C */	lwz r3, pString__Q23www10wiisetting@sda21(r0)
/* 8136FE88 | 38 03 00 E1 */	addi r0, r3, 0xe1
/* 8136FE8C | 90 1D 00 08 */	stw r0, 0x8(r29)
/* 8136FE90 | 48 00 01 E8 */	b .L_81370078
.L_8136FE94:
/* 8136FE94 | 80 6D A9 5C */	lwz r3, pString__Q23www10wiisetting@sda21(r0)
/* 8136FE98 | 38 03 00 F1 */	addi r0, r3, 0xf1
/* 8136FE9C | 90 1D 00 08 */	stw r0, 0x8(r29)
/* 8136FEA0 | 48 00 01 D8 */	b .L_81370078
.L_8136FEA4:
/* 8136FEA4 | 80 6D A9 5C */	lwz r3, pString__Q23www10wiisetting@sda21(r0)
/* 8136FEA8 | 38 03 01 01 */	addi r0, r3, 0x101
/* 8136FEAC | 90 1D 00 08 */	stw r0, 0x8(r29)
/* 8136FEB0 | 48 00 01 C8 */	b .L_81370078
.L_8136FEB4:
/* 8136FEB4 | 80 6D A9 5C */	lwz r3, pString__Q23www10wiisetting@sda21(r0)
/* 8136FEB8 | 38 03 01 11 */	addi r0, r3, 0x111
/* 8136FEBC | 90 1D 00 08 */	stw r0, 0x8(r29)
/* 8136FEC0 | 48 00 01 B8 */	b .L_81370078
.L_8136FEC4:
/* 8136FEC4 | 80 6D A9 5C */	lwz r3, pString__Q23www10wiisetting@sda21(r0)
/* 8136FEC8 | 38 03 04 12 */	addi r0, r3, 0x412
/* 8136FECC | 90 1D 00 08 */	stw r0, 0x8(r29)
/* 8136FED0 | 48 00 01 A8 */	b .L_81370078
.L_8136FED4:
/* 8136FED4 | 80 6D A9 5C */	lwz r3, pString__Q23www10wiisetting@sda21(r0)
/* 8136FED8 | 38 03 04 18 */	addi r0, r3, 0x418
/* 8136FEDC | 90 1D 00 08 */	stw r0, 0x8(r29)
/* 8136FEE0 | 48 00 01 98 */	b .L_81370078
.L_8136FEE4:
/* 8136FEE4 | 80 6D A9 5C */	lwz r3, pString__Q23www10wiisetting@sda21(r0)
/* 8136FEE8 | 38 03 04 79 */	addi r0, r3, 0x479
/* 8136FEEC | 90 1D 00 08 */	stw r0, 0x8(r29)
/* 8136FEF0 | 48 00 01 88 */	b .L_81370078
.L_8136FEF4:
/* 8136FEF4 | 80 6D A9 5C */	lwz r3, pString__Q23www10wiisetting@sda21(r0)
/* 8136FEF8 | 38 03 04 DA */	addi r0, r3, 0x4da
/* 8136FEFC | 90 1D 00 08 */	stw r0, 0x8(r29)
/* 8136FF00 | 48 00 01 78 */	b .L_81370078
.L_8136FF04:
/* 8136FF04 | 80 6D A9 5C */	lwz r3, pString__Q23www10wiisetting@sda21(r0)
/* 8136FF08 | 38 03 04 EE */	addi r0, r3, 0x4ee
/* 8136FF0C | 90 1D 00 08 */	stw r0, 0x8(r29)
/* 8136FF10 | 48 00 01 68 */	b .L_81370078
.L_8136FF14:
/* 8136FF14 | 48 08 C4 61 */	bl fn_813FC374
/* 8136FF18 | 90 7D 00 08 */	stw r3, 0x8(r29)
/* 8136FF1C | 48 00 01 5C */	b .L_81370078
.L_8136FF20:
/* 8136FF20 | 80 6D A9 5C */	lwz r3, pString__Q23www10wiisetting@sda21(r0)
/* 8136FF24 | 38 03 05 FE */	addi r0, r3, 0x5fe
/* 8136FF28 | 90 1D 00 08 */	stw r0, 0x8(r29)
/* 8136FF2C | 48 00 01 4C */	b .L_81370078
.L_8136FF30:
/* 8136FF30 | 80 6D A9 5C */	lwz r3, pString__Q23www10wiisetting@sda21(r0)
/* 8136FF34 | 38 03 06 0E */	addi r0, r3, 0x60e
/* 8136FF38 | 90 1D 00 08 */	stw r0, 0x8(r29)
/* 8136FF3C | 48 00 01 3C */	b .L_81370078
.L_8136FF40:
/* 8136FF40 | 80 6D A9 5C */	lwz r3, pString__Q23www10wiisetting@sda21(r0)
/* 8136FF44 | 38 80 00 00 */	li r4, 0x0
/* 8136FF48 | 38 A0 00 42 */	li r5, 0x42
/* 8136FF4C | 38 63 05 BC */	addi r3, r3, 0x5bc
/* 8136FF50 | 4B FC 03 E5 */	bl memset
/* 8136FF54 | 48 08 B6 19 */	bl fn_813FB56C
/* 8136FF58 | 88 8D A9 55 */	lbz r4, lbl_81698995@sda21(r0)
/* 8136FF5C | 54 65 04 3E */	clrlwi r5, r3, 16
/* 8136FF60 | 38 7F 00 F1 */	addi r3, r31, 0xf1
/* 8136FF64 | 4C C6 31 82 */	crclr cr1eq
/* 8136FF68 | 48 1B E7 39 */	bl OSReport
/* 8136FF6C | 48 08 B6 01 */	bl fn_813FB56C
/* 8136FF70 | 88 0D A9 55 */	lbz r0, lbl_81698995@sda21(r0)
/* 8136FF74 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 8136FF78 | 7C 00 18 00 */	cmpw r0, r3
/* 8136FF7C | 40 82 00 6C */	bne .L_8136FFE8
/* 8136FF80 | 48 08 B7 35 */	bl fn_813FB6B4
/* 8136FF84 | 54 64 04 3E */	clrlwi r4, r3, 16
/* 8136FF88 | 38 7F 00 FD */	addi r3, r31, 0xfd
/* 8136FF8C | 4C C6 31 82 */	crclr cr1eq
/* 8136FF90 | 48 1B E7 11 */	bl OSReport
/* 8136FF94 | 3B 20 00 00 */	li r25, 0x0
/* 8136FF98 | 3B 60 00 2A */	li r27, 0x2a
/* 8136FF9C | 48 00 00 14 */	b .L_8136FFB0
.L_8136FFA0:
/* 8136FFA0 | 80 0D A9 5C */	lwz r0, pString__Q23www10wiisetting@sda21(r0)
/* 8136FFA4 | 7C 60 CA 14 */	add r3, r0, r25
/* 8136FFA8 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 8136FFAC | 9B 63 05 BC */	stb r27, 0x5bc(r3)
.L_8136FFB0:
/* 8136FFB0 | 48 08 B7 05 */	bl fn_813FB6B4
/* 8136FFB4 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 8136FFB8 | 7C 19 00 00 */	cmpw r25, r0
/* 8136FFBC | 41 80 FF E4 */	blt .L_8136FFA0
/* 8136FFC0 | 2C 19 00 20 */	cmpwi r25, 0x20
/* 8136FFC4 | 40 81 00 38 */	ble .L_8136FFFC
/* 8136FFC8 | 80 6D A9 5C */	lwz r3, pString__Q23www10wiisetting@sda21(r0)
/* 8136FFCC | 38 00 00 0A */	li r0, 0xa
/* 8136FFD0 | 38 80 00 2A */	li r4, 0x2a
/* 8136FFD4 | 98 03 05 DC */	stb r0, 0x5dc(r3)
/* 8136FFD8 | 80 0D A9 5C */	lwz r0, pString__Q23www10wiisetting@sda21(r0)
/* 8136FFDC | 7C 60 CA 14 */	add r3, r0, r25
/* 8136FFE0 | 98 83 05 BC */	stb r4, 0x5bc(r3)
/* 8136FFE4 | 48 00 00 18 */	b .L_8136FFFC
.L_8136FFE8:
/* 8136FFE8 | 80 6D A9 5C */	lwz r3, pString__Q23www10wiisetting@sda21(r0)
/* 8136FFEC | 38 80 00 00 */	li r4, 0x0
/* 8136FFF0 | 38 A0 00 41 */	li r5, 0x41
/* 8136FFF4 | 38 63 00 1F */	addi r3, r3, 0x1f
/* 8136FFF8 | 4B FC 03 3D */	bl memset
.L_8136FFFC:
/* 8136FFFC | 80 6D A9 5C */	lwz r3, pString__Q23www10wiisetting@sda21(r0)
/* 81370000 | 38 03 05 BC */	addi r0, r3, 0x5bc
/* 81370004 | 90 1D 00 08 */	stw r0, 0x8(r29)
/* 81370008 | 48 00 00 70 */	b .L_81370078
.L_8137000C:
/* 8137000C | 80 6D A9 5C */	lwz r3, pString__Q23www10wiisetting@sda21(r0)
/* 81370010 | 38 80 00 00 */	li r4, 0x0
/* 81370014 | 38 A0 00 42 */	li r5, 0x42
/* 81370018 | 38 63 05 BC */	addi r3, r3, 0x5bc
/* 8137001C | 4B FC 03 19 */	bl memset
/* 81370020 | 3B 40 00 00 */	li r26, 0x0
/* 81370024 | 3B 60 00 2A */	li r27, 0x2a
/* 81370028 | 48 00 00 10 */	b .L_81370038
.L_8137002C:
/* 8137002C | 7C 79 D2 14 */	add r3, r25, r26
/* 81370030 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 81370034 | 9B 63 05 BC */	stb r27, 0x5bc(r3)
.L_81370038:
/* 81370038 | 83 2D A9 5C */	lwz r25, pString__Q23www10wiisetting@sda21(r0)
/* 8137003C | 38 79 00 1F */	addi r3, r25, 0x1f
/* 81370040 | 48 28 8E BD */	bl strlen
/* 81370044 | 7C 1A 18 40 */	cmplw r26, r3
/* 81370048 | 41 80 FF E4 */	blt .L_8137002C
/* 8137004C | 2C 1A 00 20 */	cmpwi r26, 0x20
/* 81370050 | 40 81 00 1C */	ble .L_8137006C
/* 81370054 | 38 00 00 0A */	li r0, 0xa
/* 81370058 | 38 80 00 2A */	li r4, 0x2a
/* 8137005C | 98 19 05 DC */	stb r0, 0x5dc(r25)
/* 81370060 | 80 0D A9 5C */	lwz r0, pString__Q23www10wiisetting@sda21(r0)
/* 81370064 | 7C 60 D2 14 */	add r3, r0, r26
/* 81370068 | 98 83 05 BC */	stb r4, 0x5bc(r3)
.L_8137006C:
/* 8137006C | 80 6D A9 5C */	lwz r3, pString__Q23www10wiisetting@sda21(r0)
/* 81370070 | 38 03 05 BC */	addi r0, r3, 0x5bc
/* 81370074 | 90 1D 00 08 */	stw r0, 0x8(r29)
.L_81370078:
/* 81370078 | 3B 20 00 06 */	li r25, 0x6
/* 8137007C | 48 00 05 1C */	b .L_81370598
.L_81370080:
/* 81370080 | 7F C3 F3 78 */	mr r3, r30
/* 81370084 | 38 8D 82 DD */	li r4, lbl_8169631D@sda21
/* 81370088 | 48 29 23 F9 */	bl strcmp
/* 8137008C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81370090 | 40 82 00 0C */	bne .L_8137009C
/* 81370094 | 3B 20 00 06 */	li r25, 0x6
/* 81370098 | 48 00 05 00 */	b .L_81370598
.L_8137009C:
/* 8137009C | 7F C3 F3 78 */	mr r3, r30
/* 813700A0 | 48 00 0E 75 */	bl www_wiisetting_81370F14
/* 813700A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813700A8 | 7C 7F 1B 78 */	mr r31, r3
/* 813700AC | 41 80 04 EC */	blt .L_81370598
/* 813700B0 | 38 00 00 02 */	li r0, 0x2
/* 813700B4 | 28 03 00 47 */	cmplwi r3, 0x47
/* 813700B8 | 90 1D 00 00 */	stw r0, 0x0(r29)
/* 813700BC | 41 81 03 94 */	bgt .L_81370450
/* 813700C0 | 3C 80 81 64 */	lis r4, jumptable_816441AC@ha
/* 813700C4 | 54 60 10 3A */	slwi r0, r3, 2
/* 813700C8 | 38 84 41 AC */	addi r4, r4, jumptable_816441AC@l
/* 813700CC | 7C 84 00 2E */	lwzx r4, r4, r0
/* 813700D0 | 7C 89 03 A6 */	mtctr r4
/* 813700D4 | 4E 80 04 20 */	bctr
.L_813700D8:
/* 813700D8 | 3F 60 81 09 */	lis r27, sWiiData__Q23www10wiisetting@ha
/* 813700DC | 3B 7B A4 B8 */	addi r27, r27, sWiiData__Q23www10wiisetting@l
/* 813700E0 | 48 1F A1 69 */	bl fn_8156A248
/* 813700E4 | 7C 7B F9 AE */	stbx r3, r27, r31
/* 813700E8 | 98 6D A9 55 */	stb r3, lbl_81698995@sda21(r0)
/* 813700EC | 48 00 03 64 */	b .L_81370450
.L_813700F0:
/* 813700F0 | 48 1F A7 31 */	bl fn_8156A820
/* 813700F4 | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 813700F8 | 54 60 07 FE */	clrlwi r0, r3, 31
/* 813700FC | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 81370100 | 7C 04 F9 AE */	stbx r0, r4, r31
/* 81370104 | 48 00 03 4C */	b .L_81370450
.L_81370108:
/* 81370108 | 48 08 B3 ED */	bl fn_813FB4F4
/* 8137010C | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 81370110 | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 81370114 | 7C 64 F9 AE */	stbx r3, r4, r31
/* 81370118 | 48 00 03 38 */	b .L_81370450
.L_8137011C:
/* 8137011C | 38 61 00 08 */	addi r3, r1, 0x8
/* 81370120 | 48 1F 9F CD */	bl fn_8156A0EC
/* 81370124 | 3C 60 81 09 */	lis r3, sWiiData__Q23www10wiisetting@ha
/* 81370128 | 88 81 00 08 */	lbz r4, 0x8(r1)
/* 8137012C | 38 63 A4 B8 */	addi r3, r3, sWiiData__Q23www10wiisetting@l
/* 81370130 | 88 01 00 09 */	lbz r0, 0x9(r1)
/* 81370134 | 98 83 00 04 */	stb r4, 0x4(r3)
/* 81370138 | 98 03 00 05 */	stb r0, 0x5(r3)
/* 8137013C | 48 00 03 14 */	b .L_81370450
.L_81370140:
/* 81370140 | 48 1F 9E 75 */	bl SCGetAspectRatio
/* 81370144 | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 81370148 | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 8137014C | 7C 64 F9 AE */	stbx r3, r4, r31
/* 81370150 | 48 00 03 00 */	b .L_81370450
.L_81370154:
/* 81370154 | 48 1F A0 3D */	bl fn_8156A190
/* 81370158 | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 8137015C | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 81370160 | 7C 64 F9 AE */	stbx r3, r4, r31
/* 81370164 | 48 00 02 EC */	b .L_81370450
.L_81370168:
/* 81370168 | 48 1F A0 85 */	bl fn_8156A1EC
/* 8137016C | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 81370170 | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 81370174 | 7C 64 F9 AE */	stbx r3, r4, r31
/* 81370178 | 48 00 02 D8 */	b .L_81370450
.L_8137017C:
/* 8137017C | 48 1F A2 C1 */	bl fn_8156A43C
/* 81370180 | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 81370184 | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 81370188 | 7C 64 F9 AE */	stbx r3, r4, r31
/* 8137018C | 48 00 02 C4 */	b .L_81370450
.L_81370190:
/* 81370190 | 80 A1 00 28 */	lwz r5, 0x28(r1)
/* 81370194 | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 81370198 | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 8137019C | 38 05 F8 30 */	subi r0, r5, 0x7d0
/* 813701A0 | 7C 04 19 AE */	stbx r0, r4, r3
/* 813701A4 | 48 00 02 AC */	b .L_81370450
.L_813701A8:
/* 813701A8 | 80 A1 00 24 */	lwz r5, 0x24(r1)
/* 813701AC | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 813701B0 | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 813701B4 | 38 05 00 01 */	addi r0, r5, 0x1
/* 813701B8 | 7C 04 19 AE */	stbx r0, r4, r3
/* 813701BC | 48 00 02 94 */	b .L_81370450
.L_813701C0:
/* 813701C0 | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 813701C4 | 80 01 00 20 */	lwz r0, 0x20(r1)
/* 813701C8 | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 813701CC | 7C 04 19 AE */	stbx r0, r4, r3
/* 813701D0 | 48 00 02 80 */	b .L_81370450
.L_813701D4:
/* 813701D4 | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 813701D8 | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 813701DC | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 813701E0 | 7C 04 19 AE */	stbx r0, r4, r3
/* 813701E4 | 48 00 02 6C */	b .L_81370450
.L_813701E8:
/* 813701E8 | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 813701EC | 80 01 00 18 */	lwz r0, 0x18(r1)
/* 813701F0 | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 813701F4 | 7C 04 19 AE */	stbx r0, r4, r3
/* 813701F8 | 48 00 02 58 */	b .L_81370450
.L_813701FC:
/* 813701FC | 48 08 9E D9 */	bl fn_813FA0D4
/* 81370200 | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 81370204 | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 81370208 | 7C 64 F9 AE */	stbx r3, r4, r31
/* 8137020C | 48 00 02 44 */	b .L_81370450
.L_81370210:
/* 81370210 | 38 60 00 00 */	li r3, 0x0
/* 81370214 | 48 08 9E 15 */	bl fn_813FA028
/* 81370218 | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 8137021C | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 81370220 | 7C 64 F9 AE */	stbx r3, r4, r31
/* 81370224 | 48 00 02 2C */	b .L_81370450
.L_81370228:
/* 81370228 | 38 60 00 01 */	li r3, 0x1
/* 8137022C | 48 08 9D FD */	bl fn_813FA028
/* 81370230 | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 81370234 | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 81370238 | 7C 64 F9 AE */	stbx r3, r4, r31
/* 8137023C | 48 00 02 14 */	b .L_81370450
.L_81370240:
/* 81370240 | 38 60 00 02 */	li r3, 0x2
/* 81370244 | 48 08 9D E5 */	bl fn_813FA028
/* 81370248 | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 8137024C | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 81370250 | 7C 64 F9 AE */	stbx r3, r4, r31
/* 81370254 | 48 00 01 FC */	b .L_81370450
.L_81370258:
/* 81370258 | 48 08 B2 75 */	bl fn_813FB4CC
/* 8137025C | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 81370260 | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 81370264 | 7C 64 F9 AE */	stbx r3, r4, r31
/* 81370268 | 48 00 01 E8 */	b .L_81370450
.L_8137026C:
/* 8137026C | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 81370270 | 88 AD A9 56 */	lbz r5, lbl_81698996@sda21(r0)
/* 81370274 | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 81370278 | 38 00 00 00 */	li r0, 0x0
/* 8137027C | 7C A4 19 AE */	stbx r5, r4, r3
/* 81370280 | 98 0D A9 56 */	stb r0, lbl_81698996@sda21(r0)
/* 81370284 | 48 00 01 CC */	b .L_81370450
.L_81370288:
/* 81370288 | 48 08 B2 E5 */	bl fn_813FB56C
/* 8137028C | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 81370290 | 38 00 00 00 */	li r0, 0x0
/* 81370294 | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 81370298 | 98 0D A9 56 */	stb r0, lbl_81698996@sda21(r0)
/* 8137029C | 7C 64 F9 AE */	stbx r3, r4, r31
/* 813702A0 | 48 00 01 B0 */	b .L_81370450
.L_813702A4:
/* 813702A4 | 48 08 9E A9 */	bl fn_813FA14C
/* 813702A8 | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 813702AC | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 813702B0 | 7C 64 F9 AE */	stbx r3, r4, r31
/* 813702B4 | 48 00 01 9C */	b .L_81370450
.L_813702B8:
/* 813702B8 | 48 08 9E B5 */	bl fn_813FA16C
/* 813702BC | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 813702C0 | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 813702C4 | 7C 64 F9 AE */	stbx r3, r4, r31
/* 813702C8 | 48 00 01 88 */	b .L_81370450
.L_813702CC:
/* 813702CC | 48 08 B0 35 */	bl fn_813FB300
/* 813702D0 | 48 00 01 80 */	b .L_81370450
.L_813702D4:
/* 813702D4 | 48 08 B0 45 */	bl fn_813FB318
/* 813702D8 | 48 00 01 78 */	b .L_81370450
.L_813702DC:
/* 813702DC | 48 08 A0 41 */	bl fn_813FA31C
/* 813702E0 | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 813702E4 | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 813702E8 | 7C 64 F9 AE */	stbx r3, r4, r31
/* 813702EC | 48 00 01 64 */	b .L_81370450
.L_813702F0:
/* 813702F0 | 48 08 A0 49 */	bl fn_813FA338
/* 813702F4 | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 813702F8 | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 813702FC | 7C 64 F9 AE */	stbx r3, r4, r31
/* 81370300 | 48 00 01 50 */	b .L_81370450
.L_81370304:
/* 81370304 | 48 08 A0 51 */	bl fn_813FA354
/* 81370308 | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 8137030C | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 81370310 | 7C 64 F9 AE */	stbx r3, r4, r31
/* 81370314 | 48 00 01 3C */	b .L_81370450
.L_81370318:
/* 81370318 | 48 08 B8 85 */	bl fn_813FBB9C
/* 8137031C | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 81370320 | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 81370324 | 7C 64 F9 AE */	stbx r3, r4, r31
/* 81370328 | 48 00 01 28 */	b .L_81370450
.L_8137032C:
/* 8137032C | 48 08 BA E1 */	bl fn_813FBE0C
/* 81370330 | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 81370334 | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 81370338 | 7C 64 F9 AE */	stbx r3, r4, r31
/* 8137033C | 48 00 01 14 */	b .L_81370450
.L_81370340:
/* 81370340 | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 81370344 | 88 0D A9 55 */	lbz r0, lbl_81698995@sda21(r0)
/* 81370348 | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 8137034C | 7C 04 19 AE */	stbx r0, r4, r3
/* 81370350 | 7C 03 03 78 */	mr r3, r0
/* 81370354 | 48 08 BB B9 */	bl fn_813FBF0C
/* 81370358 | 48 00 00 F8 */	b .L_81370450
.L_8137035C:
/* 8137035C | 88 6D A9 55 */	lbz r3, lbl_81698995@sda21(r0)
/* 81370360 | 48 08 BB 8D */	bl fn_813FBEEC
/* 81370364 | 3C 60 81 09 */	lis r3, sWiiData__Q23www10wiisetting@ha
/* 81370368 | 88 0D A9 55 */	lbz r0, lbl_81698995@sda21(r0)
/* 8137036C | 38 63 A4 B8 */	addi r3, r3, sWiiData__Q23www10wiisetting@l
/* 81370370 | 98 03 00 2D */	stb r0, 0x2d(r3)
/* 81370374 | 48 00 00 DC */	b .L_81370450
.L_81370378:
/* 81370378 | 48 08 BA B5 */	bl fn_813FBE2C
/* 8137037C | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 81370380 | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 81370384 | 7C 64 F9 AE */	stbx r3, r4, r31
/* 81370388 | 48 00 00 C8 */	b .L_81370450
.L_8137038C:
/* 8137038C | 48 1F 9D 05 */	bl fn_8156A090
/* 81370390 | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 81370394 | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 81370398 | 7C 64 F9 AE */	stbx r3, r4, r31
/* 8137039C | 48 00 00 B4 */	b .L_81370450
.L_813703A0:
/* 813703A0 | 48 1F 9D 65 */	bl SCGetLanguage
/* 813703A4 | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 813703A8 | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 813703AC | 7C 64 F9 AE */	stbx r3, r4, r31
/* 813703B0 | 48 00 00 A0 */	b .L_81370450
.L_813703B4:
/* 813703B4 | 48 1C DF 45 */	bl fn_8153E2F8
/* 813703B8 | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 813703BC | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 813703C0 | 7C 64 F9 AE */	stbx r3, r4, r31
/* 813703C4 | 48 00 00 8C */	b .L_81370450
.L_813703C8:
/* 813703C8 | 48 08 B1 2D */	bl fn_813FB4F4
/* 813703CC | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 813703D0 | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 813703D4 | 7C 64 F9 AE */	stbx r3, r4, r31
/* 813703D8 | 48 00 00 78 */	b .L_81370450
.L_813703DC:
/* 813703DC | 48 08 9D 51 */	bl fn_813FA12C
/* 813703E0 | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 813703E4 | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 813703E8 | 7C 64 F9 AE */	stbx r3, r4, r31
/* 813703EC | 48 00 00 64 */	b .L_81370450
.L_813703F0:
/* 813703F0 | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 813703F4 | 88 0D A9 57 */	lbz r0, lbl_81698997@sda21(r0)
/* 813703F8 | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 813703FC | 7C 04 19 AE */	stbx r0, r4, r3
/* 81370400 | 48 00 00 50 */	b .L_81370450
.L_81370404:
/* 81370404 | 4B FE 6D 61 */	bl checkLANMacAddrAvailable__Q33ipl6socket13SocketSettingFv
/* 81370408 | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 8137040C | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 81370410 | 7C 64 F9 AE */	stbx r3, r4, r31
/* 81370414 | 48 00 00 3C */	b .L_81370450
.L_81370418:
/* 81370418 | 48 1F A3 61 */	bl fn_8156A778
/* 8137041C | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 81370420 | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 81370424 | 7C 64 F9 AE */	stbx r3, r4, r31
/* 81370428 | 48 00 00 28 */	b .L_81370450
.L_8137042C:
/* 8137042C | 4B FC 56 61 */	bl getRegion__Q23ipl6SystemFv
/* 81370430 | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 81370434 | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 81370438 | 7C 64 F9 AE */	stbx r3, r4, r31
/* 8137043C | 48 00 00 14 */	b .L_81370450
.L_81370440:
/* 81370440 | 48 1F A3 9D */	bl fn_8156A7DC
/* 81370444 | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 81370448 | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 8137044C | 7C 64 F9 AE */	stbx r3, r4, r31
.L_81370450:
/* 81370450 | 3C 60 81 09 */	lis r3, sWiiData__Q23www10wiisetting@ha
/* 81370454 | C8 22 82 B8 */	lfd f1, lbl_816946B8@sda21(r0)
/* 81370458 | 3B 63 A4 B8 */	addi r27, r3, sWiiData__Q23www10wiisetting@l
/* 8137045C | 2C 1F 00 35 */	cmpwi r31, 0x35
/* 81370460 | 7C 1B F8 AE */	lbzx r0, r27, r31
/* 81370464 | 90 01 00 A4 */	stw r0, 0xa4(r1)
/* 81370468 | C8 01 00 A0 */	lfd f0, 0xa0(r1)
/* 8137046C | FC 00 08 28 */	fsub f0, f0, f1
/* 81370470 | D8 1D 00 08 */	stfd f0, 0x8(r29)
/* 81370474 | 40 82 00 24 */	bne .L_81370498
/* 81370478 | 80 0D A9 4C */	lwz r0, lbl_8169898C@sda21(r0)
/* 8137047C | C8 22 82 C0 */	lfd f1, lbl_816946C0@sda21(r0)
/* 81370480 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 81370484 | 90 01 00 AC */	stw r0, 0xac(r1)
/* 81370488 | C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 8137048C | FC 00 08 28 */	fsub f0, f0, f1
/* 81370490 | D8 1D 00 08 */	stfd f0, 0x8(r29)
/* 81370494 | 48 00 01 00 */	b .L_81370594
.L_81370498:
/* 81370498 | 2C 1F 00 40 */	cmpwi r31, 0x40
/* 8137049C | 40 82 00 20 */	bne .L_813704BC
/* 813704A0 | 48 08 B7 29 */	bl fn_813FBBC8
/* 813704A4 | 90 61 00 A4 */	stw r3, 0xa4(r1)
/* 813704A8 | C8 22 82 B8 */	lfd f1, lbl_816946B8@sda21(r0)
/* 813704AC | C8 01 00 A0 */	lfd f0, 0xa0(r1)
/* 813704B0 | FC 00 08 28 */	fsub f0, f0, f1
/* 813704B4 | D8 1D 00 08 */	stfd f0, 0x8(r29)
/* 813704B8 | 48 00 00 DC */	b .L_81370594
.L_813704BC:
/* 813704BC | 2C 1F 00 3C */	cmpwi r31, 0x3c
/* 813704C0 | 40 82 00 D4 */	bne .L_81370594
/* 813704C4 | 4B FC 55 C9 */	bl getRegion__Q23ipl6SystemFv
/* 813704C8 | 28 03 00 01 */	cmplwi r3, 0x1
/* 813704CC | 40 82 00 5C */	bne .L_81370528
/* 813704D0 | 4B FC 55 1D */	bl getLanguage__Q23ipl6SystemFv
/* 813704D4 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 813704D8 | 41 82 00 30 */	beq .L_81370508
/* 813704DC | 40 80 00 10 */	bge .L_813704EC
/* 813704E0 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813704E4 | 41 82 00 14 */	beq .L_813704F8
/* 813704E8 | 48 00 00 94 */	b .L_8137057C
.L_813704EC:
/* 813704EC | 2C 03 00 05 */	cmpwi r3, 0x5
/* 813704F0 | 40 80 00 8C */	bge .L_8137057C
/* 813704F4 | 48 00 00 24 */	b .L_81370518
.L_813704F8:
/* 813704F8 | 38 60 00 00 */	li r3, 0x0
/* 813704FC | 48 00 09 65 */	bl www_wiisetting_81370E60
/* 81370500 | 7C 7E 1B 78 */	mr r30, r3
/* 81370504 | 48 00 00 78 */	b .L_8137057C
.L_81370508:
/* 81370508 | 38 60 00 01 */	li r3, 0x1
/* 8137050C | 48 00 09 55 */	bl www_wiisetting_81370E60
/* 81370510 | 7C 7E 1B 78 */	mr r30, r3
/* 81370514 | 48 00 00 68 */	b .L_8137057C
.L_81370518:
/* 81370518 | 38 60 00 02 */	li r3, 0x2
/* 8137051C | 48 00 09 45 */	bl www_wiisetting_81370E60
/* 81370520 | 7C 7E 1B 78 */	mr r30, r3
/* 81370524 | 48 00 00 58 */	b .L_8137057C
.L_81370528:
/* 81370528 | 4B FC 55 65 */	bl getRegion__Q23ipl6SystemFv
/* 8137052C | 28 03 00 02 */	cmplwi r3, 0x2
/* 81370530 | 40 82 00 4C */	bne .L_8137057C
/* 81370534 | 3F 80 81 61 */	lis r28, lbl_8160F0F0@ha
/* 81370538 | 3B E0 00 00 */	li r31, 0x0
/* 8137053C | 3B 9C F0 F0 */	addi r28, r28, lbl_8160F0F0@l
.L_81370540:
/* 81370540 | 4B FC 54 AD */	bl getLanguage__Q23ipl6SystemFv
/* 81370544 | 1C 63 00 3B */	mulli r3, r3, 0x3b
/* 81370548 | 88 1B 00 3C */	lbz r0, 0x3c(r27)
/* 8137054C | 7C 7F 1A 14 */	add r3, r31, r3
/* 81370550 | 7C 7C 1A 14 */	add r3, r28, r3
/* 81370554 | 88 63 FF C5 */	lbz r3, -0x3b(r3)
/* 81370558 | 38 63 00 40 */	addi r3, r3, 0x40
/* 8137055C | 7C 00 18 00 */	cmpw r0, r3
/* 81370560 | 40 82 00 10 */	bne .L_81370570
/* 81370564 | 38 1F 00 40 */	addi r0, r31, 0x40
/* 81370568 | 54 1E 06 3E */	clrlwi r30, r0, 24
/* 8137056C | 48 00 00 10 */	b .L_8137057C
.L_81370570:
/* 81370570 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81370574 | 2C 1F 00 3B */	cmpwi r31, 0x3b
/* 81370578 | 41 80 FF C8 */	blt .L_81370540
.L_8137057C:
/* 8137057C | 57 C0 06 3E */	clrlwi r0, r30, 24
/* 81370580 | C8 22 82 B8 */	lfd f1, lbl_816946B8@sda21(r0)
/* 81370584 | 90 01 00 AC */	stw r0, 0xac(r1)
/* 81370588 | C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 8137058C | FC 00 08 28 */	fsub f0, f0, f1
/* 81370590 | D8 1D 00 08 */	stfd f0, 0x8(r29)
.L_81370594:
/* 81370594 | 3B 20 00 06 */	li r25, 0x6
.L_81370598:
/* 81370598 | 7F 23 CB 78 */	mr r3, r25
.L_8137059C:
/* 8137059C | 39 61 00 D0 */	addi r11, r1, 0xd0
/* 813705A0 | 48 28 8F 65 */	bl _restgpr_25
/* 813705A4 | 80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 813705A8 | 7C 08 03 A6 */	mtlr r0
/* 813705AC | 38 21 00 D0 */	addi r1, r1, 0xd0
/* 813705B0 | 4E 80 00 20 */	blr
.endfn Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue

# .text:0xBE4 | 0x813705B4 | size: 0x50C
# www::wiisetting::Setter_(WWWJSPluginObj*, const char*, WWWJSPluginValue*)
.fn Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, global
/* 813705B4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813705B8 | 7C 08 02 A6 */	mflr r0
/* 813705BC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813705C0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813705C4 | 48 28 8E FD */	bl _savegpr_27
/* 813705C8 | 7C 9B 23 78 */	mr r27, r4
/* 813705CC | 3F E0 81 64 */	lis r31, lbl_816440A0@ha
/* 813705D0 | 7C BD 2B 78 */	mr r29, r5
/* 813705D4 | 7F 63 DB 78 */	mr r3, r27
/* 813705D8 | 3B FF 40 A0 */	addi r31, r31, lbl_816440A0@l
/* 813705DC | 48 00 09 39 */	bl www_wiisetting_81370F14
/* 813705E0 | 2C 03 00 12 */	cmpwi r3, 0x12
/* 813705E4 | 7C 7E 1B 78 */	mr r30, r3
/* 813705E8 | 40 82 00 7C */	bne .L_81370664
/* 813705EC | C8 1D 00 08 */	lfd f0, 0x8(r29)
/* 813705F0 | 3C A0 81 09 */	lis r5, sWiiData__Q23www10wiisetting@ha
/* 813705F4 | 38 A5 A4 B8 */	addi r5, r5, sWiiData__Q23www10wiisetting@l
/* 813705F8 | FC 00 00 1E */	fctiwz f0, f0
/* 813705FC | D8 01 00 08 */	stfd f0, 0x8(r1)
/* 81370600 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 81370604 | 54 80 06 3E */	clrlwi r0, r4, 24
/* 81370608 | 7C 85 19 AE */	stbx r4, r5, r3
/* 8137060C | 2C 00 00 32 */	cmpwi r0, 0x32
/* 81370610 | 41 82 00 28 */	beq .L_81370638
/* 81370614 | 40 80 00 38 */	bge .L_8137064C
/* 81370618 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8137061C | 41 82 00 08 */	beq .L_81370624
/* 81370620 | 48 00 00 2C */	b .L_8137064C
.L_81370624:
/* 81370624 | 48 1F 99 ED */	bl fn_8156A010
/* 81370628 | 38 03 00 10 */	addi r0, r3, 0x10
/* 8137062C | 20 00 00 20 */	subfic r0, r0, 0x20
/* 81370630 | 98 0D A9 55 */	stb r0, lbl_81698995@sda21(r0)
/* 81370634 | 48 00 00 18 */	b .L_8137064C
.L_81370638:
/* 81370638 | 80 6D A9 5C */	lwz r3, pString__Q23www10wiisetting@sda21(r0)
/* 8137063C | 38 80 00 00 */	li r4, 0x0
/* 81370640 | 38 A0 00 40 */	li r5, 0x40
/* 81370644 | 38 63 06 0E */	addi r3, r3, 0x60e
/* 81370648 | 4B FB FC ED */	bl memset
.L_8137064C:
/* 8137064C | 38 60 00 01 */	li r3, 0x1
/* 81370650 | 38 00 00 00 */	li r0, 0x0
/* 81370654 | 90 6D 82 D0 */	stw r3, lbl_81696310@sda21(r0)
/* 81370658 | 38 60 00 0B */	li r3, 0xb
/* 8137065C | 90 0D A9 48 */	stw r0, lbl_81698988@sda21(r0)
/* 81370660 | 48 00 04 48 */	b .L_81370AA8
.L_81370664:
/* 81370664 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81370668 | 41 80 04 3C */	blt .L_81370AA4
/* 8137066C | 38 03 FF C9 */	subi r0, r3, 0x37
/* 81370670 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81370674 | 41 81 00 64 */	bgt .L_813706D8
/* 81370678 | C8 22 82 C8 */	lfd f1, lbl_816946C8@sda21(r0)
/* 8137067C | C8 1D 00 08 */	lfd f0, 0x8(r29)
/* 81370680 | FC 01 00 00 */	fcmpu cr0, f1, f0
/* 81370684 | 40 82 00 38 */	bne .L_813706BC
/* 81370688 | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 8137068C | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 81370690 | 88 04 00 37 */	lbz r0, 0x37(r4)
/* 81370694 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81370698 | 40 82 00 CC */	bne .L_81370764
/* 8137069C | 88 04 00 38 */	lbz r0, 0x38(r4)
/* 813706A0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813706A4 | 40 82 00 C0 */	bne .L_81370764
/* 813706A8 | FC 00 00 1E */	fctiwz f0, f0
/* 813706AC | D8 01 00 08 */	stfd f0, 0x8(r1)
/* 813706B0 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 813706B4 | 7C 04 19 AE */	stbx r0, r4, r3
/* 813706B8 | 48 00 00 AC */	b .L_81370764
.L_813706BC:
/* 813706BC | FC 00 00 1E */	fctiwz f0, f0
/* 813706C0 | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 813706C4 | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 813706C8 | D8 01 00 08 */	stfd f0, 0x8(r1)
/* 813706CC | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 813706D0 | 7C 04 19 AE */	stbx r0, r4, r3
/* 813706D4 | 48 00 00 90 */	b .L_81370764
.L_813706D8:
/* 813706D8 | 2C 03 00 40 */	cmpwi r3, 0x40
/* 813706DC | 40 82 00 38 */	bne .L_81370714
/* 813706E0 | C8 3D 00 08 */	lfd f1, 0x8(r29)
/* 813706E4 | 48 28 8C B5 */	bl __cvt_fp2unsigned
/* 813706E8 | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 813706EC | 54 60 06 31 */	rlwinm. r0, r3, 0, 24, 24
/* 813706F0 | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 813706F4 | 7C A4 F0 AE */	lbzx r5, r4, r30
/* 813706F8 | 54 60 06 7E */	clrlwi r0, r3, 25
/* 813706FC | 7C A3 03 78 */	or r3, r5, r0
/* 81370700 | 41 82 00 08 */	beq .L_81370708
/* 81370704 | 7C A3 00 78 */	andc r3, r5, r0
.L_81370708:
/* 81370708 | 7C 64 F1 AE */	stbx r3, r4, r30
/* 8137070C | 9B CD A9 54 */	stb r30, lbl_81698994@sda21(r0)
/* 81370710 | 48 00 00 54 */	b .L_81370764
.L_81370714:
/* 81370714 | C8 1D 00 08 */	lfd f0, 0x8(r29)
/* 81370718 | 3F 80 81 09 */	lis r28, sWiiData__Q23www10wiisetting@ha
/* 8137071C | 2C 03 00 1C */	cmpwi r3, 0x1c
/* 81370720 | FC 00 00 1E */	fctiwz f0, f0
/* 81370724 | 3B 9C A4 B8 */	addi r28, r28, sWiiData__Q23www10wiisetting@l
/* 81370728 | D8 01 00 08 */	stfd f0, 0x8(r1)
/* 8137072C | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 81370730 | 7C 1C 19 AE */	stbx r0, r28, r3
/* 81370734 | 41 82 00 08 */	beq .L_8137073C
/* 81370738 | 98 6D A9 54 */	stb r3, lbl_81698994@sda21(r0)
.L_8137073C:
/* 8137073C | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 81370740 | 7F 64 DB 78 */	mr r4, r27
/* 81370744 | 38 7F 02 90 */	addi r3, r31, 0x290
/* 81370748 | 4C C6 31 82 */	crclr cr1eq
/* 8137074C | 48 1B DF 55 */	bl OSReport
/* 81370750 | 7C BC F0 AE */	lbzx r5, r28, r30
/* 81370754 | 7F C4 F3 78 */	mr r4, r30
/* 81370758 | 38 7F 02 B5 */	addi r3, r31, 0x2b5
/* 8137075C | 4C C6 31 82 */	crclr cr1eq
/* 81370760 | 48 1B DF 41 */	bl OSReport
.L_81370764:
/* 81370764 | 28 1E 00 45 */	cmplwi r30, 0x45
/* 81370768 | 41 81 03 34 */	bgt .L_81370A9C
/* 8137076C | 3C 60 81 64 */	lis r3, jumptable_81644390@ha
/* 81370770 | 57 C0 10 3A */	slwi r0, r30, 2
/* 81370774 | 38 63 43 90 */	addi r3, r3, jumptable_81644390@l
/* 81370778 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 8137077C | 7C 69 03 A6 */	mtctr r3
/* 81370780 | 4E 80 04 20 */	bctr
.L_81370784:
/* 81370784 | 3C 60 81 09 */	lis r3, sWiiData__Q23www10wiisetting@ha
/* 81370788 | 38 00 00 01 */	li r0, 0x1
/* 8137078C | 38 63 A4 B8 */	addi r3, r3, sWiiData__Q23www10wiisetting@l
/* 81370790 | 98 03 00 36 */	stb r0, 0x36(r3)
/* 81370794 | 48 00 03 08 */	b .L_81370A9C
.L_81370798:
/* 81370798 | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 8137079C | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 813707A0 | 7C 64 F0 AE */	lbzx r3, r4, r30
/* 813707A4 | 38 03 00 0A */	addi r0, r3, 0xa
/* 813707A8 | 98 04 00 37 */	stb r0, 0x37(r4)
/* 813707AC | 48 00 02 F0 */	b .L_81370A9C
.L_813707B0:
/* 813707B0 | 3C 60 81 09 */	lis r3, sWiiData__Q23www10wiisetting@ha
/* 813707B4 | 38 63 A4 B8 */	addi r3, r3, sWiiData__Q23www10wiisetting@l
/* 813707B8 | 7C 63 F0 AE */	lbzx r3, r3, r30
/* 813707BC | 48 20 CB CD */	bl fn_8157D388
/* 813707C0 | 3B 80 00 00 */	li r28, 0x0
/* 813707C4 | 3B C0 00 00 */	li r30, 0x0
/* 813707C8 | 3F A0 81 37 */	lis r29, www_wiisetting_8136F9F4@ha
.L_813707CC:
/* 813707CC | 7F 83 E3 78 */	mr r3, r28
/* 813707D0 | 48 20 CC 4D */	bl fn_8157D41C
/* 813707D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813707D8 | 41 82 00 14 */	beq .L_813707EC
/* 813707DC | 93 CD 82 D0 */	stw r30, lbl_81696310@sda21(r0)
/* 813707E0 | 7F 83 E3 78 */	mr r3, r28
/* 813707E4 | 93 CD A9 48 */	stw r30, lbl_81698988@sda21(r0)
/* 813707E8 | 48 21 7B AD */	bl fn_81588394
.L_813707EC:
/* 813707EC | 7F 83 E3 78 */	mr r3, r28
/* 813707F0 | 38 9D F9 F4 */	addi r4, r29, www_wiisetting_8136F9F4@l
/* 813707F4 | 48 21 7B D9 */	bl fn_815883CC
/* 813707F8 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813707FC | 2C 1C 00 04 */	cmpwi r28, 0x4
/* 81370800 | 41 80 FF CC */	blt .L_813707CC
/* 81370804 | 48 00 02 98 */	b .L_81370A9C
.L_81370808:
/* 81370808 | 3C 60 81 09 */	lis r3, sWiiData__Q23www10wiisetting@ha
/* 8137080C | 38 63 A4 B8 */	addi r3, r3, sWiiData__Q23www10wiisetting@l
/* 81370810 | 7C 63 F0 AE */	lbzx r3, r3, r30
/* 81370814 | 48 08 98 0D */	bl fn_813FA020
/* 81370818 | 48 00 02 84 */	b .L_81370A9C
.L_8137081C:
/* 8137081C | 48 08 A2 B5 */	bl fn_813FAAD0
/* 81370820 | 48 00 02 7C */	b .L_81370A9C
.L_81370824:
/* 81370824 | 3C 60 81 09 */	lis r3, sWiiData__Q23www10wiisetting@ha
/* 81370828 | 38 63 A4 B8 */	addi r3, r3, sWiiData__Q23www10wiisetting@l
/* 8137082C | 7C 63 F0 AE */	lbzx r3, r3, r30
/* 81370830 | 48 08 A3 11 */	bl fn_813FAB40
/* 81370834 | 48 00 02 68 */	b .L_81370A9C
.L_81370838:
/* 81370838 | 3C 60 81 09 */	lis r3, sWiiData__Q23www10wiisetting@ha
/* 8137083C | 38 00 00 00 */	li r0, 0x0
/* 81370840 | 38 63 A4 B8 */	addi r3, r3, sWiiData__Q23www10wiisetting@l
/* 81370844 | 98 0D A9 56 */	stb r0, lbl_81698996@sda21(r0)
/* 81370848 | 7C 63 F0 AE */	lbzx r3, r3, r30
/* 8137084C | 48 00 07 61 */	bl startFunc__Q23www10wiisettingFUc
/* 81370850 | 48 00 02 4C */	b .L_81370A9C
.L_81370854:
/* 81370854 | 48 08 AD 19 */	bl fn_813FB56C
/* 81370858 | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 8137085C | 98 6D A9 55 */	stb r3, lbl_81698995@sda21(r0)
/* 81370860 | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 81370864 | 7C 64 F0 AE */	lbzx r3, r4, r30
/* 81370868 | 48 08 A4 29 */	bl fn_813FAC90
/* 8137086C | 48 00 02 30 */	b .L_81370A9C
.L_81370870:
/* 81370870 | 88 6D A9 55 */	lbz r3, lbl_81698995@sda21(r0)
/* 81370874 | 48 08 A4 1D */	bl fn_813FAC90
/* 81370878 | 48 00 02 24 */	b .L_81370A9C
.L_8137087C:
/* 8137087C | 3C 60 81 09 */	lis r3, sWiiData__Q23www10wiisetting@ha
/* 81370880 | 38 63 A4 B8 */	addi r3, r3, sWiiData__Q23www10wiisetting@l
/* 81370884 | 7C 63 F0 AE */	lbzx r3, r3, r30
/* 81370888 | 48 08 A1 45 */	bl fn_813FA9CC
/* 8137088C | 48 00 02 10 */	b .L_81370A9C
.L_81370890:
/* 81370890 | 3C 60 81 09 */	lis r3, sWiiData__Q23www10wiisetting@ha
/* 81370894 | 38 63 A4 B8 */	addi r3, r3, sWiiData__Q23www10wiisetting@l
/* 81370898 | 7C 63 F0 AE */	lbzx r3, r3, r30
/* 8137089C | 48 08 A1 81 */	bl fn_813FAA1C
/* 813708A0 | 48 00 01 FC */	b .L_81370A9C
.L_813708A4:
/* 813708A4 | 3C 60 81 09 */	lis r3, sWiiData__Q23www10wiisetting@ha
/* 813708A8 | 38 63 A4 B8 */	addi r3, r3, sWiiData__Q23www10wiisetting@l
/* 813708AC | 7C 63 F0 AE */	lbzx r3, r3, r30
/* 813708B0 | 48 08 A1 BD */	bl fn_813FAA6C
/* 813708B4 | 48 00 01 E8 */	b .L_81370A9C
.L_813708B8:
/* 813708B8 | 3C 60 81 09 */	lis r3, sWiiData__Q23www10wiisetting@ha
/* 813708BC | 38 63 A4 B8 */	addi r3, r3, sWiiData__Q23www10wiisetting@l
/* 813708C0 | 7C 63 F0 AE */	lbzx r3, r3, r30
/* 813708C4 | 48 08 A1 ED */	bl fn_813FAAB0
/* 813708C8 | 48 00 01 D4 */	b .L_81370A9C
.L_813708CC:
/* 813708CC | 3C 60 81 09 */	lis r3, sWiiData__Q23www10wiisetting@ha
/* 813708D0 | 38 63 A4 B8 */	addi r3, r3, sWiiData__Q23www10wiisetting@l
/* 813708D4 | 7C 63 F0 AE */	lbzx r3, r3, r30
/* 813708D8 | 48 08 A2 FD */	bl fn_813FABD4
/* 813708DC | 48 00 01 C0 */	b .L_81370A9C
.L_813708E0:
/* 813708E0 | 3C 60 81 09 */	lis r3, sWiiData__Q23www10wiisetting@ha
/* 813708E4 | 38 63 A4 B8 */	addi r3, r3, sWiiData__Q23www10wiisetting@l
/* 813708E8 | 7C 63 F0 AE */	lbzx r3, r3, r30
/* 813708EC | 48 08 B5 A5 */	bl fn_813FBE90
/* 813708F0 | 48 08 B0 99 */	bl fn_813FB988
/* 813708F4 | 48 00 01 A8 */	b .L_81370A9C
.L_813708F8:
/* 813708F8 | C8 3D 00 08 */	lfd f1, 0x8(r29)
/* 813708FC | 48 28 8A 9D */	bl __cvt_fp2unsigned
/* 81370900 | 54 60 05 EF */	rlwinm. r0, r3, 0, 23, 23
/* 81370904 | 41 82 01 98 */	beq .L_81370A9C
/* 81370908 | 48 08 B2 B1 */	bl fn_813FBBB8
/* 8137090C | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 81370910 | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 81370914 | 7C 64 F1 AE */	stbx r3, r4, r30
/* 81370918 | 48 00 01 84 */	b .L_81370A9C
.L_8137091C:
/* 8137091C | 48 08 B2 9D */	bl fn_813FBBB8
/* 81370920 | 98 6D A9 55 */	stb r3, lbl_81698995@sda21(r0)
/* 81370924 | 48 00 01 78 */	b .L_81370A9C
.L_81370928:
/* 81370928 | 3C 60 81 09 */	lis r3, sWiiData__Q23www10wiisetting@ha
/* 8137092C | 38 63 A4 B8 */	addi r3, r3, sWiiData__Q23www10wiisetting@l
/* 81370930 | 7C 63 F0 AE */	lbzx r3, r3, r30
/* 81370934 | 48 08 B5 D9 */	bl fn_813FBF0C
/* 81370938 | 48 00 01 64 */	b .L_81370A9C
.L_8137093C:
/* 8137093C | 48 08 B4 D1 */	bl fn_813FBE0C
/* 81370940 | 98 6D A9 55 */	stb r3, lbl_81698995@sda21(r0)
/* 81370944 | 48 00 01 58 */	b .L_81370A9C
.L_81370948:
/* 81370948 | 48 08 A9 E9 */	bl fn_813FB330
/* 8137094C | 48 00 01 50 */	b .L_81370A9C
.L_81370950:
/* 81370950 | 4B FC 51 3D */	bl getRegion__Q23ipl6SystemFv
/* 81370954 | 28 03 00 01 */	cmplwi r3, 0x1
/* 81370958 | 40 82 00 A4 */	bne .L_813709FC
/* 8137095C | 4B FC 50 91 */	bl getLanguage__Q23ipl6SystemFv
/* 81370960 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 81370964 | 41 82 00 48 */	beq .L_813709AC
/* 81370968 | 40 80 00 10 */	bge .L_81370978
/* 8137096C | 2C 03 00 01 */	cmpwi r3, 0x1
/* 81370970 | 41 82 00 14 */	beq .L_81370984
/* 81370974 | 48 00 01 28 */	b .L_81370A9C
.L_81370978:
/* 81370978 | 2C 03 00 05 */	cmpwi r3, 0x5
/* 8137097C | 40 80 01 20 */	bge .L_81370A9C
/* 81370980 | 48 00 00 54 */	b .L_813709D4
.L_81370984:
/* 81370984 | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 81370988 | 3C 60 81 61 */	lis r3, lbl_8160F060@ha
/* 8137098C | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 81370990 | 88 04 00 3C */	lbz r0, 0x3c(r4)
/* 81370994 | 38 63 F0 60 */	addi r3, r3, lbl_8160F060@l
/* 81370998 | 7C 60 1A 14 */	add r3, r0, r3
/* 8137099C | 88 63 FF F8 */	lbz r3, -0x8(r3)
/* 813709A0 | 38 03 00 08 */	addi r0, r3, 0x8
/* 813709A4 | 98 04 00 3C */	stb r0, 0x3c(r4)
/* 813709A8 | 48 00 00 F4 */	b .L_81370A9C
.L_813709AC:
/* 813709AC | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 813709B0 | 3C 60 81 61 */	lis r3, lbl_8160F060@ha
/* 813709B4 | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 813709B8 | 88 04 00 3C */	lbz r0, 0x3c(r4)
/* 813709BC | 38 63 F0 60 */	addi r3, r3, lbl_8160F060@l
/* 813709C0 | 7C 60 1A 14 */	add r3, r0, r3
/* 813709C4 | 88 63 00 28 */	lbz r3, 0x28(r3)
/* 813709C8 | 38 03 00 08 */	addi r0, r3, 0x8
/* 813709CC | 98 04 00 3C */	stb r0, 0x3c(r4)
/* 813709D0 | 48 00 00 CC */	b .L_81370A9C
.L_813709D4:
/* 813709D4 | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 813709D8 | 3C 60 81 61 */	lis r3, lbl_8160F060@ha
/* 813709DC | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 813709E0 | 88 04 00 3C */	lbz r0, 0x3c(r4)
/* 813709E4 | 38 63 F0 60 */	addi r3, r3, lbl_8160F060@l
/* 813709E8 | 7C 60 1A 14 */	add r3, r0, r3
/* 813709EC | 88 63 00 58 */	lbz r3, 0x58(r3)
/* 813709F0 | 38 03 00 08 */	addi r0, r3, 0x8
/* 813709F4 | 98 04 00 3C */	stb r0, 0x3c(r4)
/* 813709F8 | 48 00 00 A4 */	b .L_81370A9C
.L_813709FC:
/* 813709FC | 4B FC 50 91 */	bl getRegion__Q23ipl6SystemFv
/* 81370A00 | 28 03 00 02 */	cmplwi r3, 0x2
/* 81370A04 | 40 82 00 98 */	bne .L_81370A9C
/* 81370A08 | 4B FC 4F E5 */	bl getLanguage__Q23ipl6SystemFv
/* 81370A0C | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 81370A10 | 3C A0 81 61 */	lis r5, lbl_8160F0F0@ha
/* 81370A14 | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 81370A18 | 1C 63 00 3B */	mulli r3, r3, 0x3b
/* 81370A1C | 38 A5 F0 F0 */	addi r5, r5, lbl_8160F0F0@l
/* 81370A20 | 88 04 00 3C */	lbz r0, 0x3c(r4)
/* 81370A24 | 7C 65 1A 14 */	add r3, r5, r3
/* 81370A28 | 7C 60 1A 14 */	add r3, r0, r3
/* 81370A2C | 88 63 FF 85 */	lbz r3, -0x7b(r3)
/* 81370A30 | 38 03 00 40 */	addi r0, r3, 0x40
/* 81370A34 | 98 04 00 3C */	stb r0, 0x3c(r4)
/* 81370A38 | 48 00 00 64 */	b .L_81370A9C
.L_81370A3C:
/* 81370A3C | 48 08 B4 31 */	bl fn_813FBE6C
/* 81370A40 | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 81370A44 | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 81370A48 | 98 64 00 3C */	stb r3, 0x3c(r4)
/* 81370A4C | 48 00 00 50 */	b .L_81370A9C
.L_81370A50:
/* 81370A50 | 3C 60 81 09 */	lis r3, sWiiData__Q23www10wiisetting@ha
/* 81370A54 | 38 63 A4 B8 */	addi r3, r3, sWiiData__Q23www10wiisetting@l
/* 81370A58 | 7C 03 F0 AE */	lbzx r0, r3, r30
/* 81370A5C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81370A60 | 40 82 00 18 */	bne .L_81370A78
/* 81370A64 | 48 1F 8E E9 */	bl fn_8156994C
/* 81370A68 | 38 7F 02 C4 */	addi r3, r31, 0x2c4
/* 81370A6C | 4C C6 31 82 */	crclr cr1eq
/* 81370A70 | 48 1B DC 31 */	bl OSReport
/* 81370A74 | 48 00 00 28 */	b .L_81370A9C
.L_81370A78:
/* 81370A78 | 28 00 00 45 */	cmplwi r0, 0x45
/* 81370A7C | 41 82 00 20 */	beq .L_81370A9C
/* 81370A80 | 98 0D A9 54 */	stb r0, lbl_81698994@sda21(r0)
/* 81370A84 | 38 60 00 00 */	li r3, 0x0
/* 81370A88 | 38 80 00 00 */	li r4, 0x0
/* 81370A8C | 38 A0 00 00 */	li r5, 0x0
/* 81370A90 | 38 C0 00 00 */	li r6, 0x0
/* 81370A94 | 38 E0 00 00 */	li r7, 0x0
/* 81370A98 | 48 00 00 85 */	bl wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue
.L_81370A9C:
/* 81370A9C | 38 60 00 0B */	li r3, 0xb
/* 81370AA0 | 48 00 00 08 */	b .L_81370AA8
.L_81370AA4:
/* 81370AA4 | 38 60 00 08 */	li r3, 0x8
.L_81370AA8:
/* 81370AA8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81370AAC | 48 28 8A 61 */	bl _restgpr_27
/* 81370AB0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81370AB4 | 7C 08 03 A6 */	mtlr r0
/* 81370AB8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81370ABC | 4E 80 00 20 */	blr
.endfn Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue

# .text:0x10F0 | 0x81370AC0 | size: 0x5C
# www::wiisetting::wiiOSReport(WWWJSPluginObj*, WWWJSPluginObj*, int, WWWJSPluginValue*, WWWJSPluginValue*)
.fn wiiOSReport__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, global
/* 81370AC0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81370AC4 | 7C 08 02 A6 */	mflr r0
/* 81370AC8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81370ACC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81370AD0 | 7C DF 33 78 */	mr r31, r6
/* 81370AD4 | 80 06 00 00 */	lwz r0, 0x0(r6)
/* 81370AD8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81370ADC | 40 82 00 28 */	bne .L_81370B04
/* 81370AE0 | 3C 80 81 64 */	lis r4, lbl_816444A8@ha
/* 81370AE4 | 38 60 00 03 */	li r3, 0x3
/* 81370AE8 | 38 84 44 A8 */	addi r4, r4, lbl_816444A8@l
/* 81370AEC | 4C C6 31 82 */	crclr cr1eq
/* 81370AF0 | 4B FF DD A5 */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
/* 81370AF4 | C8 3F 00 08 */	lfd f1, 0x8(r31)
/* 81370AF8 | 38 6D 82 E5 */	li r3, lbl_81696325@sda21
/* 81370AFC | 4C C6 32 42 */	crset cr1eq
/* 81370B00 | 48 1B DB A1 */	bl OSReport
.L_81370B04:
/* 81370B04 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81370B08 | 38 60 00 11 */	li r3, 0x11
/* 81370B0C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81370B10 | 7C 08 03 A6 */	mtlr r0
/* 81370B14 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81370B18 | 4E 80 00 20 */	blr
.endfn wiiOSReport__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue

# .text:0x114C | 0x81370B1C | size: 0x344
# www::wiisetting::wiiWriteBack(WWWJSPluginObj*, WWWJSPluginObj*, int, WWWJSPluginValue*, WWWJSPluginValue*)
.fn wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, global
/* 81370B1C | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 81370B20 | 7C 08 02 A6 */	mflr r0
/* 81370B24 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 81370B28 | 39 61 00 70 */	addi r11, r1, 0x70
/* 81370B2C | 48 28 89 9D */	bl _savegpr_29
/* 81370B30 | 3F C0 81 09 */	lis r30, sWiiData__Q23www10wiisetting@ha
/* 81370B34 | 88 8D A9 54 */	lbz r4, lbl_81698994@sda21(r0)
/* 81370B38 | 3B DE A4 B8 */	addi r30, r30, sWiiData__Q23www10wiisetting@l
/* 81370B3C | 3F E0 81 64 */	lis r31, lbl_816440A0@ha
/* 81370B40 | 7C DD 33 78 */	mr r29, r6
/* 81370B44 | 7C BE 20 AE */	lbzx r5, r30, r4
/* 81370B48 | 3B FF 40 A0 */	addi r31, r31, lbl_816440A0@l
/* 81370B4C | 88 CD A9 55 */	lbz r6, lbl_81698995@sda21(r0)
/* 81370B50 | 38 7F 04 1F */	addi r3, r31, 0x41f
/* 81370B54 | 4C C6 31 82 */	crclr cr1eq
/* 81370B58 | 48 1B DB 49 */	bl OSReport
/* 81370B5C | 88 8D A9 54 */	lbz r4, lbl_81698994@sda21(r0)
/* 81370B60 | 28 04 00 40 */	cmplwi r4, 0x40
/* 81370B64 | 41 81 02 98 */	bgt .L_81370DFC
/* 81370B68 | 3C 60 81 64 */	lis r3, jumptable_81644528@ha
/* 81370B6C | 54 80 10 3A */	slwi r0, r4, 2
/* 81370B70 | 38 63 45 28 */	addi r3, r3, jumptable_81644528@l
/* 81370B74 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 81370B78 | 7C 69 03 A6 */	mtctr r3
/* 81370B7C | 4E 80 04 20 */	bctr
.L_81370B80:
/* 81370B80 | 88 7E 00 01 */	lbz r3, 0x1(r30)
/* 81370B84 | 48 1F 97 29 */	bl fn_8156A2AC
/* 81370B88 | 48 00 02 74 */	b .L_81370DFC
.L_81370B8C:
/* 81370B8C | 48 1F 9C 95 */	bl fn_8156A820
/* 81370B90 | 88 9E 00 02 */	lbz r4, 0x2(r30)
/* 81370B94 | 54 60 07 FE */	clrlwi r0, r3, 31
/* 81370B98 | 7C 04 00 40 */	cmplw r4, r0
/* 81370B9C | 41 82 02 60 */	beq .L_81370DFC
/* 81370BA0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81370BA4 | 60 60 00 01 */	ori r0, r3, 0x1
/* 81370BA8 | 40 82 00 08 */	bne .L_81370BB0
/* 81370BAC | 54 60 00 3C */	clrrwi r0, r3, 1
.L_81370BB0:
/* 81370BB0 | 7C 03 03 78 */	mr r3, r0
/* 81370BB4 | 48 1F 9C A9 */	bl fn_8156A85C
/* 81370BB8 | 3C 60 81 09 */	lis r3, sWiiData__Q23www10wiisetting@ha
/* 81370BBC | 38 63 A4 B8 */	addi r3, r3, sWiiData__Q23www10wiisetting@l
/* 81370BC0 | 88 03 00 02 */	lbz r0, 0x2(r3)
/* 81370BC4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81370BC8 | 40 82 00 14 */	bne .L_81370BDC
/* 81370BCC | 38 00 00 00 */	li r0, 0x0
/* 81370BD0 | 98 03 00 04 */	stb r0, 0x4(r3)
/* 81370BD4 | 98 03 00 05 */	stb r0, 0x5(r3)
/* 81370BD8 | 48 00 00 10 */	b .L_81370BE8
.L_81370BDC:
/* 81370BDC | 38 00 00 01 */	li r0, 0x1
/* 81370BE0 | 98 03 00 04 */	stb r0, 0x4(r3)
/* 81370BE4 | 98 03 00 05 */	stb r0, 0x5(r3)
.L_81370BE8:
/* 81370BE8 | 3C A0 81 09 */	lis r5, sWiiData__Q23www10wiisetting@ha
/* 81370BEC | 38 61 00 08 */	addi r3, r1, 0x8
/* 81370BF0 | 38 A5 A4 B8 */	addi r5, r5, sWiiData__Q23www10wiisetting@l
/* 81370BF4 | 88 85 00 04 */	lbz r4, 0x4(r5)
/* 81370BF8 | 88 05 00 05 */	lbz r0, 0x5(r5)
/* 81370BFC | 98 81 00 08 */	stb r4, 0x8(r1)
/* 81370C00 | 98 01 00 09 */	stb r0, 0x9(r1)
/* 81370C04 | 48 1F 94 F5 */	bl fn_8156A0F8
/* 81370C08 | 48 08 AD 81 */	bl fn_813FB988
/* 81370C0C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81370C10 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81370C14 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 81370C18 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81370C1C | 41 82 00 0C */	beq .L_81370C28
/* 81370C20 | 38 60 00 00 */	li r3, 0x0
/* 81370C24 | 48 00 00 08 */	b .L_81370C2C
.L_81370C28:
/* 81370C28 | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_81370C2C:
/* 81370C2C | 38 80 00 01 */	li r4, 0x1
/* 81370C30 | 4B FD 18 39 */	bl enableLedNotification__Q33ipl5nwc247ManagerFi
/* 81370C34 | 48 00 01 C8 */	b .L_81370DFC
.L_81370C38:
/* 81370C38 | 88 9E 00 04 */	lbz r4, 0x4(r30)
/* 81370C3C | 38 61 00 0A */	addi r3, r1, 0xa
/* 81370C40 | 88 1E 00 05 */	lbz r0, 0x5(r30)
/* 81370C44 | 98 81 00 0A */	stb r4, 0xa(r1)
/* 81370C48 | 98 01 00 0B */	stb r0, 0xb(r1)
/* 81370C4C | 48 1F 94 AD */	bl fn_8156A0F8
/* 81370C50 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81370C54 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81370C58 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 81370C5C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81370C60 | 41 82 00 0C */	beq .L_81370C6C
/* 81370C64 | 38 60 00 00 */	li r3, 0x0
/* 81370C68 | 48 00 00 08 */	b .L_81370C70
.L_81370C6C:
/* 81370C6C | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_81370C70:
/* 81370C70 | 38 80 00 01 */	li r4, 0x1
/* 81370C74 | 4B FD 17 F5 */	bl enableLedNotification__Q33ipl5nwc247ManagerFi
/* 81370C78 | 48 00 01 84 */	b .L_81370DFC
.L_81370C7C:
/* 81370C7C | 80 6D A9 58 */	lwz r3, lbl_81698998@sda21(r0)
/* 81370C80 | 38 80 00 1C */	li r4, 0x1c
/* 81370C84 | 38 A0 00 00 */	li r5, 0x0
/* 81370C88 | 48 1C 03 F9 */	bl OSSendMessage
/* 81370C8C | 38 7F 04 44 */	addi r3, r31, 0x444
/* 81370C90 | 38 80 00 1C */	li r4, 0x1c
/* 81370C94 | 4C C6 31 82 */	crclr cr1eq
/* 81370C98 | 48 1B DA 09 */	bl OSReport
/* 81370C9C | 48 00 01 60 */	b .L_81370DFC
.L_81370CA0:
/* 81370CA0 | C8 22 82 D0 */	lfd f1, lbl_816946D0@sda21(r0)
/* 81370CA4 | C8 1D 00 08 */	lfd f0, 0x8(r29)
/* 81370CA8 | FC 01 00 00 */	fcmpu cr0, f1, f0
/* 81370CAC | 40 82 00 28 */	bne .L_81370CD4
/* 81370CB0 | 88 0D A9 55 */	lbz r0, lbl_81698995@sda21(r0)
/* 81370CB4 | 20 00 00 10 */	subfic r0, r0, 0x10
/* 81370CB8 | 7C 03 07 74 */	extsb r3, r0
/* 81370CBC | 48 1F 93 C9 */	bl fn_8156A084
/* 81370CC0 | 88 6D A9 55 */	lbz r3, lbl_81698995@sda21(r0)
/* 81370CC4 | 38 00 00 01 */	li r0, 0x1
/* 81370CC8 | 98 1E 00 36 */	stb r0, 0x36(r30)
/* 81370CCC | 98 7E 00 07 */	stb r3, 0x7(r30)
/* 81370CD0 | 48 00 01 2C */	b .L_81370DFC
.L_81370CD4:
/* 81370CD4 | 88 1E 00 07 */	lbz r0, 0x7(r30)
/* 81370CD8 | 20 00 00 10 */	subfic r0, r0, 0x10
/* 81370CDC | 7C 03 07 74 */	extsb r3, r0
/* 81370CE0 | 48 1F 93 A5 */	bl fn_8156A084
/* 81370CE4 | 48 00 01 18 */	b .L_81370DFC
.L_81370CE8:
/* 81370CE8 | 7C 7E 20 AE */	lbzx r3, r30, r4
/* 81370CEC | 48 1F 96 A9 */	bl fn_8156A394
/* 81370CF0 | 48 00 01 0C */	b .L_81370DFC
.L_81370CF4:
/* 81370CF4 | 7C 7E 20 AE */	lbzx r3, r30, r4
/* 81370CF8 | 48 1F 94 ED */	bl fn_8156A1E4
/* 81370CFC | 48 00 01 00 */	b .L_81370DFC
.L_81370D00:
/* 81370D00 | 7C 7E 20 AE */	lbzx r3, r30, r4
/* 81370D04 | 48 1F 95 3D */	bl fn_8156A240
/* 81370D08 | 88 0D A9 54 */	lbz r0, lbl_81698994@sda21(r0)
/* 81370D0C | 7C 7E 00 AE */	lbzx r3, r30, r0
/* 81370D10 | 48 1C DA 39 */	bl fn_8153E748
/* 81370D14 | 48 00 00 E8 */	b .L_81370DFC
.L_81370D18:
/* 81370D18 | 7C 7E 20 AE */	lbzx r3, r30, r4
/* 81370D1C | 48 1F 97 75 */	bl fn_8156A490
/* 81370D20 | 48 00 00 DC */	b .L_81370DFC
.L_81370D24:
/* 81370D24 | 48 1C 4F 5D */	bl OSGetTime
/* 81370D28 | 38 A1 00 34 */	addi r5, r1, 0x34
/* 81370D2C | 48 1C 52 39 */	bl OSTicksToCalendarTime
/* 81370D30 | 88 BE 00 0C */	lbz r5, 0xc(r30)
/* 81370D34 | 38 61 00 34 */	addi r3, r1, 0x34
/* 81370D38 | 88 9E 00 0D */	lbz r4, 0xd(r30)
/* 81370D3C | 88 1E 00 0E */	lbz r0, 0xe(r30)
/* 81370D40 | 38 A5 07 D0 */	addi r5, r5, 0x7d0
/* 81370D44 | 38 84 FF FF */	subi r4, r4, 0x1
/* 81370D48 | 90 A1 00 48 */	stw r5, 0x48(r1)
/* 81370D4C | 90 81 00 44 */	stw r4, 0x44(r1)
/* 81370D50 | 90 01 00 40 */	stw r0, 0x40(r1)
/* 81370D54 | 48 1C 53 D9 */	bl OSCalendarTimeToTicks
/* 81370D58 | 38 A1 00 34 */	addi r5, r1, 0x34
/* 81370D5C | 48 1C 52 09 */	bl OSTicksToCalendarTime
/* 81370D60 | 38 61 00 34 */	addi r3, r1, 0x34
/* 81370D64 | 4B FF 26 F9 */	bl setCalendarTime__Q33ipl7utility8CalendarFP14OSCalendarTime
/* 81370D68 | 48 00 00 94 */	b .L_81370DFC
.L_81370D6C:
/* 81370D6C | 48 1C 4F 15 */	bl OSGetTime
/* 81370D70 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 81370D74 | 48 1C 51 F1 */	bl OSTicksToCalendarTime
/* 81370D78 | 88 BE 00 0F */	lbz r5, 0xf(r30)
/* 81370D7C | 38 00 00 00 */	li r0, 0x0
/* 81370D80 | 88 9E 00 10 */	lbz r4, 0x10(r30)
/* 81370D84 | 38 61 00 0C */	addi r3, r1, 0xc
/* 81370D88 | 90 A1 00 14 */	stw r5, 0x14(r1)
/* 81370D8C | 90 81 00 10 */	stw r4, 0x10(r1)
/* 81370D90 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 81370D94 | 90 01 00 2C */	stw r0, 0x2c(r1)
/* 81370D98 | 90 01 00 30 */	stw r0, 0x30(r1)
/* 81370D9C | 4B FF 26 C1 */	bl setCalendarTime__Q33ipl7utility8CalendarFP14OSCalendarTime
/* 81370DA0 | 48 00 00 5C */	b .L_81370DFC
.L_81370DA4:
/* 81370DA4 | 80 6D A9 58 */	lwz r3, lbl_81698998@sda21(r0)
/* 81370DA8 | 38 80 00 50 */	li r4, 0x50
/* 81370DAC | 38 A0 00 00 */	li r5, 0x0
/* 81370DB0 | 48 1C 02 D1 */	bl OSSendMessage
/* 81370DB4 | 38 7F 04 44 */	addi r3, r31, 0x444
/* 81370DB8 | 38 80 00 50 */	li r4, 0x50
/* 81370DBC | 4C C6 31 82 */	crclr cr1eq
/* 81370DC0 | 48 1B D8 E1 */	bl OSReport
/* 81370DC4 | 48 00 00 38 */	b .L_81370DFC
.L_81370DC8:
/* 81370DC8 | 7C 7E 20 AE */	lbzx r3, r30, r4
/* 81370DCC | 48 08 B1 21 */	bl fn_813FBEEC
/* 81370DD0 | 48 00 00 2C */	b .L_81370DFC
.L_81370DD4:
/* 81370DD4 | 7C 7E 20 AE */	lbzx r3, r30, r4
/* 81370DD8 | 48 08 B1 E1 */	bl fn_813FBFB8
/* 81370DDC | 48 00 00 20 */	b .L_81370DFC
.L_81370DE0:
/* 81370DE0 | 88 7E 00 08 */	lbz r3, 0x8(r30)
/* 81370DE4 | 48 1F 94 01 */	bl fn_8156A1E4
/* 81370DE8 | 88 7E 00 2F */	lbz r3, 0x2f(r30)
/* 81370DEC | 48 1F 92 F9 */	bl fn_8156A0E4
/* 81370DF0 | 48 00 00 0C */	b .L_81370DFC
.L_81370DF4:
/* 81370DF4 | 88 7E 00 3C */	lbz r3, 0x3c(r30)
/* 81370DF8 | 48 08 B1 79 */	bl fn_813FBF70
.L_81370DFC:
/* 81370DFC | 88 0D A9 54 */	lbz r0, lbl_81698994@sda21(r0)
/* 81370E00 | 2C 00 00 0F */	cmpwi r0, 0xf
/* 81370E04 | 41 82 00 38 */	beq .L_81370E3C
/* 81370E08 | 40 80 00 1C */	bge .L_81370E24
/* 81370E0C | 2C 00 00 0C */	cmpwi r0, 0xc
/* 81370E10 | 41 82 00 2C */	beq .L_81370E3C
/* 81370E14 | 40 80 00 18 */	bge .L_81370E2C
/* 81370E18 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 81370E1C | 41 82 00 20 */	beq .L_81370E3C
/* 81370E20 | 48 00 00 0C */	b .L_81370E2C
.L_81370E24:
/* 81370E24 | 2C 00 00 30 */	cmpwi r0, 0x30
/* 81370E28 | 41 82 00 14 */	beq .L_81370E3C
.L_81370E2C:
/* 81370E2C | 48 1F 8B 21 */	bl fn_8156994C
/* 81370E30 | 38 7F 04 58 */	addi r3, r31, 0x458
/* 81370E34 | 4C C6 31 82 */	crclr cr1eq
/* 81370E38 | 48 1B D8 69 */	bl OSReport
.L_81370E3C:
/* 81370E3C | 38 00 00 00 */	li r0, 0x0
/* 81370E40 | 39 61 00 70 */	addi r11, r1, 0x70
/* 81370E44 | 98 0D A9 54 */	stb r0, lbl_81698994@sda21(r0)
/* 81370E48 | 38 60 00 11 */	li r3, 0x11
/* 81370E4C | 48 28 86 C9 */	bl _restgpr_29
/* 81370E50 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 81370E54 | 7C 08 03 A6 */	mtlr r0
/* 81370E58 | 38 21 00 70 */	addi r1, r1, 0x70
/* 81370E5C | 4E 80 00 20 */	blr
.endfn wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue

# .text:0x1490 | 0x81370E60 | size: 0x54
.fn www_wiisetting_81370E60, local
/* 81370E60 | 1C C3 00 30 */	mulli r6, r3, 0x30
/* 81370E64 | 3C A0 81 61 */	lis r5, lbl_8160F060@ha
/* 81370E68 | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 81370E6C | 38 A5 F0 60 */	addi r5, r5, lbl_8160F060@l
/* 81370E70 | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 81370E74 | 38 00 00 30 */	li r0, 0x30
/* 81370E78 | 7C A5 32 14 */	add r5, r5, r6
/* 81370E7C | 88 C4 00 3C */	lbz r6, 0x3c(r4)
/* 81370E80 | 38 E0 00 00 */	li r7, 0x0
/* 81370E84 | 7C 09 03 A6 */	mtctr r0
.L_81370E88:
/* 81370E88 | 54 E0 06 3E */	clrlwi r0, r7, 24
/* 81370E8C | 7C 85 00 AE */	lbzx r4, r5, r0
/* 81370E90 | 38 04 00 08 */	addi r0, r4, 0x8
/* 81370E94 | 7C 06 00 00 */	cmpw r6, r0
/* 81370E98 | 40 82 00 10 */	bne .L_81370EA8
/* 81370E9C | 38 07 00 08 */	addi r0, r7, 0x8
/* 81370EA0 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 81370EA4 | 4E 80 00 20 */	blr
.L_81370EA8:
/* 81370EA8 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 81370EAC | 42 00 FF DC */	bdnz .L_81370E88
/* 81370EB0 | 4E 80 00 20 */	blr
.endfn www_wiisetting_81370E60

# .text:0x14E4 | 0x81370EB4 | size: 0x60
# www::wiisetting::initWiiSetting()
.fn initWiiSetting__Q23www10wiisettingFv, global
/* 81370EB4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81370EB8 | 7C 08 02 A6 */	mflr r0
/* 81370EBC | 38 80 00 00 */	li r4, 0x0
/* 81370EC0 | 38 A0 00 48 */	li r5, 0x48
/* 81370EC4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81370EC8 | 38 00 00 00 */	li r0, 0x0
/* 81370ECC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81370ED0 | 3F E0 81 09 */	lis r31, sWiiData__Q23www10wiisetting@ha
/* 81370ED4 | 38 7F A4 B8 */	addi r3, r31, sWiiData__Q23www10wiisetting@l
/* 81370ED8 | 98 0D A9 54 */	stb r0, lbl_81698994@sda21(r0)
/* 81370EDC | 4B FB F4 59 */	bl memset
/* 81370EE0 | 38 6D A9 4C */	li r3, lbl_8169898C@sda21
/* 81370EE4 | 38 80 00 00 */	li r4, 0x0
/* 81370EE8 | 38 A0 00 08 */	li r5, 0x8
/* 81370EEC | 4B FB F4 49 */	bl memset
/* 81370EF0 | 48 1F 99 31 */	bl fn_8156A820
/* 81370EF4 | 54 60 07 FE */	clrlwi r0, r3, 31
/* 81370EF8 | 38 7F A4 B8 */	addi r3, r31, sWiiData__Q23www10wiisetting@l
/* 81370EFC | 98 03 00 02 */	stb r0, 0x2(r3)
/* 81370F00 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81370F04 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81370F08 | 7C 08 03 A6 */	mtlr r0
/* 81370F0C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81370F10 | 4E 80 00 20 */	blr
.endfn initWiiSetting__Q23www10wiisettingFv

# .text:0x1544 | 0x81370F14 | size: 0x98
.fn www_wiisetting_81370F14, local
/* 81370F14 | 94 21 FE C0 */	stwu r1, -0x140(r1)
/* 81370F18 | 7C 08 02 A6 */	mflr r0
/* 81370F1C | 90 01 01 44 */	stw r0, 0x144(r1)
/* 81370F20 | 39 61 01 40 */	addi r11, r1, 0x140
/* 81370F24 | 48 28 85 A1 */	bl _savegpr_28
/* 81370F28 | 3C 80 81 61 */	lis r4, lbl_8160F254@ha
/* 81370F2C | 38 00 00 24 */	li r0, 0x24
/* 81370F30 | 38 84 F2 54 */	addi r4, r4, lbl_8160F254@l
/* 81370F34 | 7C 7C 1B 78 */	mr r28, r3
/* 81370F38 | 38 A1 00 04 */	addi r5, r1, 0x4
/* 81370F3C | 38 84 FF FC */	subi r4, r4, 0x4
/* 81370F40 | 7C 09 03 A6 */	mtctr r0
.L_81370F44:
/* 81370F44 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 81370F48 | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 81370F4C | 90 65 00 04 */	stw r3, 0x4(r5)
/* 81370F50 | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 81370F54 | 42 00 FF F0 */	bdnz .L_81370F44
/* 81370F58 | 3B C1 00 08 */	addi r30, r1, 0x8
/* 81370F5C | 3B A0 00 00 */	li r29, 0x0
/* 81370F60 | 3B E0 00 00 */	li r31, 0x0
.L_81370F64:
/* 81370F64 | 7C 9E F8 2E */	lwzx r4, r30, r31
/* 81370F68 | 7F 83 E3 78 */	mr r3, r28
/* 81370F6C | 48 29 15 15 */	bl strcmp
/* 81370F70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81370F74 | 40 82 00 0C */	bne .L_81370F80
/* 81370F78 | 38 7D 00 01 */	addi r3, r29, 0x1
/* 81370F7C | 48 00 00 18 */	b .L_81370F94
.L_81370F80:
/* 81370F80 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 81370F84 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 81370F88 | 2C 1D 00 48 */	cmpwi r29, 0x48
/* 81370F8C | 41 80 FF D8 */	blt .L_81370F64
/* 81370F90 | 38 60 FF FF */	li r3, -0x1
.L_81370F94:
/* 81370F94 | 39 61 01 40 */	addi r11, r1, 0x140
/* 81370F98 | 48 28 85 79 */	bl _restgpr_28
/* 81370F9C | 80 01 01 44 */	lwz r0, 0x144(r1)
/* 81370FA0 | 7C 08 03 A6 */	mtlr r0
/* 81370FA4 | 38 21 01 40 */	addi r1, r1, 0x140
/* 81370FA8 | 4E 80 00 20 */	blr
.endfn www_wiisetting_81370F14

# .text:0x15DC | 0x81370FAC | size: 0x1A4
# www::wiisetting::startFunc(unsigned char)
.fn startFunc__Q23www10wiisettingFUc, global
/* 81370FAC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81370FB0 | 7C 08 02 A6 */	mflr r0
/* 81370FB4 | 28 03 00 67 */	cmplwi r3, 0x67
/* 81370FB8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81370FBC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81370FC0 | 7C 7F 1B 78 */	mr r31, r3
/* 81370FC4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81370FC8 | 3F C0 81 64 */	lis r30, lbl_816440A0@ha
/* 81370FCC | 3B DE 40 A0 */	addi r30, r30, lbl_816440A0@l
/* 81370FD0 | 41 81 01 58 */	bgt .L_81371128
/* 81370FD4 | 3C 80 81 64 */	lis r4, jumptable_816448F8@ha
/* 81370FD8 | 54 60 10 3A */	slwi r0, r3, 2
/* 81370FDC | 38 84 48 F8 */	addi r4, r4, jumptable_816448F8@l
/* 81370FE0 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 81370FE4 | 7C 89 03 A6 */	mtctr r4
/* 81370FE8 | 4E 80 04 20 */	bctr
.L_81370FEC:
/* 81370FEC | 80 6D A9 58 */	lwz r3, lbl_81698998@sda21(r0)
/* 81370FF0 | 7F E4 FB 78 */	mr r4, r31
/* 81370FF4 | 38 A0 00 00 */	li r5, 0x0
/* 81370FF8 | 48 1C 00 89 */	bl OSSendMessage
/* 81370FFC | 7F E4 FB 78 */	mr r4, r31
/* 81371000 | 38 7E 04 44 */	addi r3, r30, 0x444
/* 81371004 | 4C C6 31 82 */	crclr cr1eq
/* 81371008 | 48 1B D6 99 */	bl OSReport
/* 8137100C | 48 00 01 1C */	b .L_81371128
.L_81371010:
/* 81371010 | 38 8D A9 4C */	li r4, lbl_8169898C@sda21
/* 81371014 | 98 64 00 04 */	stb r3, 0x4(r4)
/* 81371018 | 48 00 01 10 */	b .L_81371128
.L_8137101C:
/* 8137101C | 38 8D A9 4C */	li r4, lbl_8169898C@sda21
/* 81371020 | 88 04 00 04 */	lbz r0, 0x4(r4)
/* 81371024 | 28 00 00 21 */	cmplwi r0, 0x21
/* 81371028 | 40 82 00 14 */	bne .L_8137103C
/* 8137102C | 38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 81371030 | 4C C6 31 82 */	crclr cr1eq
/* 81371034 | 48 1B D6 6D */	bl OSReport
/* 81371038 | 48 00 00 F0 */	b .L_81371128
.L_8137103C:
/* 8137103C | 98 64 00 04 */	stb r3, 0x4(r4)
/* 81371040 | 48 00 00 E8 */	b .L_81371128
.L_81371044:
/* 81371044 | 38 8D A9 4C */	li r4, lbl_8169898C@sda21
/* 81371048 | 98 64 00 04 */	stb r3, 0x4(r4)
/* 8137104C | 48 00 00 DC */	b .L_81371128
.L_81371050:
/* 81371050 | 38 8D A9 4C */	li r4, lbl_8169898C@sda21
/* 81371054 | 88 04 00 04 */	lbz r0, 0x4(r4)
/* 81371058 | 28 00 00 2B */	cmplwi r0, 0x2b
/* 8137105C | 40 82 00 18 */	bne .L_81371074
/* 81371060 | 38 7E 08 1F */	addi r3, r30, 0x81f
/* 81371064 | 38 9F FF D9 */	subi r4, r31, 0x27
/* 81371068 | 4C C6 31 82 */	crclr cr1eq
/* 8137106C | 48 1B D6 35 */	bl OSReport
/* 81371070 | 48 00 00 B8 */	b .L_81371128
.L_81371074:
/* 81371074 | 98 64 00 04 */	stb r3, 0x4(r4)
/* 81371078 | 48 00 00 B0 */	b .L_81371128
.L_8137107C:
/* 8137107C | 38 8D A9 4C */	li r4, lbl_8169898C@sda21
/* 81371080 | 98 64 00 04 */	stb r3, 0x4(r4)
/* 81371084 | 48 00 00 A4 */	b .L_81371128
.L_81371088:
/* 81371088 | 48 08 A1 71 */	bl fn_813FB1F8
/* 8137108C | 48 00 00 9C */	b .L_81371128
.L_81371090:
/* 81371090 | 38 60 00 00 */	li r3, 0x0
/* 81371094 | 48 08 AD 59 */	bl fn_813FBDEC
/* 81371098 | 7C 7F 1B 78 */	mr r31, r3
/* 8137109C | 38 7E 08 44 */	addi r3, r30, 0x844
/* 813710A0 | 57 E4 06 3E */	clrlwi r4, r31, 24
/* 813710A4 | 4C C6 31 82 */	crclr cr1eq
/* 813710A8 | 48 1B D5 F9 */	bl OSReport
/* 813710AC | 9B ED A9 56 */	stb r31, lbl_81698996@sda21(r0)
/* 813710B0 | 48 00 00 78 */	b .L_81371128
.L_813710B4:
/* 813710B4 | 38 60 00 01 */	li r3, 0x1
/* 813710B8 | 48 08 AD 35 */	bl fn_813FBDEC
/* 813710BC | 7C 7F 1B 78 */	mr r31, r3
/* 813710C0 | 38 7E 08 44 */	addi r3, r30, 0x844
/* 813710C4 | 57 E4 06 3E */	clrlwi r4, r31, 24
/* 813710C8 | 4C C6 31 82 */	crclr cr1eq
/* 813710CC | 48 1B D5 D5 */	bl OSReport
/* 813710D0 | 9B ED A9 56 */	stb r31, lbl_81698996@sda21(r0)
/* 813710D4 | 48 00 00 54 */	b .L_81371128
.L_813710D8:
/* 813710D8 | 38 60 00 02 */	li r3, 0x2
/* 813710DC | 48 08 AD 11 */	bl fn_813FBDEC
/* 813710E0 | 7C 7F 1B 78 */	mr r31, r3
/* 813710E4 | 38 7E 08 44 */	addi r3, r30, 0x844
/* 813710E8 | 57 E4 06 3E */	clrlwi r4, r31, 24
/* 813710EC | 4C C6 31 82 */	crclr cr1eq
/* 813710F0 | 48 1B D5 B1 */	bl OSReport
/* 813710F4 | 9B ED A9 56 */	stb r31, lbl_81698996@sda21(r0)
/* 813710F8 | 48 00 00 30 */	b .L_81371128
.L_813710FC:
/* 813710FC | 48 08 A1 55 */	bl fn_813FB250
/* 81371100 | 48 00 00 28 */	b .L_81371128
.L_81371104:
/* 81371104 | 48 08 A1 71 */	bl fn_813FB274
/* 81371108 | 48 00 00 20 */	b .L_81371128
.L_8137110C:
/* 8137110C | 48 08 AF 79 */	bl fn_813FC084
/* 81371110 | 48 00 00 18 */	b .L_81371128
.L_81371114:
/* 81371114 | 48 08 B0 09 */	bl fn_813FC11C
.L_81371118:
/* 81371118 | 48 08 AA B1 */	bl fn_813FBBC8
/* 8137111C | 3C 80 81 09 */	lis r4, sWiiData__Q23www10wiisetting@ha
/* 81371120 | 38 84 A4 B8 */	addi r4, r4, sWiiData__Q23www10wiisetting@l
/* 81371124 | 98 64 00 40 */	stb r3, 0x40(r4)
.L_81371128:
/* 81371128 | 3C 60 81 09 */	lis r3, sWiiData__Q23www10wiisetting@ha
/* 8137112C | 38 00 00 00 */	li r0, 0x0
/* 81371130 | 38 63 A4 B8 */	addi r3, r3, sWiiData__Q23www10wiisetting@l
/* 81371134 | 98 03 00 1C */	stb r0, 0x1c(r3)
/* 81371138 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8137113C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81371140 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81371144 | 7C 08 03 A6 */	mtlr r0
/* 81371148 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8137114C | 4E 80 00 20 */	blr
.endfn startFunc__Q23www10wiisettingFUc

# .text:0x1780 | 0x81371150 | size: 0xC
# www::wiisetting::getWiiSettingData()
.fn getWiiSettingData__Q23www10wiisettingFv, global
/* 81371150 | 3C 60 81 09 */	lis r3, sWiiData__Q23www10wiisetting@ha
/* 81371154 | 38 63 A4 B8 */	addi r3, r3, sWiiData__Q23www10wiisetting@l
/* 81371158 | 4E 80 00 20 */	blr
.endfn getWiiSettingData__Q23www10wiisettingFv

# .text:0x178C | 0x8137115C | size: 0x8
# www::wiisetting::getWiiSettingFlag()
.fn getWiiSettingFlag__Q23www10wiisettingFv, global
/* 8137115C | 38 6D A9 4C */	li r3, lbl_8169898C@sda21
/* 81371160 | 4E 80 00 20 */	blr
.endfn getWiiSettingFlag__Q23www10wiisettingFv

# .text:0x1794 | 0x81371164 | size: 0x8
# www::wiisetting::setStringBuf(www::wiisetting::SetStringBuf*)
.fn setStringBuf__Q23www10wiisettingFPQ33www10wiisetting12SetStringBuf, global
/* 81371164 | 90 6D A9 5C */	stw r3, pString__Q23www10wiisetting@sda21(r0)
/* 81371168 | 4E 80 00 20 */	blr
.endfn setStringBuf__Q23www10wiisettingFPQ33www10wiisetting12SetStringBuf

# .text:0x179C | 0x8137116C | size: 0x8
# www::wiisetting::setInitSetupFlag(unsigned char)
.fn setInitSetupFlag__Q23www10wiisettingFUc, global
/* 8137116C | 98 6D A9 57 */	stb r3, lbl_81698997@sda21(r0)
/* 81371170 | 4E 80 00 20 */	blr
.endfn setInitSetupFlag__Q23www10wiisettingFUc

# .text:0x17A4 | 0x81371174 | size: 0x40
# www::wiisetting::setFuncResult(unsigned char)
.fn setFuncResult__Q23www10wiisettingFUc, global
/* 81371174 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81371178 | 7C 08 02 A6 */	mflr r0
/* 8137117C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81371180 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81371184 | 7C 7F 1B 78 */	mr r31, r3
/* 81371188 | 3C 60 81 64 */	lis r3, lbl_816448E4@ha
/* 8137118C | 7F E4 FB 78 */	mr r4, r31
/* 81371190 | 38 63 48 E4 */	addi r3, r3, lbl_816448E4@l
/* 81371194 | 4C C6 31 82 */	crclr cr1eq
/* 81371198 | 48 1B D5 09 */	bl OSReport
/* 8137119C | 9B ED A9 56 */	stb r31, lbl_81698996@sda21(r0)
/* 813711A0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813711A4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813711A8 | 7C 08 03 A6 */	mtlr r0
/* 813711AC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813711B0 | 4E 80 00 20 */	blr
.endfn setFuncResult__Q23www10wiisettingFUc

# .text:0x17E4 | 0x813711B4 | size: 0x34
# www::wiisetting::getFuncResult()
.fn getFuncResult__Q23www10wiisettingFv, global
/* 813711B4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813711B8 | 7C 08 02 A6 */	mflr r0
/* 813711BC | 3C 60 81 64 */	lis r3, lbl_81644A98@ha
/* 813711C0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813711C4 | 38 63 4A 98 */	addi r3, r3, lbl_81644A98@l
/* 813711C8 | 88 8D A9 56 */	lbz r4, lbl_81698996@sda21(r0)
/* 813711CC | 4C C6 31 82 */	crclr cr1eq
/* 813711D0 | 48 1B D4 D1 */	bl OSReport
/* 813711D4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813711D8 | 88 6D A9 56 */	lbz r3, lbl_81698996@sda21(r0)
/* 813711DC | 7C 08 03 A6 */	mtlr r0
/* 813711E0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813711E4 | 4E 80 00 20 */	blr
.endfn getFuncResult__Q23www10wiisettingFv

# .text:0x1818 | 0x813711E8 | size: 0x8
# www::wiisetting::setMsgQueue(OSMessageQueue*)
.fn setMsgQueue__Q23www10wiisettingFP14OSMessageQueue, global
/* 813711E8 | 90 6D A9 58 */	stw r3, lbl_81698998@sda21(r0)
/* 813711EC | 4E 80 00 20 */	blr
.endfn setMsgQueue__Q23www10wiisettingFP14OSMessageQueue

# 0x8160F058..0x8160F378 | size: 0x320
.rodata
.balign 8

# .rodata:0x0 | 0x8160F058 | size: 0x8
.obj lbl_8160F058, global
	.4byte 0x00000000
	.4byte 0x3F800000
.endobj lbl_8160F058

# .rodata:0x8 | 0x8160F060 | size: 0x90
.obj lbl_8160F060, global
	.4byte 0x00010203
	.4byte 0x04050607
	.4byte 0x08090A0B
	.4byte 0x0C0D0E0F
	.4byte 0x10111213
	.4byte 0x14151617
	.4byte 0x18191A1B
	.4byte 0x1C1D1E1F
	.4byte 0x202122A6
	.4byte 0x91232425
	.4byte 0x262728A0
	.4byte 0x292A2B2C
	.4byte 0x00011EA6
	.4byte 0x02030405
	.4byte 0x0607080A
	.4byte 0x0C0D0E0F
	.4byte 0xA0112914
	.4byte 0x15161318
	.4byte 0x190B282B
	.4byte 0x091A1B1C
	.4byte 0x1D1F2021
	.4byte 0x22171024
	.4byte 0x23251291
	.4byte 0x26272A2C
	.4byte 0x00011EA6
	.4byte 0x02030405
	.4byte 0x0607080A
	.4byte 0x0C0D0E0F
	.4byte 0x1112A029
	.4byte 0x14151613
	.4byte 0x1718190B
	.4byte 0x282B091A
	.4byte 0x1B1C1D1F
	.4byte 0x20212210
	.4byte 0x23252491
	.4byte 0x26272A2C
.endobj lbl_8160F060

# .rodata:0x98 | 0x8160F0F0 | size: 0x164
.obj lbl_8160F0F0, global
	.4byte 0x00010231
	.4byte 0x03040506
	.4byte 0x35070809
	.4byte 0x0A38370B
	.4byte 0x0C0D190E
	.4byte 0x0F101169
	.4byte 0x12131415
	.4byte 0x16171833
	.4byte 0x1A321B1C
	.4byte 0x1D1E1F34
	.4byte 0x20212223
	.4byte 0x24252627
	.4byte 0x39282936
	.4byte 0x2A2B2C2D
	.4byte 0x2E2F3000
	.4byte 0x31010304
	.4byte 0x05060A0E
	.4byte 0x38370B0C
	.4byte 0x0D0F2E69
	.4byte 0x12111307
	.4byte 0x15141617
	.4byte 0x18331A32
	.4byte 0x191B1C1D
	.4byte 0x1F1E3420
	.4byte 0x02212223
	.4byte 0x242F2B2C
	.4byte 0x25302627
	.4byte 0x39292836
	.4byte 0x2A35092D
	.4byte 0x10082800
	.4byte 0x0E010231
	.4byte 0x03040506
	.4byte 0x08070A38
	.4byte 0x37290B0C
	.4byte 0x0D0F1069
	.4byte 0x12111315
	.4byte 0x14161718
	.4byte 0x19331A32
	.4byte 0x1B1C1D34
	.4byte 0x201F1E21
	.4byte 0x2209232E
	.4byte 0x24252627
	.4byte 0x39362B2C
	.4byte 0x2A352D2F
	.4byte 0x30000E01
	.4byte 0x02310304
	.4byte 0x05063508
	.4byte 0x070A3726
	.4byte 0x27290B0C
	.4byte 0x0D0F1069
	.4byte 0x12111315
	.4byte 0x14161718
	.4byte 0x19331A32
	.4byte 0x1B1C1D34
	.4byte 0x201F1E21
	.4byte 0x222E0923
	.4byte 0x2425392A
	.4byte 0x28362B2C
	.4byte 0x2D382F30
	.4byte 0x00010231
	.4byte 0x03040506
	.4byte 0x3508070A
	.4byte 0x370B0C0D
	.4byte 0x0E380F69
	.4byte 0x12111315
	.4byte 0x14161718
	.4byte 0x19331A32
	.4byte 0x1B1C1D34
	.4byte 0x201F1E21
	.4byte 0x222E0928
	.4byte 0x23242526
	.4byte 0x27392936
	.4byte 0x2B2C2A2D
	.4byte 0x102F3000
	.4byte 0x01310304
	.4byte 0x0506080A
	.4byte 0x380E370B
	.4byte 0x0C0D0F10
	.4byte 0x12116913
	.4byte 0x07151416
	.4byte 0x17181933
	.4byte 0x1A321B1C
	.4byte 0x1D1E1F34
	.4byte 0x20022122
	.4byte 0x23242527
	.4byte 0x26363929
	.4byte 0x2A35092D
	.4byte 0x2E2F3028
	.4byte 0x2B2C0000
.endobj lbl_8160F0F0

# .rodata:0x1FC | 0x8160F254 | size: 0x124
.obj lbl_8160F254, global
	.4byte lbl_81696329
	.4byte lbl_81696331
	.4byte lbl_8164462C
	.4byte lbl_81696337
	.4byte lbl_8169633F
	.4byte lbl_81644635
	.4byte lbl_81696343
	.4byte lbl_8164463E
	.4byte lbl_8164464A
	.4byte lbl_81644656
	.4byte lbl_8169634B
	.4byte lbl_81696351
	.4byte lbl_81696356
	.4byte lbl_8169635C
	.4byte lbl_81696361
	.4byte lbl_81696366
	.4byte lbl_8169636D
	.4byte lbl_81696374
	.4byte lbl_8169637B
	.4byte lbl_81696383
	.4byte lbl_81644660
	.4byte lbl_8164466C
	.4byte lbl_81644679
	.4byte lbl_81644686
	.4byte lbl_81644693
	.4byte lbl_8164469D
	.4byte lbl_816446A8
	.4byte lbl_81696388
	.4byte lbl_816446B1
	.4byte lbl_816446BC
	.4byte lbl_8169638F
	.4byte lbl_81696396
	.4byte lbl_8169639E
	.4byte lbl_816446C9
	.4byte lbl_816446D3
	.4byte lbl_816446DC
	.4byte lbl_816446E6
	.4byte lbl_816446F0
	.4byte lbl_816446FB
	.4byte lbl_8164470D
	.4byte lbl_8164471A
	.4byte lbl_816963A1
	.4byte lbl_81644724
	.4byte lbl_816963A6
	.4byte lbl_816963AA
	.4byte lbl_8164472D
	.4byte lbl_816963AF
	.4byte lbl_81644736
	.4byte lbl_8164473F
	.4byte lbl_816963B3
	.4byte lbl_816963B7
	.4byte lbl_8164474C
	.4byte lbl_816963BD
	.4byte lbl_81644758
	.4byte lbl_816963C3
	.4byte lbl_816963C6
	.4byte lbl_816963CC
	.4byte lbl_816963D3
	.4byte lbl_81644762
	.4byte lbl_816963D9
	.4byte lbl_8164476B
	.4byte lbl_81644777
	.4byte lbl_81644784
	.4byte lbl_8164478F
	.4byte lbl_816963E1
	.4byte lbl_8164479C
	.4byte lbl_816447A6
	.4byte lbl_816963E8
	.4byte lbl_816963ED
	.4byte lbl_816447B2
	.4byte lbl_816447BD
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_8160F254

# 0x816440A0..0x81644AB0 | size: 0xA10
.data
.balign 8

# .data:0x0 | 0x816440A0 | size: 0x38
.obj lbl_816440A0, global
	.4byte 0x5B546963
	.4byte 0x6B54696D
	.4byte 0x65725D00
	.4byte 0x5B576172
	.4byte 0x6E696E67
	.4byte 0x5D005B5B
	.4byte 0x4576656E
	.4byte 0x745D5D00
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_816440A0

# .data:0x38 | 0x816440D8 | size: 0xB
.obj lbl_816440D8, global
	.string "wiiSetting"
.endobj lbl_816440D8

# .data:0x43 | 0x816440E3 | size: 0xF
.obj lbl_816440E3, global
	.string "wiiSetting.dll"
.endobj lbl_816440E3

# .data:0x52 | 0x816440F2 | size: 0x69
.obj lbl_816440F2, global
	.4byte 0x5757575F
	.4byte 0x57696953
	.4byte 0x65747469
	.4byte 0x6E673A20
	.4byte 0x4164644A
	.4byte 0x53506C75
	.4byte 0x67696E28
	.4byte 0x290A0077
	.4byte 0x69695365
	.4byte 0x7474696E
	.4byte 0x67005757
	.4byte 0x575F5452
	.4byte 0x41534954
	.4byte 0x494F4E3A
	.4byte 0x2063616C
	.4byte 0x6C20676C
	.4byte 0x6F62616C
	.4byte 0x47657474
	.4byte 0x65725F28
	.4byte 0x290A0077
	.4byte 0x69695365
	.4byte 0x7474696E
	.4byte 0x673A2047
	.4byte 0x6C6F6261
	.4byte 0x6C476574
	.4byte 0x7465720A
	.byte 0x00
.endobj lbl_816440F2

# .data:0xBB | 0x8164415B | size: 0x51
.obj lbl_8164415B, global
	.4byte 0x77696953
	.4byte 0x65747469
	.4byte 0x6E673A20
	.4byte 0x4F626A65
	.4byte 0x6374436F
	.4byte 0x6E737472
	.4byte 0x7563746F
	.4byte 0x720A0043
	.4byte 0x616C6C4F
	.4byte 0x53526570
	.4byte 0x6F727400
	.4byte 0x57726974
	.4byte 0x65426163
	.4byte 0x6B006D6F
	.4byte 0x64652025
	.4byte 0x64202564
	.4byte 0x0A006C65
	.4byte 0x6E203A3A
	.4byte 0x3A202564
	.4byte 0x0A000000
	.byte 0x00
.endobj lbl_8164415B

# .data:0x10C | 0x816441AC | size: 0x120
.obj jumptable_816441AC, local
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370450
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_813700D8
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_813700F0
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370108
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_8137011C
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_8137011C
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370140
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370450
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370154
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370168
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_8137017C
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370450
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370190
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_813701A8
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_813701C0
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_813701D4
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_813701E8
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370450
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370450
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370450
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370450
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_813701FC
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370210
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370228
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370240
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370258
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370450
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370450
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370450
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_8137026C
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370288
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_813702A4
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_813702B8
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370450
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_813702CC
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_813702D4
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_813702DC
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_813702F0
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370450
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370450
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370304
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370318
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_8137032C
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370340
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370378
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370450
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_8137035C
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_8137038C
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370450
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_813703A0
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_813703B4
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_813703C8
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_813703DC
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370450
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370450
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370450
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370450
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370450
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370450
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_813703F0
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370450
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370450
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370404
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370418
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370450
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370450
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370450
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_8137042C
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370440
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370450
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370450
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370450
.endobj jumptable_816441AC

# .data:0x22C | 0x816442CC | size: 0x64
.obj jumptable_816442CC, local
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370078
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_8136FE48
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_8136FF40
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_8136FE54
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_8136FE64
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_8136FE74
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_8136FE84
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_8136FE94
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_8136FEA4
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_8136FE30
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_8136FEB4
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_8136FEC4
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_8136FED4
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_8136FEE4
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_8136FEF4
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370078
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370078
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370078
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_8136FF04
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370078
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_8136FF14
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_8136FE3C
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_8137000C
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_8136FF20
	.rel Getter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_8136FF30
.endobj jumptable_816442CC

# .data:0x290 | 0x81644330 | size: 0x60
.obj gap_08_81644330_data, global
.hidden gap_08_81644330_data
	.4byte 0x77696953
	.4byte 0x65747469
	.4byte 0x6E673A20
	.4byte 0x53657474
	.4byte 0x65725F20
	.4byte 0x6E616D65
	.4byte 0x3A257320
	.4byte 0x74797065
	.4byte 0x3A25640A
	.4byte 0x0069643A
	.4byte 0x25642064
	.4byte 0x6174613A
	.4byte 0x25640A00
	.4byte 0x21212121
	.4byte 0x21212121
	.4byte 0x21212121
	.4byte 0x21212121
	.4byte 0x21212153
	.4byte 0x4320464C
	.4byte 0x55534821
	.4byte 0x21212121
	.4byte 0x21212121
	.4byte 0x21212121
	.4byte 0x210A0000
.endobj gap_08_81644330_data

# .data:0x2F0 | 0x81644390 | size: 0x118
.obj jumptable_81644390, local
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370798
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370784
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_813707B0
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370808
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_8137081C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370824
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370838
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370854
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_8137087C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370890
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_813708A4
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_813708B8
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370870
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_813708CC
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_813708E0
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370928
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_8137093C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_813708F8
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_8137091C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370948
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A50
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370950
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A3C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
	.rel Setter___Q23www10wiisettingFP14WWWJSPluginObjPCcP16WWWJSPluginValue, .L_81370A9C
.endobj jumptable_81644390

# .data:0x408 | 0x816444A8 | size: 0x80
.obj lbl_816444A8, global
	.4byte 0x7769694F
	.4byte 0x53526570
	.4byte 0x6F727420
	.4byte 0x53756363
	.4byte 0x65737321
	.4byte 0x210A0057
	.4byte 0x72697465
	.4byte 0x4261636B
	.4byte 0x2069643A
	.4byte 0x25642064
	.4byte 0x6174613A
	.4byte 0x25642073
	.4byte 0x61766564
	.4byte 0x6174613A
	.4byte 0x25640A00
	.4byte 0x53656E64
	.4byte 0x2046756E
	.4byte 0x63204D73
	.4byte 0x67513A20
	.4byte 0x25640A00
	.4byte 0x21212121
	.4byte 0x21212121
	.4byte 0x21212121
	.4byte 0x21212121
	.4byte 0x21212153
	.4byte 0x4320464C
	.4byte 0x55534821
	.4byte 0x21212121
	.4byte 0x21212121
	.4byte 0x21212121
	.4byte 0x21212121
	.4byte 0x0A000000
.endobj lbl_816444A8

# .data:0x488 | 0x81644528 | size: 0x104
.obj jumptable_81644528, local
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370B80
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370B8C
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370C38
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370C38
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370C7C
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370CA0
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370CF4
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370D00
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370D18
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370CE8
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370D24
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370D6C
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DC8
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DE0
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DA4
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DF4
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DFC
	.rel wiiWriteBack__Q23www10wiisettingFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, .L_81370DD4
.endobj jumptable_81644528

# .data:0x58C | 0x8164462C | size: 0x9
.obj lbl_8164462C, global
	.string "internet"
.endobj lbl_8164462C

# .data:0x595 | 0x81644635 | size: 0x9
.obj lbl_81644635, global
	.string "dis_wide"
.endobj lbl_81644635

# .data:0x59E | 0x8164463E | size: 0xC
.obj lbl_8164463E, global
	.string "progressive"
.endobj lbl_8164463E

# .data:0x5AA | 0x8164464A | size: 0xC
.obj lbl_8164464A, global
	.string "screensaver"
.endobj lbl_8164464A

# .data:0x5B6 | 0x81644656 | size: 0xA
.obj lbl_81644656, global
	.string "sensorBar"
.endobj lbl_81644656

# .data:0x5C0 | 0x81644660 | size: 0xC
.obj lbl_81644660, global
	.string "connectType"
.endobj lbl_81644660

# .data:0x5CC | 0x8164466C | size: 0xD
.obj lbl_8164466C, global
	.string "connectType1"
.endobj lbl_8164466C

# .data:0x5D9 | 0x81644679 | size: 0xD
.obj lbl_81644679, global
	.string "connectType2"
.endobj lbl_81644679

# .data:0x5E6 | 0x81644686 | size: 0xD
.obj lbl_81644686, global
	.string "connectType3"
.endobj lbl_81644686

# .data:0x5F3 | 0x81644693 | size: 0xA
.obj lbl_81644693, global
	.string "profileID"
.endobj lbl_81644693

# .data:0x5FD | 0x8164469D | size: 0xB
.obj lbl_8164469D, global
	.string "selectWire"
.endobj lbl_8164469D

# .data:0x608 | 0x816446A8 | size: 0x9
.obj lbl_816446A8, global
	.string "wifiType"
.endobj lbl_816446A8

# .data:0x611 | 0x816446B1 | size: 0xB
.obj lbl_816446B1, global
	.string "funcResult"
.endobj lbl_816446B1

# .data:0x61C | 0x816446BC | size: 0xD
.obj lbl_816446BC, global
	.string "selectSecKey"
.endobj lbl_816446BC

# .data:0x629 | 0x816446C9 | size: 0xA
.obj lbl_816446C9, global
	.string "backupNCD"
.endobj lbl_816446C9

# .data:0x633 | 0x816446D3 | size: 0x9
.obj lbl_816446D3, global
	.string "resetNCD"
.endobj lbl_816446D3

# .data:0x63C | 0x816446DC | size: 0xA
.obj lbl_816446DC, global
	.string "autoProxy"
.endobj lbl_816446DC

# .data:0x646 | 0x816446E6 | size: 0xA
.obj lbl_816446E6, global
	.string "autoBasic"
.endobj lbl_816446E6

# .data:0x650 | 0x816446F0 | size: 0xB
.obj lbl_816446F0, global
	.string "backSecKey"
.endobj lbl_816446F0

# .data:0x65B | 0x816446FB | size: 0x12
.obj lbl_816446FB, global
	.string "changeConnectType"
.endobj lbl_816446FB

# .data:0x66D | 0x8164470D | size: 0xD
.obj lbl_8164470D, global
	.string "changeEnable"
.endobj lbl_8164470D

# .data:0x67A | 0x8164471A | size: 0xA
.obj lbl_8164471A, global
	.string "pare_flag"
.endobj lbl_8164471A

# .data:0x684 | 0x81644724 | size: 0x9
.obj lbl_81644724, global
	.string "secQSave"
.endobj lbl_81644724

# .data:0x68D | 0x8164472D | size: 0x9
.obj lbl_8164472D, global
	.string "rateSave"
.endobj lbl_8164472D

# .data:0x696 | 0x81644736 | size: 0x9
.obj lbl_81644736, global
	.string "language"
.endobj lbl_81644736

# .data:0x69F | 0x8164473F | size: 0xD
.obj lbl_8164473F, global
	.string "languageSave"
.endobj lbl_8164473F

# .data:0x6AC | 0x8164474C | size: 0xC
.obj lbl_8164474C, global
	.string "connectTest"
.endobj lbl_8164474C

# .data:0x6B8 | 0x81644758 | size: 0xA
.obj lbl_81644758, global
	.string "setstring"
.endobj lbl_81644758

# .data:0x6C2 | 0x81644762 | size: 0x9
.obj lbl_81644762, global
	.string "initFlag"
.endobj lbl_81644762

# .data:0x6CB | 0x8164476B | size: 0xC
.obj lbl_8164476B, global
	.string "countrySave"
.endobj lbl_8164476B

# .data:0x6D7 | 0x81644777 | size: 0xD
.obj lbl_81644777, global
	.string "macAvailable"
.endobj lbl_81644777

# .data:0x6E4 | 0x81644784 | size: 0xB
.obj lbl_81644784, global
	.string "updateType"
.endobj lbl_81644784

# .data:0x6EF | 0x8164478F | size: 0xD
.obj lbl_8164478F, global
	.string "restrictions"
.endobj lbl_8164478F

# .data:0x6FC | 0x8164479C | size: 0xA
.obj lbl_8164479C, global
	.string "subPageID"
.endobj lbl_8164479C

# .data:0x706 | 0x816447A6 | size: 0xC
.obj lbl_816447A6, global
	.string "productArea"
.endobj lbl_816447A6

# .data:0x712 | 0x816447B2 | size: 0xB
.obj lbl_816447B2, global
	.string "tvrc_maker"
.endobj lbl_816447B2

# .data:0x71D | 0x816447BD | size: 0xA
.obj lbl_816447BD, global
	.string "tvrc_type"
.endobj lbl_816447BD

# .data:0x727 | 0x816447C7 | size: 0x9
.obj lbl_816447C7, global
	.string "nickname"
.endobj lbl_816447C7

# .data:0x730 | 0x816447D0 | size: 0xC
.obj lbl_816447D0, global
	.string "securityKey"
.endobj lbl_816447D0

# .data:0x73C | 0x816447DC | size: 0xA
.obj lbl_816447DC, global
	.string "proxyPort"
.endobj lbl_816447DC

# .data:0x746 | 0x816447E6 | size: 0xA
.obj lbl_816447E6, global
	.string "basicName"
.endobj lbl_816447E6

# .data:0x750 | 0x816447F0 | size: 0xA
.obj lbl_816447F0, global
	.string "basicPass"
.endobj lbl_816447F0

# .data:0x75A | 0x816447FA | size: 0xA
.obj lbl_816447FA, global
	.string "pare_pass"
.endobj lbl_816447FA

# .data:0x764 | 0x81644804 | size: 0xC
.obj lbl_81644804, global
	.string "pare_repass"
.endobj lbl_81644804

# .data:0x770 | 0x81644810 | size: 0xF
.obj lbl_81644810, global
	.string "pare_judgepass"
.endobj lbl_81644810

# .data:0x77F | 0x8164481F | size: 0x9
.obj lbl_8164481F, global
	.string "dummySec"
.endobj lbl_8164481F

# .data:0x788 | 0x81644828 | size: 0xC
.obj lbl_81644828, global
	.4byte 0x64697265
	.4byte 0x63745572
	.4byte 0x6C000000
.endobj lbl_81644828

# .data:0x794 | 0x81644834 | size: 0xB0
.obj lbl_81644834, global
	.4byte lbl_816447C7
	.4byte lbl_816447D0
	.4byte lbl_816963F2
	.4byte lbl_816963F7
	.4byte lbl_816963FE
	.4byte lbl_81696405
	.4byte lbl_8169640D
	.4byte lbl_81696412
	.4byte lbl_81696417
	.4byte lbl_8169641F
	.4byte lbl_816447DC
	.4byte lbl_816447E6
	.4byte lbl_816447F0
	.4byte lbl_81696425
	.4byte lbl_816447FA
	.4byte lbl_81644804
	.4byte lbl_81644810
	.4byte lbl_81696429
	.4byte lbl_8169642E
	.4byte lbl_81696435
	.4byte lbl_8169643C
	.4byte lbl_8164481F
	.4byte lbl_81696443
	.4byte lbl_81644828
	.4byte 0x00000000
	.4byte 0x654A5346
	.4byte 0x756E635F
	.4byte 0x414F5353
	.4byte 0x436F6E6E
	.4byte 0x65637420
	.4byte 0x3A207265
	.4byte 0x71756573
	.4byte 0x74206967
	.4byte 0x6E6F7265
	.4byte 0x642E0065
	.4byte 0x4A534675
	.4byte 0x6E635F52
	.4byte 0x616B7553
	.4byte 0x65742564
	.4byte 0x203A2072
	.4byte 0x65717565
	.4byte 0x73742069
	.4byte 0x676E6F72
	.4byte 0x65642E00
.endobj lbl_81644834

# .data:0x844 | 0x816448E4 | size: 0x14
.obj lbl_816448E4, global
	.4byte 0x73657446
	.4byte 0x756E6352
	.4byte 0x6573756C
	.4byte 0x743A2564
	.4byte 0x0A000000
.endobj lbl_816448E4

# .data:0x858 | 0x816448F8 | size: 0x1A0
.obj jumptable_816448F8, local
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371010
	.rel startFunc__Q23www10wiisettingFUc, .L_81371010
	.rel startFunc__Q23www10wiisettingFUc, .L_81371010
	.rel startFunc__Q23www10wiisettingFUc, .L_81371010
	.rel startFunc__Q23www10wiisettingFUc, .L_81371010
	.rel startFunc__Q23www10wiisettingFUc, .L_81371010
	.rel startFunc__Q23www10wiisettingFUc, .L_81371010
	.rel startFunc__Q23www10wiisettingFUc, .L_81371010
	.rel startFunc__Q23www10wiisettingFUc, .L_81371010
	.rel startFunc__Q23www10wiisettingFUc, .L_81371088
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371090
	.rel startFunc__Q23www10wiisettingFUc, .L_813710B4
	.rel startFunc__Q23www10wiisettingFUc, .L_813710D8
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_813710FC
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371104
	.rel startFunc__Q23www10wiisettingFUc, .L_8137110C
	.rel startFunc__Q23www10wiisettingFUc, .L_81371114
	.rel startFunc__Q23www10wiisettingFUc, .L_81370FEC
	.rel startFunc__Q23www10wiisettingFUc, .L_81371010
	.rel startFunc__Q23www10wiisettingFUc, .L_81371118
	.rel startFunc__Q23www10wiisettingFUc, .L_81370FEC
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81370FEC
	.rel startFunc__Q23www10wiisettingFUc, .L_81371010
	.rel startFunc__Q23www10wiisettingFUc, .L_81371010
	.rel startFunc__Q23www10wiisettingFUc, .L_8137101C
	.rel startFunc__Q23www10wiisettingFUc, .L_81371044
	.rel startFunc__Q23www10wiisettingFUc, .L_81371044
	.rel startFunc__Q23www10wiisettingFUc, .L_81371010
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371050
	.rel startFunc__Q23www10wiisettingFUc, .L_81371050
	.rel startFunc__Q23www10wiisettingFUc, .L_81371050
	.rel startFunc__Q23www10wiisettingFUc, .L_8137107C
	.rel startFunc__Q23www10wiisettingFUc, .L_8137107C
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81370FEC
	.rel startFunc__Q23www10wiisettingFUc, .L_81370FEC
	.rel startFunc__Q23www10wiisettingFUc, .L_81370FEC
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81370FEC
	.rel startFunc__Q23www10wiisettingFUc, .L_81370FEC
	.rel startFunc__Q23www10wiisettingFUc, .L_81370FEC
	.rel startFunc__Q23www10wiisettingFUc, .L_81371010
	.rel startFunc__Q23www10wiisettingFUc, .L_81371010
	.rel startFunc__Q23www10wiisettingFUc, .L_81371010
	.rel startFunc__Q23www10wiisettingFUc, .L_81371010
	.rel startFunc__Q23www10wiisettingFUc, .L_81371010
	.rel startFunc__Q23www10wiisettingFUc, .L_81371010
	.rel startFunc__Q23www10wiisettingFUc, .L_81370FEC
	.rel startFunc__Q23www10wiisettingFUc, .L_81370FEC
	.rel startFunc__Q23www10wiisettingFUc, .L_81370FEC
	.rel startFunc__Q23www10wiisettingFUc, .L_81370FEC
	.rel startFunc__Q23www10wiisettingFUc, .L_81370FEC
	.rel startFunc__Q23www10wiisettingFUc, .L_81370FEC
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81371128
	.rel startFunc__Q23www10wiisettingFUc, .L_81370FEC
	.rel startFunc__Q23www10wiisettingFUc, .L_81370FEC
	.rel startFunc__Q23www10wiisettingFUc, .L_81370FEC
	.rel startFunc__Q23www10wiisettingFUc, .L_81370FEC
.endobj jumptable_816448F8

# .data:0x9F8 | 0x81644A98 | size: 0x18
.obj lbl_81644A98, global
	.4byte 0x67657446
	.4byte 0x756E6352
	.4byte 0x6573756C
	.4byte 0x743A2564
	.4byte 0x0A000000
	.4byte 0x00000000
.endobj lbl_81644A98

# 0x816946B8..0x816946D8 | size: 0x20
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x816946B8 | size: 0x8
.obj lbl_816946B8, global
	.double 4503599627370496
.endobj lbl_816946B8

# .sdata2:0x8 | 0x816946C0 | size: 0x8
.obj lbl_816946C0, global
	.double 4503601774854144
.endobj lbl_816946C0

# .sdata2:0x10 | 0x816946C8 | size: 0x8
.obj lbl_816946C8, global
	.double 2
.endobj lbl_816946C8

# .sdata2:0x18 | 0x816946D0 | size: 0x8
.obj lbl_816946D0, global
	.double 0
.endobj lbl_816946D0

# 0x81696310..0x81696450 | size: 0x140
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696310 | size: 0x4
.obj lbl_81696310, global
	.4byte 0x00000001
.endobj lbl_81696310

# .sdata:0x4 | 0x81696314 | size: 0x8
.obj lbl_81696314, global
	.4byte lbl_816440D8
	.4byte 0x00000000
.endobj lbl_81696314

# .sdata:0xC | 0x8169631C | size: 0x1
.obj lbl_8169631C, global
	.byte 0x00
.endobj lbl_8169631C

# .sdata:0xD | 0x8169631D | size: 0x8
.obj lbl_8169631D, global
	.string "message"
.endobj lbl_8169631D

# .sdata:0x15 | 0x81696325 | size: 0x4
.obj lbl_81696325, global
	.string "%d\n"
.endobj lbl_81696325

# .sdata:0x19 | 0x81696329 | size: 0x8
.obj lbl_81696329, global
	.string "soundId"
.endobj lbl_81696329

# .sdata:0x21 | 0x81696331 | size: 0x6
.obj lbl_81696331, global
	.string "nwc24"
.endobj lbl_81696331

# .sdata:0x27 | 0x81696337 | size: 0x8
.obj lbl_81696337, global
	.string "standby"
.endobj lbl_81696337

# .sdata:0x2F | 0x8169633F | size: 0x4
.obj lbl_8169633F, global
	.string "LED"
.endobj lbl_8169633F

# .sdata:0x33 | 0x81696343 | size: 0x8
.obj lbl_81696343, global
	.string "dis_pos"
.endobj lbl_81696343

# .sdata:0x3B | 0x8169634B | size: 0x6
.obj lbl_8169634B, global
	.string "light"
.endobj lbl_8169634B

# .sdata:0x41 | 0x81696351 | size: 0x5
.obj lbl_81696351, global
	.string "year"
.endobj lbl_81696351

# .sdata:0x46 | 0x81696356 | size: 0x6
.obj lbl_81696356, global
	.string "month"
.endobj lbl_81696356

# .sdata:0x4C | 0x8169635C | size: 0x5
.obj lbl_8169635C, global
	.string "date"
.endobj lbl_8169635C

# .sdata:0x51 | 0x81696361 | size: 0x5
.obj lbl_81696361, global
	.string "hour"
.endobj lbl_81696361

# .sdata:0x56 | 0x81696366 | size: 0x7
.obj lbl_81696366, global
	.string "minute"
.endobj lbl_81696366

# .sdata:0x5D | 0x8169636D | size: 0x7
.obj lbl_8169636D, global
	.string "formID"
.endobj lbl_8169636D

# .sdata:0x64 | 0x81696374 | size: 0x7
.obj lbl_81696374, global
	.string "pageID"
.endobj lbl_81696374

# .sdata:0x6B | 0x8169637B | size: 0x8
.obj lbl_8169637B, global
	.string "message"
.endobj lbl_8169637B

# .sdata:0x73 | 0x81696383 | size: 0x5
.obj lbl_81696383, global
	.string "type"
.endobj lbl_81696383

# .sdata:0x78 | 0x81696388 | size: 0x7
.obj lbl_81696388, global
	.string "funcID"
.endobj lbl_81696388

# .sdata:0x7F | 0x8169638F | size: 0x7
.obj lbl_8169638F, global
	.string "autoIP"
.endobj lbl_8169638F

# .sdata:0x86 | 0x81696396 | size: 0x8
.obj lbl_81696396, global
	.string "autoDNS"
.endobj lbl_81696396

# .sdata:0x8E | 0x8169639E | size: 0x3
.obj lbl_8169639E, global
	.string "ip"
.endobj lbl_8169639E

# .sdata:0x91 | 0x816963A1 | size: 0x5
.obj lbl_816963A1, global
	.string "secQ"
.endobj lbl_816963A1

# .sdata:0x96 | 0x816963A6 | size: 0x4
.obj lbl_816963A6, global
	.string "ogn"
.endobj lbl_816963A6

# .sdata:0x9A | 0x816963AA | size: 0x5
.obj lbl_816963AA, global
	.string "rate"
.endobj lbl_816963AA

# .sdata:0x9F | 0x816963AF | size: 0x4
.obj lbl_816963AF, global
	.string "pal"
.endobj lbl_816963AF

# .sdata:0xA3 | 0x816963B3 | size: 0x4
.obj lbl_816963B3, global
	.string "dtv"
.endobj lbl_816963B3

# .sdata:0xA7 | 0x816963B7 | size: 0x6
.obj lbl_816963B7, global
	.string "useID"
.endobj lbl_816963B7

# .sdata:0xAD | 0x816963BD | size: 0x6
.obj lbl_816963BD, global
	.string "error"
.endobj lbl_816963BD

# .sdata:0xB3 | 0x816963C3 | size: 0x3
.obj lbl_816963C3, global
	.string "se"
.endobj lbl_816963C3

# .sdata:0xB6 | 0x816963C6 | size: 0x6
.obj lbl_816963C6, global
	.string "excse"
.endobj lbl_816963C6

# .sdata:0xBC | 0x816963CC | size: 0x7
.obj lbl_816963CC, global
	.string "finish"
.endobj lbl_816963CC

# .sdata:0xC3 | 0x816963D3 | size: 0x6
.obj lbl_816963D3, global
	.string "flush"
.endobj lbl_816963D3

# .sdata:0xC9 | 0x816963D9 | size: 0x8
.obj lbl_816963D9, global
	.string "country"
.endobj lbl_816963D9

# .sdata:0xD1 | 0x816963E1 | size: 0x7
.obj lbl_816963E1, global
	.string "assert"
.endobj lbl_816963E1

# .sdata:0xD8 | 0x816963E8 | size: 0x5
.obj lbl_816963E8, global
	.string "eula"
.endobj lbl_816963E8

# .sdata:0xDD | 0x816963ED | size: 0x5
.obj lbl_816963ED, global
	.string "tvrc"
.endobj lbl_816963ED

# .sdata:0xE2 | 0x816963F2 | size: 0x5
.obj lbl_816963F2, global
	.string "ssID"
.endobj lbl_816963F2

# .sdata:0xE7 | 0x816963F7 | size: 0x7
.obj lbl_816963F7, global
	.string "ipAddr"
.endobj lbl_816963F7

# .sdata:0xEE | 0x816963FE | size: 0x7
.obj lbl_816963FE, global
	.string "subnet"
.endobj lbl_816963FE

# .sdata:0xF5 | 0x81696405 | size: 0x8
.obj lbl_81696405, global
	.string "gateway"
.endobj lbl_81696405

# .sdata:0xFD | 0x8169640D | size: 0x5
.obj lbl_8169640D, global
	.string "dns1"
.endobj lbl_8169640D

# .sdata:0x102 | 0x81696412 | size: 0x5
.obj lbl_81696412, global
	.string "dns2"
.endobj lbl_81696412

# .sdata:0x107 | 0x81696417 | size: 0x8
.obj lbl_81696417, global
	.string "macAddr"
.endobj lbl_81696417

# .sdata:0x10F | 0x8169641F | size: 0x6
.obj lbl_8169641F, global
	.string "proxy"
.endobj lbl_8169641F

# .sdata:0x115 | 0x81696425 | size: 0x4
.obj lbl_81696425, global
	.string "mtu"
.endobj lbl_81696425

# .sdata:0x119 | 0x81696429 | size: 0x5
.obj lbl_81696429, global
	.string "secA"
.endobj lbl_81696429

# .sdata:0x11E | 0x8169642E | size: 0x7
.obj lbl_8169642E, global
	.string "resecA"
.endobj lbl_8169642E

# .sdata:0x125 | 0x81696435 | size: 0x7
.obj lbl_81696435, global
	.string "master"
.endobj lbl_81696435

# .sdata:0x12C | 0x8169643C | size: 0x7
.obj lbl_8169643C, global
	.string "lanMac"
.endobj lbl_8169643C

# .sdata:0x133 | 0x81696443 | size: 0xD
.obj lbl_81696443, global
	.4byte 0x76657273
	.4byte 0x696F6E00
	.4byte 0x00000000
	.byte 0x00
.endobj lbl_81696443

# 0x81698980..0x816989A8 | size: 0x28
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698980 | size: 0x4
.obj gDpdWaitFrm, global
	.skip 0x4
.endobj gDpdWaitFrm

# .sbss:0x4 | 0x81698984 | size: 0x4
# www::wiisetting::wiiFlag
.obj wiiFlag__Q23www10wiisetting, global
	.skip 0x4
.endobj wiiFlag__Q23www10wiisetting

# .sbss:0x8 | 0x81698988 | size: 0x4
.obj lbl_81698988, global
	.skip 0x4
.endobj lbl_81698988

# .sbss:0xC | 0x8169898C | size: 0x8
.obj lbl_8169898C, global
	.skip 0x8
.endobj lbl_8169898C

# .sbss:0x14 | 0x81698994 | size: 0x1
.obj lbl_81698994, global
	.skip 0x1
.endobj lbl_81698994

# .sbss:0x15 | 0x81698995 | size: 0x1
.obj lbl_81698995, global
	.skip 0x1
.endobj lbl_81698995

# .sbss:0x16 | 0x81698996 | size: 0x1
.obj lbl_81698996, global
	.skip 0x1
.endobj lbl_81698996

# .sbss:0x17 | 0x81698997 | size: 0x1
.obj lbl_81698997, global
	.skip 0x1
.endobj lbl_81698997

# .sbss:0x18 | 0x81698998 | size: 0x4
.obj lbl_81698998, global
	.skip 0x4
.endobj lbl_81698998

# .sbss:0x1C | 0x8169899C | size: 0x4
# www::wiisetting::pString
.obj pString__Q23www10wiisetting, global
	.skip 0x4
.endobj pString__Q23www10wiisetting

# .sbss:0x20 | 0x816989A0 | size: 0x8
# www::wiisetting::opera_callbacks
.obj opera_callbacks__Q23www10wiisetting, global
	.skip 0x8
.endobj opera_callbacks__Q23www10wiisetting
