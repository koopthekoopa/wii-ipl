.include "macros.inc"
.file "iplCSVector.cpp"

# 0x8145BF60..0x8145C3E8 | size: 0x488
.text
.balign 4

# .text:0x0 | 0x8145BF60 | size: 0x94
# ipl::cs::vec3::_ctor(CHANSVm*, CHANSVmObjHdr*, float, float, float)
.fn _ctor__Q33ipl2cs4vec3FP7CHANSVmP13CHANSVmObjHdrfff, global
/* 8145BF60 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8145BF64 | 7C 08 02 A6 */	mflr r0
/* 8145BF68 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8145BF6C | 39 61 00 30 */	addi r11, r1, 0x30
/* 8145BF70 | 48 19 D4 C1 */	bl _savefpr_29
/* 8145BF74 | 39 61 00 18 */	addi r11, r1, 0x18
/* 8145BF78 | 48 19 D5 51 */	bl _savegpr_29
/* 8145BF7C | FF A0 08 90 */	fmr f29, f1
/* 8145BF80 | 7C 7D 1B 78 */	mr r29, r3
/* 8145BF84 | FF C0 10 90 */	fmr f30, f2
/* 8145BF88 | 7C 9E 23 78 */	mr r30, r4
/* 8145BF8C | FF E0 18 90 */	fmr f31, f3
/* 8145BF90 | 3B E0 00 00 */	li r31, 0x0
/* 8145BF94 | 38 A0 00 0C */	li r5, 0xc
/* 8145BF98 | 4B FE EC BD */	bl CHANSVmNewObjData
/* 8145BF9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145BFA0 | 41 82 00 30 */	beq .L_8145BFD0
/* 8145BFA4 | D3 A3 00 00 */	stfs f29, 0x0(r3)
/* 8145BFA8 | 38 00 00 08 */	li r0, 0x8
/* 8145BFAC | 38 8D 98 90 */	li r4, lbl_816978D0@sda21
/* 8145BFB0 | D3 C3 00 04 */	stfs f30, 0x4(r3)
/* 8145BFB4 | D3 E3 00 08 */	stfs f31, 0x8(r3)
/* 8145BFB8 | 7F A3 EB 78 */	mr r3, r29
/* 8145BFBC | 98 1E 00 08 */	stb r0, 0x8(r30)
/* 8145BFC0 | 4B FF 07 B5 */	bl CHANSVmFindNativeClass
/* 8145BFC4 | 30 03 FF FF */	subic r0, r3, 0x1
/* 8145BFC8 | 90 7E 00 0C */	stw r3, 0xc(r30)
/* 8145BFCC | 7F E0 19 10 */	subfe r31, r0, r3
.L_8145BFD0:
/* 8145BFD0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8145BFD4 | 7F E3 FB 78 */	mr r3, r31
/* 8145BFD8 | 48 19 D4 A5 */	bl _restfpr_29
/* 8145BFDC | 39 61 00 18 */	addi r11, r1, 0x18
/* 8145BFE0 | 48 19 D5 35 */	bl _restgpr_29
/* 8145BFE4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8145BFE8 | 7C 08 03 A6 */	mtlr r0
/* 8145BFEC | 38 21 00 30 */	addi r1, r1, 0x30
/* 8145BFF0 | 4E 80 00 20 */	blr
.endfn _ctor__Q33ipl2cs4vec3FP7CHANSVmP13CHANSVmObjHdrfff

