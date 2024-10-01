.include "macros.inc"
.file "SOBasic.c"

# 0x810C9BD8..0x810C9C00 | size: 0x28
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810C9BD8 | size: 0x28
.obj ascii$1186, local
	.skip 0x28
.endobj ascii$1186

# 0x814B306C..0x814B4064 | size: 0xFF8
.text
.balign 4

# .text:0x0 | 0x814B306C | size: 0xF0
.fn SOSocket, global
/* 814B306C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814B3070 | 7C 08 02 A6 */	mflr r0
/* 814B3074 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814B3078 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814B307C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814B3080 | 7C BE 2B 78 */	mr r30, r5
/* 814B3084 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814B3088 | 7C 9D 23 78 */	mr r29, r4
/* 814B308C | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814B3090 | 7C 7C 1B 78 */	mr r28, r3
/* 814B3094 | 80 0D AE 20 */	lwz r0, soSocketRegistered@sda21(r0)
/* 814B3098 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B309C | 40 82 00 14 */	bne .L_814B30B0
/* 814B30A0 | 80 6D 9C 98 */	lwz r3, __SOCKETVersion@sda21(r0)
/* 814B30A4 | 48 07 97 35 */	bl OSRegisterVersion
/* 814B30A8 | 38 00 00 01 */	li r0, 0x1
/* 814B30AC | 90 0D AE 20 */	stw r0, soSocketRegistered@sda21(r0)
.L_814B30B0:
/* 814B30B0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814B30B4 | 38 60 00 00 */	li r3, 0x0
/* 814B30B8 | 4B FF F8 A9 */	bl SOiPrepare
/* 814B30BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B30C0 | 40 82 00 7C */	bne .L_814B313C
/* 814B30C4 | 2C 1C 00 17 */	cmpwi r28, 0x17
/* 814B30C8 | 40 82 00 0C */	bne .L_814B30D4
/* 814B30CC | 3B C0 FF FB */	li r30, -0x5
/* 814B30D0 | 48 00 00 60 */	b .L_814B3130
.L_814B30D4:
/* 814B30D4 | 38 60 00 0C */	li r3, 0xc
/* 814B30D8 | 38 80 00 20 */	li r4, 0x20
/* 814B30DC | 4B FF F7 69 */	bl SOiAlloc
/* 814B30E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B30E4 | 7C 7F 1B 78 */	mr r31, r3
/* 814B30E8 | 40 82 00 0C */	bne .L_814B30F4
/* 814B30EC | 3B C0 FF CF */	li r30, -0x31
/* 814B30F0 | 48 00 00 40 */	b .L_814B3130
.L_814B30F4:
/* 814B30F4 | 93 83 00 00 */	stw r28, 0x0(r3)
/* 814B30F8 | 7F E5 FB 78 */	mr r5, r31
/* 814B30FC | 38 80 00 0F */	li r4, 0xf
/* 814B3100 | 38 C0 00 0C */	li r6, 0xc
/* 814B3104 | 93 A3 00 04 */	stw r29, 0x4(r3)
/* 814B3108 | 38 E0 00 00 */	li r7, 0x0
/* 814B310C | 39 00 00 00 */	li r8, 0x0
/* 814B3110 | 93 C3 00 08 */	stw r30, 0x8(r3)
/* 814B3114 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814B3118 | 48 0C 03 91 */	bl fn_815734A8
/* 814B311C | 7C 7E 1B 78 */	mr r30, r3
/* 814B3120 | 7F E4 FB 78 */	mr r4, r31
/* 814B3124 | 38 60 00 0C */	li r3, 0xc
/* 814B3128 | 38 A0 00 20 */	li r5, 0x20
/* 814B312C | 4B FF F8 01 */	bl SOiFree
.L_814B3130:
/* 814B3130 | 7F C4 F3 78 */	mr r4, r30
/* 814B3134 | 38 60 00 00 */	li r3, 0x0
/* 814B3138 | 4B FF F9 11 */	bl SOiConclude
.L_814B313C:
/* 814B313C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814B3140 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814B3144 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814B3148 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814B314C | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814B3150 | 7C 08 03 A6 */	mtlr r0
/* 814B3154 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814B3158 | 4E 80 00 20 */	blr
.endfn SOSocket

# .text:0xF0 | 0x814B315C | size: 0xA4
.fn SOClose, global
/* 814B315C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814B3160 | 7C 08 02 A6 */	mflr r0
/* 814B3164 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814B3168 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814B316C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814B3170 | 7C 7F 1B 78 */	mr r31, r3
/* 814B3174 | 38 60 00 00 */	li r3, 0x0
/* 814B3178 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814B317C | 4B FF F7 E5 */	bl SOiPrepare
/* 814B3180 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B3184 | 40 82 00 64 */	bne .L_814B31E8
/* 814B3188 | 38 60 00 0C */	li r3, 0xc
/* 814B318C | 38 80 00 20 */	li r4, 0x20
/* 814B3190 | 4B FF F6 B5 */	bl SOiAlloc
/* 814B3194 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B3198 | 7C 7E 1B 78 */	mr r30, r3
/* 814B319C | 40 82 00 0C */	bne .L_814B31A8
/* 814B31A0 | 3B E0 FF CF */	li r31, -0x31
/* 814B31A4 | 48 00 00 38 */	b .L_814B31DC
.L_814B31A8:
/* 814B31A8 | 93 E3 00 00 */	stw r31, 0x0(r3)
/* 814B31AC | 7F C5 F3 78 */	mr r5, r30
/* 814B31B0 | 38 80 00 03 */	li r4, 0x3
/* 814B31B4 | 38 C0 00 04 */	li r6, 0x4
/* 814B31B8 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814B31BC | 38 E0 00 00 */	li r7, 0x0
/* 814B31C0 | 39 00 00 00 */	li r8, 0x0
/* 814B31C4 | 48 0C 02 E5 */	bl fn_815734A8
/* 814B31C8 | 7C 7F 1B 78 */	mr r31, r3
/* 814B31CC | 7F C4 F3 78 */	mr r4, r30
/* 814B31D0 | 38 60 00 0C */	li r3, 0xc
/* 814B31D4 | 38 A0 00 20 */	li r5, 0x20
/* 814B31D8 | 4B FF F7 55 */	bl SOiFree
.L_814B31DC:
/* 814B31DC | 7F E4 FB 78 */	mr r4, r31
/* 814B31E0 | 38 60 00 00 */	li r3, 0x0
/* 814B31E4 | 4B FF F8 65 */	bl SOiConclude
.L_814B31E8:
/* 814B31E8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814B31EC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814B31F0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814B31F4 | 7C 08 03 A6 */	mtlr r0
/* 814B31F8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814B31FC | 4E 80 00 20 */	blr
.endfn SOClose

# .text:0x194 | 0x814B3200 | size: 0xE8
.fn SOBind, global
/* 814B3200 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814B3204 | 7C 08 02 A6 */	mflr r0
/* 814B3208 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814B320C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814B3210 | 7C 9F 23 78 */	mr r31, r4
/* 814B3214 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814B3218 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814B321C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814B3220 | 7C 7D 1B 78 */	mr r29, r3
/* 814B3224 | 38 60 00 00 */	li r3, 0x0
/* 814B3228 | 4B FF F7 39 */	bl SOiPrepare
/* 814B322C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B3230 | 40 82 00 9C */	bne .L_814B32CC
/* 814B3234 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814B3238 | 41 82 00 14 */	beq .L_814B324C
/* 814B323C | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 814B3240 | 28 00 00 08 */	cmplwi r0, 0x8
/* 814B3244 | 41 81 00 08 */	bgt .L_814B324C
/* 814B3248 | 40 80 00 0C */	bge .L_814B3254
.L_814B324C:
/* 814B324C | 3B E0 FF E4 */	li r31, -0x1c
/* 814B3250 | 48 00 00 70 */	b .L_814B32C0
.L_814B3254:
/* 814B3254 | 38 60 00 0C */	li r3, 0xc
/* 814B3258 | 38 80 00 40 */	li r4, 0x40
/* 814B325C | 4B FF F5 E9 */	bl SOiAlloc
/* 814B3260 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B3264 | 7C 7E 1B 78 */	mr r30, r3
/* 814B3268 | 40 82 00 0C */	bne .L_814B3274
/* 814B326C | 3B E0 FF CF */	li r31, -0x31
/* 814B3270 | 48 00 00 50 */	b .L_814B32C0
.L_814B3274:
/* 814B3274 | 93 A3 00 00 */	stw r29, 0x0(r3)
/* 814B3278 | 38 00 00 01 */	li r0, 0x1
/* 814B327C | 7F E4 FB 78 */	mr r4, r31
/* 814B3280 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 814B3284 | 38 63 00 08 */	addi r3, r3, 0x8
/* 814B3288 | 88 BF 00 00 */	lbz r5, 0x0(r31)
/* 814B328C | 4B E7 CF A5 */	bl memcpy
/* 814B3290 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814B3294 | 7F C5 F3 78 */	mr r5, r30
/* 814B3298 | 38 80 00 02 */	li r4, 0x2
/* 814B329C | 38 C0 00 24 */	li r6, 0x24
/* 814B32A0 | 38 E0 00 00 */	li r7, 0x0
/* 814B32A4 | 39 00 00 00 */	li r8, 0x0
/* 814B32A8 | 48 0C 02 01 */	bl fn_815734A8
/* 814B32AC | 7C 7F 1B 78 */	mr r31, r3
/* 814B32B0 | 7F C4 F3 78 */	mr r4, r30
/* 814B32B4 | 38 60 00 0C */	li r3, 0xc
/* 814B32B8 | 38 A0 00 40 */	li r5, 0x40
/* 814B32BC | 4B FF F6 71 */	bl SOiFree
.L_814B32C0:
/* 814B32C0 | 7F E4 FB 78 */	mr r4, r31
/* 814B32C4 | 38 60 00 00 */	li r3, 0x0
/* 814B32C8 | 4B FF F7 81 */	bl SOiConclude
.L_814B32CC:
/* 814B32CC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814B32D0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814B32D4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814B32D8 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814B32DC | 7C 08 03 A6 */	mtlr r0
/* 814B32E0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814B32E4 | 4E 80 00 20 */	blr
.endfn SOBind

