.include "macros.inc"
.file "NHTTP_request.c"

# 0x8149686C..0x8149723C | size: 0x9D0
.text
.balign 4

# .text:0x0 | 0x8149686C | size: 0xC
.fn NHTTPi_InitRequestInfo, global
/* 8149686C | 38 00 00 00 */	li r0, 0x0
/* 81496870 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 81496874 | 4E 80 00 20 */	blr
.endfn NHTTPi_InitRequestInfo

# .text:0xC | 0x81496878 | size: 0x5BC
.fn NHTTP_CreateRequest, global
/* 81496878 | 94 21 FE C0 */	stwu r1, -0x140(r1)
/* 8149687C | 7C 08 02 A6 */	mflr r0
/* 81496880 | 90 01 01 44 */	stw r0, 0x144(r1)
/* 81496884 | 39 61 01 40 */	addi r11, r1, 0x140
/* 81496888 | 48 16 2C 1D */	bl _savegpr_20
/* 8149688C | 2C 05 00 03 */	cmpwi r5, 0x3
/* 81496890 | 7C 75 1B 78 */	mr r21, r3
/* 81496894 | 7C 9C 23 78 */	mr r28, r4
/* 81496898 | 7C B6 2B 78 */	mr r22, r5
/* 8149689C | 7C DB 33 78 */	mr r27, r6
/* 814968A0 | 7C FA 3B 78 */	mr r26, r7
/* 814968A4 | 7D 17 43 78 */	mr r23, r8
/* 814968A8 | 7D 39 4B 78 */	mr r25, r9
/* 814968AC | 7D 54 53 78 */	mr r20, r10
/* 814968B0 | 3B 00 00 00 */	li r24, 0x0
/* 814968B4 | 40 80 00 0C */	bge .L_814968C0
/* 814968B8 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814968BC | 40 80 00 14 */	bge .L_814968D0
.L_814968C0:
/* 814968C0 | 7E A3 AB 78 */	mr r3, r21
/* 814968C4 | 38 80 00 0B */	li r4, 0xb
/* 814968C8 | 4B FF F0 51 */	bl NHTTPi_SetError
/* 814968CC | 48 00 05 0C */	b .L_81496DD8
.L_814968D0:
/* 814968D0 | 38 60 02 54 */	li r3, 0x254
/* 814968D4 | 38 80 00 04 */	li r4, 0x4
/* 814968D8 | 4B FF EF A1 */	bl NHTTPi_alloc
/* 814968DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814968E0 | 7C 78 1B 78 */	mr r24, r3
/* 814968E4 | 40 82 00 14 */	bne .L_814968F8
/* 814968E8 | 7E A3 AB 78 */	mr r3, r21
/* 814968EC | 38 80 00 01 */	li r4, 0x1
/* 814968F0 | 4B FF F0 29 */	bl NHTTPi_SetError
/* 814968F4 | 48 00 04 E4 */	b .L_81496DD8
.L_814968F8:
/* 814968F8 | 38 80 02 54 */	li r4, 0x254
/* 814968FC | 48 00 15 BD */	bl NHTTPi_memclr
/* 81496900 | 38 60 04 3C */	li r3, 0x43c
/* 81496904 | 38 80 00 04 */	li r4, 0x4
/* 81496908 | 4B FF EF 71 */	bl NHTTPi_alloc
/* 8149690C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81496910 | 90 78 00 2C */	stw r3, 0x2c(r24)
/* 81496914 | 40 82 00 14 */	bne .L_81496928
/* 81496918 | 7E A3 AB 78 */	mr r3, r21
/* 8149691C | 38 80 00 01 */	li r4, 0x1
/* 81496920 | 4B FF EF F9 */	bl NHTTPi_SetError
/* 81496924 | 48 00 04 B4 */	b .L_81496DD8
.L_81496928:
/* 81496928 | 38 80 04 3C */	li r4, 0x43c
/* 8149692C | 48 00 15 8D */	bl NHTTPi_memclr
/* 81496930 | 80 98 00 2C */	lwz r4, 0x2c(r24)
/* 81496934 | 7F 83 E3 78 */	mr r3, r28
/* 81496938 | 93 64 00 28 */	stw r27, 0x28(r4)
/* 8149693C | 80 98 00 2C */	lwz r4, 0x2c(r24)
/* 81496940 | 93 44 00 1C */	stw r26, 0x1c(r4)
/* 81496944 | 80 98 00 2C */	lwz r4, 0x2c(r24)
/* 81496948 | 93 24 00 2C */	stw r25, 0x2c(r4)
/* 8149694C | 80 98 00 2C */	lwz r4, 0x2c(r24)
/* 81496950 | 92 84 00 30 */	stw r20, 0x30(r4)
/* 81496954 | 48 00 15 5D */	bl NHTTPi_strlen
/* 81496958 | 2C 03 00 07 */	cmpwi r3, 0x7
/* 8149695C | 7C 74 1B 78 */	mr r20, r3
/* 81496960 | 41 81 00 14 */	bgt .L_81496974
/* 81496964 | 7E A3 AB 78 */	mr r3, r21
/* 81496968 | 38 80 00 04 */	li r4, 0x4
/* 8149696C | 4B FF EF AD */	bl NHTTPi_SetError
/* 81496970 | 48 00 04 68 */	b .L_81496DD8
.L_81496974:
/* 81496974 | 7E 84 A3 78 */	mr r4, r20
/* 81496978 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8149697C | 48 00 15 3D */	bl NHTTPi_memclr
/* 81496980 | 7F 84 E3 78 */	mr r4, r28
/* 81496984 | 7E 85 A3 78 */	mr r5, r20
/* 81496988 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8149698C | 48 00 15 21 */	bl NHTTPi_memcpy
/* 81496990 | 38 00 00 50 */	li r0, 0x50
/* 81496994 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81496998 | 90 18 00 20 */	stw r0, 0x20(r24)
/* 8149699C | 3B A0 00 07 */	li r29, 0x7
/* 814969A0 | 38 8D 9A 90 */	li r4, lbl_81697AD0@sda21
/* 814969A4 | 38 A0 00 07 */	li r5, 0x7
/* 814969A8 | 48 00 15 1D */	bl NHTTPi_strnicmp
/* 814969AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814969B0 | 41 82 00 44 */	beq .L_814969F4
/* 814969B4 | 3C 80 81 67 */	lis r4, lbl_8166D140@ha
/* 814969B8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814969BC | 38 84 D1 40 */	addi r4, r4, lbl_8166D140@l
/* 814969C0 | 38 A0 00 08 */	li r5, 0x8
/* 814969C4 | 48 00 15 01 */	bl NHTTPi_strnicmp
/* 814969C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814969CC | 41 82 00 14 */	beq .L_814969E0
/* 814969D0 | 7E A3 AB 78 */	mr r3, r21
/* 814969D4 | 38 80 00 04 */	li r4, 0x4
/* 814969D8 | 4B FF EF 41 */	bl NHTTPi_SetError
/* 814969DC | 48 00 03 FC */	b .L_81496DD8
.L_814969E0:
/* 814969E0 | 38 60 00 01 */	li r3, 0x1
/* 814969E4 | 38 00 01 BB */	li r0, 0x1bb
/* 814969E8 | 90 78 00 08 */	stw r3, 0x8(r24)
/* 814969EC | 3B A0 00 08 */	li r29, 0x8
/* 814969F0 | 90 18 00 20 */	stw r0, 0x20(r24)
.L_814969F4:
/* 814969F4 | 7F 9D A0 51 */	subf. r28, r29, r20
/* 814969F8 | 3B 21 00 08 */	addi r25, r1, 0x8
/* 814969FC | 7F 39 EA 14 */	add r25, r25, r29
/* 81496A00 | 41 81 00 14 */	bgt .L_81496A14
/* 81496A04 | 7E A3 AB 78 */	mr r3, r21
/* 81496A08 | 38 80 00 04 */	li r4, 0x4
/* 81496A0C | 4B FF EF 0D */	bl NHTTPi_SetError
/* 81496A10 | 48 00 03 C8 */	b .L_81496DD8
.L_81496A14:
/* 81496A14 | 7F 34 CB 78 */	mr r20, r25
/* 81496A18 | 3B 40 00 00 */	li r26, 0x0
/* 81496A1C | 3B 60 00 00 */	li r27, 0x0
/* 81496A20 | 3B C0 00 00 */	li r30, 0x0
/* 81496A24 | 48 00 00 74 */	b .L_81496A98
.L_81496A28:
/* 81496A28 | 2C 1E 00 02 */	cmpwi r30, 0x2
/* 81496A2C | 40 82 00 0C */	bne .L_81496A38
/* 81496A30 | 3B DE FF FF */	subi r30, r30, 0x1
/* 81496A34 | 48 00 00 5C */	b .L_81496A90
.L_81496A38:
/* 81496A38 | 2C 1E 00 01 */	cmpwi r30, 0x1
/* 81496A3C | 40 82 00 40 */	bne .L_81496A7C
/* 81496A40 | 7C 7A CA 14 */	add r3, r26, r25
/* 81496A44 | 38 80 00 02 */	li r4, 0x2
/* 81496A48 | 38 63 FF FF */	subi r3, r3, 0x1
/* 81496A4C | 48 00 16 C9 */	bl NHTTPi_strToHex
/* 81496A50 | 7C 60 07 75 */	extsb. r0, r3
/* 81496A54 | 3B DE FF FF */	subi r30, r30, 0x1
/* 81496A58 | 40 80 00 14 */	bge .L_81496A6C
/* 81496A5C | 7E A3 AB 78 */	mr r3, r21
/* 81496A60 | 38 80 00 04 */	li r4, 0x4
/* 81496A64 | 4B FF EE B5 */	bl NHTTPi_SetError
/* 81496A68 | 48 00 03 70 */	b .L_81496DD8
.L_81496A6C:
/* 81496A6C | 2C 00 00 2F */	cmpwi r0, 0x2f
/* 81496A70 | 40 82 00 20 */	bne .L_81496A90
/* 81496A74 | 3B 7B FF FF */	subi r27, r27, 0x1
/* 81496A78 | 48 00 00 34 */	b .L_81496AAC
.L_81496A7C:
/* 81496A7C | 7C 60 07 74 */	extsb r0, r3
/* 81496A80 | 2C 00 00 25 */	cmpwi r0, 0x25
/* 81496A84 | 40 82 00 0C */	bne .L_81496A90
/* 81496A88 | 3B C0 00 02 */	li r30, 0x2
/* 81496A8C | 3B 7B 00 01 */	addi r27, r27, 0x1
.L_81496A90:
/* 81496A90 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 81496A94 | 3A 94 00 01 */	addi r20, r20, 0x1
.L_81496A98:
/* 81496A98 | 7C 1A E0 00 */	cmpw r26, r28
/* 81496A9C | 40 80 00 10 */	bge .L_81496AAC
/* 81496AA0 | 88 74 00 00 */	lbz r3, 0x0(r20)
/* 81496AA4 | 2C 03 00 2F */	cmpwi r3, 0x2f
/* 81496AA8 | 40 82 FF 80 */	bne .L_81496A28
.L_81496AAC:
/* 81496AAC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81496AB0 | 41 82 00 14 */	beq .L_81496AC4
/* 81496AB4 | 7E A3 AB 78 */	mr r3, r21
/* 81496AB8 | 38 80 00 04 */	li r4, 0x4
/* 81496ABC | 4B FF EE 5D */	bl NHTTPi_SetError
/* 81496AC0 | 48 00 03 18 */	b .L_81496DD8
.L_81496AC4:
/* 81496AC4 | 57 63 08 3C */	slwi r3, r27, 1
/* 81496AC8 | 7C 1D E2 14 */	add r0, r29, r28
/* 81496ACC | 7C 63 00 50 */	subf r3, r3, r0
/* 81496AD0 | 38 80 00 04 */	li r4, 0x4
/* 81496AD4 | 3A 83 00 01 */	addi r20, r3, 0x1
/* 81496AD8 | 7E 83 A3 78 */	mr r3, r20
/* 81496ADC | 4B FF ED 9D */	bl NHTTPi_alloc
/* 81496AE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81496AE4 | 90 78 00 24 */	stw r3, 0x24(r24)
/* 81496AE8 | 40 82 00 14 */	bne .L_81496AFC
/* 81496AEC | 7E A3 AB 78 */	mr r3, r21
/* 81496AF0 | 38 80 00 01 */	li r4, 0x1
/* 81496AF4 | 4B FF EE 25 */	bl NHTTPi_SetError
/* 81496AF8 | 48 00 02 E0 */	b .L_81496DD8
.L_81496AFC:
/* 81496AFC | 7E 84 A3 78 */	mr r4, r20
/* 81496B00 | 48 00 13 B9 */	bl NHTTPi_memclr
/* 81496B04 | 80 78 00 24 */	lwz r3, 0x24(r24)
/* 81496B08 | 7F A5 EB 78 */	mr r5, r29
/* 81496B0C | 38 81 00 08 */	addi r4, r1, 0x8
/* 81496B10 | 48 00 13 9D */	bl NHTTPi_memcpy
/* 81496B14 | 7F 34 CB 78 */	mr r20, r25
/* 81496B18 | 3B E0 00 00 */	li r31, 0x0
/* 81496B1C | 3B 60 00 00 */	li r27, 0x0
/* 81496B20 | 3B C0 00 00 */	li r30, 0x0
/* 81496B24 | 3B 40 00 00 */	li r26, 0x0
/* 81496B28 | 48 00 00 A4 */	b .L_81496BCC
.L_81496B2C:
/* 81496B2C | 2C 1E 00 02 */	cmpwi r30, 0x2
/* 81496B30 | 40 82 00 0C */	bne .L_81496B3C
/* 81496B34 | 3B DE FF FF */	subi r30, r30, 0x1
/* 81496B38 | 48 00 00 8C */	b .L_81496BC4
.L_81496B3C:
/* 81496B3C | 2C 1E 00 01 */	cmpwi r30, 0x1
/* 81496B40 | 40 82 00 3C */	bne .L_81496B7C
/* 81496B44 | 7C 7F CA 14 */	add r3, r31, r25
/* 81496B48 | 38 80 00 02 */	li r4, 0x2
/* 81496B4C | 38 63 FF FF */	subi r3, r3, 0x1
/* 81496B50 | 48 00 15 C5 */	bl NHTTPi_strToHex
/* 81496B54 | 80 98 00 24 */	lwz r4, 0x24(r24)
/* 81496B58 | 7C 65 07 74 */	extsb r5, r3
/* 81496B5C | 7C 1B EA 14 */	add r0, r27, r29
/* 81496B60 | 3B DE FF FF */	subi r30, r30, 0x1
/* 81496B64 | 7C 84 02 14 */	add r4, r4, r0
/* 81496B68 | 2C 05 00 2F */	cmpwi r5, 0x2f
/* 81496B6C | 98 64 FF FF */	stb r3, -0x1(r4)
/* 81496B70 | 40 82 00 54 */	bne .L_81496BC4
/* 81496B74 | 3B 40 00 01 */	li r26, 0x1
/* 81496B78 | 48 00 00 4C */	b .L_81496BC4
.L_81496B7C:
/* 81496B7C | 88 B4 00 00 */	lbz r5, 0x0(r20)
/* 81496B80 | 2C 05 00 2F */	cmpwi r5, 0x2f
/* 81496B84 | 40 82 00 08 */	bne .L_81496B8C
/* 81496B88 | 3B 40 00 01 */	li r26, 0x1
.L_81496B8C:
/* 81496B8C | 7C A3 07 74 */	extsb r3, r5
/* 81496B90 | 7F 44 00 34 */	cntlzw r4, r26
/* 81496B94 | 38 03 FF DB */	subi r0, r3, 0x25
/* 81496B98 | 7C 00 00 34 */	cntlzw r0, r0
/* 81496B9C | 54 83 D9 7E */	srwi r3, r4, 5
/* 81496BA0 | 54 00 D9 7E */	srwi r0, r0, 5
/* 81496BA4 | 7C 60 00 39 */	and. r0, r3, r0
/* 81496BA8 | 41 82 00 0C */	beq .L_81496BB4
/* 81496BAC | 3B C0 00 02 */	li r30, 0x2
/* 81496BB0 | 48 00 00 10 */	b .L_81496BC0
.L_81496BB4:
/* 81496BB4 | 80 78 00 24 */	lwz r3, 0x24(r24)
/* 81496BB8 | 7C 1B EA 14 */	add r0, r27, r29
/* 81496BBC | 7C A3 01 AE */	stbx r5, r3, r0
.L_81496BC0:
/* 81496BC0 | 3B 7B 00 01 */	addi r27, r27, 0x1
.L_81496BC4:
/* 81496BC4 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 81496BC8 | 3A 94 00 01 */	addi r20, r20, 0x1
.L_81496BCC:
/* 81496BCC | 7C 1F E0 00 */	cmpw r31, r28
/* 81496BD0 | 41 80 FF 5C */	blt .L_81496B2C
/* 81496BD4 | 80 78 00 24 */	lwz r3, 0x24(r24)
/* 81496BD8 | 7C 1D DA 14 */	add r0, r29, r27
/* 81496BDC | 38 80 00 00 */	li r4, 0x0
/* 81496BE0 | 38 A0 00 00 */	li r5, 0x0
/* 81496BE4 | 7C 83 01 AE */	stbx r4, r3, r0
/* 81496BE8 | 80 18 00 24 */	lwz r0, 0x24(r24)
/* 81496BEC | 7C 80 EA 14 */	add r4, r0, r29
/* 81496BF0 | 7C 83 23 78 */	mr r3, r4
/* 81496BF4 | 7F 69 03 A6 */	mtctr r27
/* 81496BF8 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 81496BFC | 40 81 00 34 */	ble .L_81496C30
.L_81496C00:
/* 81496C00 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 81496C04 | 7C 00 07 74 */	extsb r0, r0
/* 81496C08 | 2C 00 00 2F */	cmpwi r0, 0x2f
/* 81496C0C | 41 82 00 0C */	beq .L_81496C18
/* 81496C10 | 2C 00 00 3A */	cmpwi r0, 0x3a
/* 81496C14 | 40 82 00 10 */	bne .L_81496C24
.L_81496C18:
/* 81496C18 | 7C 05 EA 14 */	add r0, r5, r29
/* 81496C1C | 90 18 00 14 */	stw r0, 0x14(r24)
/* 81496C20 | 48 00 00 10 */	b .L_81496C30
.L_81496C24:
/* 81496C24 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81496C28 | 38 63 00 01 */	addi r3, r3, 0x1
/* 81496C2C | 42 00 FF D4 */	bdnz .L_81496C00
.L_81496C30:
/* 81496C30 | 7C 85 D8 00 */	cmpw cr1, r5, r27
/* 81496C34 | 40 86 00 14 */	bne cr1, .L_81496C48
/* 81496C38 | 7C 05 EA 14 */	add r0, r5, r29
/* 81496C3C | 90 18 00 14 */	stw r0, 0x14(r24)
/* 81496C40 | 90 18 00 18 */	stw r0, 0x18(r24)
/* 81496C44 | 48 00 00 C4 */	b .L_81496D08
.L_81496C48:
/* 81496C48 | 7C 04 28 AE */	lbzx r0, r4, r5
/* 81496C4C | 7C 00 07 74 */	extsb r0, r0
/* 81496C50 | 2C 00 00 2F */	cmpwi r0, 0x2f
/* 81496C54 | 40 82 00 10 */	bne .L_81496C64
/* 81496C58 | 80 18 00 14 */	lwz r0, 0x14(r24)
/* 81496C5C | 90 18 00 18 */	stw r0, 0x18(r24)
/* 81496C60 | 48 00 00 A8 */	b .L_81496D08
.L_81496C64:
/* 81496C64 | 2C 00 00 3A */	cmpwi r0, 0x3a
/* 81496C68 | 40 82 00 A0 */	bne .L_81496D08
/* 81496C6C | 7C 05 D8 50 */	subf r0, r5, r27
/* 81496C70 | 7C 64 2A 14 */	add r3, r4, r5
/* 81496C74 | 7C 09 03 A6 */	mtctr r0
/* 81496C78 | 40 84 00 28 */	bge cr1, .L_81496CA0
.L_81496C7C:
/* 81496C7C | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 81496C80 | 2C 00 00 2F */	cmpwi r0, 0x2f
/* 81496C84 | 40 82 00 10 */	bne .L_81496C94
/* 81496C88 | 7C 05 EA 14 */	add r0, r5, r29
/* 81496C8C | 90 18 00 18 */	stw r0, 0x18(r24)
/* 81496C90 | 48 00 00 10 */	b .L_81496CA0
.L_81496C94:
/* 81496C94 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81496C98 | 38 63 00 01 */	addi r3, r3, 0x1
/* 81496C9C | 42 00 FF E0 */	bdnz .L_81496C7C
.L_81496CA0:
/* 81496CA0 | 7C 05 D8 00 */	cmpw r5, r27
/* 81496CA4 | 40 82 00 10 */	bne .L_81496CB4
/* 81496CA8 | 7C 05 EA 14 */	add r0, r5, r29
/* 81496CAC | 90 18 00 18 */	stw r0, 0x18(r24)
/* 81496CB0 | 48 00 00 58 */	b .L_81496D08
.L_81496CB4:
/* 81496CB4 | 80 98 00 14 */	lwz r4, 0x14(r24)
/* 81496CB8 | 80 78 00 24 */	lwz r3, 0x24(r24)
/* 81496CBC | 38 84 00 01 */	addi r4, r4, 0x1
/* 81496CC0 | 80 18 00 18 */	lwz r0, 0x18(r24)
/* 81496CC4 | 7C 63 22 14 */	add r3, r3, r4
/* 81496CC8 | 7C 84 00 50 */	subf r4, r4, r0
/* 81496CCC | 48 00 18 3D */	bl NHTTPi_strtonum
/* 81496CD0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81496CD4 | 40 80 00 0C */	bge .L_81496CE0
/* 81496CD8 | 80 78 00 20 */	lwz r3, 0x20(r24)
/* 81496CDC | 48 00 00 24 */	b .L_81496D00
.L_81496CE0:
/* 81496CE0 | 3C 80 00 01 */	lis r4, 0x1
/* 81496CE4 | 38 04 FF FF */	subi r0, r4, 0x1
/* 81496CE8 | 7C 03 00 00 */	cmpw r3, r0
/* 81496CEC | 40 81 00 14 */	ble .L_81496D00
/* 81496CF0 | 7E A3 AB 78 */	mr r3, r21
/* 81496CF4 | 38 80 00 04 */	li r4, 0x4
/* 81496CF8 | 4B FF EC 21 */	bl NHTTPi_SetError
/* 81496CFC | 48 00 00 DC */	b .L_81496DD8
.L_81496D00:
/* 81496D00 | 54 60 04 3E */	clrlwi r0, r3, 16
/* 81496D04 | 90 18 00 20 */	stw r0, 0x20(r24)
.L_81496D08:
/* 81496D08 | 80 B8 00 08 */	lwz r5, 0x8(r24)
/* 81496D0C | 38 80 00 04 */	li r4, 0x4
/* 81496D10 | 80 18 00 14 */	lwz r0, 0x14(r24)
/* 81496D14 | 7C 65 00 D0 */	neg r3, r5
/* 81496D18 | 7C 63 2B 78 */	or r3, r3, r5
/* 81496D1C | 54 63 0F FE */	srwi r3, r3, 31
/* 81496D20 | 38 63 00 07 */	addi r3, r3, 0x7
/* 81496D24 | 7E 83 00 50 */	subf r20, r3, r0
/* 81496D28 | 38 74 00 01 */	addi r3, r20, 0x1
/* 81496D2C | 4B FF EB 4D */	bl NHTTPi_alloc
/* 81496D30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81496D34 | 90 78 00 28 */	stw r3, 0x28(r24)
/* 81496D38 | 40 82 00 14 */	bne .L_81496D4C
/* 81496D3C | 7E A3 AB 78 */	mr r3, r21
/* 81496D40 | 38 80 00 01 */	li r4, 0x1
/* 81496D44 | 4B FF EB D5 */	bl NHTTPi_SetError
/* 81496D48 | 48 00 00 90 */	b .L_81496DD8
.L_81496D4C:
/* 81496D4C | 38 94 00 01 */	addi r4, r20, 0x1
/* 81496D50 | 48 00 11 69 */	bl NHTTPi_memclr
/* 81496D54 | 80 98 00 08 */	lwz r4, 0x8(r24)
/* 81496D58 | 7E 85 A3 78 */	mr r5, r20
/* 81496D5C | 80 D8 00 24 */	lwz r6, 0x24(r24)
/* 81496D60 | 7C 04 00 D0 */	neg r0, r4
/* 81496D64 | 80 78 00 28 */	lwz r3, 0x28(r24)
/* 81496D68 | 7C 00 23 78 */	or r0, r0, r4
/* 81496D6C | 54 04 0F FE */	srwi r4, r0, 31
/* 81496D70 | 38 04 00 07 */	addi r0, r4, 0x7
/* 81496D74 | 7C 86 02 14 */	add r4, r6, r0
/* 81496D78 | 48 00 11 35 */	bl NHTTPi_memcpy
/* 81496D7C | 3C 80 81 62 */	lis r4, NHTTPi_strMultipartBound@ha
/* 81496D80 | 38 78 00 38 */	addi r3, r24, 0x38
/* 81496D84 | 38 84 8C 30 */	addi r4, r4, NHTTPi_strMultipartBound@l
/* 81496D88 | 38 A0 00 14 */	li r5, 0x14
/* 81496D8C | 48 00 11 21 */	bl NHTTPi_memcpy
/* 81496D90 | 92 D8 00 1C */	stw r22, 0x1c(r24)
/* 81496D94 | 38 00 00 00 */	li r0, 0x0
/* 81496D98 | 7F 03 C3 78 */	mr r3, r24
/* 81496D9C | 90 18 00 AC */	stw r0, 0xac(r24)
/* 81496DA0 | 90 18 00 B0 */	stw r0, 0xb0(r24)
/* 81496DA4 | 90 18 00 B4 */	stw r0, 0xb4(r24)
/* 81496DA8 | 90 18 00 B8 */	stw r0, 0xb8(r24)
/* 81496DAC | 90 18 00 BC */	stw r0, 0xbc(r24)
/* 81496DB0 | 90 18 00 C0 */	stw r0, 0xc0(r24)
/* 81496DB4 | 90 18 00 C4 */	stw r0, 0xc4(r24)
/* 81496DB8 | 90 18 00 C8 */	stw r0, 0xc8(r24)
/* 81496DBC | 90 18 00 CC */	stw r0, 0xcc(r24)
/* 81496DC0 | 90 18 00 D4 */	stw r0, 0xd4(r24)
/* 81496DC4 | 80 98 00 2C */	lwz r4, 0x2c(r24)
/* 81496DC8 | 92 E4 04 38 */	stw r23, 0x438(r4)
/* 81496DCC | 90 18 00 0C */	stw r0, 0xc(r24)
/* 81496DD0 | 90 18 02 44 */	stw r0, 0x244(r24)
/* 81496DD4 | 48 00 00 48 */	b .L_81496E1C
.L_81496DD8:
/* 81496DD8 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 81496DDC | 41 82 00 3C */	beq .L_81496E18
/* 81496DE0 | 80 78 00 24 */	lwz r3, 0x24(r24)
/* 81496DE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81496DE8 | 41 82 00 08 */	beq .L_81496DF0
/* 81496DEC | 4B FF EA E9 */	bl NHTTPi_free
.L_81496DF0:
/* 81496DF0 | 80 78 00 28 */	lwz r3, 0x28(r24)
/* 81496DF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81496DF8 | 41 82 00 08 */	beq .L_81496E00
/* 81496DFC | 4B FF EA D9 */	bl NHTTPi_free
.L_81496E00:
/* 81496E00 | 80 78 00 2C */	lwz r3, 0x2c(r24)
/* 81496E04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81496E08 | 41 82 00 08 */	beq .L_81496E10
/* 81496E0C | 4B FF EA C9 */	bl NHTTPi_free
.L_81496E10:
/* 81496E10 | 7F 03 C3 78 */	mr r3, r24
/* 81496E14 | 4B FF EA C1 */	bl NHTTPi_free
.L_81496E18:
/* 81496E18 | 38 60 00 00 */	li r3, 0x0
.L_81496E1C:
/* 81496E1C | 39 61 01 40 */	addi r11, r1, 0x140
/* 81496E20 | 48 16 26 D1 */	bl _restgpr_20
/* 81496E24 | 80 01 01 44 */	lwz r0, 0x144(r1)
/* 81496E28 | 7C 08 03 A6 */	mtlr r0
/* 81496E2C | 38 21 01 40 */	addi r1, r1, 0x140
/* 81496E30 | 4E 80 00 20 */	blr
.endfn NHTTP_CreateRequest

