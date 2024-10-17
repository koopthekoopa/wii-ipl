.include "macros.inc"
.file "snd_RemoteSpeakerManager.cpp"

# 0x81105C88..0x81105F40 | size: 0x2B8
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x81105C88 | size: 0x2B8
.obj instance$2395, local
	.skip 0x2B8
.endobj instance$2395

# 0x8150398C..0x81503BE0 | size: 0x254
.text
.balign 4

# .text:0x0 | 0x8150398C | size: 0x98
# nw4r::snd::detail::RemoteSpeakerManager::GetInstance()
.fn GetInstance__Q44nw4r3snd6detail20RemoteSpeakerManagerFv, global
/* 8150398C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81503990 | 7C 08 02 A6 */	mflr r0
/* 81503994 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81503998 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8150399C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 815039A0 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 815039A4 | 88 0D AE B8 */	lbz r0, "@GUARD@instance$2395"@sda21(r0)
/* 815039A8 | 7C 00 07 75 */	extsb. r0, r0
/* 815039AC | 40 82 00 54 */	bne .L_81503A00
/* 815039B0 | 3C 60 81 10 */	lis r3, instance$2395@ha
/* 815039B4 | 38 00 00 00 */	li r0, 0x0
/* 815039B8 | 3B C3 5C 88 */	addi r30, r3, instance$2395@l
/* 815039BC | 98 03 5C 88 */	stb r0, instance$2395@l(r3)
/* 815039C0 | 3B BE 00 38 */	addi r29, r30, 0x38
/* 815039C4 | 3B FE 02 B8 */	addi r31, r30, 0x2b8
.L_815039C8:
/* 815039C8 | 7F A3 EB 78 */	mr r3, r29
/* 815039CC | 4B FF FB 3D */	bl __ct__Q34nw4r3snd13RemoteSpeakerFv
/* 815039D0 | 3B BD 00 A0 */	addi r29, r29, 0xa0
/* 815039D4 | 7C 1D F8 40 */	cmplw r29, r31
/* 815039D8 | 41 80 FF F0 */	blt .L_815039C8
/* 815039DC | 38 80 00 01 */	li r4, 0x1
/* 815039E0 | 38 A0 00 00 */	li r5, 0x0
/* 815039E4 | 38 60 00 02 */	li r3, 0x2
/* 815039E8 | 38 00 00 03 */	li r0, 0x3
/* 815039EC | 90 BE 00 64 */	stw r5, 0x64(r30)
/* 815039F0 | 90 9E 01 04 */	stw r4, 0x104(r30)
/* 815039F4 | 90 7E 01 A4 */	stw r3, 0x1a4(r30)
/* 815039F8 | 90 1E 02 44 */	stw r0, 0x244(r30)
/* 815039FC | 98 8D AE B8 */	stb r4, "@GUARD@instance$2395"@sda21(r0)
.L_81503A00:
/* 81503A00 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81503A04 | 3C 60 81 10 */	lis r3, instance$2395@ha
/* 81503A08 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81503A0C | 38 63 5C 88 */	addi r3, r3, instance$2395@l
/* 81503A10 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81503A14 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81503A18 | 7C 08 03 A6 */	mtlr r0
/* 81503A1C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81503A20 | 4E 80 00 20 */	blr
.endfn GetInstance__Q44nw4r3snd6detail20RemoteSpeakerManagerFv