# .text:0x27C | 0x814B32E8 | size: 0xE8
.fn SOConnect, global
/* 814B32E8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814B32EC | 7C 08 02 A6 */	mflr r0
/* 814B32F0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814B32F4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814B32F8 | 7C 9F 23 78 */	mr r31, r4
/* 814B32FC | 38 81 00 08 */	addi r4, r1, 0x8
/* 814B3300 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814B3304 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814B3308 | 7C 7D 1B 78 */	mr r29, r3
/* 814B330C | 38 60 00 00 */	li r3, 0x0
/* 814B3310 | 4B FF F6 51 */	bl SOiPrepare
/* 814B3314 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B3318 | 40 82 00 9C */	bne .L_814B33B4
/* 814B331C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814B3320 | 41 82 00 14 */	beq .L_814B3334
/* 814B3324 | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 814B3328 | 28 00 00 08 */	cmplwi r0, 0x8
/* 814B332C | 41 81 00 08 */	bgt .L_814B3334
/* 814B3330 | 40 80 00 0C */	bge .L_814B333C
.L_814B3334:
/* 814B3334 | 3B E0 FF E4 */	li r31, -0x1c
/* 814B3338 | 48 00 00 70 */	b .L_814B33A8
.L_814B333C:
/* 814B333C | 38 60 00 0C */	li r3, 0xc
/* 814B3340 | 38 80 00 40 */	li r4, 0x40
/* 814B3344 | 4B FF F5 01 */	bl SOiAlloc
/* 814B3348 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B334C | 7C 7E 1B 78 */	mr r30, r3
/* 814B3350 | 40 82 00 0C */	bne .L_814B335C
/* 814B3354 | 3B E0 FF CF */	li r31, -0x31
/* 814B3358 | 48 00 00 50 */	b .L_814B33A8
.L_814B335C:
/* 814B335C | 93 A3 00 00 */	stw r29, 0x0(r3)
/* 814B3360 | 38 00 00 01 */	li r0, 0x1
/* 814B3364 | 7F E4 FB 78 */	mr r4, r31
/* 814B3368 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 814B336C | 38 63 00 08 */	addi r3, r3, 0x8
/* 814B3370 | 88 BF 00 00 */	lbz r5, 0x0(r31)
/* 814B3374 | 4B E7 CE BD */	bl memcpy
/* 814B3378 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814B337C | 7F C5 F3 78 */	mr r5, r30
/* 814B3380 | 38 80 00 04 */	li r4, 0x4
/* 814B3384 | 38 C0 00 24 */	li r6, 0x24
/* 814B3388 | 38 E0 00 00 */	li r7, 0x0
/* 814B338C | 39 00 00 00 */	li r8, 0x0
/* 814B3390 | 48 0C 01 19 */	bl fn_815734A8
/* 814B3394 | 7C 7F 1B 78 */	mr r31, r3
/* 814B3398 | 7F C4 F3 78 */	mr r4, r30
/* 814B339C | 38 60 00 0C */	li r3, 0xc
/* 814B33A0 | 38 A0 00 40 */	li r5, 0x40
/* 814B33A4 | 4B FF F5 89 */	bl SOiFree
.L_814B33A8:
/* 814B33A8 | 7F E4 FB 78 */	mr r4, r31
/* 814B33AC | 38 60 00 00 */	li r3, 0x0
/* 814B33B0 | 4B FF F6 99 */	bl SOiConclude
.L_814B33B4:
/* 814B33B4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814B33B8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814B33BC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814B33C0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814B33C4 | 7C 08 03 A6 */	mtlr r0
/* 814B33C8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814B33CC | 4E 80 00 20 */	blr
.endfn SOConnect

# .text:0x364 | 0x814B33D0 | size: 0xFC
.fn SOGetSockName, global
/* 814B33D0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814B33D4 | 7C 08 02 A6 */	mflr r0
/* 814B33D8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814B33DC | 39 61 00 30 */	addi r11, r1, 0x30
/* 814B33E0 | 48 14 60 E1 */	bl _savegpr_27
/* 814B33E4 | 7C 7C 1B 78 */	mr r28, r3
/* 814B33E8 | 7C 9B 23 78 */	mr r27, r4
/* 814B33EC | 38 81 00 08 */	addi r4, r1, 0x8
/* 814B33F0 | 38 60 00 00 */	li r3, 0x0
/* 814B33F4 | 4B FF F5 6D */	bl SOiPrepare
/* 814B33F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B33FC | 40 82 00 B8 */	bne .L_814B34B4
/* 814B3400 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814B3404 | 41 82 00 14 */	beq .L_814B3418
/* 814B3408 | 88 7B 00 00 */	lbz r3, 0x0(r27)
/* 814B340C | 28 03 00 08 */	cmplwi r3, 0x8
/* 814B3410 | 41 81 00 08 */	bgt .L_814B3418
/* 814B3414 | 40 80 00 0C */	bge .L_814B3420
.L_814B3418:
/* 814B3418 | 3B C0 FF E4 */	li r30, -0x1c
/* 814B341C | 48 00 00 8C */	b .L_814B34A8
.L_814B3420:
/* 814B3420 | 38 03 00 3F */	addi r0, r3, 0x3f
/* 814B3424 | 38 60 00 0C */	li r3, 0xc
/* 814B3428 | 54 1F 00 34 */	clrrwi r31, r0, 5
/* 814B342C | 7F E4 FB 78 */	mr r4, r31
/* 814B3430 | 4B FF F4 15 */	bl SOiAlloc
/* 814B3434 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B3438 | 7C 7D 1B 78 */	mr r29, r3
/* 814B343C | 40 82 00 0C */	bne .L_814B3448
/* 814B3440 | 3B C0 FF CF */	li r30, -0x31
/* 814B3444 | 48 00 00 64 */	b .L_814B34A8
.L_814B3448:
/* 814B3448 | 93 83 00 00 */	stw r28, 0x0(r3)
/* 814B344C | 3B 83 00 20 */	addi r28, r3, 0x20
/* 814B3450 | 7F 64 DB 78 */	mr r4, r27
/* 814B3454 | 88 BB 00 00 */	lbz r5, 0x0(r27)
/* 814B3458 | 7F 83 E3 78 */	mr r3, r28
/* 814B345C | 4B E7 CD D5 */	bl memcpy
/* 814B3460 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814B3464 | 7F A5 EB 78 */	mr r5, r29
/* 814B3468 | 89 1B 00 00 */	lbz r8, 0x0(r27)
/* 814B346C | 7F 87 E3 78 */	mr r7, r28
/* 814B3470 | 38 80 00 07 */	li r4, 0x7
/* 814B3474 | 38 C0 00 04 */	li r6, 0x4
/* 814B3478 | 48 0C 00 31 */	bl fn_815734A8
/* 814B347C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B3480 | 7C 7E 1B 78 */	mr r30, r3
/* 814B3484 | 41 80 00 14 */	blt .L_814B3498
/* 814B3488 | 88 BC 00 00 */	lbz r5, 0x0(r28)
/* 814B348C | 7F 63 DB 78 */	mr r3, r27
/* 814B3490 | 7F 84 E3 78 */	mr r4, r28
/* 814B3494 | 4B E7 CD 9D */	bl memcpy
.L_814B3498:
/* 814B3498 | 7F A4 EB 78 */	mr r4, r29
/* 814B349C | 7F E5 FB 78 */	mr r5, r31
/* 814B34A0 | 38 60 00 0C */	li r3, 0xc
/* 814B34A4 | 4B FF F4 89 */	bl SOiFree
.L_814B34A8:
/* 814B34A8 | 7F C4 F3 78 */	mr r4, r30
/* 814B34AC | 38 60 00 00 */	li r3, 0x0
/* 814B34B0 | 4B FF F5 99 */	bl SOiConclude
.L_814B34B4:
/* 814B34B4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814B34B8 | 48 14 60 55 */	bl _restgpr_27
/* 814B34BC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814B34C0 | 7C 08 03 A6 */	mtlr r0
/* 814B34C4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814B34C8 | 4E 80 00 20 */	blr
.endfn SOGetSockName

