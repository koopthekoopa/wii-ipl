.include "macros.inc"
.file "HBMRemoteSpk.cpp"

# 0x81378F38..0x81379658 | size: 0x720
.text
.balign 4

# .text:0x0 | 0x81378F38 | size: 0x60
# homebutton::RemoteSpk::GetPCMFromSeID(int, short*&, int&)
.fn GetPCMFromSeID__Q210homebutton9RemoteSpkFiRPsRi, global
/* 81378F38 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81378F3C | 7C 08 02 A6 */	mflr r0
/* 81378F40 | 38 63 01 D0 */	addi r3, r3, 0x1d0
/* 81378F44 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81378F48 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81378F4C | 7C DF 33 78 */	mr r31, r6
/* 81378F50 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 81378F54 | 7C BE 2B 78 */	mr r30, r5
/* 81378F58 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 81378F5C | 48 1F 81 89 */	bl ARCFastOpen
/* 81378F60 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81378F64 | 48 1F 86 1D */	bl ARCGetStartAddrInMem
/* 81378F68 | 90 7E 00 00 */	stw r3, 0x0(r30)
/* 81378F6C | 38 61 00 08 */	addi r3, r1, 0x8
/* 81378F70 | 48 1F 86 2D */	bl ARCGetLength
/* 81378F74 | 90 7F 00 00 */	stw r3, 0x0(r31)
/* 81378F78 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81378F7C | 48 1F 86 29 */	bl ARCClose
/* 81378F80 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81378F84 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81378F88 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 81378F8C | 7C 08 03 A6 */	mtlr r0
/* 81378F90 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81378F94 | 4E 80 00 20 */	blr
.endfn GetPCMFromSeID__Q210homebutton9RemoteSpkFiRPsRi

