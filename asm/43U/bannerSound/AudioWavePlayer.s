.include "macros.inc"
.file "AudioWavePlayer.cpp"

# 0x8140CD54..0x8140DA2C | size: 0xCD8
.text
.balign 4

# .text:0x0 | 0x8140CD54 | size: 0x2D4
# SimpleWavePlayer::MakeWave(nw4r::snd::WavePlayer*, nw4r::snd::WavePlayer::WavePacket*, void*)
.fn MakeWave__16SimpleWavePlayerFPQ34nw4r3snd10WavePlayerPQ44nw4r3snd10WavePlayer10WavePacketPv, global
/* 8140CD54 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8140CD58 | 7C 08 02 A6 */	mflr r0
/* 8140CD5C | 90 01 00 54 */	stw r0, 0x54(r1)
/* 8140CD60 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8140CD64 | 48 1E C7 45 */	bl _savegpr_21
/* 8140CD68 | 7C 7C 1B 78 */	mr r28, r3
/* 8140CD6C | 80 65 01 14 */	lwz r3, 0x114(r5)
/* 8140CD70 | 80 C4 00 08 */	lwz r6, 0x8(r4)
/* 8140CD74 | 7C BE 2B 78 */	mr r30, r5
/* 8140CD78 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140CD7C | 7C 9D 23 78 */	mr r29, r4
/* 8140CD80 | 80 A4 00 0C */	lwz r5, 0xc(r4)
/* 8140CD84 | 80 04 00 10 */	lwz r0, 0x10(r4)
/* 8140CD88 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8140CD8C | 90 C1 00 0C */	stw r6, 0xc(r1)
/* 8140CD90 | 54 1F F8 7E */	srwi r31, r0, 1
/* 8140CD94 | 90 A1 00 10 */	stw r5, 0x10(r1)
/* 8140CD98 | 7D 89 03 A6 */	mtctr r12
/* 8140CD9C | 4E 80 04 21 */	bctrl
/* 8140CDA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140CDA4 | 40 82 00 98 */	bne .L_8140CE3C
/* 8140CDA8 | 80 7E 01 14 */	lwz r3, 0x114(r30)
/* 8140CDAC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140CDB0 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8140CDB4 | 7D 89 03 A6 */	mtctr r12
/* 8140CDB8 | 4E 80 04 21 */	bctrl
/* 8140CDBC | 7C 79 1B 78 */	mr r25, r3
/* 8140CDC0 | 80 7E 01 14 */	lwz r3, 0x114(r30)
/* 8140CDC4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140CDC8 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8140CDCC | 7D 89 03 A6 */	mtctr r12
/* 8140CDD0 | 4E 80 04 21 */	bctrl
/* 8140CDD4 | 7C 78 1B 78 */	mr r24, r3
/* 8140CDD8 | 80 7E 01 14 */	lwz r3, 0x114(r30)
/* 8140CDDC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140CDE0 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8140CDE4 | 7D 89 03 A6 */	mtctr r12
/* 8140CDE8 | 4E 80 04 21 */	bctrl
/* 8140CDEC | 7C 77 1B 78 */	mr r23, r3
/* 8140CDF0 | 80 7E 01 14 */	lwz r3, 0x114(r30)
/* 8140CDF4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140CDF8 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8140CDFC | 7D 89 03 A6 */	mtctr r12
/* 8140CE00 | 4E 80 04 21 */	bctrl
/* 8140CE04 | 7C 03 B8 50 */	subf r0, r3, r23
/* 8140CE08 | 7C 00 0E 70 */	srawi r0, r0, 1
/* 8140CE0C | 7C 00 01 94 */	addze r0, r0
/* 8140CE10 | 7C 00 C3 D6 */	divw r0, r0, r24
/* 8140CE14 | 7C 00 C8 50 */	subf r0, r0, r25
/* 8140CE18 | 7C 1F 00 40 */	cmplw r31, r0
/* 8140CE1C | 40 81 00 08 */	ble .L_8140CE24
/* 8140CE20 | 7C 1F 03 78 */	mr r31, r0
.L_8140CE24:
/* 8140CE24 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140CE28 | 40 82 00 64 */	bne .L_8140CE8C
/* 8140CE2C | 80 7E 01 88 */	lwz r3, 0x188(r30)
/* 8140CE30 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8140CE34 | 90 1E 01 88 */	stw r0, 0x188(r30)
/* 8140CE38 | 48 00 00 54 */	b .L_8140CE8C
.L_8140CE3C:
/* 8140CE3C | 80 7E 01 14 */	lwz r3, 0x114(r30)
/* 8140CE40 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140CE44 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8140CE48 | 7D 89 03 A6 */	mtctr r12
/* 8140CE4C | 4E 80 04 21 */	bctrl
/* 8140CE50 | 80 7E 01 14 */	lwz r3, 0x114(r30)
/* 8140CE54 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140CE58 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8140CE5C | 7D 89 03 A6 */	mtctr r12
/* 8140CE60 | 4E 80 04 21 */	bctrl
/* 8140CE64 | 80 7E 01 14 */	lwz r3, 0x114(r30)
/* 8140CE68 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140CE6C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8140CE70 | 7D 89 03 A6 */	mtctr r12
/* 8140CE74 | 4E 80 04 21 */	bctrl
/* 8140CE78 | 80 7E 01 14 */	lwz r3, 0x114(r30)
/* 8140CE7C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140CE80 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8140CE84 | 7D 89 03 A6 */	mtctr r12
/* 8140CE88 | 4E 80 04 21 */	bctrl
.L_8140CE8C:
/* 8140CE8C | 3A E1 00 08 */	addi r23, r1, 0x8
/* 8140CE90 | 3B 01 00 0C */	addi r24, r1, 0xc
/* 8140CE94 | 3A C0 00 00 */	li r22, 0x0
/* 8140CE98 | 3B 60 00 00 */	li r27, 0x0
/* 8140CE9C | 48 00 01 10 */	b .L_8140CFAC
.L_8140CEA0:
/* 8140CEA0 | 80 7E 01 14 */	lwz r3, 0x114(r30)
/* 8140CEA4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140CEA8 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8140CEAC | 7D 89 03 A6 */	mtctr r12
/* 8140CEB0 | 4E 80 04 21 */	bctrl
/* 8140CEB4 | 7C 65 1B 78 */	mr r5, r3
/* 8140CEB8 | 80 7E 01 14 */	lwz r3, 0x114(r30)
/* 8140CEBC | 38 81 00 08 */	addi r4, r1, 0x8
/* 8140CEC0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140CEC4 | 81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8140CEC8 | 7D 89 03 A6 */	mtctr r12
/* 8140CECC | 4E 80 04 21 */	bctrl
/* 8140CED0 | 3A A0 00 00 */	li r21, 0x0
/* 8140CED4 | 3B 40 00 00 */	li r26, 0x0
/* 8140CED8 | 3B 20 00 00 */	li r25, 0x0
/* 8140CEDC | 48 00 00 1C */	b .L_8140CEF8
.L_8140CEE0:
/* 8140CEE0 | 7C 77 CA AE */	lhax r3, r23, r25
/* 8140CEE4 | 3A B5 00 01 */	addi r21, r21, 0x1
/* 8140CEE8 | 7C 18 D0 2E */	lwzx r0, r24, r26
/* 8140CEEC | 3B 5A 00 04 */	addi r26, r26, 0x4
/* 8140CEF0 | 3B 39 00 02 */	addi r25, r25, 0x2
/* 8140CEF4 | 7C 7B 03 2E */	sthx r3, r27, r0
.L_8140CEF8:
/* 8140CEF8 | 80 7E 01 14 */	lwz r3, 0x114(r30)
/* 8140CEFC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140CF00 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8140CF04 | 7D 89 03 A6 */	mtctr r12
/* 8140CF08 | 4E 80 04 21 */	bctrl
/* 8140CF0C | 7C 15 18 00 */	cmpw r21, r3
/* 8140CF10 | 41 80 FF D0 */	blt .L_8140CEE0
/* 8140CF14 | 80 9E 01 84 */	lwz r4, 0x184(r30)
/* 8140CF18 | 80 7E 01 14 */	lwz r3, 0x114(r30)
/* 8140CF1C | 38 04 00 01 */	addi r0, r4, 0x1
/* 8140CF20 | 90 1E 01 84 */	stw r0, 0x184(r30)
/* 8140CF24 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140CF28 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8140CF2C | 7D 89 03 A6 */	mtctr r12
/* 8140CF30 | 4E 80 04 21 */	bctrl
/* 8140CF34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140CF38 | 41 82 00 6C */	beq .L_8140CFA4
/* 8140CF3C | 80 7E 01 14 */	lwz r3, 0x114(r30)
/* 8140CF40 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140CF44 | 81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8140CF48 | 7D 89 03 A6 */	mtctr r12
/* 8140CF4C | 4E 80 04 21 */	bctrl
/* 8140CF50 | 80 1E 01 84 */	lwz r0, 0x184(r30)
/* 8140CF54 | 7C 00 18 40 */	cmplw r0, r3
/* 8140CF58 | 41 80 00 4C */	blt .L_8140CFA4
/* 8140CF5C | 80 7E 01 14 */	lwz r3, 0x114(r30)
/* 8140CF60 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140CF64 | 81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8140CF68 | 7D 89 03 A6 */	mtctr r12
/* 8140CF6C | 4E 80 04 21 */	bctrl
/* 8140CF70 | 90 7E 01 84 */	stw r3, 0x184(r30)
/* 8140CF74 | 80 7E 01 14 */	lwz r3, 0x114(r30)
/* 8140CF78 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140CF7C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8140CF80 | 7D 89 03 A6 */	mtctr r12
/* 8140CF84 | 4E 80 04 21 */	bctrl
/* 8140CF88 | 80 1E 01 84 */	lwz r0, 0x184(r30)
/* 8140CF8C | 7C 80 19 D6 */	mullw r4, r0, r3
/* 8140CF90 | 80 7E 01 14 */	lwz r3, 0x114(r30)
/* 8140CF94 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140CF98 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8140CF9C | 7D 89 03 A6 */	mtctr r12
/* 8140CFA0 | 4E 80 04 21 */	bctrl
.L_8140CFA4:
/* 8140CFA4 | 3A D6 00 01 */	addi r22, r22, 0x1
/* 8140CFA8 | 3B 7B 00 02 */	addi r27, r27, 0x2
.L_8140CFAC:
/* 8140CFAC | 7C 16 F8 40 */	cmplw r22, r31
/* 8140CFB0 | 41 80 FE F0 */	blt .L_8140CEA0
/* 8140CFB4 | 57 F7 08 3C */	slwi r23, r31, 1
/* 8140CFB8 | 3B 21 00 0C */	addi r25, r1, 0xc
/* 8140CFBC | 3A A0 00 00 */	li r21, 0x0
/* 8140CFC0 | 3B E0 00 00 */	li r31, 0x0
/* 8140CFC4 | 48 00 00 18 */	b .L_8140CFDC
.L_8140CFC8:
/* 8140CFC8 | 7C 79 F8 2E */	lwzx r3, r25, r31
/* 8140CFCC | 7E E4 BB 78 */	mr r4, r23
/* 8140CFD0 | 48 12 09 65 */	bl DCFlushRange
/* 8140CFD4 | 3A B5 00 01 */	addi r21, r21, 0x1
/* 8140CFD8 | 3B FF 00 04 */	addi r31, r31, 0x4
.L_8140CFDC:
/* 8140CFDC | 80 7E 01 14 */	lwz r3, 0x114(r30)
/* 8140CFE0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8140CFE4 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8140CFE8 | 7D 89 03 A6 */	mtctr r12
/* 8140CFEC | 4E 80 04 21 */	bctrl
/* 8140CFF0 | 7C 15 18 00 */	cmpw r21, r3
/* 8140CFF4 | 41 80 FF D4 */	blt .L_8140CFC8
/* 8140CFF8 | 80 1E 01 88 */	lwz r0, 0x188(r30)
/* 8140CFFC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140D000 | 40 82 00 10 */	bne .L_8140D010
/* 8140D004 | 7F 83 E3 78 */	mr r3, r28
/* 8140D008 | 7F A4 EB 78 */	mr r4, r29
/* 8140D00C | 48 10 29 C5 */	bl AppendWavePacket__Q34nw4r3snd10WavePlayerFPQ44nw4r3snd10WavePlayer10WavePacket
.L_8140D010:
/* 8140D010 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8140D014 | 48 1E C4 E1 */	bl _restgpr_21
/* 8140D018 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 8140D01C | 7C 08 03 A6 */	mtlr r0
/* 8140D020 | 38 21 00 50 */	addi r1, r1, 0x50
/* 8140D024 | 4E 80 00 20 */	blr
.endfn MakeWave__16SimpleWavePlayerFPQ34nw4r3snd10WavePlayerPQ44nw4r3snd10WavePlayer10WavePacketPv

