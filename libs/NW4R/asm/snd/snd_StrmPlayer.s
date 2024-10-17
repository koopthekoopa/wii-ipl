.include "macros.inc"
.file "snd_StrmPlayer.cpp"

# 0x81108540..0x8110C580 | size: 0x4040
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x81108540 | size: 0xC
.obj lbl_81108540, global
	.skip 0xC
.endobj lbl_81108540

# .bss:0xC | 0x8110854C | size: 0x14
.obj sPlayerList__Q44nw4r3snd6detail28, global
	.skip 0x14
.endobj sPlayerList__Q44nw4r3snd6detail28

# .bss:0x20 | 0x81108560 | size: 0x4020
# nw4r::snd::detail::StrmPlayer::LoadCommand::mMramBuf
.obj mMramBuf__Q54nw4r3snd6detail10StrmPlayer11LoadCommand, global
	.skip 0x4020
.endobj mMramBuf__Q54nw4r3snd6detail10StrmPlayer11LoadCommand

# 0x8150C8D8..0x8150E7C4 | size: 0x1EEC
.text
.balign 4

# .text:0x0 | 0x8150C8D8 | size: 0xF4
# nw4r::snd::detail::StrmPlayer::StrmPlayer()
.fn __ct__Q44nw4r3snd6detail10StrmPlayerFv, global
/* 8150C8D8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150C8DC | 7C 08 02 A6 */	mflr r0
/* 8150C8E0 | 3D 00 81 67 */	lis r8, __vt__Q44nw4r3snd6detail10StrmPlayer@ha
/* 8150C8E4 | 3C 80 81 51 */	lis r4, __ct__Q54nw4r3snd6detail10StrmPlayer11LoadCommandFv@ha
/* 8150C8E8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8150C8EC | 3C A0 81 51 */	lis r5, __dt__Q54nw4r3snd6detail10StrmPlayer11LoadCommandFv@ha
/* 8150C8F0 | 39 23 00 98 */	addi r9, r3, 0x98
/* 8150C8F4 | 39 43 00 A4 */	addi r10, r3, 0xa4
/* 8150C8F8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8150C8FC | 3B E0 00 00 */	li r31, 0x0
/* 8150C900 | 38 00 FF FF */	li r0, -0x1
/* 8150C904 | 39 08 F9 F8 */	addi r8, r8, __vt__Q44nw4r3snd6detail10StrmPlayer@l
/* 8150C908 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8150C90C | 38 84 C9 CC */	addi r4, r4, __ct__Q54nw4r3snd6detail10StrmPlayer11LoadCommandFv@l
/* 8150C910 | 38 A5 C9 E8 */	addi r5, r5, __dt__Q54nw4r3snd6detail10StrmPlayer11LoadCommandFv@l
/* 8150C914 | 38 C0 00 1C */	li r6, 0x1c
/* 8150C918 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8150C91C | 38 E0 00 20 */	li r7, 0x20
/* 8150C920 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 8150C924 | 7C 7C 1B 78 */	mr r28, r3
/* 8150C928 | 93 E3 00 98 */	stw r31, 0x98(r3)
/* 8150C92C | 93 E3 00 9C */	stw r31, 0x9c(r3)
/* 8150C930 | 93 E3 00 A4 */	stw r31, 0xa4(r3)
/* 8150C934 | 93 E3 00 A8 */	stw r31, 0xa8(r3)
/* 8150C938 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 8150C93C | 91 03 00 00 */	stw r8, 0x0(r3)
/* 8150C940 | 93 E3 00 08 */	stw r31, 0x8(r3)
/* 8150C944 | 93 E3 00 0C */	stw r31, 0xc(r3)
/* 8150C948 | 9B E3 00 48 */	stb r31, 0x48(r3)
/* 8150C94C | 93 E3 00 94 */	stw r31, 0x94(r3)
/* 8150C950 | 91 23 00 98 */	stw r9, 0x98(r3)
/* 8150C954 | 91 23 00 9C */	stw r9, 0x9c(r3)
/* 8150C958 | 93 E3 00 A0 */	stw r31, 0xa0(r3)
/* 8150C95C | 91 43 00 A4 */	stw r10, 0xa4(r3)
/* 8150C960 | 91 43 00 A8 */	stw r10, 0xa8(r3)
/* 8150C964 | 38 63 00 AC */	addi r3, r3, 0xac
/* 8150C968 | 48 0E C8 99 */	bl __construct_array
/* 8150C96C | 93 FC 04 38 */	stw r31, 0x438(r28)
/* 8150C970 | 3B FC 00 98 */	addi r31, r28, 0x98
/* 8150C974 | 3B A0 00 00 */	li r29, 0x0
/* 8150C978 | 3B C0 00 00 */	li r30, 0x0
.L_8150C97C:
/* 8150C97C | 7C BC F2 14 */	add r5, r28, r30
/* 8150C980 | 38 7C 00 94 */	addi r3, r28, 0x94
/* 8150C984 | 93 85 00 B0 */	stw r28, 0xb0(r5)
/* 8150C988 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8150C98C | 38 A5 00 C0 */	addi r5, r5, 0xc0
/* 8150C990 | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 8150C994 | 48 00 5A E1 */	bl fn_81512474
/* 8150C998 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 8150C99C | 3B DE 00 1C */	addi r30, r30, 0x1c
/* 8150C9A0 | 28 1D 00 20 */	cmplwi r29, 0x20
/* 8150C9A4 | 41 80 FF D8 */	blt .L_8150C97C
/* 8150C9A8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8150C9AC | 7F 83 E3 78 */	mr r3, r28
/* 8150C9B0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8150C9B4 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8150C9B8 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 8150C9BC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150C9C0 | 7C 08 03 A6 */	mtlr r0
/* 8150C9C4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150C9C8 | 4E 80 00 20 */	blr
.endfn __ct__Q44nw4r3snd6detail10StrmPlayerFv

# .text:0xF4 | 0x8150C9CC | size: 0x1C
# nw4r::snd::detail::StrmPlayer::LoadCommand::LoadCommand()
.fn __ct__Q54nw4r3snd6detail10StrmPlayer11LoadCommandFv, global
/* 8150C9CC | 3C 80 81 67 */	lis r4, __vt__Q54nw4r3snd6detail10StrmPlayer11LoadCommand@ha
/* 8150C9D0 | 38 00 00 00 */	li r0, 0x0
/* 8150C9D4 | 38 84 FA 90 */	addi r4, r4, __vt__Q54nw4r3snd6detail10StrmPlayer11LoadCommand@l
/* 8150C9D8 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 8150C9DC | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8150C9E0 | 90 03 00 18 */	stw r0, 0x18(r3)
/* 8150C9E4 | 4E 80 00 20 */	blr
.endfn __ct__Q54nw4r3snd6detail10StrmPlayer11LoadCommandFv

# .text:0x110 | 0x8150C9E8 | size: 0x40
# nw4r::snd::detail::StrmPlayer::LoadCommand::~LoadCommand()
.fn __dt__Q54nw4r3snd6detail10StrmPlayer11LoadCommandFv, global
/* 8150C9E8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150C9EC | 7C 08 02 A6 */	mflr r0
/* 8150C9F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150C9F4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150C9F8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150C9FC | 7C 7F 1B 78 */	mr r31, r3
/* 8150CA00 | 41 82 00 10 */	beq .L_8150CA10
/* 8150CA04 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8150CA08 | 40 81 00 08 */	ble .L_8150CA10
/* 8150CA0C | 48 0E B6 D9 */	bl __dl__FPv
.L_8150CA10:
/* 8150CA10 | 7F E3 FB 78 */	mr r3, r31
/* 8150CA14 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8150CA18 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150CA1C | 7C 08 03 A6 */	mtlr r0
/* 8150CA20 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150CA24 | 4E 80 00 20 */	blr
.endfn __dt__Q54nw4r3snd6detail10StrmPlayer11LoadCommandFv

# .text:0x150 | 0x8150CA28 | size: 0xD4
# nw4r::snd::detail::StrmPlayer::Prepare(nw4r::snd::detail::StrmBufferPool*, nw4r::snd::detail::StrmPlayer::StartOffsetType, long, int, nw4r::snd::detail::StrmPlayer::StrmCallback*, unsigned long)
.fn Prepare__Q44nw4r3snd6detail10StrmPlayerFPQ44nw4r3snd6detail14StrmBufferPoolQ54nw4r3snd6detail10StrmPlayer15StartOffsetTypeliPQ54nw4r3snd6detail10StrmPlayer12StrmCallbackUl, global
/* 8150CA28 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8150CA2C | 7C 08 02 A6 */	mflr r0
/* 8150CA30 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8150CA34 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8150CA38 | 48 0E CA 81 */	bl _savegpr_25
/* 8150CA3C | 88 03 00 48 */	lbz r0, 0x48(r3)
/* 8150CA40 | 7C 79 1B 78 */	mr r25, r3
/* 8150CA44 | 7C 9A 23 78 */	mr r26, r4
/* 8150CA48 | 7C BB 2B 78 */	mr r27, r5
/* 8150CA4C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150CA50 | 7C DC 33 78 */	mr r28, r6
/* 8150CA54 | 7C FD 3B 78 */	mr r29, r7
/* 8150CA58 | 7D 1E 43 78 */	mr r30, r8
/* 8150CA5C | 7D 3F 4B 78 */	mr r31, r9
/* 8150CA60 | 41 82 00 08 */	beq .L_8150CA68
/* 8150CA64 | 48 00 18 A5 */	bl ForceStop__Q44nw4r3snd6detail10StrmPlayerFv
.L_8150CA68:
/* 8150CA68 | 7F 23 CB 78 */	mr r3, r25
/* 8150CA6C | 7F A4 EB 78 */	mr r4, r29
/* 8150CA70 | 48 00 10 A9 */	bl InitParam__Q44nw4r3snd6detail10StrmPlayerFi
/* 8150CA74 | 93 79 00 8C */	stw r27, 0x8c(r25)
/* 8150CA78 | 3C 80 81 51 */	lis r4, NotifyStrmHeaderAsyncEndCallback__Q44nw4r3snd6detail10StrmPlayerFbPCQ54nw4r3snd6detail10StrmPlayer10StrmHeaderPv@ha
/* 8150CA7C | 7F C3 F3 78 */	mr r3, r30
/* 8150CA80 | 7F 25 CB 78 */	mr r5, r25
/* 8150CA84 | 93 99 00 90 */	stw r28, 0x90(r25)
/* 8150CA88 | 7F 26 CB 78 */	mr r6, r25
/* 8150CA8C | 7F E7 FB 78 */	mr r7, r31
/* 8150CA90 | 38 84 E4 18 */	addi r4, r4, NotifyStrmHeaderAsyncEndCallback__Q44nw4r3snd6detail10StrmPlayerFbPCQ54nw4r3snd6detail10StrmPlayer10StrmHeaderPv@l
/* 8150CA94 | 93 D9 04 30 */	stw r30, 0x430(r25)
/* 8150CA98 | 93 F9 04 34 */	stw r31, 0x434(r25)
/* 8150CA9C | 93 59 04 2C */	stw r26, 0x42c(r25)
/* 8150CAA0 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 8150CAA4 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8150CAA8 | 7D 89 03 A6 */	mtctr r12
/* 8150CAAC | 4E 80 04 21 */	bctrl
/* 8150CAB0 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 8150CAB4 | 41 82 00 24 */	beq .L_8150CAD8
/* 8150CAB8 | 40 80 00 20 */	bge .L_8150CAD8
/* 8150CABC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150CAC0 | 41 82 00 18 */	beq .L_8150CAD8
/* 8150CAC4 | 40 80 00 0C */	bge .L_8150CAD0
/* 8150CAC8 | 48 00 00 10 */	b .L_8150CAD8
/* 8150CACC | 48 00 00 0C */	b .L_8150CAD8
.L_8150CAD0:
/* 8150CAD0 | 7F 23 CB 78 */	mr r3, r25
/* 8150CAD4 | 48 00 18 35 */	bl ForceStop__Q44nw4r3snd6detail10StrmPlayerFv
.L_8150CAD8:
/* 8150CAD8 | 38 00 00 01 */	li r0, 0x1
/* 8150CADC | 39 61 00 30 */	addi r11, r1, 0x30
/* 8150CAE0 | 98 19 00 48 */	stb r0, 0x48(r25)
/* 8150CAE4 | 38 60 00 01 */	li r3, 0x1
/* 8150CAE8 | 48 0E CA 1D */	bl _restgpr_25
/* 8150CAEC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8150CAF0 | 7C 08 03 A6 */	mtlr r0
/* 8150CAF4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8150CAF8 | 4E 80 00 20 */	blr
.endfn Prepare__Q44nw4r3snd6detail10StrmPlayerFPQ44nw4r3snd6detail14StrmBufferPoolQ54nw4r3snd6detail10StrmPlayer15StartOffsetTypeliPQ54nw4r3snd6detail10StrmPlayer12StrmCallbackUl

# .text:0x224 | 0x8150CAFC | size: 0xF4
# nw4r::snd::detail::StrmPlayer::Start()
.fn Start__Q44nw4r3snd6detail10StrmPlayerFv, global
/* 8150CAFC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150CB00 | 7C 08 02 A6 */	mflr r0
/* 8150CB04 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8150CB08 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8150CB0C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8150CB10 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8150CB14 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 8150CB18 | 7C 7C 1B 78 */	mr r28, r3
/* 8150CB1C | 48 02 3D 69 */	bl OSDisableInterrupts
/* 8150CB20 | 88 1C 00 4A */	lbz r0, 0x4a(r28)
/* 8150CB24 | 7C 7F 1B 78 */	mr r31, r3
/* 8150CB28 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150CB2C | 40 82 00 10 */	bne .L_8150CB3C
/* 8150CB30 | 48 02 3D 7D */	bl OSRestoreInterrupts
/* 8150CB34 | 38 60 00 00 */	li r3, 0x0
/* 8150CB38 | 48 00 00 98 */	b .L_8150CBD0
.L_8150CB3C:
/* 8150CB3C | 88 1C 00 49 */	lbz r0, 0x49(r28)
/* 8150CB40 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150CB44 | 40 82 00 80 */	bne .L_8150CBC4
/* 8150CB48 | 80 7C 04 38 */	lwz r3, 0x438(r28)
/* 8150CB4C | 4B FE C9 1D */	bl Start__Q44nw4r3snd6detail7AxVoiceFv
/* 8150CB50 | 48 02 3D 35 */	bl OSDisableInterrupts
/* 8150CB54 | 88 1C 00 4B */	lbz r0, 0x4b(r28)
/* 8150CB58 | 7C 7E 1B 78 */	mr r30, r3
/* 8150CB5C | 3B A0 00 00 */	li r29, 0x0
/* 8150CB60 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150CB64 | 41 82 00 08 */	beq .L_8150CB6C
/* 8150CB68 | 3B A0 00 01 */	li r29, 0x1
.L_8150CB6C:
/* 8150CB6C | 88 1C 00 4E */	lbz r0, 0x4e(r28)
/* 8150CB70 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150CB74 | 41 82 00 08 */	beq .L_8150CB7C
/* 8150CB78 | 3B A0 00 01 */	li r29, 0x1
.L_8150CB7C:
/* 8150CB7C | 88 1C 00 4D */	lbz r0, 0x4d(r28)
/* 8150CB80 | 7C 1D 00 40 */	cmplw r29, r0
/* 8150CB84 | 41 82 00 14 */	beq .L_8150CB98
/* 8150CB88 | 80 7C 04 38 */	lwz r3, 0x438(r28)
/* 8150CB8C | 7F A4 EB 78 */	mr r4, r29
/* 8150CB90 | 4B FE CA 15 */	bl Pause__Q44nw4r3snd6detail7AxVoiceFb
/* 8150CB94 | 9B BC 00 4D */	stb r29, 0x4d(r28)
.L_8150CB98:
/* 8150CB98 | 7F C3 F3 78 */	mr r3, r30
/* 8150CB9C | 48 02 3D 11 */	bl OSRestoreInterrupts
/* 8150CBA0 | 3C 60 81 11 */	lis r3, sPlayerList__Q44nw4r3snd6detail28@ha
/* 8150CBA4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8150CBA8 | 38 63 85 4C */	addi r3, r3, sPlayerList__Q44nw4r3snd6detail28@l
/* 8150CBAC | 38 BC 00 08 */	addi r5, r28, 0x8
/* 8150CBB0 | 38 03 00 04 */	addi r0, r3, 0x4
/* 8150CBB4 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8150CBB8 | 48 00 58 BD */	bl fn_81512474
/* 8150CBBC | 38 00 00 01 */	li r0, 0x1
/* 8150CBC0 | 98 1C 00 49 */	stb r0, 0x49(r28)
.L_8150CBC4:
/* 8150CBC4 | 7F E3 FB 78 */	mr r3, r31
/* 8150CBC8 | 48 02 3C E5 */	bl OSRestoreInterrupts
/* 8150CBCC | 38 60 00 01 */	li r3, 0x1
.L_8150CBD0:
/* 8150CBD0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150CBD4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8150CBD8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8150CBDC | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8150CBE0 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 8150CBE4 | 7C 08 03 A6 */	mtlr r0
/* 8150CBE8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150CBEC | 4E 80 00 20 */	blr
.endfn Start__Q44nw4r3snd6detail10StrmPlayerFv

# .text:0x318 | 0x8150CBF0 | size: 0x14
# nw4r::snd::detail::StrmPlayer::Stop()
.fn Stop__Q44nw4r3snd6detail10StrmPlayerFv, global
/* 8150CBF0 | 88 03 00 48 */	lbz r0, 0x48(r3)
/* 8150CBF4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150CBF8 | 4D 82 00 20 */	beqlr
/* 8150CBFC | 48 00 17 0C */	b ForceStop__Q44nw4r3snd6detail10StrmPlayerFv
/* 8150CC00 | 4E 80 00 20 */	blr
.endfn Stop__Q44nw4r3snd6detail10StrmPlayerFv

# .text:0x32C | 0x8150CC04 | size: 0xA8
# nw4r::snd::detail::StrmPlayer::Pause(bool)
.fn Pause__Q44nw4r3snd6detail10StrmPlayerFb, global
/* 8150CC04 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150CC08 | 7C 08 02 A6 */	mflr r0
/* 8150CC0C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8150CC10 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8150CC14 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8150CC18 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8150CC1C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8150CC20 | 7C 7D 1B 78 */	mr r29, r3
/* 8150CC24 | 98 83 00 4B */	stb r4, 0x4b(r3)
/* 8150CC28 | 41 82 00 0C */	beq .L_8150CC34
/* 8150CC2C | 38 00 00 01 */	li r0, 0x1
/* 8150CC30 | 98 03 00 4E */	stb r0, 0x4e(r3)
.L_8150CC34:
/* 8150CC34 | 88 03 00 49 */	lbz r0, 0x49(r3)
/* 8150CC38 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150CC3C | 41 82 00 54 */	beq .L_8150CC90
/* 8150CC40 | 48 02 3C 45 */	bl OSDisableInterrupts
/* 8150CC44 | 88 1D 00 4B */	lbz r0, 0x4b(r29)
/* 8150CC48 | 7C 7F 1B 78 */	mr r31, r3
/* 8150CC4C | 3B C0 00 00 */	li r30, 0x0
/* 8150CC50 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150CC54 | 41 82 00 08 */	beq .L_8150CC5C
/* 8150CC58 | 3B C0 00 01 */	li r30, 0x1
.L_8150CC5C:
/* 8150CC5C | 88 1D 00 4E */	lbz r0, 0x4e(r29)
/* 8150CC60 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150CC64 | 41 82 00 08 */	beq .L_8150CC6C
/* 8150CC68 | 3B C0 00 01 */	li r30, 0x1
.L_8150CC6C:
/* 8150CC6C | 88 1D 00 4D */	lbz r0, 0x4d(r29)
/* 8150CC70 | 7C 1E 00 40 */	cmplw r30, r0
/* 8150CC74 | 41 82 00 14 */	beq .L_8150CC88
/* 8150CC78 | 80 7D 04 38 */	lwz r3, 0x438(r29)
/* 8150CC7C | 7F C4 F3 78 */	mr r4, r30
/* 8150CC80 | 4B FE C9 25 */	bl Pause__Q44nw4r3snd6detail7AxVoiceFb
/* 8150CC84 | 9B DD 00 4D */	stb r30, 0x4d(r29)
.L_8150CC88:
/* 8150CC88 | 7F E3 FB 78 */	mr r3, r31
/* 8150CC8C | 48 02 3C 21 */	bl OSRestoreInterrupts
.L_8150CC90:
/* 8150CC90 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150CC94 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8150CC98 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8150CC9C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8150CCA0 | 7C 08 03 A6 */	mtlr r0
/* 8150CCA4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150CCA8 | 4E 80 00 20 */	blr
.endfn Pause__Q44nw4r3snd6detail10StrmPlayerFb