# .text:0x60 | 0x81378F98 | size: 0x188
# homebutton::RemoteSpk::UpdateSpeaker(OSAlarm*, OSContext*)
.fn UpdateSpeaker__Q210homebutton9RemoteSpkFP7OSAlarmP9OSContext, global
/* 81378F98 | 94 21 FF 70 */	stwu r1, -0x90(r1)
/* 81378F9C | 7C 08 02 A6 */	mflr r0
/* 81378FA0 | 90 01 00 94 */	stw r0, 0x94(r1)
/* 81378FA4 | 39 61 00 90 */	addi r11, r1, 0x90
/* 81378FA8 | 48 28 05 15 */	bl _savegpr_26
/* 81378FAC | 83 ED A9 88 */	lwz r31, lbl_816989C8@sda21(r0)
/* 81378FB0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81378FB4 | 41 82 01 54 */	beq .L_81379108
/* 81378FB8 | 3B C0 00 00 */	li r30, 0x0
/* 81378FBC | 3B 60 00 00 */	li r27, 0x0
/* 81378FC0 | 3B 40 00 0A */	li r26, 0xa
/* 81378FC4 | 3B 80 FF FF */	li r28, -0x1
.L_81378FC8:
/* 81378FC8 | 80 1F 00 50 */	lwz r0, 0x50(r31)
/* 81378FCC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81378FD0 | 41 82 01 28 */	beq .L_813790F8
/* 81378FD4 | 7F C3 F3 78 */	mr r3, r30
/* 81378FD8 | 48 20 29 01 */	bl fn_8157B8D8
/* 81378FDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81378FE0 | 41 82 01 18 */	beq .L_813790F8
/* 81378FE4 | 48 1B 78 A1 */	bl OSDisableInterrupts
/* 81378FE8 | 7C 7D 1B 78 */	mr r29, r3
/* 81378FEC | 7F C3 F3 78 */	mr r3, r30
/* 81378FF0 | 48 20 41 05 */	bl fn_8157D0F4
/* 81378FF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81378FF8 | 41 82 00 D8 */	beq .L_813790D0
/* 81378FFC | 80 7F 00 54 */	lwz r3, 0x54(r31)
/* 81379000 | 38 81 00 1C */	addi r4, r1, 0x1c
/* 81379004 | 88 BF 00 5D */	lbz r5, 0x5d(r31)
/* 81379008 | 38 00 00 28 */	li r0, 0x28
/* 8137900C | 54 66 F8 7E */	srwi r6, r3, 1
/* 81379010 | 80 7F 00 50 */	lwz r3, 0x50(r31)
/* 81379014 | 28 06 00 28 */	cmplwi r6, 0x28
/* 81379018 | 7C A5 07 74 */	extsb r5, r5
/* 8137901C | 41 81 00 08 */	bgt .L_81379024
/* 81379020 | 7C C0 33 78 */	mr r0, r6
.L_81379024:
/* 81379024 | 7C 09 03 A6 */	mtctr r0
/* 81379028 | 28 00 00 00 */	cmplwi r0, 0x0
/* 8137902C | 40 81 00 20 */	ble .L_8137904C
.L_81379030:
/* 81379030 | A8 03 00 00 */	lha r0, 0x0(r3)
/* 81379034 | 38 63 00 02 */	addi r3, r3, 0x2
/* 81379038 | 7C 00 29 D6 */	mullw r0, r0, r5
/* 8137903C | 7C 00 D3 D6 */	divw r0, r0, r26
/* 81379040 | B0 04 00 00 */	sth r0, 0x0(r4)
/* 81379044 | 38 84 00 02 */	addi r4, r4, 0x2
/* 81379048 | 42 00 FF E8 */	bdnz .L_81379030
.L_8137904C:
/* 8137904C | 28 06 00 28 */	cmplwi r6, 0x28
/* 81379050 | 41 81 00 20 */	bgt .L_81379070
/* 81379054 | 20 06 00 28 */	subfic r0, r6, 0x28
/* 81379058 | 7C 09 03 A6 */	mtctr r0
/* 8137905C | 28 00 00 00 */	cmplwi r0, 0x0
/* 81379060 | 40 81 00 10 */	ble .L_81379070
.L_81379064:
/* 81379064 | B3 64 00 00 */	sth r27, 0x0(r4)
/* 81379068 | 38 84 00 02 */	addi r4, r4, 0x2
/* 8137906C | 42 00 FF F8 */	bdnz .L_81379064
.L_81379070:
/* 81379070 | 88 1F 00 5C */	lbz r0, 0x5c(r31)
/* 81379074 | 38 7F 00 30 */	addi r3, r31, 0x30
/* 81379078 | 38 A1 00 1C */	addi r5, r1, 0x1c
/* 8137907C | 38 E1 00 08 */	addi r7, r1, 0x8
/* 81379080 | 7C 00 00 34 */	cntlzw r0, r0
/* 81379084 | 38 C0 00 28 */	li r6, 0x28
/* 81379088 | 54 04 D9 7E */	srwi r4, r0, 5
/* 8137908C | 48 1F 1C 19 */	bl fn_8156ACA4
/* 81379090 | 7F C3 F3 78 */	mr r3, r30
/* 81379094 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81379098 | 38 A0 00 14 */	li r5, 0x14
/* 8137909C | 48 20 40 DD */	bl fn_8157D178
/* 813790A0 | 9B 7F 00 5C */	stb r27, 0x5c(r31)
/* 813790A4 | 9B 7F 00 5E */	stb r27, 0x5e(r31)
/* 813790A8 | 80 7F 00 50 */	lwz r3, 0x50(r31)
/* 813790AC | 38 03 00 50 */	addi r0, r3, 0x50
/* 813790B0 | 90 1F 00 50 */	stw r0, 0x50(r31)
/* 813790B4 | 80 7F 00 54 */	lwz r3, 0x54(r31)
/* 813790B8 | 34 03 FF B0 */	subic. r0, r3, 0x50
/* 813790BC | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 813790C0 | 41 81 00 30 */	bgt .L_813790F0
/* 813790C4 | 93 9F 00 58 */	stw r28, 0x58(r31)
/* 813790C8 | 93 7F 00 50 */	stw r27, 0x50(r31)
/* 813790CC | 48 00 00 24 */	b .L_813790F0
.L_813790D0:
/* 813790D0 | 88 7F 00 5E */	lbz r3, 0x5e(r31)
/* 813790D4 | 38 63 00 01 */	addi r3, r3, 0x1
/* 813790D8 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813790DC | 98 7F 00 5E */	stb r3, 0x5e(r31)
/* 813790E0 | 7C 00 07 74 */	extsb r0, r0
/* 813790E4 | 2C 00 01 2C */	cmpwi r0, 0x12c
/* 813790E8 | 40 81 00 08 */	ble .L_813790F0
/* 813790EC | 93 7F 00 50 */	stw r27, 0x50(r31)
.L_813790F0:
/* 813790F0 | 7F A3 EB 78 */	mr r3, r29
/* 813790F4 | 48 1B 77 B9 */	bl OSRestoreInterrupts
.L_813790F8:
/* 813790F8 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 813790FC | 3B FF 00 68 */	addi r31, r31, 0x68
/* 81379100 | 2C 1E 00 04 */	cmpwi r30, 0x4
/* 81379104 | 41 80 FE C4 */	blt .L_81378FC8
.L_81379108:
/* 81379108 | 39 61 00 90 */	addi r11, r1, 0x90
/* 8137910C | 48 28 03 FD */	bl _restgpr_26
/* 81379110 | 80 01 00 94 */	lwz r0, 0x94(r1)
/* 81379114 | 7C 08 03 A6 */	mtlr r0
/* 81379118 | 38 21 00 90 */	addi r1, r1, 0x90
/* 8137911C | 4E 80 00 20 */	blr
.endfn UpdateSpeaker__Q210homebutton9RemoteSpkFP7OSAlarmP9OSContext

