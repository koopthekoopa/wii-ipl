.include "macros.inc"
.file "snd_AxVoice.cpp"

# 0x814F8900..0x814FBE00 | size: 0x3500
.text
.balign 4

# .text:0x0 | 0x814F8900 | size: 0x64
# nw4r::snd::detail::AxVoice::AxVoice()
.fn __ct__Q44nw4r3snd6detail7AxVoiceFv, global
/* 814F8900 | 3C 80 81 67 */	lis r4, __vt__Q44nw4r3snd6detail7AxVoice@ha
/* 814F8904 | 38 00 00 00 */	li r0, 0x0
/* 814F8908 | 38 84 F2 C8 */	addi r4, r4, __vt__Q44nw4r3snd6detail7AxVoice@l
/* 814F890C | 90 03 00 00 */	stw r0, 0x0(r3)
/* 814F8910 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 814F8914 | 90 83 00 08 */	stw r4, 0x8(r3)
/* 814F8918 | 90 03 01 0C */	stw r0, 0x10c(r3)
/* 814F891C | 98 03 01 1C */	stb r0, 0x11c(r3)
/* 814F8920 | 98 03 01 1D */	stb r0, 0x11d(r3)
/* 814F8924 | 98 03 01 1E */	stb r0, 0x11e(r3)
/* 814F8928 | 98 03 01 1F */	stb r0, 0x11f(r3)
/* 814F892C | 98 03 01 21 */	stb r0, 0x121(r3)
/* 814F8930 | 98 03 01 22 */	stb r0, 0x122(r3)
/* 814F8934 | 98 03 01 23 */	stb r0, 0x123(r3)
/* 814F8938 | 90 03 01 A8 */	stw r0, 0x1a8(r3)
/* 814F893C | 90 03 01 AC */	stw r0, 0x1ac(r3)
/* 814F8940 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 814F8944 | 90 03 00 10 */	stw r0, 0x10(r3)
/* 814F8948 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 814F894C | 90 03 00 18 */	stw r0, 0x18(r3)
/* 814F8950 | 90 03 00 1C */	stw r0, 0x1c(r3)
/* 814F8954 | 90 03 00 20 */	stw r0, 0x20(r3)
/* 814F8958 | 90 03 00 24 */	stw r0, 0x24(r3)
/* 814F895C | 90 03 00 28 */	stw r0, 0x28(r3)
/* 814F8960 | 4E 80 00 20 */	blr
.endfn __ct__Q44nw4r3snd6detail7AxVoiceFv

# .text:0x64 | 0x814F8964 | size: 0x9C
# nw4r::snd::detail::AxVoice::~AxVoice()
.fn __dt__Q44nw4r3snd6detail7AxVoiceFv, global
/* 814F8964 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814F8968 | 7C 08 02 A6 */	mflr r0
/* 814F896C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814F8970 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814F8974 | 48 10 0B 49 */	bl _savegpr_26
/* 814F8978 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814F897C | 7C 7A 1B 78 */	mr r26, r3
/* 814F8980 | 7C 9B 23 78 */	mr r27, r4
/* 814F8984 | 41 82 00 60 */	beq .L_814F89E4
/* 814F8988 | 3C 80 81 67 */	lis r4, __vt__Q44nw4r3snd6detail7AxVoice@ha
/* 814F898C | 7F 5F D3 78 */	mr r31, r26
/* 814F8990 | 38 84 F2 C8 */	addi r4, r4, __vt__Q44nw4r3snd6detail7AxVoice@l
/* 814F8994 | 3B A0 00 00 */	li r29, 0x0
/* 814F8998 | 90 83 00 08 */	stw r4, 0x8(r3)
.L_814F899C:
/* 814F899C | 7F FE FB 78 */	mr r30, r31
/* 814F89A0 | 3B 80 00 00 */	li r28, 0x0
.L_814F89A4:
/* 814F89A4 | 80 7E 00 0C */	lwz r3, 0xc(r30)
/* 814F89A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814F89AC | 41 82 00 08 */	beq .L_814F89B4
/* 814F89B0 | 48 05 99 35 */	bl fn_815522E4
.L_814F89B4:
/* 814F89B4 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 814F89B8 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 814F89BC | 2C 1C 00 04 */	cmpwi r28, 0x4
/* 814F89C0 | 41 80 FF E4 */	blt .L_814F89A4
/* 814F89C4 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 814F89C8 | 3B FF 00 10 */	addi r31, r31, 0x10
/* 814F89CC | 2C 1D 00 02 */	cmpwi r29, 0x2
/* 814F89D0 | 41 80 FF CC */	blt .L_814F899C
/* 814F89D4 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814F89D8 | 40 81 00 0C */	ble .L_814F89E4
/* 814F89DC | 7F 43 D3 78 */	mr r3, r26
/* 814F89E0 | 48 0F F7 05 */	bl __dl__FPv
.L_814F89E4:
/* 814F89E4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814F89E8 | 7F 43 D3 78 */	mr r3, r26
/* 814F89EC | 48 10 0B 1D */	bl _restgpr_26
/* 814F89F0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814F89F4 | 7C 08 03 A6 */	mtlr r0
/* 814F89F8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814F89FC | 4E 80 00 20 */	blr
.endfn __dt__Q44nw4r3snd6detail7AxVoiceFv

# .text:0x100 | 0x814F8A00 | size: 0x168
# nw4r::snd::detail::AxVoice::InitParam(int, int, void (*)(nw4r::snd::detail::AxVoice*, nw4r::snd::detail::AxVoice::CallbackStatus, void*), void*)
.fn InitParam__Q44nw4r3snd6detail7AxVoiceFiiPFPQ44nw4r3snd6detail7AxVoiceQ54nw4r3snd6detail7AxVoice14CallbackStatusPv_vPv, global
/* 814F8A00 | 2C 84 00 00 */	cmpwi cr1, r4, 0x0
/* 814F8A04 | 39 60 00 00 */	li r11, 0x0
/* 814F8A08 | 40 85 00 A4 */	ble cr1, .L_814F8AAC
/* 814F8A0C | 2C 04 00 08 */	cmpwi r4, 0x8
/* 814F8A10 | 39 24 FF F8 */	subi r9, r4, 0x8
/* 814F8A14 | 40 81 00 70 */	ble .L_814F8A84
/* 814F8A18 | 39 40 00 00 */	li r10, 0x0
/* 814F8A1C | 41 84 00 18 */	blt cr1, .L_814F8A34
/* 814F8A20 | 3D 00 80 00 */	lis r8, 0x8000
/* 814F8A24 | 38 08 FF FE */	subi r0, r8, 0x2
/* 814F8A28 | 7C 04 00 00 */	cmpw r4, r0
/* 814F8A2C | 41 81 00 08 */	bgt .L_814F8A34
/* 814F8A30 | 39 40 00 01 */	li r10, 0x1
.L_814F8A34:
/* 814F8A34 | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 814F8A38 | 41 82 00 4C */	beq .L_814F8A84
/* 814F8A3C | 38 09 00 07 */	addi r0, r9, 0x7
/* 814F8A40 | 7C 6A 1B 78 */	mr r10, r3
/* 814F8A44 | 54 00 E8 FE */	srwi r0, r0, 3
/* 814F8A48 | 39 00 00 00 */	li r8, 0x0
/* 814F8A4C | 7C 09 03 A6 */	mtctr r0
/* 814F8A50 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 814F8A54 | 40 81 00 30 */	ble .L_814F8A84
.L_814F8A58:
/* 814F8A58 | 91 0A 00 2C */	stw r8, 0x2c(r10)
/* 814F8A5C | 39 6B 00 08 */	addi r11, r11, 0x8
/* 814F8A60 | 91 0A 00 60 */	stw r8, 0x60(r10)
/* 814F8A64 | 91 0A 00 94 */	stw r8, 0x94(r10)
/* 814F8A68 | 91 0A 00 C8 */	stw r8, 0xc8(r10)
/* 814F8A6C | 91 0A 00 FC */	stw r8, 0xfc(r10)
/* 814F8A70 | 91 0A 01 30 */	stw r8, 0x130(r10)
/* 814F8A74 | 91 0A 01 64 */	stw r8, 0x164(r10)
/* 814F8A78 | 91 0A 01 98 */	stw r8, 0x198(r10)
/* 814F8A7C | 39 4A 01 A0 */	addi r10, r10, 0x1a0
/* 814F8A80 | 42 00 FF D8 */	bdnz .L_814F8A58
.L_814F8A84:
/* 814F8A84 | 1D 2B 00 34 */	mulli r9, r11, 0x34
/* 814F8A88 | 7C 0B 20 50 */	subf r0, r11, r4
/* 814F8A8C | 39 00 00 00 */	li r8, 0x0
/* 814F8A90 | 7D 23 4A 14 */	add r9, r3, r9
/* 814F8A94 | 7C 09 03 A6 */	mtctr r0
/* 814F8A98 | 7C 0B 20 00 */	cmpw r11, r4
/* 814F8A9C | 40 80 00 10 */	bge .L_814F8AAC
.L_814F8AA0:
/* 814F8AA0 | 91 09 00 2C */	stw r8, 0x2c(r9)
/* 814F8AA4 | 39 29 00 34 */	addi r9, r9, 0x34
/* 814F8AA8 | 42 00 FF F8 */	bdnz .L_814F8AA0
.L_814F8AAC:
/* 814F8AAC | C0 22 8D D8 */	lfs f1, lbl_816951D8@sda21(r0)
/* 814F8AB0 | 39 00 00 00 */	li r8, 0x0
/* 814F8AB4 | C0 02 8D DC */	lfs f0, lbl_816951DC@sda21(r0)
/* 814F8AB8 | 38 00 00 01 */	li r0, 0x1
/* 814F8ABC | 90 83 01 04 */	stw r4, 0x104(r3)
/* 814F8AC0 | 90 A3 01 08 */	stw r5, 0x108(r3)
/* 814F8AC4 | 90 C3 01 0C */	stw r6, 0x10c(r3)
/* 814F8AC8 | 90 E3 01 10 */	stw r7, 0x110(r3)
/* 814F8ACC | 99 03 01 23 */	stb r8, 0x123(r3)
/* 814F8AD0 | 99 03 01 1F */	stb r8, 0x11f(r3)
/* 814F8AD4 | 99 03 01 20 */	stb r8, 0x120(r3)
/* 814F8AD8 | 99 03 01 1E */	stb r8, 0x11e(r3)
/* 814F8ADC | 98 03 01 21 */	stb r0, 0x121(r3)
/* 814F8AE0 | 99 03 01 22 */	stb r8, 0x122(r3)
/* 814F8AE4 | D0 23 01 88 */	stfs f1, 0x188(r3)
/* 814F8AE8 | D0 23 01 8C */	stfs f1, 0x18c(r3)
/* 814F8AEC | D0 23 01 90 */	stfs f1, 0x190(r3)
/* 814F8AF0 | D0 23 01 94 */	stfs f1, 0x194(r3)
/* 814F8AF4 | D0 23 01 98 */	stfs f1, 0x198(r3)
/* 814F8AF8 | D0 03 01 9C */	stfs f0, 0x19c(r3)
/* 814F8AFC | D0 23 01 A0 */	stfs f1, 0x1a0(r3)
/* 814F8B00 | B1 03 01 A4 */	sth r8, 0x1a4(r3)
/* 814F8B04 | D0 23 01 38 */	stfs f1, 0x138(r3)
/* 814F8B08 | D0 03 01 28 */	stfs f0, 0x128(r3)
/* 814F8B0C | D0 03 01 2C */	stfs f0, 0x12c(r3)
/* 814F8B10 | D0 03 01 30 */	stfs f0, 0x130(r3)
/* 814F8B14 | D0 03 01 34 */	stfs f0, 0x134(r3)
/* 814F8B18 | 90 03 01 3C */	stw r0, 0x13c(r3)
/* 814F8B1C | D0 23 01 40 */	stfs f1, 0x140(r3)
/* 814F8B20 | D0 23 01 44 */	stfs f1, 0x144(r3)
/* 814F8B24 | D0 03 01 48 */	stfs f0, 0x148(r3)
/* 814F8B28 | D0 03 01 4C */	stfs f0, 0x14c(r3)
/* 814F8B2C | D0 03 01 50 */	stfs f0, 0x150(r3)
/* 814F8B30 | D0 23 01 54 */	stfs f1, 0x154(r3)
/* 814F8B34 | D0 23 01 64 */	stfs f1, 0x164(r3)
/* 814F8B38 | D0 03 01 74 */	stfs f0, 0x174(r3)
/* 814F8B3C | D0 23 01 58 */	stfs f1, 0x158(r3)
/* 814F8B40 | D0 23 01 68 */	stfs f1, 0x168(r3)
/* 814F8B44 | D0 03 01 78 */	stfs f0, 0x178(r3)
/* 814F8B48 | D0 23 01 5C */	stfs f1, 0x15c(r3)
/* 814F8B4C | D0 23 01 6C */	stfs f1, 0x16c(r3)
/* 814F8B50 | D0 03 01 7C */	stfs f0, 0x17c(r3)
/* 814F8B54 | D0 23 01 60 */	stfs f1, 0x160(r3)
/* 814F8B58 | D0 23 01 70 */	stfs f1, 0x170(r3)
/* 814F8B5C | D0 03 01 80 */	stfs f0, 0x180(r3)
/* 814F8B60 | D0 23 01 84 */	stfs f1, 0x184(r3)
/* 814F8B64 | 4E 80 00 20 */	blr
.endfn InitParam__Q44nw4r3snd6detail7AxVoiceFiiPFPQ44nw4r3snd6detail7AxVoiceQ54nw4r3snd6detail7AxVoice14CallbackStatusPv_vPv

# .text:0x268 | 0x814F8B68 | size: 0x2C0
# nw4r::snd::detail::AxVoice::Update()
.fn Update__Q44nw4r3snd6detail7AxVoiceFv, global
/* 814F8B68 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814F8B6C | 7C 08 02 A6 */	mflr r0
/* 814F8B70 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814F8B74 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814F8B78 | 48 10 09 49 */	bl _savegpr_27
/* 814F8B7C | 88 03 01 1C */	lbz r0, 0x11c(r3)
/* 814F8B80 | 7C 7F 1B 78 */	mr r31, r3
/* 814F8B84 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814F8B88 | 41 82 02 88 */	beq .L_814F8E10
/* 814F8B8C | 88 03 01 1E */	lbz r0, 0x11e(r3)
/* 814F8B90 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814F8B94 | 41 82 00 3C */	beq .L_814F8BD0
/* 814F8B98 | 48 00 0F 95 */	bl IsPlayFinished__Q44nw4r3snd6detail7AxVoiceCFv
/* 814F8B9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814F8BA0 | 41 82 00 30 */	beq .L_814F8BD0
/* 814F8BA4 | 81 9F 01 0C */	lwz r12, 0x10c(r31)
/* 814F8BA8 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814F8BAC | 41 82 00 18 */	beq .L_814F8BC4
/* 814F8BB0 | 7F E3 FB 78 */	mr r3, r31
/* 814F8BB4 | 80 BF 01 10 */	lwz r5, 0x110(r31)
/* 814F8BB8 | 38 80 00 00 */	li r4, 0x0
/* 814F8BBC | 7D 89 03 A6 */	mtctr r12
/* 814F8BC0 | 4E 80 04 21 */	bctrl
.L_814F8BC4:
/* 814F8BC4 | 38 00 00 00 */	li r0, 0x0
/* 814F8BC8 | 98 1F 01 1E */	stb r0, 0x11e(r31)
/* 814F8BCC | 98 1F 01 1D */	stb r0, 0x11d(r31)
.L_814F8BD0:
/* 814F8BD0 | 88 1F 01 23 */	lbz r0, 0x123(r31)
/* 814F8BD4 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814F8BD8 | 41 82 00 94 */	beq .L_814F8C6C
/* 814F8BDC | 88 1F 01 1D */	lbz r0, 0x11d(r31)
/* 814F8BE0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814F8BE4 | 41 82 00 88 */	beq .L_814F8C6C
/* 814F8BE8 | 88 1F 01 1E */	lbz r0, 0x11e(r31)
/* 814F8BEC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814F8BF0 | 40 82 00 7C */	bne .L_814F8C6C
/* 814F8BF4 | 7F E3 FB 78 */	mr r3, r31
/* 814F8BF8 | 38 80 00 01 */	li r4, 0x1
/* 814F8BFC | 48 00 1A 01 */	bl UpdateAxSrc__Q44nw4r3snd6detail7AxVoiceFb
/* 814F8C00 | 7F FB FB 78 */	mr r27, r31
/* 814F8C04 | 3B A0 00 00 */	li r29, 0x0
/* 814F8C08 | 48 00 00 40 */	b .L_814F8C48
.L_814F8C0C:
/* 814F8C0C | 7F 7C DB 78 */	mr r28, r27
/* 814F8C10 | 3B C0 00 00 */	li r30, 0x0
/* 814F8C14 | 48 00 00 20 */	b .L_814F8C34
.L_814F8C18:
/* 814F8C18 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 814F8C1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814F8C20 | 41 82 00 0C */	beq .L_814F8C2C
/* 814F8C24 | 38 80 00 01 */	li r4, 0x1
/* 814F8C28 | 48 05 C3 F9 */	bl fn_81555020
.L_814F8C2C:
/* 814F8C2C | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 814F8C30 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_814F8C34:
/* 814F8C34 | 80 1F 01 08 */	lwz r0, 0x108(r31)
/* 814F8C38 | 7C 1E 00 00 */	cmpw r30, r0
/* 814F8C3C | 41 80 FF DC */	blt .L_814F8C18
/* 814F8C40 | 3B 7B 00 10 */	addi r27, r27, 0x10
/* 814F8C44 | 3B BD 00 01 */	addi r29, r29, 0x1
.L_814F8C48:
/* 814F8C48 | 80 1F 01 04 */	lwz r0, 0x104(r31)
/* 814F8C4C | 7C 1D 00 00 */	cmpw r29, r0
/* 814F8C50 | 41 80 FF BC */	blt .L_814F8C0C
/* 814F8C54 | 88 1F 01 23 */	lbz r0, 0x123(r31)
/* 814F8C58 | 38 60 00 01 */	li r3, 0x1
/* 814F8C5C | 98 7F 01 1E */	stb r3, 0x11e(r31)
/* 814F8C60 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 814F8C64 | 54 00 07 76 */	rlwinm r0, r0, 0, 29, 27
/* 814F8C68 | 98 1F 01 23 */	stb r0, 0x123(r31)
.L_814F8C6C:
/* 814F8C6C | 88 1F 01 1E */	lbz r0, 0x11e(r31)
/* 814F8C70 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814F8C74 | 41 82 01 9C */	beq .L_814F8E10
/* 814F8C78 | 88 1F 01 23 */	lbz r0, 0x123(r31)
/* 814F8C7C | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814F8C80 | 41 82 01 04 */	beq .L_814F8D84
/* 814F8C84 | 88 1F 01 1D */	lbz r0, 0x11d(r31)
/* 814F8C88 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814F8C8C | 41 82 00 F8 */	beq .L_814F8D84
/* 814F8C90 | 88 1F 01 1F */	lbz r0, 0x11f(r31)
/* 814F8C94 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814F8C98 | 40 82 00 24 */	bne .L_814F8CBC
/* 814F8C9C | 88 1F 01 22 */	lbz r0, 0x122(r31)
/* 814F8CA0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814F8CA4 | 40 82 00 18 */	bne .L_814F8CBC
/* 814F8CA8 | 4B FF E9 25 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 814F8CAC | 3C 63 00 01 */	addis r3, r3, 0x1
/* 814F8CB0 | 88 03 A2 33 */	lbz r0, -0x5dcd(r3)
/* 814F8CB4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814F8CB8 | 41 82 00 64 */	beq .L_814F8D1C
.L_814F8CBC:
/* 814F8CBC | 7F FB FB 78 */	mr r27, r31
/* 814F8CC0 | 3B C0 00 00 */	li r30, 0x0
/* 814F8CC4 | 48 00 00 40 */	b .L_814F8D04
.L_814F8CC8:
/* 814F8CC8 | 7F 7C DB 78 */	mr r28, r27
/* 814F8CCC | 3B A0 00 00 */	li r29, 0x0
/* 814F8CD0 | 48 00 00 20 */	b .L_814F8CF0
.L_814F8CD4:
/* 814F8CD4 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 814F8CD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814F8CDC | 41 82 00 0C */	beq .L_814F8CE8
/* 814F8CE0 | 38 80 00 00 */	li r4, 0x0
/* 814F8CE4 | 48 05 C3 3D */	bl fn_81555020
.L_814F8CE8:
/* 814F8CE8 | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 814F8CEC | 3B BD 00 01 */	addi r29, r29, 0x1
.L_814F8CF0:
/* 814F8CF0 | 80 1F 01 08 */	lwz r0, 0x108(r31)
/* 814F8CF4 | 7C 1D 00 00 */	cmpw r29, r0
/* 814F8CF8 | 41 80 FF DC */	blt .L_814F8CD4
/* 814F8CFC | 3B 7B 00 10 */	addi r27, r27, 0x10
/* 814F8D00 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_814F8D04:
/* 814F8D04 | 80 1F 01 04 */	lwz r0, 0x104(r31)
/* 814F8D08 | 7C 1E 00 00 */	cmpw r30, r0
/* 814F8D0C | 41 80 FF BC */	blt .L_814F8CC8
/* 814F8D10 | 38 00 00 01 */	li r0, 0x1
/* 814F8D14 | 98 1F 01 20 */	stb r0, 0x120(r31)
/* 814F8D18 | 48 00 00 60 */	b .L_814F8D78
.L_814F8D1C:
/* 814F8D1C | 7F FC FB 78 */	mr r28, r31
/* 814F8D20 | 3B C0 00 00 */	li r30, 0x0
/* 814F8D24 | 48 00 00 40 */	b .L_814F8D64
.L_814F8D28:
/* 814F8D28 | 7F 9B E3 78 */	mr r27, r28
/* 814F8D2C | 3B A0 00 00 */	li r29, 0x0
/* 814F8D30 | 48 00 00 20 */	b .L_814F8D50
.L_814F8D34:
/* 814F8D34 | 80 7B 00 0C */	lwz r3, 0xc(r27)
/* 814F8D38 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814F8D3C | 41 82 00 0C */	beq .L_814F8D48
/* 814F8D40 | 38 80 00 01 */	li r4, 0x1
/* 814F8D44 | 48 05 C2 DD */	bl fn_81555020
.L_814F8D48:
/* 814F8D48 | 3B 7B 00 04 */	addi r27, r27, 0x4
/* 814F8D4C | 3B BD 00 01 */	addi r29, r29, 0x1
.L_814F8D50:
/* 814F8D50 | 80 1F 01 08 */	lwz r0, 0x108(r31)
/* 814F8D54 | 7C 1D 00 00 */	cmpw r29, r0
/* 814F8D58 | 41 80 FF DC */	blt .L_814F8D34
/* 814F8D5C | 3B 9C 00 10 */	addi r28, r28, 0x10
/* 814F8D60 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_814F8D64:
/* 814F8D64 | 80 1F 01 04 */	lwz r0, 0x104(r31)
/* 814F8D68 | 7C 1E 00 00 */	cmpw r30, r0
/* 814F8D6C | 41 80 FF BC */	blt .L_814F8D28
/* 814F8D70 | 38 00 00 00 */	li r0, 0x0
/* 814F8D74 | 98 1F 01 20 */	stb r0, 0x120(r31)
.L_814F8D78:
/* 814F8D78 | 88 1F 01 23 */	lbz r0, 0x123(r31)
/* 814F8D7C | 54 00 07 FA */	rlwinm r0, r0, 0, 31, 29
/* 814F8D80 | 98 1F 01 23 */	stb r0, 0x123(r31)
.L_814F8D84:
/* 814F8D84 | 88 1F 01 23 */	lbz r0, 0x123(r31)
/* 814F8D88 | 54 00 07 39 */	rlwinm. r0, r0, 0, 28, 28
/* 814F8D8C | 41 82 00 1C */	beq .L_814F8DA8
/* 814F8D90 | 7F E3 FB 78 */	mr r3, r31
/* 814F8D94 | 38 80 00 00 */	li r4, 0x0
/* 814F8D98 | 48 00 18 65 */	bl UpdateAxSrc__Q44nw4r3snd6detail7AxVoiceFb
/* 814F8D9C | 88 1F 01 23 */	lbz r0, 0x123(r31)
/* 814F8DA0 | 54 00 07 76 */	rlwinm r0, r0, 0, 29, 27
/* 814F8DA4 | 98 1F 01 23 */	stb r0, 0x123(r31)
.L_814F8DA8:
/* 814F8DA8 | 88 1F 01 23 */	lbz r0, 0x123(r31)
/* 814F8DAC | 54 00 06 F7 */	rlwinm. r0, r0, 0, 27, 27
/* 814F8DB0 | 41 82 00 20 */	beq .L_814F8DD0
/* 814F8DB4 | 7F E3 FB 78 */	mr r3, r31
/* 814F8DB8 | 48 00 1B 99 */	bl UpdateAxVe__Q44nw4r3snd6detail7AxVoiceFv
/* 814F8DBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814F8DC0 | 40 82 00 10 */	bne .L_814F8DD0
/* 814F8DC4 | 88 1F 01 23 */	lbz r0, 0x123(r31)
/* 814F8DC8 | 54 00 07 34 */	rlwinm r0, r0, 0, 28, 26
/* 814F8DCC | 98 1F 01 23 */	stb r0, 0x123(r31)
.L_814F8DD0:
/* 814F8DD0 | 88 1F 01 23 */	lbz r0, 0x123(r31)
/* 814F8DD4 | 54 00 06 B5 */	rlwinm. r0, r0, 0, 26, 26
/* 814F8DD8 | 41 82 00 18 */	beq .L_814F8DF0
/* 814F8DDC | 7F E3 FB 78 */	mr r3, r31
/* 814F8DE0 | 48 00 1D AD */	bl UpdateAxMix__Q44nw4r3snd6detail7AxVoiceFv
/* 814F8DE4 | 88 1F 01 23 */	lbz r0, 0x123(r31)
/* 814F8DE8 | 54 00 06 F2 */	rlwinm r0, r0, 0, 27, 25
/* 814F8DEC | 98 1F 01 23 */	stb r0, 0x123(r31)
.L_814F8DF0:
/* 814F8DF0 | 88 1F 01 23 */	lbz r0, 0x123(r31)
/* 814F8DF4 | 54 00 06 73 */	rlwinm. r0, r0, 0, 25, 25
/* 814F8DF8 | 41 82 00 18 */	beq .L_814F8E10
/* 814F8DFC | 7F E3 FB 78 */	mr r3, r31
/* 814F8E00 | 48 00 1E 65 */	bl UpdateAxLpf__Q44nw4r3snd6detail7AxVoiceFv
/* 814F8E04 | 88 1F 01 23 */	lbz r0, 0x123(r31)
/* 814F8E08 | 54 00 06 B0 */	rlwinm r0, r0, 0, 26, 24
/* 814F8E0C | 98 1F 01 23 */	stb r0, 0x123(r31)
.L_814F8E10:
/* 814F8E10 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814F8E14 | 48 10 06 F9 */	bl _restgpr_27
/* 814F8E18 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814F8E1C | 7C 08 03 A6 */	mtlr r0
/* 814F8E20 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814F8E24 | 4E 80 00 20 */	blr
.endfn Update__Q44nw4r3snd6detail7AxVoiceFv

# .text:0x528 | 0x814F8E28 | size: 0x234
# nw4r::snd::detail::AxVoice::Acquire(int, int, int, void (*)(nw4r::snd::detail::AxVoice*, nw4r::snd::detail::AxVoice::CallbackStatus, void*), void*)
.fn Acquire__Q44nw4r3snd6detail7AxVoiceFiiiPFPQ44nw4r3snd6detail7AxVoiceQ54nw4r3snd6detail7AxVoice14CallbackStatusPv_vPv, global
/* 814F8E28 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 814F8E2C | 7C 08 02 A6 */	mflr r0
/* 814F8E30 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 814F8E34 | 39 61 00 60 */	addi r11, r1, 0x60
/* 814F8E38 | 48 10 06 69 */	bl _savegpr_19
/* 814F8E3C | 2C 04 00 02 */	cmpwi r4, 0x2
/* 814F8E40 | 7C 74 1B 78 */	mr r20, r3
/* 814F8E44 | 7C D5 33 78 */	mr r21, r6
/* 814F8E48 | 7C F6 3B 78 */	mr r22, r7
/* 814F8E4C | 7D 17 43 78 */	mr r23, r8
/* 814F8E50 | 40 81 00 0C */	ble .L_814F8E5C
/* 814F8E54 | 3B C0 00 02 */	li r30, 0x2
/* 814F8E58 | 48 00 00 14 */	b .L_814F8E6C
.L_814F8E5C:
/* 814F8E5C | 2C 04 00 01 */	cmpwi r4, 0x1
/* 814F8E60 | 3B C0 00 01 */	li r30, 0x1
/* 814F8E64 | 41 80 00 08 */	blt .L_814F8E6C
/* 814F8E68 | 7C 9E 23 78 */	mr r30, r4
.L_814F8E6C:
/* 814F8E6C | 2C 05 00 04 */	cmpwi r5, 0x4
/* 814F8E70 | 40 81 00 0C */	ble .L_814F8E7C
/* 814F8E74 | 3B A0 00 04 */	li r29, 0x4
/* 814F8E78 | 48 00 00 14 */	b .L_814F8E8C
.L_814F8E7C:
/* 814F8E7C | 2C 05 00 01 */	cmpwi r5, 0x1
/* 814F8E80 | 3B A0 00 01 */	li r29, 0x1
/* 814F8E84 | 41 80 00 08 */	blt .L_814F8E8C
/* 814F8E88 | 7C BD 2B 78 */	mr r29, r5
.L_814F8E8C:
/* 814F8E8C | 48 03 79 F9 */	bl OSDisableInterrupts
/* 814F8E90 | 2C 15 00 FF */	cmpwi r21, 0xff
/* 814F8E94 | 7C 73 1B 78 */	mr r19, r3
/* 814F8E98 | 3B 60 00 10 */	li r27, 0x10
/* 814F8E9C | 40 82 00 08 */	bne .L_814F8EA4
/* 814F8EA0 | 3B 60 00 1F */	li r27, 0x1f
.L_814F8EA4:
/* 814F8EA4 | 7F 5E E9 D6 */	mullw r26, r30, r29
/* 814F8EA8 | 3B 81 00 08 */	addi r28, r1, 0x8
/* 814F8EAC | 3B 20 00 00 */	li r25, 0x0
/* 814F8EB0 | 3F E0 81 50 */	lis r31, VoiceCallback__Q44nw4r3snd6detail7AxVoiceFPv@ha
/* 814F8EB4 | 48 00 00 FC */	b .L_814F8FB0
.L_814F8EB8:
/* 814F8EB8 | 7F 63 DB 78 */	mr r3, r27
/* 814F8EBC | 7E 85 A3 78 */	mr r5, r20
/* 814F8EC0 | 38 9F AD A8 */	addi r4, r31, VoiceCallback__Q44nw4r3snd6detail7AxVoiceFPv@l
/* 814F8EC4 | 48 05 94 9D */	bl fn_81552360
/* 814F8EC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814F8ECC | 40 82 00 9C */	bne .L_814F8F68
/* 814F8ED0 | 7F 19 D0 50 */	subf r24, r25, r26
/* 814F8ED4 | 4B FF E6 F9 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 814F8ED8 | 38 A3 00 18 */	addi r5, r3, 0x18
/* 814F8EDC | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 814F8EE0 | 48 00 00 28 */	b .L_814F8F08
.L_814F8EE4:
/* 814F8EE4 | 80 03 FF 7C */	lwz r0, -0x84(r3)
/* 814F8EE8 | 7C 15 00 00 */	cmpw r21, r0
/* 814F8EEC | 41 80 00 24 */	blt .L_814F8F10
/* 814F8EF0 | 80 83 FF 5C */	lwz r4, -0xa4(r3)
/* 814F8EF4 | 80 03 FF 60 */	lwz r0, -0xa0(r3)
/* 814F8EF8 | 7C 04 01 D6 */	mullw r0, r4, r0
/* 814F8EFC | 7F 00 C0 51 */	subf. r24, r0, r24
/* 814F8F00 | 40 81 00 10 */	ble .L_814F8F10
/* 814F8F04 | 80 63 00 00 */	lwz r3, 0x0(r3)
.L_814F8F08:
/* 814F8F08 | 7C 03 28 40 */	cmplw r3, r5
/* 814F8F0C | 40 82 FF D8 */	bne .L_814F8EE4
.L_814F8F10:
/* 814F8F10 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 814F8F14 | 40 81 00 38 */	ble .L_814F8F4C
/* 814F8F18 | 3A 81 00 08 */	addi r20, r1, 0x8
/* 814F8F1C | 3A A0 00 00 */	li r21, 0x0
/* 814F8F20 | 48 00 00 14 */	b .L_814F8F34
.L_814F8F24:
/* 814F8F24 | 80 74 00 00 */	lwz r3, 0x0(r20)
/* 814F8F28 | 48 05 93 BD */	bl fn_815522E4
/* 814F8F2C | 3A 94 00 04 */	addi r20, r20, 0x4
/* 814F8F30 | 3A B5 00 01 */	addi r21, r21, 0x1
.L_814F8F34:
/* 814F8F34 | 7C 15 C8 00 */	cmpw r21, r25
/* 814F8F38 | 41 80 FF EC */	blt .L_814F8F24
/* 814F8F3C | 7E 63 9B 78 */	mr r3, r19
/* 814F8F40 | 48 03 79 6D */	bl OSRestoreInterrupts
/* 814F8F44 | 38 60 00 00 */	li r3, 0x0
/* 814F8F48 | 48 00 00 FC */	b .L_814F9044
.L_814F8F4C:
/* 814F8F4C | 28 1B 00 1F */	cmplwi r27, 0x1f
/* 814F8F50 | 7F 63 DB 78 */	mr r3, r27
/* 814F8F54 | 40 80 00 08 */	bge .L_814F8F5C
/* 814F8F58 | 38 7B 00 01 */	addi r3, r27, 0x1
.L_814F8F5C:
/* 814F8F5C | 7E 85 A3 78 */	mr r5, r20
/* 814F8F60 | 38 9F AD A8 */	addi r4, r31, VoiceCallback__Q44nw4r3snd6detail7AxVoiceFPv@l
/* 814F8F64 | 48 05 93 FD */	bl fn_81552360
.L_814F8F68:
/* 814F8F68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814F8F6C | 40 82 00 38 */	bne .L_814F8FA4
/* 814F8F70 | 3A 81 00 08 */	addi r20, r1, 0x8
/* 814F8F74 | 3A A0 00 00 */	li r21, 0x0
/* 814F8F78 | 48 00 00 14 */	b .L_814F8F8C
.L_814F8F7C:
/* 814F8F7C | 80 74 00 00 */	lwz r3, 0x0(r20)
/* 814F8F80 | 48 05 93 65 */	bl fn_815522E4
/* 814F8F84 | 3A 94 00 04 */	addi r20, r20, 0x4
/* 814F8F88 | 3A B5 00 01 */	addi r21, r21, 0x1
.L_814F8F8C:
/* 814F8F8C | 7C 15 C8 00 */	cmpw r21, r25
/* 814F8F90 | 41 80 FF EC */	blt .L_814F8F7C
/* 814F8F94 | 7E 63 9B 78 */	mr r3, r19
/* 814F8F98 | 48 03 79 15 */	bl OSRestoreInterrupts
/* 814F8F9C | 38 60 00 00 */	li r3, 0x0
/* 814F8FA0 | 48 00 00 A4 */	b .L_814F9044
.L_814F8FA4:
/* 814F8FA4 | 90 7C 00 00 */	stw r3, 0x0(r28)
/* 814F8FA8 | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 814F8FAC | 3B 39 00 01 */	addi r25, r25, 0x1
.L_814F8FB0:
/* 814F8FB0 | 7C 19 D0 00 */	cmpw r25, r26
/* 814F8FB4 | 41 80 FF 04 */	blt .L_814F8EB8
/* 814F8FB8 | 7E 98 A3 78 */	mr r24, r20
/* 814F8FBC | 3A A1 00 08 */	addi r21, r1, 0x8
/* 814F8FC0 | 3B 40 00 00 */	li r26, 0x0
/* 814F8FC4 | 48 00 00 40 */	b .L_814F9004
.L_814F8FC8:
/* 814F8FC8 | 7F 19 C3 78 */	mr r25, r24
/* 814F8FCC | 3B 80 00 00 */	li r28, 0x0
/* 814F8FD0 | 48 00 00 24 */	b .L_814F8FF4
.L_814F8FD4:
/* 814F8FD4 | 80 75 00 00 */	lwz r3, 0x0(r21)
/* 814F8FD8 | 7F 64 DB 78 */	mr r4, r27
/* 814F8FDC | 48 05 95 05 */	bl fn_815524E0
/* 814F8FE0 | 80 15 00 00 */	lwz r0, 0x0(r21)
/* 814F8FE4 | 3A B5 00 04 */	addi r21, r21, 0x4
/* 814F8FE8 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 814F8FEC | 90 19 00 0C */	stw r0, 0xc(r25)
/* 814F8FF0 | 3B 39 00 04 */	addi r25, r25, 0x4
.L_814F8FF4:
/* 814F8FF4 | 7C 1C E8 00 */	cmpw r28, r29
/* 814F8FF8 | 41 80 FF DC */	blt .L_814F8FD4
/* 814F8FFC | 3B 18 00 10 */	addi r24, r24, 0x10
/* 814F9000 | 3B 5A 00 01 */	addi r26, r26, 0x1
.L_814F9004:
/* 814F9004 | 7C 1A F0 00 */	cmpw r26, r30
/* 814F9008 | 41 80 FF C0 */	blt .L_814F8FC8
/* 814F900C | 7E 83 A3 78 */	mr r3, r20
/* 814F9010 | 7F C4 F3 78 */	mr r4, r30
/* 814F9014 | 7F A5 EB 78 */	mr r5, r29
/* 814F9018 | 7E C6 B3 78 */	mr r6, r22
/* 814F901C | 7E E7 BB 78 */	mr r7, r23
/* 814F9020 | 4B FF F9 E1 */	bl InitParam__Q44nw4r3snd6detail7AxVoiceFiiPFPQ44nw4r3snd6detail7AxVoiceQ54nw4r3snd6detail7AxVoice14CallbackStatusPv_vPv
/* 814F9024 | 48 00 55 C1 */	bl GetInstance__Q44nw4r3snd6detail22DisposeCallbackManagerFv
/* 814F9028 | 7E 84 A3 78 */	mr r4, r20
/* 814F902C | 48 00 56 9D */	bl RegisterDisposeCallback__Q44nw4r3snd6detail22DisposeCallbackManagerFPQ44nw4r3snd6detail15DisposeCallback
/* 814F9030 | 38 00 00 01 */	li r0, 0x1
/* 814F9034 | 7E 63 9B 78 */	mr r3, r19
/* 814F9038 | 98 14 01 1C */	stb r0, 0x11c(r20)
/* 814F903C | 48 03 78 71 */	bl OSRestoreInterrupts
/* 814F9040 | 38 60 00 01 */	li r3, 0x1
.L_814F9044:
/* 814F9044 | 39 61 00 60 */	addi r11, r1, 0x60
/* 814F9048 | 48 10 04 A5 */	bl _restgpr_19
/* 814F904C | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 814F9050 | 7C 08 03 A6 */	mtlr r0
/* 814F9054 | 38 21 00 60 */	addi r1, r1, 0x60
/* 814F9058 | 4E 80 00 20 */	blr
.endfn Acquire__Q44nw4r3snd6detail7AxVoiceFiiiPFPQ44nw4r3snd6detail7AxVoiceQ54nw4r3snd6detail7AxVoice14CallbackStatusPv_vPv

