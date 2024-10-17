.include "macros.inc"
.file "snd_SoundSystem.cpp"

# 0x8150BD88..0x8150BE98 | size: 0x110
.text
.balign 4

# .text:0x0 | 0x8150BD88 | size: 0x110
# nw4r::snd::SoundSystem::InitSoundSystem(long, long)
.fn InitSoundSystem__Q34nw4r3snd11SoundSystemFll, global
/* 8150BD88 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150BD8C | 7C 08 02 A6 */	mflr r0
/* 8150BD90 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8150BD94 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8150BD98 | 48 0E D7 29 */	bl _savegpr_27
/* 8150BD9C | 88 0D AE D8 */	lbz r0, "sInitialized__Q34nw4r3snd29@unnamed@snd_SoundSystem_cpp@"@sda21(r0)
/* 8150BDA0 | 7C 7B 1B 78 */	mr r27, r3
/* 8150BDA4 | 7C 9C 23 78 */	mr r28, r4
/* 8150BDA8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150BDAC | 40 82 00 D4 */	bne .L_8150BE80
/* 8150BDB0 | 38 00 00 01 */	li r0, 0x1
/* 8150BDB4 | 98 0D AE D8 */	stb r0, "sInitialized__Q34nw4r3snd29@unnamed@snd_SoundSystem_cpp@"@sda21(r0)
/* 8150BDB8 | 4B FE B8 15 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 8150BDBC | 4B FE B9 29 */	bl Init__Q44nw4r3snd6detail9AxManagerFv
/* 8150BDC0 | 48 05 C4 E5 */	bl fn_815682A4
/* 8150BDC4 | 3C 60 10 62 */	lis r3, 0x1062
/* 8150BDC8 | 3F E0 80 00 */	lis r31, 0x8000
/* 8150BDCC | 3B C3 4D D3 */	addi r30, r3, 0x4dd3
.L_8150BDD0:
/* 8150BDD0 | 48 05 C5 75 */	bl fn_81568344
/* 8150BDD4 | 80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 8150BDD8 | 7C 7D 1B 78 */	mr r29, r3
/* 8150BDDC | 38 60 00 00 */	li r3, 0x0
/* 8150BDE0 | 54 00 F0 BE */	srwi r0, r0, 2
/* 8150BDE4 | 7C 1E 00 16 */	mulhwu r0, r30, r0
/* 8150BDE8 | 54 04 D1 BE */	srwi r4, r0, 6
/* 8150BDEC | 48 02 9D E1 */	bl OSSleepTicks
/* 8150BDF0 | 28 1D 00 01 */	cmplwi r29, 0x1
/* 8150BDF4 | 41 82 FF DC */	beq .L_8150BDD0
/* 8150BDF8 | 48 05 E4 51 */	bl fn_8156A248
/* 8150BDFC | 54 60 06 3E */	clrlwi r0, r3, 24
/* 8150BE00 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8150BE04 | 41 82 00 30 */	beq .L_8150BE34
/* 8150BE08 | 40 80 00 10 */	bge .L_8150BE18
/* 8150BE0C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150BE10 | 40 80 00 14 */	bge .L_8150BE24
/* 8150BE14 | 48 00 00 40 */	b .L_8150BE54
.L_8150BE18:
/* 8150BE18 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 8150BE1C | 40 80 00 38 */	bge .L_8150BE54
/* 8150BE20 | 48 00 00 24 */	b .L_8150BE44
.L_8150BE24:
/* 8150BE24 | 4B FE B7 A9 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 8150BE28 | 38 80 00 03 */	li r4, 0x3
/* 8150BE2C | 4B FE BD 69 */	bl SetOutputMode__Q44nw4r3snd6detail9AxManagerFQ34nw4r3snd10OutputMode
/* 8150BE30 | 48 00 00 30 */	b .L_8150BE60
.L_8150BE34:
/* 8150BE34 | 4B FE B7 99 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 8150BE38 | 38 80 00 00 */	li r4, 0x0
/* 8150BE3C | 4B FE BD 59 */	bl SetOutputMode__Q44nw4r3snd6detail9AxManagerFQ34nw4r3snd10OutputMode
/* 8150BE40 | 48 00 00 20 */	b .L_8150BE60
.L_8150BE44:
/* 8150BE44 | 4B FE B7 89 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 8150BE48 | 38 80 00 02 */	li r4, 0x2
/* 8150BE4C | 4B FE BD 49 */	bl SetOutputMode__Q44nw4r3snd6detail9AxManagerFQ34nw4r3snd10OutputMode
/* 8150BE50 | 48 00 00 10 */	b .L_8150BE60
.L_8150BE54:
/* 8150BE54 | 4B FE B7 79 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 8150BE58 | 38 80 00 00 */	li r4, 0x0
/* 8150BE5C | 4B FE BD 39 */	bl SetOutputMode__Q44nw4r3snd6detail9AxManagerFQ34nw4r3snd10OutputMode
.L_8150BE60:
/* 8150BE60 | 4B FF 7B 2D */	bl GetInstance__Q44nw4r3snd6detail20RemoteSpeakerManagerFv
/* 8150BE64 | 4B FF 7B C1 */	bl Setup__Q44nw4r3snd6detail20RemoteSpeakerManagerFv
/* 8150BE68 | 48 00 31 B1 */	bl GetInstance__Q44nw4r3snd6detail10TaskThreadFv
/* 8150BE6C | 7F 84 E3 78 */	mr r4, r28
/* 8150BE70 | 48 00 31 D9 */	bl Create__Q44nw4r3snd6detail10TaskThreadFl
/* 8150BE74 | 48 00 00 25 */	bl GetInstance__Q44nw4r3snd6detail11SoundThreadFv
/* 8150BE78 | 7F 64 DB 78 */	mr r4, r27
/* 8150BE7C | 48 00 00 F9 */	bl Create__Q44nw4r3snd6detail11SoundThreadFl
.L_8150BE80:
/* 8150BE80 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8150BE84 | 48 0E D6 89 */	bl _restgpr_27
/* 8150BE88 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150BE8C | 7C 08 03 A6 */	mtlr r0
/* 8150BE90 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150BE94 | 4E 80 00 20 */	blr
.endfn InitSoundSystem__Q34nw4r3snd11SoundSystemFll

# 0x81698F18..0x81698F20 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698F18 | size: 0x1
# nw4r::snd::@unnamed@snd_SoundSystem_cpp@::sInitialized
.obj "sInitialized__Q34nw4r3snd29@unnamed@snd_SoundSystem_cpp@", local
	.skip 0x1
.endobj "sInitialized__Q34nw4r3snd29@unnamed@snd_SoundSystem_cpp@"

# .sbss:0x1 | 0x81698F19 | size: 0x7
.obj gap_12_81698F19_sbss, global
.hidden gap_12_81698F19_sbss
	.skip 0x7
.endobj gap_12_81698F19_sbss