# .text:0x98 | 0x81503A24 | size: 0xCC
# nw4r::snd::detail::RemoteSpeakerManager::Setup()
.fn Setup__Q44nw4r3snd6detail20RemoteSpeakerManagerFv, global
/* 81503A24 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81503A28 | 7C 08 02 A6 */	mflr r0
/* 81503A2C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81503A30 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81503A34 | 7C 7F 1B 78 */	mr r31, r3
/* 81503A38 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81503A3C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81503A40 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 81503A44 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81503A48 | 40 82 00 8C */	bne .L_81503AD4
/* 81503A4C | 3B C3 00 38 */	addi r30, r3, 0x38
/* 81503A50 | 3B A0 00 00 */	li r29, 0x0
.L_81503A54:
/* 81503A54 | 7F C3 F3 78 */	mr r3, r30
/* 81503A58 | 4B FF FB 29 */	bl InitParam__Q34nw4r3snd13RemoteSpeakerFv
/* 81503A5C | 3B BD 00 01 */	addi r29, r29, 0x1
/* 81503A60 | 3B DE 00 A0 */	addi r30, r30, 0xa0
/* 81503A64 | 2C 1D 00 04 */	cmpwi r29, 0x4
/* 81503A68 | 41 80 FF EC */	blt .L_81503A54
/* 81503A6C | 38 7F 00 08 */	addi r3, r31, 0x8
/* 81503A70 | 48 02 8E 75 */	bl OSCreateAlarm
/* 81503A74 | 48 03 22 0D */	bl OSGetTime
/* 81503A78 | 3C C0 80 00 */	lis r6, 0x8000
/* 81503A7C | 3C A0 43 1C */	lis r5, 0x431c
/* 81503A80 | 80 06 00 F8 */	lwz r0, 0xf8(r6)
/* 81503A84 | 3C C0 10 62 */	lis r6, 0x1062
/* 81503A88 | 39 46 4D D3 */	addi r10, r6, 0x4dd3
/* 81503A8C | 3D 20 81 50 */	lis r9, RemoteSpeakerAlarmProc__Q44nw4r3snd6detail20RemoteSpeakerManagerFP7OSAlarmP9OSContext@ha
/* 81503A90 | 54 00 F0 BE */	srwi r0, r0, 2
/* 81503A94 | 38 A5 DE 83 */	subi r5, r5, 0x217d
/* 81503A98 | 7D 05 00 16 */	mulhwu r8, r5, r0
/* 81503A9C | 3C E0 00 66 */	lis r7, 0x66
/* 81503AA0 | 7C 86 23 78 */	mr r6, r4
/* 81503AA4 | 38 07 B9 AB */	subi r0, r7, 0x4655
/* 81503AA8 | 7C 65 1B 78 */	mr r5, r3
/* 81503AAC | 38 7F 00 08 */	addi r3, r31, 0x8
/* 81503AB0 | 55 04 8B FE */	srwi r4, r8, 15
/* 81503AB4 | 39 29 3A F0 */	addi r9, r9, RemoteSpeakerAlarmProc__Q44nw4r3snd6detail20RemoteSpeakerManagerFP7OSAlarmP9OSContext@l
/* 81503AB8 | 7C 04 01 D6 */	mullw r0, r4, r0
/* 81503ABC | 38 E0 00 00 */	li r7, 0x0
/* 81503AC0 | 7C 0A 00 16 */	mulhwu r0, r10, r0
/* 81503AC4 | 54 08 BA 7E */	srwi r8, r0, 9
/* 81503AC8 | 48 02 90 ED */	bl fn_8152CBB4
/* 81503ACC | 38 00 00 01 */	li r0, 0x1
/* 81503AD0 | 98 1F 00 00 */	stb r0, 0x0(r31)
.L_81503AD4:
/* 81503AD4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81503AD8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81503ADC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81503AE0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81503AE4 | 7C 08 03 A6 */	mtlr r0
/* 81503AE8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81503AEC | 4E 80 00 20 */	blr
.endfn Setup__Q44nw4r3snd6detail20RemoteSpeakerManagerFv