# .text:0x3D4 | 0x8150CCAC | size: 0x248
# nw4r::snd::detail::StrmPlayer::UpdateBuffer()
.fn UpdateBuffer__Q44nw4r3snd6detail10StrmPlayerFv, global
/* 8150CCAC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150CCB0 | 7C 08 02 A6 */	mflr r0
/* 8150CCB4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8150CCB8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8150CCBC | 7C 7F 1B 78 */	mr r31, r3
/* 8150CCC0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8150CCC4 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8150CCC8 | 88 03 00 49 */	lbz r0, 0x49(r3)
/* 8150CCCC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150CCD0 | 41 82 02 08 */	beq .L_8150CED8
/* 8150CCD4 | 80 03 04 38 */	lwz r0, 0x438(r3)
/* 8150CCD8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150CCDC | 41 82 01 FC */	beq .L_8150CED8
/* 8150CCE0 | 48 04 10 49 */	bl fn_8154DD28
/* 8150CCE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150CCE8 | 40 82 00 60 */	bne .L_8150CD48
/* 8150CCEC | 38 00 00 00 */	li r0, 0x0
/* 8150CCF0 | 98 1F 00 4C */	stb r0, 0x4c(r31)
/* 8150CCF4 | 48 02 3B 91 */	bl OSDisableInterrupts
/* 8150CCF8 | 88 1F 00 4B */	lbz r0, 0x4b(r31)
/* 8150CCFC | 7C 7E 1B 78 */	mr r30, r3
/* 8150CD00 | 3B A0 00 00 */	li r29, 0x0
/* 8150CD04 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150CD08 | 41 82 00 08 */	beq .L_8150CD10
/* 8150CD0C | 3B A0 00 01 */	li r29, 0x1
.L_8150CD10:
/* 8150CD10 | 88 1F 00 4E */	lbz r0, 0x4e(r31)
/* 8150CD14 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150CD18 | 41 82 00 08 */	beq .L_8150CD20
/* 8150CD1C | 3B A0 00 01 */	li r29, 0x1
.L_8150CD20:
/* 8150CD20 | 88 1F 00 4D */	lbz r0, 0x4d(r31)
/* 8150CD24 | 7C 1D 00 40 */	cmplw r29, r0
/* 8150CD28 | 41 82 00 14 */	beq .L_8150CD3C
/* 8150CD2C | 80 7F 04 38 */	lwz r3, 0x438(r31)
/* 8150CD30 | 7F A4 EB 78 */	mr r4, r29
/* 8150CD34 | 4B FE C8 71 */	bl Pause__Q44nw4r3snd6detail7AxVoiceFb
/* 8150CD38 | 9B BF 00 4D */	stb r29, 0x4d(r31)
.L_8150CD3C:
/* 8150CD3C | 7F C3 F3 78 */	mr r3, r30
/* 8150CD40 | 48 02 3B 6D */	bl OSRestoreInterrupts
/* 8150CD44 | 48 00 00 68 */	b .L_8150CDAC
.L_8150CD48:
/* 8150CD48 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8150CD4C | 41 82 00 60 */	beq .L_8150CDAC
/* 8150CD50 | 38 00 00 01 */	li r0, 0x1
/* 8150CD54 | 98 1F 00 4C */	stb r0, 0x4c(r31)
/* 8150CD58 | 98 1F 00 4E */	stb r0, 0x4e(r31)
/* 8150CD5C | 48 02 3B 29 */	bl OSDisableInterrupts
/* 8150CD60 | 88 1F 00 4B */	lbz r0, 0x4b(r31)
/* 8150CD64 | 7C 7E 1B 78 */	mr r30, r3
/* 8150CD68 | 3B A0 00 00 */	li r29, 0x0
/* 8150CD6C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150CD70 | 41 82 00 08 */	beq .L_8150CD78
/* 8150CD74 | 3B A0 00 01 */	li r29, 0x1
.L_8150CD78:
/* 8150CD78 | 88 1F 00 4E */	lbz r0, 0x4e(r31)
/* 8150CD7C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150CD80 | 41 82 00 08 */	beq .L_8150CD88
/* 8150CD84 | 3B A0 00 01 */	li r29, 0x1
.L_8150CD88:
/* 8150CD88 | 88 1F 00 4D */	lbz r0, 0x4d(r31)
/* 8150CD8C | 7C 1D 00 40 */	cmplw r29, r0
/* 8150CD90 | 41 82 00 14 */	beq .L_8150CDA4
/* 8150CD94 | 80 7F 04 38 */	lwz r3, 0x438(r31)
/* 8150CD98 | 7F A4 EB 78 */	mr r4, r29
/* 8150CD9C | 4B FE C8 09 */	bl Pause__Q44nw4r3snd6detail7AxVoiceFb
/* 8150CDA0 | 9B BF 00 4D */	stb r29, 0x4d(r31)
.L_8150CDA4:
/* 8150CDA4 | 7F C3 F3 78 */	mr r3, r30
/* 8150CDA8 | 48 02 3B 05 */	bl OSRestoreInterrupts
.L_8150CDAC:
/* 8150CDAC | 88 1F 00 4E */	lbz r0, 0x4e(r31)
/* 8150CDB0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150CDB4 | 40 82 00 74 */	bne .L_8150CE28
/* 8150CDB8 | 80 7F 00 68 */	lwz r3, 0x68(r31)
/* 8150CDBC | 80 9F 00 A0 */	lwz r4, 0xa0(r31)
/* 8150CDC0 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8150CDC4 | 7C 04 00 40 */	cmplw r4, r0
/* 8150CDC8 | 41 80 00 C4 */	blt .L_8150CE8C
/* 8150CDCC | 38 00 00 01 */	li r0, 0x1
/* 8150CDD0 | 98 1F 00 4E */	stb r0, 0x4e(r31)
/* 8150CDD4 | 48 02 3A B1 */	bl OSDisableInterrupts
/* 8150CDD8 | 88 1F 00 4B */	lbz r0, 0x4b(r31)
/* 8150CDDC | 7C 7E 1B 78 */	mr r30, r3
/* 8150CDE0 | 3B A0 00 00 */	li r29, 0x0
/* 8150CDE4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150CDE8 | 41 82 00 08 */	beq .L_8150CDF0
/* 8150CDEC | 3B A0 00 01 */	li r29, 0x1
.L_8150CDF0:
/* 8150CDF0 | 88 1F 00 4E */	lbz r0, 0x4e(r31)
/* 8150CDF4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150CDF8 | 41 82 00 08 */	beq .L_8150CE00
/* 8150CDFC | 3B A0 00 01 */	li r29, 0x1
.L_8150CE00:
/* 8150CE00 | 88 1F 00 4D */	lbz r0, 0x4d(r31)
/* 8150CE04 | 7C 1D 00 40 */	cmplw r29, r0
/* 8150CE08 | 41 82 00 14 */	beq .L_8150CE1C
/* 8150CE0C | 80 7F 04 38 */	lwz r3, 0x438(r31)
/* 8150CE10 | 7F A4 EB 78 */	mr r4, r29
/* 8150CE14 | 4B FE C7 91 */	bl Pause__Q44nw4r3snd6detail7AxVoiceFb
/* 8150CE18 | 9B BF 00 4D */	stb r29, 0x4d(r31)
.L_8150CE1C:
/* 8150CE1C | 7F C3 F3 78 */	mr r3, r30
/* 8150CE20 | 48 02 3A 8D */	bl OSRestoreInterrupts
/* 8150CE24 | 48 00 00 68 */	b .L_8150CE8C
.L_8150CE28:
/* 8150CE28 | 80 1F 00 A0 */	lwz r0, 0xa0(r31)
/* 8150CE2C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150CE30 | 40 82 00 5C */	bne .L_8150CE8C
/* 8150CE34 | 38 00 00 00 */	li r0, 0x0
/* 8150CE38 | 98 1F 00 4E */	stb r0, 0x4e(r31)
/* 8150CE3C | 48 02 3A 49 */	bl OSDisableInterrupts
/* 8150CE40 | 88 1F 00 4B */	lbz r0, 0x4b(r31)
/* 8150CE44 | 7C 7E 1B 78 */	mr r30, r3
/* 8150CE48 | 3B A0 00 00 */	li r29, 0x0
/* 8150CE4C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150CE50 | 41 82 00 08 */	beq .L_8150CE58
/* 8150CE54 | 3B A0 00 01 */	li r29, 0x1
.L_8150CE58:
/* 8150CE58 | 88 1F 00 4E */	lbz r0, 0x4e(r31)
/* 8150CE5C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150CE60 | 41 82 00 08 */	beq .L_8150CE68
/* 8150CE64 | 3B A0 00 01 */	li r29, 0x1
.L_8150CE68:
/* 8150CE68 | 88 1F 00 4D */	lbz r0, 0x4d(r31)
/* 8150CE6C | 7C 1D 00 40 */	cmplw r29, r0
/* 8150CE70 | 41 82 00 14 */	beq .L_8150CE84
/* 8150CE74 | 80 7F 04 38 */	lwz r3, 0x438(r31)
/* 8150CE78 | 7F A4 EB 78 */	mr r4, r29
/* 8150CE7C | 4B FE C7 29 */	bl Pause__Q44nw4r3snd6detail7AxVoiceFb
/* 8150CE80 | 9B BF 00 4D */	stb r29, 0x4d(r31)
.L_8150CE84:
/* 8150CE84 | 7F C3 F3 78 */	mr r3, r30
/* 8150CE88 | 48 02 3A 25 */	bl OSRestoreInterrupts
.L_8150CE8C:
/* 8150CE8C | 88 1F 00 52 */	lbz r0, 0x52(r31)
/* 8150CE90 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150CE94 | 40 82 00 44 */	bne .L_8150CED8
/* 8150CE98 | 88 1F 00 4F */	lbz r0, 0x4f(r31)
/* 8150CE9C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150CEA0 | 40 82 00 38 */	bne .L_8150CED8
/* 8150CEA4 | 80 7F 04 38 */	lwz r3, 0x438(r31)
/* 8150CEA8 | 4B FE CD D1 */	bl GetCurrentPlayingSample__Q44nw4r3snd6detail7AxVoiceCFv
/* 8150CEAC | 80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8150CEB0 | 7F A3 03 96 */	divwu r29, r3, r0
/* 8150CEB4 | 48 00 00 18 */	b .L_8150CECC
.L_8150CEB8:
/* 8150CEB8 | 7F E3 FB 78 */	mr r3, r31
/* 8150CEBC | 48 00 02 FD */	bl UpdatePlayingBlockIndex__Q44nw4r3snd6detail10StrmPlayerFv
/* 8150CEC0 | 7F E3 FB 78 */	mr r3, r31
/* 8150CEC4 | 38 80 00 01 */	li r4, 0x1
/* 8150CEC8 | 48 00 06 A9 */	bl UpdateLoadingBlockIndex__Q44nw4r3snd6detail10StrmPlayerFQ64nw4r3snd6detail10StrmPlayer11LoadCommand6Status
.L_8150CECC:
/* 8150CECC | 80 1F 00 7C */	lwz r0, 0x7c(r31)
/* 8150CED0 | 7C 00 E8 00 */	cmpw r0, r29
/* 8150CED4 | 40 82 FF E4 */	bne .L_8150CEB8
.L_8150CED8:
/* 8150CED8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150CEDC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8150CEE0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8150CEE4 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8150CEE8 | 7C 08 03 A6 */	mtlr r0
/* 8150CEEC | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150CEF0 | 4E 80 00 20 */	blr
.endfn UpdateBuffer__Q44nw4r3snd6detail10StrmPlayerFv

# .text:0x61C | 0x8150CEF4 | size: 0x2C4
# nw4r::snd::detail::StrmPlayer::Update()
.fn Update__Q44nw4r3snd6detail10StrmPlayerFv, global
/* 8150CEF4 | 94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8150CEF8 | 7C 08 02 A6 */	mflr r0
/* 8150CEFC | 90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8150CF00 | DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 8150CF04 | F3 E1 00 B8 */	psq_st f31, 0xb8(r1), 0, qr0
/* 8150CF08 | DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 8150CF0C | F3 C1 00 A8 */	psq_st f30, 0xa8(r1), 0, qr0
/* 8150CF10 | DB A1 00 90 */	stfd f29, 0x90(r1)
/* 8150CF14 | F3 A1 00 98 */	psq_st f29, 0x98(r1), 0, qr0
/* 8150CF18 | DB 81 00 80 */	stfd f28, 0x80(r1)
/* 8150CF1C | F3 81 00 88 */	psq_st f28, 0x88(r1), 0, qr0
/* 8150CF20 | DB 61 00 70 */	stfd f27, 0x70(r1)
/* 8150CF24 | F3 61 00 78 */	psq_st f27, 0x78(r1), 0, qr0
/* 8150CF28 | DB 41 00 60 */	stfd f26, 0x60(r1)
/* 8150CF2C | F3 41 00 68 */	psq_st f26, 0x68(r1), 0, qr0
/* 8150CF30 | DB 21 00 50 */	stfd f25, 0x50(r1)
/* 8150CF34 | F3 21 00 58 */	psq_st f25, 0x58(r1), 0, qr0
/* 8150CF38 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8150CF3C | 48 0E C5 85 */	bl _savegpr_27
/* 8150CF40 | 88 03 00 49 */	lbz r0, 0x49(r3)
/* 8150CF44 | 7C 7B 1B 78 */	mr r27, r3
/* 8150CF48 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150CF4C | 41 82 02 1C */	beq .L_8150D168
/* 8150CF50 | 80 03 04 38 */	lwz r0, 0x438(r3)
/* 8150CF54 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150CF58 | 40 82 00 0C */	bne .L_8150CF64
/* 8150CF5C | 48 00 13 AD */	bl ForceStop__Q44nw4r3snd6detail10StrmPlayerFv
/* 8150CF60 | 48 00 02 08 */	b .L_8150D168
.L_8150CF64:
/* 8150CF64 | 48 02 39 21 */	bl OSDisableInterrupts
/* 8150CF68 | C1 02 8F A4 */	lfs f8, lbl_816953A4@sda21(r0)
/* 8150CF6C | 7C 7F 1B 78 */	mr r31, r3
/* 8150CF70 | C0 3B 04 64 */	lfs f1, 0x464(r27)
/* 8150CF74 | C0 5B 04 68 */	lfs f2, 0x468(r27)
/* 8150CF78 | FF C0 40 90 */	fmr f30, f8
/* 8150CF7C | EC E8 08 2A */	fadds f7, f8, f1
/* 8150CF80 | C0 3B 04 80 */	lfs f1, 0x480(r27)
/* 8150CF84 | C0 7B 04 6C */	lfs f3, 0x46c(r27)
/* 8150CF88 | EC C8 10 2A */	fadds f6, f8, f2
/* 8150CF8C | EC 88 08 2A */	fadds f4, f8, f1
/* 8150CF90 | C0 5B 04 84 */	lfs f2, 0x484(r27)
/* 8150CF94 | EC A8 18 2A */	fadds f5, f8, f3
/* 8150CF98 | C0 3B 04 88 */	lfs f1, 0x488(r27)
/* 8150CF9C | EC 68 10 2A */	fadds f3, f8, f2
/* 8150CFA0 | C1 3B 04 3C */	lfs f9, 0x43c(r27)
/* 8150CFA4 | EC 48 08 2A */	fadds f2, f8, f1
/* 8150CFA8 | C0 22 8F A0 */	lfs f1, lbl_816953A0@sda21(r0)
/* 8150CFAC | EC 21 02 72 */	fmuls f1, f1, f9
/* 8150CFB0 | C1 3B 04 40 */	lfs f9, 0x440(r27)
/* 8150CFB4 | C0 1B 04 8C */	lfs f0, 0x48c(r27)
/* 8150CFB8 | FF A0 40 90 */	fmr f29, f8
/* 8150CFBC | EF DE 48 2A */	fadds f30, f30, f9
/* 8150CFC0 | C1 3B 04 44 */	lfs f9, 0x444(r27)
/* 8150CFC4 | EC 08 00 2A */	fadds f0, f8, f0
/* 8150CFC8 | D1 01 00 28 */	stfs f8, 0x28(r1)
/* 8150CFCC | EF BD 48 2A */	fadds f29, f29, f9
/* 8150CFD0 | C1 3B 04 48 */	lfs f9, 0x448(r27)
/* 8150CFD4 | FF 80 40 90 */	fmr f28, f8
/* 8150CFD8 | D1 01 00 2C */	stfs f8, 0x2c(r1)
/* 8150CFDC | D1 01 00 30 */	stfs f8, 0x30(r1)
/* 8150CFE0 | FF 60 40 90 */	fmr f27, f8
/* 8150CFE4 | EF 9C 48 2A */	fadds f28, f28, f9
/* 8150CFE8 | C3 E2 8F A0 */	lfs f31, lbl_816953A0@sda21(r0)
/* 8150CFEC | D1 01 00 18 */	stfs f8, 0x18(r1)
/* 8150CFF0 | C1 5B 04 50 */	lfs f10, 0x450(r27)
/* 8150CFF4 | D1 01 00 1C */	stfs f8, 0x1c(r1)
/* 8150CFF8 | C3 42 8F A0 */	lfs f26, lbl_816953A0@sda21(r0)
/* 8150CFFC | EF FF 02 B2 */	fmuls f31, f31, f10
/* 8150D000 | D1 01 00 20 */	stfs f8, 0x20(r1)
/* 8150D004 | C1 3B 04 54 */	lfs f9, 0x454(r27)
/* 8150D008 | D1 01 00 24 */	stfs f8, 0x24(r1)
/* 8150D00C | C1 1B 04 4C */	lfs f8, 0x44c(r27)
/* 8150D010 | EF 5A 48 2A */	fadds f26, f26, f9
/* 8150D014 | C3 22 8F A4 */	lfs f25, lbl_816953A4@sda21(r0)
/* 8150D018 | EF 7B 40 2A */	fadds f27, f27, f8
/* 8150D01C | C1 1B 04 60 */	lfs f8, 0x460(r27)
/* 8150D020 | D0 E1 00 28 */	stfs f7, 0x28(r1)
/* 8150D024 | EF 39 40 2A */	fadds f25, f25, f8
/* 8150D028 | 80 7B 04 38 */	lwz r3, 0x438(r27)
/* 8150D02C | D0 C1 00 2C */	stfs f6, 0x2c(r1)
/* 8150D030 | D0 A1 00 30 */	stfs f5, 0x30(r1)
/* 8150D034 | D0 81 00 18 */	stfs f4, 0x18(r1)
/* 8150D038 | D0 81 00 08 */	stfs f4, 0x8(r1)
/* 8150D03C | D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 8150D040 | D0 61 00 0C */	stfs f3, 0xc(r1)
/* 8150D044 | D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8150D048 | D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8150D04C | D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8150D050 | D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8150D054 | 4B FE C5 B1 */	bl SetVolume__Q44nw4r3snd6detail7AxVoiceFf
/* 8150D058 | FC 20 F8 90 */	fmr f1, f31
/* 8150D05C | 80 7B 04 38 */	lwz r3, 0x438(r27)
/* 8150D060 | 4B FE C6 B1 */	bl SetPitch__Q44nw4r3snd6detail7AxVoiceFf
/* 8150D064 | FC 20 F0 90 */	fmr f1, f30
/* 8150D068 | 80 7B 04 38 */	lwz r3, 0x438(r27)
/* 8150D06C | 4B FE C6 C5 */	bl SetPan__Q44nw4r3snd6detail7AxVoiceFf
/* 8150D070 | FC 20 E8 90 */	fmr f1, f29
/* 8150D074 | 80 7B 04 38 */	lwz r3, 0x438(r27)
/* 8150D078 | 4B FE C6 FD */	bl SetSurroundPan__Q44nw4r3snd6detail7AxVoiceFf
/* 8150D07C | FC 20 E0 90 */	fmr f1, f28
/* 8150D080 | 80 7B 04 38 */	lwz r3, 0x438(r27)
/* 8150D084 | 4B FE C7 35 */	bl SetPan2__Q44nw4r3snd6detail7AxVoiceFf
/* 8150D088 | FC 20 D8 90 */	fmr f1, f27
/* 8150D08C | 80 7B 04 38 */	lwz r3, 0x438(r27)
/* 8150D090 | 4B FE C7 49 */	bl SetSurroundPan2__Q44nw4r3snd6detail7AxVoiceFf
/* 8150D094 | FC 20 D0 90 */	fmr f1, f26
/* 8150D098 | 80 7B 04 38 */	lwz r3, 0x438(r27)
/* 8150D09C | 4B FE C7 81 */	bl SetLpfFreq__Q44nw4r3snd6detail7AxVoiceFf
/* 8150D0A0 | 80 7B 04 38 */	lwz r3, 0x438(r27)
/* 8150D0A4 | 80 9B 04 58 */	lwz r4, 0x458(r27)
/* 8150D0A8 | 4B FE C7 B9 */	bl SetOutputLine__Q44nw4r3snd6detail7AxVoiceFi
/* 8150D0AC | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 8150D0B0 | 7F 63 DB 78 */	mr r3, r27
/* 8150D0B4 | 81 8C 00 80 */	lwz r12, 0x80(r12)
/* 8150D0B8 | 7D 89 03 A6 */	mtctr r12
/* 8150D0BC | 4E 80 04 21 */	bctrl
/* 8150D0C0 | 80 7B 04 38 */	lwz r3, 0x438(r27)
/* 8150D0C4 | 4B FE C7 BD */	bl SetMainOutVolume__Q44nw4r3snd6detail7AxVoiceFf
/* 8150D0C8 | FC 20 C8 90 */	fmr f1, f25
/* 8150D0CC | 80 7B 04 38 */	lwz r3, 0x438(r27)
/* 8150D0D0 | 4B FE C8 41 */	bl SetMainSend__Q44nw4r3snd6detail7AxVoiceFf
/* 8150D0D4 | 3B A1 00 28 */	addi r29, r1, 0x28
/* 8150D0D8 | 3B C0 00 00 */	li r30, 0x0
.L_8150D0DC:
/* 8150D0DC | 80 7B 04 38 */	lwz r3, 0x438(r27)
/* 8150D0E0 | 7F C4 F3 78 */	mr r4, r30
/* 8150D0E4 | C0 3D 00 00 */	lfs f1, 0x0(r29)
/* 8150D0E8 | 4B FE C8 71 */	bl SetFxSend__Q44nw4r3snd6detail7AxVoiceFQ34nw4r3snd6AuxBusf
/* 8150D0EC | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8150D0F0 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 8150D0F4 | 2C 1E 00 03 */	cmpwi r30, 0x3
/* 8150D0F8 | 41 80 FF E4 */	blt .L_8150D0DC
/* 8150D0FC | 3B C1 00 18 */	addi r30, r1, 0x18
/* 8150D100 | 3B A1 00 08 */	addi r29, r1, 0x8
/* 8150D104 | 3B 80 00 00 */	li r28, 0x0
.L_8150D108:
/* 8150D108 | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 8150D10C | 7F 63 DB 78 */	mr r3, r27
/* 8150D110 | 7F 84 E3 78 */	mr r4, r28
/* 8150D114 | 81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 8150D118 | 7D 89 03 A6 */	mtctr r12
/* 8150D11C | 4E 80 04 21 */	bctrl
/* 8150D120 | 80 7B 04 38 */	lwz r3, 0x438(r27)
/* 8150D124 | 7F 84 E3 78 */	mr r4, r28
/* 8150D128 | 4B FE C7 9D */	bl SetRemoteOutVolume__Q44nw4r3snd6detail7AxVoiceFif
/* 8150D12C | 80 7B 04 38 */	lwz r3, 0x438(r27)
/* 8150D130 | 7F 84 E3 78 */	mr r4, r28
/* 8150D134 | C0 3E 00 00 */	lfs f1, 0x0(r30)
/* 8150D138 | 4B FE C8 6D */	bl SetRemoteSend__Q44nw4r3snd6detail7AxVoiceFif
/* 8150D13C | 80 7B 04 38 */	lwz r3, 0x438(r27)
/* 8150D140 | 7F 84 E3 78 */	mr r4, r28
/* 8150D144 | C0 3D 00 00 */	lfs f1, 0x0(r29)
/* 8150D148 | 4B FE C8 AD */	bl SetRemoteFxSend__Q44nw4r3snd6detail7AxVoiceFif
/* 8150D14C | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 8150D150 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 8150D154 | 2C 1C 00 04 */	cmpwi r28, 0x4
/* 8150D158 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 8150D15C | 41 80 FF AC */	blt .L_8150D108
/* 8150D160 | 7F E3 FB 78 */	mr r3, r31
/* 8150D164 | 48 02 37 49 */	bl OSRestoreInterrupts
.L_8150D168:
/* 8150D168 | E3 E1 00 B8 */	psq_l f31, 0xb8(r1), 0, qr0
/* 8150D16C | CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 8150D170 | E3 C1 00 A8 */	psq_l f30, 0xa8(r1), 0, qr0
/* 8150D174 | CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 8150D178 | E3 A1 00 98 */	psq_l f29, 0x98(r1), 0, qr0
/* 8150D17C | CB A1 00 90 */	lfd f29, 0x90(r1)
/* 8150D180 | E3 81 00 88 */	psq_l f28, 0x88(r1), 0, qr0
/* 8150D184 | CB 81 00 80 */	lfd f28, 0x80(r1)
/* 8150D188 | E3 61 00 78 */	psq_l f27, 0x78(r1), 0, qr0
/* 8150D18C | CB 61 00 70 */	lfd f27, 0x70(r1)
/* 8150D190 | E3 41 00 68 */	psq_l f26, 0x68(r1), 0, qr0
/* 8150D194 | CB 41 00 60 */	lfd f26, 0x60(r1)
/* 8150D198 | E3 21 00 58 */	psq_l f25, 0x58(r1), 0, qr0
/* 8150D19C | 39 61 00 50 */	addi r11, r1, 0x50
/* 8150D1A0 | CB 21 00 50 */	lfd f25, 0x50(r1)
/* 8150D1A4 | 48 0E C3 69 */	bl _restgpr_27
/* 8150D1A8 | 80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8150D1AC | 7C 08 03 A6 */	mtlr r0
/* 8150D1B0 | 38 21 00 C0 */	addi r1, r1, 0xc0
/* 8150D1B4 | 4E 80 00 20 */	blr
.endfn Update__Q44nw4r3snd6detail10StrmPlayerFv

