.include "macros.inc"
.file "NHTTP_stdlib_RVL.c"

# 0x81497EAC..0x81498774 | size: 0x8C8
.text
.balign 4

# .text:0x0 | 0x81497EAC | size: 0x4
.fn NHTTPi_memcpy, global
/* 81497EAC | 4B E9 83 84 */	b memcpy
.endfn NHTTPi_memcpy

# .text:0x4 | 0x81497EB0 | size: 0x4
.fn NHTTPi_strlen, global
/* 81497EB0 | 48 16 10 4C */	b strlen
.endfn NHTTPi_strlen

# .text:0x8 | 0x81497EB4 | size: 0x4
.fn NHTTPi_strcmp, global
/* 81497EB4 | 48 16 A5 CC */	b strcmp
.endfn NHTTPi_strcmp

# .text:0xC | 0x81497EB8 | size: 0xC
.fn NHTTPi_memclr, global
/* 81497EB8 | 7C 85 23 78 */	mr r5, r4
/* 81497EBC | 38 80 00 00 */	li r4, 0x0
/* 81497EC0 | 4B E9 84 74 */	b memset
.endfn NHTTPi_memclr

# .text:0x18 | 0x81497EC4 | size: 0xCC
.fn NHTTPi_strnicmp, global
/* 81497EC4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81497EC8 | 39 60 00 41 */	li r11, 0x41
/* 81497ECC | 39 20 00 5A */	li r9, 0x5a
/* 81497ED0 | 39 40 00 00 */	li r10, 0x0
/* 81497ED4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81497ED8 | 7C A9 03 A6 */	mtctr r5
/* 81497EDC | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81497EE0 | 40 81 00 A0 */	ble .L_81497F80
.L_81497EE4:
/* 81497EE4 | 88 C3 00 00 */	lbz r6, 0x0(r3)
/* 81497EE8 | 38 63 00 01 */	addi r3, r3, 0x1
/* 81497EEC | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 81497EF0 | 38 84 00 01 */	addi r4, r4, 0x1
/* 81497EF4 | 7C CC 07 75 */	extsb. r12, r6
/* 81497EF8 | 7C 1F 07 74 */	extsb r31, r0
/* 81497EFC | 41 82 00 0C */	beq .L_81497F08
/* 81497F00 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81497F04 | 40 82 00 1C */	bne .L_81497F20
.L_81497F08:
/* 81497F08 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 81497F0C | 40 82 00 14 */	bne .L_81497F20
/* 81497F10 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81497F14 | 40 82 00 0C */	bne .L_81497F20
/* 81497F18 | 38 A0 00 00 */	li r5, 0x0
/* 81497F1C | 48 00 00 64 */	b .L_81497F80
.L_81497F20:
/* 81497F20 | 7F E7 FE 70 */	srawi r7, r31, 31
/* 81497F24 | 57 E6 0F FE */	srwi r6, r31, 31
/* 81497F28 | 7C 0B F8 10 */	subfc r0, r11, r31
/* 81497F2C | 7D 07 51 14 */	adde r8, r7, r10
/* 81497F30 | 7D 27 FE 70 */	srawi r7, r9, 31
/* 81497F34 | 7C 1F 48 10 */	subfc r0, r31, r9
/* 81497F38 | 7C 07 31 14 */	adde r0, r7, r6
/* 81497F3C | 7D 00 00 39 */	and. r0, r8, r0
/* 81497F40 | 41 82 00 08 */	beq .L_81497F48
/* 81497F44 | 3B FF 00 20 */	addi r31, r31, 0x20
.L_81497F48:
/* 81497F48 | 7D 87 FE 70 */	srawi r7, r12, 31
/* 81497F4C | 55 86 0F FE */	srwi r6, r12, 31
/* 81497F50 | 7C 0B 60 10 */	subfc r0, r11, r12
/* 81497F54 | 7D 07 51 14 */	adde r8, r7, r10
/* 81497F58 | 7D 27 FE 70 */	srawi r7, r9, 31
/* 81497F5C | 7C 0C 48 10 */	subfc r0, r12, r9
/* 81497F60 | 7C 07 31 14 */	adde r0, r7, r6
/* 81497F64 | 7D 00 00 39 */	and. r0, r8, r0
/* 81497F68 | 41 82 00 08 */	beq .L_81497F70
/* 81497F6C | 39 8C 00 20 */	addi r12, r12, 0x20
.L_81497F70:
/* 81497F70 | 7C 0C F8 00 */	cmpw r12, r31
/* 81497F74 | 40 82 00 0C */	bne .L_81497F80
/* 81497F78 | 38 A5 FF FF */	subi r5, r5, 0x1
/* 81497F7C | 42 00 FF 68 */	bdnz .L_81497EE4
.L_81497F80:
/* 81497F80 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81497F84 | 7C A3 2B 78 */	mr r3, r5
/* 81497F88 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81497F8C | 4E 80 00 20 */	blr
.endfn NHTTPi_strnicmp