# .text:0x1E8 | 0x81379120 | size: 0x28
# homebutton::RemoteSpk::ClearPcm()
.fn ClearPcm__Q210homebutton9RemoteSpkFv, global
/* 81379120 | 38 00 00 04 */	li r0, 0x4
/* 81379124 | 80 AD A9 88 */	lwz r5, lbl_816989C8@sda21(r0)
/* 81379128 | 38 80 FF FF */	li r4, -0x1
/* 8137912C | 38 60 00 00 */	li r3, 0x0
/* 81379130 | 7C 09 03 A6 */	mtctr r0
.L_81379134:
/* 81379134 | 90 85 00 58 */	stw r4, 0x58(r5)
/* 81379138 | 90 65 00 50 */	stw r3, 0x50(r5)
/* 8137913C | 38 A5 00 68 */	addi r5, r5, 0x68
/* 81379140 | 42 00 FF F4 */	bdnz .L_81379134
/* 81379144 | 4E 80 00 20 */	blr
.endfn ClearPcm__Q210homebutton9RemoteSpkFv

# .text:0x210 | 0x81379148 | size: 0xB8
# homebutton::RemoteSpk::RemoteSpk(void*)
.fn __ct__Q210homebutton9RemoteSpkFPv, global
/* 81379148 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8137914C | 7C 08 02 A6 */	mflr r0
/* 81379150 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81379154 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81379158 | 48 28 03 61 */	bl _savegpr_25
/* 8137915C | 3C A0 81 64 */	lis r5, __vt__Q210homebutton9RemoteSpk@ha
/* 81379160 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81379164 | 38 A5 57 98 */	addi r5, r5, __vt__Q210homebutton9RemoteSpk@l
/* 81379168 | 7C 79 1B 78 */	mr r25, r3
/* 8137916C | 90 A3 01 F0 */	stw r5, 0x1f0(r3)
/* 81379170 | 90 6D A9 88 */	stw r3, lbl_816989C8@sda21(r0)
/* 81379174 | 41 82 00 20 */	beq .L_81379194
/* 81379178 | 7C 83 23 78 */	mr r3, r4
/* 8137917C | 38 99 01 D0 */	addi r4, r25, 0x1d0
/* 81379180 | 48 1F 7C 21 */	bl ARCInitHandle
/* 81379184 | 30 03 FF FF */	subic r0, r3, 0x1
/* 81379188 | 7C 00 19 10 */	subfe r0, r0, r3
/* 8137918C | 98 19 01 EC */	stb r0, 0x1ec(r25)
/* 81379190 | 48 00 00 0C */	b .L_8137919C
.L_81379194:
/* 81379194 | 38 00 00 00 */	li r0, 0x0
/* 81379198 | 98 03 01 EC */	stb r0, 0x1ec(r3)
.L_8137919C:
/* 8137919C | 38 79 01 A0 */	addi r3, r25, 0x1a0
/* 813791A0 | 48 1B 37 45 */	bl OSCreateAlarm
/* 813791A4 | 3B 40 00 00 */	li r26, 0x0
/* 813791A8 | 3B E0 00 00 */	li r31, 0x0
/* 813791AC | 7F 5C D3 78 */	mr r28, r26
/* 813791B0 | 3B A0 FF FF */	li r29, -0x1
/* 813791B4 | 3B C0 00 01 */	li r30, 0x1
.L_813791B8:
/* 813791B8 | 7F 79 FA 14 */	add r27, r25, r31
/* 813791BC | 7F 63 DB 78 */	mr r3, r27
/* 813791C0 | 48 1B 37 25 */	bl OSCreateAlarm
/* 813791C4 | 93 9B 00 50 */	stw r28, 0x50(r27)
/* 813791C8 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 813791CC | 2C 1A 00 04 */	cmpwi r26, 0x4
/* 813791D0 | 3B FF 00 68 */	addi r31, r31, 0x68
/* 813791D4 | 93 BB 00 58 */	stw r29, 0x58(r27)
/* 813791D8 | 9B DB 00 5C */	stb r30, 0x5c(r27)
/* 813791DC | 9B DB 00 62 */	stb r30, 0x62(r27)
/* 813791E0 | 41 80 FF D8 */	blt .L_813791B8
/* 813791E4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813791E8 | 7F 23 CB 78 */	mr r3, r25
/* 813791EC | 48 28 03 19 */	bl _restgpr_25
/* 813791F0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813791F4 | 7C 08 03 A6 */	mtlr r0
/* 813791F8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813791FC | 4E 80 00 20 */	blr
.endfn __ct__Q210homebutton9RemoteSpkFPv