# .text:0x8E0 | 0x8150D1B8 | size: 0x3B8
# nw4r::snd::detail::StrmPlayer::UpdatePlayingBlockIndex()
.fn UpdatePlayingBlockIndex__Q44nw4r3snd6detail10StrmPlayerFv, global
/* 8150D1B8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8150D1BC | 7C 08 02 A6 */	mflr r0
/* 8150D1C0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8150D1C4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8150D1C8 | 48 0E C2 ED */	bl _savegpr_24
/* 8150D1CC | 80 83 00 80 */	lwz r4, 0x80(r3)
/* 8150D1D0 | 7C 7E 1B 78 */	mr r30, r3
/* 8150D1D4 | 80 03 00 88 */	lwz r0, 0x88(r3)
/* 8150D1D8 | 38 84 00 01 */	addi r4, r4, 0x1
/* 8150D1DC | 7C 04 00 00 */	cmpw r4, r0
/* 8150D1E0 | 90 83 00 80 */	stw r4, 0x80(r3)
/* 8150D1E4 | 40 81 00 A4 */	ble .L_8150D288
/* 8150D1E8 | 88 03 00 11 */	lbz r0, 0x11(r3)
/* 8150D1EC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150D1F0 | 41 82 00 98 */	beq .L_8150D288
/* 8150D1F4 | 3C 80 80 00 */	lis r4, 0x8000
/* 8150D1F8 | 80 A3 00 54 */	lwz r5, 0x54(r3)
/* 8150D1FC | 38 04 FF FF */	subi r0, r4, 0x1
/* 8150D200 | 80 83 00 84 */	lwz r4, 0x84(r3)
/* 8150D204 | 7C 05 00 00 */	cmpw r5, r0
/* 8150D208 | 90 83 00 80 */	stw r4, 0x80(r3)
/* 8150D20C | 40 80 00 0C */	bge .L_8150D218
/* 8150D210 | 38 05 00 01 */	addi r0, r5, 0x1
/* 8150D214 | 90 03 00 54 */	stw r0, 0x54(r3)
.L_8150D218:
/* 8150D218 | 80 83 00 78 */	lwz r4, 0x78(r3)
/* 8150D21C | 80 03 00 30 */	lwz r0, 0x30(r3)
/* 8150D220 | 7F 84 01 D6 */	mullw r28, r4, r0
/* 8150D224 | 48 02 36 61 */	bl OSDisableInterrupts
/* 8150D228 | 7C 7F 1B 78 */	mr r31, r3
/* 8150D22C | 7F D8 F3 78 */	mr r24, r30
/* 8150D230 | 3B A0 00 00 */	li r29, 0x0
/* 8150D234 | 48 00 00 34 */	b .L_8150D268
.L_8150D238:
/* 8150D238 | 80 7E 04 38 */	lwz r3, 0x438(r30)
/* 8150D23C | 7F A4 EB 78 */	mr r4, r29
/* 8150D240 | 80 B8 04 A8 */	lwz r5, 0x4a8(r24)
/* 8150D244 | 38 C0 00 00 */	li r6, 0x0
/* 8150D248 | 4B FE CE 55 */	bl SetLoopStart__Q44nw4r3snd6detail7AxVoiceFiPCvUl
/* 8150D24C | 80 7E 04 38 */	lwz r3, 0x438(r30)
/* 8150D250 | 7F A4 EB 78 */	mr r4, r29
/* 8150D254 | 80 B8 04 A8 */	lwz r5, 0x4a8(r24)
/* 8150D258 | 7F 86 E3 78 */	mr r6, r28
/* 8150D25C | 4B FE CF 65 */	bl SetLoopEnd__Q44nw4r3snd6detail7AxVoiceFiPCvUl
/* 8150D260 | 3B 18 00 38 */	addi r24, r24, 0x38
/* 8150D264 | 3B BD 00 01 */	addi r29, r29, 0x1
.L_8150D268:
/* 8150D268 | 80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 8150D26C | 7C 1D 00 00 */	cmpw r29, r0
/* 8150D270 | 41 80 FF C8 */	blt .L_8150D238
/* 8150D274 | 80 7E 04 38 */	lwz r3, 0x438(r30)
/* 8150D278 | 38 80 00 01 */	li r4, 0x1
/* 8150D27C | 4B FE D0 75 */	bl SetLoopFlag__Q44nw4r3snd6detail7AxVoiceFb
/* 8150D280 | 7F E3 FB 78 */	mr r3, r31
/* 8150D284 | 48 02 36 29 */	bl OSRestoreInterrupts
.L_8150D288:
/* 8150D288 | 80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 8150D28C | 80 1E 00 78 */	lwz r0, 0x78(r30)
/* 8150D290 | 38 63 00 01 */	addi r3, r3, 0x1
/* 8150D294 | 7C 03 00 00 */	cmpw r3, r0
/* 8150D298 | 90 7E 00 7C */	stw r3, 0x7c(r30)
/* 8150D29C | 41 80 00 80 */	blt .L_8150D31C
/* 8150D2A0 | 80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 8150D2A4 | 38 80 00 00 */	li r4, 0x0
/* 8150D2A8 | 80 1E 00 30 */	lwz r0, 0x30(r30)
/* 8150D2AC | 90 9E 00 7C */	stw r4, 0x7c(r30)
/* 8150D2B0 | 7F 83 01 D6 */	mullw r28, r3, r0
/* 8150D2B4 | 90 7E 00 78 */	stw r3, 0x78(r30)
/* 8150D2B8 | 48 02 35 CD */	bl OSDisableInterrupts
/* 8150D2BC | 7C 7F 1B 78 */	mr r31, r3
/* 8150D2C0 | 7F D8 F3 78 */	mr r24, r30
/* 8150D2C4 | 3B A0 00 00 */	li r29, 0x0
/* 8150D2C8 | 48 00 00 34 */	b .L_8150D2FC
.L_8150D2CC:
/* 8150D2CC | 80 7E 04 38 */	lwz r3, 0x438(r30)
/* 8150D2D0 | 7F A4 EB 78 */	mr r4, r29
/* 8150D2D4 | 80 B8 04 A8 */	lwz r5, 0x4a8(r24)
/* 8150D2D8 | 38 C0 00 00 */	li r6, 0x0
/* 8150D2DC | 4B FE CD C1 */	bl SetLoopStart__Q44nw4r3snd6detail7AxVoiceFiPCvUl
/* 8150D2E0 | 80 7E 04 38 */	lwz r3, 0x438(r30)
/* 8150D2E4 | 7F A4 EB 78 */	mr r4, r29
/* 8150D2E8 | 80 B8 04 A8 */	lwz r5, 0x4a8(r24)
/* 8150D2EC | 7F 86 E3 78 */	mr r6, r28
/* 8150D2F0 | 4B FE CE D1 */	bl SetLoopEnd__Q44nw4r3snd6detail7AxVoiceFiPCvUl
/* 8150D2F4 | 3B 18 00 38 */	addi r24, r24, 0x38
/* 8150D2F8 | 3B BD 00 01 */	addi r29, r29, 0x1
.L_8150D2FC:
/* 8150D2FC | 80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 8150D300 | 7C 1D 00 00 */	cmpw r29, r0
/* 8150D304 | 41 80 FF C8 */	blt .L_8150D2CC
/* 8150D308 | 80 7E 04 38 */	lwz r3, 0x438(r30)
/* 8150D30C | 38 80 00 01 */	li r4, 0x1
/* 8150D310 | 4B FE CF E1 */	bl SetLoopFlag__Q44nw4r3snd6detail7AxVoiceFb
/* 8150D314 | 7F E3 FB 78 */	mr r3, r31
/* 8150D318 | 48 02 35 95 */	bl OSRestoreInterrupts
.L_8150D31C:
/* 8150D31C | 80 7E 00 78 */	lwz r3, 0x78(r30)
/* 8150D320 | 80 9E 00 7C */	lwz r4, 0x7c(r30)
/* 8150D324 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8150D328 | 7C 04 00 00 */	cmpw r4, r0
/* 8150D32C | 40 82 00 9C */	bne .L_8150D3C8
/* 8150D330 | 80 7E 04 38 */	lwz r3, 0x438(r30)
/* 8150D334 | 80 03 01 18 */	lwz r0, 0x118(r3)
/* 8150D338 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150D33C | 40 82 00 8C */	bne .L_8150D3C8
/* 8150D340 | 88 1E 00 50 */	lbz r0, 0x50(r30)
/* 8150D344 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150D348 | 40 82 00 74 */	bne .L_8150D3BC
/* 8150D34C | 88 1E 00 51 */	lbz r0, 0x51(r30)
/* 8150D350 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150D354 | 41 82 00 68 */	beq .L_8150D3BC
/* 8150D358 | 48 02 35 2D */	bl OSDisableInterrupts
/* 8150D35C | 7C 7F 1B 78 */	mr r31, r3
/* 8150D360 | 7F D8 F3 78 */	mr r24, r30
/* 8150D364 | 3B 20 00 00 */	li r25, 0x0
/* 8150D368 | 3B 80 00 00 */	li r28, 0x0
/* 8150D36C | 48 00 00 30 */	b .L_8150D39C
.L_8150D370:
/* 8150D370 | A0 18 05 18 */	lhz r0, 0x518(r24)
/* 8150D374 | 7F 24 CB 78 */	mr r4, r25
/* 8150D378 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 8150D37C | B0 01 00 08 */	sth r0, 0x8(r1)
/* 8150D380 | B3 81 00 0A */	sth r28, 0xa(r1)
/* 8150D384 | B3 81 00 0C */	sth r28, 0xc(r1)
/* 8150D388 | 80 7E 04 38 */	lwz r3, 0x438(r30)
/* 8150D38C | 80 A3 01 18 */	lwz r5, 0x118(r3)
/* 8150D390 | 4B FE C7 45 */	bl SetAdpcmLoop__Q44nw4r3snd6detail7AxVoiceFiQ54nw4r3snd6detail7AxVoice6FormatPCQ44nw4r3snd6detail14AdpcmLoopParam
/* 8150D394 | 3B 18 00 02 */	addi r24, r24, 0x2
/* 8150D398 | 3B 39 00 01 */	addi r25, r25, 0x1
.L_8150D39C:
/* 8150D39C | 80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 8150D3A0 | 7C 19 00 00 */	cmpw r25, r0
/* 8150D3A4 | 41 80 FF CC */	blt .L_8150D370
/* 8150D3A8 | 80 7E 04 38 */	lwz r3, 0x438(r30)
/* 8150D3AC | 38 80 00 01 */	li r4, 0x1
/* 8150D3B0 | 4B FE D1 C5 */	bl SetVoiceType__Q44nw4r3snd6detail7AxVoiceFQ54nw4r3snd6detail7AxVoice9VoiceType
/* 8150D3B4 | 7F E3 FB 78 */	mr r3, r31
/* 8150D3B8 | 48 02 34 F5 */	bl OSRestoreInterrupts
.L_8150D3BC:
/* 8150D3BC | 38 00 00 00 */	li r0, 0x0
/* 8150D3C0 | 98 1E 00 51 */	stb r0, 0x51(r30)
/* 8150D3C4 | 98 1E 00 50 */	stb r0, 0x50(r30)
.L_8150D3C8:
/* 8150D3C8 | 80 7E 00 88 */	lwz r3, 0x88(r30)
/* 8150D3CC | 80 9E 00 80 */	lwz r4, 0x80(r30)
/* 8150D3D0 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8150D3D4 | 7C 04 00 00 */	cmpw r4, r0
/* 8150D3D8 | 40 82 01 80 */	bne .L_8150D558
/* 8150D3DC | 88 1E 00 11 */	lbz r0, 0x11(r30)
/* 8150D3E0 | 80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 8150D3E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150D3E8 | 3B E3 00 01 */	addi r31, r3, 0x1
/* 8150D3EC | 41 82 01 14 */	beq .L_8150D500
/* 8150D3F0 | 80 1E 00 78 */	lwz r0, 0x78(r30)
/* 8150D3F4 | 3B 1F 00 01 */	addi r24, r31, 0x1
/* 8150D3F8 | 7C 18 00 00 */	cmpw r24, r0
/* 8150D3FC | 41 80 00 08 */	blt .L_8150D404
/* 8150D400 | 7F 00 C0 50 */	subf r24, r0, r24
.L_8150D404:
/* 8150D404 | 48 02 34 81 */	bl OSDisableInterrupts
/* 8150D408 | 80 9E 00 30 */	lwz r4, 0x30(r30)
/* 8150D40C | 7C 7D 1B 78 */	mr r29, r3
/* 8150D410 | 80 7E 00 38 */	lwz r3, 0x38(r30)
/* 8150D414 | 7C 1F 21 D6 */	mullw r0, r31, r4
/* 8150D418 | 7F 78 21 D6 */	mullw r27, r24, r4
/* 8150D41C | 7F 43 02 14 */	add r26, r3, r0
/* 8150D420 | 48 02 34 65 */	bl OSDisableInterrupts
/* 8150D424 | 7C 7C 1B 78 */	mr r28, r3
/* 8150D428 | 7F D8 F3 78 */	mr r24, r30
/* 8150D42C | 3B 20 00 00 */	li r25, 0x0
/* 8150D430 | 48 00 00 34 */	b .L_8150D464
.L_8150D434:
/* 8150D434 | 80 7E 04 38 */	lwz r3, 0x438(r30)
/* 8150D438 | 7F 24 CB 78 */	mr r4, r25
/* 8150D43C | 80 B8 04 A8 */	lwz r5, 0x4a8(r24)
/* 8150D440 | 7F 66 DB 78 */	mr r6, r27
/* 8150D444 | 4B FE CC 59 */	bl SetLoopStart__Q44nw4r3snd6detail7AxVoiceFiPCvUl
/* 8150D448 | 80 7E 04 38 */	lwz r3, 0x438(r30)
/* 8150D44C | 7F 24 CB 78 */	mr r4, r25
/* 8150D450 | 80 B8 04 A8 */	lwz r5, 0x4a8(r24)
/* 8150D454 | 7F 46 D3 78 */	mr r6, r26
/* 8150D458 | 4B FE CD 69 */	bl SetLoopEnd__Q44nw4r3snd6detail7AxVoiceFiPCvUl
/* 8150D45C | 3B 18 00 38 */	addi r24, r24, 0x38
/* 8150D460 | 3B 39 00 01 */	addi r25, r25, 0x1
.L_8150D464:
/* 8150D464 | 80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 8150D468 | 7C 19 00 00 */	cmpw r25, r0
/* 8150D46C | 41 80 FF C8 */	blt .L_8150D434
/* 8150D470 | 80 7E 04 38 */	lwz r3, 0x438(r30)
/* 8150D474 | 38 80 00 01 */	li r4, 0x1
/* 8150D478 | 4B FE CE 79 */	bl SetLoopFlag__Q44nw4r3snd6detail7AxVoiceFb
/* 8150D47C | 7F 83 E3 78 */	mr r3, r28
/* 8150D480 | 48 02 34 2D */	bl OSRestoreInterrupts
/* 8150D484 | 88 1E 00 10 */	lbz r0, 0x10(r30)
/* 8150D488 | 28 00 00 02 */	cmplwi r0, 0x2
/* 8150D48C | 40 82 00 68 */	bne .L_8150D4F4
/* 8150D490 | 80 7E 04 38 */	lwz r3, 0x438(r30)
/* 8150D494 | 80 03 01 18 */	lwz r0, 0x118(r3)
/* 8150D498 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150D49C | 40 82 00 40 */	bne .L_8150D4DC
/* 8150D4A0 | 38 80 00 00 */	li r4, 0x0
/* 8150D4A4 | 4B FE D0 D1 */	bl SetVoiceType__Q44nw4r3snd6detail7AxVoiceFQ54nw4r3snd6detail7AxVoice9VoiceType
/* 8150D4A8 | 3B 3E 04 D8 */	addi r25, r30, 0x4d8
/* 8150D4AC | 3B 00 00 00 */	li r24, 0x0
/* 8150D4B0 | 48 00 00 20 */	b .L_8150D4D0
.L_8150D4B4:
/* 8150D4B4 | 80 7E 04 38 */	lwz r3, 0x438(r30)
/* 8150D4B8 | 7F 04 C3 78 */	mr r4, r24
/* 8150D4BC | 7F 26 CB 78 */	mr r6, r25
/* 8150D4C0 | 80 A3 01 18 */	lwz r5, 0x118(r3)
/* 8150D4C4 | 4B FE C6 11 */	bl SetAdpcmLoop__Q44nw4r3snd6detail7AxVoiceFiQ54nw4r3snd6detail7AxVoice6FormatPCQ44nw4r3snd6detail14AdpcmLoopParam
/* 8150D4C8 | 3B 39 00 38 */	addi r25, r25, 0x38
/* 8150D4CC | 3B 18 00 01 */	addi r24, r24, 0x1
.L_8150D4D0:
/* 8150D4D0 | 80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 8150D4D4 | 7C 18 00 00 */	cmpw r24, r0
/* 8150D4D8 | 41 80 FF DC */	blt .L_8150D4B4
.L_8150D4DC:
/* 8150D4DC | 80 7E 00 78 */	lwz r3, 0x78(r30)
/* 8150D4E0 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8150D4E4 | 7C 1F 00 00 */	cmpw r31, r0
/* 8150D4E8 | 40 82 00 0C */	bne .L_8150D4F4
/* 8150D4EC | 38 00 00 01 */	li r0, 0x1
/* 8150D4F0 | 98 1E 00 50 */	stb r0, 0x50(r30)
.L_8150D4F4:
/* 8150D4F4 | 7F A3 EB 78 */	mr r3, r29
/* 8150D4F8 | 48 02 33 B5 */	bl OSRestoreInterrupts
/* 8150D4FC | 48 00 00 5C */	b .L_8150D558
.L_8150D500:
/* 8150D500 | 48 02 33 85 */	bl OSDisableInterrupts
/* 8150D504 | 7C 7C 1B 78 */	mr r28, r3
/* 8150D508 | 7F DA F3 78 */	mr r26, r30
/* 8150D50C | 3B 20 00 00 */	li r25, 0x0
/* 8150D510 | 48 00 00 2C */	b .L_8150D53C
.L_8150D514:
/* 8150D514 | 80 1E 00 30 */	lwz r0, 0x30(r30)
/* 8150D518 | 7F 24 CB 78 */	mr r4, r25
/* 8150D51C | 80 DE 00 38 */	lwz r6, 0x38(r30)
/* 8150D520 | 7C 1F 01 D6 */	mullw r0, r31, r0
/* 8150D524 | 80 7E 04 38 */	lwz r3, 0x438(r30)
/* 8150D528 | 80 BA 04 A8 */	lwz r5, 0x4a8(r26)
/* 8150D52C | 7C C6 02 14 */	add r6, r6, r0
/* 8150D530 | 4B FE CE 69 */	bl StopAtPoint__Q44nw4r3snd6detail7AxVoiceFiPCvUl
/* 8150D534 | 3B 5A 00 38 */	addi r26, r26, 0x38
/* 8150D538 | 3B 39 00 01 */	addi r25, r25, 0x1
.L_8150D53C:
/* 8150D53C | 80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 8150D540 | 7C 19 00 00 */	cmpw r25, r0
/* 8150D544 | 41 80 FF D0 */	blt .L_8150D514
/* 8150D548 | 7F 83 E3 78 */	mr r3, r28
/* 8150D54C | 48 02 33 61 */	bl OSRestoreInterrupts
/* 8150D550 | 38 00 00 01 */	li r0, 0x1
/* 8150D554 | 98 1E 00 52 */	stb r0, 0x52(r30)
.L_8150D558:
/* 8150D558 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8150D55C | 48 0E BF A5 */	bl _restgpr_24
/* 8150D560 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8150D564 | 7C 08 03 A6 */	mtlr r0
/* 8150D568 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8150D56C | 4E 80 00 20 */	blr
.endfn UpdatePlayingBlockIndex__Q44nw4r3snd6detail10StrmPlayerFv

