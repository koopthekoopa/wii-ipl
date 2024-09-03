.include "macros.inc"
.file "iplBoardSD.cpp"

# 0x813960FC..0x81396370 | size: 0x274
.text
.balign 4

# .text:0x0 | 0x813960FC | size: 0x10
# ipl::scene::BoardSD::BoardSD()
.fn __ct__Q33ipl5scene7BoardSDFv, global
/* 813960FC | 38 00 00 00 */	li r0, 0x0
/* 81396100 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 81396104 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 81396108 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene7BoardSDFv

# .text:0x10 | 0x8139610C | size: 0x1BC
# ipl::scene::BoardSD::update()
.fn update__Q33ipl5scene7BoardSDFv, global
/* 8139610C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81396110 | 7C 08 02 A6 */	mflr r0
/* 81396114 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81396118 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139611C | 48 26 33 AD */	bl _savegpr_29
/* 81396120 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81396124 | 7C 7D 1B 78 */	mr r29, r3
/* 81396128 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8139612C | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 81396130 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81396134 | 41 82 00 0C */	beq .L_81396140
/* 81396138 | 38 80 00 00 */	li r4, 0x0
/* 8139613C | 48 00 00 08 */	b .L_81396144
.L_81396140:
/* 81396140 | 80 84 00 7C */	lwz r4, 0x7c(r4)
.L_81396144:
/* 81396144 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81396148 | 3B C4 00 18 */	addi r30, r4, 0x18
/* 8139614C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81396150 | 41 82 01 04 */	beq .L_81396254
/* 81396154 | 40 80 00 14 */	bge .L_81396168
/* 81396158 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139615C | 41 82 00 18 */	beq .L_81396174
/* 81396160 | 40 80 00 98 */	bge .L_813961F8
/* 81396164 | 48 00 01 4C */	b .L_813962B0
.L_81396168:
/* 81396168 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 8139616C | 40 80 01 44 */	bge .L_813962B0
/* 81396170 | 48 00 01 0C */	b .L_8139627C
.L_81396174:
/* 81396174 | 7F C3 F3 78 */	mr r3, r30
/* 81396178 | 4B FC 8E 75 */	bl is_working__Q23ipl10SDVFWorkerFv
/* 8139617C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81396180 | 40 82 01 30 */	bne .L_813962B0
/* 81396184 | 7F C3 F3 78 */	mr r3, r30
/* 81396188 | 4B FC 8E E1 */	bl get_sd_state__Q23ipl10SDVFWorkerFv
/* 8139618C | 2C 03 00 02 */	cmpwi r3, 0x2
/* 81396190 | 41 82 00 24 */	beq .L_813961B4
/* 81396194 | 40 80 00 10 */	bge .L_813961A4
/* 81396198 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8139619C | 40 80 00 50 */	bge .L_813961EC
/* 813961A0 | 48 00 01 10 */	b .L_813962B0
.L_813961A4:
/* 813961A4 | 2C 03 00 05 */	cmpwi r3, 0x5
/* 813961A8 | 41 82 00 20 */	beq .L_813961C8
/* 813961AC | 40 80 01 04 */	bge .L_813962B0
/* 813961B0 | 48 00 00 30 */	b .L_813961E0
.L_813961B4:
/* 813961B4 | 38 00 00 01 */	li r0, 0x1
/* 813961B8 | 7F C3 F3 78 */	mr r3, r30
/* 813961BC | 90 1D 00 04 */	stw r0, 0x4(r29)
/* 813961C0 | 4B FC 8F 1D */	bl mount_sd_async__Q23ipl10SDVFWorkerFv
/* 813961C4 | 48 00 00 EC */	b .L_813962B0
.L_813961C8:
/* 813961C8 | 3B E0 00 01 */	li r31, 0x1
/* 813961CC | 7F C3 F3 78 */	mr r3, r30
/* 813961D0 | 93 FD 00 04 */	stw r31, 0x4(r29)
/* 813961D4 | 4B FC 8F 11 */	bl prepare_cdb_backup_to_sd_async__Q23ipl10SDVFWorkerFv
/* 813961D8 | 93 FD 00 00 */	stw r31, 0x0(r29)
/* 813961DC | 48 00 00 D4 */	b .L_813962B0
.L_813961E0:
/* 813961E0 | 38 00 00 01 */	li r0, 0x1
/* 813961E4 | 90 1D 00 04 */	stw r0, 0x4(r29)
/* 813961E8 | 48 00 00 C8 */	b .L_813962B0
.L_813961EC:
/* 813961EC | 38 00 00 02 */	li r0, 0x2
/* 813961F0 | 90 1D 00 04 */	stw r0, 0x4(r29)
/* 813961F4 | 48 00 00 BC */	b .L_813962B0
.L_813961F8:
/* 813961F8 | 38 00 00 01 */	li r0, 0x1
/* 813961FC | 90 03 00 04 */	stw r0, 0x4(r3)
/* 81396200 | 7F C3 F3 78 */	mr r3, r30
/* 81396204 | 4B FC 8D E9 */	bl is_working__Q23ipl10SDVFWorkerFv
/* 81396208 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139620C | 40 82 00 A4 */	bne .L_813962B0
/* 81396210 | 7F C3 F3 78 */	mr r3, r30
/* 81396214 | 4B FC 8E 05 */	bl get_async_result__Q23ipl10SDVFWorkerFv
/* 81396218 | 7C 64 1B 78 */	mr r4, r3
/* 8139621C | 7F A3 EB 78 */	mr r3, r29
/* 81396220 | 48 00 00 A9 */	bl error_handling__Q33ipl5scene7BoardSDFi
/* 81396224 | 7F C3 F3 78 */	mr r3, r30
/* 81396228 | 4B FC 8D F1 */	bl get_async_result__Q23ipl10SDVFWorkerFv
/* 8139622C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81396230 | 40 82 00 10 */	bne .L_81396240
/* 81396234 | 38 00 00 02 */	li r0, 0x2
/* 81396238 | 90 1D 00 00 */	stw r0, 0x0(r29)
/* 8139623C | 48 00 00 74 */	b .L_813962B0
.L_81396240:
/* 81396240 | 7F C3 F3 78 */	mr r3, r30
/* 81396244 | 4B FC 8E 99 */	bl mount_sd_async__Q23ipl10SDVFWorkerFv
/* 81396248 | 38 00 00 00 */	li r0, 0x0
/* 8139624C | 90 1D 00 00 */	stw r0, 0x0(r29)
/* 81396250 | 48 00 00 60 */	b .L_813962B0
.L_81396254:
/* 81396254 | 38 00 00 01 */	li r0, 0x1
/* 81396258 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 8139625C | 48 0F 35 B5 */	bl fn_81489810
/* 81396260 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 81396264 | 41 82 00 4C */	beq .L_813962B0
/* 81396268 | 7F C3 F3 78 */	mr r3, r30
/* 8139626C | 4B FC 8E 81 */	bl cleanup_cdb_backup_to_sd_async__Q23ipl10SDVFWorkerFv
/* 81396270 | 38 00 00 03 */	li r0, 0x3
/* 81396274 | 90 1D 00 00 */	stw r0, 0x0(r29)
/* 81396278 | 48 00 00 38 */	b .L_813962B0
.L_8139627C:
/* 8139627C | 7F C3 F3 78 */	mr r3, r30
/* 81396280 | 4B FC 8D 6D */	bl is_working__Q23ipl10SDVFWorkerFv
/* 81396284 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81396288 | 40 82 00 28 */	bne .L_813962B0
/* 8139628C | 7F C3 F3 78 */	mr r3, r30
/* 81396290 | 4B FC 8D 89 */	bl get_async_result__Q23ipl10SDVFWorkerFv
/* 81396294 | 7C 64 1B 78 */	mr r4, r3
/* 81396298 | 7F A3 EB 78 */	mr r3, r29
/* 8139629C | 48 00 00 2D */	bl error_handling__Q33ipl5scene7BoardSDFi
/* 813962A0 | 7F C3 F3 78 */	mr r3, r30
/* 813962A4 | 4B FC 8E 39 */	bl mount_sd_async__Q23ipl10SDVFWorkerFv
/* 813962A8 | 38 00 00 00 */	li r0, 0x0
/* 813962AC | 90 1D 00 00 */	stw r0, 0x0(r29)
.L_813962B0:
/* 813962B0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813962B4 | 48 26 32 61 */	bl _restgpr_29
/* 813962B8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813962BC | 7C 08 03 A6 */	mtlr r0
/* 813962C0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813962C4 | 4E 80 00 20 */	blr
.endfn update__Q33ipl5scene7BoardSDFv