# .text:0x460 | 0x814B34CC | size: 0x28
.fn SORecvFrom, global
/* 814B34CC | 7C 8A 23 78 */	mr r10, r4
/* 814B34D0 | 7C A9 2B 78 */	mr r9, r5
/* 814B34D4 | 7C C0 33 78 */	mr r0, r6
/* 814B34D8 | 7C E8 3B 78 */	mr r8, r7
/* 814B34DC | 7C 64 1B 78 */	mr r4, r3
/* 814B34E0 | 7D 45 53 78 */	mr r5, r10
/* 814B34E4 | 7D 26 4B 78 */	mr r6, r9
/* 814B34E8 | 7C 07 03 78 */	mr r7, r0
/* 814B34EC | 38 60 00 00 */	li r3, 0x0
/* 814B34F0 | 48 00 06 90 */	b RecvFrom
.endfn SORecvFrom

# .text:0x488 | 0x814B34F4 | size: 0x24
.fn SORecv, global
/* 814B34F4 | 7C 88 23 78 */	mr r8, r4
/* 814B34F8 | 7C A0 2B 78 */	mr r0, r5
/* 814B34FC | 7C C7 33 78 */	mr r7, r6
/* 814B3500 | 7C 64 1B 78 */	mr r4, r3
/* 814B3504 | 7D 05 43 78 */	mr r5, r8
/* 814B3508 | 7C 06 03 78 */	mr r6, r0
/* 814B350C | 38 60 00 00 */	li r3, 0x0
/* 814B3510 | 39 00 00 00 */	li r8, 0x0
/* 814B3514 | 48 00 06 6C */	b RecvFrom
.endfn SORecv

# .text:0x4AC | 0x814B3518 | size: 0x24
.fn SORead, global
/* 814B3518 | 7C 67 1B 78 */	mr r7, r3
/* 814B351C | 7C 80 23 78 */	mr r0, r4
/* 814B3520 | 7C A6 2B 78 */	mr r6, r5
/* 814B3524 | 38 60 00 00 */	li r3, 0x0
/* 814B3528 | 7C E4 3B 78 */	mr r4, r7
/* 814B352C | 7C 05 03 78 */	mr r5, r0
/* 814B3530 | 38 E0 00 00 */	li r7, 0x0
/* 814B3534 | 39 00 00 00 */	li r8, 0x0
/* 814B3538 | 48 00 06 48 */	b RecvFrom
.endfn SORead

# .text:0x4D0 | 0x814B353C | size: 0x28
.fn SOSendTo, global
/* 814B353C | 7C 8A 23 78 */	mr r10, r4
/* 814B3540 | 7C A9 2B 78 */	mr r9, r5
/* 814B3544 | 7C C0 33 78 */	mr r0, r6
/* 814B3548 | 7C E8 3B 78 */	mr r8, r7
/* 814B354C | 7C 64 1B 78 */	mr r4, r3
/* 814B3550 | 7D 45 53 78 */	mr r5, r10
/* 814B3554 | 7D 26 4B 78 */	mr r6, r9
/* 814B3558 | 7C 07 03 78 */	mr r7, r0
/* 814B355C | 38 60 00 00 */	li r3, 0x0
/* 814B3560 | 48 00 08 D8 */	b SendTo
.endfn SOSendTo

# .text:0x4F8 | 0x814B3564 | size: 0x24
.fn SOSend, global
/* 814B3564 | 7C 88 23 78 */	mr r8, r4
/* 814B3568 | 7C A0 2B 78 */	mr r0, r5
/* 814B356C | 7C C7 33 78 */	mr r7, r6
/* 814B3570 | 7C 64 1B 78 */	mr r4, r3
/* 814B3574 | 7D 05 43 78 */	mr r5, r8
/* 814B3578 | 7C 06 03 78 */	mr r6, r0
/* 814B357C | 38 60 00 00 */	li r3, 0x0
/* 814B3580 | 39 00 00 00 */	li r8, 0x0
/* 814B3584 | 48 00 08 B4 */	b SendTo
.endfn SOSend

# .text:0x51C | 0x814B3588 | size: 0x130
.fn SOFcntl, global
/* 814B3588 | 94 21 FF 70 */	stwu r1, -0x90(r1)
/* 814B358C | 7C 08 02 A6 */	mflr r0
/* 814B3590 | 90 01 00 94 */	stw r0, 0x94(r1)
/* 814B3594 | 93 E1 00 8C */	stw r31, 0x8c(r1)
/* 814B3598 | 93 C1 00 88 */	stw r30, 0x88(r1)
/* 814B359C | 93 A1 00 84 */	stw r29, 0x84(r1)
/* 814B35A0 | 7C 9D 23 78 */	mr r29, r4
/* 814B35A4 | 93 81 00 80 */	stw r28, 0x80(r1)
/* 814B35A8 | 7C 7C 1B 78 */	mr r28, r3
/* 814B35AC | 40 86 00 24 */	bne cr1, .L_814B35D0
/* 814B35B0 | D8 21 00 28 */	stfd f1, 0x28(r1)
/* 814B35B4 | D8 41 00 30 */	stfd f2, 0x30(r1)
/* 814B35B8 | D8 61 00 38 */	stfd f3, 0x38(r1)
/* 814B35BC | D8 81 00 40 */	stfd f4, 0x40(r1)
/* 814B35C0 | D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 814B35C4 | D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 814B35C8 | D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 814B35CC | D9 01 00 60 */	stfd f8, 0x60(r1)
.L_814B35D0:
/* 814B35D0 | 39 61 00 98 */	addi r11, r1, 0x98
/* 814B35D4 | 38 01 00 08 */	addi r0, r1, 0x8
/* 814B35D8 | 3D 80 02 00 */	lis r12, 0x200
/* 814B35DC | 90 81 00 0C */	stw r4, 0xc(r1)
/* 814B35E0 | 3B E1 00 6C */	addi r31, r1, 0x6c
/* 814B35E4 | 38 80 00 01 */	li r4, 0x1
/* 814B35E8 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 814B35EC | 7F E3 FB 78 */	mr r3, r31
/* 814B35F0 | 90 A1 00 10 */	stw r5, 0x10(r1)
/* 814B35F4 | 90 C1 00 14 */	stw r6, 0x14(r1)
/* 814B35F8 | 90 E1 00 18 */	stw r7, 0x18(r1)
/* 814B35FC | 91 01 00 1C */	stw r8, 0x1c(r1)
/* 814B3600 | 91 21 00 20 */	stw r9, 0x20(r1)
/* 814B3604 | 91 41 00 24 */	stw r10, 0x24(r1)
/* 814B3608 | 91 81 00 6C */	stw r12, 0x6c(r1)
/* 814B360C | 91 61 00 70 */	stw r11, 0x70(r1)
/* 814B3610 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 814B3614 | 48 14 59 05 */	bl __va_arg
/* 814B3618 | 83 E3 00 00 */	lwz r31, 0x0(r3)
/* 814B361C | 38 81 00 68 */	addi r4, r1, 0x68
/* 814B3620 | 38 60 00 00 */	li r3, 0x0
/* 814B3624 | 4B FF F3 3D */	bl SOiPrepare
/* 814B3628 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B362C | 40 82 00 6C */	bne .L_814B3698
/* 814B3630 | 38 60 00 0C */	li r3, 0xc
/* 814B3634 | 38 80 00 20 */	li r4, 0x20
/* 814B3638 | 4B FF F2 0D */	bl SOiAlloc
/* 814B363C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B3640 | 7C 7E 1B 78 */	mr r30, r3
/* 814B3644 | 40 82 00 0C */	bne .L_814B3650
/* 814B3648 | 3B E0 FF CF */	li r31, -0x31
/* 814B364C | 48 00 00 40 */	b .L_814B368C
.L_814B3650:
/* 814B3650 | 93 83 00 00 */	stw r28, 0x0(r3)
/* 814B3654 | 7F C5 F3 78 */	mr r5, r30
/* 814B3658 | 38 80 00 05 */	li r4, 0x5
/* 814B365C | 38 C0 00 0C */	li r6, 0xc
/* 814B3660 | 93 A3 00 04 */	stw r29, 0x4(r3)
/* 814B3664 | 38 E0 00 00 */	li r7, 0x0
/* 814B3668 | 39 00 00 00 */	li r8, 0x0
/* 814B366C | 93 E3 00 08 */	stw r31, 0x8(r3)
/* 814B3670 | 80 61 00 68 */	lwz r3, 0x68(r1)
/* 814B3674 | 48 0B FE 35 */	bl fn_815734A8
/* 814B3678 | 7C 7F 1B 78 */	mr r31, r3
/* 814B367C | 7F C4 F3 78 */	mr r4, r30
/* 814B3680 | 38 60 00 0C */	li r3, 0xc
/* 814B3684 | 38 A0 00 20 */	li r5, 0x20
/* 814B3688 | 4B FF F2 A5 */	bl SOiFree
.L_814B368C:
/* 814B368C | 7F E4 FB 78 */	mr r4, r31
/* 814B3690 | 38 60 00 00 */	li r3, 0x0
/* 814B3694 | 4B FF F3 B5 */	bl SOiConclude
.L_814B3698:
/* 814B3698 | 80 01 00 94 */	lwz r0, 0x94(r1)
/* 814B369C | 83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 814B36A0 | 83 C1 00 88 */	lwz r30, 0x88(r1)
/* 814B36A4 | 83 A1 00 84 */	lwz r29, 0x84(r1)
/* 814B36A8 | 83 81 00 80 */	lwz r28, 0x80(r1)
/* 814B36AC | 7C 08 03 A6 */	mtlr r0
/* 814B36B0 | 38 21 00 90 */	addi r1, r1, 0x90
/* 814B36B4 | 4E 80 00 20 */	blr
.endfn SOFcntl