# .text:0xC98 | 0x8150D570 | size: 0x230
# nw4r::snd::detail::StrmPlayer::UpdateLoadingBlockIndex(nw4r::snd::detail::StrmPlayer::LoadCommand::Status)
.fn UpdateLoadingBlockIndex__Q44nw4r3snd6detail10StrmPlayerFQ64nw4r3snd6detail10StrmPlayer11LoadCommand6Status, global
/* 8150D570 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8150D574 | 7C 08 02 A6 */	mflr r0
/* 8150D578 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 8150D57C | 39 61 00 40 */	addi r11, r1, 0x40
/* 8150D580 | 48 0E BF 41 */	bl _savegpr_27
/* 8150D584 | 88 03 00 53 */	lbz r0, 0x53(r3)
/* 8150D588 | 7C 7D 1B 78 */	mr r29, r3
/* 8150D58C | 7C 9B 23 78 */	mr r27, r4
/* 8150D590 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150D594 | 40 82 01 F4 */	bne .L_8150D788
/* 8150D598 | 48 02 32 ED */	bl OSDisableInterrupts
/* 8150D59C | 80 BD 00 98 */	lwz r5, 0x98(r29)
/* 8150D5A0 | 7C 7E 1B 78 */	mr r30, r3
/* 8150D5A4 | 38 81 00 1C */	addi r4, r1, 0x1c
/* 8150D5A8 | 38 7D 00 94 */	addi r3, r29, 0x94
/* 8150D5AC | 90 A1 00 1C */	stw r5, 0x1c(r1)
/* 8150D5B0 | 3B E5 FF EC */	subi r31, r5, 0x14
/* 8150D5B4 | 48 00 4E 35 */	bl fn_815123E8
/* 8150D5B8 | 7F C3 F3 78 */	mr r3, r30
/* 8150D5BC | 48 02 32 F1 */	bl OSRestoreInterrupts
/* 8150D5C0 | 93 7F 00 08 */	stw r27, 0x8(r31)
/* 8150D5C4 | 80 1D 00 70 */	lwz r0, 0x70(r29)
/* 8150D5C8 | 90 1F 00 10 */	stw r0, 0x10(r31)
/* 8150D5CC | 80 1D 00 74 */	lwz r0, 0x74(r29)
/* 8150D5D0 | 90 1F 00 0C */	stw r0, 0xc(r31)
/* 8150D5D4 | 80 7D 00 28 */	lwz r3, 0x28(r29)
/* 8150D5D8 | 80 9D 00 74 */	lwz r4, 0x74(r29)
/* 8150D5DC | 38 03 FF FF */	subi r0, r3, 0x1
/* 8150D5E0 | 7C 04 00 00 */	cmpw r4, r0
/* 8150D5E4 | 40 80 00 0C */	bge .L_8150D5F0
/* 8150D5E8 | 83 DD 00 2C */	lwz r30, 0x2c(r29)
/* 8150D5EC | 48 00 00 08 */	b .L_8150D5F4
.L_8150D5F0:
/* 8150D5F0 | 83 DD 00 3C */	lwz r30, 0x3c(r29)
.L_8150D5F4:
/* 8150D5F4 | 80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 8150D5F8 | 38 1E 00 1F */	addi r0, r30, 0x1f
/* 8150D5FC | 88 7D 00 12 */	lbz r3, 0x12(r29)
/* 8150D600 | 54 0B 00 34 */	clrrwi r11, r0, 5
/* 8150D604 | 81 3D 04 A0 */	lwz r9, 0x4a0(r29)
/* 8150D608 | 38 1D 00 A4 */	addi r0, r29, 0xa4
/* 8150D60C | 7C 64 19 D6 */	mullw r3, r4, r3
/* 8150D610 | A1 5D 00 18 */	lhz r10, 0x18(r29)
/* 8150D614 | 80 FD 00 74 */	lwz r7, 0x74(r29)
/* 8150D618 | 38 BF 00 14 */	addi r5, r31, 0x14
/* 8150D61C | 81 1D 00 24 */	lwz r8, 0x24(r29)
/* 8150D620 | 38 81 00 18 */	addi r4, r1, 0x18
/* 8150D624 | 7C CA 1A 14 */	add r6, r10, r3
/* 8150D628 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 8150D62C | 7D 29 59 D6 */	mullw r9, r9, r11
/* 8150D630 | 38 7D 00 A0 */	addi r3, r29, 0xa0
/* 8150D634 | 7C 07 31 D6 */	mullw r0, r7, r6
/* 8150D638 | 7F 8A 4A 14 */	add r28, r10, r9
/* 8150D63C | 7F 68 02 14 */	add r27, r8, r0
/* 8150D640 | 48 00 4E 35 */	bl fn_81512474
/* 8150D644 | 80 1D 00 70 */	lwz r0, 0x70(r29)
/* 8150D648 | 39 40 00 00 */	li r10, 0x0
/* 8150D64C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150D650 | 40 82 00 14 */	bne .L_8150D664
/* 8150D654 | 88 1D 00 10 */	lbz r0, 0x10(r29)
/* 8150D658 | 28 00 00 02 */	cmplwi r0, 0x2
/* 8150D65C | 40 82 00 08 */	bne .L_8150D664
/* 8150D660 | 39 40 00 01 */	li r10, 0x1
.L_8150D664:
/* 8150D664 | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 8150D668 | 3C 80 81 11 */	lis r4, mMramBuf__Q54nw4r3snd6detail10StrmPlayer11LoadCommand@ha
/* 8150D66C | 7F 85 E3 78 */	mr r5, r28
/* 8150D670 | 7F 66 DB 78 */	mr r6, r27
/* 8150D674 | 93 A1 00 0C */	stw r29, 0xc(r1)
/* 8150D678 | 7F C8 F3 78 */	mr r8, r30
/* 8150D67C | 38 84 85 60 */	addi r4, r4, mMramBuf__Q54nw4r3snd6detail10StrmPlayer11LoadCommand@l
/* 8150D680 | 80 1D 04 34 */	lwz r0, 0x434(r29)
/* 8150D684 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 8150D688 | 80 7D 04 30 */	lwz r3, 0x430(r29)
/* 8150D68C | 80 FD 04 A0 */	lwz r7, 0x4a0(r29)
/* 8150D690 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150D694 | A1 3D 00 18 */	lhz r9, 0x18(r29)
/* 8150D698 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8150D69C | 7D 89 03 A6 */	mtctr r12
/* 8150D6A0 | 4E 80 04 21 */	bctrl
/* 8150D6A4 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 8150D6A8 | 41 82 00 40 */	beq .L_8150D6E8
/* 8150D6AC | 40 80 00 3C */	bge .L_8150D6E8
/* 8150D6B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150D6B4 | 41 82 00 1C */	beq .L_8150D6D0
/* 8150D6B8 | 40 80 00 0C */	bge .L_8150D6C4
/* 8150D6BC | 48 00 00 2C */	b .L_8150D6E8
/* 8150D6C0 | 48 00 00 28 */	b .L_8150D6E8
.L_8150D6C4:
/* 8150D6C4 | 7F A3 EB 78 */	mr r3, r29
/* 8150D6C8 | 48 00 0C 41 */	bl ForceStop__Q44nw4r3snd6detail10StrmPlayerFv
/* 8150D6CC | 48 00 00 1C */	b .L_8150D6E8
.L_8150D6D0:
/* 8150D6D0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8150D6D4 | 7F E3 FB 78 */	mr r3, r31
/* 8150D6D8 | 38 80 00 01 */	li r4, 0x1
/* 8150D6DC | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8150D6E0 | 7D 89 03 A6 */	mtctr r12
/* 8150D6E4 | 4E 80 04 21 */	bctrl
.L_8150D6E8:
/* 8150D6E8 | 80 7D 00 74 */	lwz r3, 0x74(r29)
/* 8150D6EC | 80 1D 00 88 */	lwz r0, 0x88(r29)
/* 8150D6F0 | 38 63 00 01 */	addi r3, r3, 0x1
/* 8150D6F4 | 7C 03 00 00 */	cmpw r3, r0
/* 8150D6F8 | 90 7D 00 74 */	stw r3, 0x74(r29)
/* 8150D6FC | 40 81 00 28 */	ble .L_8150D724
/* 8150D700 | 88 1D 00 11 */	lbz r0, 0x11(r29)
/* 8150D704 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150D708 | 41 82 00 10 */	beq .L_8150D718
/* 8150D70C | 80 1D 00 84 */	lwz r0, 0x84(r29)
/* 8150D710 | 90 1D 00 74 */	stw r0, 0x74(r29)
/* 8150D714 | 48 00 00 10 */	b .L_8150D724
.L_8150D718:
/* 8150D718 | 38 00 00 01 */	li r0, 0x1
/* 8150D71C | 98 1D 00 53 */	stb r0, 0x53(r29)
/* 8150D720 | 48 00 00 68 */	b .L_8150D788
.L_8150D724:
/* 8150D724 | 80 7D 00 70 */	lwz r3, 0x70(r29)
/* 8150D728 | 80 1D 00 6C */	lwz r0, 0x6c(r29)
/* 8150D72C | 38 63 00 01 */	addi r3, r3, 0x1
/* 8150D730 | 7C 03 00 00 */	cmpw r3, r0
/* 8150D734 | 90 7D 00 70 */	stw r3, 0x70(r29)
/* 8150D738 | 41 80 00 50 */	blt .L_8150D788
/* 8150D73C | 80 BD 00 74 */	lwz r5, 0x74(r29)
/* 8150D740 | 38 C0 00 00 */	li r6, 0x0
/* 8150D744 | 80 7D 00 88 */	lwz r3, 0x88(r29)
/* 8150D748 | 80 1D 00 84 */	lwz r0, 0x84(r29)
/* 8150D74C | 7C A5 18 50 */	subf r5, r5, r3
/* 8150D750 | 80 9D 00 68 */	lwz r4, 0x68(r29)
/* 8150D754 | 7C 60 18 50 */	subf r3, r0, r3
/* 8150D758 | 90 DD 00 70 */	stw r6, 0x70(r29)
/* 8150D75C | 38 05 00 01 */	addi r0, r5, 0x1
/* 8150D760 | 38 A4 00 01 */	addi r5, r4, 0x1
/* 8150D764 | 38 C3 00 01 */	addi r6, r3, 0x1
/* 8150D768 | 7C 60 28 50 */	subf r3, r0, r5
/* 8150D76C | 7C 03 33 D6 */	divw r0, r3, r6
/* 8150D770 | 7C 00 31 D6 */	mullw r0, r0, r6
/* 8150D774 | 7C 00 18 51 */	subf. r0, r0, r3
/* 8150D778 | 40 82 00 08 */	bne .L_8150D780
/* 8150D77C | 48 00 00 08 */	b .L_8150D784
.L_8150D780:
/* 8150D780 | 7C 85 23 78 */	mr r5, r4
.L_8150D784:
/* 8150D784 | 90 BD 00 6C */	stw r5, 0x6c(r29)
.L_8150D788:
/* 8150D788 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8150D78C | 48 0E BD 81 */	bl _restgpr_27
/* 8150D790 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8150D794 | 7C 08 03 A6 */	mtlr r0
/* 8150D798 | 38 21 00 40 */	addi r1, r1, 0x40
/* 8150D79C | 4E 80 00 20 */	blr
.endfn UpdateLoadingBlockIndex__Q44nw4r3snd6detail10StrmPlayerFQ64nw4r3snd6detail10StrmPlayer11LoadCommand6Status

# .text:0xEC8 | 0x8150D7A0 | size: 0x58
# nw4r::snd::detail::StrmPlayer::UpdateBufferAllPlayers()
.fn UpdateBufferAllPlayers__Q44nw4r3snd6detail10StrmPlayerFv, global
/* 8150D7A0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150D7A4 | 7C 08 02 A6 */	mflr r0
/* 8150D7A8 | 3C 60 81 11 */	lis r3, sPlayerList__Q44nw4r3snd6detail28@ha
/* 8150D7AC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150D7B0 | 38 63 85 4C */	addi r3, r3, sPlayerList__Q44nw4r3snd6detail28@l
/* 8150D7B4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150D7B8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8150D7BC | 3B C3 00 04 */	addi r30, r3, 0x4
/* 8150D7C0 | 83 E3 00 04 */	lwz r31, 0x4(r3)
/* 8150D7C4 | 48 00 00 14 */	b .L_8150D7D8
.L_8150D7C8:
/* 8150D7C8 | 7F E3 FB 78 */	mr r3, r31
/* 8150D7CC | 83 FF 00 00 */	lwz r31, 0x0(r31)
/* 8150D7D0 | 38 63 FF F8 */	subi r3, r3, 0x8
/* 8150D7D4 | 4B FF F4 D9 */	bl UpdateBuffer__Q44nw4r3snd6detail10StrmPlayerFv
.L_8150D7D8:
/* 8150D7D8 | 7C 1F F0 40 */	cmplw r31, r30
/* 8150D7DC | 40 82 FF EC */	bne .L_8150D7C8
/* 8150D7E0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150D7E4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8150D7E8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8150D7EC | 7C 08 03 A6 */	mtlr r0
/* 8150D7F0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150D7F4 | 4E 80 00 20 */	blr
.endfn UpdateBufferAllPlayers__Q44nw4r3snd6detail10StrmPlayerFv

# .text:0xF20 | 0x8150D7F8 | size: 0x58
# nw4r::snd::detail::StrmPlayer::UpdateAllPlayers()
.fn UpdateAllPlayers__Q44nw4r3snd6detail10StrmPlayerFv, global
/* 8150D7F8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150D7FC | 7C 08 02 A6 */	mflr r0
/* 8150D800 | 3C 60 81 11 */	lis r3, sPlayerList__Q44nw4r3snd6detail28@ha
/* 8150D804 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150D808 | 38 63 85 4C */	addi r3, r3, sPlayerList__Q44nw4r3snd6detail28@l
/* 8150D80C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150D810 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8150D814 | 3B C3 00 04 */	addi r30, r3, 0x4
/* 8150D818 | 83 E3 00 04 */	lwz r31, 0x4(r3)
/* 8150D81C | 48 00 00 14 */	b .L_8150D830
.L_8150D820:
/* 8150D820 | 7F E3 FB 78 */	mr r3, r31
/* 8150D824 | 83 FF 00 00 */	lwz r31, 0x0(r31)
/* 8150D828 | 38 63 FF F8 */	subi r3, r3, 0x8
/* 8150D82C | 4B FF F6 C9 */	bl Update__Q44nw4r3snd6detail10StrmPlayerFv
.L_8150D830:
/* 8150D830 | 7C 1F F0 40 */	cmplw r31, r30
/* 8150D834 | 40 82 FF EC */	bne .L_8150D820
/* 8150D838 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150D83C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8150D840 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8150D844 | 7C 08 03 A6 */	mtlr r0
/* 8150D848 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150D84C | 4E 80 00 20 */	blr
.endfn UpdateAllPlayers__Q44nw4r3snd6detail10StrmPlayerFv

# .text:0xF78 | 0x8150D850 | size: 0x60
# nw4r::snd::detail::StrmPlayer::StopAllPlayers()
.fn StopAllPlayers__Q44nw4r3snd6detail10StrmPlayerFv, global
/* 8150D850 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150D854 | 7C 08 02 A6 */	mflr r0
/* 8150D858 | 3C 60 81 11 */	lis r3, sPlayerList__Q44nw4r3snd6detail28@ha
/* 8150D85C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150D860 | 38 63 85 4C */	addi r3, r3, sPlayerList__Q44nw4r3snd6detail28@l
/* 8150D864 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150D868 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8150D86C | 3B C3 00 04 */	addi r30, r3, 0x4
/* 8150D870 | 83 E3 00 04 */	lwz r31, 0x4(r3)
/* 8150D874 | 48 00 00 1C */	b .L_8150D890
.L_8150D878:
/* 8150D878 | 7F E3 FB 78 */	mr r3, r31
/* 8150D87C | 85 83 FF F8 */	lwzu r12, -0x8(r3)
/* 8150D880 | 83 FF 00 00 */	lwz r31, 0x0(r31)
/* 8150D884 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8150D888 | 7D 89 03 A6 */	mtctr r12
/* 8150D88C | 4E 80 04 21 */	bctrl
.L_8150D890:
/* 8150D890 | 7C 1F F0 40 */	cmplw r31, r30
/* 8150D894 | 40 82 FF E4 */	bne .L_8150D878
/* 8150D898 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150D89C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8150D8A0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8150D8A4 | 7C 08 03 A6 */	mtlr r0
/* 8150D8A8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150D8AC | 4E 80 00 20 */	blr
.endfn StopAllPlayers__Q44nw4r3snd6detail10StrmPlayerFv

# .text:0xFD8 | 0x8150D8B0 | size: 0x40
# nw4r::snd::detail::StrmPlayer::SetMainOutVolume(float)
.fn SetMainOutVolume__Q44nw4r3snd6detail10StrmPlayerFf, global
/* 8150D8B0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150D8B4 | 7C 08 02 A6 */	mflr r0
/* 8150D8B8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8150D8BC | DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8150D8C0 | FF E0 08 90 */	fmr f31, f1
/* 8150D8C4 | 93 E1 00 14 */	stw r31, 0x14(r1)
/* 8150D8C8 | 7C 7F 1B 78 */	mr r31, r3
/* 8150D8CC | 48 02 2F B9 */	bl OSDisableInterrupts
/* 8150D8D0 | D3 FF 04 5C */	stfs f31, 0x45c(r31)
/* 8150D8D4 | 48 02 2F D9 */	bl OSRestoreInterrupts
/* 8150D8D8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150D8DC | CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8150D8E0 | 83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8150D8E4 | 7C 08 03 A6 */	mtlr r0
/* 8150D8E8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150D8EC | 4E 80 00 20 */	blr
.endfn SetMainOutVolume__Q44nw4r3snd6detail10StrmPlayerFf

# .text:0x1018 | 0x8150D8F0 | size: 0x8
# nw4r::snd::detail::StrmPlayer::GetMainOutVolume() const
.fn GetMainOutVolume__Q44nw4r3snd6detail10StrmPlayerCFv, global
/* 8150D8F0 | C0 23 04 5C */	lfs f1, 0x45c(r3)
/* 8150D8F4 | 4E 80 00 20 */	blr
.endfn GetMainOutVolume__Q44nw4r3snd6detail10StrmPlayerCFv

# .text:0x1020 | 0x8150D8F8 | size: 0x40
# nw4r::snd::detail::StrmPlayer::SetMainSend(float)
.fn SetMainSend__Q44nw4r3snd6detail10StrmPlayerFf, global
/* 8150D8F8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150D8FC | 7C 08 02 A6 */	mflr r0
/* 8150D900 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8150D904 | DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8150D908 | FF E0 08 90 */	fmr f31, f1
/* 8150D90C | 93 E1 00 14 */	stw r31, 0x14(r1)
/* 8150D910 | 7C 7F 1B 78 */	mr r31, r3
/* 8150D914 | 48 02 2F 71 */	bl OSDisableInterrupts
/* 8150D918 | D3 FF 04 60 */	stfs f31, 0x460(r31)
/* 8150D91C | 48 02 2F 91 */	bl OSRestoreInterrupts
/* 8150D920 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150D924 | CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8150D928 | 83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8150D92C | 7C 08 03 A6 */	mtlr r0
/* 8150D930 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150D934 | 4E 80 00 20 */	blr
.endfn SetMainSend__Q44nw4r3snd6detail10StrmPlayerFf

# .text:0x1060 | 0x8150D938 | size: 0x8
# nw4r::snd::detail::StrmPlayer::GetMainSend() const
.fn GetMainSend__Q44nw4r3snd6detail10StrmPlayerCFv, global
/* 8150D938 | C0 23 04 60 */	lfs f1, 0x460(r3)
/* 8150D93C | 4E 80 00 20 */	blr
.endfn GetMainSend__Q44nw4r3snd6detail10StrmPlayerCFv

# .text:0x1068 | 0x8150D940 | size: 0x54
# nw4r::snd::detail::StrmPlayer::SetFxSend(nw4r::snd::AuxBus, float)
.fn SetFxSend__Q44nw4r3snd6detail10StrmPlayerFQ34nw4r3snd6AuxBusf, global
/* 8150D940 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150D944 | 7C 08 02 A6 */	mflr r0
/* 8150D948 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8150D94C | DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8150D950 | FF E0 08 90 */	fmr f31, f1
/* 8150D954 | 93 E1 00 14 */	stw r31, 0x14(r1)
/* 8150D958 | 7C 9F 23 78 */	mr r31, r4
/* 8150D95C | 93 C1 00 10 */	stw r30, 0x10(r1)
/* 8150D960 | 7C 7E 1B 78 */	mr r30, r3
/* 8150D964 | 48 02 2F 21 */	bl OSDisableInterrupts
/* 8150D968 | 57 E0 10 3A */	slwi r0, r31, 2
/* 8150D96C | 7C 9E 02 14 */	add r4, r30, r0
/* 8150D970 | D3 E4 04 64 */	stfs f31, 0x464(r4)
/* 8150D974 | 48 02 2F 39 */	bl OSRestoreInterrupts
/* 8150D978 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150D97C | CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8150D980 | 83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8150D984 | 83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8150D988 | 7C 08 03 A6 */	mtlr r0
/* 8150D98C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150D990 | 4E 80 00 20 */	blr
.endfn SetFxSend__Q44nw4r3snd6detail10StrmPlayerFQ34nw4r3snd6AuxBusf

