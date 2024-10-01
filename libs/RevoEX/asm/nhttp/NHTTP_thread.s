.include "macros.inc"
.file "NHTTP_thread.c"

# 0x81498774..0x8149B390 | size: 0x2C1C
.text
.balign 4

# .text:0x0 | 0x81498774 | size: 0xC
.fn NHTTPi_InitThreadInfo, global
/* 81498774 | 38 00 00 00 */	li r0, 0x0
/* 81498778 | 90 03 03 48 */	stw r0, 0x348(r3)
/* 8149877C | 4E 80 00 20 */	blr
.endfn NHTTPi_InitThreadInfo

# .text:0xC | 0x81498780 | size: 0xC
.fn NHTTPi_IsCreateCommThreadMessageQueueOn, global
/* 81498780 | 38 00 00 01 */	li r0, 0x1
/* 81498784 | 90 03 03 48 */	stw r0, 0x348(r3)
/* 81498788 | 4E 80 00 20 */	blr
.endfn NHTTPi_IsCreateCommThreadMessageQueueOn

# .text:0x18 | 0x8149878C | size: 0x8
.fn NHTTPi_IsCreateCommThreadMessageQueue, global
/* 8149878C | 80 63 03 48 */	lwz r3, 0x348(r3)
/* 81498790 | 4E 80 00 20 */	blr
.endfn NHTTPi_IsCreateCommThreadMessageQueue

# .text:0x20 | 0x81498794 | size: 0xE8
.fn NHTTP_GetProgress, global
/* 81498794 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81498798 | 7C 08 02 A6 */	mflr r0
/* 8149879C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814987A0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814987A4 | 48 16 0D 1D */	bl _savegpr_27
/* 814987A8 | 7C 7B 1B 78 */	mr r27, r3
/* 814987AC | 7C 9C 23 78 */	mr r28, r4
/* 814987B0 | 7C BD 2B 78 */	mr r29, r5
/* 814987B4 | 48 00 45 09 */	bl NHTTPi_GetMutexInfoP
/* 814987B8 | 7C 7F 1B 78 */	mr r31, r3
/* 814987BC | 7F 63 DB 78 */	mr r3, r27
/* 814987C0 | 48 00 44 ED */	bl NHTTPi_GetReqInfoP
/* 814987C4 | 83 C3 00 00 */	lwz r30, 0x0(r3)
/* 814987C8 | 38 00 00 00 */	li r0, 0x0
/* 814987CC | 7F E3 FB 78 */	mr r3, r31
/* 814987D0 | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 814987D4 | 90 1D 00 00 */	stw r0, 0x0(r29)
/* 814987D8 | 4B FF D8 25 */	bl NHTTPi_lockReqList
/* 814987DC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814987E0 | 41 82 00 60 */	beq .L_81498840
/* 814987E4 | 80 7E 00 0C */	lwz r3, 0xc(r30)
/* 814987E8 | 80 63 00 2C */	lwz r3, 0x2c(r3)
/* 814987EC | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 814987F0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814987F4 | 41 82 00 44 */	beq .L_81498838
/* 814987F8 | 80 7E 00 0C */	lwz r3, 0xc(r30)
/* 814987FC | 80 63 00 2C */	lwz r3, 0x2c(r3)
/* 81498800 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 81498804 | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 81498808 | 80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8149880C | 80 63 00 2C */	lwz r3, 0x2c(r3)
/* 81498810 | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 81498814 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 81498818 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 8149881C | 40 82 00 0C */	bne .L_81498828
/* 81498820 | 38 00 00 00 */	li r0, 0x0
/* 81498824 | 48 00 00 10 */	b .L_81498834
.L_81498828:
/* 81498828 | 80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8149882C | 80 63 00 2C */	lwz r3, 0x2c(r3)
/* 81498830 | 80 03 00 0C */	lwz r0, 0xc(r3)
.L_81498834:
/* 81498834 | 90 1D 00 00 */	stw r0, 0x0(r29)
.L_81498838:
/* 81498838 | 3B C0 00 01 */	li r30, 0x1
/* 8149883C | 48 00 00 1C */	b .L_81498858
.L_81498840:
/* 81498840 | 7F 63 DB 78 */	mr r3, r27
/* 81498844 | 48 00 44 61 */	bl NHTTPi_GetListInfoP
/* 81498848 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8149884C | 7C 03 00 D0 */	neg r0, r3
/* 81498850 | 7C 00 1B 78 */	or r0, r0, r3
/* 81498854 | 54 1E 0F FE */	srwi r30, r0, 31
.L_81498858:
/* 81498858 | 7F E3 FB 78 */	mr r3, r31
/* 8149885C | 4B FF D7 A5 */	bl NHTTPi_unlockReqList
/* 81498860 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81498864 | 7F C3 F3 78 */	mr r3, r30
/* 81498868 | 48 16 0C A5 */	bl _restgpr_27
/* 8149886C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81498870 | 7C 08 03 A6 */	mtlr r0
/* 81498874 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81498878 | 4E 80 00 20 */	blr
.endfn NHTTP_GetProgress

# .text:0x108 | 0x8149887C | size: 0xC8
.fn NHTTPi_CheckHeaderEnd, local
/* 8149887C | 38 04 FF FE */	subi r0, r4, 0x2
/* 81498880 | 54 00 07 BE */	clrlwi r0, r0, 30
/* 81498884 | 7C A3 00 AE */	lbzx r5, r3, r0
/* 81498888 | 7C A0 07 74 */	extsb r0, r5
/* 8149888C | 2C 00 00 0D */	cmpwi r0, 0xd
/* 81498890 | 40 82 00 24 */	bne .L_814988B4
/* 81498894 | 38 04 FF FF */	subi r0, r4, 0x1
/* 81498898 | 54 00 07 BE */	clrlwi r0, r0, 30
/* 8149889C | 7C 03 00 AE */	lbzx r0, r3, r0
/* 814988A0 | 7C 00 07 74 */	extsb r0, r0
/* 814988A4 | 2C 00 00 0D */	cmpwi r0, 0xd
/* 814988A8 | 40 82 00 0C */	bne .L_814988B4
/* 814988AC | 38 60 00 01 */	li r3, 0x1
/* 814988B0 | 4E 80 00 20 */	blr
.L_814988B4:
/* 814988B4 | 7C A0 07 74 */	extsb r0, r5
/* 814988B8 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 814988BC | 40 82 00 24 */	bne .L_814988E0
/* 814988C0 | 38 04 FF FF */	subi r0, r4, 0x1
/* 814988C4 | 54 00 07 BE */	clrlwi r0, r0, 30
/* 814988C8 | 7C 03 00 AE */	lbzx r0, r3, r0
/* 814988CC | 7C 00 07 74 */	extsb r0, r0
/* 814988D0 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 814988D4 | 40 82 00 0C */	bne .L_814988E0
/* 814988D8 | 38 60 00 01 */	li r3, 0x1
/* 814988DC | 4E 80 00 20 */	blr
.L_814988E0:
/* 814988E0 | 38 04 FF FC */	subi r0, r4, 0x4
/* 814988E4 | 54 00 07 BE */	clrlwi r0, r0, 30
/* 814988E8 | 7C 03 00 AE */	lbzx r0, r3, r0
/* 814988EC | 7C 00 07 74 */	extsb r0, r0
/* 814988F0 | 2C 00 00 0D */	cmpwi r0, 0xd
/* 814988F4 | 40 82 00 48 */	bne .L_8149893C
/* 814988F8 | 38 04 FF FD */	subi r0, r4, 0x3
/* 814988FC | 54 00 07 BE */	clrlwi r0, r0, 30
/* 81498900 | 7C 03 00 AE */	lbzx r0, r3, r0
/* 81498904 | 7C 00 07 74 */	extsb r0, r0
/* 81498908 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 8149890C | 40 82 00 30 */	bne .L_8149893C
/* 81498910 | 7C A0 07 74 */	extsb r0, r5
/* 81498914 | 2C 00 00 0D */	cmpwi r0, 0xd
/* 81498918 | 40 82 00 24 */	bne .L_8149893C
/* 8149891C | 38 04 FF FF */	subi r0, r4, 0x1
/* 81498920 | 54 00 07 BE */	clrlwi r0, r0, 30
/* 81498924 | 7C 03 00 AE */	lbzx r0, r3, r0
/* 81498928 | 7C 00 07 74 */	extsb r0, r0
/* 8149892C | 2C 00 00 0A */	cmpwi r0, 0xa
/* 81498930 | 40 82 00 0C */	bne .L_8149893C
/* 81498934 | 38 60 00 01 */	li r3, 0x1
/* 81498938 | 4E 80 00 20 */	blr
.L_8149893C:
/* 8149893C | 38 60 00 00 */	li r3, 0x0
/* 81498940 | 4E 80 00 20 */	blr
.endfn NHTTPi_CheckHeaderEnd

# .text:0x1D0 | 0x81498944 | size: 0xE0
.fn NHTTPi_SaveBuf, local
/* 81498944 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81498948 | 7C 08 02 A6 */	mflr r0
/* 8149894C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81498950 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81498954 | 48 16 0B 61 */	bl _savegpr_24
/* 81498958 | 7D 1D 43 78 */	mr r29, r8
/* 8149895C | 7C 78 1B 78 */	mr r24, r3
/* 81498960 | 7C 99 23 78 */	mr r25, r4
/* 81498964 | 7C BA 2B 78 */	mr r26, r5
/* 81498968 | 7C DB 33 78 */	mr r27, r6
/* 8149896C | 7C FC 3B 78 */	mr r28, r7
/* 81498970 | 7F BE EB 78 */	mr r30, r29
/* 81498974 | 48 00 00 8C */	b .L_81498A00
.L_81498978:
/* 81498978 | 80 18 00 00 */	lwz r0, 0x0(r24)
/* 8149897C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81498980 | 41 82 00 0C */	beq .L_8149898C
/* 81498984 | 38 60 FF FF */	li r3, -0x1
/* 81498988 | 48 00 00 84 */	b .L_81498A0C
.L_8149898C:
/* 8149898C | 80 1B 00 00 */	lwz r0, 0x0(r27)
/* 81498990 | 7F DF F3 78 */	mr r31, r30
/* 81498994 | 20 60 01 00 */	subfic r3, r0, 0x100
/* 81498998 | 7C 1E 18 00 */	cmpw r30, r3
/* 8149899C | 40 81 00 08 */	ble .L_814989A4
/* 814989A0 | 7C 7F 1B 78 */	mr r31, r3
.L_814989A4:
/* 814989A4 | 7F 84 E3 78 */	mr r4, r28
/* 814989A8 | 7F E5 FB 78 */	mr r5, r31
/* 814989AC | 7C 79 02 14 */	add r3, r25, r0
/* 814989B0 | 4B FF F4 FD */	bl NHTTPi_memcpy
/* 814989B4 | 80 1B 00 00 */	lwz r0, 0x0(r27)
/* 814989B8 | 7F 9C FA 14 */	add r28, r28, r31
/* 814989BC | 7F DF F0 50 */	subf r30, r31, r30
/* 814989C0 | 7C 00 FA 14 */	add r0, r0, r31
/* 814989C4 | 2C 00 01 00 */	cmpwi r0, 0x100
/* 814989C8 | 90 1B 00 00 */	stw r0, 0x0(r27)
/* 814989CC | 40 82 00 34 */	bne .L_81498A00
/* 814989D0 | 7F 03 C3 78 */	mr r3, r24
/* 814989D4 | 7F 44 D3 78 */	mr r4, r26
/* 814989D8 | 7F 25 CB 78 */	mr r5, r25
/* 814989DC | 38 C0 01 00 */	li r6, 0x100
/* 814989E0 | 38 E0 00 00 */	li r7, 0x0
/* 814989E4 | 4B FF F3 55 */	bl NHTTPi_SocSend
/* 814989E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814989EC | 41 81 00 08 */	bgt .L_814989F4
/* 814989F0 | 48 00 00 1C */	b .L_81498A0C
.L_814989F4:
/* 814989F4 | 80 1B 00 00 */	lwz r0, 0x0(r27)
/* 814989F8 | 7C 03 00 50 */	subf r0, r3, r0
/* 814989FC | 90 1B 00 00 */	stw r0, 0x0(r27)
.L_81498A00:
/* 81498A00 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81498A04 | 41 81 FF 74 */	bgt .L_81498978
/* 81498A08 | 7F A3 EB 78 */	mr r3, r29
.L_81498A0C:
/* 81498A0C | 39 61 00 30 */	addi r11, r1, 0x30
/* 81498A10 | 48 16 0A F1 */	bl _restgpr_24
/* 81498A14 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81498A18 | 7C 08 03 A6 */	mtlr r0
/* 81498A1C | 38 21 00 30 */	addi r1, r1, 0x30
/* 81498A20 | 4E 80 00 20 */	blr
.endfn NHTTPi_SaveBuf

# .text:0x2B0 | 0x81498A24 | size: 0x104
.fn NHTTPi_GetPostContentlength, local
/* 81498A24 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81498A28 | 7C 08 02 A6 */	mflr r0
/* 81498A2C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81498A30 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81498A34 | 48 16 0A 81 */	bl _savegpr_24
/* 81498A38 | 7C 78 1B 78 */	mr r24, r3
/* 81498A3C | 7C 99 23 78 */	mr r25, r4
/* 81498A40 | 7C BA 2B 78 */	mr r26, r5
/* 81498A44 | 7C DB 33 78 */	mr r27, r6
/* 81498A48 | 7C FC 3B 78 */	mr r28, r7
/* 81498A4C | 3B C0 00 00 */	li r30, 0x0
/* 81498A50 | 48 00 3D B9 */	bl NHTTPi_Request2Connection
/* 81498A54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81498A58 | 7C 7D 1B 78 */	mr r29, r3
/* 81498A5C | 40 82 00 0C */	bne .L_81498A68
/* 81498A60 | 38 60 00 00 */	li r3, 0x0
/* 81498A64 | 48 00 00 AC */	b .L_81498B10
.L_81498A68:
/* 81498A68 | 3B E0 00 00 */	li r31, 0x0
/* 81498A6C | 93 E3 00 24 */	stw r31, 0x24(r3)
.L_81498A70:
/* 81498A70 | 80 19 00 00 */	lwz r0, 0x0(r25)
/* 81498A74 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81498A78 | 41 82 00 0C */	beq .L_81498A84
/* 81498A7C | 38 60 00 00 */	li r3, 0x0
/* 81498A80 | 48 00 00 90 */	b .L_81498B10
.L_81498A84:
/* 81498A84 | 93 FD 00 28 */	stw r31, 0x28(r29)
/* 81498A88 | 7F 03 C3 78 */	mr r3, r24
/* 81498A8C | 7F A4 EB 78 */	mr r4, r29
/* 81498A90 | 7F 45 D3 78 */	mr r5, r26
/* 81498A94 | 7F C6 F3 78 */	mr r6, r30
/* 81498A98 | 48 00 3E 31 */	bl NHTTPi_PostSendCallback
/* 81498A9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81498AA0 | 40 80 00 0C */	bge .L_81498AAC
/* 81498AA4 | 38 60 00 00 */	li r3, 0x0
/* 81498AA8 | 48 00 00 68 */	b .L_81498B10
.L_81498AAC:
/* 81498AAC | 80 9D 00 28 */	lwz r4, 0x28(r29)
/* 81498AB0 | 80 7D 00 24 */	lwz r3, 0x24(r29)
/* 81498AB4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81498AB8 | 41 82 00 54 */	beq .L_81498B0C
/* 81498ABC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81498AC0 | 40 82 00 0C */	bne .L_81498ACC
/* 81498AC4 | 38 60 00 00 */	li r3, 0x0
/* 81498AC8 | 48 00 00 48 */	b .L_81498B10
.L_81498ACC:
/* 81498ACC | 2C 1C 00 02 */	cmpwi r28, 0x2
/* 81498AD0 | 7F DE 22 14 */	add r30, r30, r4
/* 81498AD4 | 41 82 00 24 */	beq .L_81498AF8
/* 81498AD8 | 40 80 FF 98 */	bge .L_81498A70
/* 81498ADC | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81498AE0 | 40 80 00 08 */	bge .L_81498AE8
/* 81498AE4 | 4B FF FF 8C */	b .L_81498A70
.L_81498AE8:
/* 81498AE8 | 80 1B 00 00 */	lwz r0, 0x0(r27)
/* 81498AEC | 7C 00 22 14 */	add r0, r0, r4
/* 81498AF0 | 90 1B 00 00 */	stw r0, 0x0(r27)
/* 81498AF4 | 4B FF FF 7C */	b .L_81498A70
.L_81498AF8:
/* 81498AF8 | 4B FF F5 09 */	bl NHTTPi_getUrlEncodedSize2
/* 81498AFC | 80 1B 00 00 */	lwz r0, 0x0(r27)
/* 81498B00 | 7C 00 1A 14 */	add r0, r0, r3
/* 81498B04 | 90 1B 00 00 */	stw r0, 0x0(r27)
/* 81498B08 | 4B FF FF 68 */	b .L_81498A70
.L_81498B0C:
/* 81498B0C | 38 60 00 01 */	li r3, 0x1
.L_81498B10:
/* 81498B10 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81498B14 | 48 16 09 ED */	bl _restgpr_24
/* 81498B18 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81498B1C | 7C 08 03 A6 */	mtlr r0
/* 81498B20 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81498B24 | 4E 80 00 20 */	blr
.endfn NHTTPi_GetPostContentlength

# .text:0x3B4 | 0x81498B28 | size: 0x190
.fn NHTTPi_SendPostData, local
/* 81498B28 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81498B2C | 7C 08 02 A6 */	mflr r0
/* 81498B30 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81498B34 | 39 61 00 50 */	addi r11, r1, 0x50
/* 81498B38 | 48 16 09 69 */	bl _savegpr_19
/* 81498B3C | 7C 73 1B 78 */	mr r19, r3
/* 81498B40 | 7C 94 23 78 */	mr r20, r4
/* 81498B44 | 7C B5 2B 78 */	mr r21, r5
/* 81498B48 | 7C D6 33 78 */	mr r22, r6
/* 81498B4C | 7C F7 3B 78 */	mr r23, r7
/* 81498B50 | 7D 18 43 78 */	mr r24, r8
/* 81498B54 | 7D 39 4B 78 */	mr r25, r9
/* 81498B58 | 3B A0 00 00 */	li r29, 0x0
/* 81498B5C | 48 00 3C AD */	bl NHTTPi_Request2Connection
/* 81498B60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81498B64 | 7C 7A 1B 78 */	mr r26, r3
/* 81498B68 | 40 82 00 0C */	bne .L_81498B74
/* 81498B6C | 38 60 00 03 */	li r3, 0x3
/* 81498B70 | 48 00 01 30 */	b .L_81498CA0
.L_81498B74:
/* 81498B74 | 3B C0 00 00 */	li r30, 0x0
/* 81498B78 | 93 C3 00 24 */	stw r30, 0x24(r3)
.L_81498B7C:
/* 81498B7C | 80 14 00 00 */	lwz r0, 0x0(r20)
/* 81498B80 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81498B84 | 41 82 00 0C */	beq .L_81498B90
/* 81498B88 | 38 60 00 03 */	li r3, 0x3
/* 81498B8C | 48 00 01 14 */	b .L_81498CA0
.L_81498B90:
/* 81498B90 | 93 DA 00 28 */	stw r30, 0x28(r26)
/* 81498B94 | 7E 63 9B 78 */	mr r3, r19
/* 81498B98 | 7F 44 D3 78 */	mr r4, r26
/* 81498B9C | 7E C5 B3 78 */	mr r5, r22
/* 81498BA0 | 7F A6 EB 78 */	mr r6, r29
/* 81498BA4 | 48 00 3D 25 */	bl NHTTPi_PostSendCallback
/* 81498BA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81498BAC | 40 80 00 0C */	bge .L_81498BB8
/* 81498BB0 | 38 60 00 03 */	li r3, 0x3
/* 81498BB4 | 48 00 00 EC */	b .L_81498CA0
.L_81498BB8:
/* 81498BB8 | 83 9A 00 28 */	lwz r28, 0x28(r26)
/* 81498BBC | 80 FA 00 24 */	lwz r7, 0x24(r26)
/* 81498BC0 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81498BC4 | 41 82 00 D8 */	beq .L_81498C9C
/* 81498BC8 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 81498BCC | 40 82 00 0C */	bne .L_81498BD8
/* 81498BD0 | 38 60 00 03 */	li r3, 0x3
/* 81498BD4 | 48 00 00 CC */	b .L_81498CA0
.L_81498BD8:
/* 81498BD8 | 2C 19 00 02 */	cmpwi r25, 0x2
/* 81498BDC | 7F BD E2 14 */	add r29, r29, r28
/* 81498BE0 | 41 82 00 48 */	beq .L_81498C28
/* 81498BE4 | 40 80 FF 98 */	bge .L_81498B7C
/* 81498BE8 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 81498BEC | 40 80 00 08 */	bge .L_81498BF4
/* 81498BF0 | 4B FF FF 8C */	b .L_81498B7C
.L_81498BF4:
/* 81498BF4 | 7E 83 A3 78 */	mr r3, r20
/* 81498BF8 | 7E A4 AB 78 */	mr r4, r21
/* 81498BFC | 7E E5 BB 78 */	mr r5, r23
/* 81498C00 | 7F 06 C3 78 */	mr r6, r24
/* 81498C04 | 7F 88 E3 78 */	mr r8, r28
/* 81498C08 | 4B FF FD 3D */	bl NHTTPi_SaveBuf
/* 81498C0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81498C10 | 40 80 00 0C */	bge .L_81498C1C
/* 81498C14 | 38 60 00 01 */	li r3, 0x1
/* 81498C18 | 48 00 00 88 */	b .L_81498CA0
.L_81498C1C:
/* 81498C1C | 40 82 FF 60 */	bne .L_81498B7C
/* 81498C20 | 38 60 00 02 */	li r3, 0x2
/* 81498C24 | 48 00 00 7C */	b .L_81498CA0
.L_81498C28:
/* 81498C28 | 7C FF 3B 78 */	mr r31, r7
/* 81498C2C | 3B 60 00 00 */	li r27, 0x0
/* 81498C30 | 48 00 00 60 */	b .L_81498C90
.L_81498C34:
/* 81498C34 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81498C38 | 38 80 00 03 */	li r4, 0x3
/* 81498C3C | 4B FF F2 7D */	bl NHTTPi_memclr
/* 81498C40 | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 81498C44 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81498C48 | 7C 04 07 74 */	extsb r4, r0
/* 81498C4C | 4B FF F4 29 */	bl NHTTPi_encodeUrlChar
/* 81498C50 | 7C 68 1B 78 */	mr r8, r3
/* 81498C54 | 7E 83 A3 78 */	mr r3, r20
/* 81498C58 | 7E A4 AB 78 */	mr r4, r21
/* 81498C5C | 7E E5 BB 78 */	mr r5, r23
/* 81498C60 | 7F 06 C3 78 */	mr r6, r24
/* 81498C64 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 81498C68 | 4B FF FC DD */	bl NHTTPi_SaveBuf
/* 81498C6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81498C70 | 40 80 00 0C */	bge .L_81498C7C
/* 81498C74 | 38 60 00 01 */	li r3, 0x1
/* 81498C78 | 48 00 00 28 */	b .L_81498CA0
.L_81498C7C:
/* 81498C7C | 40 82 00 0C */	bne .L_81498C88
/* 81498C80 | 38 60 00 02 */	li r3, 0x2
/* 81498C84 | 48 00 00 1C */	b .L_81498CA0
.L_81498C88:
/* 81498C88 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 81498C8C | 3B FF 00 01 */	addi r31, r31, 0x1
.L_81498C90:
/* 81498C90 | 7C 1B E0 40 */	cmplw r27, r28
/* 81498C94 | 41 80 FF A0 */	blt .L_81498C34
/* 81498C98 | 4B FF FE E4 */	b .L_81498B7C
.L_81498C9C:
/* 81498C9C | 38 60 00 00 */	li r3, 0x0
.L_81498CA0:
/* 81498CA0 | 39 61 00 50 */	addi r11, r1, 0x50
/* 81498CA4 | 48 16 08 49 */	bl _restgpr_19
/* 81498CA8 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 81498CAC | 7C 08 03 A6 */	mtlr r0
/* 81498CB0 | 38 21 00 50 */	addi r1, r1, 0x50
/* 81498CB4 | 4E 80 00 20 */	blr
.endfn NHTTPi_SendPostData

# .text:0x544 | 0x81498CB8 | size: 0xCC
.fn NHTTPi_BufFull, local
/* 81498CB8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81498CBC | 7C 08 02 A6 */	mflr r0
/* 81498CC0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81498CC4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81498CC8 | 3B E0 00 00 */	li r31, 0x0
/* 81498CCC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81498CD0 | 7C 9E 23 78 */	mr r30, r4
/* 81498CD4 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81498CD8 | 7C 7D 1B 78 */	mr r29, r3
/* 81498CDC | 7F C3 F3 78 */	mr r3, r30
/* 81498CE0 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 81498CE4 | 4B FF DB 11 */	bl NHTTPi_isRecvBufFull
/* 81498CE8 | 80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 81498CEC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81498CF0 | 41 82 00 18 */	beq .L_81498D08
/* 81498CF4 | 80 1E 00 28 */	lwz r0, 0x28(r30)
/* 81498CF8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81498CFC | 41 82 00 0C */	beq .L_81498D08
/* 81498D00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81498D04 | 41 82 00 58 */	beq .L_81498D5C
.L_81498D08:
/* 81498D08 | 7F A3 EB 78 */	mr r3, r29
/* 81498D0C | 7F C4 F3 78 */	mr r4, r30
/* 81498D10 | 48 00 3B 01 */	bl NHTTPi_Response2Connection
/* 81498D14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81498D18 | 7C 64 1B 78 */	mr r4, r3
/* 81498D1C | 41 82 00 48 */	beq .L_81498D64
/* 81498D20 | 7F A3 EB 78 */	mr r3, r29
/* 81498D24 | 48 00 3C 8D */	bl NHTTPi_BufferFullCallback
/* 81498D28 | 80 1E 00 28 */	lwz r0, 0x28(r30)
/* 81498D2C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81498D30 | 41 82 00 34 */	beq .L_81498D64
/* 81498D34 | 80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 81498D38 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81498D3C | 41 82 00 28 */	beq .L_81498D64
/* 81498D40 | 80 9E 00 04 */	lwz r4, 0x4(r30)
/* 81498D44 | 7F C3 F3 78 */	mr r3, r30
/* 81498D48 | 4B FF DA AD */	bl NHTTPi_isRecvBufFull
/* 81498D4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81498D50 | 40 82 00 14 */	bne .L_81498D64
/* 81498D54 | 3B E0 00 01 */	li r31, 0x1
/* 81498D58 | 48 00 00 0C */	b .L_81498D64
.L_81498D5C:
/* 81498D5C | 40 82 00 08 */	bne .L_81498D64
/* 81498D60 | 3B E0 00 01 */	li r31, 0x1
.L_81498D64:
/* 81498D64 | 7F E3 FB 78 */	mr r3, r31
/* 81498D68 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81498D6C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81498D70 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81498D74 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81498D78 | 7C 08 03 A6 */	mtlr r0
/* 81498D7C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81498D80 | 4E 80 00 20 */	blr
.endfn NHTTPi_BufFull