# .text:0x94 | 0x8145BFF4 | size: 0xD4
# ipl::cs::vec3::ctor(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn ctor__Q33ipl2cs4vec3FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr, global
/* 8145BFF4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145BFF8 | 7C 08 02 A6 */	mflr r0
/* 8145BFFC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145C000 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145C004 | 48 19 D4 C1 */	bl _savegpr_28
/* 8145C008 | 7C A4 2B 78 */	mr r4, r5
/* 8145C00C | 7C 7C 1B 78 */	mr r28, r3
/* 8145C010 | 3B C0 00 00 */	li r30, 0x0
/* 8145C014 | 38 A0 00 0C */	li r5, 0xc
/* 8145C018 | 4B FE EC 3D */	bl CHANSVmNewObjData
/* 8145C01C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145C020 | 7C 7D 1B 78 */	mr r29, r3
/* 8145C024 | 41 82 00 88 */	beq .L_8145C0AC
/* 8145C028 | 7F 83 E3 78 */	mr r3, r28
/* 8145C02C | 38 80 00 00 */	li r4, 0x0
/* 8145C030 | 4B FF 06 CD */	bl CHANSVmGetArgFloat
/* 8145C034 | 7C 7E 1B 78 */	mr r30, r3
/* 8145C038 | 7F 83 E3 78 */	mr r3, r28
/* 8145C03C | 38 80 00 01 */	li r4, 0x1
/* 8145C040 | 4B FF 06 BD */	bl CHANSVmGetArgFloat
/* 8145C044 | 7C 7F 1B 78 */	mr r31, r3
/* 8145C048 | 7F 83 E3 78 */	mr r3, r28
/* 8145C04C | 38 80 00 02 */	li r4, 0x2
/* 8145C050 | 4B FF 06 AD */	bl CHANSVmGetArgFloat
/* 8145C054 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8145C058 | 41 82 00 10 */	beq .L_8145C068
/* 8145C05C | C8 1E 00 00 */	lfd f0, 0x0(r30)
/* 8145C060 | FC 00 00 18 */	frsp f0, f0
/* 8145C064 | 48 00 00 08 */	b .L_8145C06C
.L_8145C068:
/* 8145C068 | C0 02 8B C8 */	lfs f0, lbl_81694FC8@sda21(r0)
.L_8145C06C:
/* 8145C06C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145C070 | 41 82 00 10 */	beq .L_8145C080
/* 8145C074 | C8 3F 00 00 */	lfd f1, 0x0(r31)
/* 8145C078 | FC 20 08 18 */	frsp f1, f1
/* 8145C07C | 48 00 00 08 */	b .L_8145C084
.L_8145C080:
/* 8145C080 | C0 22 8B C8 */	lfs f1, lbl_81694FC8@sda21(r0)
.L_8145C084:
/* 8145C084 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145C088 | 41 82 00 10 */	beq .L_8145C098
/* 8145C08C | C8 43 00 00 */	lfd f2, 0x0(r3)
/* 8145C090 | FC 40 10 18 */	frsp f2, f2
/* 8145C094 | 48 00 00 08 */	b .L_8145C09C
.L_8145C098:
/* 8145C098 | C0 42 8B C8 */	lfs f2, lbl_81694FC8@sda21(r0)
.L_8145C09C:
/* 8145C09C | D0 1D 00 00 */	stfs f0, 0x0(r29)
/* 8145C0A0 | 3B C0 00 01 */	li r30, 0x1
/* 8145C0A4 | D0 3D 00 04 */	stfs f1, 0x4(r29)
/* 8145C0A8 | D0 5D 00 08 */	stfs f2, 0x8(r29)
.L_8145C0AC:
/* 8145C0AC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145C0B0 | 7F C3 F3 78 */	mr r3, r30
/* 8145C0B4 | 48 19 D4 5D */	bl _restgpr_28
/* 8145C0B8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145C0BC | 7C 08 03 A6 */	mtlr r0
/* 8145C0C0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145C0C4 | 4E 80 00 20 */	blr
.endfn ctor__Q33ipl2cs4vec3FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr

# .text:0x168 | 0x8145C0C8 | size: 0x74
# ipl::cs::vec3::init(CHANSVm*)
.fn init__Q33ipl2cs4vec3FP7CHANSVm, global
/* 8145C0C8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8145C0CC | 7C 08 02 A6 */	mflr r0
/* 8145C0D0 | 3C A0 81 46 */	lis r5, ctor__Q33ipl2cs4vec3FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr@ha
/* 8145C0D4 | 38 8D 98 90 */	li r4, lbl_816978D0@sda21
/* 8145C0D8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8145C0DC | 38 A5 BF F4 */	addi r5, r5, ctor__Q33ipl2cs4vec3FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr@l
/* 8145C0E0 | 38 C0 00 00 */	li r6, 0x0
/* 8145C0E4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8145C0E8 | 3B E0 00 00 */	li r31, 0x0
/* 8145C0EC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8145C0F0 | 7C 7E 1B 78 */	mr r30, r3
/* 8145C0F4 | 4B FF 07 E1 */	bl CHANSVmAddNativeClass
/* 8145C0F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145C0FC | 7C 64 1B 78 */	mr r4, r3
/* 8145C100 | 41 82 00 20 */	beq .L_8145C120
/* 8145C104 | 3C A0 81 61 */	lis r5, lbl_816175E8@ha
/* 8145C108 | 7F C3 F3 78 */	mr r3, r30
/* 8145C10C | 38 C0 00 03 */	li r6, 0x3
/* 8145C110 | 38 A5 75 E8 */	addi r5, r5, lbl_816175E8@l
/* 8145C114 | 4B FF 0B 45 */	bl CHANSVmAddNativePropertyAccessorsList
/* 8145C118 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145C11C | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145C120:
/* 8145C120 | 7F E3 FB 78 */	mr r3, r31
/* 8145C124 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8145C128 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8145C12C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8145C130 | 7C 08 03 A6 */	mtlr r0
/* 8145C134 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8145C138 | 4E 80 00 20 */	blr
.endfn init__Q33ipl2cs4vec3FP7CHANSVm