# .text:0x164 | 0x81503AF0 | size: 0xF0
# nw4r::snd::detail::RemoteSpeakerManager::RemoteSpeakerAlarmProc(OSAlarm*, OSContext*)
.fn RemoteSpeakerAlarmProc__Q44nw4r3snd6detail20RemoteSpeakerManagerFP7OSAlarmP9OSContext, global
/* 81503AF0 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 81503AF4 | 7C 08 02 A6 */	mflr r0
/* 81503AF8 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 81503AFC | 93 E1 00 6C */	stw r31, 0x6c(r1)
/* 81503B00 | 93 C1 00 68 */	stw r30, 0x68(r1)
/* 81503B04 | 93 A1 00 64 */	stw r29, 0x64(r1)
/* 81503B08 | 88 0D AE B8 */	lbz r0, "@GUARD@instance$2395"@sda21(r0)
/* 81503B0C | 7C 00 07 75 */	extsb. r0, r0
/* 81503B10 | 40 82 00 54 */	bne .L_81503B64
/* 81503B14 | 3C 60 81 10 */	lis r3, instance$2395@ha
/* 81503B18 | 38 00 00 00 */	li r0, 0x0
/* 81503B1C | 3B C3 5C 88 */	addi r30, r3, instance$2395@l
/* 81503B20 | 98 03 5C 88 */	stb r0, instance$2395@l(r3)
/* 81503B24 | 3B BE 00 38 */	addi r29, r30, 0x38
/* 81503B28 | 3B FE 02 B8 */	addi r31, r30, 0x2b8
.L_81503B2C:
/* 81503B2C | 7F A3 EB 78 */	mr r3, r29
/* 81503B30 | 4B FF F9 D9 */	bl __ct__Q34nw4r3snd13RemoteSpeakerFv
/* 81503B34 | 3B BD 00 A0 */	addi r29, r29, 0xa0
/* 81503B38 | 7C 1D F8 40 */	cmplw r29, r31
/* 81503B3C | 41 80 FF F0 */	blt .L_81503B2C
/* 81503B40 | 38 80 00 01 */	li r4, 0x1
/* 81503B44 | 38 A0 00 00 */	li r5, 0x0
/* 81503B48 | 38 60 00 02 */	li r3, 0x2
/* 81503B4C | 38 00 00 03 */	li r0, 0x3
/* 81503B50 | 90 BE 00 64 */	stw r5, 0x64(r30)
/* 81503B54 | 90 9E 01 04 */	stw r4, 0x104(r30)
/* 81503B58 | 90 7E 01 A4 */	stw r3, 0x1a4(r30)
/* 81503B5C | 90 1E 02 44 */	stw r0, 0x244(r30)
/* 81503B60 | 98 8D AE B8 */	stb r4, "@GUARD@instance$2395"@sda21(r0)
.L_81503B64:
/* 81503B64 | 3F C0 81 10 */	lis r30, instance$2395@ha
/* 81503B68 | 3B DE 5C 88 */	addi r30, r30, instance$2395@l
/* 81503B6C | 48 05 03 25 */	bl fn_81553E90
/* 81503B70 | 2C 03 00 28 */	cmpwi r3, 0x28
/* 81503B74 | 41 80 00 50 */	blt .L_81503BC4
/* 81503B78 | 3B BE 00 38 */	addi r29, r30, 0x38
/* 81503B7C | 3B E0 00 00 */	li r31, 0x0
.L_81503B80:
/* 81503B80 | 88 1E 00 39 */	lbz r0, 0x39(r30)
/* 81503B84 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81503B88 | 41 82 00 20 */	beq .L_81503BA8
/* 81503B8C | 7F E3 FB 78 */	mr r3, r31
/* 81503B90 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81503B94 | 38 A0 00 28 */	li r5, 0x28
/* 81503B98 | 48 05 03 25 */	bl fn_81553EBC
/* 81503B9C | 7F A3 EB 78 */	mr r3, r29
/* 81503BA0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81503BA4 | 4B FF FA 5D */	bl Update__Q34nw4r3snd13RemoteSpeakerFPCs
.L_81503BA8:
/* 81503BA8 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81503BAC | 3B BD 00 A0 */	addi r29, r29, 0xa0
/* 81503BB0 | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 81503BB4 | 3B DE 00 A0 */	addi r30, r30, 0xa0
/* 81503BB8 | 41 80 FF C8 */	blt .L_81503B80
/* 81503BBC | 38 60 00 28 */	li r3, 0x28
/* 81503BC0 | 48 05 03 C1 */	bl fn_81553F80
.L_81503BC4:
/* 81503BC4 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 81503BC8 | 83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 81503BCC | 83 C1 00 68 */	lwz r30, 0x68(r1)
/* 81503BD0 | 83 A1 00 64 */	lwz r29, 0x64(r1)
/* 81503BD4 | 7C 08 03 A6 */	mtlr r0
/* 81503BD8 | 38 21 00 70 */	addi r1, r1, 0x70
/* 81503BDC | 4E 80 00 20 */	blr
.endfn RemoteSpeakerAlarmProc__Q44nw4r3snd6detail20RemoteSpeakerManagerFP7OSAlarmP9OSContext

# 0x81698EF8..0x81698F00 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698EF8 | size: 0x1
.obj "@GUARD@instance$2395", global
	.skip 0x1
.endobj "@GUARD@instance$2395"

# .sbss:0x1 | 0x81698EF9 | size: 0x7
.obj gap_12_81698EF9_sbss, global
.hidden gap_12_81698EF9_sbss
	.skip 0x7
.endobj gap_12_81698EF9_sbss