# .text:0x2C8 | 0x81379200 | size: 0x8C
# homebutton::RemoteSpk::~RemoteSpk()
.fn __dt__Q210homebutton9RemoteSpkFv, global
/* 81379200 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81379204 | 7C 08 02 A6 */	mflr r0
/* 81379208 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8137920C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81379210 | 48 28 02 B5 */	bl _savegpr_28
/* 81379214 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81379218 | 7C 7C 1B 78 */	mr r28, r3
/* 8137921C | 7C 9D 23 78 */	mr r29, r4
/* 81379220 | 41 82 00 50 */	beq .L_81379270
/* 81379224 | 3C 80 81 64 */	lis r4, __vt__Q210homebutton9RemoteSpk@ha
/* 81379228 | 3B E0 00 00 */	li r31, 0x0
/* 8137922C | 38 84 57 98 */	addi r4, r4, __vt__Q210homebutton9RemoteSpk@l
/* 81379230 | 90 83 01 F0 */	stw r4, 0x1f0(r3)
/* 81379234 | 93 ED A9 88 */	stw r31, lbl_816989C8@sda21(r0)
/* 81379238 | 9B E3 01 EC */	stb r31, 0x1ec(r3)
/* 8137923C | 38 63 01 A0 */	addi r3, r3, 0x1a0
/* 81379240 | 48 1B 39 F9 */	bl fn_8152CC38
/* 81379244 | 3B C0 00 00 */	li r30, 0x0
.L_81379248:
/* 81379248 | 7C 7C FA 14 */	add r3, r28, r31
/* 8137924C | 48 1B 39 ED */	bl fn_8152CC38
/* 81379250 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 81379254 | 3B FF 00 68 */	addi r31, r31, 0x68
/* 81379258 | 2C 1E 00 04 */	cmpwi r30, 0x4
/* 8137925C | 41 80 FF EC */	blt .L_81379248
/* 81379260 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81379264 | 40 81 00 0C */	ble .L_81379270
/* 81379268 | 7F 83 E3 78 */	mr r3, r28
/* 8137926C | 48 27 EE 79 */	bl __dl__FPv
.L_81379270:
/* 81379270 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81379274 | 7F 83 E3 78 */	mr r3, r28
/* 81379278 | 48 28 02 99 */	bl _restgpr_28
/* 8137927C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81379280 | 7C 08 03 A6 */	mtlr r0
/* 81379284 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81379288 | 4E 80 00 20 */	blr
.endfn __dt__Q210homebutton9RemoteSpkFv

# .text:0x354 | 0x8137928C | size: 0x88
# homebutton::RemoteSpk::Start()
.fn Start__Q210homebutton9RemoteSpkFv, global
/* 8137928C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81379290 | 7C 08 02 A6 */	mflr r0
/* 81379294 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81379298 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8137929C | 7C 7F 1B 78 */	mr r31, r3
/* 813792A0 | 88 03 01 EC */	lbz r0, 0x1ec(r3)
/* 813792A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813792A8 | 41 82 00 58 */	beq .L_81379300
/* 813792AC | 38 63 01 A0 */	addi r3, r3, 0x1a0
/* 813792B0 | 48 1B 36 35 */	bl OSCreateAlarm
/* 813792B4 | 48 1B C9 CD */	bl OSGetTime
/* 813792B8 | 3C A0 80 00 */	lis r5, 0x8000
/* 813792BC | 3D 20 81 38 */	lis r9, UpdateSpeaker__Q210homebutton9RemoteSpkFP7OSAlarmP9OSContext@ha
/* 813792C0 | 80 05 00 F8 */	lwz r0, 0xf8(r5)
/* 813792C4 | 7C 65 1B 78 */	mr r5, r3
/* 813792C8 | 3C E0 00 02 */	lis r7, 0x2
/* 813792CC | 3C C0 00 66 */	lis r6, 0x66
/* 813792D0 | 54 03 F0 BE */	srwi r3, r0, 2
/* 813792D4 | 39 29 8F 98 */	addi r9, r9, UpdateSpeaker__Q210homebutton9RemoteSpkFP7OSAlarmP9OSContext@l
/* 813792D8 | 38 07 E8 48 */	subi r0, r7, 0x17b8
/* 813792DC | 38 E6 B9 AB */	subi r7, r6, 0x4655
/* 813792E0 | 7D 03 03 96 */	divwu r8, r3, r0
/* 813792E4 | 7C 86 23 78 */	mr r6, r4
/* 813792E8 | 38 00 1F 40 */	li r0, 0x1f40
/* 813792EC | 38 7F 01 A0 */	addi r3, r31, 0x1a0
/* 813792F0 | 7C 88 39 D6 */	mullw r4, r8, r7
/* 813792F4 | 38 E0 00 00 */	li r7, 0x0
/* 813792F8 | 7D 04 03 96 */	divwu r8, r4, r0
/* 813792FC | 48 1B 38 B9 */	bl fn_8152CBB4
.L_81379300:
/* 81379300 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81379304 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81379308 | 7C 08 03 A6 */	mtlr r0
/* 8137930C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81379310 | 4E 80 00 20 */	blr
.endfn Start__Q210homebutton9RemoteSpkFv