# .text:0x1DC | 0x8145C13C | size: 0x70
# int ipl::cs::vec3::get<0>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "get<0>__Q33ipl2cs4vec3FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 8145C13C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145C140 | 7C 08 02 A6 */	mflr r0
/* 8145C144 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145C148 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145C14C | 48 19 D3 79 */	bl _savegpr_28
/* 8145C150 | 7C 9D 23 78 */	mr r29, r4
/* 8145C154 | 7C 7C 1B 78 */	mr r28, r3
/* 8145C158 | 7C BE 2B 78 */	mr r30, r5
/* 8145C15C | 3B E0 00 00 */	li r31, 0x0
/* 8145C160 | 7F A3 EB 78 */	mr r3, r29
/* 8145C164 | 48 00 03 C5 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145C168 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145C16C | 41 82 00 24 */	beq .L_8145C190
/* 8145C170 | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8145C174 | 7F 83 E3 78 */	mr r3, r28
/* 8145C178 | 7F C4 F3 78 */	mr r4, r30
/* 8145C17C | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 8145C180 | C0 25 00 00 */	lfs f1, 0x0(r5)
/* 8145C184 | 4B FE F8 69 */	bl CHANSVmSetFloat
/* 8145C188 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145C18C | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145C190:
/* 8145C190 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145C194 | 7F E3 FB 78 */	mr r3, r31
/* 8145C198 | 48 19 D3 79 */	bl _restgpr_28
/* 8145C19C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145C1A0 | 7C 08 03 A6 */	mtlr r0
/* 8145C1A4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145C1A8 | 4E 80 00 20 */	blr
.endfn "get<0>__Q33ipl2cs4vec3FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# .text:0x24C | 0x8145C1AC | size: 0x74
# int ipl::cs::vec3::set<0>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "set<0>__Q33ipl2cs4vec3FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 8145C1AC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145C1B0 | 7C 08 02 A6 */	mflr r0
/* 8145C1B4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145C1B8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145C1BC | 48 19 D3 0D */	bl _savegpr_29
/* 8145C1C0 | 7C 9D 23 78 */	mr r29, r4
/* 8145C1C4 | 3B C0 00 00 */	li r30, 0x0
/* 8145C1C8 | 38 80 00 00 */	li r4, 0x0
/* 8145C1CC | 4B FF 05 31 */	bl CHANSVmGetArgFloat
/* 8145C1D0 | 7C 7F 1B 78 */	mr r31, r3
/* 8145C1D4 | 7F A3 EB 78 */	mr r3, r29
/* 8145C1D8 | 48 00 03 51 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145C1DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145C1E0 | 41 82 00 24 */	beq .L_8145C204
/* 8145C1E4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145C1E8 | 41 82 00 1C */	beq .L_8145C204
/* 8145C1EC | C8 1F 00 00 */	lfd f0, 0x0(r31)
/* 8145C1F0 | 3B C0 00 01 */	li r30, 0x1
/* 8145C1F4 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8145C1F8 | FC 00 00 18 */	frsp f0, f0
/* 8145C1FC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145C200 | D0 03 00 00 */	stfs f0, 0x0(r3)
.L_8145C204:
/* 8145C204 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145C208 | 7F C3 F3 78 */	mr r3, r30
/* 8145C20C | 48 19 D3 09 */	bl _restgpr_29
/* 8145C210 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145C214 | 7C 08 03 A6 */	mtlr r0
/* 8145C218 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145C21C | 4E 80 00 20 */	blr
.endfn "set<0>__Q33ipl2cs4vec3FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# .text:0x2C0 | 0x8145C220 | size: 0x70
# int ipl::cs::vec3::get<1>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "get<1>__Q33ipl2cs4vec3FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 8145C220 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145C224 | 7C 08 02 A6 */	mflr r0
/* 8145C228 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145C22C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145C230 | 48 19 D2 95 */	bl _savegpr_28
/* 8145C234 | 7C 9D 23 78 */	mr r29, r4
/* 8145C238 | 7C 7C 1B 78 */	mr r28, r3
/* 8145C23C | 7C BE 2B 78 */	mr r30, r5
/* 8145C240 | 3B E0 00 00 */	li r31, 0x0
/* 8145C244 | 7F A3 EB 78 */	mr r3, r29
/* 8145C248 | 48 00 02 E1 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145C24C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145C250 | 41 82 00 24 */	beq .L_8145C274
/* 8145C254 | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8145C258 | 7F 83 E3 78 */	mr r3, r28
/* 8145C25C | 7F C4 F3 78 */	mr r4, r30
/* 8145C260 | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 8145C264 | C0 25 00 04 */	lfs f1, 0x4(r5)
/* 8145C268 | 4B FE F7 85 */	bl CHANSVmSetFloat
/* 8145C26C | 7C 60 00 34 */	cntlzw r0, r3
/* 8145C270 | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145C274:
/* 8145C274 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145C278 | 7F E3 FB 78 */	mr r3, r31
/* 8145C27C | 48 19 D2 95 */	bl _restgpr_28
/* 8145C280 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145C284 | 7C 08 03 A6 */	mtlr r0
/* 8145C288 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145C28C | 4E 80 00 20 */	blr
.endfn "get<1>__Q33ipl2cs4vec3FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# .text:0x330 | 0x8145C290 | size: 0x74
# int ipl::cs::vec3::set<1>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "set<1>__Q33ipl2cs4vec3FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 8145C290 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145C294 | 7C 08 02 A6 */	mflr r0
/* 8145C298 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145C29C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145C2A0 | 48 19 D2 29 */	bl _savegpr_29
/* 8145C2A4 | 7C 9D 23 78 */	mr r29, r4
/* 8145C2A8 | 3B C0 00 00 */	li r30, 0x0
/* 8145C2AC | 38 80 00 00 */	li r4, 0x0
/* 8145C2B0 | 4B FF 04 4D */	bl CHANSVmGetArgFloat
/* 8145C2B4 | 7C 7F 1B 78 */	mr r31, r3
/* 8145C2B8 | 7F A3 EB 78 */	mr r3, r29
/* 8145C2BC | 48 00 02 6D */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145C2C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145C2C4 | 41 82 00 24 */	beq .L_8145C2E8
/* 8145C2C8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145C2CC | 41 82 00 1C */	beq .L_8145C2E8
/* 8145C2D0 | C8 1F 00 00 */	lfd f0, 0x0(r31)
/* 8145C2D4 | 3B C0 00 01 */	li r30, 0x1
/* 8145C2D8 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8145C2DC | FC 00 00 18 */	frsp f0, f0
/* 8145C2E0 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145C2E4 | D0 03 00 04 */	stfs f0, 0x4(r3)
.L_8145C2E8:
/* 8145C2E8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145C2EC | 7F C3 F3 78 */	mr r3, r30
/* 8145C2F0 | 48 19 D2 25 */	bl _restgpr_29
/* 8145C2F4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145C2F8 | 7C 08 03 A6 */	mtlr r0
/* 8145C2FC | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145C300 | 4E 80 00 20 */	blr
.endfn "set<1>__Q33ipl2cs4vec3FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# .text:0x3A4 | 0x8145C304 | size: 0x70
# int ipl::cs::vec3::get<2>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "get<2>__Q33ipl2cs4vec3FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 8145C304 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145C308 | 7C 08 02 A6 */	mflr r0
/* 8145C30C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145C310 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145C314 | 48 19 D1 B1 */	bl _savegpr_28
/* 8145C318 | 7C 9D 23 78 */	mr r29, r4
/* 8145C31C | 7C 7C 1B 78 */	mr r28, r3
/* 8145C320 | 7C BE 2B 78 */	mr r30, r5
/* 8145C324 | 3B E0 00 00 */	li r31, 0x0
/* 8145C328 | 7F A3 EB 78 */	mr r3, r29
/* 8145C32C | 48 00 01 FD */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145C330 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145C334 | 41 82 00 24 */	beq .L_8145C358
/* 8145C338 | 80 BD 00 00 */	lwz r5, 0x0(r29)
/* 8145C33C | 7F 83 E3 78 */	mr r3, r28
/* 8145C340 | 7F C4 F3 78 */	mr r4, r30
/* 8145C344 | 80 A5 00 00 */	lwz r5, 0x0(r5)
/* 8145C348 | C0 25 00 08 */	lfs f1, 0x8(r5)
/* 8145C34C | 4B FE F6 A1 */	bl CHANSVmSetFloat
/* 8145C350 | 7C 60 00 34 */	cntlzw r0, r3
/* 8145C354 | 54 1F D9 7E */	srwi r31, r0, 5
.L_8145C358:
/* 8145C358 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145C35C | 7F E3 FB 78 */	mr r3, r31
/* 8145C360 | 48 19 D1 B1 */	bl _restgpr_28
/* 8145C364 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145C368 | 7C 08 03 A6 */	mtlr r0
/* 8145C36C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145C370 | 4E 80 00 20 */	blr
.endfn "get<2>__Q33ipl2cs4vec3FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# .text:0x414 | 0x8145C374 | size: 0x74
# int ipl::cs::vec3::set<2>(CHANSVm*, CHANSVmObjHdr*, CHANSVmObjHdr*)
.fn "set<2>__Q33ipl2cs4vec3FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i", global
/* 8145C374 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8145C378 | 7C 08 02 A6 */	mflr r0
/* 8145C37C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8145C380 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145C384 | 48 19 D1 45 */	bl _savegpr_29
/* 8145C388 | 7C 9D 23 78 */	mr r29, r4
/* 8145C38C | 3B C0 00 00 */	li r30, 0x0
/* 8145C390 | 38 80 00 00 */	li r4, 0x0
/* 8145C394 | 4B FF 03 69 */	bl CHANSVmGetArgFloat
/* 8145C398 | 7C 7F 1B 78 */	mr r31, r3
/* 8145C39C | 7F A3 EB 78 */	mr r3, r29
/* 8145C3A0 | 48 00 01 89 */	bl is_valid_datap__Q33ipl2cs4utilFPC13CHANSVmObjHdr
/* 8145C3A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8145C3A8 | 41 82 00 24 */	beq .L_8145C3CC
/* 8145C3AC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8145C3B0 | 41 82 00 1C */	beq .L_8145C3CC
/* 8145C3B4 | C8 1F 00 00 */	lfd f0, 0x0(r31)
/* 8145C3B8 | 3B C0 00 01 */	li r30, 0x1
/* 8145C3BC | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8145C3C0 | FC 00 00 18 */	frsp f0, f0
/* 8145C3C4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8145C3C8 | D0 03 00 08 */	stfs f0, 0x8(r3)
.L_8145C3CC:
/* 8145C3CC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8145C3D0 | 7F C3 F3 78 */	mr r3, r30
/* 8145C3D4 | 48 19 D1 41 */	bl _restgpr_29
/* 8145C3D8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8145C3DC | 7C 08 03 A6 */	mtlr r0
/* 8145C3E0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8145C3E4 | 4E 80 00 20 */	blr
.endfn "set<2>__Q33ipl2cs4vec3FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"

