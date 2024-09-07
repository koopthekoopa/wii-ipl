.include "macros.inc"
.file "iplSDChannelObj.cpp"

# 0x813E2F2C..0x813E4BBC | size: 0x1C90
.text
.balign 4

# .text:0x0 | 0x813E2F2C | size: 0x130
# ipl::scene::SDChannelObj::SDChannelObj(EGG::Heap*, int, int)
.fn __ct__Q33ipl5scene12SDChannelObjFPQ23EGG4Heapii, global
/* 813E2F2C | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813E2F30 | 7C 08 02 A6 */	mflr r0
/* 813E2F34 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813E2F38 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813E2F3C | 48 21 65 8D */	bl _savegpr_29
/* 813E2F40 | 3B C0 00 00 */	li r30, 0x0
/* 813E2F44 | 90 83 00 10 */	stw r4, 0x10(r3)
/* 813E2F48 | 7C 7D 1B 78 */	mr r29, r3
/* 813E2F4C | 93 C3 00 08 */	stw r30, 0x8(r3)
/* 813E2F50 | 93 C3 00 0C */	stw r30, 0xc(r3)
/* 813E2F54 | 93 C3 00 14 */	stw r30, 0x14(r3)
/* 813E2F58 | 90 A3 00 18 */	stw r5, 0x18(r3)
/* 813E2F5C | 90 C3 00 1C */	stw r6, 0x1c(r3)
/* 813E2F60 | 93 C3 00 24 */	stw r30, 0x24(r3)
/* 813E2F64 | 93 C3 00 2C */	stw r30, 0x2c(r3)
/* 813E2F68 | 93 C3 00 34 */	stw r30, 0x34(r3)
/* 813E2F6C | 93 C3 00 44 */	stw r30, 0x44(r3)
/* 813E2F70 | 93 C3 00 48 */	stw r30, 0x48(r3)
/* 813E2F74 | 93 C3 00 4C */	stw r30, 0x4c(r3)
/* 813E2F78 | 93 C3 00 54 */	stw r30, 0x54(r3)
/* 813E2F7C | 93 C3 00 58 */	stw r30, 0x58(r3)
/* 813E2F80 | 93 C3 00 5C */	stw r30, 0x5c(r3)
/* 813E2F84 | 93 C3 00 60 */	stw r30, 0x60(r3)
/* 813E2F88 | 93 C3 00 64 */	stw r30, 0x64(r3)
/* 813E2F8C | 93 C3 00 68 */	stw r30, 0x68(r3)
/* 813E2F90 | 9B C3 00 6C */	stb r30, 0x6c(r3)
/* 813E2F94 | 93 C3 00 70 */	stw r30, 0x70(r3)
/* 813E2F98 | 93 C3 00 74 */	stw r30, 0x74(r3)
/* 813E2F9C | 48 18 70 19 */	bl SCGetAspectRatio
/* 813E2FA0 | 3F E0 81 61 */	lis r31, lbl_81610908@ha
/* 813E2FA4 | 54 60 1D 78 */	clrlslwi r0, r3, 24, 3
/* 813E2FA8 | 3B FF 09 08 */	addi r31, r31, lbl_81610908@l
/* 813E2FAC | 7C 1F 04 2E */	lfsx f0, r31, r0
/* 813E2FB0 | D0 1D 00 78 */	stfs f0, 0x78(r29)
/* 813E2FB4 | 48 18 70 01 */	bl SCGetAspectRatio
/* 813E2FB8 | 54 63 1D 78 */	clrlslwi r3, r3, 24, 3
/* 813E2FBC | 38 00 00 01 */	li r0, 0x1
/* 813E2FC0 | 7C 7F 1A 14 */	add r3, r31, r3
/* 813E2FC4 | 90 1D 00 84 */	stw r0, 0x84(r29)
/* 813E2FC8 | C0 03 00 04 */	lfs f0, 0x4(r3)
/* 813E2FCC | 93 DD 00 88 */	stw r30, 0x88(r29)
/* 813E2FD0 | D0 1D 00 7C */	stfs f0, 0x7c(r29)
/* 813E2FD4 | 48 18 6F E1 */	bl SCGetAspectRatio
/* 813E2FD8 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813E2FDC | 28 00 00 01 */	cmplwi r0, 0x1
/* 813E2FE0 | 40 82 00 48 */	bne .L_813E3028
/* 813E2FE4 | 38 61 00 18 */	addi r3, r1, 0x18
/* 813E2FE8 | 4B F5 34 41 */	bl __ct__Q34nw4r2ut4RectFv
/* 813E2FEC | 38 61 00 18 */	addi r3, r1, 0x18
/* 813E2FF0 | 4B F5 29 5D */	bl getProjectionRect4x3__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813E2FF4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813E2FF8 | 4B F5 34 31 */	bl __ct__Q34nw4r2ut4RectFv
/* 813E2FFC | 38 61 00 08 */	addi r3, r1, 0x8
/* 813E3000 | 4B F5 29 71 */	bl getProjectionRect16x9__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813E3004 | C0 61 00 20 */	lfs f3, 0x20(r1)
/* 813E3008 | C0 41 00 18 */	lfs f2, 0x18(r1)
/* 813E300C | C0 21 00 10 */	lfs f1, 0x10(r1)
/* 813E3010 | C0 01 00 08 */	lfs f0, 0x8(r1)
/* 813E3014 | EC 43 10 28 */	fsubs f2, f3, f2
/* 813E3018 | EC 01 00 28 */	fsubs f0, f1, f0
/* 813E301C | EC 00 10 24 */	fdivs f0, f0, f2
/* 813E3020 | D0 1D 00 80 */	stfs f0, 0x80(r29)
/* 813E3024 | 48 00 00 0C */	b .L_813E3030
.L_813E3028:
/* 813E3028 | C0 02 87 20 */	lfs f0, lbl_81694B20@sda21(r0)
/* 813E302C | D0 1D 00 80 */	stfs f0, 0x80(r29)
.L_813E3030:
/* 813E3030 | 38 7D 00 90 */	addi r3, r29, 0x90
/* 813E3034 | 38 80 00 00 */	li r4, 0x0
/* 813E3038 | 38 A0 06 08 */	li r5, 0x608
/* 813E303C | 4B F4 D2 F9 */	bl memset
/* 813E3040 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813E3044 | 7F A3 EB 78 */	mr r3, r29
/* 813E3048 | 48 21 64 CD */	bl _restgpr_29
/* 813E304C | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 813E3050 | 7C 08 03 A6 */	mtlr r0
/* 813E3054 | 38 21 00 40 */	addi r1, r1, 0x40
/* 813E3058 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene12SDChannelObjFPQ23EGG4Heapii

# .text:0x130 | 0x813E305C | size: 0xA8
# ipl::scene::SDChannelObj::~SDChannelObj()
.fn __dt__Q33ipl5scene12SDChannelObjFv, global
/* 813E305C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E3060 | 7C 08 02 A6 */	mflr r0
/* 813E3064 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E3068 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E306C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E3070 | 7C 9F 23 78 */	mr r31, r4
/* 813E3074 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813E3078 | 7C 7E 1B 78 */	mr r30, r3
/* 813E307C | 41 82 00 6C */	beq .L_813E30E8
/* 813E3080 | 80 63 00 2C */	lwz r3, 0x2c(r3)
/* 813E3084 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E3088 | 41 82 00 08 */	beq .L_813E3090
/* 813E308C | 4B F8 7D 75 */	bl destroyHeap__Q33ipl6layout6ObjectFv
.L_813E3090:
/* 813E3090 | 80 7E 00 34 */	lwz r3, 0x34(r30)
/* 813E3094 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E3098 | 41 82 00 1C */	beq .L_813E30B4
/* 813E309C | 41 82 00 18 */	beq .L_813E30B4
/* 813E30A0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E30A4 | 38 80 00 01 */	li r4, 0x1
/* 813E30A8 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813E30AC | 7D 89 03 A6 */	mtctr r12
/* 813E30B0 | 4E 80 04 21 */	bctrl
.L_813E30B4:
/* 813E30B4 | 80 7E 00 4C */	lwz r3, 0x4c(r30)
/* 813E30B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E30BC | 41 82 00 1C */	beq .L_813E30D8
/* 813E30C0 | 41 82 00 18 */	beq .L_813E30D8
/* 813E30C4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E30C8 | 38 80 00 01 */	li r4, 0x1
/* 813E30CC | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813E30D0 | 7D 89 03 A6 */	mtctr r12
/* 813E30D4 | 4E 80 04 21 */	bctrl
.L_813E30D8:
/* 813E30D8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813E30DC | 40 81 00 0C */	ble .L_813E30E8
/* 813E30E0 | 7F C3 F3 78 */	mr r3, r30
/* 813E30E4 | 48 21 50 01 */	bl __dl__FPv
.L_813E30E8:
/* 813E30E8 | 7F C3 F3 78 */	mr r3, r30
/* 813E30EC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E30F0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813E30F4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E30F8 | 7C 08 03 A6 */	mtlr r0
/* 813E30FC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E3100 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene12SDChannelObjFv

# .text:0x1D8 | 0x813E3104 | size: 0x18
.fn iplSDChannelObj_813E3104, global
/* 813E3104 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813E3108 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E310C | 4C 82 00 20 */	bnelr
/* 813E3110 | 38 00 00 02 */	li r0, 0x2
/* 813E3114 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813E3118 | 4E 80 00 20 */	blr
.endfn iplSDChannelObj_813E3104

# .text:0x1F0 | 0x813E311C | size: 0xC
.fn iplSDChannelObj_813E311C, global
/* 813E311C | 90 83 00 08 */	stw r4, 0x8(r3)
/* 813E3120 | 90 A3 00 0C */	stw r5, 0xc(r3)
/* 813E3124 | 4E 80 00 20 */	blr
.endfn iplSDChannelObj_813E311C

# .text:0x1FC | 0x813E3128 | size: 0x50
.fn iplSDChannelObj_813E3128, global
/* 813E3128 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E312C | 7C 08 02 A6 */	mflr r0
/* 813E3130 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E3134 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E3138 | 7C 7F 1B 78 */	mr r31, r3
/* 813E313C | 80 03 00 88 */	lwz r0, 0x88(r3)
/* 813E3140 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E3144 | 40 82 00 1C */	bne .L_813E3160
/* 813E3148 | 3C 60 00 02 */	lis r3, 0x2
/* 813E314C | 80 9F 00 10 */	lwz r4, 0x10(r31)
/* 813E3150 | 38 63 90 00 */	subi r3, r3, 0x7000
/* 813E3154 | 38 A0 00 20 */	li r5, 0x20
/* 813E3158 | 48 21 4F 7D */	bl __nwa__FUlPQ23EGG4Heapi
/* 813E315C | 90 7F 00 88 */	stw r3, 0x88(r31)
.L_813E3160:
/* 813E3160 | 80 7F 00 88 */	lwz r3, 0x88(r31)
/* 813E3164 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E3168 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E316C | 7C 08 03 A6 */	mtlr r0
/* 813E3170 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E3174 | 4E 80 00 20 */	blr
.endfn iplSDChannelObj_813E3128

# .text:0x24C | 0x813E3178 | size: 0x8
.fn iplSDChannelObj_813E3178, global
/* 813E3178 | 90 83 00 24 */	stw r4, 0x24(r3)
/* 813E317C | 4E 80 00 20 */	blr
.endfn iplSDChannelObj_813E3178

# .text:0x254 | 0x813E3180 | size: 0xAC
.fn iplSDChannelObj_813E3180, global
/* 813E3180 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E3184 | 7C 08 02 A6 */	mflr r0
/* 813E3188 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E318C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E3190 | 7C 9F 23 78 */	mr r31, r4
/* 813E3194 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813E3198 | 7C 7E 1B 78 */	mr r30, r3
/* 813E319C | 4B FF C0 49 */	bl iplSDChannelSelect_813DF1E4
/* 813E31A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E31A4 | 40 82 00 70 */	bne .L_813E3214
/* 813E31A8 | 80 1E 00 34 */	lwz r0, 0x34(r30)
/* 813E31AC | 93 FE 00 20 */	stw r31, 0x20(r30)
/* 813E31B0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E31B4 | 40 82 00 0C */	bne .L_813E31C0
/* 813E31B8 | 7F C3 F3 78 */	mr r3, r30
/* 813E31BC | 48 00 09 E5 */	bl iplSDChannelObj_813E3BA0
.L_813E31C0:
/* 813E31C0 | 80 1E 00 4C */	lwz r0, 0x4c(r30)
/* 813E31C4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E31C8 | 40 82 00 0C */	bne .L_813E31D4
/* 813E31CC | 7F C3 F3 78 */	mr r3, r30
/* 813E31D0 | 48 00 0D A5 */	bl iplSDChannelObj_813E3F74
.L_813E31D4:
/* 813E31D4 | 80 1E 00 14 */	lwz r0, 0x14(r30)
/* 813E31D8 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813E31DC | 41 82 00 28 */	beq .L_813E3204
/* 813E31E0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E31E4 | 40 82 00 30 */	bne .L_813E3214
/* 813E31E8 | 80 7E 00 28 */	lwz r3, 0x28(r30)
/* 813E31EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E31F0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813E31F4 | 7D 89 03 A6 */	mtctr r12
/* 813E31F8 | 4E 80 04 21 */	bctrl
/* 813E31FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E3200 | 41 82 00 14 */	beq .L_813E3214
.L_813E3204:
/* 813E3204 | 7F C3 F3 78 */	mr r3, r30
/* 813E3208 | 48 00 06 51 */	bl iplSDChannelObj_813E3858
/* 813E320C | 38 00 00 03 */	li r0, 0x3
/* 813E3210 | 90 1E 00 14 */	stw r0, 0x14(r30)
.L_813E3214:
/* 813E3214 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E3218 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E321C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813E3220 | 7C 08 03 A6 */	mtlr r0
/* 813E3224 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E3228 | 4E 80 00 20 */	blr
.endfn iplSDChannelObj_813E3180

# .text:0x300 | 0x813E322C | size: 0x9C
.fn iplSDChannelObj_813E322C, global
/* 813E322C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E3230 | 7C 08 02 A6 */	mflr r0
/* 813E3234 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E3238 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E323C | 7C 7F 1B 78 */	mr r31, r3
/* 813E3240 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813E3244 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813E3248 | 41 82 00 54 */	beq .L_813E329C
/* 813E324C | 40 80 00 14 */	bge .L_813E3260
/* 813E3250 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E3254 | 41 82 00 18 */	beq .L_813E326C
/* 813E3258 | 40 80 00 20 */	bge .L_813E3278
/* 813E325C | 48 00 00 58 */	b .L_813E32B4
.L_813E3260:
/* 813E3260 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813E3264 | 40 80 00 50 */	bge .L_813E32B4
/* 813E3268 | 48 00 00 48 */	b .L_813E32B0
.L_813E326C:
/* 813E326C | 38 00 00 02 */	li r0, 0x2
/* 813E3270 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813E3274 | 48 00 00 40 */	b .L_813E32B4
.L_813E3278:
/* 813E3278 | 80 63 00 28 */	lwz r3, 0x28(r3)
/* 813E327C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E3280 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813E3284 | 7D 89 03 A6 */	mtctr r12
/* 813E3288 | 4E 80 04 21 */	bctrl
/* 813E328C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E3290 | 41 82 00 24 */	beq .L_813E32B4
/* 813E3294 | 38 00 00 02 */	li r0, 0x2
/* 813E3298 | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_813E329C:
/* 813E329C | 7F E3 FB 78 */	mr r3, r31
/* 813E32A0 | 48 00 05 B9 */	bl iplSDChannelObj_813E3858
/* 813E32A4 | 38 00 00 03 */	li r0, 0x3
/* 813E32A8 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 813E32AC | 48 00 00 08 */	b .L_813E32B4
.L_813E32B0:
/* 813E32B0 | 48 00 08 6D */	bl iplSDChannelObj_813E3B1C
.L_813E32B4:
/* 813E32B4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E32B8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E32BC | 7C 08 03 A6 */	mtlr r0
/* 813E32C0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E32C4 | 4E 80 00 20 */	blr
.endfn iplSDChannelObj_813E322C

# .text:0x39C | 0x813E32C8 | size: 0x3C
.fn iplSDChannelObj_813E32C8, global
/* 813E32C8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E32CC | 7C 08 02 A6 */	mflr r0
/* 813E32D0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E32D4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E32D8 | 7C 7F 1B 78 */	mr r31, r3
/* 813E32DC | 4B FF BF 09 */	bl iplSDChannelSelect_813DF1E4
/* 813E32E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E32E4 | 41 82 00 0C */	beq .L_813E32F0
/* 813E32E8 | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 813E32EC | 4B F8 74 B1 */	bl draw__Q33ipl6layout6ObjectFv
.L_813E32F0:
/* 813E32F0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E32F4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E32F8 | 7C 08 03 A6 */	mtlr r0
/* 813E32FC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E3300 | 4E 80 00 20 */	blr
.endfn iplSDChannelObj_813E32C8

# .text:0x3D8 | 0x813E3304 | size: 0x8
.fn iplSDChannelObj_813E3304, global
/* 813E3304 | 80 63 00 34 */	lwz r3, 0x34(r3)
/* 813E3308 | 4B F8 74 94 */	b draw__Q33ipl6layout6ObjectFv
.endfn iplSDChannelObj_813E3304