# .text:0x610 | 0x81498D84 | size: 0xAC
.fn NHTTPi_SendData, local
/* 81498D84 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81498D88 | 7C 08 02 A6 */	mflr r0
/* 81498D8C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81498D90 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81498D94 | 48 16 07 29 */	bl _savegpr_26
/* 81498D98 | 7C 7A 1B 78 */	mr r26, r3
/* 81498D9C | 7C 9B 23 78 */	mr r27, r4
/* 81498DA0 | 7C BC 2B 78 */	mr r28, r5
/* 81498DA4 | 48 00 3E 95 */	bl NHTTPi_GetSystemInfoP
/* 81498DA8 | 7C 7D 1B 78 */	mr r29, r3
/* 81498DAC | 48 00 3E F5 */	bl NHTTPi_GetBgnEndInfoP
/* 81498DB0 | 7C 7E 1B 78 */	mr r30, r3
/* 81498DB4 | 7F A3 EB 78 */	mr r3, r29
/* 81498DB8 | 48 00 3E FD */	bl NHTTPi_GetThreadInfoP
/* 81498DBC | 7C 7F 1B 78 */	mr r31, r3
/* 81498DC0 | 7F A3 EB 78 */	mr r3, r29
/* 81498DC4 | 48 00 3E E9 */	bl NHTTPi_GetReqInfoP
/* 81498DC8 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81498DCC | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81498DD0 | 38 9F 03 60 */	addi r4, r31, 0x360
/* 81498DD4 | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 81498DD8 | 40 82 00 0C */	bne .L_81498DE4
/* 81498DDC | 38 60 00 00 */	li r3, 0x0
/* 81498DE0 | 48 00 00 38 */	b .L_81498E18
.L_81498DE4:
/* 81498DE4 | 80 BE 07 D0 */	lwz r5, 0x7d0(r30)
/* 81498DE8 | 7F 67 DB 78 */	mr r7, r27
/* 81498DEC | 7F 88 E3 78 */	mr r8, r28
/* 81498DF0 | 38 DA 03 24 */	addi r6, r26, 0x324
/* 81498DF4 | 4B FF FB 51 */	bl NHTTPi_SaveBuf
/* 81498DF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81498DFC | 40 80 00 0C */	bge .L_81498E08
/* 81498E00 | 38 60 00 01 */	li r3, 0x1
/* 81498E04 | 48 00 00 14 */	b .L_81498E18
.L_81498E08:
/* 81498E08 | 7C 60 00 34 */	cntlzw r0, r3
/* 81498E0C | 54 00 DF FE */	extrwi r0, r0, 1, 26
/* 81498E10 | 7C 00 00 D0 */	neg r0, r0
/* 81498E14 | 54 03 07 BC */	rlwinm r3, r0, 0, 30, 30
.L_81498E18:
/* 81498E18 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81498E1C | 48 16 06 ED */	bl _restgpr_26
/* 81498E20 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81498E24 | 7C 08 03 A6 */	mtlr r0
/* 81498E28 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81498E2C | 4E 80 00 20 */	blr
.endfn NHTTPi_SendData

# .text:0x6BC | 0x81498E30 | size: 0x2A8
.fn NHTTPi_SendProxyConnectMethod, local
/* 81498E30 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81498E34 | 7C 08 02 A6 */	mflr r0
/* 81498E38 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81498E3C | 39 61 00 30 */	addi r11, r1, 0x30
/* 81498E40 | 48 16 06 7D */	bl _savegpr_26
/* 81498E44 | 3F 80 81 67 */	lis r28, lbl_8166D1A8@ha
/* 81498E48 | 7C 7F 1B 78 */	mr r31, r3
/* 81498E4C | 3B 9C D1 A8 */	addi r28, r28, lbl_8166D1A8@l
/* 81498E50 | 48 00 3D E9 */	bl NHTTPi_GetSystemInfoP
/* 81498E54 | 7C 7E 1B 78 */	mr r30, r3
/* 81498E58 | 48 00 3E 55 */	bl NHTTPi_GetReqInfoP
/* 81498E5C | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 81498E60 | 7F C3 F3 78 */	mr r3, r30
/* 81498E64 | 83 64 00 0C */	lwz r27, 0xc(r4)
/* 81498E68 | 48 00 3E 4D */	bl NHTTPi_GetThreadInfoP
/* 81498E6C | 7C 7D 1B 78 */	mr r29, r3
/* 81498E70 | 7F C3 F3 78 */	mr r3, r30
/* 81498E74 | 48 00 3E 2D */	bl NHTTPi_GetBgnEndInfoP
/* 81498E78 | 80 9B 00 20 */	lwz r4, 0x20(r27)
/* 81498E7C | 7C 7E 1B 78 */	mr r30, r3
/* 81498E80 | 3B 5D 03 60 */	addi r26, r29, 0x360
/* 81498E84 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81498E88 | 4B FF F4 51 */	bl NHTTPi_intToStr
/* 81498E8C | 7C 7D 1B 78 */	mr r29, r3
/* 81498E90 | 7F E3 FB 78 */	mr r3, r31
/* 81498E94 | 38 9C 00 00 */	addi r4, r28, 0x0
/* 81498E98 | 38 A0 00 08 */	li r5, 0x8
/* 81498E9C | 4B FF FE E9 */	bl NHTTPi_SendData
/* 81498EA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81498EA4 | 41 82 00 08 */	beq .L_81498EAC
/* 81498EA8 | 48 00 02 18 */	b .L_814990C0
.L_81498EAC:
/* 81498EAC | 80 9B 00 24 */	lwz r4, 0x24(r27)
/* 81498EB0 | 7F E3 FB 78 */	mr r3, r31
/* 81498EB4 | 80 BB 00 14 */	lwz r5, 0x14(r27)
/* 81498EB8 | 38 84 00 08 */	addi r4, r4, 0x8
/* 81498EBC | 38 A5 FF F8 */	subi r5, r5, 0x8
/* 81498EC0 | 4B FF FE C5 */	bl NHTTPi_SendData
/* 81498EC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81498EC8 | 41 82 00 08 */	beq .L_81498ED0
/* 81498ECC | 48 00 01 F4 */	b .L_814990C0
.L_81498ED0:
/* 81498ED0 | 7F E3 FB 78 */	mr r3, r31
/* 81498ED4 | 38 8D 9A 98 */	li r4, lbl_81697AD8@sda21
/* 81498ED8 | 38 A0 00 01 */	li r5, 0x1
/* 81498EDC | 4B FF FE A9 */	bl NHTTPi_SendData
/* 81498EE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81498EE4 | 41 82 00 08 */	beq .L_81498EEC
/* 81498EE8 | 48 00 01 D8 */	b .L_814990C0
.L_81498EEC:
/* 81498EEC | 7F E3 FB 78 */	mr r3, r31
/* 81498EF0 | 7F A5 EB 78 */	mr r5, r29
/* 81498EF4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81498EF8 | 4B FF FE 8D */	bl NHTTPi_SendData
/* 81498EFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81498F00 | 41 82 00 08 */	beq .L_81498F08
/* 81498F04 | 48 00 01 BC */	b .L_814990C0
.L_81498F08:
/* 81498F08 | 7F E3 FB 78 */	mr r3, r31
/* 81498F0C | 38 9C 00 0C */	addi r4, r28, 0xc
/* 81498F10 | 38 A0 00 0B */	li r5, 0xb
/* 81498F14 | 4B FF FE 71 */	bl NHTTPi_SendData
/* 81498F18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81498F1C | 41 82 00 08 */	beq .L_81498F24
/* 81498F20 | 48 00 01 A0 */	b .L_814990C0
.L_81498F24:
/* 81498F24 | 7F E3 FB 78 */	mr r3, r31
/* 81498F28 | 38 8D 9A 9C */	li r4, lbl_81697ADC@sda21
/* 81498F2C | 38 A0 00 06 */	li r5, 0x6
/* 81498F30 | 4B FF FE 55 */	bl NHTTPi_SendData
/* 81498F34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81498F38 | 41 82 00 08 */	beq .L_81498F40
/* 81498F3C | 48 00 01 84 */	b .L_814990C0
.L_81498F40:
/* 81498F40 | 80 9B 00 24 */	lwz r4, 0x24(r27)
/* 81498F44 | 7F E3 FB 78 */	mr r3, r31
/* 81498F48 | 80 BB 00 14 */	lwz r5, 0x14(r27)
/* 81498F4C | 38 84 00 08 */	addi r4, r4, 0x8
/* 81498F50 | 38 A5 FF F8 */	subi r5, r5, 0x8
/* 81498F54 | 4B FF FE 31 */	bl NHTTPi_SendData
/* 81498F58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81498F5C | 41 82 00 08 */	beq .L_81498F64
/* 81498F60 | 48 00 01 60 */	b .L_814990C0
.L_81498F64:
/* 81498F64 | 7F E3 FB 78 */	mr r3, r31
/* 81498F68 | 38 8D 9A 98 */	li r4, lbl_81697AD8@sda21
/* 81498F6C | 38 A0 00 01 */	li r5, 0x1
/* 81498F70 | 4B FF FE 15 */	bl NHTTPi_SendData
/* 81498F74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81498F78 | 41 82 00 08 */	beq .L_81498F80
/* 81498F7C | 48 00 01 44 */	b .L_814990C0
.L_81498F80:
/* 81498F80 | 7F E3 FB 78 */	mr r3, r31
/* 81498F84 | 7F A5 EB 78 */	mr r5, r29
/* 81498F88 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81498F8C | 4B FF FD F9 */	bl NHTTPi_SendData
/* 81498F90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81498F94 | 41 82 00 08 */	beq .L_81498F9C
/* 81498F98 | 48 00 01 28 */	b .L_814990C0
.L_81498F9C:
/* 81498F9C | 7F E3 FB 78 */	mr r3, r31
/* 81498FA0 | 38 8D 9A A4 */	li r4, lbl_81697AE4@sda21
/* 81498FA4 | 38 A0 00 02 */	li r5, 0x2
/* 81498FA8 | 4B FF FD DD */	bl NHTTPi_SendData
/* 81498FAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81498FB0 | 41 82 00 08 */	beq .L_81498FB8
/* 81498FB4 | 48 00 01 0C */	b .L_814990C0
.L_81498FB8:
/* 81498FB8 | 7F E3 FB 78 */	mr r3, r31
/* 81498FBC | 38 9C 00 18 */	addi r4, r28, 0x18
/* 81498FC0 | 38 A0 00 25 */	li r5, 0x25
/* 81498FC4 | 4B FF FD C1 */	bl NHTTPi_SendData
/* 81498FC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81498FCC | 41 82 00 08 */	beq .L_81498FD4
/* 81498FD0 | 48 00 00 F0 */	b .L_814990C0
.L_81498FD4:
/* 81498FD4 | 48 00 3C 65 */	bl NHTTPi_GetSystemInfoP
/* 81498FD8 | 48 00 3C D5 */	bl NHTTPi_GetReqInfoP
/* 81498FDC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81498FE0 | 83 A3 00 0C */	lwz r29, 0xc(r3)
/* 81498FE4 | 80 1D 02 40 */	lwz r0, 0x240(r29)
/* 81498FE8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81498FEC | 40 82 00 0C */	bne .L_81498FF8
/* 81498FF0 | 38 60 00 00 */	li r3, 0x0
/* 81498FF4 | 48 00 00 5C */	b .L_81499050
.L_81498FF8:
/* 81498FF8 | 7F E3 FB 78 */	mr r3, r31
/* 81498FFC | 38 9C 00 40 */	addi r4, r28, 0x40
/* 81499000 | 38 A0 00 1B */	li r5, 0x1b
/* 81499004 | 4B FF FD 81 */	bl NHTTPi_SendData
/* 81499008 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149900C | 41 82 00 08 */	beq .L_81499014
/* 81499010 | 48 00 00 40 */	b .L_81499050
.L_81499014:
/* 81499014 | 80 BD 02 40 */	lwz r5, 0x240(r29)
/* 81499018 | 7F E3 FB 78 */	mr r3, r31
/* 8149901C | 38 9D 01 E4 */	addi r4, r29, 0x1e4
/* 81499020 | 4B FF FD 65 */	bl NHTTPi_SendData
/* 81499024 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81499028 | 41 82 00 08 */	beq .L_81499030
/* 8149902C | 48 00 00 24 */	b .L_81499050
.L_81499030:
/* 81499030 | 7F E3 FB 78 */	mr r3, r31
/* 81499034 | 38 8D 9A A4 */	li r4, lbl_81697AE4@sda21
/* 81499038 | 38 A0 00 02 */	li r5, 0x2
/* 8149903C | 4B FF FD 49 */	bl NHTTPi_SendData
/* 81499040 | 7C 03 00 D0 */	neg r0, r3
/* 81499044 | 7C 00 1B 78 */	or r0, r0, r3
/* 81499048 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 8149904C | 7C 63 00 38 */	and r3, r3, r0
.L_81499050:
/* 81499050 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81499054 | 41 82 00 08 */	beq .L_8149905C
/* 81499058 | 48 00 00 68 */	b .L_814990C0
.L_8149905C:
/* 8149905C | 7F E3 FB 78 */	mr r3, r31
/* 81499060 | 38 8D 9A A4 */	li r4, lbl_81697AE4@sda21
/* 81499064 | 38 A0 00 02 */	li r5, 0x2
/* 81499068 | 4B FF FD 1D */	bl NHTTPi_SendData
/* 8149906C | 80 DF 03 24 */	lwz r6, 0x324(r31)
/* 81499070 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81499074 | 40 81 00 34 */	ble .L_814990A8
/* 81499078 | 80 9E 07 D0 */	lwz r4, 0x7d0(r30)
/* 8149907C | 7F 63 DB 78 */	mr r3, r27
/* 81499080 | 7F 45 D3 78 */	mr r5, r26
/* 81499084 | 38 E0 00 00 */	li r7, 0x0
/* 81499088 | 4B FF EC B1 */	bl NHTTPi_SocSend
/* 8149908C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81499090 | 40 80 00 0C */	bge .L_8149909C
/* 81499094 | 38 60 00 01 */	li r3, 0x1
/* 81499098 | 48 00 00 28 */	b .L_814990C0
.L_8149909C:
/* 8149909C | 40 82 00 0C */	bne .L_814990A8
/* 814990A0 | 38 60 00 02 */	li r3, 0x2
/* 814990A4 | 48 00 00 1C */	b .L_814990C0
.L_814990A8:
/* 814990A8 | 38 00 00 00 */	li r0, 0x0
/* 814990AC | 7F 43 D3 78 */	mr r3, r26
/* 814990B0 | 90 1F 03 24 */	stw r0, 0x324(r31)
/* 814990B4 | 38 80 01 00 */	li r4, 0x100
/* 814990B8 | 4B FF EE 01 */	bl NHTTPi_memclr
/* 814990BC | 38 60 00 00 */	li r3, 0x0
.L_814990C0:
/* 814990C0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814990C4 | 48 16 04 45 */	bl _restgpr_26
/* 814990C8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814990CC | 7C 08 03 A6 */	mtlr r0
/* 814990D0 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814990D4 | 4E 80 00 20 */	blr
.endfn NHTTPi_SendProxyConnectMethod

# .text:0x964 | 0x814990D8 | size: 0x1F8
.fn NHTTPi_RecvProxyConnectHeader, local
/* 814990D8 | 94 21 FD D0 */	stwu r1, -0x230(r1)
/* 814990DC | 7C 08 02 A6 */	mflr r0
/* 814990E0 | 90 01 02 34 */	stw r0, 0x234(r1)
/* 814990E4 | 39 61 02 30 */	addi r11, r1, 0x230
/* 814990E8 | 48 16 03 CD */	bl _savegpr_24
/* 814990EC | 48 00 3B 4D */	bl NHTTPi_GetSystemInfoP
/* 814990F0 | 7C 7A 1B 78 */	mr r26, r3
/* 814990F4 | 48 00 3B B9 */	bl NHTTPi_GetReqInfoP
/* 814990F8 | 7C 79 1B 78 */	mr r25, r3
/* 814990FC | 7F 43 D3 78 */	mr r3, r26
/* 81499100 | 48 00 3B B5 */	bl NHTTPi_GetThreadInfoP
/* 81499104 | 7C 78 1B 78 */	mr r24, r3
/* 81499108 | 7F 43 D3 78 */	mr r3, r26
/* 8149910C | 48 00 3B 95 */	bl NHTTPi_GetBgnEndInfoP
/* 81499110 | 7C 7E 1B 78 */	mr r30, r3
/* 81499114 | 7F 43 D3 78 */	mr r3, r26
/* 81499118 | 48 00 3B A5 */	bl NHTTPi_GetMutexInfoP
/* 8149911C | 80 99 00 00 */	lwz r4, 0x0(r25)
/* 81499120 | 3B 98 03 60 */	addi r28, r24, 0x360
/* 81499124 | 7C 7D 1B 78 */	mr r29, r3
/* 81499128 | 3B 20 00 00 */	li r25, 0x0
/* 8149912C | 83 64 00 0C */	lwz r27, 0xc(r4)
/* 81499130 | 3B 00 00 00 */	li r24, 0x0
/* 81499134 | 83 5B 00 2C */	lwz r26, 0x2c(r27)
.L_81499138:
/* 81499138 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 8149913C | 80 BE 07 D0 */	lwz r5, 0x7d0(r30)
/* 81499140 | 7F A3 EB 78 */	mr r3, r29
/* 81499144 | 7F 64 DB 78 */	mr r4, r27
/* 81499148 | 7C C6 C2 14 */	add r6, r6, r24
/* 8149914C | 20 F8 02 00 */	subfic r7, r24, 0x200
/* 81499150 | 39 00 00 00 */	li r8, 0x0
/* 81499154 | 4B FF E9 71 */	bl NHTTPi_SocRecv
/* 81499158 | 7C 7F 1B 78 */	mr r31, r3
/* 8149915C | 7F 18 1A 14 */	add r24, r24, r3
/* 81499160 | 38 61 00 11 */	addi r3, r1, 0x11
/* 81499164 | 38 80 00 03 */	li r4, 0x3
/* 81499168 | 4B FF F0 D1 */	bl NHTTPi_strToInt
/* 8149916C | 90 7A 00 18 */	stw r3, 0x18(r26)
/* 81499170 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81499174 | 38 8D 9A A8 */	li r4, lbl_81697AE8@sda21
/* 81499178 | 38 A0 00 05 */	li r5, 0x5
/* 8149917C | 4B FF ED 49 */	bl NHTTPi_strnicmp
/* 81499180 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81499184 | 40 82 00 20 */	bne .L_814991A4
/* 81499188 | 88 01 00 10 */	lbz r0, 0x10(r1)
/* 8149918C | 2C 00 00 20 */	cmpwi r0, 0x20
/* 81499190 | 40 82 00 14 */	bne .L_814991A4
/* 81499194 | 80 1A 00 18 */	lwz r0, 0x18(r26)
/* 81499198 | 2C 00 00 C8 */	cmpwi r0, 0xc8
/* 8149919C | 40 82 00 08 */	bne .L_814991A4
/* 814991A0 | 3B 20 00 01 */	li r25, 0x1
.L_814991A4:
/* 814991A4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814991A8 | 38 80 00 00 */	li r4, 0x0
/* 814991AC | 38 A0 00 00 */	li r5, 0x0
/* 814991B0 | 7F 09 03 A6 */	mtctr r24
/* 814991B4 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 814991B8 | 40 81 00 9C */	ble .L_81499254
.L_814991BC:
/* 814991BC | 2C 04 00 01 */	cmpwi r4, 0x1
/* 814991C0 | 40 81 00 24 */	ble .L_814991E4
/* 814991C4 | 88 03 FF FF */	lbz r0, -0x1(r3)
/* 814991C8 | 2C 00 00 0D */	cmpwi r0, 0xd
/* 814991CC | 40 82 00 18 */	bne .L_814991E4
/* 814991D0 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 814991D4 | 2C 00 00 0D */	cmpwi r0, 0xd
/* 814991D8 | 40 82 00 0C */	bne .L_814991E4
/* 814991DC | 38 A0 00 01 */	li r5, 0x1
/* 814991E0 | 48 00 00 68 */	b .L_81499248
.L_814991E4:
/* 814991E4 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 814991E8 | 40 81 00 24 */	ble .L_8149920C
/* 814991EC | 88 03 FF FF */	lbz r0, -0x1(r3)
/* 814991F0 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 814991F4 | 40 82 00 18 */	bne .L_8149920C
/* 814991F8 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 814991FC | 2C 00 00 0A */	cmpwi r0, 0xa
/* 81499200 | 40 82 00 0C */	bne .L_8149920C
/* 81499204 | 38 A0 00 01 */	li r5, 0x1
/* 81499208 | 48 00 00 40 */	b .L_81499248
.L_8149920C:
/* 8149920C | 2C 04 00 03 */	cmpwi r4, 0x3
/* 81499210 | 40 81 00 38 */	ble .L_81499248
/* 81499214 | 88 03 FF FD */	lbz r0, -0x3(r3)
/* 81499218 | 2C 00 00 0D */	cmpwi r0, 0xd
/* 8149921C | 40 82 00 2C */	bne .L_81499248
/* 81499220 | 88 03 FF FE */	lbz r0, -0x2(r3)
/* 81499224 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 81499228 | 40 82 00 20 */	bne .L_81499248
/* 8149922C | 88 03 FF FF */	lbz r0, -0x1(r3)
/* 81499230 | 2C 00 00 0D */	cmpwi r0, 0xd
/* 81499234 | 40 82 00 14 */	bne .L_81499248
/* 81499238 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 8149923C | 2C 00 00 0A */	cmpwi r0, 0xa
/* 81499240 | 40 82 00 08 */	bne .L_81499248
/* 81499244 | 38 A0 00 01 */	li r5, 0x1
.L_81499248:
/* 81499248 | 38 63 00 01 */	addi r3, r3, 0x1
/* 8149924C | 38 84 00 01 */	addi r4, r4, 0x1
/* 81499250 | 42 00 FF 6C */	bdnz .L_814991BC
.L_81499254:
/* 81499254 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81499258 | 41 82 00 14 */	beq .L_8149926C
/* 8149925C | 7C 19 00 D0 */	neg r0, r25
/* 81499260 | 7C 00 CB 78 */	or r0, r0, r25
/* 81499264 | 54 03 0F FE */	srwi r3, r0, 31
/* 81499268 | 48 00 00 50 */	b .L_814992B8
.L_8149926C:
/* 8149926C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81499270 | 40 80 00 0C */	bge .L_8149927C
/* 81499274 | 38 60 00 00 */	li r3, 0x0
/* 81499278 | 48 00 00 40 */	b .L_814992B8
.L_8149927C:
/* 8149927C | 2C 18 02 00 */	cmpwi r24, 0x200
/* 81499280 | 41 80 FE B8 */	blt .L_81499138
/* 81499284 | 80 BE 07 D0 */	lwz r5, 0x7d0(r30)
/* 81499288 | 7F A3 EB 78 */	mr r3, r29
/* 8149928C | 7F 64 DB 78 */	mr r4, r27
/* 81499290 | 7F 86 E3 78 */	mr r6, r28
/* 81499294 | 38 E0 00 01 */	li r7, 0x1
/* 81499298 | 39 00 00 00 */	li r8, 0x0
/* 8149929C | 4B FF E8 29 */	bl NHTTPi_SocRecv
/* 814992A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814992A4 | 40 80 00 0C */	bge .L_814992B0
/* 814992A8 | 38 60 00 00 */	li r3, 0x0
/* 814992AC | 48 00 00 0C */	b .L_814992B8
.L_814992B0:
/* 814992B0 | 41 82 FE 88 */	beq .L_81499138
/* 814992B4 | 38 60 00 00 */	li r3, 0x0
.L_814992B8:
/* 814992B8 | 39 61 02 30 */	addi r11, r1, 0x230
/* 814992BC | 48 16 02 45 */	bl _restgpr_24
/* 814992C0 | 80 01 02 34 */	lwz r0, 0x234(r1)
/* 814992C4 | 7C 08 03 A6 */	mtlr r0
/* 814992C8 | 38 21 02 30 */	addi r1, r1, 0x230
/* 814992CC | 4E 80 00 20 */	blr
.endfn NHTTPi_RecvProxyConnectHeader