# 0x816175E8..0x81617610 | size: 0x28
.rodata
.balign 8

# .rodata:0x0 | 0x816175E8 | size: 0x28
.obj lbl_816175E8, global
	.4byte lbl_816978D5
	.4byte "get<0>__Q33ipl2cs4vec3FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte "set<0>__Q33ipl2cs4vec3FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte lbl_816978D7
	.4byte "get<1>__Q33ipl2cs4vec3FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte "set<1>__Q33ipl2cs4vec3FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte lbl_816978D9
	.4byte "get<2>__Q33ipl2cs4vec3FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte "set<2>__Q33ipl2cs4vec3FP7CHANSVmP13CHANSVmObjHdrP13CHANSVmObjHdr_i"
	.4byte 0x00000000
.endobj lbl_816175E8

# 0x81694FC8..0x81694FD0 | size: 0x8
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694FC8 | size: 0x8
.obj lbl_81694FC8, global
	.float 0
	.float 0
.endobj lbl_81694FC8

# 0x816978D0..0x816978E0 | size: 0x10
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x816978D0 | size: 0x5
.obj lbl_816978D0, global
	.string "VEC3"
.endobj lbl_816978D0

# .sdata:0x5 | 0x816978D5 | size: 0x2
.obj lbl_816978D5, global
	.string "x"
.endobj lbl_816978D5

# .sdata:0x7 | 0x816978D7 | size: 0x2
.obj lbl_816978D7, global
	.string "y"
.endobj lbl_816978D7

# .sdata:0x9 | 0x816978D9 | size: 0x7
.obj lbl_816978D9, global
	.4byte 0x7A000000
	.byte 0x00, 0x00, 0x00
.endobj lbl_816978D9
