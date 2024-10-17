.include "macros.inc"
.file "MyTiManager.cpp"

# 0x810C87F0..0x810C8838 | size: 0x48
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810C87F0 | size: 0x24
.obj lbl_810C87F0, global
	.skip 0x24
.endobj lbl_810C87F0

# .bss:0x24 | 0x810C8814 | size: 0xC
# textinput::extend::memo::sAppearMemoState
.obj sAppearMemoState__Q39textinput6extend4memo, global
	.skip 0xC
.endobj sAppearMemoState__Q39textinput6extend4memo

# .bss:0x30 | 0x810C8820 | size: 0xC
.obj lbl_810C8820, global
	.skip 0xC
.endobj lbl_810C8820

# .bss:0x3C | 0x810C882C | size: 0xC
# textinput::extend::memo::sDisappearMemoState
.obj sDisappearMemoState__Q39textinput6extend4memo, global
	.skip 0xC
.endobj sDisappearMemoState__Q39textinput6extend4memo

# 0x8143BF88..0x81440E6C | size: 0x4EE4
.text
.balign 4

# .text:0x0 | 0x8143BF88 | size: 0x270
# textinput::extend::memo::Manager::~Manager()
.fn __dt__Q49textinput6extend4memo7ManagerFv, global
/* 8143BF88 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143BF8C | 7C 08 02 A6 */	mflr r0
/* 8143BF90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143BF94 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143BF98 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143BF9C | 7C 9F 23 78 */	mr r31, r4
/* 8143BFA0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8143BFA4 | 7C 7E 1B 78 */	mr r30, r3
/* 8143BFA8 | 41 82 02 34 */	beq .L_8143C1DC
/* 8143BFAC | 80 03 00 5C */	lwz r0, 0x5c(r3)
/* 8143BFB0 | 3C 80 81 67 */	lis r4, __vt__Q49textinput6extend4memo7Manager@ha
/* 8143BFB4 | 38 84 80 A8 */	addi r4, r4, __vt__Q49textinput6extend4memo7Manager@l
/* 8143BFB8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8143BFBC | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8143BFC0 | 41 82 00 28 */	beq .L_8143BFE8
/* 8143BFC4 | 7C 03 03 78 */	mr r3, r0
/* 8143BFC8 | 38 80 FF FF */	li r4, -0x1
/* 8143BFCC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143BFD0 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8143BFD4 | 7D 89 03 A6 */	mtctr r12
/* 8143BFD8 | 4E 80 04 21 */	bctrl
/* 8143BFDC | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 8143BFE0 | 80 9E 00 5C */	lwz r4, 0x5c(r30)
/* 8143BFE4 | 48 11 F6 95 */	bl fn_8155B678
.L_8143BFE8:
/* 8143BFE8 | 80 7E 00 60 */	lwz r3, 0x60(r30)
/* 8143BFEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143BFF0 | 41 82 00 24 */	beq .L_8143C014
/* 8143BFF4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143BFF8 | 38 80 FF FF */	li r4, -0x1
/* 8143BFFC | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8143C000 | 7D 89 03 A6 */	mtctr r12
/* 8143C004 | 4E 80 04 21 */	bctrl
/* 8143C008 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 8143C00C | 80 9E 00 60 */	lwz r4, 0x60(r30)
/* 8143C010 | 48 11 F6 69 */	bl fn_8155B678
.L_8143C014:
/* 8143C014 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 8143C018 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143C01C | 41 82 00 24 */	beq .L_8143C040
/* 8143C020 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143C024 | 38 80 FF FF */	li r4, -0x1
/* 8143C028 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8143C02C | 7D 89 03 A6 */	mtctr r12
/* 8143C030 | 4E 80 04 21 */	bctrl
/* 8143C034 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 8143C038 | 80 9E 00 64 */	lwz r4, 0x64(r30)
/* 8143C03C | 48 11 F6 3D */	bl fn_8155B678
.L_8143C040:
/* 8143C040 | 80 7E 00 68 */	lwz r3, 0x68(r30)
/* 8143C044 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143C048 | 41 82 00 24 */	beq .L_8143C06C
/* 8143C04C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143C050 | 38 80 FF FF */	li r4, -0x1
/* 8143C054 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8143C058 | 7D 89 03 A6 */	mtctr r12
/* 8143C05C | 4E 80 04 21 */	bctrl
/* 8143C060 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 8143C064 | 80 9E 00 68 */	lwz r4, 0x68(r30)
/* 8143C068 | 48 11 F6 11 */	bl fn_8155B678
.L_8143C06C:
/* 8143C06C | 80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 8143C070 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143C074 | 41 82 00 24 */	beq .L_8143C098
/* 8143C078 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143C07C | 38 80 FF FF */	li r4, -0x1
/* 8143C080 | 81 8C 00 98 */	lwz r12, 0x98(r12)
/* 8143C084 | 7D 89 03 A6 */	mtctr r12
/* 8143C088 | 4E 80 04 21 */	bctrl
/* 8143C08C | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 8143C090 | 80 9E 00 6C */	lwz r4, 0x6c(r30)
/* 8143C094 | 48 11 F5 E5 */	bl fn_8155B678
.L_8143C098:
/* 8143C098 | 80 7E 00 70 */	lwz r3, 0x70(r30)
/* 8143C09C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143C0A0 | 41 82 00 24 */	beq .L_8143C0C4
/* 8143C0A4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143C0A8 | 38 80 FF FF */	li r4, -0x1
/* 8143C0AC | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8143C0B0 | 7D 89 03 A6 */	mtctr r12
/* 8143C0B4 | 4E 80 04 21 */	bctrl
/* 8143C0B8 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 8143C0BC | 80 9E 00 70 */	lwz r4, 0x70(r30)
/* 8143C0C0 | 48 11 F5 B9 */	bl fn_8155B678
.L_8143C0C4:
/* 8143C0C4 | 80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8143C0C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143C0CC | 41 82 00 24 */	beq .L_8143C0F0
/* 8143C0D0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143C0D4 | 38 80 FF FF */	li r4, -0x1
/* 8143C0D8 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8143C0DC | 7D 89 03 A6 */	mtctr r12
/* 8143C0E0 | 4E 80 04 21 */	bctrl
/* 8143C0E4 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 8143C0E8 | 80 9E 00 74 */	lwz r4, 0x74(r30)
/* 8143C0EC | 48 11 F5 8D */	bl fn_8155B678
.L_8143C0F0:
/* 8143C0F0 | 80 7E 00 50 */	lwz r3, 0x50(r30)
/* 8143C0F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143C0F8 | 41 82 00 24 */	beq .L_8143C11C
/* 8143C0FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143C100 | 38 80 FF FF */	li r4, -0x1
/* 8143C104 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8143C108 | 7D 89 03 A6 */	mtctr r12
/* 8143C10C | 4E 80 04 21 */	bctrl
/* 8143C110 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 8143C114 | 80 9E 00 50 */	lwz r4, 0x50(r30)
/* 8143C118 | 48 11 F5 61 */	bl fn_8155B678
.L_8143C11C:
/* 8143C11C | 80 7E 00 54 */	lwz r3, 0x54(r30)
/* 8143C120 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143C124 | 41 82 00 24 */	beq .L_8143C148
/* 8143C128 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143C12C | 38 80 FF FF */	li r4, -0x1
/* 8143C130 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8143C134 | 7D 89 03 A6 */	mtctr r12
/* 8143C138 | 4E 80 04 21 */	bctrl
/* 8143C13C | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 8143C140 | 80 9E 00 54 */	lwz r4, 0x54(r30)
/* 8143C144 | 48 11 F5 35 */	bl fn_8155B678
.L_8143C148:
/* 8143C148 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 8143C14C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143C150 | 41 82 00 24 */	beq .L_8143C174
/* 8143C154 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143C158 | 38 80 FF FF */	li r4, -0x1
/* 8143C15C | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8143C160 | 7D 89 03 A6 */	mtctr r12
/* 8143C164 | 4E 80 04 21 */	bctrl
/* 8143C168 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 8143C16C | 80 9E 00 58 */	lwz r4, 0x58(r30)
/* 8143C170 | 48 11 F5 09 */	bl fn_8155B678
.L_8143C174:
/* 8143C174 | 80 7E 00 78 */	lwz r3, 0x78(r30)
/* 8143C178 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143C17C | 41 82 00 24 */	beq .L_8143C1A0
/* 8143C180 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143C184 | 38 80 FF FF */	li r4, -0x1
/* 8143C188 | 81 8C 00 88 */	lwz r12, 0x88(r12)
/* 8143C18C | 7D 89 03 A6 */	mtctr r12
/* 8143C190 | 4E 80 04 21 */	bctrl
/* 8143C194 | 80 7E 00 04 */	lwz r3, 0x4(r30)
/* 8143C198 | 80 9E 00 78 */	lwz r4, 0x78(r30)
/* 8143C19C | 48 11 F4 DD */	bl fn_8155B678
.L_8143C1A0:
/* 8143C1A0 | 38 00 00 00 */	li r0, 0x0
/* 8143C1A4 | 7F C3 F3 78 */	mr r3, r30
/* 8143C1A8 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 8143C1AC | 38 80 00 00 */	li r4, 0x0
/* 8143C1B0 | 90 1E 00 18 */	stw r0, 0x18(r30)
/* 8143C1B4 | 90 1E 00 1C */	stw r0, 0x1c(r30)
/* 8143C1B8 | 90 1E 00 20 */	stw r0, 0x20(r30)
/* 8143C1BC | 90 1E 00 24 */	stw r0, 0x24(r30)
/* 8143C1C0 | 90 1E 00 28 */	stw r0, 0x28(r30)
/* 8143C1C4 | 90 1E 00 2C */	stw r0, 0x2c(r30)
/* 8143C1C8 | 4B FF B3 F5 */	bl __dt__Q29textinput7ManagerFv
/* 8143C1CC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8143C1D0 | 40 81 00 0C */	ble .L_8143C1DC
/* 8143C1D4 | 7F C3 F3 78 */	mr r3, r30
/* 8143C1D8 | 48 1B BF 0D */	bl __dl__FPv
.L_8143C1DC:
/* 8143C1DC | 7F C3 F3 78 */	mr r3, r30
/* 8143C1E0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143C1E4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8143C1E8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143C1EC | 7C 08 03 A6 */	mtlr r0
/* 8143C1F0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143C1F4 | 4E 80 00 20 */	blr
.endfn __dt__Q49textinput6extend4memo7ManagerFv

# .text:0x270 | 0x8143C1F8 | size: 0x5C
# textinput::extend::bg::LayoutByNW4R::~LayoutByNW4R()
.fn __dt__Q49textinput6extend2bg12LayoutByNW4RFv, global
/* 8143C1F8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143C1FC | 7C 08 02 A6 */	mflr r0
/* 8143C200 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143C204 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143C208 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143C20C | 7C 9F 23 78 */	mr r31, r4
/* 8143C210 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8143C214 | 7C 7E 1B 78 */	mr r30, r3
/* 8143C218 | 41 82 00 20 */	beq .L_8143C238
/* 8143C21C | 38 80 00 00 */	li r4, 0x0
/* 8143C220 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8143C224 | 4B FF 9E D5 */	bl __dt__Q39textinput11nw4rmanager6LayoutFv
/* 8143C228 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8143C22C | 40 81 00 0C */	ble .L_8143C238
/* 8143C230 | 7F C3 F3 78 */	mr r3, r30
/* 8143C234 | 48 1B BE B1 */	bl __dl__FPv
.L_8143C238:
/* 8143C238 | 7F C3 F3 78 */	mr r3, r30
/* 8143C23C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143C240 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8143C244 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143C248 | 7C 08 03 A6 */	mtlr r0
/* 8143C24C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143C250 | 4E 80 00 20 */	blr
.endfn __dt__Q49textinput6extend2bg12LayoutByNW4RFv

# .text:0x2CC | 0x8143C254 | size: 0x2E0
# textinput::extend::memo::Manager::create(MEMAllocator*)
.fn create__Q49textinput6extend4memo7ManagerFP12MEMAllocator, global
/* 8143C254 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143C258 | 7C 08 02 A6 */	mflr r0
/* 8143C25C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143C260 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143C264 | 7C 7F 1B 78 */	mr r31, r3
/* 8143C268 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143C26C | 81 8C 00 A4 */	lwz r12, 0xa4(r12)
/* 8143C270 | 7D 89 03 A6 */	mtctr r12
/* 8143C274 | 4E 80 04 21 */	bctrl
/* 8143C278 | 90 7F 00 0C */	stw r3, 0xc(r31)
/* 8143C27C | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 8143C280 | 4B FD FA 99 */	bl create__Q39textinput9inputform10EditBufferFP12MEMAllocator
/* 8143C284 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143C288 | 7F E3 FB 78 */	mr r3, r31
/* 8143C28C | 81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 8143C290 | 7D 89 03 A6 */	mtctr r12
/* 8143C294 | 4E 80 04 21 */	bctrl
/* 8143C298 | 90 7F 00 10 */	stw r3, 0x10(r31)
/* 8143C29C | 7F E3 FB 78 */	mr r3, r31
/* 8143C2A0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143C2A4 | 81 8C 00 AC */	lwz r12, 0xac(r12)
/* 8143C2A8 | 7D 89 03 A6 */	mtctr r12
/* 8143C2AC | 4E 80 04 21 */	bctrl
/* 8143C2B0 | 90 7F 00 5C */	stw r3, 0x5c(r31)
/* 8143C2B4 | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 8143C2B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143C2BC | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8143C2C0 | 7D 89 03 A6 */	mtctr r12
/* 8143C2C4 | 4E 80 04 21 */	bctrl
/* 8143C2C8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143C2CC | 7F E3 FB 78 */	mr r3, r31
/* 8143C2D0 | 81 8C 00 B0 */	lwz r12, 0xb0(r12)
/* 8143C2D4 | 7D 89 03 A6 */	mtctr r12
/* 8143C2D8 | 4E 80 04 21 */	bctrl
/* 8143C2DC | 90 7F 00 60 */	stw r3, 0x60(r31)
/* 8143C2E0 | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 8143C2E4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143C2E8 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8143C2EC | 7D 89 03 A6 */	mtctr r12
/* 8143C2F0 | 4E 80 04 21 */	bctrl
/* 8143C2F4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143C2F8 | 7F E3 FB 78 */	mr r3, r31
/* 8143C2FC | 81 8C 00 B4 */	lwz r12, 0xb4(r12)
/* 8143C300 | 7D 89 03 A6 */	mtctr r12
/* 8143C304 | 4E 80 04 21 */	bctrl
/* 8143C308 | 90 7F 00 64 */	stw r3, 0x64(r31)
/* 8143C30C | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 8143C310 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143C314 | 80 BF 00 0C */	lwz r5, 0xc(r31)
/* 8143C318 | 81 8C 00 D4 */	lwz r12, 0xd4(r12)
/* 8143C31C | 7D 89 03 A6 */	mtctr r12
/* 8143C320 | 4E 80 04 21 */	bctrl
/* 8143C324 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143C328 | 7F E3 FB 78 */	mr r3, r31
/* 8143C32C | 81 8C 00 B8 */	lwz r12, 0xb8(r12)
/* 8143C330 | 7D 89 03 A6 */	mtctr r12
/* 8143C334 | 4E 80 04 21 */	bctrl
/* 8143C338 | 90 7F 00 68 */	stw r3, 0x68(r31)
/* 8143C33C | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 8143C340 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143C344 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8143C348 | 7D 89 03 A6 */	mtctr r12
/* 8143C34C | 4E 80 04 21 */	bctrl
/* 8143C350 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143C354 | 7F E3 FB 78 */	mr r3, r31
/* 8143C358 | 81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8143C35C | 7D 89 03 A6 */	mtctr r12
/* 8143C360 | 4E 80 04 21 */	bctrl
/* 8143C364 | 90 7F 00 6C */	stw r3, 0x6c(r31)
/* 8143C368 | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 8143C36C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143C370 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8143C374 | 7D 89 03 A6 */	mtctr r12
/* 8143C378 | 4E 80 04 21 */	bctrl
/* 8143C37C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143C380 | 7F E3 FB 78 */	mr r3, r31
/* 8143C384 | 81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 8143C388 | 7D 89 03 A6 */	mtctr r12
/* 8143C38C | 4E 80 04 21 */	bctrl
/* 8143C390 | 90 7F 00 70 */	stw r3, 0x70(r31)
/* 8143C394 | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 8143C398 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143C39C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8143C3A0 | 7D 89 03 A6 */	mtctr r12
/* 8143C3A4 | 4E 80 04 21 */	bctrl
/* 8143C3A8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143C3AC | 7F E3 FB 78 */	mr r3, r31
/* 8143C3B0 | 81 8C 00 C4 */	lwz r12, 0xc4(r12)
/* 8143C3B4 | 7D 89 03 A6 */	mtctr r12
/* 8143C3B8 | 4E 80 04 21 */	bctrl
/* 8143C3BC | 90 7F 00 74 */	stw r3, 0x74(r31)
/* 8143C3C0 | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 8143C3C4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143C3C8 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8143C3CC | 7D 89 03 A6 */	mtctr r12
/* 8143C3D0 | 4E 80 04 21 */	bctrl
/* 8143C3D4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143C3D8 | 7F E3 FB 78 */	mr r3, r31
/* 8143C3DC | 81 8C 01 30 */	lwz r12, 0x130(r12)
/* 8143C3E0 | 7D 89 03 A6 */	mtctr r12
/* 8143C3E4 | 4E 80 04 21 */	bctrl
/* 8143C3E8 | 90 7F 00 50 */	stw r3, 0x50(r31)
/* 8143C3EC | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 8143C3F0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143C3F4 | 80 BF 00 0C */	lwz r5, 0xc(r31)
/* 8143C3F8 | 81 8C 00 D4 */	lwz r12, 0xd4(r12)
/* 8143C3FC | 7D 89 03 A6 */	mtctr r12
/* 8143C400 | 4E 80 04 21 */	bctrl
/* 8143C404 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143C408 | 7F E3 FB 78 */	mr r3, r31
/* 8143C40C | 81 8C 01 34 */	lwz r12, 0x134(r12)
/* 8143C410 | 7D 89 03 A6 */	mtctr r12
/* 8143C414 | 4E 80 04 21 */	bctrl
/* 8143C418 | 90 7F 00 54 */	stw r3, 0x54(r31)
/* 8143C41C | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 8143C420 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143C424 | 80 BF 00 0C */	lwz r5, 0xc(r31)
/* 8143C428 | 81 8C 00 D4 */	lwz r12, 0xd4(r12)
/* 8143C42C | 7D 89 03 A6 */	mtctr r12
/* 8143C430 | 4E 80 04 21 */	bctrl
/* 8143C434 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143C438 | 7F E3 FB 78 */	mr r3, r31
/* 8143C43C | 81 8C 01 38 */	lwz r12, 0x138(r12)
/* 8143C440 | 7D 89 03 A6 */	mtctr r12
/* 8143C444 | 4E 80 04 21 */	bctrl
/* 8143C448 | 90 7F 00 58 */	stw r3, 0x58(r31)
/* 8143C44C | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 8143C450 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143C454 | 80 BF 00 0C */	lwz r5, 0xc(r31)
/* 8143C458 | 81 8C 00 D4 */	lwz r12, 0xd4(r12)
/* 8143C45C | 7D 89 03 A6 */	mtctr r12
/* 8143C460 | 4E 80 04 21 */	bctrl
/* 8143C464 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143C468 | 7F E3 FB 78 */	mr r3, r31
/* 8143C46C | 81 8C 01 3C */	lwz r12, 0x13c(r12)
/* 8143C470 | 7D 89 03 A6 */	mtctr r12
/* 8143C474 | 4E 80 04 21 */	bctrl
/* 8143C478 | 90 7F 00 78 */	stw r3, 0x78(r31)
/* 8143C47C | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 8143C480 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143C484 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8143C488 | 7D 89 03 A6 */	mtctr r12
/* 8143C48C | 4E 80 04 21 */	bctrl
/* 8143C490 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143C494 | 7F E3 FB 78 */	mr r3, r31
/* 8143C498 | 81 8C 00 F4 */	lwz r12, 0xf4(r12)
/* 8143C49C | 7D 89 03 A6 */	mtctr r12
/* 8143C4A0 | 4E 80 04 21 */	bctrl
/* 8143C4A4 | 3C 80 81 0D */	lis r4, sAppearMemoState__Q39textinput6extend4memo@ha
/* 8143C4A8 | 3C 60 81 0D */	lis r3, sDisappearMemoState__Q39textinput6extend4memo@ha
/* 8143C4AC | 38 63 88 2C */	addi r3, r3, sDisappearMemoState__Q39textinput6extend4memo@l
/* 8143C4B0 | 38 CD AD 00 */	li r6, sDispMemoState__Q39textinput6extend4memo@sda21
/* 8143C4B4 | 38 84 88 14 */	addi r4, r4, sAppearMemoState__Q39textinput6extend4memo@l
/* 8143C4B8 | 38 AD AD 08 */	li r5, sEditMemoState__Q39textinput6extend4memo@sda21
/* 8143C4BC | 93 E6 00 04 */	stw r31, 0x4(r6)
/* 8143C4C0 | 93 E5 00 04 */	stw r31, 0x4(r5)
/* 8143C4C4 | 93 E4 00 04 */	stw r31, 0x4(r4)
/* 8143C4C8 | 93 E3 00 04 */	stw r31, 0x4(r3)
/* 8143C4CC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143C4D0 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8143C4D4 | 7D 89 03 A6 */	mtctr r12
/* 8143C4D8 | 4E 80 04 21 */	bctrl
/* 8143C4DC | 7F E3 FB 78 */	mr r3, r31
/* 8143C4E0 | 4B FF B4 FD */	bl initAspect__Q29textinput7ManagerFv
/* 8143C4E4 | 38 00 00 00 */	li r0, 0x0
/* 8143C4E8 | 38 60 00 F0 */	li r3, 0xf0
/* 8143C4EC | 98 7F 00 48 */	stb r3, 0x48(r31)
/* 8143C4F0 | 7F E3 FB 78 */	mr r3, r31
/* 8143C4F4 | 98 1F 00 49 */	stb r0, 0x49(r31)
/* 8143C4F8 | 98 1F 00 4A */	stb r0, 0x4a(r31)
/* 8143C4FC | 98 1F 00 4B */	stb r0, 0x4b(r31)
/* 8143C500 | 98 1F 00 4C */	stb r0, 0x4c(r31)
/* 8143C504 | 98 1F 00 4D */	stb r0, 0x4d(r31)
/* 8143C508 | 98 1F 00 4E */	stb r0, 0x4e(r31)
/* 8143C50C | 98 1F 00 4F */	stb r0, 0x4f(r31)
/* 8143C510 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143C514 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8143C518 | 7D 89 03 A6 */	mtctr r12
/* 8143C51C | 4E 80 04 21 */	bctrl
/* 8143C520 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143C524 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143C528 | 7C 08 03 A6 */	mtlr r0
/* 8143C52C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143C530 | 4E 80 00 20 */	blr
.endfn create__Q49textinput6extend4memo7ManagerFP12MEMAllocator

# .text:0x5AC | 0x8143C534 | size: 0x1C0
# textinput::extend::memo::Manager::init()
.fn init__Q49textinput6extend4memo7ManagerFv, global
/* 8143C534 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143C538 | 7C 08 02 A6 */	mflr r0
/* 8143C53C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143C540 | 38 0D AD 00 */	li r0, sDispMemoState__Q39textinput6extend4memo@sda21
/* 8143C544 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143C548 | 7C 7F 1B 78 */	mr r31, r3
/* 8143C54C | 90 03 00 40 */	stw r0, 0x40(r3)
/* 8143C550 | 7C 03 03 78 */	mr r3, r0
/* 8143C554 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143C558 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8143C55C | 7D 89 03 A6 */	mtctr r12
/* 8143C560 | 4E 80 04 21 */	bctrl
/* 8143C564 | 80 7F 00 40 */	lwz r3, 0x40(r31)
/* 8143C568 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143C56C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8143C570 | 7D 89 03 A6 */	mtctr r12
/* 8143C574 | 4E 80 04 21 */	bctrl
/* 8143C578 | 80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 8143C57C | 85 83 00 44 */	lwzu r12, 0x44(r3)
/* 8143C580 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8143C584 | 7D 89 03 A6 */	mtctr r12
/* 8143C588 | 4E 80 04 21 */	bctrl
/* 8143C58C | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8143C590 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8143C594 | 70 00 00 FD */	andi. r0, r0, 0xfd
/* 8143C598 | 60 00 00 02 */	ori r0, r0, 0x2
/* 8143C59C | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 8143C5A0 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 8143C5A4 | 85 83 00 38 */	lwzu r12, 0x38(r3)
/* 8143C5A8 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8143C5AC | 7D 89 03 A6 */	mtctr r12
/* 8143C5B0 | 4E 80 04 21 */	bctrl
/* 8143C5B4 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8143C5B8 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8143C5BC | 70 00 00 FD */	andi. r0, r0, 0xfd
/* 8143C5C0 | 60 00 00 02 */	ori r0, r0, 0x2
/* 8143C5C4 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 8143C5C8 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8143C5CC | 85 83 02 18 */	lwzu r12, 0x218(r3)
/* 8143C5D0 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8143C5D4 | 7D 89 03 A6 */	mtctr r12
/* 8143C5D8 | 4E 80 04 21 */	bctrl
/* 8143C5DC | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8143C5E0 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8143C5E4 | 70 00 00 FD */	andi. r0, r0, 0xfd
/* 8143C5E8 | 60 00 00 02 */	ori r0, r0, 0x2
/* 8143C5EC | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 8143C5F0 | 80 7F 00 50 */	lwz r3, 0x50(r31)
/* 8143C5F4 | 85 83 02 18 */	lwzu r12, 0x218(r3)
/* 8143C5F8 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8143C5FC | 7D 89 03 A6 */	mtctr r12
/* 8143C600 | 4E 80 04 21 */	bctrl
/* 8143C604 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8143C608 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8143C60C | 70 00 00 FD */	andi. r0, r0, 0xfd
/* 8143C610 | 60 00 00 02 */	ori r0, r0, 0x2
/* 8143C614 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 8143C618 | 80 7F 00 54 */	lwz r3, 0x54(r31)
/* 8143C61C | 85 83 02 18 */	lwzu r12, 0x218(r3)
/* 8143C620 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8143C624 | 7D 89 03 A6 */	mtctr r12
/* 8143C628 | 4E 80 04 21 */	bctrl
/* 8143C62C | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8143C630 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8143C634 | 70 00 00 FD */	andi. r0, r0, 0xfd
/* 8143C638 | 60 00 00 02 */	ori r0, r0, 0x2
/* 8143C63C | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 8143C640 | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 8143C644 | 85 83 02 18 */	lwzu r12, 0x218(r3)
/* 8143C648 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8143C64C | 7D 89 03 A6 */	mtctr r12
/* 8143C650 | 4E 80 04 21 */	bctrl
/* 8143C654 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8143C658 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8143C65C | 70 00 00 FD */	andi. r0, r0, 0xfd
/* 8143C660 | 60 00 00 02 */	ori r0, r0, 0x2
/* 8143C664 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 8143C668 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 8143C66C | 85 83 00 24 */	lwzu r12, 0x24(r3)
/* 8143C670 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8143C674 | 7D 89 03 A6 */	mtctr r12
/* 8143C678 | 4E 80 04 21 */	bctrl
/* 8143C67C | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8143C680 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8143C684 | 70 00 00 FD */	andi. r0, r0, 0xfd
/* 8143C688 | 60 00 00 02 */	ori r0, r0, 0x2
/* 8143C68C | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 8143C690 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 8143C694 | 85 83 00 14 */	lwzu r12, 0x14(r3)
/* 8143C698 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8143C69C | 7D 89 03 A6 */	mtctr r12
/* 8143C6A0 | 4E 80 04 21 */	bctrl
/* 8143C6A4 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8143C6A8 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8143C6AC | 70 00 00 FD */	andi. r0, r0, 0xfd
/* 8143C6B0 | 60 00 00 02 */	ori r0, r0, 0x2
/* 8143C6B4 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 8143C6B8 | 80 7F 00 78 */	lwz r3, 0x78(r31)
/* 8143C6BC | 85 83 00 04 */	lwzu r12, 0x4(r3)
/* 8143C6C0 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8143C6C4 | 7D 89 03 A6 */	mtctr r12
/* 8143C6C8 | 4E 80 04 21 */	bctrl
/* 8143C6CC | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8143C6D0 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8143C6D4 | 70 00 00 FD */	andi. r0, r0, 0xfd
/* 8143C6D8 | 60 00 00 02 */	ori r0, r0, 0x2
/* 8143C6DC | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 8143C6E0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143C6E4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143C6E8 | 7C 08 03 A6 */	mtlr r0
/* 8143C6EC | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143C6F0 | 4E 80 00 20 */	blr
.endfn init__Q49textinput6extend4memo7ManagerFv

# .text:0x76C | 0x8143C6F4 | size: 0x14
# textinput::extend::memo::Manager::calc()
.fn calc__Q49textinput6extend4memo7ManagerFv, global
/* 8143C6F4 | 80 63 00 40 */	lwz r3, 0x40(r3)
/* 8143C6F8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143C6FC | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8143C700 | 7D 89 03 A6 */	mtctr r12
/* 8143C704 | 4E 80 04 20 */	bctr
.endfn calc__Q49textinput6extend4memo7ManagerFv

# .text:0x780 | 0x8143C708 | size: 0x14
# textinput::extend::memo::Manager::draw()
.fn draw__Q49textinput6extend4memo7ManagerFv, global
/* 8143C708 | 80 63 00 40 */	lwz r3, 0x40(r3)
/* 8143C70C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143C710 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8143C714 | 7D 89 03 A6 */	mtctr r12
/* 8143C718 | 4E 80 04 20 */	bctr
.endfn draw__Q49textinput6extend4memo7ManagerFv

# .text:0x794 | 0x8143C71C | size: 0x14
# textinput::extend::memo::Manager::memoDraw()
.fn memoDraw__Q49textinput6extend4memo7ManagerFv, global
/* 8143C71C | 80 63 00 40 */	lwz r3, 0x40(r3)
/* 8143C720 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143C724 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8143C728 | 7D 89 03 A6 */	mtctr r12
/* 8143C72C | 4E 80 04 20 */	bctr
.endfn memoDraw__Q49textinput6extend4memo7ManagerFv

# .text:0x7A8 | 0x8143C730 | size: 0x14
# textinput::extend::memo::Manager::updateInput(int, float, float, unsigned long, unsigned long, unsigned long)
.fn updateInput__Q49textinput6extend4memo7ManagerFiffUlUlUl, global
/* 8143C730 | 80 63 00 40 */	lwz r3, 0x40(r3)
/* 8143C734 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143C738 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8143C73C | 7D 89 03 A6 */	mtctr r12
/* 8143C740 | 4E 80 04 20 */	bctr
.endfn updateInput__Q49textinput6extend4memo7ManagerFiffUlUlUl

# .text:0x7BC | 0x8143C744 | size: 0x14
# textinput::extend::memo::Manager::updateInput(textinput::input::HKBManager&)
.fn updateInput__Q49textinput6extend4memo7ManagerFRQ39textinput5input10HKBManager, global
/* 8143C744 | 80 63 00 40 */	lwz r3, 0x40(r3)
/* 8143C748 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143C74C | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8143C750 | 7D 89 03 A6 */	mtctr r12
/* 8143C754 | 4E 80 04 20 */	bctr
.endfn updateInput__Q49textinput6extend4memo7ManagerFRQ39textinput5input10HKBManager

# .text:0x7D0 | 0x8143C758 | size: 0x5C
# textinput::extend::memo::Manager::changeState(textinput::extend::memo::Manager::StateTimeLine)
.fn changeState__Q49textinput6extend4memo7ManagerFQ59textinput6extend4memo7Manager13StateTimeLine, global
/* 8143C758 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143C75C | 7C 08 02 A6 */	mflr r0
/* 8143C760 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 8143C764 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143C768 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143C76C | 7C 7F 1B 78 */	mr r31, r3
/* 8143C770 | 40 82 00 30 */	bne .L_8143C7A0
/* 8143C774 | 80 63 00 40 */	lwz r3, 0x40(r3)
/* 8143C778 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143C77C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8143C780 | 7D 89 03 A6 */	mtctr r12
/* 8143C784 | 4E 80 04 21 */	bctrl
/* 8143C788 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143C78C | 7C 64 1B 78 */	mr r4, r3
/* 8143C790 | 7F E3 FB 78 */	mr r3, r31
/* 8143C794 | 81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 8143C798 | 7D 89 03 A6 */	mtctr r12
/* 8143C79C | 4E 80 04 21 */	bctrl
.L_8143C7A0:
/* 8143C7A0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143C7A4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143C7A8 | 7C 08 03 A6 */	mtlr r0
/* 8143C7AC | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143C7B0 | 4E 80 00 20 */	blr
.endfn changeState__Q49textinput6extend4memo7ManagerFQ59textinput6extend4memo7Manager13StateTimeLine

# .text:0x82C | 0x8143C7B4 | size: 0x15C
# textinput::extend::memo::Manager::setState(textinput::extend::memo::Manager::StateType)
.fn setState__Q49textinput6extend4memo7ManagerFQ59textinput6extend4memo7Manager9StateType, global
/* 8143C7B4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143C7B8 | 7C 08 02 A6 */	mflr r0
/* 8143C7BC | 2C 04 00 02 */	cmpwi r4, 0x2
/* 8143C7C0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143C7C4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143C7C8 | 7C 7F 1B 78 */	mr r31, r3
/* 8143C7CC | 41 82 00 B8 */	beq .L_8143C884
/* 8143C7D0 | 40 80 00 14 */	bge .L_8143C7E4
/* 8143C7D4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8143C7D8 | 41 82 00 18 */	beq .L_8143C7F0
/* 8143C7DC | 40 80 00 60 */	bge .L_8143C83C
/* 8143C7E0 | 48 00 01 1C */	b .L_8143C8FC
.L_8143C7E4:
/* 8143C7E4 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 8143C7E8 | 40 80 01 14 */	bge .L_8143C8FC
/* 8143C7EC | 48 00 00 CC */	b .L_8143C8B8
.L_8143C7F0:
/* 8143C7F0 | 80 63 00 30 */	lwz r3, 0x30(r3)
/* 8143C7F4 | 38 80 00 1B */	li r4, 0x1b
/* 8143C7F8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143C7FC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8143C800 | 7D 89 03 A6 */	mtctr r12
/* 8143C804 | 4E 80 04 21 */	bctrl
/* 8143C808 | 80 7F 00 40 */	lwz r3, 0x40(r31)
/* 8143C80C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143C810 | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8143C814 | 7D 89 03 A6 */	mtctr r12
/* 8143C818 | 4E 80 04 21 */	bctrl
/* 8143C81C | 3C 60 81 0D */	lis r3, sAppearMemoState__Q39textinput6extend4memo@ha
/* 8143C820 | 38 63 88 14 */	addi r3, r3, sAppearMemoState__Q39textinput6extend4memo@l
/* 8143C824 | 90 7F 00 40 */	stw r3, 0x40(r31)
/* 8143C828 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143C82C | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8143C830 | 7D 89 03 A6 */	mtctr r12
/* 8143C834 | 4E 80 04 21 */	bctrl
/* 8143C838 | 48 00 00 C4 */	b .L_8143C8FC
.L_8143C83C:
/* 8143C83C | 80 63 00 30 */	lwz r3, 0x30(r3)
/* 8143C840 | 38 80 00 1C */	li r4, 0x1c
/* 8143C844 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143C848 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8143C84C | 7D 89 03 A6 */	mtctr r12
/* 8143C850 | 4E 80 04 21 */	bctrl
/* 8143C854 | 80 7F 00 40 */	lwz r3, 0x40(r31)
/* 8143C858 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143C85C | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8143C860 | 7D 89 03 A6 */	mtctr r12
/* 8143C864 | 4E 80 04 21 */	bctrl
/* 8143C868 | 38 6D AD 08 */	li r3, sEditMemoState__Q39textinput6extend4memo@sda21
/* 8143C86C | 90 7F 00 40 */	stw r3, 0x40(r31)
/* 8143C870 | 81 8D AD 08 */	lwz r12, sEditMemoState__Q39textinput6extend4memo@sda21(r0)
/* 8143C874 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8143C878 | 7D 89 03 A6 */	mtctr r12
/* 8143C87C | 4E 80 04 21 */	bctrl
/* 8143C880 | 48 00 00 7C */	b .L_8143C8FC
.L_8143C884:
/* 8143C884 | 80 63 00 40 */	lwz r3, 0x40(r3)
/* 8143C888 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143C88C | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8143C890 | 7D 89 03 A6 */	mtctr r12
/* 8143C894 | 4E 80 04 21 */	bctrl
/* 8143C898 | 3C 60 81 0D */	lis r3, sDisappearMemoState__Q39textinput6extend4memo@ha
/* 8143C89C | 38 63 88 2C */	addi r3, r3, sDisappearMemoState__Q39textinput6extend4memo@l
/* 8143C8A0 | 90 7F 00 40 */	stw r3, 0x40(r31)
/* 8143C8A4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143C8A8 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8143C8AC | 7D 89 03 A6 */	mtctr r12
/* 8143C8B0 | 4E 80 04 21 */	bctrl
/* 8143C8B4 | 48 00 00 48 */	b .L_8143C8FC
.L_8143C8B8:
/* 8143C8B8 | 80 63 00 30 */	lwz r3, 0x30(r3)
/* 8143C8BC | 38 80 00 1D */	li r4, 0x1d
/* 8143C8C0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143C8C4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8143C8C8 | 7D 89 03 A6 */	mtctr r12
/* 8143C8CC | 4E 80 04 21 */	bctrl
/* 8143C8D0 | 80 7F 00 40 */	lwz r3, 0x40(r31)
/* 8143C8D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143C8D8 | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8143C8DC | 7D 89 03 A6 */	mtctr r12
/* 8143C8E0 | 4E 80 04 21 */	bctrl
/* 8143C8E4 | 38 6D AD 00 */	li r3, sDispMemoState__Q39textinput6extend4memo@sda21
/* 8143C8E8 | 90 7F 00 40 */	stw r3, 0x40(r31)
/* 8143C8EC | 81 8D AD 00 */	lwz r12, sDispMemoState__Q39textinput6extend4memo@sda21(r0)
/* 8143C8F0 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8143C8F4 | 7D 89 03 A6 */	mtctr r12
/* 8143C8F8 | 4E 80 04 21 */	bctrl
.L_8143C8FC:
/* 8143C8FC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143C900 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143C904 | 7C 08 03 A6 */	mtlr r0
/* 8143C908 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143C90C | 4E 80 00 20 */	blr
.endfn setState__Q49textinput6extend4memo7ManagerFQ59textinput6extend4memo7Manager9StateType

# .text:0x988 | 0x8143C910 | size: 0x128
# textinput::extend::memo::Manager::createMemoInputForm()
.fn createMemoInputForm__Q49textinput6extend4memo7ManagerFv, global
/* 8143C910 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143C914 | 7C 08 02 A6 */	mflr r0
/* 8143C918 | 38 80 04 00 */	li r4, 0x400
/* 8143C91C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143C920 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143C924 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8143C928 | 7C 7E 1B 78 */	mr r30, r3
/* 8143C92C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8143C930 | 48 11 ED 39 */	bl fn_8155B668
/* 8143C934 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143C938 | 7C 7F 1B 78 */	mr r31, r3
/* 8143C93C | 41 82 00 E0 */	beq .L_8143CA1C
/* 8143C940 | 3D 00 81 66 */	lis r8, lbl_81667E38@ha
/* 8143C944 | 3C C0 81 66 */	lis r6, lbl_81667E58@ha
/* 8143C948 | 80 BE 00 08 */	lwz r5, 0x8(r30)
/* 8143C94C | 7F C4 F3 78 */	mr r4, r30
/* 8143C950 | 80 FE 00 30 */	lwz r7, 0x30(r30)
/* 8143C954 | 39 08 7E 38 */	addi r8, r8, lbl_81667E38@l
/* 8143C958 | 38 C6 7E 58 */	addi r6, r6, lbl_81667E58@l
/* 8143C95C | 4B FE 8C 05 */	bl __ct__Q39textinput9inputform12LayoutByNW4RFPQ29textinput7ManagerPQ34nw4r3lyt24MultiArcResourceAccessorPCcPQ29textinput13EventObserverPCc
/* 8143C960 | 3C A0 81 67 */	lis r5, __vt__Q49textinput6extend4memo9InputForm@ha
/* 8143C964 | 3C 60 81 66 */	lis r3, __vt__Q39textinput4util9Animation@ha
/* 8143C968 | 38 A5 85 78 */	addi r5, r5, __vt__Q49textinput6extend4memo9InputForm@l
/* 8143C96C | 38 80 00 00 */	li r4, 0x0
/* 8143C970 | 90 BF 00 00 */	stw r5, 0x0(r31)
/* 8143C974 | 38 05 00 20 */	addi r0, r5, 0x20
/* 8143C978 | 38 C5 00 B8 */	addi r6, r5, 0xb8
/* 8143C97C | 38 A5 01 A8 */	addi r5, r5, 0x1a8
/* 8143C980 | 90 1F 00 5C */	stw r0, 0x5c(r31)
/* 8143C984 | 38 63 D2 58 */	addi r3, r3, __vt__Q39textinput4util9Animation@l
/* 8143C988 | C0 02 8A 58 */	lfs f0, lbl_81694E58@sda21(r0)
/* 8143C98C | 38 00 00 01 */	li r0, 0x1
/* 8143C990 | 90 DF 01 18 */	stw r6, 0x118(r31)
/* 8143C994 | 90 BF 02 18 */	stw r5, 0x218(r31)
/* 8143C998 | 90 9F 03 08 */	stw r4, 0x308(r31)
/* 8143C99C | 90 9F 03 0C */	stw r4, 0x30c(r31)
/* 8143C9A0 | 90 9F 03 10 */	stw r4, 0x310(r31)
/* 8143C9A4 | 90 9F 03 14 */	stw r4, 0x314(r31)
/* 8143C9A8 | D0 1F 03 18 */	stfs f0, 0x318(r31)
/* 8143C9AC | D0 1F 03 1C */	stfs f0, 0x31c(r31)
/* 8143C9B0 | D0 1F 03 20 */	stfs f0, 0x320(r31)
/* 8143C9B4 | 90 9F 03 24 */	stw r4, 0x324(r31)
/* 8143C9B8 | D0 1F 03 28 */	stfs f0, 0x328(r31)
/* 8143C9BC | D0 1F 03 2C */	stfs f0, 0x32c(r31)
/* 8143C9C0 | D0 1F 03 30 */	stfs f0, 0x330(r31)
/* 8143C9C4 | D0 1F 03 34 */	stfs f0, 0x334(r31)
/* 8143C9C8 | D0 1F 03 44 */	stfs f0, 0x344(r31)
/* 8143C9CC | D0 1F 03 48 */	stfs f0, 0x348(r31)
/* 8143C9D0 | D0 1F 03 58 */	stfs f0, 0x358(r31)
/* 8143C9D4 | D0 1F 03 5C */	stfs f0, 0x35c(r31)
/* 8143C9D8 | 90 7F 03 C0 */	stw r3, 0x3c0(r31)
/* 8143C9DC | D0 1F 03 D0 */	stfs f0, 0x3d0(r31)
/* 8143C9E0 | 98 9F 03 D4 */	stb r4, 0x3d4(r31)
/* 8143C9E4 | 98 9F 03 D5 */	stb r4, 0x3d5(r31)
/* 8143C9E8 | 90 9F 03 D8 */	stw r4, 0x3d8(r31)
/* 8143C9EC | 90 9F 03 E0 */	stw r4, 0x3e0(r31)
/* 8143C9F0 | 90 9F 03 E4 */	stw r4, 0x3e4(r31)
/* 8143C9F4 | 90 9F 03 E8 */	stw r4, 0x3e8(r31)
/* 8143C9F8 | 98 9F 03 EC */	stb r4, 0x3ec(r31)
/* 8143C9FC | 98 9F 03 ED */	stb r4, 0x3ed(r31)
/* 8143CA00 | 98 9F 03 EE */	stb r4, 0x3ee(r31)
/* 8143CA04 | 98 9F 03 EF */	stb r4, 0x3ef(r31)
/* 8143CA08 | 98 9F 03 F0 */	stb r4, 0x3f0(r31)
/* 8143CA0C | 90 9F 03 F4 */	stw r4, 0x3f4(r31)
/* 8143CA10 | 98 9F 03 F8 */	stb r4, 0x3f8(r31)
/* 8143CA14 | 98 9F 03 F9 */	stb r4, 0x3f9(r31)
/* 8143CA18 | 90 1F 03 FC */	stw r0, 0x3fc(r31)
.L_8143CA1C:
/* 8143CA1C | 7F E3 FB 78 */	mr r3, r31
/* 8143CA20 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143CA24 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8143CA28 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143CA2C | 7C 08 03 A6 */	mtlr r0
/* 8143CA30 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143CA34 | 4E 80 00 20 */	blr
.endfn createMemoInputForm__Q49textinput6extend4memo7ManagerFv

# .text:0xAB0 | 0x8143CA38 | size: 0x148
# textinput::extend::memo::Manager::createLetterInputForm()
.fn createLetterInputForm__Q49textinput6extend4memo7ManagerFv, global
/* 8143CA38 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143CA3C | 7C 08 02 A6 */	mflr r0
/* 8143CA40 | 38 80 04 08 */	li r4, 0x408
/* 8143CA44 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143CA48 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143CA4C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8143CA50 | 7C 7E 1B 78 */	mr r30, r3
/* 8143CA54 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8143CA58 | 48 11 EC 11 */	bl fn_8155B668
/* 8143CA5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143CA60 | 7C 7F 1B 78 */	mr r31, r3
/* 8143CA64 | 41 82 01 00 */	beq .L_8143CB64
/* 8143CA68 | 3D 00 81 66 */	lis r8, lbl_81667E38@ha
/* 8143CA6C | 3C C0 81 66 */	lis r6, lbl_81667E68@ha
/* 8143CA70 | 80 BE 00 08 */	lwz r5, 0x8(r30)
/* 8143CA74 | 7F C4 F3 78 */	mr r4, r30
/* 8143CA78 | 80 FE 00 30 */	lwz r7, 0x30(r30)
/* 8143CA7C | 39 08 7E 38 */	addi r8, r8, lbl_81667E38@l
/* 8143CA80 | 38 C6 7E 68 */	addi r6, r6, lbl_81667E68@l
/* 8143CA84 | 4B FE 8A DD */	bl __ct__Q39textinput9inputform12LayoutByNW4RFPQ29textinput7ManagerPQ34nw4r3lyt24MultiArcResourceAccessorPCcPQ29textinput13EventObserverPCc
/* 8143CA88 | 3C 60 81 67 */	lis r3, __vt__Q49textinput6extend4memo9InputForm@ha
/* 8143CA8C | 3C E0 81 66 */	lis r7, __vt__Q39textinput4util9Animation@ha
/* 8143CA90 | 38 63 85 78 */	addi r3, r3, __vt__Q49textinput6extend4memo9InputForm@l
/* 8143CA94 | 3C A0 81 67 */	lis r5, __vt__Q49textinput6extend6letter9InputForm@ha
/* 8143CA98 | 90 7F 00 00 */	stw r3, 0x0(r31)
/* 8143CA9C | 38 03 00 20 */	addi r0, r3, 0x20
/* 8143CAA0 | 38 A5 89 D0 */	addi r5, r5, __vt__Q49textinput6extend6letter9InputForm@l
/* 8143CAA4 | 39 00 00 00 */	li r8, 0x0
/* 8143CAA8 | 90 1F 00 5C */	stw r0, 0x5c(r31)
/* 8143CAAC | 38 E7 D2 58 */	addi r7, r7, __vt__Q39textinput4util9Animation@l
/* 8143CAB0 | C0 02 8A 58 */	lfs f0, lbl_81694E58@sda21(r0)
/* 8143CAB4 | 38 C0 00 01 */	li r6, 0x1
/* 8143CAB8 | 91 1F 03 08 */	stw r8, 0x308(r31)
/* 8143CABC | 38 85 00 20 */	addi r4, r5, 0x20
/* 8143CAC0 | 38 65 00 B8 */	addi r3, r5, 0xb8
/* 8143CAC4 | 38 05 01 A8 */	addi r0, r5, 0x1a8
/* 8143CAC8 | 91 1F 03 0C */	stw r8, 0x30c(r31)
/* 8143CACC | 91 1F 03 10 */	stw r8, 0x310(r31)
/* 8143CAD0 | 91 1F 03 14 */	stw r8, 0x314(r31)
/* 8143CAD4 | D0 1F 03 18 */	stfs f0, 0x318(r31)
/* 8143CAD8 | D0 1F 03 1C */	stfs f0, 0x31c(r31)
/* 8143CADC | D0 1F 03 20 */	stfs f0, 0x320(r31)
/* 8143CAE0 | 91 1F 03 24 */	stw r8, 0x324(r31)
/* 8143CAE4 | D0 1F 03 28 */	stfs f0, 0x328(r31)
/* 8143CAE8 | D0 1F 03 2C */	stfs f0, 0x32c(r31)
/* 8143CAEC | D0 1F 03 30 */	stfs f0, 0x330(r31)
/* 8143CAF0 | D0 1F 03 34 */	stfs f0, 0x334(r31)
/* 8143CAF4 | D0 1F 03 44 */	stfs f0, 0x344(r31)
/* 8143CAF8 | D0 1F 03 48 */	stfs f0, 0x348(r31)
/* 8143CAFC | D0 1F 03 58 */	stfs f0, 0x358(r31)
/* 8143CB00 | D0 1F 03 5C */	stfs f0, 0x35c(r31)
/* 8143CB04 | 90 FF 03 C0 */	stw r7, 0x3c0(r31)
/* 8143CB08 | D0 1F 03 D0 */	stfs f0, 0x3d0(r31)
/* 8143CB0C | 99 1F 03 D4 */	stb r8, 0x3d4(r31)
/* 8143CB10 | 99 1F 03 D5 */	stb r8, 0x3d5(r31)
/* 8143CB14 | 91 1F 03 D8 */	stw r8, 0x3d8(r31)
/* 8143CB18 | 91 1F 03 E0 */	stw r8, 0x3e0(r31)
/* 8143CB1C | 91 1F 03 E4 */	stw r8, 0x3e4(r31)
/* 8143CB20 | 91 1F 03 E8 */	stw r8, 0x3e8(r31)
/* 8143CB24 | 99 1F 03 EC */	stb r8, 0x3ec(r31)
/* 8143CB28 | 99 1F 03 ED */	stb r8, 0x3ed(r31)
/* 8143CB2C | 99 1F 03 EE */	stb r8, 0x3ee(r31)
/* 8143CB30 | 99 1F 03 EF */	stb r8, 0x3ef(r31)
/* 8143CB34 | 99 1F 03 F0 */	stb r8, 0x3f0(r31)
/* 8143CB38 | 91 1F 03 F4 */	stw r8, 0x3f4(r31)
/* 8143CB3C | 99 1F 03 F8 */	stb r8, 0x3f8(r31)
/* 8143CB40 | 99 1F 03 F9 */	stb r8, 0x3f9(r31)
/* 8143CB44 | 90 DF 03 FC */	stw r6, 0x3fc(r31)
/* 8143CB48 | 90 BF 00 00 */	stw r5, 0x0(r31)
/* 8143CB4C | 90 9F 00 5C */	stw r4, 0x5c(r31)
/* 8143CB50 | 90 7F 01 18 */	stw r3, 0x118(r31)
/* 8143CB54 | 90 1F 02 18 */	stw r0, 0x218(r31)
/* 8143CB58 | 99 1F 04 00 */	stb r8, 0x400(r31)
/* 8143CB5C | 99 1F 04 01 */	stb r8, 0x401(r31)
/* 8143CB60 | 91 1F 04 04 */	stw r8, 0x404(r31)
.L_8143CB64:
/* 8143CB64 | 7F E3 FB 78 */	mr r3, r31
/* 8143CB68 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143CB6C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8143CB70 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143CB74 | 7C 08 03 A6 */	mtlr r0
/* 8143CB78 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143CB7C | 4E 80 00 20 */	blr
.endfn createLetterInputForm__Q49textinput6extend4memo7ManagerFv

# .text:0xBF8 | 0x8143CB80 | size: 0x5C
# textinput::extend::memo::Manager::createInputForm()
.fn createInputForm__Q49textinput6extend4memo7ManagerFv, global
/* 8143CB80 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143CB84 | 7C 08 02 A6 */	mflr r0
/* 8143CB88 | 38 80 03 08 */	li r4, 0x308
/* 8143CB8C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143CB90 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143CB94 | 7C 7F 1B 78 */	mr r31, r3
/* 8143CB98 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8143CB9C | 48 11 EA CD */	bl fn_8155B668
/* 8143CBA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143CBA4 | 41 82 00 24 */	beq .L_8143CBC8
/* 8143CBA8 | 3C C0 81 66 */	lis r6, lbl_81667E7C@ha
/* 8143CBAC | 3D 00 81 66 */	lis r8, lbl_81667E94@ha
/* 8143CBB0 | 80 BF 00 08 */	lwz r5, 0x8(r31)
/* 8143CBB4 | 7F E4 FB 78 */	mr r4, r31
/* 8143CBB8 | 80 FF 00 30 */	lwz r7, 0x30(r31)
/* 8143CBBC | 38 C6 7E 7C */	addi r6, r6, lbl_81667E7C@l
/* 8143CBC0 | 39 08 7E 94 */	addi r8, r8, lbl_81667E94@l
/* 8143CBC4 | 4B FE 89 9D */	bl __ct__Q39textinput9inputform12LayoutByNW4RFPQ29textinput7ManagerPQ34nw4r3lyt24MultiArcResourceAccessorPCcPQ29textinput13EventObserverPCc
.L_8143CBC8:
/* 8143CBC8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143CBCC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143CBD0 | 7C 08 03 A6 */	mtlr r0
/* 8143CBD4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143CBD8 | 4E 80 00 20 */	blr
.endfn createInputForm__Q49textinput6extend4memo7ManagerFv

# .text:0xC54 | 0x8143CBDC | size: 0x5C
# textinput::extend::memo::Manager::createBigTextInputForm()
.fn createBigTextInputForm__Q49textinput6extend4memo7ManagerFv, global
/* 8143CBDC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143CBE0 | 7C 08 02 A6 */	mflr r0
/* 8143CBE4 | 38 80 03 08 */	li r4, 0x308
/* 8143CBE8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143CBEC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143CBF0 | 7C 7F 1B 78 */	mr r31, r3
/* 8143CBF4 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8143CBF8 | 48 11 EA 71 */	bl fn_8155B668
/* 8143CBFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143CC00 | 41 82 00 24 */	beq .L_8143CC24
/* 8143CC04 | 3C C0 81 66 */	lis r6, lbl_81667EB0@ha
/* 8143CC08 | 3D 00 81 66 */	lis r8, lbl_81667E94@ha
/* 8143CC0C | 80 BF 00 08 */	lwz r5, 0x8(r31)
/* 8143CC10 | 7F E4 FB 78 */	mr r4, r31
/* 8143CC14 | 80 FF 00 30 */	lwz r7, 0x30(r31)
/* 8143CC18 | 38 C6 7E B0 */	addi r6, r6, lbl_81667EB0@l
/* 8143CC1C | 39 08 7E 94 */	addi r8, r8, lbl_81667E94@l
/* 8143CC20 | 4B FE 89 41 */	bl __ct__Q39textinput9inputform12LayoutByNW4RFPQ29textinput7ManagerPQ34nw4r3lyt24MultiArcResourceAccessorPCcPQ29textinput13EventObserverPCc
.L_8143CC24:
/* 8143CC24 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143CC28 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143CC2C | 7C 08 03 A6 */	mtlr r0
/* 8143CC30 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143CC34 | 4E 80 00 20 */	blr
.endfn createBigTextInputForm__Q49textinput6extend4memo7ManagerFv

# .text:0xCB0 | 0x8143CC38 | size: 0x84
# textinput::extend::memo::Manager::createBG()
.fn createBG__Q49textinput6extend4memo7ManagerFv, global
/* 8143CC38 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143CC3C | 7C 08 02 A6 */	mflr r0
/* 8143CC40 | 38 80 00 AC */	li r4, 0xac
/* 8143CC44 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143CC48 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143CC4C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8143CC50 | 7C 7E 1B 78 */	mr r30, r3
/* 8143CC54 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8143CC58 | 48 11 EA 11 */	bl fn_8155B668
/* 8143CC5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143CC60 | 7C 7F 1B 78 */	mr r31, r3
/* 8143CC64 | 41 82 00 3C */	beq .L_8143CCA0
/* 8143CC68 | 3C E0 81 66 */	lis r7, __vt__Q49textinput6extend2bg4Base@ha
/* 8143CC6C | 80 DE 00 30 */	lwz r6, 0x30(r30)
/* 8143CC70 | 80 9E 00 08 */	lwz r4, 0x8(r30)
/* 8143CC74 | 38 E7 7E E0 */	addi r7, r7, __vt__Q49textinput6extend2bg4Base@l
/* 8143CC78 | 3C A0 81 66 */	lis r5, lbl_81667EC8@ha
/* 8143CC7C | 90 E3 00 00 */	stw r7, 0x0(r3)
/* 8143CC80 | 38 A5 7E C8 */	addi r5, r5, lbl_81667EC8@l
/* 8143CC84 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8143CC88 | 4B FF 93 AD */	bl __ct__Q39textinput11nw4rmanager6LayoutFPQ34nw4r3lyt24MultiArcResourceAccessorPCcPQ29textinput13EventObserver
/* 8143CC8C | 3C 60 81 67 */	lis r3, __vt__Q49textinput6extend2bg12LayoutByNW4R@ha
/* 8143CC90 | 38 63 8C D8 */	addi r3, r3, __vt__Q49textinput6extend2bg12LayoutByNW4R@l
/* 8143CC94 | 90 7F 00 00 */	stw r3, 0x0(r31)
/* 8143CC98 | 38 03 00 10 */	addi r0, r3, 0x10
/* 8143CC9C | 90 1F 00 04 */	stw r0, 0x4(r31)
.L_8143CCA0:
/* 8143CCA0 | 7F E3 FB 78 */	mr r3, r31
/* 8143CCA4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143CCA8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8143CCAC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143CCB0 | 7C 08 03 A6 */	mtlr r0
/* 8143CCB4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143CCB8 | 4E 80 00 20 */	blr
.endfn createBG__Q49textinput6extend4memo7ManagerFv

# .text:0xD34 | 0x8143CCBC | size: 0xE8
# textinput::extend::memo::Manager::configDefault()
.fn configDefault__Q49textinput6extend4memo7ManagerFv, global
/* 8143CCBC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143CCC0 | 7C 08 02 A6 */	mflr r0
/* 8143CCC4 | 39 40 00 00 */	li r10, 0x0
/* 8143CCC8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143CCCC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143CCD0 | 7C 7F 1B 78 */	mr r31, r3
/* 8143CCD4 | 81 23 00 5C */	lwz r9, 0x5c(r3)
/* 8143CCD8 | 81 03 00 60 */	lwz r8, 0x60(r3)
/* 8143CCDC | 80 E3 00 64 */	lwz r7, 0x64(r3)
/* 8143CCE0 | 80 C3 00 68 */	lwz r6, 0x68(r3)
/* 8143CCE4 | 80 A3 00 6C */	lwz r5, 0x6c(r3)
/* 8143CCE8 | 80 83 00 70 */	lwz r4, 0x70(r3)
/* 8143CCEC | 80 03 00 74 */	lwz r0, 0x74(r3)
/* 8143CCF0 | 91 43 00 44 */	stw r10, 0x44(r3)
/* 8143CCF4 | 91 23 00 14 */	stw r9, 0x14(r3)
/* 8143CCF8 | 91 03 00 18 */	stw r8, 0x18(r3)
/* 8143CCFC | 90 E3 00 1C */	stw r7, 0x1c(r3)
/* 8143CD00 | 90 C3 00 20 */	stw r6, 0x20(r3)
/* 8143CD04 | 90 A3 00 24 */	stw r5, 0x24(r3)
/* 8143CD08 | 90 83 00 28 */	stw r4, 0x28(r3)
/* 8143CD0C | 90 03 00 2C */	stw r0, 0x2c(r3)
/* 8143CD10 | 4B FF AD 41 */	bl init__Q29textinput7ManagerFv
/* 8143CD14 | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8143CD18 | 38 80 00 01 */	li r4, 0x1
/* 8143CD1C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143CD20 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8143CD24 | 7D 89 03 A6 */	mtctr r12
/* 8143CD28 | 4E 80 04 21 */	bctrl
/* 8143CD2C | 80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8143CD30 | 38 80 00 00 */	li r4, 0x0
/* 8143CD34 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143CD38 | 81 8C 01 30 */	lwz r12, 0x130(r12)
/* 8143CD3C | 7D 89 03 A6 */	mtctr r12
/* 8143CD40 | 4E 80 04 21 */	bctrl
/* 8143CD44 | 80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8143CD48 | 38 80 00 01 */	li r4, 0x1
/* 8143CD4C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143CD50 | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 8143CD54 | 7D 89 03 A6 */	mtctr r12
/* 8143CD58 | 4E 80 04 21 */	bctrl
/* 8143CD5C | 80 1F 00 34 */	lwz r0, 0x34(r31)
/* 8143CD60 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8143CD64 | 41 82 00 24 */	beq .L_8143CD88
/* 8143CD68 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8143CD6C | 41 82 00 1C */	beq .L_8143CD88
/* 8143CD70 | 80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8143CD74 | 38 80 00 00 */	li r4, 0x0
/* 8143CD78 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143CD7C | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 8143CD80 | 7D 89 03 A6 */	mtctr r12
/* 8143CD84 | 4E 80 04 21 */	bctrl
.L_8143CD88:
/* 8143CD88 | 80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8143CD8C | 4B FE 7B 61 */	bl dirtyCacheAll__Q39textinput9inputform4BaseFv
/* 8143CD90 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143CD94 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143CD98 | 7C 08 03 A6 */	mtlr r0
/* 8143CD9C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143CDA0 | 4E 80 00 20 */	blr
.endfn configDefault__Q49textinput6extend4memo7ManagerFv

# .text:0xE1C | 0x8143CDA4 | size: 0x14C
# textinput::extend::memo::Manager::configNumeric()
.fn configNumeric__Q49textinput6extend4memo7ManagerFv, global
/* 8143CDA4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143CDA8 | 7C 08 02 A6 */	mflr r0
/* 8143CDAC | 39 40 00 03 */	li r10, 0x3
/* 8143CDB0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143CDB4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143CDB8 | 7C 7F 1B 78 */	mr r31, r3
/* 8143CDBC | 81 23 00 5C */	lwz r9, 0x5c(r3)
/* 8143CDC0 | 81 03 00 60 */	lwz r8, 0x60(r3)
/* 8143CDC4 | 80 E3 00 58 */	lwz r7, 0x58(r3)
/* 8143CDC8 | 80 C3 00 68 */	lwz r6, 0x68(r3)
/* 8143CDCC | 80 A3 00 6C */	lwz r5, 0x6c(r3)
/* 8143CDD0 | 80 83 00 70 */	lwz r4, 0x70(r3)
/* 8143CDD4 | 80 03 00 74 */	lwz r0, 0x74(r3)
/* 8143CDD8 | 91 43 00 44 */	stw r10, 0x44(r3)
/* 8143CDDC | 91 23 00 14 */	stw r9, 0x14(r3)
/* 8143CDE0 | 91 03 00 18 */	stw r8, 0x18(r3)
/* 8143CDE4 | 90 E3 00 1C */	stw r7, 0x1c(r3)
/* 8143CDE8 | 90 C3 00 20 */	stw r6, 0x20(r3)
/* 8143CDEC | 90 A3 00 24 */	stw r5, 0x24(r3)
/* 8143CDF0 | 90 83 00 28 */	stw r4, 0x28(r3)
/* 8143CDF4 | 90 03 00 2C */	stw r0, 0x2c(r3)
/* 8143CDF8 | 4B FF AC 59 */	bl init__Q29textinput7ManagerFv
/* 8143CDFC | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8143CE00 | 38 80 00 00 */	li r4, 0x0
/* 8143CE04 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143CE08 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8143CE0C | 7D 89 03 A6 */	mtctr r12
/* 8143CE10 | 4E 80 04 21 */	bctrl
/* 8143CE14 | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8143CE18 | 38 80 00 00 */	li r4, 0x0
/* 8143CE1C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143CE20 | 81 8C 00 B0 */	lwz r12, 0xb0(r12)
/* 8143CE24 | 7D 89 03 A6 */	mtctr r12
/* 8143CE28 | 4E 80 04 21 */	bctrl
/* 8143CE2C | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8143CE30 | 38 80 00 01 */	li r4, 0x1
/* 8143CE34 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143CE38 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8143CE3C | 7D 89 03 A6 */	mtctr r12
/* 8143CE40 | 4E 80 04 21 */	bctrl
/* 8143CE44 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8143CE48 | 38 80 00 00 */	li r4, 0x0
/* 8143CE4C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143CE50 | 81 8C 01 10 */	lwz r12, 0x110(r12)
/* 8143CE54 | 7D 89 03 A6 */	mtctr r12
/* 8143CE58 | 4E 80 04 21 */	bctrl
/* 8143CE5C | 80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8143CE60 | 38 80 00 00 */	li r4, 0x0
/* 8143CE64 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143CE68 | 81 8C 01 08 */	lwz r12, 0x108(r12)
/* 8143CE6C | 7D 89 03 A6 */	mtctr r12
/* 8143CE70 | 4E 80 04 21 */	bctrl
/* 8143CE74 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8143CE78 | 38 80 00 00 */	li r4, 0x0
/* 8143CE7C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143CE80 | 81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8143CE84 | 7D 89 03 A6 */	mtctr r12
/* 8143CE88 | 4E 80 04 21 */	bctrl
/* 8143CE8C | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8143CE90 | 38 80 00 00 */	li r4, 0x0
/* 8143CE94 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143CE98 | 81 8C 01 30 */	lwz r12, 0x130(r12)
/* 8143CE9C | 7D 89 03 A6 */	mtctr r12
/* 8143CEA0 | 4E 80 04 21 */	bctrl
/* 8143CEA4 | 80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8143CEA8 | 38 80 00 00 */	li r4, 0x0
/* 8143CEAC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143CEB0 | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 8143CEB4 | 7D 89 03 A6 */	mtctr r12
/* 8143CEB8 | 4E 80 04 21 */	bctrl
/* 8143CEBC | 80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8143CEC0 | 38 80 00 00 */	li r4, 0x0
/* 8143CEC4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143CEC8 | 81 8C 01 30 */	lwz r12, 0x130(r12)
/* 8143CECC | 7D 89 03 A6 */	mtctr r12
/* 8143CED0 | 4E 80 04 21 */	bctrl
/* 8143CED4 | 80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8143CED8 | 4B FE 7A 15 */	bl dirtyCacheAll__Q39textinput9inputform4BaseFv
/* 8143CEDC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143CEE0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143CEE4 | 7C 08 03 A6 */	mtlr r0
/* 8143CEE8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143CEEC | 4E 80 00 20 */	blr
.endfn configNumeric__Q49textinput6extend4memo7ManagerFv

# .text:0xF68 | 0x8143CEF0 | size: 0x58
# textinput::extend::memo::Manager::configNumericWithSeparator()
.fn configNumericWithSeparator__Q49textinput6extend4memo7ManagerFv, global
/* 8143CEF0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143CEF4 | 7C 08 02 A6 */	mflr r0
/* 8143CEF8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143CEFC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143CF00 | 7C 7F 1B 78 */	mr r31, r3
/* 8143CF04 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143CF08 | 81 8C 01 00 */	lwz r12, 0x100(r12)
/* 8143CF0C | 7D 89 03 A6 */	mtctr r12
/* 8143CF10 | 4E 80 04 21 */	bctrl
/* 8143CF14 | 38 00 00 0B */	li r0, 0xb
/* 8143CF18 | 80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8143CF1C | 90 1F 00 44 */	stw r0, 0x44(r31)
/* 8143CF20 | 38 80 00 01 */	li r4, 0x1
/* 8143CF24 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143CF28 | 81 8C 02 3C */	lwz r12, 0x23c(r12)
/* 8143CF2C | 7D 89 03 A6 */	mtctr r12
/* 8143CF30 | 4E 80 04 21 */	bctrl
/* 8143CF34 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143CF38 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143CF3C | 7C 08 03 A6 */	mtlr r0
/* 8143CF40 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143CF44 | 4E 80 00 20 */	blr
.endfn configNumericWithSeparator__Q49textinput6extend4memo7ManagerFv

# .text:0xFC0 | 0x8143CF48 | size: 0x1A4
# textinput::extend::memo::Manager::configLetter()
.fn configLetter__Q49textinput6extend4memo7ManagerFv, global
/* 8143CF48 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8143CF4C | 7C 08 02 A6 */	mflr r0
/* 8143CF50 | 39 40 00 01 */	li r10, 0x1
/* 8143CF54 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8143CF58 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8143CF5C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8143CF60 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8143CF64 | 7C 7D 1B 78 */	mr r29, r3
/* 8143CF68 | 81 23 00 5C */	lwz r9, 0x5c(r3)
/* 8143CF6C | 81 03 00 60 */	lwz r8, 0x60(r3)
/* 8143CF70 | 80 E3 00 50 */	lwz r7, 0x50(r3)
/* 8143CF74 | 80 C3 00 68 */	lwz r6, 0x68(r3)
/* 8143CF78 | 80 A3 00 6C */	lwz r5, 0x6c(r3)
/* 8143CF7C | 80 83 00 70 */	lwz r4, 0x70(r3)
/* 8143CF80 | 80 03 00 74 */	lwz r0, 0x74(r3)
/* 8143CF84 | 91 43 00 44 */	stw r10, 0x44(r3)
/* 8143CF88 | 91 23 00 14 */	stw r9, 0x14(r3)
/* 8143CF8C | 91 03 00 18 */	stw r8, 0x18(r3)
/* 8143CF90 | 90 E3 00 1C */	stw r7, 0x1c(r3)
/* 8143CF94 | 90 C3 00 20 */	stw r6, 0x20(r3)
/* 8143CF98 | 90 A3 00 24 */	stw r5, 0x24(r3)
/* 8143CF9C | 90 83 00 28 */	stw r4, 0x28(r3)
/* 8143CFA0 | 90 03 00 2C */	stw r0, 0x2c(r3)
/* 8143CFA4 | 4B FF AA AD */	bl init__Q29textinput7ManagerFv
/* 8143CFA8 | 80 7D 00 24 */	lwz r3, 0x24(r29)
/* 8143CFAC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143CFB0 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8143CFB4 | 7D 89 03 A6 */	mtctr r12
/* 8143CFB8 | 4E 80 04 21 */	bctrl
/* 8143CFBC | 54 60 10 3A */	slwi r0, r3, 2
/* 8143CFC0 | 80 7D 00 24 */	lwz r3, 0x24(r29)
/* 8143CFC4 | 3C C0 81 66 */	lis r6, cLanguageIndependentString__Q29textinput15langindependent@ha
/* 8143CFC8 | 38 80 00 01 */	li r4, 0x1
/* 8143CFCC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143CFD0 | 38 C6 7C 88 */	addi r6, r6, cLanguageIndependentString__Q29textinput15langindependent@l
/* 8143CFD4 | 7C A6 02 14 */	add r5, r6, r0
/* 8143CFD8 | 7F E6 00 2E */	lwzx r31, r6, r0
/* 8143CFDC | 81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8143CFE0 | 83 C5 01 68 */	lwz r30, 0x168(r5)
/* 8143CFE4 | 7D 89 03 A6 */	mtctr r12
/* 8143CFE8 | 4E 80 04 21 */	bctrl
/* 8143CFEC | 80 7D 00 24 */	lwz r3, 0x24(r29)
/* 8143CFF0 | 7F E4 FB 78 */	mr r4, r31
/* 8143CFF4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143CFF8 | 81 8C 00 C4 */	lwz r12, 0xc4(r12)
/* 8143CFFC | 7D 89 03 A6 */	mtctr r12
/* 8143D000 | 4E 80 04 21 */	bctrl
/* 8143D004 | 80 7D 00 24 */	lwz r3, 0x24(r29)
/* 8143D008 | 7F C4 F3 78 */	mr r4, r30
/* 8143D00C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D010 | 81 8C 00 C8 */	lwz r12, 0xc8(r12)
/* 8143D014 | 7D 89 03 A6 */	mtctr r12
/* 8143D018 | 4E 80 04 21 */	bctrl
/* 8143D01C | 80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 8143D020 | 38 80 00 01 */	li r4, 0x1
/* 8143D024 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D028 | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 8143D02C | 7D 89 03 A6 */	mtctr r12
/* 8143D030 | 4E 80 04 21 */	bctrl
/* 8143D034 | 80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 8143D038 | 38 80 00 01 */	li r4, 0x1
/* 8143D03C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D040 | 81 8C 01 30 */	lwz r12, 0x130(r12)
/* 8143D044 | 7D 89 03 A6 */	mtctr r12
/* 8143D048 | 4E 80 04 21 */	bctrl
/* 8143D04C | 80 1D 00 34 */	lwz r0, 0x34(r29)
/* 8143D050 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8143D054 | 41 82 00 24 */	beq .L_8143D078
/* 8143D058 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8143D05C | 41 82 00 1C */	beq .L_8143D078
/* 8143D060 | 80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 8143D064 | 38 80 00 00 */	li r4, 0x0
/* 8143D068 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D06C | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 8143D070 | 7D 89 03 A6 */	mtctr r12
/* 8143D074 | 4E 80 04 21 */	bctrl
.L_8143D078:
/* 8143D078 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8143D07C | 7F A3 EB 78 */	mr r3, r29
/* 8143D080 | 81 8C 00 F0 */	lwz r12, 0xf0(r12)
/* 8143D084 | 7D 89 03 A6 */	mtctr r12
/* 8143D088 | 4E 80 04 21 */	bctrl
/* 8143D08C | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8143D090 | 7F A3 EB 78 */	mr r3, r29
/* 8143D094 | 38 80 01 00 */	li r4, 0x100
/* 8143D098 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8143D09C | 7D 89 03 A6 */	mtctr r12
/* 8143D0A0 | 4E 80 04 21 */	bctrl
/* 8143D0A4 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8143D0A8 | 7F A3 EB 78 */	mr r3, r29
/* 8143D0AC | 38 80 00 10 */	li r4, 0x10
/* 8143D0B0 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8143D0B4 | 7D 89 03 A6 */	mtctr r12
/* 8143D0B8 | 4E 80 04 21 */	bctrl
/* 8143D0BC | C0 02 8A 5C */	lfs f0, lbl_81694E5C@sda21(r0)
/* 8143D0C0 | 38 6D 94 98 */	li r3, lbl_816974D8@sda21
/* 8143D0C4 | D0 03 00 04 */	stfs f0, 0x4(r3)
/* 8143D0C8 | 80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 8143D0CC | 4B FE 78 21 */	bl dirtyCacheAll__Q39textinput9inputform4BaseFv
/* 8143D0D0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8143D0D4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8143D0D8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8143D0DC | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8143D0E0 | 7C 08 03 A6 */	mtlr r0
/* 8143D0E4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8143D0E8 | 4E 80 00 20 */	blr
.endfn configLetter__Q49textinput6extend4memo7ManagerFv

# .text:0x1164 | 0x8143D0EC | size: 0x1AC
# textinput::extend::memo::Manager::configPhotoLetter()
.fn configPhotoLetter__Q49textinput6extend4memo7ManagerFv, global
/* 8143D0EC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143D0F0 | 7C 08 02 A6 */	mflr r0
/* 8143D0F4 | 39 40 00 02 */	li r10, 0x2
/* 8143D0F8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143D0FC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143D100 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8143D104 | 7C 7E 1B 78 */	mr r30, r3
/* 8143D108 | 81 23 00 5C */	lwz r9, 0x5c(r3)
/* 8143D10C | 81 03 00 60 */	lwz r8, 0x60(r3)
/* 8143D110 | 80 E3 00 54 */	lwz r7, 0x54(r3)
/* 8143D114 | 80 C3 00 68 */	lwz r6, 0x68(r3)
/* 8143D118 | 80 A3 00 6C */	lwz r5, 0x6c(r3)
/* 8143D11C | 80 83 00 70 */	lwz r4, 0x70(r3)
/* 8143D120 | 80 03 00 74 */	lwz r0, 0x74(r3)
/* 8143D124 | 91 43 00 44 */	stw r10, 0x44(r3)
/* 8143D128 | 91 23 00 14 */	stw r9, 0x14(r3)
/* 8143D12C | 91 03 00 18 */	stw r8, 0x18(r3)
/* 8143D130 | 90 E3 00 1C */	stw r7, 0x1c(r3)
/* 8143D134 | 90 C3 00 20 */	stw r6, 0x20(r3)
/* 8143D138 | 90 A3 00 24 */	stw r5, 0x24(r3)
/* 8143D13C | 90 83 00 28 */	stw r4, 0x28(r3)
/* 8143D140 | 90 03 00 2C */	stw r0, 0x2c(r3)
/* 8143D144 | 4B FF A9 0D */	bl init__Q29textinput7ManagerFv
/* 8143D148 | 80 7E 00 24 */	lwz r3, 0x24(r30)
/* 8143D14C | 38 80 00 01 */	li r4, 0x1
/* 8143D150 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D154 | 81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8143D158 | 7D 89 03 A6 */	mtctr r12
/* 8143D15C | 4E 80 04 21 */	bctrl
/* 8143D160 | 80 7E 00 24 */	lwz r3, 0x24(r30)
/* 8143D164 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D168 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8143D16C | 7D 89 03 A6 */	mtctr r12
/* 8143D170 | 4E 80 04 21 */	bctrl
/* 8143D174 | 54 60 10 3A */	slwi r0, r3, 2
/* 8143D178 | 80 7E 00 24 */	lwz r3, 0x24(r30)
/* 8143D17C | 3F E0 81 66 */	lis r31, cLanguageIndependentString__Q29textinput15langindependent@ha
/* 8143D180 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D184 | 3B FF 7C 88 */	addi r31, r31, cLanguageIndependentString__Q29textinput15langindependent@l
/* 8143D188 | 7C 9F 00 2E */	lwzx r4, r31, r0
/* 8143D18C | 81 8C 00 C4 */	lwz r12, 0xc4(r12)
/* 8143D190 | 7D 89 03 A6 */	mtctr r12
/* 8143D194 | 4E 80 04 21 */	bctrl
/* 8143D198 | 80 7E 00 24 */	lwz r3, 0x24(r30)
/* 8143D19C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D1A0 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8143D1A4 | 7D 89 03 A6 */	mtctr r12
/* 8143D1A8 | 4E 80 04 21 */	bctrl
/* 8143D1AC | 54 60 10 3A */	slwi r0, r3, 2
/* 8143D1B0 | 80 7E 00 24 */	lwz r3, 0x24(r30)
/* 8143D1B4 | 7C 9F 02 14 */	add r4, r31, r0
/* 8143D1B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D1BC | 80 84 01 68 */	lwz r4, 0x168(r4)
/* 8143D1C0 | 81 8C 00 C8 */	lwz r12, 0xc8(r12)
/* 8143D1C4 | 7D 89 03 A6 */	mtctr r12
/* 8143D1C8 | 4E 80 04 21 */	bctrl
/* 8143D1CC | 80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8143D1D0 | 38 80 00 01 */	li r4, 0x1
/* 8143D1D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D1D8 | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 8143D1DC | 7D 89 03 A6 */	mtctr r12
/* 8143D1E0 | 4E 80 04 21 */	bctrl
/* 8143D1E4 | 80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8143D1E8 | 38 80 00 01 */	li r4, 0x1
/* 8143D1EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D1F0 | 81 8C 01 30 */	lwz r12, 0x130(r12)
/* 8143D1F4 | 7D 89 03 A6 */	mtctr r12
/* 8143D1F8 | 4E 80 04 21 */	bctrl
/* 8143D1FC | 80 1E 00 34 */	lwz r0, 0x34(r30)
/* 8143D200 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8143D204 | 41 82 00 24 */	beq .L_8143D228
/* 8143D208 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8143D20C | 41 82 00 1C */	beq .L_8143D228
/* 8143D210 | 80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8143D214 | 38 80 00 00 */	li r4, 0x0
/* 8143D218 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D21C | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 8143D220 | 7D 89 03 A6 */	mtctr r12
/* 8143D224 | 4E 80 04 21 */	bctrl
.L_8143D228:
/* 8143D228 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8143D22C | 7F C3 F3 78 */	mr r3, r30
/* 8143D230 | 81 8C 00 F0 */	lwz r12, 0xf0(r12)
/* 8143D234 | 7D 89 03 A6 */	mtctr r12
/* 8143D238 | 4E 80 04 21 */	bctrl
/* 8143D23C | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8143D240 | 7F C3 F3 78 */	mr r3, r30
/* 8143D244 | 38 80 01 00 */	li r4, 0x100
/* 8143D248 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8143D24C | 7D 89 03 A6 */	mtctr r12
/* 8143D250 | 4E 80 04 21 */	bctrl
/* 8143D254 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8143D258 | 7F C3 F3 78 */	mr r3, r30
/* 8143D25C | 38 80 00 10 */	li r4, 0x10
/* 8143D260 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8143D264 | 7D 89 03 A6 */	mtctr r12
/* 8143D268 | 4E 80 04 21 */	bctrl
/* 8143D26C | C0 02 8A 60 */	lfs f0, lbl_81694E60@sda21(r0)
/* 8143D270 | 38 6D 94 98 */	li r3, lbl_816974D8@sda21
/* 8143D274 | D0 03 00 04 */	stfs f0, 0x4(r3)
/* 8143D278 | 80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8143D27C | 4B FE 76 71 */	bl dirtyCacheAll__Q39textinput9inputform4BaseFv
/* 8143D280 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143D284 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143D288 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8143D28C | 7C 08 03 A6 */	mtlr r0
/* 8143D290 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143D294 | 4E 80 00 20 */	blr
.endfn configPhotoLetter__Q49textinput6extend4memo7ManagerFv

# .text:0x1310 | 0x8143D298 | size: 0x118
# textinput::extend::memo::Manager::configNormalWithoutLineFeed()
.fn configNormalWithoutLineFeed__Q49textinput6extend4memo7ManagerFv, global
/* 8143D298 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143D29C | 7C 08 02 A6 */	mflr r0
/* 8143D2A0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143D2A4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143D2A8 | 7C 7F 1B 78 */	mr r31, r3
/* 8143D2AC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D2B0 | 81 8C 00 F4 */	lwz r12, 0xf4(r12)
/* 8143D2B4 | 7D 89 03 A6 */	mtctr r12
/* 8143D2B8 | 4E 80 04 21 */	bctrl
/* 8143D2BC | 38 00 00 04 */	li r0, 0x4
/* 8143D2C0 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8143D2C4 | 90 1F 00 44 */	stw r0, 0x44(r31)
/* 8143D2C8 | 38 80 00 00 */	li r4, 0x0
/* 8143D2CC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D2D0 | 81 8C 01 10 */	lwz r12, 0x110(r12)
/* 8143D2D4 | 7D 89 03 A6 */	mtctr r12
/* 8143D2D8 | 4E 80 04 21 */	bctrl
/* 8143D2DC | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8143D2E0 | 38 80 00 00 */	li r4, 0x0
/* 8143D2E4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D2E8 | 81 8C 01 2C */	lwz r12, 0x12c(r12)
/* 8143D2EC | 7D 89 03 A6 */	mtctr r12
/* 8143D2F0 | 4E 80 04 21 */	bctrl
/* 8143D2F4 | 80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8143D2F8 | 38 80 00 00 */	li r4, 0x0
/* 8143D2FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D300 | 81 8C 01 08 */	lwz r12, 0x108(r12)
/* 8143D304 | 7D 89 03 A6 */	mtctr r12
/* 8143D308 | 4E 80 04 21 */	bctrl
/* 8143D30C | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8143D310 | 38 80 00 00 */	li r4, 0x0
/* 8143D314 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D318 | 81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8143D31C | 7D 89 03 A6 */	mtctr r12
/* 8143D320 | 4E 80 04 21 */	bctrl
/* 8143D324 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8143D328 | 38 80 00 00 */	li r4, 0x0
/* 8143D32C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D330 | 81 8C 01 30 */	lwz r12, 0x130(r12)
/* 8143D334 | 7D 89 03 A6 */	mtctr r12
/* 8143D338 | 4E 80 04 21 */	bctrl
/* 8143D33C | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8143D340 | 38 80 00 00 */	li r4, 0x0
/* 8143D344 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D348 | 81 8C 01 18 */	lwz r12, 0x118(r12)
/* 8143D34C | 7D 89 03 A6 */	mtctr r12
/* 8143D350 | 4E 80 04 21 */	bctrl
/* 8143D354 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8143D358 | 38 80 00 00 */	li r4, 0x0
/* 8143D35C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D360 | 81 8C 01 34 */	lwz r12, 0x134(r12)
/* 8143D364 | 7D 89 03 A6 */	mtctr r12
/* 8143D368 | 4E 80 04 21 */	bctrl
/* 8143D36C | 80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8143D370 | 38 80 00 00 */	li r4, 0x0
/* 8143D374 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D378 | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 8143D37C | 7D 89 03 A6 */	mtctr r12
/* 8143D380 | 4E 80 04 21 */	bctrl
/* 8143D384 | 80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8143D388 | 38 80 00 00 */	li r4, 0x0
/* 8143D38C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D390 | 81 8C 01 30 */	lwz r12, 0x130(r12)
/* 8143D394 | 7D 89 03 A6 */	mtctr r12
/* 8143D398 | 4E 80 04 21 */	bctrl
/* 8143D39C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143D3A0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143D3A4 | 7C 08 03 A6 */	mtlr r0
/* 8143D3A8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143D3AC | 4E 80 00 20 */	blr
.endfn configNormalWithoutLineFeed__Q49textinput6extend4memo7ManagerFv

# .text:0x1428 | 0x8143D3B0 | size: 0x160
# textinput::extend::memo::Manager::configNormalBigTextWithoutLineFeed()
.fn configNormalBigTextWithoutLineFeed__Q49textinput6extend4memo7ManagerFv, global
/* 8143D3B0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143D3B4 | 7C 08 02 A6 */	mflr r0
/* 8143D3B8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143D3BC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143D3C0 | 7C 7F 1B 78 */	mr r31, r3
/* 8143D3C4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D3C8 | 81 8C 00 F4 */	lwz r12, 0xf4(r12)
/* 8143D3CC | 7D 89 03 A6 */	mtctr r12
/* 8143D3D0 | 4E 80 04 21 */	bctrl
/* 8143D3D4 | 80 1F 00 58 */	lwz r0, 0x58(r31)
/* 8143D3D8 | 7F E3 FB 78 */	mr r3, r31
/* 8143D3DC | 90 1F 00 1C */	stw r0, 0x1c(r31)
/* 8143D3E0 | 4B FF A6 71 */	bl init__Q29textinput7ManagerFv
/* 8143D3E4 | 38 00 00 05 */	li r0, 0x5
/* 8143D3E8 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8143D3EC | 90 1F 00 44 */	stw r0, 0x44(r31)
/* 8143D3F0 | 38 80 00 00 */	li r4, 0x0
/* 8143D3F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D3F8 | 81 8C 01 10 */	lwz r12, 0x110(r12)
/* 8143D3FC | 7D 89 03 A6 */	mtctr r12
/* 8143D400 | 4E 80 04 21 */	bctrl
/* 8143D404 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8143D408 | 38 80 00 00 */	li r4, 0x0
/* 8143D40C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D410 | 81 8C 01 2C */	lwz r12, 0x12c(r12)
/* 8143D414 | 7D 89 03 A6 */	mtctr r12
/* 8143D418 | 4E 80 04 21 */	bctrl
/* 8143D41C | 80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8143D420 | 38 80 00 00 */	li r4, 0x0
/* 8143D424 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D428 | 81 8C 01 08 */	lwz r12, 0x108(r12)
/* 8143D42C | 7D 89 03 A6 */	mtctr r12
/* 8143D430 | 4E 80 04 21 */	bctrl
/* 8143D434 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8143D438 | 38 80 00 00 */	li r4, 0x0
/* 8143D43C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D440 | 81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8143D444 | 7D 89 03 A6 */	mtctr r12
/* 8143D448 | 4E 80 04 21 */	bctrl
/* 8143D44C | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8143D450 | 38 80 00 00 */	li r4, 0x0
/* 8143D454 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D458 | 81 8C 01 30 */	lwz r12, 0x130(r12)
/* 8143D45C | 7D 89 03 A6 */	mtctr r12
/* 8143D460 | 4E 80 04 21 */	bctrl
/* 8143D464 | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8143D468 | 38 80 00 01 */	li r4, 0x1
/* 8143D46C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D470 | 81 8C 00 B0 */	lwz r12, 0xb0(r12)
/* 8143D474 | 7D 89 03 A6 */	mtctr r12
/* 8143D478 | 4E 80 04 21 */	bctrl
/* 8143D47C | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8143D480 | 38 80 00 01 */	li r4, 0x1
/* 8143D484 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D488 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8143D48C | 7D 89 03 A6 */	mtctr r12
/* 8143D490 | 4E 80 04 21 */	bctrl
/* 8143D494 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8143D498 | 38 80 00 00 */	li r4, 0x0
/* 8143D49C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D4A0 | 81 8C 01 18 */	lwz r12, 0x118(r12)
/* 8143D4A4 | 7D 89 03 A6 */	mtctr r12
/* 8143D4A8 | 4E 80 04 21 */	bctrl
/* 8143D4AC | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8143D4B0 | 38 80 00 00 */	li r4, 0x0
/* 8143D4B4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D4B8 | 81 8C 01 34 */	lwz r12, 0x134(r12)
/* 8143D4BC | 7D 89 03 A6 */	mtctr r12
/* 8143D4C0 | 4E 80 04 21 */	bctrl
/* 8143D4C4 | 80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8143D4C8 | 38 80 00 00 */	li r4, 0x0
/* 8143D4CC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D4D0 | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 8143D4D4 | 7D 89 03 A6 */	mtctr r12
/* 8143D4D8 | 4E 80 04 21 */	bctrl
/* 8143D4DC | 80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8143D4E0 | 38 80 00 00 */	li r4, 0x0
/* 8143D4E4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D4E8 | 81 8C 01 30 */	lwz r12, 0x130(r12)
/* 8143D4EC | 7D 89 03 A6 */	mtctr r12
/* 8143D4F0 | 4E 80 04 21 */	bctrl
/* 8143D4F4 | 80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8143D4F8 | 4B FE 73 F5 */	bl dirtyCacheAll__Q39textinput9inputform4BaseFv
/* 8143D4FC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143D500 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143D504 | 7C 08 03 A6 */	mtlr r0
/* 8143D508 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143D50C | 4E 80 00 20 */	blr
.endfn configNormalBigTextWithoutLineFeed__Q49textinput6extend4memo7ManagerFv

# .text:0x1588 | 0x8143D510 | size: 0x194
# textinput::extend::memo::Manager::configOnlyQwertyWithoutLineFeedAndSign()
.fn configOnlyQwertyWithoutLineFeedAndSign__Q49textinput6extend4memo7ManagerFv, global
/* 8143D510 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143D514 | 7C 08 02 A6 */	mflr r0
/* 8143D518 | 39 40 00 06 */	li r10, 0x6
/* 8143D51C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143D520 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143D524 | 7C 7F 1B 78 */	mr r31, r3
/* 8143D528 | 81 23 00 5C */	lwz r9, 0x5c(r3)
/* 8143D52C | 81 03 00 60 */	lwz r8, 0x60(r3)
/* 8143D530 | 80 E3 00 64 */	lwz r7, 0x64(r3)
/* 8143D534 | 80 C3 00 68 */	lwz r6, 0x68(r3)
/* 8143D538 | 80 A3 00 6C */	lwz r5, 0x6c(r3)
/* 8143D53C | 80 83 00 70 */	lwz r4, 0x70(r3)
/* 8143D540 | 80 03 00 74 */	lwz r0, 0x74(r3)
/* 8143D544 | 91 43 00 44 */	stw r10, 0x44(r3)
/* 8143D548 | 91 23 00 14 */	stw r9, 0x14(r3)
/* 8143D54C | 91 03 00 18 */	stw r8, 0x18(r3)
/* 8143D550 | 90 E3 00 1C */	stw r7, 0x1c(r3)
/* 8143D554 | 90 C3 00 20 */	stw r6, 0x20(r3)
/* 8143D558 | 90 A3 00 24 */	stw r5, 0x24(r3)
/* 8143D55C | 90 83 00 28 */	stw r4, 0x28(r3)
/* 8143D560 | 90 03 00 2C */	stw r0, 0x2c(r3)
/* 8143D564 | 4B FF A4 ED */	bl init__Q29textinput7ManagerFv
/* 8143D568 | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8143D56C | 38 80 00 01 */	li r4, 0x1
/* 8143D570 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D574 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8143D578 | 7D 89 03 A6 */	mtctr r12
/* 8143D57C | 4E 80 04 21 */	bctrl
/* 8143D580 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8143D584 | 38 80 00 01 */	li r4, 0x1
/* 8143D588 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D58C | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8143D590 | 7D 89 03 A6 */	mtctr r12
/* 8143D594 | 4E 80 04 21 */	bctrl
/* 8143D598 | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8143D59C | 38 80 00 00 */	li r4, 0x0
/* 8143D5A0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D5A4 | 81 8C 00 B0 */	lwz r12, 0xb0(r12)
/* 8143D5A8 | 7D 89 03 A6 */	mtctr r12
/* 8143D5AC | 4E 80 04 21 */	bctrl
/* 8143D5B0 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8143D5B4 | 38 80 00 00 */	li r4, 0x0
/* 8143D5B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D5BC | 81 8C 01 2C */	lwz r12, 0x12c(r12)
/* 8143D5C0 | 7D 89 03 A6 */	mtctr r12
/* 8143D5C4 | 4E 80 04 21 */	bctrl
/* 8143D5C8 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8143D5CC | 38 80 00 00 */	li r4, 0x0
/* 8143D5D0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D5D4 | 81 8C 01 10 */	lwz r12, 0x110(r12)
/* 8143D5D8 | 7D 89 03 A6 */	mtctr r12
/* 8143D5DC | 4E 80 04 21 */	bctrl
/* 8143D5E0 | 80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8143D5E4 | 38 80 00 00 */	li r4, 0x0
/* 8143D5E8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D5EC | 81 8C 01 08 */	lwz r12, 0x108(r12)
/* 8143D5F0 | 7D 89 03 A6 */	mtctr r12
/* 8143D5F4 | 4E 80 04 21 */	bctrl
/* 8143D5F8 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8143D5FC | 38 80 00 00 */	li r4, 0x0
/* 8143D600 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D604 | 81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8143D608 | 7D 89 03 A6 */	mtctr r12
/* 8143D60C | 4E 80 04 21 */	bctrl
/* 8143D610 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8143D614 | 38 80 00 00 */	li r4, 0x0
/* 8143D618 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D61C | 81 8C 01 30 */	lwz r12, 0x130(r12)
/* 8143D620 | 7D 89 03 A6 */	mtctr r12
/* 8143D624 | 4E 80 04 21 */	bctrl
/* 8143D628 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8143D62C | 38 80 00 00 */	li r4, 0x0
/* 8143D630 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D634 | 81 8C 01 18 */	lwz r12, 0x118(r12)
/* 8143D638 | 7D 89 03 A6 */	mtctr r12
/* 8143D63C | 4E 80 04 21 */	bctrl
/* 8143D640 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8143D644 | 38 80 00 00 */	li r4, 0x0
/* 8143D648 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D64C | 81 8C 01 34 */	lwz r12, 0x134(r12)
/* 8143D650 | 7D 89 03 A6 */	mtctr r12
/* 8143D654 | 4E 80 04 21 */	bctrl
/* 8143D658 | 80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8143D65C | 38 80 00 00 */	li r4, 0x0
/* 8143D660 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D664 | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 8143D668 | 7D 89 03 A6 */	mtctr r12
/* 8143D66C | 4E 80 04 21 */	bctrl
/* 8143D670 | 80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8143D674 | 38 80 00 00 */	li r4, 0x0
/* 8143D678 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D67C | 81 8C 01 30 */	lwz r12, 0x130(r12)
/* 8143D680 | 7D 89 03 A6 */	mtctr r12
/* 8143D684 | 4E 80 04 21 */	bctrl
/* 8143D688 | 80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8143D68C | 4B FE 72 61 */	bl dirtyCacheAll__Q39textinput9inputform4BaseFv
/* 8143D690 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143D694 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143D698 | 7C 08 03 A6 */	mtlr r0
/* 8143D69C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143D6A0 | 4E 80 00 20 */	blr
.endfn configOnlyQwertyWithoutLineFeedAndSign__Q49textinput6extend4memo7ManagerFv

# .text:0x171C | 0x8143D6A4 | size: 0x194
# textinput::extend::memo::Manager::configOnlyQwertyBigTextWithoutLineFeedAndSign()
.fn configOnlyQwertyBigTextWithoutLineFeedAndSign__Q49textinput6extend4memo7ManagerFv, global
/* 8143D6A4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143D6A8 | 7C 08 02 A6 */	mflr r0
/* 8143D6AC | 39 40 00 07 */	li r10, 0x7
/* 8143D6B0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143D6B4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143D6B8 | 7C 7F 1B 78 */	mr r31, r3
/* 8143D6BC | 81 23 00 5C */	lwz r9, 0x5c(r3)
/* 8143D6C0 | 81 03 00 60 */	lwz r8, 0x60(r3)
/* 8143D6C4 | 80 E3 00 58 */	lwz r7, 0x58(r3)
/* 8143D6C8 | 80 C3 00 68 */	lwz r6, 0x68(r3)
/* 8143D6CC | 80 A3 00 6C */	lwz r5, 0x6c(r3)
/* 8143D6D0 | 80 83 00 70 */	lwz r4, 0x70(r3)
/* 8143D6D4 | 80 03 00 74 */	lwz r0, 0x74(r3)
/* 8143D6D8 | 91 43 00 44 */	stw r10, 0x44(r3)
/* 8143D6DC | 91 23 00 14 */	stw r9, 0x14(r3)
/* 8143D6E0 | 91 03 00 18 */	stw r8, 0x18(r3)
/* 8143D6E4 | 90 E3 00 1C */	stw r7, 0x1c(r3)
/* 8143D6E8 | 90 C3 00 20 */	stw r6, 0x20(r3)
/* 8143D6EC | 90 A3 00 24 */	stw r5, 0x24(r3)
/* 8143D6F0 | 90 83 00 28 */	stw r4, 0x28(r3)
/* 8143D6F4 | 90 03 00 2C */	stw r0, 0x2c(r3)
/* 8143D6F8 | 4B FF A3 59 */	bl init__Q29textinput7ManagerFv
/* 8143D6FC | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8143D700 | 38 80 00 01 */	li r4, 0x1
/* 8143D704 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D708 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8143D70C | 7D 89 03 A6 */	mtctr r12
/* 8143D710 | 4E 80 04 21 */	bctrl
/* 8143D714 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8143D718 | 38 80 00 01 */	li r4, 0x1
/* 8143D71C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D720 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8143D724 | 7D 89 03 A6 */	mtctr r12
/* 8143D728 | 4E 80 04 21 */	bctrl
/* 8143D72C | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8143D730 | 38 80 00 00 */	li r4, 0x0
/* 8143D734 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D738 | 81 8C 00 B0 */	lwz r12, 0xb0(r12)
/* 8143D73C | 7D 89 03 A6 */	mtctr r12
/* 8143D740 | 4E 80 04 21 */	bctrl
/* 8143D744 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8143D748 | 38 80 00 00 */	li r4, 0x0
/* 8143D74C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D750 | 81 8C 01 2C */	lwz r12, 0x12c(r12)
/* 8143D754 | 7D 89 03 A6 */	mtctr r12
/* 8143D758 | 4E 80 04 21 */	bctrl
/* 8143D75C | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8143D760 | 38 80 00 00 */	li r4, 0x0
/* 8143D764 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D768 | 81 8C 01 10 */	lwz r12, 0x110(r12)
/* 8143D76C | 7D 89 03 A6 */	mtctr r12
/* 8143D770 | 4E 80 04 21 */	bctrl
/* 8143D774 | 80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8143D778 | 38 80 00 00 */	li r4, 0x0
/* 8143D77C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D780 | 81 8C 01 08 */	lwz r12, 0x108(r12)
/* 8143D784 | 7D 89 03 A6 */	mtctr r12
/* 8143D788 | 4E 80 04 21 */	bctrl
/* 8143D78C | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8143D790 | 38 80 00 00 */	li r4, 0x0
/* 8143D794 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D798 | 81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8143D79C | 7D 89 03 A6 */	mtctr r12
/* 8143D7A0 | 4E 80 04 21 */	bctrl
/* 8143D7A4 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8143D7A8 | 38 80 00 00 */	li r4, 0x0
/* 8143D7AC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D7B0 | 81 8C 01 30 */	lwz r12, 0x130(r12)
/* 8143D7B4 | 7D 89 03 A6 */	mtctr r12
/* 8143D7B8 | 4E 80 04 21 */	bctrl
/* 8143D7BC | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8143D7C0 | 38 80 00 00 */	li r4, 0x0
/* 8143D7C4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D7C8 | 81 8C 01 18 */	lwz r12, 0x118(r12)
/* 8143D7CC | 7D 89 03 A6 */	mtctr r12
/* 8143D7D0 | 4E 80 04 21 */	bctrl
/* 8143D7D4 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8143D7D8 | 38 80 00 00 */	li r4, 0x0
/* 8143D7DC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D7E0 | 81 8C 01 34 */	lwz r12, 0x134(r12)
/* 8143D7E4 | 7D 89 03 A6 */	mtctr r12
/* 8143D7E8 | 4E 80 04 21 */	bctrl
/* 8143D7EC | 80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8143D7F0 | 38 80 00 00 */	li r4, 0x0
/* 8143D7F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D7F8 | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 8143D7FC | 7D 89 03 A6 */	mtctr r12
/* 8143D800 | 4E 80 04 21 */	bctrl
/* 8143D804 | 80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8143D808 | 38 80 00 00 */	li r4, 0x0
/* 8143D80C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D810 | 81 8C 01 30 */	lwz r12, 0x130(r12)
/* 8143D814 | 7D 89 03 A6 */	mtctr r12
/* 8143D818 | 4E 80 04 21 */	bctrl
/* 8143D81C | 80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8143D820 | 4B FE 70 CD */	bl dirtyCacheAll__Q39textinput9inputform4BaseFv
/* 8143D824 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143D828 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143D82C | 7C 08 03 A6 */	mtlr r0
/* 8143D830 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143D834 | 4E 80 00 20 */	blr
.endfn configOnlyQwertyBigTextWithoutLineFeedAndSign__Q49textinput6extend4memo7ManagerFv

# .text:0x18B0 | 0x8143D838 | size: 0x58
# textinput::extend::memo::Manager::configNumericWithDot()
.fn configNumericWithDot__Q49textinput6extend4memo7ManagerFv, global
/* 8143D838 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143D83C | 7C 08 02 A6 */	mflr r0
/* 8143D840 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143D844 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143D848 | 7C 7F 1B 78 */	mr r31, r3
/* 8143D84C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D850 | 81 8C 01 00 */	lwz r12, 0x100(r12)
/* 8143D854 | 7D 89 03 A6 */	mtctr r12
/* 8143D858 | 4E 80 04 21 */	bctrl
/* 8143D85C | 38 00 00 08 */	li r0, 0x8
/* 8143D860 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8143D864 | 90 1F 00 44 */	stw r0, 0x44(r31)
/* 8143D868 | 38 80 00 01 */	li r4, 0x1
/* 8143D86C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D870 | 81 8C 01 0C */	lwz r12, 0x10c(r12)
/* 8143D874 | 7D 89 03 A6 */	mtctr r12
/* 8143D878 | 4E 80 04 21 */	bctrl
/* 8143D87C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143D880 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143D884 | 7C 08 03 A6 */	mtlr r0
/* 8143D888 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143D88C | 4E 80 00 20 */	blr
.endfn configNumericWithDot__Q49textinput6extend4memo7ManagerFv

# .text:0x1908 | 0x8143D890 | size: 0x40
# textinput::extend::memo::Manager::configNumericBigTextWithDot()
.fn configNumericBigTextWithDot__Q49textinput6extend4memo7ManagerFv, global
/* 8143D890 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143D894 | 7C 08 02 A6 */	mflr r0
/* 8143D898 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143D89C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143D8A0 | 7C 7F 1B 78 */	mr r31, r3
/* 8143D8A4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D8A8 | 81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8143D8AC | 7D 89 03 A6 */	mtctr r12
/* 8143D8B0 | 4E 80 04 21 */	bctrl
/* 8143D8B4 | 38 00 00 09 */	li r0, 0x9
/* 8143D8B8 | 90 1F 00 44 */	stw r0, 0x44(r31)
/* 8143D8BC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143D8C0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143D8C4 | 7C 08 03 A6 */	mtlr r0
/* 8143D8C8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143D8CC | 4E 80 00 20 */	blr
.endfn configNumericBigTextWithDot__Q49textinput6extend4memo7ManagerFv

# .text:0x1948 | 0x8143D8D0 | size: 0x160
# textinput::extend::memo::Manager::configNormalBigTextWithoutLineFeedWithSign()
.fn configNormalBigTextWithoutLineFeedWithSign__Q49textinput6extend4memo7ManagerFv, global
/* 8143D8D0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143D8D4 | 7C 08 02 A6 */	mflr r0
/* 8143D8D8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143D8DC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143D8E0 | 7C 7F 1B 78 */	mr r31, r3
/* 8143D8E4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D8E8 | 81 8C 00 F4 */	lwz r12, 0xf4(r12)
/* 8143D8EC | 7D 89 03 A6 */	mtctr r12
/* 8143D8F0 | 4E 80 04 21 */	bctrl
/* 8143D8F4 | 80 1F 00 58 */	lwz r0, 0x58(r31)
/* 8143D8F8 | 7F E3 FB 78 */	mr r3, r31
/* 8143D8FC | 90 1F 00 1C */	stw r0, 0x1c(r31)
/* 8143D900 | 4B FF A1 51 */	bl init__Q29textinput7ManagerFv
/* 8143D904 | 38 00 00 0A */	li r0, 0xa
/* 8143D908 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8143D90C | 90 1F 00 44 */	stw r0, 0x44(r31)
/* 8143D910 | 38 80 00 00 */	li r4, 0x0
/* 8143D914 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D918 | 81 8C 01 10 */	lwz r12, 0x110(r12)
/* 8143D91C | 7D 89 03 A6 */	mtctr r12
/* 8143D920 | 4E 80 04 21 */	bctrl
/* 8143D924 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8143D928 | 38 80 00 00 */	li r4, 0x0
/* 8143D92C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D930 | 81 8C 01 2C */	lwz r12, 0x12c(r12)
/* 8143D934 | 7D 89 03 A6 */	mtctr r12
/* 8143D938 | 4E 80 04 21 */	bctrl
/* 8143D93C | 80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8143D940 | 38 80 00 00 */	li r4, 0x0
/* 8143D944 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D948 | 81 8C 01 08 */	lwz r12, 0x108(r12)
/* 8143D94C | 7D 89 03 A6 */	mtctr r12
/* 8143D950 | 4E 80 04 21 */	bctrl
/* 8143D954 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8143D958 | 38 80 00 00 */	li r4, 0x0
/* 8143D95C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D960 | 81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8143D964 | 7D 89 03 A6 */	mtctr r12
/* 8143D968 | 4E 80 04 21 */	bctrl
/* 8143D96C | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8143D970 | 38 80 00 00 */	li r4, 0x0
/* 8143D974 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D978 | 81 8C 01 30 */	lwz r12, 0x130(r12)
/* 8143D97C | 7D 89 03 A6 */	mtctr r12
/* 8143D980 | 4E 80 04 21 */	bctrl
/* 8143D984 | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8143D988 | 38 80 00 01 */	li r4, 0x1
/* 8143D98C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D990 | 81 8C 00 B0 */	lwz r12, 0xb0(r12)
/* 8143D994 | 7D 89 03 A6 */	mtctr r12
/* 8143D998 | 4E 80 04 21 */	bctrl
/* 8143D99C | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8143D9A0 | 38 80 00 01 */	li r4, 0x1
/* 8143D9A4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D9A8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8143D9AC | 7D 89 03 A6 */	mtctr r12
/* 8143D9B0 | 4E 80 04 21 */	bctrl
/* 8143D9B4 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8143D9B8 | 38 80 00 01 */	li r4, 0x1
/* 8143D9BC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D9C0 | 81 8C 01 18 */	lwz r12, 0x118(r12)
/* 8143D9C4 | 7D 89 03 A6 */	mtctr r12
/* 8143D9C8 | 4E 80 04 21 */	bctrl
/* 8143D9CC | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8143D9D0 | 38 80 00 01 */	li r4, 0x1
/* 8143D9D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D9D8 | 81 8C 01 34 */	lwz r12, 0x134(r12)
/* 8143D9DC | 7D 89 03 A6 */	mtctr r12
/* 8143D9E0 | 4E 80 04 21 */	bctrl
/* 8143D9E4 | 80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8143D9E8 | 38 80 00 00 */	li r4, 0x0
/* 8143D9EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143D9F0 | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 8143D9F4 | 7D 89 03 A6 */	mtctr r12
/* 8143D9F8 | 4E 80 04 21 */	bctrl
/* 8143D9FC | 80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8143DA00 | 38 80 00 00 */	li r4, 0x0
/* 8143DA04 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143DA08 | 81 8C 01 30 */	lwz r12, 0x130(r12)
/* 8143DA0C | 7D 89 03 A6 */	mtctr r12
/* 8143DA10 | 4E 80 04 21 */	bctrl
/* 8143DA14 | 80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8143DA18 | 4B FE 6E D5 */	bl dirtyCacheAll__Q39textinput9inputform4BaseFv
/* 8143DA1C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143DA20 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143DA24 | 7C 08 03 A6 */	mtlr r0
/* 8143DA28 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143DA2C | 4E 80 00 20 */	blr
.endfn configNormalBigTextWithoutLineFeedWithSign__Q49textinput6extend4memo7ManagerFv

# .text:0x1AA8 | 0x8143DA30 | size: 0x158
# textinput::extend::memo::Manager::configNormalWithoutLineFeedWithSign()
.fn configNormalWithoutLineFeedWithSign__Q49textinput6extend4memo7ManagerFv, global
/* 8143DA30 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143DA34 | 7C 08 02 A6 */	mflr r0
/* 8143DA38 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143DA3C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143DA40 | 7C 7F 1B 78 */	mr r31, r3
/* 8143DA44 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143DA48 | 81 8C 00 F4 */	lwz r12, 0xf4(r12)
/* 8143DA4C | 7D 89 03 A6 */	mtctr r12
/* 8143DA50 | 4E 80 04 21 */	bctrl
/* 8143DA54 | 7F E3 FB 78 */	mr r3, r31
/* 8143DA58 | 4B FF 9F F9 */	bl init__Q29textinput7ManagerFv
/* 8143DA5C | 38 00 00 0A */	li r0, 0xa
/* 8143DA60 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8143DA64 | 90 1F 00 44 */	stw r0, 0x44(r31)
/* 8143DA68 | 38 80 00 00 */	li r4, 0x0
/* 8143DA6C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143DA70 | 81 8C 01 10 */	lwz r12, 0x110(r12)
/* 8143DA74 | 7D 89 03 A6 */	mtctr r12
/* 8143DA78 | 4E 80 04 21 */	bctrl
/* 8143DA7C | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8143DA80 | 38 80 00 00 */	li r4, 0x0
/* 8143DA84 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143DA88 | 81 8C 01 2C */	lwz r12, 0x12c(r12)
/* 8143DA8C | 7D 89 03 A6 */	mtctr r12
/* 8143DA90 | 4E 80 04 21 */	bctrl
/* 8143DA94 | 80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8143DA98 | 38 80 00 00 */	li r4, 0x0
/* 8143DA9C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143DAA0 | 81 8C 01 08 */	lwz r12, 0x108(r12)
/* 8143DAA4 | 7D 89 03 A6 */	mtctr r12
/* 8143DAA8 | 4E 80 04 21 */	bctrl
/* 8143DAAC | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8143DAB0 | 38 80 00 00 */	li r4, 0x0
/* 8143DAB4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143DAB8 | 81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8143DABC | 7D 89 03 A6 */	mtctr r12
/* 8143DAC0 | 4E 80 04 21 */	bctrl
/* 8143DAC4 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8143DAC8 | 38 80 00 00 */	li r4, 0x0
/* 8143DACC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143DAD0 | 81 8C 01 30 */	lwz r12, 0x130(r12)
/* 8143DAD4 | 7D 89 03 A6 */	mtctr r12
/* 8143DAD8 | 4E 80 04 21 */	bctrl
/* 8143DADC | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8143DAE0 | 38 80 00 01 */	li r4, 0x1
/* 8143DAE4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143DAE8 | 81 8C 00 B0 */	lwz r12, 0xb0(r12)
/* 8143DAEC | 7D 89 03 A6 */	mtctr r12
/* 8143DAF0 | 4E 80 04 21 */	bctrl
/* 8143DAF4 | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8143DAF8 | 38 80 00 01 */	li r4, 0x1
/* 8143DAFC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143DB00 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8143DB04 | 7D 89 03 A6 */	mtctr r12
/* 8143DB08 | 4E 80 04 21 */	bctrl
/* 8143DB0C | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8143DB10 | 38 80 00 01 */	li r4, 0x1
/* 8143DB14 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143DB18 | 81 8C 01 18 */	lwz r12, 0x118(r12)
/* 8143DB1C | 7D 89 03 A6 */	mtctr r12
/* 8143DB20 | 4E 80 04 21 */	bctrl
/* 8143DB24 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8143DB28 | 38 80 00 01 */	li r4, 0x1
/* 8143DB2C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143DB30 | 81 8C 01 34 */	lwz r12, 0x134(r12)
/* 8143DB34 | 7D 89 03 A6 */	mtctr r12
/* 8143DB38 | 4E 80 04 21 */	bctrl
/* 8143DB3C | 80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8143DB40 | 38 80 00 00 */	li r4, 0x0
/* 8143DB44 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143DB48 | 81 8C 01 04 */	lwz r12, 0x104(r12)
/* 8143DB4C | 7D 89 03 A6 */	mtctr r12
/* 8143DB50 | 4E 80 04 21 */	bctrl
/* 8143DB54 | 80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8143DB58 | 38 80 00 00 */	li r4, 0x0
/* 8143DB5C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143DB60 | 81 8C 01 30 */	lwz r12, 0x130(r12)
/* 8143DB64 | 7D 89 03 A6 */	mtctr r12
/* 8143DB68 | 4E 80 04 21 */	bctrl
/* 8143DB6C | 80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8143DB70 | 4B FE 6D 7D */	bl dirtyCacheAll__Q39textinput9inputform4BaseFv
/* 8143DB74 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143DB78 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143DB7C | 7C 08 03 A6 */	mtlr r0
/* 8143DB80 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143DB84 | 4E 80 00 20 */	blr
.endfn configNormalWithoutLineFeedWithSign__Q49textinput6extend4memo7ManagerFv

# .text:0x1C00 | 0x8143DB88 | size: 0x70
# textinput::extend::memo::Manager::configPredictWithoutLineFeed()
.fn configPredictWithoutLineFeed__Q49textinput6extend4memo7ManagerFv, global
/* 8143DB88 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143DB8C | 7C 08 02 A6 */	mflr r0
/* 8143DB90 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143DB94 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143DB98 | 7C 7F 1B 78 */	mr r31, r3
/* 8143DB9C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143DBA0 | 81 8C 00 F4 */	lwz r12, 0xf4(r12)
/* 8143DBA4 | 7D 89 03 A6 */	mtctr r12
/* 8143DBA8 | 4E 80 04 21 */	bctrl
/* 8143DBAC | 38 00 00 0D */	li r0, 0xd
/* 8143DBB0 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8143DBB4 | 90 1F 00 44 */	stw r0, 0x44(r31)
/* 8143DBB8 | 38 80 00 00 */	li r4, 0x0
/* 8143DBBC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143DBC0 | 81 8C 01 10 */	lwz r12, 0x110(r12)
/* 8143DBC4 | 7D 89 03 A6 */	mtctr r12
/* 8143DBC8 | 4E 80 04 21 */	bctrl
/* 8143DBCC | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8143DBD0 | 38 80 00 00 */	li r4, 0x0
/* 8143DBD4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143DBD8 | 81 8C 01 2C */	lwz r12, 0x12c(r12)
/* 8143DBDC | 7D 89 03 A6 */	mtctr r12
/* 8143DBE0 | 4E 80 04 21 */	bctrl
/* 8143DBE4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143DBE8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143DBEC | 7C 08 03 A6 */	mtlr r0
/* 8143DBF0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143DBF4 | 4E 80 00 20 */	blr
.endfn configPredictWithoutLineFeed__Q49textinput6extend4memo7ManagerFv

# .text:0x1C70 | 0x8143DBF8 | size: 0x50
# textinput::extend::memo::Manager::configPredictBigText()
.fn configPredictBigText__Q49textinput6extend4memo7ManagerFv, global
/* 8143DBF8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143DBFC | 7C 08 02 A6 */	mflr r0
/* 8143DC00 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143DC04 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143DC08 | 7C 7F 1B 78 */	mr r31, r3
/* 8143DC0C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143DC10 | 81 8C 01 28 */	lwz r12, 0x128(r12)
/* 8143DC14 | 7D 89 03 A6 */	mtctr r12
/* 8143DC18 | 4E 80 04 21 */	bctrl
/* 8143DC1C | 80 1F 00 58 */	lwz r0, 0x58(r31)
/* 8143DC20 | 38 60 00 0E */	li r3, 0xe
/* 8143DC24 | 90 7F 00 44 */	stw r3, 0x44(r31)
/* 8143DC28 | 7F E3 FB 78 */	mr r3, r31
/* 8143DC2C | 90 1F 00 1C */	stw r0, 0x1c(r31)
/* 8143DC30 | 4B FF 9E 21 */	bl init__Q29textinput7ManagerFv
/* 8143DC34 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143DC38 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143DC3C | 7C 08 03 A6 */	mtlr r0
/* 8143DC40 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143DC44 | 4E 80 00 20 */	blr
.endfn configPredictBigText__Q49textinput6extend4memo7ManagerFv

# .text:0x1CC0 | 0x8143DC48 | size: 0x2C
# textinput::extend::memo::Manager::start()
.fn start__Q49textinput6extend4memo7ManagerFv, global
/* 8143DC48 | 80 03 00 44 */	lwz r0, 0x44(r3)
/* 8143DC4C | 2C 00 00 03 */	cmpwi r0, 0x3
/* 8143DC50 | 4C 80 00 20 */	bgelr
/* 8143DC54 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8143DC58 | 4D 80 00 20 */	bltlr
/* 8143DC5C | 80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8143DC60 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143DC64 | 81 8C 02 54 */	lwz r12, 0x254(r12)
/* 8143DC68 | 7D 89 03 A6 */	mtctr r12
/* 8143DC6C | 4E 80 04 20 */	bctr
/* 8143DC70 | 4E 80 00 20 */	blr
.endfn start__Q49textinput6extend4memo7ManagerFv

# .text:0x1CEC | 0x8143DC74 | size: 0x2C
# textinput::extend::memo::Manager::end()
.fn end__Q49textinput6extend4memo7ManagerFv, global
/* 8143DC74 | 80 03 00 44 */	lwz r0, 0x44(r3)
/* 8143DC78 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 8143DC7C | 4C 80 00 20 */	bgelr
/* 8143DC80 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8143DC84 | 4D 80 00 20 */	bltlr
/* 8143DC88 | 80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8143DC8C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143DC90 | 81 8C 02 58 */	lwz r12, 0x258(r12)
/* 8143DC94 | 7D 89 03 A6 */	mtctr r12
/* 8143DC98 | 4E 80 04 20 */	bctr
/* 8143DC9C | 4E 80 00 20 */	blr
.endfn end__Q49textinput6extend4memo7ManagerFv

# .text:0x1D18 | 0x8143DCA0 | size: 0x13C
# textinput::extend::memo::Manager::setSaveData()
.fn setSaveData__Q49textinput6extend4memo7ManagerFv, global
/* 8143DCA0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143DCA4 | 7C 08 02 A6 */	mflr r0
/* 8143DCA8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143DCAC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143DCB0 | 7C 7F 1B 78 */	mr r31, r3
/* 8143DCB4 | 80 63 00 24 */	lwz r3, 0x24(r3)
/* 8143DCB8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143DCBC | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8143DCC0 | 7D 89 03 A6 */	mtctr r12
/* 8143DCC4 | 4E 80 04 21 */	bctrl
/* 8143DCC8 | 60 60 00 10 */	ori r0, r3, 0x10
/* 8143DCCC | 80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8143DCD0 | 98 1F 00 48 */	stb r0, 0x48(r31)
/* 8143DCD4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143DCD8 | 81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8143DCDC | 7D 89 03 A6 */	mtctr r12
/* 8143DCE0 | 4E 80 04 21 */	bctrl
/* 8143DCE4 | 98 7F 00 49 */	stb r3, 0x49(r31)
/* 8143DCE8 | 80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8143DCEC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143DCF0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8143DCF4 | 7D 89 03 A6 */	mtctr r12
/* 8143DCF8 | 4E 80 04 21 */	bctrl
/* 8143DCFC | 98 7F 00 4A */	stb r3, 0x4a(r31)
/* 8143DD00 | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8143DD04 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143DD08 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8143DD0C | 7D 89 03 A6 */	mtctr r12
/* 8143DD10 | 4E 80 04 21 */	bctrl
/* 8143DD14 | 98 7F 00 4B */	stb r3, 0x4b(r31)
/* 8143DD18 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8143DD1C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143DD20 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 8143DD24 | 7D 89 03 A6 */	mtctr r12
/* 8143DD28 | 4E 80 04 21 */	bctrl
/* 8143DD2C | 88 1F 00 4C */	lbz r0, 0x4c(r31)
/* 8143DD30 | 50 60 3E 30 */	rlwimi r0, r3, 7, 24, 24
/* 8143DD34 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8143DD38 | 98 1F 00 4C */	stb r0, 0x4c(r31)
/* 8143DD3C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143DD40 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8143DD44 | 7D 89 03 A6 */	mtctr r12
/* 8143DD48 | 4E 80 04 21 */	bctrl
/* 8143DD4C | 88 1F 00 4C */	lbz r0, 0x4c(r31)
/* 8143DD50 | 50 60 1E 78 */	rlwimi r0, r3, 3, 25, 28
/* 8143DD54 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8143DD58 | 98 1F 00 4C */	stb r0, 0x4c(r31)
/* 8143DD5C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143DD60 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8143DD64 | 7D 89 03 A6 */	mtctr r12
/* 8143DD68 | 4E 80 04 21 */	bctrl
/* 8143DD6C | 88 1F 00 4C */	lbz r0, 0x4c(r31)
/* 8143DD70 | 50 60 17 7A */	rlwimi r0, r3, 2, 29, 29
/* 8143DD74 | 3C 60 81 0D */	lis r3, sInstance__Q39textinput5input10HKBManager@ha
/* 8143DD78 | 80 BF 00 14 */	lwz r5, 0x14(r31)
/* 8143DD7C | 54 00 00 3C */	clrrwi r0, r0, 1
/* 8143DD80 | 88 9F 00 4D */	lbz r4, 0x4d(r31)
/* 8143DD84 | 98 1F 00 4C */	stb r0, 0x4c(r31)
/* 8143DD88 | 38 63 88 44 */	addi r3, r3, sInstance__Q39textinput5input10HKBManager@l
/* 8143DD8C | 80 05 00 20 */	lwz r0, 0x20(r5)
/* 8143DD90 | 50 04 26 36 */	rlwimi r4, r0, 4, 24, 27
/* 8143DD94 | 98 9F 00 4D */	stb r4, 0x4d(r31)
/* 8143DD98 | 80 05 00 28 */	lwz r0, 0x28(r5)
/* 8143DD9C | 50 04 07 3E */	rlwimi r4, r0, 0, 28, 31
/* 8143DDA0 | 98 9F 00 4D */	stb r4, 0x4d(r31)
/* 8143DDA4 | 48 00 9A BD */	bl GetModifierState__Q39textinput5input10HKBManagerCFv
/* 8143DDA8 | 54 63 05 EE */	rlwinm r3, r3, 0, 23, 23
/* 8143DDAC | 38 00 00 00 */	li r0, 0x0
/* 8143DDB0 | 7C 64 00 34 */	cntlzw r4, r3
/* 8143DDB4 | 88 7F 00 4C */	lbz r3, 0x4c(r31)
/* 8143DDB8 | 50 83 E7 BC */	rlwimi r3, r4, 28, 30, 30
/* 8143DDBC | 98 1F 00 4E */	stb r0, 0x4e(r31)
/* 8143DDC0 | 98 7F 00 4C */	stb r3, 0x4c(r31)
/* 8143DDC4 | 98 1F 00 4F */	stb r0, 0x4f(r31)
/* 8143DDC8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143DDCC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143DDD0 | 7C 08 03 A6 */	mtlr r0
/* 8143DDD4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143DDD8 | 4E 80 00 20 */	blr
.endfn setSaveData__Q49textinput6extend4memo7ManagerFv

# .text:0x1E54 | 0x8143DDDC | size: 0x20
# textinput::extend::memo::Manager::reflectSaveData()
.fn reflectSaveData__Q49textinput6extend4memo7ManagerFv, global
/* 8143DDDC | 88 03 00 48 */	lbz r0, 0x48(r3)
/* 8143DDE0 | 54 00 E7 3E */	extrwi r0, r0, 4, 24
/* 8143DDE4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8143DDE8 | 41 82 00 0C */	beq .L_8143DDF4
/* 8143DDEC | 40 80 00 0C */	bge .L_8143DDF8
/* 8143DDF0 | 48 00 00 08 */	b .L_8143DDF8
.L_8143DDF4:
/* 8143DDF4 | 48 00 00 08 */	b reflectSaveDataRev1__Q49textinput6extend4memo7ManagerFv
.L_8143DDF8:
/* 8143DDF8 | 48 00 01 C0 */	b reflectSaveDataDefault__Q49textinput6extend4memo7ManagerFv
.endfn reflectSaveData__Q49textinput6extend4memo7ManagerFv

# .text:0x1E74 | 0x8143DDFC | size: 0x1BC
# textinput::extend::memo::Manager::reflectSaveDataRev1()
.fn reflectSaveDataRev1__Q49textinput6extend4memo7ManagerFv, global
/* 8143DDFC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143DE00 | 7C 08 02 A6 */	mflr r0
/* 8143DE04 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143DE08 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143DE0C | 7C 7F 1B 78 */	mr r31, r3
/* 8143DE10 | 88 03 00 48 */	lbz r0, 0x48(r3)
/* 8143DE14 | 54 00 07 FE */	clrlwi r0, r0, 31
/* 8143DE18 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8143DE1C | 40 82 00 20 */	bne .L_8143DE3C
/* 8143DE20 | 80 63 00 24 */	lwz r3, 0x24(r3)
/* 8143DE24 | 38 80 00 01 */	li r4, 0x1
/* 8143DE28 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143DE2C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8143DE30 | 7D 89 03 A6 */	mtctr r12
/* 8143DE34 | 4E 80 04 21 */	bctrl
/* 8143DE38 | 48 00 00 1C */	b .L_8143DE54
.L_8143DE3C:
/* 8143DE3C | 80 63 00 24 */	lwz r3, 0x24(r3)
/* 8143DE40 | 38 80 00 00 */	li r4, 0x0
/* 8143DE44 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143DE48 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8143DE4C | 7D 89 03 A6 */	mtctr r12
/* 8143DE50 | 4E 80 04 21 */	bctrl
.L_8143DE54:
/* 8143DE54 | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8143DE58 | 88 9F 00 4B */	lbz r4, 0x4b(r31)
/* 8143DE5C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143DE60 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8143DE64 | 7D 89 03 A6 */	mtctr r12
/* 8143DE68 | 4E 80 04 21 */	bctrl
/* 8143DE6C | 88 1F 00 4A */	lbz r0, 0x4a(r31)
/* 8143DE70 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8143DE74 | 40 82 00 1C */	bne .L_8143DE90
/* 8143DE78 | 80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8143DE7C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143DE80 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8143DE84 | 7D 89 03 A6 */	mtctr r12
/* 8143DE88 | 4E 80 04 21 */	bctrl
/* 8143DE8C | 48 00 00 18 */	b .L_8143DEA4
.L_8143DE90:
/* 8143DE90 | 80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8143DE94 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143DE98 | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8143DE9C | 7D 89 03 A6 */	mtctr r12
/* 8143DEA0 | 4E 80 04 21 */	bctrl
.L_8143DEA4:
/* 8143DEA4 | 88 9F 00 49 */	lbz r4, 0x49(r31)
/* 8143DEA8 | 28 04 00 FA */	cmplwi r4, 0xfa
/* 8143DEAC | 41 82 00 18 */	beq .L_8143DEC4
/* 8143DEB0 | 80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8143DEB4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143DEB8 | 81 8C 01 10 */	lwz r12, 0x110(r12)
/* 8143DEBC | 7D 89 03 A6 */	mtctr r12
/* 8143DEC0 | 4E 80 04 21 */	bctrl
.L_8143DEC4:
/* 8143DEC4 | 80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8143DEC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143DECC | 40 82 00 3C */	bne .L_8143DF08
/* 8143DED0 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8143DED4 | 88 1F 00 4C */	lbz r0, 0x4c(r31)
/* 8143DED8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143DEDC | 54 05 F7 FE */	extrwi r5, r0, 1, 29
/* 8143DEE0 | 88 1F 00 4D */	lbz r0, 0x4d(r31)
/* 8143DEE4 | 7C 85 00 D0 */	neg r4, r5
/* 8143DEE8 | 81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8143DEEC | 7C 84 2B 78 */	or r4, r4, r5
/* 8143DEF0 | 54 05 E7 3E */	extrwi r5, r0, 4, 24
/* 8143DEF4 | 54 84 0F FE */	srwi r4, r4, 31
/* 8143DEF8 | 54 06 07 3E */	clrlwi r6, r0, 28
/* 8143DEFC | 7D 89 03 A6 */	mtctr r12
/* 8143DF00 | 4E 80 04 21 */	bctrl
/* 8143DF04 | 48 00 00 2C */	b .L_8143DF30
.L_8143DF08:
/* 8143DF08 | 38 03 FF F8 */	subi r0, r3, 0x8
/* 8143DF0C | 28 00 00 01 */	cmplwi r0, 0x1
/* 8143DF10 | 41 81 00 20 */	bgt .L_8143DF30
/* 8143DF14 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8143DF18 | 88 1F 00 4D */	lbz r0, 0x4d(r31)
/* 8143DF1C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143DF20 | 54 04 E7 3E */	extrwi r4, r0, 4, 24
/* 8143DF24 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8143DF28 | 7D 89 03 A6 */	mtctr r12
/* 8143DF2C | 4E 80 04 21 */	bctrl
.L_8143DF30:
/* 8143DF30 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8143DF34 | 88 1F 00 4C */	lbz r0, 0x4c(r31)
/* 8143DF38 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143DF3C | 54 04 CF FE */	extrwi r4, r0, 1, 24
/* 8143DF40 | 7C 04 00 D0 */	neg r0, r4
/* 8143DF44 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8143DF48 | 7C 00 23 78 */	or r0, r0, r4
/* 8143DF4C | 54 04 0F FE */	srwi r4, r0, 31
/* 8143DF50 | 7D 89 03 A6 */	mtctr r12
/* 8143DF54 | 4E 80 04 21 */	bctrl
/* 8143DF58 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8143DF5C | 88 1F 00 4C */	lbz r0, 0x4c(r31)
/* 8143DF60 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143DF64 | 54 04 EF 3E */	extrwi r4, r0, 4, 25
/* 8143DF68 | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8143DF6C | 7D 89 03 A6 */	mtctr r12
/* 8143DF70 | 4E 80 04 21 */	bctrl
/* 8143DF74 | 80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8143DF78 | 4B FE A5 2D */	bl checkValidation__Q39textinput12candidatebox4BaseFv
/* 8143DF7C | 88 1F 00 4C */	lbz r0, 0x4c(r31)
/* 8143DF80 | 3C 60 81 0D */	lis r3, sInstance__Q39textinput5input10HKBManager@ha
/* 8143DF84 | 38 63 88 44 */	addi r3, r3, sInstance__Q39textinput5input10HKBManager@l
/* 8143DF88 | 38 A0 01 00 */	li r5, 0x100
/* 8143DF8C | 54 00 FF FE */	extrwi r0, r0, 1, 30
/* 8143DF90 | 7C 00 00 34 */	cntlzw r0, r0
/* 8143DF94 | 54 00 DF FE */	extrwi r0, r0, 1, 26
/* 8143DF98 | 7C 00 00 D0 */	neg r0, r0
/* 8143DF9C | 54 04 05 EE */	rlwinm r4, r0, 0, 23, 23
/* 8143DFA0 | 48 00 99 B1 */	bl SetModifierState__Q39textinput5input10HKBManagerFUlUl
/* 8143DFA4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143DFA8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143DFAC | 7C 08 03 A6 */	mtlr r0
/* 8143DFB0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143DFB4 | 4E 80 00 20 */	blr
.endfn reflectSaveDataRev1__Q49textinput6extend4memo7ManagerFv

# .text:0x2030 | 0x8143DFB8 | size: 0x130
# textinput::extend::memo::Manager::reflectSaveDataDefault()
.fn reflectSaveDataDefault__Q49textinput6extend4memo7ManagerFv, global
/* 8143DFB8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143DFBC | 7C 08 02 A6 */	mflr r0
/* 8143DFC0 | 38 80 00 01 */	li r4, 0x1
/* 8143DFC4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143DFC8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143DFCC | 7C 7F 1B 78 */	mr r31, r3
/* 8143DFD0 | 80 63 00 24 */	lwz r3, 0x24(r3)
/* 8143DFD4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143DFD8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8143DFDC | 7D 89 03 A6 */	mtctr r12
/* 8143DFE0 | 4E 80 04 21 */	bctrl
/* 8143DFE4 | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8143DFE8 | 38 80 00 00 */	li r4, 0x0
/* 8143DFEC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143DFF0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8143DFF4 | 7D 89 03 A6 */	mtctr r12
/* 8143DFF8 | 4E 80 04 21 */	bctrl
/* 8143DFFC | 80 1F 00 38 */	lwz r0, 0x38(r31)
/* 8143E000 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8143E004 | 40 82 00 1C */	bne .L_8143E020
/* 8143E008 | 80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8143E00C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143E010 | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8143E014 | 7D 89 03 A6 */	mtctr r12
/* 8143E018 | 4E 80 04 21 */	bctrl
/* 8143E01C | 48 00 00 18 */	b .L_8143E034
.L_8143E020:
/* 8143E020 | 80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8143E024 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143E028 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8143E02C | 7D 89 03 A6 */	mtctr r12
/* 8143E030 | 4E 80 04 21 */	bctrl
.L_8143E034:
/* 8143E034 | 80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8143E038 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143E03C | 40 82 00 28 */	bne .L_8143E064
/* 8143E040 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8143E044 | 38 80 00 00 */	li r4, 0x0
/* 8143E048 | 38 A0 00 01 */	li r5, 0x1
/* 8143E04C | 38 C0 00 00 */	li r6, 0x0
/* 8143E050 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143E054 | 81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8143E058 | 7D 89 03 A6 */	mtctr r12
/* 8143E05C | 4E 80 04 21 */	bctrl
/* 8143E060 | 48 00 00 28 */	b .L_8143E088
.L_8143E064:
/* 8143E064 | 38 03 FF F8 */	subi r0, r3, 0x8
/* 8143E068 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8143E06C | 41 81 00 1C */	bgt .L_8143E088
/* 8143E070 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8143E074 | 38 80 00 01 */	li r4, 0x1
/* 8143E078 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143E07C | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8143E080 | 7D 89 03 A6 */	mtctr r12
/* 8143E084 | 4E 80 04 21 */	bctrl
.L_8143E088:
/* 8143E088 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8143E08C | 38 80 00 01 */	li r4, 0x1
/* 8143E090 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143E094 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8143E098 | 7D 89 03 A6 */	mtctr r12
/* 8143E09C | 4E 80 04 21 */	bctrl
/* 8143E0A0 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8143E0A4 | 38 80 00 02 */	li r4, 0x2
/* 8143E0A8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143E0AC | 81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8143E0B0 | 7D 89 03 A6 */	mtctr r12
/* 8143E0B4 | 4E 80 04 21 */	bctrl
/* 8143E0B8 | 80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8143E0BC | 4B FE A3 E9 */	bl checkValidation__Q39textinput12candidatebox4BaseFv
/* 8143E0C0 | 3C 60 81 0D */	lis r3, sInstance__Q39textinput5input10HKBManager@ha
/* 8143E0C4 | 38 80 01 00 */	li r4, 0x100
/* 8143E0C8 | 38 63 88 44 */	addi r3, r3, sInstance__Q39textinput5input10HKBManager@l
/* 8143E0CC | 38 A0 01 00 */	li r5, 0x100
/* 8143E0D0 | 48 00 98 81 */	bl SetModifierState__Q39textinput5input10HKBManagerFUlUl
/* 8143E0D4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143E0D8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143E0DC | 7C 08 03 A6 */	mtlr r0
/* 8143E0E0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143E0E4 | 4E 80 00 20 */	blr
.endfn reflectSaveDataDefault__Q49textinput6extend4memo7ManagerFv

# .text:0x2160 | 0x8143E0E8 | size: 0x84
# textinput::extend::memo::Manager::SetFont(nw4r::lyt::FontRefLink*)
.fn SetFont__Q49textinput6extend4memo7ManagerFPQ34nw4r3lyt11FontRefLink, global
/* 8143E0E8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143E0EC | 7C 08 02 A6 */	mflr r0
/* 8143E0F0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143E0F4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143E0F8 | 7C 9F 23 78 */	mr r31, r4
/* 8143E0FC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8143E100 | 7C 7E 1B 78 */	mr r30, r3
/* 8143E104 | 4B FF B0 F9 */	bl SetFont__Q29textinput7ManagerFPQ34nw4r3lyt11FontRefLink
/* 8143E108 | 80 7E 00 58 */	lwz r3, 0x58(r30)
/* 8143E10C | 83 FF 00 88 */	lwz r31, 0x88(r31)
/* 8143E110 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143E114 | 41 82 00 10 */	beq .L_8143E124
/* 8143E118 | 7F E4 FB 78 */	mr r4, r31
/* 8143E11C | 38 63 00 10 */	addi r3, r3, 0x10
/* 8143E120 | 48 0D 8D 05 */	bl SetFont__Q34nw4r2ut10CharWriterFRCQ34nw4r2ut4Font
.L_8143E124:
/* 8143E124 | 80 7E 00 50 */	lwz r3, 0x50(r30)
/* 8143E128 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143E12C | 41 82 00 10 */	beq .L_8143E13C
/* 8143E130 | 7F E4 FB 78 */	mr r4, r31
/* 8143E134 | 38 63 00 10 */	addi r3, r3, 0x10
/* 8143E138 | 48 0D 8C ED */	bl SetFont__Q34nw4r2ut10CharWriterFRCQ34nw4r2ut4Font
.L_8143E13C:
/* 8143E13C | 80 7E 00 54 */	lwz r3, 0x54(r30)
/* 8143E140 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143E144 | 41 82 00 10 */	beq .L_8143E154
/* 8143E148 | 7F E4 FB 78 */	mr r4, r31
/* 8143E14C | 38 63 00 10 */	addi r3, r3, 0x10
/* 8143E150 | 48 0D 8C D5 */	bl SetFont__Q34nw4r2ut10CharWriterFRCQ34nw4r2ut4Font
.L_8143E154:
/* 8143E154 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143E158 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143E15C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8143E160 | 7C 08 03 A6 */	mtlr r0
/* 8143E164 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143E168 | 4E 80 00 20 */	blr
.endfn SetFont__Q49textinput6extend4memo7ManagerFPQ34nw4r3lyt11FontRefLink

# .text:0x21E4 | 0x8143E16C | size: 0x4
# textinput::extend::memo::DispMemoState::create()
.fn create__Q49textinput6extend4memo13DispMemoStateFv, global
/* 8143E16C | 4E 80 00 20 */	blr
.endfn create__Q49textinput6extend4memo13DispMemoStateFv

# .text:0x21E8 | 0x8143E170 | size: 0x14
# textinput::extend::memo::DispMemoState::init()
.fn init__Q49textinput6extend4memo13DispMemoStateFv, global
/* 8143E170 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8143E174 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143E178 | 81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 8143E17C | 7D 89 03 A6 */	mtctr r12
/* 8143E180 | 4E 80 04 20 */	bctr
.endfn init__Q49textinput6extend4memo13DispMemoStateFv

# .text:0x21FC | 0x8143E184 | size: 0x74
# textinput::extend::memo::DispMemoState::calc()
.fn calc__Q49textinput6extend4memo13DispMemoStateFv, global
/* 8143E184 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143E188 | 7C 08 02 A6 */	mflr r0
/* 8143E18C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143E190 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143E194 | 7C 7F 1B 78 */	mr r31, r3
/* 8143E198 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8143E19C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143E1A0 | 81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 8143E1A4 | 7D 89 03 A6 */	mtctr r12
/* 8143E1A8 | 4E 80 04 21 */	bctrl
/* 8143E1AC | 2C 03 00 03 */	cmpwi r3, 0x3
/* 8143E1B0 | 40 80 00 34 */	bge .L_8143E1E4
/* 8143E1B4 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8143E1B8 | 40 80 00 08 */	bge .L_8143E1C0
/* 8143E1BC | 48 00 00 28 */	b .L_8143E1E4
.L_8143E1C0:
/* 8143E1C0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143E1C4 | 7F E3 FB 78 */	mr r3, r31
/* 8143E1C8 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8143E1CC | 7D 89 03 A6 */	mtctr r12
/* 8143E1D0 | 4E 80 04 21 */	bctrl
/* 8143E1D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143E1D8 | 81 8C 01 44 */	lwz r12, 0x144(r12)
/* 8143E1DC | 7D 89 03 A6 */	mtctr r12
/* 8143E1E0 | 4E 80 04 21 */	bctrl
.L_8143E1E4:
/* 8143E1E4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143E1E8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143E1EC | 7C 08 03 A6 */	mtlr r0
/* 8143E1F0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143E1F4 | 4E 80 00 20 */	blr
.endfn calc__Q49textinput6extend4memo13DispMemoStateFv

# .text:0x2270 | 0x8143E1F8 | size: 0x14
# textinput::extend::memo::State::InputForm()
.fn InputForm__Q49textinput6extend4memo5StateFv, global
/* 8143E1F8 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8143E1FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143E200 | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8143E204 | 7D 89 03 A6 */	mtctr r12
/* 8143E208 | 4E 80 04 20 */	bctr
.endfn InputForm__Q49textinput6extend4memo5StateFv

# .text:0x2284 | 0x8143E20C | size: 0x4
# textinput::extend::memo::DispMemoState::draw()
.fn draw__Q49textinput6extend4memo13DispMemoStateFv, global
/* 8143E20C | 4E 80 00 20 */	blr
.endfn draw__Q49textinput6extend4memo13DispMemoStateFv

# .text:0x2288 | 0x8143E210 | size: 0x84
# textinput::extend::memo::DispMemoState::memoDraw()
.fn memoDraw__Q49textinput6extend4memo13DispMemoStateFv, global
/* 8143E210 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143E214 | 7C 08 02 A6 */	mflr r0
/* 8143E218 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143E21C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143E220 | 7C 7F 1B 78 */	mr r31, r3
/* 8143E224 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8143E228 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143E22C | 81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 8143E230 | 7D 89 03 A6 */	mtctr r12
/* 8143E234 | 4E 80 04 21 */	bctrl
/* 8143E238 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8143E23C | 41 82 00 20 */	beq .L_8143E25C
/* 8143E240 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 8143E244 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143E248 | 81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 8143E24C | 7D 89 03 A6 */	mtctr r12
/* 8143E250 | 4E 80 04 21 */	bctrl
/* 8143E254 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 8143E258 | 40 82 00 28 */	bne .L_8143E280
.L_8143E25C:
/* 8143E25C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143E260 | 7F E3 FB 78 */	mr r3, r31
/* 8143E264 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8143E268 | 7D 89 03 A6 */	mtctr r12
/* 8143E26C | 4E 80 04 21 */	bctrl
/* 8143E270 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143E274 | 81 8C 01 40 */	lwz r12, 0x140(r12)
/* 8143E278 | 7D 89 03 A6 */	mtctr r12
/* 8143E27C | 4E 80 04 21 */	bctrl
.L_8143E280:
/* 8143E280 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143E284 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143E288 | 7C 08 03 A6 */	mtlr r0
/* 8143E28C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143E290 | 4E 80 00 20 */	blr
.endfn memoDraw__Q49textinput6extend4memo13DispMemoStateFv

# .text:0x230C | 0x8143E294 | size: 0xF4
# textinput::extend::memo::DispMemoState::updateInput(int, float, float, unsigned long, unsigned long, unsigned long)
.fn updateInput__Q49textinput6extend4memo13DispMemoStateFiffUlUlUl, global
/* 8143E294 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8143E298 | 7C 08 02 A6 */	mflr r0
/* 8143E29C | 90 01 00 54 */	stw r0, 0x54(r1)
/* 8143E2A0 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8143E2A4 | DB E1 00 48 */	stfd f31, 0x48(r1)
/* 8143E2A8 | DB C1 00 40 */	stfd f30, 0x40(r1)
/* 8143E2AC | 48 1B B2 15 */	bl _savegpr_27
/* 8143E2B0 | 7C 7B 1B 78 */	mr r27, r3
/* 8143E2B4 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8143E2B8 | FF C0 08 90 */	fmr f30, f1
/* 8143E2BC | 7C 9C 23 78 */	mr r28, r4
/* 8143E2C0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143E2C4 | FF E0 10 90 */	fmr f31, f2
/* 8143E2C8 | 7C BD 2B 78 */	mr r29, r5
/* 8143E2CC | 7C DE 33 78 */	mr r30, r6
/* 8143E2D0 | 81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 8143E2D4 | 7C FF 3B 78 */	mr r31, r7
/* 8143E2D8 | 7D 89 03 A6 */	mtctr r12
/* 8143E2DC | 4E 80 04 21 */	bctrl
/* 8143E2E0 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 8143E2E4 | 40 80 00 80 */	bge .L_8143E364
/* 8143E2E8 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8143E2EC | 40 80 00 08 */	bge .L_8143E2F4
/* 8143E2F0 | 48 00 00 74 */	b .L_8143E364
.L_8143E2F4:
/* 8143E2F4 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 8143E2F8 | 7F 63 DB 78 */	mr r3, r27
/* 8143E2FC | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8143E300 | 7D 89 03 A6 */	mtctr r12
/* 8143E304 | 4E 80 04 21 */	bctrl
/* 8143E308 | 93 81 00 08 */	stw r28, 0x8(r1)
/* 8143E30C | 7F 63 DB 78 */	mr r3, r27
/* 8143E310 | D3 C1 00 0C */	stfs f30, 0xc(r1)
/* 8143E314 | D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 8143E318 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8143E31C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8143E320 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8143E324 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 8143E328 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8143E32C | 7D 89 03 A6 */	mtctr r12
/* 8143E330 | 4E 80 04 21 */	bctrl
/* 8143E334 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143E338 | FC 20 F0 90 */	fmr f1, f30
/* 8143E33C | FC 40 F8 90 */	fmr f2, f31
/* 8143E340 | 7F 84 E3 78 */	mr r4, r28
/* 8143E344 | 81 8C 02 24 */	lwz r12, 0x224(r12)
/* 8143E348 | 7F A5 EB 78 */	mr r5, r29
/* 8143E34C | 7F C6 F3 78 */	mr r6, r30
/* 8143E350 | 7F E7 FB 78 */	mr r7, r31
/* 8143E354 | 39 01 00 08 */	addi r8, r1, 0x8
/* 8143E358 | 7D 89 03 A6 */	mtctr r12
/* 8143E35C | 4E 80 04 21 */	bctrl
/* 8143E360 | 48 00 00 08 */	b .L_8143E368
.L_8143E364:
/* 8143E364 | 38 60 00 00 */	li r3, 0x0
.L_8143E368:
/* 8143E368 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8143E36C | CB E1 00 48 */	lfd f31, 0x48(r1)
/* 8143E370 | CB C1 00 40 */	lfd f30, 0x40(r1)
/* 8143E374 | 48 1B B1 99 */	bl _restgpr_27
/* 8143E378 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 8143E37C | 7C 08 03 A6 */	mtlr r0
/* 8143E380 | 38 21 00 50 */	addi r1, r1, 0x50
/* 8143E384 | 4E 80 00 20 */	blr
.endfn updateInput__Q49textinput6extend4memo13DispMemoStateFiffUlUlUl

# .text:0x2400 | 0x8143E388 | size: 0xA0
# textinput::extend::memo::DispMemoState::updateInput(textinput::input::HKBManager&)
.fn updateInput__Q49textinput6extend4memo13DispMemoStateFRQ39textinput5input10HKBManager, global
/* 8143E388 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143E38C | 7C 08 02 A6 */	mflr r0
/* 8143E390 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143E394 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143E398 | 7C 9F 23 78 */	mr r31, r4
/* 8143E39C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8143E3A0 | 7C 7E 1B 78 */	mr r30, r3
/* 8143E3A4 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8143E3A8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143E3AC | 81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 8143E3B0 | 7D 89 03 A6 */	mtctr r12
/* 8143E3B4 | 4E 80 04 21 */	bctrl
/* 8143E3B8 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 8143E3BC | 40 80 00 50 */	bge .L_8143E40C
/* 8143E3C0 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8143E3C4 | 40 80 00 08 */	bge .L_8143E3CC
/* 8143E3C8 | 48 00 00 44 */	b .L_8143E40C
.L_8143E3CC:
/* 8143E3CC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8143E3D0 | 7F C3 F3 78 */	mr r3, r30
/* 8143E3D4 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8143E3D8 | 7D 89 03 A6 */	mtctr r12
/* 8143E3DC | 4E 80 04 21 */	bctrl
/* 8143E3E0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8143E3E4 | 7F C3 F3 78 */	mr r3, r30
/* 8143E3E8 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8143E3EC | 7D 89 03 A6 */	mtctr r12
/* 8143E3F0 | 4E 80 04 21 */	bctrl
/* 8143E3F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143E3F8 | 7F E4 FB 78 */	mr r4, r31
/* 8143E3FC | 81 8C 02 28 */	lwz r12, 0x228(r12)
/* 8143E400 | 7D 89 03 A6 */	mtctr r12
/* 8143E404 | 4E 80 04 21 */	bctrl
/* 8143E408 | 48 00 00 08 */	b .L_8143E410
.L_8143E40C:
/* 8143E40C | 38 60 00 00 */	li r3, 0x0
.L_8143E410:
/* 8143E410 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143E414 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143E418 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8143E41C | 7C 08 03 A6 */	mtlr r0
/* 8143E420 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143E424 | 4E 80 00 20 */	blr
.endfn updateInput__Q49textinput6extend4memo13DispMemoStateFRQ39textinput5input10HKBManager

# .text:0x24A0 | 0x8143E428 | size: 0x518
# textinput::extend::memo::DispMemoState::start()
.fn start__Q49textinput6extend4memo13DispMemoStateFv, global
/* 8143E428 | 94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8143E42C | 7C 08 02 A6 */	mflr r0
/* 8143E430 | 90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8143E434 | 93 E1 00 DC */	stw r31, 0xdc(r1)
/* 8143E438 | 7C 7F 1B 78 */	mr r31, r3
/* 8143E43C | 93 C1 00 D8 */	stw r30, 0xd8(r1)
/* 8143E440 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8143E444 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143E448 | 81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 8143E44C | 7D 89 03 A6 */	mtctr r12
/* 8143E450 | 4E 80 04 21 */	bctrl
/* 8143E454 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 8143E458 | 40 80 00 BC */	bge .L_8143E514
/* 8143E45C | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8143E460 | 40 80 00 08 */	bge .L_8143E468
/* 8143E464 | 48 00 00 B0 */	b .L_8143E514
.L_8143E468:
/* 8143E468 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143E46C | 7F E3 FB 78 */	mr r3, r31
/* 8143E470 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8143E474 | 7D 89 03 A6 */	mtctr r12
/* 8143E478 | 4E 80 04 21 */	bctrl
/* 8143E47C | 38 80 00 01 */	li r4, 0x1
/* 8143E480 | 48 00 5C A5 */	bl setEditMode__Q49textinput6extend4memo9InputFormFQ59textinput6extend4memo9InputForm8EditMode
/* 8143E484 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143E488 | 7F E3 FB 78 */	mr r3, r31
/* 8143E48C | C0 2D 94 98 */	lfs f1, lbl_816974D8@sda21(r0)
/* 8143E490 | C0 02 8A 58 */	lfs f0, lbl_81694E58@sda21(r0)
/* 8143E494 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8143E498 | D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8143E49C | D0 21 00 44 */	stfs f1, 0x44(r1)
/* 8143E4A0 | 7D 89 03 A6 */	mtctr r12
/* 8143E4A4 | 4E 80 04 21 */	bctrl
/* 8143E4A8 | 85 83 02 18 */	lwzu r12, 0x218(r3)
/* 8143E4AC | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8143E4B0 | 7D 89 03 A6 */	mtctr r12
/* 8143E4B4 | 4E 80 04 21 */	bctrl
/* 8143E4B8 | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 8143E4BC | 7F E3 FB 78 */	mr r3, r31
/* 8143E4C0 | C0 41 00 40 */	lfs f2, 0x40(r1)
/* 8143E4C4 | C0 21 00 44 */	lfs f1, 0x44(r1)
/* 8143E4C8 | D0 44 00 2C */	stfs f2, 0x2c(r4)
/* 8143E4CC | C0 02 8A 58 */	lfs f0, lbl_81694E58@sda21(r0)
/* 8143E4D0 | D0 24 00 30 */	stfs f1, 0x30(r4)
/* 8143E4D4 | D0 04 00 34 */	stfs f0, 0x34(r4)
/* 8143E4D8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143E4DC | D0 41 00 9C */	stfs f2, 0x9c(r1)
/* 8143E4E0 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8143E4E4 | D0 21 00 A0 */	stfs f1, 0xa0(r1)
/* 8143E4E8 | D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8143E4EC | 7D 89 03 A6 */	mtctr r12
/* 8143E4F0 | 4E 80 04 21 */	bctrl
/* 8143E4F4 | 85 83 02 18 */	lwzu r12, 0x218(r3)
/* 8143E4F8 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8143E4FC | 7D 89 03 A6 */	mtctr r12
/* 8143E500 | 4E 80 04 21 */	bctrl
/* 8143E504 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8143E508 | 38 00 00 FF */	li r0, 0xff
/* 8143E50C | 98 03 00 CD */	stb r0, 0xcd(r3)
/* 8143E510 | 48 00 00 9C */	b .L_8143E5AC
.L_8143E514:
/* 8143E514 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143E518 | 7F E3 FB 78 */	mr r3, r31
/* 8143E51C | C0 2D 94 88 */	lfs f1, lbl_816974C8@sda21(r0)
/* 8143E520 | C0 02 8A 58 */	lfs f0, lbl_81694E58@sda21(r0)
/* 8143E524 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8143E528 | D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8143E52C | D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8143E530 | 7D 89 03 A6 */	mtctr r12
/* 8143E534 | 4E 80 04 21 */	bctrl
/* 8143E538 | 85 83 02 18 */	lwzu r12, 0x218(r3)
/* 8143E53C | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8143E540 | 7D 89 03 A6 */	mtctr r12
/* 8143E544 | 4E 80 04 21 */	bctrl
/* 8143E548 | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 8143E54C | 7F E3 FB 78 */	mr r3, r31
/* 8143E550 | C0 61 00 38 */	lfs f3, 0x38(r1)
/* 8143E554 | C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 8143E558 | D0 64 00 2C */	stfs f3, 0x2c(r4)
/* 8143E55C | C0 22 8A 58 */	lfs f1, lbl_81694E58@sda21(r0)
/* 8143E560 | D0 44 00 30 */	stfs f2, 0x30(r4)
/* 8143E564 | D0 24 00 34 */	stfs f1, 0x34(r4)
/* 8143E568 | C0 0D 94 90 */	lfs f0, lbl_816974D0@sda21(r0)
/* 8143E56C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143E570 | FC 00 00 1E */	fctiwz f0, f0
/* 8143E574 | D0 61 00 90 */	stfs f3, 0x90(r1)
/* 8143E578 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8143E57C | D0 41 00 94 */	stfs f2, 0x94(r1)
/* 8143E580 | D8 01 00 A8 */	stfd f0, 0xa8(r1)
/* 8143E584 | D0 21 00 98 */	stfs f1, 0x98(r1)
/* 8143E588 | 83 C1 00 AC */	lwz r30, 0xac(r1)
/* 8143E58C | 7D 89 03 A6 */	mtctr r12
/* 8143E590 | 4E 80 04 21 */	bctrl
/* 8143E594 | 85 83 02 18 */	lwzu r12, 0x218(r3)
/* 8143E598 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8143E59C | 7D 89 03 A6 */	mtctr r12
/* 8143E5A0 | 4E 80 04 21 */	bctrl
/* 8143E5A4 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8143E5A8 | 9B C3 00 CD */	stb r30, 0xcd(r3)
.L_8143E5AC:
/* 8143E5AC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143E5B0 | 7F E3 FB 78 */	mr r3, r31
/* 8143E5B4 | C0 2D 94 88 */	lfs f1, lbl_816974C8@sda21(r0)
/* 8143E5B8 | C0 02 8A 58 */	lfs f0, lbl_81694E58@sda21(r0)
/* 8143E5BC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8143E5C0 | D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8143E5C4 | D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8143E5C8 | 7D 89 03 A6 */	mtctr r12
/* 8143E5CC | 4E 80 04 21 */	bctrl
/* 8143E5D0 | 85 83 00 44 */	lwzu r12, 0x44(r3)
/* 8143E5D4 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8143E5D8 | 7D 89 03 A6 */	mtctr r12
/* 8143E5DC | 4E 80 04 21 */	bctrl
/* 8143E5E0 | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 8143E5E4 | 7F E3 FB 78 */	mr r3, r31
/* 8143E5E8 | C0 41 00 30 */	lfs f2, 0x30(r1)
/* 8143E5EC | C0 21 00 34 */	lfs f1, 0x34(r1)
/* 8143E5F0 | D0 44 00 2C */	stfs f2, 0x2c(r4)
/* 8143E5F4 | C0 02 8A 58 */	lfs f0, lbl_81694E58@sda21(r0)
/* 8143E5F8 | D0 24 00 30 */	stfs f1, 0x30(r4)
/* 8143E5FC | D0 04 00 34 */	stfs f0, 0x34(r4)
/* 8143E600 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143E604 | C0 6D 94 88 */	lfs f3, lbl_816974C8@sda21(r0)
/* 8143E608 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8143E60C | D0 41 00 84 */	stfs f2, 0x84(r1)
/* 8143E610 | D0 21 00 88 */	stfs f1, 0x88(r1)
/* 8143E614 | D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8143E618 | D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8143E61C | D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 8143E620 | 7D 89 03 A6 */	mtctr r12
/* 8143E624 | 4E 80 04 21 */	bctrl
/* 8143E628 | 85 83 00 38 */	lwzu r12, 0x38(r3)
/* 8143E62C | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8143E630 | 7D 89 03 A6 */	mtctr r12
/* 8143E634 | 4E 80 04 21 */	bctrl
/* 8143E638 | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 8143E63C | 7F E3 FB 78 */	mr r3, r31
/* 8143E640 | C0 41 00 28 */	lfs f2, 0x28(r1)
/* 8143E644 | C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8143E648 | D0 44 00 2C */	stfs f2, 0x2c(r4)
/* 8143E64C | C0 02 8A 58 */	lfs f0, lbl_81694E58@sda21(r0)
/* 8143E650 | D0 24 00 30 */	stfs f1, 0x30(r4)
/* 8143E654 | D0 04 00 34 */	stfs f0, 0x34(r4)
/* 8143E658 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143E65C | C0 6D 94 88 */	lfs f3, lbl_816974C8@sda21(r0)
/* 8143E660 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8143E664 | D0 41 00 78 */	stfs f2, 0x78(r1)
/* 8143E668 | D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 8143E66C | D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8143E670 | D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8143E674 | D0 61 00 24 */	stfs f3, 0x24(r1)
/* 8143E678 | 7D 89 03 A6 */	mtctr r12
/* 8143E67C | 4E 80 04 21 */	bctrl
/* 8143E680 | 85 83 00 24 */	lwzu r12, 0x24(r3)
/* 8143E684 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8143E688 | 7D 89 03 A6 */	mtctr r12
/* 8143E68C | 4E 80 04 21 */	bctrl
/* 8143E690 | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 8143E694 | 7F E3 FB 78 */	mr r3, r31
/* 8143E698 | C0 81 00 20 */	lfs f4, 0x20(r1)
/* 8143E69C | C0 61 00 24 */	lfs f3, 0x24(r1)
/* 8143E6A0 | D0 84 00 2C */	stfs f4, 0x2c(r4)
/* 8143E6A4 | C0 42 8A 58 */	lfs f2, lbl_81694E58@sda21(r0)
/* 8143E6A8 | D0 64 00 30 */	stfs f3, 0x30(r4)
/* 8143E6AC | C0 02 8A 64 */	lfs f0, lbl_81694E64@sda21(r0)
/* 8143E6B0 | D0 44 00 34 */	stfs f2, 0x34(r4)
/* 8143E6B4 | C0 2D 94 88 */	lfs f1, lbl_816974C8@sda21(r0)
/* 8143E6B8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143E6BC | EC 01 00 24 */	fdivs f0, f1, f0
/* 8143E6C0 | D0 81 00 6C */	stfs f4, 0x6c(r1)
/* 8143E6C4 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8143E6C8 | D0 61 00 70 */	stfs f3, 0x70(r1)
/* 8143E6CC | D0 41 00 74 */	stfs f2, 0x74(r1)
/* 8143E6D0 | D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8143E6D4 | D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8143E6D8 | 7D 89 03 A6 */	mtctr r12
/* 8143E6DC | 4E 80 04 21 */	bctrl
/* 8143E6E0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143E6E4 | 81 8C 00 B8 */	lwz r12, 0xb8(r12)
/* 8143E6E8 | 7D 89 03 A6 */	mtctr r12
/* 8143E6EC | 4E 80 04 21 */	bctrl
/* 8143E6F0 | C0 81 00 18 */	lfs f4, 0x18(r1)
/* 8143E6F4 | C0 42 8A 58 */	lfs f2, lbl_81694E58@sda21(r0)
/* 8143E6F8 | C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 8143E6FC | D0 83 00 2C */	stfs f4, 0x2c(r3)
/* 8143E700 | C0 02 8A 64 */	lfs f0, lbl_81694E64@sda21(r0)
/* 8143E704 | D0 63 00 30 */	stfs f3, 0x30(r3)
/* 8143E708 | D0 43 00 34 */	stfs f2, 0x34(r3)
/* 8143E70C | 7F E3 FB 78 */	mr r3, r31
/* 8143E710 | C0 2D 94 88 */	lfs f1, lbl_816974C8@sda21(r0)
/* 8143E714 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143E718 | FC 20 08 50 */	fneg f1, f1
/* 8143E71C | D0 81 00 60 */	stfs f4, 0x60(r1)
/* 8143E720 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8143E724 | D0 61 00 64 */	stfs f3, 0x64(r1)
/* 8143E728 | EC 01 00 24 */	fdivs f0, f1, f0
/* 8143E72C | D0 41 00 68 */	stfs f2, 0x68(r1)
/* 8143E730 | D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8143E734 | D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8143E738 | 7D 89 03 A6 */	mtctr r12
/* 8143E73C | 4E 80 04 21 */	bctrl
/* 8143E740 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143E744 | 81 8C 00 B4 */	lwz r12, 0xb4(r12)
/* 8143E748 | 7D 89 03 A6 */	mtctr r12
/* 8143E74C | 4E 80 04 21 */	bctrl
/* 8143E750 | C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8143E754 | C0 02 8A 58 */	lfs f0, lbl_81694E58@sda21(r0)
/* 8143E758 | C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8143E75C | D0 43 00 2C */	stfs f2, 0x2c(r3)
/* 8143E760 | D0 23 00 30 */	stfs f1, 0x30(r3)
/* 8143E764 | D0 03 00 34 */	stfs f0, 0x34(r3)
/* 8143E768 | 7F E3 FB 78 */	mr r3, r31
/* 8143E76C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143E770 | D0 41 00 54 */	stfs f2, 0x54(r1)
/* 8143E774 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8143E778 | D0 21 00 58 */	stfs f1, 0x58(r1)
/* 8143E77C | D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8143E780 | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 8143E784 | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8143E788 | 7D 89 03 A6 */	mtctr r12
/* 8143E78C | 4E 80 04 21 */	bctrl
/* 8143E790 | 85 83 00 04 */	lwzu r12, 0x4(r3)
/* 8143E794 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8143E798 | 7D 89 03 A6 */	mtctr r12
/* 8143E79C | 4E 80 04 21 */	bctrl
/* 8143E7A0 | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 8143E7A4 | 7F E3 FB 78 */	mr r3, r31
/* 8143E7A8 | C0 61 00 08 */	lfs f3, 0x8(r1)
/* 8143E7AC | C0 41 00 0C */	lfs f2, 0xc(r1)
/* 8143E7B0 | D0 64 00 2C */	stfs f3, 0x2c(r4)
/* 8143E7B4 | C0 22 8A 58 */	lfs f1, lbl_81694E58@sda21(r0)
/* 8143E7B8 | D0 44 00 30 */	stfs f2, 0x30(r4)
/* 8143E7BC | D0 24 00 34 */	stfs f1, 0x34(r4)
/* 8143E7C0 | C0 0D 94 90 */	lfs f0, lbl_816974D0@sda21(r0)
/* 8143E7C4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143E7C8 | FC 00 00 1E */	fctiwz f0, f0
/* 8143E7CC | D0 61 00 48 */	stfs f3, 0x48(r1)
/* 8143E7D0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8143E7D4 | D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 8143E7D8 | D8 01 00 A8 */	stfd f0, 0xa8(r1)
/* 8143E7DC | D0 21 00 50 */	stfs f1, 0x50(r1)
/* 8143E7E0 | 83 C1 00 AC */	lwz r30, 0xac(r1)
/* 8143E7E4 | 7D 89 03 A6 */	mtctr r12
/* 8143E7E8 | 4E 80 04 21 */	bctrl
/* 8143E7EC | 85 83 00 44 */	lwzu r12, 0x44(r3)
/* 8143E7F0 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8143E7F4 | 7D 89 03 A6 */	mtctr r12
/* 8143E7F8 | 4E 80 04 21 */	bctrl
/* 8143E7FC | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 8143E800 | 7F E3 FB 78 */	mr r3, r31
/* 8143E804 | 9B C4 00 CD */	stb r30, 0xcd(r4)
/* 8143E808 | C0 0D 94 90 */	lfs f0, lbl_816974D0@sda21(r0)
/* 8143E80C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143E810 | FC 00 00 1E */	fctiwz f0, f0
/* 8143E814 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8143E818 | D8 01 00 B0 */	stfd f0, 0xb0(r1)
/* 8143E81C | 83 C1 00 B4 */	lwz r30, 0xb4(r1)
/* 8143E820 | 7D 89 03 A6 */	mtctr r12
/* 8143E824 | 4E 80 04 21 */	bctrl
/* 8143E828 | 85 83 00 38 */	lwzu r12, 0x38(r3)
/* 8143E82C | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8143E830 | 7D 89 03 A6 */	mtctr r12
/* 8143E834 | 4E 80 04 21 */	bctrl
/* 8143E838 | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 8143E83C | 7F E3 FB 78 */	mr r3, r31
/* 8143E840 | 9B C4 00 CD */	stb r30, 0xcd(r4)
/* 8143E844 | C0 0D 94 90 */	lfs f0, lbl_816974D0@sda21(r0)
/* 8143E848 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143E84C | FC 00 00 1E */	fctiwz f0, f0
/* 8143E850 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8143E854 | D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 8143E858 | 83 C1 00 BC */	lwz r30, 0xbc(r1)
/* 8143E85C | 7D 89 03 A6 */	mtctr r12
/* 8143E860 | 4E 80 04 21 */	bctrl
/* 8143E864 | 85 83 00 24 */	lwzu r12, 0x24(r3)
/* 8143E868 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8143E86C | 7D 89 03 A6 */	mtctr r12
/* 8143E870 | 4E 80 04 21 */	bctrl
/* 8143E874 | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 8143E878 | 7F E3 FB 78 */	mr r3, r31
/* 8143E87C | 9B C4 00 CD */	stb r30, 0xcd(r4)
/* 8143E880 | C0 0D 94 90 */	lfs f0, lbl_816974D0@sda21(r0)
/* 8143E884 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143E888 | FC 00 00 1E */	fctiwz f0, f0
/* 8143E88C | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8143E890 | D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 8143E894 | 83 C1 00 C4 */	lwz r30, 0xc4(r1)
/* 8143E898 | 7D 89 03 A6 */	mtctr r12
/* 8143E89C | 4E 80 04 21 */	bctrl
/* 8143E8A0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143E8A4 | 81 8C 00 B8 */	lwz r12, 0xb8(r12)
/* 8143E8A8 | 7D 89 03 A6 */	mtctr r12
/* 8143E8AC | 4E 80 04 21 */	bctrl
/* 8143E8B0 | 9B C3 00 CD */	stb r30, 0xcd(r3)
/* 8143E8B4 | 7F E3 FB 78 */	mr r3, r31
/* 8143E8B8 | C0 0D 94 90 */	lfs f0, lbl_816974D0@sda21(r0)
/* 8143E8BC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143E8C0 | FC 00 00 1E */	fctiwz f0, f0
/* 8143E8C4 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8143E8C8 | D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 8143E8CC | 83 C1 00 CC */	lwz r30, 0xcc(r1)
/* 8143E8D0 | 7D 89 03 A6 */	mtctr r12
/* 8143E8D4 | 4E 80 04 21 */	bctrl
/* 8143E8D8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143E8DC | 81 8C 00 B4 */	lwz r12, 0xb4(r12)
/* 8143E8E0 | 7D 89 03 A6 */	mtctr r12
/* 8143E8E4 | 4E 80 04 21 */	bctrl
/* 8143E8E8 | 9B C3 00 CD */	stb r30, 0xcd(r3)
/* 8143E8EC | 7F E3 FB 78 */	mr r3, r31
/* 8143E8F0 | C0 0D 94 90 */	lfs f0, lbl_816974D0@sda21(r0)
/* 8143E8F4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143E8F8 | FC 00 00 1E */	fctiwz f0, f0
/* 8143E8FC | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8143E900 | D8 01 00 D0 */	stfd f0, 0xd0(r1)
/* 8143E904 | 83 C1 00 D4 */	lwz r30, 0xd4(r1)
/* 8143E908 | 7D 89 03 A6 */	mtctr r12
/* 8143E90C | 4E 80 04 21 */	bctrl
/* 8143E910 | 85 83 00 04 */	lwzu r12, 0x4(r3)
/* 8143E914 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8143E918 | 7D 89 03 A6 */	mtctr r12
/* 8143E91C | 4E 80 04 21 */	bctrl
/* 8143E920 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8143E924 | 9B C3 00 CD */	stb r30, 0xcd(r3)
/* 8143E928 | 83 E1 00 DC */	lwz r31, 0xdc(r1)
/* 8143E92C | 83 C1 00 D8 */	lwz r30, 0xd8(r1)
/* 8143E930 | 80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8143E934 | 7C 08 03 A6 */	mtlr r0
/* 8143E938 | 38 21 00 E0 */	addi r1, r1, 0xe0
/* 8143E93C | 4E 80 00 20 */	blr
.endfn start__Q49textinput6extend4memo13DispMemoStateFv

# .text:0x29B8 | 0x8143E940 | size: 0x14
# textinput::extend::memo::State::PCKeyboard()
.fn PCKeyboard__Q49textinput6extend4memo5StateFv, global
/* 8143E940 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8143E944 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143E948 | 81 8C 00 74 */	lwz r12, 0x74(r12)
/* 8143E94C | 7D 89 03 A6 */	mtctr r12
/* 8143E950 | 4E 80 04 20 */	bctr
.endfn PCKeyboard__Q49textinput6extend4memo5StateFv

# .text:0x29CC | 0x8143E954 | size: 0x14
# textinput::extend::memo::State::CellPhoneKeyboard()
.fn CellPhoneKeyboard__Q49textinput6extend4memo5StateFv, global
/* 8143E954 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8143E958 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143E95C | 81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8143E960 | 7D 89 03 A6 */	mtctr r12
/* 8143E964 | 4E 80 04 20 */	bctr
.endfn CellPhoneKeyboard__Q49textinput6extend4memo5StateFv

# .text:0x29E0 | 0x8143E968 | size: 0x14
# textinput::extend::memo::State::CandidateBox()
.fn CandidateBox__Q49textinput6extend4memo5StateFv, global
/* 8143E968 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8143E96C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143E970 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 8143E974 | 7D 89 03 A6 */	mtctr r12
/* 8143E978 | 4E 80 04 20 */	bctr
.endfn CandidateBox__Q49textinput6extend4memo5StateFv

# .text:0x29F4 | 0x8143E97C | size: 0x14
# textinput::extend::memo::State::ToolBar()
.fn ToolBar__Q49textinput6extend4memo5StateFv, global
/* 8143E97C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8143E980 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143E984 | 81 8C 00 94 */	lwz r12, 0x94(r12)
/* 8143E988 | 7D 89 03 A6 */	mtctr r12
/* 8143E98C | 4E 80 04 20 */	bctr
.endfn ToolBar__Q49textinput6extend4memo5StateFv

# .text:0x2A08 | 0x8143E990 | size: 0xC
# textinput::extend::memo::State::BG()
.fn BG__Q49textinput6extend4memo5StateFv, global
/* 8143E990 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8143E994 | 80 63 00 78 */	lwz r3, 0x78(r3)
/* 8143E998 | 4E 80 00 20 */	blr
.endfn BG__Q49textinput6extend4memo5StateFv

# .text:0x2A14 | 0x8143E99C | size: 0x4
# textinput::extend::memo::AppearMemoState::create()
.fn create__Q49textinput6extend4memo15AppearMemoStateFv, global
/* 8143E99C | 4E 80 00 20 */	blr
.endfn create__Q49textinput6extend4memo15AppearMemoStateFv

# .text:0x2A18 | 0x8143E9A0 | size: 0x4
# textinput::extend::memo::AppearMemoState::init()
.fn init__Q49textinput6extend4memo15AppearMemoStateFv, global
/* 8143E9A0 | 4E 80 00 20 */	blr
.endfn init__Q49textinput6extend4memo15AppearMemoStateFv

# .text:0x2A1C | 0x8143E9A4 | size: 0x6B0
# textinput::extend::memo::AppearMemoState::calc()
.fn calc__Q49textinput6extend4memo15AppearMemoStateFv, global
/* 8143E9A4 | 94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 8143E9A8 | 7C 08 02 A6 */	mflr r0
/* 8143E9AC | 90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8143E9B0 | DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 8143E9B4 | F3 E1 00 C8 */	psq_st f31, 0xc8(r1), 0, qr0
/* 8143E9B8 | 93 E1 00 BC */	stw r31, 0xbc(r1)
/* 8143E9BC | 7C 7F 1B 78 */	mr r31, r3
/* 8143E9C0 | 93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 8143E9C4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143E9C8 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8143E9CC | 7D 89 03 A6 */	mtctr r12
/* 8143E9D0 | 4E 80 04 21 */	bctrl
/* 8143E9D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143E9D8 | 81 8C 01 44 */	lwz r12, 0x144(r12)
/* 8143E9DC | 7D 89 03 A6 */	mtctr r12
/* 8143E9E0 | 4E 80 04 21 */	bctrl
/* 8143E9E4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143E9E8 | 7F E3 FB 78 */	mr r3, r31
/* 8143E9EC | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8143E9F0 | 7D 89 03 A6 */	mtctr r12
/* 8143E9F4 | 4E 80 04 21 */	bctrl
/* 8143E9F8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143E9FC | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8143EA00 | 7D 89 03 A6 */	mtctr r12
/* 8143EA04 | 4E 80 04 21 */	bctrl
/* 8143EA08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143EA0C | 41 82 00 2C */	beq .L_8143EA38
/* 8143EA10 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143EA14 | 7F E3 FB 78 */	mr r3, r31
/* 8143EA18 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8143EA1C | 7D 89 03 A6 */	mtctr r12
/* 8143EA20 | 4E 80 04 21 */	bctrl
/* 8143EA24 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143EA28 | 81 8C 01 20 */	lwz r12, 0x120(r12)
/* 8143EA2C | 7D 89 03 A6 */	mtctr r12
/* 8143EA30 | 4E 80 04 21 */	bctrl
/* 8143EA34 | 48 00 00 28 */	b .L_8143EA5C
.L_8143EA38:
/* 8143EA38 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143EA3C | 7F E3 FB 78 */	mr r3, r31
/* 8143EA40 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8143EA44 | 7D 89 03 A6 */	mtctr r12
/* 8143EA48 | 4E 80 04 21 */	bctrl
/* 8143EA4C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143EA50 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8143EA54 | 7D 89 03 A6 */	mtctr r12
/* 8143EA58 | 4E 80 04 21 */	bctrl
.L_8143EA5C:
/* 8143EA5C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143EA60 | 7F E3 FB 78 */	mr r3, r31
/* 8143EA64 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8143EA68 | 7D 89 03 A6 */	mtctr r12
/* 8143EA6C | 4E 80 04 21 */	bctrl
/* 8143EA70 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143EA74 | 81 8C 01 0C */	lwz r12, 0x10c(r12)
/* 8143EA78 | 7D 89 03 A6 */	mtctr r12
/* 8143EA7C | 4E 80 04 21 */	bctrl
/* 8143EA80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143EA84 | 41 82 00 28 */	beq .L_8143EAAC
/* 8143EA88 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143EA8C | 7F E3 FB 78 */	mr r3, r31
/* 8143EA90 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8143EA94 | 7D 89 03 A6 */	mtctr r12
/* 8143EA98 | 4E 80 04 21 */	bctrl
/* 8143EA9C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143EAA0 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 8143EAA4 | 7D 89 03 A6 */	mtctr r12
/* 8143EAA8 | 4E 80 04 21 */	bctrl
.L_8143EAAC:
/* 8143EAAC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143EAB0 | 7F E3 FB 78 */	mr r3, r31
/* 8143EAB4 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8143EAB8 | 7D 89 03 A6 */	mtctr r12
/* 8143EABC | 4E 80 04 21 */	bctrl
/* 8143EAC0 | 85 83 00 14 */	lwzu r12, 0x14(r3)
/* 8143EAC4 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8143EAC8 | 7D 89 03 A6 */	mtctr r12
/* 8143EACC | 4E 80 04 21 */	bctrl
/* 8143EAD0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143EAD4 | 7F E3 FB 78 */	mr r3, r31
/* 8143EAD8 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8143EADC | 7D 89 03 A6 */	mtctr r12
/* 8143EAE0 | 4E 80 04 21 */	bctrl
/* 8143EAE4 | 85 83 00 04 */	lwzu r12, 0x4(r3)
/* 8143EAE8 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8143EAEC | 7D 89 03 A6 */	mtctr r12
/* 8143EAF0 | 4E 80 04 21 */	bctrl
/* 8143EAF4 | C0 22 8A 68 */	lfs f1, lbl_81694E68@sda21(r0)
/* 8143EAF8 | C0 1F 00 08 */	lfs f0, 0x8(r31)
/* 8143EAFC | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8143EB00 | 4C 40 13 82 */	cror eq, lt, eq
/* 8143EB04 | 40 82 00 1C */	bne .L_8143EB20
/* 8143EB08 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 8143EB0C | 38 80 00 01 */	li r4, 0x1
/* 8143EB10 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143EB14 | 81 8C 00 DC */	lwz r12, 0xdc(r12)
/* 8143EB18 | 7D 89 03 A6 */	mtctr r12
/* 8143EB1C | 4E 80 04 21 */	bctrl
.L_8143EB20:
/* 8143EB20 | C0 42 8A 58 */	lfs f2, lbl_81694E58@sda21(r0)
/* 8143EB24 | 38 6D 94 88 */	li r3, lbl_816974C8@sda21
/* 8143EB28 | C0 3F 00 08 */	lfs f1, 0x8(r31)
/* 8143EB2C | FC 80 10 90 */	fmr f4, f2
/* 8143EB30 | C0 6D 94 88 */	lfs f3, lbl_816974C8@sda21(r0)
/* 8143EB34 | FC E0 10 90 */	fmr f7, f2
/* 8143EB38 | C0 A2 8A 68 */	lfs f5, lbl_81694E68@sda21(r0)
/* 8143EB3C | C0 C3 00 04 */	lfs f6, 0x4(r3)
/* 8143EB40 | 4B FF B7 B5 */	bl hermiteInterporation__Q29textinput4utilFfffffff
/* 8143EB44 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143EB48 | FF E0 08 90 */	fmr f31, f1
/* 8143EB4C | C0 02 8A 58 */	lfs f0, lbl_81694E58@sda21(r0)
/* 8143EB50 | 7F E3 FB 78 */	mr r3, r31
/* 8143EB54 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8143EB58 | D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8143EB5C | D0 21 00 44 */	stfs f1, 0x44(r1)
/* 8143EB60 | 7D 89 03 A6 */	mtctr r12
/* 8143EB64 | 4E 80 04 21 */	bctrl
/* 8143EB68 | 85 83 00 44 */	lwzu r12, 0x44(r3)
/* 8143EB6C | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8143EB70 | 7D 89 03 A6 */	mtctr r12
/* 8143EB74 | 4E 80 04 21 */	bctrl
/* 8143EB78 | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 8143EB7C | 7F E3 FB 78 */	mr r3, r31
/* 8143EB80 | C0 41 00 40 */	lfs f2, 0x40(r1)
/* 8143EB84 | C0 21 00 44 */	lfs f1, 0x44(r1)
/* 8143EB88 | D0 44 00 2C */	stfs f2, 0x2c(r4)
/* 8143EB8C | C0 02 8A 58 */	lfs f0, lbl_81694E58@sda21(r0)
/* 8143EB90 | D0 24 00 30 */	stfs f1, 0x30(r4)
/* 8143EB94 | D0 04 00 34 */	stfs f0, 0x34(r4)
/* 8143EB98 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143EB9C | D0 41 00 9C */	stfs f2, 0x9c(r1)
/* 8143EBA0 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8143EBA4 | D0 21 00 A0 */	stfs f1, 0xa0(r1)
/* 8143EBA8 | D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8143EBAC | D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8143EBB0 | D3 E1 00 3C */	stfs f31, 0x3c(r1)
/* 8143EBB4 | 7D 89 03 A6 */	mtctr r12
/* 8143EBB8 | 4E 80 04 21 */	bctrl
/* 8143EBBC | 85 83 00 38 */	lwzu r12, 0x38(r3)
/* 8143EBC0 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8143EBC4 | 7D 89 03 A6 */	mtctr r12
/* 8143EBC8 | 4E 80 04 21 */	bctrl
/* 8143EBCC | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 8143EBD0 | FC 20 F8 18 */	frsp f1, f31
/* 8143EBD4 | C0 41 00 38 */	lfs f2, 0x38(r1)
/* 8143EBD8 | 7F E3 FB 78 */	mr r3, r31
/* 8143EBDC | C0 02 8A 58 */	lfs f0, lbl_81694E58@sda21(r0)
/* 8143EBE0 | D0 44 00 2C */	stfs f2, 0x2c(r4)
/* 8143EBE4 | D0 24 00 30 */	stfs f1, 0x30(r4)
/* 8143EBE8 | D0 04 00 34 */	stfs f0, 0x34(r4)
/* 8143EBEC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143EBF0 | D0 41 00 90 */	stfs f2, 0x90(r1)
/* 8143EBF4 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8143EBF8 | D0 21 00 94 */	stfs f1, 0x94(r1)
/* 8143EBFC | D0 01 00 98 */	stfs f0, 0x98(r1)
/* 8143EC00 | D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8143EC04 | D3 E1 00 34 */	stfs f31, 0x34(r1)
/* 8143EC08 | 7D 89 03 A6 */	mtctr r12
/* 8143EC0C | 4E 80 04 21 */	bctrl
/* 8143EC10 | 85 83 00 24 */	lwzu r12, 0x24(r3)
/* 8143EC14 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8143EC18 | 7D 89 03 A6 */	mtctr r12
/* 8143EC1C | 4E 80 04 21 */	bctrl
/* 8143EC20 | C0 02 8A 64 */	lfs f0, lbl_81694E64@sda21(r0)
/* 8143EC24 | FC 40 F8 18 */	frsp f2, f31
/* 8143EC28 | C0 22 8A 58 */	lfs f1, lbl_81694E58@sda21(r0)
/* 8143EC2C | EC 1F 00 24 */	fdivs f0, f31, f0
/* 8143EC30 | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 8143EC34 | C0 61 00 30 */	lfs f3, 0x30(r1)
/* 8143EC38 | 7F E3 FB 78 */	mr r3, r31
/* 8143EC3C | D0 41 00 88 */	stfs f2, 0x88(r1)
/* 8143EC40 | D0 64 00 2C */	stfs f3, 0x2c(r4)
/* 8143EC44 | D0 44 00 30 */	stfs f2, 0x30(r4)
/* 8143EC48 | D0 24 00 34 */	stfs f1, 0x34(r4)
/* 8143EC4C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143EC50 | D0 61 00 84 */	stfs f3, 0x84(r1)
/* 8143EC54 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8143EC58 | D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 8143EC5C | D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8143EC60 | D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8143EC64 | 7D 89 03 A6 */	mtctr r12
/* 8143EC68 | 4E 80 04 21 */	bctrl
/* 8143EC6C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143EC70 | 81 8C 00 B8 */	lwz r12, 0xb8(r12)
/* 8143EC74 | 7D 89 03 A6 */	mtctr r12
/* 8143EC78 | 4E 80 04 21 */	bctrl
/* 8143EC7C | FC 20 F8 50 */	fneg f1, f31
/* 8143EC80 | C0 61 00 28 */	lfs f3, 0x28(r1)
/* 8143EC84 | C0 02 8A 64 */	lfs f0, lbl_81694E64@sda21(r0)
/* 8143EC88 | C0 42 8A 58 */	lfs f2, lbl_81694E58@sda21(r0)
/* 8143EC8C | EC 01 00 24 */	fdivs f0, f1, f0
/* 8143EC90 | C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8143EC94 | D0 63 00 2C */	stfs f3, 0x2c(r3)
/* 8143EC98 | D0 23 00 30 */	stfs f1, 0x30(r3)
/* 8143EC9C | D0 43 00 34 */	stfs f2, 0x34(r3)
/* 8143ECA0 | 7F E3 FB 78 */	mr r3, r31
/* 8143ECA4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143ECA8 | D0 61 00 78 */	stfs f3, 0x78(r1)
/* 8143ECAC | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8143ECB0 | D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 8143ECB4 | D0 41 00 80 */	stfs f2, 0x80(r1)
/* 8143ECB8 | D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8143ECBC | D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8143ECC0 | 7D 89 03 A6 */	mtctr r12
/* 8143ECC4 | 4E 80 04 21 */	bctrl
/* 8143ECC8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143ECCC | 81 8C 00 B4 */	lwz r12, 0xb4(r12)
/* 8143ECD0 | 7D 89 03 A6 */	mtctr r12
/* 8143ECD4 | 4E 80 04 21 */	bctrl
/* 8143ECD8 | C0 41 00 20 */	lfs f2, 0x20(r1)
/* 8143ECDC | C0 02 8A 58 */	lfs f0, lbl_81694E58@sda21(r0)
/* 8143ECE0 | C0 21 00 24 */	lfs f1, 0x24(r1)
/* 8143ECE4 | D0 43 00 2C */	stfs f2, 0x2c(r3)
/* 8143ECE8 | D0 23 00 30 */	stfs f1, 0x30(r3)
/* 8143ECEC | D0 03 00 34 */	stfs f0, 0x34(r3)
/* 8143ECF0 | 7F E3 FB 78 */	mr r3, r31
/* 8143ECF4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143ECF8 | D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 8143ECFC | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8143ED00 | D0 21 00 70 */	stfs f1, 0x70(r1)
/* 8143ED04 | D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8143ED08 | D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8143ED0C | D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8143ED10 | 7D 89 03 A6 */	mtctr r12
/* 8143ED14 | 4E 80 04 21 */	bctrl
/* 8143ED18 | 85 83 00 04 */	lwzu r12, 0x4(r3)
/* 8143ED1C | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8143ED20 | 7D 89 03 A6 */	mtctr r12
/* 8143ED24 | 4E 80 04 21 */	bctrl
/* 8143ED28 | C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8143ED2C | 38 8D 94 90 */	li r4, lbl_816974D0@sda21
/* 8143ED30 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8143ED34 | C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8143ED38 | D0 23 00 2C */	stfs f1, 0x2c(r3)
/* 8143ED3C | C0 42 8A 58 */	lfs f2, lbl_81694E58@sda21(r0)
/* 8143ED40 | D0 03 00 30 */	stfs f0, 0x30(r3)
/* 8143ED44 | FC 80 10 90 */	fmr f4, f2
/* 8143ED48 | C0 A2 8A 68 */	lfs f5, lbl_81694E68@sda21(r0)
/* 8143ED4C | D0 43 00 34 */	stfs f2, 0x34(r3)
/* 8143ED50 | FC E0 10 90 */	fmr f7, f2
/* 8143ED54 | D0 21 00 60 */	stfs f1, 0x60(r1)
/* 8143ED58 | C0 3F 00 08 */	lfs f1, 0x8(r31)
/* 8143ED5C | D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8143ED60 | C0 6D 94 90 */	lfs f3, lbl_816974D0@sda21(r0)
/* 8143ED64 | D0 41 00 68 */	stfs f2, 0x68(r1)
/* 8143ED68 | C0 C4 00 04 */	lfs f6, 0x4(r4)
/* 8143ED6C | 4B FF B5 89 */	bl hermiteInterporation__Q29textinput4utilFfffffff
/* 8143ED70 | FC 00 08 1E */	fctiwz f0, f1
/* 8143ED74 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143ED78 | 7F E3 FB 78 */	mr r3, r31
/* 8143ED7C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8143ED80 | D8 01 00 A8 */	stfd f0, 0xa8(r1)
/* 8143ED84 | 83 C1 00 AC */	lwz r30, 0xac(r1)
/* 8143ED88 | 7D 89 03 A6 */	mtctr r12
/* 8143ED8C | 4E 80 04 21 */	bctrl
/* 8143ED90 | 85 83 00 44 */	lwzu r12, 0x44(r3)
/* 8143ED94 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8143ED98 | 7D 89 03 A6 */	mtctr r12
/* 8143ED9C | 4E 80 04 21 */	bctrl
/* 8143EDA0 | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 8143EDA4 | 7F E3 FB 78 */	mr r3, r31
/* 8143EDA8 | 9B C4 00 CD */	stb r30, 0xcd(r4)
/* 8143EDAC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143EDB0 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8143EDB4 | 7D 89 03 A6 */	mtctr r12
/* 8143EDB8 | 4E 80 04 21 */	bctrl
/* 8143EDBC | 85 83 00 38 */	lwzu r12, 0x38(r3)
/* 8143EDC0 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8143EDC4 | 7D 89 03 A6 */	mtctr r12
/* 8143EDC8 | 4E 80 04 21 */	bctrl
/* 8143EDCC | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 8143EDD0 | 7F E3 FB 78 */	mr r3, r31
/* 8143EDD4 | 9B C4 00 CD */	stb r30, 0xcd(r4)
/* 8143EDD8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143EDDC | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8143EDE0 | 7D 89 03 A6 */	mtctr r12
/* 8143EDE4 | 4E 80 04 21 */	bctrl
/* 8143EDE8 | 85 83 00 24 */	lwzu r12, 0x24(r3)
/* 8143EDEC | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8143EDF0 | 7D 89 03 A6 */	mtctr r12
/* 8143EDF4 | 4E 80 04 21 */	bctrl
/* 8143EDF8 | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 8143EDFC | 7F E3 FB 78 */	mr r3, r31
/* 8143EE00 | 9B C4 00 CD */	stb r30, 0xcd(r4)
/* 8143EE04 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143EE08 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8143EE0C | 7D 89 03 A6 */	mtctr r12
/* 8143EE10 | 4E 80 04 21 */	bctrl
/* 8143EE14 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143EE18 | 81 8C 00 B8 */	lwz r12, 0xb8(r12)
/* 8143EE1C | 7D 89 03 A6 */	mtctr r12
/* 8143EE20 | 4E 80 04 21 */	bctrl
/* 8143EE24 | 9B C3 00 CD */	stb r30, 0xcd(r3)
/* 8143EE28 | 7F E3 FB 78 */	mr r3, r31
/* 8143EE2C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143EE30 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8143EE34 | 7D 89 03 A6 */	mtctr r12
/* 8143EE38 | 4E 80 04 21 */	bctrl
/* 8143EE3C | 85 83 00 04 */	lwzu r12, 0x4(r3)
/* 8143EE40 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8143EE44 | 7D 89 03 A6 */	mtctr r12
/* 8143EE48 | 4E 80 04 21 */	bctrl
/* 8143EE4C | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8143EE50 | 9B C3 00 CD */	stb r30, 0xcd(r3)
/* 8143EE54 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 8143EE58 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143EE5C | 81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 8143EE60 | 7D 89 03 A6 */	mtctr r12
/* 8143EE64 | 4E 80 04 21 */	bctrl
/* 8143EE68 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 8143EE6C | 40 80 01 34 */	bge .L_8143EFA0
/* 8143EE70 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8143EE74 | 40 80 00 08 */	bge .L_8143EE7C
/* 8143EE78 | 48 00 01 28 */	b .L_8143EFA0
.L_8143EE7C:
/* 8143EE7C | C0 42 8A 58 */	lfs f2, lbl_81694E58@sda21(r0)
/* 8143EE80 | 38 6D 94 98 */	li r3, lbl_816974D8@sda21
/* 8143EE84 | C0 3F 00 08 */	lfs f1, 0x8(r31)
/* 8143EE88 | FC 80 10 90 */	fmr f4, f2
/* 8143EE8C | C0 6D 94 98 */	lfs f3, lbl_816974D8@sda21(r0)
/* 8143EE90 | FC E0 10 90 */	fmr f7, f2
/* 8143EE94 | C0 A2 8A 68 */	lfs f5, lbl_81694E68@sda21(r0)
/* 8143EE98 | C0 C3 00 04 */	lfs f6, 0x4(r3)
/* 8143EE9C | 4B FF B4 59 */	bl hermiteInterporation__Q29textinput4utilFfffffff
/* 8143EEA0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143EEA4 | 7F E3 FB 78 */	mr r3, r31
/* 8143EEA8 | C0 02 8A 58 */	lfs f0, lbl_81694E58@sda21(r0)
/* 8143EEAC | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8143EEB0 | D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8143EEB4 | D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8143EEB8 | 7D 89 03 A6 */	mtctr r12
/* 8143EEBC | 4E 80 04 21 */	bctrl
/* 8143EEC0 | 85 83 02 18 */	lwzu r12, 0x218(r3)
/* 8143EEC4 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8143EEC8 | 7D 89 03 A6 */	mtctr r12
/* 8143EECC | 4E 80 04 21 */	bctrl
/* 8143EED0 | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 8143EED4 | 7F E3 FB 78 */	mr r3, r31
/* 8143EED8 | C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8143EEDC | C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8143EEE0 | D0 44 00 2C */	stfs f2, 0x2c(r4)
/* 8143EEE4 | C0 02 8A 58 */	lfs f0, lbl_81694E58@sda21(r0)
/* 8143EEE8 | D0 24 00 30 */	stfs f1, 0x30(r4)
/* 8143EEEC | D0 04 00 34 */	stfs f0, 0x34(r4)
/* 8143EEF0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143EEF4 | D0 41 00 54 */	stfs f2, 0x54(r1)
/* 8143EEF8 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8143EEFC | D0 21 00 58 */	stfs f1, 0x58(r1)
/* 8143EF00 | D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8143EF04 | 7D 89 03 A6 */	mtctr r12
/* 8143EF08 | 4E 80 04 21 */	bctrl
/* 8143EF0C | 85 83 02 18 */	lwzu r12, 0x218(r3)
/* 8143EF10 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8143EF14 | 7D 89 03 A6 */	mtctr r12
/* 8143EF18 | 4E 80 04 21 */	bctrl
/* 8143EF1C | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 8143EF20 | 38 00 00 FF */	li r0, 0xff
/* 8143EF24 | 7F E3 FB 78 */	mr r3, r31
/* 8143EF28 | 98 04 00 CD */	stb r0, 0xcd(r4)
/* 8143EF2C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143EF30 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8143EF34 | 7D 89 03 A6 */	mtctr r12
/* 8143EF38 | 4E 80 04 21 */	bctrl
/* 8143EF3C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143EF40 | 7C 7E 1B 78 */	mr r30, r3
/* 8143EF44 | 81 8C 02 50 */	lwz r12, 0x250(r12)
/* 8143EF48 | 7D 89 03 A6 */	mtctr r12
/* 8143EF4C | 4E 80 04 21 */	bctrl
/* 8143EF50 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8143EF54 | FF E0 08 90 */	fmr f31, f1
/* 8143EF58 | 7F C3 F3 78 */	mr r3, r30
/* 8143EF5C | 81 8C 02 4C */	lwz r12, 0x24c(r12)
/* 8143EF60 | 7D 89 03 A6 */	mtctr r12
/* 8143EF64 | 4E 80 04 21 */	bctrl
/* 8143EF68 | C0 42 8A 58 */	lfs f2, lbl_81694E58@sda21(r0)
/* 8143EF6C | FC 60 08 90 */	fmr f3, f1
/* 8143EF70 | FC C0 F8 90 */	fmr f6, f31
/* 8143EF74 | C0 3F 00 08 */	lfs f1, 0x8(r31)
/* 8143EF78 | FC 80 10 90 */	fmr f4, f2
/* 8143EF7C | C0 A2 8A 68 */	lfs f5, lbl_81694E68@sda21(r0)
/* 8143EF80 | FC E0 10 90 */	fmr f7, f2
/* 8143EF84 | 4B FF B3 71 */	bl hermiteInterporation__Q29textinput4utilFfffffff
/* 8143EF88 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8143EF8C | 7F C3 F3 78 */	mr r3, r30
/* 8143EF90 | 81 8C 02 40 */	lwz r12, 0x240(r12)
/* 8143EF94 | 7D 89 03 A6 */	mtctr r12
/* 8143EF98 | 4E 80 04 21 */	bctrl
/* 8143EF9C | 48 00 00 88 */	b .L_8143F024
.L_8143EFA0:
/* 8143EFA0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143EFA4 | 7F E3 FB 78 */	mr r3, r31
/* 8143EFA8 | C0 02 8A 58 */	lfs f0, lbl_81694E58@sda21(r0)
/* 8143EFAC | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8143EFB0 | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 8143EFB4 | D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 8143EFB8 | 7D 89 03 A6 */	mtctr r12
/* 8143EFBC | 4E 80 04 21 */	bctrl
/* 8143EFC0 | 85 83 02 18 */	lwzu r12, 0x218(r3)
/* 8143EFC4 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8143EFC8 | 7D 89 03 A6 */	mtctr r12
/* 8143EFCC | 4E 80 04 21 */	bctrl
/* 8143EFD0 | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 8143EFD4 | FC 20 F8 18 */	frsp f1, f31
/* 8143EFD8 | C0 41 00 08 */	lfs f2, 0x8(r1)
/* 8143EFDC | 7F E3 FB 78 */	mr r3, r31
/* 8143EFE0 | C0 02 8A 58 */	lfs f0, lbl_81694E58@sda21(r0)
/* 8143EFE4 | D0 44 00 2C */	stfs f2, 0x2c(r4)
/* 8143EFE8 | D0 24 00 30 */	stfs f1, 0x30(r4)
/* 8143EFEC | D0 04 00 34 */	stfs f0, 0x34(r4)
/* 8143EFF0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143EFF4 | D0 41 00 48 */	stfs f2, 0x48(r1)
/* 8143EFF8 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8143EFFC | D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 8143F000 | D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8143F004 | 7D 89 03 A6 */	mtctr r12
/* 8143F008 | 4E 80 04 21 */	bctrl
/* 8143F00C | 85 83 02 18 */	lwzu r12, 0x218(r3)
/* 8143F010 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8143F014 | 7D 89 03 A6 */	mtctr r12
/* 8143F018 | 4E 80 04 21 */	bctrl
/* 8143F01C | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8143F020 | 9B C3 00 CD */	stb r30, 0xcd(r3)
.L_8143F024:
/* 8143F024 | C0 3F 00 08 */	lfs f1, 0x8(r31)
/* 8143F028 | C0 02 8A 6C */	lfs f0, lbl_81694E6C@sda21(r0)
/* 8143F02C | EC 01 00 2A */	fadds f0, f1, f0
/* 8143F030 | D0 1F 00 08 */	stfs f0, 0x8(r31)
/* 8143F034 | E3 E1 00 C8 */	psq_l f31, 0xc8(r1), 0, qr0
/* 8143F038 | CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 8143F03C | 83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 8143F040 | 83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 8143F044 | 80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 8143F048 | 7C 08 03 A6 */	mtlr r0
/* 8143F04C | 38 21 00 D0 */	addi r1, r1, 0xd0
/* 8143F050 | 4E 80 00 20 */	blr
.endfn calc__Q49textinput6extend4memo15AppearMemoStateFv

# .text:0x30CC | 0x8143F054 | size: 0x8
# textinput::extend::memo::InputForm::getScrollFrom()
.fn getScrollFrom__Q49textinput6extend4memo9InputFormFv, global
/* 8143F054 | C0 23 03 1C */	lfs f1, 0x31c(r3)
/* 8143F058 | 4E 80 00 20 */	blr
.endfn getScrollFrom__Q49textinput6extend4memo9InputFormFv

# .text:0x30D4 | 0x8143F05C | size: 0x8
# textinput::extend::memo::InputForm::getScrollTo()
.fn getScrollTo__Q49textinput6extend4memo9InputFormFv, global
/* 8143F05C | C0 23 03 20 */	lfs f1, 0x320(r3)
/* 8143F060 | 4E 80 00 20 */	blr
.endfn getScrollTo__Q49textinput6extend4memo9InputFormFv

# .text:0x30DC | 0x8143F064 | size: 0x1CC
# textinput::extend::memo::AppearMemoState::draw()
.fn draw__Q49textinput6extend4memo15AppearMemoStateFv, global
/* 8143F064 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143F068 | 7C 08 02 A6 */	mflr r0
/* 8143F06C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143F070 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143F074 | 7C 7F 1B 78 */	mr r31, r3
/* 8143F078 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8143F07C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F080 | 81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 8143F084 | 7D 89 03 A6 */	mtctr r12
/* 8143F088 | 4E 80 04 21 */	bctrl
/* 8143F08C | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8143F090 | 41 82 00 44 */	beq .L_8143F0D4
/* 8143F094 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 8143F098 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F09C | 81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 8143F0A0 | 7D 89 03 A6 */	mtctr r12
/* 8143F0A4 | 4E 80 04 21 */	bctrl
/* 8143F0A8 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 8143F0AC | 41 82 00 28 */	beq .L_8143F0D4
/* 8143F0B0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143F0B4 | 7F E3 FB 78 */	mr r3, r31
/* 8143F0B8 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8143F0BC | 7D 89 03 A6 */	mtctr r12
/* 8143F0C0 | 4E 80 04 21 */	bctrl
/* 8143F0C4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F0C8 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 8143F0CC | 7D 89 03 A6 */	mtctr r12
/* 8143F0D0 | 4E 80 04 21 */	bctrl
.L_8143F0D4:
/* 8143F0D4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143F0D8 | 7F E3 FB 78 */	mr r3, r31
/* 8143F0DC | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8143F0E0 | 7D 89 03 A6 */	mtctr r12
/* 8143F0E4 | 4E 80 04 21 */	bctrl
/* 8143F0E8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F0EC | 81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 8143F0F0 | 7D 89 03 A6 */	mtctr r12
/* 8143F0F4 | 4E 80 04 21 */	bctrl
/* 8143F0F8 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 8143F0FC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F100 | 81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 8143F104 | 7D 89 03 A6 */	mtctr r12
/* 8143F108 | 4E 80 04 21 */	bctrl
/* 8143F10C | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8143F110 | 41 82 00 44 */	beq .L_8143F154
/* 8143F114 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 8143F118 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F11C | 81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 8143F120 | 7D 89 03 A6 */	mtctr r12
/* 8143F124 | 4E 80 04 21 */	bctrl
/* 8143F128 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 8143F12C | 41 82 00 28 */	beq .L_8143F154
/* 8143F130 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143F134 | 7F E3 FB 78 */	mr r3, r31
/* 8143F138 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8143F13C | 7D 89 03 A6 */	mtctr r12
/* 8143F140 | 4E 80 04 21 */	bctrl
/* 8143F144 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F148 | 81 8C 01 40 */	lwz r12, 0x140(r12)
/* 8143F14C | 7D 89 03 A6 */	mtctr r12
/* 8143F150 | 4E 80 04 21 */	bctrl
.L_8143F154:
/* 8143F154 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143F158 | 7F E3 FB 78 */	mr r3, r31
/* 8143F15C | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8143F160 | 7D 89 03 A6 */	mtctr r12
/* 8143F164 | 4E 80 04 21 */	bctrl
/* 8143F168 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F16C | 81 8C 01 0C */	lwz r12, 0x10c(r12)
/* 8143F170 | 7D 89 03 A6 */	mtctr r12
/* 8143F174 | 4E 80 04 21 */	bctrl
/* 8143F178 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143F17C | 41 82 00 28 */	beq .L_8143F1A4
/* 8143F180 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143F184 | 7F E3 FB 78 */	mr r3, r31
/* 8143F188 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8143F18C | 7D 89 03 A6 */	mtctr r12
/* 8143F190 | 4E 80 04 21 */	bctrl
/* 8143F194 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F198 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8143F19C | 7D 89 03 A6 */	mtctr r12
/* 8143F1A0 | 4E 80 04 21 */	bctrl
.L_8143F1A4:
/* 8143F1A4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143F1A8 | 7F E3 FB 78 */	mr r3, r31
/* 8143F1AC | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8143F1B0 | 7D 89 03 A6 */	mtctr r12
/* 8143F1B4 | 4E 80 04 21 */	bctrl
/* 8143F1B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F1BC | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8143F1C0 | 7D 89 03 A6 */	mtctr r12
/* 8143F1C4 | 4E 80 04 21 */	bctrl
/* 8143F1C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143F1CC | 41 82 00 2C */	beq .L_8143F1F8
/* 8143F1D0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143F1D4 | 7F E3 FB 78 */	mr r3, r31
/* 8143F1D8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8143F1DC | 7D 89 03 A6 */	mtctr r12
/* 8143F1E0 | 4E 80 04 21 */	bctrl
/* 8143F1E4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F1E8 | 81 8C 01 1C */	lwz r12, 0x11c(r12)
/* 8143F1EC | 7D 89 03 A6 */	mtctr r12
/* 8143F1F0 | 4E 80 04 21 */	bctrl
/* 8143F1F4 | 48 00 00 28 */	b .L_8143F21C
.L_8143F1F8:
/* 8143F1F8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143F1FC | 7F E3 FB 78 */	mr r3, r31
/* 8143F200 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8143F204 | 7D 89 03 A6 */	mtctr r12
/* 8143F208 | 4E 80 04 21 */	bctrl
/* 8143F20C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F210 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8143F214 | 7D 89 03 A6 */	mtctr r12
/* 8143F218 | 4E 80 04 21 */	bctrl
.L_8143F21C:
/* 8143F21C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143F220 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143F224 | 7C 08 03 A6 */	mtlr r0
/* 8143F228 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143F22C | 4E 80 00 20 */	blr
.endfn draw__Q49textinput6extend4memo15AppearMemoStateFv

# .text:0x32A8 | 0x8143F230 | size: 0x8
# textinput::extend::bg::LayoutByNW4R::draw()
.fn draw__Q49textinput6extend2bg12LayoutByNW4RFv, global
/* 8143F230 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8143F234 | 4B FF 72 9C */	b draw__Q39textinput11nw4rmanager6LayoutFv
.endfn draw__Q49textinput6extend2bg12LayoutByNW4RFv

# .text:0x32B0 | 0x8143F238 | size: 0x84
# textinput::extend::memo::AppearMemoState::memoDraw()
.fn memoDraw__Q49textinput6extend4memo15AppearMemoStateFv, global
/* 8143F238 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143F23C | 7C 08 02 A6 */	mflr r0
/* 8143F240 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143F244 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143F248 | 7C 7F 1B 78 */	mr r31, r3
/* 8143F24C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8143F250 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F254 | 81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 8143F258 | 7D 89 03 A6 */	mtctr r12
/* 8143F25C | 4E 80 04 21 */	bctrl
/* 8143F260 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8143F264 | 41 82 00 20 */	beq .L_8143F284
/* 8143F268 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 8143F26C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F270 | 81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 8143F274 | 7D 89 03 A6 */	mtctr r12
/* 8143F278 | 4E 80 04 21 */	bctrl
/* 8143F27C | 2C 03 00 02 */	cmpwi r3, 0x2
/* 8143F280 | 40 82 00 28 */	bne .L_8143F2A8
.L_8143F284:
/* 8143F284 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143F288 | 7F E3 FB 78 */	mr r3, r31
/* 8143F28C | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8143F290 | 7D 89 03 A6 */	mtctr r12
/* 8143F294 | 4E 80 04 21 */	bctrl
/* 8143F298 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F29C | 81 8C 01 40 */	lwz r12, 0x140(r12)
/* 8143F2A0 | 7D 89 03 A6 */	mtctr r12
/* 8143F2A4 | 4E 80 04 21 */	bctrl
.L_8143F2A8:
/* 8143F2A8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143F2AC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143F2B0 | 7C 08 03 A6 */	mtlr r0
/* 8143F2B4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143F2B8 | 4E 80 00 20 */	blr
.endfn memoDraw__Q49textinput6extend4memo15AppearMemoStateFv

# .text:0x3334 | 0x8143F2BC | size: 0x8
# textinput::extend::memo::AppearMemoState::updateInput(int, float, float, unsigned long, unsigned long, unsigned long)
.fn updateInput__Q49textinput6extend4memo15AppearMemoStateFiffUlUlUl, global
/* 8143F2BC | 38 60 00 00 */	li r3, 0x0
/* 8143F2C0 | 4E 80 00 20 */	blr
.endfn updateInput__Q49textinput6extend4memo15AppearMemoStateFiffUlUlUl

# .text:0x333C | 0x8143F2C4 | size: 0x8
# textinput::extend::memo::AppearMemoState::updateInput(textinput::input::HKBManager&)
.fn updateInput__Q49textinput6extend4memo15AppearMemoStateFRQ39textinput5input10HKBManager, global
/* 8143F2C4 | 38 60 00 00 */	li r3, 0x0
/* 8143F2C8 | 4E 80 00 20 */	blr
.endfn updateInput__Q49textinput6extend4memo15AppearMemoStateFRQ39textinput5input10HKBManager

# .text:0x3344 | 0x8143F2CC | size: 0x74
# textinput::extend::memo::AppearMemoState::start()
.fn start__Q49textinput6extend4memo15AppearMemoStateFv, global
/* 8143F2CC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143F2D0 | 7C 08 02 A6 */	mflr r0
/* 8143F2D4 | C0 02 8A 58 */	lfs f0, lbl_81694E58@sda21(r0)
/* 8143F2D8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143F2DC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143F2E0 | 7C 7F 1B 78 */	mr r31, r3
/* 8143F2E4 | D0 03 00 08 */	stfs f0, 0x8(r3)
/* 8143F2E8 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8143F2EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F2F0 | 81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 8143F2F4 | 7D 89 03 A6 */	mtctr r12
/* 8143F2F8 | 4E 80 04 21 */	bctrl
/* 8143F2FC | 2C 03 00 03 */	cmpwi r3, 0x3
/* 8143F300 | 40 80 00 2C */	bge .L_8143F32C
/* 8143F304 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8143F308 | 40 80 00 08 */	bge .L_8143F310
/* 8143F30C | 48 00 00 20 */	b .L_8143F32C
.L_8143F310:
/* 8143F310 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143F314 | 7F E3 FB 78 */	mr r3, r31
/* 8143F318 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8143F31C | 7D 89 03 A6 */	mtctr r12
/* 8143F320 | 4E 80 04 21 */	bctrl
/* 8143F324 | 38 80 00 00 */	li r4, 0x0
/* 8143F328 | 48 00 4D FD */	bl setEditMode__Q49textinput6extend4memo9InputFormFQ59textinput6extend4memo9InputForm8EditMode
.L_8143F32C:
/* 8143F32C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143F330 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143F334 | 7C 08 03 A6 */	mtlr r0
/* 8143F338 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143F33C | 4E 80 00 20 */	blr
.endfn start__Q49textinput6extend4memo15AppearMemoStateFv

# .text:0x33B8 | 0x8143F340 | size: 0x4
# textinput::extend::memo::EditMemoState::create()
.fn create__Q49textinput6extend4memo13EditMemoStateFv, global
/* 8143F340 | 4E 80 00 20 */	blr
.endfn create__Q49textinput6extend4memo13EditMemoStateFv

# .text:0x33BC | 0x8143F344 | size: 0x4
# textinput::extend::memo::EditMemoState::init()
.fn init__Q49textinput6extend4memo13EditMemoStateFv, global
/* 8143F344 | 4E 80 00 20 */	blr
.endfn init__Q49textinput6extend4memo13EditMemoStateFv

# .text:0x33C0 | 0x8143F348 | size: 0x230
# textinput::extend::memo::EditMemoState::calc()
.fn calc__Q49textinput6extend4memo13EditMemoStateFv, global
/* 8143F348 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143F34C | 7C 08 02 A6 */	mflr r0
/* 8143F350 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143F354 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143F358 | 7C 7F 1B 78 */	mr r31, r3
/* 8143F35C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F360 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8143F364 | 7D 89 03 A6 */	mtctr r12
/* 8143F368 | 4E 80 04 21 */	bctrl
/* 8143F36C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F370 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8143F374 | 7D 89 03 A6 */	mtctr r12
/* 8143F378 | 4E 80 04 21 */	bctrl
/* 8143F37C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143F380 | 41 82 00 2C */	beq .L_8143F3AC
/* 8143F384 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143F388 | 7F E3 FB 78 */	mr r3, r31
/* 8143F38C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8143F390 | 7D 89 03 A6 */	mtctr r12
/* 8143F394 | 4E 80 04 21 */	bctrl
/* 8143F398 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F39C | 81 8C 01 20 */	lwz r12, 0x120(r12)
/* 8143F3A0 | 7D 89 03 A6 */	mtctr r12
/* 8143F3A4 | 4E 80 04 21 */	bctrl
/* 8143F3A8 | 48 00 00 28 */	b .L_8143F3D0
.L_8143F3AC:
/* 8143F3AC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143F3B0 | 7F E3 FB 78 */	mr r3, r31
/* 8143F3B4 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8143F3B8 | 7D 89 03 A6 */	mtctr r12
/* 8143F3BC | 4E 80 04 21 */	bctrl
/* 8143F3C0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F3C4 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8143F3C8 | 7D 89 03 A6 */	mtctr r12
/* 8143F3CC | 4E 80 04 21 */	bctrl
.L_8143F3D0:
/* 8143F3D0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143F3D4 | 7F E3 FB 78 */	mr r3, r31
/* 8143F3D8 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8143F3DC | 7D 89 03 A6 */	mtctr r12
/* 8143F3E0 | 4E 80 04 21 */	bctrl
/* 8143F3E4 | 85 83 00 14 */	lwzu r12, 0x14(r3)
/* 8143F3E8 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8143F3EC | 7D 89 03 A6 */	mtctr r12
/* 8143F3F0 | 4E 80 04 21 */	bctrl
/* 8143F3F4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143F3F8 | 7F E3 FB 78 */	mr r3, r31
/* 8143F3FC | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8143F400 | 7D 89 03 A6 */	mtctr r12
/* 8143F404 | 4E 80 04 21 */	bctrl
/* 8143F408 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F40C | 81 8C 01 0C */	lwz r12, 0x10c(r12)
/* 8143F410 | 7D 89 03 A6 */	mtctr r12
/* 8143F414 | 4E 80 04 21 */	bctrl
/* 8143F418 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143F41C | 41 82 00 28 */	beq .L_8143F444
/* 8143F420 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143F424 | 7F E3 FB 78 */	mr r3, r31
/* 8143F428 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8143F42C | 7D 89 03 A6 */	mtctr r12
/* 8143F430 | 4E 80 04 21 */	bctrl
/* 8143F434 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F438 | 81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 8143F43C | 7D 89 03 A6 */	mtctr r12
/* 8143F440 | 4E 80 04 21 */	bctrl
.L_8143F444:
/* 8143F444 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143F448 | 7F E3 FB 78 */	mr r3, r31
/* 8143F44C | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8143F450 | 7D 89 03 A6 */	mtctr r12
/* 8143F454 | 4E 80 04 21 */	bctrl
/* 8143F458 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F45C | 81 8C 01 44 */	lwz r12, 0x144(r12)
/* 8143F460 | 7D 89 03 A6 */	mtctr r12
/* 8143F464 | 4E 80 04 21 */	bctrl
/* 8143F468 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143F46C | 7F E3 FB 78 */	mr r3, r31
/* 8143F470 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8143F474 | 7D 89 03 A6 */	mtctr r12
/* 8143F478 | 4E 80 04 21 */	bctrl
/* 8143F47C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F480 | 81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8143F484 | 7D 89 03 A6 */	mtctr r12
/* 8143F488 | 4E 80 04 21 */	bctrl
/* 8143F48C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143F490 | 41 82 00 28 */	beq .L_8143F4B8
/* 8143F494 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143F498 | 7F E3 FB 78 */	mr r3, r31
/* 8143F49C | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8143F4A0 | 7D 89 03 A6 */	mtctr r12
/* 8143F4A4 | 4E 80 04 21 */	bctrl
/* 8143F4A8 | 85 83 00 1C */	lwzu r12, 0x1c(r3)
/* 8143F4AC | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8143F4B0 | 7D 89 03 A6 */	mtctr r12
/* 8143F4B4 | 4E 80 04 21 */	bctrl
.L_8143F4B8:
/* 8143F4B8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143F4BC | 7F E3 FB 78 */	mr r3, r31
/* 8143F4C0 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 8143F4C4 | 7D 89 03 A6 */	mtctr r12
/* 8143F4C8 | 4E 80 04 21 */	bctrl
/* 8143F4CC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F4D0 | 81 8C 00 DC */	lwz r12, 0xdc(r12)
/* 8143F4D4 | 7D 89 03 A6 */	mtctr r12
/* 8143F4D8 | 4E 80 04 21 */	bctrl
/* 8143F4DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143F4E0 | 41 82 00 28 */	beq .L_8143F508
/* 8143F4E4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143F4E8 | 7F E3 FB 78 */	mr r3, r31
/* 8143F4EC | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 8143F4F0 | 7D 89 03 A6 */	mtctr r12
/* 8143F4F4 | 4E 80 04 21 */	bctrl
/* 8143F4F8 | 85 83 00 24 */	lwzu r12, 0x24(r3)
/* 8143F4FC | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8143F500 | 7D 89 03 A6 */	mtctr r12
/* 8143F504 | 4E 80 04 21 */	bctrl
.L_8143F508:
/* 8143F508 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 8143F50C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F510 | 81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 8143F514 | 7D 89 03 A6 */	mtctr r12
/* 8143F518 | 4E 80 04 21 */	bctrl
/* 8143F51C | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8143F520 | 41 82 00 44 */	beq .L_8143F564
/* 8143F524 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 8143F528 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F52C | 81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 8143F530 | 7D 89 03 A6 */	mtctr r12
/* 8143F534 | 4E 80 04 21 */	bctrl
/* 8143F538 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 8143F53C | 41 82 00 28 */	beq .L_8143F564
/* 8143F540 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143F544 | 7F E3 FB 78 */	mr r3, r31
/* 8143F548 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8143F54C | 7D 89 03 A6 */	mtctr r12
/* 8143F550 | 4E 80 04 21 */	bctrl
/* 8143F554 | 85 83 00 04 */	lwzu r12, 0x4(r3)
/* 8143F558 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8143F55C | 7D 89 03 A6 */	mtctr r12
/* 8143F560 | 4E 80 04 21 */	bctrl
.L_8143F564:
/* 8143F564 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143F568 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143F56C | 7C 08 03 A6 */	mtlr r0
/* 8143F570 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143F574 | 4E 80 00 20 */	blr
.endfn calc__Q49textinput6extend4memo13EditMemoStateFv

# .text:0x35F0 | 0x8143F578 | size: 0x14
# textinput::extend::memo::State::PredictLanguageSelectDialog()
.fn PredictLanguageSelectDialog__Q49textinput6extend4memo5StateFv, global
/* 8143F578 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8143F57C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F580 | 81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 8143F584 | 7D 89 03 A6 */	mtctr r12
/* 8143F588 | 4E 80 04 20 */	bctr
.endfn PredictLanguageSelectDialog__Q49textinput6extend4memo5StateFv

# .text:0x3604 | 0x8143F58C | size: 0x14
# textinput::extend::memo::State::SignKeyboard()
.fn SignKeyboard__Q49textinput6extend4memo5StateFv, global
/* 8143F58C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8143F590 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F594 | 81 8C 00 84 */	lwz r12, 0x84(r12)
/* 8143F598 | 7D 89 03 A6 */	mtctr r12
/* 8143F59C | 4E 80 04 20 */	bctr
.endfn SignKeyboard__Q49textinput6extend4memo5StateFv

# .text:0x3618 | 0x8143F5A0 | size: 0x27C
# textinput::extend::memo::EditMemoState::draw()
.fn draw__Q49textinput6extend4memo13EditMemoStateFv, global
/* 8143F5A0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143F5A4 | 7C 08 02 A6 */	mflr r0
/* 8143F5A8 | 38 80 00 03 */	li r4, 0x3
/* 8143F5AC | 38 A0 00 01 */	li r5, 0x1
/* 8143F5B0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143F5B4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143F5B8 | 7C 7F 1B 78 */	mr r31, r3
/* 8143F5BC | 38 60 00 01 */	li r3, 0x1
/* 8143F5C0 | 48 10 82 51 */	bl GXSetZMode
/* 8143F5C4 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 8143F5C8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F5CC | 81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 8143F5D0 | 7D 89 03 A6 */	mtctr r12
/* 8143F5D4 | 4E 80 04 21 */	bctrl
/* 8143F5D8 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8143F5DC | 41 82 00 44 */	beq .L_8143F620
/* 8143F5E0 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 8143F5E4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F5E8 | 81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 8143F5EC | 7D 89 03 A6 */	mtctr r12
/* 8143F5F0 | 4E 80 04 21 */	bctrl
/* 8143F5F4 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 8143F5F8 | 41 82 00 28 */	beq .L_8143F620
/* 8143F5FC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143F600 | 7F E3 FB 78 */	mr r3, r31
/* 8143F604 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8143F608 | 7D 89 03 A6 */	mtctr r12
/* 8143F60C | 4E 80 04 21 */	bctrl
/* 8143F610 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F614 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 8143F618 | 7D 89 03 A6 */	mtctr r12
/* 8143F61C | 4E 80 04 21 */	bctrl
.L_8143F620:
/* 8143F620 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143F624 | 7F E3 FB 78 */	mr r3, r31
/* 8143F628 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8143F62C | 7D 89 03 A6 */	mtctr r12
/* 8143F630 | 4E 80 04 21 */	bctrl
/* 8143F634 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F638 | 81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 8143F63C | 7D 89 03 A6 */	mtctr r12
/* 8143F640 | 4E 80 04 21 */	bctrl
/* 8143F644 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 8143F648 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F64C | 81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 8143F650 | 7D 89 03 A6 */	mtctr r12
/* 8143F654 | 4E 80 04 21 */	bctrl
/* 8143F658 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8143F65C | 41 82 00 44 */	beq .L_8143F6A0
/* 8143F660 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 8143F664 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F668 | 81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 8143F66C | 7D 89 03 A6 */	mtctr r12
/* 8143F670 | 4E 80 04 21 */	bctrl
/* 8143F674 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 8143F678 | 41 82 00 28 */	beq .L_8143F6A0
/* 8143F67C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143F680 | 7F E3 FB 78 */	mr r3, r31
/* 8143F684 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8143F688 | 7D 89 03 A6 */	mtctr r12
/* 8143F68C | 4E 80 04 21 */	bctrl
/* 8143F690 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F694 | 81 8C 01 40 */	lwz r12, 0x140(r12)
/* 8143F698 | 7D 89 03 A6 */	mtctr r12
/* 8143F69C | 4E 80 04 21 */	bctrl
.L_8143F6A0:
/* 8143F6A0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143F6A4 | 7F E3 FB 78 */	mr r3, r31
/* 8143F6A8 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8143F6AC | 7D 89 03 A6 */	mtctr r12
/* 8143F6B0 | 4E 80 04 21 */	bctrl
/* 8143F6B4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F6B8 | 81 8C 01 0C */	lwz r12, 0x10c(r12)
/* 8143F6BC | 7D 89 03 A6 */	mtctr r12
/* 8143F6C0 | 4E 80 04 21 */	bctrl
/* 8143F6C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143F6C8 | 41 82 00 28 */	beq .L_8143F6F0
/* 8143F6CC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143F6D0 | 7F E3 FB 78 */	mr r3, r31
/* 8143F6D4 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8143F6D8 | 7D 89 03 A6 */	mtctr r12
/* 8143F6DC | 4E 80 04 21 */	bctrl
/* 8143F6E0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F6E4 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8143F6E8 | 7D 89 03 A6 */	mtctr r12
/* 8143F6EC | 4E 80 04 21 */	bctrl
.L_8143F6F0:
/* 8143F6F0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143F6F4 | 7F E3 FB 78 */	mr r3, r31
/* 8143F6F8 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8143F6FC | 7D 89 03 A6 */	mtctr r12
/* 8143F700 | 4E 80 04 21 */	bctrl
/* 8143F704 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F708 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8143F70C | 7D 89 03 A6 */	mtctr r12
/* 8143F710 | 4E 80 04 21 */	bctrl
/* 8143F714 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143F718 | 41 82 00 2C */	beq .L_8143F744
/* 8143F71C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143F720 | 7F E3 FB 78 */	mr r3, r31
/* 8143F724 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8143F728 | 7D 89 03 A6 */	mtctr r12
/* 8143F72C | 4E 80 04 21 */	bctrl
/* 8143F730 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F734 | 81 8C 01 1C */	lwz r12, 0x11c(r12)
/* 8143F738 | 7D 89 03 A6 */	mtctr r12
/* 8143F73C | 4E 80 04 21 */	bctrl
/* 8143F740 | 48 00 00 28 */	b .L_8143F768
.L_8143F744:
/* 8143F744 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143F748 | 7F E3 FB 78 */	mr r3, r31
/* 8143F74C | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8143F750 | 7D 89 03 A6 */	mtctr r12
/* 8143F754 | 4E 80 04 21 */	bctrl
/* 8143F758 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F75C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8143F760 | 7D 89 03 A6 */	mtctr r12
/* 8143F764 | 4E 80 04 21 */	bctrl
.L_8143F768:
/* 8143F768 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143F76C | 7F E3 FB 78 */	mr r3, r31
/* 8143F770 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8143F774 | 7D 89 03 A6 */	mtctr r12
/* 8143F778 | 4E 80 04 21 */	bctrl
/* 8143F77C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F780 | 81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8143F784 | 7D 89 03 A6 */	mtctr r12
/* 8143F788 | 4E 80 04 21 */	bctrl
/* 8143F78C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143F790 | 41 82 00 28 */	beq .L_8143F7B8
/* 8143F794 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143F798 | 7F E3 FB 78 */	mr r3, r31
/* 8143F79C | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8143F7A0 | 7D 89 03 A6 */	mtctr r12
/* 8143F7A4 | 4E 80 04 21 */	bctrl
/* 8143F7A8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F7AC | 81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 8143F7B0 | 7D 89 03 A6 */	mtctr r12
/* 8143F7B4 | 4E 80 04 21 */	bctrl
.L_8143F7B8:
/* 8143F7B8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143F7BC | 7F E3 FB 78 */	mr r3, r31
/* 8143F7C0 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 8143F7C4 | 7D 89 03 A6 */	mtctr r12
/* 8143F7C8 | 4E 80 04 21 */	bctrl
/* 8143F7CC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F7D0 | 81 8C 00 DC */	lwz r12, 0xdc(r12)
/* 8143F7D4 | 7D 89 03 A6 */	mtctr r12
/* 8143F7D8 | 4E 80 04 21 */	bctrl
/* 8143F7DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143F7E0 | 41 82 00 28 */	beq .L_8143F808
/* 8143F7E4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143F7E8 | 7F E3 FB 78 */	mr r3, r31
/* 8143F7EC | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 8143F7F0 | 7D 89 03 A6 */	mtctr r12
/* 8143F7F4 | 4E 80 04 21 */	bctrl
/* 8143F7F8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F7FC | 81 8C 00 D4 */	lwz r12, 0xd4(r12)
/* 8143F800 | 7D 89 03 A6 */	mtctr r12
/* 8143F804 | 4E 80 04 21 */	bctrl
.L_8143F808:
/* 8143F808 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143F80C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143F810 | 7C 08 03 A6 */	mtlr r0
/* 8143F814 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143F818 | 4E 80 00 20 */	blr
.endfn draw__Q49textinput6extend4memo13EditMemoStateFv

# .text:0x3894 | 0x8143F81C | size: 0x84
# textinput::extend::memo::EditMemoState::memoDraw()
.fn memoDraw__Q49textinput6extend4memo13EditMemoStateFv, global
/* 8143F81C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8143F820 | 7C 08 02 A6 */	mflr r0
/* 8143F824 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8143F828 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8143F82C | 7C 7F 1B 78 */	mr r31, r3
/* 8143F830 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8143F834 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F838 | 81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 8143F83C | 7D 89 03 A6 */	mtctr r12
/* 8143F840 | 4E 80 04 21 */	bctrl
/* 8143F844 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8143F848 | 41 82 00 20 */	beq .L_8143F868
/* 8143F84C | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 8143F850 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F854 | 81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 8143F858 | 7D 89 03 A6 */	mtctr r12
/* 8143F85C | 4E 80 04 21 */	bctrl
/* 8143F860 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 8143F864 | 40 82 00 28 */	bne .L_8143F88C
.L_8143F868:
/* 8143F868 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143F86C | 7F E3 FB 78 */	mr r3, r31
/* 8143F870 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8143F874 | 7D 89 03 A6 */	mtctr r12
/* 8143F878 | 4E 80 04 21 */	bctrl
/* 8143F87C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F880 | 81 8C 01 40 */	lwz r12, 0x140(r12)
/* 8143F884 | 7D 89 03 A6 */	mtctr r12
/* 8143F888 | 4E 80 04 21 */	bctrl
.L_8143F88C:
/* 8143F88C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8143F890 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8143F894 | 7C 08 03 A6 */	mtlr r0
/* 8143F898 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8143F89C | 4E 80 00 20 */	blr
.endfn memoDraw__Q49textinput6extend4memo13EditMemoStateFv

# .text:0x3918 | 0x8143F8A0 | size: 0x4D4
# textinput::extend::memo::EditMemoState::updateInput(int, float, float, unsigned long, unsigned long, unsigned long)
.fn updateInput__Q49textinput6extend4memo13EditMemoStateFiffUlUlUl, global
/* 8143F8A0 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8143F8A4 | 7C 08 02 A6 */	mflr r0
/* 8143F8A8 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 8143F8AC | DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8143F8B0 | F3 E1 00 68 */	psq_st f31, 0x68(r1), 0, qr0
/* 8143F8B4 | DB C1 00 50 */	stfd f30, 0x50(r1)
/* 8143F8B8 | F3 C1 00 58 */	psq_st f30, 0x58(r1), 0, qr0
/* 8143F8BC | 39 61 00 50 */	addi r11, r1, 0x50
/* 8143F8C0 | 48 1B 9B ED */	bl _savegpr_22
/* 8143F8C4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F8C8 | FF C0 08 90 */	fmr f30, f1
/* 8143F8CC | FF E0 10 90 */	fmr f31, f2
/* 8143F8D0 | 7C 76 1B 78 */	mr r22, r3
/* 8143F8D4 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8143F8D8 | 7C 97 23 78 */	mr r23, r4
/* 8143F8DC | 7C B8 2B 78 */	mr r24, r5
/* 8143F8E0 | 7C D9 33 78 */	mr r25, r6
/* 8143F8E4 | 7C FA 3B 78 */	mr r26, r7
/* 8143F8E8 | 7D 89 03 A6 */	mtctr r12
/* 8143F8EC | 4E 80 04 21 */	bctrl
/* 8143F8F0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F8F4 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8143F8F8 | 7D 89 03 A6 */	mtctr r12
/* 8143F8FC | 4E 80 04 21 */	bctrl
/* 8143F900 | 92 E1 00 08 */	stw r23, 0x8(r1)
/* 8143F904 | 7C 7D 1B 78 */	mr r29, r3
/* 8143F908 | 7E C3 B3 78 */	mr r3, r22
/* 8143F90C | D3 C1 00 0C */	stfs f30, 0xc(r1)
/* 8143F910 | D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 8143F914 | 93 01 00 14 */	stw r24, 0x14(r1)
/* 8143F918 | 93 21 00 18 */	stw r25, 0x18(r1)
/* 8143F91C | 93 41 00 1C */	stw r26, 0x1c(r1)
/* 8143F920 | 81 96 00 00 */	lwz r12, 0x0(r22)
/* 8143F924 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8143F928 | 7D 89 03 A6 */	mtctr r12
/* 8143F92C | 4E 80 04 21 */	bctrl
/* 8143F930 | FC 20 F0 90 */	fmr f1, f30
/* 8143F934 | 7E E4 BB 78 */	mr r4, r23
/* 8143F938 | FC 40 F8 90 */	fmr f2, f31
/* 8143F93C | 7F 05 C3 78 */	mr r5, r24
/* 8143F940 | 7F 26 CB 78 */	mr r6, r25
/* 8143F944 | 7F 47 D3 78 */	mr r7, r26
/* 8143F948 | 39 01 00 08 */	addi r8, r1, 0x8
/* 8143F94C | 48 00 A0 F5 */	bl updateInput__Q49textinput8keyboard5hwkey10HWKeyboardFiffUlUlUlPv
/* 8143F950 | 81 96 00 00 */	lwz r12, 0x0(r22)
/* 8143F954 | 7E C3 B3 78 */	mr r3, r22
/* 8143F958 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8143F95C | 7D 89 03 A6 */	mtctr r12
/* 8143F960 | 4E 80 04 21 */	bctrl
/* 8143F964 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F968 | 81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8143F96C | 7D 89 03 A6 */	mtctr r12
/* 8143F970 | 4E 80 04 21 */	bctrl
/* 8143F974 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143F978 | 41 82 00 48 */	beq .L_8143F9C0
/* 8143F97C | 81 96 00 00 */	lwz r12, 0x0(r22)
/* 8143F980 | 7E C3 B3 78 */	mr r3, r22
/* 8143F984 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8143F988 | 7D 89 03 A6 */	mtctr r12
/* 8143F98C | 4E 80 04 21 */	bctrl
/* 8143F990 | 85 83 00 1C */	lwzu r12, 0x1c(r3)
/* 8143F994 | FC 20 F0 90 */	fmr f1, f30
/* 8143F998 | FC 40 F8 90 */	fmr f2, f31
/* 8143F99C | 7E E4 BB 78 */	mr r4, r23
/* 8143F9A0 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8143F9A4 | 7F 05 C3 78 */	mr r5, r24
/* 8143F9A8 | 7F 26 CB 78 */	mr r6, r25
/* 8143F9AC | 7F 47 D3 78 */	mr r7, r26
/* 8143F9B0 | 39 01 00 08 */	addi r8, r1, 0x8
/* 8143F9B4 | 7D 89 03 A6 */	mtctr r12
/* 8143F9B8 | 4E 80 04 21 */	bctrl
/* 8143F9BC | 48 00 03 90 */	b .L_8143FD4C
.L_8143F9C0:
/* 8143F9C0 | 81 96 00 00 */	lwz r12, 0x0(r22)
/* 8143F9C4 | 7E C3 B3 78 */	mr r3, r22
/* 8143F9C8 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8143F9CC | 7D 89 03 A6 */	mtctr r12
/* 8143F9D0 | 4E 80 04 21 */	bctrl
/* 8143F9D4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143F9D8 | 7E E4 BB 78 */	mr r4, r23
/* 8143F9DC | 7F 05 C3 78 */	mr r5, r24
/* 8143F9E0 | 7F 26 CB 78 */	mr r6, r25
/* 8143F9E4 | 81 8C 02 20 */	lwz r12, 0x220(r12)
/* 8143F9E8 | 7F 47 D3 78 */	mr r7, r26
/* 8143F9EC | 39 01 00 08 */	addi r8, r1, 0x8
/* 8143F9F0 | 7D 89 03 A6 */	mtctr r12
/* 8143F9F4 | 4E 80 04 21 */	bctrl
/* 8143F9F8 | 81 96 00 00 */	lwz r12, 0x0(r22)
/* 8143F9FC | 7E C3 B3 78 */	mr r3, r22
/* 8143FA00 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 8143FA04 | 7D 89 03 A6 */	mtctr r12
/* 8143FA08 | 4E 80 04 21 */	bctrl
/* 8143FA0C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143FA10 | 81 8C 00 DC */	lwz r12, 0xdc(r12)
/* 8143FA14 | 7D 89 03 A6 */	mtctr r12
/* 8143FA18 | 4E 80 04 21 */	bctrl
/* 8143FA1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143FA20 | 41 82 00 48 */	beq .L_8143FA68
/* 8143FA24 | 81 96 00 00 */	lwz r12, 0x0(r22)
/* 8143FA28 | 7E C3 B3 78 */	mr r3, r22
/* 8143FA2C | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 8143FA30 | 7D 89 03 A6 */	mtctr r12
/* 8143FA34 | 4E 80 04 21 */	bctrl
/* 8143FA38 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143FA3C | FC 20 F0 90 */	fmr f1, f30
/* 8143FA40 | FC 40 F8 90 */	fmr f2, f31
/* 8143FA44 | 7E E4 BB 78 */	mr r4, r23
/* 8143FA48 | 81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 8143FA4C | 7F 05 C3 78 */	mr r5, r24
/* 8143FA50 | 7F 26 CB 78 */	mr r6, r25
/* 8143FA54 | 7F 47 D3 78 */	mr r7, r26
/* 8143FA58 | 39 01 00 08 */	addi r8, r1, 0x8
/* 8143FA5C | 7D 89 03 A6 */	mtctr r12
/* 8143FA60 | 4E 80 04 21 */	bctrl
/* 8143FA64 | 48 00 02 E8 */	b .L_8143FD4C
.L_8143FA68:
/* 8143FA68 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8143FA6C | 41 82 00 4C */	beq .L_8143FAB8
/* 8143FA70 | 81 96 00 00 */	lwz r12, 0x0(r22)
/* 8143FA74 | 7E C3 B3 78 */	mr r3, r22
/* 8143FA78 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8143FA7C | 7D 89 03 A6 */	mtctr r12
/* 8143FA80 | 4E 80 04 21 */	bctrl
/* 8143FA84 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143FA88 | FC 20 F0 90 */	fmr f1, f30
/* 8143FA8C | FC 40 F8 90 */	fmr f2, f31
/* 8143FA90 | 7E E4 BB 78 */	mr r4, r23
/* 8143FA94 | 81 8C 01 38 */	lwz r12, 0x138(r12)
/* 8143FA98 | 7F 05 C3 78 */	mr r5, r24
/* 8143FA9C | 7F 26 CB 78 */	mr r6, r25
/* 8143FAA0 | 7F 47 D3 78 */	mr r7, r26
/* 8143FAA4 | 39 01 00 08 */	addi r8, r1, 0x8
/* 8143FAA8 | 7D 89 03 A6 */	mtctr r12
/* 8143FAAC | 4E 80 04 21 */	bctrl
/* 8143FAB0 | 7C 7E 1B 78 */	mr r30, r3
/* 8143FAB4 | 48 00 00 48 */	b .L_8143FAFC
.L_8143FAB8:
/* 8143FAB8 | 81 96 00 00 */	lwz r12, 0x0(r22)
/* 8143FABC | 7E C3 B3 78 */	mr r3, r22
/* 8143FAC0 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8143FAC4 | 7D 89 03 A6 */	mtctr r12
/* 8143FAC8 | 4E 80 04 21 */	bctrl
/* 8143FACC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143FAD0 | FC 20 F0 90 */	fmr f1, f30
/* 8143FAD4 | FC 40 F8 90 */	fmr f2, f31
/* 8143FAD8 | 7E E4 BB 78 */	mr r4, r23
/* 8143FADC | 81 8C 01 1C */	lwz r12, 0x11c(r12)
/* 8143FAE0 | 7F 05 C3 78 */	mr r5, r24
/* 8143FAE4 | 7F 26 CB 78 */	mr r6, r25
/* 8143FAE8 | 7F 47 D3 78 */	mr r7, r26
/* 8143FAEC | 39 01 00 08 */	addi r8, r1, 0x8
/* 8143FAF0 | 7D 89 03 A6 */	mtctr r12
/* 8143FAF4 | 4E 80 04 21 */	bctrl
/* 8143FAF8 | 7C 7E 1B 78 */	mr r30, r3
.L_8143FAFC:
/* 8143FAFC | 81 96 00 00 */	lwz r12, 0x0(r22)
/* 8143FB00 | 7E C3 B3 78 */	mr r3, r22
/* 8143FB04 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8143FB08 | 7D 89 03 A6 */	mtctr r12
/* 8143FB0C | 4E 80 04 21 */	bctrl
/* 8143FB10 | 85 83 00 14 */	lwzu r12, 0x14(r3)
/* 8143FB14 | FC 20 F0 90 */	fmr f1, f30
/* 8143FB18 | FC 40 F8 90 */	fmr f2, f31
/* 8143FB1C | 7E E4 BB 78 */	mr r4, r23
/* 8143FB20 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8143FB24 | 7F 05 C3 78 */	mr r5, r24
/* 8143FB28 | 7F 26 CB 78 */	mr r6, r25
/* 8143FB2C | 7F 47 D3 78 */	mr r7, r26
/* 8143FB30 | 39 01 00 08 */	addi r8, r1, 0x8
/* 8143FB34 | 7D 89 03 A6 */	mtctr r12
/* 8143FB38 | 4E 80 04 21 */	bctrl
/* 8143FB3C | 81 96 00 00 */	lwz r12, 0x0(r22)
/* 8143FB40 | 7C 7F 1B 78 */	mr r31, r3
/* 8143FB44 | 7E C3 B3 78 */	mr r3, r22
/* 8143FB48 | 3B 80 00 00 */	li r28, 0x0
/* 8143FB4C | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8143FB50 | 7D 89 03 A6 */	mtctr r12
/* 8143FB54 | 4E 80 04 21 */	bctrl
/* 8143FB58 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143FB5C | 81 8C 01 0C */	lwz r12, 0x10c(r12)
/* 8143FB60 | 7D 89 03 A6 */	mtctr r12
/* 8143FB64 | 4E 80 04 21 */	bctrl
/* 8143FB68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143FB6C | 41 82 00 48 */	beq .L_8143FBB4
/* 8143FB70 | 81 96 00 00 */	lwz r12, 0x0(r22)
/* 8143FB74 | 7E C3 B3 78 */	mr r3, r22
/* 8143FB78 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8143FB7C | 7D 89 03 A6 */	mtctr r12
/* 8143FB80 | 4E 80 04 21 */	bctrl
/* 8143FB84 | 85 83 00 24 */	lwzu r12, 0x24(r3)
/* 8143FB88 | FC 20 F0 90 */	fmr f1, f30
/* 8143FB8C | FC 40 F8 90 */	fmr f2, f31
/* 8143FB90 | 7E E4 BB 78 */	mr r4, r23
/* 8143FB94 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8143FB98 | 7F 05 C3 78 */	mr r5, r24
/* 8143FB9C | 7F 26 CB 78 */	mr r6, r25
/* 8143FBA0 | 7F 47 D3 78 */	mr r7, r26
/* 8143FBA4 | 39 01 00 08 */	addi r8, r1, 0x8
/* 8143FBA8 | 7D 89 03 A6 */	mtctr r12
/* 8143FBAC | 4E 80 04 21 */	bctrl
/* 8143FBB0 | 7C 7C 1B 78 */	mr r28, r3
.L_8143FBB4:
/* 8143FBB4 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 8143FBB8 | 3B 60 00 00 */	li r27, 0x0
/* 8143FBBC | 40 82 00 4C */	bne .L_8143FC08
/* 8143FBC0 | 81 96 00 00 */	lwz r12, 0x0(r22)
/* 8143FBC4 | 7E C3 B3 78 */	mr r3, r22
/* 8143FBC8 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8143FBCC | 7D 89 03 A6 */	mtctr r12
/* 8143FBD0 | 4E 80 04 21 */	bctrl
/* 8143FBD4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143FBD8 | FC 20 F0 90 */	fmr f1, f30
/* 8143FBDC | FC 40 F8 90 */	fmr f2, f31
/* 8143FBE0 | 7E E4 BB 78 */	mr r4, r23
/* 8143FBE4 | 81 8C 02 24 */	lwz r12, 0x224(r12)
/* 8143FBE8 | 7F 05 C3 78 */	mr r5, r24
/* 8143FBEC | 7F 26 CB 78 */	mr r6, r25
/* 8143FBF0 | 7F 47 D3 78 */	mr r7, r26
/* 8143FBF4 | 39 01 00 08 */	addi r8, r1, 0x8
/* 8143FBF8 | 7D 89 03 A6 */	mtctr r12
/* 8143FBFC | 4E 80 04 21 */	bctrl
/* 8143FC00 | 7C 7B 1B 78 */	mr r27, r3
/* 8143FC04 | 48 00 00 44 */	b .L_8143FC48
.L_8143FC08:
/* 8143FC08 | 81 96 00 00 */	lwz r12, 0x0(r22)
/* 8143FC0C | 7E C3 B3 78 */	mr r3, r22
/* 8143FC10 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8143FC14 | 7D 89 03 A6 */	mtctr r12
/* 8143FC18 | 4E 80 04 21 */	bctrl
/* 8143FC1C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143FC20 | 7E E4 BB 78 */	mr r4, r23
/* 8143FC24 | C0 22 8A 70 */	lfs f1, lbl_81694E70@sda21(r0)
/* 8143FC28 | 7F 05 C3 78 */	mr r5, r24
/* 8143FC2C | 81 8C 02 24 */	lwz r12, 0x224(r12)
/* 8143FC30 | 7F 26 CB 78 */	mr r6, r25
/* 8143FC34 | FC 40 08 90 */	fmr f2, f1
/* 8143FC38 | 7F 47 D3 78 */	mr r7, r26
/* 8143FC3C | 39 01 00 08 */	addi r8, r1, 0x8
/* 8143FC40 | 7D 89 03 A6 */	mtctr r12
/* 8143FC44 | 4E 80 04 21 */	bctrl
.L_8143FC48:
/* 8143FC48 | 81 96 00 00 */	lwz r12, 0x0(r22)
/* 8143FC4C | 7F C4 E3 78 */	or r4, r30, r28
/* 8143FC50 | 7F 60 FB 78 */	or r0, r27, r31
/* 8143FC54 | 7E C3 B3 78 */	mr r3, r22
/* 8143FC58 | 7C 84 03 78 */	or r4, r4, r0
/* 8143FC5C | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8143FC60 | 7C 04 00 D0 */	neg r0, r4
/* 8143FC64 | 7C 00 23 78 */	or r0, r0, r4
/* 8143FC68 | 54 1E 0F FE */	srwi r30, r0, 31
/* 8143FC6C | 7D 89 03 A6 */	mtctr r12
/* 8143FC70 | 4E 80 04 21 */	bctrl
/* 8143FC74 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143FC78 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8143FC7C | 7D 89 03 A6 */	mtctr r12
/* 8143FC80 | 4E 80 04 21 */	bctrl
/* 8143FC84 | 7C 1D 18 40 */	cmplw r29, r3
/* 8143FC88 | 41 82 00 C0 */	beq .L_8143FD48
/* 8143FC8C | 81 96 00 00 */	lwz r12, 0x0(r22)
/* 8143FC90 | 7E C3 B3 78 */	mr r3, r22
/* 8143FC94 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8143FC98 | 7D 89 03 A6 */	mtctr r12
/* 8143FC9C | 4E 80 04 21 */	bctrl
/* 8143FCA0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143FCA4 | 38 80 00 06 */	li r4, 0x6
/* 8143FCA8 | 38 A0 00 00 */	li r5, 0x0
/* 8143FCAC | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8143FCB0 | 7D 89 03 A6 */	mtctr r12
/* 8143FCB4 | 4E 80 04 21 */	bctrl
/* 8143FCB8 | 81 96 00 00 */	lwz r12, 0x0(r22)
/* 8143FCBC | 7E C3 B3 78 */	mr r3, r22
/* 8143FCC0 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8143FCC4 | 7D 89 03 A6 */	mtctr r12
/* 8143FCC8 | 4E 80 04 21 */	bctrl
/* 8143FCCC | 4B FE 87 D9 */	bl checkValidation__Q39textinput12candidatebox4BaseFv
/* 8143FCD0 | 81 96 00 00 */	lwz r12, 0x0(r22)
/* 8143FCD4 | 7E C3 B3 78 */	mr r3, r22
/* 8143FCD8 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8143FCDC | 7D 89 03 A6 */	mtctr r12
/* 8143FCE0 | 4E 80 04 21 */	bctrl
/* 8143FCE4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143FCE8 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8143FCEC | 7D 89 03 A6 */	mtctr r12
/* 8143FCF0 | 4E 80 04 21 */	bctrl
/* 8143FCF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143FCF8 | 41 82 00 2C */	beq .L_8143FD24
/* 8143FCFC | 81 96 00 00 */	lwz r12, 0x0(r22)
/* 8143FD00 | 7E C3 B3 78 */	mr r3, r22
/* 8143FD04 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8143FD08 | 7D 89 03 A6 */	mtctr r12
/* 8143FD0C | 4E 80 04 21 */	bctrl
/* 8143FD10 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143FD14 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8143FD18 | 7D 89 03 A6 */	mtctr r12
/* 8143FD1C | 4E 80 04 21 */	bctrl
/* 8143FD20 | 48 00 00 28 */	b .L_8143FD48
.L_8143FD24:
/* 8143FD24 | 81 96 00 00 */	lwz r12, 0x0(r22)
/* 8143FD28 | 7E C3 B3 78 */	mr r3, r22
/* 8143FD2C | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8143FD30 | 7D 89 03 A6 */	mtctr r12
/* 8143FD34 | 4E 80 04 21 */	bctrl
/* 8143FD38 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143FD3C | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8143FD40 | 7D 89 03 A6 */	mtctr r12
/* 8143FD44 | 4E 80 04 21 */	bctrl
.L_8143FD48:
/* 8143FD48 | 7F C3 F3 78 */	mr r3, r30
.L_8143FD4C:
/* 8143FD4C | E3 E1 00 68 */	psq_l f31, 0x68(r1), 0, qr0
/* 8143FD50 | CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8143FD54 | E3 C1 00 58 */	psq_l f30, 0x58(r1), 0, qr0
/* 8143FD58 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8143FD5C | CB C1 00 50 */	lfd f30, 0x50(r1)
/* 8143FD60 | 48 1B 97 99 */	bl _restgpr_22
/* 8143FD64 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 8143FD68 | 7C 08 03 A6 */	mtlr r0
/* 8143FD6C | 38 21 00 70 */	addi r1, r1, 0x70
/* 8143FD70 | 4E 80 00 20 */	blr
.endfn updateInput__Q49textinput6extend4memo13EditMemoStateFiffUlUlUl

# .text:0x3DEC | 0x8143FD74 | size: 0x14
# textinput::extend::memo::State::HWKeyboard()
.fn HWKeyboard__Q49textinput6extend4memo5StateFv, global
/* 8143FD74 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8143FD78 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143FD7C | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8143FD80 | 7D 89 03 A6 */	mtctr r12
/* 8143FD84 | 4E 80 04 20 */	bctr
.endfn HWKeyboard__Q49textinput6extend4memo5StateFv

# .text:0x3E00 | 0x8143FD88 | size: 0x264
# textinput::extend::memo::EditMemoState::updateInput(textinput::input::HKBManager&)
.fn updateInput__Q49textinput6extend4memo13EditMemoStateFRQ39textinput5input10HKBManager, global
/* 8143FD88 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8143FD8C | 7C 08 02 A6 */	mflr r0
/* 8143FD90 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8143FD94 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8143FD98 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8143FD9C | 7C 9E 23 78 */	mr r30, r4
/* 8143FDA0 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8143FDA4 | 7C 7D 1B 78 */	mr r29, r3
/* 8143FDA8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143FDAC | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8143FDB0 | 7D 89 03 A6 */	mtctr r12
/* 8143FDB4 | 4E 80 04 21 */	bctrl
/* 8143FDB8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143FDBC | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8143FDC0 | 7D 89 03 A6 */	mtctr r12
/* 8143FDC4 | 4E 80 04 21 */	bctrl
/* 8143FDC8 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8143FDCC | 7C 7F 1B 78 */	mr r31, r3
/* 8143FDD0 | 7F A3 EB 78 */	mr r3, r29
/* 8143FDD4 | 81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8143FDD8 | 7D 89 03 A6 */	mtctr r12
/* 8143FDDC | 4E 80 04 21 */	bctrl
/* 8143FDE0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143FDE4 | 81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8143FDE8 | 7D 89 03 A6 */	mtctr r12
/* 8143FDEC | 4E 80 04 21 */	bctrl
/* 8143FDF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143FDF4 | 41 82 00 0C */	beq .L_8143FE00
/* 8143FDF8 | 38 60 00 00 */	li r3, 0x0
/* 8143FDFC | 48 00 01 D4 */	b .L_8143FFD0
.L_8143FE00:
/* 8143FE00 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8143FE04 | 7F A3 EB 78 */	mr r3, r29
/* 8143FE08 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8143FE0C | 7D 89 03 A6 */	mtctr r12
/* 8143FE10 | 4E 80 04 21 */	bctrl
/* 8143FE14 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143FE18 | 7F C4 F3 78 */	mr r4, r30
/* 8143FE1C | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8143FE20 | 7D 89 03 A6 */	mtctr r12
/* 8143FE24 | 4E 80 04 21 */	bctrl
/* 8143FE28 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8143FE2C | 7F A3 EB 78 */	mr r3, r29
/* 8143FE30 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 8143FE34 | 7D 89 03 A6 */	mtctr r12
/* 8143FE38 | 4E 80 04 21 */	bctrl
/* 8143FE3C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143FE40 | 81 8C 00 DC */	lwz r12, 0xdc(r12)
/* 8143FE44 | 7D 89 03 A6 */	mtctr r12
/* 8143FE48 | 4E 80 04 21 */	bctrl
/* 8143FE4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143FE50 | 41 82 00 30 */	beq .L_8143FE80
/* 8143FE54 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8143FE58 | 7F A3 EB 78 */	mr r3, r29
/* 8143FE5C | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 8143FE60 | 7D 89 03 A6 */	mtctr r12
/* 8143FE64 | 4E 80 04 21 */	bctrl
/* 8143FE68 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143FE6C | 7F C4 F3 78 */	mr r4, r30
/* 8143FE70 | 81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 8143FE74 | 7D 89 03 A6 */	mtctr r12
/* 8143FE78 | 4E 80 04 21 */	bctrl
/* 8143FE7C | 48 00 01 54 */	b .L_8143FFD0
.L_8143FE80:
/* 8143FE80 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8143FE84 | 41 82 00 34 */	beq .L_8143FEB8
/* 8143FE88 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8143FE8C | 7F A3 EB 78 */	mr r3, r29
/* 8143FE90 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8143FE94 | 7D 89 03 A6 */	mtctr r12
/* 8143FE98 | 4E 80 04 21 */	bctrl
/* 8143FE9C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143FEA0 | 7F C4 F3 78 */	mr r4, r30
/* 8143FEA4 | 81 8C 01 3C */	lwz r12, 0x13c(r12)
/* 8143FEA8 | 7D 89 03 A6 */	mtctr r12
/* 8143FEAC | 4E 80 04 21 */	bctrl
/* 8143FEB0 | 7C 7E 1B 78 */	mr r30, r3
/* 8143FEB4 | 48 00 00 30 */	b .L_8143FEE4
.L_8143FEB8:
/* 8143FEB8 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8143FEBC | 7F A3 EB 78 */	mr r3, r29
/* 8143FEC0 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8143FEC4 | 7D 89 03 A6 */	mtctr r12
/* 8143FEC8 | 4E 80 04 21 */	bctrl
/* 8143FECC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143FED0 | 7F C4 F3 78 */	mr r4, r30
/* 8143FED4 | 81 8C 01 20 */	lwz r12, 0x120(r12)
/* 8143FED8 | 7D 89 03 A6 */	mtctr r12
/* 8143FEDC | 4E 80 04 21 */	bctrl
/* 8143FEE0 | 7C 7E 1B 78 */	mr r30, r3
.L_8143FEE4:
/* 8143FEE4 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8143FEE8 | 7F A3 EB 78 */	mr r3, r29
/* 8143FEEC | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8143FEF0 | 7D 89 03 A6 */	mtctr r12
/* 8143FEF4 | 4E 80 04 21 */	bctrl
/* 8143FEF8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143FEFC | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8143FF00 | 7D 89 03 A6 */	mtctr r12
/* 8143FF04 | 4E 80 04 21 */	bctrl
/* 8143FF08 | 7C 1F 18 40 */	cmplw r31, r3
/* 8143FF0C | 41 82 00 C0 */	beq .L_8143FFCC
/* 8143FF10 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8143FF14 | 7F A3 EB 78 */	mr r3, r29
/* 8143FF18 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8143FF1C | 7D 89 03 A6 */	mtctr r12
/* 8143FF20 | 4E 80 04 21 */	bctrl
/* 8143FF24 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143FF28 | 38 80 00 06 */	li r4, 0x6
/* 8143FF2C | 38 A0 00 00 */	li r5, 0x0
/* 8143FF30 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8143FF34 | 7D 89 03 A6 */	mtctr r12
/* 8143FF38 | 4E 80 04 21 */	bctrl
/* 8143FF3C | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8143FF40 | 7F A3 EB 78 */	mr r3, r29
/* 8143FF44 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8143FF48 | 7D 89 03 A6 */	mtctr r12
/* 8143FF4C | 4E 80 04 21 */	bctrl
/* 8143FF50 | 4B FE 85 55 */	bl checkValidation__Q39textinput12candidatebox4BaseFv
/* 8143FF54 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8143FF58 | 7F A3 EB 78 */	mr r3, r29
/* 8143FF5C | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8143FF60 | 7D 89 03 A6 */	mtctr r12
/* 8143FF64 | 4E 80 04 21 */	bctrl
/* 8143FF68 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143FF6C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8143FF70 | 7D 89 03 A6 */	mtctr r12
/* 8143FF74 | 4E 80 04 21 */	bctrl
/* 8143FF78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8143FF7C | 41 82 00 2C */	beq .L_8143FFA8
/* 8143FF80 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8143FF84 | 7F A3 EB 78 */	mr r3, r29
/* 8143FF88 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8143FF8C | 7D 89 03 A6 */	mtctr r12
/* 8143FF90 | 4E 80 04 21 */	bctrl
/* 8143FF94 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143FF98 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8143FF9C | 7D 89 03 A6 */	mtctr r12
/* 8143FFA0 | 4E 80 04 21 */	bctrl
/* 8143FFA4 | 48 00 00 28 */	b .L_8143FFCC
.L_8143FFA8:
/* 8143FFA8 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 8143FFAC | 7F A3 EB 78 */	mr r3, r29
/* 8143FFB0 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8143FFB4 | 7D 89 03 A6 */	mtctr r12
/* 8143FFB8 | 4E 80 04 21 */	bctrl
/* 8143FFBC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143FFC0 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8143FFC4 | 7D 89 03 A6 */	mtctr r12
/* 8143FFC8 | 4E 80 04 21 */	bctrl
.L_8143FFCC:
/* 8143FFCC | 7F C3 F3 78 */	mr r3, r30
.L_8143FFD0:
/* 8143FFD0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8143FFD4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8143FFD8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8143FFDC | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8143FFE0 | 7C 08 03 A6 */	mtlr r0
/* 8143FFE4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8143FFE8 | 4E 80 00 20 */	blr
.endfn updateInput__Q49textinput6extend4memo13EditMemoStateFRQ39textinput5input10HKBManager

# .text:0x4064 | 0x8143FFEC | size: 0x604
# textinput::extend::memo::EditMemoState::start()
.fn start__Q49textinput6extend4memo13EditMemoStateFv, global
/* 8143FFEC | 94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 8143FFF0 | 7C 08 02 A6 */	mflr r0
/* 8143FFF4 | 90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8143FFF8 | 93 E1 00 EC */	stw r31, 0xec(r1)
/* 8143FFFC | 7C 7F 1B 78 */	mr r31, r3
/* 81440000 | 93 C1 00 E8 */	stw r30, 0xe8(r1)
/* 81440004 | 93 A1 00 E4 */	stw r29, 0xe4(r1)
/* 81440008 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8144000C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81440010 | 81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 81440014 | 7D 89 03 A6 */	mtctr r12
/* 81440018 | 4E 80 04 21 */	bctrl
/* 8144001C | 2C 03 00 01 */	cmpwi r3, 0x1
/* 81440020 | 41 82 00 20 */	beq .L_81440040
/* 81440024 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 81440028 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8144002C | 81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 81440030 | 7D 89 03 A6 */	mtctr r12
/* 81440034 | 4E 80 04 21 */	bctrl
/* 81440038 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 8144003C | 40 82 00 B4 */	bne .L_814400F0
.L_81440040:
/* 81440040 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81440044 | 7F E3 FB 78 */	mr r3, r31
/* 81440048 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8144004C | 7D 89 03 A6 */	mtctr r12
/* 81440050 | 4E 80 04 21 */	bctrl
/* 81440054 | 38 80 00 02 */	li r4, 0x2
/* 81440058 | 48 00 40 CD */	bl setEditMode__Q49textinput6extend4memo9InputFormFQ59textinput6extend4memo9InputForm8EditMode
/* 8144005C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81440060 | 38 8D 94 98 */	li r4, lbl_816974D8@sda21
/* 81440064 | C0 24 00 04 */	lfs f1, 0x4(r4)
/* 81440068 | 7F E3 FB 78 */	mr r3, r31
/* 8144006C | C0 02 8A 58 */	lfs f0, lbl_81694E58@sda21(r0)
/* 81440070 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81440074 | D0 01 00 40 */	stfs f0, 0x40(r1)
/* 81440078 | D0 21 00 44 */	stfs f1, 0x44(r1)
/* 8144007C | 7D 89 03 A6 */	mtctr r12
/* 81440080 | 4E 80 04 21 */	bctrl
/* 81440084 | 85 83 02 18 */	lwzu r12, 0x218(r3)
/* 81440088 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8144008C | 7D 89 03 A6 */	mtctr r12
/* 81440090 | 4E 80 04 21 */	bctrl
/* 81440094 | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 81440098 | 7F E3 FB 78 */	mr r3, r31
/* 8144009C | C0 41 00 40 */	lfs f2, 0x40(r1)
/* 814400A0 | C0 21 00 44 */	lfs f1, 0x44(r1)
/* 814400A4 | D0 44 00 2C */	stfs f2, 0x2c(r4)
/* 814400A8 | C0 02 8A 58 */	lfs f0, lbl_81694E58@sda21(r0)
/* 814400AC | D0 24 00 30 */	stfs f1, 0x30(r4)
/* 814400B0 | D0 04 00 34 */	stfs f0, 0x34(r4)
/* 814400B4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814400B8 | D0 41 00 9C */	stfs f2, 0x9c(r1)
/* 814400BC | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 814400C0 | D0 21 00 A0 */	stfs f1, 0xa0(r1)
/* 814400C4 | D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 814400C8 | 7D 89 03 A6 */	mtctr r12
/* 814400CC | 4E 80 04 21 */	bctrl
/* 814400D0 | 85 83 02 18 */	lwzu r12, 0x218(r3)
/* 814400D4 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 814400D8 | 7D 89 03 A6 */	mtctr r12
/* 814400DC | 4E 80 04 21 */	bctrl
/* 814400E0 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 814400E4 | 38 00 00 FF */	li r0, 0xff
/* 814400E8 | 98 03 00 CD */	stb r0, 0xcd(r3)
/* 814400EC | 48 00 00 A4 */	b .L_81440190
.L_814400F0:
/* 814400F0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814400F4 | 38 8D 94 88 */	li r4, lbl_816974C8@sda21
/* 814400F8 | C0 24 00 04 */	lfs f1, 0x4(r4)
/* 814400FC | 7F E3 FB 78 */	mr r3, r31
/* 81440100 | C0 02 8A 58 */	lfs f0, lbl_81694E58@sda21(r0)
/* 81440104 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81440108 | D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8144010C | D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 81440110 | 7D 89 03 A6 */	mtctr r12
/* 81440114 | 4E 80 04 21 */	bctrl
/* 81440118 | 85 83 02 18 */	lwzu r12, 0x218(r3)
/* 8144011C | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81440120 | 7D 89 03 A6 */	mtctr r12
/* 81440124 | 4E 80 04 21 */	bctrl
/* 81440128 | 80 A3 00 10 */	lwz r5, 0x10(r3)
/* 8144012C | 38 8D 94 90 */	li r4, lbl_816974D0@sda21
/* 81440130 | C0 61 00 38 */	lfs f3, 0x38(r1)
/* 81440134 | 7F E3 FB 78 */	mr r3, r31
/* 81440138 | C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 8144013C | D0 65 00 2C */	stfs f3, 0x2c(r5)
/* 81440140 | C0 22 8A 58 */	lfs f1, lbl_81694E58@sda21(r0)
/* 81440144 | D0 45 00 30 */	stfs f2, 0x30(r5)
/* 81440148 | D0 25 00 34 */	stfs f1, 0x34(r5)
/* 8144014C | C0 04 00 04 */	lfs f0, 0x4(r4)
/* 81440150 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81440154 | FC 00 00 1E */	fctiwz f0, f0
/* 81440158 | D0 61 00 90 */	stfs f3, 0x90(r1)
/* 8144015C | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81440160 | D0 41 00 94 */	stfs f2, 0x94(r1)
/* 81440164 | D8 01 00 A8 */	stfd f0, 0xa8(r1)
/* 81440168 | D0 21 00 98 */	stfs f1, 0x98(r1)
/* 8144016C | 83 C1 00 AC */	lwz r30, 0xac(r1)
/* 81440170 | 7D 89 03 A6 */	mtctr r12
/* 81440174 | 4E 80 04 21 */	bctrl
/* 81440178 | 85 83 02 18 */	lwzu r12, 0x218(r3)
/* 8144017C | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81440180 | 7D 89 03 A6 */	mtctr r12
/* 81440184 | 4E 80 04 21 */	bctrl
/* 81440188 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8144018C | 9B C3 00 CD */	stb r30, 0xcd(r3)
.L_81440190:
/* 81440190 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81440194 | 3B CD 94 88 */	li r30, lbl_816974C8@sda21
/* 81440198 | C0 3E 00 04 */	lfs f1, 0x4(r30)
/* 8144019C | 7F E3 FB 78 */	mr r3, r31
/* 814401A0 | C0 02 8A 58 */	lfs f0, lbl_81694E58@sda21(r0)
/* 814401A4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 814401A8 | D0 01 00 30 */	stfs f0, 0x30(r1)
/* 814401AC | D0 21 00 34 */	stfs f1, 0x34(r1)
/* 814401B0 | 7D 89 03 A6 */	mtctr r12
/* 814401B4 | 4E 80 04 21 */	bctrl
/* 814401B8 | 85 83 00 44 */	lwzu r12, 0x44(r3)
/* 814401BC | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 814401C0 | 7D 89 03 A6 */	mtctr r12
/* 814401C4 | 4E 80 04 21 */	bctrl
/* 814401C8 | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 814401CC | 7F E3 FB 78 */	mr r3, r31
/* 814401D0 | C0 41 00 30 */	lfs f2, 0x30(r1)
/* 814401D4 | C0 21 00 34 */	lfs f1, 0x34(r1)
/* 814401D8 | D0 44 00 2C */	stfs f2, 0x2c(r4)
/* 814401DC | C0 02 8A 58 */	lfs f0, lbl_81694E58@sda21(r0)
/* 814401E0 | D0 24 00 30 */	stfs f1, 0x30(r4)
/* 814401E4 | D0 04 00 34 */	stfs f0, 0x34(r4)
/* 814401E8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814401EC | C0 7E 00 04 */	lfs f3, 0x4(r30)
/* 814401F0 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 814401F4 | D0 41 00 84 */	stfs f2, 0x84(r1)
/* 814401F8 | D0 21 00 88 */	stfs f1, 0x88(r1)
/* 814401FC | D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 81440200 | D0 01 00 28 */	stfs f0, 0x28(r1)
/* 81440204 | D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 81440208 | 7D 89 03 A6 */	mtctr r12
/* 8144020C | 4E 80 04 21 */	bctrl
/* 81440210 | 85 83 00 38 */	lwzu r12, 0x38(r3)
/* 81440214 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81440218 | 7D 89 03 A6 */	mtctr r12
/* 8144021C | 4E 80 04 21 */	bctrl
/* 81440220 | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 81440224 | 7F E3 FB 78 */	mr r3, r31
/* 81440228 | C0 41 00 28 */	lfs f2, 0x28(r1)
/* 8144022C | C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 81440230 | D0 44 00 2C */	stfs f2, 0x2c(r4)
/* 81440234 | C0 02 8A 58 */	lfs f0, lbl_81694E58@sda21(r0)
/* 81440238 | D0 24 00 30 */	stfs f1, 0x30(r4)
/* 8144023C | D0 04 00 34 */	stfs f0, 0x34(r4)
/* 81440240 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81440244 | C0 7E 00 04 */	lfs f3, 0x4(r30)
/* 81440248 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8144024C | D0 41 00 78 */	stfs f2, 0x78(r1)
/* 81440250 | D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 81440254 | D0 01 00 80 */	stfs f0, 0x80(r1)
/* 81440258 | D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8144025C | D0 61 00 24 */	stfs f3, 0x24(r1)
/* 81440260 | 7D 89 03 A6 */	mtctr r12
/* 81440264 | 4E 80 04 21 */	bctrl
/* 81440268 | 85 83 00 24 */	lwzu r12, 0x24(r3)
/* 8144026C | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81440270 | 7D 89 03 A6 */	mtctr r12
/* 81440274 | 4E 80 04 21 */	bctrl
/* 81440278 | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 8144027C | 7F E3 FB 78 */	mr r3, r31
/* 81440280 | C0 81 00 20 */	lfs f4, 0x20(r1)
/* 81440284 | C0 61 00 24 */	lfs f3, 0x24(r1)
/* 81440288 | D0 84 00 2C */	stfs f4, 0x2c(r4)
/* 8144028C | C0 42 8A 58 */	lfs f2, lbl_81694E58@sda21(r0)
/* 81440290 | D0 64 00 30 */	stfs f3, 0x30(r4)
/* 81440294 | C0 02 8A 64 */	lfs f0, lbl_81694E64@sda21(r0)
/* 81440298 | D0 44 00 34 */	stfs f2, 0x34(r4)
/* 8144029C | C0 3E 00 04 */	lfs f1, 0x4(r30)
/* 814402A0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814402A4 | EC 01 00 24 */	fdivs f0, f1, f0
/* 814402A8 | D0 81 00 6C */	stfs f4, 0x6c(r1)
/* 814402AC | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 814402B0 | D0 61 00 70 */	stfs f3, 0x70(r1)
/* 814402B4 | D0 41 00 74 */	stfs f2, 0x74(r1)
/* 814402B8 | D0 41 00 18 */	stfs f2, 0x18(r1)
/* 814402BC | D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 814402C0 | 7D 89 03 A6 */	mtctr r12
/* 814402C4 | 4E 80 04 21 */	bctrl
/* 814402C8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814402CC | 81 8C 00 B8 */	lwz r12, 0xb8(r12)
/* 814402D0 | 7D 89 03 A6 */	mtctr r12
/* 814402D4 | 4E 80 04 21 */	bctrl
/* 814402D8 | C0 81 00 18 */	lfs f4, 0x18(r1)
/* 814402DC | C0 42 8A 58 */	lfs f2, lbl_81694E58@sda21(r0)
/* 814402E0 | C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 814402E4 | D0 83 00 2C */	stfs f4, 0x2c(r3)
/* 814402E8 | C0 02 8A 64 */	lfs f0, lbl_81694E64@sda21(r0)
/* 814402EC | D0 63 00 30 */	stfs f3, 0x30(r3)
/* 814402F0 | D0 43 00 34 */	stfs f2, 0x34(r3)
/* 814402F4 | 7F E3 FB 78 */	mr r3, r31
/* 814402F8 | C0 3E 00 04 */	lfs f1, 0x4(r30)
/* 814402FC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81440300 | FC 20 08 50 */	fneg f1, f1
/* 81440304 | D0 81 00 60 */	stfs f4, 0x60(r1)
/* 81440308 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8144030C | D0 61 00 64 */	stfs f3, 0x64(r1)
/* 81440310 | EC 01 00 24 */	fdivs f0, f1, f0
/* 81440314 | D0 41 00 68 */	stfs f2, 0x68(r1)
/* 81440318 | D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8144031C | D0 01 00 14 */	stfs f0, 0x14(r1)
/* 81440320 | 7D 89 03 A6 */	mtctr r12
/* 81440324 | 4E 80 04 21 */	bctrl
/* 81440328 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8144032C | 81 8C 00 B4 */	lwz r12, 0xb4(r12)
/* 81440330 | 7D 89 03 A6 */	mtctr r12
/* 81440334 | 4E 80 04 21 */	bctrl
/* 81440338 | C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8144033C | C0 02 8A 58 */	lfs f0, lbl_81694E58@sda21(r0)
/* 81440340 | C0 21 00 14 */	lfs f1, 0x14(r1)
/* 81440344 | D0 43 00 2C */	stfs f2, 0x2c(r3)
/* 81440348 | D0 23 00 30 */	stfs f1, 0x30(r3)
/* 8144034C | D0 03 00 34 */	stfs f0, 0x34(r3)
/* 81440350 | 7F E3 FB 78 */	mr r3, r31
/* 81440354 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81440358 | D0 41 00 54 */	stfs f2, 0x54(r1)
/* 8144035C | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81440360 | D0 21 00 58 */	stfs f1, 0x58(r1)
/* 81440364 | D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 81440368 | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 8144036C | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 81440370 | 7D 89 03 A6 */	mtctr r12
/* 81440374 | 4E 80 04 21 */	bctrl
/* 81440378 | 85 83 00 04 */	lwzu r12, 0x4(r3)
/* 8144037C | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81440380 | 7D 89 03 A6 */	mtctr r12
/* 81440384 | 4E 80 04 21 */	bctrl
/* 81440388 | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 8144038C | 3B CD 94 90 */	li r30, lbl_816974D0@sda21
/* 81440390 | C0 61 00 08 */	lfs f3, 0x8(r1)
/* 81440394 | 7F E3 FB 78 */	mr r3, r31
/* 81440398 | C0 41 00 0C */	lfs f2, 0xc(r1)
/* 8144039C | D0 64 00 2C */	stfs f3, 0x2c(r4)
/* 814403A0 | C0 22 8A 58 */	lfs f1, lbl_81694E58@sda21(r0)
/* 814403A4 | D0 44 00 30 */	stfs f2, 0x30(r4)
/* 814403A8 | D0 24 00 34 */	stfs f1, 0x34(r4)
/* 814403AC | C0 1E 00 04 */	lfs f0, 0x4(r30)
/* 814403B0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814403B4 | FC 00 00 1E */	fctiwz f0, f0
/* 814403B8 | D0 61 00 48 */	stfs f3, 0x48(r1)
/* 814403BC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 814403C0 | D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 814403C4 | D8 01 00 A8 */	stfd f0, 0xa8(r1)
/* 814403C8 | D0 21 00 50 */	stfs f1, 0x50(r1)
/* 814403CC | 83 A1 00 AC */	lwz r29, 0xac(r1)
/* 814403D0 | 7D 89 03 A6 */	mtctr r12
/* 814403D4 | 4E 80 04 21 */	bctrl
/* 814403D8 | 85 83 00 44 */	lwzu r12, 0x44(r3)
/* 814403DC | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 814403E0 | 7D 89 03 A6 */	mtctr r12
/* 814403E4 | 4E 80 04 21 */	bctrl
/* 814403E8 | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 814403EC | 7F E3 FB 78 */	mr r3, r31
/* 814403F0 | 9B A4 00 CD */	stb r29, 0xcd(r4)
/* 814403F4 | C0 1E 00 04 */	lfs f0, 0x4(r30)
/* 814403F8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814403FC | FC 00 00 1E */	fctiwz f0, f0
/* 81440400 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 81440404 | D8 01 00 B0 */	stfd f0, 0xb0(r1)
/* 81440408 | 83 A1 00 B4 */	lwz r29, 0xb4(r1)
/* 8144040C | 7D 89 03 A6 */	mtctr r12
/* 81440410 | 4E 80 04 21 */	bctrl
/* 81440414 | 85 83 00 38 */	lwzu r12, 0x38(r3)
/* 81440418 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8144041C | 7D 89 03 A6 */	mtctr r12
/* 81440420 | 4E 80 04 21 */	bctrl
/* 81440424 | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 81440428 | 7F E3 FB 78 */	mr r3, r31
/* 8144042C | 9B A4 00 CD */	stb r29, 0xcd(r4)
/* 81440430 | C0 1E 00 04 */	lfs f0, 0x4(r30)
/* 81440434 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81440438 | FC 00 00 1E */	fctiwz f0, f0
/* 8144043C | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 81440440 | D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 81440444 | 83 A1 00 BC */	lwz r29, 0xbc(r1)
/* 81440448 | 7D 89 03 A6 */	mtctr r12
/* 8144044C | 4E 80 04 21 */	bctrl
/* 81440450 | 85 83 00 24 */	lwzu r12, 0x24(r3)
/* 81440454 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81440458 | 7D 89 03 A6 */	mtctr r12
/* 8144045C | 4E 80 04 21 */	bctrl
/* 81440460 | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 81440464 | 7F E3 FB 78 */	mr r3, r31
/* 81440468 | 9B A4 00 CD */	stb r29, 0xcd(r4)
/* 8144046C | C0 1E 00 04 */	lfs f0, 0x4(r30)
/* 81440470 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81440474 | FC 00 00 1E */	fctiwz f0, f0
/* 81440478 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8144047C | D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 81440480 | 83 A1 00 C4 */	lwz r29, 0xc4(r1)
/* 81440484 | 7D 89 03 A6 */	mtctr r12
/* 81440488 | 4E 80 04 21 */	bctrl
/* 8144048C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81440490 | 81 8C 00 B8 */	lwz r12, 0xb8(r12)
/* 81440494 | 7D 89 03 A6 */	mtctr r12
/* 81440498 | 4E 80 04 21 */	bctrl
/* 8144049C | 9B A3 00 CD */	stb r29, 0xcd(r3)
/* 814404A0 | 7F E3 FB 78 */	mr r3, r31
/* 814404A4 | C0 1E 00 04 */	lfs f0, 0x4(r30)
/* 814404A8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814404AC | FC 00 00 1E */	fctiwz f0, f0
/* 814404B0 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 814404B4 | D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 814404B8 | 83 A1 00 CC */	lwz r29, 0xcc(r1)
/* 814404BC | 7D 89 03 A6 */	mtctr r12
/* 814404C0 | 4E 80 04 21 */	bctrl
/* 814404C4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814404C8 | 81 8C 00 B4 */	lwz r12, 0xb4(r12)
/* 814404CC | 7D 89 03 A6 */	mtctr r12
/* 814404D0 | 4E 80 04 21 */	bctrl
/* 814404D4 | 9B A3 00 CD */	stb r29, 0xcd(r3)
/* 814404D8 | 7F E3 FB 78 */	mr r3, r31
/* 814404DC | C0 1E 00 04 */	lfs f0, 0x4(r30)
/* 814404E0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814404E4 | FC 00 00 1E */	fctiwz f0, f0
/* 814404E8 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 814404EC | D8 01 00 D0 */	stfd f0, 0xd0(r1)
/* 814404F0 | 83 A1 00 D4 */	lwz r29, 0xd4(r1)
/* 814404F4 | 7D 89 03 A6 */	mtctr r12
/* 814404F8 | 4E 80 04 21 */	bctrl
/* 814404FC | 85 83 00 04 */	lwzu r12, 0x4(r3)
/* 81440500 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81440504 | 7D 89 03 A6 */	mtctr r12
/* 81440508 | 4E 80 04 21 */	bctrl
/* 8144050C | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 81440510 | 7F E3 FB 78 */	mr r3, r31
/* 81440514 | 9B A4 00 CD */	stb r29, 0xcd(r4)
/* 81440518 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8144051C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81440520 | 7D 89 03 A6 */	mtctr r12
/* 81440524 | 4E 80 04 21 */	bctrl
/* 81440528 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8144052C | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81440530 | 7D 89 03 A6 */	mtctr r12
/* 81440534 | 4E 80 04 21 */	bctrl
/* 81440538 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8144053C | 7F E3 FB 78 */	mr r3, r31
/* 81440540 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 81440544 | 7D 89 03 A6 */	mtctr r12
/* 81440548 | 4E 80 04 21 */	bctrl
/* 8144054C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81440550 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81440554 | 7D 89 03 A6 */	mtctr r12
/* 81440558 | 4E 80 04 21 */	bctrl
/* 8144055C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81440560 | 7F E3 FB 78 */	mr r3, r31
/* 81440564 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 81440568 | 7D 89 03 A6 */	mtctr r12
/* 8144056C | 4E 80 04 21 */	bctrl
/* 81440570 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81440574 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 81440578 | 7D 89 03 A6 */	mtctr r12
/* 8144057C | 4E 80 04 21 */	bctrl
/* 81440580 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81440584 | 41 82 00 2C */	beq .L_814405B0
/* 81440588 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8144058C | 7F E3 FB 78 */	mr r3, r31
/* 81440590 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81440594 | 7D 89 03 A6 */	mtctr r12
/* 81440598 | 4E 80 04 21 */	bctrl
/* 8144059C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814405A0 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 814405A4 | 7D 89 03 A6 */	mtctr r12
/* 814405A8 | 4E 80 04 21 */	bctrl
/* 814405AC | 48 00 00 28 */	b .L_814405D4
.L_814405B0:
/* 814405B0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814405B4 | 7F E3 FB 78 */	mr r3, r31
/* 814405B8 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 814405BC | 7D 89 03 A6 */	mtctr r12
/* 814405C0 | 4E 80 04 21 */	bctrl
/* 814405C4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814405C8 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 814405CC | 7D 89 03 A6 */	mtctr r12
/* 814405D0 | 4E 80 04 21 */	bctrl
.L_814405D4:
/* 814405D4 | 80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 814405D8 | 83 E1 00 EC */	lwz r31, 0xec(r1)
/* 814405DC | 83 C1 00 E8 */	lwz r30, 0xe8(r1)
/* 814405E0 | 83 A1 00 E4 */	lwz r29, 0xe4(r1)
/* 814405E4 | 7C 08 03 A6 */	mtlr r0
/* 814405E8 | 38 21 00 F0 */	addi r1, r1, 0xf0
/* 814405EC | 4E 80 00 20 */	blr
.endfn start__Q49textinput6extend4memo13EditMemoStateFv

# .text:0x4668 | 0x814405F0 | size: 0x558
# textinput::extend::memo::DisappearMemoState::calc()
.fn calc__Q49textinput6extend4memo18DisappearMemoStateFv, global
/* 814405F0 | 94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 814405F4 | 7C 08 02 A6 */	mflr r0
/* 814405F8 | 90 01 00 D4 */	stw r0, 0xd4(r1)
/* 814405FC | DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 81440600 | F3 E1 00 C8 */	psq_st f31, 0xc8(r1), 0, qr0
/* 81440604 | C0 22 8A 68 */	lfs f1, lbl_81694E68@sda21(r0)
/* 81440608 | 93 E1 00 BC */	stw r31, 0xbc(r1)
/* 8144060C | 7C 7F 1B 78 */	mr r31, r3
/* 81440610 | 93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 81440614 | C0 03 00 08 */	lfs f0, 0x8(r3)
/* 81440618 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8144061C | 4C 40 13 82 */	cror eq, lt, eq
/* 81440620 | 40 82 00 1C */	bne .L_8144063C
/* 81440624 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81440628 | 38 80 00 01 */	li r4, 0x1
/* 8144062C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81440630 | 81 8C 00 DC */	lwz r12, 0xdc(r12)
/* 81440634 | 7D 89 03 A6 */	mtctr r12
/* 81440638 | 4E 80 04 21 */	bctrl
.L_8144063C:
/* 8144063C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81440640 | 7F E3 FB 78 */	mr r3, r31
/* 81440644 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81440648 | 7D 89 03 A6 */	mtctr r12
/* 8144064C | 4E 80 04 21 */	bctrl
/* 81440650 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81440654 | 81 8C 01 44 */	lwz r12, 0x144(r12)
/* 81440658 | 7D 89 03 A6 */	mtctr r12
/* 8144065C | 4E 80 04 21 */	bctrl
/* 81440660 | C0 42 8A 58 */	lfs f2, lbl_81694E58@sda21(r0)
/* 81440664 | 38 6D 94 88 */	li r3, lbl_816974C8@sda21
/* 81440668 | C0 3F 00 08 */	lfs f1, 0x8(r31)
/* 8144066C | FC 80 10 90 */	fmr f4, f2
/* 81440670 | C0 63 00 04 */	lfs f3, 0x4(r3)
/* 81440674 | FC E0 10 90 */	fmr f7, f2
/* 81440678 | C0 A2 8A 68 */	lfs f5, lbl_81694E68@sda21(r0)
/* 8144067C | C0 CD 94 88 */	lfs f6, lbl_816974C8@sda21(r0)
/* 81440680 | 4B FF 9C 75 */	bl hermiteInterporation__Q29textinput4utilFfffffff
/* 81440684 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81440688 | FF E0 08 90 */	fmr f31, f1
/* 8144068C | C0 02 8A 58 */	lfs f0, lbl_81694E58@sda21(r0)
/* 81440690 | 7F E3 FB 78 */	mr r3, r31
/* 81440694 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 81440698 | D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8144069C | D0 21 00 44 */	stfs f1, 0x44(r1)
/* 814406A0 | 7D 89 03 A6 */	mtctr r12
/* 814406A4 | 4E 80 04 21 */	bctrl
/* 814406A8 | 85 83 00 44 */	lwzu r12, 0x44(r3)
/* 814406AC | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 814406B0 | 7D 89 03 A6 */	mtctr r12
/* 814406B4 | 4E 80 04 21 */	bctrl
/* 814406B8 | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 814406BC | 7F E3 FB 78 */	mr r3, r31
/* 814406C0 | C0 41 00 40 */	lfs f2, 0x40(r1)
/* 814406C4 | C0 21 00 44 */	lfs f1, 0x44(r1)
/* 814406C8 | D0 44 00 2C */	stfs f2, 0x2c(r4)
/* 814406CC | C0 02 8A 58 */	lfs f0, lbl_81694E58@sda21(r0)
/* 814406D0 | D0 24 00 30 */	stfs f1, 0x30(r4)
/* 814406D4 | D0 04 00 34 */	stfs f0, 0x34(r4)
/* 814406D8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814406DC | D0 41 00 9C */	stfs f2, 0x9c(r1)
/* 814406E0 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 814406E4 | D0 21 00 A0 */	stfs f1, 0xa0(r1)
/* 814406E8 | D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 814406EC | D0 01 00 38 */	stfs f0, 0x38(r1)
/* 814406F0 | D3 E1 00 3C */	stfs f31, 0x3c(r1)
/* 814406F4 | 7D 89 03 A6 */	mtctr r12
/* 814406F8 | 4E 80 04 21 */	bctrl
/* 814406FC | 85 83 00 38 */	lwzu r12, 0x38(r3)
/* 81440700 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81440704 | 7D 89 03 A6 */	mtctr r12
/* 81440708 | 4E 80 04 21 */	bctrl
/* 8144070C | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 81440710 | FC 20 F8 18 */	frsp f1, f31
/* 81440714 | C0 41 00 38 */	lfs f2, 0x38(r1)
/* 81440718 | 7F E3 FB 78 */	mr r3, r31
/* 8144071C | C0 02 8A 58 */	lfs f0, lbl_81694E58@sda21(r0)
/* 81440720 | D0 44 00 2C */	stfs f2, 0x2c(r4)
/* 81440724 | D0 24 00 30 */	stfs f1, 0x30(r4)
/* 81440728 | D0 04 00 34 */	stfs f0, 0x34(r4)
/* 8144072C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81440730 | D0 41 00 90 */	stfs f2, 0x90(r1)
/* 81440734 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 81440738 | D0 21 00 94 */	stfs f1, 0x94(r1)
/* 8144073C | D0 01 00 98 */	stfs f0, 0x98(r1)
/* 81440740 | D0 01 00 30 */	stfs f0, 0x30(r1)
/* 81440744 | D3 E1 00 34 */	stfs f31, 0x34(r1)
/* 81440748 | 7D 89 03 A6 */	mtctr r12
/* 8144074C | 4E 80 04 21 */	bctrl
/* 81440750 | 85 83 00 24 */	lwzu r12, 0x24(r3)
/* 81440754 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81440758 | 7D 89 03 A6 */	mtctr r12
/* 8144075C | 4E 80 04 21 */	bctrl
/* 81440760 | C0 02 8A 64 */	lfs f0, lbl_81694E64@sda21(r0)
/* 81440764 | FC 40 F8 18 */	frsp f2, f31
/* 81440768 | C0 22 8A 58 */	lfs f1, lbl_81694E58@sda21(r0)
/* 8144076C | EC 1F 00 24 */	fdivs f0, f31, f0
/* 81440770 | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 81440774 | C0 61 00 30 */	lfs f3, 0x30(r1)
/* 81440778 | 7F E3 FB 78 */	mr r3, r31
/* 8144077C | D0 41 00 88 */	stfs f2, 0x88(r1)
/* 81440780 | D0 64 00 2C */	stfs f3, 0x2c(r4)
/* 81440784 | D0 44 00 30 */	stfs f2, 0x30(r4)
/* 81440788 | D0 24 00 34 */	stfs f1, 0x34(r4)
/* 8144078C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81440790 | D0 61 00 84 */	stfs f3, 0x84(r1)
/* 81440794 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 81440798 | D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 8144079C | D0 21 00 28 */	stfs f1, 0x28(r1)
/* 814407A0 | D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 814407A4 | 7D 89 03 A6 */	mtctr r12
/* 814407A8 | 4E 80 04 21 */	bctrl
/* 814407AC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814407B0 | 81 8C 00 B8 */	lwz r12, 0xb8(r12)
/* 814407B4 | 7D 89 03 A6 */	mtctr r12
/* 814407B8 | 4E 80 04 21 */	bctrl
/* 814407BC | FC 20 F8 50 */	fneg f1, f31
/* 814407C0 | C0 61 00 28 */	lfs f3, 0x28(r1)
/* 814407C4 | C0 02 8A 64 */	lfs f0, lbl_81694E64@sda21(r0)
/* 814407C8 | C0 42 8A 58 */	lfs f2, lbl_81694E58@sda21(r0)
/* 814407CC | EC 01 00 24 */	fdivs f0, f1, f0
/* 814407D0 | C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 814407D4 | D0 63 00 2C */	stfs f3, 0x2c(r3)
/* 814407D8 | D0 23 00 30 */	stfs f1, 0x30(r3)
/* 814407DC | D0 43 00 34 */	stfs f2, 0x34(r3)
/* 814407E0 | 7F E3 FB 78 */	mr r3, r31
/* 814407E4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814407E8 | D0 61 00 78 */	stfs f3, 0x78(r1)
/* 814407EC | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 814407F0 | D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 814407F4 | D0 41 00 80 */	stfs f2, 0x80(r1)
/* 814407F8 | D0 41 00 20 */	stfs f2, 0x20(r1)
/* 814407FC | D0 01 00 24 */	stfs f0, 0x24(r1)
/* 81440800 | 7D 89 03 A6 */	mtctr r12
/* 81440804 | 4E 80 04 21 */	bctrl
/* 81440808 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8144080C | 81 8C 00 B4 */	lwz r12, 0xb4(r12)
/* 81440810 | 7D 89 03 A6 */	mtctr r12
/* 81440814 | 4E 80 04 21 */	bctrl
/* 81440818 | C0 41 00 20 */	lfs f2, 0x20(r1)
/* 8144081C | C0 02 8A 58 */	lfs f0, lbl_81694E58@sda21(r0)
/* 81440820 | C0 21 00 24 */	lfs f1, 0x24(r1)
/* 81440824 | D0 43 00 2C */	stfs f2, 0x2c(r3)
/* 81440828 | D0 23 00 30 */	stfs f1, 0x30(r3)
/* 8144082C | D0 03 00 34 */	stfs f0, 0x34(r3)
/* 81440830 | 7F E3 FB 78 */	mr r3, r31
/* 81440834 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81440838 | D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 8144083C | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81440840 | D0 21 00 70 */	stfs f1, 0x70(r1)
/* 81440844 | D0 01 00 74 */	stfs f0, 0x74(r1)
/* 81440848 | D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8144084C | D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 81440850 | 7D 89 03 A6 */	mtctr r12
/* 81440854 | 4E 80 04 21 */	bctrl
/* 81440858 | 85 83 00 04 */	lwzu r12, 0x4(r3)
/* 8144085C | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81440860 | 7D 89 03 A6 */	mtctr r12
/* 81440864 | 4E 80 04 21 */	bctrl
/* 81440868 | C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8144086C | 38 8D 94 90 */	li r4, lbl_816974D0@sda21
/* 81440870 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81440874 | C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 81440878 | D0 23 00 2C */	stfs f1, 0x2c(r3)
/* 8144087C | C0 42 8A 58 */	lfs f2, lbl_81694E58@sda21(r0)
/* 81440880 | D0 03 00 30 */	stfs f0, 0x30(r3)
/* 81440884 | FC 80 10 90 */	fmr f4, f2
/* 81440888 | C0 A2 8A 68 */	lfs f5, lbl_81694E68@sda21(r0)
/* 8144088C | D0 43 00 34 */	stfs f2, 0x34(r3)
/* 81440890 | FC E0 10 90 */	fmr f7, f2
/* 81440894 | D0 21 00 60 */	stfs f1, 0x60(r1)
/* 81440898 | C0 3F 00 08 */	lfs f1, 0x8(r31)
/* 8144089C | D0 01 00 64 */	stfs f0, 0x64(r1)
/* 814408A0 | C0 64 00 04 */	lfs f3, 0x4(r4)
/* 814408A4 | D0 41 00 68 */	stfs f2, 0x68(r1)
/* 814408A8 | C0 CD 94 90 */	lfs f6, lbl_816974D0@sda21(r0)
/* 814408AC | 4B FF 9A 49 */	bl hermiteInterporation__Q29textinput4utilFfffffff
/* 814408B0 | FC 00 08 1E */	fctiwz f0, f1
/* 814408B4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814408B8 | 7F E3 FB 78 */	mr r3, r31
/* 814408BC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 814408C0 | D8 01 00 A8 */	stfd f0, 0xa8(r1)
/* 814408C4 | 83 C1 00 AC */	lwz r30, 0xac(r1)
/* 814408C8 | 7D 89 03 A6 */	mtctr r12
/* 814408CC | 4E 80 04 21 */	bctrl
/* 814408D0 | 85 83 00 44 */	lwzu r12, 0x44(r3)
/* 814408D4 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 814408D8 | 7D 89 03 A6 */	mtctr r12
/* 814408DC | 4E 80 04 21 */	bctrl
/* 814408E0 | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 814408E4 | 7F E3 FB 78 */	mr r3, r31
/* 814408E8 | 9B C4 00 CD */	stb r30, 0xcd(r4)
/* 814408EC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 814408F0 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 814408F4 | 7D 89 03 A6 */	mtctr r12
/* 814408F8 | 4E 80 04 21 */	bctrl
/* 814408FC | 85 83 00 38 */	lwzu r12, 0x38(r3)
/* 81440900 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81440904 | 7D 89 03 A6 */	mtctr r12
/* 81440908 | 4E 80 04 21 */	bctrl
/* 8144090C | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 81440910 | 7F E3 FB 78 */	mr r3, r31
/* 81440914 | 9B C4 00 CD */	stb r30, 0xcd(r4)
/* 81440918 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8144091C | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 81440920 | 7D 89 03 A6 */	mtctr r12
/* 81440924 | 4E 80 04 21 */	bctrl
/* 81440928 | 85 83 00 24 */	lwzu r12, 0x24(r3)
/* 8144092C | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81440930 | 7D 89 03 A6 */	mtctr r12
/* 81440934 | 4E 80 04 21 */	bctrl
/* 81440938 | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 8144093C | 7F E3 FB 78 */	mr r3, r31
/* 81440940 | 9B C4 00 CD */	stb r30, 0xcd(r4)
/* 81440944 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81440948 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8144094C | 7D 89 03 A6 */	mtctr r12
/* 81440950 | 4E 80 04 21 */	bctrl
/* 81440954 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81440958 | 81 8C 00 B8 */	lwz r12, 0xb8(r12)
/* 8144095C | 7D 89 03 A6 */	mtctr r12
/* 81440960 | 4E 80 04 21 */	bctrl
/* 81440964 | 9B C3 00 CD */	stb r30, 0xcd(r3)
/* 81440968 | 7F E3 FB 78 */	mr r3, r31
/* 8144096C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81440970 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 81440974 | 7D 89 03 A6 */	mtctr r12
/* 81440978 | 4E 80 04 21 */	bctrl
/* 8144097C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81440980 | 81 8C 00 B4 */	lwz r12, 0xb4(r12)
/* 81440984 | 7D 89 03 A6 */	mtctr r12
/* 81440988 | 4E 80 04 21 */	bctrl
/* 8144098C | 9B C3 00 CD */	stb r30, 0xcd(r3)
/* 81440990 | 7F E3 FB 78 */	mr r3, r31
/* 81440994 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81440998 | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8144099C | 7D 89 03 A6 */	mtctr r12
/* 814409A0 | 4E 80 04 21 */	bctrl
/* 814409A4 | 85 83 00 04 */	lwzu r12, 0x4(r3)
/* 814409A8 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 814409AC | 7D 89 03 A6 */	mtctr r12
/* 814409B0 | 4E 80 04 21 */	bctrl
/* 814409B4 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 814409B8 | 9B C3 00 CD */	stb r30, 0xcd(r3)
/* 814409BC | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 814409C0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 814409C4 | 81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 814409C8 | 7D 89 03 A6 */	mtctr r12
/* 814409CC | 4E 80 04 21 */	bctrl
/* 814409D0 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 814409D4 | 40 80 00 C0 */	bge .L_81440A94
/* 814409D8 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 814409DC | 40 80 00 08 */	bge .L_814409E4
/* 814409E0 | 48 00 00 B4 */	b .L_81440A94
.L_814409E4:
/* 814409E4 | C0 42 8A 58 */	lfs f2, lbl_81694E58@sda21(r0)
/* 814409E8 | 38 6D 94 98 */	li r3, lbl_816974D8@sda21
/* 814409EC | C0 3F 00 08 */	lfs f1, 0x8(r31)
/* 814409F0 | FC 80 10 90 */	fmr f4, f2
/* 814409F4 | C0 63 00 04 */	lfs f3, 0x4(r3)
/* 814409F8 | FC E0 10 90 */	fmr f7, f2
/* 814409FC | C0 A2 8A 68 */	lfs f5, lbl_81694E68@sda21(r0)
/* 81440A00 | C0 CD 94 98 */	lfs f6, lbl_816974D8@sda21(r0)
/* 81440A04 | 4B FF 98 F1 */	bl hermiteInterporation__Q29textinput4utilFfffffff
/* 81440A08 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81440A0C | 7F E3 FB 78 */	mr r3, r31
/* 81440A10 | C0 02 8A 58 */	lfs f0, lbl_81694E58@sda21(r0)
/* 81440A14 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81440A18 | D0 01 00 10 */	stfs f0, 0x10(r1)
/* 81440A1C | D0 21 00 14 */	stfs f1, 0x14(r1)
/* 81440A20 | 7D 89 03 A6 */	mtctr r12
/* 81440A24 | 4E 80 04 21 */	bctrl
/* 81440A28 | 85 83 02 18 */	lwzu r12, 0x218(r3)
/* 81440A2C | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81440A30 | 7D 89 03 A6 */	mtctr r12
/* 81440A34 | 4E 80 04 21 */	bctrl
/* 81440A38 | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 81440A3C | 7F E3 FB 78 */	mr r3, r31
/* 81440A40 | C0 41 00 10 */	lfs f2, 0x10(r1)
/* 81440A44 | C0 21 00 14 */	lfs f1, 0x14(r1)
/* 81440A48 | D0 44 00 2C */	stfs f2, 0x2c(r4)
/* 81440A4C | C0 02 8A 58 */	lfs f0, lbl_81694E58@sda21(r0)
/* 81440A50 | D0 24 00 30 */	stfs f1, 0x30(r4)
/* 81440A54 | D0 04 00 34 */	stfs f0, 0x34(r4)
/* 81440A58 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81440A5C | D0 41 00 54 */	stfs f2, 0x54(r1)
/* 81440A60 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81440A64 | D0 21 00 58 */	stfs f1, 0x58(r1)
/* 81440A68 | D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 81440A6C | 7D 89 03 A6 */	mtctr r12
/* 81440A70 | 4E 80 04 21 */	bctrl
/* 81440A74 | 85 83 02 18 */	lwzu r12, 0x218(r3)
/* 81440A78 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81440A7C | 7D 89 03 A6 */	mtctr r12
/* 81440A80 | 4E 80 04 21 */	bctrl
/* 81440A84 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81440A88 | 38 00 00 FF */	li r0, 0xff
/* 81440A8C | 98 03 00 CD */	stb r0, 0xcd(r3)
/* 81440A90 | 48 00 00 88 */	b .L_81440B18
.L_81440A94:
/* 81440A94 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81440A98 | 7F E3 FB 78 */	mr r3, r31
/* 81440A9C | C0 02 8A 58 */	lfs f0, lbl_81694E58@sda21(r0)
/* 81440AA0 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81440AA4 | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 81440AA8 | D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 81440AAC | 7D 89 03 A6 */	mtctr r12
/* 81440AB0 | 4E 80 04 21 */	bctrl
/* 81440AB4 | 85 83 02 18 */	lwzu r12, 0x218(r3)
/* 81440AB8 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81440ABC | 7D 89 03 A6 */	mtctr r12
/* 81440AC0 | 4E 80 04 21 */	bctrl
/* 81440AC4 | 80 83 00 10 */	lwz r4, 0x10(r3)
/* 81440AC8 | FC 20 F8 18 */	frsp f1, f31
/* 81440ACC | C0 41 00 08 */	lfs f2, 0x8(r1)
/* 81440AD0 | 7F E3 FB 78 */	mr r3, r31
/* 81440AD4 | C0 02 8A 58 */	lfs f0, lbl_81694E58@sda21(r0)
/* 81440AD8 | D0 44 00 2C */	stfs f2, 0x2c(r4)
/* 81440ADC | D0 24 00 30 */	stfs f1, 0x30(r4)
/* 81440AE0 | D0 04 00 34 */	stfs f0, 0x34(r4)
/* 81440AE4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81440AE8 | D0 41 00 48 */	stfs f2, 0x48(r1)
/* 81440AEC | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81440AF0 | D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 81440AF4 | D0 01 00 50 */	stfs f0, 0x50(r1)
/* 81440AF8 | 7D 89 03 A6 */	mtctr r12
/* 81440AFC | 4E 80 04 21 */	bctrl
/* 81440B00 | 85 83 02 18 */	lwzu r12, 0x218(r3)
/* 81440B04 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 81440B08 | 7D 89 03 A6 */	mtctr r12
/* 81440B0C | 4E 80 04 21 */	bctrl
/* 81440B10 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 81440B14 | 9B C3 00 CD */	stb r30, 0xcd(r3)
.L_81440B18:
/* 81440B18 | C0 3F 00 08 */	lfs f1, 0x8(r31)
/* 81440B1C | C0 02 8A 6C */	lfs f0, lbl_81694E6C@sda21(r0)
/* 81440B20 | EC 01 00 2A */	fadds f0, f1, f0
/* 81440B24 | D0 1F 00 08 */	stfs f0, 0x8(r31)
/* 81440B28 | E3 E1 00 C8 */	psq_l f31, 0xc8(r1), 0, qr0
/* 81440B2C | CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 81440B30 | 83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 81440B34 | 83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 81440B38 | 80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 81440B3C | 7C 08 03 A6 */	mtlr r0
/* 81440B40 | 38 21 00 D0 */	addi r1, r1, 0xd0
/* 81440B44 | 4E 80 00 20 */	blr
.endfn calc__Q49textinput6extend4memo18DisappearMemoStateFv

# .text:0x4BC0 | 0x81440B48 | size: 0xB0
# textinput::extend::memo::DisappearMemoState::start()
.fn start__Q49textinput6extend4memo18DisappearMemoStateFv, global
/* 81440B48 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81440B4C | 7C 08 02 A6 */	mflr r0
/* 81440B50 | C0 02 8A 58 */	lfs f0, lbl_81694E58@sda21(r0)
/* 81440B54 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81440B58 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81440B5C | 7C 7F 1B 78 */	mr r31, r3
/* 81440B60 | D0 03 00 08 */	stfs f0, 0x8(r3)
/* 81440B64 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 81440B68 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81440B6C | 81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 81440B70 | 7D 89 03 A6 */	mtctr r12
/* 81440B74 | 4E 80 04 21 */	bctrl
/* 81440B78 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 81440B7C | 40 80 00 44 */	bge .L_81440BC0
/* 81440B80 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 81440B84 | 40 80 00 08 */	bge .L_81440B8C
/* 81440B88 | 48 00 00 38 */	b .L_81440BC0
.L_81440B8C:
/* 81440B8C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81440B90 | 7F E3 FB 78 */	mr r3, r31
/* 81440B94 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81440B98 | 7D 89 03 A6 */	mtctr r12
/* 81440B9C | 4E 80 04 21 */	bctrl
/* 81440BA0 | 38 80 00 03 */	li r4, 0x3
/* 81440BA4 | 48 00 35 81 */	bl setEditMode__Q49textinput6extend4memo9InputFormFQ59textinput6extend4memo9InputForm8EditMode
/* 81440BA8 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 81440BAC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81440BB0 | 81 8C 00 EC */	lwz r12, 0xec(r12)
/* 81440BB4 | 7D 89 03 A6 */	mtctr r12
/* 81440BB8 | 4E 80 04 21 */	bctrl
/* 81440BBC | 48 00 00 28 */	b .L_81440BE4
.L_81440BC0:
/* 81440BC0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 81440BC4 | 7F E3 FB 78 */	mr r3, r31
/* 81440BC8 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 81440BCC | 7D 89 03 A6 */	mtctr r12
/* 81440BD0 | 4E 80 04 21 */	bctrl
/* 81440BD4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 81440BD8 | 81 8C 01 34 */	lwz r12, 0x134(r12)
/* 81440BDC | 7D 89 03 A6 */	mtctr r12
/* 81440BE0 | 4E 80 04 21 */	bctrl
.L_81440BE4:
/* 81440BE4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81440BE8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81440BEC | 7C 08 03 A6 */	mtlr r0
/* 81440BF0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81440BF4 | 4E 80 00 20 */	blr
.endfn start__Q49textinput6extend4memo18DisappearMemoStateFv

# .text:0x4C70 | 0x81440BF8 | size: 0x4
# textinput::extend::bg::Base::init()
.fn init__Q49textinput6extend2bg4BaseFv, global
/* 81440BF8 | 4E 80 00 20 */	blr
.endfn init__Q49textinput6extend2bg4BaseFv

# .text:0x4C74 | 0x81440BFC | size: 0x4
# textinput::extend::bg::Base::create(MEMAllocator*)
.fn create__Q49textinput6extend2bg4BaseFP12MEMAllocator, global
/* 81440BFC | 4E 80 00 20 */	blr
.endfn create__Q49textinput6extend2bg4BaseFP12MEMAllocator

# .text:0x4C78 | 0x81440C00 | size: 0x4
# textinput::extend::memo::AppearMemoState::end()
.fn end__Q49textinput6extend4memo15AppearMemoStateFv, global
/* 81440C00 | 4E 80 00 20 */	blr
.endfn end__Q49textinput6extend4memo15AppearMemoStateFv

# .text:0x4C7C | 0x81440C04 | size: 0x8
# textinput::extend::memo::DisappearMemoState::getStateType()
.fn getStateType__Q49textinput6extend4memo18DisappearMemoStateFv, global
/* 81440C04 | 38 60 00 03 */	li r3, 0x3
/* 81440C08 | 4E 80 00 20 */	blr
.endfn getStateType__Q49textinput6extend4memo18DisappearMemoStateFv

# .text:0x4C84 | 0x81440C0C | size: 0x4
# textinput::extend::memo::EditMemoState::end()
.fn end__Q49textinput6extend4memo13EditMemoStateFv, global
/* 81440C0C | 4E 80 00 20 */	blr
.endfn end__Q49textinput6extend4memo13EditMemoStateFv

# .text:0x4C88 | 0x81440C10 | size: 0x8
# textinput::extend::memo::EditMemoState::getStateType()
.fn getStateType__Q49textinput6extend4memo13EditMemoStateFv, global
/* 81440C10 | 38 60 00 02 */	li r3, 0x2
/* 81440C14 | 4E 80 00 20 */	blr
.endfn getStateType__Q49textinput6extend4memo13EditMemoStateFv

# .text:0x4C90 | 0x81440C18 | size: 0x40
# textinput::extend::memo::AppearMemoState::~AppearMemoState()
.fn __dt__Q49textinput6extend4memo15AppearMemoStateFv, global
/* 81440C18 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81440C1C | 7C 08 02 A6 */	mflr r0
/* 81440C20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81440C24 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81440C28 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81440C2C | 7C 7F 1B 78 */	mr r31, r3
/* 81440C30 | 41 82 00 10 */	beq .L_81440C40
/* 81440C34 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81440C38 | 40 81 00 08 */	ble .L_81440C40
/* 81440C3C | 48 1B 74 A9 */	bl __dl__FPv
.L_81440C40:
/* 81440C40 | 7F E3 FB 78 */	mr r3, r31
/* 81440C44 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81440C48 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81440C4C | 7C 08 03 A6 */	mtlr r0
/* 81440C50 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81440C54 | 4E 80 00 20 */	blr
.endfn __dt__Q49textinput6extend4memo15AppearMemoStateFv

# .text:0x4CD0 | 0x81440C58 | size: 0x40
# textinput::extend::memo::State::~State()
.fn __dt__Q49textinput6extend4memo5StateFv, global
/* 81440C58 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81440C5C | 7C 08 02 A6 */	mflr r0
/* 81440C60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81440C64 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81440C68 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81440C6C | 7C 7F 1B 78 */	mr r31, r3
/* 81440C70 | 41 82 00 10 */	beq .L_81440C80
/* 81440C74 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81440C78 | 40 81 00 08 */	ble .L_81440C80
/* 81440C7C | 48 1B 74 69 */	bl __dl__FPv
.L_81440C80:
/* 81440C80 | 7F E3 FB 78 */	mr r3, r31
/* 81440C84 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81440C88 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81440C8C | 7C 08 03 A6 */	mtlr r0
/* 81440C90 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81440C94 | 4E 80 00 20 */	blr
.endfn __dt__Q49textinput6extend4memo5StateFv

# .text:0x4D10 | 0x81440C98 | size: 0x8
# textinput::extend::memo::AppearMemoState::getStateType()
.fn getStateType__Q49textinput6extend4memo15AppearMemoStateFv, global
/* 81440C98 | 38 60 00 01 */	li r3, 0x1
/* 81440C9C | 4E 80 00 20 */	blr
.endfn getStateType__Q49textinput6extend4memo15AppearMemoStateFv

# .text:0x4D18 | 0x81440CA0 | size: 0x4
# textinput::extend::memo::DispMemoState::end()
.fn end__Q49textinput6extend4memo13DispMemoStateFv, global
/* 81440CA0 | 4E 80 00 20 */	blr
.endfn end__Q49textinput6extend4memo13DispMemoStateFv

# .text:0x4D1C | 0x81440CA4 | size: 0x8
# textinput::extend::memo::DispMemoState::getStateType()
.fn getStateType__Q49textinput6extend4memo13DispMemoStateFv, global
/* 81440CA4 | 38 60 00 00 */	li r3, 0x0
/* 81440CA8 | 4E 80 00 20 */	blr
.endfn getStateType__Q49textinput6extend4memo13DispMemoStateFv

# .text:0x4D24 | 0x81440CAC | size: 0x40
# textinput::extend::memo::DispMemoState::~DispMemoState()
.fn __dt__Q49textinput6extend4memo13DispMemoStateFv, global
/* 81440CAC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81440CB0 | 7C 08 02 A6 */	mflr r0
/* 81440CB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81440CB8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81440CBC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81440CC0 | 7C 7F 1B 78 */	mr r31, r3
/* 81440CC4 | 41 82 00 10 */	beq .L_81440CD4
/* 81440CC8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81440CCC | 40 81 00 08 */	ble .L_81440CD4
/* 81440CD0 | 48 1B 74 15 */	bl __dl__FPv
.L_81440CD4:
/* 81440CD4 | 7F E3 FB 78 */	mr r3, r31
/* 81440CD8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81440CDC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81440CE0 | 7C 08 03 A6 */	mtlr r0
/* 81440CE4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81440CE8 | 4E 80 00 20 */	blr
.endfn __dt__Q49textinput6extend4memo13DispMemoStateFv

# .text:0x4D64 | 0x81440CEC | size: 0x40
# textinput::extend::memo::EditMemoState::~EditMemoState()
.fn __dt__Q49textinput6extend4memo13EditMemoStateFv, global
/* 81440CEC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81440CF0 | 7C 08 02 A6 */	mflr r0
/* 81440CF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81440CF8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81440CFC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81440D00 | 7C 7F 1B 78 */	mr r31, r3
/* 81440D04 | 41 82 00 10 */	beq .L_81440D14
/* 81440D08 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81440D0C | 40 81 00 08 */	ble .L_81440D14
/* 81440D10 | 48 1B 73 D5 */	bl __dl__FPv
.L_81440D14:
/* 81440D14 | 7F E3 FB 78 */	mr r3, r31
/* 81440D18 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81440D1C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81440D20 | 7C 08 03 A6 */	mtlr r0
/* 81440D24 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81440D28 | 4E 80 00 20 */	blr
.endfn __dt__Q49textinput6extend4memo13EditMemoStateFv

# .text:0x4DA4 | 0x81440D2C | size: 0x40
# textinput::extend::memo::DisappearMemoState::~DisappearMemoState()
.fn __dt__Q49textinput6extend4memo18DisappearMemoStateFv, global
/* 81440D2C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81440D30 | 7C 08 02 A6 */	mflr r0
/* 81440D34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81440D38 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81440D3C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81440D40 | 7C 7F 1B 78 */	mr r31, r3
/* 81440D44 | 41 82 00 10 */	beq .L_81440D54
/* 81440D48 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81440D4C | 40 81 00 08 */	ble .L_81440D54
/* 81440D50 | 48 1B 73 95 */	bl __dl__FPv
.L_81440D54:
/* 81440D54 | 7F E3 FB 78 */	mr r3, r31
/* 81440D58 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81440D5C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81440D60 | 7C 08 03 A6 */	mtlr r0
/* 81440D64 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81440D68 | 4E 80 00 20 */	blr
.endfn __dt__Q49textinput6extend4memo18DisappearMemoStateFv

# .text:0x4DE4 | 0x81440D6C | size: 0x100
.fn "__sinit_\\MyTiManager_cpp", global
/* 81440D6C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81440D70 | 7C 08 02 A6 */	mflr r0
/* 81440D74 | 3C 80 81 44 */	lis r4, __dt__Q49textinput6extend4memo13DispMemoStateFv@ha
/* 81440D78 | 38 6D AD 00 */	li r3, sDispMemoState__Q39textinput6extend4memo@sda21
/* 81440D7C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81440D80 | 38 84 0C AC */	addi r4, r4, __dt__Q49textinput6extend4memo13DispMemoStateFv@l
/* 81440D84 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81440D88 | 3F E0 81 67 */	lis r31, __vt__Q49textinput6extend4memo5State@ha
/* 81440D8C | 3B FF 80 50 */	addi r31, r31, __vt__Q49textinput6extend4memo5State@l
/* 81440D90 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81440D94 | 3B C0 00 00 */	li r30, 0x0
/* 81440D98 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81440D9C | 3F A0 81 0D */	lis r29, lbl_810C87F0@ha
/* 81440DA0 | 3B BD 87 F0 */	addi r29, r29, lbl_810C87F0@l
/* 81440DA4 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 81440DA8 | 3F 80 81 66 */	lis r28, lbl_81667E38@ha
/* 81440DAC | 3B 9C 7E 38 */	addi r28, r28, lbl_81667E38@l
/* 81440DB0 | 38 BD 00 00 */	addi r5, r29, 0x0
/* 81440DB4 | 93 ED AD 00 */	stw r31, sDispMemoState__Q39textinput6extend4memo@sda21(r0)
/* 81440DB8 | 38 1C 01 C0 */	addi r0, r28, 0x1c0
/* 81440DBC | 93 C3 00 04 */	stw r30, 0x4(r3)
/* 81440DC0 | 38 6D AD 00 */	li r3, sDispMemoState__Q39textinput6extend4memo@sda21
/* 81440DC4 | 90 0D AD 00 */	stw r0, sDispMemoState__Q39textinput6extend4memo@sda21(r0)
/* 81440DC8 | 48 1B 82 19 */	bl __register_global_object
/* 81440DCC | 93 ED AD 08 */	stw r31, sEditMemoState__Q39textinput6extend4memo@sda21(r0)
/* 81440DD0 | 38 1C 01 10 */	addi r0, r28, 0x110
/* 81440DD4 | 38 6D AD 08 */	li r3, sEditMemoState__Q39textinput6extend4memo@sda21
/* 81440DD8 | 3C 80 81 44 */	lis r4, __dt__Q49textinput6extend4memo13EditMemoStateFv@ha
/* 81440DDC | 93 C3 00 04 */	stw r30, 0x4(r3)
/* 81440DE0 | 38 84 0C EC */	addi r4, r4, __dt__Q49textinput6extend4memo13EditMemoStateFv@l
/* 81440DE4 | 38 BD 00 0C */	addi r5, r29, 0xc
/* 81440DE8 | 38 6D AD 08 */	li r3, sEditMemoState__Q39textinput6extend4memo@sda21
/* 81440DEC | 90 0D AD 08 */	stw r0, sEditMemoState__Q39textinput6extend4memo@sda21(r0)
/* 81440DF0 | 48 1B 81 F1 */	bl __register_global_object
/* 81440DF4 | 93 FD 00 24 */	stw r31, 0x24(r29)
/* 81440DF8 | 38 7D 00 24 */	addi r3, r29, 0x24
/* 81440DFC | C0 02 8A 58 */	lfs f0, lbl_81694E58@sda21(r0)
/* 81440E00 | 3B FC 01 68 */	addi r31, r28, 0x168
/* 81440E04 | 3C 80 81 44 */	lis r4, __dt__Q49textinput6extend4memo15AppearMemoStateFv@ha
/* 81440E08 | 93 C3 00 04 */	stw r30, 0x4(r3)
/* 81440E0C | 38 84 0C 18 */	addi r4, r4, __dt__Q49textinput6extend4memo15AppearMemoStateFv@l
/* 81440E10 | 38 BD 00 18 */	addi r5, r29, 0x18
/* 81440E14 | 93 FD 00 24 */	stw r31, 0x24(r29)
/* 81440E18 | D0 03 00 08 */	stfs f0, 0x8(r3)
/* 81440E1C | 48 1B 81 C5 */	bl __register_global_object
/* 81440E20 | C0 02 8A 58 */	lfs f0, lbl_81694E58@sda21(r0)
/* 81440E24 | 38 7D 00 3C */	addi r3, r29, 0x3c
/* 81440E28 | 93 FD 00 3C */	stw r31, 0x3c(r29)
/* 81440E2C | 38 1C 00 B8 */	addi r0, r28, 0xb8
/* 81440E30 | 3C 80 81 44 */	lis r4, __dt__Q49textinput6extend4memo18DisappearMemoStateFv@ha
/* 81440E34 | 38 BD 00 30 */	addi r5, r29, 0x30
/* 81440E38 | 93 C3 00 04 */	stw r30, 0x4(r3)
/* 81440E3C | 38 84 0D 2C */	addi r4, r4, __dt__Q49textinput6extend4memo18DisappearMemoStateFv@l
/* 81440E40 | D0 03 00 08 */	stfs f0, 0x8(r3)
/* 81440E44 | 90 1D 00 3C */	stw r0, 0x3c(r29)
/* 81440E48 | 48 1B 81 99 */	bl __register_global_object
/* 81440E4C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81440E50 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81440E54 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81440E58 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81440E5C | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 81440E60 | 7C 08 03 A6 */	mtlr r0
/* 81440E64 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81440E68 | 4E 80 00 20 */	blr
.endfn "__sinit_\\MyTiManager_cpp"

# 0x8160D21C..0x8160D220 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte "__sinit_\\MyTiManager_cpp"

# 0x81667E38..0x81668210 | size: 0x3D8
.data
.balign 8

# .data:0x0 | 0x81667E38 | size: 0x20
.obj lbl_81667E38, global
	.4byte 0x57696942
	.4byte 0x69746D61
	.4byte 0x70466F6E
	.4byte 0x74547970
	.4byte 0x65322E62
	.4byte 0x72666E74
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81667E38

# .data:0x20 | 0x81667E58 | size: 0x10
.obj lbl_81667E58, global
	.string "my_Memo_a.brlyt"
.endobj lbl_81667E58

# .data:0x30 | 0x81667E68 | size: 0x14
.obj lbl_81667E68, global
	.4byte 0x6D795F4C
	.4byte 0x65747465
	.4byte 0x724C2E62
	.4byte 0x726C7974
	.4byte 0x00000000
.endobj lbl_81667E68

# .data:0x44 | 0x81667E7C | size: 0x18
.obj lbl_81667E7C, global
	.4byte 0x66735F56
	.4byte 0x4B5F7465
	.4byte 0x7874426F
	.4byte 0x785F612E
	.4byte 0x62726C79
	.4byte 0x74000000
.endobj lbl_81667E7C

# .data:0x5C | 0x81667E94 | size: 0x1C
.obj lbl_81667E94, global
	.4byte 0x57696942
	.4byte 0x69746D61
	.4byte 0x70466F6E
	.4byte 0x74547970
	.4byte 0x65312E62
	.4byte 0x72666E74
	.4byte 0x00000000
.endobj lbl_81667E94

# .data:0x78 | 0x81667EB0 | size: 0x18
.obj lbl_81667EB0, global
	.4byte 0x66735F56
	.4byte 0x4B5F7465
	.4byte 0x7874426F
	.4byte 0x785F622E
	.4byte 0x62726C79
	.4byte 0x74000000
.endobj lbl_81667EB0

# .data:0x90 | 0x81667EC8 | size: 0x18
.obj lbl_81667EC8, global
	.4byte 0x66735F56
	.4byte 0x4B5F6267
	.4byte 0x5F612E62
	.4byte 0x726C7974
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81667EC8

# .data:0xA8 | 0x81667EE0 | size: 0x10
# textinput::extend::bg::Base::__vtable
.obj __vt__Q49textinput6extend2bg4Base, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte create__Q49textinput6extend2bg4BaseFP12MEMAllocator
	.4byte init__Q49textinput6extend2bg4BaseFv
.endobj __vt__Q49textinput6extend2bg4Base

# .data:0xB8 | 0x81667EF0 | size: 0x58
# textinput::extend::memo::DisappearMemoState::__vtable
.obj __vt__Q49textinput6extend4memo18DisappearMemoState, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q49textinput6extend4memo18DisappearMemoStateFv
	.4byte getStateType__Q49textinput6extend4memo18DisappearMemoStateFv
	.4byte create__Q49textinput6extend4memo15AppearMemoStateFv
	.4byte init__Q49textinput6extend4memo15AppearMemoStateFv
	.4byte draw__Q49textinput6extend4memo15AppearMemoStateFv
	.4byte memoDraw__Q49textinput6extend4memo15AppearMemoStateFv
	.4byte calc__Q49textinput6extend4memo18DisappearMemoStateFv
	.4byte updateInput__Q49textinput6extend4memo15AppearMemoStateFiffUlUlUl
	.4byte updateInput__Q49textinput6extend4memo15AppearMemoStateFRQ39textinput5input10HKBManager
	.4byte start__Q49textinput6extend4memo18DisappearMemoStateFv
	.4byte end__Q49textinput6extend4memo15AppearMemoStateFv
	.4byte InputForm__Q49textinput6extend4memo5StateFv
	.4byte HWKeyboard__Q49textinput6extend4memo5StateFv
	.4byte PCKeyboard__Q49textinput6extend4memo5StateFv
	.4byte CellPhoneKeyboard__Q49textinput6extend4memo5StateFv
	.4byte SignKeyboard__Q49textinput6extend4memo5StateFv
	.4byte CandidateBox__Q49textinput6extend4memo5StateFv
	.4byte ToolBar__Q49textinput6extend4memo5StateFv
	.4byte PredictLanguageSelectDialog__Q49textinput6extend4memo5StateFv
	.4byte BG__Q49textinput6extend4memo5StateFv
.endobj __vt__Q49textinput6extend4memo18DisappearMemoState

# .data:0x110 | 0x81667F48 | size: 0x58
# textinput::extend::memo::EditMemoState::__vtable
.obj __vt__Q49textinput6extend4memo13EditMemoState, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q49textinput6extend4memo13EditMemoStateFv
	.4byte getStateType__Q49textinput6extend4memo13EditMemoStateFv
	.4byte create__Q49textinput6extend4memo13EditMemoStateFv
	.4byte init__Q49textinput6extend4memo13EditMemoStateFv
	.4byte draw__Q49textinput6extend4memo13EditMemoStateFv
	.4byte memoDraw__Q49textinput6extend4memo13EditMemoStateFv
	.4byte calc__Q49textinput6extend4memo13EditMemoStateFv
	.4byte updateInput__Q49textinput6extend4memo13EditMemoStateFiffUlUlUl
	.4byte updateInput__Q49textinput6extend4memo13EditMemoStateFRQ39textinput5input10HKBManager
	.4byte start__Q49textinput6extend4memo13EditMemoStateFv
	.4byte end__Q49textinput6extend4memo13EditMemoStateFv
	.4byte InputForm__Q49textinput6extend4memo5StateFv
	.4byte HWKeyboard__Q49textinput6extend4memo5StateFv
	.4byte PCKeyboard__Q49textinput6extend4memo5StateFv
	.4byte CellPhoneKeyboard__Q49textinput6extend4memo5StateFv
	.4byte SignKeyboard__Q49textinput6extend4memo5StateFv
	.4byte CandidateBox__Q49textinput6extend4memo5StateFv
	.4byte ToolBar__Q49textinput6extend4memo5StateFv
	.4byte PredictLanguageSelectDialog__Q49textinput6extend4memo5StateFv
	.4byte BG__Q49textinput6extend4memo5StateFv
.endobj __vt__Q49textinput6extend4memo13EditMemoState

# .data:0x168 | 0x81667FA0 | size: 0x58
# textinput::extend::memo::AppearMemoState::__vtable
.obj __vt__Q49textinput6extend4memo15AppearMemoState, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q49textinput6extend4memo15AppearMemoStateFv
	.4byte getStateType__Q49textinput6extend4memo15AppearMemoStateFv
	.4byte create__Q49textinput6extend4memo15AppearMemoStateFv
	.4byte init__Q49textinput6extend4memo15AppearMemoStateFv
	.4byte draw__Q49textinput6extend4memo15AppearMemoStateFv
	.4byte memoDraw__Q49textinput6extend4memo15AppearMemoStateFv
	.4byte calc__Q49textinput6extend4memo15AppearMemoStateFv
	.4byte updateInput__Q49textinput6extend4memo15AppearMemoStateFiffUlUlUl
	.4byte updateInput__Q49textinput6extend4memo15AppearMemoStateFRQ39textinput5input10HKBManager
	.4byte start__Q49textinput6extend4memo15AppearMemoStateFv
	.4byte end__Q49textinput6extend4memo15AppearMemoStateFv
	.4byte InputForm__Q49textinput6extend4memo5StateFv
	.4byte HWKeyboard__Q49textinput6extend4memo5StateFv
	.4byte PCKeyboard__Q49textinput6extend4memo5StateFv
	.4byte CellPhoneKeyboard__Q49textinput6extend4memo5StateFv
	.4byte SignKeyboard__Q49textinput6extend4memo5StateFv
	.4byte CandidateBox__Q49textinput6extend4memo5StateFv
	.4byte ToolBar__Q49textinput6extend4memo5StateFv
	.4byte PredictLanguageSelectDialog__Q49textinput6extend4memo5StateFv
	.4byte BG__Q49textinput6extend4memo5StateFv
.endobj __vt__Q49textinput6extend4memo15AppearMemoState

# .data:0x1C0 | 0x81667FF8 | size: 0x58
# textinput::extend::memo::DispMemoState::__vtable
.obj __vt__Q49textinput6extend4memo13DispMemoState, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q49textinput6extend4memo13DispMemoStateFv
	.4byte getStateType__Q49textinput6extend4memo13DispMemoStateFv
	.4byte create__Q49textinput6extend4memo13DispMemoStateFv
	.4byte init__Q49textinput6extend4memo13DispMemoStateFv
	.4byte draw__Q49textinput6extend4memo13DispMemoStateFv
	.4byte memoDraw__Q49textinput6extend4memo13DispMemoStateFv
	.4byte calc__Q49textinput6extend4memo13DispMemoStateFv
	.4byte updateInput__Q49textinput6extend4memo13DispMemoStateFiffUlUlUl
	.4byte updateInput__Q49textinput6extend4memo13DispMemoStateFRQ39textinput5input10HKBManager
	.4byte start__Q49textinput6extend4memo13DispMemoStateFv
	.4byte end__Q49textinput6extend4memo13DispMemoStateFv
	.4byte InputForm__Q49textinput6extend4memo5StateFv
	.4byte HWKeyboard__Q49textinput6extend4memo5StateFv
	.4byte PCKeyboard__Q49textinput6extend4memo5StateFv
	.4byte CellPhoneKeyboard__Q49textinput6extend4memo5StateFv
	.4byte SignKeyboard__Q49textinput6extend4memo5StateFv
	.4byte CandidateBox__Q49textinput6extend4memo5StateFv
	.4byte ToolBar__Q49textinput6extend4memo5StateFv
	.4byte PredictLanguageSelectDialog__Q49textinput6extend4memo5StateFv
	.4byte BG__Q49textinput6extend4memo5StateFv
.endobj __vt__Q49textinput6extend4memo13DispMemoState

# .data:0x218 | 0x81668050 | size: 0x58
# textinput::extend::memo::State::__vtable
.obj __vt__Q49textinput6extend4memo5State, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q49textinput6extend4memo5StateFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte InputForm__Q49textinput6extend4memo5StateFv
	.4byte HWKeyboard__Q49textinput6extend4memo5StateFv
	.4byte PCKeyboard__Q49textinput6extend4memo5StateFv
	.4byte CellPhoneKeyboard__Q49textinput6extend4memo5StateFv
	.4byte SignKeyboard__Q49textinput6extend4memo5StateFv
	.4byte CandidateBox__Q49textinput6extend4memo5StateFv
	.4byte ToolBar__Q49textinput6extend4memo5StateFv
	.4byte PredictLanguageSelectDialog__Q49textinput6extend4memo5StateFv
	.4byte BG__Q49textinput6extend4memo5StateFv
.endobj __vt__Q49textinput6extend4memo5State

# .data:0x270 | 0x816680A8 | size: 0xCC
# textinput::extend::memo::Manager::__vtable
.obj __vt__Q49textinput6extend4memo7Manager, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q49textinput6extend4memo7ManagerFv
	.4byte create__Q49textinput6extend4memo7ManagerFP12MEMAllocator
	.4byte init__Q49textinput6extend4memo7ManagerFv
	.4byte calc__Q49textinput6extend4memo7ManagerFv
	.4byte draw__Q49textinput6extend4memo7ManagerFv
	.4byte updateInput__Q49textinput6extend4memo7ManagerFiffUlUlUl
	.4byte updateInput__Q49textinput6extend4memo7ManagerFRQ39textinput5input10HKBManager
	.4byte SetFont__Q49textinput6extend4memo7ManagerFPQ34nw4r3lyt11FontRefLink
	.4byte getWCString__Q29textinput7ManagerCFv
	.4byte setWCString__Q29textinput7ManagerFPCw
	.4byte setLanguage__Q29textinput7ManagerFQ29textinput8Language
	.4byte getLanguage__Q29textinput7ManagerCFv
	.4byte setDestination__Q29textinput7ManagerFQ29textinput11Destination
	.4byte limitStringLength__Q29textinput7ManagerFUl
	.4byte limitRowNum__Q29textinput7ManagerFUl
	.4byte setAnimationOn__Q29textinput7ManagerFb
	.4byte setAspectRatio__Q29textinput7ManagerFb
	.4byte setSecretInputMode__Q29textinput7ManagerFb
	.4byte setDefaultPredictionJP__Q29textinput7ManagerFiPPCc
	.4byte setFixedPredictionJP__Q29textinput7ManagerFiPPCc
	.4byte setTitleText__Q29textinput7ManagerFPw
	.4byte start__Q49textinput6extend4memo7ManagerFv
	.4byte end__Q49textinput6extend4memo7ManagerFv
	.4byte getInputForm__Q29textinput7ManagerFv
	.4byte getInputForm__Q29textinput7ManagerCFv
	.4byte getHWKeyboard__Q29textinput7ManagerFv
	.4byte getHWKeyboard__Q29textinput7ManagerCFv
	.4byte getPCKeyboard__Q29textinput7ManagerFv
	.4byte getPCKeyboard__Q29textinput7ManagerCFv
	.4byte getCellPhoneKeyboard__Q29textinput7ManagerFv
	.4byte getCellPhoneKeyboard__Q29textinput7ManagerCFv
	.4byte getSignKeyboard__Q29textinput7ManagerFv
	.4byte getSignKeyboard__Q29textinput7ManagerCFv
	.4byte getCandidateBox__Q29textinput7ManagerFv
	.4byte getCandidateBox__Q29textinput7ManagerCFv
	.4byte getToolBar__Q29textinput7ManagerFv
	.4byte getToolBar__Q29textinput7ManagerCFv
	.4byte getPredictLanguageSelectDialog__Q29textinput7ManagerFv
	.4byte getPredictLanguageSelectDialog__Q29textinput7ManagerCFv
	.4byte createEditBuffer__Q29textinput7ManagerFv
	.4byte createHWKeyboard__Q29textinput7ManagerFv
	.4byte createPCTypeKeyboard__Q29textinput7ManagerFv
	.4byte createCellPhoneTypeKeyboard__Q29textinput7ManagerFv
	.4byte createInputForm__Q49textinput6extend4memo7ManagerFv
	.4byte createCandidateBox__Q29textinput7ManagerFv
	.4byte createToolBar__Q29textinput7ManagerFv
	.4byte createPredictLanguageDialog__Q29textinput7ManagerFv
	.4byte createSignWindow__Q29textinput7ManagerFv
	.4byte setLayoutScaleFor16x9__Q29textinput7ManagerFv
.endobj __vt__Q49textinput6extend4memo7Manager

# .data:0x33C | 0x81668174 | size: 0x9C
.obj lbl_81668174, global
	.4byte setLayoutScaleFor4x3__Q29textinput7ManagerFv
	.4byte memoDraw__Q49textinput6extend4memo7ManagerFv
	.4byte setSaveData__Q49textinput6extend4memo7ManagerFQ49textinput6extend8savedata11MemoSetting
	.4byte getSaveData__Q49textinput6extend4memo7ManagerFv
	.4byte changeState__Q49textinput6extend4memo7ManagerFQ59textinput6extend4memo7Manager13StateTimeLine
	.4byte getState__Q49textinput6extend4memo7ManagerFv
	.4byte setState__Q49textinput6extend4memo7ManagerFQ59textinput6extend4memo7Manager9StateType
	.4byte getConfigType__Q49textinput6extend4memo7ManagerFv
	.4byte setSaveData__Q49textinput6extend4memo7ManagerFv
	.4byte reflectSaveData__Q49textinput6extend4memo7ManagerFv
	.4byte configDefault__Q49textinput6extend4memo7ManagerFv
	.4byte configLetter__Q49textinput6extend4memo7ManagerFv
	.4byte configPhotoLetter__Q49textinput6extend4memo7ManagerFv
	.4byte configNumeric__Q49textinput6extend4memo7ManagerFv
	.4byte configNormalWithoutLineFeed__Q49textinput6extend4memo7ManagerFv
	.4byte configNormalBigTextWithoutLineFeed__Q49textinput6extend4memo7ManagerFv
	.4byte configOnlyQwertyWithoutLineFeedAndSign__Q49textinput6extend4memo7ManagerFv
	.4byte configOnlyQwertyBigTextWithoutLineFeedAndSign__Q49textinput6extend4memo7ManagerFv
	.4byte configNumericWithDot__Q49textinput6extend4memo7ManagerFv
	.4byte configNumericBigTextWithDot__Q49textinput6extend4memo7ManagerFv
	.4byte configNormalBigTextWithoutLineFeedWithSign__Q49textinput6extend4memo7ManagerFv
	.4byte configNumericWithSeparator__Q49textinput6extend4memo7ManagerFv
	.4byte configNormalWithoutLineFeedWithSign__Q49textinput6extend4memo7ManagerFv
	.4byte configPredictWithoutLineFeed__Q49textinput6extend4memo7ManagerFv
	.4byte configPredictBigText__Q49textinput6extend4memo7ManagerFv
	.4byte createMemoInputForm__Q49textinput6extend4memo7ManagerFv
	.4byte createLetterInputForm__Q49textinput6extend4memo7ManagerFv
	.4byte createBigTextInputForm__Q49textinput6extend4memo7ManagerFv
	.4byte createBG__Q49textinput6extend4memo7ManagerFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81668174

# 0x81694E58..0x81694E78 | size: 0x20
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694E58 | size: 0x4
.obj lbl_81694E58, global
	.float 0
.endobj lbl_81694E58

# .sdata2:0x4 | 0x81694E5C | size: 0x4
.obj lbl_81694E5C, global
	.float 145
.endobj lbl_81694E5C

# .sdata2:0x8 | 0x81694E60 | size: 0x4
.obj lbl_81694E60, global
	.float 151
.endobj lbl_81694E60

# .sdata2:0xC | 0x81694E64 | size: 0x4
.obj lbl_81694E64, global
	.float 3
.endobj lbl_81694E64

# .sdata2:0x10 | 0x81694E68 | size: 0x4
.obj lbl_81694E68, global
	.float 30
.endobj lbl_81694E68

# .sdata2:0x14 | 0x81694E6C | size: 0x4
.obj lbl_81694E6C, global
	.float 1
.endobj lbl_81694E6C

# .sdata2:0x18 | 0x81694E70 | size: 0x4
.obj lbl_81694E70, global
	.float inf
.endobj lbl_81694E70

# .sdata2:0x1C | 0x81694E74 | size: 0x4
.obj gap_09_81694E74_sdata2, global
.hidden gap_09_81694E74_sdata2
	.4byte 0x00000000
.endobj gap_09_81694E74_sdata2

# 0x816974C8..0x816974E0 | size: 0x18
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x816974C8 | size: 0x8
.obj lbl_816974C8, global
	.float -200
	.float 0
.endobj lbl_816974C8

# .sdata:0x8 | 0x816974D0 | size: 0x8
.obj lbl_816974D0, global
	.float 0
	.float 255
.endobj lbl_816974D0

# .sdata:0x10 | 0x816974D8 | size: 0x8
.obj lbl_816974D8, global
	.float 0
	.float 145
.endobj lbl_816974D8

# 0x81698D40..0x81698D50 | size: 0x10
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698D40 | size: 0x8
# textinput::extend::memo::sDispMemoState
.obj sDispMemoState__Q39textinput6extend4memo, global
	.skip 0x8
.endobj sDispMemoState__Q39textinput6extend4memo

# .sbss:0x8 | 0x81698D48 | size: 0x8
# textinput::extend::memo::sEditMemoState
.obj sEditMemoState__Q39textinput6extend4memo, global
	.skip 0x8
.endobj sEditMemoState__Q39textinput6extend4memo