# .text:0xB5C | 0x814992D0 | size: 0xF8
.fn NHTTPi_SendHeaderList, local
/* 814992D0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814992D4 | 7C 08 02 A6 */	mflr r0
/* 814992D8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814992DC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814992E0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814992E4 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814992E8 | 7C 7D 1B 78 */	mr r29, r3
/* 814992EC | 48 00 39 4D */	bl NHTTPi_GetSystemInfoP
/* 814992F0 | 48 00 39 BD */	bl NHTTPi_GetReqInfoP
/* 814992F4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814992F8 | 83 E3 00 0C */	lwz r31, 0xc(r3)
/* 814992FC | 38 7F 00 30 */	addi r3, r31, 0x30
/* 81499300 | 4B FF C9 F5 */	bl NHTTPi_getHdrFromList
/* 81499304 | 7C 7E 1B 78 */	mr r30, r3
/* 81499308 | 48 00 00 98 */	b .L_814993A0
.L_8149930C:
/* 8149930C | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 81499310 | 4B FF EB A1 */	bl NHTTPi_strlen
/* 81499314 | 80 9E 00 08 */	lwz r4, 0x8(r30)
/* 81499318 | 7C 65 1B 78 */	mr r5, r3
/* 8149931C | 7F A3 EB 78 */	mr r3, r29
/* 81499320 | 4B FF FA 65 */	bl NHTTPi_SendData
/* 81499324 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81499328 | 41 82 00 08 */	beq .L_81499330
/* 8149932C | 48 00 00 80 */	b .L_814993AC
.L_81499330:
/* 81499330 | 7F A3 EB 78 */	mr r3, r29
/* 81499334 | 38 8D 9A B0 */	li r4, lbl_81697AF0@sda21
/* 81499338 | 38 A0 00 02 */	li r5, 0x2
/* 8149933C | 4B FF FA 49 */	bl NHTTPi_SendData
/* 81499340 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81499344 | 41 82 00 08 */	beq .L_8149934C
/* 81499348 | 48 00 00 64 */	b .L_814993AC
.L_8149934C:
/* 8149934C | 80 7E 00 0C */	lwz r3, 0xc(r30)
/* 81499350 | 4B FF EB 61 */	bl NHTTPi_strlen
/* 81499354 | 80 9E 00 0C */	lwz r4, 0xc(r30)
/* 81499358 | 7C 65 1B 78 */	mr r5, r3
/* 8149935C | 7F A3 EB 78 */	mr r3, r29
/* 81499360 | 4B FF FA 25 */	bl NHTTPi_SendData
/* 81499364 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81499368 | 41 82 00 08 */	beq .L_81499370
/* 8149936C | 48 00 00 40 */	b .L_814993AC
.L_81499370:
/* 81499370 | 7F A3 EB 78 */	mr r3, r29
/* 81499374 | 38 8D 9A A4 */	li r4, lbl_81697AE4@sda21
/* 81499378 | 38 A0 00 02 */	li r5, 0x2
/* 8149937C | 4B FF FA 09 */	bl NHTTPi_SendData
/* 81499380 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81499384 | 41 82 00 08 */	beq .L_8149938C
/* 81499388 | 48 00 00 24 */	b .L_814993AC
.L_8149938C:
/* 8149938C | 7F C3 F3 78 */	mr r3, r30
/* 81499390 | 4B FF C5 45 */	bl NHTTPi_free
/* 81499394 | 38 7F 00 30 */	addi r3, r31, 0x30
/* 81499398 | 4B FF C9 5D */	bl NHTTPi_getHdrFromList
/* 8149939C | 7C 7E 1B 78 */	mr r30, r3
.L_814993A0:
/* 814993A0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814993A4 | 40 82 FF 68 */	bne .L_8149930C
/* 814993A8 | 38 60 00 00 */	li r3, 0x0
.L_814993AC:
/* 814993AC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814993B0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814993B4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814993B8 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814993BC | 7C 08 03 A6 */	mtlr r0
/* 814993C0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814993C4 | 4E 80 00 20 */	blr
.endfn NHTTPi_SendHeaderList

# .text:0xC54 | 0x814993C8 | size: 0x188
.fn NHTTPi_SendProcPostDataRaw, local
/* 814993C8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814993CC | 7C 08 02 A6 */	mflr r0
/* 814993D0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814993D4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814993D8 | 48 16 00 E5 */	bl _savegpr_26
/* 814993DC | 7C 7A 1B 78 */	mr r26, r3
/* 814993E0 | 48 00 38 59 */	bl NHTTPi_GetSystemInfoP
/* 814993E4 | 7C 7F 1B 78 */	mr r31, r3
/* 814993E8 | 48 00 38 D5 */	bl NHTTPi_GetMutexInfoP
/* 814993EC | 7C 7D 1B 78 */	mr r29, r3
/* 814993F0 | 7F E3 FB 78 */	mr r3, r31
/* 814993F4 | 48 00 38 B9 */	bl NHTTPi_GetReqInfoP
/* 814993F8 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 814993FC | 7F E3 FB 78 */	mr r3, r31
/* 81499400 | 83 84 00 0C */	lwz r28, 0xc(r4)
/* 81499404 | 48 00 38 B1 */	bl NHTTPi_GetThreadInfoP
/* 81499408 | 7C 7E 1B 78 */	mr r30, r3
/* 8149940C | 7F E3 FB 78 */	mr r3, r31
/* 81499410 | 48 00 38 91 */	bl NHTTPi_GetBgnEndInfoP
/* 81499414 | 38 00 00 00 */	li r0, 0x0
/* 81499418 | 7C 7F 1B 78 */	mr r31, r3
/* 8149941C | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81499420 | 3B DE 03 60 */	addi r30, r30, 0x360
/* 81499424 | 80 1C 02 48 */	lwz r0, 0x248(r28)
/* 81499428 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149942C | 40 82 00 2C */	bne .L_81499458
/* 81499430 | 7F A3 EB 78 */	mr r3, r29
/* 81499434 | 7F 84 E3 78 */	mr r4, r28
/* 81499438 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 8149943C | 38 A0 00 00 */	li r5, 0x0
/* 81499440 | 38 E0 00 00 */	li r7, 0x0
/* 81499444 | 4B FF F5 E1 */	bl NHTTPi_GetPostContentlength
/* 81499448 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149944C | 40 82 00 14 */	bne .L_81499460
/* 81499450 | 38 60 00 03 */	li r3, 0x3
/* 81499454 | 48 00 00 E4 */	b .L_81499538
.L_81499458:
/* 81499458 | 80 1C 02 4C */	lwz r0, 0x24c(r28)
/* 8149945C | 90 01 00 08 */	stw r0, 0x8(r1)
.L_81499460:
/* 81499460 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 81499464 | 38 61 00 0C */	addi r3, r1, 0xc
/* 81499468 | 4B FF EE 71 */	bl NHTTPi_intToStr
/* 8149946C | 3C 80 81 67 */	lis r4, lbl_8166D204@ha
/* 81499470 | 7C 7B 1B 78 */	mr r27, r3
/* 81499474 | 7F 43 D3 78 */	mr r3, r26
/* 81499478 | 38 A0 00 10 */	li r5, 0x10
/* 8149947C | 38 84 D2 04 */	addi r4, r4, lbl_8166D204@l
/* 81499480 | 4B FF F9 05 */	bl NHTTPi_SendData
/* 81499484 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81499488 | 41 82 00 08 */	beq .L_81499490
/* 8149948C | 48 00 00 AC */	b .L_81499538
.L_81499490:
/* 81499490 | 7F 43 D3 78 */	mr r3, r26
/* 81499494 | 7F 65 DB 78 */	mr r5, r27
/* 81499498 | 38 81 00 0C */	addi r4, r1, 0xc
/* 8149949C | 4B FF F8 E9 */	bl NHTTPi_SendData
/* 814994A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814994A4 | 41 82 00 08 */	beq .L_814994AC
/* 814994A8 | 48 00 00 90 */	b .L_81499538
.L_814994AC:
/* 814994AC | 7F 43 D3 78 */	mr r3, r26
/* 814994B0 | 38 8D 9A A4 */	li r4, lbl_81697AE4@sda21
/* 814994B4 | 38 A0 00 02 */	li r5, 0x2
/* 814994B8 | 4B FF F8 CD */	bl NHTTPi_SendData
/* 814994BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814994C0 | 41 82 00 08 */	beq .L_814994C8
/* 814994C4 | 48 00 00 74 */	b .L_81499538
.L_814994C8:
/* 814994C8 | 7F 43 D3 78 */	mr r3, r26
/* 814994CC | 38 8D 9A A4 */	li r4, lbl_81697AE4@sda21
/* 814994D0 | 38 A0 00 02 */	li r5, 0x2
/* 814994D4 | 4B FF F8 B1 */	bl NHTTPi_SendData
/* 814994D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814994DC | 41 82 00 08 */	beq .L_814994E4
/* 814994E0 | 48 00 00 58 */	b .L_81499538
.L_814994E4:
/* 814994E4 | 80 9C 02 48 */	lwz r4, 0x248(r28)
/* 814994E8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814994EC | 40 82 00 30 */	bne .L_8149951C
/* 814994F0 | 80 FF 07 D0 */	lwz r7, 0x7d0(r31)
/* 814994F4 | 7F A3 EB 78 */	mr r3, r29
/* 814994F8 | 7F 84 E3 78 */	mr r4, r28
/* 814994FC | 7F C5 F3 78 */	mr r5, r30
/* 81499500 | 39 1A 03 24 */	addi r8, r26, 0x324
/* 81499504 | 38 C0 00 00 */	li r6, 0x0
/* 81499508 | 39 20 00 00 */	li r9, 0x0
/* 8149950C | 4B FF F6 1D */	bl NHTTPi_SendPostData
/* 81499510 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81499514 | 41 82 00 20 */	beq .L_81499534
/* 81499518 | 48 00 00 20 */	b .L_81499538
.L_8149951C:
/* 8149951C | 80 BC 02 4C */	lwz r5, 0x24c(r28)
/* 81499520 | 7F 43 D3 78 */	mr r3, r26
/* 81499524 | 4B FF F8 61 */	bl NHTTPi_SendData
/* 81499528 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149952C | 41 82 00 08 */	beq .L_81499534
/* 81499530 | 48 00 00 08 */	b .L_81499538
.L_81499534:
/* 81499534 | 38 60 00 00 */	li r3, 0x0
.L_81499538:
/* 81499538 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8149953C | 48 15 FF CD */	bl _restgpr_26
/* 81499540 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81499544 | 7C 08 03 A6 */	mtlr r0
/* 81499548 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8149954C | 4E 80 00 20 */	blr
.endfn NHTTPi_SendProcPostDataRaw

# .text:0xDDC | 0x81499550 | size: 0x3A4
.fn NHTTPi_SendProcPostDataBinary, local
/* 81499550 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81499554 | 7C 08 02 A6 */	mflr r0
/* 81499558 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 8149955C | 39 61 00 40 */	addi r11, r1, 0x40
/* 81499560 | 48 15 FF 59 */	bl _savegpr_25
/* 81499564 | 3F C0 81 62 */	lis r30, STR_POST_DISPOS@ha
/* 81499568 | 7C 7A 1B 78 */	mr r26, r3
/* 8149956C | 3B DE 8C 70 */	addi r30, r30, STR_POST_DISPOS@l
/* 81499570 | 48 00 36 C9 */	bl NHTTPi_GetSystemInfoP
/* 81499574 | 7C 79 1B 78 */	mr r25, r3
/* 81499578 | 48 00 37 45 */	bl NHTTPi_GetMutexInfoP
/* 8149957C | 7C 7D 1B 78 */	mr r29, r3
/* 81499580 | 7F 23 CB 78 */	mr r3, r25
/* 81499584 | 48 00 37 29 */	bl NHTTPi_GetReqInfoP
/* 81499588 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 8149958C | 7F 23 CB 78 */	mr r3, r25
/* 81499590 | 83 84 00 0C */	lwz r28, 0xc(r4)
/* 81499594 | 48 00 37 21 */	bl NHTTPi_GetThreadInfoP
/* 81499598 | 7C 7B 1B 78 */	mr r27, r3
/* 8149959C | 7F 23 CB 78 */	mr r3, r25
/* 814995A0 | 48 00 37 01 */	bl NHTTPi_GetBgnEndInfoP
/* 814995A4 | 38 80 00 00 */	li r4, 0x0
/* 814995A8 | 7C 7F 1B 78 */	mr r31, r3
/* 814995AC | 90 81 00 08 */	stw r4, 0x8(r1)
/* 814995B0 | 3B 7B 03 60 */	addi r27, r27, 0x360
/* 814995B4 | 83 3C 00 34 */	lwz r25, 0x34(r28)
/* 814995B8 | 48 00 00 9C */	b .L_81499654
.L_814995BC:
/* 814995BC | 38 84 00 16 */	addi r4, r4, 0x16
/* 814995C0 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 814995C4 | 80 79 00 08 */	lwz r3, 0x8(r25)
/* 814995C8 | 4B FF E8 E9 */	bl NHTTPi_strlen
/* 814995CC | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814995D0 | 7C 63 02 14 */	add r3, r3, r0
/* 814995D4 | 38 83 00 29 */	addi r4, r3, 0x29
/* 814995D8 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 814995DC | 80 19 00 14 */	lwz r0, 0x14(r25)
/* 814995E0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814995E4 | 41 82 00 08 */	beq .L_814995EC
/* 814995E8 | 38 84 00 4B */	addi r4, r4, 0x4b
.L_814995EC:
/* 814995EC | 38 64 00 02 */	addi r3, r4, 0x2
/* 814995F0 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 814995F4 | 80 19 00 0C */	lwz r0, 0xc(r25)
/* 814995F8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814995FC | 40 82 00 2C */	bne .L_81499628
/* 81499600 | 80 B9 00 08 */	lwz r5, 0x8(r25)
/* 81499604 | 7F A3 EB 78 */	mr r3, r29
/* 81499608 | 7F 84 E3 78 */	mr r4, r28
/* 8149960C | 38 C1 00 08 */	addi r6, r1, 0x8
/* 81499610 | 38 E0 00 01 */	li r7, 0x1
/* 81499614 | 4B FF F4 11 */	bl NHTTPi_GetPostContentlength
/* 81499618 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149961C | 40 82 00 18 */	bne .L_81499634
/* 81499620 | 38 60 00 03 */	li r3, 0x3
/* 81499624 | 48 00 02 B8 */	b .L_814998DC
.L_81499628:
/* 81499628 | 80 19 00 10 */	lwz r0, 0x10(r25)
/* 8149962C | 7C 83 02 14 */	add r4, r3, r0
/* 81499630 | 90 81 00 08 */	stw r4, 0x8(r1)
.L_81499634:
/* 81499634 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 81499638 | 38 83 00 02 */	addi r4, r3, 0x2
/* 8149963C | 90 81 00 08 */	stw r4, 0x8(r1)
/* 81499640 | 80 7C 00 34 */	lwz r3, 0x34(r28)
/* 81499644 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81499648 | 7C 19 00 40 */	cmplw r25, r0
/* 8149964C | 41 82 00 10 */	beq .L_8149965C
/* 81499650 | 83 39 00 04 */	lwz r25, 0x4(r25)
.L_81499654:
/* 81499654 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 81499658 | 40 82 FF 64 */	bne .L_814995BC
.L_8149965C:
/* 8149965C | 38 84 00 18 */	addi r4, r4, 0x18
/* 81499660 | 38 61 00 0C */	addi r3, r1, 0xc
/* 81499664 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 81499668 | 4B FF EC 71 */	bl NHTTPi_intToStr
/* 8149966C | 7C 79 1B 78 */	mr r25, r3
/* 81499670 | 7F 43 D3 78 */	mr r3, r26
/* 81499674 | 38 9E 00 A8 */	addi r4, r30, 0xa8
/* 81499678 | 38 A0 00 2C */	li r5, 0x2c
/* 8149967C | 4B FF F7 09 */	bl NHTTPi_SendData
/* 81499680 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81499684 | 41 82 00 08 */	beq .L_8149968C
/* 81499688 | 48 00 02 54 */	b .L_814998DC
.L_8149968C:
/* 8149968C | 7F 43 D3 78 */	mr r3, r26
/* 81499690 | 38 9C 00 3A */	addi r4, r28, 0x3a
/* 81499694 | 38 A0 00 12 */	li r5, 0x12
/* 81499698 | 4B FF F6 ED */	bl NHTTPi_SendData
/* 8149969C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814996A0 | 41 82 00 08 */	beq .L_814996A8
/* 814996A4 | 48 00 02 38 */	b .L_814998DC
.L_814996A8:
/* 814996A8 | 7F 43 D3 78 */	mr r3, r26
/* 814996AC | 38 8D 9A A4 */	li r4, lbl_81697AE4@sda21
/* 814996B0 | 38 A0 00 02 */	li r5, 0x2
/* 814996B4 | 4B FF F6 D1 */	bl NHTTPi_SendData
/* 814996B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814996BC | 41 82 00 08 */	beq .L_814996C4
/* 814996C0 | 48 00 02 1C */	b .L_814998DC
.L_814996C4:
/* 814996C4 | 3C 80 81 67 */	lis r4, lbl_8166D204@ha
/* 814996C8 | 7F 43 D3 78 */	mr r3, r26
/* 814996CC | 38 84 D2 04 */	addi r4, r4, lbl_8166D204@l
/* 814996D0 | 38 A0 00 10 */	li r5, 0x10
/* 814996D4 | 4B FF F6 B1 */	bl NHTTPi_SendData
/* 814996D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814996DC | 41 82 00 08 */	beq .L_814996E4
/* 814996E0 | 48 00 01 FC */	b .L_814998DC
.L_814996E4:
/* 814996E4 | 7F 43 D3 78 */	mr r3, r26
/* 814996E8 | 7F 25 CB 78 */	mr r5, r25
/* 814996EC | 38 81 00 0C */	addi r4, r1, 0xc
/* 814996F0 | 4B FF F6 95 */	bl NHTTPi_SendData
/* 814996F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814996F8 | 41 82 00 08 */	beq .L_81499700
/* 814996FC | 48 00 01 E0 */	b .L_814998DC
.L_81499700:
/* 81499700 | 7F 43 D3 78 */	mr r3, r26
/* 81499704 | 38 8D 9A A4 */	li r4, lbl_81697AE4@sda21
/* 81499708 | 38 A0 00 02 */	li r5, 0x2
/* 8149970C | 4B FF F6 79 */	bl NHTTPi_SendData
/* 81499710 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81499714 | 41 82 00 08 */	beq .L_8149971C
/* 81499718 | 48 00 01 C4 */	b .L_814998DC
.L_8149971C:
/* 8149971C | 7F 43 D3 78 */	mr r3, r26
/* 81499720 | 38 8D 9A A4 */	li r4, lbl_81697AE4@sda21
/* 81499724 | 38 A0 00 02 */	li r5, 0x2
/* 81499728 | 4B FF F6 5D */	bl NHTTPi_SendData
/* 8149972C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81499730 | 41 82 00 08 */	beq .L_81499738
/* 81499734 | 48 00 01 A8 */	b .L_814998DC
.L_81499738:
/* 81499738 | 83 3C 00 34 */	lwz r25, 0x34(r28)
/* 8149973C | 48 00 01 5C */	b .L_81499898
.L_81499740:
/* 81499740 | 7F 43 D3 78 */	mr r3, r26
/* 81499744 | 38 9C 00 38 */	addi r4, r28, 0x38
/* 81499748 | 38 A0 00 14 */	li r5, 0x14
/* 8149974C | 4B FF F6 39 */	bl NHTTPi_SendData
/* 81499750 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81499754 | 41 82 00 08 */	beq .L_8149975C
/* 81499758 | 48 00 01 84 */	b .L_814998DC
.L_8149975C:
/* 8149975C | 7F 43 D3 78 */	mr r3, r26
/* 81499760 | 38 8D 9A A4 */	li r4, lbl_81697AE4@sda21
/* 81499764 | 38 A0 00 02 */	li r5, 0x2
/* 81499768 | 4B FF F6 1D */	bl NHTTPi_SendData
/* 8149976C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81499770 | 41 82 00 08 */	beq .L_81499778
/* 81499774 | 48 00 01 68 */	b .L_814998DC
.L_81499778:
/* 81499778 | 7F 43 D3 78 */	mr r3, r26
/* 8149977C | 38 9E 00 00 */	addi r4, r30, 0x0
/* 81499780 | 38 A0 00 26 */	li r5, 0x26
/* 81499784 | 4B FF F6 01 */	bl NHTTPi_SendData
/* 81499788 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149978C | 41 82 00 08 */	beq .L_81499794
/* 81499790 | 48 00 01 4C */	b .L_814998DC
.L_81499794:
/* 81499794 | 80 79 00 08 */	lwz r3, 0x8(r25)
/* 81499798 | 4B FF E7 19 */	bl NHTTPi_strlen
/* 8149979C | 80 99 00 08 */	lwz r4, 0x8(r25)
/* 814997A0 | 7C 65 1B 78 */	mr r5, r3
/* 814997A4 | 7F 43 D3 78 */	mr r3, r26
/* 814997A8 | 4B FF F5 DD */	bl NHTTPi_SendData
/* 814997AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814997B0 | 41 82 00 08 */	beq .L_814997B8
/* 814997B4 | 48 00 01 28 */	b .L_814998DC
.L_814997B8:
/* 814997B8 | 7F 43 D3 78 */	mr r3, r26
/* 814997BC | 38 8D 9A B4 */	li r4, lbl_81697AF4@sda21
/* 814997C0 | 38 A0 00 03 */	li r5, 0x3
/* 814997C4 | 4B FF F5 C1 */	bl NHTTPi_SendData
/* 814997C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814997CC | 41 82 00 08 */	beq .L_814997D4
/* 814997D0 | 48 00 01 0C */	b .L_814998DC
.L_814997D4:
/* 814997D4 | 80 19 00 14 */	lwz r0, 0x14(r25)
/* 814997D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814997DC | 41 82 00 20 */	beq .L_814997FC
/* 814997E0 | 7F 43 D3 78 */	mr r3, r26
/* 814997E4 | 38 9E 00 28 */	addi r4, r30, 0x28
/* 814997E8 | 38 A0 00 4B */	li r5, 0x4b
/* 814997EC | 4B FF F5 99 */	bl NHTTPi_SendData
/* 814997F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814997F4 | 41 82 00 08 */	beq .L_814997FC
/* 814997F8 | 48 00 00 E4 */	b .L_814998DC
.L_814997FC:
/* 814997FC | 7F 43 D3 78 */	mr r3, r26
/* 81499800 | 38 8D 9A A4 */	li r4, lbl_81697AE4@sda21
/* 81499804 | 38 A0 00 02 */	li r5, 0x2
/* 81499808 | 4B FF F5 7D */	bl NHTTPi_SendData
/* 8149980C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81499810 | 41 82 00 08 */	beq .L_81499818
/* 81499814 | 48 00 00 C8 */	b .L_814998DC
.L_81499818:
/* 81499818 | 80 99 00 0C */	lwz r4, 0xc(r25)
/* 8149981C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81499820 | 40 82 00 30 */	bne .L_81499850
/* 81499824 | 80 D9 00 08 */	lwz r6, 0x8(r25)
/* 81499828 | 7F A3 EB 78 */	mr r3, r29
/* 8149982C | 80 FF 07 D0 */	lwz r7, 0x7d0(r31)
/* 81499830 | 7F 84 E3 78 */	mr r4, r28
/* 81499834 | 7F 65 DB 78 */	mr r5, r27
/* 81499838 | 39 1A 03 24 */	addi r8, r26, 0x324
/* 8149983C | 39 20 00 01 */	li r9, 0x1
/* 81499840 | 4B FF F2 E9 */	bl NHTTPi_SendPostData
/* 81499844 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81499848 | 41 82 00 20 */	beq .L_81499868
/* 8149984C | 48 00 00 90 */	b .L_814998DC
.L_81499850:
/* 81499850 | 80 B9 00 10 */	lwz r5, 0x10(r25)
/* 81499854 | 7F 43 D3 78 */	mr r3, r26
/* 81499858 | 4B FF F5 2D */	bl NHTTPi_SendData
/* 8149985C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81499860 | 41 82 00 08 */	beq .L_81499868
/* 81499864 | 48 00 00 78 */	b .L_814998DC
.L_81499868:
/* 81499868 | 7F 43 D3 78 */	mr r3, r26
/* 8149986C | 38 8D 9A A4 */	li r4, lbl_81697AE4@sda21
/* 81499870 | 38 A0 00 02 */	li r5, 0x2
/* 81499874 | 4B FF F5 11 */	bl NHTTPi_SendData
/* 81499878 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149987C | 41 82 00 08 */	beq .L_81499884
/* 81499880 | 48 00 00 5C */	b .L_814998DC
.L_81499884:
/* 81499884 | 80 7C 00 34 */	lwz r3, 0x34(r28)
/* 81499888 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8149988C | 7C 19 00 40 */	cmplw r25, r0
/* 81499890 | 41 82 00 10 */	beq .L_814998A0
/* 81499894 | 83 39 00 04 */	lwz r25, 0x4(r25)
.L_81499898:
/* 81499898 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 8149989C | 40 82 FE A4 */	bne .L_81499740
.L_814998A0:
/* 814998A0 | 7F 43 D3 78 */	mr r3, r26
/* 814998A4 | 38 9C 00 38 */	addi r4, r28, 0x38
/* 814998A8 | 38 A0 00 14 */	li r5, 0x14
/* 814998AC | 4B FF F4 D9 */	bl NHTTPi_SendData
/* 814998B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814998B4 | 41 82 00 08 */	beq .L_814998BC
/* 814998B8 | 48 00 00 24 */	b .L_814998DC
.L_814998BC:
/* 814998BC | 7F 43 D3 78 */	mr r3, r26
/* 814998C0 | 38 8D 9A B8 */	li r4, lbl_81697AF8@sda21
/* 814998C4 | 38 A0 00 04 */	li r5, 0x4
/* 814998C8 | 4B FF F4 BD */	bl NHTTPi_SendData
/* 814998CC | 7C 03 00 D0 */	neg r0, r3
/* 814998D0 | 7C 00 1B 78 */	or r0, r0, r3
/* 814998D4 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814998D8 | 7C 63 00 38 */	and r3, r3, r0
.L_814998DC:
/* 814998DC | 39 61 00 40 */	addi r11, r1, 0x40
/* 814998E0 | 48 15 FC 25 */	bl _restgpr_25
/* 814998E4 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814998E8 | 7C 08 03 A6 */	mtlr r0
/* 814998EC | 38 21 00 40 */	addi r1, r1, 0x40
/* 814998F0 | 4E 80 00 20 */	blr
.endfn NHTTPi_SendProcPostDataBinary

