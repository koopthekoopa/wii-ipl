.include "macros.inc"
.file "snd_NandSoundArchive.cpp"

# 0x81502CEC..0x81503508 | size: 0x81C
.text
.balign 4

# .text:0x0 | 0x81502CEC | size: 0x4C
# nw4r::snd::NandSoundArchive::NandSoundArchive()
.fn __ct__Q34nw4r3snd16NandSoundArchiveFv, global
/* 81502CEC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81502CF0 | 7C 08 02 A6 */	mflr r0
/* 81502CF4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81502CF8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81502CFC | 7C 7F 1B 78 */	mr r31, r3
/* 81502D00 | 48 00 34 6D */	bl __ct__Q34nw4r3snd12SoundArchiveFv
/* 81502D04 | 3C 80 81 67 */	lis r4, __vt__Q34nw4r3snd16NandSoundArchive@ha
/* 81502D08 | 38 7F 01 08 */	addi r3, r31, 0x108
/* 81502D0C | 38 84 F7 B8 */	addi r4, r4, __vt__Q34nw4r3snd16NandSoundArchive@l
/* 81502D10 | 90 9F 00 00 */	stw r4, 0x0(r31)
/* 81502D14 | 48 00 3A 51 */	bl __ct__Q44nw4r3snd6detail22SoundArchiveFileReaderFv
/* 81502D18 | 38 00 00 00 */	li r0, 0x0
/* 81502D1C | 7F E3 FB 78 */	mr r3, r31
/* 81502D20 | 98 1F 01 D8 */	stb r0, 0x1d8(r31)
/* 81502D24 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81502D28 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81502D2C | 7C 08 03 A6 */	mtlr r0
/* 81502D30 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81502D34 | 4E 80 00 20 */	blr
.endfn __ct__Q34nw4r3snd16NandSoundArchiveFv

# .text:0x4C | 0x81502D38 | size: 0x8C
# nw4r::snd::NandSoundArchive::~NandSoundArchive()
.fn __dt__Q34nw4r3snd16NandSoundArchiveFv, global
/* 81502D38 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81502D3C | 7C 08 02 A6 */	mflr r0
/* 81502D40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81502D44 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81502D48 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81502D4C | 7C 9F 23 78 */	mr r31, r4
/* 81502D50 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81502D54 | 7C 7E 1B 78 */	mr r30, r3
/* 81502D58 | 41 82 00 50 */	beq .L_81502DA8
/* 81502D5C | 88 03 01 D8 */	lbz r0, 0x1d8(r3)
/* 81502D60 | 3C 80 81 67 */	lis r4, __vt__Q34nw4r3snd16NandSoundArchive@ha
/* 81502D64 | 38 84 F7 B8 */	addi r4, r4, __vt__Q34nw4r3snd16NandSoundArchive@l
/* 81502D68 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81502D6C | 90 83 00 00 */	stw r4, 0x0(r3)
/* 81502D70 | 41 82 00 14 */	beq .L_81502D84
/* 81502D74 | 38 63 01 4C */	addi r3, r3, 0x14c
/* 81502D78 | 48 06 27 75 */	bl NANDClose
/* 81502D7C | 38 00 00 00 */	li r0, 0x0
/* 81502D80 | 98 1E 01 D8 */	stb r0, 0x1d8(r30)
.L_81502D84:
/* 81502D84 | 7F C3 F3 78 */	mr r3, r30
/* 81502D88 | 48 00 34 65 */	bl Shutdown__Q34nw4r3snd12SoundArchiveFv
/* 81502D8C | 7F C3 F3 78 */	mr r3, r30
/* 81502D90 | 38 80 00 00 */	li r4, 0x0
/* 81502D94 | 48 00 33 FD */	bl __dt__Q34nw4r3snd12SoundArchiveFv
/* 81502D98 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81502D9C | 40 81 00 0C */	ble .L_81502DA8
/* 81502DA0 | 7F C3 F3 78 */	mr r3, r30
/* 81502DA4 | 48 0F 53 41 */	bl __dl__FPv
.L_81502DA8:
/* 81502DA8 | 7F C3 F3 78 */	mr r3, r30
/* 81502DAC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81502DB0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81502DB4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81502DB8 | 7C 08 03 A6 */	mtlr r0
/* 81502DBC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81502DC0 | 4E 80 00 20 */	blr
.endfn __dt__Q34nw4r3snd16NandSoundArchiveFv