# .text:0xE4 | 0x81497F90 | size: 0x70
.fn NHTTPi_getUrlEncodedSize, global
/* 81497F90 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 81497F94 | 38 83 00 01 */	addi r4, r3, 0x1
/* 81497F98 | 38 60 00 00 */	li r3, 0x0
/* 81497F9C | 7C 00 07 74 */	extsb r0, r0
/* 81497FA0 | 48 00 00 54 */	b .L_81497FF4
.L_81497FA4:
/* 81497FA4 | 2C 00 00 30 */	cmpwi r0, 0x30
/* 81497FA8 | 41 80 00 0C */	blt .L_81497FB4
/* 81497FAC | 2C 00 00 39 */	cmpwi r0, 0x39
/* 81497FB0 | 40 81 00 2C */	ble .L_81497FDC
.L_81497FB4:
/* 81497FB4 | 2C 00 00 41 */	cmpwi r0, 0x41
/* 81497FB8 | 41 80 00 0C */	blt .L_81497FC4
/* 81497FBC | 2C 00 00 5A */	cmpwi r0, 0x5a
/* 81497FC0 | 40 81 00 1C */	ble .L_81497FDC
.L_81497FC4:
/* 81497FC4 | 2C 00 00 61 */	cmpwi r0, 0x61
/* 81497FC8 | 41 80 00 0C */	blt .L_81497FD4
/* 81497FCC | 2C 00 00 7A */	cmpwi r0, 0x7a
/* 81497FD0 | 40 81 00 0C */	ble .L_81497FDC
.L_81497FD4:
/* 81497FD4 | 2C 00 00 20 */	cmpwi r0, 0x20
/* 81497FD8 | 40 82 00 0C */	bne .L_81497FE4
.L_81497FDC:
/* 81497FDC | 38 63 00 01 */	addi r3, r3, 0x1
/* 81497FE0 | 48 00 00 08 */	b .L_81497FE8
.L_81497FE4:
/* 81497FE4 | 38 63 00 03 */	addi r3, r3, 0x3
.L_81497FE8:
/* 81497FE8 | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 81497FEC | 38 84 00 01 */	addi r4, r4, 0x1
/* 81497FF0 | 7C 00 07 74 */	extsb r0, r0
.L_81497FF4:
/* 81497FF4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81497FF8 | 40 82 FF AC */	bne .L_81497FA4
/* 81497FFC | 4E 80 00 20 */	blr
.endfn NHTTPi_getUrlEncodedSize

# .text:0x154 | 0x81498000 | size: 0x74
.fn NHTTPi_getUrlEncodedSize2, global
/* 81498000 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 81498004 | 38 A3 00 01 */	addi r5, r3, 0x1
/* 81498008 | 38 60 00 00 */	li r3, 0x0
/* 8149800C | 7C 00 07 74 */	extsb r0, r0
/* 81498010 | 7C 89 03 A6 */	mtctr r4
/* 81498014 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81498018 | 4C 81 00 20 */	blelr
.L_8149801C:
/* 8149801C | 2C 00 00 30 */	cmpwi r0, 0x30
/* 81498020 | 41 80 00 0C */	blt .L_8149802C
/* 81498024 | 2C 00 00 39 */	cmpwi r0, 0x39
/* 81498028 | 40 81 00 2C */	ble .L_81498054
.L_8149802C:
/* 8149802C | 2C 00 00 41 */	cmpwi r0, 0x41
/* 81498030 | 41 80 00 0C */	blt .L_8149803C
/* 81498034 | 2C 00 00 5A */	cmpwi r0, 0x5a
/* 81498038 | 40 81 00 1C */	ble .L_81498054
.L_8149803C:
/* 8149803C | 2C 00 00 61 */	cmpwi r0, 0x61
/* 81498040 | 41 80 00 0C */	blt .L_8149804C
/* 81498044 | 2C 00 00 7A */	cmpwi r0, 0x7a
/* 81498048 | 40 81 00 0C */	ble .L_81498054
.L_8149804C:
/* 8149804C | 2C 00 00 20 */	cmpwi r0, 0x20
/* 81498050 | 40 82 00 0C */	bne .L_8149805C
.L_81498054:
/* 81498054 | 38 63 00 01 */	addi r3, r3, 0x1
/* 81498058 | 48 00 00 08 */	b .L_81498060
.L_8149805C:
/* 8149805C | 38 63 00 03 */	addi r3, r3, 0x3
.L_81498060:
/* 81498060 | 88 05 00 00 */	lbz r0, 0x0(r5)
/* 81498064 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81498068 | 7C 00 07 74 */	extsb r0, r0
/* 8149806C | 42 00 FF B0 */	bdnz .L_8149801C
/* 81498070 | 4E 80 00 20 */	blr
.endfn NHTTPi_getUrlEncodedSize2