# .text:0x75C | 0x814F905C | size: 0xD0
# nw4r::snd::detail::AxVoice::Free()
.fn Free__Q44nw4r3snd6detail7AxVoiceFv, global
/* 814F905C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814F9060 | 7C 08 02 A6 */	mflr r0
/* 814F9064 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814F9068 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814F906C | 48 10 04 4D */	bl _savegpr_25
/* 814F9070 | 7C 79 1B 78 */	mr r25, r3
/* 814F9074 | 48 03 78 11 */	bl OSDisableInterrupts
/* 814F9078 | 88 19 01 1C */	lbz r0, 0x11c(r25)
/* 814F907C | 7C 7F 1B 78 */	mr r31, r3
/* 814F9080 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814F9084 | 40 82 00 0C */	bne .L_814F9090
/* 814F9088 | 48 03 78 25 */	bl OSRestoreInterrupts
/* 814F908C | 48 00 00 88 */	b .L_814F9114
.L_814F9090:
/* 814F9090 | 7F 3D CB 78 */	mr r29, r25
/* 814F9094 | 3B 60 00 00 */	li r27, 0x0
/* 814F9098 | 3B C0 00 00 */	li r30, 0x0
/* 814F909C | 48 00 00 40 */	b .L_814F90DC
.L_814F90A0:
/* 814F90A0 | 7F BC EB 78 */	mr r28, r29
/* 814F90A4 | 3B 40 00 00 */	li r26, 0x0
/* 814F90A8 | 48 00 00 20 */	b .L_814F90C8
.L_814F90AC:
/* 814F90AC | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 814F90B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814F90B4 | 41 82 00 0C */	beq .L_814F90C0
/* 814F90B8 | 48 05 92 2D */	bl fn_815522E4
/* 814F90BC | 93 DC 00 0C */	stw r30, 0xc(r28)
.L_814F90C0:
/* 814F90C0 | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 814F90C4 | 3B 5A 00 01 */	addi r26, r26, 0x1
.L_814F90C8:
/* 814F90C8 | 80 19 01 08 */	lwz r0, 0x108(r25)
/* 814F90CC | 7C 1A 00 00 */	cmpw r26, r0
/* 814F90D0 | 41 80 FF DC */	blt .L_814F90AC
/* 814F90D4 | 3B BD 00 10 */	addi r29, r29, 0x10
/* 814F90D8 | 3B 7B 00 01 */	addi r27, r27, 0x1
.L_814F90DC:
/* 814F90DC | 80 19 01 04 */	lwz r0, 0x104(r25)
/* 814F90E0 | 7C 1B 00 00 */	cmpw r27, r0
/* 814F90E4 | 41 80 FF BC */	blt .L_814F90A0
/* 814F90E8 | 3B C0 00 00 */	li r30, 0x0
/* 814F90EC | 93 D9 01 04 */	stw r30, 0x104(r25)
/* 814F90F0 | 48 00 54 F5 */	bl GetInstance__Q44nw4r3snd6detail22DisposeCallbackManagerFv
/* 814F90F4 | 7F 24 CB 78 */	mr r4, r25
/* 814F90F8 | 48 00 56 35 */	bl UnregisterDisposeCallback__Q44nw4r3snd6detail22DisposeCallbackManagerFPQ44nw4r3snd6detail15DisposeCallback
/* 814F90FC | 4B FF E4 D1 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 814F9100 | 7F 24 CB 78 */	mr r4, r25
/* 814F9104 | 4B FF ED 65 */	bl FreeVoice__Q44nw4r3snd6detail9AxManagerFPQ44nw4r3snd6detail7AxVoice
/* 814F9108 | 9B D9 01 1C */	stb r30, 0x11c(r25)
/* 814F910C | 7F E3 FB 78 */	mr r3, r31
/* 814F9110 | 48 03 77 9D */	bl OSRestoreInterrupts
.L_814F9114:
/* 814F9114 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814F9118 | 48 10 03 ED */	bl _restgpr_25
/* 814F911C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814F9120 | 7C 08 03 A6 */	mtlr r0
/* 814F9124 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814F9128 | 4E 80 00 20 */	blr
.endfn Free__Q44nw4r3snd6detail7AxVoiceFv

# .text:0x82C | 0x814F912C | size: 0x33C
# nw4r::snd::detail::AxVoice::Setup(const nw4r::snd::detail::WaveData&)
.fn Setup__Q44nw4r3snd6detail7AxVoiceFRCQ44nw4r3snd6detail8WaveData, global
/* 814F912C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814F9130 | 7C 08 02 A6 */	mflr r0
/* 814F9134 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814F9138 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814F913C | 48 10 03 79 */	bl _savegpr_24
/* 814F9140 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 814F9144 | 7C 78 1B 78 */	mr r24, r3
/* 814F9148 | 7C 99 23 78 */	mr r25, r4
/* 814F914C | 28 00 00 01 */	cmplwi r0, 0x1
/* 814F9150 | 40 82 00 0C */	bne .L_814F915C
/* 814F9154 | 38 A0 00 0A */	li r5, 0xa
/* 814F9158 | 48 00 00 14 */	b .L_814F916C
.L_814F915C:
/* 814F915C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814F9160 | 38 A0 00 00 */	li r5, 0x0
/* 814F9164 | 40 82 00 08 */	bne .L_814F916C
/* 814F9168 | 38 A0 00 19 */	li r5, 0x19
.L_814F916C:
/* 814F916C | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 814F9170 | 7F 1F C3 78 */	mr r31, r24
/* 814F9174 | 90 A3 01 18 */	stw r5, 0x118(r3)
/* 814F9178 | 7F 3E CB 78 */	mr r30, r25
/* 814F917C | 7F 1D C3 78 */	mr r29, r24
/* 814F9180 | 3B 83 00 30 */	addi r28, r3, 0x30
/* 814F9184 | 90 03 01 14 */	stw r0, 0x114(r3)
/* 814F9188 | 3B 63 00 58 */	addi r27, r3, 0x58
/* 814F918C | 3B 40 00 00 */	li r26, 0x0
/* 814F9190 | 48 00 01 48 */	b .L_814F92D8
.L_814F9194:
/* 814F9194 | 80 1F 00 0C */	lwz r0, 0xc(r31)
/* 814F9198 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814F919C | 41 82 01 24 */	beq .L_814F92C0
/* 814F91A0 | 80 FE 00 10 */	lwz r7, 0x10(r30)
/* 814F91A4 | 7F 03 C3 78 */	mr r3, r24
/* 814F91A8 | 88 B9 00 01 */	lbz r5, 0x1(r25)
/* 814F91AC | 7F 44 D3 78 */	mr r4, r26
/* 814F91B0 | 90 FD 00 2C */	stw r7, 0x2c(r29)
/* 814F91B4 | A0 DE 00 24 */	lhz r6, 0x24(r30)
/* 814F91B8 | 7C 05 00 D0 */	neg r0, r5
/* 814F91BC | A1 1E 00 26 */	lhz r8, 0x26(r30)
/* 814F91C0 | 7C 00 2B 78 */	or r0, r0, r5
/* 814F91C4 | B0 DD 00 30 */	sth r6, 0x30(r29)
/* 814F91C8 | 54 05 0F FE */	srwi r5, r0, 31
/* 814F91CC | A0 DE 00 28 */	lhz r6, 0x28(r30)
/* 814F91D0 | B1 1D 00 32 */	sth r8, 0x32(r29)
/* 814F91D4 | A0 1E 00 2A */	lhz r0, 0x2a(r30)
/* 814F91D8 | B0 DD 00 34 */	sth r6, 0x34(r29)
/* 814F91DC | A0 DE 00 2C */	lhz r6, 0x2c(r30)
/* 814F91E0 | B0 1D 00 36 */	sth r0, 0x36(r29)
/* 814F91E4 | A0 1E 00 2E */	lhz r0, 0x2e(r30)
/* 814F91E8 | B0 DD 00 38 */	sth r6, 0x38(r29)
/* 814F91EC | A0 DE 00 30 */	lhz r6, 0x30(r30)
/* 814F91F0 | B0 1D 00 3A */	sth r0, 0x3a(r29)
/* 814F91F4 | A0 1E 00 32 */	lhz r0, 0x32(r30)
/* 814F91F8 | B0 DD 00 3C */	sth r6, 0x3c(r29)
/* 814F91FC | A0 DE 00 34 */	lhz r6, 0x34(r30)
/* 814F9200 | B0 1D 00 3E */	sth r0, 0x3e(r29)
/* 814F9204 | A0 1E 00 36 */	lhz r0, 0x36(r30)
/* 814F9208 | B0 DD 00 40 */	sth r6, 0x40(r29)
/* 814F920C | A0 DE 00 38 */	lhz r6, 0x38(r30)
/* 814F9210 | B0 1D 00 42 */	sth r0, 0x42(r29)
/* 814F9214 | A0 1E 00 3A */	lhz r0, 0x3a(r30)
/* 814F9218 | B0 DD 00 44 */	sth r6, 0x44(r29)
/* 814F921C | A0 DE 00 3C */	lhz r6, 0x3c(r30)
/* 814F9220 | B0 1D 00 46 */	sth r0, 0x46(r29)
/* 814F9224 | A0 1E 00 3E */	lhz r0, 0x3e(r30)
/* 814F9228 | B0 DD 00 48 */	sth r6, 0x48(r29)
/* 814F922C | A0 DE 00 40 */	lhz r6, 0x40(r30)
/* 814F9230 | B0 1D 00 4A */	sth r0, 0x4a(r29)
/* 814F9234 | A0 1E 00 42 */	lhz r0, 0x42(r30)
/* 814F9238 | B0 DD 00 4C */	sth r6, 0x4c(r29)
/* 814F923C | A0 DE 00 44 */	lhz r6, 0x44(r30)
/* 814F9240 | B0 1D 00 4E */	sth r0, 0x4e(r29)
/* 814F9244 | A0 1E 00 46 */	lhz r0, 0x46(r30)
/* 814F9248 | B0 DD 00 50 */	sth r6, 0x50(r29)
/* 814F924C | A0 DE 00 48 */	lhz r6, 0x48(r30)
/* 814F9250 | B0 1D 00 52 */	sth r0, 0x52(r29)
/* 814F9254 | A0 1E 00 4A */	lhz r0, 0x4a(r30)
/* 814F9258 | B0 DD 00 54 */	sth r6, 0x54(r29)
/* 814F925C | A0 DE 00 4C */	lhz r6, 0x4c(r30)
/* 814F9260 | B0 1D 00 56 */	sth r0, 0x56(r29)
/* 814F9264 | A0 1E 00 4E */	lhz r0, 0x4e(r30)
/* 814F9268 | B0 DD 00 58 */	sth r6, 0x58(r29)
/* 814F926C | A0 DE 00 50 */	lhz r6, 0x50(r30)
/* 814F9270 | B0 1D 00 5A */	sth r0, 0x5a(r29)
/* 814F9274 | A0 1E 00 52 */	lhz r0, 0x52(r30)
/* 814F9278 | B0 DD 00 5C */	sth r6, 0x5c(r29)
/* 814F927C | 81 19 00 08 */	lwz r8, 0x8(r25)
/* 814F9280 | B0 1D 00 5E */	sth r0, 0x5e(r29)
/* 814F9284 | 81 39 00 0C */	lwz r9, 0xc(r25)
/* 814F9288 | 80 D8 01 18 */	lwz r6, 0x118(r24)
/* 814F928C | 48 00 0B A9 */	bl SetAxAddr__Q44nw4r3snd6detail7AxVoiceFibQ54nw4r3snd6detail7AxVoice6FormatPCvUlUl
/* 814F9290 | 80 B8 01 18 */	lwz r5, 0x118(r24)
/* 814F9294 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814F9298 | 40 82 00 28 */	bne .L_814F92C0
/* 814F929C | 7F 03 C3 78 */	mr r3, r24
/* 814F92A0 | 7F 44 D3 78 */	mr r4, r26
/* 814F92A4 | 7F 86 E3 78 */	mr r6, r28
/* 814F92A8 | 48 00 14 F1 */	bl SetAxAdpcm__Q44nw4r3snd6detail7AxVoiceFiQ54nw4r3snd6detail7AxVoice6FormatPCQ44nw4r3snd6detail10AdpcmParam
/* 814F92AC | 80 B8 01 18 */	lwz r5, 0x118(r24)
/* 814F92B0 | 7F 03 C3 78 */	mr r3, r24
/* 814F92B4 | 7F 44 D3 78 */	mr r4, r26
/* 814F92B8 | 7F 66 DB 78 */	mr r6, r27
/* 814F92BC | 48 00 15 F9 */	bl SetAxAdpcmLoop__Q44nw4r3snd6detail7AxVoiceFiQ54nw4r3snd6detail7AxVoice6FormatPCQ44nw4r3snd6detail14AdpcmLoopParam
.L_814F92C0:
/* 814F92C0 | 3B FF 00 10 */	addi r31, r31, 0x10
/* 814F92C4 | 3B DE 00 44 */	addi r30, r30, 0x44
/* 814F92C8 | 3B BD 00 34 */	addi r29, r29, 0x34
/* 814F92CC | 3B 9C 00 34 */	addi r28, r28, 0x34
/* 814F92D0 | 3B 7B 00 34 */	addi r27, r27, 0x34
/* 814F92D4 | 3B 5A 00 01 */	addi r26, r26, 0x1
.L_814F92D8:
/* 814F92D8 | 80 18 01 04 */	lwz r0, 0x104(r24)
/* 814F92DC | 7C 1A 00 00 */	cmpw r26, r0
/* 814F92E0 | 41 80 FE B4 */	blt .L_814F9194
/* 814F92E4 | C0 22 8D D8 */	lfs f1, lbl_816951D8@sda21(r0)
/* 814F92E8 | 7F 04 C3 78 */	mr r4, r24
/* 814F92EC | C0 02 8D DC */	lfs f0, lbl_816951DC@sda21(r0)
/* 814F92F0 | 38 A0 00 00 */	li r5, 0x0
/* 814F92F4 | 38 60 00 00 */	li r3, 0x0
/* 814F92F8 | 48 00 00 28 */	b .L_814F9320
.L_814F92FC:
/* 814F92FC | D0 24 00 94 */	stfs f1, 0x94(r4)
/* 814F9300 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814F9304 | D0 24 00 98 */	stfs f1, 0x98(r4)
/* 814F9308 | D0 04 00 9C */	stfs f0, 0x9c(r4)
/* 814F930C | D0 04 00 A0 */	stfs f0, 0xa0(r4)
/* 814F9310 | D0 04 00 A4 */	stfs f0, 0xa4(r4)
/* 814F9314 | D0 04 00 A8 */	stfs f0, 0xa8(r4)
/* 814F9318 | 90 64 00 AC */	stw r3, 0xac(r4)
/* 814F931C | 38 84 00 1C */	addi r4, r4, 0x1c
.L_814F9320:
/* 814F9320 | 80 18 01 08 */	lwz r0, 0x108(r24)
/* 814F9324 | 7C 05 00 00 */	cmpw r5, r0
/* 814F9328 | 41 80 FF D4 */	blt .L_814F92FC
/* 814F932C | 7F 1B C3 78 */	mr r27, r24
/* 814F9330 | 3B 20 00 00 */	li r25, 0x0
/* 814F9334 | 48 00 00 40 */	b .L_814F9374
.L_814F9338:
/* 814F9338 | 7F 7C DB 78 */	mr r28, r27
/* 814F933C | 3B 40 00 00 */	li r26, 0x0
/* 814F9340 | 48 00 00 20 */	b .L_814F9360
.L_814F9344:
/* 814F9344 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 814F9348 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814F934C | 41 82 00 0C */	beq .L_814F9358
/* 814F9350 | 38 80 00 00 */	li r4, 0x0
/* 814F9354 | 48 05 BD 3D */	bl fn_81555090
.L_814F9358:
/* 814F9358 | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 814F935C | 3B 5A 00 01 */	addi r26, r26, 0x1
.L_814F9360:
/* 814F9360 | 80 18 01 08 */	lwz r0, 0x108(r24)
/* 814F9364 | 7C 1A 00 00 */	cmpw r26, r0
/* 814F9368 | 41 80 FF DC */	blt .L_814F9344
/* 814F936C | 3B 7B 00 10 */	addi r27, r27, 0x10
/* 814F9370 | 3B 39 00 01 */	addi r25, r25, 0x1
.L_814F9374:
/* 814F9374 | 80 18 01 04 */	lwz r0, 0x104(r24)
/* 814F9378 | 7C 19 00 00 */	cmpw r25, r0
/* 814F937C | 41 80 FF BC */	blt .L_814F9338
/* 814F9380 | 80 78 01 14 */	lwz r3, 0x114(r24)
/* 814F9384 | 3C 00 43 30 */	lis r0, 0x4330
/* 814F9388 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814F938C | 6C 60 80 00 */	xoris r0, r3, 0x8000
/* 814F9390 | C8 62 8D E8 */	lfd f3, lbl_816951E8@sda21(r0)
/* 814F9394 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814F9398 | C0 58 01 84 */	lfs f2, 0x184(r24)
/* 814F939C | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 814F93A0 | C0 22 8D E0 */	lfs f1, lbl_816951E0@sda21(r0)
/* 814F93A4 | EC 60 18 28 */	fsubs f3, f0, f3
/* 814F93A8 | C0 02 8D E4 */	lfs f0, lbl_816951E4@sda21(r0)
/* 814F93AC | EC 42 00 F2 */	fmuls f2, f2, f3
/* 814F93B0 | EC 22 08 24 */	fdivs f1, f2, f1
/* 814F93B4 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 814F93B8 | 40 81 00 0C */	ble .L_814F93C4
/* 814F93BC | 3B 20 00 02 */	li r25, 0x2
/* 814F93C0 | 48 00 00 1C */	b .L_814F93DC
.L_814F93C4:
/* 814F93C4 | C0 02 8D D8 */	lfs f0, lbl_816951D8@sda21(r0)
/* 814F93C8 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 814F93CC | 40 81 00 0C */	ble .L_814F93D8
/* 814F93D0 | 3B 20 00 03 */	li r25, 0x3
/* 814F93D4 | 48 00 00 08 */	b .L_814F93DC
.L_814F93D8:
/* 814F93D8 | 3B 20 00 04 */	li r25, 0x4
.L_814F93DC:
/* 814F93DC | 7F 1C C3 78 */	mr r28, r24
/* 814F93E0 | 3B 40 00 00 */	li r26, 0x0
/* 814F93E4 | 48 00 00 40 */	b .L_814F9424
.L_814F93E8:
/* 814F93E8 | 7F 9D E3 78 */	mr r29, r28
/* 814F93EC | 3B 60 00 00 */	li r27, 0x0
/* 814F93F0 | 48 00 00 20 */	b .L_814F9410
.L_814F93F4:
/* 814F93F4 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 814F93F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814F93FC | 41 82 00 0C */	beq .L_814F9408
/* 814F9400 | 7F 24 CB 78 */	mr r4, r25
/* 814F9404 | 48 05 BB 5D */	bl fn_81554F60
.L_814F9408:
/* 814F9408 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 814F940C | 3B 7B 00 01 */	addi r27, r27, 0x1
.L_814F9410:
/* 814F9410 | 80 18 01 08 */	lwz r0, 0x108(r24)
/* 814F9414 | 7C 1B 00 00 */	cmpw r27, r0
/* 814F9418 | 41 80 FF DC */	blt .L_814F93F4
/* 814F941C | 3B 9C 00 10 */	addi r28, r28, 0x10
/* 814F9420 | 3B 5A 00 01 */	addi r26, r26, 0x1
.L_814F9424:
/* 814F9424 | 80 18 01 04 */	lwz r0, 0x104(r24)
/* 814F9428 | 7C 1A 00 00 */	cmpw r26, r0
/* 814F942C | 41 80 FF BC */	blt .L_814F93E8
/* 814F9430 | 88 18 01 23 */	lbz r0, 0x123(r24)
/* 814F9434 | 38 60 00 00 */	li r3, 0x0
/* 814F9438 | 98 78 01 1F */	stb r3, 0x11f(r24)
/* 814F943C | 39 61 00 30 */	addi r11, r1, 0x30
/* 814F9440 | 60 00 00 70 */	ori r0, r0, 0x70
/* 814F9444 | 98 78 01 20 */	stb r3, 0x120(r24)
/* 814F9448 | 98 78 01 1D */	stb r3, 0x11d(r24)
/* 814F944C | 98 78 01 1E */	stb r3, 0x11e(r24)
/* 814F9450 | 98 18 01 23 */	stb r0, 0x123(r24)
/* 814F9454 | 48 10 00 AD */	bl _restgpr_24
/* 814F9458 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814F945C | 7C 08 03 A6 */	mtlr r0
/* 814F9460 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814F9464 | 4E 80 00 20 */	blr
.endfn Setup__Q44nw4r3snd6detail7AxVoiceFRCQ44nw4r3snd6detail8WaveData

# .text:0xB68 | 0x814F9468 | size: 0x4C
# nw4r::snd::detail::AxVoice::Start()
.fn Start__Q44nw4r3snd6detail7AxVoiceFv, global
/* 814F9468 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814F946C | 7C 08 02 A6 */	mflr r0
/* 814F9470 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814F9474 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814F9478 | 7C 7F 1B 78 */	mr r31, r3
/* 814F947C | 48 03 74 09 */	bl OSDisableInterrupts
/* 814F9480 | 88 1F 01 23 */	lbz r0, 0x123(r31)
/* 814F9484 | 38 A0 00 01 */	li r5, 0x1
/* 814F9488 | 38 80 00 00 */	li r4, 0x0
/* 814F948C | 98 BF 01 1D */	stb r5, 0x11d(r31)
/* 814F9490 | 60 00 00 01 */	ori r0, r0, 0x1
/* 814F9494 | 98 9F 01 1F */	stb r4, 0x11f(r31)
/* 814F9498 | 98 1F 01 23 */	stb r0, 0x123(r31)
/* 814F949C | 48 03 74 11 */	bl OSRestoreInterrupts
/* 814F94A0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814F94A4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814F94A8 | 7C 08 03 A6 */	mtlr r0
/* 814F94AC | 38 21 00 10 */	addi r1, r1, 0x10
/* 814F94B0 | 4E 80 00 20 */	blr
.endfn Start__Q44nw4r3snd6detail7AxVoiceFv

# .text:0xBB4 | 0x814F94B4 | size: 0xF0
# nw4r::snd::detail::AxVoice::Stop()
.fn Stop__Q44nw4r3snd6detail7AxVoiceFv, global
/* 814F94B4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814F94B8 | 7C 08 02 A6 */	mflr r0
/* 814F94BC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814F94C0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814F94C4 | 48 0F FF F9 */	bl _savegpr_26
/* 814F94C8 | 7C 7A 1B 78 */	mr r26, r3
/* 814F94CC | 48 03 73 B9 */	bl OSDisableInterrupts
/* 814F94D0 | 88 1A 01 1E */	lbz r0, 0x11e(r26)
/* 814F94D4 | 7C 7F 1B 78 */	mr r31, r3
/* 814F94D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814F94DC | 41 82 00 98 */	beq .L_814F9574
/* 814F94E0 | 48 03 73 A5 */	bl OSDisableInterrupts
/* 814F94E4 | 80 9A 00 0C */	lwz r4, 0xc(r26)
/* 814F94E8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814F94EC | 40 82 00 10 */	bne .L_814F94FC
/* 814F94F0 | 48 03 73 BD */	bl OSRestoreInterrupts
/* 814F94F4 | 3B C0 00 00 */	li r30, 0x0
/* 814F94F8 | 48 00 00 18 */	b .L_814F9510
.L_814F94FC:
/* 814F94FC | A0 84 00 38 */	lhz r4, 0x38(r4)
/* 814F9500 | 38 04 FF FF */	subi r0, r4, 0x1
/* 814F9504 | 7C 00 00 34 */	cntlzw r0, r0
/* 814F9508 | 54 1E D9 7E */	srwi r30, r0, 5
/* 814F950C | 48 03 73 A1 */	bl OSRestoreInterrupts
.L_814F9510:
/* 814F9510 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814F9514 | 41 82 00 58 */	beq .L_814F956C
/* 814F9518 | 7F 5C D3 78 */	mr r28, r26
/* 814F951C | 3B A0 00 00 */	li r29, 0x0
/* 814F9520 | 48 00 00 40 */	b .L_814F9560
.L_814F9524:
/* 814F9524 | 7F 9B E3 78 */	mr r27, r28
/* 814F9528 | 3B C0 00 00 */	li r30, 0x0
/* 814F952C | 48 00 00 20 */	b .L_814F954C
.L_814F9530:
/* 814F9530 | 80 7B 00 0C */	lwz r3, 0xc(r27)
/* 814F9534 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814F9538 | 41 82 00 0C */	beq .L_814F9544
/* 814F953C | 38 80 00 00 */	li r4, 0x0
/* 814F9540 | 48 05 BA E1 */	bl fn_81555020
.L_814F9544:
/* 814F9544 | 3B 7B 00 04 */	addi r27, r27, 0x4
/* 814F9548 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_814F954C:
/* 814F954C | 80 1A 01 08 */	lwz r0, 0x108(r26)
/* 814F9550 | 7C 1E 00 00 */	cmpw r30, r0
/* 814F9554 | 41 80 FF DC */	blt .L_814F9530
/* 814F9558 | 3B 9C 00 10 */	addi r28, r28, 0x10
/* 814F955C | 3B BD 00 01 */	addi r29, r29, 0x1
.L_814F9560:
/* 814F9560 | 80 1A 01 04 */	lwz r0, 0x104(r26)
/* 814F9564 | 7C 1D 00 00 */	cmpw r29, r0
/* 814F9568 | 41 80 FF BC */	blt .L_814F9524
.L_814F956C:
/* 814F956C | 38 00 00 00 */	li r0, 0x0
/* 814F9570 | 98 1A 01 1E */	stb r0, 0x11e(r26)
.L_814F9574:
/* 814F9574 | 38 00 00 00 */	li r0, 0x0
/* 814F9578 | 7F E3 FB 78 */	mr r3, r31
/* 814F957C | 98 1A 01 20 */	stb r0, 0x120(r26)
/* 814F9580 | 98 1A 01 1F */	stb r0, 0x11f(r26)
/* 814F9584 | 98 1A 01 1D */	stb r0, 0x11d(r26)
/* 814F9588 | 48 03 73 25 */	bl OSRestoreInterrupts
/* 814F958C | 39 61 00 20 */	addi r11, r1, 0x20
/* 814F9590 | 48 0F FF 79 */	bl _restgpr_26
/* 814F9594 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814F9598 | 7C 08 03 A6 */	mtlr r0
/* 814F959C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814F95A0 | 4E 80 00 20 */	blr
.endfn Stop__Q44nw4r3snd6detail7AxVoiceFv

# .text:0xCA4 | 0x814F95A4 | size: 0x60
# nw4r::snd::detail::AxVoice::Pause(bool)
.fn Pause__Q44nw4r3snd6detail7AxVoiceFb, global
/* 814F95A4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814F95A8 | 7C 08 02 A6 */	mflr r0
/* 814F95AC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814F95B0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814F95B4 | 7C 9F 23 78 */	mr r31, r4
/* 814F95B8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814F95BC | 7C 7E 1B 78 */	mr r30, r3
/* 814F95C0 | 48 03 72 C5 */	bl OSDisableInterrupts
/* 814F95C4 | 88 1E 01 1F */	lbz r0, 0x11f(r30)
/* 814F95C8 | 7C 00 F8 40 */	cmplw r0, r31
/* 814F95CC | 40 82 00 0C */	bne .L_814F95D8
/* 814F95D0 | 48 03 72 DD */	bl OSRestoreInterrupts
/* 814F95D4 | 48 00 00 18 */	b .L_814F95EC
.L_814F95D8:
/* 814F95D8 | 88 1E 01 23 */	lbz r0, 0x123(r30)
/* 814F95DC | 9B FE 01 1F */	stb r31, 0x11f(r30)
/* 814F95E0 | 60 00 00 02 */	ori r0, r0, 0x2
/* 814F95E4 | 98 1E 01 23 */	stb r0, 0x123(r30)
/* 814F95E8 | 48 03 72 C5 */	bl OSRestoreInterrupts
.L_814F95EC:
/* 814F95EC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814F95F0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814F95F4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814F95F8 | 7C 08 03 A6 */	mtlr r0
/* 814F95FC | 38 21 00 10 */	addi r1, r1, 0x10
/* 814F9600 | 4E 80 00 20 */	blr
.endfn Pause__Q44nw4r3snd6detail7AxVoiceFb

# .text:0xD04 | 0x814F9604 | size: 0x44
# nw4r::snd::detail::AxVoice::SetVolume(float)
.fn SetVolume__Q44nw4r3snd6detail7AxVoiceFf, global
/* 814F9604 | C0 42 8D D8 */	lfs f2, lbl_816951D8@sda21(r0)
/* 814F9608 | FC 01 10 40 */	fcmpo cr0, f1, f2
/* 814F960C | 40 81 00 08 */	ble .L_814F9614
/* 814F9610 | 48 00 00 18 */	b .L_814F9628
.L_814F9614:
/* 814F9614 | C0 42 8D DC */	lfs f2, lbl_816951DC@sda21(r0)
/* 814F9618 | FC 01 10 40 */	fcmpo cr0, f1, f2
/* 814F961C | 40 80 00 08 */	bge .L_814F9624
/* 814F9620 | 48 00 00 08 */	b .L_814F9628
.L_814F9624:
/* 814F9624 | FC 40 08 90 */	fmr f2, f1
.L_814F9628:
/* 814F9628 | C0 03 01 88 */	lfs f0, 0x188(r3)
/* 814F962C | FC 02 00 00 */	fcmpu cr0, f2, f0
/* 814F9630 | 4D 82 00 20 */	beqlr
/* 814F9634 | 88 03 01 23 */	lbz r0, 0x123(r3)
/* 814F9638 | D0 43 01 88 */	stfs f2, 0x188(r3)
/* 814F963C | 60 00 00 10 */	ori r0, r0, 0x10
/* 814F9640 | 98 03 01 23 */	stb r0, 0x123(r3)
/* 814F9644 | 4E 80 00 20 */	blr
.endfn SetVolume__Q44nw4r3snd6detail7AxVoiceFf

# .text:0xD48 | 0x814F9648 | size: 0xC8
# nw4r::snd::detail::AxVoice::SetVeVolume(float, float)
.fn SetVeVolume__Q44nw4r3snd6detail7AxVoiceFff, global
/* 814F9648 | C0 02 8D DC */	lfs f0, lbl_816951DC@sda21(r0)
/* 814F964C | FC 02 00 40 */	fcmpo cr0, f2, f0
/* 814F9650 | 40 80 00 48 */	bge .L_814F9698
/* 814F9654 | C0 42 8D D8 */	lfs f2, lbl_816951D8@sda21(r0)
/* 814F9658 | FC 01 10 40 */	fcmpo cr0, f1, f2
/* 814F965C | 40 81 00 08 */	ble .L_814F9664
/* 814F9660 | 48 00 00 18 */	b .L_814F9678
.L_814F9664:
/* 814F9664 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 814F9668 | 40 80 00 08 */	bge .L_814F9670
/* 814F966C | 48 00 00 08 */	b .L_814F9674
.L_814F9670:
/* 814F9670 | FC 00 08 90 */	fmr f0, f1
.L_814F9674:
/* 814F9674 | FC 40 00 90 */	fmr f2, f0
.L_814F9678:
/* 814F9678 | C0 03 01 A0 */	lfs f0, 0x1a0(r3)
/* 814F967C | FC 02 00 00 */	fcmpu cr0, f2, f0
/* 814F9680 | 4D 82 00 20 */	beqlr
/* 814F9684 | 88 03 01 23 */	lbz r0, 0x123(r3)
/* 814F9688 | D0 43 01 A0 */	stfs f2, 0x1a0(r3)
/* 814F968C | 60 00 00 10 */	ori r0, r0, 0x10
/* 814F9690 | 98 03 01 23 */	stb r0, 0x123(r3)
/* 814F9694 | 4E 80 00 20 */	blr
.L_814F9698:
/* 814F9698 | C0 62 8D D8 */	lfs f3, lbl_816951D8@sda21(r0)
/* 814F969C | FC 01 18 40 */	fcmpo cr0, f1, f3
/* 814F96A0 | 40 81 00 08 */	ble .L_814F96A8
/* 814F96A4 | 48 00 00 18 */	b .L_814F96BC
.L_814F96A8:
/* 814F96A8 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 814F96AC | 40 80 00 08 */	bge .L_814F96B4
/* 814F96B0 | 48 00 00 08 */	b .L_814F96B8
.L_814F96B4:
/* 814F96B4 | FC 00 08 90 */	fmr f0, f1
.L_814F96B8:
/* 814F96B8 | FC 60 00 90 */	fmr f3, f0
.L_814F96BC:
/* 814F96BC | C0 22 8D D8 */	lfs f1, lbl_816951D8@sda21(r0)
/* 814F96C0 | FC 02 08 40 */	fcmpo cr0, f2, f1
/* 814F96C4 | 40 81 00 08 */	ble .L_814F96CC
/* 814F96C8 | 48 00 00 18 */	b .L_814F96E0
.L_814F96CC:
/* 814F96CC | C0 22 8D DC */	lfs f1, lbl_816951DC@sda21(r0)
/* 814F96D0 | FC 02 08 40 */	fcmpo cr0, f2, f1
/* 814F96D4 | 40 80 00 08 */	bge .L_814F96DC
/* 814F96D8 | 48 00 00 08 */	b .L_814F96E0
.L_814F96DC:
/* 814F96DC | FC 20 10 90 */	fmr f1, f2
.L_814F96E0:
/* 814F96E0 | C0 03 01 9C */	lfs f0, 0x19c(r3)
/* 814F96E4 | FC 01 00 00 */	fcmpu cr0, f1, f0
/* 814F96E8 | 40 82 00 10 */	bne .L_814F96F8
/* 814F96EC | C0 03 01 A0 */	lfs f0, 0x1a0(r3)
/* 814F96F0 | FC 03 00 00 */	fcmpu cr0, f3, f0
/* 814F96F4 | 4D 82 00 20 */	beqlr
.L_814F96F8:
/* 814F96F8 | 88 03 01 23 */	lbz r0, 0x123(r3)
/* 814F96FC | D0 23 01 9C */	stfs f1, 0x19c(r3)
/* 814F9700 | 60 00 00 10 */	ori r0, r0, 0x10
/* 814F9704 | D0 63 01 A0 */	stfs f3, 0x1a0(r3)
/* 814F9708 | 98 03 01 23 */	stb r0, 0x123(r3)
/* 814F970C | 4E 80 00 20 */	blr
.endfn SetVeVolume__Q44nw4r3snd6detail7AxVoiceFff