# .text:0xD8 | 0x81502DC4 | size: 0x144
# nw4r::snd::NandSoundArchive::Open(const char*)
.fn Open__Q34nw4r3snd16NandSoundArchiveFPCc, global
/* 81502DC4 | 94 21 FE A0 */	stwu r1, -0x160(r1)
/* 81502DC8 | 7C 08 02 A6 */	mflr r0
/* 81502DCC | 90 01 01 64 */	stw r0, 0x164(r1)
/* 81502DD0 | 93 E1 01 5C */	stw r31, 0x15c(r1)
/* 81502DD4 | 93 C1 01 58 */	stw r30, 0x158(r1)
/* 81502DD8 | 93 A1 01 54 */	stw r29, 0x154(r1)
/* 81502DDC | 7C 9D 23 78 */	mr r29, r4
/* 81502DE0 | 93 81 01 50 */	stw r28, 0x150(r1)
/* 81502DE4 | 7C 7C 1B 78 */	mr r28, r3
/* 81502DE8 | 88 03 01 D8 */	lbz r0, 0x1d8(r3)
/* 81502DEC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81502DF0 | 41 82 00 20 */	beq .L_81502E10
/* 81502DF4 | 41 82 00 14 */	beq .L_81502E08
/* 81502DF8 | 38 63 01 4C */	addi r3, r3, 0x14c
/* 81502DFC | 48 06 26 F1 */	bl NANDClose
/* 81502E00 | 38 00 00 00 */	li r0, 0x0
/* 81502E04 | 98 1C 01 D8 */	stb r0, 0x1d8(r28)
.L_81502E08:
/* 81502E08 | 7F 83 E3 78 */	mr r3, r28
/* 81502E0C | 48 00 33 E1 */	bl Shutdown__Q34nw4r3snd12SoundArchiveFv
.L_81502E10:
/* 81502E10 | 7F A3 EB 78 */	mr r3, r29
/* 81502E14 | 38 9C 01 4C */	addi r4, r28, 0x14c
/* 81502E18 | 38 A0 00 01 */	li r5, 0x1
/* 81502E1C | 48 06 24 51 */	bl NANDOpen
/* 81502E20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81502E24 | 41 82 00 0C */	beq .L_81502E30
/* 81502E28 | 38 60 00 00 */	li r3, 0x0
/* 81502E2C | 48 00 00 BC */	b .L_81502EE8
.L_81502E30:
/* 81502E30 | 38 00 00 01 */	li r0, 0x1
/* 81502E34 | 7F 83 E3 78 */	mr r3, r28
/* 81502E38 | 98 1C 01 D8 */	stb r0, 0x1d8(r28)
/* 81502E3C | 48 00 03 2D */	bl LoadFileHeader__Q34nw4r3snd16NandSoundArchiveFv
/* 81502E40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81502E44 | 40 82 00 0C */	bne .L_81502E50
/* 81502E48 | 38 60 00 00 */	li r3, 0x0
/* 81502E4C | 48 00 00 9C */	b .L_81502EE8
.L_81502E50:
/* 81502E50 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81502E54 | 48 06 43 09 */	bl NANDGetCurrentDir
/* 81502E58 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81502E5C | 48 0F 60 A1 */	bl strlen
/* 81502E60 | 7C 7F 1B 78 */	mr r31, r3
/* 81502E64 | 38 61 00 48 */	addi r3, r1, 0x48
/* 81502E68 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81502E6C | 38 BF 00 01 */	addi r5, r31, 0x1
/* 81502E70 | 48 0F F5 55 */	bl strncpy
/* 81502E74 | 7F A3 EB 78 */	mr r3, r29
/* 81502E78 | 48 0F 60 85 */	bl strlen
/* 81502E7C | 37 C3 FF FF */	subic. r30, r3, 0x1
/* 81502E80 | 38 1E 00 01 */	addi r0, r30, 0x1
/* 81502E84 | 7C 7D F2 14 */	add r3, r29, r30
/* 81502E88 | 7C 09 03 A6 */	mtctr r0
/* 81502E8C | 41 80 00 4C */	blt .L_81502ED8
.L_81502E90:
/* 81502E90 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 81502E94 | 7C 00 07 74 */	extsb r0, r0
/* 81502E98 | 2C 00 00 2F */	cmpwi r0, 0x2f
/* 81502E9C | 41 82 00 0C */	beq .L_81502EA8
/* 81502EA0 | 2C 00 00 5C */	cmpwi r0, 0x5c
/* 81502EA4 | 40 82 00 28 */	bne .L_81502ECC
.L_81502EA8:
/* 81502EA8 | 7F A4 EB 78 */	mr r4, r29
/* 81502EAC | 7F C5 F3 78 */	mr r5, r30
/* 81502EB0 | 38 61 00 48 */	addi r3, r1, 0x48
/* 81502EB4 | 48 0F F5 81 */	bl strncat
/* 81502EB8 | 38 61 00 48 */	addi r3, r1, 0x48
/* 81502EBC | 7C 1E FA 14 */	add r0, r30, r31
/* 81502EC0 | 38 80 00 00 */	li r4, 0x0
/* 81502EC4 | 7C 83 01 AE */	stbx r4, r3, r0
/* 81502EC8 | 48 00 00 10 */	b .L_81502ED8
.L_81502ECC:
/* 81502ECC | 3B DE FF FF */	subi r30, r30, 0x1
/* 81502ED0 | 38 63 FF FF */	subi r3, r3, 0x1
/* 81502ED4 | 42 00 FF BC */	bdnz .L_81502E90
.L_81502ED8:
/* 81502ED8 | 7F 83 E3 78 */	mr r3, r28
/* 81502EDC | 38 81 00 48 */	addi r4, r1, 0x48
/* 81502EE0 | 48 00 38 09 */	bl SetExternalFileRoot__Q34nw4r3snd12SoundArchiveFPCc
/* 81502EE4 | 38 60 00 01 */	li r3, 0x1
.L_81502EE8:
/* 81502EE8 | 80 01 01 64 */	lwz r0, 0x164(r1)
/* 81502EEC | 83 E1 01 5C */	lwz r31, 0x15c(r1)
/* 81502EF0 | 83 C1 01 58 */	lwz r30, 0x158(r1)
/* 81502EF4 | 83 A1 01 54 */	lwz r29, 0x154(r1)
/* 81502EF8 | 83 81 01 50 */	lwz r28, 0x150(r1)
/* 81502EFC | 7C 08 03 A6 */	mtlr r0
/* 81502F00 | 38 21 01 60 */	addi r1, r1, 0x160
/* 81502F04 | 4E 80 00 20 */	blr
.endfn Open__Q34nw4r3snd16NandSoundArchiveFPCc

# .text:0x21C | 0x81502F08 | size: 0x4C
# nw4r::snd::NandSoundArchive::Close()
.fn Close__Q34nw4r3snd16NandSoundArchiveFv, global
/* 81502F08 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81502F0C | 7C 08 02 A6 */	mflr r0
/* 81502F10 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81502F14 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81502F18 | 7C 7F 1B 78 */	mr r31, r3
/* 81502F1C | 88 03 01 D8 */	lbz r0, 0x1d8(r3)
/* 81502F20 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81502F24 | 41 82 00 14 */	beq .L_81502F38
/* 81502F28 | 38 63 01 4C */	addi r3, r3, 0x14c
/* 81502F2C | 48 06 25 C1 */	bl NANDClose
/* 81502F30 | 38 00 00 00 */	li r0, 0x0
/* 81502F34 | 98 1F 01 D8 */	stb r0, 0x1d8(r31)
.L_81502F38:
/* 81502F38 | 7F E3 FB 78 */	mr r3, r31
/* 81502F3C | 48 00 32 B1 */	bl Shutdown__Q34nw4r3snd12SoundArchiveFv
/* 81502F40 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81502F44 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81502F48 | 7C 08 03 A6 */	mtlr r0
/* 81502F4C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81502F50 | 4E 80 00 20 */	blr
.endfn Close__Q34nw4r3snd16NandSoundArchiveFv