# .text:0x2D4 | 0x8140D028 | size: 0x44
# SimpleWavePlayer::wavePacketCallback(nw4r::snd::WavePlayer::WavePacketCallbackStatus, nw4r::snd::WavePlayer*, nw4r::snd::WavePlayer::WavePacket*, void*)
.fn wavePacketCallback__16SimpleWavePlayerFQ44nw4r3snd10WavePlayer24WavePacketCallbackStatusPQ34nw4r3snd10WavePlayerPQ44nw4r3snd10WavePlayer10WavePacketPv, global
/* 8140D028 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140D02C | 4C 82 00 20 */	bnelr
/* 8140D030 | 88 06 00 B4 */	lbz r0, 0xb4(r6)
/* 8140D034 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140D038 | 41 82 00 14 */	beq .L_8140D04C
/* 8140D03C | 7C A4 2B 78 */	mr r4, r5
/* 8140D040 | 38 66 04 A8 */	addi r3, r6, 0x4a8
/* 8140D044 | 38 A0 00 00 */	li r5, 0x0
/* 8140D048 | 48 12 40 38 */	b OSSendMessage
.L_8140D04C:
/* 8140D04C | 88 06 00 B5 */	lbz r0, 0xb5(r6)
/* 8140D050 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140D054 | 4D 82 00 20 */	beqlr
/* 8140D058 | 7C 83 23 78 */	mr r3, r4
/* 8140D05C | 7C A4 2B 78 */	mr r4, r5
/* 8140D060 | 7C C5 33 78 */	mr r5, r6
/* 8140D064 | 4B FF FC F0 */	b MakeWave__16SimpleWavePlayerFPQ34nw4r3snd10WavePlayerPQ44nw4r3snd10WavePlayer10WavePacketPv
/* 8140D068 | 4E 80 00 20 */	blr
.endfn wavePacketCallback__16SimpleWavePlayerFQ44nw4r3snd10WavePlayer24WavePacketCallbackStatusPQ34nw4r3snd10WavePlayerPQ44nw4r3snd10WavePlayer10WavePacketPv