# .text:0x3DC | 0x81379314 | size: 0x8
# homebutton::RemoteSpk::Stop()
.fn Stop__Q210homebutton9RemoteSpkFv, global
/* 81379314 | 38 63 01 A0 */	addi r3, r3, 0x1a0
/* 81379318 | 48 1B 39 20 */	b fn_8152CC38
.endfn Stop__Q210homebutton9RemoteSpkFv

# .text:0x3E4 | 0x8137931C | size: 0x30
# homebutton::RemoteSpk::DelaySpeakerOnCallback(OSAlarm*, OSContext*)
.fn DelaySpeakerOnCallback__Q210homebutton9RemoteSpkFP7OSAlarmP9OSContext, global
/* 8137931C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81379320 | 7C 08 02 A6 */	mflr r0
/* 81379324 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81379328 | 48 1B 3D 41 */	bl fn_8152D068
/* 8137932C | 3C A0 81 38 */	lis r5, SpeakerOnCallback__Q210homebutton9RemoteSpkFll@ha
/* 81379330 | 38 80 00 01 */	li r4, 0x1
/* 81379334 | 38 A5 93 4C */	addi r5, r5, SpeakerOnCallback__Q210homebutton9RemoteSpkFll@l
/* 81379338 | 48 20 25 E5 */	bl fn_8157B91C
/* 8137933C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81379340 | 7C 08 03 A6 */	mtlr r0
/* 81379344 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81379348 | 4E 80 00 20 */	blr
.endfn DelaySpeakerOnCallback__Q210homebutton9RemoteSpkFP7OSAlarmP9OSContext

# .text:0x414 | 0x8137934C | size: 0xBC
# homebutton::RemoteSpk::SpeakerOnCallback(long, long)
.fn SpeakerOnCallback__Q210homebutton9RemoteSpkFll, global
/* 8137934C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81379350 | 7C 08 02 A6 */	mflr r0
/* 81379354 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81379358 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8137935C | 80 CD A9 88 */	lwz r6, lbl_816989C8@sda21(r0)
/* 81379360 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81379364 | 41 82 00 90 */	beq .L_813793F4
/* 81379368 | 2C 04 FF FF */	cmpwi r4, -0x1
/* 8137936C | 41 82 00 88 */	beq .L_813793F4
/* 81379370 | 40 80 00 10 */	bge .L_81379380
/* 81379374 | 2C 04 FF FE */	cmpwi r4, -0x2
/* 81379378 | 40 80 00 34 */	bge .L_813793AC
/* 8137937C | 48 00 00 78 */	b .L_813793F4
.L_81379380:
/* 81379380 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 81379384 | 40 80 00 70 */	bge .L_813793F4
/* 81379388 | 1C 03 00 68 */	mulli r0, r3, 0x68
/* 8137938C | 3C A0 81 38 */	lis r5, SpeakerPlayCallback__Q210homebutton9RemoteSpkFll@ha
/* 81379390 | 38 E0 00 01 */	li r7, 0x1
/* 81379394 | 38 A5 94 38 */	addi r5, r5, SpeakerPlayCallback__Q210homebutton9RemoteSpkFll@l
/* 81379398 | 7C C6 02 14 */	add r6, r6, r0
/* 8137939C | 38 80 00 04 */	li r4, 0x4
/* 813793A0 | 98 E6 00 5C */	stb r7, 0x5c(r6)
/* 813793A4 | 48 20 25 79 */	bl fn_8157B91C
/* 813793A8 | 48 00 00 4C */	b .L_813793F4
.L_813793AC:
/* 813793AC | 1C 03 00 68 */	mulli r0, r3, 0x68
/* 813793B0 | 7C 64 1B 78 */	mr r4, r3
/* 813793B4 | 7F E6 02 14 */	add r31, r6, r0
/* 813793B8 | 7F E3 FB 78 */	mr r3, r31
/* 813793BC | 48 1B 3C A5 */	bl fn_8152D060
/* 813793C0 | 7F E3 FB 78 */	mr r3, r31
/* 813793C4 | 48 1B 38 75 */	bl fn_8152CC38
/* 813793C8 | 3C 60 80 00 */	lis r3, 0x8000
/* 813793CC | 3C E0 81 38 */	lis r7, DelaySpeakerOnCallback__Q210homebutton9RemoteSpkFP7OSAlarmP9OSContext@ha
/* 813793D0 | 80 83 00 F8 */	lwz r4, 0xf8(r3)
/* 813793D4 | 38 00 03 E8 */	li r0, 0x3e8
/* 813793D8 | 7F E3 FB 78 */	mr r3, r31
/* 813793DC | 38 E7 93 1C */	addi r7, r7, DelaySpeakerOnCallback__Q210homebutton9RemoteSpkFP7OSAlarmP9OSContext@l
/* 813793E0 | 54 84 F0 BE */	srwi r4, r4, 2
/* 813793E4 | 38 A0 00 00 */	li r5, 0x0
/* 813793E8 | 7C 04 03 96 */	divwu r0, r4, r0
/* 813793EC | 1C C0 00 32 */	mulli r6, r0, 0x32
/* 813793F0 | 48 1B 37 55 */	bl OSSetAlarm
.L_813793F4:
/* 813793F4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813793F8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813793FC | 7C 08 03 A6 */	mtlr r0
/* 81379400 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81379404 | 4E 80 00 20 */	blr
.endfn SpeakerOnCallback__Q210homebutton9RemoteSpkFll