# .text:0x268 | 0x81502F54 | size: 0xC8
# nw4r::snd::NandSoundArchive::OpenStream(void*, int, unsigned long, unsigned long) const
.fn OpenStream__Q34nw4r3snd16NandSoundArchiveCFPviUlUl, global
/* 81502F54 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81502F58 | 7C 08 02 A6 */	mflr r0
/* 81502F5C | 7C 68 1B 78 */	mr r8, r3
/* 81502F60 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81502F64 | 88 03 01 D8 */	lbz r0, 0x1d8(r3)
/* 81502F68 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81502F6C | 7C FF 3B 78 */	mr r31, r7
/* 81502F70 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81502F74 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81502F78 | 7C DE 33 78 */	mr r30, r6
/* 81502F7C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81502F80 | 7C 9D 23 78 */	mr r29, r4
/* 81502F84 | 40 82 00 0C */	bne .L_81502F90
/* 81502F88 | 38 60 00 00 */	li r3, 0x0
/* 81502F8C | 48 00 00 74 */	b .L_81503000
.L_81502F90:
/* 81502F90 | 28 05 01 78 */	cmplwi r5, 0x178
/* 81502F94 | 40 80 00 0C */	bge .L_81502FA0
/* 81502F98 | 38 60 00 00 */	li r3, 0x0
/* 81502F9C | 48 00 00 64 */	b .L_81503000
.L_81502FA0:
/* 81502FA0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81502FA4 | 41 82 00 58 */	beq .L_81502FFC
/* 81502FA8 | 7F A3 EB 78 */	mr r3, r29
/* 81502FAC | 38 88 01 4C */	addi r4, r8, 0x14c
/* 81502FB0 | 38 A0 00 01 */	li r5, 0x1
/* 81502FB4 | 38 C0 00 00 */	li r6, 0x0
/* 81502FB8 | 48 01 08 89 */	bl fn_81513840
/* 81502FBC | 88 1D 00 04 */	lbz r0, 0x4(r29)
/* 81502FC0 | 3C 60 81 67 */	lis r3, __vt__Q44nw4r3snd16NandSoundArchive14NandFileStream@ha
/* 81502FC4 | 38 63 F7 58 */	addi r3, r3, __vt__Q44nw4r3snd16NandSoundArchive14NandFileStream@l
/* 81502FC8 | 93 DD 01 70 */	stw r30, 0x170(r29)
/* 81502FCC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81502FD0 | 90 7D 00 00 */	stw r3, 0x0(r29)
/* 81502FD4 | 93 FD 01 74 */	stw r31, 0x174(r29)
/* 81502FD8 | 41 82 00 24 */	beq .L_81502FFC
/* 81502FDC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81502FE0 | 40 82 00 0C */	bne .L_81502FEC
/* 81502FE4 | 80 1D 00 14 */	lwz r0, 0x14(r29)
/* 81502FE8 | 90 1D 01 74 */	stw r0, 0x174(r29)
.L_81502FEC:
/* 81502FEC | 80 9D 01 70 */	lwz r4, 0x170(r29)
/* 81502FF0 | 7F A3 EB 78 */	mr r3, r29
/* 81502FF4 | 38 A0 00 00 */	li r5, 0x0
/* 81502FF8 | 48 01 14 09 */	bl fn_81514400
.L_81502FFC:
/* 81502FFC | 7F A3 EB 78 */	mr r3, r29
.L_81503000:
/* 81503000 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81503004 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81503008 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8150300C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81503010 | 7C 08 03 A6 */	mtlr r0
/* 81503014 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81503018 | 4E 80 00 20 */	blr
.endfn OpenStream__Q34nw4r3snd16NandSoundArchiveCFPviUlUl