# .text:0x1C8 | 0x81498074 | size: 0xA0
.fn NHTTPi_encodeUrlChar, global
/* 81498074 | 7C 80 07 74 */	extsb r0, r4
/* 81498078 | 2C 00 00 20 */	cmpwi r0, 0x20
/* 8149807C | 40 82 00 14 */	bne .L_81498090
/* 81498080 | 38 00 00 2B */	li r0, 0x2b
/* 81498084 | 98 03 00 00 */	stb r0, 0x0(r3)
/* 81498088 | 38 60 00 01 */	li r3, 0x1
/* 8149808C | 4E 80 00 20 */	blr
.L_81498090:
/* 81498090 | 2C 00 00 30 */	cmpwi r0, 0x30
/* 81498094 | 41 80 00 0C */	blt .L_814980A0
/* 81498098 | 2C 00 00 39 */	cmpwi r0, 0x39
/* 8149809C | 40 81 00 2C */	ble .L_814980C8
.L_814980A0:
/* 814980A0 | 7C 80 07 74 */	extsb r0, r4
/* 814980A4 | 2C 00 00 41 */	cmpwi r0, 0x41
/* 814980A8 | 41 80 00 0C */	blt .L_814980B4
/* 814980AC | 2C 00 00 5A */	cmpwi r0, 0x5a
/* 814980B0 | 40 81 00 18 */	ble .L_814980C8
.L_814980B4:
/* 814980B4 | 7C 80 07 74 */	extsb r0, r4
/* 814980B8 | 2C 00 00 61 */	cmpwi r0, 0x61
/* 814980BC | 41 80 00 18 */	blt .L_814980D4
/* 814980C0 | 2C 00 00 7A */	cmpwi r0, 0x7a
/* 814980C4 | 41 81 00 10 */	bgt .L_814980D4
.L_814980C8:
/* 814980C8 | 98 83 00 00 */	stb r4, 0x0(r3)
/* 814980CC | 38 60 00 01 */	li r3, 0x1
/* 814980D0 | 4E 80 00 20 */	blr
.L_814980D4:
/* 814980D4 | 54 85 E7 3E */	extrwi r5, r4, 4, 24
/* 814980D8 | 38 00 00 25 */	li r0, 0x25
/* 814980DC | 2C 05 00 0A */	cmpwi r5, 0xa
/* 814980E0 | 98 03 00 00 */	stb r0, 0x0(r3)
/* 814980E4 | 54 84 07 3E */	clrlwi r4, r4, 28
/* 814980E8 | 38 05 00 37 */	addi r0, r5, 0x37
/* 814980EC | 40 80 00 08 */	bge .L_814980F4
/* 814980F0 | 38 05 00 30 */	addi r0, r5, 0x30
.L_814980F4:
/* 814980F4 | 2C 04 00 0A */	cmpwi r4, 0xa
/* 814980F8 | 98 03 00 01 */	stb r0, 0x1(r3)
/* 814980FC | 38 04 00 37 */	addi r0, r4, 0x37
/* 81498100 | 40 80 00 08 */	bge .L_81498108
/* 81498104 | 38 04 00 30 */	addi r0, r4, 0x30
.L_81498108:
/* 81498108 | 98 03 00 02 */	stb r0, 0x2(r3)
/* 8149810C | 38 60 00 03 */	li r3, 0x3
/* 81498110 | 4E 80 00 20 */	blr
.endfn NHTTPi_encodeUrlChar

# .text:0x268 | 0x81498114 | size: 0x124
.fn NHTTPi_strToHex, global
/* 81498114 | 2C 04 00 08 */	cmpwi r4, 0x8
/* 81498118 | 40 81 00 0C */	ble .L_81498124
/* 8149811C | 38 60 FF FF */	li r3, -0x1
/* 81498120 | 4E 80 00 20 */	blr
.L_81498124:
/* 81498124 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 81498128 | 38 A4 FF F8 */	subi r5, r4, 0x8
/* 8149812C | 7C A5 00 34 */	cntlzw r5, r5
/* 81498130 | 7C 06 07 74 */	extsb r6, r0
/* 81498134 | 68 C0 00 37 */	xori r0, r6, 0x37
/* 81498138 | 54 A7 D9 7E */	srwi r7, r5, 5
/* 8149813C | 7C 05 0E 70 */	srawi r5, r0, 1
/* 81498140 | 7C 00 30 38 */	and r0, r0, r6
/* 81498144 | 7C 00 28 50 */	subf r0, r0, r5
/* 81498148 | 54 00 0F FE */	srwi r0, r0, 31
/* 8149814C | 7C E0 00 39 */	and. r0, r7, r0
/* 81498150 | 41 82 00 0C */	beq .L_8149815C
/* 81498154 | 38 60 FF FF */	li r3, -0x1
/* 81498158 | 4E 80 00 20 */	blr
.L_8149815C:
/* 8149815C | 39 60 00 00 */	li r11, 0x0
/* 81498160 | 39 80 00 00 */	li r12, 0x0
/* 81498164 | 39 20 00 41 */	li r9, 0x41
/* 81498168 | 39 00 00 00 */	li r8, 0x0
/* 8149816C | 38 C0 00 5A */	li r6, 0x5a
/* 81498170 | 7C 89 03 A6 */	mtctr r4
/* 81498174 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81498178 | 40 81 00 B8 */	ble .L_81498230
.L_8149817C:
/* 8149817C | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 81498180 | 7C 0A 07 74 */	extsb r10, r0
/* 81498184 | 7D 45 FE 70 */	srawi r5, r10, 31
/* 81498188 | 7C 09 50 10 */	subfc r0, r9, r10
/* 8149818C | 55 44 0F FE */	srwi r4, r10, 31
/* 81498190 | 7C E5 41 14 */	adde r7, r5, r8
/* 81498194 | 7C C5 FE 70 */	srawi r5, r6, 31
/* 81498198 | 7C 0A 30 10 */	subfc r0, r10, r6
/* 8149819C | 7C 05 21 14 */	adde r0, r5, r4
/* 814981A0 | 7C E0 00 39 */	and. r0, r7, r0
/* 814981A4 | 41 82 00 08 */	beq .L_814981AC
/* 814981A8 | 39 4A 00 20 */	addi r10, r10, 0x20
.L_814981AC:
/* 814981AC | 7D 44 07 74 */	extsb r4, r10
/* 814981B0 | 2C 04 00 30 */	cmpwi r4, 0x30
/* 814981B4 | 41 80 00 20 */	blt .L_814981D4
/* 814981B8 | 2C 04 00 39 */	cmpwi r4, 0x39
/* 814981BC | 41 81 00 18 */	bgt .L_814981D4
/* 814981C0 | 55 60 20 36 */	slwi r0, r11, 4
/* 814981C4 | 39 80 00 01 */	li r12, 0x1
/* 814981C8 | 7C 84 02 14 */	add r4, r4, r0
/* 814981CC | 39 64 FF D0 */	subi r11, r4, 0x30
/* 814981D0 | 48 00 00 58 */	b .L_81498228
.L_814981D4:
/* 814981D4 | 2C 04 00 61 */	cmpwi r4, 0x61
/* 814981D8 | 41 80 00 20 */	blt .L_814981F8
/* 814981DC | 2C 04 00 66 */	cmpwi r4, 0x66
/* 814981E0 | 41 81 00 18 */	bgt .L_814981F8
/* 814981E4 | 55 60 20 36 */	slwi r0, r11, 4
/* 814981E8 | 39 80 00 01 */	li r12, 0x1
/* 814981EC | 7C 84 02 14 */	add r4, r4, r0
/* 814981F0 | 39 64 FF A9 */	subi r11, r4, 0x57
/* 814981F4 | 48 00 00 34 */	b .L_81498228
.L_814981F8:
/* 814981F8 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814981FC | 41 82 00 14 */	beq .L_81498210
/* 81498200 | 2C 04 00 20 */	cmpwi r4, 0x20
/* 81498204 | 41 82 00 2C */	beq .L_81498230
/* 81498208 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8149820C | 41 82 00 24 */	beq .L_81498230
.L_81498210:
/* 81498210 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 81498214 | 40 82 00 0C */	bne .L_81498220
/* 81498218 | 2C 04 00 20 */	cmpwi r4, 0x20
/* 8149821C | 41 82 00 0C */	beq .L_81498228
.L_81498220:
/* 81498220 | 38 60 FF FF */	li r3, -0x1
/* 81498224 | 4E 80 00 20 */	blr
.L_81498228:
/* 81498228 | 38 63 00 01 */	addi r3, r3, 0x1
/* 8149822C | 42 00 FF 50 */	bdnz .L_8149817C
.L_81498230:
/* 81498230 | 7D 63 5B 78 */	mr r3, r11
/* 81498234 | 4E 80 00 20 */	blr
.endfn NHTTPi_strToHex