# .text:0x5C8 | 0x81496E34 | size: 0x104
.fn NHTTP_DestroyRequest, global
/* 81496E34 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81496E38 | 7C 08 02 A6 */	mflr r0
/* 81496E3C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81496E40 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81496E44 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81496E48 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81496E4C | 7C 9D 23 78 */	mr r29, r4
/* 81496E50 | 48 00 5E 6D */	bl NHTTPi_GetMutexInfoP
/* 81496E54 | 7C 7E 1B 78 */	mr r30, r3
/* 81496E58 | 7F A4 EB 78 */	mr r4, r29
/* 81496E5C | 48 00 59 AD */	bl NHTTPi_Request2Connection
/* 81496E60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81496E64 | 41 82 00 0C */	beq .L_81496E70
/* 81496E68 | 38 00 00 00 */	li r0, 0x0
/* 81496E6C | 90 03 00 14 */	stw r0, 0x14(r3)
.L_81496E70:
/* 81496E70 | 80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 81496E74 | 4B FF EA 61 */	bl NHTTPi_free
/* 81496E78 | 7F C3 F3 78 */	mr r3, r30
/* 81496E7C | 7F A4 EB 78 */	mr r4, r29
/* 81496E80 | 48 00 59 89 */	bl NHTTPi_Request2Connection
/* 81496E84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81496E88 | 41 82 00 0C */	beq .L_81496E94
/* 81496E8C | 38 00 00 00 */	li r0, 0x0
/* 81496E90 | 90 03 00 10 */	stw r0, 0x10(r3)
.L_81496E94:
/* 81496E94 | 83 FD 00 30 */	lwz r31, 0x30(r29)
/* 81496E98 | 48 00 00 2C */	b .L_81496EC4
.L_81496E9C:
/* 81496E9C | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 81496EA0 | 7C 1F 18 40 */	cmplw r31, r3
/* 81496EA4 | 41 82 00 14 */	beq .L_81496EB8
/* 81496EA8 | 83 C3 00 00 */	lwz r30, 0x0(r3)
/* 81496EAC | 4B FF EA 29 */	bl NHTTPi_free
/* 81496EB0 | 93 DF 00 00 */	stw r30, 0x0(r31)
/* 81496EB4 | 48 00 00 10 */	b .L_81496EC4
.L_81496EB8:
/* 81496EB8 | 7F E3 FB 78 */	mr r3, r31
/* 81496EBC | 4B FF EA 19 */	bl NHTTPi_free
/* 81496EC0 | 3B E0 00 00 */	li r31, 0x0
.L_81496EC4:
/* 81496EC4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81496EC8 | 40 82 FF D4 */	bne .L_81496E9C
/* 81496ECC | 83 DD 00 34 */	lwz r30, 0x34(r29)
/* 81496ED0 | 48 00 00 2C */	b .L_81496EFC
.L_81496ED4:
/* 81496ED4 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 81496ED8 | 7C 1E 18 40 */	cmplw r30, r3
/* 81496EDC | 41 82 00 14 */	beq .L_81496EF0
/* 81496EE0 | 83 E3 00 00 */	lwz r31, 0x0(r3)
/* 81496EE4 | 4B FF E9 F1 */	bl NHTTPi_free
/* 81496EE8 | 93 FE 00 00 */	stw r31, 0x0(r30)
/* 81496EEC | 48 00 00 10 */	b .L_81496EFC
.L_81496EF0:
/* 81496EF0 | 7F C3 F3 78 */	mr r3, r30
/* 81496EF4 | 4B FF E9 E1 */	bl NHTTPi_free
/* 81496EF8 | 3B C0 00 00 */	li r30, 0x0
.L_81496EFC:
/* 81496EFC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81496F00 | 40 82 FF D4 */	bne .L_81496ED4
/* 81496F04 | 80 7D 00 24 */	lwz r3, 0x24(r29)
/* 81496F08 | 4B FF E9 CD */	bl NHTTPi_free
/* 81496F0C | 80 7D 00 28 */	lwz r3, 0x28(r29)
/* 81496F10 | 4B FF E9 C5 */	bl NHTTPi_free
/* 81496F14 | 7F A3 EB 78 */	mr r3, r29
/* 81496F18 | 4B FF E9 BD */	bl NHTTPi_free
/* 81496F1C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81496F20 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81496F24 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81496F28 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81496F2C | 7C 08 03 A6 */	mtlr r0
/* 81496F30 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81496F34 | 4E 80 00 20 */	blr
.endfn NHTTP_DestroyRequest