# .text:0x3E0 | 0x813E330C | size: 0x14
.fn iplSDChannelObj_813E330C, global
/* 813E330C | 80 63 00 4C */	lwz r3, 0x4c(r3)
/* 813E3310 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E3314 | 4D 82 00 20 */	beqlr
/* 813E3318 | 4B F8 74 84 */	b draw__Q33ipl6layout6ObjectFv
/* 813E331C | 4E 80 00 20 */	blr
.endfn iplSDChannelObj_813E330C

# .text:0x3F4 | 0x813E3320 | size: 0x10
.fn iplSDChannelObj_813E3320, global
/* 813E3320 | 80 63 00 2C */	lwz r3, 0x2c(r3)
/* 813E3324 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813E3328 | 38 63 00 2C */	addi r3, r3, 0x2c
/* 813E332C | 4E 80 00 20 */	blr
.endfn iplSDChannelObj_813E3320

# .text:0x404 | 0x813E3330 | size: 0x24
.fn iplSDChannelObj_813E3330, global
/* 813E3330 | 80 03 00 84 */	lwz r0, 0x84(r3)
/* 813E3334 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E3338 | 41 82 00 0C */	beq .L_813E3344
/* 813E333C | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813E3340 | 40 82 00 0C */	bne .L_813E334C
.L_813E3344:
/* 813E3344 | 38 60 00 01 */	li r3, 0x1
/* 813E3348 | 4E 80 00 20 */	blr
.L_813E334C:
/* 813E334C | 38 60 00 00 */	li r3, 0x0
/* 813E3350 | 4E 80 00 20 */	blr
.endfn iplSDChannelObj_813E3330

# .text:0x428 | 0x813E3354 | size: 0x98
.fn iplSDChannelObj_813E3354, global
/* 813E3354 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E3358 | 7C 08 02 A6 */	mflr r0
/* 813E335C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E3360 | 54 80 03 DF */	rlwinm. r0, r4, 0, 15, 15
/* 813E3364 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E3368 | 7C 9F 23 78 */	mr r31, r4
/* 813E336C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813E3370 | 7C 7E 1B 78 */	mr r30, r3
/* 813E3374 | 41 82 00 10 */	beq .L_813E3384
/* 813E3378 | 38 00 00 00 */	li r0, 0x0
/* 813E337C | 90 03 00 60 */	stw r0, 0x60(r3)
/* 813E3380 | 48 00 00 2C */	b .L_813E33AC
.L_813E3384:
/* 813E3384 | 54 80 03 9D */	rlwinm. r0, r4, 0, 14, 14
/* 813E3388 | 41 82 00 10 */	beq .L_813E3398
/* 813E338C | 38 00 00 01 */	li r0, 0x1
/* 813E3390 | 90 03 00 60 */	stw r0, 0x60(r3)
/* 813E3394 | 48 00 00 18 */	b .L_813E33AC
.L_813E3398:
/* 813E3398 | 80 A3 00 60 */	lwz r5, 0x60(r3)
/* 813E339C | 38 05 00 01 */	addi r0, r5, 0x1
/* 813E33A0 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E33A4 | 90 03 00 60 */	stw r0, 0x60(r3)
/* 813E33A8 | 41 81 00 2C */	bgt .L_813E33D4
.L_813E33AC:
/* 813E33AC | 54 80 07 FF */	clrlwi. r0, r4, 31
/* 813E33B0 | 40 82 00 10 */	bne .L_813E33C0
/* 813E33B4 | 7F C3 F3 78 */	mr r3, r30
/* 813E33B8 | 38 80 00 01 */	li r4, 0x1
/* 813E33BC | 48 00 08 E1 */	bl iplSDChannelObj_813E3C9C
.L_813E33C0:
/* 813E33C0 | 57 E0 07 BD */	rlwinm. r0, r31, 0, 30, 30
/* 813E33C4 | 40 82 00 10 */	bne .L_813E33D4
/* 813E33C8 | 7F C3 F3 78 */	mr r3, r30
/* 813E33CC | 38 80 00 01 */	li r4, 0x1
/* 813E33D0 | 48 00 11 89 */	bl iplSDChannelObj_813E4558
.L_813E33D4:
/* 813E33D4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E33D8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E33DC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813E33E0 | 7C 08 03 A6 */	mtlr r0
/* 813E33E4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E33E8 | 4E 80 00 20 */	blr
.endfn iplSDChannelObj_813E3354

# .text:0x4C0 | 0x813E33EC | size: 0x94
.fn iplSDChannelObj_813E33EC, global
/* 813E33EC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E33F0 | 7C 08 02 A6 */	mflr r0
/* 813E33F4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E33F8 | 54 80 03 DF */	rlwinm. r0, r4, 0, 15, 15
/* 813E33FC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E3400 | 7C 9F 23 78 */	mr r31, r4
/* 813E3404 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813E3408 | 7C 7E 1B 78 */	mr r30, r3
/* 813E340C | 41 82 00 10 */	beq .L_813E341C
/* 813E3410 | 38 00 00 00 */	li r0, 0x0
/* 813E3414 | 90 03 00 60 */	stw r0, 0x60(r3)
/* 813E3418 | 48 00 00 28 */	b .L_813E3440
.L_813E341C:
/* 813E341C | 54 80 03 9D */	rlwinm. r0, r4, 0, 14, 14
/* 813E3420 | 41 82 00 10 */	beq .L_813E3430
/* 813E3424 | 38 00 00 01 */	li r0, 0x1
/* 813E3428 | 90 03 00 60 */	stw r0, 0x60(r3)
/* 813E342C | 48 00 00 14 */	b .L_813E3440
.L_813E3430:
/* 813E3430 | 80 A3 00 60 */	lwz r5, 0x60(r3)
/* 813E3434 | 34 05 FF FF */	subic. r0, r5, 0x1
/* 813E3438 | 90 03 00 60 */	stw r0, 0x60(r3)
/* 813E343C | 41 81 00 2C */	bgt .L_813E3468
.L_813E3440:
/* 813E3440 | 54 80 07 FF */	clrlwi. r0, r4, 31
/* 813E3444 | 40 82 00 10 */	bne .L_813E3454
/* 813E3448 | 7F C3 F3 78 */	mr r3, r30
/* 813E344C | 38 80 00 03 */	li r4, 0x3
/* 813E3450 | 48 00 08 4D */	bl iplSDChannelObj_813E3C9C
.L_813E3454:
/* 813E3454 | 57 E0 07 BD */	rlwinm. r0, r31, 0, 30, 30
/* 813E3458 | 40 82 00 10 */	bne .L_813E3468
/* 813E345C | 7F C3 F3 78 */	mr r3, r30
/* 813E3460 | 38 80 00 04 */	li r4, 0x4
/* 813E3464 | 48 00 10 F5 */	bl iplSDChannelObj_813E4558
.L_813E3468:
/* 813E3468 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E346C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E3470 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813E3474 | 7C 08 03 A6 */	mtlr r0
/* 813E3478 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E347C | 4E 80 00 20 */	blr
.endfn iplSDChannelObj_813E33EC

# .text:0x554 | 0x813E3480 | size: 0x60
.fn iplSDChannelObj_813E3480, global
/* 813E3480 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E3484 | 7C 08 02 A6 */	mflr r0
/* 813E3488 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813E348C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E3490 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E3494 | 7C 7F 1B 78 */	mr r31, r3
/* 813E3498 | 41 82 00 18 */	beq .L_813E34B0
/* 813E349C | 38 80 00 01 */	li r4, 0x1
/* 813E34A0 | 48 00 07 FD */	bl iplSDChannelObj_813E3C9C
/* 813E34A4 | 38 00 00 01 */	li r0, 0x1
/* 813E34A8 | 90 1F 00 60 */	stw r0, 0x60(r31)
/* 813E34AC | 48 00 00 14 */	b .L_813E34C0
.L_813E34B0:
/* 813E34B0 | 38 80 00 00 */	li r4, 0x0
/* 813E34B4 | 48 00 07 E9 */	bl iplSDChannelObj_813E3C9C
/* 813E34B8 | 38 00 00 00 */	li r0, 0x0
/* 813E34BC | 90 1F 00 60 */	stw r0, 0x60(r31)
.L_813E34C0:
/* 813E34C0 | 7F E3 FB 78 */	mr r3, r31
/* 813E34C4 | 38 80 00 00 */	li r4, 0x0
/* 813E34C8 | 48 00 10 91 */	bl iplSDChannelObj_813E4558
/* 813E34CC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E34D0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E34D4 | 7C 08 03 A6 */	mtlr r0
/* 813E34D8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E34DC | 4E 80 00 20 */	blr
.endfn iplSDChannelObj_813E3480

# .text:0x5B4 | 0x813E34E0 | size: 0x8
.fn iplSDChannelObj_813E34E0, global
/* 813E34E0 | 38 80 00 04 */	li r4, 0x4
/* 813E34E4 | 48 00 07 B8 */	b iplSDChannelObj_813E3C9C
.endfn iplSDChannelObj_813E34E0

# .text:0x5BC | 0x813E34E8 | size: 0x4C
.fn iplSDChannelObj_813E34E8, global
/* 813E34E8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E34EC | 7C 08 02 A6 */	mflr r0
/* 813E34F0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E34F4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E34F8 | 7C 9F 23 78 */	mr r31, r4
/* 813E34FC | 38 80 00 00 */	li r4, 0x0
/* 813E3500 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813E3504 | 7C 7E 1B 78 */	mr r30, r3
/* 813E3508 | 48 00 07 95 */	bl iplSDChannelObj_813E3C9C
/* 813E350C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813E3510 | 41 82 00 0C */	beq .L_813E351C
/* 813E3514 | 38 00 00 00 */	li r0, 0x0
/* 813E3518 | 90 1E 00 60 */	stw r0, 0x60(r30)
.L_813E351C:
/* 813E351C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E3520 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E3524 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813E3528 | 7C 08 03 A6 */	mtlr r0
/* 813E352C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E3530 | 4E 80 00 20 */	blr
.endfn iplSDChannelObj_813E34E8

# .text:0x608 | 0x813E3534 | size: 0x4C
.fn iplSDChannelObj_813E3534, global
/* 813E3534 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E3538 | 7C 08 02 A6 */	mflr r0
/* 813E353C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E3540 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E3544 | 7C 9F 23 78 */	mr r31, r4
/* 813E3548 | 38 80 00 00 */	li r4, 0x0
/* 813E354C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813E3550 | 7C 7E 1B 78 */	mr r30, r3
/* 813E3554 | 48 00 10 05 */	bl iplSDChannelObj_813E4558
/* 813E3558 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813E355C | 41 82 00 0C */	beq .L_813E3568
/* 813E3560 | 38 00 00 00 */	li r0, 0x0
/* 813E3564 | 90 1E 00 60 */	stw r0, 0x60(r30)
.L_813E3568:
/* 813E3568 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E356C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E3570 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813E3574 | 7C 08 03 A6 */	mtlr r0
/* 813E3578 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E357C | 4E 80 00 20 */	blr
.endfn iplSDChannelObj_813E3534

# .text:0x654 | 0x813E3580 | size: 0x2D8
.fn iplSDChannelObj_813E3580, global
/* 813E3580 | 94 21 FF 70 */	stwu r1, -0x90(r1)
/* 813E3584 | 7C 08 02 A6 */	mflr r0
/* 813E3588 | 90 01 00 94 */	stw r0, 0x94(r1)
/* 813E358C | 39 61 00 90 */	addi r11, r1, 0x90
/* 813E3590 | 48 21 5F 21 */	bl _savegpr_23
/* 813E3594 | 7C 7F 1B 78 */	mr r31, r3
/* 813E3598 | 4B F5 24 55 */	bl getLanguage__Q23ipl6SystemFv
/* 813E359C | 3C A0 81 65 */	lis r5, lbl_81654BA8@ha
/* 813E35A0 | 54 63 10 3A */	slwi r3, r3, 2
/* 813E35A4 | 38 A5 4B A8 */	addi r5, r5, lbl_81654BA8@l
/* 813E35A8 | 38 00 00 14 */	li r0, 0x14
/* 813E35AC | 7F 05 18 2E */	lwzx r24, r5, r3
/* 813E35B0 | 38 81 00 33 */	addi r4, r1, 0x33
/* 813E35B4 | 38 60 00 00 */	li r3, 0x0
/* 813E35B8 | 7C 09 03 A6 */	mtctr r0
.L_813E35BC:
/* 813E35BC | 98 64 00 01 */	stb r3, 0x1(r4)
/* 813E35C0 | 9C 64 00 02 */	stbu r3, 0x2(r4)
/* 813E35C4 | 42 00 FF F8 */	bdnz .L_813E35BC
/* 813E35C8 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 813E35CC | 3F 60 81 65 */	lis r27, lbl_81654BA8@ha
/* 813E35D0 | 3B 7B 4B A8 */	addi r27, r27, lbl_81654BA8@l
/* 813E35D4 | 3A E0 00 00 */	li r23, 0x0
/* 813E35D8 | 83 A3 00 04 */	lwz r29, 0x4(r3)
/* 813E35DC | 3B 80 00 00 */	li r28, 0x0
/* 813E35E0 | 48 00 01 1C */	b .L_813E36FC
.L_813E35E4:
/* 813E35E4 | 3B 3D 00 14 */	addi r25, r29, 0x14
/* 813E35E8 | 7F 04 C3 78 */	mr r4, r24
/* 813E35EC | 7F 23 CB 78 */	mr r3, r25
/* 813E35F0 | 48 21 EE 91 */	bl strcmp
/* 813E35F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E35F8 | 40 82 00 0C */	bne .L_813E3604
/* 813E35FC | 3A E0 00 01 */	li r23, 0x1
/* 813E3600 | 48 00 00 F8 */	b .L_813E36F8
.L_813E3604:
/* 813E3604 | 3B 40 00 01 */	li r26, 0x1
/* 813E3608 | 3B C0 00 00 */	li r30, 0x0
.L_813E360C:
/* 813E360C | 7F C5 F3 78 */	mr r5, r30
/* 813E3610 | 38 61 00 2C */	addi r3, r1, 0x2c
/* 813E3614 | 38 8D 8D D4 */	li r4, lbl_81696E14@sda21
/* 813E3618 | 4C C6 31 82 */	crclr cr1eq
/* 813E361C | 48 21 D4 65 */	bl sprintf
/* 813E3620 | 7F 23 CB 78 */	mr r3, r25
/* 813E3624 | 38 81 00 2C */	addi r4, r1, 0x2c
/* 813E3628 | 38 A0 00 05 */	li r5, 0x5
/* 813E362C | 48 21 EF 71 */	bl strncmp
/* 813E3630 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E3634 | 40 82 00 0C */	bne .L_813E3640
/* 813E3638 | 3B 40 00 00 */	li r26, 0x0
/* 813E363C | 48 00 00 10 */	b .L_813E364C
.L_813E3640:
/* 813E3640 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 813E3644 | 2C 1E 00 10 */	cmpwi r30, 0x10
/* 813E3648 | 41 80 FF C4 */	blt .L_813E360C
.L_813E364C:
/* 813E364C | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 813E3650 | 41 82 00 A8 */	beq .L_813E36F8
/* 813E3654 | 38 7D 00 08 */	addi r3, r29, 0x8
/* 813E3658 | 4B F8 67 DD */	bl "GetBeginIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"
/* 813E365C | 90 61 00 28 */	stw r3, 0x28(r1)
/* 813E3660 | 48 00 00 20 */	b .L_813E3680
.L_813E3664:
/* 813E3664 | 80 61 00 28 */	lwz r3, 0x28(r1)
/* 813E3668 | 38 80 00 00 */	li r4, 0x0
/* 813E366C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813E3670 | 4B F6 0D A5 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813E3674 | 38 61 00 28 */	addi r3, r1, 0x28
/* 813E3678 | 38 80 00 00 */	li r4, 0x0
/* 813E367C | 4B FC F1 59 */	bl "__pp__Q44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8IteratorFi"
.L_813E3680:
/* 813E3680 | 38 7D 00 08 */	addi r3, r29, 0x8
/* 813E3684 | 4B F8 67 B9 */	bl "GetEndIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"
/* 813E3688 | 80 01 00 28 */	lwz r0, 0x28(r1)
/* 813E368C | 38 81 00 18 */	addi r4, r1, 0x18
/* 813E3690 | 90 61 00 18 */	stw r3, 0x18(r1)
/* 813E3694 | 38 61 00 1C */	addi r3, r1, 0x1c
/* 813E3698 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 813E369C | 4B F8 67 A9 */	bl "__ne__Q24nw4r2utFQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8IteratorQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8Iterator"
/* 813E36A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E36A4 | 40 82 FF C0 */	bne .L_813E3664
/* 813E36A8 | 3B 40 00 00 */	li r26, 0x0
/* 813E36AC | 3B C0 00 00 */	li r30, 0x0
.L_813E36B0:
/* 813E36B0 | 7C 9B F0 2E */	lwzx r4, r27, r30
/* 813E36B4 | 7F 23 CB 78 */	mr r3, r25
/* 813E36B8 | 38 A0 00 03 */	li r5, 0x3
/* 813E36BC | 48 21 EE E1 */	bl strncmp
/* 813E36C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E36C4 | 40 82 00 24 */	bne .L_813E36E8
/* 813E36C8 | 3B 41 00 34 */	addi r26, r1, 0x34
/* 813E36CC | 7F 24 CB 78 */	mr r4, r25
/* 813E36D0 | 7F 5A F2 14 */	add r26, r26, r30
/* 813E36D4 | 38 A0 00 03 */	li r5, 0x3
/* 813E36D8 | 7F 43 D3 78 */	mr r3, r26
/* 813E36DC | 4B F4 CB 55 */	bl memcpy
/* 813E36E0 | 9B 9A 00 03 */	stb r28, 0x3(r26)
/* 813E36E4 | 48 00 00 14 */	b .L_813E36F8
.L_813E36E8:
/* 813E36E8 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 813E36EC | 3B DE 00 04 */	addi r30, r30, 0x4
/* 813E36F0 | 2C 1A 00 0A */	cmpwi r26, 0xa
/* 813E36F4 | 41 80 FF BC */	blt .L_813E36B0
.L_813E36F8:
/* 813E36F8 | 83 BD 00 00 */	lwz r29, 0x0(r29)
.L_813E36FC:
/* 813E36FC | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 813E3700 | 38 03 00 04 */	addi r0, r3, 0x4
/* 813E3704 | 7C 1D 00 40 */	cmplw r29, r0
/* 813E3708 | 40 82 FE DC */	bne .L_813E35E4
/* 813E370C | 2C 17 00 00 */	cmpwi r23, 0x0
/* 813E3710 | 41 82 00 68 */	beq .L_813E3778
/* 813E3714 | 7F 04 C3 78 */	mr r4, r24
/* 813E3718 | 48 13 C7 25 */	bl fn_8151FE3C
/* 813E371C | 7C 7D 1B 78 */	mr r29, r3
/* 813E3720 | 38 63 00 0C */	addi r3, r3, 0xc
/* 813E3724 | 4B F8 67 11 */	bl "GetBeginIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"
/* 813E3728 | 90 61 00 24 */	stw r3, 0x24(r1)
/* 813E372C | 48 00 00 20 */	b .L_813E374C
.L_813E3730:
/* 813E3730 | 80 61 00 24 */	lwz r3, 0x24(r1)
/* 813E3734 | 38 80 00 01 */	li r4, 0x1
/* 813E3738 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813E373C | 4B F6 0C D9 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813E3740 | 38 61 00 24 */	addi r3, r1, 0x24
/* 813E3744 | 38 80 00 00 */	li r4, 0x0
/* 813E3748 | 4B FC F0 8D */	bl "__pp__Q44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8IteratorFi"
.L_813E374C:
/* 813E374C | 38 7D 00 0C */	addi r3, r29, 0xc
/* 813E3750 | 4B F8 66 ED */	bl "GetEndIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"
/* 813E3754 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E3758 | 38 81 00 10 */	addi r4, r1, 0x10
/* 813E375C | 90 61 00 10 */	stw r3, 0x10(r1)
/* 813E3760 | 38 61 00 14 */	addi r3, r1, 0x14
/* 813E3764 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E3768 | 4B F8 66 DD */	bl "__ne__Q24nw4r2utFQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8IteratorQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8Iterator"
/* 813E376C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E3770 | 40 82 FF C0 */	bne .L_813E3730
/* 813E3774 | 48 00 00 CC */	b .L_813E3840
.L_813E3778:
/* 813E3778 | 4B F5 23 15 */	bl getRegion__Q23ipl6SystemFv
/* 813E377C | 3C A0 81 65 */	lis r5, lbl_81654BD0@ha
/* 813E3780 | 3C 80 81 61 */	lis r4, lbl_81610608@ha
/* 813E3784 | 54 60 30 32 */	slwi r0, r3, 6
/* 813E3788 | 3A E0 00 00 */	li r23, 0x0
/* 813E378C | 38 A5 4B D0 */	addi r5, r5, lbl_81654BD0@l
/* 813E3790 | 38 84 06 08 */	addi r4, r4, lbl_81610608@l
/* 813E3794 | 7F 45 02 14 */	add r26, r5, r0
/* 813E3798 | 3B C0 00 00 */	li r30, 0x0
/* 813E379C | 7F 64 02 14 */	add r27, r4, r0
.L_813E37A0:
/* 813E37A0 | 7C 7A F0 2E */	lwzx r3, r26, r30
/* 813E37A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E37A8 | 41 82 00 98 */	beq .L_813E3840
/* 813E37AC | 7C 1B F0 2E */	lwzx r0, r27, r30
/* 813E37B0 | 38 81 00 34 */	addi r4, r1, 0x34
/* 813E37B4 | 54 00 10 3A */	slwi r0, r0, 2
/* 813E37B8 | 7C 84 02 14 */	add r4, r4, r0
/* 813E37BC | 48 21 EC C5 */	bl strcmp
/* 813E37C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E37C4 | 40 82 00 6C */	bne .L_813E3830
/* 813E37C8 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 813E37CC | 7C 9A F0 2E */	lwzx r4, r26, r30
/* 813E37D0 | 48 13 C6 6D */	bl fn_8151FE3C
/* 813E37D4 | 7C 7D 1B 78 */	mr r29, r3
/* 813E37D8 | 38 63 00 0C */	addi r3, r3, 0xc
/* 813E37DC | 4B F8 66 59 */	bl "GetBeginIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"
/* 813E37E0 | 90 61 00 20 */	stw r3, 0x20(r1)
/* 813E37E4 | 48 00 00 20 */	b .L_813E3804
.L_813E37E8:
/* 813E37E8 | 80 61 00 20 */	lwz r3, 0x20(r1)
/* 813E37EC | 38 80 00 01 */	li r4, 0x1
/* 813E37F0 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813E37F4 | 4B F6 0C 21 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813E37F8 | 38 61 00 20 */	addi r3, r1, 0x20
/* 813E37FC | 38 80 00 00 */	li r4, 0x0
/* 813E3800 | 4B FC EF D5 */	bl "__pp__Q44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8IteratorFi"
.L_813E3804:
/* 813E3804 | 38 7D 00 0C */	addi r3, r29, 0xc
/* 813E3808 | 4B F8 66 35 */	bl "GetEndIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"
/* 813E380C | 80 01 00 20 */	lwz r0, 0x20(r1)
/* 813E3810 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813E3814 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 813E3818 | 38 61 00 0C */	addi r3, r1, 0xc
/* 813E381C | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813E3820 | 4B F8 66 25 */	bl "__ne__Q24nw4r2utFQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8IteratorQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8Iterator"
/* 813E3824 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E3828 | 40 82 FF C0 */	bne .L_813E37E8
/* 813E382C | 48 00 00 14 */	b .L_813E3840
.L_813E3830:
/* 813E3830 | 3A F7 00 01 */	addi r23, r23, 0x1
/* 813E3834 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 813E3838 | 2C 17 00 10 */	cmpwi r23, 0x10
/* 813E383C | 41 80 FF 64 */	blt .L_813E37A0
.L_813E3840:
/* 813E3840 | 39 61 00 90 */	addi r11, r1, 0x90
/* 813E3844 | 48 21 5C B9 */	bl _restgpr_23
/* 813E3848 | 80 01 00 94 */	lwz r0, 0x94(r1)
/* 813E384C | 7C 08 03 A6 */	mtlr r0
/* 813E3850 | 38 21 00 90 */	addi r1, r1, 0x90
/* 813E3854 | 4E 80 00 20 */	blr
.endfn iplSDChannelObj_813E3580