# .text:0xE10 | 0x814F9710 | size: 0x20
# nw4r::snd::detail::AxVoice::SetPitch(float)
.fn SetPitch__Q44nw4r3snd6detail7AxVoiceFf, global
/* 814F9710 | C0 03 01 84 */	lfs f0, 0x184(r3)
/* 814F9714 | FC 01 00 00 */	fcmpu cr0, f1, f0
/* 814F9718 | 4D 82 00 20 */	beqlr
/* 814F971C | 88 03 01 23 */	lbz r0, 0x123(r3)
/* 814F9720 | D0 23 01 84 */	stfs f1, 0x184(r3)
/* 814F9724 | 60 00 00 08 */	ori r0, r0, 0x8
/* 814F9728 | 98 03 01 23 */	stb r0, 0x123(r3)
/* 814F972C | 4E 80 00 20 */	blr
.endfn SetPitch__Q44nw4r3snd6detail7AxVoiceFf

# .text:0xE30 | 0x814F9730 | size: 0x44
# nw4r::snd::detail::AxVoice::SetPan(float)
.fn SetPan__Q44nw4r3snd6detail7AxVoiceFf, global
/* 814F9730 | C0 42 8D D8 */	lfs f2, lbl_816951D8@sda21(r0)
/* 814F9734 | FC 01 10 40 */	fcmpo cr0, f1, f2
/* 814F9738 | 40 81 00 08 */	ble .L_814F9740
/* 814F973C | 48 00 00 18 */	b .L_814F9754
.L_814F9740:
/* 814F9740 | C0 42 8D F0 */	lfs f2, lbl_816951F0@sda21(r0)
/* 814F9744 | FC 01 10 40 */	fcmpo cr0, f1, f2
/* 814F9748 | 40 80 00 08 */	bge .L_814F9750
/* 814F974C | 48 00 00 08 */	b .L_814F9754
.L_814F9750:
/* 814F9750 | FC 40 08 90 */	fmr f2, f1
.L_814F9754:
/* 814F9754 | C0 03 01 28 */	lfs f0, 0x128(r3)
/* 814F9758 | FC 02 00 00 */	fcmpu cr0, f2, f0
/* 814F975C | 4D 82 00 20 */	beqlr
/* 814F9760 | 88 03 01 23 */	lbz r0, 0x123(r3)
/* 814F9764 | D0 43 01 28 */	stfs f2, 0x128(r3)
/* 814F9768 | 60 00 00 20 */	ori r0, r0, 0x20
/* 814F976C | 98 03 01 23 */	stb r0, 0x123(r3)
/* 814F9770 | 4E 80 00 20 */	blr
.endfn SetPan__Q44nw4r3snd6detail7AxVoiceFf

# .text:0xE74 | 0x814F9774 | size: 0x44
# nw4r::snd::detail::AxVoice::SetSurroundPan(float)
.fn SetSurroundPan__Q44nw4r3snd6detail7AxVoiceFf, global
/* 814F9774 | C0 42 8D F4 */	lfs f2, lbl_816951F4@sda21(r0)
/* 814F9778 | FC 01 10 40 */	fcmpo cr0, f1, f2
/* 814F977C | 40 81 00 08 */	ble .L_814F9784
/* 814F9780 | 48 00 00 18 */	b .L_814F9798
.L_814F9784:
/* 814F9784 | C0 42 8D DC */	lfs f2, lbl_816951DC@sda21(r0)
/* 814F9788 | FC 01 10 40 */	fcmpo cr0, f1, f2
/* 814F978C | 40 80 00 08 */	bge .L_814F9794
/* 814F9790 | 48 00 00 08 */	b .L_814F9798
.L_814F9794:
/* 814F9794 | FC 40 08 90 */	fmr f2, f1
.L_814F9798:
/* 814F9798 | C0 03 01 2C */	lfs f0, 0x12c(r3)
/* 814F979C | FC 02 00 00 */	fcmpu cr0, f2, f0
/* 814F97A0 | 4D 82 00 20 */	beqlr
/* 814F97A4 | 88 03 01 23 */	lbz r0, 0x123(r3)
/* 814F97A8 | D0 43 01 2C */	stfs f2, 0x12c(r3)
/* 814F97AC | 60 00 00 20 */	ori r0, r0, 0x20
/* 814F97B0 | 98 03 01 23 */	stb r0, 0x123(r3)
/* 814F97B4 | 4E 80 00 20 */	blr
.endfn SetSurroundPan__Q44nw4r3snd6detail7AxVoiceFf

# .text:0xEB8 | 0x814F97B8 | size: 0x20
# nw4r::snd::detail::AxVoice::SetPan2(float)
.fn SetPan2__Q44nw4r3snd6detail7AxVoiceFf, global
/* 814F97B8 | C0 03 01 30 */	lfs f0, 0x130(r3)
/* 814F97BC | FC 01 00 00 */	fcmpu cr0, f1, f0
/* 814F97C0 | 4D 82 00 20 */	beqlr
/* 814F97C4 | 88 03 01 23 */	lbz r0, 0x123(r3)
/* 814F97C8 | D0 23 01 30 */	stfs f1, 0x130(r3)
/* 814F97CC | 60 00 00 20 */	ori r0, r0, 0x20
/* 814F97D0 | 98 03 01 23 */	stb r0, 0x123(r3)
/* 814F97D4 | 4E 80 00 20 */	blr
.endfn SetPan2__Q44nw4r3snd6detail7AxVoiceFf

# .text:0xED8 | 0x814F97D8 | size: 0x44
# nw4r::snd::detail::AxVoice::SetSurroundPan2(float)
.fn SetSurroundPan2__Q44nw4r3snd6detail7AxVoiceFf, global
/* 814F97D8 | C0 42 8D F4 */	lfs f2, lbl_816951F4@sda21(r0)
/* 814F97DC | FC 01 10 40 */	fcmpo cr0, f1, f2
/* 814F97E0 | 40 81 00 08 */	ble .L_814F97E8
/* 814F97E4 | 48 00 00 18 */	b .L_814F97FC
.L_814F97E8:
/* 814F97E8 | C0 42 8D DC */	lfs f2, lbl_816951DC@sda21(r0)
/* 814F97EC | FC 01 10 40 */	fcmpo cr0, f1, f2
/* 814F97F0 | 40 80 00 08 */	bge .L_814F97F8
/* 814F97F4 | 48 00 00 08 */	b .L_814F97FC
.L_814F97F8:
/* 814F97F8 | FC 40 08 90 */	fmr f2, f1
.L_814F97FC:
/* 814F97FC | C0 03 01 34 */	lfs f0, 0x134(r3)
/* 814F9800 | FC 02 00 00 */	fcmpu cr0, f2, f0
/* 814F9804 | 4D 82 00 20 */	beqlr
/* 814F9808 | 88 03 01 23 */	lbz r0, 0x123(r3)
/* 814F980C | D0 43 01 34 */	stfs f2, 0x134(r3)
/* 814F9810 | 60 00 00 20 */	ori r0, r0, 0x20
/* 814F9814 | 98 03 01 23 */	stb r0, 0x123(r3)
/* 814F9818 | 4E 80 00 20 */	blr
.endfn SetSurroundPan2__Q44nw4r3snd6detail7AxVoiceFf

# .text:0xF1C | 0x814F981C | size: 0x44
# nw4r::snd::detail::AxVoice::SetLpfFreq(float)
.fn SetLpfFreq__Q44nw4r3snd6detail7AxVoiceFf, global
/* 814F981C | C0 42 8D D8 */	lfs f2, lbl_816951D8@sda21(r0)
/* 814F9820 | FC 01 10 40 */	fcmpo cr0, f1, f2
/* 814F9824 | 40 81 00 08 */	ble .L_814F982C
/* 814F9828 | 48 00 00 18 */	b .L_814F9840
.L_814F982C:
/* 814F982C | C0 42 8D DC */	lfs f2, lbl_816951DC@sda21(r0)
/* 814F9830 | FC 01 10 40 */	fcmpo cr0, f1, f2
/* 814F9834 | 40 80 00 08 */	bge .L_814F983C
/* 814F9838 | 48 00 00 08 */	b .L_814F9840
.L_814F983C:
/* 814F983C | FC 40 08 90 */	fmr f2, f1
.L_814F9840:
/* 814F9840 | C0 03 01 38 */	lfs f0, 0x138(r3)
/* 814F9844 | FC 02 00 00 */	fcmpu cr0, f2, f0
/* 814F9848 | 4D 82 00 20 */	beqlr
/* 814F984C | 88 03 01 23 */	lbz r0, 0x123(r3)
/* 814F9850 | D0 43 01 38 */	stfs f2, 0x138(r3)
/* 814F9854 | 60 00 00 40 */	ori r0, r0, 0x40
/* 814F9858 | 98 03 01 23 */	stb r0, 0x123(r3)
/* 814F985C | 4E 80 00 20 */	blr
.endfn SetLpfFreq__Q44nw4r3snd6detail7AxVoiceFf

# .text:0xF60 | 0x814F9860 | size: 0x20
# nw4r::snd::detail::AxVoice::SetOutputLine(int)
.fn SetOutputLine__Q44nw4r3snd6detail7AxVoiceFi, global
/* 814F9860 | 80 03 01 3C */	lwz r0, 0x13c(r3)
/* 814F9864 | 7C 04 00 00 */	cmpw r4, r0
/* 814F9868 | 4D 82 00 20 */	beqlr
/* 814F986C | 88 03 01 23 */	lbz r0, 0x123(r3)
/* 814F9870 | 90 83 01 3C */	stw r4, 0x13c(r3)
/* 814F9874 | 60 00 00 20 */	ori r0, r0, 0x20
/* 814F9878 | 98 03 01 23 */	stb r0, 0x123(r3)
/* 814F987C | 4E 80 00 20 */	blr
.endfn SetOutputLine__Q44nw4r3snd6detail7AxVoiceFi

# .text:0xF80 | 0x814F9880 | size: 0x44
# nw4r::snd::detail::AxVoice::SetMainOutVolume(float)
.fn SetMainOutVolume__Q44nw4r3snd6detail7AxVoiceFf, global
/* 814F9880 | C0 42 8D D8 */	lfs f2, lbl_816951D8@sda21(r0)
/* 814F9884 | FC 01 10 40 */	fcmpo cr0, f1, f2
/* 814F9888 | 40 81 00 08 */	ble .L_814F9890
/* 814F988C | 48 00 00 18 */	b .L_814F98A4
.L_814F9890:
/* 814F9890 | C0 42 8D DC */	lfs f2, lbl_816951DC@sda21(r0)
/* 814F9894 | FC 01 10 40 */	fcmpo cr0, f1, f2
/* 814F9898 | 40 80 00 08 */	bge .L_814F98A0
/* 814F989C | 48 00 00 08 */	b .L_814F98A4
.L_814F98A0:
/* 814F98A0 | FC 40 08 90 */	fmr f2, f1
.L_814F98A4:
/* 814F98A4 | C0 03 01 40 */	lfs f0, 0x140(r3)
/* 814F98A8 | FC 02 00 00 */	fcmpu cr0, f2, f0
/* 814F98AC | 4D 82 00 20 */	beqlr
/* 814F98B0 | 88 03 01 23 */	lbz r0, 0x123(r3)
/* 814F98B4 | D0 43 01 40 */	stfs f2, 0x140(r3)
/* 814F98B8 | 60 00 00 20 */	ori r0, r0, 0x20
/* 814F98BC | 98 03 01 23 */	stb r0, 0x123(r3)
/* 814F98C0 | 4E 80 00 20 */	blr
.endfn SetMainOutVolume__Q44nw4r3snd6detail7AxVoiceFf

# .text:0xFC4 | 0x814F98C4 | size: 0x4C
# nw4r::snd::detail::AxVoice::SetRemoteOutVolume(int, float)
.fn SetRemoteOutVolume__Q44nw4r3snd6detail7AxVoiceFif, global
/* 814F98C4 | C0 42 8D D8 */	lfs f2, lbl_816951D8@sda21(r0)
/* 814F98C8 | FC 01 10 40 */	fcmpo cr0, f1, f2
/* 814F98CC | 40 81 00 08 */	ble .L_814F98D4
/* 814F98D0 | 48 00 00 18 */	b .L_814F98E8
.L_814F98D4:
/* 814F98D4 | C0 42 8D DC */	lfs f2, lbl_816951DC@sda21(r0)
/* 814F98D8 | FC 01 10 40 */	fcmpo cr0, f1, f2
/* 814F98DC | 40 80 00 08 */	bge .L_814F98E4
/* 814F98E0 | 48 00 00 08 */	b .L_814F98E8
.L_814F98E4:
/* 814F98E4 | FC 40 08 90 */	fmr f2, f1
.L_814F98E8:
/* 814F98E8 | 54 80 10 3A */	slwi r0, r4, 2
/* 814F98EC | 7C 83 02 14 */	add r4, r3, r0
/* 814F98F0 | C0 04 01 54 */	lfs f0, 0x154(r4)
/* 814F98F4 | FC 02 00 00 */	fcmpu cr0, f2, f0
/* 814F98F8 | 4D 82 00 20 */	beqlr
/* 814F98FC | D0 44 01 54 */	stfs f2, 0x154(r4)
/* 814F9900 | 88 03 01 23 */	lbz r0, 0x123(r3)
/* 814F9904 | 60 00 00 20 */	ori r0, r0, 0x20
/* 814F9908 | 98 03 01 23 */	stb r0, 0x123(r3)
/* 814F990C | 4E 80 00 20 */	blr
.endfn SetRemoteOutVolume__Q44nw4r3snd6detail7AxVoiceFif

# .text:0x1010 | 0x814F9910 | size: 0x48
# nw4r::snd::detail::AxVoice::SetMainSend(float)
.fn SetMainSend__Q44nw4r3snd6detail7AxVoiceFf, global
/* 814F9910 | C0 42 8D D8 */	lfs f2, lbl_816951D8@sda21(r0)
/* 814F9914 | EC 01 10 2A */	fadds f0, f1, f2
/* 814F9918 | FC 00 10 40 */	fcmpo cr0, f0, f2
/* 814F991C | 40 81 00 08 */	ble .L_814F9924
/* 814F9920 | 48 00 00 18 */	b .L_814F9938
.L_814F9924:
/* 814F9924 | C0 42 8D DC */	lfs f2, lbl_816951DC@sda21(r0)
/* 814F9928 | FC 00 10 40 */	fcmpo cr0, f0, f2
/* 814F992C | 40 80 00 08 */	bge .L_814F9934
/* 814F9930 | 48 00 00 08 */	b .L_814F9938
.L_814F9934:
/* 814F9934 | FC 40 00 90 */	fmr f2, f0
.L_814F9938:
/* 814F9938 | C0 03 01 44 */	lfs f0, 0x144(r3)
/* 814F993C | FC 02 00 00 */	fcmpu cr0, f2, f0
/* 814F9940 | 4D 82 00 20 */	beqlr
/* 814F9944 | 88 03 01 23 */	lbz r0, 0x123(r3)
/* 814F9948 | D0 43 01 44 */	stfs f2, 0x144(r3)
/* 814F994C | 60 00 00 20 */	ori r0, r0, 0x20
/* 814F9950 | 98 03 01 23 */	stb r0, 0x123(r3)
/* 814F9954 | 4E 80 00 20 */	blr
.endfn SetMainSend__Q44nw4r3snd6detail7AxVoiceFf

# .text:0x1058 | 0x814F9958 | size: 0x4C
# nw4r::snd::detail::AxVoice::SetFxSend(nw4r::snd::AuxBus, float)
.fn SetFxSend__Q44nw4r3snd6detail7AxVoiceFQ34nw4r3snd6AuxBusf, global
/* 814F9958 | C0 42 8D D8 */	lfs f2, lbl_816951D8@sda21(r0)
/* 814F995C | FC 01 10 40 */	fcmpo cr0, f1, f2
/* 814F9960 | 40 81 00 08 */	ble .L_814F9968
/* 814F9964 | 48 00 00 18 */	b .L_814F997C
.L_814F9968:
/* 814F9968 | C0 42 8D DC */	lfs f2, lbl_816951DC@sda21(r0)
/* 814F996C | FC 01 10 40 */	fcmpo cr0, f1, f2
/* 814F9970 | 40 80 00 08 */	bge .L_814F9978
/* 814F9974 | 48 00 00 08 */	b .L_814F997C
.L_814F9978:
/* 814F9978 | FC 40 08 90 */	fmr f2, f1
.L_814F997C:
/* 814F997C | 54 80 10 3A */	slwi r0, r4, 2
/* 814F9980 | 7C 83 02 14 */	add r4, r3, r0
/* 814F9984 | C0 04 01 48 */	lfs f0, 0x148(r4)
/* 814F9988 | FC 02 00 00 */	fcmpu cr0, f2, f0
/* 814F998C | 4D 82 00 20 */	beqlr
/* 814F9990 | D0 44 01 48 */	stfs f2, 0x148(r4)
/* 814F9994 | 88 03 01 23 */	lbz r0, 0x123(r3)
/* 814F9998 | 60 00 00 20 */	ori r0, r0, 0x20
/* 814F999C | 98 03 01 23 */	stb r0, 0x123(r3)
/* 814F99A0 | 4E 80 00 20 */	blr
.endfn SetFxSend__Q44nw4r3snd6detail7AxVoiceFQ34nw4r3snd6AuxBusf

# .text:0x10A4 | 0x814F99A4 | size: 0x50
# nw4r::snd::detail::AxVoice::SetRemoteSend(int, float)
.fn SetRemoteSend__Q44nw4r3snd6detail7AxVoiceFif, global
/* 814F99A4 | C0 42 8D D8 */	lfs f2, lbl_816951D8@sda21(r0)
/* 814F99A8 | EC 01 10 2A */	fadds f0, f1, f2
/* 814F99AC | FC 00 10 40 */	fcmpo cr0, f0, f2
/* 814F99B0 | 40 81 00 08 */	ble .L_814F99B8
/* 814F99B4 | 48 00 00 18 */	b .L_814F99CC
.L_814F99B8:
/* 814F99B8 | C0 42 8D DC */	lfs f2, lbl_816951DC@sda21(r0)
/* 814F99BC | FC 00 10 40 */	fcmpo cr0, f0, f2
/* 814F99C0 | 40 80 00 08 */	bge .L_814F99C8
/* 814F99C4 | 48 00 00 08 */	b .L_814F99CC
.L_814F99C8:
/* 814F99C8 | FC 40 00 90 */	fmr f2, f0
.L_814F99CC:
/* 814F99CC | 54 80 10 3A */	slwi r0, r4, 2
/* 814F99D0 | 7C 83 02 14 */	add r4, r3, r0
/* 814F99D4 | C0 04 01 64 */	lfs f0, 0x164(r4)
/* 814F99D8 | FC 02 00 00 */	fcmpu cr0, f2, f0
/* 814F99DC | 4D 82 00 20 */	beqlr
/* 814F99E0 | D0 44 01 64 */	stfs f2, 0x164(r4)
/* 814F99E4 | 88 03 01 23 */	lbz r0, 0x123(r3)
/* 814F99E8 | 60 00 00 20 */	ori r0, r0, 0x20
/* 814F99EC | 98 03 01 23 */	stb r0, 0x123(r3)
/* 814F99F0 | 4E 80 00 20 */	blr
.endfn SetRemoteSend__Q44nw4r3snd6detail7AxVoiceFif

# .text:0x10F4 | 0x814F99F4 | size: 0x4C
# nw4r::snd::detail::AxVoice::SetRemoteFxSend(int, float)
.fn SetRemoteFxSend__Q44nw4r3snd6detail7AxVoiceFif, global
/* 814F99F4 | C0 42 8D D8 */	lfs f2, lbl_816951D8@sda21(r0)
/* 814F99F8 | FC 01 10 40 */	fcmpo cr0, f1, f2
/* 814F99FC | 40 81 00 08 */	ble .L_814F9A04
/* 814F9A00 | 48 00 00 18 */	b .L_814F9A18
.L_814F9A04:
/* 814F9A04 | C0 42 8D DC */	lfs f2, lbl_816951DC@sda21(r0)
/* 814F9A08 | FC 01 10 40 */	fcmpo cr0, f1, f2
/* 814F9A0C | 40 80 00 08 */	bge .L_814F9A14
/* 814F9A10 | 48 00 00 08 */	b .L_814F9A18
.L_814F9A14:
/* 814F9A14 | FC 40 08 90 */	fmr f2, f1
.L_814F9A18:
/* 814F9A18 | 54 80 10 3A */	slwi r0, r4, 2
/* 814F9A1C | 7C 83 02 14 */	add r4, r3, r0
/* 814F9A20 | C0 04 01 74 */	lfs f0, 0x174(r4)
/* 814F9A24 | FC 02 00 00 */	fcmpu cr0, f2, f0
/* 814F9A28 | 4D 82 00 20 */	beqlr
/* 814F9A2C | D0 44 01 74 */	stfs f2, 0x174(r4)
/* 814F9A30 | 88 03 01 23 */	lbz r0, 0x123(r3)
/* 814F9A34 | 60 00 00 20 */	ori r0, r0, 0x20
/* 814F9A38 | 98 03 01 23 */	stb r0, 0x123(r3)
/* 814F9A3C | 4E 80 00 20 */	blr
.endfn SetRemoteFxSend__Q44nw4r3snd6detail7AxVoiceFif

# .text:0x1140 | 0x814F9A40 | size: 0x38
# nw4r::snd::detail::AxVoice::SetPriority(int)
.fn SetPriority__Q44nw4r3snd6detail7AxVoiceFi, global
/* 814F9A40 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814F9A44 | 7C 08 02 A6 */	mflr r0
/* 814F9A48 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814F9A4C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814F9A50 | 7C 7F 1B 78 */	mr r31, r3
/* 814F9A54 | 90 83 01 24 */	stw r4, 0x124(r3)
/* 814F9A58 | 4B FF DB 75 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 814F9A5C | 7F E4 FB 78 */	mr r4, r31
/* 814F9A60 | 4B FF E4 95 */	bl ChangeVoicePriority__Q44nw4r3snd6detail9AxManagerFPQ44nw4r3snd6detail7AxVoice
/* 814F9A64 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814F9A68 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814F9A6C | 7C 08 03 A6 */	mtlr r0
/* 814F9A70 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814F9A74 | 4E 80 00 20 */	blr
.endfn SetPriority__Q44nw4r3snd6detail7AxVoiceFi

# .text:0x1178 | 0x814F9A78 | size: 0x5C
# nw4r::snd::detail::AxVoice::GetCurrentPlayingDspAddress() const
.fn GetCurrentPlayingDspAddress__Q44nw4r3snd6detail7AxVoiceCFv, global
/* 814F9A78 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814F9A7C | 7C 08 02 A6 */	mflr r0
/* 814F9A80 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814F9A84 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814F9A88 | 7C 7F 1B 78 */	mr r31, r3
/* 814F9A8C | 48 03 6D F9 */	bl OSDisableInterrupts
/* 814F9A90 | 80 1F 00 0C */	lwz r0, 0xc(r31)
/* 814F9A94 | 34 A0 00 28 */	addic. r5, r0, 0x28
/* 814F9A98 | 40 82 00 10 */	bne .L_814F9AA8
/* 814F9A9C | 48 03 6E 11 */	bl OSRestoreInterrupts
/* 814F9AA0 | 38 60 00 00 */	li r3, 0x0
/* 814F9AA4 | 48 00 00 1C */	b .L_814F9AC0
.L_814F9AA8:
/* 814F9AA8 | A0 85 00 7A */	lhz r4, 0x7a(r5)
/* 814F9AAC | A0 05 00 7C */	lhz r0, 0x7c(r5)
/* 814F9AB0 | 54 84 80 1E */	slwi r4, r4, 16
/* 814F9AB4 | 7F E4 02 14 */	add r31, r4, r0
/* 814F9AB8 | 48 03 6D F5 */	bl OSRestoreInterrupts
/* 814F9ABC | 7F E3 FB 78 */	mr r3, r31
.L_814F9AC0:
/* 814F9AC0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814F9AC4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814F9AC8 | 7C 08 03 A6 */	mtlr r0
/* 814F9ACC | 38 21 00 10 */	addi r1, r1, 0x10
/* 814F9AD0 | 4E 80 00 20 */	blr
.endfn GetCurrentPlayingDspAddress__Q44nw4r3snd6detail7AxVoiceCFv

# .text:0x11D4 | 0x814F9AD4 | size: 0x4
# nw4r::snd::detail::AxVoice::SetAdpcmLoop(int, nw4r::snd::detail::AxVoice::Format, const nw4r::snd::detail::AdpcmLoopParam*)
.fn SetAdpcmLoop__Q44nw4r3snd6detail7AxVoiceFiQ54nw4r3snd6detail7AxVoice6FormatPCQ44nw4r3snd6detail14AdpcmLoopParam, global
/* 814F9AD4 | 48 00 0D E0 */	b SetAxAdpcmLoop__Q44nw4r3snd6detail7AxVoiceFiQ54nw4r3snd6detail7AxVoice6FormatPCQ44nw4r3snd6detail14AdpcmLoopParam
.endfn SetAdpcmLoop__Q44nw4r3snd6detail7AxVoiceFiQ54nw4r3snd6detail7AxVoice6FormatPCQ44nw4r3snd6detail14AdpcmLoopParam

# .text:0x11D8 | 0x814F9AD8 | size: 0x54
# nw4r::snd::detail::AxVoice::SetBaseAddress(int, const void*)
.fn SetBaseAddress__Q44nw4r3snd6detail7AxVoiceFiPCv, global
/* 814F9AD8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814F9ADC | 7C 08 02 A6 */	mflr r0
/* 814F9AE0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814F9AE4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814F9AE8 | 7C BF 2B 78 */	mr r31, r5
/* 814F9AEC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814F9AF0 | 7C 9E 23 78 */	mr r30, r4
/* 814F9AF4 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814F9AF8 | 7C 7D 1B 78 */	mr r29, r3
/* 814F9AFC | 48 03 6D 89 */	bl OSDisableInterrupts
/* 814F9B00 | 1C 1E 00 34 */	mulli r0, r30, 0x34
/* 814F9B04 | 7C 9D 02 14 */	add r4, r29, r0
/* 814F9B08 | 93 E4 00 2C */	stw r31, 0x2c(r4)
/* 814F9B0C | 48 03 6D A1 */	bl OSRestoreInterrupts
/* 814F9B10 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814F9B14 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814F9B18 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814F9B1C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814F9B20 | 7C 08 03 A6 */	mtlr r0
/* 814F9B24 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814F9B28 | 4E 80 00 20 */	blr
.endfn SetBaseAddress__Q44nw4r3snd6detail7AxVoiceFiPCv

# .text:0x122C | 0x814F9B2C | size: 0x14C
# nw4r::snd::detail::AxVoice::IsPlayFinished() const
.fn IsPlayFinished__Q44nw4r3snd6detail7AxVoiceCFv, global
/* 814F9B2C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814F9B30 | 7C 08 02 A6 */	mflr r0
/* 814F9B34 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814F9B38 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814F9B3C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814F9B40 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814F9B44 | 7C 7D 1B 78 */	mr r29, r3
/* 814F9B48 | 48 03 6D 3D */	bl OSDisableInterrupts
/* 814F9B4C | 80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 814F9B50 | 7C 7F 1B 78 */	mr r31, r3
/* 814F9B54 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814F9B58 | 40 82 00 10 */	bne .L_814F9B68
/* 814F9B5C | 48 03 6D 51 */	bl OSRestoreInterrupts
/* 814F9B60 | 38 60 00 00 */	li r3, 0x0
/* 814F9B64 | 48 00 00 F8 */	b .L_814F9C5C
.L_814F9B68:
/* 814F9B68 | 48 03 6D 1D */	bl OSDisableInterrupts
/* 814F9B6C | 80 1D 00 0C */	lwz r0, 0xc(r29)
/* 814F9B70 | 34 A0 00 28 */	addic. r5, r0, 0x28
/* 814F9B74 | 40 82 00 10 */	bne .L_814F9B84
/* 814F9B78 | 48 03 6D 35 */	bl OSRestoreInterrupts
/* 814F9B7C | 3B C0 00 00 */	li r30, 0x0
/* 814F9B80 | 48 00 00 18 */	b .L_814F9B98
.L_814F9B84:
/* 814F9B84 | A0 85 00 7A */	lhz r4, 0x7a(r5)
/* 814F9B88 | A0 05 00 7C */	lhz r0, 0x7c(r5)
/* 814F9B8C | 54 84 80 1E */	slwi r4, r4, 16
/* 814F9B90 | 7F C4 02 14 */	add r30, r4, r0
/* 814F9B94 | 48 03 6D 19 */	bl OSRestoreInterrupts
.L_814F9B98:
/* 814F9B98 | 4B FF DA 35 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 814F9B9C | 4B FF DF 2D */	bl GetZeroBufferAddress__Q44nw4r3snd6detail9AxManagerFv
/* 814F9BA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814F9BA4 | 80 1D 01 18 */	lwz r0, 0x118(r29)
/* 814F9BA8 | 41 82 00 08 */	beq .L_814F9BB0
/* 814F9BAC | 3C 63 80 00 */	addis r3, r3, 0x8000
.L_814F9BB0:
/* 814F9BB0 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 814F9BB4 | 38 80 00 00 */	li r4, 0x0
/* 814F9BB8 | 41 82 00 34 */	beq .L_814F9BEC
/* 814F9BBC | 40 80 00 10 */	bge .L_814F9BCC
/* 814F9BC0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814F9BC4 | 41 82 00 14 */	beq .L_814F9BD8
/* 814F9BC8 | 48 00 00 28 */	b .L_814F9BF0
.L_814F9BCC:
/* 814F9BCC | 2C 00 00 19 */	cmpwi r0, 0x19
/* 814F9BD0 | 41 82 00 14 */	beq .L_814F9BE4
/* 814F9BD4 | 48 00 00 1C */	b .L_814F9BF0
.L_814F9BD8:
/* 814F9BD8 | 54 63 08 3C */	slwi r3, r3, 1
/* 814F9BDC | 38 83 00 02 */	addi r4, r3, 0x2
/* 814F9BE0 | 48 00 00 10 */	b .L_814F9BF0
.L_814F9BE4:
/* 814F9BE4 | 7C 64 1B 78 */	mr r4, r3
/* 814F9BE8 | 48 00 00 08 */	b .L_814F9BF0
.L_814F9BEC:
/* 814F9BEC | 54 64 F8 7E */	srwi r4, r3, 1
.L_814F9BF0:
/* 814F9BF0 | 80 1D 01 18 */	lwz r0, 0x118(r29)
/* 814F9BF4 | 7C 83 23 78 */	mr r3, r4
/* 814F9BF8 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 814F9BFC | 41 82 00 30 */	beq .L_814F9C2C
/* 814F9C00 | 40 80 00 10 */	bge .L_814F9C10
/* 814F9C04 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814F9C08 | 41 82 00 14 */	beq .L_814F9C1C
/* 814F9C0C | 48 00 00 24 */	b .L_814F9C30
.L_814F9C10:
/* 814F9C10 | 2C 00 00 19 */	cmpwi r0, 0x19
/* 814F9C14 | 41 82 00 10 */	beq .L_814F9C24
/* 814F9C18 | 48 00 00 18 */	b .L_814F9C30
.L_814F9C1C:
/* 814F9C1C | 38 64 02 00 */	addi r3, r4, 0x200
/* 814F9C20 | 48 00 00 10 */	b .L_814F9C30
.L_814F9C24:
/* 814F9C24 | 38 64 01 00 */	addi r3, r4, 0x100
/* 814F9C28 | 48 00 00 08 */	b .L_814F9C30
.L_814F9C2C:
/* 814F9C2C | 38 64 00 80 */	addi r3, r4, 0x80
.L_814F9C30:
/* 814F9C30 | 7C 04 F0 40 */	cmplw r4, r30
/* 814F9C34 | 41 81 00 1C */	bgt .L_814F9C50
/* 814F9C38 | 7C 1E 18 40 */	cmplw r30, r3
/* 814F9C3C | 40 80 00 14 */	bge .L_814F9C50
/* 814F9C40 | 7F E3 FB 78 */	mr r3, r31
/* 814F9C44 | 48 03 6C 69 */	bl OSRestoreInterrupts
/* 814F9C48 | 38 60 00 01 */	li r3, 0x1
/* 814F9C4C | 48 00 00 10 */	b .L_814F9C5C
.L_814F9C50:
/* 814F9C50 | 7F E3 FB 78 */	mr r3, r31
/* 814F9C54 | 48 03 6C 59 */	bl OSRestoreInterrupts
/* 814F9C58 | 38 60 00 00 */	li r3, 0x0
.L_814F9C5C:
/* 814F9C5C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814F9C60 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814F9C64 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814F9C68 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814F9C6C | 7C 08 03 A6 */	mtlr r0
/* 814F9C70 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814F9C74 | 4E 80 00 20 */	blr
.endfn IsPlayFinished__Q44nw4r3snd6detail7AxVoiceCFv