# .text:0x4D0 | 0x81379408 | size: 0x30
# homebutton::RemoteSpk::DelaySpeakerPlayCallback(OSAlarm*, OSContext*)
.fn DelaySpeakerPlayCallback__Q210homebutton9RemoteSpkFP7OSAlarmP9OSContext, global
/* 81379408 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8137940C | 7C 08 02 A6 */	mflr r0
/* 81379410 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81379414 | 48 1B 3C 55 */	bl fn_8152D068
/* 81379418 | 3C A0 81 38 */	lis r5, SpeakerPlayCallback__Q210homebutton9RemoteSpkFll@ha
/* 8137941C | 38 80 00 04 */	li r4, 0x4
/* 81379420 | 38 A5 94 38 */	addi r5, r5, SpeakerPlayCallback__Q210homebutton9RemoteSpkFll@l
/* 81379424 | 48 20 24 F9 */	bl fn_8157B91C
/* 81379428 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8137942C | 7C 08 03 A6 */	mtlr r0
/* 81379430 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81379434 | 4E 80 00 20 */	blr
.endfn DelaySpeakerPlayCallback__Q210homebutton9RemoteSpkFP7OSAlarmP9OSContext

# .text:0x500 | 0x81379438 | size: 0xC0
# homebutton::RemoteSpk::SpeakerPlayCallback(long, long)
.fn SpeakerPlayCallback__Q210homebutton9RemoteSpkFll, global
/* 81379438 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8137943C | 7C 08 02 A6 */	mflr r0
/* 81379440 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81379444 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81379448 | 80 AD A9 88 */	lwz r5, lbl_816989C8@sda21(r0)
/* 8137944C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 81379450 | 41 82 00 94 */	beq .L_813794E4
/* 81379454 | 2C 04 FF FF */	cmpwi r4, -0x1
/* 81379458 | 41 82 00 30 */	beq .L_81379488
/* 8137945C | 40 80 00 10 */	bge .L_8137946C
/* 81379460 | 2C 04 FF FE */	cmpwi r4, -0x2
/* 81379464 | 40 80 00 38 */	bge .L_8137949C
/* 81379468 | 48 00 00 7C */	b .L_813794E4
.L_8137946C:
/* 8137946C | 2C 04 00 01 */	cmpwi r4, 0x1
/* 81379470 | 40 80 00 74 */	bge .L_813794E4
/* 81379474 | 1C 03 00 68 */	mulli r0, r3, 0x68
/* 81379478 | 38 80 00 01 */	li r4, 0x1
/* 8137947C | 7C 65 02 14 */	add r3, r5, r0
/* 81379480 | 98 83 00 62 */	stb r4, 0x62(r3)
/* 81379484 | 48 00 00 60 */	b .L_813794E4
.L_81379488:
/* 81379488 | 1C 03 00 68 */	mulli r0, r3, 0x68
/* 8137948C | 38 80 00 00 */	li r4, 0x0
/* 81379490 | 7C 65 02 14 */	add r3, r5, r0
/* 81379494 | 98 83 00 62 */	stb r4, 0x62(r3)
/* 81379498 | 48 00 00 4C */	b .L_813794E4
.L_8137949C:
/* 8137949C | 1C 03 00 68 */	mulli r0, r3, 0x68
/* 813794A0 | 7C 64 1B 78 */	mr r4, r3
/* 813794A4 | 7F E5 02 14 */	add r31, r5, r0
/* 813794A8 | 7F E3 FB 78 */	mr r3, r31
/* 813794AC | 48 1B 3B B5 */	bl fn_8152D060
/* 813794B0 | 7F E3 FB 78 */	mr r3, r31
/* 813794B4 | 48 1B 37 85 */	bl fn_8152CC38
/* 813794B8 | 3C 60 80 00 */	lis r3, 0x8000
/* 813794BC | 3C E0 81 38 */	lis r7, DelaySpeakerPlayCallback__Q210homebutton9RemoteSpkFP7OSAlarmP9OSContext@ha
/* 813794C0 | 80 83 00 F8 */	lwz r4, 0xf8(r3)
/* 813794C4 | 38 00 03 E8 */	li r0, 0x3e8
/* 813794C8 | 7F E3 FB 78 */	mr r3, r31
/* 813794CC | 38 E7 94 08 */	addi r7, r7, DelaySpeakerPlayCallback__Q210homebutton9RemoteSpkFP7OSAlarmP9OSContext@l
/* 813794D0 | 54 84 F0 BE */	srwi r4, r4, 2
/* 813794D4 | 38 A0 00 00 */	li r5, 0x0
/* 813794D8 | 7C 04 03 96 */	divwu r0, r4, r0
/* 813794DC | 1C C0 00 32 */	mulli r6, r0, 0x32
/* 813794E0 | 48 1B 36 65 */	bl OSSetAlarm
.L_813794E4:
/* 813794E4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813794E8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813794EC | 7C 08 03 A6 */	mtlr r0
/* 813794F0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813794F4 | 4E 80 00 20 */	blr
.endfn SpeakerPlayCallback__Q210homebutton9RemoteSpkFll