# .text:0x318 | 0x8140D06C | size: 0xB8
# SimpleWavePlayer::SimpleWavePlayer()
.fn __ct__16SimpleWavePlayerFv, global
/* 8140D06C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140D070 | 7C 08 02 A6 */	mflr r0
/* 8140D074 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140D078 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8140D07C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8140D080 | 7C 7E 1B 78 */	mr r30, r3
/* 8140D084 | 48 10 26 9D */	bl __ct__Q34nw4r3snd10WavePlayerFv
/* 8140D088 | C0 02 88 A0 */	lfs f0, lbl_81694CA0@sda21(r0)
/* 8140D08C | 3C 80 81 66 */	lis r4, __vt__16SimpleWavePlayer@ha
/* 8140D090 | 3B E0 00 01 */	li r31, 0x1
/* 8140D094 | 38 00 7D 00 */	li r0, 0x7d00
/* 8140D098 | 38 84 8B C4 */	addi r4, r4, __vt__16SimpleWavePlayer@l
/* 8140D09C | 93 FE 00 9C */	stw r31, 0x9c(r30)
/* 8140D0A0 | 38 7E 00 B8 */	addi r3, r30, 0xb8
/* 8140D0A4 | 90 9E 00 00 */	stw r4, 0x0(r30)
/* 8140D0A8 | 93 FE 00 A0 */	stw r31, 0xa0(r30)
/* 8140D0AC | 90 1E 00 A4 */	stw r0, 0xa4(r30)
/* 8140D0B0 | D0 1E 00 A8 */	stfs f0, 0xa8(r30)
/* 8140D0B4 | 93 FE 00 AC */	stw r31, 0xac(r30)
/* 8140D0B8 | 48 00 1E 7D */	bl __ct__12WaveFileAiffFv
/* 8140D0BC | 38 7E 00 E8 */	addi r3, r30, 0xe8
/* 8140D0C0 | 48 00 2A 0D */	bl __ct__11WaveFileWavFv
/* 8140D0C4 | 3C 80 81 51 */	lis r4, __ct__Q44nw4r3snd10WavePlayer10WavePacketFv@ha
/* 8140D0C8 | 3C A0 81 41 */	lis r5, __dt__Q44nw4r3snd10WavePlayer10WavePacketFv@ha
/* 8140D0CC | 38 7E 01 18 */	addi r3, r30, 0x118
/* 8140D0D0 | 38 C0 00 20 */	li r6, 0x20
/* 8140D0D4 | 38 84 04 48 */	addi r4, r4, __ct__Q44nw4r3snd10WavePlayer10WavePacketFv@l
/* 8140D0D8 | 38 A5 D1 24 */	addi r5, r5, __dt__Q44nw4r3snd10WavePlayer10WavePacketFv@l
/* 8140D0DC | 38 E0 00 03 */	li r7, 0x3
/* 8140D0E0 | 48 1E C1 21 */	bl __construct_array
/* 8140D0E4 | 38 00 00 00 */	li r0, 0x0
/* 8140D0E8 | 9B FE 00 B5 */	stb r31, 0xb5(r30)
/* 8140D0EC | 7F C3 F3 78 */	mr r3, r30
/* 8140D0F0 | 98 1E 00 B0 */	stb r0, 0xb0(r30)
/* 8140D0F4 | 98 1E 00 B1 */	stb r0, 0xb1(r30)
/* 8140D0F8 | 98 1E 00 B2 */	stb r0, 0xb2(r30)
/* 8140D0FC | 98 1E 00 B3 */	stb r0, 0xb3(r30)
/* 8140D100 | 90 1E 01 84 */	stw r0, 0x184(r30)
/* 8140D104 | 90 1E 01 88 */	stw r0, 0x188(r30)
/* 8140D108 | 98 1E 00 B4 */	stb r0, 0xb4(r30)
/* 8140D10C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8140D110 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8140D114 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140D118 | 7C 08 03 A6 */	mtlr r0
/* 8140D11C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140D120 | 4E 80 00 20 */	blr
.endfn __ct__16SimpleWavePlayerFv

# .text:0x3D0 | 0x8140D124 | size: 0x40
# nw4r::snd::WavePlayer::WavePacket::~WavePacket()
.fn __dt__Q44nw4r3snd10WavePlayer10WavePacketFv, global
/* 8140D124 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140D128 | 7C 08 02 A6 */	mflr r0
/* 8140D12C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140D130 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140D134 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8140D138 | 7C 7F 1B 78 */	mr r31, r3
/* 8140D13C | 41 82 00 10 */	beq .L_8140D14C
/* 8140D140 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8140D144 | 40 81 00 08 */	ble .L_8140D14C
/* 8140D148 | 48 1E AF 9D */	bl __dl__FPv
.L_8140D14C:
/* 8140D14C | 7F E3 FB 78 */	mr r3, r31
/* 8140D150 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8140D154 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140D158 | 7C 08 03 A6 */	mtlr r0
/* 8140D15C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140D160 | 4E 80 00 20 */	blr
.endfn __dt__Q44nw4r3snd10WavePlayer10WavePacketFv

# .text:0x410 | 0x8140D164 | size: 0x40
# WaveFileAiff::~WaveFileAiff()
.fn __dt__12WaveFileAiffFv, global
/* 8140D164 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140D168 | 7C 08 02 A6 */	mflr r0
/* 8140D16C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140D170 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140D174 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8140D178 | 7C 7F 1B 78 */	mr r31, r3
/* 8140D17C | 41 82 00 10 */	beq .L_8140D18C
/* 8140D180 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8140D184 | 40 81 00 08 */	ble .L_8140D18C
/* 8140D188 | 48 1E AF 5D */	bl __dl__FPv
.L_8140D18C:
/* 8140D18C | 7F E3 FB 78 */	mr r3, r31
/* 8140D190 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8140D194 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140D198 | 7C 08 03 A6 */	mtlr r0
/* 8140D19C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140D1A0 | 4E 80 00 20 */	blr
.endfn __dt__12WaveFileAiffFv

# .text:0x450 | 0x8140D1A4 | size: 0x40
# WaveFileWav::~WaveFileWav()
.fn __dt__11WaveFileWavFv, global
/* 8140D1A4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140D1A8 | 7C 08 02 A6 */	mflr r0
/* 8140D1AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140D1B0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140D1B4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8140D1B8 | 7C 7F 1B 78 */	mr r31, r3
/* 8140D1BC | 41 82 00 10 */	beq .L_8140D1CC
/* 8140D1C0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8140D1C4 | 40 81 00 08 */	ble .L_8140D1CC
/* 8140D1C8 | 48 1E AF 1D */	bl __dl__FPv
.L_8140D1CC:
/* 8140D1CC | 7F E3 FB 78 */	mr r3, r31
/* 8140D1D0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8140D1D4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140D1D8 | 7C 08 03 A6 */	mtlr r0
/* 8140D1DC | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140D1E0 | 4E 80 00 20 */	blr
.endfn __dt__11WaveFileWavFv

# .text:0x490 | 0x8140D1E4 | size: 0x8C
# SimpleWavePlayer::~SimpleWavePlayer()
.fn __dt__16SimpleWavePlayerFv, global
/* 8140D1E4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140D1E8 | 7C 08 02 A6 */	mflr r0
/* 8140D1EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140D1F0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140D1F4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8140D1F8 | 7C 9F 23 78 */	mr r31, r4
/* 8140D1FC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8140D200 | 7C 7E 1B 78 */	mr r30, r3
/* 8140D204 | 41 82 00 50 */	beq .L_8140D254
/* 8140D208 | 3C 80 81 41 */	lis r4, __dt__Q44nw4r3snd10WavePlayer10WavePacketFv@ha
/* 8140D20C | 38 A0 00 20 */	li r5, 0x20
/* 8140D210 | 38 84 D1 24 */	addi r4, r4, __dt__Q44nw4r3snd10WavePlayer10WavePacketFv@l
/* 8140D214 | 38 C0 00 03 */	li r6, 0x3
/* 8140D218 | 38 63 01 18 */	addi r3, r3, 0x118
/* 8140D21C | 48 1E C0 DD */	bl __destroy_arr
/* 8140D220 | 38 7E 00 E8 */	addi r3, r30, 0xe8
/* 8140D224 | 38 80 FF FF */	li r4, -0x1
/* 8140D228 | 4B FF FF 7D */	bl __dt__11WaveFileWavFv
/* 8140D22C | 38 7E 00 B8 */	addi r3, r30, 0xb8
/* 8140D230 | 38 80 FF FF */	li r4, -0x1
/* 8140D234 | 4B FF FF 31 */	bl __dt__12WaveFileAiffFv
/* 8140D238 | 7F C3 F3 78 */	mr r3, r30
/* 8140D23C | 38 80 00 00 */	li r4, 0x0
/* 8140D240 | 48 10 25 69 */	bl __dt__Q34nw4r3snd10WavePlayerFv
/* 8140D244 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8140D248 | 40 81 00 0C */	ble .L_8140D254
/* 8140D24C | 7F C3 F3 78 */	mr r3, r30
/* 8140D250 | 48 1E AE 95 */	bl __dl__FPv
.L_8140D254:
/* 8140D254 | 7F C3 F3 78 */	mr r3, r30
/* 8140D258 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8140D25C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8140D260 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140D264 | 7C 08 03 A6 */	mtlr r0
/* 8140D268 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140D26C | 4E 80 00 20 */	blr
.endfn __dt__16SimpleWavePlayerFv