# .text:0x330 | 0x8150301C | size: 0xEC
# nw4r::snd::NandSoundArchive::OpenExtStream(void*, int, const char*, unsigned long, unsigned long) const
.fn OpenExtStream__Q34nw4r3snd16NandSoundArchiveCFPviPCcUlUl, global
/* 8150301C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81503020 | 7C 08 02 A6 */	mflr r0
/* 81503024 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81503028 | 88 03 01 D8 */	lbz r0, 0x1d8(r3)
/* 8150302C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81503030 | 7D 1F 43 78 */	mr r31, r8
/* 81503034 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81503038 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8150303C | 7C FE 3B 78 */	mr r30, r7
/* 81503040 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 81503044 | 7C 9D 23 78 */	mr r29, r4
/* 81503048 | 40 82 00 0C */	bne .L_81503054
/* 8150304C | 38 60 00 00 */	li r3, 0x0
/* 81503050 | 48 00 00 9C */	b .L_815030EC
.L_81503054:
/* 81503054 | 28 05 01 78 */	cmplwi r5, 0x178
/* 81503058 | 40 80 00 0C */	bge .L_81503064
/* 8150305C | 38 60 00 00 */	li r3, 0x0
/* 81503060 | 48 00 00 8C */	b .L_815030EC
.L_81503064:
/* 81503064 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81503068 | 41 82 00 54 */	beq .L_815030BC
/* 8150306C | 7F A3 EB 78 */	mr r3, r29
/* 81503070 | 7C C4 33 78 */	mr r4, r6
/* 81503074 | 38 A0 00 01 */	li r5, 0x1
/* 81503078 | 48 01 07 59 */	bl fn_815137D0
/* 8150307C | 88 1D 00 04 */	lbz r0, 0x4(r29)
/* 81503080 | 3C 60 81 67 */	lis r3, __vt__Q44nw4r3snd16NandSoundArchive14NandFileStream@ha
/* 81503084 | 38 63 F7 58 */	addi r3, r3, __vt__Q44nw4r3snd16NandSoundArchive14NandFileStream@l
/* 81503088 | 93 DD 01 70 */	stw r30, 0x170(r29)
/* 8150308C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81503090 | 90 7D 00 00 */	stw r3, 0x0(r29)
/* 81503094 | 93 FD 01 74 */	stw r31, 0x174(r29)
/* 81503098 | 41 82 00 24 */	beq .L_815030BC
/* 8150309C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 815030A0 | 40 82 00 0C */	bne .L_815030AC
/* 815030A4 | 80 1D 00 14 */	lwz r0, 0x14(r29)
/* 815030A8 | 90 1D 01 74 */	stw r0, 0x174(r29)
.L_815030AC:
/* 815030AC | 80 9D 01 70 */	lwz r4, 0x170(r29)
/* 815030B0 | 7F A3 EB 78 */	mr r3, r29
/* 815030B4 | 38 A0 00 00 */	li r5, 0x0
/* 815030B8 | 48 01 13 49 */	bl fn_81514400
.L_815030BC:
/* 815030BC | 88 1D 00 04 */	lbz r0, 0x4(r29)
/* 815030C0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 815030C4 | 40 82 00 24 */	bne .L_815030E8
/* 815030C8 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 815030CC | 7F A3 EB 78 */	mr r3, r29
/* 815030D0 | 38 80 FF FF */	li r4, -0x1
/* 815030D4 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 815030D8 | 7D 89 03 A6 */	mtctr r12
/* 815030DC | 4E 80 04 21 */	bctrl
/* 815030E0 | 38 60 00 00 */	li r3, 0x0
/* 815030E4 | 48 00 00 08 */	b .L_815030EC
.L_815030E8:
/* 815030E8 | 7F A3 EB 78 */	mr r3, r29
.L_815030EC:
/* 815030EC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 815030F0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 815030F4 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 815030F8 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 815030FC | 7C 08 03 A6 */	mtlr r0
/* 81503100 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81503104 | 4E 80 00 20 */	blr
.endfn OpenExtStream__Q34nw4r3snd16NandSoundArchiveCFPviPCcUlUl

# .text:0x41C | 0x81503108 | size: 0x58
# nw4r::snd::NandSoundArchive::NandFileStream::~NandFileStream()
.fn __dt__Q44nw4r3snd16NandSoundArchive14NandFileStreamFv, global
/* 81503108 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150310C | 7C 08 02 A6 */	mflr r0
/* 81503110 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81503114 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81503118 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150311C | 7C 9F 23 78 */	mr r31, r4
/* 81503120 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81503124 | 7C 7E 1B 78 */	mr r30, r3
/* 81503128 | 41 82 00 1C */	beq .L_81503144
/* 8150312C | 38 80 00 00 */	li r4, 0x0
/* 81503130 | 48 01 07 81 */	bl fn_815138B0
/* 81503134 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81503138 | 40 81 00 0C */	ble .L_81503144
/* 8150313C | 7F C3 F3 78 */	mr r3, r30
/* 81503140 | 48 0F 4F A5 */	bl __dl__FPv
.L_81503144:
/* 81503144 | 7F C3 F3 78 */	mr r3, r30
/* 81503148 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8150314C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81503150 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81503154 | 7C 08 03 A6 */	mtlr r0
/* 81503158 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150315C | 4E 80 00 20 */	blr
.endfn __dt__Q44nw4r3snd16NandSoundArchive14NandFileStreamFv

# .text:0x474 | 0x81503160 | size: 0x8
# nw4r::snd::NandSoundArchive::detail_GetRequiredStreamBufferSize() const
.fn detail_GetRequiredStreamBufferSize__Q34nw4r3snd16NandSoundArchiveCFv, global
/* 81503160 | 38 60 01 78 */	li r3, 0x178
/* 81503164 | 4E 80 00 20 */	blr
.endfn detail_GetRequiredStreamBufferSize__Q34nw4r3snd16NandSoundArchiveCFv