# .text:0x92C | 0x813E3858 | size: 0xC8
.fn iplSDChannelObj_813E3858, global
/* 813E3858 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813E385C | 7C 08 02 A6 */	mflr r0
/* 813E3860 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813E3864 | 39 61 00 18 */	addi r11, r1, 0x18
/* 813E3868 | DB E1 00 18 */	stfd f31, 0x18(r1)
/* 813E386C | 48 21 5C 5D */	bl _savegpr_29
/* 813E3870 | 80 03 00 4C */	lwz r0, 0x4c(r3)
/* 813E3874 | 7C 7D 1B 78 */	mr r29, r3
/* 813E3878 | 3B C0 00 00 */	li r30, 0x0
/* 813E387C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E3880 | 40 82 00 08 */	bne .L_813E3888
/* 813E3884 | 48 00 06 F1 */	bl iplSDChannelObj_813E3F74
.L_813E3888:
/* 813E3888 | 7F A3 EB 78 */	mr r3, r29
/* 813E388C | 4B FF FA A5 */	bl iplSDChannelObj_813E3330
/* 813E3890 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E3894 | 41 82 00 14 */	beq .L_813E38A8
/* 813E3898 | 7F A3 EB 78 */	mr r3, r29
/* 813E389C | 48 00 00 85 */	bl iplSDChannelObj_813E3920
/* 813E38A0 | FF E0 08 90 */	fmr f31, f1
/* 813E38A4 | 48 00 00 14 */	b .L_813E38B8
.L_813E38A8:
/* 813E38A8 | 7F A3 EB 78 */	mr r3, r29
/* 813E38AC | 48 00 01 D9 */	bl iplSDChannelObj_813E3A84
/* 813E38B0 | 3B C0 00 01 */	li r30, 0x1
/* 813E38B4 | FF E0 08 90 */	fmr f31, f1
.L_813E38B8:
/* 813E38B8 | 7F A3 EB 78 */	mr r3, r29
/* 813E38BC | 48 00 02 61 */	bl iplSDChannelObj_813E3B1C
/* 813E38C0 | 83 FD 00 30 */	lwz r31, 0x30(r29)
/* 813E38C4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813E38C8 | 41 82 00 14 */	beq .L_813E38DC
/* 813E38CC | 7F E3 FB 78 */	mr r3, r31
/* 813E38D0 | 4B F7 EF A1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E38D4 | 38 00 00 01 */	li r0, 0x1
/* 813E38D8 | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_813E38DC:
/* 813E38DC | 80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 813E38E0 | 4B F8 6D 55 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813E38E4 | 80 7D 00 30 */	lwz r3, 0x30(r29)
/* 813E38E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E38EC | 41 82 00 08 */	beq .L_813E38F4
/* 813E38F0 | D3 E3 00 0C */	stfs f31, 0xc(r3)
.L_813E38F4:
/* 813E38F4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813E38F8 | 41 82 00 0C */	beq .L_813E3904
/* 813E38FC | 80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 813E3900 | 4B F8 74 ED */	bl adjustHeap__Q33ipl6layout6ObjectFv
.L_813E3904:
/* 813E3904 | 39 61 00 18 */	addi r11, r1, 0x18
/* 813E3908 | CB E1 00 18 */	lfd f31, 0x18(r1)
/* 813E390C | 48 21 5C 09 */	bl _restgpr_29
/* 813E3910 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E3914 | 7C 08 03 A6 */	mtlr r0
/* 813E3918 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813E391C | 4E 80 00 20 */	blr
.endfn iplSDChannelObj_813E3858

# .text:0x9F4 | 0x813E3920 | size: 0x164
.fn iplSDChannelObj_813E3920, global
/* 813E3920 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813E3924 | 7C 08 02 A6 */	mflr r0
/* 813E3928 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813E392C | DB E1 00 30 */	stfd f31, 0x30(r1)
/* 813E3930 | F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 813E3934 | DB C1 00 20 */	stfd f30, 0x20(r1)
/* 813E3938 | F3 C1 00 28 */	psq_st f30, 0x28(r1), 0, qr0
/* 813E393C | 3C 80 00 01 */	lis r4, 0x1
/* 813E3940 | C3 C2 87 24 */	lfs f30, lbl_81694B24@sda21(r0)
/* 813E3944 | 38 84 80 00 */	addi r4, r4, -0x8000
/* 813E3948 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813E394C | 3F E0 81 65 */	lis r31, lbl_81654B38@ha
/* 813E3950 | 3B FF 4B 38 */	addi r31, r31, lbl_81654B38@l
/* 813E3954 | 38 CD 8D DA */	li r6, lbl_81696E1A@sda21
/* 813E3958 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 813E395C | 7C 7E 1B 78 */	mr r30, r3
/* 813E3960 | 38 FF 03 98 */	addi r7, r31, 0x398
/* 813E3964 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 813E3968 | 80 BE 00 88 */	lwz r5, 0x88(r30)
/* 813E396C | 4B F8 75 25 */	bl create__Q33ipl6layout6ObjectFPQ23EGG4HeapUlPvPCcPCc
/* 813E3970 | 90 7E 00 2C */	stw r3, 0x2c(r30)
/* 813E3974 | 4B FF FC 0D */	bl iplSDChannelObj_813E3580
/* 813E3978 | 80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 813E397C | 38 9F 03 A3 */	addi r4, r31, 0x3a3
/* 813E3980 | 4B F8 6D 45 */	bl searchFile__Q33ipl6layout6ObjectFPCc
/* 813E3984 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E3988 | 41 82 00 1C */	beq .L_813E39A4
/* 813E398C | 80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 813E3990 | 38 9F 03 A3 */	addi r4, r31, 0x3a3
/* 813E3994 | 38 A0 00 01 */	li r5, 0x1
/* 813E3998 | 4B F8 69 D5 */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813E399C | 90 7E 00 30 */	stw r3, 0x30(r30)
/* 813E39A0 | 48 00 00 38 */	b .L_813E39D8
.L_813E39A4:
/* 813E39A4 | 80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 813E39A8 | 38 9F 03 AE */	addi r4, r31, 0x3ae
/* 813E39AC | 4B F8 6D 19 */	bl searchFile__Q33ipl6layout6ObjectFPCc
/* 813E39B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E39B4 | 41 82 00 1C */	beq .L_813E39D0
/* 813E39B8 | 80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 813E39BC | 38 9F 03 AE */	addi r4, r31, 0x3ae
/* 813E39C0 | 38 A0 00 01 */	li r5, 0x1
/* 813E39C4 | 4B F8 69 A9 */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813E39C8 | 90 7E 00 30 */	stw r3, 0x30(r30)
/* 813E39CC | 48 00 00 0C */	b .L_813E39D8
.L_813E39D0:
/* 813E39D0 | 38 00 00 00 */	li r0, 0x0
/* 813E39D4 | 90 1E 00 30 */	stw r0, 0x30(r30)
.L_813E39D8:
/* 813E39D8 | 80 7E 00 30 */	lwz r3, 0x30(r30)
/* 813E39DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E39E0 | 41 82 00 58 */	beq .L_813E3A38
/* 813E39E4 | C3 E3 00 08 */	lfs f31, 0x8(r3)
/* 813E39E8 | C3 C3 00 04 */	lfs f30, 0x4(r3)
/* 813E39EC | 4B F5 1F F1 */	bl getRndm__Q23ipl6SystemFv
/* 813E39F0 | 4B FC B4 21 */	bl get_u16__Q33ipl4math6RandomFv
/* 813E39F4 | EC 1E F8 28 */	fsubs f0, f30, f31
/* 813E39F8 | 3C 00 43 30 */	lis r0, 0x4330
/* 813E39FC | 90 01 00 10 */	stw r0, 0x10(r1)
/* 813E3A00 | 54 64 04 3E */	clrlwi r4, r3, 16
/* 813E3A04 | C8 22 87 28 */	lfd f1, lbl_81694B28@sda21(r0)
/* 813E3A08 | FC 00 00 1E */	fctiwz f0, f0
/* 813E3A0C | D8 01 00 08 */	stfd f0, 0x8(r1)
/* 813E3A10 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 813E3A14 | 54 03 04 3E */	clrlwi r3, r0, 16
/* 813E3A18 | 7C 04 1B D6 */	divw r0, r4, r3
/* 813E3A1C | 7C 00 19 D6 */	mullw r0, r0, r3
/* 813E3A20 | 7C 00 20 50 */	subf r0, r0, r4
/* 813E3A24 | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 813E3A28 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E3A2C | C8 01 00 10 */	lfd f0, 0x10(r1)
/* 813E3A30 | EC 00 08 28 */	fsubs f0, f0, f1
/* 813E3A34 | EF DF 00 2A */	fadds f30, f31, f0
.L_813E3A38:
/* 813E3A38 | 80 1E 00 84 */	lwz r0, 0x84(r30)
/* 813E3A3C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E3A40 | 40 82 00 18 */	bne .L_813E3A58
/* 813E3A44 | 80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 813E3A48 | 7F C3 F3 78 */	mr r3, r30
/* 813E3A4C | 48 00 0D D1 */	bl iplSDChannelObj_813E481C
/* 813E3A50 | 38 00 00 01 */	li r0, 0x1
/* 813E3A54 | 90 1E 00 70 */	stw r0, 0x70(r30)
.L_813E3A58:
/* 813E3A58 | FC 20 F0 90 */	fmr f1, f30
/* 813E3A5C | E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 813E3A60 | CB E1 00 30 */	lfd f31, 0x30(r1)
/* 813E3A64 | E3 C1 00 28 */	psq_l f30, 0x28(r1), 0, qr0
/* 813E3A68 | CB C1 00 20 */	lfd f30, 0x20(r1)
/* 813E3A6C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813E3A70 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 813E3A74 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 813E3A78 | 7C 08 03 A6 */	mtlr r0
/* 813E3A7C | 38 21 00 40 */	addi r1, r1, 0x40
/* 813E3A80 | 4E 80 00 20 */	blr
.endfn iplSDChannelObj_813E3920