# .text:0x10BC | 0x8150D994 | size: 0x10
# nw4r::snd::detail::StrmPlayer::GetFxSend(nw4r::snd::AuxBus) const
.fn GetFxSend__Q44nw4r3snd6detail10StrmPlayerCFQ34nw4r3snd6AuxBus, global
/* 8150D994 | 54 80 10 3A */	slwi r0, r4, 2
/* 8150D998 | 7C 63 02 14 */	add r3, r3, r0
/* 8150D99C | C0 23 04 64 */	lfs f1, 0x464(r3)
/* 8150D9A0 | 4E 80 00 20 */	blr
.endfn GetFxSend__Q44nw4r3snd6detail10StrmPlayerCFQ34nw4r3snd6AuxBus

# .text:0x10CC | 0x8150D9A4 | size: 0x40
# nw4r::snd::detail::StrmPlayer::SetOutputLine(int)
.fn SetOutputLine__Q44nw4r3snd6detail10StrmPlayerFi, global
/* 8150D9A4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150D9A8 | 7C 08 02 A6 */	mflr r0
/* 8150D9AC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150D9B0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150D9B4 | 7C 9F 23 78 */	mr r31, r4
/* 8150D9B8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8150D9BC | 7C 7E 1B 78 */	mr r30, r3
/* 8150D9C0 | 48 02 2E C5 */	bl OSDisableInterrupts
/* 8150D9C4 | 93 FE 04 58 */	stw r31, 0x458(r30)
/* 8150D9C8 | 48 02 2E E5 */	bl OSRestoreInterrupts
/* 8150D9CC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150D9D0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8150D9D4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8150D9D8 | 7C 08 03 A6 */	mtlr r0
/* 8150D9DC | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150D9E0 | 4E 80 00 20 */	blr
.endfn SetOutputLine__Q44nw4r3snd6detail10StrmPlayerFi

# .text:0x110C | 0x8150D9E4 | size: 0x8
# nw4r::snd::detail::StrmPlayer::GetOutputLine() const
.fn GetOutputLine__Q44nw4r3snd6detail10StrmPlayerCFv, global
/* 8150D9E4 | 80 63 04 58 */	lwz r3, 0x458(r3)
/* 8150D9E8 | 4E 80 00 20 */	blr
.endfn GetOutputLine__Q44nw4r3snd6detail10StrmPlayerCFv

# .text:0x1114 | 0x8150D9EC | size: 0x54
# nw4r::snd::detail::StrmPlayer::SetRemoteOutVolume(int, float)
.fn SetRemoteOutVolume__Q44nw4r3snd6detail10StrmPlayerFif, global
/* 8150D9EC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150D9F0 | 7C 08 02 A6 */	mflr r0
/* 8150D9F4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8150D9F8 | DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8150D9FC | FF E0 08 90 */	fmr f31, f1
/* 8150DA00 | 93 E1 00 14 */	stw r31, 0x14(r1)
/* 8150DA04 | 7C 9F 23 78 */	mr r31, r4
/* 8150DA08 | 93 C1 00 10 */	stw r30, 0x10(r1)
/* 8150DA0C | 7C 7E 1B 78 */	mr r30, r3
/* 8150DA10 | 48 02 2E 75 */	bl OSDisableInterrupts
/* 8150DA14 | 57 E0 10 3A */	slwi r0, r31, 2
/* 8150DA18 | 7C 9E 02 14 */	add r4, r30, r0
/* 8150DA1C | D3 E4 04 70 */	stfs f31, 0x470(r4)
/* 8150DA20 | 48 02 2E 8D */	bl OSRestoreInterrupts
/* 8150DA24 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150DA28 | CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8150DA2C | 83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8150DA30 | 83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8150DA34 | 7C 08 03 A6 */	mtlr r0
/* 8150DA38 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150DA3C | 4E 80 00 20 */	blr
.endfn SetRemoteOutVolume__Q44nw4r3snd6detail10StrmPlayerFif

# .text:0x1168 | 0x8150DA40 | size: 0x10
# nw4r::snd::detail::StrmPlayer::GetRemoteOutVolume(int) const
.fn GetRemoteOutVolume__Q44nw4r3snd6detail10StrmPlayerCFi, global
/* 8150DA40 | 54 80 10 3A */	slwi r0, r4, 2
/* 8150DA44 | 7C 63 02 14 */	add r3, r3, r0
/* 8150DA48 | C0 23 04 70 */	lfs f1, 0x470(r3)
/* 8150DA4C | 4E 80 00 20 */	blr
.endfn GetRemoteOutVolume__Q44nw4r3snd6detail10StrmPlayerCFi

# .text:0x1178 | 0x8150DA50 | size: 0x54
# nw4r::snd::detail::StrmPlayer::SetRemoteSend(int, float)
.fn SetRemoteSend__Q44nw4r3snd6detail10StrmPlayerFif, global
/* 8150DA50 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150DA54 | 7C 08 02 A6 */	mflr r0
/* 8150DA58 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8150DA5C | DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8150DA60 | FF E0 08 90 */	fmr f31, f1
/* 8150DA64 | 93 E1 00 14 */	stw r31, 0x14(r1)
/* 8150DA68 | 7C 9F 23 78 */	mr r31, r4
/* 8150DA6C | 93 C1 00 10 */	stw r30, 0x10(r1)
/* 8150DA70 | 7C 7E 1B 78 */	mr r30, r3
/* 8150DA74 | 48 02 2E 11 */	bl OSDisableInterrupts
/* 8150DA78 | 57 E0 10 3A */	slwi r0, r31, 2
/* 8150DA7C | 7C 9E 02 14 */	add r4, r30, r0
/* 8150DA80 | D3 E4 04 80 */	stfs f31, 0x480(r4)
/* 8150DA84 | 48 02 2E 29 */	bl OSRestoreInterrupts
/* 8150DA88 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150DA8C | CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8150DA90 | 83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8150DA94 | 83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8150DA98 | 7C 08 03 A6 */	mtlr r0
/* 8150DA9C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150DAA0 | 4E 80 00 20 */	blr
.endfn SetRemoteSend__Q44nw4r3snd6detail10StrmPlayerFif

# .text:0x11CC | 0x8150DAA4 | size: 0x10
# nw4r::snd::detail::StrmPlayer::GetRemoteSend(int) const
.fn GetRemoteSend__Q44nw4r3snd6detail10StrmPlayerCFi, global
/* 8150DAA4 | 54 80 10 3A */	slwi r0, r4, 2
/* 8150DAA8 | 7C 63 02 14 */	add r3, r3, r0
/* 8150DAAC | C0 23 04 80 */	lfs f1, 0x480(r3)
/* 8150DAB0 | 4E 80 00 20 */	blr
.endfn GetRemoteSend__Q44nw4r3snd6detail10StrmPlayerCFi

# .text:0x11DC | 0x8150DAB4 | size: 0x54
# nw4r::snd::detail::StrmPlayer::SetRemoteFxSend(int, float)
.fn SetRemoteFxSend__Q44nw4r3snd6detail10StrmPlayerFif, global
/* 8150DAB4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150DAB8 | 7C 08 02 A6 */	mflr r0
/* 8150DABC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8150DAC0 | DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8150DAC4 | FF E0 08 90 */	fmr f31, f1
/* 8150DAC8 | 93 E1 00 14 */	stw r31, 0x14(r1)
/* 8150DACC | 7C 9F 23 78 */	mr r31, r4
/* 8150DAD0 | 93 C1 00 10 */	stw r30, 0x10(r1)
/* 8150DAD4 | 7C 7E 1B 78 */	mr r30, r3
/* 8150DAD8 | 48 02 2D AD */	bl OSDisableInterrupts
/* 8150DADC | 57 E0 10 3A */	slwi r0, r31, 2
/* 8150DAE0 | 7C 9E 02 14 */	add r4, r30, r0
/* 8150DAE4 | D3 E4 04 90 */	stfs f31, 0x490(r4)
/* 8150DAE8 | 48 02 2D C5 */	bl OSRestoreInterrupts
/* 8150DAEC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150DAF0 | CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8150DAF4 | 83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8150DAF8 | 83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8150DAFC | 7C 08 03 A6 */	mtlr r0
/* 8150DB00 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150DB04 | 4E 80 00 20 */	blr
.endfn SetRemoteFxSend__Q44nw4r3snd6detail10StrmPlayerFif

# .text:0x1230 | 0x8150DB08 | size: 0x10
# nw4r::snd::detail::StrmPlayer::GetRemoteFxSend(int) const
.fn GetRemoteFxSend__Q44nw4r3snd6detail10StrmPlayerCFi, global
/* 8150DB08 | 54 80 10 3A */	slwi r0, r4, 2
/* 8150DB0C | 7C 63 02 14 */	add r3, r3, r0
/* 8150DB10 | C0 23 04 90 */	lfs f1, 0x490(r3)
/* 8150DB14 | 4E 80 00 20 */	blr
.endfn GetRemoteFxSend__Q44nw4r3snd6detail10StrmPlayerCFi

# .text:0x1240 | 0x8150DB18 | size: 0xB4
# nw4r::snd::detail::StrmPlayer::InitParam(int)
.fn InitParam__Q44nw4r3snd6detail10StrmPlayerFi, global
/* 8150DB18 | C0 02 8F A4 */	lfs f0, lbl_816953A4@sda21(r0)
/* 8150DB1C | 38 A0 00 00 */	li r5, 0x0
/* 8150DB20 | C0 22 8F A0 */	lfs f1, lbl_816953A0@sda21(r0)
/* 8150DB24 | 38 00 00 01 */	li r0, 0x1
/* 8150DB28 | 98 A3 00 48 */	stb r5, 0x48(r3)
/* 8150DB2C | 98 A3 00 49 */	stb r5, 0x49(r3)
/* 8150DB30 | 98 A3 00 4A */	stb r5, 0x4a(r3)
/* 8150DB34 | 98 A3 00 53 */	stb r5, 0x53(r3)
/* 8150DB38 | 98 A3 00 4B */	stb r5, 0x4b(r3)
/* 8150DB3C | 98 A3 00 4C */	stb r5, 0x4c(r3)
/* 8150DB40 | 98 A3 00 4D */	stb r5, 0x4d(r3)
/* 8150DB44 | 98 A3 00 4E */	stb r5, 0x4e(r3)
/* 8150DB48 | 98 A3 00 4F */	stb r5, 0x4f(r3)
/* 8150DB4C | 98 A3 00 52 */	stb r5, 0x52(r3)
/* 8150DB50 | 98 A3 00 50 */	stb r5, 0x50(r3)
/* 8150DB54 | 98 A3 00 51 */	stb r5, 0x51(r3)
/* 8150DB58 | 90 A3 04 A0 */	stw r5, 0x4a0(r3)
/* 8150DB5C | 90 A3 00 54 */	stw r5, 0x54(r3)
/* 8150DB60 | D0 23 04 3C */	stfs f1, 0x43c(r3)
/* 8150DB64 | D0 23 04 50 */	stfs f1, 0x450(r3)
/* 8150DB68 | D0 03 04 40 */	stfs f0, 0x440(r3)
/* 8150DB6C | D0 03 04 44 */	stfs f0, 0x444(r3)
/* 8150DB70 | D0 03 04 48 */	stfs f0, 0x448(r3)
/* 8150DB74 | D0 03 04 4C */	stfs f0, 0x44c(r3)
/* 8150DB78 | D0 03 04 54 */	stfs f0, 0x454(r3)
/* 8150DB7C | 90 03 04 58 */	stw r0, 0x458(r3)
/* 8150DB80 | D0 23 04 5C */	stfs f1, 0x45c(r3)
/* 8150DB84 | D0 03 04 60 */	stfs f0, 0x460(r3)
/* 8150DB88 | D0 03 04 64 */	stfs f0, 0x464(r3)
/* 8150DB8C | D0 03 04 68 */	stfs f0, 0x468(r3)
/* 8150DB90 | D0 03 04 6C */	stfs f0, 0x46c(r3)
/* 8150DB94 | D0 03 04 80 */	stfs f0, 0x480(r3)
/* 8150DB98 | D0 03 04 90 */	stfs f0, 0x490(r3)
/* 8150DB9C | D0 03 04 84 */	stfs f0, 0x484(r3)
/* 8150DBA0 | D0 03 04 94 */	stfs f0, 0x494(r3)
/* 8150DBA4 | D0 03 04 88 */	stfs f0, 0x488(r3)
/* 8150DBA8 | D0 03 04 98 */	stfs f0, 0x498(r3)
/* 8150DBAC | D0 03 04 8C */	stfs f0, 0x48c(r3)
/* 8150DBB0 | D0 03 04 9C */	stfs f0, 0x49c(r3)
/* 8150DBB4 | 90 83 04 A4 */	stw r4, 0x4a4(r3)
/* 8150DBB8 | 90 A3 04 A8 */	stw r5, 0x4a8(r3)
/* 8150DBBC | 90 A3 04 AC */	stw r5, 0x4ac(r3)
/* 8150DBC0 | 90 A3 04 E0 */	stw r5, 0x4e0(r3)
/* 8150DBC4 | 90 A3 04 E4 */	stw r5, 0x4e4(r3)
/* 8150DBC8 | 4E 80 00 20 */	blr
.endfn InitParam__Q44nw4r3snd6detail10StrmPlayerFi

# .text:0x12F4 | 0x8150DBCC | size: 0x100
# nw4r::snd::detail::StrmPlayer::Setup(const nw4r::snd::detail::StrmPlayer::StrmHeader*)
.fn Setup__Q44nw4r3snd6detail10StrmPlayerFPCQ54nw4r3snd6detail10StrmPlayer10StrmHeader, global
/* 8150DBCC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150DBD0 | 7C 08 02 A6 */	mflr r0
/* 8150DBD4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8150DBD8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8150DBDC | 48 0E B8 E5 */	bl _savegpr_27
/* 8150DBE0 | 7C 7F 1B 78 */	mr r31, r3
/* 8150DBE4 | 48 00 00 E9 */	bl SetupPlayer__Q44nw4r3snd6detail10StrmPlayerFPCQ54nw4r3snd6detail10StrmPlayer10StrmHeader
/* 8150DBE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150DBEC | 40 82 00 10 */	bne .L_8150DBFC
/* 8150DBF0 | 7F E3 FB 78 */	mr r3, r31
/* 8150DBF4 | 48 00 07 15 */	bl ForceStop__Q44nw4r3snd6detail10StrmPlayerFv
/* 8150DBF8 | 48 00 00 BC */	b .L_8150DCB4
.L_8150DBFC:
/* 8150DBFC | 38 00 00 00 */	li r0, 0x0
/* 8150DC00 | 3B 60 00 00 */	li r27, 0x0
/* 8150DC04 | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 8150DC08 | 48 00 00 2C */	b .L_8150DC34
.L_8150DC0C:
/* 8150DC0C | 7F E3 FB 78 */	mr r3, r31
/* 8150DC10 | 38 80 00 00 */	li r4, 0x0
/* 8150DC14 | 4B FF F9 5D */	bl UpdateLoadingBlockIndex__Q44nw4r3snd6detail10StrmPlayerFQ64nw4r3snd6detail10StrmPlayer11LoadCommand6Status
/* 8150DC18 | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 8150DC1C | 88 1F 00 53 */	lbz r0, 0x53(r31)
/* 8150DC20 | 38 63 00 01 */	addi r3, r3, 0x1
/* 8150DC24 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150DC28 | 90 7F 00 58 */	stw r3, 0x58(r31)
/* 8150DC2C | 40 82 00 14 */	bne .L_8150DC40
/* 8150DC30 | 3B 7B 00 01 */	addi r27, r27, 0x1
.L_8150DC34:
/* 8150DC34 | 80 1F 00 68 */	lwz r0, 0x68(r31)
/* 8150DC38 | 7C 1B 00 00 */	cmpw r27, r0
/* 8150DC3C | 41 80 FF D0 */	blt .L_8150DC0C
.L_8150DC40:
/* 8150DC40 | 80 7F 00 28 */	lwz r3, 0x28(r31)
/* 8150DC44 | 28 03 00 02 */	cmplwi r3, 0x2
/* 8150DC48 | 41 81 00 6C */	bgt .L_8150DCB4
/* 8150DC4C | 88 1F 00 11 */	lbz r0, 0x11(r31)
/* 8150DC50 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150DC54 | 40 82 00 60 */	bne .L_8150DCB4
/* 8150DC58 | 3B A3 FF FF */	subi r29, r3, 0x1
/* 8150DC5C | 48 02 2C 29 */	bl OSDisableInterrupts
/* 8150DC60 | 7C 7E 1B 78 */	mr r30, r3
/* 8150DC64 | 7F FB FB 78 */	mr r27, r31
/* 8150DC68 | 3B 80 00 00 */	li r28, 0x0
/* 8150DC6C | 48 00 00 2C */	b .L_8150DC98
.L_8150DC70:
/* 8150DC70 | 80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8150DC74 | 7F 84 E3 78 */	mr r4, r28
/* 8150DC78 | 80 DF 00 38 */	lwz r6, 0x38(r31)
/* 8150DC7C | 7C 1D 01 D6 */	mullw r0, r29, r0
/* 8150DC80 | 80 7F 04 38 */	lwz r3, 0x438(r31)
/* 8150DC84 | 80 BB 04 A8 */	lwz r5, 0x4a8(r27)
/* 8150DC88 | 7C C6 02 14 */	add r6, r6, r0
/* 8150DC8C | 4B FE C7 0D */	bl StopAtPoint__Q44nw4r3snd6detail7AxVoiceFiPCvUl
/* 8150DC90 | 3B 7B 00 38 */	addi r27, r27, 0x38
/* 8150DC94 | 3B 9C 00 01 */	addi r28, r28, 0x1
.L_8150DC98:
/* 8150DC98 | 80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8150DC9C | 7C 1C 00 00 */	cmpw r28, r0
/* 8150DCA0 | 41 80 FF D0 */	blt .L_8150DC70
/* 8150DCA4 | 7F C3 F3 78 */	mr r3, r30
/* 8150DCA8 | 48 02 2C 05 */	bl OSRestoreInterrupts
/* 8150DCAC | 38 00 00 01 */	li r0, 0x1
/* 8150DCB0 | 98 1F 00 52 */	stb r0, 0x52(r31)
.L_8150DCB4:
/* 8150DCB4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8150DCB8 | 48 0E B8 55 */	bl _restgpr_27
/* 8150DCBC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150DCC0 | 7C 08 03 A6 */	mtlr r0
/* 8150DCC4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150DCC8 | 4E 80 00 20 */	blr
.endfn Setup__Q44nw4r3snd6detail10StrmPlayerFPCQ54nw4r3snd6detail10StrmPlayer10StrmHeader