# .text:0x47C | 0x81503168 | size: 0xBC
# nw4r::snd::NandSoundArchive::LoadFileHeader()
.fn LoadFileHeader__Q34nw4r3snd16NandSoundArchiveFv, global
/* 81503168 | 94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8150316C | 7C 08 02 A6 */	mflr r0
/* 81503170 | 90 01 00 84 */	stw r0, 0x84(r1)
/* 81503174 | 93 E1 00 7C */	stw r31, 0x7c(r1)
/* 81503178 | 93 C1 00 78 */	stw r30, 0x78(r1)
/* 8150317C | 93 A1 00 74 */	stw r29, 0x74(r1)
/* 81503180 | 7C 7D 1B 78 */	mr r29, r3
/* 81503184 | 88 0D AE B4 */	lbz r0, "@GUARD@headerAlignSize$8060"@sda21(r0)
/* 81503188 | 7C 00 07 75 */	extsb. r0, r0
/* 8150318C | 40 82 00 14 */	bne .L_815031A0
/* 81503190 | 38 80 00 40 */	li r4, 0x40
/* 81503194 | 38 00 00 01 */	li r0, 0x1
/* 81503198 | 90 8D AE B0 */	stw r4, headerAlignSize$8060@sda21(r0)
/* 8150319C | 98 0D AE B4 */	stb r0, "@GUARD@headerAlignSize$8060"@sda21(r0)
.L_815031A0:
/* 815031A0 | 38 01 00 27 */	addi r0, r1, 0x27
/* 815031A4 | 38 80 00 00 */	li r4, 0x0
/* 815031A8 | 54 1F 00 34 */	clrrwi r31, r0, 5
/* 815031AC | 38 A0 00 00 */	li r5, 0x0
/* 815031B0 | 38 63 01 4C */	addi r3, r3, 0x14c
/* 815031B4 | 48 06 10 0D */	bl NANDSeek
/* 815031B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 815031BC | 41 82 00 0C */	beq .L_815031C8
/* 815031C0 | 38 60 00 00 */	li r3, 0x0
/* 815031C4 | 48 00 00 44 */	b .L_81503208
.L_815031C8:
/* 815031C8 | 83 CD AE B0 */	lwz r30, headerAlignSize$8060@sda21(r0)
/* 815031CC | 7F E4 FB 78 */	mr r4, r31
/* 815031D0 | 38 7D 01 4C */	addi r3, r29, 0x14c
/* 815031D4 | 7F C5 F3 78 */	mr r5, r30
/* 815031D8 | 48 06 0E 29 */	bl NANDRead
/* 815031DC | 7C 03 F0 40 */	cmplw r3, r30
/* 815031E0 | 41 82 00 0C */	beq .L_815031EC
/* 815031E4 | 38 60 00 00 */	li r3, 0x0
/* 815031E8 | 48 00 00 20 */	b .L_81503208
.L_815031EC:
/* 815031EC | 7F E4 FB 78 */	mr r4, r31
/* 815031F0 | 38 7D 01 08 */	addi r3, r29, 0x108
/* 815031F4 | 48 00 35 95 */	bl Init__Q44nw4r3snd6detail22SoundArchiveFileReaderFPCv
/* 815031F8 | 7F A3 EB 78 */	mr r3, r29
/* 815031FC | 38 9D 01 08 */	addi r4, r29, 0x108
/* 81503200 | 48 00 2F E5 */	bl Setup__Q34nw4r3snd12SoundArchiveFPQ44nw4r3snd6detail22SoundArchiveFileReader
/* 81503204 | 38 60 00 01 */	li r3, 0x1
.L_81503208:
/* 81503208 | 80 01 00 84 */	lwz r0, 0x84(r1)
/* 8150320C | 83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 81503210 | 83 C1 00 78 */	lwz r30, 0x78(r1)
/* 81503214 | 83 A1 00 74 */	lwz r29, 0x74(r1)
/* 81503218 | 7C 08 03 A6 */	mtlr r0
/* 8150321C | 38 21 00 80 */	addi r1, r1, 0x80
/* 81503220 | 4E 80 00 20 */	blr
.endfn LoadFileHeader__Q34nw4r3snd16NandSoundArchiveFv

# .text:0x538 | 0x81503224 | size: 0xB0
# nw4r::snd::NandSoundArchive::LoadHeader(void*, unsigned long)
.fn LoadHeader__Q34nw4r3snd16NandSoundArchiveFPvUl, global
/* 81503224 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81503228 | 7C 08 02 A6 */	mflr r0
/* 8150322C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81503230 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81503234 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81503238 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8150323C | 7C 9D 23 78 */	mr r29, r4
/* 81503240 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 81503244 | 7C 7C 1B 78 */	mr r28, r3
/* 81503248 | 83 C3 01 24 */	lwz r30, 0x124(r3)
/* 8150324C | 83 E3 01 20 */	lwz r31, 0x120(r3)
/* 81503250 | 7C 05 F0 40 */	cmplw r5, r30
/* 81503254 | 40 80 00 0C */	bge .L_81503260
/* 81503258 | 38 60 00 00 */	li r3, 0x0
/* 8150325C | 48 00 00 58 */	b .L_815032B4
.L_81503260:
/* 81503260 | 7F E4 FB 78 */	mr r4, r31
/* 81503264 | 38 A0 00 00 */	li r5, 0x0
/* 81503268 | 38 63 01 4C */	addi r3, r3, 0x14c
/* 8150326C | 48 06 0F 55 */	bl NANDSeek
/* 81503270 | 7C 03 F8 00 */	cmpw r3, r31
/* 81503274 | 41 82 00 0C */	beq .L_81503280
/* 81503278 | 38 60 00 00 */	li r3, 0x0
/* 8150327C | 48 00 00 38 */	b .L_815032B4
.L_81503280:
/* 81503280 | 7F A4 EB 78 */	mr r4, r29
/* 81503284 | 7F C5 F3 78 */	mr r5, r30
/* 81503288 | 38 7C 01 4C */	addi r3, r28, 0x14c
/* 8150328C | 48 06 0D 75 */	bl NANDRead
/* 81503290 | 7C 03 F0 40 */	cmplw r3, r30
/* 81503294 | 41 82 00 0C */	beq .L_815032A0
/* 81503298 | 38 60 00 00 */	li r3, 0x0
/* 8150329C | 48 00 00 18 */	b .L_815032B4
.L_815032A0:
/* 815032A0 | 7F A4 EB 78 */	mr r4, r29
/* 815032A4 | 7F C5 F3 78 */	mr r5, r30
/* 815032A8 | 38 7C 01 08 */	addi r3, r28, 0x108
/* 815032AC | 48 00 36 35 */	bl SetInfoChunk__Q44nw4r3snd6detail22SoundArchiveFileReaderFPCvUl
/* 815032B0 | 38 60 00 01 */	li r3, 0x1
.L_815032B4:
/* 815032B4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 815032B8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 815032BC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 815032C0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 815032C4 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 815032C8 | 7C 08 03 A6 */	mtlr r0
/* 815032CC | 38 21 00 20 */	addi r1, r1, 0x20
/* 815032D0 | 4E 80 00 20 */	blr
.endfn LoadHeader__Q34nw4r3snd16NandSoundArchiveFPvUl