# .text:0x1378 | 0x814F9C78 | size: 0x1BC
# nw4r::snd::detail::AxVoice::GetCurrentPlayingSample() const
.fn GetCurrentPlayingSample__Q44nw4r3snd6detail7AxVoiceCFv, global
/* 814F9C78 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814F9C7C | 7C 08 02 A6 */	mflr r0
/* 814F9C80 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814F9C84 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814F9C88 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814F9C8C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814F9C90 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814F9C94 | 7C 7C 1B 78 */	mr r28, r3
/* 814F9C98 | 48 03 6B ED */	bl OSDisableInterrupts
/* 814F9C9C | 83 FC 00 2C */	lwz r31, 0x2c(r28)
/* 814F9CA0 | 7C 7E 1B 78 */	mr r30, r3
/* 814F9CA4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814F9CA8 | 40 82 00 10 */	bne .L_814F9CB8
/* 814F9CAC | 48 03 6C 01 */	bl OSRestoreInterrupts
/* 814F9CB0 | 38 60 00 00 */	li r3, 0x0
/* 814F9CB4 | 48 00 01 60 */	b .L_814F9E14
.L_814F9CB8:
/* 814F9CB8 | 7F 83 E3 78 */	mr r3, r28
/* 814F9CBC | 4B FF FE 71 */	bl IsPlayFinished__Q44nw4r3snd6detail7AxVoiceCFv
/* 814F9CC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814F9CC4 | 41 82 00 AC */	beq .L_814F9D70
/* 814F9CC8 | 48 03 6B BD */	bl OSDisableInterrupts
/* 814F9CCC | 80 1C 00 0C */	lwz r0, 0xc(r28)
/* 814F9CD0 | 34 A0 00 28 */	addic. r5, r0, 0x28
/* 814F9CD4 | 40 82 00 10 */	bne .L_814F9CE4
/* 814F9CD8 | 48 03 6B D5 */	bl OSRestoreInterrupts
/* 814F9CDC | 3B A0 00 00 */	li r29, 0x0
/* 814F9CE0 | 48 00 00 18 */	b .L_814F9CF8
.L_814F9CE4:
/* 814F9CE4 | A0 85 00 76 */	lhz r4, 0x76(r5)
/* 814F9CE8 | A0 05 00 78 */	lhz r0, 0x78(r5)
/* 814F9CEC | 54 84 80 1E */	slwi r4, r4, 16
/* 814F9CF0 | 7F A4 02 14 */	add r29, r4, r0
/* 814F9CF4 | 48 03 6B B9 */	bl OSRestoreInterrupts
.L_814F9CF8:
/* 814F9CF8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814F9CFC | 80 1C 01 18 */	lwz r0, 0x118(r28)
/* 814F9D00 | 41 82 00 08 */	beq .L_814F9D08
/* 814F9D04 | 3F FF 80 00 */	addis r31, r31, 0x8000
.L_814F9D08:
/* 814F9D08 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 814F9D0C | 3B 80 00 00 */	li r28, 0x0
/* 814F9D10 | 41 82 00 48 */	beq .L_814F9D58
/* 814F9D14 | 40 80 00 10 */	bge .L_814F9D24
/* 814F9D18 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814F9D1C | 41 82 00 14 */	beq .L_814F9D30
/* 814F9D20 | 48 00 00 40 */	b .L_814F9D60
.L_814F9D24:
/* 814F9D24 | 2C 00 00 19 */	cmpwi r0, 0x19
/* 814F9D28 | 41 82 00 28 */	beq .L_814F9D50
/* 814F9D2C | 48 00 00 34 */	b .L_814F9D60
.L_814F9D30:
/* 814F9D30 | 57 E0 08 3C */	slwi r0, r31, 1
/* 814F9D34 | 7C 80 E8 50 */	subf r4, r0, r29
/* 814F9D38 | 54 80 E1 3E */	srwi r0, r4, 4
/* 814F9D3C | 1C 60 00 0E */	mulli r3, r0, 0xe
/* 814F9D40 | 54 80 07 3E */	clrlwi r0, r4, 28
/* 814F9D44 | 7C 60 1A 14 */	add r3, r0, r3
/* 814F9D48 | 3B 83 FF FE */	subi r28, r3, 0x2
/* 814F9D4C | 48 00 00 14 */	b .L_814F9D60
.L_814F9D50:
/* 814F9D50 | 7F 9F E8 50 */	subf r28, r31, r29
/* 814F9D54 | 48 00 00 0C */	b .L_814F9D60
.L_814F9D58:
/* 814F9D58 | 57 E0 F8 7E */	srwi r0, r31, 1
/* 814F9D5C | 7F 80 E8 50 */	subf r28, r0, r29
.L_814F9D60:
/* 814F9D60 | 7F C3 F3 78 */	mr r3, r30
/* 814F9D64 | 48 03 6B 49 */	bl OSRestoreInterrupts
/* 814F9D68 | 38 7C 00 01 */	addi r3, r28, 0x1
/* 814F9D6C | 48 00 00 A8 */	b .L_814F9E14
.L_814F9D70:
/* 814F9D70 | 48 03 6B 15 */	bl OSDisableInterrupts
/* 814F9D74 | 80 1C 00 0C */	lwz r0, 0xc(r28)
/* 814F9D78 | 34 A0 00 28 */	addic. r5, r0, 0x28
/* 814F9D7C | 40 82 00 10 */	bne .L_814F9D8C
/* 814F9D80 | 48 03 6B 2D */	bl OSRestoreInterrupts
/* 814F9D84 | 3B A0 00 00 */	li r29, 0x0
/* 814F9D88 | 48 00 00 18 */	b .L_814F9DA0
.L_814F9D8C:
/* 814F9D8C | A0 85 00 7A */	lhz r4, 0x7a(r5)
/* 814F9D90 | A0 05 00 7C */	lhz r0, 0x7c(r5)
/* 814F9D94 | 54 84 80 1E */	slwi r4, r4, 16
/* 814F9D98 | 7F A4 02 14 */	add r29, r4, r0
/* 814F9D9C | 48 03 6B 11 */	bl OSRestoreInterrupts
.L_814F9DA0:
/* 814F9DA0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814F9DA4 | 80 1C 01 18 */	lwz r0, 0x118(r28)
/* 814F9DA8 | 41 82 00 08 */	beq .L_814F9DB0
/* 814F9DAC | 3F FF 80 00 */	addis r31, r31, 0x8000
.L_814F9DB0:
/* 814F9DB0 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 814F9DB4 | 3B 80 00 00 */	li r28, 0x0
/* 814F9DB8 | 41 82 00 48 */	beq .L_814F9E00
/* 814F9DBC | 40 80 00 10 */	bge .L_814F9DCC
/* 814F9DC0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814F9DC4 | 41 82 00 14 */	beq .L_814F9DD8
/* 814F9DC8 | 48 00 00 40 */	b .L_814F9E08
.L_814F9DCC:
/* 814F9DCC | 2C 00 00 19 */	cmpwi r0, 0x19
/* 814F9DD0 | 41 82 00 28 */	beq .L_814F9DF8
/* 814F9DD4 | 48 00 00 34 */	b .L_814F9E08
.L_814F9DD8:
/* 814F9DD8 | 57 E0 08 3C */	slwi r0, r31, 1
/* 814F9DDC | 7C 80 E8 50 */	subf r4, r0, r29
/* 814F9DE0 | 54 80 E1 3E */	srwi r0, r4, 4
/* 814F9DE4 | 1C 60 00 0E */	mulli r3, r0, 0xe
/* 814F9DE8 | 54 80 07 3E */	clrlwi r0, r4, 28
/* 814F9DEC | 7C 60 1A 14 */	add r3, r0, r3
/* 814F9DF0 | 3B 83 FF FE */	subi r28, r3, 0x2
/* 814F9DF4 | 48 00 00 14 */	b .L_814F9E08
.L_814F9DF8:
/* 814F9DF8 | 7F 9F E8 50 */	subf r28, r31, r29
/* 814F9DFC | 48 00 00 0C */	b .L_814F9E08
.L_814F9E00:
/* 814F9E00 | 57 E0 F8 7E */	srwi r0, r31, 1
/* 814F9E04 | 7F 80 E8 50 */	subf r28, r0, r29
.L_814F9E08:
/* 814F9E08 | 7F C3 F3 78 */	mr r3, r30
/* 814F9E0C | 48 03 6A A1 */	bl OSRestoreInterrupts
/* 814F9E10 | 7F 83 E3 78 */	mr r3, r28
.L_814F9E14:
/* 814F9E14 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814F9E18 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814F9E1C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814F9E20 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814F9E24 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814F9E28 | 7C 08 03 A6 */	mtlr r0
/* 814F9E2C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814F9E30 | 4E 80 00 20 */	blr
.endfn GetCurrentPlayingSample__Q44nw4r3snd6detail7AxVoiceCFv

# .text:0x1534 | 0x814F9E34 | size: 0x268
# nw4r::snd::detail::AxVoice::SetAxAddr(int, bool, nw4r::snd::detail::AxVoice::Format, const void*, unsigned long, unsigned long)
.fn SetAxAddr__Q44nw4r3snd6detail7AxVoiceFibQ54nw4r3snd6detail7AxVoice6FormatPCvUlUl, global
/* 814F9E34 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814F9E38 | 7C 08 02 A6 */	mflr r0
/* 814F9E3C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814F9E40 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814F9E44 | 48 0F F6 79 */	bl _savegpr_26
/* 814F9E48 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814F9E4C | 7C 7A 1B 78 */	mr r26, r3
/* 814F9E50 | 7C 9B 23 78 */	mr r27, r4
/* 814F9E54 | 7C BC 2B 78 */	mr r28, r5
/* 814F9E58 | 7C DD 33 78 */	mr r29, r6
/* 814F9E5C | 7C FE 3B 78 */	mr r30, r7
/* 814F9E60 | 7D 3F 4B 78 */	mr r31, r9
/* 814F9E64 | 41 82 00 90 */	beq .L_814F9EF4
/* 814F9E68 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814F9E6C | 80 83 01 18 */	lwz r4, 0x118(r3)
/* 814F9E70 | 7F C0 F3 78 */	mr r0, r30
/* 814F9E74 | 41 82 00 08 */	beq .L_814F9E7C
/* 814F9E78 | 3C 07 80 00 */	addis r0, r7, 0x8000
.L_814F9E7C:
/* 814F9E7C | 2C 04 00 0A */	cmpwi r4, 0xa
/* 814F9E80 | 38 A0 00 00 */	li r5, 0x0
/* 814F9E84 | 41 82 00 64 */	beq .L_814F9EE8
/* 814F9E88 | 40 80 00 10 */	bge .L_814F9E98
/* 814F9E8C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814F9E90 | 41 82 00 14 */	beq .L_814F9EA4
/* 814F9E94 | 48 00 00 B8 */	b .L_814F9F4C
.L_814F9E98:
/* 814F9E98 | 2C 04 00 19 */	cmpwi r4, 0x19
/* 814F9E9C | 41 82 00 44 */	beq .L_814F9EE0
/* 814F9EA0 | 48 00 00 AC */	b .L_814F9F4C
.L_814F9EA4:
/* 814F9EA4 | 3C 60 24 92 */	lis r3, 0x2492
/* 814F9EA8 | 54 00 08 3C */	slwi r0, r0, 1
/* 814F9EAC | 38 63 49 25 */	addi r3, r3, 0x4925
/* 814F9EB0 | 7C A3 40 16 */	mulhwu r5, r3, r8
/* 814F9EB4 | 7C 65 40 50 */	subf r3, r5, r8
/* 814F9EB8 | 54 63 F8 7E */	srwi r3, r3, 1
/* 814F9EBC | 7C A3 2A 14 */	add r5, r3, r5
/* 814F9EC0 | 54 A3 E8 FE */	srwi r3, r5, 3
/* 814F9EC4 | 1C C3 00 0E */	mulli r6, r3, 0xe
/* 814F9EC8 | 54 A3 08 36 */	extlwi r3, r5, 28, 1
/* 814F9ECC | 7C A6 40 50 */	subf r5, r6, r8
/* 814F9ED0 | 7C 05 02 14 */	add r0, r5, r0
/* 814F9ED4 | 7C A0 1A 14 */	add r5, r0, r3
/* 814F9ED8 | 38 A5 00 02 */	addi r5, r5, 0x2
/* 814F9EDC | 48 00 00 70 */	b .L_814F9F4C
.L_814F9EE0:
/* 814F9EE0 | 7C A0 42 14 */	add r5, r0, r8
/* 814F9EE4 | 48 00 00 68 */	b .L_814F9F4C
.L_814F9EE8:
/* 814F9EE8 | 54 00 F8 7E */	srwi r0, r0, 1
/* 814F9EEC | 7C A0 42 14 */	add r5, r0, r8
/* 814F9EF0 | 48 00 00 5C */	b .L_814F9F4C
.L_814F9EF4:
/* 814F9EF4 | 4B FF D6 D9 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 814F9EF8 | 4B FF DB D1 */	bl GetZeroBufferAddress__Q44nw4r3snd6detail9AxManagerFv
/* 814F9EFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814F9F00 | 80 9A 01 18 */	lwz r4, 0x118(r26)
/* 814F9F04 | 41 82 00 08 */	beq .L_814F9F0C
/* 814F9F08 | 3C 63 80 00 */	addis r3, r3, 0x8000
.L_814F9F0C:
/* 814F9F0C | 2C 04 00 0A */	cmpwi r4, 0xa
/* 814F9F10 | 38 A0 00 00 */	li r5, 0x0
/* 814F9F14 | 41 82 00 34 */	beq .L_814F9F48
/* 814F9F18 | 40 80 00 10 */	bge .L_814F9F28
/* 814F9F1C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814F9F20 | 41 82 00 14 */	beq .L_814F9F34
/* 814F9F24 | 48 00 00 28 */	b .L_814F9F4C
.L_814F9F28:
/* 814F9F28 | 2C 04 00 19 */	cmpwi r4, 0x19
/* 814F9F2C | 41 82 00 14 */	beq .L_814F9F40
/* 814F9F30 | 48 00 00 1C */	b .L_814F9F4C
.L_814F9F34:
/* 814F9F34 | 54 63 08 3C */	slwi r3, r3, 1
/* 814F9F38 | 38 A3 00 02 */	addi r5, r3, 0x2
/* 814F9F3C | 48 00 00 10 */	b .L_814F9F4C
.L_814F9F40:
/* 814F9F40 | 7C 65 1B 78 */	mr r5, r3
/* 814F9F44 | 48 00 00 08 */	b .L_814F9F4C
.L_814F9F48:
/* 814F9F48 | 54 65 F8 7E */	srwi r5, r3, 1
.L_814F9F4C:
/* 814F9F4C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814F9F50 | 7F C3 F3 78 */	mr r3, r30
/* 814F9F54 | 41 82 00 08 */	beq .L_814F9F5C
/* 814F9F58 | 3C 7E 80 00 */	addis r3, r30, 0x8000
.L_814F9F5C:
/* 814F9F5C | 2C 04 00 0A */	cmpwi r4, 0xa
/* 814F9F60 | 38 00 00 00 */	li r0, 0x0
/* 814F9F64 | 41 82 00 34 */	beq .L_814F9F98
/* 814F9F68 | 40 80 00 10 */	bge .L_814F9F78
/* 814F9F6C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814F9F70 | 41 82 00 14 */	beq .L_814F9F84
/* 814F9F74 | 48 00 00 28 */	b .L_814F9F9C
.L_814F9F78:
/* 814F9F78 | 2C 04 00 19 */	cmpwi r4, 0x19
/* 814F9F7C | 41 82 00 14 */	beq .L_814F9F90
/* 814F9F80 | 48 00 00 1C */	b .L_814F9F9C
.L_814F9F84:
/* 814F9F84 | 54 63 08 3C */	slwi r3, r3, 1
/* 814F9F88 | 38 03 00 02 */	addi r0, r3, 0x2
/* 814F9F8C | 48 00 00 10 */	b .L_814F9F9C
.L_814F9F90:
/* 814F9F90 | 7C 60 1B 78 */	mr r0, r3
/* 814F9F94 | 48 00 00 08 */	b .L_814F9F9C
.L_814F9F98:
/* 814F9F98 | 54 60 F8 7E */	srwi r0, r3, 1
.L_814F9F9C:
/* 814F9F9C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814F9FA0 | 41 82 00 08 */	beq .L_814F9FA8
/* 814F9FA4 | 3F DE 80 00 */	addis r30, r30, 0x8000
.L_814F9FA8:
/* 814F9FA8 | 2C 04 00 0A */	cmpwi r4, 0xa
/* 814F9FAC | 39 00 00 00 */	li r8, 0x0
/* 814F9FB0 | 41 82 00 6C */	beq .L_814FA01C
/* 814F9FB4 | 40 80 00 10 */	bge .L_814F9FC4
/* 814F9FB8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814F9FBC | 41 82 00 14 */	beq .L_814F9FD0
/* 814F9FC0 | 48 00 00 68 */	b .L_814FA028
.L_814F9FC4:
/* 814F9FC4 | 2C 04 00 19 */	cmpwi r4, 0x19
/* 814F9FC8 | 41 82 00 48 */	beq .L_814FA010
/* 814F9FCC | 48 00 00 5C */	b .L_814FA028
.L_814F9FD0:
/* 814F9FD0 | 3C 60 24 92 */	lis r3, 0x2492
/* 814F9FD4 | 39 1F FF FF */	subi r8, r31, 0x1
/* 814F9FD8 | 38 83 49 25 */	addi r4, r3, 0x4925
/* 814F9FDC | 7C C4 40 16 */	mulhwu r6, r4, r8
/* 814F9FE0 | 57 C3 08 3C */	slwi r3, r30, 1
/* 814F9FE4 | 7C 86 40 50 */	subf r4, r6, r8
/* 814F9FE8 | 54 84 F8 7E */	srwi r4, r4, 1
/* 814F9FEC | 7C C4 32 14 */	add r6, r4, r6
/* 814F9FF0 | 54 C4 E8 FE */	srwi r4, r6, 3
/* 814F9FF4 | 1C E4 00 0E */	mulli r7, r4, 0xe
/* 814F9FF8 | 54 C4 08 36 */	extlwi r4, r6, 28, 1
/* 814F9FFC | 7C C7 40 50 */	subf r6, r7, r8
/* 814FA000 | 7C 66 1A 14 */	add r3, r6, r3
/* 814FA004 | 7D 03 22 14 */	add r8, r3, r4
/* 814FA008 | 39 08 00 02 */	addi r8, r8, 0x2
/* 814FA00C | 48 00 00 1C */	b .L_814FA028
.L_814FA010:
/* 814FA010 | 7D 1E FA 14 */	add r8, r30, r31
/* 814FA014 | 39 08 FF FF */	subi r8, r8, 0x1
/* 814FA018 | 48 00 00 10 */	b .L_814FA028
.L_814FA01C:
/* 814FA01C | 57 C3 F8 7E */	srwi r3, r30, 1
/* 814FA020 | 7C 7F 1A 14 */	add r3, r31, r3
/* 814FA024 | 39 03 FF FF */	subi r8, r3, 0x1
.L_814FA028:
/* 814FA028 | 54 A7 84 3E */	srwi r7, r5, 16
/* 814FA02C | 55 06 84 3E */	srwi r6, r8, 16
/* 814FA030 | 54 04 84 3E */	srwi r4, r0, 16
/* 814FA034 | 57 63 20 36 */	slwi r3, r27, 4
/* 814FA038 | B3 81 00 08 */	sth r28, 0x8(r1)
/* 814FA03C | 7F 7A 1A 14 */	add r27, r26, r3
/* 814FA040 | 3B 80 00 00 */	li r28, 0x0
/* 814FA044 | B3 A1 00 0A */	sth r29, 0xa(r1)
/* 814FA048 | B0 E1 00 0C */	sth r7, 0xc(r1)
/* 814FA04C | B0 A1 00 0E */	sth r5, 0xe(r1)
/* 814FA050 | B0 C1 00 10 */	sth r6, 0x10(r1)
/* 814FA054 | B1 01 00 12 */	sth r8, 0x12(r1)
/* 814FA058 | B0 81 00 14 */	sth r4, 0x14(r1)
/* 814FA05C | B0 01 00 16 */	sth r0, 0x16(r1)
/* 814FA060 | 48 00 00 18 */	b .L_814FA078
.L_814FA064:
/* 814FA064 | 80 7B 00 0C */	lwz r3, 0xc(r27)
/* 814FA068 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814FA06C | 48 05 B3 09 */	bl fn_81555374
/* 814FA070 | 3B 7B 00 04 */	addi r27, r27, 0x4
/* 814FA074 | 3B 9C 00 01 */	addi r28, r28, 0x1
.L_814FA078:
/* 814FA078 | 80 1A 01 08 */	lwz r0, 0x108(r26)
/* 814FA07C | 7C 1C 00 00 */	cmpw r28, r0
/* 814FA080 | 41 80 FF E4 */	blt .L_814FA064
/* 814FA084 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814FA088 | 48 0F F4 81 */	bl _restgpr_26
/* 814FA08C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814FA090 | 7C 08 03 A6 */	mtlr r0
/* 814FA094 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814FA098 | 4E 80 00 20 */	blr
.endfn SetAxAddr__Q44nw4r3snd6detail7AxVoiceFibQ54nw4r3snd6detail7AxVoice6FormatPCvUlUl

# .text:0x179C | 0x814FA09C | size: 0x124
# nw4r::snd::detail::AxVoice::SetLoopStart(int, const void*, unsigned long)
.fn SetLoopStart__Q44nw4r3snd6detail7AxVoiceFiPCvUl, global
/* 814FA09C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814FA0A0 | 7C 08 02 A6 */	mflr r0
/* 814FA0A4 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814FA0A8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814FA0AC | 48 0F F4 0D */	bl _savegpr_25
/* 814FA0B0 | 7C 7E 1B 78 */	mr r30, r3
/* 814FA0B4 | 7C 9F 23 78 */	mr r31, r4
/* 814FA0B8 | 7C BA 2B 78 */	mr r26, r5
/* 814FA0BC | 7C D9 33 78 */	mr r25, r6
/* 814FA0C0 | 48 03 67 C5 */	bl OSDisableInterrupts
/* 814FA0C4 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814FA0C8 | 80 1E 01 18 */	lwz r0, 0x118(r30)
/* 814FA0CC | 7C 7D 1B 78 */	mr r29, r3
/* 814FA0D0 | 41 82 00 08 */	beq .L_814FA0D8
/* 814FA0D4 | 3F 5A 80 00 */	addis r26, r26, 0x8000
.L_814FA0D8:
/* 814FA0D8 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 814FA0DC | 38 60 00 00 */	li r3, 0x0
/* 814FA0E0 | 41 82 00 64 */	beq .L_814FA144
/* 814FA0E4 | 40 80 00 10 */	bge .L_814FA0F4
/* 814FA0E8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FA0EC | 41 82 00 14 */	beq .L_814FA100
/* 814FA0F0 | 48 00 00 5C */	b .L_814FA14C
.L_814FA0F4:
/* 814FA0F4 | 2C 00 00 19 */	cmpwi r0, 0x19
/* 814FA0F8 | 41 82 00 44 */	beq .L_814FA13C
/* 814FA0FC | 48 00 00 50 */	b .L_814FA14C
.L_814FA100:
/* 814FA100 | 3C 60 24 92 */	lis r3, 0x2492
/* 814FA104 | 57 40 08 3C */	slwi r0, r26, 1
/* 814FA108 | 38 63 49 25 */	addi r3, r3, 0x4925
/* 814FA10C | 7C 83 C8 16 */	mulhwu r4, r3, r25
/* 814FA110 | 7C 64 C8 50 */	subf r3, r4, r25
/* 814FA114 | 54 63 F8 7E */	srwi r3, r3, 1
/* 814FA118 | 7C 83 22 14 */	add r4, r3, r4
/* 814FA11C | 54 83 E8 FE */	srwi r3, r4, 3
/* 814FA120 | 1C A3 00 0E */	mulli r5, r3, 0xe
/* 814FA124 | 54 83 08 36 */	extlwi r3, r4, 28, 1
/* 814FA128 | 7C 85 C8 50 */	subf r4, r5, r25
/* 814FA12C | 7C 04 02 14 */	add r0, r4, r0
/* 814FA130 | 7C 60 1A 14 */	add r3, r0, r3
/* 814FA134 | 38 63 00 02 */	addi r3, r3, 0x2
/* 814FA138 | 48 00 00 14 */	b .L_814FA14C
.L_814FA13C:
/* 814FA13C | 7C 7A CA 14 */	add r3, r26, r25
/* 814FA140 | 48 00 00 0C */	b .L_814FA14C
.L_814FA144:
/* 814FA144 | 57 40 F8 7E */	srwi r0, r26, 1
/* 814FA148 | 7C 60 CA 14 */	add r3, r0, r25
.L_814FA14C:
/* 814FA14C | 57 E0 20 36 */	slwi r0, r31, 4
/* 814FA150 | 54 7B 84 3E */	srwi r27, r3, 16
/* 814FA154 | 7F 9E 02 14 */	add r28, r30, r0
/* 814FA158 | 54 7A 04 3E */	clrlwi r26, r3, 16
/* 814FA15C | 3B 20 00 00 */	li r25, 0x0
/* 814FA160 | 48 00 00 34 */	b .L_814FA194
.L_814FA164:
/* 814FA164 | 83 FC 00 0C */	lwz r31, 0xc(r28)
/* 814FA168 | 48 03 67 1D */	bl OSDisableInterrupts
/* 814FA16C | B3 7F 00 9A */	sth r27, 0x9a(r31)
/* 814FA170 | B3 5F 00 9C */	sth r26, 0x9c(r31)
/* 814FA174 | 80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 814FA178 | 54 80 05 6B */	rlwinm. r0, r4, 0, 21, 21
/* 814FA17C | 40 82 00 0C */	bne .L_814FA188
/* 814FA180 | 60 80 10 00 */	ori r0, r4, 0x1000
/* 814FA184 | 90 1F 00 1C */	stw r0, 0x1c(r31)
.L_814FA188:
/* 814FA188 | 48 03 67 25 */	bl OSRestoreInterrupts
/* 814FA18C | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 814FA190 | 3B 39 00 01 */	addi r25, r25, 0x1
.L_814FA194:
/* 814FA194 | 80 1E 01 08 */	lwz r0, 0x108(r30)
/* 814FA198 | 7C 19 00 00 */	cmpw r25, r0
/* 814FA19C | 41 80 FF C8 */	blt .L_814FA164
/* 814FA1A0 | 7F A3 EB 78 */	mr r3, r29
/* 814FA1A4 | 48 03 67 09 */	bl OSRestoreInterrupts
/* 814FA1A8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814FA1AC | 48 0F F3 59 */	bl _restgpr_25
/* 814FA1B0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814FA1B4 | 7C 08 03 A6 */	mtlr r0
/* 814FA1B8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814FA1BC | 4E 80 00 20 */	blr
.endfn SetLoopStart__Q44nw4r3snd6detail7AxVoiceFiPCvUl

# .text:0x18C0 | 0x814FA1C0 | size: 0x130
# nw4r::snd::detail::AxVoice::SetLoopEnd(int, const void*, unsigned long)
.fn SetLoopEnd__Q44nw4r3snd6detail7AxVoiceFiPCvUl, global
/* 814FA1C0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814FA1C4 | 7C 08 02 A6 */	mflr r0
/* 814FA1C8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814FA1CC | 39 61 00 30 */	addi r11, r1, 0x30
/* 814FA1D0 | 48 0F F2 E9 */	bl _savegpr_25
/* 814FA1D4 | 7C 7E 1B 78 */	mr r30, r3
/* 814FA1D8 | 7C 9F 23 78 */	mr r31, r4
/* 814FA1DC | 7C BA 2B 78 */	mr r26, r5
/* 814FA1E0 | 7C D9 33 78 */	mr r25, r6
/* 814FA1E4 | 48 03 66 A1 */	bl OSDisableInterrupts
/* 814FA1E8 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814FA1EC | 80 1E 01 18 */	lwz r0, 0x118(r30)
/* 814FA1F0 | 7C 7D 1B 78 */	mr r29, r3
/* 814FA1F4 | 41 82 00 08 */	beq .L_814FA1FC
/* 814FA1F8 | 3F 5A 80 00 */	addis r26, r26, 0x8000
.L_814FA1FC:
/* 814FA1FC | 2C 00 00 0A */	cmpwi r0, 0xa
/* 814FA200 | 38 60 00 00 */	li r3, 0x0
/* 814FA204 | 41 82 00 6C */	beq .L_814FA270
/* 814FA208 | 40 80 00 10 */	bge .L_814FA218
/* 814FA20C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FA210 | 41 82 00 14 */	beq .L_814FA224
/* 814FA214 | 48 00 00 68 */	b .L_814FA27C
.L_814FA218:
/* 814FA218 | 2C 00 00 19 */	cmpwi r0, 0x19
/* 814FA21C | 41 82 00 48 */	beq .L_814FA264
/* 814FA220 | 48 00 00 5C */	b .L_814FA27C
.L_814FA224:
/* 814FA224 | 3C 60 24 92 */	lis r3, 0x2492
/* 814FA228 | 38 D9 FF FF */	subi r6, r25, 0x1
/* 814FA22C | 38 63 49 25 */	addi r3, r3, 0x4925
/* 814FA230 | 57 40 08 3C */	slwi r0, r26, 1
/* 814FA234 | 7C 83 30 16 */	mulhwu r4, r3, r6
/* 814FA238 | 7C 64 30 50 */	subf r3, r4, r6
/* 814FA23C | 54 63 F8 7E */	srwi r3, r3, 1
/* 814FA240 | 7C 83 22 14 */	add r4, r3, r4
/* 814FA244 | 54 83 E8 FE */	srwi r3, r4, 3
/* 814FA248 | 1C A3 00 0E */	mulli r5, r3, 0xe
/* 814FA24C | 54 83 08 36 */	extlwi r3, r4, 28, 1
/* 814FA250 | 7C 85 30 50 */	subf r4, r5, r6
/* 814FA254 | 7C 04 02 14 */	add r0, r4, r0
/* 814FA258 | 7C 60 1A 14 */	add r3, r0, r3
/* 814FA25C | 38 63 00 02 */	addi r3, r3, 0x2
/* 814FA260 | 48 00 00 1C */	b .L_814FA27C
.L_814FA264:
/* 814FA264 | 7C 7A CA 14 */	add r3, r26, r25
/* 814FA268 | 38 63 FF FF */	subi r3, r3, 0x1
/* 814FA26C | 48 00 00 10 */	b .L_814FA27C
.L_814FA270:
/* 814FA270 | 57 40 F8 7E */	srwi r0, r26, 1
/* 814FA274 | 7C 79 02 14 */	add r3, r25, r0
/* 814FA278 | 38 63 FF FF */	subi r3, r3, 0x1
.L_814FA27C:
/* 814FA27C | 57 E0 20 36 */	slwi r0, r31, 4
/* 814FA280 | 54 7B 84 3E */	srwi r27, r3, 16
/* 814FA284 | 7F 9E 02 14 */	add r28, r30, r0
/* 814FA288 | 54 7A 04 3E */	clrlwi r26, r3, 16
/* 814FA28C | 3B 20 00 00 */	li r25, 0x0
/* 814FA290 | 48 00 00 34 */	b .L_814FA2C4
.L_814FA294:
/* 814FA294 | 83 FC 00 0C */	lwz r31, 0xc(r28)
/* 814FA298 | 48 03 65 ED */	bl OSDisableInterrupts
/* 814FA29C | B3 7F 00 9E */	sth r27, 0x9e(r31)
/* 814FA2A0 | B3 5F 00 A0 */	sth r26, 0xa0(r31)
/* 814FA2A4 | 80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 814FA2A8 | 54 80 05 6B */	rlwinm. r0, r4, 0, 21, 21
/* 814FA2AC | 40 82 00 0C */	bne .L_814FA2B8
/* 814FA2B0 | 60 80 20 00 */	ori r0, r4, 0x2000
/* 814FA2B4 | 90 1F 00 1C */	stw r0, 0x1c(r31)
.L_814FA2B8:
/* 814FA2B8 | 48 03 65 F5 */	bl OSRestoreInterrupts
/* 814FA2BC | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 814FA2C0 | 3B 39 00 01 */	addi r25, r25, 0x1
.L_814FA2C4:
/* 814FA2C4 | 80 1E 01 08 */	lwz r0, 0x108(r30)
/* 814FA2C8 | 7C 19 00 00 */	cmpw r25, r0
/* 814FA2CC | 41 80 FF C8 */	blt .L_814FA294
/* 814FA2D0 | 7F A3 EB 78 */	mr r3, r29
/* 814FA2D4 | 48 03 65 D9 */	bl OSRestoreInterrupts
/* 814FA2D8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814FA2DC | 48 0F F2 29 */	bl _restgpr_25
/* 814FA2E0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814FA2E4 | 7C 08 03 A6 */	mtlr r0
/* 814FA2E8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814FA2EC | 4E 80 00 20 */	blr
.endfn SetLoopEnd__Q44nw4r3snd6detail7AxVoiceFiPCvUl

# .text:0x19F0 | 0x814FA2F0 | size: 0xA8
# nw4r::snd::detail::AxVoice::SetLoopFlag(bool)
.fn SetLoopFlag__Q44nw4r3snd6detail7AxVoiceFb, global
/* 814FA2F0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814FA2F4 | 7C 08 02 A6 */	mflr r0
/* 814FA2F8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814FA2FC | 39 61 00 30 */	addi r11, r1, 0x30
/* 814FA300 | 48 0F F1 B5 */	bl _savegpr_24
/* 814FA304 | 7C 78 1B 78 */	mr r24, r3
/* 814FA308 | 7C 99 23 78 */	mr r25, r4
/* 814FA30C | 48 03 65 79 */	bl OSDisableInterrupts
/* 814FA310 | 7C 7F 1B 78 */	mr r31, r3
/* 814FA314 | 7F 1D C3 78 */	mr r29, r24
/* 814FA318 | 3B 60 00 00 */	li r27, 0x0
/* 814FA31C | 48 00 00 50 */	b .L_814FA36C
.L_814FA320:
/* 814FA320 | 7F BC EB 78 */	mr r28, r29
/* 814FA324 | 3B 40 00 00 */	li r26, 0x0
/* 814FA328 | 48 00 00 30 */	b .L_814FA358
.L_814FA32C:
/* 814FA32C | 83 DC 00 0C */	lwz r30, 0xc(r28)
/* 814FA330 | 48 03 65 55 */	bl OSDisableInterrupts
/* 814FA334 | B3 3E 00 96 */	sth r25, 0x96(r30)
/* 814FA338 | 80 9E 00 1C */	lwz r4, 0x1c(r30)
/* 814FA33C | 54 80 05 6B */	rlwinm. r0, r4, 0, 21, 21
/* 814FA340 | 40 82 00 0C */	bne .L_814FA34C
/* 814FA344 | 60 80 08 00 */	ori r0, r4, 0x800
/* 814FA348 | 90 1E 00 1C */	stw r0, 0x1c(r30)
.L_814FA34C:
/* 814FA34C | 48 03 65 61 */	bl OSRestoreInterrupts
/* 814FA350 | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 814FA354 | 3B 5A 00 01 */	addi r26, r26, 0x1
.L_814FA358:
/* 814FA358 | 80 18 01 08 */	lwz r0, 0x108(r24)
/* 814FA35C | 7C 1A 00 00 */	cmpw r26, r0
/* 814FA360 | 41 80 FF CC */	blt .L_814FA32C
/* 814FA364 | 3B BD 00 10 */	addi r29, r29, 0x10
/* 814FA368 | 3B 7B 00 01 */	addi r27, r27, 0x1
.L_814FA36C:
/* 814FA36C | 80 18 01 04 */	lwz r0, 0x104(r24)
/* 814FA370 | 7C 1B 00 00 */	cmpw r27, r0
/* 814FA374 | 41 80 FF AC */	blt .L_814FA320
/* 814FA378 | 7F E3 FB 78 */	mr r3, r31
/* 814FA37C | 48 03 65 31 */	bl OSRestoreInterrupts
/* 814FA380 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814FA384 | 48 0F F1 7D */	bl _restgpr_24
/* 814FA388 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814FA38C | 7C 08 03 A6 */	mtlr r0
/* 814FA390 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814FA394 | 4E 80 00 20 */	blr
.endfn SetLoopFlag__Q44nw4r3snd6detail7AxVoiceFb