# .text:0x13F4 | 0x8150DCCC | size: 0x49C
# nw4r::snd::detail::StrmPlayer::SetupPlayer(const nw4r::snd::detail::StrmPlayer::StrmHeader*)
.fn SetupPlayer__Q44nw4r3snd6detail10StrmPlayerFPCQ54nw4r3snd6detail10StrmPlayer10StrmHeader, global
/* 8150DCCC | 94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 8150DCD0 | 7C 08 02 A6 */	mflr r0
/* 8150DCD4 | 90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8150DCD8 | 39 61 00 D0 */	addi r11, r1, 0xd0
/* 8150DCDC | 48 0E B7 D5 */	bl _savegpr_23
/* 8150DCE0 | 80 A3 04 2C */	lwz r5, 0x42c(r3)
/* 8150DCE4 | 7C 7F 1B 78 */	mr r31, r3
/* 8150DCE8 | 8A E4 00 00 */	lbz r23, 0x0(r4)
/* 8150DCEC | 80 05 00 08 */	lwz r0, 0x8(r5)
/* 8150DCF0 | 8B 04 00 01 */	lbz r24, 0x1(r4)
/* 8150DCF4 | 28 17 00 02 */	cmplwi r23, 0x2
/* 8150DCF8 | 8B 24 00 02 */	lbz r25, 0x2(r4)
/* 8150DCFC | 83 44 00 04 */	lwz r26, 0x4(r4)
/* 8150DD00 | A3 64 00 08 */	lhz r27, 0x8(r4)
/* 8150DD04 | 83 84 00 0C */	lwz r28, 0xc(r4)
/* 8150DD08 | 83 A4 00 10 */	lwz r29, 0x10(r4)
/* 8150DD0C | 83 C4 00 14 */	lwz r30, 0x14(r4)
/* 8150DD10 | 81 84 00 18 */	lwz r12, 0x18(r4)
/* 8150DD14 | 81 64 00 1C */	lwz r11, 0x1c(r4)
/* 8150DD18 | 81 44 00 20 */	lwz r10, 0x20(r4)
/* 8150DD1C | 81 24 00 24 */	lwz r9, 0x24(r4)
/* 8150DD20 | 81 04 00 28 */	lwz r8, 0x28(r4)
/* 8150DD24 | 80 E4 00 2C */	lwz r7, 0x2c(r4)
/* 8150DD28 | 80 C4 00 30 */	lwz r6, 0x30(r4)
/* 8150DD2C | 80 A4 00 34 */	lwz r5, 0x34(r4)
/* 8150DD30 | 9A E3 00 10 */	stb r23, 0x10(r3)
/* 8150DD34 | 9B 03 00 11 */	stb r24, 0x11(r3)
/* 8150DD38 | 9B 23 00 12 */	stb r25, 0x12(r3)
/* 8150DD3C | 93 43 00 14 */	stw r26, 0x14(r3)
/* 8150DD40 | B3 63 00 18 */	sth r27, 0x18(r3)
/* 8150DD44 | 93 83 00 1C */	stw r28, 0x1c(r3)
/* 8150DD48 | 93 A3 00 20 */	stw r29, 0x20(r3)
/* 8150DD4C | 93 C3 00 24 */	stw r30, 0x24(r3)
/* 8150DD50 | 91 83 00 28 */	stw r12, 0x28(r3)
/* 8150DD54 | 91 63 00 2C */	stw r11, 0x2c(r3)
/* 8150DD58 | 91 43 00 30 */	stw r10, 0x30(r3)
/* 8150DD5C | 91 23 00 34 */	stw r9, 0x34(r3)
/* 8150DD60 | 91 03 00 38 */	stw r8, 0x38(r3)
/* 8150DD64 | 90 E3 00 3C */	stw r7, 0x3c(r3)
/* 8150DD68 | 90 C3 00 40 */	stw r6, 0x40(r3)
/* 8150DD6C | 90 A3 00 44 */	stw r5, 0x44(r3)
/* 8150DD70 | 40 82 00 E8 */	bne .L_8150DE58
/* 8150DD74 | 7F E5 FB 78 */	mr r5, r31
/* 8150DD78 | 38 C0 00 00 */	li r6, 0x0
/* 8150DD7C | 48 00 00 D0 */	b .L_8150DE4C
.L_8150DD80:
/* 8150DD80 | A1 04 00 38 */	lhz r8, 0x38(r4)
/* 8150DD84 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 8150DD88 | A0 E4 00 3A */	lhz r7, 0x3a(r4)
/* 8150DD8C | B1 05 04 B0 */	sth r8, 0x4b0(r5)
/* 8150DD90 | A1 04 00 3C */	lhz r8, 0x3c(r4)
/* 8150DD94 | B0 E5 04 B2 */	sth r7, 0x4b2(r5)
/* 8150DD98 | A0 E4 00 3E */	lhz r7, 0x3e(r4)
/* 8150DD9C | B1 05 04 B4 */	sth r8, 0x4b4(r5)
/* 8150DDA0 | A1 04 00 40 */	lhz r8, 0x40(r4)
/* 8150DDA4 | B0 E5 04 B6 */	sth r7, 0x4b6(r5)
/* 8150DDA8 | A0 E4 00 42 */	lhz r7, 0x42(r4)
/* 8150DDAC | B1 05 04 B8 */	sth r8, 0x4b8(r5)
/* 8150DDB0 | A1 04 00 44 */	lhz r8, 0x44(r4)
/* 8150DDB4 | B0 E5 04 BA */	sth r7, 0x4ba(r5)
/* 8150DDB8 | A0 E4 00 46 */	lhz r7, 0x46(r4)
/* 8150DDBC | B1 05 04 BC */	sth r8, 0x4bc(r5)
/* 8150DDC0 | A1 04 00 48 */	lhz r8, 0x48(r4)
/* 8150DDC4 | B0 E5 04 BE */	sth r7, 0x4be(r5)
/* 8150DDC8 | A0 E4 00 4A */	lhz r7, 0x4a(r4)
/* 8150DDCC | B1 05 04 C0 */	sth r8, 0x4c0(r5)
/* 8150DDD0 | A1 04 00 4C */	lhz r8, 0x4c(r4)
/* 8150DDD4 | B0 E5 04 C2 */	sth r7, 0x4c2(r5)
/* 8150DDD8 | A0 E4 00 4E */	lhz r7, 0x4e(r4)
/* 8150DDDC | B1 05 04 C4 */	sth r8, 0x4c4(r5)
/* 8150DDE0 | A1 04 00 50 */	lhz r8, 0x50(r4)
/* 8150DDE4 | B0 E5 04 C6 */	sth r7, 0x4c6(r5)
/* 8150DDE8 | A0 E4 00 52 */	lhz r7, 0x52(r4)
/* 8150DDEC | B1 05 04 C8 */	sth r8, 0x4c8(r5)
/* 8150DDF0 | A1 04 00 54 */	lhz r8, 0x54(r4)
/* 8150DDF4 | B0 E5 04 CA */	sth r7, 0x4ca(r5)
/* 8150DDF8 | A0 E4 00 56 */	lhz r7, 0x56(r4)
/* 8150DDFC | B1 05 04 CC */	sth r8, 0x4cc(r5)
/* 8150DE00 | A1 04 00 58 */	lhz r8, 0x58(r4)
/* 8150DE04 | B0 E5 04 CE */	sth r7, 0x4ce(r5)
/* 8150DE08 | A0 E4 00 5A */	lhz r7, 0x5a(r4)
/* 8150DE0C | B1 05 04 D0 */	sth r8, 0x4d0(r5)
/* 8150DE10 | A1 04 00 5C */	lhz r8, 0x5c(r4)
/* 8150DE14 | B0 E5 04 D2 */	sth r7, 0x4d2(r5)
/* 8150DE18 | A0 E4 00 5E */	lhz r7, 0x5e(r4)
/* 8150DE1C | B1 05 04 D4 */	sth r8, 0x4d4(r5)
/* 8150DE20 | A1 04 00 60 */	lhz r8, 0x60(r4)
/* 8150DE24 | B0 E5 04 D6 */	sth r7, 0x4d6(r5)
/* 8150DE28 | A0 E4 00 62 */	lhz r7, 0x62(r4)
/* 8150DE2C | B1 05 04 D8 */	sth r8, 0x4d8(r5)
/* 8150DE30 | A1 04 00 64 */	lhz r8, 0x64(r4)
/* 8150DE34 | B0 E5 04 DA */	sth r7, 0x4da(r5)
/* 8150DE38 | A0 E4 00 66 */	lhz r7, 0x66(r4)
/* 8150DE3C | 38 84 00 30 */	addi r4, r4, 0x30
/* 8150DE40 | B1 05 04 DC */	sth r8, 0x4dc(r5)
/* 8150DE44 | B0 E5 04 DE */	sth r7, 0x4de(r5)
/* 8150DE48 | 38 A5 00 38 */	addi r5, r5, 0x38
.L_8150DE4C:
/* 8150DE4C | 88 E3 00 12 */	lbz r7, 0x12(r3)
/* 8150DE50 | 7C 06 38 00 */	cmpw r6, r7
/* 8150DE54 | 41 80 FF 2C */	blt .L_8150DD80
.L_8150DE58:
/* 8150DE58 | 80 C3 00 1C */	lwz r6, 0x1c(r3)
/* 8150DE5C | 80 A3 00 30 */	lwz r5, 0x30(r3)
/* 8150DE60 | 80 83 00 2C */	lwz r4, 0x2c(r3)
/* 8150DE64 | 7C C6 2B 96 */	divwu r6, r6, r5
/* 8150DE68 | 80 A3 00 28 */	lwz r5, 0x28(r3)
/* 8150DE6C | 2C 04 20 00 */	cmpwi r4, 0x2000
/* 8150DE70 | 90 83 00 60 */	stw r4, 0x60(r3)
/* 8150DE74 | 38 A5 FF FF */	subi r5, r5, 0x1
/* 8150DE78 | 90 A3 00 88 */	stw r5, 0x88(r3)
/* 8150DE7C | 90 C3 00 84 */	stw r6, 0x84(r3)
/* 8150DE80 | 40 81 00 0C */	ble .L_8150DE8C
/* 8150DE84 | 38 60 00 00 */	li r3, 0x0
/* 8150DE88 | 48 00 02 C8 */	b .L_8150E150
.L_8150DE8C:
/* 8150DE8C | 7C 00 23 96 */	divwu r0, r0, r4
/* 8150DE90 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 8150DE94 | 90 03 00 64 */	stw r0, 0x64(r3)
/* 8150DE98 | 40 80 00 0C */	bge .L_8150DEA4
/* 8150DE9C | 38 60 00 00 */	li r3, 0x0
/* 8150DEA0 | 48 00 02 B0 */	b .L_8150E150
.L_8150DEA4:
/* 8150DEA4 | 2C 00 00 20 */	cmpwi r0, 0x20
/* 8150DEA8 | 40 81 00 0C */	ble .L_8150DEB4
/* 8150DEAC | 38 00 00 20 */	li r0, 0x20
/* 8150DEB0 | 90 03 00 64 */	stw r0, 0x64(r3)
.L_8150DEB4:
/* 8150DEB4 | 80 83 00 64 */	lwz r4, 0x64(r3)
/* 8150DEB8 | 38 A0 00 00 */	li r5, 0x0
/* 8150DEBC | 80 C3 00 30 */	lwz r6, 0x30(r3)
/* 8150DEC0 | 38 04 FF FF */	subi r0, r4, 0x1
/* 8150DEC4 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8150DEC8 | 90 03 00 68 */	stw r0, 0x68(r3)
/* 8150DECC | 90 03 00 5C */	stw r0, 0x5c(r3)
/* 8150DED0 | 41 82 00 4C */	beq .L_8150DF1C
/* 8150DED4 | 80 03 00 8C */	lwz r0, 0x8c(r3)
/* 8150DED8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150DEDC | 40 82 00 10 */	bne .L_8150DEEC
/* 8150DEE0 | 80 03 00 90 */	lwz r0, 0x90(r3)
/* 8150DEE4 | 7C A0 33 D6 */	divw r5, r0, r6
/* 8150DEE8 | 48 00 00 34 */	b .L_8150DF1C
.L_8150DEEC:
/* 8150DEEC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8150DEF0 | 40 82 00 2C */	bne .L_8150DF1C
/* 8150DEF4 | 80 A3 00 14 */	lwz r5, 0x14(r3)
/* 8150DEF8 | 3C 80 10 62 */	lis r4, 0x1062
/* 8150DEFC | 80 03 00 90 */	lwz r0, 0x90(r3)
/* 8150DF00 | 38 84 4D D3 */	addi r4, r4, 0x4dd3
/* 8150DF04 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 8150DF08 | 7C 04 00 96 */	mulhw r0, r4, r0
/* 8150DF0C | 7C 00 36 70 */	srawi r0, r0, 6
/* 8150DF10 | 54 04 0F FE */	srwi r4, r0, 31
/* 8150DF14 | 7C 00 22 14 */	add r0, r0, r4
/* 8150DF18 | 7C A0 33 D6 */	divw r5, r0, r6
.L_8150DF1C:
/* 8150DF1C | 88 03 00 4F */	lbz r0, 0x4f(r3)
/* 8150DF20 | 38 80 00 00 */	li r4, 0x0
/* 8150DF24 | 90 A3 00 80 */	stw r5, 0x80(r3)
/* 8150DF28 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150DF2C | 90 A3 00 74 */	stw r5, 0x74(r3)
/* 8150DF30 | 90 83 00 70 */	stw r4, 0x70(r3)
/* 8150DF34 | 90 83 00 7C */	stw r4, 0x7c(r3)
/* 8150DF38 | 41 82 00 10 */	beq .L_8150DF48
/* 8150DF3C | 80 03 00 28 */	lwz r0, 0x28(r3)
/* 8150DF40 | 90 03 00 6C */	stw r0, 0x6c(r3)
/* 8150DF44 | 48 00 00 40 */	b .L_8150DF84
.L_8150DF48:
/* 8150DF48 | 80 C3 00 88 */	lwz r6, 0x88(r3)
/* 8150DF4C | 80 E3 00 68 */	lwz r7, 0x68(r3)
/* 8150DF50 | 7C 85 30 50 */	subf r4, r5, r6
/* 8150DF54 | 80 03 00 84 */	lwz r0, 0x84(r3)
/* 8150DF58 | 38 A4 00 01 */	addi r5, r4, 0x1
/* 8150DF5C | 39 07 00 01 */	addi r8, r7, 0x1
/* 8150DF60 | 7C 80 30 50 */	subf r4, r0, r6
/* 8150DF64 | 7C A5 40 50 */	subf r5, r5, r8
/* 8150DF68 | 38 84 00 01 */	addi r4, r4, 0x1
/* 8150DF6C | 7C 05 23 D6 */	divw r0, r5, r4
/* 8150DF70 | 7C 00 21 D6 */	mullw r0, r0, r4
/* 8150DF74 | 7C 00 28 51 */	subf. r0, r0, r5
/* 8150DF78 | 40 82 00 08 */	bne .L_8150DF80
/* 8150DF7C | 7D 07 43 78 */	mr r7, r8
.L_8150DF80:
/* 8150DF80 | 90 E3 00 6C */	stw r7, 0x6c(r3)
.L_8150DF84:
/* 8150DF84 | 80 03 00 6C */	lwz r0, 0x6c(r3)
/* 8150DF88 | 90 03 00 78 */	stw r0, 0x78(r3)
/* 8150DF8C | 48 02 28 F9 */	bl OSDisableInterrupts
/* 8150DF90 | 88 1F 00 12 */	lbz r0, 0x12(r31)
/* 8150DF94 | 7C 7E 1B 78 */	mr r30, r3
/* 8150DF98 | 38 80 00 02 */	li r4, 0x2
/* 8150DF9C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8150DFA0 | 41 81 00 08 */	bgt .L_8150DFA8
/* 8150DFA4 | 7C 04 03 78 */	mr r4, r0
.L_8150DFA8:
/* 8150DFA8 | 90 9F 04 A0 */	stw r4, 0x4a0(r31)
/* 8150DFAC | 7F E3 FB 78 */	mr r3, r31
/* 8150DFB0 | 80 BF 04 A4 */	lwz r5, 0x4a4(r31)
/* 8150DFB4 | 48 00 01 B5 */	bl AllocChannels__Q44nw4r3snd6detail10StrmPlayerFii
/* 8150DFB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150DFBC | 40 82 00 14 */	bne .L_8150DFD0
/* 8150DFC0 | 7F C3 F3 78 */	mr r3, r30
/* 8150DFC4 | 48 02 28 E9 */	bl OSRestoreInterrupts
/* 8150DFC8 | 38 60 00 00 */	li r3, 0x0
/* 8150DFCC | 48 00 01 84 */	b .L_8150E150
.L_8150DFD0:
/* 8150DFD0 | 7F C3 F3 78 */	mr r3, r30
/* 8150DFD4 | 48 02 28 D9 */	bl OSRestoreInterrupts
/* 8150DFD8 | 48 02 28 AD */	bl OSDisableInterrupts
/* 8150DFDC | 88 BF 00 10 */	lbz r5, 0x10(r31)
/* 8150DFE0 | 38 00 00 01 */	li r0, 0x1
/* 8150DFE4 | 38 80 00 00 */	li r4, 0x0
/* 8150DFE8 | 7C 7E 1B 78 */	mr r30, r3
/* 8150DFEC | 98 A1 00 08 */	stb r5, 0x8(r1)
/* 8150DFF0 | 98 01 00 09 */	stb r0, 0x9(r1)
/* 8150DFF4 | 80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8150DFF8 | 98 01 00 0A */	stb r0, 0xa(r1)
/* 8150DFFC | 80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8150E000 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8150E004 | 90 81 00 10 */	stw r4, 0x10(r1)
/* 8150E008 | 88 1F 00 10 */	lbz r0, 0x10(r31)
/* 8150E00C | 28 00 00 01 */	cmplwi r0, 0x1
/* 8150E010 | 40 82 00 0C */	bne .L_8150E01C
/* 8150E014 | 38 80 00 0A */	li r4, 0xa
/* 8150E018 | 48 00 00 10 */	b .L_8150E028
.L_8150E01C:
/* 8150E01C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150E020 | 40 82 00 08 */	bne .L_8150E028
/* 8150E024 | 38 80 00 19 */	li r4, 0x19
.L_8150E028:
/* 8150E028 | 80 7F 00 60 */	lwz r3, 0x60(r31)
/* 8150E02C | 80 1F 00 78 */	lwz r0, 0x78(r31)
/* 8150E030 | 7C 63 01 D6 */	mullw r3, r3, r0
/* 8150E034 | 4B FE CF 51 */	bl GetSampleByByte__Q44nw4r3snd6detail7AxVoiceFUlQ54nw4r3snd6detail7AxVoice6Format
/* 8150E038 | 90 61 00 14 */	stw r3, 0x14(r1)
/* 8150E03C | 7F E4 FB 78 */	mr r4, r31
/* 8150E040 | 38 61 00 18 */	addi r3, r1, 0x18
/* 8150E044 | 38 A0 00 00 */	li r5, 0x0
/* 8150E048 | 48 00 00 D8 */	b .L_8150E120
.L_8150E04C:
/* 8150E04C | 80 04 04 A8 */	lwz r0, 0x4a8(r4)
/* 8150E050 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 8150E054 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 8150E058 | A0 C4 04 B0 */	lhz r6, 0x4b0(r4)
/* 8150E05C | A0 04 04 B2 */	lhz r0, 0x4b2(r4)
/* 8150E060 | B0 C3 00 14 */	sth r6, 0x14(r3)
/* 8150E064 | B0 03 00 16 */	sth r0, 0x16(r3)
/* 8150E068 | A0 C4 04 B4 */	lhz r6, 0x4b4(r4)
/* 8150E06C | A0 04 04 B6 */	lhz r0, 0x4b6(r4)
/* 8150E070 | B0 C3 00 18 */	sth r6, 0x18(r3)
/* 8150E074 | B0 03 00 1A */	sth r0, 0x1a(r3)
/* 8150E078 | A0 C4 04 B8 */	lhz r6, 0x4b8(r4)
/* 8150E07C | A0 04 04 BA */	lhz r0, 0x4ba(r4)
/* 8150E080 | B0 C3 00 1C */	sth r6, 0x1c(r3)
/* 8150E084 | B0 03 00 1E */	sth r0, 0x1e(r3)
/* 8150E088 | A0 C4 04 BC */	lhz r6, 0x4bc(r4)
/* 8150E08C | A0 04 04 BE */	lhz r0, 0x4be(r4)
/* 8150E090 | B0 C3 00 20 */	sth r6, 0x20(r3)
/* 8150E094 | B0 03 00 22 */	sth r0, 0x22(r3)
/* 8150E098 | A0 C4 04 C0 */	lhz r6, 0x4c0(r4)
/* 8150E09C | A0 04 04 C2 */	lhz r0, 0x4c2(r4)
/* 8150E0A0 | B0 C3 00 24 */	sth r6, 0x24(r3)
/* 8150E0A4 | B0 03 00 26 */	sth r0, 0x26(r3)
/* 8150E0A8 | A0 C4 04 C4 */	lhz r6, 0x4c4(r4)
/* 8150E0AC | A0 04 04 C6 */	lhz r0, 0x4c6(r4)
/* 8150E0B0 | B0 C3 00 28 */	sth r6, 0x28(r3)
/* 8150E0B4 | B0 03 00 2A */	sth r0, 0x2a(r3)
/* 8150E0B8 | A0 C4 04 C8 */	lhz r6, 0x4c8(r4)
/* 8150E0BC | A0 04 04 CA */	lhz r0, 0x4ca(r4)
/* 8150E0C0 | B0 C3 00 2C */	sth r6, 0x2c(r3)
/* 8150E0C4 | B0 03 00 2E */	sth r0, 0x2e(r3)
/* 8150E0C8 | A0 C4 04 CC */	lhz r6, 0x4cc(r4)
/* 8150E0CC | A0 04 04 CE */	lhz r0, 0x4ce(r4)
/* 8150E0D0 | B0 C3 00 30 */	sth r6, 0x30(r3)
/* 8150E0D4 | B0 03 00 32 */	sth r0, 0x32(r3)
/* 8150E0D8 | A0 C4 04 D0 */	lhz r6, 0x4d0(r4)
/* 8150E0DC | A0 04 04 D2 */	lhz r0, 0x4d2(r4)
/* 8150E0E0 | B0 C3 00 34 */	sth r6, 0x34(r3)
/* 8150E0E4 | B0 03 00 36 */	sth r0, 0x36(r3)
/* 8150E0E8 | A0 C4 04 D4 */	lhz r6, 0x4d4(r4)
/* 8150E0EC | A0 04 04 D6 */	lhz r0, 0x4d6(r4)
/* 8150E0F0 | B0 C3 00 38 */	sth r6, 0x38(r3)
/* 8150E0F4 | B0 03 00 3A */	sth r0, 0x3a(r3)
/* 8150E0F8 | A0 04 04 D8 */	lhz r0, 0x4d8(r4)
/* 8150E0FC | B0 03 00 3C */	sth r0, 0x3c(r3)
/* 8150E100 | A0 04 04 DA */	lhz r0, 0x4da(r4)
/* 8150E104 | B0 03 00 3E */	sth r0, 0x3e(r3)
/* 8150E108 | A0 04 04 DC */	lhz r0, 0x4dc(r4)
/* 8150E10C | B0 03 00 40 */	sth r0, 0x40(r3)
/* 8150E110 | A0 04 04 DE */	lhz r0, 0x4de(r4)
/* 8150E114 | 38 84 00 38 */	addi r4, r4, 0x38
/* 8150E118 | B0 03 00 42 */	sth r0, 0x42(r3)
/* 8150E11C | 38 63 00 44 */	addi r3, r3, 0x44
.L_8150E120:
/* 8150E120 | 80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8150E124 | 7C 05 00 00 */	cmpw r5, r0
/* 8150E128 | 41 80 FF 24 */	blt .L_8150E04C
/* 8150E12C | 80 7F 04 38 */	lwz r3, 0x438(r31)
/* 8150E130 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8150E134 | 4B FE AF F9 */	bl Setup__Q44nw4r3snd6detail7AxVoiceFRCQ44nw4r3snd6detail8WaveData
/* 8150E138 | 80 7F 04 38 */	lwz r3, 0x438(r31)
/* 8150E13C | 38 80 00 01 */	li r4, 0x1
/* 8150E140 | 4B FE C4 35 */	bl SetVoiceType__Q44nw4r3snd6detail7AxVoiceFQ54nw4r3snd6detail7AxVoice9VoiceType
/* 8150E144 | 7F C3 F3 78 */	mr r3, r30
/* 8150E148 | 48 02 27 65 */	bl OSRestoreInterrupts
/* 8150E14C | 38 60 00 01 */	li r3, 0x1
.L_8150E150:
/* 8150E150 | 39 61 00 D0 */	addi r11, r1, 0xd0
/* 8150E154 | 48 0E B3 A9 */	bl _restgpr_23
/* 8150E158 | 80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 8150E15C | 7C 08 03 A6 */	mtlr r0
/* 8150E160 | 38 21 00 D0 */	addi r1, r1, 0xd0
/* 8150E164 | 4E 80 00 20 */	blr
.endfn SetupPlayer__Q44nw4r3snd6detail10StrmPlayerFPCQ54nw4r3snd6detail10StrmPlayer10StrmHeader