# .text:0x1180 | 0x814998F4 | size: 0x2C4
.fn NHTTPi_SendProcPostDataAscii, local
/* 814998F4 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814998F8 | 7C 08 02 A6 */	mflr r0
/* 814998FC | 90 01 00 44 */	stw r0, 0x44(r1)
/* 81499900 | 39 61 00 40 */	addi r11, r1, 0x40
/* 81499904 | 48 15 FB B5 */	bl _savegpr_25
/* 81499908 | 7C 7B 1B 78 */	mr r27, r3
/* 8149990C | 48 00 33 2D */	bl NHTTPi_GetSystemInfoP
/* 81499910 | 7C 79 1B 78 */	mr r25, r3
/* 81499914 | 48 00 33 A9 */	bl NHTTPi_GetMutexInfoP
/* 81499918 | 7C 7E 1B 78 */	mr r30, r3
/* 8149991C | 7F 23 CB 78 */	mr r3, r25
/* 81499920 | 48 00 33 8D */	bl NHTTPi_GetReqInfoP
/* 81499924 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 81499928 | 7F 23 CB 78 */	mr r3, r25
/* 8149992C | 83 A4 00 0C */	lwz r29, 0xc(r4)
/* 81499930 | 48 00 33 85 */	bl NHTTPi_GetThreadInfoP
/* 81499934 | 7C 7C 1B 78 */	mr r28, r3
/* 81499938 | 7F 23 CB 78 */	mr r3, r25
/* 8149993C | 48 00 33 65 */	bl NHTTPi_GetBgnEndInfoP
/* 81499940 | 38 00 00 00 */	li r0, 0x0
/* 81499944 | 7C 7F 1B 78 */	mr r31, r3
/* 81499948 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8149994C | 3B 9C 03 60 */	addi r28, r28, 0x360
/* 81499950 | 83 3D 00 34 */	lwz r25, 0x34(r29)
/* 81499954 | 48 00 00 80 */	b .L_814999D4
.L_81499958:
/* 81499958 | 80 79 00 08 */	lwz r3, 0x8(r25)
/* 8149995C | 4B FF E6 35 */	bl NHTTPi_getUrlEncodedSize
/* 81499960 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 81499964 | 7C 60 1A 14 */	add r3, r0, r3
/* 81499968 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8149996C | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81499970 | 80 79 00 0C */	lwz r3, 0xc(r25)
/* 81499974 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81499978 | 40 82 00 2C */	bne .L_814999A4
/* 8149997C | 80 B9 00 08 */	lwz r5, 0x8(r25)
/* 81499980 | 7F C3 F3 78 */	mr r3, r30
/* 81499984 | 7F A4 EB 78 */	mr r4, r29
/* 81499988 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 8149998C | 38 E0 00 02 */	li r7, 0x2
/* 81499990 | 4B FF F0 95 */	bl NHTTPi_GetPostContentlength
/* 81499994 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81499998 | 40 82 00 1C */	bne .L_814999B4
/* 8149999C | 38 60 00 03 */	li r3, 0x3
/* 814999A0 | 48 00 02 00 */	b .L_81499BA0
.L_814999A4:
/* 814999A4 | 4B FF E5 ED */	bl NHTTPi_getUrlEncodedSize
/* 814999A8 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814999AC | 7C 00 1A 14 */	add r0, r0, r3
/* 814999B0 | 90 01 00 08 */	stw r0, 0x8(r1)
.L_814999B4:
/* 814999B4 | 80 7D 00 34 */	lwz r3, 0x34(r29)
/* 814999B8 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814999BC | 7C 19 00 40 */	cmplw r25, r0
/* 814999C0 | 41 82 00 1C */	beq .L_814999DC
/* 814999C4 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814999C8 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814999CC | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814999D0 | 83 39 00 04 */	lwz r25, 0x4(r25)
.L_814999D4:
/* 814999D4 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 814999D8 | 40 82 FF 80 */	bne .L_81499958
.L_814999DC:
/* 814999DC | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814999E0 | 38 61 00 0C */	addi r3, r1, 0xc
/* 814999E4 | 4B FF E8 F5 */	bl NHTTPi_intToStr
/* 814999E8 | 3C 80 81 62 */	lis r4, STR_POST_TYPE_URLENCODE@ha
/* 814999EC | 7C 79 1B 78 */	mr r25, r3
/* 814999F0 | 7F 63 DB 78 */	mr r3, r27
/* 814999F4 | 38 A0 00 31 */	li r5, 0x31
/* 814999F8 | 38 84 8C E4 */	addi r4, r4, STR_POST_TYPE_URLENCODE@l
/* 814999FC | 4B FF F3 89 */	bl NHTTPi_SendData
/* 81499A00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81499A04 | 41 82 00 08 */	beq .L_81499A0C
/* 81499A08 | 48 00 01 98 */	b .L_81499BA0
.L_81499A0C:
/* 81499A0C | 3C 80 81 67 */	lis r4, lbl_8166D204@ha
/* 81499A10 | 7F 63 DB 78 */	mr r3, r27
/* 81499A14 | 38 84 D2 04 */	addi r4, r4, lbl_8166D204@l
/* 81499A18 | 38 A0 00 10 */	li r5, 0x10
/* 81499A1C | 4B FF F3 69 */	bl NHTTPi_SendData
/* 81499A20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81499A24 | 41 82 00 08 */	beq .L_81499A2C
/* 81499A28 | 48 00 01 78 */	b .L_81499BA0
.L_81499A2C:
/* 81499A2C | 7F 63 DB 78 */	mr r3, r27
/* 81499A30 | 7F 25 CB 78 */	mr r5, r25
/* 81499A34 | 38 81 00 0C */	addi r4, r1, 0xc
/* 81499A38 | 4B FF F3 4D */	bl NHTTPi_SendData
/* 81499A3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81499A40 | 41 82 00 08 */	beq .L_81499A48
/* 81499A44 | 48 00 01 5C */	b .L_81499BA0
.L_81499A48:
/* 81499A48 | 7F 63 DB 78 */	mr r3, r27
/* 81499A4C | 38 8D 9A A4 */	li r4, lbl_81697AE4@sda21
/* 81499A50 | 38 A0 00 02 */	li r5, 0x2
/* 81499A54 | 4B FF F3 31 */	bl NHTTPi_SendData
/* 81499A58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81499A5C | 41 82 00 08 */	beq .L_81499A64
/* 81499A60 | 48 00 01 40 */	b .L_81499BA0
.L_81499A64:
/* 81499A64 | 7F 63 DB 78 */	mr r3, r27
/* 81499A68 | 38 8D 9A A4 */	li r4, lbl_81697AE4@sda21
/* 81499A6C | 38 A0 00 02 */	li r5, 0x2
/* 81499A70 | 4B FF F3 15 */	bl NHTTPi_SendData
/* 81499A74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81499A78 | 41 82 00 08 */	beq .L_81499A80
/* 81499A7C | 48 00 01 24 */	b .L_81499BA0
.L_81499A80:
/* 81499A80 | 83 5D 00 34 */	lwz r26, 0x34(r29)
/* 81499A84 | 48 00 01 10 */	b .L_81499B94
.L_81499A88:
/* 81499A88 | 3B 20 00 00 */	li r25, 0x0
/* 81499A8C | 48 00 00 30 */	b .L_81499ABC
.L_81499A90:
/* 81499A90 | 38 61 00 0C */	addi r3, r1, 0xc
/* 81499A94 | 7C 84 07 74 */	extsb r4, r4
/* 81499A98 | 4B FF E5 DD */	bl NHTTPi_encodeUrlChar
/* 81499A9C | 7C 65 1B 78 */	mr r5, r3
/* 81499AA0 | 7F 63 DB 78 */	mr r3, r27
/* 81499AA4 | 38 81 00 0C */	addi r4, r1, 0xc
/* 81499AA8 | 4B FF F2 DD */	bl NHTTPi_SendData
/* 81499AAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81499AB0 | 41 82 00 08 */	beq .L_81499AB8
/* 81499AB4 | 48 00 00 EC */	b .L_81499BA0
.L_81499AB8:
/* 81499AB8 | 3B 39 00 01 */	addi r25, r25, 0x1
.L_81499ABC:
/* 81499ABC | 80 7A 00 08 */	lwz r3, 0x8(r26)
/* 81499AC0 | 7C 83 C8 AE */	lbzx r4, r3, r25
/* 81499AC4 | 7C 80 07 75 */	extsb. r0, r4
/* 81499AC8 | 40 82 FF C8 */	bne .L_81499A90
/* 81499ACC | 7F 63 DB 78 */	mr r3, r27
/* 81499AD0 | 38 8D 9A C0 */	li r4, lbl_81697B00@sda21
/* 81499AD4 | 38 A0 00 01 */	li r5, 0x1
/* 81499AD8 | 4B FF F2 AD */	bl NHTTPi_SendData
/* 81499ADC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81499AE0 | 41 82 00 08 */	beq .L_81499AE8
/* 81499AE4 | 48 00 00 BC */	b .L_81499BA0
.L_81499AE8:
/* 81499AE8 | 80 1A 00 0C */	lwz r0, 0xc(r26)
/* 81499AEC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81499AF0 | 40 82 00 30 */	bne .L_81499B20
/* 81499AF4 | 80 DA 00 08 */	lwz r6, 0x8(r26)
/* 81499AF8 | 7F C3 F3 78 */	mr r3, r30
/* 81499AFC | 80 FF 07 D0 */	lwz r7, 0x7d0(r31)
/* 81499B00 | 7F A4 EB 78 */	mr r4, r29
/* 81499B04 | 7F 85 E3 78 */	mr r5, r28
/* 81499B08 | 39 1B 03 24 */	addi r8, r27, 0x324
/* 81499B0C | 39 20 00 02 */	li r9, 0x2
/* 81499B10 | 4B FF F0 19 */	bl NHTTPi_SendPostData
/* 81499B14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81499B18 | 41 82 00 4C */	beq .L_81499B64
/* 81499B1C | 48 00 00 84 */	b .L_81499BA0
.L_81499B20:
/* 81499B20 | 3B 20 00 00 */	li r25, 0x0
/* 81499B24 | 48 00 00 30 */	b .L_81499B54
.L_81499B28:
/* 81499B28 | 38 61 00 0C */	addi r3, r1, 0xc
/* 81499B2C | 7C 84 07 74 */	extsb r4, r4
/* 81499B30 | 4B FF E5 45 */	bl NHTTPi_encodeUrlChar
/* 81499B34 | 7C 65 1B 78 */	mr r5, r3
/* 81499B38 | 7F 63 DB 78 */	mr r3, r27
/* 81499B3C | 38 81 00 0C */	addi r4, r1, 0xc
/* 81499B40 | 4B FF F2 45 */	bl NHTTPi_SendData
/* 81499B44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81499B48 | 41 82 00 08 */	beq .L_81499B50
/* 81499B4C | 48 00 00 54 */	b .L_81499BA0
.L_81499B50:
/* 81499B50 | 3B 39 00 01 */	addi r25, r25, 0x1
.L_81499B54:
/* 81499B54 | 80 7A 00 0C */	lwz r3, 0xc(r26)
/* 81499B58 | 7C 83 C8 AE */	lbzx r4, r3, r25
/* 81499B5C | 7C 80 07 75 */	extsb. r0, r4
/* 81499B60 | 40 82 FF C8 */	bne .L_81499B28
.L_81499B64:
/* 81499B64 | 80 7D 00 34 */	lwz r3, 0x34(r29)
/* 81499B68 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 81499B6C | 7C 1A 00 40 */	cmplw r26, r0
/* 81499B70 | 41 82 00 2C */	beq .L_81499B9C
/* 81499B74 | 7F 63 DB 78 */	mr r3, r27
/* 81499B78 | 38 8D 9A C4 */	li r4, lbl_81697B04@sda21
/* 81499B7C | 38 A0 00 01 */	li r5, 0x1
/* 81499B80 | 4B FF F2 05 */	bl NHTTPi_SendData
/* 81499B84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81499B88 | 41 82 00 08 */	beq .L_81499B90
/* 81499B8C | 48 00 00 14 */	b .L_81499BA0
.L_81499B90:
/* 81499B90 | 83 5A 00 04 */	lwz r26, 0x4(r26)
.L_81499B94:
/* 81499B94 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 81499B98 | 40 82 FE F0 */	bne .L_81499A88
.L_81499B9C:
/* 81499B9C | 38 60 00 00 */	li r3, 0x0
.L_81499BA0:
/* 81499BA0 | 39 61 00 40 */	addi r11, r1, 0x40
/* 81499BA4 | 48 15 F9 61 */	bl _restgpr_25
/* 81499BA8 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 81499BAC | 7C 08 03 A6 */	mtlr r0
/* 81499BB0 | 38 21 00 40 */	addi r1, r1, 0x40
/* 81499BB4 | 4E 80 00 20 */	blr
.endfn NHTTPi_SendProcPostDataAscii

# .text:0x1444 | 0x81499BB8 | size: 0x180
.fn NHTTPi_ThreadReqEnd, local
/* 81499BB8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81499BBC | 7C 08 02 A6 */	mflr r0
/* 81499BC0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81499BC4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81499BC8 | 48 15 F8 ED */	bl _savegpr_24
/* 81499BCC | 7C 7A 1B 78 */	mr r26, r3
/* 81499BD0 | 48 00 30 69 */	bl NHTTPi_GetSystemInfoP
/* 81499BD4 | 7C 79 1B 78 */	mr r25, r3
/* 81499BD8 | 48 00 30 C9 */	bl NHTTPi_GetBgnEndInfoP
/* 81499BDC | 7C 78 1B 78 */	mr r24, r3
/* 81499BE0 | 7F 23 CB 78 */	mr r3, r25
/* 81499BE4 | 48 00 30 C9 */	bl NHTTPi_GetReqInfoP
/* 81499BE8 | 7C 7F 1B 78 */	mr r31, r3
/* 81499BEC | 7F 23 CB 78 */	mr r3, r25
/* 81499BF0 | 48 00 30 CD */	bl NHTTPi_GetMutexInfoP
/* 81499BF4 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 81499BF8 | 7C 7E 1B 78 */	mr r30, r3
/* 81499BFC | 83 A4 00 0C */	lwz r29, 0xc(r4)
/* 81499C00 | 83 9D 00 2C */	lwz r28, 0x2c(r29)
/* 81499C04 | 7F A4 EB 78 */	mr r4, r29
/* 81499C08 | 48 00 2C 01 */	bl NHTTPi_Request2Connection
/* 81499C0C | 80 1D 00 00 */	lwz r0, 0x0(r29)
/* 81499C10 | 7C 7B 1B 78 */	mr r27, r3
/* 81499C14 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81499C18 | 41 82 00 14 */	beq .L_81499C2C
/* 81499C1C | 38 60 00 08 */	li r3, 0x8
/* 81499C20 | 38 00 00 00 */	li r0, 0x0
/* 81499C24 | 90 7A 03 30 */	stw r3, 0x330(r26)
/* 81499C28 | 90 1A 03 38 */	stw r0, 0x338(r26)
.L_81499C2C:
/* 81499C2C | 80 1A 03 38 */	lwz r0, 0x338(r26)
/* 81499C30 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81499C34 | 40 82 00 34 */	bne .L_81499C68
/* 81499C38 | 80 B8 07 D0 */	lwz r5, 0x7d0(r24)
/* 81499C3C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81499C40 | 41 80 00 28 */	blt .L_81499C68
/* 81499C44 | 7F C3 F3 78 */	mr r3, r30
/* 81499C48 | 7F A4 EB 78 */	mr r4, r29
/* 81499C4C | 4B FF DA 91 */	bl NHTTPi_SocClose
/* 81499C50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81499C54 | 40 80 00 0C */	bge .L_81499C60
/* 81499C58 | 38 00 00 0A */	li r0, 0xa
/* 81499C5C | 90 1A 03 30 */	stw r0, 0x330(r26)
.L_81499C60:
/* 81499C60 | 38 00 FF FF */	li r0, -0x1
/* 81499C64 | 90 18 07 D0 */	stw r0, 0x7d0(r24)
.L_81499C68:
/* 81499C68 | 80 1A 03 30 */	lwz r0, 0x330(r26)
/* 81499C6C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81499C70 | 40 82 00 10 */	bne .L_81499C80
/* 81499C74 | 38 00 00 01 */	li r0, 0x1
/* 81499C78 | 90 1C 00 10 */	stw r0, 0x10(r28)
/* 81499C7C | 48 00 00 30 */	b .L_81499CAC
.L_81499C80:
/* 81499C80 | 3B 20 00 00 */	li r25, 0x0
/* 81499C84 | 7F 03 C3 78 */	mr r3, r24
/* 81499C88 | 93 3C 00 10 */	stw r25, 0x10(r28)
/* 81499C8C | 80 9A 03 30 */	lwz r4, 0x330(r26)
/* 81499C90 | 4B FF BC 89 */	bl NHTTPi_SetError
/* 81499C94 | 80 7C 00 28 */	lwz r3, 0x28(r28)
/* 81499C98 | 38 1A 01 04 */	addi r0, r26, 0x104
/* 81499C9C | 7C 03 00 40 */	cmplw r3, r0
/* 81499CA0 | 40 82 00 0C */	bne .L_81499CAC
/* 81499CA4 | 93 3C 00 28 */	stw r25, 0x28(r28)
/* 81499CA8 | 93 3C 00 1C */	stw r25, 0x1c(r28)
.L_81499CAC:
/* 81499CAC | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 81499CB0 | 41 82 00 0C */	beq .L_81499CBC
/* 81499CB4 | 80 1A 03 30 */	lwz r0, 0x330(r26)
/* 81499CB8 | 90 1B 00 04 */	stw r0, 0x4(r27)
.L_81499CBC:
/* 81499CBC | 7F C3 F3 78 */	mr r3, r30
/* 81499CC0 | 4B FF C3 3D */	bl NHTTPi_lockReqList
/* 81499CC4 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 81499CC8 | 4B FF BC 0D */	bl NHTTPi_free
/* 81499CCC | 38 00 00 00 */	li r0, 0x0
/* 81499CD0 | 7F C3 F3 78 */	mr r3, r30
/* 81499CD4 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 81499CD8 | 4B FF C3 29 */	bl NHTTPi_unlockReqList
/* 81499CDC | 7F C3 F3 78 */	mr r3, r30
/* 81499CE0 | 7F A4 EB 78 */	mr r4, r29
/* 81499CE4 | 4B FF D2 55 */	bl NHTTPi_destroyRequestObject
/* 81499CE8 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 81499CEC | 41 82 00 18 */	beq .L_81499D04
/* 81499CF0 | 80 1C 00 10 */	lwz r0, 0x10(r28)
/* 81499CF4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81499CF8 | 41 82 00 0C */	beq .L_81499D04
/* 81499CFC | 38 00 00 05 */	li r0, 0x5
/* 81499D00 | 90 1B 00 00 */	stw r0, 0x0(r27)
.L_81499D04:
/* 81499D04 | 7F C3 F3 78 */	mr r3, r30
/* 81499D08 | 7F 64 DB 78 */	mr r4, r27
/* 81499D0C | 48 00 2E D5 */	bl NHTTPi_CompleteCallback
/* 81499D10 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 81499D14 | 41 82 00 0C */	beq .L_81499D20
/* 81499D18 | 7F 63 DB 78 */	mr r3, r27
/* 81499D1C | 48 00 28 91 */	bl NHTTPi_NotifyCompletion
.L_81499D20:
/* 81499D20 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81499D24 | 48 15 F7 DD */	bl _restgpr_24
/* 81499D28 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81499D2C | 7C 08 03 A6 */	mtlr r0
/* 81499D30 | 38 21 00 30 */	addi r1, r1, 0x30
/* 81499D34 | 4E 80 00 20 */	blr
.endfn NHTTPi_ThreadReqEnd

# .text:0x15C4 | 0x81499D38 | size: 0xB8
.fn NHTTPi_ThreadExecReqQueue, local
/* 81499D38 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81499D3C | 7C 08 02 A6 */	mflr r0
/* 81499D40 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81499D44 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81499D48 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81499D4C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81499D50 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 81499D54 | 7C 7C 1B 78 */	mr r28, r3
/* 81499D58 | 48 00 2E E1 */	bl NHTTPi_GetSystemInfoP
/* 81499D5C | 7C 7E 1B 78 */	mr r30, r3
/* 81499D60 | 48 00 2F 5D */	bl NHTTPi_GetMutexInfoP
/* 81499D64 | 7C 7D 1B 78 */	mr r29, r3
/* 81499D68 | 4B FF C2 95 */	bl NHTTPi_lockReqList
/* 81499D6C | 7F C3 F3 78 */	mr r3, r30
/* 81499D70 | 48 00 2F 35 */	bl NHTTPi_GetListInfoP
/* 81499D74 | 4B FF C2 35 */	bl NHTTPi_getReqFromReqQueue
/* 81499D78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81499D7C | 7C 7F 1B 78 */	mr r31, r3
/* 81499D80 | 41 82 00 1C */	beq .L_81499D9C
/* 81499D84 | 7F C3 F3 78 */	mr r3, r30
/* 81499D88 | 48 00 2F 25 */	bl NHTTPi_GetReqInfoP
/* 81499D8C | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 81499D90 | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 81499D94 | 93 E3 00 00 */	stw r31, 0x0(r3)
/* 81499D98 | 48 00 00 0C */	b .L_81499DA4
.L_81499D9C:
/* 81499D9C | 38 00 FF FF */	li r0, -0x1
/* 81499DA0 | 90 1C 00 00 */	stw r0, 0x0(r28)
.L_81499DA4:
/* 81499DA4 | 7F A3 EB 78 */	mr r3, r29
/* 81499DA8 | 4B FF C2 59 */	bl NHTTPi_unlockReqList
/* 81499DAC | 80 1C 00 00 */	lwz r0, 0x0(r28)
/* 81499DB0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81499DB4 | 40 80 00 18 */	bge .L_81499DCC
/* 81499DB8 | 7F C3 F3 78 */	mr r3, r30
/* 81499DBC | 48 00 2E F9 */	bl NHTTPi_GetThreadInfoP
/* 81499DC0 | 4B FF C3 21 */	bl NHTTPi_idleCommThread
/* 81499DC4 | 38 60 00 00 */	li r3, 0x0
/* 81499DC8 | 48 00 00 08 */	b .L_81499DD0
.L_81499DCC:
/* 81499DCC | 38 60 00 01 */	li r3, 0x1
.L_81499DD0:
/* 81499DD0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81499DD4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81499DD8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81499DDC | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81499DE0 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 81499DE4 | 7C 08 03 A6 */	mtlr r0
/* 81499DE8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81499DEC | 4E 80 00 20 */	blr
.endfn NHTTPi_ThreadExecReqQueue

# .text:0x167C | 0x81499DF0 | size: 0x154
.fn NHTTPi_ThreadHostAddrProc, local
/* 81499DF0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81499DF4 | 7C 08 02 A6 */	mflr r0
/* 81499DF8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81499DFC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81499E00 | 7C 7F 1B 78 */	mr r31, r3
/* 81499E04 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81499E08 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81499E0C | 48 00 2E 2D */	bl NHTTPi_GetSystemInfoP
/* 81499E10 | 48 00 2E 9D */	bl NHTTPi_GetReqInfoP
/* 81499E14 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 81499E18 | 83 C3 00 0C */	lwz r30, 0xc(r3)
/* 81499E1C | 80 1E 00 0C */	lwz r0, 0xc(r30)
/* 81499E20 | 83 BE 00 28 */	lwz r29, 0x28(r30)
/* 81499E24 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81499E28 | 41 82 00 08 */	beq .L_81499E30
/* 81499E2C | 3B BE 00 E0 */	addi r29, r30, 0xe0
.L_81499E30:
/* 81499E30 | 7F A3 EB 78 */	mr r3, r29
/* 81499E34 | 4B FF E0 7D */	bl NHTTPi_strlen
/* 81499E38 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81499E3C | 41 82 00 18 */	beq .L_81499E54
/* 81499E40 | 7F A3 EB 78 */	mr r3, r29
/* 81499E44 | 38 9F 00 04 */	addi r4, r31, 0x4
/* 81499E48 | 4B FF E0 6D */	bl NHTTPi_strcmp
/* 81499E4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81499E50 | 41 82 00 48 */	beq .L_81499E98
.L_81499E54:
/* 81499E54 | 7F C3 F3 78 */	mr r3, r30
/* 81499E58 | 7F A4 EB 78 */	mr r4, r29
/* 81499E5C | 4B FF DF DD */	bl NHTTPi_resolveHostname
/* 81499E60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81499E64 | 90 7F 03 14 */	stw r3, 0x314(r31)
/* 81499E68 | 40 82 00 38 */	bne .L_81499EA0
/* 81499E6C | 80 1E 00 0C */	lwz r0, 0xc(r30)
/* 81499E70 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81499E74 | 41 82 00 14 */	beq .L_81499E88
/* 81499E78 | 38 00 00 0C */	li r0, 0xc
/* 81499E7C | 38 60 00 00 */	li r3, 0x0
/* 81499E80 | 90 1F 03 30 */	stw r0, 0x330(r31)
/* 81499E84 | 48 00 00 A4 */	b .L_81499F28
.L_81499E88:
/* 81499E88 | 38 00 00 04 */	li r0, 0x4
/* 81499E8C | 38 60 00 00 */	li r3, 0x0
/* 81499E90 | 90 1F 03 30 */	stw r0, 0x330(r31)
/* 81499E94 | 48 00 00 94 */	b .L_81499F28
.L_81499E98:
/* 81499E98 | 80 1F 03 18 */	lwz r0, 0x318(r31)
/* 81499E9C | 90 1F 03 14 */	stw r0, 0x314(r31)
.L_81499EA0:
/* 81499EA0 | 38 7F 00 04 */	addi r3, r31, 0x4
/* 81499EA4 | 38 80 01 00 */	li r4, 0x100
/* 81499EA8 | 4B FF E0 11 */	bl NHTTPi_memclr
/* 81499EAC | 7F A3 EB 78 */	mr r3, r29
/* 81499EB0 | 4B FF E0 01 */	bl NHTTPi_strlen
/* 81499EB4 | 7C 65 1B 78 */	mr r5, r3
/* 81499EB8 | 7F A4 EB 78 */	mr r4, r29
/* 81499EBC | 38 7F 00 04 */	addi r3, r31, 0x4
/* 81499EC0 | 4B FF DF ED */	bl NHTTPi_memcpy
/* 81499EC4 | 80 1E 00 20 */	lwz r0, 0x20(r30)
/* 81499EC8 | 90 1F 03 1C */	stw r0, 0x31c(r31)
/* 81499ECC | 80 1E 00 0C */	lwz r0, 0xc(r30)
/* 81499ED0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81499ED4 | 41 82 00 0C */	beq .L_81499EE0
/* 81499ED8 | 80 1E 01 E0 */	lwz r0, 0x1e0(r30)
/* 81499EDC | 90 1F 03 1C */	stw r0, 0x31c(r31)
.L_81499EE0:
/* 81499EE0 | 80 7F 03 14 */	lwz r3, 0x314(r31)
/* 81499EE4 | 80 1F 03 18 */	lwz r0, 0x318(r31)
/* 81499EE8 | 7C 03 00 40 */	cmplw r3, r0
/* 81499EEC | 40 82 00 20 */	bne .L_81499F0C
/* 81499EF0 | 80 7F 03 1C */	lwz r3, 0x31c(r31)
/* 81499EF4 | 80 1F 03 20 */	lwz r0, 0x320(r31)
/* 81499EF8 | 7C 03 00 00 */	cmpw r3, r0
/* 81499EFC | 40 82 00 10 */	bne .L_81499F0C
/* 81499F00 | 80 1E 00 08 */	lwz r0, 0x8(r30)
/* 81499F04 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81499F08 | 40 82 00 0C */	bne .L_81499F14
.L_81499F0C:
/* 81499F0C | 38 00 00 00 */	li r0, 0x0
/* 81499F10 | 90 1F 03 38 */	stw r0, 0x338(r31)
.L_81499F14:
/* 81499F14 | 80 9F 03 14 */	lwz r4, 0x314(r31)
/* 81499F18 | 38 60 00 01 */	li r3, 0x1
/* 81499F1C | 80 1F 03 1C */	lwz r0, 0x31c(r31)
/* 81499F20 | 90 9F 03 18 */	stw r4, 0x318(r31)
/* 81499F24 | 90 1F 03 20 */	stw r0, 0x320(r31)
.L_81499F28:
/* 81499F28 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81499F2C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81499F30 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81499F34 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81499F38 | 7C 08 03 A6 */	mtlr r0
/* 81499F3C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81499F40 | 4E 80 00 20 */	blr
.endfn NHTTPi_ThreadHostAddrProc