# .text:0x5E8 | 0x815032D4 | size: 0xB0
# nw4r::snd::NandSoundArchive::LoadLabelStringData(void*, unsigned long)
.fn LoadLabelStringData__Q34nw4r3snd16NandSoundArchiveFPvUl, global
/* 815032D4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 815032D8 | 7C 08 02 A6 */	mflr r0
/* 815032DC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 815032E0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 815032E4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 815032E8 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 815032EC | 7C 9D 23 78 */	mr r29, r4
/* 815032F0 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 815032F4 | 7C 7C 1B 78 */	mr r28, r3
/* 815032F8 | 83 C3 01 1C */	lwz r30, 0x11c(r3)
/* 815032FC | 83 E3 01 18 */	lwz r31, 0x118(r3)
/* 81503300 | 7C 05 F0 40 */	cmplw r5, r30
/* 81503304 | 40 80 00 0C */	bge .L_81503310
/* 81503308 | 38 60 00 00 */	li r3, 0x0
/* 8150330C | 48 00 00 58 */	b .L_81503364
.L_81503310:
/* 81503310 | 7F E4 FB 78 */	mr r4, r31
/* 81503314 | 38 A0 00 00 */	li r5, 0x0
/* 81503318 | 38 63 01 4C */	addi r3, r3, 0x14c
/* 8150331C | 48 06 0E A5 */	bl NANDSeek
/* 81503320 | 7C 03 F8 00 */	cmpw r3, r31
/* 81503324 | 41 82 00 0C */	beq .L_81503330
/* 81503328 | 38 60 00 00 */	li r3, 0x0
/* 8150332C | 48 00 00 38 */	b .L_81503364
.L_81503330:
/* 81503330 | 7F A4 EB 78 */	mr r4, r29
/* 81503334 | 7F C5 F3 78 */	mr r5, r30
/* 81503338 | 38 7C 01 4C */	addi r3, r28, 0x14c
/* 8150333C | 48 06 0C C5 */	bl NANDRead
/* 81503340 | 7C 03 F0 40 */	cmplw r3, r30
/* 81503344 | 41 82 00 0C */	beq .L_81503350
/* 81503348 | 38 60 00 00 */	li r3, 0x0
/* 8150334C | 48 00 00 18 */	b .L_81503364
.L_81503350:
/* 81503350 | 7F A4 EB 78 */	mr r4, r29
/* 81503354 | 7F C5 F3 78 */	mr r5, r30
/* 81503358 | 38 7C 01 08 */	addi r3, r28, 0x108
/* 8150335C | 48 00 34 DD */	bl SetStringChunk__Q44nw4r3snd6detail22SoundArchiveFileReaderFPCvUl
/* 81503360 | 38 60 00 01 */	li r3, 0x1
.L_81503364:
/* 81503364 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81503368 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8150336C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81503370 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 81503374 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 81503378 | 7C 08 03 A6 */	mtlr r0
/* 8150337C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81503380 | 4E 80 00 20 */	blr
.endfn LoadLabelStringData__Q34nw4r3snd16NandSoundArchiveFPvUl

# .text:0x698 | 0x81503384 | size: 0x84
# nw4r::snd::NandSoundArchive::NandFileStream::Read(void*, unsigned long)
.fn Read__Q44nw4r3snd16NandSoundArchive14NandFileStreamFPvUl, global
/* 81503384 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81503388 | 7C 08 02 A6 */	mflr r0
/* 8150338C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81503390 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81503394 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81503398 | 7C BE 2B 78 */	mr r30, r5
/* 8150339C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 815033A0 | 7C 9D 23 78 */	mr r29, r4
/* 815033A4 | 80 E3 00 18 */	lwz r7, 0x18(r3)
/* 815033A8 | 80 C3 01 70 */	lwz r6, 0x170(r3)
/* 815033AC | 80 83 01 74 */	lwz r4, 0x174(r3)
/* 815033B0 | 7C 07 2A 14 */	add r0, r7, r5
/* 815033B4 | 7C 86 22 14 */	add r4, r6, r4
/* 815033B8 | 7C 00 20 40 */	cmplw r0, r4
/* 815033BC | 40 81 00 10 */	ble .L_815033CC
/* 815033C0 | 7C 87 20 50 */	subf r4, r7, r4
/* 815033C4 | 38 04 00 1F */	addi r0, r4, 0x1f
/* 815033C8 | 54 1E 00 34 */	clrrwi r30, r0, 5
.L_815033CC:
/* 815033CC | 7F A4 EB 78 */	mr r4, r29
/* 815033D0 | 7F C5 F3 78 */	mr r5, r30
/* 815033D4 | 48 01 0E 01 */	bl fn_815141D4
/* 815033D8 | 7C 7F 1B 78 */	mr r31, r3
/* 815033DC | 7F A3 EB 78 */	mr r3, r29
/* 815033E0 | 7F C4 F3 78 */	mr r4, r30
/* 815033E4 | 48 02 A5 81 */	bl DCStoreRange
/* 815033E8 | 7F E3 FB 78 */	mr r3, r31
/* 815033EC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 815033F0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 815033F4 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 815033F8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 815033FC | 7C 08 03 A6 */	mtlr r0
/* 81503400 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81503404 | 4E 80 00 20 */	blr
.endfn Read__Q44nw4r3snd16NandSoundArchive14NandFileStreamFPvUl