# .text:0xB58 | 0x813E3A84 | size: 0x98
.fn iplSDChannelObj_813E3A84, global
/* 813E3A84 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813E3A88 | 7C 08 02 A6 */	mflr r0
/* 813E3A8C | 3C 80 00 01 */	lis r4, 0x1
/* 813E3A90 | 3C E0 81 65 */	lis r7, lbl_81654EF7@ha
/* 813E3A94 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813E3A98 | 38 84 80 00 */	addi r4, r4, -0x8000
/* 813E3A9C | 38 E7 4E F7 */	addi r7, r7, lbl_81654EF7@l
/* 813E3AA0 | 38 CD 8D DA */	li r6, lbl_81696E1A@sda21
/* 813E3AA4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813E3AA8 | 7C 7F 1B 78 */	mr r31, r3
/* 813E3AAC | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 813E3AB0 | 80 BF 00 20 */	lwz r5, 0x20(r31)
/* 813E3AB4 | 4B F8 73 61 */	bl create__Q33ipl6layout6ObjectFPQ23EGG4HeapUlPQ33ipl4nand10LayoutFilePCcPCc
/* 813E3AB8 | 3C 80 81 65 */	lis r4, lbl_81654F0D@ha
/* 813E3ABC | 90 7F 00 2C */	stw r3, 0x2c(r31)
/* 813E3AC0 | 38 84 4F 0D */	addi r4, r4, lbl_81654F0D@l
/* 813E3AC4 | 38 A0 00 01 */	li r5, 0x1
/* 813E3AC8 | 4B F8 68 A5 */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813E3ACC | 90 7F 00 30 */	stw r3, 0x30(r31)
/* 813E3AD0 | 4B F5 1F 0D */	bl getRndm__Q23ipl6SystemFv
/* 813E3AD4 | 4B FC B3 3D */	bl get_u16__Q33ipl4math6RandomFv
/* 813E3AD8 | 54 65 04 3E */	clrlwi r5, r3, 16
/* 813E3ADC | 38 80 07 D0 */	li r4, 0x7d0
/* 813E3AE0 | 7C 65 23 D6 */	divw r3, r5, r4
/* 813E3AE4 | 3C 00 43 30 */	lis r0, 0x4330
/* 813E3AE8 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 813E3AEC | C8 22 87 28 */	lfd f1, lbl_81694B28@sda21(r0)
/* 813E3AF0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813E3AF4 | 7C 03 21 D6 */	mullw r0, r3, r4
/* 813E3AF8 | 7C 00 28 50 */	subf r0, r0, r5
/* 813E3AFC | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 813E3B00 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813E3B04 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E3B08 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 813E3B0C | EC 20 08 28 */	fsubs f1, f0, f1
/* 813E3B10 | 7C 08 03 A6 */	mtlr r0
/* 813E3B14 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813E3B18 | 4E 80 00 20 */	blr
.endfn iplSDChannelObj_813E3A84

# .text:0xBF0 | 0x813E3B1C | size: 0x84
.fn iplSDChannelObj_813E3B1C, global
/* 813E3B1C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813E3B20 | 7C 08 02 A6 */	mflr r0
/* 813E3B24 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813E3B28 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813E3B2C | 7C 7F 1B 78 */	mr r31, r3
/* 813E3B30 | 48 00 0E 79 */	bl iplSDChannelObj_813E49A8
/* 813E3B34 | C0 22 87 24 */	lfs f1, lbl_81694B24@sda21(r0)
/* 813E3B38 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813E3B3C | FC 40 08 90 */	fmr f2, f1
/* 813E3B40 | FC 60 08 90 */	fmr f3, f1
/* 813E3B44 | 4B F9 0D 41 */	bl __ct__Q34nw4r4math4VEC3Ffff
/* 813E3B48 | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 813E3B4C | 38 81 00 08 */	addi r4, r1, 0x8
/* 813E3B50 | 7C 85 23 78 */	mr r5, r4
/* 813E3B54 | 38 63 00 84 */	addi r3, r3, 0x84
/* 813E3B58 | 48 15 D9 65 */	bl fn_815414BC
/* 813E3B5C | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 813E3B60 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813E3B64 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813E3B68 | 4B F9 EB 69 */	bl SetTranslate__Q34nw4r3lyt4PaneFRCQ34nw4r4math4VEC3
/* 813E3B6C | 80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 813E3B70 | 4B F8 6B 95 */	bl calc__Q33ipl6layout6ObjectFv
/* 813E3B74 | 7F E3 FB 78 */	mr r3, r31
/* 813E3B78 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813E3B7C | 48 00 00 DD */	bl iplSDChannelObj_813E3C58
/* 813E3B80 | 7F E3 FB 78 */	mr r3, r31
/* 813E3B84 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813E3B88 | 48 00 08 89 */	bl iplSDChannelObj_813E4410
/* 813E3B8C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E3B90 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813E3B94 | 7C 08 03 A6 */	mtlr r0
/* 813E3B98 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813E3B9C | 4E 80 00 20 */	blr
.endfn iplSDChannelObj_813E3B1C

# .text:0xC74 | 0x813E3BA0 | size: 0xB8
.fn iplSDChannelObj_813E3BA0, global
/* 813E3BA0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813E3BA4 | 7C 08 02 A6 */	mflr r0
/* 813E3BA8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813E3BAC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E3BB0 | 48 21 59 15 */	bl _savegpr_28
/* 813E3BB4 | 7C 7C 1B 78 */	mr r28, r3
/* 813E3BB8 | 38 60 05 80 */	li r3, 0x580
/* 813E3BBC | 80 9C 00 08 */	lwz r4, 0x8(r28)
/* 813E3BC0 | 38 A0 00 04 */	li r5, 0x4
/* 813E3BC4 | 48 21 44 ED */	bl __nw__FUlPQ23EGG4Heapi
/* 813E3BC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E3BCC | 41 82 00 1C */	beq .L_813E3BE8
/* 813E3BD0 | 3C E0 81 65 */	lis r7, lbl_81654F23@ha
/* 813E3BD4 | 80 9C 00 08 */	lwz r4, 0x8(r28)
/* 813E3BD8 | 80 BC 00 20 */	lwz r5, 0x20(r28)
/* 813E3BDC | 38 E7 4F 23 */	addi r7, r7, lbl_81654F23@l
/* 813E3BE0 | 38 CD 8D DA */	li r6, lbl_81696E1A@sda21
/* 813E3BE4 | 4B F8 64 41 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813E3BE8:
/* 813E3BE8 | 3F C0 81 65 */	lis r30, lbl_81654B90@ha
/* 813E3BEC | 90 7C 00 34 */	stw r3, 0x34(r28)
/* 813E3BF0 | 3B DE 4B 90 */	addi r30, r30, lbl_81654B90@l
/* 813E3BF4 | 3B A0 00 00 */	li r29, 0x0
/* 813E3BF8 | 3B E0 00 00 */	li r31, 0x0
.L_813E3BFC:
/* 813E3BFC | 80 7C 00 34 */	lwz r3, 0x34(r28)
/* 813E3C00 | 38 C0 00 00 */	li r6, 0x0
/* 813E3C04 | 7C 9E F8 2E */	lwzx r4, r30, r31
/* 813E3C08 | 38 E0 00 01 */	li r7, 0x1
/* 813E3C0C | 80 AD 8D 90 */	lwz r5, lbl_81696DD0@sda21(r0)
/* 813E3C10 | 4B F8 67 6D */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 813E3C14 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 813E3C18 | 7C 9C FA 14 */	add r4, r28, r31
/* 813E3C1C | 2C 1D 00 03 */	cmpwi r29, 0x3
/* 813E3C20 | 90 64 00 38 */	stw r3, 0x38(r4)
/* 813E3C24 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813E3C28 | 41 80 FF D4 */	blt .L_813E3BFC
/* 813E3C2C | 7F 83 E3 78 */	mr r3, r28
/* 813E3C30 | 38 80 00 00 */	li r4, 0x0
/* 813E3C34 | 48 00 00 69 */	bl iplSDChannelObj_813E3C9C
/* 813E3C38 | 80 7C 00 34 */	lwz r3, 0x34(r28)
/* 813E3C3C | 4B F8 69 F9 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813E3C40 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E3C44 | 48 21 58 CD */	bl _restgpr_28
/* 813E3C48 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E3C4C | 7C 08 03 A6 */	mtlr r0
/* 813E3C50 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813E3C54 | 4E 80 00 20 */	blr
.endfn iplSDChannelObj_813E3BA0

# .text:0xD2C | 0x813E3C58 | size: 0x44
.fn iplSDChannelObj_813E3C58, global
/* 813E3C58 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E3C5C | 7C 08 02 A6 */	mflr r0
/* 813E3C60 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E3C64 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E3C68 | 7C 7F 1B 78 */	mr r31, r3
/* 813E3C6C | 80 A3 00 34 */	lwz r5, 0x34(r3)
/* 813E3C70 | 80 65 00 14 */	lwz r3, 0x14(r5)
/* 813E3C74 | 4B F9 EA 5D */	bl SetTranslate__Q34nw4r3lyt4PaneFRCQ34nw4r4math4VEC3
/* 813E3C78 | 7F E3 FB 78 */	mr r3, r31
/* 813E3C7C | 48 00 01 BD */	bl iplSDChannelObj_813E3E38
/* 813E3C80 | 80 7F 00 34 */	lwz r3, 0x34(r31)
/* 813E3C84 | 4B F8 6A 81 */	bl calc__Q33ipl6layout6ObjectFv
/* 813E3C88 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E3C8C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E3C90 | 7C 08 03 A6 */	mtlr r0
/* 813E3C94 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E3C98 | 4E 80 00 20 */	blr
.endfn iplSDChannelObj_813E3C58

# .text:0xD70 | 0x813E3C9C | size: 0x19C
.fn iplSDChannelObj_813E3C9C, global
/* 813E3C9C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813E3CA0 | 7C 08 02 A6 */	mflr r0
/* 813E3CA4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813E3CA8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E3CAC | 48 21 58 1D */	bl _savegpr_29
/* 813E3CB0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813E3CB4 | 7C 7D 1B 78 */	mr r29, r3
/* 813E3CB8 | 40 82 00 58 */	bne .L_813E3D10
/* 813E3CBC | 3B E0 00 00 */	li r31, 0x0
/* 813E3CC0 | 3B C0 00 00 */	li r30, 0x0
/* 813E3CC4 | 93 E3 00 44 */	stw r31, 0x44(r3)
/* 813E3CC8 | 93 E3 00 48 */	stw r31, 0x48(r3)
.L_813E3CCC:
/* 813E3CCC | 7C 7D FA 14 */	add r3, r29, r31
/* 813E3CD0 | 80 63 00 38 */	lwz r3, 0x38(r3)
/* 813E3CD4 | 4B F7 EB 9D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E3CD8 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 813E3CDC | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813E3CE0 | 2C 1E 00 03 */	cmpwi r30, 0x3
/* 813E3CE4 | 41 80 FF E8 */	blt .L_813E3CCC
/* 813E3CE8 | 80 7D 00 34 */	lwz r3, 0x34(r29)
/* 813E3CEC | 38 80 00 01 */	li r4, 0x1
/* 813E3CF0 | 38 63 02 8C */	addi r3, r3, 0x28c
/* 813E3CF4 | 48 12 E6 25 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813E3CF8 | 4B F8 5F 2D */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813E3CFC | 80 7D 00 34 */	lwz r3, 0x34(r29)
/* 813E3D00 | 38 80 00 00 */	li r4, 0x0
/* 813E3D04 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813E3D08 | 4B F6 07 0D */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813E3D0C | 48 00 01 14 */	b .L_813E3E20
.L_813E3D10:
/* 813E3D10 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 813E3D14 | 40 82 00 34 */	bne .L_813E3D48
/* 813E3D18 | 38 80 00 04 */	li r4, 0x4
/* 813E3D1C | 38 00 00 00 */	li r0, 0x0
/* 813E3D20 | 90 83 00 44 */	stw r4, 0x44(r3)
/* 813E3D24 | 38 80 00 01 */	li r4, 0x1
/* 813E3D28 | 80 A3 00 34 */	lwz r5, 0x34(r3)
/* 813E3D2C | 90 03 00 48 */	stw r0, 0x48(r3)
/* 813E3D30 | 80 65 00 14 */	lwz r3, 0x14(r5)
/* 813E3D34 | 4B F6 06 E1 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813E3D38 | 7F A3 EB 78 */	mr r3, r29
/* 813E3D3C | 38 80 00 02 */	li r4, 0x2
/* 813E3D40 | 48 00 01 E9 */	bl iplSDChannelObj_813E3F28
/* 813E3D44 | 48 00 00 DC */	b .L_813E3E20
.L_813E3D48:
/* 813E3D48 | 80 03 00 44 */	lwz r0, 0x44(r3)
/* 813E3D4C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813E3D50 | 41 82 00 90 */	beq .L_813E3DE0
/* 813E3D54 | 40 80 00 14 */	bge .L_813E3D68
/* 813E3D58 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E3D5C | 41 82 00 18 */	beq .L_813E3D74
/* 813E3D60 | 40 80 00 44 */	bge .L_813E3DA4
/* 813E3D64 | 48 00 00 BC */	b .L_813E3E20
.L_813E3D68:
/* 813E3D68 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813E3D6C | 40 80 00 B4 */	bge .L_813E3E20
/* 813E3D70 | 48 00 00 8C */	b .L_813E3DFC
.L_813E3D74:
/* 813E3D74 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 813E3D78 | 40 82 00 A8 */	bne .L_813E3E20
/* 813E3D7C | 38 00 00 01 */	li r0, 0x1
/* 813E3D80 | 80 A3 00 34 */	lwz r5, 0x34(r3)
/* 813E3D84 | 90 03 00 44 */	stw r0, 0x44(r3)
/* 813E3D88 | 38 80 00 01 */	li r4, 0x1
/* 813E3D8C | 80 65 00 14 */	lwz r3, 0x14(r5)
/* 813E3D90 | 4B F6 06 85 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813E3D94 | 7F A3 EB 78 */	mr r3, r29
/* 813E3D98 | 38 80 00 01 */	li r4, 0x1
/* 813E3D9C | 48 00 01 8D */	bl iplSDChannelObj_813E3F28
/* 813E3DA0 | 48 00 00 80 */	b .L_813E3E20
.L_813E3DA4:
/* 813E3DA4 | 2C 04 00 02 */	cmpwi r4, 0x2
/* 813E3DA8 | 40 82 00 10 */	bne .L_813E3DB8
/* 813E3DAC | 38 00 00 02 */	li r0, 0x2
/* 813E3DB0 | 90 03 00 44 */	stw r0, 0x44(r3)
/* 813E3DB4 | 48 00 00 6C */	b .L_813E3E20
.L_813E3DB8:
/* 813E3DB8 | 2C 04 00 03 */	cmpwi r4, 0x3
/* 813E3DBC | 40 82 00 10 */	bne .L_813E3DCC
/* 813E3DC0 | 38 00 00 03 */	li r0, 0x3
/* 813E3DC4 | 90 03 00 48 */	stw r0, 0x48(r3)
/* 813E3DC8 | 48 00 00 58 */	b .L_813E3E20
.L_813E3DCC:
/* 813E3DCC | 2C 04 00 01 */	cmpwi r4, 0x1
/* 813E3DD0 | 40 82 00 50 */	bne .L_813E3E20
/* 813E3DD4 | 38 00 00 00 */	li r0, 0x0
/* 813E3DD8 | 90 03 00 48 */	stw r0, 0x48(r3)
/* 813E3DDC | 48 00 00 44 */	b .L_813E3E20
.L_813E3DE0:
/* 813E3DE0 | 2C 04 00 03 */	cmpwi r4, 0x3
/* 813E3DE4 | 40 82 00 3C */	bne .L_813E3E20
/* 813E3DE8 | 38 00 00 03 */	li r0, 0x3
/* 813E3DEC | 38 80 00 00 */	li r4, 0x0
/* 813E3DF0 | 90 03 00 44 */	stw r0, 0x44(r3)
/* 813E3DF4 | 48 00 01 35 */	bl iplSDChannelObj_813E3F28
/* 813E3DF8 | 48 00 00 28 */	b .L_813E3E20
.L_813E3DFC:
/* 813E3DFC | 2C 04 00 01 */	cmpwi r4, 0x1
/* 813E3E00 | 40 82 00 10 */	bne .L_813E3E10
/* 813E3E04 | 38 00 00 01 */	li r0, 0x1
/* 813E3E08 | 90 03 00 48 */	stw r0, 0x48(r3)
/* 813E3E0C | 48 00 00 14 */	b .L_813E3E20
.L_813E3E10:
/* 813E3E10 | 2C 04 00 03 */	cmpwi r4, 0x3
/* 813E3E14 | 40 82 00 0C */	bne .L_813E3E20
/* 813E3E18 | 38 00 00 00 */	li r0, 0x0
/* 813E3E1C | 90 03 00 48 */	stw r0, 0x48(r3)
.L_813E3E20:
/* 813E3E20 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813E3E24 | 48 21 56 F1 */	bl _restgpr_29
/* 813E3E28 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E3E2C | 7C 08 03 A6 */	mtlr r0
/* 813E3E30 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813E3E34 | 4E 80 00 20 */	blr
.endfn iplSDChannelObj_813E3C9C