# .text:0x51C | 0x8140D270 | size: 0x88
# SimpleWavePlayer::setBuffer(short*, unsigned long)
.fn setBuffer__16SimpleWavePlayerFPsUl, global
/* 8140D270 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8140D274 | 7C 08 02 A6 */	mflr r0
/* 8140D278 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8140D27C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8140D280 | 48 1E C2 49 */	bl _savegpr_29
/* 8140D284 | 28 05 30 00 */	cmplwi r5, 0x3000
/* 8140D288 | 7C 7D 1B 78 */	mr r29, r3
/* 8140D28C | 7C 9E 23 78 */	mr r30, r4
/* 8140D290 | 3B E0 00 00 */	li r31, 0x0
/* 8140D294 | 40 80 00 20 */	bge .L_8140D2B4
/* 8140D298 | 3C 60 81 66 */	lis r3, lbl_81658B90@ha
/* 8140D29C | 3C A0 81 66 */	lis r5, lbl_81658BA4@ha
/* 8140D2A0 | 38 63 8B 90 */	addi r3, r3, lbl_81658B90@l
/* 8140D2A4 | 38 80 00 6D */	li r4, 0x6d
/* 8140D2A8 | 38 A5 8B A4 */	addi r5, r5, lbl_81658BA4@l
/* 8140D2AC | 4C C6 31 82 */	crclr cr1eq
/* 8140D2B0 | 48 1E BB 09 */	bl fn_815F8DB8
.L_8140D2B4:
/* 8140D2B4 | 38 00 00 03 */	li r0, 0x3
/* 8140D2B8 | 38 60 00 00 */	li r3, 0x0
/* 8140D2BC | 7C 09 03 A6 */	mtctr r0
.L_8140D2C0:
/* 8140D2C0 | 7C 1E FA 14 */	add r0, r30, r31
/* 8140D2C4 | 7C 9D 1A 14 */	add r4, r29, r3
/* 8140D2C8 | 90 04 01 78 */	stw r0, 0x178(r4)
/* 8140D2CC | 3B FF 08 00 */	addi r31, r31, 0x800
/* 8140D2D0 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8140D2D4 | 42 00 FF EC */	bdnz .L_8140D2C0
/* 8140D2D8 | 38 00 00 01 */	li r0, 0x1
/* 8140D2DC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8140D2E0 | 98 1D 00 B3 */	stb r0, 0xb3(r29)
/* 8140D2E4 | 48 1E C2 31 */	bl _restgpr_29
/* 8140D2E8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8140D2EC | 7C 08 03 A6 */	mtlr r0
/* 8140D2F0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8140D2F4 | 4E 80 00 20 */	blr
.endfn setBuffer__16SimpleWavePlayerFPsUl

# .text:0x5A4 | 0x8140D2F8 | size: 0x1C0
# SimpleWavePlayer::setWavData(void*, unsigned long)
.fn setWavData__16SimpleWavePlayerFPvUl, global
/* 8140D2F8 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8140D2FC | 7C 08 02 A6 */	mflr r0
/* 8140D300 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 8140D304 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8140D308 | 48 1E C1 A1 */	bl _savegpr_21
/* 8140D30C | 88 03 00 B3 */	lbz r0, 0xb3(r3)
/* 8140D310 | 7C 7B 1B 78 */	mr r27, r3
/* 8140D314 | 7C 96 23 78 */	mr r22, r4
/* 8140D318 | 7C B5 2B 78 */	mr r21, r5
/* 8140D31C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140D320 | 40 82 00 20 */	bne .L_8140D340
/* 8140D324 | 3C 60 81 66 */	lis r3, lbl_81658B90@ha
/* 8140D328 | 3C A0 81 66 */	lis r5, lbl_81658BB7@ha
/* 8140D32C | 38 63 8B 90 */	addi r3, r3, lbl_81658B90@l
/* 8140D330 | 38 80 00 7A */	li r4, 0x7a
/* 8140D334 | 38 A5 8B B7 */	addi r5, r5, lbl_81658BB7@l
/* 8140D338 | 4C C6 31 82 */	crclr cr1eq
/* 8140D33C | 48 1E BA 7D */	bl fn_815F8DB8
.L_8140D340:
/* 8140D340 | 7E C4 B3 78 */	mr r4, r22
/* 8140D344 | 7E A5 AB 78 */	mr r5, r21
/* 8140D348 | 38 7B 00 E8 */	addi r3, r27, 0xe8
/* 8140D34C | 48 00 27 9D */	bl init__11WaveFileWavFPCvUl
/* 8140D350 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140D354 | 40 82 00 08 */	bne .L_8140D35C
/* 8140D358 | 48 00 01 48 */	b .L_8140D4A0
.L_8140D35C:
/* 8140D35C | 81 9B 00 E8 */	lwz r12, 0xe8(r27)
/* 8140D360 | 38 7B 00 E8 */	addi r3, r27, 0xe8
/* 8140D364 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8140D368 | 7D 89 03 A6 */	mtctr r12
/* 8140D36C | 4E 80 04 21 */	bctrl
/* 8140D370 | 38 00 00 01 */	li r0, 0x1
/* 8140D374 | 90 7B 00 9C */	stw r3, 0x9c(r27)
/* 8140D378 | 38 7B 00 E8 */	addi r3, r27, 0xe8
/* 8140D37C | 90 1B 00 A0 */	stw r0, 0xa0(r27)
/* 8140D380 | 81 9B 00 E8 */	lwz r12, 0xe8(r27)
/* 8140D384 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8140D388 | 7D 89 03 A6 */	mtctr r12
/* 8140D38C | 4E 80 04 21 */	bctrl
/* 8140D390 | FC 20 08 1E */	fctiwz f1, f1
/* 8140D394 | C0 02 88 A0 */	lfs f0, lbl_81694CA0@sda21(r0)
/* 8140D398 | 3C A0 81 41 */	lis r5, wavePacketCallback__16SimpleWavePlayerFQ44nw4r3snd10WavePlayer24WavePacketCallbackStatusPQ34nw4r3snd10WavePlayerPQ44nw4r3snd10WavePlayer10WavePacketPv@ha
/* 8140D39C | 7F 63 DB 78 */	mr r3, r27
/* 8140D3A0 | D0 1B 00 A8 */	stfs f0, 0xa8(r27)
/* 8140D3A4 | 7F 66 DB 78 */	mr r6, r27
/* 8140D3A8 | D8 21 00 18 */	stfd f1, 0x18(r1)
/* 8140D3AC | 38 9B 00 9C */	addi r4, r27, 0x9c
/* 8140D3B0 | 38 A5 D0 28 */	addi r5, r5, wavePacketCallback__16SimpleWavePlayerFQ44nw4r3snd10WavePlayer24WavePacketCallbackStatusPQ34nw4r3snd10WavePlayerPQ44nw4r3snd10WavePlayer10WavePacketPv@l
/* 8140D3B4 | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8140D3B8 | 90 1B 00 A4 */	stw r0, 0xa4(r27)
/* 8140D3BC | 48 10 25 01 */	bl Setup__Q34nw4r3snd10WavePlayerFRCQ44nw4r3snd10WavePlayer10SetupParamPFQ44nw4r3snd10WavePlayer24WavePacketCallbackStatusPQ34nw4r3snd10WavePlayerPQ44nw4r3snd10WavePlayer10WavePacketPv_vPv
/* 8140D3C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140D3C4 | 7C 7E 1B 78 */	mr r30, r3
/* 8140D3C8 | 41 82 00 D4 */	beq .L_8140D49C
/* 8140D3CC | 3A A1 00 08 */	addi r21, r1, 0x8
/* 8140D3D0 | 3B A0 00 00 */	li r29, 0x0
/* 8140D3D4 | 3B 40 00 00 */	li r26, 0x0
/* 8140D3D8 | 3B 20 00 00 */	li r25, 0x0
/* 8140D3DC | 3A C0 08 00 */	li r22, 0x800
.L_8140D3E0:
/* 8140D3E0 | 80 1B 00 9C */	lwz r0, 0x9c(r27)
/* 8140D3E4 | 7F FB CA 14 */	add r31, r27, r25
/* 8140D3E8 | 3B 80 00 00 */	li r28, 0x0
/* 8140D3EC | 3B 00 00 00 */	li r24, 0x0
/* 8140D3F0 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8140D3F4 | 3A E0 00 00 */	li r23, 0x0
/* 8140D3F8 | 48 00 00 40 */	b .L_8140D438
.L_8140D3FC:
/* 8140D3FC | 81 9B 00 E8 */	lwz r12, 0xe8(r27)
/* 8140D400 | 38 7B 00 E8 */	addi r3, r27, 0xe8
/* 8140D404 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8140D408 | 7D 89 03 A6 */	mtctr r12
/* 8140D40C | 4E 80 04 21 */	bctrl
/* 8140D410 | 54 60 08 3C */	slwi r0, r3, 1
/* 8140D414 | 7C 75 BA 14 */	add r3, r21, r23
/* 8140D418 | 7C 98 03 D6 */	divw r4, r24, r0
/* 8140D41C | 80 1F 01 78 */	lwz r0, 0x178(r31)
/* 8140D420 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 8140D424 | 3B 18 08 00 */	addi r24, r24, 0x800
/* 8140D428 | 3A F7 00 04 */	addi r23, r23, 0x4
/* 8140D42C | 54 84 08 3C */	slwi r4, r4, 1
/* 8140D430 | 7C 00 22 14 */	add r0, r0, r4
/* 8140D434 | 90 03 00 04 */	stw r0, 0x4(r3)
.L_8140D438:
/* 8140D438 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8140D43C | 7C 1C 00 00 */	cmpw r28, r0
/* 8140D440 | 41 80 FF BC */	blt .L_8140D3FC
/* 8140D444 | 81 9B 00 E8 */	lwz r12, 0xe8(r27)
/* 8140D448 | 38 7B 00 E8 */	addi r3, r27, 0xe8
/* 8140D44C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8140D450 | 7D 89 03 A6 */	mtctr r12
/* 8140D454 | 4E 80 04 21 */	bctrl
/* 8140D458 | 54 60 08 3C */	slwi r0, r3, 1
/* 8140D45C | 7C 7B D2 14 */	add r3, r27, r26
/* 8140D460 | 7C 16 03 D6 */	divw r0, r22, r0
/* 8140D464 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8140D468 | 38 63 01 18 */	addi r3, r3, 0x118
/* 8140D46C | 54 00 08 3C */	slwi r0, r0, 1
/* 8140D470 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140D474 | 48 00 00 75 */	bl SetWaveBuffer__Q44nw4r3snd10WavePlayer10WavePacketFRCQ44nw4r3snd10WavePlayer14WaveBufferInfo
/* 8140D478 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 8140D47C | 3B 39 00 04 */	addi r25, r25, 0x4
/* 8140D480 | 2C 1D 00 03 */	cmpwi r29, 0x3
/* 8140D484 | 3B 5A 00 20 */	addi r26, r26, 0x20
/* 8140D488 | 41 80 FF 58 */	blt .L_8140D3E0
/* 8140D48C | 38 7B 00 E8 */	addi r3, r27, 0xe8
/* 8140D490 | 38 00 00 01 */	li r0, 0x1
/* 8140D494 | 90 7B 01 14 */	stw r3, 0x114(r27)
/* 8140D498 | 98 1B 00 B1 */	stb r0, 0xb1(r27)
.L_8140D49C:
/* 8140D49C | 7F C3 F3 78 */	mr r3, r30
.L_8140D4A0:
/* 8140D4A0 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8140D4A4 | 48 1E C0 51 */	bl _restgpr_21
/* 8140D4A8 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 8140D4AC | 7C 08 03 A6 */	mtlr r0
/* 8140D4B0 | 38 21 00 50 */	addi r1, r1, 0x50
/* 8140D4B4 | 4E 80 00 20 */	blr
.endfn setWavData__16SimpleWavePlayerFPvUl