# .text:0x64C | 0x814B36B8 | size: 0xB4
.fn SOShutdown, global
/* 814B36B8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814B36BC | 7C 08 02 A6 */	mflr r0
/* 814B36C0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814B36C4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814B36C8 | 7C 9F 23 78 */	mr r31, r4
/* 814B36CC | 38 81 00 08 */	addi r4, r1, 0x8
/* 814B36D0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814B36D4 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814B36D8 | 7C 7D 1B 78 */	mr r29, r3
/* 814B36DC | 38 60 00 00 */	li r3, 0x0
/* 814B36E0 | 4B FF F2 81 */	bl SOiPrepare
/* 814B36E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B36E8 | 40 82 00 68 */	bne .L_814B3750
/* 814B36EC | 38 60 00 0C */	li r3, 0xc
/* 814B36F0 | 38 80 00 20 */	li r4, 0x20
/* 814B36F4 | 4B FF F1 51 */	bl SOiAlloc
/* 814B36F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B36FC | 7C 7E 1B 78 */	mr r30, r3
/* 814B3700 | 40 82 00 0C */	bne .L_814B370C
/* 814B3704 | 3B E0 FF CF */	li r31, -0x31
/* 814B3708 | 48 00 00 3C */	b .L_814B3744
.L_814B370C:
/* 814B370C | 93 A3 00 00 */	stw r29, 0x0(r3)
/* 814B3710 | 7F C5 F3 78 */	mr r5, r30
/* 814B3714 | 38 80 00 0E */	li r4, 0xe
/* 814B3718 | 38 C0 00 08 */	li r6, 0x8
/* 814B371C | 93 E3 00 04 */	stw r31, 0x4(r3)
/* 814B3720 | 38 E0 00 00 */	li r7, 0x0
/* 814B3724 | 39 00 00 00 */	li r8, 0x0
/* 814B3728 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814B372C | 48 0B FD 7D */	bl fn_815734A8
/* 814B3730 | 7C 7F 1B 78 */	mr r31, r3
/* 814B3734 | 7F C4 F3 78 */	mr r4, r30
/* 814B3738 | 38 60 00 0C */	li r3, 0xc
/* 814B373C | 38 A0 00 20 */	li r5, 0x20
/* 814B3740 | 4B FF F1 ED */	bl SOiFree
.L_814B3744:
/* 814B3744 | 7F E4 FB 78 */	mr r4, r31
/* 814B3748 | 38 60 00 00 */	li r3, 0x0
/* 814B374C | 4B FF F2 FD */	bl SOiConclude
.L_814B3750:
/* 814B3750 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814B3754 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814B3758 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814B375C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814B3760 | 7C 08 03 A6 */	mtlr r0
/* 814B3764 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814B3768 | 4E 80 00 20 */	blr
.endfn SOShutdown

# .text:0x700 | 0x814B376C | size: 0x15C
.fn SOPoll, global
/* 814B376C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814B3770 | 7C 08 02 A6 */	mflr r0
/* 814B3774 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814B3778 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814B377C | 48 14 5D 41 */	bl _savegpr_26
/* 814B3780 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 814B3784 | 7C 7F 1B 78 */	mr r31, r3
/* 814B3788 | 7C 9A 23 78 */	mr r26, r4
/* 814B378C | 38 81 00 10 */	addi r4, r1, 0x10
/* 814B3790 | 90 C1 00 0C */	stw r6, 0xc(r1)
/* 814B3794 | 38 60 00 00 */	li r3, 0x0
/* 814B3798 | 4B FF F1 C9 */	bl SOiPrepare
/* 814B379C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B37A0 | 40 82 01 10 */	bne .L_814B38B0
/* 814B37A4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814B37A8 | 40 82 00 0C */	bne .L_814B37B4
/* 814B37AC | 3B 80 FF E4 */	li r28, -0x1c
/* 814B37B0 | 48 00 00 F4 */	b .L_814B38A4
.L_814B37B4:
/* 814B37B4 | 1F BA 00 0C */	mulli r29, r26, 0xc
/* 814B37B8 | 38 60 00 0C */	li r3, 0xc
/* 814B37BC | 38 1D 00 3F */	addi r0, r29, 0x3f
/* 814B37C0 | 54 1E 00 34 */	clrrwi r30, r0, 5
/* 814B37C4 | 7F C4 F3 78 */	mr r4, r30
/* 814B37C8 | 4B FF F0 7D */	bl SOiAlloc
/* 814B37CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B37D0 | 7C 7B 1B 78 */	mr r27, r3
/* 814B37D4 | 40 82 00 0C */	bne .L_814B37E0
/* 814B37D8 | 3B 80 FF CF */	li r28, -0x31
/* 814B37DC | 48 00 00 C8 */	b .L_814B38A4
.L_814B37E0:
/* 814B37E0 | 80 E1 00 08 */	lwz r7, 0x8(r1)
/* 814B37E4 | 38 A0 FF FF */	li r5, -0x1
/* 814B37E8 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814B37EC | 6C A0 80 00 */	xoris r0, r5, 0x8000
/* 814B37F0 | 6C E6 80 00 */	xoris r6, r7, 0x8000
/* 814B37F4 | 3B 43 00 20 */	addi r26, r3, 0x20
/* 814B37F8 | 7C A4 28 10 */	subfc r5, r4, r5
/* 814B37FC | 7C C6 01 10 */	subfe r6, r6, r0
/* 814B3800 | 7C C0 01 10 */	subfe r6, r0, r0
/* 814B3804 | 7C C6 00 D1 */	neg. r6, r6
/* 814B3808 | 40 82 00 14 */	bne .L_814B381C
/* 814B380C | 38 81 00 08 */	addi r4, r1, 0x8
/* 814B3810 | 38 A0 00 08 */	li r5, 0x8
/* 814B3814 | 4B E7 CA 1D */	bl memcpy
/* 814B3818 | 48 00 00 34 */	b .L_814B384C
.L_814B381C:
/* 814B381C | 3C A0 80 00 */	lis r5, 0x8000
/* 814B3820 | 3C 60 10 62 */	lis r3, 0x1062
/* 814B3824 | 80 05 00 F8 */	lwz r0, 0xf8(r5)
/* 814B3828 | 38 C3 4D D3 */	addi r6, r3, 0x4dd3
/* 814B382C | 7C E3 3B 78 */	mr r3, r7
/* 814B3830 | 38 A0 00 00 */	li r5, 0x0
/* 814B3834 | 54 00 F0 BE */	srwi r0, r0, 2
/* 814B3838 | 7C 06 00 16 */	mulhwu r0, r6, r0
/* 814B383C | 54 06 D1 BE */	srwi r6, r0, 6
/* 814B3840 | 48 14 5D D1 */	bl __div2i
/* 814B3844 | 90 9B 00 04 */	stw r4, 0x4(r27)
/* 814B3848 | 90 7B 00 00 */	stw r3, 0x0(r27)
.L_814B384C:
/* 814B384C | 7F 43 D3 78 */	mr r3, r26
/* 814B3850 | 7F E4 FB 78 */	mr r4, r31
/* 814B3854 | 7F A5 EB 78 */	mr r5, r29
/* 814B3858 | 4B E7 C9 D9 */	bl memcpy
/* 814B385C | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 814B3860 | 7F 65 DB 78 */	mr r5, r27
/* 814B3864 | 7F 47 D3 78 */	mr r7, r26
/* 814B3868 | 7F A8 EB 78 */	mr r8, r29
/* 814B386C | 38 80 00 0B */	li r4, 0xb
/* 814B3870 | 38 C0 00 08 */	li r6, 0x8
/* 814B3874 | 48 0B FC 35 */	bl fn_815734A8
/* 814B3878 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B387C | 7C 7C 1B 78 */	mr r28, r3
/* 814B3880 | 41 80 00 14 */	blt .L_814B3894
/* 814B3884 | 7F E3 FB 78 */	mr r3, r31
/* 814B3888 | 7F 44 D3 78 */	mr r4, r26
/* 814B388C | 7F A5 EB 78 */	mr r5, r29
/* 814B3890 | 4B E7 C9 A1 */	bl memcpy
.L_814B3894:
/* 814B3894 | 7F 64 DB 78 */	mr r4, r27
/* 814B3898 | 7F C5 F3 78 */	mr r5, r30
/* 814B389C | 38 60 00 0C */	li r3, 0xc
/* 814B38A0 | 4B FF F0 8D */	bl SOiFree
.L_814B38A4:
/* 814B38A4 | 7F 84 E3 78 */	mr r4, r28
/* 814B38A8 | 38 60 00 00 */	li r3, 0x0
/* 814B38AC | 4B FF F1 9D */	bl SOiConclude
.L_814B38B0:
/* 814B38B0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814B38B4 | 48 14 5C 55 */	bl _restgpr_26
/* 814B38B8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814B38BC | 7C 08 03 A6 */	mtlr r0
/* 814B38C0 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814B38C4 | 4E 80 00 20 */	blr
.endfn SOPoll