# .text:0xF0C | 0x813E3E38 | size: 0xF0
.fn iplSDChannelObj_813E3E38, global
/* 813E3E38 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E3E3C | 7C 08 02 A6 */	mflr r0
/* 813E3E40 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E3E44 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E3E48 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813E3E4C | 7C 7E 1B 78 */	mr r30, r3
/* 813E3E50 | 80 03 00 44 */	lwz r0, 0x44(r3)
/* 813E3E54 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813E3E58 | 41 82 00 6C */	beq .L_813E3EC4
/* 813E3E5C | 40 80 00 10 */	bge .L_813E3E6C
/* 813E3E60 | 2C 80 00 01 */	cmpwi cr1, r0, 0x1
/* 813E3E64 | 41 86 00 14 */	beq cr1, .L_813E3E78
/* 813E3E68 | 48 00 00 A8 */	b .L_813E3F10
.L_813E3E6C:
/* 813E3E6C | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813E3E70 | 40 80 00 A0 */	bge .L_813E3F10
/* 813E3E74 | 48 00 00 84 */	b .L_813E3EF8
.L_813E3E78:
/* 813E3E78 | 80 83 00 3C */	lwz r4, 0x3c(r3)
/* 813E3E7C | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 813E3E80 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E3E84 | 41 82 00 8C */	beq .L_813E3F10
/* 813E3E88 | 80 83 00 48 */	lwz r4, 0x48(r3)
/* 813E3E8C | 41 86 00 10 */	beq cr1, .L_813E3E9C
/* 813E3E90 | 40 84 00 14 */	bge cr1, .L_813E3EA4
/* 813E3E94 | 48 00 00 10 */	b .L_813E3EA4
/* 813E3E98 | 48 00 00 0C */	b .L_813E3EA4
.L_813E3E9C:
/* 813E3E9C | 38 00 00 02 */	li r0, 0x2
/* 813E3EA0 | 90 03 00 44 */	stw r0, 0x44(r3)
.L_813E3EA4:
/* 813E3EA4 | 2C 04 00 03 */	cmpwi r4, 0x3
/* 813E3EA8 | 40 82 00 68 */	bne .L_813E3F10
/* 813E3EAC | 7F C3 F3 78 */	mr r3, r30
/* 813E3EB0 | 38 80 00 03 */	li r4, 0x3
/* 813E3EB4 | 4B FF FD E9 */	bl iplSDChannelObj_813E3C9C
/* 813E3EB8 | 38 00 00 00 */	li r0, 0x0
/* 813E3EBC | 90 1E 00 48 */	stw r0, 0x48(r30)
/* 813E3EC0 | 48 00 00 50 */	b .L_813E3F10
.L_813E3EC4:
/* 813E3EC4 | 80 83 00 38 */	lwz r4, 0x38(r3)
/* 813E3EC8 | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 813E3ECC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E3ED0 | 41 82 00 40 */	beq .L_813E3F10
/* 813E3ED4 | 83 E3 00 48 */	lwz r31, 0x48(r3)
/* 813E3ED8 | 38 80 00 00 */	li r4, 0x0
/* 813E3EDC | 4B FF FD C1 */	bl iplSDChannelObj_813E3C9C
/* 813E3EE0 | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 813E3EE4 | 40 82 00 2C */	bne .L_813E3F10
/* 813E3EE8 | 7F C3 F3 78 */	mr r3, r30
/* 813E3EEC | 38 80 00 01 */	li r4, 0x1
/* 813E3EF0 | 4B FF FD AD */	bl iplSDChannelObj_813E3C9C
/* 813E3EF4 | 48 00 00 1C */	b .L_813E3F10
.L_813E3EF8:
/* 813E3EF8 | 80 83 00 40 */	lwz r4, 0x40(r3)
/* 813E3EFC | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 813E3F00 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E3F04 | 41 82 00 0C */	beq .L_813E3F10
/* 813E3F08 | 38 80 00 00 */	li r4, 0x0
/* 813E3F0C | 4B FF FD 91 */	bl iplSDChannelObj_813E3C9C
.L_813E3F10:
/* 813E3F10 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E3F14 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E3F18 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813E3F1C | 7C 08 03 A6 */	mtlr r0
/* 813E3F20 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E3F24 | 4E 80 00 20 */	blr
.endfn iplSDChannelObj_813E3E38

# .text:0xFFC | 0x813E3F28 | size: 0x4C
.fn iplSDChannelObj_813E3F28, global
/* 813E3F28 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E3F2C | 7C 08 02 A6 */	mflr r0
/* 813E3F30 | 54 84 10 3A */	slwi r4, r4, 2
/* 813E3F34 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E3F38 | 7C 83 22 14 */	add r4, r3, r4
/* 813E3F3C | 38 00 00 00 */	li r0, 0x0
/* 813E3F40 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E3F44 | 80 64 00 38 */	lwz r3, 0x38(r4)
/* 813E3F48 | 90 03 00 18 */	stw r0, 0x18(r3)
/* 813E3F4C | 83 E4 00 38 */	lwz r31, 0x38(r4)
/* 813E3F50 | 7F E3 FB 78 */	mr r3, r31
/* 813E3F54 | 4B F7 E9 1D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E3F58 | 38 00 00 01 */	li r0, 0x1
/* 813E3F5C | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 813E3F60 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E3F64 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E3F68 | 7C 08 03 A6 */	mtlr r0
/* 813E3F6C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E3F70 | 4E 80 00 20 */	blr
.endfn iplSDChannelObj_813E3F28

# .text:0x1048 | 0x813E3F74 | size: 0xEC
.fn iplSDChannelObj_813E3F74, global
/* 813E3F74 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E3F78 | 7C 08 02 A6 */	mflr r0
/* 813E3F7C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E3F80 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E3F84 | 7C 7F 1B 78 */	mr r31, r3
/* 813E3F88 | 4B FF F3 A9 */	bl iplSDChannelObj_813E3330
/* 813E3F8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E3F90 | 40 82 00 10 */	bne .L_813E3FA0
/* 813E3F94 | 38 00 00 00 */	li r0, 0x0
/* 813E3F98 | 90 1F 00 4C */	stw r0, 0x4c(r31)
/* 813E3F9C | 48 00 00 B0 */	b .L_813E404C
.L_813E3FA0:
/* 813E3FA0 | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 813E3FA4 | 38 60 05 80 */	li r3, 0x580
/* 813E3FA8 | 38 A0 00 04 */	li r5, 0x4
/* 813E3FAC | 48 21 41 05 */	bl __nw__FUlPQ23EGG4Heapi
/* 813E3FB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E3FB4 | 41 82 00 1C */	beq .L_813E3FD0
/* 813E3FB8 | 3C E0 81 65 */	lis r7, lbl_81654F35@ha
/* 813E3FBC | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 813E3FC0 | 80 BF 00 20 */	lwz r5, 0x20(r31)
/* 813E3FC4 | 38 E7 4F 35 */	addi r7, r7, lbl_81654F35@l
/* 813E3FC8 | 38 CD 8D DA */	li r6, lbl_81696E1A@sda21
/* 813E3FCC | 4B F8 60 59 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813E3FD0:
/* 813E3FD0 | 80 1F 00 84 */	lwz r0, 0x84(r31)
/* 813E3FD4 | 90 7F 00 4C */	stw r3, 0x4c(r31)
/* 813E3FD8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E3FDC | 40 82 00 20 */	bne .L_813E3FFC
/* 813E3FE0 | 7F E3 FB 78 */	mr r3, r31
/* 813E3FE4 | 38 80 00 00 */	li r4, 0x0
/* 813E3FE8 | 48 00 00 79 */	bl iplSDChannelObj_813E4060
/* 813E3FEC | 7C 64 1B 78 */	mr r4, r3
/* 813E3FF0 | 7F E3 FB 78 */	mr r3, r31
/* 813E3FF4 | 48 00 01 49 */	bl iplSDChannelObj_813E413C
/* 813E3FF8 | 48 00 00 28 */	b .L_813E4020
.L_813E3FFC:
/* 813E3FFC | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813E4000 | 40 82 00 14 */	bne .L_813E4014
/* 813E4004 | 7F E3 FB 78 */	mr r3, r31
/* 813E4008 | 38 82 87 18 */	li r4, lbl_81694B18@sda21
/* 813E400C | 48 00 01 31 */	bl iplSDChannelObj_813E413C
/* 813E4010 | 48 00 00 10 */	b .L_813E4020
.L_813E4014:
/* 813E4014 | 7F E3 FB 78 */	mr r3, r31
/* 813E4018 | 38 8D 8D DE */	li r4, lbl_81696E1E@sda21
/* 813E401C | 48 00 01 21 */	bl iplSDChannelObj_813E413C
.L_813E4020:
/* 813E4020 | 3C 80 81 65 */	lis r4, lbl_81654F4E@ha
/* 813E4024 | 80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 813E4028 | 38 84 4F 4E */	addi r4, r4, lbl_81654F4E@l
/* 813E402C | 38 A0 00 01 */	li r5, 0x1
/* 813E4030 | 4B F8 63 3D */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813E4034 | 90 7F 00 50 */	stw r3, 0x50(r31)
/* 813E4038 | 7F E3 FB 78 */	mr r3, r31
/* 813E403C | 38 80 00 00 */	li r4, 0x0
/* 813E4040 | 48 00 05 19 */	bl iplSDChannelObj_813E4558
/* 813E4044 | 80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 813E4048 | 4B F8 65 ED */	bl finishBinding__Q33ipl6layout6ObjectFv
.L_813E404C:
/* 813E404C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E4050 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E4054 | 7C 08 03 A6 */	mtlr r0
/* 813E4058 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E405C | 4E 80 00 20 */	blr
.endfn iplSDChannelObj_813E3F74

# .text:0x1134 | 0x813E4060 | size: 0xDC
.fn iplSDChannelObj_813E4060, global
/* 813E4060 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E4064 | 7C 08 02 A6 */	mflr r0
/* 813E4068 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E406C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E4070 | 1F E4 00 2A */	mulli r31, r4, 0x2a
/* 813E4074 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813E4078 | 7C 7E 1B 78 */	mr r30, r3
/* 813E407C | 4B F5 19 71 */	bl getLanguage__Q23ipl6SystemFv
/* 813E4080 | 1C 03 00 54 */	mulli r0, r3, 0x54
/* 813E4084 | 7C 1E 02 14 */	add r0, r30, r0
/* 813E4088 | 7C 60 FA 14 */	add r3, r0, r31
/* 813E408C | A0 03 00 F4 */	lhz r0, 0xf4(r3)
/* 813E4090 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E4094 | 41 82 00 1C */	beq .L_813E40B0
/* 813E4098 | 4B F5 19 55 */	bl getLanguage__Q23ipl6SystemFv
/* 813E409C | 1C 03 00 54 */	mulli r0, r3, 0x54
/* 813E40A0 | 7C 1E 02 14 */	add r0, r30, r0
/* 813E40A4 | 7C 60 FA 14 */	add r3, r0, r31
/* 813E40A8 | 38 63 00 F4 */	addi r3, r3, 0xf4
/* 813E40AC | 48 00 00 78 */	b .L_813E4124
.L_813E40B0:
/* 813E40B0 | 4B F5 19 DD */	bl getRegion__Q23ipl6SystemFv
/* 813E40B4 | 3C 80 81 61 */	lis r4, lbl_81610608@ha
/* 813E40B8 | 54 63 30 32 */	slwi r3, r3, 6
/* 813E40BC | 38 84 06 08 */	addi r4, r4, lbl_81610608@l
/* 813E40C0 | 38 00 00 10 */	li r0, 0x10
/* 813E40C4 | 7D 04 1A 14 */	add r8, r4, r3
/* 813E40C8 | 7C DE FA 14 */	add r6, r30, r31
/* 813E40CC | 38 60 00 00 */	li r3, 0x0
/* 813E40D0 | 7C 09 03 A6 */	mtctr r0
.L_813E40D4:
/* 813E40D4 | 7C E8 18 2E */	lwzx r7, r8, r3
/* 813E40D8 | 1C A7 00 54 */	mulli r5, r7, 0x54
/* 813E40DC | 7C 86 2A 14 */	add r4, r6, r5
/* 813E40E0 | A0 04 00 F4 */	lhz r0, 0xf4(r4)
/* 813E40E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E40E8 | 41 82 00 14 */	beq .L_813E40FC
/* 813E40EC | 7C 1E 2A 14 */	add r0, r30, r5
/* 813E40F0 | 7C 60 FA 14 */	add r3, r0, r31
/* 813E40F4 | 38 63 00 F4 */	addi r3, r3, 0xf4
/* 813E40F8 | 48 00 00 2C */	b .L_813E4124
.L_813E40FC:
/* 813E40FC | 3C 07 00 01 */	addis r0, r7, 0x1
/* 813E4100 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 813E4104 | 41 82 00 0C */	beq .L_813E4110
/* 813E4108 | 38 63 00 04 */	addi r3, r3, 0x4
/* 813E410C | 42 00 FF C8 */	bdnz .L_813E40D4
.L_813E4110:
/* 813E4110 | 80 08 00 00 */	lwz r0, 0x0(r8)
/* 813E4114 | 1C 00 00 54 */	mulli r0, r0, 0x54
/* 813E4118 | 7C 1E 02 14 */	add r0, r30, r0
/* 813E411C | 7C 60 FA 14 */	add r3, r0, r31
/* 813E4120 | 38 63 00 F4 */	addi r3, r3, 0xf4
.L_813E4124:
/* 813E4124 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E4128 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E412C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813E4130 | 7C 08 03 A6 */	mtlr r0
/* 813E4134 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E4138 | 4E 80 00 20 */	blr
.endfn iplSDChannelObj_813E4060