# .text:0x71C | 0x81503408 | size: 0x88
# nw4r::snd::NandSoundArchive::NandFileStream::Seek(long, unsigned long)
.fn Seek__Q44nw4r3snd16NandSoundArchive14NandFileStreamFlUl, global
/* 81503408 | 2C 05 00 01 */	cmpwi r5, 0x1
/* 8150340C | 41 82 00 2C */	beq .L_81503438
/* 81503410 | 40 80 00 10 */	bge .L_81503420
/* 81503414 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81503418 | 40 80 00 14 */	bge .L_8150342C
/* 8150341C | 4E 80 00 20 */	blr
.L_81503420:
/* 81503420 | 2C 05 00 03 */	cmpwi r5, 0x3
/* 81503424 | 4C 80 00 20 */	bgelr
/* 81503428 | 48 00 00 1C */	b .L_81503444
.L_8150342C:
/* 8150342C | 80 03 01 70 */	lwz r0, 0x170(r3)
/* 81503430 | 7C 84 02 14 */	add r4, r4, r0
/* 81503434 | 48 00 00 28 */	b .L_8150345C
.L_81503438:
/* 81503438 | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 8150343C | 7C 84 02 14 */	add r4, r4, r0
/* 81503440 | 48 00 00 1C */	b .L_8150345C
.L_81503444:
/* 81503444 | 80 A3 01 70 */	lwz r5, 0x170(r3)
/* 81503448 | 80 03 01 74 */	lwz r0, 0x174(r3)
/* 8150344C | 7C 05 02 14 */	add r0, r5, r0
/* 81503450 | 7C 84 00 50 */	subf r4, r4, r0
/* 81503454 | 48 00 00 08 */	b .L_8150345C
/* 81503458 | 4E 80 00 20 */	blr
.L_8150345C:
/* 8150345C | 80 A3 01 70 */	lwz r5, 0x170(r3)
/* 81503460 | 7C 04 28 00 */	cmpw r4, r5
/* 81503464 | 40 80 00 0C */	bge .L_81503470
/* 81503468 | 7C A4 2B 78 */	mr r4, r5
/* 8150346C | 48 00 00 18 */	b .L_81503484
.L_81503470:
/* 81503470 | 80 03 01 74 */	lwz r0, 0x174(r3)
/* 81503474 | 7C 05 02 14 */	add r0, r5, r0
/* 81503478 | 7C 04 00 00 */	cmpw r4, r0
/* 8150347C | 40 81 00 08 */	ble .L_81503484
/* 81503480 | 7C 04 03 78 */	mr r4, r0
.L_81503484:
/* 81503484 | 38 A0 00 00 */	li r5, 0x0
/* 81503488 | 48 01 0F 78 */	b fn_81514400
/* 8150348C | 4E 80 00 20 */	blr
.endfn Seek__Q44nw4r3snd16NandSoundArchive14NandFileStreamFlUl

# .text:0x7A4 | 0x81503490 | size: 0x8
# nw4r::ut::NandFileStream::GetBufferAlign() const
.fn GetBufferAlign__Q34nw4r2ut14NandFileStreamCFv, global
/* 81503490 | 38 60 00 20 */	li r3, 0x20
/* 81503494 | 4E 80 00 20 */	blr
.endfn GetBufferAlign__Q34nw4r2ut14NandFileStreamCFv

# .text:0x7AC | 0x81503498 | size: 0x8
# nw4r::ut::NandFileStream::GetSizeAlign() const
.fn GetSizeAlign__Q34nw4r2ut14NandFileStreamCFv, global
/* 81503498 | 38 60 00 20 */	li r3, 0x20
/* 8150349C | 4E 80 00 20 */	blr
.endfn GetSizeAlign__Q34nw4r2ut14NandFileStreamCFv

# .text:0x7B4 | 0x815034A0 | size: 0x8
# nw4r::ut::NandFileStream::GetOffsetAlign() const
.fn GetOffsetAlign__Q34nw4r2ut14NandFileStreamCFv, global
/* 815034A0 | 38 60 00 01 */	li r3, 0x1
/* 815034A4 | 4E 80 00 20 */	blr
.endfn GetOffsetAlign__Q34nw4r2ut14NandFileStreamCFv

# .text:0x7BC | 0x815034A8 | size: 0x8
# nw4r::ut::NandFileStream::CanCancel() const
.fn CanCancel__Q34nw4r2ut14NandFileStreamCFv, global
/* 815034A8 | 38 60 00 00 */	li r3, 0x0
/* 815034AC | 4E 80 00 20 */	blr
.endfn CanCancel__Q34nw4r2ut14NandFileStreamCFv

# .text:0x7C4 | 0x815034B0 | size: 0x8
# nw4r::ut::NandFileStream::CanWrite() const
.fn CanWrite__Q34nw4r2ut14NandFileStreamCFv, global
/* 815034B0 | 88 63 01 69 */	lbz r3, 0x169(r3)
/* 815034B4 | 4E 80 00 20 */	blr
.endfn CanWrite__Q34nw4r2ut14NandFileStreamCFv

# .text:0x7CC | 0x815034B8 | size: 0x8
# nw4r::ut::NandFileStream::CanRead() const
.fn CanRead__Q34nw4r2ut14NandFileStreamCFv, global
/* 815034B8 | 88 63 01 68 */	lbz r3, 0x168(r3)
/* 815034BC | 4E 80 00 20 */	blr
.endfn CanRead__Q34nw4r2ut14NandFileStreamCFv

# .text:0x7D4 | 0x815034C0 | size: 0x8
# nw4r::ut::NandFileStream::CanSeek() const
.fn CanSeek__Q34nw4r2ut14NandFileStreamCFv, global
/* 815034C0 | 38 60 00 01 */	li r3, 0x1
/* 815034C4 | 4E 80 00 20 */	blr
.endfn CanSeek__Q34nw4r2ut14NandFileStreamCFv

# .text:0x7DC | 0x815034C8 | size: 0x8
# nw4r::ut::NandFileStream::CanAsync() const
.fn CanAsync__Q34nw4r2ut14NandFileStreamCFv, global
/* 815034C8 | 38 60 00 01 */	li r3, 0x1
/* 815034CC | 4E 80 00 20 */	blr
.endfn CanAsync__Q34nw4r2ut14NandFileStreamCFv

# .text:0x7E4 | 0x815034D0 | size: 0x8
# nw4r::ut::NandFileStream::IsBusy() const
.fn IsBusy__Q34nw4r2ut14NandFileStreamCFv, global
/* 815034D0 | 88 63 01 6A */	lbz r3, 0x16a(r3)
/* 815034D4 | 4E 80 00 20 */	blr
.endfn IsBusy__Q34nw4r2ut14NandFileStreamCFv