# .text:0x5C0 | 0x813794F8 | size: 0x80
# homebutton::RemoteSpk::Connect(long)
.fn Connect__Q210homebutton9RemoteSpkFl, global
/* 813794F8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813794FC | 7C 08 02 A6 */	mflr r0
/* 81379500 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81379504 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81379508 | 7C 9F 23 78 */	mr r31, r4
/* 8137950C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81379510 | 7C 7E 1B 78 */	mr r30, r3
/* 81379514 | 88 03 01 EC */	lbz r0, 0x1ec(r3)
/* 81379518 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8137951C | 41 82 00 44 */	beq .L_81379560
/* 81379520 | 3C A0 81 38 */	lis r5, SpeakerOnCallback__Q210homebutton9RemoteSpkFll@ha
/* 81379524 | 7F E3 FB 78 */	mr r3, r31
/* 81379528 | 38 A5 93 4C */	addi r5, r5, SpeakerOnCallback__Q210homebutton9RemoteSpkFll@l
/* 8137952C | 38 80 00 01 */	li r4, 0x1
/* 81379530 | 48 20 23 ED */	bl fn_8157B91C
/* 81379534 | 1F FF 00 68 */	mulli r31, r31, 0x68
/* 81379538 | 38 80 00 00 */	li r4, 0x0
/* 8137953C | 38 A0 00 20 */	li r5, 0x20
/* 81379540 | 7C 7E FA 14 */	add r3, r30, r31
/* 81379544 | 38 63 00 30 */	addi r3, r3, 0x30
/* 81379548 | 4B FB 6D ED */	bl memset
/* 8137954C | 7C 7E FA 14 */	add r3, r30, r31
/* 81379550 | 38 00 00 01 */	li r0, 0x1
/* 81379554 | 98 03 00 5C */	stb r0, 0x5c(r3)
/* 81379558 | 38 00 00 00 */	li r0, 0x0
/* 8137955C | 98 03 00 62 */	stb r0, 0x62(r3)
.L_81379560:
/* 81379560 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81379564 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81379568 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8137956C | 7C 08 03 A6 */	mtlr r0
/* 81379570 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81379574 | 4E 80 00 20 */	blr
.endfn Connect__Q210homebutton9RemoteSpkFl