# .text:0x6CC | 0x81496F38 | size: 0xD8
.fn NHTTPi_destroyRequestObject, global
/* 81496F38 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81496F3C | 7C 08 02 A6 */	mflr r0
/* 81496F40 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81496F44 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81496F48 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81496F4C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81496F50 | 7C 9D 23 78 */	mr r29, r4
/* 81496F54 | 48 00 58 B5 */	bl NHTTPi_Request2Connection
/* 81496F58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81496F5C | 41 82 00 0C */	beq .L_81496F68
/* 81496F60 | 38 00 00 00 */	li r0, 0x0
/* 81496F64 | 90 03 00 10 */	stw r0, 0x10(r3)
.L_81496F68:
/* 81496F68 | 83 FD 00 30 */	lwz r31, 0x30(r29)
/* 81496F6C | 48 00 00 2C */	b .L_81496F98
.L_81496F70:
/* 81496F70 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 81496F74 | 7C 1F 18 40 */	cmplw r31, r3
/* 81496F78 | 41 82 00 14 */	beq .L_81496F8C
/* 81496F7C | 83 C3 00 00 */	lwz r30, 0x0(r3)
/* 81496F80 | 4B FF E9 55 */	bl NHTTPi_free
/* 81496F84 | 93 DF 00 00 */	stw r30, 0x0(r31)
/* 81496F88 | 48 00 00 10 */	b .L_81496F98
.L_81496F8C:
/* 81496F8C | 7F E3 FB 78 */	mr r3, r31
/* 81496F90 | 4B FF E9 45 */	bl NHTTPi_free
/* 81496F94 | 3B E0 00 00 */	li r31, 0x0
.L_81496F98:
/* 81496F98 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81496F9C | 40 82 FF D4 */	bne .L_81496F70
/* 81496FA0 | 83 DD 00 34 */	lwz r30, 0x34(r29)
/* 81496FA4 | 48 00 00 2C */	b .L_81496FD0
.L_81496FA8:
/* 81496FA8 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 81496FAC | 7C 1E 18 40 */	cmplw r30, r3
/* 81496FB0 | 41 82 00 14 */	beq .L_81496FC4
/* 81496FB4 | 83 E3 00 00 */	lwz r31, 0x0(r3)
/* 81496FB8 | 4B FF E9 1D */	bl NHTTPi_free
/* 81496FBC | 93 FE 00 00 */	stw r31, 0x0(r30)
/* 81496FC0 | 48 00 00 10 */	b .L_81496FD0
.L_81496FC4:
/* 81496FC4 | 7F C3 F3 78 */	mr r3, r30
/* 81496FC8 | 4B FF E9 0D */	bl NHTTPi_free
/* 81496FCC | 3B C0 00 00 */	li r30, 0x0
.L_81496FD0:
/* 81496FD0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81496FD4 | 40 82 FF D4 */	bne .L_81496FA8
/* 81496FD8 | 80 7D 00 24 */	lwz r3, 0x24(r29)
/* 81496FDC | 4B FF E8 F9 */	bl NHTTPi_free
/* 81496FE0 | 80 7D 00 28 */	lwz r3, 0x28(r29)
/* 81496FE4 | 4B FF E8 F1 */	bl NHTTPi_free
/* 81496FE8 | 7F A3 EB 78 */	mr r3, r29
/* 81496FEC | 4B FF E8 E9 */	bl NHTTPi_free
/* 81496FF0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81496FF4 | 38 60 00 01 */	li r3, 0x1
/* 81496FF8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81496FFC | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81497000 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81497004 | 7C 08 03 A6 */	mtlr r0
/* 81497008 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8149700C | 4E 80 00 20 */	blr
.endfn NHTTPi_destroyRequestObject