# .text:0x85C | 0x814B38C8 | size: 0x10C
.fn SOInetAtoN, global
/* 814B38C8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814B38CC | 7C 08 02 A6 */	mflr r0
/* 814B38D0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814B38D4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814B38D8 | 48 14 5B E9 */	bl _savegpr_27
/* 814B38DC | 7C 7B 1B 78 */	mr r27, r3
/* 814B38E0 | 7C 9C 23 78 */	mr r28, r4
/* 814B38E4 | 38 81 00 0C */	addi r4, r1, 0xc
/* 814B38E8 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814B38EC | 38 60 00 00 */	li r3, 0x0
/* 814B38F0 | 4B FF F1 B5 */	bl SOiPrepareTempRm
/* 814B38F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B38F8 | 40 82 00 C4 */	bne .L_814B39BC
/* 814B38FC | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814B3900 | 40 82 00 0C */	bne .L_814B390C
/* 814B3904 | 3B C0 FF E4 */	li r30, -0x1c
/* 814B3908 | 48 00 00 A4 */	b .L_814B39AC
.L_814B390C:
/* 814B390C | 7F 63 DB 78 */	mr r3, r27
/* 814B3910 | 48 14 55 ED */	bl strlen
/* 814B3914 | 38 03 00 40 */	addi r0, r3, 0x40
/* 814B3918 | 38 60 00 0C */	li r3, 0xc
/* 814B391C | 54 1F 00 34 */	clrrwi r31, r0, 5
/* 814B3920 | 7F E4 FB 78 */	mr r4, r31
/* 814B3924 | 4B FF EF 21 */	bl SOiAlloc
/* 814B3928 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B392C | 7C 7D 1B 78 */	mr r29, r3
/* 814B3930 | 40 82 00 0C */	bne .L_814B393C
/* 814B3934 | 3B C0 FF CF */	li r30, -0x31
/* 814B3938 | 48 00 00 74 */	b .L_814B39AC
.L_814B393C:
/* 814B393C | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814B3940 | 3B C3 00 20 */	addi r30, r3, 0x20
/* 814B3944 | 41 82 00 10 */	beq .L_814B3954
/* 814B3948 | 7F C3 F3 78 */	mr r3, r30
/* 814B394C | 7F 64 DB 78 */	mr r4, r27
/* 814B3950 | 48 14 E9 B5 */	bl strcpy
.L_814B3954:
/* 814B3954 | 7F 63 DB 78 */	mr r3, r27
/* 814B3958 | 48 14 55 A5 */	bl strlen
/* 814B395C | 7C 66 1B 78 */	mr r6, r3
/* 814B3960 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 814B3964 | 7F C5 F3 78 */	mr r5, r30
/* 814B3968 | 7F A7 EB 78 */	mr r7, r29
/* 814B396C | 38 80 00 15 */	li r4, 0x15
/* 814B3970 | 39 00 00 04 */	li r8, 0x4
/* 814B3974 | 48 0B FB 35 */	bl fn_815734A8
/* 814B3978 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B397C | 7C 7E 1B 78 */	mr r30, r3
/* 814B3980 | 41 80 00 1C */	blt .L_814B399C
/* 814B3984 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814B3988 | 41 82 00 14 */	beq .L_814B399C
/* 814B398C | 7F 83 E3 78 */	mr r3, r28
/* 814B3990 | 7F A4 EB 78 */	mr r4, r29
/* 814B3994 | 38 A0 00 04 */	li r5, 0x4
/* 814B3998 | 4B E7 C8 99 */	bl memcpy
.L_814B399C:
/* 814B399C | 7F A4 EB 78 */	mr r4, r29
/* 814B39A0 | 7F E5 FB 78 */	mr r5, r31
/* 814B39A4 | 38 60 00 0C */	li r3, 0xc
/* 814B39A8 | 4B FF EF 85 */	bl SOiFree
.L_814B39AC:
/* 814B39AC | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 814B39B0 | 7F C4 F3 78 */	mr r4, r30
/* 814B39B4 | 38 60 00 00 */	li r3, 0x0
/* 814B39B8 | 4B FF F3 C5 */	bl SOiConcludeTempRm
.L_814B39BC:
/* 814B39BC | 39 61 00 30 */	addi r11, r1, 0x30
/* 814B39C0 | 48 14 5B 4D */	bl _restgpr_27
/* 814B39C4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814B39C8 | 7C 08 03 A6 */	mtlr r0
/* 814B39CC | 38 21 00 30 */	addi r1, r1, 0x30
/* 814B39D0 | 4E 80 00 20 */	blr
.endfn SOInetAtoN

# .text:0x968 | 0x814B39D4 | size: 0x54
.fn SOInetNtoA, global
/* 814B39D4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814B39D8 | 7C 08 02 A6 */	mflr r0
/* 814B39DC | 7C 68 1B 78 */	mr r8, r3
/* 814B39E0 | 3C 80 81 67 */	lis r4, lbl_8166E48C@ha
/* 814B39E4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814B39E8 | 38 84 E4 8C */	addi r4, r4, lbl_8166E48C@l
/* 814B39EC | 88 E8 00 02 */	lbz r7, 0x2(r8)
/* 814B39F0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814B39F4 | 3F E0 81 0D */	lis r31, ascii$1186@ha
/* 814B39F8 | 88 A3 00 00 */	lbz r5, 0x0(r3)
/* 814B39FC | 88 C3 00 01 */	lbz r6, 0x1(r3)
/* 814B3A00 | 38 7F 9B D8 */	addi r3, r31, ascii$1186@l
/* 814B3A04 | 89 08 00 03 */	lbz r8, 0x3(r8)
/* 814B3A08 | 4C C6 31 82 */	crclr cr1eq
/* 814B3A0C | 48 14 D0 75 */	bl sprintf
/* 814B3A10 | 38 7F 9B D8 */	addi r3, r31, ascii$1186@l
/* 814B3A14 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814B3A18 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814B3A1C | 7C 08 03 A6 */	mtlr r0
/* 814B3A20 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814B3A24 | 4E 80 00 20 */	blr
.endfn SOInetNtoA

# .text:0x9BC | 0x814B3A28 | size: 0x140
.fn SOInetPtoN, global
/* 814B3A28 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814B3A2C | 7C 08 02 A6 */	mflr r0
/* 814B3A30 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814B3A34 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814B3A38 | 48 14 5A 85 */	bl _savegpr_26
/* 814B3A3C | 7C 7A 1B 78 */	mr r26, r3
/* 814B3A40 | 7C 9E 23 78 */	mr r30, r4
/* 814B3A44 | 7C BB 2B 78 */	mr r27, r5
/* 814B3A48 | 38 81 00 0C */	addi r4, r1, 0xc
/* 814B3A4C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814B3A50 | 38 60 00 00 */	li r3, 0x0
/* 814B3A54 | 4B FF F0 51 */	bl SOiPrepareTempRm
/* 814B3A58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B3A5C | 40 82 00 F4 */	bne .L_814B3B50
/* 814B3A60 | 2C 1A 00 02 */	cmpwi r26, 0x2
/* 814B3A64 | 3B A0 00 00 */	li r29, 0x0
/* 814B3A68 | 41 82 00 08 */	beq .L_814B3A70
/* 814B3A6C | 48 00 00 08 */	b .L_814B3A74
.L_814B3A70:
/* 814B3A70 | 3B A0 00 04 */	li r29, 0x4
.L_814B3A74:
/* 814B3A74 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814B3A78 | 40 82 00 0C */	bne .L_814B3A84
/* 814B3A7C | 3B C0 FF FB */	li r30, -0x5
/* 814B3A80 | 48 00 00 C0 */	b .L_814B3B40
.L_814B3A84:
/* 814B3A84 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814B3A88 | 40 82 00 0C */	bne .L_814B3A94
/* 814B3A8C | 3B C0 FF E4 */	li r30, -0x1c
/* 814B3A90 | 48 00 00 B0 */	b .L_814B3B40
.L_814B3A94:
/* 814B3A94 | 7F C3 F3 78 */	mr r3, r30
/* 814B3A98 | 48 14 54 65 */	bl strlen
/* 814B3A9C | 38 03 00 40 */	addi r0, r3, 0x40
/* 814B3AA0 | 38 60 00 0C */	li r3, 0xc
/* 814B3AA4 | 54 1F 00 34 */	clrrwi r31, r0, 5
/* 814B3AA8 | 7F E4 FB 78 */	mr r4, r31
/* 814B3AAC | 4B FF ED 99 */	bl SOiAlloc
/* 814B3AB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B3AB4 | 7C 7C 1B 78 */	mr r28, r3
/* 814B3AB8 | 40 82 00 0C */	bne .L_814B3AC4
/* 814B3ABC | 3B C0 FF CF */	li r30, -0x31
/* 814B3AC0 | 48 00 00 80 */	b .L_814B3B40
.L_814B3AC4:
/* 814B3AC4 | 7F C4 F3 78 */	mr r4, r30
/* 814B3AC8 | 38 63 00 20 */	addi r3, r3, 0x20
/* 814B3ACC | 48 14 E8 39 */	bl strcpy
/* 814B3AD0 | 93 5C 00 00 */	stw r26, 0x0(r28)
/* 814B3AD4 | 7F A5 EB 78 */	mr r5, r29
/* 814B3AD8 | 38 7C 00 04 */	addi r3, r28, 0x4
/* 814B3ADC | 38 80 00 00 */	li r4, 0x0
/* 814B3AE0 | 4B E7 C8 55 */	bl memset
/* 814B3AE4 | 7F C3 F3 78 */	mr r3, r30
/* 814B3AE8 | 48 14 54 15 */	bl strlen
/* 814B3AEC | 7C 64 1B 78 */	mr r4, r3
/* 814B3AF0 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 814B3AF4 | 38 C4 00 01 */	addi r6, r4, 0x1
/* 814B3AF8 | 7F C5 F3 78 */	mr r5, r30
/* 814B3AFC | 7F 87 E3 78 */	mr r7, r28
/* 814B3B00 | 38 80 00 16 */	li r4, 0x16
/* 814B3B04 | 39 00 00 14 */	li r8, 0x14
/* 814B3B08 | 48 0B F9 A1 */	bl fn_815734A8
/* 814B3B0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B3B10 | 7C 7E 1B 78 */	mr r30, r3
/* 814B3B14 | 41 80 00 1C */	blt .L_814B3B30
/* 814B3B18 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814B3B1C | 41 82 00 14 */	beq .L_814B3B30
/* 814B3B20 | 7F 63 DB 78 */	mr r3, r27
/* 814B3B24 | 7F A5 EB 78 */	mr r5, r29
/* 814B3B28 | 38 9C 00 04 */	addi r4, r28, 0x4
/* 814B3B2C | 4B E7 C7 05 */	bl memcpy
.L_814B3B30:
/* 814B3B30 | 7F 84 E3 78 */	mr r4, r28
/* 814B3B34 | 7F E5 FB 78 */	mr r5, r31
/* 814B3B38 | 38 60 00 0C */	li r3, 0xc
/* 814B3B3C | 4B FF ED F1 */	bl SOiFree
.L_814B3B40:
/* 814B3B40 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 814B3B44 | 7F C4 F3 78 */	mr r4, r30
/* 814B3B48 | 38 60 00 00 */	li r3, 0x0
/* 814B3B4C | 4B FF F2 31 */	bl SOiConcludeTempRm
.L_814B3B50:
/* 814B3B50 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814B3B54 | 48 14 59 B5 */	bl _restgpr_26
/* 814B3B58 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814B3B5C | 7C 08 03 A6 */	mtlr r0
/* 814B3B60 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814B3B64 | 4E 80 00 20 */	blr
.endfn SOInetPtoN