# .text:0x764 | 0x8140D4B8 | size: 0x8
# WaveFileWav::getChannels() const
.fn getChannels__11WaveFileWavCFv, global
/* 8140D4B8 | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 8140D4BC | 4E 80 00 20 */	blr
.endfn getChannels__11WaveFileWavCFv

# .text:0x76C | 0x8140D4C0 | size: 0x28
# WaveFileWav::getSamplingRate() const
.fn getSamplingRate__11WaveFileWavCFv, global
/* 8140D4C0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140D4C4 | 3C 00 43 30 */	lis r0, 0x4330
/* 8140D4C8 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8140D4CC | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8140D4D0 | C8 22 88 A8 */	lfd f1, lbl_81694CA8@sda21(r0)
/* 8140D4D4 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 8140D4D8 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 8140D4DC | FC 20 08 28 */	fsub f1, f0, f1
/* 8140D4E0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140D4E4 | 4E 80 00 20 */	blr
.endfn getSamplingRate__11WaveFileWavCFv

# .text:0x794 | 0x8140D4E8 | size: 0x24
# nw4r::snd::WavePlayer::WavePacket::SetWaveBuffer(const nw4r::snd::WavePlayer::WaveBufferInfo&)
.fn SetWaveBuffer__Q44nw4r3snd10WavePlayer10WavePacketFRCQ44nw4r3snd10WavePlayer14WaveBufferInfo, global
/* 8140D4E8 | 80 E4 00 00 */	lwz r7, 0x0(r4)
/* 8140D4EC | 80 C4 00 04 */	lwz r6, 0x4(r4)
/* 8140D4F0 | 80 A4 00 08 */	lwz r5, 0x8(r4)
/* 8140D4F4 | 80 04 00 0C */	lwz r0, 0xc(r4)
/* 8140D4F8 | 90 E3 00 04 */	stw r7, 0x4(r3)
/* 8140D4FC | 90 C3 00 08 */	stw r6, 0x8(r3)
/* 8140D500 | 90 A3 00 0C */	stw r5, 0xc(r3)
/* 8140D504 | 90 03 00 10 */	stw r0, 0x10(r3)
/* 8140D508 | 4E 80 00 20 */	blr
.endfn SetWaveBuffer__Q44nw4r3snd10WavePlayer10WavePacketFRCQ44nw4r3snd10WavePlayer14WaveBufferInfo