# .text:0x7EC | 0x815034D8 | size: 0x8
# nw4r::ut::NandFileStream::GetRuntimeTypeInfo() const
.fn GetRuntimeTypeInfo__Q34nw4r2ut14NandFileStreamCFv, global
/* 815034D8 | 38 6D AF 28 */	li r3, lbl_81698F68@sda21
/* 815034DC | 4E 80 00 20 */	blr
.endfn GetRuntimeTypeInfo__Q34nw4r2ut14NandFileStreamCFv

# .text:0x7F4 | 0x815034E0 | size: 0x8
# nw4r::snd::NandSoundArchive::NandFileStream::GetSize() const
.fn GetSize__Q44nw4r3snd16NandSoundArchive14NandFileStreamCFv, global
/* 815034E0 | 80 63 01 74 */	lwz r3, 0x174(r3)
/* 815034E4 | 4E 80 00 20 */	blr
.endfn GetSize__Q44nw4r3snd16NandSoundArchive14NandFileStreamCFv

# .text:0x7FC | 0x815034E8 | size: 0x10
# nw4r::snd::NandSoundArchive::NandFileStream::Tell() const
.fn Tell__Q44nw4r3snd16NandSoundArchive14NandFileStreamCFv, global
/* 815034E8 | 80 83 01 70 */	lwz r4, 0x170(r3)
/* 815034EC | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 815034F0 | 7C 64 00 50 */	subf r3, r4, r0
/* 815034F4 | 4E 80 00 20 */	blr
.endfn Tell__Q44nw4r3snd16NandSoundArchive14NandFileStreamCFv

# .text:0x80C | 0x815034F8 | size: 0x8
# nw4r::snd::NandSoundArchive::detail_GetWaveDataFileAddress(unsigned long) const
.fn detail_GetWaveDataFileAddress__Q34nw4r3snd16NandSoundArchiveCFUl, global
/* 815034F8 | 38 60 00 00 */	li r3, 0x0
/* 815034FC | 4E 80 00 20 */	blr
.endfn detail_GetWaveDataFileAddress__Q34nw4r3snd16NandSoundArchiveCFUl

# .text:0x814 | 0x81503500 | size: 0x8
# nw4r::snd::NandSoundArchive::detail_GetFileAddress(unsigned long) const
.fn detail_GetFileAddress__Q34nw4r3snd16NandSoundArchiveCFUl, global
/* 81503500 | 38 60 00 00 */	li r3, 0x0
/* 81503504 | 4E 80 00 20 */	blr
.endfn detail_GetFileAddress__Q34nw4r3snd16NandSoundArchiveCFUl

# 0x8166F758..0x8166F7D8 | size: 0x80
.data
.balign 8

# .data:0x0 | 0x8166F758 | size: 0x60
# nw4r::snd::NandSoundArchive::NandFileStream::__vtable
.obj __vt__Q44nw4r3snd16NandSoundArchive14NandFileStream, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte GetRuntimeTypeInfo__Q34nw4r2ut14NandFileStreamCFv
	.4byte __dt__Q44nw4r3snd16NandSoundArchive14NandFileStreamFv
	.4byte fn_81514184
	.4byte Read__Q44nw4r3snd16NandSoundArchive14NandFileStreamFPvUl
	.4byte fn_81514248
	.4byte fn_815142EC
	.4byte fn_81514358
	.4byte IsBusy__Q34nw4r2ut14NandFileStreamCFv
	.4byte CanAsync__Q34nw4r2ut14NandFileStreamCFv
	.4byte CanRead__Q34nw4r2ut14NandFileStreamCFv
	.4byte CanWrite__Q34nw4r2ut14NandFileStreamCFv
	.4byte GetOffsetAlign__Q34nw4r2ut14NandFileStreamCFv
	.4byte GetSizeAlign__Q34nw4r2ut14NandFileStreamCFv
	.4byte GetBufferAlign__Q34nw4r2ut14NandFileStreamCFv
	.4byte GetSize__Q44nw4r3snd16NandSoundArchive14NandFileStreamCFv
	.4byte Seek__Q44nw4r3snd16NandSoundArchive14NandFileStreamFlUl
	.4byte fn_81512E3C
	.4byte fn_81512E40
	.4byte CanSeek__Q34nw4r2ut14NandFileStreamCFv
	.4byte CanCancel__Q34nw4r2ut14NandFileStreamCFv
	.4byte Tell__Q44nw4r3snd16NandSoundArchive14NandFileStreamCFv
	.4byte 0x00000000
.endobj __vt__Q44nw4r3snd16NandSoundArchive14NandFileStream

# .data:0x60 | 0x8166F7B8 | size: 0x20
# nw4r::snd::NandSoundArchive::__vtable
.obj __vt__Q34nw4r3snd16NandSoundArchive, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q34nw4r3snd16NandSoundArchiveFv
	.4byte detail_GetFileAddress__Q34nw4r3snd16NandSoundArchiveCFUl
	.4byte detail_GetWaveDataFileAddress__Q34nw4r3snd16NandSoundArchiveCFUl
	.4byte detail_GetRequiredStreamBufferSize__Q34nw4r3snd16NandSoundArchiveCFv
	.4byte OpenStream__Q34nw4r3snd16NandSoundArchiveCFPviUlUl
	.4byte OpenExtStream__Q34nw4r3snd16NandSoundArchiveCFPviPCcUlUl
.endobj __vt__Q34nw4r3snd16NandSoundArchive

# 0x81698EF0..0x81698EF8 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698EF0 | size: 0x4
.obj headerAlignSize$8060, local
	.skip 0x4
.endobj headerAlignSize$8060

# .sbss:0x4 | 0x81698EF4 | size: 0x1
.obj "@GUARD@headerAlignSize$8060", local
	.skip 0x1
.endobj "@GUARD@headerAlignSize$8060"

# .sbss:0x5 | 0x81698EF5 | size: 0x3
.obj gap_12_81698EF5_sbss, global
.hidden gap_12_81698EF5_sbss
	.skip 0x3
.endobj gap_12_81698EF5_sbss