# .text:0xAFC | 0x814B3B68 | size: 0x4
.fn SONtoHl, global
/* 814B3B68 | 4E 80 00 20 */	blr
.endfn SONtoHl

# .text:0xB00 | 0x814B3B6C | size: 0x8
.fn SONtoHs, global
/* 814B3B6C | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814B3B70 | 4E 80 00 20 */	blr
.endfn SONtoHs

# .text:0xB08 | 0x814B3B74 | size: 0x4
.fn SOHtoNl, global
/* 814B3B74 | 4E 80 00 20 */	blr
.endfn SOHtoNl

# .text:0xB0C | 0x814B3B78 | size: 0x8
.fn SOHtoNs, global
/* 814B3B78 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814B3B7C | 4E 80 00 20 */	blr
.endfn SOHtoNs

# .text:0xB14 | 0x814B3B80 | size: 0x2B8
.fn RecvFrom, local
/* 814B3B80 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814B3B84 | 7C 08 02 A6 */	mflr r0
/* 814B3B88 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814B3B8C | 39 61 00 40 */	addi r11, r1, 0x40
/* 814B3B90 | 48 14 59 19 */	bl _savegpr_21
/* 814B3B94 | 3D 20 00 01 */	lis r9, 0x1
/* 814B3B98 | 7C 79 1B 78 */	mr r25, r3
/* 814B3B9C | 38 09 80 00 */	addi r0, r9, -0x8000
/* 814B3BA0 | 7C 9A 23 78 */	mr r26, r4
/* 814B3BA4 | 7C 06 00 00 */	cmpw r6, r0
/* 814B3BA8 | 7C BB 2B 78 */	mr r27, r5
/* 814B3BAC | 7C DC 33 78 */	mr r28, r6
/* 814B3BB0 | 7C FD 3B 78 */	mr r29, r7
/* 814B3BB4 | 7D 1E 43 78 */	mr r30, r8
/* 814B3BB8 | 40 81 00 08 */	ble .L_814B3BC0
/* 814B3BBC | 7C 1C 03 78 */	mr r28, r0
.L_814B3BC0:
/* 814B3BC0 | 7F 23 CB 78 */	mr r3, r25
/* 814B3BC4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814B3BC8 | 4B FF ED 99 */	bl SOiPrepare
/* 814B3BCC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B3BD0 | 40 82 02 50 */	bne .L_814B3E20
/* 814B3BD4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814B3BD8 | 41 82 00 1C */	beq .L_814B3BF4
/* 814B3BDC | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 814B3BE0 | 28 00 00 08 */	cmplwi r0, 0x8
/* 814B3BE4 | 41 81 00 08 */	bgt .L_814B3BEC
/* 814B3BE8 | 40 80 00 0C */	bge .L_814B3BF4
.L_814B3BEC:
/* 814B3BEC | 3B 40 FF E4 */	li r26, -0x1c
/* 814B3BF0 | 48 00 02 24 */	b .L_814B3E14
.L_814B3BF4:
/* 814B3BF4 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814B3BF8 | 41 80 00 10 */	blt .L_814B3C08
/* 814B3BFC | 40 81 00 14 */	ble .L_814B3C10
/* 814B3C00 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814B3C04 | 40 82 00 0C */	bne .L_814B3C10
.L_814B3C08:
/* 814B3C08 | 3B 40 FF E4 */	li r26, -0x1c
/* 814B3C0C | 48 00 02 08 */	b .L_814B3E14
.L_814B3C10:
/* 814B3C10 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814B3C14 | 3B E0 00 01 */	li r31, 0x1
/* 814B3C18 | 41 82 00 90 */	beq .L_814B3CA8
/* 814B3C1C | 57 60 06 FF */	clrlwi. r0, r27, 27
/* 814B3C20 | 3B 00 00 00 */	li r24, 0x0
/* 814B3C24 | 38 80 00 00 */	li r4, 0x0
/* 814B3C28 | 40 82 00 20 */	bne .L_814B3C48
/* 814B3C2C | 57 80 D8 08 */	slwi r0, r28, 27
/* 814B3C30 | 57 83 0F FE */	srwi r3, r28, 31
/* 814B3C34 | 7C 03 00 50 */	subf r0, r3, r0
/* 814B3C38 | 54 00 28 3E */	rotlwi r0, r0, 5
/* 814B3C3C | 7C 00 1A 15 */	add. r0, r0, r3
/* 814B3C40 | 40 82 00 08 */	bne .L_814B3C48
/* 814B3C44 | 38 80 00 01 */	li r4, 0x1
.L_814B3C48:
/* 814B3C48 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B3C4C | 41 82 00 50 */	beq .L_814B3C9C
/* 814B3C50 | 3A E0 00 01 */	li r23, 0x1
/* 814B3C54 | 4B FF EB 99 */	bl SOiIsBufferAddrCheck
/* 814B3C58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B3C5C | 41 82 00 34 */	beq .L_814B3C90
/* 814B3C60 | 57 64 00 FE */	clrlwi r4, r27, 3
/* 814B3C64 | 3C 00 10 00 */	lis r0, 0x1000
/* 814B3C68 | 7C 04 00 40 */	cmplw r4, r0
/* 814B3C6C | 38 60 00 00 */	li r3, 0x0
/* 814B3C70 | 41 80 00 14 */	blt .L_814B3C84
/* 814B3C74 | 3C 00 18 00 */	lis r0, 0x1800
/* 814B3C78 | 7C 04 00 40 */	cmplw r4, r0
/* 814B3C7C | 40 80 00 08 */	bge .L_814B3C84
/* 814B3C80 | 38 60 00 01 */	li r3, 0x1
.L_814B3C84:
/* 814B3C84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B3C88 | 40 82 00 08 */	bne .L_814B3C90
/* 814B3C8C | 3A E0 00 00 */	li r23, 0x0
.L_814B3C90:
/* 814B3C90 | 2C 17 00 00 */	cmpwi r23, 0x0
/* 814B3C94 | 41 82 00 08 */	beq .L_814B3C9C
/* 814B3C98 | 3B 00 00 01 */	li r24, 0x1
.L_814B3C9C:
/* 814B3C9C | 2C 18 00 00 */	cmpwi r24, 0x0
/* 814B3CA0 | 40 82 00 08 */	bne .L_814B3CA8
/* 814B3CA4 | 3B E0 00 00 */	li r31, 0x0
.L_814B3CA8:
/* 814B3CA8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814B3CAC | 40 82 00 0C */	bne .L_814B3CB8
/* 814B3CB0 | 38 60 00 00 */	li r3, 0x0
/* 814B3CB4 | 48 00 00 08 */	b .L_814B3CBC
.L_814B3CB8:
/* 814B3CB8 | 88 7E 00 00 */	lbz r3, 0x0(r30)
.L_814B3CBC:
/* 814B3CBC | 38 03 00 5F */	addi r0, r3, 0x5f
/* 814B3CC0 | 38 60 00 0C */	li r3, 0xc
/* 814B3CC4 | 54 18 00 34 */	clrrwi r24, r0, 5
/* 814B3CC8 | 7F 04 C3 78 */	mr r4, r24
/* 814B3CCC | 4B FF EB 79 */	bl SOiAlloc
/* 814B3CD0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814B3CD4 | 7C 76 1B 78 */	mr r22, r3
/* 814B3CD8 | 40 82 00 18 */	bne .L_814B3CF0
/* 814B3CDC | 38 1C 00 1F */	addi r0, r28, 0x1f
/* 814B3CE0 | 38 60 00 0D */	li r3, 0xd
/* 814B3CE4 | 54 04 00 34 */	clrrwi r4, r0, 5
/* 814B3CE8 | 4B FF EB 5D */	bl SOiAlloc
/* 814B3CEC | 48 00 00 08 */	b .L_814B3CF4
.L_814B3CF0:
/* 814B3CF0 | 7F 63 DB 78 */	mr r3, r27
.L_814B3CF4:
/* 814B3CF4 | 2C 16 00 00 */	cmpwi r22, 0x0
/* 814B3CF8 | 7C 77 1B 78 */	mr r23, r3
/* 814B3CFC | 41 82 00 0C */	beq .L_814B3D08
/* 814B3D00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B3D04 | 40 82 00 0C */	bne .L_814B3D10
.L_814B3D08:
/* 814B3D08 | 3B 40 FF CF */	li r26, -0x31
/* 814B3D0C | 48 00 00 DC */	b .L_814B3DE8
.L_814B3D10:
/* 814B3D10 | 93 56 00 20 */	stw r26, 0x20(r22)
/* 814B3D14 | 38 96 00 20 */	addi r4, r22, 0x20
/* 814B3D18 | 38 00 00 08 */	li r0, 0x8
/* 814B3D1C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814B3D20 | 93 B6 00 24 */	stw r29, 0x24(r22)
/* 814B3D24 | 3A A4 00 20 */	addi r21, r4, 0x20
/* 814B3D28 | 90 96 00 00 */	stw r4, 0x0(r22)
/* 814B3D2C | 90 16 00 04 */	stw r0, 0x4(r22)
/* 814B3D30 | 90 76 00 08 */	stw r3, 0x8(r22)
/* 814B3D34 | 93 96 00 0C */	stw r28, 0xc(r22)
/* 814B3D38 | 40 82 00 30 */	bne .L_814B3D68
/* 814B3D3C | 38 00 00 00 */	li r0, 0x0
/* 814B3D40 | 7E C7 B3 78 */	mr r7, r22
/* 814B3D44 | 90 16 00 10 */	stw r0, 0x10(r22)
/* 814B3D48 | 38 80 00 0C */	li r4, 0xc
/* 814B3D4C | 38 A0 00 01 */	li r5, 0x1
/* 814B3D50 | 38 C0 00 02 */	li r6, 0x2
/* 814B3D54 | 90 16 00 14 */	stw r0, 0x14(r22)
/* 814B3D58 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814B3D5C | 48 0B FA 9D */	bl IOS_Ioctlv
/* 814B3D60 | 7C 7A 1B 78 */	mr r26, r3
/* 814B3D64 | 48 00 00 64 */	b .L_814B3DC8
.L_814B3D68:
/* 814B3D68 | 88 BE 00 00 */	lbz r5, 0x0(r30)
/* 814B3D6C | 7E A3 AB 78 */	mr r3, r21
/* 814B3D70 | 7F C4 F3 78 */	mr r4, r30
/* 814B3D74 | 4B E7 C4 BD */	bl memcpy
/* 814B3D78 | 92 B6 00 10 */	stw r21, 0x10(r22)
/* 814B3D7C | 7E C7 B3 78 */	mr r7, r22
/* 814B3D80 | 38 80 00 0C */	li r4, 0xc
/* 814B3D84 | 38 A0 00 01 */	li r5, 0x1
/* 814B3D88 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 814B3D8C | 38 C0 00 02 */	li r6, 0x2
/* 814B3D90 | 90 16 00 14 */	stw r0, 0x14(r22)
/* 814B3D94 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814B3D98 | 48 0B FA 61 */	bl IOS_Ioctlv
/* 814B3D9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B3DA0 | 7C 7A 1B 78 */	mr r26, r3
/* 814B3DA4 | 41 80 00 24 */	blt .L_814B3DC8
/* 814B3DA8 | 88 BE 00 00 */	lbz r5, 0x0(r30)
/* 814B3DAC | 7F C3 F3 78 */	mr r3, r30
/* 814B3DB0 | 88 15 00 00 */	lbz r0, 0x0(r21)
/* 814B3DB4 | 7E A4 AB 78 */	mr r4, r21
/* 814B3DB8 | 7C 05 00 40 */	cmplw r5, r0
/* 814B3DBC | 40 81 00 08 */	ble .L_814B3DC4
/* 814B3DC0 | 7C 05 03 78 */	mr r5, r0
.L_814B3DC4:
/* 814B3DC4 | 4B E7 C4 6D */	bl memcpy
.L_814B3DC8:
/* 814B3DC8 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814B3DCC | 41 80 00 1C */	blt .L_814B3DE8
/* 814B3DD0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814B3DD4 | 40 82 00 14 */	bne .L_814B3DE8
/* 814B3DD8 | 7F 63 DB 78 */	mr r3, r27
/* 814B3DDC | 7E E4 BB 78 */	mr r4, r23
/* 814B3DE0 | 7F 85 E3 78 */	mr r5, r28
/* 814B3DE4 | 4B E7 C4 4D */	bl memcpy
.L_814B3DE8:
/* 814B3DE8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814B3DEC | 40 82 00 18 */	bne .L_814B3E04
/* 814B3DF0 | 38 1C 00 1F */	addi r0, r28, 0x1f
/* 814B3DF4 | 7E E4 BB 78 */	mr r4, r23
/* 814B3DF8 | 54 05 00 34 */	clrrwi r5, r0, 5
/* 814B3DFC | 38 60 00 0D */	li r3, 0xd
/* 814B3E00 | 4B FF EB 2D */	bl SOiFree
.L_814B3E04:
/* 814B3E04 | 7E C4 B3 78 */	mr r4, r22
/* 814B3E08 | 7F 05 C3 78 */	mr r5, r24
/* 814B3E0C | 38 60 00 0C */	li r3, 0xc
/* 814B3E10 | 4B FF EB 1D */	bl SOiFree
.L_814B3E14:
/* 814B3E14 | 7F 23 CB 78 */	mr r3, r25
/* 814B3E18 | 7F 44 D3 78 */	mr r4, r26
/* 814B3E1C | 4B FF EC 2D */	bl SOiConclude
.L_814B3E20:
/* 814B3E20 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814B3E24 | 48 14 56 D1 */	bl _restgpr_21
/* 814B3E28 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814B3E2C | 7C 08 03 A6 */	mtlr r0
/* 814B3E30 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814B3E34 | 4E 80 00 20 */	blr
.endfn RecvFrom