# .text:0x7B8 | 0x8140D50C | size: 0x1C0
# SimpleWavePlayer::setAiffData(void*, unsigned long)
.fn setAiffData__16SimpleWavePlayerFPvUl, global
/* 8140D50C | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8140D510 | 7C 08 02 A6 */	mflr r0
/* 8140D514 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 8140D518 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8140D51C | 48 1E BF 8D */	bl _savegpr_21
/* 8140D520 | 88 03 00 B3 */	lbz r0, 0xb3(r3)
/* 8140D524 | 7C 7B 1B 78 */	mr r27, r3
/* 8140D528 | 7C 96 23 78 */	mr r22, r4
/* 8140D52C | 7C B5 2B 78 */	mr r21, r5
/* 8140D530 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140D534 | 40 82 00 20 */	bne .L_8140D554
/* 8140D538 | 3C 60 81 66 */	lis r3, lbl_81658B90@ha
/* 8140D53C | 3C A0 81 66 */	lis r5, lbl_81658BB7@ha
/* 8140D540 | 38 63 8B 90 */	addi r3, r3, lbl_81658B90@l
/* 8140D544 | 38 80 00 9C */	li r4, 0x9c
/* 8140D548 | 38 A5 8B B7 */	addi r5, r5, lbl_81658BB7@l
/* 8140D54C | 4C C6 31 82 */	crclr cr1eq
/* 8140D550 | 48 1E B8 69 */	bl fn_815F8DB8
.L_8140D554:
/* 8140D554 | 7E C4 B3 78 */	mr r4, r22
/* 8140D558 | 7E A5 AB 78 */	mr r5, r21
/* 8140D55C | 38 7B 00 B8 */	addi r3, r27, 0xb8
/* 8140D560 | 48 00 1A 31 */	bl init__12WaveFileAiffFPCvUl
/* 8140D564 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140D568 | 40 82 00 08 */	bne .L_8140D570
/* 8140D56C | 48 00 01 48 */	b .L_8140D6B4
.L_8140D570:
/* 8140D570 | 81 9B 00 B8 */	lwz r12, 0xb8(r27)
/* 8140D574 | 38 7B 00 B8 */	addi r3, r27, 0xb8
/* 8140D578 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8140D57C | 7D 89 03 A6 */	mtctr r12
/* 8140D580 | 4E 80 04 21 */	bctrl
/* 8140D584 | 38 00 00 01 */	li r0, 0x1
/* 8140D588 | 90 7B 00 9C */	stw r3, 0x9c(r27)
/* 8140D58C | 38 7B 00 B8 */	addi r3, r27, 0xb8
/* 8140D590 | 90 1B 00 A0 */	stw r0, 0xa0(r27)
/* 8140D594 | 81 9B 00 B8 */	lwz r12, 0xb8(r27)
/* 8140D598 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8140D59C | 7D 89 03 A6 */	mtctr r12
/* 8140D5A0 | 4E 80 04 21 */	bctrl
/* 8140D5A4 | FC 20 08 1E */	fctiwz f1, f1
/* 8140D5A8 | C0 02 88 A0 */	lfs f0, lbl_81694CA0@sda21(r0)
/* 8140D5AC | 3C A0 81 41 */	lis r5, wavePacketCallback__16SimpleWavePlayerFQ44nw4r3snd10WavePlayer24WavePacketCallbackStatusPQ34nw4r3snd10WavePlayerPQ44nw4r3snd10WavePlayer10WavePacketPv@ha
/* 8140D5B0 | 7F 63 DB 78 */	mr r3, r27
/* 8140D5B4 | D0 1B 00 A8 */	stfs f0, 0xa8(r27)
/* 8140D5B8 | 7F 66 DB 78 */	mr r6, r27
/* 8140D5BC | D8 21 00 18 */	stfd f1, 0x18(r1)
/* 8140D5C0 | 38 9B 00 9C */	addi r4, r27, 0x9c
/* 8140D5C4 | 38 A5 D0 28 */	addi r5, r5, wavePacketCallback__16SimpleWavePlayerFQ44nw4r3snd10WavePlayer24WavePacketCallbackStatusPQ34nw4r3snd10WavePlayerPQ44nw4r3snd10WavePlayer10WavePacketPv@l
/* 8140D5C8 | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8140D5CC | 90 1B 00 A4 */	stw r0, 0xa4(r27)
/* 8140D5D0 | 48 10 22 ED */	bl Setup__Q34nw4r3snd10WavePlayerFRCQ44nw4r3snd10WavePlayer10SetupParamPFQ44nw4r3snd10WavePlayer24WavePacketCallbackStatusPQ34nw4r3snd10WavePlayerPQ44nw4r3snd10WavePlayer10WavePacketPv_vPv
/* 8140D5D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140D5D8 | 7C 7E 1B 78 */	mr r30, r3
/* 8140D5DC | 41 82 00 D4 */	beq .L_8140D6B0
/* 8140D5E0 | 3A A1 00 08 */	addi r21, r1, 0x8
/* 8140D5E4 | 3B A0 00 00 */	li r29, 0x0
/* 8140D5E8 | 3B 40 00 00 */	li r26, 0x0
/* 8140D5EC | 3B 20 00 00 */	li r25, 0x0
/* 8140D5F0 | 3A C0 08 00 */	li r22, 0x800
.L_8140D5F4:
/* 8140D5F4 | 80 1B 00 9C */	lwz r0, 0x9c(r27)
/* 8140D5F8 | 7F FB CA 14 */	add r31, r27, r25
/* 8140D5FC | 3B 80 00 00 */	li r28, 0x0
/* 8140D600 | 3B 00 00 00 */	li r24, 0x0
/* 8140D604 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8140D608 | 3A E0 00 00 */	li r23, 0x0
/* 8140D60C | 48 00 00 40 */	b .L_8140D64C
.L_8140D610:
/* 8140D610 | 81 9B 00 B8 */	lwz r12, 0xb8(r27)
/* 8140D614 | 38 7B 00 B8 */	addi r3, r27, 0xb8
/* 8140D618 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8140D61C | 7D 89 03 A6 */	mtctr r12
/* 8140D620 | 4E 80 04 21 */	bctrl
/* 8140D624 | 54 60 08 3C */	slwi r0, r3, 1
/* 8140D628 | 7C 75 BA 14 */	add r3, r21, r23
/* 8140D62C | 7C 98 03 D6 */	divw r4, r24, r0
/* 8140D630 | 80 1F 01 78 */	lwz r0, 0x178(r31)
/* 8140D634 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 8140D638 | 3B 18 08 00 */	addi r24, r24, 0x800
/* 8140D63C | 3A F7 00 04 */	addi r23, r23, 0x4
/* 8140D640 | 54 84 08 3C */	slwi r4, r4, 1
/* 8140D644 | 7C 00 22 14 */	add r0, r0, r4
/* 8140D648 | 90 03 00 04 */	stw r0, 0x4(r3)
.L_8140D64C:
/* 8140D64C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8140D650 | 7C 1C 00 00 */	cmpw r28, r0
/* 8140D654 | 41 80 FF BC */	blt .L_8140D610
/* 8140D658 | 81 9B 00 B8 */	lwz r12, 0xb8(r27)
/* 8140D65C | 38 7B 00 B8 */	addi r3, r27, 0xb8
/* 8140D660 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8140D664 | 7D 89 03 A6 */	mtctr r12
/* 8140D668 | 4E 80 04 21 */	bctrl
/* 8140D66C | 54 60 08 3C */	slwi r0, r3, 1
/* 8140D670 | 7C 7B D2 14 */	add r3, r27, r26
/* 8140D674 | 7C 16 03 D6 */	divw r0, r22, r0
/* 8140D678 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8140D67C | 38 63 01 18 */	addi r3, r3, 0x118
/* 8140D680 | 54 00 08 3C */	slwi r0, r0, 1
/* 8140D684 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140D688 | 4B FF FE 61 */	bl SetWaveBuffer__Q44nw4r3snd10WavePlayer10WavePacketFRCQ44nw4r3snd10WavePlayer14WaveBufferInfo
/* 8140D68C | 3B BD 00 01 */	addi r29, r29, 0x1
/* 8140D690 | 3B 39 00 04 */	addi r25, r25, 0x4
/* 8140D694 | 2C 1D 00 03 */	cmpwi r29, 0x3
/* 8140D698 | 3B 5A 00 20 */	addi r26, r26, 0x20
/* 8140D69C | 41 80 FF 58 */	blt .L_8140D5F4
/* 8140D6A0 | 38 7B 00 B8 */	addi r3, r27, 0xb8
/* 8140D6A4 | 38 00 00 01 */	li r0, 0x1
/* 8140D6A8 | 90 7B 01 14 */	stw r3, 0x114(r27)
/* 8140D6AC | 98 1B 00 B1 */	stb r0, 0xb1(r27)
.L_8140D6B0:
/* 8140D6B0 | 7F C3 F3 78 */	mr r3, r30
.L_8140D6B4:
/* 8140D6B4 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8140D6B8 | 48 1E BE 3D */	bl _restgpr_21
/* 8140D6BC | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 8140D6C0 | 7C 08 03 A6 */	mtlr r0
/* 8140D6C4 | 38 21 00 50 */	addi r1, r1, 0x50
/* 8140D6C8 | 4E 80 00 20 */	blr
.endfn setAiffData__16SimpleWavePlayerFPvUl

# .text:0x978 | 0x8140D6CC | size: 0x8
# WaveFileAiff::getChannels() const
.fn getChannels__12WaveFileAiffCFv, global
/* 8140D6CC | 80 63 00 0C */	lwz r3, 0xc(r3)
/* 8140D6D0 | 4E 80 00 20 */	blr
.endfn getChannels__12WaveFileAiffCFv

# .text:0x980 | 0x8140D6D4 | size: 0x8
# WaveFileAiff::getSamplingRate() const
.fn getSamplingRate__12WaveFileAiffCFv, global
/* 8140D6D4 | C8 23 00 10 */	lfd f1, 0x10(r3)
/* 8140D6D8 | 4E 80 00 20 */	blr
.endfn getSamplingRate__12WaveFileAiffCFv