# .text:0x38C | 0x81498238 | size: 0xA0
.fn NHTTPi_strToInt, global
/* 81498238 | 2C 04 00 0A */	cmpwi r4, 0xa
/* 8149823C | 40 81 00 0C */	ble .L_81498248
/* 81498240 | 38 60 FF FF */	li r3, -0x1
/* 81498244 | 4E 80 00 20 */	blr
.L_81498248:
/* 81498248 | 38 A0 00 00 */	li r5, 0x0
/* 8149824C | 38 C0 00 00 */	li r6, 0x0
/* 81498250 | 7C 89 03 A6 */	mtctr r4
/* 81498254 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81498258 | 40 81 00 78 */	ble .L_814982D0
.L_8149825C:
/* 8149825C | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 81498260 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81498264 | 7C 04 07 74 */	extsb r4, r0
/* 81498268 | 41 82 00 14 */	beq .L_8149827C
/* 8149826C | 2C 04 00 20 */	cmpwi r4, 0x20
/* 81498270 | 41 82 00 60 */	beq .L_814982D0
/* 81498274 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81498278 | 41 82 00 58 */	beq .L_814982D0
.L_8149827C:
/* 8149827C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81498280 | 40 82 00 0C */	bne .L_8149828C
/* 81498284 | 2C 04 00 20 */	cmpwi r4, 0x20
/* 81498288 | 41 82 00 40 */	beq .L_814982C8
.L_8149828C:
/* 8149828C | 2C 04 00 30 */	cmpwi r4, 0x30
/* 81498290 | 41 80 00 0C */	blt .L_8149829C
/* 81498294 | 2C 04 00 39 */	cmpwi r4, 0x39
/* 81498298 | 40 81 00 0C */	ble .L_814982A4
.L_8149829C:
/* 8149829C | 38 60 FF FF */	li r3, -0x1
/* 814982A0 | 4E 80 00 20 */	blr
.L_814982A4:
/* 814982A4 | 1C 05 00 0A */	mulli r0, r5, 0xa
/* 814982A8 | 7C A7 2B 78 */	mr r7, r5
/* 814982AC | 38 C0 00 01 */	li r6, 0x1
/* 814982B0 | 7C 84 02 14 */	add r4, r4, r0
/* 814982B4 | 38 A4 FF D0 */	subi r5, r4, 0x30
/* 814982B8 | 7C 07 28 00 */	cmpw r7, r5
/* 814982BC | 40 81 00 0C */	ble .L_814982C8
/* 814982C0 | 38 60 FF FF */	li r3, -0x1
/* 814982C4 | 4E 80 00 20 */	blr
.L_814982C8:
/* 814982C8 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814982CC | 42 00 FF 90 */	bdnz .L_8149825C
.L_814982D0:
/* 814982D0 | 7C A3 2B 78 */	mr r3, r5
/* 814982D4 | 4E 80 00 20 */	blr
.endfn NHTTPi_strToInt