# .text:0x1A98 | 0x814FA398 | size: 0x1DC
# nw4r::snd::detail::AxVoice::StopAtPoint(int, const void*, unsigned long)
.fn StopAtPoint__Q44nw4r3snd6detail7AxVoiceFiPCvUl, global
/* 814FA398 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814FA39C | 7C 08 02 A6 */	mflr r0
/* 814FA3A0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814FA3A4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814FA3A8 | 48 0F F1 05 */	bl _savegpr_22
/* 814FA3AC | 7C 78 1B 78 */	mr r24, r3
/* 814FA3B0 | 7C 99 23 78 */	mr r25, r4
/* 814FA3B4 | 7C BA 2B 78 */	mr r26, r5
/* 814FA3B8 | 7C D6 33 78 */	mr r22, r6
/* 814FA3BC | 48 03 64 C9 */	bl OSDisableInterrupts
/* 814FA3C0 | 7C 77 1B 78 */	mr r23, r3
/* 814FA3C4 | 4B FF D2 09 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 814FA3C8 | 4B FF D7 01 */	bl GetZeroBufferAddress__Q44nw4r3snd6detail9AxManagerFv
/* 814FA3CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FA3D0 | 80 18 01 18 */	lwz r0, 0x118(r24)
/* 814FA3D4 | 41 82 00 08 */	beq .L_814FA3DC
/* 814FA3D8 | 3C 63 80 00 */	addis r3, r3, 0x8000
.L_814FA3DC:
/* 814FA3DC | 2C 00 00 0A */	cmpwi r0, 0xa
/* 814FA3E0 | 38 E0 00 00 */	li r7, 0x0
/* 814FA3E4 | 41 82 00 34 */	beq .L_814FA418
/* 814FA3E8 | 40 80 00 10 */	bge .L_814FA3F8
/* 814FA3EC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FA3F0 | 41 82 00 14 */	beq .L_814FA404
/* 814FA3F4 | 48 00 00 28 */	b .L_814FA41C
.L_814FA3F8:
/* 814FA3F8 | 2C 00 00 19 */	cmpwi r0, 0x19
/* 814FA3FC | 41 82 00 14 */	beq .L_814FA410
/* 814FA400 | 48 00 00 1C */	b .L_814FA41C
.L_814FA404:
/* 814FA404 | 54 63 08 3C */	slwi r3, r3, 1
/* 814FA408 | 38 E3 00 02 */	addi r7, r3, 0x2
/* 814FA40C | 48 00 00 10 */	b .L_814FA41C
.L_814FA410:
/* 814FA410 | 7C 67 1B 78 */	mr r7, r3
/* 814FA414 | 48 00 00 08 */	b .L_814FA41C
.L_814FA418:
/* 814FA418 | 54 67 F8 7E */	srwi r7, r3, 1
.L_814FA41C:
/* 814FA41C | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814FA420 | 41 82 00 08 */	beq .L_814FA428
/* 814FA424 | 3F 5A 80 00 */	addis r26, r26, 0x8000
.L_814FA428:
/* 814FA428 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 814FA42C | 38 60 00 00 */	li r3, 0x0
/* 814FA430 | 41 82 00 6C */	beq .L_814FA49C
/* 814FA434 | 40 80 00 10 */	bge .L_814FA444
/* 814FA438 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FA43C | 41 82 00 14 */	beq .L_814FA450
/* 814FA440 | 48 00 00 68 */	b .L_814FA4A8
.L_814FA444:
/* 814FA444 | 2C 00 00 19 */	cmpwi r0, 0x19
/* 814FA448 | 41 82 00 48 */	beq .L_814FA490
/* 814FA44C | 48 00 00 5C */	b .L_814FA4A8
.L_814FA450:
/* 814FA450 | 3C 60 24 92 */	lis r3, 0x2492
/* 814FA454 | 38 D6 FF FF */	subi r6, r22, 0x1
/* 814FA458 | 38 63 49 25 */	addi r3, r3, 0x4925
/* 814FA45C | 57 40 08 3C */	slwi r0, r26, 1
/* 814FA460 | 7C 83 30 16 */	mulhwu r4, r3, r6
/* 814FA464 | 7C 64 30 50 */	subf r3, r4, r6
/* 814FA468 | 54 63 F8 7E */	srwi r3, r3, 1
/* 814FA46C | 7C 83 22 14 */	add r4, r3, r4
/* 814FA470 | 54 83 E8 FE */	srwi r3, r4, 3
/* 814FA474 | 1C A3 00 0E */	mulli r5, r3, 0xe
/* 814FA478 | 54 83 08 36 */	extlwi r3, r4, 28, 1
/* 814FA47C | 7C 85 30 50 */	subf r4, r5, r6
/* 814FA480 | 7C 04 02 14 */	add r0, r4, r0
/* 814FA484 | 7C 60 1A 14 */	add r3, r0, r3
/* 814FA488 | 38 63 00 02 */	addi r3, r3, 0x2
/* 814FA48C | 48 00 00 1C */	b .L_814FA4A8
.L_814FA490:
/* 814FA490 | 7C 7A B2 14 */	add r3, r26, r22
/* 814FA494 | 38 63 FF FF */	subi r3, r3, 0x1
/* 814FA498 | 48 00 00 10 */	b .L_814FA4A8
.L_814FA49C:
/* 814FA49C | 57 40 F8 7E */	srwi r0, r26, 1
/* 814FA4A0 | 7C 76 02 14 */	add r3, r22, r0
/* 814FA4A4 | 38 63 FF FF */	subi r3, r3, 0x1
.L_814FA4A8:
/* 814FA4A8 | 57 20 20 36 */	slwi r0, r25, 4
/* 814FA4AC | 54 FE 84 3E */	srwi r30, r7, 16
/* 814FA4B0 | 7F F8 02 14 */	add r31, r24, r0
/* 814FA4B4 | 54 FD 04 3E */	clrlwi r29, r7, 16
/* 814FA4B8 | 54 7C 84 3E */	srwi r28, r3, 16
/* 814FA4BC | 54 7B 04 3E */	clrlwi r27, r3, 16
/* 814FA4C0 | 3B 40 00 00 */	li r26, 0x0
/* 814FA4C4 | 3A C0 00 00 */	li r22, 0x0
/* 814FA4C8 | 48 00 00 80 */	b .L_814FA548
.L_814FA4CC:
/* 814FA4CC | 83 3F 00 0C */	lwz r25, 0xc(r31)
/* 814FA4D0 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 814FA4D4 | 41 82 00 6C */	beq .L_814FA540
/* 814FA4D8 | 48 03 63 AD */	bl OSDisableInterrupts
/* 814FA4DC | B3 D9 00 9A */	sth r30, 0x9a(r25)
/* 814FA4E0 | B3 B9 00 9C */	sth r29, 0x9c(r25)
/* 814FA4E4 | 80 99 00 1C */	lwz r4, 0x1c(r25)
/* 814FA4E8 | 54 80 05 6B */	rlwinm. r0, r4, 0, 21, 21
/* 814FA4EC | 40 82 00 0C */	bne .L_814FA4F8
/* 814FA4F0 | 60 80 10 00 */	ori r0, r4, 0x1000
/* 814FA4F4 | 90 19 00 1C */	stw r0, 0x1c(r25)
.L_814FA4F8:
/* 814FA4F8 | 48 03 63 B5 */	bl OSRestoreInterrupts
/* 814FA4FC | 48 03 63 89 */	bl OSDisableInterrupts
/* 814FA500 | B3 99 00 9E */	sth r28, 0x9e(r25)
/* 814FA504 | B3 79 00 A0 */	sth r27, 0xa0(r25)
/* 814FA508 | 80 99 00 1C */	lwz r4, 0x1c(r25)
/* 814FA50C | 54 80 05 6B */	rlwinm. r0, r4, 0, 21, 21
/* 814FA510 | 40 82 00 0C */	bne .L_814FA51C
/* 814FA514 | 60 80 20 00 */	ori r0, r4, 0x2000
/* 814FA518 | 90 19 00 1C */	stw r0, 0x1c(r25)
.L_814FA51C:
/* 814FA51C | 48 03 63 91 */	bl OSRestoreInterrupts
/* 814FA520 | 48 03 63 65 */	bl OSDisableInterrupts
/* 814FA524 | B2 D9 00 96 */	sth r22, 0x96(r25)
/* 814FA528 | 80 99 00 1C */	lwz r4, 0x1c(r25)
/* 814FA52C | 54 80 05 6B */	rlwinm. r0, r4, 0, 21, 21
/* 814FA530 | 40 82 00 0C */	bne .L_814FA53C
/* 814FA534 | 60 80 08 00 */	ori r0, r4, 0x800
/* 814FA538 | 90 19 00 1C */	stw r0, 0x1c(r25)
.L_814FA53C:
/* 814FA53C | 48 03 63 71 */	bl OSRestoreInterrupts
.L_814FA540:
/* 814FA540 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 814FA544 | 3B 5A 00 01 */	addi r26, r26, 0x1
.L_814FA548:
/* 814FA548 | 80 18 01 08 */	lwz r0, 0x108(r24)
/* 814FA54C | 7C 1A 00 00 */	cmpw r26, r0
/* 814FA550 | 41 80 FF 7C */	blt .L_814FA4CC
/* 814FA554 | 7E E3 BB 78 */	mr r3, r23
/* 814FA558 | 48 03 63 55 */	bl OSRestoreInterrupts
/* 814FA55C | 39 61 00 30 */	addi r11, r1, 0x30
/* 814FA560 | 48 0F EF 99 */	bl _restgpr_22
/* 814FA564 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814FA568 | 7C 08 03 A6 */	mtlr r0
/* 814FA56C | 38 21 00 30 */	addi r1, r1, 0x30
/* 814FA570 | 4E 80 00 20 */	blr
.endfn StopAtPoint__Q44nw4r3snd6detail7AxVoiceFiPCvUl

# .text:0x1C74 | 0x814FA574 | size: 0x88
# nw4r::snd::detail::AxVoice::SetVoiceType(nw4r::snd::detail::AxVoice::VoiceType)
.fn SetVoiceType__Q44nw4r3snd6detail7AxVoiceFQ54nw4r3snd6detail7AxVoice9VoiceType, global
/* 814FA574 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814FA578 | 7C 08 02 A6 */	mflr r0
/* 814FA57C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814FA580 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814FA584 | 48 0F EF 39 */	bl _savegpr_26
/* 814FA588 | 7C 7A 1B 78 */	mr r26, r3
/* 814FA58C | 7C 9B 23 78 */	mr r27, r4
/* 814FA590 | 7F 5D D3 78 */	mr r29, r26
/* 814FA594 | 3B C0 00 00 */	li r30, 0x0
/* 814FA598 | 48 00 00 40 */	b .L_814FA5D8
.L_814FA59C:
/* 814FA59C | 7F BC EB 78 */	mr r28, r29
/* 814FA5A0 | 3B E0 00 00 */	li r31, 0x0
/* 814FA5A4 | 48 00 00 20 */	b .L_814FA5C4
.L_814FA5A8:
/* 814FA5A8 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 814FA5AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FA5B0 | 41 82 00 0C */	beq .L_814FA5BC
/* 814FA5B4 | 57 64 04 3E */	clrlwi r4, r27, 16
/* 814FA5B8 | 48 05 AA D9 */	bl fn_81555090
.L_814FA5BC:
/* 814FA5BC | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 814FA5C0 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_814FA5C4:
/* 814FA5C4 | 80 1A 01 08 */	lwz r0, 0x108(r26)
/* 814FA5C8 | 7C 1F 00 00 */	cmpw r31, r0
/* 814FA5CC | 41 80 FF DC */	blt .L_814FA5A8
/* 814FA5D0 | 3B BD 00 10 */	addi r29, r29, 0x10
/* 814FA5D4 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_814FA5D8:
/* 814FA5D8 | 80 1A 01 04 */	lwz r0, 0x104(r26)
/* 814FA5DC | 7C 1E 00 00 */	cmpw r30, r0
/* 814FA5E0 | 41 80 FF BC */	blt .L_814FA59C
/* 814FA5E4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814FA5E8 | 48 0F EF 21 */	bl _restgpr_26
/* 814FA5EC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814FA5F0 | 7C 08 03 A6 */	mtlr r0
/* 814FA5F4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814FA5F8 | 4E 80 00 20 */	blr
.endfn SetVoiceType__Q44nw4r3snd6detail7AxVoiceFQ54nw4r3snd6detail7AxVoice9VoiceType

# .text:0x1CFC | 0x814FA5FC | size: 0x19C
# nw4r::snd::detail::AxVoice::UpdateAxSrc(bool)
.fn UpdateAxSrc__Q44nw4r3snd6detail7AxVoiceFb, global
/* 814FA5FC | 94 21 FF 70 */	stwu r1, -0x90(r1)
/* 814FA600 | 7C 08 02 A6 */	mflr r0
/* 814FA604 | 90 01 00 94 */	stw r0, 0x94(r1)
/* 814FA608 | DB E1 00 80 */	stfd f31, 0x80(r1)
/* 814FA60C | F3 E1 00 88 */	psq_st f31, 0x88(r1), 0, qr0
/* 814FA610 | DB C1 00 70 */	stfd f30, 0x70(r1)
/* 814FA614 | F3 C1 00 78 */	psq_st f30, 0x78(r1), 0, qr0
/* 814FA618 | DB A1 00 60 */	stfd f29, 0x60(r1)
/* 814FA61C | F3 A1 00 68 */	psq_st f29, 0x68(r1), 0, qr0
/* 814FA620 | DB 81 00 50 */	stfd f28, 0x50(r1)
/* 814FA624 | F3 81 00 58 */	psq_st f28, 0x58(r1), 0, qr0
/* 814FA628 | DB 61 00 40 */	stfd f27, 0x40(r1)
/* 814FA62C | F3 61 00 48 */	psq_st f27, 0x48(r1), 0, qr0
/* 814FA630 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814FA634 | 48 0F EE 81 */	bl _savegpr_24
/* 814FA638 | 80 A3 01 14 */	lwz r5, 0x114(r3)
/* 814FA63C | 3C 00 43 30 */	lis r0, 0x4330
/* 814FA640 | 90 01 00 18 */	stw r0, 0x18(r1)
/* 814FA644 | 7C 78 1B 78 */	mr r24, r3
/* 814FA648 | 6C A0 80 00 */	xoris r0, r5, 0x8000
/* 814FA64C | C8 62 8D E8 */	lfd f3, lbl_816951E8@sda21(r0)
/* 814FA650 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 814FA654 | 7C 99 23 78 */	mr r25, r4
/* 814FA658 | C0 23 01 84 */	lfs f1, 0x184(r3)
/* 814FA65C | 7F 1E C3 78 */	mr r30, r24
/* 814FA660 | C8 41 00 18 */	lfd f2, 0x18(r1)
/* 814FA664 | 3B 60 00 00 */	li r27, 0x0
/* 814FA668 | C0 02 8D E0 */	lfs f0, lbl_816951E0@sda21(r0)
/* 814FA66C | 3B A0 00 00 */	li r29, 0x0
/* 814FA670 | EC 42 18 28 */	fsubs f2, f2, f3
/* 814FA674 | C3 E2 8D F8 */	lfs f31, lbl_816951F8@sda21(r0)
/* 814FA678 | C3 A2 8D D8 */	lfs f29, lbl_816951D8@sda21(r0)
/* 814FA67C | 3B E0 00 00 */	li r31, 0x0
/* 814FA680 | C3 C2 8D DC */	lfs f30, lbl_816951DC@sda21(r0)
/* 814FA684 | EC 21 00 B2 */	fmuls f1, f1, f2
/* 814FA688 | EF 61 00 24 */	fdivs f27, f1, f0
/* 814FA68C | 48 00 00 C0 */	b .L_814FA74C
.L_814FA690:
/* 814FA690 | C3 9E 00 98 */	lfs f28, 0x98(r30)
/* 814FA694 | FC 1C E8 40 */	fcmpo cr0, f28, f29
/* 814FA698 | 40 81 00 0C */	ble .L_814FA6A4
/* 814FA69C | FF 80 E8 90 */	fmr f28, f29
/* 814FA6A0 | 48 00 00 10 */	b .L_814FA6B0
.L_814FA6A4:
/* 814FA6A4 | FC 1C F0 40 */	fcmpo cr0, f28, f30
/* 814FA6A8 | 40 80 00 08 */	bge .L_814FA6B0
/* 814FA6AC | FF 80 F0 90 */	fmr f28, f30
.L_814FA6B0:
/* 814FA6B0 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 814FA6B4 | 41 82 00 60 */	beq .L_814FA714
/* 814FA6B8 | EC 1F 06 F2 */	fmuls f0, f31, f27
/* 814FA6BC | EC 20 07 32 */	fmuls f1, f0, f28
/* 814FA6C0 | 48 0F EC D9 */	bl __cvt_fp2unsigned
/* 814FA6C4 | 54 60 84 3E */	srwi r0, r3, 16
/* 814FA6C8 | B0 61 00 0A */	sth r3, 0xa(r1)
/* 814FA6CC | 7F 98 EA 14 */	add r28, r24, r29
/* 814FA6D0 | 3B 40 00 00 */	li r26, 0x0
/* 814FA6D4 | B0 01 00 08 */	sth r0, 0x8(r1)
/* 814FA6D8 | B3 E1 00 0C */	sth r31, 0xc(r1)
/* 814FA6DC | B3 E1 00 0E */	sth r31, 0xe(r1)
/* 814FA6E0 | B3 E1 00 10 */	sth r31, 0x10(r1)
/* 814FA6E4 | B3 E1 00 12 */	sth r31, 0x12(r1)
/* 814FA6E8 | B3 E1 00 14 */	sth r31, 0x14(r1)
/* 814FA6EC | 48 00 00 18 */	b .L_814FA704
.L_814FA6F0:
/* 814FA6F0 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 814FA6F4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814FA6F8 | 48 05 AE 0D */	bl fn_81555504
/* 814FA6FC | 3B 9C 00 10 */	addi r28, r28, 0x10
/* 814FA700 | 3B 5A 00 01 */	addi r26, r26, 0x1
.L_814FA704:
/* 814FA704 | 80 18 01 04 */	lwz r0, 0x104(r24)
/* 814FA708 | 7C 1A 00 00 */	cmpw r26, r0
/* 814FA70C | 41 80 FF E4 */	blt .L_814FA6F0
/* 814FA710 | 48 00 00 30 */	b .L_814FA740
.L_814FA714:
/* 814FA714 | 7F 98 EA 14 */	add r28, r24, r29
/* 814FA718 | 3B 40 00 00 */	li r26, 0x0
/* 814FA71C | 48 00 00 18 */	b .L_814FA734
.L_814FA720:
/* 814FA720 | EC 3B 07 32 */	fmuls f1, f27, f28
/* 814FA724 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 814FA728 | 48 05 AE 61 */	bl fn_81555588
/* 814FA72C | 3B 9C 00 10 */	addi r28, r28, 0x10
/* 814FA730 | 3B 5A 00 01 */	addi r26, r26, 0x1
.L_814FA734:
/* 814FA734 | 80 18 01 04 */	lwz r0, 0x104(r24)
/* 814FA738 | 7C 1A 00 00 */	cmpw r26, r0
/* 814FA73C | 41 80 FF E4 */	blt .L_814FA720
.L_814FA740:
/* 814FA740 | 3B DE 00 1C */	addi r30, r30, 0x1c
/* 814FA744 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 814FA748 | 3B 7B 00 01 */	addi r27, r27, 0x1
.L_814FA74C:
/* 814FA74C | 80 18 01 08 */	lwz r0, 0x108(r24)
/* 814FA750 | 7C 1B 00 00 */	cmpw r27, r0
/* 814FA754 | 41 80 FF 3C */	blt .L_814FA690
/* 814FA758 | E3 E1 00 88 */	psq_l f31, 0x88(r1), 0, qr0
/* 814FA75C | CB E1 00 80 */	lfd f31, 0x80(r1)
/* 814FA760 | E3 C1 00 78 */	psq_l f30, 0x78(r1), 0, qr0
/* 814FA764 | CB C1 00 70 */	lfd f30, 0x70(r1)
/* 814FA768 | E3 A1 00 68 */	psq_l f29, 0x68(r1), 0, qr0
/* 814FA76C | CB A1 00 60 */	lfd f29, 0x60(r1)
/* 814FA770 | E3 81 00 58 */	psq_l f28, 0x58(r1), 0, qr0
/* 814FA774 | CB 81 00 50 */	lfd f28, 0x50(r1)
/* 814FA778 | E3 61 00 48 */	psq_l f27, 0x48(r1), 0, qr0
/* 814FA77C | 39 61 00 40 */	addi r11, r1, 0x40
/* 814FA780 | CB 61 00 40 */	lfd f27, 0x40(r1)
/* 814FA784 | 48 0F ED 7D */	bl _restgpr_24
/* 814FA788 | 80 01 00 94 */	lwz r0, 0x94(r1)
/* 814FA78C | 7C 08 03 A6 */	mtlr r0
/* 814FA790 | 38 21 00 90 */	addi r1, r1, 0x90
/* 814FA794 | 4E 80 00 20 */	blr
.endfn UpdateAxSrc__Q44nw4r3snd6detail7AxVoiceFb

# .text:0x1E98 | 0x814FA798 | size: 0x11C
# nw4r::snd::detail::AxVoice::SetAxAdpcm(int, nw4r::snd::detail::AxVoice::Format, const nw4r::snd::detail::AdpcmParam*)
.fn SetAxAdpcm__Q44nw4r3snd6detail7AxVoiceFiQ54nw4r3snd6detail7AxVoice6FormatPCQ44nw4r3snd6detail10AdpcmParam, global
/* 814FA798 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814FA79C | 7C 08 02 A6 */	mflr r0
/* 814FA7A0 | 2C 05 00 0A */	cmpwi r5, 0xa
/* 814FA7A4 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814FA7A8 | 93 E1 00 3C */	stw r31, 0x3c(r1)
/* 814FA7AC | 7C 9F 23 78 */	mr r31, r4
/* 814FA7B0 | 93 C1 00 38 */	stw r30, 0x38(r1)
/* 814FA7B4 | 7C DE 33 78 */	mr r30, r6
/* 814FA7B8 | 93 A1 00 34 */	stw r29, 0x34(r1)
/* 814FA7BC | 7C 7D 1B 78 */	mr r29, r3
/* 814FA7C0 | 41 82 00 54 */	beq .L_814FA814
/* 814FA7C4 | 40 80 00 10 */	bge .L_814FA7D4
/* 814FA7C8 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814FA7CC | 41 82 00 14 */	beq .L_814FA7E0
/* 814FA7D0 | 48 00 00 98 */	b .L_814FA868
.L_814FA7D4:
/* 814FA7D4 | 2C 05 00 19 */	cmpwi r5, 0x19
/* 814FA7D8 | 41 82 00 68 */	beq .L_814FA840
/* 814FA7DC | 48 00 00 8C */	b .L_814FA868
.L_814FA7E0:
/* 814FA7E0 | 7F C4 F3 78 */	mr r4, r30
/* 814FA7E4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814FA7E8 | 38 A0 00 20 */	li r5, 0x20
/* 814FA7EC | 4B E3 5A 45 */	bl memcpy
/* 814FA7F0 | A0 BE 00 20 */	lhz r5, 0x20(r30)
/* 814FA7F4 | A0 9E 00 22 */	lhz r4, 0x22(r30)
/* 814FA7F8 | A0 7E 00 24 */	lhz r3, 0x24(r30)
/* 814FA7FC | A0 1E 00 26 */	lhz r0, 0x26(r30)
/* 814FA800 | B0 A1 00 28 */	sth r5, 0x28(r1)
/* 814FA804 | B0 81 00 2A */	sth r4, 0x2a(r1)
/* 814FA808 | B0 61 00 2C */	sth r3, 0x2c(r1)
/* 814FA80C | B0 01 00 2E */	sth r0, 0x2e(r1)
/* 814FA810 | 48 00 00 58 */	b .L_814FA868
.L_814FA814:
/* 814FA814 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814FA818 | 38 80 00 00 */	li r4, 0x0
/* 814FA81C | 38 A0 00 20 */	li r5, 0x20
/* 814FA820 | 4B E3 5B 15 */	bl memset
/* 814FA824 | 38 00 00 00 */	li r0, 0x0
/* 814FA828 | 38 60 08 00 */	li r3, 0x800
/* 814FA82C | B0 61 00 28 */	sth r3, 0x28(r1)
/* 814FA830 | B0 01 00 2A */	sth r0, 0x2a(r1)
/* 814FA834 | B0 01 00 2C */	sth r0, 0x2c(r1)
/* 814FA838 | B0 01 00 2E */	sth r0, 0x2e(r1)
/* 814FA83C | 48 00 00 2C */	b .L_814FA868
.L_814FA840:
/* 814FA840 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814FA844 | 38 80 00 00 */	li r4, 0x0
/* 814FA848 | 38 A0 00 20 */	li r5, 0x20
/* 814FA84C | 4B E3 5A E9 */	bl memset
/* 814FA850 | 38 00 00 00 */	li r0, 0x0
/* 814FA854 | 38 60 01 00 */	li r3, 0x100
/* 814FA858 | B0 61 00 28 */	sth r3, 0x28(r1)
/* 814FA85C | B0 01 00 2A */	sth r0, 0x2a(r1)
/* 814FA860 | B0 01 00 2C */	sth r0, 0x2c(r1)
/* 814FA864 | B0 01 00 2E */	sth r0, 0x2e(r1)
.L_814FA868:
/* 814FA868 | 57 E0 20 36 */	slwi r0, r31, 4
/* 814FA86C | 3B C0 00 00 */	li r30, 0x0
/* 814FA870 | 7F FD 02 14 */	add r31, r29, r0
/* 814FA874 | 48 00 00 18 */	b .L_814FA88C
.L_814FA878:
/* 814FA878 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 814FA87C | 38 81 00 08 */	addi r4, r1, 0x8
/* 814FA880 | 48 05 AB ED */	bl fn_8155546C
/* 814FA884 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 814FA888 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_814FA88C:
/* 814FA88C | 80 1D 01 08 */	lwz r0, 0x108(r29)
/* 814FA890 | 7C 1E 00 00 */	cmpw r30, r0
/* 814FA894 | 41 80 FF E4 */	blt .L_814FA878
/* 814FA898 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814FA89C | 83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 814FA8A0 | 83 C1 00 38 */	lwz r30, 0x38(r1)
/* 814FA8A4 | 83 A1 00 34 */	lwz r29, 0x34(r1)
/* 814FA8A8 | 7C 08 03 A6 */	mtlr r0
/* 814FA8AC | 38 21 00 40 */	addi r1, r1, 0x40
/* 814FA8B0 | 4E 80 00 20 */	blr
.endfn SetAxAdpcm__Q44nw4r3snd6detail7AxVoiceFiQ54nw4r3snd6detail7AxVoice6FormatPCQ44nw4r3snd6detail10AdpcmParam

# .text:0x1FB4 | 0x814FA8B4 | size: 0x9C
# nw4r::snd::detail::AxVoice::SetAxAdpcmLoop(int, nw4r::snd::detail::AxVoice::Format, const nw4r::snd::detail::AdpcmLoopParam*)
.fn SetAxAdpcmLoop__Q44nw4r3snd6detail7AxVoiceFiQ54nw4r3snd6detail7AxVoice6FormatPCQ44nw4r3snd6detail14AdpcmLoopParam, global
/* 814FA8B4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814FA8B8 | 7C 08 02 A6 */	mflr r0
/* 814FA8BC | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814FA8C0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814FA8C4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814FA8C8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814FA8CC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814FA8D0 | 7C 7D 1B 78 */	mr r29, r3
/* 814FA8D4 | 40 82 00 20 */	bne .L_814FA8F4
/* 814FA8D8 | A0 E6 00 00 */	lhz r7, 0x0(r6)
/* 814FA8DC | A0 A6 00 02 */	lhz r5, 0x2(r6)
/* 814FA8E0 | A0 06 00 04 */	lhz r0, 0x4(r6)
/* 814FA8E4 | B0 E1 00 08 */	sth r7, 0x8(r1)
/* 814FA8E8 | B0 A1 00 0A */	sth r5, 0xa(r1)
/* 814FA8EC | B0 01 00 0C */	sth r0, 0xc(r1)
/* 814FA8F0 | 48 00 00 14 */	b .L_814FA904
.L_814FA8F4:
/* 814FA8F4 | 38 00 00 00 */	li r0, 0x0
/* 814FA8F8 | B0 01 00 08 */	sth r0, 0x8(r1)
/* 814FA8FC | B0 01 00 0A */	sth r0, 0xa(r1)
/* 814FA900 | B0 01 00 0C */	sth r0, 0xc(r1)
.L_814FA904:
/* 814FA904 | 54 80 20 36 */	slwi r0, r4, 4
/* 814FA908 | 3B C0 00 00 */	li r30, 0x0
/* 814FA90C | 7F E3 02 14 */	add r31, r3, r0
/* 814FA910 | 48 00 00 18 */	b .L_814FA928
.L_814FA914:
/* 814FA914 | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 814FA918 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814FA91C | 48 05 AC E5 */	bl fn_81555600
/* 814FA920 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 814FA924 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_814FA928:
/* 814FA928 | 80 1D 01 08 */	lwz r0, 0x108(r29)
/* 814FA92C | 7C 1E 00 00 */	cmpw r30, r0
/* 814FA930 | 41 80 FF E4 */	blt .L_814FA914
/* 814FA934 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814FA938 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814FA93C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814FA940 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814FA944 | 7C 08 03 A6 */	mtlr r0
/* 814FA948 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814FA94C | 4E 80 00 20 */	blr
.endfn SetAxAdpcmLoop__Q44nw4r3snd6detail7AxVoiceFiQ54nw4r3snd6detail7AxVoice6FormatPCQ44nw4r3snd6detail14AdpcmLoopParam

# .text:0x2050 | 0x814FA950 | size: 0x23C
# nw4r::snd::detail::AxVoice::UpdateAxVe()
.fn UpdateAxVe__Q44nw4r3snd6detail7AxVoiceFv, global
/* 814FA950 | 94 21 FF 80 */	stwu r1, -0x80(r1)
/* 814FA954 | 7C 08 02 A6 */	mflr r0
/* 814FA958 | 90 01 00 84 */	stw r0, 0x84(r1)
/* 814FA95C | DB E1 00 70 */	stfd f31, 0x70(r1)
/* 814FA960 | F3 E1 00 78 */	psq_st f31, 0x78(r1), 0, qr0
/* 814FA964 | DB C1 00 60 */	stfd f30, 0x60(r1)
/* 814FA968 | F3 C1 00 68 */	psq_st f30, 0x68(r1), 0, qr0
/* 814FA96C | DB A1 00 50 */	stfd f29, 0x50(r1)
/* 814FA970 | F3 A1 00 58 */	psq_st f29, 0x58(r1), 0, qr0
/* 814FA974 | 39 61 00 50 */	addi r11, r1, 0x50
/* 814FA978 | 48 0F EB 31 */	bl _savegpr_21
/* 814FA97C | C3 E2 8D D8 */	lfs f31, lbl_816951D8@sda21(r0)
/* 814FA980 | 7C 75 1B 78 */	mr r21, r3
/* 814FA984 | C0 03 01 88 */	lfs f0, 0x188(r3)
/* 814FA988 | 3B 40 00 00 */	li r26, 0x0
/* 814FA98C | EF FF 00 32 */	fmuls f31, f31, f0
/* 814FA990 | 4B FF CC 3D */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 814FA994 | 4B FF CE 4D */	bl GetOutputVolume__Q44nw4r3snd6detail9AxManagerCFv
/* 814FA998 | 88 15 01 22 */	lbz r0, 0x122(r21)
/* 814FA99C | EF FF 00 72 */	fmuls f31, f31, f1
/* 814FA9A0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FA9A4 | 41 82 00 08 */	beq .L_814FA9AC
/* 814FA9A8 | C3 E2 8D DC */	lfs f31, lbl_816951DC@sda21(r0)
.L_814FA9AC:
/* 814FA9AC | 3C 60 2A AB */	lis r3, 0x2aab
/* 814FA9B0 | C3 A2 8D FC */	lfs f29, lbl_816951FC@sda21(r0)
/* 814FA9B4 | 7E BD AB 78 */	mr r29, r21
/* 814FA9B8 | 3B D5 01 8C */	addi r30, r21, 0x18c
/* 814FA9BC | 3B E3 AA AB */	subi r31, r3, 0x5555
/* 814FA9C0 | 3B 20 00 00 */	li r25, 0x0
/* 814FA9C4 | 3B 80 00 00 */	li r28, 0x0
/* 814FA9C8 | 48 00 01 30 */	b .L_814FAAF8
.L_814FA9CC:
/* 814FA9CC | C0 1D 00 94 */	lfs f0, 0x94(r29)
/* 814FA9D0 | 7F 75 E2 14 */	add r27, r21, r28
/* 814FA9D4 | 3B 00 00 00 */	li r24, 0x0
/* 814FA9D8 | EF DF 00 32 */	fmuls f30, f31, f0
/* 814FA9DC | 48 00 00 FC */	b .L_814FAAD8
.L_814FA9E0:
/* 814FA9E0 | 88 15 01 21 */	lbz r0, 0x121(r21)
/* 814FA9E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FA9E8 | 40 82 00 3C */	bne .L_814FAA24
/* 814FA9EC | 48 03 5E 99 */	bl OSDisableInterrupts
/* 814FA9F0 | 80 95 00 0C */	lwz r4, 0xc(r21)
/* 814FA9F4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814FA9F8 | 40 82 00 10 */	bne .L_814FAA08
/* 814FA9FC | 48 03 5E B1 */	bl OSRestoreInterrupts
/* 814FAA00 | 3A C0 00 00 */	li r22, 0x0
/* 814FAA04 | 48 00 00 18 */	b .L_814FAA1C
.L_814FAA08:
/* 814FAA08 | A0 84 00 38 */	lhz r4, 0x38(r4)
/* 814FAA0C | 38 04 FF FF */	subi r0, r4, 0x1
/* 814FAA10 | 7C 00 00 34 */	cntlzw r0, r0
/* 814FAA14 | 54 16 D9 7E */	srwi r22, r0, 5
/* 814FAA18 | 48 03 5E 95 */	bl OSRestoreInterrupts
.L_814FAA1C:
/* 814FAA1C | 2C 16 00 00 */	cmpwi r22, 0x0
/* 814FAA20 | 40 82 00 38 */	bne .L_814FAA58
.L_814FAA24:
/* 814FAA24 | C0 35 01 9C */	lfs f1, 0x19c(r21)
/* 814FAA28 | C0 15 01 A0 */	lfs f0, 0x1a0(r21)
/* 814FAA2C | EC 3E 00 72 */	fmuls f1, f30, f1
/* 814FAA30 | EC 1E 00 32 */	fmuls f0, f30, f0
/* 814FAA34 | EC 3D 00 72 */	fmuls f1, f29, f1
/* 814FAA38 | EC 1D 00 32 */	fmuls f0, f29, f0
/* 814FAA3C | FC 20 08 1E */	fctiwz f1, f1
/* 814FAA40 | FC 00 00 1E */	fctiwz f0, f0
/* 814FAA44 | D8 21 00 10 */	stfd f1, 0x10(r1)
/* 814FAA48 | D8 01 00 18 */	stfd f0, 0x18(r1)
/* 814FAA4C | 82 E1 00 14 */	lwz r23, 0x14(r1)
/* 814FAA50 | 82 C1 00 1C */	lwz r22, 0x1c(r1)
/* 814FAA54 | 48 00 00 38 */	b .L_814FAA8C
.L_814FAA58:
/* 814FAA58 | C0 15 01 A0 */	lfs f0, 0x1a0(r21)
/* 814FAA5C | C0 5E 00 00 */	lfs f2, 0x0(r30)
/* 814FAA60 | C0 35 01 9C */	lfs f1, 0x19c(r21)
/* 814FAA64 | EC 1E 00 32 */	fmuls f0, f30, f0
/* 814FAA68 | EC 22 00 72 */	fmuls f1, f2, f1
/* 814FAA6C | EC 1D 00 32 */	fmuls f0, f29, f0
/* 814FAA70 | EC 3D 00 72 */	fmuls f1, f29, f1
/* 814FAA74 | FC 00 00 1E */	fctiwz f0, f0
/* 814FAA78 | FC 20 08 1E */	fctiwz f1, f1
/* 814FAA7C | D8 01 00 10 */	stfd f0, 0x10(r1)
/* 814FAA80 | D8 21 00 18 */	stfd f1, 0x18(r1)
/* 814FAA84 | 82 C1 00 14 */	lwz r22, 0x14(r1)
/* 814FAA88 | 82 E1 00 1C */	lwz r23, 0x1c(r1)
.L_814FAA8C:
/* 814FAA8C | 56 E3 04 3E */	clrlwi r3, r23, 16
/* 814FAA90 | 56 C0 04 3E */	clrlwi r0, r22, 16
/* 814FAA94 | 7C 03 00 50 */	subf r0, r3, r0
/* 814FAA98 | B2 E1 00 08 */	sth r23, 0x8(r1)
/* 814FAA9C | 7C 1F 00 96 */	mulhw r0, r31, r0
/* 814FAAA0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814FAAA4 | 7C 00 26 70 */	srawi r0, r0, 4
/* 814FAAA8 | 54 03 0F FE */	srwi r3, r0, 31
/* 814FAAAC | 7C 00 1A 14 */	add r0, r0, r3
/* 814FAAB0 | B0 01 00 0A */	sth r0, 0xa(r1)
/* 814FAAB4 | 80 7B 00 0C */	lwz r3, 0xc(r27)
/* 814FAAB8 | 48 05 A8 65 */	bl fn_8155531C
/* 814FAABC | 56 C3 04 3E */	clrlwi r3, r22, 16
/* 814FAAC0 | 56 E0 04 3E */	clrlwi r0, r23, 16
/* 814FAAC4 | 7C 03 00 40 */	cmplw r3, r0
/* 814FAAC8 | 41 82 00 08 */	beq .L_814FAAD0
/* 814FAACC | 3B 40 00 01 */	li r26, 0x1
.L_814FAAD0:
/* 814FAAD0 | 3B 7B 00 10 */	addi r27, r27, 0x10
/* 814FAAD4 | 3B 18 00 01 */	addi r24, r24, 0x1
.L_814FAAD8:
/* 814FAAD8 | 80 15 01 04 */	lwz r0, 0x104(r21)
/* 814FAADC | 7C 18 00 00 */	cmpw r24, r0
/* 814FAAE0 | 41 80 FF 00 */	blt .L_814FA9E0
/* 814FAAE4 | D3 DE 00 00 */	stfs f30, 0x0(r30)
/* 814FAAE8 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 814FAAEC | 3B BD 00 1C */	addi r29, r29, 0x1c
/* 814FAAF0 | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 814FAAF4 | 3B 39 00 01 */	addi r25, r25, 0x1
.L_814FAAF8:
/* 814FAAF8 | 80 15 01 08 */	lwz r0, 0x108(r21)
/* 814FAAFC | 7C 19 00 00 */	cmpw r25, r0
/* 814FAB00 | 41 80 FE CC */	blt .L_814FA9CC
/* 814FAB04 | 88 15 01 21 */	lbz r0, 0x121(r21)
/* 814FAB08 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FAB0C | 40 82 00 3C */	bne .L_814FAB48
/* 814FAB10 | 48 03 5D 75 */	bl OSDisableInterrupts
/* 814FAB14 | 80 95 00 0C */	lwz r4, 0xc(r21)
/* 814FAB18 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814FAB1C | 40 82 00 10 */	bne .L_814FAB2C
/* 814FAB20 | 48 03 5D 8D */	bl OSRestoreInterrupts
/* 814FAB24 | 3A C0 00 00 */	li r22, 0x0
/* 814FAB28 | 48 00 00 18 */	b .L_814FAB40
.L_814FAB2C:
/* 814FAB2C | A0 84 00 38 */	lhz r4, 0x38(r4)
/* 814FAB30 | 38 04 FF FF */	subi r0, r4, 0x1
/* 814FAB34 | 7C 00 00 34 */	cntlzw r0, r0
/* 814FAB38 | 54 16 D9 7E */	srwi r22, r0, 5
/* 814FAB3C | 48 03 5D 71 */	bl OSRestoreInterrupts
.L_814FAB40:
/* 814FAB40 | 2C 16 00 00 */	cmpwi r22, 0x0
/* 814FAB44 | 40 82 00 0C */	bne .L_814FAB50
.L_814FAB48:
/* 814FAB48 | 38 00 00 00 */	li r0, 0x0
/* 814FAB4C | 98 15 01 21 */	stb r0, 0x121(r21)
.L_814FAB50:
/* 814FAB50 | C0 15 01 A0 */	lfs f0, 0x1a0(r21)
/* 814FAB54 | 7F 43 D3 78 */	mr r3, r26
/* 814FAB58 | D0 15 01 9C */	stfs f0, 0x19c(r21)
/* 814FAB5C | E3 E1 00 78 */	psq_l f31, 0x78(r1), 0, qr0
/* 814FAB60 | CB E1 00 70 */	lfd f31, 0x70(r1)
/* 814FAB64 | E3 C1 00 68 */	psq_l f30, 0x68(r1), 0, qr0
/* 814FAB68 | CB C1 00 60 */	lfd f30, 0x60(r1)
/* 814FAB6C | E3 A1 00 58 */	psq_l f29, 0x58(r1), 0, qr0
/* 814FAB70 | CB A1 00 50 */	lfd f29, 0x50(r1)
/* 814FAB74 | 39 61 00 50 */	addi r11, r1, 0x50
/* 814FAB78 | 48 0F E9 7D */	bl _restgpr_21
/* 814FAB7C | 80 01 00 84 */	lwz r0, 0x84(r1)
/* 814FAB80 | 7C 08 03 A6 */	mtlr r0
/* 814FAB84 | 38 21 00 80 */	addi r1, r1, 0x80
/* 814FAB88 | 4E 80 00 20 */	blr
.endfn UpdateAxVe__Q44nw4r3snd6detail7AxVoiceFv