# .text:0x988 | 0x8140D6DC | size: 0xCC
# SimpleWavePlayer::start()
.fn start__16SimpleWavePlayerFv, global
/* 8140D6DC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8140D6E0 | 7C 08 02 A6 */	mflr r0
/* 8140D6E4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8140D6E8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8140D6EC | 48 1E BD DD */	bl _savegpr_29
/* 8140D6F0 | 88 03 00 B1 */	lbz r0, 0xb1(r3)
/* 8140D6F4 | 7C 7D 1B 78 */	mr r29, r3
/* 8140D6F8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140D6FC | 41 82 00 90 */	beq .L_8140D78C
/* 8140D700 | 48 10 24 CD */	bl Stop__Q34nw4r3snd10WavePlayerFv
/* 8140D704 | 88 1D 00 B4 */	lbz r0, 0xb4(r29)
/* 8140D708 | 3B E0 00 00 */	li r31, 0x0
/* 8140D70C | 38 60 00 01 */	li r3, 0x1
/* 8140D710 | 93 FD 01 84 */	stw r31, 0x184(r29)
/* 8140D714 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140D718 | 98 7D 00 B2 */	stb r3, 0xb2(r29)
/* 8140D71C | 93 FD 01 88 */	stw r31, 0x188(r29)
/* 8140D720 | 40 82 00 30 */	bne .L_8140D750
/* 8140D724 | 3B C0 00 00 */	li r30, 0x0
.L_8140D728:
/* 8140D728 | 7C 9D FA 14 */	add r4, r29, r31
/* 8140D72C | 7F A3 EB 78 */	mr r3, r29
/* 8140D730 | 7F A5 EB 78 */	mr r5, r29
/* 8140D734 | 38 84 01 18 */	addi r4, r4, 0x118
/* 8140D738 | 4B FF F6 1D */	bl MakeWave__16SimpleWavePlayerFPQ34nw4r3snd10WavePlayerPQ44nw4r3snd10WavePlayer10WavePacketPv
/* 8140D73C | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8140D740 | 3B FF 00 20 */	addi r31, r31, 0x20
/* 8140D744 | 2C 1E 00 03 */	cmpwi r30, 0x3
/* 8140D748 | 41 80 FF E0 */	blt .L_8140D728
/* 8140D74C | 48 00 00 30 */	b .L_8140D77C
.L_8140D750:
/* 8140D750 | 3B C0 00 00 */	li r30, 0x0
/* 8140D754 | 3B E0 00 00 */	li r31, 0x0
.L_8140D758:
/* 8140D758 | 7C 9D FA 14 */	add r4, r29, r31
/* 8140D75C | 38 7D 04 A8 */	addi r3, r29, 0x4a8
/* 8140D760 | 38 84 01 18 */	addi r4, r4, 0x118
/* 8140D764 | 38 A0 00 00 */	li r5, 0x0
/* 8140D768 | 48 12 39 19 */	bl OSSendMessage
/* 8140D76C | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8140D770 | 3B FF 00 20 */	addi r31, r31, 0x20
/* 8140D774 | 2C 1E 00 03 */	cmpwi r30, 0x3
/* 8140D778 | 41 80 FF E0 */	blt .L_8140D758
.L_8140D77C:
/* 8140D77C | 7F A3 EB 78 */	mr r3, r29
/* 8140D780 | 48 10 23 5D */	bl Start__Q34nw4r3snd10WavePlayerFv
/* 8140D784 | 38 60 00 01 */	li r3, 0x1
/* 8140D788 | 48 00 00 08 */	b .L_8140D790
.L_8140D78C:
/* 8140D78C | 38 60 00 00 */	li r3, 0x0
.L_8140D790:
/* 8140D790 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8140D794 | 48 1E BD 81 */	bl _restgpr_29
/* 8140D798 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8140D79C | 7C 08 03 A6 */	mtlr r0
/* 8140D7A0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8140D7A4 | 4E 80 00 20 */	blr
.endfn start__16SimpleWavePlayerFv

# .text:0xA54 | 0x8140D7A8 | size: 0xC
# SimpleWavePlayer::stop()
.fn stop__16SimpleWavePlayerFv, global
/* 8140D7A8 | 38 00 00 00 */	li r0, 0x0
/* 8140D7AC | 98 03 00 B2 */	stb r0, 0xb2(r3)
/* 8140D7B0 | 48 10 24 1C */	b Stop__Q34nw4r3snd10WavePlayerFv
.endfn stop__16SimpleWavePlayerFv

# .text:0xA60 | 0x8140D7B4 | size: 0x94
# SimpleWavePlayer::update()
.fn update__16SimpleWavePlayerFv, global
/* 8140D7B4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140D7B8 | 7C 08 02 A6 */	mflr r0
/* 8140D7BC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140D7C0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8140D7C4 | 7C 7F 1B 78 */	mr r31, r3
/* 8140D7C8 | 88 03 00 B2 */	lbz r0, 0xb2(r3)
/* 8140D7CC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140D7D0 | 41 82 00 64 */	beq .L_8140D834
/* 8140D7D4 | 88 03 00 B5 */	lbz r0, 0xb5(r3)
/* 8140D7D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140D7DC | 40 82 00 3C */	bne .L_8140D818
/* 8140D7E0 | 38 00 00 03 */	li r0, 0x3
/* 8140D7E4 | 38 80 00 00 */	li r4, 0x0
/* 8140D7E8 | 7C 09 03 A6 */	mtctr r0
.L_8140D7EC:
/* 8140D7EC | 7C C3 22 14 */	add r6, r3, r4
/* 8140D7F0 | 88 06 01 2C */	lbz r0, 0x12c(r6)
/* 8140D7F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8140D7F8 | 40 82 00 18 */	bne .L_8140D810
/* 8140D7FC | 7F E3 FB 78 */	mr r3, r31
/* 8140D800 | 7F E5 FB 78 */	mr r5, r31
/* 8140D804 | 38 86 01 18 */	addi r4, r6, 0x118
/* 8140D808 | 4B FF F5 4D */	bl MakeWave__16SimpleWavePlayerFPQ34nw4r3snd10WavePlayerPQ44nw4r3snd10WavePlayer10WavePacketPv
/* 8140D80C | 48 00 00 0C */	b .L_8140D818
.L_8140D810:
/* 8140D810 | 38 84 00 20 */	addi r4, r4, 0x20
/* 8140D814 | 42 00 FF D8 */	bdnz .L_8140D7EC
.L_8140D818:
/* 8140D818 | 80 1F 01 88 */	lwz r0, 0x188(r31)
/* 8140D81C | 28 00 00 02 */	cmplwi r0, 0x2
/* 8140D820 | 40 82 00 14 */	bne .L_8140D834
/* 8140D824 | 38 00 00 00 */	li r0, 0x0
/* 8140D828 | 7F E3 FB 78 */	mr r3, r31
/* 8140D82C | 98 1F 00 B2 */	stb r0, 0xb2(r31)
/* 8140D830 | 48 10 23 9D */	bl Stop__Q34nw4r3snd10WavePlayerFv
.L_8140D834:
/* 8140D834 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140D838 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8140D83C | 7C 08 03 A6 */	mtlr r0
/* 8140D840 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140D844 | 4E 80 00 20 */	blr
.endfn update__16SimpleWavePlayerFv

# .text:0xAF4 | 0x8140D848 | size: 0x58
# SimpleWavePlayer::makeWaveProc(void*)
.fn makeWaveProc__16SimpleWavePlayerFPv, global
/* 8140D848 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8140D84C | 7C 08 02 A6 */	mflr r0
/* 8140D850 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8140D854 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8140D858 | 7C 7F 1B 78 */	mr r31, r3
.L_8140D85C:
/* 8140D85C | 38 7F 04 A8 */	addi r3, r31, 0x4a8
/* 8140D860 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8140D864 | 38 A0 00 01 */	li r5, 0x1
/* 8140D868 | 48 12 38 E1 */	bl OSReceiveMessage
/* 8140D86C | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 8140D870 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8140D874 | 41 82 00 14 */	beq .L_8140D888
/* 8140D878 | 7F E3 FB 78 */	mr r3, r31
/* 8140D87C | 7F E5 FB 78 */	mr r5, r31
/* 8140D880 | 4B FF F4 D5 */	bl MakeWave__16SimpleWavePlayerFPQ34nw4r3snd10WavePlayerPQ44nw4r3snd10WavePlayer10WavePacketPv
/* 8140D884 | 4B FF FF D8 */	b .L_8140D85C
.L_8140D888:
/* 8140D888 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8140D88C | 38 60 00 00 */	li r3, 0x0
/* 8140D890 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8140D894 | 7C 08 03 A6 */	mtlr r0
/* 8140D898 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8140D89C | 4E 80 00 20 */	blr
.endfn makeWaveProc__16SimpleWavePlayerFPv