# .text:0x42C | 0x814982D8 | size: 0x17C
.fn NHTTPi_intToStr, global
/* 814982D8 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 814982DC | 7C 08 02 A6 */	mflr r0
/* 814982E0 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 814982E4 | 39 61 00 50 */	addi r11, r1, 0x50
/* 814982E8 | 48 16 11 D1 */	bl _savegpr_25
/* 814982EC | 3C E0 81 62 */	lis r7, lbl_81618C48@ha
/* 814982F0 | 87 A7 8C 48 */	lwzu r29, lbl_81618C48@l(r7)
/* 814982F4 | 38 00 00 03 */	li r0, 0x3
/* 814982F8 | 7C 65 1B 78 */	mr r5, r3
/* 814982FC | 83 C7 00 04 */	lwz r30, 0x4(r7)
/* 81498300 | 3B 81 00 08 */	addi r28, r1, 0x8
/* 81498304 | 83 E7 00 08 */	lwz r31, 0x8(r7)
/* 81498308 | 3B 20 00 00 */	li r25, 0x0
/* 8149830C | 81 87 00 0C */	lwz r12, 0xc(r7)
/* 81498310 | 3B 40 00 00 */	li r26, 0x0
/* 81498314 | 81 67 00 10 */	lwz r11, 0x10(r7)
/* 81498318 | 3B 60 00 00 */	li r27, 0x0
/* 8149831C | 81 47 00 14 */	lwz r10, 0x14(r7)
/* 81498320 | 38 C0 00 30 */	li r6, 0x30
/* 81498324 | 81 27 00 18 */	lwz r9, 0x18(r7)
/* 81498328 | 81 07 00 1C */	lwz r8, 0x1c(r7)
/* 8149832C | 80 E7 00 20 */	lwz r7, 0x20(r7)
/* 81498330 | 93 A1 00 08 */	stw r29, 0x8(r1)
/* 81498334 | 93 C1 00 0C */	stw r30, 0xc(r1)
/* 81498338 | 93 E1 00 10 */	stw r31, 0x10(r1)
/* 8149833C | 91 81 00 14 */	stw r12, 0x14(r1)
/* 81498340 | 91 61 00 18 */	stw r11, 0x18(r1)
/* 81498344 | 91 41 00 1C */	stw r10, 0x1c(r1)
/* 81498348 | 91 21 00 20 */	stw r9, 0x20(r1)
/* 8149834C | 91 01 00 24 */	stw r8, 0x24(r1)
/* 81498350 | 90 E1 00 28 */	stw r7, 0x28(r1)
/* 81498354 | 7C 09 03 A6 */	mtctr r0
.L_81498358:
/* 81498358 | 80 1C 00 00 */	lwz r0, 0x0(r28)
/* 8149835C | 7C 04 00 40 */	cmplw r4, r0
/* 81498360 | 41 80 00 28 */	blt .L_81498388
/* 81498364 | 7D 04 03 96 */	divwu r8, r4, r0
/* 81498368 | 3B 40 00 01 */	li r26, 0x1
/* 8149836C | 3B 39 00 01 */	addi r25, r25, 0x1
/* 81498370 | 7C E8 01 D6 */	mullw r7, r8, r0
/* 81498374 | 38 08 00 30 */	addi r0, r8, 0x30
/* 81498378 | 98 05 00 00 */	stb r0, 0x0(r5)
/* 8149837C | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81498380 | 7C 87 20 50 */	subf r4, r7, r4
/* 81498384 | 48 00 00 18 */	b .L_8149839C
.L_81498388:
/* 81498388 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 8149838C | 41 82 00 10 */	beq .L_8149839C
/* 81498390 | 98 C5 00 00 */	stb r6, 0x0(r5)
/* 81498394 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 81498398 | 38 A5 00 01 */	addi r5, r5, 0x1
.L_8149839C:
/* 8149839C | 80 1C 00 04 */	lwz r0, 0x4(r28)
/* 814983A0 | 7C 04 00 40 */	cmplw r4, r0
/* 814983A4 | 41 80 00 28 */	blt .L_814983CC
/* 814983A8 | 7D 04 03 96 */	divwu r8, r4, r0
/* 814983AC | 3B 40 00 01 */	li r26, 0x1
/* 814983B0 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 814983B4 | 7C E8 01 D6 */	mullw r7, r8, r0
/* 814983B8 | 38 08 00 30 */	addi r0, r8, 0x30
/* 814983BC | 98 05 00 00 */	stb r0, 0x0(r5)
/* 814983C0 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814983C4 | 7C 87 20 50 */	subf r4, r7, r4
/* 814983C8 | 48 00 00 18 */	b .L_814983E0
.L_814983CC:
/* 814983CC | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814983D0 | 41 82 00 10 */	beq .L_814983E0
/* 814983D4 | 98 C5 00 00 */	stb r6, 0x0(r5)
/* 814983D8 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 814983DC | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814983E0:
/* 814983E0 | 80 1C 00 08 */	lwz r0, 0x8(r28)
/* 814983E4 | 7C 04 00 40 */	cmplw r4, r0
/* 814983E8 | 41 80 00 28 */	blt .L_81498410
/* 814983EC | 7D 04 03 96 */	divwu r8, r4, r0
/* 814983F0 | 3B 40 00 01 */	li r26, 0x1
/* 814983F4 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 814983F8 | 7C E8 01 D6 */	mullw r7, r8, r0
/* 814983FC | 38 08 00 30 */	addi r0, r8, 0x30
/* 81498400 | 98 05 00 00 */	stb r0, 0x0(r5)
/* 81498404 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81498408 | 7C 87 20 50 */	subf r4, r7, r4
/* 8149840C | 48 00 00 18 */	b .L_81498424
.L_81498410:
/* 81498410 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 81498414 | 41 82 00 10 */	beq .L_81498424
/* 81498418 | 98 C5 00 00 */	stb r6, 0x0(r5)
/* 8149841C | 3B 39 00 01 */	addi r25, r25, 0x1
/* 81498420 | 38 A5 00 01 */	addi r5, r5, 0x1
.L_81498424:
/* 81498424 | 3B 9C 00 0C */	addi r28, r28, 0xc
/* 81498428 | 3B 7B 00 02 */	addi r27, r27, 0x2
/* 8149842C | 42 00 FF 2C */	bdnz .L_81498358
/* 81498430 | 38 04 00 30 */	addi r0, r4, 0x30
/* 81498434 | 39 61 00 50 */	addi r11, r1, 0x50
/* 81498438 | 7C 03 C9 AE */	stbx r0, r3, r25
/* 8149843C | 38 79 00 01 */	addi r3, r25, 0x1
/* 81498440 | 48 16 10 C5 */	bl _restgpr_25
/* 81498444 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 81498448 | 7C 08 03 A6 */	mtlr r0
/* 8149844C | 38 21 00 50 */	addi r1, r1, 0x50
/* 81498450 | 4E 80 00 20 */	blr
.endfn NHTTPi_intToStr