# .text:0x17D0 | 0x81499F44 | size: 0x180
.fn NHTTPi_ThreadConnectProc, local
/* 81499F44 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81499F48 | 7C 08 02 A6 */	mflr r0
/* 81499F4C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81499F50 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81499F54 | 48 15 F5 6D */	bl _savegpr_27
/* 81499F58 | 7C 7F 1B 78 */	mr r31, r3
/* 81499F5C | 48 00 2C DD */	bl NHTTPi_GetSystemInfoP
/* 81499F60 | 7C 7D 1B 78 */	mr r29, r3
/* 81499F64 | 48 00 2D 3D */	bl NHTTPi_GetBgnEndInfoP
/* 81499F68 | 7C 7C 1B 78 */	mr r28, r3
/* 81499F6C | 7F A3 EB 78 */	mr r3, r29
/* 81499F70 | 48 00 2D 3D */	bl NHTTPi_GetReqInfoP
/* 81499F74 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 81499F78 | 7C 7E 1B 78 */	mr r30, r3
/* 81499F7C | 7F A3 EB 78 */	mr r3, r29
/* 81499F80 | 83 A4 00 0C */	lwz r29, 0xc(r4)
/* 81499F84 | 48 00 2D 39 */	bl NHTTPi_GetMutexInfoP
/* 81499F88 | 80 1F 03 38 */	lwz r0, 0x338(r31)
/* 81499F8C | 7C 7B 1B 78 */	mr r27, r3
/* 81499F90 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81499F94 | 40 82 00 FC */	bne .L_8149A090
/* 81499F98 | 80 BC 07 D0 */	lwz r5, 0x7d0(r28)
/* 81499F9C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81499FA0 | 41 80 00 2C */	blt .L_81499FCC
/* 81499FA4 | 7F A4 EB 78 */	mr r4, r29
/* 81499FA8 | 4B FF D7 35 */	bl NHTTPi_SocClose
/* 81499FAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81499FB0 | 40 80 00 1C */	bge .L_81499FCC
/* 81499FB4 | 38 60 FF FF */	li r3, -0x1
/* 81499FB8 | 38 00 00 0A */	li r0, 0xa
/* 81499FBC | 90 7C 07 D0 */	stw r3, 0x7d0(r28)
/* 81499FC0 | 38 60 00 00 */	li r3, 0x0
/* 81499FC4 | 90 1F 03 30 */	stw r0, 0x330(r31)
/* 81499FC8 | 48 00 00 E4 */	b .L_8149A0AC
.L_81499FCC:
/* 81499FCC | 7F A3 EB 78 */	mr r3, r29
/* 81499FD0 | 4B FF D6 81 */	bl NHTTPi_SocOpen
/* 81499FD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81499FD8 | 90 7C 07 D0 */	stw r3, 0x7d0(r28)
/* 81499FDC | 40 80 00 14 */	bge .L_81499FF0
/* 81499FE0 | 38 00 00 03 */	li r0, 0x3
/* 81499FE4 | 38 60 00 00 */	li r3, 0x0
/* 81499FE8 | 90 1F 03 30 */	stw r0, 0x330(r31)
/* 81499FEC | 48 00 00 C0 */	b .L_8149A0AC
.L_81499FF0:
/* 81499FF0 | 7F 63 DB 78 */	mr r3, r27
/* 81499FF4 | 4B FF C0 09 */	bl NHTTPi_lockReqList
/* 81499FF8 | 80 1C 07 D0 */	lwz r0, 0x7d0(r28)
/* 81499FFC | 7F 63 DB 78 */	mr r3, r27
/* 8149A000 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8149A004 | 90 04 00 10 */	stw r0, 0x10(r4)
/* 8149A008 | 4B FF BF F9 */	bl NHTTPi_unlockReqList
/* 8149A00C | 80 1D 00 00 */	lwz r0, 0x0(r29)
/* 8149A010 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149A014 | 41 82 00 0C */	beq .L_8149A020
/* 8149A018 | 38 60 00 00 */	li r3, 0x0
/* 8149A01C | 48 00 00 90 */	b .L_8149A0AC
.L_8149A020:
/* 8149A020 | 80 DC 07 D0 */	lwz r6, 0x7d0(r28)
/* 8149A024 | 7F 83 E3 78 */	mr r3, r28
/* 8149A028 | 80 FF 03 14 */	lwz r7, 0x314(r31)
/* 8149A02C | 7F 64 DB 78 */	mr r4, r27
/* 8149A030 | 81 1F 03 1C */	lwz r8, 0x31c(r31)
/* 8149A034 | 7F A5 EB 78 */	mr r5, r29
/* 8149A038 | 4B FF D7 11 */	bl NHTTPi_SocConnect
/* 8149A03C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149A040 | 40 80 00 68 */	bge .L_8149A0A8
/* 8149A044 | 80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8149A048 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149A04C | 41 82 00 14 */	beq .L_8149A060
/* 8149A050 | 38 00 00 0D */	li r0, 0xd
/* 8149A054 | 38 60 00 00 */	li r3, 0x0
/* 8149A058 | 90 1F 03 30 */	stw r0, 0x330(r31)
/* 8149A05C | 48 00 00 50 */	b .L_8149A0AC
.L_8149A060:
/* 8149A060 | 7F 83 E3 78 */	mr r3, r28
/* 8149A064 | 4B FF B8 C5 */	bl NHTTPi_GetSSLError
/* 8149A068 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149A06C | 41 82 00 14 */	beq .L_8149A080
/* 8149A070 | 38 00 00 0E */	li r0, 0xe
/* 8149A074 | 38 60 00 00 */	li r3, 0x0
/* 8149A078 | 90 1F 03 30 */	stw r0, 0x330(r31)
/* 8149A07C | 48 00 00 30 */	b .L_8149A0AC
.L_8149A080:
/* 8149A080 | 38 00 00 05 */	li r0, 0x5
/* 8149A084 | 38 60 00 00 */	li r3, 0x0
/* 8149A088 | 90 1F 03 30 */	stw r0, 0x330(r31)
/* 8149A08C | 48 00 00 20 */	b .L_8149A0AC
.L_8149A090:
/* 8149A090 | 4B FF BF 6D */	bl NHTTPi_lockReqList
/* 8149A094 | 80 1C 07 D0 */	lwz r0, 0x7d0(r28)
/* 8149A098 | 7F 63 DB 78 */	mr r3, r27
/* 8149A09C | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8149A0A0 | 90 04 00 10 */	stw r0, 0x10(r4)
/* 8149A0A4 | 4B FF BF 5D */	bl NHTTPi_unlockReqList
.L_8149A0A8:
/* 8149A0A8 | 38 60 00 01 */	li r3, 0x1
.L_8149A0AC:
/* 8149A0AC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8149A0B0 | 48 15 F4 5D */	bl _restgpr_27
/* 8149A0B4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8149A0B8 | 7C 08 03 A6 */	mtlr r0
/* 8149A0BC | 38 21 00 20 */	addi r1, r1, 0x20
/* 8149A0C0 | 4E 80 00 20 */	blr
.endfn NHTTPi_ThreadConnectProc

# .text:0x1950 | 0x8149A0C4 | size: 0x154
.fn NHTTPi_ThreadProxyProc, local
/* 8149A0C4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8149A0C8 | 7C 08 02 A6 */	mflr r0
/* 8149A0CC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8149A0D0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8149A0D4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8149A0D8 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8149A0DC | 93 81 00 10 */	stw r28, 0x10(r1)
/* 8149A0E0 | 7C 7C 1B 78 */	mr r28, r3
/* 8149A0E4 | 48 00 2B 55 */	bl NHTTPi_GetSystemInfoP
/* 8149A0E8 | 7C 7E 1B 78 */	mr r30, r3
/* 8149A0EC | 48 00 2B B5 */	bl NHTTPi_GetBgnEndInfoP
/* 8149A0F0 | 7C 7D 1B 78 */	mr r29, r3
/* 8149A0F4 | 7F C3 F3 78 */	mr r3, r30
/* 8149A0F8 | 48 00 2B B5 */	bl NHTTPi_GetReqInfoP
/* 8149A0FC | 7C 7F 1B 78 */	mr r31, r3
/* 8149A100 | 7F C3 F3 78 */	mr r3, r30
/* 8149A104 | 48 00 2B B9 */	bl NHTTPi_GetMutexInfoP
/* 8149A108 | 80 BF 00 00 */	lwz r5, 0x0(r31)
/* 8149A10C | 38 80 00 0A */	li r4, 0xa
/* 8149A110 | 38 00 00 00 */	li r0, 0x0
/* 8149A114 | 7C 7E 1B 78 */	mr r30, r3
/* 8149A118 | 83 E5 00 0C */	lwz r31, 0xc(r5)
/* 8149A11C | 90 9C 03 30 */	stw r4, 0x330(r28)
/* 8149A120 | 90 1C 03 24 */	stw r0, 0x324(r28)
/* 8149A124 | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 8149A128 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149A12C | 41 82 00 C8 */	beq .L_8149A1F4
/* 8149A130 | 80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8149A134 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149A138 | 41 82 00 BC */	beq .L_8149A1F4
/* 8149A13C | 7F 83 E3 78 */	mr r3, r28
/* 8149A140 | 4B FF EC F1 */	bl NHTTPi_SendProxyConnectMethod
/* 8149A144 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149A148 | 41 82 00 08 */	beq .L_8149A150
/* 8149A14C | 48 00 00 AC */	b .L_8149A1F8
.L_8149A150:
/* 8149A150 | 7F 83 E3 78 */	mr r3, r28
/* 8149A154 | 4B FF EF 85 */	bl NHTTPi_RecvProxyConnectHeader
/* 8149A158 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149A15C | 40 82 00 0C */	bne .L_8149A168
/* 8149A160 | 38 60 00 01 */	li r3, 0x1
/* 8149A164 | 48 00 00 94 */	b .L_8149A1F8
.L_8149A168:
/* 8149A168 | 80 DD 07 D0 */	lwz r6, 0x7d0(r29)
/* 8149A16C | 7F A3 EB 78 */	mr r3, r29
/* 8149A170 | 7F C4 F3 78 */	mr r4, r30
/* 8149A174 | 7F E5 FB 78 */	mr r5, r31
/* 8149A178 | 4B FF D6 91 */	bl NHTTPi_SocSSLConnect
/* 8149A17C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149A180 | 41 82 00 74 */	beq .L_8149A1F4
/* 8149A184 | 2C 03 FC 14 */	cmpwi r3, -0x3ec
/* 8149A188 | 40 82 00 24 */	bne .L_8149A1AC
/* 8149A18C | 7F A3 EB 78 */	mr r3, r29
/* 8149A190 | 4B FF B7 99 */	bl NHTTPi_GetSSLError
/* 8149A194 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149A198 | 41 82 00 0C */	beq .L_8149A1A4
/* 8149A19C | 38 00 00 10 */	li r0, 0x10
/* 8149A1A0 | 90 1C 03 30 */	stw r0, 0x330(r28)
.L_8149A1A4:
/* 8149A1A4 | 38 60 00 01 */	li r3, 0x1
/* 8149A1A8 | 48 00 00 50 */	b .L_8149A1F8
.L_8149A1AC:
/* 8149A1AC | 2C 03 FC 13 */	cmpwi r3, -0x3ed
/* 8149A1B0 | 40 82 00 24 */	bne .L_8149A1D4
/* 8149A1B4 | 7F A3 EB 78 */	mr r3, r29
/* 8149A1B8 | 4B FF B7 71 */	bl NHTTPi_GetSSLError
/* 8149A1BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149A1C0 | 41 82 00 0C */	beq .L_8149A1CC
/* 8149A1C4 | 38 00 00 11 */	li r0, 0x11
/* 8149A1C8 | 90 1C 03 30 */	stw r0, 0x330(r28)
.L_8149A1CC:
/* 8149A1CC | 38 60 00 01 */	li r3, 0x1
/* 8149A1D0 | 48 00 00 28 */	b .L_8149A1F8
.L_8149A1D4:
/* 8149A1D4 | 7F A3 EB 78 */	mr r3, r29
/* 8149A1D8 | 4B FF B7 51 */	bl NHTTPi_GetSSLError
/* 8149A1DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149A1E0 | 41 82 00 0C */	beq .L_8149A1EC
/* 8149A1E4 | 38 00 00 0E */	li r0, 0xe
/* 8149A1E8 | 90 1C 03 30 */	stw r0, 0x330(r28)
.L_8149A1EC:
/* 8149A1EC | 38 60 00 01 */	li r3, 0x1
/* 8149A1F0 | 48 00 00 08 */	b .L_8149A1F8
.L_8149A1F4:
/* 8149A1F4 | 38 60 00 00 */	li r3, 0x0
.L_8149A1F8:
/* 8149A1F8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8149A1FC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8149A200 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8149A204 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8149A208 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 8149A20C | 7C 08 03 A6 */	mtlr r0
/* 8149A210 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8149A214 | 4E 80 00 20 */	blr
.endfn NHTTPi_ThreadProxyProc

# .text:0x1AA4 | 0x8149A218 | size: 0x49C
.fn NHTTPi_ThreadSendProc, local
/* 8149A218 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8149A21C | 7C 08 02 A6 */	mflr r0
/* 8149A220 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8149A224 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8149A228 | 48 15 F2 91 */	bl _savegpr_25
/* 8149A22C | 3F C0 81 67 */	lis r30, lbl_8166D1A8@ha
/* 8149A230 | 7C 7B 1B 78 */	mr r27, r3
/* 8149A234 | 3B DE D1 A8 */	addi r30, r30, lbl_8166D1A8@l
/* 8149A238 | 48 00 2A 01 */	bl NHTTPi_GetSystemInfoP
/* 8149A23C | 7C 7C 1B 78 */	mr r28, r3
/* 8149A240 | 48 00 2A 6D */	bl NHTTPi_GetReqInfoP
/* 8149A244 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 8149A248 | 7F 83 E3 78 */	mr r3, r28
/* 8149A24C | 83 A4 00 0C */	lwz r29, 0xc(r4)
/* 8149A250 | 48 00 2A 6D */	bl NHTTPi_GetMutexInfoP
/* 8149A254 | 7C 7A 1B 78 */	mr r26, r3
/* 8149A258 | 7F 83 E3 78 */	mr r3, r28
/* 8149A25C | 48 00 2A 45 */	bl NHTTPi_GetBgnEndInfoP
/* 8149A260 | 7C 7F 1B 78 */	mr r31, r3
/* 8149A264 | 7F 43 D3 78 */	mr r3, r26
/* 8149A268 | 7F A4 EB 78 */	mr r4, r29
/* 8149A26C | 48 00 25 9D */	bl NHTTPi_Request2Connection
/* 8149A270 | 7C 7A 1B 78 */	mr r26, r3
/* 8149A274 | 7F 83 E3 78 */	mr r3, r28
/* 8149A278 | 48 00 2A 3D */	bl NHTTPi_GetThreadInfoP
/* 8149A27C | 3B 83 03 60 */	addi r28, r3, 0x360
/* 8149A280 | 80 7D 00 24 */	lwz r3, 0x24(r29)
/* 8149A284 | 4B FF DC 2D */	bl NHTTPi_strlen
/* 8149A288 | 38 00 00 0A */	li r0, 0xa
/* 8149A28C | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 8149A290 | 90 1B 03 30 */	stw r0, 0x330(r27)
/* 8149A294 | 7C 79 1B 78 */	mr r25, r3
/* 8149A298 | 38 60 00 00 */	li r3, 0x0
/* 8149A29C | 41 82 00 0C */	beq .L_8149A2A8
/* 8149A2A0 | 38 00 00 02 */	li r0, 0x2
/* 8149A2A4 | 90 1A 00 00 */	stw r0, 0x0(r26)
.L_8149A2A8:
/* 8149A2A8 | 38 00 00 00 */	li r0, 0x0
/* 8149A2AC | 90 1B 03 24 */	stw r0, 0x324(r27)
/* 8149A2B0 | 80 1D 00 1C */	lwz r0, 0x1c(r29)
/* 8149A2B4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8149A2B8 | 41 82 00 34 */	beq .L_8149A2EC
/* 8149A2BC | 40 80 00 10 */	bge .L_8149A2CC
/* 8149A2C0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149A2C4 | 40 80 00 14 */	bge .L_8149A2D8
/* 8149A2C8 | 48 00 00 48 */	b .L_8149A310
.L_8149A2CC:
/* 8149A2CC | 2C 00 00 03 */	cmpwi r0, 0x3
/* 8149A2D0 | 40 80 00 40 */	bge .L_8149A310
/* 8149A2D4 | 48 00 00 2C */	b .L_8149A300
.L_8149A2D8:
/* 8149A2D8 | 7F 63 DB 78 */	mr r3, r27
/* 8149A2DC | 38 8D 9A C8 */	li r4, lbl_81697B08@sda21
/* 8149A2E0 | 38 A0 00 04 */	li r5, 0x4
/* 8149A2E4 | 4B FF EA A1 */	bl NHTTPi_SendData
/* 8149A2E8 | 48 00 00 28 */	b .L_8149A310
.L_8149A2EC:
/* 8149A2EC | 7F 63 DB 78 */	mr r3, r27
/* 8149A2F0 | 38 8D 9A D0 */	li r4, lbl_81697B10@sda21
/* 8149A2F4 | 38 A0 00 05 */	li r5, 0x5
/* 8149A2F8 | 4B FF EA 8D */	bl NHTTPi_SendData
/* 8149A2FC | 48 00 00 14 */	b .L_8149A310
.L_8149A300:
/* 8149A300 | 7F 63 DB 78 */	mr r3, r27
/* 8149A304 | 38 8D 9A D8 */	li r4, lbl_81697B18@sda21
/* 8149A308 | 38 A0 00 05 */	li r5, 0x5
/* 8149A30C | 4B FF EA 79 */	bl NHTTPi_SendData
.L_8149A310:
/* 8149A310 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149A314 | 41 82 00 08 */	beq .L_8149A31C
/* 8149A318 | 48 00 03 84 */	b .L_8149A69C
.L_8149A31C:
/* 8149A31C | 80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8149A320 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149A324 | 41 82 00 2C */	beq .L_8149A350
/* 8149A328 | 80 1D 00 08 */	lwz r0, 0x8(r29)
/* 8149A32C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149A330 | 40 82 00 20 */	bne .L_8149A350
/* 8149A334 | 80 9D 00 24 */	lwz r4, 0x24(r29)
/* 8149A338 | 7F 63 DB 78 */	mr r3, r27
/* 8149A33C | 7F 25 CB 78 */	mr r5, r25
/* 8149A340 | 4B FF EA 45 */	bl NHTTPi_SendData
/* 8149A344 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149A348 | 41 82 00 50 */	beq .L_8149A398
/* 8149A34C | 48 00 03 50 */	b .L_8149A69C
.L_8149A350:
/* 8149A350 | 80 9D 00 18 */	lwz r4, 0x18(r29)
/* 8149A354 | 7C 19 20 00 */	cmpw r25, r4
/* 8149A358 | 40 81 00 24 */	ble .L_8149A37C
/* 8149A35C | 80 1D 00 24 */	lwz r0, 0x24(r29)
/* 8149A360 | 7C A4 C8 50 */	subf r5, r4, r25
/* 8149A364 | 7F 63 DB 78 */	mr r3, r27
/* 8149A368 | 7C 80 22 14 */	add r4, r0, r4
/* 8149A36C | 4B FF EA 19 */	bl NHTTPi_SendData
/* 8149A370 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149A374 | 41 82 00 24 */	beq .L_8149A398
/* 8149A378 | 48 00 03 24 */	b .L_8149A69C
.L_8149A37C:
/* 8149A37C | 7F 63 DB 78 */	mr r3, r27
/* 8149A380 | 38 8D 9A E0 */	li r4, lbl_81697B20@sda21
/* 8149A384 | 38 A0 00 01 */	li r5, 0x1
/* 8149A388 | 4B FF E9 FD */	bl NHTTPi_SendData
/* 8149A38C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149A390 | 41 82 00 08 */	beq .L_8149A398
/* 8149A394 | 48 00 03 08 */	b .L_8149A69C
.L_8149A398:
/* 8149A398 | 7F 63 DB 78 */	mr r3, r27
/* 8149A39C | 38 9E 00 0C */	addi r4, r30, 0xc
/* 8149A3A0 | 38 A0 00 0B */	li r5, 0xb
/* 8149A3A4 | 4B FF E9 E1 */	bl NHTTPi_SendData
/* 8149A3A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149A3AC | 41 82 00 08 */	beq .L_8149A3B4
/* 8149A3B0 | 48 00 02 EC */	b .L_8149A69C
.L_8149A3B4:
/* 8149A3B4 | 80 DD 00 08 */	lwz r6, 0x8(r29)
/* 8149A3B8 | 7F 63 DB 78 */	mr r3, r27
/* 8149A3BC | 38 8D 9A 9C */	li r4, lbl_81697ADC@sda21
/* 8149A3C0 | 38 A0 00 06 */	li r5, 0x6
/* 8149A3C4 | 7C 06 00 D0 */	neg r0, r6
/* 8149A3C8 | 7C 00 33 78 */	or r0, r0, r6
/* 8149A3CC | 54 06 0F FE */	srwi r6, r0, 31
/* 8149A3D0 | 3B 46 00 07 */	addi r26, r6, 0x7
/* 8149A3D4 | 4B FF E9 B1 */	bl NHTTPi_SendData
/* 8149A3D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149A3DC | 41 82 00 08 */	beq .L_8149A3E4
/* 8149A3E0 | 48 00 02 BC */	b .L_8149A69C
.L_8149A3E4:
/* 8149A3E4 | 80 9D 00 24 */	lwz r4, 0x24(r29)
/* 8149A3E8 | 7F 63 DB 78 */	mr r3, r27
/* 8149A3EC | 80 1D 00 14 */	lwz r0, 0x14(r29)
/* 8149A3F0 | 7C 84 D2 14 */	add r4, r4, r26
/* 8149A3F4 | 7C BA 00 50 */	subf r5, r26, r0
/* 8149A3F8 | 4B FF E9 8D */	bl NHTTPi_SendData
/* 8149A3FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149A400 | 41 82 00 08 */	beq .L_8149A408
/* 8149A404 | 48 00 02 98 */	b .L_8149A69C
.L_8149A408:
/* 8149A408 | 7F 63 DB 78 */	mr r3, r27
/* 8149A40C | 38 8D 9A A4 */	li r4, lbl_81697AE4@sda21
/* 8149A410 | 38 A0 00 02 */	li r5, 0x2
/* 8149A414 | 4B FF E9 71 */	bl NHTTPi_SendData
/* 8149A418 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149A41C | 41 82 00 08 */	beq .L_8149A424
/* 8149A420 | 48 00 02 7C */	b .L_8149A69C
.L_8149A424:
/* 8149A424 | 80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8149A428 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149A42C | 41 82 00 98 */	beq .L_8149A4C4
/* 8149A430 | 80 1D 00 08 */	lwz r0, 0x8(r29)
/* 8149A434 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149A438 | 40 82 00 8C */	bne .L_8149A4C4
/* 8149A43C | 48 00 27 FD */	bl NHTTPi_GetSystemInfoP
/* 8149A440 | 48 00 28 6D */	bl NHTTPi_GetReqInfoP
/* 8149A444 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8149A448 | 83 43 00 0C */	lwz r26, 0xc(r3)
/* 8149A44C | 80 1A 02 40 */	lwz r0, 0x240(r26)
/* 8149A450 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149A454 | 40 82 00 0C */	bne .L_8149A460
/* 8149A458 | 38 60 00 00 */	li r3, 0x0
/* 8149A45C | 48 00 00 5C */	b .L_8149A4B8
.L_8149A460:
/* 8149A460 | 7F 63 DB 78 */	mr r3, r27
/* 8149A464 | 38 9E 00 40 */	addi r4, r30, 0x40
/* 8149A468 | 38 A0 00 1B */	li r5, 0x1b
/* 8149A46C | 4B FF E9 19 */	bl NHTTPi_SendData
/* 8149A470 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149A474 | 41 82 00 08 */	beq .L_8149A47C
/* 8149A478 | 48 00 00 40 */	b .L_8149A4B8
.L_8149A47C:
/* 8149A47C | 80 BA 02 40 */	lwz r5, 0x240(r26)
/* 8149A480 | 7F 63 DB 78 */	mr r3, r27
/* 8149A484 | 38 9A 01 E4 */	addi r4, r26, 0x1e4
/* 8149A488 | 4B FF E8 FD */	bl NHTTPi_SendData
/* 8149A48C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149A490 | 41 82 00 08 */	beq .L_8149A498
/* 8149A494 | 48 00 00 24 */	b .L_8149A4B8
.L_8149A498:
/* 8149A498 | 7F 63 DB 78 */	mr r3, r27
/* 8149A49C | 38 8D 9A A4 */	li r4, lbl_81697AE4@sda21
/* 8149A4A0 | 38 A0 00 02 */	li r5, 0x2
/* 8149A4A4 | 4B FF E8 E1 */	bl NHTTPi_SendData
/* 8149A4A8 | 7C 03 00 D0 */	neg r0, r3
/* 8149A4AC | 7C 00 1B 78 */	or r0, r0, r3
/* 8149A4B0 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 8149A4B4 | 7C 63 00 38 */	and r3, r3, r0
.L_8149A4B8:
/* 8149A4B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149A4BC | 41 82 00 08 */	beq .L_8149A4C4
/* 8149A4C0 | 48 00 01 DC */	b .L_8149A69C
.L_8149A4C4:
/* 8149A4C4 | 48 00 27 75 */	bl NHTTPi_GetSystemInfoP
/* 8149A4C8 | 48 00 27 E5 */	bl NHTTPi_GetReqInfoP
/* 8149A4CC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8149A4D0 | 83 43 00 0C */	lwz r26, 0xc(r3)
/* 8149A4D4 | 80 1A 00 A8 */	lwz r0, 0xa8(r26)
/* 8149A4D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149A4DC | 40 82 00 0C */	bne .L_8149A4E8
/* 8149A4E0 | 38 60 00 00 */	li r3, 0x0
/* 8149A4E4 | 48 00 00 5C */	b .L_8149A540
.L_8149A4E8:
/* 8149A4E8 | 7F 63 DB 78 */	mr r3, r27
/* 8149A4EC | 38 9E 00 70 */	addi r4, r30, 0x70
/* 8149A4F0 | 38 A0 00 15 */	li r5, 0x15
/* 8149A4F4 | 4B FF E8 91 */	bl NHTTPi_SendData
/* 8149A4F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149A4FC | 41 82 00 08 */	beq .L_8149A504
/* 8149A500 | 48 00 00 40 */	b .L_8149A540
.L_8149A504:
/* 8149A504 | 80 BA 00 A8 */	lwz r5, 0xa8(r26)
/* 8149A508 | 7F 63 DB 78 */	mr r3, r27
/* 8149A50C | 38 9A 00 4C */	addi r4, r26, 0x4c
/* 8149A510 | 4B FF E8 75 */	bl NHTTPi_SendData
/* 8149A514 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149A518 | 41 82 00 08 */	beq .L_8149A520
/* 8149A51C | 48 00 00 24 */	b .L_8149A540
.L_8149A520:
/* 8149A520 | 7F 63 DB 78 */	mr r3, r27
/* 8149A524 | 38 8D 9A A4 */	li r4, lbl_81697AE4@sda21
/* 8149A528 | 38 A0 00 02 */	li r5, 0x2
/* 8149A52C | 4B FF E8 59 */	bl NHTTPi_SendData
/* 8149A530 | 7C 03 00 D0 */	neg r0, r3
/* 8149A534 | 7C 00 1B 78 */	or r0, r0, r3
/* 8149A538 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 8149A53C | 7C 63 00 38 */	and r3, r3, r0
.L_8149A540:
/* 8149A540 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149A544 | 41 82 00 08 */	beq .L_8149A54C
/* 8149A548 | 48 00 01 54 */	b .L_8149A69C
.L_8149A54C:
/* 8149A54C | 7F 63 DB 78 */	mr r3, r27
/* 8149A550 | 4B FF ED 81 */	bl NHTTPi_SendHeaderList
/* 8149A554 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149A558 | 41 82 00 08 */	beq .L_8149A560
/* 8149A55C | 48 00 01 40 */	b .L_8149A69C
.L_8149A560:
/* 8149A560 | 80 1D 00 1C */	lwz r0, 0x1c(r29)
/* 8149A564 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8149A568 | 40 82 00 AC */	bne .L_8149A614
/* 8149A56C | 80 1D 00 10 */	lwz r0, 0x10(r29)
/* 8149A570 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149A574 | 41 82 00 10 */	beq .L_8149A584
/* 8149A578 | 7F 63 DB 78 */	mr r3, r27
/* 8149A57C | 4B FF EE 4D */	bl NHTTPi_SendProcPostDataRaw
/* 8149A580 | 48 00 00 78 */	b .L_8149A5F8
.L_8149A584:
/* 8149A584 | 80 7D 00 D0 */	lwz r3, 0xd0(r29)
/* 8149A588 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149A58C | 40 82 00 44 */	bne .L_8149A5D0
/* 8149A590 | 80 7D 00 34 */	lwz r3, 0x34(r29)
/* 8149A594 | 38 80 00 00 */	li r4, 0x0
/* 8149A598 | 7C 65 1B 78 */	mr r5, r3
/* 8149A59C | 48 00 00 28 */	b .L_8149A5C4
.L_8149A5A0:
/* 8149A5A0 | 80 05 00 14 */	lwz r0, 0x14(r5)
/* 8149A5A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149A5A8 | 41 82 00 0C */	beq .L_8149A5B4
/* 8149A5AC | 38 80 00 01 */	li r4, 0x1
/* 8149A5B0 | 48 00 00 2C */	b .L_8149A5DC
.L_8149A5B4:
/* 8149A5B4 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8149A5B8 | 7C 05 00 40 */	cmplw r5, r0
/* 8149A5BC | 41 82 00 20 */	beq .L_8149A5DC
/* 8149A5C0 | 80 A5 00 04 */	lwz r5, 0x4(r5)
.L_8149A5C4:
/* 8149A5C4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8149A5C8 | 40 82 FF D8 */	bne .L_8149A5A0
/* 8149A5CC | 48 00 00 10 */	b .L_8149A5DC
.L_8149A5D0:
/* 8149A5D0 | 38 03 FF FE */	subi r0, r3, 0x2
/* 8149A5D4 | 7C 00 00 34 */	cntlzw r0, r0
/* 8149A5D8 | 54 04 D9 7E */	srwi r4, r0, 5
.L_8149A5DC:
/* 8149A5DC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8149A5E0 | 41 82 00 10 */	beq .L_8149A5F0
/* 8149A5E4 | 7F 63 DB 78 */	mr r3, r27
/* 8149A5E8 | 4B FF EF 69 */	bl NHTTPi_SendProcPostDataBinary
/* 8149A5EC | 48 00 00 0C */	b .L_8149A5F8
.L_8149A5F0:
/* 8149A5F0 | 7F 63 DB 78 */	mr r3, r27
/* 8149A5F4 | 4B FF F3 01 */	bl NHTTPi_SendProcPostDataAscii
.L_8149A5F8:
/* 8149A5F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149A5FC | 41 82 00 34 */	beq .L_8149A630
/* 8149A600 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 8149A604 | 40 82 00 98 */	bne .L_8149A69C
/* 8149A608 | 38 00 00 03 */	li r0, 0x3
/* 8149A60C | 90 1B 03 30 */	stw r0, 0x330(r27)
/* 8149A610 | 48 00 00 8C */	b .L_8149A69C
.L_8149A614:
/* 8149A614 | 7F 63 DB 78 */	mr r3, r27
/* 8149A618 | 38 8D 9A A4 */	li r4, lbl_81697AE4@sda21
/* 8149A61C | 38 A0 00 02 */	li r5, 0x2
/* 8149A620 | 4B FF E7 65 */	bl NHTTPi_SendData
/* 8149A624 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149A628 | 41 82 00 08 */	beq .L_8149A630
/* 8149A62C | 48 00 00 70 */	b .L_8149A69C
.L_8149A630:
/* 8149A630 | 80 DB 03 24 */	lwz r6, 0x324(r27)
/* 8149A634 | 3B 40 00 00 */	li r26, 0x0
/* 8149A638 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8149A63C | 40 81 00 48 */	ble .L_8149A684
/* 8149A640 | 80 9F 07 D0 */	lwz r4, 0x7d0(r31)
/* 8149A644 | 7F A3 EB 78 */	mr r3, r29
/* 8149A648 | 7F 85 E3 78 */	mr r5, r28
/* 8149A64C | 38 E0 00 00 */	li r7, 0x0
/* 8149A650 | 4B FF D6 E9 */	bl NHTTPi_SocSend
/* 8149A654 | 38 00 00 00 */	li r0, 0x0
/* 8149A658 | 7C 7D 1B 78 */	mr r29, r3
/* 8149A65C | 90 1B 03 24 */	stw r0, 0x324(r27)
/* 8149A660 | 7F 83 E3 78 */	mr r3, r28
/* 8149A664 | 38 80 01 00 */	li r4, 0x100
/* 8149A668 | 4B FF D8 51 */	bl NHTTPi_memclr
/* 8149A66C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8149A670 | 40 80 00 08 */	bge .L_8149A678
/* 8149A674 | 3B 40 00 01 */	li r26, 0x1
.L_8149A678:
/* 8149A678 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8149A67C | 40 82 00 08 */	bne .L_8149A684
/* 8149A680 | 3B 40 00 02 */	li r26, 0x2
.L_8149A684:
/* 8149A684 | 38 00 00 00 */	li r0, 0x0
/* 8149A688 | 7F 83 E3 78 */	mr r3, r28
/* 8149A68C | 90 1B 03 24 */	stw r0, 0x324(r27)
/* 8149A690 | 38 80 01 00 */	li r4, 0x100
/* 8149A694 | 4B FF D8 25 */	bl NHTTPi_memclr
/* 8149A698 | 7F 43 D3 78 */	mr r3, r26
.L_8149A69C:
/* 8149A69C | 39 61 00 30 */	addi r11, r1, 0x30
/* 8149A6A0 | 48 15 EE 65 */	bl _restgpr_25
/* 8149A6A4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8149A6A8 | 7C 08 03 A6 */	mtlr r0
/* 8149A6AC | 38 21 00 30 */	addi r1, r1, 0x30
/* 8149A6B0 | 4E 80 00 20 */	blr
.endfn NHTTPi_ThreadSendProc