# .text:0xDCC | 0x814B3E38 | size: 0x22C
.fn SendTo, local
/* 814B3E38 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814B3E3C | 7C 08 02 A6 */	mflr r0
/* 814B3E40 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814B3E44 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814B3E48 | 48 14 56 65 */	bl _savegpr_22
/* 814B3E4C | 7C 9A 23 78 */	mr r26, r4
/* 814B3E50 | 7C 79 1B 78 */	mr r25, r3
/* 814B3E54 | 7C BB 2B 78 */	mr r27, r5
/* 814B3E58 | 7C DC 33 78 */	mr r28, r6
/* 814B3E5C | 7C FD 3B 78 */	mr r29, r7
/* 814B3E60 | 7D 1E 43 78 */	mr r30, r8
/* 814B3E64 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814B3E68 | 4B FF EA F9 */	bl SOiPrepare
/* 814B3E6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B3E70 | 40 82 01 DC */	bne .L_814B404C
/* 814B3E74 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814B3E78 | 41 82 00 1C */	beq .L_814B3E94
/* 814B3E7C | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 814B3E80 | 28 00 00 08 */	cmplwi r0, 0x8
/* 814B3E84 | 41 81 00 08 */	bgt .L_814B3E8C
/* 814B3E88 | 40 80 00 0C */	bge .L_814B3E94
.L_814B3E8C:
/* 814B3E8C | 3B 00 FF E4 */	li r24, -0x1c
/* 814B3E90 | 48 00 01 B0 */	b .L_814B4040
.L_814B3E94:
/* 814B3E94 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814B3E98 | 41 80 00 10 */	blt .L_814B3EA8
/* 814B3E9C | 40 81 00 14 */	ble .L_814B3EB0
/* 814B3EA0 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814B3EA4 | 40 82 00 0C */	bne .L_814B3EB0
.L_814B3EA8:
/* 814B3EA8 | 3B 00 FF E4 */	li r24, -0x1c
/* 814B3EAC | 48 00 01 94 */	b .L_814B4040
.L_814B3EB0:
/* 814B3EB0 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814B3EB4 | 3B E0 00 01 */	li r31, 0x1
/* 814B3EB8 | 41 82 00 90 */	beq .L_814B3F48
/* 814B3EBC | 57 60 06 FF */	clrlwi. r0, r27, 27
/* 814B3EC0 | 3B 00 00 00 */	li r24, 0x0
/* 814B3EC4 | 38 80 00 00 */	li r4, 0x0
/* 814B3EC8 | 40 82 00 20 */	bne .L_814B3EE8
/* 814B3ECC | 57 80 D8 08 */	slwi r0, r28, 27
/* 814B3ED0 | 57 83 0F FE */	srwi r3, r28, 31
/* 814B3ED4 | 7C 03 00 50 */	subf r0, r3, r0
/* 814B3ED8 | 54 00 28 3E */	rotlwi r0, r0, 5
/* 814B3EDC | 7C 00 1A 15 */	add. r0, r0, r3
/* 814B3EE0 | 40 82 00 08 */	bne .L_814B3EE8
/* 814B3EE4 | 38 80 00 01 */	li r4, 0x1
.L_814B3EE8:
/* 814B3EE8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814B3EEC | 41 82 00 50 */	beq .L_814B3F3C
/* 814B3EF0 | 3A E0 00 01 */	li r23, 0x1
/* 814B3EF4 | 4B FF E8 F9 */	bl SOiIsBufferAddrCheck
/* 814B3EF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B3EFC | 41 82 00 34 */	beq .L_814B3F30
/* 814B3F00 | 57 64 00 FE */	clrlwi r4, r27, 3
/* 814B3F04 | 3C 00 10 00 */	lis r0, 0x1000
/* 814B3F08 | 7C 04 00 40 */	cmplw r4, r0
/* 814B3F0C | 38 60 00 00 */	li r3, 0x0
/* 814B3F10 | 41 80 00 14 */	blt .L_814B3F24
/* 814B3F14 | 3C 00 18 00 */	lis r0, 0x1800
/* 814B3F18 | 7C 04 00 40 */	cmplw r4, r0
/* 814B3F1C | 40 80 00 08 */	bge .L_814B3F24
/* 814B3F20 | 38 60 00 01 */	li r3, 0x1
.L_814B3F24:
/* 814B3F24 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B3F28 | 40 82 00 08 */	bne .L_814B3F30
/* 814B3F2C | 3A E0 00 00 */	li r23, 0x0
.L_814B3F30:
/* 814B3F30 | 2C 17 00 00 */	cmpwi r23, 0x0
/* 814B3F34 | 41 82 00 08 */	beq .L_814B3F3C
/* 814B3F38 | 3B 00 00 01 */	li r24, 0x1
.L_814B3F3C:
/* 814B3F3C | 2C 18 00 00 */	cmpwi r24, 0x0
/* 814B3F40 | 40 82 00 08 */	bne .L_814B3F48
/* 814B3F44 | 3B E0 00 00 */	li r31, 0x0
.L_814B3F48:
/* 814B3F48 | 38 60 00 0C */	li r3, 0xc
/* 814B3F4C | 38 80 00 60 */	li r4, 0x60
/* 814B3F50 | 4B FF E8 F5 */	bl SOiAlloc
/* 814B3F54 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814B3F58 | 7C 76 1B 78 */	mr r22, r3
/* 814B3F5C | 40 82 00 1C */	bne .L_814B3F78
/* 814B3F60 | 38 1C 00 1F */	addi r0, r28, 0x1f
/* 814B3F64 | 38 60 00 0E */	li r3, 0xe
/* 814B3F68 | 54 04 00 34 */	clrrwi r4, r0, 5
/* 814B3F6C | 4B FF E8 D9 */	bl SOiAlloc
/* 814B3F70 | 7C 77 1B 78 */	mr r23, r3
/* 814B3F74 | 48 00 00 08 */	b .L_814B3F7C
.L_814B3F78:
/* 814B3F78 | 7F 77 DB 78 */	mr r23, r27
.L_814B3F7C:
/* 814B3F7C | 2C 16 00 00 */	cmpwi r22, 0x0
/* 814B3F80 | 41 82 00 0C */	beq .L_814B3F8C
/* 814B3F84 | 2C 17 00 00 */	cmpwi r23, 0x0
/* 814B3F88 | 40 82 00 0C */	bne .L_814B3F94
.L_814B3F8C:
/* 814B3F8C | 3B 00 FF CF */	li r24, -0x31
/* 814B3F90 | 48 00 00 84 */	b .L_814B4014
.L_814B3F94:
/* 814B3F94 | 93 56 00 20 */	stw r26, 0x20(r22)
/* 814B3F98 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814B3F9C | 3B 16 00 20 */	addi r24, r22, 0x20
/* 814B3FA0 | 93 B6 00 24 */	stw r29, 0x24(r22)
/* 814B3FA4 | 40 82 00 10 */	bne .L_814B3FB4
/* 814B3FA8 | 38 00 00 00 */	li r0, 0x0
/* 814B3FAC | 90 18 00 08 */	stw r0, 0x8(r24)
/* 814B3FB0 | 48 00 00 1C */	b .L_814B3FCC
.L_814B3FB4:
/* 814B3FB4 | 38 00 00 01 */	li r0, 0x1
/* 814B3FB8 | 7F C4 F3 78 */	mr r4, r30
/* 814B3FBC | 90 18 00 08 */	stw r0, 0x8(r24)
/* 814B3FC0 | 38 78 00 0C */	addi r3, r24, 0xc
/* 814B3FC4 | 88 BE 00 00 */	lbz r5, 0x0(r30)
/* 814B3FC8 | 4B E7 C2 69 */	bl memcpy
.L_814B3FCC:
/* 814B3FCC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814B3FD0 | 40 82 00 14 */	bne .L_814B3FE4
/* 814B3FD4 | 7E E3 BB 78 */	mr r3, r23
/* 814B3FD8 | 7F 64 DB 78 */	mr r4, r27
/* 814B3FDC | 7F 85 E3 78 */	mr r5, r28
/* 814B3FE0 | 4B E7 C2 51 */	bl memcpy
.L_814B3FE4:
/* 814B3FE4 | 92 F6 00 00 */	stw r23, 0x0(r22)
/* 814B3FE8 | 38 00 00 28 */	li r0, 0x28
/* 814B3FEC | 7E C7 B3 78 */	mr r7, r22
/* 814B3FF0 | 38 80 00 0D */	li r4, 0xd
/* 814B3FF4 | 93 96 00 04 */	stw r28, 0x4(r22)
/* 814B3FF8 | 38 A0 00 02 */	li r5, 0x2
/* 814B3FFC | 38 C0 00 00 */	li r6, 0x0
/* 814B4000 | 93 16 00 08 */	stw r24, 0x8(r22)
/* 814B4004 | 90 16 00 0C */	stw r0, 0xc(r22)
/* 814B4008 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814B400C | 48 0B F7 ED */	bl IOS_Ioctlv
/* 814B4010 | 7C 78 1B 78 */	mr r24, r3
.L_814B4014:
/* 814B4014 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814B4018 | 40 82 00 18 */	bne .L_814B4030
/* 814B401C | 38 1C 00 1F */	addi r0, r28, 0x1f
/* 814B4020 | 7E E4 BB 78 */	mr r4, r23
/* 814B4024 | 54 05 00 34 */	clrrwi r5, r0, 5
/* 814B4028 | 38 60 00 0E */	li r3, 0xe
/* 814B402C | 4B FF E9 01 */	bl SOiFree
.L_814B4030:
/* 814B4030 | 7E C4 B3 78 */	mr r4, r22
/* 814B4034 | 38 60 00 0C */	li r3, 0xc
/* 814B4038 | 38 A0 00 60 */	li r5, 0x60
/* 814B403C | 4B FF E8 F1 */	bl SOiFree
.L_814B4040:
/* 814B4040 | 7F 23 CB 78 */	mr r3, r25
/* 814B4044 | 7F 04 C3 78 */	mr r4, r24
/* 814B4048 | 4B FF EA 01 */	bl SOiConclude
.L_814B404C:
/* 814B404C | 39 61 00 40 */	addi r11, r1, 0x40
/* 814B4050 | 48 14 54 A9 */	bl _restgpr_22
/* 814B4054 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814B4058 | 7C 08 03 A6 */	mtlr r0
/* 814B405C | 38 21 00 40 */	addi r1, r1, 0x40
/* 814B4060 | 4E 80 00 20 */	blr
.endfn SendTo