# .text:0x1890 | 0x8150E168 | size: 0x104
# nw4r::snd::detail::StrmPlayer::AllocChannels(int, int)
.fn AllocChannels__Q44nw4r3snd6detail10StrmPlayerFii, global
/* 8150E168 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150E16C | 7C 08 02 A6 */	mflr r0
/* 8150E170 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8150E174 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8150E178 | 48 0E B3 49 */	bl _savegpr_27
/* 8150E17C | 7C 7B 1B 78 */	mr r27, r3
/* 8150E180 | 7C 9C 23 78 */	mr r28, r4
/* 8150E184 | 7C BD 2B 78 */	mr r29, r5
/* 8150E188 | 3B C0 00 00 */	li r30, 0x0
/* 8150E18C | 7F 7F DB 78 */	mr r31, r27
/* 8150E190 | 48 00 00 5C */	b .L_8150E1EC
.L_8150E194:
/* 8150E194 | 80 7B 04 2C */	lwz r3, 0x42c(r27)
/* 8150E198 | 4B FF E1 BD */	bl Alloc__Q44nw4r3snd6detail14StrmBufferPoolFv
/* 8150E19C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150E1A0 | 40 82 00 34 */	bne .L_8150E1D4
/* 8150E1A4 | 7F 7F DB 78 */	mr r31, r27
/* 8150E1A8 | 3B A0 00 00 */	li r29, 0x0
/* 8150E1AC | 48 00 00 18 */	b .L_8150E1C4
.L_8150E1B0:
/* 8150E1B0 | 80 7B 04 2C */	lwz r3, 0x42c(r27)
/* 8150E1B4 | 80 9F 04 A8 */	lwz r4, 0x4a8(r31)
/* 8150E1B8 | 4B FF E2 81 */	bl Free__Q44nw4r3snd6detail14StrmBufferPoolFPv
/* 8150E1BC | 3B FF 00 38 */	addi r31, r31, 0x38
/* 8150E1C0 | 3B BD 00 01 */	addi r29, r29, 0x1
.L_8150E1C4:
/* 8150E1C4 | 7C 1D F0 00 */	cmpw r29, r30
/* 8150E1C8 | 41 80 FF E8 */	blt .L_8150E1B0
/* 8150E1CC | 38 60 00 00 */	li r3, 0x0
/* 8150E1D0 | 48 00 00 84 */	b .L_8150E254
.L_8150E1D4:
/* 8150E1D4 | 90 7F 04 A8 */	stw r3, 0x4a8(r31)
/* 8150E1D8 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8150E1DC | 80 7B 04 2C */	lwz r3, 0x42c(r27)
/* 8150E1E0 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 8150E1E4 | 90 1F 04 AC */	stw r0, 0x4ac(r31)
/* 8150E1E8 | 3B FF 00 38 */	addi r31, r31, 0x38
.L_8150E1EC:
/* 8150E1EC | 7C 1E E0 00 */	cmpw r30, r28
/* 8150E1F0 | 41 80 FF A4 */	blt .L_8150E194
/* 8150E1F4 | 4B FE 93 D9 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 8150E1F8 | 3C E0 81 51 */	lis r7, VoiceCallbackFunc__Q44nw4r3snd6detail10StrmPlayerFPQ44nw4r3snd6detail7AxVoiceQ54nw4r3snd6detail7AxVoice14CallbackStatusPv@ha
/* 8150E1FC | 7F 84 E3 78 */	mr r4, r28
/* 8150E200 | 7F A5 EB 78 */	mr r5, r29
/* 8150E204 | 7F 68 DB 78 */	mr r8, r27
/* 8150E208 | 38 E7 E4 30 */	addi r7, r7, VoiceCallbackFunc__Q44nw4r3snd6detail10StrmPlayerFPQ44nw4r3snd6detail7AxVoiceQ54nw4r3snd6detail7AxVoice14CallbackStatusPv@l
/* 8150E20C | 38 C0 00 FF */	li r6, 0xff
/* 8150E210 | 4B FE 9A 55 */	bl AllocVoice__Q44nw4r3snd6detail9AxManagerFiiiPFPQ44nw4r3snd6detail7AxVoiceQ54nw4r3snd6detail7AxVoice14CallbackStatusPv_vPv
/* 8150E214 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150E218 | 40 82 00 34 */	bne .L_8150E24C
/* 8150E21C | 7F 7F DB 78 */	mr r31, r27
/* 8150E220 | 3B A0 00 00 */	li r29, 0x0
/* 8150E224 | 48 00 00 18 */	b .L_8150E23C
.L_8150E228:
/* 8150E228 | 80 7B 04 2C */	lwz r3, 0x42c(r27)
/* 8150E22C | 80 9F 04 A8 */	lwz r4, 0x4a8(r31)
/* 8150E230 | 4B FF E2 09 */	bl Free__Q44nw4r3snd6detail14StrmBufferPoolFPv
/* 8150E234 | 3B FF 00 38 */	addi r31, r31, 0x38
/* 8150E238 | 3B BD 00 01 */	addi r29, r29, 0x1
.L_8150E23C:
/* 8150E23C | 7C 1D E0 00 */	cmpw r29, r28
/* 8150E240 | 41 80 FF E8 */	blt .L_8150E228
/* 8150E244 | 38 60 00 00 */	li r3, 0x0
/* 8150E248 | 48 00 00 0C */	b .L_8150E254
.L_8150E24C:
/* 8150E24C | 90 7B 04 38 */	stw r3, 0x438(r27)
/* 8150E250 | 38 60 00 01 */	li r3, 0x1
.L_8150E254:
/* 8150E254 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8150E258 | 48 0E B2 B5 */	bl _restgpr_27
/* 8150E25C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150E260 | 7C 08 03 A6 */	mtlr r0
/* 8150E264 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150E268 | 4E 80 00 20 */	blr
.endfn AllocChannels__Q44nw4r3snd6detail10StrmPlayerFii

# .text:0x1994 | 0x8150E26C | size: 0x9C
# nw4r::snd::detail::StrmPlayer::FreeChannels()
.fn FreeChannels__Q44nw4r3snd6detail10StrmPlayerFv, global
/* 8150E26C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150E270 | 7C 08 02 A6 */	mflr r0
/* 8150E274 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8150E278 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8150E27C | 48 0E B2 45 */	bl _savegpr_27
/* 8150E280 | 7C 7B 1B 78 */	mr r27, r3
/* 8150E284 | 48 02 26 01 */	bl OSDisableInterrupts
/* 8150E288 | 7C 7F 1B 78 */	mr r31, r3
/* 8150E28C | 7F 7D DB 78 */	mr r29, r27
/* 8150E290 | 3B 80 00 00 */	li r28, 0x0
/* 8150E294 | 3B C0 00 00 */	li r30, 0x0
/* 8150E298 | 48 00 00 28 */	b .L_8150E2C0
.L_8150E29C:
/* 8150E29C | 80 9D 04 A8 */	lwz r4, 0x4a8(r29)
/* 8150E2A0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8150E2A4 | 41 82 00 14 */	beq .L_8150E2B8
/* 8150E2A8 | 80 7B 04 2C */	lwz r3, 0x42c(r27)
/* 8150E2AC | 4B FF E1 8D */	bl Free__Q44nw4r3snd6detail14StrmBufferPoolFPv
/* 8150E2B0 | 93 DD 04 A8 */	stw r30, 0x4a8(r29)
/* 8150E2B4 | 93 DD 04 AC */	stw r30, 0x4ac(r29)
.L_8150E2B8:
/* 8150E2B8 | 3B BD 00 38 */	addi r29, r29, 0x38
/* 8150E2BC | 3B 9C 00 01 */	addi r28, r28, 0x1
.L_8150E2C0:
/* 8150E2C0 | 80 1B 04 A0 */	lwz r0, 0x4a0(r27)
/* 8150E2C4 | 7C 1C 00 00 */	cmpw r28, r0
/* 8150E2C8 | 41 80 FF D4 */	blt .L_8150E29C
/* 8150E2CC | 80 7B 04 38 */	lwz r3, 0x438(r27)
/* 8150E2D0 | 3B C0 00 00 */	li r30, 0x0
/* 8150E2D4 | 93 DB 04 A0 */	stw r30, 0x4a0(r27)
/* 8150E2D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150E2DC | 41 82 00 0C */	beq .L_8150E2E8
/* 8150E2E0 | 4B FE AD 7D */	bl Free__Q44nw4r3snd6detail7AxVoiceFv
/* 8150E2E4 | 93 DB 04 38 */	stw r30, 0x438(r27)
.L_8150E2E8:
/* 8150E2E8 | 7F E3 FB 78 */	mr r3, r31
/* 8150E2EC | 48 02 25 C1 */	bl OSRestoreInterrupts
/* 8150E2F0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8150E2F4 | 48 0E B2 19 */	bl _restgpr_27
/* 8150E2F8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150E2FC | 7C 08 03 A6 */	mtlr r0
/* 8150E300 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150E304 | 4E 80 00 20 */	blr
.endfn FreeChannels__Q44nw4r3snd6detail10StrmPlayerFv

# .text:0x1A30 | 0x8150E308 | size: 0x110
# nw4r::snd::detail::StrmPlayer::ForceStop()
.fn ForceStop__Q44nw4r3snd6detail10StrmPlayerFv, global
/* 8150E308 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150E30C | 7C 08 02 A6 */	mflr r0
/* 8150E310 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8150E314 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8150E318 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8150E31C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8150E320 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 8150E324 | 7C 7C 1B 78 */	mr r28, r3
/* 8150E328 | 48 02 25 5D */	bl OSDisableInterrupts
/* 8150E32C | 80 1C 04 38 */	lwz r0, 0x438(r28)
/* 8150E330 | 7C 7F 1B 78 */	mr r31, r3
/* 8150E334 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150E338 | 41 82 00 0C */	beq .L_8150E344
/* 8150E33C | 7C 03 03 78 */	mr r3, r0
/* 8150E340 | 4B FE B1 75 */	bl Stop__Q44nw4r3snd6detail7AxVoiceFv
.L_8150E344:
/* 8150E344 | 88 1C 00 49 */	lbz r0, 0x49(r28)
/* 8150E348 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150E34C | 41 82 00 20 */	beq .L_8150E36C
/* 8150E350 | 3C 60 81 11 */	lis r3, sPlayerList__Q44nw4r3snd6detail28@ha
/* 8150E354 | 38 9C 00 08 */	addi r4, r28, 0x8
/* 8150E358 | 38 63 85 4C */	addi r3, r3, sPlayerList__Q44nw4r3snd6detail28@l
/* 8150E35C | 48 00 41 45 */	bl fn_815124A0
/* 8150E360 | 38 00 00 00 */	li r0, 0x0
/* 8150E364 | 98 1C 00 49 */	stb r0, 0x49(r28)
/* 8150E368 | 98 1C 00 4A */	stb r0, 0x4a(r28)
.L_8150E36C:
/* 8150E36C | 7F E3 FB 78 */	mr r3, r31
/* 8150E370 | 48 02 25 3D */	bl OSRestoreInterrupts
/* 8150E374 | 80 7C 04 30 */	lwz r3, 0x430(r28)
/* 8150E378 | 7F 84 E3 78 */	mr r4, r28
/* 8150E37C | 80 BC 04 34 */	lwz r5, 0x434(r28)
/* 8150E380 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150E384 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8150E388 | 7D 89 03 A6 */	mtctr r12
/* 8150E38C | 4E 80 04 21 */	bctrl
/* 8150E390 | 48 02 24 F5 */	bl OSDisableInterrupts
/* 8150E394 | 80 1C 00 A0 */	lwz r0, 0xa0(r28)
/* 8150E398 | 7C 7F 1B 78 */	mr r31, r3
/* 8150E39C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150E3A0 | 41 82 00 40 */	beq .L_8150E3E0
/* 8150E3A4 | 3B DC 00 98 */	addi r30, r28, 0x98
/* 8150E3A8 | 48 00 00 2C */	b .L_8150E3D4
.L_8150E3AC:
/* 8150E3AC | 83 BC 00 A4 */	lwz r29, 0xa4(r28)
/* 8150E3B0 | 38 7C 00 A0 */	addi r3, r28, 0xa0
/* 8150E3B4 | 38 81 00 0C */	addi r4, r1, 0xc
/* 8150E3B8 | 93 A1 00 0C */	stw r29, 0xc(r1)
/* 8150E3BC | 48 00 40 2D */	bl fn_815123E8
/* 8150E3C0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8150E3C4 | 7F A5 EB 78 */	mr r5, r29
/* 8150E3C8 | 38 7C 00 94 */	addi r3, r28, 0x94
/* 8150E3CC | 38 81 00 08 */	addi r4, r1, 0x8
/* 8150E3D0 | 48 00 40 A5 */	bl fn_81512474
.L_8150E3D4:
/* 8150E3D4 | 80 1C 00 A0 */	lwz r0, 0xa0(r28)
/* 8150E3D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150E3DC | 40 82 FF D0 */	bne .L_8150E3AC
.L_8150E3E0:
/* 8150E3E0 | 7F E3 FB 78 */	mr r3, r31
/* 8150E3E4 | 48 02 24 C9 */	bl OSRestoreInterrupts
/* 8150E3E8 | 7F 83 E3 78 */	mr r3, r28
/* 8150E3EC | 4B FF FE 81 */	bl FreeChannels__Q44nw4r3snd6detail10StrmPlayerFv
/* 8150E3F0 | 38 00 00 00 */	li r0, 0x0
/* 8150E3F4 | 98 1C 00 48 */	stb r0, 0x48(r28)
/* 8150E3F8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8150E3FC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8150E400 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8150E404 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 8150E408 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150E40C | 7C 08 03 A6 */	mtlr r0
/* 8150E410 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150E414 | 4E 80 00 20 */	blr
.endfn ForceStop__Q44nw4r3snd6detail10StrmPlayerFv

# .text:0x1B40 | 0x8150E418 | size: 0x18
# nw4r::snd::detail::StrmPlayer::NotifyStrmHeaderAsyncEndCallback(bool, const nw4r::snd::detail::StrmPlayer::StrmHeader*, void*)
.fn NotifyStrmHeaderAsyncEndCallback__Q44nw4r3snd6detail10StrmPlayerFbPCQ54nw4r3snd6detail10StrmPlayer10StrmHeaderPv, global
/* 8150E418 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150E41C | 41 82 00 0C */	beq .L_8150E428
/* 8150E420 | 7C A3 2B 78 */	mr r3, r5
/* 8150E424 | 4B FF F7 A8 */	b Setup__Q44nw4r3snd6detail10StrmPlayerFPCQ54nw4r3snd6detail10StrmPlayer10StrmHeader
.L_8150E428:
/* 8150E428 | 7C A3 2B 78 */	mr r3, r5
/* 8150E42C | 4B FF FE DC */	b ForceStop__Q44nw4r3snd6detail10StrmPlayerFv
.endfn NotifyStrmHeaderAsyncEndCallback__Q44nw4r3snd6detail10StrmPlayerFbPCQ54nw4r3snd6detail10StrmPlayer10StrmHeaderPv

# .text:0x1B58 | 0x8150E430 | size: 0x68
# nw4r::snd::detail::StrmPlayer::VoiceCallbackFunc(nw4r::snd::detail::AxVoice*, nw4r::snd::detail::AxVoice::CallbackStatus, void*)
.fn VoiceCallbackFunc__Q44nw4r3snd6detail10StrmPlayerFPQ44nw4r3snd6detail7AxVoiceQ54nw4r3snd6detail7AxVoice14CallbackStatusPv, global
/* 8150E430 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150E434 | 7C 08 02 A6 */	mflr r0
/* 8150E438 | 2C 04 00 02 */	cmpwi r4, 0x2
/* 8150E43C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150E440 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150E444 | 7C BF 2B 78 */	mr r31, r5
/* 8150E448 | 40 80 00 10 */	bge .L_8150E458
/* 8150E44C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8150E450 | 40 80 00 14 */	bge .L_8150E464
/* 8150E454 | 48 00 00 30 */	b .L_8150E484
.L_8150E458:
/* 8150E458 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 8150E45C | 40 80 00 28 */	bge .L_8150E484
/* 8150E460 | 48 00 00 14 */	b .L_8150E474
.L_8150E464:
/* 8150E464 | 4B FE AB F9 */	bl Free__Q44nw4r3snd6detail7AxVoiceFv
/* 8150E468 | 7F E3 FB 78 */	mr r3, r31
/* 8150E46C | 4B FF FE 01 */	bl FreeChannels__Q44nw4r3snd6detail10StrmPlayerFv
/* 8150E470 | 48 00 00 14 */	b .L_8150E484
.L_8150E474:
/* 8150E474 | 38 00 00 00 */	li r0, 0x0
/* 8150E478 | 7F E3 FB 78 */	mr r3, r31
/* 8150E47C | 90 05 04 38 */	stw r0, 0x438(r5)
/* 8150E480 | 4B FF FD ED */	bl FreeChannels__Q44nw4r3snd6detail10StrmPlayerFv
.L_8150E484:
/* 8150E484 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150E488 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8150E48C | 7C 08 03 A6 */	mtlr r0
/* 8150E490 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150E494 | 4E 80 00 20 */	blr
.endfn VoiceCallbackFunc__Q44nw4r3snd6detail10StrmPlayerFPQ44nw4r3snd6detail7AxVoiceQ54nw4r3snd6detail7AxVoice14CallbackStatusPv

# .text:0x1BC0 | 0x8150E498 | size: 0xC4
# nw4r::snd::detail::StrmPlayer::LoadCommand::NotifyAsyncEnd(bool)
.fn NotifyAsyncEnd__Q54nw4r3snd6detail10StrmPlayer11LoadCommandFb, global
/* 8150E498 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150E49C | 7C 08 02 A6 */	mflr r0
/* 8150E4A0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8150E4A4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8150E4A8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8150E4AC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8150E4B0 | 7C 9D 23 78 */	mr r29, r4
/* 8150E4B4 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 8150E4B8 | 7C 7C 1B 78 */	mr r28, r3
/* 8150E4BC | 48 02 23 C9 */	bl OSDisableInterrupts
/* 8150E4C0 | 80 BC 00 04 */	lwz r5, 0x4(r28)
/* 8150E4C4 | 3B DC 00 14 */	addi r30, r28, 0x14
/* 8150E4C8 | 7C 7F 1B 78 */	mr r31, r3
/* 8150E4CC | 7F C4 F3 78 */	mr r4, r30
/* 8150E4D0 | 38 65 00 A0 */	addi r3, r5, 0xa0
/* 8150E4D4 | 48 00 3F CD */	bl fn_815124A0
/* 8150E4D8 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8150E4DC | 41 82 00 34 */	beq .L_8150E510
/* 8150E4E0 | 80 1C 00 08 */	lwz r0, 0x8(r28)
/* 8150E4E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150E4E8 | 40 82 00 30 */	bne .L_8150E518
/* 8150E4EC | 80 7C 00 04 */	lwz r3, 0x4(r28)
/* 8150E4F0 | 80 03 00 58 */	lwz r0, 0x58(r3)
/* 8150E4F4 | 34 00 FF FF */	subic. r0, r0, 0x1
/* 8150E4F8 | 90 03 00 58 */	stw r0, 0x58(r3)
/* 8150E4FC | 40 82 00 1C */	bne .L_8150E518
/* 8150E500 | 80 7C 00 04 */	lwz r3, 0x4(r28)
/* 8150E504 | 38 00 00 01 */	li r0, 0x1
/* 8150E508 | 98 03 00 4A */	stb r0, 0x4a(r3)
/* 8150E50C | 48 00 00 0C */	b .L_8150E518
.L_8150E510:
/* 8150E510 | 80 7C 00 04 */	lwz r3, 0x4(r28)
/* 8150E514 | 4B FF FD F5 */	bl ForceStop__Q44nw4r3snd6detail10StrmPlayerFv
.L_8150E518:
/* 8150E518 | 80 7C 00 04 */	lwz r3, 0x4(r28)
/* 8150E51C | 7F C5 F3 78 */	mr r5, r30
/* 8150E520 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8150E524 | 38 63 00 94 */	addi r3, r3, 0x94
/* 8150E528 | 38 03 00 04 */	addi r0, r3, 0x4
/* 8150E52C | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8150E530 | 48 00 3F 45 */	bl fn_81512474
/* 8150E534 | 7F E3 FB 78 */	mr r3, r31
/* 8150E538 | 48 02 23 75 */	bl OSRestoreInterrupts
/* 8150E53C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150E540 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8150E544 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8150E548 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8150E54C | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 8150E550 | 7C 08 03 A6 */	mtlr r0
/* 8150E554 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150E558 | 4E 80 00 20 */	blr
.endfn NotifyAsyncEnd__Q54nw4r3snd6detail10StrmPlayer11LoadCommandFb

# .text:0x1C84 | 0x8150E55C | size: 0x58
# nw4r::snd::detail::StrmPlayer::LoadCommand::SetAdpcmLoopContext(int, unsigned short*)
.fn SetAdpcmLoopContext__Q54nw4r3snd6detail10StrmPlayer11LoadCommandFiPUs, global
/* 8150E55C | 80 C3 00 04 */	lwz r6, 0x4(r3)
/* 8150E560 | 88 06 00 10 */	lbz r0, 0x10(r6)
/* 8150E564 | 28 00 00 02 */	cmplwi r0, 0x2
/* 8150E568 | 4C 82 00 20 */	bnelr
/* 8150E56C | 39 20 00 00 */	li r9, 0x0
/* 8150E570 | 39 00 00 00 */	li r8, 0x0
/* 8150E574 | 48 00 00 20 */	b .L_8150E594
.L_8150E578:
/* 8150E578 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8150E57C | 39 29 00 01 */	addi r9, r9, 0x1
/* 8150E580 | A0 E5 00 00 */	lhz r7, 0x0(r5)
/* 8150E584 | 38 A5 00 02 */	addi r5, r5, 0x2
/* 8150E588 | 7C C0 42 14 */	add r6, r0, r8
/* 8150E58C | 39 08 00 02 */	addi r8, r8, 0x2
/* 8150E590 | B0 E6 05 18 */	sth r7, 0x518(r6)
.L_8150E594:
/* 8150E594 | 7C 09 20 00 */	cmpw r9, r4
/* 8150E598 | 40 80 00 0C */	bge .L_8150E5A4
/* 8150E59C | 2C 09 00 02 */	cmpwi r9, 0x2
/* 8150E5A0 | 41 80 FF D8 */	blt .L_8150E578
.L_8150E5A4:
/* 8150E5A4 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8150E5A8 | 38 00 00 01 */	li r0, 0x1
/* 8150E5AC | 98 03 00 51 */	stb r0, 0x51(r3)
/* 8150E5B0 | 4E 80 00 20 */	blr
.endfn SetAdpcmLoopContext__Q54nw4r3snd6detail10StrmPlayer11LoadCommandFiPUs