# .text:0x228C | 0x814FAB8C | size: 0xD8
# nw4r::snd::detail::AxVoice::UpdateAxMix()
.fn UpdateAxMix__Q44nw4r3snd6detail7AxVoiceFv, global
/* 814FAB8C | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 814FAB90 | 7C 08 02 A6 */	mflr r0
/* 814FAB94 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 814FAB98 | 39 61 00 70 */	addi r11, r1, 0x70
/* 814FAB9C | 48 0F E9 25 */	bl _savegpr_27
/* 814FABA0 | 7C 7B 1B 78 */	mr r27, r3
/* 814FABA4 | 3B A0 00 00 */	li r29, 0x0
/* 814FABA8 | 7F 7F DB 78 */	mr r31, r27
/* 814FABAC | 48 00 00 94 */	b .L_814FAC40
.L_814FABB0:
/* 814FABB0 | 7F FE FB 78 */	mr r30, r31
/* 814FABB4 | 3B 80 00 00 */	li r28, 0x0
/* 814FABB8 | 48 00 00 74 */	b .L_814FAC2C
.L_814FABBC:
/* 814FABBC | 7F 63 DB 78 */	mr r3, r27
/* 814FABC0 | 7F A4 EB 78 */	mr r4, r29
/* 814FABC4 | 7F 85 E3 78 */	mr r5, r28
/* 814FABC8 | 38 C1 00 28 */	addi r6, r1, 0x28
/* 814FABCC | 48 00 05 B5 */	bl CalcAXPBMIX__Q44nw4r3snd6detail7AxVoiceFiiP8_AXPBMIX
/* 814FABD0 | 80 7E 00 0C */	lwz r3, 0xc(r30)
/* 814FABD4 | 38 81 00 28 */	addi r4, r1, 0x28
/* 814FABD8 | 48 05 A5 05 */	bl fn_815550DC
/* 814FABDC | 80 1B 01 3C */	lwz r0, 0x13c(r27)
/* 814FABE0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814FABE4 | 41 81 00 14 */	bgt .L_814FABF8
/* 814FABE8 | 80 7E 00 0C */	lwz r3, 0xc(r30)
/* 814FABEC | 38 80 00 00 */	li r4, 0x0
/* 814FABF0 | 48 05 AB F1 */	bl fn_815557E0
/* 814FABF4 | 48 00 00 30 */	b .L_814FAC24
.L_814FABF8:
/* 814FABF8 | 7F 63 DB 78 */	mr r3, r27
/* 814FABFC | 7F A4 EB 78 */	mr r4, r29
/* 814FAC00 | 7F 85 E3 78 */	mr r5, r28
/* 814FAC04 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814FAC08 | 48 00 0E 75 */	bl CalcAXPBRMTMIX__Q44nw4r3snd6detail7AxVoiceFiiP11_AXPBRMTMIX
/* 814FAC0C | 80 7E 00 0C */	lwz r3, 0xc(r30)
/* 814FAC10 | 38 80 00 01 */	li r4, 0x1
/* 814FAC14 | 48 05 AB CD */	bl fn_815557E0
/* 814FAC18 | 80 7E 00 0C */	lwz r3, 0xc(r30)
/* 814FAC1C | 38 81 00 08 */	addi r4, r1, 0x8
/* 814FAC20 | 48 05 AC 0D */	bl fn_8155582C
.L_814FAC24:
/* 814FAC24 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 814FAC28 | 3B 9C 00 01 */	addi r28, r28, 0x1
.L_814FAC2C:
/* 814FAC2C | 80 1B 01 08 */	lwz r0, 0x108(r27)
/* 814FAC30 | 7C 1C 00 00 */	cmpw r28, r0
/* 814FAC34 | 41 80 FF 88 */	blt .L_814FABBC
/* 814FAC38 | 3B FF 00 10 */	addi r31, r31, 0x10
/* 814FAC3C | 3B BD 00 01 */	addi r29, r29, 0x1
.L_814FAC40:
/* 814FAC40 | 80 1B 01 04 */	lwz r0, 0x104(r27)
/* 814FAC44 | 7C 1D 00 00 */	cmpw r29, r0
/* 814FAC48 | 41 80 FF 68 */	blt .L_814FABB0
/* 814FAC4C | 39 61 00 70 */	addi r11, r1, 0x70
/* 814FAC50 | 48 0F E8 BD */	bl _restgpr_27
/* 814FAC54 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 814FAC58 | 7C 08 03 A6 */	mtlr r0
/* 814FAC5C | 38 21 00 70 */	addi r1, r1, 0x70
/* 814FAC60 | 4E 80 00 20 */	blr
.endfn UpdateAxMix__Q44nw4r3snd6detail7AxVoiceFv

# .text:0x2364 | 0x814FAC64 | size: 0x144
# nw4r::snd::detail::AxVoice::UpdateAxLpf()
.fn UpdateAxLpf__Q44nw4r3snd6detail7AxVoiceFv, global
/* 814FAC64 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814FAC68 | 7C 08 02 A6 */	mflr r0
/* 814FAC6C | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814FAC70 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814FAC74 | 48 0F E8 41 */	bl _savegpr_24
/* 814FAC78 | 7C 7F 1B 78 */	mr r31, r3
/* 814FAC7C | 3B 20 00 00 */	li r25, 0x0
/* 814FAC80 | 7F FC FB 78 */	mr r28, r31
/* 814FAC84 | 3B 60 00 00 */	li r27, 0x0
/* 814FAC88 | 3B A0 00 00 */	li r29, 0x0
/* 814FAC8C | 3B C0 00 01 */	li r30, 0x1
/* 814FAC90 | 48 00 00 F4 */	b .L_814FAD84
.L_814FAC94:
/* 814FAC94 | C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 814FAC98 | C0 1C 00 A8 */	lfs f0, 0xa8(r28)
/* 814FAC9C | EC 21 00 2A */	fadds f1, f1, f0
/* 814FACA0 | 48 01 47 9D */	bl CalcLpfFreq__Q44nw4r3snd6detail4UtilFf
/* 814FACA4 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814FACA8 | 28 03 3E 80 */	cmplwi r3, 0x3e80
/* 814FACAC | 41 80 00 3C */	blt .L_814FACE8
/* 814FACB0 | B3 A1 00 18 */	sth r29, 0x18(r1)
/* 814FACB4 | 7F 5F DA 14 */	add r26, r31, r27
/* 814FACB8 | 3B 00 00 00 */	li r24, 0x0
/* 814FACBC | B3 A1 00 1A */	sth r29, 0x1a(r1)
/* 814FACC0 | 48 00 00 18 */	b .L_814FACD8
.L_814FACC4:
/* 814FACC4 | 80 7A 00 0C */	lwz r3, 0xc(r26)
/* 814FACC8 | 38 81 00 18 */	addi r4, r1, 0x18
/* 814FACCC | 48 05 A9 95 */	bl fn_81555660
/* 814FACD0 | 3B 5A 00 10 */	addi r26, r26, 0x10
/* 814FACD4 | 3B 18 00 01 */	addi r24, r24, 0x1
.L_814FACD8:
/* 814FACD8 | 80 1F 01 04 */	lwz r0, 0x104(r31)
/* 814FACDC | 7C 18 00 00 */	cmpw r24, r0
/* 814FACE0 | 41 80 FF E4 */	blt .L_814FACC4
/* 814FACE4 | 48 00 00 94 */	b .L_814FAD78
.L_814FACE8:
/* 814FACE8 | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 814FACEC | A0 04 00 E2 */	lhz r0, 0xe2(r4)
/* 814FACF0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814FACF4 | 40 82 00 44 */	bne .L_814FAD38
/* 814FACF8 | 38 81 00 0A */	addi r4, r1, 0xa
/* 814FACFC | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814FAD00 | 48 05 AA 25 */	bl fn_81555724
/* 814FAD04 | 7F 5F DA 14 */	add r26, r31, r27
/* 814FAD08 | 3B 00 00 00 */	li r24, 0x0
/* 814FAD0C | 48 00 00 1C */	b .L_814FAD28
.L_814FAD10:
/* 814FAD10 | 80 7A 00 0C */	lwz r3, 0xc(r26)
/* 814FAD14 | A0 81 00 0A */	lhz r4, 0xa(r1)
/* 814FAD18 | A0 A1 00 08 */	lhz r5, 0x8(r1)
/* 814FAD1C | 48 05 A9 AD */	bl fn_815556C8
/* 814FAD20 | 3B 5A 00 10 */	addi r26, r26, 0x10
/* 814FAD24 | 3B 18 00 01 */	addi r24, r24, 0x1
.L_814FAD28:
/* 814FAD28 | 80 1F 01 04 */	lwz r0, 0x104(r31)
/* 814FAD2C | 7C 18 00 00 */	cmpw r24, r0
/* 814FAD30 | 41 80 FF E0 */	blt .L_814FAD10
/* 814FAD34 | 48 00 00 44 */	b .L_814FAD78
.L_814FAD38:
/* 814FAD38 | B3 C1 00 10 */	sth r30, 0x10(r1)
/* 814FAD3C | 38 81 00 14 */	addi r4, r1, 0x14
/* 814FAD40 | 38 A1 00 16 */	addi r5, r1, 0x16
/* 814FAD44 | B3 A1 00 12 */	sth r29, 0x12(r1)
/* 814FAD48 | 48 05 A9 DD */	bl fn_81555724
/* 814FAD4C | 7F 5F DA 14 */	add r26, r31, r27
/* 814FAD50 | 3B 00 00 00 */	li r24, 0x0
/* 814FAD54 | 48 00 00 18 */	b .L_814FAD6C
.L_814FAD58:
/* 814FAD58 | 80 7A 00 0C */	lwz r3, 0xc(r26)
/* 814FAD5C | 38 81 00 10 */	addi r4, r1, 0x10
/* 814FAD60 | 48 05 A9 01 */	bl fn_81555660
/* 814FAD64 | 3B 5A 00 10 */	addi r26, r26, 0x10
/* 814FAD68 | 3B 18 00 01 */	addi r24, r24, 0x1
.L_814FAD6C:
/* 814FAD6C | 80 1F 01 04 */	lwz r0, 0x104(r31)
/* 814FAD70 | 7C 18 00 00 */	cmpw r24, r0
/* 814FAD74 | 41 80 FF E4 */	blt .L_814FAD58
.L_814FAD78:
/* 814FAD78 | 3B 9C 00 1C */	addi r28, r28, 0x1c
/* 814FAD7C | 3B 7B 00 04 */	addi r27, r27, 0x4
/* 814FAD80 | 3B 39 00 01 */	addi r25, r25, 0x1
.L_814FAD84:
/* 814FAD84 | 80 1F 01 08 */	lwz r0, 0x108(r31)
/* 814FAD88 | 7C 19 00 00 */	cmpw r25, r0
/* 814FAD8C | 41 80 FF 08 */	blt .L_814FAC94
/* 814FAD90 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814FAD94 | 48 0F E7 6D */	bl _restgpr_24
/* 814FAD98 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814FAD9C | 7C 08 03 A6 */	mtlr r0
/* 814FADA0 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814FADA4 | 4E 80 00 20 */	blr
.endfn UpdateAxLpf__Q44nw4r3snd6detail7AxVoiceFv

# .text:0x24A8 | 0x814FADA8 | size: 0xE8
# nw4r::snd::detail::AxVoice::VoiceCallback(void*)
.fn VoiceCallback__Q44nw4r3snd6detail7AxVoiceFPv, global
/* 814FADA8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814FADAC | 7C 08 02 A6 */	mflr r0
/* 814FADB0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814FADB4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814FADB8 | 48 0F E7 01 */	bl _savegpr_25
/* 814FADBC | 7C 79 1B 78 */	mr r25, r3
/* 814FADC0 | 48 03 5A C5 */	bl OSDisableInterrupts
/* 814FADC4 | 83 99 00 14 */	lwz r28, 0x14(r25)
/* 814FADC8 | 7C 7F 1B 78 */	mr r31, r3
/* 814FADCC | 81 9C 01 0C */	lwz r12, 0x10c(r28)
/* 814FADD0 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814FADD4 | 41 82 00 18 */	beq .L_814FADEC
/* 814FADD8 | 7F 83 E3 78 */	mr r3, r28
/* 814FADDC | 80 BC 01 10 */	lwz r5, 0x110(r28)
/* 814FADE0 | 38 80 00 03 */	li r4, 0x3
/* 814FADE4 | 7D 89 03 A6 */	mtctr r12
/* 814FADE8 | 4E 80 04 21 */	bctrl
.L_814FADEC:
/* 814FADEC | 7F 9E E3 78 */	mr r30, r28
/* 814FADF0 | 3B 60 00 00 */	li r27, 0x0
/* 814FADF4 | 48 00 00 44 */	b .L_814FAE38
.L_814FADF8:
/* 814FADF8 | 7F DD F3 78 */	mr r29, r30
/* 814FADFC | 3B 40 00 00 */	li r26, 0x0
/* 814FAE00 | 48 00 00 24 */	b .L_814FAE24
.L_814FAE04:
/* 814FAE04 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 814FAE08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FAE0C | 41 82 00 10 */	beq .L_814FAE1C
/* 814FAE10 | 7C 03 C8 40 */	cmplw r3, r25
/* 814FAE14 | 41 82 00 08 */	beq .L_814FAE1C
/* 814FAE18 | 48 05 74 CD */	bl fn_815522E4
.L_814FAE1C:
/* 814FAE1C | 3B BD 00 04 */	addi r29, r29, 0x4
/* 814FAE20 | 3B 5A 00 01 */	addi r26, r26, 0x1
.L_814FAE24:
/* 814FAE24 | 80 1C 01 08 */	lwz r0, 0x108(r28)
/* 814FAE28 | 7C 1A 00 00 */	cmpw r26, r0
/* 814FAE2C | 41 80 FF D8 */	blt .L_814FAE04
/* 814FAE30 | 3B DE 00 10 */	addi r30, r30, 0x10
/* 814FAE34 | 3B 7B 00 01 */	addi r27, r27, 0x1
.L_814FAE38:
/* 814FAE38 | 80 1C 01 04 */	lwz r0, 0x104(r28)
/* 814FAE3C | 7C 1B 00 00 */	cmpw r27, r0
/* 814FAE40 | 41 80 FF B8 */	blt .L_814FADF8
/* 814FAE44 | 48 00 37 A1 */	bl GetInstance__Q44nw4r3snd6detail22DisposeCallbackManagerFv
/* 814FAE48 | 7F 84 E3 78 */	mr r4, r28
/* 814FAE4C | 48 00 38 E1 */	bl UnregisterDisposeCallback__Q44nw4r3snd6detail22DisposeCallbackManagerFPQ44nw4r3snd6detail15DisposeCallback
/* 814FAE50 | 4B FF C7 7D */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 814FAE54 | 7F 84 E3 78 */	mr r4, r28
/* 814FAE58 | 4B FF D0 11 */	bl FreeVoice__Q44nw4r3snd6detail9AxManagerFPQ44nw4r3snd6detail7AxVoice
/* 814FAE5C | 38 00 00 00 */	li r0, 0x0
/* 814FAE60 | 7F E3 FB 78 */	mr r3, r31
/* 814FAE64 | 98 1C 01 1F */	stb r0, 0x11f(r28)
/* 814FAE68 | 98 1C 01 1D */	stb r0, 0x11d(r28)
/* 814FAE6C | 90 1C 01 04 */	stw r0, 0x104(r28)
/* 814FAE70 | 98 1C 01 1C */	stb r0, 0x11c(r28)
/* 814FAE74 | 48 03 5A 39 */	bl OSRestoreInterrupts
/* 814FAE78 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814FAE7C | 48 0F E6 89 */	bl _restgpr_25
/* 814FAE80 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814FAE84 | 7C 08 03 A6 */	mtlr r0
/* 814FAE88 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814FAE8C | 4E 80 00 20 */	blr
.endfn VoiceCallback__Q44nw4r3snd6detail7AxVoiceFPv

# .text:0x2590 | 0x814FAE90 | size: 0x88
# nw4r::snd::detail::AxVoice::GetDspAddressBySample(const void*, unsigned long, nw4r::snd::detail::AxVoice::Format)
.fn GetDspAddressBySample__Q44nw4r3snd6detail7AxVoiceFPCvUlQ54nw4r3snd6detail7AxVoice6Format, global
/* 814FAE90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FAE94 | 41 82 00 08 */	beq .L_814FAE9C
/* 814FAE98 | 3C 63 80 00 */	addis r3, r3, 0x8000
.L_814FAE9C:
/* 814FAE9C | 2C 05 00 0A */	cmpwi r5, 0xa
/* 814FAEA0 | 38 C0 00 00 */	li r6, 0x0
/* 814FAEA4 | 41 82 00 64 */	beq .L_814FAF08
/* 814FAEA8 | 40 80 00 10 */	bge .L_814FAEB8
/* 814FAEAC | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814FAEB0 | 41 82 00 14 */	beq .L_814FAEC4
/* 814FAEB4 | 48 00 00 5C */	b .L_814FAF10
.L_814FAEB8:
/* 814FAEB8 | 2C 05 00 19 */	cmpwi r5, 0x19
/* 814FAEBC | 41 82 00 44 */	beq .L_814FAF00
/* 814FAEC0 | 48 00 00 50 */	b .L_814FAF10
.L_814FAEC4:
/* 814FAEC4 | 3C A0 24 92 */	lis r5, 0x2492
/* 814FAEC8 | 54 60 08 3C */	slwi r0, r3, 1
/* 814FAECC | 38 65 49 25 */	addi r3, r5, 0x4925
/* 814FAED0 | 7C A3 20 16 */	mulhwu r5, r3, r4
/* 814FAED4 | 7C 65 20 50 */	subf r3, r5, r4
/* 814FAED8 | 54 63 F8 7E */	srwi r3, r3, 1
/* 814FAEDC | 7C A3 2A 14 */	add r5, r3, r5
/* 814FAEE0 | 54 A3 E8 FE */	srwi r3, r5, 3
/* 814FAEE4 | 1C C3 00 0E */	mulli r6, r3, 0xe
/* 814FAEE8 | 54 A3 08 36 */	extlwi r3, r5, 28, 1
/* 814FAEEC | 7C 86 20 50 */	subf r4, r6, r4
/* 814FAEF0 | 7C 04 02 14 */	add r0, r4, r0
/* 814FAEF4 | 7C C0 1A 14 */	add r6, r0, r3
/* 814FAEF8 | 38 C6 00 02 */	addi r6, r6, 0x2
/* 814FAEFC | 48 00 00 14 */	b .L_814FAF10
.L_814FAF00:
/* 814FAF00 | 7C C3 22 14 */	add r6, r3, r4
/* 814FAF04 | 48 00 00 0C */	b .L_814FAF10
.L_814FAF08:
/* 814FAF08 | 54 60 F8 7E */	srwi r0, r3, 1
/* 814FAF0C | 7C C0 22 14 */	add r6, r0, r4
.L_814FAF10:
/* 814FAF10 | 7C C3 33 78 */	mr r3, r6
/* 814FAF14 | 4E 80 00 20 */	blr
.endfn GetDspAddressBySample__Q44nw4r3snd6detail7AxVoiceFPCvUlQ54nw4r3snd6detail7AxVoice6Format

# .text:0x2618 | 0x814FAF18 | size: 0x6C
# nw4r::snd::detail::AxVoice::GetSampleByDspAddress(const void*, unsigned long, nw4r::snd::detail::AxVoice::Format)
.fn GetSampleByDspAddress__Q44nw4r3snd6detail7AxVoiceFPCvUlQ54nw4r3snd6detail7AxVoice6Format, global
/* 814FAF18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FAF1C | 41 82 00 08 */	beq .L_814FAF24
/* 814FAF20 | 3C 63 80 00 */	addis r3, r3, 0x8000
.L_814FAF24:
/* 814FAF24 | 2C 05 00 0A */	cmpwi r5, 0xa
/* 814FAF28 | 38 00 00 00 */	li r0, 0x0
/* 814FAF2C | 41 82 00 48 */	beq .L_814FAF74
/* 814FAF30 | 40 80 00 10 */	bge .L_814FAF40
/* 814FAF34 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814FAF38 | 41 82 00 14 */	beq .L_814FAF4C
/* 814FAF3C | 48 00 00 40 */	b .L_814FAF7C
.L_814FAF40:
/* 814FAF40 | 2C 05 00 19 */	cmpwi r5, 0x19
/* 814FAF44 | 41 82 00 28 */	beq .L_814FAF6C
/* 814FAF48 | 48 00 00 34 */	b .L_814FAF7C
.L_814FAF4C:
/* 814FAF4C | 54 60 08 3C */	slwi r0, r3, 1
/* 814FAF50 | 7C 80 20 50 */	subf r4, r0, r4
/* 814FAF54 | 54 80 E1 3E */	srwi r0, r4, 4
/* 814FAF58 | 1C 60 00 0E */	mulli r3, r0, 0xe
/* 814FAF5C | 54 80 07 3E */	clrlwi r0, r4, 28
/* 814FAF60 | 7C 60 1A 14 */	add r3, r0, r3
/* 814FAF64 | 38 03 FF FE */	subi r0, r3, 0x2
/* 814FAF68 | 48 00 00 14 */	b .L_814FAF7C
.L_814FAF6C:
/* 814FAF6C | 7C 03 20 50 */	subf r0, r3, r4
/* 814FAF70 | 48 00 00 0C */	b .L_814FAF7C
.L_814FAF74:
/* 814FAF74 | 54 60 F8 7E */	srwi r0, r3, 1
/* 814FAF78 | 7C 00 20 50 */	subf r0, r0, r4
.L_814FAF7C:
/* 814FAF7C | 7C 03 03 78 */	mr r3, r0
/* 814FAF80 | 4E 80 00 20 */	blr
.endfn GetSampleByDspAddress__Q44nw4r3snd6detail7AxVoiceFPCvUlQ54nw4r3snd6detail7AxVoice6Format

# .text:0x2684 | 0x814FAF84 | size: 0x5C
# nw4r::snd::detail::AxVoice::GetSampleByByte(unsigned long, nw4r::snd::detail::AxVoice::Format)
.fn GetSampleByByte__Q44nw4r3snd6detail7AxVoiceFUlQ54nw4r3snd6detail7AxVoice6Format, global
/* 814FAF84 | 2C 04 00 0A */	cmpwi r4, 0xa
/* 814FAF88 | 38 A0 00 00 */	li r5, 0x0
/* 814FAF8C | 41 82 00 48 */	beq .L_814FAFD4
/* 814FAF90 | 40 80 00 10 */	bge .L_814FAFA0
/* 814FAF94 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814FAF98 | 41 82 00 14 */	beq .L_814FAFAC
/* 814FAF9C | 48 00 00 3C */	b .L_814FAFD8
.L_814FAFA0:
/* 814FAFA0 | 2C 04 00 19 */	cmpwi r4, 0x19
/* 814FAFA4 | 41 82 00 28 */	beq .L_814FAFCC
/* 814FAFA8 | 48 00 00 30 */	b .L_814FAFD8
.L_814FAFAC:
/* 814FAFAC | 54 60 E8 FE */	srwi r0, r3, 3
/* 814FAFB0 | 54 63 07 7F */	clrlwi. r3, r3, 29
/* 814FAFB4 | 1C A0 00 0E */	mulli r5, r0, 0xe
/* 814FAFB8 | 41 82 00 20 */	beq .L_814FAFD8
/* 814FAFBC | 38 03 FF FF */	subi r0, r3, 0x1
/* 814FAFC0 | 54 00 08 3C */	slwi r0, r0, 1
/* 814FAFC4 | 7C A5 02 14 */	add r5, r5, r0
/* 814FAFC8 | 48 00 00 10 */	b .L_814FAFD8
.L_814FAFCC:
/* 814FAFCC | 7C 65 1B 78 */	mr r5, r3
/* 814FAFD0 | 48 00 00 08 */	b .L_814FAFD8
.L_814FAFD4:
/* 814FAFD4 | 54 65 F8 7E */	srwi r5, r3, 1
.L_814FAFD8:
/* 814FAFD8 | 7C A3 2B 78 */	mr r3, r5
/* 814FAFDC | 4E 80 00 20 */	blr
.endfn GetSampleByByte__Q44nw4r3snd6detail7AxVoiceFUlQ54nw4r3snd6detail7AxVoice6Format

# .text:0x26E0 | 0x814FAFE0 | size: 0x1A0
# nw4r::snd::detail::AxVoice::TransformDpl2Pan(float*, float*, float, float)
.fn TransformDpl2Pan__Q44nw4r3snd6detail7AxVoiceFPfPfff, global
/* 814FAFE0 | C0 62 8D D8 */	lfs f3, lbl_816951D8@sda21(r0)
/* 814FAFE4 | FC 00 0A 10 */	fabs f0, f1
/* 814FAFE8 | EC 82 18 28 */	fsubs f4, f2, f3
/* 814FAFEC | FC 40 22 10 */	fabs f2, f4
/* 814FAFF0 | FC 00 10 40 */	fcmpo cr0, f0, f2
/* 814FAFF4 | 4C 40 13 82 */	cror eq, lt, eq
/* 814FAFF8 | 40 82 00 54 */	bne .L_814FB04C
/* 814FAFFC | C0 02 8D DC */	lfs f0, lbl_816951DC@sda21(r0)
/* 814FB000 | FC 04 00 40 */	fcmpo cr0, f4, f0
/* 814FB004 | 4C 40 13 82 */	cror eq, lt, eq
/* 814FB008 | 40 82 00 20 */	bne .L_814FB028
/* 814FB00C | C0 42 8E 04 */	lfs f2, lbl_81695204@sda21(r0)
/* 814FB010 | C0 02 8E 00 */	lfs f0, lbl_81695200@sda21(r0)
/* 814FB014 | EC 42 01 32 */	fmuls f2, f2, f4
/* 814FB018 | D0 24 00 00 */	stfs f1, 0x0(r4)
/* 814FB01C | EC 00 10 2A */	fadds f0, f0, f2
/* 814FB020 | D0 05 00 00 */	stfs f0, 0x0(r5)
/* 814FB024 | 48 00 01 48 */	b .L_814FB16C
.L_814FB028:
/* 814FB028 | C0 02 8E 0C */	lfs f0, lbl_8169520C@sda21(r0)
/* 814FB02C | C0 62 8E 08 */	lfs f3, lbl_81695208@sda21(r0)
/* 814FB030 | EC 40 01 32 */	fmuls f2, f0, f4
/* 814FB034 | C0 02 8E 00 */	lfs f0, lbl_81695200@sda21(r0)
/* 814FB038 | EC 23 00 72 */	fmuls f1, f3, f1
/* 814FB03C | EC 00 10 2A */	fadds f0, f0, f2
/* 814FB040 | D0 24 00 00 */	stfs f1, 0x0(r4)
/* 814FB044 | D0 05 00 00 */	stfs f0, 0x0(r5)
/* 814FB048 | 48 00 01 24 */	b .L_814FB16C
.L_814FB04C:
/* 814FB04C | C0 42 8D DC */	lfs f2, lbl_816951DC@sda21(r0)
/* 814FB050 | FC 01 10 40 */	fcmpo cr0, f1, f2
/* 814FB054 | 4C 41 13 82 */	cror eq, gt, eq
/* 814FB058 | 40 82 00 8C */	bne .L_814FB0E4
/* 814FB05C | FC 04 10 40 */	fcmpo cr0, f4, f2
/* 814FB060 | 4C 40 13 82 */	cror eq, lt, eq
/* 814FB064 | 40 82 00 48 */	bne .L_814FB0AC
/* 814FB068 | FC A0 20 50 */	fneg f5, f4
/* 814FB06C | C0 42 8D F4 */	lfs f2, lbl_816951F4@sda21(r0)
/* 814FB070 | C0 C2 8E 14 */	lfs f6, lbl_81695214@sda21(r0)
/* 814FB074 | EC 82 01 32 */	fmuls f4, f2, f4
/* 814FB078 | C0 62 8E 04 */	lfs f3, lbl_81695204@sda21(r0)
/* 814FB07C | EC E5 08 24 */	fdivs f7, f5, f1
/* 814FB080 | C0 A2 8E 10 */	lfs f5, lbl_81695210@sda21(r0)
/* 814FB084 | C0 42 8E 00 */	lfs f2, lbl_81695200@sda21(r0)
/* 814FB088 | EC C6 01 F2 */	fmuls f6, f6, f7
/* 814FB08C | EC 23 00 72 */	fmuls f1, f3, f1
/* 814FB090 | EC 65 30 2A */	fadds f3, f5, f6
/* 814FB094 | EC 24 08 2A */	fadds f1, f4, f1
/* 814FB098 | EC 63 00 32 */	fmuls f3, f3, f0
/* 814FB09C | EC 02 08 2A */	fadds f0, f2, f1
/* 814FB0A0 | D0 64 00 00 */	stfs f3, 0x0(r4)
/* 814FB0A4 | D0 05 00 00 */	stfs f0, 0x0(r5)
/* 814FB0A8 | 48 00 00 C4 */	b .L_814FB16C
.L_814FB0AC:
/* 814FB0AC | FC A0 20 50 */	fneg f5, f4
/* 814FB0B0 | C0 42 8E 0C */	lfs f2, lbl_8169520C@sda21(r0)
/* 814FB0B4 | C0 82 8E 18 */	lfs f4, lbl_81695218@sda21(r0)
/* 814FB0B8 | EC 42 00 72 */	fmuls f2, f2, f1
/* 814FB0BC | C0 62 8E 10 */	lfs f3, lbl_81695210@sda21(r0)
/* 814FB0C0 | EC A5 08 24 */	fdivs f5, f5, f1
/* 814FB0C4 | C0 22 8E 00 */	lfs f1, lbl_81695200@sda21(r0)
/* 814FB0C8 | EC 84 01 72 */	fmuls f4, f4, f5
/* 814FB0CC | EC 21 10 2A */	fadds f1, f1, f2
/* 814FB0D0 | EC 43 20 2A */	fadds f2, f3, f4
/* 814FB0D4 | EC 02 00 32 */	fmuls f0, f2, f0
/* 814FB0D8 | D0 04 00 00 */	stfs f0, 0x0(r4)
/* 814FB0DC | D0 25 00 00 */	stfs f1, 0x0(r5)
/* 814FB0E0 | 48 00 00 8C */	b .L_814FB16C
.L_814FB0E4:
/* 814FB0E4 | FC 04 10 40 */	fcmpo cr0, f4, f2
/* 814FB0E8 | 4C 40 13 82 */	cror eq, lt, eq
/* 814FB0EC | 40 82 00 48 */	bne .L_814FB134
/* 814FB0F0 | FC A0 20 50 */	fneg f5, f4
/* 814FB0F4 | C0 42 8D F4 */	lfs f2, lbl_816951F4@sda21(r0)
/* 814FB0F8 | C0 C2 8E 14 */	lfs f6, lbl_81695214@sda21(r0)
/* 814FB0FC | EC 82 01 32 */	fmuls f4, f2, f4
/* 814FB100 | C0 62 8E 0C */	lfs f3, lbl_8169520C@sda21(r0)
/* 814FB104 | EC E5 08 24 */	fdivs f7, f5, f1
/* 814FB108 | C0 A2 8E 10 */	lfs f5, lbl_81695210@sda21(r0)
/* 814FB10C | C0 42 8E 00 */	lfs f2, lbl_81695200@sda21(r0)
/* 814FB110 | EC C6 01 F2 */	fmuls f6, f6, f7
/* 814FB114 | EC 23 00 72 */	fmuls f1, f3, f1
/* 814FB118 | EC 66 28 28 */	fsubs f3, f6, f5
/* 814FB11C | EC 24 08 28 */	fsubs f1, f4, f1
/* 814FB120 | EC 63 00 32 */	fmuls f3, f3, f0
/* 814FB124 | EC 02 08 2A */	fadds f0, f2, f1
/* 814FB128 | D0 64 00 00 */	stfs f3, 0x0(r4)
/* 814FB12C | D0 05 00 00 */	stfs f0, 0x0(r5)
/* 814FB130 | 48 00 00 3C */	b .L_814FB16C
.L_814FB134:
/* 814FB134 | FC C0 20 50 */	fneg f6, f4
/* 814FB138 | C0 A2 8E 18 */	lfs f5, lbl_81695218@sda21(r0)
/* 814FB13C | FC 60 08 50 */	fneg f3, f1
/* 814FB140 | C0 42 8E 0C */	lfs f2, lbl_8169520C@sda21(r0)
/* 814FB144 | C0 82 8E 10 */	lfs f4, lbl_81695210@sda21(r0)
/* 814FB148 | EC C6 08 24 */	fdivs f6, f6, f1
/* 814FB14C | C0 22 8E 00 */	lfs f1, lbl_81695200@sda21(r0)
/* 814FB150 | EC A5 01 B2 */	fmuls f5, f5, f6
/* 814FB154 | EC 42 00 F2 */	fmuls f2, f2, f3
/* 814FB158 | EC 65 20 28 */	fsubs f3, f5, f4
/* 814FB15C | EC 21 10 2A */	fadds f1, f1, f2
/* 814FB160 | EC 03 00 32 */	fmuls f0, f3, f0
/* 814FB164 | D0 04 00 00 */	stfs f0, 0x0(r4)
/* 814FB168 | D0 25 00 00 */	stfs f1, 0x0(r5)
.L_814FB16C:
/* 814FB16C | C0 25 00 00 */	lfs f1, 0x0(r5)
/* 814FB170 | C0 02 8D D8 */	lfs f0, lbl_816951D8@sda21(r0)
/* 814FB174 | EC 01 00 2A */	fadds f0, f1, f0
/* 814FB178 | D0 05 00 00 */	stfs f0, 0x0(r5)
/* 814FB17C | 4E 80 00 20 */	blr
.endfn TransformDpl2Pan__Q44nw4r3snd6detail7AxVoiceFPfPfff