# .text:0x1F40 | 0x8149A6B4 | size: 0x1EC
.fn NHTTPi_ThreadRecvHeaderProc, local
/* 8149A6B4 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8149A6B8 | 7C 08 02 A6 */	mflr r0
/* 8149A6BC | 90 01 00 44 */	stw r0, 0x44(r1)
/* 8149A6C0 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8149A6C4 | 48 15 ED ED */	bl _savegpr_23
/* 8149A6C8 | 7C 79 1B 78 */	mr r25, r3
/* 8149A6CC | 48 00 25 6D */	bl NHTTPi_GetSystemInfoP
/* 8149A6D0 | 7C 77 1B 78 */	mr r23, r3
/* 8149A6D4 | 48 00 25 D9 */	bl NHTTPi_GetReqInfoP
/* 8149A6D8 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 8149A6DC | 7E E3 BB 78 */	mr r3, r23
/* 8149A6E0 | 83 A4 00 0C */	lwz r29, 0xc(r4)
/* 8149A6E4 | 83 9D 00 2C */	lwz r28, 0x2c(r29)
/* 8149A6E8 | 48 00 25 D5 */	bl NHTTPi_GetMutexInfoP
/* 8149A6EC | 7C 7B 1B 78 */	mr r27, r3
/* 8149A6F0 | 7F A4 EB 78 */	mr r4, r29
/* 8149A6F4 | 48 00 21 15 */	bl NHTTPi_Request2Connection
/* 8149A6F8 | 7C 78 1B 78 */	mr r24, r3
/* 8149A6FC | 7E E3 BB 78 */	mr r3, r23
/* 8149A700 | 48 00 25 A1 */	bl NHTTPi_GetBgnEndInfoP
/* 8149A704 | 38 00 00 00 */	li r0, 0x0
/* 8149A708 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 8149A70C | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8149A710 | 7C 7E 1B 78 */	mr r30, r3
/* 8149A714 | 41 82 00 0C */	beq .L_8149A720
/* 8149A718 | 38 00 00 03 */	li r0, 0x3
/* 8149A71C | 90 18 00 00 */	stw r0, 0x0(r24)
.L_8149A720:
/* 8149A720 | 3B E0 00 00 */	li r31, 0x0
/* 8149A724 | 38 79 03 04 */	addi r3, r25, 0x304
/* 8149A728 | 93 FC 00 00 */	stw r31, 0x0(r28)
/* 8149A72C | 38 80 00 0E */	li r4, 0xe
/* 8149A730 | 4B FF D7 89 */	bl NHTTPi_memclr
/* 8149A734 | 83 5C 00 34 */	lwz r26, 0x34(r28)
/* 8149A738 | 3B 01 00 08 */	addi r24, r1, 0x8
/* 8149A73C | 93 F9 03 28 */	stw r31, 0x328(r25)
.L_8149A740:
/* 8149A740 | 80 1D 00 00 */	lwz r0, 0x0(r29)
/* 8149A744 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149A748 | 41 82 00 0C */	beq .L_8149A754
/* 8149A74C | 38 60 00 00 */	li r3, 0x0
/* 8149A750 | 48 00 01 38 */	b .L_8149A888
.L_8149A754:
/* 8149A754 | 80 19 03 28 */	lwz r0, 0x328(r25)
/* 8149A758 | 2C 00 04 00 */	cmpwi r0, 0x400
/* 8149A75C | 40 80 00 40 */	bge .L_8149A79C
/* 8149A760 | 7C DC 02 14 */	add r6, r28, r0
/* 8149A764 | 80 BE 07 D0 */	lwz r5, 0x7d0(r30)
/* 8149A768 | 7F 63 DB 78 */	mr r3, r27
/* 8149A76C | 7F A4 EB 78 */	mr r4, r29
/* 8149A770 | 38 C6 00 38 */	addi r6, r6, 0x38
/* 8149A774 | 38 E0 00 01 */	li r7, 0x1
/* 8149A778 | 39 00 00 00 */	li r8, 0x0
/* 8149A77C | 4B FF D3 49 */	bl NHTTPi_SocRecv
/* 8149A780 | 80 19 03 28 */	lwz r0, 0x328(r25)
/* 8149A784 | 7C 64 1B 78 */	mr r4, r3
/* 8149A788 | 7C 7C 02 14 */	add r3, r28, r0
/* 8149A78C | 54 00 07 BE */	clrlwi r0, r0, 30
/* 8149A790 | 88 63 00 38 */	lbz r3, 0x38(r3)
/* 8149A794 | 7C 78 01 AE */	stbx r3, r24, r0
/* 8149A798 | 48 00 00 94 */	b .L_8149A82C
.L_8149A79C:
/* 8149A79C | 54 17 05 FF */	clrlwi. r23, r0, 23
/* 8149A7A0 | 40 82 00 54 */	bne .L_8149A7F4
/* 8149A7A4 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 8149A7A8 | 41 82 00 1C */	beq .L_8149A7C4
/* 8149A7AC | 38 60 02 04 */	li r3, 0x204
/* 8149A7B0 | 38 80 00 04 */	li r4, 0x4
/* 8149A7B4 | 4B FF B0 C5 */	bl NHTTPi_alloc
/* 8149A7B8 | 90 7A 00 00 */	stw r3, 0x0(r26)
/* 8149A7BC | 7C 7A 1B 78 */	mr r26, r3
/* 8149A7C0 | 48 00 00 18 */	b .L_8149A7D8
.L_8149A7C4:
/* 8149A7C4 | 38 60 02 04 */	li r3, 0x204
/* 8149A7C8 | 38 80 00 04 */	li r4, 0x4
/* 8149A7CC | 4B FF B0 AD */	bl NHTTPi_alloc
/* 8149A7D0 | 7C 7A 1B 78 */	mr r26, r3
/* 8149A7D4 | 90 7C 00 34 */	stw r3, 0x34(r28)
.L_8149A7D8:
/* 8149A7D8 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 8149A7DC | 40 82 00 14 */	bne .L_8149A7F0
/* 8149A7E0 | 38 00 00 01 */	li r0, 0x1
/* 8149A7E4 | 38 60 00 00 */	li r3, 0x0
/* 8149A7E8 | 90 19 03 30 */	stw r0, 0x330(r25)
/* 8149A7EC | 48 00 00 9C */	b .L_8149A888
.L_8149A7F0:
/* 8149A7F0 | 93 FA 00 00 */	stw r31, 0x0(r26)
.L_8149A7F4:
/* 8149A7F4 | 7C 7A BA 14 */	add r3, r26, r23
/* 8149A7F8 | 80 BE 07 D0 */	lwz r5, 0x7d0(r30)
/* 8149A7FC | 3A E3 00 04 */	addi r23, r3, 0x4
/* 8149A800 | 7F A4 EB 78 */	mr r4, r29
/* 8149A804 | 7F 63 DB 78 */	mr r3, r27
/* 8149A808 | 38 E0 00 01 */	li r7, 0x1
/* 8149A80C | 7E E6 BB 78 */	mr r6, r23
/* 8149A810 | 39 00 00 00 */	li r8, 0x0
/* 8149A814 | 4B FF D2 B1 */	bl NHTTPi_SocRecv
/* 8149A818 | 80 19 03 28 */	lwz r0, 0x328(r25)
/* 8149A81C | 7C 64 1B 78 */	mr r4, r3
/* 8149A820 | 88 77 00 00 */	lbz r3, 0x0(r23)
/* 8149A824 | 54 00 07 BE */	clrlwi r0, r0, 30
/* 8149A828 | 7C 78 01 AE */	stbx r3, r24, r0
.L_8149A82C:
/* 8149A82C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8149A830 | 41 81 00 14 */	bgt .L_8149A844
/* 8149A834 | 38 00 00 0A */	li r0, 0xa
/* 8149A838 | 38 60 00 00 */	li r3, 0x0
/* 8149A83C | 90 19 03 30 */	stw r0, 0x330(r25)
/* 8149A840 | 48 00 00 48 */	b .L_8149A888
.L_8149A844:
/* 8149A844 | 80 19 03 28 */	lwz r0, 0x328(r25)
/* 8149A848 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8149A84C | 7C 80 22 14 */	add r4, r0, r4
/* 8149A850 | 90 99 03 28 */	stw r4, 0x328(r25)
/* 8149A854 | 4B FF E0 29 */	bl NHTTPi_CheckHeaderEnd
/* 8149A858 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149A85C | 41 82 FE E4 */	beq .L_8149A740
/* 8149A860 | 80 19 03 28 */	lwz r0, 0x328(r25)
/* 8149A864 | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 8149A868 | 80 1C 00 00 */	lwz r0, 0x0(r28)
/* 8149A86C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149A870 | 40 82 00 14 */	bne .L_8149A884
/* 8149A874 | 38 00 00 07 */	li r0, 0x7
/* 8149A878 | 38 60 00 00 */	li r3, 0x0
/* 8149A87C | 90 19 03 30 */	stw r0, 0x330(r25)
/* 8149A880 | 48 00 00 08 */	b .L_8149A888
.L_8149A884:
/* 8149A884 | 38 60 00 01 */	li r3, 0x1
.L_8149A888:
/* 8149A888 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8149A88C | 48 15 EC 71 */	bl _restgpr_23
/* 8149A890 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8149A894 | 7C 08 03 A6 */	mtlr r0
/* 8149A898 | 38 21 00 40 */	addi r1, r1, 0x40
/* 8149A89C | 4E 80 00 20 */	blr
.endfn NHTTPi_ThreadRecvHeaderProc

# .text:0x212C | 0x8149A8A0 | size: 0x2FC
.fn NHTTPi_ThreadParseHeaderProc, local
/* 8149A8A0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8149A8A4 | 7C 08 02 A6 */	mflr r0
/* 8149A8A8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8149A8AC | 39 61 00 30 */	addi r11, r1, 0x30
/* 8149A8B0 | 48 15 EC 11 */	bl _savegpr_27
/* 8149A8B4 | 3F 80 81 67 */	lis r28, lbl_8166D1A8@ha
/* 8149A8B8 | 7C 7E 1B 78 */	mr r30, r3
/* 8149A8BC | 3B 9C D1 A8 */	addi r28, r28, lbl_8166D1A8@l
/* 8149A8C0 | 48 00 23 79 */	bl NHTTPi_GetSystemInfoP
/* 8149A8C4 | 7C 7D 1B 78 */	mr r29, r3
/* 8149A8C8 | 48 00 23 E5 */	bl NHTTPi_GetReqInfoP
/* 8149A8CC | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 8149A8D0 | 7F A3 EB 78 */	mr r3, r29
/* 8149A8D4 | 83 A4 00 0C */	lwz r29, 0xc(r4)
/* 8149A8D8 | 83 FD 00 2C */	lwz r31, 0x2c(r29)
/* 8149A8DC | 48 00 23 D9 */	bl NHTTPi_GetThreadInfoP
/* 8149A8E0 | 3B 63 03 60 */	addi r27, r3, 0x360
/* 8149A8E4 | 7F E3 FB 78 */	mr r3, r31
/* 8149A8E8 | 38 9E 03 04 */	addi r4, r30, 0x304
/* 8149A8EC | 38 A0 00 00 */	li r5, 0x0
/* 8149A8F0 | 38 C0 00 0E */	li r6, 0xe
/* 8149A8F4 | 4B FF BD BD */	bl NHTTPi_loadFromHdrRecvBuf
/* 8149A8F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149A8FC | 40 82 00 14 */	bne .L_8149A910
/* 8149A900 | 38 00 00 07 */	li r0, 0x7
/* 8149A904 | 38 60 00 00 */	li r3, 0x0
/* 8149A908 | 90 1E 03 30 */	stw r0, 0x330(r30)
/* 8149A90C | 48 00 02 78 */	b .L_8149AB84
.L_8149A910:
/* 8149A910 | 38 7E 03 04 */	addi r3, r30, 0x304
/* 8149A914 | 38 8D 9A A8 */	li r4, lbl_81697AE8@sda21
/* 8149A918 | 38 A0 00 05 */	li r5, 0x5
/* 8149A91C | 4B FF D5 A9 */	bl NHTTPi_strnicmp
/* 8149A920 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149A924 | 41 82 00 14 */	beq .L_8149A938
/* 8149A928 | 38 00 00 07 */	li r0, 0x7
/* 8149A92C | 38 60 00 00 */	li r3, 0x0
/* 8149A930 | 90 1E 03 30 */	stw r0, 0x330(r30)
/* 8149A934 | 48 00 02 50 */	b .L_8149AB84
.L_8149A938:
/* 8149A938 | 88 1E 03 0C */	lbz r0, 0x30c(r30)
/* 8149A93C | 2C 00 00 20 */	cmpwi r0, 0x20
/* 8149A940 | 41 82 00 14 */	beq .L_8149A954
/* 8149A944 | 38 00 00 07 */	li r0, 0x7
/* 8149A948 | 38 60 00 00 */	li r3, 0x0
/* 8149A94C | 90 1E 03 30 */	stw r0, 0x330(r30)
/* 8149A950 | 48 00 02 34 */	b .L_8149AB84
.L_8149A954:
/* 8149A954 | 38 7E 03 0D */	addi r3, r30, 0x30d
/* 8149A958 | 38 80 00 03 */	li r4, 0x3
/* 8149A95C | 4B FF D8 DD */	bl NHTTPi_strToInt
/* 8149A960 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149A964 | 90 7F 00 18 */	stw r3, 0x18(r31)
/* 8149A968 | 40 80 00 14 */	bge .L_8149A97C
/* 8149A96C | 38 00 00 07 */	li r0, 0x7
/* 8149A970 | 38 60 00 00 */	li r3, 0x0
/* 8149A974 | 90 1E 03 30 */	stw r0, 0x330(r30)
/* 8149A978 | 48 00 02 0C */	b .L_8149AB84
.L_8149A97C:
/* 8149A97C | 80 BF 00 00 */	lwz r5, 0x0(r31)
/* 8149A980 | 7F E3 FB 78 */	mr r3, r31
/* 8149A984 | 38 C1 00 0C */	addi r6, r1, 0xc
/* 8149A988 | 38 80 00 0C */	li r4, 0xc
/* 8149A98C | 38 E0 00 00 */	li r7, 0x0
/* 8149A990 | 4B FF B8 41 */	bl NHTTPi_findNextLineHdrRecvBuf
/* 8149A994 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149A998 | 40 80 00 14 */	bge .L_8149A9AC
/* 8149A99C | 38 00 00 07 */	li r0, 0x7
/* 8149A9A0 | 38 60 00 00 */	li r3, 0x0
/* 8149A9A4 | 90 1E 03 30 */	stw r0, 0x330(r30)
/* 8149A9A8 | 48 00 01 DC */	b .L_8149AB84
.L_8149A9AC:
/* 8149A9AC | 7F E3 FB 78 */	mr r3, r31
/* 8149A9B0 | 38 9C 00 88 */	addi r4, r28, 0x88
/* 8149A9B4 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8149A9B8 | 4B FF C9 51 */	bl NHTTPi_getHeaderValue
/* 8149A9BC | 2C 83 00 00 */	cmpwi cr1, r3, 0x0
/* 8149A9C0 | 90 7E 03 2C */	stw r3, 0x32c(r30)
/* 8149A9C4 | 7C 66 1B 78 */	mr r6, r3
/* 8149A9C8 | 40 86 00 14 */	bne cr1, .L_8149A9DC
/* 8149A9CC | 38 00 00 00 */	li r0, 0x0
/* 8149A9D0 | 38 60 00 00 */	li r3, 0x0
/* 8149A9D4 | 90 1E 03 30 */	stw r0, 0x330(r30)
/* 8149A9D8 | 48 00 01 AC */	b .L_8149AB84
.L_8149A9DC:
/* 8149A9DC | 2C 03 01 00 */	cmpwi r3, 0x100
/* 8149A9E0 | 40 81 00 14 */	ble .L_8149A9F4
/* 8149A9E4 | 38 00 00 07 */	li r0, 0x7
/* 8149A9E8 | 38 60 00 00 */	li r3, 0x0
/* 8149A9EC | 90 1E 03 30 */	stw r0, 0x330(r30)
/* 8149A9F0 | 48 00 01 94 */	b .L_8149AB84
.L_8149A9F4:
/* 8149A9F4 | 40 85 00 5C */	ble cr1, .L_8149AA50
/* 8149A9F8 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 8149A9FC | 7F E3 FB 78 */	mr r3, r31
/* 8149AA00 | 7F 64 DB 78 */	mr r4, r27
/* 8149AA04 | 4B FF BC AD */	bl NHTTPi_loadFromHdrRecvBuf
/* 8149AA08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149AA0C | 40 82 00 14 */	bne .L_8149AA20
/* 8149AA10 | 38 00 00 07 */	li r0, 0x7
/* 8149AA14 | 38 60 00 00 */	li r3, 0x0
/* 8149AA18 | 90 1E 03 30 */	stw r0, 0x330(r30)
/* 8149AA1C | 48 00 01 68 */	b .L_8149AB84
.L_8149AA20:
/* 8149AA20 | 80 9E 03 2C */	lwz r4, 0x32c(r30)
/* 8149AA24 | 7F 63 DB 78 */	mr r3, r27
/* 8149AA28 | 4B FF D8 11 */	bl NHTTPi_strToInt
/* 8149AA2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149AA30 | 90 7E 03 2C */	stw r3, 0x32c(r30)
/* 8149AA34 | 40 80 00 14 */	bge .L_8149AA48
/* 8149AA38 | 38 00 00 07 */	li r0, 0x7
/* 8149AA3C | 38 60 00 00 */	li r3, 0x0
/* 8149AA40 | 90 1E 03 30 */	stw r0, 0x330(r30)
/* 8149AA44 | 48 00 01 40 */	b .L_8149AB84
.L_8149AA48:
/* 8149AA48 | 90 7F 00 0C */	stw r3, 0xc(r31)
/* 8149AA4C | 48 00 00 0C */	b .L_8149AA58
.L_8149AA50:
/* 8149AA50 | 38 00 FF FF */	li r0, -0x1
/* 8149AA54 | 90 1F 00 0C */	stw r0, 0xc(r31)
.L_8149AA58:
/* 8149AA58 | 80 1D 00 08 */	lwz r0, 0x8(r29)
/* 8149AA5C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149AA60 | 41 82 00 10 */	beq .L_8149AA70
/* 8149AA64 | 38 00 00 00 */	li r0, 0x0
/* 8149AA68 | 90 1E 03 38 */	stw r0, 0x338(r30)
/* 8149AA6C | 48 00 00 90 */	b .L_8149AAFC
.L_8149AA70:
/* 8149AA70 | 7F E3 FB 78 */	mr r3, r31
/* 8149AA74 | 38 9C 00 98 */	addi r4, r28, 0x98
/* 8149AA78 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8149AA7C | 4B FF C8 8D */	bl NHTTPi_getHeaderValue
/* 8149AA80 | 2C 83 00 00 */	cmpwi cr1, r3, 0x0
/* 8149AA84 | 7C 60 1B 78 */	mr r0, r3
/* 8149AA88 | 40 86 00 1C */	bne cr1, .L_8149AAA4
/* 8149AA8C | 38 60 00 07 */	li r3, 0x7
/* 8149AA90 | 38 00 00 00 */	li r0, 0x0
/* 8149AA94 | 90 7E 03 30 */	stw r3, 0x330(r30)
/* 8149AA98 | 38 60 00 00 */	li r3, 0x0
/* 8149AA9C | 90 1E 03 38 */	stw r0, 0x338(r30)
/* 8149AAA0 | 48 00 00 E4 */	b .L_8149AB84
.L_8149AAA4:
/* 8149AAA4 | 2C 03 01 00 */	cmpwi r3, 0x100
/* 8149AAA8 | 40 81 00 10 */	ble .L_8149AAB8
/* 8149AAAC | 38 00 00 00 */	li r0, 0x0
/* 8149AAB0 | 90 1E 03 38 */	stw r0, 0x338(r30)
/* 8149AAB4 | 48 00 00 48 */	b .L_8149AAFC
.L_8149AAB8:
/* 8149AAB8 | 40 85 00 3C */	ble cr1, .L_8149AAF4
/* 8149AABC | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 8149AAC0 | 7F E3 FB 78 */	mr r3, r31
/* 8149AAC4 | 38 DC 00 A4 */	addi r6, r28, 0xa4
/* 8149AAC8 | 3B A0 00 00 */	li r29, 0x0
/* 8149AACC | 7C A4 02 14 */	add r5, r4, r0
/* 8149AAD0 | 38 E0 00 00 */	li r7, 0x0
/* 8149AAD4 | 4B FF B9 ED */	bl NHTTPi_compareTokenN_HdrRecvBuf
/* 8149AAD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149AADC | 40 82 00 10 */	bne .L_8149AAEC
/* 8149AAE0 | 38 00 00 01 */	li r0, 0x1
/* 8149AAE4 | 90 1E 03 38 */	stw r0, 0x338(r30)
/* 8149AAE8 | 48 00 00 14 */	b .L_8149AAFC
.L_8149AAEC:
/* 8149AAEC | 93 BE 03 38 */	stw r29, 0x338(r30)
/* 8149AAF0 | 48 00 00 0C */	b .L_8149AAFC
.L_8149AAF4:
/* 8149AAF4 | 38 00 00 00 */	li r0, 0x0
/* 8149AAF8 | 90 1E 03 38 */	stw r0, 0x338(r30)
.L_8149AAFC:
/* 8149AAFC | 7F E3 FB 78 */	mr r3, r31
/* 8149AB00 | 38 9C 00 B0 */	addi r4, r28, 0xb0
/* 8149AB04 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8149AB08 | 4B FF C8 01 */	bl NHTTPi_getHeaderValue
/* 8149AB0C | 2C 83 00 00 */	cmpwi cr1, r3, 0x0
/* 8149AB10 | 90 7E 03 3C */	stw r3, 0x33c(r30)
/* 8149AB14 | 7C 60 1B 78 */	mr r0, r3
/* 8149AB18 | 40 86 00 14 */	bne cr1, .L_8149AB2C
/* 8149AB1C | 38 00 00 07 */	li r0, 0x7
/* 8149AB20 | 38 60 00 00 */	li r3, 0x0
/* 8149AB24 | 90 1E 03 30 */	stw r0, 0x330(r30)
/* 8149AB28 | 48 00 00 5C */	b .L_8149AB84
.L_8149AB2C:
/* 8149AB2C | 2C 03 01 00 */	cmpwi r3, 0x100
/* 8149AB30 | 40 81 00 10 */	ble .L_8149AB40
/* 8149AB34 | 38 00 00 00 */	li r0, 0x0
/* 8149AB38 | 90 1E 03 3C */	stw r0, 0x33c(r30)
/* 8149AB3C | 48 00 00 34 */	b .L_8149AB70
.L_8149AB40:
/* 8149AB40 | 40 85 00 28 */	ble cr1, .L_8149AB68
/* 8149AB44 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 8149AB48 | 7F E3 FB 78 */	mr r3, r31
/* 8149AB4C | 38 CD 9A E8 */	li r6, lbl_81697B28@sda21
/* 8149AB50 | 38 E0 00 3B */	li r7, 0x3b
/* 8149AB54 | 7C A4 02 14 */	add r5, r4, r0
/* 8149AB58 | 4B FF B9 69 */	bl NHTTPi_compareTokenN_HdrRecvBuf
/* 8149AB5C | 7C 60 00 34 */	cntlzw r0, r3
/* 8149AB60 | 54 00 D9 7E */	srwi r0, r0, 5
/* 8149AB64 | 48 00 00 08 */	b .L_8149AB6C
.L_8149AB68:
/* 8149AB68 | 38 00 00 00 */	li r0, 0x0
.L_8149AB6C:
/* 8149AB6C | 90 1E 03 3C */	stw r0, 0x33c(r30)
.L_8149AB70:
/* 8149AB70 | 38 60 00 00 */	li r3, 0x0
/* 8149AB74 | 38 00 00 01 */	li r0, 0x1
/* 8149AB78 | 90 7E 03 30 */	stw r3, 0x330(r30)
/* 8149AB7C | 38 60 00 01 */	li r3, 0x1
/* 8149AB80 | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_8149AB84:
/* 8149AB84 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8149AB88 | 48 15 E9 85 */	bl _restgpr_27
/* 8149AB8C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8149AB90 | 7C 08 03 A6 */	mtlr r0
/* 8149AB94 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8149AB98 | 4E 80 00 20 */	blr
.endfn NHTTPi_ThreadParseHeaderProc