# .text:0x5A8 | 0x81498454 | size: 0xB4
.fn NHTTPi_compareToken, global
/* 81498454 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81498458 | 39 40 00 41 */	li r10, 0x41
/* 8149845C | 38 E0 00 5A */	li r7, 0x5a
/* 81498460 | 39 20 00 00 */	li r9, 0x0
/* 81498464 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81498468 | 48 00 00 24 */	b .L_8149848C
.L_8149846C:
/* 8149846C | 7F E0 07 75 */	extsb. r0, r31
/* 81498470 | 41 82 00 0C */	beq .L_8149847C
/* 81498474 | 2C 00 00 20 */	cmpwi r0, 0x20
/* 81498478 | 40 82 00 0C */	bne .L_81498484
.L_8149847C:
/* 8149847C | 38 60 00 00 */	li r3, 0x0
/* 81498480 | 48 00 00 7C */	b .L_814984FC
.L_81498484:
/* 81498484 | 38 63 00 01 */	addi r3, r3, 0x1
/* 81498488 | 38 84 00 01 */	addi r4, r4, 0x1
.L_8149848C:
/* 8149848C | 88 04 00 00 */	lbz r0, 0x0(r4)
/* 81498490 | 7C 0B 07 74 */	extsb r11, r0
/* 81498494 | 7D 66 FE 70 */	srawi r6, r11, 31
/* 81498498 | 7C 0A 58 10 */	subfc r0, r10, r11
/* 8149849C | 55 65 0F FE */	srwi r5, r11, 31
/* 814984A0 | 7D 06 49 14 */	adde r8, r6, r9
/* 814984A4 | 39 8B 00 20 */	addi r12, r11, 0x20
/* 814984A8 | 7C E6 FE 70 */	srawi r6, r7, 31
/* 814984AC | 7C 0B 38 10 */	subfc r0, r11, r7
/* 814984B0 | 7C 06 29 14 */	adde r0, r6, r5
/* 814984B4 | 7D 00 00 39 */	and. r0, r8, r0
/* 814984B8 | 40 82 00 08 */	bne .L_814984C0
/* 814984BC | 7D 6C 5B 78 */	mr r12, r11
.L_814984C0:
/* 814984C0 | 8B E3 00 00 */	lbz r31, 0x0(r3)
/* 814984C4 | 7F EB 07 74 */	extsb r11, r31
/* 814984C8 | 7D 66 FE 70 */	srawi r6, r11, 31
/* 814984CC | 7C 0A 58 10 */	subfc r0, r10, r11
/* 814984D0 | 55 65 0F FE */	srwi r5, r11, 31
/* 814984D4 | 7D 06 49 14 */	adde r8, r6, r9
/* 814984D8 | 7C E6 FE 70 */	srawi r6, r7, 31
/* 814984DC | 7C 0B 38 10 */	subfc r0, r11, r7
/* 814984E0 | 7C 06 29 14 */	adde r0, r6, r5
/* 814984E4 | 7D 00 00 39 */	and. r0, r8, r0
/* 814984E8 | 41 82 00 08 */	beq .L_814984F0
/* 814984EC | 39 6B 00 20 */	addi r11, r11, 0x20
.L_814984F0:
/* 814984F0 | 7C 0B 60 00 */	cmpw r11, r12
/* 814984F4 | 41 82 FF 78 */	beq .L_8149846C
/* 814984F8 | 38 60 FF FF */	li r3, -0x1
.L_814984FC:
/* 814984FC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81498500 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81498504 | 4E 80 00 20 */	blr
.endfn NHTTPi_compareToken

# .text:0x65C | 0x81498508 | size: 0x90
.fn NHTTPi_strtonum, global
/* 81498508 | 39 80 00 00 */	li r12, 0x0
/* 8149850C | 39 60 00 00 */	li r11, 0x0
/* 81498510 | 39 20 00 30 */	li r9, 0x30
/* 81498514 | 39 00 00 00 */	li r8, 0x0
/* 81498518 | 38 C0 00 39 */	li r6, 0x39
/* 8149851C | 7C 89 03 A6 */	mtctr r4
/* 81498520 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81498524 | 41 82 00 60 */	beq .L_81498584
.L_81498528:
/* 81498528 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 8149852C | 7C 0A 07 74 */	extsb r10, r0
/* 81498530 | 2C 0A 00 20 */	cmpwi r10, 0x20
/* 81498534 | 41 82 00 48 */	beq .L_8149857C
/* 81498538 | 7D 45 FE 70 */	srawi r5, r10, 31
/* 8149853C | 55 44 0F FE */	srwi r4, r10, 31
/* 81498540 | 7C 09 50 10 */	subfc r0, r9, r10
/* 81498544 | 7C E5 41 14 */	adde r7, r5, r8
/* 81498548 | 7C C5 FE 70 */	srawi r5, r6, 31
/* 8149854C | 7C 0A 30 10 */	subfc r0, r10, r6
/* 81498550 | 7C 05 21 14 */	adde r0, r5, r4
/* 81498554 | 7C E0 00 39 */	and. r0, r7, r0
/* 81498558 | 41 82 00 24 */	beq .L_8149857C
/* 8149855C | 1C 0B 00 0A */	mulli r0, r11, 0xa
/* 81498560 | 39 8C 00 01 */	addi r12, r12, 0x1
/* 81498564 | 2C 0C 00 09 */	cmpwi r12, 0x9
/* 81498568 | 7C 8A 02 14 */	add r4, r10, r0
/* 8149856C | 39 64 FF D0 */	subi r11, r4, 0x30
/* 81498570 | 40 81 00 0C */	ble .L_8149857C
/* 81498574 | 38 60 FF FF */	li r3, -0x1
/* 81498578 | 4E 80 00 20 */	blr
.L_8149857C:
/* 8149857C | 38 63 00 01 */	addi r3, r3, 0x1
/* 81498580 | 42 00 FF A8 */	bdnz .L_81498528
.L_81498584:
/* 81498584 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 81498588 | 38 60 FF FF */	li r3, -0x1
/* 8149858C | 4D 82 00 20 */	beqlr
/* 81498590 | 7D 63 5B 78 */	mr r3, r11
/* 81498594 | 4E 80 00 20 */	blr
.endfn NHTTPi_strtonum