# .text:0x1210 | 0x813E413C | size: 0x2D4
.fn iplSDChannelObj_813E413C, global
/* 813E413C | 94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 813E4140 | 7C 08 02 A6 */	mflr r0
/* 813E4144 | 90 01 00 A4 */	stw r0, 0xa4(r1)
/* 813E4148 | DB E1 00 90 */	stfd f31, 0x90(r1)
/* 813E414C | F3 E1 00 98 */	psq_st f31, 0x98(r1), 0, qr0
/* 813E4150 | DB C1 00 80 */	stfd f30, 0x80(r1)
/* 813E4154 | F3 C1 00 88 */	psq_st f30, 0x88(r1), 0, qr0
/* 813E4158 | 39 61 00 80 */	addi r11, r1, 0x80
/* 813E415C | 48 21 53 59 */	bl _savegpr_24
/* 813E4160 | 80 A3 00 4C */	lwz r5, 0x4c(r3)
/* 813E4164 | 7C 7F 1B 78 */	mr r31, r3
/* 813E4168 | 7C 98 23 78 */	mr r24, r4
/* 813E416C | 80 8D 8D 94 */	lwz r4, lbl_81696DD4@sda21(r0)
/* 813E4170 | 80 65 00 14 */	lwz r3, 0x14(r5)
/* 813E4174 | 38 A0 00 01 */	li r5, 0x1
/* 813E4178 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E417C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813E4180 | 7D 89 03 A6 */	mtctr r12
/* 813E4184 | 4E 80 04 21 */	bctrl
/* 813E4188 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E418C | 7C 7A 1B 78 */	mr r26, r3
/* 813E4190 | 3B 6D AF 78 */	li r27, lbl_81698FB8@sda21
/* 813E4194 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813E4198 | 7D 89 03 A6 */	mtctr r12
/* 813E419C | 4E 80 04 21 */	bctrl
/* 813E41A0 | 48 00 00 18 */	b .L_813E41B8
.L_813E41A4:
/* 813E41A4 | 7C 03 D8 40 */	cmplw r3, r27
/* 813E41A8 | 40 82 00 0C */	bne .L_813E41B4
/* 813E41AC | 38 00 00 01 */	li r0, 0x1
/* 813E41B0 | 48 00 00 14 */	b .L_813E41C4
.L_813E41B4:
/* 813E41B4 | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_813E41B8:
/* 813E41B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E41BC | 40 82 FF E8 */	bne .L_813E41A4
/* 813E41C0 | 38 00 00 00 */	li r0, 0x0
.L_813E41C4:
/* 813E41C4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E41C8 | 41 82 00 08 */	beq .L_813E41D0
/* 813E41CC | 48 00 00 08 */	b .L_813E41D4
.L_813E41D0:
/* 813E41D0 | 3B 40 00 00 */	li r26, 0x0
.L_813E41D4:
/* 813E41D4 | 38 00 00 0B */	li r0, 0xb
/* 813E41D8 | 38 81 00 2E */	addi r4, r1, 0x2e
/* 813E41DC | 38 60 00 00 */	li r3, 0x0
/* 813E41E0 | 7C 09 03 A6 */	mtctr r0
.L_813E41E4:
/* 813E41E4 | B0 64 00 02 */	sth r3, 0x2(r4)
/* 813E41E8 | B4 64 00 04 */	sthu r3, 0x4(r4)
/* 813E41EC | 42 00 FF F8 */	bdnz .L_813E41E4
/* 813E41F0 | B0 64 00 02 */	sth r3, 0x2(r4)
/* 813E41F4 | 7F 04 C3 78 */	mr r4, r24
/* 813E41F8 | 38 61 00 30 */	addi r3, r1, 0x30
/* 813E41FC | 38 A0 00 14 */	li r5, 0x14
/* 813E4200 | 48 22 44 E5 */	bl fn_816086E4
/* 813E4204 | 38 61 00 30 */	addi r3, r1, 0x30
/* 813E4208 | 48 22 44 A5 */	bl fn_816086AC
/* 813E420C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E4210 | C3 C2 87 24 */	lfs f30, lbl_81694B24@sda21(r0)
/* 813E4214 | 3B 20 00 00 */	li r25, 0x0
/* 813E4218 | 40 82 00 28 */	bne .L_813E4240
/* 813E421C | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 813E4220 | 7F 43 D3 78 */	mr r3, r26
/* 813E4224 | 38 81 00 30 */	addi r4, r1, 0x30
/* 813E4228 | 38 A0 00 00 */	li r5, 0x0
/* 813E422C | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 813E4230 | 38 C0 00 01 */	li r6, 0x1
/* 813E4234 | 7D 89 03 A6 */	mtctr r12
/* 813E4238 | 4E 80 04 21 */	bctrl
/* 813E423C | 48 00 00 E0 */	b .L_813E431C
.L_813E4240:
/* 813E4240 | C3 E2 87 30 */	lfs f31, lbl_81694B30@sda21(r0)
/* 813E4244 | 7C 78 1B 78 */	mr r24, r3
/* 813E4248 | 54 7E 08 3C */	slwi r30, r3, 1
/* 813E424C | 3B 80 00 00 */	li r28, 0x0
/* 813E4250 | 3B A0 00 2E */	li r29, 0x2e
/* 813E4254 | 3B 60 20 26 */	li r27, 0x2026
/* 813E4258 | 48 00 00 BC */	b .L_813E4314
.L_813E425C:
/* 813E425C | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 813E4260 | 7C 18 CA 14 */	add r0, r24, r25
/* 813E4264 | 7F 43 D3 78 */	mr r3, r26
/* 813E4268 | 38 81 00 30 */	addi r4, r1, 0x30
/* 813E426C | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 813E4270 | 54 06 04 3E */	clrlwi r6, r0, 16
/* 813E4274 | 38 A0 00 00 */	li r5, 0x0
/* 813E4278 | 7D 89 03 A6 */	mtctr r12
/* 813E427C | 4E 80 04 21 */	bctrl
/* 813E4280 | 81 9A 00 00 */	lwz r12, 0x0(r26)
/* 813E4284 | 7F 43 D3 78 */	mr r3, r26
/* 813E4288 | 80 9F 00 4C */	lwz r4, 0x4c(r31)
/* 813E428C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813E4290 | 38 84 02 98 */	addi r4, r4, 0x298
/* 813E4294 | 7D 89 03 A6 */	mtctr r12
/* 813E4298 | 4E 80 04 21 */	bctrl
/* 813E429C | 80 BF 00 4C */	lwz r5, 0x4c(r31)
/* 813E42A0 | 7F 44 D3 78 */	mr r4, r26
/* 813E42A4 | 38 61 00 20 */	addi r3, r1, 0x20
/* 813E42A8 | 38 A5 02 98 */	addi r5, r5, 0x298
/* 813E42AC | 48 13 DA 49 */	bl fn_81521CF4
/* 813E42B0 | C0 41 00 28 */	lfs f2, 0x28(r1)
/* 813E42B4 | EC 1F F0 2A */	fadds f0, f31, f30
/* 813E42B8 | C0 21 00 20 */	lfs f1, 0x20(r1)
/* 813E42BC | EC 22 08 28 */	fsubs f1, f2, f1
/* 813E42C0 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 813E42C4 | 4C 40 13 82 */	cror eq, lt, eq
/* 813E42C8 | 41 82 00 54 */	beq .L_813E431C
/* 813E42CC | 4B F5 17 C1 */	bl getRegion__Q23ipl6SystemFv
/* 813E42D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E42D4 | 40 82 00 18 */	bne .L_813E42EC
/* 813E42D8 | 38 61 00 30 */	addi r3, r1, 0x30
/* 813E42DC | 7C 63 F2 14 */	add r3, r3, r30
/* 813E42E0 | B3 83 FF FE */	sth r28, -0x2(r3)
/* 813E42E4 | B3 63 FF FC */	sth r27, -0x4(r3)
/* 813E42E8 | 48 00 00 24 */	b .L_813E430C
.L_813E42EC:
/* 813E42EC | 38 61 00 30 */	addi r3, r1, 0x30
/* 813E42F0 | C3 C2 87 34 */	lfs f30, lbl_81694B34@sda21(r0)
/* 813E42F4 | 7C 63 F2 14 */	add r3, r3, r30
/* 813E42F8 | 3B 20 00 02 */	li r25, 0x2
/* 813E42FC | B3 83 00 02 */	sth r28, 0x2(r3)
/* 813E4300 | B3 A3 00 00 */	sth r29, 0x0(r3)
/* 813E4304 | B3 A3 FF FE */	sth r29, -0x2(r3)
/* 813E4308 | B3 A3 FF FC */	sth r29, -0x4(r3)
.L_813E430C:
/* 813E430C | 3B 18 FF FF */	subi r24, r24, 0x1
/* 813E4310 | 3B DE FF FE */	subi r30, r30, 0x2
.L_813E4314:
/* 813E4314 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 813E4318 | 40 82 FF 44 */	bne .L_813E425C
.L_813E431C:
/* 813E431C | 80 BF 00 4C */	lwz r5, 0x4c(r31)
/* 813E4320 | 7F 44 D3 78 */	mr r4, r26
/* 813E4324 | 38 61 00 10 */	addi r3, r1, 0x10
/* 813E4328 | 38 A5 02 98 */	addi r5, r5, 0x298
/* 813E432C | 48 13 D9 C9 */	bl fn_81521CF4
/* 813E4330 | 80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 813E4334 | 38 A0 00 01 */	li r5, 0x1
/* 813E4338 | 80 8D 8D A0 */	lwz r4, lbl_81696DE0@sda21(r0)
/* 813E433C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813E4340 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E4344 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813E4348 | 7D 89 03 A6 */	mtctr r12
/* 813E434C | 4E 80 04 21 */	bctrl
/* 813E4350 | C0 21 00 18 */	lfs f1, 0x18(r1)
/* 813E4354 | C0 01 00 10 */	lfs f0, 0x10(r1)
/* 813E4358 | C0 63 00 4C */	lfs f3, 0x4c(r3)
/* 813E435C | EC 41 00 28 */	fsubs f2, f1, f0
/* 813E4360 | C0 02 87 38 */	lfs f0, lbl_81694B38@sda21(r0)
/* 813E4364 | D0 61 00 08 */	stfs f3, 0x8(r1)
/* 813E4368 | C0 22 87 3C */	lfs f1, lbl_81694B3C@sda21(r0)
/* 813E436C | C0 63 00 50 */	lfs f3, 0x50(r3)
/* 813E4370 | EC 40 10 2A */	fadds f2, f0, f2
/* 813E4374 | D0 61 00 0C */	stfs f3, 0xc(r1)
/* 813E4378 | D0 41 00 08 */	stfs f2, 0x8(r1)
/* 813E437C | C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 813E4380 | EC 01 00 32 */	fmuls f0, f1, f0
/* 813E4384 | FC 02 00 40 */	fcmpo cr0, f2, f0
/* 813E4388 | 40 80 00 08 */	bge .L_813E4390
/* 813E438C | D0 01 00 08 */	stfs f0, 0x8(r1)
.L_813E4390:
/* 813E4390 | 80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 813E4394 | 38 A0 00 01 */	li r5, 0x1
/* 813E4398 | 80 8D 8D AC */	lwz r4, lbl_81696DEC@sda21(r0)
/* 813E439C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813E43A0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E43A4 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813E43A8 | 7D 89 03 A6 */	mtctr r12
/* 813E43AC | 4E 80 04 21 */	bctrl
/* 813E43B0 | 38 63 00 4C */	addi r3, r3, 0x4c
/* 813E43B4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813E43B8 | 4B FC F3 9D */	bl __as__Q34nw4r3lyt4SizeFRCQ34nw4r3lyt4Size
/* 813E43BC | 80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 813E43C0 | 38 A0 00 01 */	li r5, 0x1
/* 813E43C4 | 80 8D 8D A0 */	lwz r4, lbl_81696DE0@sda21(r0)
/* 813E43C8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813E43CC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E43D0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813E43D4 | 7D 89 03 A6 */	mtctr r12
/* 813E43D8 | 4E 80 04 21 */	bctrl
/* 813E43DC | 38 63 00 4C */	addi r3, r3, 0x4c
/* 813E43E0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813E43E4 | 4B FC F3 71 */	bl __as__Q34nw4r3lyt4SizeFRCQ34nw4r3lyt4Size
/* 813E43E8 | E3 E1 00 98 */	psq_l f31, 0x98(r1), 0, qr0
/* 813E43EC | CB E1 00 90 */	lfd f31, 0x90(r1)
/* 813E43F0 | E3 C1 00 88 */	psq_l f30, 0x88(r1), 0, qr0
/* 813E43F4 | 39 61 00 80 */	addi r11, r1, 0x80
/* 813E43F8 | CB C1 00 80 */	lfd f30, 0x80(r1)
/* 813E43FC | 48 21 51 05 */	bl _restgpr_24
/* 813E4400 | 80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 813E4404 | 7C 08 03 A6 */	mtlr r0
/* 813E4408 | 38 21 00 A0 */	addi r1, r1, 0xa0
/* 813E440C | 4E 80 00 20 */	blr
.endfn iplSDChannelObj_813E413C

# .text:0x14E4 | 0x813E4410 | size: 0x148
.fn iplSDChannelObj_813E4410, global
/* 813E4410 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 813E4414 | 7C 08 02 A6 */	mflr r0
/* 813E4418 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 813E441C | DB E1 00 40 */	stfd f31, 0x40(r1)
/* 813E4420 | F3 E1 00 48 */	psq_st f31, 0x48(r1), 0, qr0
/* 813E4424 | 93 E1 00 3C */	stw r31, 0x3c(r1)
/* 813E4428 | 7C 9F 23 78 */	mr r31, r4
/* 813E442C | 93 C1 00 38 */	stw r30, 0x38(r1)
/* 813E4430 | 7C 7E 1B 78 */	mr r30, r3
/* 813E4434 | 80 03 00 4C */	lwz r0, 0x4c(r3)
/* 813E4438 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E443C | 41 82 00 FC */	beq .L_813E4538
/* 813E4440 | C0 02 87 24 */	lfs f0, lbl_81694B24@sda21(r0)
/* 813E4444 | 38 A0 00 01 */	li r5, 0x1
/* 813E4448 | 80 8D 8D A0 */	lwz r4, lbl_81696DE0@sda21(r0)
/* 813E444C | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 813E4450 | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 813E4454 | 80 63 00 4C */	lwz r3, 0x4c(r3)
/* 813E4458 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813E445C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E4460 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813E4464 | 7D 89 03 A6 */	mtctr r12
/* 813E4468 | 4E 80 04 21 */	bctrl
/* 813E446C | 7C 64 1B 78 */	mr r4, r3
/* 813E4470 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813E4474 | 38 84 00 4C */	addi r4, r4, 0x4c
/* 813E4478 | 4B FC F2 DD */	bl __as__Q34nw4r3lyt4SizeFRCQ34nw4r3lyt4Size
/* 813E447C | C0 21 00 0C */	lfs f1, 0xc(r1)
/* 813E4480 | 38 61 00 1C */	addi r3, r1, 0x1c
/* 813E4484 | C0 02 87 44 */	lfs f0, lbl_81694B44@sda21(r0)
/* 813E4488 | C0 5E 00 7C */	lfs f2, 0x7c(r30)
/* 813E448C | EC 61 00 32 */	fmuls f3, f1, f0
/* 813E4490 | C0 22 87 40 */	lfs f1, lbl_81694B40@sda21(r0)
/* 813E4494 | C0 02 87 48 */	lfs f0, lbl_81694B48@sda21(r0)
/* 813E4498 | EC 43 10 2A */	fadds f2, f3, f2
/* 813E449C | EF E1 10 2A */	fadds f31, f1, f2
/* 813E44A0 | EF FF 00 32 */	fmuls f31, f31, f0
/* 813E44A4 | 4B F5 1F 85 */	bl __ct__Q34nw4r2ut4RectFv
/* 813E44A8 | 38 61 00 1C */	addi r3, r1, 0x1c
/* 813E44AC | 4B F5 14 6D */	bl getProjectionRect__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813E44B0 | C0 21 00 08 */	lfs f1, 0x8(r1)
/* 813E44B4 | C0 02 87 44 */	lfs f0, lbl_81694B44@sda21(r0)
/* 813E44B8 | C0 5F 00 00 */	lfs f2, 0x0(r31)
/* 813E44BC | EC A1 00 32 */	fmuls f5, f1, f0
/* 813E44C0 | C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 813E44C4 | C0 21 00 24 */	lfs f1, 0x24(r1)
/* 813E44C8 | C0 02 87 4C */	lfs f0, lbl_81694B4C@sda21(r0)
/* 813E44CC | EC 82 28 28 */	fsubs f4, f2, f5
/* 813E44D0 | C0 C2 87 24 */	lfs f6, lbl_81694B24@sda21(r0)
/* 813E44D4 | EC 42 28 2A */	fadds f2, f2, f5
/* 813E44D8 | EC 64 18 28 */	fsubs f3, f4, f3
/* 813E44DC | EC 21 10 28 */	fsubs f1, f1, f2
/* 813E44E0 | FC 03 00 40 */	fcmpo cr0, f3, f0
/* 813E44E4 | 40 80 00 0C */	bge .L_813E44F0
/* 813E44E8 | EC C0 18 28 */	fsubs f6, f0, f3
/* 813E44EC | 48 00 00 10 */	b .L_813E44FC
.L_813E44F0:
/* 813E44F0 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 813E44F4 | 40 80 00 08 */	bge .L_813E44FC
/* 813E44F8 | EC C1 00 28 */	fsubs f6, f1, f0
.L_813E44FC:
/* 813E44FC | C0 3F 00 00 */	lfs f1, 0x0(r31)
/* 813E4500 | 38 61 00 10 */	addi r3, r1, 0x10
/* 813E4504 | C0 1F 00 04 */	lfs f0, 0x4(r31)
/* 813E4508 | EC 21 30 2A */	fadds f1, f1, f6
/* 813E450C | C0 62 87 24 */	lfs f3, lbl_81694B24@sda21(r0)
/* 813E4510 | EC 40 F8 2A */	fadds f2, f0, f31
/* 813E4514 | 4B F9 03 71 */	bl __ct__Q34nw4r4math4VEC3Ffff
/* 813E4518 | 80 7E 00 4C */	lwz r3, 0x4c(r30)
/* 813E451C | 38 81 00 10 */	addi r4, r1, 0x10
/* 813E4520 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813E4524 | 4B F9 E1 AD */	bl SetTranslate__Q34nw4r3lyt4PaneFRCQ34nw4r4math4VEC3
/* 813E4528 | 7F C3 F3 78 */	mr r3, r30
/* 813E452C | 48 00 01 D9 */	bl iplSDChannelObj_813E4704
/* 813E4530 | 80 7E 00 4C */	lwz r3, 0x4c(r30)
/* 813E4534 | 4B F8 61 D1 */	bl calc__Q33ipl6layout6ObjectFv
.L_813E4538:
/* 813E4538 | E3 E1 00 48 */	psq_l f31, 0x48(r1), 0, qr0
/* 813E453C | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 813E4540 | CB E1 00 40 */	lfd f31, 0x40(r1)
/* 813E4544 | 83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 813E4548 | 83 C1 00 38 */	lwz r30, 0x38(r1)
/* 813E454C | 7C 08 03 A6 */	mtlr r0
/* 813E4550 | 38 21 00 50 */	addi r1, r1, 0x50
/* 813E4554 | 4E 80 00 20 */	blr
.endfn iplSDChannelObj_813E4410