# .text:0x7A4 | 0x81497010 | size: 0xC0
.fn NHTTP_SendRequestAsync, global
/* 81497010 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81497014 | 7C 08 02 A6 */	mflr r0
/* 81497018 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8149701C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81497020 | 48 16 24 A1 */	bl _savegpr_27
/* 81497024 | 7C 7C 1B 78 */	mr r28, r3
/* 81497028 | 7C 9B 23 78 */	mr r27, r4
/* 8149702C | 48 00 5C 75 */	bl NHTTPi_GetBgnEndInfoP
/* 81497030 | 7C 7F 1B 78 */	mr r31, r3
/* 81497034 | 7F 83 E3 78 */	mr r3, r28
/* 81497038 | 48 00 5C 7D */	bl NHTTPi_GetThreadInfoP
/* 8149703C | 7C 7E 1B 78 */	mr r30, r3
/* 81497040 | 7F 83 E3 78 */	mr r3, r28
/* 81497044 | 48 00 5C 79 */	bl NHTTPi_GetMutexInfoP
/* 81497048 | 80 1B 00 04 */	lwz r0, 0x4(r27)
/* 8149704C | 7C 7D 1B 78 */	mr r29, r3
/* 81497050 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81497054 | 41 82 00 18 */	beq .L_8149706C
/* 81497058 | 7F E3 FB 78 */	mr r3, r31
/* 8149705C | 38 80 00 0B */	li r4, 0xb
/* 81497060 | 4B FF E8 B9 */	bl NHTTPi_SetError
/* 81497064 | 38 60 FF FF */	li r3, -0x1
/* 81497068 | 48 00 00 50 */	b .L_814970B8
.L_8149706C:
/* 8149706C | 4B FF EF 91 */	bl NHTTPi_lockReqList
/* 81497070 | 7F 83 E3 78 */	mr r3, r28
/* 81497074 | 48 00 5C 31 */	bl NHTTPi_GetListInfoP
/* 81497078 | 7F 64 DB 78 */	mr r4, r27
/* 8149707C | 4B FF EC F1 */	bl NHTTPi_setReqQueue
/* 81497080 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81497084 | 7C 7C 1B 78 */	mr r28, r3
/* 81497088 | 41 80 00 18 */	blt .L_814970A0
/* 8149708C | 38 00 00 01 */	li r0, 0x1
/* 81497090 | 7F C3 F3 78 */	mr r3, r30
/* 81497094 | 90 1B 00 04 */	stw r0, 0x4(r27)
/* 81497098 | 4B FF F0 71 */	bl NHTTPi_kickCommThread
/* 8149709C | 48 00 00 10 */	b .L_814970AC
.L_814970A0:
/* 814970A0 | 7F E3 FB 78 */	mr r3, r31
/* 814970A4 | 38 80 00 01 */	li r4, 0x1
/* 814970A8 | 4B FF E8 71 */	bl NHTTPi_SetError
.L_814970AC:
/* 814970AC | 7F A3 EB 78 */	mr r3, r29
/* 814970B0 | 4B FF EF 51 */	bl NHTTPi_unlockReqList
/* 814970B4 | 7F 83 E3 78 */	mr r3, r28
.L_814970B8:
/* 814970B8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814970BC | 48 16 24 51 */	bl _restgpr_27
/* 814970C0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814970C4 | 7C 08 03 A6 */	mtlr r0
/* 814970C8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814970CC | 4E 80 00 20 */	blr
.endfn NHTTP_SendRequestAsync