# .text:0x2428 | 0x8149AB9C | size: 0x5F0
.fn NHTTPi_ThreadRecvBodyProc, local
/* 8149AB9C | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8149ABA0 | 7C 08 02 A6 */	mflr r0
/* 8149ABA4 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 8149ABA8 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8149ABAC | 48 15 E8 E9 */	bl _savegpr_16
/* 8149ABB0 | 7C 70 1B 78 */	mr r16, r3
/* 8149ABB4 | 48 00 20 85 */	bl NHTTPi_GetSystemInfoP
/* 8149ABB8 | 7C 71 1B 78 */	mr r17, r3
/* 8149ABBC | 48 00 20 F1 */	bl NHTTPi_GetReqInfoP
/* 8149ABC0 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 8149ABC4 | 7E 23 8B 78 */	mr r3, r17
/* 8149ABC8 | 82 C4 00 0C */	lwz r22, 0xc(r4)
/* 8149ABCC | 82 B6 00 2C */	lwz r21, 0x2c(r22)
/* 8149ABD0 | 48 00 20 D1 */	bl NHTTPi_GetBgnEndInfoP
/* 8149ABD4 | 7C 7B 1B 78 */	mr r27, r3
/* 8149ABD8 | 7E 23 8B 78 */	mr r3, r17
/* 8149ABDC | 48 00 20 E1 */	bl NHTTPi_GetMutexInfoP
/* 8149ABE0 | 7C 74 1B 78 */	mr r20, r3
/* 8149ABE4 | 7E C4 B3 78 */	mr r4, r22
/* 8149ABE8 | 48 00 1C 21 */	bl NHTTPi_Request2Connection
/* 8149ABEC | 7C 73 1B 78 */	mr r19, r3
/* 8149ABF0 | 7E 23 8B 78 */	mr r3, r17
/* 8149ABF4 | 48 00 20 C1 */	bl NHTTPi_GetThreadInfoP
/* 8149ABF8 | 80 16 00 1C */	lwz r0, 0x1c(r22)
/* 8149ABFC | 3A 43 03 60 */	addi r18, r3, 0x360
/* 8149AC00 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8149AC04 | 41 82 00 28 */	beq .L_8149AC2C
/* 8149AC08 | 80 15 00 18 */	lwz r0, 0x18(r21)
/* 8149AC0C | 2C 00 00 CC */	cmpwi r0, 0xcc
/* 8149AC10 | 41 82 00 1C */	beq .L_8149AC2C
/* 8149AC14 | 2C 00 01 30 */	cmpwi r0, 0x130
/* 8149AC18 | 41 82 00 14 */	beq .L_8149AC2C
/* 8149AC1C | 2C 00 00 64 */	cmpwi r0, 0x64
/* 8149AC20 | 41 80 00 14 */	blt .L_8149AC34
/* 8149AC24 | 2C 00 00 C8 */	cmpwi r0, 0xc8
/* 8149AC28 | 40 80 00 0C */	bge .L_8149AC34
.L_8149AC2C:
/* 8149AC2C | 38 60 00 01 */	li r3, 0x1
/* 8149AC30 | 48 00 05 44 */	b .L_8149B174
.L_8149AC34:
/* 8149AC34 | 7E 63 9B 78 */	mr r3, r19
/* 8149AC38 | 38 80 00 00 */	li r4, 0x0
/* 8149AC3C | 48 00 20 89 */	bl NHTTPi_SetVirtualContentLength
/* 8149AC40 | 2C 13 00 00 */	cmpwi r19, 0x0
/* 8149AC44 | 41 82 00 0C */	beq .L_8149AC50
/* 8149AC48 | 38 00 00 04 */	li r0, 0x4
/* 8149AC4C | 90 13 00 00 */	stw r0, 0x0(r19)
.L_8149AC50:
/* 8149AC50 | 80 90 03 2C */	lwz r4, 0x32c(r16)
/* 8149AC54 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8149AC58 | 41 80 01 28 */	blt .L_8149AD80
/* 8149AC5C | 7E 63 9B 78 */	mr r3, r19
/* 8149AC60 | 48 00 20 65 */	bl NHTTPi_SetVirtualContentLength
/* 8149AC64 | 3A 40 00 06 */	li r18, 0x6
/* 8149AC68 | 3A 20 02 00 */	li r17, 0x200
/* 8149AC6C | 48 00 00 C0 */	b .L_8149AD2C
.L_8149AC70:
/* 8149AC70 | 80 10 03 30 */	lwz r0, 0x330(r16)
/* 8149AC74 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 8149AC78 | 41 82 00 28 */	beq .L_8149ACA0
/* 8149AC7C | 7E 83 A3 78 */	mr r3, r20
/* 8149AC80 | 7E A4 AB 78 */	mr r4, r21
/* 8149AC84 | 4B FF E0 35 */	bl NHTTPi_BufFull
/* 8149AC88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149AC8C | 40 82 00 14 */	bne .L_8149ACA0
/* 8149AC90 | 92 50 03 30 */	stw r18, 0x330(r16)
/* 8149AC94 | 38 10 01 04 */	addi r0, r16, 0x104
/* 8149AC98 | 90 15 00 28 */	stw r0, 0x28(r21)
/* 8149AC9C | 92 35 00 1C */	stw r17, 0x1c(r21)
.L_8149ACA0:
/* 8149ACA0 | 80 10 03 30 */	lwz r0, 0x330(r16)
/* 8149ACA4 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 8149ACA8 | 40 82 00 24 */	bne .L_8149ACCC
/* 8149ACAC | 80 BB 07 D0 */	lwz r5, 0x7d0(r27)
/* 8149ACB0 | 7E 83 A3 78 */	mr r3, r20
/* 8149ACB4 | 80 F0 03 2C */	lwz r7, 0x32c(r16)
/* 8149ACB8 | 7E C4 B3 78 */	mr r4, r22
/* 8149ACBC | 38 C0 00 00 */	li r6, 0x0
/* 8149ACC0 | 39 00 00 00 */	li r8, 0x0
/* 8149ACC4 | 4B FF BB 6D */	bl NHTTPi_RecvBufN
/* 8149ACC8 | 48 00 00 20 */	b .L_8149ACE8
.L_8149ACCC:
/* 8149ACCC | 80 BB 07 D0 */	lwz r5, 0x7d0(r27)
/* 8149ACD0 | 7E 83 A3 78 */	mr r3, r20
/* 8149ACD4 | 80 D5 00 04 */	lwz r6, 0x4(r21)
/* 8149ACD8 | 7E C4 B3 78 */	mr r4, r22
/* 8149ACDC | 80 F0 03 2C */	lwz r7, 0x32c(r16)
/* 8149ACE0 | 39 00 00 00 */	li r8, 0x0
/* 8149ACE4 | 4B FF BB 4D */	bl NHTTPi_RecvBufN
.L_8149ACE8:
/* 8149ACE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149ACEC | 40 80 00 0C */	bge .L_8149ACF8
/* 8149ACF0 | 38 60 00 00 */	li r3, 0x0
/* 8149ACF4 | 48 00 04 80 */	b .L_8149B174
.L_8149ACF8:
/* 8149ACF8 | 41 82 00 40 */	beq .L_8149AD38
/* 8149ACFC | 80 10 03 30 */	lwz r0, 0x330(r16)
/* 8149AD00 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 8149AD04 | 41 82 00 1C */	beq .L_8149AD20
/* 8149AD08 | 80 15 00 04 */	lwz r0, 0x4(r21)
/* 8149AD0C | 7C 00 1A 14 */	add r0, r0, r3
/* 8149AD10 | 90 15 00 04 */	stw r0, 0x4(r21)
/* 8149AD14 | 80 15 00 08 */	lwz r0, 0x8(r21)
/* 8149AD18 | 7C 00 1A 14 */	add r0, r0, r3
/* 8149AD1C | 90 15 00 08 */	stw r0, 0x8(r21)
.L_8149AD20:
/* 8149AD20 | 80 10 03 2C */	lwz r0, 0x32c(r16)
/* 8149AD24 | 7C 03 00 50 */	subf r0, r3, r0
/* 8149AD28 | 90 10 03 2C */	stw r0, 0x32c(r16)
.L_8149AD2C:
/* 8149AD2C | 80 10 03 2C */	lwz r0, 0x32c(r16)
/* 8149AD30 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149AD34 | 41 81 FF 3C */	bgt .L_8149AC70
.L_8149AD38:
/* 8149AD38 | 80 10 03 30 */	lwz r0, 0x330(r16)
/* 8149AD3C | 2C 00 00 06 */	cmpwi r0, 0x6
/* 8149AD40 | 41 82 04 04 */	beq .L_8149B144
/* 8149AD44 | 80 10 03 2C */	lwz r0, 0x32c(r16)
/* 8149AD48 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149AD4C | 41 82 00 28 */	beq .L_8149AD74
/* 8149AD50 | 80 95 00 04 */	lwz r4, 0x4(r21)
/* 8149AD54 | 7E A3 AB 78 */	mr r3, r21
/* 8149AD58 | 4B FF BA 9D */	bl NHTTPi_isRecvBufFull
/* 8149AD5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149AD60 | 38 00 00 0A */	li r0, 0xa
/* 8149AD64 | 41 82 00 08 */	beq .L_8149AD6C
/* 8149AD68 | 38 00 00 06 */	li r0, 0x6
.L_8149AD6C:
/* 8149AD6C | 90 10 03 30 */	stw r0, 0x330(r16)
/* 8149AD70 | 48 00 03 D4 */	b .L_8149B144
.L_8149AD74:
/* 8149AD74 | 38 00 00 00 */	li r0, 0x0
/* 8149AD78 | 90 10 03 30 */	stw r0, 0x330(r16)
/* 8149AD7C | 48 00 03 C8 */	b .L_8149B144
.L_8149AD80:
/* 8149AD80 | 80 10 03 3C */	lwz r0, 0x33c(r16)
/* 8149AD84 | 38 60 00 0A */	li r3, 0xa
/* 8149AD88 | 90 70 03 30 */	stw r3, 0x330(r16)
/* 8149AD8C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149AD90 | 41 82 03 00 */	beq .L_8149B090
/* 8149AD94 | 3B A1 00 0C */	addi r29, r1, 0xc
/* 8149AD98 | 3A E1 00 10 */	addi r23, r1, 0x10
/* 8149AD9C | 3B 00 FF FF */	li r24, -0x1
/* 8149ADA0 | 3B C0 00 06 */	li r30, 0x6
/* 8149ADA4 | 3B E0 02 00 */	li r31, 0x200
/* 8149ADA8 | 3B 80 00 00 */	li r28, 0x0
.L_8149ADAC:
/* 8149ADAC | 9B 81 00 10 */	stb r28, 0x10(r1)
/* 8149ADB0 | 9B 81 00 11 */	stb r28, 0x11(r1)
/* 8149ADB4 | 93 90 03 28 */	stw r28, 0x328(r16)
/* 8149ADB8 | 48 00 01 40 */	b .L_8149AEF8
.L_8149ADBC:
/* 8149ADBC | 80 BB 07 D0 */	lwz r5, 0x7d0(r27)
/* 8149ADC0 | 7E 83 A3 78 */	mr r3, r20
/* 8149ADC4 | 7E C4 B3 78 */	mr r4, r22
/* 8149ADC8 | 7C D2 02 14 */	add r6, r18, r0
/* 8149ADCC | 38 E0 00 01 */	li r7, 0x1
/* 8149ADD0 | 39 00 00 00 */	li r8, 0x0
/* 8149ADD4 | 4B FF CC F1 */	bl NHTTPi_SocRecv
/* 8149ADD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149ADDC | 40 80 00 0C */	bge .L_8149ADE8
/* 8149ADE0 | 38 60 00 00 */	li r3, 0x0
/* 8149ADE4 | 48 00 03 90 */	b .L_8149B174
.L_8149ADE8:
/* 8149ADE8 | 82 30 03 28 */	lwz r17, 0x328(r16)
/* 8149ADEC | 7C 72 88 AE */	lbzx r3, r18, r17
/* 8149ADF0 | 56 24 07 FE */	clrlwi r4, r17, 31
/* 8149ADF4 | 7C 60 07 74 */	extsb r0, r3
/* 8149ADF8 | 7C 77 21 AE */	stbx r3, r23, r4
/* 8149ADFC | 2C 00 00 3B */	cmpwi r0, 0x3b
/* 8149AE00 | 41 82 00 24 */	beq .L_8149AE24
/* 8149AE04 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 8149AE08 | 40 82 00 E4 */	bne .L_8149AEEC
/* 8149AE0C | 38 11 FF FF */	subi r0, r17, 0x1
/* 8149AE10 | 54 00 07 FE */	clrlwi r0, r0, 31
/* 8149AE14 | 7C 17 00 AE */	lbzx r0, r23, r0
/* 8149AE18 | 7C 00 07 74 */	extsb r0, r0
/* 8149AE1C | 2C 00 00 0D */	cmpwi r0, 0xd
/* 8149AE20 | 40 82 00 CC */	bne .L_8149AEEC
.L_8149AE24:
/* 8149AE24 | 7C 60 07 74 */	extsb r0, r3
/* 8149AE28 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 8149AE2C | 40 82 00 0C */	bne .L_8149AE38
/* 8149AE30 | 3A 31 FF FF */	subi r17, r17, 0x1
/* 8149AE34 | 48 00 00 88 */	b .L_8149AEBC
.L_8149AE38:
/* 8149AE38 | 83 5B 07 D0 */	lwz r26, 0x7d0(r27)
/* 8149AE3C | 3B 20 00 00 */	li r25, 0x0
/* 8149AE40 | 3B 00 00 00 */	li r24, 0x0
/* 8149AE44 | 9B 21 00 0C */	stb r25, 0xc(r1)
/* 8149AE48 | 9B 21 00 0D */	stb r25, 0xd(r1)
/* 8149AE4C | 48 00 00 30 */	b .L_8149AE7C
.L_8149AE50:
/* 8149AE50 | 7E 83 A3 78 */	mr r3, r20
/* 8149AE54 | 7E C4 B3 78 */	mr r4, r22
/* 8149AE58 | 7F 45 D3 78 */	mr r5, r26
/* 8149AE5C | 38 E0 00 01 */	li r7, 0x1
/* 8149AE60 | 39 00 00 00 */	li r8, 0x0
/* 8149AE64 | 4B FF CC 61 */	bl NHTTPi_SocRecv
/* 8149AE68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149AE6C | 41 81 00 08 */	bgt .L_8149AE74
/* 8149AE70 | 48 00 00 3C */	b .L_8149AEAC
.L_8149AE74:
/* 8149AE74 | 7F 39 1A 14 */	add r25, r25, r3
/* 8149AE78 | 3B 18 00 01 */	addi r24, r24, 0x1
.L_8149AE7C:
/* 8149AE7C | 57 00 07 FE */	clrlwi r0, r24, 31
/* 8149AE80 | 38 C1 00 0C */	addi r6, r1, 0xc
/* 8149AE84 | 7C 06 00 EE */	lbzux r0, r6, r0
/* 8149AE88 | 2C 00 00 0D */	cmpwi r0, 0xd
/* 8149AE8C | 40 82 FF C4 */	bne .L_8149AE50
/* 8149AE90 | 38 18 FF FF */	subi r0, r24, 0x1
/* 8149AE94 | 54 00 07 FE */	clrlwi r0, r0, 31
/* 8149AE98 | 7C 1D 00 AE */	lbzx r0, r29, r0
/* 8149AE9C | 7C 00 07 74 */	extsb r0, r0
/* 8149AEA0 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 8149AEA4 | 40 82 FF AC */	bne .L_8149AE50
/* 8149AEA8 | 7F 23 CB 78 */	mr r3, r25
.L_8149AEAC:
/* 8149AEAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149AEB0 | 41 81 00 0C */	bgt .L_8149AEBC
/* 8149AEB4 | 38 60 00 00 */	li r3, 0x0
/* 8149AEB8 | 48 00 02 BC */	b .L_8149B174
.L_8149AEBC:
/* 8149AEBC | 2C 11 00 00 */	cmpwi r17, 0x0
/* 8149AEC0 | 40 82 00 0C */	bne .L_8149AECC
/* 8149AEC4 | 38 60 00 00 */	li r3, 0x0
/* 8149AEC8 | 48 00 02 AC */	b .L_8149B174
.L_8149AECC:
/* 8149AECC | 7E 43 93 78 */	mr r3, r18
/* 8149AED0 | 7E 24 8B 78 */	mr r4, r17
/* 8149AED4 | 4B FF D2 41 */	bl NHTTPi_strToHex
/* 8149AED8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149AEDC | 7C 78 1B 78 */	mr r24, r3
/* 8149AEE0 | 40 80 00 24 */	bge .L_8149AF04
/* 8149AEE4 | 38 60 00 00 */	li r3, 0x0
/* 8149AEE8 | 48 00 02 8C */	b .L_8149B174
.L_8149AEEC:
/* 8149AEEC | 80 70 03 28 */	lwz r3, 0x328(r16)
/* 8149AEF0 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8149AEF4 | 90 10 03 28 */	stw r0, 0x328(r16)
.L_8149AEF8:
/* 8149AEF8 | 80 10 03 28 */	lwz r0, 0x328(r16)
/* 8149AEFC | 2C 00 01 00 */	cmpwi r0, 0x100
/* 8149AF00 | 41 80 FE BC */	blt .L_8149ADBC
.L_8149AF04:
/* 8149AF04 | 80 10 03 28 */	lwz r0, 0x328(r16)
/* 8149AF08 | 2C 00 01 00 */	cmpwi r0, 0x100
/* 8149AF0C | 40 82 00 14 */	bne .L_8149AF20
/* 8149AF10 | 38 00 00 07 */	li r0, 0x7
/* 8149AF14 | 38 60 00 00 */	li r3, 0x0
/* 8149AF18 | 90 10 03 30 */	stw r0, 0x330(r16)
/* 8149AF1C | 48 00 02 58 */	b .L_8149B174
.L_8149AF20:
/* 8149AF20 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 8149AF24 | 40 81 00 F4 */	ble .L_8149B018
/* 8149AF28 | 7E 63 9B 78 */	mr r3, r19
/* 8149AF2C | 7F 04 C3 78 */	mr r4, r24
/* 8149AF30 | 48 00 1D 95 */	bl NHTTPi_SetVirtualContentLength
/* 8149AF34 | 48 00 00 D8 */	b .L_8149B00C
.L_8149AF38:
/* 8149AF38 | 80 10 03 30 */	lwz r0, 0x330(r16)
/* 8149AF3C | 2C 00 00 06 */	cmpwi r0, 0x6
/* 8149AF40 | 41 82 00 28 */	beq .L_8149AF68
/* 8149AF44 | 7E 83 A3 78 */	mr r3, r20
/* 8149AF48 | 7E A4 AB 78 */	mr r4, r21
/* 8149AF4C | 4B FF DD 6D */	bl NHTTPi_BufFull
/* 8149AF50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149AF54 | 40 82 00 14 */	bne .L_8149AF68
/* 8149AF58 | 93 D0 03 30 */	stw r30, 0x330(r16)
/* 8149AF5C | 38 10 01 04 */	addi r0, r16, 0x104
/* 8149AF60 | 90 15 00 28 */	stw r0, 0x28(r21)
/* 8149AF64 | 93 F5 00 1C */	stw r31, 0x1c(r21)
.L_8149AF68:
/* 8149AF68 | 80 10 03 30 */	lwz r0, 0x330(r16)
/* 8149AF6C | 2C 00 00 06 */	cmpwi r0, 0x6
/* 8149AF70 | 40 82 00 24 */	bne .L_8149AF94
/* 8149AF74 | 80 BB 07 D0 */	lwz r5, 0x7d0(r27)
/* 8149AF78 | 7E 83 A3 78 */	mr r3, r20
/* 8149AF7C | 7E C4 B3 78 */	mr r4, r22
/* 8149AF80 | 7F 07 C3 78 */	mr r7, r24
/* 8149AF84 | 38 C0 00 00 */	li r6, 0x0
/* 8149AF88 | 39 00 00 00 */	li r8, 0x0
/* 8149AF8C | 4B FF B8 A5 */	bl NHTTPi_RecvBufN
/* 8149AF90 | 48 00 00 20 */	b .L_8149AFB0
.L_8149AF94:
/* 8149AF94 | 80 BB 07 D0 */	lwz r5, 0x7d0(r27)
/* 8149AF98 | 7E 83 A3 78 */	mr r3, r20
/* 8149AF9C | 80 D5 00 04 */	lwz r6, 0x4(r21)
/* 8149AFA0 | 7E C4 B3 78 */	mr r4, r22
/* 8149AFA4 | 7F 07 C3 78 */	mr r7, r24
/* 8149AFA8 | 39 00 00 00 */	li r8, 0x0
/* 8149AFAC | 4B FF B8 85 */	bl NHTTPi_RecvBufN
.L_8149AFB0:
/* 8149AFB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149AFB4 | 41 81 00 0C */	bgt .L_8149AFC0
/* 8149AFB8 | 38 60 00 00 */	li r3, 0x0
/* 8149AFBC | 48 00 01 B8 */	b .L_8149B174
.L_8149AFC0:
/* 8149AFC0 | 80 15 00 04 */	lwz r0, 0x4(r21)
/* 8149AFC4 | 7F 03 C0 51 */	subf. r24, r3, r24
/* 8149AFC8 | 7C 00 1A 14 */	add r0, r0, r3
/* 8149AFCC | 90 15 00 04 */	stw r0, 0x4(r21)
/* 8149AFD0 | 80 15 00 08 */	lwz r0, 0x8(r21)
/* 8149AFD4 | 7C 00 1A 14 */	add r0, r0, r3
/* 8149AFD8 | 90 15 00 08 */	stw r0, 0x8(r21)
/* 8149AFDC | 40 82 00 30 */	bne .L_8149B00C
/* 8149AFE0 | 80 BB 07 D0 */	lwz r5, 0x7d0(r27)
/* 8149AFE4 | 7E 83 A3 78 */	mr r3, r20
/* 8149AFE8 | 7E C4 B3 78 */	mr r4, r22
/* 8149AFEC | 7E 46 93 78 */	mr r6, r18
/* 8149AFF0 | 38 E0 00 02 */	li r7, 0x2
/* 8149AFF4 | 39 00 00 00 */	li r8, 0x0
/* 8149AFF8 | 4B FF CA CD */	bl NHTTPi_SocRecv
/* 8149AFFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149B000 | 41 81 00 0C */	bgt .L_8149B00C
/* 8149B004 | 38 60 00 00 */	li r3, 0x0
/* 8149B008 | 48 00 01 6C */	b .L_8149B174
.L_8149B00C:
/* 8149B00C | 2C 18 00 00 */	cmpwi r24, 0x0
/* 8149B010 | 41 81 FF 28 */	bgt .L_8149AF38
/* 8149B014 | 4B FF FD 98 */	b .L_8149ADAC
.L_8149B018:
/* 8149B018 | 82 5B 07 D0 */	lwz r18, 0x7d0(r27)
/* 8149B01C | 38 00 00 00 */	li r0, 0x0
/* 8149B020 | 3A 21 00 08 */	addi r17, r1, 0x8
/* 8149B024 | 3A 60 00 00 */	li r19, 0x0
/* 8149B028 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 8149B02C | 98 01 00 09 */	stb r0, 0x9(r1)
/* 8149B030 | 48 00 00 28 */	b .L_8149B058
.L_8149B034:
/* 8149B034 | 7E 83 A3 78 */	mr r3, r20
/* 8149B038 | 7E C4 B3 78 */	mr r4, r22
/* 8149B03C | 7E 45 93 78 */	mr r5, r18
/* 8149B040 | 38 E0 00 01 */	li r7, 0x1
/* 8149B044 | 39 00 00 00 */	li r8, 0x0
/* 8149B048 | 4B FF CA 7D */	bl NHTTPi_SocRecv
/* 8149B04C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149B050 | 40 81 00 34 */	ble .L_8149B084
/* 8149B054 | 3A 73 00 01 */	addi r19, r19, 0x1
.L_8149B058:
/* 8149B058 | 56 60 07 FE */	clrlwi r0, r19, 31
/* 8149B05C | 38 C1 00 08 */	addi r6, r1, 0x8
/* 8149B060 | 7C 06 00 EE */	lbzux r0, r6, r0
/* 8149B064 | 2C 00 00 0D */	cmpwi r0, 0xd
/* 8149B068 | 40 82 FF CC */	bne .L_8149B034
/* 8149B06C | 38 13 FF FF */	subi r0, r19, 0x1
/* 8149B070 | 54 00 07 FE */	clrlwi r0, r0, 31
/* 8149B074 | 7C 11 00 AE */	lbzx r0, r17, r0
/* 8149B078 | 7C 00 07 74 */	extsb r0, r0
/* 8149B07C | 2C 00 00 0A */	cmpwi r0, 0xa
/* 8149B080 | 40 82 FF B4 */	bne .L_8149B034
.L_8149B084:
/* 8149B084 | 38 00 00 00 */	li r0, 0x0
/* 8149B088 | 90 10 03 30 */	stw r0, 0x330(r16)
/* 8149B08C | 48 00 00 B8 */	b .L_8149B144
.L_8149B090:
/* 8149B090 | 3A 40 00 06 */	li r18, 0x6
/* 8149B094 | 3A 20 02 00 */	li r17, 0x200
.L_8149B098:
/* 8149B098 | 7E 83 A3 78 */	mr r3, r20
/* 8149B09C | 7E A4 AB 78 */	mr r4, r21
/* 8149B0A0 | 4B FF DC 19 */	bl NHTTPi_BufFull
/* 8149B0A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149B0A8 | 40 82 00 14 */	bne .L_8149B0BC
/* 8149B0AC | 92 50 03 30 */	stw r18, 0x330(r16)
/* 8149B0B0 | 38 10 01 04 */	addi r0, r16, 0x104
/* 8149B0B4 | 90 15 00 28 */	stw r0, 0x28(r21)
/* 8149B0B8 | 92 35 00 1C */	stw r17, 0x1c(r21)
.L_8149B0BC:
/* 8149B0BC | 80 10 03 30 */	lwz r0, 0x330(r16)
/* 8149B0C0 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 8149B0C4 | 40 82 00 20 */	bne .L_8149B0E4
/* 8149B0C8 | 80 BB 07 D0 */	lwz r5, 0x7d0(r27)
/* 8149B0CC | 7E 83 A3 78 */	mr r3, r20
/* 8149B0D0 | 7E C4 B3 78 */	mr r4, r22
/* 8149B0D4 | 38 C0 00 00 */	li r6, 0x0
/* 8149B0D8 | 38 E0 00 00 */	li r7, 0x0
/* 8149B0DC | 4B FF B7 35 */	bl NHTTPi_RecvBuf
/* 8149B0E0 | 48 00 00 1C */	b .L_8149B0FC
.L_8149B0E4:
/* 8149B0E4 | 80 BB 07 D0 */	lwz r5, 0x7d0(r27)
/* 8149B0E8 | 7E 83 A3 78 */	mr r3, r20
/* 8149B0EC | 80 D5 00 04 */	lwz r6, 0x4(r21)
/* 8149B0F0 | 7E C4 B3 78 */	mr r4, r22
/* 8149B0F4 | 38 E0 00 00 */	li r7, 0x0
/* 8149B0F8 | 4B FF B7 19 */	bl NHTTPi_RecvBuf
.L_8149B0FC:
/* 8149B0FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149B100 | 40 80 00 0C */	bge .L_8149B10C
/* 8149B104 | 38 60 00 00 */	li r3, 0x0
/* 8149B108 | 48 00 00 6C */	b .L_8149B174
.L_8149B10C:
/* 8149B10C | 40 82 00 1C */	bne .L_8149B128
/* 8149B110 | 80 10 03 30 */	lwz r0, 0x330(r16)
/* 8149B114 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 8149B118 | 41 82 00 2C */	beq .L_8149B144
/* 8149B11C | 38 00 00 00 */	li r0, 0x0
/* 8149B120 | 90 10 03 30 */	stw r0, 0x330(r16)
/* 8149B124 | 48 00 00 20 */	b .L_8149B144
.L_8149B128:
/* 8149B128 | 80 15 00 04 */	lwz r0, 0x4(r21)
/* 8149B12C | 7C 00 1A 14 */	add r0, r0, r3
/* 8149B130 | 90 15 00 04 */	stw r0, 0x4(r21)
/* 8149B134 | 80 15 00 08 */	lwz r0, 0x8(r21)
/* 8149B138 | 7C 00 1A 14 */	add r0, r0, r3
/* 8149B13C | 90 15 00 08 */	stw r0, 0x8(r21)
/* 8149B140 | 4B FF FF 58 */	b .L_8149B098
.L_8149B144:
/* 8149B144 | 7E 83 A3 78 */	mr r3, r20
/* 8149B148 | 7E A4 AB 78 */	mr r4, r21
/* 8149B14C | 48 00 16 C5 */	bl NHTTPi_Response2Connection
/* 8149B150 | 80 10 03 30 */	lwz r0, 0x330(r16)
/* 8149B154 | 7C 64 1B 78 */	mr r4, r3
/* 8149B158 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149B15C | 40 82 00 14 */	bne .L_8149B170
/* 8149B160 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149B164 | 41 82 00 0C */	beq .L_8149B170
/* 8149B168 | 7E 83 A3 78 */	mr r3, r20
/* 8149B16C | 48 00 19 5D */	bl NHTTPi_ReceivedCallback
.L_8149B170:
/* 8149B170 | 38 60 00 01 */	li r3, 0x1
.L_8149B174:
/* 8149B174 | 39 61 00 60 */	addi r11, r1, 0x60
/* 8149B178 | 48 15 E3 69 */	bl _restgpr_16
/* 8149B17C | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 8149B180 | 7C 08 03 A6 */	mtlr r0
/* 8149B184 | 38 21 00 60 */	addi r1, r1, 0x60
/* 8149B188 | 4E 80 00 20 */	blr
.endfn NHTTPi_ThreadRecvBodyProc