# .text:0x162C | 0x813E4558 | size: 0x1AC
.fn iplSDChannelObj_813E4558, global
/* 813E4558 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E455C | 7C 08 02 A6 */	mflr r0
/* 813E4560 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E4564 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E4568 | 7C 7F 1B 78 */	mr r31, r3
/* 813E456C | 80 A3 00 4C */	lwz r5, 0x4c(r3)
/* 813E4570 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813E4574 | 41 82 01 7C */	beq .L_813E46F0
/* 813E4578 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813E457C | 40 82 00 34 */	bne .L_813E45B0
/* 813E4580 | 38 00 00 00 */	li r0, 0x0
/* 813E4584 | C0 22 87 24 */	lfs f1, lbl_81694B24@sda21(r0)
/* 813E4588 | 90 03 00 54 */	stw r0, 0x54(r3)
/* 813E458C | 38 80 FF FF */	li r4, -0x1
/* 813E4590 | 90 03 00 58 */	stw r0, 0x58(r3)
/* 813E4594 | 7C A3 2B 78 */	mr r3, r5
/* 813E4598 | 4B F8 64 59 */	bl setMinFrame__Q33ipl6layout6ObjectFfi
/* 813E459C | 80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 813E45A0 | 38 80 00 00 */	li r4, 0x0
/* 813E45A4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813E45A8 | 4B F5 FE 6D */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813E45AC | 48 00 01 44 */	b .L_813E46F0
.L_813E45B0:
/* 813E45B0 | 80 03 00 54 */	lwz r0, 0x54(r3)
/* 813E45B4 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813E45B8 | 41 82 00 A8 */	beq .L_813E4660
/* 813E45BC | 40 80 00 14 */	bge .L_813E45D0
/* 813E45C0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E45C4 | 41 82 00 1C */	beq .L_813E45E0
/* 813E45C8 | 40 80 00 34 */	bge .L_813E45FC
/* 813E45CC | 48 00 01 24 */	b .L_813E46F0
.L_813E45D0:
/* 813E45D0 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813E45D4 | 41 82 00 F8 */	beq .L_813E46CC
/* 813E45D8 | 40 80 01 18 */	bge .L_813E46F0
/* 813E45DC | 48 00 00 C0 */	b .L_813E469C
.L_813E45E0:
/* 813E45E0 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 813E45E4 | 40 82 01 0C */	bne .L_813E46F0
/* 813E45E8 | 38 80 00 00 */	li r4, 0x0
/* 813E45EC | 38 00 00 01 */	li r0, 0x1
/* 813E45F0 | 90 83 00 5C */	stw r4, 0x5c(r3)
/* 813E45F4 | 90 03 00 54 */	stw r0, 0x54(r3)
/* 813E45F8 | 48 00 00 F8 */	b .L_813E46F0
.L_813E45FC:
/* 813E45FC | 2C 04 00 02 */	cmpwi r4, 0x2
/* 813E4600 | 40 82 00 4C */	bne .L_813E464C
/* 813E4604 | 38 00 00 02 */	li r0, 0x2
/* 813E4608 | 38 80 00 01 */	li r4, 0x1
/* 813E460C | 90 03 00 54 */	stw r0, 0x54(r3)
/* 813E4610 | 80 65 00 14 */	lwz r3, 0x14(r5)
/* 813E4614 | 4B F5 FE 01 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813E4618 | 80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 813E461C | 38 80 00 00 */	li r4, 0x0
/* 813E4620 | 38 A0 FF FF */	li r5, -0x1
/* 813E4624 | 4B F8 64 3D */	bl setAnmType__Q33ipl6layout6ObjectFii
/* 813E4628 | 80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 813E462C | 38 80 FF FF */	li r4, -0x1
/* 813E4630 | 4B F8 62 C9 */	bl start__Q33ipl6layout6ObjectFi
/* 813E4634 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813E4638 | 3C 80 81 65 */	lis r4, lbl_81654F74@ha
/* 813E463C | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813E4640 | 38 84 4F 74 */	addi r4, r4, lbl_81654F74@l
/* 813E4644 | 4B F8 6E 29 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813E4648 | 48 00 00 A8 */	b .L_813E46F0
.L_813E464C:
/* 813E464C | 2C 04 00 04 */	cmpwi r4, 0x4
/* 813E4650 | 40 82 00 A0 */	bne .L_813E46F0
/* 813E4654 | 38 00 00 00 */	li r0, 0x0
/* 813E4658 | 90 03 00 54 */	stw r0, 0x54(r3)
/* 813E465C | 48 00 00 94 */	b .L_813E46F0
.L_813E4660:
/* 813E4660 | 2C 04 00 03 */	cmpwi r4, 0x3
/* 813E4664 | 40 82 00 10 */	bne .L_813E4674
/* 813E4668 | 38 00 00 03 */	li r0, 0x3
/* 813E466C | 90 03 00 54 */	stw r0, 0x54(r3)
/* 813E4670 | 48 00 00 80 */	b .L_813E46F0
.L_813E4674:
/* 813E4674 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 813E4678 | 40 82 00 10 */	bne .L_813E4688
/* 813E467C | 38 00 00 04 */	li r0, 0x4
/* 813E4680 | 90 03 00 58 */	stw r0, 0x58(r3)
/* 813E4684 | 48 00 00 6C */	b .L_813E46F0
.L_813E4688:
/* 813E4688 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 813E468C | 40 82 00 64 */	bne .L_813E46F0
/* 813E4690 | 38 00 00 00 */	li r0, 0x0
/* 813E4694 | 90 03 00 58 */	stw r0, 0x58(r3)
/* 813E4698 | 48 00 00 58 */	b .L_813E46F0
.L_813E469C:
/* 813E469C | 2C 04 00 04 */	cmpwi r4, 0x4
/* 813E46A0 | 40 82 00 50 */	bne .L_813E46F0
/* 813E46A4 | 38 00 00 04 */	li r0, 0x4
/* 813E46A8 | 38 80 00 01 */	li r4, 0x1
/* 813E46AC | 90 03 00 54 */	stw r0, 0x54(r3)
/* 813E46B0 | 7C A3 2B 78 */	mr r3, r5
/* 813E46B4 | 38 A0 FF FF */	li r5, -0x1
/* 813E46B8 | 4B F8 63 A9 */	bl setAnmType__Q33ipl6layout6ObjectFii
/* 813E46BC | 80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 813E46C0 | 38 80 FF FF */	li r4, -0x1
/* 813E46C4 | 4B F8 62 35 */	bl start__Q33ipl6layout6ObjectFi
/* 813E46C8 | 48 00 00 28 */	b .L_813E46F0
.L_813E46CC:
/* 813E46CC | 2C 04 00 01 */	cmpwi r4, 0x1
/* 813E46D0 | 40 82 00 10 */	bne .L_813E46E0
/* 813E46D4 | 38 00 00 01 */	li r0, 0x1
/* 813E46D8 | 90 03 00 58 */	stw r0, 0x58(r3)
/* 813E46DC | 48 00 00 14 */	b .L_813E46F0
.L_813E46E0:
/* 813E46E0 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 813E46E4 | 40 82 00 0C */	bne .L_813E46F0
/* 813E46E8 | 38 00 00 00 */	li r0, 0x0
/* 813E46EC | 90 03 00 58 */	stw r0, 0x58(r3)
.L_813E46F0:
/* 813E46F0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E46F4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E46F8 | 7C 08 03 A6 */	mtlr r0
/* 813E46FC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E4700 | 4E 80 00 20 */	blr
.endfn iplSDChannelObj_813E4558

# .text:0x17D8 | 0x813E4704 | size: 0x118
.fn iplSDChannelObj_813E4704, global
/* 813E4704 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813E4708 | 7C 08 02 A6 */	mflr r0
/* 813E470C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813E4710 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813E4714 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 813E4718 | 7C 7E 1B 78 */	mr r30, r3
/* 813E471C | 80 03 00 54 */	lwz r0, 0x54(r3)
/* 813E4720 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813E4724 | 41 82 00 E0 */	beq .L_813E4804
/* 813E4728 | 40 80 00 14 */	bge .L_813E473C
/* 813E472C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E4730 | 41 82 00 18 */	beq .L_813E4748
/* 813E4734 | 40 80 00 54 */	bge .L_813E4788
/* 813E4738 | 48 00 00 CC */	b .L_813E4804
.L_813E473C:
/* 813E473C | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813E4740 | 40 80 00 C4 */	bge .L_813E4804
/* 813E4744 | 48 00 00 88 */	b .L_813E47CC
.L_813E4748:
/* 813E4748 | 80 83 00 5C */	lwz r4, 0x5c(r3)
/* 813E474C | 3C 00 43 30 */	lis r0, 0x4330
/* 813E4750 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 813E4754 | 38 04 00 01 */	addi r0, r4, 0x1
/* 813E4758 | C8 42 87 58 */	lfd f2, lbl_81694B58@sda21(r0)
/* 813E475C | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813E4760 | C0 02 87 50 */	lfs f0, lbl_81694B50@sda21(r0)
/* 813E4764 | C8 21 00 08 */	lfd f1, 0x8(r1)
/* 813E4768 | 90 03 00 5C */	stw r0, 0x5c(r3)
/* 813E476C | EC 21 10 28 */	fsubs f1, f1, f2
/* 813E4770 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 813E4774 | 4C 41 13 82 */	cror eq, gt, eq
/* 813E4778 | 40 82 00 8C */	bne .L_813E4804
/* 813E477C | 38 80 00 02 */	li r4, 0x2
/* 813E4780 | 4B FF FD D9 */	bl iplSDChannelObj_813E4558
/* 813E4784 | 48 00 00 80 */	b .L_813E4804
.L_813E4788:
/* 813E4788 | 80 63 00 4C */	lwz r3, 0x4c(r3)
/* 813E478C | 38 80 00 00 */	li r4, 0x0
/* 813E4790 | 4B F8 63 41 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813E4794 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E4798 | 40 82 00 6C */	bne .L_813E4804
/* 813E479C | 83 FE 00 58 */	lwz r31, 0x58(r30)
/* 813E47A0 | 7F C3 F3 78 */	mr r3, r30
/* 813E47A4 | 38 80 00 03 */	li r4, 0x3
/* 813E47A8 | 4B FF FD B1 */	bl iplSDChannelObj_813E4558
/* 813E47AC | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 813E47B0 | 40 82 00 54 */	bne .L_813E4804
/* 813E47B4 | 7F C3 F3 78 */	mr r3, r30
/* 813E47B8 | 38 80 00 04 */	li r4, 0x4
/* 813E47BC | 4B FF FD 9D */	bl iplSDChannelObj_813E4558
/* 813E47C0 | 38 00 00 00 */	li r0, 0x0
/* 813E47C4 | 90 1E 00 58 */	stw r0, 0x58(r30)
/* 813E47C8 | 48 00 00 3C */	b .L_813E4804
.L_813E47CC:
/* 813E47CC | 80 63 00 4C */	lwz r3, 0x4c(r3)
/* 813E47D0 | 38 80 00 00 */	li r4, 0x0
/* 813E47D4 | 4B F8 62 FD */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 813E47D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E47DC | 40 82 00 28 */	bne .L_813E4804
/* 813E47E0 | 83 FE 00 58 */	lwz r31, 0x58(r30)
/* 813E47E4 | 7F C3 F3 78 */	mr r3, r30
/* 813E47E8 | 38 80 00 00 */	li r4, 0x0
/* 813E47EC | 4B FF FD 6D */	bl iplSDChannelObj_813E4558
/* 813E47F0 | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 813E47F4 | 40 82 00 10 */	bne .L_813E4804
/* 813E47F8 | 7F C3 F3 78 */	mr r3, r30
/* 813E47FC | 38 80 00 01 */	li r4, 0x1
/* 813E4800 | 4B FF FD 59 */	bl iplSDChannelObj_813E4558
.L_813E4804:
/* 813E4804 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E4808 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813E480C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 813E4810 | 7C 08 03 A6 */	mtlr r0
/* 813E4814 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813E4818 | 4E 80 00 20 */	blr
.endfn iplSDChannelObj_813E4704

# .text:0x18F0 | 0x813E481C | size: 0x18C
.fn iplSDChannelObj_813E481C, global
/* 813E481C | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813E4820 | 7C 08 02 A6 */	mflr r0
/* 813E4824 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813E4828 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813E482C | 48 21 4C 91 */	bl _savegpr_26
/* 813E4830 | 7C 7A 1B 78 */	mr r26, r3
/* 813E4834 | 3F C0 81 65 */	lis r30, lbl_81654B38@ha
/* 813E4838 | 80 64 00 18 */	lwz r3, 0x18(r4)
/* 813E483C | 7C 9B 23 78 */	mr r27, r4
/* 813E4840 | 3B DE 4B 38 */	addi r30, r30, lbl_81654B38@l
/* 813E4844 | 38 8D 8D E0 */	li r4, lbl_81696E20@sda21
/* 813E4848 | 48 13 B5 F5 */	bl fn_8151FE3C
/* 813E484C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E4850 | 7C 7C 1B 78 */	mr r28, r3
/* 813E4854 | 41 82 00 0C */	beq .L_813E4860
/* 813E4858 | 90 7A 00 64 */	stw r3, 0x64(r26)
/* 813E485C | 48 00 00 9C */	b .L_813E48F8
.L_813E4860:
/* 813E4860 | 4B F5 11 8D */	bl getLanguage__Q23ipl6SystemFv
/* 813E4864 | 54 60 10 3A */	slwi r0, r3, 2
/* 813E4868 | 38 7E 00 70 */	addi r3, r30, 0x70
/* 813E486C | 7C A3 00 2E */	lwzx r5, r3, r0
/* 813E4870 | 38 61 00 14 */	addi r3, r1, 0x14
/* 813E4874 | 38 8D 8D E4 */	li r4, lbl_81696E24@sda21
/* 813E4878 | 4C C6 31 82 */	crclr cr1eq
/* 813E487C | 48 21 C2 05 */	bl sprintf
/* 813E4880 | 80 7B 00 18 */	lwz r3, 0x18(r27)
/* 813E4884 | 38 81 00 14 */	addi r4, r1, 0x14
/* 813E4888 | 48 13 B5 B5 */	bl fn_8151FE3C
/* 813E488C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E4890 | 7C 7C 1B 78 */	mr r28, r3
/* 813E4894 | 41 82 00 0C */	beq .L_813E48A0
/* 813E4898 | 90 7A 00 64 */	stw r3, 0x64(r26)
/* 813E489C | 48 00 00 5C */	b .L_813E48F8
.L_813E48A0:
/* 813E48A0 | 4B F5 11 ED */	bl getRegion__Q23ipl6SystemFv
/* 813E48A4 | 54 63 30 32 */	slwi r3, r3, 6
/* 813E48A8 | 38 1E 00 98 */	addi r0, r30, 0x98
/* 813E48AC | 7F A0 1A 14 */	add r29, r0, r3
/* 813E48B0 | 3B E0 00 00 */	li r31, 0x0
/* 813E48B4 | 48 00 00 38 */	b .L_813E48EC
.L_813E48B8:
/* 813E48B8 | 38 61 00 14 */	addi r3, r1, 0x14
/* 813E48BC | 38 8D 8D E4 */	li r4, lbl_81696E24@sda21
/* 813E48C0 | 4C C6 31 82 */	crclr cr1eq
/* 813E48C4 | 48 21 C1 BD */	bl sprintf
/* 813E48C8 | 80 7B 00 18 */	lwz r3, 0x18(r27)
/* 813E48CC | 38 81 00 14 */	addi r4, r1, 0x14
/* 813E48D0 | 48 13 B5 6D */	bl fn_8151FE3C
/* 813E48D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E48D8 | 7C 7C 1B 78 */	mr r28, r3
/* 813E48DC | 41 82 00 0C */	beq .L_813E48E8
/* 813E48E0 | 90 7A 00 64 */	stw r3, 0x64(r26)
/* 813E48E4 | 48 00 00 14 */	b .L_813E48F8
.L_813E48E8:
/* 813E48E8 | 3B FF 00 04 */	addi r31, r31, 0x4
.L_813E48EC:
/* 813E48EC | 7C BD F8 2E */	lwzx r5, r29, r31
/* 813E48F0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813E48F4 | 40 82 FF C4 */	bne .L_813E48B8
.L_813E48F8:
/* 813E48F8 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 813E48FC | 41 82 00 94 */	beq .L_813E4990
/* 813E4900 | 38 7C 00 0C */	addi r3, r28, 0xc
/* 813E4904 | 4B F8 55 31 */	bl "GetBeginIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"
/* 813E4908 | 90 61 00 10 */	stw r3, 0x10(r1)
/* 813E490C | 48 00 00 2C */	b .L_813E4938
.L_813E4910:
/* 813E4910 | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 813E4914 | 38 80 00 01 */	li r4, 0x1
/* 813E4918 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813E491C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813E4920 | 81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 813E4924 | 7D 89 03 A6 */	mtctr r12
/* 813E4928 | 4E 80 04 21 */	bctrl
/* 813E492C | 38 61 00 10 */	addi r3, r1, 0x10
/* 813E4930 | 38 80 00 00 */	li r4, 0x0
/* 813E4934 | 4B FC DE A1 */	bl "__pp__Q44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8IteratorFi"
.L_813E4938:
/* 813E4938 | 38 7C 00 0C */	addi r3, r28, 0xc
/* 813E493C | 4B F8 55 01 */	bl "GetEndIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"
/* 813E4940 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 813E4944 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813E4948 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 813E494C | 38 61 00 0C */	addi r3, r1, 0xc
/* 813E4950 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813E4954 | 4B F8 54 F1 */	bl "__ne__Q24nw4r2utFQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8IteratorQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8Iterator"
/* 813E4958 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E495C | 40 82 FF B4 */	bne .L_813E4910
/* 813E4960 | 7F 63 DB 78 */	mr r3, r27
/* 813E4964 | 38 9E 04 4C */	addi r4, r30, 0x44c
/* 813E4968 | 4B F8 5D 5D */	bl searchFile__Q33ipl6layout6ObjectFPCc
/* 813E496C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E4970 | 41 82 00 20 */	beq .L_813E4990
/* 813E4974 | 7F 63 DB 78 */	mr r3, r27
/* 813E4978 | 7F 85 E3 78 */	mr r5, r28
/* 813E497C | 38 9E 04 4C */	addi r4, r30, 0x44c
/* 813E4980 | 38 C0 00 01 */	li r6, 0x1
/* 813E4984 | 38 E0 00 01 */	li r7, 0x1
/* 813E4988 | 4B F8 5B B9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPQ34nw4r3lyt5Groupbb
/* 813E498C | 90 7A 00 68 */	stw r3, 0x68(r26)
.L_813E4990:
/* 813E4990 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813E4994 | 48 21 4B 75 */	bl _restgpr_26
/* 813E4998 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 813E499C | 7C 08 03 A6 */	mtlr r0
/* 813E49A0 | 38 21 00 40 */	addi r1, r1, 0x40
/* 813E49A4 | 4E 80 00 20 */	blr
.endfn iplSDChannelObj_813E481C

# .text:0x1A7C | 0x813E49A8 | size: 0xAC
.fn iplSDChannelObj_813E49A8, global
/* 813E49A8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813E49AC | 7C 08 02 A6 */	mflr r0
/* 813E49B0 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813E49B4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813E49B8 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813E49BC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813E49C0 | 7C 7F 1B 78 */	mr r31, r3
/* 813E49C4 | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 813E49C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E49CC | 41 82 00 0C */	beq .L_813E49D8
/* 813E49D0 | 38 00 00 00 */	li r0, 0x0
/* 813E49D4 | 48 00 00 08 */	b .L_813E49DC
.L_813E49D8:
/* 813E49D8 | 80 04 00 8C */	lwz r0, 0x8c(r4)
.L_813E49DC:
/* 813E49DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E49E0 | 41 82 00 60 */	beq .L_813E4A40
/* 813E49E4 | 80 03 00 70 */	lwz r0, 0x70(r3)
/* 813E49E8 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813E49EC | 41 82 00 38 */	beq .L_813E4A24
/* 813E49F0 | 40 80 00 50 */	bge .L_813E4A40
/* 813E49F4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813E49F8 | 40 80 00 08 */	bge .L_813E4A00
/* 813E49FC | 48 00 00 44 */	b .L_813E4A40
.L_813E4A00:
/* 813E4A00 | 7F E3 FB 78 */	mr r3, r31
/* 813E4A04 | 48 00 00 51 */	bl iplSDChannelObj_813E4A54
/* 813E4A08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E4A0C | 41 82 00 34 */	beq .L_813E4A40
/* 813E4A10 | 38 60 00 02 */	li r3, 0x2
/* 813E4A14 | 38 00 00 00 */	li r0, 0x0
/* 813E4A18 | 90 7F 00 70 */	stw r3, 0x70(r31)
/* 813E4A1C | 90 1F 00 74 */	stw r0, 0x74(r31)
/* 813E4A20 | 48 00 00 20 */	b .L_813E4A40
.L_813E4A24:
/* 813E4A24 | 80 83 00 74 */	lwz r4, 0x74(r3)
/* 813E4A28 | 38 04 00 01 */	addi r0, r4, 0x1
/* 813E4A2C | 28 00 10 68 */	cmplwi r0, 0x1068
/* 813E4A30 | 90 03 00 74 */	stw r0, 0x74(r3)
/* 813E4A34 | 41 80 00 0C */	blt .L_813E4A40
/* 813E4A38 | 38 00 00 01 */	li r0, 0x1
/* 813E4A3C | 90 03 00 70 */	stw r0, 0x70(r3)
.L_813E4A40:
/* 813E4A40 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813E4A44 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813E4A48 | 7C 08 03 A6 */	mtlr r0
/* 813E4A4C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813E4A50 | 4E 80 00 20 */	blr
.endfn iplSDChannelObj_813E49A8