# .text:0x864 | 0x814970D0 | size: 0xC4
.fn NHTTP_CancelRequestAsync, global
/* 814970D0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814970D4 | 7C 08 02 A6 */	mflr r0
/* 814970D8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814970DC | 39 61 00 20 */	addi r11, r1, 0x20
/* 814970E0 | 48 16 23 E1 */	bl _savegpr_27
/* 814970E4 | 7C 7B 1B 78 */	mr r27, r3
/* 814970E8 | 7C 9C 23 78 */	mr r28, r4
/* 814970EC | 3B C0 00 00 */	li r30, 0x0
/* 814970F0 | 48 00 5B BD */	bl NHTTPi_GetReqInfoP
/* 814970F4 | 7C 7F 1B 78 */	mr r31, r3
/* 814970F8 | 7F 63 DB 78 */	mr r3, r27
/* 814970FC | 48 00 5B C1 */	bl NHTTPi_GetMutexInfoP
/* 81497100 | 83 BF 00 00 */	lwz r29, 0x0(r31)
/* 81497104 | 7C 7F 1B 78 */	mr r31, r3
/* 81497108 | 4B FF EE F5 */	bl NHTTPi_lockReqList
/* 8149710C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81497110 | 41 82 00 40 */	beq .L_81497150
/* 81497114 | 80 1D 00 08 */	lwz r0, 0x8(r29)
/* 81497118 | 7C 00 E0 00 */	cmpw r0, r28
/* 8149711C | 40 82 00 34 */	bne .L_81497150
/* 81497120 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 81497124 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81497128 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149712C | 40 82 00 24 */	bne .L_81497150
/* 81497130 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 81497134 | 38 00 00 01 */	li r0, 0x1
/* 81497138 | 7F E3 FB 78 */	mr r3, r31
/* 8149713C | 90 04 00 00 */	stw r0, 0x0(r4)
/* 81497140 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 81497144 | 80 BD 00 10 */	lwz r5, 0x10(r29)
/* 81497148 | 48 00 0C 9D */	bl NHTTPi_SocCancel
/* 8149714C | 3B C0 00 01 */	li r30, 0x1
.L_81497150:
/* 81497150 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81497154 | 40 82 00 1C */	bne .L_81497170
/* 81497158 | 7F 63 DB 78 */	mr r3, r27
/* 8149715C | 48 00 5B 49 */	bl NHTTPi_GetListInfoP
/* 81497160 | 7F E4 FB 78 */	mr r4, r31
/* 81497164 | 7F 85 E3 78 */	mr r5, r28
/* 81497168 | 4B FF EC D1 */	bl NHTTPi_freeReqQueue
/* 8149716C | 7C 7E 1B 78 */	mr r30, r3
.L_81497170:
/* 81497170 | 7F E3 FB 78 */	mr r3, r31
/* 81497174 | 4B FF EE 8D */	bl NHTTPi_unlockReqList
/* 81497178 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8149717C | 7F C3 F3 78 */	mr r3, r30
/* 81497180 | 48 16 23 8D */	bl _restgpr_27
/* 81497184 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81497188 | 7C 08 03 A6 */	mtlr r0
/* 8149718C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81497190 | 4E 80 00 20 */	blr
.endfn NHTTP_CancelRequestAsync