# .text:0x640 | 0x81379578 | size: 0x80
# homebutton::RemoteSpk::Play(long, int, signed char)
.fn Play__Q210homebutton9RemoteSpkFliSc, global
/* 81379578 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8137957C | 7C 08 02 A6 */	mflr r0
/* 81379580 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81379584 | 39 61 00 20 */	addi r11, r1, 0x20
/* 81379588 | 48 27 FF 3D */	bl _savegpr_28
/* 8137958C | 88 03 01 EC */	lbz r0, 0x1ec(r3)
/* 81379590 | 7C 7C 1B 78 */	mr r28, r3
/* 81379594 | 7C 9D 23 78 */	mr r29, r4
/* 81379598 | 7C BE 2B 78 */	mr r30, r5
/* 8137959C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813795A0 | 7C DF 33 78 */	mr r31, r6
/* 813795A4 | 41 82 00 3C */	beq .L_813795E0
/* 813795A8 | 7F C4 F3 78 */	mr r4, r30
/* 813795AC | 38 A1 00 0C */	addi r5, r1, 0xc
/* 813795B0 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 813795B4 | 4B FF F9 85 */	bl GetPCMFromSeID__Q210homebutton9RemoteSpkFiRPsRi
/* 813795B8 | 1C 7D 00 68 */	mulli r3, r29, 0x68
/* 813795BC | 38 00 00 00 */	li r0, 0x0
/* 813795C0 | 7C 7C 1A 14 */	add r3, r28, r3
/* 813795C4 | 98 03 00 5E */	stb r0, 0x5e(r3)
/* 813795C8 | 93 C3 00 58 */	stw r30, 0x58(r3)
/* 813795CC | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 813795D0 | 90 03 00 54 */	stw r0, 0x54(r3)
/* 813795D4 | 9B E3 00 5D */	stb r31, 0x5d(r3)
/* 813795D8 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 813795DC | 90 03 00 50 */	stw r0, 0x50(r3)
.L_813795E0:
/* 813795E0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813795E4 | 48 27 FF 2D */	bl _restgpr_28
/* 813795E8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813795EC | 7C 08 03 A6 */	mtlr r0
/* 813795F0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813795F4 | 4E 80 00 20 */	blr
.endfn Play__Q210homebutton9RemoteSpkFliSc

# .text:0x6C0 | 0x813795F8 | size: 0x18
# homebutton::RemoteSpk::isPlaying(long) const
.fn isPlaying__Q210homebutton9RemoteSpkCFl, global
/* 813795F8 | 1C 04 00 68 */	mulli r0, r4, 0x68
/* 813795FC | 7C 63 02 14 */	add r3, r3, r0
/* 81379600 | 80 63 00 50 */	lwz r3, 0x50(r3)
/* 81379604 | 30 03 FF FF */	subic r0, r3, 0x1
/* 81379608 | 7C 60 19 10 */	subfe r3, r0, r3
/* 8137960C | 4E 80 00 20 */	blr
.endfn isPlaying__Q210homebutton9RemoteSpkCFl

# .text:0x6D8 | 0x81379610 | size: 0x30
# homebutton::RemoteSpk::isPlayingId(long, int) const
.fn isPlayingId__Q210homebutton9RemoteSpkCFli, global
/* 81379610 | 1C 04 00 68 */	mulli r0, r4, 0x68
/* 81379614 | 7C 63 02 14 */	add r3, r3, r0
/* 81379618 | 80 03 00 50 */	lwz r0, 0x50(r3)
/* 8137961C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81379620 | 41 82 00 18 */	beq .L_81379638
/* 81379624 | 80 03 00 58 */	lwz r0, 0x58(r3)
/* 81379628 | 7C 05 00 00 */	cmpw r5, r0
/* 8137962C | 40 82 00 0C */	bne .L_81379638
/* 81379630 | 38 60 00 01 */	li r3, 0x1
/* 81379634 | 4E 80 00 20 */	blr
.L_81379638:
/* 81379638 | 38 60 00 00 */	li r3, 0x0
/* 8137963C | 4E 80 00 20 */	blr
.endfn isPlayingId__Q210homebutton9RemoteSpkCFli

# .text:0x708 | 0x81379640 | size: 0x18
# homebutton::RemoteSpk::isPlayReady(long) const
.fn isPlayReady__Q210homebutton9RemoteSpkCFl, global
/* 81379640 | 1C 04 00 68 */	mulli r0, r4, 0x68
/* 81379644 | 7C 63 02 14 */	add r3, r3, r0
/* 81379648 | 88 63 00 62 */	lbz r3, 0x62(r3)
/* 8137964C | 30 03 FF FF */	subic r0, r3, 0x1
/* 81379650 | 7C 60 19 10 */	subfe r3, r0, r3
/* 81379654 | 4E 80 00 20 */	blr
.endfn isPlayReady__Q210homebutton9RemoteSpkCFl

# 0x81645798..0x816457A8 | size: 0x10
.data
.balign 8

# .data:0x0 | 0x81645798 | size: 0x10
# homebutton::RemoteSpk::__vtable
.obj __vt__Q210homebutton9RemoteSpk, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q210homebutton9RemoteSpkFv
	.4byte 0x00000000
.endobj __vt__Q210homebutton9RemoteSpk

# 0x816989C8..0x816989D0 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x816989C8 | size: 0x8
.obj lbl_816989C8, global
	.skip 0x8
.endobj lbl_816989C8