# .text:0x1B28 | 0x813E4A54 | size: 0x168
.fn iplSDChannelObj_813E4A54, global
/* 813E4A54 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813E4A58 | 7C 08 02 A6 */	mflr r0
/* 813E4A5C | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813E4A60 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813E4A64 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813E4A68 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813E4A6C | 7C 7F 1B 78 */	mr r31, r3
/* 813E4A70 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 813E4A74 | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 813E4A78 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E4A7C | 41 82 00 0C */	beq .L_813E4A88
/* 813E4A80 | 38 00 00 00 */	li r0, 0x0
/* 813E4A84 | 48 00 00 08 */	b .L_813E4A8C
.L_813E4A88:
/* 813E4A88 | 80 04 00 8C */	lwz r0, 0x8c(r4)
.L_813E4A8C:
/* 813E4A8C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E4A90 | 41 82 00 34 */	beq .L_813E4AC4
/* 813E4A94 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813E4A98 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813E4A9C | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 813E4AA0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E4AA4 | 41 82 00 0C */	beq .L_813E4AB0
/* 813E4AA8 | 38 60 00 00 */	li r3, 0x0
/* 813E4AAC | 48 00 00 08 */	b .L_813E4AB4
.L_813E4AB0:
/* 813E4AB0 | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_813E4AB4:
/* 813E4AB4 | 38 80 00 00 */	li r4, 0x0
/* 813E4AB8 | 4B F5 EE A5 */	bl getNewTitleTbl__Q33ipl5nwc247ManagerCFPUl
/* 813E4ABC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E4AC0 | 40 82 00 0C */	bne .L_813E4ACC
.L_813E4AC4:
/* 813E4AC4 | 38 60 00 00 */	li r3, 0x0
/* 813E4AC8 | 48 00 00 DC */	b .L_813E4BA4
.L_813E4ACC:
/* 813E4ACC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813E4AD0 | 80 BF 00 94 */	lwz r5, 0x94(r31)
/* 813E4AD4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813E4AD8 | 38 80 FF FF */	li r4, -0x1
/* 813E4ADC | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 813E4AE0 | 7C A4 20 38 */	and r4, r5, r4
/* 813E4AE4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E4AE8 | 41 82 00 0C */	beq .L_813E4AF4
/* 813E4AEC | 38 60 00 00 */	li r3, 0x0
/* 813E4AF0 | 48 00 00 08 */	b .L_813E4AF8
.L_813E4AF4:
/* 813E4AF4 | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_813E4AF8:
/* 813E4AF8 | 4B F5 EE D9 */	bl isNewMessageThere__Q33ipl5nwc247ManagerCFUl
/* 813E4AFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E4B00 | 40 82 00 0C */	bne .L_813E4B0C
/* 813E4B04 | 38 60 00 01 */	li r3, 0x1
/* 813E4B08 | 48 00 00 9C */	b .L_813E4BA4
.L_813E4B0C:
/* 813E4B0C | 88 1F 00 6C */	lbz r0, 0x6c(r31)
/* 813E4B10 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813E4B14 | 40 82 00 8C */	bne .L_813E4BA0
/* 813E4B18 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813E4B1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E4B20 | 41 82 00 78 */	beq .L_813E4B98
/* 813E4B24 | 38 63 00 0C */	addi r3, r3, 0xc
/* 813E4B28 | 4B F8 53 0D */	bl "GetBeginIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"
/* 813E4B2C | 90 61 00 10 */	stw r3, 0x10(r1)
/* 813E4B30 | 48 00 00 20 */	b .L_813E4B50
.L_813E4B34:
/* 813E4B34 | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 813E4B38 | 38 80 00 01 */	li r4, 0x1
/* 813E4B3C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813E4B40 | 4B F5 F8 D5 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813E4B44 | 38 61 00 10 */	addi r3, r1, 0x10
/* 813E4B48 | 38 80 00 00 */	li r4, 0x0
/* 813E4B4C | 4B FC DC 89 */	bl "__pp__Q44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8IteratorFi"
.L_813E4B50:
/* 813E4B50 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813E4B54 | 38 63 00 0C */	addi r3, r3, 0xc
/* 813E4B58 | 4B F8 52 E5 */	bl "GetEndIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"
/* 813E4B5C | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 813E4B60 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813E4B64 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 813E4B68 | 38 61 00 0C */	addi r3, r1, 0xc
/* 813E4B6C | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813E4B70 | 4B F8 52 D5 */	bl "__ne__Q24nw4r2utFQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8IteratorQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8Iterator"
/* 813E4B74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813E4B78 | 40 82 FF BC */	bne .L_813E4B34
/* 813E4B7C | 83 DF 00 68 */	lwz r30, 0x68(r31)
/* 813E4B80 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813E4B84 | 41 82 00 14 */	beq .L_813E4B98
/* 813E4B88 | 7F C3 F3 78 */	mr r3, r30
/* 813E4B8C | 4B F7 DC E5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813E4B90 | 38 00 00 01 */	li r0, 0x1
/* 813E4B94 | 90 1E 00 14 */	stw r0, 0x14(r30)
.L_813E4B98:
/* 813E4B98 | 38 00 00 01 */	li r0, 0x1
/* 813E4B9C | 98 1F 00 6C */	stb r0, 0x6c(r31)
.L_813E4BA0:
/* 813E4BA0 | 38 60 00 01 */	li r3, 0x1
.L_813E4BA4:
/* 813E4BA4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813E4BA8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813E4BAC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 813E4BB0 | 7C 08 03 A6 */	mtlr r0
/* 813E4BB4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813E4BB8 | 4E 80 00 20 */	blr
.endfn iplSDChannelObj_813E4A54

# 0x81610608..0x81610918 | size: 0x310
.rodata
.balign 8

# .rodata:0x0 | 0x81610608 | size: 0x300
.obj lbl_81610608, global
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0xFFFFFFFF
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000009
	.4byte 0xFFFFFFFF
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0xFFFFFFFF
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81610608

# .rodata:0x300 | 0x81610908 | size: 0x10
.obj lbl_81610908, global
	.4byte 0x42800000
	.4byte 0x42400000
	.4byte 0x42AA0000
	.4byte 0x42400000
.endobj lbl_81610908

# 0x81654B38..0x81654F98 | size: 0x460
.data
.balign 8

# .data:0x0 | 0x81654B38 | size: 0x9
.obj lbl_81654B38, global
	.string "Cursur_a"
.endobj lbl_81654B38

# .data:0x9 | 0x81654B41 | size: 0x1B
.obj lbl_81654B41, global
	.string "my_IplTop_d_FocusOff.brlan"
.endobj lbl_81654B41

# .data:0x24 | 0x81654B5C | size: 0x1A
.obj lbl_81654B5C, global
	.string "my_IplTop_d_FocusOn.brlan"
.endobj lbl_81654B5C

# .data:0x3E | 0x81654B76 | size: 0x1A
.obj lbl_81654B76, global
	.4byte 0x6D795F49
	.4byte 0x706C546F
	.4byte 0x705F645F
	.4byte 0x53656C65
	.4byte 0x63742E62
	.4byte 0x726C616E
	.2byte 0x0000
.endobj lbl_81654B76

# .data:0x58 | 0x81654B90 | size: 0xC
.obj lbl_81654B90, global
	.4byte lbl_81654B41
	.4byte lbl_81654B5C
	.4byte lbl_81654B76
.endobj lbl_81654B90

# .data:0x64 | 0x81654B9C | size: 0xC
.obj lbl_81654B9C, global
	.4byte 0x545F4261
	.4byte 0x6C6C6F6F
	.4byte 0x6E000000
.endobj lbl_81654B9C

# .data:0x70 | 0x81654BA8 | size: 0x28
.obj lbl_81654BA8, global
	.4byte lbl_81696DF0
	.4byte lbl_81696DF4
	.4byte lbl_81696DF8
	.4byte lbl_81696DFC
	.4byte lbl_81696E00
	.4byte lbl_81696E04
	.4byte lbl_81696E08
	.4byte lbl_81696E0C
	.4byte lbl_81696DF4
	.4byte lbl_81696E10
.endobj lbl_81654BA8

# .data:0x98 | 0x81654BD0 | size: 0x327
.obj lbl_81654BD0, global
	.4byte lbl_81696DF0
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81696DF4
	.4byte lbl_81696DFC
	.4byte lbl_81696E00
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81696DF4
	.4byte lbl_81696DFC
	.4byte lbl_81696DF8
	.4byte lbl_81696E00
	.4byte lbl_81696E04
	.4byte lbl_81696E08
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81696E10
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_81696E0C
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x69636F6E
	.4byte 0x2E62726C
	.4byte 0x79740069
	.4byte 0x636F6E2E
	.4byte 0x62726C61
	.4byte 0x6E006963
	.4byte 0x6F6E5F57
	.4byte 0x686F6C65
	.4byte 0x2E62726C
	.byte 0x61, 0x6E, 0x00
.endobj lbl_81654BD0

# .data:0x3BF | 0x81654EF7 | size: 0x16
.obj lbl_81654EF7, global
	.string "mn_SdcardMenu_d.brlyt"
.endobj lbl_81654EF7

# .data:0x3D5 | 0x81654F0D | size: 0x16
.obj lbl_81654F0D, global
	.string "mn_SdcardMenu_d.brlan"
.endobj lbl_81654F0D

# .data:0x3EB | 0x81654F23 | size: 0x12
.obj lbl_81654F23, global
	.string "my_IplTop_d.brlyt"
.endobj lbl_81654F23

# .data:0x3FD | 0x81654F35 | size: 0x19
.obj lbl_81654F35, global
	.string "my_IplTopBalloon_a.brlyt"
.endobj lbl_81654F35

# .data:0x416 | 0x81654F4E | size: 0x26
.obj lbl_81654F4E, global
	.string "my_IplTopBalloon_a_BalloonInOut.brlan"
.endobj lbl_81654F4E

# .data:0x43C | 0x81654F74 | size: 0x24
.obj lbl_81654F74, global
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x42414C4C
	.4byte 0x4F4F4E00
	.4byte 0x69636F6E
	.4byte 0x5F4E6577
	.4byte 0x2E62726C
	.4byte 0x616E0000
	.4byte 0x00000000
.endobj lbl_81654F74

# 0x81694B18..0x81694B60 | size: 0x48
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694B18 | size: 0x8
.obj lbl_81694B18, global
	.string16 "???"
.endobj lbl_81694B18

# .sdata2:0x8 | 0x81694B20 | size: 0x4
.obj lbl_81694B20, global
	.float 1
.endobj lbl_81694B20

# .sdata2:0xC | 0x81694B24 | size: 0x4
.obj lbl_81694B24, global
	.float 0
.endobj lbl_81694B24

# .sdata2:0x10 | 0x81694B28 | size: 0x8
.obj lbl_81694B28, global
	.double 4503601774854144
.endobj lbl_81694B28

# .sdata2:0x18 | 0x81694B30 | size: 0x4
.obj lbl_81694B30, global
	.float 391.5
.endobj lbl_81694B30

# .sdata2:0x1C | 0x81694B34 | size: 0x4
.obj lbl_81694B34, global
	.float -1.179962
.endobj lbl_81694B34

# .sdata2:0x20 | 0x81694B38 | size: 0x4
.obj lbl_81694B38, global
	.float 40
.endobj lbl_81694B38

# .sdata2:0x24 | 0x81694B3C | size: 0x4
.obj lbl_81694B3C, global
	.float 160
.endobj lbl_81694B3C

# .sdata2:0x28 | 0x81694B40 | size: 0x4
.obj lbl_81694B40, global
	.float -2
.endobj lbl_81694B40

# .sdata2:0x2C | 0x81694B44 | size: 0x4
.obj lbl_81694B44, global
	.float 0.5
.endobj lbl_81694B44

# .sdata2:0x30 | 0x81694B48 | size: 0x4
.obj lbl_81694B48, global
	.float -1
.endobj lbl_81694B48

# .sdata2:0x34 | 0x81694B4C | size: 0x4
.obj lbl_81694B4C, global
	.float 60
.endobj lbl_81694B4C

# .sdata2:0x38 | 0x81694B50 | size: 0x4
.obj lbl_81694B50, global
	.float 20
.endobj lbl_81694B50

# .sdata2:0x3C | 0x81694B54 | size: 0x4
.obj gap_09_81694B54_sdata2, global
.hidden gap_09_81694B54_sdata2
	.4byte 0x00000000
.endobj gap_09_81694B54_sdata2

# .sdata2:0x40 | 0x81694B58 | size: 0x8
.obj lbl_81694B58, global
	.double 4503599627370496
.endobj lbl_81694B58

# 0x81696DD0..0x81696E40 | size: 0x70
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696DD0 | size: 0x4
.obj lbl_81696DD0, global
	.4byte lbl_81654B38
.endobj lbl_81696DD0

# .sdata:0x4 | 0x81696DD4 | size: 0x4
.obj lbl_81696DD4, global
	.4byte lbl_81654B9C
.endobj lbl_81696DD4

# .sdata:0x8 | 0x81696DD8 | size: 0x8
.obj lbl_81696DD8, global
	.4byte 0x575F4261
	.4byte 0x73650000
.endobj lbl_81696DD8

# .sdata:0x10 | 0x81696DE0 | size: 0x4
.obj lbl_81696DE0, global
	.4byte lbl_81696DD8
.endobj lbl_81696DE0

# .sdata:0x14 | 0x81696DE4 | size: 0x8
.obj lbl_81696DE4, global
	.string "W_Shade"
.endobj lbl_81696DE4

# .sdata:0x1C | 0x81696DEC | size: 0x4
.obj lbl_81696DEC, global
	.4byte lbl_81696DE4
.endobj lbl_81696DEC

# .sdata:0x20 | 0x81696DF0 | size: 0x4
.obj lbl_81696DF0, global
	.string "JPN"
.endobj lbl_81696DF0

# .sdata:0x24 | 0x81696DF4 | size: 0x4
.obj lbl_81696DF4, global
	.string "ENG"
.endobj lbl_81696DF4

# .sdata:0x28 | 0x81696DF8 | size: 0x4
.obj lbl_81696DF8, global
	.string "GER"
.endobj lbl_81696DF8

# .sdata:0x2C | 0x81696DFC | size: 0x4
.obj lbl_81696DFC, global
	.string "FRA"
.endobj lbl_81696DFC

# .sdata:0x30 | 0x81696E00 | size: 0x4
.obj lbl_81696E00, global
	.string "SPA"
.endobj lbl_81696E00

# .sdata:0x34 | 0x81696E04 | size: 0x4
.obj lbl_81696E04, global
	.string "ITA"
.endobj lbl_81696E04

# .sdata:0x38 | 0x81696E08 | size: 0x4
.obj lbl_81696E08, global
	.string "NED"
.endobj lbl_81696E08

# .sdata:0x3C | 0x81696E0C | size: 0x4
.obj lbl_81696E0C, global
	.string "CHN"
.endobj lbl_81696E0C

# .sdata:0x40 | 0x81696E10 | size: 0x4
.obj lbl_81696E10, global
	.string "KOR"
.endobj lbl_81696E10

# .sdata:0x44 | 0x81696E14 | size: 0x6
.obj lbl_81696E14, global
	.string "Rso%d"
.endobj lbl_81696E14

# .sdata:0x4A | 0x81696E1A | size: 0x4
.obj lbl_81696E1A, global
	.string "arc"
.endobj lbl_81696E1A

# .sdata:0x4E | 0x81696E1E | size: 0x2
.obj lbl_81696E1E, global
	.2byte 0x0000
.endobj lbl_81696E1E

# .sdata:0x50 | 0x81696E20 | size: 0x4
.obj lbl_81696E20, global
	.string "New"
.endobj lbl_81696E20

# .sdata:0x54 | 0x81696E24 | size: 0xC
.obj lbl_81696E24, global
	.4byte 0x4E65775F
	.4byte 0x25730000
	.4byte 0x00000000
.endobj lbl_81696E24

# .sdata:0x60 | 0x81696E30 | size: 0x7
.obj lbl_81696E30, global
	.string "B_BtnA"
.endobj lbl_81696E30

# .sdata:0x67 | 0x81696E37 | size: 0x9
.obj lbl_81696E37, global
	.4byte 0x425F4274
	.4byte 0x6E420000
	.byte 0x00
.endobj lbl_81696E37