# .text:0x6EC | 0x81498598 | size: 0x1DC
.fn NHTTPi_Base64Encode, global
/* 81498598 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8149859C | 7C 08 02 A6 */	mflr r0
/* 814985A0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814985A4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814985A8 | 48 16 0F 19 */	bl _savegpr_27
/* 814985AC | 7C 7C 1B 78 */	mr r28, r3
/* 814985B0 | 7C 9D 23 78 */	mr r29, r4
/* 814985B4 | 3F E0 81 67 */	lis r31, lbl_8166D160@ha
/* 814985B8 | 7F 9E E3 78 */	mr r30, r28
/* 814985BC | 7F A3 EB 78 */	mr r3, r29
/* 814985C0 | 3B FF D1 60 */	addi r31, r31, lbl_8166D160@l
/* 814985C4 | 48 16 09 39 */	bl strlen
/* 814985C8 | 38 83 00 02 */	addi r4, r3, 0x2
/* 814985CC | 38 00 00 03 */	li r0, 0x3
/* 814985D0 | 7C 84 03 96 */	divwu r4, r4, r0
/* 814985D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814985D8 | 3B 60 00 00 */	li r27, 0x0
/* 814985DC | 40 81 01 40 */	ble .L_8149871C
/* 814985E0 | 54 80 F8 7F */	srwi. r0, r4, 1
/* 814985E4 | 1F 64 00 03 */	mulli r27, r4, 0x3
/* 814985E8 | 7C 09 03 A6 */	mtctr r0
/* 814985EC | 41 82 00 C8 */	beq .L_814986B4
.L_814985F0:
/* 814985F0 | 89 9D 00 00 */	lbz r12, 0x0(r29)
/* 814985F4 | 89 5D 00 01 */	lbz r10, 0x1(r29)
/* 814985F8 | 7D 8B 07 74 */	extsb r11, r12
/* 814985FC | 55 89 26 B6 */	clrlslwi r9, r12, 30, 4
/* 81498600 | 7D 6B 16 70 */	srawi r11, r11, 2
/* 81498604 | 88 FD 00 02 */	lbz r7, 0x2(r29)
/* 81498608 | 7D 7F 58 AE */	lbzx r11, r31, r11
/* 8149860C | 7D 45 07 74 */	extsb r5, r10
/* 81498610 | 55 48 16 BA */	clrlslwi r8, r10, 28, 2
/* 81498614 | 7D 3F 4A 14 */	add r9, r31, r9
/* 81498618 | 99 7E 00 00 */	stb r11, 0x0(r30)
/* 8149861C | 7C AA 26 70 */	srawi r10, r5, 4
/* 81498620 | 7C E6 07 74 */	extsb r6, r7
/* 81498624 | 54 E0 06 BE */	clrlwi r0, r7, 26
/* 81498628 | 7D 2A 48 AE */	lbzx r9, r10, r9
/* 8149862C | 7C BF 42 14 */	add r5, r31, r8
/* 81498630 | 89 9D 00 03 */	lbz r12, 0x3(r29)
/* 81498634 | 7C C6 36 70 */	srawi r6, r6, 6
/* 81498638 | 99 3E 00 01 */	stb r9, 0x1(r30)
/* 8149863C | 7D 8B 07 74 */	extsb r11, r12
/* 81498640 | 89 5D 00 04 */	lbz r10, 0x4(r29)
/* 81498644 | 7C A6 28 AE */	lbzx r5, r6, r5
/* 81498648 | 55 89 26 B6 */	clrlslwi r9, r12, 30, 4
/* 8149864C | 88 FD 00 05 */	lbz r7, 0x5(r29)
/* 81498650 | 7D 6B 16 70 */	srawi r11, r11, 2
/* 81498654 | 98 BE 00 02 */	stb r5, 0x2(r30)
/* 81498658 | 7D 45 07 74 */	extsb r5, r10
/* 8149865C | 55 48 16 BA */	clrlslwi r8, r10, 28, 2
/* 81498660 | 7D 3F 4A 14 */	add r9, r31, r9
/* 81498664 | 7C 1F 00 AE */	lbzx r0, r31, r0
/* 81498668 | 7C AA 26 70 */	srawi r10, r5, 4
/* 8149866C | 7C E6 07 74 */	extsb r6, r7
/* 81498670 | 7C BF 42 14 */	add r5, r31, r8
/* 81498674 | 98 1E 00 03 */	stb r0, 0x3(r30)
/* 81498678 | 7C C6 36 70 */	srawi r6, r6, 6
/* 8149867C | 54 E0 06 BE */	clrlwi r0, r7, 26
/* 81498680 | 3B BD 00 06 */	addi r29, r29, 0x6
/* 81498684 | 7D 7F 58 AE */	lbzx r11, r31, r11
/* 81498688 | 99 7E 00 04 */	stb r11, 0x4(r30)
/* 8149868C | 7D 2A 48 AE */	lbzx r9, r10, r9
/* 81498690 | 99 3E 00 05 */	stb r9, 0x5(r30)
/* 81498694 | 7C A6 28 AE */	lbzx r5, r6, r5
/* 81498698 | 98 BE 00 06 */	stb r5, 0x6(r30)
/* 8149869C | 7C 1F 00 AE */	lbzx r0, r31, r0
/* 814986A0 | 98 1E 00 07 */	stb r0, 0x7(r30)
/* 814986A4 | 3B DE 00 08 */	addi r30, r30, 0x8
/* 814986A8 | 42 00 FF 48 */	bdnz .L_814985F0
/* 814986AC | 70 84 00 01 */	andi. r4, r4, 0x1
/* 814986B0 | 41 82 00 6C */	beq .L_8149871C
.L_814986B4:
/* 814986B4 | 7C 89 03 A6 */	mtctr r4
.L_814986B8:
/* 814986B8 | 89 9D 00 00 */	lbz r12, 0x0(r29)
/* 814986BC | 89 5D 00 01 */	lbz r10, 0x1(r29)
/* 814986C0 | 7D 8B 07 74 */	extsb r11, r12
/* 814986C4 | 88 FD 00 02 */	lbz r7, 0x2(r29)
/* 814986C8 | 7D 6B 16 70 */	srawi r11, r11, 2
/* 814986CC | 55 89 26 B6 */	clrlslwi r9, r12, 30, 4
/* 814986D0 | 7D 7F 58 AE */	lbzx r11, r31, r11
/* 814986D4 | 7D 45 07 74 */	extsb r5, r10
/* 814986D8 | 55 48 16 BA */	clrlslwi r8, r10, 28, 2
/* 814986DC | 7D 3F 4A 14 */	add r9, r31, r9
/* 814986E0 | 99 7E 00 00 */	stb r11, 0x0(r30)
/* 814986E4 | 7C AA 26 70 */	srawi r10, r5, 4
/* 814986E8 | 7C E6 07 74 */	extsb r6, r7
/* 814986EC | 7C BF 42 14 */	add r5, r31, r8
/* 814986F0 | 7D 2A 48 AE */	lbzx r9, r10, r9
/* 814986F4 | 7C C6 36 70 */	srawi r6, r6, 6
/* 814986F8 | 54 E0 06 BE */	clrlwi r0, r7, 26
/* 814986FC | 3B BD 00 03 */	addi r29, r29, 0x3
/* 81498700 | 99 3E 00 01 */	stb r9, 0x1(r30)
/* 81498704 | 7C A6 28 AE */	lbzx r5, r6, r5
/* 81498708 | 98 BE 00 02 */	stb r5, 0x2(r30)
/* 8149870C | 7C 1F 00 AE */	lbzx r0, r31, r0
/* 81498710 | 98 1E 00 03 */	stb r0, 0x3(r30)
/* 81498714 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 81498718 | 42 00 FF A0 */	bdnz .L_814986B8
.L_8149871C:
/* 8149871C | 38 03 00 01 */	addi r0, r3, 0x1
/* 81498720 | 7C 1B 00 00 */	cmpw r27, r0
/* 81498724 | 40 82 00 10 */	bne .L_81498734
/* 81498728 | 38 00 00 3D */	li r0, 0x3d
/* 8149872C | 98 1E FF FF */	stb r0, -0x1(r30)
/* 81498730 | 48 00 00 1C */	b .L_8149874C
.L_81498734:
/* 81498734 | 38 03 00 02 */	addi r0, r3, 0x2
/* 81498738 | 7C 1B 00 00 */	cmpw r27, r0
/* 8149873C | 40 82 00 10 */	bne .L_8149874C
/* 81498740 | 38 00 00 3D */	li r0, 0x3d
/* 81498744 | 98 1E FF FE */	stb r0, -0x2(r30)
/* 81498748 | 98 1E FF FF */	stb r0, -0x1(r30)
.L_8149874C:
/* 8149874C | 38 00 00 00 */	li r0, 0x0
/* 81498750 | 7F 83 E3 78 */	mr r3, r28
/* 81498754 | 98 1E 00 00 */	stb r0, 0x0(r30)
/* 81498758 | 48 16 07 A5 */	bl strlen
/* 8149875C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81498760 | 48 16 0D AD */	bl _restgpr_27
/* 81498764 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81498768 | 7C 08 03 A6 */	mtlr r0
/* 8149876C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81498770 | 4E 80 00 20 */	blr
.endfn NHTTPi_Base64Encode

# 0x81618C48..0x81618C70 | size: 0x28
.rodata
.balign 8

# .rodata:0x0 | 0x81618C48 | size: 0x28
.obj lbl_81618C48, local
	.4byte 0x3B9ACA00
	.4byte 0x05F5E100
	.4byte 0x00989680
	.4byte 0x000F4240
	.4byte 0x000186A0
	.4byte 0x00002710
	.4byte 0x000003E8
	.4byte 0x00000064
	.4byte 0x0000000A
	.4byte 0x00000000
.endobj lbl_81618C48

# 0x8166D160..0x8166D1A8 | size: 0x48
.data
.balign 8

# .data:0x0 | 0x8166D160 | size: 0x48
.obj lbl_8166D160, global
	.4byte 0x41424344
	.4byte 0x45464748
	.4byte 0x494A4B4C
	.4byte 0x4D4E4F50
	.4byte 0x51525354
	.4byte 0x55565758
	.4byte 0x595A6162
	.4byte 0x63646566
	.4byte 0x6768696A
	.4byte 0x6B6C6D6E
	.4byte 0x6F707172
	.4byte 0x73747576
	.4byte 0x7778797A
	.4byte 0x30313233
	.4byte 0x34353637
	.4byte 0x38392B2F
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_8166D160