# .text:0x2880 | 0x814FB180 | size: 0x8FC
# nw4r::snd::detail::AxVoice::CalcAXPBMIX(int, int, _AXPBMIX*)
.fn CalcAXPBMIX__Q44nw4r3snd6detail7AxVoiceFiiP8_AXPBMIX, global
/* 814FB180 | 94 21 FE E0 */	stwu r1, -0x120(r1)
/* 814FB184 | 7C 08 02 A6 */	mflr r0
/* 814FB188 | 90 01 01 24 */	stw r0, 0x124(r1)
/* 814FB18C | DB E1 01 10 */	stfd f31, 0x110(r1)
/* 814FB190 | F3 E1 01 18 */	psq_st f31, 0x118(r1), 0, qr0
/* 814FB194 | DB C1 01 00 */	stfd f30, 0x100(r1)
/* 814FB198 | F3 C1 01 08 */	psq_st f30, 0x108(r1), 0, qr0
/* 814FB19C | DB A1 00 F0 */	stfd f29, 0xf0(r1)
/* 814FB1A0 | F3 A1 00 F8 */	psq_st f29, 0xf8(r1), 0, qr0
/* 814FB1A4 | DB 81 00 E0 */	stfd f28, 0xe0(r1)
/* 814FB1A8 | F3 81 00 E8 */	psq_st f28, 0xe8(r1), 0, qr0
/* 814FB1AC | DB 61 00 D0 */	stfd f27, 0xd0(r1)
/* 814FB1B0 | F3 61 00 D8 */	psq_st f27, 0xd8(r1), 0, qr0
/* 814FB1B4 | DB 41 00 C0 */	stfd f26, 0xc0(r1)
/* 814FB1B8 | F3 41 00 C8 */	psq_st f26, 0xc8(r1), 0, qr0
/* 814FB1BC | DB 21 00 B0 */	stfd f25, 0xb0(r1)
/* 814FB1C0 | F3 21 00 B8 */	psq_st f25, 0xb8(r1), 0, qr0
/* 814FB1C4 | DB 01 00 A0 */	stfd f24, 0xa0(r1)
/* 814FB1C8 | F3 01 00 A8 */	psq_st f24, 0xa8(r1), 0, qr0
/* 814FB1CC | DA E1 00 90 */	stfd f23, 0x90(r1)
/* 814FB1D0 | F2 E1 00 98 */	psq_st f23, 0x98(r1), 0, qr0
/* 814FB1D4 | DA C1 00 80 */	stfd f22, 0x80(r1)
/* 814FB1D8 | F2 C1 00 88 */	psq_st f22, 0x88(r1), 0, qr0
/* 814FB1DC | DA A1 00 70 */	stfd f21, 0x70(r1)
/* 814FB1E0 | F2 A1 00 78 */	psq_st f21, 0x78(r1), 0, qr0
/* 814FB1E4 | DA 81 00 60 */	stfd f20, 0x60(r1)
/* 814FB1E8 | F2 81 00 68 */	psq_st f20, 0x68(r1), 0, qr0
/* 814FB1EC | DA 61 00 50 */	stfd f19, 0x50(r1)
/* 814FB1F0 | F2 61 00 58 */	psq_st f19, 0x58(r1), 0, qr0
/* 814FB1F4 | DA 41 00 40 */	stfd f18, 0x40(r1)
/* 814FB1F8 | F2 41 00 48 */	psq_st f18, 0x48(r1), 0, qr0
/* 814FB1FC | DA 21 00 30 */	stfd f17, 0x30(r1)
/* 814FB200 | F2 21 00 38 */	psq_st f17, 0x38(r1), 0, qr0
/* 814FB204 | DA 01 00 20 */	stfd f16, 0x20(r1)
/* 814FB208 | F2 01 00 28 */	psq_st f16, 0x28(r1), 0, qr0
/* 814FB20C | C2 C2 8D D8 */	lfs f22, lbl_816951D8@sda21(r0)
/* 814FB210 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814FB214 | 7C DF 33 78 */	mr r31, r6
/* 814FB218 | FE A0 B0 90 */	fmr f21, f22
/* 814FB21C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814FB220 | FE E0 B0 90 */	fmr f23, f22
/* 814FB224 | FE 80 B0 90 */	fmr f20, f22
/* 814FB228 | 7C BE 2B 78 */	mr r30, r5
/* 814FB22C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814FB230 | FE 60 B0 90 */	fmr f19, f22
/* 814FB234 | 7C 9D 23 78 */	mr r29, r4
/* 814FB238 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814FB23C | FF E0 B0 90 */	fmr f31, f22
/* 814FB240 | 7C 7C 1B 78 */	mr r28, r3
/* 814FB244 | FE 40 B0 90 */	fmr f18, f22
/* 814FB248 | FE 20 B0 90 */	fmr f17, f22
/* 814FB24C | FF C0 B0 90 */	fmr f30, f22
/* 814FB250 | FF A0 B0 90 */	fmr f29, f22
/* 814FB254 | FF 80 B0 90 */	fmr f28, f22
/* 814FB258 | FF 60 B0 90 */	fmr f27, f22
/* 814FB25C | 4B FF C3 71 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 814FB260 | 4B FF C9 FD */	bl GetOutputMode__Q44nw4r3snd6detail9AxManagerFv
/* 814FB264 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 814FB268 | 41 82 00 14 */	beq .L_814FB27C
/* 814FB26C | 40 80 00 20 */	bge .L_814FB28C
/* 814FB270 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FB274 | 41 82 00 08 */	beq .L_814FB27C
/* 814FB278 | 48 00 00 14 */	b .L_814FB28C
.L_814FB27C:
/* 814FB27C | C2 E2 8D DC */	lfs f23, lbl_816951DC@sda21(r0)
/* 814FB280 | FF E0 B8 90 */	fmr f31, f23
/* 814FB284 | FF C0 B8 90 */	fmr f30, f23
/* 814FB288 | FF 60 B8 90 */	fmr f27, f23
.L_814FB28C:
/* 814FB28C | 80 1C 01 3C */	lwz r0, 0x13c(r28)
/* 814FB290 | C3 02 8D D8 */	lfs f24, lbl_816951D8@sda21(r0)
/* 814FB294 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814FB298 | 41 82 00 10 */	beq .L_814FB2A8
/* 814FB29C | C0 1C 01 40 */	lfs f0, 0x140(r28)
/* 814FB2A0 | EF 18 00 32 */	fmuls f24, f24, f0
/* 814FB2A4 | 48 00 00 08 */	b .L_814FB2AC
.L_814FB2A8:
/* 814FB2A8 | C3 02 8D DC */	lfs f24, lbl_816951DC@sda21(r0)
.L_814FB2AC:
/* 814FB2AC | 4B FF C3 21 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 814FB2B0 | 4B FF C9 AD */	bl GetOutputMode__Q44nw4r3snd6detail9AxManagerFv
/* 814FB2B4 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 814FB2B8 | 41 82 00 98 */	beq .L_814FB350
/* 814FB2BC | 40 80 00 14 */	bge .L_814FB2D0
/* 814FB2C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FB2C4 | 41 82 00 14 */	beq .L_814FB2D8
/* 814FB2C8 | 40 80 00 3C */	bge .L_814FB304
/* 814FB2CC | 48 00 00 CC */	b .L_814FB398
.L_814FB2D0:
/* 814FB2D0 | 2C 03 00 04 */	cmpwi r3, 0x4
/* 814FB2D4 | 40 80 00 C4 */	bge .L_814FB398
.L_814FB2D8:
/* 814FB2D8 | FC 20 E8 18 */	frsp f1, f29
/* 814FB2DC | FC 00 E0 18 */	frsp f0, f28
/* 814FB2E0 | EE D6 06 32 */	fmuls f22, f22, f24
/* 814FB2E4 | EE B5 06 32 */	fmuls f21, f21, f24
/* 814FB2E8 | EE 94 06 32 */	fmuls f20, f20, f24
/* 814FB2EC | EE 73 06 32 */	fmuls f19, f19, f24
/* 814FB2F0 | EE 52 06 32 */	fmuls f18, f18, f24
/* 814FB2F4 | EE 31 06 32 */	fmuls f17, f17, f24
/* 814FB2F8 | EF A1 06 32 */	fmuls f29, f1, f24
/* 814FB2FC | EF 80 06 32 */	fmuls f28, f0, f24
/* 814FB300 | 48 00 00 98 */	b .L_814FB398
.L_814FB304:
/* 814FB304 | FC A0 B8 18 */	frsp f5, f23
/* 814FB308 | FC 80 F8 18 */	frsp f4, f31
/* 814FB30C | FC 60 F0 18 */	frsp f3, f30
/* 814FB310 | FC 40 E8 18 */	frsp f2, f29
/* 814FB314 | FC 20 E0 18 */	frsp f1, f28
/* 814FB318 | FC 00 D8 18 */	frsp f0, f27
/* 814FB31C | EE D6 06 32 */	fmuls f22, f22, f24
/* 814FB320 | EE B5 06 32 */	fmuls f21, f21, f24
/* 814FB324 | EE E5 06 32 */	fmuls f23, f5, f24
/* 814FB328 | EE 94 06 32 */	fmuls f20, f20, f24
/* 814FB32C | EE 73 06 32 */	fmuls f19, f19, f24
/* 814FB330 | EF E4 06 32 */	fmuls f31, f4, f24
/* 814FB334 | EE 52 06 32 */	fmuls f18, f18, f24
/* 814FB338 | EE 31 06 32 */	fmuls f17, f17, f24
/* 814FB33C | EF C3 06 32 */	fmuls f30, f3, f24
/* 814FB340 | EF A2 06 32 */	fmuls f29, f2, f24
/* 814FB344 | EF 81 06 32 */	fmuls f28, f1, f24
/* 814FB348 | EF 60 06 32 */	fmuls f27, f0, f24
/* 814FB34C | 48 00 00 4C */	b .L_814FB398
.L_814FB350:
/* 814FB350 | FC A0 B8 18 */	frsp f5, f23
/* 814FB354 | FC 80 E8 18 */	frsp f4, f29
/* 814FB358 | FC 60 F8 18 */	frsp f3, f31
/* 814FB35C | FC 40 E0 18 */	frsp f2, f28
/* 814FB360 | FC 20 F0 18 */	frsp f1, f30
/* 814FB364 | FC 00 D8 18 */	frsp f0, f27
/* 814FB368 | EE D6 06 32 */	fmuls f22, f22, f24
/* 814FB36C | EE B5 06 32 */	fmuls f21, f21, f24
/* 814FB370 | EE E5 06 32 */	fmuls f23, f5, f24
/* 814FB374 | EF A4 06 32 */	fmuls f29, f4, f24
/* 814FB378 | EE 94 06 32 */	fmuls f20, f20, f24
/* 814FB37C | EE 73 06 32 */	fmuls f19, f19, f24
/* 814FB380 | EF E3 06 32 */	fmuls f31, f3, f24
/* 814FB384 | EF 82 06 32 */	fmuls f28, f2, f24
/* 814FB388 | EE 52 06 32 */	fmuls f18, f18, f24
/* 814FB38C | EE 31 06 32 */	fmuls f17, f17, f24
/* 814FB390 | EF C1 06 32 */	fmuls f30, f1, f24
/* 814FB394 | EF 60 06 32 */	fmuls f27, f0, f24
.L_814FB398:
/* 814FB398 | 80 1C 01 04 */	lwz r0, 0x104(r28)
/* 814FB39C | C3 02 8D DC */	lfs f24, lbl_816951DC@sda21(r0)
/* 814FB3A0 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814FB3A4 | 40 82 00 1C */	bne .L_814FB3C0
/* 814FB3A8 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814FB3AC | 40 82 00 08 */	bne .L_814FB3B4
/* 814FB3B0 | C3 02 8D F0 */	lfs f24, lbl_816951F0@sda21(r0)
.L_814FB3B4:
/* 814FB3B4 | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 814FB3B8 | 40 82 00 08 */	bne .L_814FB3C0
/* 814FB3BC | C3 02 8D D8 */	lfs f24, lbl_816951D8@sda21(r0)
.L_814FB3C0:
/* 814FB3C0 | 4B FF C2 0D */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 814FB3C4 | 4B FF C8 99 */	bl GetOutputMode__Q44nw4r3snd6detail9AxManagerFv
/* 814FB3C8 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 814FB3CC | 41 82 00 18 */	beq .L_814FB3E4
/* 814FB3D0 | 40 80 00 08 */	bge .L_814FB3D8
/* 814FB3D4 | 48 00 00 68 */	b .L_814FB43C
.L_814FB3D8:
/* 814FB3D8 | 2C 03 00 04 */	cmpwi r3, 0x4
/* 814FB3DC | 40 80 00 60 */	bge .L_814FB43C
/* 814FB3E0 | 48 00 00 4C */	b .L_814FB42C
.L_814FB3E4:
/* 814FB3E4 | C0 5C 01 28 */	lfs f2, 0x128(r28)
/* 814FB3E8 | 1C 1E 00 1C */	mulli r0, r30, 0x1c
/* 814FB3EC | C0 1C 01 30 */	lfs f0, 0x130(r28)
/* 814FB3F0 | 7F 83 E3 78 */	mr r3, r28
/* 814FB3F4 | C0 3C 01 2C */	lfs f1, 0x12c(r28)
/* 814FB3F8 | 38 81 00 0C */	addi r4, r1, 0xc
/* 814FB3FC | EC 42 00 2A */	fadds f2, f2, f0
/* 814FB400 | C0 1C 01 34 */	lfs f0, 0x134(r28)
/* 814FB404 | 7C DC 02 14 */	add r6, r28, r0
/* 814FB408 | C0 66 00 9C */	lfs f3, 0x9c(r6)
/* 814FB40C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814FB410 | EC 98 10 2A */	fadds f4, f24, f2
/* 814FB414 | EC 41 00 2A */	fadds f2, f1, f0
/* 814FB418 | C0 06 00 A0 */	lfs f0, 0xa0(r6)
/* 814FB41C | EC 24 18 2A */	fadds f1, f4, f3
/* 814FB420 | EC 42 00 2A */	fadds f2, f2, f0
/* 814FB424 | 4B FF FB BD */	bl TransformDpl2Pan__Q44nw4r3snd6detail7AxVoiceFPfPfff
/* 814FB428 | 48 00 00 50 */	b .L_814FB478
.L_814FB42C:
/* 814FB42C | C0 02 8D DC */	lfs f0, lbl_816951DC@sda21(r0)
/* 814FB430 | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 814FB434 | D0 01 00 08 */	stfs f0, 0x8(r1)
/* 814FB438 | 48 00 00 40 */	b .L_814FB478
.L_814FB43C:
/* 814FB43C | C0 3C 01 28 */	lfs f1, 0x128(r28)
/* 814FB440 | 1C 1E 00 1C */	mulli r0, r30, 0x1c
/* 814FB444 | C0 1C 01 30 */	lfs f0, 0x130(r28)
/* 814FB448 | EC 21 00 2A */	fadds f1, f1, f0
/* 814FB44C | 7C 7C 02 14 */	add r3, r28, r0
/* 814FB450 | C0 03 00 9C */	lfs f0, 0x9c(r3)
/* 814FB454 | EC 38 08 2A */	fadds f1, f24, f1
/* 814FB458 | EC 01 00 2A */	fadds f0, f1, f0
/* 814FB45C | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 814FB460 | C0 5C 01 2C */	lfs f2, 0x12c(r28)
/* 814FB464 | C0 3C 01 34 */	lfs f1, 0x134(r28)
/* 814FB468 | C0 03 00 A0 */	lfs f0, 0xa0(r3)
/* 814FB46C | EC 22 08 2A */	fadds f1, f2, f1
/* 814FB470 | EC 01 00 2A */	fadds f0, f1, f0
/* 814FB474 | D0 01 00 08 */	stfs f0, 0x8(r1)
.L_814FB478:
/* 814FB478 | C0 21 00 0C */	lfs f1, 0xc(r1)
/* 814FB47C | 48 01 3E F9 */	bl CalcPanRatio__Q44nw4r3snd6detail4UtilFf
/* 814FB480 | C0 01 00 0C */	lfs f0, 0xc(r1)
/* 814FB484 | FF 00 08 90 */	fmr f24, f1
/* 814FB488 | FC 20 00 50 */	fneg f1, f0
/* 814FB48C | 48 01 3E E9 */	bl CalcPanRatio__Q44nw4r3snd6detail4UtilFf
/* 814FB490 | FF 40 08 90 */	fmr f26, f1
/* 814FB494 | C0 22 8E 1C */	lfs f1, lbl_8169521C@sda21(r0)
/* 814FB498 | 48 01 3E 85 */	bl CalcVolumeRatio__Q44nw4r3snd6detail4UtilFf
/* 814FB49C | FF 20 08 90 */	fmr f25, f1
/* 814FB4A0 | 4B FF C1 2D */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 814FB4A4 | 4B FF C7 B9 */	bl GetOutputMode__Q44nw4r3snd6detail9AxManagerFv
/* 814FB4A8 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 814FB4AC | 41 82 00 98 */	beq .L_814FB544
/* 814FB4B0 | 40 80 00 14 */	bge .L_814FB4C4
/* 814FB4B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FB4B8 | 41 82 00 14 */	beq .L_814FB4CC
/* 814FB4BC | 40 80 00 3C */	bge .L_814FB4F8
/* 814FB4C0 | 48 00 00 CC */	b .L_814FB58C
.L_814FB4C4:
/* 814FB4C4 | 2C 03 00 04 */	cmpwi r3, 0x4
/* 814FB4C8 | 40 80 00 C4 */	bge .L_814FB58C
.L_814FB4CC:
/* 814FB4CC | FC 20 E8 18 */	frsp f1, f29
/* 814FB4D0 | FC 00 E0 18 */	frsp f0, f28
/* 814FB4D4 | EE D6 06 32 */	fmuls f22, f22, f24
/* 814FB4D8 | EE B5 06 B2 */	fmuls f21, f21, f26
/* 814FB4DC | EE 94 06 32 */	fmuls f20, f20, f24
/* 814FB4E0 | EE 73 06 B2 */	fmuls f19, f19, f26
/* 814FB4E4 | EE 52 06 32 */	fmuls f18, f18, f24
/* 814FB4E8 | EE 31 06 B2 */	fmuls f17, f17, f26
/* 814FB4EC | EF A1 06 32 */	fmuls f29, f1, f24
/* 814FB4F0 | EF 80 06 B2 */	fmuls f28, f0, f26
/* 814FB4F4 | 48 00 00 98 */	b .L_814FB58C
.L_814FB4F8:
/* 814FB4F8 | FC A0 B8 18 */	frsp f5, f23
/* 814FB4FC | FC 80 F8 18 */	frsp f4, f31
/* 814FB500 | FC 60 F0 18 */	frsp f3, f30
/* 814FB504 | FC 40 E8 18 */	frsp f2, f29
/* 814FB508 | FC 20 E0 18 */	frsp f1, f28
/* 814FB50C | FC 00 D8 18 */	frsp f0, f27
/* 814FB510 | EE D6 06 32 */	fmuls f22, f22, f24
/* 814FB514 | EE B5 06 B2 */	fmuls f21, f21, f26
/* 814FB518 | EE E5 06 72 */	fmuls f23, f5, f25
/* 814FB51C | EE 94 06 32 */	fmuls f20, f20, f24
/* 814FB520 | EE 73 06 B2 */	fmuls f19, f19, f26
/* 814FB524 | EF E4 06 72 */	fmuls f31, f4, f25
/* 814FB528 | EE 52 06 32 */	fmuls f18, f18, f24
/* 814FB52C | EE 31 06 B2 */	fmuls f17, f17, f26
/* 814FB530 | EF C3 06 72 */	fmuls f30, f3, f25
/* 814FB534 | EF A2 06 32 */	fmuls f29, f2, f24
/* 814FB538 | EF 81 06 B2 */	fmuls f28, f1, f26
/* 814FB53C | EF 60 06 72 */	fmuls f27, f0, f25
/* 814FB540 | 48 00 00 4C */	b .L_814FB58C
.L_814FB544:
/* 814FB544 | FC A0 B8 18 */	frsp f5, f23
/* 814FB548 | FC 80 E8 18 */	frsp f4, f29
/* 814FB54C | FC 60 F8 18 */	frsp f3, f31
/* 814FB550 | FC 40 E0 18 */	frsp f2, f28
/* 814FB554 | FC 20 F0 18 */	frsp f1, f30
/* 814FB558 | FC 00 D8 18 */	frsp f0, f27
/* 814FB55C | EE D6 06 32 */	fmuls f22, f22, f24
/* 814FB560 | EE B5 06 B2 */	fmuls f21, f21, f26
/* 814FB564 | EE E5 06 32 */	fmuls f23, f5, f24
/* 814FB568 | EF A4 06 B2 */	fmuls f29, f4, f26
/* 814FB56C | EE 94 06 32 */	fmuls f20, f20, f24
/* 814FB570 | EE 73 06 B2 */	fmuls f19, f19, f26
/* 814FB574 | EF E3 06 32 */	fmuls f31, f3, f24
/* 814FB578 | EF 82 06 B2 */	fmuls f28, f2, f26
/* 814FB57C | EE 52 06 32 */	fmuls f18, f18, f24
/* 814FB580 | EE 31 06 B2 */	fmuls f17, f17, f26
/* 814FB584 | EF C1 06 32 */	fmuls f30, f1, f24
/* 814FB588 | EF 60 06 B2 */	fmuls f27, f0, f26
.L_814FB58C:
/* 814FB58C | C0 21 00 08 */	lfs f1, 0x8(r1)
/* 814FB590 | 48 01 3E 4D */	bl CalcSurroundPanRatio__Q44nw4r3snd6detail4UtilFf
/* 814FB594 | C0 42 8D F4 */	lfs f2, lbl_816951F4@sda21(r0)
/* 814FB598 | FF 20 08 90 */	fmr f25, f1
/* 814FB59C | C0 01 00 08 */	lfs f0, 0x8(r1)
/* 814FB5A0 | EC 22 00 28 */	fsubs f1, f2, f0
/* 814FB5A4 | 48 01 3E 39 */	bl CalcSurroundPanRatio__Q44nw4r3snd6detail4UtilFf
/* 814FB5A8 | FF 40 08 90 */	fmr f26, f1
/* 814FB5AC | 4B FF C0 21 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 814FB5B0 | 4B FF C6 AD */	bl GetOutputMode__Q44nw4r3snd6detail9AxManagerFv
/* 814FB5B4 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 814FB5B8 | 41 82 00 68 */	beq .L_814FB620
/* 814FB5BC | 40 80 00 AC */	bge .L_814FB668
/* 814FB5C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FB5C4 | 41 82 00 A4 */	beq .L_814FB668
/* 814FB5C8 | 40 80 00 0C */	bge .L_814FB5D4
/* 814FB5CC | 48 00 00 9C */	b .L_814FB668
/* 814FB5D0 | 48 00 00 98 */	b .L_814FB668
.L_814FB5D4:
/* 814FB5D4 | FC A0 B8 18 */	frsp f5, f23
/* 814FB5D8 | FC 80 F8 18 */	frsp f4, f31
/* 814FB5DC | FC 60 F0 18 */	frsp f3, f30
/* 814FB5E0 | FC 40 E8 18 */	frsp f2, f29
/* 814FB5E4 | FC 20 E0 18 */	frsp f1, f28
/* 814FB5E8 | FC 00 D8 18 */	frsp f0, f27
/* 814FB5EC | EE D6 06 72 */	fmuls f22, f22, f25
/* 814FB5F0 | EE B5 06 72 */	fmuls f21, f21, f25
/* 814FB5F4 | EE E5 06 B2 */	fmuls f23, f5, f26
/* 814FB5F8 | EE 94 06 72 */	fmuls f20, f20, f25
/* 814FB5FC | EE 73 06 72 */	fmuls f19, f19, f25
/* 814FB600 | EF E4 06 B2 */	fmuls f31, f4, f26
/* 814FB604 | EE 52 06 72 */	fmuls f18, f18, f25
/* 814FB608 | EE 31 06 72 */	fmuls f17, f17, f25
/* 814FB60C | EF C3 06 B2 */	fmuls f30, f3, f26
/* 814FB610 | EF A2 06 72 */	fmuls f29, f2, f25
/* 814FB614 | EF 81 06 72 */	fmuls f28, f1, f25
/* 814FB618 | EF 60 06 B2 */	fmuls f27, f0, f26
/* 814FB61C | 48 00 00 4C */	b .L_814FB668
.L_814FB620:
/* 814FB620 | FC A0 B8 18 */	frsp f5, f23
/* 814FB624 | FC 80 E8 18 */	frsp f4, f29
/* 814FB628 | FC 60 F8 18 */	frsp f3, f31
/* 814FB62C | FC 40 E0 18 */	frsp f2, f28
/* 814FB630 | FC 20 F0 18 */	frsp f1, f30
/* 814FB634 | FC 00 D8 18 */	frsp f0, f27
/* 814FB638 | EE D6 06 72 */	fmuls f22, f22, f25
/* 814FB63C | EE B5 06 72 */	fmuls f21, f21, f25
/* 814FB640 | EE E5 06 B2 */	fmuls f23, f5, f26
/* 814FB644 | EF A4 06 B2 */	fmuls f29, f4, f26
/* 814FB648 | EE 94 06 72 */	fmuls f20, f20, f25
/* 814FB64C | EE 73 06 72 */	fmuls f19, f19, f25
/* 814FB650 | EF E3 06 B2 */	fmuls f31, f3, f26
/* 814FB654 | EF 82 06 B2 */	fmuls f28, f2, f26
/* 814FB658 | EE 52 06 72 */	fmuls f18, f18, f25
/* 814FB65C | EE 31 06 72 */	fmuls f17, f17, f25
/* 814FB660 | EF C1 06 B2 */	fmuls f30, f1, f26
/* 814FB664 | EF 60 06 B2 */	fmuls f27, f0, f26
.L_814FB668:
/* 814FB668 | 1C 1E 00 1C */	mulli r0, r30, 0x1c
/* 814FB66C | C0 3C 01 48 */	lfs f1, 0x148(r28)
/* 814FB670 | C3 02 8D D8 */	lfs f24, lbl_816951D8@sda21(r0)
/* 814FB674 | C3 3C 01 44 */	lfs f25, 0x144(r28)
/* 814FB678 | 7C 7C 02 14 */	add r3, r28, r0
/* 814FB67C | C0 03 00 A4 */	lfs f0, 0xa4(r3)
/* 814FB680 | EC 01 00 2A */	fadds f0, f1, f0
/* 814FB684 | FC 00 C0 40 */	fcmpo cr0, f0, f24
/* 814FB688 | 40 81 00 08 */	ble .L_814FB690
/* 814FB68C | 48 00 00 18 */	b .L_814FB6A4
.L_814FB690:
/* 814FB690 | C3 02 8D DC */	lfs f24, lbl_816951DC@sda21(r0)
/* 814FB694 | FC 00 C0 40 */	fcmpo cr0, f0, f24
/* 814FB698 | 40 80 00 08 */	bge .L_814FB6A0
/* 814FB69C | 48 00 00 08 */	b .L_814FB6A4
.L_814FB6A0:
/* 814FB6A0 | FF 00 00 90 */	fmr f24, f0
.L_814FB6A4:
/* 814FB6A4 | C3 5C 01 4C */	lfs f26, 0x14c(r28)
/* 814FB6A8 | C2 1C 01 50 */	lfs f16, 0x150(r28)
/* 814FB6AC | 4B FF BF 21 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 814FB6B0 | 4B FF C5 AD */	bl GetOutputMode__Q44nw4r3snd6detail9AxManagerFv
/* 814FB6B4 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 814FB6B8 | 41 82 00 98 */	beq .L_814FB750
/* 814FB6BC | 40 80 00 14 */	bge .L_814FB6D0
/* 814FB6C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FB6C4 | 41 82 00 14 */	beq .L_814FB6D8
/* 814FB6C8 | 40 80 00 3C */	bge .L_814FB704
/* 814FB6CC | 48 00 00 CC */	b .L_814FB798
.L_814FB6D0:
/* 814FB6D0 | 2C 03 00 04 */	cmpwi r3, 0x4
/* 814FB6D4 | 40 80 00 C4 */	bge .L_814FB798
.L_814FB6D8:
/* 814FB6D8 | FC 20 E8 18 */	frsp f1, f29
/* 814FB6DC | FC 00 E0 18 */	frsp f0, f28
/* 814FB6E0 | EE D6 06 72 */	fmuls f22, f22, f25
/* 814FB6E4 | EE B5 06 72 */	fmuls f21, f21, f25
/* 814FB6E8 | EE 94 06 32 */	fmuls f20, f20, f24
/* 814FB6EC | EE 73 06 32 */	fmuls f19, f19, f24
/* 814FB6F0 | EE 52 06 B2 */	fmuls f18, f18, f26
/* 814FB6F4 | EE 31 06 B2 */	fmuls f17, f17, f26
/* 814FB6F8 | EF A1 04 32 */	fmuls f29, f1, f16
/* 814FB6FC | EF 80 04 32 */	fmuls f28, f0, f16
/* 814FB700 | 48 00 00 98 */	b .L_814FB798
.L_814FB704:
/* 814FB704 | FC A0 B8 18 */	frsp f5, f23
/* 814FB708 | FC 80 F8 18 */	frsp f4, f31
/* 814FB70C | FC 60 F0 18 */	frsp f3, f30
/* 814FB710 | FC 40 E8 18 */	frsp f2, f29
/* 814FB714 | FC 20 E0 18 */	frsp f1, f28
/* 814FB718 | FC 00 D8 18 */	frsp f0, f27
/* 814FB71C | EE D6 06 72 */	fmuls f22, f22, f25
/* 814FB720 | EE B5 06 72 */	fmuls f21, f21, f25
/* 814FB724 | EE E5 06 72 */	fmuls f23, f5, f25
/* 814FB728 | EE 94 06 32 */	fmuls f20, f20, f24
/* 814FB72C | EE 73 06 32 */	fmuls f19, f19, f24
/* 814FB730 | EF E4 06 32 */	fmuls f31, f4, f24
/* 814FB734 | EE 52 06 B2 */	fmuls f18, f18, f26
/* 814FB738 | EE 31 06 B2 */	fmuls f17, f17, f26
/* 814FB73C | EF C3 06 B2 */	fmuls f30, f3, f26
/* 814FB740 | EF A2 04 32 */	fmuls f29, f2, f16
/* 814FB744 | EF 81 04 32 */	fmuls f28, f1, f16
/* 814FB748 | EF 60 04 32 */	fmuls f27, f0, f16
/* 814FB74C | 48 00 00 4C */	b .L_814FB798
.L_814FB750:
/* 814FB750 | FC A0 B8 18 */	frsp f5, f23
/* 814FB754 | FC 80 E8 18 */	frsp f4, f29
/* 814FB758 | FC 60 F8 18 */	frsp f3, f31
/* 814FB75C | FC 40 E0 18 */	frsp f2, f28
/* 814FB760 | FC 20 F0 18 */	frsp f1, f30
/* 814FB764 | FC 00 D8 18 */	frsp f0, f27
/* 814FB768 | EE D6 06 72 */	fmuls f22, f22, f25
/* 814FB76C | EE B5 06 72 */	fmuls f21, f21, f25
/* 814FB770 | EE E5 06 72 */	fmuls f23, f5, f25
/* 814FB774 | EF A4 06 72 */	fmuls f29, f4, f25
/* 814FB778 | EE 94 06 32 */	fmuls f20, f20, f24
/* 814FB77C | EE 73 06 32 */	fmuls f19, f19, f24
/* 814FB780 | EF E3 06 32 */	fmuls f31, f3, f24
/* 814FB784 | EF 82 06 32 */	fmuls f28, f2, f24
/* 814FB788 | EE 52 06 B2 */	fmuls f18, f18, f26
/* 814FB78C | EE 31 06 B2 */	fmuls f17, f17, f26
/* 814FB790 | EF C1 06 B2 */	fmuls f30, f1, f26
/* 814FB794 | EF 60 06 B2 */	fmuls f27, f0, f26
.L_814FB798:
/* 814FB798 | C0 02 8E 20 */	lfs f0, lbl_81695220@sda21(r0)
/* 814FB79C | EC 20 05 B2 */	fmuls f1, f0, f22
/* 814FB7A0 | 48 0F DB F9 */	bl __cvt_fp2unsigned
/* 814FB7A4 | 28 03 FF FF */	cmplwi r3, 0xffff
/* 814FB7A8 | 40 80 00 14 */	bge .L_814FB7BC
/* 814FB7AC | C0 02 8E 20 */	lfs f0, lbl_81695220@sda21(r0)
/* 814FB7B0 | EC 20 05 B2 */	fmuls f1, f0, f22
/* 814FB7B4 | 48 0F DB E5 */	bl __cvt_fp2unsigned
/* 814FB7B8 | 48 00 00 0C */	b .L_814FB7C4
.L_814FB7BC:
/* 814FB7BC | 3C 60 00 01 */	lis r3, 0x1
/* 814FB7C0 | 38 63 FF FF */	subi r3, r3, 0x1
.L_814FB7C4:
/* 814FB7C4 | C0 02 8E 20 */	lfs f0, lbl_81695220@sda21(r0)
/* 814FB7C8 | B0 7F 00 00 */	sth r3, 0x0(r31)
/* 814FB7CC | EC 20 05 72 */	fmuls f1, f0, f21
/* 814FB7D0 | 48 0F DB C9 */	bl __cvt_fp2unsigned
/* 814FB7D4 | 28 03 FF FF */	cmplwi r3, 0xffff
/* 814FB7D8 | 40 80 00 14 */	bge .L_814FB7EC
/* 814FB7DC | C0 02 8E 20 */	lfs f0, lbl_81695220@sda21(r0)
/* 814FB7E0 | EC 20 05 72 */	fmuls f1, f0, f21
/* 814FB7E4 | 48 0F DB B5 */	bl __cvt_fp2unsigned
/* 814FB7E8 | 48 00 00 0C */	b .L_814FB7F4
.L_814FB7EC:
/* 814FB7EC | 3C 60 00 01 */	lis r3, 0x1
/* 814FB7F0 | 38 63 FF FF */	subi r3, r3, 0x1
.L_814FB7F4:
/* 814FB7F4 | FC 00 B8 18 */	frsp f0, f23
/* 814FB7F8 | C0 22 8E 20 */	lfs f1, lbl_81695220@sda21(r0)
/* 814FB7FC | B0 7F 00 04 */	sth r3, 0x4(r31)
/* 814FB800 | EC 21 00 32 */	fmuls f1, f1, f0
/* 814FB804 | 48 0F DB 95 */	bl __cvt_fp2unsigned
/* 814FB808 | 28 03 FF FF */	cmplwi r3, 0xffff
/* 814FB80C | 3C 80 00 01 */	lis r4, 0x1
/* 814FB810 | 38 04 FF FF */	subi r0, r4, 0x1
/* 814FB814 | 40 80 00 08 */	bge .L_814FB81C
/* 814FB818 | 7C 60 1B 78 */	mr r0, r3
.L_814FB81C:
/* 814FB81C | C0 02 8E 20 */	lfs f0, lbl_81695220@sda21(r0)
/* 814FB820 | B0 1F 00 20 */	sth r0, 0x20(r31)
/* 814FB824 | EC 20 05 32 */	fmuls f1, f0, f20
/* 814FB828 | 48 0F DB 71 */	bl __cvt_fp2unsigned
/* 814FB82C | 28 03 FF FF */	cmplwi r3, 0xffff
/* 814FB830 | 40 80 00 14 */	bge .L_814FB844
/* 814FB834 | C0 02 8E 20 */	lfs f0, lbl_81695220@sda21(r0)
/* 814FB838 | EC 20 05 32 */	fmuls f1, f0, f20
/* 814FB83C | 48 0F DB 5D */	bl __cvt_fp2unsigned
/* 814FB840 | 48 00 00 0C */	b .L_814FB84C
.L_814FB844:
/* 814FB844 | 3C 60 00 01 */	lis r3, 0x1
/* 814FB848 | 38 63 FF FF */	subi r3, r3, 0x1
.L_814FB84C:
/* 814FB84C | C0 02 8E 20 */	lfs f0, lbl_81695220@sda21(r0)
/* 814FB850 | B0 7F 00 08 */	sth r3, 0x8(r31)
/* 814FB854 | EC 20 04 F2 */	fmuls f1, f0, f19
/* 814FB858 | 48 0F DB 41 */	bl __cvt_fp2unsigned
/* 814FB85C | 28 03 FF FF */	cmplwi r3, 0xffff
/* 814FB860 | 40 80 00 14 */	bge .L_814FB874
/* 814FB864 | C0 02 8E 20 */	lfs f0, lbl_81695220@sda21(r0)
/* 814FB868 | EC 20 04 F2 */	fmuls f1, f0, f19
/* 814FB86C | 48 0F DB 2D */	bl __cvt_fp2unsigned
/* 814FB870 | 48 00 00 0C */	b .L_814FB87C
.L_814FB874:
/* 814FB874 | 3C 60 00 01 */	lis r3, 0x1
/* 814FB878 | 38 63 FF FF */	subi r3, r3, 0x1
.L_814FB87C:
/* 814FB87C | FC 00 F8 18 */	frsp f0, f31
/* 814FB880 | C0 22 8E 20 */	lfs f1, lbl_81695220@sda21(r0)
/* 814FB884 | B0 7F 00 0C */	sth r3, 0xc(r31)
/* 814FB888 | EC 21 00 32 */	fmuls f1, f1, f0
/* 814FB88C | 48 0F DB 0D */	bl __cvt_fp2unsigned
/* 814FB890 | 28 03 FF FF */	cmplwi r3, 0xffff
/* 814FB894 | 3C 80 00 01 */	lis r4, 0x1
/* 814FB898 | 38 04 FF FF */	subi r0, r4, 0x1
/* 814FB89C | 40 80 00 08 */	bge .L_814FB8A4
/* 814FB8A0 | 7C 60 1B 78 */	mr r0, r3
.L_814FB8A4:
/* 814FB8A4 | C0 02 8E 20 */	lfs f0, lbl_81695220@sda21(r0)
/* 814FB8A8 | B0 1F 00 24 */	sth r0, 0x24(r31)
/* 814FB8AC | EC 20 04 B2 */	fmuls f1, f0, f18
/* 814FB8B0 | 48 0F DA E9 */	bl __cvt_fp2unsigned
/* 814FB8B4 | 28 03 FF FF */	cmplwi r3, 0xffff
/* 814FB8B8 | 40 80 00 14 */	bge .L_814FB8CC
/* 814FB8BC | C0 02 8E 20 */	lfs f0, lbl_81695220@sda21(r0)
/* 814FB8C0 | EC 20 04 B2 */	fmuls f1, f0, f18
/* 814FB8C4 | 48 0F DA D5 */	bl __cvt_fp2unsigned
/* 814FB8C8 | 48 00 00 0C */	b .L_814FB8D4
.L_814FB8CC:
/* 814FB8CC | 3C 60 00 01 */	lis r3, 0x1
/* 814FB8D0 | 38 63 FF FF */	subi r3, r3, 0x1
.L_814FB8D4:
/* 814FB8D4 | C0 02 8E 20 */	lfs f0, lbl_81695220@sda21(r0)
/* 814FB8D8 | B0 7F 00 10 */	sth r3, 0x10(r31)
/* 814FB8DC | EC 20 04 72 */	fmuls f1, f0, f17
/* 814FB8E0 | 48 0F DA B9 */	bl __cvt_fp2unsigned
/* 814FB8E4 | 28 03 FF FF */	cmplwi r3, 0xffff
/* 814FB8E8 | 40 80 00 14 */	bge .L_814FB8FC
/* 814FB8EC | C0 02 8E 20 */	lfs f0, lbl_81695220@sda21(r0)
/* 814FB8F0 | EC 20 04 72 */	fmuls f1, f0, f17
/* 814FB8F4 | 48 0F DA A5 */	bl __cvt_fp2unsigned
/* 814FB8F8 | 48 00 00 0C */	b .L_814FB904
.L_814FB8FC:
/* 814FB8FC | 3C 60 00 01 */	lis r3, 0x1
/* 814FB900 | 38 63 FF FF */	subi r3, r3, 0x1
.L_814FB904:
/* 814FB904 | FC 00 F0 18 */	frsp f0, f30
/* 814FB908 | C0 22 8E 20 */	lfs f1, lbl_81695220@sda21(r0)
/* 814FB90C | B0 7F 00 14 */	sth r3, 0x14(r31)
/* 814FB910 | EC 21 00 32 */	fmuls f1, f1, f0
/* 814FB914 | 48 0F DA 85 */	bl __cvt_fp2unsigned
/* 814FB918 | 28 03 FF FF */	cmplwi r3, 0xffff
/* 814FB91C | 3C 80 00 01 */	lis r4, 0x1
/* 814FB920 | 38 04 FF FF */	subi r0, r4, 0x1
/* 814FB924 | 40 80 00 08 */	bge .L_814FB92C
/* 814FB928 | 7C 60 1B 78 */	mr r0, r3
.L_814FB92C:
/* 814FB92C | FC 00 E8 18 */	frsp f0, f29
/* 814FB930 | C0 22 8E 20 */	lfs f1, lbl_81695220@sda21(r0)
/* 814FB934 | B0 1F 00 28 */	sth r0, 0x28(r31)
/* 814FB938 | EC 21 00 32 */	fmuls f1, f1, f0
/* 814FB93C | 48 0F DA 5D */	bl __cvt_fp2unsigned
/* 814FB940 | 28 03 FF FF */	cmplwi r3, 0xffff
/* 814FB944 | 3C 80 00 01 */	lis r4, 0x1
/* 814FB948 | 38 04 FF FF */	subi r0, r4, 0x1
/* 814FB94C | 40 80 00 08 */	bge .L_814FB954
/* 814FB950 | 7C 60 1B 78 */	mr r0, r3
.L_814FB954:
/* 814FB954 | FC 00 E0 18 */	frsp f0, f28
/* 814FB958 | C0 22 8E 20 */	lfs f1, lbl_81695220@sda21(r0)
/* 814FB95C | B0 1F 00 18 */	sth r0, 0x18(r31)
/* 814FB960 | EC 21 00 32 */	fmuls f1, f1, f0
/* 814FB964 | 48 0F DA 35 */	bl __cvt_fp2unsigned
/* 814FB968 | 28 03 FF FF */	cmplwi r3, 0xffff
/* 814FB96C | 3C 80 00 01 */	lis r4, 0x1
/* 814FB970 | 38 04 FF FF */	subi r0, r4, 0x1
/* 814FB974 | 40 80 00 08 */	bge .L_814FB97C
/* 814FB978 | 7C 60 1B 78 */	mr r0, r3
.L_814FB97C:
/* 814FB97C | FC 00 D8 18 */	frsp f0, f27
/* 814FB980 | C0 22 8E 20 */	lfs f1, lbl_81695220@sda21(r0)
/* 814FB984 | B0 1F 00 1C */	sth r0, 0x1c(r31)
/* 814FB988 | EC 21 00 32 */	fmuls f1, f1, f0
/* 814FB98C | 48 0F DA 0D */	bl __cvt_fp2unsigned
/* 814FB990 | 28 03 FF FF */	cmplwi r3, 0xffff
/* 814FB994 | 3C 80 00 01 */	lis r4, 0x1
/* 814FB998 | 38 84 FF FF */	subi r4, r4, 0x1
/* 814FB99C | 40 80 00 08 */	bge .L_814FB9A4
/* 814FB9A0 | 7C 64 1B 78 */	mr r4, r3
.L_814FB9A4:
/* 814FB9A4 | 38 00 00 00 */	li r0, 0x0
/* 814FB9A8 | B0 9F 00 2C */	sth r4, 0x2c(r31)
/* 814FB9AC | B0 1F 00 02 */	sth r0, 0x2(r31)
/* 814FB9B0 | B0 1F 00 06 */	sth r0, 0x6(r31)
/* 814FB9B4 | B0 1F 00 22 */	sth r0, 0x22(r31)
/* 814FB9B8 | B0 1F 00 0A */	sth r0, 0xa(r31)
/* 814FB9BC | B0 1F 00 0E */	sth r0, 0xe(r31)
/* 814FB9C0 | B0 1F 00 26 */	sth r0, 0x26(r31)
/* 814FB9C4 | B0 1F 00 12 */	sth r0, 0x12(r31)
/* 814FB9C8 | B0 1F 00 16 */	sth r0, 0x16(r31)
/* 814FB9CC | B0 1F 00 2A */	sth r0, 0x2a(r31)
/* 814FB9D0 | B0 1F 00 1A */	sth r0, 0x1a(r31)
/* 814FB9D4 | B0 1F 00 1E */	sth r0, 0x1e(r31)
/* 814FB9D8 | B0 1F 00 2E */	sth r0, 0x2e(r31)
/* 814FB9DC | E3 E1 01 18 */	psq_l f31, 0x118(r1), 0, qr0
/* 814FB9E0 | CB E1 01 10 */	lfd f31, 0x110(r1)
/* 814FB9E4 | E3 C1 01 08 */	psq_l f30, 0x108(r1), 0, qr0
/* 814FB9E8 | CB C1 01 00 */	lfd f30, 0x100(r1)
/* 814FB9EC | E3 A1 00 F8 */	psq_l f29, 0xf8(r1), 0, qr0
/* 814FB9F0 | CB A1 00 F0 */	lfd f29, 0xf0(r1)
/* 814FB9F4 | E3 81 00 E8 */	psq_l f28, 0xe8(r1), 0, qr0
/* 814FB9F8 | CB 81 00 E0 */	lfd f28, 0xe0(r1)
/* 814FB9FC | E3 61 00 D8 */	psq_l f27, 0xd8(r1), 0, qr0
/* 814FBA00 | CB 61 00 D0 */	lfd f27, 0xd0(r1)
/* 814FBA04 | E3 41 00 C8 */	psq_l f26, 0xc8(r1), 0, qr0
/* 814FBA08 | CB 41 00 C0 */	lfd f26, 0xc0(r1)
/* 814FBA0C | E3 21 00 B8 */	psq_l f25, 0xb8(r1), 0, qr0
/* 814FBA10 | CB 21 00 B0 */	lfd f25, 0xb0(r1)
/* 814FBA14 | E3 01 00 A8 */	psq_l f24, 0xa8(r1), 0, qr0
/* 814FBA18 | CB 01 00 A0 */	lfd f24, 0xa0(r1)
/* 814FBA1C | E2 E1 00 98 */	psq_l f23, 0x98(r1), 0, qr0
/* 814FBA20 | CA E1 00 90 */	lfd f23, 0x90(r1)
/* 814FBA24 | E2 C1 00 88 */	psq_l f22, 0x88(r1), 0, qr0
/* 814FBA28 | CA C1 00 80 */	lfd f22, 0x80(r1)
/* 814FBA2C | E2 A1 00 78 */	psq_l f21, 0x78(r1), 0, qr0
/* 814FBA30 | CA A1 00 70 */	lfd f21, 0x70(r1)
/* 814FBA34 | E2 81 00 68 */	psq_l f20, 0x68(r1), 0, qr0
/* 814FBA38 | CA 81 00 60 */	lfd f20, 0x60(r1)
/* 814FBA3C | E2 61 00 58 */	psq_l f19, 0x58(r1), 0, qr0
/* 814FBA40 | CA 61 00 50 */	lfd f19, 0x50(r1)
/* 814FBA44 | E2 41 00 48 */	psq_l f18, 0x48(r1), 0, qr0
/* 814FBA48 | CA 41 00 40 */	lfd f18, 0x40(r1)
/* 814FBA4C | E2 21 00 38 */	psq_l f17, 0x38(r1), 0, qr0
/* 814FBA50 | CA 21 00 30 */	lfd f17, 0x30(r1)
/* 814FBA54 | E2 01 00 28 */	psq_l f16, 0x28(r1), 0, qr0
/* 814FBA58 | CA 01 00 20 */	lfd f16, 0x20(r1)
/* 814FBA5C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814FBA60 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814FBA64 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814FBA68 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814FBA6C | 80 01 01 24 */	lwz r0, 0x124(r1)
/* 814FBA70 | 7C 08 03 A6 */	mtlr r0
/* 814FBA74 | 38 21 01 20 */	addi r1, r1, 0x120
/* 814FBA78 | 4E 80 00 20 */	blr
.endfn CalcAXPBMIX__Q44nw4r3snd6detail7AxVoiceFiiP8_AXPBMIX