# .text:0x1CC | 0x813962C8 | size: 0xA8
# ipl::scene::BoardSD::error_handling(int)
.fn error_handling__Q33ipl5scene7BoardSDFi, global
/* 813962C8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813962CC | 7C 08 02 A6 */	mflr r0
/* 813962D0 | 2C 04 FF FB */	cmpwi r4, -0x5
/* 813962D4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813962D8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813962DC | 41 82 00 5C */	beq .L_81396338
/* 813962E0 | 40 80 00 7C */	bge .L_8139635C
/* 813962E4 | 2C 04 FF F8 */	cmpwi r4, -0x8
/* 813962E8 | 41 82 00 08 */	beq .L_813962F0
/* 813962EC | 48 00 00 70 */	b .L_8139635C
.L_813962F0:
/* 813962F0 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813962F4 | 3C 80 81 65 */	lis r4, lbl_8164B698@ha
/* 813962F8 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813962FC | 3C C0 81 65 */	lis r6, lbl_8164B6A3@ha
/* 81396300 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 81396304 | 38 84 B6 98 */	addi r4, r4, lbl_8164B698@l
/* 81396308 | 38 C6 B6 A3 */	addi r6, r6, lbl_8164B6A3@l
/* 8139630C | 38 A0 FF F8 */	li r5, -0x8
/* 81396310 | 38 E0 00 75 */	li r7, 0x75
/* 81396314 | 4B FC 03 E5 */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 81396318 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8139631C | 38 80 00 01 */	li r4, 0x1
/* 81396320 | 38 A0 00 02 */	li r5, 0x2
/* 81396324 | 38 C0 00 00 */	li r6, 0x0
/* 81396328 | 38 E0 00 00 */	li r7, 0x0
/* 8139632C | 39 00 FF FF */	li r8, -0x1
/* 81396330 | 4B FC 01 E5 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
/* 81396334 | 48 00 00 28 */	b .L_8139635C
.L_81396338:
/* 81396338 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8139633C | 38 80 00 01 */	li r4, 0x1
/* 81396340 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81396344 | 38 A0 00 01 */	li r5, 0x1
/* 81396348 | 80 63 00 98 */	lwz r3, 0x98(r3)
/* 8139634C | 38 C0 00 00 */	li r6, 0x0
/* 81396350 | 38 E0 00 00 */	li r7, 0x0
/* 81396354 | 39 00 FF FF */	li r8, -0x1
/* 81396358 | 4B FC 01 BD */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_8139635C:
/* 8139635C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81396360 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81396364 | 7C 08 03 A6 */	mtlr r0
/* 81396368 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139636C | 4E 80 00 20 */	blr
.endfn error_handling__Q33ipl5scene7BoardSDFi

# 0x8164B698..0x8164B6B8 | size: 0x20
.data
.balign 8

# .data:0x0 | 0x8164B698 | size: 0xB
.obj lbl_8164B698, global
	.string "SDVFWorker"
.endobj lbl_8164B698

# .data:0xB | 0x8164B6A3 | size: 0x15
.obj lbl_8164B6A3, global
	.4byte 0x69706C42
	.4byte 0x6F617264
	.4byte 0x53442E63
	.4byte 0x70700000
	.4byte 0x00000000
	.byte 0x00
.endobj lbl_8164B6A3