# .text:0x2A18 | 0x8149B18C | size: 0x204
.fn NHTTPi_CommThreadProcMain, global
/* 8149B18C | 94 21 FC A0 */	stwu r1, -0x360(r1)
/* 8149B190 | 7C 08 02 A6 */	mflr r0
/* 8149B194 | 90 01 03 64 */	stw r0, 0x364(r1)
/* 8149B198 | 39 61 03 60 */	addi r11, r1, 0x360
/* 8149B19C | 48 15 E3 25 */	bl _savegpr_27
/* 8149B1A0 | 48 00 1A 99 */	bl NHTTPi_GetSystemInfoP
/* 8149B1A4 | 7C 7C 1B 78 */	mr r28, r3
/* 8149B1A8 | 48 00 1A F9 */	bl NHTTPi_GetBgnEndInfoP
/* 8149B1AC | 7C 7B 1B 78 */	mr r27, r3
/* 8149B1B0 | 7F 83 E3 78 */	mr r3, r28
/* 8149B1B4 | 48 00 1A F9 */	bl NHTTPi_GetReqInfoP
/* 8149B1B8 | 3B A0 FF FF */	li r29, -0x1
/* 8149B1BC | 7C 7C 1B 78 */	mr r28, r3
/* 8149B1C0 | 93 A1 00 08 */	stw r29, 0x8(r1)
/* 8149B1C4 | 38 61 00 0C */	addi r3, r1, 0xc
/* 8149B1C8 | 38 80 01 00 */	li r4, 0x100
/* 8149B1CC | 4B FF CC ED */	bl NHTTPi_memclr
/* 8149B1D0 | 38 61 01 0C */	addi r3, r1, 0x10c
/* 8149B1D4 | 38 80 02 00 */	li r4, 0x200
/* 8149B1D8 | 4B FF CC E1 */	bl NHTTPi_memclr
/* 8149B1DC | 3B C0 00 00 */	li r30, 0x0
/* 8149B1E0 | 93 A1 03 1C */	stw r29, 0x31c(r1)
/* 8149B1E4 | 3B E0 00 01 */	li r31, 0x1
/* 8149B1E8 | 93 A1 03 20 */	stw r29, 0x320(r1)
/* 8149B1EC | 93 C1 03 2C */	stw r30, 0x32c(r1)
/* 8149B1F0 | 93 C1 03 40 */	stw r30, 0x340(r1)
/* 8149B1F4 | 93 C1 03 44 */	stw r30, 0x344(r1)
/* 8149B1F8 | 93 C1 03 3C */	stw r30, 0x33c(r1)
/* 8149B1FC | 93 C1 03 34 */	stw r30, 0x334(r1)
/* 8149B200 | 93 C1 03 38 */	stw r30, 0x338(r1)
/* 8149B204 | 48 00 01 68 */	b .L_8149B36C
.L_8149B208:
/* 8149B208 | 80 01 03 3C */	lwz r0, 0x33c(r1)
/* 8149B20C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149B210 | 40 82 00 50 */	bne .L_8149B260
/* 8149B214 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8149B218 | 4B FF EB 21 */	bl NHTTPi_ThreadExecReqQueue
/* 8149B21C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149B220 | 41 82 01 4C */	beq .L_8149B36C
/* 8149B224 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8149B228 | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 8149B22C | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8149B230 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149B234 | 41 82 00 10 */	beq .L_8149B244
/* 8149B238 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8149B23C | 4B FF E9 7D */	bl NHTTPi_ThreadReqEnd
/* 8149B240 | 48 00 01 2C */	b .L_8149B36C
.L_8149B244:
/* 8149B244 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8149B248 | 4B FF EB A9 */	bl NHTTPi_ThreadHostAddrProc
/* 8149B24C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149B250 | 40 82 00 10 */	bne .L_8149B260
/* 8149B254 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8149B258 | 4B FF E9 61 */	bl NHTTPi_ThreadReqEnd
/* 8149B25C | 48 00 01 10 */	b .L_8149B36C
.L_8149B260:
/* 8149B260 | 80 01 03 3C */	lwz r0, 0x33c(r1)
/* 8149B264 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8149B268 | 40 82 00 08 */	bne .L_8149B270
/* 8149B26C | 93 C1 03 3C */	stw r30, 0x33c(r1)
.L_8149B270:
/* 8149B270 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8149B274 | 4B FF EC D1 */	bl NHTTPi_ThreadConnectProc
/* 8149B278 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149B27C | 40 82 00 10 */	bne .L_8149B28C
/* 8149B280 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8149B284 | 4B FF E9 35 */	bl NHTTPi_ThreadReqEnd
/* 8149B288 | 48 00 00 E4 */	b .L_8149B36C
.L_8149B28C:
/* 8149B28C | 38 61 00 08 */	addi r3, r1, 0x8
/* 8149B290 | 4B FF EE 35 */	bl NHTTPi_ThreadProxyProc
/* 8149B294 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8149B298 | 41 82 00 1C */	beq .L_8149B2B4
/* 8149B29C | 40 80 00 08 */	bge .L_8149B2A4
/* 8149B2A0 | 48 00 00 20 */	b .L_8149B2C0
.L_8149B2A4:
/* 8149B2A4 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 8149B2A8 | 40 80 00 18 */	bge .L_8149B2C0
/* 8149B2AC | 93 E1 03 3C */	stw r31, 0x33c(r1)
/* 8149B2B0 | 48 00 00 BC */	b .L_8149B36C
.L_8149B2B4:
/* 8149B2B4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8149B2B8 | 4B FF E9 01 */	bl NHTTPi_ThreadReqEnd
/* 8149B2BC | 48 00 00 B0 */	b .L_8149B36C
.L_8149B2C0:
/* 8149B2C0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8149B2C4 | 4B FF EF 55 */	bl NHTTPi_ThreadSendProc
/* 8149B2C8 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 8149B2CC | 41 82 00 24 */	beq .L_8149B2F0
/* 8149B2D0 | 40 80 00 14 */	bge .L_8149B2E4
/* 8149B2D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149B2D8 | 41 82 00 2C */	beq .L_8149B304
/* 8149B2DC | 40 80 00 1C */	bge .L_8149B2F8
/* 8149B2E0 | 48 00 00 24 */	b .L_8149B304
.L_8149B2E4:
/* 8149B2E4 | 2C 03 00 04 */	cmpwi r3, 0x4
/* 8149B2E8 | 40 80 00 1C */	bge .L_8149B304
/* 8149B2EC | 48 00 00 0C */	b .L_8149B2F8
.L_8149B2F0:
/* 8149B2F0 | 93 E1 03 3C */	stw r31, 0x33c(r1)
/* 8149B2F4 | 48 00 00 78 */	b .L_8149B36C
.L_8149B2F8:
/* 8149B2F8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8149B2FC | 4B FF E8 BD */	bl NHTTPi_ThreadReqEnd
/* 8149B300 | 48 00 00 6C */	b .L_8149B36C
.L_8149B304:
/* 8149B304 | 80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8149B308 | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 8149B30C | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8149B310 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149B314 | 41 82 00 10 */	beq .L_8149B324
/* 8149B318 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8149B31C | 4B FF E8 9D */	bl NHTTPi_ThreadReqEnd
/* 8149B320 | 48 00 00 4C */	b .L_8149B36C
.L_8149B324:
/* 8149B324 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8149B328 | 4B FF F3 8D */	bl NHTTPi_ThreadRecvHeaderProc
/* 8149B32C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149B330 | 40 82 00 10 */	bne .L_8149B340
/* 8149B334 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8149B338 | 4B FF E8 81 */	bl NHTTPi_ThreadReqEnd
/* 8149B33C | 48 00 00 30 */	b .L_8149B36C
.L_8149B340:
/* 8149B340 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8149B344 | 4B FF F5 5D */	bl NHTTPi_ThreadParseHeaderProc
/* 8149B348 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149B34C | 40 82 00 10 */	bne .L_8149B35C
/* 8149B350 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8149B354 | 4B FF E8 65 */	bl NHTTPi_ThreadReqEnd
/* 8149B358 | 48 00 00 14 */	b .L_8149B36C
.L_8149B35C:
/* 8149B35C | 38 61 00 08 */	addi r3, r1, 0x8
/* 8149B360 | 4B FF F8 3D */	bl NHTTPi_ThreadRecvBodyProc
/* 8149B364 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8149B368 | 4B FF E8 51 */	bl NHTTPi_ThreadReqEnd
.L_8149B36C:
/* 8149B36C | 80 1B 07 DC */	lwz r0, 0x7dc(r27)
/* 8149B370 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149B374 | 41 82 FE 94 */	beq .L_8149B208
/* 8149B378 | 39 61 03 60 */	addi r11, r1, 0x360
/* 8149B37C | 48 15 E1 91 */	bl _restgpr_27
/* 8149B380 | 80 01 03 64 */	lwz r0, 0x364(r1)
/* 8149B384 | 7C 08 03 A6 */	mtlr r0
/* 8149B388 | 38 21 03 60 */	addi r1, r1, 0x360
/* 8149B38C | 4E 80 00 20 */	blr
.endfn NHTTPi_CommThreadProcMain

# 0x81618C70..0x81618D48 | size: 0xD8
.rodata
.balign 8

# .rodata:0x0 | 0x81618C70 | size: 0x27
.obj STR_POST_DISPOS, local
	.string "Content-Disposition: form-data; name=\""
.endobj STR_POST_DISPOS

# .rodata:0x27 | 0x81618C97 | size: 0x4C
.obj STR_POST_TYPE_BIN, local
	.4byte 0x00436F6E
	.4byte 0x74656E74
	.4byte 0x2D547970
	.4byte 0x653A2061
	.4byte 0x70706C69
	.4byte 0x63617469
	.4byte 0x6F6E2F6F
	.4byte 0x63746574
	.4byte 0x2D737472
	.4byte 0x65616D0D
	.4byte 0x0A436F6E
	.4byte 0x74656E74
	.4byte 0x2D547261
	.4byte 0x6E736665
	.4byte 0x722D456E
	.4byte 0x636F6469
	.4byte 0x6E673A20
	.4byte 0x62696E61
	.4byte 0x72790D0A
.endobj STR_POST_TYPE_BIN

# .rodata:0x73 | 0x81618CE3 | size: 0x1
.obj gap_07_81618CE3_rodata, global
.hidden gap_07_81618CE3_rodata
	.byte 0x00
.endobj gap_07_81618CE3_rodata

# .rodata:0x74 | 0x81618CE4 | size: 0x32
.obj STR_POST_TYPE_URLENCODE, local
	.string "Content-Type: application/x-www-form-urlencoded\r\n"
.endobj STR_POST_TYPE_URLENCODE

# .rodata:0xA6 | 0x81618D16 | size: 0x2D
.obj STR_POST_TYPE_MULTIPART, local
	.4byte 0x0000436F
	.4byte 0x6E74656E
	.4byte 0x742D5479
	.4byte 0x70653A20
	.4byte 0x6D756C74
	.4byte 0x69706172
	.4byte 0x742F666F
	.4byte 0x726D2D64
	.4byte 0x6174613B
	.4byte 0x20626F75
	.4byte 0x6E646172
	.byte 0x79
.endobj STR_POST_TYPE_MULTIPART

# .rodata:0xD3 | 0x81618D43 | size: 0x5
.obj gap_07_81618D43_rodata, global
.hidden gap_07_81618D43_rodata
	.4byte 0x3D000000
	.byte 0x00
.endobj gap_07_81618D43_rodata

# 0x8166D1A8..0x8166D270 | size: 0xC8
.data
.balign 8

# .data:0x0 | 0x8166D1A8 | size: 0x5C
.obj lbl_8166D1A8, global
	.4byte 0x434F4E4E
	.4byte 0x45435420
	.4byte 0x00000000
	.4byte 0x20485454
	.4byte 0x502F312E
	.4byte 0x310D0A00
	.4byte 0x436F6E74
	.4byte 0x656E742D
	.4byte 0x4C656E67
	.4byte 0x74683A20
	.4byte 0x300D0A50
	.4byte 0x7261676D
	.4byte 0x613A206E
	.4byte 0x6F2D6361
	.4byte 0x6368650D
	.4byte 0x0A000000
	.4byte 0x50726F78
	.4byte 0x792D4175
	.4byte 0x74686F72
	.4byte 0x697A6174
	.4byte 0x696F6E3A
	.4byte 0x20426173
	.4byte 0x69632000
.endobj lbl_8166D1A8

# .data:0x5C | 0x8166D204 | size: 0x6C
.obj lbl_8166D204, global
	.4byte 0x436F6E74
	.4byte 0x656E742D
	.4byte 0x4C656E67
	.4byte 0x74683A20
	.4byte 0x00000000
	.4byte 0x41757468
	.4byte 0x6F72697A
	.4byte 0x6174696F
	.4byte 0x6E3A2042
	.4byte 0x61736963
	.4byte 0x20000000
	.4byte 0x436F6E74
	.4byte 0x656E742D
	.4byte 0x4C656E67
	.4byte 0x74680000
	.4byte 0x436F6E6E
	.4byte 0x65637469
	.4byte 0x6F6E0000
	.4byte 0x4B656570
	.4byte 0x2D416C69
	.4byte 0x76650000
	.4byte 0x5472616E
	.4byte 0x73666572
	.4byte 0x2D456E63
	.4byte 0x6F64696E
	.4byte 0x67000000
	.4byte 0x00000000
.endobj lbl_8166D204

# 0x81697AD8..0x81697B30 | size: 0x58
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697AD8 | size: 0x4
.obj lbl_81697AD8, global
	.4byte 0x3A000000
.endobj lbl_81697AD8

# .sdata:0x4 | 0x81697ADC | size: 0x8
.obj lbl_81697ADC, global
	.4byte 0x486F7374
	.4byte 0x3A200000
.endobj lbl_81697ADC

# .sdata:0xC | 0x81697AE4 | size: 0x4
.obj lbl_81697AE4, global
	.4byte 0x0D0A0000
.endobj lbl_81697AE4

# .sdata:0x10 | 0x81697AE8 | size: 0x8
.obj lbl_81697AE8, global
	.4byte 0x48545450
	.4byte 0x2F000000
.endobj lbl_81697AE8

# .sdata:0x18 | 0x81697AF0 | size: 0x4
.obj lbl_81697AF0, global
	.4byte 0x3A200000
.endobj lbl_81697AF0

# .sdata:0x1C | 0x81697AF4 | size: 0x4
.obj lbl_81697AF4, global
	.string "\"\r\n"
.endobj lbl_81697AF4

# .sdata:0x20 | 0x81697AF8 | size: 0x8
.obj lbl_81697AF8, global
	.4byte 0x2D2D0D0A
	.4byte 0x00000000
.endobj lbl_81697AF8

# .sdata:0x28 | 0x81697B00 | size: 0x4
.obj lbl_81697B00, global
	.4byte 0x3D000000
.endobj lbl_81697B00

# .sdata:0x2C | 0x81697B04 | size: 0x4
.obj lbl_81697B04, global
	.4byte 0x26000000
.endobj lbl_81697B04

# .sdata:0x30 | 0x81697B08 | size: 0x8
.obj lbl_81697B08, global
	.4byte 0x47455420
	.4byte 0x00000000
.endobj lbl_81697B08

# .sdata:0x38 | 0x81697B10 | size: 0x8
.obj lbl_81697B10, global
	.4byte 0x504F5354
	.4byte 0x20000000
.endobj lbl_81697B10

# .sdata:0x40 | 0x81697B18 | size: 0x8
.obj lbl_81697B18, global
	.4byte 0x48454144
	.4byte 0x20000000
.endobj lbl_81697B18

# .sdata:0x48 | 0x81697B20 | size: 0x8
.obj lbl_81697B20, global
	.4byte 0x2F000000
	.4byte 0x00000000
.endobj lbl_81697B20

# .sdata:0x50 | 0x81697B28 | size: 0x8
.obj lbl_81697B28, global
	.string "chunked"
.endobj lbl_81697B28