# .text:0x1CDC | 0x8150E5B4 | size: 0x38
# nw4r::snd::detail::StrmPlayer::LoadCommand::GetBuffer(int)
.fn GetBuffer__Q54nw4r3snd6detail10StrmPlayer11LoadCommandFi, global
/* 8150E5B4 | 80 C3 00 04 */	lwz r6, 0x4(r3)
/* 8150E5B8 | 80 06 04 A0 */	lwz r0, 0x4a0(r6)
/* 8150E5BC | 7C 04 00 00 */	cmpw r4, r0
/* 8150E5C0 | 41 80 00 0C */	blt .L_8150E5CC
/* 8150E5C4 | 38 60 00 00 */	li r3, 0x0
/* 8150E5C8 | 4E 80 00 20 */	blr
.L_8150E5CC:
/* 8150E5CC | 80 A6 00 60 */	lwz r5, 0x60(r6)
/* 8150E5D0 | 1C 84 00 38 */	mulli r4, r4, 0x38
/* 8150E5D4 | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 8150E5D8 | 7C 05 01 D6 */	mullw r0, r5, r0
/* 8150E5DC | 7C 66 22 14 */	add r3, r6, r4
/* 8150E5E0 | 80 63 04 A8 */	lwz r3, 0x4a8(r3)
/* 8150E5E4 | 7C 63 02 14 */	add r3, r3, r0
/* 8150E5E8 | 4E 80 00 20 */	blr
.endfn GetBuffer__Q54nw4r3snd6detail10StrmPlayer11LoadCommandFi

# .text:0x1D14 | 0x8150E5EC | size: 0x8
# nw4r::snd::detail::StrmPlayer::GetLpfFreq() const
.fn GetLpfFreq__Q44nw4r3snd6detail10StrmPlayerCFv, global
/* 8150E5EC | C0 23 04 54 */	lfs f1, 0x454(r3)
/* 8150E5F0 | 4E 80 00 20 */	blr
.endfn GetLpfFreq__Q44nw4r3snd6detail10StrmPlayerCFv

# .text:0x1D1C | 0x8150E5F4 | size: 0x8
# nw4r::snd::detail::StrmPlayer::GetSurroundPan2() const
.fn GetSurroundPan2__Q44nw4r3snd6detail10StrmPlayerCFv, global
/* 8150E5F4 | C0 23 04 4C */	lfs f1, 0x44c(r3)
/* 8150E5F8 | 4E 80 00 20 */	blr
.endfn GetSurroundPan2__Q44nw4r3snd6detail10StrmPlayerCFv

# .text:0x1D24 | 0x8150E5FC | size: 0x8
# nw4r::snd::detail::StrmPlayer::GetPan2() const
.fn GetPan2__Q44nw4r3snd6detail10StrmPlayerCFv, global
/* 8150E5FC | C0 23 04 48 */	lfs f1, 0x448(r3)
/* 8150E600 | 4E 80 00 20 */	blr
.endfn GetPan2__Q44nw4r3snd6detail10StrmPlayerCFv

# .text:0x1D2C | 0x8150E604 | size: 0x8
# nw4r::snd::detail::StrmPlayer::GetSurroundPan() const
.fn GetSurroundPan__Q44nw4r3snd6detail10StrmPlayerCFv, global
/* 8150E604 | C0 23 04 44 */	lfs f1, 0x444(r3)
/* 8150E608 | 4E 80 00 20 */	blr
.endfn GetSurroundPan__Q44nw4r3snd6detail10StrmPlayerCFv

# .text:0x1D34 | 0x8150E60C | size: 0x8
# nw4r::snd::detail::StrmPlayer::GetPan() const
.fn GetPan__Q44nw4r3snd6detail10StrmPlayerCFv, global
/* 8150E60C | C0 23 04 40 */	lfs f1, 0x440(r3)
/* 8150E610 | 4E 80 00 20 */	blr
.endfn GetPan__Q44nw4r3snd6detail10StrmPlayerCFv

# .text:0x1D3C | 0x8150E614 | size: 0x8
# nw4r::snd::detail::StrmPlayer::GetPitch() const
.fn GetPitch__Q44nw4r3snd6detail10StrmPlayerCFv, global
/* 8150E614 | C0 23 04 50 */	lfs f1, 0x450(r3)
/* 8150E618 | 4E 80 00 20 */	blr
.endfn GetPitch__Q44nw4r3snd6detail10StrmPlayerCFv

# .text:0x1D44 | 0x8150E61C | size: 0x8
# nw4r::snd::detail::StrmPlayer::GetVolume() const
.fn GetVolume__Q44nw4r3snd6detail10StrmPlayerCFv, global
/* 8150E61C | C0 23 04 3C */	lfs f1, 0x43c(r3)
/* 8150E620 | 4E 80 00 20 */	blr
.endfn GetVolume__Q44nw4r3snd6detail10StrmPlayerCFv

# .text:0x1D4C | 0x8150E624 | size: 0x8
# nw4r::snd::detail::StrmPlayer::SetLpfFreq(float)
.fn SetLpfFreq__Q44nw4r3snd6detail10StrmPlayerFf, global
/* 8150E624 | D0 23 04 54 */	stfs f1, 0x454(r3)
/* 8150E628 | 4E 80 00 20 */	blr
.endfn SetLpfFreq__Q44nw4r3snd6detail10StrmPlayerFf

# .text:0x1D54 | 0x8150E62C | size: 0x8
# nw4r::snd::detail::StrmPlayer::SetSurroundPan2(float)
.fn SetSurroundPan2__Q44nw4r3snd6detail10StrmPlayerFf, global
/* 8150E62C | D0 23 04 4C */	stfs f1, 0x44c(r3)
/* 8150E630 | 4E 80 00 20 */	blr
.endfn SetSurroundPan2__Q44nw4r3snd6detail10StrmPlayerFf

# .text:0x1D5C | 0x8150E634 | size: 0x8
# nw4r::snd::detail::StrmPlayer::SetPan2(float)
.fn SetPan2__Q44nw4r3snd6detail10StrmPlayerFf, global
/* 8150E634 | D0 23 04 48 */	stfs f1, 0x448(r3)
/* 8150E638 | 4E 80 00 20 */	blr
.endfn SetPan2__Q44nw4r3snd6detail10StrmPlayerFf

# .text:0x1D64 | 0x8150E63C | size: 0x8
# nw4r::snd::detail::StrmPlayer::SetSurroundPan(float)
.fn SetSurroundPan__Q44nw4r3snd6detail10StrmPlayerFf, global
/* 8150E63C | D0 23 04 44 */	stfs f1, 0x444(r3)
/* 8150E640 | 4E 80 00 20 */	blr
.endfn SetSurroundPan__Q44nw4r3snd6detail10StrmPlayerFf

# .text:0x1D6C | 0x8150E644 | size: 0x8
# nw4r::snd::detail::StrmPlayer::SetPan(float)
.fn SetPan__Q44nw4r3snd6detail10StrmPlayerFf, global
/* 8150E644 | D0 23 04 40 */	stfs f1, 0x440(r3)
/* 8150E648 | 4E 80 00 20 */	blr
.endfn SetPan__Q44nw4r3snd6detail10StrmPlayerFf

# .text:0x1D74 | 0x8150E64C | size: 0x8
# nw4r::snd::detail::StrmPlayer::SetPitch(float)
.fn SetPitch__Q44nw4r3snd6detail10StrmPlayerFf, global
/* 8150E64C | D0 23 04 50 */	stfs f1, 0x450(r3)
/* 8150E650 | 4E 80 00 20 */	blr
.endfn SetPitch__Q44nw4r3snd6detail10StrmPlayerFf

# .text:0x1D7C | 0x8150E654 | size: 0x8
# nw4r::snd::detail::StrmPlayer::SetVolume(float)
.fn SetVolume__Q44nw4r3snd6detail10StrmPlayerFf, global
/* 8150E654 | D0 23 04 3C */	stfs f1, 0x43c(r3)
/* 8150E658 | 4E 80 00 20 */	blr
.endfn SetVolume__Q44nw4r3snd6detail10StrmPlayerFf

# .text:0x1D84 | 0x8150E65C | size: 0x14
# nw4r::snd::detail::StrmPlayer::IsPause() const
.fn IsPause__Q44nw4r3snd6detail10StrmPlayerCFv, global
/* 8150E65C | 88 63 00 4B */	lbz r3, 0x4b(r3)
/* 8150E660 | 7C 03 00 D0 */	neg r0, r3
/* 8150E664 | 7C 00 1B 78 */	or r0, r0, r3
/* 8150E668 | 54 03 0F FE */	srwi r3, r0, 31
/* 8150E66C | 4E 80 00 20 */	blr
.endfn IsPause__Q44nw4r3snd6detail10StrmPlayerCFv

# .text:0x1D98 | 0x8150E670 | size: 0x14
# nw4r::snd::detail::StrmPlayer::IsStarted() const
.fn IsStarted__Q44nw4r3snd6detail10StrmPlayerCFv, global
/* 8150E670 | 88 63 00 49 */	lbz r3, 0x49(r3)
/* 8150E674 | 7C 03 00 D0 */	neg r0, r3
/* 8150E678 | 7C 00 1B 78 */	or r0, r0, r3
/* 8150E67C | 54 03 0F FE */	srwi r3, r0, 31
/* 8150E680 | 4E 80 00 20 */	blr
.endfn IsStarted__Q44nw4r3snd6detail10StrmPlayerCFv

# .text:0x1DAC | 0x8150E684 | size: 0x14
# nw4r::snd::detail::StrmPlayer::IsPrepared() const
.fn IsPrepared__Q44nw4r3snd6detail10StrmPlayerCFv, global
/* 8150E684 | 88 63 00 4A */	lbz r3, 0x4a(r3)
/* 8150E688 | 7C 03 00 D0 */	neg r0, r3
/* 8150E68C | 7C 00 1B 78 */	or r0, r0, r3
/* 8150E690 | 54 03 0F FE */	srwi r3, r0, 31
/* 8150E694 | 4E 80 00 20 */	blr
.endfn IsPrepared__Q44nw4r3snd6detail10StrmPlayerCFv

# .text:0x1DC0 | 0x8150E698 | size: 0x14
# nw4r::snd::detail::StrmPlayer::IsActive() const
.fn IsActive__Q44nw4r3snd6detail10StrmPlayerCFv, global
/* 8150E698 | 88 63 00 48 */	lbz r3, 0x48(r3)
/* 8150E69C | 7C 03 00 D0 */	neg r0, r3
/* 8150E6A0 | 7C 00 1B 78 */	or r0, r0, r3
/* 8150E6A4 | 54 03 0F FE */	srwi r3, r0, 31
/* 8150E6A8 | 4E 80 00 20 */	blr
.endfn IsActive__Q44nw4r3snd6detail10StrmPlayerCFv

# .text:0x1DD4 | 0x8150E6AC | size: 0x88
# nw4r::snd::detail::StrmPlayer::~StrmPlayer()
.fn __dt__Q44nw4r3snd6detail10StrmPlayerFv, global
/* 8150E6AC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150E6B0 | 7C 08 02 A6 */	mflr r0
/* 8150E6B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150E6B8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150E6BC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150E6C0 | 7C 9F 23 78 */	mr r31, r4
/* 8150E6C4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8150E6C8 | 7C 7E 1B 78 */	mr r30, r3
/* 8150E6CC | 41 82 00 4C */	beq .L_8150E718
/* 8150E6D0 | 3C 80 81 51 */	lis r4, __dt__Q54nw4r3snd6detail10StrmPlayer11LoadCommandFv@ha
/* 8150E6D4 | 38 A0 00 1C */	li r5, 0x1c
/* 8150E6D8 | 38 84 C9 E8 */	addi r4, r4, __dt__Q54nw4r3snd6detail10StrmPlayer11LoadCommandFv@l
/* 8150E6DC | 38 C0 00 20 */	li r6, 0x20
/* 8150E6E0 | 38 63 00 AC */	addi r3, r3, 0xac
/* 8150E6E4 | 48 0E AC 15 */	bl __destroy_arr
/* 8150E6E8 | 34 7E 00 A0 */	addic. r3, r30, 0xa0
/* 8150E6EC | 41 82 00 0C */	beq .L_8150E6F8
/* 8150E6F0 | 38 80 00 00 */	li r4, 0x0
/* 8150E6F4 | 48 00 3C 71 */	bl fn_81512364
.L_8150E6F8:
/* 8150E6F8 | 34 7E 00 94 */	addic. r3, r30, 0x94
/* 8150E6FC | 41 82 00 0C */	beq .L_8150E708
/* 8150E700 | 38 80 00 00 */	li r4, 0x0
/* 8150E704 | 48 00 3C 61 */	bl fn_81512364
.L_8150E708:
/* 8150E708 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8150E70C | 40 81 00 0C */	ble .L_8150E718
/* 8150E710 | 7F C3 F3 78 */	mr r3, r30
/* 8150E714 | 48 0E 99 D1 */	bl __dl__FPv
.L_8150E718:
/* 8150E718 | 7F C3 F3 78 */	mr r3, r30
/* 8150E71C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8150E720 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8150E724 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150E728 | 7C 08 03 A6 */	mtlr r0
/* 8150E72C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150E730 | 4E 80 00 20 */	blr
.endfn __dt__Q44nw4r3snd6detail10StrmPlayerFv

# .text:0x1E5C | 0x8150E734 | size: 0x38
.fn "__sinit_\\snd_StrmPlayer_cpp", weak
/* 8150E734 | 3C C0 81 11 */	lis r6, sPlayerList__Q44nw4r3snd6detail28@ha
/* 8150E738 | 38 00 00 00 */	li r0, 0x0
/* 8150E73C | 38 66 85 4C */	addi r3, r6, sPlayerList__Q44nw4r3snd6detail28@l
/* 8150E740 | 3C 80 81 51 */	lis r4, "__dt__Q34nw4r2ut42LinkList<Q44nw4r3snd6detail10StrmPlayer,8>Fv"@ha
/* 8150E744 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 8150E748 | 38 E3 00 04 */	addi r7, r3, 0x4
/* 8150E74C | 3C A0 81 11 */	lis r5, lbl_81108540@ha
/* 8150E750 | 38 84 E7 6C */	addi r4, r4, "__dt__Q34nw4r2ut42LinkList<Q44nw4r3snd6detail10StrmPlayer,8>Fv"@l
/* 8150E754 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 8150E758 | 38 A5 85 40 */	addi r5, r5, lbl_81108540@l
/* 8150E75C | 90 06 85 4C */	stw r0, sPlayerList__Q44nw4r3snd6detail28@l(r6)
/* 8150E760 | 90 E3 00 04 */	stw r7, 0x4(r3)
/* 8150E764 | 90 E3 00 08 */	stw r7, 0x8(r3)
/* 8150E768 | 48 0E A8 78 */	b __register_global_object
.endfn "__sinit_\\snd_StrmPlayer_cpp"

# .text:0x1E94 | 0x8150E76C | size: 0x58
# nw4r::ut::LinkList<nw4r::snd::detail::StrmPlayer, 8>::~LinkList()
.fn "__dt__Q34nw4r2ut42LinkList<Q44nw4r3snd6detail10StrmPlayer,8>Fv", global
/* 8150E76C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150E770 | 7C 08 02 A6 */	mflr r0
/* 8150E774 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150E778 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150E77C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150E780 | 7C 9F 23 78 */	mr r31, r4
/* 8150E784 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8150E788 | 7C 7E 1B 78 */	mr r30, r3
/* 8150E78C | 41 82 00 1C */	beq .L_8150E7A8
/* 8150E790 | 38 80 00 00 */	li r4, 0x0
/* 8150E794 | 48 00 3B D1 */	bl fn_81512364
/* 8150E798 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8150E79C | 40 81 00 0C */	ble .L_8150E7A8
/* 8150E7A0 | 7F C3 F3 78 */	mr r3, r30
/* 8150E7A4 | 48 0E 99 41 */	bl __dl__FPv
.L_8150E7A8:
/* 8150E7A8 | 7F C3 F3 78 */	mr r3, r30
/* 8150E7AC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8150E7B0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8150E7B4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150E7B8 | 7C 08 03 A6 */	mtlr r0
/* 8150E7BC | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150E7C0 | 4E 80 00 20 */	blr
.endfn "__dt__Q34nw4r2ut42LinkList<Q44nw4r3snd6detail10StrmPlayer,8>Fv"

# 0x8160D234..0x8160D238 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte "__sinit_\\snd_StrmPlayer_cpp"

# 0x8166F9F8..0x8166FAA0 | size: 0xA8
.data
.balign 8

# .data:0x0 | 0x8166F9F8 | size: 0x98
# nw4r::snd::detail::StrmPlayer::__vtable
.obj __vt__Q44nw4r3snd6detail10StrmPlayer, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q44nw4r3snd6detail10StrmPlayerFv
	.4byte Start__Q44nw4r3snd6detail10StrmPlayerFv
	.4byte Stop__Q44nw4r3snd6detail10StrmPlayerFv
	.4byte Pause__Q44nw4r3snd6detail10StrmPlayerFb
	.4byte IsActive__Q44nw4r3snd6detail10StrmPlayerCFv
	.4byte IsPrepared__Q44nw4r3snd6detail10StrmPlayerCFv
	.4byte IsStarted__Q44nw4r3snd6detail10StrmPlayerCFv
	.4byte IsPause__Q44nw4r3snd6detail10StrmPlayerCFv
	.4byte SetVolume__Q44nw4r3snd6detail10StrmPlayerFf
	.4byte SetPitch__Q44nw4r3snd6detail10StrmPlayerFf
	.4byte SetPan__Q44nw4r3snd6detail10StrmPlayerFf
	.4byte SetSurroundPan__Q44nw4r3snd6detail10StrmPlayerFf
	.4byte SetPan2__Q44nw4r3snd6detail10StrmPlayerFf
	.4byte SetSurroundPan2__Q44nw4r3snd6detail10StrmPlayerFf
	.4byte SetLpfFreq__Q44nw4r3snd6detail10StrmPlayerFf
	.4byte GetVolume__Q44nw4r3snd6detail10StrmPlayerCFv
	.4byte GetPitch__Q44nw4r3snd6detail10StrmPlayerCFv
	.4byte GetPan__Q44nw4r3snd6detail10StrmPlayerCFv
	.4byte GetSurroundPan__Q44nw4r3snd6detail10StrmPlayerCFv
	.4byte GetPan2__Q44nw4r3snd6detail10StrmPlayerCFv
	.4byte GetSurroundPan2__Q44nw4r3snd6detail10StrmPlayerCFv
	.4byte GetLpfFreq__Q44nw4r3snd6detail10StrmPlayerCFv
	.4byte SetOutputLine__Q44nw4r3snd6detail10StrmPlayerFi
	.4byte SetMainOutVolume__Q44nw4r3snd6detail10StrmPlayerFf
	.4byte SetMainSend__Q44nw4r3snd6detail10StrmPlayerFf
	.4byte SetFxSend__Q44nw4r3snd6detail10StrmPlayerFQ34nw4r3snd6AuxBusf
	.4byte SetRemoteOutVolume__Q44nw4r3snd6detail10StrmPlayerFif
	.4byte SetRemoteSend__Q44nw4r3snd6detail10StrmPlayerFif
	.4byte SetRemoteFxSend__Q44nw4r3snd6detail10StrmPlayerFif
	.4byte GetOutputLine__Q44nw4r3snd6detail10StrmPlayerCFv
	.4byte GetMainOutVolume__Q44nw4r3snd6detail10StrmPlayerCFv
	.4byte GetMainSend__Q44nw4r3snd6detail10StrmPlayerCFv
	.4byte GetFxSend__Q44nw4r3snd6detail10StrmPlayerCFQ34nw4r3snd6AuxBus
	.4byte GetRemoteOutVolume__Q44nw4r3snd6detail10StrmPlayerCFi
	.4byte GetRemoteSend__Q44nw4r3snd6detail10StrmPlayerCFi
	.4byte GetRemoteFxSend__Q44nw4r3snd6detail10StrmPlayerCFi
.endobj __vt__Q44nw4r3snd6detail10StrmPlayer

# .data:0x98 | 0x8166FA90 | size: 0xC
# nw4r::snd::detail::StrmPlayer::LoadCommand::__vtable
.obj __vt__Q54nw4r3snd6detail10StrmPlayer11LoadCommand, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte NotifyAsyncEnd__Q54nw4r3snd6detail10StrmPlayer11LoadCommandFb
.endobj __vt__Q54nw4r3snd6detail10StrmPlayer11LoadCommand

# .data:0xA4 | 0x8166FA9C | size: 0x4
.obj gap_08_8166FA9C_data, global
.hidden gap_08_8166FA9C_data
	.4byte 0x00000000
.endobj gap_08_8166FA9C_data

# 0x816953A0..0x816953A8 | size: 0x8
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x816953A0 | size: 0x4
.obj lbl_816953A0, global
	.float 1
.endobj lbl_816953A0

# .sdata2:0x4 | 0x816953A4 | size: 0x4
.obj lbl_816953A4, global
	.float 0
.endobj lbl_816953A4