# .text:0x928 | 0x81497194 | size: 0xA8
.fn NHTTPi_cancelAllRequests, global
/* 81497194 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81497198 | 7C 08 02 A6 */	mflr r0
/* 8149719C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814971A0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814971A4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814971A8 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814971AC | 7C 7D 1B 78 */	mr r29, r3
/* 814971B0 | 48 00 5A FD */	bl NHTTPi_GetReqInfoP
/* 814971B4 | 7C 7F 1B 78 */	mr r31, r3
/* 814971B8 | 7F A3 EB 78 */	mr r3, r29
/* 814971BC | 48 00 5A E9 */	bl NHTTPi_GetListInfoP
/* 814971C0 | 7C 7E 1B 78 */	mr r30, r3
/* 814971C4 | 7F A3 EB 78 */	mr r3, r29
/* 814971C8 | 48 00 5A F5 */	bl NHTTPi_GetMutexInfoP
/* 814971CC | 83 BF 00 00 */	lwz r29, 0x0(r31)
/* 814971D0 | 7C 7F 1B 78 */	mr r31, r3
/* 814971D4 | 4B FF EE 29 */	bl NHTTPi_lockReqList
/* 814971D8 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814971DC | 41 82 00 30 */	beq .L_8149720C
/* 814971E0 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 814971E4 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814971E8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814971EC | 40 82 00 20 */	bne .L_8149720C
/* 814971F0 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 814971F4 | 38 00 00 01 */	li r0, 0x1
/* 814971F8 | 7F E3 FB 78 */	mr r3, r31
/* 814971FC | 90 04 00 00 */	stw r0, 0x0(r4)
/* 81497200 | 80 9D 00 0C */	lwz r4, 0xc(r29)
/* 81497204 | 80 BD 00 10 */	lwz r5, 0x10(r29)
/* 81497208 | 48 00 0B DD */	bl NHTTPi_SocCancel
.L_8149720C:
/* 8149720C | 7F C3 F3 78 */	mr r3, r30
/* 81497210 | 7F E4 FB 78 */	mr r4, r31
/* 81497214 | 4B FF ED 41 */	bl NHTTPi_allFreeReqQueue
/* 81497218 | 7F E3 FB 78 */	mr r3, r31
/* 8149721C | 4B FF ED E5 */	bl NHTTPi_unlockReqList
/* 81497220 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81497224 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81497228 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8149722C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81497230 | 7C 08 03 A6 */	mtlr r0
/* 81497234 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81497238 | 4E 80 00 20 */	blr
.endfn NHTTPi_cancelAllRequests

# 0x81618C30..0x81618C48 | size: 0x18
.rodata
.balign 8

# .rodata:0x0 | 0x81618C30 | size: 0x18
.obj NHTTPi_strMultipartBound, global
	.4byte 0x2D2D7439
	.4byte 0x53663479
	.4byte 0x666A6631
	.4byte 0x52747644
	.4byte 0x75334141
	.4byte 0x00000000
.endobj NHTTPi_strMultipartBound

# 0x8166D140..0x8166D150 | size: 0x10
.data
.balign 8

# .data:0x0 | 0x8166D140 | size: 0x10
.obj lbl_8166D140, global
	.4byte 0x68747470
	.4byte 0x733A2F2F
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_8166D140

# 0x81697AD0..0x81697AD8 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697AD0 | size: 0x8
.obj lbl_81697AD0, global
	.string "http://"
.endobj lbl_81697AD0