# .text:0xB4C | 0x8140D8A0 | size: 0x98
# SimpleWavePlayer::makeThread(long, void*, unsigned long)
.fn makeThread__16SimpleWavePlayerFlPvUl, global
/* 8140D8A0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8140D8A4 | 7C 08 02 A6 */	mflr r0
/* 8140D8A8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8140D8AC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8140D8B0 | 48 1E BC 15 */	bl _savegpr_28
/* 8140D8B4 | 7C 9D 23 78 */	mr r29, r4
/* 8140D8B8 | 7C BE 2B 78 */	mr r30, r5
/* 8140D8BC | 7C 7C 1B 78 */	mr r28, r3
/* 8140D8C0 | 38 83 04 C8 */	addi r4, r3, 0x4c8
/* 8140D8C4 | 7C DF 33 78 */	mr r31, r6
/* 8140D8C8 | 38 A0 00 08 */	li r5, 0x8
/* 8140D8CC | 38 63 04 A8 */	addi r3, r3, 0x4a8
/* 8140D8D0 | 48 12 37 51 */	bl OSInitMessageQueue
/* 8140D8D4 | 3C 80 81 41 */	lis r4, makeWaveProc__16SimpleWavePlayerFPv@ha
/* 8140D8D8 | 7F 85 E3 78 */	mr r5, r28
/* 8140D8DC | 7F E7 FB 78 */	mr r7, r31
/* 8140D8E0 | 7F A8 EB 78 */	mr r8, r29
/* 8140D8E4 | 38 7C 01 90 */	addi r3, r28, 0x190
/* 8140D8E8 | 38 84 D8 48 */	addi r4, r4, makeWaveProc__16SimpleWavePlayerFPv@l
/* 8140D8EC | 7C DE FA 14 */	add r6, r30, r31
/* 8140D8F0 | 39 20 00 00 */	li r9, 0x0
/* 8140D8F4 | 48 12 6C 55 */	bl OSCreateThread
/* 8140D8F8 | 30 03 FF FF */	subic r0, r3, 0x1
/* 8140D8FC | 7F E0 19 11 */	subfe. r31, r0, r3
/* 8140D900 | 41 82 00 14 */	beq .L_8140D914
/* 8140D904 | 38 7C 01 90 */	addi r3, r28, 0x190
/* 8140D908 | 48 12 73 49 */	bl OSResumeThread
/* 8140D90C | 38 00 00 01 */	li r0, 0x1
/* 8140D910 | 98 1C 00 B4 */	stb r0, 0xb4(r28)
.L_8140D914:
/* 8140D914 | 38 1F FF FF */	subi r0, r31, 0x1
/* 8140D918 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8140D91C | 7C 00 00 34 */	cntlzw r0, r0
/* 8140D920 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8140D924 | 48 1E BB ED */	bl _restgpr_28
/* 8140D928 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8140D92C | 7C 08 03 A6 */	mtlr r0
/* 8140D930 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8140D934 | 4E 80 00 20 */	blr
.endfn makeThread__16SimpleWavePlayerFlPvUl

# .text:0xBE4 | 0x8140D938 | size: 0x68
.fn AudioWavePlayer_8140D938, global
/* 8140D938 | 2C 05 00 0A */	cmpwi r5, 0xa
/* 8140D93C | 38 C0 00 00 */	li r6, 0x0
/* 8140D940 | 41 82 00 50 */	beq .L_8140D990
/* 8140D944 | 40 80 00 10 */	bge .L_8140D954
/* 8140D948 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8140D94C | 41 82 00 14 */	beq .L_8140D960
/* 8140D950 | 48 00 00 48 */	b .L_8140D998
.L_8140D954:
/* 8140D954 | 2C 05 00 19 */	cmpwi r5, 0x19
/* 8140D958 | 41 82 00 30 */	beq .L_8140D988
/* 8140D95C | 48 00 00 3C */	b .L_8140D998
.L_8140D960:
/* 8140D960 | 38 A0 00 0E */	li r5, 0xe
/* 8140D964 | 54 60 08 3C */	slwi r0, r3, 1
/* 8140D968 | 7C 64 2B 96 */	divwu r3, r4, r5
/* 8140D96C | 7C A3 29 D6 */	mullw r5, r3, r5
/* 8140D970 | 54 63 20 36 */	slwi r3, r3, 4
/* 8140D974 | 7C 85 20 50 */	subf r4, r5, r4
/* 8140D978 | 7C 04 02 14 */	add r0, r4, r0
/* 8140D97C | 7C C0 1A 14 */	add r6, r0, r3
/* 8140D980 | 38 C6 00 02 */	addi r6, r6, 0x2
/* 8140D984 | 48 00 00 14 */	b .L_8140D998
.L_8140D988:
/* 8140D988 | 7C C3 22 14 */	add r6, r3, r4
/* 8140D98C | 48 00 00 0C */	b .L_8140D998
.L_8140D990:
/* 8140D990 | 54 60 F8 7E */	srwi r0, r3, 1
/* 8140D994 | 7C C0 22 14 */	add r6, r0, r4
.L_8140D998:
/* 8140D998 | 7C C3 33 78 */	mr r3, r6
/* 8140D99C | 4E 80 00 20 */	blr
.endfn AudioWavePlayer_8140D938

# .text:0xC4C | 0x8140D9A0 | size: 0x34
# nw4r::ut::AutoInterruptLock::AutoInterruptLock()
.fn __ct__Q34nw4r2ut17AutoInterruptLockFv, weak
/* 8140D9A0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140D9A4 | 7C 08 02 A6 */	mflr r0
/* 8140D9A8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140D9AC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8140D9B0 | 7C 7F 1B 78 */	mr r31, r3
/* 8140D9B4 | 48 12 2E D1 */	bl OSDisableInterrupts
/* 8140D9B8 | 90 7F 00 00 */	stw r3, 0x0(r31)
/* 8140D9BC | 7F E3 FB 78 */	mr r3, r31
/* 8140D9C0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8140D9C4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140D9C8 | 7C 08 03 A6 */	mtlr r0
/* 8140D9CC | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140D9D0 | 4E 80 00 20 */	blr
.endfn __ct__Q34nw4r2ut17AutoInterruptLockFv

# .text:0xC80 | 0x8140D9D4 | size: 0x58
# nw4r::ut::AutoInterruptLock::~AutoInterruptLock()
.fn __dt__Q34nw4r2ut17AutoInterruptLockFv, weak
/* 8140D9D4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8140D9D8 | 7C 08 02 A6 */	mflr r0
/* 8140D9DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140D9E0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8140D9E4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8140D9E8 | 7C 9F 23 78 */	mr r31, r4
/* 8140D9EC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8140D9F0 | 7C 7E 1B 78 */	mr r30, r3
/* 8140D9F4 | 41 82 00 1C */	beq .L_8140DA10
/* 8140D9F8 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8140D9FC | 48 12 2E B1 */	bl OSRestoreInterrupts
/* 8140DA00 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8140DA04 | 40 81 00 0C */	ble .L_8140DA10
/* 8140DA08 | 7F C3 F3 78 */	mr r3, r30
/* 8140DA0C | 48 1E A6 D9 */	bl __dl__FPv
.L_8140DA10:
/* 8140DA10 | 7F C3 F3 78 */	mr r3, r30
/* 8140DA14 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8140DA18 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8140DA1C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8140DA20 | 7C 08 03 A6 */	mtlr r0
/* 8140DA24 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8140DA28 | 4E 80 00 20 */	blr
.endfn __dt__Q34nw4r2ut17AutoInterruptLockFv

# 0x81658B90..0x81658BD0 | size: 0x40
.data
.balign 8

# .data:0x0 | 0x81658B90 | size: 0x14
.obj lbl_81658B90, global
	.string "AudioWavePlayer.cpp"
.endobj lbl_81658B90

# .data:0x14 | 0x81658BA4 | size: 0x13
.obj lbl_81658BA4, global
	.string "wavebufsize>=wsize"
.endobj lbl_81658BA4

# .data:0x27 | 0x81658BB7 | size: 0xD
.obj lbl_81658BB7, global
	.4byte 0x6D497353
	.4byte 0x65744275
	.4byte 0x66000000
	.byte 0x00
.endobj lbl_81658BB7

# .data:0x34 | 0x81658BC4 | size: 0xC
# SimpleWavePlayer::__vtable
.obj __vt__16SimpleWavePlayer, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__16SimpleWavePlayerFv
.endobj __vt__16SimpleWavePlayer

# 0x81694CA0..0x81694CA8 | size: 0x8
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694CA0 | size: 0x4
.obj lbl_81694CA0, global
	.float 1
.endobj lbl_81694CA0

# .sdata2:0x4 | 0x81694CA4 | size: 0x4
.obj gap_09_81694CA4_sdata2, global
.hidden gap_09_81694CA4_sdata2
	.4byte 0x00000000
.endobj gap_09_81694CA4_sdata2