# 0x8166E440..0x8166E498 | size: 0x58
.data
.balign 8

# .data:0x0 | 0x8166E440 | size: 0x4C
.obj lbl_8166E440, global
	.4byte 0x3C3C2052
	.4byte 0x564C5F53
	.4byte 0x444B202D
	.4byte 0x20534F43
	.4byte 0x4B455420
	.4byte 0x0972656C
	.4byte 0x65617365
	.4byte 0x20627569
	.4byte 0x6C643A20
	.4byte 0x44656320
	.4byte 0x31322032
	.4byte 0x30303820
	.4byte 0x30333A30
	.4byte 0x363A3137
	.4byte 0x20283078
	.4byte 0x34313939
	.4byte 0x5F363038
	.4byte 0x33312920
	.4byte 0x3E3E0000
.endobj lbl_8166E440

# .data:0x4C | 0x8166E48C | size: 0xC
.obj lbl_8166E48C, global
	.string "%d.%d.%d.%d"
.endobj lbl_8166E48C

# 0x81697CD8..0x81697CE0 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697CD8 | size: 0x4
.obj __SOCKETVersion, global
	.4byte lbl_8166E440
.endobj __SOCKETVersion

# .sdata:0x4 | 0x81697CDC | size: 0x4
.obj gap_11_81697CDC_sdata, global
.hidden gap_11_81697CDC_sdata
	.4byte 0x00000000
.endobj gap_11_81697CDC_sdata

# 0x81698E60..0x81698E68 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698E60 | size: 0x8
.obj soSocketRegistered, local
	.skip 0x8
.endobj soSocketRegistered