# .text:0x317C | 0x814FBA7C | size: 0x20C
# nw4r::snd::detail::AxVoice::CalcAXPBRMTMIX(int, int, _AXPBRMTMIX*)
.fn CalcAXPBRMTMIX__Q44nw4r3snd6detail7AxVoiceFiiP11_AXPBRMTMIX, global
/* 814FBA7C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814FBA80 | 7C 08 02 A6 */	mflr r0
/* 814FBA84 | 38 80 00 02 */	li r4, 0x2
/* 814FBA88 | 7C 68 1B 78 */	mr r8, r3
/* 814FBA8C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814FBA90 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814FBA94 | C0 42 8D D8 */	lfs f2, lbl_816951D8@sda21(r0)
/* 814FBA98 | 39 20 00 00 */	li r9, 0x0
/* 814FBA9C | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 814FBAA0 | 7C DF 33 78 */	mr r31, r6
/* 814FBAA4 | 38 C1 00 18 */	addi r6, r1, 0x18
/* 814FBAA8 | 7C 89 03 A6 */	mtctr r4
.L_814FBAAC:
/* 814FBAAC | 80 A3 01 3C */	lwz r5, 0x13c(r3)
/* 814FBAB0 | 7C 80 48 30 */	slw r0, r4, r9
/* 814FBAB4 | D0 46 00 00 */	stfs f2, 0x0(r6)
/* 814FBAB8 | 7C A0 00 39 */	and. r0, r5, r0
/* 814FBABC | D0 47 00 00 */	stfs f2, 0x0(r7)
/* 814FBAC0 | 41 82 00 10 */	beq .L_814FBAD0
/* 814FBAC4 | C0 08 01 54 */	lfs f0, 0x154(r8)
/* 814FBAC8 | EC 62 00 32 */	fmuls f3, f2, f0
/* 814FBACC | 48 00 00 08 */	b .L_814FBAD4
.L_814FBAD0:
/* 814FBAD0 | C0 62 8D DC */	lfs f3, lbl_816951DC@sda21(r0)
.L_814FBAD4:
/* 814FBAD4 | C0 26 00 00 */	lfs f1, 0x0(r6)
/* 814FBAD8 | 39 29 00 01 */	addi r9, r9, 0x1
/* 814FBADC | C0 07 00 00 */	lfs f0, 0x0(r7)
/* 814FBAE0 | 7C 80 48 30 */	slw r0, r4, r9
/* 814FBAE4 | EC 21 00 F2 */	fmuls f1, f1, f3
/* 814FBAE8 | 80 A3 01 3C */	lwz r5, 0x13c(r3)
/* 814FBAEC | EC 00 00 F2 */	fmuls f0, f0, f3
/* 814FBAF0 | C0 88 01 64 */	lfs f4, 0x164(r8)
/* 814FBAF4 | C0 68 01 74 */	lfs f3, 0x174(r8)
/* 814FBAF8 | 7C A0 00 39 */	and. r0, r5, r0
/* 814FBAFC | D0 26 00 00 */	stfs f1, 0x0(r6)
/* 814FBB00 | D0 07 00 00 */	stfs f0, 0x0(r7)
/* 814FBB04 | FC 00 00 18 */	frsp f0, f0
/* 814FBB08 | C0 26 00 00 */	lfs f1, 0x0(r6)
/* 814FBB0C | EC 21 01 32 */	fmuls f1, f1, f4
/* 814FBB10 | EC 00 00 F2 */	fmuls f0, f0, f3
/* 814FBB14 | D0 26 00 00 */	stfs f1, 0x0(r6)
/* 814FBB18 | D0 07 00 00 */	stfs f0, 0x0(r7)
/* 814FBB1C | D0 46 00 04 */	stfs f2, 0x4(r6)
/* 814FBB20 | D0 47 00 04 */	stfs f2, 0x4(r7)
/* 814FBB24 | 41 82 00 10 */	beq .L_814FBB34
/* 814FBB28 | C0 08 01 58 */	lfs f0, 0x158(r8)
/* 814FBB2C | EC 62 00 32 */	fmuls f3, f2, f0
/* 814FBB30 | 48 00 00 08 */	b .L_814FBB38
.L_814FBB34:
/* 814FBB34 | C0 62 8D DC */	lfs f3, lbl_816951DC@sda21(r0)
.L_814FBB38:
/* 814FBB38 | C0 26 00 04 */	lfs f1, 0x4(r6)
/* 814FBB3C | 39 29 00 01 */	addi r9, r9, 0x1
/* 814FBB40 | C0 07 00 04 */	lfs f0, 0x4(r7)
/* 814FBB44 | EC 21 00 F2 */	fmuls f1, f1, f3
/* 814FBB48 | C0 88 01 68 */	lfs f4, 0x168(r8)
/* 814FBB4C | EC 00 00 F2 */	fmuls f0, f0, f3
/* 814FBB50 | C0 68 01 78 */	lfs f3, 0x178(r8)
/* 814FBB54 | 39 08 00 08 */	addi r8, r8, 0x8
/* 814FBB58 | D0 26 00 04 */	stfs f1, 0x4(r6)
/* 814FBB5C | D0 07 00 04 */	stfs f0, 0x4(r7)
/* 814FBB60 | FC 00 00 18 */	frsp f0, f0
/* 814FBB64 | C0 26 00 04 */	lfs f1, 0x4(r6)
/* 814FBB68 | EC 21 01 32 */	fmuls f1, f1, f4
/* 814FBB6C | EC 00 00 F2 */	fmuls f0, f0, f3
/* 814FBB70 | D0 26 00 04 */	stfs f1, 0x4(r6)
/* 814FBB74 | 38 C6 00 08 */	addi r6, r6, 0x8
/* 814FBB78 | D0 07 00 04 */	stfs f0, 0x4(r7)
/* 814FBB7C | 38 E7 00 08 */	addi r7, r7, 0x8
/* 814FBB80 | 42 00 FF 2C */	bdnz .L_814FBAAC
/* 814FBB84 | C0 22 8E 20 */	lfs f1, lbl_81695220@sda21(r0)
/* 814FBB88 | C0 01 00 18 */	lfs f0, 0x18(r1)
/* 814FBB8C | EC 21 00 32 */	fmuls f1, f1, f0
/* 814FBB90 | 48 0F D8 09 */	bl __cvt_fp2unsigned
/* 814FBB94 | 28 03 FF FF */	cmplwi r3, 0xffff
/* 814FBB98 | 40 80 00 18 */	bge .L_814FBBB0
/* 814FBB9C | C0 22 8E 20 */	lfs f1, lbl_81695220@sda21(r0)
/* 814FBBA0 | C0 01 00 18 */	lfs f0, 0x18(r1)
/* 814FBBA4 | EC 21 00 32 */	fmuls f1, f1, f0
/* 814FBBA8 | 48 0F D7 F1 */	bl __cvt_fp2unsigned
/* 814FBBAC | 48 00 00 0C */	b .L_814FBBB8
.L_814FBBB0:
/* 814FBBB0 | 3C 60 00 01 */	lis r3, 0x1
/* 814FBBB4 | 38 63 FF FF */	subi r3, r3, 0x1
.L_814FBBB8:
/* 814FBBB8 | C0 22 8E 20 */	lfs f1, lbl_81695220@sda21(r0)
/* 814FBBBC | 38 00 00 00 */	li r0, 0x0
/* 814FBBC0 | C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 814FBBC4 | B0 7F 00 00 */	sth r3, 0x0(r31)
/* 814FBBC8 | EC 21 00 32 */	fmuls f1, f1, f0
/* 814FBBCC | B0 1F 00 04 */	sth r0, 0x4(r31)
/* 814FBBD0 | 48 0F D7 C9 */	bl __cvt_fp2unsigned
/* 814FBBD4 | 28 03 FF FF */	cmplwi r3, 0xffff
/* 814FBBD8 | 3C 80 00 01 */	lis r4, 0x1
/* 814FBBDC | 38 84 FF FF */	subi r4, r4, 0x1
/* 814FBBE0 | 40 80 00 08 */	bge .L_814FBBE8
/* 814FBBE4 | 7C 64 1B 78 */	mr r4, r3
.L_814FBBE8:
/* 814FBBE8 | C0 22 8E 20 */	lfs f1, lbl_81695220@sda21(r0)
/* 814FBBEC | 38 00 00 00 */	li r0, 0x0
/* 814FBBF0 | C0 01 00 20 */	lfs f0, 0x20(r1)
/* 814FBBF4 | B0 9F 00 08 */	sth r4, 0x8(r31)
/* 814FBBF8 | EC 21 00 32 */	fmuls f1, f1, f0
/* 814FBBFC | B0 1F 00 0C */	sth r0, 0xc(r31)
/* 814FBC00 | 48 0F D7 99 */	bl __cvt_fp2unsigned
/* 814FBC04 | 28 03 FF FF */	cmplwi r3, 0xffff
/* 814FBC08 | 3C 80 00 01 */	lis r4, 0x1
/* 814FBC0C | 38 84 FF FF */	subi r4, r4, 0x1
/* 814FBC10 | 40 80 00 08 */	bge .L_814FBC18
/* 814FBC14 | 7C 64 1B 78 */	mr r4, r3
.L_814FBC18:
/* 814FBC18 | C0 22 8E 20 */	lfs f1, lbl_81695220@sda21(r0)
/* 814FBC1C | 38 00 00 00 */	li r0, 0x0
/* 814FBC20 | C0 01 00 24 */	lfs f0, 0x24(r1)
/* 814FBC24 | B0 9F 00 10 */	sth r4, 0x10(r31)
/* 814FBC28 | EC 21 00 32 */	fmuls f1, f1, f0
/* 814FBC2C | B0 1F 00 14 */	sth r0, 0x14(r31)
/* 814FBC30 | 48 0F D7 69 */	bl __cvt_fp2unsigned
/* 814FBC34 | 28 03 FF FF */	cmplwi r3, 0xffff
/* 814FBC38 | 3C 80 00 01 */	lis r4, 0x1
/* 814FBC3C | 38 84 FF FF */	subi r4, r4, 0x1
/* 814FBC40 | 40 80 00 08 */	bge .L_814FBC48
/* 814FBC44 | 7C 64 1B 78 */	mr r4, r3
.L_814FBC48:
/* 814FBC48 | 38 00 00 00 */	li r0, 0x0
/* 814FBC4C | B0 9F 00 18 */	sth r4, 0x18(r31)
/* 814FBC50 | B0 1F 00 1C */	sth r0, 0x1c(r31)
/* 814FBC54 | B0 1F 00 02 */	sth r0, 0x2(r31)
/* 814FBC58 | B0 1F 00 06 */	sth r0, 0x6(r31)
/* 814FBC5C | B0 1F 00 0A */	sth r0, 0xa(r31)
/* 814FBC60 | B0 1F 00 0E */	sth r0, 0xe(r31)
/* 814FBC64 | B0 1F 00 12 */	sth r0, 0x12(r31)
/* 814FBC68 | B0 1F 00 16 */	sth r0, 0x16(r31)
/* 814FBC6C | B0 1F 00 1A */	sth r0, 0x1a(r31)
/* 814FBC70 | B0 1F 00 1E */	sth r0, 0x1e(r31)
/* 814FBC74 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 814FBC78 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814FBC7C | 7C 08 03 A6 */	mtlr r0
/* 814FBC80 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814FBC84 | 4E 80 00 20 */	blr
.endfn CalcAXPBRMTMIX__Q44nw4r3snd6detail7AxVoiceFiiP11_AXPBRMTMIX

# .text:0x3388 | 0x814FBC88 | size: 0x174
# nw4r::snd::detail::AxVoice::InvalidateWaveData(const void*, const void*)
.fn InvalidateWaveData__Q44nw4r3snd6detail7AxVoiceFPCvPCv, global
/* 814FBC88 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814FBC8C | 7C 08 02 A6 */	mflr r0
/* 814FBC90 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814FBC94 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814FBC98 | 48 0F D8 21 */	bl _savegpr_25
/* 814FBC9C | 7C 7F 1B 78 */	mr r31, r3
/* 814FBCA0 | 7C 9A 23 78 */	mr r26, r4
/* 814FBCA4 | 7C B9 2B 78 */	mr r25, r5
/* 814FBCA8 | 48 03 4B DD */	bl OSDisableInterrupts
/* 814FBCAC | 88 1F 01 1C */	lbz r0, 0x11c(r31)
/* 814FBCB0 | 7C 7E 1B 78 */	mr r30, r3
/* 814FBCB4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FBCB8 | 41 82 01 24 */	beq .L_814FBDDC
/* 814FBCBC | 80 1F 01 04 */	lwz r0, 0x104(r31)
/* 814FBCC0 | 7F E3 FB 78 */	mr r3, r31
/* 814FBCC4 | 38 80 00 00 */	li r4, 0x0
/* 814FBCC8 | 7C 09 03 A6 */	mtctr r0
/* 814FBCCC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FBCD0 | 40 81 00 24 */	ble .L_814FBCF4
.L_814FBCD4:
/* 814FBCD4 | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 814FBCD8 | 7C 1A 00 40 */	cmplw r26, r0
/* 814FBCDC | 41 81 00 10 */	bgt .L_814FBCEC
/* 814FBCE0 | 7C 00 C8 40 */	cmplw r0, r25
/* 814FBCE4 | 41 81 00 08 */	bgt .L_814FBCEC
/* 814FBCE8 | 38 80 00 01 */	li r4, 0x1
.L_814FBCEC:
/* 814FBCEC | 38 63 00 34 */	addi r3, r3, 0x34
/* 814FBCF0 | 42 00 FF E4 */	bdnz .L_814FBCD4
.L_814FBCF4:
/* 814FBCF4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814FBCF8 | 41 82 00 E4 */	beq .L_814FBDDC
/* 814FBCFC | 48 03 4B 89 */	bl OSDisableInterrupts
/* 814FBD00 | 88 1F 01 1E */	lbz r0, 0x11e(r31)
/* 814FBD04 | 7C 7D 1B 78 */	mr r29, r3
/* 814FBD08 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FBD0C | 41 82 00 98 */	beq .L_814FBDA4
/* 814FBD10 | 48 03 4B 75 */	bl OSDisableInterrupts
/* 814FBD14 | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 814FBD18 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814FBD1C | 40 82 00 10 */	bne .L_814FBD2C
/* 814FBD20 | 48 03 4B 8D */	bl OSRestoreInterrupts
/* 814FBD24 | 3B 60 00 00 */	li r27, 0x0
/* 814FBD28 | 48 00 00 18 */	b .L_814FBD40
.L_814FBD2C:
/* 814FBD2C | A0 84 00 38 */	lhz r4, 0x38(r4)
/* 814FBD30 | 38 04 FF FF */	subi r0, r4, 0x1
/* 814FBD34 | 7C 00 00 34 */	cntlzw r0, r0
/* 814FBD38 | 54 1B D9 7E */	srwi r27, r0, 5
/* 814FBD3C | 48 03 4B 71 */	bl OSRestoreInterrupts
.L_814FBD40:
/* 814FBD40 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814FBD44 | 41 82 00 58 */	beq .L_814FBD9C
/* 814FBD48 | 7F FA FB 78 */	mr r26, r31
/* 814FBD4C | 3B 80 00 00 */	li r28, 0x0
/* 814FBD50 | 48 00 00 40 */	b .L_814FBD90
.L_814FBD54:
/* 814FBD54 | 7F 59 D3 78 */	mr r25, r26
/* 814FBD58 | 3B 60 00 00 */	li r27, 0x0
/* 814FBD5C | 48 00 00 20 */	b .L_814FBD7C
.L_814FBD60:
/* 814FBD60 | 80 79 00 0C */	lwz r3, 0xc(r25)
/* 814FBD64 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FBD68 | 41 82 00 0C */	beq .L_814FBD74
/* 814FBD6C | 38 80 00 00 */	li r4, 0x0
/* 814FBD70 | 48 05 92 B1 */	bl fn_81555020
.L_814FBD74:
/* 814FBD74 | 3B 39 00 04 */	addi r25, r25, 0x4
/* 814FBD78 | 3B 7B 00 01 */	addi r27, r27, 0x1
.L_814FBD7C:
/* 814FBD7C | 80 1F 01 08 */	lwz r0, 0x108(r31)
/* 814FBD80 | 7C 1B 00 00 */	cmpw r27, r0
/* 814FBD84 | 41 80 FF DC */	blt .L_814FBD60
/* 814FBD88 | 3B 5A 00 10 */	addi r26, r26, 0x10
/* 814FBD8C | 3B 9C 00 01 */	addi r28, r28, 0x1
.L_814FBD90:
/* 814FBD90 | 80 1F 01 04 */	lwz r0, 0x104(r31)
/* 814FBD94 | 7C 1C 00 00 */	cmpw r28, r0
/* 814FBD98 | 41 80 FF BC */	blt .L_814FBD54
.L_814FBD9C:
/* 814FBD9C | 38 00 00 00 */	li r0, 0x0
/* 814FBDA0 | 98 1F 01 1E */	stb r0, 0x11e(r31)
.L_814FBDA4:
/* 814FBDA4 | 38 00 00 00 */	li r0, 0x0
/* 814FBDA8 | 7F A3 EB 78 */	mr r3, r29
/* 814FBDAC | 98 1F 01 20 */	stb r0, 0x120(r31)
/* 814FBDB0 | 98 1F 01 1F */	stb r0, 0x11f(r31)
/* 814FBDB4 | 98 1F 01 1D */	stb r0, 0x11d(r31)
/* 814FBDB8 | 48 03 4A F5 */	bl OSRestoreInterrupts
/* 814FBDBC | 81 9F 01 0C */	lwz r12, 0x10c(r31)
/* 814FBDC0 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814FBDC4 | 41 82 00 18 */	beq .L_814FBDDC
/* 814FBDC8 | 7F E3 FB 78 */	mr r3, r31
/* 814FBDCC | 80 BF 01 10 */	lwz r5, 0x110(r31)
/* 814FBDD0 | 38 80 00 01 */	li r4, 0x1
/* 814FBDD4 | 7D 89 03 A6 */	mtctr r12
/* 814FBDD8 | 4E 80 04 21 */	bctrl
.L_814FBDDC:
/* 814FBDDC | 7F C3 F3 78 */	mr r3, r30
/* 814FBDE0 | 48 03 4A CD */	bl OSRestoreInterrupts
/* 814FBDE4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814FBDE8 | 48 0F D7 1D */	bl _restgpr_25
/* 814FBDEC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814FBDF0 | 7C 08 03 A6 */	mtlr r0
/* 814FBDF4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814FBDF8 | 4E 80 00 20 */	blr
.endfn InvalidateWaveData__Q44nw4r3snd6detail7AxVoiceFPCvPCv

# .text:0x34FC | 0x814FBDFC | size: 0x4
# nw4r::snd::detail::AxVoice::InvalidateData(const void*, const void*)
.fn InvalidateData__Q44nw4r3snd6detail7AxVoiceFPCvPCv, global
/* 814FBDFC | 4E 80 00 20 */	blr
.endfn InvalidateData__Q44nw4r3snd6detail7AxVoiceFPCvPCv

# 0x8166F2C8..0x8166F2E0 | size: 0x18
.data
.balign 8

# .data:0x0 | 0x8166F2C8 | size: 0x14
# nw4r::snd::detail::AxVoice::__vtable
.obj __vt__Q44nw4r3snd6detail7AxVoice, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q44nw4r3snd6detail7AxVoiceFv
	.4byte InvalidateData__Q44nw4r3snd6detail7AxVoiceFPCvPCv
	.4byte InvalidateWaveData__Q44nw4r3snd6detail7AxVoiceFPCvPCv
.endobj __vt__Q44nw4r3snd6detail7AxVoice

# .data:0x14 | 0x8166F2DC | size: 0x4
.obj gap_08_8166F2DC_data, global
.hidden gap_08_8166F2DC_data
	.4byte 0x00000000
.endobj gap_08_8166F2DC_data

# 0x816951D8..0x81695228 | size: 0x50
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x816951D8 | size: 0x4
.obj lbl_816951D8, global
	.float 1
.endobj lbl_816951D8

# .sdata2:0x4 | 0x816951DC | size: 0x4
.obj lbl_816951DC, global
	.float 0
.endobj lbl_816951DC

# .sdata2:0x8 | 0x816951E0 | size: 0x4
.obj lbl_816951E0, global
	.float 32000
.endobj lbl_816951E0

# .sdata2:0xC | 0x816951E4 | size: 0x4
.obj lbl_816951E4, global
	.float 1.3333334
.endobj lbl_816951E4

# .sdata2:0x10 | 0x816951E8 | size: 0x8
.obj lbl_816951E8, global
	.double 4503601774854144
.endobj lbl_816951E8

# .sdata2:0x18 | 0x816951F0 | size: 0x4
.obj lbl_816951F0, global
	.float -1
.endobj lbl_816951F0

# .sdata2:0x1C | 0x816951F4 | size: 0x4
.obj lbl_816951F4, global
	.float 2
.endobj lbl_816951F4

# .sdata2:0x20 | 0x816951F8 | size: 0x4
.obj lbl_816951F8, global
	.float 65536
.endobj lbl_816951F8

# .sdata2:0x24 | 0x816951FC | size: 0x4
.obj lbl_816951FC, global
	.float 32767
.endobj lbl_816951FC

# .sdata2:0x28 | 0x81695200 | size: 0x4
.obj lbl_81695200, global
	.float -0.12
.endobj lbl_81695200

# .sdata2:0x2C | 0x81695204 | size: 0x4
.obj lbl_81695204, global
	.float 0.88
.endobj lbl_81695204

# .sdata2:0x30 | 0x81695208 | size: 0x4
.obj lbl_81695208, global
	.float 0.5
.endobj lbl_81695208

# .sdata2:0x34 | 0x8169520C | size: 0x4
.obj lbl_8169520C, global
	.float 1.12
.endobj lbl_8169520C

# .sdata2:0x38 | 0x81695210 | size: 0x4
.obj lbl_81695210, global
	.float 0.85
.endobj lbl_81695210

# .sdata2:0x3C | 0x81695214 | size: 0x4
.obj lbl_81695214, global
	.float 0.14999998
.endobj lbl_81695214

# .sdata2:0x40 | 0x81695218 | size: 0x4
.obj lbl_81695218, global
	.float 0.35000002
.endobj lbl_81695218

# .sdata2:0x44 | 0x8169521C | size: 0x4
.obj lbl_8169521C, global
	.float -3
.endobj lbl_8169521C

# .sdata2:0x48 | 0x81695220 | size: 0x4
.obj lbl_81695220, global
	.float 32768
.endobj lbl_81695220

# .sdata2:0x4C | 0x81695224 | size: 0x4
.obj gap_09_81695224_sdata2, global
.hidden gap_09_81695224_sdata2
	.4byte 0x00000000
.endobj gap_09_81695224_sdata2
